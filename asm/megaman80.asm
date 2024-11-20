loc_4BC9B3:
mov     byte ptr [ecx], 0FFh
mov     byte ptr [ecx+1], 0FFh
mov     eax, [esp+30h+var_20]
mov     al, [eax+2]
mov     edx, [esp+30h+var_24]
mov     [edx+8], al
mov     eax, [esp+30h+var_20]
mov     al, [eax]
mov     [edx+9], al
mov     eax, [esp+30h+var_30]
mov     byte ptr [eax+8], 1
add     esp, 18h
jmp     loc_4BC812
sub_4BC819 endp




sub_4BC9E0 proc near

var_78= dword ptr -78h
var_70= dword ptr -70h
var_68= dword ptr -68h
var_64= dword ptr -64h
var_60= dword ptr -60h
var_58= dword ptr -58h
var_50= dword ptr -50h
var_48= dword ptr -48h
var_40= dword ptr -40h
var_38= dword ptr -38h
var_30= dword ptr -30h
var_28= dword ptr -28h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 90h
mov     ecx, eax        ; int
xor     edx, edx
mov     dl, [eax+8]     ; int
call    ds:funcs_4BC9F3[edx*4]
cmp     byte ptr [ecx+0Dh], 0Ah
jnz     short loc_4BCA17
and     byte ptr [ecx], 0FDh
mov     edx, [ecx+54h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [ecx+40h]
mov     ds:dword_6E40B4[eax*4], edx

loc_4BCA17:
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      short loc_4BCA2E
cmp     byte ptr [ecx+0Dh], 17h
jnz     short loc_4BCA2E
and     byte ptr [ecx], 0FDh

loc_4BCA2E:
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jnz     loc_4BCBD3
mov     [esp+0A8h+var_20], 100h
xor     ebx, ebx
mov     [esp+0A8h+var_1E], bx
xor     esi, esi
mov     [esp+0A8h+var_1C], si
mov     eax, esp
call    sub_4EF1AB
mov     edx, [ecx+9]
sar     edx, 18h
shl     edx, 0Ah
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 0Bh
add     edx, 800h
add     eax, edx
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+0A8h+var_68]
lea     edx, [esp+0A8h+var_20]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [ecx+46h]
sar     eax, 10h
add     [esp+0A8h+var_68], eax
mov     eax, [esp+0A8h+var_68]
mov     [esp+0A8h+var_20], ax
mov     eax, [ecx+48h]
sar     eax, 10h
add     [esp+0A8h+var_64], eax
mov     eax, [esp+0A8h+var_64]
mov     [esp+0A8h+var_1E], ax
mov     eax, [ecx+4Ah]
sar     eax, 10h
add     [esp+0A8h+var_60], eax
mov     eax, [esp+0A8h+var_60]
mov     [esp+0A8h+var_1C], ax
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     eax, (offset dword_5F8376+2)
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_78]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_30]
call    sub_4F0003
lea     eax, [esp+0A8h+var_20]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_48]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_38]
call    sub_4F0003
lea     eax, [ecx+48h]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_58]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_28]
call    sub_4F0003
mov     ebx, [esp+0A8h+var_58]
mov     edi, [esp+0A8h+var_48]
sub     ebx, edi
jz      short loc_4BCBD3
mov     edx, [esp+0A8h+var_50]
mov     ebp, [esp+0A8h+var_40]
sub     edx, ebp
mov     eax, [esp+0A8h+var_78]
sub     eax, edi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     eax, ebp
cmp     eax, [esp+0A8h+var_70]
jge     short loc_4BCBD3
fld     [esp+0A8h+var_30]
fcomp   [esp+0A8h+var_38]
fnstsw  ax
sahf
jnb     short loc_4BCBAD
fld     [esp+0A8h+var_30]
fcomp   [esp+0A8h+var_28]
fnstsw  ax
sahf
ja      short loc_4BCBCA

loc_4BCBAD:
fld     [esp+0A8h+var_30]
fcomp   [esp+0A8h+var_38]
fnstsw  ax
sahf
jbe     short loc_4BCBD3
fld     [esp+0A8h+var_30]
fcomp   [esp+0A8h+var_28]
fnstsw  ax
sahf
jnb     short loc_4BCBD3

loc_4BCBCA:
mov     dword ptr [ecx+50h], 2404040h
jmp     short loc_4BCBDA

loc_4BCBD3:
mov     dword ptr [ecx+50h], offset unk_808080

loc_4BCBDA:
add     esp, 90h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BC9E0 endp




; int __fastcall sub_4BCBE7(int, int)
sub_4BCBE7 proc near
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
lea     eax, [ecx+48h]
call    sub_42C443
mov     [ecx+54h], eax
inc     byte ptr [ecx+8]
mov     edx, [ecx+54h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_6E40B4[eax*4]
mov     [ecx+3Ch], eax
mov     eax, [eax]
and     ah, 0EFh
call    sub_4A7AAC
mov     [ecx+40h], eax
pop     edx
pop     ecx
retn
sub_4BCBE7 endp




sub_4BCC46 proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     ecx, eax
mov     eax, 7B1h
call    sub_47E888
test    eax, eax
jz      short loc_4BCC9F
mov     eax, (offset dword_5F8376+2)
call    sub_42C443
cmp     eax, [ecx+54h]
jnz     short loc_4BCC9F
mov     eax, [ecx+0Ah]
sar     eax, 18h
add     eax, 7E0h
call    sub_47E888
test    eax, eax
jnz     short loc_4BCC9F
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+0Bh], 10h
mov     eax, 7B2h
call    sub_47E8B8
lea     edx, [ecx+48h]
mov     eax, 105h
call    sub_4D8BC3

loc_4BCC9F:
cmp     byte ptr [ecx+0Dh], 4
jnz     loc_4BCD4A
cmp     byte ptr [ecx+3], 0
jz      loc_4BCD4A
mov     eax, 7E1h
call    sub_47E888
test    eax, eax
jz      loc_4BCD4A
mov     eax, ds:dword_77E704
mov     edx, ds:dword_77E6DC
mov     ds:dword_56F18C[eax*4], edx
mov     eax, edx
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
inc     ds:dword_77E704
xor     edx, edx
mov     dl, [ecx+9]
xor     ebx, ebx
mov     bl, ds:byte_536CF8[edx]
inc     dl
and     dl, 0Fh
mov     [ecx+9], dl
or      ebx, 2E000000h
mov     [eax+4], ebx
mov     word ptr [esp+14h+var_14], 4F80h
mov     word ptr [esp+14h+var_14+2], 0FDEAh
mov     si, 2BF0h
mov     edx, [esp+14h+var_14]
mov     [eax+8], edx
mov     [eax+10h], esi
mov     dword ptr [eax+0Ch], 3EC0E0E0h
mov     dword ptr [eax+14h], 25E0FFh
mov     dword ptr [eax+1Ch], 0FFE0h
mov     dword ptr [eax+24h], 0FFFFh
mov     dword ptr [eax+18h], 20h ; ' '
mov     dword ptr [eax+20h], 0

loc_4BCD4A:
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BCC46 endp




; int __fastcall sub_4BCD52(int, int)
sub_4BCD52 proc near

