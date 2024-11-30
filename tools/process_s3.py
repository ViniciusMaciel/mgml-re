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

def process_valid_lines(valid_lines):
    """Processa as linhas válidas e salva no arquivo C."""
    output = []
    i = 0

    while i < len(valid_lines):
        tokens = split_line_to_array(valid_lines[i])

        if len(tokens) == 3:
            # Verificar o próximo item
            if i + 1 < len(valid_lines):
                next_tokens = split_line_to_array(valid_lines[i + 1])
                if len(next_tokens) == 3:
                    # Imprime o item atual e passa para o próximo
                    c_line = generate_char_declaration(tokens)
                    output.append(c_line)
                    i += 1
                    continue            

            if next_tokens[0].startswith("align"):
                # Adiciona o alinhamento
                align_value = next_tokens[1]
                c_line = f'__declspec(align({align_value})) {generate_char_declaration(tokens)}'
                output.append(c_line)
                i += 1  # Pular o próximo item (o alinhamento)
            else:
                # Processa o item normalmente
                c_line = generate_char_declaration(tokens)
                output.append(c_line)
        else:
            # Processa o item normalmente, sem nenhuma modificação
            output.append(valid_lines[i] + "\n")

        i += 1  # Continua para o próximo item

    return output

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
    processing_db = False  # Controle de agrupamento de linhas

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
            
            # Lógica de processamento
            if len(tokens) > 1 and tokens[1] == "db":
                # Linha válida com db, iniciar processamento
                valid_lines.append(code_part)
                processing_db = True
            elif processing_db and len(tokens) == 2:
                # Linha com 2 posições enquanto processando db
                valid_lines.append(code_part)
            else:
                # Linha inválida, desativar processamento
                processing_db = False
                invalid_output.write(line)
    
    # Processar as linhas válidas e salvar no arquivo de saída
    with open(valid_file, "w") as valid_output:
        c_lines = process_valid_lines(valid_lines)
        valid_output.writelines(c_lines)

# Executar a função
if __name__ == "__main__":
    process_asm_file()
