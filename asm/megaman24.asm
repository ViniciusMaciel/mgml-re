loc_4379D7:
cmp     ds:word_6E23D6, 0
jnz     short loc_437A4C
mov     ebx, 1
mov     ds:dword_77E738, ebx
xor     esi, esi
mov     ds:dword_77E720, esi
mov     eax, ebx
call    sub_4DC4A7
call    sub_4E1D8A
call    sub_4EDD33
mov     edx, offset unk_511E59
mov     eax, offset unk_511E65
call    sub_4E22FB
mov     ds:dword_77E6F0, offset off_511E35
inc     byte ptr [ecx+1]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_437A26:
xor     edx, edx
mov     ds:dword_77E738, edx
mov     word ptr [ecx+0Ah], 0
mov     eax, ecx
call    sub_43930F
mov     eax, 2
call    sub_49E0D7
mov     byte ptr [ecx], 2
mov     byte ptr [ecx+1], 1

loc_437A4C:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4379C1 endp

align 4
jpt_437A7C dd offset loc_437A83 ; jump table for switch statement
dd offset loc_437A9A
dd offset loc_437AB0
dd offset loc_437ABF
dd offset loc_437AE5



sub_437A68 proc near
push    ebx
push    edx
mov     edx, eax
mov     al, [eax+1]
cmp     al, 4           ; switch 5 cases
ja      def_437A7C      ; jumptable 00437A7C default case
and     eax, 0FFh
jmp     jpt_437A7C[eax*4] ; switch jump

loc_437A83:             ; jumptable 00437A7C case 0
cmp     ds:word_6E23D6, 0
jnz     short def_437A7C ; jumptable 00437A7C default case
mov     eax, 2
call    sub_49E0D7
inc     byte ptr [edx+1]

loc_437A9A:             ; jumptable 00437A7C case 1
call    sub_4A0E35
inc     byte ptr [edx+1]
mov     word ptr [edx+4], 258h
call    sub_4382E2
pop     edx
pop     ebx
retn

loc_437AB0:             ; jumptable 00437A7C case 2
call    sub_4382E2
mov     eax, edx
call    sub_4382C3
pop     edx
pop     ebx
retn

loc_437ABF:             ; jumptable 00437A7C case 3
call    sub_4382E2
call    sub_438AB1
mov     bx, [edx+4]
dec     bx
mov     [edx+4], bx
jnz     short def_437A7C ; jumptable 00437A7C default case
inc     byte ptr [edx+1]
mov     eax, 0Ah
call    sub_49E0D7
pop     edx
pop     ebx
retn

loc_437AE5:             ; jumptable 00437A7C case 4
call    sub_4A0E35
call    sub_4382E2
mov     eax, edx
call    sub_4382D1

def_437A7C:             ; jumptable 00437A7C default case
pop     edx
pop     ebx
retn
sub_437A68 endp




sub_437AF9 proc near
push    ebx
push    edx
mov     eax, offset dword_6DD9BC
call    sub_43930F
call    sub_4A8F93
mov     edx, offset unk_511E49
mov     eax, offset unk_511E39
call    sub_429863
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
sub_437AF9 endp




sub_437B47 proc near
mov     byte ptr [eax], 0
mov     byte ptr [eax+1], 0
retn
sub_437B47 endp

align 10h
jpt_437B93 dd offset loc_437B9A ; jump table for switch statement
dd offset loc_437BB5
dd offset loc_437BE0
dd offset loc_437BFC
dd offset def_437B93
dd offset loc_437DC9
jpt_437D11 dd offset loc_437D18 ; jump table for switch statement
dd offset loc_437D39
dd offset loc_437D55
dd offset loc_437D71



sub_437B78 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_77E784
mov     al, [eax+1]
cmp     al, 5           ; switch 6 cases
ja      def_437B93      ; jumptable 00437B93 default case, case 4
; jumptable 00437D11 default case
and     eax, 0FFh
jmp     jpt_437B93[eax*4] ; switch jump

loc_437B9A:             ; jumptable 00437B93 case 0
cmp     ds:word_6E23D6, 0
jnz     def_437B93      ; jumptable 00437B93 default case, case 4
; jumptable 00437D11 default case
mov     eax, 1
call    sub_49E0D7
inc     byte ptr [ecx+1]

loc_437BB5:             ; jumptable 00437B93 case 1
call    sub_4A0E35
inc     byte ptr [ecx+1]
mov     word ptr [ecx+4], 258h
mov     byte ptr [esi+50h], 0
mov     byte ptr [esi+51h], 0
call    sub_4382E2
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_43864B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_437BE0:             ; jumptable 00437B93 case 2
call    sub_4382E2
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_43864B
mov     eax, ecx
call    sub_4382C3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_437BFC:             ; jumptable 00437B93 case 3
call    sub_4382E2
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_43864B
test    byte ptr ds:word_5708DE, 10h
jz      short loc_437C34
cmp     byte ptr [ecx+0Ch], 0
jle     short loc_437C34
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
call    sub_4D89E4
dec     byte ptr [ecx+0Ch]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_437C34:
test    byte ptr ds:word_5708DE, 40h
jz      short loc_437C73
cmp     word ptr [esi+18h], 0
jbe     short loc_437C4B
mov     eax, 1
jmp     short loc_437C4D

loc_437C4B:
xor     eax, eax

loc_437C4D:
mov     edx, [ecx+9]
sar     edx, 18h
add     eax, 2
cmp     edx, eax
jge     short loc_437C73
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
call    sub_4D89E4
inc     byte ptr [ecx+0Ch]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_437C73:
test    byte ptr ds:word_5708DE, 80h
jz      short loc_437CB4
cmp     byte ptr [ecx+0Ch], 3
jnz     short loc_437CB4
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
call    sub_4D89E4
dec     byte ptr [esi+5Bh]
mov     edx, [esi+58h]
sar     edx, 18h
cmp     word ptr [esi+1Ah], 0
jnz     short loc_437CAA
mov     eax, 1
jmp     short loc_437CAC

loc_437CAA:
xor     eax, eax

loc_437CAC:
cmp     edx, eax
jge     short loc_437CB4
mov     byte ptr [esi+5Bh], 2

loc_437CB4:
test    byte ptr ds:word_5708DE, 20h
jz      short loc_437CF2
cmp     byte ptr [ecx+0Ch], 3
jnz     short loc_437CF2
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
call    sub_4D89E4
mov     bh, [esi+5Bh]
inc     bh
mov     [esi+5Bh], bh
cmp     bh, 2
jle     short loc_437CF2
cmp     word ptr [esi+1Ah], 0
jz      short loc_437CEE
mov     byte ptr [esi+5Bh], 0
jmp     short loc_437CF2

loc_437CEE:
mov     byte ptr [esi+5Bh], 1

loc_437CF2:
test    ds:word_5708DE, 4008h
jz      loc_437D9D
mov     al, [ecx+0Ch]
cmp     al, 3           ; switch 4 cases
ja      def_437B93      ; jumptable 00437B93 default case, case 4
; jumptable 00437D11 default case
and     eax, 0FFh
jmp     jpt_437D11[eax*4] ; switch jump

loc_437D18:             ; jumptable 00437D11 case 0
add     byte ptr [ecx+1], 2
mov     eax, 16h
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A6h

loc_437D2F:
call    sub_4D89E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_437D39:             ; jumptable 00437D11 case 1
mov     byte ptr [ecx], 5
mov     byte ptr [ecx+1], 0
mov     eax, 9
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A7h
jmp     short loc_437D2F

loc_437D55:             ; jumptable 00437D11 case 2
mov     byte ptr [ecx], 6
mov     byte ptr [ecx+1], 0
mov     eax, 9
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A8h
jmp     short loc_437D2F

loc_437D71:             ; jumptable 00437D11 case 3
mov     dl, [esi+5Bh]
inc     dl
mov     [esi+5Bh], dl
cmp     dl, 2
jle     short loc_437D8F
cmp     word ptr [esi+1Ah], 0
jz      short loc_437D8B
mov     byte ptr [esi+5Bh], 0
jmp     short loc_437D8F

loc_437D8B:
mov     byte ptr [esi+5Bh], 1

loc_437D8F:
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
jmp     short loc_437D2F

loc_437D9D:
test    byte ptr ds:word_5708DE+1, 10h
jz      short def_437B93 ; jumptable 00437B93 default case, case 4
; jumptable 00437D11 default case
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
mov     word ptr [ecx+0Eh], 1
mov     byte ptr [ecx], 2
mov     byte ptr [ecx+1], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_437DC9:             ; jumptable 00437B93 case 5
call    sub_4382E2
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_43864B
call    sub_4A0E35
xor     ah, ah
mov     ds:byte_511E30, ah
mov     ds:byte_77E806, ah
mov     eax, offset sub_49F4F7
call    sub_4EEDCA

def_437B93:             ; jumptable 00437B93 default case, case 4
pop     esi             ; jumptable 00437D11 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_437B78 endp

align 4
jpt_437E24 dd offset loc_437E2B ; jump table for switch statement
dd offset loc_437E57
dd offset loc_437E6A
dd offset loc_437E8F
dd offset loc_437EA0



sub_437E10 proc near
push    ebx
push    edx
mov     edx, eax
mov     al, [eax+1]
cmp     al, 4           ; switch 5 cases
ja      def_437E24      ; jumptable 00437E24 default case
and     eax, 0FFh
jmp     jpt_437E24[eax*4] ; switch jump

loc_437E2B:             ; jumptable 00437E24 case 0
cmp     ds:word_6E23D6, 0
jz      short loc_437E4A
call    sub_4382E2
mov     eax, [edx+9]
sar     eax, 18h
call    sub_43864B
jmp     def_437E24      ; jumptable 00437E24 default case

loc_437E4A:
mov     eax, 1
call    sub_49E0D7
inc     byte ptr [edx+1]

