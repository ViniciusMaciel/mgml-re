import os
from common_functions import (
    extract_function_content,
    find_called_functions,
    find_additional_missing_functions,
    save_asm_code,
)


def update_asm_file(asm_path, asm_file_path, function_name):
    """
    Reads the existing ASM file and updates it with missing loc_ and sub_ functions.
    """
    with open(asm_path, 'r', encoding='utf-8') as asm_file:
        asm_lines = asm_file.readlines()

    with open(asm_file_path, 'r', encoding='utf-8') as existing_asm_file:
        asm_code = existing_asm_file.readlines()

    processed_functions = {function_name}
    iteration = 0

    while iteration < 1:  # Limit iterations to prevent infinite loops
        print(f"Iteration {iteration + 1}")
        called_functions = find_called_functions(asm_code)

        new_functions_found = False
        for func_name in called_functions:
            if func_name in processed_functions:
                continue

            content = extract_function_content(asm_lines, func_name)
            if content:
                asm_code.extend(content)
                processed_functions.add(func_name)
                new_functions_found = True

        if not new_functions_found:
            print("No new functions found. Stopping iteration.")
            break

        iteration += 1

    # Identify additional missing functions
    missing_functions = find_additional_missing_functions(asm_code)
    print(f"Number of missing functions: {len(missing_functions)}")
    print(f"Missing functions: {', '.join(sorted(missing_functions))}")

    # Save the updated ASM file
    save_asm_code(os.path.dirname(asm_file_path), function_name, asm_code)


if __name__ == "__main__":
    # Paths
    project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
    asm_path = os.path.join(project_root, "megaman.exe.asm")
    functions_path = os.path.join(os.path.dirname(__file__), "functions.txt")
    output_dir = os.path.join(project_root, "asm")

    # Read the target function name
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
