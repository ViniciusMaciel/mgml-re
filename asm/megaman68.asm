loc_49EEC6:
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 7
mov     ebx, offset unk_55A6B0
add     ebx, eax
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
lea     edx, [ebx+eax]
mov     ebx, ecx
mov     eax, ds:dword_55B86E[ecx*4]
sar     eax, 10h
imul    eax, esi
sar     eax, 0Ch
add     eax, 0A0h
mov     [esp+1Ch+var_1C], eax
mov     eax, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     eax, ds:(dword_55B86E+2)[ecx*4]
sar     eax, 10h
imul    eax, esi
sar     eax, 0Ch
add     eax, 78h ; 'x'
mov     [esp+1Ch+var_1C], eax
mov     eax, [esp+1Ch+var_1C]
mov     [edx+0Ah], ax
lea     ebp, [ecx+1]
mov     eax, ebp
and     eax, 1Fh
mov     ecx, ds:dword_55B86E[eax*4]
sar     ecx, 10h
imul    ecx, esi
sar     ecx, 0Ch
add     ecx, 0A0h
mov     [esp+1Ch+var_1C], ecx
mov     ecx, [esp+1Ch+var_1C]
mov     [edx+10h], cx
mov     ecx, ds:(dword_55B86E+2)[eax*4]
sar     ecx, 10h
imul    ecx, esi
sar     ecx, 0Ch
add     ecx, 78h ; 'x'
mov     [esp+1Ch+var_1C], ecx
mov     ecx, [esp+1Ch+var_1C]
mov     [edx+12h], cx
mov     ecx, ds:dword_55B86E[ebx*4]
sar     ecx, 10h
imul    ecx, edi
sar     ecx, 0Ch
add     ecx, 0A0h
mov     [esp+1Ch+var_1C], ecx
mov     ecx, [esp+1Ch+var_1C]
mov     [edx+18h], cx
mov     ebx, ds:(dword_55B86E+2)[ebx*4]
sar     ebx, 10h
imul    ebx, edi
sar     ebx, 0Ch
add     ebx, 78h ; 'x'
mov     [edx+1Ah], bx
mov     ecx, ds:dword_55B86E[eax*4]
sar     ecx, 10h
imul    ecx, edi
sar     ecx, 0Ch
add     ecx, 0A0h
mov     [edx+20h], cx
mov     eax, ds:(dword_55B86E+2)[eax*4]
sar     eax, 10h
imul    eax, edi
sar     eax, 0Ch
add     eax, 78h ; 'x'
mov     [edx+22h], ax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     ecx, ebp
cmp     ebp, 20h ; ' '
jl      loc_49EEC6
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, offset unk_55B858
add     edx, eax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6

loc_49F01F:
add     esp, 4
jmp     loc_49E2EF
sub_49EBFB endp




sub_49F027 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     al, byte ptr ds:dword_6E23CD+2
test    al, al
jbe     short loc_49F041
cmp     al, 1
jz      loc_49F0DC
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49F041:
xor     esi, esi
jmp     short loc_49F06D

loc_49F045:
push    0
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, offset unk_55B858
mov     ecx, 140h
mov     ebx, 1
mov     edx, ebx
call    sub_4F8864
inc     esi
cmp     esi, 2
jge     short loc_49F0CA

loc_49F06D:
xor     ecx, ecx

loc_49F06F:
mov     edx, esi
shl     edx, 2
sub     edx, esi
shl     edx, 2
add     edx, esi
shl     edx, 7
mov     ebx, offset unk_55A6B0
add     ebx, edx
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
add     edx, ecx
shl     edx, 2
add     edx, ebx
mov     eax, edx
call    sub_4F8817
mov     dword ptr [edx], 8000000h
mov     dword ptr [edx+4], 3A000000h
mov     dword ptr [edx+0Ch], 0
mov     dword ptr [edx+14h], 303030h
mov     dword ptr [edx+1Ch], 303030h
inc     ecx
cmp     ecx, 2
jl      short loc_49F06F
jmp     loc_49F045

loc_49F0CA:
mov     byte ptr ds:dword_6E23CD+3, 3Ch ; '<'
inc     byte ptr ds:dword_6E23CD+2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49F0DC:
xor     edx, edx
mov     ds:dword_77E738, edx
mov     eax, ds:dword_6E23CD
sar     eax, 18h
mov     edx, 3Ch ; '<'
sub     edx, eax
mov     esi, edx
shl     esi, 2
sub     esi, edx
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 7
mov     edx, offset unk_55A6B0
add     edx, eax
mov     word ptr [edx+8], 0
mov     [edx+0Ah], si
mov     word ptr [edx+10h], 140h
mov     [edx+12h], si
mov     word ptr [edx+18h], 0
mov     word ptr [edx+1Ah], 0
mov     word ptr [edx+20h], 140h
mov     word ptr [edx+22h], 0
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 7
add     eax, offset unk_55A6B0
lea     edx, [eax+34h]
mov     word ptr [edx+8], 0
mov     eax, 0F0h
sub     eax, esi
mov     [edx+0Ah], ax
mov     word ptr [edx+10h], 140h
mov     [edx+12h], ax
mov     word ptr [edx+18h], 0
mov     word ptr [edx+1Ah], 0F0h
mov     word ptr [edx+20h], 140h
mov     word ptr [edx+22h], 0F0h
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, offset unk_55B858
add     edx, eax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     ah, byte ptr ds:dword_6E23CD+3
dec     ah
mov     byte ptr ds:dword_6E23CD+3, ah
jnz     short loc_49F20A
mov     byte ptr ds:dword_6E23C9+3, ah
mov     byte ptr ds:dword_6E23CD+2, ah
mov     ds:word_6E23D4, 1
mov     ds:word_6E23DA, 0FFh
inc     byte ptr ds:dword_6E23CD+1

loc_49F20A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49F027 endp




sub_49F20F proc near

var_24= qword ptr -24h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    ebp
sub     esp, 10h
mov     al, byte ptr ds:dword_6E23CD+2
test    al, al
jbe     short loc_49F229
cmp     al, 1
jz      short loc_49F297
jmp     loc_49F392

loc_49F229:
xor     esi, esi

loc_49F22B:
mov     eax, esi
shl     eax, 4
add     eax, offset unk_55A690
mov     dword ptr [eax], 3000000h
mov     dword ptr [eax+4], 620F0F0Fh
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0F00140h
push    0
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, offset unk_55B858
mov     ecx, 140h
mov     ebx, 1
mov     edx, ebx
call    sub_4F8864
inc     esi
cmp     esi, 2
jl      short loc_49F22B
xor     ebp, ebp
mov     ds:dword_55B8FC, ebp
inc     byte ptr ds:dword_6E23CD+2
call    cs:__imp_GetTickCount
mov     ds:dword_55B8F4, eax
jmp     loc_49F392

loc_49F297:
call    cs:__imp_GetTickCount
mov     edx, eax
mov     ds:dword_55B8F8, eax
sub     eax, ds:dword_55B8F4
xor     ebx, ebx
mov     dword ptr [esp+24h+var_24+4], ebx
mov     dword ptr [esp+24h+var_24], eax
fild    [esp+24h+var_24]
xor     eax, eax
mov     al, ds:byte_77EAC1
mov     [esp+24h+var_18], eax
fild    word ptr [esp+24h+var_18]
fmul    ds:dbl_50A2FC
fdivp   st(1), st
fstp    ds:flt_55B8F0
mov     ds:dword_55B8F4, edx
fld     ds:flt_55B8F0
fmul    ds:flt_50A304
call    __CHP
fistp   [esp+24h+var_1C]
mov     al, byte ptr [esp+24h+var_1C]
mov     bl, al
xor     esi, esi
mov     ds:dword_77E738, esi
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 4
mov     edx, offset unk_55A690
add     edx, eax
mov     [edx+6], bl
mov     al, bl
mov     [edx+5], al
mov     [edx+4], al
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, offset unk_55B858
add     edx, eax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
fld     ds:flt_55B8F0
fadd    ds:dword_55B8FC
fstp    ds:dword_55B8FC
cmp     ds:dword_55B8FC, 41F00000h
jl      short loc_49F392
xor     ah, ah
mov     byte ptr ds:dword_6E23C9+3, ah
xor     dl, dl
mov     byte ptr ds:dword_6E23CD+2, dl
mov     ds:word_6E23D4, 1
mov     ds:word_6E23DA, 0FFh
inc     byte ptr ds:dword_6E23CD+1

loc_49F392:
add     esp, 10h
jmp     loc_49E714
sub_49F20F endp




sub_49F39A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
xor     edi, edi
jmp     short loc_49F3AD

loc_49F3A3:
inc     edi
cmp     edi, 2
jge     loc_49E2F0

loc_49F3AD:
xor     edx, edx
jmp     short loc_49F3E9

loc_49F3B1:
mov     ecx, 77h ; 'w'
lea     esi, [edx-5]

loc_49F3B9:
mov     [eax+16h], si
mov     bl, cl
add     bl, 78h ; 'x'
cmp     esi, 4
jnz     short loc_49F418
mov     byte ptr [eax+0Ch], 0
mov     [eax+0Dh], cl
mov     byte ptr [eax+14h], 3Fh ; '?'
mov     [eax+15h], cl
mov     byte ptr [eax+1Ch], 0
mov     [eax+1Dh], bl
mov     byte ptr [eax+24h], 3Fh ; '?'

loc_49F3E0:
mov     [eax+25h], bl
inc     edx
cmp     edx, 0Ah
jge     short loc_49F3A3

loc_49F3E9:
mov     eax, edi
shl     eax, 3
add     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 4
mov     esi, offset unk_55B3F8
add     esi, eax
mov     eax, edx
shl     eax, 3
mov     ecx, eax
shl     eax, 3
sub     eax, ecx
add     eax, esi
cmp     edx, 5
jge     short loc_49F3B1
xor     ecx, ecx
mov     esi, edx
jmp     short loc_49F3B9

loc_49F418:
mov     byte ptr [eax+0Ch], 0
mov     [eax+0Dh], cl
mov     byte ptr [eax+14h], 40h ; '@'
mov     [eax+15h], cl
mov     byte ptr [eax+1Ch], 0
mov     [eax+1Dh], bl
mov     byte ptr [eax+24h], 40h ; '@'
jmp     short loc_49F3E0
sub_49F39A endp




sub_49F433 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= word ptr -1Ch
var_18= word ptr -18h
var_14= word ptr -14h
var_10= word ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 18h
mov     [esp+24h+var_1C], ax
mov     [esp+24h+var_14], dx
mov     [esp+24h+var_10], bx
mov     [esp+24h+var_18], cx
xor     ebx, ebx

loc_49F44F:
mov     eax, ds:(off_52CBBC+2)[ebx*4]
sar     eax, 10h
mov     edi, [esp+6]
sar     edi, 10h
sub     eax, edi
mov     [esp+24h+var_24], eax
mov     ebp, ds:dword_52CBC0[ebx*4]
sar     ebp, 10h
mov     eax, [esp+0Eh]
sar     eax, 10h
mov     [esp+24h+var_20], eax
sub     ebp, eax
mov     edx, [esp+12h]
sar     edx, 10h
mov     eax, edx
call    sub_4EF003
mov     esi, [esp+24h+var_24]
imul    esi, eax
mov     eax, edx
call    sub_4EF008
imul    eax, ebp
sub     esi, eax
mov     eax, esi
sar     eax, 8
mov     esi, [esp+0Ah]
sar     esi, 10h
imul    eax, esi
sar     eax, 10h
add     edi, eax
mov     ds:word_55B3B0[ebx*4], di
mov     eax, edx
call    sub_4EF008
mov     edi, [esp+24h+var_24]
imul    edi, eax
mov     eax, edx
call    sub_4EF003
imul    eax, ebp
add     eax, edi
sar     eax, 8
imul    eax, esi
sar     eax, 10h
add     eax, [esp+24h+var_20]
mov     ds:word_55B3B2[ebx*4], ax
inc     ebx
cmp     ebx, 12h
jl      loc_49F44F
add     esp, 18h
pop     ebp
pop     edi
pop     esi
retn
sub_49F433 endp