var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
lea     edx, [eax+18h]
mov     eax, edx
call    sub_4EF1AB
xor     eax, eax
mov     al, [ecx+0Bh]
mov     [esp+10h+var_10], eax ; int
fild    word ptr [esp+10h+var_10]
fmul    ds:flt_50A3F0
fstp    dword ptr [ecx+18h]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     ah, [ecx+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4BCDC2
inc     byte ptr [ecx+8]
and     byte ptr [ecx], 0FDh
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, 7B2h
call    sub_47EA91
mov     edx, [ecx+54h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [ecx+40h]
mov     ds:dword_6E40B4[eax*4], edx

loc_4BCDC2:
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_4BCD52 endp




; int __fastcall sub_4BCDC9(int, int)
sub_4BCDC9 proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     eax, 7B0h
call    sub_47E888
lea     ebx, [ecx+48h]
lea     edx, [ecx+18h]
test    eax, eax
jz      short loc_4BCE34
mov     eax, 7B1h
call    sub_47E888
test    eax, eax
jnz     loc_4BCE89
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h
mov     eax, edx
call    sub_4EF1AB
mov     dword ptr [ecx+18h], 0
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
or      byte ptr [ecx], 2
mov     eax, 7B2h
call    sub_47E8B8
mov     edx, ebx
mov     eax, 106h
call    sub_4D8BC3
pop     edx
pop     ecx
pop     ebx
retn

loc_4BCE34:
mov     eax, (offset dword_5F8376+2)
call    sub_42C443
cmp     eax, [ecx+54h]
jz      short loc_4BCE89
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h
mov     eax, edx
call    sub_4EF1AB
mov     dword ptr [ecx+18h], 0
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
or      byte ptr [ecx], 2
mov     eax, 7B2h
call    sub_47E8B8
mov     edx, ebx
mov     eax, 106h
call    sub_4D8BC3
mov     eax, 7B1h
call    sub_47EA91

loc_4BCE89:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BCDC9 endp




; int __fastcall sub_4BCE8D(int, int)
sub_4BCE8D proc near

var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
lea     edx, [eax+18h]
mov     eax, edx
call    sub_4EF1AB
xor     eax, eax
mov     al, [ecx+0Bh]
mov     ebx, 10h
sub     ebx, eax
mov     [esp+10h+var_10], ebx ; int
fild    [esp+10h+var_10]
fmul    ds:flt_50A3F4
fstp    dword ptr [ecx+18h]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     ah, [ecx+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     loc_4BCDC2
inc     byte ptr [ecx+8]
xor     ebx, ebx
xor     edx, edx
mov     eax, 186h
call    sub_4D89E4
mov     eax, 7B2h
call    sub_47EA91
jmp     loc_4BCDC2
sub_4BCE8D endp




sub_4BCEF6 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+54h]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, [edx+3Ch]
mov     ds:dword_6E40B4[eax*4], ecx
mov     byte ptr [edx+8], 0
pop     edx
pop     ecx
retn
sub_4BCEF6 endp




sub_4BCF15 proc near
cmp     byte ptr [eax+8], 0
jnz     sub_4BCFDA
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ax, ds:word_536D20[eax*2]
mov     [ecx+48h], ax
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ax, ds:word_536D22[eax*2]
mov     [ecx+4Ah], ax
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ax, ds:word_536D24[eax*2]
mov     [ecx+4Ch], ax
mov     dword ptr [ecx+50h], 2C808080h
mov     byte ptr [ecx+0Dh], 64h ; 'd'
lea     eax, [ecx+18h]
call    sub_4EF184
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4BCF15 endp




sub_4BCF95 proc near
push    edx
mov     dl, [eax+0Ch]
mov     [eax+9], dl
pop     edx
retn
sub_4BCF95 endp




sub_4BCF9E proc near
push    edx
mov     dl, [eax+0Dh]
cmp     dl, 0Ah
jz      short loc_4BCFB0
mov     dh, dl
dec     dh
mov     [eax+0Dh], dh
pop     edx
retn

loc_4BCFB0:
mov     byte ptr [eax+9], 0
mov     dl, [eax+9]
mov     [eax+0Ch], dl
pop     edx
retn
sub_4BCF9E endp




sub_4BCFBC proc near
push    edx
mov     dl, [eax+0Dh]
cmp     dl, 64h ; 'd'
jnz     short loc_4BCFD1
mov     byte ptr [eax+9], 0
mov     dl, [eax+9]
mov     [eax+0Ch], dl
pop     edx
retn

loc_4BCFD1:
mov     dh, dl
inc     dh
mov     [eax+0Dh], dh
pop     edx
retn
sub_4BCFBC endp




sub_4BCFDA proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 8
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_4BCFE6[ecx*4]
mov     ecx, [edx+0Ah]
sar     ecx, 18h
movsx   ax, byte ptr [edx+0Dh]
mov     [esp+10h+var_C], eax
fild    word ptr [esp+10h+var_C]
fdiv    ds:flt_50A3F8
fstp    dword ptr [edx+18h]
mov     [esp+10h+var_10], ecx
fild    [esp+10h+var_10]
fdiv    ds:flt_50A3F8
fstp    dword ptr [edx+38h]
add     esp, 8
pop     edx
pop     ecx
retn
sub_4BCFDA endp




sub_4BD01E proc near

; FUNCTION CHUNK AT 004BD988 SIZE 0000000F BYTES

cmp     byte ptr [eax+8], 0
jnz     loc_4BD988
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     dl, [ecx+3]
test    dl, dl
jz      short loc_4BD03F
cmp     dl, 0Ah
jnz     short loc_4BD042

loc_4BD03F:
or      byte ptr [ecx], 8

loc_4BD042:
cmp     byte ptr [ecx+3], 8
jnz     short loc_4BD051
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8

loc_4BD051:
lea     eax, [ecx+18h]
call    sub_4EF184
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4BD01E endp




sub_4BD05F proc near
add     dword ptr [eax+54h], 91A2Bh
retn
sub_4BD05F endp




sub_4BD067 proc near
push    ecx             ; int
push    edx             ; int
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_4BD070[ecx*4]
lea     ecx, [edx+18h]
mov     eax, ecx
call    sub_4EF184
mov     eax, [edx+54h]
sar     eax, 10h
mov     edx, ecx
call    sub_4EF50D
pop     edx
pop     ecx
retn
sub_4BD067 endp




sub_4BD091 proc near

var_6C= byte ptr -6Ch
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 84h
mov     ebp, eax
cmp     byte ptr [eax+0Ch], 0
jz      short loc_4BD0AC
mov     eax, ebp
call    sub_4DE477

loc_4BD0AC:
mov     eax, ds:dword_560C00
mov     [esp+9Ch+var_1C], eax
mov     [esp+9Ch+var_2C], 400h
xor     ebx, ebx
mov     [esp+9Ch+var_2A], bx
mov     [esp+9Ch+var_28], bx
mov     edx, esp
lea     eax, [esp+9Ch+var_2C]
call    sub_4EF5F7
mov     eax, [esp+9Ch+var_1C]
add     eax, 2E0h
lea     ebx, [esp+9Ch+var_6C]
mov     edx, esp
call    sub_4EF388
mov     ecx, 0Ch
lea     edi, [ebp+18h]
lea     esi, [esp+9Ch+var_6C]
rep movsd
mov     edx, 8000h
mov     [esp+9Ch+var_34], edx
mov     [esp+9Ch+var_38], edx
mov     [esp+9Ch+var_3C], edx
lea     eax, [ebp+18h]
lea     edx, [esp+9Ch+var_3C]
call    sub_4EF689
mov     [esp+9Ch+var_2C], 50h ; 'P'
xor     edi, edi
mov     [esp+9Ch+var_2A], di
mov     [esp+9Ch+var_28], 0FEC0h
lea     ebx, [esp+9Ch+var_24]
lea     edx, [esp+9Ch+var_2C]
lea     eax, [esp+9Ch+var_6C]
call    sub_4EF2DC
mov     eax, [esp+9Ch+var_1C]
mov     ax, [eax+1A8h]
mov     edx, [esp+9Ch+var_24]
add     edx, eax
mov     [ebp+48h], dx
mov     eax, [esp+9Ch+var_1C]
mov     ax, [eax+1AAh]
mov     edx, [esp+9Ch+var_24+2]
add     edx, eax
mov     [ebp+4Ah], dx
mov     eax, [esp+9Ch+var_1C]
mov     ax, [eax+1ACh]
mov     edx, [esp+9Ch+var_20]
add     edx, eax
mov     [ebp+4Ch], dx
mov     dword ptr [ebp+50h], 2808080h
add     esp, 84h
pop     ebp

loc_4BD194:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BD091 endp




sub_4BD19A proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 48h
mov     esi, eax
mov     ecx, ds:dword_560C00 ; int
mov     [esp+5Ch+var_1C], 400h
xor     ebx, ebx
mov     [esp+5Ch+var_1A], bx
mov     [esp+5Ch+var_18], bx
mov     edx, esp
lea     eax, [esp+5Ch+var_1C]
call    sub_4EF5F7
lea     edi, [esi+18h]
lea     eax, [ecx+2E0h]
mov     ebx, edi
mov     edx, esp
call    sub_4EF388
mov     edx, 8000h
mov     [esp+38h], edx
mov     [esp+34h], edx
mov     [esp+30h], edx
lea     edx, [esp+30h]
mov     eax, edi
call    sub_4EF689
mov     edx, [ecx+1AEh]
sar     edx, 10h
mov     eax, [ecx+1C6h]
sar     eax, 10h
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [esi+48h], ax
mov     edx, [ecx+1B0h]
sar     edx, 10h
mov     eax, [ecx+1C8h]
sar     eax, 10h
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [esi+4Ah], ax
mov     eax, [ecx+1B2h]
sar     eax, 10h
mov     edx, [ecx+1CAh]
sar     edx, 10h
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [esi+4Ch], ax
mov     dword ptr [esi+50h], 2808080h
add     esp, 48h
jmp     loc_4BD194
sub_4BD19A endp




sub_4BD268 proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    edi
sub     esp, 8
mov     ecx, eax
mov     ebx, ds:dword_560C00
lea     edx, [eax+18h]
mov     eax, edx
call    sub_4EF184
mov     [esp+18h+var_18], 400h
xor     edi, edi
mov     [esp+18h+var_16], di
mov     [esp+18h+var_14], di
mov     eax, esp
call    sub_4EF5F7
mov     dx, [ebx+190h]
sub     edx, 14h
mov     [ecx+48h], dx
mov     ax, [ebx+192h]
mov     [ecx+4Ah], ax
mov     ax, [ebx+194h]
mov     [ecx+4Ch], ax
mov     dword ptr [ecx+50h], 2808080h
add     esp, 8
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BD268 endp




sub_4BD2CD proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4BD2D3[edx*4]
pop     edx
sub_4BD2CD endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_79]



sub_4BD2DC proc near
test    byte ptr ds:word_77EAB6, 1
jz      short loc_4BD2EB
add     word ptr [eax+4Ah], 2
retn

loc_4BD2EB:
sub     word ptr [eax+4Ah], 2
retn
sub_4BD2DC endp




sub_4BD2F1 proc near
push    edx

loc_4BD2F2:
mov     edx, [eax+48h]

loc_4BD2F5:
sar     edx, 10h
shl     edx, 10h
mov     [eax+54h], edx
inc     byte ptr [eax+0Ah]
pop     edx
retn
sub_4BD2F1 endp




sub_4BD303 proc near
add     dword ptr [eax+54h], 1999Ah
retn
sub_4BD303 endp




sub_4BD30B proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_4BD315[ecx*4]
mov     ecx, [edx+54h]
sar     ecx, 10h
mov     [edx+4Ah], cx
test    byte ptr ds:word_77EAB6, 1
jz      short loc_4BD33A
add     ecx, 2
mov     [edx+4Ah], cx
pop     edx
pop     ecx
pop     ebx
retn

loc_4BD33A:
mov     ebx, ecx
sub     ebx, 2
mov     [edx+4Ah], bx
pop     edx
pop     ecx
pop     ebx
retn
sub_4BD30B endp




sub_4BD347 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4BD34D[edx*4]
pop     edx
retn
sub_4BD347 endp




sub_4BD356 proc near
add     eax, 18h
jmp     sub_4EF184
sub_4BD356 endp




sub_4BD35E proc near
push    edx
mov     edx, eax
add     eax, 18h
call    sub_4EF184
mov     eax, ds:dword_560C00
mov     ax, [eax+1CAh]
mov     [edx+4Ah], ax
inc     byte ptr [edx+0Ah]
pop     edx
retn
sub_4BD35E endp




sub_4BD37E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     eax, ds:dword_560C00
mov     ebx, [eax+0Bh]
sar     ebx, 18h
mov     edx, [eax+98h]
mov     dl, [edx]
and     edx, 0FFh
mov     ebx, ds:off_536DD6[ebx*4]
add     edx, ebx
movzx   si, byte ptr [edx]
mov     ebx, [eax+1C8h]
sar     ebx, 10h
mov     dl, [edx]
and     edx, 0FFh
sub     ebx, edx
mov     edx, [ecx+48h]
sar     edx, 10h
cmp     edx, ebx
jl      short loc_4BD3F0
mov     ax, [eax+1CAh]
sub     eax, esi
mov     [ecx+4Ah], ax
call    rand_
mov     edx, eax
mov     ebx, 6
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_4BD3F0
mov     eax, ecx
call    sub_4BD935

loc_4BD3F0:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BD37E endp




sub_4BD3F5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4BD3FB[edx*4]
pop     edx
retn
sub_4BD3F5 endp




sub_4BD404 proc near
mov     dword ptr [eax+0Ch], 0
inc     byte ptr [eax+0Ah]
mov     eax, ds:dword_560C28
mov     byte ptr [eax+9], 1
mov     eax, ds:dword_560C28
mov     byte ptr [eax+0Ah], 0
retn
sub_4BD404 endp




sub_4BD421 proc near
push    ecx
push    edx
mov     edx, [eax+0Ch]
sub     edx, 14000h
cmp     edx, 0FFCE0000h
jg      short loc_4BD44B
inc     byte ptr [eax+0Ah]
mov     ecx, ds:dword_560C28
mov     byte ptr [ecx+9], 0
mov     ecx, ds:dword_560C28
mov     byte ptr [ecx+0Ah], 0

loc_4BD44B:
mov     [eax+0Ch], edx
sar     edx, 10h
mov     [eax+4Ah], dx
pop     edx
pop     ecx
sub_4BD421 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_80]



