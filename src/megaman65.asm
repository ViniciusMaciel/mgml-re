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
