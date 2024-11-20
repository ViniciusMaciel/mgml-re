cmp     byte ptr [edx+0Eh], 0
jz      short loc_4D6904
mov     eax, edx
call    sub_4DE371
pop     edx
pop     ecx
retn

loc_4D6904:
mov     eax, edx
call    sub_4D6D88
mov     ecx, eax
test    eax, eax
jz      short loc_4D6914
mov     [edx+0Fh], cl

loc_4D6914:
mov     eax, edx
call    sub_4D6E9C
test    eax, eax
jz      short loc_4D692B
mov     dword ptr [edx+0C4h], 2404040h
jmp     short loc_4D6935

loc_4D692B:
mov     dword ptr [edx+0C4h], 2202020h

loc_4D6935:
mov     eax, edx
call    sub_4D6946
mov     eax, edx
call    sub_4D6B42
pop     edx
pop     ecx
retn
sub_4D68E0 endp




sub_4D6946 proc near

var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_2C= dword ptr -2Ch
var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 54h
mov     ebp, eax
add     eax, 88h
mov     [esp+6Ch+var_1C], eax
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     ecx, 0Ch
mov     edi, esp
lea     esi, [eax+8Ch]
rep movsd
lea     edi, [esp+6Ch+var_2C]
lea     esi, [eax+14h]
movsd
movsd
lea     ecx, [ebp+8Ch]
mov     eax, ecx
call    sub_4EF184
mov     [esp+6Ch+var_24], 400h
xor     ebx, ebx
mov     [esp+6Ch+var_22], bx
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 0Fh
shl     eax, 8
mov     [esp+6Ch+var_20], ax
mov     edx, ecx
lea     eax, [esp+6Ch+var_24]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+6Ch+var_34], edx
mov     [esp+6Ch+var_38], edx
mov     [esp+6Ch+var_3C], edx
lea     edx, [esp+6Ch+var_3C]
mov     eax, ecx
call    sub_4EF689
mov     ebx, ecx
mov     edx, ecx
mov     eax, esp
call    sub_4EF388
xor     esi, esi
mov     [esp+6Ch+var_24], si
mov     [esp+6Ch+var_22], si
mov     [esp+6Ch+var_20], 0F000h
lea     ebx, [esp+6Ch+var_3C]
lea     edx, [esp+6Ch+var_24]
mov     eax, ecx
call    sub_4EF1FB
mov     eax, [esp+6Ch+var_3C]
shl     eax, 4
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ebp+44h], ax
mov     eax, [esp+6Ch+var_38]
shl     eax, 4
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ebp+46h], ax
mov     eax, [esp+6Ch+var_34]
shl     eax, 4
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ebp+48h], ax
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 8
mov     eax, [esp+3Eh]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [ebp+1Ch], eax
mov     edx, [ebp+44h]
sar     edx, 10h
shl     edx, 8
mov     eax, [esp+6Ch+var_2C]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [ebp+20h], eax
mov     edx, [ebp+46h]
sar     edx, 10h
shl     edx, 8
mov     eax, [esp+6Ch+var_2C+2]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [ebp+24h], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
mov     [ebp+14h], ax
mov     edx, [esp+6Ch+var_1C]
mov     [edx+34h], ax
mov     eax, [ebp+20h]
sar     eax, 10h
mov     [ebp+16h], ax
mov     [edx+36h], ax
mov     eax, [ebp+24h]
sar     eax, 10h
mov     [ebp+18h], ax
mov     [edx+38h], ax
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
mov     edx, [esp+6Ch+var_3C]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ebp+44h], ax
mov     edx, [esp+6Ch+var_38]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ebp+46h], ax
mov     edx, [esp+6Ch+var_34]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ebp+48h], ax
mov     edi, 1400h
mov     [esp+6Ch+var_38], edi
mov     [esp+6Ch+var_3C], edi
mov     eax, [ebp+0Ch]
sar     eax, 18h
shl     eax, 6
mov     [esp+6Ch+var_34], eax
lea     edx, [esp+6Ch+var_3C]
mov     eax, ecx
call    sub_4EF689
add     esp, 54h

loc_4D6B3B:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D6946 endp




sub_4D6B42 proc near

var_48= word ptr -48h
var_46= word ptr -46h
var_44= word ptr -44h
var_40= word ptr -40h
var_3E= word ptr -3Eh
var_3C= word ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 30h
mov     esi, eax
mov     eax, [eax+42h]
sar     eax, 10h
shl     eax, 8
mov     [esp+48h+var_38], eax
mov     eax, [esi+44h]
sar     eax, 10h
shl     eax, 8
mov     [esp+48h+var_20], eax
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 8
mov     [esp+48h+var_30], eax
xor     ah, ah
mov     [esp+48h+var_1C], ah

loc_4D6B7A:
mov     ecx, [esi+0Ch]
sar     ecx, 18h
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     edx, eax
xor     eax, eax
mov     al, [esp+48h+var_1C]
lea     ebx, [esi+0DCh]
mov     [esp+48h+var_28], ebx
mov     bl, al
shl     bl, 3
mov     edi, eax
shl     edi, 3
mov     [esp+48h+var_2C], edi
mov     edi, eax
shl     edi, 2
mov     [esp+48h+var_34], edi
mov     edi, [esp+48h+var_2C]
add     edi, esi
mov     ebp, [esp+48h+var_28]
add     ebp, [esp+48h+var_34]
mov     [esp+48h+var_24], ebp
cmp     eax, edx
jge     loc_4D6CA0
mov     cl, bl
add     cl, 6
xor     eax, eax
mov     al, cl
mov     edx, [esp+48h+var_38]
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+48h+var_48], dx
mov     edx, [esp+48h+var_20]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+48h+var_46], dx
imul    eax, [esp+48h+var_30]
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+48h+var_44], ax
mov     cl, bl
inc     cl
and     ecx, 0FFh
mov     eax, [esp+48h+var_38]
imul    eax, ecx
add     eax, [esi+1Ch]
sar     eax, 10h
mov     [esp+48h+var_40], ax
mov     eax, [esp+48h+var_20]
imul    eax, ecx
add     eax, [esi+20h]
sar     eax, 10h
mov     [esp+48h+var_3E], ax
imul    ecx, [esp+48h+var_30]
mov     eax, [esi+24h]
add     eax, ecx
sar     eax, 10h
mov     [esp+48h+var_3C], ax
push    80h
push    0
push    9000030h
mov     edx, [esp+54h+var_24]
push    edx
xor     eax, eax
mov     al, [esi+1]
push    eax
push    0A000h
push    200h
mov     ecx, 48h ; 'H'
lea     ebx, [esp+64h+var_40]
mov     edx, ecx
lea     eax, [esp+64h+var_48]
call    sub_4E02CB
mov     dword ptr [edi+0DCh], 0
mov     dword ptr [edi+0E0h], 0
inc     [esp+48h+var_1C]
jmp     loc_4D6B7A

loc_4D6CA0:
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
mov     ecx, 8
idiv    ecx
test    edx, edx
jz      loc_4D6D80
cmp     [esp+48h+var_1C], 8
jnb     loc_4D6D80
mov     eax, [esp+48h+var_2C]
add     eax, edx
and     eax, 0FFh
mov     edx, [esp+48h+var_38]
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+48h+var_48], dx
mov     edx, [esp+48h+var_20]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+48h+var_46], dx
imul    eax, [esp+48h+var_30]
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+48h+var_44], ax
xor     eax, eax
mov     al, bl
mov     edx, [esp+48h+var_38]
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+48h+var_40], dx
mov     edx, [esp+48h+var_20]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+48h+var_3E], dx
imul    eax, [esp+48h+var_30]
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+48h+var_3C], ax
push    80h
push    0
push    9000030h
mov     ebx, [esp+54h+var_24]
push    ebx
xor     eax, eax
mov     al, [esi+1]
push    eax
push    0A000h
push    200h
mov     ecx, 48h ; 'H'
lea     ebx, [esp+64h+var_40]
mov     edx, ecx
lea     eax, [esp+64h+var_48]
call    sub_4E02CB
mov     dword ptr [edi+0DCh], 0
mov     dword ptr [edi+0E0h], 0

loc_4D6D80:
add     esp, 30h
jmp     loc_4D6B3B
sub_4D6B42 endp




sub_4D6D88 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_24= dword ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     esi, eax
mov     eax, [eax+42h]
sar     eax, 10h
shl     eax, 8
mov     [esp+34h+var_24], eax
mov     ebp, [esi+44h]
sar     ebp, 10h
shl     ebp, 8
mov     edi, [esi+46h]
sar     edi, 10h
shl     edi, 8
xor     ah, ah
mov     [esp+34h+var_1C], ah

loc_4D6DB8:
mov     al, [esp+34h+var_1C]
cmp     al, [esi+0Fh]
jnb     loc_4D6E92
inc     al
mov     [esp+34h+var_20], al
xor     eax, eax
mov     al, [esp+34h+var_20]
mov     edx, [esp+34h+var_24]
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+34h+var_2C], dx
mov     edx, ebp
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+34h+var_2A], dx
imul    eax, edi
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+34h+var_28], ax
xor     eax, eax
mov     al, [esp+34h+var_1C]
mov     edx, [esp+34h+var_24]
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     word ptr [esp+34h+var_34], dx
mov     edx, ebp
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     word ptr [esp+34h+var_34+2], dx
imul    eax, edi
add     eax, [esi+24h]
sar     eax, 10h
mov     word ptr [esp+34h+var_30], ax
mov     ecx, 0FFFFh
mov     ebx, offset unk_539844
mov     edx, esp
lea     eax, [esp+34h+var_2C]
call    sub_42CE61
test    eax, eax
jz      short loc_4D6E85
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4D6E7C
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Eh
mov     byte ptr [eax+3], 1
mov     eax, [esp+34h+var_34]
mov     [edx+1Ch], ax
mov     eax, [esp+34h+var_34+2]
mov     [edx+1Eh], ax
mov     eax, [esp+34h+var_30]
mov     [edx+20h], ax

loc_4D6E7C:
xor     eax, eax
mov     al, [esp+34h+var_1C]
inc     eax
jmp     short loc_4D6E94

