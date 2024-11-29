import os

include_unknown = False

def process_single_line_string(name, value):
    value = value.replace(",0", "")
    value = value.replace("'", '"')
    value = value.replace("0Ah", "\\n")
    value = value.replace("\\", "\\\\")
    return f"char {name}[] = {value};\n"

def process_multiline_string(name, values):
    full_value = ''.join(values).replace("'", '"').replace("0Ah", "\\n").replace("\\", "\\\\")
    return f"char {name}[] = \"{full_value}\";\n"

def process_double(name, value):
    return f"double {name} = {value}f;\n"

def process_unsigned_char(name, value):
    if value.endswith("h"):
        value = f"0x{value[:-1]}"
    return f"unsigned char {name} = {value};\n"

def process_line(fields, multiline_context=None):
    name = fields[0]
    directive = fields[1]
    value = fields[2]

    if multiline_context:
        multiline_context['values'].append(value)
        return None

    if directive == "db" and value.startswith("'"):
        return process_single_line_string(name, value)
    elif directive == "dq":
        return process_double(name, value)
    elif directive == "dd":
        return process_double(name, value)
    elif name == "d" and "." in value:
        return f"double {name} = {value}f;\n"
    elif directive == "db":
        return process_unsigned_char(name, value)
    elif include_unknown:
        return f"{directive} {name} = {value}; // Unknown\n"
    return None

def process_lines(lines):
    processed_lines = []
    multiline_context = None

    for line in lines:
        parts = line.split(';', 1)
        core = parts[0].strip()

        if not core:
            continue

        fields = core.split(maxsplit=2)

        if len(fields) > 3:
            fields = fields[:2] + [' '.join(fields[2:])]

        if len(fields) >= 3 and fields[1] == "db":
            if multiline_context:
                processed_lines.append(process_multiline_string(multiline_context['name'], multiline_context['values']))
                multiline_context = None

            if "0Ah" in fields[2]:
                multiline_context = {'name': fields[0], 'values': [fields[2]]}
                continue

            processed_lines.append(process_single_line_string(fields[0], fields[2]))
            continue

        if multiline_context and (len(fields) < 3 or "db" not in fields[1]):
            processed_lines.append(process_multiline_string(multiline_context['name'], multiline_context['values']))
            multiline_context = None

        if len(fields) >= 3:
            formatted_line = process_line(fields, multiline_context)
            if formatted_line:
                processed_lines.append(formatted_line)

    if multiline_context:
        processed_lines.append(process_multiline_string(multiline_context['name'], multiline_context['values']))

    return processed_lines

root_directory = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
input_file = os.path.join(root_directory, "new_asm", "s3.asm")
output_directory = os.path.join(root_directory, "main")
output_file = os.path.join(output_directory, "s3.c")

os.makedirs(output_directory, exist_ok=True)

try:
    with open(input_file, "r") as infile, open(output_file, "w") as outfile:
        for _ in range(15):
            infile.readline()
        lines = infile.readlines()
        results = process_lines(lines)
        for line in results:
            outfile.write(line)
    print(f"Arquivo {output_file} gerado com sucesso!")
except FileNotFoundError:
    print(f"Erro: O arquivo {input_file} não foi encontrado. Verifique o caminho.")
except Exception as e:
    print(f"Erro ao processar o arquivo: {e}")
