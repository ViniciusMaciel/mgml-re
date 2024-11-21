import os
from find import extract_function_content
from decompiler import convert_c_to_asm

def main():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    functions_txt_path = os.path.join(script_dir, "functions.txt")

    if not os.path.exists(functions_txt_path):
        print(f"O arquivo functions.txt não foi encontrado em {functions_txt_path}")
        return

    try:
        with open(functions_txt_path, "r") as func_file:
            first_function = func_file.readline().strip()

        if not first_function:
            print("O arquivo functions.txt está vazio.")
            return

        # Busca o código C e Assembly usando find.py
        result = extract_function_content(first_function)

        if not result:
            print(f"Erro ao encontrar a função '{first_function}'.")
            return

        c_code = result.get("c_code", "Código C não encontrado.")
        asm_code = result.get("asm_code", "Código Assembly não encontrado.")

        print("Código C encontrado:\n")
        print(c_code)
        print("\nCódigo Assembly encontrado:\n")
        print(asm_code)

        # Converte o código C para Assembly usando decompiler.py
        print("\nIniciando conversão do código C para Assembly...")
        c_code = convert_c_to_asm(first_function, c_code, asm_code)
        print(c_code)
    except Exception as e:
        print(f"Ocorreu um erro ao processar os arquivos: {e}")

if __name__ == "__main__":
    main()
