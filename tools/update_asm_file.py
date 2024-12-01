import os
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from common_functions import (
    extract_function_content,
    extract_called_functions,
    verify_missing_functions,
    save_asm_code
)


def fetch_function_content(asm_lines, func_name):
    """
    Helper function to fetch function content, to be executed in parallel.
    """
    return func_name, extract_function_content(asm_lines, func_name)


def update_asm_file(asm_path, asm_file_path, function_name, max_iterations=8, line_limit=55000):
    """
    Reads the existing ASM file and updates it with missing loc_ and sub_ functions.
    """
    start_time = time.time()

    # List of functions to ignore
    ignored_functions = ["_WinMain@16"]

    with open(asm_path, 'r', encoding='utf-8') as asm_file:
        asm_lines = asm_file.readlines()

    with open(asm_file_path, 'r', encoding='utf-8') as existing_asm_file:
        asm_code = existing_asm_file.readlines()

    processed_functions = {function_name}
    iteration = 0

    while iteration < max_iterations:
        print(f"\nIteration {iteration + 1}")

        loc_called, sub_called = extract_called_functions(asm_code)

        # Filter out ignored functions
        functions_to_process = (loc_called | sub_called) - processed_functions
        functions_to_process = {func for func in functions_to_process if func not in ignored_functions}

        if not functions_to_process:
            print("No new functions found. Stopping iteration.")
            break

        print(f"Functions to process in this iteration: {len(functions_to_process)}")

        new_functions_found = False
        not_found_functions = []

        # Process functions in parallel using ThreadPoolExecutor
        with ThreadPoolExecutor(max_workers=64) as executor:
            future_to_function = {
                executor.submit(fetch_function_content, asm_lines, func_name): func_name
                for func_name in functions_to_process
            }

            for future in as_completed(future_to_function):
                func_name = future_to_function[future]
                try:
                    func_name, content = future.result()
                    if content:
                        print(f"Function found: {func_name}")
                        asm_code.extend(content)
                        print(f"Total lines in asm_code: {len(asm_code)}")
                        processed_functions.add(func_name)
                        new_functions_found = True
                    else:
                        print(f"Function not found: {func_name}")
                        # Automatically ignore functions with the "cs:" or "ds:" prefix
                        if func_name.startswith("cs:") or func_name.startswith("ds:"):
                            ignored_functions.append(func_name)
                            print(f"Adding {func_name} to ignored list due to prefix 'cs:' or 'ds:'")
                        else:
                            not_found_functions.append(func_name)
                except Exception as e:
                    print(f"Error processing function {func_name}: {e}")

        # Update ignored functions with not found functions
        if not_found_functions:
            ignored_functions.extend(not_found_functions)
            print(f"Adding {len(not_found_functions)} functions to ignored list: {', '.join(not_found_functions)}")

        # Stop if line limit is reached
        if len(asm_code) > line_limit:
            print(f"Line limit of {line_limit} reached. Writing missing functions to 'missing.txt'.")
            with open("missing_"+function_name+".txt", "w", encoding="utf-8") as missing_file:
                missing_file.write("\n".join(sorted(not_found_functions)))
            break

        if not new_functions_found:
            print("No new functions found. Stopping iteration.")
            break

        iteration += 1

    # Final verification of missing functions if line limit not reached
    if len(asm_code) <= line_limit:
        locs_called, subs_called = extract_called_functions(asm_code)
        missing_locs, missing_subs = verify_missing_functions(asm_code, locs_called, subs_called)
        all_missing = missing_locs + missing_subs
        if all_missing:
            print(f"\nWriting {len(all_missing)} missing functions to 'missing.txt'.")
            with open("missing.txt", "w", encoding="utf-8") as missing_file:
                missing_file.write("\n".join(sorted(all_missing)))

    # Clean and save the updated ASM file
    asm_code = [line for line in asm_code if line.strip() and not line.strip().startswith(';')]
    save_asm_code(os.path.dirname(asm_file_path), function_name, asm_code)

    elapsed_time = time.time() - start_time
    print(f"\nExecution time: {elapsed_time:.2f} seconds")


if __name__ == "__main__":
    project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
    asm_path = os.path.join(project_root, "new_asm\s1.asm")
    functions_path = os.path.join(os.path.dirname(__file__), "functions.txt")
    output_dir = os.path.join(project_root, "new_asm")

    with open(functions_path, 'r', encoding='utf-8') as functions_file:
        function_name = functions_file.readline().strip()

    if not function_name:
        print("No function name provided in functions.txt.")
    else:
        asm_file_path = os.path.join(output_dir, f"{function_name}.asm")
        if not os.path.exists(asm_file_path):
            print(f"{asm_file_path} does not exist. Please create it first.")
        else:
            update_asm_file(asm_path, asm_file_path, function_name)