; Attributes: noreturn

sub_49F4F7 proc near
push    ecx
push    edx
mov     edx, offset dword_77E784
mov     ds:byte_77EAC1, 2
xor     ecx, ecx
mov     ds:dword_77E784, ecx

loc_49F50D:
movsx   ecx, byte ptr [edx]
mov     eax, edx
call    ds:funcs_49F512[ecx*4]
call    sub_4DE4B5
call    sub_4A02C0
call    sub_4A02E2
mov     eax, 1
call    sub_4EEDA4
jmp     short loc_49F50D
sub_49F4F7 endp




sub_49F534 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+82h]
and     al, 1
movsx   ecx, al
mov     dword ptr [edx+4], 0
mov     dword ptr [edx+8], 0
mov     word ptr [edx+68h], 0FFFFh
mov     word ptr [edx+6Ah], 0FFFFh
mov     word ptr [edx+6Ch], 0FFFFh
mov     byte ptr [edx+81h], 0
mov     byte ptr [edx+83h], 0
xor     ah, ah
mov     byte ptr ds:dword_77EA5A+2, ah
mov     eax, 1
call    sub_4DC4A7
test    ecx, ecx
jnz     short loc_49F58E
call    sub_42BDB2
jmp     short loc_49F593

loc_49F58E:
call    sub_42B672

loc_49F593:
mov     eax, ecx
call    sub_4A920E
mov     eax, ecx
call    sub_47E7B2
mov     eax, ecx
call    sub_4A7E97
mov     eax, ecx
call    sub_436B00
mov     eax, ecx
call    sub_4A0BC3
call    sub_4A62BD
call    sub_4D8F07
mov     byte ptr [edx], 1
mov     byte ptr [edx+1], 0
xor     eax, eax

loc_49F5C9:
mov     ecx, eax
mov     dword ptr [edx+ecx*4+174h], 0
inc     eax
cmp     eax, 10h
jl      short loc_49F5C9
call    sub_478811
mov     eax, 1FEh
call    sub_47E8B8
mov     eax, 38Ah
call    sub_47E8B8
mov     eax, 3C7h
call    sub_47E8B8
pop     edx
pop     ecx
retn
sub_49F534 endp




sub_49F602 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     edx, offset dword_77EA48
mov     esi, offset byte_5F8364
mov     al, [eax+1]
test    al, al
jbe     short loc_49F61F
cmp     al, 1
jz      short loc_49F662
jmp     short loc_49F667

loc_49F61F:
mov     eax, 527h
call    sub_47E8B8
test    byte ptr [ecx+82h], 1
jnz     short loc_49F667
cmp     byte ptr [ecx+5Bh], 0
jnz     short loc_49F667
mov     eax, 510h
call    sub_47E8B8
mov     eax, 522h
call    sub_47E8B8
mov     eax, 446h
call    sub_47E8B8
mov     eax, 448h
call    sub_47E8B8
jmp     short loc_49F667

loc_49F662:
call    sub_4A03B0

loc_49F667:
cmp     byte ptr [edx+15h], 0
jnz     short loc_49F68B
mov     al, [edx+16h]
mov     [ecx+50h], al
mov     al, [edx+17h]
mov     [ecx+51h], al
mov     al, [ecx+53h]
mov     [ecx+52h], al
mov     ebx, 1
mov     eax, esi
call    sub_49FAAD

loc_49F68B:
call    sub_4DBAEF
and     byte ptr [ecx+82h], 0FEh
mov     byte ptr [ecx], 2
mov     byte ptr [ecx+1], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49F602 endp




sub_49F6A3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_77EA48
mov     al, [eax+1]
test    al, al
jbe     short loc_49F6BE
cmp     al, 1
jz      short loc_49F6EB
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49F6BE:
cmp     byte ptr ds:dword_77EA5A+3, 0
jnz     short loc_49F6E6
mov     al, ds:byte_77EA5F
mov     [ecx+51h], al
mov     al, [ecx+53h]
mov     [ecx+52h], al
mov     ebx, 1
mov     edx, esi
mov     eax, offset byte_5F8364
call    sub_49FAAD

loc_49F6E6:
call    sub_4A03B0

loc_49F6EB:
call    sub_4299F3
call    sub_4DBBD8
mov     byte ptr [esi+14h], 0
mov     byte ptr [ecx], 3
mov     byte ptr [ecx+1], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49F6A3 endp

db 8Bh, 0C0h
jpt_49F755 dd offset loc_49F75C ; jump table for switch statement
dd offset loc_49F7A0
dd offset loc_49F7B1
dd offset loc_49F94B
dd offset loc_49F99B
dd offset loc_49F9A9
dd offset loc_49F9B9
dd offset loc_49F9FF



sub_49F727 proc near

var_1C= dword ptr -1Ch
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
mov     esi, offset dword_77EA48
mov     edi, offset byte_5F8364
call    sub_47E830
call    sub_4A632D
mov     al, [ecx+1]
cmp     al, 7           ; switch 8 cases
ja      def_49F755      ; jumptable 0049F755 default case
and     eax, 0FFh
jmp     jpt_49F755[eax*4] ; switch jump

loc_49F75C:             ; jumptable 0049F755 case 0
cmp     ds:word_6E23D6, 0
jnz     def_49F755      ; jumptable 0049F755 default case
cmp     byte ptr [esi+18h], 0FFh
jnz     short loc_49F776
add     byte ptr [ecx+1], 2
jmp     short loc_49F783

loc_49F776:
xor     eax, eax
mov     al, [esi+18h]
call    sub_49E0D7
inc     byte ptr [ecx+1]

loc_49F783:
call    sub_49FA14
mov     edi, offset dword_77E9F8
mov     esi, offset dword_77E9E8
movsd
movsd
movsd
movsd
call    sub_4D8875
jmp     def_49F755      ; jumptable 0049F755 default case

loc_49F7A0:             ; jumptable 0049F755 case 1
call    sub_49FA14
mov     eax, ecx
call    sub_4A0394
jmp     def_49F755      ; jumptable 0049F755 default case

loc_49F7B1:             ; jumptable 0049F755 case 2
cmp     byte ptr ds:dword_77EA5A+2, 0
jz      loc_49F8AB
mov     eax, [esi+11h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     loc_49F89F
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_49F83A
mov     ax, [esi+8]
mov     dx, [edi+14h]
sub     eax, edx
mov     word ptr [esp+1Ch+var_1C], ax
xor     ebx, ebx
mov     word ptr [esp+1Ch+var_1C+2], bx
mov     ax, [esi+0Ch]
mov     dx, [edi+18h]
sub     eax, edx
mov     [esp+1Ch+var_18], ax
mov     eax, [esp-2]
sar     eax, 10h
add     ds:dword_77E9E8, eax
mov     eax, [esp+1Ch+var_1C]
sar     eax, 10h
add     ds:dword_77E9EC, eax
mov     eax, [esp+1Ch+var_1C+2]
sar     eax, 10h
add     ds:dword_77E9F0, eax
mov     eax, esp
call    sub_42A924
mov     edx, 80h
mov     eax, 200h
call    sub_4DC979
mov     edx, esp
jmp     short loc_49F83C

loc_49F83A:
xor     edx, edx

loc_49F83C:
mov     eax, 1FEh
call    sub_4DCD77
mov     al, [esi+17h]
mov     [ecx+51h], al
mov     al, [ecx+53h]
mov     [ecx+52h], al
xor     ebx, ebx
mov     edx, esi
mov     eax, edi
call    sub_49FAAD
call    sub_4DBBD8
mov     byte ptr [esi+14h], 0

loc_49F866:
call    sub_49FA14
mov     dh, [ecx+81h]
test    dh, dh
jz      def_49F755      ; jumptable 0049F755 default case
cmp     dh, 1
jnz     short loc_49F884
mov     dword ptr [ecx], 5

loc_49F884:
cmp     byte ptr [ecx+81h], 2
jnz     short loc_49F893
mov     dword ptr [ecx], 6

loc_49F893:
mov     byte ptr [ecx+81h], 0
jmp     def_49F755      ; jumptable 0049F755 default case

loc_49F89F:
inc     byte ptr [ecx+1]
or      byte ptr [edi+0BDh], 40h
jmp     short loc_49F866

loc_49F8AB:
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_49F866
cmp     ds:word_6E23D6, 0
jnz     short loc_49F866
test    byte ptr ds:dword_55BD7C+3, 0Fh
jnz     short loc_49F866
cmp     ds:word_5F83D2, 0
jl      short loc_49F866
cmp     ds:byte_5F8421, 0
jnz     short loc_49F866
mov     bh, byte ptr ds:dword_5F836C
cmp     bh, 1
jnz     short loc_49F866
mov     al, byte ptr ds:word_5708DE
test    al, 8
jnz     short loc_49F8F7
cmp     ds:byte_5708D8, 0FFh
jnz     short loc_49F902

loc_49F8F7:
mov     dword ptr [ecx], 4
jmp     def_49F755      ; jumptable 0049F755 default case

loc_49F902:
test    al, bh
jz      loc_49F866
cmp     byte ptr [ecx+83h], 0
jnz     loc_49F866
cmp     ds:dword_511D90, 0
jz      short loc_49F92B
mov     dword ptr [ecx], 7
jmp     def_49F755      ; jumptable 0049F755 default case

loc_49F92B:
mov     bl, [ecx+50h]
cmp     bl, 2
jle     loc_49F866
cmp     bl, 1Ah
jz      loc_49F866
mov     dword ptr [ecx], 8
jmp     def_49F755      ; jumptable 0049F755 default case

loc_49F94B:             ; jumptable 0049F755 case 3
call    sub_49FA14
call    sub_4D87EE
mov     bh, ds:byte_77EA61
cmp     bh, 0FFh
jnz     short loc_49F969
add     byte ptr [ecx+1], 2
jmp     def_49F755      ; jumptable 0049F755 default case

loc_49F969:
cmp     bh, 10h
jnb     short loc_49F973
inc     byte ptr [ecx+1]
jmp     short loc_49F98C

loc_49F973:
or      ds:byte_5F836A, 3
xor     dl, dl
mov     ds:byte_5F8474, dl
mov     ds:byte_5F8475, dl
add     byte ptr [ecx+1], 2

loc_49F98C:
xor     eax, eax
mov     al, [esi+19h]
call    sub_49E0D7
jmp     def_49F755      ; jumptable 0049F755 default case

loc_49F99B:             ; jumptable 0049F755 case 4
call    sub_49FA14
mov     eax, ecx
call    sub_4A03A2
jmp     short def_49F755 ; jumptable 0049F755 default case

loc_49F9A9:             ; jumptable 0049F755 case 5
call    sub_49FA14
inc     byte ptr ds:dword_77EA5A+2
inc     byte ptr [ecx+1]
jmp     short def_49F755 ; jumptable 0049F755 default case

loc_49F9B9:             ; jumptable 0049F755 case 6
cmp     byte ptr ds:dword_77EA5A+2, 3
jnz     short loc_49F9F8
mov     al, [ecx+50h]
cmp     al, ds:byte_77EA5E
jz      short loc_49F9D6
mov     byte ptr [ecx], 1
mov     byte ptr [ecx+1], 1
jmp     short loc_49F9DD

loc_49F9D6:
mov     byte ptr [ecx], 2
mov     byte ptr [ecx+1], 0

loc_49F9DD:
call    sub_4A7DD4
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
call    sub_4A62BD
jmp     short def_49F755 ; jumptable 0049F755 default case

loc_49F9F8:
call    sub_49FA14
jmp     short def_49F755 ; jumptable 0049F755 default case

loc_49F9FF:             ; jumptable 0049F755 case 7
call    sub_49FA14
mov     byte ptr [ecx], 9
mov     byte ptr [ecx+1], 0

def_49F755:             ; jumptable 0049F755 default case
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49F727 endp




sub_49FA14 proc near
push    ebx
push    edx
call    sub_4A8D29
call    sub_4A9178
call    sub_4A9438
call    sub_4E16EC
call    sub_4358E8
call    sub_4A8FE9
call    sub_4A8F93
call    sub_4A907F
call    sub_4A90DD
call    sub_4A91C3
call    sub_43270A
call    sub_4A959B
call    sub_4A903C
call    sub_4A912E
call    sub_429C13
call    sub_4E0405
call    sub_4EECAA
call    sub_436BA0
call    sub_4E7F36
call    sub_4E7ABD
call    sub_4EA960
call    sub_4EB527
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Eh
mov     ebx, offset unk_7764A4
add     ebx, eax
lea     edx, [ebx+3FFCh]
mov     eax, ds:dword_77EA74
add     eax, 80h
call    sub_4F87AF
pop     edx
pop     ebx
retn
sub_49FA14 endp




sub_49FAAD proc near
push    ecx
push    esi
push    edi
mov     cx, [edx+8]
mov     [eax+2Ch], cx
mov     [eax+14h], cx
mov     cx, [edx+0Ah]
mov     [eax+2Eh], cx
mov     [eax+16h], cx
mov     cx, [edx+0Ch]
mov     [eax+30h], cx
mov     [eax+18h], cx
mov     ecx, [edx+6]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+34h], ecx
mov     [eax+1Ch], ecx
mov     ecx, [edx+8]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+38h], ecx
mov     [eax+20h], ecx
mov     ecx, [edx+0Ah]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+3Ch], ecx
mov     [eax+24h], ecx
mov     dx, [edx+12h]
mov     [eax+5Eh], dx
mov     [eax+56h], dx
test    ebx, ebx
jz      short loc_49FB1B
mov     byte ptr [eax+75h], 0
mov     dl, [eax+75h]
mov     [eax+74h], dl

