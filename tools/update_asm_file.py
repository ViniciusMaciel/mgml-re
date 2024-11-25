import os
import time
from common_functions import (
    extract_function_content,
    extract_called_functions,
    find_additional_missing_functions,
    save_asm_code,
    verify_missing_functions
)


def update_asm_file(asm_path, asm_file_path, function_name, max_iterations=8):
    """
    Reads the existing ASM file and updates it with missing loc_ and sub_ functions.
    """
    start_time = time.time()

    with open(asm_path, 'r', encoding='utf-8') as asm_file:
        asm_lines = asm_file.readlines()

    with open(asm_file_path, 'r', encoding='utf-8') as existing_asm_file:
        asm_code = existing_asm_file.readlines()

    processed_functions = {function_name}
    iteration = 0

    while iteration < max_iterations:
        print(f"\nIteration {iteration + 1}")

        loc_called, sub_called = extract_called_functions(asm_code)

        functions_to_process = (loc_called | sub_called) - processed_functions

        if not functions_to_process:
            print("No new functions found. Stopping iteration.")
            break

        print(f"Functions to process in this iteration: {', '.join(sorted(functions_to_process))}")

        new_functions_found = False

        for func_name in functions_to_process:
            print(f"Fetching function: {func_name}")  # Show each function being fetched
            content = extract_function_content(asm_lines, func_name)
            if content:
                asm_code.extend(content)
                processed_functions.add(func_name)
                new_functions_found = True

        if not new_functions_found:
            print("No new functions found. Stopping iteration.")
            break

        # Mostrar a quantidade de linhas do asm_code no final da iteração
        print(f"ASM code line count after iteration {iteration + 1}: {len(asm_code)}")

        iteration += 1

    # Final verification of missing functions
    locs_called, subs_called = extract_called_functions(asm_code)
    missing_locs, missing_subs = verify_missing_functions(asm_code, locs_called, subs_called)

    # Report missing functions accurately
    all_missing = missing_locs + missing_subs
    print(f"\nNumber of missing functions: {len(all_missing)}")
    if all_missing:
        print(f"Missing functions: {', '.join(sorted(all_missing))}")

    # Clean and save the updated ASM file
    asm_code = [line for line in asm_code if line.strip() and not line.strip().startswith(';')]
    save_asm_code(os.path.dirname(asm_file_path), function_name, asm_code)

    elapsed_time = time.time() - start_time
    print(f"\nExecution time: {elapsed_time:.2f} seconds")


if __name__ == "__main__":
    project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
    asm_path = os.path.join(project_root, "megaman.exe.asm")
    functions_path = os.path.join(os.path.dirname(__file__), "functions.txt")
    output_dir = os.path.join(project_root, "asm")

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