loc_4D6E85:
mov     al, [esp+34h+var_20]
mov     [esp+34h+var_1C], al
jmp     loc_4D6DB8

loc_4D6E92:
xor     eax, eax

loc_4D6E94:
add     esp, 1Ch
jmp     loc_4D6B3B
sub_4D6D88 endp




sub_4D6E9C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     bl, bl

loc_4D6EA3:
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
xor     edx, edx
mov     dl, bl
cmp     edx, eax
jge     short loc_4D6ED5
test    byte ptr [ecx+edx*8+0DFh], 0FFh
jz      short loc_4D6ED1
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4D6ED1:
inc     bl
jmp     short loc_4D6EA3

loc_4D6ED5:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4D6E9C endp




sub_4D6EDB proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]     ; int
call    ds:funcs_4D6EE1[edx*4]
pop     edx
retn
sub_4D6EDB endp




; int __fastcall sub_4D6EEA(int, int)
sub_4D6EEA proc near

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
lea     ebx, [eax+88h]
cmp     byte ptr [eax+3], 2
jnb     loc_4D7036
or      byte ptr [ecx], 6
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_539858
mov     byte ptr [ecx+2], 30h ; '0'
mov     edx, offset unk_539876
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 32h ; '2'
mov     word ptr [ecx+6Eh], 0
mov     word ptr [ecx+44h], 0
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_539864[eax*2]
mov     [ecx+46h], ax
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_53986A[eax*2]
mov     [ecx+4Eh], ax
mov     word ptr [ecx+50h], 0
mov     edx, ebx
mov     ax, [ecx+14h]
mov     [ebx+34h], ax
mov     ax, [ecx+16h]
mov     [ebx+36h], ax
mov     ax, [ecx+18h]
mov     [ebx+38h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ebx+3Ch], 2808080h
inc     byte ptr [ecx+8]
call    rand_
and     al, 0Fh
mov     [ecx+9], al
lea     eax, [ebx+4]

loc_4D6FF1:
cmp     byte ptr [ecx+3], 0
call    sub_4EF1BC
lea     ebx, [edx+4]
xor     eax, eax
mov     al, [ecx+9]
shl     eax, 8
mov     edx, ebx
call    sub_4EF50D
mov     eax, [ecx+6Ch]
sar     eax, 10h
mov     [esp+24h+var_1C], eax
mov     [esp+24h+var_20], eax
mov     [esp+24h+var_24], eax
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, ecx
call    sub_4D734D

loc_4D702D:
add     esp, 10h

loc_4D7030:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D7036:
mov     edx, [ecx+42h]
sar     edx, 10h
mov     eax, ds:dword_539866
sar     eax, 10h
imul    eax, edx
sar     eax, 8
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 0
mov     edx, [ecx+46h]
sar     edx, 10h
mov     eax, ds:dword_539866
sar     eax, 10h
imul    eax, edx
sar     eax, 8
mov     [ecx+48h], ax
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_539858
mov     ax, [ecx+14h]
mov     [ebx+34h], ax
mov     ax, [ecx+16h]
mov     [ebx+36h], ax
mov     ax, [ecx+18h]
mov     [ebx+38h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     byte ptr [ecx+8], 3
jmp     loc_4D702D
sub_4D6EEA endp




sub_4D7104 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
cmp     byte ptr [eax+3], 0
jnz     short loc_4D712A
mov     eax, [ecx+14h]
sar     eax, 10h
cmp     eax, 0FFFFF82Fh
jge     short loc_4D717D
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Ah], 8
jmp     short loc_4D717D

loc_4D712A:
mov     eax, [ecx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jle     short loc_4D717D
lea     edx, [ecx+14h]
mov     eax, 1F9h
call    sub_4D8BC3
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Ah], 8
call    sub_4DE13B
test    eax, eax
jz      short loc_4D717D
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 1
mov     byte ptr [eax+3], 2
mov     dx, [ecx+14h]
mov     [eax+48h], dx
mov     dx, [ecx+16h]
mov     [eax+4Ah], dx
mov     dx, [ecx+18h]
mov     [eax+4Ch], dx

loc_4D717D:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     bl, [ecx+3]
test    bl, bl
jnz     short loc_4D71B9
xor     eax, eax
mov     al, bl
add     eax, eax
mov     ebx, ds:dword_53986E[eax]
sar     ebx, 10h
mov     edx, [ecx+44h]
sar     edx, 10h
cmp     edx, ebx
jge     short loc_4D71DD
jmp     short loc_4D71D2

loc_4D71B9:
xor     eax, eax
mov     al, bl
add     eax, eax
mov     edx, ds:dword_53986E[eax]
sar     edx, 10h
mov     ebx, [ecx+44h]
sar     ebx, 10h
cmp     ebx, edx
jle     short loc_4D71DD

loc_4D71D2:
mov     ax, word ptr ds:(dword_53986E+2)[eax]
mov     [ecx+46h], ax

loc_4D71DD:
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 0Ah
add     [ecx+20h], eax
mov     ax, [ecx+20h]
mov     [ecx+16h], ax
lea     edx, [ecx+88h]
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [edx+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [edx+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [edx+38h], ax
inc     byte ptr [ecx+6Fh]
cmp     word ptr [ecx+6Eh], 0
jge     short loc_4D7231
mov     word ptr [ecx+6Eh], 0

loc_4D7231:
cmp     byte ptr [ecx+3], 0
jz      short loc_4D7277
cmp     byte ptr ds:dword_77E7DC+3, 1
jle     short loc_4D7247
mov     eax, 900h
jmp     short loc_4D724C

loc_4D7247:
mov     eax, 800h

loc_4D724C:
mov     ebx, [ecx+6Ch]
sar     ebx, 10h
cmp     ebx, eax
ja      short loc_4D7277
add     word ptr [ecx+22h], 40h ; '@'
mov     eax, ds:dword_5F8376
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax

loc_4D7277:
inc     byte ptr [ecx+9]
cmp     word ptr [ecx+6Eh], 1000h
jle     short loc_4D7288
mov     word ptr [ecx+6Eh], 1000h

loc_4D7288:
lea     eax, [edx+4]
jmp     loc_4D6FF1
sub_4D7104 endp




; int __thiscall sub_4D7290(int)
sub_4D7290 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx             ; int
push    ecx             ; int
push    edx             ; float
push    esi             ; int
sub     esp, 10h
mov     ecx, eax
mov     ah, [eax+0Ah]
dec     ah
mov     [ecx+0Ah], ah
jnz     short loc_4D72AA
mov     eax, ecx
call    sub_4DE371

loc_4D72AA:
lea     ebx, [ecx+88h]
sub     word ptr [ecx+6Eh], 200h
inc     byte ptr [ecx+9]
mov     si, [ecx+6Eh]
cmp     si, 1000h
jle     short loc_4D72CC
mov     word ptr [ecx+6Eh], 1000h
jmp     short loc_4D72D7

loc_4D72CC:
test    si, si
jge     short loc_4D72D7
mov     word ptr [ecx+6Eh], 0

loc_4D72D7:
lea     eax, [ebx+4]
cmp     byte ptr [ecx+3], 0
call    sub_4EF1BC
lea     edx, [ebx+4]
xor     eax, eax
mov     al, [ecx+9]
shl     eax, 8
call    sub_4EF50D
mov     edx, 1000h
mov     [esp+20h+var_18], edx
mov     [esp+20h+var_20], edx
mov     eax, [ecx+6Ch]
sar     eax, 10h
mov     [esp+20h+var_1C], eax
cmp     byte ptr [ecx+3], 0
jnz     short loc_4D7315
sub     word ptr [ebx+36h], 80h

loc_4D7315:
lea     eax, [ebx+4]
mov     edx, esp
call    sub_4EF689
mov     eax, [ecx+6Ch]
sar     eax, 10h
shl     eax, 7
sar     eax, 0Ch
mov     ebx, eax
or      ebx, 2000000h
mov     edx, eax
shl     edx, 8
or      edx, ebx
shl     eax, 10h
or      edx, eax
mov     [ecx+0C4h], edx
add     esp, 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D7290 endp




sub_4D734D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
push    80h
push    0
push    4000040h
add     eax, 0D4h
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
lea     eax, [esi+14h]
mov     ecx, 0A000h
xor     ebx, ebx
mov     edx, 40h ; '@'
call    sub_4E01FC
mov     dword ptr [esi+0D4h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D734D endp




sub_4D738E proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4D73BE
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     bx, [edx+14h]
mov     [eax+48h], bx
mov     bx, [edx+16h]
mov     [eax+4Ah], bx
mov     dx, [edx+18h]
mov     [eax+4Ch], dx

loc_4D73BE:
pop     edx
pop     ebx
retn
sub_4D738E endp




sub_4D73C1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
add     eax, 14h
mov     ecx, 0FFFFh
xor     ebx, ebx
xor     edx, edx
call    sub_42C5B7
cmp     eax, 0FFFFFFEFh
jge     short loc_4D73EB
mov     eax, ebp
call    sub_4DE371
jmp     loc_4D7493

loc_4D73EB:
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
mov     eax, [ebp+42h]
sar     eax, 10h
shl     eax, 0Ch
add     [ebp+1Ch], eax
mov     eax, [ebp+44h]
sar     eax, 10h
shl     eax, 0Ch
add     [ebp+20h], eax
mov     eax, [ebp+46h]
sar     eax, 10h
shl     eax, 0Ch
add     [ebp+24h], eax
lea     eax, [ebp+88h]
mov     edx, [ebp+1Ch]
sar     edx, 10h
mov     [ebp+14h], dx
mov     [eax+34h], dx
mov     edx, [ebp+20h]
sar     edx, 10h
mov     [ebp+16h], dx
mov     [eax+36h], dx
mov     edx, [ebp+24h]
sar     edx, 10h
mov     [ebp+18h], dx
mov     [eax+38h], dx
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4D7493
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+0Dh], 0
cmp     byte ptr [ebp+3], 2
jnz     short loc_4D7473
mov     byte ptr [eax+0Eh], 0
jmp     short loc_4D7477

loc_4D7473:
mov     byte ptr [eax+0Eh], 1

loc_4D7477:
mov     byte ptr [edx+3], 2
mov     ax, [ebp+14h]
mov     [edx+48h], ax
mov     ax, [ebp+16h]
mov     [edx+4Ah], ax
mov     ax, [ebp+18h]
mov     [edx+4Ch], ax

loc_4D7493:
pop     ebp
jmp     loc_4D7030
sub_4D73C1 endp




sub_4D7499 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D749F[edx*4]
pop     edx
retn
sub_4D7499 endp




sub_4D74A8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+88h]
cmp     byte ptr [eax+3], 0FFh
jnz     short loc_4D74D2
or      byte ptr [ecx], 26h
mov     byte ptr [ecx+8], 7
mov     byte ptr [ecx+0Bh], 80h
mov     dword ptr [ebx+3Ch], 2808080h
jmp     loc_4D7CB3

loc_4D74D2:
mov     dl, [ecx+3]
cmp     dl, 0FEh
jnz     short loc_4D74EB
mov     byte ptr [ecx+8], 8
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 10h
jmp     loc_4D7CB3

loc_4D74EB:
cmp     dl, 0FDh
jnz     short loc_4D74F9
mov     byte ptr [ecx+8], 9
jmp     loc_4D7CB3

loc_4D74F9:
cmp     dl, 0FCh
jnz     short loc_4D750F
lea     eax, [ecx+2Ch]
call    sub_4E1E86
mov     byte ptr [ecx+8], 0Ah
jmp     loc_4D7CB3

loc_4D750F:
or      byte ptr [ecx], 6
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_53988C
lea     edi, [ecx+0DCh]
lea     esi, [ecx+44h]
movsd
movsd
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     esi, [ecx+0E4h]
lea     edi, [ecx+14h]
lea     esi, [esi+208h]
movsd
movsd
mov     ax, [ecx+14h]
mov     [ebx+34h], ax
mov     ax, [ecx+16h]
mov     [ebx+36h], ax
mov     ax, [ecx+18h]
mov     [ebx+38h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ebx+3Ch], 2808080h
inc     byte ptr [ecx+8]
mov     word ptr [ecx+0C2h], 0
inc     byte ptr [ecx+0Bh]
mov     eax, ecx
call    sub_4D7B31
lea     edx, [ecx+14h]
mov     eax, 1F4h
call    sub_4D8BC3
jmp     loc_4D7CB3
sub_4D74A8 endp




sub_4D75E4 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= byte ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 20h
mov     ecx, eax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax+0Ah]
inc     ah
mov     [ecx+0Ah], ah
cmp     ah, 1Eh
jnb     short loc_4D7615
add     word ptr [ecx+0C2h], 10h

