import os
from common_functions import extract_function_content, save_asm_code


def create_initial_asm_file(asm_path, function_name, output_dir):
    """
    Creates the initial ASM file with the content of the specified function.
    """
    with open(asm_path, 'r', encoding='utf-8') as asm_file:
        asm_lines = asm_file.readlines()

    function_content = extract_function_content(asm_lines, function_name)

    if not function_content:
        print(f"Function {function_name} not found in {asm_path}.")
        return

    save_asm_code(output_dir, function_name, function_content)


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
        create_initial_asm_file(asm_path, function_name, output_dir)