loc_437E57:             ; jumptable 00437E24 case 1
call    sub_4A0E35
inc     byte ptr [edx+1]
mov     word ptr [edx+4], 258h
jmp     def_437E24      ; jumptable 00437E24 default case

loc_437E6A:             ; jumptable 00437E24 case 2
xor     ebx, ebx
mov     ds:word_5708DE, bx
mov     ds:word_5708DA, bx
xor     eax, eax
call    sub_4A86B8
call    sub_437AF9
mov     eax, edx
call    sub_4382C3
jmp     short def_437E24 ; jumptable 00437E24 default case

loc_437E8F:             ; jumptable 00437E24 case 3
xor     eax, eax
call    sub_4A86B8
add     [edx+1], al
call    sub_437AF9
jmp     short def_437E24 ; jumptable 00437E24 default case

loc_437EA0:             ; jumptable 00437E24 case 4
cmp     ds:byte_77E806, 1
jnz     short loc_437ECC
mov     eax, 16h
call    sub_49E0D7
call    sub_4E4BA7
xor     dl, dl
mov     ds:byte_511E30, dl
mov     eax, offset sub_49F4F7
call    sub_4EEDCA
jmp     short def_437E24 ; jumptable 00437E24 default case

loc_437ECC:
mov     eax, 9
call    sub_49E0D7
call    sub_437AF9
mov     byte ptr [edx], 4
mov     byte ptr [edx+1], 0

def_437E24:             ; jumptable 00437E24 default case
call    sub_4E4BA7
pop     edx
pop     ebx
retn
sub_437E10 endp




sub_437EEA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+1]
cmp     al, 1
jb      short loc_437F01
jbe     short loc_437F35
cmp     al, 2
jz      short loc_437F57
jmp     loc_437FB6

loc_437F01:
test    al, al
jnz     loc_437FB6
cmp     ds:word_6E23D6, 0
jz      short loc_437F28
call    sub_4382E2
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_43864B
jmp     loc_437FB6

loc_437F28:
mov     eax, 1
call    sub_49E0D7
inc     byte ptr [ecx+1]

loc_437F35:
call    sub_4A0E35
mov     edx, ds:off_52FD55
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
inc     byte ptr [ecx+1]
mov     word ptr [ecx+4], 258h
jmp     short loc_437FB1

loc_437F57:
test    byte ptr ds:dword_55BD7C+3, 40h
jz      short loc_437F74
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 4
jnz     short loc_437F74
mov     byte ptr [ecx], 7
jmp     short loc_437FAD

loc_437F74:
test    byte ptr ds:dword_55BD7C+3, 40h
jnz     short loc_437F86
test    byte ptr ds:word_5708DE, 8
jz      short loc_437FB1

loc_437F86:
test    byte ptr ds:word_5708DE, 8
jz      short loc_437FA0
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4

loc_437FA0:
mov     eax, 9
call    sub_49E0D7
mov     byte ptr [ecx], 4

loc_437FAD:
mov     byte ptr [ecx+1], 0

loc_437FB1:
call    sub_437AF9

loc_437FB6:
call    sub_4E4BA7
pop     edx
pop     ecx
pop     ebx
retn
sub_437EEA endp




sub_437FBF proc near
push    ebx
push    ecx
push    edx
push    esi
xor     ecx, ecx
jmp     loc_438046

loc_437FCA:
add     eax, eax
mov     bh, ds:byte_559A4C[eax]
test    bh, bh
jz      short loc_437FF7
mov     al, bh
and     eax, 0FFh
call    sub_4F8FAD
mov     esi, ds:dword_559A88[ecx*4]
mov     ebx, 7
mov     edx, eax
mov     eax, esi
call    memcpy_

loc_437FF7:
xor     eax, eax

loc_437FF9:
lea     edx, [eax+eax]
cmp     ds:byte_559A75[edx], 0
jz      short loc_438019
xor     ebx, ebx
mov     bl, ds:byte_559A75[edx]
cmp     ebx, ds:dword_511F05[ecx*4]
jz      short loc_438019
inc     eax
jmp     short loc_437FF9

loc_438019:
add     eax, eax
cmp     ds:byte_559A75[eax], 0
jz      short loc_43803C
xor     edx, edx
mov     dl, ds:byte_559A74[eax]
mov     eax, ds:dword_559A88[ecx*4]
mov     dl, ds:byte_530220[edx]
mov     [eax-6], dl

loc_43803C:
inc     ecx
cmp     ecx, 9
jge     def_437B93      ; jumptable 00437B93 default case, case 4
; jumptable 00437D11 default case

loc_438046:
xor     eax, eax

loc_438048:
lea     edx, [eax+eax]
cmp     ds:byte_559A4C[edx], 0
jz      loc_437FCA
xor     ebx, ebx
mov     bl, ds:byte_559A4D[edx]
cmp     ebx, ds:dword_511F05[ecx*4]
jz      loc_437FCA
inc     eax
jmp     short loc_438048
sub_437FBF endp




sub_438070 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     edi, eax
mov     al, [eax+1]
test    al, al
jbe     short loc_43808F
cmp     al, 1
jz      loc_438108
jmp     loc_4382B4

loc_43808F:
mov     eax, offset byte_559A4C
call    sub_4F90BD
mov     eax, offset byte_559A74
call    sub_4F90F7
mov     esi, ds:off_52FCE5
xor     eax, eax
xor     edx, edx
jmp     short loc_4380BF

loc_4380AF:
sub     ecx, 7
mov     ds:dword_559A88[eax*4], ecx
inc     eax
cmp     eax, 9
jge     short loc_4380CA

loc_4380BF:
lea     ecx, [esi+edx]
inc     edx
cmp     byte ptr [ecx], 82h
jz      short loc_4380AF
jmp     short loc_4380BF

loc_4380CA:
call    sub_437FBF
call    sub_4A0E35
mov     edx, ds:off_52FCE1
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
mov     edx, ds:off_52FCE5
mov     ebx, 0FFFFFFFFh
mov     eax, 1
call    sub_4A0CDD
call    sub_4F904F
mov     ds:dword_559AAC, eax
inc     byte ptr [edi+1]

loc_438108:
mov     esi, ds:dword_55BD7C
and     esi, 0FFh
cmp     esi, 9
jge     loc_438262
call    sub_4F8FEF
mov     [esp+20h+var_1C], eax
test    eax, eax
jz      loc_4381BF
xor     edx, edx

loc_438130:
lea     eax, [edx+edx]
mov     ch, ds:byte_559A4C[eax]
test    ch, ch
jz      short loc_43814D
mov     al, ch
and     eax, 0FFh
cmp     eax, [esp+20h+var_1C]
jz      short loc_43814D
inc     edx
jmp     short loc_438130

loc_43814D:
cmp     ds:byte_559A4C[edx*2], 0
jnz     loc_4382AF
mov     eax, [esp+20h+var_1C]
call    sub_4F8FAD
test    eax, eax
jz      loc_4382AF
mov     ecx, ds:dword_559A88[esi*4]
mov     ebx, 7
mov     edx, eax
mov     eax, ecx
call    memcpy_
xor     eax, eax
jmp     short loc_43818F

loc_438185:
inc     eax
cmp     eax, 14h
jge     loc_4382AF

loc_43818F:
lea     edx, [eax+eax]
cmp     ds:byte_559A4C[edx], 0
jz      loc_4382AF
xor     ebx, ebx
mov     bl, ds:byte_559A4D[edx]
cmp     ebx, ds:dword_511F05[esi*4]
jnz     short loc_438185
mov     al, byte ptr [esp+20h+var_1C]
mov     ds:byte_559A4C[edx], al
jmp     loc_4382AF

loc_4381BF:
call    sub_4F904F
mov     [esp+20h+var_1C], eax
cmp     eax, 0FFFFFFFFh
jz      loc_438245
cmp     eax, ds:dword_559AAC
jz      loc_438245
xor     eax, eax
jmp     short loc_4381E7

loc_4381E1:
inc     eax
cmp     eax, 0Ah
jge     short loc_43823B

loc_4381E7:
lea     edx, [eax+eax]
xor     ebx, ebx
mov     bl, ds:byte_559A75[edx]
cmp     ebx, ds:dword_511F05[esi*4]
jnz     short loc_4381E1
mov     dl, ds:byte_559A74[edx]
and     edx, 0FFh
mov     [esp+20h+var_20], edx
xor     edx, edx
mov     ebp, [esp+20h+var_1C]
jmp     short loc_438218

loc_438212:
inc     edx
cmp     edx, 0Ah
jge     short loc_438230

loc_438218:
lea     ecx, [edx+edx]
xor     ebx, ebx
mov     bl, ds:byte_559A74[ecx]
cmp     ebx, ebp
jnz     short loc_438212
mov     dl, byte ptr [esp+20h+var_20]
mov     ds:byte_559A74[ecx], dl

loc_438230:
mov     dl, byte ptr [esp+20h+var_1C]
mov     ds:byte_559A74[eax*2], dl

loc_43823B:
call    sub_437FBF
jmp     loc_4382AF

loc_438245:
mov     ecx, [esp+20h+var_1C]
cmp     ecx, 0FFFFFFFFh
jnz     loc_4382AF
cmp     ecx, ds:dword_559AAC
jz      short loc_4382AF
mov     ds:dword_559AAC, ecx
jmp     short loc_4382AF

loc_438262:
test    byte ptr ds:dword_55BD7C+3, 40h
jz      short loc_4382AF
cmp     esi, 0Ah
jb      short loc_438279
jbe     short loc_4382A8
cmp     esi, 0Bh
jz      short loc_438294
jmp     short loc_4382AF

loc_438279:
cmp     esi, 9
jnz     short loc_4382AF
mov     eax, offset byte_559A4C
call    sub_4F90CB
mov     eax, offset byte_559A74
call    sub_4F9105
jmp     short loc_43823B

loc_438294:
mov     eax, offset byte_559A4C
call    sub_4F90D9
mov     eax, offset byte_559A74
call    sub_4F9113