sub_4BD458 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4BD45E[edx*4]
pop     edx
retn
sub_4BD458 endp




sub_4BD467 proc near
push    edx
mov     byte ptr [eax+0Ch], 12h
jmp     loc_4BD2F2
sub_4BD467 endp




sub_4BD471 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+54h]
add     edx, 14000h
mov     [eax+54h], edx
sar     edx, 10h
mov     [eax+4Ah], dx
call    rand_
mov     edx, eax
mov     ebx, 6
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_4BD4A5
mov     eax, ecx
call    sub_4BD935

loc_4BD4A5:
cmp     word ptr [ecx+4Ah], 0
jle     short loc_4BD4AF
inc     byte ptr [ecx+0Ah]

loc_4BD4AF:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BD471 endp




sub_4BD4B3 proc near
push    edx
test    byte ptr ds:word_77EAB6, 1
jz      short loc_4BD4C5
mov     word ptr [eax+4Ah], 0FFFEh
jmp     short loc_4BD4CB

loc_4BD4C5:
mov     word ptr [eax+4Ah], 2

loc_4BD4CB:
mov     dh, [eax+0Ch]
dec     dh
mov     [eax+0Ch], dh
jnz     short loc_4BD4DE
mov     word ptr [eax+4Ah], 0
inc     byte ptr [eax+0Ah]

loc_4BD4DE:
pop     edx
sub_4BD4B3 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_81]



sub_4BD4E0 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4BD4E6[edx*4]
pop     edx
retn
sub_4BD4E0 endp




sub_4BD4EF proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4BD4F5[edx*4]
pop     edx
sub_4BD4EF endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_82]



sub_4BD4FE proc near
push    edx
mov     edx, [eax+4Ah]
jmp     loc_4BD2F5
sub_4BD4FE endp




sub_4BD507 proc near
push    edx
mov     edx, [eax+54h]
add     edx, 0FFFD8000h
mov     [eax+54h], edx
sar     edx, 10h
mov     [eax+4Ch], dx
pop     edx
retn
sub_4BD507 endp




sub_4BD51D proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4BD523[edx*4]
pop     edx
retn
sub_4BD51D endp




sub_4BD52C proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4BD532[edx*4]
pop     edx
sub_4BD52C endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_83]



sub_4BD53B proc near
mov     byte ptr [eax+0Ch], 12h
sub_4BD53B endp




sub_4BD53F proc near
mov     dword ptr [eax+54h], 0
inc     byte ptr [eax+0Ah]
retn
sub_4BD53F endp




sub_4BD54A proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+54h]
add     ecx, 14E80h
mov     [eax+54h], ecx
sar     ecx, 10h
mov     eax, [eax+48h]
sar     eax, 10h
add     eax, ecx
mov     [edx+4Ah], ax
test    ax, ax
jle     short loc_4BD583
mov     eax, edx
call    sub_4BD7EB
add     ds:word_77E60A, 10h
inc     byte ptr [edx+0Ah]
pop     edx
pop     ecx
retn

loc_4BD583:
call    rand_
test    al, 3
jnz     short loc_4BD593
mov     eax, edx
call    sub_4BD82C

loc_4BD593:
pop     edx
pop     ecx
retn
sub_4BD54A endp




sub_4BD596 proc near
sub     dword ptr ds:unk_77E608, 100000h
inc     byte ptr [eax+0Ah]
retn
sub_4BD596 endp




sub_4BD5A4 proc near
push    edx
test    byte ptr ds:word_77EAB6, 1
jz      short loc_4BD5B6
mov     word ptr [eax+4Ah], 0FFFEh
jmp     short loc_4BD5BC

loc_4BD5B6:
mov     word ptr [eax+4Ah], 2

loc_4BD5BC:
mov     dh, [eax+0Ch]
dec     dh
mov     [eax+0Ch], dh
jnz     short loc_4BD5CF
mov     word ptr [eax+4Ah], 0
inc     byte ptr [eax+0Ah]

loc_4BD5CF:
pop     edx
sub_4BD5A4 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_84]



sub_4BD5D1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4BD5D7[edx*4]
pop     edx
retn
sub_4BD5D1 endp




sub_4BD5E0 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4BD5E6[edx*4]
pop     edx
retn
sub_4BD5E0 endp




sub_4BD5EF proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Ch], 0
jz      short loc_4BD60E
or      byte ptr [edx], 6
lea     eax, [edx+18h]
call    sub_4EF184
mov     dword ptr [edx+50h], offset unk_808080
mov     byte ptr [edx+0Ch], 0

loc_4BD60E:
pop     edx
sub_4BD5EF endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_85]



sub_4BD610 proc near
push    edx
mov     byte ptr [eax+0Eh], 0
mov     dl, [eax+0Eh]
mov     [eax+0Dh], dl
inc     byte ptr [eax+0Ah]
pop     edx
retn
sub_4BD610 endp




sub_4BD620 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax+0Dh]
inc     ah
mov     [ecx+0Dh], ah
cmp     ah, 3
jnz     loc_4BD752
mov     byte ptr [ecx+0Dh], 0
mov     eax, [ecx+14h]
mov     edx, 10001h
call    sub_4EDF7C
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6E[edx*2]
inc     dl
mov     [eax+2], dl
mov     [eax], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6E[edx*2]
add     dl, 1Fh
mov     [eax+6], dl
mov     [eax+4], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6F[edx*2]
add     dl, 2Fh ; '/'
mov     [eax+1], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6F[edx*2]
add     dl, 10h
mov     [eax+3], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6F[edx*2]
add     dl, 3Eh ; '>'
mov     [eax+5], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6F[edx*2]
inc     dl
mov     [eax+7], dl
mov     eax, [ecx+14h]
mov     edx, 10000h
call    sub_4EDF7C
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6E[edx*2]
add     dl, 1Fh
mov     [eax+2], dl
mov     [eax], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6E[edx*2]
add     dl, 3Eh ; '>'
mov     [eax+6], dl
mov     [eax+4], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6F[edx*2]
add     dl, 3Eh ; '>'
mov     [eax+1], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6F[edx*2]
inc     dl
mov     [eax+3], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6F[edx*2]
add     dl, 2Fh ; '/'
mov     [eax+5], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6F[edx*2]
add     dl, 10h
mov     [eax+7], dl
mov     dh, [ecx+0Eh]
inc     dh
mov     [ecx+0Eh], dh
cmp     dh, 6
jnz     short loc_4BD752
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Dh], 0

loc_4BD752:
pop     edx
pop     ecx
retn
sub_4BD620 endp




sub_4BD755 proc near
push    edx
mov     edx, eax
mov     ah, [eax+0Dh]
inc     ah
mov     [edx+0Dh], ah
cmp     ah, 7
jnz     short loc_4BD774
inc     byte ptr [edx+0Ah]
mov     byte ptr [edx+0Dh], 0
add     ds:word_77E60A, 10h

loc_4BD774:
sub     word ptr [edx+4Ch], 49h ; 'I'
call    rand_
test    al, 3
jnz     short loc_4BD789
mov     eax, edx
call    sub_4BD8C7

loc_4BD789:
pop     edx
retn
sub_4BD755 endp




sub_4BD78B proc near
push    edx
mov     dl, [eax+0Dh]
inc     dl
mov     [eax+0Dh], dl
cmp     dl, 2
jnz     short loc_4BD79C
inc     byte ptr [eax+0Ah]

loc_4BD79C:
add     word ptr [eax+4Ch], 20h ; ' '
pop     edx
sub_4BD78B endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_86]



sub_4BD7A3 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4BD7A9[edx*4]
pop     edx
retn
sub_4BD7A3 endp




