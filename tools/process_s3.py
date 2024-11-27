import os

# Função para processar strings (db + valor com aspas simples)
def process_string(name, value):
    value = value[:-2]  # Remover ,0
    value = value.replace("'", '"')  # Trocar aspas simples por duplas
    value = value.replace("\\", "\\\\")  # Escapar barras invertidas
    return f"char {name}[] = {value};\n"

# Função para processar valores de ponto flutuante (dq)
def process_double(name, value):
    return f"double {name} = {value};\n"

# Função para processar valores hexadecimais (db)
def process_unsigned_char(name, value):
    value = f"0x{value[:-1]}"  # Remover o 'h' e adicionar o prefixo 0x
    return f"unsigned char {name} = {value};\n"

# Função para identificar o tipo de dado e delegar para a função correspondente
def process_line(fields):
    name = fields[0]  # Nome da variável
    directive = fields[1]  # Tipo de dado (db, dq, etc.)
    value = fields[2]  # Valor

    # Strings
    if directive == "db" and value.startswith("'") and value.endswith(",0"):
        return process_string(name, value)

    # Double
    elif directive == "dq" and value.replace('.', '', 1).lstrip('-').isdigit():
        return process_double(name, value)

    # Unsigned char (valores hexadecimais)
    elif directive == "db" and value.endswith("h"):
        return process_unsigned_char(name, value)

    # Demais casos
    else:
        return f"{directive} {name} = {value}; // Unknown\n"

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
                # Dividir a linha pelo primeiro ponto e vírgula
                parts = line.split(';', 1)
                # Dividir a parte antes do ponto e vírgula por espaços
                fields = parts[0].split()

                # Garantir que temos ao menos 3 campos
                if len(fields) >= 3:
                    formatted_line = process_line(fields)
                    outfile.write(formatted_line)

    print(f"Arquivo {output_file} gerado com sucesso!")

except FileNotFoundError:
    print(f"Erro: O arquivo {input_file} não foi encontrado. Verifique o caminho.")
except Exception as e:
    print(f"Erro ao processar o arquivo: {e}")