loc_49FB1B:
cmp     byte ptr [eax+8], 3
jnz     short loc_49FB44
lea     edi, [eax+538h]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [eax+528h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+540h]
lea     esi, [eax+54h]
movsd
movsd

loc_49FB44:
pop     edi
pop     esi
pop     ecx
retn
sub_49FAAD endp

db 8Dh, 40h, 0
jpt_49FB75 dd offset loc_49FB7C ; jump table for switch statement
dd offset loc_49FBD1
dd offset loc_49FBE5
dd offset loc_49FBF2
dd offset loc_49FC0B



sub_49FB5F proc near
push    edx
push    esi
push    edi
push    ebp
mov     edx, eax
mov     al, [eax+1]
cmp     al, 4           ; switch 5 cases
ja      def_49FB75      ; jumptable 0049FB75 default case
and     eax, 0FFh
jmp     jpt_49FB75[eax*4] ; switch jump

loc_49FB7C:             ; jumptable 0049FB75 case 0
cmp     ds:byte_77EAC6, 0
jz      def_49FB75      ; jumptable 0049FB75 default case
mov     ebp, 1
mov     ds:dword_77E738, ebp
mov     ds:dword_77E720, ebp
call    sub_4A0E35
call    sub_4A056E
mov     eax, 10h
call    sub_4D8E2B
mov     eax, 16h
call    sub_4D8E2B
mov     eax, 17h
call    sub_4D8E2B
xor     eax, eax
call    sub_49E0D7

loc_49FBC9:
inc     byte ptr [edx+1]
pop     ebp
pop     edi
pop     esi
pop     edx
retn

loc_49FBD1:             ; jumptable 0049FB75 case 1
xor     edi, edi
mov     ds:dword_77E738, edi
call    sub_4E24E6
call    sub_4D8EB1
jmp     short loc_49FBC9

loc_49FBE5:             ; jumptable 0049FB75 case 2
call    sub_4E2519
add     [edx+1], al
pop     ebp
pop     edi
pop     esi
pop     edx
retn

loc_49FBF2:             ; jumptable 0049FB75 case 3
mov     ds:dword_77E738, 1
xor     esi, esi
mov     ds:dword_77E720, esi
call    sub_4DBD14
jmp     short loc_49FBC9

loc_49FC0B:             ; jumptable 0049FB75 case 4
call    sub_42C353
test    eax, eax
jnz     short def_49FB75 ; jumptable 0049FB75 default case
mov     ds:dword_77E738, eax
mov     eax, offset byte_5F8364
call    sub_4E4C67
and     ds:byte_5F8421, 0BFh
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     byte ptr [edx], 3
mov     byte ptr [edx+1], 1

def_49FB75:             ; jumptable 0049FB75 default case
pop     ebp
pop     edi
pop     esi
pop     edx
retn
sub_49FB5F endp

db 8Bh, 0C0h
jpt_49FC7A dd offset loc_49FC81 ; jump table for switch statement
dd offset loc_49FCB0
dd offset loc_49FCC1
dd offset loc_49FD2F
dd offset loc_49FD48
dd offset loc_49FD63
dd offset loc_49FD94
dd offset loc_49FDB6



sub_49FC67 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+1]
cmp     al, 7           ; switch 8 cases
ja      def_49FC7A      ; jumptable 0049FC7A default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_49FC7A[ecx*4] ; switch jump

loc_49FC81:             ; jumptable 0049FC7A case 0
or      ds:byte_5F8421, 40h
cmp     ds:byte_77EAB8, 0
jnz     short loc_49FCA8
mov     eax, 17h
call    sub_49E0D7
mov     eax, 10h
call    sub_4D9040
inc     byte ptr [edx+1]

loc_49FCA8:
call    sub_49FA14
pop     edx
pop     ecx
retn

loc_49FCB0:             ; jumptable 0049FC7A case 1
cmp     ds:dword_77E738, 0
jz      short loc_49FCA8
inc     al
mov     [edx+1], al
pop     edx
pop     ecx
retn

loc_49FCC1:             ; jumptable 0049FC7A case 2
cmp     ds:byte_77EAB8, 0
jnz     def_49FC7A      ; jumptable 0049FC7A default case
call    sub_4D8E21
call    sub_4D8ED6
call    sub_4A0E35
call    sub_4A056E
cmp     ds:byte_77E7D4, 3
jnz     short loc_49FCF4
cmp     byte ptr ds:dword_77E7D5, 6
jz      short loc_49FD18

loc_49FCF4:
cmp     ds:byte_77E7D4, 13h
jnz     short loc_49FD06
cmp     byte ptr ds:dword_77E7D5, 0Bh
jz      short loc_49FD18

loc_49FD06:
cmp     ds:byte_77E7D4, 1Bh
jnz     short loc_49FD1F
cmp     byte ptr ds:dword_77E7D5, 6
jnz     short loc_49FD1F

loc_49FD18:
mov     eax, 0C0h
jmp     short loc_49FD24

loc_49FD1F:
mov     eax, 0BFh

loc_49FD24:
call    sub_42BEB2

loc_49FD29:
inc     byte ptr [edx+1]
pop     edx
pop     ecx
retn

loc_49FD2F:             ; jumptable 0049FC7A case 3
call    sub_42C353
test    eax, eax
jnz     def_49FC7A      ; jumptable 0049FC7A default case
call    sub_4E5041
call    sub_4A764C
jmp     short loc_49FD29

loc_49FD48:             ; jumptable 0049FC7A case 4
cmp     ds:word_6E23D6, 0
jnz     def_49FC7A      ; jumptable 0049FC7A default case
mov     eax, 1
call    sub_49E0D7
inc     byte ptr [edx+1]

loc_49FD63:             ; jumptable 0049FC7A case 5
call    sub_4E5066
test    eax, eax
jz      def_49FC7A      ; jumptable 0049FC7A default case
jle     short loc_49FD8D
call    sub_49FE01
mov     eax, 10h
call    sub_4D9040
mov     eax, 15h
call    sub_49E0D7
jmp     short loc_49FD29

loc_49FD8D:
mov     byte ptr [edx+1], 2
pop     edx
pop     ecx
retn

loc_49FD94:             ; jumptable 0049FC7A case 6
cmp     ds:byte_77EAB8, 0
jnz     short def_49FC7A ; jumptable 0049FC7A default case
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     eax, 0C3h
jmp     loc_49FD24

loc_49FDB6:             ; jumptable 0049FC7A case 7
cmp     ds:word_6E23D6, 0
jnz     short def_49FC7A ; jumptable 0049FC7A default case
call    sub_42C353
test    eax, eax
jnz     short def_49FC7A ; jumptable 0049FC7A default case
and     ds:byte_5F8421, 0BFh
call    sub_4299F3
cmp     byte ptr ds:dword_77EA5A+2, 0
jnz     short loc_49FDF7
mov     eax, 1
call    sub_49E0D7
mov     byte ptr [edx], 3
mov     byte ptr [edx+1], 1
call    sub_4D8875
pop     edx
pop     ecx
retn

loc_49FDF7:
mov     byte ptr [edx], 3
mov     byte ptr [edx+1], 6

def_49FC7A:             ; jumptable 0049FC7A default case
pop     edx
pop     ecx
retn
sub_49FC67 endp




sub_49FE01 proc near
push    ecx
push    edx
push    esi
cmp     eax, 2
jnz     short loc_49FE5E
mov     byte ptr ds:dword_77EA5A+2, 3
mov     ds:byte_77EA5E, 18h
xor     dh, dh
mov     ds:byte_77EA5F, dh
xor     dl, dl
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, 0FFFFh
xor     ecx, ecx
mov     word ptr ds:dword_77EA52+2, cx
xor     esi, esi
mov     word ptr ds:dword_77EA5A, si
mov     byte ptr ds:dword_77EA5A+3, dh
mov     ds:byte_77EA60, 0FFh
mov     byte ptr ds:word_77E7FC+1, 1Bh
mov     ds:byte_77E7FE, 1

loc_49FE5E:
pop     esi
pop     edx
pop     ecx
retn
sub_49FE01 endp




sub_49FE62 proc near
push    edx
mov     edx, eax
mov     al, [eax+1]
test    al, al
jbe     short loc_49FE72
cmp     al, 1
jz      short loc_49FE81
jmp     short loc_49FE88

loc_49FE72:
mov     eax, 1
call    sub_4A86B8
add     [edx+1], al
jmp     short loc_49FE88

loc_49FE81:
mov     byte ptr [edx], 3
mov     byte ptr [edx+1], 2

loc_49FE88:
call    sub_49FA14
pop     edx
retn
sub_49FE62 endp




sub_49FE8F proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+1]
test    al, al
jbe     short loc_49FEA6
cmp     al, 1
jz      short loc_49FEE7
pop     edx
pop     ecx
retn

loc_49FEA6:
call    sub_436DE9
or      ds:byte_5F8421, 40h
call    sub_4A0E35
call    sub_4A056E
xor     eax, eax
call    sub_49E0D7
mov     eax, 10h
call    sub_4D8E2B
mov     eax, 16h
call    sub_4D8E2B
mov     eax, 17h
call    sub_4D8E2B
inc     byte ptr [edx+1]
pop     edx
pop     ecx
retn

loc_49FEE7:
call    sub_436DFC
test    byte ptr ds:word_5708DE, 1
jnz     short loc_49FEFE
test    byte ptr ds:word_5708DE+1, 10h
jz      short loc_49FF22