sub_4BD7B2 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4BD7B8[edx*4]
pop     edx
retn
sub_4BD7B2 endp




sub_4BD7C1 proc near
push    ebx
push    edx
mov     edx, [eax+9]
sar     edx, 18h
mov     edx, ds:dword_560C1C[edx*4]
mov     bx, [edx+48h]
mov     [eax+48h], bx
mov     bx, [edx+4Ah]
mov     [eax+4Ah], bx
mov     dx, [edx+4Ch]
mov     [eax+4Ch], dx
pop     edx
pop     ebx
retn
sub_4BD7C1 endp




sub_4BD7EB proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4BD829
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 4
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 4
mov     byte ptr [eax+0Dh], 0
mov     bx, [edx+48h]
mov     [eax+1Ch], bx
mov     word ptr [eax+1Eh], 0
mov     dx, [edx+4Ch]
mov     [eax+20h], dx
mov     byte ptr [eax+8], 0
mov     byte ptr [eax+9], 0

loc_4BD829:
pop     edx
pop     ebx
retn
sub_4BD7EB endp




sub_4BD82C proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
call    sub_4DE13B
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      loc_4BD8C3
call    rand_
mov     byte ptr [edx], 1
mov     byte ptr [edx+2], 3
mov     byte ptr [edx+3], 0
mov     byte ptr [edx+0Ch], 3
mov     byte ptr [edx+0Dh], 0
mov     byte ptr [edx+0Fh], 0
call    rand_
test    al, 1
jz      short loc_4BD86E
mov     eax, 0FFFFFE7Eh
jmp     short loc_4BD873

loc_4BD86E:
mov     eax, 182h

loc_4BD873:
mov     edx, [ebx+46h]
sar     edx, 10h
add     eax, edx
mov     [ecx+1Ch], ax
mov     dx, [ebx+4Ah]
add     edx, 30h ; '0'
call    rand_
and     ah, 1
add     eax, edx
sub     eax, 0FFh
mov     [ecx+1Eh], ax
call    rand_
test    al, 1
jz      short loc_4BD8AA
mov     eax, 0FFFFFFC0h
jmp     short loc_4BD8AF

loc_4BD8AA:
mov     eax, 40h ; '@'

loc_4BD8AF:
mov     edx, [ebx+4Ah]
sar     edx, 10h
add     eax, edx
mov     [ecx+20h], ax
mov     byte ptr [ecx+8], 0
mov     byte ptr [ecx+9], 0

loc_4BD8C3:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BD82C endp




sub_4BD8C7 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
call    sub_4DE13B
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      short loc_4BD931
call    rand_
mov     byte ptr [edx], 1
mov     byte ptr [edx+2], 3
mov     byte ptr [edx+3], 0
mov     byte ptr [edx+0Ch], 3
mov     byte ptr [edx+0Dh], 0
mov     byte ptr [edx+0Fh], 0
call    rand_
test    al, 1
jz      short loc_4BD905
mov     eax, 0FFFFFF80h
jmp     short loc_4BD90A

loc_4BD905:
mov     eax, 80h

loc_4BD90A:
mov     edx, [ebx+46h]
sar     edx, 10h
add     eax, edx
mov     [ecx+1Ch], ax
mov     dx, [ebx+4Ah]
sub     edx, 20h ; ' '
mov     [ecx+1Eh], dx
mov     ax, [ebx+4Ch]
mov     [ecx+20h], ax
mov     byte ptr [ecx+8], 0
mov     byte ptr [ecx+9], 0

loc_4BD931:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BD8C7 endp




sub_4BD935 proc near
push    ecx
push    edx
mov     ecx, eax
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4BD985
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 3
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 3
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Fh], 1
call    rand_
xor     ah, ah
add     ax, [ecx+48h]
sub     eax, 7Fh
mov     [edx+1Ch], ax
mov     ax, [ecx+4Ah]
mov     [edx+1Eh], ax
mov     ax, [ecx+4Ch]
mov     [edx+20h], ax
mov     byte ptr [edx+8], 0
mov     byte ptr [edx+9], 0

loc_4BD985:
pop     edx
pop     ecx
sub_4BD935 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_87]
; START OF FUNCTION CHUNK FOR sub_4BD01E

loc_4BD988:
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4BD98E[edx*4]
pop     edx
retn
; END OF FUNCTION CHUNK FOR sub_4BD01E



sub_4BD997 proc near
push    ecx
push    edx
lea     edx, [eax+3Ch]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4BD9A1[ecx*4]
mov     dword ptr [edx+4], 0
pop     edx
pop     ecx
retn
sub_4BD997 endp




sub_4BD9B2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+3Ch]
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     eax, [ecx+18h]
call    sub_4EF184
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
mov     word ptr [ebx], 0Eh
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
test    byte ptr [ecx+3], 0F0h
jz      short loc_4BD9FA
mov     word ptr [ecx+54h], 22h ; '"'
jmp     short loc_4BDA00

loc_4BD9FA:
mov     word ptr [ecx+54h], 0A0h

loc_4BDA00:
mov     ax, [ecx+4Eh]
mov     [ecx+56h], ax
mov     dword ptr [ebx+4], 0
mov     dword ptr [ebx+8], 0
mov     eax, ecx
call    sub_4BDA21
pop     edx
pop     ecx
pop     ebx
retn
sub_4BD9B2 endp




sub_4BDA21 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3Ch]
test    byte ptr [edi], 8
jz      short loc_4BDA37
mov     dword ptr [esi+50h], offset unk_808080

loc_4BDA37:
call    rand_
mov     [edi+2], ax
test    byte ptr [edi], 2
jz      short loc_4BDA4C
mov     eax, esi
call    sub_4BDBF0

loc_4BDA4C:
xor     ecx, ecx
mov     cl, [esi+9]
mov     eax, esi
call    ds:funcs_4BDA53[ecx*4]
test    byte ptr [esi], 1
jz      short loc_4BDA78
cmp     byte ptr [esi+9], 1
jz      short loc_4BDA78
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 5
mov     eax, esi
call    sub_432697

loc_4BDA78:
test    byte ptr [esi], 1
jz      short loc_4BDACA
test    byte ptr [edi], 4
jz      short loc_4BDACA
push    80h
push    0
sub     word ptr [esi+4Ah], 80h
mov     al, [esi+3]
and     al, 0F0h
and     eax, 0FFh
sar     eax, 4
mov     edx, ds:dword_536ED4[eax*4]
push    edx
add     edi, 4
push    edi
xor     ecx, ecx
mov     cl, [esi+1]
push    ecx
mov     ecx, ds:dword_536EDC[eax*4]
lea     eax, [esi+48h]
xor     ebx, ebx
mov     edx, 0A0h
call    sub_4E01FC
add     word ptr [esi+4Ah], 80h

loc_4BDACA:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4BDA21 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_88]


; Attributes: thunk

sub_4BDAD0 proc near
jmp     sub_4DE477
sub_4BDAD0 endp




sub_4BDAD5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edx, [eax+3Ch]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4BDAEE
jbe     short loc_4BDB2D
cmp     al, 2
jz      short loc_4BDB46
jmp     short loc_4BDACA

loc_4BDAEE:
test    al, al
jnz     short loc_4BDACA
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [ecx+0Ch], 1
mov     dword ptr [ecx+50h], offset unk_808080
and     byte ptr [edx], 0F7h
mov     eax, ecx
call    sub_432EAB
call    sub_4DE13B
test    eax, eax
jz      short loc_4BDB2D
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
lea     edi, [eax+48h]
lea     esi, [ecx+48h]
movsd
movsd
sub     word ptr [eax+4Ah], 80h

loc_4BDB2D:
mov     bl, [ecx+0Ch]
dec     bl
mov     [ecx+0Ch], bl
jnz     short loc_4BDACA
mov     byte ptr [ecx+0Ah], 2
mov     byte ptr [ecx+0Ch], 1
mov     dword ptr [ecx+50h], 2E808080h

loc_4BDB46:
mov     al, [ecx+0Ch]
inc     al
mov     [ecx+0Ch], al
cmp     al, 5
jnz     short loc_4BDBAD
mov     eax, ecx
call    sub_4DE477
mov     al, [ecx+3]
and     al, 0Fh
lea     esi, [ecx+48h]
cmp     al, 1
jnz     short loc_4BDB83
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_4AFA70
mov     eax, [ecx+54h]
sar     eax, 10h
call    sub_47E8B8
jmp     loc_4BDACA

loc_4BDB83:
cmp     al, 2
jnz     short loc_4BDB92
mov     eax, [ecx+54h]
sar     eax, 10h
call    sub_47E8B8

loc_4BDB92:
mov     ax, [edx+2]
xor     ah, ah
and     al, 1
xor     ebx, ebx
mov     bx, ax
mov     edx, esi
mov     eax, ecx
call    sub_4AFA70
jmp     loc_4BDACA