loc_4D7615:
inc     byte ptr [ecx+0Bh]
mov     esi, [ecx+0E4h]
lea     edi, [ecx+14h]
lea     esi, [esi+208h]
movsd
movsd
lea     eax, [ecx+88h]
mov     dx, [ecx+14h]
mov     [eax+34h], dx
mov     dx, [ecx+16h]
mov     [eax+36h], dx
mov     dx, [ecx+18h]
mov     [eax+38h], dx
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
cmp     byte ptr [ecx+0Ch], 0
jz      loc_4D775D
lea     edx, [ecx+14h]
mov     eax, 1F5h
call    sub_4D8BC3
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+8], 5
mov     edx, [ecx+12h]
sar     edx, 10h
mov     eax, ds:dword_5F880A
sar     eax, 10h
sub     eax, edx
mov     [esp+34h+var_34], eax
mov     eax, [ecx+14h]
sar     eax, 10h
mov     edx, ds:dword_5F880A+2
sar     edx, 10h
sub     edx, eax
mov     [esp+34h+var_30], edx
mov     edx, [ecx+16h]
sar     edx, 10h
mov     eax, ds:dword_5F880E
sar     eax, 10h
sub     eax, edx
mov     [esp+34h+var_2C], eax
lea     edx, [ecx+44h]
mov     eax, esp
call    sub_4EF932
lea     edi, [ecx+0DCh]
lea     esi, [ecx+44h]
movsd
movsd
lea     edi, [esp+34h+var_24]
lea     esi, [ecx+0DCh]
movsd
movsd
lea     edi, [esp+34h+var_1C]
lea     esi, [esp+34h+var_24]
movsd
movsd
mov     ax, word ptr ds:dword_539898
mov     [ecx+6Eh], ax
cwde
mov     esi, [esp+16h]
sar     esi, 10h
mov     edx, esi
imul    edx, eax
sar     edx, 4
mov     [ecx+44h], dx
mov     ebx, [esp+34h+var_1C]
sar     ebx, 10h
mov     edx, ebx
imul    edx, eax
sar     edx, 4
mov     [ecx+46h], dx
mov     edx, [esp+34h+var_1C+2]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ecx+48h], ax
mov     eax, ds:dword_539898
sar     eax, 10h
imul    esi, eax
sar     esi, 4
mov     [ecx+4Ch], si
imul    ebx, eax
sar     ebx, 4
mov     [ecx+4Eh], bx
imul    eax, edx
sar     eax, 4
mov     [ecx+50h], ax

loc_4D775D:
mov     eax, ecx
call    sub_4D7B31
add     esp, 20h
jmp     loc_4D7CB3
sub_4D75E4 endp




sub_4D776C proc near
inc     byte ptr [eax+8]
retn
sub_4D776C endp




sub_4D7770 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= dword ptr -28h
var_20= byte ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ebp, eax
xor     edx, edx
call    sub_4EE66E
test    eax, eax
jz      short loc_4D77A5
cmp     eax, 7FFFh
jnz     short loc_4D7796
test    byte ptr [ebp+0D7h], 0FFh
jz      short loc_4D77A5

loc_4D7796:
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0

loc_4D77A5:
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
test    byte ptr [ebp+0Ah], 7
jnz     short loc_4D77DC
call    sub_4DE043
test    eax, eax
jz      short loc_4D77DC
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FEh
lea     edi, [eax+0BCh]
lea     esi, [ebp+14h]
movsd
movsd

loc_4D77DC:
mov     bh, [ebp+0Ah]
inc     bh
mov     [ebp+0Ah], bh
cmp     bh, 0Ah
jnb     loc_4D7954
mov     eax, [ebp+0C8h]
movsx   edx, word ptr [eax]
mov     eax, [ebp+12h]
sar     eax, 10h
sub     edx, eax
mov     [esp+38h+var_38], edx
mov     eax, [ebp+0C8h]
mov     edx, [eax]
sar     edx, 10h
mov     eax, [ebp+14h]
sar     eax, 10h
sub     edx, eax
mov     [esp+38h+var_34], edx
mov     eax, [ebp+0C8h]
mov     edx, [eax+2]
sar     edx, 10h
mov     eax, [ebp+16h]
sar     eax, 10h
sub     edx, eax
mov     [esp+38h+var_30], edx
mov     eax, [esp+38h+var_38]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4D785C
mov     eax, [esp+38h+var_34]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4D785C
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
jbe     short loc_4D786A

loc_4D785C:
sar     [esp+38h+var_38], 2
sar     [esp+38h+var_34], 2
sar     [esp+38h+var_30], 2

loc_4D786A:
lea     edx, [esp+38h+var_20]
mov     eax, esp
call    sub_4EF932
lea     edx, [ebp+0DCh]
mov     ecx, 0FF069DAh
mov     ebx, 165h
lea     eax, [esp+38h+var_20]
lea     esi, [esp+38h+var_28]
call    sub_4DFFB5
lea     edi, [ebp+0DCh]
lea     esi, [esp+38h+var_28]
movsd
movsd
mov     eax, [ebp+6Ch]
sar     eax, 10h
mov     edx, [esp+0Eh]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ebp+44h], dx
mov     edx, [esp+38h+var_28]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ebp+46h], dx
mov     edx, [esp+38h+var_28+2]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ebp+48h], ax
mov     edx, [ebp+6Ch]
sar     edx, 10h
mov     eax, ds:dword_539898
sar     eax, 10h
add     eax, edx
mov     edx, ds:dword_539898+2
sar     edx, 10h
cmp     eax, edx
jl      short loc_4D78FA
mov     ax, ds:word_53989C

loc_4D78FA:
mov     [ebp+6Eh], ax

loc_4D78FE:
mov     eax, [ebp+42h]
sar     eax, 10h
shl     eax, 8
add     [ebp+1Ch], eax
mov     eax, [ebp+44h]
sar     eax, 10h
shl     eax, 8
add     [ebp+20h], eax
mov     eax, [ebp+46h]
sar     eax, 10h
shl     eax, 8
add     [ebp+24h], eax
lea     eax, [ebp+88h]
mov     edx, [ebp+1Ch]
sar     edx, 10h
mov     [ebp+14h], dx
mov     [eax+34h], dx
mov     edx, [ebp+20h]
sar     edx, 10h
mov     [ebp+16h], dx
mov     [eax+36h], dx
mov     edx, [ebp+24h]
sar     edx, 10h
mov     [ebp+18h], dx
mov     [eax+38h], dx
jmp     short loc_4D7968

loc_4D7954:
cmp     bh, 3Ch ; '<'
jb      short loc_4D78FE
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0

loc_4D7968:
inc     byte ptr [ebp+0Bh]
mov     eax, ebp
call    sub_4D7B31
mov     eax, ebp
call    sub_4D7A93
add     esp, 20h
jmp     loc_4D7CB2
sub_4D7770 endp




