.686p
.mmx
.model flat, stdcall
.stack 4096

; Importa��o de fun��es da API do Windows
includelib kernel32.lib

ExitProcess proto :dword
WriteConsoleA proto :dword, :ptr byte, :dword, :ptr dword, :dword
GetStdHandle proto :dword

.const
STD_OUTPUT_HANDLE equ -11  ; Handle padr�o para sa�da no console

.data
    message db "Hello, World!", 0Ah, 0  ; Mensagem com quebra de linha e terminador nulo
    msgLength dd 13                     ; Tamanho da mensagem (incluindo \n)

.data?
    bytesWritten dd ?                   ; Vari�vel para armazenar bytes escritos
    stdOutputHandle dd ?                ; Handle para sa�da padr�o

.code
; Fun��o para imprimir uma mensagem
printMessage proc
    ; Escrever mensagem no console
    invoke WriteConsoleA, stdOutputHandle, addr message, msgLength, addr bytesWritten, 0
    ret
printMessage endp

start proc
    ; Obter o handle do console para sa�da padr�o
    invoke GetStdHandle, STD_OUTPUT_HANDLE
    mov stdOutputHandle, eax  ; Armazena o handle em uma vari�vel global

    ; Chama a fun��o que imprime a mensagem
    invoke printMessage

    ; Encerrar o programa
    invoke ExitProcess, 0
start endp

end start