loc_4382A8:
mov     byte ptr [edi], 6
mov     byte ptr [edi+1], 1

loc_4382AF:
call    sub_437AF9

loc_4382B4:
call    sub_4E4BA7
add     esp, 8

loc_4382BC:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_438070 endp




sub_4382C3 proc near
cmp     ds:word_6E23D6, 0
jnz     short locret_4382D0
inc     byte ptr [eax+1]

locret_4382D0:
retn
sub_4382C3 endp




sub_4382D1 proc near
cmp     ds:word_6E23D6, 0
jnz     short locret_4382E1
inc     byte ptr [eax]
mov     byte ptr [eax+1], 0

locret_4382E1:
retn
sub_4382D1 endp




sub_4382E2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87F0
mov     ecx, 100h
mov     ebx, 140h
xor     edx, edx
mov     eax, 1
call    sub_4F892F
mov     [esi+16h], ax
mov     edx, 1F0h
xor     eax, eax
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 20h ; ' '
mov     word ptr [esi+0Ah], 8
mov     word ptr [esi+10h], 11Fh
mov     word ptr [esi+12h], 8
mov     word ptr [esi+18h], 20h ; ' '
mov     word ptr [esi+1Ah], 0A8h
mov     word ptr [esi+20h], 11Fh
mov     word ptr [esi+22h], 0A8h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+14h], 0FFh
mov     byte ptr [esi+15h], 0
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 0A0h
mov     byte ptr [esi+24h], 0FFh
mov     byte ptr [esi+25h], 0A0h
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Eh
add     esi, 38h ; '8'
add     eax, offset unk_7764A4
add     eax, 210h
call    sub_4F87A6
mov     eax, esi
call    sub_4F87F0
mov     ecx, 100h
mov     ebx, 240h
mov     edx, 2
mov     eax, 1
call    sub_4F892F
mov     [esi+16h], ax
mov     edx, 1F2h
xor     eax, eax
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 0
mov     word ptr [esi+0Ah], 0
mov     word ptr [esi+10h], 0A0h
mov     word ptr [esi+12h], 0
mov     word ptr [esi+18h], 0
mov     word ptr [esi+1Ah], 0A0h
mov     word ptr [esi+20h], 0A0h
mov     word ptr [esi+22h], 0A0h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+14h], 0A0h
mov     byte ptr [esi+15h], 0
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 0A0h
mov     byte ptr [esi+24h], 0A0h
mov     byte ptr [esi+25h], 0A0h
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 8Ch
call    sub_4F87A6
mov     eax, esi
call    sub_4F87F0
mov     ecx, 100h
mov     ebx, 240h
mov     edx, 2
mov     eax, 1
call    sub_4F892F
mov     [esi+16h], ax
mov     edx, 1F2h
xor     eax, eax
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 0A0h
mov     word ptr [esi+0Ah], 0
mov     word ptr [esi+10h], 140h
mov     word ptr [esi+12h], 0
mov     word ptr [esi+18h], 0A0h
mov     word ptr [esi+1Ah], 0A0h
mov     word ptr [esi+20h], 140h
mov     word ptr [esi+22h], 0A0h
mov     byte ptr [esi+0Ch], 0A0h
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+14h], 0
mov     byte ptr [esi+15h], 0
mov     byte ptr [esi+1Ch], 0A0h
mov     byte ptr [esi+1Dh], 0A0h
mov     byte ptr [esi+24h], 0
mov     byte ptr [esi+25h], 0A0h
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 8Ch
call    sub_4F87A6
mov     eax, esi
call    sub_4F8817
mov     word ptr [esi+8], 0
mov     word ptr [esi+0Ah], 90h
mov     word ptr [esi+10h], 140h
mov     word ptr [esi+12h], 90h
mov     word ptr [esi+18h], 0
mov     word ptr [esi+1Ah], 0A0h
mov     word ptr [esi+20h], 140h
mov     word ptr [esi+22h], 0A0h
mov     byte ptr [esi+4], 0
mov     byte ptr [esi+5], 0
mov     byte ptr [esi+6], 0
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+0Eh], 0
mov     byte ptr [esi+14h], 0FFh
mov     byte ptr [esi+15h], 0FFh
mov     byte ptr [esi+16h], 0FFh
mov     byte ptr [esi+1Ch], 0FFh
mov     byte ptr [esi+1Dh], 0FFh
mov     byte ptr [esi+1Eh], 0FFh
mov     edx, 1
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 88h
call    sub_4F87A6
push    0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2
mov     eax, 1
call    sub_4F892F
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4F8864
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 88h
call    sub_4F87A6
mov     eax, esi
call    sub_4F8817
mov     word ptr [esi+8], 0
mov     word ptr [esi+0Ah], 0A2h
mov     word ptr [esi+10h], 140h
mov     word ptr [esi+12h], 0A2h
mov     word ptr [esi+18h], 0
mov     word ptr [esi+1Ah], 0F0h
mov     word ptr [esi+20h], 140h
mov     word ptr [esi+22h], 0F0h
mov     byte ptr [esi+4], 0
mov     byte ptr [esi+5], 0
mov     byte ptr [esi+6], 0
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+0Eh], 0
mov     byte ptr [esi+14h], 0C0h
mov     byte ptr [esi+15h], 0FFh
mov     byte ptr [esi+16h], 0E0h
mov     byte ptr [esi+1Ch], 0C0h
mov     byte ptr [esi+1Dh], 0FFh
mov     byte ptr [esi+1Eh], 0E0h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 8Ch
call    sub_4F87A6
mov     ds:dword_77E6DC, esi
call    sub_437AF9
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4382E2 endp




sub_43864B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     edi, offset dword_77E784
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87F0
xor     ecx, ecx
mov     ebx, 100h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
or      ah, 10h
mov     [esi+16h], ax
mov     edx, 1F1h
test    ebp, ebp
jnz     short loc_43868C
mov     eax, 1
jmp     short loc_43868E

loc_43868C:
xor     eax, eax

loc_43868E:
shl     eax, 4
add     eax, 10h
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 0DDh
mov     word ptr [esi+0Ah], 128h
mov     word ptr [esi+10h], 1A3h
mov     word ptr [esi+12h], 128h
mov     word ptr [esi+18h], 0DDh
mov     word ptr [esi+1Ah], 148h
mov     word ptr [esi+20h], 1A3h
mov     word ptr [esi+22h], 148h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 70h ; 'p'
mov     byte ptr [esi+14h], 0C6h
mov     byte ptr [esi+15h], 70h ; 'p'
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 90h
mov     byte ptr [esi+24h], 0C6h
mov     byte ptr [esi+25h], 90h
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     eax, esi
call    sub_4F87F0
xor     ecx, ecx
mov     ebx, 100h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
or      ah, 10h
mov     [esi+16h], ax
mov     edx, 1F1h
cmp     ebp, 1
jnz     short loc_438740
mov     eax, ebp
jmp     short loc_438742

loc_438740:
xor     eax, eax

loc_438742:
shl     eax, 4
add     eax, 10h
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 0E2h
mov     word ptr [esi+0Ah], 148h
mov     word ptr [esi+10h], 19Eh
mov     word ptr [esi+12h], 148h
mov     word ptr [esi+18h], 0E2h
mov     word ptr [esi+1Ah], 168h
mov     word ptr [esi+20h], 19Eh
mov     word ptr [esi+22h], 168h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 90h
mov     byte ptr [esi+14h], 0BCh
mov     byte ptr [esi+15h], 90h
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 0B0h
mov     byte ptr [esi+24h], 0BCh
mov     byte ptr [esi+25h], 0B0h
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     eax, esi
call    sub_4F87F0
xor     ecx, ecx
mov     ebx, 100h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
or      ah, 10h
mov     [esi+16h], ax
mov     edx, 1F1h
cmp     ebp, 2
jnz     short loc_4387F7
mov     eax, 1
jmp     short loc_4387F9

loc_4387F7:
xor     eax, eax

loc_4387F9:
shl     eax, 4
add     eax, 10h
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 0F6h
mov     word ptr [esi+0Ah], 168h
mov     word ptr [esi+10h], 18Ah
mov     word ptr [esi+12h], 168h
mov     word ptr [esi+18h], 0F6h
mov     word ptr [esi+1Ah], 188h
mov     word ptr [esi+20h], 18Ah
mov     word ptr [esi+22h], 188h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0B0h
mov     byte ptr [esi+14h], 94h
mov     byte ptr [esi+15h], 0B0h
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 0D0h
mov     byte ptr [esi+24h], 94h
mov     byte ptr [esi+25h], 0D0h
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6
cmp     word ptr [edi+18h], 0
jz      loc_438A0C
mov     eax, esi
call    sub_4F87F0
xor     ecx, ecx
mov     ebx, 100h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
or      ah, 10h
mov     [esi+16h], ax
mov     edx, 1F1h
mov     eax, [edi+58h]
sar     eax, 18h
add     eax, eax
lea     ecx, [eax+3]
cmp     ebp, 3
jz      short loc_4388C4
mov     eax, 1
jmp     short loc_4388C6

loc_4388C4:
xor     eax, eax

loc_4388C6:
add     eax, ecx
shl     eax, 4
call    sub_4F8961
mov     [esi+0Eh], ax
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     al, [edi+5Bh]
cmp     al, 1
jb      short loc_4388FF
jbe     short loc_43895C
cmp     al, 2
jz      loc_4389AA
jmp     loc_4389FA

loc_4388FF:
test    al, al
jnz     loc_4389FA
mov     word ptr [esi+8], 111h
mov     word ptr [esi+0Ah], 188h
mov     word ptr [esi+10h], 16Fh
mov     word ptr [esi+12h], 188h
mov     word ptr [esi+18h], 111h
mov     word ptr [esi+1Ah], 1A8h
mov     word ptr [esi+20h], 16Fh
mov     word ptr [esi+22h], 1A8h
mov     byte ptr [esi+0Ch], 0A2h
mov     byte ptr [esi+0Dh], 0D0h
mov     byte ptr [esi+14h], 0FFh
mov     byte ptr [esi+15h], 0D0h
mov     byte ptr [esi+1Ch], 0A2h
mov     byte ptr [esi+1Dh], 0F0h
mov     byte ptr [esi+24h], 0FFh