sub_4D7981 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
mov     al, [eax+9]
test    al, al
ja      loc_4D7A58
mov     byte ptr [ecx+0Ah], 10h
inc     byte ptr [ecx+9]
mov     eax, [ecx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFE1h
jle     loc_4D7A69
lea     edx, [ecx+14h]
mov     eax, 1F6h
call    sub_4D8BC3
mov     eax, [ecx+12h]
sar     eax, 10h
mov     edx, ds:dword_5F8376
sar     edx, 10h
sub     edx, eax
mov     eax, edx
mov     edx, [ecx+16h]
sar     edx, 10h
mov     ebx, ds:dword_5F837A
sar     ebx, 10h
sub     ebx, edx
mov     edx, ebx
call    sub_4EF04B
mov     ebp, eax
cmp     byte ptr ds:dword_77E7DC+3, 1
jle     short loc_4D79F9
mov     [esp+1Ch+var_1C], 5
jmp     short loc_4D7A00

loc_4D79F9:
mov     [esp+1Ch+var_1C], 3

loc_4D7A00:
xor     ebx, ebx

loc_4D7A02:
cmp     ebx, [esp+1Ch+var_1C]
jge     short loc_4D7A69
call    sub_4DE043
mov     esi, eax
test    eax, eax
jz      short loc_4D7A55
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 32h ; '2'
mov     byte ptr [eax+3], 3
mov     eax, ds:(off_5398C6+2)[ebx*2]
sar     eax, 10h
add     eax, ebp
call    sub_4EF008
mov     [esi+44h], ax
mov     word ptr [esi+46h], 0
mov     eax, ds:(off_5398C6+2)[ebx*2]
sar     eax, 10h
add     eax, ebp
call    sub_4EF003
mov     [esi+48h], ax
lea     edi, [esi+14h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4D7A55:
inc     ebx
jmp     short loc_4D7A02

loc_4D7A58:
mov     dh, [ecx+0Ah]
dec     dh
mov     [ecx+0Ah], dh
jnz     short loc_4D7A69
mov     eax, ecx
call    sub_4DE371

loc_4D7A69:
xor     eax, eax
mov     al, [ecx+0Ah]
shl     eax, 3
mov     ebx, eax
or      ebx, 2000000h
mov     edx, eax
shl     edx, 8
or      edx, ebx
shl     eax, 10h
or      edx, eax
mov     [ecx+0C4h], edx
add     esp, 4
jmp     loc_4D7CB2
sub_4D7981 endp




sub_4D7A93 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+14h]
lea     edx, [eax+0D4h]
cmp     byte ptr ds:dword_77E7DC+3, 1
jle     short loc_4D7ABA
push    80h
push    0
push    40A0060h
jmp     short loc_4D7AC6

loc_4D7ABA:
push    80h
push    0
push    40A0040h

loc_4D7AC6:
push    edx
xor     edx, edx
mov     dl, [esi+1]
push    edx
mov     edx, [esi+0C0h]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, eax
mov     ecx, 0A000h
xor     ebx, ebx
mov     eax, edi
call    sub_4E01FC
mov     dword ptr [esi+0D4h], 0
jmp     loc_4D7CB3
sub_4D7A93 endp




sub_4D7AFE proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4D7B2E
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     bx, [edx+14h]
mov     [eax+48h], bx
mov     bx, [edx+16h]
mov     [eax+4Ah], bx
mov     dx, [edx+18h]
mov     [eax+4Ch], dx

loc_4D7B2E:
pop     edx
pop     ebx
retn
sub_4D7AFE endp




sub_4D7B31 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 18h
mov     ecx, eax
mov     eax, [eax+42h]
sar     eax, 10h
mov     edx, [ecx+46h]
sar     edx, 10h
xor     ebx, ebx
mov     bl, [ecx+0Bh]
shl     ebx, 7
mov     [esp+24h+var_14], bx
call    sub_4EF04B
add     ah, 8
mov     [esp+24h+var_12], ax
xor     edx, edx
mov     [esp+24h+var_10], dx
lea     ebx, [ecx+8Ch]
mov     edx, ebx
lea     eax, [esp+24h+var_14]
call    sub_4EF638
mov     eax, [ecx+0C0h]
sar     eax, 10h
mov     [esp+24h+var_1C], eax
mov     [esp+24h+var_20], eax
mov     [esp+24h+var_24], eax
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
add     esp, 18h
pop     edx
pop     ecx
pop     ebx
retn
sub_4D7B31 endp




sub_4D7B9B proc near
push    ebx
push    ecx
push    edx
sub     byte ptr [eax+0Bh], 20h ; ' '
xor     edx, edx
mov     dl, [eax+0Bh]
test    edx, edx
jg      short loc_4D7BB4
call    sub_4DE371
pop     edx
pop     ecx
pop     ebx
retn

loc_4D7BB4:
mov     ebx, edx
shl     ebx, 10h
or      ebx, 2000000h
mov     ecx, edx
shl     ecx, 8
or      ecx, ebx
or      ecx, edx
mov     [eax+0C4h], ecx
pop     edx
pop     ecx
pop     ebx

locret_4D7BD1:
retn
sub_4D7B9B endp




sub_4D7BD2 proc near
add     byte ptr [eax+0Bh], 8
add     byte ptr [eax+0Ah], 8
cmp     byte ptr [eax+0Bh], 0F0h
jb      short locret_4D7BD1
jmp     sub_4DE371
sub_4D7BD2 endp




sub_4D7BE5 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     esi, eax
xor     ebx, ebx
mov     bl, [eax+0Ah]
xor     ecx, ecx
mov     cl, [eax+0Bh]
test    ecx, ecx
jz      loc_4D7CAA
mov     ebp, [eax+2Ah]
sar     ebp, 10h
mov     edi, ecx
sub     edi, ebx
imul    ebp, edi
mov     edx, [eax+12h]
sar     edx, 10h
imul    edx, ebx
add     edx, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     ebp, eax
mov     edx, [esi+2Ch]
sar     edx, 10h
imul    edx, edi
mov     [esp+24h+var_1C], edx
mov     edx, [esi+14h]
sar     edx, 10h
imul    edx, ebx
mov     eax, [esp+24h+var_1C]
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     [esp+24h+var_24], eax
mov     edx, [esi+2Eh]
sar     edx, 10h
imul    edx, edi
mov     [esp+24h+var_1C], edx
mov     edx, [esi+16h]
sar     edx, 10h
imul    edx, ebx
mov     eax, [esp+24h+var_1C]
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     [esp+24h+var_20], eax
mov     edx, [esi+30h]
sar     edx, 10h
imul    edi, edx
mov     edx, [esi+18h]
sar     edx, 10h
imul    edx, ebx
add     edx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     ecx, eax
mov     ebx, [esp+24h+var_20]
mov     edx, [esp+24h+var_24]
mov     eax, ebp
call    sub_4E1E4D
mov     ah, [esi+0Ah]
inc     ah
mov     [esi+0Ah], ah
cmp     ah, [esi+0Bh]
jbe     short loc_4D7CAF
mov     eax, esi

loc_4D7CAA:
call    sub_4DE371

loc_4D7CAF:
add     esp, 0Ch

loc_4D7CB2:
pop     ebp

loc_4D7CB3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D7BE5 endp




sub_4D7CB9 proc near
push    ecx
push    edx
lea     edx, [eax+0CCh]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4D7CC6[ecx*4]
mov     dword ptr [edx+14h], 0
pop     edx
pop     ecx
retn
sub_4D7CB9 endp




sub_4D7CD7 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+0CCh]
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     [ecx+34h], eax
mov     dword ptr [edx+54h], 0
mov     dword ptr [edx+58h], 0
mov     dword ptr [edx+64h], 0
or      byte ptr [edx], 26h
mov     eax, [ecx+34h]
mov     eax, [eax+88h]
mov     [edx+88h], eax
movsx   ax, byte ptr [edx+0Dh]
mov     [edx+0C2h], ax
mov     word ptr [ecx], 50h ; 'P'
mov     dword ptr [ecx+4], 0
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx+14h], 0
mov     dword ptr [ecx+38h], 1000h
mov     dword ptr [ecx+3Ch], 1000h
mov     dword ptr [ecx+40h], 1000h
mov     word ptr [edx+6Eh], 400h
mov     dword ptr [edx+78h], offset unk_5398F8
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     dword ptr [edx+0C4h], offset unk_808080
mov     eax, edx
call    sub_4D7D7A
pop     edx
pop     ecx
retn
sub_4D7CD7 endp




sub_4D7D7A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ebx, [eax+0CCh]
lea     edi, [edx+2Ch]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [edx+34h]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [edx+5Ch]
lea     esi, [edx+54h]
movsd
movsd
call    rand_
mov     [ebx+2], ax
mov     ah, [ebx]
test    ah, 40h
jz      loc_4D7EBE
test    ah, 10h
jz      loc_4D7E7C
mov     eax, [edx+0Ah]
sar     eax, 18h
mov     esi, [ebx+34h]
lea     edi, [edx+14h]
lea     esi, [esi+eax*8+190h]
movsd
movsd
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+1Ch], eax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
mov     eax, [ebx+34h]
test    byte ptr [eax], 2
jnz     short loc_4D7E07
and     byte ptr [edx], 0FDh
jmp     loc_4D7EBE

loc_4D7E07:
or      byte ptr [edx], 2
mov     eax, [ebx+34h]
mov     cx, [eax+196h]
xor     ch, ch
and     cl, 1Fh
mov     esi, ecx
and     esi, 0FFFFh
shl     esi, 3
mov     cx, [eax+196h]
and     ecx, 3E0h
and     ecx, 0FFFFh
sar     ecx, 5
shl     ecx, 0Bh
or      ecx, esi
mov     si, [eax+196h]
and     esi, 7C00h
and     esi, 0FFFFh
sar     esi, 0Ah
shl     esi, 13h
or      ecx, esi
test    byte ptr [eax+0Fh], 2
jz      short loc_4D7E74
mov     eax, [eax+194h]
sar     eax, 10h
test    ah, 80h
jz      short loc_4D7E74
or      ecx, 2E000000h

loc_4D7E74:
mov     [edx+0C4h], ecx
jmp     short loc_4D7EBE

loc_4D7E7C:
mov     eax, [edx+0Ah]
sar     eax, 18h
mov     ecx, [ebx+34h]
mov     ax, [ecx+eax*8+190h]
mov     [edx+14h], ax
mov     eax, [edx+0Ah]
sar     eax, 18h
mov     ecx, [ebx+34h]
mov     ax, [ecx+eax*8+194h]
mov     [edx+18h], ax
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+1Ch], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax

loc_4D7EBE:
mov     eax, [ebx+34h]
test    byte ptr [eax+0Fh], 4
jz      short loc_4D7F01
mov     byte ptr [edx+9], 1
mov     word ptr [edx+0Ah], 0
and     byte ptr [ebx], 0EFh
sub     word ptr [edx+16h], 400h
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, [ebx+34h]
mov     eax, [eax+1C0h]
sar     eax, 10h
sub     eax, 400h
test    eax, eax
jge     short loc_4D7EFD
neg     eax

loc_4D7EFD:
mov     [ebx+48h], ax

loc_4D7F01:
mov     eax, [ebx+34h]
test    byte ptr [eax+0Fh], 40h
jz      short loc_4D7F17
mov     byte ptr [edx+9], 2
mov     word ptr [edx+0Ah], 0
and     byte ptr [ebx], 0EFh

loc_4D7F17:
mov     eax, [ebx+34h]
test    byte ptr [eax+0Eh], 2
jz      short loc_4D7F33
cmp     byte ptr [edx+0Dh], 7
jge     short loc_4D7F33
mov     byte ptr [edx+9], 3
mov     word ptr [edx+0Ah], 0
and     byte ptr [ebx], 0AFh

loc_4D7F33:
mov     eax, [ebx+34h]
test    byte ptr [eax+0Eh], 1
jz      short loc_4D7F4F
cmp     byte ptr [edx+0Dh], 7
jle     short loc_4D7F4F
mov     byte ptr [edx+9], 3
mov     word ptr [edx+0Ah], 0
and     byte ptr [ebx], 0AFh

loc_4D7F4F:
xor     ecx, ecx
mov     cl, [edx+9]
mov     eax, edx
call    ds:funcs_4D7F56[ecx*4]
test    byte ptr [ebx], 40h
jz      short loc_4D7F89
mov     ecx, [edx+0Ah]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 4
mov     esi, [ebx+34h]
mov     ecx, 0Ch
lea     edi, [edx+8Ch]
lea     esi, [esi+eax+250h]
rep movsd

loc_4D7F89:
lea     edi, [edx+0BCh]
lea     esi, [edx+14h]
movsd
movsd
movsx   ax, byte ptr [edx+0Dh]
mov     [edx+0C2h], ax
test    byte ptr [ebx], 1
jz      short loc_4D7FB2
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
and     byte ptr [ebx], 0FEh

loc_4D7FB2:
mov     si, [ebx+0Ah]
test    si, si
jz      loc_4D8238
mov     edi, esi
dec     edi
mov     [ebx+0Ah], di
jmp     loc_4D8238
sub_4D7D7A endp



; Attributes: thunk

sub_4D7FCB proc near
jmp     sub_4DE371
sub_4D7FCB endp

db 90h
jpt_4D8003 dd offset loc_4D800A ; jump table for switch statement
dd offset loc_4D8045
dd offset loc_4D818B
dd offset loc_4D81E3



sub_4D7FE1 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
add     eax, 0CCh
mov     [esp+20h+var_20], eax
mov     al, [ebp+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_4D8003      ; jumptable 004D8003 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4D8003[edx*4] ; switch jump

loc_4D800A:             ; jumptable 004D8003 case 0
mov     eax, [esp+20h+var_20]
mov     eax, [eax+34h]
test    byte ptr [eax+0Fh], 8
jnz     short loc_4D801F
and     byte ptr [ebp+0], 0FDh
jmp     def_4D8003      ; jumptable 004D8003 default case

loc_4D801F:
or      byte ptr [ebp+0], 2
mov     dword ptr [ebp+0C4h], 2E000000h
inc     byte ptr [ebp+0Ah]
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+4Eh], 8
mov     eax, [esp+20h+var_20]
mov     word ptr [eax+4], 0

loc_4D8045:             ; jumptable 004D8003 case 1
mov     ax, [ebp+46h]
mov     edx, [esp+20h+var_20]
sub     [edx+48h], ax
mov     edx, [ebp+0C4h]
cmp     edx, 2E808080h
jnb     short loc_4D806C
lea     ecx, [edx+80808h]
mov     [ebp+0C4h], ecx
jmp     short loc_4D8076

loc_4D806C:
mov     dword ptr [ebp+0C4h], offset unk_808080

loc_4D8076:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4D80CF
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Dh], 3
mov     byte ptr [eax+0Eh], 0
lea     edi, [edx+48h]
lea     esi, [ebp+14h]
movsd
movsd
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+48h], ax
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+4Ah], ax
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+4Ch], ax

loc_4D80CF:
mov     eax, [esp+20h+var_20]
inc     word ptr [eax+4]
cmp     word ptr [eax+48h], 0
jge     loc_4D816A
mov     edx, [eax+34h]
mov     ah, [edx+0Fh]
test    ah, 20h
jnz     short loc_4D8159
mov     bl, ah
or      bl, 20h
mov     [edx+0Fh], bl
lea     eax, [ebp+14h]
mov     [esp+20h+var_1C], eax
mov     ecx, eax
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B
mov     bh, [ebp+0Dh]
cmp     bh, 5
jnz     short loc_4D8159
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4D8159
mov     [eax], bh
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 6
mov     byte ptr [eax+0Fh], 2
mov     esi, [esp+20h+var_20]
mov     esi, [esi+34h]
lea     edi, [edx+48h]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, ebp
call    sub_42C592
mov     [edx+4Ah], ax
mov     edx, [esp+20h+var_1C]
mov     eax, 1E0h
call    sub_4D8BC3

loc_4D8159:
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+20h+var_20]
mov     word ptr [eax+4], 10h
jmp     def_4D8003      ; jumptable 004D8003 default case

loc_4D816A:
mov     ax, [ebp+46h]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax
jmp     def_4D8003      ; jumptable 004D8003 default case

loc_4D818B:             ; jumptable 004D8003 case 2
mov     eax, [esp+20h+var_20]
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     def_4D8003      ; jumptable 004D8003 default case
inc     byte ptr [ebp+0Ah]
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, [esp+20h+var_20]
mov     edx, [edx+34h]
mov     edx, [edx+eax*8+190h]
sar     edx, 10h
mov     eax, [ebp+14h]
sar     eax, 10h
sub     edx, eax
mov     esi, 3Ch ; '<'
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     [ebp+46h], ax
mov     eax, [esp+20h+var_20]
mov     word ptr [eax+4], 3Ch ; '<'
mov     edx, [eax+34h]
or      byte ptr [edx+0Fh], 10h
jmp     short def_4D8003 ; jumptable 004D8003 default case

loc_4D81E3:             ; jumptable 004D8003 case 3
mov     eax, [esp+20h+var_20]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4D8220
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, [esp+20h+var_20]
mov     edx, [edx+34h]
mov     ax, [edx+eax*8+192h]
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [esp+20h+var_20]
or      byte ptr [eax], 11h
jmp     short def_4D8003 ; jumptable 004D8003 default case

loc_4D8220:
mov     ax, [ebp+46h]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax

def_4D8003:             ; jumptable 004D8003 default case
add     esp, 8

loc_4D8237:
pop     ebp

loc_4D8238:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4D7FE1 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_114]



sub_4D823E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+0CCh]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4D825E
jbe     short loc_4D8297
cmp     al, 2
jz      loc_4D82D7
pop     edx
pop     ecx
pop     ebx
retn

loc_4D825E:
test    al, al
jnz     loc_4D8313
inc     al
mov     [ecx+0Ah], al
mov     eax, [ebx+34h]
mov     edx, [eax+14h]
sar     edx, 10h
call    sub_42C592
sub     edx, 20h ; ' '
sub     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [ecx+4Eh], ax
mov     word ptr [ebx+4], 8
jmp     short loc_4D829E

loc_4D8297:
cmp     word ptr [ebx+4], 0
jz      short loc_4D82BA

loc_4D829E:
mov     ax, [ecx+4Eh]
sub     [ecx+16h], ax

loc_4D82A6:
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
dec     word ptr [ebx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4D82BA:
mov     edx, [ebx+34h]
mov     edx, [edx+0Ch]
sar     edx, 18h
test    dl, 80h
jz      short loc_4D8313
inc     al
mov     [ecx+0Ah], al
mov     word ptr [ebx+4], 8
pop     edx
pop     ecx
pop     ebx
retn

loc_4D82D7:
cmp     word ptr [ebx+4], 0
jz      short loc_4D82E8
mov     ax, [ecx+4Eh]
add     [ecx+16h], ax
jmp     short loc_4D82A6

loc_4D82E8:
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     edx, [ebx+34h]
mov     ax, [edx+eax*8+192h]
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
or      byte ptr [ebx], 11h
mov     edx, [ebx+34h]
or      byte ptr [edx+0Fh], 10h

loc_4D8313:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D823E endp

db 8Bh, 0C0h
jpt_4D8350 dd offset loc_4D8357 ; jump table for switch statement
dd offset loc_4D83A3
dd offset loc_4D83F5
dd offset loc_4D845C
dd offset loc_4D84A5



sub_4D832D proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 0CCh
mov     [esp+1Ch+var_1C], eax
mov     dl, [ebp+0Ah]
cmp     dl, 4           ; switch 5 cases
ja      def_4D8350      ; jumptable 004D8350 default case
xor     eax, eax
mov     al, dl
jmp     jpt_4D8350[eax*4] ; switch jump

loc_4D8357:             ; jumptable 004D8350 case 0
inc     dl
mov     [ebp+0Ah], dl
mov     dword ptr [ebp+0C4h], offset unk_808080
mov     word ptr [ebp+4Ch], 60h ; '`'
mov     ecx, [ebp+4Ah]
sar     ecx, 10h
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+34h]
add     eax, 14h
mov     edx, (offset dword_5F8376+2)
call    sub_4DD69F
mov     edx, eax
add     ecx, 10h
sar     edx, 1Fh
idiv    ecx
mov     edx, [esp+1Ch+var_1C]
mov     [edx+4], ax
lea     edx, [ebp+14h]
mov     eax, 1DAh
call    sub_4D8BC3

