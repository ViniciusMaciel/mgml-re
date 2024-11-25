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