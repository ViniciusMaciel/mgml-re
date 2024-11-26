import os

def join_asm_files(input_dir, output_file):
    """
    Joins all .asm files in the specified directory into a single file, excluding final.asm.

    Args:
        input_dir (str): Directory containing the .asm files.
        output_file (str): Path to the output file to be created.
    """
    # Exclude 'final.asm' from the files to process
    asm_files = [f for f in os.listdir(input_dir) if f.endswith(".asm") and f != os.path.basename(output_file)]

    if not asm_files:
        print("No .asm files found in the directory.")
        return

    print(f"Found {len(asm_files)} .asm files. Joining into {output_file}...")

    with open(output_file, 'w', encoding='utf-8') as output:
        for asm_file in sorted(asm_files):  # Sort files to maintain order
            asm_path = os.path.join(input_dir, asm_file)
            with open(asm_path, 'r', encoding='utf-8') as input_file:
                content = input_file.read()
                output.write(f";;; Start of {asm_file} ;;;\n")
                output.write(content)
                output.write(f"\n;;; End of {asm_file} ;;;\n\n")

    print(f"All files joined successfully into {output_file}.")

if __name__ == "__main__":
    # Set paths for the 'asm' directory and output file
    project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
    asm_dir = os.path.join(project_root, "asm")
    output_file_path = os.path.join(asm_dir, "final.asm")

    if not os.path.exists(asm_dir):
        print(f"Directory '{asm_dir}' does not exist.")
    else:
        join_asm_files(asm_dir, output_file_path)
