import re

def count_jumps_and_locs(asm_code):
    """
    Counts the number of jump instructions and extracts the list of loc_ references.

    Parameters:
        asm_code (str): The assembly code to analyze.

    Returns:
        tuple: (int, list), where int is the number of jump instructions and list contains loc_ references.
    """
    jump_instructions = [
        "jmp", "je", "jne", "jg", "jge", "jl", "jle", "ja", "jae",
        "jb", "jbe", "jo", "jno", "js", "jns", "jz", "jnz"
    ]

    jump_count = 0
    locs = []

    for line in asm_code.splitlines():
        line_parts = line.strip().split()
        if len(line_parts) > 1 and line_parts[0] in jump_instructions:
            jump_count += 1
            if line_parts[-1].startswith("loc_"):
                locs.append(line_parts[-1])

    # Remove duplicatas
    locs = list(set(locs))
    return jump_count, locs
