import os

def process_s3():
    input_file = os.path.join("..", "new_asm", "s3.asm")
    output_file = os.path.join("..", "main", "s3.c")

    # Verifica se o arquivo de entrada existe
    if not os.path.isfile(input_file):
        print(f"Arquivo '{input_file}' não encontrado.")
        return
    
    # Lê o conteúdo do arquivo a partir da linha 10
    with open(input_file, "r") as infile:
        lines = infile.readlines()
    
    # Pega as linhas a partir da 10ª (índice 9 no Python)
    processed_lines = lines[9:]
    
    # Grava o conteúdo no arquivo de saída
    with open(output_file, "w") as outfile:
        outfile.writelines(processed_lines)
    
    print(f"Arquivo processado e salvo em '{output_file}'.")

if __name__ == "__main__":
    process_s3()
