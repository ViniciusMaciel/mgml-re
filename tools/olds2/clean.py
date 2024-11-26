import os

def clean_asm_code(asm_code):
    """
    Removes empty lines and comments from the ASM code.
    """
    cleaned_code = [
        line.strip()  # Remove unnecessary spaces around the line
        for line in asm_code
        if line.strip() and not line.strip().startswith(';')  # Ignore empty lines and comments
    ]
    return cleaned_code

if __name__ == "__main__":
    # Paths
    script_dir = os.path.dirname(os.path.abspath(__file__))
    functions_path = os.path.join(script_dir, "functions.txt")
    asm_dir = os.path.join(script_dir, "..", "asm")  # Assuming asm folder is one level up

    # Read the target function name from functions.txt
    with open(functions_path, 'r', encoding='utf-8') as functions_file:
        function_name = functions_file.readline().strip()

    if not function_name:
        print("No function name provided in functions.txt.")
    else:
        input_path = os.path.join(asm_dir, f"{function_name}.asm")

        if not os.path.exists(input_path):
            print(f"Input file not found: {input_path}")
        else:
            # Read, clean, and overwrite the cleaned ASM code
            with open(input_path, 'r', encoding='utf-8') as input_file:
                asm_code = input_file.readlines()

            cleaned_code = clean_asm_code(asm_code)

            with open(input_path, 'w', encoding='utf-8') as output_file:
                output_file.write("\n".join(cleaned_code))

            print(f"Cleaned ASM code saved to: {input_path}")
