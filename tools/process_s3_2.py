import os
import re

def split_line_to_array(line, remove=True):
    line = line.replace(",0", "").strip()
    
    # Divide a linha em tokens
    tokens = re.split(r'\s+', line)
    
    if len(tokens) > 3 and tokens[2].startswith("'"):
        combined = ' '.join(tokens[2:])
        tokens = tokens[:2] + [combined]
    elif len(tokens) > 2 and tokens[1].startswith("'"):
        combined = ' '.join(tokens[1:])
        tokens = tokens[:1] + [combined]
    
    
    # if(len(tokens)==3 and remove):
    #     tokens[2] = tokens[2].replace("Ah","").replace("Dh", "")#ajustar
    # if(len(tokens) ==2 and remove):
    #     tokens[1] = tokens[1].replace("Ah","").replace("Dh", "")#ajustar tb
    
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


def generate_new_declarations(tokens):
    variable_name = tokens[0]
    value = tokens[2]
    value = adjustValue(value)

    value = value.replace(",0", "").replace("'", "\"").replace("\\", "\\\\")
    value = value.replace('""','').replace('" "',' ')

    if(tokens[1]=='dq'):
        return f'double {variable_name} = {value};\n'
    elif(tokens[1] == 'dd'):
        if value.startswith("0x"):
            return f'uint32_t {variable_name} = {value};\n'
        else:
            return f'float {variable_name} = {value if "." in value else value + ".0"}f;\n'
    elif(tokens[1]=='dw'):
        return f'unsigned short {variable_name} = {value};\n'
    elif(tokens[1]=='dt'):
        return f'long double {variable_name} = {value}L;\n'


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
                    c_line = generate_new_declarations(tokens)
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

                    # while i + 1 < len(valid_lines):
                    #     next_tokens = split_line_to_array(valid_lines[i + 2])                        
                    #     if len(next_tokens) == 2 and next_tokens[0] == 'db':                            
                    #         next_tokens[1]= adjustValue(next_tokens[1])
                    #         items.append(next_tokens)
                    #         i += 1
                    #     else:
                    #         break

                    # if(len(items) > 0):
                    #     concatenated_value = concatenated_value+',' + ','.join(item[1] for item in items)

                    #     tokens[2] = concatenated_value

                    #     c_line = generate_array_declaration(tokens)
                    # else:
                    c_line = f'__declspec(align({align_value})) {generate_new_declarations(tokens)}'
                    output.append(c_line)
                    i += 1
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
# Processar a partir da linha 16 (índice 15, pois índices começam em 0)
        for i, line in enumerate(lines[15:], start=15):
            # Split por ponto e vírgula para remover o comentário
            code_part = line.split(';')[0].strip()
            
            # Converter a linha em um array de tokens
            tokens = split_line_to_array(code_part)
            
            # Verificar a próxima linha, se houver
            next_line = lines[i + 1].split(';')[0].strip() if i + 1 < len(lines) else None
            next_tokens = split_line_to_array(next_line) if next_line else []
            
            # Lógica de processamento
            if (
                len(tokens) == 3 and
                (tokens[1] == "dq" or tokens[1] == "dd" or tokens[1] == "dw" or tokens[1] == "dt") and
                len(next_tokens) == 3
            ):
                valid_lines.append(code_part)
            else:
                invalid_output.write(line)

    
    # Processar as linhas válidas e salvar no arquivo de saída
    with open(valid_file, "w") as valid_output:
        c_lines = process_valid_lines(valid_lines)
        valid_output.writelines(c_lines)


# Executar a função
if __name__ == "__main__":
    process_asm_file()