loc_4BDBAD:
sub     dword ptr [ecx+50h], 202020h
mov     edx, [ecx+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
mov     ebx, ds:dword_536EE4
add     ebx, eax
mov     ds:dword_536EE4, ebx
mov     ds:dword_536EEC, ebx
mov     ds:dword_536EE8, ebx
lea     eax, [ecx+18h]
mov     edx, offset dword_536EE4
call    sub_4EF689
jmp     loc_4BDACA
sub_4BDAD5 endp




sub_4BDBF0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
add     eax, 3Ch ; '<'
mov     ebx, [eax+4]
and     ebx, 0FFFFFFh
jz      short loc_4BDC4D
lea     edx, [ecx+48h]
test    byte ptr [eax+7], 1Ch
jz      short loc_4BDC43
mov     si, [ecx+54h]
sub     esi, ebx
mov     [ecx+54h], si
test    si, si
jg      short loc_4BDC30
and     byte ptr [eax], 0FDh
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
mov     eax, 0A2h
jmp     short loc_4BDC35

loc_4BDC30:
mov     eax, 0A0h

loc_4BDC35:
call    sub_4D8BC3
mov     dword ptr [ecx+50h], 0FFFFFFh
jmp     short loc_4BDC4D

loc_4BDC43:
mov     eax, 0A3h
call    sub_4D8BC3

loc_4BDC4D:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BDBF0 endp




sub_4BDC57 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4BDC5D[edx*4]
pop     edx
retn
sub_4BDC57 endp




sub_4BDC66 proc near
push    ebx
push    edx
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     word ptr [eax+0Ah], 0
xor     ebx, ebx

loc_4BDC78:
movsx   eax, bx
shl     eax, 2
mov     edx, ds:dword_537078[eax]
cmp     edx, 0FFFFFFFFh
jz      short loc_4BDCA6
test    edx, edx
jz      short loc_4BDCA3
mov     eax, edx

loc_4BDC8F:
movsx   edx, byte ptr [eax]
cmp     edx, 0FFFFFFFFh
jz      short loc_4BDCA3
mov     dword ptr [eax+8], 0
add     eax, 10h
jmp     short loc_4BDC8F

loc_4BDCA3:
inc     ebx
jmp     short loc_4BDC78

loc_4BDCA6:
pop     edx
pop     ebx
retn
sub_4BDC66 endp




sub_4BDCA9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     ecx, ds:dword_537078[ecx*4]
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 9
mov     [esi+48h], ax
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
mov     [esi+4Ah], ax

loc_4BDCDD:
movsx   eax, byte ptr [ecx]
cmp     eax, 0FFFFFFFFh
jz      short loc_4BDCF9
mov     ebx, eax
shl     ebx, 2
mov     edx, ecx
mov     eax, esi
call    ds:funcs_4BDCEE[ebx]
add     ecx, 10h
jmp     short loc_4BDCDD

loc_4BDCF9:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BDCA9 endp



; Attributes: thunk

sub_4BDCFE proc near
jmp     sub_4DE477
sub_4BDCFE endp




sub_4BDD03 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 610h
call    sub_47E888
test    eax, eax
jnz     short loc_4BDD33
mov     al, [edx+8]
test    al, al
jbe     short loc_4BDD22
cmp     al, 1
jnz     short loc_4BDD33

loc_4BDD22:
mov     edx, ecx
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BDD33
mov     byte ptr [ecx+8], 1

loc_4BDD33:
pop     ecx
pop     ebx
retn
sub_4BDD03 endp




sub_4BDD36 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BDDBE
mov     eax, 610h
call    sub_47E888
test    eax, eax
jnz     short loc_4BDDBE
mov     al, [edx+8]
test    al, al
jbe     short loc_4BDD6A
cmp     al, 1
jz      short loc_4BDD92
pop     ecx
pop     ebx
retn

loc_4BDD6A:
mov     eax, ecx
call    sub_4BE883
test    eax, eax
jz      short loc_4BDDBE
mov     byte ptr [ebx+8], 1
movsx   edx, byte ptr [ebx+1]
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
mov     edx, 1
jmp     short loc_4BDDB1

loc_4BDD92:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BDDBE
mov     eax, 610h
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2

loc_4BDDB1:
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1

loc_4BDDBE:
pop     ecx
pop     ebx
retn
sub_4BDD36 endp




sub_4BDDC1 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     short loc_4BDE21
mov     eax, 612h
call    sub_47E888
test    eax, eax
jnz     short loc_4BDE21
mov     al, [edx+8]
test    al, al
jbe     short loc_4BDDF1
cmp     al, 1
jz      short loc_4BDE0E
pop     ecx
pop     ebx
retn

loc_4BDDF1:
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BDE21
mov     byte ptr [ecx+8], 1
movsx   edx, byte ptr [ecx+1]
xor     eax, eax
call    sub_4A0E24
pop     ecx
pop     ebx
retn

loc_4BDE0E:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BDE21
mov     eax, 612h
call    sub_47E8B8

loc_4BDE21:
pop     ecx
pop     ebx
retn
sub_4BDDC1 endp




sub_4BDE24 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     short loc_4BDE84
mov     eax, 613h
call    sub_47E888
test    eax, eax
jnz     short loc_4BDE84
mov     al, [edx+8]
test    al, al
jbe     short loc_4BDE54
cmp     al, 1
jz      short loc_4BDE71
pop     ecx
pop     ebx
retn

loc_4BDE54:
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BDE84
mov     byte ptr [ecx+8], 1
movsx   edx, byte ptr [ecx+1]
xor     eax, eax
call    sub_4A0E24
pop     ecx
pop     ebx
retn

loc_4BDE71:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BDE84
mov     eax, 613h
call    sub_47E8B8

loc_4BDE84:
pop     ecx
pop     ebx
retn
sub_4BDE24 endp




sub_4BDE87 proc near
push    ebx
push    ecx
push    esi
mov     ebx, eax
mov     ecx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BDF3A
mov     eax, 614h
call    sub_47E888
test    eax, eax
jnz     loc_4BDF3A
mov     esi, offset byte_5F8364
mov     al, [edx+8]
test    al, al
jbe     short loc_4BDEC6
cmp     al, 1
jz      short loc_4BDF0E
pop     esi
pop     ecx
pop     ebx
retn

loc_4BDEC6:
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BDF3A
mov     byte ptr [ecx+8], 1
mov     eax, ds:dword_5F83B8
sar     eax, 10h
sub     eax, 200h
and     eax, 0FFFh
cmp     eax, 400h
jge     short loc_4BDEF4
movsx   edx, byte ptr [ecx+1]
jmp     short loc_4BDEF9

loc_4BDEF4:
movsx   edx, byte ptr [ecx+1]
inc     edx

loc_4BDEF9:
xor     eax, eax
call    sub_4A0E24
or      byte ptr [esi+0BDh], 40h
mov     edx, 1
jmp     short loc_4BDF2D

loc_4BDF0E:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BDF3A
mov     eax, 614h
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2

loc_4BDF2D:
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ebx], 1

loc_4BDF3A:
pop     esi
pop     ecx
pop     ebx
retn
sub_4BDE87 endp




sub_4BDF3E proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 615h
call    sub_47E888
test    eax, eax
jnz     short loc_4BDF6E
mov     al, [edx+8]
test    al, al
jbe     short loc_4BDF5D
cmp     al, 1
jnz     short loc_4BDF6E

loc_4BDF5D:
mov     edx, ecx
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BDF6E
mov     byte ptr [ecx+8], 1

loc_4BDF6E:
pop     ecx
pop     ebx
retn
sub_4BDF3E endp




sub_4BDF71 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
mov     eax, 60Ah
call    sub_47E888
test    eax, eax
jnz     loc_4BE0B2
mov     al, [edx+8]
cmp     al, 1
jb      short loc_4BDFA1
jbe     short loc_4BDFFE
cmp     al, 2
jz      loc_4BE097
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4BDFA1:
test    al, al
jnz     loc_4BE0B2
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      loc_4BE0B2
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      loc_4BE0B2
mov     byte ptr [ecx+8], 1
mov     word ptr [ecx+0Ch], 0
mov     eax, 615h
call    sub_47E8B8
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE0B2
movsx   edx, byte ptr [ecx+1]
call    sub_4A0E24
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4BDFFE:
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_4BE019
mov     eax, 622h
call    sub_47E888
test    eax, eax
jz      loc_4BE0B2

loc_4BE019:
xor     edx, edx
mov     eax, offset byte_6DD9CC
jmp     short loc_4BE02D

loc_4BE022:
add     eax, 4A0h
inc     edx
cmp     edx, 10h
jge     short loc_4BE067

loc_4BE02D:
test    byte ptr [eax], 1
jz      short loc_4BE022
mov     edi, [eax+12h]
sar     edi, 10h
sar     edi, 9
movsx   ebx, byte ptr [ecx+2]
sub     edi, ebx
mov     ebx, [eax+16h]
sar     ebx, 10h
sar     ebx, 9
mov     esi, [ecx]
sar     esi, 18h
sub     ebx, esi
mov     esi, ebx
xor     ebx, ebx
mov     bx, [ecx+4]
cmp     edi, ebx
jnb     short loc_4BE022
xor     ebx, ebx
mov     bx, [ecx+6]
cmp     esi, ebx
jnb     short loc_4BE022

loc_4BE067:
cmp     edx, 10h
jnz     short loc_4BE0B2
mov     byte ptr [ecx+8], 2
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     short loc_4BE088
movsx   edx, byte ptr [ecx+1]
inc     edx
call    sub_4A0E24

loc_4BE088:
mov     eax, 61Fh
call    sub_47E8B8
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4BE097:
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_4BE0AE
mov     eax, 622h
call    sub_47E888
test    eax, eax
jz      short loc_4BE0B2

loc_4BE0AE:
mov     byte ptr [ecx+8], 3

loc_4BE0B2:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4BDF71 endp




sub_4BE0B7 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE13F
mov     eax, 616h
call    sub_47E888
test    eax, eax
jnz     short loc_4BE13F
mov     al, [edx+8]
test    al, al
jbe     short loc_4BE0EB
cmp     al, 1
jz      short loc_4BE113
pop     ecx
pop     ebx
retn

loc_4BE0EB:
mov     eax, ecx
call    sub_4BE883
test    eax, eax
jz      short loc_4BE13F
mov     byte ptr [ebx+8], 1
movsx   edx, byte ptr [ebx+1]
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
mov     edx, 1
jmp     short loc_4BE132

loc_4BE113:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE13F
mov     eax, 616h
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2

loc_4BE132:
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1

loc_4BE13F:
pop     ecx
pop     ebx
retn
sub_4BE0B7 endp




