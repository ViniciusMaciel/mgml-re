import os
import re
import time


def extract_function_content(asm_lines, function_name):
    """
    Extracts the full content of the given function from the ASM file lines.
    """
    function_content = []
    inside_function = False

    function_start_pattern = re.compile(rf"^{re.escape(function_name)}\s+proc\s+near")
    function_end_pattern = re.compile(rf"^{re.escape(function_name)}\s+endp")

    for line in asm_lines:
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


def find_and_extract_functions(asm_lines, called_functions, processed_functions):
    """
    Extracts all called functions not already processed.
    """
    all_functions_content = []
    new_functions_found = False

    for func_name in called_functions:
        if func_name in processed_functions:
            continue

        content = extract_function_content(asm_lines, func_name)
        if content:
            all_functions_content.append("\n".join(content))
            processed_functions.add(func_name)
            new_functions_found = True

    return all_functions_content, new_functions_found


def find_additional_missing_functions(asm_code):
    """
    Identifies any additional missing loc_ or sub_ functions within the final asm_code.
    """
    call_pattern = re.compile(r"\b(sub_[0-9A-F]+|loc_[0-9A-F]+)\b")
    define_pattern = re.compile(r"^(sub_[0-9A-F]+|loc_[0-9A-F]+)(\s+proc\s+near|:.*)")

    defined_functions = set()
    missing_functions = set()

    # Identify already defined functions and labels
    for line in asm_code:
        match = define_pattern.match(line)
        if match:
            defined_functions.add(match.group(1))

    # Identify missing functions
    for line in asm_code:
        matches = call_pattern.findall(line)
        for func in matches:
            # Only add to missing if not in defined functions
            if func not in defined_functions:
                missing_functions.add(func)

    return missing_functions


def save_asm_code(output_dir, function_name, asm_code):
    """
    Saves the asm_code to a file named <function_name>.asm.
    """
    os.makedirs(output_dir, exist_ok=True)
    output_path = os.path.join(output_dir, f"{function_name}.asm")
    
    with open(output_path, 'w', encoding='utf-8') as output_file:
        output_file.write("\n".join(asm_code))
    
    print(f"ASM code saved to: {output_path}")


def update_missing_functions_detection(asm_lines, main_function_name, output_dir):
    """
    Processes the ASM file to find missing functions with the updated logic.
    """
    # Extract the main function content
    main_function_content = extract_function_content(asm_lines, main_function_name)

    if not main_function_content:
        print(f"Function {main_function_name} not found.")
        return

    # Collect all processed lines in the ASM code
    asm_code = main_function_content[:]
    processed_functions = {main_function_name}

    for iteration in range(7):  # Up to 5 iterations
        print(f"Iteration {iteration + 1}")
        called_functions = find_called_functions(asm_code)
        additional_functions, new_functions_found = find_and_extract_functions(
            asm_lines, called_functions, processed_functions
        )

        if not new_functions_found:  # Stop if no new functions are found
            print("No new functions found. Stopping iteration.")
            break

        for function_code in additional_functions:
            asm_code.extend(function_code.splitlines())

    # Identify any additional missing functions
    missing_functions = find_additional_missing_functions(asm_code)

    # Save the final ASM code to a file
    save_asm_code(output_dir, main_function_name, asm_code)

    # Output results
    print(f"Execution completed.")
    print(f"Number of missing functions: {len(missing_functions)}")
    print(f"Missing functions: {', '.join(sorted(missing_functions))}")


def main():
    # Start the timer
    start_time = time.time()

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

    # Load the entire ASM file into memory
    with open(asm_path, 'r', encoding='utf-8') as asm_file:
        asm_lines = asm_file.readlines()

    # Run the updated detection logic
    update_missing_functions_detection(asm_lines, function_name, output_dir)

    # Print execution time
    print(f"Execution time: {time.time() - start_time:.2f} seconds")


if __name__ == "__main__":
    main()
