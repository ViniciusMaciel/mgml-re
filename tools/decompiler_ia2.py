import os
import re

def extract_function_content():
    # Define os caminhos relativos
    script_dir = os.path.dirname(os.path.abspath(__file__))
    main_c_path = os.path.join(script_dir, "src", "main.c")
    asm_path = os.path.join(script_dir, "megaman.exe.asm")
    functions_txt_path = os.path.join(script_dir, "functions.txt")

    try:
        if not os.path.exists(main_c_path):
            raise FileNotFoundError(f"O arquivo main.c não foi encontrado em {main_c_path}")
        if not os.path.exists(asm_path):
            raise FileNotFoundError(f"O arquivo megaman.exe.asm não foi encontrado em {asm_path}")
        if not os.path.exists(functions_txt_path):
            raise FileNotFoundError(f"O arquivo functions.txt não foi encontrado em {functions_txt_path}")

        with open(functions_txt_path, "r") as func_file:
            function_name = func_file.read().strip()

        if not function_name:
            raise ValueError("O arquivo functions.txt está vazio.")

        with open(main_c_path, "r") as file:
            c_content = file.read()

        c_function_pattern = rf'\b{function_name}\s*\([^)]*\)\s*{{.*?^}}'
        c_match = re.search(c_function_pattern, c_content, re.DOTALL | re.MULTILINE)

        if c_match:
            print(f"Conteúdo da função '{function_name}' encontrado em main.c:\n")
            print(c_match.group(0))
        else:
            print(f"A função '{function_name}' não foi encontrada em main.c.")

        with open(asm_path, "r") as file:
            asm_content = file.read()

        asm_function_pattern = rf'^\s*{function_name}:\s.*?$'
        asm_match = re.search(asm_function_pattern, asm_content, re.MULTILINE)

        if asm_match:
            print(f"\nDefinição da função '{function_name}' encontrada em megaman.exe.asm:\n")
            asm_start = asm_match.start()
            asm_end = re.search(r'^\s*\w+:\s', asm_content[asm_start:], re.MULTILINE)
            if asm_end:
                asm_end_index = asm_start + asm_end.start()
                print(asm_content[asm_start:asm_end_index].strip())
            else:
                print(asm_content[asm_start:].strip())
        else:
            print(f"\nA função '{function_name}' não foi encontrada em megaman.exe.asm.")

    except FileNotFoundError as e:
        print(e)
    except ValueError as e:
        print(e)
    except Exception as e:
        print(f"Ocorreu um erro ao processar os arquivos: {e}")

if __name__ == "__main__":
    extract_function_content()
