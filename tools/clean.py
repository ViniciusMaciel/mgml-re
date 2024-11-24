def clean_asm_code(asm_code):
    """
    Removes empty lines and comments from the ASM code.
    """
    cleaned_code = [
        line for line in asm_code
        if line.strip() and not line.strip().startswith(';')
    ]
    return cleaned_code


if __name__ == "__main__":
    input_path = "path/to/input.asm"
    output_path = "path/to/output_cleaned.asm"

    with open(input_path, 'r', encoding='utf-8') as input_file:
        asm_code = input_file.readlines()

    cleaned_code = clean_asm_code(asm_code)

    with open(output_path, 'w', encoding='utf-8') as output_file:
        output_file.write("\n".join(cleaned_code))

    print(f"Cleaned ASM code saved to: {output_path}")
