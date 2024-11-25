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
loc_4FFBB1:                             ; CODE XREF: sub_4FFB41+58↑j
xor     eax, eax
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
loc_502352:                             ; CODE XREF: sub_502330+11↑j
mov     eax, ebx
call    sub_50235C
sub_502330      endp
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
loc_502305:                             ; CODE XREF: sub_5022FA+19↓j
mov     [esp+ebx+8+var_8], ebx
sub     ebx, 1000h
sub     eax, 1000h
jg      short loc_502305
pop     ebx
pop     eax
retn    4
sub_5022FA      endp
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
loc_4FAABE:                             ; CODE XREF: sub_4FA9A8+110↑j
cmp     byte ptr [eax], 0
jz      short loc_4FAAE1
loc_50237A:                             ; CODE XREF: sub_50235C+16↑j
mov     eax, edx
jmp     loc_4FAC25
sub_50235C      endp
loc_4FAB29:                             ; CODE XREF: sub_4FA9A8+17A↑j
cmp     word ptr [eax], 0
jz      short loc_4FAB52
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
loc_4FAB18:                             ; CODE XREF: sub_4FA9A8+17F↓j
add     eax, 2
mov     dx, [eax]
cmp     dx, 22h ; '"'
jz      short loc_4FAB29
test    dx, dx
jnz     short loc_4FAB18
loc_4FABC9:                             ; CODE XREF: sub_4FA9A8+25↑j
add     esp, 618h
pop     edi
pop     esi
pop     ecx
retn
sub_4FA9A8      endp
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
loc_4FAB52:                             ; CODE XREF: sub_4FA9A8+185↑j
mov     dl, [eax]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jz      short loc_4FAB71
jmp     short loc_4FAB2F
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
loc_4FAAB2:                             ; CODE XREF: sub_4FA9A8+114↓j
inc     eax
mov     ch, [eax]
cmp     ch, 22h ; '"'
jz      short loc_4FAABE
test    ch, ch
jnz     short loc_4FAAB2
loc_4FAB2F:                             ; CODE XREF: sub_4FA9A8+1BD↓j
add     eax, 2
jmp     short loc_4FAB52
loc_4FAAC3:                             ; CODE XREF: sub_4FA9A8+14A↓j
inc     eax
jmp     short loc_4FAAE1
loc_4FAC25:                             ; CODE XREF: sub_50235C+20↓j
mov     ebx, eax
cmp     ds:dword_897BB8, 0
jz      short loc_4FAC48
cmp     ds:dword_55200C, 0
jz      short loc_4FAC5F
mov     edx, 0FFh
xor     eax, eax
call    ds:dword_55200C
jmp     short loc_4FAC5F
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
loc_4FABC4:                             ; CODE XREF: sub_4FA9A8+1D0↑j
mov     eax, 1
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
loc_4FAB67:                             ; CODE XREF: sub_4FA9A8+15A↑j
mov     eax, offset unk_50AAA0
call    sub_50045B
loc_4FAC48:                             ; CODE XREF: sub_50235C-772E↑j
call    sub_500955
mov     edx, 0Fh
xor     eax, eax
call    __FiniRtns
call    ds:off_552000
loc_4FAC5F:                             ; CODE XREF: sub_50235C-7725↑j
push    ebx             ; uExitCode
call    cs:__imp_ExitProcess
loc_5000CE:                             ; CODE XREF: sub_5000A0+6↑j
mov     eax, edx
call    __InitThreadData_
mov     eax, edx
pop     edx
pop     ebx
retn
sub_5000A0      endp
sub_5000DA      proc near               ; CODE XREF: sub_505744+15↓p
push    ecx
push    edx
call    cs:__imp_TlsAlloc
mov     dx, ds:word_557C51
mov     ds:dwTlsIndex, eax
cmp     dx, 8000h
jb      short loc_50011D
cmp     ds:byte_557C4F, 4
jnb     short loc_50011D
loc_50047C:                             ; CODE XREF: sub_50045B+1A↑j
mov     eax, ecx
pop     edx
pop     ecx
pop     ebx
retn
sub_50045B      endp
__init_stack_limits_ proc near          ; CODE XREF: sub_4FABD3+27↑p
Buffer          = _MEMORY_BASIC_INFORMATION ptr -2Ch
Address         = byte ptr -10h
push    ebx
push    ecx
push    esi
sub     esp, 20h
mov     ebx, eax
mov     esi, edx
push    1Ch             ; dwLength
lea     eax, [esp+30h+Buffer]
push    eax             ; lpBuffer
lea     eax, [esp+34h+Address]
push    eax             ; lpAddress
call    cs:__imp_VirtualQuery
mov     edx, [esp+2Ch+Buffer.BaseAddress]
add     edx, [esp+2Ch+Buffer.RegionSize]
mov     cx, ds:word_557C51
mov     eax, [esp+2Ch+Buffer.AllocationBase]
cmp     cx, 8000h
jnb     short loc_5004BF
add     eax, 3000h
jmp     short loc_5004D6
sub_500955      proc near               ; CODE XREF: sub_50235C:loc_4FAC48↑p
push    edx
call    ds:off_551FC4
mov     eax, [eax+54h]
test    eax, eax
jz      short loc_50096A
mov     eax, [eax]
xor     edx, edx
mov     fs:[edx], eax
loc_50096A:                             ; CODE XREF: sub_500955+C↑j
call    ds:off_551FC4
mov     dword ptr [eax+54h], 0
pop     edx
retn
sub_500955      endp
loc_50011D:                             ; CODE XREF: sub_5000DA+1A↑j
cmp     ds:dwTlsIndex, 0FFFFFFFFh
setnz   al
and     eax, 0FFh
pop     edx
pop     ecx
retn
sub_5000DA      endp
sub_50012F      proc near               ; CODE XREF: __GetThreadData_+5↓p
push    ebx
push    ecx
push    edx
cmp     ds:dwTlsIndex, 0FFFFFFFFh
jnz     short loc_500141
loc_5004BF:                             ; CODE XREF: __init_stack_limits_+34↑j
jb      short loc_5004D1
cmp     ds:byte_557C4F, 4
jnb     short loc_5004D1
add     eax, 12000h
jmp     short loc_5004D6
loc_5004D6:                             ; CODE XREF: __init_stack_limits_+3B↑j
test    ebx, ebx
jz      short loc_5004DC
mov     [ebx], eax
loc_500141:                             ; CODE XREF: sub_50012F+A↑j
call    sub_5000A0
mov     ebx, eax
test    eax, eax
jz      short loc_50017A
mov     edx, ebx
mov     eax, [eax+0DAh]
call    __AddThreadData_
test    eax, eax
jnz     short loc_500166
mov     eax, ebx
call    _nfree_
jmp     short loc_50013B
loc_50096A:                             ; CODE XREF: sub_500955+C↑j
call    ds:off_551FC4
mov     dword ptr [eax+54h], 0
pop     edx
retn
sub_500955      endp
callit_         proc near               ; CODE XREF: __InitRtns+3C↓p
push    es
cmp     dword ptr [eax], 0
jz      short loc_500983
push    ds
pop     es
assume es:AUTO
call    dword ptr [eax]
loc_5004D1:                             ; CODE XREF: __init_stack_limits_:loc_5004BF↑j
add     eax, 13000h
loc_5004DC:                             ; CODE XREF: __init_stack_limits_+56↑j
test    esi, esi
jz      short loc_5004E2
mov     [esi], edx
loc_50013B:                             ; CODE XREF: sub_50012F+35↓j
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
loc_500166:                             ; CODE XREF: sub_50012F+2C↑j
push    ebx             ; lpTlsValue
mov     ebx, ds:dwTlsIndex
push    ebx             ; dwTlsIndex
call    cs:__imp_TlsSetValue
mov     eax, 1
loc_500983:                             ; CODE XREF: callit_+4↑j
pop     es
assume es:nothing
retn
callit_         endp
__InitRtns      proc near               ; CODE XREF: sub_4FABD3+38↑p
push    ebx
push    ecx
push    edx
push    esi
push    es
mov     esi, offset unk_55859C
mov     dh, al
loc_5004E2:                             ; CODE XREF: __init_stack_limits_+5C↑j
add     esp, 20h
pop     esi
pop     ecx
pop     ebx
retn
__init_stack_limits_ endp
sub_5004E9      proc near               ; CODE XREF: TopLevelExceptionFilter+14↓p
push    ebx
push    ecx
push    edx
push    offset LibFileName ; "USER32.DLL"
call    cs:__imp_LoadLibraryA
xor     ebx, ebx
test    eax, eax
jz      short loc_500515
push    offset ProcName ; "GetActiveWindow"
push    eax             ; hModule
call    cs:__imp_GetProcAddress
mov     edx, eax
test    eax, eax
jz      short loc_500515
call    edx
mov     ebx, eax
loc_50017A:                             ; CODE XREF: sub_50012F+1B↑j
pop     edx
pop     ecx
pop     ebx
retn
sub_50012F      endp
sub_50017E      proc near               ; CODE XREF: sub_5001D3+5↓p
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
mov     edx, ds:dwTlsIndex
cmp     edx, 0FFFFFFFFh
jz      short loc_5001CD
push    edx             ; dwTlsIndex
call    cs:__imp_TlsGetValue
test    eax, eax
jz      short loc_5001CD
mov     esi, [eax+0DEh]
mov     eax, [eax+0DAh]
call    __RemoveThreadData_
push    0               ; lpTlsValue
mov     edi, ds:dwTlsIndex
push    edi             ; dwTlsIndex
call    cs:__imp_TlsSetValue
test    esi, esi
jz      short loc_5001CD
test    ebx, ebx
jz      short loc_5001CD
push    esi             ; hObject
call    cs:__imp_CloseHandle
loc_500515:                             ; CODE XREF: sub_5004E9+13↑j
test    ebx, ebx
setnz   al
and     eax, 0FFh
pop     edx
pop     ecx
pop     ebx
retn
sub_5004E9      endp
sub_500523      proc near               ; CODE XREF: TopLevelExceptionFilter+108↓p
push    ecx
push    esi
push    edi
mov     edi, ebx
xor     ebx, ebx
loc_5001CD:                             ; CODE XREF: sub_50017E+10↑j
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_50017E      endp
sub_5001D3      proc near               ; DATA XREF: sub_500201+B7↓o
mov     eax, 1
call    sub_50017E