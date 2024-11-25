import os

def join_asm_files(root_dir, output_file):
    """
    Joins all .asm files in the root directory into a single file.

    Args:
        root_dir (str): Root directory containing the .asm files.
        output_file (str): Name of the output file to be created.
    """
    asm_files = [f for f in os.listdir(root_dir) if f.endswith(".asm")]

    if not asm_files:
        print("No .asm files found in the root directory.")
        return

    print(f"Found {len(asm_files)} .asm files. Joining into {output_file}...")

    with open(output_file, 'w', encoding='utf-8') as output:
        for asm_file in sorted(asm_files):  # Sort to maintain order
            asm_path = os.path.join(root_dir, asm_file)
            with open(asm_path, 'r', encoding='utf-8') as input_file:
                content = input_file.read()
                output.write(f";;; Start of {asm_file} ;;;\n")
                output.write(content)
                output.write(f"\n;;; End of {asm_file} ;;;\n\n")

    print(f"All files joined successfully into {output_file}.")

if __name__ == "__main__":
    # Get the root directory and adjust paths
    project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
    output_file_name = os.path.join(project_root, "final.asm")

    if not os.path.exists(project_root):
        print(f"Root directory '{project_root}' does not exist.")
    else:
        join_asm_files(project_root, output_file_name)
