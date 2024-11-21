import re

def find_locs_in_file(file_path, loc_list):
    """
    Finds the complete content of loc_ references in a given Assembly file.

    Parameters:
        file_path (str): Path to the Assembly file.
        loc_list (list): List of loc_ references to find.

    Returns:
        dict: A dictionary mapping loc_ references to their corresponding content in the file.
    """
    if not loc_list:
        return {}

    locs_content = {}
    try:
        with open(file_path, "r") as asm_file:
            asm_lines = asm_file.readlines()

        # Process lines to ensure each loc_ block is captured fully
        current_loc = None
        current_content = []
        loc_set = set(loc_list)

        for line in asm_lines:
            # Check if the line starts with a loc_ or sub_
            label_match = re.match(r"^\s*(loc_\w+|sub_\w+):", line)
            if label_match:
                # Save the current block if it matches one of the requested locs
                if current_loc in loc_set:
                    locs_content[current_loc] = "\n".join(current_content).strip()

                # Start a new block
                current_loc = label_match.group(1)
                current_content = [line.strip()]
            elif current_loc:
                # Add lines to the current block
                current_content.append(line.strip())

        # Save the last block if it matches
        if current_loc in loc_set:
            locs_content[current_loc] = "\n".join(current_content).strip()

    except Exception as e:
        print(f"Erro ao buscar locs no arquivo {file_path}: {e}")

    return locs_content