sub_4BE142 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE1CA
mov     eax, 617h
call    sub_47E888
test    eax, eax
jnz     short loc_4BE1CA
mov     al, [edx+8]
test    al, al
jbe     short loc_4BE176
cmp     al, 1
jz      short loc_4BE19E
pop     ecx
pop     ebx
retn

loc_4BE176:
mov     eax, ecx
call    sub_4BE883
test    eax, eax
jz      short loc_4BE1CA
mov     byte ptr [ebx+8], 1
movsx   edx, byte ptr [ebx+1]
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
mov     edx, 1
jmp     short loc_4BE1BD

loc_4BE19E:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE1CA
mov     eax, 617h
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2

loc_4BE1BD:
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1

loc_4BE1CA:
pop     ecx
pop     ebx
retn
sub_4BE142 endp




sub_4BE1CD proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE285
mov     eax, 618h
call    sub_47E888
test    eax, eax
jnz     loc_4BE285
mov     al, [edx+8]
test    al, al
jbe     short loc_4BE205
cmp     al, 1
jz      short loc_4BE259
pop     ecx
pop     ebx
retn

loc_4BE205:
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BE250
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
cmp     eax, 0FFFFFF3Fh
jnz     short loc_4BE250
mov     dx, [ecx+0Ch]
cmp     dx, 5Ah ; 'Z'
jl      short loc_4BE246
mov     byte ptr [ecx+8], 1
movsx   edx, byte ptr [ecx+1]
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
mov     edx, 1
jmp     short loc_4BE278

loc_4BE246:
mov     ebx, edx
inc     ebx
mov     [ecx+0Ch], bx
pop     ecx
pop     ebx
retn

loc_4BE250:
mov     word ptr [ecx+0Ch], 0
pop     ecx
pop     ebx
retn

loc_4BE259:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE285
mov     eax, 618h
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2

loc_4BE278:
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ebx], 1

loc_4BE285:
pop     ecx
pop     ebx
retn
sub_4BE1CD endp




sub_4BE288 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE30E
mov     eax, 619h
call    sub_47E888
test    eax, eax
jnz     short loc_4BE30E
mov     al, [edx+8]
test    al, al
jbe     short loc_4BE2BC
cmp     al, 1
jz      short loc_4BE2F4
pop     ecx
pop     ebx
retn

loc_4BE2BC:
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BE30E
mov     byte ptr [ecx+8], 1
movsx   edx, byte ptr [ecx+1]
xor     eax, eax
call    sub_4A0E24
mov     eax, 618h
call    sub_47E8B8
mov     eax, 60Bh
call    sub_47E8B8
or      ds:byte_5F8421, 40h
pop     ecx
pop     ebx
retn

loc_4BE2F4:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE30E
mov     eax, 619h
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh

loc_4BE30E:
pop     ecx
pop     ebx
retn
sub_4BE288 endp




sub_4BE311 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE3C5
mov     eax, 61Ah
call    sub_47E888
test    eax, eax
jnz     loc_4BE3C5
mov     al, [edx+8]
cmp     al, 1
jb      short loc_4BE34B
jbe     short loc_4BE370
cmp     al, 2
jz      short loc_4BE399
pop     ecx
pop     ebx
retn

loc_4BE34B:
test    al, al
jnz     loc_4BE3C5
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BE3C5
mov     byte ptr [ecx+8], 1
or      ds:byte_5F8421, 40h
mov     edx, 1
jmp     short loc_4BE3B8

loc_4BE370:
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
mov     eax, offset byte_5F8364
call    sub_42C592
cmp     edx, eax
jnz     short loc_4BE3C5
mov     byte ptr [ecx+8], 2
movsx   edx, byte ptr [ecx+1]
xor     eax, eax
call    sub_4A0E24
pop     ecx
pop     ebx
retn

loc_4BE399:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE3C5
mov     eax, 61Ah
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2

loc_4BE3B8:
mov     eax, 256h
call    sub_4DC979
or      byte ptr [ebx], 1

loc_4BE3C5:
pop     ecx
pop     ebx
retn
sub_4BE311 endp




sub_4BE3C8 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE472
mov     eax, 61Bh
call    sub_47E888
test    eax, eax
jnz     loc_4BE472
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      short loc_4BE40E
mov     eax, 609h
call    sub_47E888
test    eax, eax
jnz     short loc_4BE472

loc_4BE40E:
mov     al, [ebx+8]
test    al, al
jbe     short loc_4BE41C
cmp     al, 1
jz      short loc_4BE446
pop     ecx
pop     ebx
retn

loc_4BE41C:
mov     edx, ebx
mov     eax, ecx
call    sub_4BE883
test    eax, eax
jz      short loc_4BE472
mov     byte ptr [ebx+8], 1
movsx   edx, byte ptr [ebx+1]
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
mov     edx, 1
jmp     short loc_4BE465

loc_4BE446:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE472
mov     eax, 61Bh
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2

loc_4BE465:
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1

loc_4BE472:
pop     ecx
pop     ebx
retn
sub_4BE3C8 endp




sub_4BE475 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE53D
mov     eax, 61Ch
call    sub_47E888
test    eax, eax
jnz     loc_4BE53D
mov     esi, offset byte_5F8364
mov     al, [edx+8]
test    al, al
jbe     short loc_4BE4B4
cmp     al, 1
jz      short loc_4BE511
pop     esi
pop     ecx
pop     ebx
retn

loc_4BE4B4:
mov     eax, ecx
call    sub_4BE883
test    eax, eax
jz      loc_4BE53D
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      short loc_4BE4DF
mov     eax, 609h
call    sub_47E888
test    eax, eax
jnz     short loc_4BE53D

loc_4BE4DF:
mov     byte ptr [ebx+8], 1
mov     eax, 61Bh
call    sub_47E888
test    eax, eax
jz      short loc_4BE4F9
movsx   edx, byte ptr [ebx+1]
xor     eax, eax
jmp     short loc_4BE4FE

loc_4BE4F9:
movsx   edx, byte ptr [ebx+1]
inc     edx

loc_4BE4FE:
call    sub_4A0E24
or      byte ptr [esi+0BDh], 40h
mov     edx, 1
jmp     short loc_4BE530

loc_4BE511:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE53D
mov     eax, 61Ch
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2

loc_4BE530:
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1

loc_4BE53D:
pop     esi
pop     ecx
pop     ebx
retn
sub_4BE475 endp




sub_4BE541 proc near
push    ecx
mov     ecx, eax
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE5E3
mov     eax, 61Dh
call    sub_47E888
test    eax, eax
jnz     loc_4BE5E3
mov     al, [edx+8]
test    al, al
jbe     short loc_4BE575
cmp     al, 1
jz      short loc_4BE5B7
pop     ecx
retn

loc_4BE575:
mov     eax, 60Eh
call    sub_47E888
test    eax, eax
jz      short loc_4BE5E3
mov     byte ptr [edx+8], 1
movsx   edx, byte ptr [edx+1]
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
mov     edx, 1
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1
mov     eax, 60Eh
call    sub_47EA91
pop     ecx
retn

loc_4BE5B7:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE5E3
mov     eax, 61Dh
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1

loc_4BE5E3:
pop     ecx
retn
sub_4BE541 endp




sub_4BE5E5 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE689
mov     eax, 61Eh
call    sub_47E888
test    eax, eax
jnz     loc_4BE689
mov     al, [edx+8]
test    al, al
jbe     short loc_4BE61D
cmp     al, 1
jz      short loc_4BE653
pop     ecx
pop     ebx
retn

loc_4BE61D:
mov     eax, ecx
call    sub_4BE883
test    eax, eax
jz      short loc_4BE689
mov     byte ptr [ebx+8], 1
movsx   edx, byte ptr [ebx+1]
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
mov     edx, 1
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1
pop     ecx
pop     ebx
retn

loc_4BE653:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE689
mov     eax, 61Eh
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1
mov     eax, 622h
call    sub_47E8B8

loc_4BE689:
pop     ecx
pop     ebx
retn
sub_4BE5E5 endp




sub_4BE68C proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 621h
call    sub_47E888
test    eax, eax
jnz     loc_4BE764
mov     al, [edx+8]
cmp     al, 1
jb      short loc_4BE6B8
jbe     short loc_4BE709
cmp     al, 2
jz      loc_4BE738
pop     ecx
pop     ebx
retn

loc_4BE6B8:
test    al, al
jnz     loc_4BE764
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BE6FC
mov     eax, 620h
call    sub_47E888
test    eax, eax
jz      short loc_4BE6FC
mov     byte ptr [ecx+8], 1
or      ds:byte_5F8421, 40h
mov     edx, 1
mov     eax, 256h
call    sub_4DC979
or      byte ptr [ebx], 1
mov     word ptr [ecx+0Ch], 3Ch ; '<'

loc_4BE6FC:
mov     eax, 620h
call    sub_47EA91
pop     ecx
pop     ebx
retn

loc_4BE709:
mov     dx, [edx+0Ch]
dec     edx
mov     [ecx+0Ch], dx
test    dx, dx
jge     short loc_4BE764
mov     byte ptr [ecx+8], 2
mov     edx, 1
mov     eax, 20h ; ' '
call    sub_4DC979
movsx   edx, byte ptr [ecx+1]
xor     eax, eax
call    sub_4A0E24
pop     ecx
pop     ebx
retn

loc_4BE738:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE764
mov     eax, 621h
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2
mov     eax, 276h
call    sub_4DC979
or      byte ptr [ebx], 1

loc_4BE764:
pop     ecx
pop     ebx
retn
sub_4BE68C endp

jpt_4BE7A3 dd offset loc_4BE7AA ; jump table for switch statement
dd offset loc_4BE7B5
dd offset loc_4BE7EE
dd offset loc_4BE81D
dd offset loc_4BE865