loc_49FEFE:
mov     eax, ecx
call    sub_4E4C67
and     byte ptr [ecx+0BDh], 0BFh
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     byte ptr [edx], 3
mov     byte ptr [edx+1], 1

loc_49FF22:
pop     edx
pop     ecx
retn
sub_49FE8F endp

db 8Bh, 0C0h
jpt_49FF4E dd offset loc_49FF55 ; jump table for switch statement
dd offset loc_49FFA7
dd offset loc_49FFB7
dd offset loc_49FFD8
dd offset loc_49FFDF



sub_49FF3B proc near
push    edx
mov     edx, eax
mov     al, [eax+1]
cmp     al, 4           ; switch 5 cases
ja      def_49FF4E      ; jumptable 0049FF4E default case
and     eax, 0FFh
jmp     jpt_49FF4E[eax*4] ; switch jump

loc_49FF55:             ; jumptable 0049FF4E case 0
or      ds:byte_5F8421, 40h
call    sub_4A0E35
call    sub_4A056E
xor     eax, eax
call    sub_49E0D7
mov     eax, 10h
call    sub_4D8E2B
mov     eax, 16h
call    sub_4D8E2B
mov     eax, 17h
call    sub_4D8E2B
cmp     byte ptr [edx+52h], 9
jge     short loc_49FF98
mov     eax, 0C5h
jmp     short loc_49FF9D

loc_49FF98:
mov     eax, 0C7h

loc_49FF9D:
call    sub_42BEB2

loc_49FFA2:
inc     byte ptr [edx+1]
pop     edx
retn

loc_49FFA7:             ; jumptable 0049FF4E case 1
call    sub_42C353
test    eax, eax
jnz     short def_49FF4E ; jumptable 0049FF4E default case
call    sub_4E4D33
jmp     short loc_49FFA2

loc_49FFB7:             ; jumptable 0049FF4E case 2
call    sub_4E4D5E
test    eax, eax
jz      short def_49FF4E ; jumptable 0049FF4E default case
and     ds:byte_5F8421, 0BFh
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
jmp     short loc_49FFA2

loc_49FFD8:             ; jumptable 0049FF4E case 3
mov     eax, 0CAh
jmp     short loc_49FF9D

loc_49FFDF:             ; jumptable 0049FF4E case 4
call    sub_42C353
test    eax, eax
jnz     short def_49FF4E ; jumptable 0049FF4E default case
mov     eax, offset byte_5F8364
call    sub_4E4C67
mov     byte ptr [edx], 3
mov     byte ptr [edx+1], 1

def_49FF4E:             ; jumptable 0049FF4E default case
pop     edx
retn
sub_49FF3B endp

jpt_4A002C dd offset loc_4A0033 ; jump table for switch statement
dd offset loc_4A0056
dd offset loc_4A0098
dd offset loc_4A00F6
dd offset loc_4A0106
dd offset loc_4A0131
dd offset loc_4A013B



sub_4A0017 proc near
push    ecx
push    edx
push    esi
mov     edx, eax
mov     al, [eax+1]
cmp     al, 6           ; switch 7 cases
ja      def_4A002C      ; jumptable 004A002C default case
and     eax, 0FFh
jmp     jpt_4A002C[eax*4] ; switch jump

loc_4A0033:             ; jumptable 004A002C case 0
mov     ds:byte_77EAC1, 4
call    sub_49FA14
mov     eax, 0Bh
call    sub_49E0D7
inc     byte ptr [edx+1]
mov     word ptr [edx+8], 78h ; 'x'
pop     esi
pop     edx
pop     ecx
retn

loc_4A0056:             ; jumptable 004A002C case 1
call    sub_49FA14
call    sub_4A0479
mov     si, [edx+8]
sub     esi, 2
mov     [edx+8], si
test    si, si
jge     short loc_4A0076
mov     word ptr [edx+8], 0

loc_4A0076:
cmp     ds:word_6E23D6, 0
jnz     def_4A002C      ; jumptable 004A002C default case
cmp     ds:byte_77EAB8, 0
jnz     def_4A002C      ; jumptable 004A002C default case
inc     byte ptr [edx+1]
pop     esi
pop     edx
pop     ecx
retn

loc_4A0098:             ; jumptable 004A002C case 2
mov     ds:byte_77EAC1, 2
xor     ecx, ecx
mov     ds:word_6E23D4, cx
call    sub_4A0E35
call    sub_4A62BD
call    sub_4A056E
call    sub_4D8EB1
call    sub_4D8E21
call    sub_4D8ED6
mov     eax, 2
call    sub_42BEB2
call    nullsub_10
inc     byte ptr [edx+1]
mov     word ptr [edx+6], 96h
mov     eax, 8001003Dh
call    sub_4D89E4
mov     eax, 2

loc_4A00ED:
call    sub_49E0D7
pop     esi
pop     edx
pop     ecx
retn

loc_4A00F6:             ; jumptable 004A002C case 3
call    sub_4A03C9
mov     eax, edx
call    sub_4A0394
pop     esi
pop     edx
pop     ecx
retn

loc_4A0106:             ; jumptable 004A002C case 4
call    sub_4A03C9
test    byte ptr ds:word_5708DE, 8
jnz     short loc_4A011D
call    sub_4D8EFD
test    eax, eax
jnz     short def_4A002C ; jumptable 004A002C default case

loc_4A011D:
inc     byte ptr [edx+1]
mov     eax, 10h
call    sub_4D9040
mov     eax, 0Ah
jmp     short loc_4A00ED

loc_4A0131:             ; jumptable 004A002C case 5
call    sub_4A03C9
jmp     loc_4A0076

loc_4A013B:             ; jumptable 004A002C case 6
mov     eax, 1FEh
call    sub_47EA91
mov     word ptr ds:dword_6DD9BC, 1
mov     eax, offset sub_4378C0
call    sub_4EEDCA

def_4A002C:             ; jumptable 004A002C default case
pop     esi
pop     edx
pop     ecx
retn
sub_4A0017 endp

db 8Dh, 40h, 0
jpt_4A0190 dd offset loc_4A0197 ; jump table for switch statement
dd offset loc_4A01BA
dd offset loc_4A01FC
dd offset loc_4A025A
dd offset loc_4A026A
dd offset loc_4A0295
dd offset loc_4A029F



sub_4A017B proc near
push    ecx
push    edx
push    esi
mov     edx, eax
mov     al, [eax+1]
cmp     al, 6           ; switch 7 cases
ja      def_4A0190      ; jumptable 004A0190 default case
and     eax, 0FFh
jmp     jpt_4A0190[eax*4] ; switch jump

loc_4A0197:             ; jumptable 004A0190 case 0
mov     ds:byte_77EAC1, 4
call    sub_49FA14
mov     eax, 0Fh
call    sub_49E0D7
inc     byte ptr [edx+1]
mov     word ptr [edx+8], 78h ; 'x'
pop     esi
pop     edx
pop     ecx
retn

loc_4A01BA:             ; jumptable 004A0190 case 1
call    sub_49FA14
call    sub_4A0479
mov     si, [edx+8]
sub     esi, 2
mov     [edx+8], si
test    si, si
jge     short loc_4A01DA
mov     word ptr [edx+8], 0

loc_4A01DA:
cmp     ds:word_6E23D6, 0
jnz     def_4A0190      ; jumptable 004A0190 default case
cmp     ds:byte_77EAB8, 0
jnz     def_4A0190      ; jumptable 004A0190 default case
inc     byte ptr [edx+1]
pop     esi
pop     edx
pop     ecx
retn

loc_4A01FC:             ; jumptable 004A0190 case 2
mov     ds:byte_77EAC1, 2
xor     ecx, ecx
mov     ds:word_6E23D4, cx
call    sub_4A0E35
call    sub_4A62BD
call    sub_4A056E
call    sub_4D8EB1
call    sub_4D8E21
call    sub_4D8ED6
mov     eax, 2
call    sub_42BEB2
call    nullsub_10
inc     byte ptr [edx+1]
mov     word ptr [edx+6], 96h
mov     eax, 8001003Dh
call    sub_4D89E4
mov     eax, 2

loc_4A0251:
call    sub_49E0D7
pop     esi
pop     edx
pop     ecx
retn

loc_4A025A:             ; jumptable 004A0190 case 3
call    sub_4A03C9
mov     eax, edx
call    sub_4A0394
pop     esi
pop     edx
pop     ecx
retn

loc_4A026A:             ; jumptable 004A0190 case 4
call    sub_4A03C9
test    byte ptr ds:word_5708DE, 8
jnz     short loc_4A0281
call    sub_4D8EFD
test    eax, eax
jnz     short def_4A0190 ; jumptable 004A0190 default case

loc_4A0281:
inc     byte ptr [edx+1]
mov     eax, 10h
call    sub_4D9040
mov     eax, 0Ah
jmp     short loc_4A0251

loc_4A0295:             ; jumptable 004A0190 case 5
call    sub_4A03C9
jmp     loc_4A01DA

loc_4A029F:             ; jumptable 004A0190 case 6
mov     eax, 1FEh
call    sub_47EA91
mov     word ptr ds:dword_6DD9BC, 1
mov     eax, offset sub_4378C0
call    sub_4EEDCA

def_4A0190:             ; jumptable 004A0190 default case
pop     esi
pop     edx
pop     ecx
retn
sub_4A017B endp




sub_4A02C0 proc near
push    edx
mov     edx, ds:dword_77E790
inc     edx
mov     ds:dword_77E790, edx
cmp     edx, 0A4CB7Fh
jbe     short loc_4A02E0
mov     ds:dword_77E790, 0A4CB7Fh

loc_4A02E0:
pop     edx
retn
sub_4A02C0 endp




sub_4A02E2 proc near
push    ebx
push    ecx
mov     ah, byte ptr ds:dword_77E784
cmp     ah, 3
jl      loc_4A0391
cmp     ah, 6
jz      loc_4A0391
cmp     ds:word_55CCF0, 0
jnz     loc_4A0391
mov     ax, ds:word_5708DA
xor     ah, ah
and     al, 9
cmp     ax, 9
jz      short loc_4A0323
cmp     ds:byte_52CCA0, 0
jz      short loc_4A0388

loc_4A0323:
xor     bl, bl
mov     ds:byte_52CCA0, bl
mov     ds:byte_77EAC1, 2
call    sub_4A0E35
call    sub_4A62BD
call    sub_4A056E
call    sub_4A86A4
call    sub_4D8ED6
call    sub_4D8E21
call    sub_4D8EB1
xor     ecx, ecx
mov     ds:word_6E23D4, cx
mov     eax, 8
call    sub_49E0D7
mov     eax, 1FEh
call    sub_47EA91
mov     word ptr ds:dword_6DD9BC, 1
mov     eax, offset sub_4378C0
call    sub_4EEDCA
pop     ecx
pop     ebx
retn

loc_4A0388:
xor     ebx, ebx
mov     ds:word_77E78E, bx

loc_4A0391:
pop     ecx
pop     ebx
retn
sub_4A02E2 endp




sub_4A0394 proc near
cmp     ds:word_6E23D6, 0
jnz     short locret_4A03A1
inc     byte ptr [eax+1]

locret_4A03A1:
retn
sub_4A0394 endp




sub_4A03A2 proc near
cmp     ds:word_6E23D6, 0
jnz     short locret_4A03AF
inc     byte ptr [eax+1]

locret_4A03AF:
retn
sub_4A03A2 endp




sub_4A03B0 proc near
cmp     ds:byte_77EAB8, 0
jz      sub_4D8ED6
mov     eax, 1
call    sub_4EEDA4
jmp     short sub_4A03B0
sub_4A03B0 endp