loc_4D83A3:             ; jumptable 004D8350 case 1
push    0
push    0
mov     ecx, [ebp+4Ah]
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [esp+24h+var_1C]
mov     ebx, [ebx+34h]
mov     ebx, [ebx+54h]
sar     ebx, 10h
lea     edx, [ebp+1Ch]
lea     eax, [ebp+14h]
call    sub_4DD4C5
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_4D8350      ; jumptable 004D8350 default case
inc     byte ptr [ebp+0Ah]
mov     word ptr [eax+4], 4
mov     dword ptr [ebp+0C4h], 2E505050h
jmp     def_4D8350      ; jumptable 004D8350 default case

loc_4D83F5:             ; jumptable 004D8350 case 2
push    0
push    0
mov     ecx, [ebp+4Ah]
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [esp+24h+var_1C]
mov     ebx, [ebx+34h]
mov     ebx, [ebx+54h]
sar     ebx, 10h
lea     edx, [ebp+1Ch]
lea     esi, [ebp+14h]
mov     eax, esi
call    sub_4DD4C5
sub     dword ptr [ebp+0C4h], 101010h
mov     eax, [esp+1Ch+var_1C]
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     def_4D8350      ; jumptable 004D8350 default case
inc     byte ptr [ebp+0Ah]
and     byte ptr [ebp+0], 0FDh
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+34h]
inc     byte ptr [edx+0Ch]
mov     edx, esi
mov     eax, 1DBh
call    sub_4D8BC3
jmp     def_4D8350      ; jumptable 004D8350 default case

loc_4D845C:             ; jumptable 004D8350 case 3
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+34h]
test    byte ptr [eax+0Eh], 4
jz      def_4D8350      ; jumptable 004D8350 default case
or      byte ptr [ebp+0], 2
inc     byte ptr [ebp+0Ah]
mov     esi, [ebp+0Ah]
sar     esi, 18h
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+34h]
lea     edi, [ebp+14h]
lea     esi, [eax+esi*8+190h]
movsd
movsd
shl     dword ptr [ebp+1Ch], 10h
shl     dword ptr [ebp+20h], 10h
shl     dword ptr [ebp+24h], 10h
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 4
or      byte ptr [eax], 40h
jmp     short def_4D8350 ; jumptable 004D8350 default case

loc_4D84A5:             ; jumptable 004D8350 case 4
add     dword ptr [ebp+0C4h], 101010h
mov     esi, [ebp+0Ah]
sar     esi, 18h
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+34h]
lea     edi, [ebp+14h]
lea     esi, [eax+esi*8+190h]
movsd
movsd
shl     dword ptr [ebp+1Ch], 10h
shl     dword ptr [ebp+20h], 10h
shl     dword ptr [ebp+24h], 10h
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short def_4D8350 ; jumptable 004D8350 default case
mov     dword ptr [ebp+0C4h], offset unk_808080
mov     edx, [eax+34h]
or      byte ptr [edx+0Fh], 10h
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 11h

def_4D8350:             ; jumptable 004D8350 default case
add     esp, 4
jmp     loc_4D8237
sub_4D832D endp




sub_4D8503 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_4D8544
or      byte ptr [ecx], 6
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     byte ptr [ecx+2], 31h ; '1'
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 35h ; '5'
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+78h], 0
inc     byte ptr [ecx+8]

loc_4D8544:
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, offset unk_539904
mov     eax, ebx
call    sub_4EF689
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D8503 endp




sub_4D8595 proc near
push    ecx
mov     eax, 6
call    sub_47E888
test    eax, eax
jz      short loc_4D85B9
mov     eax, 2Ch ; ','
call    sub_47E888
test    eax, eax
jnz     short loc_4D85B9
mov     ecx, 80000002h
jmp     short loc_4D85BE

loc_4D85B9:
mov     ecx, 80000007h

loc_4D85BE:
xor     eax, eax

loc_4D85C0:
mov     ds:dword_539F94[eax*4], ecx
inc     eax
cmp     eax, 6
jl      short loc_4D85C0
pop     ecx
retn
sub_4D8595 endp




sub_4D85CF proc near
mov     eax, 204h
call    sub_47E888
test    eax, eax
jz      short loc_4D85F6
mov     eax, 206h
call    sub_47E888
test    eax, eax
jnz     short loc_4D85F6

loc_4D85EB:
mov     ds:dword_539FAC, 80000039h
retn

loc_4D85F6:
mov     eax, 212h
call    sub_47E888
test    eax, eax
jz      short loc_4D8612
mov     eax, 213h
call    sub_47E888
test    eax, eax
jz      short loc_4D85EB

loc_4D8612:
mov     ds:dword_539FAC, 80000007h
retn
sub_4D85CF endp




sub_4D861D proc near
cmp     byte ptr ds:dword_77E7D5+2, 1
jnz     short loc_4D8631
mov     ds:dword_53A038, 80000029h
retn

loc_4D8631:
mov     ds:dword_53A038, 108h
retn
sub_4D861D endp




sub_4D863C proc near
mov     al, byte ptr ds:dword_77E7D5+2
cmp     al, 2
jb      short loc_4D864D
jbe     short loc_4D8651
cmp     al, 3
jz      short loc_4D8651
jmp     short loc_4D866A

loc_4D864D:
cmp     al, 1
jnz     short loc_4D866A

loc_4D8651:
mov     eax, 30h ; '0'
call    sub_47E888
test    eax, eax
jnz     short loc_4D866A
mov     ds:dword_53A03C, 80000016h
retn

loc_4D866A:
mov     ds:dword_53A03C, 108h
retn
sub_4D863C endp




sub_4D8675 proc near
push    ecx
mov     ecx, 108h
cmp     byte ptr ds:dword_77E7D5+2, 1
jnz     short loc_4D8689
mov     ecx, 80000017h

loc_4D8689:
xor     eax, eax

loc_4D868B:
mov     ds:dword_53A084[eax*4], ecx
inc     eax
cmp     eax, 6
jl      short loc_4D868B
pop     ecx
retn
sub_4D8675 endp




sub_4D869A proc near
push    ecx
mov     ecx, 108h
cmp     byte ptr ds:dword_77E7D5+2, 1
jnz     short loc_4D86AE
mov     ecx, 80000017h

loc_4D86AE:
xor     eax, eax

loc_4D86B0:
mov     ds:dword_53A09C[eax*4], ecx
inc     eax
cmp     eax, 5
jl      short loc_4D86B0
pop     ecx
retn
sub_4D869A endp




sub_4D86BF proc near
mov     eax, 1E1h
call    sub_47E888
test    eax, eax
jz      short loc_4D86D8
mov     ds:dword_53A0F0, 80000025h
retn

loc_4D86D8:
mov     ds:dword_53A0F0, 80000030h
retn
sub_4D86BF endp




sub_4D86E3 proc near
push    ebx
push    edx
mov     eax, 35h ; '5'
call    sub_47E888
test    eax, eax
jz      short loc_4D8707
mov     ebx, 8000002Dh
mov     ds:dword_53A124, ebx
mov     ds:dword_53A128, ebx
pop     edx
pop     ebx
retn

loc_4D8707:
mov     edx, 0FFFFFFFFh
mov     ds:dword_53A124, edx
mov     ds:dword_53A128, edx
pop     edx
pop     ebx
retn
sub_4D86E3 endp




sub_4D871B proc near
mov     eax, 1E1h
call    sub_47E888
test    eax, eax
jz      short loc_4D8734
mov     ds:dword_539F88, 80000025h
retn

loc_4D8734:
mov     ds:dword_539F88, 80000030h
retn
sub_4D871B endp




sub_4D873F proc near
push    ebx
push    ecx
push    edx
test    eax, eax
jnz     short loc_4D8751
mov     ebx, ds:dword_77E7D0+2
sar     ebx, 18h
jmp     short loc_4D8759

loc_4D8751:
xor     ebx, ebx
mov     bl, ds:byte_77EA5F

loc_4D8759:
movsx   edx, bl
mov     ecx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     eax, edx
cmp     edx, 1
jb      short loc_4D877A
jbe     short loc_4D879E
cmp     edx, 2
jz      short loc_4D87C6
pop     edx
pop     ecx
pop     ebx
retn

loc_4D877A:
test    edx, edx
jnz     loc_4D87EA
mov     eax, 616h
call    sub_47E888
test    eax, eax
jz      short loc_4D8797
mov     edx, 0FFFFFFFFh
jmp     short loc_4D87E0

loc_4D8797:
mov     edx, 8000003Ah
jmp     short loc_4D87E0

loc_4D879E:
mov     eax, 617h
call    sub_47E888
test    eax, eax
jz      short loc_4D87B3
mov     eax, 0FFFFFFFFh
jmp     short loc_4D87B8

loc_4D87B3:
mov     eax, 8000003Bh

loc_4D87B8:
movsx   edx, bl
mov     ds:dword_53A168[edx*4], eax
pop     edx
pop     ecx
pop     ebx
retn

loc_4D87C6:
mov     eax, 68h ; 'h'
call    sub_47E888
test    eax, eax
jz      short loc_4D87DB
mov     edx, 0FFFFFFFFh
jmp     short loc_4D87E0

loc_4D87DB:
mov     edx, 8000003Ch

loc_4D87E0:
movsx   eax, bl
mov     ds:dword_53A168[eax*4], edx

loc_4D87EA:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D873F endp




sub_4D87EE proc near
push    ebx
push    ecx
push    edx
mov     ecx, offset dword_77EA48
mov     edx, offset dword_77E784
xor     eax, eax
mov     al, ds:byte_77EA5E
shl     eax, 2
cmp     ds:dword_53A200[eax], 0
jz      short loc_4D881B
mov     ebx, eax
mov     eax, 1
call    ds:dword_53A200[ebx]

loc_4D881B:
xor     ebx, ebx
xor     eax, eax
mov     al, [ecx+16h]
mov     eax, ds:off_53A180[eax*4]
test    eax, eax
jz      short loc_4D8860
mov     cl, [ecx+17h]
and     ecx, 0FFh
mov     ecx, [eax+ecx*4]
cmp     ecx, 0FFFFFFFFh
jz      short loc_4D8860
mov     eax, [edx+4Dh]
sar     eax, 18h
mov     eax, ds:off_53A180[eax*4]
test    eax, eax
jz      short loc_4D885C
mov     edx, [edx+4Eh]
sar     edx, 18h
mov     eax, [eax+edx*4]
cmp     eax, ecx
jnz     short loc_4D8860

