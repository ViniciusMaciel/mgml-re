import os
import re

def extract_function_content(function_name):
    script_dir = os.path.dirname(os.path.abspath(__file__))
    project_root = os.path.dirname(script_dir)
    main_c_path = os.path.join(project_root, "src", "main.c")
    asm_path = os.path.join(project_root, "megaman.exe.asm")

    try:
        result = {"c_code": None, "asm_code": None}

        # Busca no arquivo main.c
        if os.path.exists(main_c_path):
            with open(main_c_path, "r") as file:
                c_content = file.read()

            c_function_pattern = rf'\b{function_name}\s*\([^)]*\)\s*{{.*?^}}'
            c_match = re.search(c_function_pattern, c_content, re.DOTALL | re.MULTILINE)
            if c_match:
                result["c_code"] = c_match.group(0)

        # Busca no arquivo megaman.exe.asm
        if os.path.exists(asm_path):
            with open(asm_path, "r") as file:
                asm_content = file.read()

            asm_function_patterns = [
                rf'^\s*{function_name}:\s.*?$',
                rf'^\s*{function_name}\s+proc\s+near'
            ]

            for pattern in asm_function_patterns:
                asm_match = re.search(pattern, asm_content, re.MULTILINE)
                if asm_match:
                    asm_start = asm_match.start()
                    asm_end = re.search(r'^\s*\w+:\s', asm_content[asm_start:], re.MULTILINE)
                    if asm_end:
                        asm_end_index = asm_start + asm_end.start()
                        result["asm_code"] = asm_content[asm_start:asm_end_index].strip()
                    else:
                        result["asm_code"] = asm_content[asm_start:].strip()
                    break

        return result

    except Exception as e:
        print(f"Erro ao buscar função: {e}")
        return None
