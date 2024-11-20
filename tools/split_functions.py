import os

def split_functions_with_limit(input_asm_file, output_folder, max_lines_per_file=4000):
    """
    Lê um arquivo ASM e separa suas funções em arquivos menores, garantindo que:
    1) Nenhuma função seja cortada entre arquivos.
    2) Cada arquivo tenha pelo menos max_lines_per_file linhas antes de começar um novo.
    """
    try:
        # Abrir e ler o arquivo ASM de entrada
        with open(input_asm_file, 'r') as f:
            lines = f.readlines()

        # Garantir que a pasta de saída exista
        os.makedirs(output_folder, exist_ok=True)

        current_file_index = 1
        current_file_lines = 0
        current_file_content = []
        current_function_content = []

        for line in lines:
            line = line.strip()
            current_function_content.append(line + "\n")

            # Detectar início de uma nova função
            if line.startswith("loc_") and line.endswith(":"):
                # Se adicionar a função atual exceder o limite de linhas no arquivo atual
                if current_file_lines + len(current_function_content) > max_lines_per_file:
                    # Salvar o arquivo atual
                    output_file = os.path.join(output_folder, f"megaman{current_file_index}.asm")
                    with open(output_file, 'w') as f_out:
                        f_out.writelines(current_file_content)
                    print(f"Arquivo salvo: {output_file} com {current_file_lines} linhas")

                    # Incrementar o índice do arquivo
                    current_file_index += 1

                    # Resetar o conteúdo do arquivo atual e contadores
                    current_file_content = []
                    current_file_lines = 0

                # Adicionar a função ao conteúdo do arquivo atual
                current_file_content.extend(current_function_content)
                current_file_lines += len(current_function_content)
                current_function_content = []

        # Salvar o último arquivo se houver conteúdo restante
        if current_file_content:
            output_file = os.path.join(output_folder, f"megaman{current_file_index}.asm")
            with open(output_file, 'w') as f_out:
                f_out.writelines(current_file_content)
            print(f"Último arquivo salvo: {output_file} com {current_file_lines} linhas")

        print(f"Funções separadas com sucesso! Arquivos salvos na pasta '{output_folder}'.")
    except FileNotFoundError:
        print(f"Arquivo '{input_asm_file}' não encontrado.")
    except Exception as e:
        print(f"Ocorreu um erro: {e}")

# Caminhos
root_folder = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))  # Pasta raiz do projeto
input_file = os.path.join(root_folder, "megaman.exe2.asm")  # Arquivo de entrada na pasta raiz
output_folder = os.path.join(root_folder, "src")  # Pasta de saída na pasta raiz

# Chamar a função
split_functions_with_limit(input_file, output_folder, max_lines_per_file=4000)
