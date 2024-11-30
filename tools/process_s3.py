import os
import re

def split_line_to_array(line):
    """Divide uma linha por espaços múltiplos e retorna um array."""
    return re.split(r'\s+', line.strip())

def generate_char_declaration(tokens):
    """Gera a declaração em C para uma linha válida."""
    variable_name = tokens[0]
    value = tokens[2]
    # Aplicar substituições no valor
    value = value.replace(",0", "").replace("'", "\"").replace("\\", "\\\\")
    return f'char {variable_name}[] = {value};\n'

def process_asm_file():
    # Diretórios do projeto
    project_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))  # Raiz do projeto
    asm_dir = os.path.join(project_root, "new_asm")  # Diretório onde estão os ASM
    output_dir = os.path.join(project_root, "main")  # Diretório para salvar o .c
    input_file = os.path.join(asm_dir, "s3.asm")
    valid_file = os.path.join(output_dir, "s3.c")  # Arquivo C de saída
    invalid_file = os.path.join(asm_dir, "s3_2.asm")  # Arquivo ASM de inválidas

    # Lista para armazenar linhas válidas
    valid_lines = []

    # Abrir arquivos de saída para gravação
    with open(input_file, "r") as asm_file, \
         open(invalid_file, "w") as invalid_output:
        
        # Ler todas as linhas do arquivo
        lines = asm_file.readlines()
        
        # Processar a partir da linha 16 (índice 15, pois índices começam em 0)
        for line in lines[15:]:
            # Split por ponto e vírgula para remover o comentário
            code_part = line.split(';')[0].strip()
            
            # Converter a linha em um array de tokens
            tokens = split_line_to_array(code_part)
            
            # Verificar se o segundo elemento é 'db'
            if len(tokens) > 1 and tokens[1] == "db":
                # Adicionar a linha válida ao array
                valid_lines.append(code_part)
            else:
                # Salvar a linha original no arquivo de inválidos
                invalid_output.write(line)
    
    # Processar as linhas válidas e salvar no arquivo de saída
    with open(valid_file, "w") as valid_output:
        for line in valid_lines:
            tokens = split_line_to_array(line)
            c_line = generate_char_declaration(tokens)
            valid_output.write(c_line)

# Executar a função
if __name__ == "__main__":
    process_asm_file()
