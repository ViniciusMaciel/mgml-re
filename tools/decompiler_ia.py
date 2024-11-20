import os
import openai

# Read the API key from the openai.key file
with open("openai.key", "r") as key_file:
    openai.api_key = key_file.read().strip()

def asm_to_c_conversion(input_folder, ignore_file, output_folder):
    """
    Reads ASM files from the input folder, converts them to C using the Chat Completions API,
    and saves them with the same name but a .c extension in the output folder.
    Prints the number of tokens used for each file conversion.

    Args:
        input_folder (str): Folder containing ASM files.
        ignore_file (str): Name of the ASM file to be ignored.
        output_folder (str): Folder where the converted C files will be saved.
    """
    os.makedirs(output_folder, exist_ok=True)

    for file_name in os.listdir(input_folder):
        if file_name.endswith(".asm") and file_name != ignore_file:
            input_path = os.path.join(input_folder, file_name)
            output_path = os.path.join(output_folder, file_name.replace(".asm", ".c"))

            with open(input_path, 'r') as asm_file:
                asm_code = asm_file.read()

            try:
                completions = openai.chat.completions.create(
                    model="gpt-4o",
                    messages=[
                        {"role": "system", "content": "You are an assistant that converts Assembly code to C."},
                        {"role": "user", "content": f"Convert the following Assembly code to C:\n\n{asm_code}"}
                    ],
                    temperature=0.7
                )
                c_code = completions.choices[0].message.content
                tokens_used = completions.usage.total_tokens

                with open(output_path, 'w') as c_file:
                    c_file.write(c_code)

                print(f"Converted: {file_name} -> {output_path} (Tokens used: {tokens_used})")

            except openai.error.OpenAIError as e:
                print(f"Error converting {file_name}: {e}")

if __name__ == "__main__":
    # Define the paths relative to the script's location
    project_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))  # Root folder
    input_folder = os.path.join(project_root, "asm")  # ASM folder
    output_folder = os.path.join(project_root, "src")  # SRC folder
    ignore_file = "megaman107.asm"  # File to ignore

    asm_to_c_conversion(input_folder, ignore_file, output_folder)