sub_4A03C9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, ds:dword_77E6DC
lea     eax, [esi+38h]
mov     ds:dword_77E6DC, eax
mov     eax, esi
call    sub_4F87F0
mov     ecx, 100h
mov     ebx, 140h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
mov     [esi+16h], ax
mov     edx, 1F0h
xor     eax, eax
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 20h ; ' '
mov     word ptr [esi+0Ah], 38h ; '8'
mov     word ptr [esi+10h], 11Fh
mov     word ptr [esi+12h], 38h ; '8'
mov     word ptr [esi+18h], 20h ; ' '
mov     word ptr [esi+1Ah], 0B8h
mov     word ptr [esi+20h], 11Fh
mov     word ptr [esi+22h], 0B8h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+14h], 0FFh
mov     byte ptr [esi+15h], 0
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 80h
mov     byte ptr [esi+24h], 0FFh
mov     byte ptr [esi+25h], 80h
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
mov     edx, esi
call    sub_4F87A6
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A03C9 endp




sub_4A0479 proc near
push    ecx
push    edx
mov     ecx, ds:dword_77E6DC
mov     eax, ecx
call    sub_4F87CF
mov     word ptr [ecx+8], 0
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ecx+0Ch], 140h
mov     word ptr [ecx+0Eh], 0
mov     word ptr [ecx+10h], 0
mov     ax, ds:word_77E78C
mov     edx, 78h ; 'x'
sub     edx, eax
mov     [ecx+12h], dx
mov     word ptr [ecx+14h], 140h
mov     ax, ds:word_77E78C
mov     edx, 78h ; 'x'
sub     edx, eax
mov     [ecx+16h], dx
mov     byte ptr [ecx+4], 0
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
xor     edx, edx
mov     eax, ecx
call    sub_4F884E
mov     edx, ecx
mov     eax, ds:dword_77EA74
add     ecx, 38h ; '8'
add     eax, 74h ; 't'
call    sub_4F87A6
mov     eax, ecx
call    sub_4F87CF
mov     word ptr [ecx+8], 0
mov     ax, ds:word_77E78C
add     eax, 77h ; 'w'
mov     [ecx+0Ah], ax
mov     word ptr [ecx+0Ch], 140h
mov     ax, ds:word_77E78C
add     eax, 77h ; 'w'
mov     [ecx+0Eh], ax
mov     word ptr [ecx+10h], 0
mov     word ptr [ecx+12h], 0F0h
mov     word ptr [ecx+14h], 140h
mov     word ptr [ecx+16h], 0F0h
mov     byte ptr [ecx+4], 0
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
xor     edx, edx
mov     eax, ecx
call    sub_4F884E
mov     edx, ecx
mov     eax, ds:dword_77EA74
add     ecx, 38h ; '8'
add     eax, 74h ; 't'
call    sub_4F87A6
mov     ds:dword_77E6DC, ecx
pop     edx
pop     ecx
retn
sub_4A0479 endp




sub_4A056E proc near
push    edx
mov     eax, offset unk_6DC7CC
xor     edx, edx

loc_4A0576:
mov     dword ptr [eax], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+8], 0
inc     edx
add     eax, 0Ch
cmp     edx, 4
jl      short loc_4A0576
pop     edx
retn
sub_4A056E endp




sub_4A0595 proc near
push    ecx
push    edx
test    eax, eax
jge     short loc_4A05CC
mov     edx, offset unk_6DC7CC
xor     eax, eax

loc_4A05A2:
movsx   ecx, byte ptr [edx+1]
or      eax, ecx
inc     eax
add     edx, 0Ch
cmp     eax, 4
jl      short loc_4A05A2
test    eax, eax
jz      short loc_4A05C4
mov     edx, 2
mov     eax, 3FFh
call    sub_4DC979

loc_4A05C4:
call    sub_4A056E
pop     edx
pop     ecx
retn

loc_4A05CC:
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     edx, offset unk_6DC7CC
mov     byte ptr [edx+eax*4], 0
cmp     byte ptr [edx+eax*4+1], 0
jz      short loc_4A05F2
mov     edx, 2
mov     eax, 3FFh
call    sub_4DC979

loc_4A05F2:
pop     edx
pop     ecx
retn
sub_4A0595 endp




sub_4A05F5 proc near
push    ebx
push    ecx
mov     ecx, edx
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset unk_6DC7CC
mov     byte ptr [eax], 1
mov     edx, ecx
sar     edx, 10h
mov     [eax+5], dl
mov     edx, ecx
and     edx, 0FFh
mov     bl, ds:byte_52DC4A[edx*8]
mov     [eax+4], bl
mov     bl, ds:byte_52DC48[edx*8]
mov     [eax+2], bl
mov     edx, ds:off_52DC4C[edx*8]
mov     [eax+8], edx
test    ecx, ecx
jl      short loc_4A0653
mov     byte ptr [eax+1], 1
mov     edx, 1
mov     eax, 3FFh
call    sub_4DC979
pop     ecx
pop     ebx
retn

loc_4A0653:
mov     byte ptr [eax+1], 0
pop     ecx
pop     ebx
retn
sub_4A05F5 endp




sub_4A065A proc near
push    ebx
push    ecx
push    edx
cmp     ds:dword_77E710, 0
jnz     short loc_4A068C
mov     edx, offset unk_6DC7CC
xor     ecx, ecx
jmp     short loc_4A0678

loc_4A066F:
inc     ecx
add     edx, 0Ch
cmp     ecx, 4
jge     short loc_4A068C

loc_4A0678:
cmp     byte ptr [edx], 0
jz      short loc_4A066F
movsx   ebx, byte ptr [edx+2]
mov     eax, edx
call    ds:funcs_4A0683[ebx*4]
jmp     short loc_4A066F

loc_4A068C:
pop     edx
pop     ecx
pop     ebx
retn
sub_4A065A endp




sub_4A0690 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edi, eax
mov     ebx, [eax+8]
mov     ecx, ds:dword_77E6DC
mov     ebp, ecx
mov     dword ptr [ecx], 2000000h
mov     eax, [eax+1]
sar     eax, 18h
or      eax, 0E1000000h
mov     [ecx+4], eax
mov     dword ptr [ecx+8], 0
lea     eax, [ecx+14h]
mov     [ecx], eax
mov     ecx, eax

loc_4A06C5:
lea     eax, [ecx+14h]
mov     [ecx], eax
mov     dword ptr [ecx+4], 64808080h
mov     eax, [ebx+4]
mov     [ecx+8], eax
mov     eax, [ebx+8]
mov     [ecx+0Ch], eax
mov     eax, [ebx+0Ch]
mov     [ecx+10h], eax
movsx   eax, word ptr [ebx]
sar     eax, 8
cmp     eax, 2
jb      short loc_4A06F7
jbe     short loc_4A0707
cmp     eax, 3
jz      short loc_4A0723
jmp     short loc_4A0745

loc_4A06F7:
cmp     eax, 1
jnz     short loc_4A0745
test    byte ptr ds:word_77EAB6, 10h

loc_4A0703:
jnz     short loc_4A0748
jmp     short loc_4A0745

loc_4A0707:
mov     esi, 0Fh
xor     edx, edx
mov     eax, ds:dword_77E790
div     esi
mov     esi, 3Ch ; '<'
xor     edx, edx
div     esi
test    dl, 1
jmp     short loc_4A0703

loc_4A0723:
mov     edx, ds:dword_5F8412
sar     edx, 10h
cmp     edx, 50h ; 'P'
jle     short loc_4A0745
sub     edx, 41h ; 'A'
sar     edx, 4
mov     eax, edx
shl     eax, 2
add     edx, eax
sub     [ecx+0Ch], dl
add     [ecx+10h], dx

loc_4A0745:
add     ecx, 14h

loc_4A0748:
add     ebx, 10h
cmp     word ptr [ebx], 0
jge     loc_4A06C5
lea     ebx, [ecx-14h]
mov     edx, [edi+2]
sar     edx, 18h
shl     edx, 2
mov     eax, ds:dword_77EA74
add     eax, 70h ; 'p'
add     eax, edx
mov     edx, ebp
call    sub_4F87AF
mov     ds:dword_77E6DC, ecx

loc_4A0778:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A0690 endp

db 8Dh, 40h, 0
off_4A0782 dd offset loc_4A08CB
dd offset loc_4A08F0
dd offset loc_4A0908
dd offset loc_4A091F
dd offset loc_4A0934
dd offset loc_4A0940
dd offset loc_4A0983
dd offset loc_4A0940
dd offset loc_4A0983
dd offset loc_4A09A9
dd offset loc_4A09A9
dd offset loc_4A09A9
dd offset loc_4A09A9
dd offset loc_4A08CB
jpt_4A09B1 dd offset loc_4A09B8 ; jump table for switch statement
dd offset loc_4A09C0
dd offset loc_4A09CC
dd offset loc_4A09D5



sub_4A07CA proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
push    eax
xor     esi, esi
mov     ebx, [eax+8]
mov     ecx, ds:dword_77E6DC
mov     [esp+30h+var_24], ecx
mov     dword ptr [ecx], 2000000h
mov     dword ptr [ecx+4], 0E100000Ch
mov     [ecx+8], esi
lea     eax, [ecx+38h]
mov     [ecx], eax
mov     ecx, eax

loc_4A07FA:
movsx   eax, word ptr [ebx]
mov     [esp+30h+var_2C], eax
mov     ebp, [ebx]
sar     ebp, 10h
lea     eax, [ecx+38h]
mov     [esp+30h+var_20], eax
mov     [ecx], eax
mov     dword ptr [ecx+4], 64808080h
mov     edi, [esp+30h+var_2C]
and     edi, 0FFh
mov     [esp+30h+var_1C], 6
mov     eax, edi
mov     edx, edi
sar     edx, 1Fh
idiv    [esp+30h+var_1C]
mov     [esp+30h+var_1C], eax
shl     eax, 2
add     eax, [esp+30h+var_1C]
shl     eax, 3
mov     edx, [ebx+4]
sar     edx, 10h
add     eax, 3Ch ; '<'
add     eax, edx
shl     eax, 10h
mov     [esp+30h+var_28], eax
mov     [esp+30h+var_1C], 6
mov     eax, edi
mov     edx, edi
sar     edx, 1Fh
mov     edi, [esp+30h+var_1C]
idiv    edi
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, [ebx+2]
sar     edx, 10h
add     eax, 22h ; '"'
add     eax, edx
mov     edx, [esp+30h+var_28]
or      edx, eax
mov     [ecx+8], edx
mov     eax, [ebx+0Ch]
mov     [ecx+10h], eax
mov     eax, ebp
call    sub_47E888
mov     edx, eax
mov     edi, eax
lea     eax, [ebp+1]
call    sub_47E888
add     edx, eax
lea     eax, [ebp+2]
call    sub_47E888
add     edx, eax
mov     eax, [esp+30h+var_2C]
sar     eax, 8
cmp     eax, 0Dh
ja      loc_4A09EF
mov     ebp, eax
shl     ebp, 2
jmp     ss:off_4A0782[ebp] ; jumptable 004A09B1 case 9

loc_4A08CB:
lea     edx, [ecx+38h]
test    edi, edi
jz      short loc_4A08DF
mov     eax, [ebx+8]
mov     [ecx+0Ch], eax

loc_4A08D8:
mov     ecx, edx
jmp     loc_4A09EF

loc_4A08DF:
test    eax, eax
jnz     loc_4A09EF
mov     dword ptr [ecx+0Ch], 3C484080h
jmp     short loc_4A08D8

loc_4A08F0:
test    edx, edx
jz      short loc_4A08FC
mov     eax, [ebx+8]
jmp     loc_4A097B

loc_4A08FC:
mov     dword ptr [ecx+0Ch], 3C484080h
jmp     loc_4A09EC