loc_438953:
mov     byte ptr [esi+25h], 0F0h
jmp     loc_4389FA

loc_43895C:
mov     word ptr [esi+8], 0EEh
mov     word ptr [esi+0Ah], 188h
mov     word ptr [esi+10h], 192h
mov     word ptr [esi+12h], 188h
mov     word ptr [esi+18h], 0EEh
mov     word ptr [esi+1Ah], 1A8h
mov     word ptr [esi+20h], 192h
mov     word ptr [esi+22h], 1A8h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0D0h
mov     byte ptr [esi+14h], 0A4h
mov     byte ptr [esi+15h], 0D0h
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 0F0h
mov     byte ptr [esi+24h], 0A4h
jmp     short loc_438953

loc_4389AA:
mov     word ptr [esi+8], 10Ah
mov     word ptr [esi+0Ah], 188h
mov     word ptr [esi+10h], 176h
mov     word ptr [esi+12h], 188h
mov     word ptr [esi+18h], 10Ah
mov     word ptr [esi+1Ah], 1A8h
mov     word ptr [esi+20h], 176h
mov     word ptr [esi+22h], 1A8h
mov     byte ptr [esi+0Ch], 94h
mov     byte ptr [esi+0Dh], 0B0h
mov     byte ptr [esi+14h], 0FFh
mov     byte ptr [esi+15h], 0B0h
mov     byte ptr [esi+1Ch], 94h
mov     byte ptr [esi+1Dh], 0D0h
mov     byte ptr [esi+24h], 0FFh
mov     byte ptr [esi+25h], 0D0h

loc_4389FA:
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6

loc_438A0C:
mov     eax, esi
call    sub_4F87CF
mov     byte ptr [esi+4], 0
mov     byte ptr [esi+5], 0
mov     byte ptr [esi+6], 0
mov     edx, 1
mov     eax, esi
call    sub_4F884E
cmp     word ptr [edi+18h], 0
jz      short loc_438A64
mov     word ptr [esi+8], 60h ; '`'
mov     word ptr [esi+0Ah], 90h
mov     word ptr [esi+0Ch], 0E0h
mov     word ptr [esi+0Eh], 90h
mov     word ptr [esi+10h], 60h ; '`'
mov     word ptr [esi+12h], 0D8h
mov     word ptr [esi+14h], 0E0h
mov     word ptr [esi+16h], 0D8h
jmp     short loc_438A94

loc_438A64:
mov     word ptr [esi+8], 60h ; '`'
mov     word ptr [esi+0Ah], 90h
mov     word ptr [esi+0Ch], 0E0h
mov     word ptr [esi+0Eh], 90h
mov     word ptr [esi+10h], 60h ; '`'
mov     word ptr [esi+12h], 0C8h
mov     word ptr [esi+14h], 0E0h
mov     word ptr [esi+16h], 0C8h

loc_438A94:
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     ds:dword_77E6DC, esi
jmp     loc_4382BC
sub_43864B endp




sub_438AB1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87F0
xor     ecx, ecx
mov     ebx, 100h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
or      ah, 10h
mov     [esi+16h], ax
mov     edx, 1F1h
xor     eax, eax
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 50h ; 'P'
mov     word ptr [esi+0Ah], 160h
mov     word ptr [esi+10h], 150h
mov     word ptr [esi+12h], 160h
mov     word ptr [esi+18h], 50h ; 'P'
mov     word ptr [esi+1Ah], 180h
mov     word ptr [esi+20h], 150h
mov     word ptr [esi+22h], 180h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+14h], 0FFh
mov     byte ptr [esi+15h], 0
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 20h ; ' '
mov     byte ptr [esi+24h], 0FFh
mov     byte ptr [esi+25h], 20h ; ' '
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     eax, esi
call    sub_4F87F0
xor     ecx, ecx
mov     ebx, 100h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
or      ah, 10h
mov     [esi+16h], ax
mov     edx, 1F1h
xor     eax, eax
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 150h
mov     word ptr [esi+0Ah], 160h
mov     word ptr [esi+10h], 230h
mov     word ptr [esi+12h], 160h
mov     word ptr [esi+18h], 150h
mov     word ptr [esi+1Ah], 180h
mov     word ptr [esi+20h], 230h
mov     word ptr [esi+22h], 180h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 20h ; ' '
mov     byte ptr [esi+14h], 0E0h
mov     byte ptr [esi+15h], 20h ; ' '
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 40h ; '@'
mov     byte ptr [esi+24h], 0E0h
mov     byte ptr [esi+25h], 40h ; '@'
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     eax, esi
call    sub_4F87F0
xor     ecx, ecx
mov     ebx, 100h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
or      ah, 10h
mov     [esi+16h], ax
mov     edx, 1F1h
xor     eax, eax
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 40h ; '@'
mov     word ptr [esi+0Ah], 1A0h
mov     word ptr [esi+10h], 140h
mov     word ptr [esi+12h], 1A0h
mov     word ptr [esi+18h], 40h ; '@'
mov     word ptr [esi+1Ah], 1B8h
mov     word ptr [esi+20h], 140h
mov     word ptr [esi+22h], 1B8h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 40h ; '@'
mov     byte ptr [esi+14h], 0FFh
mov     byte ptr [esi+15h], 40h ; '@'
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 58h ; 'X'
mov     byte ptr [esi+24h], 0FFh
mov     byte ptr [esi+25h], 58h ; 'X'
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     eax, esi
call    sub_4F87F0
xor     ecx, ecx
mov     ebx, 100h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
or      ah, 10h
mov     [esi+16h], ax
mov     edx, 1F1h
xor     eax, eax
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 140h
mov     word ptr [esi+0Ah], 1A0h
mov     word ptr [esi+10h], 240h
mov     word ptr [esi+12h], 1A0h
mov     word ptr [esi+18h], 140h
mov     word ptr [esi+1Ah], 1B8h
mov     word ptr [esi+20h], 240h
mov     word ptr [esi+22h], 1B8h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 58h ; 'X'
mov     byte ptr [esi+14h], 0FFh
mov     byte ptr [esi+15h], 58h ; 'X'
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 70h ; 'p'
mov     byte ptr [esi+24h], 0FFh
mov     byte ptr [esi+25h], 70h ; 'p'
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     ds:dword_77E6DC, esi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_438AB1 endp




sub_438D5A proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 4000400h
mov     dword ptr [ecx+15Ch], 42100400h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+4Ch], 0
mov     dword ptr [ecx+50h], 0
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+78h], offset unk_511F2C
mov     dword ptr [ecx+10h], 0
mov     eax, [ecx+9]
sar     eax, 18h
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, ds:off_51369E[eax*4]
mov     eax, [eax+edx*4]
mov     [ebx], eax
test    eax, eax
jnz     short loc_438DF1
mov     byte ptr [ecx+8], 2
pop     ecx
pop     ebx
retn

loc_438DF1:
mov     word ptr [ebx+4], 0
mov     word ptr [ebx+6], 0
mov     word ptr [ebx+8], 0
mov     byte ptr [ebx+12h], 0
mov     byte ptr [ecx+0ACh], 0FFh
mov     byte ptr [ebx+13h], 0FFh
mov     word ptr [ebx+0Ah], 0
mov     word ptr [ebx+0Ch], 0
mov     word ptr [ebx+0Eh], 0
inc     byte ptr [ecx+8]
mov     edx, ebx
mov     eax, ecx
call    sub_4390E2
pop     ecx
pop     ebx
retn
sub_438D5A endp

db 8Dh, 40h, 0
jpt_438F39 dd offset loc_438EA6 ; jump table for switch statement
dd offset loc_438EFB
dd offset loc_438F40
dd offset loc_438F56
dd offset loc_438F6C
dd offset loc_438F77
dd offset loc_438F81
dd offset loc_438F8B
dd offset loc_438F98
dd offset loc_438FA5
dd offset loc_438FB2
dd offset loc_438FBF
dd offset loc_438FCC
dd offset loc_438FD9
dd offset loc_438FE4
dd offset loc_438FF1
dd offset loc_438FF7
dd offset loc_439013
dd offset loc_439019
dd offset loc_439051
dd offset loc_439061
dd offset loc_439071
dd offset loc_439081
dd offset loc_43908E
dd offset loc_43909B
dd offset loc_4390AF
dd offset loc_4390A8



sub_438EA2 proc near
push    ebx
push    ecx
jmp     short def_438F39 ; jumptable 00438F39 default case

loc_438EA6:             ; jumptable 00438F39 case 1
mov     bx, [ecx+2]
mov     [eax+14h], bx
xor     ecx, ecx
mov     cx, [edx+4]
mov     ebx, [edx]
mov     bx, [ebx+ecx*2+4]
mov     [eax+16h], bx
xor     ecx, ecx
mov     cx, [edx+4]
mov     ebx, [edx]
mov     bx, [ebx+ecx*2+6]
mov     [eax+18h], bx
mov     ecx, [eax+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+1Ch], ecx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
mov     ecx, [eax+16h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+24h], ecx

loc_438EF4:
add     word ptr [edx+4], 4
jmp     short def_438F39 ; jumptable 00438F39 default case

loc_438EFB:             ; jumptable 00438F39 case 2
mov     bx, [ecx+2]
mov     [eax+14h], bx
mov     ecx, [eax+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+1Ch], ecx

loc_438F0F:
add     word ptr [edx+4], 2

def_438F39:             ; jumptable 00438F39 default case
xor     ecx, ecx
mov     cx, [edx+4]
add     ecx, ecx
mov     ebx, [edx]
add     ecx, ebx
mov     bx, [ecx]
test    bx, bx
jz      loc_4390BC
dec     ebx             ; switch 27 cases
cmp     bx, 1Ah
ja      short def_438F39 ; jumptable 00438F39 default case
and     ebx, 0FFFFh
jmp     jpt_438F39[ebx*4] ; switch jump

