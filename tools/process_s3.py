import os
import re

def split_line_to_array(line, remove=True):
    """Divide uma linha por espaços múltiplos, considerando strings entre aspas como um único token."""
    # Remove ",0" do final da linha
    line = line.replace(",0", "").strip()
    
    # Divide a linha em tokens
    tokens = re.split(r'\s+', line)
    
    # Verifica se há mais de 3 tokens e que o segundo token começa e o último termina com aspas simples
    if len(tokens) > 3 and tokens[2].startswith("'"):
        # Combina tudo da posição 2 em diante em um único elemento
        combined = ' '.join(tokens[2:])
        tokens = tokens[:2] + [combined]
    
    if(len(tokens)==3 and remove):
        tokens[2] = tokens[2].replace("Ah","").replace("Dh", "")#ajustar
    if(len(tokens) ==2 and remove):
        tokens[1] = tokens[1].replace("Ah","").replace("Dh", "")#ajustar tb
    
    return tokens

def adjustValue(value):
    """Ajusta o valor de acordo com os formatos ASM para C."""
    # Verificar se o valor termina com 'h' (hexadecimal)
    if value.endswith("h") and not value.startswith("'"):
        value = f"0x{value[:-1]}"
    
    # Remover zeros extras no início do valor, se necessário
    if value.startswith("0x0"):
        value = f"0x{value[3:]}"  # Remove o prefixo "0x0" e mantém o restante

    return value


def generate_array_declaration(tokens):
    
    variable_name = tokens[0]
    value = tokens[2]
    
    return 'unsigned char '+variable_name+'[] = {'+value+'};\n'


def generate_char_declaration(tokens):
    """Gera a declaração em C para uma linha válida."""
    variable_name = tokens[0]
    value = tokens[2]
    value = adjustValue(value)

    value = value.replace(",0", "").replace("'", "\"").replace("\\", "\\\\")
    value = value.replace('""','').replace('" "',' ')
       # Retornar a declaração adequada
    if value.startswith("\""):
        return f'char {variable_name}[] = {value};\n'
    else:
        return f'unsigned char {variable_name} = {value};\n'


def process_valid_lines(valid_lines):
    """Processa as linhas válidas e salva no arquivo C."""
    output = []
    i = 0

    while i < len(valid_lines):
        tokens = split_line_to_array(valid_lines[i],True)

        if len(tokens) == 3:

            if i + 1 < len(valid_lines):
                next_tokens = split_line_to_array(valid_lines[i + 1])
                if len(next_tokens) == 3:
                    # Imprime o item atual e passa para o próximo
                    c_line = generate_char_declaration(tokens)
                    output.append(c_line)
                    i += 1
                    continue            

                if next_tokens[0].startswith("align"):                    
                    align_value = next_tokens[1]
                    if align_value.endswith("h"):
                        align_value = str(int(align_value[:-1], 16))

                    concatenated_value = tokens[2]
                    concatenated_value = adjustValue(concatenated_value)
                    items = []

                    while i + 1 < len(valid_lines):
                        next_tokens = split_line_to_array(valid_lines[i + 2])                        
                        if len(next_tokens) == 2 and next_tokens[0] == 'db':                            
                            next_tokens[1]= adjustValue(next_tokens[1])
                            items.append(next_tokens)
                            i += 1
                        else:
                            break

                    if(len(items) > 0):
                        concatenated_value = concatenated_value+',' + ','.join(item[1] for item in items)

                        tokens[2] = concatenated_value

                        c_line = generate_array_declaration(tokens)
                    else:
                        c_line = f'__declspec(align({align_value})) {generate_char_declaration(tokens)}'
                        output.append(c_line)
                    i += 1
                elif next_tokens[0].startswith("db"):
                    concatenated_value = tokens[2]

                    concatenated_value = adjustValue(concatenated_value)
                    items = []
                    while i + 1 < len(valid_lines):
                        next_tokens = split_line_to_array(valid_lines[i + 1],False)
                        if len(next_tokens) == 2 and next_tokens[0] == 'db':
                            next_tokens[1]= adjustValue(next_tokens[1])
                            items.append(next_tokens)
                            i += 1
                        else:
                            break

                    concatenated_value = concatenated_value+',' + ','.join(item[1] for item in items)

                    tokens[2] = concatenated_value

                    c_line = generate_array_declaration(tokens)
                    output.append(c_line)
                elif next_tokens[1].startswith("'"):
                    # Concatenação de strings consecutivas
                    concatenated_value = tokens[2] # Remove o ,0 inicial
                    items = []


                    while i + 1 < len(valid_lines):
                        next_tokens = split_line_to_array(valid_lines[i + 1],True)
                        if len(next_tokens) == 2 and next_tokens[1].startswith("'"):
                            # Concatena o valor e remove ,0
                            items.append(next_tokens)
                            i += 1  # Pular para a próxima linha
                        else:
                            break  # Parar ao encontrar uma linha que não é string
                    concatenated_value = concatenated_value + ''.join(item[1] for item in items)

                    tokens[2] = concatenated_value  # Atualiza o valor concatenado no token original
                    c_line = generate_char_declaration(tokens)
                    output.append(c_line)
                else:
                    # Processa o item normalmente
                    c_line = generate_char_declaration(tokens)
                    output.append(c_line)
        else:
            # Processa o item normalmente, sem nenhuma modificação
            output.append(valid_lines[i]+"#"+str(len(tokens)) + "\n")

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
