loc_48EC0E:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
cmp     byte ptr [edx+8], 2
jnz     short loc_48EC36
mov     ch, [edx+0Ah]
cmp     ch, 1
jnz     short loc_48EC56
mov     eax, 8
call    sub_49E0D7
add     [edx+4], ch
jmp     short loc_48EC52

loc_48EC36:
call    sub_47EBCB
test    eax, eax
jnz     short loc_48EC45
cmp     byte ptr [edx+0Ah], 1
jnz     short loc_48EC56

loc_48EC45:
mov     eax, 8
call    sub_49E0D7
inc     byte ptr [edx+4]

loc_48EC52:
mov     byte ptr [edx+5], 0

loc_48EC56:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_48EBF5 endp




sub_48EC63 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     ds:word_6E23D6, 0
jnz     loc_48ED36
mov     al, [eax+5]
cmp     al, 1
jb      short loc_48EC88
jbe     short loc_48ECAC
cmp     al, 2
jz      short loc_48ECCD
jmp     loc_48ED36

loc_48EC88:
test    al, al
jnz     loc_48ED36
call    sub_4D8EB1
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
inc     byte ptr [ecx+5]
jmp     loc_48ED36

loc_48ECAC:
call    sub_4E1D8A
mov     bl, 1
mov     byte ptr ds:dword_77E954, bl
call    sub_42A66D
mov     eax, offset byte_5F8364
call    sub_4B565A
add     [ecx+5], bl
jmp     short loc_48ED36

loc_48ECCD:
mov     byte ptr ds:dword_77EA5A+2, al
mov     ds:byte_77EA5E, 0Bh
mov     dh, al
mov     ds:byte_77EA5F, al
mov     word ptr ds:dword_77EA4E+2, 0FE00h
mov     word ptr ds:dword_77EA52, 0FEFFh
mov     word ptr ds:dword_77EA52+2, 0FD00h
mov     word ptr ds:dword_77EA5A, 800h
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 0FFh
mov     al, dh
mov     ds:byte_77EA60, al
or      ds:byte_5F8364, 3
mov     ds:byte_5F83DA, bl
xor     dh, al
mov     ds:byte_77E807, dh
call    sub_47E829
mov     [ecx], bl

loc_48ED36:
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_48ED46
call    sub_49DBD1
call    sub_49DECF

loc_48ED46:
pop     edx
pop     ecx
pop     ebx
retn
sub_48EC63 endp




sub_48ED4A proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+10h]
cmp     edx, 3Ah ; ':'
jb      short loc_48ED6A
jbe     short loc_48ED95
cmp     edx, 3Eh ; '>'
jb      short loc_48ED65
jbe     short loc_48ED95
cmp     edx, 3Fh ; '?'

loc_48ED61:
jz      short loc_48ED9A
jmp     short loc_48ED9E

loc_48ED65:
cmp     edx, 3Bh ; ';'
jmp     short loc_48ED61

loc_48ED6A:
cmp     edx, 23h ; '#'
jb      short loc_48ED76
jbe     short loc_48ED95
cmp     edx, 37h ; '7'
jmp     short loc_48ED61

loc_48ED76:
cmp     edx, 1Eh
jnz     short loc_48ED9E
mov     edx, [eax+24h]
mov     byte ptr [edx+0Dh], 0
mov     edx, [eax+28h]
mov     byte ptr [edx+0Dh], 0
mov     edx, [eax+3Ch]
mov     byte ptr [edx+0Dh], 0
inc     byte ptr [eax+6]
jmp     short loc_48ED9E

loc_48ED95:
inc     byte ptr [eax+7]
jmp     short loc_48ED9E

loc_48ED9A:
mov     byte ptr [eax+7], 0

loc_48ED9E:
cmp     byte ptr [eax+6], 0
jz      short loc_48EDC9
mov     dx, ds:word_77EAB6
xor     dh, dh
and     dl, 3
and     edx, 0FFFFh
mov     edx, ds:dword_524AC2[edx*2]
sar     edx, 10h
shl     edx, 10h
mov     ds:dword_77E698, edx

loc_48EDC9:
cmp     byte ptr [eax+7], 0
jz      short loc_48EDE2
mov     ecx, 2
mov     ebx, 80h
mov     edx, ebx
mov     eax, ebx
call    sub_48F1EA

loc_48EDE2:
pop     edx
pop     ecx
pop     ebx
retn
sub_48ED4A endp




sub_48EDE6 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 0B4h
jb      short loc_48EDFE
jbe     short loc_48EE1D
cmp     edx, 0FAh
jz      short loc_48EE22
jmp     short loc_48EE2E

loc_48EDFE:
test    edx, edx
jnz     short loc_48EE2E
mov     byte ptr [eax+6], 0
mov     ds:dword_77E698, edx
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 0
jmp     short loc_48EE2E

loc_48EE1D:
inc     byte ptr [eax+6]
jmp     short loc_48EE2E

loc_48EE22:
mov     byte ptr [eax+6], 0
xor     edx, edx
mov     ds:dword_77E698, edx

loc_48EE2E:
cmp     byte ptr [eax+6], 0
jz      short loc_48EE55
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_524ACA[eax*2]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E698, eax

loc_48EE55:
pop     edx
retn
sub_48EDE6 endp




sub_48EE57 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48EE6C
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_48EE6C:
retn
sub_48EE57 endp




sub_48EE6D proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48EE82
mov     eax, [eax+3Ch]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_48EE82:
retn
sub_48EE6D endp




sub_48EE83 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48EE98
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_48EE98:
retn
sub_48EE83 endp




sub_48EE99 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48EEAE
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_48EEAE:
retn
sub_48EE99 endp




sub_48EEAF proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48EEEB
mov     eax, [eax+24h]
call    sub_4DE336
mov     eax, [edx+28h]
call    sub_4DE336
mov     eax, [edx+3Ch]
call    sub_4DE2F6
mov     eax, offset unk_524554
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 2
mov     eax, 5
call    sub_48F194

loc_48EEEB:
cmp     dword ptr [edx+10h], 46h ; 'F'
jnz     short loc_48EEFB
mov     eax, 0Eh
call    sub_49E0D7

loc_48EEFB:
mov     eax, edx
call    sub_48F27E
pop     edx
retn
sub_48EEAF endp

db 8Dh, 40h, 0
jpt_48EF2C dd offset loc_48EF33 ; jump table for switch statement
dd offset loc_48EF7D
dd offset loc_48EFAB
dd offset loc_48EFFF



sub_48EF17 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_48EF2C      ; jumptable 0048EF2C default case
and     eax, 0FFh
jmp     jpt_48EF2C[eax*4] ; switch jump

loc_48EF33:             ; jumptable 0048EF2C case 0
cmp     ds:word_6E23D6, 0
jnz     def_48EF2C      ; jumptable 0048EF2C default case
call    sub_4D8EB1
mov     eax, [ecx+24h]
call    sub_4DE336
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
mov     byte ptr [ecx+0Ah], 80h
mov     eax, 7
call    sub_49E0D7
mov     eax, 5Bh ; '['
call    sub_42BEB2

loc_48EF75:
inc     byte ptr [ecx+5]
jmp     def_48EF2C      ; jumptable 0048EF2C default case

loc_48EF7D:             ; jumptable 0048EF2C case 1
call    sub_42C353
test    eax, eax
jnz     def_48EF2C      ; jumptable 0048EF2C default case
cmp     ds:word_6E23D6, 0
jnz     def_48EF2C      ; jumptable 0048EF2C default case
mov     eax, 240010h
call    sub_4D8E42
mov     dword ptr [ecx+10h], 0
jmp     short loc_48EF75

loc_48EFAB:             ; jumptable 0048EF2C case 2
call    sub_4D8ECC
test    eax, eax
jz      short loc_48EFFA
cmp     dword ptr [ecx+10h], 14h
jnz     def_48EF2C      ; jumptable 0048EF2C default case
xor     edx, edx

loc_48EFC0:
lea     ebx, [edx+4]
mov     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 2
add     eax, offset unk_524518
call    sub_49DB4D
inc     edx
cmp     edx, 4
jl      short loc_48EFC0
mov     eax, offset unk_524540
call    sub_49DB4D
mov     eax, offset unk_5245CC
call    sub_49DB4D
and     byte ptr [ecx+0Ah], 1
jmp     loc_48EF75

loc_48EFFA:
mov     [ecx+10h], eax
jmp     short def_48EF2C ; jumptable 0048EF2C default case

loc_48EFFF:             ; jumptable 0048EF2C case 3
cmp     dword ptr [ecx+10h], 1F4h
jnz     short def_48EF2C ; jumptable 0048EF2C default case
mov     byte ptr [ecx+5], 0
call    sub_49DF64
xor     edx, edx

loc_48F013:
mov     eax, edx
mov     eax, [ecx+eax*4+24h]
call    sub_4DE2F6
inc     edx
cmp     edx, 4
jl      short loc_48F013
mov     eax, [ecx+3Ch]
call    sub_4DE2F6
mov     eax, [ecx+38h]
call    sub_4DE371
mov     eax, offset unk_524518
call    sub_49DB4D
mov     eax, 1
call    sub_48F194

def_48EF2C:             ; jumptable 0048EF2C default case
call    sub_47EBCB
test    eax, eax
jz      short loc_48F055
or      byte ptr [ecx+0Ah], 1

loc_48F055:
pop     edx
pop     ecx
pop     ebx
retn
sub_48EF17 endp




sub_48F059 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 96h
jb      short loc_48F084
jbe     short loc_48F071
cmp     edx, 0B4h
jz      short loc_48F07A
pop     edx
retn

loc_48F071:
mov     eax, [eax+24h]
mov     byte ptr [eax+0Dh], 0
pop     edx
retn

loc_48F07A:
mov     eax, offset unk_52452C
call    sub_49DB4D

loc_48F084:
pop     edx
retn
sub_48F059 endp




sub_48F086 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48F092
mov     eax, [eax+24h]
inc     byte ptr [eax+0Dh]

locret_48F092:
retn
sub_48F086 endp




sub_48F093 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F0D4
mov     eax, [eax+24h]
call    sub_4DE336
mov     eax, [edx+28h]
call    sub_4DE336
mov     eax, offset unk_524568
call    sub_49DB4D
mov     eax, offset unk_524540
call    sub_49DB4D
mov     eax, offset unk_5245CC
call    sub_49DB4D
mov     eax, 5
call    sub_48F194

loc_48F0D4:
pop     edx
retn
sub_48F093 endp




sub_48F0D6 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F115
mov     eax, [eax+3Ch]
call    sub_4DE2F6
mov     eax, [edx+38h]
call    sub_4DE371
mov     eax, [edx+24h]
call    sub_4DE2F6
mov     eax, offset unk_524518
call    sub_49DB4D
mov     eax, offset unk_52452C
call    sub_49DB4D
mov     eax, 1
call    sub_48F194

loc_48F115:
pop     edx
retn
sub_48F0D6 endp




sub_48F117 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F12B
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 7
mov     edx, [eax+24h]
inc     byte ptr [edx+0Dh]

loc_48F12B:
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_48F138
mov     eax, [eax+28h]
mov     byte ptr [eax+0Dh], 0

loc_48F138:
pop     edx
retn
sub_48F117 endp




sub_48F13A proc near
push    ecx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F191
mov     eax, [eax+24h]
call    sub_4DE336
mov     eax, [edx+28h]
call    sub_4DE336
mov     eax, offset unk_524540
call    sub_49DB4D
mov     eax, offset unk_5245CC
call    sub_49DB4D
xor     edx, edx

loc_48F16A:
lea     ecx, [edx+4]
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_524518
call    sub_49DB4D
inc     edx
cmp     edx, 5
jl      short loc_48F16A
mov     eax, 5
call    sub_48F194

loc_48F191:
pop     edx
pop     ecx
retn
sub_48F13A endp




sub_48F194 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ds:byte_77EA5E, 0Bh
mov     ds:byte_77EA5F, al
xor     dl, dl
mov     byte ptr ds:dword_77EA5A+3, dl
mov     byte ptr ds:dword_77EA5A+2, 0FFh
xor     dh, dh
mov     word ptr ds:dword_77EA4E+2, dx
xor     ebx, ebx
mov     word ptr ds:dword_77EA52, bx
xor     ecx, ecx
mov     word ptr ds:dword_77EA52+2, cx
xor     esi, esi
mov     word ptr ds:dword_77EA5A, si
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48F194 endp




sub_48F1EA proc near

var_C= byte ptr -0Ch

push    esi
push    edi
sub     esp, 4
mov     [esp+0Ch+var_C], al
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
mov     al, [esp+0Ch+var_C]
mov     [esi+4], al
mov     [esi+5], dl
mov     [esi+6], bl
or      byte ptr [esi+7], 2
mov     edx, ds:dword_77E6DC
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
mov     edi, edx
push    0
xor     eax, eax
mov     ax, cx
shl     eax, 5
or      al, 0Fh
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 38h ; '8'
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, edi
call    sub_4F87A6
add     esp, 4
pop     edi
pop     esi
retn
sub_48F1EA endp




sub_48F27E proc near

var_54= word ptr -54h
var_52= word ptr -52h
var_50= word ptr -50h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 40h
mov     ebx, eax
mov     ecx, 10h
mov     edi, esp
mov     esi, offset byte_48EA43
rep movsd
mov     eax, [eax+10h]
cmp     eax, 34h ; '4'
jb      short loc_48F2E3
jbe     loc_48F3AA
cmp     eax, 46h ; 'F'
jb      short loc_48F2D2
jbe     loc_48F3AA
cmp     eax, 50h ; 'P'
jb      short loc_48F2C8
jbe     loc_48F3AA
cmp     eax, 58h ; 'X'

loc_48F2BD:
jz      loc_48F3AA
jmp     loc_48F3FE

loc_48F2C8:
cmp     eax, 4Ch ; 'L'

loc_48F2CB:
jz      short loc_48F310
jmp     loc_48F3FE

loc_48F2D2:
cmp     eax, 3Ch ; '<'
jb      short loc_48F2DE
jbe     short loc_48F310
cmp     eax, 44h ; 'D'
jmp     short loc_48F2CB

loc_48F2DE:
cmp     eax, 38h ; '8'
jmp     short loc_48F2CB

loc_48F2E3:
cmp     eax, 1Eh
jb      short loc_48F2FF
jbe     loc_48F3AA
cmp     eax, 28h ; '('
jb      short loc_48F2FA
jbe     short loc_48F310
cmp     eax, 30h ; '0'
jmp     short loc_48F2CB

loc_48F2FA:
cmp     eax, 24h ; '$'
jmp     short loc_48F2CB

loc_48F2FF:
cmp     eax, 14h
jb      short loc_48F30B
jbe     short loc_48F310
cmp     eax, 1Ch
jmp     short loc_48F2CB

loc_48F30B:
cmp     eax, 0Ah
jmp     short loc_48F2BD

loc_48F310:
call    sub_4DE13B
mov     ecx, eax
test    eax, eax
jz      loc_48F3AA
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 3
mov     esi, 14h
mov     eax, [ebx+10h]
mov     edx, eax
sar     edx, 1Fh
idiv    esi
mov     edx, eax
shl     edx, 3
call    rand_
mov     esi, eax
and     esi, 1Fh
mov     ax, word ptr ds:(dword_524ACA+2)[edx]
add     eax, esi
mov     [ecx+48h], ax
mov     esi, 14h
mov     eax, [ebx+10h]
mov     edx, eax
sar     edx, 1Fh
idiv    esi
mov     edx, eax
shl     edx, 3
call    rand_
mov     esi, eax
and     esi, 1Fh
mov     ax, ds:word_524ACE[edx]
add     eax, esi
mov     [ecx+4Ah], ax
mov     esi, 14h
mov     eax, [ebx+10h]
mov     edx, eax
sar     edx, 1Fh
idiv    esi
mov     ax, ds:word_524AD0[eax*8]
sub     eax, 1Fh
mov     [ecx+4Ch], ax

loc_48F3AA:
call    sub_4DE13B
mov     ecx, eax
test    eax, eax
jz      short loc_48F3FE
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 40h ; '@'
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
call    rand_
and     eax, 7
mov     ax, [esp+eax*8+54h+var_54]
mov     [ecx+48h], ax
call    rand_
and     eax, 7
mov     ax, [esp+eax*8+54h+var_52]
mov     [ecx+4Ah], ax
call    rand_
and     eax, 7
mov     ax, [esp+eax*8+54h+var_50]
mov     [ecx+4Ch], ax

loc_48F3FE:
add     esp, 40h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48F27E endp




sub_48F407 proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 7
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_48F407 endp




sub_48F453 proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_48F4F5
mov     eax, 7
call    sub_48F407
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     eax, [edx+34h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+38h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+3Ch]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+40h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+44h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
or      ds:byte_56F80C, 3
or      ds:byte_56F87C, 3
or      ds:byte_56F8EC, 3
or      ds:byte_56F924, 3
or      ds:byte_56F95C, 3
mov     ds:word_56F82C, 0FF80h
mov     ebx, 0FFFFFE98h
mov     ds:word_56F89C, bx
mov     ds:word_56F90C, bx
mov     ds:word_56F944, bx
mov     ds:word_56F97C, bx

loc_48F4F5:
pop     edx
pop     ebx
retn
sub_48F453 endp




sub_48F4F8 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F534
mov     eax, 5
call    sub_48F407
mov     edx, [edx+24h]
and     byte ptr [edx], 0FDh
and     ds:byte_56F80C, 0FCh
and     ds:byte_56F87C, 0FCh
and     ds:byte_56F8EC, 0FCh
and     ds:byte_56F924, 0FCh
and     ds:byte_56F95C, 0FCh

loc_48F534:
pop     edx
retn
sub_48F4F8 endp




sub_48F536 proc near

var_C= word ptr -0Ch
var_A= word ptr -0Ah
var_8= word ptr -8

push    edx
sub     esp, 8
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_48F5FD
mov     eax, 6
call    sub_48F407
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 6
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Ch], 1
or      byte ptr [eax], 2
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Ch], 1
mov     eax, [edx+30h]
or      byte ptr [eax], 2
mov     eax, [edx+34h]
or      byte ptr [eax], 2
mov     eax, [edx+38h]
or      byte ptr [eax], 2
mov     eax, [edx+3Ch]
or      byte ptr [eax], 2
mov     eax, [edx+40h]
or      byte ptr [eax], 2
mov     eax, [edx+44h]
or      byte ptr [eax], 2
mov     [esp+0Ch+var_C], 0B8h
mov     [esp+0Ch+var_A], 0FF92h
mov     [esp+0Ch+var_8], 12Ch
mov     eax, esp
call    sub_43B799
mov     [esp+0Ch+var_C], 46h ; 'F'
mov     [esp+0Ch+var_8], 10Eh
mov     eax, esp
call    sub_43B799
mov     [esp+0Ch+var_C], 3Fh ; '?'
mov     [esp+0Ch+var_8], 0B4h
mov     eax, esp
call    sub_43B799
mov     [esp+0Ch+var_8], 28h ; '('
mov     eax, esp
call    sub_43B799
mov     [esp+0Ch+var_C], 0C8h
mov     [esp+0Ch+var_8], 8Ch
mov     eax, esp
call    sub_43B799

loc_48F5FD:
add     esp, 8
pop     edx
retn
sub_48F536 endp




sub_48F602 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F610
mov     edx, [eax+28h]
mov     byte ptr [edx+0Ch], 0

loc_48F610:
cmp     dword ptr [eax+10h], 50h ; 'P'
jnz     short loc_48F621
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0

loc_48F621:
pop     edx
retn
sub_48F602 endp




sub_48F623 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F631
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ch], 0

loc_48F631:
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_48F642
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0

loc_48F642:
cmp     dword ptr [eax+10h], 140h
jnz     short loc_48F656
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

loc_48F656:
pop     edx
retn
sub_48F623 endp




sub_48F658 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F67F
mov     edx, [eax+30h]
and     byte ptr [edx], 0FDh
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 8
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Ch], 1
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0

loc_48F67F:
mov     edx, [eax+2Ch]
mov     edx, [edx+98h]
cmp     byte ptr [edx], 9
jnz     short loc_48F694
mov     edx, [eax+28h]
mov     byte ptr [edx+0Ch], 0

loc_48F694:
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_48F6A1
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ch], 1

loc_48F6A1:
cmp     dword ptr [eax+10h], 0C1h
jnz     short loc_48F6B1
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Ch], 0

loc_48F6B1:
pop     edx
retn
sub_48F658 endp




sub_48F6B3 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48F6C4
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 6
mov     byte ptr [eax+0Ah], 0

locret_48F6C4:
retn
sub_48F6B3 endp




sub_48F6C5 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48F6D6
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 9
mov     byte ptr [eax+0Ah], 0

locret_48F6D6:
retn
sub_48F6C5 endp




sub_48F6D7 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48F6E8
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Ah
mov     byte ptr [eax+0Ah], 0

locret_48F6E8:
retn
sub_48F6D7 endp




sub_48F6E9 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F722
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0Bh
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
or      byte ptr [edx], 2
mov     edx, [eax+38h]
mov     word ptr [edx+56h], 955h
mov     edx, [eax+3Ch]
mov     word ptr [edx+56h], 555h
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0

loc_48F722:
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short loc_48F741
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ch], 0
mov     edx, [eax+34h]
mov     byte ptr [edx+110h], 9
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0

loc_48F741:
cmp     dword ptr [eax+10h], 7Bh ; '{'
jnz     short loc_48F76B
mov     edx, [eax+38h]
mov     byte ptr [edx+110h], 9
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+3Ch]
mov     byte ptr [edx+110h], 9
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0

loc_48F76B:
cmp     dword ptr [eax+10h], 81h
jnz     short loc_48F786
mov     edx, [eax+40h]
mov     byte ptr [edx+110h], 9
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0

loc_48F786:
cmp     dword ptr [eax+10h], 83h
jnz     short loc_48F7A1
mov     eax, [eax+44h]
mov     byte ptr [eax+110h], 9
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0

loc_48F7A1:
pop     edx
retn
sub_48F6E9 endp




sub_48F7A3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_524BA0
mov     dword ptr [ecx+0A4h], offset unk_524D3C
xor     edx, edx

loc_48F7C9:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_524AEC
call    sub_49DB4D
inc     edx
cmp     edx, 0Ah
jl      short loc_48F7C9
pop     edx
pop     ecx
pop     ebx
retn
sub_48F7A3 endp




sub_48F7E7 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_48F7F7
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_48F7F7:
pop     edx
retn
sub_48F7E7 endp

db 8Bh, 0C0h
jpt_48F82D dd offset loc_48F834 ; jump table for switch statement
dd offset loc_48F870
dd offset loc_48F88B
dd offset loc_48F8A4
dd offset loc_48F8AE
dd offset loc_48F8D9



sub_48F813 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_48F82D      ; jumptable 0048F82D default case
and     eax, 0FFh
jmp     jpt_48F82D[eax*4] ; switch jump

loc_48F834:             ; jumptable 0048F82D case 0
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      def_48F82D      ; jumptable 0048F82D default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
and     ds:byte_5F8364, 0FCh
mov     eax, 240011h
call    sub_4D8E42

loc_48F869:
inc     byte ptr [edx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_48F870:             ; jumptable 0048F82D case 1
call    sub_4D8ECC
test    eax, eax
jz      def_48F82D      ; jumptable 0048F82D default case
inc     byte ptr [edx+4]
mov     dword ptr [edx+0Ch], 19h
pop     edx
pop     ecx
pop     ebx
retn

loc_48F88B:             ; jumptable 0048F82D case 2
mov     ecx, [edx+0Ch]
dec     ecx
mov     [edx+0Ch], ecx
jnz     def_48F82D      ; jumptable 0048F82D default case
mov     eax, 2
call    sub_49E0D7
jmp     short loc_48F869

loc_48F8A4:             ; jumptable 0048F82D case 3
mov     eax, edx
call    sub_48F7A3
inc     byte ptr [edx+4]

loc_48F8AE:             ; jumptable 0048F82D case 4
cmp     ds:word_6E23D6, 0
jnz     short loc_48F8D9 ; jumptable 0048F82D case 5
mov     eax, [edx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_48F8CC
call    sub_47EBCB
test    eax, eax
jz      short loc_48F8D9 ; jumptable 0048F82D case 5

loc_48F8CC:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]

loc_48F8D9:             ; jumptable 0048F82D case 5
mov     eax, edx
call    sub_48F7E7
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 5
jnz     short def_48F82D ; jumptable 0048F82D default case
cmp     ds:word_6E23D6, 0
jnz     short def_48F82D ; jumptable 0048F82D default case
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 0Dh
xor     bh, bh
mov     ds:byte_77EA5F, bh
mov     word ptr ds:dword_77EA4E+2, 708h
mov     word ptr ds:dword_77EA52, 0FF7Fh
mov     word ptr ds:dword_77EA52+2, 50h ; 'P'
mov     word ptr ds:dword_77EA5A, 800h
xor     al, al
mov     byte ptr ds:dword_77EA5A+3, al
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
mov     [edx], al
call    sub_4D8EB1
or      byte ptr [ecx], 1
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, 54h ; 'T'
call    sub_47E8B8

def_48F82D:             ; jumptable 0048F82D default case
pop     edx
pop     ecx
pop     ebx
retn
sub_48F813 endp




sub_48F96B proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48F971[edx*4]
pop     edx
retn
sub_48F96B endp

db 90h
jpt_48F9A3 dd offset loc_48F9AA ; jump table for switch statement
dd offset loc_48F9C8
dd offset loc_48FA47
dd offset loc_48FA58
dd offset loc_48FA6E



sub_48F98F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_48F9A3      ; jumptable 0048F9A3 default case
xor     edx, edx
mov     dl, al
jmp     jpt_48F9A3[edx*4] ; switch jump

loc_48F9AA:             ; jumptable 0048F9A3 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_48F9A3      ; jumptable 0048F9A3 default case
mov     eax, 10h
call    sub_4D9040
jmp     short loc_48FA42

loc_48F9C8:             ; jumptable 0048F9A3 case 1
cmp     ds:byte_77EAB8, 0
jnz     def_48F9A3      ; jumptable 0048F9A3 default case
and     ds:byte_5F8364, 0FCh
mov     edx, 5
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     edx, 80h
mov     eax, 28h ; '('
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Ah], 2
mov     ds:dword_77E6B4, offset unk_524DC8
mov     dword ptr [ecx+0A4h], offset unk_524F20
mov     eax, offset unk_524DA0
call    sub_49DB4D
mov     eax, offset unk_524DB4
call    sub_49DB4D

loc_48FA38:
call    sub_49DBD1
call    sub_49DECF

loc_48FA42:
inc     byte ptr [ecx+5]
jmp     short def_48F9A3 ; jumptable 0048F9A3 default case

loc_48FA47:             ; jumptable 0048F9A3 case 2
cmp     ds:word_6E23D6, 0
jnz     short loc_48FAA5
inc     al
mov     [ecx+5], al
jmp     short loc_48FAA5

loc_48FA58:             ; jumptable 0048F9A3 case 3
mov     eax, 25000Ch
call    sub_4D8E42
mov     eax, 1
call    sub_49E0D7
jmp     short loc_48FA38

loc_48FA6E:             ; jumptable 0048F9A3 case 4
call    sub_4D8ECC
test    eax, eax
jz      short loc_48FAA5
cmp     ds:word_6E23D6, 0
jnz     short loc_48FAA5
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_524E18
mov     dword ptr [ecx+0A4h], offset unk_524F30
and     byte ptr [ecx+0Ah], 3
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

loc_48FAA5:
call    sub_49DBD1
call    sub_49DECF

def_48F9A3:             ; jumptable 0048F9A3 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_48FABC
or      byte ptr [ecx+0Ah], 1

loc_48FABC:
pop     edx
pop     ecx
pop     ebx
retn
sub_48F98F endp




sub_48FAC0 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jnz     short loc_48FAD1
mov     eax, 0Ah
jmp     short loc_48FB0B

loc_48FAD1:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
cmp     byte ptr [edx+0Ah], 3
jnz     short loc_48FAF0
mov     eax, [edx+28h]
mov     byte ptr [eax+8], 2
mov     eax, 8
jmp     short loc_48FB0B

loc_48FAF0:
call    sub_47EBCB
test    eax, eax
jz      short loc_48FB17
test    byte ptr [edx+0Ah], 2
jz      short loc_48FB06
mov     eax, [edx+28h]
mov     byte ptr [eax+8], 2

loc_48FB06:
mov     eax, 8

loc_48FB0B:
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_48FB17:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_48FAC0 endp




sub_48FB24 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     ds:word_6E23D6, 0
jnz     loc_48FBBC
mov     al, [eax+5]
cmp     al, 1
jb      short loc_48FB48
jbe     short loc_48FB59
cmp     al, 2
jz      short loc_48FB82
jmp     loc_48FBBC

loc_48FB48:
test    al, al
jnz     short loc_48FBBC
mov     eax, [ecx+24h]
call    sub_4DE336

loc_48FB54:
inc     byte ptr [ecx+5]
jmp     short loc_48FBBC

loc_48FB59:
call    sub_4D8EB1
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 3
jmp     short loc_48FB54

loc_48FB82:
mov     edx, 0Ah
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, 529h
call    sub_47E8B8
mov     eax, 0Eh
call    sub_47EEAE
mov     eax, 20h ; ' '
call    sub_4D9040
mov     byte ptr [ecx], 0
mov     eax, 2
call    sub_49E0D7

loc_48FBBC:
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_48FBCC
call    sub_49DBD1
call    sub_49DECF

loc_48FBCC:
pop     edx
pop     ecx
retn
sub_48FB24 endp




sub_48FBCF proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 39h ; '9'
jb      short loc_48FC13
jbe     loc_48FC57
cmp     edx, 55h ; 'U'
jb      short loc_48FC01
jbe     loc_48FC57
cmp     edx, 8Dh
jb      loc_48FC67
jbe     short loc_48FC41
cmp     edx, 0CDh
jz      short loc_48FC4A
pop     edx
retn

loc_48FC01:
cmp     edx, 43h ; 'C'
jb      loc_48FC67
jbe     short loc_48FC38
cmp     edx, 48h ; 'H'

loc_48FC0F:
jz      short loc_48FC57
pop     edx
retn

loc_48FC13:
cmp     edx, 9
jb      short loc_48FC26
jbe     short loc_48FC57
cmp     edx, 19h
jb      short loc_48FC67
jbe     short loc_48FC57
cmp     edx, 29h ; ')'
jmp     short loc_48FC0F

loc_48FC26:
cmp     edx, 5
jnz     short loc_48FC67
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 1

loc_48FC32:
mov     byte ptr [eax+0Ah], 0
pop     edx
retn

loc_48FC38:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 2
jmp     short loc_48FC32

loc_48FC41:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 3
jmp     short loc_48FC32

loc_48FC4A:
and     byte ptr [eax+0Ah], 1
mov     eax, [eax+28h]
mov     byte ptr [eax+8], 2
pop     edx
retn

loc_48FC57:
mov     edx, [eax+24h]
add     edx, 14h
mov     eax, 90h
call    sub_4D8BC3

loc_48FC67:
pop     edx

locret_48FC68:
retn
sub_48FBCF endp




sub_48FC69 proc near
cmp     dword ptr [eax+10h], 1Eh
jnz     short locret_48FC7A
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

locret_48FC7A:
retn
sub_48FC69 endp




sub_48FC7B proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48FC81[edx*4]
pop     edx
retn
sub_48FC7B endp

db 90h
jpt_48FCB0 dd offset loc_48FCB7 ; jump table for switch statement
dd offset loc_48FCEE
dd offset loc_48FD1C
dd offset loc_48FD59



sub_48FC9B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_48FCB0      ; jumptable 0048FCB0 default case
and     eax, 0FFh
jmp     jpt_48FCB0[eax*4] ; switch jump

loc_48FCB7:             ; jumptable 0048FCB0 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_48FCB0      ; jumptable 0048FCB0 default case
mov     byte ptr ds:dword_5F836C, 3
xor     al, al
mov     byte ptr ds:dword_5F836C+1, al
and     ds:byte_5F8364, 0FDh
inc     byte ptr [ecx+5]
mov     ds:word_55A5B4, 190h
pop     edx
pop     ecx
pop     ebx
retn

loc_48FCEE:             ; jumptable 0048FCB0 case 1
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, offset unk_524F60
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
mov     eax, 250008h
call    sub_4D8E42
inc     byte ptr [ecx+5]
pop     edx
pop     ecx
pop     ebx
retn

loc_48FD1C:             ; jumptable 0048FCB0 case 2
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
mov     ds:dword_77E6B4, offset unk_52502C
mov     dword ptr [ecx+0A4h], offset unk_525078
mov     eax, 2
call    sub_49E0D7
call    sub_49DBD1
call    sub_49DECF
inc     byte ptr [ecx+5]

loc_48FD59:             ; jumptable 0048FCB0 case 3
call    sub_49DBD1
call    sub_49DECF
cmp     ds:word_6E23D6, 0
jnz     short def_48FCB0 ; jumptable 0048FCB0 default case
mov     ds:dword_77E6B4, offset unk_524F74
mov     dword ptr [ecx+0A4h], offset unk_524FFC
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

def_48FCB0:             ; jumptable 0048FCB0 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_48FC9B endp




sub_48FD94 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_48FDD2
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jz      short loc_48FDDA
mov     bh, [edx+0Ah]
test    bh, 80h
jnz     short loc_48FDDA
mov     cl, bh
or      cl, 1
mov     [edx+0Ah], cl
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]
jmp     short loc_48FDD6

loc_48FDD2:
add     byte ptr [edx+4], 2

loc_48FDD6:
mov     byte ptr [edx+5], 0

loc_48FDDA:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_48FD94 endp




sub_48FDE8 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_48FDFD
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]

loc_48FDFD:
cmp     ds:word_6E23D6, 0
jnz     short loc_48FE0A
inc     byte ptr [edx+4]

loc_48FE0A:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_48FDE8 endp




sub_48FE17 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_48FE2F
jbe     short loc_48FE41
cmp     al, 2
jz      short loc_48FE92
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_48FE2F:
test    al, al
jnz     loc_48FEFD
inc     al
mov     [ecx+5], al
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_48FE41:
cmp     ds:word_6E23D6, 0
jnz     loc_48FEFD
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
test    byte ptr [ecx+0Ah], 1
jz      short loc_48FE69
call    sub_4E1D8A

loc_48FE69:
call    sub_49DF64
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     bh, 1
mov     byte ptr ds:dword_77E954, bh
call    sub_42A66D
call    sub_4D8EB1
add     [ecx+5], bh
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_48FE92:
mov     byte ptr ds:dword_77EA5A+2, al
mov     ds:byte_77EA5E, 0Dh
xor     dh, dh
mov     ds:byte_77EA5F, dh
mov     word ptr ds:dword_77EA4E+2, 708h
mov     word ptr ds:dword_77EA52, 0FF7Fh
mov     word ptr ds:dword_77EA52+2, 0FFD8h
xor     edi, edi
mov     word ptr ds:dword_77EA5A, di
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, al
or      ds:byte_5F8364, 3
mov     ds:byte_5F83DA, bl
mov     ds:byte_77E807, bl
mov     eax, 1Fh
call    sub_47EA91
mov     [ecx], bl

loc_48FEFD:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_48FE17 endp



; Attributes: thunk

sub_48FF02 proc near
jmp     sub_49DF64
sub_48FF02 endp




sub_48FF07 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     edi, [eax+24h]
mov     dl, [eax+6]
test    dl, dl
jbe     short loc_48FF20
cmp     dl, 1
jz      short loc_48FF49
jmp     short def_48FFCC ; jumptable 0048FFCC default case

loc_48FF20:
mov     cx, ds:word_55A5B4
cmp     cx, 0C8h
jle     short loc_48FF3C
mov     esi, ecx
sub     esi, 8
mov     ds:word_55A5B4, si
jmp     short def_48FFCC ; jumptable 0048FFCC default case

loc_48FF3C:
cmp     dword ptr [eax+10h], 74h ; 't'
jl      short def_48FFCC ; jumptable 0048FFCC default case
inc     dl
mov     [eax+6], dl
jmp     short def_48FFCC ; jumptable 0048FFCC default case

loc_48FF49:
mov     dx, ds:word_55A5B4
cmp     dx, 3C0h
jge     short def_48FFCC ; jumptable 0048FFCC default case
mov     ebx, edx
add     ebx, 10h
mov     ds:word_55A5B4, bx

def_48FFCC:             ; jumptable 0048FFCC default case
mov     edx, dword ptr ds:unk_55A5B2
sar     edx, 10h
mov     eax, [edi+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     esi, esp
call    sub_4DD510
lea     edx, [esp+2Ch+var_1C]
mov     eax, esp
call    sub_4DD57B
mov     eax, [esp+2Ch+var_1C]
add     [edi+14h], ax
mov     eax, [esp+2Ch+var_18]
add     [edi+18h], ax
add     esp, 18h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48FF07 endp

db 8Bh, 0C0h
jpt_48FFCC dd offset loc_48FFDD ; jump table for switch statement
dd offset loc_48FFDD
dd offset loc_48FFD3
dd offset loc_48FFE2



sub_48FFB3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     edx, eax
mov     edi, [eax+24h]
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      short def_48FFCC ; jumptable 0048FFCC default case
and     eax, 0FFh
jmp     jpt_48FFCC[eax*4] ; switch jump

loc_48FFD3:             ; jumptable 0048FFCC case 2
mov     eax, 0Ah
call    sub_49E0D7

loc_48FFDD:             ; jumptable 0048FFCC cases 0,1
inc     byte ptr [edx+6]
jmp     short def_48FFCC ; jumptable 0048FFCC default case

loc_48FFE2:             ; jumptable 0048FFCC case 3
cmp     ds:word_6E23D6, 0
jnz     def_48FFCC      ; jumptable 0048FFCC default case
call    sub_49DF64
jmp     def_48FFCC      ; jumptable 0048FFCC default case
sub_48FFB3 endp




sub_48FFFA proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_490000[edx*4]
pop     edx
retn
sub_48FFFA endp

align 2
jpt_490033 dd offset loc_49003A ; jump table for switch statement
dd offset loc_490062
dd offset loc_4900E2
dd offset loc_4900FB
dd offset loc_490106



sub_49001E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_490033      ; jumptable 00490033 default case
and     eax, 0FFh
jmp     jpt_490033[eax*4] ; switch jump

loc_49003A:             ; jumptable 00490033 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_490033      ; jumptable 00490033 default case
mov     byte ptr [ecx+0Ah], 80h
mov     eax, 10h
call    sub_4D9040

loc_49005A:
inc     byte ptr [ecx+5]
jmp     def_490033      ; jumptable 00490033 default case

loc_490062:             ; jumptable 00490033 case 1
cmp     ds:byte_77EAB8, 0
jnz     def_490033      ; jumptable 00490033 default case
and     ds:byte_5F8364, 0FCh
mov     edx, 80h
mov     eax, 10h
call    sub_4DC979
mov     edx, 5
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     edx, 80h
mov     eax, 28h ; '('
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
mov     ds:dword_77E6B4, offset unk_5250A8
mov     dword ptr [ecx+0A4h], offset unk_525228
mov     eax, offset unk_525094
call    sub_49DB4D
call    sub_49DBD1
call    sub_49DECF
jmp     loc_49005A

loc_4900E2:             ; jumptable 00490033 case 2
cmp     ds:word_6E23D6, 0
jnz     short loc_490134
mov     eax, 24001Bh
call    sub_4D8E42

loc_4900F6:
inc     byte ptr [ecx+5]
jmp     short loc_490134

loc_4900FB:             ; jumptable 00490033 case 3
call    sub_4D8ECC
test    eax, eax
jz      short loc_490134
jmp     short loc_4900F6

loc_490106:             ; jumptable 00490033 case 4
cmp     ds:word_6E23D6, 0
jnz     short loc_490134
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_5250F8
mov     dword ptr [ecx+0A4h], offset unk_525238
and     byte ptr [ecx+0Ah], 1
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

loc_490134:
call    sub_49DBD1
call    sub_49DECF

def_490033:             ; jumptable 00490033 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_49014B
or      byte ptr [ecx+0Ah], 1

loc_49014B:
pop     edx
pop     ecx
pop     ebx
retn
sub_49001E endp




sub_49014F proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_490173
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jnz     short loc_490173
cmp     byte ptr [edx+0Ah], 1
jnz     short loc_49017A

loc_490173:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_49017A:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_49014F endp




sub_490187 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
call    sub_4D8EB1
mov     edx, 0Ah
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, [ecx+24h]
call    sub_4DE336
call    sub_490252
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 3
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000028h
call    sub_4D89E4
mov     byte ptr [ecx], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_490187 endp




sub_4901E4 proc near
push    edx
mov     edx, eax
mov     eax, [eax+24h]
mov     edx, [edx+10h]
cmp     edx, 14Fh
jb      short loc_490201
jbe     short loc_490217
cmp     edx, 163h
jz      short loc_49021F
pop     edx
retn

loc_490201:
cmp     edx, 0EBh
jnz     short loc_490227
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
pop     edx
retn

loc_490217:
inc     byte ptr [eax+0Dh]
inc     byte ptr [eax+0Eh]
pop     edx
retn

loc_49021F:
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_490227:
pop     edx

locret_490228:
retn
sub_4901E4 endp




sub_490229 proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jbe     short loc_490238
cmp     edx, 64h ; 'd'
jz      short loc_490245
pop     edx
retn

loc_490238:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Eh], 0
pop     edx
retn

loc_490245:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Dh], 0
pop     edx
retn
sub_490229 endp




sub_490252 proc near
push    ebx
push    ecx
push    edx
call    sub_4DDFD0
test    eax, eax
jz      short loc_4902CA
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 17h
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     word ptr [eax+14h], 0FEFCh
mov     word ptr [eax+16h], 0
mov     word ptr [eax+18h], 0EA20h
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     byte ptr [eax+8], 0
push    7080h
mov     ecx, 51h ; 'Q'
xor     ebx, ebx
xor     edx, edx
call    sub_436785

loc_4902CA:
pop     edx
pop     ecx
pop     ebx
retn
sub_490252 endp




sub_4902CE proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 18h
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_4902CE endp




sub_49031A proc near

var_C= byte ptr -0Ch

push    esi
push    edi
sub     esp, 4
mov     [esp+0Ch+var_C], al
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
mov     al, [esp+0Ch+var_C]
mov     [esi+4], al
mov     [esi+5], dl
mov     [esi+6], bl
or      byte ptr [esi+7], 2
mov     edx, ds:dword_77E6DC
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
mov     edi, edx
push    0
xor     eax, eax
mov     ax, cx
shl     eax, 5
or      al, 0Fh
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 38h ; '8'
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, edi
call    sub_4F87A6
add     esp, 4
pop     edi
pop     esi

locret_4903AD:
retn
sub_49031A endp




sub_4903AE proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4903AD
mov     eax, [eax+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
xor     eax, eax
jmp     sub_4902CE
sub_4903AE endp




sub_4903C9 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490412
mov     eax, 1
call    sub_4902CE
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 0Bh
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FE480000h
mov     dword ptr [eax+24h], 0FE700000h
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
or      byte ptr [eax], 2

loc_490412:
pop     edx
retn
sub_4903C9 endp




sub_490414 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_490435
mov     eax, [eax+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+56h], 800h
mov     dword ptr [eax+1Ch], 0FEA20000h

locret_490435:
retn
sub_490414 endp




sub_490436 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49045F
mov     edx, [eax+28h]
or      byte ptr [edx], 2
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0
mov     dword ptr [edx+1Ch], 0FE5C0000h
mov     dword ptr [edx+24h], 0FF380000h
mov     word ptr [edx+56h], 0C00h

loc_49045F:
cmp     dword ptr [eax+10h], 3Eh ; '>'
jnz     short loc_490470
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_490470:
cmp     dword ptr [eax+10h], 52h ; 'R'
jnz     short loc_49048E
mov     edx, [eax+28h]
mov     dword ptr [edx+24h], 0FF420000h
mov     byte ptr [edx+14Bh], 0FFh
mov     byte ptr [edx+14Fh], 0FFh

loc_49048E:
cmp     dword ptr [eax+10h], 79h ; 'y'
jnz     short loc_49049F
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0

loc_49049F:
cmp     dword ptr [eax+10h], 0D2h
jnz     loc_49052D
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+19Eh], 2108h
mov     word ptr [eax+1AEh], 2D6Bh
mov     word ptr [eax+1C6h], 2D6Bh
mov     word ptr [eax+1B6h], 2108h
mov     word ptr [eax+1CEh], 2108h
mov     word ptr [eax+20Eh], 2108h
mov     word ptr [eax+216h], 2108h
mov     word ptr [eax+21Eh], 2108h
mov     word ptr [eax+226h], 2108h
mov     word ptr [eax+22Eh], 2108h
mov     byte ptr [eax+10Bh], 0FFh
mov     byte ptr [eax+117h], 0FFh
mov     byte ptr [eax+143h], 0
mov     byte ptr [eax+147h], 0

loc_49052D:
pop     edx
retn
sub_490436 endp




sub_49052F proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+0Ch], 0
jnz     short loc_49054E
mov     eax, 2
call    sub_4902CE
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh

loc_49054E:
pop     edx
retn
sub_49052F endp




sub_490550 proc near
push    ebx
shl     edx, 3
add     eax, edx
mov     dx, [eax+196h]
cmp     dx, 4210h
jz      short loc_490578
mov     ebx, edx
add     ebx, 421h
mov     [eax+196h], bx
cmp     bx, 4210h

loc_490578:
pop     ebx
retn
sub_490550 endp




sub_49057A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4905EB
mov     eax, 1
call    sub_4902CE
mov     eax, [ecx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FE590000h
mov     dword ptr [eax+24h], 0FF3D0000h
mov     byte ptr [eax+10Bh], 0
mov     byte ptr [eax+117h], 0
mov     byte ptr [eax+143h], 0FFh
mov     byte ptr [eax+147h], 0FFh
mov     eax, [ecx+2Ch]
or      byte ptr [eax], 2
mov     dword ptr [ecx+64h], 1
mov     dword ptr [ecx+74h], 2
mov     dword ptr [ecx+70h], 0
mov     eax, [ecx+70h]
mov     [ecx+6Ch], eax
mov     [ecx+68h], eax

loc_4905EB:
mov     ebx, [ecx+10h]
cmp     ebx, 0Eh
jl      loc_490677
cmp     ebx, 14h
jg      short loc_490677
mov     ebx, [ecx+28h]
mov     edx, 1
mov     eax, ebx
call    sub_490550
mov     edx, 3
mov     eax, ebx
call    sub_490550
mov     edx, 6
mov     eax, ebx
call    sub_490550
mov     edx, 7
mov     eax, ebx
call    sub_490550
mov     edx, 4
mov     eax, ebx
call    sub_490550
mov     edx, 0Fh
mov     eax, ebx
call    sub_490550
mov     edx, 10h
mov     eax, ebx
call    sub_490550
mov     edx, 11h
mov     eax, ebx
call    sub_490550
mov     edx, 12h
mov     eax, ebx
call    sub_490550
mov     edx, 13h
mov     eax, ebx
call    sub_490550

loc_490677:
cmp     dword ptr [ecx+10h], 39h ; '9'
jnz     short loc_490684
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1

loc_490684:
cmp     dword ptr [ecx+10h], 57h ; 'W'
jnz     short loc_490691
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 0

loc_490691:
mov     eax, [ecx+10h]
cmp     eax, 5Ah ; 'Z'
jl      short loc_4906C3
cmp     eax, 78h ; 'x'
jg      short loc_4906C3
add     dword ptr [ecx+68h], 9
add     dword ptr [ecx+6Ch], 9
add     dword ptr [ecx+70h], 9
cmp     dword ptr [ecx+68h], 0FFh
jb      short loc_4906C3
mov     dword ptr [ecx+70h], 0FFh
mov     eax, [ecx+70h]
mov     [ecx+6Ch], eax
mov     [ecx+68h], eax

loc_4906C3:
pop     edx
pop     ecx
pop     ebx
retn
sub_49057A endp




sub_4906C7 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4906E7
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0
mov     dword ptr [eax+64h], 0
mov     eax, [eax+30h]
mov     byte ptr [eax+0Eh], 80h

loc_4906E7:
pop     edx
retn
sub_4906C7 endp




sub_4906E9 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490723
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FECC0000h
mov     dword ptr [eax+24h], 0FE840000h
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 0Ch
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FE5C0000h
mov     word ptr [eax+56h], 0

loc_490723:
cmp     dword ptr [edx+10h], 11h
jnz     short loc_49073A
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+56h], 0

loc_49073A:
pop     edx
retn
sub_4906E9 endp




sub_49073C proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_490766
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 6
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1
mov     dword ptr [edx+1Ch], 0FF380000h
mov     dword ptr [edx+24h], 0FF380000h
mov     word ptr [edx+56h], 0

loc_490766:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_490773
mov     edx, [eax+28h]
mov     byte ptr [edx+0Dh], 0

loc_490773:
cmp     dword ptr [eax+10h], 66h ; 'f'
jnz     short loc_49078A
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+56h], 800h

loc_49078A:
pop     edx
retn
sub_49073C endp




sub_49078C proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4907A3
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+56h], 800h

locret_4907A3:
retn
sub_49078C endp




sub_4907A4 proc near

; FUNCTION CHUNK AT 0047BC6C SIZE 0000002C BYTES

cmp     dword ptr [eax+10h], 0Ah
jnz     short locret_4907A3
jmp     loc_47BC6C
sub_4907A4 endp




sub_4907AF proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4907C0
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0

locret_4907C0:
retn
sub_4907AF endp




sub_4907C1 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4907D2
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0

locret_4907D2:
retn
sub_4907C1 endp




sub_4907D3 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4907FD
xor     eax, eax
call    sub_4902CE
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh

loc_4907FD:
pop     edx
retn
sub_4907D3 endp




sub_4907FF proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49082C
mov     eax, 1
call    sub_4902CE
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 6
mov     byte ptr [eax+0Ah], 0

loc_49082C:
pop     edx
retn
sub_4907FF endp




sub_49082E proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490858
xor     eax, eax
call    sub_4902CE
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh

loc_490858:
pop     edx
retn
sub_49082E endp




sub_49085A proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490887
mov     eax, 1
call    sub_4902CE
mov     eax, [edx+24h]
and     byte ptr [eax], 0FCh
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2

loc_490887:
pop     edx
retn
sub_49085A endp




sub_490889 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4908AB
xor     eax, eax
call    sub_4902CE
mov     eax, [edx+24h]
or      byte ptr [eax], 3
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh

loc_4908AB:
pop     edx
retn
sub_490889 endp




sub_4908AD proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4908BA
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 2

locret_4908BA:
retn
sub_4908AD endp




sub_4908BB proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490903
mov     eax, 1
call    sub_4902CE
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 9
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FF1F0000h
mov     dword ptr [eax+20h], 0FFFB0000h
mov     dword ptr [eax+24h], 0FE700000h
mov     word ptr [eax+56h], 400h
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2

loc_490903:
cmp     dword ptr [edx+10h], 32h ; '2'
jnz     short loc_490917
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 0Ah
mov     byte ptr [eax+0Ah], 0

loc_490917:
pop     edx
retn
sub_4908BB endp




sub_490919 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49092A
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0

locret_49092A:
retn
sub_490919 endp




sub_49092B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_5252A8
mov     dword ptr [ecx+0A4h], offset unk_52566C
mov     eax, offset unk_525258
call    sub_49DB4D
mov     eax, offset unk_52526C
call    sub_49DB4D
mov     eax, offset unk_525280
call    sub_49DB4D
mov     eax, offset unk_525294
call    sub_49DB4D
mov     dword ptr [ecx+64h], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_49092B endp




sub_490982 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_490992
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_490992:
pop     edx
retn
sub_490982 endp

db 8Bh, 0C0h
jpt_4909C4 dd offset loc_4909CB ; jump table for switch statement
dd offset loc_4909F6
dd offset loc_490A12
dd offset loc_490A31
dd offset loc_490A3B
dd offset loc_490A66



sub_4909AE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_4909C4      ; jumptable 004909C4 default case
and     eax, 0FFh
jmp     jpt_4909C4[eax*4] ; switch jump

loc_4909CB:             ; jumptable 004909C4 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4909C4      ; jumptable 004909C4 default case
and     ds:byte_5F8364, 0FCh
inc     byte ptr [esi+4]
mov     eax, 25000Bh
call    sub_4D8E42
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4909F6:             ; jumptable 004909C4 case 1
call    sub_4D8ECC
test    eax, eax
jz      def_4909C4      ; jumptable 004909C4 default case
mov     dword ptr [esi+0Ch], 1Eh
inc     byte ptr [esi+4]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_490A12:             ; jumptable 004909C4 case 2
mov     ebx, [esi+0Ch]
dec     ebx
mov     [esi+0Ch], ebx
jnz     def_4909C4      ; jumptable 004909C4 default case
inc     byte ptr [esi+4]
mov     eax, 2
call    sub_49E0D7
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_490A31:             ; jumptable 004909C4 case 3
mov     eax, esi
call    sub_49092B
inc     byte ptr [esi+4]

loc_490A3B:             ; jumptable 004909C4 case 4
cmp     ds:word_6E23D6, 0
jnz     short loc_490A66 ; jumptable 004909C4 case 5
mov     eax, [esi+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_490A59
call    sub_47EBCB
test    eax, eax
jz      short loc_490A66 ; jumptable 004909C4 case 5

loc_490A59:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [esi+4]

loc_490A66:             ; jumptable 004909C4 case 5
mov     eax, esi
call    sub_490982
cmp     dword ptr [esi+64h], 0
jz      short loc_490A8D
xor     ecx, ecx
mov     cx, [esi+74h]
xor     ebx, ebx
mov     bl, [esi+70h]
xor     edx, edx
mov     dl, [esi+6Ch]
xor     eax, eax
mov     al, [esi+68h]
call    sub_49031A

loc_490A8D:
call    sub_49DBD1
call    sub_49DECF
cmp     dword ptr [esi+14h], 4680h
cmp     byte ptr [esi+4], 5
jnz     def_4909C4      ; jumptable 004909C4 default case
cmp     ds:word_6E23D6, 0
jnz     def_4909C4      ; jumptable 004909C4 default case
mov     bh, 2
mov     byte ptr ds:dword_77EA5A+2, bh
mov     ds:byte_77EA5E, 1Bh
mov     ds:byte_77EA5F, 6
mov     word ptr ds:dword_77EA4E+2, 0FFC0h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0C0h
mov     word ptr ds:dword_77EA5A, 800h
xor     al, al
mov     byte ptr ds:dword_77EA5A+3, al
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, bh
mov     [esi], al
call    sub_4D8EB1
or      ds:byte_5F8364, 1
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, 2EBh
call    sub_47EE82
mov     eax, 55h ; 'U'
call    sub_47E8B8
call    sub_47E829

def_4909C4:             ; jumptable 004909C4 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4909AE endp




sub_490B3A proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 10h
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_490B3A endp




sub_490B86 proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490BAC
mov     eax, [eax+28h]
mov     bl, [eax]
and     bl, 0FDh
mov     [eax], bl
mov     edx, [edx+24h]
mov     bh, bl
and     bh, 0FDh
mov     [eax], bh
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_490BAC:
pop     edx
pop     ebx
retn
sub_490B86 endp




sub_490BAF proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490BD6
mov     eax, 1
call    sub_490B3A
mov     eax, [edx+24h]
and     byte ptr [eax], 0FCh
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 1

loc_490BD6:
pop     edx
retn
sub_490BAF endp




sub_490BD8 proc near
cmp     dword ptr [eax+10h], 8
jnz     short locret_490BEC
mov     eax, [eax+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 1

locret_490BEC:
retn
sub_490BD8 endp




sub_490BED proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490C1B
xor     eax, eax
call    sub_490B3A
mov     eax, [edx+28h]
and     byte ptr [eax], 0FCh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [edx+24h]
or      byte ptr [eax], 3
mov     byte ptr [eax+8], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 2

loc_490C1B:
pop     edx
retn
sub_490BED endp




sub_490C1D proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+5], 0
jnz     short loc_490C56
cmp     ds:word_6E23D6, 0
jnz     short loc_490C56
mov     eax, 3
call    sub_49E0D7
mov     eax, 2
call    sub_490B3A
mov     eax, [edx+24h]
mov     byte ptr [eax+8], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 5
inc     byte ptr [edx+5]

loc_490C56:
pop     edx
retn
sub_490C1D endp




sub_490C58 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_525758
mov     dword ptr [ecx+0A4h], offset unk_5258E8
xor     edx, edx

loc_490C7E:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_52571C
call    sub_49DB4D
inc     edx
cmp     edx, 3
jl      short loc_490C7E
pop     edx
pop     ecx
pop     ebx
retn
sub_490C58 endp




sub_490C9C proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_490CAC
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_490CAC:
pop     edx
retn
sub_490C9C endp

jpt_490CFF dd offset loc_490D06 ; jump table for switch statement
dd offset loc_490D2A
dd offset loc_490D82
dd offset loc_490D9D
dd offset loc_490DAF
dd offset loc_490DBC
dd offset loc_490DC6
dd offset def_490CFF
dd offset def_490CFF
dd offset def_490CFF
dd offset loc_490DFC
jpt_490D53 dd offset loc_490D5A ; jump table for switch statement
dd offset loc_490D61
dd offset loc_490D68
dd offset loc_490D76



sub_490CEA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 0Ah         ; switch 11 cases
ja      def_490CFF      ; jumptable 00490CFF default case, cases 7-9
and     eax, 0FFh
jmp     jpt_490CFF[eax*4] ; switch jump

loc_490D06:             ; jumptable 00490CFF case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_490CFF      ; jumptable 00490CFF default case, cases 7-9
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881

def_490D53:             ; jumptable 00490D53 default case
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_490D2A:             ; jumptable 00490CFF case 1
call    sub_4D8E21
call    rand_
sar     eax, 8
and     eax, 3
mov     ds:word_55A5B8, ax
xor     dl, dl
mov     ds:byte_560BE6, dl
cmp     ax, 3           ; switch 4 cases
ja      short def_490D53 ; jumptable 00490D53 default case
and     eax, 0FFFFh
jmp     jpt_490D53[eax*4] ; switch jump

loc_490D5A:             ; jumptable 00490D53 case 0
mov     eax, 250010h
jmp     short loc_490D7B

loc_490D61:             ; jumptable 00490D53 case 1
mov     eax, 250011h
jmp     short loc_490D7B

loc_490D68:             ; jumptable 00490D53 case 2
mov     ds:byte_560BE6, 0FFh
mov     eax, 250012h
jmp     short loc_490D7B

loc_490D76:             ; jumptable 00490D53 case 3
mov     eax, 250011h

loc_490D7B:
call    sub_4D8E42
jmp     short def_490D53 ; jumptable 00490D53 default case

loc_490D82:             ; jumptable 00490CFF case 2
call    sub_4D8ECC
test    eax, eax
jz      def_490CFF      ; jumptable 00490CFF default case, cases 7-9
inc     byte ptr [ecx+4]
mov     dword ptr [ecx+0Ch], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_490D9D:             ; jumptable 00490CFF case 3
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     def_490CFF      ; jumptable 00490CFF default case, cases 7-9
jmp     def_490D53      ; jumptable 00490D53 default case

loc_490DAF:             ; jumptable 00490CFF case 4
mov     eax, 2
call    sub_49E0D7
inc     byte ptr [ecx+4]

loc_490DBC:             ; jumptable 00490CFF case 5
mov     eax, ecx
call    sub_490C58
inc     byte ptr [ecx+4]

loc_490DC6:             ; jumptable 00490CFF case 6
cmp     ds:word_6E23D6, 0
jnz     short loc_490DFC ; jumptable 00490CFF case 10
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_490DE4
call    sub_47EBCB
test    eax, eax
jz      short loc_490DFC ; jumptable 00490CFF case 10

loc_490DE4:
mov     eax, 0Ah
call    sub_49E0D7
mov     byte ptr [ecx+4], 0Ah
mov     eax, 25h ; '%'
call    sub_47E8B8

loc_490DFC:             ; jumptable 00490CFF case 10
mov     eax, ecx
call    sub_490C9C
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 0Ah
jnz     short def_490CFF ; jumptable 00490CFF default case, cases 7-9
cmp     ds:word_6E23D6, 0
jnz     short def_490CFF ; jumptable 00490CFF default case, cases 7-9
mov     bh, 2
mov     byte ptr ds:dword_77EA5A+2, bh
mov     ds:byte_77EA5E, 13h
mov     ds:byte_77EA5F, 0Bh
mov     word ptr ds:dword_77EA4E+2, 0FFC0h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0C0h
mov     word ptr ds:dword_77EA5A, 800h
xor     dl, dl
mov     byte ptr ds:dword_77EA5A+3, dl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, bh
mov     [ecx], dl
mov     ds:byte_77E7FF, 1
call    sub_4D8EB1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_490CFF:             ; jumptable 00490CFF default case, cases 7-9
pop     edx
pop     ecx
pop     ebx
retn
sub_490CEA endp




sub_490E88 proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 0Ah
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_490E88 endp




sub_490ED4 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_490EE8
mov     eax, [eax+24h]
or      byte ptr [eax], 3
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

locret_490EE8:
retn
sub_490ED4 endp




sub_490EE9 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490F08
mov     eax, 1
call    sub_490E88
mov     eax, [edx+24h]
and     byte ptr [eax], 0FCh
mov     eax, [edx+28h]
or      byte ptr [eax], 2

loc_490F08:
pop     edx

locret_490F09:
retn
sub_490EE9 endp




sub_490F0A proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490F3E
mov     eax, 2
call    sub_490E88
mov     eax, [edx+24h]
or      byte ptr [eax], 3
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh
and     ds:byte_5F8364, 0FEh

loc_490F3E:
pop     edx
retn
sub_490F0A endp




sub_490F40 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+5], 0
jnz     short loc_490F97
cmp     byte ptr ds:dword_77E7D5+1, 7
jnz     short loc_490F6B
mov     eax, 21h ; '!'
call    sub_47E888
test    eax, eax
jz      short loc_490F6B
mov     eax, [edx+0A4h]
mov     byte ptr [eax], 0FFh
pop     edx
retn

loc_490F6B:
cmp     ds:word_6E23D6, 0
jnz     short loc_490F97
mov     eax, 3
call    sub_49E0D7
xor     eax, eax
call    sub_490E88
mov     eax, [edx+24h]
or      byte ptr [eax], 3
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
inc     byte ptr [edx+5]

loc_490F97:
pop     edx
retn
sub_490F40 endp




sub_490F99 proc near
push    edx
mov     ds:dword_77E6B4, offset unk_525954
mov     dword ptr [eax+0A4h], offset unk_525AF4
xor     edx, edx

loc_490FB0:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_525918
call    sub_49DB4D
inc     edx
cmp     edx, 3
jl      short loc_490FB0
pop     edx
retn
sub_490F99 endp




sub_490FCC proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_490FDC
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_490FDC:
pop     edx
retn
sub_490FCC endp

align 10h
jpt_491027 dd offset loc_49102E ; jump table for switch statement
dd offset loc_491050
dd offset loc_491082
dd offset loc_49109E
dd offset loc_4910AD
dd offset loc_4910BA
dd offset loc_4910C4
dd offset def_491027
dd offset def_491027
dd offset def_491027
dd offset loc_4910F0



sub_49100C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 0Ah         ; switch 11 cases
ja      def_491027      ; jumptable 00491027 default case, cases 7-9
and     eax, 0FFh
jmp     jpt_491027[eax*4] ; switch jump

loc_49102E:             ; jumptable 00491027 case 0
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      def_491027      ; jumptable 00491027 default case, cases 7-9
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881

loc_491048:
inc     byte ptr [ecx+4]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_491050:             ; jumptable 00491027 case 1
call    sub_4D8E21
call    rand_
mov     edx, eax
sar     edx, 8
and     edx, 1
test    dx, dx
jbe     short loc_49106F
cmp     dx, 1
jz      short loc_491076
jmp     short loc_491048

loc_49106F:
mov     eax, 25001Ch
jmp     short loc_49107B

loc_491076:
mov     eax, 25001Dh

loc_49107B:
call    sub_4D8E42
jmp     short loc_491048

loc_491082:             ; jumptable 00491027 case 2
call    sub_4D8ECC
test    eax, eax
jz      def_491027      ; jumptable 00491027 default case, cases 7-9
inc     byte ptr [ecx+4]
mov     dword ptr [ecx+0Ch], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49109E:             ; jumptable 00491027 case 3
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     def_491027      ; jumptable 00491027 default case, cases 7-9
jmp     short loc_491048

loc_4910AD:             ; jumptable 00491027 case 4
mov     eax, 2
call    sub_49E0D7
inc     byte ptr [ecx+4]

loc_4910BA:             ; jumptable 00491027 case 5
mov     eax, ecx
call    sub_490F99
inc     byte ptr [ecx+4]

loc_4910C4:             ; jumptable 00491027 case 6
cmp     ds:word_6E23D6, 0
jnz     short loc_4910F0 ; jumptable 00491027 case 10
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_4910E2
call    sub_47EBCB
test    eax, eax
jz      short loc_4910F0 ; jumptable 00491027 case 10

loc_4910E2:
mov     eax, 0Ah
call    sub_49E0D7
mov     byte ptr [ecx+4], 0Ah

loc_4910F0:             ; jumptable 00491027 case 10
mov     eax, ecx
call    sub_490FCC
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 0Ah
jnz     def_491027      ; jumptable 00491027 default case, cases 7-9
mov     si, ds:word_6E23D6
test    si, si
jnz     def_491027      ; jumptable 00491027 default case, cases 7-9
cmp     byte ptr ds:dword_77E7D5+1, 7
jnz     short loc_49115E
mov     eax, 21h ; '!'
call    sub_47E888
test    eax, eax
jz      short loc_49115E
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, 3
mov     word ptr ds:dword_77EA4E+2, si
mov     word ptr ds:dword_77EA52, si
mov     word ptr ds:dword_77EA52+2, si
mov     word ptr ds:dword_77EA5A, si
jmp     short loc_491190

loc_49115E:
mov     ds:byte_77EA5E, 1Bh
mov     ds:byte_77EA5F, 6
mov     word ptr ds:dword_77EA4E+2, 0FFC0h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0C0h
mov     word ptr ds:dword_77EA5A, 800h

loc_491190:
mov     bl, 2
mov     byte ptr ds:dword_77EA5A+2, bl
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, bl
mov     [ecx], bh
mov     ds:byte_77E7FF, bh
or      byte ptr [edx], 1
call    sub_4D8EB1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_491027:             ; jumptable 00491027 default case, cases 7-9
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49100C endp




sub_4911CC proc near
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 0Ch
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
pop     edx

locret_491207:
retn
sub_4911CC endp




sub_491208 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49121B
mov     eax, 1
call    sub_4911CC

loc_49121B:
cmp     dword ptr [edx+10h], 0Bh
jnz     short loc_49124F
call    sub_4DE13B
test    eax, eax
jz      short loc_49124F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+0Ch], 5
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 2
mov     word ptr [eax+1Ch], 0
mov     word ptr [eax+1Eh], 0FEB3h
mov     word ptr [eax+20h], 0FC90h

loc_49124F:
pop     edx
retn
sub_491208 endp




sub_491251 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49128E
mov     eax, 2
call    sub_4911CC
mov     eax, [edx+2Ch]
or      byte ptr [eax], 6
mov     eax, [edx+30h]
or      byte ptr [eax], 6
mov     eax, [edx+34h]
or      byte ptr [eax], 6
mov     eax, [edx+38h]
or      byte ptr [eax], 6
mov     eax, [edx+44h]
or      byte ptr [eax], 6
mov     eax, [edx+40h]
or      byte ptr [eax], 6
mov     eax, [edx+3Ch]
or      byte ptr [eax], 6

loc_49128E:
cmp     dword ptr [edx+10h], 1Eh
jnz     short loc_4912E1
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+34h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+38h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+44h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+40h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+3Ch]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_4912E1:
pop     edx

locret_4912E2:
retn
sub_491251 endp




sub_4912E3 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_491320
mov     eax, 3
call    sub_4911CC
mov     eax, [edx+2Ch]
mov     byte ptr [eax], 0
mov     eax, [edx+30h]
mov     byte ptr [eax], 0
mov     eax, [edx+34h]
mov     byte ptr [eax], 0
mov     eax, [edx+38h]
mov     byte ptr [eax], 0
mov     eax, [edx+44h]
mov     byte ptr [eax], 0
mov     eax, [edx+40h]
mov     byte ptr [eax], 0
mov     eax, [edx+3Ch]
mov     byte ptr [eax], 0

loc_491320:
cmp     dword ptr [edx+10h], 0
jnz     short loc_491342
mov     eax, [edx+24h]
or      byte ptr [eax], 6
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0Ah
mov     eax, [edx+28h]
or      byte ptr [eax], 6
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0Ah

loc_491342:
pop     edx
retn
sub_4912E3 endp




sub_491344 proc near
push    ebx
push    ecx
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49138A
mov     edx, [eax+24h]
mov     byte ptr [edx], 0
mov     edx, [eax+28h]
mov     byte ptr [edx], 0
xor     ecx, ecx

loc_49135B:
mov     eax, ecx
mov     ebx, ds:dword_525E00[ecx*4]
mov     edx, ecx
shl     edx, 3
add     edx, offset unk_525DE0
xor     eax, ecx
call    sub_42C4B7
mov     edx, ebx
call    sub_4A7AE1
inc     ecx
cmp     ecx, 4
jb      short loc_49135B
xor     eax, eax
call    sub_4911CC

loc_49138A:
pop     edx
pop     ecx
pop     ebx
retn
sub_491344 endp




sub_49138E proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4913B3
mov     eax, 4
call    sub_4911CC
mov     eax, [edx+48h]
or      byte ptr [eax], 6
mov     eax, [edx+4Ch]
or      byte ptr [eax], 6
mov     eax, [edx+50h]
or      byte ptr [eax], 6

loc_4913B3:
pop     edx
retn
sub_49138E endp




sub_4913B5 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_4913DF
mov     eax, [eax+48h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 14h
mov     eax, [edx+4Ch]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 15h
mov     eax, [edx+50h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 16h

loc_4913DF:
pop     edx
retn
sub_4913B5 endp




sub_4913E1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_525C14
mov     dword ptr [ecx+0A4h], offset unk_525E10
xor     edx, edx

loc_491407:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_525B24
call    sub_49DB4D
inc     edx
cmp     edx, 0Ch
jl      short loc_491407
pop     edx
pop     ecx
pop     ebx
retn
sub_4913E1 endp




sub_491425 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_491435
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_491435:
pop     edx
retn
sub_491425 endp

align 4
jpt_49147E dd offset loc_491485 ; jump table for switch statement
dd offset loc_4914C2
dd offset loc_4914DD
dd offset loc_4914F8
dd offset loc_491507
dd offset loc_491514
dd offset loc_49151E
dd offset def_49147E
dd offset def_49147E
dd offset def_49147E
dd offset loc_49154A



sub_491464 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 0Ah         ; switch 11 cases
ja      def_49147E      ; jumptable 0049147E default case, cases 7-9
and     eax, 0FFh
jmp     jpt_49147E[eax*4] ; switch jump

loc_491485:             ; jumptable 0049147E case 0
mov     eax, ebx
call    sub_4B55D5
test    eax, eax
jz      def_49147E      ; jumptable 0049147E default case, cases 7-9
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
inc     byte ptr [ecx+4]
xor     ds:byte_5F8364, 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4914C2:             ; jumptable 0049147E case 1
call    sub_4D8E21
call    sub_4D8ED6
mov     eax, 250015h
call    sub_4D8E42

loc_4914D6:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4914DD:             ; jumptable 0049147E case 2
call    sub_4D8ECC
test    eax, eax
jz      def_49147E      ; jumptable 0049147E default case, cases 7-9
inc     byte ptr [ecx+4]
mov     dword ptr [ecx+0Ch], 5
pop     edx
pop     ecx
pop     ebx
retn

loc_4914F8:             ; jumptable 0049147E case 3
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     def_49147E      ; jumptable 0049147E default case, cases 7-9
jmp     short loc_4914D6

loc_491507:             ; jumptable 0049147E case 4
mov     eax, 3
call    sub_49E0D7
inc     byte ptr [ecx+4]

loc_491514:             ; jumptable 0049147E case 5
mov     eax, ecx
call    sub_4913E1
inc     byte ptr [ecx+4]

loc_49151E:             ; jumptable 0049147E case 6
cmp     ds:word_6E23D6, 0
jnz     short loc_49154A ; jumptable 0049147E case 10
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_49153C
call    sub_47EBCB
test    eax, eax
jz      short loc_49154A ; jumptable 0049147E case 10

loc_49153C:
mov     eax, 0Ah
call    sub_49E0D7
mov     byte ptr [ecx+4], 0Ah

loc_49154A:             ; jumptable 0049147E case 10
mov     eax, ecx
call    sub_491425
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 0Ah
jnz     def_49147E      ; jumptable 0049147E default case, cases 7-9
cmp     ds:word_6E23D6, 0
jnz     def_49147E      ; jumptable 0049147E default case, cases 7-9
mov     ah, 2
mov     byte ptr ds:dword_77EA5A+2, ah
mov     ds:byte_77EA5E, 13h
mov     ds:byte_77EA5F, ah
mov     word ptr ds:dword_77EA4E+2, 100h
mov     word ptr ds:dword_77EA52, 0FF9Fh
mov     word ptr ds:dword_77EA52+2, 80h
mov     word ptr ds:dword_77EA5A, 800h
xor     al, al
mov     byte ptr ds:dword_77EA5A+3, al
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
mov     [ecx], al
or      byte ptr [ebx], 3
mov     dword ptr [ebx+528h], 0FE0000h
mov     dword ptr [ebx+52Ch], 0FF9F0000h
mov     dword ptr [ebx+530h], 0BF0000h
lea     edx, [ebx+538h]
lea     eax, [ebx+528h]
call    sub_4DD57B
mov     word ptr [ebx+540h], 0
mov     word ptr [ebx+542h], 804h
mov     word ptr [ebx+544h], 0
call    sub_4D8EB1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_49147E:             ; jumptable 0049147E default case, cases 7-9
pop     edx
pop     ecx
pop     ebx
retn
sub_491464 endp




sub_491623 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_491629[edx*4]
pop     edx
retn
sub_491623 endp

db 90h
jpt_49165A dd offset loc_491661 ; jump table for switch statement
dd offset loc_4916EA
dd offset loc_491779
dd offset loc_491792



sub_491643 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_49165A      ; jumptable 0049165A default case
and     eax, 0FFh
jmp     jpt_49165A[eax*4] ; switch jump

loc_491661:             ; jumptable 0049165A case 0
mov     edx, 80h
mov     eax, 5Eh ; '^'
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Ah], 80h
mov     ds:dword_77E6B4, offset unk_525F40
mov     dword ptr [ecx+0A4h], offset unk_5264F8
mov     eax, offset unk_525E64
call    sub_49DB4D
mov     eax, offset unk_525E78
call    sub_49DB4D
xor     edx, edx
xor     eax, eax
call    sub_492095
xor     eax, eax
mov     ds:word_56F82C, ax
mov     ds:byte_56F80C, 3
mov     edx, 1
mov     eax, edx
call    sub_492095
xor     edx, edx
mov     ds:word_56F864, dx
mov     ds:byte_56F844, 3

loc_4916E2:
inc     byte ptr [ecx+5]
jmp     def_49165A      ; jumptable 0049165A default case

loc_4916EA:             ; jumptable 0049165A case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49165A      ; jumptable 0049165A default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
and     ds:byte_5F8364, 0FDh
xor     dl, dl
mov     ds:byte_5F83DA, dl
xor     dh, dh
mov     ds:byte_5F83D8, dl
xor     edi, edi
mov     word ptr ds:dword_5F889A+2, di
xor     eax, eax
mov     word ptr ds:dword_5F889E, ax
mov     word ptr ds:dword_5F889E+2, dx
xor     ebx, ebx
mov     ds:dword_5F888C, ebx
mov     ds:dword_5F8890, ebx
mov     ds:dword_5F8894, ebx
xor     ebx, ebx
mov     word ptr ds:dword_5F88A4, bx
xor     esi, esi
mov     word ptr ds:dword_5F88A4+2, si
mov     ds:word_5F88A8, di
mov     ds:byte_5F88AC, 30h ; '0'
jmp     loc_4916E2

loc_491779:             ; jumptable 0049165A case 2
cmp     ds:word_6E23D6, 0
jnz     short def_49165A ; jumptable 0049165A default case
mov     eax, 250002h
call    sub_4D8E42
jmp     loc_4916E2

loc_491792:             ; jumptable 0049165A case 3
call    sub_4D8ECC
test    eax, eax
jz      short def_49165A ; jumptable 0049165A default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_525F90
mov     dword ptr [ecx+0A4h], offset unk_526508
mov     ds:word_56F82C, 8Ch
mov     ds:word_56F864, 0FFC4h
and     byte ptr [ecx+0Ah], 1
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

def_49165A:             ; jumptable 0049165A default case
call    sub_47EBCB
test    eax, eax
jz      short loc_4917E6
or      byte ptr [ecx+0Ah], 1

loc_4917E6:
call    sub_49DBD1
call    sub_49DECF
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_491643 endp




sub_4917F6 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jnz     short loc_491807
mov     eax, 14h
jmp     short loc_491826

loc_491807:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jnz     short loc_491821
cmp     byte ptr [edx+0Ah], 1
jnz     short loc_491832

loc_491821:
mov     eax, 8

loc_491826:
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_491832:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_4917F6 endp




sub_49183F proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_49185F
jbe     loc_491921
cmp     al, 2
jz      loc_491943
jmp     loc_491992

loc_49185F:
test    al, al
jnz     loc_491992
cmp     ds:word_6E23D6, 0
jnz     loc_491992
xor     bh, bh
mov     ds:byte_56F80C, bh
mov     ds:byte_56F844, bh
mov     edx, 80h
mov     eax, 5Eh ; '^'
call    sub_4DC979
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     edx, edx
mov     word ptr ds:dword_5F889A+2, dx
mov     word ptr ds:dword_5F889E, 0FA3Fh
mov     word ptr ds:dword_5F889E+2, dx
xor     edx, edx
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8890, 0FA3F0000h
mov     ds:dword_5F8894, edx
xor     edi, edi
mov     ds:word_5F88A8, di
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
xor     bl, bl
mov     ds:byte_5F88AC, bl
mov     byte ptr ds:dword_5F84CB+1, bl
mov     byte ptr ds:dword_5F84CB+2, bl
call    sub_4D8EB1
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D

loc_49191C:
inc     byte ptr [ecx+5]
jmp     short loc_491992

loc_491921:
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8421, 40h
and     ds:byte_5F8364, 0FCh
xor     dh, dh
mov     ds:byte_5F83DA, dh
jmp     short loc_49191C

loc_491943:
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, 3
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, 0FA3Fh
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, 800h
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     bh, 0FFh
mov     ds:byte_77EA61, bh
mov     ds:byte_77EA60, bh
mov     [ecx], bl

loc_491992:
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_4919A2
call    sub_49DBD1
call    sub_49DECF

loc_4919A2:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_49183F endp




sub_4919A7 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 1E0h
jb      short loc_4919BF
jbe     short loc_4919D7
cmp     edx, 212h
jz      short loc_4919E0
pop     edx
retn

loc_4919BF:
cmp     edx, 186h
jnz     short loc_4919E7
mov     eax, [eax+28h]
mov     byte ptr [eax+0Ch], 1
mov     ds:byte_56F83B, 2
pop     edx
retn

loc_4919D7:
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ch], 1
pop     edx
retn

loc_4919E0:
mov     eax, [eax+28h]
mov     byte ptr [eax+0Ch], 2

loc_4919E7:
pop     edx
retn
sub_4919A7 endp




sub_4919E9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 0Fh
jb      short loc_491A28
jbe     loc_491ADB
cmp     eax, 32h ; '2'
jb      short loc_491A1A
jbe     loc_491AE2
cmp     eax, 46h ; 'F'
jz      loc_491AE9
jmp     loc_491AF0

loc_491A1A:
cmp     eax, 1Eh
jz      loc_491ADB
jmp     loc_491AF0

loc_491A28:
test    eax, eax
jbe     short loc_491A36
cmp     eax, 1
jz      short loc_491A47
jmp     loc_491AF0

loc_491A36:
mov     edx, 1
xor     eax, eax
call    sub_491F3C
jmp     loc_491AF0

loc_491A47:
xor     ah, ah
mov     ds:byte_56F844, ah
xor     edx, edx
mov     eax, 5
call    sub_492095
mov     ds:byte_56F80C, 3
mov     ds:byte_56F83B, 6
mov     eax, [ecx+24h]
call    sub_4DE2F6
mov     eax, [ecx+28h]
call    sub_4DE336
or      ds:byte_5F8364, 2
mov     ds:byte_5F88AC, 80h
mov     word ptr ds:dword_5F889A+2, 0FE5Ch
mov     word ptr ds:dword_5F889E, 14h
mov     word ptr ds:dword_5F889E+2, 0FED4h
mov     ds:dword_5F888C, 0FE5C0000h
mov     ds:dword_5F8890, 140000h
mov     ds:dword_5F8894, 0FED40000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 400h
mov     ds:word_5F88A8, ax
xor     eax, eax
jmp     short loc_491AEB

loc_491ADB:
mov     eax, 1
jmp     short loc_491AEB

loc_491AE2:
mov     eax, 2
jmp     short loc_491AEB

loc_491AE9:
xor     eax, eax

loc_491AEB:
call    sub_491FBF

loc_491AF0:
cmp     dword ptr [ecx+10h], 0
jz      short loc_491AFD
mov     eax, ebx
call    sub_492007

loc_491AFD:
pop     edx
pop     ecx
pop     ebx
retn
sub_4919E9 endp




sub_491B01 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_491B2D
xor     ah, ah
mov     ds:byte_56F80C, ah
and     ds:byte_5F8364, 0FDh
mov     eax, offset unk_525EA0
call    sub_49DB4D
mov     edx, 2
xor     eax, eax
call    sub_491F3C

loc_491B2D:
pop     edx
retn
sub_491B01 endp




sub_491B2F proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_491B43
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
inc     byte ptr [eax+0Dh]

locret_491B43:
retn
sub_491B2F endp




sub_491B44 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_491B86
mov     edx, 1
mov     eax, edx
call    sub_492095
mov     ds:byte_56F844, 3
mov     ds:byte_56F873, 6
mov     eax, [ecx+24h]
call    sub_4DE336
mov     eax, offset unk_525F04
call    sub_49DB4D
mov     edx, 3
xor     eax, eax
call    sub_491F3C

loc_491B86:
pop     edx
pop     ecx
retn
sub_491B44 endp




sub_491B89 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_491BAC
mov     eax, [eax+28h]
and     byte ptr [eax], 0FDh
mov     eax, offset unk_525EA0
call    sub_49DB4D
mov     edx, 2
xor     eax, eax
call    sub_491F3C

loc_491BAC:
pop     edx
retn
sub_491B89 endp




sub_491BAE proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_491BD1
mov     eax, [eax+24h]
call    sub_4DE336
mov     edx, [edx+28h]
or      byte ptr [edx], 2
mov     edx, 3
xor     eax, eax
call    sub_491F3C

loc_491BD1:
pop     edx
retn
sub_491BAE endp




sub_491BD3 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_491C0D
xor     ah, ah
mov     ds:byte_56F80C, ah
mov     edx, 1
mov     eax, 2
call    sub_492095
mov     ds:byte_56F844, 3
mov     eax, [ecx+28h]
call    sub_4DE2F6
mov     eax, offset unk_525E64
call    sub_49DB4D

loc_491C0D:
pop     edx
pop     ecx
retn
sub_491BD3 endp




sub_491C10 proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+10h]
cmp     eax, 1Eh
jb      short loc_491C25
jbe     short loc_491C75
cmp     eax, 50h ; 'P'
jz      short loc_491C7A
jmp     short loc_491C86

loc_491C25:
test    eax, eax
jnz     short loc_491C86
xor     dl, dl
mov     ds:byte_56F844, dl
xor     edx, edx
mov     eax, 3
call    sub_492095
mov     ds:byte_56F80C, 3
mov     ds:byte_56F83B, 6
mov     eax, [ecx+24h]
call    sub_4DE2F6
mov     eax, offset unk_525F18
call    sub_49DB4D
mov     eax, offset unk_525F2C
call    sub_49DB4D
mov     edx, 1
xor     eax, eax
call    sub_491F3C
jmp     short loc_491C86

loc_491C75:
inc     byte ptr [ecx+6]
jmp     short loc_491C86

loc_491C7A:
mov     byte ptr [ecx+6], 0
xor     edx, edx
mov     ds:dword_77E698, edx

loc_491C86:
cmp     byte ptr [ecx+6], 0
jz      short loc_491CAD
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_52659E[eax*2]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E698, eax

loc_491CAD:
pop     edx
pop     ecx
retn
sub_491C10 endp




sub_491CB0 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_491D08
mov     eax, 0Ch
call    sub_492095
mov     edx, 1
mov     eax, 6
call    sub_492095
mov     ds:byte_56F844, 3
mov     ds:byte_56F873, 2
mov     eax, [ecx+24h]
call    sub_4DE336
mov     eax, [ecx+28h]
call    sub_4DE2F6
mov     eax, offset unk_525E64
call    sub_49DB4D
mov     edx, 3
xor     eax, eax
call    sub_491F3C

loc_491D08:
pop     edx
pop     ecx
retn
sub_491CB0 endp




sub_491D0B proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_491D3E
xor     dl, dl
mov     ds:byte_56F80C, dl
mov     ds:byte_56F844, dl
mov     eax, [eax+24h]
call    sub_4DE2F6
mov     eax, offset unk_525EA0
call    sub_49DB4D
mov     edx, 2
xor     eax, eax
call    sub_491F3C

loc_491D3E:
pop     edx
retn
sub_491D0B endp




sub_491D40 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_491D97
mov     eax, 0Dh
call    sub_492095
mov     ds:byte_56F80C, 3
mov     edx, 1
mov     eax, 7
call    sub_492095
mov     ds:byte_56F844, 3
mov     ds:byte_56F873, 2
mov     eax, [ecx+24h]
call    sub_4DE336
mov     eax, offset unk_525E78
call    sub_49DB4D
mov     edx, 3
xor     eax, eax
call    sub_491F3C

loc_491D97:
pop     edx
pop     ecx
retn
sub_491D40 endp




sub_491D9A proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_491DEC
mov     eax, 8
call    sub_492095
mov     ds:byte_56F80C, 3
mov     ds:byte_56F83B, 2
mov     edx, 1
mov     eax, 9
call    sub_492095
mov     ds:byte_56F844, 3
mov     ds:byte_56F873, 6
mov     eax, [ecx+28h]
call    sub_4DE336
mov     eax, offset unk_525E64
call    sub_49DB4D

loc_491DEC:
cmp     dword ptr [ecx+10h], 7Ch ; '|'
jnz     short loc_491DF9
mov     ds:byte_56F83B, 6

loc_491DF9:
pop     edx
pop     ecx
retn
sub_491D9A endp




sub_491DFC proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_491E1F
xor     dl, dl
mov     ds:byte_56F80C, dl
mov     ds:byte_56F844, dl
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 5
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_491E1F:
pop     edx
retn
sub_491DFC endp




sub_491E21 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_491E7A
mov     eax, 0Bh
call    sub_492095
mov     ds:byte_56F80C, 3
mov     ds:byte_56F83B, 2
mov     edx, 1
mov     eax, 0Ah
call    sub_492095
mov     ds:byte_56F844, 3
mov     bl, 6
mov     ds:byte_56F873, bl
mov     eax, offset unk_525E78
call    sub_49DB4D
mov     eax, [ecx+24h]
mov     [eax+9], bl
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Ah], 0

loc_491E7A:
cmp     dword ptr [ecx+10h], 7Ah ; 'z'
jnz     short loc_491E87
mov     ds:byte_56F83B, 6

loc_491E87:
pop     edx
pop     ecx
pop     ebx
retn
sub_491E21 endp




sub_491E8B proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_491EB6
xor     dl, dl
mov     ds:byte_56F80C, dl
mov     ds:byte_56F844, dl
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 4
mov     edx, [eax+28h]
mov     byte ptr [edx+0Ah], 0
mov     eax, [eax+24h]
call    sub_4DE2F6

loc_491EB6:
pop     edx
retn
sub_491E8B endp




sub_491EB8 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_491F05
mov     eax, [eax+28h]
call    sub_4DE336
mov     eax, offset unk_525EA0
call    sub_49DB4D
mov     eax, offset unk_525EB4
call    sub_49DB4D
mov     eax, offset unk_525EC8
call    sub_49DB4D
mov     eax, offset unk_525EDC
call    sub_49DB4D
mov     eax, offset unk_525EF0
call    sub_49DB4D
mov     edx, 2
xor     eax, eax
call    sub_491F3C

loc_491F05:
pop     edx
retn
sub_491EB8 endp




sub_491F07 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_491F3A
mov     eax, [eax+28h]
call    sub_4DE2F6
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     eax, [edx+30h]
call    sub_4DE2F6
mov     eax, [edx+34h]
call    sub_4DE2F6
mov     edx, [edx+24h]
mov     byte ptr [edx+9], 6
inc     byte ptr [edx+0Dh]

loc_491F3A:
pop     edx
retn
sub_491F07 endp




sub_491F3C proc near
push    ebx
push    ecx
push    esi
push    edi
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, dl
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     cl, 0FFh
mov     ds:byte_77EA61, cl
mov     ds:byte_77EA60, cl
test    eax, eax
jz      short loc_491F96
xor     edi, edi
mov     word ptr ds:dword_77EA4E+2, di
xor     eax, eax
mov     word ptr ds:dword_77EA52, ax
xor     edx, edx
mov     word ptr ds:dword_77EA52+2, dx
xor     bl, bl
mov     word ptr ds:dword_77EA5A, bx
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_491F96:
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
xor     bl, bl
mov     word ptr ds:dword_77EA52, bx
xor     ecx, ecx
mov     word ptr ds:dword_77EA52+2, cx
xor     esi, esi
mov     word ptr ds:dword_77EA5A, si
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_491F3C endp




sub_491FBF proc near
push    ebx
push    edx
xor     dl, dl
mov     ds:byte_55A5BE, dl
mov     ds:byte_55A5BD, dl
xor     bl, bl
mov     ds:byte_55A5BC, dl
mov     edx, ds:off_5265CE[eax*4]
mov     ds:dword_55A5C4, edx
xor     bh, bh
mov     ds:byte_55A5C1, bh
mov     ds:byte_55A5C0, bh
mov     ds:byte_55A5BF, bl
mov     eax, ds:off_5265DA[eax*4]
mov     ds:dword_55A5C8, eax
pop     edx
pop     ebx
retn
sub_491FBF endp




sub_492007 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, offset byte_55A5BC
mov     ebx, dword ptr ds:unk_55A5BB
sar     ebx, 18h
mov     ecx, ds:dword_55A5C4
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_49203A
jbe     short loc_49203D
cmp     bl, 7Fh
jnz     short loc_49203A
xor     bl, bl
mov     ds:byte_55A5BE, bl
jmp     short loc_49203D

loc_49203A:
inc     byte ptr [eax+2]

loc_49203D:
movsx   ecx, byte ptr [eax+2]
mov     ebx, [eax+8]
mov     bl, [ecx+ebx]
mov     [eax], bl
mov     [eax+1], bl
mov     ebx, [eax+2]
sar     ebx, 18h
mov     ecx, [eax+0Ch]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_49206B
jbe     short loc_49206E
cmp     bl, 7Fh
jnz     short loc_49206B
mov     byte ptr [eax+5], 0
jmp     short loc_49206E

loc_49206B:
inc     byte ptr [eax+5]

loc_49206E:
mov     ecx, [eax+2]
sar     ecx, 18h
mov     ebx, [eax+0Ch]
mov     bl, [ecx+ebx]
mov     [eax+3], bl
mov     [eax+4], bl
mov     bl, [eax]
mov     [edx+168h], bl
mov     al, [eax+3]
mov     [edx+169h], al
pop     edx
pop     ecx
pop     ebx
retn
sub_492007 endp




sub_492095 proc near
push    ecx
push    esi
push    edi
mov     ah, dl
movsx   edx, al
movsx   ecx, ah
shl     ecx, 3
mov     eax, ecx
shl     eax, 3
sub     eax, ecx
mov     cx, ds:word_5265E6[edx*8]
mov     word ptr ds:dword_56F818[eax], cx
mov     ecx, ds:(dword_56F814+2)[eax]
sar     ecx, 10h
shl     ecx, 10h
mov     ds:dword_56F810[eax], ecx
mov     ecx, ds:dword_56F818[eax]
mov     ds:dword_56F824[eax], ecx
lea     edi, unk_56F81C[eax]
lea     esi, dword_56F810[eax]
movsd
movsd
mov     cx, ds:word_5265E8[edx*8]
mov     ds:word_56F82C[eax], cx
mov     dx, ds:word_5265EA[edx*8]
mov     ds:word_56F82E[eax], dx
pop     edi
pop     esi
pop     ecx
retn
sub_492095 endp




sub_492107 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_49210D[edx*4]
pop     edx
retn
sub_492107 endp




sub_492116 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_492131
jbe     short loc_49218E
cmp     al, 2
jz      loc_49222D
jmp     loc_492250

loc_492131:
test    al, al
jnz     loc_492250
mov     edx, 80h
mov     eax, 5Eh ; '^'
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_5266DC
mov     dword ptr [ecx+0A4h], offset unk_526728
mov     dword ptr [ecx+0Ch], 0
mov     eax, offset unk_526664
call    sub_49DB4D
mov     eax, offset unk_526678
call    sub_49DB4D
mov     byte ptr [ecx+0Ah], 80h

loc_492186:
inc     byte ptr [ecx+5]
jmp     loc_492250

loc_49218E:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_492250
mov     dl, 3
mov     byte ptr ds:dword_5F836C, dl
mov     dh, 1
mov     byte ptr ds:dword_5F836C+1, dh
or      ds:byte_5F8421, 10h
or      ds:byte_5F8364, dl
mov     ds:byte_5F83DA, dh
xor     ah, ah
mov     ds:byte_5F83D8, ah
mov     eax, [ecx+28h]
mov     ds:dword_5F8424, eax
xor     ebx, ebx
mov     word ptr ds:dword_5F889A+2, bx
mov     word ptr ds:dword_5F889E, 0FA3Fh
mov     word ptr ds:dword_5F889E+2, 0FF00h
xor     edx, edx
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8890, 0FA3F0000h
mov     ds:dword_5F8894, 0FF000000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 400h
mov     ds:word_5F88A8, ax
mov     ds:byte_5F88AC, 30h ; '0'
jmp     loc_492186

loc_49222D:
cmp     ds:word_6E23D6, 0
jnz     short loc_492250
mov     eax, 250003h
call    sub_4D8E42
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

loc_492250:
call    sub_47EBCB
test    eax, eax
jz      short loc_49225D
or      byte ptr [ecx+0Ah], 1

loc_49225D:
call    sub_49DBD1

loc_492262:
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_492116 endp

jpt_492294 dd offset loc_49229B ; jump table for switch statement
dd offset loc_4922D9
dd offset loc_4922EA
dd offset loc_49231D
dd offset loc_49232A



sub_49227F proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_492294      ; jumptable 00492294 default case
and     eax, 0FFh
jmp     jpt_492294[eax*4] ; switch jump

loc_49229B:             ; jumptable 00492294 case 0
call    sub_49DBD1
call    sub_4D8ECC
test    eax, eax
jz      def_492294      ; jumptable 00492294 default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_526738
mov     dword ptr [edx+0A4h], offset unk_526B28
mov     eax, 1
call    sub_49E0D7
mov     byte ptr [edx+5], 1
jmp     def_492294      ; jumptable 00492294 default case

loc_4922D9:             ; jumptable 00492294 case 1
cmp     ds:word_6E23D6, 0
jnz     short loc_4922EA ; jumptable 00492294 case 2
and     byte ptr [edx+0Ah], 7Fh
inc     byte ptr [edx+5]

loc_4922EA:             ; jumptable 00492294 case 2
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     bl, [edx+0Ah]
test    bl, 80h
jnz     short loc_492359
test    bl, 1
jz      short loc_492359
mov     cl, bl
or      cl, 2
mov     [edx+0Ah], cl
mov     eax, 8
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0
jmp     short loc_492359

loc_49231D:             ; jumptable 00492294 case 3
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
jmp     short loc_492359

loc_49232A:             ; jumptable 00492294 case 4
cmp     byte ptr [edx+8], 0FFh
jz      short loc_492352
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     bh, [edx+0Ah]
test    bh, 80h
jnz     short loc_492359
test    bh, 1
jz      short loc_492359
mov     eax, 8
call    sub_49E0D7

loc_492352:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_492359:
call    sub_49DBD1

def_492294:             ; jumptable 00492294 default case
call    sub_47EBCB
test    eax, eax
jz      loc_492262
or      byte ptr [edx+0Ah], 1
jmp     loc_492262
sub_49227F endp

db 8Dh, 40h, 0
jpt_49239D dd offset loc_4923A4 ; jump table for switch statement
dd offset loc_492454
dd offset loc_492494
dd offset loc_49249F



sub_492387 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_49239D      ; jumptable 0049239D default case
and     eax, 0FFh
jmp     jpt_49239D[eax*4] ; switch jump

loc_4923A4:             ; jumptable 0049239D case 0
cmp     ds:word_6E23D6, 0
jnz     def_49239D      ; jumptable 0049239D default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     edx, edx
mov     word ptr ds:dword_5F889A+2, dx
mov     word ptr ds:dword_5F889E, 0FA3Fh
mov     word ptr ds:dword_5F889E+2, dx
xor     edx, edx
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8890, 0FA3F0000h
mov     ds:dword_5F8894, edx
xor     edi, edi
mov     ds:word_5F88A8, di
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
xor     dh, dh
mov     ds:byte_5F88AC, dh
mov     byte ptr ds:dword_5F84CB+1, dh
mov     byte ptr ds:dword_5F84CB+2, dh
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
call    sub_4D8EB1
test    byte ptr [ecx+0Ah], 2
jz      short loc_49244C
mov     eax, 8Bh
call    sub_42BEB2

loc_49244C:
inc     byte ptr [ecx+5]
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_492454:             ; jumptable 0049239D case 1
mov     eax, offset byte_5F8364
call    sub_4B565A
and     ds:byte_5F8364, 0FCh
xor     bl, bl
mov     ds:byte_5F83DA, bl
mov     edx, 80h
mov     eax, 5Eh ; '^'
call    sub_4DC979
test    byte ptr [ecx+0Ah], 2
jz      short loc_49248B
mov     byte ptr [ecx+5], 2
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_49248B:
mov     byte ptr [ecx+5], 3
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_492494:             ; jumptable 0049239D case 2
call    sub_42C353
test    eax, eax
jnz     short def_49239D ; jumptable 0049239D default case
jmp     short loc_49244C

loc_49249F:             ; jumptable 0049239D case 3
or      ds:byte_5F8421, 40h
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, 3
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, 0FA3Fh
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, 800h
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     al, 0FFh
mov     ds:byte_77EA61, al
mov     ds:byte_77EA60, al
mov     [ecx], bh

def_49239D:             ; jumptable 0049239D default case
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_492387 endp




sub_4924F8 proc near
push    edx
cmp     dword ptr [eax+10h], 1
jnz     short loc_49250D
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 1
mov     eax, [eax+28h]
mov     byte ptr [eax+8], 2

loc_49250D:
pop     edx
retn
sub_4924F8 endp




sub_49250F proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     ebx, [eax+10h]
test    ebx, ebx
jnz     loc_49261A
mov     eax, [eax+28h]
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FC00h
mov     word ptr [eax+18h], 0
mov     [eax+1Ch], ebx
mov     dword ptr [eax+20h], 0FC000000h
mov     [eax+24h], ebx
mov     word ptr [eax+54h], 0
mov     word ptr [eax+56h], 0
mov     word ptr [eax+58h], 0
mov     byte ptr [eax+8], 3
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     ebx, ebx
mov     word ptr ds:dword_5F889A+2, bx
mov     word ptr ds:dword_5F889E, 0FA3Fh
mov     word ptr ds:dword_5F889E+2, 0FF00h
xor     edi, edi
mov     ds:dword_5F888C, edi
mov     ds:dword_5F8890, 0FA3F0000h
mov     ds:dword_5F8894, 0FF000000h
xor     eax, eax
mov     ds:word_5F88A8, ax
mov     word ptr ds:dword_5F88A4, bx
mov     word ptr ds:dword_5F88A4+2, 400h
mov     ds:byte_5F88AC, 81h
xor     eax, eax
call    sub_49299E
xor     eax, eax
call    sub_4929C1
mov     eax, [edx+24h]
mov     word ptr [eax+14h], 0F000h
mov     word ptr [eax+16h], 0EC00h
mov     word ptr [eax+18h], 1000h
mov     dword ptr [eax+1Ch], 0F0000000h
mov     dword ptr [eax+20h], 0EC000000h
mov     dword ptr [eax+24h], 10000000h
mov     [eax+54h], bx
mov     [eax+56h], bx
mov     [eax+58h], bx
mov     byte ptr [eax+9], 0
mov     byte ptr [edx+0Bh], 0
mov     byte ptr [edx+6], 0
jmp     short loc_492633

loc_49261A:
cmp     ebx, 1Eh
jnz     short loc_492633
mov     eax, 2
call    sub_49299E
mov     eax, 2
call    sub_4929C1

loc_492633:
mov     eax, edx
call    sub_4928F7
mov     eax, ecx
call    sub_4929E4
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_49250F endp




sub_492646 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 23h ; '#'
jb      short loc_492667
jbe     short loc_49267A
cmp     eax, 2Dh ; '-'
jb      short loc_492695
jbe     short loc_492673
cmp     eax, 41h ; 'A'
jz      short loc_49268B
jmp     short loc_492695

loc_492667:
cmp     eax, 19h
jnz     short loc_492695
mov     ds:byte_5F88AC, 82h

loc_492673:
mov     eax, 3
jmp     short loc_492690

loc_49267A:
mov     eax, 2
call    sub_49299E
mov     eax, 1
jmp     short loc_492690

loc_49268B:
mov     eax, 1

loc_492690:
call    sub_4929C1

loc_492695:
mov     eax, edx
call    sub_4928F7
mov     eax, ecx
call    sub_4929E4
pop     edx
pop     ecx
retn
sub_492646 endp




sub_4926A6 proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_4926EE
and     ds:byte_5F8364, 0FDh
xor     dh, dh
mov     ds:byte_5F88AC, dh
mov     edx, [eax+28h]
and     byte ptr [edx], 0FDh
mov     eax, [eax+24h]
and     byte ptr [eax], 0FDh
mov     eax, offset unk_52668C
call    sub_49DB4D
mov     eax, offset unk_5266A0
call    sub_49DB4D
mov     edx, 1
mov     eax, offset dword_77EA48
call    sub_492892
pop     edx
retn

loc_4926EE:
cmp     edx, 1
jnz     short loc_492707
call    sub_4DE1BE
test    eax, eax
jz      short loc_492707
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+0Fh], 0

loc_492707:
pop     edx

locret_492708:
retn
sub_4926A6 endp

db 8Bh, 0C0h
jpt_49273D dd offset loc_492744 ; jump table for switch statement
dd offset loc_4927B2
dd offset loc_4927C8
dd offset loc_4927D7
dd offset loc_4927EC



sub_49271F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49272E
mov     byte ptr [eax+6], 0

loc_49272E:
mov     al, [ecx+6]
cmp     al, 4           ; switch 5 cases
ja      def_49273D      ; jumptable 0049273D default case
xor     edx, edx
mov     dl, al
jmp     jpt_49273D[edx*4] ; switch jump

loc_492744:             ; jumptable 0049273D case 0
or      ds:byte_5F8364, 2
mov     eax, [ecx+28h]
or      byte ptr [eax], 2
mov     eax, [ecx+28h]
mov     byte ptr [eax+8], 4
mov     eax, [ecx+24h]
or      byte ptr [eax], 2
mov     eax, [ecx+2Ch]
call    sub_4DE336
mov     eax, [ecx+30h]
call    sub_4DE2F6
mov     dword ptr [ecx+2Ch], 0
mov     dword ptr [ecx+30h], 0
mov     edx, 3
mov     eax, offset dword_77EA48
call    sub_492892
or      byte ptr [ecx+0Ah], 80h
xor     ebx, ebx
xor     edx, edx
mov     eax, 181h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 183h
call    sub_4D89E4

loc_4927AB:
inc     byte ptr [ecx+6]
pop     edx
pop     ecx
pop     ebx
retn

loc_4927B2:             ; jumptable 0049273D case 1
cmp     dword ptr [ecx+10h], 14h
jnz     short def_49273D ; jumptable 0049273D default case
mov     eax, 8Bh
call    sub_42BEB2
mov     byte ptr [ecx+5], 3
jmp     short loc_4927AB

loc_4927C8:             ; jumptable 0049273D case 2
cmp     dword ptr [ecx+10h], 5Ah ; 'Z'
jnz     short def_49273D ; jumptable 0049273D default case
inc     al
mov     [ecx+6], al
pop     edx
pop     ecx
pop     ebx
retn

loc_4927D7:             ; jumptable 0049273D case 3
call    sub_42C353
test    eax, eax
jnz     short def_49273D ; jumptable 0049273D default case
mov     eax, 250004h
call    sub_4D8E42
jmp     short loc_4927AB

loc_4927EC:             ; jumptable 0049273D case 4
call    sub_4D8ECC
test    eax, eax
jz      short def_49273D ; jumptable 0049273D default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 182h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 184h
call    sub_4D89E4
mov     byte ptr [ecx+6], 0
call    sub_49DF64

def_49273D:             ; jumptable 0049273D default case
pop     edx
pop     ecx
pop     ebx
retn
sub_49271F endp




sub_49281E proc near
push    edx
cmp     dword ptr [eax+10h], 1
jnz     short loc_49285B
mov     byte ptr [eax+5], 4
and     byte ptr [eax+0Ah], 7Fh
and     ds:byte_5F8364, 0FDh
mov     edx, [eax+28h]
and     byte ptr [edx], 0FDh
mov     eax, [eax+24h]
call    sub_4DE336
mov     eax, offset unk_5266B4
call    sub_49DB4D
mov     edx, 2
mov     eax, offset dword_77EA48
call    sub_492892

loc_49285B:
pop     edx

locret_49285C:
retn
sub_49281E endp




sub_49285D proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49285C
mov     eax, offset unk_5266C8
jmp     sub_49DB4D
sub_49285D endp




sub_49286D proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49285C
mov     eax, [eax+38h]
jmp     sub_4DE336
sub_49286D endp




sub_49287B proc near
cmp     dword ptr [eax+10h], 154h
jnz     short locret_49285C
or      byte ptr [eax+0Ah], 80h
mov     eax, 0Ah
jmp     sub_49E0D7
sub_49287B endp




sub_492892 proc near
push    ebx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, dl
mov     dx, word ptr ds:dword_5F889A+2
mov     word ptr ds:dword_77EA4E+2, dx
mov     dx, word ptr ds:dword_5F889E
mov     word ptr ds:dword_77EA52, dx
mov     dx, word ptr ds:dword_5F889E+2
mov     word ptr ds:dword_77EA52+2, dx
mov     dx, word ptr ds:dword_5F88A4+2
mov     word ptr ds:dword_77EA5A, dx
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     bh, 0FFh
mov     ds:byte_77EA61, bh
mov     ds:byte_77EA60, bh
pop     ebx
retn
sub_492892 endp




sub_4928F7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
or      byte ptr [esi+7], 2
mov     bl, [edx+0Bh]
cmp     bl, 1Eh
jnb     short loc_492943
mov     [esi+6], bl
mov     [esi+5], bl
mov     [esi+4], bl
mov     bh, bl
inc     bh
mov     [edx+0Bh], bh
jmp     short loc_492950

loc_492943:
mov     byte ptr [esi+6], 1Eh
mov     al, [esi+6]
mov     [esi+5], al
mov     [esi+4], al

loc_492950:
mov     edx, ds:dword_77E6DC
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
mov     edi, edx
push    0
mov     ecx, 4Fh ; 'O'
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 38h ; '8'
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, edi
call    sub_4F87A6
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4928F7 endp




sub_49299E proc near
push    edx
xor     dl, dl
mov     ds:byte_55A5D6, dl
mov     ds:byte_55A5D5, dl
mov     ds:byte_55A5D4, dl
mov     eax, ds:off_526BD1[eax*4]
mov     ds:dword_55A5CC, eax
pop     edx
retn
sub_49299E endp




sub_4929C1 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A5D9, dl
mov     ds:byte_55A5D8, dl
mov     ds:byte_55A5D7, dl
mov     eax, ds:off_526BE1[eax*4]
mov     ds:dword_55A5D0, eax
pop     edx
retn
sub_4929C1 endp




sub_4929E4 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, offset dword_55A5CC
mov     ebx, ds:dword_55A5D0+3
sar     ebx, 18h
mov     ecx, ds:dword_55A5CC
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_492A17
jbe     short loc_492A1A
cmp     bl, 7Fh
jnz     short loc_492A17
xor     bl, bl
mov     ds:byte_55A5D6, bl
jmp     short loc_492A1A

loc_492A17:
inc     byte ptr [eax+0Ah]

loc_492A1A:
mov     ecx, [eax+7]
sar     ecx, 18h
mov     ebx, [eax]
mov     bl, [ecx+ebx]
mov     [eax+8], bl
mov     [eax+9], bl
mov     ebx, [eax+0Ah]
sar     ebx, 18h
mov     ecx, [eax+4]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_492A4A
jbe     short loc_492A4D
cmp     bl, 7Fh
jnz     short loc_492A4A
mov     byte ptr [eax+0Dh], 0
jmp     short loc_492A4D

loc_492A4A:
inc     byte ptr [eax+0Dh]

loc_492A4D:
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     ebx, [eax+4]
mov     bl, [ecx+ebx]
mov     [eax+0Bh], bl
mov     [eax+0Ch], bl
mov     bl, [eax+8]
mov     [edx+168h], bl
mov     al, [eax+0Bh]
mov     [edx+169h], al
pop     edx
pop     ecx
pop     ebx
retn
sub_4929E4 endp




sub_492A75 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_492A7B[edx*4]
pop     edx
retn
sub_492A75 endp

db 90h
jpt_492AAF dd offset loc_492AB6 ; jump table for switch statement
dd offset loc_492B01
dd offset loc_492B0E
dd offset loc_492BAA



sub_492A95 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_492AAF      ; jumptable 00492AAF default case
and     eax, 0FFh
jmp     jpt_492AAF[eax*4] ; switch jump

loc_492AB6:             ; jumptable 00492AAF case 0
mov     edx, 80h
mov     eax, 5Eh ; '^'
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_526CA0
mov     dword ptr [ecx+0A4h], offset unk_526CEC
mov     dword ptr [ecx+0Ch], 0
mov     eax, offset unk_526C00
call    sub_49DB4D
mov     byte ptr [ecx+0Ah], 80h

loc_492AF9:
inc     byte ptr [ecx+5]
jmp     def_492AAF      ; jumptable 00492AAF default case

loc_492B01:             ; jumptable 00492AAF case 1
mov     eax, offset unk_526C14
call    sub_49DB4D
inc     byte ptr [ecx+5]

loc_492B0E:             ; jumptable 00492AAF case 2
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      def_492AAF      ; jumptable 00492AAF default case
mov     byte ptr [edx+8], 3
mov     byte ptr [edx+9], 1
or      byte ptr [edx+0BDh], 10h
or      byte ptr [edx], 3
mov     byte ptr [edx+76h], 1
mov     byte ptr [edx+74h], 0
mov     eax, [ecx+24h]
mov     [edx+0C0h], eax
mov     word ptr [edx+538h], 0
mov     word ptr [edx+53Ah], 0D63Fh
mov     word ptr [edx+53Ch], 0FF00h
mov     dword ptr [edx+528h], 0
mov     dword ptr [edx+52Ch], 0D63F0000h
mov     dword ptr [edx+530h], 0FF000000h
mov     word ptr [edx+540h], 0
mov     word ptr [edx+542h], 400h
mov     word ptr [edx+544h], 0
mov     byte ptr [edx+548h], 30h ; '0'
mov     eax, 1
call    sub_49E0D7
jmp     loc_492AF9

loc_492BAA:             ; jumptable 00492AAF case 3
cmp     ds:word_6E23D6, 0
jnz     short def_492AAF ; jumptable 00492AAF default case
mov     eax, 250006h
call    sub_4D8E42
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

def_492AAF:             ; jumptable 00492AAF default case
call    sub_47EBCB
test    eax, eax
jz      short loc_492BDA
or      byte ptr [ecx+0Ah], 1

loc_492BDA:
call    sub_49DBD1

loc_492BDF:
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_492A95 endp

db 90h
jpt_492C0E dd offset loc_492C15 ; jump table for switch statement
dd offset loc_492C4D
dd offset loc_492C7E
dd offset loc_492C8B



sub_492BF9 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_492C0E      ; jumptable 00492C0E default case
and     eax, 0FFh
jmp     jpt_492C0E[eax*4] ; switch jump

loc_492C15:             ; jumptable 00492C0E case 0
call    sub_49DBD1
call    sub_4D8ECC
test    eax, eax
jz      def_492C0E      ; jumptable 00492C0E default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_526CFC
mov     dword ptr [edx+0A4h], offset unk_527240
and     byte ptr [edx+0Ah], 7Fh
mov     byte ptr [edx+5], 1
jmp     def_492C0E      ; jumptable 00492C0E default case

loc_492C4D:             ; jumptable 00492C0E case 1
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     al, [edx+0Ah]
test    al, 80h
jnz     short loc_492CBA
test    al, 1
jz      short loc_492CBA
mov     bl, al
or      bl, 2
mov     [edx+0Ah], bl
mov     eax, 8
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0
jmp     short loc_492CBA

loc_492C7E:             ; jumptable 00492C0E case 2
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
jmp     short loc_492CBA

loc_492C8B:             ; jumptable 00492C0E case 3
cmp     byte ptr [edx+8], 0FFh
jz      short loc_492CB3
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     bh, [edx+0Ah]
test    bh, 80h
jnz     short loc_492CBA
test    bh, 1
jz      short loc_492CBA
mov     eax, 8
call    sub_49E0D7

loc_492CB3:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_492CBA:
call    sub_49DBD1

def_492C0E:             ; jumptable 00492C0E default case
call    sub_47EBCB
test    eax, eax
jz      loc_492BDF
or      byte ptr [edx+0Ah], 1
jmp     loc_492BDF
sub_492BF9 endp

jpt_492CFB dd offset loc_492D02 ; jump table for switch statement
dd offset loc_492DA6
dd offset loc_492DE6
dd offset loc_492DF1



sub_492CE5 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_492CFB      ; jumptable 00492CFB default case
and     eax, 0FFh
jmp     jpt_492CFB[eax*4] ; switch jump

loc_492D02:             ; jumptable 00492CFB case 0
cmp     ds:word_6E23D6, 0
jnz     def_492CFB      ; jumptable 00492CFB default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     edx, edx
mov     word ptr ds:dword_5F889A+2, dx
mov     word ptr ds:dword_5F889E, 0FA3Fh
mov     word ptr ds:dword_5F889E+2, dx
xor     edx, edx
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8890, 0FA3F0000h
mov     ds:dword_5F8894, edx
xor     edi, edi
mov     ds:word_5F88A8, di
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
xor     dh, dh
mov     ds:byte_5F88AC, dh
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
call    sub_4D8EB1
test    byte ptr [ecx+0Ah], 2
jz      short loc_492D9E
mov     eax, 8Ch
call    sub_42BEB2

loc_492D9E:
inc     byte ptr [ecx+5]
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_492DA6:             ; jumptable 00492CFB case 1
mov     eax, offset byte_5F8364
call    sub_4B565A
and     ds:byte_5F8364, 0FCh
xor     bl, bl
mov     ds:byte_5F83DA, bl
mov     edx, 80h
mov     eax, 5Eh ; '^'
call    sub_4DC979
test    byte ptr [ecx+0Ah], 2
jz      short loc_492DDD
mov     byte ptr [ecx+5], 2
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_492DDD:
mov     byte ptr [ecx+5], 3
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_492DE6:             ; jumptable 00492CFB case 2
call    sub_42C353
test    eax, eax
jnz     short def_492CFB ; jumptable 00492CFB default case
jmp     short loc_492D9E

loc_492DF1:             ; jumptable 00492CFB case 3
or      ds:byte_5F8421, 40h
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, 3
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, 0FA3Fh
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, 800h
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     al, 0FFh
mov     ds:byte_77EA61, al
mov     ds:byte_77EA60, al
mov     [ecx], bh

def_492CFB:             ; jumptable 00492CFB default case
pop     edi
pop     edx
pop     ecx
pop     ebx

locret_492E49:
retn
sub_492CE5 endp




sub_492E4A proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_492E92
and     ds:byte_5F8364, 0FDh
xor     dh, dh
mov     ds:byte_5F88AC, dh
mov     edx, [eax+24h]
and     byte ptr [edx], 0FDh
mov     eax, [eax+28h]
and     byte ptr [eax], 0FDh
mov     eax, offset unk_526C28
call    sub_49DB4D
mov     eax, offset unk_526C3C
call    sub_49DB4D
mov     edx, 1
mov     eax, offset dword_77EA48
call    sub_49310F
pop     edx
retn

loc_492E92:
cmp     edx, 1
jnz     short loc_492EAB
call    sub_4DE1BE
test    eax, eax
jz      short loc_492EAB
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+0Fh], 0

loc_492EAB:
pop     edx
retn
sub_492E4A endp




sub_492EAD proc near
push    edx
mov     edx, eax
mov     eax, [eax+24h]
cmp     dword ptr [edx+10h], 0
jnz     short loc_492EF9
or      ds:byte_5F8364, 2
or      byte ptr [eax], 2
inc     byte ptr [eax+8]
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     eax, [edx+2Ch]
call    sub_4DE336
mov     eax, [edx+30h]
call    sub_4DE2F6
mov     dword ptr [edx+2Ch], 0
mov     dword ptr [edx+30h], 0
mov     edx, 3
mov     eax, offset dword_77EA48
call    sub_49310F

loc_492EF9:
pop     edx
retn
sub_492EAD endp




sub_492EFB proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_492F07
mov     eax, [eax+24h]
inc     byte ptr [eax+8]

locret_492F07:
retn
sub_492EFB endp

db 90h
jpt_492F38 dd offset loc_492F3F ; jump table for switch statement
dd offset loc_492F82
dd offset loc_492FA0
dd offset loc_492FC2
dd offset loc_492FD3
dd offset loc_492FDF
dd offset loc_492FF4

loc_492F25:
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 6           ; switch 7 cases
ja      def_492F38      ; jumptable 00492F38 default case
xor     edx, edx
mov     dl, al
jmp     jpt_492F38[edx*4] ; switch jump

loc_492F3F:             ; jumptable 00492F38 case 0
and     ds:byte_5F8364, 0FDh
mov     eax, [ecx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [ecx+24h]
inc     byte ptr [eax+8]
mov     eax, [ecx+28h]
mov     word ptr [eax+14h], 0F000h
mov     word ptr [eax+16h], 0D800h
mov     word ptr [eax+18h], 400h
mov     dword ptr [eax+1Ch], 0F0000000h
mov     dword ptr [eax+20h], 0D8000000h
mov     dword ptr [eax+24h], 4000000h

loc_492F7C:
inc     byte ptr [ecx+6]
pop     edx
pop     ecx
retn

loc_492F82:             ; jumptable 00492F38 case 1
cmp     dword ptr [ecx+10h], 50h ; 'P'
jnz     def_492F38      ; jumptable 00492F38 default case
or      byte ptr [ecx+0Ah], 80h
mov     eax, 0Eh
call    sub_49E0D7
mov     byte ptr [ecx+5], 2
jmp     short loc_492F7C

loc_492FA0:             ; jumptable 00492F38 case 2
cmp     ds:word_6E23D6, 0
jnz     short def_492F38 ; jumptable 00492F38 default case
mov     edx, 80h
mov     eax, 4
call    sub_4DC979
mov     dword ptr [ecx+28h], 0
jmp     short loc_492F7C

loc_492FC2:             ; jumptable 00492F38 case 3
cmp     dword ptr [ecx+10h], 0B4h
jl      short def_492F38 ; jumptable 00492F38 default case
inc     al
mov     [ecx+6], al
pop     edx
pop     ecx
retn

loc_492FD3:             ; jumptable 00492F38 case 4
mov     eax, 8Ch
call    sub_42BEB2
jmp     short loc_492F7C

loc_492FDF:             ; jumptable 00492F38 case 5
call    sub_42C353
test    eax, eax
jnz     short def_492F38 ; jumptable 00492F38 default case
mov     eax, 250007h
call    sub_4D8E42
jmp     short loc_492F7C

loc_492FF4:             ; jumptable 00492F38 case 6
call    sub_4D8ECC
test    eax, eax
jz      short def_492F38 ; jumptable 00492F38 default case
mov     byte ptr [ecx+6], 0
mov     eax, 7
call    sub_49E0D7
call    sub_49DF64

def_492F38:             ; jumptable 00492F38 default case
pop     edx
pop     ecx
retn



sub_493013 proc near
push    edx
mov     edx, eax
mov     al, [eax+6]
cmp     al, 1
jb      short loc_493021
jbe     short loc_493034
pop     edx
retn

loc_493021:
test    al, al
jnz     short loc_493046
mov     eax, offset unk_526C50
call    sub_49DB4D
inc     byte ptr [edx+6]
pop     edx
retn

loc_493034:
cmp     ds:word_6E23D6, 0
jnz     short loc_493046
mov     byte ptr [edx+5], 3
and     byte ptr [edx+0Ah], 7Fh

loc_493046:
pop     edx
retn
sub_493013 endp




sub_493048 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49306B
mov     eax, [eax+28h]
and     byte ptr [eax], 0FDh
mov     eax, offset unk_526C64
call    sub_49DB4D
xor     edx, edx
mov     eax, offset dword_77EA48
call    sub_49310F

loc_49306B:
pop     edx

locret_49306C:
retn
sub_493048 endp




sub_49306D proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49306C
mov     eax, offset unk_526C8C
jmp     sub_49DB4D
sub_49306D endp




sub_49307D proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49306C
mov     eax, offset unk_526C78
jmp     sub_49DB4D
sub_49307D endp




sub_49308D proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_4930F5
mov     eax, [eax+2Ch]
call    sub_4DE336
mov     [ecx+2Ch], edx
mov     eax, [ecx+30h]
call    sub_4DE336
mov     [ecx+30h], edx
mov     eax, [ecx+34h]
call    sub_4DE336
mov     [ecx+34h], edx
mov     eax, [ecx+28h]
or      byte ptr [eax], 2
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FF00h
mov     word ptr [eax+18h], 0
mov     dword ptr [eax+1Ch], 0
mov     dword ptr [eax+20h], 0FF000000h
mov     dword ptr [eax+24h], 0
mov     edx, 3
mov     eax, offset dword_77EA48
call    sub_49310F

loc_4930F5:
cmp     dword ptr [ecx+10h], 0C8h
jnz     short loc_49310C
or      byte ptr [ecx+0Ah], 80h
mov     eax, 0Ah
call    sub_49E0D7

loc_49310C:
pop     edx
pop     ecx
retn
sub_49308D endp




sub_49310F proc near
push    ebx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, dl
mov     dx, word ptr ds:dword_5F889A+2
mov     word ptr ds:dword_77EA4E+2, dx
mov     dx, word ptr ds:dword_5F889E
mov     word ptr ds:dword_77EA52, dx
mov     dx, word ptr ds:dword_5F889E+2
mov     word ptr ds:dword_77EA52+2, dx
mov     dx, word ptr ds:dword_5F88A4+2
mov     word ptr ds:dword_77EA5A, dx
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     bh, 0FFh
mov     ds:byte_77EA61, bh
mov     ds:byte_77EA60, bh
pop     ebx
retn
sub_49310F endp




sub_493174 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A5DE, dl
mov     ds:byte_55A5DD, dl
mov     ds:byte_55A5DC, dl
mov     eax, ds:off_5272BA[eax*4]
mov     ds:dword_55A5E4, eax
pop     edx
retn
sub_493174 endp




sub_493197 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A5E1, dl
mov     ds:byte_55A5E0, dl
mov     ds:byte_55A5DF, dl
mov     eax, ds:off_5272D6[eax*4]
mov     ds:dword_55A5E8, eax
pop     edx
retn
sub_493197 endp




sub_4931BA proc near
push    ebx
push    ecx
push    edx
mov     edx, offset byte_5F8364
mov     eax, offset byte_55A5DC
mov     ebx, dword ptr ds:unk_55A5DB
sar     ebx, 18h
mov     ecx, ds:dword_55A5E4
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_4931F0
jbe     short loc_4931F3
cmp     bl, 7Fh
jnz     short loc_4931F0
xor     bl, bl
mov     ds:byte_55A5DE, bl
jmp     short loc_4931F3

loc_4931F0:
inc     byte ptr [eax+2]

loc_4931F3:
movsx   ecx, byte ptr [eax+2]
mov     ebx, [eax+8]
mov     bl, [ecx+ebx]
mov     [eax], bl
mov     [eax+1], bl
mov     ebx, [eax+2]
sar     ebx, 18h
mov     ecx, [eax+0Ch]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_493221
jbe     short loc_493224
cmp     bl, 7Fh
jnz     short loc_493221
mov     byte ptr [eax+5], 0
jmp     short loc_493224

loc_493221:
inc     byte ptr [eax+5]

loc_493224:
mov     ecx, [eax+2]
sar     ecx, 18h
mov     ebx, [eax+0Ch]
mov     bl, [ecx+ebx]
mov     [eax+3], bl
mov     [eax+4], bl
mov     bl, [eax]
mov     [edx+168h], bl
mov     al, [eax+3]
mov     [edx+169h], al
pop     edx
pop     ecx
pop     ebx
retn
sub_4931BA endp




sub_49324B proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_49324B endp




sub_493297 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
mov     ah, byte ptr ds:word_77EAB6
test    ah, 10h
jz      short loc_4932D9
test    ah, 7
jz      short loc_4932DE

loc_4932D3:
mov     byte ptr [esi+4], 0
jmp     short loc_4932E2

loc_4932D9:
test    ah, 3
jnz     short loc_4932D3

loc_4932DE:
mov     byte ptr [esi+4], 64h ; 'd'

loc_4932E2:
mov     byte ptr [esi+5], 64h ; 'd'
mov     byte ptr [esi+6], 64h ; 'd'
or      byte ptr [esi+7], 2
mov     edx, ds:dword_77E6DC
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
mov     edi, edx
push    0
mov     ecx, 4Fh ; 'O'
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 38h ; '8'
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, edi
call    sub_4F87A6
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx

locret_49333B:
retn
sub_493297 endp




sub_49333C proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+10h]
cmp     eax, 1
jb      short loc_493368
jbe     short loc_49339C
cmp     eax, 15h
jb      loc_4933FB
jbe     loc_4933F5
cmp     eax, 1Fh
jz      loc_4933F5
jmp     loc_4933FB

loc_493368:
test    eax, eax
jnz     loc_4933FB
call    sub_49324B
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+24h]
inc     byte ptr [eax+8]
mov     eax, offset unk_5272F6
call    sub_49DB4D
mov     edx, 80h
mov     eax, 60h ; '`'
call    sub_4DC979
jmp     short loc_4933FB

loc_49339C:
push    0
push    0FFFFFFFDh
mov     ecx, 14h
mov     ebx, 1
mov     edx, 4
mov     eax, offset unk_52760A
call    sub_43954B
push    0
push    0FFFFFFFCh
mov     ecx, 14h
mov     ebx, 2
mov     edx, 5
mov     eax, offset unk_527612
call    sub_43954B
push    0
push    0FFFFFFFAh
mov     ecx, 14h
mov     ebx, 3
mov     edx, 0Ah
mov     eax, offset unk_52761A

loc_4933EE:
call    sub_43954B
jmp     short loc_4933FB

loc_4933F5:
mov     eax, [edx+28h]

loc_4933F8:
inc     byte ptr [eax+8]

loc_4933FB:
call    sub_493297
pop     edx
pop     ecx
pop     ebx
retn
sub_49333C endp




sub_493404 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+10h]
cmp     edx, 1
jb      short loc_493413
jbe     short loc_49343A
jmp     short loc_4933FB

loc_493413:
test    edx, edx
jnz     short loc_4933FB
mov     eax, [eax+28h]
call    sub_4DE336
mov     eax, offset unk_52730A
call    sub_49DB4D
mov     edx, 80h
mov     eax, 60h ; '`'
call    sub_4DC979
jmp     short loc_4933FB

loc_49343A:
push    0
push    0FFFFFFFBh
mov     ecx, 14h
mov     ebx, 3
mov     edx, 0Ah
mov     eax, offset unk_527622
call    sub_43954B
push    0
push    0FFFFFFFAh
mov     ecx, 14h
mov     ebx, 1
mov     edx, 5
mov     eax, offset unk_52762A
jmp     loc_4933EE
sub_493404 endp




sub_493474 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+10h]
cmp     edx, 1
jb      short loc_49348B
jbe     short loc_4934B9
cmp     edx, 14h
jz      short loc_4934DB
jmp     loc_4933FB

loc_49348B:
test    edx, edx
jnz     loc_4933FB
mov     eax, [eax+2Ch]
call    sub_4DE336
mov     eax, offset unk_52731E
call    sub_49DB4D
mov     edx, 80h
mov     eax, 60h ; '`'
call    sub_4DC979
jmp     loc_4933FB

loc_4934B9:
push    0
push    0FFFFFFFBh
mov     ecx, 14h
mov     ebx, 3
mov     edx, 0Ah
mov     eax, offset unk_527632
call    sub_43954B
jmp     loc_4933FB

loc_4934DB:
mov     eax, [eax+30h]
jmp     loc_4933F8
sub_493474 endp

align 4
jpt_493508 dd offset loc_49350F ; jump table for switch statement
dd offset loc_493542
dd offset loc_49355E
dd offset loc_493576

loc_4934F4:
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      def_493508      ; jumptable 00493508 default case
and     eax, 0FFh
jmp     jpt_493508[eax*4] ; switch jump

loc_49350F:             ; jumptable 00493508 case 0
mov     eax, [ecx+30h]
call    sub_4DE336
mov     eax, 3
call    sub_49324B
mov     eax, [ecx+24h]
or      byte ptr [eax], 2
mov     eax, [ecx+24h]
inc     byte ptr [eax+8]
mov     edx, 80h
mov     eax, 60h ; '`'
call    sub_4DC979

loc_49353C:
inc     byte ptr [ecx+6]
pop     edx
pop     ecx
retn

loc_493542:             ; jumptable 00493508 case 1
cmp     dword ptr [ecx+10h], 0AAh
jnz     short def_493508 ; jumptable 00493508 default case
or      byte ptr ds:dword_55A5EC, 80h
mov     eax, 0Fh
call    sub_49E0D7
jmp     short loc_49353C

loc_49355E:             ; jumptable 00493508 case 2
cmp     ds:word_6E23D6, 0
jnz     short def_493508 ; jumptable 00493508 default case
mov     eax, [ecx+24h]
call    sub_4DE336
mov     byte ptr [ecx+0Ah], 1Eh
jmp     short loc_49353C

loc_493576:             ; jumptable 00493508 case 3
mov     ah, [ecx+0Ah]
test    ah, ah
jz      short loc_493587
mov     dl, ah
dec     dl
mov     [ecx+0Ah], dl
pop     edx
pop     ecx
retn

loc_493587:
mov     eax, offset unk_527346
call    sub_49DB4D
mov     eax, offset unk_52735A
call    sub_49DB4D
mov     eax, 7
call    sub_49E0D7
mov     byte ptr [ecx+6], 0
call    sub_49DF64

def_493508:             ; jumptable 00493508 default case
pop     edx
pop     ecx
retn



sub_4935B1 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 1
jb      short loc_4935C7
jbe     loc_49369C
jmp     loc_4936B0

loc_4935C7:
test    al, al
jnz     loc_4936B0
or      ds:byte_5F8364, 3
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0A40h
mov     word ptr ds:dword_5F889E, 0E795h
mov     word ptr ds:dword_5F889E+2, 0F4C4h
mov     ds:dword_5F888C, 0A400000h
mov     ds:dword_5F8890, 0E7950000h
mov     ds:dword_5F8894, 0F4C40000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, ax
mov     ds:byte_5F88AC, 84h
mov     dl, 1
mov     ds:byte_5F83DA, dl
xor     dh, dh
mov     ds:byte_5F83D8, dh
mov     eax, [ecx+28h]
mov     ds:dword_5F8424, eax
mov     ds:byte_5F84D4, dh
xor     eax, eax
call    sub_493174
xor     eax, eax
call    sub_493197
call    sub_4DE13B
test    eax, eax
jz      short loc_49367D
mov     [eax], dl
mov     byte ptr [eax+2], 12h

loc_49367D:
xor     edx, edx
jmp     short loc_493687

loc_493681:
inc     edx
cmp     edx, 9
jge     short loc_4936AD

loc_493687:
call    sub_4DE13B
test    eax, eax
jz      short loc_493681
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 16h
mov     [eax+0Ch], dl
jmp     short loc_493681

loc_49369C:
cmp     ds:word_6E23D6, 0
jnz     short loc_4936B0
and     byte ptr ds:dword_55A5EC, 7Fh

loc_4936AD:
inc     byte ptr [ecx+6]

loc_4936B0:
call    sub_4931BA
pop     edx
pop     ecx
retn
sub_4935B1 endp




sub_4936B8 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 1Eh
jb      short loc_4936D7
jbe     short loc_4936E8
cmp     edx, 0A0h
jb      short loc_493728
jbe     short loc_4936FC
cmp     edx, 0D2h
jz      short loc_493714
jmp     short loc_493728

loc_4936D7:
test    edx, edx
jbe     short loc_4936E2
cmp     edx, 0Ah
jz      short loc_4936F0
jmp     short loc_493728

loc_4936E2:
mov     edx, [eax+28h]
inc     byte ptr [edx+8]

loc_4936E8:
mov     eax, [eax+2Ch]
inc     byte ptr [eax+8]
jmp     short loc_493728

loc_4936F0:
mov     eax, 3
call    sub_493174
jmp     short loc_493728

loc_4936FC:
mov     ds:byte_5F88AC, 83h
mov     eax, 1
call    sub_493174
mov     eax, 1
jmp     short loc_493723

loc_493714:
mov     eax, 2
call    sub_493174
mov     eax, 2

loc_493723:
call    sub_493197

loc_493728:
call    sub_4931BA
pop     edx

locret_49372E:
retn
sub_4936B8 endp




sub_49372F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_49374A
jbe     short loc_4937AF
cmp     al, 2
jz      loc_4937C9
jmp     loc_4937F4

loc_49374A:
test    al, al
jnz     loc_4937F4
and     ds:byte_5F8364, 0FDh
mov     al, ds:byte_5F84D4
mov     ds:byte_55A5F0, al
xor     bl, bl
mov     ds:byte_5F84D4, bl
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52736E
mov     dword ptr [ecx+0A4h], offset unk_5273CA
mov     dword ptr [ecx+0Ch], 0
mov     eax, offset unk_5272E2
call    sub_49DB4D

loc_4937AA:
inc     byte ptr [ecx+5]
jmp     short loc_4937F4

loc_4937AF:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_4937F4
mov     eax, 1
call    sub_49E0D7
jmp     short loc_4937AA

loc_4937C9:
cmp     ds:word_6E23D6, 0
jnz     short loc_4937F4
xor     edx, edx
mov     ds:dword_55A5EC, edx
mov     eax, 250005h
call    sub_4D8E42
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

loc_4937F4:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_49372F endp




sub_493802 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_493816
cmp     al, 1
jz      short loc_493842
jmp     loc_493884

loc_493816:
call    sub_49DBD1
call    sub_4D8ECC
test    eax, eax
jz      short loc_493884
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_5273DA
mov     dword ptr [edx+0A4h], offset unk_52763A
inc     byte ptr [edx+5]
jmp     short loc_493884

loc_493842:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_493878
call    sub_47EBCB
test    eax, eax
jz      short loc_49386B
test    byte ptr ds:dword_55A5EC, 80h
jnz     short loc_49386B
mov     ds:dword_55A5EC, 1
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_49386B:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
jmp     short loc_49387F

loc_493878:
add     [edx+4], al
mov     byte ptr [edx+5], 0

loc_49387F:
call    sub_49DBD1

loc_493884:
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_493802 endp




sub_49388C proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_4938A2
jbe     short loc_4938B6
cmp     al, 2
jz      short loc_493907
pop     edx
pop     ecx
pop     ebx
retn

loc_4938A2:
test    al, al
jnz     loc_493961
call    sub_4D8EB1

loc_4938AF:
inc     byte ptr [edx+5]
pop     edx
pop     ecx
pop     ebx
retn

loc_4938B6:
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA5E, 1Bh
mov     ds:byte_77EA5F, 8
mov     word ptr ds:dword_77EA4E+2, 70h ; 'p'
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0D8h
mov     word ptr ds:dword_77EA5A, 0C00h
xor     cl, cl
mov     byte ptr ds:dword_77EA5A+3, cl
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 2
jmp     short loc_4938AF

loc_493907:
cmp     al, byte ptr ds:dword_77EA5A+2
jnz     short loc_493961
call    sub_4E1D8A
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 3
xor     bh, bh
mov     byte ptr ds:dword_5F84CB+1, bh
mov     byte ptr ds:dword_5F84CB+2, bh
mov     al, ds:byte_55A5F0
mov     ds:byte_5F84D4, al
mov     ch, 1
mov     byte ptr ds:dword_77E954, ch
call    sub_42A66D
add     byte ptr ds:dword_77EA5A+2, ch
call    sub_47E829
mov     eax, 2Ah ; '*'
call    sub_47E8B8
mov     [edx], bh

loc_493961:
pop     edx
pop     ecx
pop     ebx
retn
sub_49388C endp




sub_493965 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_49396B[edx*4]
pop     edx
retn
sub_493965 endp




sub_493974 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A602, dl
mov     ds:byte_55A600, dl
mov     ds:byte_55A601, 0FFh
mov     eax, ds:off_527741[eax*4]
mov     ds:dword_55A5F8, eax
pop     edx
retn
sub_493974 endp




sub_493998 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A605, dl
mov     ds:byte_55A603, dl
mov     ds:byte_55A604, 0FFh
mov     eax, ds:off_52774E[eax*4]
mov     ds:dword_55A5FC, eax
pop     edx
retn
sub_493998 endp

; START OF FUNCTION CHUNK FOR sub_493A4D

loc_4939BC:
inc     byte ptr [eax+0Eh]

loc_4939BF:
mov     ecx, [eax+0Bh]
sar     ecx, 18h
mov     ebx, [eax+4]
mov     bl, [ecx+ebx]
mov     [eax+0Ch], bl
mov     [eax+0Dh], bl
mov     ebx, [eax+0Eh]
sar     ebx, 18h
mov     ecx, [eax+8]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_4939F0
jbe     short loc_4939F3
cmp     bl, 7Fh
jnz     short loc_4939F0
mov     byte ptr [eax+11h], 0
jmp     short loc_4939F3

loc_4939F0:
inc     byte ptr [eax+11h]

loc_4939F3:
mov     ecx, [eax+0Eh]
sar     ecx, 18h
mov     ebx, [eax+8]
mov     bl, [ecx+ebx]
mov     [eax+0Fh], bl
mov     [eax+10h], bl
mov     bl, [eax+0Ch]
mov     [edx+168h], bl
mov     al, [eax+0Fh]
mov     [edx+169h], al
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_493A4D



sub_493A1B proc near
push    edx
cmp     dword ptr [eax+10h], 1
jnz     short loc_493A4B
mov     ds:byte_5F88AC, 81h
mov     al, ds:byte_5F84D4
mov     ds:byte_55A609, al
mov     al, ds:byte_5F84D5
mov     ds:byte_55A608, al
xor     dl, dl
mov     ds:byte_5F84D5, dl
mov     ds:byte_5F84D4, dl

loc_493A4B:
pop     edx
retn
sub_493A1B endp




sub_493A4D proc near

; FUNCTION CHUNK AT 004939BC SIZE 0000005F BYTES

cmp     dword ptr [eax+10h], 0
jnz     short loc_493A68
mov     ds:byte_5F88AC, 82h
xor     eax, eax
call    sub_493974
xor     eax, eax
call    sub_493998

loc_493A68:
push    ebx
push    ecx
push    edx
mov     edx, offset byte_5F8364
mov     eax, offset unk_55A5F4
mov     ebx, ds:dword_55A5FC+3
sar     ebx, 18h
mov     ecx, ds:dword_55A5F8
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      loc_4939BC
jbe     loc_4939BF
cmp     bl, 7Fh
jnz     loc_4939BC
xor     bl, bl
mov     ds:byte_55A602, bl
jmp     loc_4939BF
sub_493A4D endp




sub_493AAD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_527690
mov     dword ptr [ecx+0A4h], offset unk_527752
pop     edx
pop     ecx
pop     ebx
retn
sub_493AAD endp




sub_493AD5 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_493AE5
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_493AE5:
pop     edx
retn
sub_493AD5 endp




sub_493AE7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 3
jb      short loc_493B1B
jbe     loc_493BDB
cmp     al, 5
jb      loc_493BF0
jbe     loc_493C04
cmp     al, 0Ah
jz      loc_493C3A
jmp     loc_493CD4

loc_493B1B:
cmp     al, 1
jb      short loc_493B2A
jbe     loc_493BAB
jmp     loc_493BBF

loc_493B2A:
test    al, al
jnz     loc_493CD4
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      loc_493CD4
mov     byte ptr ds:dword_5F836C, 3
mov     bh, 1
mov     byte ptr ds:dword_5F836C+1, bh
or      ds:byte_5F8421, 10h
mov     ds:dword_5F888C, 1040000h
mov     ds:dword_5F8890, 0FF9F0000h
mov     ds:dword_5F8894, 0F00000h
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     ds:word_5F88A8, di
mov     word ptr ds:dword_5F88A4+2, 0F800h
add     [ecx+4], bh
jmp     loc_493CD4

loc_493BAB:
inc     al
mov     [ecx+4], al
mov     eax, 250020h
call    sub_4D8E42
jmp     loc_493CD4

loc_493BBF:
call    sub_4D8ECC
test    eax, eax
jz      loc_493CD4
inc     byte ptr [ecx+4]
mov     dword ptr [ecx+0Ch], 5
jmp     loc_493CD4

loc_493BDB:
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     loc_493CD4
inc     byte ptr [ecx+4]
jmp     loc_493CD4

loc_493BF0:
mov     eax, 3
call    sub_49E0D7
mov     eax, ecx
call    sub_493AAD
inc     byte ptr [ecx+4]

loc_493C04:
cmp     ds:word_6E23D6, 0
jnz     short loc_493C3A
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_493C22
call    sub_47EBCB
test    eax, eax
jz      short loc_493C3A

loc_493C22:
mov     eax, 0Ah
call    sub_49E0D7
mov     eax, 21h ; '!'
call    sub_47E8B8
mov     byte ptr [ecx+4], 0Ah

loc_493C3A:
mov     eax, ecx
call    sub_493AD5
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 0Ah
jnz     loc_493CD4
mov     si, ds:word_6E23D6
test    si, si
jnz     short loc_493CD4
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 12h
xor     bl, bl
mov     ds:byte_77EA5F, bl
xor     edi, edi
mov     word ptr ds:dword_77EA4E+2, di
xor     eax, eax
mov     word ptr ds:dword_77EA52, ax
xor     bh, bh
mov     word ptr ds:dword_77EA52+2, bx
mov     word ptr ds:dword_77EA5A, si
mov     byte ptr ds:dword_77EA5A+3, bl
mov     [ecx], bl
mov     al, ds:byte_55A609
mov     [edx+170h], al
mov     al, ds:byte_55A608
mov     [edx+171h], al
mov     al, 0FFh
mov     ds:byte_77EA61, al
mov     ds:byte_77EA60, al
call    sub_4D8EB1
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     [ecx+4], bl

loc_493CD4:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_493AE7 endp

unk_493CDA db    0
db    0
dd 0
dword_493CE0 dd 0FEAC0000h, 0C80000h, 0F3800800h, 0F7680000h
dd 31520800h, 4508AD2h
call    ds:funcs_493CF8[edx*4]
pop     edx
retn
align 2
jpt_493D29 dd offset loc_493D30 ; jump table for switch statement
dd offset loc_493D8E
dd offset loc_493E26
dd offset loc_493E3F



sub_493D12 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_493D29      ; jumptable 00493D29 default case
and     eax, 0FFh
jmp     jpt_493D29[eax*4] ; switch jump

loc_493D30:             ; jumptable 00493D29 case 0
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
call    sub_4D8ED6
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0Ah], 80h
mov     ds:dword_77E6B4, offset unk_5277C8
mov     dword ptr [ecx+0A4h], offset unk_527FF4
mov     eax, offset unk_5277A0
call    sub_49DB4D
mov     eax, offset unk_5277B4
call    sub_49DB4D

loc_493D86:
inc     byte ptr [ecx+5]
jmp     def_493D29      ; jumptable 00493D29 default case

loc_493D8E:             ; jumptable 00493D29 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_493D29      ; jumptable 00493D29 default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
and     ds:byte_5F8364, 0FDh
xor     dl, dl
mov     ds:byte_5F83DA, dl
xor     dh, dh
mov     ds:byte_5F83D8, dl
xor     ebx, ebx
mov     word ptr ds:dword_5F889A+2, bx
xor     esi, esi
mov     word ptr ds:dword_5F889E, si
xor     edi, edi
mov     word ptr ds:dword_5F889E+2, di
xor     ebx, ebx
mov     ds:dword_5F888C, ebx
mov     ds:dword_5F8890, ebx
mov     ds:dword_5F8894, ebx
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, dx
xor     ebx, ebx
mov     ds:word_5F88A8, bx
mov     ds:byte_5F88AC, 30h ; '0'
xor     eax, eax
call    sub_494B70
jmp     loc_493D86

loc_493E26:             ; jumptable 00493D29 case 2
cmp     ds:word_6E23D6, 0
jnz     short def_493D29 ; jumptable 00493D29 default case
mov     eax, 240019h
call    sub_4D8E42
jmp     loc_493D86

loc_493E3F:             ; jumptable 00493D29 case 3
call    sub_4D8ECC
test    eax, eax
jz      short def_493D29 ; jumptable 00493D29 default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_527818
mov     dword ptr [ecx+0A4h], offset unk_528004
and     byte ptr [ecx+0Ah], 3
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

def_493D29:             ; jumptable 00493D29 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_493E81
or      byte ptr [ecx+0Ah], 1

loc_493E81:
call    sub_49DBD1
call    sub_49DECF

loc_493E8B:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_493D12 endp




sub_493E91 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_493EB5
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jnz     short loc_493EB5
cmp     byte ptr [edx+0Ah], 1
jnz     short loc_493EC6

loc_493EB5:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_493EC6:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_493E91 endp

db 8Dh, 40h, 0
jpt_493F02 dd offset loc_493F09 ; jump table for switch statement
dd offset loc_493F33
dd offset loc_493F4E
dd offset loc_493F60
dd offset loc_493F7F
dd offset loc_493FE3



sub_493EEE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 5           ; switch 6 cases
ja      def_493F02      ; jumptable 00493F02 default case
xor     edx, edx
mov     dl, al
jmp     jpt_493F02[edx*4] ; switch jump

loc_493F09:             ; jumptable 00493F02 case 0
cmp     ds:word_6E23D6, 0
jnz     def_493F02      ; jumptable 00493F02 default case
call    sub_4D8EB1
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979

loc_493F2B:
inc     byte ptr [ecx+5]
jmp     def_493F02      ; jumptable 00493F02 default case

loc_493F33:             ; jumptable 00493F02 case 1
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 3
xor     dl, dl
mov     ds:byte_5F83DA, dl
jmp     short loc_493F2B

loc_493F4E:             ; jumptable 00493F02 case 2
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_493F2B
mov     eax, 90h
call    sub_42BEB2
jmp     short loc_493F2B

loc_493F60:             ; jumptable 00493F02 case 3
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_493F75
call    sub_42C353
test    eax, eax
jnz     def_493F02      ; jumptable 00493F02 default case
jmp     short loc_493F2B

loc_493F75:
inc     al
mov     [ecx+5], al
jmp     def_493F02      ; jumptable 00493F02 default case

loc_493F7F:             ; jumptable 00493F02 case 4
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 19h
xor     bl, bl
mov     ds:byte_77EA5F, bl
mov     word ptr ds:dword_77EA4E+2, 0F31Ch
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0F664h
mov     word ptr ds:dword_77EA5A, 0C00h
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     al, 0FFh
mov     ds:byte_77EA61, al
mov     ds:byte_77EA60, al
jmp     loc_493F2B

loc_493FE3:             ; jumptable 00493F02 case 5
mov     eax, 1Bh
call    sub_4EE7A4
mov     eax, 1Ch
call    sub_4EE7A4
mov     eax, 1Dh
call    sub_4EE7A4
mov     eax, 25h ; '%'
call    sub_4EE7A4
mov     eax, 26h ; '&'
call    sub_4EE7A4
mov     eax, 27h ; '''
call    sub_4EE7A4
call    sub_494C46
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000026h
call    sub_4D89E4
mov     eax, 2
call    sub_49E0D7
mov     byte ptr [ecx], 0

def_493F02:             ; jumptable 00493F02 default case
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_49404F
call    sub_49DBD1
call    sub_49DECF

loc_49404F:
pop     edx
pop     ecx
pop     ebx
retn
sub_493EEE endp




sub_494053 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0EBh
jnz     short loc_4940C6
or      ds:byte_5F8364, 2
mov     ds:byte_5F88AC, 80h
mov     word ptr ds:dword_5F889A+2, 0FE3Eh
xor     ebx, ebx
mov     word ptr ds:dword_5F889E, bx
mov     word ptr ds:dword_5F889E+2, 64h ; 'd'
mov     ds:dword_5F888C, 0FE3E0000h
xor     esi, esi
mov     ds:dword_5F8890, esi
mov     ds:dword_5F8894, offset unk_640000
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 0C00h
xor     ebx, ebx
mov     ds:word_5F88A8, bx

loc_4940C6:
add     word ptr [ecx+538h], 3
mov     edx, [ecx+536h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+528h], edx
cmp     dword ptr [eax+10h], 0EBh
jle     short loc_4940FE
test    byte ptr [eax+10h], 0Fh
jnz     short loc_4940FE
mov     edx, (offset dword_5F889A+2)
mov     eax, 90h
call    sub_4D8BC3

loc_4940FE:
mov     eax, ecx
call    sub_494BB8
jmp     loc_493E8B
sub_494053 endp




sub_49410A proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 3Ch ; '<'
jb      short loc_49412B
jbe     short loc_494157
cmp     eax, 46h ; 'F'
jb      short loc_494168
jbe     short loc_494150
cmp     eax, 5Ah ; 'Z'
jz      short loc_49415E
jmp     short loc_494168

loc_49412B:
test    eax, eax
jbe     short loc_494136
cmp     eax, 14h
jz      short loc_494150
jmp     short loc_494168

loc_494136:
mov     word ptr ds:dword_5F889A+2, 0FCAEh
mov     ds:dword_5F888C, 0FCAE0000h
mov     eax, 1
jmp     short loc_494163

loc_494150:
mov     eax, 2
jmp     short loc_494163

loc_494157:
mov     eax, 3
jmp     short loc_494163

loc_49415E:
mov     eax, 4

loc_494163:
call    sub_494B70

loc_494168:
add     word ptr [ecx+538h], 4
mov     eax, [ecx+536h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+528h], eax
test    byte ptr [edx+10h], 0Fh
jnz     loc_49427D
mov     edx, (offset dword_5F889A+2)
mov     eax, 90h
call    sub_4D8BC3
jmp     loc_49427D

loc_4941A0:
push    ecx
push    edx
mov     ecx, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 0Ah
jb      short loc_4941D4
jbe     loc_49421F
cmp     eax, 3Ah ; ':'
jb      short loc_4941CA
jbe     short loc_494207
cmp     eax, 6Eh ; 'n'
jz      loc_49422D
jmp     loc_49427D

loc_4941CA:
cmp     eax, 28h ; '('
jz      short loc_494226
jmp     loc_49427D

loc_4941D4:
cmp     eax, 2
jb      short loc_4941E5
jbe     short loc_49420E
cmp     eax, 8
jz      short loc_49420E
jmp     loc_49427D

loc_4941E5:
test    eax, eax
jnz     loc_49427D
mov     word ptr ds:dword_5F889A+2, 0FF38h
mov     ds:dword_5F888C, 0FF380000h
mov     ds:byte_5F88AC, 81h

loc_494207:
mov     eax, 5
jmp     short loc_494239

loc_49420E:
mov     edx, (offset dword_5F889A+2)
mov     eax, 90h
call    sub_4D8BC3
jmp     short loc_49427D

loc_49421F:
mov     eax, 6
jmp     short loc_494239

loc_494226:
mov     eax, 7
jmp     short loc_494239

loc_49422D:
mov     ds:byte_5F88AC, 82h
mov     eax, 8

loc_494239:
call    sub_494B70
jmp     short loc_49427D

loc_494240:
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     eax, [eax+10h]
test    eax, eax
jbe     short loc_494257
cmp     eax, 3Ah ; ':'
jz      short loc_494287
jmp     short loc_49427D

loc_494257:
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 1
mov     eax, [edx+2Ch]
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
mov     byte ptr [eax+9], 1
mov     eax, [edx+30h]
mov     byte ptr [eax+0Ah], 0
mov     eax, 9

loc_494278:
call    sub_494B70

loc_49427D:
mov     eax, ecx
call    sub_494BB8
pop     edx
pop     ecx

locret_494286:
retn

loc_494287:
mov     eax, offset unk_527778
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Ah], 0
jmp     short loc_49427D
sub_49410A endp




sub_4942A1 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4942C9
mov     word ptr ds:dword_5F889E, 0FFFBh
mov     ds:dword_5F8890, 0FFFB0000h
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 2
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_4942C9:
pop     edx
retn
sub_4942A1 endp




sub_4942CB proc near
push    edx
mov     edx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     short loc_4942E8
mov     ds:byte_5F88AC, 83h
mov     eax, 0Ah

loc_4942E3:
call    sub_494B70

loc_4942E8:
mov     eax, edx
call    sub_494BB8
pop     edx
retn
sub_4942CB endp




sub_4942F1 proc near
push    ecx
push    edx
mov     ecx, offset byte_5F8364
mov     edx, [eax+10h]
cmp     edx, 0Ah
jb      short loc_49430C
jbe     short loc_49432C
cmp     edx, 14h
jz      short loc_49433D
jmp     loc_49427D

loc_49430C:
test    edx, edx
jnz     loc_49427D
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 3
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0
mov     eax, 0Ah
jmp     loc_494278

loc_49432C:
mov     ds:byte_5F88AC, 84h
mov     eax, 0Bh
jmp     loc_494278

loc_49433D:
mov     eax, 0Ch
jmp     loc_494278
sub_4942F1 endp




sub_494347 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49436F
mov     word ptr ds:dword_5F889A+2, 0FED4h
mov     ds:dword_5F888C, 0FED40000h
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 4
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_49436F:
pop     edx
retn
sub_494347 endp




sub_494371 proc near
push    edx
mov     edx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     loc_4942E8
mov     word ptr ds:dword_5F889A+2, 0FF4Ch
mov     ds:dword_5F888C, 0FF4C0000h
mov     eax, 0Eh
jmp     loc_4942E3
sub_494371 endp




sub_49439E proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 0Ah
jb      short loc_4943BB
jbe     short loc_4943FB
cmp     eax, 5Ch ; '\'
jz      short loc_494405
jmp     loc_49427D

loc_4943BB:
cmp     eax, 5
jnz     loc_49427D
mov     word ptr ds:dword_5F889E, 0FFF9h
mov     ds:dword_5F8890, 0FFF90000h
mov     ds:byte_5F88AC, 85h
mov     eax, 0Fh
call    sub_494B70
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 5
mov     eax, [edx+24h]
mov     byte ptr [eax+0Ah], 0
jmp     loc_49427D

loc_4943FB:
mov     eax, 10h
jmp     loc_494278

loc_494405:
mov     eax, 11h
jmp     loc_494278
sub_49439E endp




sub_49440F proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_494437
mov     word ptr ds:dword_5F889A+2, 0FED4h
mov     ds:dword_5F888C, 0FED40000h
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 6
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_494437:
pop     edx
retn
sub_49440F endp




sub_494439 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     short loc_49447A
mov     word ptr ds:dword_5F889A+2, 0FF4Ch
mov     ds:dword_5F888C, 0FF4C0000h
mov     ds:byte_5F88AC, 86h
mov     eax, 11h
call    sub_494B70
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 7
mov     eax, [edx+24h]
mov     byte ptr [eax+0Ah], 0

loc_49447A:
cmp     dword ptr [edx+10h], 14h
jnz     loc_49427D
mov     eax, 12h
jmp     loc_494278
sub_494439 endp




sub_49448E proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4944B6
mov     word ptr ds:dword_5F889A+2, 0FED4h
mov     ds:dword_5F888C, 0FED40000h
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 8
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_4944B6:
pop     edx
retn
sub_49448E endp




sub_4944B8 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4944F3
mov     word ptr ds:dword_5F889E+2, 12Ch
mov     ds:dword_5F8894, 12C0000h
mov     ds:byte_5F88AC, 84h
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 9
mov     eax, [edx+24h]
mov     byte ptr [eax+0Ah], 0
mov     eax, offset unk_52778C
call    sub_49DB4D

loc_4944F3:
cmp     dword ptr [edx+10h], 262h
jnz     short loc_494504
mov     eax, [edx+28h]
call    sub_4DE336

loc_494504:
pop     edx
retn
sub_4944B8 endp




sub_494506 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     loc_49427D
mov     word ptr ds:dword_5F889A+2, 0FF10h
mov     word ptr ds:dword_5F889E+2, 64h ; 'd'
mov     ds:dword_5F888C, 0FF100000h
mov     ds:dword_5F8894, offset unk_640000
xor     eax, eax
call    sub_494B70
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 0Ah
mov     edx, [edx+24h]
mov     byte ptr [edx+0Ah], 0
jmp     loc_49427D
sub_494506 endp




sub_494559 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49456E
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0Bh
mov     edx, [eax+24h]
mov     byte ptr [edx+0Ah], 0

loc_49456E:
cmp     dword ptr [eax+10h], 82h
jnz     short loc_494585
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0Ch
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_494585:
pop     edx
retn
sub_494559 endp




sub_494587 proc near
push    edx
mov     edx, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 18h
jb      short loc_4945AC
jbe     short loc_4945C5
cmp     eax, 4Ah ; 'J'
jb      loc_4942E8
jbe     short loc_4945CF
cmp     eax, 64h ; 'd'
jz      short loc_4945CF
jmp     loc_4942E8

loc_4945AC:
test    eax, eax
jnz     loc_4942E8
mov     ds:byte_5F88AC, 87h
mov     eax, 14h
jmp     loc_4942E3

loc_4945C5:
mov     eax, 19h
jmp     loc_4942E3

loc_4945CF:
mov     eax, 15h
jmp     loc_4942E3
sub_494587 endp




sub_4945D9 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4945EE
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0Dh
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_4945EE:
pop     edx
retn
sub_4945D9 endp




sub_4945F0 proc near
push    edx
mov     edx, eax
mov     eax, [eax+10h]
cmp     eax, 0Ah
jb      short loc_49460B
jbe     short loc_494631
cmp     eax, 3Ch ; '<'
jz      loc_49468F
jmp     loc_494692

loc_49460B:
test    eax, eax
jnz     loc_494692
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 2
mov     eax, [edx+2Ch]
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
mov     byte ptr [eax+9], 2
mov     eax, [edx+30h]
mov     byte ptr [eax+0Ah], 0
jmp     short loc_494692

loc_494631:
call    sub_4DE13B
test    eax, eax
jz      short loc_49465F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+0Ch], 5
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 2
mov     word ptr [eax+1Ch], 1C2h
mov     word ptr [eax+1Eh], 0FD92h
mov     word ptr [eax+20h], 1Dh

loc_49465F:
call    sub_4DE13B
test    eax, eax
jz      short loc_494692
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+0Ch], 5
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 2
mov     word ptr [eax+1Ch], 1C2h
mov     word ptr [eax+1Eh], 0FD92h
mov     word ptr [eax+20h], 0FFE0h
jmp     short loc_494692

loc_49468F:
inc     byte ptr [edx+6]

loc_494692:
cmp     byte ptr [edx+6], 0
jz      short loc_4946F3
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_5280E2[eax*2]
sar     eax, 10h
shl     eax, 10h
jmp     short loc_4946EE

loc_4946B6:
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4946D2
mov     edx, [eax+2Ch]
and     byte ptr [edx], 0FDh
mov     eax, [eax+30h]
and     byte ptr [eax], 0FDh
xor     edx, edx
xor     eax, eax
call    sub_494AFB

loc_4946D2:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_5280E2[eax*2]
sar     eax, 10h
shl     eax, 11h

loc_4946EE:
mov     ds:dword_77E698, eax

loc_4946F3:
pop     edx
retn
sub_4945F0 endp




sub_4946F5 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     ecx, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 0Ah
jb      short loc_494710
jbe     short loc_494733
cmp     eax, 32h ; '2'
jz      short loc_49473F
jmp     short loc_494746

loc_494710:
test    eax, eax
jnz     short loc_494746
mov     ds:byte_5F88AC, 89h
mov     eax, 16h
call    sub_494B70
mov     edx, 1
mov     eax, edx
call    sub_494AFB
jmp     short loc_494746

loc_494733:
mov     eax, 17h
call    sub_494B70
jmp     short loc_494746

loc_49473F:
mov     ds:byte_5F88AC, 88h

loc_494746:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_5280E2[eax*2]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E698, eax
cmp     dword ptr [ebx+10h], 32h ; '2'
jle     short loc_494787
add     word ptr [ecx+53Ch], 3
mov     eax, [ecx+536h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+530h], eax

loc_494787:
mov     eax, ecx
call    sub_494BB8
pop     edx
pop     ecx
pop     ebx
retn
sub_4946F5 endp




sub_494792 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4947C1
mov     edx, [eax+2Ch]
or      byte ptr [edx], 2
mov     edx, [eax+30h]
or      byte ptr [edx], 2
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 1
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ah], 0

loc_4947C1:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     loc_4946D2
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 3
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Ah], 0
jmp     loc_4946D2
sub_494792 endp




sub_4947DE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 50h ; 'P'
jb      short loc_4947FA
jbe     short loc_49483C
cmp     eax, 55h ; 'U'
jz      short loc_494845
jmp     short loc_49484F

loc_4947FA:
test    eax, eax
jnz     short loc_49484F
mov     eax, [ecx+2Ch]
call    sub_4DE2F6
mov     eax, [ecx+30h]
call    sub_4DE2F6
mov     word ptr ds:dword_5F889E+2, 0F2FEh
mov     eax, ds:dword_5F889A
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8894, eax
mov     ds:byte_5F88AC, 1
xor     edx, edx
mov     eax, 2
call    sub_494AFB
jmp     short loc_49484F

loc_49483C:
mov     ds:byte_5F88AC, 30h ; '0'
jmp     short loc_49484F

loc_494845:
mov     eax, 0Eh
call    sub_49E0D7

loc_49484F:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_5280E2[eax*2]
sar     eax, 10h
shl     eax, 11h
mov     ds:dword_77E698, eax
cmp     dword ptr [ecx+10h], 50h ; 'P'
jle     short loc_49488D
call    rand_
test    al, 7
jnz     short loc_49488D
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A1h
call    sub_4D89E4

loc_49488D:
cmp     dword ptr [ecx+10h], 64h ; 'd'
jge     short loc_4948AD
add     word ptr [esi+53Ch], 18h
mov     eax, [esi+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [esi+530h], eax

loc_4948AD:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4947DE endp

jpt_4948DA dd offset loc_4948E1 ; jump table for switch statement
dd offset loc_494919
dd offset loc_494935
dd offset loc_4949D7
dd offset loc_4949F1

loc_4948C6:
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_4948DA      ; jumptable 004948DA default case
and     eax, 0FFh
jmp     jpt_4948DA[eax*4] ; switch jump

loc_4948E1:             ; jumptable 004948DA case 0
cmp     ds:word_6E23D6, 0
jnz     def_4948DA      ; jumptable 004948DA default case
call    sub_4D8EB1
mov     edx, 80h
mov     eax, 5Eh ; '^'
call    sub_4DC979
mov     byte ptr [ecx+0Ah], 80h
mov     eax, 90h
call    sub_42BEB2

loc_494911:
inc     byte ptr [ecx+5]
jmp     def_4948DA      ; jumptable 004948DA default case

loc_494919:             ; jumptable 004948DA case 1
call    sub_42C353
test    eax, eax
jnz     def_4948DA      ; jumptable 004948DA default case
mov     eax, 24001Ch
call    sub_4D8E42
inc     byte ptr [ecx+0Bh]
jmp     short loc_494911

loc_494935:             ; jumptable 004948DA case 2
call    sub_4D8ECC
test    eax, eax
jz      def_4948DA      ; jumptable 004948DA default case
mov     eax, offset unk_5277A0
call    sub_49DB4D
mov     eax, offset unk_5277B4
call    sub_49DB4D
mov     word ptr ds:dword_5F88A4+2, 0C00h
mov     word ptr ds:dword_5F889A+2, 0F448h
mov     word ptr ds:dword_5F889E+2, 0F600h
mov     ds:dword_5F888C, 0F4480000h
mov     ds:dword_5F8894, 0F6000000h
mov     eax, 1Bh
call    sub_4EE7A4
mov     eax, 1Ch
call    sub_4EE7A4
mov     eax, 1Dh
call    sub_4EE7A4
mov     eax, 25h ; '%'
call    sub_4EE7A4
mov     eax, 26h ; '&'
call    sub_4EE7A4
mov     eax, 27h ; '''
call    sub_4EE7A4
xor     eax, eax
call    sub_494CAD
mov     eax, 6
call    sub_49E0D7
jmp     loc_494911

loc_4949D7:             ; jumptable 004948DA case 3
cmp     ds:word_6E23D6, 0
jnz     short def_4948DA ; jumptable 004948DA default case
and     byte ptr [ecx+0Ah], 1
mov     dword ptr [ecx+10h], 0
jmp     loc_494911

loc_4949F1:             ; jumptable 004948DA case 4
cmp     dword ptr [ecx+10h], 8Ch
jnz     short def_4948DA ; jumptable 004948DA default case
call    sub_49DF64
mov     edx, 80h
mov     eax, 60h ; '`'
call    sub_4DC979
mov     byte ptr [ecx+5], 0

def_4948DA:             ; jumptable 004948DA default case
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_5280E2[eax*2]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E698, eax
call    sub_47EBCB
test    eax, eax
jz      short loc_494A40
or      byte ptr [ecx+0Ah], 1

loc_494A40:
pop     edx
pop     ecx
retn



sub_494A43 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
cmp     ecx, 1
jnz     short loc_494A72
mov     eax, ecx
call    sub_494CAD
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 5
mov     eax, [edx+2Ch]
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
mov     byte ptr [eax+9], 5
mov     eax, [edx+30h]
mov     byte ptr [eax+0Ah], 0

loc_494A72:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_5280E2[eax*2]
sar     eax, 10h
shl     eax, 11h
mov     ds:dword_77E698, eax
pop     edx
pop     ecx
retn
sub_494A43 endp




sub_494A96 proc near
push    ecx
push    edx
push    esi
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_494ABA
mov     edx, 80h
mov     eax, 60h ; '`'
call    sub_4DC979
mov     eax, 2
call    sub_494CAD

loc_494ABA:
cmp     dword ptr [ecx+10h], 46h ; 'F'
jnz     short loc_494ACC
mov     byte ptr [ecx+6], 0
xor     esi, esi
mov     ds:dword_77E698, esi

loc_494ACC:
cmp     byte ptr [ecx+6], 0
jz      short loc_494AF7
mov     cx, ds:word_77EAB6
xor     ch, ch
and     cl, 3
and     ecx, 0FFFFh
mov     ecx, ds:dword_5280E2[ecx*2]
sar     ecx, 10h
shl     ecx, 0Fh
mov     ds:dword_77E698, ecx

loc_494AF7:
pop     esi
pop     edx
pop     ecx
retn
sub_494A96 endp




sub_494AFB proc near

var_28= word ptr -28h
var_26= word ptr -26h
var_24= word ptr -24h
var_22= word ptr -22h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 18h
mov     ecx, 6
mov     edi, esp
mov     esi, offset unk_493CDA
rep movsd
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 19h
mov     ds:byte_77EA5F, dl
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     cl, 0FFh
mov     ds:byte_77EA61, cl
mov     ds:byte_77EA60, cl
mov     dx, [esp+eax*8+28h+var_28]
mov     word ptr ds:dword_77EA4E+2, dx
mov     dx, [esp+eax*8+28h+var_26]
mov     word ptr ds:dword_77EA52, dx
mov     dx, [esp+eax*8+28h+var_24]
mov     word ptr ds:dword_77EA52+2, dx
mov     ax, [esp+eax*8+28h+var_22]
mov     word ptr ds:dword_77EA5A, ax
add     esp, 18h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_494AFB endp




sub_494B70 proc near
push    ebx
push    edx
xor     dl, dl
mov     ds:byte_55A60E, dl
mov     ds:byte_55A60D, dl
xor     bl, bl
mov     ds:byte_55A60C, dl
mov     edx, ds:off_5281E8[eax*4]
mov     ds:dword_55A614, edx
xor     bh, bh
mov     ds:byte_55A611, bh
mov     ds:byte_55A610, bh
mov     ds:byte_55A60F, bl
mov     eax, ds:off_528250[eax*4]
mov     ds:dword_55A618, eax

loc_494BB5:
pop     edx
pop     ebx
retn
sub_494B70 endp




sub_494BB8 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, offset byte_55A60C
mov     ebx, dword ptr ds:unk_55A60B
sar     ebx, 18h
mov     ecx, ds:dword_55A614
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_494BEB
jbe     short loc_494BEE
cmp     bl, 7Fh
jnz     short loc_494BEB
xor     bl, bl
mov     ds:byte_55A60E, bl
jmp     short loc_494BEE

loc_494BEB:
inc     byte ptr [eax+2]

loc_494BEE:
movsx   ecx, byte ptr [eax+2]
mov     ebx, [eax+8]
mov     bl, [ecx+ebx]
mov     [eax], bl
mov     [eax+1], bl
mov     ebx, [eax+2]
sar     ebx, 18h
mov     ecx, [eax+0Ch]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_494C1C
jbe     short loc_494C1F
cmp     bl, 7Fh
jnz     short loc_494C1C
mov     byte ptr [eax+5], 0
jmp     short loc_494C1F

loc_494C1C:
inc     byte ptr [eax+5]

loc_494C1F:
mov     ecx, [eax+2]
sar     ecx, 18h
mov     ebx, [eax+0Ch]
mov     bl, [ecx+ebx]
mov     [eax+3], bl
mov     [eax+4], bl
mov     bl, [eax]
mov     [edx+168h], bl
mov     al, [eax+3]
mov     [edx+169h], al
pop     edx
pop     ecx
pop     ebx
retn
sub_494BB8 endp




sub_494C46 proc near
push    edx
call    sub_4DDF54
test    eax, eax
jz      short loc_494CAB
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 41h ; 'A'
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     word ptr [eax+14h], 0FC18h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0F664h
mov     word ptr [eax+56h], 400h
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0

loc_494CAB:
pop     edx
retn
sub_494C46 endp




sub_494CAD proc near
push    ebx
push    edx
mov     bl, al
xor     edx, edx
jmp     short loc_494CBF

loc_494CB5:
inc     edx
cmp     edx, 2
jge     loc_494BB5

loc_494CBF:
call    sub_4DE13B
test    eax, eax
jz      short loc_494CB5
mov     ds:dword_55A61C[edx*4], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Fh
mov     [eax+3], bl
mov     [eax+0Ch], dl
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 1
mov     [eax+9], dl
mov     byte ptr [eax+0Ah], 0
jmp     short loc_494CB5
sub_494CAD endp




sub_494CF1 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A63A, dl
mov     ds:byte_55A638, dl
mov     ds:byte_55A639, 0FFh
mov     eax, ds:off_5288BE[eax*4]
mov     ds:dword_55A630, eax
pop     edx
retn
sub_494CF1 endp




sub_494D15 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A63D, dl
mov     ds:byte_55A63B, dl
mov     ds:byte_55A63C, 0FFh
mov     eax, ds:off_5289A8[eax*4]
mov     ds:dword_55A634, eax
pop     edx
retn
sub_494D15 endp




sub_494D39 proc near
push    ebx
push    ecx
push    edx
mov     edx, offset byte_5F8364
mov     eax, offset unk_55A62C
mov     ebx, ds:dword_55A634+3
sar     ebx, 18h
mov     ecx, ds:dword_55A630
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_494D6F
jbe     short loc_494D72
cmp     bl, 7Fh
jnz     short loc_494D6F
xor     bl, bl
mov     ds:byte_55A63A, bl
jmp     short loc_494D72

loc_494D6F:
inc     byte ptr [eax+0Eh]

loc_494D72:
mov     ecx, [eax+0Bh]
sar     ecx, 18h
mov     ebx, [eax+4]
mov     bl, [ecx+ebx]
mov     [eax+0Ch], bl
mov     [eax+0Dh], bl
mov     ebx, [eax+0Eh]
sar     ebx, 18h
mov     ecx, [eax+8]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_494DA3
jbe     short loc_494DA6
cmp     bl, 7Fh
jnz     short loc_494DA3
mov     byte ptr [eax+11h], 0
jmp     short loc_494DA6

loc_494DA3:
inc     byte ptr [eax+11h]

loc_494DA6:
mov     ecx, [eax+0Eh]
sar     ecx, 18h
mov     ebx, [eax+8]
mov     bl, [ecx+ebx]
mov     [eax+0Fh], bl
mov     [eax+10h], bl
mov     bl, [eax+0Ch]
mov     [edx+168h], bl
mov     al, [eax+0Fh]
mov     [edx+169h], al
pop     edx
pop     ecx
pop     ebx
retn
sub_494D39 endp




sub_494DCE proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 7
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_494DCE endp




sub_494E1A proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_494E3F
mov     edx, [eax+28h]
or      byte ptr [edx], 2
mov     byte ptr [edx+9], 0
mov     edx, [eax+2Ch]
or      byte ptr [edx], 2
mov     byte ptr [edx+9], 0
mov     edx, [eax+30h]
or      byte ptr [edx], 2
mov     byte ptr [edx+9], 0

loc_494E3F:
cmp     dword ptr [eax+10h], 28h ; '('
jnz     short loc_494E50
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494E50:
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_494E61
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494E61:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_494E72
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494E72:
cmp     dword ptr [eax+10h], 46h ; 'F'
jnz     short loc_494E83
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494E83:
cmp     dword ptr [eax+10h], 50h ; 'P'
jnz     short loc_494E94
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494E94:
cmp     dword ptr [eax+10h], 5Ah ; 'Z'
jnz     short loc_494EA5
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494EA5:
cmp     dword ptr [eax+10h], 64h ; 'd'
jnz     short loc_494EB6
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494EB6:
cmp     dword ptr [eax+10h], 6Eh ; 'n'
jnz     short loc_494EC7
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494EC7:
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short loc_494ED8
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494ED8:
cmp     dword ptr [eax+10h], 82h
jnz     short loc_494EEC
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494EEC:
cmp     dword ptr [eax+10h], 8Ch
jnz     short loc_494F00
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494F00:
cmp     dword ptr [eax+10h], 96h
jnz     short loc_494F14
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494F14:
cmp     dword ptr [eax+10h], 0A0h
jnz     short loc_494F28
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494F28:
cmp     dword ptr [eax+10h], 0B4h
jnz     short loc_494F3C
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494F3C:
cmp     dword ptr [eax+10h], 0C8h
jnz     short loc_494F50
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494F50:
cmp     dword ptr [eax+10h], 0D2h
jnz     short loc_494F64
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494F64:
cmp     dword ptr [eax+10h], 0DCh
jnz     short loc_494F78
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494F78:
cmp     dword ptr [eax+10h], 0E6h
jnz     short loc_494F8C
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494F8C:
cmp     dword ptr [eax+10h], 0F0h
jnz     short loc_494FA0
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494FA0:
cmp     dword ptr [eax+10h], 0FAh
jnz     short loc_494FB4
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_494FB4:
pop     edx
retn
sub_494E1A endp




sub_494FB6 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_494FFB
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [ecx+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [ecx+30h]
and     byte ptr [eax], 0FDh
mov     ds:dword_5F888C, 1040000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B

loc_494FFB:
cmp     dword ptr [ecx+10h], 0Ah
jnz     short loc_49500C
mov     eax, [ecx+28h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_49500C:
cmp     dword ptr [ecx+10h], 1Eh
jnz     short loc_49501D
mov     eax, [ecx+28h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_49501D:
pop     edx
pop     ecx
retn
sub_494FB6 endp




sub_495020 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_495037
xor     eax, eax
call    sub_494CF1
xor     eax, eax
call    sub_494D15

loc_495037:
cmp     dword ptr [edx+10h], 1Eh
jnz     short loc_49504B
xor     eax, eax
call    sub_494CF1
xor     eax, eax
call    sub_494D15

loc_49504B:
call    sub_494D39
pop     edx
retn
sub_495020 endp




sub_495052 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     short loc_495074
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     ds:byte_5F88AC, 81h

loc_495074:
cmp     dword ptr [ecx+10h], 0Bh
jg      short loc_495095
sub     dword ptr [ebx+528h], 30000h
lea     edx, [ebx+538h]
lea     eax, [ebx+528h]
call    sub_4DD57B

loc_495095:
cmp     dword ptr [ecx+10h], 0Ch
jnz     short loc_4950AC
mov     eax, 1
call    sub_494CF1
mov     byte ptr [ebx+548h], 82h

loc_4950AC:
call    sub_494D39
pop     edx
pop     ecx
pop     ebx
retn
sub_495052 endp




sub_4950B5 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4950C6
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

locret_4950C6:
retn
sub_4950B5 endp




sub_4950C7 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_4950E0
mov     eax, 2
call    sub_494CF1

loc_4950E0:
cmp     dword ptr [edx+10h], 19h
jnz     short loc_4950F7
mov     eax, 2
call    sub_494D15
mov     byte ptr [ecx+548h], 83h

loc_4950F7:
call    sub_494D39
pop     edx
pop     ecx
retn
sub_4950C7 endp




sub_4950FF proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_495119
mov     eax, 1
call    sub_494CF1
xor     eax, eax
call    sub_494D15

loc_495119:
cmp     dword ptr [edx+10h], 19h
jnz     short loc_49512A
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0

loc_49512A:
cmp     dword ptr [edx+10h], 0AAh
jnz     short loc_49513E
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 2

loc_49513E:
cmp     dword ptr [edx+10h], 0B6h
jnz     short loc_495158
mov     eax, [edx+28h]
mov     byte ptr [eax+10Ch], 14h
mov     byte ptr [eax+118h], 15h

loc_495158:
cmp     dword ptr [edx+10h], 0DCh
jnz     short loc_495172
mov     eax, [edx+28h]
mov     byte ptr [eax+10Ch], 5
mov     byte ptr [eax+118h], 8

loc_495172:
cmp     dword ptr [edx+10h], 15Eh
jnz     short loc_495186
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 3

loc_495186:
cmp     dword ptr [edx+10h], 1B8h
jnz     loc_49504B
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 4
jmp     loc_49504B
sub_4950FF endp




sub_4951A3 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4951C5
mov     eax, [eax+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 0Ah
mov     byte ptr [eax+0Ah], 0

loc_4951C5:
cmp     dword ptr [edx+10h], 5
jnz     short loc_4951D9
mov     eax, [edx+28h]
mov     byte ptr [eax+0Ah], 2
mov     eax, [edx+2Ch]
mov     byte ptr [eax+0Ah], 2

loc_4951D9:
pop     edx
retn
sub_4951A3 endp




sub_4951DB proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4951ED
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0Bh
mov     byte ptr [edx+0Ah], 0

loc_4951ED:
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_4951FA
mov     eax, [eax+28h]
mov     byte ptr [eax+0Ah], 2

loc_4951FA:
pop     edx
retn
sub_4951DB endp




sub_4951FC proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_495227
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0Ch
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
or      byte ptr [edx], 2
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_495227:
cmp     dword ptr [eax+10h], 8
jnz     short loc_49523E
mov     edx, [eax+28h]
mov     byte ptr [edx+10Ch], 14h
mov     byte ptr [edx+118h], 15h

loc_49523E:
cmp     dword ptr [eax+10h], 50h ; 'P'
jnz     short loc_49524F
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0Dh
mov     byte ptr [edx+0Ah], 0

loc_49524F:
cmp     dword ptr [eax+10h], 55h ; 'U'
jnz     short loc_495267
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 4
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ah], 2

loc_495267:
cmp     dword ptr [eax+10h], 58h ; 'X'
jnz     short loc_49527E
mov     edx, [eax+28h]
mov     byte ptr [edx+10Ch], 5
mov     byte ptr [edx+118h], 8

loc_49527E:
cmp     dword ptr [eax+10h], 62h ; 'b'
jnz     short loc_49528F
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0

loc_49528F:
cmp     dword ptr [eax+10h], 6Dh ; 'm'
jnz     short loc_4952A0
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0Eh
mov     byte ptr [edx+0Ah], 0

loc_4952A0:
cmp     dword ptr [eax+10h], 82h
jnz     short loc_4952B4
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 6
mov     byte ptr [edx+0Ah], 0

loc_4952B4:
cmp     dword ptr [eax+10h], 98h
jnz     short loc_4952C8
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_4952C8:
pop     edx
retn
sub_4951FC endp




sub_4952CA proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     short loc_4952E0
mov     ds:byte_5F88AC, 80h

loc_4952E0:
cmp     dword ptr [edx+10h], 1
jnz     short loc_4952F7
mov     eax, 3
call    sub_494CF1
xor     eax, eax
call    sub_494D15

loc_4952F7:
cmp     dword ptr [edx+10h], 0Ah
jnz     short loc_495307
mov     eax, 4
call    sub_494CF1

loc_495307:
cmp     dword ptr [edx+10h], 28h ; '('
jnz     short loc_49531E
mov     eax, 4
call    sub_494D15
mov     byte ptr [ecx+548h], 84h

loc_49531E:
cmp     dword ptr [edx+10h], 190h
jnz     loc_4950F7
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 0Fh
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
jmp     loc_4950F7
sub_4952CA endp




sub_495351 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49537B
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Fh
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0

loc_49537B:
pop     edx
retn
sub_495351 endp




sub_49537D proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49538E
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0

locret_49538E:
retn
sub_49537D endp




sub_49538F proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4953A0
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 10h
mov     byte ptr [eax+0Ah], 0

locret_4953A0:
retn
sub_49538F endp




sub_4953A1 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4953B2
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 9
mov     byte ptr [eax+0Ah], 0

locret_4953B2:
retn
sub_4953A1 endp




sub_4953B3 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4953D0
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 11h
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 4
mov     byte ptr [edx+0Ah], 0

loc_4953D0:
cmp     dword ptr [eax+10h], 6Eh ; 'n'
jnz     short loc_4953DD
mov     eax, [eax+30h]
mov     byte ptr [eax+0Ah], 2

loc_4953DD:
pop     edx
retn
sub_4953B3 endp




sub_4953DF proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4953F0
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 0Ah
mov     byte ptr [eax+0Ah], 0

locret_4953F0:
retn
sub_4953DF endp




sub_4953F1 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_495419
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 12h
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 0Bh
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0

loc_495419:
cmp     dword ptr [eax+10h], 0A0h
jnz     short loc_495430
mov     edx, [eax+28h]
mov     byte ptr [edx+0Ah], 1
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ah], 3

loc_495430:
cmp     dword ptr [eax+10h], 0B9h
jnz     short loc_495447
mov     edx, [eax+28h]
mov     byte ptr [edx+0Ah], 2
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ah], 1

loc_495447:
cmp     dword ptr [eax+10h], 0C8h
jnz     short loc_495457
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ah], 2

loc_495457:
cmp     dword ptr [eax+10h], 0E6h
jnz     short loc_49546B
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0

loc_49546B:
pop     edx
retn
sub_4953F1 endp




sub_49546D proc near
push    edx
mov     ds:dword_77E6B4, offset unk_5282F4
mov     dword ptr [eax+0A4h], offset unk_5289C0
xor     edx, edx
jmp     short loc_49548C

loc_495486:
inc     edx
cmp     edx, 9
jge     short loc_4954A5

loc_49548C:
call    sub_4DE13B
test    eax, eax
jz      short loc_495486
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Bh
mov     byte ptr [eax+3], 0
mov     [eax+0Ch], dl
jmp     short loc_495486

loc_4954A5:
xor     edx, edx
jmp     short loc_4954AF

loc_4954A9:
inc     edx
cmp     edx, 0Ch
jge     short loc_4954C8

loc_4954AF:
call    sub_4DE13B
test    eax, eax
jz      short loc_4954A9
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Bh
mov     byte ptr [eax+3], 1
mov     [eax+0Ch], dl
jmp     short loc_4954A9

loc_4954C8:
xor     edx, edx

loc_4954CA:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_5282B8
call    sub_49DB4D
inc     edx
cmp     edx, 3
jl      short loc_4954CA
pop     edx
retn
sub_49546D endp




sub_4954E6 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_4954F6
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_4954F6:
pop     edx
retn
sub_4954E6 endp

db 90h
jpt_495541 dd offset loc_495548 ; jump table for switch statement
dd offset loc_495624
dd offset loc_495637
dd offset loc_495650
dd offset loc_49566C
dd offset loc_49567B
dd offset loc_49568F
dd offset loc_495699
dd offset def_495541
dd offset def_495541
dd offset loc_4956C5



sub_495525 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 0Ah         ; switch 11 cases
ja      def_495541      ; jumptable 00495541 default case, cases 8,9
and     eax, 0FFh
jmp     jpt_495541[eax*4] ; switch jump

loc_495548:             ; jumptable 00495541 case 0
cmp     ds:byte_77EAB8, 0
jnz     def_495541      ; jumptable 00495541 default case, cases 8,9
mov     eax, ebx
call    sub_4B55D5
test    eax, eax
jz      def_495541      ; jumptable 00495541 default case, cases 8,9
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     ds:dword_5F888C, 2300000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 17C0000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     ds:word_5F88A8, di
mov     word ptr ds:dword_5F88A4+2, 400h
mov     ds:byte_5F88AC, 30h ; '0'
mov     al, ds:byte_5F84D4
mov     ds:byte_55A641, al
mov     al, ds:byte_5F84D5
mov     ds:byte_55A640, al
xor     ah, ah
mov     ds:byte_5F84D5, ah
mov     ds:byte_5F84D4, ah
mov     eax, 0Fh
call    sub_47EEAE
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
call    sub_4A0E35

loc_49561C:
inc     byte ptr [ecx+4]
jmp     def_495541      ; jumptable 00495541 default case, cases 8,9

loc_495624:             ; jumptable 00495541 case 1
mov     ebx, 1
mov     edx, ebx
mov     eax, 91h
call    sub_4DBCF3
jmp     short loc_49561C

loc_495637:             ; jumptable 00495541 case 2
call    sub_42C353
test    eax, eax
jnz     def_495541      ; jumptable 00495541 default case, cases 8,9
mov     eax, 250014h
call    sub_4D8E42
jmp     short loc_49561C

loc_495650:             ; jumptable 00495541 case 3
call    sub_4D8ECC
test    eax, eax
jz      def_495541      ; jumptable 00495541 default case, cases 8,9
inc     byte ptr [ecx+4]
mov     dword ptr [ecx+0Ch], 5
jmp     def_495541      ; jumptable 00495541 default case, cases 8,9

loc_49566C:             ; jumptable 00495541 case 4
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     def_495541      ; jumptable 00495541 default case, cases 8,9
jmp     short loc_49561C

loc_49567B:             ; jumptable 00495541 case 5
mov     eax, 5
call    sub_49E0D7
or      ds:byte_5F8364, 2
inc     byte ptr [ecx+4]

loc_49568F:             ; jumptable 00495541 case 6
mov     eax, ecx
call    sub_49546D
inc     byte ptr [ecx+4]

loc_495699:             ; jumptable 00495541 case 7
cmp     ds:word_6E23D6, 0
jnz     short loc_4956C5 ; jumptable 00495541 case 10
mov     edx, [ecx+0A4h]
cmp     byte ptr [edx], 0FFh
jz      short loc_4956B7
call    sub_47EBCB
test    eax, eax
jz      short loc_4956C5 ; jumptable 00495541 case 10

loc_4956B7:
mov     eax, 0Bh
call    sub_49E0D7
mov     byte ptr [ecx+4], 0Ah

loc_4956C5:             ; jumptable 00495541 case 10
mov     eax, ecx
call    sub_4954E6
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 0Ah
jnz     def_495541      ; jumptable 00495541 default case, cases 8,9
mov     si, ds:word_6E23D6
test    si, si
jnz     def_495541      ; jumptable 00495541 default case, cases 8,9
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 19h
mov     ds:byte_77EA5F, 3
mov     word ptr ds:dword_77EA4E+2, si
mov     word ptr ds:dword_77EA52, si
mov     word ptr ds:dword_77EA52+2, si
mov     word ptr ds:dword_77EA5A, si
xor     ah, ah
mov     byte ptr ds:dword_77EA5A+3, ah
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
mov     [ecx], ah
mov     al, ds:byte_55A641
mov     [ebx+170h], al
mov     al, ds:byte_55A640
mov     [ebx+171h], al
mov     dword ptr [ebx+528h], 1040000h
mov     dword ptr [ebx+52Ch], 0FFFF0000h
mov     dword ptr [ebx+530h], 17C0000h
lea     edx, [ebx+538h]
lea     eax, [ebx+528h]
call    sub_4DD57B
mov     [ebx+540h], si
mov     [ebx+544h], si
mov     [ebx+542h], si
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
call    sub_4D8EB1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_495541:             ; jumptable 00495541 default case, cases 8,9
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_495525 endp




sub_4957B7 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_4957BD[edx*4]
pop     edx
retn
sub_4957B7 endp




sub_4957C6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 1
jb      short loc_4957E7
jbe     short loc_49584E
cmp     al, 2
jz      loc_495862
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4957E7:
test    al, al
jnz     loc_495916
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      loc_495916
mov     edx, 80h
mov     eax, 15Eh
call    sub_4DC979
mov     byte ptr [esi+0Ah], 80h
mov     eax, offset unk_529814
call    sub_42C443
mov     ds:word_55A644, ax
cwde
mov     ecx, eax
shl     ecx, 2
sub     ecx, eax
mov     ax, word ptr ds:dword_6E40AE[ecx*4]
mov     ds:word_55A646, ax
mov     byte ptr ds:dword_5F836C, 3
xor     bl, bl
mov     byte ptr ds:dword_5F836C+1, bl
inc     byte ptr [esi+5]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49584E:
mov     ebx, 1
mov     edx, ebx
mov     eax, 98h
call    sub_4DBCF3
inc     byte ptr [esi+5]

loc_495862:
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_528C58
mov     dword ptr [esi+0A4h], offset unk_52968C
mov     dword ptr [esi+0Ch], 0
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 0
mov     word ptr [ecx+53Ah], 0FFFFh
mov     word ptr [ecx+53Ch], 0
mov     dword ptr [ecx+528h], 0
mov     dword ptr [ecx+52Ch], 0FFFF0000h
mov     dword ptr [ecx+530h], 0
mov     word ptr [ecx+540h], 0
mov     word ptr [ecx+542h], 800h
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 30h ; '0'
mov     eax, offset unk_528A64
call    sub_49DB4D
mov     byte ptr [esi+4], 1
mov     byte ptr [esi+5], 0
mov     byte ptr [esi+6], 0
mov     byte ptr [esi+7], 0
call    sub_49DBD1
call    sub_49DECF

loc_495916:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4957C6 endp

jpt_495940 dd offset loc_495947 ; jump table for switch statement
dd offset loc_495954
dd offset loc_495947
dd offset loc_495980



sub_49592B proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_495940      ; jumptable 00495940 default case
and     eax, 0FFh
jmp     jpt_495940[eax*4] ; switch jump

loc_495947:             ; jumptable 00495940 cases 0,2
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
jmp     short loc_4959B5

loc_495954:             ; jumptable 00495940 case 1
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     ch, [edx+0Ah]
test    ch, 80h
jnz     short loc_4959B5
test    ch, 1
jz      short loc_4959B5
mov     eax, 8
call    sub_49E0D7
mov     byte ptr [edx+4], 2
mov     byte ptr [edx+5], 0
jmp     short loc_4959B5

loc_495980:             ; jumptable 00495940 case 3
cmp     byte ptr [edx+8], 0FFh
jz      short loc_4959AE
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     bh, [edx+0Ah]
test    bh, 80h
jnz     short loc_4959B5
test    bh, 1
jz      short loc_4959B5
mov     eax, 8
call    sub_49E0D7
mov     byte ptr [edx+4], 2
jmp     short loc_4959B1

loc_4959AE:
inc     byte ptr [edx+4]

loc_4959B1:
mov     byte ptr [edx+5], 0

loc_4959B5:
call    sub_49DBD1

def_495940:             ; jumptable 00495940 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_4959C7
or      byte ptr [edx+0Ah], 1

loc_4959C7:
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_49592B endp




sub_4959D0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     al, [eax+5]
test    al, al
jbe     short loc_4959EF
cmp     al, 1
jz      loc_495AEA
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4959EF:
cmp     ds:word_6E23D6, 0
jnz     loc_495B47
mov     edx, 80h
mov     eax, 156h
call    sub_4DC979
or      ds:byte_5F8364, 2
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     edx, edx
mov     word ptr ds:dword_5F889A+2, dx
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 800h
xor     edx, edx
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 8000000h
xor     eax, eax
mov     ds:word_5F88A8, ax
xor     edx, edx
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
xor     ah, ah
mov     ds:byte_5F88AC, ah
xor     dl, al
mov     byte ptr ds:dword_5F84CB+1, dl
mov     byte ptr ds:dword_5F84CB+2, ah
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
call    sub_4D8EB1
test    byte ptr [ecx+0Ah], 1
jz      short loc_495ADB
mov     edx, dword ptr ds:unk_55A642
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     dx, ds:word_55A646
mov     word ptr ds:dword_6E40AE[eax*4], dx
mov     eax, dword ptr ds:unk_55A642
sar     eax, 10h
mov     edx, 31500h
call    sub_4A7AE1

loc_495ADB:
mov     eax, ebx
call    sub_4B565A
inc     byte ptr [ecx+5]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_495AEA:
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 1Ah
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     esi, 800h
mov     word ptr ds:dword_77EA52+2, si
mov     word ptr ds:dword_77EA5A, si
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, al
xor     ebx, ebx
xor     edx, edx
mov     eax, 8000002Dh
call    sub_4D89E4
mov     byte ptr [ecx], 0

loc_495B47:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4959D0 endp




sub_495B4C proc near
push    edx
mov     edx, eax
mov     al, [eax+6]
cmp     al, 1
jb      short loc_495B5E
jbe     short loc_495B70
cmp     al, 2
jz      short loc_495B88
pop     edx
retn

loc_495B5E:
test    al, al
jnz     short loc_495BA2
call    sub_42C353
test    eax, eax
jnz     short loc_495BA2
inc     byte ptr [edx+6]
pop     edx
retn

loc_495B70:
cmp     dword ptr [edx+10h], 96h
jl      short loc_495BA2
mov     eax, 240017h
call    sub_4D8E42
inc     byte ptr [edx+6]
pop     edx
retn

loc_495B88:
call    sub_4D8ECC
test    eax, eax
jz      short loc_495BA2
and     byte ptr [edx+0Ah], 7Fh
mov     byte ptr [edx+5], 1
mov     byte ptr [edx+6], 0
call    sub_49DF64

loc_495BA2:
pop     edx

locret_495BA3:
retn
sub_495B4C endp




sub_495BA4 proc near
push    ecx
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_495BDE
mov     eax, dword ptr ds:unk_55A642
sar     eax, 10h
mov     edx, 70000h
call    sub_4A7AE1
mov     dl, 1

loc_495BC0:
movsx   ecx, dl
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_528A64
call    sub_49DB4D
inc     dl
cmp     dl, 0Ah
jle     short loc_495BC0

loc_495BDE:
pop     edx
pop     ecx
retn
sub_495BA4 endp




sub_495BE1 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_495BEE
and     ds:byte_5F8364, 0FDh

locret_495BEE:
retn
sub_495BE1 endp




sub_495BEF proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_495C47
xor     dl, dl
jmp     short loc_495C04

loc_495BFD:
inc     dl
cmp     dl, 20h ; ' '
jge     short loc_495C21

loc_495C04:
call    sub_4DE13B
test    eax, eax
jz      short loc_495BFD
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0
mov     [eax+0Dh], dl
jmp     short loc_495BFD

loc_495C21:
mov     eax, [ecx+30h]
and     byte ptr [eax], 0FDh
mov     dl, 0Bh

loc_495C29:
movsx   ecx, dl
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_528A64
call    sub_49DB4D
inc     dl
cmp     dl, 0Dh
jle     short loc_495C29

loc_495C47:
pop     edx
pop     ecx
retn
sub_495BEF endp




sub_495C4A proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short def_495CCF ; jumptable 00495CCF default case, case 3
mov     dl, 4

loc_495C56:
movsx   eax, dl
mov     eax, [ecx+eax*4+24h]
and     byte ptr [eax], 0FDh
inc     dl
cmp     dl, 9
jle     short loc_495C56

def_495CCF:             ; jumptable 00495CCF default case, case 3
pop     edx
pop     ecx

locret_495C69:
retn
sub_495C4A endp

db 90h
jpt_495CCF dd offset loc_495CD6 ; jump table for switch statement
dd offset loc_495CE7
dd offset loc_495D2B
dd offset def_495CCF

loc_495C7B:
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_495CC4
mov     eax, [eax+50h]
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FF40h
mov     [eax+1Ch], edx
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FF400000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 0
mov     byte ptr [ecx+6], 0

loc_495CC4:
mov     al, [ecx+6]
cmp     al, 3           ; switch 4 cases
ja      short def_495CCF ; jumptable 00495CCF default case, case 3
xor     edx, edx
mov     dl, al
jmp     jpt_495CCF[edx*4] ; switch jump

loc_495CD6:             ; jumptable 00495CCF case 0
cmp     dword ptr [ecx+10h], 96h
jnz     short def_495CCF ; jumptable 00495CCF default case, case 3
inc     al
mov     [ecx+6], al
pop     edx
pop     ecx
retn

loc_495CE7:             ; jumptable 00495CCF case 1
mov     edx, dword ptr ds:unk_55A642
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
add     word ptr ds:dword_6E40AE[eax*4], 4
mov     eax, [ecx+28h]
add     word ptr [eax+4Ah], 4
mov     eax, [ecx+2Ch]
add     word ptr [eax+4Ah], 4
mov     eax, [ecx+4Ch]
add     word ptr [eax+4Ah], 4
cmp     dword ptr [ecx+10h], 116h
jnz     def_495CCF      ; jumptable 00495CCF default case, case 3

loc_495D25:
inc     byte ptr [ecx+6]
pop     edx
pop     ecx
retn

loc_495D2B:             ; jumptable 00495CCF case 2
mov     eax, [ecx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [ecx+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [ecx+4Ch]
and     byte ptr [eax], 0FDh
mov     edx, dword ptr ds:unk_55A642
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     dx, ds:word_55A646
mov     word ptr ds:dword_6E40AE[eax*4], dx
mov     eax, dword ptr ds:unk_55A642
sar     eax, 10h
mov     edx, 31500h
call    sub_4A7AE1
jmp     short loc_495D25



sub_495D70 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_495DBA
mov     eax, [eax+24h]
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FE00h
mov     [eax+1Ch], ecx
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FE000000h
mov     word ptr [eax+58h], 0
mov     bx, [eax+58h]
mov     [eax+54h], bx
mov     word ptr [eax+56h], 800h
mov     byte ptr [edx+6], 0

loc_495DBA:
pop     edx
pop     ecx
pop     ebx

locret_495DBD:
retn
sub_495D70 endp




sub_495DBE proc near
push    ecx
push    edx
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_495E21
mov     eax, [eax+50h]
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 400h
mov     [eax+1Ch], edx
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 4000000h
mov     word ptr [eax+58h], 0
mov     cx, [eax+58h]
mov     [eax+54h], cx
mov     word ptr [eax+56h], 0
mov     dl, 0Eh

loc_495E03:
movsx   ecx, dl
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_528A64
call    sub_49DB4D
inc     dl
cmp     dl, 11h
jle     short loc_495E03

loc_495E21:
pop     edx
pop     ecx

locret_495E23:
retn
sub_495DBE endp




sub_495E24 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_495EA8
xor     bl, bl
jmp     short loc_495E3E

loc_495E37:
inc     bl
cmp     bl, 4
jnb     short loc_495EA8

loc_495E3E:
xor     edx, edx
mov     dl, bl
mov     edx, [ecx+edx*4+5Ch]
call    sub_4DE13B
test    eax, eax
jz      short loc_495E64
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 3
mov     bh, [edx+1]
mov     [eax+0Ch], bh
mov     byte ptr [eax+0Dh], 0

loc_495E64:
call    sub_4DE13B
test    eax, eax
jz      short loc_495E85
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 4
mov     bh, [edx+1]
mov     [eax+0Ch], bh
mov     [eax+0Dh], bl
mov     byte ptr [eax+0Eh], 0

loc_495E85:
call    sub_4DE13B
test    eax, eax
jz      short loc_495E37
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 4
mov     dl, [edx+1]
mov     [eax+0Ch], dl
mov     [eax+0Dh], bl
mov     byte ptr [eax+0Eh], 1
jmp     short loc_495E37

loc_495EA8:
cmp     dword ptr [ecx+10h], 5
jl      short loc_495EB7
xor     edx, edx

loc_495EB0:
mov     eax, ecx
call    sub_4963E5

loc_495EB7:
pop     edx
pop     ecx
pop     ebx
retn
sub_495E24 endp




sub_495EBB proc near
push    edx
cmp     dword ptr [eax+10h], 5
jl      short loc_495EC9
xor     edx, edx

loc_495EC4:
call    sub_4963E5

loc_495EC9:
pop     edx
retn
sub_495EBB endp




sub_495ECB proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_495EF6
call    sub_4DE13B
test    eax, eax
jz      short loc_495EF6
mov     edx, [ecx+24h]
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 2
mov     dl, [edx+1]
mov     [eax+0Ch], dl
mov     byte ptr [eax+0Dh], 0

loc_495EF6:
xor     edx, edx
mov     eax, ecx
call    sub_4963E5
pop     edx
pop     ecx
retn
sub_495ECB endp




sub_495F02 proc near
push    edx
mov     edx, 1
jmp     short loc_495EC4
sub_495F02 endp




sub_495F0A proc near
push    edx
mov     edx, 2
jmp     short loc_495EC4
sub_495F0A endp




sub_495F12 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_495EF6
call    sub_4DE13B
test    eax, eax
jz      short loc_495EF6
mov     edx, [ecx+24h]
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 2
mov     dl, [edx+1]
mov     [eax+0Ch], dl
mov     byte ptr [eax+0Dh], 1
jmp     short loc_495EF6
sub_495F12 endp




sub_495F3F proc near
push    edx
mov     eax, [eax+50h]
add     word ptr [eax+18h], 3
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
pop     edx
retn
sub_495F3F endp

db 90h
jpt_495F8A dd offset loc_495F91 ; jump table for switch statement
dd offset loc_495FB0
dd offset loc_495FC7
dd offset loc_495FD2
dd offset loc_495FE4



sub_495F6B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_495F7A
mov     byte ptr [eax+6], 0

loc_495F7A:
mov     al, [ecx+6]
cmp     al, 4           ; switch 5 cases
ja      def_495F8A      ; jumptable 00495F8A default case
and     eax, 0FFh
jmp     jpt_495F8A[eax*4] ; switch jump

loc_495F91:             ; jumptable 00495F8A case 0
mov     edx, 80h
mov     eax, 156h
call    sub_4DC979
call    sub_4D8EB1
or      byte ptr [ecx+0Ah], 80h

loc_495FA9:
inc     byte ptr [ecx+6]
pop     edx
pop     ecx
pop     ebx
retn

loc_495FB0:             ; jumptable 00495F8A case 1
mov     ebx, 1
mov     edx, ebx
mov     eax, 99h
call    sub_4DBCF3
mov     byte ptr [ecx+5], 2
jmp     short loc_495FA9

loc_495FC7:             ; jumptable 00495F8A case 2
call    sub_42C353
test    eax, eax
jnz     short def_495F8A ; jumptable 00495F8A default case
jmp     short loc_495FA9

loc_495FD2:             ; jumptable 00495F8A case 3
cmp     dword ptr [ecx+10h], 78h ; 'x'
jl      short def_495F8A ; jumptable 00495F8A default case
mov     eax, 240018h
call    sub_4D8E42
jmp     short loc_495FA9

loc_495FE4:             ; jumptable 00495F8A case 4
call    sub_4D8ECC
test    eax, eax
jz      short def_495F8A ; jumptable 00495F8A default case
and     byte ptr [ecx+0Ah], 7Fh
mov     byte ptr [ecx+5], 3
mov     byte ptr [ecx+6], 0
call    sub_49DF64

def_495F8A:             ; jumptable 00495F8A default case
pop     edx
pop     ecx
pop     ebx
retn
sub_495F6B endp




sub_496002 proc near
push    ecx
push    edx
cmp     dword ptr [eax+10h], 1
jnz     short loc_49602A
xor     dl, dl

loc_49600C:
movsx   ecx, dl
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_528BCC
call    sub_49DB4D
inc     dl
cmp     dl, 6
jle     short loc_49600C

loc_49602A:
pop     edx
pop     ecx

locret_49602C:
retn
sub_496002 endp




sub_49602D proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4960B3
mov     eax, [eax+28h]
mov     word ptr [eax+14h], 0FE16h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0F664h
mov     dword ptr [eax+1Ch], 0FE160000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0F6640000h
mov     word ptr [eax+58h], 0
mov     bx, [eax+58h]
mov     [eax+54h], bx
mov     word ptr [eax+56h], 9C8h
mov     eax, [edx+2Ch]
mov     word ptr [eax+14h], 0FE62h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0F6B0h
mov     dword ptr [eax+1Ch], 0FE620000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0F6B00000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 0

loc_4960B3:
pop     edx
pop     ebx
retn
sub_49602D endp




sub_4960B6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_4961B6
xor     bl, bl
jmp     short loc_4960D0

loc_4960C9:
inc     bl
cmp     bl, 4
jnb     short loc_49613A

loc_4960D0:
xor     edx, edx
mov     dl, bl
mov     edx, [ecx+edx*4+30h]
call    sub_4DE13B
test    eax, eax
jz      short loc_4960F6
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 3
mov     bh, [edx+1]
mov     [eax+0Ch], bh
mov     byte ptr [eax+0Dh], 0

loc_4960F6:
call    sub_4DE13B
test    eax, eax
jz      short loc_496117
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 4
mov     bh, [edx+1]
mov     [eax+0Ch], bh
mov     [eax+0Dh], bl
mov     byte ptr [eax+0Eh], 0

loc_496117:
call    sub_4DE13B
test    eax, eax
jz      short loc_4960C9
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 4
mov     dl, [edx+1]
mov     [eax+0Ch], dl
mov     [eax+0Dh], bl
mov     byte ptr [eax+0Eh], 1
jmp     short loc_4960C9

loc_49613A:
mov     eax, [ecx+28h]
mov     word ptr [eax+14h], 227h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FEA6h
mov     dword ptr [eax+1Ch], 2270000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FEA60000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 4AAh
mov     eax, [ecx+2Ch]
mov     word ptr [eax+14h], 182h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FD00h
mov     dword ptr [eax+1Ch], 1820000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FD000000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 400h

loc_4961B6:
mov     edx, 1
jmp     loc_495EB0
sub_4960B6 endp




sub_4961C0 proc near
push    edx
cmp     dword ptr [eax+10h], 55h ; 'U'
jge     short loc_4961D1
mov     edx, 1
call    sub_4963E5

loc_4961D1:
pop     edx
retn
sub_4961C0 endp




sub_4961D3 proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_496259
mov     eax, [eax+28h]
mov     word ptr [eax+14h], 300h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FF00h
mov     dword ptr [eax+1Ch], 3000000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FF000000h
mov     word ptr [eax+58h], 0
mov     bx, [eax+58h]
mov     [eax+54h], bx
mov     word ptr [eax+56h], 300h
mov     eax, [edx+2Ch]
mov     word ptr [eax+14h], 200h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FD40h
mov     dword ptr [eax+1Ch], 2000000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FD400000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 500h

loc_496259:
pop     edx
pop     ebx
retn
sub_4961D3 endp




sub_49625C proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_4962F9
mov     eax, [eax+28h]
mov     word ptr [eax+14h], 0FF40h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FEC0h
mov     dword ptr [eax+1Ch], 0FF400000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FEC00000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 0E00h
mov     eax, [ecx+2Ch]
mov     word ptr [eax+14h], 3Ch ; '<'
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FE00h
mov     dword ptr [eax+1Ch], 3C0000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FE000000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 800h
mov     dl, 3

loc_4962E8:
movsx   eax, dl
mov     eax, [ecx+eax*4+24h]
and     byte ptr [eax], 0FDh
inc     dl
cmp     dl, 6
jle     short loc_4962E8

loc_4962F9:
pop     edx
pop     ecx

locret_4962FB:
retn
sub_49625C endp




sub_4962FC proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_49633E
mov     eax, [eax+24h]
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 200h
mov     [eax+1Ch], edx
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 2000000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 800h

loc_49633E:
pop     edx
retn
sub_4962FC endp




sub_496340 proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4963C6
mov     eax, [eax+28h]
mov     word ptr [eax+14h], 0FFE1h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FE00h
mov     dword ptr [eax+1Ch], 0FFE10000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FE000000h
mov     word ptr [eax+58h], 0
mov     bx, [eax+58h]
mov     [eax+54h], bx
mov     word ptr [eax+56h], 800h
mov     eax, [edx+2Ch]
mov     word ptr [eax+14h], 1Fh
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FE00h
mov     dword ptr [eax+1Ch], 1F0000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FE000000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 800h

loc_4963C6:
pop     edx
pop     ebx

locret_4963C8:
retn
sub_496340 endp




sub_4963C9 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0DCh
jnz     short loc_4963E3
mov     eax, 0Ah
call    sub_49E0D7
or      byte ptr [edx+0Ah], 80h

loc_4963E3:
pop     edx
retn
sub_4963C9 endp




sub_4963E5 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, edx
shl     esi, 3
sub     esi, edx
call    rand_
and     eax, 7
lea     edx, [esi+eax]
mov     dl, ds:byte_52981C[edx]
test    dl, dl
jz      loc_496499
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
or      byte ptr [esi+7], 2
mov     al, dl
and     al, 7Fh
mov     [esi+6], al
mov     [esi+5], al
mov     [esi+4], al
mov     ecx, ds:dword_77E6DC
add     ecx, 38h ; '8'
mov     ds:dword_77E6DC, ecx
mov     edi, ecx
push    0
mov     al, dl
and     al, 80h
and     eax, 0FFh
sar     eax, 7
shl     eax, 5
lea     ecx, [eax+20h]
or      cl, 0Fh
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 38h ; '8'
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, edi
call    sub_4F87A6

loc_496499:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4963E5 endp




sub_49649E proc near
push    edx
xor     dl, dl
mov     ds:byte_55A64A, dl
mov     ds:byte_55A649, dl
mov     ds:byte_55A648, dl
mov     eax, ds:off_529852[eax*4]
mov     ds:dword_55A650, eax
pop     edx
retn
sub_49649E endp




sub_4964C1 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A64D, dl
mov     ds:byte_55A64C, dl
mov     ds:byte_55A64B, dl
mov     eax, ds:off_529891[eax*4]
mov     ds:dword_55A654, eax
pop     edx
retn
sub_4964C1 endp




sub_4964E4 proc near
push    ebx
push    ecx
push    edx
mov     edx, offset byte_5F8364
mov     eax, offset byte_55A648
mov     ebx, dword ptr ds:word_55A646+1
sar     ebx, 18h
mov     ecx, ds:dword_55A650
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_49651A
jbe     short loc_49651D
cmp     bl, 7Fh
jnz     short loc_49651A
xor     bl, bl
mov     ds:byte_55A64A, bl
jmp     short loc_49651D

loc_49651A:
inc     byte ptr [eax+2]

loc_49651D:
movsx   ecx, byte ptr [eax+2]
mov     ebx, [eax+8]
mov     bl, [ecx+ebx]
mov     [eax], bl
mov     [eax+1], bl
mov     ebx, [eax+2]
sar     ebx, 18h
mov     ecx, [eax+0Ch]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_49654B
jbe     short loc_49654E
cmp     bl, 7Fh
jnz     short loc_49654B
mov     byte ptr [eax+5], 0
jmp     short loc_49654E

loc_49654B:
inc     byte ptr [eax+5]

loc_49654E:
mov     ecx, [eax+2]
sar     ecx, 18h
mov     ebx, [eax+0Ch]
mov     bl, [ecx+ebx]
mov     [eax+3], bl
mov     [eax+4], bl
mov     bl, [eax]
mov     [edx+168h], bl
mov     al, [eax+3]
mov     [edx+169h], al
pop     edx
pop     ecx
pop     ebx
retn
sub_4964E4 endp




sub_496575 proc near

var_20= dword ptr -20h
var_1C= word ptr -1Ch
var_18= word ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 14h
mov     word ptr [esp+20h+var_14], ax
mov     word ptr [esp+20h+var_10], dx
mov     [esp+20h+var_18], bx
mov     [esp+20h+var_1C], cx
xor     esi, esi

loc_496591:
mov     ecx, ds:dword_77E6DC
mov     eax, ecx
call    sub_4F8811
mov     edx, 1
mov     eax, ecx
call    sub_4F884E
mov     eax, [esp+20h+var_14]
mov     [ecx+8], ax
mov     eax, [esp+20h+var_10]
mov     [ecx+0Ah], ax
mov     eax, esi
shl     eax, 2
add     eax, esi
add     eax, eax
mov     ebx, eax
shl     ebx, 4
add     ebx, eax
mov     eax, ebx
call    sub_4EF003
mov     edx, [esp+6]
sar     edx, 10h
imul    eax, edx
sar     eax, 0Ch
mov     ebp, [esp+0Ah]
sar     ebp, 10h
add     eax, ebp
mov     [ecx+10h], ax
mov     eax, ebx
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
mov     edi, [esp+20h+var_14+2]
sar     edi, 10h
add     eax, edi
mov     [ecx+12h], ax
inc     esi
mov     eax, esi
shl     eax, 2
add     eax, esi
add     eax, eax
mov     ebx, eax
shl     eax, 4
add     ebx, eax
mov     eax, ebx
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
add     eax, ebp
mov     [esp+20h+var_20], eax
mov     eax, [esp+20h+var_20]
mov     [ecx+18h], ax
mov     eax, ebx
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
add     eax, edi
mov     [ecx+1Ah], ax
mov     al, byte ptr [esp+20h+var_1C]
mov     [ecx+4], al
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+14h], 0
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+15h], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+16h], 0
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 28h ; '('
add     eax, 74h ; 't'
mov     edx, ecx
call    sub_4F87A6
cmp     esi, 18h
jl      loc_496591
mov     esi, ds:dword_77E6DC
push    0
mov     ecx, 2Fh ; '/'
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 0Ch
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
add     esp, 14h
pop     ebp
pop     edi
pop     esi
retn
sub_496575 endp




sub_4966BD proc near
push    ecx
mov     ecx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4966DD
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 20h ; ' '
mov     [eax+3], dl
or      byte ptr [eax+6], 20h
mov     [ecx+0A0h], eax

loc_4966DD:
pop     ecx
retn
sub_4966BD endp

db 8Dh, 40h, 0
jpt_496705 dd offset loc_49670C ; jump table for switch statement
dd offset loc_496725
dd offset loc_496737
dd offset loc_496756

loc_4966F2:
push    edx
mov     edx, eax
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      def_496705      ; jumptable 00496705 default case
and     eax, 0FFh
jmp     jpt_496705[eax*4] ; switch jump

loc_49670C:             ; jumptable 00496705 case 0
mov     eax, 0CBh
call    sub_42BEB2
or      byte ptr ds:dword_55A658, 80h

loc_49671D:
inc     byte ptr [edx+5]

loc_496720:
inc     byte ptr [edx+6]
pop     edx
retn

loc_496725:             ; jumptable 00496705 case 1
call    sub_42C353
test    eax, eax
jnz     short def_496705 ; jumptable 00496705 default case
and     byte ptr ds:dword_55A658, 7Fh
jmp     short loc_49671D

loc_496737:             ; jumptable 00496705 case 2
cmp     dword ptr [edx+10h], 0B4h
jl      short def_496705 ; jumptable 00496705 default case
mov     eax, 25001Fh
call    sub_4D8E42
or      byte ptr ds:dword_55A658, 80h
dec     byte ptr [edx+5]
jmp     short loc_496720

loc_496756:             ; jumptable 00496705 case 3
call    sub_4D8ECC
test    eax, eax
jz      short def_496705 ; jumptable 00496705 default case
and     byte ptr ds:dword_55A658, 7Fh
inc     byte ptr [edx+5]
mov     byte ptr [edx+6], 0
call    sub_49DF64

def_496705:             ; jumptable 00496705 default case
pop     edx
retn



sub_496774 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 1Eh
jb      short loc_496786
jbe     short loc_496793
cmp     edx, 28h ; '('
jz      short loc_496793
pop     edx
retn

loc_496786:
test    edx, edx
jnz     short loc_496799
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 0
pop     edx
retn

loc_496793:
mov     eax, [eax+24h]
inc     byte ptr [eax+9]

loc_496799:
pop     edx
retn
sub_496774 endp




sub_49679B proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jbe     short loc_4967AA
cmp     edx, 78h ; 'x'
jz      short loc_4967B3
pop     edx
retn

loc_4967AA:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 0
pop     edx
retn

loc_4967B3:
mov     eax, [eax+24h]
inc     byte ptr [eax+9]
pop     edx
retn
sub_49679B endp




sub_4967BB proc near
push    ebx
push    ecx
push    edx
mov     ecx, offset byte_5F8364
mov     eax, [eax+10h]
test    eax, eax
jbe     short loc_4967D8
cmp     eax, 50h ; 'P'
jz      loc_4968B4
jmp     loc_4968C5

loc_4967D8:
xor     edx, edx
jmp     short loc_4967E2

loc_4967DC:
inc     edx
cmp     edx, 2
jge     short loc_496817

loc_4967E2:
call    sub_4DE227
test    eax, eax
jz      short loc_4967DC
or      byte ptr [eax], 1
mov     byte ptr [eax+2], 37h ; '7'
mov     bl, dl
add     bl, 4
mov     [eax+3], bl
mov     ebx, edx
shl     ebx, 0Ah
sub     ebx, 200h
mov     [eax+48h], bx
mov     word ptr [eax+4Ah], 0FF40h
mov     word ptr [eax+4Ch], 0FD00h
jmp     short loc_4967DC

loc_496817:
or      byte ptr [ecx], 3
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 0
mov     word ptr [ecx+53Ah], 0FF3Fh
mov     word ptr [ecx+53Ch], 898h
mov     eax, [ecx+536h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+528h], eax
mov     eax, [ecx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+52Ch], eax
mov     eax, [ecx+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+530h], eax
mov     word ptr [ecx+540h], 0
mov     word ptr [ecx+542h], 800h
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 84h
mov     byte ptr [ecx+76h], 0
mov     byte ptr [ecx+74h], 0
xor     eax, eax
call    sub_4964C1
xor     eax, eax
call    sub_49649E
jmp     short loc_4968C5

loc_4968B4:
mov     eax, 3
call    sub_49649E
mov     ds:byte_5F88AC, 85h

loc_4968C5:
call    sub_4964E4
pop     edx
pop     ecx
pop     ebx
retn
sub_4967BB endp




sub_4968CE proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 3Ch ; '<'
jb      short loc_4968E0
jbe     short loc_4968FC
cmp     edx, 64h ; 'd'
jz      short loc_496904
jmp     short loc_49690E

loc_4968E0:
test    edx, edx
jnz     short loc_49690E
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 0
mov     eax, 1
call    sub_4964C1
mov     eax, 1
jmp     short loc_496909

loc_4968FC:
mov     eax, [eax+24h]
inc     byte ptr [eax+9]
jmp     short loc_49690E

loc_496904:
mov     eax, 4

loc_496909:
call    sub_49649E

loc_49690E:
call    sub_4964E4
pop     edx
retn
sub_4968CE endp




sub_496915 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_496922
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 0

locret_496922:
retn
sub_496915 endp




sub_496923 proc near
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_49698E
mov     eax, 0Eh
call    sub_496B8D
mov     ds:byte_56F80C, 3
xor     edx, edx
mov     word ptr ds:dword_56F818, dx
mov     word ptr ds:dword_56F818+2, 0E0h
xor     esi, esi
mov     ds:dword_56F810, esi
mov     ds:dword_56F814, 0E00000h
xor     edx, edx
mov     eax, ecx
call    sub_4966BD
mov     eax, offset unk_5298B5
call    sub_49DB4D
mov     word ptr [eax+58h], 140h
mov     ecx, [ecx+24h]
and     byte ptr [ecx], 0FDh
and     ds:byte_5F8364, 0FDh
pop     esi
pop     edx
pop     ecx
retn

loc_49698E:
cmp     edx, 168h
jge     short loc_4969AD
fild    ds:dword_56F814
fadd    ds:dbl_50A2EC
call    __CHP
fistp   ds:dword_56F814

loc_4969AD:
pop     esi
pop     edx
pop     ecx
retn
sub_496923 endp




sub_4969B1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_4969E9
mov     eax, [eax+0A0h]
call    sub_4DE3EA
mov     edx, 1
mov     eax, ecx
call    sub_4966BD
mov     eax, [ecx+28h]
mov     word ptr [eax+56h], 80h
xor     ah, ah
mov     ds:byte_56F80C, ah
xor     al, al
jmp     short loc_496A1F

loc_4969E9:
cmp     edx, 20h ; ' '
jge     short loc_4969F7
mov     ax, [eax+10h]
shl     eax, 3
jmp     short loc_496A1F

loc_4969F7:
cmp     edx, 40h ; '@'
jge     short loc_496A03
mov     eax, 0FFh
jmp     short loc_496A1F

loc_496A03:
cmp     edx, 60h ; '`'
jge     short loc_496A1D
mov     ax, [eax+10h]
sub     eax, 40h ; '@'
shl     eax, 3
mov     ecx, 0FFh
sub     ecx, eax
mov     eax, ecx
jmp     short loc_496A1F

loc_496A1D:
xor     eax, eax

loc_496A1F:
movsx   ecx, ax
mov     ebx, 1Eh
mov     edx, 6Ch ; 'l'
mov     eax, 0AAh
call    sub_496575
pop     edx
pop     ecx
pop     ebx
retn
sub_4969B1 endp




sub_496A3A proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_496A81
mov     eax, [eax+0A0h]
call    sub_4DE3EA
mov     edx, 2
mov     eax, ecx
call    sub_4966BD
mov     eax, [ecx+28h]
mov     word ptr [eax+56h], 800h
mov     eax, offset unk_5298C9
call    sub_49DB4D
mov     ecx, [ecx+28h]
mov     cl, [ecx+1]
mov     [eax+0Ch], cl
mov     dword ptr [eax+58h], 0
pop     edx
pop     ecx
retn

loc_496A81:
mov     eax, [eax+2Ch]
add     dword ptr [eax+58h], 10h
pop     edx
pop     ecx
retn
sub_496A3A endp




sub_496A8B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_496AFB
mov     eax, [eax+28h]
call    sub_4DE2F6
mov     eax, [ecx+2Ch]
call    sub_4DE477
mov     eax, [ecx+0A0h]
call    sub_4DE3EA
mov     edx, 3
mov     eax, ecx
call    sub_4966BD
mov     eax, offset unk_5298DD
call    sub_49DB4D
mov     byte ptr [eax+9], 1
mov     dword ptr [eax+58h], 0
mov     ds:byte_56F844, 3
xor     edx, edx
mov     ds:word_56F850, dx
mov     ds:word_56F852, dx
xor     ebx, ebx
mov     ds:dword_56F848, ebx
mov     ds:dword_56F84C, ebx
pop     edx
pop     ecx
pop     ebx
retn

loc_496AFB:
mov     eax, [eax+28h]
add     dword ptr [eax+58h], 30h ; '0'
pop     edx
pop     ecx
pop     ebx
retn
sub_496A8B endp




sub_496B06 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_496B67
mov     eax, [eax+28h]
call    sub_4DE477
mov     eax, [edx+0A0h]
call    sub_4DE3EA
mov     eax, offset unk_5298F1
call    sub_49DB4D
mov     byte ptr [eax+9], 2
mov     [eax+58h], ecx
xor     ah, ah
mov     ds:byte_56F844, ah
mov     ds:byte_56F87C, 3
xor     edx, edx
mov     ds:word_56F888, dx
xor     ebx, ebx
mov     ds:word_56F88A, bx
mov     ds:dword_56F880, ecx
mov     ds:dword_56F884, ecx
pop     edx
pop     ecx
pop     ebx
retn

loc_496B67:
mov     eax, [eax+28h]
add     dword ptr [eax+58h], 8
pop     edx
pop     ecx
pop     ebx

locret_496B71:
retn
sub_496B06 endp




sub_496B72 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_496B71
mov     eax, [eax+28h]
call    sub_4DE477
xor     ah, ah
mov     ds:byte_56F87C, ah
mov     eax, 0Ah
sub_496B72 endp




sub_496B8D proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 1Ah
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_496B8D endp




sub_496BD9 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_496C3A
mov     eax, 0Dh
call    sub_496B8D
mov     ds:byte_56F8B4, 3
mov     eax, offset unk_529905
call    sub_49DB4D
mov     eax, offset unk_529919
call    sub_49DB4D
mov     eax, offset unk_52992D
call    sub_49DB4D
mov     eax, offset unk_529941
call    sub_49DB4D
mov     eax, offset unk_529955
call    sub_49DB4D
mov     eax, offset unk_529969
call    sub_49DB4D
mov     eax, offset unk_52997D
call    sub_49DB4D
mov     byte ptr [eax+9], 3

locret_496C3A:
retn
sub_496BD9 endp




sub_496C3B proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_496C4D
mov     eax, [eax+40h]
call    sub_4DE477
pop     edx
retn

loc_496C4D:
cmp     edx, 78h ; 'x'
jnz     short loc_496C5C
mov     eax, 8
call    sub_49E0D7

loc_496C5C:
pop     edx
retn
sub_496C3B endp




sub_496C5E proc near
push    ebx
push    edx
push    esi
mov     edx, eax
mov     eax, [eax+10h]
test    eax, eax
jbe     short loc_496C73
cmp     eax, 1
jz      short loc_496CD8
pop     esi
pop     edx
pop     ebx
retn

loc_496C73:
xor     bh, bh
mov     ds:byte_56F8B4, bh
mov     eax, [edx+28h]
call    sub_4DE2F6
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     eax, [edx+30h]
call    sub_4DE2F6
mov     eax, [edx+34h]
call    sub_4DE2F6
mov     eax, [edx+38h]
call    sub_4DE2F6
mov     eax, [edx+3Ch]
call    sub_4DE2F6
mov     eax, 0Fh
call    sub_496B8D
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     eax, [edx+24h]
mov     [eax+9], bh
mov     eax, [edx+24h]
mov     word ptr [eax+16h], 0FFEBh
mov     eax, 2
call    sub_49E0D7
pop     esi
pop     edx
pop     ebx
retn

loc_496CD8:
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     edx, edx
mov     word ptr ds:dword_5F889A+2, dx
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 898h
xor     edx, edx
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 8980000h
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     word ptr ds:dword_5F88A4+2, 800h
xor     eax, eax
mov     ds:word_5F88A8, ax
mov     ds:byte_5F88AC, 30h ; '0'
pop     esi
pop     edx
pop     ebx
retn
sub_496C5E endp




sub_496D49 proc near
push    edx
mov     edx, eax
mov     eax, [eax+10h]
cmp     eax, 78h ; 'x'
jb      short loc_496D6F
jbe     short loc_496D9E
cmp     eax, 0F0h
jb      loc_49690E
jbe     short loc_496DAD
cmp     eax, 127h
jz      short loc_496DB4
jmp     loc_49690E

loc_496D6F:
test    eax, eax
jnz     loc_49690E
or      ds:byte_5F8364, 2
mov     eax, 2
call    sub_4964C1
mov     eax, 2
call    sub_49649E
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 0
jmp     loc_49690E

loc_496D9E:
mov     eax, 5
call    sub_49649E
jmp     loc_49690E

loc_496DAD:
mov     eax, 3
jmp     short loc_496DC3

loc_496DB4:
mov     eax, 5
call    sub_49649E
mov     eax, 2

loc_496DC3:
call    sub_4964C1
jmp     loc_49690E
sub_496D49 endp




sub_496DCD proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jbe     short loc_496DDC
cmp     edx, 1Eh
jz      short loc_496DE5
pop     edx
retn

loc_496DDC:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 0
pop     edx
retn

loc_496DE5:
mov     eax, [eax+24h]
inc     byte ptr [eax+9]
pop     edx
retn
sub_496DCD endp




sub_496DED proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_496E0C
jbe     loc_496E7F
cmp     al, 2
jz      loc_496E9E
jmp     loc_496EB5

loc_496E0C:
test    al, al
jnz     loc_496EB5
xor     ebx, ebx
mov     edx, 1
mov     eax, 8000002Eh
call    sub_4D89E4
and     ds:byte_5F8364, 0FDh
mov     edx, 80h
mov     eax, 17Eh
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, 2
call    sub_496B8D
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_529991
mov     dword ptr [ecx+0A4h], offset unk_529F45
mov     dword ptr [ecx+0Ch], 0
mov     eax, offset unk_5298A1
call    sub_49DB4D

loc_496E7A:
inc     byte ptr [ecx+5]
jmp     short loc_496EB5

loc_496E7F:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_496EB5
mov     edx, 80h
mov     eax, 100h
call    sub_4DC979
jmp     short loc_496E7A

loc_496E9E:
xor     edx, edx
mov     ds:dword_55A658, edx
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

loc_496EB5:
call    sub_49DBD1

loc_496EBA:
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_496DED endp




sub_496EC3 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_496EDA
jbe     short loc_496F18
cmp     al, 2
jz      short loc_496F25
jmp     loc_496F5C

loc_496EDA:
test    al, al
jnz     loc_496F5C
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     al, byte ptr ds:dword_55A658
test    al, 80h
jnz     short loc_496F57
test    al, 1
jz      short loc_496F57
mov     bl, al
or      bl, 2
mov     byte ptr ds:dword_55A658, bl
mov     eax, 8
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0
jmp     short loc_496F57

loc_496F18:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
jmp     short loc_496F57

loc_496F25:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_496F50
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     bh, byte ptr ds:dword_55A658
test    bh, 80h
jnz     short loc_496F57
test    bh, 1
jz      short loc_496F57
mov     eax, 8
call    sub_49E0D7

loc_496F50:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_496F57:
call    sub_49DBD1

loc_496F5C:
call    sub_47EBCB
test    eax, eax
jz      loc_496EBA
or      byte ptr ds:dword_55A658, 1
jmp     loc_496EBA
sub_496EC3 endp

align 2
jpt_496FA1 dd offset loc_496FA8 ; jump table for switch statement
dd offset loc_497075
dd offset loc_497090
dd offset loc_49709F



sub_496F86 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_496FA1      ; jumptable 00496FA1 default case
and     eax, 0FFh
jmp     jpt_496FA1[eax*4] ; switch jump

loc_496FA8:             ; jumptable 00496FA1 case 0
cmp     ds:word_6E23D6, 0
jnz     def_496FA1      ; jumptable 00496FA1 default case
xor     al, al
mov     ds:byte_56F80C, al
mov     ds:byte_56F844, al
xor     dl, dl
mov     ds:byte_56F87C, al
xor     dh, dh
mov     ds:byte_56F8B4, al
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     ebx, ebx
mov     word ptr ds:dword_5F889A+2, bx
mov     word ptr ds:dword_5F889E, 0FFFFh
xor     edi, edi
mov     word ptr ds:dword_5F889E+2, di
xor     edi, edi
mov     ds:dword_5F888C, edi
mov     ds:dword_5F8890, 0FFFF0000h
xor     eax, eax
mov     ds:dword_5F8894, edi
xor     eax, edi
mov     ds:word_5F88A8, ax
mov     word ptr ds:dword_5F88A4, dx
mov     word ptr ds:dword_5F88A4+2, 800h
xor     ah, ah
mov     ds:byte_5F88AC, ah
mov     byte ptr ds:dword_5F84CB+1, dl
mov     byte ptr ds:dword_5F84CB+2, dl
call    sub_4D8EB1
test    byte ptr ds:dword_55A658, 2
jz      short loc_49706D
mov     edx, 80h
mov     eax, 17Eh
call    sub_4DC979
mov     eax, 0CBh
call    sub_42BEB2

loc_49706D:
inc     byte ptr [ecx+5]
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_497075:             ; jumptable 00496FA1 case 1
test    byte ptr ds:dword_55A658, 2
jz      short loc_497087
mov     byte ptr [ecx+5], 2
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_497087:
mov     byte ptr [ecx+5], 3
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_497090:             ; jumptable 00496FA1 case 2
call    sub_42C353
test    eax, eax
jnz     def_496FA1      ; jumptable 00496FA1 default case
jmp     short loc_49706D

loc_49709F:             ; jumptable 00496FA1 case 3
or      ds:byte_5F8364, 3
test    byte ptr ds:dword_55A658, 2
jnz     short loc_4970BE
mov     edx, 80h
mov     eax, 17Eh
call    sub_4DC979

loc_4970BE:
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     edx, offset dword_77EA48
cmp     ds:dword_55A658, 0
jz      short loc_4970E4
xor     eax, eax
call    sub_49E0D7

loc_4970E4:
mov     byte ptr [edx+14h], 0FFh
mov     byte ptr [edx+18h], 0FFh
mov     byte ptr [edx+16h], 1Ah
mov     byte ptr [edx+17h], 0Fh
mov     word ptr [edx+8], 0
mov     word ptr [edx+0Ah], 0FFFFh
mov     word ptr [edx+0Ch], 0
mov     word ptr [edx+12h], 800h
mov     byte ptr [edx+15h], 0
mov     byte ptr [edx+19h], 0FFh
call    sub_4245A3
mov     eax, ebx
call    sub_4B565A
mov     byte ptr [ecx], 0

def_496FA1:             ; jumptable 00496FA1 default case
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_496F86 endp




sub_497128 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_49712E[edx*4]
pop     edx
retn
sub_497128 endp




sub_497137 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A65E, dl
mov     ds:byte_55A65D, dl
mov     ds:byte_55A65C, dl
mov     eax, ds:off_52A004[eax*4]
mov     ds:dword_55A664, eax
pop     edx
retn
sub_497137 endp




sub_49715A proc near
push    edx
xor     dl, dl
mov     ds:byte_55A661, dl
mov     ds:byte_55A660, dl
mov     ds:byte_55A65F, dl
mov     eax, ds:off_52A03D[eax*4]
mov     ds:dword_55A668, eax
pop     edx
retn
sub_49715A endp




sub_49717D proc near
push    ebx
push    ecx
push    edx
mov     edx, offset byte_5F8364
mov     eax, offset byte_55A65C
mov     ebx, ds:dword_55A658+3
sar     ebx, 18h
mov     ecx, ds:dword_55A664
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_4971B3
jbe     short loc_4971B6
cmp     bl, 7Fh
jnz     short loc_4971B3
xor     bl, bl
mov     ds:byte_55A65E, bl
jmp     short loc_4971B6

loc_4971B3:
inc     byte ptr [eax+2]

loc_4971B6:
movsx   ecx, byte ptr [eax+2]
mov     ebx, [eax+8]
mov     bl, [ecx+ebx]
mov     [eax], bl
mov     [eax+1], bl
mov     ebx, [eax+2]
sar     ebx, 18h
mov     ecx, [eax+0Ch]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_4971E4
jbe     short loc_4971E7
cmp     bl, 7Fh
jnz     short loc_4971E4
mov     byte ptr [eax+5], 0
jmp     short loc_4971E7

loc_4971E4:
inc     byte ptr [eax+5]

loc_4971E7:
mov     ecx, [eax+2]
sar     ecx, 18h
mov     ebx, [eax+0Ch]
mov     bl, [ecx+ebx]
mov     [eax+3], bl
mov     [eax+4], bl
mov     bl, [eax]
mov     [edx+168h], bl
mov     al, [eax+3]
mov     [edx+169h], al
pop     edx
pop     ecx
pop     ebx
retn
sub_49717D endp




sub_49720E proc near

var_4= byte ptr -4
arg_0= dword ptr  4

push    eax
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 1Ah
mov     al, [esp+4+var_4]
mov     ds:byte_77EA5F, al
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, bx
mov     word ptr ds:dword_77EA52+2, cx
mov     edx, [esp+4+arg_0]
mov     word ptr ds:dword_77EA5A, dx
xor     ah, ah
mov     byte ptr ds:dword_77EA5A+3, ah
mov     dl, 0FFh
mov     ds:byte_77EA61, dl
mov     ds:byte_77EA60, dl
add     esp, 4
retn    4
sub_49720E endp




sub_497261 proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     dl, al
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
mov     [esi+4], dl
mov     [esi+5], dl
mov     [esi+6], dl
or      byte ptr [esi+7], 2
mov     edx, ds:dword_77E6DC
add     edx, 10h
mov     ds:dword_77E6DC, edx
mov     edi, edx
push    0
mov     ecx, 4Fh ; 'O'
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 0Ch
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, edi
call    sub_4F87A6
jmp     def_49731E      ; jumptable 0049731E default case
db 8Bh, 0C0h
jpt_49731E dd offset loc_497365 ; jump table for switch statement
dd offset loc_497325
dd offset loc_49733E
dd offset loc_4973D2
dd offset loc_4973E5
dd offset loc_4973F7
dd offset loc_497413

loc_497307:
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 6           ; switch 7 cases
ja      def_49731E      ; jumptable 0049731E default case
and     eax, 0FFh
jmp     jpt_49731E[eax*4] ; switch jump

loc_497325:             ; jumptable 0049731E case 1
mov     eax, 0Fh
call    sub_49E0D7
or      byte ptr ds:dword_55A66C, 80h

loc_497336:
inc     byte ptr [ecx+6]
jmp     def_49731E      ; jumptable 0049731E default case

loc_49733E:             ; jumptable 0049731E case 2
cmp     ds:word_6E23D6, 0
jnz     short loc_497365 ; jumptable 0049731E case 0
mov     eax, [ecx+24h]
call    sub_4DE336
mov     edx, 80h
mov     eax, 60h ; '`'
call    sub_4DC979
mov     byte ptr [ecx+0Ah], 3Ch ; '<'
jmp     short loc_497336

loc_497365:             ; jumptable 0049731E case 0
cmp     dword ptr [ecx+10h], 0C8h
jle     def_49731E      ; jumptable 0049731E default case
test    byte ptr ds:word_77EAB6, 3
jnz     def_49731E      ; jumptable 0049731E default case
mov     ecx, [ecx+24h]
xor     edx, edx
mov     dx, ds:word_77EAB6
sar     edx, 2
mov     esi, 0Eh
mov     eax, edx
sar     edx, 1Fh
idiv    esi
call    sub_4DE13B
test    eax, eax
jz      def_49731E      ; jumptable 0049731E default case
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 3
mov     byte ptr [eax+0Eh], 0
movzx   esi, dl
lea     edi, [eax+48h]
lea     esi, [ecx+esi*8+190h]
movsd
movsd
jmp     def_49731E      ; jumptable 0049731E default case

loc_4973D2:             ; jumptable 0049731E case 3
mov     bl, [ecx+0Ah]
dec     bl
mov     [ecx+0Ah], bl
jnz     def_49731E      ; jumptable 0049731E default case
jmp     loc_497336

loc_4973E5:             ; jumptable 0049731E case 4
mov     eax, 9Bh
call    sub_42BEB2
inc     byte ptr [ecx+5]
jmp     loc_497336

loc_4973F7:             ; jumptable 0049731E case 5
call    sub_42C353
test    eax, eax
jnz     def_49731E      ; jumptable 0049731E default case
mov     eax, 250022h
call    sub_4D8E42
jmp     loc_497336

loc_497413:             ; jumptable 0049731E case 6
call    sub_4D8ECC
test    eax, eax
jz      def_49731E      ; jumptable 0049731E default case
mov     eax, 7
call    sub_49E0D7
call    sub_49DF64
mov     byte ptr [ecx+6], 0
jmp     def_49731E      ; jumptable 0049731E default case
db 8Dh, 40h, 0
jpt_497465 dd offset loc_49746C ; jump table for switch statement
dd offset loc_4975D1
dd offset loc_4975DA
dd offset def_497465

loc_49744B:
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     esi, eax
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      def_497465      ; jumptable 00497465 default case, case 3
and     eax, 0FFh
jmp     jpt_497465[eax*4] ; switch jump

loc_49746C:             ; jumptable 00497465 case 0
or      ds:byte_5F8364, 3
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     ebx, ebx
mov     word ptr ds:dword_5F889A+2, bx
mov     word ptr ds:dword_5F889E, 0FF3Fh
mov     word ptr ds:dword_5F889E+2, 5DCh
xor     edx, edx
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8890, 0FF3F0000h
mov     ds:dword_5F8894, 5DC0000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
xor     ebx, ebx
mov     ds:word_5F88A8, ax
mov     ds:byte_5F88AC, 80h
xor     dh, dh
mov     ds:byte_5F83DA, dh
xor     bl, al
mov     ds:byte_5F83D8, bl
xor     eax, eax
call    sub_49715A
xor     eax, eax
call    sub_497137
mov     [esp+1Ch+var_1C], 96h
mov     edi, 0FFFFFF3Fh
mov     [esp+1Ch+var_1A], di
mov     [esp+1Ch+var_18], 5DCh
push    1
push    1
push    0FFFFFFFDh
mov     ecx, 14h
mov     ebx, 1
mov     edx, 0Ah
lea     eax, [esp+28h+var_1C]
call    sub_43FD43
mov     [esi+0A0h], eax
xor     edx, edx
mov     [esp+1Ch+var_1C], dx
mov     [esp+1Ch+var_1A], di
mov     [esp+1Ch+var_18], 898h
push    0
push    1
push    0FFFFFFFDh
mov     ecx, 14h
mov     ebx, 2
mov     edx, 4
lea     eax, [esp+28h+var_1C]
call    sub_43FD43
mov     [esi+9Ch], eax
mov     [esp+1Ch+var_1C], 0FF6Ah
mov     [esp+1Ch+var_1A], 0FF3Fh
mov     [esp+1Ch+var_18], 960h
push    0
push    1
push    0FFFFFFFDh
mov     ecx, 14h
mov     ebx, 1
mov     edx, 0Ah
lea     eax, [esp+28h+var_1C]
call    sub_43FD43
mov     [esi+98h], eax

loc_4975A6:
inc     byte ptr [esi+6]

def_497465:             ; jumptable 00497465 default case, case 3
call    sub_49717D
mov     eax, [esi+10h]
cmp     eax, 28h ; '('
jb      short loc_4975FA
jbe     short loc_497614
cmp     eax, 2Dh ; '-'
jb      loc_497663
jbe     short loc_497629
cmp     eax, 41h ; 'A'
jz      loc_497646
jmp     loc_497663

loc_4975D1:             ; jumptable 00497465 case 1
and     ds:byte_5F8364, 0FEh
jmp     short loc_4975A6

loc_4975DA:             ; jumptable 00497465 case 2
cmp     ds:word_6E23D6, 0
jnz     short def_497465 ; jumptable 00497465 default case, case 3
mov     eax, 4
call    sub_497137
inc     byte ptr [esi+5]
and     byte ptr ds:dword_55A66C, 7Fh
jmp     short loc_4975A6

loc_4975FA:
cmp     eax, 1Eh
jnz     short loc_497663
push    3
push    80h
mov     ecx, 0Fh
xor     ebx, ebx
mov     edx, 50h ; 'P'
jmp     short loc_49765C

loc_497614:
push    4
push    60h ; '`'
mov     ecx, 14h
mov     ebx, 3
mov     edx, 28h ; '('
jmp     short loc_49765C

loc_497629:
push    4
push    80h
mov     ecx, 14h
mov     ebx, 2
mov     edx, 50h ; 'P'
xor     eax, eax
call    sub_43FDD7

loc_497646:
push    6
push    80h
mov     ecx, 14h
mov     ebx, 1
mov     edx, 32h ; '2'

loc_49765C:
xor     eax, eax
call    sub_43FDD7

loc_497663:
mov     edi, [esi+10h]
cmp     edi, 5Ah ; 'Z'
jge     short loc_49767B
cmp     edi, 1Eh
jle     short loc_49767B
mov     eax, [esi+0A0h]
inc     byte ptr [eax+0Dh]
jmp     short def_497E7E ; jumptable 00497E7E default case

loc_49767B:
cmp     dword ptr [esi+10h], 5Ah ; 'Z'
jnz     short def_497E7E ; jumptable 00497E7E default case
mov     eax, [esi+0A0h]
call    sub_4DE3EA

def_497E7E:             ; jumptable 00497E7E default case
add     esp, 8

def_49731E:             ; jumptable 0049731E default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_497261 endp




sub_497695 proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jbe     short loc_4976A4
cmp     edx, 0Fh
jz      short loc_4976C5
jmp     short loc_4976CF

loc_4976A4:
mov     byte ptr [eax+6], 0
or      ds:byte_5F8364, 1
mov     eax, 4
call    sub_49715A
mov     eax, 1
call    sub_497137
jmp     short loc_4976CF

loc_4976C5:
mov     eax, 1
call    sub_49715A

loc_4976CF:
call    sub_49717D
pop     edx
retn
sub_497695 endp




sub_4976D6 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_4976FF
push    ecx
xor     ebx, ebx
xor     edx, eax
mov     eax, 2
call    sub_49720E
mov     eax, offset unk_52A065
call    sub_49DB4D
pop     edx
pop     ecx
pop     ebx
retn

loc_4976FF:
cmp     ecx, 40h ; '@'
jge     short loc_49771A
mov     eax, [eax+9Ch]
inc     byte ptr [eax+0Dh]
mov     edx, [edx+98h]
inc     byte ptr [edx+0Dh]
pop     edx
pop     ecx
pop     ebx
retn

loc_49771A:
jnz     short loc_497732
mov     eax, [eax+9Ch]
call    sub_4DE3EA
mov     eax, [edx+98h]
call    sub_4DE3EA

loc_497732:
pop     edx
pop     ecx
pop     ebx

locret_497735:
retn
sub_4976D6 endp




sub_497736 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, [eax+24h]
mov     eax, [eax+10h]
test    eax, eax
jnz     short loc_4977A2
push    eax
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, 0Bh
call    sub_49720E
and     ds:byte_5F8364, 0FDh
mov     eax, offset unk_52A079
call    sub_49DB4D
mov     word ptr [esi+14h], 0
mov     word ptr [esi+16h], 0FF9Ch
mov     word ptr [esi+18h], 0FF38h
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     word ptr [esi+46h], 0FFE8h

loc_4977A2:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_497736 endp




sub_4977A7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     al, [eax+6]
cmp     al, 1
jb      short loc_4977C8
jbe     loc_49789B
cmp     al, 2
jz      loc_4978D2
jmp     loc_4978E2

loc_4977C8:
test    al, al
jnz     loc_4978E2
mov     eax, [esi+28h]
and     byte ptr [eax], 0FDh
mov     eax, [esi+24h]
and     byte ptr [eax], 0FDh
mov     eax, [esi+24h]
mov     word ptr [eax+46h], 0
push    800h
mov     ecx, 780h
mov     ebx, 0FFFFFF3Fh
xor     edx, edx
mov     eax, 2
call    sub_49720E
or      ds:byte_5F8364, 3
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     ebx, ebx
mov     word ptr ds:dword_5F889A+2, bx
mov     word ptr ds:dword_5F889E, 0FF3Fh
mov     word ptr ds:dword_5F889E+2, 780h
xor     edi, edi
mov     ds:dword_5F888C, edi
mov     ds:dword_5F8890, 0FF3F0000h
mov     ds:dword_5F8894, 7800000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, bx
mov     ds:byte_5F88AC, 81h
xor     dh, dh
mov     ds:byte_5F83DA, dh
xor     bl, bl
mov     ds:byte_5F83D8, bl
mov     eax, 2
call    sub_49715A
mov     eax, 2
call    sub_497137

loc_497896:
inc     byte ptr [esi+6]
jmp     short loc_4978E2

loc_49789B:
or      ds:byte_5F8421, 10h
add     word ptr ds:dword_5F889E+2, 0Ah
mov     eax, ds:dword_5F889E
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8894, eax
mov     ecx, [esi+10h]
cmp     ecx, 10h
jnz     short loc_4978CB
mov     ds:byte_5F88AC, 82h
jmp     short loc_4978E2

loc_4978CB:
cmp     ecx, 1Ch
jnz     short loc_4978E2
jmp     short loc_497896

loc_4978D2:
cmp     dword ptr [esi+10h], 28h ; '('
jnz     short loc_4978E2
mov     eax, 5
call    sub_497137

loc_4978E2:
call    sub_49717D
jmp     def_49731E      ; jumptable 0049731E default case
sub_4977A7 endp




sub_4978EC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
mov     esi, [eax+24h]
mov     eax, [eax+10h]
cmp     eax, 50h ; 'P'
jb      short loc_49790E
jbe     loc_497988
cmp     eax, 6Eh ; 'n'
jz      short loc_497982
jmp     def_49731E      ; jumptable 0049731E default case

loc_49790E:
test    eax, eax
jnz     def_49731E      ; jumptable 0049731E default case
mov     byte ptr [edi+6], 0
push    eax
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, 0Bh
call    sub_49720E
and     ds:byte_5F8364, 0FDh
mov     edi, [edi+28h]
or      byte ptr [edi], 2
or      byte ptr [esi], 2
mov     word ptr [esi+14h], 0
mov     word ptr [esi+16h], 0FED4h
mov     word ptr [esi+18h], 0FF6Ah
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0FFE8h
jmp     def_49731E      ; jumptable 0049731E default case

loc_497982:
mov     word ptr [esi+44h], 0FFE8h

loc_497988:
mov     word ptr [esi+46h], 0
jmp     def_49731E      ; jumptable 0049731E default case
sub_4978EC endp




sub_497993 proc near
push    edx
mov     edx, eax
mov     eax, [eax+24h]
mov     edx, [edx+10h]
test    edx, edx
jbe     short loc_4979A7
cmp     edx, 1Eh
jz      short loc_497A03
pop     edx
retn

loc_4979A7:
or      byte ptr [eax], 2
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FE70h
mov     word ptr [eax+18h], 0FFB0h
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
mov     byte ptr [eax+0FBh], 0FFh
mov     byte ptr [eax+103h], 0FFh
mov     byte ptr [eax+107h], 0FFh
mov     word ptr [eax+44h], 0
mov     word ptr [eax+46h], 4
pop     edx
retn

loc_497A03:
mov     word ptr [eax+46h], 0
pop     edx
retn
sub_497993 endp




sub_497A0B proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 8
mov     edx, eax
mov     al, [eax+6]
test    al, al
jbe     short loc_497A23
cmp     al, 1
jz      short loc_497A42
jmp     loc_497AAA

loc_497A23:
mov     eax, [edx+28h]
call    sub_4DE477
mov     eax, [edx+24h]
call    sub_4DE2F6
mov     eax, offset unk_52A08D
call    sub_49DB4D
inc     byte ptr [edx+6]
jmp     short loc_497AAA

loc_497A42:
cmp     dword ptr [edx+10h], 96h
jge     short loc_497AA5
mov     [esp+14h+var_14], 0FF07h
mov     ebx, 0FFFFFFFFh
mov     [esp+14h+var_12], bx
mov     ecx, 0FFFFFFEEh
mov     [esp+14h+var_10], cx
mov     eax, esp
call    sub_42C443
mov     edx, eax
shl     edx, 2
sub     edx, eax
mov     [esp+14h+var_14], 0F9h
mov     [esp+14h+var_12], bx
mov     [esp+14h+var_10], cx
sub     word ptr ds:(dword_6E40AA+2)[edx*4], 2
mov     eax, esp
call    sub_42C443
mov     edx, eax
shl     edx, 2
sub     edx, eax
add     word ptr ds:(dword_6E40AA+2)[edx*4], 2
jmp     short loc_497AAA

loc_497AA5:
add     al, al
mov     [edx+6], al

loc_497AAA:
add     esp, 8
pop     edx
pop     ecx
pop     ebx
retn
sub_497A0B endp




sub_497AB1 proc near
push    ecx
push    edx
mov     edx, [eax+24h]
mov     ecx, [eax+10h]
test    ecx, ecx
jbe     short loc_497AC8
cmp     ecx, 96h
jz      short loc_497ACF
pop     edx
pop     ecx
retn

loc_497AC8:
mov     byte ptr [eax+6], 0
pop     edx
pop     ecx
retn

loc_497ACF:
mov     word ptr [edx+44h], 50h ; 'P'
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+0Dh], 15h
pop     edx
pop     ecx
retn
sub_497AB1 endp




sub_497AE0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, [eax+10h]
test    edx, edx
jbe     short loc_497AF9
cmp     edx, 3Ch ; '<'
jz      loc_497BAE
jmp     loc_497BB8

loc_497AF9:
mov     eax, [eax+24h]
and     byte ptr [eax], 0FDh
push    800h
mov     ecx, 898h
mov     ebx, 0FFFFFF3Fh
xor     edx, edx
mov     eax, 2
call    sub_49720E
or      ds:byte_5F8364, 3
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     edx, edx
mov     word ptr ds:dword_5F889A+2, dx
mov     word ptr ds:dword_5F889E, 0FF3Fh
mov     word ptr ds:dword_5F889E+2, 898h
xor     edx, edx
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8890, 0FF3F0000h
mov     ds:dword_5F8894, 8980000h
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     word ptr ds:dword_5F88A4+2, 800h
xor     eax, eax
mov     ds:word_5F88A8, ax
mov     ds:byte_5F88AC, 83h
xor     al, al
mov     ds:byte_5F83DA, al
xor     ah, ah
mov     ds:byte_5F83D8, ah
mov     eax, 3
call    sub_49715A
mov     eax, 3
jmp     short loc_497BB3

loc_497BAE:
mov     eax, 6

loc_497BB3:
call    sub_497137

loc_497BB8:
call    sub_49717D
mov     eax, 50h ; 'P'
call    sub_497261
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_497AE0 endp




sub_497BCC proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, [eax+24h]
mov     eax, [eax+10h]
test    eax, eax
jnz     short loc_497C35
push    eax
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, 0Bh
call    sub_49720E
or      byte ptr [esi], 2
mov     word ptr [esi+14h], 0
mov     word ptr [esi+16h], 0FFFFh
mov     word ptr [esi+18h], 0FEA2h
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     word ptr [esi+44h], 0
mov     byte ptr [esi+0Ch], 1
mov     byte ptr [esi+0Dh], 14h

loc_497C35:
mov     [esp+18h+var_18], 0FF07h
mov     ebx, 0FFFFFFFFh
mov     [esp+18h+var_16], bx
mov     ecx, 0FFFFFFEEh
mov     [esp+18h+var_14], cx
mov     eax, esp
call    sub_42C443
mov     esi, eax
shl     esi, 2
sub     esi, eax
mov     [esp+18h+var_18], 0F9h
mov     [esp+18h+var_16], bx
mov     [esp+18h+var_14], cx
add     word ptr ds:(dword_6E40AA+2)[esi*4], 3
mov     eax, esp
call    sub_42C443
mov     esi, eax
shl     esi, 2
sub     esi, eax
sub     word ptr ds:(dword_6E40AA+2)[esi*4], 3
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_497BCC endp




sub_497C95 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_497CB1
jbe     short loc_497D1B
cmp     al, 2
jz      loc_497D2B
jmp     loc_497D4C

loc_497CB1:
test    al, al
jnz     loc_497D4C
and     ds:byte_5F8364, 0FDh
mov     ds:byte_5F84D4, al
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
push    0
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, 0Fh
call    sub_49720E
mov     ds:dword_77E6B4, offset unk_52A0A1
mov     dword ptr [esi+0A4h], offset unk_52A0ED
mov     dword ptr [esi+0Ch], 0
mov     eax, offset unk_52A051
call    sub_49DB4D

loc_497D16:
inc     byte ptr [esi+5]
jmp     short loc_497D4C

loc_497D1B:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_497D4C
jmp     short loc_497D16

loc_497D2B:
xor     edx, edx
mov     ds:dword_55A66C, edx
mov     eax, 250021h
call    sub_4D8E42
inc     byte ptr [esi+4]
mov     byte ptr [esi+5], 0
mov     byte ptr [esi+6], 0
mov     byte ptr [esi+7], 0

loc_497D4C:
call    sub_49DBD1
call    sub_49DECF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_497C95 endp

jpt_497D7F dd offset loc_497D86 ; jump table for switch statement
dd offset loc_497DD3
dd offset loc_497E1D
dd offset loc_497E2A



sub_497D6B proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_497D7F      ; jumptable 00497D7F default case
and     eax, 0FFh
jmp     jpt_497D7F[eax*4] ; switch jump

loc_497D86:             ; jumptable 00497D7F case 0
call    sub_49DBD1
call    sub_4D8ECC
test    eax, eax
jz      def_497D7F      ; jumptable 00497D7F default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_52A0FD
mov     dword ptr [ecx+0A4h], offset unk_52A585
and     byte ptr ds:dword_55A66C, 7Fh
inc     byte ptr [ecx+5]

def_497D7F:             ; jumptable 00497D7F default case
call    sub_47EBCB
test    eax, eax
jz      short loc_497DCB
or      byte ptr ds:dword_55A66C, 1

loc_497DCB:
call    sub_49DECF
pop     edx
pop     ecx
retn

loc_497DD3:             ; jumptable 00497D7F case 1
mov     edx, [ecx+0A4h]
mov     eax, ecx
call    dword ptr [edx+4]
mov     al, byte ptr ds:dword_55A66C
test    al, 80h
jnz     short loc_497E16
test    al, 1
jz      short loc_497E16
mov     dl, al
or      dl, 2
mov     byte ptr ds:dword_55A66C, dl

loc_497DF6:
mov     eax, 8
call    sub_49E0D7
mov     edx, 80h
mov     eax, 17Eh
call    sub_4DC979

loc_497E0F:
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

loc_497E16:
call    sub_49DBD1
jmp     short def_497D7F ; jumptable 00497D7F default case

loc_497E1D:             ; jumptable 00497D7F case 2
mov     edx, [ecx+0A4h]
mov     eax, ecx
call    dword ptr [edx+4]
jmp     short loc_497E16

loc_497E2A:             ; jumptable 00497D7F case 3
cmp     byte ptr [ecx+8], 0FFh
jz      short loc_497E0F
mov     edx, [ecx+0A4h]
mov     eax, ecx
call    dword ptr [edx+4]
mov     dh, byte ptr ds:dword_55A66C
test    dh, 80h
jnz     short loc_497E16
test    dh, 1
jz      short loc_497E16
jmp     short loc_497DF6
sub_497D6B endp

db 8Bh, 0C0h
jpt_497E7E dd offset loc_497E85 ; jump table for switch statement
dd offset loc_497F2D
dd offset loc_497F48
dd offset loc_497F57



sub_497E5F proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_497E7E      ; jumptable 00497E7E default case
and     eax, 0FFh
jmp     jpt_497E7E[eax*4] ; switch jump

loc_497E85:             ; jumptable 00497E7E case 0
mov     si, ds:word_6E23D6
test    si, si
jnz     def_497E7E      ; jumptable 00497E7E default case
or      ds:byte_5F8364, 3
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, si
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, si
xor     ebx, ebx
mov     ds:dword_5F888C, ebx
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, ebx
xor     ebx, ebx
mov     ds:word_5F88A8, bx
mov     word ptr ds:dword_5F88A4, bx
mov     word ptr ds:dword_5F88A4+2, 800h
xor     dh, dh
mov     ds:byte_5F88AC, dh
mov     byte ptr ds:dword_5F84CB+1, dh
mov     byte ptr ds:dword_5F84CB+2, dh
call    sub_4D8EB1
test    byte ptr ds:dword_55A66C, 2
jz      short loc_497F25
mov     eax, 9Bh
call    sub_42BEB2

loc_497F25:
inc     byte ptr [ecx+5]
jmp     def_497E7E      ; jumptable 00497E7E default case

loc_497F2D:             ; jumptable 00497E7E case 1
test    byte ptr ds:dword_55A66C, 2
jz      short loc_497F3F
mov     byte ptr [ecx+5], 2
jmp     def_497E7E      ; jumptable 00497E7E default case

loc_497F3F:
mov     byte ptr [ecx+5], 3
jmp     def_497E7E      ; jumptable 00497E7E default case

loc_497F48:             ; jumptable 00497E7E case 2
call    sub_42C353
test    eax, eax
jnz     def_497E7E      ; jumptable 00497E7E default case
jmp     short loc_497F25

loc_497F57:             ; jumptable 00497E7E case 3
test    byte ptr ds:dword_55A66C, 2
jnz     short loc_497F6F
mov     edx, 80h
mov     eax, 17Eh
call    sub_4DC979

loc_497F6F:
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
cmp     ds:dword_55A66C, 0
jz      short loc_497F90
xor     eax, eax
call    sub_49E0D7

loc_497F90:
mov     [esp+1Ch+var_1C], 0FF00h
xor     ebx, ebx
mov     [esp+1Ch+var_1A], bx
mov     edi, 0B00h
mov     [esp+1Ch+var_18], di
mov     edx, esp
mov     eax, 2
call    sub_42C4B7
mov     edx, 40A00h
call    sub_4A7AE1
mov     edx, esp
mov     eax, 0Fh
call    sub_42C4B7
mov     edx, 40A00h
call    sub_4A7AE1
mov     [esp+1Ch+var_1C], 100h
mov     [esp+1Ch+var_1A], bx
mov     [esp+1Ch+var_18], di
mov     edx, esp
mov     eax, 2
call    sub_42C4B7
mov     edx, 40B00h
call    sub_4A7AE1
mov     edx, esp
mov     eax, 0Fh
call    sub_42C4B7
mov     edx, 40B00h
call    sub_4A7AE1
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 1Ah
mov     ds:byte_77EA5F, 0Fh
xor     edi, edi
mov     word ptr ds:dword_77EA4E+2, di
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, di
mov     word ptr ds:dword_77EA5A, 800h
xor     al, al
mov     byte ptr ds:dword_77EA5A+3, al
mov     ah, 0FFh
mov     ds:byte_77EA61, ah
mov     ds:byte_77EA60, ah
call    sub_428901
mov     [ecx+0A0h], eax
xor     ebx, ebx
mov     edx, 1
mov     eax, 8000002Fh
call    sub_4D89E4
mov     eax, esi
call    sub_4B565A
mov     byte ptr [ecx], 0
jmp     def_497E7E      ; jumptable 00497E7E default case
sub_497E5F endp




sub_498086 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_49808C[edx*4]
pop     edx
retn
sub_498086 endp




sub_498095 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_49809B[edx*4]
pop     edx
retn
sub_498095 endp

db 90h
jpt_4980CF dd offset loc_4980D6 ; jump table for switch statement
dd offset loc_4980FF
dd offset loc_498136
dd offset loc_49814F
dd offset loc_498215



sub_4980B9 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_4980CF      ; jumptable 004980CF default case
and     eax, 0FFh
jmp     jpt_4980CF[eax*4] ; switch jump

loc_4980D6:             ; jumptable 004980CF case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4980CF      ; jumptable 004980CF default case
mov     byte ptr ds:dword_5F836C, 3
xor     bh, bh
mov     byte ptr ds:dword_5F836C+1, bh

loc_4980F7:
inc     byte ptr [ecx+5]
jmp     def_4980CF      ; jumptable 004980CF default case

loc_4980FF:             ; jumptable 004980CF case 1
cmp     ds:word_6E23D6, 0
jnz     def_4980CF      ; jumptable 004980CF default case
cmp     ds:byte_77EAB8, 0
jnz     def_4980CF      ; jumptable 004980CF default case
mov     ebx, 1
mov     edx, ebx
mov     eax, 9Ch
call    sub_4DBCF3
call    sub_436868
mov     byte ptr [ecx+0Ah], 80h
jmp     short loc_4980F7

loc_498136:             ; jumptable 004980CF case 2
call    sub_42C353
test    eax, eax
jnz     def_4980CF      ; jumptable 004980CF default case
mov     eax, 24001Fh
call    sub_4D8E42
jmp     short loc_4980F7

loc_49814F:             ; jumptable 004980CF case 3
call    sub_4D8ECC
test    eax, eax
jz      def_4980CF      ; jumptable 004980CF default case
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52A764
mov     dword ptr [ecx+0A4h], offset unk_52B360
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 80h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 580h
mov     ds:dword_5F888C, offset unk_800000
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 5800000h
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, di
mov     ds:byte_5F88AC, 30h ; '0'
xor     bh, bh
mov     ds:byte_5F84D4, bh
xor     eax, eax
call    sub_4991AC
xor     eax, eax
call    sub_4986E8
call    sub_49DBD1
call    sub_49DECF
jmp     loc_4980F7

loc_498215:             ; jumptable 004980CF case 4
mov     eax, 6
call    sub_49E0D7
call    sub_4991CF
call    sub_49DBD1
call    sub_49DECF
mov     byte ptr [ecx+4], 1
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

def_4980CF:             ; jumptable 004980CF default case
call    sub_47EBCB
test    eax, eax
jz      short loc_49824B
or      byte ptr [ecx+0Ah], 1

loc_49824B:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4980B9 endp




sub_498250 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_498264
jbe     short loc_498290
cmp     al, 2
jz      short loc_49829D
jmp     short loc_4982C2

loc_498264:
test    al, al
jnz     short loc_4982C2
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     cl, [edx+0Ah]
test    cl, 80h
jnz     short loc_4982C2
test    cl, 1

loc_49827E:
jz      short loc_4982C2
mov     eax, 8
call    sub_49E0D7
mov     byte ptr [edx+4], 2
jmp     short loc_4982BE

loc_498290:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
jmp     short loc_4982C2

loc_49829D:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_4982BB
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     bl, [edx+0Ah]
test    bl, 80h
jnz     short loc_4982C2
test    bl, 1
jmp     short loc_49827E

loc_4982BB:
mov     [edx+4], al

loc_4982BE:
mov     byte ptr [edx+5], 0

loc_4982C2:
call    sub_47EBCB
test    eax, eax
jz      short loc_4982CF
or      byte ptr [edx+0Ah], 1

loc_4982CF:
call    sub_4991CF
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_498250 endp




sub_4982E2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_4982F6
cmp     al, 1
jz      short loc_498358
pop     edx
pop     ecx
pop     ebx
retn

loc_4982F6:
cmp     ds:word_6E23D6, 0
jnz     loc_4983A9
mov     edx, 80h
mov     eax, 156h
call    sub_4DC979
mov     eax, offset byte_5F8364
call    sub_4B565A
xor     ah, ah
mov     ds:byte_5F8410, ah
mov     byte ptr ds:dword_5F84CB+1, ah
mov     byte ptr ds:dword_5F84CB+2, ah
call    sub_4E1D8A
mov     bl, 1
mov     byte ptr ds:dword_77E954, bl
call    sub_42A66D
call    sub_4D8EB1
mov     word ptr ds:dword_77EA7C, 7Fh
add     [ecx+5], bl
pop     edx
pop     ecx
pop     ebx
retn

loc_498358:
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 1Bh
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
xor     ebx, ebx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     bl, dl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     bh, 0FFh
mov     ds:byte_77EA61, bh
mov     ds:byte_77EA60, bh
call    sub_47E829
mov     byte ptr [ecx], 0

loc_4983A9:
pop     edx
pop     ecx
pop     ebx
retn
sub_4982E2 endp




sub_4983AD proc near
push    edx
mov     edx, eax
mov     al, [eax+6]
test    al, al
jbe     short loc_4983BD
cmp     al, 1
jz      short loc_4983D0
pop     edx
retn

loc_4983BD:
cmp     ds:word_6E23D6, 0
jnz     short loc_4983F9
and     byte ptr [edx+0Ah], 7Fh
inc     byte ptr [edx+6]
pop     edx
retn

loc_4983D0:
cmp     dword ptr [edx+10h], 5Ah ; 'Z'
jnz     short loc_4983E0
mov     eax, 0Dh
call    sub_4991AC

loc_4983E0:
cmp     dword ptr [edx+10h], 78h ; 'x'
jl      short loc_4983F9
mov     eax, offset unk_52A610
call    sub_49DB4D
mov     byte ptr [edx+6], 0
call    sub_49DF64

loc_4983F9:
pop     edx

locret_4983FA:
retn
sub_4983AD endp




sub_4983FB proc near
cmp     dword ptr [eax+10h], 0
jnz     short loc_498429
and     ds:byte_5F8364, 0FDh
mov     eax, [eax+24h]
and     byte ptr [eax], 0FDh
mov     eax, offset unk_52A624
call    sub_49DB4D
mov     ds:byte_56F8B4, 3
mov     eax, 0Dh
call    sub_498BC3

loc_498429:
mov     eax, 3
jmp     sub_49926D
sub_4983FB endp




sub_498433 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_498471
mov     eax, [eax+28h]
and     byte ptr [eax], 0FDh
mov     dl, 2

loc_498446:
movsx   ecx, dl
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_52A610
call    sub_49DB4D
inc     dl
cmp     dl, 0Ah
jle     short loc_498446
xor     dh, dh
mov     ds:byte_55A680, dh
mov     [ebx+6], dh
jmp     short loc_498477

loc_498471:
cmp     byte ptr [eax+6], 0
jnz     short loc_498489

loc_498477:
xor     eax, eax
call    sub_49926D
test    eax, eax
jz      short loc_498493
inc     byte ptr [ebx+6]
pop     edx
pop     ecx
pop     ebx
retn

loc_498489:
mov     eax, 1
call    sub_49926D

loc_498493:
pop     edx
pop     ecx
pop     ebx
retn
sub_498433 endp




sub_498497 proc near
mov     eax, 1
jmp     sub_49926D
sub_498497 endp




sub_4984A1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4984DB
mov     dl, 2

loc_4984AE:
movsx   eax, dl
mov     eax, [ecx+eax*4+24h]
and     byte ptr [eax], 0FDh
inc     dl
cmp     dl, 0Ah
jle     short loc_4984AE
xor     bl, bl
mov     ds:byte_56F8B4, bl
mov     eax, offset unk_52A6EC
call    sub_49DB4D
mov     eax, 0Ch
call    sub_498BC3

loc_4984DB:
pop     edx
pop     ecx
pop     ebx
retn
sub_4984A1 endp




sub_4984DF proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_498503
mov     edx, [eax+50h]
and     byte ptr [edx], 0FDh
or      ds:byte_5F8364, 2
mov     eax, [eax+24h]
or      byte ptr [eax], 2
mov     eax, 0Fh
call    sub_498BC3

loc_498503:
pop     edx
retn
sub_4984DF endp




sub_498505 proc near
push    ecx
push    edx
push    edi
mov     edx, eax
mov     eax, [eax+10h]
cmp     eax, 19h
jb      short loc_498534
jbe     loc_49860E
cmp     eax, 1Eh
jb      loc_498628
jbe     loc_498615
cmp     eax, 3Ch ; '<'
jz      loc_49861E
pop     edi
pop     edx
pop     ecx
retn

loc_498534:
test    eax, eax
jbe     short loc_498545
cmp     eax, 0Ah
jz      loc_4985F6
pop     edi
pop     edx
pop     ecx
retn

loc_498545:
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 80h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 6C0h
mov     ecx, offset unk_800000
mov     ds:dword_5F888C, ecx
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 6C00000h
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, di
xor     eax, eax
call    sub_4991AC
mov     eax, 1
call    sub_4986E8
mov     eax, [edx+24h]
mov     word ptr [eax+14h], 80h
mov     word ptr [eax+16h], 8
mov     word ptr [eax+18h], 740h
mov     [eax+1Ch], ecx
mov     dword ptr [eax+20h], 80000h
mov     dword ptr [eax+24h], 7400000h
mov     [eax+58h], di
mov     [eax+54h], di
mov     word ptr [eax+56h], 0CE0h
pop     edi
pop     edx
pop     ecx
retn

loc_4985F6:
mov     ds:byte_5F88AC, 80h
mov     eax, 1
call    sub_4991AC

loc_498607:
mov     eax, 0Bh
jmp     short loc_498623

loc_49860E:
mov     eax, 1
jmp     short loc_498623

loc_498615:
mov     ds:byte_5F88AC, 81h
jmp     short loc_498607

loc_49861E:
mov     eax, 1

loc_498623:
call    sub_4986E8

loc_498628:
pop     edi
pop     edx
pop     ecx

locret_49862B:
retn
sub_498505 endp




sub_49862C proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_498639
and     ds:byte_5F8364, 0FDh

locret_498639:
retn
sub_49862C endp




sub_49863A proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_498647
or      ds:byte_5F8364, 2

locret_498647:
retn
sub_49863A endp




sub_498648 proc near

; FUNCTION CHUNK AT 0049870B SIZE 00000007 BYTES

mov     eax, [eax+10h]
cmp     eax, 15Eh
jb      short loc_498686
jbe     loc_4986C8
cmp     eax, 1FEh
jb      short loc_49867E
jbe     loc_49870B
cmp     eax, 208h
jb      short locret_49867D
jbe     loc_4986E3
cmp     eax, 21Eh
jz      loc_49870B

locret_49867D:
retn

loc_49867E:
cmp     eax, 1F4h
jz      short loc_4986D2
retn

loc_498686:
cmp     eax, 32h ; '2'
jb      short loc_498695
jbe     short loc_4986AD
cmp     eax, 0BEh
jz      short loc_4986C8
retn

loc_498695:
test    eax, eax
jnz     short locret_49867D
call    sub_4991AC
xor     eax, eax
call    sub_4986E8
mov     ds:byte_5F88AC, 82h
retn

loc_4986AD:
mov     ds:byte_5F88AC, 83h
mov     eax, 0Eh
call    sub_4991AC
mov     eax, 0Ch
jmp     sub_4986E8

loc_4986C8:
mov     eax, 0Fh
jmp     sub_4991AC

loc_4986D2:
mov     ds:byte_5F88AC, 84h
mov     eax, 3
call    sub_4991AC

loc_4986E3:
mov     eax, 0Dh
sub_498648 endp




sub_4986E8 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A67D, dl
mov     ds:byte_55A67C, dl
mov     ds:byte_55A67B, dl
mov     eax, ds:off_52B5EF[eax*4]
mov     ds:dword_55A674, eax
pop     edx
retn
sub_4986E8 endp

; START OF FUNCTION CHUNK FOR sub_498648

loc_49870B:
mov     eax, 3
jmp     short sub_4986E8
; END OF FUNCTION CHUNK FOR sub_498648



sub_498712 proc near
mov     eax, [eax+10h]
cmp     eax, 32h ; '2'
jb      short locret_498721
jbe     short loc_498722
cmp     eax, 78h ; 'x'
jz      short loc_49873A

locret_498721:
retn

loc_498722:
mov     ds:byte_5F88AC, 85h
mov     eax, 16h
call    sub_4991AC
mov     eax, 0Eh
jmp     short sub_4986E8

loc_49873A:
mov     ds:byte_5F88AC, 86h
mov     eax, 17h
call    sub_4991AC
mov     eax, 14h
jmp     short sub_4986E8
sub_498712 endp




sub_498752 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_498721
mov     eax, offset unk_52A700
jmp     sub_49DB4D
sub_498752 endp




sub_498762 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_498794
and     ds:byte_5F8364, 0FDh
mov     ds:byte_5F88AC, 30h ; '0'
mov     edx, [eax+54h]
and     byte ptr [edx], 0FDh
mov     eax, [eax+28h]
or      byte ptr [eax], 2
mov     ds:byte_56F8B4, 3
mov     eax, 0Dh
call    sub_498BC3

loc_498794:
mov     eax, 3
call    sub_49926D
pop     edx
retn
sub_498762 endp




sub_4987A0 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4987CB
mov     dl, 2

loc_4987AD:
movsx   eax, dl
mov     eax, [ecx+eax*4+24h]
or      byte ptr [eax], 2
inc     dl
cmp     dl, 0Ah
jle     short loc_4987AD
xor     bl, bl
mov     ds:byte_55A680, bl
mov     [ecx+6], bl
jmp     short loc_4987D1

loc_4987CB:
cmp     byte ptr [eax+6], 0
jnz     short loc_4987E2

loc_4987D1:
mov     eax, 2
call    sub_49926D
test    eax, eax
jz      short loc_4987E2
inc     byte ptr [ecx+6]

loc_4987E2:
pop     edx
pop     ecx
pop     ebx
retn
sub_4987A0 endp




sub_4987E6 proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4987FD
xor     bl, bl
mov     ds:byte_55A680, bl
mov     [eax+6], bl
jmp     short loc_498803

loc_4987FD:
cmp     byte ptr [eax+6], 0
jnz     short loc_498814

loc_498803:
mov     eax, 2
call    sub_49926D
test    eax, eax
jz      short loc_498814
inc     byte ptr [edx+6]

loc_498814:
pop     edx
pop     ebx
retn
sub_4987E6 endp




sub_498817 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49884D
mov     dl, 1

loc_498824:
movsx   eax, dl
mov     eax, [ecx+eax*4+24h]
and     byte ptr [eax], 0FDh
inc     dl
cmp     dl, 0Ah
jle     short loc_498824
xor     bl, bl
mov     ds:byte_56F8B4, bl
mov     eax, [ecx+50h]
or      byte ptr [eax], 2
mov     eax, 0Ch
call    sub_498BC3

loc_49884D:
pop     edx
pop     ecx
pop     ebx

locret_498850:
retn
sub_498817 endp

jpt_49893D dd offset loc_498944 ; jump table for switch statement
dd offset loc_49895F
dd offset loc_49896A
dd offset loc_49897F



sub_498861 proc near
push    ecx
push    edx
push    esi
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_49892A
mov     eax, [eax+24h]
call    sub_4DE2F6
mov     eax, [ecx+28h]
call    sub_4DE477
mov     eax, [ecx+2Ch]
call    sub_4DE2F6
mov     eax, [ecx+30h]
call    sub_4DE2F6
mov     dl, 4

loc_498892:
movsx   eax, dl
mov     eax, [ecx+eax*4+24h]
call    sub_4DE371
inc     dl
cmp     dl, 9
jle     short loc_498892
mov     eax, [ecx+4Ch]
call    sub_4DE2F6
mov     eax, [ecx+50h]
call    sub_4DE2F6
mov     eax, [ecx+54h]
call    sub_4DE2F6
xor     dl, dl

loc_4988BF:
movsx   eax, dl
mov     dword ptr [ecx+eax*4+24h], 0
inc     dl
cmp     dl, 0Ch
jle     short loc_4988BF
mov     eax, offset unk_52A714
call    sub_49DB4D
mov     eax, [ecx+24h]
mov     byte ptr [eax+9], 2
mov     eax, [ecx+24h]
mov     dword ptr [eax+58h], 500h
mov     ds:byte_56F87C, 3
xor     edx, edx
mov     ds:word_56F888, dx
mov     ds:word_56F88A, dx
xor     esi, esi
mov     ds:dword_56F880, esi
mov     ds:dword_56F884, esi
call    sub_4D8EB1
or      byte ptr [ecx+0Ah], 80h
mov     byte ptr [ecx+6], 0
mov     eax, 0Eh
call    sub_498BC3
jmp     short loc_498931

loc_49892A:
mov     eax, [eax+24h]
sub     dword ptr [eax+58h], 8

loc_498931:
mov     al, [ecx+6]
cmp     al, 3           ; switch 4 cases
ja      short def_49893D ; jumptable 0049893D default case
and     eax, 0FFh
jmp     jpt_49893D[eax*4] ; switch jump

loc_498944:             ; jumptable 0049893D case 0
cmp     dword ptr [ecx+10h], 0Ah
jnz     short def_49893D ; jumptable 0049893D default case
mov     eax, 9Dh
call    sub_42BEB2
mov     byte ptr [ecx+5], 1

loc_498958:
inc     byte ptr [ecx+6]
pop     esi
pop     edx
pop     ecx
retn

loc_49895F:             ; jumptable 0049893D case 1
call    sub_42C353
test    eax, eax
jnz     short def_49893D ; jumptable 0049893D default case
jmp     short loc_498958

loc_49896A:             ; jumptable 0049893D case 2
cmp     dword ptr [ecx+10h], 0A0h
jl      short def_49893D ; jumptable 0049893D default case
mov     eax, 240021h
call    sub_4D8E42
jmp     short loc_498958

loc_49897F:             ; jumptable 0049893D case 3
call    sub_4D8ECC
test    eax, eax
jz      short def_49893D ; jumptable 0049893D default case
mov     byte ptr [ecx+5], 2
mov     byte ptr [ecx+6], 0
call    sub_49DF64

def_49893D:             ; jumptable 0049893D default case
pop     esi
pop     edx
pop     ecx
retn
sub_498861 endp




sub_498999 proc near
push    edx
push    esi
mov     edx, [eax+10h]
cmp     edx, 2Dh ; '-'
jb      short loc_4989C4
jbe     loc_498A7F
cmp     edx, 37h ; '7'
jb      loc_498A9D
jbe     loc_498A8C
cmp     edx, 78h ; 'x'
jz      loc_498A93
pop     esi
pop     edx
retn

loc_4989C4:
cmp     edx, 1
jnz     loc_498A9D
and     byte ptr [eax+0Ah], 7Fh
mov     eax, [eax+24h]
call    sub_4DE477
xor     dh, dh
mov     ds:byte_56F87C, dh
or      ds:byte_5F8364, 2
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 80h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 640h
mov     ds:dword_5F888C, offset unk_800000
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 6400000h
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     word ptr ds:dword_5F88A4+2, si
mov     ds:word_5F88A8, si
mov     eax, 4
call    sub_4991AC
mov     eax, 4
call    sub_4986E8
mov     ds:byte_5F88AC, 87h
mov     eax, offset unk_52A728
call    sub_49DB4D
mov     eax, 0Fh
call    sub_498BC3
pop     esi
pop     edx
retn

loc_498A7F:
mov     eax, 0Fh

loc_498A84:
call    sub_4986E8
pop     esi
pop     edx
retn

loc_498A8C:
mov     eax, 4
jmp     short loc_498A84

loc_498A93:
mov     eax, 10h
call    sub_4991AC

loc_498A9D:
pop     esi
pop     edx
retn
sub_498999 endp




sub_498AA0 proc near
mov     eax, [eax+10h]
cmp     eax, 2Dh ; '-'
jb      short loc_498AB7
jbe     short loc_498ADF
cmp     eax, 46h ; 'F'
jb      short locret_498AB6
jbe     short loc_498AE9
cmp     eax, 5Fh ; '_'
jz      short loc_498ACB

locret_498AB6:
retn

loc_498AB7:
test    eax, eax
jbe     short loc_498AC1
cmp     eax, 1Eh
jz      short loc_498AD5
retn

loc_498AC1:
mov     eax, 4
call    sub_4991AC

loc_498ACB:
mov     eax, 4
jmp     sub_4986E8

loc_498AD5:
mov     eax, 10h
jmp     sub_4991AC

loc_498ADF:
mov     eax, 0Fh
jmp     sub_4986E8

loc_498AE9:
mov     ds:byte_5F88AC, 88h
retn
sub_498AA0 endp




sub_498AF1 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_498AFE
and     ds:byte_5F8364, 0FDh

locret_498AFE:
retn
sub_498AF1 endp




sub_498AFF proc near
mov     eax, [eax+10h]
cmp     eax, 136h
jb      short loc_498B1C
jbe     short loc_498AD5
cmp     eax, 1EAh
jb      short locret_498B1B
jbe     short loc_498AD5
cmp     eax, 262h
jz      short loc_498B2F

locret_498B1B:
retn

loc_498B1C:
test    eax, eax
jbe     short loc_498B26
cmp     eax, 78h ; 'x'
jz      short loc_498AD5
retn

loc_498B26:
or      ds:byte_5F8364, 2
jmp     short loc_498AC1

loc_498B2F:
mov     ds:byte_5F88AC, 89h
mov     eax, 11h
call    sub_4991AC
mov     eax, 10h
jmp     sub_4986E8
sub_498AFF endp




sub_498B4A proc near
mov     eax, [eax+10h]
cmp     eax, 0Fh
jb      short loc_498B5A
jbe     short loc_498B72
cmp     eax, 14h
jz      short loc_498B83

locret_498B59:
retn

loc_498B5A:
test    eax, eax
jnz     short locret_498B59
mov     eax, 5
call    sub_4991AC
mov     eax, 5
jmp     sub_4986E8

loc_498B72:
mov     ds:byte_5F88AC, 8Ah
mov     eax, 12h
jmp     sub_4991AC

loc_498B83:
mov     eax, 0Ch
call    sub_4991AC
mov     eax, 6
jmp     sub_4986E8
sub_498B4A endp




sub_498B97 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_498B59
and     ds:byte_5F8364, 0FDh
mov     eax, [eax+24h]
and     byte ptr [eax], 0FDh
mov     eax, offset unk_52A73C
call    sub_49DB4D
mov     eax, offset unk_52A750
call    sub_49DB4D
mov     eax, 10h
sub_498B97 endp




sub_498BC3 proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, al
mov     ax, word ptr ds:dword_5F889A+2
mov     word ptr ds:dword_77EA4E+2, ax
mov     ax, word ptr ds:dword_5F889E
mov     word ptr ds:dword_77EA52, ax
mov     ax, word ptr ds:dword_5F889E+2
mov     word ptr ds:dword_77EA52+2, ax
mov     ax, word ptr ds:dword_5F88A4+2
mov     word ptr ds:dword_77EA5A, ax
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_498BC3 endp




sub_498C21 proc near
push    ecx
push    edx
push    edi
mov     edx, eax
mov     eax, [eax+10h]
cmp     eax, 104h
jb      short loc_498C86
jbe     loc_498DBD
cmp     eax, 14Ah
jb      short loc_498C6E
jbe     loc_498DCB
cmp     eax, 168h
jb      short loc_498C5F
jbe     loc_498DD5
cmp     eax, 186h
jz      loc_498DDC
pop     edi
pop     edx
pop     ecx
retn

loc_498C5F:
cmp     eax, 159h

loc_498C64:
jz      loc_498DC4
pop     edi
pop     edx
pop     ecx
retn

loc_498C6E:
cmp     eax, 124h
jb      loc_498DE6
jbe     loc_498DD5
cmp     eax, 13Bh
jmp     short loc_498C64

loc_498C86:
cmp     eax, 0B4h
jb      short loc_498CB3
jbe     loc_498D9D
cmp     eax, 0FAh
jb      loc_498DE6
jbe     loc_498DAB
cmp     eax, 0FEh
jz      loc_498DB6
pop     edi
pop     edx
pop     ecx
retn

loc_498CB3:
test    eax, eax
jbe     short loc_498CC4
cmp     eax, 46h ; 'F'
jz      loc_498D9D
pop     edi
pop     edx
pop     ecx
retn

loc_498CC4:
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh
or      ds:byte_5F8364, 2
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 80h
mov     word ptr ds:dword_5F889E, 0FF3Fh
mov     word ptr ds:dword_5F889E+2, 640h
mov     ecx, offset unk_800000
mov     ds:dword_5F888C, ecx
mov     ds:dword_5F8890, 0FF3F0000h
mov     ds:dword_5F8894, 6400000h
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, di
mov     ds:word_5F88A8, di
mov     eax, 6
call    sub_4991AC
mov     eax, 7
call    sub_4986E8
mov     ds:byte_5F88AC, 80h
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     word ptr [eax+14h], 80h
mov     word ptr [eax+16h], 0FF3Fh
mov     word ptr [eax+18h], 5C0h
mov     [eax+1Ch], ecx
mov     dword ptr [eax+20h], 0FF3F0000h
mov     dword ptr [eax+24h], 5C00000h
mov     [eax+58h], di
mov     [eax+54h], di
mov     word ptr [eax+56h], 800h
mov     eax, 2
call    sub_498BC3
pop     edi
pop     edx
pop     ecx
retn

loc_498D9D:
mov     eax, 13h

loc_498DA2:
call    sub_4991AC
pop     edi
pop     edx
pop     ecx
retn

loc_498DAB:
mov     ds:byte_5F88AC, 8Bh
pop     edi
pop     edx
pop     ecx
retn

loc_498DB6:
mov     eax, 7
jmp     short loc_498DA2

loc_498DBD:
mov     eax, 8
jmp     short loc_498DA2

loc_498DC4:
mov     eax, 7
jmp     short loc_498DE1

loc_498DCB:
mov     eax, 14h
call    sub_4991AC

loc_498DD5:
mov     eax, 11h
jmp     short loc_498DE1

loc_498DDC:
mov     eax, 7

loc_498DE1:
call    sub_4986E8

loc_498DE6:
pop     edi
pop     edx
pop     ecx
retn
sub_498C21 endp




sub_498DEA proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_498E14
and     ds:byte_5F8364, 0FDh
mov     edx, [eax+24h]
and     byte ptr [edx], 0FDh
mov     edx, [eax+28h]
or      byte ptr [edx], 2
mov     eax, [eax+2Ch]
or      byte ptr [eax], 2
mov     eax, 10h
call    sub_498BC3

loc_498E14:
pop     edx
retn
sub_498DEA endp




sub_498E16 proc near
push    edx
mov     edx, eax
mov     eax, [eax+10h]
cmp     eax, 3Ch ; '<'
jb      short loc_498E44
jbe     loc_498EAB
cmp     eax, 5Fh ; '_'
jb      short loc_498E3D
jbe     loc_498EAB
cmp     eax, 69h ; 'i'
jz      loc_498EB2
pop     edx
retn

loc_498E3D:
cmp     eax, 4Bh ; 'K'

loc_498E40:
jz      short loc_498E9F
pop     edx
retn

loc_498E44:
test    eax, eax
jbe     short loc_498E4D
cmp     eax, 2Dh ; '-'
jmp     short loc_498E40

loc_498E4D:
mov     eax, [edx+28h]
call    sub_4DE336
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     dword ptr [edx+28h], 0
mov     dword ptr [edx+2Ch], 0
or      ds:byte_5F8364, 2
mov     eax, 6
call    sub_4991AC
mov     eax, 8
call    sub_4986E8
mov     ds:byte_5F88AC, 80h
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     eax, 2
call    sub_498BC3
pop     edx
retn

loc_498E9F:
mov     eax, 11h

loc_498EA4:
call    sub_4986E8
pop     edx
retn

loc_498EAB:
mov     eax, 8
jmp     short loc_498EA4

loc_498EB2:
mov     eax, 13h
call    sub_4991AC
pop     edx
retn
sub_498E16 endp




sub_498EBE proc near
mov     eax, [eax+10h]
cmp     eax, 1
jb      short locret_498EF1
jbe     short loc_498ECE
cmp     eax, 14h
jz      short loc_498EEA
retn

loc_498ECE:
mov     eax, 9
call    sub_4991AC
mov     eax, 9
call    sub_4986E8
mov     ds:byte_5F88AC, 80h
retn

loc_498EEA:
mov     ds:byte_5F88AC, 8Ch

locret_498EF1:
retn
sub_498EBE endp




sub_498EF2 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_498F41
and     ds:byte_5F8364, 0FDh
mov     eax, [eax+24h]
or      byte ptr [eax], 2
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FF3Fh
mov     word ptr [eax+18h], 620h
mov     dword ptr [eax+1Ch], 0
mov     dword ptr [eax+20h], 0FF3F0000h
mov     dword ptr [eax+24h], 6200000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 800h

loc_498F41:
pop     edx
retn
sub_498EF2 endp




sub_498F43 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 3Eh ; '>'
jb      short loc_498FA9
jbe     loc_4990B3
cmp     eax, 98h
jb      short loc_498F8A
jbe     loc_4990AC
cmp     eax, 0A4h
jb      loc_499053
jbe     loc_4990D9
cmp     eax, 0A9h
jz      loc_4990EF
jmp     loc_499053

loc_498F8A:
cmp     eax, 50h ; 'P'
jb      loc_499053
jbe     loc_4990BC
cmp     eax, 8Ch
jz      loc_4990C8
jmp     loc_499053

loc_498FA9:
cmp     eax, 0Bh
jb      short loc_498FD1
jbe     loc_49904C
cmp     eax, 14h
jb      loc_499053
jbe     loc_49908C
cmp     eax, 1Eh
jz      loc_4990A2
jmp     loc_499053

loc_498FD1:
test    eax, eax
jnz     loc_499053
or      ds:byte_5F8364, 2
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     esi, esi
mov     word ptr ds:dword_5F889A+2, si
mov     word ptr ds:dword_5F889E, 0FF3Fh
mov     word ptr ds:dword_5F889E+2, 640h
xor     ecx, ecx
mov     ds:dword_5F888C, ecx
mov     ds:dword_5F8890, 0FF3F0000h
mov     ds:dword_5F8894, 6400000h
xor     ebx, ebx
mov     word ptr ds:dword_5F88A4, bx
mov     word ptr ds:dword_5F88A4+2, bx
mov     ds:word_5F88A8, bx
mov     byte ptr [edx+6], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49904C:
mov     ds:byte_5F88AC, 8Dh

loc_499053:
cmp     byte ptr [edx+6], 1
jnz     short loc_499087

loc_499059:
sub     word ptr [ecx+53Ch], 10h
mov     eax, [ecx+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+530h], eax
mov     eax, [edx+24h]
sub     word ptr [eax+18h], 10h
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx

loc_499087:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49908C:
mov     eax, 14h
call    sub_4991AC
mov     eax, 12h

loc_49909B:
call    sub_4986E8
jmp     short loc_499053

loc_4990A2:
mov     eax, 0Ah
call    sub_4991AC

loc_4990AC:
mov     eax, 0Ah
jmp     short loc_49909B

loc_4990B3:
mov     ds:byte_5F88AC, 8Eh
jmp     short loc_499053

loc_4990BC:
mov     eax, 15h
call    sub_4991AC
jmp     short loc_499053

loc_4990C8:
mov     eax, 15h
call    sub_4991AC
mov     eax, 13h
jmp     short loc_49909B

loc_4990D9:
mov     eax, 0Bh
call    sub_4991AC
mov     ds:byte_5F88AC, 8Fh
jmp     loc_499053

loc_4990EF:
mov     byte ptr [edx+6], 1
jmp     loc_499059
sub_498F43 endp




sub_4990F8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     ebx, offset byte_5F8364
mov     ecx, [eax+24h]
cmp     dword ptr [eax+10h], 2
jnz     short loc_499114
mov     ds:byte_5F88AC, 1

loc_499114:
cmp     dword ptr [edx+10h], 5Ah ; 'Z'
jnz     short loc_499128
mov     eax, 0Ah
call    sub_49E0D7
or      byte ptr [edx+0Ah], 80h

loc_499128:
cmp     dword ptr [edx+10h], 5Ah ; 'Z'
jl      short loc_499154
mov     si, word ptr ds:dword_77EA7C
test    si, si
jle     short loc_499154
mov     edi, esi
sub     edi, 5
mov     word ptr ds:dword_77EA7C, di
test    di, di
jge     short loc_499154
xor     esi, esi
mov     word ptr ds:dword_77EA7C, si

loc_499154:
sub     word ptr [ebx+53Ch], 10h
mov     eax, [ebx+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+530h], eax
mov     edx, [edx+10h]
sub     edx, 2
and     edx, 0Fh
mov     dx, ds:word_52B643[edx*2]
sub     edx, 0C1h
mov     [ecx+16h], dx
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
sub     word ptr [ecx+18h], 10h
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
sub_4990F8 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_49926D

loc_4991A6:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_49926D



sub_4991AC proc near
push    edx
xor     dl, dl
mov     ds:byte_55A67A, dl
mov     ds:byte_55A679, dl
mov     ds:byte_55A678, dl
mov     eax, ds:off_52B58F[eax*4]
mov     ds:dword_55A670, eax
pop     edx
retn
sub_4991AC endp




sub_4991CF proc near
push    ecx
push    edx
mov     eax, offset dword_55A670
mov     edx, ds:dword_55A674+3
sar     edx, 18h
mov     ecx, ds:dword_55A670
mov     dl, [ecx+edx+1]
cmp     dl, 7Eh ; '~'
jb      short loc_4991FF
jbe     short loc_499202
cmp     dl, 7Fh
jnz     short loc_4991FF
xor     dl, dl
mov     ds:byte_55A67A, dl
jmp     short loc_499202

loc_4991FF:
inc     byte ptr [eax+0Ah]

loc_499202:
mov     edx, [eax+7]
sar     edx, 18h
mov     ecx, [eax]
mov     dl, [ecx+edx]
mov     [eax+8], dl
mov     [eax+9], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, [eax+4]
mov     dl, [ecx+edx+1]
cmp     dl, 7Eh ; '~'
jb      short loc_499232
jbe     short loc_499235
cmp     dl, 7Fh
jnz     short loc_499232
mov     byte ptr [eax+0Dh], 0
jmp     short loc_499235

loc_499232:
inc     byte ptr [eax+0Dh]

loc_499235:
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     ecx, [eax+4]
mov     dl, [ecx+edx]
mov     [eax+0Bh], dl
mov     [eax+0Ch], dl
mov     dl, [eax+8]
mov     byte ptr ds:dword_5F84CB+1, dl
mov     al, [eax+0Bh]
mov     byte ptr ds:dword_5F84CB+2, al
pop     edx
pop     ecx
retn
sub_4991CF endp

db 8Bh, 0C0h
jpt_4992AD dd offset loc_4992B4 ; jump table for switch statement
dd offset loc_4992F5
dd offset loc_4992FB
dd offset loc_499342



sub_49926D proc near

; FUNCTION CHUNK AT 004991A6 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edx, eax
xor     ebp, ebp
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
or      byte ptr [esi+7], 2
cmp     edx, 3          ; switch 4 cases
ja      def_4992AD      ; jumptable 004992AD default case
mov     eax, edx
jmp     jpt_4992AD[eax*4] ; switch jump

loc_4992B4:             ; jumptable 004992AD case 0
mov     ch, ds:byte_55A680
cmp     ch, 19h
jnb     short loc_4992CE
mov     al, ch
add     al, ch
mov     [esi+6], al
mov     [esi+5], al
mov     [esi+4], al
jmp     short loc_4992E0

loc_4992CE:
mov     byte ptr [esi+6], 32h ; '2'
mov     al, [esi+6]
mov     [esi+5], al
mov     [esi+4], al
mov     ebp, 1

loc_4992E0:
mov     al, ds:byte_55A680
cmp     al, 0FFh
jnb     short def_4992AD ; jumptable 004992AD default case
mov     ah, al
inc     ah
mov     ds:byte_55A680, ah
jmp     short def_4992AD ; jumptable 004992AD default case

loc_4992F5:             ; jumptable 004992AD case 1
mov     byte ptr [esi+6], 32h ; '2'
jmp     short loc_499346

loc_4992FB:             ; jumptable 004992AD case 2
mov     bl, ds:byte_55A680
cmp     bl, 19h
jnb     short loc_499319
mov     al, bl
add     al, bl
mov     ah, 32h ; '2'
sub     ah, al
mov     [esi+6], ah
mov     [esi+5], ah
mov     [esi+4], ah
jmp     short loc_49932B

loc_499319:
mov     byte ptr [esi+6], 0
mov     al, [esi+6]
mov     [esi+5], al
mov     [esi+4], al
mov     ebp, 1

loc_49932B:
mov     bh, ds:byte_55A680
cmp     bh, 0FFh
jnb     short def_4992AD ; jumptable 004992AD default case
mov     cl, bh
inc     cl
mov     ds:byte_55A680, cl
jmp     short def_4992AD ; jumptable 004992AD default case

loc_499342:             ; jumptable 004992AD case 3
mov     byte ptr [esi+6], 30h ; '0'

loc_499346:
mov     al, [esi+6]
mov     [esi+5], al
mov     [esi+4], al

def_4992AD:             ; jumptable 004992AD default case
mov     ecx, ds:dword_77E6DC
add     ecx, 38h ; '8'
mov     ds:dword_77E6DC, ecx
mov     edi, ecx
cmp     edx, 3
jz      short loc_49936E
push    0
mov     ecx, 4Fh ; 'O'
jmp     short loc_499375

loc_49936E:
push    0
mov     ecx, 2Fh ; '/'

loc_499375:
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 38h ; '8'
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, edi
call    sub_4F87A6
mov     eax, ebp
pop     ebp
jmp     loc_4991A6
sub_49926D endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_69]



sub_4993AE proc near
push    ecx
push    edx
push    esi
cmp     dword ptr [eax+10h], 0
jnz     short loc_4993E9
and     ds:byte_56F80C, 0FDh
mov     word ptr ds:dword_56F818, 82h
sub     ds:word_56F89C, 38h ; '8'
sub     ds:word_56F864, 10h
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0
mov     dword ptr [eax+0Ch], 3

loc_4993E9:
cmp     dword ptr [eax+10h], 898h
jnz     short loc_4993F9
or      ds:byte_56F80C, 2

loc_4993F9:
cmp     byte ptr [eax+6], 0
jnz     short loc_499432
cmp     dword ptr [eax+10h], 899h
jl      short loc_499432
mov     esi, [eax+0Ch]
dec     esi
mov     [eax+0Ch], esi
jnz     short loc_499432
mov     dword ptr [eax+0Ch], 3
mov     dx, word ptr ds:dword_56F818
movsx   ecx, dx
dec     edx
mov     word ptr ds:dword_56F818, dx
cmp     ecx, 0FFFFFFF6h
jnz     short loc_499432
inc     byte ptr [eax+6]

loc_499432:
pop     esi
pop     edx
pop     ecx
retn
sub_4993AE endp




sub_499436 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52B678
mov     dword ptr [ecx+0A4h], offset unk_52B6C4
mov     eax, offset unk_52B664
call    sub_49DB4D
pop     edx
pop     ecx
pop     ebx
retn
sub_499436 endp




sub_499468 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_499478
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_499478:
pop     edx
retn
sub_499468 endp




sub_49947A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 3
jb      short loc_4994A6
jbe     loc_499506
cmp     al, 5
jb      loc_499515
jbe     loc_499529
cmp     al, 0Ah
jz      loc_499555
pop     edx
pop     ecx
pop     ebx
retn

loc_4994A6:
cmp     al, 1
jb      short loc_4994AE
jbe     short loc_4994DA
jmp     short loc_4994EB

loc_4994AE:
test    al, al
jnz     loc_4995C3
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_4995C3
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881

loc_4994D3:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4994DA:
call    sub_4D8E21
mov     eax, 24001Eh
call    sub_4D8E42
jmp     short loc_4994D3

loc_4994EB:
call    sub_4D8ECC
test    eax, eax
jz      loc_4995C3
inc     byte ptr [ecx+4]
mov     dword ptr [ecx+0Ch], 5
pop     edx
pop     ecx
pop     ebx
retn

loc_499506:
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     loc_4995C3
jmp     short loc_4994D3

loc_499515:
mov     eax, 2
call    sub_49E0D7
mov     eax, ecx
call    sub_499436
inc     byte ptr [ecx+4]

loc_499529:
cmp     ds:word_6E23D6, 0
jnz     short loc_499555
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_499547
call    sub_47EBCB
test    eax, eax
jz      short loc_499555

loc_499547:
mov     eax, 0Ah
call    sub_49E0D7
mov     byte ptr [ecx+4], 0Ah

loc_499555:
mov     eax, ecx
call    sub_499468
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 0Ah
jnz     short loc_4995C3
cmp     ds:word_6E23D6, 0
jnz     short loc_4995C3
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
call    sub_4D8EB1
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     bl, 1
mov     byte ptr ds:dword_77E954, bl
call    sub_42A66D
and     ds:byte_77E806, 7Fh
mov     byte ptr [ecx], 0
xor     cl, cl
mov     byte ptr ds:dword_6DD9BC+1, cl
add     byte ptr ds:dword_6DD9BC, bl
mov     eax, offset sub_4378C0
call    sub_4EEDCA

loc_4995C3:
pop     edx
pop     ecx
pop     ebx
retn
sub_49947A endp




sub_4995C7 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4995D9
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0

loc_4995D9:
cmp     dword ptr [eax+10h], 0C8h
jnz     short loc_4995E8
mov     edx, [eax+2Ch]
inc     byte ptr [edx+0Ah]

loc_4995E8:
cmp     dword ptr [eax+10h], 15Fh
jnz     short loc_499603
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+20h], 0

loc_499603:
pop     edx
retn
sub_4995C7 endp




sub_499605 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_499624
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0F0420000h
mov     dword ptr [eax+24h], 0FF380000h

locret_499624:
retn
sub_499605 endp




sub_499625 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499645
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0
mov     dword ptr [edx+1Ch], 0F0920000h
mov     dword ptr [edx+24h], 0FD120000h

loc_499645:
cmp     dword ptr [eax+10h], 64h ; 'd'
jnz     short loc_499652
mov     edx, [eax+30h]
mov     byte ptr [edx+0Dh], 0

loc_499652:
cmp     dword ptr [eax+10h], 19h
jnz     short loc_49965F
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 1

loc_49965F:
cmp     dword ptr [eax+10h], 82h
jnz     short loc_49966F
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 0

loc_49966F:
cmp     dword ptr [eax+10h], 8Ch
jnz     short loc_49967F
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 1

loc_49967F:
cmp     dword ptr [eax+10h], 13Bh
jnz     short loc_49968F
mov     eax, [eax+30h]
mov     byte ptr [eax+0Ch], 0

loc_49968F:
pop     edx
retn
sub_499625 endp




sub_499691 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4996B6
mov     eax, [eax+34h]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+56h], 0A8Ch
mov     dword ptr [eax+1Ch], 0EF980000h
mov     dword ptr [eax+24h], 0FCAE0000h

locret_4996B6:
retn
sub_499691 endp




sub_4996B7 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short loc_4996D6
mov     eax, [eax+34h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_4996D6:
pop     edx
retn
sub_4996B7 endp




sub_4996D8 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49971F
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0F0920000h
mov     dword ptr [eax+24h], 0FD120000h
mov     word ptr [eax+56h], 320h
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0F0600000h
mov     dword ptr [eax+24h], 0FD440000h
mov     word ptr [eax+56h], 258h

loc_49971F:
pop     edx
retn
sub_4996D8 endp




sub_499721 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499733
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_499733:
cmp     dword ptr [eax+10h], 22h ; '"'
jnz     short loc_499740
mov     edx, [eax+30h]
mov     byte ptr [edx+0Dh], 1

loc_499740:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_49974D
mov     edx, [eax+30h]
mov     byte ptr [edx+0Dh], 0

loc_49974D:
cmp     dword ptr [eax+10h], 0Fh
jnz     short loc_49975A
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 1

loc_49975A:
cmp     dword ptr [eax+10h], 9Fh
jnz     short loc_49976A
mov     eax, [eax+30h]
mov     byte ptr [eax+0Ch], 0

loc_49976A:
pop     edx
retn
sub_499721 endp




sub_49976C proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49977E
mov     edx, [eax+34h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_49977E:
cmp     dword ptr [eax+10h], 19h
jnz     short loc_49978B
mov     edx, [eax+34h]
mov     byte ptr [edx+0Dh], 1

loc_49978B:
cmp     dword ptr [eax+10h], 37h ; '7'
jnz     short loc_499798
mov     edx, [eax+34h]
mov     byte ptr [edx+0Dh], 0

loc_499798:
cmp     dword ptr [eax+10h], 0C8h
jnz     short loc_4997AC
mov     eax, [eax+34h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

loc_4997AC:
pop     edx
retn
sub_49976C endp




sub_4997AE proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4997D4
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0FCh], 0Ch
mov     eax, [edx+30h]
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Eh], 1

loc_4997D4:
cmp     dword ptr [edx+10h], 55h ; 'U'
jnz     short loc_4997E1
mov     eax, [edx+30h]
mov     byte ptr [eax+0Ch], 0

loc_4997E1:
pop     edx
retn
sub_4997AE endp




sub_4997E3 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_499802
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0

loc_499802:
pop     edx
retn
sub_4997E3 endp




sub_499804 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499850
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0
mov     dword ptr [edx+1Ch], 0F0920000h
mov     dword ptr [edx+24h], 0FCE00000h
mov     word ptr [edx+56h], 514h
mov     edx, [eax+2Ch]
mov     dword ptr [edx+1Ch], 0F0C40000h
mov     dword ptr [edx+24h], 0FD440000h
mov     word ptr [edx+56h], 258h
mov     edx, [eax+34h]
mov     byte ptr [edx+0Dh], 1
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0

loc_499850:
cmp     dword ptr [eax+10h], 5
jnz     short loc_499861
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 4
mov     byte ptr [edx+0Ah], 0

loc_499861:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_49986E
mov     edx, [eax+34h]
mov     byte ptr [edx+0Dh], 0

loc_49986E:
cmp     dword ptr [eax+10h], 41h ; 'A'
jnz     short loc_49987F
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

loc_49987F:
pop     edx
retn
sub_499804 endp




sub_499881 proc near
push    ebx
push    edx
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     edx, offset unk_52B6D4
mov     eax, offset unk_52B92C
call    sub_49DFEF
xor     edx, edx

loc_49989F:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_52B8B4
call    sub_49DB4D
inc     edx
cmp     edx, 6
jl      short loc_49989F
pop     edx
pop     ebx
retn
sub_499881 endp




sub_4998BC proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_4998CC
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_4998CC:
pop     edx
retn
sub_4998BC endp

db 90h
jpt_499900 dd offset loc_499907 ; jump table for switch statement
dd offset loc_499981
dd offset loc_49998A
dd offset loc_4999A3
dd offset loc_4999AD
dd offset loc_4999D8
dd offset loc_499A43



sub_4998EB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 6           ; switch 7 cases
ja      def_499900      ; jumptable 00499900 default case
and     eax, 0FFh
jmp     jpt_499900[eax*4] ; switch jump

loc_499907:             ; jumptable 00499900 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_499900      ; jumptable 00499900 default case
and     ds:byte_5F8364, 0FDh
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
mov     ds:dword_5F888C, 0F1C00000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 0FF790000h
mov     word ptr ds:dword_5F889A+2, 0F1C0h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 0FF79h
mov     word ptr ds:dword_5F88A4+2, 800h
mov     eax, 250009h
call    sub_4D8E42

loc_49997A:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_499981:             ; jumptable 00499900 case 1
mov     dword ptr [ecx+0Ch], 32h ; '2'
jmp     short loc_49997A

loc_49998A:             ; jumptable 00499900 case 2
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     def_499900      ; jumptable 00499900 default case
mov     eax, 2
call    sub_49E0D7
jmp     short loc_49997A

loc_4999A3:             ; jumptable 00499900 case 3
mov     eax, ecx
call    sub_499881
inc     byte ptr [ecx+4]

loc_4999AD:             ; jumptable 00499900 case 4
cmp     ds:word_6E23D6, 0
jnz     short loc_4999D8 ; jumptable 00499900 case 5
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_4999CB
call    sub_47EBCB
test    eax, eax
jz      short loc_4999D8 ; jumptable 00499900 case 5

loc_4999CB:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [ecx+4]

loc_4999D8:             ; jumptable 00499900 case 5
mov     eax, ecx
call    sub_4998BC
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 5
jnz     short def_499900 ; jumptable 00499900 default case
cmp     ds:word_6E23D6, 0
jnz     short def_499900 ; jumptable 00499900 default case
call    sub_4D8EB1
mov     bh, 1
mov     byte ptr ds:dword_77E954, bh
call    sub_42A66D
or      ds:byte_5F8364, 2
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     ax, word ptr ds:dword_5F8412+2
mov     ds:word_5F83D2, ax
call    sub_4369B9
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
add     [ecx+4], bh
pop     edx
pop     ecx
pop     ebx
retn

loc_499A43:             ; jumptable 00499900 case 6
mov     byte ptr [ecx], 0

def_499900:             ; jumptable 00499900 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4998EB endp




sub_499A4A proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499A60
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 6
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1

loc_499A60:
cmp     dword ptr [eax+10h], 64h ; 'd'
jnz     short loc_499A6D
mov     edx, [eax+30h]
mov     byte ptr [edx+0Dh], 0

loc_499A6D:
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_499A7A
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 1

loc_499A7A:
cmp     dword ptr [eax+10h], 5Ah ; 'Z'
jnz     short loc_499A87
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 0

loc_499A87:
cmp     dword ptr [eax+10h], 69h ; 'i'
jnz     short loc_499A98
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+0Eh], 1

loc_499A98:
cmp     dword ptr [eax+10h], 0A3h
jnz     short loc_499AA8
mov     eax, [eax+30h]
mov     byte ptr [eax+0Ch], 0

loc_499AA8:
pop     edx
retn
sub_499A4A endp




sub_499AAA proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499ADA
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 6
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1
mov     edx, [eax+34h]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1

loc_499ADA:
cmp     dword ptr [eax+10h], 20h ; ' '
jnz     short loc_499AE7
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Dh], 0

loc_499AE7:
cmp     dword ptr [eax+10h], 34h ; '4'
jnz     short loc_499AF4
mov     edx, [eax+34h]
mov     byte ptr [edx+0Dh], 0

loc_499AF4:
cmp     dword ptr [eax+10h], 6Eh ; 'n'
jnz     short loc_499B05
mov     edx, [eax+38h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_499B05:
cmp     dword ptr [eax+10h], 0AFh
jnz     short loc_499B18
mov     eax, 0Ah
call    sub_49E0D7

loc_499B18:
pop     edx
retn
sub_499AAA endp




sub_499B1A proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_499B69
mov     eax, 2
call    sub_49E0D7
mov     eax, [edx+28h]
call    sub_4DE336
mov     eax, [edx+2Ch]
call    sub_4DE336
mov     eax, [edx+34h]
call    sub_4DE2F6
mov     eax, [edx+38h]
call    sub_4DE2F6
mov     eax, [edx+30h]
mov     word ptr [eax+56h], 65Eh
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_499B69:
cmp     dword ptr [edx+10h], 4Bh ; 'K'
jnz     short loc_499B75
mov     eax, [edx+24h]
inc     byte ptr [eax+0Ah]

loc_499B75:
pop     edx
retn
sub_499B1A endp




sub_499B77 proc near
push    edx
cmp     dword ptr [eax+10h], 0
cmp     dword ptr [eax+10h], 5
jnz     short loc_499B8D
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+0Eh], 0

loc_499B8D:
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_499B9A
mov     eax, [eax+30h]
mov     byte ptr [eax+0Ch], 0

loc_499B9A:
pop     edx
retn
sub_499B77 endp




sub_499B9C proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_499BA8
mov     eax, [eax+24h]
inc     byte ptr [eax+0Ah]

locret_499BA8:
retn
sub_499B9C endp




sub_499BA9 proc near
push    ebx
push    edx
call    sub_47ECAE
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     edx, offset unk_52B98C
mov     eax, offset unk_52BAEC
call    sub_49DFEF
xor     edx, edx

loc_499BCC:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_52BA74
call    sub_49DB4D
inc     edx
cmp     edx, 6
jl      short loc_499BCC
mov     dx, ds:word_77E79C
cmp     dx, 0FFFFh
jz      short loc_499BFD
mov     ebx, edx
inc     ebx
mov     ds:word_77E79C, bx

loc_499BFD:
mov     eax, ds:dword_77E790
mov     ds:dword_77E798, eax
cmp     eax, 4F1A0h
jb      short loc_499C17
cmp     byte ptr ds:dword_77E7DC+3, 2
jnz     short loc_499C20

loc_499C17:
mov     ds:word_77E79E, 1

loc_499C20:
pop     edx
pop     ebx
retn
sub_499BA9 endp




sub_499C23 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_499C33
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_499C33:
pop     edx
retn
sub_499C23 endp

align 2
jpt_499C68 dd offset loc_499C6F ; jump table for switch statement
dd offset loc_499C81
dd offset loc_499CB5
dd offset loc_499CCB
dd offset loc_499CDF
dd offset loc_499CE9
dd offset loc_499D0B



sub_499C52 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 6           ; switch 7 cases
ja      def_499C68      ; jumptable 00499C68 default case
and     eax, 0FFh
jmp     jpt_499C68[eax*4] ; switch jump

loc_499C6F:             ; jumptable 00499C68 case 0
mov     eax, 0Ah

loc_499C74:
call    sub_49E0D7

loc_499C79:
inc     byte ptr [ecx+4]
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_499C81:             ; jumptable 00499C68 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_499C68      ; jumptable 00499C68 default case
and     ds:byte_5F8364, 0FCh
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, 240020h
call    sub_4D8E42
jmp     short loc_499C79

loc_499CB5:             ; jumptable 00499C68 case 2
call    sub_4D8ECC
test    eax, eax
jz      def_499C68      ; jumptable 00499C68 default case
mov     dword ptr [ecx+0Ch], 14h
jmp     short loc_499C79

loc_499CCB:             ; jumptable 00499C68 case 3
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     def_499C68      ; jumptable 00499C68 default case
mov     eax, 2
jmp     short loc_499C74

loc_499CDF:             ; jumptable 00499C68 case 4
mov     eax, ecx
call    sub_499BA9
inc     byte ptr [ecx+4]

loc_499CE9:             ; jumptable 00499C68 case 5
cmp     ds:word_6E23D6, 0
jnz     short loc_499D0B ; jumptable 00499C68 case 6
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jnz     short loc_499D0B ; jumptable 00499C68 case 6
mov     eax, 0Bh
call    sub_49E0D7
inc     byte ptr [ecx+4]

loc_499D0B:             ; jumptable 00499C68 case 6
mov     eax, ecx
call    sub_499C23
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 6
jnz     short def_499C68 ; jumptable 00499C68 default case
cmp     ds:word_6E23D6, 0
jnz     short def_499C68 ; jumptable 00499C68 default case
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 1Eh
xor     ah, ah
mov     ds:byte_77EA5F, ah
xor     esi, esi
mov     word ptr ds:dword_77EA4E+2, si
xor     edi, edi
mov     word ptr ds:dword_77EA52, di
xor     al, al
mov     word ptr ds:dword_77EA52+2, ax
xor     edx, edx
mov     word ptr ds:dword_77EA5A, dx
mov     byte ptr ds:dword_77EA5A+3, ah
mov     dh, 0FFh
mov     ds:byte_77EA61, dh
mov     ds:byte_77EA60, dh
mov     [ecx], ah
call    sub_4D8EB1
or      ds:byte_5F8364, 1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_499C68:             ; jumptable 00499C68 default case
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_499C52 endp




sub_499D96 proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 1Eh
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_499D96 endp




sub_499DE2 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_499E1E
mov     eax, 3
call    sub_499D96
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     [eax+1Ch], ecx
mov     [eax+20h], ecx
mov     dword ptr [eax+24h], 6500000h
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh

loc_499E1E:
pop     edx
pop     ecx
retn
sub_499DE2 endp




sub_499E21 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_499E5E
mov     eax, 1
call    sub_499D96
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_499E5E:
cmp     dword ptr [edx+10h], 0BAh
jnz     short loc_499E6D
mov     eax, [edx+2Ch]
inc     byte ptr [eax+0Ah]

loc_499E6D:
pop     edx
retn
sub_499E21 endp




sub_499E6F proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499E8C
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_499E8C:
pop     edx
retn
sub_499E6F endp




sub_499E8E proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499EAB
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0

loc_499EAB:
pop     edx
retn
sub_499E8E endp




sub_499EAD proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_499EC2
mov     eax, [eax+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
inc     byte ptr [eax+0Ah]

loc_499EC2:
pop     edx
retn
sub_499EAD endp




sub_499EC4 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499EE4
mov     edx, [eax+2Ch]
or      byte ptr [edx], 2
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_499EE4:
cmp     dword ptr [eax+10h], 8Ch
jnz     short loc_499EF3
mov     eax, [eax+2Ch]
inc     byte ptr [eax+0Ah]

loc_499EF3:
pop     edx
retn
sub_499EC4 endp




sub_499EF5 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_499F0A
mov     eax, [eax+28h]
inc     byte ptr [eax+0Ah]
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh

loc_499F0A:
pop     edx
retn
sub_499EF5 endp




sub_499F0C proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_499F39
mov     eax, [eax+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_499F39:
cmp     dword ptr [edx+10h], 0BEh
jnz     short loc_499F48
mov     eax, [edx+28h]
inc     byte ptr [eax+0Ah]

loc_499F48:
pop     edx
retn
sub_499F0C endp




sub_499F4A proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_499F6F
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FF8D0000h
mov     dword ptr [eax+24h], 0FEE50000h
mov     word ptr [eax+56h], 0CE4h

locret_499F6F:
retn
sub_499F4A endp




sub_499F70 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499F8D
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_499F8D:
cmp     dword ptr [eax+10h], 23h ; '#'
jnz     short loc_499F99
mov     eax, [eax+28h]
inc     byte ptr [eax+0Ah]

loc_499F99:
pop     edx
retn
sub_499F70 endp




sub_499F9B proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499FB8
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_499FB8:
pop     edx
retn
sub_499F9B endp




sub_499FBA proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A02C
mov     eax, 2
call    sub_499D96
mov     eax, [ecx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0EC780000h
mov     dword ptr [eax+20h], 0F98E0000h
mov     dword ptr [eax+24h], 0
mov     word ptr [eax+56h], 0
mov     eax, [ecx+30h]
and     byte ptr [eax], 0FDh
mov     eax, [ecx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [ecx+2Ch]
and     byte ptr [eax], 0FDh
xor     edx, edx
jmp     short loc_49A013

loc_49A00D:
inc     edx
cmp     edx, 0Bh
jge     short loc_49A02C

loc_49A013:
call    sub_4DE227
test    eax, eax
jz      short loc_49A00D
mov     byte ptr [eax], 1
mov     [eax+3], dl
mov     byte ptr [eax+2], 2Ah ; '*'
or      byte ptr [eax+6], 20h
jmp     short loc_49A00D

loc_49A02C:
cmp     dword ptr [ecx+10h], 0BDh
jnz     short loc_49A04F
mov     eax, [ecx+24h]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     edx, 80h
mov     eax, 100h
call    sub_4DC979

loc_49A04F:
pop     edx
pop     ecx
retn
sub_499FBA endp




sub_49A052 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A07D
mov     edx, [eax+34h]
or      byte ptr [edx], 2
mov     edx, [eax+38h]
or      byte ptr [edx], 2
mov     edx, [eax+3Ch]
or      byte ptr [edx], 2
mov     edx, [eax+40h]
or      byte ptr [edx], 2
mov     edx, [eax+48h]
or      byte ptr [edx], 2
mov     eax, [eax+4Ch]
or      byte ptr [eax], 2

loc_49A07D:
pop     edx
retn
sub_49A052 endp




sub_49A07F proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A0A1
mov     eax, [eax+50h]
or      byte ptr [eax], 2
mov     eax, [edx+44h]
or      byte ptr [eax], 2
mov     word ptr [eax+56h], 800h
mov     dword ptr [eax+1Ch], 0F4480000h

loc_49A0A1:
cmp     dword ptr [edx+10h], 0D2h
jnz     short loc_49A0C0
mov     eax, [edx+50h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+44h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_49A0C0:
pop     edx
retn
sub_49A07F endp




sub_49A0C2 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A101
mov     eax, [eax+44h]
mov     word ptr [eax+56h], 4B0h
mov     dword ptr [eax+1Ch], 0F1DC0000h
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FC180000h
mov     dword ptr [eax+20h], 0E8900000h
mov     dword ptr [eax+24h], 0D5080000h
mov     word ptr [eax+56h], 0F0Ah

loc_49A101:
cmp     dword ptr [edx+10h], 59h ; 'Y'
jnz     short loc_49A112
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0

loc_49A112:
pop     edx
retn
sub_49A0C2 endp




sub_49A114 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A195
mov     eax, 1
call    sub_499D96
mov     eax, [edx+34h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+38h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+3Ch]
and     byte ptr [eax], 0FDh
mov     eax, [edx+40h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+48h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+4Ch]
and     byte ptr [eax], 0FDh
mov     eax, [edx+44h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+50h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FFA10000h
mov     dword ptr [eax+20h], 0FFA40000h
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_49A195:
cmp     dword ptr [edx+10h], 78h ; 'x'
jnz     short loc_49A1A2
mov     eax, [edx+28h]
mov     byte ptr [eax+0Ah], 3

loc_49A1A2:
pop     edx
retn
sub_49A114 endp




sub_49A1A4 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A1C1
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 4
mov     byte ptr [edx+0Ah], 0
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_49A1C1:
pop     edx
retn
sub_49A1A4 endp




sub_49A1C3 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49A1E2
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FFB90000h
mov     dword ptr [eax+20h], 0FF9F0000h

locret_49A1E2:
retn
sub_49A1C3 endp




sub_49A1E3 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A208
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1

loc_49A208:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_49A21C
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Dh], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+0Dh], 0

loc_49A21C:
cmp     dword ptr [eax+10h], 55h ; 'U'
jnz     short loc_49A230
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Dh], 1
mov     edx, [eax+30h]
mov     byte ptr [edx+0Dh], 1

loc_49A230:
cmp     dword ptr [eax+10h], 67h ; 'g'
jnz     short loc_49A23D
mov     edx, [eax+30h]
mov     byte ptr [edx+0Dh], 0

loc_49A23D:
cmp     dword ptr [eax+10h], 69h ; 'i'
jnz     short loc_49A24A
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Dh], 0

loc_49A24A:
cmp     dword ptr [eax+10h], 71h ; 'q'
jnz     short loc_49A25B
mov     eax, [eax+30h]
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+9], 4

loc_49A25B:
pop     edx
retn
sub_49A1E3 endp




sub_49A25D proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A2C9
mov     eax, 5
call    sub_499D96
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+30h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+15Ch], 20h ; ' '
mov     dx, [eax+15Ch]
mov     [eax+15Ah], dx
mov     [eax+158h], dx
mov     dword ptr [eax+1Ch], 0FED40000h
mov     dword ptr [eax+20h], 0FE700000h
mov     dword ptr [eax+24h], 0
mov     word ptr [eax+56h], 0DACh

loc_49A2C9:
pop     edx
retn
sub_49A25D endp




sub_49A2CB proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_49A320
mov     eax, 3
call    sub_499D96
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+15Ch], 200h
mov     dx, [eax+15Ch]
mov     [eax+15Ah], dx
mov     [eax+158h], dx
mov     [eax+1Ch], ecx
mov     dword ptr [eax+20h], 0FEA20000h
mov     dword ptr [eax+24h], 0FA00000h
mov     word ptr [eax+56h], 0

loc_49A320:
pop     edx
pop     ecx
retn
sub_49A2CB endp

db 8Dh, 40h, 0
jpt_49A35A dd offset loc_49A40A ; jump table for switch statement
dd offset loc_49A361
dd offset loc_49A38B
dd offset loc_49A3AD
dd offset def_49A35A
dd offset loc_49A3D9
dd offset loc_49A3F1
dd offset loc_49A41A

loc_49A346:
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
cmp     al, 7           ; switch 8 cases
ja      def_49A35A      ; jumptable 0049A35A default case, case 4
and     eax, 0FFh
jmp     jpt_49A35A[eax*4] ; switch jump

loc_49A361:             ; jumptable 0049A35A case 1
cmp     ds:word_6E23D6, 0
jnz     def_49A35A      ; jumptable 0049A35A default case, case 4
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
and     ds:byte_56F80C, 0FCh
mov     eax, 0A7h
call    sub_42BEB2
jmp     loc_49A414

loc_49A38B:             ; jumptable 0049A35A case 2
call    sub_42C353
test    eax, eax
jnz     def_49A35A      ; jumptable 0049A35A default case, case 4
mov     eax, 250000h
call    sub_4D8E42
mov     ds:word_77EA80, 64h ; 'd'
jmp     short loc_49A414

loc_49A3AD:             ; jumptable 0049A35A case 3
call    sub_4D8ECC
test    eax, eax
jz      def_49A35A      ; jumptable 0049A35A default case, case 4
call    sub_4DE13B
test    eax, eax
jz      short loc_49A3D2
mov     byte ptr [eax], 1
or      byte ptr [eax+6], 20h
mov     byte ptr [eax+2], 22h ; '"'
mov     byte ptr [eax+3], 0

loc_49A3D2:
mov     eax, 2
jmp     short loc_49A40F

loc_49A3D9:             ; jumptable 0049A35A case 5
mov     ch, 1
mov     ds:byte_77EAB9, ch
mov     eax, 40h ; '@'
call    sub_4D9040
add     [edx+5], ch
pop     edx
pop     ecx
retn

loc_49A3F1:             ; jumptable 0049A35A case 6
cmp     ds:byte_77EAB8, 0
jnz     short def_49A35A ; jumptable 0049A35A default case, case 4
mov     ds:byte_77EAB9, 4
mov     ds:word_77EA80, 7Fh

loc_49A40A:             ; jumptable 0049A35A case 0
mov     eax, 0Bh

loc_49A40F:
call    sub_49E0D7

loc_49A414:
inc     byte ptr [edx+5]
pop     edx
pop     ecx
retn

loc_49A41A:             ; jumptable 0049A35A case 7
cmp     ds:word_6E23D6, 0
jnz     short def_49A35A ; jumptable 0049A35A default case, case 4
inc     byte ptr [edx+4]

def_49A35A:             ; jumptable 0049A35A default case, case 4
pop     edx
pop     ecx
retn



sub_49A42A proc near
push    ebx
push    edx
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     edx, offset unk_52BB1C
mov     eax, offset unk_52C03C
call    sub_49DFEF
xor     edx, edx

loc_49A448:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_52BF4C
call    sub_49DB4D
inc     edx
cmp     edx, 0Ch
jl      short loc_49A448
call    sub_4DE1BE
test    eax, eax
jz      short loc_49A47A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+0Fh], 0
or      byte ptr [eax+6], 20h

loc_49A47A:
pop     edx
pop     ebx
retn
sub_49A42A endp




sub_49A47D proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49A48D
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49A48D:
pop     edx
retn
sub_49A47D endp

db 8Dh, 40h, 0
jpt_49A4C1 dd offset loc_49A4C8 ; jump table for switch statement
dd offset loc_49A4F3
dd offset loc_49A509
dd offset loc_49A522
dd offset loc_49A52C
dd offset loc_49A54E



sub_49A4AA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_49A4C1      ; jumptable 0049A4C1 default case
and     eax, 0FFh
jmp     jpt_49A4C1[eax*4] ; switch jump

loc_49A4C8:             ; jumptable 0049A4C1 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49A4C1      ; jumptable 0049A4C1 default case
and     ds:byte_5F8364, 0FCh
mov     eax, 24001Dh
call    sub_4D8E42

loc_49A4EB:
inc     byte ptr [edx+4]
jmp     def_49A4C1      ; jumptable 0049A4C1 default case

loc_49A4F3:             ; jumptable 0049A4C1 case 1
call    sub_4D8ECC
test    eax, eax
jz      def_49A4C1      ; jumptable 0049A4C1 default case
mov     dword ptr [edx+0Ch], 1Eh
jmp     short loc_49A4EB

loc_49A509:             ; jumptable 0049A4C1 case 2
mov     ecx, [edx+0Ch]
dec     ecx
mov     [edx+0Ch], ecx
jnz     def_49A4C1      ; jumptable 0049A4C1 default case
mov     eax, 2
call    sub_49E0D7
jmp     short loc_49A4EB

loc_49A522:             ; jumptable 0049A4C1 case 3
mov     eax, edx
call    sub_49A42A
inc     byte ptr [edx+4]

loc_49A52C:             ; jumptable 0049A4C1 case 4
cmp     ds:word_6E23D6, 0
jnz     short loc_49A54E ; jumptable 0049A4C1 case 5
mov     eax, [edx+0A4h]
cmp     byte ptr [eax], 0FFh
jnz     short loc_49A54E ; jumptable 0049A4C1 case 5
mov     eax, 0Bh
call    sub_49E0D7
inc     byte ptr [edx+4]

loc_49A54E:             ; jumptable 0049A4C1 case 5
mov     eax, edx
call    sub_49A47D
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 5
jnz     short def_49A4C1 ; jumptable 0049A4C1 default case
cmp     ds:word_6E23D6, 0
jnz     short def_49A4C1 ; jumptable 0049A4C1 default case
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 15h
xor     ah, ah
mov     ds:byte_77EA5F, ah
xor     esi, esi
mov     word ptr ds:dword_77EA4E+2, si
xor     edi, edi
mov     word ptr ds:dword_77EA52, di
xor     al, al
mov     word ptr ds:dword_77EA52+2, ax
xor     ebx, ebx
mov     word ptr ds:dword_77EA5A, bx
mov     byte ptr ds:dword_77EA5A+3, ah
mov     bh, 0FFh
mov     ds:byte_77EA61, bh
mov     ds:byte_77EA60, bh
mov     [edx], ah
call    sub_4D8EB1
or      ds:byte_5F8364, 1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_49A4C1:             ; jumptable 0049A4C1 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49A4AA endp




sub_49A5DA proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 15h
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_49A5DA endp




sub_49A626 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A64B
mov     eax, 1
call    sub_49A5DA
mov     eax, [edx+34h]
or      byte ptr [eax], 2
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     eax, [edx+38h]
or      byte ptr [eax], 2

loc_49A64B:
pop     edx
retn
sub_49A626 endp




sub_49A64D proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A69B
xor     eax, eax
call    sub_49A5DA
mov     eax, [edx+34h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [edx+38h]
and     byte ptr [eax], 0FDh
mov     byte ptr [eax+9], 1
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FF380000h
mov     dword ptr [eax+24h], 0FF9C0000h
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     eax, [edx+30h]
or      byte ptr [eax], 2

loc_49A69B:
cmp     dword ptr [edx+10h], 96h
jnz     short loc_49A6AF
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_49A6AF:
pop     edx
retn
sub_49A64D endp




sub_49A6B1 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A6C3
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0

loc_49A6C3:
cmp     dword ptr [eax+10h], 0D2h
jnz     short loc_49A6DE
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+110h], 9

loc_49A6DE:
pop     edx
retn
sub_49A6B1 endp




sub_49A6E0 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A6F2
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_49A6F2:
cmp     dword ptr [eax+10h], 29h ; ')'
jnz     short loc_49A703
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0

loc_49A703:
pop     edx
retn
sub_49A6E0 endp




sub_49A705 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49A716
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

locret_49A716:
retn
sub_49A705 endp




sub_49A717 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A748
mov     eax, 1
call    sub_49A5DA
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+30h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+34h]
or      byte ptr [eax], 2
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2

loc_49A748:
pop     edx
retn
sub_49A717 endp




sub_49A74A proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A786
xor     eax, eax
call    sub_49A5DA
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+56h], 0A28h
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     eax, [edx+30h]
or      byte ptr [eax], 2
mov     eax, [edx+34h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh

loc_49A786:
cmp     dword ptr [edx+10h], 46h ; 'F'
jnz     short loc_49A79A
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 6
mov     byte ptr [eax+0Ah], 0

loc_49A79A:
cmp     dword ptr [edx+10h], 73h ; 's'
jnz     short loc_49A7AE
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0

loc_49A7AE:
cmp     dword ptr [edx+10h], 0AAh
jnz     short loc_49A7C5
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0

loc_49A7C5:
pop     edx
retn
sub_49A74A endp




sub_49A7C7 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A7E3
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1
mov     edx, [eax+30h]
and     byte ptr [edx], 0FDh

loc_49A7E3:
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_49A7F0
mov     eax, [eax+28h]
mov     byte ptr [eax+0Dh], 0

loc_49A7F0:
pop     edx
retn
sub_49A7C7 endp




sub_49A7F2 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49A803
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

locret_49A803:
retn
sub_49A7F2 endp




sub_49A804 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A83B
mov     eax, 1
call    sub_49A5DA
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+30h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+34h]
or      byte ptr [eax], 2
inc     byte ptr [eax+0Ah]
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
inc     byte ptr [eax+0Ah]

loc_49A83B:
cmp     dword ptr [edx+10h], 352h
jnz     short loc_49A84E
mov     eax, 0Bh
call    sub_49E0D7

loc_49A84E:
pop     edx
retn
sub_49A804 endp

db 8Bh, 0C0h
jpt_49A87E dd offset loc_49A885 ; jump table for switch statement
dd offset loc_49A8C9
dd offset loc_49A8E8
dd offset loc_49A931
dd offset loc_49A941
dd offset loc_49A95A



sub_49A86A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 5           ; switch 6 cases
ja      def_49A87E      ; jumptable 0049A87E default case
xor     edx, edx
mov     dl, al
jmp     jpt_49A87E[edx*4] ; switch jump

loc_49A885:             ; jumptable 0049A87E case 0
cmp     ds:word_6E23D6, 0
jnz     def_49A87E      ; jumptable 0049A87E default case
and     ds:byte_56F80C, 0FCh
or      ds:byte_56F844, 3
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, 2
call    sub_49E0D7
inc     byte ptr [ecx+5]
mov     dword ptr [ecx+0Ch], 0
jmp     def_49A87E      ; jumptable 0049A87E default case

loc_49A8C9:             ; jumptable 0049A87E case 1
cmp     dword ptr [ecx+0Ch], 12Ch
jnz     def_49A87E      ; jumptable 0049A87E default case
mov     eax, 0Ah

loc_49A8DB:
call    sub_49E0D7
inc     byte ptr [ecx+5]
jmp     def_49A87E      ; jumptable 0049A87E default case

loc_49A8E8:             ; jumptable 0049A87E case 2
cmp     ds:word_6E23D6, 0
jnz     def_49A87E      ; jumptable 0049A87E default case
and     ds:byte_56F844, 0FCh
or      ds:byte_56F87C, 3
mov     eax, 2
call    sub_49E0D7
mov     dword ptr [ecx+0Ch], 0
inc     byte ptr [ecx+5]
call    sub_4A8E29
mov     edx, ds:off_530081
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
jmp     short def_49A87E ; jumptable 0049A87E default case

loc_49A931:             ; jumptable 0049A87E case 3
cmp     dword ptr [ecx+0Ch], 12Ch
jnz     short def_49A87E ; jumptable 0049A87E default case
inc     al
mov     [ecx+5], al
jmp     short def_49A87E ; jumptable 0049A87E default case

loc_49A941:             ; jumptable 0049A87E case 4
cmp     dword ptr [ecx+0Ch], 5DCh
jz      short loc_49A953
test    byte ptr ds:word_5708DE, 8
jz      short def_49A87E ; jumptable 0049A87E default case

loc_49A953:
mov     eax, 0Bh
jmp     short loc_49A8DB

loc_49A95A:             ; jumptable 0049A87E case 5
cmp     ds:word_6E23D6, 0
jnz     short def_49A87E ; jumptable 0049A87E default case
inc     byte ptr [ecx+4]
call    sub_4A0E35

def_49A87E:             ; jumptable 0049A87E default case
inc     dword ptr [ecx+0Ch]
pop     edx
pop     ecx
pop     ebx
retn
sub_49A86A endp




sub_49A973 proc near
push    ebx
push    edx
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     edx, offset unk_52C0F4
mov     eax, offset unk_52C3B4
call    sub_49DFEF
xor     edx, edx

loc_49A991:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_52C33C
call    sub_49DB4D
inc     edx
cmp     edx, 7
jl      short loc_49A991
pop     edx
pop     ebx
retn
sub_49A973 endp




sub_49A9AE proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49A9BE
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49A9BE:
pop     edx
retn
sub_49A9AE endp

db 8Bh, 0C0h
jpt_49A9EE dd offset loc_49A9F5 ; jump table for switch statement
dd offset loc_49AA1E
dd offset loc_49AA34
dd offset loc_49AA4D
dd offset loc_49AA57
dd offset loc_49AA57



sub_49A9DA proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_49A9EE      ; jumptable 0049A9EE default case
and     eax, 0FFh
jmp     jpt_49A9EE[eax*4] ; switch jump

loc_49A9F5:             ; jumptable 0049A9EE case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49A9EE      ; jumptable 0049A9EE default case
and     ds:byte_5F8364, 0FCh
mov     eax, 25000Ah
call    sub_4D8E42

loc_49AA18:
inc     byte ptr [edx+4]
pop     edx
pop     ecx
retn

loc_49AA1E:             ; jumptable 0049A9EE case 1
call    sub_4D8ECC
test    eax, eax
jz      def_49A9EE      ; jumptable 0049A9EE default case
mov     dword ptr [edx+0Ch], 1
jmp     short loc_49AA18

loc_49AA34:             ; jumptable 0049A9EE case 2
mov     ecx, [edx+0Ch]
dec     ecx
mov     [edx+0Ch], ecx
jnz     def_49A9EE      ; jumptable 0049A9EE default case
mov     eax, 2
call    sub_49E0D7
jmp     short loc_49AA18

loc_49AA4D:             ; jumptable 0049A9EE case 3
mov     eax, edx
call    sub_49A973
inc     byte ptr [edx+4]

loc_49AA57:             ; jumptable 0049A9EE cases 4,5
mov     eax, edx
call    sub_49A9AE
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 5
jnz     short def_49A9EE ; jumptable 0049A9EE default case
cmp     ds:word_6E23D6, 0
jnz     short def_49A9EE ; jumptable 0049A9EE default case
call    sub_4D8EB1
mov     byte ptr [edx], 0
or      ds:byte_5F8364, 1
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
and     ds:byte_77E806, 7Fh
xor     edx, edx
mov     ds:dword_6DD9BC, edx
mov     eax, offset sub_4378C0
call    sub_4EEDCA

def_49A9EE:             ; jumptable 0049A9EE default case
pop     edx
pop     ecx
retn
sub_49A9DA endp

jpt_49AAF5 dd offset loc_49AAFC ; jump table for switch statement
dd offset loc_49AB0B
dd offset loc_49AC27
dd offset loc_49AC3E
dd offset loc_49AC51
dd offset loc_49AC65
dd offset loc_49AC95
dd offset loc_49AD16
dd offset loc_49AD32
dd offset loc_49AD93



sub_49AAE1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 9           ; switch 10 cases
ja      def_49AAF5      ; jumptable 0049AAF5 default case
xor     edx, edx
mov     dl, al
jmp     jpt_49AAF5[edx*4] ; switch jump

loc_49AAFC:             ; jumptable 0049AAF5 case 0
mov     eax, 7E0h
call    sub_47E8B8
jmp     loc_49AC4A

loc_49AB0B:             ; jumptable 0049AAF5 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49AAF5      ; jumptable 0049AAF5 default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 400h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1D1Fh
mov     ds:dword_5F888C, 4000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 1D1F0000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
xor     edx, edx
mov     word ptr ds:dword_5F88A4+2, ax
mov     ds:word_5F88A8, ax
xor     dh, ah
mov     ds:byte_5F88AC, dh
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
shl     eax, 10h
mov     ds:dword_77E634, eax
mov     ax, word ptr ds:dword_5F83B8+2
add     ah, 8
and     ah, 0Fh
movsx   edx, ax
mov     eax, edx
call    sub_4EF008
mov     ebx, eax
shl     eax, 3
sub     eax, ebx
shl     eax, 5
add     ebx, eax
shl     ebx, 2
shl     ebx, 4
mov     eax, ds:dword_5F888C
sub     eax, ebx
mov     ds:dword_77E604, eax
mov     eax, edx
call    sub_4EF003
mov     edx, eax
shl     eax, 3
sub     eax, edx
shl     eax, 5
add     edx, eax
shl     edx, 2
shl     edx, 4
mov     eax, ds:dword_5F8894
sub     eax, edx
mov     ds:dword_77E60C, eax
mov     eax, ds:dword_5F8890
sub     eax, 2BC0000h
mov     dword ptr ds:unk_77E608, eax
mov     ds:dword_77E638, offset unk_800000
mov     ds:dword_77E63C, 2000000h
jmp     short loc_49AC4A

loc_49AC27:             ; jumptable 0049AAF5 case 2
cmp     ds:word_6E23D6, 0
jnz     def_49AAF5      ; jumptable 0049AAF5 default case
inc     al
mov     [ecx+4], al
pop     edx
pop     ecx
pop     ebx
retn

loc_49AC3E:             ; jumptable 0049AAF5 case 3
mov     edx, 2Fh ; '/'

loc_49AC43:
xor     eax, eax
call    sub_4A0E24

loc_49AC4A:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_49AC51:             ; jumptable 0049AAF5 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49AAF5      ; jumptable 0049AAF5 default case
mov     edx, 31h ; '1'
jmp     short loc_49AC43

loc_49AC65:             ; jumptable 0049AAF5 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49AAF5      ; jumptable 0049AAF5 default case
mov     eax, offset byte_5F8364
call    sub_4B565A
call    rand_
mov     edx, eax
mov     ebx, 18h
sar     edx, 1Fh
idiv    ebx
mov     ds:byte_55A684, dl
jmp     short loc_49AC4A

loc_49AC95:             ; jumptable 0049AAF5 case 6
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
shl     eax, 10h
mov     ds:dword_77E634, eax
mov     ax, word ptr ds:dword_5F83B8+2
add     ah, 8
and     ah, 0Fh
movsx   edx, ax
mov     eax, edx
call    sub_4EF008
mov     ecx, eax
shl     eax, 3
sub     eax, ecx
shl     eax, 5
add     ecx, eax
shl     ecx, 2
shl     ecx, 4
mov     eax, ds:dword_5F8380
sub     eax, ecx
mov     ds:dword_77E604, eax
mov     eax, edx
call    sub_4EF003
mov     edx, eax
shl     eax, 3
sub     eax, edx
shl     eax, 5
add     edx, eax
shl     edx, 2
shl     edx, 4
mov     eax, ds:dword_5F8388
sub     eax, edx
mov     ds:dword_77E60C, eax
mov     eax, ds:dword_5F8384
sub     eax, 2BC0000h
mov     dword ptr ds:unk_77E608, eax
pop     edx
pop     ecx
pop     ebx
retn

loc_49AD16:             ; jumptable 0049AAF5 case 7
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49AAF5      ; jumptable 0049AAF5 default case
mov     edx, 35h ; '5'
jmp     loc_49AC43

loc_49AD32:             ; jumptable 0049AAF5 case 8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49AAF5      ; jumptable 0049AAF5 default case
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA5E, 8
mov     ah, 2
mov     ds:byte_77EA5F, ah
mov     word ptr ds:dword_77EA4E+2, 0FFDFh
mov     word ptr ds:dword_77EA52, 0FFBFh
mov     word ptr ds:dword_77EA52+2, 20Fh
mov     word ptr ds:dword_77EA5A, 800h
xor     dl, dl
mov     byte ptr ds:dword_77EA5A+3, dl
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, ah
jmp     loc_49AC4A

loc_49AD93:             ; jumptable 0049AAF5 case 9
mov     ah, byte ptr ds:dword_77EA5A+2
cmp     ah, 2
jnz     short def_49AAF5 ; jumptable 0049AAF5 default case
mov     dl, ah
inc     dl
mov     byte ptr ds:dword_77EA5A+2, dl
mov     eax, 7E0h
call    sub_47EA91
mov     eax, 208h
call    sub_47EA91
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     byte ptr [ecx], 0

def_49AAF5:             ; jumptable 0049AAF5 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_49AAE1 endp




sub_49ADD9 proc near
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, ax
mov     word ptr ds:dword_5F889E, dx
mov     word ptr ds:dword_5F889E+2, bx
cwde
shl     eax, 10h
mov     ds:dword_5F888C, eax
movsx   eax, dx
shl     eax, 10h
mov     ds:dword_5F8890, eax
movsx   eax, bx
shl     eax, 10h
mov     ds:dword_5F8894, eax
xor     edx, edx
mov     word ptr ds:dword_5F88A4, dx
mov     word ptr ds:dword_5F88A4+2, cx
mov     ds:word_5F88A8, dx
xor     ah, ah
mov     ds:byte_5F88AC, ah
retn
sub_49ADD9 endp




sub_49AE41 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
mov     ebp, edx
xor     edx, edx
mov     [esp+18h+var_18], edx
jmp     short loc_49AE60

loc_49AE54:
mov     ebx, [esp+18h+var_18]
inc     ebx
mov     [esp+18h+var_18], ebx
cmp     ebx, 3
jge     short loc_49AEAC

loc_49AE60:
mov     eax, [esp+18h+var_18]
shl     eax, 4
cmp     ebp, [edi+eax]
jb      short loc_49AE54
mov     esi, 2

loc_49AE70:
mov     eax, [esp+18h+var_18]
cmp     esi, eax
jle     short loc_49AEA1
mov     eax, esi
shl     eax, 4
mov     edx, [edi+eax-10h]
mov     [edi+eax], edx
xor     edx, edx

loc_49AE85:
mov     ecx, esi
shl     ecx, 4
add     ecx, edi
mov     eax, edx
mov     bx, [ecx+eax*2-0Ch]
mov     [ecx+eax*2+4], bx
inc     edx
cmp     edx, 4
jl      short loc_49AE85
dec     esi
jmp     short loc_49AE70

loc_49AEA1:
shl     eax, 4
mov     [edi+eax], ebp
mov     al, byte ptr [esp+18h+var_18]
jmp     short loc_49AEAE

loc_49AEAC:
mov     al, 3

loc_49AEAE:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_49AE41 endp




sub_49AEB7 proc near
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA5E, 8
mov     ds:byte_77EA5F, 2
mov     word ptr ds:dword_77EA4E+2, ax
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA52+2, bx
mov     word ptr ds:dword_77EA5A, cx
xor     ah, ah
mov     byte ptr ds:dword_77EA5A+3, ah
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 2
retn
sub_49AEB7 endp




sub_49AEFE proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, offset byte_5F8364
mov     edx, ds:dword_560BE8
inc     edx
mov     ds:dword_560BE8, edx
cmp     edx, 384h
jl      short loc_49AF25
mov     byte ptr [eax+4], 6
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_49AF25:
mov     ebx, 12Ch
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_49AF49
call    sub_4DDF54
test    eax, eax
jz      short loc_49AF49
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8
mov     byte ptr [eax+8], 2

loc_49AF49:
mov     ax, [ecx+12Ch]
mov     dx, [ecx+12Eh]
or      edx, eax
mov     ax, [ecx+13Ah]
or      ax, [ecx+13Ch]
or      eax, edx
or      al, 9
and     ds:word_5708DE, ax
mov     dx, [ecx+12Ch]
or      dx, [ecx+12Eh]
mov     ax, [ecx+13Ah]
or      ax, [ecx+13Ch]
or      eax, edx
or      ax, [ecx+134h]
or      al, 9
mov     di, ds:word_5708DA
and     edi, eax
mov     ds:word_5708DA, di
mov     eax, ds:dword_5F8376
sar     eax, 10h
cmp     eax, 0FFFFFF38h
jge     short loc_49AFDC
mov     ax, [ecx+12Ch]
not     eax
mov     edx, edi
and     edx, eax
mov     ds:word_5708DA, dx
mov     ax, [ecx+12Ch]
not     eax
and     ds:word_5708DE, ax

loc_49AFDC:
cmp     word ptr ds:dword_5F8376+2, 0C8h
jle     short loc_49B007
mov     ax, [ecx+12Eh]
not     eax
and     ds:word_5708DA, ax
mov     ax, [ecx+12Eh]
not     eax
and     ds:word_5708DE, ax

loc_49B007:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_49AEFE endp




sub_49B00C proc near
push    ebx
push    ecx
push    edx
xor     edx, edx
jmp     short loc_49B019

loc_49B013:
inc     edx
cmp     edx, 2
jge     short loc_49B02E

loc_49B019:
call    sub_4DDF54
test    eax, eax
jz      short loc_49B013
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8
mov     [eax+3], dl
jmp     short loc_49B013

loc_49B02E:
call    sub_4DE043
test    eax, eax
jz      short loc_49B03E
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 21h ; '!'

loc_49B03E:
call    sub_4DE227
test    eax, eax
jz      short loc_49B052
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Fh
mov     byte ptr [eax+3], 1

loc_49B052:
mov     ecx, 800h
mov     ebx, 0FFFFFF20h
mov     edx, 0FFFFFFFFh
xor     eax, eax
call    sub_49ADD9
pop     edx
pop     ecx
pop     ebx
retn
sub_49B00C endp




sub_49B06C proc near
push    ecx
push    edx
mov     eax, ds:dword_77E8A4
shl     eax, 3
cmp     ds:dword_77E8A4, 3
jnz     short loc_49B0A0
xor     ecx, ecx
mov     cl, ds:byte_52C430[eax]
xor     edx, edx
mov     dl, ds:byte_560BE6
sub     edx, ecx
imul    edx, edx
add     edx, edx
mov     eax, ds:dword_52C42C[eax]
add     eax, edx
jmp     short loc_49B0A6

loc_49B0A0:
mov     eax, ds:dword_52C42C[eax]

loc_49B0A6:
call    sub_4A62A5
pop     edx
pop     ecx
retn
sub_49B06C endp

db 8Dh, 40h, 0
jpt_49B10A dd offset loc_49B111 ; jump table for switch statement
dd offset loc_49B18A
dd offset loc_49B1BF
dd offset loc_49B21B
dd offset loc_49B24D
dd offset loc_49B2E5
dd offset loc_49B2F1
dd offset loc_49B34F
dd offset loc_49B4C5
dd offset loc_49B505
dd offset loc_49B550
dd offset loc_49B567
dd offset loc_49B57F
dd offset loc_49B596
dd offset loc_49B5C2



sub_49B0ED proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ecx, offset unk_77E5F4
mov     al, [eax+4]
cmp     al, 0Eh         ; switch 15 cases
ja      def_49B10A      ; jumptable 0049B10A default case
and     eax, 0FFh
jmp     jpt_49B10A[eax*4] ; switch jump

loc_49B111:             ; jumptable 0049B10A case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49B10A      ; jumptable 0049B10A default case
mov     eax, 10h
call    sub_4D9040
call    sub_49B00C
mov     ds:byte_77E807, 2
xor     edx, edx
mov     eax, offset byte_5F8364
call    sub_4B58B2
mov     ds:byte_5F88AF, 1
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+10h], 0
mov     dword ptr [ecx+14h], 0FF000000h
mov     dword ptr [ecx+18h], 4900000h
mov     dword ptr [ecx+40h], 8000000h
mov     dword ptr [ecx+44h], offset unk_700000
mov     dword ptr [ecx+48h], 2000000h
mov     byte ptr [esi+4], 1
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B18A:             ; jumptable 0049B10A case 1
cmp     ds:word_6E23D6, 0
jnz     def_49B10A      ; jumptable 0049B10A default case
cmp     ds:byte_77EAB8, 0
jnz     def_49B10A      ; jumptable 0049B10A default case
xor     ebx, ebx
mov     edx, 1
mov     eax, 80000019h
call    sub_4D89E4
mov     byte ptr [esi+4], 2
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B1BF:             ; jumptable 0049B10A case 2
cmp     byte ptr [esi+5], 0
jnz     short loc_49B1EA
mov     eax, [ecx+18h]
sub     eax, 120000h
mov     [ecx+18h], eax
cmp     eax, 0FDF20000h
jg      def_49B10A      ; jumptable 0049B10A default case
mov     dword ptr [ecx+18h], 0FDF20000h
inc     byte ptr [esi+5]
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B1EA:
mov     edi, [ecx+40h]
sub     edi, 2D0000h
mov     [ecx+40h], edi
test    edi, edi
jg      def_49B10A      ; jumptable 0049B10A default case
mov     dword ptr [ecx+40h], 0
xor     edx, edx
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [esi+4], 3
mov     byte ptr [esi+5], 0
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B21B:             ; jumptable 0049B10A case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49B10A      ; jumptable 0049B10A default case
mov     eax, 10h
call    sub_4D9040
mov     edx, 9
add     edx, ds:dword_77E8A4
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [esi+4], 4
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B24D:             ; jumptable 0049B10A case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49B10A      ; jumptable 0049B10A default case
cmp     ds:byte_77EAB8, 0
jnz     def_49B10A      ; jumptable 0049B10A default case
mov     edx, (offset dword_5F8376+2)
mov     eax, 163h
call    sub_4D8BC3
mov     ds:word_77EA80, 1Eh
mov     eax, 25000Fh
call    sub_4D8E42
xor     dh, dh
mov     ds:byte_560BE6, dh
xor     ebp, ebp
mov     ds:dword_560BEC, ebp
mov     ds:dword_560BE8, ebp
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     edx, 1Ah
mov     eax, 2
call    sub_4A0E24
mov     edx, 23h ; '#'
mov     eax, 1
call    sub_4A0E24
mov     edx, 2Dh ; '-'
add     edx, ds:dword_77E8A4
mov     eax, 3
call    sub_4A0E24
mov     byte ptr [esi+4], 5
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B2E5:             ; jumptable 0049B10A case 5
mov     eax, esi
call    sub_49AEFE
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B2F1:             ; jumptable 0049B10A case 6
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49B10A      ; jumptable 0049B10A default case
mov     edx, (offset dword_5F8376+2)
mov     eax, 163h
call    sub_4D8BC3
mov     eax, 40h ; '@'
call    sub_4D9040
mov     eax, 2
call    sub_4A0E75
mov     eax, 3
call    sub_4A0E75
mov     eax, 1
call    sub_4A0E75
mov     edx, 1Fh
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [esi+4], 7
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B34F:             ; jumptable 0049B10A case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49B10A      ; jumptable 0049B10A default case
cmp     ds:byte_77EAB8, 0
jnz     def_49B10A      ; jumptable 0049B10A default case
mov     eax, ds:dword_77E8A4
mov     dl, ds:byte_560BE6
cmp     dl, ds:byte_52C430[eax*8]
jnb     short loc_49B3A6
xor     ebx, ebx
mov     edx, 1
mov     eax, 8001001Ah
call    sub_4D89E4
mov     edx, 3
xor     eax, eax
call    sub_4A0E24
mov     ds:byte_55A688, 0FFh
jmp     loc_49B4BC

loc_49B3A6:
xor     edx, edx
mov     dl, ds:byte_560BE6
mov     eax, offset dword_77E898
call    sub_49AE41
mov     ds:byte_55A688, al
mov     eax, 7
call    sub_47EEAE
mov     eax, 314h
call    sub_47E888
test    eax, eax
jnz     loc_49B47B
cmp     ds:byte_55A688, 0
jnz     short loc_49B442
cmp     ds:dword_77E8A4, 3
jnz     short loc_49B40D
mov     eax, 64h ; 'd'
call    sub_4A629F
mov     edx, 7
xor     eax, eax
call    sub_4A0E24
mov     eax, 314h
call    sub_47E8B8
jmp     short loc_49B420

loc_49B40D:
mov     eax, esi
call    sub_49B06C
mov     edx, 6
xor     eax, eax
call    sub_4A0E24

loc_49B420:
xor     ebx, ebx
mov     edx, 1
mov     eax, 8001001Ch
call    sub_4D89E4
mov     edx, (offset dword_5F8376+2)
mov     eax, 164h
call    sub_4D8BC3
jmp     short loc_49B4A8

loc_49B442:
cmp     ds:dword_77E8A4, 3
jnz     short loc_49B466
mov     eax, 64h ; 'd'
call    sub_4A629F
mov     eax, 314h
call    sub_47E8B8
mov     edx, 5
jmp     short loc_49B472

loc_49B466:
mov     eax, esi
call    sub_49B06C
mov     edx, 4

loc_49B472:
xor     eax, eax
call    sub_4A0E24
jmp     short loc_49B497

loc_49B47B:
cmp     ds:byte_55A688, 0
jz      short loc_49B40D
mov     eax, esi
call    sub_49B06C
mov     edx, 4
xor     eax, eax
call    sub_4A0E24

loc_49B497:
xor     ebx, ebx
mov     edx, 1
mov     eax, 8001001Bh
call    sub_4D89E4

loc_49B4A8:
mov     ebx, ds:dword_77E8A4
cmp     ebx, 3
jnb     short loc_49B4BC
lea     edi, [ebx+1]
mov     ds:dword_77E8A4, edi

loc_49B4BC:
mov     byte ptr [esi+4], 8
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B4C5:             ; jumptable 0049B10A case 8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49B10A      ; jumptable 0049B10A default case
mov     dl, ds:byte_55A688
cmp     dl, 3
jnb     short loc_49B4F0
xor     eax, eax
mov     al, dl
add     eax, 9
call    sub_4A62B7
mov     edx, 1Ch
jmp     short loc_49B4F5

loc_49B4F0:
mov     edx, 1Dh

loc_49B4F5:
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [esi+4], 9
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B505:             ; jumptable 0049B10A case 9
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49B10A      ; jumptable 0049B10A default case
call    sub_4D8EFD
test    eax, eax
jnz     def_49B10A      ; jumptable 0049B10A default case
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_49B53B
mov     eax, 9
call    sub_49E0D7
mov     byte ptr [esi+4], 0Ah
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B53B:
mov     edx, 8
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [esi+4], 0Dh
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B550:             ; jumptable 0049B10A case 10
cmp     ds:word_6E23D6, 0
jnz     def_49B10A      ; jumptable 0049B10A default case
mov     byte ptr [esi+4], 0Bh
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B567:             ; jumptable 0049B10A case 11
call    sub_49B00C
mov     eax, 1
call    sub_49E0D7
mov     byte ptr [esi+4], 0Ch
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B57F:             ; jumptable 0049B10A case 12
cmp     ds:word_6E23D6, 0
jnz     def_49B10A      ; jumptable 0049B10A default case
mov     byte ptr [esi+4], 3
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B596:             ; jumptable 0049B10A case 13
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49B10A      ; jumptable 0049B10A default case
mov     ecx, 800h
mov     ebx, 296h
mov     edx, 0FFFFFFBFh
mov     eax, 0FFFFFF42h
call    sub_49AEB7
mov     byte ptr [esi+4], 0Eh
jmp     short def_49B10A ; jumptable 0049B10A default case

loc_49B5C2:             ; jumptable 0049B10A case 14
cmp     byte ptr ds:dword_77EA5A+2, 2
jnz     short def_49B10A ; jumptable 0049B10A default case
mov     eax, 0A0h
call    sub_4D9040
xor     dl, dl
mov     ds:byte_77E807, dl
inc     byte ptr ds:dword_77EA5A+2
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
xor     bh, bh
mov     ds:byte_5F88AF, dl
call    sub_42A66D
mov     ds:word_77EA80, 7Fh
mov     edx, ds:dword_77E7D5
sar     edx, 18h
mov     eax, offset byte_5F8364
call    sub_4B58B2
mov     [esi], bh

def_49B10A:             ; jumptable 0049B10A default case
mov     eax, ds:dword_560BE8
call    sub_4A62AB
xor     eax, eax
mov     al, ds:byte_560BE6
call    sub_4A62B1
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49B0ED endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_70]
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49B64D
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49B64D:
pop     edx
retn



sub_49B64F proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_49B663
jbe     short loc_49B677
cmp     al, 2
jz      short loc_49B689
pop     edx
pop     ecx
retn

loc_49B663:
test    al, al
jnz     short loc_49B6D6
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]
pop     edx
pop     ecx
retn

loc_49B677:
cmp     ds:word_6E23D6, 0
jnz     short loc_49B6D6
inc     al
mov     [edx+4], al
pop     edx
pop     ecx
retn

loc_49B689:
mov     byte ptr ds:dword_77EA5A+2, al
mov     ds:byte_77EA5E, 0Fh
mov     ds:byte_77EA5F, 1
mov     word ptr ds:dword_77EA4E+2, 0FFC0h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0D0h
mov     word ptr ds:dword_77EA5A, 400h
xor     cl, cl
mov     byte ptr ds:dword_77EA5A+3, cl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, al
mov     [edx], cl

loc_49B6D6:
pop     edx
pop     ecx
retn
sub_49B64F endp




sub_49B6D9 proc near
push    ebx
push    esi
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0FE61h
mov     word ptr ds:dword_5F889E, 0FF7Fh
mov     word ptr ds:dword_5F889E+2, 0FF13h
mov     ds:dword_5F888C, 0FE610000h
mov     ds:dword_5F8890, 0FF7F0000h
mov     ds:dword_5F8894, 0FF130000h
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     word ptr ds:dword_5F88A4+2, 400h
mov     ds:word_5F88A8, si
xor     bl, bl
mov     ds:byte_5F88AC, bl
pop     esi
pop     ebx
retn
sub_49B6D9 endp

jpt_49B777 dd offset loc_49B77E ; jump table for switch statement
dd offset loc_49B7A2
dd offset loc_49B7FD
dd offset def_49B777



sub_49B75D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset unk_77E5F4
mov     al, [eax+4]
cmp     al, 3           ; switch 4 cases
ja      def_49B777      ; jumptable 0049B777 default case, case 3
xor     edx, edx
mov     dl, al
jmp     jpt_49B777[edx*4] ; switch jump

loc_49B77E:             ; jumptable 0049B777 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49B777      ; jumptable 0049B777 default case, case 3
mov     eax, 9

loc_49B795:
call    sub_49E0D7
inc     byte ptr [ecx+4]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49B7A2:             ; jumptable 0049B777 case 1
cmp     ds:word_6E23D6, 0
jnz     short def_49B777 ; jumptable 0049B777 default case, case 3
call    sub_4DDF54
test    eax, eax
jz      short loc_49B7BC
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 55h ; 'U'

loc_49B7BC:
call    sub_49B6D9
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [esi+10h], 0FE610000h
mov     dword ptr [esi+14h], 0FEE90000h
mov     dword ptr [esi+18h], 0FF130000h
mov     dword ptr [esi+40h], 0C000000h
mov     dword ptr [esi+44h], 1500000h
mov     dword ptr [esi+48h], 2000000h
mov     eax, 1
jmp     short loc_49B795

loc_49B7FD:             ; jumptable 0049B777 case 2
cmp     ds:word_6E23D6, 0
jnz     short def_49B777 ; jumptable 0049B777 default case, case 3
inc     al
mov     [ecx+4], al

def_49B777:             ; jumptable 0049B777 default case, case 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49B75D endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_71]
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49B822
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49B822:
pop     edx
retn



sub_49B824 proc near
push    ecx
push    edx
push    edi
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_49B83A
jbe     short loc_49B84F
cmp     al, 2
jz      short loc_49B865
pop     edi
pop     edx
pop     ecx
retn

loc_49B83A:
test    al, al
jnz     short loc_49B8B2
mov     eax, 0Ah
call    sub_49E0D7

loc_49B848:
inc     byte ptr [edx+4]
pop     edi
pop     edx
pop     ecx
retn

loc_49B84F:
cmp     ds:word_6E23D6, 0
jnz     short loc_49B8B2
mov     eax, 22Dh
call    sub_47E8B8
jmp     short loc_49B848

loc_49B865:
mov     byte ptr ds:dword_77EA5A+2, al
mov     ds:byte_77EA5E, 8
mov     ds:byte_77EA5F, 1
mov     word ptr ds:dword_77EA4E+2, 0FF00h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 80h
xor     edi, edi
mov     word ptr ds:dword_77EA5A, di
xor     cl, cl
mov     byte ptr ds:dword_77EA5A+3, cl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, al
mov     [edx], cl

loc_49B8B2:
pop     edi
pop     edx
pop     ecx
retn
sub_49B824 endp




sub_49B8B6 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_49B8BC[edx*4]
pop     edx
retn
sub_49B8B6 endp




sub_49B8C5 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+5]
test    al, al
jbe     short loc_49B8E0
cmp     al, 1
jz      short loc_49B910
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49B8E0:
mov     eax, offset unk_52C484
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52C498
mov     dword ptr [ecx+0A4h], offset unk_52C538
inc     byte ptr [ecx+5]

loc_49B910:
mov     eax, esi
call    sub_4B55D5
test    eax, eax
jz      short loc_49B93A
mov     byte ptr [esi+8], 3
mov     byte ptr [esi+9], 0
and     byte ptr [esi], 0FDh
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0
call    sub_49DF64

loc_49B93A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49B8C5 endp




sub_49B93F proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49B96C
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jz      short loc_49B974
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]
jmp     short loc_49B970

loc_49B96C:
add     byte ptr [edx+4], 2

loc_49B970:
mov     byte ptr [edx+5], 0

loc_49B974:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_49B93F endp




sub_49B981 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49B996
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]

loc_49B996:
cmp     ds:word_6E23D6, 0
jnz     short loc_49B974
inc     byte ptr [edx+4]
jmp     short loc_49B974
sub_49B981 endp




sub_49B9A5 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_49B9BD
jbe     short loc_49B9CF
cmp     al, 2
jz      short loc_49BA01
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_49B9BD:
test    al, al
jnz     loc_49BA5F
inc     al
mov     [edx+5], al
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_49B9CF:
cmp     ds:word_6E23D6, 0
jnz     loc_49BA5F
call    sub_4E1D8A
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     bl, 1
mov     byte ptr ds:dword_77E954, bl
call    sub_42A66D
add     [edx+5], bl
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_49BA01:
mov     byte ptr ds:dword_77EA5A+2, al
mov     ds:byte_77EA5E, 8
mov     ds:byte_77EA5F, 1
mov     word ptr ds:dword_77EA4E+2, 0FF00h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 80h
xor     edi, edi
mov     word ptr ds:dword_77EA5A, di
xor     cl, cl
mov     byte ptr ds:dword_77EA5A+3, cl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, al
or      ds:byte_5F8364, 3
mov     eax, 22Eh
call    sub_47E8B8
mov     [edx], cl

loc_49BA5F:
pop     edi
pop     edx
pop     ecx
pop     ebx

locret_49BA63:
retn
sub_49B9A5 endp




sub_49BA64 proc near
push    edx
mov     edx, eax
mov     al, [eax+6]
test    al, al
jbe     short loc_49BA74
cmp     al, 1
jz      short loc_49BA83
pop     edx
retn

loc_49BA74:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+6]
pop     edx
retn

loc_49BA83:
cmp     ds:word_6E23D6, 0
jnz     short loc_49BA92
call    sub_49DF64

loc_49BA92:
pop     edx
retn
sub_49BA64 endp




sub_49BA94 proc near
push    ebx
push    ecx
push    edx
push    ebp
mov     ecx, eax
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_49BB7E
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     ax, word ptr ds:dword_5F8376+2
mov     word ptr ds:dword_5F889A+2, ax
mov     ax, word ptr ds:dword_5F837A
mov     word ptr ds:dword_5F889E, ax
mov     ax, word ptr ds:dword_5F837A+2
mov     word ptr ds:dword_5F889E+2, ax
mov     eax, ds:dword_5F889A
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F888C, eax
mov     eax, ds:dword_5F889A+2
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8890, eax
mov     eax, ds:dword_5F889E
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8894, eax
xor     edx, edx
mov     word ptr ds:dword_5F88A4, dx
mov     word ptr ds:dword_5F88A4+2, 0B2Ch
mov     ds:word_5F88A8, dx
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E604, 0FFEE0000h
mov     dword ptr ds:unk_77E608, 0FF690000h
mov     ds:dword_77E60C, 0FFCC0000h
mov     ds:dword_77E634, 10000000h
xor     ebp, ebp
mov     ds:dword_77E638, ebp
mov     ds:dword_77E63C, ebp
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

loc_49BB7E:
pop     ebp
pop     edx
pop     ecx
pop     ebx
retn
sub_49BA94 endp

align 4
jpt_49BBBA dd offset loc_49BBC1 ; jump table for switch statement
dd offset loc_49BBE3
dd offset loc_49BC2A
dd offset loc_49BC91
dd offset loc_49BCF7
dd offset loc_49BD1E
dd offset loc_49BD4C
dd offset loc_49BD5C



sub_49BBA4 proc near
push    ebx
push    ecx
push    edx
push    edi
push    ebp
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 7           ; switch 8 cases
ja      def_49BBBA      ; jumptable 0049BBBA default case
xor     edx, edx
mov     dl, al
jmp     jpt_49BBBA[edx*4] ; switch jump

loc_49BBC1:             ; jumptable 0049BBBA case 0
cmp     ds:word_6E23D6, 0
jnz     def_49BBBA      ; jumptable 0049BBBA default case
mov     edx, 0Ah

loc_49BBD4:
xor     eax, eax
call    sub_4A0E24

loc_49BBDB:
inc     byte ptr [ecx+5]
jmp     def_49BBBA      ; jumptable 0049BBBA default case

loc_49BBE3:             ; jumptable 0049BBBA case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49BBBA      ; jumptable 0049BBBA default case
mov     byte ptr ds:dword_5F836C, 3
mov     bh, 1
mov     byte ptr ds:dword_5F836C+1, bh
or      ds:byte_5F8421, 10h
mov     ds:byte_5F88AC, 30h ; '0'
mov     dl, 0Ch
mov     byte ptr ds:dword_5F84CB+1, dl
mov     byte ptr ds:dword_5F84CB+2, dl
mov     dword ptr [ecx+10h], 8
add     [ecx+5], bh
jmp     def_49BBBA      ; jumptable 0049BBBA default case

loc_49BC2A:             ; jumptable 0049BBBA case 2
add     ds:dword_77E634, 0FF658000h
sub     ds:dword_77E604, 18C000h
add     dword ptr ds:unk_77E608, 52000h
sub     ds:dword_77E60C, 86000h
mov     ebp, [ecx+10h]
dec     ebp
mov     [ecx+10h], ebp
jnz     def_49BBBA      ; jumptable 0049BBBA default case
mov     ds:dword_77E604, 0FF280000h
mov     dword ptr ds:unk_77E608, 0FF920000h
mov     ds:dword_77E60C, 0FF890000h
mov     ds:dword_77E634, 0B2C0000h
mov     edx, 0Bh
jmp     loc_49BBD4

loc_49BC91:             ; jumptable 0049BBBA case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49BBBA      ; jumptable 0049BBBA default case
mov     ah, 1
mov     byte ptr ds:dword_77EA5A+2, ah
mov     ds:byte_77EA5E, 1Bh
mov     ds:byte_77EA5F, 7
mov     word ptr ds:dword_77EA4E+2, 0C1h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0FEFFh
xor     edi, edi
mov     word ptr ds:dword_77EA5A, di
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 9
mov     al, ah
mov     ds:byte_77EA60, ah
add     [ecx+5], al
jmp     def_49BBBA      ; jumptable 0049BBBA default case

loc_49BCF7:             ; jumptable 0049BBBA case 4
mov     dl, byte ptr ds:dword_77EA5A+2
cmp     dl, 2
jnz     short def_49BBBA ; jumptable 0049BBBA default case
mov     dh, dl
inc     dh
mov     byte ptr ds:dword_77EA5A+2, dh
mov     bl, 1
mov     byte ptr ds:dword_77E954, bl
call    sub_42A66D
add     [ecx+5], bl
jmp     short def_49BBBA ; jumptable 0049BBBA default case

loc_49BD1E:             ; jumptable 0049BBBA case 5
cmp     byte ptr ds:dword_77EA5A+2, 0
jnz     short def_49BBBA ; jumptable 0049BBBA default case
mov     edx, 2Dh ; '-'
xor     eax, eax
call    sub_4A0E24
xor     bl, bl
mov     ds:byte_5F88AC, bl
mov     byte ptr ds:dword_5F84CB+1, bl
mov     byte ptr ds:dword_5F84CB+2, bl
jmp     loc_49BBDB

loc_49BD4C:             ; jumptable 0049BBBA case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_49BBBA ; jumptable 0049BBBA default case
inc     al
mov     [ecx+5], al
jmp     short def_49BBBA ; jumptable 0049BBBA default case

loc_49BD5C:             ; jumptable 0049BBBA case 7
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

def_49BBBA:             ; jumptable 0049BBBA default case
pop     ebp
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_49BBA4 endp




sub_49BD69 proc near
push    edx
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4B565A
call    sub_4D8EB1
mov     byte ptr [edx], 0
pop     edx
retn
sub_49BD69 endp




sub_49BD80 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_49BD86[edx*4]
pop     edx
retn
sub_49BD80 endp




sub_49BD8F proc near
push    ebx
push    edx
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_49BE3D
or      ds:byte_5F8421, 10h
mov     ax, word ptr ds:dword_5F8376+2
mov     word ptr ds:dword_5F889A+2, ax
mov     ax, word ptr ds:dword_5F837A
mov     word ptr ds:dword_5F889E, ax
mov     ax, word ptr ds:dword_5F837A+2
mov     word ptr ds:dword_5F889E+2, ax
mov     eax, ds:dword_5F889A
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F888C, eax
mov     eax, ds:dword_5F889A+2
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8890, eax
mov     eax, ds:dword_5F889E
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8894, eax
xor     ebx, ebx
mov     word ptr ds:dword_5F88A4, bx
mov     ax, word ptr ds:dword_5F83B8+2
mov     word ptr ds:dword_5F88A4+2, ax
mov     ds:word_5F88A8, bx
mov     byte ptr ds:dword_5F836C+1, 10h
xor     bh, bh
mov     byte ptr ds:dword_5F836C+2, bh
mov     ds:byte_55A68C, bh
inc     byte ptr [edx+4]
mov     [edx+5], bh
mov     [edx+6], bh
mov     [edx+7], bh

loc_49BE3D:
pop     edx
pop     ebx
retn
sub_49BD8F endp

db 8Dh, 40h, 0
jpt_49BEA8 dd offset loc_49BEAF ; jump table for switch statement
dd offset loc_49BF16
dd offset loc_49BF74
dd offset loc_49BF90
dd offset loc_49BFB5
dd offset loc_49C0A1
dd offset loc_49C0C3
dd offset loc_49C0E5
dd offset loc_49C112
dd offset loc_49C134
dd offset loc_49C181
dd offset loc_49C25D
dd offset loc_49C2A2
dd offset loc_49C2C2



sub_49BE7B proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= word ptr -28h
var_26= word ptr -26h
var_24= word ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ebp, eax
mov     [esp+38h+var_20], offset byte_5F8364
mov     eax, [eax+24h]
mov     [esp+38h+var_1C], eax
mov     edx, [ebp+28h]
mov     al, [ebp+5]
cmp     al, 0Dh         ; switch 14 cases
ja      def_49BEA8      ; jumptable 0049BEA8 default case
and     eax, 0FFh
jmp     jpt_49BEA8[eax*4] ; switch jump

loc_49BEAF:             ; jumptable 0049BEA8 case 0
lea     edi, [esp+38h+var_28]
mov     esi, [esp+38h+var_1C]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [esp+38h+var_1C]
mov     eax, [eax+12h]
sar     eax, 10h
mov     [esp+38h+var_38], eax
mov     eax, [esp+38h+var_1C]
mov     eax, [eax+14h]
sar     eax, 10h
sub     eax, 92h
mov     [esp+38h+var_34], eax
mov     eax, [esp+38h+var_1C]
mov     eax, [eax+16h]
sar     eax, 10h
mov     [esp+38h+var_30], eax
xor     ecx, ecx
mov     edx, [esp+38h+var_20]
add     edx, 14h
lea     eax, [esp+38h+var_28]
call    sub_4DDDB4
mov     ebx, eax
mov     edx, 0D4h
mov     eax, esp
call    sub_42AAD8
mov     eax, [esp+38h+var_20]
and     byte ptr [eax], 0FDh
jmp     loc_49C10A

loc_49BF16:             ; jumptable 0049BEA8 case 1
mov     ebx, [esp+38h+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, [esp+38h+var_1C]
add     eax, 14h
mov     ecx, 80h
call    sub_4DE552
mov     ecx, eax
mov     eax, [esp+38h+var_1C]
add     [eax+56h], cx
call    sub_42ABA2
test    eax, eax
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
test    cx, cx
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     eax, [esp+38h+var_1C]
mov     byte ptr [eax+0Dh], 9
mov     byte ptr [eax+0Eh], 1
mov     dword ptr [ebp+10h], 10h
jmp     loc_49C10A

loc_49BF74:             ; jumptable 0049BEA8 case 2
mov     eax, [ebp+10h]
dec     eax
mov     [ebp+10h], eax
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     edx, 1Bh
call    sub_4A0E24
jmp     loc_49C10A

loc_49BF90:             ; jumptable 0049BEA8 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     eax, [esp+38h+var_1C]
mov     byte ptr [eax+0Dh], 5
mov     byte ptr [eax+0Eh], 1
mov     dword ptr [ebp+10h], 22h ; '"'
jmp     loc_49C10A

loc_49BFB5:             ; jumptable 0049BEA8 case 4
mov     ecx, [ebp+10h]
dec     ecx
mov     [ebp+10h], ecx
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
call    sub_42A9A2
mov     eax, [esp+38h+var_1C]
mov     word ptr [eax+56h], 0A78h
mov     byte ptr [eax+0Dh], 6
mov     byte ptr [eax+0Eh], 1
mov     word ptr [eax+14h], 0FB32h
mov     word ptr [eax+18h], 71Ch
mov     eax, [eax+12h]
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+38h+var_1C]
mov     [edx+34h], eax
mov     [edx+1Ch], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+3Ch], eax
mov     [edx+24h], eax
or      ds:byte_5F8364, 2
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0FAECh
mov     word ptr ds:dword_5F889E+2, 692h
mov     ds:dword_5F888C, 0FAEC0000h
mov     ds:dword_5F8894, 6920000h
add     edx, 14h
mov     eax, offset byte_5F8364
add     eax, 538h
call    sub_4DDDB4
mov     word ptr ds:dword_5F88A4+2, ax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881

unknown_libname_41:     ; Watcom v9-*1.5  32bit NT runtime
mov     ds:dword_77E604, 0FC9B0000h ; Watcom v9-*1.5  32bit common runtime
mov     dword ptr ds:unk_77E608, 0FD2F0000h
mov     ds:dword_77E60C, 73C0000h
mov     ds:dword_77E634, 0BA90000h
mov     ds:dword_77E638, 0F00000h
xor     edi, edi
mov     ds:dword_77E63C, edi
mov     dword ptr [ebp+10h], 3Ch ; '<'
jmp     short loc_49C10A

loc_49C0A1:             ; jumptable 0049BEA8 case 5
mov     eax, [ebp+10h]
dec     eax
mov     [ebp+10h], eax
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     eax, [esp+38h+var_1C]
mov     byte ptr [eax+0Dh], 7
mov     byte ptr [eax+0Eh], 1
mov     dword ptr [ebp+10h], 2Dh ; '-'
jmp     short loc_49C10A

loc_49C0C3:             ; jumptable 0049BEA8 case 6
mov     esi, [ebp+10h]
dec     esi
mov     [ebp+10h], esi
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     eax, [esp+38h+var_1C]
mov     byte ptr [eax+0Dh], 9
mov     byte ptr [eax+0Eh], 1
mov     dword ptr [ebp+10h], 14h
jmp     short loc_49C10A

loc_49C0E5:             ; jumptable 0049BEA8 case 7
mov     ecx, [ebp+10h]
dec     ecx
mov     [ebp+10h], ecx
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     edx, 1Ch
xor     eax, eax
call    sub_4A0E24
mov     eax, [esp+38h+var_1C]
mov     byte ptr [eax+0Dh], 0Ah

loc_49C106:
mov     byte ptr [eax+0Eh], 1

loc_49C10A:
inc     byte ptr [ebp+5]
jmp     def_49BEA8      ; jumptable 0049BEA8 default case

loc_49C112:             ; jumptable 0049BEA8 case 8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     eax, [esp+38h+var_1C]
mov     byte ptr [eax+0Dh], 0Dh
mov     byte ptr [eax+0Eh], 1
mov     dword ptr [ebp+10h], 0Ah
jmp     short loc_49C10A

loc_49C134:             ; jumptable 0049BEA8 case 9
mov     ebx, [esp+38h+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, [esp+38h+var_1C]
add     eax, 14h
mov     ecx, 80h
call    sub_4DE552
mov     edx, [esp+38h+var_1C]
add     [edx+56h], ax
test    ax, ax
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     edx, 24h ; '$'
xor     eax, eax
call    sub_4A0E24
mov     eax, [esp+38h+var_1C]
mov     byte ptr [eax+0Dh], 8
jmp     short loc_49C106

loc_49C181:             ; jumptable 0049BEA8 case 10
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     eax, edx
call    sub_4DE2F6

unknown_libname_42:     ; Watcom v9-*1.5  32bit NT runtime
mov     ds:dword_77E604, 0FAD20000h ; Watcom v9-*1.5  32bit common runtime
mov     dword ptr ds:unk_77E608, 0FD8F0000h
mov     ds:dword_77E60C, 6A10000h
mov     ds:dword_77E634, 9F90000h
mov     ds:dword_77E638, 400000h
mov     ds:dword_77E63C, 1500000h
mov     eax, [esp+38h+var_1C]
mov     word ptr [eax+14h], 0FB50h
mov     word ptr [eax+18h], 5DCh
mov     eax, [eax+12h]
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+38h+var_1C]
mov     [edx+1Ch], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
mov     [esp+38h+var_28], 0F062h
mov     [esp+38h+var_26], 0FD10h
mov     [esp+38h+var_24], 0FE20h
mov     ecx, [esp+38h+var_1C]
add     ecx, 14h
lea     edx, [esp+38h+var_28]
mov     eax, ecx
call    sub_4DDDB4
mov     edx, [esp+38h+var_1C]
mov     [edx+56h], ax
mov     word ptr [edx+44h], 320h
mov     byte ptr [edx+0Dh], 2
mov     byte ptr [edx+0Eh], 1
or      ds:byte_5F8421, 10h
mov     eax, offset byte_5F8364
add     eax, 538h
mov     edx, ecx
call    sub_4DDDB4
mov     word ptr ds:dword_5F88A4+2, ax
jmp     loc_49C10A

loc_49C25D:             ; jumptable 0049BEA8 case 11
mov     eax, [esp+38h+var_1C]
mov     eax, [eax+12h]
sar     eax, 10h
cmp     eax, 0FFFFF3E4h
jge     short loc_49C27D
mov     eax, [esp+38h+var_1C]
mov     word ptr [eax+56h], 0
jmp     loc_49C10A

loc_49C27D:
or      ds:byte_5F8421, 10h
mov     edx, [esp+38h+var_1C]
add     edx, 14h
mov     eax, offset byte_5F8364
add     eax, 538h
call    sub_4DDDB4
mov     word ptr ds:dword_5F88A4+2, ax
jmp     short def_49BEA8 ; jumptable 0049BEA8 default case

loc_49C2A2:             ; jumptable 0049BEA8 case 12
mov     eax, [esp+38h+var_1C]
mov     eax, [eax+16h]
sar     eax, 10h
cmp     eax, 0FFFFFE70h
jge     short def_49BEA8 ; jumptable 0049BEA8 default case
mov     eax, [esp+38h+var_1C]
mov     word ptr [eax+56h], 0C00h
jmp     loc_49C10A

loc_49C2C2:             ; jumptable 0049BEA8 case 13
mov     eax, [esp+38h+var_1C]
mov     eax, [eax+12h]
sar     eax, 10h
cmp     eax, 0FFFFF830h
jle     short def_49BEA8 ; jumptable 0049BEA8 default case
mov     eax, [esp+38h+var_1C]
call    sub_4DE2F6
inc     byte ptr [ebp+4]
mov     byte ptr [ebp+5], 0

def_49BEA8:             ; jumptable 0049BEA8 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_49C313
cmp     byte ptr [ebp+4], 1
jnz     short loc_49C313
cmp     byte ptr [ebp+5], 5
jnb     short loc_49C2FD
call    sub_42A9A2

loc_49C2FD:
xor     eax, eax
call    sub_4A0E75
mov     dh, 1
mov     ds:byte_55A68C, dh
add     [ebp+4], dh
mov     byte ptr [ebp+5], 0

loc_49C313:
add     esp, 20h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49BE7B endp




sub_49C31D proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+5]
test    al, al
jbe     short loc_49C334
cmp     al, 1
jz      short loc_49C389
pop     edx
pop     ecx
retn

loc_49C334:
or      ds:byte_5F8421, 10h
cmp     ds:byte_55A68C, 0
jz      short loc_49C37A
mov     word ptr ds:dword_5F889A+2, 0FAECh
mov     word ptr ds:dword_5F889E+2, 692h
mov     ds:dword_5F888C, 0FAEC0000h
mov     ds:dword_5F8894, 6920000h
mov     eax, [edx+24h]
call    sub_4DE2F6
mov     eax, [edx+28h]
call    sub_4DE2F6

loc_49C37A:
mov     word ptr [ecx+542h], 400h
inc     byte ptr [edx+5]
pop     edx
pop     ecx
retn

loc_49C389:
call    sub_4D8EB1
mov     eax, 549h
call    sub_47EA91
mov     eax, 37h ; '7'
call    sub_47E8B8
mov     eax, 18h
call    sub_47EEAE
mov     eax, 2E8h
call    sub_47EE82
mov     eax, ecx
call    sub_4B565A
inc     byte ptr ds:dword_5F836C+2
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     byte ptr [edx], 0
pop     edx
pop     ecx
retn
sub_49C31D endp




sub_49C3D5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_49C3DB[edx*4]
pop     edx
retn
sub_49C3D5 endp




sub_49C3E4 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49C3FA
mov     edx, 78h ; 'x'
xor     eax, eax
call    sub_4A0E24

loc_49C3FA:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_49C416
mov     eax, 9
call    sub_49E0D7
mov     byte ptr [ecx+0Ah], 0
call    sub_49DF64

loc_49C416:
pop     edx
pop     ecx
retn
sub_49C3E4 endp




sub_49C419 proc near
push    ebx
push    edx
mov     edx, eax
cmp     ds:word_6E23D6, 0
jnz     short loc_49C49B
mov     eax, offset unk_52C570
call    sub_49DB4D
mov     word ptr ds:dword_5F889A+2, 0FF00h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 0B00h
mov     ds:dword_5F888C, 0FF000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 0B000000h
mov     word ptr ds:dword_5F88A4+2, 200h
mov     byte ptr [edx+7], 1
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52C584
mov     eax, 1
call    sub_49E0D7
call    sub_49DF64

loc_49C49B:
pop     edx
pop     ebx

locret_49C49D:
retn
sub_49C419 endp




sub_49C49E proc near
cmp     ds:word_6E23D6, 0
jnz     short locret_49C49D
mov     byte ptr [eax+0Ah], 1
jmp     sub_49DF64
sub_49C49E endp




sub_49C4B1 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_49C4D5
mov     edx, 79h ; 'y'
xor     eax, eax
call    sub_4A0E24
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1

loc_49C4D5:
cmp     dword ptr [ecx+10h], 3Dh ; '='
jnz     short loc_49C4E0
call    sub_49DF64

loc_49C4E0:
pop     edx
pop     ecx
retn
sub_49C4B1 endp




sub_49C4E3 proc near
push    edx
mov     edx, eax
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_49C50B
cmp     dword ptr [edx+10h], 0B5h
jle     short loc_49C50B
mov     eax, 9
call    sub_49E0D7
mov     byte ptr [edx+0Ah], 0
call    sub_49DF64

loc_49C50B:
pop     edx
retn
sub_49C4E3 endp




sub_49C50D proc near
push    edx
mov     dword ptr [eax+0A4h], offset unk_52C5F8
mov     byte ptr [eax+0Bh], 0
mov     dl, [eax+0Bh]
mov     [eax+0Ah], dl
mov     dword ptr [eax+0Ch], 0
mov     byte ptr [eax+7], 0
mov     byte ptr [eax+0Ah], 0
mov     edx, 5
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, 246h
call    sub_47EA91
pop     edx
retn
sub_49C50D endp




sub_49C54C proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49C55C
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49C55C:
pop     edx
retn
sub_49C54C endp

align 10h
jpt_49C58C dd offset loc_49C593 ; jump table for switch statement
dd offset loc_49C5A1
dd offset loc_49C5DA
dd offset loc_49C5F1
dd offset loc_49C645
dd offset loc_49C692



sub_49C578 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_49C58C      ; jumptable 0049C58C default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_49C58C[ecx*4] ; switch jump

loc_49C593:             ; jumptable 0049C58C case 0
mov     eax, edx
call    sub_49C50D
inc     byte ptr [edx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_49C5A1:             ; jumptable 0049C58C case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49C58C      ; jumptable 0049C58C default case
mov     byte ptr ds:dword_5F836C, 3
xor     bl, bl
mov     byte ptr ds:dword_5F836C+1, bl
mov     ds:byte_5F88AC, 30h ; '0'
inc     byte ptr [edx+4]
mov     eax, 1
call    sub_49E0D7
pop     edx
pop     ecx
pop     ebx
retn

loc_49C5DA:             ; jumptable 0049C58C case 2
cmp     ds:word_6E23D6, 0
jnz     def_49C58C      ; jumptable 0049C58C default case

loc_49C5E8:
inc     al
mov     [edx+4], al
pop     edx
pop     ecx
pop     ebx
retn

loc_49C5F1:             ; jumptable 0049C58C case 3
cmp     byte ptr [edx+8], 0FFh
jz      short loc_49C5E8
call    sub_47EBCB
test    eax, eax
jz      short loc_49C62A
mov     cl, [edx+0Ah]
cmp     cl, 1
jnz     short loc_49C62A
cmp     ds:word_6E23D6, 0
jnz     short loc_49C62A
xor     eax, eax
call    sub_4A0E75
mov     eax, 9
call    sub_49E0D7
add     [edx+4], cl
pop     edx
pop     ecx
pop     ebx
retn

loc_49C62A:
mov     eax, edx
call    sub_49C54C
cmp     byte ptr [edx+7], 0
jz      short loc_49C63C
call    sub_49DBD1

loc_49C63C:
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn

loc_49C645:             ; jumptable 0049C58C case 4
cmp     ds:word_6E23D6, 0
jnz     short def_49C58C ; jumptable 0049C58C default case
mov     eax, 1
call    sub_49E0D7
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
inc     byte ptr [edx+4]
mov     eax, [edx+24h]
call    sub_4DE2F6
mov     edx, 0Ah
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, 0Fh
call    sub_47EEAE
call    sub_42A66D
pop     edx
pop     ecx
pop     ebx
retn

loc_49C692:             ; jumptable 0049C58C case 5
cmp     ds:word_6E23D6, 0
jnz     short def_49C58C ; jumptable 0049C58C default case
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr [edx], 0

def_49C58C:             ; jumptable 0049C58C default case
pop     edx
pop     ecx
pop     ebx
retn
sub_49C578 endp




sub_49C6AD proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49C6D2
xor     eax, eax
mov     al, [ecx+6]
add     eax, 243h
call    sub_47EA91
mov     edx, 49h ; 'I'
xor     eax, eax
call    sub_4A0E24

loc_49C6D2:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_49C6EE
mov     eax, 9
call    sub_49E0D7
mov     byte ptr [ecx+0Ah], 0
call    sub_49DF64

loc_49C6EE:
pop     edx
pop     ecx
retn
sub_49C6AD endp




sub_49C6F1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     ds:word_6E23D6, 0
jnz     loc_49C7E2
xor     edx, edx
mov     dl, [eax+6]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_52C65E
call    sub_49DB4D
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     ax, word ptr ds:dword_52C628[eax]
mov     word ptr ds:dword_5F889A+2, ax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     ax, word ptr ds:dword_52C62C[eax]
mov     word ptr ds:dword_5F889E, ax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     ax, word ptr ds:dword_52C630[eax]
mov     word ptr ds:dword_5F889E+2, ax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     eax, ds:dword_52C628[eax]
shl     eax, 10h
mov     ds:dword_5F888C, eax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     eax, ds:dword_52C62C[eax]
shl     eax, 10h
mov     ds:dword_5F8890, eax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     eax, ds:dword_52C630[eax]
shl     eax, 10h
mov     ds:dword_5F8894, eax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     ax, ds:word_52C634[eax]
mov     word ptr ds:dword_5F88A4+2, ax
mov     byte ptr [ecx+7], 1
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
xor     eax, eax
mov     al, [ecx+6]
mov     eax, ds:off_52C802[eax*4]
mov     ds:dword_77E6B4, eax
mov     eax, 1
call    sub_49E0D7
call    sub_49DF64

loc_49C7E2:
pop     edx
pop     ecx
pop     ebx

locret_49C7E5:
retn
sub_49C6F1 endp




sub_49C7E6 proc near
cmp     ds:word_6E23D6, 0
jnz     short locret_49C7E5
mov     byte ptr [eax+0Ah], 1
jmp     sub_49DF64
sub_49C7E6 endp




sub_49C7F9 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_49C829
mov     edx, 4Ah ; 'J'
xor     eax, eax
call    sub_4A0E24
xor     eax, eax
mov     al, [ecx+6]
mov     eax, [ecx+eax*4+24h]
mov     byte ptr [eax+0Eh], 8
xor     eax, eax
mov     al, [ecx+6]
mov     eax, [ecx+eax*4+24h]
mov     byte ptr [eax+0Dh], 1

loc_49C829:
cmp     dword ptr [ecx+10h], 3Dh ; '='
jnz     short loc_49C834
call    sub_49DF64

loc_49C834:
pop     edx
pop     ecx

locret_49C836:
retn
sub_49C7F9 endp




sub_49C837 proc near
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short locret_49C836
cmp     dword ptr [eax+10h], 0B5h
jle     short locret_49C836
jmp     sub_49DF64
sub_49C837 endp




sub_49C84E proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_49C89F
call    sub_49CBBF
cmp     al, 0FFh
jz      short loc_49C88A
mov     edx, 4Bh ; 'K'
xor     eax, eax
call    sub_4A0E24
xor     eax, eax
mov     al, [ecx+6]
mov     eax, [ecx+eax*4+24h]
mov     byte ptr [eax+0Eh], 8
xor     eax, eax
mov     al, [ecx+6]
mov     eax, [ecx+eax*4+24h]
mov     byte ptr [eax+0Dh], 1
pop     edx
pop     ecx
retn

loc_49C88A:
mov     eax, 9
call    sub_49E0D7
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+4], 4
pop     edx
pop     ecx
retn

loc_49C89F:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_49C8BB
mov     eax, 9
call    sub_49E0D7
mov     byte ptr [ecx+0Ah], 0
call    sub_49DF64

loc_49C8BB:
pop     edx
pop     ecx
retn
sub_49C84E endp




sub_49C8BE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     ds:word_6E23D6, 0
jnz     loc_49C9EC
xor     eax, eax
mov     al, [ecx+6]
mov     eax, [ecx+eax*4+24h]
call    sub_4DE2F6
call    sub_49CBBF
mov     [ecx+6], al
xor     edx, edx
mov     dl, al
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_52C65E
call    sub_49DB4D
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     ax, word ptr ds:dword_52C628[eax]
mov     word ptr ds:dword_5F889A+2, ax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     ax, word ptr ds:dword_52C62C[eax]
mov     word ptr ds:dword_5F889E, ax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     ax, word ptr ds:dword_52C630[eax]
mov     word ptr ds:dword_5F889E+2, ax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     eax, ds:dword_52C628[eax]
shl     eax, 10h
mov     ds:dword_5F888C, eax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     eax, ds:dword_52C62C[eax]
shl     eax, 10h
mov     ds:dword_5F8890, eax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     eax, ds:dword_52C630[eax]
shl     eax, 10h
mov     ds:dword_5F8894, eax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     ax, ds:word_52C634[eax]
mov     word ptr ds:dword_5F88A4+2, ax
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
xor     eax, eax
mov     al, [ecx+6]
mov     eax, ds:off_52C802[eax*4]
mov     ds:dword_77E6B4, eax
mov     eax, 1
call    sub_49E0D7
mov     byte ptr [ecx+4], 3
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     dword ptr [ecx+0A4h], offset unk_52C81E
xor     eax, eax
mov     al, [ecx+6]
add     eax, 243h
call    sub_47EA91

loc_49C9EC:
pop     edx
pop     ecx
pop     ebx
retn
sub_49C8BE endp




sub_49C9F0 proc near
push    ecx
push    edx
mov     ecx, eax
mov     dword ptr [eax+0A4h], offset unk_52C80E
mov     byte ptr [eax+0Bh], 0
mov     al, [eax+0Bh]
mov     [ecx+0Ah], al
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+7], 0
mov     byte ptr [ecx+0Ah], 0
mov     edx, 5
mov     eax, 56h ; 'V'
call    sub_4DC979
call    sub_49CBBF
mov     [ecx+6], al
mov     eax, ecx
call    sub_49CBF5
pop     edx
pop     ecx
retn
sub_49C9F0 endp




sub_49CA38 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49CA48
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49CA48:
pop     edx
retn
sub_49CA38 endp

db 8Dh, 40h, 0
jpt_49CA79 dd offset loc_49CA80 ; jump table for switch statement
dd offset loc_49CA8E
dd offset loc_49CAC7
dd offset loc_49CADE
dd offset loc_49CB32
dd offset loc_49CBA4



sub_49CA65 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_49CA79      ; jumptable 0049CA79 default case
xor     edx, edx
mov     dl, al
jmp     jpt_49CA79[edx*4] ; switch jump

loc_49CA80:             ; jumptable 0049CA79 case 0
mov     eax, ecx
call    sub_49C9F0
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_49CA8E:             ; jumptable 0049CA79 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49CA79      ; jumptable 0049CA79 default case
mov     byte ptr ds:dword_5F836C, 3
xor     dl, dl
mov     byte ptr ds:dword_5F836C+1, dl
mov     ds:byte_5F88AC, 30h ; '0'
inc     byte ptr [ecx+4]
mov     eax, 1
call    sub_49E0D7
pop     edx
pop     ecx
pop     ebx
retn

loc_49CAC7:             ; jumptable 0049CA79 case 2
cmp     ds:word_6E23D6, 0
jnz     def_49CA79      ; jumptable 0049CA79 default case

loc_49CAD5:
inc     al
mov     [ecx+4], al
pop     edx
pop     ecx
pop     ebx
retn

loc_49CADE:             ; jumptable 0049CA79 case 3
cmp     byte ptr [ecx+8], 0FFh
jz      short loc_49CAD5
call    sub_47EBCB
test    eax, eax
jz      short loc_49CB17
mov     bl, [ecx+0Ah]
cmp     bl, 1
jnz     short loc_49CB17
cmp     ds:word_6E23D6, 0
jnz     short loc_49CB17
xor     eax, eax
call    sub_4A0E75
mov     eax, 9
call    sub_49E0D7
add     [ecx+4], bl
pop     edx
pop     ecx
pop     ebx
retn

loc_49CB17:
mov     eax, ecx
call    sub_49CA38
cmp     byte ptr [ecx+7], 0
jz      short loc_49CB29
call    sub_49DBD1

loc_49CB29:
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn

loc_49CB32:             ; jumptable 0049CA79 case 4
cmp     ds:word_6E23D6, 0
jnz     def_49CA79      ; jumptable 0049CA79 default case
mov     eax, 243h
call    sub_47EA91
mov     eax, 244h
call    sub_47EA91
mov     eax, 245h
call    sub_47EA91
mov     eax, 1
call    sub_49E0D7
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
inc     byte ptr [ecx+4]
xor     eax, eax
mov     al, [ecx+6]
mov     eax, [ecx+eax*4+24h]
call    sub_4DE2F6
mov     edx, 0Ah
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, ecx
call    sub_49CC30
call    sub_42A66D
pop     edx
pop     ecx
pop     ebx
retn

loc_49CBA4:             ; jumptable 0049CA79 case 5
cmp     ds:word_6E23D6, 0
jnz     short def_49CA79 ; jumptable 0049CA79 default case
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr [ecx], 0

def_49CA79:             ; jumptable 0049CA79 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_49CA65 endp




sub_49CBBF proc near
mov     eax, 243h
call    sub_47E888
test    eax, eax
jz      short loc_49CBD0
xor     al, al
retn

loc_49CBD0:
mov     eax, 244h
call    sub_47E888
test    eax, eax
jz      short loc_49CBE1
mov     al, 1
retn

loc_49CBE1:
mov     eax, 245h
call    sub_47E888
test    eax, eax
jz      short loc_49CBF2
mov     al, 2
retn

loc_49CBF2:
mov     al, 0FFh
retn
sub_49CBBF endp




sub_49CBF5 proc near
push    edx
mov     edx, eax
mov     eax, 243h
call    sub_47E888
test    eax, eax
jz      short loc_49CC0A
or      byte ptr [edx+5], 1

loc_49CC0A:
mov     eax, 244h
call    sub_47E888
test    eax, eax
jz      short loc_49CC1C
or      byte ptr [edx+5], 2

loc_49CC1C:
mov     eax, 245h
call    sub_47E888
test    eax, eax
jz      short loc_49CC2E
or      byte ptr [edx+5], 4

loc_49CC2E:
pop     edx
retn
sub_49CBF5 endp




sub_49CC30 proc near
push    edx
mov     edx, eax
test    byte ptr [eax+5], 1
jz      short loc_49CC46
mov     eax, ds:dword_52C656
sar     eax, 10h
call    sub_47EEAE

loc_49CC46:
test    byte ptr [edx+5], 2
jz      short loc_49CC59
mov     eax, ds:dword_52C656+2
sar     eax, 10h
call    sub_47EEAE

loc_49CC59:
test    byte ptr [edx+5], 4
jz      short loc_49CC6C
mov     eax, ds:dword_52C65A
sar     eax, 10h
call    sub_47EEAE

loc_49CC6C:
pop     edx
retn
sub_49CC30 endp

word_49CC6E dw 1637h
dword_49CC70 dd 4E3AFFFFh, 8DC30000h
db 40h, 0
jpt_49CCAC dd offset loc_49CCB3 ; jump table for switch statement
dd offset loc_49CD22
dd offset loc_49CD3B
dd offset loc_49CD4B
dd offset loc_49CD91
dd offset loc_49CD9D



sub_49CC92 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     al, [eax+0Dh]
cmp     al, 5           ; switch 6 cases
ja      def_49CCAC      ; jumptable 0049CCAC default case
xor     edx, edx
mov     dl, al
jmp     jpt_49CCAC[edx*4] ; switch jump

loc_49CCB3:             ; jumptable 0049CCAC case 0
mov     word ptr [ebp+538h], 174Bh
mov     word ptr [ebp+53Ah], 0FFFFh
mov     word ptr [ebp+53Ch], 4DA0h
mov     eax, [ebp+536h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+528h], eax
mov     eax, [ebp+538h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+52Ch], eax
mov     eax, [ebp+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+530h], eax
mov     word ptr [ebp+540h], 0
mov     word ptr [ebp+542h], 524h
mov     word ptr [ebp+544h], 0
inc     byte ptr [ebp+0Dh]

loc_49CD22:             ; jumptable 0049CCAC case 1
mov     byte ptr [ebp+548h], 30h ; '0'
mov     dword ptr [ebp+184h], 0

loc_49CD33:
inc     byte ptr [ebp+0Dh]
jmp     def_49CCAC      ; jumptable 0049CCAC default case

loc_49CD3B:             ; jumptable 0049CCAC case 2
cmp     ds:byte_560BE5, 3
jnz     short def_49CCAC ; jumptable 0049CCAC default case
inc     al
mov     [ebp+0Dh], al
jmp     short def_49CCAC ; jumptable 0049CCAC default case

loc_49CD4B:             ; jumptable 0049CCAC case 3
mov     edi, esp
mov     esi, offset word_49CC6E
movsd
movsd
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     ecx, 40h ; '@'
mov     edx, esp
call    sub_4DE552
mov     dx, [ebp+542h]
add     edx, eax
and     dh, 0Fh
mov     [ebp+542h], dx
test    ax, ax
jnz     short def_49CCAC ; jumptable 0049CCAC default case
mov     byte ptr [ebp+548h], 0Ch
inc     byte ptr [ebp+0Dh]
mov     byte ptr [ebp+0Eh], 0Ah
jmp     short def_49CCAC ; jumptable 0049CCAC default case

loc_49CD91:             ; jumptable 0049CCAC case 4
mov     ah, [ebp+0Eh]
dec     ah
mov     [ebp+0Eh], ah
jnz     short def_49CCAC ; jumptable 0049CCAC default case
jmp     short loc_49CD33

loc_49CD9D:             ; jumptable 0049CCAC case 5
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'
mov     eax, ebp
call    sub_4DD47D

def_49CCAC:             ; jumptable 0049CCAC default case
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49CC92 endp




sub_49CDB7 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+9]
sar     edx, 18h
call    ds:funcs_49CDC1[edx*4]
lea     edx, [ecx+538h]
lea     eax, [ecx+528h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
pop     edx
pop     ecx
retn
sub_49CDB7 endp




sub_49CDE7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52C850
mov     dword ptr [ecx+0A4h], offset unk_52C8F8
mov     byte ptr ds:dword_5F836C, 3
xor     dl, dl
mov     byte ptr ds:dword_5F836C+1, dl
xor     ecx, ecx
mov     ds:dword_5F8370, ecx
pop     edx
pop     ecx
pop     ebx
retn
sub_49CDE7 endp




sub_49CE26 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49CE36
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49CE36:
pop     edx
retn
sub_49CE26 endp




sub_49CE38 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 2
jb      short loc_49CE60
jbe     short loc_49CEA1
cmp     al, 0Ah
jb      loc_49CF14
jbe     loc_49CECA
cmp     al, 0Bh
jz      loc_49CEF6
pop     edx
pop     ecx
pop     ebx
retn

loc_49CE60:
test    al, al
ja      short loc_49CE84
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_49CF14
mov     eax, edx
call    sub_49CDE7
inc     byte ptr [edx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_49CE84:
mov     ecx, [edx+0A4h]
cmp     byte ptr [ecx], 0FFh
jnz     short loc_49CE94
inc     al
mov     [edx+4], al

loc_49CE94:
call    sub_47EBCB
test    eax, eax
jz      short loc_49CEA1
mov     byte ptr [edx+4], 0Ah

loc_49CEA1:
mov     eax, edx
call    sub_49CE26
mov     eax, offset byte_5F8364
call    sub_49CDB7
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 2
jnz     short loc_49CF14
mov     byte ptr [edx+4], 0Bh
pop     edx
pop     ecx
pop     ebx
retn

loc_49CECA:
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
call    sub_4E1D8A
mov     bl, 1
mov     byte ptr ds:dword_77E954, bl
call    sub_42A66D
mov     eax, [edx+24h]
and     byte ptr [eax+6], 0FEh
add     [edx+4], bl
pop     edx
pop     ecx
pop     ebx
retn

loc_49CEF6:
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     ds:byte_77E805, 1
mov     byte ptr [edx], 0
mov     eax, 45h ; 'E'
call    sub_47E8B8

loc_49CF14:
pop     edx
pop     ecx
pop     ebx
retn
sub_49CE38 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_72]
align 4
jpt_49CF53 dd offset loc_49CF5A ; jump table for switch statement
dd offset loc_49CFD9
dd offset loc_49D009
dd offset loc_49D028
dd offset loc_49D03D
dd offset loc_49D075
dd offset loc_49D028



sub_49CF38 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edi, offset dword_560BDC
mov     al, [eax+0Dh]
cmp     al, 6           ; switch 7 cases
ja      def_49CF53      ; jumptable 0049CF53 default case
xor     edx, edx
mov     dl, al
jmp     jpt_49CF53[edx*4] ; switch jump

loc_49CF5A:             ; jumptable 0049CF53 case 0
mov     word ptr [esi+538h], 16F7h
mov     word ptr [esi+53Ah], 0FFFFh
mov     word ptr [esi+53Ch], 4E9Ah
mov     eax, [esi+536h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+528h], eax
mov     eax, [esi+538h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+52Ch], eax
mov     eax, [esi+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [esi+530h], eax
mov     word ptr [esi+540h], 0
mov     word ptr [esi+542h], 0C1Ch
mov     word ptr [esi+544h], 0
mov     byte ptr [esi+548h], 30h ; '0'
mov     dword ptr [esi+184h], 0
jmp     short loc_49D01F

loc_49CFD9:             ; jumptable 0049CF53 case 1
mov     edx, ds:dword_560C04
mov     ebx, [esi+54h]
sar     ebx, 10h
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
add     ax, [esi+542h]
and     ah, 0Fh
mov     [esi+542h], ax
inc     byte ptr [esi+0Dh]

loc_49D009:             ; jumptable 0049CF53 case 2
cmp     byte ptr [edi+9], 1
jnz     def_49CF53      ; jumptable 0049CF53 default case
mov     edx, 0B3h

loc_49D018:
xor     eax, eax
call    sub_4A0E24

loc_49D01F:
inc     byte ptr [esi+0Dh]

def_49CF53:             ; jumptable 0049CF53 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49D028:             ; jumptable 0049CF53 cases 3,6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_49CF53 ; jumptable 0049CF53 default case
inc     al
mov     [esi+0Dh], al
call    sub_49DF64
jmp     short def_49CF53 ; jumptable 0049CF53 default case

loc_49D03D:             ; jumptable 0049CF53 case 4
cmp     ds:byte_560BE5, 5
jnz     short def_49CF53 ; jumptable 0049CF53 default case
mov     edx, ds:dword_560C00
mov     ebx, [esi+54h]
sar     ebx, 10h
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
add     ax, [esi+542h]
and     ah, 0Fh
mov     [esi+542h], ax
jmp     short loc_49D01F

loc_49D075:             ; jumptable 0049CF53 case 5
cmp     ds:byte_560BE5, 6
jnz     short def_49CF53 ; jumptable 0049CF53 default case
mov     edx, 0B8h
jmp     short loc_49D018
sub_49CF38 endp




sub_49D085 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+9]
sar     edx, 18h
call    ds:funcs_49D08F[edx*4]
lea     edx, [ecx+538h]
lea     eax, [ecx+528h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
pop     edx
pop     ecx
retn
sub_49D085 endp




sub_49D0B5 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52C924
mov     dword ptr [ecx+0A4h], offset unk_52C9A0
mov     eax, offset unk_52C978
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
mov     eax, offset unk_52C98C
call    sub_49DB4D
mov     byte ptr ds:dword_5F836C, 3
xor     bl, bl
mov     byte ptr ds:dword_5F836C+1, bl
xor     ecx, ecx
mov     ds:dword_5F8370, ecx
pop     edx
pop     ecx
pop     ebx
retn
sub_49D0B5 endp




sub_49D10C proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49D11C
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49D11C:
pop     edx
retn
sub_49D10C endp




sub_49D11E proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 2
jb      short loc_49D146
jbe     short loc_49D18C
cmp     al, 0Ah
jb      loc_49D207
jbe     loc_49D1B5
cmp     al, 0Bh
jz      loc_49D1EE
pop     edx
pop     ecx
pop     ebx
retn

loc_49D146:
test    al, al
ja      short loc_49D16F
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_49D207
mov     eax, edx
call    sub_49D0B5
call    sub_49DBD1
inc     byte ptr [edx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_49D16F:
mov     ecx, [edx+0A4h]
cmp     byte ptr [ecx], 0FFh
jnz     short loc_49D17F
inc     al
mov     [edx+4], al

loc_49D17F:
call    sub_47EBCB
test    eax, eax
jz      short loc_49D18C
mov     byte ptr [edx+4], 0Ah

loc_49D18C:
mov     eax, edx
call    sub_49D10C
mov     eax, offset byte_5F8364
call    sub_49D085
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 2
jnz     short loc_49D207
mov     byte ptr [edx+4], 0Bh
pop     edx
pop     ecx
pop     ebx
retn

loc_49D1B5:
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
mov     bl, 1
mov     byte ptr ds:dword_77E954, bl
call    sub_42A66D
mov     eax, [edx+28h]
call    sub_4DE2F6
mov     eax, [edx+24h]
mov     byte ptr [eax+8], 8
mov     eax, 52Ah
call    sub_47E8B8
add     [edx+4], bl
pop     edx
pop     ecx
pop     ebx
retn

loc_49D1EE:
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42AC90
mov     byte ptr [edx], 0

loc_49D207:
pop     edx
pop     ecx
pop     ebx
retn
sub_49D11E endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_73]
db 8Dh, 40h, 0
jpt_49D236 dd offset loc_49D23D ; jump table for switch statement
dd offset loc_49D2C0
dd offset loc_49D2D3
dd offset loc_49D2E8
dd offset loc_49D2FD



sub_49D223 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Dh]
cmp     al, 4           ; switch 5 cases
ja      def_49D236      ; jumptable 0049D236 default case
xor     edx, edx
mov     dl, al
jmp     jpt_49D236[edx*4] ; switch jump

loc_49D23D:             ; jumptable 0049D236 case 0
mov     word ptr [ecx+538h], 206h
mov     word ptr [ecx+53Ah], 0FCFFh
mov     word ptr [ecx+53Ch], 90Fh
mov     edx, [ecx+536h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+528h], edx
mov     edx, [ecx+538h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+52Ch], edx
mov     edx, [ecx+53Ah]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+530h], edx
mov     word ptr [ecx+540h], 0
mov     word ptr [ecx+542h], 0
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 30h ; '0'
mov     dword ptr [ecx+184h], 0

loc_49D2BA:
inc     byte ptr [ecx+0Dh]

def_49D236:             ; jumptable 0049D236 default case
pop     edx
pop     ecx
retn

loc_49D2C0:             ; jumptable 0049D236 case 1
mov     ah, ds:byte_560BE5
cmp     ah, 1
jnz     short def_49D236 ; jumptable 0049D236 default case
add     al, ah
mov     [ecx+0Dh], al
pop     edx
pop     ecx
retn

loc_49D2D3:             ; jumptable 0049D236 case 2
mov     edx, 13h
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+548h], 32h ; '2'
jmp     short loc_49D2BA

loc_49D2E8:             ; jumptable 0049D236 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_49D236 ; jumptable 0049D236 default case
inc     al
mov     [ecx+0Dh], al
mov     byte ptr [ecx+0Eh], 0Ah
pop     edx
pop     ecx
retn

loc_49D2FD:             ; jumptable 0049D236 case 4
mov     ah, [ecx+0Eh]
dec     ah
mov     [ecx+0Eh], ah
jnz     short def_49D236 ; jumptable 0049D236 default case
call    sub_49DF64
jmp     short loc_49D2BA
sub_49D223 endp




sub_49D30E proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+9]
sar     edx, 18h
call    ds:funcs_49D318[edx*4]
lea     edx, [ecx+538h]
lea     eax, [ecx+528h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
pop     edx
pop     ecx
retn
sub_49D30E endp




sub_49D33E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52C9F4
mov     dword ptr [ecx+0A4h], offset unk_52CB04
mov     eax, offset unk_52CAB4
call    sub_49DB4D
mov     eax, offset unk_52CAC8
call    sub_49DB4D
mov     eax, offset unk_52CADC
call    sub_49DB4D
mov     eax, offset unk_52CAF0
call    sub_49DB4D
mov     byte ptr ds:dword_5F836C, 3
xor     dl, dl
mov     byte ptr ds:dword_5F836C+1, dl
xor     ecx, ecx
mov     ds:dword_5F8370, ecx
pop     edx
pop     ecx
pop     ebx
retn
sub_49D33E endp




sub_49D3A5 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49D3B5
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49D3B5:
pop     edx
retn
sub_49D3A5 endp




sub_49D3B7 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 2
jb      short loc_49D3DD
jbe     short loc_49D422
cmp     al, 0Ah
jb      loc_49D4A2
jbe     loc_49D44A
cmp     al, 0Bh
jz      loc_49D471
pop     edx
pop     ecx
retn

loc_49D3DD:
test    al, al
ja      short loc_49D405
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_49D4A2
mov     eax, edx
call    sub_49D33E
call    sub_49DBD1
inc     byte ptr [edx+4]
pop     edx
pop     ecx
retn

loc_49D405:
mov     ecx, [edx+0A4h]
cmp     byte ptr [ecx], 0FFh
jnz     short loc_49D415
inc     al
mov     [edx+4], al

loc_49D415:
call    sub_47EBCB
test    eax, eax
jz      short loc_49D422
mov     byte ptr [edx+4], 0Ah

loc_49D422:
mov     eax, edx
call    sub_49D3A5
mov     eax, offset byte_5F8364
call    sub_49D30E
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 2
jnz     short loc_49D4A2
mov     byte ptr [edx+4], 0Bh
pop     edx
pop     ecx
retn

loc_49D44A:
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
call    sub_4E1D8A
inc     byte ptr [edx+4]
mov     eax, [edx+24h]
call    sub_4DE2F6
mov     eax, [edx+28h]
call    sub_4DE2F6
pop     edx
pop     ecx
retn

loc_49D471:
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     eax, [edx+30h]
call    sub_4DE2F6
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     byte ptr [edx], 0
xor     dl, dl
mov     byte ptr ds:dword_77E5EC, dl

loc_49D4A2:
pop     edx
pop     ecx
retn
sub_49D3B7 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_74]
db 8Dh, 40h, 0
jpt_49D4E9 dd offset loc_49D4F0 ; jump table for switch statement
dd offset loc_49D572
dd offset loc_49D591
dd offset loc_49D5A1
dd offset loc_49D591
dd offset loc_49D5A8
dd offset loc_49D591
dd offset loc_49D5AF
dd offset loc_49D5DF



sub_49D4CD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, ds:dword_560C00
mov     al, [eax+0Dh]
cmp     al, 8           ; switch 9 cases
ja      def_49D4E9      ; jumptable 0049D4E9 default case
xor     ebx, ebx
mov     bl, al
jmp     jpt_49D4E9[ebx*4] ; switch jump

loc_49D4F0:             ; jumptable 0049D4E9 case 0
and     byte ptr [ecx], 0FDh
mov     word ptr [ecx+538h], 0DDF4h
mov     word ptr [ecx+53Ah], 0FDFFh
mov     word ptr [ecx+53Ch], 0EA50h
mov     eax, [ecx+536h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+528h], eax
mov     eax, [ecx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+52Ch], eax
mov     eax, [ecx+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+530h], eax
mov     word ptr [ecx+540h], 0
mov     word ptr [ecx+542h], 800h
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 30h ; '0'
mov     dword ptr [ecx+184h], 0
jmp     short loc_49D58C

loc_49D572:             ; jumptable 0049D4E9 case 1
cmp     ds:word_6E23D6, 0
jnz     def_49D4E9      ; jumptable 0049D4E9 default case
mov     edx, 6

loc_49D585:
xor     eax, eax
call    sub_4A0E24

loc_49D58C:
inc     byte ptr [ecx+0Dh]
jmp     short def_49D4E9 ; jumptable 0049D4E9 default case

loc_49D591:             ; jumptable 0049D4E9 cases 2,4,6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_49D4E9 ; jumptable 0049D4E9 default case
inc     al
mov     [ecx+0Dh], al
jmp     short def_49D4E9 ; jumptable 0049D4E9 default case

loc_49D5A1:             ; jumptable 0049D4E9 case 3
mov     edx, 7
jmp     short loc_49D585

loc_49D5A8:             ; jumptable 0049D4E9 case 5
mov     edx, 8
jmp     short loc_49D585

loc_49D5AF:             ; jumptable 0049D4E9 case 7
call    sub_4DE13B
test    eax, eax
jz      short def_49D4E9 ; jumptable 0049D4E9 default case
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [edx+14h]
movsd
movsd
mov     bx, [edx+16h]
sub     ebx, 64h ; 'd'
mov     [eax+4Ah], bx
mov     eax, edx
call    sub_4DE371
jmp     short loc_49D58C

loc_49D5DF:             ; jumptable 0049D4E9 case 8
inc     al
mov     [ecx+0Dh], al
call    sub_49DF64

def_49D4E9:             ; jumptable 0049D4E9 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49D4CD endp




sub_49D5EF proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+9]
sar     edx, 18h
call    ds:funcs_49D5F9[edx*4]
lea     edx, [ecx+538h]
lea     eax, [ecx+528h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
pop     edx
pop     ecx
retn
sub_49D5EF endp




sub_49D61F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52CB28
mov     dword ptr [ecx+0A4h], offset unk_52CB7C
mov     eax, offset unk_52CB54
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
mov     eax, offset unk_52CB68
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
mov     byte ptr ds:dword_5F836C, 3
xor     bh, bh
mov     byte ptr ds:dword_5F836C+1, bh
xor     ecx, ecx
mov     ds:dword_5F8370, ecx
pop     edx
pop     ecx
pop     ebx
retn
sub_49D61F endp




sub_49D67A proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49D68A
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49D68A:
pop     edx
retn
sub_49D67A endp




sub_49D68C proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 2
jb      short loc_49D6B4
jbe     short loc_49D6FA
cmp     al, 0Ah
jb      loc_49D76B
jbe     loc_49D723
cmp     al, 0Bh
jz      loc_49D74B
pop     edx
pop     ecx
pop     ebx
retn

loc_49D6B4:
test    al, al
ja      short loc_49D6DD
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_49D76B
mov     eax, edx
call    sub_49D61F
call    sub_49DBD1
inc     byte ptr [edx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_49D6DD:
mov     ecx, [edx+0A4h]
cmp     byte ptr [ecx], 0FFh
jnz     short loc_49D6ED
inc     al
mov     [edx+4], al

loc_49D6ED:
call    sub_47EBCB
test    eax, eax
jz      short loc_49D6FA
mov     byte ptr [edx+4], 0Ah

loc_49D6FA:
mov     eax, edx
call    sub_49D67A
mov     eax, offset byte_5F8364
call    sub_49D5EF
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 2
jnz     short loc_49D76B
mov     byte ptr [edx+4], 0Bh
pop     edx
pop     ecx
pop     ebx
retn

loc_49D723:
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
mov     bh, 1
mov     byte ptr ds:dword_77E954, bh
call    sub_42A66D
mov     eax, [edx+24h]
call    sub_4DE371
add     [edx+4], bh
pop     edx
pop     ecx
pop     ebx
retn

loc_49D74B:
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
mov     byte ptr ds:dword_77E954, 1
call    sub_42AC90
mov     byte ptr [edx], 0

loc_49D76B:
pop     edx
pop     ecx
pop     ebx
retn
sub_49D68C endp




sub_49D76F proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 20h
mov     eax, offset unk_77E5F4
cmp     ds:byte_77E5F7, 0
jnz     short loc_49D7B8
mov     edx, ds:dword_77E604
add     edx, ds:dword_77E694
sar     edx, 10h
mov     [esp+34h+var_34], edx
mov     edx, dword ptr ds:unk_77E608
add     edx, ds:dword_77E698
sar     edx, 10h
mov     [esp+34h+var_30], edx
mov     edx, ds:dword_77E60C
add     edx, ds:dword_77E69C
jmp     short loc_49D815

loc_49D7B8:
xor     edx, edx
mov     dl, ds:byte_77E5FD
mov     edx, ds:dword_560C00[edx*4]
mov     ecx, [edx+1Ch]
mov     ebx, ds:dword_77E6A4
add     ecx, ebx
mov     ds:dword_77E604, ecx
mov     ecx, [edx+20h]
mov     esi, ds:dword_77E6A8
add     ecx, esi
mov     dword ptr ds:unk_77E608, ecx
mov     edx, [edx+24h]
mov     edi, ds:dword_77E6AC
add     edx, edi
mov     ds:dword_77E60C, edx
mov     edx, ds:dword_77E604
sar     edx, 10h
mov     [esp+34h+var_34], edx
mov     edx, ecx
sar     edx, 10h
mov     [esp+34h+var_30], edx
mov     edx, ds:dword_77E60C

loc_49D815:
sar     edx, 10h
mov     [esp+34h+var_2C], edx
cmp     byte ptr [eax+8], 0
jnz     short loc_49D83D
mov     ecx, [eax+44h]
sar     ecx, 10h
mov     ebx, [eax+40h]
sar     ebx, 10h
mov     edx, [eax+48h]
sar     edx, 10h
mov     eax, esp
call    sub_42984E
jmp     short loc_49D878

loc_49D83D:
mov     edx, [eax+70h]
add     edx, [eax+0A0h]
sar     edx, 10h
mov     [esp+34h+var_24], edx
mov     edx, [eax+74h]
add     edx, [eax+0A4h]
sar     edx, 10h
mov     [esp+34h+var_20], edx
mov     edx, [eax+78h]
add     edx, [eax+0A8h]
sar     edx, 10h
mov     [esp+34h+var_1C], edx
lea     edx, [esp+34h+var_24]
mov     eax, esp
call    sub_4298E1

loc_49D878:
add     esp, 20h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49D76F endp




sub_49D881 proc near
push    ecx
mov     ecx, eax
mov     eax, ds:dword_77E998
shl     eax, 10h
mov     ds:dword_77E604, eax
mov     eax, ds:dword_77E99C
shl     eax, 10h
mov     dword ptr ds:unk_77E608, eax
mov     eax, ds:dword_77E9A0
shl     eax, 10h
mov     ds:dword_77E60C, eax
mov     eax, ds:dword_77E960
and     eax, 0FFFh
shl     eax, 10h
mov     ds:dword_77E634, eax
mov     eax, ds:dword_77E964
and     eax, 0FFFh
shl     eax, 10h
mov     ds:dword_77E638, eax
mov     eax, ds:dword_77E95C
and     eax, 0FFFh
shl     eax, 10h
mov     ds:dword_77E63C, eax
movsx   eax, cx
shl     eax, 10h
mov     ds:dword_77E694, eax
movsx   eax, dx
shl     eax, 10h
mov     ds:dword_77E698, eax
movsx   eax, bx
shl     eax, 10h
mov     ds:dword_77E69C, eax
xor     edx, edx
mov     ds:dword_77E61C, edx
mov     ds:dword_77E618, edx
mov     ds:dword_77E614, edx
mov     ds:dword_77E64C, edx
mov     ds:dword_77E648, edx
mov     ds:dword_77E644, edx
xor     eax, eax
mov     ds:dword_77E67C, edx
mov     ds:dword_77E678, edx
mov     ds:dword_77E674, edx
xor     ah, dh
mov     ds:byte_77E5FC, ah
mov     byte ptr ds:dword_77E954, 3
xor     eax, eax
call    sub_42A701
pop     ecx
retn
sub_49D881 endp

cwde
shl     eax, 10h
mov     ds:dword_77E604, eax
movsx   eax, dx
shl     eax, 10h
mov     dword ptr ds:unk_77E608, eax
movsx   eax, bx
shl     eax, 10h
mov     ds:dword_77E60C, eax
retn
cwde
shl     eax, 10h
mov     ds:dword_77E634, eax
movsx   eax, dx
shl     eax, 10h
mov     ds:dword_77E638, eax
movsx   eax, bx
shl     eax, 10h
mov     ds:dword_77E63C, eax
retn



sub_49D994 proc near
push    esi
mov     esi, edx
mov     edx, ecx
movsx   ebx, bx
movsx   ecx, ax
sub     ebx, ecx
mov     ecx, ebx
movsx   edx, dx
movsx   eax, si
sub     edx, eax
shl     edx, 0Ch
xor     eax, eax
test    ebx, ebx
jge     short loc_49D9BC
imul    ecx, ebx, -1
mov     eax, 2

loc_49D9BC:
test    edx, edx
jge     short loc_49D9C4
imul    edx, -1
inc     eax

loc_49D9C4:
test    ecx, ecx
jnz     short loc_49D9D6
mov     edx, 1
sub     edx, eax
mov     eax, edx
shl     eax, 0Bh
pop     esi
retn

loc_49D9D6:
test    eax, eax
jz      short loc_49D9DF
cmp     eax, 3
jnz     short loc_49D9FC

loc_49D9DF:
mov     ebx, eax
shl     ebx, 2
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
call    sub_4EF016
mov     edx, ds:dword_52CB98[ebx]
sub     edx, eax
mov     eax, edx
pop     esi
retn

loc_49D9FC:
mov     ebx, eax
shl     ebx, 2
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
call    sub_4EF016
add     eax, ds:dword_52CB98[ebx]
pop     esi
retn
sub_49D994 endp




sub_49DA15 proc near

var_C= dword ptr -0Ch

push    esi
push    edi
sub     esp, 4
mov     edi, eax
mov     [esp+0Ch+var_C], edx
mov     eax, ebx
xor     esi, esi
mov     edx, edi
shl     edx, 2
cmp     ebx, 40h ; '@'
jb      short loc_49DA4F
jbe     loc_49DAB8
cmp     ebx, 60h ; '`'
jb      loc_49DB45
jbe     loc_49DAE6
cmp     ebx, 0E0h
jz      short loc_49DABF
jmp     loc_49DB45

loc_49DA4F:
cmp     ebx, 20h ; ' '
jnz     loc_49DB45
call    sub_4DDF54

loc_49DA5D:
test    eax, eax
jz      loc_49DB45
mov     byte ptr [eax], 1
mov     bl, byte ptr [esp+0Ch+var_C]
mov     [eax+2], bl
or      byte ptr [eax+6], 20h
mov     esi, [ecx]
mov     [eax+14h], esi
mov     si, [ecx+4]
mov     [eax+18h], si
mov     word ptr [eax+54h], 0
mov     word ptr [eax+58h], 0
mov     si, [ecx+6]
mov     [eax+56h], si
movsx   esi, word ptr [ecx]
shl     esi, 10h
mov     [eax+1Ch], esi
mov     esi, [ecx]
sar     esi, 10h
shl     esi, 10h
mov     [eax+20h], esi
mov     ecx, [ecx+2]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+24h], ecx
jmp     loc_49DB3D

loc_49DAB8:
call    sub_4DDFD0
jmp     short loc_49DA5D

loc_49DABF:
call    sub_4DE227
test    eax, eax
jz      loc_49DB45
mov     byte ptr [eax], 1
mov     bl, byte ptr [esp+0Ch+var_C]
mov     [eax+2], bl
or      byte ptr [eax+6], 20h
mov     esi, [ecx]
mov     [eax+48h], esi
mov     ecx, [ecx+4]
mov     [eax+4Ch], ecx
jmp     short loc_49DB3D

loc_49DAE6:
call    sub_4DE043
test    eax, eax
jz      short loc_49DB45
mov     byte ptr [eax], 1
mov     bl, byte ptr [esp+0Ch+var_C]
mov     [eax+2], bl
or      byte ptr [eax+6], 20h
mov     esi, [ecx]
mov     [eax+14h], esi
mov     si, [ecx+4]
mov     [eax+18h], si
mov     word ptr [eax+54h], 0
mov     word ptr [eax+58h], 0
mov     si, [ecx+6]
mov     [eax+56h], si
movsx   esi, word ptr [ecx]
shl     esi, 10h
mov     [eax+1Ch], esi
mov     esi, [ecx]
sar     esi, 10h
shl     esi, 10h
mov     [eax+20h], esi
mov     ecx, [ecx+2]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+24h], ecx

loc_49DB3D:
mov     ds:dword_560C00[edx], eax
mov     esi, eax

loc_49DB45:
mov     eax, esi
add     esp, 4
pop     edi
pop     esi
retn
sub_49DA15 endp




sub_49DB4D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+0Ch]
xor     ebx, ebx
mov     bl, [eax+3]
xor     edx, edx
mov     dl, [eax+1]
xor     eax, eax
mov     al, [esi]
call    sub_49DA15
mov     ecx, eax
test    eax, eax
jz      short loc_49DBA0
mov     dl, [esi+3]
cmp     dl, 40h ; '@'
jb      short loc_49DB87
jbe     short loc_49DB8C
cmp     dl, 60h ; '`'
jb      short loc_49DB9E
jbe     short loc_49DB8C
cmp     dl, 0E0h
jz      short loc_49DB8C
jmp     short loc_49DB9E

loc_49DB87:
cmp     dl, 20h ; ' '
jnz     short loc_49DB9E

loc_49DB8C:
mov     dl, [esi+4]
mov     [eax+3], dl
mov     dl, [esi+2]
mov     [eax+4], dl
mov     edx, [esi+8]
mov     [eax+0Ch], edx

loc_49DB9E:
mov     eax, ecx

loc_49DBA0:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49DB4D endp




sub_49DBA5 proc near
push    ecx
push    edx
mov     edx, eax
xor     eax, eax
mov     al, [edx]
mov     ecx, ds:dword_560C00[eax*4]
mov     eax, edx
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
mov     dl, [edx]
and     edx, 0FFh
mov     ds:dword_560C00[edx*4], ecx
pop     edx
pop     ecx
retn
sub_49DBA5 endp




sub_49DBD1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, offset dword_560BDC
mov     edx, offset unk_77E5F4
mov     eax, ds:dword_77E6B4
cmp     dword ptr [eax], 0FFFFFFFFh
jz      loc_49DD1A
xor     esi, esi
jmp     loc_49DC9E

loc_49DBF4:
cmp     eax, 20h ; ' '
jz      loc_49DEB1
jmp     loc_49DC96

loc_49DC02:
cmp     eax, 13h
jb      loc_49DDFC
jbe     loc_49DE1C
cmp     eax, 14h
jbe     loc_49DE3C
mov     eax, [ecx+4]
mov     [edx+70h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+8]
mov     [edx+74h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+0Ch]
mov     [edx+78h], eax
jmp     loc_49DDD0

loc_49DC3D:
cmp     eax, 3
jb      short loc_49DC6B
jbe     loc_49DD84
cmp     eax, 5
jb      loc_49DD8D
jbe     loc_49DD96
cmp     eax, 6
jbe     loc_49DD9F
cmp     eax, 10h
jz      loc_49DDA8
jmp     short loc_49DC96

loc_49DC6B:
cmp     eax, 1
jb      short loc_49DC7B
jbe     loc_49DCED
jmp     loc_49DD5E

loc_49DC7B:
test    eax, eax
jnz     short loc_49DC96
mov     eax, [ecx]
and     eax, 0FFFFFFh
cmp     eax, [ebx+14h]
ja      loc_49DD1A

loc_49DC8F:
add     dword ptr [edx+0C0h], 4

loc_49DC96:
test    esi, esi
jnz     loc_49DD1A

loc_49DC9E:
mov     ecx, [edx+0C0h]
mov     eax, [ecx]
and     eax, 0FF000000h
shr     eax, 18h
cmp     eax, 11h
jb      short loc_49DC3D
jbe     loc_49DDDC
cmp     eax, 16h
jb      loc_49DC02
jbe     loc_49DE85
cmp     eax, 21h ; '!'
jb      loc_49DBF4
jbe     loc_49DEBB
cmp     eax, 22h ; '"'
jbe     loc_49DEC5
cmp     eax, 0FFh
jz      loc_49DD1A
jmp     short loc_49DC96

loc_49DCED:
mov     eax, [ecx]
and     eax, 0FF0000h
shr     eax, 10h
xor     ecx, ecx
mov     cl, [ebx+8]
cmp     ecx, eax
jnz     loc_49DD1A
mov     eax, [edx+0C0h]
mov     eax, [eax]
and     eax, 0FFFFh
cmp     eax, [ebx+18h]

loc_49DD14:
jz      loc_49DC8F

loc_49DD1A:
mov     eax, [edx+20h]
add     [edx+10h], eax
mov     eax, [edx+24h]
add     [edx+14h], eax
mov     eax, [edx+28h]
add     [edx+18h], eax
mov     eax, [edx+50h]
add     [edx+40h], eax
mov     eax, [edx+54h]
add     [edx+44h], eax
mov     eax, [edx+58h]
add     [edx+48h], eax
mov     eax, [edx+80h]
add     [edx+70h], eax
mov     eax, [edx+84h]
add     [edx+74h], eax
mov     eax, [edx+88h]
add     [edx+78h], eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49DD5E:
mov     ecx, [ecx]
and     ecx, 0FF0000h
shr     ecx, 10h
xor     eax, eax
mov     al, [ebx+9]
cmp     eax, ecx
jnz     short loc_49DD1A
mov     eax, [edx+0C0h]
mov     eax, [eax]
and     eax, 0FFFFh
cmp     eax, [ebx+1Ch]
jmp     short loc_49DD14

loc_49DD84:
mov     byte ptr [edx+8], 0
jmp     loc_49DC8F

loc_49DD8D:
mov     byte ptr [edx+8], 1
jmp     loc_49DC8F

loc_49DD96:
mov     byte ptr [edx+3], 0
jmp     loc_49DC8F

loc_49DD9F:
mov     byte ptr [edx+3], 1
jmp     loc_49DC8F

loc_49DDA8:
mov     byte ptr [edx+3], 0
mov     eax, [edx+0C0h]
mov     eax, [eax+4]
mov     [edx+10h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+8]
mov     [edx+14h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+0Ch]
mov     [edx+18h], eax

loc_49DDD0:
add     dword ptr [edx+0C0h], 10h
jmp     loc_49DC96

loc_49DDDC:
mov     eax, [ecx+4]
mov     [edx+40h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+8]
mov     [edx+44h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+0Ch]
mov     [edx+48h], eax
jmp     short loc_49DDD0

loc_49DDFC:
mov     eax, [ecx+4]
mov     [edx+20h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+8]
mov     [edx+24h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+0Ch]
mov     [edx+28h], eax
jmp     short loc_49DDD0

loc_49DE1C:
mov     eax, [ecx+4]
mov     [edx+50h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+8]
mov     [edx+54h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+0Ch]
mov     [edx+58h], eax
jmp     short loc_49DDD0

loc_49DE3C:
mov     byte ptr [edx+3], 1
mov     eax, [edx+0C0h]
mov     eax, [eax]
and     eax, 0FF0000h
shr     eax, 10h
mov     [edx+9], al
mov     eax, [edx+0C0h]
mov     eax, [eax+4]
mov     [edx+0B0h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+8]
mov     [edx+0B4h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+0Ch]
mov     [edx+0B8h], eax
jmp     loc_49DDD0

loc_49DE85:
mov     eax, [ecx+4]
mov     [edx+80h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+8]
mov     [edx+84h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+0Ch]
mov     [edx+88h], eax
jmp     loc_49DDD0

loc_49DEB1:
call    sub_4E1D8A
jmp     loc_49DC8F

loc_49DEBB:
call    sub_4E1DBA
jmp     loc_49DC8F

loc_49DEC5:
call    sub_4E1DFF
jmp     loc_49DC8F
sub_49DBD1 endp




sub_49DECF proc near
push    ecx
push    edx
push    esi
push    ebp
mov     eax, offset dword_560BDC
inc     ds:dword_560BF0
inc     ds:dword_560BF4
inc     ds:dword_560BF8
mov     esi, ds:dword_560BEC
inc     esi
mov     ds:dword_560BEC, esi
mov     edx, ds:dword_560C80
mov     ecx, [edx]
sar     ecx, 10h
cmp     ecx, 0FFFFFFFFh
jz      short loc_49DF5F
cmp     ecx, esi
jnz     short loc_49DF5F
add     edx, 8
mov     ds:dword_560C80, edx
mov     cl, ds:byte_560BE4
cmp     cl, [edx]
jz      short loc_49DF2C
xor     ebp, ebp
mov     ds:dword_560BF4, ebp
mov     ds:dword_560BF8, ebp

loc_49DF2C:
mov     edx, [eax+0A4h]
mov     dl, [edx]
mov     [eax+8], dl
mov     edx, [eax+0A4h]
mov     cl, [eax+9]
cmp     cl, [edx+1]
jz      short loc_49DF4C
mov     dword ptr [eax+1Ch], 0

loc_49DF4C:
mov     edx, [eax+0A4h]
mov     dl, [edx+1]
mov     [eax+9], dl
mov     dword ptr [eax+10h], 0

loc_49DF5F:
pop     ebp
pop     esi
pop     edx
pop     ecx
retn
sub_49DECF endp




sub_49DF64 proc near
push    ebx
push    ecx
push    edx
mov     eax, offset dword_560BDC
mov     edx, ds:dword_560C80
add     edx, 8
mov     ds:dword_560C80, edx
mov     bl, ds:byte_560BE4
cmp     bl, [edx]
jz      short loc_49DF93
xor     ecx, ecx
mov     ds:dword_560BF4, ecx
mov     ds:dword_560BF8, ecx

loc_49DF93:
mov     edx, [eax+0A4h]
mov     dl, [edx]
mov     [eax+8], dl
mov     edx, [eax+0A4h]
mov     bl, [eax+9]
cmp     bl, [edx+1]
jz      short loc_49DFB3
mov     dword ptr [eax+1Ch], 0

loc_49DFB3:
mov     edx, [eax+0A4h]
mov     dl, [edx+1]
mov     [eax+9], dl
mov     dword ptr [eax+10h], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_49DF64 endp




sub_49DFCA proc near
push    edx
xor     edx, edx
mov     ds:dword_560BEC, edx
mov     ds:dword_560BF4, edx
mov     ds:dword_560BF8, edx
xor     ah, ah
mov     ds:byte_560BE4, ah
mov     ds:byte_560BE5, ah
pop     edx
retn
sub_49DFCA endp




sub_49DFEF proc near
mov     ds:dword_77E6B4, edx
mov     ds:dword_560C80, eax
mov     dl, [eax]
mov     ds:byte_560BE4, dl
mov     al, [eax+1]
mov     ds:byte_560BE5, al
retn
sub_49DFEF endp




sub_49E00B proc near
push    edx
cmp     ds:word_6E23D4, 0
jz      short loc_49E072
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 4
mov     dl, byte ptr ds:word_6E23DA
mov     ds:byte_751630[eax], dl
mov     ds:byte_751631[eax], dl
mov     ds:byte_751632[eax], dl
mov     edx, offset unk_75162C
add     edx, eax
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
call    sub_4F87A6
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, offset unk_763F4C
add     edx, eax
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
call    sub_4F87A6

loc_49E072:
pop     edx
retn
sub_49E00B endp

db 8Dh, 40h, 0
jpt_49E0F6 dd offset loc_49E0FD ; jump table for switch statement
dd offset loc_49E0FD
dd offset loc_49E0FD
dd offset loc_49E0FD
dd offset def_49E0F6
dd offset loc_49E12F
dd offset loc_49E12F
dd offset loc_49E12F
dd offset loc_49E0FD
dd offset loc_49E0FD
dd offset loc_49E0FD
dd offset loc_49E0FD
dd offset def_49E0F6
dd offset loc_49E12F
dd offset loc_49E12F
dd offset loc_49E12F
dd offset loc_49E138
dd offset loc_49E138
dd offset loc_49E138
dd offset loc_49E160
dd offset loc_49E189
dd offset loc_49E1B2
dd offset loc_49E1D8
dd offset loc_49E1FE



sub_49E0D7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
cmp     ds:word_6E23D6, 0
jnz     loc_49E2EF
cmp     eax, 17h        ; switch 24 cases
ja      def_49E0F6      ; jumptable 0049E0F6 default case, cases 4,12
mov     edx, eax
jmp     jpt_49E0F6[edx*4] ; switch jump

loc_49E0FD:             ; jumptable 0049E0F6 cases 0-3,8-11
xor     bh, bh
mov     byte ptr ds:dword_6E23C9+3, bh

loc_49E105:
mov     edx, eax
sar     edx, 3
mov     dx, ds:word_52CBA8[edx*2]
mov     ds:word_6E23D6, dx
and     eax, 3
mov     ax, ds:word_52CBAC[eax*2]
mov     ds:word_6E23D8, ax
jmp     loc_49E250

loc_49E12F:             ; jumptable 0049E0F6 cases 5-7,13-15
mov     byte ptr ds:dword_6E23C9+3, 1
jmp     short loc_49E105

loc_49E138:             ; jumptable 0049E0F6 cases 16-18
mov     byte ptr ds:dword_6E23C9+3, 2
xor     dl, dl
mov     byte ptr ds:dword_6E23CD, dl
mov     byte ptr ds:dword_6E23CD+1, dl
sub     al, 10h
mov     byte ptr ds:dword_6E23CD+2, al
xor     eax, eax
mov     ds:dword_6E23CD+3, eax
jmp     loc_49E247

loc_49E160:             ; jumptable 0049E0F6 case 19
mov     byte ptr ds:dword_6E23C9+3, 2
mov     byte ptr ds:dword_6E23CD, 1
xor     ch, ch
mov     byte ptr ds:dword_6E23CD+1, ch
mov     byte ptr ds:dword_6E23CD+2, ch
xor     ebp, ebp
mov     ds:dword_6E23CD+3, ebp
jmp     loc_49E247

loc_49E189:             ; jumptable 0049E0F6 case 20
mov     ah, 2
mov     byte ptr ds:dword_6E23C9+3, ah
mov     byte ptr ds:dword_6E23CD, ah
xor     dh, dh
mov     byte ptr ds:dword_6E23CD+1, dh
mov     byte ptr ds:dword_6E23CD+2, dh
xor     edi, edi
mov     ds:dword_6E23CD+3, edi
jmp     loc_49E247

loc_49E1B2:             ; jumptable 0049E0F6 case 21
mov     byte ptr ds:dword_6E23C9+3, 2
mov     byte ptr ds:dword_6E23CD, 3
xor     ch, ch
mov     byte ptr ds:dword_6E23CD+1, ch
mov     byte ptr ds:dword_6E23CD+2, ch
xor     esi, esi
mov     ds:dword_6E23CD+3, esi
jmp     short loc_49E247

loc_49E1D8:             ; jumptable 0049E0F6 case 22
mov     byte ptr ds:dword_6E23C9+3, 2
mov     byte ptr ds:dword_6E23CD, 4
xor     dh, dh
mov     byte ptr ds:dword_6E23CD+1, dh
mov     byte ptr ds:dword_6E23CD+2, dh
xor     ebx, ebx
mov     ds:dword_6E23CD+3, ebx
jmp     short loc_49E247

loc_49E1FE:             ; jumptable 0049E0F6 case 23
mov     byte ptr ds:dword_6E23C9+3, 2
mov     byte ptr ds:dword_6E23CD, 5
xor     ch, ch
mov     byte ptr ds:dword_6E23CD+1, ch
mov     byte ptr ds:dword_6E23CD+2, ch
xor     ecx, ecx
mov     ds:dword_6E23CD+3, ecx
jmp     short loc_49E247

def_49E0F6:             ; jumptable 0049E0F6 default case, cases 4,12
mov     byte ptr ds:dword_6E23C9+3, 2
xor     dl, dl
mov     byte ptr ds:dword_6E23CD, dl
mov     byte ptr ds:dword_6E23CD+1, dl
mov     byte ptr ds:dword_6E23CD+2, dl
xor     edx, edx
mov     ds:dword_6E23CD+3, edx

loc_49E247:
mov     ds:word_6E23D6, 0FFFFh

loc_49E250:
xor     esi, esi

loc_49E252:
mov     ecx, esi
shl     ecx, 4
mov     ebx, offset unk_75162C
add     ebx, ecx
mov     eax, ebx
call    sub_4F87C5
mov     edx, 1
mov     eax, ebx
call    sub_4F884E
xor     edi, edi
mov     ds:word_751634[ecx], di
mov     ds:word_751636[ecx], di
mov     ds:word_751638[ecx], 140h
mov     ds:word_75163A[ecx], 0F0h
push    0
mov     al, byte ptr ds:dword_6E23C9+3
and     al, 1
movsx   edx, al
mov     eax, 2
sub     eax, edx
mov     edx, eax
xor     ecx, ecx
xor     ebx, ebx
mov     eax, 2
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
jb      loc_49E252
mov     edx, offset loc_49E2F6
mov     eax, 1
call    sub_4EED79

loc_49E2EF:
pop     ebp

loc_49E2F0:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49E2F6:
mov     eax, ds:dword_6E23C9
sar     eax, 18h
call    ds:funcs_49E2FE[eax*4]
sub_49E0D7 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_75]


; Attributes: noreturn

sub_49E306 proc near

var_24= qword ptr -24h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ebx, (offset dword_6E23C9+3)
cmp     ds:word_6E23D6, 0
jle     short loc_49E330
xor     dl, dl
mov     byte ptr ds:dword_6E23CD, dl
mov     ds:word_6E23DA, 0FFh
jmp     short loc_49E340

loc_49E330:
mov     byte ptr ds:dword_6E23CD, 1
xor     ecx, ecx
mov     ds:word_6E23DA, cx

loc_49E340:
mov     byte ptr [ebx+4], 0
mov     word ptr [ebx+8], 1
call    cs:__imp_GetTickCount
xor     edx, edx
mov     dword ptr [esp+24h+var_24+4], edx
mov     dword ptr [esp+24h+var_24], eax
fild    [esp+24h+var_24]
xor     eax, eax
mov     al, ds:byte_77EAC1
mov     [esp+24h+var_18], eax
fild    word ptr [esp+24h+var_18]
fmul    ds:dbl_50A2F4
fsubp   st(1), st
call    __CHP
fistp   [esp+24h+var_24]
mov     eax, dword ptr [esp+24h+var_24]
mov     ds:dword_55B8F4, eax

loc_49E384:
call    cs:__imp_GetTickCount
mov     edx, eax
mov     ds:dword_55B8F8, eax
sub     eax, ds:dword_55B8F4
xor     esi, esi
mov     dword ptr [esp+24h+var_24+4], esi
mov     dword ptr [esp+24h+var_24], eax
fild    [esp+24h+var_24]
xor     eax, eax
mov     al, ds:byte_77EAC1
mov     [esp+24h+var_18], eax
fild    word ptr [esp+24h+var_18]
fmul    ds:dbl_50A2F4
fdivp   st(1), st
fstp    ds:flt_55B8F0
mov     ds:dword_55B8F4, edx
mov     al, [ebx+1]
cmp     al, 1
jb      short loc_49E3DD
jbe     short loc_49E42A
cmp     al, 2
jz      loc_49E45D
jmp     loc_49E485

loc_49E3DD:
test    al, al
jnz     loc_49E485
fild    word ptr [ebx+0Ch]
fmul    ds:flt_55B8F0
fild    word ptr [ebx+0Eh]
fstp    [esp+24h+var_1C]
fsubr   [esp+24h+var_1C]
call    __CHP
fistp   [esp+24h+var_1C]
mov     eax, [esp+24h+var_1C]
mov     [ebx+0Eh], ax
test    ax, ax
jg      loc_49E485
mov     word ptr [ebx+0Eh], 0

loc_49E419:
xor     eax, eax
mov     al, ds:byte_77EAC1
mov     [ebx+0Ch], ax
mov     byte ptr [ebx+1], 2
jmp     short loc_49E485

loc_49E42A:
fild    word ptr [ebx+0Ch]
fmul    ds:flt_55B8F0
fild    word ptr [ebx+0Eh]
fstp    [esp+24h+var_1C]
fadd    [esp+24h+var_1C]
call    __CHP
fistp   [esp+24h+var_1C]
mov     eax, [esp+24h+var_1C]
mov     [ebx+0Eh], ax
cmp     ax, 100h
jl      short loc_49E485
mov     word ptr [ebx+0Eh], 0FFh
jmp     short loc_49E419

loc_49E45D:
mov     di, [ebx+0Ch]
test    di, di
jnz     short loc_49E47E
cmp     word ptr [ebx+0Ah], 1
jnz     short loc_49E471
mov     [ebx+8], di

loc_49E471:
mov     word ptr [ebx+0Ah], 0
call    sub_4EEDFD
jmp     short loc_49E485

loc_49E47E:
mov     eax, edi
dec     eax
mov     [ebx+0Ch], ax

loc_49E485:
mov     eax, 1
call    sub_4EEDA4
jmp     loc_49E384
sub_49E306 endp



; Attributes: noreturn

sub_49E494 proc near
push    edx

loc_49E495:
mov     edx, ds:dword_6E23C9+1
sar     edx, 18h
shl     edx, 2
mov     eax, ds:dword_6E23C9+2
sar     eax, 18h
mov     al, ds:byte_52CC64[edx+eax]
and     eax, 0FFh
call    ds:funcs_49E4B5[eax*4]
mov     eax, 1
call    sub_4EEDA4
jmp     short loc_49E495
sub_49E494 endp




sub_49E4C8 proc near
push    ebx
push    ecx
push    edx
mov     al, byte ptr ds:dword_6E23CD+2
test    al, al
jbe     short loc_49E4E0
cmp     al, 1
jz      loc_49E568
pop     edx
pop     ecx
pop     ebx
retn

loc_49E4E0:
cmp     ds:byte_77EAC6, 0
jz      loc_49E576
xor     edx, edx
mov     ds:word_77E4E2, dx
xor     ebx, ebx
mov     ds:word_77E4DA, dx
xor     ecx, ecx
mov     ds:word_77E4C6, dx
xor     bl, dl
mov     ds:byte_77E4F0, bl
xor     bh, dh
mov     ds:byte_77E4EF, bh
mov     ds:word_77E572, dx
mov     ds:word_77E56A, dx
mov     ds:word_77E556, dx
xor     cl, dl
mov     ds:byte_77E580, cl
xor     ch, dh
mov     ds:byte_77E57F, ch
call    sub_4A0E35
mov     edx, 1
mov     ds:dword_77E738, edx
mov     ds:dword_77E710, edx
mov     ds:dword_77E720, edx
inc     byte ptr ds:dword_6E23CD+2
call    sub_49F39A
pop     edx
pop     ecx
pop     ebx
retn

loc_49E568:
xor     ah, ah
mov     byte ptr ds:dword_6E23CD+2, ah
add     byte ptr ds:dword_6E23CD+1, al

loc_49E576:
pop     edx
pop     ecx
pop     ebx
retn
sub_49E4C8 endp




sub_49E57A proc near
push    ebx
push    ecx
push    edx
mov     al, byte ptr ds:dword_6E23CD+2
test    al, al
jbe     short loc_49E592
cmp     al, 1
jz      loc_49E61A
pop     edx
pop     ecx
pop     ebx
retn

loc_49E592:
cmp     ds:byte_77EAC6, 0
jz      loc_49E628
xor     edx, edx
mov     ds:word_77E4E2, dx
xor     ebx, ebx
mov     ds:word_77E4DA, dx
xor     ecx, ecx
mov     ds:word_77E4C6, dx
xor     bl, dl
mov     ds:byte_77E4F0, bl
xor     bh, dh
mov     ds:byte_77E4EF, bh
mov     ds:word_77E572, dx
mov     ds:word_77E56A, dx
mov     ds:word_77E556, dx
xor     cl, dl
mov     ds:byte_77E580, cl
xor     ch, dh
mov     ds:byte_77E57F, ch
call    sub_4A0E35
mov     edx, 1
mov     ds:dword_77E738, edx
mov     ds:dword_77E710, edx
mov     ds:dword_77E720, edx
inc     byte ptr ds:dword_6E23CD+2
call    sub_49F39A
pop     edx
pop     ecx
pop     ebx
retn

loc_49E61A:
xor     ah, ah
mov     byte ptr ds:dword_6E23CD+2, ah
add     byte ptr ds:dword_6E23CD+1, al

loc_49E628:
pop     edx
pop     ecx
pop     ebx
retn
sub_49E57A endp




sub_49E62C proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     al, byte ptr ds:dword_6E23CD+2
test    al, al
jbe     short loc_49E647
cmp     al, 1
jz      loc_49E6FE
jmp     loc_49E714

loc_49E647:
cmp     ds:byte_77EAC6, 0
jnz     short loc_49E669
cmp     ds:dword_77E710, 0
jz      short loc_49E669
xor     ebx, ebx
mov     ds:dword_77E710, ebx
xor     esi, esi
mov     ds:dword_77E720, esi

loc_49E669:
cmp     ds:byte_77EAC6, 0
jz      loc_49E714
cmp     ds:dword_77E710, 0
jnz     loc_49E714
xor     ebx, ebx
mov     ds:word_77E4E2, bx
xor     ecx, ecx
mov     ds:word_77E4DA, cx
mov     esi, 100h
mov     ds:word_77E4C6, si
mov     dh, 1
mov     ds:byte_77E4F0, dh
xor     bl, bl
mov     ds:byte_77E4EE, bl
mov     bh, dh
mov     ds:byte_77E4EF, dh
mov     ds:word_77E572, si
mov     ds:word_77E56A, si
xor     edx, edx
mov     ds:word_77E556, dx
mov     ds:byte_77E580, bh
mov     ds:byte_77E57E, bl
mov     ds:byte_77E57F, bh
xor     ebp, ebp
mov     ds:dword_77E738, ebp
xor     eax, eax
mov     ds:dword_77E710, eax
mov     ds:dword_77E720, eax
add     byte ptr ds:dword_6E23CD+2, bh
jmp     short loc_49E714

loc_49E6FE:
xor     edx, edx
mov     ds:dword_77E738, edx
xor     edx, edx
mov     ds:word_6E23D6, dx
call    sub_4EEDFD

loc_49E714:
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49E62C endp




sub_49E71A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     al, byte ptr ds:dword_6E23CD+2
test    al, al
jbe     short loc_49E736
cmp     al, 1
jz      loc_49E7E4
jmp     loc_49E2EF

loc_49E736:
cmp     ds:byte_77EAC6, 0
jnz     short loc_49E750
cmp     ds:dword_77E710, 0
jz      short loc_49E750
xor     ebx, ebx
mov     ds:dword_77E710, ebx

loc_49E750:
cmp     ds:byte_77EAC6, 0
jz      loc_49E2EF
cmp     ds:dword_77E710, 0
jnz     loc_49E2EF
xor     ebx, ebx
mov     ds:word_77E4E2, bx
xor     ecx, ecx
mov     ds:word_77E4DA, cx
mov     esi, 100h
mov     ds:word_77E4C6, si
mov     dh, 1
mov     ds:byte_77E4F0, dh
xor     bl, bl
mov     ds:byte_77E4EE, bl
mov     bh, dh
mov     ds:byte_77E4EF, dh
mov     ds:word_77E572, si
mov     ds:word_77E56A, si
xor     edx, edx
mov     ds:word_77E556, dx
mov     ds:byte_77E580, bh
mov     ds:byte_77E57E, bl
mov     ds:byte_77E57F, bh
xor     edi, edi
mov     ds:dword_77E738, edi
xor     ebp, ebp
mov     ds:dword_77E710, ebp
add     byte ptr ds:dword_6E23CD+2, bh
jmp     loc_49E2EF

loc_49E7E4:
xor     edx, edx
mov     ds:dword_77E738, edx
xor     edx, edx
mov     ds:word_6E23D6, dx
call    sub_4EEDFD
jmp     loc_49E2EF
sub_49E71A endp




sub_49E7FF proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
xor     edx, edx
mov     ds:dword_77E738, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     edi, offset unk_55B3F8
add     edi, eax
mov     eax, ds:dword_6E23CD
sar     eax, 18h
mov     edx, ds:dword_6E23C9+3
sar     edx, 18h
mov     esi, edx
shl     esi, 3
test    al, 3
jnz     short loc_49E84D
mov     esi, ds:dword_52CC7C[esi]
jmp     short loc_49E853

loc_49E84D:
mov     esi, ds:dword_52CC80[esi]

loc_49E853:
mov     ecx, ds:dword_52CC94[edx*4]
mov     [esp+18h+var_18], ecx
mov     ebx, eax
shl     ebx, 5
mov     ecx, eax
shl     eax, 2
sub     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 3
add     eax, 100h
cmp     edx, 1
jnz     short loc_49E882
movsx   ecx, ax
xor     ebx, ebx
jmp     short loc_49E888

loc_49E882:
movsx   ecx, ax
movsx   ebx, bx

loc_49E888:
mov     edx, 78h ; 'x'
mov     eax, 0A0h
call    sub_49F433
xor     ebx, ebx

loc_49E899:
mov     eax, ebx
shl     eax, 3
mov     ecx, eax
shl     eax, 3
sub     eax, ecx
lea     ecx, [edi+eax]
mov     eax, ecx
call    sub_4F87F0
mov     dword ptr [ecx], 9000000h
mov     [ecx+4], esi
mov     ax, [ecx+16h]
xor     ah, ah
and     al, 7Fh
mov     edx, [esp+18h+var_18]
or      eax, edx
mov     [ecx+16h], ax
mov     edx, 1F0h
xor     eax, eax
call    sub_4F8961
mov     [ecx+0Eh], ax
xor     edx, edx
mov     dl, ds:byte_52CC08[ebx*4]
mov     dx, ds:word_55B3B0[edx*4]
mov     [ecx+8], dx
xor     edx, edx
mov     dl, ds:byte_52CC08[ebx*4]
mov     dx, ds:word_55B3B2[edx*4]
mov     [ecx+0Ah], dx
xor     edx, edx
mov     dl, ds:byte_52CC09[ebx*4]
mov     dx, ds:word_55B3B0[edx*4]
mov     [ecx+10h], dx
xor     edx, edx
mov     dl, ds:byte_52CC09[ebx*4]
mov     dx, ds:word_55B3B2[edx*4]
mov     [ecx+12h], dx
xor     edx, edx
mov     dl, ds:byte_52CC0A[ebx*4]
mov     dx, ds:word_55B3B0[edx*4]
mov     [ecx+18h], dx
xor     edx, edx
mov     dl, ds:byte_52CC0A[ebx*4]
mov     dx, ds:word_55B3B2[edx*4]
mov     [ecx+1Ah], dx
xor     edx, edx
mov     dl, ds:byte_52CC0B[ebx*4]
mov     dx, ds:word_55B3B0[edx*4]
mov     [ecx+20h], dx
mov     al, ds:byte_52CC0B[ebx*4]
and     eax, 0FFh
mov     ax, ds:word_55B3B2[eax*4]
mov     [ecx+22h], ax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
mov     edx, ecx
call    sub_4F87A6
inc     ebx
cmp     ebx, 0Ah
jl      loc_49E899
mov     ah, byte ptr ds:dword_6E23CD+3
inc     ah
mov     byte ptr ds:dword_6E23CD+3, ah
cmp     ah, 3Fh ; '?'
jle     short loc_49E9D6
xor     dh, dh
mov     byte ptr ds:dword_6E23C9+3, dh
mov     byte ptr ds:dword_6E23CD+2, dh
mov     ds:word_6E23D4, 1
mov     ds:word_6E23DA, 0FFh
inc     byte ptr ds:dword_6E23CD+1

loc_49E9D6:
add     esp, 4
jmp     loc_49E2F0
sub_49E7FF endp




sub_49E9DE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     al, byte ptr ds:dword_6E23CD+2
test    al, al
jbe     short loc_49E9F8
cmp     al, 1
jz      loc_49EAB7
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49E9F8:
xor     ecx, ecx

loc_49E9FA:
mov     ebx, ecx
shl     ebx, 7
mov     eax, ebx
call    sub_4EF003
mov     word ptr ds:(dword_55B86E+2)[ecx*4], ax
mov     eax, ebx
call    sub_4EF008
mov     ds:word_55B872[ecx*4], ax
inc     ecx
cmp     ecx, 20h ; ' '
jl      short loc_49E9FA
xor     esi, esi
jmp     short loc_49EA4F

loc_49EA27:
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
jge     short loc_49EAAC

loc_49EA4F:
xor     ecx, ecx

loc_49EA51:
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
mov     dword ptr [edx+4], 3AFFFFFFh
mov     dword ptr [edx+0Ch], 0FFFFFFh
mov     dword ptr [edx+14h], 0
mov     dword ptr [edx+1Ch], 0
inc     ecx
cmp     ecx, 20h ; ' '
jl      short loc_49EA51
jmp     loc_49EA27

loc_49EAAC:
inc     byte ptr ds:dword_6E23CD+2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49EAB7:
xor     edx, edx
mov     ds:dword_77E738, edx
mov     esi, ds:dword_6E23CD
sar     esi, 18h
shl     esi, 2
xor     ecx, ecx

loc_49EACD:
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
mov     word ptr [edx+8], 0A0h
mov     word ptr [edx+0Ah], 78h ; 'x'
mov     word ptr [edx+10h], 0A0h
mov     word ptr [edx+12h], 78h ; 'x'
mov     ebx, ds:dword_55B86E[ecx*4]
sar     ebx, 10h
imul    ebx, esi
sar     ebx, 0Ch
add     ebx, 0A0h
mov     [edx+18h], bx
mov     eax, ds:(dword_55B86E+2)[ecx*4]
sar     eax, 10h
imul    eax, esi
sar     eax, 0Ch
add     eax, 78h ; 'x'
mov     [edx+1Ah], ax
lea     ebx, [ecx+1]
mov     eax, ebx
and     eax, 1Fh
mov     ecx, ds:dword_55B86E[eax*4]
sar     ecx, 10h
imul    ecx, esi
sar     ecx, 0Ch
add     ecx, 0A0h
mov     [edx+20h], cx
mov     eax, ds:(dword_55B86E+2)[eax*4]
sar     eax, 10h
imul    eax, esi
sar     eax, 0Ch
add     eax, 78h ; 'x'
mov     [edx+22h], ax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     ecx, ebx
cmp     ebx, 20h ; ' '
jl      loc_49EACD
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
inc     ah
mov     byte ptr ds:dword_6E23CD+3, ah
cmp     ah, 3Fh ; '?'
jle     short loc_49EBF6
xor     dh, dh
mov     byte ptr ds:dword_6E23C9+3, dh
mov     byte ptr ds:dword_6E23CD+2, dh
mov     ds:word_6E23D4, 1
mov     ds:word_6E23DA, 0FFh
inc     byte ptr ds:dword_6E23CD+1

loc_49EBF6:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49E9DE endp




sub_49EBFB proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     al, byte ptr ds:dword_6E23CD+2
cmp     al, 1
jb      short loc_49EC20
jbe     loc_49ECEE
cmp     al, 2
jz      loc_49EE7D
jmp     loc_49F01F

loc_49EC20:
test    al, al
jnz     loc_49F01F
xor     ecx, ecx

loc_49EC2A:
mov     edx, ecx
shl     edx, 7
mov     eax, edx
call    sub_4EF003
mov     word ptr ds:(dword_55B86E+2)[ecx*4], ax
mov     eax, edx
call    sub_4EF008
mov     ds:word_55B872[ecx*4], ax
inc     ecx
cmp     ecx, 20h ; ' '
jl      short loc_49EC2A
xor     esi, esi
jmp     short loc_49EC7F

loc_49EC57:
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
jge     short loc_49ECDC

loc_49EC7F:
xor     ecx, ecx

loc_49EC81:
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
mov     dword ptr [edx+14h], 0FFFFFFh
mov     dword ptr [edx+1Ch], 0FFFFFFh
inc     ecx
cmp     ecx, 20h ; ' '
jl      short loc_49EC81
jmp     loc_49EC57

loc_49ECDC:
mov     byte ptr ds:dword_6E23CD+3, 3Ch ; '<'

loc_49ECE3:
inc     byte ptr ds:dword_6E23CD+2
jmp     loc_49F01F

loc_49ECEE:
xor     edx, edx
mov     ds:dword_77E738, edx
mov     esi, ds:dword_6E23CD
sar     esi, 18h
shl     esi, 2
xor     ecx, ecx

loc_49ED04:
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
mov     eax, ecx
mov     ebx, ds:dword_55B86E[ecx*4]
sar     ebx, 10h
imul    ebx, esi
sar     ebx, 0Ch
add     ebx, 0A0h
mov     [edx+8], bx
mov     ebx, ds:(dword_55B86E+2)[ecx*4]
sar     ebx, 10h
imul    ebx, esi
sar     ebx, 0Ch
add     ebx, 78h ; 'x'
mov     [edx+0Ah], bx
lea     ebx, [ecx+1]
mov     ecx, ebx
and     ecx, 1Fh
mov     edi, ds:dword_55B86E[ecx*4]
sar     edi, 10h
imul    edi, esi
sar     edi, 0Ch
add     edi, 0A0h
mov     [esp+1Ch+var_1C], edi
mov     edi, [esp+1Ch+var_1C]
mov     [edx+10h], di
mov     edi, ds:(dword_55B86E+2)[ecx*4]
sar     edi, 10h
imul    edi, esi
sar     edi, 0Ch
add     edi, 78h ; 'x'
mov     [esp+1Ch+var_1C], edi
mov     edi, [esp+1Ch+var_1C]
mov     [edx+12h], di
mov     edi, ds:dword_55B86E[eax*4]
sar     edi, 10h
imul    edi, 0D2h
sar     edi, 0Ch
add     edi, 0A0h
mov     [esp+1Ch+var_1C], edi
mov     edi, [esp+1Ch+var_1C]
mov     [edx+18h], di
mov     eax, ds:(dword_55B86E+2)[eax*4]
sar     eax, 10h
imul    eax, 0D2h
sar     eax, 0Ch
add     eax, 78h ; 'x'
mov     [edx+1Ah], ax
mov     eax, ds:dword_55B86E[ecx*4]
sar     eax, 10h
imul    eax, 0D2h
sar     eax, 0Ch
add     eax, 0A0h
mov     [edx+20h], ax
mov     eax, ds:(dword_55B86E+2)[ecx*4]
sar     eax, 10h
imul    eax, 0D2h
sar     eax, 0Ch
add     eax, 78h ; 'x'
mov     [edx+22h], ax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     ecx, ebx
cmp     ebx, 20h ; ' '
jl      loc_49ED04
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
mov     cl, byte ptr ds:dword_6E23CD+3
dec     cl
mov     byte ptr ds:dword_6E23CD+3, cl
jnz     loc_49F01F
mov     byte ptr ds:dword_6E23CD+3, 5
jmp     loc_49ECE3

loc_49EE7D:
mov     ah, byte ptr ds:dword_6E23CD+3
dec     ah
mov     byte ptr ds:dword_6E23CD+3, ah
jnz     short loc_49EEB1
mov     byte ptr ds:dword_6E23C9+3, ah
mov     byte ptr ds:dword_6E23CD+2, ah
mov     ds:word_6E23D4, 1
mov     ds:word_6E23DA, 0FFh
inc     byte ptr ds:dword_6E23CD+1

loc_49EEB1:
mov     eax, ds:dword_6E23CD
sar     eax, 18h
mov     esi, eax
shl     esi, 2
shl     eax, 4
lea     edi, [eax+10h]
xor     ecx, ecx

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

loc_4A171D:
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     eax, [eax+14h]
mov     byte ptr [eax+3], 0E9h
mov     byte ptr [ecx+78h], 0
mov     al, [ecx+71h]
cmp     al, [ecx+73h]
jnz     loc_4A18C6
test    byte ptr [ecx+2], 0C0h
jnz     loc_4A18C6
movsx   bx, byte ptr [ecx+71h]
test    byte ptr [ecx+0BBh], 40h
jnz     loc_4A1890
mov     al, [ecx+0BAh]
test    al, 10h
jz      short loc_4A1773
mov     eax, [ecx+14h]
mov     al, [eax+2]

loc_4A1767:
and     al, 0F0h
and     eax, 0FFh
sar     eax, 4
jmp     short loc_4A17C1

loc_4A1773:
test    byte ptr [ecx+0B8h], 10h
jz      short loc_4A17AE
test    al, 10h
jnz     short loc_4A17AE
mov     di, [ecx+0BCh]
cmp     di, 0Ch
jbe     short loc_4A179F
mov     eax, [ecx+14h]
mov     al, [eax+2]

loc_4A1793:
and     al, 0F0h
and     eax, 0FFh
sar     eax, 4
jmp     short loc_4A17F9

loc_4A179F:
mov     eax, edi
inc     eax
mov     [ecx+0BCh], ax
jmp     loc_4A1890

loc_4A17AE:
mov     dh, [ecx+0BAh]
test    dh, 40h
jz      short loc_4A17D2
mov     eax, [ecx+14h]
mov     al, [eax+2]

loc_4A17BF:
and     al, 0Fh

loc_4A17C1:
mov     [ecx+71h], al
mov     word ptr [ecx+0BCh], 0
jmp     loc_4A1890

loc_4A17D2:
test    byte ptr [ecx+0B8h], 40h
jz      short loc_4A180A
test    dh, 40h
jnz     short loc_4A180A
mov     dx, [ecx+0BCh]
cmp     dx, 0Ch
jbe     loc_4A1886
mov     eax, [ecx+14h]
mov     al, [eax+2]

loc_4A17F7:
and     al, 0Fh

loc_4A17F9:
mov     [ecx+71h], al
mov     word ptr [ecx+0BCh], 0Ch
jmp     loc_4A1890

loc_4A180A:
mov     dl, [ecx+0BAh]
test    dl, 80h
jz      short loc_4A1820
mov     eax, [ecx+14h]
mov     al, [eax+1]
jmp     loc_4A1767

loc_4A1820:
test    byte ptr [ecx+0B8h], 80h
jz      short loc_4A184A
test    dl, 80h
jnz     short loc_4A184A
mov     di, [ecx+0BCh]
cmp     di, 0Ch
jbe     loc_4A179F
mov     eax, [ecx+14h]
mov     al, [eax+1]
jmp     loc_4A1793

loc_4A184A:
mov     ah, [ecx+0BAh]
test    ah, 20h
jz      short loc_4A1860
mov     eax, [ecx+14h]
mov     al, [eax+1]
jmp     loc_4A17BF

loc_4A1860:
test    byte ptr [ecx+0B8h], 20h
jz      short loc_4A1890
test    ah, 20h
jnz     short loc_4A1890
mov     dx, [ecx+0BCh]
cmp     dx, 0Ch
jbe     short loc_4A1886
mov     eax, [ecx+14h]
mov     al, [eax+1]
jmp     loc_4A17F7

loc_4A1886:
mov     esi, edx
inc     esi
mov     [ecx+0BCh], si

loc_4A1890:
mov     eax, [ecx+14h]
mov     byte ptr [eax+3], 5Ch ; '\'
add     byte ptr [ecx+78h], 30h ; '0'
mov     eax, [ecx+14h]
add     eax, 3
mov     [ecx+74h], eax
or      byte ptr [ecx+2], 80h
mov     edx, [ecx+6Eh]
sar     edx, 18h
movsx   eax, bx
cmp     eax, edx
jz      short loc_4A18C6
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
call    sub_4D89E4

loc_4A18C6:
add     byte ptr [ecx+78h], 50h ; 'P'
inc     byte ptr [ecx+73h]
add     dword ptr [ecx+14h], 3
jmp     loc_4A518C
db 90h
jpt_4A1A3F dd offset loc_4A1A46 ; jump table for switch statement
dd offset loc_4A1A50
dd offset loc_4A1A5A
dd offset loc_4A1A64

loc_4A18E7:
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
test    byte ptr [eax+3], 1
jnz     loc_4A1958
or      byte ptr [ecx+3], 1
and     byte ptr [ecx+1], 7Fh
mov     word ptr [ecx+4], 5
mov     eax, [ecx+6Ch]
mov     bl, [eax+1]
test    bl, 40h
jz      short loc_4A191E
test    bl, 80h
jz      short loc_4A1919
or      byte ptr [ecx+1], 80h

loc_4A1919:
mov     al, [ecx+79h]
jmp     short loc_4A1955

loc_4A191E:
test    bl, 20h
jz      short loc_4A1931
test    bl, 80h
jz      short loc_4A192C
or      byte ptr [ecx+1], 80h

loc_4A192C:
mov     al, [ecx+7Ah]
jmp     short loc_4A1955

loc_4A1931:
test    bl, 10h
jz      short loc_4A1944
test    bl, 80h
jz      short loc_4A193F
or      byte ptr [ecx+1], 80h

loc_4A193F:
mov     al, [ecx+7Bh]
jmp     short loc_4A1955

loc_4A1944:
test    bl, 80h
jz      short loc_4A194D
or      byte ptr [ecx+1], 80h

loc_4A194D:
mov     eax, [ecx+6Ch]
mov     al, [eax+1]
and     al, 3Fh

loc_4A1955:
mov     [ecx+71h], al

loc_4A1958:
or      byte ptr [ecx+3], 10h
and     byte ptr [ecx+2], 0BFh
or      byte ptr ds:dword_55BD7C+2, 4
mov     dx, [ecx+4]
test    dx, dx
jg      loc_4A1B5D
test    byte ptr [ecx+1], 40h
jz      short loc_4A199A
mov     eax, [ecx+6Fh]
sar     eax, 18h
mov     edx, [ecx+6Eh]
sar     edx, 18h
sub     eax, 2
cmp     edx, eax
jge     short loc_4A199A
test    byte ptr [ecx+0BBh], 10h
jz      def_4A1A3F      ; jumptable 004A1A3F default case

loc_4A199A:
mov     bh, [ecx+0BBh]
test    bh, 40h
jnz     short loc_4A19CA
test    bh, 10h
jz      short loc_4A19B0
test    byte ptr [ecx+1], 80h
jnz     short loc_4A19CA

loc_4A19B0:
test    byte ptr [ecx+0BAh], 8
jz      def_4A1A3F      ; jumptable 004A1A3F default case
cmp     byte ptr ds:dword_77E784, 4
jnz     def_4A1A3F      ; jumptable 004A1A3F default case

loc_4A19CA:
test    byte ptr [ecx+0BBh], 10h
jz      short loc_4A19D9
test    byte ptr [ecx+1], 80h
jnz     short loc_4A19EB

loc_4A19D9:
test    byte ptr [ecx+0BAh], 8
jz      short loc_4A1A01
cmp     byte ptr ds:dword_77E784, 4
jnz     short loc_4A1A01

loc_4A19EB:
mov     al, [ecx+72h]
dec     al
mov     [ecx+71h], al
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
jmp     short loc_4A1A0D

loc_4A1A01:
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h

loc_4A1A0D:
call    sub_4D89E4
xor     dl, dl
mov     byte ptr ds:dword_55BD7C, dl
mov     eax, [ecx+6Ch]
cmp     byte ptr [eax], 0E6h
jnz     short loc_4A1A6E
mov     bl, [ecx+71h]
cmp     bl, 5
jz      short loc_4A1A6E
test    bl, bl
jz      short loc_4A1A6E
mov     al, bl
dec     al              ; switch 4 cases
cmp     al, 3
ja      def_4A1A3F      ; jumptable 004A1A3F default case
and     eax, 0FFh
jmp     jpt_4A1A3F[eax*4] ; switch jump

loc_4A1A46:             ; jumptable 004A1A3F case 1
call    sub_4E3FD4
jmp     def_4A1A3F      ; jumptable 004A1A3F default case

loc_4A1A50:             ; jumptable 004A1A3F case 2
call    sub_4E4037
jmp     def_4A1A3F      ; jumptable 004A1A3F default case

loc_4A1A5A:             ; jumptable 004A1A3F case 3
call    sub_4E409A
jmp     def_4A1A3F      ; jumptable 004A1A3F default case

loc_4A1A64:             ; jumptable 004A1A3F case 4
call    sub_4E40FD
jmp     def_4A1A3F      ; jumptable 004A1A3F default case

loc_4A1A6E:
mov     eax, [ecx+6Ch]
cmp     byte ptr [eax], 0E4h
jnz     short loc_4A1A84
mov     eax, [ecx+6Eh]
sar     eax, 18h
mov     al, ds:byte_55B900[eax]
jmp     short loc_4A1A8A

loc_4A1A84:
mov     eax, [ecx+6Eh]
sar     eax, 18h

loc_4A1A8A:
and     eax, 0FFh
or      eax, 40000000h
or      ds:dword_55BD7C, eax
mov     eax, [ecx+74h]
mov     byte ptr [eax], 0E9h
or      byte ptr [ecx+2], 40h
and     dword ptr [ecx], 0EEFF97FFh
mov     word ptr [ecx+4], 5
mov     eax, [ecx+6Ch]
mov     edx, [ecx+6Eh]
sar     edx, 18h
mov     dl, [edx+eax+2]
test    byte ptr [eax+1], 40h
jz      short loc_4A1AD3
mov     al, [ecx+71h]
mov     [ecx+79h], al
mov     al, ds:byte_55BD8D
mov     ds:byte_55BD89, al

loc_4A1AD3:
mov     eax, [ecx+6Ch]
test    byte ptr [eax+1], 20h
jz      short loc_4A1AE2
mov     al, [ecx+71h]
mov     [ecx+7Ah], al

loc_4A1AE2:
mov     eax, [ecx+6Ch]
test    byte ptr [eax+1], 10h
jz      short loc_4A1AF1
mov     al, [ecx+71h]
mov     [ecx+7Bh], al

loc_4A1AF1:
cmp     dl, 0FFh
jnz     short loc_4A1B04
mov     eax, [ecx+6Fh]
sar     eax, 18h
add     eax, 2
add     [ecx+6Ch], eax
jmp     short loc_4A1B4F

loc_4A1B04:
xor     ah, ah
mov     al, dl
mov     [ecx+0C2h], ax
mov     edi, [ecx+44h]
test    edi, edi
jz      short loc_4A1B30
xor     eax, eax
mov     al, dl
mov     edx, edi
mov     ax, [edx+eax*2]
and     eax, 0FFFFh
lea     edx, [edi+eax]
mov     [ecx+48h], edx
mov     [ecx+6Ch], edx
jmp     short loc_4A1B41

loc_4A1B30:
xor     eax, eax
mov     al, dl
mov     eax, ds:off_52FCBD[eax*4]
mov     [ecx+48h], eax
mov     [ecx+6Ch], eax

loc_4A1B41:
mov     byte ptr [ecx+3Eh], 0
mov     al, [ecx+3Eh]
mov     [ecx+3Ch], al
mov     byte ptr [ecx+72h], 0

loc_4A1B4F:
mov     byte ptr [ecx+78h], 80h
mov     eax, 1
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A1B5D:
mov     ebx, edx
dec     ebx
mov     [ecx+4], bx

def_4A1A3F:             ; jumptable 004A1A3F default case
mov     byte ptr [ecx+78h], 80h
xor     eax, eax
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A1B6F:
push    edx
mov     edx, [eax+6Fh]
sar     edx, 18h
add     edx, 2
add     [eax+14h], edx
pop     edx
retn

loc_4A1B7E:
and     byte ptr [eax+3], 0F7h
jmp     loc_4A1D1B

loc_4A1B87:
push    ebx
push    ecx
push    edx
mov     edx, [eax+6Ch]
mov     cl, [edx+1]
mov     bl, [edx+2]
add     edx, 3
mov     [eax+6Ch], edx
mov     edx, [eax+44h]
test    edx, edx
jz      short loc_4A1BAB
and     ebx, 0FFh
movsx   eax, cl
jmp     short loc_4A1BBE

loc_4A1BAB:
xor     eax, eax
mov     al, bl
mov     edx, ds:off_52FCBD[eax*4]
movsx   eax, cl
mov     ebx, 0FFh

loc_4A1BBE:
call    sub_4A0CDD
jmp     loc_4A3054

loc_4A1BC8:
push    edx
mov     edx, eax
mov     eax, [eax+6Ch]
inc     eax
call    sub_4A1329
and     eax, 0FFFFh
call    sub_47E8B8
jmp     loc_4A1490

loc_4A1BE3:
push    edx
mov     edx, eax
mov     eax, [eax+6Ch]
inc     eax
call    sub_4A1329
and     eax, 0FFFFh
call    sub_47EA91
jmp     loc_4A1490

loc_4A1BFE:
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+6Ch]
inc     eax
call    sub_4A1329
and     eax, 0FFFFh
call    sub_47E888
test    eax, eax
jz      short loc_4A1C22
mov     ebx, [edx+6Ch]
mov     bl, [ebx+3]
jmp     short loc_4A1C28

loc_4A1C22:
mov     ebx, [edx+6Ch]
mov     bl, [ebx+4]

loc_4A1C28:
cmp     bl, 0FFh
jnz     short loc_4A1C36
add     dword ptr [edx+6Ch], 5
jmp     loc_4A3054

loc_4A1C36:
xor     ah, ah
mov     al, bl
mov     [edx+0C2h], ax
xor     eax, eax
mov     al, bl
lea     ecx, [eax+eax]
mov     eax, [edx+44h]
mov     cx, [ecx+eax]
and     ecx, 0FFFFh
add     eax, ecx
mov     [edx+6Ch], eax
mov     [edx+48h], eax
jmp     loc_4A3054

loc_4A1C62:
push    ebx
push    ecx
push    edx
mov     edx, eax
test    byte ptr [eax+3], 1
jnz     short loc_4A1C81
or      byte ptr [edx+3], 1
mov     eax, [edx+6Ch]
inc     eax
call    sub_4A1329
mov     [edx+4], ax
inc     byte ptr [edx+3Bh]

loc_4A1C81:
or      byte ptr [edx+3], 10h
mov     ecx, [edx+38h]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     loc_4A3E61
mov     ebx, [edx+2]
sar     ebx, 10h
mov     ecx, [edx+37h]
sar     ecx, 18h
imul    ebx, ecx
mov     ecx, eax
neg     ecx
cmp     ebx, ecx
jge     short loc_4A1CED
add     [edx+38h], ax
and     byte ptr [edx+3], 0FEh
mov     ecx, [edx+6Ch]
add     ecx, 3
mov     [edx+6Ch], ecx
mov     [edx+48h], ecx
mov     byte ptr [edx+71h], 0
mov     byte ptr [edx+72h], 0
mov     byte ptr [edx+73h], 0
mov     byte ptr [edx+3Bh], 0
mov     al, [edx+3Eh]
mov     [edx+3Ch], al
jmp     loc_4A3E61

loc_4A1CED:
movsx   ax, byte ptr [edx+3Ah]
sub     [edx+38h], ax
jmp     loc_4A3E61

loc_4A1CFB:
push    edx
mov     edx, eax
mov     eax, [eax+14h]
inc     eax
call    sub_4A1329
add     [edx+10h], ax
add     dword ptr [edx+14h], 3
pop     edx
retn

loc_4A1D11:
or      byte ptr [eax+3], 20h
jmp     short loc_4A1D1B

loc_4A1D17:
and     byte ptr [eax+3], 0DFh

loc_4A1D1B:
inc     dword ptr [eax+6Ch]
jmp     loc_4A2310

loc_4A1D23:
push    ebx
push    edx
mov     dl, [eax+3]
test    dl, 1
jnz     short loc_4A1D3B
mov     dh, dl
or      dh, 1
mov     [eax+3], dh
mov     word ptr [eax+4], 0Ah

loc_4A1D3B:
or      byte ptr [eax+3], 10h
mov     dx, [eax+4]
test    dx, dx
jg      short loc_4A1D6A
test    byte ptr [eax+2], 4
jnz     short loc_4A1D57
test    byte ptr [eax+0B9h], 0F0h
jz      short loc_4A1D71

loc_4A1D57:
or      byte ptr ds:dword_55BD7C+2, 8
and     byte ptr [eax+3], 0FEh
inc     dword ptr [eax+6Ch]
xor     eax, eax
pop     edx
pop     ebx
retn

loc_4A1D6A:
mov     ebx, edx
dec     ebx
mov     [eax+4], bx

loc_4A1D71:
xor     eax, eax
pop     edx
pop     ebx
retn

loc_4A1D76:
push    ebx
push    ecx
push    edx
mov     edx, eax
test    byte ptr [eax+3], 1
jnz     short loc_4A1D92
or      byte ptr [edx+3], 1
mov     eax, [edx+6Ch]
inc     eax
call    sub_4A1329
mov     [edx+4], ax

loc_4A1D92:
or      byte ptr [edx+3], 10h
mov     bx, [edx+4]
test    bx, bx
jle     short loc_4A1DA5
test    byte ptr [edx+2], 4
jnz     short loc_4A1DBC

loc_4A1DA5:
mov     word ptr [edx+4], 0
and     byte ptr [edx+3], 0EEh
mov     eax, 1
add     dword ptr [edx+6Ch], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4A1DBC:
xor     eax, eax
mov     ecx, ebx
dec     ecx
mov     [edx+4], cx
pop     edx
pop     ecx
pop     ebx
retn

loc_4A1DC9:
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
mov     [esp+34h+var_1C], offset dword_77E760
test    byte ptr [eax+3], 1
jnz     loc_4A1EDB
or      byte ptr [ebp+3], 1
mov     edx, ds:dword_77E768
lea     edi, [esp+34h+var_24]
mov     esi, edx
movsd
movsd
movsx   eax, word ptr [edx]
mov     [esp+34h+var_34], eax
mov     edx, [edx]
sar     edx, 10h
mov     eax, [ebp+6Ch]
add     eax, 9
call    sub_4A1329
cwde
add     edx, eax
mov     [esp+34h+var_30], edx
mov     eax, ds:dword_77E768
mov     eax, [eax+2]
sar     eax, 10h
mov     [esp+34h+var_2C], eax
mov     edx, offset byte_5F8364
add     edx, 14h
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_4A1E7F
mov     eax, [ebp+6Ch]
add     eax, 7
call    sub_4A1329
xor     ecx, ecx
mov     cx, ax
add     ecx, ds:dword_77E964
mov     eax, [ebp+6Ch]
add     eax, 5
call    sub_4A1329
xor     ebx, ebx
mov     bx, ax
lea     eax, [esp+34h+var_24]
call    sub_4DDDB4
add     ebx, eax
mov     eax, [ebp+6Ch]
add     eax, 3
call    sub_4A1329
xor     edx, edx
mov     dx, ax
mov     eax, esp
call    sub_42AAA8
jmp     short loc_4A1EC7

loc_4A1E7F:
mov     eax, [ebp+6Ch]
add     eax, 7
call    sub_4A1329
xor     ecx, ecx
mov     cx, ax
add     ecx, ds:dword_77E964
mov     eax, [ebp+6Ch]
add     eax, 5
call    sub_4A1329
xor     ebx, ebx
mov     bx, ax
lea     eax, [esp+34h+var_24]
call    sub_4DDDB4
add     ebx, eax
mov     eax, [ebp+6Ch]
add     eax, 3
call    sub_4A1329
xor     edx, edx
mov     dx, ax
mov     eax, esp
call    sub_42AAD8

loc_4A1EC7:
or      byte ptr [ebp+2], 1
mov     eax, [ebp+6Ch]
inc     eax
call    sub_4A1329
mov     edx, [esp+34h+var_1C]
mov     [edx+1], al

loc_4A1EDB:
or      byte ptr [ebp+3], 10h
call    sub_42ABA2
test    eax, eax
jnz     short loc_4A1EF7
and     byte ptr [ebp+3], 0EEh
mov     eax, 1
add     dword ptr [ebp+6Ch], 0Bh
jmp     short loc_4A1EF9

loc_4A1EF7:
xor     eax, eax

loc_4A1EF9:
add     esp, 1Ch
jmp     loc_4A34BE

loc_4A1F01:
push    ebx
push    edx
mov     edx, eax
mov     eax, [eax+6Ch]
mov     bl, ds:byte_77E7D4
cmp     bl, [eax+1]
jnz     short loc_4A1F23
mov     bl, byte ptr ds:dword_77E7D5
cmp     bl, [eax+2]
jnz     short loc_4A1F23
mov     bl, [eax+3]
jmp     short loc_4A1F29

loc_4A1F23:
mov     ebx, [edx+6Ch]
mov     bl, [ebx+4]

loc_4A1F29:
cmp     bl, 0FFh
jnz     short loc_4A1F34
add     dword ptr [edx+6Ch], 5
jmp     short loc_4A1F5B

loc_4A1F34:
xor     ah, ah
mov     al, bl
mov     [edx+0C2h], ax
xor     eax, eax
mov     al, bl
lea     ebx, [eax+eax]
mov     eax, [edx+44h]
mov     bx, [ebx+eax]
and     ebx, 0FFFFh
add     eax, ebx
mov     [edx+6Ch], eax
mov     [edx+48h], eax

loc_4A1F5B:
mov     eax, 1
pop     edx
pop     ebx
retn

loc_4A1F63:
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+6Ch]
inc     eax
call    sub_4A1329
test    ax, ax
jz      short loc_4A1F88
mov     eax, [ecx+6Ch]
add     eax, 3
call    sub_4A1329
cwde
call    sub_4A0595
jmp     short loc_4A1FAA

loc_4A1F88:
mov     eax, [ecx+6Ch]
add     eax, 5
call    sub_4A133A
mov     edx, eax
mov     eax, [ecx+6Ch]
add     eax, 3
call    sub_4A1329
and     eax, 0FFFFh
call    sub_4A05F5

loc_4A1FAA:
add     dword ptr [ecx+6Ch], 9

loc_4A1FAE:
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4A1FB6:
push    edx
test    byte ptr [eax+3], 4
jz      short loc_4A1FD3
or      byte ptr [eax+2], 10h
xor     edx, edx
mov     dl, [eax+7Ch]
call    ds:funcs_4A13AB[edx*4]
xor     edx, edx
mov     eax, edx
pop     edx
retn

loc_4A1FD3:
mov     edx, 1
add     [eax+6Ch], edx
mov     eax, edx
pop     edx
retn

loc_4A1FDF:
push    edx
mov     edx, eax
test    byte ptr [eax+2], 1
jz      short loc_4A1FF1
call    sub_42A98E
and     byte ptr [edx+2], 0FEh

loc_4A1FF1:
inc     dword ptr [edx+6Ch]
jmp     loc_4A2DD8

loc_4A1FF9:
push    ecx
push    edx
mov     edx, [eax+6Ch]
xor     ecx, ecx
mov     cl, [edx+1]
mov     ecx, ds:off_5302EF[ecx*4]
mov     dl, [edx+2]
mov     [ecx], dl
add     dword ptr [eax+6Ch], 3
jmp     short loc_4A1FAE

loc_4A2015:
or      dword ptr [eax], 404000h
inc     byte ptr [eax+72h]
mov     word ptr [eax+0BCh], 0
add     dword ptr [eax+6Ch], 7
jmp     loc_4A2310

loc_4A2030:
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     eax, [eax+14h]
mov     byte ptr [eax+7], 0E9h
mov     byte ptr [ecx+78h], 0
mov     al, [ecx+71h]
cmp     al, [ecx+73h]
jnz     loc_4A22D0
test    byte ptr [ecx+2], 0C0h
jnz     loc_4A22D0
movsx   si, byte ptr [ecx+71h]
mov     dh, [ecx+0BAh]
test    dh, 10h
jz      short loc_4A2089
mov     eax, [ecx+14h]
mov     al, [eax+2]
and     al, 0F0h
and     eax, 0FFh
sar     eax, 4

loc_4A2078:
mov     [ecx+71h], al
mov     word ptr [ecx+0BCh], 0
jmp     loc_4A2235

loc_4A2089:
test    byte ptr [ecx+0B8h], 10h
jz      short loc_4A20D4
test    dh, 10h
jnz     short loc_4A20D4
mov     di, [ecx+0BCh]
cmp     di, 0Ch
jbe     short loc_4A20C5
mov     eax, [ecx+14h]
mov     al, [eax+2]
and     al, 0F0h
and     eax, 0FFh
sar     eax, 4

loc_4A20B4:
mov     [ecx+71h], al
mov     word ptr [ecx+0BCh], 0Ch
jmp     loc_4A2235

loc_4A20C5:
mov     eax, edi
inc     eax
mov     [ecx+0BCh], ax
jmp     loc_4A2235

loc_4A20D4:
mov     al, [ecx+0BAh]
test    al, 40h
jz      short loc_4A20E8
mov     eax, [ecx+14h]
mov     al, [eax+2]
and     al, 0Fh
jmp     short loc_4A2078

loc_4A20E8:
test    byte ptr [ecx+0B8h], 40h
jz      short loc_4A211B
test    al, 40h
jnz     short loc_4A211B
mov     dx, [ecx+0BCh]
cmp     dx, 0Ch
jbe     short loc_4A210C
mov     eax, [ecx+14h]
mov     al, [eax+2]
and     al, 0Fh
jmp     short loc_4A20B4

loc_4A210C:
mov     ebx, edx
inc     ebx
mov     [ecx+0BCh], bx
jmp     loc_4A2235

loc_4A211B:
mov     dh, [ecx+0BAh]
test    dh, 80h
jz      short loc_4A2188
mov     word ptr [ecx+0BCh], 0
mov     eax, [ecx+6Fh]
sar     eax, 18h
mov     edx, [ecx+6Eh]
sar     edx, 18h
sub     eax, 2
cmp     edx, eax
jge     loc_4A2235
mov     eax, [ecx+14h]
mov     al, [eax+3]
and     eax, 0FFh
mov     eax, ds:off_5302EF[eax*4]
cmp     byte ptr [eax], 1
jnz     short loc_4A216E
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4

loc_4A216E:
mov     eax, [ecx+14h]
mov     al, [eax+3]
and     eax, 0FFh
mov     eax, ds:off_5302EF[eax*4]
mov     byte ptr [eax], 0
jmp     loc_4A2235

loc_4A2188:
test    dh, 20h
jz      short loc_4A21EC
mov     word ptr [ecx+0BCh], 0
mov     eax, [ecx+6Fh]
sar     eax, 18h
mov     edx, [ecx+6Eh]
sar     edx, 18h
sub     eax, 2
cmp     edx, eax
jge     loc_4A2235
mov     eax, [ecx+14h]
mov     al, [eax+3]
and     eax, 0FFh
mov     eax, ds:off_5302EF[eax*4]
cmp     byte ptr [eax], 0
jnz     short loc_4A21D5
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4

loc_4A21D5:
mov     eax, [ecx+14h]
mov     al, [eax+3]
and     eax, 0FFh
mov     eax, ds:off_5302EF[eax*4]
mov     byte ptr [eax], 1
jmp     short loc_4A2235

loc_4A21EC:
test    byte ptr [ecx+0BBh], 40h
jz      short loc_4A2235
mov     eax, [ecx+14h]
mov     al, [eax+3]
and     eax, 0FFh
mov     eax, ds:off_5302EF[eax*4]
xor     byte ptr [eax], 1
mov     eax, [ecx+6Fh]
sar     eax, 18h
mov     edx, [ecx+6Eh]
sar     edx, 18h
sub     eax, 2
cmp     edx, eax
jge     short loc_4A2235
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
and     byte ptr [ecx+0BBh], 0BFh

loc_4A2235:
mov     edx, [ecx+44h]
test    edx, edx
jz      short loc_4A2266
mov     eax, [ecx+14h]
xor     edx, edx
mov     dl, [eax+3]
mov     edx, ds:off_5302EF[edx*4]
mov     dl, [edx]
and     edx, 0FFh
xor     ebx, ebx
mov     bl, [edx+eax+5]
mov     edx, [ecx+44h]
mov     al, [eax+4]
and     eax, 0FFh
jmp     short loc_4A2299

loc_4A2266:
mov     eax, [ecx+14h]
mov     dl, [eax+3]
mov     edx, ds:off_5302EF[edx*4]
mov     dl, [edx]
and     edx, 0FFh
mov     dl, [edx+eax+5]
and     edx, 0FFh
mov     edx, ds:off_52FCBD[edx*4]
mov     al, [eax+4]
and     eax, 0FFh
mov     ebx, 0FFh

loc_4A2299:
call    sub_4A0CDD
mov     eax, [ecx+14h]
mov     byte ptr [eax+7], 5Ch ; '\'
mov     eax, [ecx+14h]
add     eax, 7
mov     [ecx+74h], eax
or      byte ptr [ecx+2], 80h
mov     eax, [ecx+6Eh]
sar     eax, 18h
movsx   edx, si
cmp     edx, eax
jz      short loc_4A22D0
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
call    sub_4D89E4

loc_4A22D0:
add     byte ptr [ecx+78h], 80h
inc     byte ptr [ecx+73h]
add     dword ptr [ecx+14h], 7
jmp     loc_4A518C

loc_4A22E0:
push    ecx
push    edx
mov     edx, [eax+14h]
xor     ecx, ecx
mov     cl, [edx+1]
mov     ecx, ds:off_5302EF[ecx*4]
mov     cl, [ecx]
cmp     cl, [edx+2]
jnz     short loc_4A22FE
mov     byte ptr [eax+78h], 80h
jmp     short loc_4A2302

loc_4A22FE:
mov     byte ptr [eax+78h], 40h ; '@'

loc_4A2302:
add     dword ptr [eax+14h], 3
pop     edx
pop     ecx
retn

loc_4A2309:
inc     byte ptr [eax+3Bh]

loc_4A230C:
add     dword ptr [eax+6Ch], 2

loc_4A2310:
mov     eax, 1
retn

loc_4A2316:
push    edx
mov     dx, [eax+8]
mov     [eax+10h], dx
mov     edx, [eax+14h]
mov     dl, [edx+1]
xor     dh, dh
add     [eax+12h], dx
mov     dl, [eax+70h]
jmp     loc_4A146F

loc_4A2333:
push    edx
mov     edx, [eax+14h]
mov     dl, [edx+1]
mov     [eax+78h], dl
jmp     loc_4A1472

loc_4A2342:
push    edx
mov     edx, eax
mov     eax, 1
call    sub_436A23
test    eax, eax
jz      short loc_4A235B
mov     eax, 1
add     [edx+6Ch], eax

loc_4A235B:
pop     edx
retn

loc_4A235D:
push    edx
mov     edx, eax
mov     eax, 1
call    sub_436A78
test    eax, eax
jz      short loc_4A2376
mov     eax, 1
add     [edx+6Ch], eax

loc_4A2376:
pop     edx
retn

loc_4A2378:
push    edx
mov     edx, eax
mov     eax, 1
call    sub_4369EB
test    eax, eax
jz      short loc_4A2391
mov     eax, 1
add     [edx+6Ch], eax

loc_4A2391:
pop     edx
retn

loc_4A2393:
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     eax, eax
call    sub_4369EB
mov     ecx, eax
xor     eax, eax
call    sub_436A78
test    cl, cl
jnz     short loc_4A23C0
test    al, al
jnz     short loc_4A23B8
mov     ebx, [edx+6Ch]
mov     bl, [ebx+1]
jmp     short loc_4A23D2

loc_4A23B8:
mov     ebx, [edx+6Ch]
mov     bl, [ebx+2]
jmp     short loc_4A23D2

loc_4A23C0:
test    al, al
jnz     short loc_4A23CC
mov     ebx, [edx+6Ch]
mov     bl, [ebx+3]
jmp     short loc_4A23D2

loc_4A23CC:
mov     ebx, [edx+6Ch]
mov     bl, [ebx+4]

loc_4A23D2:
mov     word ptr [edx+4], 5
cmp     bl, 0FFh
jnz     short loc_4A23E6
add     dword ptr [edx+6Ch], 5
jmp     loc_4A3054

loc_4A23E6:
xor     ah, ah
mov     al, bl
mov     [edx+0C2h], ax
mov     ecx, [edx+44h]
test    ecx, ecx
jz      short loc_4A2420
xor     eax, eax
mov     al, bl
mov     ax, [ecx+eax*2]
and     eax, 0FFFFh
add     ecx, eax
mov     [edx+48h], ecx
mov     [edx+6Ch], ecx

loc_4A240D:
mov     byte ptr [edx+3Eh], 0
mov     al, [edx+3Eh]
mov     [edx+3Ch], al
mov     byte ptr [edx+72h], 0
jmp     loc_4A3054

loc_4A2420:
xor     eax, eax
mov     al, bl
mov     eax, ds:off_52FCBD[eax*4]

loc_4A242B:
mov     [edx+48h], eax
mov     [edx+6Ch], eax
jmp     short loc_4A240D

loc_4A2433:
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     ds:byte_55BD8B, 0
jnz     short loc_4A2458
mov     eax, [ecx+6Eh]
sar     eax, 18h
xor     edx, edx
mov     dl, ds:byte_55BD8D
mov     al, ds:byte_55B900[edx+eax]
jmp     short loc_4A246F

loc_4A2458:
mov     eax, [ecx+6Eh]
sar     eax, 18h
xor     edx, edx
mov     dl, ds:byte_55BD8D
mov     al, ds:byte_55B900[edx+eax]
add     al, 20h ; ' '

loc_4A246F:
mov     ds:byte_55BD8A, al
test    byte ptr [ecx+1], 20h
jz      loc_4A25E8
cmp     dword ptr [ecx+44h], 0
jz      short loc_4A24B3
mov     ebx, [ecx+6Eh]
sar     ebx, 18h
xor     eax, eax
mov     al, ds:byte_55BD8D
add     ebx, eax
mov     eax, [ecx+14h]
mov     dl, [eax+2]
add     dl, ds:byte_55B900[ebx]
xor     ebx, ebx
mov     bl, dl
mov     edx, [ecx+44h]
mov     al, [eax+1]
and     eax, 0FFh
jmp     loc_4A25E3

loc_4A24B3:
mov     edx, [ecx+6Eh]
sar     edx, 18h
xor     eax, eax
mov     al, ds:byte_55BD8D
add     eax, edx
xor     edx, edx
mov     dl, ds:byte_55B900[eax]
mov     eax, [ecx+14h]
xor     ebx, ebx
mov     bl, [eax+2]

loc_4A24D2:
add     edx, ebx
mov     edx, ds:off_52FCBD[edx*4]
jmp     loc_4A25D6

loc_4A24E0:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+44h]
test    edx, edx
jz      short loc_4A2509
mov     eax, [eax+14h]
mov     dl, [eax+2]
add     dl, [ecx+71h]
xor     ebx, ebx
mov     bl, dl
mov     edx, [ecx+44h]
mov     al, [eax+1]
and     eax, 0FFh
jmp     loc_4A25E3

loc_4A2509:
mov     eax, [eax+14h]
mov     dl, [eax+2]
mov     ebx, [ecx+6Eh]
sar     ebx, 18h
jmp     short loc_4A24D2

loc_4A2517:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+44h]
test    edx, edx
jz      short loc_4A2552
mov     ebx, [eax+6Eh]
sar     ebx, 18h
xor     eax, eax
mov     al, ds:byte_55BD8D
add     ebx, eax
mov     eax, [ecx+14h]
mov     dl, [eax+2]
add     dl, ds:byte_55B900[ebx]
xor     ebx, ebx
mov     bl, dl
mov     edx, [ecx+44h]
mov     al, [eax+1]
and     eax, 0FFh
jmp     loc_4A25E3

loc_4A2552:
mov     eax, [eax+6Eh]
sar     eax, 18h
mov     dl, ds:byte_55BD8D
mov     ebx, ds:(dword_55B8FC+1)[edx+eax]
sar     ebx, 18h
mov     eax, [ecx+14h]
xor     edx, edx
mov     dl, [eax+2]
jmp     loc_4A24D2

loc_4A2575:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+44h]
test    edx, edx
jz      short loc_4A25B0
mov     eax, [eax+6Eh]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_55BD8D
add     ebx, eax
mov     eax, [ecx+14h]
mov     dl, [eax+2]
add     dl, byte ptr ds:(dword_5F88B5+3)[ebx]
dec     dl
xor     ebx, ebx
mov     bl, dl
mov     edx, [ecx+44h]
mov     al, [eax+1]
and     eax, 0FFh
jmp     short loc_4A25E3

loc_4A25B0:
mov     eax, [eax+6Eh]
sar     eax, 18h
mov     dl, ds:byte_55BD8D
xor     ebx, ebx
mov     bl, byte ptr ds:(dword_5F88B5+3)[edx+eax]
mov     eax, [ecx+14h]
xor     edx, edx
mov     dl, [eax+2]

loc_4A25CD:
add     edx, ebx
mov     edx, ds:dword_52FCB9[edx*4]

loc_4A25D6:
mov     al, [eax+1]
and     eax, 0FFh
mov     ebx, 0FFh

loc_4A25E3:
call    sub_4A0CDD

loc_4A25E8:
add     dword ptr [ecx+14h], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4A25F0:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+44h]
test    edx, edx
jz      short loc_4A2621
mov     ebx, [eax+6Eh]
sar     ebx, 18h
mov     eax, [eax+14h]
mov     dl, [eax+2]
add     dl, byte ptr ds:(dword_5F88B1+3)[ebx]
dec     dl
xor     ebx, ebx
mov     bl, dl
mov     edx, [ecx+44h]
mov     al, [eax+1]
and     eax, 0FFh
jmp     short loc_4A25E3

loc_4A2621:
mov     eax, [eax+6Eh]
sar     eax, 18h
mov     dl, byte ptr ds:(dword_5F88B1+3)[eax]
mov     eax, [ecx+14h]
xor     ebx, ebx
mov     bl, [eax+2]
jmp     short loc_4A25CD

loc_4A2637:
push    ebx
push    ecx
push    edx
mov     edx, [eax+6Ch]
mov     bl, ds:byte_55BD8C
mov     [edx+5], bl
cmp     ds:byte_55BD8B, 0
jnz     short loc_4A2666
mov     edx, [eax+6Fh]
sar     edx, 18h
xor     ecx, ecx
mov     cl, ds:byte_55BD8D
mov     dl, ds:byte_55B900[ecx+edx]
jmp     short loc_4A267E

loc_4A2666:
mov     edx, [eax+6Fh]
sar     edx, 18h
xor     ecx, ecx
mov     cl, ds:byte_55BD8D
mov     dl, ds:byte_55B900[ecx+edx]
add     dl, 20h ; ' '

loc_4A267E:
mov     ds:byte_55BD8A, dl
or      dword ptr [eax], 402000h
inc     byte ptr [eax+72h]
mov     word ptr [eax+0BCh], 0
add     dword ptr [eax+6Ch], 3
jmp     loc_4A3054

loc_4A269F:
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     eax, [eax+14h]
mov     byte ptr [eax+3], 0E9h
mov     byte ptr [ecx+78h], 0
xor     edi, edi
mov     al, [ecx+71h]
cmp     al, [ecx+73h]
jnz     loc_4A2A12
test    byte ptr [ecx+2], 0C0h
jnz     loc_4A2A12
movsx   si, byte ptr [ecx+71h]
mov     dh, [ecx+0BBh]
test    dh, 40h
jnz     loc_4A295E
test    dh, 10h
jz      short loc_4A270C
mov     edi, 1
mov     word ptr [ecx+0B8h], 0
mov     word ptr [ecx+0BAh], 0
xor     ebx, ebx
mov     edx, edi
mov     eax, 83h
call    sub_4D89E4
jmp     loc_4A295E

loc_4A270C:
mov     bh, [ecx+0BAh]
test    bh, 10h
jz      short loc_4A277A
mov     eax, [ecx+14h]
mov     al, [eax+2]
and     al, 0F0h
and     eax, 0FFh
sar     eax, 4
mov     [ecx+71h], al
mov     word ptr [ecx+0BCh], 0
cmp     ds:dword_55B998, 5
jbe     loc_4A295E
mov     eax, [ecx+6Eh]
sar     eax, 18h
movsx   edx, si
cmp     edx, eax

loc_4A274B:
jnz     loc_4A295E
cmp     ds:byte_55BD8D, 0
jbe     loc_4A295E
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
call    sub_4D89E4
dec     ds:byte_55BD8D
jmp     loc_4A295E

loc_4A277A:
test    byte ptr [ecx+0B8h], 10h
jz      short loc_4A27D2
test    bh, 10h
jnz     short loc_4A27D2
mov     dx, [ecx+0BCh]
cmp     dx, 0Ch
jbe     loc_4A2954
mov     eax, [ecx+14h]
mov     al, [eax+2]
and     al, 0F0h
and     eax, 0FFh
sar     eax, 4
mov     [ecx+71h], al
mov     word ptr [ecx+0BCh], 0Ch
cmp     ds:dword_55B998, 5
jbe     loc_4A295E
mov     edx, [ecx+6Eh]
sar     edx, 18h
movsx   eax, si
cmp     eax, edx
jmp     loc_4A274B

loc_4A27D2:
mov     dl, [ecx+0BAh]
test    dl, 40h
jz      short loc_4A2840
mov     eax, [ecx+14h]
mov     al, [eax+2]
and     al, 0Fh
mov     [ecx+71h], al
mov     word ptr [ecx+0BCh], 0
mov     ebx, ds:dword_55B998
cmp     ebx, 5
jbe     loc_4A295E
mov     eax, [ecx+6Eh]
sar     eax, 18h
movsx   edx, si
cmp     edx, eax
jnz     loc_4A295E
lea     eax, [ebx-5]

loc_4A2814:
xor     edx, edx
mov     dl, ds:byte_55BD8D
cmp     edx, eax
jnb     loc_4A295E
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
call    sub_4D89E4
inc     ds:byte_55BD8D
jmp     loc_4A295E

loc_4A2840:
test    byte ptr [ecx+0B8h], 40h
jz      short loc_4A28A9
test    dl, 40h
jnz     short loc_4A28A9
mov     bx, [ecx+0BCh]
cmp     bx, 0Ch
jbe     short loc_4A289A
mov     eax, [ecx+14h]
mov     al, [eax+2]
and     al, 0Fh
mov     [ecx+71h], al
mov     word ptr [ecx+0BCh], 0Ch
cmp     ds:dword_55B998, 5
jbe     loc_4A295E
mov     eax, [ecx+6Eh]
sar     eax, 18h
movsx   edx, si
cmp     edx, eax
jnz     loc_4A295E
mov     eax, ds:dword_55B998
sub     eax, 5
jmp     loc_4A2814

loc_4A289A:
mov     eax, ebx
inc     eax
mov     [ecx+0BCh], ax
jmp     loc_4A295E

loc_4A28A9:
mov     bh, [ecx+0BAh]
test    bh, 80h
jz      short loc_4A28D5
mov     eax, [ecx+14h]
mov     al, [eax+1]
and     al, 0F0h
and     eax, 0FFh
sar     eax, 4

loc_4A28C4:
mov     [ecx+71h], al
mov     word ptr [ecx+0BCh], 0
jmp     loc_4A295E

loc_4A28D5:
test    byte ptr [ecx+0B8h], 80h
jz      short loc_4A291A
test    bh, 80h
jnz     short loc_4A291A
mov     ax, [ecx+0BCh]
cmp     ax, 0Ch
jbe     short loc_4A290E
mov     eax, [ecx+14h]
mov     al, [eax+1]
and     al, 0F0h
and     eax, 0FFh
sar     eax, 4

loc_4A2900:
mov     [ecx+71h], al
mov     word ptr [ecx+0BCh], 0Ch
jmp     short loc_4A295E

loc_4A290E:
mov     edx, eax
inc     edx
mov     [ecx+0BCh], dx
jmp     short loc_4A295E

loc_4A291A:
mov     dl, [ecx+0BAh]
test    dl, 20h
jz      short loc_4A292F
mov     eax, [ecx+14h]
mov     al, [eax+1]
and     al, 0Fh
jmp     short loc_4A28C4

loc_4A292F:
test    byte ptr [ecx+0B8h], 20h
jz      short loc_4A295E
test    dl, 20h
jnz     short loc_4A295E
mov     dx, [ecx+0BCh]
cmp     dx, 0Ch
jbe     short loc_4A2954
mov     eax, [ecx+14h]
mov     al, [eax+1]
and     al, 0Fh
jmp     short loc_4A2900

loc_4A2954:
mov     ebx, edx
inc     ebx
mov     [ecx+0BCh], bx

loc_4A295E:
mov     eax, [ecx+14h]
add     eax, 3
mov     [ecx+74h], eax
or      byte ptr [ecx+2], 80h
mov     eax, [ecx+6Eh]
sar     eax, 18h
movsx   edx, si
cmp     edx, eax
jz      short loc_4A2989
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
call    sub_4D89E4

loc_4A2989:
cmp     ds:dword_55B998, 5
jbe     loc_4A2A12
xor     eax, eax
call    sub_4A0595
mov     eax, 1
call    sub_4A0595
test    edi, edi
jnz     short loc_4A2A12
cmp     ds:byte_55BD8D, 0
jz      short loc_4A29E0
mov     edx, ds:dword_55B998
sub     edx, 5
xor     eax, eax
mov     al, ds:byte_55BD8D
cmp     edx, eax
jz      short loc_4A29E0
mov     edx, 20003h
xor     eax, eax
call    sub_4A05F5
mov     edx, 20004h
mov     eax, 1
jmp     short loc_4A2A0D

loc_4A29E0:
cmp     ds:byte_55BD8D, 0
jz      short loc_4A29F2
mov     edx, 20003h
xor     eax, eax
jmp     short loc_4A2A0D

loc_4A29F2:
mov     eax, ds:dword_55B998
sub     eax, 5
xor     edx, edx
mov     dl, ds:byte_55BD8D
cmp     eax, edx
jz      short loc_4A2A12
mov     edx, 20004h
xor     eax, eax

loc_4A2A0D:
call    sub_4A05F5

loc_4A2A12:
mov     al, [ecx+71h]
cmp     al, [ecx+73h]
jnz     short loc_4A2A25
add     byte ptr [ecx+78h], 30h ; '0'
mov     eax, [ecx+14h]
mov     byte ptr [eax+3], 5Ch ; '\'

loc_4A2A25:
cmp     ds:byte_55BD8B, 0
jnz     short loc_4A2A45
mov     eax, [ecx+70h]
sar     eax, 18h
xor     edx, edx
mov     dl, ds:byte_55BD8D
mov     al, ds:byte_55B900[edx+eax]
jmp     short loc_4A2A5B

loc_4A2A45:
mov     edx, [ecx+70h]
sar     edx, 18h
xor     eax, eax
mov     al, ds:byte_55BD8D
mov     al, ds:byte_55B900[edx+eax]
add     al, 20h ; ' '

loc_4A2A5B:
mov     ds:byte_55BD8A, al
mov     eax, [ecx+14h]
mov     dl, ds:byte_55BD8C
mov     [eax+5], dl
add     byte ptr [ecx+78h], 50h ; 'P'
inc     byte ptr [ecx+73h]
add     dword ptr [ecx+14h], 3
test    edi, edi
jz      loc_4A518C
mov     esi, [ecx+44h]
test    esi, esi
jz      short loc_4A2A99
xor     ebx, ebx
mov     bl, ds:byte_55BD87
mov     edx, esi
xor     eax, eax
mov     al, ds:byte_55BD86
jmp     short loc_4A2AB3

loc_4A2A99:
xor     eax, eax
mov     al, ds:byte_55BD87
mov     edx, ds:off_52FCBD[eax*4]
xor     eax, eax
mov     al, ds:byte_55BD86
mov     ebx, 0FFh

loc_4A2AB3:
call    sub_4A0CDD
jmp     loc_4A518C

loc_4A2ABD:
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebx, eax
xor     edx, edx
mov     ds:dword_55B998, edx
mov     al, ds:byte_55BD89
mov     ds:byte_55BD8D, al
xor     eax, eax
mov     al, ds:byte_55BD8B
mov     ax, ds:word_52E3E4[eax*2]
and     eax, 0FFFFh
mov     edx, eax
sar     edx, 3
mov     ecx, offset unk_560D04
add     ecx, edx
mov     [esp+20h+var_1C], ecx
sub     eax, 80h
sar     eax, 3
mov     edx, offset unk_560D04
add     edx, eax
mov     [esp+20h+var_20], edx
cmp     word ptr ds:dword_5F8412+2, 0A0h
jl      short loc_4A2B23
mov     ax, ds:word_52DE44
jmp     short loc_4A2B4F

loc_4A2B23:
mov     edx, ds:dword_5F8412
sar     edx, 10h
mov     eax, 0A0h
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     edx, 5
sub     edx, eax
mov     ax, ds:word_52DE3C[edx*2]

loc_4A2B4F:
mov     ds:word_52DD82, ax
cmp     ds:byte_77E801, 12h
jb      short loc_4A2B66
mov     ax, ds:word_52DE62
jmp     short loc_4A2B75

loc_4A2B66:
xor     eax, eax
mov     al, ds:byte_77E801
mov     ax, ds:word_52DE40[eax*2]

loc_4A2B75:
mov     ds:word_52DD86, ax
xor     edx, edx

loc_4A2B7D:
xor     eax, eax
mov     al, ds:byte_55BD8B
mov     al, ds:byte_52E3E8[eax]
and     eax, 0FFh
cmp     edx, eax
jge     loc_4A2C9B
mov     eax, 2EEh
call    sub_47E888
mov     edi, eax
mov     ecx, edx
and     ecx, 7
mov     eax, edx
sar     eax, 3
mov     esi, [esp+20h+var_20]
add     esi, eax
add     eax, [esp+20h+var_1C]
mov     ebp, 80h
sar     ebp, cl
mov     ecx, ebp
test    edi, edi
jnz     loc_4A2C40
mov     al, [eax]
mov     edi, eax
and     edi, 0FFh
not     edi
xor     eax, eax
mov     al, [esi]
or      eax, edi
test    eax, ebp
jnz     short loc_4A2BF6
mov     eax, ds:dword_55B998
mov     ds:byte_55B900[eax], dl
lea     ecx, [eax+1]
mov     ds:dword_55B998, ecx
jmp     loc_4A2C95

loc_4A2BF6:
cmp     ds:byte_55BD8B, 1
jnz     loc_4A2C95
cmp     edx, 3
jnz     short loc_4A2C28
cmp     word ptr ds:dword_5F8412+2, 0A0h
jz      loc_4A2C95

loc_4A2C17:
mov     eax, ds:dword_55B998
mov     ds:byte_55B900[eax], dl
inc     eax
jmp     loc_4A2C90

loc_4A2C28:
cmp     edx, 5
jnz     loc_4A2C95
mov     al, ds:byte_77E801
test    al, al
jbe     short loc_4A2C95
cmp     al, 63h ; 'c'
jnb     short loc_4A2C95
jmp     short loc_4A2C17

loc_4A2C40:
movzx   esi, byte ptr [esi]
mov     al, [eax]
and     eax, 0FFh
and     eax, esi
test    eax, ebp
jz      short loc_4A2C95
cmp     ds:byte_55BD8B, 1
jnz     short loc_4A2C84
mov     eax, ds:dword_55B998
mov     ds:byte_55B900[eax], dl
lea     ecx, [eax+1]
mov     ds:dword_55B998, ecx
cmp     edx, 20h ; ' '
jl      short loc_4A2C90
lea     ecx, [edx-24h]
cmp     ecx, 14h
jb      short loc_4A2C90
lea     ecx, [edx-4Ch]
cmp     ecx, 5
jnb     short loc_4A2C95
jmp     short loc_4A2C90

loc_4A2C84:
mov     eax, ds:dword_55B998
mov     ds:byte_55B900[eax], dl
inc     eax

loc_4A2C90:
mov     ds:dword_55B998, eax

loc_4A2C95:
inc     edx
jmp     loc_4A2B7D

loc_4A2C9B:
mov     ecx, ds:dword_55B998
test    ecx, ecx
jz      short loc_4A2D0D
cmp     ecx, 5
jnb     short loc_4A2D07
mov     eax, [ebx+6Ch]
mov     edx, 5
sub     edx, ecx
mov     dl, [edx+eax+2]
cmp     dl, 0FFh
jnz     short loc_4A2CC8

loc_4A2CBD:
add     eax, 7
mov     [ebx+6Ch], eax
jmp     loc_4A2D63

loc_4A2CC8:
xor     ah, ah
mov     al, dl
mov     [ebx+0C2h], ax
mov     esi, [ebx+44h]
test    esi, esi
jz      short loc_4A2CF4
xor     eax, eax
mov     al, dl
mov     edx, esi
mov     ax, [edx+eax*2]
and     eax, 0FFFFh
lea     edx, [esi+eax]
mov     [ebx+48h], edx
mov     [ebx+6Ch], edx
jmp     short loc_4A2D55

loc_4A2CF4:
xor     eax, eax
mov     al, dl
mov     eax, ds:off_52FCBD[eax*4]
mov     [ebx+48h], eax
mov     [ebx+6Ch], eax
jmp     short loc_4A2D55

loc_4A2D07:
add     dword ptr [ebx+6Ch], 7
jmp     short loc_4A2D63

loc_4A2D0D:
mov     eax, [ebx+6Ch]
mov     dl, [eax+2]
cmp     dl, 0FFh
jz      short loc_4A2CBD
xor     ah, ah
mov     al, dl
mov     [ebx+0C2h], ax
mov     esi, [ebx+44h]
test    esi, esi
jz      short loc_4A2D44
xor     eax, eax
mov     al, dl
mov     edx, esi
mov     ax, [edx+eax*2]
and     eax, 0FFFFh
lea     edx, [esi+eax]
mov     [ebx+48h], edx
mov     [ebx+6Ch], edx
jmp     short loc_4A2D55

loc_4A2D44:
xor     eax, eax
mov     al, dl
mov     eax, ds:off_52FCBD[eax*4]
mov     [ebx+48h], eax
mov     [ebx+6Ch], eax

loc_4A2D55:
mov     byte ptr [ebx+3Eh], 0
mov     al, [ebx+3Eh]
mov     [ebx+3Ch], al
mov     byte ptr [ebx+72h], 0

loc_4A2D63:
mov     eax, 1
add     esp, 8
jmp     loc_4A34BE

loc_4A2D70:
push    ebx
push    ecx
push    edx
push    esi
mov     edx, [eax+6Ch]
mov     cl, [edx+2]
mov     bl, [edx+3]
mov     bh, [edx+1]
add     edx, 4
mov     [eax+6Ch], edx
mov     edx, ds:dword_55BD7C
and     edx, 0FFh
movzx   esi, bh
cmp     edx, esi
jnz     short loc_4A2DC1
mov     edx, [eax+44h]
test    edx, edx
jz      short loc_4A2DAB
and     ebx, 0FFh
movsx   eax, cl
jmp     short loc_4A2DBC

loc_4A2DAB:
mov     dl, bl
mov     edx, ds:off_52FCBD[edx*4]
movsx   eax, cl
mov     ebx, 0FFh

loc_4A2DBC:
call    sub_4A0CDD

loc_4A2DC1:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A2DCB:
push    edx
mov     edx, ds:dword_77E7A0
mov     [eax+40h], edx

loc_4A2DD5:
inc     dword ptr [eax+6Ch]

loc_4A2DD8:
mov     eax, 1
pop     edx
retn

loc_4A2DDF:
push    ebx
push    edx
mov     edx, ds:dword_77E7A0
mov     [eax+40h], edx
mov     edx, [eax+14h]
inc     edx
mov     [eax+14h], edx
mov     ebx, edx
mov     edx, [eax+40h]
xor     eax, eax

loc_4A2DF8:
call    sub_4A604B
pop     edx
pop     ebx
retn

loc_4A2E00:
push    ebx
push    ecx
push    edx
sub     esp, 4
mov     edx, [eax+6Ch]
mov     cl, [edx+1]
mov     bh, [edx+2]
mov     bl, [edx+3]
mov     [esp+14h+var_14], bl
mov     bl, [edx+4]
and     ecx, 0FFh
add     edx, 5
mov     [eax+6Ch], edx
mov     edx, ds:off_5302EF[ecx*4]
cmp     bh, [edx]
jnz     short loc_4A2E5F
mov     edx, [eax+44h]
test    edx, edx
jz      short loc_4A2E45
and     ebx, 0FFh
mov     eax, [esp-3]
sar     eax, 18h
jmp     short loc_4A2E5A

loc_4A2E45:
mov     dl, bl
mov     edx, ds:off_52FCBD[edx*4]
mov     eax, [esp-3]
sar     eax, 18h
mov     ebx, 0FFh

loc_4A2E5A:
call    sub_4A0CDD

loc_4A2E5F:
mov     eax, 1
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn

loc_4A2E6B:
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+6Eh]
sar     eax, 18h
xor     ecx, ecx
mov     cl, ds:byte_55BD8D
add     eax, ecx
mov     ecx, [edx+6Ch]
mov     al, ds:byte_55B900[eax]
mov     ah, [ecx+1]
add     al, ah
mov     ds:byte_55BD8E, al
mov     eax, 2EEh
call    sub_47E888
test    eax, eax
jnz     short loc_4A2ED1
mov     al, ds:byte_55BD8E
mov     ax, ds:word_52DD3C[eax*2]
and     eax, 0FFFFh
neg     eax
call    sub_4B6204
test    eax, eax
jz      short loc_4A2EC7
mov     ds:byte_55BD8F, 1
jmp     short loc_4A2ED9

loc_4A2EC7:
xor     bh, bh
mov     ds:byte_55BD8F, bh
jmp     short loc_4A2ED9

loc_4A2ED1:
xor     bl, bl
mov     ds:byte_55BD8F, bl

loc_4A2ED9:
add     dword ptr [edx+6Ch], 2
jmp     loc_4A3054

loc_4A2EE2:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, 2EEh
call    sub_47E888
test    eax, eax
jz      short loc_4A2F30
xor     eax, eax
mov     al, ds:byte_55BD8E
mov     ax, ds:word_52DD3C[eax*2]
and     eax, 0FFFFh
sar     eax, 2
xor     ebx, ebx
xor     edx, edx
call    sub_4B6217
xor     eax, eax
mov     al, ds:byte_55BD8E
add     eax, 500h
call    sub_47EA91
call    sub_4E417F
jmp     loc_4A33F1

loc_4A2F30:
mov     al, ds:byte_55BD8E
mov     ax, ds:word_52DD3C[eax*2]
and     eax, 0FFFFh
neg     eax
xor     ebx, ebx
xor     edx, edx
call    sub_4B6217
mov     ah, ds:byte_55BD8E
cmp     ah, 23h ; '#'
jnz     short loc_4A2F7C
mov     dx, word ptr ds:dword_5F8412+2
add     edx, 10h
mov     word ptr ds:dword_5F8412+2, dx
mov     ds:word_5F83D2, dx
mov     eax, 1
call    sub_436A23
jmp     short loc_4A2FAA

loc_4A2F7C:
cmp     ah, 24h ; '$'
jnz     short loc_4A2F91
mov     bh, 3
mov     ds:byte_77E800, bh
mov     ds:byte_77E801, bh
jmp     short loc_4A2FAA

loc_4A2F91:
cmp     ah, 25h ; '%'
jnz     short loc_4A2FAA
mov     bl, ds:byte_77E801
inc     bl
mov     ds:byte_77E801, bl
mov     ds:byte_77E800, bl

loc_4A2FAA:
xor     eax, eax
mov     al, ds:byte_55BD8E
add     eax, 500h
call    sub_47E8B8
jmp     loc_4A33F1

loc_4A2FC0:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+6Ch]
cmp     byte ptr [eax], 0D1h
jnz     short loc_4A2FE7
xor     ebx, ebx
mov     bl, [eax+1]
call    rand_
mov     edx, eax
sar     edx, 1Fh
idiv    ebx
mov     eax, [ecx+6Ch]
mov     dl, [edx+eax+2]
jmp     short loc_4A2FEA

loc_4A2FE7:
mov     dl, [eax+2]

loc_4A2FEA:
cmp     dl, 0FFh
jnz     short loc_4A300B
mov     eax, [ecx+6Ch]
cmp     byte ptr [eax], 0D1h
jnz     short loc_4A3006
xor     edx, edx
mov     dl, [eax+1]
add     edx, 2
add     eax, edx

loc_4A3001:
mov     [ecx+6Ch], eax
jmp     short loc_4A3054

loc_4A3006:
add     eax, 3
jmp     short loc_4A3001

loc_4A300B:
xor     ah, ah
mov     al, dl
mov     [ecx+0C2h], ax
mov     ebx, [ecx+44h]
test    ebx, ebx
jz      short loc_4A3035
xor     eax, eax
mov     al, dl
lea     edx, [eax+eax]
mov     eax, ebx
mov     dx, [edx+eax]
and     edx, 0FFFFh
lea     eax, [ebx+edx]
jmp     short loc_4A3040

loc_4A3035:
xor     eax, eax
mov     al, dl
mov     eax, ds:off_52FCBD[eax*4]

loc_4A3040:
mov     [ecx+48h], eax
mov     [ecx+6Ch], eax

loc_4A3046:
mov     byte ptr [ecx+3Eh], 0
mov     al, [ecx+3Eh]
mov     [ecx+3Ch], al
mov     byte ptr [ecx+72h], 0

loc_4A3054:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4A305D:
push    ecx
push    edx
mov     edx, [eax+14h]
cmp     byte ptr [edx], 0D1h
jnz     short loc_4A3073
xor     ecx, ecx
mov     cl, [edx+1]
add     ecx, 2
add     edx, ecx
jmp     short loc_4A3076

loc_4A3073:
add     edx, 3

loc_4A3076:
mov     [eax+14h], edx
pop     edx
pop     ecx
retn

loc_4A307C:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, 2EEh
call    sub_47E888
test    eax, eax
jz      short loc_4A30F2
cmp     ds:byte_55BD8B, 0
jnz     short loc_4A30C8
mov     ebx, [ecx+14h]
inc     ebx
mov     eax, [ecx+70h]
sar     eax, 18h
xor     edx, edx
mov     dl, ds:byte_55BD8D
mov     al, byte ptr ds:(dword_55B8FC+3)[edx+eax]
and     eax, 0FFh
xor     edx, edx
mov     dx, ds:word_52DD3C[eax*2]

loc_4A30C0:
sar     edx, 2
jmp     loc_4A3151

loc_4A30C8:
mov     ebx, [ecx+14h]
inc     ebx
mov     eax, [ecx+70h]
sar     eax, 18h
xor     edx, edx
mov     dl, ds:byte_55BD8D
mov     al, byte ptr ds:(dword_55B8FC+3)[edx+eax]
and     eax, 0FFh
xor     edx, edx
mov     dx, ds:word_52DD7C[eax*2]
jmp     short loc_4A30C0

loc_4A30F2:
cmp     ds:byte_55BD8B, 0
jnz     short loc_4A3127
mov     ebx, [ecx+14h]
inc     ebx
mov     eax, [ecx+70h]
sar     eax, 18h
xor     edx, edx
mov     dl, ds:byte_55BD8D
add     eax, edx
xor     edx, edx
mov     dl, byte ptr ds:(dword_55B8FC+3)[eax]
mov     dx, ds:word_52DD3C[edx*2]
and     edx, 0FFFFh
jmp     short loc_4A3151

loc_4A3127:
mov     ebx, [ecx+14h]
inc     ebx
mov     eax, [ecx+70h]
sar     eax, 18h
xor     edx, edx
mov     dl, ds:byte_55BD8D
add     eax, edx
xor     edx, edx
mov     dl, byte ptr ds:(dword_55B8FC+3)[eax]
mov     dx, ds:word_52DD7C[edx*2]
and     edx, 0FFFFh

loc_4A3151:
xor     eax, eax
call    sub_4A604B
inc     dword ptr [ecx+14h]
pop     edx
pop     ecx
pop     ebx
retn

loc_4A315F:
push    ebx
push    ecx
push    edx
mov     ebx, [eax+6Ch]
mov     dx, [eax+0C0h]
xor     ecx, ecx
mov     cx, dx
shl     ecx, 2
inc     edx
mov     [eax+0C0h], dx
lea     edx, [eax+ecx]
inc     ebx
mov     [edx+4Ch], ebx
xor     edx, edx
mov     dl, ds:byte_55BD8A

loc_4A318B:
mov     edx, ds:off_52FD95[edx*4]

loc_4A3192:
mov     [eax+6Ch], edx
jmp     loc_4A3054

loc_4A319A:
push    ebx
push    ecx
push    edx
mov     ebx, [eax+14h]
mov     dx, [eax+0BEh]
xor     ecx, ecx
mov     cx, dx
shl     ecx, 2
inc     edx
mov     [eax+0BEh], dx
lea     edx, [eax+ecx]
inc     ebx
mov     [edx+18h], ebx
xor     edx, edx
mov     dl, ds:byte_55BD8A

loc_4A31C6:
mov     edx, ds:off_52FD95[edx*4]

loc_4A31CD:
mov     [eax+14h], edx
pop     edx
pop     ecx
pop     ebx
retn

loc_4A31D4:
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, ds:byte_77E801
cmp     al, ds:byte_77E800
jnz     short loc_4A31EE
mov     ebx, [edx+6Ch]
mov     bl, [ebx+1]
jmp     short loc_4A31F4

loc_4A31EE:
mov     ebx, [edx+6Ch]
mov     bl, [ebx+2]

loc_4A31F4:
cmp     bl, 0FFh
jnz     short loc_4A3202
add     dword ptr [edx+6Ch], 3
jmp     loc_4A3054

loc_4A3202:
xor     ah, ah
mov     al, bl
mov     [edx+0C2h], ax
mov     ecx, [edx+44h]
test    ecx, ecx
jz      loc_4A2420
xor     eax, eax
mov     al, bl
lea     ebx, [eax+eax]
mov     eax, ecx
mov     bx, [ebx+eax]
and     ebx, 0FFFFh
lea     eax, [ecx+ebx]
jmp     loc_4A242B

loc_4A3233:
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, ds:byte_77E801
xor     eax, eax
mov     al, ds:byte_77E800
sub     ecx, eax
mov     eax, ecx
shl     eax, 2
add     eax, ecx
add     eax, eax
neg     eax
call    sub_4B6204
test    eax, eax
jnz     short loc_4A3265
mov     ebx, [edx+6Ch]
mov     bl, [ebx+1]
jmp     short loc_4A328C

loc_4A3265:
cmp     word ptr ds:unk_77E7E4, 80h
jl      short loc_4A3286
mov     eax, 0FFFFFFFFh
call    sub_4B6204
test    eax, eax
jnz     short loc_4A3286
mov     ebx, [edx+6Ch]
mov     bl, [ebx+3]
jmp     short loc_4A328C

loc_4A3286:
mov     ebx, [edx+6Ch]
mov     bl, [ebx+2]

loc_4A328C:
cmp     bl, 0FFh
jnz     loc_4A23E6
add     dword ptr [edx+6Ch], 4
jmp     loc_4A3054

loc_4A329E:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+6Ch]
cmp     byte ptr [eax+1], 0
jnz     short loc_4A32C8
xor     edx, edx
mov     dl, ds:byte_77E801
xor     eax, eax
mov     al, ds:byte_77E800
sub     edx, eax
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
jmp     short loc_4A32CD

loc_4A32C8:
mov     eax, ds:dword_77E7A0

loc_4A32CD:
neg     eax
xor     ebx, ebx
xor     edx, edx
call    sub_4B6217
mov     al, ds:byte_77E801
mov     ds:byte_77E800, al
add     dword ptr [ecx+6Ch], 2
jmp     loc_4A3054

loc_4A32EB:
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     eax, eax
mov     al, ds:byte_77E801
xor     ebx, ebx
mov     bl, ds:byte_77E800
sub     eax, ebx
mov     ebx, eax
shl     eax, 2
add     eax, ebx
add     eax, eax
mov     ecx, [edx+14h]
inc     ecx
mov     [edx+14h], ecx
mov     ebx, ecx
mov     edx, eax
mov     eax, 1
call    sub_4A604B
pop     edx
pop     ecx
pop     ebx
retn

loc_4A3323:
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ebx, [eax+6Ch]
mov     ax, [eax+0C0h]
xor     ecx, ecx
mov     cx, ax
shl     ecx, 2
inc     eax
mov     [edx+0C0h], ax
lea     eax, [edx+ecx]
inc     ebx
mov     [eax+4Ch], ebx
xor     eax, eax
mov     al, ds:byte_55BD8A
add     eax, 500h
call    sub_47E8B8
xor     eax, eax
mov     al, ds:byte_55BD8A
mov     eax, ds:off_52FD95[eax*4]

loc_4A3368:
mov     [edx+6Ch], eax
jmp     loc_4A3054

loc_4A3370:
push    ebx
push    ecx
push    edx
mov     ebx, [eax+6Ch]
mov     dx, [eax+0C0h]
xor     ecx, ecx
mov     cx, dx
shl     ecx, 2
inc     edx
mov     [eax+0C0h], dx
lea     edx, [eax+ecx]
add     ebx, 2
mov     [edx+4Ch], ebx
mov     edx, [eax+6Ch]
mov     dl, [edx+1]
and     edx, 0FFh
jmp     loc_4A318B

loc_4A33A7:
push    ebx
push    ecx
push    edx
mov     ebx, [eax+14h]
mov     dx, [eax+0BEh]
xor     ecx, ecx
mov     cx, dx
shl     ecx, 2
inc     edx
mov     [eax+0BEh], dx
lea     edx, [eax+ecx]
add     ebx, 2
mov     [edx+18h], ebx
mov     edx, [eax+14h]
mov     dl, [edx+1]
and     edx, 0FFh
jmp     loc_4A31C6

loc_4A33DE:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, ds:dword_55B990

loc_4A33E8:
xor     ebx, ebx
xor     edx, edx
call    sub_4B6217

loc_4A33F1:
inc     dword ptr [ecx+6Ch]
jmp     loc_4A3054

loc_4A33F9:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, ds:dword_55B990
neg     eax
jmp     short loc_4A33E8

loc_4A3407:
push    ebx
push    edx
mov     edx, [eax+14h]
inc     edx
mov     [eax+14h], edx
mov     ebx, edx
mov     edx, ds:dword_55B990
mov     eax, 1
jmp     loc_4A2DF8

loc_4A3422:
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebx, eax
mov     esi, offset unk_560D67
xor     edx, edx
xor     eax, eax
jmp     short loc_4A343B

loc_4A3435:
inc     eax
cmp     eax, 8
jnb     short loc_4A3454

loc_4A343B:
movzx   edi, byte ptr [esi]
mov     cl, al
mov     ebp, 80h
sar     ebp, cl
test    edi, ebp
jz      short loc_4A3435
mov     ds:byte_55B900[edx], al
inc     edx
jmp     short loc_4A3435

loc_4A3454:
mov     ds:byte_55B900[edx], 8
mov     eax, [ebx+6Ch]
mov     dl, [edx+eax]
cmp     dl, 0FFh
jnz     short loc_4A346E
add     eax, 9
mov     [ebx+6Ch], eax
jmp     short loc_4A34B9

loc_4A346E:
xor     ah, ah
mov     al, dl
mov     [ebx+0C2h], ax
mov     ecx, [ebx+44h]
test    ecx, ecx
jz      short loc_4A349A
xor     eax, eax
mov     al, dl
mov     edx, ecx
mov     ax, [edx+eax*2]
and     eax, 0FFFFh
lea     edx, [ecx+eax]
mov     [ebx+48h], edx
mov     [ebx+6Ch], edx
jmp     short loc_4A34AB

loc_4A349A:
xor     eax, eax
mov     al, dl
mov     eax, ds:off_52FCBD[eax*4]
mov     [ebx+48h], eax
mov     [ebx+6Ch], eax

loc_4A34AB:
mov     byte ptr [ebx+3Eh], 0
mov     al, [ebx+3Eh]
mov     [ebx+3Ch], al
mov     byte ptr [ebx+72h], 0

loc_4A34B9:
mov     eax, 1

loc_4A34BE:
pop     ebp
jmp     loc_4A518C

loc_4A34C4:
push    ebx
push    ecx
push    edx
mov     ebx, [eax+6Ch]
mov     dx, [eax+0C0h]
xor     ecx, ecx
mov     cx, dx
shl     ecx, 2
inc     edx
mov     [eax+0C0h], dx
lea     edx, [eax+ecx]
add     ebx, 2
mov     [edx+4Ch], ebx
mov     edx, [eax+6Ch]
mov     dl, [edx+1]
and     edx, 0FFh
mov     dl, ds:byte_55B900[edx]
and     edx, 0FFh
mov     edx, ds:off_530001[edx*4]
jmp     loc_4A3192

loc_4A350E:
push    ebx
push    ecx
push    edx
mov     ebx, [eax+14h]
mov     dx, [eax+0BEh]
xor     ecx, ecx
mov     cx, dx
shl     ecx, 2
inc     edx
mov     [eax+0BEh], dx
lea     edx, [eax+ecx]
add     ebx, 2
mov     [edx+18h], ebx
mov     edx, [eax+14h]
mov     dl, [edx+1]
and     edx, 0FFh
mov     dl, ds:byte_55B900[edx]
and     edx, 0FFh
mov     edx, ds:off_530001[edx*4]
jmp     loc_4A31CD

loc_4A3558:
push    edx
mov     dl, byte ptr ds:dword_55BD7C
xor     dh, dh
mov     byte ptr ds:dword_55BD7C, dh
and     edx, 0FFh
mov     dl, ds:byte_55B900[edx]
and     edx, 0FFh
or      ds:dword_55BD7C, edx
jmp     loc_4A2DD5

loc_4A3584:
push    ecx
push    edx
push    esi
mov     esi, eax
xor     eax, eax

loc_4A358B:
xor     edx, edx
mov     dl, ds:byte_55BD88
mov     ecx, edx
shl     ecx, 4
lea     edx, [eax+eax]
add     edx, ecx
mov     ecx, [esi+6Ch]
mov     dl, byte ptr ds:dword_77E80C[edx]
mov     [ecx+eax+1], dl
inc     eax
cmp     eax, 3
jb      short loc_4A358B
inc     dword ptr [esi+6Ch]
mov     eax, 1
pop     esi
pop     edx
pop     ecx
retn

loc_4A35BC:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+14h]
lea     edx, [eax+3]
mov     bl, [eax+1]
test    bl, bl
jnz     short loc_4A35DD
mov     eax, ds:dword_55B980

loc_4A35D3:
call    sub_4A60BD
jmp     loc_4A25E8

loc_4A35DD:
cmp     bl, 1
jnz     short loc_4A35F5
mov     al, [eax+2]
and     eax, 0FFh
shl     eax, 4
mov     eax, ds:dword_77E808[eax]
jmp     short loc_4A35D3

loc_4A35F5:
lea     edx, [eax+8]
cmp     bl, 2
jnz     short loc_4A363B
mov     al, [eax+2]
and     eax, 0FFh
shl     eax, 4
mov     eax, ds:dword_77E808[eax]

loc_4A360E:
call    sub_4A615C
mov     eax, [ecx+14h]
mov     byte ptr [eax+3], 0C2h
mov     eax, [ecx+14h]
mov     byte ptr [eax+4], 0C2h
mov     eax, [ecx+14h]
mov     byte ptr [eax+5], 0C2h
mov     eax, [ecx+14h]
mov     byte ptr [eax+6], 0C2h
mov     eax, [ecx+14h]
mov     byte ptr [eax+7], 0C2h
jmp     loc_4A25E8

loc_4A363B:
cmp     bl, 3
jnz     short loc_4A3647
mov     eax, ds:dword_55B98C
jmp     short loc_4A360E

loc_4A3647:
cmp     bl, 4
jnz     loc_4A25E8
mov     dl, ds:byte_5302DF
mov     [eax+3], dl
mov     eax, [ecx+14h]
mov     dl, ds:byte_5302E0
mov     [eax+4], dl
mov     eax, [ecx+14h]
mov     dl, ds:byte_5302E1
mov     [eax+5], dl
mov     eax, [ecx+14h]
mov     dl, ds:byte_5302E2
mov     [eax+6], dl
mov     eax, [ecx+14h]
mov     dl, ds:byte_5302E3
mov     [eax+7], dl
mov     eax, [ecx+14h]
mov     dl, ds:byte_5302E4
mov     [eax+8], dl
mov     eax, [ecx+14h]
mov     dl, ds:byte_5302E5
mov     [eax+9], dl
mov     eax, [ecx+14h]
mov     dl, ds:byte_5302E6
mov     [eax+0Ah], dl
jmp     loc_4A25E8

loc_4A36B2:
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
test    byte ptr [eax+3], 1
jnz     short loc_4A3721
or      byte ptr [ecx+3], 1
mov     word ptr [ecx+0BCh], 0
mov     word ptr [ecx+86h], 0
mov     eax, [ecx+6Ch]
mov     al, [eax+1]
mov     [ecx+72h], al
mov     byte ptr [ecx+73h], 0
mov     byte ptr [ecx+71h], 0
mov     ds:byte_55BD91, 60h ; '`'
mov     ds:byte_55BD92, 2
xor     eax, eax

loc_4A36F6:
mov     ebx, [ecx+6Fh]
sar     ebx, 18h
xor     edx, edx
mov     dx, ax
cmp     edx, ebx
jge     short loc_4A3721
sub     ebx, edx
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     ebx, [ecx+6Ch]
sub     ebx, edx
mov     edx, ebx
mov     bl, ds:byte_5302A2
mov     [edx+2], bl
inc     eax
jmp     short loc_4A36F6

loc_4A3721:
xor     edi, edi
or      byte ptr [ecx+3], 10h
mov     al, [ecx+0BBh]
test    al, 40h
jnz     short loc_4A3740
mov     ah, [ecx+0BAh]
test    ah, 20h
jz      loc_4A37E4

loc_4A3740:
mov     al, [ecx+71h]
inc     al
mov     [ecx+71h], al
cmp     al, [ecx+72h]
jl      short loc_4A3797
and     byte ptr [ecx+3], 0FEh
xor     eax, eax
mov     al, ds:byte_55BD88
shl     eax, 4
mov     edi, offset dword_77E808
add     edi, eax
xor     eax, eax

loc_4A3764:
mov     edx, [ecx+6Fh]
sar     edx, 18h
xor     ebx, ebx
mov     bx, ax
cmp     ebx, edx
jge     short loc_4A3790
sub     edx, ebx
mov     esi, edx
shl     edx, 2
sub     edx, esi
mov     esi, [ecx+6Ch]
sub     esi, edx
movzx   si, byte ptr [esi+2]
mov     edx, ebx
mov     [edi+edx*2+4], si
inc     eax
jmp     short loc_4A3764

loc_4A3790:
mov     edi, 1
jmp     short loc_4A37D3

loc_4A3797:
xor     eax, eax
jmp     short loc_4A37A2

loc_4A379B:
inc     eax
cmp     ax, 25h ; '%'
jnb     short loc_4A37CC

loc_4A37A2:
mov     edx, [ecx+6Fh]
sar     edx, 18h
mov     ebx, [ecx+6Eh]
sar     ebx, 18h
sub     edx, ebx
mov     ebx, edx
shl     edx, 2
sub     edx, ebx
mov     esi, [ecx+6Ch]
sub     esi, edx
xor     edx, edx
mov     dx, ax
mov     bl, [esi+2]
cmp     bl, ds:byte_5302A2[edx]
jnz     short loc_4A379B

loc_4A37CC:
mov     [ecx+86h], ax

loc_4A37D3:
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
jmp     loc_4A38BA

loc_4A37E4:
test    al, 10h
jnz     short loc_4A37ED
test    ah, 80h
jz      short loc_4A384D

loc_4A37ED:
mov     bl, [ecx+71h]
test    bl, bl
jz      short loc_4A37FB
mov     bh, bl
dec     bh
mov     [ecx+71h], bh

loc_4A37FB:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
xor     eax, eax
jmp     short loc_4A3817

loc_4A3810:
inc     eax
cmp     ax, 25h ; '%'
jnb     short loc_4A3841

loc_4A3817:
mov     ebx, [ecx+6Fh]
sar     ebx, 18h
mov     edx, [ecx+6Eh]
sar     edx, 18h
sub     ebx, edx
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     ebx, [ecx+6Ch]
sub     ebx, edx
xor     esi, esi
mov     si, ax
mov     dl, [ebx+2]
cmp     dl, ds:byte_5302A2[esi]
jnz     short loc_4A3810

loc_4A3841:
mov     [ecx+86h], ax
jmp     loc_4A38F1

loc_4A384D:
test    ah, 10h
jz      short loc_4A3862
inc     word ptr [ecx+86h]
mov     [ecx+0BCh], di
jmp     short loc_4A38AE

loc_4A3862:
test    byte ptr [ecx+0B8h], 10h
jz      short loc_4A3893
test    ah, 10h
jnz     short loc_4A3893
mov     dx, [ecx+0BCh]
cmp     dx, 0Ch
jbe     loc_4A38E7
inc     word ptr [ecx+86h]
mov     word ptr [ecx+0BCh], 0Ch
jmp     short loc_4A38AE

loc_4A3893:
mov     ah, [ecx+0BAh]
test    ah, 40h
jz      short loc_4A38C1
mov     word ptr [ecx+0BCh], 0

loc_4A38A7:
dec     word ptr [ecx+86h]

loc_4A38AE:
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h

loc_4A38BA:
call    sub_4D89E4
jmp     short loc_4A38F1

loc_4A38C1:
test    byte ptr [ecx+0B8h], 40h
jz      short loc_4A38F1
test    ah, 40h
jnz     short loc_4A38F1
mov     dx, [ecx+0BCh]
cmp     dx, 0Ch
jbe     short loc_4A38E7
mov     word ptr [ecx+0BCh], 0Ch
jmp     short loc_4A38A7

loc_4A38E7:
mov     ebx, edx
inc     ebx
mov     [ecx+0BCh], bx

loc_4A38F1:
mov     dx, [ecx+86h]
cmp     dx, 25h ; '%'
jl      short loc_4A3909
mov     word ptr [ecx+86h], 0
jmp     short loc_4A3917

loc_4A3909:
test    dx, dx
jge     short loc_4A3917
mov     word ptr [ecx+86h], 24h ; '$'

loc_4A3917:
test    di, di
jnz     loc_4A39B0
xor     eax, eax

loc_4A3922:
mov     edx, [ecx+6Fh]
sar     edx, 18h
xor     ebx, ebx
mov     bx, ax
cmp     ebx, edx
jge     short loc_4A3946
sub     edx, ebx
mov     ebx, edx
shl     edx, 2
sub     edx, ebx
mov     ebx, [ecx+6Ch]
sub     ebx, edx
mov     byte ptr [ebx+1], 50h ; 'P'
inc     eax
jmp     short loc_4A3922

loc_4A3946:
mov     ebx, [ecx+84h]
sar     ebx, 10h
mov     eax, [ecx+6Eh]
sar     eax, 18h
sub     edx, eax
mov     eax, edx
shl     edx, 2
sub     edx, eax
mov     eax, [ecx+6Ch]
sub     eax, edx
mov     dl, ds:byte_5302A2[ebx]
mov     [eax+2], dl
mov     edx, [ecx+6Fh]
sar     edx, 18h
mov     eax, [ecx+6Eh]
sar     eax, 18h
sub     edx, eax
mov     eax, edx
shl     edx, 2
sub     edx, eax
mov     eax, [ecx+6Ch]
sub     eax, edx
mov     dl, ds:byte_55BD91
mov     [eax+1], dl
mov     al, ds:byte_55BD92
mov     ah, dl
add     ah, al
mov     ds:byte_55BD91, ah
cmp     ah, 90h
jz      short loc_4A39A8
cmp     ah, 60h ; '`'
jnz     short loc_4A39DA

loc_4A39A8:
neg     ds:byte_55BD92
jmp     short loc_4A39DA

loc_4A39B0:
xor     eax, eax

loc_4A39B2:
mov     edx, [ecx+6Fh]
sar     edx, 18h
xor     ebx, ebx
mov     bx, ax
cmp     ebx, edx
jge     short loc_4A39D6
sub     edx, ebx
mov     ebx, edx
shl     edx, 2
sub     edx, ebx
mov     ebx, [ecx+6Ch]
sub     ebx, edx
mov     byte ptr [ebx+1], 80h
inc     eax
jmp     short loc_4A39B2

loc_4A39D6:
add     dword ptr [ecx+6Ch], 2

loc_4A39DA:
or      byte ptr [ecx+2], 80h
xor     eax, eax
mov     ax, di
jmp     loc_4A518C

loc_4A39E8:
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edx, [eax+6Ch]
movzx   di, byte ptr [edx+1]
xor     ecx, ecx
mov     cl, ds:byte_55BD88
mov     ebx, ecx
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 3
add     eax, offset word_5507DC
mov     dl, [edx+1]
and     edx, 0FFh
shl     edx, 3
add     edx, eax
shl     ecx, 3
test    bl, bl
jz      short loc_4A3A28
add     ecx, 8

loc_4A3A28:
add     ecx, (offset dword_5F8955+3)
xor     eax, eax
mov     ax, di
add     eax, ecx
cmp     word ptr [edx], 0
jnz     short loc_4A3A42
mov     ebx, offset unk_5302D7
jmp     short loc_4A3A65

loc_4A3A42:
movsx   eax, byte ptr [eax]
mov     ecx, eax
cmp     word ptr [edx+ecx*2], 0
jnz     short loc_4A3A55
mov     ebx, offset unk_5302CF
jmp     short loc_4A3A65

loc_4A3A55:
mov     ebx, offset a3d3 ; " 3D3:\n"
mov     al, ds:byte_530221[eax]
mov     byte ptr ds:a3d3+6, al ; ""

loc_4A3A65:
xor     eax, eax

loc_4A3A67:
lea     ecx, [ebx+eax]
mov     edx, [esi+6Ch]
mov     cl, [ecx]
mov     [edx+eax+2], cl
inc     eax
cmp     eax, 8
jl      short loc_4A3A67
add     dword ptr [esi+6Ch], 2

loc_4A3A7D:
mov     eax, 1
jmp     loc_4A518C

loc_4A3A87:
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     ecx, [eax+6Ch]
mov     ax, [eax+0C0h]
xor     ebx, ebx
mov     bx, ax
shl     ebx, 2
inc     eax
mov     [edx+0C0h], ax
lea     eax, [edx+ebx]
add     ecx, 5
mov     [eax+4Ch], ecx
mov     ecx, [edx+6Ch]
xor     bh, bh
mov     bl, [ecx+1]
movzx   edi, ds:byte_55BD88
mov     eax, edi
shl     eax, 2
add     eax, edi
shl     eax, 3
mov     esi, offset word_5507DC
add     esi, eax
xor     eax, eax
mov     al, bl
shl     eax, 3
add     eax, esi
shl     edi, 3
cmp     ds:byte_55BD88, 0
jz      short loc_4A3AE9
add     edi, 8

loc_4A3AE9:
add     edi, (offset dword_5F8955+3)
xor     ecx, ecx
mov     cx, bx
add     ecx, edi
mov     esi, ds:dword_55BD7C
and     esi, 0FFFDFFFFh
cmp     word ptr [eax], 0
jnz     short loc_4A3B16
mov     ebx, [edx+6Ch]
mov     bl, [ebx+2]

loc_4A3B0E:
mov     ds:dword_55BD7C, esi
jmp     short loc_4A3B35

loc_4A3B16:
movsx   ecx, byte ptr [ecx]
cmp     word ptr [eax+ecx*2], 0
jnz     short loc_4A3B28
mov     ebx, [edx+6Ch]
mov     bl, [ebx+3]
jmp     short loc_4A3B0E

loc_4A3B28:
mov     ebx, [edx+6Ch]
mov     bl, [ebx+4]
or      byte ptr ds:dword_55BD7C+2, 2

loc_4A3B35:
xor     ah, ah
mov     al, bl
mov     [edx+0C2h], ax
xor     eax, eax
mov     al, bl
mov     ecx, [edx+44h]
mov     ax, [ecx+eax*2]
and     eax, 0FFFFh
add     ecx, eax
mov     [edx+6Ch], ecx
jmp     loc_4A3A7D

loc_4A3B5A:
push    ebx
push    ecx
push    edx
mov     ebx, [eax+14h]
mov     dx, [eax+0BEh]
xor     ecx, ecx
mov     cx, dx
shl     ecx, 2
inc     edx
mov     [eax+0BEh], dx
lea     edx, [eax+ecx]
add     ebx, 5
mov     [edx+18h], ebx
xor     edx, edx
mov     dx, [eax+0C2h]
mov     ecx, [eax+44h]
mov     dx, [ecx+edx*2]
and     edx, 0FFFFh
add     ecx, edx
mov     [eax+14h], ecx
pop     edx
pop     ecx
pop     ebx
retn

loc_4A3B9F:
push    ecx
push    edx
or      dword ptr [eax], 400800h
inc     byte ptr [eax+72h]
mov     word ptr [eax+0BCh], 0
add     dword ptr [eax+6Ch], 5
mov     edx, eax
sub     edx, offset dword_55B99C
mov     ecx, 0C4h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     cl, al
mov     eax, 20000h
shl     eax, cl
not     eax
and     ds:dword_55BD74, eax
jmp     loc_4A1FAE

loc_4A3BE1:
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     eax, [eax+14h]
mov     byte ptr [eax+5], 0E9h
mov     byte ptr [esi+78h], 0
mov     al, [esi+71h]
cmp     al, [esi+73h]
jnz     loc_4A3DD7
test    byte ptr [esi+2], 0C0h
jnz     loc_4A3DD7
mov     edx, esi
sub     edx, offset dword_55B99C
mov     ecx, 0C4h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     cl, al
mov     eax, 20000h
shl     eax, cl
not     eax
and     ds:dword_55BD74, eax
movsx   cx, byte ptr [esi+71h]
test    byte ptr ds:dword_55B99C+3, 80h
jnz     loc_4A3D6C
test    byte ptr [esi+0BBh], 40h
jnz     loc_4A3D6C
mov     bh, [esi+0BAh]
test    bh, 10h
jz      short loc_4A3C6F
mov     eax, [esi+14h]
mov     al, [eax+1]

loc_4A3C5E:
mov     [esi+71h], al
mov     word ptr [esi+0BCh], 0
jmp     loc_4A3D6C

loc_4A3C6F:
test    byte ptr [esi+0B8h], 10h
jz      short loc_4A3CB0
test    bh, 10h
jnz     short loc_4A3CB0
mov     di, [esi+0BCh]
cmp     di, 0Ch
jbe     short loc_4A3CA1
mov     eax, [esi+14h]
mov     al, [eax+1]

loc_4A3C90:
mov     [esi+71h], al
mov     word ptr [esi+0BCh], 0Ch
jmp     loc_4A3D6C

loc_4A3CA1:
mov     eax, edi
inc     eax
mov     [esi+0BCh], ax
jmp     loc_4A3D6C

loc_4A3CB0:
mov     dl, [esi+0BAh]
test    dl, 40h
jz      short loc_4A3CC3
mov     eax, [esi+14h]
mov     al, [eax+2]
jmp     short loc_4A3C5E

loc_4A3CC3:
test    byte ptr [esi+0B8h], 40h
jz      short loc_4A3CEA
test    dl, 40h
jnz     short loc_4A3CEA
mov     dx, [esi+0BCh]
cmp     dx, 0Ch
jbe     loc_4A3D62
mov     eax, [esi+14h]
mov     al, [eax+2]
jmp     short loc_4A3C90

loc_4A3CEA:
mov     bh, [esi+0BAh]
test    bh, 80h
jz      short loc_4A3D00
mov     eax, [esi+14h]
mov     al, [eax+3]
jmp     loc_4A3C5E

loc_4A3D00:
test    byte ptr [esi+0B8h], 80h
jz      short loc_4A3D26
test    bh, 80h
jnz     short loc_4A3D26
mov     di, [esi+0BCh]
cmp     di, 0Ch
jbe     short loc_4A3CA1
mov     eax, [esi+14h]
mov     al, [eax+3]
jmp     loc_4A3C90

loc_4A3D26:
mov     dl, [esi+0BAh]
test    dl, 20h
jz      short loc_4A3D3C
mov     eax, [esi+14h]
mov     al, [eax+4]
jmp     loc_4A3C5E

loc_4A3D3C:
test    byte ptr [esi+0B8h], 20h
jz      short loc_4A3D6C
test    dl, 20h
jnz     short loc_4A3D6C
mov     dx, [esi+0BCh]
cmp     dx, 0Ch
jbe     short loc_4A3D62
mov     eax, [esi+14h]
mov     al, [eax+4]
jmp     loc_4A3C90

loc_4A3D62:
mov     ebx, edx
inc     ebx
mov     [esi+0BCh], bx

loc_4A3D6C:
test    byte ptr ds:dword_55BD7C+2, 2
jnz     short loc_4A3D7E
mov     eax, [esi+14h]
mov     byte ptr [eax+5], 5Ch ; '\'
jmp     short loc_4A3D85

loc_4A3D7E:
mov     eax, [esi+14h]
mov     byte ptr [eax+5], 0E9h

loc_4A3D85:
add     byte ptr [esi+78h], 30h ; '0'
mov     eax, [esi+14h]
add     eax, 5
mov     [esi+74h], eax
or      byte ptr [esi+2], 80h
mov     edx, [esi+6Eh]
sar     edx, 18h
movsx   eax, cx
cmp     eax, edx

loc_4A3DA1:
jz      short loc_4A3DD7
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
call    sub_4D89E4
mov     edx, esi
sub     edx, offset dword_55B99C
mov     ecx, 0C4h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     cl, al
mov     eax, 20000h
shl     eax, cl
or      ds:dword_55BD74, eax

loc_4A3DD7:
add     byte ptr [esi+78h], 50h ; 'P'
inc     byte ptr [esi+73h]
add     dword ptr [esi+14h], 5
jmp     loc_4A518C

loc_4A3DE7:
push    ebx
push    ecx
push    edx
mov     dl, [eax+3]
test    dl, 1
jnz     short loc_4A3E04
mov     dh, dl
or      dh, 1
mov     [eax+3], dh
and     byte ptr [eax+1], 7Fh
mov     word ptr [eax+4], 5

loc_4A3E04:
and     byte ptr [eax+2], 0BFh
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_4A3E1A
or      byte ptr ds:dword_55BD7C+2, 2
jmp     short loc_4A3E21

loc_4A3E1A:
and     byte ptr ds:dword_55BD7C+2, 0FDh

loc_4A3E21:
mov     dx, [eax+4]
test    dx, dx
jg      short loc_4A3E87
mov     edx, ds:dword_55BD7C
xor     dl, dl
mov     bl, [eax+0BBh]
test    bl, 40h
jz      short loc_4A3E67
mov     ds:dword_55BD7C, edx
mov     ecx, [eax+6Eh]
sar     ecx, 18h
and     ecx, 0FFh
or      ecx, 40000000h

loc_4A3E55:
or      edx, ecx

loc_4A3E57:
mov     ds:dword_55BD7C, edx

loc_4A3E5D:
mov     byte ptr [eax+78h], 80h

loc_4A3E61:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn

loc_4A3E67:
test    bl, 10h
jz      short loc_4A3E5D
mov     ds:dword_55BD7C, edx
mov     ecx, [eax+6Fh]
sar     ecx, 18h
dec     ecx
and     ecx, 0FFh
or      ecx, 20000000h
jmp     short loc_4A3E55

loc_4A3E87:
mov     ebx, edx
dec     ebx
mov     [eax+4], bx
jmp     short loc_4A3E5D
sub_4A1364 endp




sub_4A3E90 proc near
push    edx
mov     edx, [eax+6Ch]
mov     dl, [edx+1]
mov     [eax+3Dh], dl
add     dword ptr [eax+6Ch], 2
jmp     loc_4A2DD8
sub_4A3E90 endp




sub_4A3EA3 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ebx, [eax+6Ch]
mov     ax, [eax+0C0h]
xor     ecx, ecx
mov     cx, ax
shl     ecx, 2
inc     eax
mov     [edx+0C0h], ax
lea     eax, [edx+ecx]
add     ebx, 3
mov     [eax+4Ch], ebx
mov     eax, [edx+6Ch]
inc     eax
call    sub_4A1329
and     eax, 0FFFFh
call    sub_47E888
test    eax, eax
jz      short loc_4A3EFC
mov     eax, [edx+6Ch]
inc     eax
call    sub_4A1329
and     eax, 0FFFFh
mov     eax, ds:off_52EC95[eax*4]
jmp     loc_4A3368

loc_4A3EFC:
mov     eax, ds:off_530049
jmp     loc_4A3368
sub_4A3EA3 endp




sub_4A3F06 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ebx, [eax+14h]
mov     ax, [eax+0BEh]
xor     ecx, ecx
mov     cx, ax
shl     ecx, 2
inc     eax
mov     [edx+0BEh], ax
lea     eax, [edx+ecx]
add     ebx, 3
mov     [eax+18h], ebx
mov     eax, [edx+14h]
inc     eax
call    sub_4A1329
and     eax, 0FFFFh
call    sub_47E888
test    eax, eax
jz      short loc_4A3F5C
mov     eax, [edx+14h]
inc     eax
call    sub_4A1329
and     eax, 0FFFFh
mov     eax, ds:off_52EC95[eax*4]
jmp     short loc_4A3F61

loc_4A3F5C:
mov     eax, ds:off_530049

loc_4A3F61:
mov     [edx+14h], eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4A3F06 endp




sub_4A3F68 proc near
push    edx
mov     edx, eax
mov     eax, [eax+14h]
inc     eax
call    sub_4A1329
mov     [edx+10h], ax
mov     eax, [edx+14h]
add     eax, 3
call    sub_4A1329
mov     [edx+12h], ax
add     dword ptr [edx+14h], 5
pop     edx
retn
sub_4A3F68 endp




sub_4A3F8D proc near
push    edx
mov     edx, eax
xor     ah, ah
mov     ds:byte_55BD8D, ah
xor     eax, eax
inc     dword ptr [edx+6Ch]
mov     dl, 0FFh

loc_4A3F9F:
mov     ds:byte_55B900[eax], dl
inc     eax
cmp     eax, 80h
jl      short loc_4A3F9F
jmp     loc_4A2DD8
sub_4A3F8D endp




sub_4A3FB2 proc near

; FUNCTION CHUNK AT 004A518C SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     ebx, offset unk_560DAC
xor     edx, edx
mov     ds:dword_55B998, edx
xor     eax, eax
jmp     short loc_4A3FD0

loc_4A3FCA:
inc     eax
cmp     eax, 40h ; '@'
jge     short loc_4A4003

loc_4A3FD0:
mov     edx, eax
sar     edx, 3
mov     dl, [edx+ebx]
and     edx, 0FFh
mov     ecx, eax
and     ecx, 7
mov     edi, 80h
sar     edi, cl
test    edx, edi
jz      short loc_4A3FCA
mov     edx, ds:dword_55B998
mov     ds:byte_55B900[edx], al
inc     edx
mov     ds:dword_55B998, edx
jmp     short loc_4A3FCA

loc_4A4003:
mov     eax, ds:dword_55B998
mov     dl, 0FFh

loc_4A400A:
cmp     eax, 80h
jge     short loc_4A401A
mov     ds:byte_55B900[eax], dl
inc     eax
jmp     short loc_4A400A

loc_4A401A:
inc     dword ptr [esi+14h]
jmp     loc_4A518C
sub_4A3FB2 endp




sub_4A4022 proc near
push    ecx
push    edx
or      dword ptr [eax], 402800h
inc     byte ptr [eax+72h]
mov     word ptr [eax+0BCh], 0
add     dword ptr [eax+6Ch], 5
mov     edx, eax
sub     edx, offset dword_55B99C
mov     ecx, 0C4h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     cl, al
mov     eax, 20000h
shl     eax, cl
not     eax
and     ds:dword_55BD74, eax
mov     ds:byte_55BD90, 0FFh
jmp     loc_4A1FAE
sub_4A4022 endp




sub_4A406B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edx, [eax+70h]
sar     edx, 18h
xor     eax, eax
mov     al, ds:byte_55BD8D
add     eax, edx
xor     edx, edx
mov     dl, ds:byte_55BD90
cmp     edx, eax
jnz     short loc_4A40A3
test    byte ptr ds:dword_55BD70, 1
jz      short loc_4A40A3
mov     eax, [esi+14h]
mov     byte ptr [eax+5], 5Ch ; '\'
mov     byte ptr [esi+78h], 10h
jmp     short loc_4A40AE

loc_4A40A3:
mov     eax, [esi+14h]
mov     byte ptr [eax+5], 0E9h
mov     byte ptr [esi+78h], 0

loc_4A40AE:
mov     al, [esi+71h]
cmp     al, [esi+73h]
jnz     loc_4A3DD7
test    byte ptr [esi+2], 0C0h
jnz     loc_4A3DD7
mov     edx, esi
sub     edx, offset dword_55B99C
mov     ecx, 0C4h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     cl, al
mov     eax, 20000h
shl     eax, cl
mov     edx, eax
not     edx
and     ds:dword_55BD74, edx
movsx   di, byte ptr [esi+71h]
test    byte ptr [esi+0BBh], 40h
jnz     loc_4A42E4
mov     bh, [esi+0BAh]
test    bh, 10h
jz      short loc_4A415B
mov     edx, [esi+14h]
mov     dl, [edx+1]
mov     [esi+71h], dl
mov     word ptr [esi+0BCh], 0

loc_4A411A:
mov     edx, [esi+6Eh]
sar     edx, 18h
movsx   ecx, di
cmp     ecx, edx
jnz     loc_4A42E4
cmp     ds:byte_55BD8D, 0
jbe     loc_4A42E4
or      ds:dword_55BD74, eax
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
call    sub_4D89E4
sub     ds:byte_55BD8D, 2
jmp     loc_4A42E4

loc_4A415B:
test    byte ptr [esi+0B8h], 10h
jz      short loc_4A418E
test    bh, 10h
jnz     short loc_4A418E
mov     dx, [esi+0BCh]
cmp     dx, 0Ch
jbe     loc_4A42DA
mov     edx, [esi+14h]
mov     dl, [edx+1]
mov     [esi+71h], dl
mov     word ptr [esi+0BCh], 0Ch
jmp     short loc_4A411A

loc_4A418E:
mov     edx, esi
sub     edx, offset dword_55B99C
mov     ecx, 0C4h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     cl, al
mov     edx, 20000h
shl     edx, cl
mov     al, [esi+0BAh]
test    al, 40h
jz      short loc_4A420C
mov     eax, [esi+14h]
mov     al, [eax+2]
mov     [esi+71h], al
mov     word ptr [esi+0BCh], 0

loc_4A41C7:
mov     eax, [esi+6Eh]
sar     eax, 18h
movsx   ecx, di
cmp     ecx, eax
jnz     loc_4A42E4
mov     al, ds:byte_55BD8D
cmp     al, ds:byte_55BD88
jnb     loc_4A42E4
or      ds:dword_55BD74, edx
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
call    sub_4D89E4
add     ds:byte_55BD8D, 2
jmp     loc_4A42E4

loc_4A420C:
test    byte ptr [esi+0B8h], 40h
jz      short loc_4A4249
test    al, 40h
jnz     short loc_4A4249
mov     bx, [esi+0BCh]
cmp     bx, 0Ch
jbe     short loc_4A423A
mov     eax, [esi+14h]
mov     al, [eax+2]
mov     [esi+71h], al
mov     word ptr [esi+0BCh], 0Ch
jmp     short loc_4A41C7

loc_4A423A:
mov     ecx, ebx
inc     ecx
mov     [esi+0BCh], cx
jmp     loc_4A42E4

loc_4A4249:
mov     bh, [esi+0BAh]
test    bh, 80h
jz      short loc_4A426B
mov     eax, [esi+14h]
mov     al, [eax+3]

loc_4A425A:
mov     [esi+71h], al
mov     word ptr [esi+0BCh], 0
jmp     loc_4A42E4

loc_4A426B:
test    byte ptr [esi+0B8h], 80h
jz      short loc_4A42A6
test    bh, 80h
jnz     short loc_4A42A6
mov     cx, [esi+0BCh]
cmp     cx, 0Ch
jbe     short loc_4A429A
mov     eax, [esi+14h]
mov     al, [eax+3]

loc_4A428C:
mov     [esi+71h], al
mov     word ptr [esi+0BCh], 0Ch
jmp     short loc_4A42E4

loc_4A429A:
mov     eax, ecx
inc     eax
mov     [esi+0BCh], ax
jmp     short loc_4A42E4

loc_4A42A6:
mov     al, [esi+0BAh]
test    al, 20h
jz      short loc_4A42B8
mov     eax, [esi+14h]
mov     al, [eax+4]
jmp     short loc_4A425A

loc_4A42B8:
test    byte ptr [esi+0B8h], 20h
jz      short loc_4A42E4
test    al, 20h
jnz     short loc_4A42E4
mov     dx, [esi+0BCh]
cmp     dx, 0Ch
jbe     short loc_4A42DA
mov     eax, [esi+14h]
mov     al, [eax+4]
jmp     short loc_4A428C

loc_4A42DA:
mov     ebx, edx
inc     ebx
mov     [esi+0BCh], bx

loc_4A42E4:
mov     eax, [esi+14h]
mov     byte ptr [eax+5], 5Ch ; '\'
mov     byte ptr [esi+78h], 30h ; '0'
mov     eax, [esi+14h]
add     eax, 5
mov     [esi+74h], eax
or      byte ptr [esi+2], 80h
mov     eax, [esi+6Eh]
sar     eax, 18h
movsx   edx, di
cmp     edx, eax
jmp     loc_4A3DA1
sub_4A406B endp




sub_4A430C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
test    byte ptr [eax+3], 1
jnz     short loc_4A4325
or      byte ptr [ecx+3], 1
and     byte ptr [ecx+1], 7Fh
mov     word ptr [ecx+4], 5

loc_4A4325:
and     byte ptr [ecx+2], 0BFh
mov     dx, [ecx+4]
test    dx, dx
jg      loc_4A43E2
xor     eax, eax
call    sub_4A0595
mov     eax, 1
call    sub_4A0595
test    byte ptr [ecx+0BBh], 40h
jz      short loc_4A4392
xor     bl, bl
mov     byte ptr ds:dword_55BD7C, bl
mov     edx, [ecx+6Eh]
sar     edx, 18h
xor     eax, eax
mov     al, ds:byte_55BD8D
add     eax, edx
mov     bh, ds:byte_55B900[eax]
cmp     bh, 0FFh
jz      short loc_4A438E
mov     al, bh
and     eax, 0FFh
add     eax, 40h ; '@'

loc_4A437C:
and     eax, 0FFh
or      eax, 40000000h
or      ds:dword_55BD7C, eax
jmp     short loc_4A43E9

loc_4A438E:
mov     al, bh
jmp     short loc_4A437C

loc_4A4392:
mov     al, ds:byte_55BD8D
test    al, al
jbe     short loc_4A43BB
cmp     al, ds:byte_55BD88
jnb     short loc_4A43BB
mov     edx, 2001Ah
xor     eax, eax
call    sub_4A05F5
mov     edx, 2001Bh
mov     eax, 1
jmp     short loc_4A43CC

loc_4A43BB:
mov     dl, ds:byte_55BD8D
test    dl, dl
jbe     short loc_4A43D3
mov     edx, 2001Ah

loc_4A43CA:
xor     eax, eax

loc_4A43CC:
call    sub_4A05F5
jmp     short loc_4A43E9

loc_4A43D3:
cmp     dl, ds:byte_55BD88
jnb     short loc_4A43E9
mov     edx, 2001Bh
jmp     short loc_4A43CA

loc_4A43E2:
mov     ebx, edx
dec     ebx
mov     [ecx+4], bx

loc_4A43E9:
mov     edx, [ecx+6Eh]
sar     edx, 18h
xor     eax, eax
mov     al, ds:byte_55BD8D
add     eax, edx
mov     dl, ds:byte_55B900[eax]
cmp     dl, 0FFh
jz      short loc_4A440F
mov     al, dl
and     eax, 0FFh
add     eax, 40h ; '@'
jmp     short loc_4A4411

loc_4A440F:
mov     al, dl

loc_4A4411:
and     eax, 0FFh
mov     ds:dword_55BD74, eax
mov     byte ptr [ecx+78h], 80h
jmp     loc_4A3E61
sub_4A430C endp




sub_4A4424 proc near
push    ebx
push    ecx
push    edx
mov     ebx, [eax+6Ch]
mov     dx, [eax+0C0h]
xor     ecx, ecx
mov     cx, dx
shl     ecx, 2
inc     edx
mov     [eax+0C0h], dx
lea     edx, [eax+ecx]
inc     ebx
mov     [edx+4Ch], ebx
mov     edx, [eax+6Fh]
sar     edx, 18h
xor     ecx, ecx
mov     cl, ds:byte_55BD8D
mov     edx, ds:dword_55B8FC[ecx+edx]
sar     edx, 18h
mov     edx, ds:off_52FE95[edx*4]
jmp     loc_4A3192
sub_4A4424 endp




sub_4A446C proc near
push    ebx
push    ecx
push    edx
mov     ebx, [eax+14h]
mov     dx, [eax+0BEh]
xor     ecx, ecx
mov     cx, dx
shl     ecx, 2
inc     edx
mov     [eax+0BEh], dx
lea     edx, [eax+ecx]
inc     ebx
mov     [edx+18h], ebx
mov     edx, [eax+70h]
sar     edx, 18h
xor     ecx, ecx
mov     cl, ds:byte_55BD8D
mov     edx, ds:dword_55B8FC[ecx+edx]
sar     edx, 18h
mov     edx, ds:off_52FE95[edx*4]
jmp     loc_4A31CD
sub_4A446C endp




sub_4A44B4 proc near
push    ebx
push    ecx
push    edx
mov     ebx, [eax+6Ch]
mov     dx, [eax+0C0h]
xor     ecx, ecx
mov     cx, dx
shl     ecx, 2
inc     edx
mov     [eax+0C0h], dx
lea     edx, [eax+ecx]
add     ebx, 3
mov     [edx+4Ch], ebx
mov     edx, [eax+6Ch]
mov     bl, [edx+1]
test    bl, bl
jz      short loc_4A44FE
mov     dl, [edx+2]
and     edx, 0FFh
xor     ecx, ecx
mov     cl, ds:byte_55BD8D
mov     edx, ds:dword_5F88B5[ecx+edx]
jmp     short loc_4A452B

loc_4A44FE:
mov     [edx-1], bl
test    byte ptr ds:dword_55BD7C+2, 2
jz      short loc_4A4519
mov     edx, [eax+6Ch]
mov     bl, [edx+2]
cmp     bl, [eax+71h]
jnz     short loc_4A4519
mov     byte ptr [edx-1], 3

loc_4A4519:
mov     edx, [eax+6Ch]
mov     dl, [edx+2]
and     edx, 0FFh
mov     edx, ds:dword_5F88B1[edx]

loc_4A452B:
sar     edx, 18h
mov     edx, ds:off_52FD91[edx*4]
jmp     loc_4A3192
sub_4A44B4 endp




sub_4A453A proc near
push    ebx
push    ecx
push    edx
mov     ebx, [eax+14h]
mov     dx, [eax+0BEh]
xor     ecx, ecx
mov     cx, dx
shl     ecx, 2
inc     edx
mov     [eax+0BEh], dx
lea     edx, [eax+ecx]
add     ebx, 3
mov     [edx+18h], ebx
mov     edx, [eax+14h]
mov     bl, [edx+1]
test    bl, bl
jz      short loc_4A4584
mov     dl, [edx+2]
and     edx, 0FFh
xor     ecx, ecx
mov     cl, ds:byte_55BD8D
mov     edx, ds:dword_5F88B5[ecx+edx]
jmp     short loc_4A45B1

loc_4A4584:
mov     [edx-1], bl
test    byte ptr ds:dword_55BD7C+2, 2
jz      short loc_4A459F
mov     edx, [eax+14h]
mov     bl, [edx+3]
cmp     bl, [eax+71h]
jnz     short loc_4A459F
mov     byte ptr [edx-1], 3

loc_4A459F:
mov     edx, [eax+14h]
mov     dl, [edx+2]
and     edx, 0FFh
mov     edx, ds:dword_5F88B1[edx]

loc_4A45B1:
sar     edx, 18h
mov     edx, ds:off_52FD91[edx*4]
mov     [eax+14h], edx
pop     edx
pop     ecx
pop     ebx
retn
sub_4A453A endp




sub_4A45C2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
test    byte ptr [eax+3], 1
jnz     short loc_4A45E1
or      byte ptr [ecx+3], 1
and     byte ptr [ecx+1], 7Fh
mov     word ptr [ecx+4], 5
mov     al, [ecx+79h]
mov     [ecx+71h], al

loc_4A45E1:
and     byte ptr [ecx+2], 0BFh
mov     byte ptr [ecx+78h], 80h
mov     eax, ds:dword_55BACE
sar     eax, 18h
mov     al, byte ptr ds:(dword_5F88B1+3)[eax]
and     eax, 0FFh
mov     ds:dword_55BD74, eax
xor     eax, eax
mov     al, ds:byte_55BB9D
xor     edx, edx
mov     dl, ds:byte_55BD8D
mov     al, byte ptr ds:(dword_5F88B5+3)[edx+eax]
and     eax, 0FFh
shl     eax, 8
or      ds:dword_55BD74, eax
or      byte ptr ds:dword_55BD74+2, 1
mov     dx, [ecx+4]
test    dx, dx
jg      loc_4A46CE
mov     al, [ecx+0BBh]
test    al, 10h
jnz     short loc_4A464C
test    byte ptr [ecx+0BAh], 8
jz      short loc_4A4684

loc_4A464C:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
and     byte ptr [ecx+3], 0FEh
mov     al, [ecx+71h]
mov     [ecx+79h], al
mov     eax, [ecx+6Ch]
xor     ebx, ebx
mov     bl, [eax+4]
mov     edx, [ecx+44h]
mov     al, [eax+3]
and     eax, 0FFh
call    sub_4A0CDD
jmp     loc_4A3E61

loc_4A4684:
test    al, 40h
jz      loc_4A3E61
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
and     byte ptr [ecx+3], 0FEh
mov     eax, [ecx+6Ch]
xor     ebx, ebx
mov     bl, [eax+2]
mov     edx, [ecx+44h]
mov     al, [eax+1]
and     eax, 0FFh
call    sub_4A0CDD
or      ds:dword_55BD7C, 28000h
mov     al, [ecx+71h]
mov     [ecx+79h], al
jmp     loc_4A3E61

loc_4A46CE:
mov     ebx, edx
dec     ebx
mov     [ecx+4], bx
jmp     loc_4A3E61
sub_4A45C2 endp




sub_4A46DA proc near

var_18= byte ptr -18h
var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     ecx, eax
test    byte ptr [eax+3], 1
jnz     short loc_4A46FD
or      byte ptr [ecx+3], 1
and     byte ptr [ecx+1], 7Fh
mov     word ptr [ecx+4], 5
mov     al, [ecx+79h]
mov     [ecx+71h], al

loc_4A46FD:
and     byte ptr [ecx+2], 0BFh
mov     eax, ds:dword_55BACE
sar     eax, 18h
mov     al, byte ptr ds:(dword_5F88B1+3)[eax]
and     eax, 0FFh
mov     ds:dword_55BD74, eax
mov     eax, ds:dword_55BB92
sar     eax, 18h
xor     edx, edx
mov     dl, ds:byte_55BD8D
mov     al, byte ptr ds:(dword_5F88B5+3)[edx+eax]
and     eax, 0FFh
shl     eax, 8
or      ds:dword_55BD74, eax
mov     dx, [ecx+4]
test    dx, dx
jg      loc_4A48C5
xor     eax, eax
call    sub_4A0595
mov     eax, 1
call    sub_4A0595
mov     bh, [ecx+0BBh]
test    bh, 10h
jnz     short loc_4A4770
test    byte ptr [ecx+0BAh], 8
jz      short loc_4A47DF

loc_4A4770:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
mov     al, [ecx+71h]
mov     [ecx+79h], al
and     byte ptr [ecx+3], 0FEh
and     ds:dword_55BD7C, 0FFFD7FFFh
mov     eax, [ecx+6Ch]
mov     dl, [eax+3]
mov     [esp+18h+var_18], dl
mov     al, [eax+4]
mov     [esp+18h+var_14], al
xor     ah, ah
mov     [ecx+0C2h], ax
mov     esi, [ecx+44h]
mov     eax, [ecx+6Ch]
xor     ebx, ebx
mov     bl, [eax+2]
mov     al, [eax+1]
and     eax, 0FFh

loc_4A47C1:
mov     edx, esi
call    sub_4A0CDD
xor     ebx, ebx
mov     bl, [esp+18h+var_14]
xor     eax, eax
mov     al, [esp+18h+var_18]
mov     edx, esi
call    sub_4A0CDD
jmp     loc_4A48CC

loc_4A47DF:
test    bh, 40h
jz      loc_4A4874
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
mov     edx, [ecx+6Eh]
sar     edx, 18h
xor     eax, eax
mov     al, ds:byte_55BD8D
add     edx, eax
mov     bh, byte ptr ds:(dword_5F88B5+3)[edx]
mov     eax, ds:dword_55BD78
and     eax, 0FF00h
shr     eax, 8
mov     bl, byte ptr ds:(dword_5F88B1+3)[eax]
mov     byte ptr ds:(dword_5F88B5+3)[edx], bl
mov     byte ptr ds:(dword_5F88B1+3)[eax], bh
call    sub_4E417F
mov     al, [ecx+71h]
mov     [ecx+79h], al
and     byte ptr [ecx+3], 0FEh
and     ds:dword_55BD7C, 0FFFD7FFFh
mov     eax, [ecx+6Ch]
mov     dl, [eax+3]
mov     [esp+18h+var_18], dl
mov     al, [eax+4]
mov     [esp+18h+var_14], al
xor     ah, ah
mov     [ecx+0C2h], ax
mov     esi, [ecx+44h]
mov     ecx, [ecx+6Ch]
xor     ebx, ebx
mov     bl, [ecx+2]
xor     eax, eax
mov     al, [ecx+1]
jmp     loc_4A47C1

loc_4A4874:
mov     dl, ds:byte_55BD8D
test    dl, dl
jbe     short loc_4A489E
cmp     dl, ds:byte_55BD88
jnb     short loc_4A489E
mov     edx, 20018h
xor     eax, eax
call    sub_4A05F5
mov     edx, 20019h
mov     eax, 1
jmp     short loc_4A48AF

loc_4A489E:
mov     bl, ds:byte_55BD8D
test    bl, bl
jbe     short loc_4A48B6
mov     edx, 20018h

loc_4A48AD:
xor     eax, eax

loc_4A48AF:
call    sub_4A05F5
jmp     short loc_4A48CC

loc_4A48B6:
cmp     bl, ds:byte_55BD88
jnb     short loc_4A48CC
mov     edx, 20019h
jmp     short loc_4A48AD

loc_4A48C5:
mov     ebx, edx
dec     ebx
mov     [ecx+4], bx

loc_4A48CC:
xor     eax, eax
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A46DA endp




sub_4A48D6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     eax, 23Dh
call    sub_47E888
test    eax, eax
jz      short loc_4A4904
cmp     ds:dword_77E7AC, 1F4h
jz      short loc_4A4904
xor     ah, ah
mov     ds:byte_55B900, ah
mov     edx, 1

loc_4A4904:
mov     eax, 23Eh
call    sub_47E888
test    eax, eax
jz      short loc_4A4926
cmp     ds:dword_77E7B0, 0C8h
jz      short loc_4A4926
mov     ds:byte_55B900[edx], 1
inc     edx

loc_4A4926:
mov     eax, 23Fh
call    sub_47E888
test    eax, eax
jz      short loc_4A4948
cmp     ds:dword_77E7B4, 0FAh
jz      short loc_4A4948
mov     ds:byte_55B900[edx], 2
inc     edx

loc_4A4948:
mov     eax, 240h
call    sub_47E888
test    eax, eax
jz      short loc_4A496A
cmp     ds:dword_77E7B8, 0C8h
jz      short loc_4A496A
mov     ds:byte_55B900[edx], 3
inc     edx

loc_4A496A:
xor     ebx, ebx
mov     bl, byte ptr ds:dword_77E7E8+2
mov     eax, ebx
shl     eax, 2
add     eax, ebx
add     eax, eax
mov     ebx, eax
shl     eax, 4
sub     eax, ebx
cmp     eax, ds:dword_77E7BC
jz      short loc_4A4992
mov     ds:byte_55B900[edx], 5
inc     edx

loc_4A4992:
xor     ebx, ebx
mov     bl, byte ptr ds:dword_77E7E8+3
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 2
mov     ebx, eax
shl     eax, 4
sub     eax, ebx
cmp     eax, ds:dword_77E7C0
jz      short loc_4A49BB
mov     ds:byte_55B900[edx], 4
inc     edx

loc_4A49BB:
mov     bh, 6
mov     ds:byte_55B900[edx], bh
mov     eax, [ecx+6Ch]
mov     dh, bh
sub     dh, dl
mov     dl, dh
add     dl, [eax+1]
xor     ah, ah
mov     al, dl
mov     [ecx+0C2h], ax
xor     eax, eax
mov     al, dl
mov     edx, [ecx+44h]
mov     ax, [edx+eax*2]
and     eax, 0FFFFh
add     edx, eax
mov     [ecx+48h], edx
mov     [ecx+6Ch], edx
jmp     loc_4A3046
sub_4A48D6 endp




sub_4A49F7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     ebx, [eax+6Ch]
movzx   esi, byte ptr [ebx+1]
xor     edx, edx
mov     dl, ds:byte_55B900[esi]
mov     eax, edx
shl     eax, 2
mov     edi, ds:dword_52E3EA[eax]
add     ebx, 7
cmp     dl, 4
jnb     short loc_4A4A2D
mov     ebp, ds:dword_77E7AC[eax]
mov     edx, edi
sub     edx, ebp
jmp     short loc_4A4A4F

loc_4A4A2D:
sub     edx, 4
mov     ebp, (offset dword_77E7E8+3)
sub     ebp, edx
mov     dl, [ebp+0]
and     edx, 0FFh
imul    edx, edi
sub     eax, 10h
mov     edi, offset dword_77E7C0
sub     edi, eax
sub     edx, [edi]

loc_4A4A4F:
xor     eax, eax
call    sub_4A604B
mov     ebx, [ecx+6Ch]
mov     ax, [ecx+0C0h]
xor     edx, edx
mov     dx, ax
shl     edx, 2
inc     eax
mov     [ecx+0C0h], ax
lea     eax, [ecx+edx]
add     ebx, 2
mov     [eax+4Ch], ebx
xor     eax, eax
mov     al, ds:byte_55B900[esi]
mov     eax, ds:off_53004D[eax*4]
mov     [ecx+6Ch], eax
jmp     loc_4A34B9
sub_4A49F7 endp




sub_4A4A90 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, [eax+14h]
movzx   esi, byte ptr [edx+1]
mov     bx, [eax+0BEh]
xor     ecx, ecx
mov     cx, bx
inc     ebx
mov     [eax+0BEh], bx
add     edx, 2
mov     [eax+ecx*4+18h], edx
xor     edx, edx
mov     dl, ds:byte_55B900[esi]
mov     edx, ds:off_53004D[edx*4]
mov     [eax+14h], edx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A4A90 endp




sub_4A4ACD proc near

var_18= dword ptr -18h

; FUNCTION CHUNK AT 004A518C SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     ecx, eax
test    byte ptr [eax+3], 1
jnz     short loc_4A4B45
or      byte ptr [ecx+3], 1
mov     word ptr [ecx+0BCh], 0
mov     word ptr [ecx+86h], 0
mov     edx, [ecx+6Ch]
mov     al, [edx+1]
mov     [ecx+72h], al
mov     byte ptr [ecx+73h], 0
mov     byte ptr [ecx+71h], 4
mov     word ptr [ecx+4], 5
mov     ds:byte_55BD93, 60h ; '`'
mov     ds:byte_55BD94, 2
xor     eax, eax

loc_4A4B1A:
mov     edx, [ecx+6Fh]
sar     edx, 18h
xor     ebx, ebx
mov     bx, ax
cmp     ebx, edx
jge     short loc_4A4B45
sub     edx, ebx
mov     ebx, edx
shl     edx, 2
sub     edx, ebx
mov     ebx, [ecx+6Ch]
sub     ebx, edx
mov     edx, ebx
mov     bl, ds:byte_530220
mov     [edx+2], bl
inc     eax
jmp     short loc_4A4B1A

loc_4A4B45:
xor     edx, edx
mov     [esp+18h+var_18], edx
or      byte ptr [ecx+3], 10h
mov     bx, [ecx+4]
test    bx, bx
jg      loc_4A4D5D
mov     al, [ecx+0BBh]
test    al, 40h
jz      short loc_4A4B9F
mov     ebx, ds:dword_55B994
test    ebx, ebx
jz      short loc_4A4B90
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
and     byte ptr [ecx+3], 0FEh
mov     [esp+18h+var_18], 1
jmp     loc_4A4D64

loc_4A4B90:
mov     edx, 1
mov     eax, 1C6h
jmp     loc_4A4D24

loc_4A4B9F:
test    al, 10h
jz      short loc_4A4BCC
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
and     byte ptr [ecx+3], 0FEh
mov     [esp+18h+var_18], 1
xor     edx, edx
mov     ds:dword_55B994, edx
jmp     loc_4A4D64

loc_4A4BCC:
mov     dl, [ecx+0BAh]
test    dl, 20h
jz      short loc_4A4C45
mov     eax, [ecx+6Fh]
sar     eax, 18h
inc     byte ptr [ecx+71h]
mov     edx, [ecx+6Eh]
sar     edx, 18h
dec     eax
cmp     edx, eax
jge     short loc_4A4C38
xor     eax, eax
jmp     short loc_4A4BF6

loc_4A4BEF:
inc     eax
cmp     ax, 0Ah
jnb     short loc_4A4C20

loc_4A4BF6:
mov     ebx, [ecx+6Fh]
sar     ebx, 18h
mov     edx, [ecx+6Eh]
sar     edx, 18h
sub     ebx, edx
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     ebx, [ecx+6Ch]
sub     ebx, edx
xor     esi, esi
mov     si, ax
mov     dl, [ebx+2]
cmp     dl, ds:byte_530220[esi]
jnz     short loc_4A4BEF

loc_4A4C20:
mov     [ecx+86h], ax
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
jmp     loc_4A4D24

loc_4A4C38:
mov     al, [ecx+72h]
sub     al, 2
mov     [ecx+71h], al
jmp     loc_4A4D64

loc_4A4C45:
test    dl, 80h
jz      short loc_4A4CAA
mov     bl, [ecx+71h]
test    bl, bl
jz      short loc_4A4C58
mov     bh, bl
dec     bh
mov     [ecx+71h], bh

loc_4A4C58:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
xor     eax, eax
jmp     short loc_4A4C74

loc_4A4C6D:
inc     eax
cmp     ax, 0Ah
jnb     short loc_4A4C9E

loc_4A4C74:
mov     ebx, [ecx+6Fh]
sar     ebx, 18h
mov     edx, [ecx+6Eh]
sar     edx, 18h
sub     ebx, edx
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     ebx, [ecx+6Ch]
sub     ebx, edx
xor     esi, esi
mov     si, ax
mov     dl, [ebx+2]
cmp     dl, ds:byte_530220[esi]
jnz     short loc_4A4C6D

loc_4A4C9E:
mov     [ecx+86h], ax
jmp     loc_4A4D64

loc_4A4CAA:
test    dl, 10h
jz      short loc_4A4CC1
inc     word ptr [ecx+86h]
mov     word ptr [ecx+0BCh], 0
jmp     short loc_4A4D18

loc_4A4CC1:
test    byte ptr [ecx+0B8h], 10h
jz      short loc_4A4CFD
test    dl, 10h
jnz     short loc_4A4CFD
mov     si, [ecx+0BCh]
cmp     si, 0Ch
jbe     short loc_4A4CEE
inc     word ptr [ecx+86h]
mov     word ptr [ecx+0BCh], 0Ch
jmp     short loc_4A4D18

loc_4A4CEE:
mov     edi, esi
inc     edi
mov     [ecx+0BCh], di
jmp     loc_4A4D64

loc_4A4CFD:
mov     ah, [ecx+0BAh]
test    ah, 40h
jz      short loc_4A4D2B
mov     word ptr [ecx+0BCh], 0

loc_4A4D11:
dec     word ptr [ecx+86h]

loc_4A4D18:
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h

loc_4A4D24:
call    sub_4D89E4
jmp     short loc_4A4D64

loc_4A4D2B:
test    byte ptr [ecx+0B8h], 40h
jz      short loc_4A4D64
test    ah, 40h
jnz     short loc_4A4D64
mov     di, [ecx+0BCh]
cmp     di, 0Ch
jbe     short loc_4A4D51
mov     word ptr [ecx+0BCh], 0Ch
jmp     short loc_4A4D11

loc_4A4D51:
mov     eax, edi
inc     eax
mov     [ecx+0BCh], ax
jmp     short loc_4A4D64

loc_4A4D5D:
mov     esi, ebx
dec     esi
mov     [ecx+4], si

loc_4A4D64:
mov     di, [ecx+86h]
cmp     di, 0Ah
jl      short loc_4A4D7C
mov     word ptr [ecx+86h], 0
jmp     short loc_4A4D8A

loc_4A4D7C:
test    di, di
jge     short loc_4A4D8A
mov     word ptr [ecx+86h], 9

loc_4A4D8A:
cmp     word ptr [esp+18h+var_18], 0
jnz     loc_4A4F23
xor     eax, eax

loc_4A4D97:
mov     edx, [ecx+6Fh]
sar     edx, 18h
xor     ebx, ebx
mov     bx, ax
cmp     ebx, edx
jge     short loc_4A4DBB
sub     edx, ebx
mov     ebx, edx
shl     edx, 2
sub     edx, ebx
mov     ebx, [ecx+6Ch]
sub     ebx, edx
mov     byte ptr [ebx+1], 50h ; 'P'
inc     eax
jmp     short loc_4A4D97

loc_4A4DBB:
mov     ebx, [ecx+84h]
sar     ebx, 10h
mov     eax, [ecx+6Eh]
sar     eax, 18h
sub     edx, eax
mov     eax, edx
shl     edx, 2
sub     edx, eax
mov     eax, [ecx+6Ch]
sub     eax, edx
mov     dl, ds:byte_530220[ebx]
mov     [eax+2], dl
mov     edx, [ecx+6Fh]
sar     edx, 18h
mov     eax, [ecx+6Eh]
sar     eax, 18h
sub     edx, eax
mov     eax, edx
shl     edx, 2
sub     edx, eax
mov     eax, [ecx+6Ch]
sub     eax, edx
mov     dl, ds:byte_55BD93
mov     [eax+1], dl
mov     al, ds:byte_55BD94
mov     bl, dl
add     bl, al
mov     ds:byte_55BD93, bl
cmp     bl, 90h
jz      short loc_4A4E1D
cmp     bl, 60h ; '`'
jnz     short loc_4A4E23

loc_4A4E1D:
neg     ds:byte_55BD94

loc_4A4E23:
xor     eax, eax
xor     edi, edi
mov     ds:dword_55B994, edi

loc_4A4E2D:
mov     edx, [ecx+6Fh]
sar     edx, 18h
xor     esi, esi
mov     si, ax
dec     edx
cmp     esi, edx
jge     short loc_4A4E82
mov     ebx, ds:dword_55B994
mov     edx, ebx
shl     edx, 2
add     edx, ebx
add     edx, edx
mov     ds:dword_55B994, edx
mov     ebx, [ecx+6Fh]
sar     ebx, 18h
sub     ebx, esi
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     ebx, [ecx+6Ch]
sub     ebx, edx
mov     dl, [ebx+2]
and     edx, 0FFh
xor     ebx, ebx
mov     bl, ds:byte_530220
sub     edx, ebx
add     ds:dword_55B994, edx
inc     eax
jmp     short loc_4A4E2D

loc_4A4E82:
mov     eax, ds:dword_55B990
neg     eax
call    sub_4B6204
test    eax, eax
jz      short loc_4A4E9A
mov     edi, ds:dword_77E7A0
jmp     short loc_4A4EA0

loc_4A4E9A:
mov     edi, ds:dword_55B990

loc_4A4EA0:
cmp     edi, ds:dword_55B994
jnb     loc_4A4F90
mov     ebx, offset byte_55B900
mov     edx, edi
mov     eax, 2
call    sub_4A604B
xor     eax, eax

loc_4A4EBF:
mov     edx, [ecx+6Fh]
sar     edx, 18h
xor     ebx, ebx
mov     bx, ax
lea     esi, [edx-1]
cmp     ebx, esi
jge     short loc_4A4EEB
sub     edx, ebx
mov     esi, edx
shl     edx, 2
sub     edx, esi
mov     esi, [ecx+6Ch]
sub     esi, edx
mov     dl, ds:byte_55B901[ebx]
mov     [esi+2], dl
inc     eax
jmp     short loc_4A4EBF

loc_4A4EEB:
mov     ds:dword_55B994, edi
mov     eax, [ecx+6Fh]
sar     eax, 18h
mov     edx, [ecx+6Eh]
sar     edx, 18h
sub     eax, edx
mov     edx, eax
shl     edx, 2
sub     edx, eax
mov     eax, [ecx+6Ch]
sub     eax, edx
mov     al, [eax+2]
xor     ah, ah
xor     edx, edx
mov     dl, ds:byte_530220
sub     eax, edx
mov     [ecx+86h], ax
jmp     short loc_4A4F90

loc_4A4F23:
mov     edx, ds:dword_55B994
mov     ebx, offset byte_55B900
mov     eax, 2
call    sub_4A604B
xor     eax, eax

loc_4A4F3A:
mov     edx, [ecx+6Fh]
sar     edx, 18h
xor     ebx, ebx
mov     bx, ax
lea     esi, [edx-1]
cmp     ebx, esi
jge     short loc_4A4F66
sub     edx, ebx
mov     esi, edx
shl     edx, 2
sub     edx, esi
mov     esi, [ecx+6Ch]
sub     esi, edx
mov     dl, ds:byte_55B901[ebx]
mov     [esi+2], dl
inc     eax
jmp     short loc_4A4F3A

loc_4A4F66:
xor     eax, eax

loc_4A4F68:
mov     ebx, [ecx+6Fh]
sar     ebx, 18h
xor     edx, edx
mov     dx, ax
cmp     edx, ebx
jge     short loc_4A4F8C
sub     ebx, edx
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     ebx, [ecx+6Ch]
sub     ebx, edx
mov     byte ptr [ebx+1], 80h
inc     eax
jmp     short loc_4A4F68

loc_4A4F8C:
add     dword ptr [ecx+6Ch], 2

loc_4A4F90:
or      byte ptr [ecx+2], 80h
xor     eax, eax
mov     ax, word ptr [esp+18h+var_18]
add     esp, 4
jmp     loc_4A518C
sub_4A4ACD endp




sub_4A4FA2 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+6Ch]
xor     ebx, ebx
mov     bl, [eax+1]
mov     ecx, ds:dword_77E7E0+2
sar     ecx, 10h
cmp     ebx, ecx
jg      short loc_4A4FCA
xor     ebx, ebx
mov     bl, [eax+2]
cmp     ebx, ecx
jl      short loc_4A4FCA
mov     bl, [eax+3]
jmp     short loc_4A4FD0

loc_4A4FCA:
mov     ebx, [edx+6Ch]
mov     bl, [ebx+4]

loc_4A4FD0:
cmp     bl, 0FFh
jnz     short loc_4A4FDE
add     dword ptr [edx+6Ch], 5
jmp     loc_4A3054

loc_4A4FDE:
xor     ah, ah
mov     al, bl
mov     [edx+0C2h], ax
xor     eax, eax
mov     al, bl
mov     ecx, [edx+44h]
mov     ax, [ecx+eax*2]
and     eax, 0FFFFh
add     ecx, eax
mov     [edx+6Ch], ecx
mov     [edx+48h], ecx
jmp     loc_4A3054
sub_4A4FA2 endp




sub_4A5006 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
test    byte ptr [eax+3], 1
jnz     short loc_4A502C
or      byte ptr [ecx+3], 1
and     byte ptr [ecx+1], 7Fh
mov     word ptr [ecx+4], 5
mov     al, [ecx+79h]
mov     [ecx+71h], al
mov     ds:byte_55BD90, 0FFh

loc_4A502C:
and     byte ptr [ecx+2], 0BFh
mov     dx, [ecx+4]
test    dx, dx
jg      loc_4A46CE
xor     eax, eax
call    sub_4A0595
mov     eax, 1
call    sub_4A0595
mov     al, [ecx+0BBh]
test    al, 10h
jnz     short loc_4A5061
test    byte ptr [ecx+0BAh], 8
jz      short loc_4A50A0

loc_4A5061:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
mov     al, [ecx+71h]
mov     [ecx+79h], al
and     byte ptr [ecx+3], 0FEh
mov     eax, [ecx+6Ch]
xor     ebx, ebx
mov     bl, [eax+2]
mov     edx, [ecx+44h]
mov     al, [eax+1]
and     eax, 0FFh
call    sub_4A0CDD

loc_4A5094:
mov     ds:byte_55BD90, 0FFh
jmp     loc_4A3E61

loc_4A50A0:
test    al, 40h
jz      short loc_4A510F
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
cmp     ds:byte_55BD90, 0FFh
jz      short loc_4A50FA
mov     edx, [ecx+6Eh]
sar     edx, 18h
xor     eax, eax
mov     al, ds:byte_55BD8D
add     eax, edx
mov     bl, byte ptr ds:(dword_5F88B5+3)[eax]
xor     edx, edx
mov     dl, ds:byte_55BD90
mov     bh, byte ptr ds:(dword_5F88B5+3)[edx]
mov     byte ptr ds:(dword_5F88B5+3)[eax], bh
mov     byte ptr ds:(dword_5F88B5+3)[edx], bl
call    sub_4E417F
mov     al, [ecx+71h]
mov     [ecx+79h], al
jmp     short loc_4A5094

loc_4A50FA:
mov     al, [ecx+71h]
mov     ah, ds:byte_55BD8D
add     al, ah
mov     ds:byte_55BD90, al
jmp     loc_4A3E61

loc_4A510F:
mov     dh, ds:byte_55BD8D
test    dh, dh
jbe     short loc_4A5139
cmp     dh, ds:byte_55BD88
jnb     short loc_4A5139
mov     edx, 20018h
xor     eax, eax
call    sub_4A05F5
mov     edx, 20019h
mov     eax, 1
jmp     short loc_4A514A

loc_4A5139:
mov     bh, ds:byte_55BD8D
test    bh, bh
jbe     short loc_4A5154
mov     edx, 20018h

loc_4A5148:
xor     eax, eax

loc_4A514A:
call    sub_4A05F5
jmp     loc_4A3E61

loc_4A5154:
cmp     bh, ds:byte_55BD88
jnb     loc_4A3E61
mov     edx, 20019h
jmp     short loc_4A5148
sub_4A5006 endp




sub_4A5167 proc near
add     word ptr [eax+10h], 0Ch
inc     dword ptr [eax+14h]
retn
sub_4A5167 endp




sub_4A5170 proc near

; FUNCTION CHUNK AT 004A518C SIZE 00000006 BYTES
; FUNCTION CHUNK AT 004A5192 SIZE 0000028D BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     al, [eax+7Dh]
cmp     al, 1
jb      short loc_4A5192
jbe     loc_4A526C
cmp     al, 2
jz      loc_4A53BC
sub_4A5170 endp

; START OF FUNCTION CHUNK FOR sub_4A553E
;   ADDITIONAL PARENT FUNCTION sub_4A1364
;   ADDITIONAL PARENT FUNCTION sub_4A3FB2
;   ADDITIONAL PARENT FUNCTION sub_4A4ACD
;   ADDITIONAL PARENT FUNCTION sub_4A5170

loc_4A518C:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4A553E
; START OF FUNCTION CHUNK FOR sub_4A5170

loc_4A5192:
test    al, al
jnz     short loc_4A518C
or      byte ptr [edx+3], 14h
mov     eax, [edx]
and     eax, 8000000h
mov     [edx+80h], eax
or      byte ptr [edx+3], 8
mov     byte ptr [edx+85h], 8
mov     eax, [edx+6Ch]
mov     al, [eax+2]
xor     ah, ah
mov     [edx+0B6h], ax
mov     [edx+0B4h], ax
inc     byte ptr [edx+7Dh]
mov     ax, [edx+0B4h]
mov     [edx+88h], ax
mov     edi, eax
neg     edi
mov     [edx+88h], di
xor     eax, eax
mov     al, [edx+7Fh]
imul    eax, 6
mov     [edx+8Ah], ax
xor     eax, eax
mov     al, [edx+7Eh]
imul    ebx, eax, 0Ch
mov     ax, [edx+0B4h]
add     ebx, eax
mov     [edx+8Ch], bx
xor     eax, eax
mov     al, [edx+7Fh]
imul    eax, 6
mov     [edx+8Eh], ax
mov     ax, [edx+0B4h]
mov     [edx+90h], ax
neg     eax
mov     [edx+90h], ax
xor     eax, eax
mov     al, [edx+7Fh]
imul    eax, 6
mov     [edx+92h], ax
xor     eax, eax
mov     al, [edx+7Eh]
imul    ebx, eax, 0Ch
mov     ax, [edx+0B4h]
add     ebx, eax
mov     [edx+94h], bx
xor     eax, eax
mov     al, [edx+7Fh]
imul    eax, 6
mov     [edx+96h], ax
jmp     loc_4A518C

loc_4A526C:
or      byte ptr [edx+3], 10h
xor     eax, eax
mov     al, [edx+85h]
sub     [edx+8Ah], ax
xor     eax, eax
mov     al, [edx+85h]
sub     [edx+8Eh], ax
xor     eax, eax
mov     al, [edx+85h]
add     [edx+92h], ax
xor     eax, eax
mov     al, [edx+85h]
add     [edx+96h], ax
mov     eax, [edx+8]
sar     eax, 10h
mov     ecx, [edx+88h]
sar     ecx, 10h
lea     ebx, [eax+ecx]
xor     ecx, ecx
mov     cx, [edx+0B6h]
sub     eax, ecx
cmp     ebx, eax
jg      loc_4A518C
or      byte ptr ds:dword_55BD7C+2, 20h
mov     ax, [edx+0B4h]
mov     [edx+88h], ax
neg     eax
mov     [edx+88h], ax
mov     ax, [edx+0B6h]
mov     [edx+8Ah], ax
mov     ebx, eax
neg     ebx
mov     [edx+8Ah], bx
xor     ebx, ebx
mov     bl, [edx+7Eh]
imul    ebx, 0Ch
mov     ax, [edx+0B4h]
add     ebx, eax
mov     [edx+8Ch], bx
mov     ax, [edx+0B6h]
mov     [edx+8Eh], ax
mov     ecx, eax
neg     ecx
mov     [edx+8Eh], cx
mov     ax, [edx+0B4h]
mov     [edx+90h], ax
mov     esi, eax
neg     esi
mov     [edx+90h], si
xor     eax, eax
mov     al, [edx+7Fh]
imul    ebx, eax, 0Ch
mov     ax, [edx+0B6h]
add     ebx, eax
mov     [edx+92h], bx
xor     eax, eax
mov     al, [edx+7Eh]
imul    ebx, eax, 0Ch
mov     ax, [edx+0B4h]
add     ebx, eax
mov     [edx+94h], bx
xor     eax, eax
mov     al, [edx+7Fh]
imul    ebx, eax, 0Ch
mov     ax, [edx+0B6h]
add     ebx, eax
mov     [edx+96h], bx
inc     byte ptr [edx+7Dh]
or      byte ptr [edx+3], 12h
mov     ecx, [edx]
and     ecx, 0F7FFFFFFh
mov     eax, [edx+80h]
or      ecx, eax
mov     [edx], ecx
add     dword ptr [edx+6Ch], 3
jmp     loc_4A518C

loc_4A53BC:
or      byte ptr [edx+3], 10h
xor     eax, eax
mov     al, [edx+85h]
add     [edx+8Ah], ax
xor     eax, eax
mov     al, [edx+85h]
add     [edx+8Eh], ax
xor     eax, eax
mov     al, [edx+85h]
sub     [edx+92h], ax
xor     eax, eax
mov     al, [edx+85h]
sub     [edx+96h], ax
mov     ecx, [edx+88h]
sar     ecx, 10h
mov     eax, [edx+90h]
sar     eax, 10h
cmp     ecx, eax
jle     loc_4A518C
and     byte ptr [edx+3], 0F9h
jmp     loc_4A518C
; END OF FUNCTION CHUNK FOR sub_4A5170



sub_4A541F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     dl, [eax+7Dh]
test    dl, dl
jbe     short loc_4A5438
cmp     dl, 2
jz      loc_4A5528
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A5438:
or      byte ptr [eax+3], 6
add     byte ptr [eax+7Dh], 2
mov     edx, [eax+6Ch]
mov     dl, [edx+2]
xor     dh, dh
mov     [eax+0B6h], dx
mov     [eax+0B4h], dx
or      byte ptr ds:dword_55BD7C+2, 20h
mov     dx, [eax+0B4h]
mov     [eax+88h], dx
neg     edx
mov     [eax+88h], dx
mov     dx, [eax+0B6h]
mov     [eax+8Ah], dx
mov     ebx, edx
neg     ebx
mov     [eax+8Ah], bx
xor     edx, edx
mov     dl, [eax+7Eh]
imul    ebx, edx, 0Ch
mov     dx, [eax+0B4h]
add     ebx, edx
mov     [eax+8Ch], bx
mov     dx, [eax+0B6h]
mov     [eax+8Eh], dx
mov     ecx, edx
neg     ecx
mov     [eax+8Eh], cx
mov     dx, [eax+0B4h]
mov     [eax+90h], dx
mov     esi, edx
neg     esi
mov     [eax+90h], si
xor     edx, edx
mov     dl, [eax+7Fh]
imul    ebx, edx, 0Ch
mov     dx, [eax+0B6h]
add     ebx, edx
mov     [eax+92h], bx
xor     edx, edx
mov     dl, [eax+7Eh]
imul    ebx, edx, 0Ch
mov     dx, [eax+0B4h]
add     ebx, edx
mov     [eax+94h], bx
xor     edx, edx
mov     dl, [eax+7Fh]
imul    edx, 0Ch
mov     bx, [eax+0B6h]
add     edx, ebx
mov     [eax+96h], dx
add     dword ptr [eax+6Ch], 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A5528:
mov     dl, [eax+3]
or      dl, 10h
mov     [eax+3], dl
mov     dh, dl
and     dh, 0F9h
mov     [eax+3], dh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A541F endp




sub_4A553E proc near

; FUNCTION CHUNK AT 004A518C SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
xor     eax, eax
mov     al, [esi+7Eh]
imul    edx, eax, 0Ch
mov     ax, [esi+0B4h]
add     edx, eax
mov     [esi+8Ch], dx
xor     eax, eax
mov     al, [esi+7Eh]
imul    eax, 0Ch
mov     dx, [esi+0B4h]
add     eax, edx
mov     [esi+94h], ax
xor     edx, edx
mov     dl, [esi+7Ch]
mov     dl, ds:byte_52E402[edx]
and     edx, 0FFh
mov     eax, esi
call    sub_4A5EC8
mov     ax, [esi+8]
mov     dx, [esi+88h]
add     edx, eax
dec     edx
mov     eax, [esi+0A0h]
mov     [eax+8], dx
mov     dx, [esi+0Ah]
add     dx, [esi+8Ah]
dec     edx
mov     eax, [esi+0A0h]
mov     [eax+0Ah], dx
mov     dx, [esi+8]
add     dx, [esi+8Ch]
inc     edx
mov     eax, [esi+0A0h]
mov     [eax+10h], dx
mov     dx, [esi+0Ah]
add     dx, [esi+8Eh]
dec     edx
mov     eax, [esi+0A0h]
mov     [eax+12h], dx
mov     dx, [esi+8]
add     dx, [esi+88h]
mov     eax, [esi+0A0h]
mov     [eax+18h], dx
mov     dx, [esi+0Ah]
add     dx, [esi+8Ah]
mov     eax, [esi+0A0h]
mov     [eax+1Ah], dx
mov     dx, [esi+8]
add     dx, [esi+8Ch]
mov     eax, [esi+0A0h]
mov     [eax+20h], dx
mov     dx, [esi+0Ah]
add     dx, [esi+8Eh]
mov     eax, [esi+0A0h]
mov     [eax+22h], dx
mov     dx, [esi+8]
add     dx, [esi+90h]
mov     eax, [esi+0A4h]
mov     [eax+8], dx
mov     dx, [esi+0Ah]
add     dx, [esi+92h]
mov     eax, [esi+0A4h]
mov     [eax+0Ah], dx
mov     dx, [esi+8]
add     dx, [esi+94h]
mov     eax, [esi+0A4h]
mov     [eax+10h], dx
mov     dx, [esi+0Ah]
add     dx, [esi+96h]
mov     eax, [esi+0A4h]
mov     [eax+12h], dx
mov     ax, [esi+8]
mov     dx, [esi+90h]
add     edx, eax
dec     edx
mov     eax, [esi+0A4h]
mov     [eax+18h], dx
mov     dx, [esi+0Ah]
add     dx, [esi+92h]
inc     edx
mov     eax, [esi+0A4h]
mov     [eax+1Ah], dx
mov     dx, [esi+8]
add     dx, [esi+94h]
inc     edx
mov     eax, [esi+0A4h]
mov     [eax+20h], dx
mov     dx, [esi+0Ah]
add     dx, [esi+96h]
inc     edx
mov     eax, [esi+0A4h]
mov     [eax+22h], dx
mov     ax, [esi+8]
mov     dx, [esi+88h]
add     edx, eax
dec     edx
mov     eax, [esi+0A8h]
mov     [eax+8], dx
mov     dx, [esi+0Ah]
add     dx, [esi+8Ah]
dec     edx
mov     eax, [esi+0A8h]
mov     [eax+0Ah], dx
mov     dx, [esi+8]
add     dx, [esi+88h]
mov     eax, [esi+0A8h]
mov     [eax+10h], dx
mov     dx, [esi+0Ah]
add     dx, [esi+8Ah]
mov     eax, [esi+0A8h]
mov     [eax+12h], dx
mov     ax, [esi+8]
mov     dx, [esi+90h]
add     edx, eax
dec     edx
mov     eax, [esi+0A8h]
mov     [eax+18h], dx
mov     dx, [esi+0Ah]
add     dx, [esi+92h]
inc     edx
mov     eax, [esi+0A8h]
mov     [eax+1Ah], dx
mov     dx, [esi+8]
add     dx, [esi+90h]
mov     eax, [esi+0A8h]
mov     [eax+20h], dx
mov     dx, [esi+0Ah]
add     dx, [esi+92h]
mov     eax, [esi+0A8h]
mov     [eax+22h], dx
mov     dx, [esi+8]
add     dx, [esi+8Ch]
mov     eax, [esi+0ACh]
mov     [eax+8], dx
mov     dx, [esi+0Ah]
add     dx, [esi+8Eh]
mov     eax, [esi+0ACh]
mov     [eax+0Ah], dx
mov     dx, [esi+8]
add     dx, [esi+8Ch]
inc     edx
mov     eax, [esi+0ACh]
mov     [eax+10h], dx
mov     dx, [esi+0Ah]
add     dx, [esi+8Eh]
dec     edx
mov     eax, [esi+0ACh]
mov     [eax+12h], dx
mov     dx, [esi+8]
add     dx, [esi+94h]
mov     eax, [esi+0ACh]
mov     [eax+18h], dx
mov     dx, [esi+0Ah]
add     dx, [esi+96h]
mov     eax, [esi+0ACh]
mov     [eax+1Ah], dx
mov     dx, [esi+8]
add     dx, [esi+94h]
inc     edx
mov     eax, [esi+0ACh]
mov     [eax+20h], dx
mov     dx, [esi+0Ah]
add     dx, [esi+96h]
inc     edx
mov     eax, [esi+0ACh]
mov     [eax+22h], dx
mov     edx, [esi+0A0h]
mov     edi, [esi+3Ah]
sar     edi, 18h
shl     edi, 2
mov     eax, ds:dword_77EA74
add     eax, 70h ; 'p'
add     eax, edi
call    sub_4F87A6
mov     edx, [esi+0A4h]
mov     eax, [esi+3Ah]
sar     eax, 18h
shl     eax, 2
mov     edi, ds:dword_77EA74
add     edi, 70h ; 'p'
add     eax, edi
call    sub_4F87A6
mov     edx, [esi+0A8h]
mov     edi, [esi+3Ah]
sar     edi, 18h
shl     edi, 2
mov     eax, ds:dword_77EA74
add     eax, 70h ; 'p'
add     eax, edi
call    sub_4F87A6
mov     edx, [esi+0ACh]
mov     edi, [esi+3Ah]
sar     edi, 18h
shl     edi, 2
mov     eax, ds:dword_77EA74
add     eax, 70h ; 'p'
add     eax, edi
call    sub_4F87A6
mov     dx, [esi+8]
add     dx, [esi+88h]
mov     eax, [esi+98h]
mov     [eax+8], dx
mov     dx, [esi+0Ah]
add     dx, [esi+8Ah]
mov     eax, [esi+98h]
mov     [eax+0Ah], dx
mov     dx, [esi+8]
add     dx, [esi+8Ch]
mov     eax, [esi+98h]
mov     [eax+0Ch], dx
mov     dx, [esi+0Ah]
add     dx, [esi+8Eh]
mov     eax, [esi+98h]
mov     [eax+0Eh], dx
mov     dx, [esi+8]
add     dx, [esi+90h]
mov     eax, [esi+98h]
mov     [eax+10h], dx
mov     dx, [esi+0Ah]
add     dx, [esi+92h]
mov     eax, [esi+98h]
mov     [eax+12h], dx
mov     dx, [esi+8]
add     dx, [esi+94h]
mov     eax, [esi+98h]
mov     [eax+14h], dx
mov     dx, [esi+0Ah]
add     dx, [esi+96h]
mov     eax, [esi+98h]
mov     [eax+16h], dx
mov     edx, [esi+98h]
mov     edi, [esi+3Ah]
sar     edi, 18h
shl     edi, 2
mov     eax, ds:dword_77EA74
add     eax, 70h ; 'p'
add     eax, edi
call    sub_4F87A6
mov     edi, ds:dword_77E6DC
push    0
lea     eax, [edi+0Ch]
mov     ds:dword_77E6DC, eax
mov     ecx, 100h
mov     ebx, 3C0h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     edx, [esi+3Ah]
sar     edx, 18h
shl     edx, 2
mov     eax, ds:dword_77EA74
add     eax, 70h ; 'p'
add     eax, edx
mov     edx, edi
call    sub_4F87A6
mov     dx, [esi+8]
add     dx, [esi+88h]
mov     eax, [esi+9Ch]
mov     [eax+8], dx
mov     dx, [esi+0Ah]
add     dx, [esi+8Ah]
mov     eax, [esi+9Ch]
mov     [eax+0Ah], dx
mov     dx, [esi+8]
add     dx, [esi+8Ch]
mov     eax, [esi+9Ch]
mov     [eax+0Ch], dx
mov     dx, [esi+0Ah]
add     dx, [esi+8Eh]
mov     eax, [esi+9Ch]
mov     [eax+0Eh], dx
mov     dx, [esi+8]
add     dx, [esi+90h]
mov     eax, [esi+9Ch]
mov     [eax+10h], dx
mov     dx, [esi+0Ah]
add     dx, [esi+92h]
mov     eax, [esi+9Ch]
mov     [eax+12h], dx
mov     dx, [esi+8]
add     dx, [esi+94h]
mov     eax, [esi+9Ch]
mov     [eax+14h], dx
mov     dx, [esi+0Ah]
add     dx, [esi+96h]
mov     eax, [esi+9Ch]
mov     [eax+16h], dx
mov     edx, [esi+9Ch]
mov     edi, [esi+3Ah]
sar     edi, 18h
shl     edi, 2
mov     eax, ds:dword_77EA74
add     eax, 70h ; 'p'
add     eax, edi
call    sub_4F87A6
mov     edi, ds:dword_77E6DC
push    0
lea     eax, [edi+0Ch]
mov     ds:dword_77E6DC, eax
mov     ecx, 100h
mov     ebx, 3C0h
mov     edx, 2
xor     eax, eax
call    sub_4F892F
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     eax, [esi+3Ah]
sar     eax, 18h
shl     eax, 2
mov     edx, ds:dword_77EA74
add     edx, 70h ; 'p'

loc_4A5AD9:
add     eax, edx
mov     edx, edi
call    sub_4F87A6
jmp     loc_4A518C
sub_4A553E endp




sub_4A5AE7 proc near
push    ecx
push    edx
mov     dl, [eax+7Dh]
cmp     dl, 1
jb      short loc_4A5B03
jbe     loc_4A5B84
cmp     dl, 2
jz      loc_4A5BC6
pop     edx
pop     ecx
retn

loc_4A5B03:
test    dl, dl
jnz     loc_4A5BEC
or      byte ptr [eax+3], 14h
mov     edx, [eax]
and     edx, 8000000h
mov     [eax+80h], edx
or      byte ptr [eax+3], 8
inc     byte ptr [eax+7Dh]
mov     byte ptr [eax+0B0h], 0
mov     byte ptr [eax+0B1h], 0
mov     byte ptr [eax+0B2h], 0
mov     word ptr [eax+88h], 0
mov     word ptr [eax+8Ah], 0
mov     word ptr [eax+8Ch], 140h
mov     word ptr [eax+8Eh], 0
mov     word ptr [eax+90h], 0
mov     word ptr [eax+92h], 0F0h
mov     word ptr [eax+94h], 140h
mov     word ptr [eax+96h], 0F0h
pop     edx
pop     ecx
retn

loc_4A5B84:
or      byte ptr [eax+3], 10h
add     byte ptr [eax+0B0h], 8
add     byte ptr [eax+0B1h], 8
add     byte ptr [eax+0B2h], 8
cmp     byte ptr [eax+0B0h], 80h
jnz     short loc_4A5BEC
or      byte ptr [eax+3], 12h
mov     ecx, [eax]
and     ecx, 0F7FFFFFFh
mov     edx, [eax+80h]
or      ecx, edx
mov     [eax], ecx
add     dword ptr [eax+6Ch], 3
inc     byte ptr [eax+7Dh]
pop     edx
pop     ecx
retn

loc_4A5BC6:
or      byte ptr [eax+3], 10h
sub     byte ptr [eax+0B0h], 8
sub     byte ptr [eax+0B1h], 8
sub     byte ptr [eax+0B2h], 8
cmp     byte ptr [eax+0B0h], 0
jnz     short loc_4A5BEC
and     byte ptr [eax+3], 0F9h

loc_4A5BEC:
pop     edx
pop     ecx
retn
sub_4A5AE7 endp




sub_4A5BEF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     eax, ds:dword_77E6DC
lea     edx, [eax+28h]
mov     ds:dword_77E6DC, edx
mov     [esi+98h], eax
call    sub_4F87CF
mov     eax, [esi+98h]
mov     edx, 1
call    sub_4F884E
mov     eax, [esi+98h]
mov     dl, [esi+0B0h]
mov     [eax+4], dl
mov     eax, [esi+98h]
mov     dl, [esi+0B1h]
mov     [eax+5], dl
mov     eax, [esi+98h]
mov     dl, [esi+0B2h]
mov     [eax+6], dl
mov     edi, ds:dword_77E6DC
push    0
lea     eax, [edi+0Ch]
mov     ds:dword_77E6DC, eax
mov     ecx, 100h
mov     ebx, 3C0h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     edx, [esi+3Ah]
sar     edx, 18h
shl     edx, 2
mov     eax, ds:dword_77EA74
add     eax, 70h ; 'p'
add     eax, edx
mov     edx, edi
call    sub_4F87A6
mov     eax, [esi+98h]
mov     dx, [esi+88h]
mov     [eax+8], dx
mov     eax, [esi+98h]
mov     dx, [esi+8Ah]
mov     [eax+0Ah], dx
mov     eax, [esi+98h]
mov     dx, [esi+8Ch]
mov     [eax+0Ch], dx
mov     eax, [esi+98h]
mov     dx, [esi+8Eh]
mov     [eax+0Eh], dx
mov     eax, [esi+98h]
mov     dx, [esi+90h]
mov     [eax+10h], dx
mov     eax, [esi+98h]
mov     dx, [esi+92h]
mov     [eax+12h], dx
mov     eax, [esi+98h]
mov     dx, [esi+94h]
mov     [eax+14h], dx
mov     eax, [esi+98h]
mov     dx, [esi+96h]
mov     [eax+16h], dx
mov     edx, [esi+98h]
mov     edi, [esi+3Ah]
sar     edi, 18h
shl     edi, 2
mov     eax, ds:dword_77EA74
add     eax, 70h ; 'p'
add     eax, edi
call    sub_4F87A6
mov     edi, ds:dword_77E6DC
push    0
lea     eax, [edi+0Ch]
mov     ds:dword_77E6DC, eax
mov     ecx, 100h
mov     ebx, 3C0h
mov     edx, 2
xor     eax, eax
call    sub_4F892F
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     edx, [esi+3Ah]
sar     edx, 18h
shl     edx, 2
mov     eax, ds:dword_77EA74
add     eax, 70h ; 'p'
jmp     loc_4A5AD9
sub_4A5BEF endp




sub_4A5D85 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     dl, [eax+7Dh]
test    dl, dl
jbe     short loc_4A5D9E
cmp     dl, 2
jz      loc_4A5E8E
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A5D9E:
or      byte ptr [eax+3], 6
add     byte ptr [eax+7Dh], 2
mov     edx, [eax+6Ch]
mov     dl, [edx+2]
xor     dh, dh
mov     [eax+0B6h], dx
mov     [eax+0B4h], dx
or      byte ptr ds:dword_55BD7C+2, 20h
mov     dx, [eax+0B4h]
mov     [eax+88h], dx
neg     edx
mov     [eax+88h], dx
mov     dx, [eax+0B6h]
mov     [eax+8Ah], dx
mov     ebx, edx
neg     ebx
mov     [eax+8Ah], bx
xor     edx, edx
mov     dl, [eax+7Eh]
imul    ebx, edx, 0Ch
mov     dx, [eax+0B4h]
add     ebx, edx
mov     [eax+8Ch], bx
mov     dx, [eax+0B6h]
mov     [eax+8Eh], dx
mov     ecx, edx
neg     ecx
mov     [eax+8Eh], cx
mov     dx, [eax+0B4h]
mov     [eax+90h], dx
mov     esi, edx
neg     esi
mov     [eax+90h], si
xor     edx, edx
mov     dl, [eax+7Fh]
imul    ebx, edx, 0Ch
mov     dx, [eax+0B6h]
add     ebx, edx
mov     [eax+92h], bx
xor     edx, edx
mov     dl, [eax+7Eh]
imul    ebx, edx, 0Ch
mov     dx, [eax+0B4h]
add     ebx, edx
mov     [eax+94h], bx
xor     edx, edx
mov     dl, [eax+7Fh]
imul    edx, 0Ch
mov     bx, [eax+0B6h]
add     edx, ebx
mov     [eax+96h], dx
add     dword ptr [eax+6Ch], 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A5E8E:
mov     dl, [eax+3]
or      dl, 10h
mov     [eax+3], dl
mov     dh, dl
and     dh, 0F9h
mov     [eax+3], dh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A5D85 endp




sub_4A5EA4 proc near
push    edx
mov     edx, eax
cmp     ds:word_55CCF2, 1
jnz     short loc_4A5EB7
mov     byte ptr [eax+7Ch], 0
jmp     short loc_4A5EBB

loc_4A5EB7:
mov     byte ptr [eax+7Ch], 4

loc_4A5EBB:
mov     eax, edx
call    sub_4A553E
mov     byte ptr [edx+7Ch], 7
pop     edx
retn
sub_4A5EA4 endp




sub_4A5EC8 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     ecx, edx
mov     eax, ds:dword_77E6DC
lea     edx, [eax+28h]
mov     ds:dword_77E6DC, edx
mov     [esi+98h], eax
mov     eax, ds:dword_77E6DC
lea     edx, [eax+28h]
mov     ds:dword_77E6DC, edx
mov     [esi+9Ch], eax
mov     eax, [esi+98h]
call    sub_4F87CF
mov     eax, [esi+98h]
mov     edx, 1
call    sub_4F884E
mov     eax, ecx
shl     ecx, 2
sub     ecx, eax
mov     eax, [esi+98h]
mov     dl, ds:byte_52E40B[ecx*2]
mov     [eax+4], dl
mov     eax, [esi+98h]
mov     dl, ds:byte_52E40C[ecx*2]
mov     [eax+5], dl
mov     eax, [esi+98h]
mov     dl, ds:byte_52E40D[ecx*2]
mov     [eax+6], dl
mov     eax, [esi+9Ch]
call    sub_4F87CF
mov     eax, [esi+9Ch]
mov     edx, 1
call    sub_4F884E
mov     eax, [esi+9Ch]
mov     dl, ds:byte_52E40E[ecx*2]
mov     [eax+4], dl
mov     eax, [esi+9Ch]
mov     dl, ds:byte_52E40F[ecx*2]
mov     [eax+5], dl
mov     eax, [esi+9Ch]
mov     dl, ds:byte_52E410[ecx*2]
mov     [eax+6], dl
xor     ebx, ebx

loc_4A5F97:
mov     eax, ds:dword_77E6DC
mov     ecx, ebx
shl     ecx, 2
lea     edx, [eax+34h]
mov     ds:dword_77E6DC, edx
lea     edx, [esi+ecx]
mov     [edx+0A0h], eax
call    sub_4F8817
mov     edi, [edx+0A0h]
mov     al, ds:byte_52E417[ecx]
mov     [edi+4], al
mov     edi, [edx+0A0h]
mov     [edi+5], al
mov     edi, [edx+0A0h]
mov     [edi+6], al
mov     edi, [edx+0A0h]
mov     al, ds:byte_52E418[ecx]
mov     [edi+0Ch], al
mov     edi, [edx+0A0h]
mov     [edi+0Dh], al
mov     edi, [edx+0A0h]
mov     [edi+0Eh], al
mov     edi, [edx+0A0h]
mov     al, ds:byte_52E419[ecx]
mov     [edi+14h], al
mov     edi, [edx+0A0h]
mov     [edi+15h], al
mov     edi, [edx+0A0h]
mov     [edi+16h], al
mov     edi, [edx+0A0h]
mov     al, ds:byte_52E41A[ecx]
mov     [edi+1Ch], al
mov     edi, [edx+0A0h]
mov     [edi+1Dh], al
mov     edx, [edx+0A0h]
mov     [edx+1Eh], al
inc     ebx
cmp     ebx, 4
jl      loc_4A5F97
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4A5EC8 endp




sub_4A604B proc near
push    ecx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     esi, edx
mov     edi, ebx
xor     ecx, ecx
jmp     short loc_4A6079

loc_4A6059:
lea     eax, [edi+ecx]
mov     bl, ss:byte_52E44F[ebp]
mov     [eax], bl

loc_4A6064:
xor     edx, edx
mov     eax, esi
mov     esi, ds:dword_52E437[ecx*4]
div     esi
mov     esi, edx
inc     ecx
cmp     ecx, 6
jnb     short loc_4A60A8

loc_4A6079:
xor     edx, edx
mov     eax, esi
div     ds:dword_52E437[ecx*4]
cmp     ds:dword_55BD95, 1
jz      short loc_4A6091
test    eax, eax
jz      short loc_4A6059

loc_4A6091:
lea     ebx, [edi+ecx]
mov     al, ds:byte_530220[eax]
mov     [ebx], al
mov     ds:dword_55BD95, 1
jmp     short loc_4A6064

loc_4A60A8:
xor     ebp, ebp
mov     ds:dword_55BD95, ebp
mov     al, ds:byte_530220
mov     [ecx+edi], al
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4A604B endp




sub_4A60BD proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
mov     esi, 3
xor     edx, edx
div     esi
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     al, ds:byte_530220[eax]
mov     [ecx+6], al
mov     esi, 1Eh
xor     edx, edx
mov     eax, ebx
div     esi
mov     eax, edx
mov     esi, 3
xor     edx, edx
div     esi
mov     al, ds:byte_530220[eax]
mov     [ecx+5], al
mov     esi, 1Eh
xor     edx, edx
mov     eax, ebx
div     esi
mov     esi, eax
mov     edi, 0Ah
xor     edx, edx
div     edi
mov     al, ds:byte_530220[edx]
mov     [ecx+3], al
mov     edi, 3Ch ; '<'
xor     edx, edx
mov     eax, esi
div     edi
mov     eax, edx
mov     esi, 0Ah
xor     edx, edx
div     esi
mov     al, ds:byte_530220[eax]
mov     [ecx+2], al
mov     esi, 708h
xor     edx, edx
mov     eax, ebx
div     esi
mov     ebx, 0Ah
xor     edx, edx
div     ebx
mov     al, ds:byte_530220[edx]
mov     [ecx], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4A60BD endp




sub_4A615C proc near
push    ebx
push    ecx
push    esi
mov     ebx, eax
mov     ecx, edx
mov     esi, 0Ah
xor     edx, edx
div     esi
mov     al, ds:byte_530220[eax]
mov     [ecx], al
xor     edx, edx
mov     eax, ebx
div     esi
mov     al, ds:byte_530220[edx]
mov     [ecx+1], al
mov     al, [ecx]
cmp     al, ds:byte_530220
jnz     short loc_4A6190
mov     byte ptr [ecx], 0Ah

loc_4A6190:
pop     esi
pop     ecx
pop     ebx
retn
sub_4A615C endp




sub_4A6194 proc near
push    ebx
push    ecx
push    edx
mov     dl, [eax+3]
test    dl, 1
jnz     short loc_4A61B1
mov     dh, dl
or      dh, 1
mov     [eax+3], dh
and     byte ptr [eax+1], 7Fh
mov     word ptr [eax+4], 5

loc_4A61B1:
and     byte ptr [eax+2], 0BFh
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_4A61C7
or      byte ptr ds:dword_55BD7C+2, 2
jmp     short loc_4A61CE

loc_4A61C7:
and     byte ptr ds:dword_55BD7C+2, 0FDh

loc_4A61CE:
mov     dx, [eax+4]
test    dx, dx
jg      loc_4A3E87
test    byte ptr [eax+0BBh], 40h
jz      short loc_4A621C
mov     edx, [eax+6Fh]
sar     edx, 18h
mov     ecx, [eax+6Eh]
sar     ecx, 18h
sub     edx, 3
cmp     ecx, edx
jl      short loc_4A621C
xor     bl, bl
mov     byte ptr ds:dword_55BD7C, bl
mov     edx, [eax+6Eh]
sar     edx, 18h
and     edx, 0FFh
or      edx, 40000000h
or      ds:dword_55BD7C, edx
jmp     loc_4A3E5D

loc_4A621C:
mov     edx, [eax+6Eh]
sar     edx, 18h
jmp     loc_4A3E57
sub_4A6194 endp




sub_4A6227 proc near
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, ecx
mov     edx, edi
add     edx, edx
cmp     esi, 1
jb      short loc_4A6242
jbe     short loc_4A6262
cmp     esi, 2
jz      short loc_4A627E
pop     edi
pop     esi
retn

loc_4A6242:
test    esi, esi
jnz     short loc_4A629C
mov     ds:byte_55BD8A, bl
mov     dx, ds:word_52E452[edx]
and     edx, 0FFFFh
mov     edx, ds:off_52FCC1[edx*4]
jmp     short loc_4A6292

loc_4A6262:
mov     ds:dword_55B990, ebx
mov     dx, ds:word_52E452[edx]
and     edx, 0FFFFh
mov     edx, ds:dword_52FCC5[edx*4]
jmp     short loc_4A6292

loc_4A627E:
mov     dx, ds:word_52E452[edx]
and     edx, 0FFFFh
mov     edx, ds:off_52FCBD[edx*4]

loc_4A6292:
mov     ebx, 0FFh
call    sub_4A0CDD

loc_4A629C:
pop     edi
pop     esi
retn
sub_4A6227 endp




sub_4A629F proc near
mov     ds:byte_55BD8A, al
retn
sub_4A629F endp




sub_4A62A5 proc near
mov     ds:dword_55B990, eax
retn
sub_4A62A5 endp




sub_4A62AB proc near
mov     ds:dword_55B980, eax
retn
sub_4A62AB endp




sub_4A62B1 proc near
mov     ds:dword_55B98C, eax
retn
sub_4A62B1 endp




sub_4A62B7 proc near
mov     ds:byte_55BD88, al
retn
sub_4A62B7 endp




sub_4A62BD proc near
push    edx
xor     edx, edx
mov     ds:dword_77E760, edx
mov     ds:dword_77E764, edx
mov     ds:dword_77E768, edx
pop     edx
retn
sub_4A62BD endp




sub_4A62D4 proc near
push    esi
mov     esi, eax
mov     eax, offset dword_77E760
cmp     byte ptr ds:dword_77E784, 3
jnz     short loc_4A631A
mov     byte ptr ds:dword_77E760, 1
mov     byte ptr ds:dword_77E760+1, dl
test    dl, 2
jz      short loc_4A6302
mov     word ptr ds:dword_77E760+2, 2
jmp     short loc_4A630B

loc_4A6302:
xor     edx, edx
mov     word ptr ds:dword_77E760+2, dx

loc_4A630B:
mov     [eax+4], bl
mov     [eax+5], cl
mov     word ptr [eax+6], 0
mov     [eax+8], esi

loc_4A631A:
pop     esi
retn
sub_4A62D4 endp

db 90h
jpt_4A6359 dd offset loc_4A6360 ; jump table for switch statement
dd offset loc_4A63B1
dd offset loc_4A641D
dd offset loc_4A644D



sub_4A632D proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, offset byte_5F8364
mov     ecx, offset dword_77E760
cmp     byte ptr ds:dword_77E760, 0
jz      def_4A6359      ; jumptable 004A6359 default case
mov     al, byte ptr ds:dword_77E760+2
cmp     al, 3           ; switch 4 cases
ja      def_4A6359      ; jumptable 004A6359 default case
xor     ebx, ebx
mov     bl, al
jmp     jpt_4A6359[ebx*4] ; switch jump

loc_4A6360:             ; jumptable 004A6359 case 0
mov     bh, 10h
mov     byte ptr ds:dword_5F836C+1, bh
xor     cl, cl
mov     byte ptr ds:dword_5F836C+2, cl
xor     edx, edx
mov     ds:dword_5F84E8, edx
xor     ch, ch
mov     byte ptr ds:dword_5F88B1, ch
inc     al
mov     byte ptr ds:dword_77E760+2, al
mov     dl, byte ptr ds:dword_77E764+1
xor     eax, eax
mov     al, byte ptr ds:dword_77E764
call    sub_4A0E24
test    byte ptr ds:dword_77E760+1, bh
jz      def_4A6359      ; jumptable 004A6359 default case
mov     ds:byte_5F88AD, 1

def_4A6359:             ; jumptable 004A6359 default case
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A63B1:             ; jumptable 004A6359 case 1
test    byte ptr ds:dword_77E760+1, 1
jz      short loc_4A63C3
and     ds:byte_5F8364, 0FDh
jmp     short loc_4A63CA

loc_4A63C3:
or      ds:byte_5F8364, 2

loc_4A63CA:
mov     bh, [edx+9]
cmp     bh, 0Bh
jz      short loc_4A63D7
cmp     bh, 0Ch
jnz     short loc_4A63DC

loc_4A63D7:
call    sub_4A0E35

loc_4A63DC:
xor     eax, eax
mov     al, [ecx+4]
mov     ebx, ds:dword_55BD7C
test    ds:dword_52E458[eax*4], ebx
jnz     short def_4A6359 ; jumptable 004A6359 default case
test    byte ptr [ecx+1], 4
jnz     short loc_4A63F9
or      byte ptr [edx], 2

loc_4A63F9:
test    byte ptr [ecx+1], 8
jnz     short loc_4A6408
cmp     byte ptr [edx+9], 10h
jnz     short loc_4A6408
inc     byte ptr [edx+0Ah]

loc_4A6408:
test    byte ptr [ecx+1], 10h
jz      short loc_4A6415
mov     byte ptr [edx+549h], 0

loc_4A6415:
mov     byte ptr [ecx], 0
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A641D:             ; jumptable 004A6359 case 2
xor     edi, edi
mov     ds:dword_5F84E8, edi
xor     cl, cl
mov     byte ptr ds:dword_5F88B1, cl
inc     al
mov     byte ptr ds:dword_77E760+2, al
xor     edx, edx
mov     dl, byte ptr ds:dword_77E764+1
xor     eax, eax
mov     al, byte ptr ds:dword_77E764
call    sub_4A0E24
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A644D:             ; jumptable 004A6359 case 3
test    byte ptr ds:dword_77E760+1, 1
jz      short loc_4A645F
and     ds:byte_5F8364, 0FDh
jmp     short loc_4A6466

loc_4A645F:
or      ds:byte_5F8364, 2

loc_4A6466:
mov     ah, [edx+9]
cmp     ah, 0Bh
jz      short loc_4A6473
cmp     ah, 0Ch
jnz     short loc_4A6478

loc_4A6473:
call    sub_4A0E35

loc_4A6478:
xor     eax, eax
mov     al, [ecx+4]
mov     ebx, ds:dword_55BD7C
test    ds:dword_52E458[eax*4], ebx
jnz     def_4A6359      ; jumptable 004A6359 default case
or      byte ptr [edx], 2
jmp     short loc_4A6415
sub_4A632D endp




sub_4A6495 proc near
call    sub_42C353
test    eax, eax
jz      short locret_4A64AA
mov     eax, 1
call    sub_4EEDA4
jmp     short sub_4A6495

locret_4A64AA:
retn
sub_4A6495 endp

byte_4A64AB db 0
dd 13h dup(0)
db 3 dup(0)
byte_4A64FB db 0
dd 0
dd 80000000h, 0E0000002h
db 1, 2 dup(0)



sub_4A650B proc near

var_38= byte ptr -38h
var_24= byte ptr -24h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 50h
mov     edx, offset unk_50A308
mov     eax, offset aMegamanCfg ; "MEGAMAN.CFG"
call    sub_4F93C1
mov     esi, eax
test    eax, eax
jz      loc_4A65C8
xor     ecx, ecx

loc_4A652D:
mov     ebx, esi
mov     edx, 14h
lea     eax, [esp+60h+var_24]
call    fgets_
test    eax, eax
jz      short loc_4A659E
test    ecx, ecx
jbe     short loc_4A654C
cmp     ecx, 1
jz      short loc_4A655C
jmp     short loc_4A656C

loc_4A654C:
lea     eax, [esp+60h+var_24]
call    unknown_libname_37 ; Watcom v9-*1.5  32bit NT runtime
mov     ds:bMenu, eax
jmp     short loc_4A659B

loc_4A655C:
lea     eax, [esp+60h+var_24]
call    unknown_libname_37 ; Watcom v9-*1.5  32bit NT runtime
mov     ds:dword_5303FC, eax
jmp     short loc_4A659B

loc_4A656C:
lea     eax, [ecx+ecx]
cmp     ecx, 16h
jge     short loc_4A657B
sub     eax, 4
mov     edx, esp
jmp     short loc_4A6582

loc_4A657B:
sub     eax, 2Ch ; ','
lea     edx, [esp+60h+var_38]

loc_4A6582:
add     eax, edx
lea     edx, [eax+1]
push    edx
push    eax
push    offset aDD      ; "%d %d"
lea     eax, [esp+6Ch+var_24]
push    eax
call    sscanf_
add     esp, 10h

loc_4A659B:
inc     ecx
jmp     short loc_4A652D

loc_4A659E:
mov     eax, esi
call    fclose_
cmp     ecx, 2
jle     short loc_4A65B3
mov     eax, esp
call    sub_4F90D9
jmp     short loc_4A65B8

loc_4A65B3:
call    sub_4F90E9

loc_4A65B8:
cmp     ecx, 16h
jle     short loc_4A65DE
lea     eax, [esp+60h+var_38]
call    sub_4F9113
jmp     short loc_4A65E3

loc_4A65C8:
mov     edx, 1
mov     ds:bMenu, edx
mov     ds:dword_5303FC, edx
call    sub_4F90E9

loc_4A65DE:
call    sub_4F9129

loc_4A65E3:
add     esp, 50h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A650B endp




sub_4A65EB proc near

var_4C= byte ptr -4Ch
var_4B= byte ptr -4Bh
var_24= byte ptr -24h
var_23= byte ptr -23h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 3Ch
mov     edx, offset aWt ; "wt"
mov     eax, offset aMegamanCfg ; "MEGAMAN.CFG"
call    sub_4F93C1
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      loc_4A669C
mov     eax, esp
call    sub_4F90BD
lea     eax, [esp+4Ch+var_24]
call    sub_4F90F7
mov     ebx, ds:bMenu
push    ebx
push    offset aD       ; "%d\n"
push    edx
call    sub_4F97C4
add     esp, 0Ch
mov     esi, ds:dword_5303FC
push    esi
push    offset aD       ; "%d\n"
push    edx
call    sub_4F97C4
add     esp, 0Ch
xor     edx, edx

loc_4A6649:
xor     ebx, ebx
mov     bl, [esp+edx*2+4Ch+var_4B]
push    ebx
mov     al, [esp+edx*2+50h+var_4C]
and     eax, 0FFh
push    eax
push    offset aDD_0    ; "%d %d\n"
push    ecx
call    sub_4F97C4
add     esp, 10h
inc     edx
cmp     edx, 14h
jl      short loc_4A6649
xor     edx, edx

loc_4A6670:
xor     ebx, ebx
mov     bl, [esp+edx*2+4Ch+var_23]
push    ebx
mov     al, [esp+edx*2+50h+var_24]
and     eax, 0FFh
push    eax
push    offset aDD_0    ; "%d %d\n"
push    ecx
call    sub_4F97C4
add     esp, 10h
inc     edx
cmp     edx, 0Ah
jl      short loc_4A6670
mov     eax, ecx
call    fclose_

loc_4A669C:
add     esp, 3Ch
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A65EB endp




sub_4A66A4 proc near
push    ebx
push    ecx
push    edx
push    esi
call    nullsub_1
call    sub_4EF08B
mov     edx, 78h ; 'x'
mov     eax, 0A0h
call    sub_4EF0C6
mov     eax, 180h
call    sub_4EF0D2
mov     edx, offset unk_570D7C
mov     eax, offset unk_5708B4
call    sub_4EECF9
mov     edx, offset unk_570DC4
mov     eax, offset unk_5708FC
call    sub_4EECF9
mov     edx, offset unk_5731D4
mov     eax, offset unk_572D0C
call    sub_4EECF9
mov     ecx, 8
mov     ebx, offset unk_5708FC
mov     edx, ecx
mov     eax, offset unk_5708B4
call    sub_4F8C1D
mov     edx, 4001h
mov     ds:dword_5708E8, edx
mov     ds:dword_570930, edx
mov     ecx, 4
mov     ebx, offset dword_570930
mov     edx, ecx
mov     eax, offset dword_5708E8
call    nullsub_2
mov     edx, ds:hWnd
mov     eax, ds:dword_55BDAC
call    sub_4F8C23
call    sub_4D8930
xor     eax, eax
call    nullsub_3
call    sub_4A680F
xor     ah, ah
mov     ds:byte_77EAC6, ah
mov     ds:dword_77EA74, offset unk_77E4C4
mov     ds:byte_77EAC1, 2
xor     esi, esi
mov     ds:dword_77E738, esi
mov     ds:dword_77E710, esi
mov     ds:dword_77E720, esi
xor     edx, edx

loc_4A6785:
mov     eax, edx
call    sub_4EF003
mov     ecx, edx
sar     ecx, 6
mov     ds:word_56F78C[ecx*2], ax
mov     eax, edx
call    sub_4EF008
mov     ds:word_564C34[ecx*2], ax
add     edx, 40h ; '@'
cmp     edx, 1000h
jl      short loc_4A6785
xor     dh, dh
mov     ds:byte_530418, dh
call    sub_4EED6C
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A66A4 endp




sub_4A67C5 proc near
push    ecx
push    edx
push    edi
cmp     ds:bMenu, 0
jz      short loc_4A67EF
cmp     ds:dword_530404, 1
jnz     short loc_4A680B
push    0               ; bShow
call    cs:__imp_ShowCursor
xor     edi, edi
mov     ds:dword_530404, edi
pop     edi
pop     edx
pop     ecx
retn

loc_4A67EF:
cmp     ds:dword_530404, 0
jnz     short loc_4A680B
push    1               ; bShow
call    cs:__imp_ShowCursor
mov     ds:dword_530404, 1

loc_4A680B:
pop     edi
pop     edx
pop     ecx
retn
sub_4A67C5 endp




sub_4A680F proc near
push    ebx
push    ecx
push    edx
push    0F0h
mov     ecx, 140h
xor     ebx, ebx
xor     edx, edx
mov     eax, offset unk_77E4D8
call    sub_4F88DA
push    0F0h
mov     ecx, 140h
mov     ebx, 100h
xor     edx, edx
mov     eax, offset unk_77E4C4
call    sub_4F8838
push    0F0h
mov     ecx, 140h
mov     ebx, 100h
xor     edx, edx
mov     eax, offset unk_77E568
call    sub_4F88DA
push    0F0h
mov     ecx, 140h
xor     ebx, ebx
xor     edx, edx
mov     eax, offset unk_77E554
call    sub_4F8838
mov     eax, offset unk_77E4C4
call    sub_4A6890
mov     eax, offset unk_77E554
call    sub_4A6890
pop     edx
pop     ecx
pop     ebx
retn
sub_4A680F endp




sub_4A6890 proc near
push    ecx
push    edx
mov     ecx, eax
add     eax, 70h ; 'p'
mov     edx, 8
call    sub_4F88FC
mov     word ptr [ecx+0Ah], 0
mov     byte ptr [ecx+2Ah], 0
mov     byte ptr [ecx+2Bh], 0
mov     byte ptr [ecx+2Ch], 1
mov     byte ptr [ecx+2Dh], 0
mov     byte ptr [ecx+2Eh], 0
mov     byte ptr [ecx+2Fh], 0
pop     edx
pop     ecx
retn
sub_4A6890 endp

; START OF FUNCTION CHUNK FOR sub_4A695E

loc_4A68C2:
movsx   eax, byte ptr [edx+1]
and     eax, 0F0h
sar     eax, 4
mov     [edx+24h], al
mov     ax, [edx+26h]
mov     [edx+28h], ax
mov     ax, [edx+2]
xor     eax, 0FFFFh
mov     [edx+26h], ax
mov     bx, [edx+28h]
xor     ebx, 0FFFFh
and     ebx, eax
mov     [edx+2Ah], bx
mov     bx, [edx+26h]
xor     ebx, 0FFFFh
mov     ax, [edx+28h]
and     ebx, eax
mov     [edx+2Ch], bx
mov     eax, [edx+4]
mov     [edx+30h], eax
mov     eax, edx
call    sub_4A698D
mov     al, [edx+25h]
and     al, 3
cmp     al, 1
jnz     short loc_4A6923
mov     [edx+36h], al

loc_4A6923:
mov     al, [edx+25h]
and     al, 3
cmp     al, 2
jnz     short loc_4A6930
mov     byte ptr [edx+36h], 0

loc_4A6930:
mov     al, [edx+25h]
and     al, 1
add     al, al
mov     bl, [edx+25h]
and     bl, 0FDh
mov     [edx+25h], bl
mov     bh, bl
or      bh, al
mov     [edx+25h], bh
pop     edx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4A695E



sub_4A694A proc near
call    sub_4F8E15
mov     eax, offset unk_5708B4
call    sub_4A695E
mov     eax, offset unk_5708FC
sub_4A694A endp




sub_4A695E proc near

; FUNCTION CHUNK AT 004A68C2 SIZE 00000088 BYTES

push    ebx
push    edx
mov     edx, eax
mov     ah, [eax]
cmp     ah, 0FFh
jnz     loc_4A68C2
mov     [edx+24h], ah
mov     byte ptr [edx+25h], 0
mov     al, [edx+25h]
xor     ah, ah
mov     [edx+26h], ax
mov     dword ptr [edx+30h], 0
mov     eax, [edx+30h]
mov     [edx+28h], eax
pop     edx
pop     ebx
retn
sub_4A695E endp




sub_4A698D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 10h
call    sub_4A69F7
mov     ebx, 1
mov     edx, 40h ; '@'
mov     eax, ecx
call    sub_4A69F7
mov     ebx, 2
mov     edx, 80h
mov     eax, ecx
call    sub_4A69F7
mov     ebx, 3
mov     edx, 20h ; ' '
mov     eax, ecx
call    sub_4A69F7
mov     ebx, 4
mov     edx, 400h
mov     eax, ecx
call    sub_4A69F7
mov     ebx, 5
mov     edx, 800h
mov     eax, ecx
call    sub_4A69F7
pop     edx
pop     ecx
pop     ebx
retn
sub_4A698D endp




sub_4A69F7 proc near
push    ecx
push    esi
mov     ecx, edx
mov     esi, ebx
xor     edx, edx
mov     dx, [eax+2Eh]
test    edx, ecx
jnz     short loc_4A6A32
xor     edx, edx
mov     dx, [eax+2Ah]
and     edx, ecx
cmp     edx, ecx
jnz     short loc_4A6A32
lea     edx, [eax+ebx]
mov     byte ptr [edx+40h], 0
cmp     byte ptr [edx+38h], 0
jnz     short loc_4A6A27
mov     byte ptr [edx+38h], 1
pop     esi
pop     ecx
retn

loc_4A6A27:
mov     byte ptr [edx+38h], 2
or      [eax+2Eh], cx
pop     esi
pop     ecx
retn

loc_4A6A32:
lea     edx, [eax+esi]
mov     bl, [edx+38h]
test    bl, bl
jz      short loc_4A6A5B
cmp     bl, 2
jz      short loc_4A6A50
mov     bl, [edx+40h]
mov     bh, bl
inc     bh
mov     [edx+40h], bh
cmp     bl, 5
jbe     short loc_4A6A5B

loc_4A6A50:
mov     byte ptr [esi+eax+38h], 0
not     ecx
and     [eax+2Eh], cx

loc_4A6A5B:
pop     esi
pop     ecx
retn
sub_4A69F7 endp




; int __stdcall sub_4A6A5E(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam)
sub_4A6A5E proc near

Rect= tagRECT ptr -2Ch
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
X= dword ptr -14h
hWnd= dword ptr  4
Msg= dword ptr  8
wParam= dword ptr  0Ch
lParam= dword ptr  10h

push    ebx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     edi, [esp+2Ch+hWnd]
mov     eax, [esp+2Ch+Msg]
mov     esi, [esp+2Ch+wParam]
mov     edx, [esp+2Ch+lParam]
xor     ebp, ebp
cmp     eax, 100h
jb      short loc_4A6AA9
jbe     loc_4A6B85
cmp     eax, 112h
jb      short loc_4A6A9D
jbe     short loc_4A6AE4
cmp     eax, 218h
jz      loc_4A6B07
jmp     loc_4A6D4D

loc_4A6A9D:
cmp     eax, 104h
jz      short loc_4A6ACC
jmp     loc_4A6D4D

loc_4A6AA9:
cmp     eax, 3
jb      short loc_4A6ABE
jbe     loc_4A6B5B
cmp     eax, 1Ch
jz      short loc_4A6B19
jmp     loc_4A6D4D

loc_4A6ABE:
cmp     eax, 2
jz      loc_4A6D43
jmp     loc_4A6D4D

loc_4A6ACC:
cmp     esi, 79h ; 'y'
jz      short loc_4A6ADA
cmp     esi, 12h
jnz     loc_4A6D4D

loc_4A6ADA:
mov     ebp, 1
jmp     loc_4A6D5A

loc_4A6AE4:
mov     ebp, esi
and     ebp, 0FFF0h
cmp     ebp, 0F140h
jb      loc_4A6D4D
jbe     short loc_4A6ADA
cmp     ebp, 0F170h
jz      short loc_4A6ADA
jmp     loc_4A6D4D

loc_4A6B07:
test    esi, esi
jnz     loc_4A6D4D
mov     ebp, 424D5144h
jmp     loc_4A6D5A

loc_4A6B19:
test    esi, esi
jz      short loc_4A6B3F
cmp     ds:dword_53041B, 0
jz      short loc_4A6B2B
call    sub_4D90CE

loc_4A6B2B:             ; hWnd
push    edi
call    cs:__imp_SetFocus
mov     ds:byte_53041A, 1
jmp     loc_4A6D5A

loc_4A6B3F:
mov     ds:dword_53041B, 1
xor     bl, bl
mov     ds:byte_53041A, bl
call    sub_4D904F
jmp     loc_4A6D5A

loc_4A6B5B:
xor     eax, eax
mov     ax, dx
mov     [esp+2Ch+var_1C], eax
mov     eax, edx
shr     eax, 10h
and     eax, 0FFFFh
and     eax, 0FFFFh
mov     [esp+2Ch+var_18], eax
lea     eax, [esp+2Ch+var_1C]
call    sub_4F7B8D
jmp     loc_4A6D5A

loc_4A6B85:
cmp     ds:byte_530419, 0
jz      short loc_4A6BAA
cmp     esi, 78h ; 'x'
jz      short loc_4A6BAA
xor     dl, dl
mov     ds:byte_530419, dl
mov     eax, 4
call    sub_4A0E75
call    sub_4D90CE

loc_4A6BAA:
cmp     esi, 78h ; 'x'
jnz     short loc_4A6C17
cmp     ds:byte_530419, 0
jnz     short loc_4A6BEC
mov     ds:byte_530419, 1
cmp     ds:byte_511E30, 0
jz      short loc_4A6BD0
mov     edx, ds:off_52FCC1
jmp     short loc_4A6BD6

loc_4A6BD0:
mov     edx, ds:off_52FCBD

loc_4A6BD6:
mov     ebx, 0FFFFFFFFh
mov     eax, 4
call    sub_4A0CDD
call    sub_4D904F
jmp     short loc_4A6C17

loc_4A6BEC:
xor     bl, bl
mov     ds:byte_530419, bl
mov     eax, 4
call    sub_4A0E75
cmp     ds:byte_511E30, 0
jz      short loc_4A6C10
mov     ds:byte_530418, 1
jmp     short loc_4A6C17

loc_4A6C10:
mov     ds:byte_52CCA0, 1

loc_4A6C17:
cmp     esi, 77h ; 'w'
jnz     loc_4A6CF8
cmp     ds:nWidth, 280h
jle     loc_4A6CF8
cmp     ds:cy, 1E0h
jle     loc_4A6CF8
mov     eax, edi
call    sub_4F84A5
xor     byte ptr ds:bMenu, 1
mov     ebx, ds:bMenu
test    ebx, ebx
jz      short loc_4A6C6C
xor     eax, eax
mov     [esp+2Ch+X], eax
mov     ecx, ds:nWidth
mov     ebx, ds:cy
jmp     short loc_4A6CCC

loc_4A6C6C:
xor     eax, eax
mov     [esp+2Ch+Rect.left], ebx
mov     [esp+2Ch+Rect.top], ebx
mov     [esp+2Ch+Rect.right], 280h
mov     [esp+2Ch+Rect.bottom], 1E0h
push    eax             ; bMenu
push    0CE0000h        ; dwStyle
lea     eax, [esp+34h+Rect]
push    eax             ; lpRect
call    cs:__imp_AdjustWindowRect
mov     ecx, [esp+2Ch+Rect.right]
sub     ecx, [esp+2Ch+Rect.left]
mov     ebx, [esp+2Ch+Rect.bottom]
sub     ebx, [esp+2Ch+Rect.top]
mov     edx, ds:nWidth
sub     edx, ecx
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [esp+2Ch+X], eax
mov     edx, ds:cy
sub     edx, ebx
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1

loc_4A6CCC:             ; uFlags
push    40h ; '@'
push    ebx             ; cy
push    ecx             ; cx
push    eax             ; Y
mov     ebx, [esp+3Ch+X]
push    ebx             ; X
push    0               ; hWndInsertAfter
push    edi             ; hWnd
call    cs:__imp_SetWindowPos
xor     ecx, ecx
mov     ebx, offset dword_5303FC
mov     edx, offset bMenu
mov     eax, edi
call    sub_4F7BBA
call    sub_4A67C5

loc_4A6CF8:
cmp     esi, 76h ; 'v'
jnz     short loc_4A6D35
cmp     ds:dword_530400, 0
jz      short loc_4A6D35
mov     eax, edi
call    sub_4F84A5
inc     ds:dword_5303FC
xor     ecx, ecx
mov     ebx, offset dword_5303FC
mov     edx, offset bMenu
mov     eax, edi
call    sub_4F7BBA
call    sub_4A67C5
mov     ds:dword_530408, 78h ; 'x'

loc_4A6D35:
cmp     esi, 7Ah ; 'z'
jnz     short loc_4A6D5A
xor     byte ptr ds:dword_53040C, 1
jmp     short loc_4A6D5A

loc_4A6D43:             ; nExitCode
push    ebp
call    cs:__imp_PostQuitMessage
jmp     short loc_4A6D5A

loc_4A6D4D:             ; lParam
push    edx
push    esi             ; wParam
push    eax             ; Msg
push    edi             ; hWnd
call    cs:__imp_DefWindowProcA
mov     ebp, eax

loc_4A6D5A:
mov     eax, ebp
add     esp, 1Ch

loc_4A6D5F:
pop     ebp
pop     edi
pop     esi
pop     ebx
retn    10h
sub_4A6A5E endp




; int __stdcall WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd)
_WinMain@16 proc near

var_C4= byte ptr -0C4h
WndClass= WNDCLASSA ptr -74h
Msg= tagMSG ptr -4Ch
Rect= tagRECT ptr -30h
var_20= qword ptr -20h
var_18= dword ptr -18h
var_14= dword ptr -14h
hInstance= dword ptr  4
hPrevInstance= dword ptr  8
lpCmdLine= dword ptr  0Ch
nShowCmd= dword ptr  10h

push    ebx
push    esi
push    edi
push    ebp
sub     esp, 0B4h
mov     ecx, 14h
mov     edi, esp
mov     esi, offset byte_4A64AB
rep movsd
xor     ebp, ebp
mov     [esp+0C4h+var_18], ebp
lea     edi, [esp+0C4h+Rect]
mov     esi, offset byte_4A64FB
movsd
movsd
movsd
movsd
mov     edx, offset aMegamanExe ; "MEGAMAN.EXE"
mov     eax, offset aCapcomAvi ; "CAPCOM.AVI"
call    sub_4F0927
test    eax, eax
jnz     short loc_4A6DC3
push    10h             ; uType
push    offset Caption  ; "Error"
push    offset Text     ; "Please Insert Megaman CD-ROM."
push    ebp             ; hWnd
call    cs:__imp_MessageBoxA
jmp     loc_4A72BF

loc_4A6DC3:
mov     eax, [esp+0C4h+hInstance]
mov     ds:dword_55BDAC, eax
mov     [esp+0C4h+WndClass.style], ebp
mov     [esp+0C4h+WndClass.lpfnWndProc], offset sub_4A6A5E
mov     [esp+0C4h+WndClass.cbClsExtra], ebp
mov     [esp+0C4h+WndClass.cbWndExtra], ebp
mov     [esp+0C4h+WndClass.hInstance], eax
push    offset IconName ; "ROCKMAN_ICON"
push    eax             ; hInstance
call    cs:__imp_LoadIconA
mov     [esp+0C4h+WndClass.hIcon], eax
push    7F00h           ; lpCursorName
push    ebp             ; hInstance
call    cs:__imp_LoadCursorA
mov     [esp+0C4h+WndClass.hCursor], eax
push    4               ; i
call    cs:__imp_GetStockObject
mov     [esp+0C4h+WndClass.hbrBackground], eax
mov     [esp+0C4h+WndClass.lpszMenuName], ebp
mov     [esp+0C4h+WndClass.lpszClassName], offset WindowName ; "Megaman"
lea     eax, [esp+0C4h+WndClass]
push    eax             ; lpWndClass
call    cs:__imp_RegisterClassA
test    ax, ax
jnz     short loc_4A6E3D
mov     eax, 0FFFFFFFFh
jmp     loc_4A72C4

loc_4A6E3D:
call    sub_4A650B
push    ebp             ; hWnd
call    cs:__imp_GetDC
mov     ebx, eax
push    8               ; index
push    eax             ; hdc
call    cs:__imp_GetDeviceCaps
mov     ds:nWidth, eax
push    0Ah             ; index
push    ebx             ; hdc
call    cs:__imp_GetDeviceCaps
mov     ds:cy, eax
push    0Eh             ; index
push    ebx             ; hdc
call    cs:__imp_GetDeviceCaps
mov     esi, eax
push    0Ch             ; index
push    ebx             ; hdc
call    cs:__imp_GetDeviceCaps
imul    esi, eax
mov     ds:dword_55BDA8, esi
push    ebx             ; hDC
push    ebp             ; hWnd
call    cs:__imp_ReleaseDC
cmp     ds:nWidth, 280h
jnz     short loc_4A6EB4
cmp     ds:cy, 1E0h
jnz     short loc_4A6EB4
mov     ds:bMenu, 1

loc_4A6EB4:
mov     edi, 0CE0000h
mov     eax, ds:bMenu
test    eax, eax
jz      short loc_4A6ED4
xor     eax, eax
xor     ebx, ebx
mov     esi, ds:nWidth
mov     ecx, ds:cy
jmp     short loc_4A6F25

loc_4A6ED4:             ; bMenu
push    eax
push    edi             ; dwStyle
lea     eax, [esp+0CCh+Rect]
push    eax             ; lpRect
call    cs:__imp_AdjustWindowRect
mov     esi, [esp+0C4h+Rect.right]
sub     esi, [esp+0C4h+Rect.left]
mov     ecx, [esp+0C4h+Rect.bottom]
sub     ecx, [esp+0C4h+Rect.top]
mov     edx, ds:nWidth
sub     edx, esi
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     ebx, eax
mov     edx, ds:cy
sub     edx, ecx
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1

loc_4A6F25:             ; lpParam
push    0
mov     edx, [esp+0C8h+hInstance]
push    edx             ; hInstance
push    0               ; hMenu
push    0               ; hWndParent
push    ecx             ; nHeight
push    esi             ; nWidth
push    eax             ; Y
push    ebx             ; X
push    edi             ; dwStyle
push    offset WindowName ; "Megaman"
push    offset WindowName ; "Megaman"
push    0               ; dwExStyle
call    cs:__imp_CreateWindowExA
mov     ds:hWnd, eax
push    5               ; nCmdShow
push    eax             ; hWnd
call    cs:__imp_ShowWindow
mov     ecx, ds:hWnd
push    ecx             ; hWnd
call    cs:__imp_UpdateWindow
call    sub_4A67C5
mov     ebx, ds:bMenu
mov     edx, ds:hWnd
mov     eax, offset aCapcomAvi ; "CAPCOM.AVI"
call    sub_4F9933
cmp     ds:byte_530418, 0
jnz     loc_4A72BF
mov     eax, ds:hWnd
mov     ecx, offset dword_530400
mov     ebx, offset dword_5303FC
mov     edx, offset bMenu
call    sub_4F7BBA
mov     edx, eax
test    eax, eax
jz      short loc_4A6FC5

loc_4A6FAF:
mov     eax, ds:hWnd
call    sub_4F84A5
mov     eax, edx
call    sub_4F8674
jmp     loc_4A72BF

loc_4A6FC5:
mov     eax, ds:hWnd
call    sub_4F9F7D
mov     edx, eax
test    eax, eax
jnz     short loc_4A6FAF
call    sub_4A67C5
call    sub_4A66A4
mov     edx, offset sub_4A0A2C
xor     eax, eax
call    sub_4EED79
call    cs:__imp_GetTickCount
xor     ebx, ebx
mov     dword ptr [esp+0C4h+var_20+4], ebx
mov     dword ptr [esp+0C4h+var_20], eax
fild    [esp+0C4h+var_20]
xor     eax, eax
mov     al, ds:byte_77EAC1
mov     [esp+0C4h+var_14], eax
fild    word ptr [esp+0C4h+var_14]
fmul    ds:dbl_50A390
faddp   st(1), st
fstp    ds:flt_55BDB4

loc_4A702C:
cmp     ds:byte_530418, 0
jnz     loc_4A72A1
cmp     ds:byte_530419, 0
jnz     short loc_4A7047
call    sub_4A694A

loc_4A7047:             ; wRemoveMsg
push    1
push    0               ; wMsgFilterMax
push    0               ; wMsgFilterMin
push    0               ; hWnd
lea     eax, [esp+0D4h+Msg]
push    eax             ; lpMsg
call    cs:__imp_PeekMessageA
test    eax, eax
jz      short loc_4A7085
cmp     [esp+0C4h+Msg.message], 12h
jz      loc_4A72A1
lea     eax, [esp+0C4h+Msg]
push    eax             ; lpMsg
call    cs:__imp_TranslateMessage
lea     eax, [esp+0C4h+Msg]
push    eax             ; lpMsg
call    cs:__imp_DispatchMessageA

loc_4A7085:
cmp     ds:byte_53041A, 0
jz      short loc_4A702C
call    cs:__imp_GetTickCount
xor     edi, edi
mov     dword ptr [esp+0C4h+var_20+4], edi
mov     dword ptr [esp+0C4h+var_20], eax
fild    [esp+0C4h+var_20]
fcomp   ds:flt_55BDB4
fnstsw  ax
sahf
jnb     loc_4A712B
mov     eax, ds:dword_77EA74
call    sub_4F8895
mov     eax, ds:dword_77EA74
add     eax, 14h
call    sub_4F88C4
cmp     ds:dword_77E738, 0
jnz     short loc_4A7123
mov     eax, ds:dword_77EA74
add     eax, 8Ch
call    sub_4F7680
mov     edx, ds:dword_530408
test    edx, edx
jz      short loc_4A7111
mov     eax, ds:dword_5303FC
call    sub_4F85F2
mov     ebx, eax
xor     edx, edx
xor     eax, eax
call    sub_4F860C
dec     ds:dword_530408
jmp     short loc_4A7123

loc_4A7111:
cmp     ds:dword_53040C, 0
jz      short loc_4A7123
mov     ebx, esp
xor     eax, eax
call    sub_4F860C

loc_4A7123:
xor     ds:byte_77EAC6, 1
inc     ebp

loc_4A712B:
call    cs:__imp_GetTickCount
mov     edx, eax
xor     esi, esi
mov     dword ptr [esp+0C4h+var_20+4], esi
mov     dword ptr [esp+0C4h+var_20], eax
fild    [esp+0C4h+var_20]
fcomp   ds:flt_55BDB4
fnstsw  ax
sahf
jb      short loc_4A712B
mov     eax, edx
sub     eax, [esp+0C4h+var_18]
cmp     eax, 3E8h
jbe     short loc_4A7182
mov     [esp+0C4h+var_18], edx
push    ebp
push    offset aFrameRateD ; "Frame Rate = %d"
lea     eax, [esp+0CCh+var_C4]
push    eax
call    sprintf_
add     esp, 0Ch
xor     ebp, ebp

loc_4A7182:
xor     eax, eax
mov     al, ds:byte_77EAC1
mov     [esp+0C4h+var_14], eax
fild    word ptr [esp+0C4h+var_14]
fmul    ds:dbl_50A398
fld     ds:flt_55BDB4
fstp    [esp+0C4h+var_20]
fadd    [esp+0C4h+var_20]
fstp    ds:flt_55BDB4
cmp     ds:flt_55BDB4, 4F800000h
jle     short loc_4A71D1
fld1
fadd    ds:flt_55BDB4
fstp    ds:flt_55BDB4

loc_4A71D1:
xor     ebx, ebx
mov     bl, ds:byte_77EAC6
mov     eax, ebx
shl     eax, 3
add     eax, ebx
shl     eax, 4
mov     edx, offset unk_77E4C4
add     edx, eax
mov     ds:dword_77EA74, edx
shl     ebx, 0Eh
mov     eax, offset unk_7764A4
add     eax, ebx
mov     ds:dword_77E6FC, eax
lea     eax, [edx+70h]
mov     edx, 8
call    sub_4F88FC
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Eh
add     eax, offset unk_7764A4
mov     edx, 1000h
call    sub_4F88FC
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Bh
add     eax, offset unk_7754A4
mov     edx, 200h
call    sub_4F88FC
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Bh
add     eax, offset unk_76C464
mov     edx, 200h
call    sub_4F88FC
mov     eax, ds:dword_77E720
xor     edx, edx
mov     dl, ds:byte_77EAC6
shl     edx, 2
mov     eax, ds:off_5303E0[edx+eax*8]
mov     ds:dword_77E6DC, eax
cmp     ds:byte_530419, 0
jnz     short loc_4A7281
call    sub_4EED08

loc_4A7281:
call    sub_4D8F96
call    sub_4A0EF8
call    sub_4A065A
call    sub_49E00B
inc     ds:word_77EAB6
jmp     loc_4A702C

loc_4A72A1:
mov     eax, ds:hWnd
call    sub_4F84A5
call    sub_4D89AF
call    sub_4F8D91
call    sub_4F383A
call    sub_4A65EB

loc_4A72BF:
mov     eax, 1

loc_4A72C4:
add     esp, 0B4h
jmp     loc_4A6D5F
_WinMain@16 endp

push    ecx
cmp     ds:dword_530414, 0
jz      short loc_4A7317
cmp     ds:byte_77E807, 0
jnz     short loc_4A7317
mov     eax, ds:dword_53041F
test    eax, eax
jbe     short loc_4A72F2
cmp     eax, 1
jz      short loc_4A7304
pop     ecx
retn

loc_4A72F2:
mov     eax, 1
call    sub_4A86B8
add     ds:dword_53041F, eax
pop     ecx
retn

loc_4A7304:
call    sub_4A0E35
xor     ecx, ecx
mov     ds:dword_53041F, ecx
mov     ds:dword_530414, ecx

loc_4A7317:
pop     ecx
retn



sub_4A7319 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
xor     esi, esi
jmp     short loc_4A7366

loc_4A7322:
inc     ecx
cmp     ecx, 200h
jge     short loc_4A735D

loc_4A732B:
mov     edx, ecx
shl     edx, 3
mov     ebx, ds:dword_70E1B0[edx]
test    ebx, ebx
jz      short loc_4A735D
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
mov     edi, ds:dword_6E40B4[eax]
cmp     ebx, edi
jnz     short loc_4A7322
mov     edx, [edi+18h]
mov     edx, [edx]
shr     edx, 10h
mov     ds:word_6E40B2[eax], dx

loc_4A735D:
inc     esi
cmp     esi, 800h
jge     short loc_4A737B

loc_4A7366:
mov     eax, esi
shl     eax, 2
sub     eax, esi
cmp     ds:dword_6E40B4[eax*4], 0
jz      short loc_4A735D
xor     ecx, ecx
jmp     short loc_4A732B

loc_4A737B:
call    sub_4A738A
call    sub_4A742C
jmp     loc_4A7AA6
sub_4A7319 endp




sub_4A738A proc near
push    ebx
push    ecx
push    edx
mov     edx, 93Ch
mov     ds:word_55BDB8, dx
mov     ds:word_55BDBA, dx
mov     ds:word_55BDBC, dx
mov     ds:word_55BDC0, dx
mov     ds:word_55BDC2, dx
mov     ds:word_55BDC4, 0F6C4h
xor     edx, edx
mov     ds:word_55BDC8, dx
mov     ds:word_55BDCA, dx
mov     ds:word_55BDCC, dx
mov     ah, 0A0h
mov     ds:byte_55BDE4, ah
mov     ds:byte_55BDE5, ah
mov     ds:byte_55BDE6, ah
mov     bl, 60h ; '`'
mov     ds:byte_55BDE8, bl
mov     ds:byte_55BDE9, bl
mov     ds:byte_55BDEA, bl
xor     ch, ch
mov     ds:byte_55BDEC, ch
mov     ds:byte_55BDED, ch
mov     ds:byte_55BDEE, ch
mov     edx, 0A0h
mov     ds:dword_55BDD0, edx
mov     ds:dword_55BDD4, edx
mov     ds:dword_55BDD8, edx
pop     edx
pop     ecx
pop     ebx
retn
sub_4A738A endp




sub_4A742C proc near

var_4C= dword ptr -4Ch
var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 38h
mov     ebx, ds:dword_55BDD8
mov     edx, ds:dword_55BDD4
mov     eax, ds:dword_55BDD0
call    sub_4EF166
fild    ds:word_55BDB8
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_4C]
fild    ds:word_55BDBA
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_48]
fild    ds:word_55BDBC
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_44]
fild    ds:word_55BDC0
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_40]
fild    ds:word_55BDC2
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_3C]
fild    ds:word_55BDC4
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_38]
fild    ds:word_55BDC8
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_34]
fild    ds:word_55BDCA
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_30]
fild    ds:word_55BDCC
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_2C]
mov     eax, esp
call    sub_4EFB0F
xor     eax, eax
mov     al, ds:byte_55BDE4
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_4C]
xor     eax, eax
mov     al, ds:byte_55BDE5
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_40]
xor     eax, eax
mov     al, ds:byte_55BDE6
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_34]
xor     eax, eax
mov     al, ds:byte_55BDE8
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_48]
xor     eax, eax
mov     al, ds:byte_55BDE9
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_3C]
xor     eax, eax
mov     al, ds:byte_55BDEA
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_30]
xor     eax, eax
mov     al, ds:byte_55BDEC
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_44]
xor     eax, eax
mov     al, ds:byte_55BDED
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_38]
xor     eax, eax
mov     al, ds:byte_55BDEE
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_2C]
mov     eax, esp
call    sub_4EFB24
xor     edx, edx
mov     [esp+4Ch+var_1C], edx

loc_4A75E8:
mov     edi, [esp+4Ch+var_1C]
shl     edi, 3
mov     ecx, ds:dword_70E1B0[edi]
test    ecx, ecx
jz      short loc_4A7644
mov     edi, ecx
mov     esi, 6
jmp     short loc_4A7608

loc_4A7602:
inc     esi
cmp     esi, 0Ch
jnb     short loc_4A763E

loc_4A7608:
mov     ecx, esi
mov     ecx, [edi+ecx*4]
mov     eax, [ecx]
mov     ebx, eax
and     ebx, 3F00h
shr     ebx, 7
and     eax, 0FFh
shl     eax, 2
add     eax, 4
add     ecx, eax
xor     edx, edx

loc_4A7629:
cmp     edx, ebx
jnb     short loc_4A7602
mov     eax, edx
shl     eax, 2
add     eax, ecx
call    sub_4A7852
add     edx, 2
jmp     short loc_4A7629

loc_4A763E:
inc     [esp+4Ch+var_1C]
jmp     short loc_4A75E8

loc_4A7644:
add     esp, 38h
jmp     loc_4A7AA6
sub_4A742C endp




sub_4A764C proc near

var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 34h
mov     ebx, ds:dword_55BDD8
mov     edx, ds:dword_55BDD4
mov     eax, ds:dword_55BDD0
call    sub_4EF166
fild    ds:word_55BDB8
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_48]
fild    ds:word_55BDBA
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_44]
fild    ds:word_55BDBC
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_40]
fild    ds:word_55BDC0
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_3C]
fild    ds:word_55BDC2
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_38]
fild    ds:word_55BDC4
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_34]
fild    ds:word_55BDC8
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_30]
fild    ds:word_55BDCA
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_2C]
fild    ds:word_55BDCC
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_28]
mov     eax, esp
call    sub_4EFB0F
xor     eax, eax
mov     al, ds:byte_55BDE4
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_48]
xor     eax, eax
mov     al, ds:byte_55BDE5
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_3C]
xor     eax, eax
mov     al, ds:byte_55BDE6
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_30]
xor     eax, eax
mov     al, ds:byte_55BDE8
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_44]
xor     eax, eax
mov     al, ds:byte_55BDE9
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_38]
xor     eax, eax
mov     al, ds:byte_55BDEA
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_2C]
xor     eax, eax
mov     al, ds:byte_55BDEC
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_40]
xor     eax, eax
mov     al, ds:byte_55BDED
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_34]
xor     eax, eax
mov     al, ds:byte_55BDEE
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_28]
mov     eax, esp
call    sub_4EFB24
mov     edi, offset unk_6DB7FC
mov     esi, 6
jmp     short loc_4A7814

loc_4A780E:
inc     esi
cmp     esi, 0Ch
jnb     short loc_4A784A

loc_4A7814:
mov     ecx, esi
mov     ecx, [edi+ecx*4]
mov     eax, [ecx]
mov     ebx, eax
and     ebx, 3F00h
shr     ebx, 7
and     eax, 0FFh
shl     eax, 2
add     eax, 4
add     ecx, eax
xor     edx, edx

loc_4A7835:
cmp     edx, ebx
jnb     short loc_4A780E
mov     eax, edx
shl     eax, 2
add     eax, ecx
call    sub_4A7852
add     edx, 2
jmp     short loc_4A7835

loc_4A784A:
add     esp, 34h
jmp     loc_4A7AA6
sub_4A764C endp




sub_4A7852 proc near

var_78= dword ptr -78h
var_74= dword ptr -74h
var_70= dword ptr -70h
var_68= dword ptr -68h
var_64= dword ptr -64h
var_60= dword ptr -60h
var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= dword ptr -50h
var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_38= dword ptr -38h
var_34= word ptr -34h
var_30= dword ptr -30h
var_2C= word ptr -2Ch
var_28= dword ptr -28h
var_24= word ptr -24h
var_20= byte ptr -20h
var_1F= byte ptr -1Fh
var_1E= byte ptr -1Eh
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 60h
mov     eax, [eax+4]
mov     edi, eax
shr     edi, 18h
and     eax, 0FFFFFFh
mov     esi, offset unk_6B87CC
add     esi, eax
mov     ah, 80h
mov     [esp+78h+var_20], ah
mov     [esp+78h+var_1F], ah
mov     [esp+78h+var_1E], ah

loc_4A787D:
dec     edi
cmp     edi, 0FFFFFFFFh
jz      loc_4A7AA2
mov     eax, [esi]
mov     edx, eax
shl     edx, 5
test    edx, edx
jge     short loc_4A789D
shl     eax, 7
test    eax, eax
jge     loc_4A7A9A

loc_4A789D:
movsx   ax, byte ptr [esi+4]
mov     word ptr [esp+78h+var_38], ax
movsx   ax, byte ptr [esi+5]
mov     word ptr [esp+78h+var_38+2], ax
mov     edx, eax
neg     edx
mov     word ptr [esp+78h+var_38+2], dx
movsx   ax, byte ptr [esi+6]
mov     [esp+78h+var_34], ax
movsx   ax, byte ptr [esi+7]
mov     word ptr [esp+78h+var_30], ax
movsx   ax, byte ptr [esi+8]
mov     word ptr [esp+78h+var_30+2], ax
mov     ebx, eax
neg     ebx
mov     word ptr [esp+78h+var_30+2], bx
movsx   ax, byte ptr [esi+9]
mov     [esp+78h+var_2C], ax
movsx   ax, byte ptr [esi+0Ah]
mov     word ptr [esp+78h+var_28], ax
movsx   ax, byte ptr [esi+0Bh]
mov     word ptr [esp+78h+var_28+2], ax
mov     ecx, eax
neg     ecx
mov     word ptr [esp+78h+var_28+2], cx
movsx   ax, byte ptr [esi+0Ch]
mov     [esp+78h+var_24], ax
mov     edx, [esp+46h]
sar     edx, 10h
mov     eax, [esp+3Eh]
sar     eax, 10h
sub     edx, eax
mov     [esp+78h+var_78], edx
mov     ecx, [esp+78h+var_30]
sar     ecx, 10h
mov     edx, [esp+78h+var_38]
sar     edx, 10h
sub     ecx, edx
mov     [esp+78h+var_74], ecx
mov     ecx, [esp+78h+var_30+2]
sar     ecx, 10h
mov     ebx, [esp+78h+var_38+2]
sar     ebx, 10h
sub     ecx, ebx
mov     [esp+78h+var_70], ecx
mov     ecx, [esp+4Eh]
sar     ecx, 10h
sub     ecx, eax
mov     [esp+78h+var_68], ecx
mov     eax, [esp+78h+var_28]
sar     eax, 10h
sub     eax, edx
mov     [esp+78h+var_64], eax
mov     eax, [esp+78h+var_28+2]
sar     eax, 10h
sub     eax, ebx
mov     [esp+78h+var_60], eax
lea     ebx, [esp+78h+var_58]
lea     edx, [esp+78h+var_68]
mov     eax, esp
call    sub_4EF749
mov     edx, [esp+78h+var_58]
test    edx, edx
jge     short loc_4A798D
neg     edx

loc_4A798D:
mov     ecx, [esp+78h+var_54]
test    ecx, ecx
jge     short loc_4A799B
mov     eax, ecx
neg     eax
jmp     short loc_4A799D

loc_4A799B:
mov     eax, ecx

loc_4A799D:
cmp     edx, eax
jle     short loc_4A79B5
mov     ebp, [esp+78h+var_58]
test    ebp, ebp
jge     short loc_4A79AF
mov     eax, ebp
neg     eax
jmp     short loc_4A79B1

loc_4A79AF:
mov     eax, ebp

loc_4A79B1:
mov     edx, eax
jmp     short loc_4A79C5

loc_4A79B5:
mov     ebx, [esp+78h+var_54]
test    ebx, ebx
jge     short loc_4A79C3
mov     edx, ebx
neg     edx
jmp     short loc_4A79C5

loc_4A79C3:
mov     edx, ebx

loc_4A79C5:
mov     eax, [esp+78h+var_50]
test    eax, eax
jge     short loc_4A79CF
neg     eax

loc_4A79CF:
cmp     edx, eax
jle     short loc_4A7A13
mov     ecx, [esp+78h+var_58]
test    ecx, ecx
jge     short loc_4A79E1
mov     eax, ecx
neg     eax
jmp     short loc_4A79E3

loc_4A79E1:
mov     eax, ecx

loc_4A79E3:
mov     ebx, [esp+78h+var_54]
test    ebx, ebx
jge     short loc_4A79F1
mov     edx, ebx
neg     edx
jmp     short loc_4A79F3

loc_4A79F1:
mov     edx, ebx

loc_4A79F3:
cmp     eax, edx
jle     short loc_4A7A03
mov     eax, [esp+78h+var_58]
test    eax, eax
jge     short loc_4A7A21

loc_4A79FF:
neg     eax
jmp     short loc_4A7A21

loc_4A7A03:
mov     ebp, [esp+78h+var_54]
test    ebp, ebp
jge     short loc_4A7A0F
mov     eax, ebp
jmp     short loc_4A79FF

loc_4A7A0F:
mov     eax, ebp
jmp     short loc_4A7A21

loc_4A7A13:
mov     edx, [esp+78h+var_50]
test    edx, edx
jge     short loc_4A7A1F
mov     eax, edx
jmp     short loc_4A79FF

loc_4A7A1F:
mov     eax, edx

loc_4A7A21:
xor     edx, edx

loc_4A7A23:
cmp     eax, 6882h
jle     short loc_4A7A2F
sar     eax, 1
inc     edx
jmp     short loc_4A7A23

loc_4A7A2F:
mov     cl, dl
mov     eax, [esp+78h+var_58]
sar     eax, cl
mov     [esp+78h+var_48], eax
mov     eax, [esp+78h+var_54]
sar     eax, cl
mov     [esp+78h+var_44], eax
mov     eax, [esp+78h+var_50]
sar     eax, cl
mov     [esp+78h+var_40], eax
mov     edx, esp
lea     eax, [esp+78h+var_48]
call    sub_4EF886
mov     eax, [esp+78h+var_78]
mov     word ptr [esp+78h+var_38], ax
mov     eax, [esp+78h+var_74]
mov     word ptr [esp+78h+var_38+2], ax
mov     eax, [esp+78h+var_70]
mov     [esp+78h+var_34], ax
lea     ebx, [esp+78h+var_1C]
lea     edx, [esp+78h+var_20]
lea     eax, [esp+78h+var_38]
call    sub_4EF9ED
mov     eax, [esi]
and     eax, 0FF000000h
mov     edx, [esp+78h+var_1C]
and     edx, 0FFFFFFh
or      edx, eax
mov     [esi], edx

loc_4A7A9A:
add     esi, 10h
jmp     loc_4A787D

loc_4A7AA2:
add     esp, 60h
sub_4A7852 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4A7DD4
;   ADDITIONAL PARENT FUNCTION sub_4A7B2D

loc_4A7AA5:
pop     ebp

loc_4A7AA6:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4A7DD4



sub_4A7AAC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx

loc_4A7AB3:
mov     eax, edx
shl     eax, 3
mov     ebx, ds:dword_70E1B0[eax]
test    ebx, ebx
jz      short loc_4A7ADB
cmp     edx, 800h
jnb     short loc_4A7ADB
cmp     ecx, ds:dword_70E1AC[eax]
jnz     short loc_4A7AD8
mov     eax, ebx
pop     edx
pop     ecx
pop     ebx
retn

loc_4A7AD8:
inc     edx
jmp     short loc_4A7AB3

loc_4A7ADB:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4A7AAC endp




sub_4A7AE1 proc near
push    ebx
push    ecx
mov     ecx, edx
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     edx, eax
shl     edx, 2
mov     ebx, ds:dword_6E40B4[edx]
mov     eax, ecx
call    sub_4A7AAC
mov     ds:dword_6E40B4[edx], eax
mov     eax, ebx
pop     ecx
pop     ebx
retn
sub_4A7AE1 endp

push    ecx
mov     ecx, edx
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     ds:dword_6E40B4[eax*4], ecx
pop     ecx
retn
db 90h
jpt_4A7D51 dd offset loc_4A7C9C ; jump table for switch statement
dd offset loc_4A7CAA
dd offset loc_4A7D58
dd offset def_4A7D51



sub_4A7B2D proc near

var_60= dword ptr -60h
var_50= dword ptr -50h
var_40= dword ptr -40h
var_30= dword ptr -30h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004A7AA5 SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 48h
cmp     byte ptr ds:dword_77E7E8, 0
jnz     short loc_4A7B48
cmp     byte ptr ds:dword_77E7E8+1, 0
jz      short loc_4A7B4D

loc_4A7B48:
call    sub_4A8141

loc_4A7B4D:
mov     edi, ds:dword_77E7D0+1
sar     edi, 18h
mov     eax, ds:(dword_53041F+2)[edi]
sar     eax, 18h
mov     [esp+60h+var_20], eax
test    eax, eax
jl      loc_4A7DCC
mov     ds:dword_6E40B4, 1
xor     ecx, ecx
jmp     short loc_4A7B7F

loc_4A7B79:
inc     ecx
cmp     ecx, 2
jge     short loc_4A7BB4

loc_4A7B7F:
xor     esi, esi
jmp     short loc_4A7B89

loc_4A7B83:
inc     esi
cmp     esi, 2
jge     short loc_4A7B79

loc_4A7B89:
xor     ebx, ebx

loc_4A7B8B:
mov     eax, ecx
shl     eax, 5
mov     edx, esi
shl     edx, 4
add     eax, edx
mov     edx, ebx
shl     edx, 2
add     edx, eax
mov     eax, ds:dword_530444[edx]
call    sub_4A7AAC
mov     [esp+edx+60h+var_60], eax
inc     ebx
cmp     ebx, 4
jl      short loc_4A7B8B
jmp     short loc_4A7B83

loc_4A7BB4:
cmp     ds:byte_77E7D4, 6
jnz     loc_4A7C63
mov     edx, 1C7h
mov     eax, 6
call    sub_4A7EE1
cmp     eax, 1
jz      short loc_4A7BDA
cmp     eax, 2
jnz     short loc_4A7BF7

loc_4A7BDA:
mov     ds:word_6E5600, 0EE00h
mov     ds:word_6E5602, 0FD00h
mov     ds:word_6E5604, 0A00h
jmp     short loc_4A7C12

loc_4A7BF7:
mov     ds:word_6E5600, 0EE10h
mov     ds:word_6E5602, 0FD00h
mov     ds:word_6E5604, 0A10h

loc_4A7C12:
mov     edx, 1F8h
mov     eax, 6
call    sub_4A7EE1
cmp     eax, 1
jz      short loc_4A7C2B
cmp     eax, 2
jnz     short loc_4A7C48

loc_4A7C2B:
mov     ds:word_6E584C, 2000h
mov     ds:word_6E584E, 0FD00h
mov     ds:word_6E5850, 0E00h
jmp     short loc_4A7C63

loc_4A7C48:
mov     ds:word_6E584C, 2010h
mov     ds:word_6E584E, 0FD00h
mov     ds:word_6E5850, 0E10h

loc_4A7C63:
mov     eax, [esp+60h+var_20]
shl     eax, 9
mov     edx, offset unk_764964
add     edx, eax
mov     [esp+60h+var_1C], edx
xor     ebx, ebx
jmp     short loc_4A7C88

loc_4A7C79:
add     ebx, 10h
cmp     ebx, 800h
jge     loc_4A7DC4

loc_4A7C88:
mov     eax, ebx
sar     eax, 4
mov     ebp, [esp+60h+var_1C]
mov     ebp, [ebp+eax*4+0]
xor     esi, esi
jmp     loc_4A7D24

loc_4A7C9C:             ; jumptable 004A7D51 case 0
xor     ecx, ecx
mov     ds:word_6E40B2[eax], cx
jmp     def_4A7D51      ; jumptable 004A7D51 default case, case 3

loc_4A7CAA:             ; jumptable 004A7D51 case 1
mov     ds:word_6E40B2[eax], 64h ; 'd'
cmp     edi, 5
jz      short loc_4A7CBD
cmp     edi, 6
jnz     short loc_4A7CF3

loc_4A7CBD:
lea     edx, [ebx+esi]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, ds:dword_6E40B4[eax]
mov     ecx, [edx]
xor     cx, cx
cmp     ecx, 81000000h
jnz     short loc_4A7CF3
mov     edx, [edx+18h]
mov     edx, [edx]
shr     edx, 0Eh
and     edx, 3
mov     edx, [esp+edx*4+60h+var_60]

loc_4A7CEB:
mov     ds:dword_6E40B4[eax], edx
jmp     short def_4A7D51 ; jumptable 004A7D51 default case, case 3

loc_4A7CF3:
lea     edx, [ebx+esi]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, ds:dword_6E40B4[eax*4]
mov     edx, [edx+18h]
mov     edx, [edx]
shr     edx, 0Eh
and     edx, 3
mov     edx, [esp+edx*4+60h+var_40]

loc_4A7D13:
mov     ds:dword_6E40B4[eax*4], edx

def_4A7D51:             ; jumptable 004A7D51 default case, case 3
inc     esi
cmp     esi, 10h
jge     loc_4A7C79

loc_4A7D24:
lea     ecx, [ebx+esi]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
cmp     ds:dword_6E40B4[eax], 0
jz      loc_4A7DCC
test    ecx, ecx
jz      short def_4A7D51 ; jumptable 004A7D51 default case, case 3
lea     ecx, [esi+esi]
mov     edx, ebp
shr     edx, cl
and     edx, 3
cmp     edx, 3          ; switch 4 cases
ja      short def_4A7D51 ; jumptable 004A7D51 default case, case 3
jmp     jpt_4A7D51[edx*4] ; switch jump

loc_4A7D58:             ; jumptable 004A7D51 case 2
mov     ds:word_6E40B2[eax], 0C8h
cmp     edi, 5
jz      short loc_4A7D6B
cmp     edi, 6
jnz     short loc_4A7D9F

loc_4A7D6B:
lea     edx, [ebx+esi]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, ds:dword_6E40B4[eax]
mov     ecx, [edx]
xor     cx, cx
cmp     ecx, 81000000h
jnz     short loc_4A7D9F
mov     edx, [edx+18h]
mov     edx, [edx]
shr     edx, 0Eh
and     edx, 3
mov     edx, [esp+edx*4+60h+var_50]
jmp     loc_4A7CEB

loc_4A7D9F:
lea     edx, [ebx+esi]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, ds:dword_6E40B4[eax*4]
mov     edx, [edx+18h]
mov     edx, [edx]
shr     edx, 0Eh
and     edx, 3
mov     edx, [esp+edx*4+60h+var_30]
jmp     loc_4A7D13

loc_4A7DC4:
xor     ecx, ecx
mov     ds:dword_6E40B4, ecx

loc_4A7DCC:
add     esp, 48h
jmp     loc_4A7AA5
sub_4A7B2D endp ; sp-analysis failed




sub_4A7DD4 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004A7AA5 SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
call    sub_4A8561
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
mov     eax, ds:(dword_53041F+2)[eax]
sar     eax, 18h
test    eax, eax
jl      loc_4A7E8F
mov     ds:dword_6E40B4, 1
shl     eax, 9
mov     edx, offset unk_764964
add     edx, eax
mov     [esp+1Ch+var_1C], edx
xor     edi, edi
jmp     short loc_4A7E2E

loc_4A7E16:
mov     eax, edi
sar     eax, 4
shl     eax, 2
add     eax, [esp+1Ch+var_1C]
mov     [eax], ebx
add     edi, 10h
cmp     edi, 800h
jge     short loc_4A7E88

loc_4A7E2E:
mov     ebx, edi
sar     ebx, 4
shl     ebx, 2
add     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx]
xor     edx, edx
jmp     short loc_4A7E54

loc_4A7E3F:
test    ds:word_6E40B2[eax], 0FFFh
jnz     short loc_4A7E4E
not     ecx
and     ebx, ecx

loc_4A7E4E:
inc     edx
cmp     edx, 10h
jge     short loc_4A7E16

loc_4A7E54:
lea     ecx, [edi+edx]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     esi, ds:dword_6E40B4[eax]
test    esi, esi
jz      short loc_4A7E8F
test    ecx, ecx
jz      short loc_4A7E4E
mov     esi, [esi+18h]
lea     ecx, [edx+edx]
mov     ebp, 3
shl     ebp, cl
mov     ecx, ebp
test    byte ptr [esi+3], 0F0h
jnz     short loc_4A7E3F
or      ebx, ebp
jmp     short loc_4A7E4E

loc_4A7E88:
xor     eax, eax
mov     ds:dword_6E40B4, eax

loc_4A7E8F:
add     esp, 4
jmp     loc_4A7AA5
sub_4A7DD4 endp




sub_4A7E97 proc near
push    ebx
push    ecx
push    edx
test    eax, eax
jnz     short loc_4A7EB8
mov     ecx, offset unk_764964

loc_4A7EA3:
mov     edx, eax
mov     dword ptr [ecx+edx*4], 0FFFFFFFFh
inc     eax
cmp     eax, 380h
jl      short loc_4A7EA3
pop     edx
pop     ecx
pop     ebx
retn

loc_4A7EB8:
mov     ebx, 70h ; 'p'
mov     edx, offset unk_764964
mov     eax, offset unk_751ACC
call    sub_4EECEF
pop     edx
pop     ecx
pop     ebx
retn
sub_4A7E97 endp

db 90h
jpt_4A7F16 dd offset loc_4A7F1D ; jump table for switch statement
dd offset loc_4A7F21
dd offset loc_4A7F28
dd offset loc_4A7F2F



sub_4A7EE1 proc near
push    ecx
test    edx, edx
jl      short def_4A7F16 ; jumptable 004A7F16 default case
mov     eax, ds:(dword_53041F+2)[eax]
sar     eax, 18h
test    eax, eax
jl      short def_4A7F16 ; jumptable 004A7F16 default case
shl     eax, 9
mov     ecx, offset unk_764964
add     ecx, eax
mov     eax, edx
sar     eax, 4
mov     eax, [ecx+eax*4]
mov     ecx, edx
and     ecx, 0Fh
add     ecx, ecx
shr     eax, cl
and     eax, 3
cmp     eax, 3          ; switch 4 cases
ja      short def_4A7F16 ; jumptable 004A7F16 default case
jmp     jpt_4A7F16[eax*4] ; switch jump

loc_4A7F1D:             ; jumptable 004A7F16 case 0
xor     eax, eax
pop     ecx
retn

loc_4A7F21:             ; jumptable 004A7F16 case 1
mov     eax, 1
pop     ecx
retn

loc_4A7F28:             ; jumptable 004A7F16 case 2
mov     eax, 2
pop     ecx
retn

loc_4A7F2F:             ; jumptable 004A7F16 case 3
mov     eax, 3
pop     ecx
retn

def_4A7F16:             ; jumptable 004A7F16 default case
mov     eax, 0FFFFFFFFh
pop     ecx
retn
sub_4A7EE1 endp

jpt_4A7FAB dd offset loc_4A7FCD ; jump table for switch statement
dd offset loc_4A7FB2
dd offset loc_4A7FBB
dd offset loc_4A7FC4



sub_4A7F4D proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
test    eax, eax
jge     short loc_4A7F5F

def_4A7FAB:             ; jumptable 004A7FAB default case
mov     eax, 0FFFFFFFFh
pop     edx
pop     ecx
pop     ebx
retn

loc_4A7F5F:
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
mov     ebx, ds:(dword_53041F+2)[eax]
sar     ebx, 18h
test    ebx, ebx
jl      short def_4A7FAB ; jumptable 004A7FAB default case
mov     ecx, edx
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
test    ds:word_6E40B2[eax*4], 0FFFh
jz      short loc_4A7FCD ; jumptable 004A7FAB case 0
shl     ebx, 9
add     ebx, offset unk_764964
mov     eax, edx
sar     eax, 4
mov     eax, [ebx+eax*4]
mov     ecx, edx
and     ecx, 0Fh
add     ecx, ecx
shr     eax, cl
and     eax, 3
cmp     eax, 3          ; switch 4 cases
ja      short def_4A7FAB ; jumptable 004A7FAB default case
jmp     jpt_4A7FAB[eax*4] ; switch jump

loc_4A7FB2:             ; jumptable 004A7FAB case 1
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4A7FBB:             ; jumptable 004A7FAB case 2
mov     eax, 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4A7FC4:             ; jumptable 004A7FAB case 3
mov     eax, 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4A7FCD:             ; jumptable 004A7FAB case 0
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4A7F4D endp

db 8Bh, 0C0h
jpt_4A8026 dd offset loc_4A802D ; jump table for switch statement
dd offset loc_4A8032
dd offset loc_4A803A
dd offset loc_4A8042



sub_4A7FE5 proc near
push    ecx
push    edx
test    eax, eax
jl      short def_4A8026 ; jumptable 004A8026 default case
mov     edx, ds:dword_77E7D0+1
sar     edx, 18h
mov     edx, ds:(dword_53041F+2)[edx]
sar     edx, 18h
test    edx, edx
jl      short def_4A8026 ; jumptable 004A8026 default case
shl     edx, 9
mov     ecx, offset unk_764964
add     ecx, edx
mov     edx, eax
sar     edx, 4
mov     edx, [ecx+edx*4]
mov     ecx, eax
and     ecx, 0Fh
add     ecx, ecx
mov     eax, edx
shr     eax, cl
and     eax, 3
cmp     eax, 3          ; switch 4 cases
ja      short def_4A8026 ; jumptable 004A8026 default case
jmp     jpt_4A8026[eax*4] ; switch jump

loc_4A802D:             ; jumptable 004A8026 case 0
xor     eax, eax
pop     edx
pop     ecx
retn

loc_4A8032:             ; jumptable 004A8026 case 1
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4A803A:             ; jumptable 004A8026 case 2
mov     eax, 2
pop     edx
pop     ecx
retn

loc_4A8042:             ; jumptable 004A8026 case 3
mov     eax, 3
pop     edx
pop     ecx
retn

def_4A8026:             ; jumptable 004A8026 default case
mov     eax, 0FFFFFFFFh
pop     edx
pop     ecx
retn
sub_4A7FE5 endp




sub_4A8052 proc near
push    ebx
push    ecx
push    esi
push    edi
test    edx, edx
jge     short loc_4A8064

loc_4A805A:
mov     eax, 0FFFFFFFFh
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