loc_438F40:             ; jumptable 00438F39 case 3
mov     bx, [ecx+2]
mov     [eax+16h], bx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
jmp     short loc_438F0F

loc_438F56:             ; jumptable 00438F39 case 4
mov     bx, [ecx+2]
mov     [eax+18h], bx
mov     ecx, [eax+16h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+24h], ecx
jmp     short loc_438F0F

loc_438F6C:             ; jumptable 00438F39 case 5
mov     bl, [ecx+2]
mov     [eax+0ACh], bl
jmp     short loc_438F0F

loc_438F77:             ; jumptable 00438F39 case 6
mov     bx, [ecx+2]
mov     [eax+44h], bx
jmp     short loc_438F0F

loc_438F81:             ; jumptable 00438F39 case 7
mov     bx, [ecx+2]
mov     [eax+4Ch], bx
jmp     short loc_438F0F

loc_438F8B:             ; jumptable 00438F39 case 8
mov     bx, [ecx+2]
mov     [eax+46h], bx
jmp     loc_438F0F

loc_438F98:             ; jumptable 00438F39 case 9
mov     bx, [ecx+2]
mov     [eax+4Eh], bx
jmp     loc_438F0F

loc_438FA5:             ; jumptable 00438F39 case 10
mov     bx, [ecx+2]
mov     [eax+48h], bx
jmp     loc_438F0F

loc_438FB2:             ; jumptable 00438F39 case 11
mov     bx, [ecx+2]
mov     [eax+50h], bx
jmp     loc_438F0F

loc_438FBF:             ; jumptable 00438F39 case 12
mov     bx, [ecx+2]
mov     [eax+56h], bx
jmp     loc_438F0F

loc_438FCC:             ; jumptable 00438F39 case 13
mov     bx, [ecx+2]
mov     [edx+8], bx
jmp     loc_438F0F

loc_438FD9:             ; jumptable 00438F39 case 14
mov     bl, [ecx+2]
mov     [edx+13h], bl
jmp     loc_438F0F

loc_438FE4:             ; jumptable 00438F39 case 15
mov     byte ptr [edx+12h], 0

loc_438FE8:
inc     word ptr [edx+4]
jmp     def_438F39      ; jumptable 00438F39 default case

loc_438FF1:             ; jumptable 00438F39 case 16
mov     byte ptr [edx+12h], 1
jmp     short loc_438FE8

loc_438FF7:             ; jumptable 00438F39 case 17
mov     byte ptr [eax+0Dh], 1
xor     ecx, ecx
mov     cx, [edx+4]
mov     ebx, [edx]
mov     bl, [ebx+ecx*2+2]
mov     [eax+0Eh], bl
mov     byte ptr [eax+0Fh], 0
jmp     loc_438F0F

loc_439013:             ; jumptable 00438F39 case 18
mov     byte ptr [eax+0Dh], 0
jmp     short loc_438FE8

loc_439019:             ; jumptable 00438F39 case 19
mov     bx, [ecx+2]
mov     [eax+158h], bx
xor     ecx, ecx
mov     cx, [edx+4]
mov     ebx, [edx]
mov     bx, [ebx+ecx*2+4]
mov     [eax+15Ah], bx
xor     ecx, ecx
mov     cx, [edx+4]
mov     ebx, [edx]
mov     bx, [ebx+ecx*2+6]
mov     [eax+15Ch], bx
jmp     loc_438EF4

loc_439051:             ; jumptable 00438F39 case 20
mov     bx, [ecx+2]
mov     [eax+158h], bx
jmp     loc_438F0F

loc_439061:             ; jumptable 00438F39 case 21
mov     bx, [ecx+2]
mov     [eax+15Ah], bx
jmp     loc_438F0F

loc_439071:             ; jumptable 00438F39 case 22
mov     bx, [ecx+2]
mov     [eax+15Ch], bx
jmp     loc_438F0F

loc_439081:             ; jumptable 00438F39 case 23
mov     bx, [ecx+2]
mov     [edx+0Ah], bx
jmp     loc_438F0F

loc_43908E:             ; jumptable 00438F39 case 24
mov     bx, [ecx+2]
mov     [edx+0Ch], bx
jmp     loc_438F0F

loc_43909B:             ; jumptable 00438F39 case 25
mov     bx, [ecx+2]
mov     [edx+0Eh], bx
jmp     loc_438F0F

loc_4390A8:             ; jumptable 00438F39 case 27
mov     byte ptr [eax+8], 2
pop     ecx
pop     ebx
retn

loc_4390AF:             ; jumptable 00438F39 case 26
mov     bx, [ecx+2]
mov     [edx+4], bx
jmp     def_438F39      ; jumptable 00438F39 default case

loc_4390BC:
mov     ax, [ecx+2]
dec     eax
mov     [edx+6], ax
add     word ptr [edx+4], 2
pop     ecx
pop     ebx
retn
sub_438EA2 endp

align 2
jpt_43920B dd offset loc_439212 ; jump table for switch statement
dd offset loc_439276
dd offset loc_43929A
dd offset loc_4392C1
dd offset loc_4392D8



sub_4390E2 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     [esp+18h+var_18], edx
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
mov     edx, [esp+18h+var_18]
mov     dl, [edx+13h]
mov     ecx, [esp+18h+var_18]
mov     [ecx+14h], dl
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+5Ch]
lea     esi, [ebp+54h]
movsd
movsd
mov     bx, [ecx+6]
test    bx, bx
jnz     short loc_439133
mov     edx, ecx
call    sub_438EA2
jmp     short loc_43913C

loc_439133:
mov     edx, ecx
mov     ecx, ebx
dec     ecx
mov     [edx+6], cx

loc_43913C:
mov     dx, [ebp+4Ch]
add     [ebp+44h], dx
mov     dx, [ebp+4Eh]
add     [ebp+46h], dx
mov     dx, [ebp+50h]
add     [ebp+48h], dx
mov     edx, [esp+18h+var_18]
cmp     byte ptr [edx+12h], 0
jz      short loc_4391A1
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 0Ch
add     [ebp+1Ch], edx
mov     edx, [ebp+44h]
sar     edx, 10h
shl     edx, 0Ch
add     [ebp+20h], edx
mov     edx, [ebp+46h]
sar     edx, 10h
shl     edx, 0Ch
add     [ebp+24h], edx
mov     edx, [ebp+1Ch]
sar     edx, 10h
mov     [ebp+14h], dx
mov     edx, [ebp+20h]
sar     edx, 10h
mov     [ebp+16h], dx
mov     edx, [ebp+24h]
sar     edx, 10h
mov     [ebp+18h], dx
jmp     short loc_4391BA

loc_4391A1:
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
mov     eax, ebp
call    sub_4DD43B

loc_4391BA:
mov     edx, [esp+18h+var_18]
mov     dx, [edx+8]
add     [ebp+56h], dx
mov     edx, [esp+18h+var_18]
mov     dx, [edx+0Ah]
add     [ebp+158h], dx
mov     edx, [esp+18h+var_18]
mov     dx, [edx+0Ch]
add     [ebp+15Ah], dx
mov     edx, [esp+18h+var_18]
mov     dx, [edx+0Eh]
add     [ebp+15Ch], dx
cmp     byte ptr [ebp+0Dh], 0
jz      def_43920B      ; jumptable 0043920B default case
mov     dl, [ebp+0Eh]
cmp     dl, 4           ; switch 5 cases
ja      def_43920B      ; jumptable 0043920B default case
and     edx, 0FFh
jmp     jpt_43920B[edx*4] ; switch jump

loc_439212:             ; jumptable 0043920B case 0
mov     ch, [ebp+0Fh]
test    ch, ch
jnz     short loc_439230
xor     ebx, ebx
xor     edx, edx
mov     eax, 0D6h
call    sub_4D89E4
mov     byte ptr [ebp+0Fh], 12h
jmp     def_43920B      ; jumptable 0043920B default case

loc_439230:
mov     al, ch
dec     al
mov     [ebp+0Fh], al

def_43920B:             ; jumptable 0043920B default case
mov     edx, [esp+18h+var_18]
mov     dl, [edx+13h]
mov     ecx, [esp+18h+var_18]
cmp     dl, [ecx+14h]
jz      short loc_43924E
mov     dl, [ecx+13h]
mov     [ebp+110h], dl

loc_43924E:
mov     dl, [ebp+0ADh]
cmp     dl, [ebp+0ACh]
jz      loc_4392E3
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     loc_4392EA

loc_439276:             ; jumptable 0043920B case 1
mov     bh, [ebp+0Fh]
test    bh, bh
jnz     short loc_439291
xor     ebx, ebx
xor     edx, edx
mov     eax, 0D7h
call    sub_4D89E4
mov     byte ptr [ebp+0Fh], 0Ah
jmp     short def_43920B ; jumptable 0043920B default case

loc_439291:
mov     cl, bh
dec     cl
mov     [ebp+0Fh], cl
jmp     short def_43920B ; jumptable 0043920B default case

loc_43929A:             ; jumptable 0043920B case 2
mov     dh, [ebp+0Fh]
test    dh, dh
jnz     short loc_4392B5
xor     ebx, ebx
xor     edx, edx
mov     eax, 0D7h
call    sub_4D89E4
mov     byte ptr [ebp+0Fh], 8
jmp     short def_43920B ; jumptable 0043920B default case

loc_4392B5:
mov     bl, dh
dec     bl
mov     [ebp+0Fh], bl
jmp     def_43920B      ; jumptable 0043920B default case

loc_4392C1:             ; jumptable 0043920B case 3
xor     ebx, ebx
xor     edx, edx
mov     eax, 0DAh

loc_4392CA:
call    sub_4D89E4
mov     byte ptr [ebp+0Dh], 0
jmp     def_43920B      ; jumptable 0043920B default case

