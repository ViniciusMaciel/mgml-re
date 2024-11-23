sub_4FFB41      proc near               ; CODE XREF: start↑j

var_8           = byte ptr -8

push    ebx
push    ecx
push    edx
push    ebp
mov     ebp, esp
sub     esp, 8
mov     eax, 1
call    __InitRtns
mov     eax, ds:dword_5581A8
add     eax, 3
and     al, 0FCh
xor     edx, edx
sub     esp, eax
mov     ecx, esp
mov     ebx, ds:dword_5581A8
mov     eax, ecx
call    memset_
mov     eax, ds:dword_5581A8
mov     edx, ecx
mov     [ecx+0F0h], eax
lea     eax, [ebp+var_8]
call    sub_4FABD3
mov     ecx, ds:dword_557C30
add     ecx, 3
and     cl, 0FCh
call    stackavail_
cmp     ecx, eax
jnb     short loc_4FFBB1
push    ecx
call    sub_5022FA      ; __GRO
; doubtful name
mov     eax, ds:dword_557C30
add     eax, 3
and     al, 0FCh
sub     esp, eax
mov     eax, esp
jmp     short loc_4FFBB3
; ---------------------------------------------------------------------------

loc_4FFBB1:                             ; CODE XREF: sub_4FFB41+58↑j
xor     eax, eax

loc_4FFBB3:                             ; CODE XREF: sub_4FFB41+6E↑j
mov     ebx, ds:dword_557C30
add     eax, ebx
mov     ds:dword_557C34, eax
call    nullsub_6
push    0Ah             ; nShowCmd
mov     edx, ds:lpCmdLine
push    edx             ; lpCmdLine
push    0               ; hPrevInstance
push    0               ; lpModuleName
call    cs:__imp_GetModuleHandleA
push    eax             ; hInstance
call    _WinMain@16     ; WinMain(x,x,x,x)
call    sub_502330
; ---------------------------------------------------------------------------
mov     esp, ebp
pop     ebp
pop     edx
pop     ecx
pop     ebx
retn
sub_4FFB41      endp

; Called Functions

sub_5022FA      proc near               ; CODE XREF: sub_4FFB41+5B↑p
; sub_5022CB+19↑p ...

var_8           = dword ptr -8
arg_0           = dword ptr  4

push    eax
push    ebx
mov     eax, [esp+8+arg_0]
mov     ebx, 0FFFFFFFCh

loc_502305:                             ; CODE XREF: sub_5022FA+19↓j
mov     [esp+ebx+8+var_8], ebx
sub     ebx, 1000h
sub     eax, 1000h
jg      short loc_502305
pop     ebx
pop     eax
retn    4
sub_5022FA      endp

sub_4FABD3      proc near               ; CODE XREF: sub_4FFB41+40↓p
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     edi, edx
push    0               ; lpModuleName
call    cs:__imp_GetModuleHandleA
mov     ebx, eax
mov     edx, edi
xor     eax, eax
call    sub_4FA9A8
mov     edx, offset unk_557C2C
call    ds:off_551FC4
call    __init_stack_limits_
mov     eax, esi
call    sub_500909
mov     eax, 21h ; '!'
call    __InitRtns
call    ds:off_552004
mov     eax, 0FFh
call    __InitRtns
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4FABD3      endp

sub_502330      proc near               ; CODE XREF: sub_4FFB41+9E↑p
push    ebx
push    edx
mov     ebx, eax
call    ds:off_5581C0
cmp     byte ptr ds:dword_897BB8, 0
jnz     short loc_502352
mov     edx, 0FFh
mov     eax, 10h
call    __FiniRtns

loc_502352:                             ; CODE XREF: sub_502330+11↑j
mov     eax, ebx
call    sub_50235C
sub_502330      endp