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

mov     eax, ds:dword_557C30

add     eax, 3

and     al, 0FCh

sub     esp, eax

mov     eax, esp

jmp     short loc_4FFBB3

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

mov     esp, ebp

pop     ebp

pop     edx

pop     ecx

pop     ebx

retn

sub_4FFB41      endp
sub_5022FA      proc near               ; CODE XREF: sub_4FFB41+5B↑p
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
sub_500909      proc near               ; CODE XREF: sub_4FABD3+2E↑p
push    ecx
push    edx
mov     edx, eax
call    ds:off_551FC4
mov     [eax+54h], edx
xor     eax, eax
mov     eax, fs:[eax]
mov     edx, eax
call    ds:off_551FC4
mov     eax, [eax+54h]
mov     [eax], edx
call    ds:off_551FC4
mov     eax, [eax+54h]
xor     edx, edx
mov     dword ptr [eax+4], offset sub_500745
call    ds:off_551FC4
mov     eax, [eax+54h]
mov     fs:[edx], eax
push    offset TopLevelExceptionFilter ; lpTopLevelExceptionFilter
call    cs:__imp_SetUnhandledExceptionFilter
pop     edx
pop     ecx
retn
sub_500909      endp
sub_50235C      proc near               ; CODE XREF: sub_502330+24↑p
push    edx
mov     edx, eax
call    ds:off_5581C0
call    ds:off_5581C4
cmp     ds:dword_557EBC, 0
jz      short loc_50237A
call    ds:dword_557EBC
loc_50237A:                             ; CODE XREF: sub_50235C+16↑j
mov     eax, edx
jmp     loc_4FAC25
sub_50235C      endp
sub_4FA9A8      proc near               ; CODE XREF: sub_4FABD3+17↓p
var_41C         = byte ptr -41Ch
Filename        = byte ptr -214h
var_110         = byte ptr -110h
push    ecx
push    esi
push    edi
sub     esp, 618h
mov     edi, eax
mov     esi, ebx
mov     eax, edx
mov     ds:dword_897BB8, edi
call    sub_5000A0
mov     ds:lpTlsValue, eax
test    eax, eax
jnz     short loc_4FA9DC
test    edi, edi
jnz     loc_4FABC9
push    1               ; uExitCode
call    cs:__imp_ExitProcess
loc_4FA9DC:                             ; CODE XREF: sub_4FA9A8+21↑j
call    __NTInitFileHandles_
call    cs:__imp_GetEnvironmentStrings
xor     edx, edx
mov     ds:dword_557C49, eax
mov     ds:dword_898334, edx
call    cs:__imp_GetVersion
mov     edx, eax
mov     ebx, eax
mov     ds:byte_557C4F, al
shr     eax, 10h
and     eax, 0FFFFh
mov     ds:word_557C51, ax
xor     eax, eax
mov     ax, ds:word_557C51
and     edx, 0FFFFh
mov     ds:dword_557C53, eax
xor     eax, eax
sar     edx, 8
mov     al, bl
and     edx, 0FFh
mov     ds:dword_557C57, eax
xor     eax, eax
mov     al, dl
mov     ds:byte_557C50, dl
mov     ds:dword_557C5B, eax
mov     eax, ds:dword_557C57
mov     edx, ds:dword_557C5B
shl     eax, 8
or      eax, edx
push    104h            ; nSize
mov     ds:dword_557C5F, eax
lea     eax, [esp+628h+Filename]
push    eax             ; lpFilename
push    0               ; hModule
mov     ebx, 208h
call    cs:__imp_GetModuleFileNameA
lea     eax, [esp+624h+Filename]
mov     edx, esp
call    strdup_
mov     ds:dword_557C10, eax
xor     eax, eax
call    __lib_GetModuleFileNameW_
mov     eax, esp
call    sub_50045B
mov     ds:dword_557C1C, eax
call    cs:__imp_GetCommandLineA
call    strdup_
mov     bl, [eax]
mov     edx, eax
cmp     bl, 22h ; '"'
jnz     short loc_4FAAC6
loc_4FAAB2:                             ; CODE XREF: sub_4FA9A8+114↓j
inc     eax
mov     ch, [eax]
cmp     ch, 22h ; '"'
jz      short loc_4FAABE
test    ch, ch
jnz     short loc_4FAAB2
loc_4FAABE:                             ; CODE XREF: sub_4FA9A8+110↑j
cmp     byte ptr [eax], 0
jz      short loc_4FAAE1
loc_4FAAC3:                             ; CODE XREF: sub_4FA9A8+14A↓j
inc     eax
jmp     short loc_4FAAE1
loc_4FAAC6:                             ; CODE XREF: sub_4FA9A8+108↑j
mov     dl, [eax]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jnz     short loc_4FAAE1
cmp     byte ptr [eax], 0
jz      short loc_4FAAE1
inc     eax
jmp     short loc_4FAAC6
loc_4FAAE1:                             ; CODE XREF: sub_4FA9A8+119↑j
mov     dl, [eax]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jnz     short loc_4FAAC3
mov     ds:lpCmdLine, eax
call    cs:__imp_GetCommandLineW
test    eax, eax
jz      loc_4FAB67
call    sub_50045B
mov     bx, [eax]
mov     edx, eax
cmp     bx, 22h ; '"'
jnz     short loc_4FAB34
loc_4FAB18:                             ; CODE XREF: sub_4FA9A8+17F↓j
add     eax, 2
mov     dx, [eax]
cmp     dx, 22h ; '"'
jz      short loc_4FAB29
test    dx, dx
jnz     short loc_4FAB18
loc_4FAB29:                             ; CODE XREF: sub_4FA9A8+17A↑j
cmp     word ptr [eax], 0
jz      short loc_4FAB52
loc_4FAB2F:                             ; CODE XREF: sub_4FA9A8+1BD↓j
add     eax, 2
jmp     short loc_4FAB52
loc_4FAB34:                             ; CODE XREF: sub_4FA9A8+16E↑j
mov     dl, [eax]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jnz     short loc_4FAB52
cmp     word ptr [eax], 0
jz      short loc_4FAB52
add     eax, 2
jmp     short loc_4FAB34
loc_4FAB52:                             ; CODE XREF: sub_4FA9A8+185↑j
mov     dl, [eax]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jz      short loc_4FAB71
jmp     short loc_4FAB2F
loc_4FAB67:                             ; CODE XREF: sub_4FA9A8+15A↑j
mov     eax, offset unk_50AAA0
call    sub_50045B
loc_4FAB71:                             ; CODE XREF: sub_4FA9A8+1BB↑j
mov     ds:dword_557C18, eax
test    edi, edi
jz      short loc_4FABC4
push    104h            ; nSize
lea     eax, [esp+628h+var_110]
push    eax             ; lpFilename
push    esi             ; hModule
mov     ebx, 208h
call    cs:__imp_GetModuleFileNameA
lea     eax, [esp+624h+var_110]
lea     edx, [esp+624h+var_41C]
call    strdup_
mov     ds:dword_557C14, eax
mov     eax, esi
call    __lib_GetModuleFileNameW_
lea     eax, [esp+624h+var_41C]
call    sub_50045B
mov     ds:dword_557C20, eax
loc_4FABC4:                             ; CODE XREF: sub_4FA9A8+1D0↑j
mov     eax, 1
loc_4FABC9:                             ; CODE XREF: sub_4FA9A8+25↑j
add     esp, 618h
pop     edi
pop     esi
pop     ecx
retn
sub_4FA9A8      endp
sub_5000A0      proc near               ; CODE XREF: sub_4FA9A8+15↑p
push    ebx
push    edx
mov     edx, eax
test    eax, eax
jnz     short loc_5000CE
mov     eax, 1
mov     edx, ds:dword_5581A8
call    calloc_
mov     edx, eax
test    eax, eax
jz      short loc_5000CE
mov     ebx, ds:dword_5581A8
mov     byte ptr [eax+52h], 1
mov     [eax+0F0h], ebx
loc_5000CE:                             ; CODE XREF: sub_5000A0+6↑j
mov     eax, edx
call    __InitThreadData_
mov     eax, edx
pop     edx
pop     ebx
retn
sub_5000A0      endp
sub_50045B      proc near               ; CODE XREF: sub_4FA9A8+EB↑p
push    ebx
push    ecx
push    edx
mov     edx, eax
call    wcslen_
lea     ebx, [eax+1]
add     ebx, ebx
mov     eax, ebx
call    _nmalloc_
mov     ecx, eax
test    eax, eax
jz      short loc_50047C
call    memcpy_
loc_50047C:                             ; CODE XREF: sub_50045B+1A↑j
mov     eax, ecx
pop     edx
pop     ecx
pop     ebx
retn
sub_50045B      endp