loc_4D885C:
test    ebx, ebx
jz      short loc_4D8871

loc_4D8860:
mov     eax, 10h
call    sub_4D9040
or      ds:byte_77E6BD, 8

loc_4D8871:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D87EE endp




sub_4D8875 proc near
push    ebx
push    ecx
push    edx
mov     edx, offset dword_77E784
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
shl     eax, 2
cmp     ds:dword_53A200[eax], 0
jz      short loc_4D889B
mov     ecx, eax
xor     eax, eax
call    ds:dword_53A200[ecx]

loc_4D889B:
xor     eax, eax
xor     ebx, ebx
mov     ecx, [edx+4Dh]
sar     ecx, 18h
mov     ecx, ds:off_53A180[ecx*4]
test    ecx, ecx
jz      short loc_4D88BE
mov     eax, [edx+4Eh]
sar     eax, 18h
mov     eax, [ecx+eax*4]
cmp     eax, 0FFFFFFFFh
jnz     short loc_4D88C2

loc_4D88BE:
test    ebx, ebx
jz      short loc_4D88CD

loc_4D88C2:
xor     ebx, ebx
xor     edx, edx
call    sub_4D89E4
jmp     short loc_4D88D2

loc_4D88CD:
call    sub_4D8E21

loc_4D88D2:
and     ds:byte_77E6BD, 0F7h
pop     edx
pop     ecx
pop     ebx
retn
sub_4D8875 endp




sub_4D88DD proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
xor     eax, eax
test    cl, 3
jz      short loc_4D892C
mov     eax, 1
test    cl, 1
jz      short loc_4D890F
xor     ecx, ecx
mov     cl, ds:byte_77EAB9
mov     si, [edx]
sub     esi, ecx
mov     [edx], si
test    si, si
jg      short loc_4D892C
mov     word ptr [edx], 0
jmp     short loc_4D892A

loc_4D890F:
xor     ecx, ecx
mov     cl, ds:byte_77EAB9
mov     bx, [edx]
add     ebx, ecx
mov     [edx], bx
cmp     bx, 7Fh
jl      short loc_4D892C
mov     word ptr [edx], 7Fh

loc_4D892A:
xor     eax, eax

loc_4D892C:
pop     esi
pop     ecx
pop     ebx
retn
sub_4D88DD endp




sub_4D8930 proc near
push    ebx
push    ecx
push    edx
xor     edx, edx
mov     ds:dword_55D5D0, edx
mov     word ptr ds:dword_77EA7C+2, 64h ; 'd'
mov     ds:word_77EA80, 7Fh
mov     ds:byte_77EAB9, 4
mov     ebx, 10h
xor     edx, edx
mov     eax, offset dword_55D430
call    memset_
mov     ebx, 10h
xor     edx, edx
mov     eax, offset dword_55D5C0
call    memset_
mov     ebx, 180h
xor     edx, edx
mov     eax, offset dword_55D440
call    memset_
xor     edx, edx
mov     ecx, 0FFh

loc_4D898E:
mov     eax, edx
shl     eax, 8
add     eax, edx
mov     ds:dword_562204[eax*8], ecx
xor     ebx, ebx
mov     ds:dword_562208[eax*8], ebx
inc     edx
cmp     edx, 5
jl      short loc_4D898E
pop     edx
pop     ecx
pop     ebx
retn
sub_4D8930 endp




sub_4D89AF proc near
push    edx
mov     edx, 1
mov     eax, offset dword_55D430
call    sub_4FA755
mov     edx, 1
mov     eax, offset dword_55D5C0
call    sub_4FA755
xor     edx, edx

loc_4D89D0:
mov     eax, edx
call    sub_4D8F2F
inc     edx
cmp     edx, 5
jl      short loc_4D89D0
call    sub_4FA0F0
pop     edx
retn
sub_4D89AF endp




sub_4D89E4 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     edi, eax
mov     ebp, edx
test    eax, 80000000h
jz      short loc_4D8A4B
cmp     ds:dword_55D5D0, 0
jz      short loc_4D8A0E
mov     edx, 1
mov     eax, offset dword_55D430
call    sub_4FA755

loc_4D8A0E:
mov     ds:dword_55D5D0, edi
mov     eax, edi
and     eax, 0FFFFh
call    sub_42C211
test    byte ptr ds:dword_55D5D0+2, 1
jz      short loc_4D8A30
mov     ds:dword_55D430, eax
jmp     short loc_4D8A35

loc_4D8A30:
mov     ds:dword_55D434, eax

loc_4D8A35:
xor     edx, edx
mov     eax, offset dword_55D430
call    sub_4FA12B
mov     eax, offset dword_55D430
jmp     loc_4D8BB6

loc_4D8A4B:
xor     edx, edx
lea     edi, [eax-80h]
jmp     short loc_4D8A5C

loc_4D8A52:
inc     edx
cmp     edx, 5
jge     loc_4D8BBB

loc_4D8A5C:
mov     ecx, edi
shl     ecx, 2
movzx   esi, ds:byte_539914[ecx]
mov     eax, edx
shl     eax, 8
add     eax, edx
cmp     esi, ds:dword_562204[eax*8]
jnz     short loc_4D8A52
mov     cl, ds:byte_539917[ecx]
and     ecx, 0FFh
shl     ecx, 4
mov     esi, ds:dword_55D440[ecx]
test    esi, esi
jz      short loc_4D8AA0
mov     ecx, esi
cmp     dword ptr [esi+4], 0
jz      short loc_4D8AA0
mov     eax, esi
call    sub_4FA36B

loc_4D8AA0:
xor     ecx, ecx
mov     cl, ds:byte_539915[edi*4]
shl     ecx, 4
mov     eax, edx
shl     eax, 8
add     eax, edx
shl     eax, 3
add     eax, offset dword_562204
add     eax, 8
add     ecx, eax
cmp     dword ptr [ecx], 0
jz      short loc_4D8ACB
cmp     dword ptr [ecx+8], 0
jz      short loc_4D8AD7

loc_4D8ACB:
cmp     dword ptr [ecx+4], 0
jz      short loc_4D8AE0
cmp     dword ptr [ecx+0Ch], 0
jnz     short loc_4D8AE0

loc_4D8AD7:
xor     edx, edx
mov     eax, ecx
call    sub_4FA12B

loc_4D8AE0:
xor     eax, eax
mov     al, ds:byte_539917[edi*4]
shl     eax, 4
mov     ds:dword_55D440[eax], ecx
xor     edx, edx
mov     word ptr ds:dword_55D444[eax], dx
cmp     byte ptr ds:dword_77E7DC, 0
jz      short loc_4D8B0F
xor     edx, edx
mov     [esp+1Ch+var_18], edx
jmp     loc_4D8B9D

loc_4D8B0F:
test    ebp, ebp
jle     short loc_4D8B55
mov     eax, 80h
sub     eax, ebp
mov     [esp+1Ch+var_14], eax
fild    [esp+1Ch+var_14]
fmul    ds:dbl_50A424
fmul    ds:dbl_50A42C
call    __CHP
fistp   [esp+1Ch+var_1C]
mov     eax, [esp+1Ch+var_1C]
mov     [esp+1Ch+var_14], eax
fild    [esp+1Ch+var_14]
fdiv    ds:dbl_50A42C
fmul    ds:dbl_50A43C
fadd    ds:dbl_50A434
jmp     short loc_4D8B94

loc_4D8B55:
add     ebp, 80h
mov     [esp+1Ch+var_14], ebp
fild    [esp+1Ch+var_14]
fmul    ds:dbl_50A424
fmul    ds:dbl_50A42C
call    __CHP
fistp   [esp+1Ch+var_1C]
mov     eax, [esp+1Ch+var_1C]
mov     [esp+1Ch+var_14], eax
fild    [esp+1Ch+var_14]
fdiv    ds:dbl_50A42C
fmul    ds:dbl_50A434
fadd    ds:dbl_50A43C

loc_4D8B94:
call    __CHP
fistp   [esp+1Ch+var_18]

loc_4D8B9D:
mov     edx, [esp+1Ch+var_18]
mov     eax, ecx
call    sub_4FA49A
mov     edx, 7Fh
mov     eax, ecx
call    sub_4FA436
mov     eax, ecx

loc_4D8BB6:
call    sub_4FA2C9

loc_4D8BBB:
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4D89E4 endp



; Attributes: bp-based frame fuzzy-sp

sub_4D8BC3 proc near

var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebp, esp
sub     esp, 14h
and     esp, 0FFFFFFF8h
mov     edi, eax
mov     [esp+14h+var_8], edx
xor     edx, edx
lea     edi, [eax-80h]
jmp     short loc_4D8BE7

loc_4D8BDD:
inc     edx
cmp     edx, 5
jge     loc_4D8E19

loc_4D8BE7:
mov     ecx, edi
shl     ecx, 2
movzx   esi, ds:byte_539914[ecx]
mov     eax, edx
shl     eax, 8
add     eax, edx
cmp     esi, ds:dword_562204[eax*8]
jnz     short loc_4D8BDD
xor     eax, eax
mov     al, ds:byte_539917[ecx]
shl     eax, 4
mov     esi, ds:dword_55D440[eax]
test    esi, esi
jz      short loc_4D8C1F
mov     eax, esi
call    sub_4FA36B

loc_4D8C1F:
mov     al, ds:byte_539915[edi*4]
mov     esi, eax
and     esi, 0FFh
shl     esi, 4
mov     eax, edx
shl     eax, 8
add     eax, edx
shl     eax, 3
add     eax, offset dword_562204
add     eax, 8
add     esi, eax
cmp     dword ptr [esi], 0
jz      short loc_4D8C50
cmp     dword ptr [esi+8], 0
jz      short loc_4D8C5C

loc_4D8C50:
cmp     dword ptr [esi+4], 0
jz      short loc_4D8C65
cmp     dword ptr [esi+0Ch], 0
jnz     short loc_4D8C65