loc_4A0908:
test    edx, edx
jz      loc_4A09EF
mov     eax, [ebx+8]

loc_4A0913:
mov     [ecx+0Ch], eax
mov     ecx, [esp+30h+var_20]
jmp     loc_4A09EF

loc_4A091F:
test    edx, edx
jz      loc_4A09EF
shl     edx, 3
sub     edx, 8
mov     eax, [ebx+8]
add     eax, edx
jmp     short loc_4A0913

loc_4A0934:
test    edx, edx
jz      short loc_4A08FC
shl     edx, 5
sub     edx, 20h ; ' '
jmp     short loc_4A0976

loc_4A0940:
cmp     eax, 5
jnz     short loc_4A094E
movzx   esi, ds:byte_77E800
jmp     short loc_4A0955

loc_4A094E:
movzx   esi, ds:byte_77E801

loc_4A0955:
test    edi, edi
jz      loc_4A09EF
cmp     esi, 0Ah
jb      loc_4A09EF
mov     edi, 0Ah
xor     edx, edx
mov     eax, esi
div     edi
mov     edx, eax

loc_4A0973:
shl     edx, 3

loc_4A0976:
mov     eax, [ebx+8]
add     eax, edx

loc_4A097B:
mov     [ecx+0Ch], eax
jmp     loc_4A09EC

loc_4A0983:
cmp     eax, 6
jnz     short loc_4A0991
movzx   esi, ds:byte_77E800
jmp     short loc_4A0998

loc_4A0991:
movzx   esi, ds:byte_77E801

loc_4A0998:
test    edi, edi
jz      short loc_4A09EF
mov     edi, 0Ah
xor     edx, edx
mov     eax, esi
div     edi
jmp     short loc_4A0973

loc_4A09A9:             ; switch 4 cases
sub     eax, 9
cmp     eax, 3
ja      short def_4A09B1 ; jumptable 004A09B1 default case
jmp     jpt_4A09B1[eax*4] ; switch jump

loc_4A09B8:             ; jumptable 004A09B1 case 9
mov     esi, ds:dword_5F84CB
jmp     short loc_4A09DB

loc_4A09C0:             ; jumptable 004A09B1 case 10
mov     al, ds:byte_5F84CF
and     al, 2

loc_4A09C7:
movsx   esi, al
jmp     short def_4A09B1 ; jumptable 004A09B1 default case

loc_4A09CC:             ; jumptable 004A09B1 case 11
mov     al, ds:byte_5F84CF
and     al, 1
jmp     short loc_4A09C7

loc_4A09D5:             ; jumptable 004A09B1 case 12
mov     esi, ds:dword_5F84CB+2

loc_4A09DB:
sar     esi, 18h

def_4A09B1:             ; jumptable 004A09B1 default case
test    edi, edi
jz      short loc_4A09EF
test    esi, esi
jz      short loc_4A09EF
mov     eax, [ebx+8]
mov     [ecx+0Ch], eax

loc_4A09EC:
add     ecx, 38h ; '8'

loc_4A09EF:
add     ebx, 10h
cmp     word ptr [ebx], 0
jge     loc_4A07FA
lea     ebx, [ecx-38h]
mov     edx, [esp+30h+var_30]
mov     edx, [edx+2]
sar     edx, 18h
shl     edx, 2
mov     eax, ds:dword_77EA74
add     eax, 70h ; 'p'
add     eax, edx
mov     edx, [esp+30h+var_24]
call    sub_4F87AF
mov     ds:dword_77E6DC, ecx
add     esp, 18h
jmp     loc_4A0778
sub_4A07CA endp



; Attributes: noreturn

sub_4A0A2C proc near
push    edx
xor     ah, ah
mov     ds:byte_77E770, ah
mov     ds:byte_77E771, ah

loc_4A0A3B:
mov     edx, ds:dword_77E76C+1
sar     edx, 18h
mov     eax, offset byte_77E770
call    ds:funcs_4A0A49[edx*4]
mov     eax, 1
call    sub_4EEDA4
jmp     short loc_4A0A3B
sub_4A0A2C endp




sub_4A0A5C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     eax, 1
call    nullsub_9
xor     esi, esi

loc_4A0A70:
mov     ecx, esi
shl     ecx, 4
mov     ebx, offset unk_75162C
add     ebx, ecx
mov     eax, ebx
call    sub_4F87C5
mov     edx, 1
mov     eax, ebx
call    sub_4F884E
xor     edx, edx
mov     ds:word_751634[ecx], dx
mov     ds:word_751636[ecx], dx
mov     ds:word_751638[ecx], 140h
mov     ds:word_75163A[ecx], 0F0h
push    0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2
mov     eax, edx
call    sub_4F892F
mov     ebx, esi
mov     ecx, esi
shl     ecx, 2
sub     ecx, esi
shl     ecx, 2
mov     edi, offset unk_763F4C
add     edi, ecx
mov     ecx, eax
xor     ebx, esi
xor     edx, edx
mov     eax, edi
call    sub_4F8864
inc     esi
cmp     esi, 2
jb      short loc_4A0A70
call    sub_4A056E
call    sub_4A0C8F
call    sub_4A86A4
xor     eax, eax
call    sub_42BEB2
xor     ah, ah
mov     ds:byte_77EABF, ah
xor     edx, edx
mov     ds:dword_77E794, edx
mov     ds:dword_77E798, edx
xor     edx, edx
mov     ds:word_77E79C, dx
mov     ds:word_77E79E, dx
mov     byte ptr ds:dword_77E7D5+3, ah
mov     ds:byte_77E7D9, ah
mov     byte ptr ds:dword_77E7DC, ah
mov     byte ptr ds:dword_77E7DC+1, ah
mov     byte ptr ds:dword_77E7DC+3, 1
mov     ecx, 0FFFFFFFFh
mov     word ptr ds:dword_77E7F2+2, cx
mov     word ptr ds:dword_77E7F6, cx
mov     word ptr ds:dword_77E7F6+2, cx
mov     ds:word_77E7FA, cx
inc     byte ptr [ebp+0]
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A0A5C endp




sub_4A0B6F proc near
push    edx
xor     edx, edx
mov     ds:dword_6DD9BC, edx
mov     ds:dword_6DD9C0, edx
mov     ds:dword_6DD9C4, edx
mov     eax, offset sub_4378C0
call    sub_4EEDCA
pop     edx
sub_4A0B6F endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_8]



sub_4A0B90 proc near
push    esi
mov     ds:dword_560DB4, 3F00h
mov     ds:dword_560DB8, 18h
mov     ds:dword_560DBC, 80h
xor     esi, esi
mov     ds:dword_560DC0, esi
pop     esi
retn
sub_4A0B90 endp




sub_4A0BB9 proc near
mov     eax, 4C0h
jmp     sub_47E8B8
sub_4A0BB9 endp




sub_4A0BC3 proc near
push    ebx
push    ecx
push    edx
test    eax, eax
jnz     loc_4A0C77
xor     edx, edx

loc_4A0BD0:
mov     eax, edx
shl     eax, 4
mov     ecx, ds:dword_52DF64[edx*4]
mov     ds:dword_77E808[eax], ecx
mov     ebx, ds:dword_53022A[edx*8]
mov     ds:dword_77E80C[eax], ebx
mov     ecx, ds:dword_53022E[edx*8]
mov     ds:dword_77E810[eax], ecx
xor     ecx, ecx
mov     ds:dword_77E814[eax], ecx
inc     edx
cmp     edx, 9
jl      short loc_4A0BD0
xor     edx, edx

loc_4A0C0C:
mov     eax, edx
shl     eax, 4
mov     ebx, ds:dword_52DF88[edx*4]
mov     ds:dword_77E898[eax], ebx
mov     ecx, ds:dword_52DF94[edx*4]
mov     ds:dword_77E8C8[eax], ecx
mov     ebx, ds:dword_530272[edx*8]
mov     ds:dword_77E89C[eax], ebx
mov     ebx, ds:dword_530276[edx*8]
mov     ds:dword_77E8A0[eax], ebx
mov     ebx, ds:dword_53028A[edx*8]
mov     ds:dword_77E8CC[eax], ebx
mov     ecx, ds:dword_53028E[edx*8]
mov     ds:dword_77E8D0[eax], ecx
xor     ebx, ebx
mov     ds:dword_77E8A4[eax], ebx
mov     ds:dword_77E8D4[eax], ebx
inc     edx
cmp     edx, 3
jl      short loc_4A0C0C
pop     edx
pop     ecx
pop     ebx
retn

loc_4A0C77:
mov     ebx, 0Fh
mov     edx, offset dword_77E808
mov     eax, offset unk_75338C
call    sub_4EECE5
pop     edx
pop     ecx
pop     ebx
retn
sub_4A0BC3 endp




sub_4A0C8F proc near
push    ecx
push    edx
xor     edx, edx

loc_4A0C93:
movsx   ecx, dx
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 4
add     eax, ecx
xor     ecx, ecx
mov     ds:dword_55B99C[eax*4], ecx
mov     ds:dword_55BA08[eax*4], ecx
mov     ds:dword_55B9E4[eax*4], ecx
mov     ds:word_55B9A2[eax*4], dx
inc     edx
cmp     dx, 5
jl      short loc_4A0C93
mov     ds:dword_55BD78, ecx
mov     ds:dword_55BD7C, ecx
mov     ds:dword_55BD70, ecx
pop     edx
pop     ecx
retn
sub_4A0C8F endp




sub_4A0CDD proc near

var_C= dword ptr -0Ch

push    ecx
push    edi
push    eax
mov     ecx, edx
test    byte ptr ds:dword_55BD7C+2, 40h
jz      short loc_4A0CF2

loc_4A0CEB:
xor     eax, eax
jmp     loc_4A0E1E

loc_4A0CF2:
cmp     ds:dword_77E710, 0
jnz     short loc_4A0CEB
mov     eax, [esp+0Ch+var_C]
mov     edx, eax
shl     edx, 2
sub     edx, eax
shl     edx, 4
add     edx, eax
shl     edx, 2
add     edx, offset dword_55B99C
test    byte ptr [edx+2], 4
jz      short loc_4A0D1E
call    sub_4D8EB1

loc_4A0D1E:
cmp     [esp+0Ch+var_C], 4
jz      short loc_4A0D43
test    ds:byte_55BCAE, 4
jz      short loc_4A0D32
call    sub_4D8EB1

loc_4A0D32:
xor     edi, edi
mov     dword ptr ds:unk_55BCAC, edi
mov     ds:word_55BD6E, 0FFh

loc_4A0D43:
mov     dword ptr [edx], 80000000h
mov     byte ptr [edx+3Eh], 0
mov     byte ptr [edx+3Fh], 1
mov     word ptr [edx+4], 0
mov     word ptr [edx+8], 0
mov     word ptr [edx+0Ah], 0
mov     word ptr [edx+0Ch], 0
mov     word ptr [edx+0Eh], 0
mov     al, [edx+3Eh]
mov     [edx+3Ch], al
xor     ah, ah
mov     al, bl
mov     [edx+0C2h], ax
cmp     bl, 0FFh
jz      short loc_4A0DA0
xor     eax, eax
mov     al, bl
mov     ax, [ecx+eax*2]
and     eax, 0FFFFh
lea     ebx, [ecx+eax]
mov     [edx+48h], ebx
mov     [edx+6Ch], ebx
mov     [edx+44h], ecx
jmp     short loc_4A0DAD

loc_4A0DA0:
mov     [edx+48h], ecx
mov     [edx+6Ch], ecx
mov     dword ptr [edx+44h], 0

loc_4A0DAD:
mov     word ptr [edx+0C0h], 0
mov     word ptr [edx+0BEh], 0
mov     byte ptr [edx+71h], 0
mov     byte ptr [edx+72h], 0
mov     byte ptr [edx+73h], 0
mov     al, [edx+3Eh]
mov     [edx+70h], al
mov     byte ptr [edx+7Dh], 0
mov     byte ptr [edx+7Eh], 0
mov     byte ptr [edx+7Fh], 0
mov     byte ptr [edx+3Bh], 0
mov     word ptr [edx+38h], 0
mov     byte ptr [edx+3Ah], 2
mov     byte ptr [edx+3Dh], 3
mov     word ptr [edx+0BCh], 0
mov     byte ptr [edx+78h], 80h
or      byte ptr ds:dword_55BD7C+3, 80h
mov     cl, byte ptr [esp+0Ch+var_C]
mov     eax, 8000000h
sar     eax, cl
or      ds:dword_55BD7C, eax
mov     eax, [edx+6Ch]
mov     [edx+14h], eax
mov     eax, 1

loc_4A0E1E:
add     esp, 4
pop     edi
pop     ecx
retn
sub_4A0CDD endp




sub_4A0E24 proc near
push    ebx
xor     ebx, ebx
mov     bl, dl
mov     edx, offset unk_75B54C
call    sub_4A0CDD
pop     ebx
retn
sub_4A0E24 endp




sub_4A0E35 proc near
push    ebx
push    edx
xor     edx, edx
mov     eax, offset dword_55B99C

loc_4A0E3E:
cmp     eax, offset dword_55BD70
jnb     short loc_4A0E5D
or      edx, [eax]
mov     dword ptr [eax], 0
mov     word ptr [eax+0C2h], 0FFh
add     eax, 0C4h
jmp     short loc_4A0E3E

loc_4A0E5D:
test    edx, 40000h
jz      short loc_4A0E6A
call    sub_4D8EB1

loc_4A0E6A:
xor     ebx, ebx
mov     ds:dword_55BD7C, ebx
pop     edx
pop     ebx
retn
sub_4A0E35 endp




sub_4A0E75 proc near
push    ebx
push    ecx
push    edx
mov     bl, al
xor     edx, edx
mov     dl, al
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
add     eax, edx
shl     eax, 2
mov     edx, offset dword_55B99C
add     edx, eax
test    byte ptr [edx+2], 4
jz      short loc_4A0E9F
call    sub_4D8EB1

loc_4A0E9F:
mov     dword ptr [edx], 0
mov     word ptr [edx+0C2h], 0FFh
and     word ptr ds:dword_55BD7C+2, 0BFC1h
xor     edx, edx
mov     dl, bl
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
add     eax, edx
shl     eax, 2
mov     edx, offset dword_55B99C
add     edx, eax
sub     edx, offset dword_55B99C
mov     ecx, 0C4h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     cl, al
mov     eax, 8000000h
sar     eax, cl
not     eax
and     ds:dword_55BD7C, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4A0E75 endp




sub_4A0EF8 proc near

var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    ebp
sub     esp, 8
test    byte ptr ds:dword_55BD7C+2, 40h
jnz     loc_4A12EB
cmp     ds:dword_77E710, 0
jnz     loc_4A12EB
cmp     ds:byte_530419, 0
jz      short loc_4A0F2A
mov     esi, offset unk_55BCAC
jmp     short loc_4A0F2F

loc_4A0F2A:
mov     esi, offset dword_55B99C

loc_4A0F2F:
and     word ptr ds:dword_55BD7C+2, 3043h
xor     ecx, ecx
mov     ds:dword_55BD78, ecx

loc_4A0F40:
cmp     esi, offset dword_55BD70
ja      loc_4A12E5
test    byte ptr [esi+3], 80h
jz      loc_4A1290
or      byte ptr ds:dword_55BD7C+3, 80h
mov     edx, esi
sub     edx, offset dword_55B99C
mov     ecx, 0C4h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     cl, al
mov     eax, 8000000h
sar     eax, cl
mov     ebp, ds:dword_55BD7C
or      ebp, eax
mov     ds:dword_55BD7C, ebp
test    byte ptr ds:dword_55BD7C+2, 4
jnz     short loc_4A0FBE
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, 10000h
sar     eax, cl
test    eax, ebp
jnz     short loc_4A0FBE
mov     ax, ds:word_5708DA
mov     [esi+0B8h], ax
mov     ax, ds:word_5708DE
mov     [esi+0BAh], ax
jmp     short loc_4A0FD0

loc_4A0FBE:
mov     word ptr [esi+0B8h], 0
mov     word ptr [esi+0BAh], 0

loc_4A0FD0:
test    byte ptr [esi+3], 8
jnz     short loc_4A0FF7
test    byte ptr [esi+0B9h], 10h
jz      short loc_4A0FF7
test    byte ptr [esi+2], 4
jz      short loc_4A0FF7
call    sub_4D8ECC
test    eax, eax
jz      short loc_4A0FF7
and     byte ptr [esi+2], 0FBh
call    sub_4D8EB1

loc_4A0FF7:
mov     eax, [esi+6Ch]
cmp     byte ptr [eax], 80h
jnb     loc_4A107D
mov     bx, [esi+4]
dec     ebx
mov     [esi+4], bx
test    bx, bx
jg      short loc_4A106D
test    byte ptr [esi+3], 8
jnz     short loc_4A102F
test    byte ptr [esi+0B9h], 10h
jz      short loc_4A102F
test    byte ptr [esi+2], 4
jnz     short loc_4A102F
xor     eax, eax
mov     al, [esi+3Fh]
sar     eax, 1
jmp     short loc_4A1034

loc_4A102F:
xor     eax, eax
mov     al, [esi+3Fh]

loc_4A1034:
mov     [esi+4], ax
mov     eax, [esi+6Ch]
mov     dl, [eax]
and     dl, 70h
cmp     dl, 70h ; 'p'
jnz     short loc_4A1049
inc     eax
mov     [esi+6Ch], eax

loc_4A1049:
inc     dword ptr [esi+6Ch]
test    byte ptr [esi+3], 60h
jnz     short loc_4A106D
test    byte ptr [esi+2], 4
jnz     short loc_4A1069
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, 84h
call    sub_4D89E4

loc_4A1069:
or      byte ptr [esi+3], 40h

loc_4A106D:
cmp     word ptr [esi+4], 0
jnz     short loc_4A1092
or      byte ptr [esi+3], 40h
jmp     loc_4A0FF7

loc_4A107D:
xor     edx, edx
mov     dl, [eax]
mov     eax, esi
call    ds:funcs_4A1083[edx*4]
test    eax, eax
jnz     loc_4A0FF7

loc_4A1092:
cmp     byte ptr [esi+3Fh], 0
jnz     short loc_4A10A2
test    byte ptr [esi+3], 10h
jz      loc_4A0FF7

loc_4A10A2:
mov     ecx, ds:dword_77E6DC
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 3
lea     edx, [ecx+0Ch]
mov     ds:dword_77E6DC, edx
mov     edx, offset unk_52E3D4
add     edx, eax
mov     eax, ecx
call    sub_4F885C
mov     eax, [esi+3Ah]
sar     eax, 18h
shl     eax, 2
mov     edx, ds:dword_77EA74
add     edx, 70h ; 'p'
add     eax, edx
mov     edx, ecx
call    sub_4F87A6
mov     eax, [esi+48h]
mov     [esi+14h], eax
mov     ax, [esi+8]
mov     [esi+10h], ax
mov     ax, [esi+0Ah]
mov     dx, [esi+38h]
add     eax, edx
mov     [esi+12h], ax
mov     byte ptr [esi+73h], 0
mov     al, [esi+3Ch]
mov     [esi+3Eh], al
mov     byte ptr [esi+78h], 80h
mov     word ptr [esi+0BEh], 0

loc_4A1117:
mov     eax, [esi+14h]
cmp     eax, [esi+6Ch]
jz      loc_4A1207
mov     bh, [eax]
cmp     bh, 80h
jnb     loc_4A11F5
test    byte ptr [esi+2], 10h
jnz     loc_4A11DC
mov     ecx, ds:dword_77E6DC
mov     edx, ecx
lea     eax, [ecx+10h]
mov     ds:dword_77E6DC, eax
mov     eax, ecx
call    sub_4F87CA
mov     eax, [esi+14h]
mov     bl, [eax]
and     bl, 70h
cmp     bl, 70h ; 'p'
jnz     short loc_4A1178
xor     bh, bh
mov     bl, [eax]
sub     ebx, 70h ; 'p'
shl     ebx, 8
mov     al, [eax+1]
xor     ah, ah
add     ebx, eax
mov     [ecx+0Ch], bx
mov     ebx, 0Ch
jmp     short loc_4A1193

loc_4A1178:
mov     al, [eax]
xor     ah, ah
mov     [ecx+0Ch], ax
mov     eax, [esi+14h]
xor     ebx, ebx
mov     bl, [eax]
mov     bl, ds:byte_52DFA0[ebx]
and     ebx, 0FFh

loc_4A1193:
mov     al, [esi+78h]
mov     [edx+4], al
mov     [edx+5], al
mov     [edx+6], al
mov     ax, [esi+10h]
mov     [edx+8], ax
mov     ax, [esi+12h]
mov     [edx+0Ah], ax
xor     eax, eax
mov     al, [esi+3Eh]
mov     ax, ds:word_52E3C4[eax*2]
mov     [edx+0Eh], ax
mov     ecx, [esi+3Ah]
sar     ecx, 18h
shl     ecx, 2
mov     eax, ds:dword_77EA74
add     eax, 70h ; 'p'
add     eax, ecx
call    sub_4F87A6
add     [esi+10h], bx

loc_4A11DC:
mov     eax, [esi+14h]
mov     dl, [eax]
and     dl, 70h
cmp     dl, 70h ; 'p'
jnz     short loc_4A11ED
inc     eax
mov     [esi+14h], eax

loc_4A11ED:
inc     dword ptr [esi+14h]
jmp     loc_4A1117

loc_4A11F5:
xor     edx, edx
mov     dl, bh
mov     eax, esi
call    ds:funcs_4A11FB[edx*4]
jmp     loc_4A1117

loc_4A1207:
xor     edx, edx
mov     dl, [esi+7Fh]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
push    eax
xor     edx, edx
mov     dl, [esi+7Eh]
mov     ecx, edx
shl     ecx, 2
sub     ecx, edx
shl     ecx, 2
mov     edx, [esi+8]
sar     edx, 10h
xor     ebx, ebx
mov     bl, ds:byte_77EAC6
shl     ebx, 8
add     ebx, edx
mov     edx, [esi+6]
sar     edx, 10h
lea     eax, [esp+20h+var_1C]
call    sub_4F8838
mov     ecx, ds:dword_77E6DC
lea     eax, [ecx+0Ch]
mov     ds:dword_77E6DC, eax
mov     edx, esp
mov     eax, ecx
call    sub_4F885C
mov     eax, [esi+3Ah]
sar     eax, 18h
shl     eax, 2
mov     edx, ds:dword_77EA74
add     edx, 70h ; 'p'
add     eax, edx
mov     edx, ecx
call    sub_4F87A6
test    byte ptr [esi+3], 4
jz      short loc_4A12A5
xor     edx, edx
mov     dl, [esi+7Ch]
mov     eax, esi
call    ds:funcs_4A1287[edx*4]
jmp     short loc_4A12A5

loc_4A1290:
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, 10000h
sar     eax, cl
not     eax
and     ds:dword_55BD7C, eax

loc_4A12A5:
cmp     esi, offset unk_55BCAC
jz      short loc_4A12D4
mov     edx, esi
sub     edx, offset dword_55B99C
mov     ecx, 0C4h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     ecx, eax
shl     ecx, 3
mov     eax, [esi+6Eh]
sar     eax, 18h
shl     eax, cl
or      ds:dword_55BD78, eax

