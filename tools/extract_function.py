import os
import re

def extract_function_content(asm_path, function_name):
    """
    Extracts the full content of the given function from the ASM file.
    """
    function_content = []
    inside_function = False

    function_start_pattern = re.compile(rf"^{re.escape(function_name)}\s+proc\s+near")
    function_end_pattern = re.compile(rf"^{re.escape(function_name)}\s+endp")

    with open(asm_path, 'r', encoding='utf-8') as asm_file:
        for line in asm_file:
            cleaned_line = re.sub(r"^\s*AUTO:[0-9A-F]+", "", line).strip()

            if function_start_pattern.match(cleaned_line):
                inside_function = True

            if inside_function:
                function_content.append(cleaned_line)
                if function_end_pattern.match(cleaned_line):
                    break

    return function_content

def find_called_functions(function_content):
    """
    Identifies any called functions within the function content.
    """
    called_functions = set()
    define_pattern = re.compile(r"^(sub_[0-9A-F]+|loc_[0-9A-F]+)\s+proc\s+near")
    label_pattern = re.compile(r"^(loc_[0-9A-F]+):")

    defined_functions = set()

    for line in function_content:
        match = define_pattern.match(line) or label_pattern.match(line)
        if match:
            defined_functions.add(match.group(1))

    call_pattern = re.compile(r"\b(sub_[0-9A-F]+|loc_[0-9A-F]+)\b")
    for line in function_content:
        matches = call_pattern.findall(line)
        for func in matches:
            if func not in defined_functions:
                called_functions.add(func)

    return list(called_functions)

def find_and_extract_functions(asm_path, called_functions, processed_functions):
    """
    Extracts all called functions not already processed. Creates stubs if missing.
    """
    all_functions_content = []

    for func_name in called_functions:
        if func_name in processed_functions:
            continue

        content = extract_function_content(asm_path, func_name)
        if content:
            all_functions_content.append("\n".join(content))
            processed_functions.add(func_name)
        else:
            stub = f"{func_name}      proc near\n    ; Stub for missing function\n    retn\n{func_name}      endp\n"
            all_functions_content.append(stub)
            processed_functions.add(func_name)

    return all_functions_content

def save_asm_code(output_dir, function_name, asm_code):
    """
    Saves the asm_code to a file named <function_name>.asm.
    """
    os.makedirs(output_dir, exist_ok=True)
    output_path = os.path.join(output_dir, f"{function_name}.asm")
    
    with open(output_path, 'w', encoding='utf-8') as output_file:
        output_file.write("\n".join(asm_code))
    
    print(f"ASM code saved to: {output_path}")

def main():
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
        return

    # Initialize asm_code
    asm_code = []

    # Extract the main function content
    main_function_content = extract_function_content(asm_path, function_name)
    if not main_function_content:
        print(f"Function {function_name} not found in ASM file.")
        return

    asm_code.extend(main_function_content)

    # Identify and process called functions
    called_functions = find_called_functions(main_function_content)
    processed_functions = {function_name}
    if called_functions:
        additional_functions_content = find_and_extract_functions(asm_path, called_functions, processed_functions)
        asm_code.extend(additional_functions_content)

    # Save asm_code to a file named <function_name>.asm
    save_asm_code(output_dir, function_name, asm_code)

if __name__ == "__main__":
    main()
