import os
import re


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
    return output_path