sub_4BE77B proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 608h
call    sub_47E888
test    eax, eax
jnz     def_4BE7A3      ; jumptable 004BE7A3 default case
mov     al, [edx+8]
cmp     al, 4           ; switch 5 cases
ja      def_4BE7A3      ; jumptable 004BE7A3 default case
and     eax, 0FFh
jmp     jpt_4BE7A3[eax*4] ; switch jump

loc_4BE7AA:             ; jumptable 004BE7A3 case 0
mov     byte ptr [edx+8], 1
or      ds:byte_5F8421, 40h

loc_4BE7B5:             ; jumptable 004BE7A3 case 1
mov     edx, ds:dword_5370BC
cmp     edx, 3Ch ; '<'
jbe     short loc_4BE7E2
mov     edx, ecx
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      def_4BE7A3      ; jumptable 004BE7A3 default case
mov     byte ptr [ecx+8], 2
mov     eax, 0Ah

loc_4BE7DA:
call    sub_49E0D7
pop     ecx
pop     ebx
retn

loc_4BE7E2:
lea     ecx, [edx+1]
mov     ds:dword_5370BC, ecx
pop     ecx
pop     ebx
retn

loc_4BE7EE:             ; jumptable 004BE7A3 case 2
cmp     ds:word_6E23D6, 0
jnz     def_4BE7A3      ; jumptable 004BE7A3 default case
mov     byte ptr [edx+8], 3
movsx   edx, byte ptr [edx+1]
xor     eax, eax
call    sub_4A0E24
mov     edx, 5
mov     eax, 2FFh
call    sub_4DC979
pop     ecx
pop     ebx
retn

loc_4BE81D:             ; jumptable 004BE7A3 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4BE7A3 ; jumptable 004BE7A3 default case
mov     byte ptr [ecx+8], 4
mov     dl, byte ptr ds:dword_55BD7C
inc     dl
movsx   eax, dl
mov     eax, ds:dword_53709C[eax*4]
call    sub_42BEB2
call    nullsub_10
mov     ds:byte_5F84D4, dl
mov     edx, 0Ah
mov     eax, 2FFh
call    sub_4DC979
mov     eax, 2
jmp     loc_4BE7DA

loc_4BE865:             ; jumptable 004BE7A3 case 4
cmp     ds:word_6E23D6, 0
jnz     short def_4BE7A3 ; jumptable 004BE7A3 default case
and     ds:byte_5F8421, 0BFh
mov     eax, 608h
call    sub_47E8B8

def_4BE7A3:             ; jumptable 004BE7A3 default case
pop     ecx
pop     ebx
retn
sub_4BE77B endp




sub_4BE883 proc near
push    ebx
push    ecx
movsx   bx, byte ptr [edx+2]
mov     cx, [eax+48h]
sub     ecx, ebx
mov     ebx, ecx
and     ebx, 0FFFFh
xor     ecx, ecx
mov     cx, [edx+4]
cmp     ebx, ecx
jge     short loc_4BE8C4
movsx   bx, byte ptr [edx+3]
mov     ax, [eax+4Ah]
sub     eax, ebx
xor     ecx, ecx
mov     cx, ax
xor     eax, eax
mov     ax, [edx+6]
cmp     ecx, eax
jge     short loc_4BE8C4
mov     eax, 1
pop     ecx
pop     ebx
retn

loc_4BE8C4:
xor     eax, eax
pop     ecx
pop     ebx
retn
sub_4BE883 endp




sub_4BE8C9 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4BE8CF[edx*4]
pop     edx
retn
sub_4BE8C9 endp




sub_4BE8D8 proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short loc_4BE8F4
mov     eax, ecx
call    sub_4DE477
pop     edx
pop     ecx
retn

loc_4BE8F4:
or      byte ptr [ecx], 6
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     eax, [ecx+18h]
call    sub_4EF1AB
mov     dword ptr [ecx+50h], offset unk_808080
cmp     byte ptr [ecx+3], 0
jz      short loc_4BE91C
mov     byte ptr [ecx+8], 5
jmp     short loc_4BE950

loc_4BE91C:
mov     byte ptr [ecx+8], 1
mov     dword ptr [ecx+28h], 0
lea     eax, [ecx+48h]
call    sub_42C443
mov     [ecx+54h], eax
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_6E40B4[eax*4]
mov     [ecx+3Ch], eax
mov     eax, 40500h
call    sub_4A7AAC
mov     [ecx+40h], eax

loc_4BE950:
mov     eax, 607h
call    sub_47EA91
pop     edx
pop     ecx
retn
sub_4BE8D8 endp




sub_4BE95D proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short loc_4BE997
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 8
lea     edx, [ecx+48h]
mov     eax, 119h
call    sub_4D8BC3
mov     edx, [ecx+54h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [ecx+40h]
mov     ds:dword_6E40B4[eax*4], edx

loc_4BE997:
pop     edx
pop     ecx
retn
sub_4BE95D endp




sub_4BE99A proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
mov     ah, [eax+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4BE9C5
inc     byte ptr [ecx+8]
mov     eax, 1Eh
call    sub_42A701
lea     edx, [ecx+48h]
mov     eax, 118h
call    sub_4D8BC3

loc_4BE9C5:
xor     edx, edx
mov     dl, [ecx+0Bh]
mov     eax, 8
sub     eax, edx
mov     [esp+0Ch+var_C], eax
fild    [esp+0Ch+var_C]
fmul    ds:flt_50A3FC
fstp    dword ptr [ecx+28h]

loc_4BE9E0:
add     esp, 4
pop     edx
pop     ecx
retn
sub_4BE99A endp




sub_4BE9E6 proc near
push    edx
mov     edx, eax
mov     eax, 61Fh
call    sub_47E888
test    eax, eax
jz      short loc_4BEA15
mov     byte ptr [edx+0Bh], 40h ; '@'
inc     byte ptr [edx+8]
mov     eax, 60Ah
call    sub_47E8B8
add     edx, 48h ; 'H'
mov     eax, 119h
call    sub_4D8BC3

loc_4BEA15:
pop     edx
retn
sub_4BE9E6 endp




sub_4BEA17 proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 4
mov     edx, eax
mov     ah, [eax+0Bh]
dec     ah
mov     [edx+0Bh], ah
jnz     short loc_4BEA3B
mov     eax, 0Fh
call    sub_4D8E2B
mov     eax, edx
call    sub_4DE477
jmp     short loc_4BE9E0

loc_4BEA3B:
cmp     ah, 10h
jnz     short loc_4BEA54
mov     ecx, [edx+54h]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, [edx+3Ch]
mov     ds:dword_6E40B4[eax*4], ecx

loc_4BEA54:
xor     eax, eax
mov     al, [edx+0Bh]
mov     [esp+0Ch+var_C], eax
fild    word ptr [esp+0Ch+var_C]
fmul    ds:flt_50A400
fstp    dword ptr [edx+28h]
jmp     loc_4BE9E0
sub_4BEA17 endp




sub_4BEA6D proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+46h]
sar     eax, 10h
mov     edx, ds:dword_5F8376
sar     edx, 10h
sub     edx, eax
add     edx, 3Ch ; '<'
cmp     edx, 78h ; 'x'
ja      short loc_4BEADB
mov     edx, [ecx+4Ah]
sar     edx, 10h
mov     eax, ds:dword_5F837A
sar     eax, 10h
sub     eax, edx
add     eax, 3Ch ; '<'
cmp     eax, 78h ; 'x'
ja      short loc_4BEADB
mov     edx, [ecx+48h]
sar     edx, 10h
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
sub     eax, edx
lea     edx, [eax+0Ah]
cmp     edx, 0AAh
ja      short loc_4BEADB
mov     eax, 607h
call    sub_47E8B8
lea     edx, [ecx+48h]
mov     eax, 11Eh
call    sub_4D8BC3
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h

loc_4BEADB:
pop     edx
pop     ecx
retn
sub_4BEA6D endp




sub_4BEADE proc near

var_8= dword ptr -8

push    edx
sub     esp, 4
mov     edx, eax
mov     ah, [eax+0Bh]
dec     ah
mov     [edx+0Bh], ah
jnz     short loc_4BEAF1
inc     byte ptr [edx+8]

loc_4BEAF1:
xor     eax, eax
mov     al, [edx+0Bh]
mov     [esp+8+var_8], eax
fild    word ptr [esp+8+var_8]
fmul    ds:flt_50A404
fstp    dword ptr [edx+28h]
add     esp, 4
pop     edx
retn
sub_4BEADE endp




sub_4BEB0A proc near
inc     byte ptr [eax+8]
sub_4BEB0A endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_89]


; Attributes: thunk

sub_4BEB0E proc near
jmp     sub_4DE477
sub_4BEB0E endp




sub_4BEB13 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4BEB19[edx*4]
pop     edx
retn
sub_4BEB13 endp




sub_4BEB22 proc near

var_1C= dword ptr -1Ch

push    ebx             ; int
push    ecx             ; float
push    edx             ; int
push    esi             ; int
push    edi             ; int
push    ebp             ; int
sub     esp, 4
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     dl, [ecx+3]
cmp     dl, 80h
jb      short loc_4BEB78
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      short loc_4BEB58
mov     eax, 609h
call    sub_47E888
test    eax, eax
jnz     short loc_4BEB8B

loc_4BEB58:
mov     [esp+1Ch+var_1C], 1
mov     edx, esp
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], 2808080h
mov     dword ptr [ecx+10h], offset unk_5370FC
jmp     short loc_4BEBBE

loc_4BEB78:
test    dl, 1Fh
jz      short loc_4BEB97
mov     eax, 609h

loc_4BEB82:
call    sub_47E888
test    eax, eax
jz      short loc_4BEB9E

loc_4BEB8B:
mov     eax, ecx
call    sub_4DE477
jmp     loc_4BED16

