import re

def verify_all_locs_present(asm_code, locs):
    """
    Verifies if all locs found in jumps are present in the assembly code.

    Parameters:
        asm_code (str): The complete assembly code.
        locs (list): List of locs to verify.

    Returns:
        int: The count of missing locs.
        list: The list of missing locs.
    """
    missing_locs = []

    for loc in locs:
        loc_pattern = rf"^\s*{loc}:\s"
        if not re.search(loc_pattern, asm_code, re.MULTILINE):
            missing_locs.append(loc)

    return len(missing_locs), missing_locs
