#include <stdio.h>
#include <string.h>  // Para memset
#include <stdlib.h>  // Para malloc, free
#include <windows.h> // Para GetModuleHandle

// Variáveis globais simuladas
unsigned int dword_5581A8 = 0x12345678; // Exemplo de valor
unsigned int dword_557C30 = 0x100;     // Exemplo de valor
unsigned int dword_557C34 = 0;         // Valor será atualizado
char lpCmdLine[256] = "Exemplo de linha de comando";

// Funções externas simuladas
void __InitRtns() {
    printf("__InitRtns called\n");
}

void sub_4FABD3(void* var_8) {
    printf("sub_4FABD3 called with var_8 = %p\n", var_8);
}

unsigned int stackavail() {
    printf("stackavail called\n");
    return 1024; // Retorna um valor arbitrário
}

void sub_5022FA(unsigned int ecx) {
    printf("sub_5022FA called with ecx = 0x%X\n", ecx);
}

void nullsub_6() {
    printf("nullsub_6 called\n");
}

void sub_502330() {
    printf("sub_502330 called\n");
}

int _WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd) {
    printf("_WinMain called with:\n");
    printf("  hInstance = %p\n", hInstance);
    printf("  hPrevInstance = %p\n", hPrevInstance);
    printf("  lpCmdLine = %s\n", lpCmdLine);
    printf("  nShowCmd = %d\n", nShowCmd);
    return 0;
}

// Função principal traduzida
void sub_4FFB41() {
    // Variáveis locais simulando registradores
    unsigned int eax = 0, ebx = 0, ecx = 0, edx = 0; // Inicialização para evitar erros
    unsigned char var_8 = 0;  // Variável local equivalente a [ebp-8]
    unsigned int* esp;        // Ponteiro para simular a pilha
    unsigned int stack[256];  // Simula a pilha
    esp = stack + 256;        // Aponta para o topo da pilha

    // Prólogo da função (salvando os valores)
    unsigned int saved_ebx = ebx;
    unsigned int saved_ecx = ecx;
    unsigned int saved_edx = edx;

    // Código traduzido do ASM
    eax = 1; // mov eax, 1
    __InitRtns(); // call __InitRtns

    eax = dword_5581A8; // mov eax, ds:dword_5581A8
    eax += 3;           // add eax, 3
    eax &= ~0x3;        // and al, 0FCh (alinha para múltiplos de 4)
    edx = 0;            // xor edx, edx

    esp -= eax / sizeof(unsigned int); // sub esp, eax
    ecx = (unsigned int)esp;           // mov ecx, esp
    ebx = dword_5581A8;                // mov ebx, ds:dword_5581A8
    eax = ecx;                         // mov eax, ecx
    memset((void*)ecx, 0, eax);       // call memset_

    eax = dword_5581A8;        // mov eax, ds:dword_5581A8
    edx = ecx;                 // mov edx, ecx
    *(unsigned int*)(ecx + 0xF0) = eax; // mov [ecx+0F0h], eax

    eax = (unsigned int)&var_8; // lea eax, [ebp+var_8]
    sub_4FABD3((void*)eax);    // call sub_4FABD3

    ecx = dword_557C30; // mov ecx, ds:dword_557C30
    ecx += 3;           // add ecx, 3
    ecx &= ~0x3;        // and cl, 0FCh

    eax = stackavail(); // call stackavail_

    if (ecx > eax) {    // cmp ecx, eax / jnb loc_4FFBB1
        sub_5022FA(ecx); // push ecx / call sub_5022FA
    }
    else {
        eax = dword_557C30; // mov eax, ds:dword_557C30
        eax += 3;           // add eax, 3
        eax &= ~0x3;        // and al, 0FCh
        esp -= eax / sizeof(unsigned int); // sub esp, eax
        eax = (unsigned int)esp;           // mov eax, esp
    }

loc_4FFBB1:
    eax = 0; // xor eax, eax

loc_4FFBB3:
    ebx = dword_557C30;      // mov ebx, ds:dword_557C30
    eax += ebx;              // add eax, ebx
    dword_557C34 = eax;      // mov ds:dword_557C34, eax

    nullsub_6(); // call nullsub_6

    // Configuração para chamar WinMain
    int nShowCmd = 10; // push 0Ah
    HMODULE hInstance = GetModuleHandle(NULL); // call cs:__imp_GetModuleHandleA
    _WinMain(hInstance, NULL, lpCmdLine, nShowCmd); // call _WinMain@16

    sub_502330(); // call sub_502330

    // Epílogo da função (restaura os valores e sai)
    esp = stack + 256;  // Restaurando a pilha
    ebx = saved_ebx;    // pop ebx
    ecx = saved_ecx;    // pop ecx
    edx = saved_edx;    // pop edx
}

// Função principal para teste
int main() {
    sub_4FFB41();
    return 0;
}
