import os

def split_functions_with_limit(input_asm_file, output_folder, max_lines_per_file=4000):
    """
    Reads an ASM file from the root directory, identifies functions starting with 'loc_xpto',
    and writes them into grouped .asm files in the 'src' folder (in the root directory).
    Each file will contain functions up to the specified max_lines_per_file limit.
    """
    try:
        # Open and read the input ASM file
        with open(input_asm_file, 'r') as f:
            lines = f.readlines()

        # Ensure the output folder exists
        os.makedirs(output_folder, exist_ok=True)

        current_file_index = 1
        current_file_lines = 0
        current_file_content = []

        for line in lines:
            line = line.strip()

            # Add the line to the current file content
            current_file_content.append(line + "\n")
            current_file_lines += 1

            # If we encounter the start of a new function
            if line.startswith("loc_") and line.endswith(":"):
                # Check if the file exceeds the max_lines_per_file limit
                if current_file_lines > max_lines_per_file:
                    # Save the current file and reset counters
                    output_file = os.path.join(output_folder, f"megaman{current_file_index}.asm")
                    with open(output_file, 'w') as f_out:
                        f_out.writelines(current_file_content)

                    current_file_index += 1
                    current_file_lines = 0
                    current_file_content = []

        # Save the remaining content in the last file
        if current_file_content:
            output_file = os.path.join(output_folder, f"megaman{current_file_index}.asm")
            with open(output_file, 'w') as f_out:
                f_out.writelines(current_file_content)

        print(f"Functions successfully separated and grouped! Files saved in the '{output_folder}' folder.")
    except FileNotFoundError:
        print(f"File '{input_asm_file}' not found.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Get the paths
root_folder = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))  # Parent folder of 'tools'
input_file = os.path.join(root_folder, "megaman.exe2.asm")  # File in the root folder
output_folder = os.path.join(root_folder, "src")  # Output folder in the root folder

# Call the function
split_functions_with_limit(input_file, output_folder, max_lines_per_file=4000)