import os

def clean_file(file_name, start_line):
    """
    Remove linhas em branco ou linhas cujo primeiro caractere significativo é ';'
    de um arquivo .asm a partir de uma linha inicial.
    
    Args:
        file_name (str): Nome do arquivo .asm (localizado na pasta new_asm).
        start_line (int): Número da linha inicial para começar o processamento.
    """
    # Caminho completo do arquivo .asm
    asm_file_path = os.path.join("..", "new_asm", file_name)
    
    # Verifica se o arquivo existe
    if not os.path.isfile(asm_file_path):
        print(f"Arquivo '{asm_file_path}' não encontrado.")
        return
    
    # Lê o conteúdo do arquivo
    with open(asm_file_path, "r") as file:
        lines = file.readlines()
    
    # Processa o arquivo, removendo linhas indesejadas a partir da linha inicial
    cleaned_lines = []
    for i, line in enumerate(lines, start=1):
        if i < start_line:
            # Mantém as linhas antes da linha inicial
            cleaned_lines.append(line)
        else:
            # Remove linhas em branco ou começando com ';'
            stripped_line = line.strip()  # Remove espaços no início e no final
            if stripped_line and not stripped_line.startswith(";"):
                cleaned_lines.append(line)
    
    # Salva o conteúdo limpo de volta no arquivo
    with open(asm_file_path, "w") as file:
        file.writelines(cleaned_lines)
    
    print(f"Linhas indesejadas removidas de '{file_name}' a partir da linha {start_line}.")

if __name__ == "__main__":
    # Variáveis de entrada
    file_name = input("Digite o nome do arquivo (.asm): ")  # Exemplo: s3.asm
    start_line = int(input("Digite o número da linha inicial: "))  # Exemplo: 10
    
    # Chama a função para limpar o arquivo
    clean_file(file_name, start_line)