loc_4A12D4:
and     word ptr [esi+2], 0AF7Fh
add     esi, 0C4h
jmp     loc_4A0F40

loc_4A12E5:
inc     ds:dword_55BD70

loc_4A12EB:
add     esp, 8
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A0EF8 endp




sub_4A12F4 proc near
inc     dword ptr [eax+14h]
retn
sub_4A12F4 endp




sub_4A12F8 proc near
add     dword ptr [eax+14h], 2
retn
sub_4A12F8 endp




sub_4A12FD proc near
add     dword ptr [eax+14h], 3
retn
sub_4A12FD endp




sub_4A1302 proc near
add     dword ptr [eax+14h], 4
retn
sub_4A1302 endp




sub_4A1307 proc near
add     dword ptr [eax+14h], 5
retn
sub_4A1307 endp

add     dword ptr [eax+14h], 6
retn



sub_4A1311 proc near
add     dword ptr [eax+14h], 7
retn
sub_4A1311 endp




sub_4A1316 proc near
add     dword ptr [eax+14h], 9
retn
sub_4A1316 endp




sub_4A131B proc near
add     dword ptr [eax+14h], 0Bh
retn
sub_4A131B endp




sub_4A1320 proc near
add     dword ptr [eax+6Ch], 5
jmp     loc_4A2310
sub_4A1320 endp




sub_4A1329 proc near
push    edx
xor     dh, dh
mov     dl, [eax+1]
shl     edx, 8
mov     al, [eax]
xor     ah, ah
add     eax, edx
pop     edx
retn
sub_4A1329 endp




sub_4A133A proc near
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+1]
shl     ecx, 8
xor     edx, edx
mov     dl, [eax]
add     ecx, edx
xor     edx, edx
mov     dl, [eax+2]
shl     edx, 10h
add     edx, ecx
mov     al, [eax+3]
and     eax, 0FFh
shl     eax, 18h
add     eax, edx
pop     edx
pop     ecx
retn
sub_4A133A endp




sub_4A1364 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= byte ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= byte ptr -14h

; FUNCTION CHUNK AT 004A518C SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
mov     edx, eax
test    byte ptr [eax+3], 1
jnz     short loc_4A1380
or      byte ptr [edx+3], 1
mov     eax, [edx+6Ch]
inc     eax
call    sub_4A1329
mov     [edx+4], ax

loc_4A1380:
or      byte ptr [edx+3], 10h
mov     bx, [edx+4]
test    bx, bx
jg      short loc_4A13DE
mov     cl, [edx+2]
or      cl, 2
mov     [edx+2], cl
test    byte ptr [edx+3], 4
jz      short loc_4A13B7
mov     bl, cl
or      bl, 10h
mov     [edx+2], bl
xor     ecx, ecx
mov     cl, [edx+7Ch]
mov     eax, edx
call    ds:funcs_4A13AB[ecx*4]
jmp     loc_4A3E61

loc_4A13B7:
and     word ptr [edx+2], 7EFDh
add     dword ptr [edx+6Ch], 3
test    byte ptr [edx+2], 4
jz      short loc_4A13CC
call    sub_4D8EB1

loc_4A13CC:
and     byte ptr [edx+2], 0FBh
mov     word ptr [edx+0C2h], 0FFh
jmp     loc_4A3E61

loc_4A13DE:
mov     ecx, ebx
dec     ecx
mov     [edx+4], cx
jmp     loc_4A3E61

loc_4A13EA:
inc     byte ptr [eax+3Bh]
jmp     loc_4A1D1B

loc_4A13F2:
push    edx
mov     dx, [eax+8]
mov     [eax+10h], dx
add     word ptr [eax+12h], 0Ch
mov     dl, [eax+70h]
mov     [eax+3Eh], dl
inc     dword ptr [eax+14h]
pop     edx
retn

loc_4A140B:
push    ebx
push    ecx
push    edx
mov     edx, eax
test    byte ptr [eax+3], 1
jnz     short loc_4A1427
or      byte ptr [edx+3], 1
mov     eax, [edx+6Ch]
inc     eax
call    sub_4A1329
mov     [edx+4], ax

loc_4A1427:
or      byte ptr [edx+3], 10h
mov     bx, [edx+4]
test    bx, bx
jg      short loc_4A13DE
and     byte ptr [edx+3], 0FEh
mov     ecx, [edx+6Ch]
add     ecx, 3
mov     [edx+6Ch], ecx
mov     [edx+48h], ecx
mov     word ptr [edx+4], 5
mov     byte ptr [edx+71h], 0
mov     byte ptr [edx+72h], 0
mov     byte ptr [edx+73h], 0
mov     al, [edx+3Eh]
mov     [edx+3Ch], al
or      byte ptr ds:dword_55BD7C+2, 20h
jmp     loc_4A3E61

loc_4A1468:
push    edx
mov     edx, [eax+14h]
mov     dl, [edx+1]

loc_4A146F:
mov     [eax+3Eh], dl

loc_4A1472:
add     dword ptr [eax+14h], 2
pop     edx
retn

loc_4A1478:
push    edx
mov     edx, eax
mov     eax, [eax+6Ch]
inc     eax
call    sub_4A1329
mov     [edx+3Fh], al
xor     eax, eax
mov     al, [edx+3Fh]
mov     [edx+4], ax

loc_4A1490:
add     dword ptr [edx+6Ch], 3
jmp     loc_4A2DD8

loc_4A1499:
push    ebx
push    ecx
push    edx
mov     edx, eax
test    byte ptr [eax+3], 1
jnz     short loc_4A14B5
or      byte ptr [edx+3], 1
mov     eax, [edx+6Ch]
inc     eax
call    sub_4A1329
mov     [edx+4], ax

loc_4A14B5:
or      byte ptr [edx+3], 10h
mov     bx, [edx+4]
test    bx, bx
jg      loc_4A13DE
and     byte ptr [edx+3], 0FEh
add     dword ptr [edx+6Ch], 3
jmp     loc_4A3E61

loc_4A14D3:
push    edx
mov     edx, eax
mov     eax, [eax+6Ch]
inc     eax
call    sub_4A1329
mov     [edx+8], ax
mov     eax, [edx+6Ch]
add     eax, 3
call    sub_4A1329
mov     [edx+0Ah], ax
mov     eax, [edx+6Ch]
mov     al, [eax+5]
mov     [edx+7Eh], al
mov     eax, [edx+6Ch]
mov     al, [eax+6]
mov     [edx+7Fh], al
add     dword ptr [edx+6Ch], 7
jmp     loc_4A2DD8

loc_4A150D:
push    ebx
push    ecx
push    edx
or      byte ptr [eax+3], 10h
mov     ecx, [eax+6Ch]
xor     ebx, ebx
mov     bl, [ecx+1]
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
shl     edx, 4
add     edx, ebx
shl     edx, 2
test    byte ptr ds:(dword_55B99C+3)[edx], 80h
jz      short loc_4A153D
test    byte ptr ds:(dword_55B99C+2)[edx], 2
jz      short loc_4A154A

loc_4A153D:
mov     edx, 1
add     ecx, 2
mov     [eax+6Ch], ecx
jmp     short loc_4A154C

loc_4A154A:
xor     edx, edx

loc_4A154C:
mov     eax, edx
pop     edx
pop     ecx
pop     ebx
retn

loc_4A1552:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+6Ch]
inc     eax
call    sub_4A1329
and     eax, 0FFFFh
xor     ebx, ebx
xor     edx, edx
call    sub_4D89E4
add     dword ptr [ecx+6Ch], 3
jmp     loc_4A3054

loc_4A1577:
push    edx
mov     edx, eax
test    byte ptr [eax+3], 1
jnz     short loc_4A1594
or      byte ptr [edx+3], 1
mov     eax, [edx+6Ch]
inc     eax
call    sub_4A133A
call    sub_4D8E42
jmp     short loc_4A15AD

loc_4A1594:
or      byte ptr ds:dword_55BD7C+2, 10h
or      byte ptr [edx+2], 4
and     byte ptr [edx+3], 0FEh
mov     word ptr [edx+4], 5
add     dword ptr [edx+6Ch], 5

loc_4A15AD:
or      byte ptr [edx+3], 10h
xor     eax, eax
pop     edx
retn

loc_4A15B5:
push    ebx
push    ecx
push    edx
mov     ecx, [eax+6Ch]
mov     dx, [eax+0C0h]
xor     ebx, ebx
mov     bx, dx
shl     ebx, 2
inc     edx
mov     [eax+0C0h], dx
lea     edx, [eax+ebx]
add     ecx, 2
mov     [edx+4Ch], ecx
cmp     dword ptr [eax+44h], 0
jz      short loc_4A1604
mov     edx, [eax+6Ch]
mov     dl, [edx+1]
and     edx, 0FFh
mov     ecx, [eax+44h]
mov     dx, [ecx+edx*2]
and     edx, 0FFFFh
add     ecx, edx
mov     [eax+6Ch], ecx
jmp     loc_4A3054

loc_4A1604:
mov     edx, [eax+6Ch]
mov     dl, [edx+1]
and     edx, 0FFh
mov     edx, ds:off_52FCBD[edx*4]
jmp     loc_4A3192

loc_4A161C:
push    ebx
push    ecx
push    edx
mov     ecx, [eax+14h]
mov     dx, [eax+0BEh]
xor     ebx, ebx
mov     bx, dx
shl     ebx, 2
inc     edx
mov     [eax+0BEh], dx
lea     edx, [eax+ebx]
add     ecx, 2
mov     [edx+18h], ecx
cmp     dword ptr [eax+44h], 0
jz      short loc_4A166A
mov     edx, [eax+14h]
mov     dl, [edx+1]
and     edx, 0FFh
mov     ecx, [eax+44h]
mov     dx, [ecx+edx*2]
and     edx, 0FFFFh
add     ecx, edx
mov     [eax+14h], ecx
pop     edx
pop     ecx
pop     ebx
retn

loc_4A166A:
mov     edx, [eax+14h]
mov     dl, [edx+1]
and     edx, 0FFh
mov     edx, ds:off_52FCBD[edx*4]
jmp     loc_4A31CD

loc_4A1682:
push    edx
dec     word ptr [eax+0C0h]
xor     edx, edx
mov     dx, [eax+0C0h]
mov     edx, [eax+edx*4+4Ch]
mov     [eax+6Ch], edx
jmp     loc_4A2DD8

loc_4A169F:
push    edx
dec     word ptr [eax+0BEh]
xor     edx, edx
mov     dx, [eax+0BEh]
mov     edx, [eax+edx*4+18h]
mov     [eax+14h], edx
pop     edx
retn

loc_4A16B9:
push    edx
mov     dl, [eax+3]
test    dl, 2
jz      short loc_4A16CE
mov     dh, dl
and     dh, 0FDh
mov     [eax+3], dh
mov     byte ptr [eax+7Dh], 0

loc_4A16CE:
mov     edx, [eax+6Ch]
mov     dl, [edx+1]
mov     [eax+7Ch], dl
xor     edx, edx
mov     dl, [eax+7Ch]
call    ds:funcs_4A13AB[edx*4]
xor     eax, eax
pop     edx
retn

loc_4A16E7:
push    edx
xor     edx, edx
mov     dl, [eax+7Ch]
call    ds:funcs_4A16ED[edx*4]
pop     edx
retn

loc_4A16F6:
or      byte ptr [eax+3], 8
jmp     loc_4A1D1B

loc_4A16FF:
xor     eax, eax
retn

loc_4A1702:
or      dword ptr [eax], 400800h
inc     byte ptr [eax+72h]
mov     word ptr [eax+0BCh], 0

loc_4A1714:
add     dword ptr [eax+6Ch], 3
jmp     loc_4A2310