loc_4392D8:             ; jumptable 0043920B case 4
xor     ebx, ebx
xor     edx, edx
mov     eax, 0D9h
jmp     short loc_4392CA

loc_4392E3:
mov     eax, ebp
call    sub_4DEADD

loc_4392EA:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4390E2 endp



; Attributes: thunk

sub_4392F3 proc near
jmp     sub_4DE2F6
sub_4392F3 endp


loc_4392F8:
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+8]
lea     edx, [eax+408h]
call    ds:funcs_439305[ecx*4]
pop     edx
pop     ecx
retn



sub_43930F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ax, [eax+0Ah]
cmp     ax, 1
jb      short loc_439331
jbe     short loc_439386
cmp     ax, 2
jz      loc_4393BC
jmp     loc_4393DD

loc_439331:
test    ax, ax
jnz     loc_4393DD
cmp     ds:word_6E23D6, 0
jnz     loc_4393DD
xor     edx, edx
jmp     short loc_439352

loc_43934C:
inc     edx
cmp     edx, 10h
jge     short loc_43937A

loc_439352:
call    sub_4DDF54
test    eax, eax
jz      short loc_43934C
mov     byte ptr [eax], 1
mov     [eax+3], dl
mov     byte ptr [eax+2], 0
mov     word ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     bl, [ecx+8]
mov     [eax+0Ch], bl
jmp     short loc_43934C

loc_43937A:
mov     word ptr [ecx+6], 12Ch

loc_439380:
inc     word ptr [ecx+0Ah]
jmp     short loc_4393DD

loc_439386:
mov     bx, [ecx+6]
test    bx, bx
jnz     short loc_4393B3
mov     edx, 80h
mov     eax, 2
call    sub_4DC979
mov     di, [ecx+8]
inc     edi
mov     [ecx+8], di
cmp     di, 8
jle     short loc_439380
mov     [ecx+8], bx
jmp     short loc_439380

loc_4393B3:
mov     esi, ebx
dec     esi
mov     [ecx+6], si
jmp     short loc_4393DD

loc_4393BC:
cmp     ds:word_6E23D6, 0
jnz     short loc_4393DD
mov     ah, [ecx]
cmp     ah, 4
jz      short loc_4393D7
cmp     ah, 5
jz      short loc_4393D7
cmp     ah, 6
jnz     short loc_4393DD

loc_4393D7:
mov     word ptr [ecx+0Ah], 0

loc_4393DD:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43930F endp




sub_4393E3 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+2Ch]
mov     bl, [eax+0Dh]
dec     bl
mov     [eax+0Dh], bl
jz      short loc_4393F9
cmp     byte ptr [edx+8], 2
jnz     short loc_439400

loc_4393F9:
mov     byte ptr [eax+0Dh], 0
inc     byte ptr [eax+8]

loc_439400:
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     ecx, edx
shl     ecx, 8
add     ecx, edx
shl     edx, 10h
add     edx, ecx
add     edx, 2E000000h
mov     [eax+18h], edx
movsx   dx, byte ptr [eax+0Fh]
add     [eax+24h], dx
mov     dx, [eax+28h]
add     [eax+1Eh], dx
pop     edx
pop     ecx
pop     ebx
retn
sub_4393E3 endp




sub_439430 proc near
or      byte ptr [eax], 2
inc     byte ptr [eax+8]
jmp     short sub_4393E3
sub_439430 endp



; Attributes: thunk

sub_439438 proc near
jmp     sub_4DE3EA
sub_439438 endp




sub_43943D proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_439443[edx*4]
pop     edx
retn
sub_43943D endp




sub_43944C proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     edx, eax
mov     ah, [eax+0Bh]
inc     ah
mov     [edx+0Bh], ah
cmp     ah, 8
jnz     loc_43952A
call    sub_4DE13B
mov     ecx, eax
mov     ebx, eax
test    eax, eax
jz      loc_43952A
mov     byte ptr [eax], 1
mov     byte ptr [eax+3], 1
mov     al, [edx+6]
mov     [ecx+6], al
mov     byte ptr [ecx+0Ch], 0
call    rand_
mov     [esp+14h+var_14], eax
mov     al, byte ptr [esp+14h+var_14]
and     al, 7
add     al, al
add     al, 40h ; '@'
mov     [ecx+0Dh], al
call    rand_
mov     esi, eax
and     esi, 0Fh
mov     ax, [edx+1Ch]
add     eax, esi
mov     [ecx+1Ch], ax
mov     ax, [edx+1Eh]
mov     [ecx+1Eh], ax
call    rand_
mov     esi, eax
and     esi, 0Fh
mov     ax, [edx+20h]
add     eax, esi
mov     [ecx+20h], ax
mov     dword ptr [ecx+14h], 3D48004Eh
call    rand_
mov     [esp+14h+var_14], eax
mov     al, byte ptr [esp+14h+var_14]
and     al, 3
shl     al, 5
add     al, 20h ; ' '
mov     [ecx+22h], al
mov     byte ptr [ecx+23h], 0
movsx   ax, byte ptr [edx+0Eh]
mov     [ecx+24h], ax
mov     al, [edx+0Fh]
mov     [ecx+0Fh], al
mov     eax, [edx+28h]
mov     [ecx+28h], eax
mov     [ecx+2Ch], edx
xor     ecx, ecx

loc_439506:
xor     eax, eax
mov     ax, [edx+26h]
cmp     ecx, eax
jge     short loc_43951A
mov     eax, ebx
call    sub_43943D
inc     ecx
jmp     short loc_439506

loc_43951A:
mov     word ptr [edx+26h], 0
call    rand_
and     al, 3
mov     [edx+0Bh], al

loc_43952A:
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43944C endp




sub_439532 proc near
cmp     byte ptr [eax+3], 1
jz      sub_43943D
cmp     byte ptr [eax+8], 2
jnz     sub_43944C
jmp     sub_4DE3EA
sub_439532 endp




sub_43954B proc near

arg_0= dword ptr  4
arg_4= byte ptr  8

push    esi
mov     esi, eax
mov     dh, dl
mov     dl, bl
mov     ebx, ecx
call    sub_4DE13B
mov     ecx, eax
test    eax, eax
jz      short loc_4395BA
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
mov     [eax+0Eh], dh
mov     [eax+0Fh], dl
mov     dx, [esi]
mov     [eax+1Ch], dx
mov     dx, [esi+2]
mov     [eax+1Eh], dx
mov     dx, [esi+4]
mov     [eax+20h], dx
mov     [eax+26h], bx
cmp     [esp+4+arg_4], 0
jz      short loc_43959C
or      byte ptr [eax+6], 20h
jmp     short loc_4395A0

loc_43959C:
and     byte ptr [eax+6], 0DFh

loc_4395A0:
mov     eax, [esp+4+arg_0]
mov     [ecx+28h], eax
xor     edx, edx

loc_4395A9:
movsx   eax, bx
cmp     edx, eax
jge     short loc_4395BA
mov     eax, ecx
call    sub_43944C
inc     edx
jmp     short loc_4395A9

loc_4395BA:
mov     eax, ecx
pop     esi
retn    8
sub_43954B endp




sub_4395C0 proc near
push    ebx
push    ecx
mov     ecx, eax
xor     eax, eax

loc_4395C6:
xor     bl, bl
mov     byte ptr ds:dword_559AB0[eax*8], bl
inc     eax
cmp     eax, 0Ah
jl      short loc_4395C6

unknown_libname_38:     ; Watcom v9-*1.5  32bit NT runtime
mov     ds:dword_559AB0, offset sub_500201 ; Watcom v9-*1.5  32bit common runtime
mov     ds:dword_559AB4, 20204028h
mov     ds:dword_559AB8, 1E0101h
mov     ds:dword_559ABC, 28283808h
mov     ds:dword_559AC0, 0FFEC0101h
mov     ds:dword_559AC4, 10101004h

unknown_libname_39:     ; Watcom v9-*1.5  32bit NT runtime
mov     ds:dword_559AC8, 0FFE20201h ; Watcom v9-*1.5  32bit common runtime
mov     ds:dword_559ACC, 38383808h
mov     ds:dword_559AD0, 0FFCE0101h
mov     ds:dword_559AD4, 4040400Ah
mov     ds:dword_559AD8, 0FF9C0201h
mov     ds:dword_559ADC, 20203012h
mov     ds:dword_559AE0, 0FF7E0101h
mov     ds:dword_559AE4, 1010101Ah
mov     ds:dword_559AE8, 0FF6A0201h
mov     ds:dword_559AEC, 28282824h
inc     byte ptr [ecx+8]
pop     ecx
pop     ebx
retn
sub_4395C0 endp

; START OF FUNCTION CHUNK FOR sub_43979C

loc_43967B:
add     ecx, 8
inc     esi
cmp     esi, 0Ah
jge     loc_439792

loc_439688:
cmp     byte ptr [ecx], 0
jz      short loc_43967B
mov     edx, [ebx+1Ah]
sar     edx, 10h
mov     edi, [ecx]
sar     edi, 10h
sub     edx, 0A0h
imul    edx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
add     eax, 0A0h
mov     [esp+24h+var_20], eax
mov     edx, [ebx+1Ch]
sar     edx, 10h
sub     edx, 78h ; 'x'
imul    edx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
add     eax, 78h ; 'x'
mov     [esp+24h+var_1C], eax
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
or      byte ptr [edx+7], 2
mov     al, [ecx+5]
mov     [edx+4], al
mov     al, [ecx+6]
mov     [edx+5], al
mov     al, [ecx+7]
mov     [edx+6], al
xor     eax, eax
mov     al, [ecx+4]
mov     edi, [esp+24h+var_20]
sub     edi, eax
mov     [edx+18h], di
mov     eax, edi
mov     [edx+8], di
xor     eax, edi
mov     al, [ecx+4]
add     eax, eax
mov     [esp+24h+var_24], eax
mov     eax, edi
mov     edi, [esp+24h+var_24]
add     eax, edi
mov     [edx+20h], ax
mov     [edx+10h], ax
xor     eax, eax
mov     al, [ecx+4]
mov     edi, [esp+24h+var_1C]
sub     edi, eax
mov     [edx+12h], di
mov     eax, edi
mov     [edx+0Ah], di
xor     eax, edi
mov     al, [ecx+4]
add     eax, eax
add     edi, eax
mov     [edx+22h], di
mov     [edx+1Ah], di
mov     al, [ecx+1]
shl     al, 6
add     al, 40h ; '@'
mov     [edx+1Ch], al
mov     [edx+0Ch], al
add     al, 3Fh ; '?'
mov     [edx+24h], al
mov     [edx+14h], al
mov     byte ptr [edx+15h], 0C0h
mov     al, [edx+15h]
mov     [edx+0Dh], al
mov     byte ptr [edx+25h], 0FFh
mov     al, [edx+25h]
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 7F48h
mov     word ptr [edx+16h], 3Bh ; ';'
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
jmp     loc_43967B