loc_4BEB97:
mov     eax, 608h
jmp     short loc_4BEB82

loc_4BEB9E:
xor     edx, edx
mov     [esp+1Ch+var_1C], edx ; int
mov     byte ptr [ecx+9], 0
mov     edx, esp
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
mov     dword ptr [ecx+10h], offset off_5370F0

loc_4BEBBE:
lea     eax, [ecx+18h]
call    sub_4EF1AB
cmp     byte ptr [ecx+3], 80h
jnb     short loc_4BEBE4
mov     dword ptr [ecx+38h], 3E000000h
mov     eax, [ecx+38h]
mov     [ecx+28h], eax
mov     eax, [ecx+28h]
mov     [ecx+18h], eax
sub     word ptr [ecx+4Ah], 20h ; ' '

loc_4BEBE4:
lea     edx, [ecx+18h]
mov     al, [ecx+3]
and     al, 60h
and     eax, 0FFh
sar     eax, 5
shl     eax, 0Ah
call    sub_4EF50D
mov     al, [ecx+3]
and     al, 1
and     eax, 0FFh
shl     eax, 4
xor     esi, esi
mov     ds:dword_55CF9C[eax], esi
mov     al, [ecx+3]
and     al, 1
and     eax, 0FFh
shl     eax, 4
mov     ds:dword_55CFA0[eax], esi
mov     al, [ecx+3]
and     al, 1
and     eax, 0FFh
shl     eax, 4
mov     ds:dword_55CFA4[eax], esi
mov     al, [ecx+3]
and     al, 1
and     eax, 0FFh
shl     eax, 4
mov     ds:dword_55CFA8[eax], esi
mov     bh, [ecx+3]
cmp     bh, 80h
jb      loc_4BECFC
cmp     bh, 81h
jnz     short loc_4BECB4
mov     [esp+1Ch+var_1C], esi

loc_4BEC5E:
mov     edx, [esp+1Ch+var_1C]
or      edx, 10000h
mov     eax, [ecx+14h]
call    sub_4EDF7C
mov     esi, [esp+1Ch+var_1C]
lea     edi, byte_55CFBC[esi*8]
mov     esi, eax
movsd
movsd
mov     esi, [esp+1Ch+var_1C]
inc     esi
mov     [esp+1Ch+var_1C], esi
cmp     esi, 10h
jb      short loc_4BEC5E
mov     eax, [ecx+14h]
mov     esi, [eax+70h]
mov     esi, [esi+24h]
xor     ebp, ebp
mov     [esp+1Ch+var_1C], ebp

loc_4BEC97:
mov     eax, [esp+1Ch+var_1C]
mov     edx, eax
mov     ax, [esi+eax*8+2]
mov     ds:word_55D03C[edx*2], ax
mov     eax, edx
inc     eax
mov     [esp+1Ch+var_1C], eax
cmp     eax, 19h
jb      short loc_4BEC97

loc_4BECB4:
mov     byte ptr [ecx+8], 5
or      byte ptr [ecx], 40h
mov     byte ptr [ecx+0Ah], 0
test    byte ptr [ecx+3], 4Fh
jz      short loc_4BED04
lea     eax, [ecx+48h]
call    sub_42C443
mov     [ecx+54h], eax
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_6E40B4[eax*4]
mov     [ecx+0Ch], eax
mov     al, [ecx+3]
and     al, 0Fh
and     eax, 0FFh
mov     eax, ds:dword_5370E8[eax*4]
call    sub_4A7AAC
mov     [ecx+3Ch], eax
jmp     short loc_4BED04

loc_4BECFC:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+0Ah], 64h ; 'd'

loc_4BED04:
call    rand_
and     eax, 7
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     [ecx+58h], eax

loc_4BED16:
add     esp, 4

loc_4BED19:
pop     ebp

loc_4BED1A:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BEB22 endp




sub_4BED20 proc near

var_22= dword ptr -22h
var_1E= dword ptr -1Eh
var_1A= word ptr -1Ah

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     al, [eax+3]
and     al, 1
and     eax, 0FFh
shl     eax, 4
mov     ecx, ds:dword_55CF9C[eax]
and     ecx, 0FFFFFFh
jz      short loc_4BED4F
mov     dword ptr [ebp+50h], 0FFFFFFh
jmp     short loc_4BED84

loc_4BED4F:
mov     ah, [ebp+9]
dec     ah
mov     [ebp+9], ah
jnz     short loc_4BED7D
call    rand_
and     al, 8
inc     al
add     al, al
mov     [ebp+9], al
mov     dword ptr [ebp+50h], 0FFC080h
lea     edx, [ebp+48h]
mov     eax, 11Ch
call    sub_4D8BC3
jmp     short loc_4BED84

loc_4BED7D:
mov     dword ptr [ebp+50h], offset unk_808080

loc_4BED84:
mov     edx, ds:dword_5F84E8
cmp     ebp, edx
jnz     short loc_4BEDA3
mov     eax, 60Eh
call    sub_47E8B8
xor     ebx, ebx
mov     ds:dword_5F84E8, ebx
mov     [edx+10h], ebx

loc_4BEDA3:
mov     eax, 61Dh
call    sub_47E888
test    eax, eax
jz      short loc_4BEDBC
xor     esi, esi
mov     ds:dword_5F84E8, esi
mov     [ebp+10h], esi

loc_4BEDBC:
xor     eax, eax
mov     al, [ebp+0Ah]
sub     eax, ecx
test    eax, eax
jl      short loc_4BEDDD
mov     al, [ebp+3]
and     al, 1
and     eax, 0FFh
shl     eax, 4
test    byte ptr ds:(dword_55CF9C+3)[eax], 20h
jz      short loc_4BEE4B

loc_4BEDDD:
mov     al, [ebp+3]
and     al, 1
movzx   esi, al
shl     esi, 4
mov     edi, esp
lea     esi, dword_55CFA4[esi]
movsd
movsd
cmp     [esp+20h+var_1A], 0
jnz     short loc_4BEE17
mov     edx, [esp+20h+var_1E]
sar     edx, 10h
neg     edx
mov     eax, [esp+20h+var_22]
sar     eax, 10h
call    sub_4EF04B
mov     [ebp+40h], eax
neg     eax
mov     [ebp+40h], eax

loc_4BEE17:
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+0Bh], 10h
mov     dword ptr [ebp+50h], offset unk_808080
lea     edx, [ebp+48h]
mov     eax, 0A2h
call    sub_4D8BC3
test    byte ptr [ebp+3], 1Fh
jz      short loc_4BEE44
mov     eax, 609h

loc_4BEE3D:
call    sub_47E8B8
jmp     short loc_4BEE74

loc_4BEE44:
mov     eax, 608h
jmp     short loc_4BEE3D

loc_4BEE4B:
sub     [ebp+0Ah], cl
mov     al, [ebp+3]
and     al, 1
and     eax, 0FFh
shl     eax, 4
xor     edi, edi
mov     ds:dword_55CF9C[eax], edi
test    ecx, ecx
jz      short loc_4BEE74
lea     edx, [ebp+48h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_4BEE74:
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
push    0
push    offset unk_800000
push    4000000h
sub     word ptr [esp+2Ch+var_1E], 28h ; '('
mov     al, [ebp+3]
and     al, 1
and     eax, 0FFh
shl     eax, 4
add     eax, offset dword_55CF9C
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 50h ; 'P'
lea     eax, [esp+34h+var_22+2]
call    sub_4E01FC
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 5
mov     eax, ebp
call    sub_432697
add     esp, 8
jmp     loc_4BED19
sub_4BED20 endp




; int __fastcall sub_4BEED6(int, int)
sub_4BEED6 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; float
push    edi             ; int
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+18h]
mov     eax, ebx
call    sub_4EF1AB
mov     al, [ecx+3]
and     al, 60h
and     eax, 0FFh
sar     eax, 5
shl     eax, 0Ah
mov     edx, ebx
call    sub_4EF50D
mov     eax, [ecx+40h]
neg     eax
mov     edx, ebx
call    sub_4EF50D
xor     eax, eax
mov     al, [ecx+0Bh]
mov     edx, 10h
sub     edx, eax
mov     eax, edx
shl     edx, 4
imul    eax, edx
mov     edx, 1000h
sub     edx, eax
mov     eax, edx
imul    eax, edx
mov     esi, 1000000h
sub     esi, eax
mov     eax, esi
call    sub_4EF075
call    sub_4EF04B
mov     edx, ebx
call    sub_4EF486
mov     eax, [ecx+40h]
mov     edx, ebx
call    sub_4EF50D
mov     edx, 200h
mov     [esp+24h+var_1C], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_24], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     ah, [ecx+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4BEFE1
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 8
xor     ebx, ebx
jmp     short loc_4BEF85

loc_4BEF7F:
inc     ebx
cmp     ebx, 3
jge     short loc_4BEFE1

loc_4BEF85:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4BEF7F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 2
mov     eax, [ecx+40h]
call    sub_4EF008
mov     esi, ebx
shl     esi, 6
imul    eax, esi
sar     eax, 0Ch
mov     edi, [ecx+46h]
sar     edi, 10h
sub     edi, eax
mov     [edx+1Ch], di
mov     ax, [ecx+4Ah]
sub     eax, 10h
mov     [edx+1Eh], ax
mov     eax, [ecx+40h]
call    sub_4EF003
imul    eax, esi
sar     eax, 0Ch
mov     esi, [ecx+4Ah]
sar     esi, 10h
sub     esi, eax
mov     [edx+20h], si
jmp     short loc_4BEF7F

loc_4BEFE1:
add     esp, 10h
jmp     loc_4BED1A
sub_4BEED6 endp




sub_4BEFE9 proc near
push    edx
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4BEFF7
inc     byte ptr [eax+8]

