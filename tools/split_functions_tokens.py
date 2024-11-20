import os

def split_functions_with_token_limit(input_asm_file, output_folder, max_tokens_per_file=8000):
    """
    Reads an ASM file and splits its functions into smaller files, ensuring that:
    1) No function is split across files.
    2) Each file contains up to max_tokens_per_file tokens before starting a new one.
    """
    try:
        # Open and read the input ASM file
        with open(input_asm_file, 'r') as f:
            lines = f.readlines()

        # Ensure the output folder exists
        os.makedirs(output_folder, exist_ok=True)

        current_file_index = 1  # Index for naming output files
        current_file_tokens = 0  # Token count for the current file
        current_file_content = []  # Content of the current file
        current_function_content = []  # Content of the current function
        current_function_tokens = 0  # Token count for the current function

        for line in lines:
            line = line.strip()  # Remove extra whitespace
            token_count = len(line.split())  # Count tokens in the current line

            # Detect the start of a new function
            if line.startswith("loc_") and line.endswith(":"):
                # Check if adding the current function would exceed the token limit
                if current_file_tokens + current_function_tokens > max_tokens_per_file:
                    # Save the current file to disk
                    output_file = os.path.join(output_folder, f"megaman{current_file_index}.asm")
                    with open(output_file, 'w') as f_out:
                        f_out.writelines(current_file_content)
                    print(f"File saved: {output_file} with {current_file_tokens} tokens")

                    # Increment file index for the next output file
                    current_file_index += 1

                    # Reset the current file content and token counter
                    current_file_content = []
                    current_file_tokens = 0

                # Add the current function's content to the current file
                current_file_content.extend(current_function_content)
                current_file_tokens += current_function_tokens

                # Reset the current function content and token counter
                current_function_content = []
                current_function_tokens = 0

            # Add the current line to the current function
            current_function_content.append(line + "\n")
            current_function_tokens += token_count

        # Handle any remaining content after processing all lines
        if current_function_content:
            current_file_content.extend(current_function_content)
            current_file_tokens += current_function_tokens

        if current_file_content:
            output_file = os.path.join(output_folder, f"megaman{current_file_index}.asm")
            with open(output_file, 'w') as f_out:
                f_out.writelines(current_file_content)
            print(f"Last file saved: {output_file} with {current_file_tokens} tokens")

        print(f"Functions successfully split! Files saved in '{output_folder}'.")
    except FileNotFoundError:
        print(f"File '{input_asm_file}' not found.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Paths
root_folder = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))  # Root folder of the project
input_file = os.path.join(root_folder, "megaman.exe2.asm")  # Input ASM file in the root folder
output_folder = os.path.join(root_folder, "asm")  # Output folder in the root folder

# Call the function
split_functions_with_token_limit(input_file, output_folder, max_tokens_per_file=100000)