loc_439792:
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx

locret_43979B:
retn
; END OF FUNCTION CHUNK FOR sub_43979C



sub_43979C proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 0043967B SIZE 00000121 BYTES

cmp     byte ptr [eax+0Dh], 0
jz      short locret_43979B
cmp     byte ptr [eax+8], 0
jz      sub_4395C0
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebx, eax
cmp     byte ptr [eax+0Dh], 0
jz      short loc_439792
xor     esi, esi
mov     ecx, offset dword_559AB0
mov     ebp, 64h ; 'd'
jmp     loc_439688
sub_43979C endp


loc_4397CE:
push    edx
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_4397E3
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4397DA[edx*4]
pop     edx
retn

loc_4397E3:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4397E8[edx*4]
pop     edx
retn



sub_4397F1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
test    byte ptr [eax+0Bh], 3
jnz     loc_4398DB
call    sub_4DE13B
mov     ecx, eax
mov     esi, eax
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 2
mov     byte ptr [eax+0Dh], 1
mov     al, [ebx+0Eh]
mov     [ecx+0Eh], al
mov     ax, [ebx+1Ch]
mov     [ecx+1Ch], ax
mov     ax, [ebx+1Eh]
mov     [ecx+1Eh], ax
mov     ax, [ebx+20h]
mov     [ecx+20h], ax
call    rand_
mov     edx, eax
mov     edi, 14h
sar     edx, 1Fh
idiv    edi
mov     eax, edx
mov     edx, [ecx+1Ah]
sar     edx, 10h
sub     eax, 0Ah
add     edx, eax
mov     [ecx+1Ch], dx
call    rand_
mov     edx, eax
sar     edx, 8
mov     edi, 26h ; '&'
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     eax, edx
mov     edx, [ecx+1Ch]
sar     edx, 10h
sub     eax, 13h
add     edx, eax
mov     [ecx+1Eh], dx
call    rand_
mov     edx, eax
sar     edx, 4
mov     edi, 14h
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     eax, edx
mov     edx, [ecx+1Eh]
sar     edx, 10h
sub     eax, 0Ah
add     edx, eax
mov     [ecx+20h], dx
cmp     byte ptr [ecx+0Eh], 7
jnz     short loc_4398BB
mov     dword ptr [ecx+14h], 3D48000Eh
jmp     short loc_4398C2

loc_4398BB:
mov     dword ptr [ecx+14h], 3D48002Eh

loc_4398C2:
mov     dword ptr [esi+18h], 2E000000h
mov     byte ptr [esi+22h], 0A0h
mov     byte ptr [esi+23h], 60h ; '`'
mov     word ptr [esi+24h], 3
mov     byte ptr [esi+0Bh], 18h

loc_4398DB:
inc     byte ptr [ebx+0Bh]
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4397F1 endp




sub_4398E4 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
test    byte ptr [eax+0Bh], 7
jnz     loc_43997E
call    sub_4DE13B
mov     ecx, eax
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 2
mov     byte ptr [eax+0Dh], 1
mov     bl, [edx+0Eh]
mov     [eax+0Eh], bl
mov     bx, [edx+1Ch]
mov     [eax+1Ch], bx
mov     bx, [edx+20h]
mov     [eax+20h], bx
mov     bx, [edx+1Eh]
mov     [eax+1Eh], bx
cmp     byte ptr [eax+0Eh], 7
jnz     short loc_43993A
mov     dword ptr [eax+14h], 3C880006h
jmp     short loc_439941

loc_43993A:
mov     dword ptr [eax+14h], 3C880026h

loc_439941:
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     eax, ds:dword_5136F0[eax*4]
shl     eax, 7
or      eax, 2E000000h
mov     [ecx+18h], eax
mov     byte ptr [ecx+22h], 80h
mov     byte ptr [ecx+23h], 0
mov     word ptr [ecx+24h], 1
mov     byte ptr [ecx+0Bh], 20h ; ' '
mov     dword ptr [ecx+28h], 100h
xor     eax, eax
mov     ax, [ecx+24h]
shl     eax, 8
mov     [ecx+2Ch], eax

loc_43997E:
mov     bh, [edx+0Bh]
inc     bh
mov     [edx+0Bh], bh
cmp     bh, 10h
jbe     short loc_439992
mov     eax, edx
call    sub_4DE3EA

loc_439992:
pop     edx
pop     ecx
pop     ebx
sub_4398E4 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_22]



sub_439996 proc near
push    edx
mov     dl, [eax+3]
cmp     dl, 1
jb      short loc_4399A3
jbe     short loc_4399D7
jmp     short loc_4399FE

loc_4399A3:
test    dl, dl
jnz     short loc_4399FE
cmp     byte ptr [eax+0Bh], 8
jbe     short loc_4399C2
mov     edx, [eax+0Bh]
sar     edx, 18h
mov     edx, ds:dword_5136F0[edx*4]
shl     edx, 3
add     [eax+18h], edx
jmp     short loc_4399FE

loc_4399C2:
mov     edx, [eax+0Bh]
sar     edx, 18h
mov     edx, ds:dword_5136F0[edx*4]
shl     edx, 4
sub     [eax+18h], edx
jmp     short loc_4399FE

loc_4399D7:
mov     edx, [eax+0Bh]
sar     edx, 18h
mov     edx, ds:dword_5136F0[edx*4]
shl     edx, 2
sub     [eax+18h], edx
mov     edx, [eax+28h]
add     [eax+2Ch], edx
sub     dword ptr [eax+28h], 8
mov     edx, [eax+2Ch]
shr     edx, 8
mov     [eax+24h], dx

loc_4399FE:
mov     dh, [eax+0Bh]
dec     dh
mov     [eax+0Bh], dh
jnz     short loc_439A0B
inc     byte ptr [eax+8]

loc_439A0B:
pop     edx
retn
sub_439996 endp



; Attributes: thunk

sub_439A0D proc near
jmp     sub_4DE3EA
sub_439A0D endp




sub_439A12 proc near
push    edx
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_439A27
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_439A1E[edx*4]
pop     edx
retn

loc_439A27:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_439A2C[edx*4]
pop     edx
retn
sub_439A12 endp




sub_439A35 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
test    byte ptr [eax+9], 3
jnz     loc_439AE8
call    sub_4DE13B
mov     ecx, eax
mov     ebx, eax
test    eax, eax
jz      loc_439AF7
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 3
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 3
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 0
call    rand_
xor     ah, ah
and     al, 7
add     ax, [edx+1Ch]
sub     eax, 3
mov     [ecx+1Ch], ax
cmp     byte ptr [edx+0Fh], 0
jnz     short loc_439A91
mov     ax, [edx+1Eh]
add     eax, 30h ; '0'
jmp     short loc_439A9A

loc_439A91:
mov     ax, [edx+1Eh]
add     eax, 18h

loc_439A9A:
mov     [ecx+1Eh], ax
call    rand_
xor     ah, ah
and     al, 7
add     ax, [edx+20h]
sub     eax, 3
mov     [ebx+20h], ax
mov     dword ptr [ebx+14h], 3D080026h
mov     dword ptr [ebx+18h], 2C804040h
mov     al, ds:byte_513724
mov     [ebx+22h], al
mov     byte ptr [ebx+23h], 0
cmp     byte ptr [edx+0Fh], 0
jnz     short loc_439ADA
mov     word ptr [ebx+24h], 30h ; '0'
jmp     short loc_439AE0

loc_439ADA:
mov     word ptr [ebx+24h], 18h

loc_439AE0:
mov     byte ptr [ebx+8], 0
mov     byte ptr [ebx+0Ah], 1

loc_439AE8:
cmp     byte ptr [edx+9], 4
jb      short loc_439AF4
inc     byte ptr [edx+8]
inc     byte ptr [edx+0Dh]

loc_439AF4:
inc     byte ptr [edx+9]

loc_439AF7:
pop     edx
pop     ecx
pop     ebx
sub_439A35 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_48]



sub_439AFB proc near
push    edx
add     word ptr [eax+1Eh], 6
xor     edx, edx
mov     dl, [eax+0Ah]
mov     dl, ds:byte_513724[edx*2]
mov     [eax+22h], dl
inc     byte ptr [eax+0Ah]
xor     edx, edx
mov     dl, [eax+0Ah]
mov     edx, ds:(off_513720+2)[edx*2]
sar     edx, 10h
cmp     edx, 0FFFFFFFFh
jnz     short loc_439B2A
inc     byte ptr [eax+8]

loc_439B2A:
pop     edx
retn
sub_439AFB endp



; Attributes: thunk

sub_439B2C proc near
jmp     sub_4DE3EA
sub_439B2C endp




sub_439B31 proc near
push    edx
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_439B46
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_439B3D[edx*4]
pop     edx
retn

loc_439B46:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_439B4B[edx*4]
pop     edx
retn
sub_439B31 endp




sub_439B54 proc near
push    edx
mov     edx, eax
test    byte ptr [eax+9], 3
jnz     short loc_439B64
mov     eax, edx
call    sub_439BE2

