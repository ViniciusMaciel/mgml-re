import os

# Função para processar strings (db + valor com aspas simples)
def process_string(name, value):
    value = value.replace(",0", "")  # Remover ,0
    value = value.replace("'", '"')  # Trocar aspas simples por duplas
    value = value.replace("\\", "\\\\")  # Escapar barras invertidas
    return f"char {name}[] = {value};\n"

# Função para processar valores de ponto flutuante (dq)
def process_double(name, value):
    return f"double {name} = {value};\n"

# Função para processar valores hexadecimais (db ou db com valores hexadecimais explícitos)
def process_unsigned_char(name, value):
    if value.endswith("h"):
        value = f"0x{value[:-1]}"  # Remover o 'h' e adicionar o prefixo 0x
    return f"unsigned char {name} = {value};\n"

# Função para identificar o tipo de dado e delegar para a função correspondente
def process_line(fields):
    name = fields[0]  # Nome da variável
    directive = fields[1]  # Tipo de dado (db, dq, etc.)
    value = fields[2]  # Valor

    # Strings
    if directive == "db" and value.startswith("'") and ",0" in value:
        return process_string(name, value)

    # Double
    elif directive == "dq":
        return process_double(name, value)

    # Unsigned char (valores hexadecimais)
    elif directive == "db":
        return process_unsigned_char(name, value)

    # Demais casos
    else:
        return f"{directive} {name} = {value}; // Unknown\n"

# Função para garantir sempre três valores no split
def split_line_parts(line):
    parts = line.split(';', 1)  # Dividir no ponto e vírgula
    main_part = parts[0].split(maxsplit=2)  # Dividir apenas nos dois primeiros espaços
    if len(main_part) > 3:
        main_part[2] = ' '.join(main_part[2:])  # Juntar valores adicionais no terceiro campo
        main_part = main_part[:3]  # Garantir exatamente três campos
    return main_part

# Definir caminhos relativos ao projeto
root_directory = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
input_file = os.path.join(root_directory, "new_asm", "s3.asm")
output_directory = os.path.join(root_directory, "main")
output_file = os.path.join(output_directory, "s3.c")

# Garantir que o diretório de saída existe
os.makedirs(output_directory, exist_ok=True)

# Processar o arquivo
try:
    with open(input_file, "r") as infile, open(output_file, "w") as outfile:
        # Pular as primeiras 15 linhas para começar na linha 16
        for _ in range(15):
            infile.readline()
        
        # Ler linha por linha do arquivo
        for line in infile:
            # Parar ao encontrar "DGROUP          ends"
            if line.startswith("DGROUP          ends"):
                break
            
            # Processar linhas válidas
            if "db" in line or "dq" in line:
                # Garantir três partes no split
                fields = split_line_parts(line)

                # Garantir que temos exatamente 3 campos
                if len(fields) == 3:
                    formatted_line = process_line(fields)
                    outfile.write(formatted_line)

    print(f"Arquivo {output_file} gerado com sucesso!")

except FileNotFoundError:
    print(f"Erro: O arquivo {input_file} não foi encontrado. Verifique o caminho.")
except Exception as e:
    print(f"Erro ao processar o arquivo: {e}")
