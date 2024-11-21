import openai
import os

# Ler a chave da API OpenAI do arquivo .key
key_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "openai.key")
with open(key_path, "r") as key_file:
    openai.api_key = key_file.read().strip()

def convert_c_to_asm(function_name, c_code, asm_code):
    """
    Converte uma função em C para Assembly usando a API da OpenAI.
    """
    try:
        messages=[
                    {"role": "system", "content": "You are an assistant that converts Assembly code to C.Please return just the code and anymore. I need a complete code with has a loc_ function please add a fake goto. Please add all labels of my gotos. Dont add any new sub functions(i have in my c code)"},
                    {"role": "user", "content": f"Convert the following Assembly code to C:\n\n{asm_code}\n\nusing this base function in C and using the same parameters\n\n{c_code}\n\nDont change the type of return of original C function too, i have a incomplete program but build"},
                    {"role": "user", "content": "always create all gotos a need, create a mock version if doesnt find. If you have the goto and the simplify(refactor) and eliminate the goto(but just if loc is in the asm, if not i will analyse after so doenst eliminate in this case)"}
                ]
        completions = openai.chat.completions.create(
            model="gpt-4o",
            messages=messages,
            temperature=0.7
        )
        c_code = completions.choices[0].message.content
        tokens_used = completions.usage.total_tokens

        print(f"Função '{function_name}' convertida para C com sucesso:")
        
        print(f"Tokens utilizados: {tokens_used}")

        return c_code

    except openai.error.OpenAIError as e:
        print(f"Erro ao chamar a OpenAI API: {e}")
    except Exception as e:
        print(f"Ocorreu um erro: {e}")