loc_439B64:
cmp     byte ptr [edx+9], 4
jb      short loc_439B70
inc     byte ptr [edx+8]
inc     byte ptr [edx+0Dh]

loc_439B70:
inc     byte ptr [edx+9]
pop     edx
retn
sub_439B54 endp




sub_439B75 proc near
push    ebx
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
movsx   dx, ds:byte_513749[edx*4]
add     [eax+1Eh], dx
movsx   dx, byte ptr [eax+0Eh]
add     [eax+20h], dx
xor     edx, edx
mov     dl, [eax+0Ah]
mov     dl, ds:byte_513748[edx*4]
mov     [eax+22h], dl
xor     edx, edx
mov     dl, [eax+0Ah]
movsx   dx, ds:byte_51374B[edx*4]
add     [eax+24h], dx
mov     dl, [eax+9]
dec     dl
mov     [eax+9], dl
jnz     short loc_439BDA
mov     bl, [eax+0Ah]
inc     bl
mov     [eax+0Ah], bl
xor     edx, edx
mov     dl, bl
mov     dl, ds:byte_51374A[edx*4]
mov     [eax+9], dl
test    dl, dl
jnz     short loc_439BDA
inc     byte ptr [eax+8]

loc_439BDA:
pop     edx
pop     ebx
retn
sub_439B75 endp



; Attributes: thunk

sub_439BDD proc near
jmp     sub_4DE3EA
sub_439BDD endp




sub_439BE2 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebx, eax
xor     esi, esi
jmp     loc_439CB0

loc_439BF4:
mov     ax, [ebx+20h]
add     eax, 40h ; '@'
mov     [esp+20h+var_1C], eax
call    rand_
xor     ah, ah
and     al, 0Fh
add     eax, [esp+20h+var_1C]
sub     eax, 7
mov     [edx+20h], ax
call    rand_
mov     [esp+20h+var_20], eax
mov     al, byte ptr [esp+20h+var_20]
and     al, 7
add     al, 8

loc_439C24:
mov     [edx+0Eh], al
mov     ebp, [ebx+1Ah]
sar     ebp, 10h
movsx   edx, si
mov     edi, 0Ch
mov     eax, edx
sar     edx, 1Fh
idiv    edi
shl     edx, 6
add     ebp, 40h ; '@'
add     edx, ebp
call    rand_
and     eax, 3Fh
sub     edx, 180h
add     eax, edx
sub     eax, 1Fh
mov     [ecx+1Ch], ax
mov     ax, [ebx+1Eh]
mov     [ecx+1Eh], ax
mov     dword ptr [ecx+14h], 3D48002Eh
mov     dword ptr [ecx+18h], 2E403028h
mov     al, ds:byte_513748
mov     [ecx+22h], al
mov     byte ptr [ecx+23h], 0
call    rand_
xor     ah, ah
and     al, 7
add     eax, 1Dh
mov     [ecx+24h], ax
mov     byte ptr [ecx+8], 0
call    rand_
and     al, 3
mov     dl, ds:byte_51374A
add     dl, al
mov     [ecx+9], dl
mov     byte ptr [ecx+0Ah], 0

loc_439CA9:
inc     esi
cmp     si, 18h
jge     short loc_439D0F

loc_439CB0:
call    sub_4DE13B
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      short loc_439CA9
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 4
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 4
mov     byte ptr [eax+0Dh], 1
cmp     si, 0Ch
jge     loc_439BF4
mov     ax, [ebx+20h]
sub     eax, 40h ; '@'
mov     [esp+20h+var_1C], eax
call    rand_
xor     ah, ah
and     al, 0Fh
add     eax, [esp+20h+var_1C]
sub     eax, 7
mov     [edx+20h], ax
call    rand_
mov     [esp+20h+var_20], eax
mov     al, byte ptr [esp+20h+var_20]
and     al, 0Fh
neg     al
add     al, 7
jmp     loc_439C24

loc_439D0F:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_439BE2 endp




sub_439D19 proc near
push    edx
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_439D2E
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_439D25[edx*4]
pop     edx
retn

loc_439D2E:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_439D33[edx*4]
pop     edx
retn
sub_439D19 endp




sub_439D3C proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
test    byte ptr [eax+0Bh], 0Fh
jnz     loc_439DC4
call    sub_4DE13B
mov     ecx, eax
mov     byte ptr [eax], 3
mov     bl, [edx+0Ch]
mov     [eax+2], bl
mov     bl, [edx+3]
mov     [eax+3], bl
mov     bl, [edx+0Ch]
mov     [eax+0Ch], bl
mov     byte ptr [eax+0Dh], 1
mov     bl, [edx+0Eh]
mov     [eax+0Eh], bl
mov     bx, [edx+1Ch]
mov     [eax+1Ch], bx
mov     bx, [edx+1Eh]
mov     [eax+1Eh], bx
mov     bx, [edx+20h]
mov     [eax+20h], bx
cmp     byte ptr [eax+0Eh], 7
jnz     short loc_439D98
mov     dword ptr [eax+14h], 3D48000Eh
jmp     short loc_439D9F

loc_439D98:
mov     dword ptr [eax+14h], 3D48002Eh

loc_439D9F:
mov     dword ptr [ecx+18h], 2E000000h
mov     byte ptr [ecx+22h], 0A0h
mov     byte ptr [ecx+23h], 60h ; '`'
mov     word ptr [ecx+24h], 10h
cmp     byte ptr [ecx+3], 0
jnz     short loc_439DC0
mov     byte ptr [ecx+0Bh], 4Eh ; 'N'
jmp     short loc_439DC4

loc_439DC0:
mov     byte ptr [ecx+0Bh], 0F0h

loc_439DC4:
cmp     byte ptr [edx+0Bh], 10h
jb      short loc_439DD1
mov     eax, edx
call    sub_4DE3EA

loc_439DD1:
inc     byte ptr [edx+0Bh]
pop     edx
pop     ecx
pop     ebx
retn
sub_439D3C endp




sub_439DD8 proc near
push    ebx
push    edx
mov     dl, [eax+3]
test    dl, dl
jbe     short loc_439DE8
cmp     dl, 1
jz      short loc_439E0A
jmp     short loc_439E23

loc_439DE8:
mov     dh, [eax+0Bh]
cmp     dh, 3Eh ; '>'
ja      short loc_439E10
cmp     dh, 20h ; ' '
ja      short loc_439E23
mov     edx, [eax+0Bh]
sar     edx, 18h
mov     edx, ds:dword_51376C[edx*4]
shl     edx, 2
sub     [eax+18h], edx
jmp     short loc_439E23

loc_439E0A:
cmp     byte ptr [eax+0Bh], 0E0h
jbe     short loc_439E23

loc_439E10:
mov     edx, [eax+0Bh]
sar     edx, 18h
mov     edx, ds:dword_51376C[edx*4]
shl     edx, 3
add     [eax+18h], edx

loc_439E23:
mov     bh, [eax+0Bh]
dec     bh
mov     [eax+0Bh], bh
jnz     short loc_439E30
inc     byte ptr [eax+8]

loc_439E30:
pop     edx
pop     ebx
retn
sub_439DD8 endp



; Attributes: thunk

sub_439E33 proc near
jmp     sub_4DE3EA
sub_439E33 endp




sub_439E38 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 40h
mov     esi, eax
lea     ecx, [eax+28h]
add     dword ptr [ecx+0Ch], 8000h
mov     ebx, [ecx+10h]
sub     ebx, 147Ah
mov     [ecx+10h], ebx
mov     edx, ebx
sar     edx, 10h
mov     eax, [ecx+4]
sar     eax, 10h
add     eax, edx
mov     [ecx+6], ax
mov     edx, [ecx+0Ch]
sar     edx, 10h
mov     eax, [ecx+2]
sar     eax, 10h
add     eax, edx
mov     [ecx+4], ax
and     byte ptr [ecx+5], 0Fh
cmp     word ptr [ecx+6], 0
jge     short loc_439E92
mov     eax, esi
call    sub_4DE3EA
jmp     loc_439F24

loc_439E92:
mov     edx, [ecx+4]
sar     edx, 10h
mov     eax, [ecx+2]
sar     eax, 10h
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
mov     [esp+54h+var_1C], ax
mov     edx, [ecx+4]
sar     edx, 10h
mov     eax, [ecx+2]
sar     eax, 10h
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
mov     [esp+54h+var_1A], ax
xor     ebx, ebx
mov     [esp+54h+var_18], bx
mov     eax, esp
call    sub_4EF184
mov     eax, [ecx+6]
sar     eax, 10h
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+54h+var_24]
lea     edx, [esp+54h+var_1C]
mov     eax, esp
call    sub_4EF2DC
mov     eax, [ecx]
mov     ax, [eax+1Ch]
mov     edi, [esp+54h+var_24]
add     eax, edi
mov     [esi+1Ch], ax
mov     eax, [ecx]
mov     ax, [eax+1Eh]
mov     edx, [esp+54h+var_24+2]
add     eax, edx
mov     [esi+1Eh], ax
mov     eax, [ecx]
mov     ax, [eax+20h]
mov     ebx, [esp+54h+var_20]
add     eax, ebx
mov     [esi+20h], ax

loc_439F24:
add     esp, 40h

loc_439F27:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_439E38 endp




sub_439F2D proc near
cmp     byte ptr [eax+8], 0
jnz     sub_439E38
or      byte ptr [eax], 2
inc     byte ptr [eax+8]
jmp     sub_439E38
sub_439F2D endp




sub_439F42 proc near
push    edx
or      byte ptr [eax], 2
mov     byte ptr [eax+0Eh], 0
cmp     ds:byte_77E7D4, 16h
jnz     short loc_439F5C
mov     dword ptr [eax+14h], 3CC80027h
jmp     short loc_439F63

loc_439F5C:
mov     dword ptr [eax+14h], 3C880026h

