import os
from find import extract_function_content
from analyse import count_jumps_and_locs
from find_locs import find_locs_in_file
from verify_locs import verify_all_locs_present
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
            additional_locs_line = func_file.readline().strip()

        if not first_function:
            print("O arquivo functions.txt está vazio ou não contém uma função.")
            return

        # Lista de LOCs adicionais
        additional_locs = [loc.strip() for loc in additional_locs_line.split(",") if loc.strip()] if additional_locs_line else []

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

        # Caminho do arquivo ASM para buscar locs ausentes
        asm_path = os.path.join(os.path.dirname(script_dir), "megaman.exe.asm")

        # Limite de análises para adicionar locs ausentes
        max_iterations = 50
        for iteration in range(max_iterations):
            print(f"\nIniciando análise {iteration + 1}/{max_iterations}...")

            # Analisar jumps e locs no código Assembly atual
            jump_count, locs = count_jumps_and_locs(asm_code)
            print(f"Número de instruções de jump encontradas: {jump_count}")
            print(f"LOCs encontrados: {locs}")

            # Verificar locs ausentes
            missing_count, missing_locs = verify_all_locs_present(asm_code, locs)
            if missing_count == 0:
                print("\nTodos os LOCs estão presentes no código Assembly.")
                break  # Se todos os locs foram resolvidos, sai do loop

            print(f"\nNúmero de LOCs faltantes: {missing_count}")
            print(f"LOCs faltantes: {missing_locs}")

            # Adicionar LOCs ausentes ao código Assembly
            locs_content = find_locs_in_file(asm_path, missing_locs)
            if locs_content:
                print("\nConteúdo dos LOCs adicionados ao código Assembly:")
                for loc, content in locs_content.items():
                    print(f"\n{loc}:\n{content}")
                    asm_code += f"\n\n{content}"  # Adiciona o conteúdo ao Assembly original
            else:
                print("Erro: Não foi possível encontrar todos os LOCs necessários no arquivo de Assembly.")
                return

        # Adicionar LOCs adicionais especificados na segunda linha do arquivo
        if additional_locs:
            print("\nAdicionando LOCs adicionais especificados no arquivo functions.txt...")
            locs_content = find_locs_in_file(asm_path, additional_locs)
            if locs_content:
                for loc, content in locs_content.items():
                    print(f"\n{loc}:\n{content}")
                    asm_code += f"\n\n{content}"  # Adiciona o conteúdo ao Assembly original
            else:
                print(f"Erro: Não foi possível encontrar todos os LOCs adicionais: {additional_locs}.")
                return

        # Todos os locs foram resolvidos (ou máximo de análises atingido)
        print("\nChamando o decompiler com o código Assembly completo...")
        c_code = convert_c_to_asm(first_function, c_code, asm_code)
        print(c_code)

    except Exception as e:
        print(f"Ocorreu um erro ao processar os arquivos: {e}")


if __name__ == "__main__":
    main()
