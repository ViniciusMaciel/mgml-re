import os

def process_s4():
    input_file = os.path.join("..", "new_asm", "s4.asm")
    output_file = os.path.join("..", "main", "s4.c")

    # Verifica se o arquivo de entrada existe
    if not os.path.isfile(input_file):
        print(f"Arquivo '{input_file}' não encontrado.")
        return
    
    # Lê o conteúdo do arquivo a partir da linha 29
    with open(input_file, "r") as infile:
        lines = infile.readlines()
    
    # Pega as linhas a partir da 29ª (índice 28 no Python)
    relevant_lines = lines[28:]
    
    # Processa as linhas e traduz para C
    c_declarations = []
    i = 0
    while i < len(relevant_lines):
        line = relevant_lines[i].strip()

        # Encerra a busca ao encontrar '_bss'
        if "_bss" in line:
            break
        
        # Verifica se a linha começa com 'word_', 'dword_', 'byte_', ou 'unk_'
        if line.startswith(("word_", "dword_", "byte_", "unk_")):
            parts = line.split()
            if len(parts) >= 2:
                variable_name = parts[0]
                variable_type = parts[1]

                # Determina o tipo em C com base no tipo ASM
                if variable_type == "dw":
                    c_type = "uint16_t"
                    element_size = 2
                elif variable_type == "dd":
                    c_type = "uint32_t"
                    element_size = 4
                elif variable_type == "db":
                    c_type = "uint8_t"
                    element_size = 1
                else:
                    c_type = None

                c_declarations.append(f"{c_type} {variable_name};\n")

                # Verificar se há bytes adicionais após a variável
                j = i + 1
                padding_size = 0
                while j < len(relevant_lines):
                    next_line = relevant_lines[j].strip()
                    
                    # Ignora linhas vazias ou comentários
                    if not next_line or next_line.startswith(";"):
                        j += 1
                        continue

                    # Contar bytes adicionais (db ?)
                    if next_line.startswith("db"):
                        padding_size += 1
                    else:
                        break
                    j += 1

                # Adiciona padding_nomevariavel para os bytes adicionais
                if padding_size > 0:
                    c_declarations.append(f"uint8_t padding_{variable_name}[{padding_size}];\n")
                
                # Pula as linhas processadas
                i = j - 1  # -1 porque o loop principal incrementa `i`
        
        i += 1

    # Escreve as declarações no arquivo de saída
    with open(output_file, "w") as outfile:
        outfile.writelines(c_declarations)
    
    print(f"Arquivo processado e salvo em '{output_file}'.")

if __name__ == "__main__":
    process_s4()
import os

def process_s4():
    input_file = os.path.join("..", "new_asm", "s4.asm")
    output_file = os.path.join("..", "main", "s4.c")

    # Verifica se o arquivo de entrada existe
    if not os.path.isfile(input_file):
        print(f"Arquivo '{input_file}' não encontrado.")
        return
    
    # Lê o conteúdo do arquivo a partir da linha 29
    with open(input_file, "r") as infile:
        lines = infile.readlines()
    
    # Pega as linhas a partir da 29ª (índice 28 no Python)
    relevant_lines = lines[28:]
    
    # Processa as linhas e traduz para C
    c_declarations = []
    i = 0
    while i < len(relevant_lines):
        line = relevant_lines[i].strip()

        # Encerra a busca ao encontrar '_bss'
        if "_bss" in line:
            break
        
        # Verifica se a linha começa com 'word_', 'dword_', 'byte_', ou 'unk_'
        if line.startswith(("word_", "dword_", "byte_", "unk_")):
            parts = line.split()
            if len(parts) >= 2:
                variable_name = parts[0]
                variable_type = parts[1]

                # Determina o tipo em C com base no tipo ASM
                if variable_type == "dw":
                    c_type = "uint16_t"
                    element_size = 2
                elif variable_type == "dd":
                    c_type = "uint32_t"
                    element_size = 4
                elif variable_type == "db":
                    c_type = "uint8_t"
                    element_size = 1
                else:
                    c_type = None

                # Verificar se há elementos adicionais do mesmo tipo
                count = 1
                j = i + 1
                while j < len(relevant_lines):
                    next_line = relevant_lines[j].strip()

                    # Ignora linhas vazias ou comentários
                    if not next_line or next_line.startswith(";"):
                        j += 1
                        continue

                    # Verifica se o tipo da próxima linha é igual
                    if next_line.startswith("db") and variable_type == "db":
                        count += 1
                    elif next_line.startswith("dw") and variable_type == "dw":
                        count += 1
                    elif next_line.startswith("dd") and variable_type == "dd":
                        count += 1
                    else:
                        break
                    j += 1

                # Decide entre variável única ou array
                if count == 1:
                    c_declarations.append(f"{c_type} {variable_name};\n")
                else:
                    c_declarations.append(f"{c_type} {variable_name}[{count}];\n")

                # Verificar se há padding necessário (tipo diferente nas linhas subsequentes)
                if j < len(relevant_lines):
                    next_line = relevant_lines[j].strip()
                    if next_line.startswith("db") and variable_type != "db":
                        padding_size = 1
                        while j + 1 < len(relevant_lines):
                            next_line = relevant_lines[j + 1].strip()
                            if next_line.startswith("db"):
                                padding_size += 1
                                j += 1
                            else:
                                break
                        c_declarations.append(f"uint8_t padding_{variable_name}[{padding_size}];\n")

                # Pula as linhas processadas
                i = j - 1  # -1 porque o loop principal incrementa `i`
        
        i += 1

    # Escreve as declarações no arquivo de saída
    with open(output_file, "w") as outfile:
        outfile.writelines(c_declarations)
    
    print(f"Arquivo processado e salvo em '{output_file}'.")

if __name__ == "__main__":
    process_s4()
