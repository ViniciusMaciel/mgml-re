import os

def compact_file(input_file, output_prefix):
    """
    Compacta o arquivo ASM em blocos de 10000 linhas, salvando cada bloco em arquivos separados.
    Todas as linhas de cada bloco serão unidas em uma única linha, separadas por '|BRK_LINE|'.
    """
    try:
        # Verifica se o arquivo de entrada existe
        if not os.path.exists(input_file):
            print(f"Arquivo {input_file} não encontrado.")
            return
        
        with open(input_file, "r") as asm_file:
            lines = asm_file.readlines()
        
        block_size = 5000
        block_number = 1
        
        for i in range(0, len(lines), block_size):
            block_lines = lines[i:i + block_size]
            output_file = f"{output_prefix}{block_number}.asm"
            
            with open(output_file, "w") as block_file:
                # Processa cada linha do bloco
                processed_lines = [
                    line.split(';')[0].strip() for line in block_lines
                ]
                # Une todas as linhas com '|BRK_LINE|'
                single_line = "KLS".join(processed_lines)
                block_file.write(single_line)
            
            print(f"Bloco {block_number} salvo em {output_file}.")
            block_number += 1
    
    except Exception as e:
        print(f"Erro ao compactar o arquivo: {e}")

if __name__ == "__main__":
    # Diretórios do projeto
    project_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))  # Obtém a raiz do projeto
    asm_dir = os.path.join(project_root, "new_asm")  # Diretório onde está o ASM original
    input_file = os.path.join(asm_dir, "s3.asm")  # Caminho para o arquivo ASM
    output_prefix = os.path.join(asm_dir, "x")  # Prefixo para os arquivos de saída

    # Compacta o arquivo
    print(f"Lendo arquivo de entrada: {input_file}")
    compact_file(input_file, output_prefix)
