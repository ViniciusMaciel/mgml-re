import os
import re

def extract_function_content(asm_path, function_name):
    """
    Extracts the full content of the given function from the ASM file.
    """
    function_content = []
    inside_function = False

    # Regular expressions to detect the start and end of the function
    function_start_pattern = re.compile(rf"^{re.escape(function_name)}\s+proc\s+near")
    function_end_pattern = re.compile(rf"^{re.escape(function_name)}\s+endp")

    with open(asm_path, 'r', encoding='utf-8') as asm_file:
        for line in asm_file:
            # Remove "AUTO:<address>" and keep only the rest of the line
            cleaned_line = re.sub(r"^\s*AUTO:[0-9A-F]+", "", line).strip()

            # Detect the start of the function
            if function_start_pattern.match(cleaned_line):
                inside_function = True

            # If inside the function, collect lines
            if inside_function:
                function_content.append(cleaned_line)

                # Detect the end of the function
                if function_end_pattern.match(cleaned_line):
                    break

    return function_content

def find_called_functions(function_content):
    """
    Identifies any called functions (sub_ or loc_) within the function content.
    Skips functions that are already defined within the extracted content.
    """
    called_functions = set()
    define_pattern = re.compile(r"^(sub_[0-9A-F]+|loc_[0-9A-F]+)\s+proc\s+near")
    label_pattern = re.compile(r"^(loc_[0-9A-F]+):")

    defined_functions = set()

    # Step 1: Identify functions and local labels defined within the content
    for line in function_content:
        match = define_pattern.match(line) or label_pattern.match(line)
        if match:
            defined_functions.add(match.group(1))

    # Step 2: Identify called functions and skip those already defined
    call_pattern = re.compile(r"\b(sub_[0-9A-F]+|loc_[0-9A-F]+)\b")
    for line in function_content:
        matches = call_pattern.findall(line)
        for func in matches:
            if func not in defined_functions:
                called_functions.add(func)

    return list(called_functions)

def find_and_extract_functions(asm_path, called_functions, original_function_content):
    """
    Finds and extracts all called functions (sub_/loc_). If not found, creates a stub.
    """
    all_functions_content = []
    existing_functions = set(original_function_content)  # Track functions already processed

    for func_name in called_functions:
        # Skip functions already present in the original content
        if func_name in existing_functions:
            print(f"{func_name} already present, skipping.")
            continue

        # Try to extract the function
        content = extract_function_content(asm_path, func_name)
        if content:
            print(f"Found and extracted {func_name}.")
            all_functions_content.append("\n".join(content))
            existing_functions.add(func_name)
        else:
            # Create a stub if the function is not found
            print(f"{func_name} not found. Adding a stub.")
            stub = f"{func_name}      proc near\n    ; Stub for missing function\n    retn\n{func_name}      endp\n"
            all_functions_content.append(stub)

    return all_functions_content

def save_combined_function(output_dir, function_name, function_content, called_functions_content):
    """
    Saves the combined function content (original + dependencies) to a file.
    """
    os.makedirs(output_dir, exist_ok=True)
    output_path = os.path.join(output_dir, f"{function_name}.asm")
    
    with open(output_path, 'w', encoding='utf-8') as output_file:
        output_file.write("\n".join(function_content))
        output_file.write("\n\n; Called Functions\n\n")
        output_file.write("\n\n".join(called_functions_content))
    
    print(f"Combined function saved to: {output_path}")

def main():
    # Paths
    project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
    asm_path = os.path.join(project_root, "megaman.exe.asm")
    functions_path = os.path.join(os.path.dirname(__file__), "functions.txt")
    output_dir = os.path.join(project_root, "asm")

    # Read the target function name from functions.txt
    with open(functions_path, 'r', encoding='utf-8') as functions_file:
        function_name = functions_file.readline().strip()

    if not function_name:
        print("No function name provided in functions.txt.")
        return

    # Extract the main function content
    function_content = extract_function_content(asm_path, function_name)
    if not function_content:
        print(f"Function {function_name} not found in ASM file.")
        return

    # Identify functions called within the main function
    called_functions = find_called_functions(function_content)
    if called_functions:
        print(f"Called functions: {', '.join(called_functions)}")
    else:
        print(f"No functions called in {function_name}.")

    # Find and extract all called functions (or create stubs for missing ones)
    called_functions_content = find_and_extract_functions(asm_path, called_functions, function_content)

    # Save the combined content
    save_combined_function(output_dir, function_name, function_content, called_functions_content)

if __name__ == "__main__":
    main()