loc_4D8C5C:
xor     edx, edx
mov     eax, esi
call    sub_4FA12B

loc_4D8C65:
xor     eax, eax
mov     al, ds:byte_539917[edi*4]
shl     eax, 4
mov     ds:dword_55D440[eax], esi
mov     word ptr ds:dword_55D444[eax], 1
mov     edx, [esp+14h+var_8]
movsx   edx, word ptr [edx]
mov     ds:dword_55D448[eax], edx
mov     edx, [esp+14h+var_8]
mov     edx, [edx+2]
sar     edx, 10h
mov     ds:dword_55D44C[eax], edx
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     edx, [esp+14h+var_8]
movsx   edx, word ptr [edx]
sub     eax, edx
mov     edx, eax
mov     eax, [esp+14h+var_8]
mov     eax, [eax+2]
sar     eax, 10h
mov     ecx, ds:dword_5F837A
sar     ecx, 10h
sub     ecx, eax
mov     eax, ecx
imul    edx, edx
imul    eax, ecx
add     eax, edx
call    sub_4EF075
mov     edi, eax
cmp     eax, 0BB8h
jl      short loc_4D8CEB
xor     edx, edx
mov     eax, esi
call    sub_4FA436
jmp     loc_4D8E19

loc_4D8CEB:
cmp     byte ptr ds:dword_77E7DC, 0
jz      short loc_4D8CFF
xor     eax, eax
mov     [esp+14h+var_C], eax
jmp     loc_4D8DD4

loc_4D8CFF:
mov     ecx, [esp+14h+var_8]
mov     ecx, [ecx+2]
sar     ecx, 10h
mov     ebx, [esp+14h+var_8]
movsx   ebx, word ptr [ebx]
mov     edx, ds:dword_5F837A
sar     edx, 10h
mov     eax, ds:dword_5F8376
sar     eax, 10h
call    sub_49D994
mov     edx, ds:dword_5F83B8
sar     edx, 10h
sub     edx, eax
and     edx, 0FFFh
mov     eax, edx
call    sub_4EF003
shl     eax, 7
sar     eax, 0Ch
test    eax, eax
jge     short loc_4D8D4B
imul    eax, -1

loc_4D8D4B:
cmp     edx, 800h
jge     short loc_4D8D90
mov     [esp+14h+var_4], eax
fild    [esp+14h+var_4]
fmul    ds:dbl_50A444
fmul    ds:dbl_50A44C
call    __CHP
fistp   [esp+14h+var_10]
mov     eax, [esp+14h+var_10]
mov     [esp+14h+var_4], eax
fild    [esp+14h+var_4]
fdiv    ds:dbl_50A44C
fmul    ds:dbl_50A45C
fadd    ds:dbl_50A454
jmp     short loc_4D8DCB

loc_4D8D90:
mov     [esp+14h+var_4], eax
fild    [esp+14h+var_4]
fmul    ds:dbl_50A444
fmul    ds:dbl_50A44C
call    __CHP
fistp   [esp+14h+var_10]
mov     eax, [esp+14h+var_10]
mov     [esp+14h+var_4], eax
fild    [esp+14h+var_4]
fdiv    ds:dbl_50A44C
fmul    ds:dbl_50A454
fadd    ds:dbl_50A45C

loc_4D8DCB:
call    __CHP
fistp   [esp+14h+var_C]

loc_4D8DD4:
mov     edx, [esp+14h+var_C]
mov     eax, esi
call    sub_4FA49A
mov     eax, 0BB8h
sub     eax, edi
mov     [esp+14h+var_4], eax
fild    [esp+14h+var_4]
fdiv    ds:dbl_50A464
fmul    ds:dbl_50A46C
fadd    ds:dbl_50A474
call    __CHP
fistp   [esp+14h+var_14]
mov     edx, [esp+14h+var_14]
mov     eax, esi
call    sub_4FA436
mov     eax, esi
call    sub_4FA2C9

loc_4D8E19:
mov     esp, ebp
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4D8BC3 endp




sub_4D8E21 proc near
mov     eax, offset dword_55D430
jmp     sub_4FA36B
sub_4D8E21 endp




sub_4D8E2B proc near
push    edx
shl     eax, 4
mov     edx, ds:dword_55D440[eax]
test    edx, edx
jz      short loc_4D8E40
mov     eax, edx
call    sub_4FA36B

loc_4D8E40:
pop     edx
retn
sub_4D8E2B endp




sub_4D8E42 proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     ecx, eax
mov     esi, eax
shr     esi, 10h
and     ecx, 0FFFFh
cmp     ds:dword_55D5C0, 0
jz      short loc_4D8E6E
mov     edx, 1
mov     eax, offset dword_55D5C0
call    sub_4FA755

loc_4D8E6E:
mov     ebx, esp
mov     edx, ecx
mov     eax, esi
call    sub_42C25D
mov     ds:dword_55D5C0, eax
mov     ecx, [esp+14h+var_14]
cmp     ecx, 0FFFFFFFFh
jnz     short loc_4D8E8A
xor     edx, edx
jmp     short loc_4D8E95

loc_4D8E8A:
mov     ds:dword_55D5CC, ecx
mov     edx, 1

loc_4D8E95:
mov     eax, offset dword_55D5C0
call    sub_4FA12B
mov     eax, offset dword_55D5C0
call    sub_4FA2C9
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D8E42 endp




sub_4D8EB1 proc near
push    edx
cmp     ds:dword_55D5C0, 0
jz      short loc_4D8ECA
mov     edx, 1
mov     eax, offset dword_55D5C0
call    sub_4FA755

loc_4D8ECA:
pop     edx
retn
sub_4D8EB1 endp




sub_4D8ECC proc near
mov     eax, offset dword_55D5C0
jmp     sub_4FA4D2
sub_4D8ECC endp




sub_4D8ED6 proc near
push    ecx
push    edx
xor     edx, edx
jmp     short loc_4D8EE2

loc_4D8EDC:
inc     edx
cmp     edx, 18h
jge     short loc_4D8EFA

loc_4D8EE2:
mov     eax, edx
shl     eax, 4
mov     ecx, ds:dword_55D440[eax]
test    ecx, ecx
jz      short loc_4D8EDC
mov     eax, ecx
call    sub_4FA36B
jmp     short loc_4D8EDC

loc_4D8EFA:
pop     edx
pop     ecx
retn
sub_4D8ED6 endp




sub_4D8EFD proc near
mov     eax, offset dword_55D430
jmp     sub_4FA4D2
sub_4D8EFD endp




sub_4D8F07 proc near
push    edx
or      ds:byte_77E6BD, 8
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
shl     eax, 2
cmp     ds:dword_53A200[eax], 0
jz      short loc_4D8F2D
mov     edx, eax
xor     eax, eax
call    ds:dword_53A200[edx]

loc_4D8F2D:
pop     edx
retn
sub_4D8F07 endp




sub_4D8F2F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
shl     eax, 8
add     eax, esi
cmp     ds:dword_562204[eax*8], 0FFh
jz      short loc_4D8F91
xor     ecx, ecx

loc_4D8F49:
mov     ebx, esi
shl     ebx, 8
add     ebx, esi
shl     ebx, 3
mov     eax, offset dword_562204
add     eax, ebx
mov     edx, ecx
shl     edx, 4
add     eax, 8
add     eax, edx
xor     edx, edx
call    sub_4FA755
inc     ecx
cmp     ecx, 80h
jl      short loc_4D8F49
mov     eax, ds:dword_562208[ebx]
call    _nfree_
xor     ecx, ecx
mov     ds:dword_562208[ebx], ecx
mov     ds:dword_562204[ebx], 0FFh

loc_4D8F91:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D8F2F endp




sub_4D8F96 proc near
push    ebx
push    ecx
push    edx
call    sub_4FA8A3
mov     ah, ds:byte_77EAB8
test    ah, 30h
jz      short loc_4D8FED
mov     al, ah
and     al, 30h
and     eax, 0FFh
sar     eax, 4
mov     edx, (offset dword_77EA7C+2)
call    sub_4D88DD
mov     ecx, eax
mov     edx, ds:dword_77EA7C
sar     edx, 10h
mov     eax, offset dword_55D430
call    sub_4FA436
test    ecx, ecx
jnz     short loc_4D8FED
test    ds:byte_77EAB8, 10h
jz      short loc_4D8FE6
call    sub_4D8E21

loc_4D8FE6:
and     ds:byte_77EAB8, 0CFh

loc_4D8FED:
mov     bl, ds:byte_77EAB8
test    bl, 0C0h
jz      short loc_4D903C
mov     al, bl
and     al, 0C0h
and     eax, 0FFh
sar     eax, 6
mov     edx, offset word_77EA80
call    sub_4D88DD
mov     ecx, eax
mov     edx, ds:dword_77EA7C+2
sar     edx, 10h
mov     eax, offset dword_55D5C0
call    sub_4FA436
test    ecx, ecx
jnz     short loc_4D903C
test    ds:byte_77EAB8, 40h
jz      short loc_4D9035
call    sub_4D8EB1

loc_4D9035:
and     ds:byte_77EAB8, 3Fh

loc_4D903C:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D8F96 endp




sub_4D9040 proc near
cmp     ds:byte_77EAB8, 0
jnz     short locret_4D904E
mov     ds:byte_77EAB8, al

locret_4D904E:
retn
sub_4D9040 endp




sub_4D904F proc near
push    ebx
push    ecx
push    edx
mov     eax, offset dword_55D430
call    sub_4FA4D2
mov     ds:byte_55D5D5, al
test    al, al
jz      short loc_4D906F
mov     eax, offset dword_55D430
call    sub_4FA36B

loc_4D906F:
mov     eax, offset dword_55D5C0
call    sub_4FA4D2
mov     ds:byte_55D5D4, al
test    al, al
jz      short loc_4D908C
mov     eax, offset dword_55D5C0
call    sub_4FA36B

loc_4D908C:
xor     ecx, ecx
jmp     short loc_4D9096

loc_4D9090:
inc     ecx
cmp     ecx, 18h
jge     short loc_4D903C

loc_4D9096:
