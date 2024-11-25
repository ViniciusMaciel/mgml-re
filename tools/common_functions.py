import os
import re

# Define all patterns
loc_call_pattern = re.compile(r"\b(?:call|jmp|jnz|jz|je|jne|jb|ja|jl|jg|jle|jge|loop|loope|loopne|short)\s+loc_[0-9A-F]+")
sub_call_pattern = re.compile(r"\b(?:call|jmp|jnz|jz|je|jne|jb|ja|jl|jg|jle|jge|loop|loope|loopne|short)\s+\S+")
sub_start_pattern = re.compile(r"^\S+\s+proc\s+near")
sub_end_pattern = re.compile(r"^\S+\s+endp")
loc_start_pattern = re.compile(r"^loc_[0-9A-F]+:")
loc_end_pattern = re.compile(r"(^loc_[0-9A-F]+:|^;\s*-{10,})")


def extract_function_content_for_sub(asm_lines, function_name):
    """
    Extracts the full content of the given sub_ or named function from the ASM file lines.
    """
    function_content = []
    inside_function = False

    # Pattern for sub_ or named function start and end
    function_start_pattern = re.compile(rf"^{re.escape(function_name)}\s+proc\s+near")
    function_end_pattern = re.compile(rf"^{re.escape(function_name)}\s+endp")

    for line in asm_lines:
        # Remove AUTO or similar prefixes
        cleaned_line = re.sub(r"^\s*AUTO:[0-9A-F]+", "", line).strip()

        if function_start_pattern.match(cleaned_line):
            inside_function = True

        if inside_function:
            function_content.append(cleaned_line)
            if function_end_pattern.match(cleaned_line):
                break

    return function_content




def extract_function_content_for_loc(asm_lines, loc_name):
    """
    Extracts the full content of the given loc_ from the ASM file lines.
    """
    function_content = []
    inside_function = False

    # Pattern for loc_ start and end
    loc_start_pattern = re.compile(rf"^{re.escape(loc_name)}:")
    loc_end_pattern = re.compile(r"(^loc_[0-9A-F]+:|^;\s*-{10,})")

    for line in asm_lines:
        # Remove AUTO or similar prefixes
        cleaned_line = re.sub(r"^\s*AUTO:[0-9A-F]+", "", line).strip()

        if loc_start_pattern.match(cleaned_line):
            inside_function = True

        if inside_function:
            # Stop if we hit another loc_ or dashed comments
            if loc_end_pattern.match(cleaned_line) and not loc_start_pattern.match(cleaned_line):
                break
            function_content.append(cleaned_line)

    return function_content



def extract_function_content(asm_lines, function_name):
    """
    Determines whether the function_name is a sub_ or loc_ and extracts its content accordingly.
    """
    if function_name.startswith("sub_"):
        return extract_function_content_for_sub(asm_lines, function_name)
    elif function_name.startswith("loc_"):
        return extract_function_content_for_loc(asm_lines, function_name)
    else:
        print(f"Unknown function type: {function_name}")
        return []


def extract_called_functions(function_content):
    """
    Extracts all called sub_ and loc_ functions from the given content,
    separating sub_ and loc_ into two distinct sets.
    """
    loc_called = set(
        match.group().split()[-1]
        for line in function_content
        for match in loc_call_pattern.finditer(line)
    )
    sub_called = set(
        match.group().split()[-1]
        for line in function_content
        for match in sub_call_pattern.finditer(line)
    )
    return loc_called, sub_called


def verify_missing_functions(asm_code, locs, subs):
    """
    Verifies if all loc_ and sub_ functions are present in the asm_code.
    Returns a list of missing functions.
    """
    # Identify all defined loc_ and sub_ functions in asm_code
    defined_locs = {line.split(":")[0] for line in asm_code if loc_start_pattern.match(line)}
    defined_subs = {line.split()[0] for line in asm_code if sub_start_pattern.match(line)}

    # Check if called loc_ and sub_ functions exist in defined sets
    missing_locs = [loc for loc in locs if loc not in defined_locs]
    missing_subs = [sub for sub in subs if sub not in defined_subs]

    return missing_locs, missing_subs


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
