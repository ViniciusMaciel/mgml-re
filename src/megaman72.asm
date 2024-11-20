add     esp, 10h
jmp     loc_4B338F
sub_4B390B endp




sub_4B39B8 proc near

var_1A= dword ptr -1Ah
var_16= dword ptr -16h

push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     edx, eax
lea     ecx, [eax+88h]
mov     edi, esp
mov     esi, offset unk_5F882C
movsd
movsd
mov     eax, [esp+18h+var_1A]
sar     eax, 10h
shl     eax, 10h
mov     [edx+1Ch], eax
mov     eax, [esp+18h+var_1A+2]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, [esp+18h+var_16]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
mov     eax, [esp+18h+var_1A+2]
mov     [edx+14h], ax
mov     [ecx+34h], ax
mov     eax, [esp+18h+var_16]
mov     [edx+16h], ax
mov     [ecx+36h], ax
mov     eax, [esp+18h+var_16+2]
mov     [edx+18h], ax
mov     [ecx+38h], ax
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B39B8 endp




sub_4B3A21 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    esi
sub     esp, 48h
mov     ecx, eax
mov     esi, edx
call    sub_42A85C
mov     [esp+54h+var_14], ax
mov     ax, word ptr ds:dword_5F83B8+2
mov     [esp+54h+var_12], ax
xor     edx, edx
mov     [esp+54h+var_10], dx
mov     edx, esp
lea     eax, [esp+54h+var_14]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+54h+var_1C], edx
mov     [esp+54h+var_20], edx
mov     [esp+54h+var_24], edx
lea     edx, [esp+54h+var_24]
mov     eax, esp
call    sub_4EF689
xor     ebx, ebx
mov     [esp+54h+var_14], bx
mov     [esp+54h+var_12], bx
mov     [esp+54h+var_10], 0F000h
lea     ebx, [esp+54h+var_24]
lea     edx, [esp+54h+var_14]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [esp+54h+var_24]
imul    eax, esi
sar     eax, 4
mov     [ecx], ax
mov     eax, [esp+54h+var_20]
imul    eax, esi
sar     eax, 4
mov     [ecx+2], ax
imul    esi, [esp+54h+var_1C]
sar     esi, 4
mov     [ecx+4], si
add     esp, 48h
pop     esi
pop     ecx
pop     ebx
retn
sub_4B3A21 endp




sub_4B3ABE proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4B3AC7[ecx*4]
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4B3ABE endp




sub_4B3AD8 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= dword ptr -1Ch
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 48h
mov     ecx, eax
mov     ah, [eax]
or      ah, 0Ah
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_5310A4
call    sub_42A85C
sub     eax, 80h
mov     word ptr [esp+5Ch+var_1C], ax
mov     ax, [ecx+64h]
and     ah, 0Fh
mov     word ptr [esp+5Ch+var_1C+2], ax
xor     edx, edx
mov     [esp+5Ch+var_18], dx
mov     edx, esp
lea     eax, [esp+5Ch+var_1C]
call    sub_4EF638
xor     ebx, ebx
mov     word ptr [esp+5Ch+var_1C], bx
mov     word ptr [esp+5Ch+var_1C+2], bx
mov     [esp+5Ch+var_18], 0F000h
lea     ebx, [esp+5Ch+var_2C]
lea     edx, [esp+5Ch+var_1C]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [esp+5Ch+var_2C]
mov     word ptr [esp+5Ch+var_1C], ax
mov     eax, [esp+5Ch+var_28]
mov     word ptr [esp+5Ch+var_1C+2], ax
mov     eax, [esp+5Ch+var_24]
mov     [esp+5Ch+var_18], ax
mov     edx, 0Ah
mov     eax, offset byte_5F8364
call    sub_4EE62E
mov     edx, [esp+3Eh]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ecx+44h], dx
mov     edx, [esp+5Ch+var_1C]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ecx+46h], dx
mov     edx, [esp+5Ch+var_1C+2]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ecx+48h], ax
lea     edi, [ecx+0A4h]
lea     esi, [esp+5Ch+var_1C]
movsd
movsd
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 200h
mov     word ptr [ecx+50h], 0
mov     eax, ds:dword_5F89A5
sar     eax, 18h
mov     eax, ds:dword_5310C0[eax*4]
mov     [ecx+88h], eax
mov     dword ptr [ecx+8Ch], 2C808080h
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+90h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+92h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+94h], ax
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
mov     byte ptr [ecx+96h], 0
mov     byte ptr [ecx+97h], 0
mov     eax, ds:dword_5F89A5
sar     eax, 18h
mov     ax, ds:word_5310B0[eax*2]
mov     [ecx+98h], ax
mov     word ptr [ecx+7Ch], 0
mov     byte ptr [ecx+0Bh], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     eax, ecx
call    sub_4B3EFC
lea     edx, [ecx+14h]
mov     eax, 12Fh
call    sub_4D8BC3
add     esp, 48h

loc_4B3C8F:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B3AD8 endp




sub_4B3C95 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, 40h ; '@'
call    sub_4EE66E
mov     esi, eax
test    eax, eax
jnz     short loc_4B3CB2
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4B3CD8

loc_4B3CB2:
cmp     esi, 7FFFh
mov     eax, ecx
call    sub_4B3D80
lea     edx, [ecx+14h]
mov     eax, 130h
call    sub_4D8BC3
mov     eax, ecx
call    sub_4DE3AC
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4B3CD8:
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
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 8
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 8
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
add     [ecx+24h], eax
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+90h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+92h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+94h], ax
mov     ah, [ecx+0Bh]
inc     ah
mov     [ecx+0Bh], ah
mov     al, ah
and     al, 7
and     eax, 0FFh
mov     dl, ds:byte_5310E0[eax*2]
mov     [ecx+96h], dl
mov     al, ds:byte_5310E1[eax*2]
mov     [ecx+97h], al
mov     eax, ecx
call    sub_4B3EFC
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B3C95 endp




sub_4B3D80 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr ds:dword_5F89A5+3, 0
jnz     loc_4B3E44
call    sub_4DE13B
test    eax, eax
jz      short loc_4B3DB8
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 1
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4B3DB8:
xor     esi, esi
jmp     short loc_4B3DC6

loc_4B3DBC:
inc     esi
cmp     esi, 4
jge     loc_4B3C8F

loc_4B3DC6:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4B3DBC
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 1
mov     ebx, esi
shl     ebx, 0Ah
mov     eax, ebx
call    sub_4EF003
mov     edi, eax
shl     eax, 2
add     eax, edi
add     eax, eax
mov     edi, eax
shl     eax, 4
sub     eax, edi
sar     eax, 0Ch
mov     edi, [ecx+12h]
sar     edi, 10h
add     eax, edi
mov     [edx+48h], ax
mov     eax, ebx
call    sub_4EF008
mov     ebx, eax
shl     eax, 2
add     eax, ebx
add     eax, eax
mov     ebx, eax
shl     eax, 4
sub     eax, ebx
mov     ebx, eax
sar     ebx, 0Ch
mov     eax, [ecx+16h]
sar     eax, 10h
add     eax, ebx
mov     [edx+4Ch], ax
mov     ax, [ecx+16h]
mov     [edx+4Ah], ax
jmp     loc_4B3DBC

loc_4B3E44:
call    sub_4DE13B
test    eax, eax
jz      short loc_4B3E68
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Dh], 2
mov     byte ptr [eax+0Eh], 1
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4B3E68:
xor     esi, esi
jmp     short loc_4B3E76

loc_4B3E6C:
inc     esi
cmp     esi, 8
jge     loc_4B3C8F

loc_4B3E76:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4B3E6C
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 1
mov     edi, esi
shl     edi, 9
mov     eax, edi
call    sub_4EF003
mov     ebx, eax
shl     eax, 2
sub     eax, ebx
shl     eax, 3
add     eax, ebx
add     eax, eax
mov     ebx, eax
shl     eax, 2
add     eax, ebx
sar     eax, 0Ch
mov     ebx, [ecx+12h]
sar     ebx, 10h
add     eax, ebx
mov     [edx+48h], ax
mov     eax, edi
call    sub_4EF008
mov     ebx, eax
shl     eax, 2
sub     eax, ebx
shl     eax, 3
add     eax, ebx
add     eax, eax
mov     ebx, eax
shl     eax, 2
add     eax, ebx
sar     eax, 0Ch
mov     ebx, [ecx+16h]
sar     ebx, 10h
add     eax, ebx
mov     [edx+4Ch], ax
mov     ax, [ecx+16h]
mov     [edx+4Ah], ax
jmp     loc_4B3E6C
sub_4B3D80 endp




sub_4B3EFC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     esi, esi
mov     si, [eax+98h]
mov     edx, 1
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     edx, eax
lea     eax, [ecx+14h]
lea     ebx, [ecx+2Ch]
lea     edi, [ecx+0D4h]
or      edx, 88000000h
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4B3F4B
push    80h
push    0
push    edx
push    edi
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    6000h
jmp     short loc_4B3F5F

loc_4B3F4B:
push    80h
push    0
push    edx
push    edi
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    4000h

loc_4B3F5F:
push    200h
mov     ecx, esi
mov     edx, esi
call    sub_4E02CB
jmp     loc_4B3C8F
sub_4B3EFC endp




sub_4B3F72 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4B3F7B[ecx*4]
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4B3F72 endp




sub_4B3F8C proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
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
sub     esp, 1Ch
mov     ecx, eax
mov     eax, [eax+0Ah]
sar     eax, 18h
call    sub_4E0F14
or      byte ptr [ecx], 6
or      byte ptr [ecx+6], 20h
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_5310F8
mov     byte ptr [ecx+74h], 1
lea     ebp, [ecx+0DCh]
mov     dword ptr [ebp+0], 0F0h
mov     eax, ds:dword_5F89AD
sar     eax, 18h
mov     [ebp+4], eax
mov     edx, 0Bh
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     [ebp+8], eax
xor     edx, edx
mov     [esp+34h+var_24], dx
mov     ax, [ecx+64h]
and     ah, 0Fh
mov     [esp+34h+var_22], ax
mov     [esp+34h+var_20], dx
mov     eax, ecx
add     eax, 8Ch
mov     [esp+34h+var_1C], eax
mov     edx, eax
lea     eax, [esp+34h+var_24]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+34h+var_30], edx
mov     ebx, edx
mov     [esp+34h+var_2C], edx
mov     esi, edx
mov     [esp+34h+var_34], edx
mov     edx, esp
mov     eax, [esp+34h+var_1C]
call    sub_4EF689
xor     esi, ebx
mov     [esp+34h+var_24], si
xor     edi, edi
mov     [esp+34h+var_22], di
mov     [esp+34h+var_20], 0F000h
mov     ebx, esp
lea     edx, [esp+34h+var_24]
mov     eax, [esp+34h+var_1C]
call    sub_4EF1FB
mov     eax, [esp+34h+var_34]
mov     ebx, eax
shl     ebx, 2
add     ebx, eax
shl     ebx, 3
sar     ebx, 4
mov     [ecx+44h], bx
mov     eax, [esp+34h+var_30]
mov     ebx, eax
shl     ebx, 2
add     ebx, eax
shl     ebx, 3
sar     ebx, 4
mov     [ecx+46h], bx
mov     eax, [esp+34h+var_2C]
mov     ebx, eax
shl     ebx, 2
add     ebx, eax
shl     ebx, 3
sar     ebx, 4
mov     [ecx+48h], bx
mov     [ecx+4Ch], di
mov     word ptr [ecx+4Eh], 200h
mov     [ecx+50h], di
lea     ebx, [ecx+88h]
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ebx+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ebx+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ebx+38h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 8
sub     [ecx+34h], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 8
sub     [ecx+38h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
sub     [ecx+3Ch], eax
mov     eax, [ecx+34h]
sar     eax, 10h
mov     [ecx+2Ch], ax
mov     eax, [ecx+38h]
sar     eax, 10h
mov     [ecx+2Eh], ax
mov     eax, [ecx+3Ch]
sar     eax, 10h
mov     [ecx+30h], ax
mov     word ptr [ecx+7Ch], 0
mov     edi, 200h
mov     [esp+34h+var_2C], edi
mov     [esp+34h+var_34], edi
mov     [esp+34h+var_30], 300h
mov     edx, esp
mov     eax, [esp+34h+var_1C]
call    sub_4EF689
cmp     dword ptr [ebp+4], 0
jz      short loc_4B4173
mov     dword ptr [ebx+3Ch], offset unk_8080C0
jmp     short loc_4B417A

loc_4B4173:
mov     dword ptr [ebx+3Ch], offset unk_808080

loc_4B417A:
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     edx, 4000h
mov     eax, ecx
call    sub_4B4402
lea     edx, [ecx+14h]
mov     eax, 132h
call    sub_4D8BC3
mov     byte ptr [ecx+8], 1
add     esp, 1Ch
jmp     loc_4B432C
sub_4B3F8C endp




sub_4B41A8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+88h]
xor     edx, edx
call    sub_4EE66E
cmp     eax, 7FFFh
jz      short loc_4B41CA
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4B41DD

loc_4B41CA:
mov     eax, ecx
call    sub_4B4490
mov     eax, ecx
call    sub_4DE3AC
jmp     loc_4B432D

loc_4B41DD:
lea     eax, [ecx+14h]
call    sub_42C443
test    eax, eax
jz      short loc_4B41CA
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
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 8
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 8
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
add     [ecx+24h], eax
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ebx+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ebx+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ebx+38h], ax
mov     eax, ecx
call    sub_42DE56
mov     edx, eax
test    eax, eax
jl      short loc_4B4275
test    ah, 10h
jz      short loc_4B426B
mov     byte ptr [ecx+74h], 0
mov     byte ptr [ecx+8], 2

loc_4B426B:
lea     eax, [ecx+44h]
call    sub_42D90F
jmp     short loc_4B427D

loc_4B4275:
mov     byte ptr [ecx+74h], 0
mov     byte ptr [ecx+8], 2

loc_4B427D:
mov     edx, 4000h
mov     eax, ecx
call    sub_4B4402
jmp     loc_4B432D
sub_4B41A8 endp




sub_4B428E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebx, [eax+0DCh]
lea     ebp, [eax+88h]
xor     edx, edx
call    sub_4EE66E
cmp     eax, 7FFFh
jnz     short loc_4B42C0
mov     eax, ecx
call    sub_4B4490
mov     eax, ecx
call    sub_4DE3AC
jmp     short loc_4B432C

loc_4B42C0:
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
mov     eax, ecx
call    sub_431C8C
mov     eax, ecx
call    sub_42DE56
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     ax, [ecx+14h]
mov     [ebp+34h], ax
mov     ax, [ecx+16h]
mov     [ebp+36h], ax
mov     ax, [ecx+18h]
mov     [ebp+38h], ax
mov     edx, [ebx]
dec     edx
mov     [ebx], edx
jnz     short loc_4B4320
mov     dword ptr [ebx], 3Ch ; '<'
mov     byte ptr [ecx+8], 3

loc_4B4320:
mov     edx, 6000h
mov     eax, ecx
call    sub_4B4402

loc_4B432C:
pop     ebp

loc_4B432D:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B428E endp




sub_4B4333 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+0DCh]
lea     ebx, [eax+88h]
xor     edx, edx
call    sub_4EE66E
cmp     eax, 7FFFh
jnz     short loc_4B4365

loc_4B4355:
mov     eax, ecx
call    sub_4B4490
mov     eax, ecx
call    sub_4DE3AC
jmp     short loc_4B432C

loc_4B4365:
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
mov     eax, ecx
call    sub_431C8C
mov     eax, ecx
call    sub_42DE56
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     ax, [ecx+14h]
mov     [ebx+34h], ax
mov     ax, [ecx+16h]
mov     [ebx+36h], ax
mov     ax, [ecx+18h]
mov     [ebx+38h], ax
mov     ah, byte ptr ds:word_77EAB6
test    ah, 2
jz      short loc_4B43DA
test    ah, 1
jz      short loc_4B43D1
lea     edx, [ecx+14h]
mov     eax, 133h
call    sub_4D8BC3

loc_4B43D1:
mov     dword ptr [ebx+3Ch], 0E0E0E0h
jmp     short loc_4B43F0

loc_4B43DA:
cmp     dword ptr [ebp+4], 0
jz      short loc_4B43E9
mov     dword ptr [ebx+3Ch], offset unk_8080C0
jmp     short loc_4B43F0

loc_4B43E9:
mov     dword ptr [ebx+3Ch], offset unk_808080

loc_4B43F0:
mov     ebx, [ebp+0]
dec     ebx
mov     [ebp+0], ebx
jz      loc_4B4355
jmp     loc_4B4320
sub_4B4333 endp




sub_4B4402 proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    esi
sub     esp, 8
mov     esi, eax
mov     ebx, edx
lea     edx, [eax+0DCh]
mov     ax, [eax+14h]
mov     [esp+14h+var_14], ax
mov     ax, [esi+16h]
sub     eax, 28h ; '('
mov     [esp+14h+var_12], ax
mov     ax, [esi+18h]
mov     [esp+14h+var_10], ax
push    80h
push    0
mov     eax, [edx+8]
or      eax, 8000000h
push    eax
lea     eax, [esi+0D4h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
xor     ecx, ecx
mov     cx, bx
xor     ebx, ebx
mov     edx, 30h ; '0'
lea     eax, [esp+28h+var_14]
call    sub_4E01FC
mov     dword ptr [esi+0CCh], 0
mov     dword ptr [esi+0D0h], 0
mov     dword ptr [esi+0D4h], 0
mov     dword ptr [esi+0D8h], 0
add     esp, 8
pop     esi
pop     ecx
pop     ebx
retn
sub_4B4402 endp




sub_4B4490 proc near
push    edx
push    esi
push    edi
mov     esi, eax
lea     edx, [eax+0DCh]
call    sub_4DE13B
test    eax, eax
jz      short loc_4B44CB
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Ch], 1
mov     edx, [edx+4]
mov     dl, ds:byte_531114[edx]
mov     [eax+0Dh], dl
mov     byte ptr [eax+0Eh], 1
lea     edi, [eax+48h]
lea     esi, [esi+14h]
movsd
movsd

loc_4B44CB:
pop     edi
pop     esi
pop     edx
retn
sub_4B4490 endp




sub_4B44CF proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B44D5[edx*4]
pop     edx
retn
sub_4B44CF endp




sub_4B44DE proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
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
sub     esp, 20h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_53111C
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     al, ds:byte_5F89BC
mov     [ecx+0Fh], al
call    sub_42A85C
mov     [esp+34h+var_24], ax
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
mov     [esp+34h+var_22], ax
xor     edx, edx
mov     [esp+34h+var_20], dx
lea     esi, [ecx+8Ch]
mov     edx, esi
lea     eax, [esp+34h+var_24]
call    sub_4EF638
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     eax, ds:dword_531128[eax*4]
mov     [esp+34h+var_2C], eax
mov     [esp+34h+var_30], eax
mov     [esp+34h+var_34], eax
mov     edx, esp
mov     eax, esi
call    sub_4EF689
xor     ebx, ebx
mov     [esp+34h+var_24], bx
mov     [esp+34h+var_22], bx
mov     [esp+34h+var_20], 0F000h
mov     ebx, esp
lea     edx, [esp+34h+var_24]
mov     eax, esi
call    sub_4EF1FB
mov     edx, [esp+34h+var_34]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ecx+44h], ax
mov     edx, [esp+34h+var_30]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ecx+46h], ax
mov     edx, [esp+34h+var_2C]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ecx+48h], ax
lea     eax, [ecx+88h]
lea     edi, [esp+34h+var_1C]
mov     esi, offset unk_5F882C
movsd
movsd
mov     ebx, [ecx+42h]
sar     ebx, 10h
shl     ebx, 0Ah
mov     edx, [esp+16h]
sar     edx, 10h
shl     edx, 10h
add     edx, ebx
mov     [ecx+1Ch], edx
mov     edx, [ecx+44h]
sar     edx, 10h
shl     edx, 0Ah
mov     ebx, [esp+34h+var_1C]
sar     ebx, 10h
shl     ebx, 10h
add     ebx, edx
mov     [ecx+20h], ebx
mov     ebx, [ecx+46h]
sar     ebx, 10h
shl     ebx, 0Ah
mov     edx, [esp+34h+var_1C+2]
sar     edx, 10h
shl     edx, 10h
add     edx, ebx
mov     [ecx+24h], edx
mov     edx, [ecx+1Ch]
sar     edx, 10h
mov     [ecx+14h], dx
mov     [eax+34h], dx
mov     edx, [ecx+20h]
sar     edx, 10h
mov     [ecx+16h], dx
mov     [eax+36h], dx
mov     edx, [ecx+24h]
sar     edx, 10h
mov     [ecx+18h], dx
mov     [eax+38h], dx
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
mov     dword ptr [eax+3Ch], 2808080h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     eax, ecx
call    sub_4B48A3
lea     edx, [ecx+14h]
mov     eax, 134h
call    sub_4D8BC3
inc     byte ptr [ecx+8]
add     esp, 20h

loc_4B46A3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B44DE endp




sub_4B46A9 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= word ptr -28h
var_26= word ptr -26h
var_24= word ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ecx, eax
lea     ebp, [eax+88h]
call    sub_4B4877
test    al, al
jz      short loc_4B46DC

loc_4B46C3:
lea     edx, [ecx+14h]
mov     eax, 135h
call    sub_4D8BC3
mov     eax, ecx
call    sub_4DE3AC
jmp     loc_4B486E

loc_4B46DC:
mov     dword ptr [ebp+3Ch], 2808080h
test    byte ptr [ecx+0D7h], 0Ch
jz      short loc_4B46FC
mov     dword ptr [ebp+3Ch], 2E0E0E0h
or      ds:byte_5F88B0, 3
jmp     short loc_4B470E

loc_4B46FC:
mov     eax, ecx
call    sub_4B4980
test    al, al
jz      short loc_4B470E
or      ds:byte_5F88B0, 1

loc_4B470E:
mov     dx, ds:word_5F89BE
test    dx, dx
jz      short loc_4B46C3
cmp     dx, 7FFFh
jz      short loc_4B472B
mov     esi, edx
dec     esi
mov     ds:word_5F89BE, si

loc_4B472B:
call    sub_42A85C
mov     [esp+38h+var_28], ax
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
mov     [esp+38h+var_26], ax
xor     edi, edi
mov     [esp+38h+var_24], di
lea     esi, [ecx+8Ch]
mov     edx, esi
lea     eax, [esp+38h+var_28]
call    sub_4EF638
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     eax, ds:dword_531128[eax*4]
mov     [esp+38h+var_30], eax
mov     [esp+38h+var_34], eax
mov     [esp+38h+var_38], eax
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     [esp+38h+var_28], di
mov     [esp+38h+var_26], di
mov     [esp+38h+var_24], 0F000h
mov     ebx, esp
lea     edx, [esp+38h+var_28]
mov     eax, esi
call    sub_4EF1FB
mov     esi, [esp+38h+var_38]
mov     eax, esi
shl     eax, 2
add     eax, esi
shl     eax, 3
sar     eax, 4
mov     [ecx+44h], ax
mov     esi, [esp+38h+var_34]
mov     eax, esi
shl     eax, 2
add     eax, esi
shl     eax, 3
sar     eax, 4
mov     [ecx+46h], ax
mov     edx, [esp+38h+var_30]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ecx+48h], ax
lea     edi, [esp+38h+var_20]
mov     esi, offset unk_5F882C
movsd
movsd
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 0Ah
mov     edx, [esp+16h]
sar     edx, 10h
shl     edx, 10h
add     edx, eax
mov     [ecx+1Ch], edx
mov     edx, [ecx+44h]
sar     edx, 10h
shl     edx, 0Ah
mov     eax, [esp+38h+var_20]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 0Ah
mov     edx, [esp+38h+var_20+2]
sar     edx, 10h
shl     edx, 10h
add     edx, eax
mov     [ecx+24h], edx
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ebp+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ebp+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ebp+38h], ax
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
mov     eax, ecx
call    sub_4B48A3

loc_4B486E:
add     esp, 20h
pop     ebp
jmp     loc_4B46A3
sub_4B46A9 endp




sub_4B4877 proc near
push    edx
xor     eax, eax
mov     ax, word ptr ds:dword_5F8480
xor     edx, edx
mov     dx, ds:word_5F84A0
test    eax, edx
jz      short loc_4B489B
mov     eax, offset byte_5F8364
call    sub_4B61E1
test    eax, eax
jnz     short loc_4B489F

loc_4B489B:
mov     al, 1
pop     edx
retn

loc_4B489F:
xor     al, al
pop     edx
retn
sub_4B4877 endp




sub_4B48A3 proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
mov     eax, [eax+42h]
sar     eax, 10h
shl     eax, 0Ah
add     eax, [esi+1Ch]
sar     eax, 10h
mov     [esp+18h+var_18], ax
mov     eax, [esi+44h]
sar     eax, 10h
shl     eax, 0Ah
add     eax, [esi+20h]
sar     eax, 10h
mov     [esp+18h+var_16], ax
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 0Ah
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+18h+var_14], ax
push    80h
push    0
push    2000001h
lea     eax, [esi+0D4h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     edx, [esi+0Ch]
sar     edx, 18h
mov     edx, ds:dword_531148[edx*4]
xor     ecx, ecx
xor     ebx, ebx
lea     eax, [esp+2Ch+var_18]
call    sub_4E01FC
push    80h
push    0
push    28000001h
lea     eax, [esi+0CCh]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     edx, [esi+0Ch]
sar     edx, 18h
mov     edx, ds:dword_531148[edx*4]
mov     ecx, 4000h
xor     ebx, ebx
lea     eax, [esp+2Ch+var_18]
call    sub_4E01FC
mov     dword ptr [esi+0CCh], 0
mov     dword ptr [esi+0D0h], 0
mov     dword ptr [esi+0D4h], 0
mov     dword ptr [esi+0D8h], 0
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B48A3 endp




sub_4B4980 proc near

var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
lea     edi, [esp+2Ch+var_1C]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, esp
mov     esi, offset dword_5F83B8
movsd
movsd
mov     ebx, [eax+0Ch]
sar     ebx, 18h
mov     ebx, ds:dword_531168[ebx*4]
xor     ecx, ecx
jmp     short loc_4B49B7

loc_4B49AD:
inc     ecx
cmp     ecx, 20h ; ' '
jnb     loc_4B4AB8

loc_4B49B7:
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 3
sub     eax, ecx
shl     eax, 2
add     eax, offset byte_57098C
cmp     byte ptr [eax], 0
jz      short loc_4B49AD
lea     edi, [esp+2Ch+var_24]
lea     esi, [eax+14h]
movsd
movsd
mov     eax, [esp+0Eh]
sar     eax, 10h
mov     edx, [esp+6]
sar     edx, 10h
sub     eax, edx
lea     edx, [eax+7D0h]
cmp     edx, 0FA0h
ja      short loc_4B49AD
mov     edx, [esp+2Ch+var_1C]
sar     edx, 10h
mov     esi, [esp+2Ch+var_24]
sar     esi, 10h
sub     edx, esi
mov     esi, edx
add     edx, 7D0h
cmp     edx, 0FA0h
ja      short loc_4B49AD
mov     edi, [esp+2Ch+var_1C+2]
sar     edi, 10h
mov     edx, [esp+2Ch+var_24+2]
sar     edx, 10h
sub     edi, edx
mov     edx, edi
add     edi, 7D0h
cmp     edi, 0FA0h
ja      loc_4B49AD
imul    esi, esi
mov     edi, eax
imul    edi, eax
add     edi, esi
mov     esi, edx
imul    esi, edx
add     esi, edi
cmp     esi, 0F4240h
jnb     loc_4B49AD
call    sub_4EF04B
mov     edx, eax
and     edx, 0FFFh
mov     eax, [esp+2Ch+var_2C]
sar     eax, 10h
lea     edi, [eax+ebx]
and     edi, 0FFFh
cmp     edi, eax
jb      short loc_4B4A86
mov     esi, eax
sub     esi, ebx
and     esi, 0FFFh
cmp     eax, esi
jnb     short loc_4B4AAC

loc_4B4A86:
mov     eax, [esp+2Ch+var_2C]
sar     eax, 10h
lea     esi, [eax+ebx]
and     esi, 0FFFh
cmp     edx, esi
jb      short loc_4B4AA8
sub     eax, ebx
and     eax, 0FFFh
cmp     eax, edx

loc_4B4AA2:
jnb     loc_4B49AD

loc_4B4AA8:
mov     al, 1
jmp     short loc_4B4ABA

loc_4B4AAC:
cmp     edx, edi
jnb     loc_4B49AD
cmp     esi, edx
jmp     short loc_4B4AA2

loc_4B4AB8:
xor     al, al

loc_4B4ABA:
add     esp, 18h
jmp     loc_4B46A3
sub_4B4980 endp




sub_4B4AC2 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B4AC8[edx*4]
pop     edx
retn
sub_4B4AC2 endp




sub_4B4AD1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+0CCh]
mov     eax, [eax+0Ah]
sar     eax, 18h
call    sub_4E0F14
or      byte ptr [ecx], 6
or      byte ptr [ecx+6], 20h
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0
mov     al, ds:byte_5F89C2
mov     byte ptr [ebx+1], 8
xor     edx, edx
mov     dl, al
mov     al, ds:byte_531198[edx]
mov     [ebx+2], al
mov     al, ds:byte_531190[edx]
mov     [ebx+3], al
mov     esi, edx
shl     esi, 2
mov     eax, ds:dword_5311A0[esi]
mov     [ebx+4], eax
mov     edx, 0Dh
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     [ebx+8], eax
mov     eax, ds:dword_5311C0[esi]
mov     [ebx+0Ch], eax
mov     eax, ecx
call    sub_4B4C6F
mov     dword ptr [ecx+0C4h], 2808080h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     al, al

loc_4B4B73:
xor     edx, edx
mov     dl, al
mov     dword ptr [ecx+edx*4+0DCh], 0
inc     al
cmp     al, 10h
jb      short loc_4B4B73
mov     dword ptr [ecx+78h], offset unk_5311E0
mov     eax, ecx
call    sub_4B4E46
lea     edx, [ecx+14h]
mov     eax, 136h
call    sub_4D8BC3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B4AD1 endp




sub_4B4BA8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+0CCh]
mov     ah, [edx+1]
cmp     ah, 40h ; '@'
jnb     short loc_4B4BC6
mov     bl, ah
add     bl, 8
mov     [edx+1], bl
jmp     short loc_4B4BCA

loc_4B4BC6:
mov     byte ptr [edx+1], 40h ; '@'

loc_4B4BCA:
mov     eax, ecx
call    sub_4B4C43
test    al, al
jz      short loc_4B4BEE

loc_4B4BD5:
lea     edx, [ecx+14h]
mov     eax, 137h
call    sub_4D8BC3
mov     eax, ecx
call    sub_4DE3AC
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B4BEE:
mov     eax, ecx
call    sub_4B509B
mov     ebx, eax
test    eax, eax
jz      short loc_4B4BFE
mov     [edx+1], al

loc_4B4BFE:
mov     eax, ecx
call    sub_4B51C6
test    eax, eax
jz      short loc_4B4C13
mov     dword ptr [ecx+0C4h], 2808080h

loc_4B4C13:
mov     dx, ds:word_5F89C6
test    dx, dx
jz      short loc_4B4BD5
cmp     dx, 7FFFh
jz      short loc_4B4C30
mov     esi, edx
dec     esi
mov     ds:word_5F89C6, si

loc_4B4C30:
mov     eax, ecx
call    sub_4B4C6F
mov     eax, ecx
call    sub_4B4E46
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B4BA8 endp




sub_4B4C43 proc near
push    edx
xor     eax, eax
mov     ax, word ptr ds:dword_5F8480
xor     edx, edx
mov     dx, ds:word_5F84A0
test    eax, edx
jz      short loc_4B4C67
mov     eax, offset byte_5F8364
call    sub_4B61E1
test    eax, eax
jnz     short loc_4B4C6B

loc_4B4C67:
mov     al, 1
pop     edx
retn

loc_4B4C6B:
xor     al, al
pop     edx
retn
sub_4B4C43 endp




sub_4B4C6F proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
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
sub     esp, 28h
mov     ecx, eax
lea     ebp, [eax+0CCh]
add     eax, 88h
mov     [esp+40h+var_20], eax
call    sub_42A85C
mov     [esp+40h+var_28], ax
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
mov     [esp+40h+var_26], ax
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 0Fh
shl     eax, 8
mov     [esp+40h+var_24], ax
mov     eax, ecx
add     eax, 8Ch
mov     [esp+40h+var_1C], eax
mov     edx, eax
lea     eax, [esp+40h+var_28]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+40h+var_38], edx
mov     [esp+40h+var_3C], edx
mov     [esp+40h+var_40], edx
mov     edx, esp
mov     eax, [esp+40h+var_1C]
call    sub_4EF689
xor     edx, edx
mov     [esp+40h+var_28], dx
mov     [esp+40h+var_26], dx
mov     [esp+40h+var_24], 0F000h
mov     ebx, esp
lea     edx, [esp+40h+var_28]
mov     eax, [esp+40h+var_1C]
call    sub_4EF1FB
mov     eax, [esp+40h+var_40]
add     eax, eax
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ecx+44h], ax
mov     eax, [esp+40h+var_3C]
add     eax, eax
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ecx+46h], ax
mov     eax, [esp+40h+var_38]
add     eax, eax
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ecx+48h], ax
lea     edi, [esp+40h+var_30]
mov     esi, offset unk_5F882C
movsd
movsd
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 8
mov     edx, [esp+0Eh]
sar     edx, 10h
shl     edx, 10h
add     edx, eax
mov     [ecx+1Ch], edx
mov     edx, [ecx+44h]
sar     edx, 10h
shl     edx, 8
mov     eax, [esp+40h+var_30]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
mov     edx, [esp+40h+var_30+2]
sar     edx, 10h
shl     edx, 10h
add     edx, eax
mov     [ecx+24h], edx
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     edx, eax
mov     eax, [esp+40h+var_20]
mov     [eax+34h], dx
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     edx, eax
mov     eax, [esp+40h+var_20]
mov     [eax+36h], dx
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     edx, eax
mov     eax, [esp+40h+var_20]
mov     [eax+38h], dx
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
mov     eax, [ebp+0]
sar     eax, 18h
imul    eax, [esp+40h+var_40]
sar     eax, 4
mov     [ecx+44h], ax
mov     eax, [ebp+0]
sar     eax, 18h
imul    eax, [esp+40h+var_3C]
sar     eax, 4
mov     [ecx+46h], ax
mov     eax, [ebp+0]
sar     eax, 18h
imul    eax, [esp+40h+var_38]
sar     eax, 4
mov     [ecx+48h], ax
mov     eax, [ebp+0Ch]
mov     [esp+40h+var_3C], eax
mov     [esp+40h+var_40], eax
movsx   edx, byte ptr [ebp+2]
xor     eax, eax
mov     al, [ebp+1]
imul    edx, eax
mov     [esp+40h+var_38], edx
mov     edx, esp
mov     eax, [esp+40h+var_1C]
call    sub_4EF689
add     esp, 28h

loc_4B4E3F:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B4C6F endp




sub_4B4E46 proc near

var_4C= word ptr -4Ch
var_4A= word ptr -4Ah
var_48= word ptr -48h
var_44= word ptr -44h
var_42= word ptr -42h
var_40= word ptr -40h
var_3C= dword ptr -3Ch
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
sub     esp, 34h
mov     esi, eax
lea     edi, [eax+0CCh]
mov     eax, [eax+42h]
sar     eax, 10h
shl     eax, 8
mov     [esp+4Ch+var_2C], eax
mov     eax, [esi+44h]
sar     eax, 10h
shl     eax, 8
mov     [esp+4Ch+var_24], eax
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 8
mov     [esp+4Ch+var_20], eax
xor     ah, ah
mov     [esp+4Ch+var_1C], ah

loc_4B4E84:
xor     ecx, ecx
mov     cl, [edi+1]
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esp+4Ch+var_3C], eax
xor     edx, edx
mov     dl, [esp+4Ch+var_1C]
lea     eax, [esi+0DCh]
mov     [esp+4Ch+var_28], eax
mov     bl, dl
shl     bl, 3
mov     eax, edx
shl     eax, 3
mov     [esp+4Ch+var_38], eax
mov     eax, edx
shl     eax, 2
mov     [esp+4Ch+var_30], eax
mov     ebp, [esp+4Ch+var_38]
add     ebp, esi
mov     eax, [esp+4Ch+var_28]
add     eax, [esp+4Ch+var_30]
mov     [esp+4Ch+var_34], eax
cmp     edx, [esp+4Ch+var_3C]
jge     loc_4B4FB1
mov     dl, bl
add     dl, 6
and     edx, 0FFh
mov     eax, [esp+4Ch+var_2C]
imul    eax, edx
add     eax, [esi+1Ch]
sar     eax, 10h
mov     [esp+4Ch+var_4C], ax
mov     eax, [esp+4Ch+var_24]
imul    eax, edx
add     eax, [esi+20h]
sar     eax, 10h
mov     [esp+4Ch+var_4A], ax
mov     eax, [esp+4Ch+var_20]
imul    eax, edx
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+4Ch+var_48], ax
mov     dl, bl
inc     dl
and     edx, 0FFh
mov     eax, [esp+4Ch+var_2C]
imul    eax, edx
add     eax, [esi+1Ch]
sar     eax, 10h
mov     [esp+4Ch+var_44], ax
mov     eax, [esp+4Ch+var_24]
imul    eax, edx
add     eax, [esi+20h]
sar     eax, 10h
mov     [esp+4Ch+var_42], ax
imul    edx, [esp+4Ch+var_20]
add     edx, [esi+24h]
sar     edx, 10h
mov     [esp+4Ch+var_40], dx
push    80h
push    0
mov     eax, [edi+8]
or      eax, 8000000h
push    eax
mov     ebx, [esp+58h+var_34]
push    ebx
xor     eax, eax
mov     al, [esi+1]
push    eax
push    4000h
push    200h
mov     edx, [edi+4]
mov     ecx, edx
lea     ebx, [esp+68h+var_44]
lea     eax, [esp+68h+var_4C]
call    sub_4E02CB
mov     dword ptr [ebp+0DCh], 0
mov     dword ptr [ebp+0E0h], 0
inc     [esp+4Ch+var_1C]
jmp     loc_4B4E84

loc_4B4FB1:
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
mov     ecx, 8
idiv    ecx
test    edx, edx
jz      loc_4B5093
cmp     [esp+4Ch+var_1C], 8
jnb     loc_4B5093
mov     eax, [esp+4Ch+var_38]
add     eax, edx
and     eax, 0FFh
mov     edx, [esp+4Ch+var_2C]
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+4Ch+var_4C], dx
mov     edx, [esp+4Ch+var_24]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+4Ch+var_4A], dx
imul    eax, [esp+4Ch+var_20]
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+4Ch+var_48], ax
xor     eax, eax
mov     al, bl
mov     edx, [esp+4Ch+var_2C]
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+4Ch+var_44], dx
mov     edx, [esp+4Ch+var_24]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+4Ch+var_42], dx
imul    eax, [esp+4Ch+var_20]
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+4Ch+var_40], ax
push    80h
push    0
mov     eax, [edi+8]
or      eax, 8000000h
push    eax
mov     ecx, [esp+58h+var_34]
push    ecx
xor     eax, eax
mov     al, [esi+1]
push    eax
push    4000h
push    200h
mov     edx, [edi+4]
mov     ecx, edx
lea     ebx, [esp+68h+var_44]
lea     eax, [esp+68h+var_4C]
call    sub_4E02CB
mov     dword ptr [ebp+0DCh], 0
mov     dword ptr [ebp+0E0h], 0

loc_4B5093:
add     esp, 34h
jmp     loc_4B4E3F
sub_4B4E46 endp




sub_4B509B proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     esi, eax
lea     edi, [eax+0CCh]
mov     ebp, [eax+42h]
sar     ebp, 10h
shl     ebp, 8
mov     eax, [eax+44h]
sar     eax, 10h
shl     eax, 8
mov     [esp+38h+var_28], eax
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 8
mov     [esp+38h+var_24], eax
xor     ah, ah
mov     [esp+38h+var_1C], ah

loc_4B50D5:
mov     al, [esp+38h+var_1C]
cmp     al, [edi+1]
jnb     loc_4B51BC
inc     al
mov     [esp+38h+var_20], al
xor     eax, eax
mov     al, [esp+38h+var_20]
mov     edx, ebp
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+38h+var_30], dx
mov     edx, [esp+38h+var_28]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+38h+var_2E], dx
imul    eax, [esp+38h+var_24]
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+38h+var_2C], ax
xor     eax, eax
mov     al, [esp+38h+var_1C]
mov     edx, ebp
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     word ptr [esp+38h+var_38], dx
mov     edx, [esp+38h+var_28]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     word ptr [esp+38h+var_38+2], dx
imul    eax, [esp+38h+var_24]
add     eax, [esi+24h]
sar     eax, 10h
mov     word ptr [esp+38h+var_34], ax
mov     ecx, 0FFFFh
mov     ebx, offset unk_5311E0
mov     edx, esp
lea     eax, [esp+38h+var_30]
call    sub_42CE61
test    eax, eax
jz      short loc_4B51AF
test    byte ptr ds:word_77EAB6, 3
jnz     short loc_4B51A6
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4B51A6
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8Ah
mov     byte ptr [eax+3], 1
mov     eax, [esp+38h+var_38]
mov     [edx+1Ch], ax
mov     eax, [esp+38h+var_38+2]
mov     [edx+1Eh], ax
mov     eax, [esp+38h+var_34]
mov     [edx+20h], ax

loc_4B51A6:
xor     eax, eax
mov     al, [esp+38h+var_1C]
inc     eax
jmp     short loc_4B51BE

loc_4B51AF:
mov     al, [esp+38h+var_20]
mov     [esp+38h+var_1C], al
jmp     loc_4B50D5

loc_4B51BC:
xor     eax, eax

loc_4B51BE:
add     esp, 20h
jmp     loc_4B4E3F
sub_4B509B endp




sub_4B51C6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+0CCh]
xor     bl, bl

loc_4B51D4:
xor     edx, edx
mov     dl, [ecx+1]
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
xor     edx, edx
mov     dl, bl
cmp     edx, eax
jge     short loc_4B5206
test    byte ptr [esi+edx*8+0DFh], 0FFh
jz      short loc_4B5202
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B5202:
inc     bl
jmp     short loc_4B51D4

loc_4B5206:
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B51C6 endp




sub_4B520D proc near
test    cl, cl
jz      short loc_4B521A
mov     byte ptr [eax+0ADh], 0FFh
jmp     short loc_4B5222

loc_4B521A:
cmp     dl, [eax+0ADh]
jz      short locret_4B527A

loc_4B5222:
cmp     dl, 1
jb      short loc_4B526E
jbe     short loc_4B524F
cmp     dl, 0Ch
jnz     short loc_4B526E
cmp     byte ptr [eax+0ADh], 1
jnz     short loc_4B526E
xor     ebx, ebx
mov     bl, [eax+0A4h]
add     ebx, ebx
add     ebx, 4
cmp     bx, 1Fh
jle     short loc_4B526E
sub     ebx, 20h ; ' '
jmp     short loc_4B526E

loc_4B524F:
cmp     byte ptr [eax+0ADh], 0Ch
jnz     short loc_4B526E
xor     ebx, ebx
mov     bl, [eax+0A4h]
sub     ebx, 4
test    bx, bx
jge     short loc_4B526B
add     ebx, 20h ; ' '

loc_4B526B:
sar     bx, 1

loc_4B526E:
mov     [eax+0ACh], dl
mov     [eax+0A4h], bl

locret_4B527A:
retn
sub_4B520D endp




sub_4B527B proc near
push    esi
mov     esi, eax
mov     ax, [eax+116h]
sub     [esi+56h], ax
movsx   ecx, cx
movsx   ebx, bx
movsx   edx, dx
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+116h]
add     [esi+56h], ax
pop     esi
retn
sub_4B527B endp




sub_4B52A6 proc near
push    ecx
push    esi
push    edi
push    ebp
xor     edi, edi
mov     di, [eax+11Ch]
xor     esi, esi
mov     si, [eax+124h]
xor     ecx, ecx
mov     cx, [eax+126h]
mov     ebp, esi
or      ebp, ecx
test    edi, ebp
jz      short loc_4B52E2
cmp     ds:byte_77E7D9, 0
jnz     short loc_4B52D8
mov     ecx, esi

loc_4B52D8:
call    sub_4B52F0
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4B52E2:
mov     word ptr [eax+10Ch], 0
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4B52A6 endp




sub_4B52F0 proc near
push    esi
push    edi
xor     esi, esi
mov     si, [eax+11Ch]
test    esi, ecx
jz      short loc_4B5363
mov     cx, [eax+10Ch]
test    cx, cx
jge     short loc_4B5316
mov     word ptr [eax+10Ch], 0
jmp     short loc_4B5335

loc_4B5316:
mov     esi, ecx
add     esi, edx
mov     [eax+10Ch], si
mov     edx, [eax+10Ah]
sar     edx, 10h
cmp     edx, ebx
jle     short loc_4B5335
mov     [eax+10Ch], bx

loc_4B5335:
mov     dx, [eax+10Ch]
mov     di, [eax+108h]
add     edi, edx
mov     [eax+108h], di
cmp     di, 200h
jle     loc_4B53D0
mov     word ptr [eax+108h], 200h
pop     edi
pop     esi
retn

loc_4B5363:
mov     cx, [eax+10Ch]
test    cx, cx
jle     short loc_4B537A
mov     word ptr [eax+10Ch], 0
jmp     short loc_4B53A8

loc_4B537A:
mov     esi, ecx
sub     esi, edx
mov     [eax+10Ch], si
mov     ecx, [eax+10Ah]
sar     ecx, 10h
mov     edx, ebx
neg     edx
cmp     ecx, edx
jge     short loc_4B53A8
mov     [eax+10Ch], bx
mov     edi, ebx
neg     edi
mov     [eax+10Ch], di

loc_4B53A8:
mov     dx, [eax+10Ch]
add     [eax+108h], dx
mov     edx, [eax+106h]
sar     edx, 10h
cmp     edx, 0FFFFFE00h
jge     short loc_4B53D0
mov     word ptr [eax+108h], 0FE00h

loc_4B53D0:
pop     edi
pop     esi
retn
sub_4B52F0 endp




sub_4B53D3 proc near

var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, edx
xor     edx, edx
xor     ecx, ecx
mov     cx, [eax+11Ch]
mov     [esp+14h+var_14], ecx
xor     edi, edi
mov     di, [eax+128h]
xor     ecx, ecx
mov     cx, [eax+12Ah]
or      edi, ecx
mov     ebp, [esp+14h+var_14]
test    edi, ebp
jz      short loc_4B5416
and     ebp, edi
cmp     edi, ebp
jz      short loc_4B5416
mov     edx, esi
call    sub_4B5502
mov     edx, eax
jmp     short loc_4B541F

loc_4B5416:
mov     word ptr [eax+0B4h], 0

loc_4B541F:
mov     eax, edx
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4B53D3 endp




sub_4B5429 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     esi, eax
mov     [esp+18h+var_10], ecx
xor     edi, edi
movzx   ebp, word ptr [eax+11Ch]
xor     eax, eax
mov     ax, [esi+12Ah]
xor     ecx, ecx
mov     cx, [esi+12Eh]
or      eax, ecx
test    ebp, eax
jnz     short loc_4B545D
mov     ecx, 1
jmp     short loc_4B545F

loc_4B545D:
xor     ecx, ecx

loc_4B545F:
xor     eax, eax
mov     ax, [esi+128h]
mov     [esp+18h+var_18], eax
xor     eax, eax
mov     ax, [esi+12Ch]
mov     [esp+18h+var_14], eax
mov     eax, [esp+18h+var_18]
or      eax, [esp+18h+var_14]
test    ebp, eax
jnz     short loc_4B548A
mov     eax, 1
jmp     short loc_4B548C

loc_4B548A:
xor     eax, eax

loc_4B548C:
cmp     ecx, eax
jz      short loc_4B54DC
xor     eax, eax
mov     ax, [esi+12Ah]
xor     ecx, ecx
mov     cx, [esi+12Eh]
or      ecx, eax
mov     eax, esi
call    sub_4B5502
mov     edi, eax
cmp     [esp+18h+var_10], 0
jz      short loc_4B54F9
xor     eax, eax
mov     ax, [esi+12Ah]
xor     edx, edx
mov     dx, [esi+12Eh]
or      eax, edx
test    ebp, eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, esi
call    sub_4B520D
jmp     short loc_4B54F9

loc_4B54DC:
cmp     [esp+18h+var_10], 0
jz      short loc_4B54F0
xor     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4B520D

loc_4B54F0:
mov     word ptr [esi+0B4h], 0

loc_4B54F9:
mov     eax, edi
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
retn
sub_4B5429 endp




sub_4B5502 proc near
push    esi
push    edi
xor     esi, esi
mov     si, [eax+11Ch]
test    esi, ecx
jz      short loc_4B5558
mov     ecx, 1
mov     di, [eax+0B4h]
test    di, di
jge     short loc_4B5530

loc_4B5522:
mov     word ptr [eax+0B4h], 0
jmp     loc_4B55A7

loc_4B5530:
mov     esi, edi
add     esi, edx
mov     [eax+0B4h], si
mov     esi, [eax+0B2h]
sar     esi, 10h
cmp     esi, ebx
jle     short loc_4B554F
mov     [eax+0B4h], bx

loc_4B554F:
mov     [eax+0B6h], dx
jmp     short loc_4B55A7

loc_4B5558:
mov     ecx, 2
mov     si, [eax+0B4h]
test    si, si
jg      short loc_4B5522
mov     edi, esi
sub     edi, edx
mov     [eax+0B4h], di
mov     edi, [eax+0B2h]
sar     edi, 10h
mov     esi, ebx
neg     esi
cmp     edi, esi
jge     short loc_4B5595
mov     [eax+0B4h], bx
neg     ebx
mov     [eax+0B4h], bx

loc_4B5595:
mov     [eax+0B6h], dx
mov     esi, edx
neg     esi
mov     [eax+0B6h], si

loc_4B55A7:
mov     dx, [eax+0B4h]
add     [eax+56h], dx
and     byte ptr [eax+57h], 0Fh
mov     eax, ecx
pop     edi
pop     esi
retn
sub_4B5502 endp




sub_4B55BB proc near
cmp     ds:word_5F83D2, 0
jl      short loc_4B55D2
mov     ds:byte_5F88AD, 1
mov     eax, 1
retn

loc_4B55D2:
xor     eax, eax
retn
sub_4B55BB endp




sub_4B55D5 proc near
push    ecx
push    edx
mov     edx, eax
mov     ah, [eax+0BDh]
or      ah, 40h
mov     [edx+0BDh], ah
mov     byte ptr [edx+549h], 0FFh
test    byte ptr [edx], 1
jz      short loc_4B5635
cmp     byte ptr [edx+8], 1
jnz     short loc_4B562A
mov     cl, [edx+9]
test    cl, cl
jz      short loc_4B560F
cmp     cl, 0Eh
jnz     short loc_4B561A
cmp     ds:byte_77E807, 0
jz      short loc_4B561A

loc_4B560F:
mov     eax, edx
call    sub_4B61E1
test    eax, eax
jz      short loc_4B5635

loc_4B561A:
cmp     byte ptr [edx+9], 0Dh
jnz     short loc_4B562A
cmp     byte ptr [edx+0Ah], 2
jnz     short loc_4B562A
mov     byte ptr [edx+0Ah], 6

loc_4B562A:
cmp     byte ptr [edx+8], 3
jz      short loc_4B5635
xor     eax, eax
pop     edx
pop     ecx
retn

loc_4B5635:
mov     word ptr [edx+0B4h], 0
mov     eax, 16h
call    sub_4D8E2B
mov     eax, 17h
call    sub_4D8E2B
mov     eax, 1
pop     edx
pop     ecx
retn
sub_4B55D5 endp




sub_4B565A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
call    sub_4EDDAA
mov     byte ptr [ecx+549h], 0
mov     byte ptr [ecx+111h], 0
mov     byte ptr [ecx+71h], 0
mov     byte ptr [ecx+73h], 0
mov     dword ptr [ecx+188h], 0
mov     dword ptr [ecx+18Ch], 0
mov     dword ptr [ecx+190h], 0
mov     dword ptr [ecx+194h], 0
mov     byte ptr [ecx+168h], 0
mov     byte ptr [ecx+169h], 0
test    byte ptr [ecx], 1
jz      short loc_4B56CF
mov     byte ptr [ecx], 3
mov     byte ptr [ecx+6], 3
mov     dl, [ecx+8]
cmp     dl, 3
jnz     short loc_4B56CF
mov     [ecx+9], dl
pop     edx
pop     ecx
pop     ebx
retn

loc_4B56CF:
mov     byte ptr [ecx+0BDh], 8
pop     edx
pop     ecx
pop     ebx
retn
sub_4B565A endp




sub_4B56DA proc near
push    edx
mov     byte ptr [eax+174h], 0
and     byte ptr [eax+175h], 0FEh
mov     byte ptr [eax+177h], 0
mov     dl, [eax+0ACh]
mov     [eax+104h], dl
mov     dl, [eax+0A4h]
mov     [eax+100h], dl
pop     edx
retn
sub_4B56DA endp




sub_4B570A proc near
or      byte ptr [eax+175h], 1
retn
sub_4B570A endp

db 8Dh, 40h, 0
jpt_4B5750 dd offset def_4B5750 ; jump table for switch statement
dd offset def_4B5750
dd offset loc_4B5757
dd offset def_4B5750
dd offset def_4B5750
dd offset def_4B5750
dd offset def_4B5750
dd offset def_4B5750
dd offset loc_4B5757
dd offset def_4B5750
dd offset def_4B5750



sub_4B5741 proc near
push    edx
mov     dl, [eax+9]
cmp     dl, 0Ah         ; switch 11 cases
ja      short def_4B5750 ; jumptable 004B5750 default case, cases 0,1,3-7,9,10
and     edx, 0FFh
jmp     jpt_4B5750[edx*4] ; switch jump

loc_4B5757:             ; jumptable 004B5750 cases 2,8
mov     al, [eax+112h]
cmp     al, 1
jb      short loc_4B5769
jbe     short loc_4B5774
cmp     al, 3
jz      short loc_4B577B
jmp     short def_4B5750 ; jumptable 004B5750 default case, cases 0,1,3-7,9,10

loc_4B5769:
test    al, al
jnz     short def_4B5750 ; jumptable 004B5750 default case, cases 0,1,3-7,9,10
mov     eax, 61h ; 'a'
pop     edx
retn

loc_4B5774:
mov     eax, 63h ; 'c'
pop     edx
retn

loc_4B577B:
mov     eax, 62h ; 'b'
pop     edx
retn

def_4B5750:             ; jumptable 004B5750 default case, cases 0,1,3-7,9,10
mov     eax, 60h ; '`'
pop     edx
retn
sub_4B5741 endp

jpt_4B57C4 dd offset def_4B57C4 ; jump table for switch statement
dd offset def_4B57C4
dd offset loc_4B57CB
dd offset def_4B57C4
dd offset def_4B57C4
dd offset def_4B57C4
dd offset def_4B57C4
dd offset def_4B57C4
dd offset loc_4B57CB
dd offset def_4B57C4
dd offset def_4B57C4



sub_4B57B5 proc near
push    edx
mov     dl, [eax+9]
cmp     dl, 0Ah         ; switch 11 cases
ja      short def_4B57C4 ; jumptable 004B57C4 default case, cases 0,1,3-7,9,10
and     edx, 0FFh
jmp     jpt_4B57C4[edx*4] ; switch jump

loc_4B57CB:             ; jumptable 004B57C4 cases 2,8
mov     al, [eax+112h]
cmp     al, 1
jb      short loc_4B57DD
jbe     short loc_4B57E8
cmp     al, 3
jz      short loc_4B57EF
jmp     short def_4B57C4 ; jumptable 004B57C4 default case, cases 0,1,3-7,9,10

loc_4B57DD:
test    al, al
jnz     short def_4B57C4 ; jumptable 004B57C4 default case, cases 0,1,3-7,9,10
mov     eax, 41h ; 'A'
pop     edx
retn

loc_4B57E8:
mov     eax, 43h ; 'C'
pop     edx
retn

loc_4B57EF:
mov     eax, 42h ; 'B'
pop     edx
retn

def_4B57C4:             ; jumptable 004B57C4 default case, cases 0,1,3-7,9,10
mov     eax, 40h ; '@'
pop     edx
retn
sub_4B57B5 endp




sub_4B57FD proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, edx
mov     byte ptr [edx], 7
mov     byte ptr [edx+2], 80h
mov     byte ptr [edx+3], 2
xor     edx, edx
mov     dl, [eax+0Ah]
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
lea     edi, [esi+48h]
lea     esi, [ecx+eax*8+4A8h]
movsd
movsd
pop     edi
pop     esi
pop     ecx
retn
sub_4B57FD endp




sub_4B582D proc near
mov     byte ptr [edx], 3
mov     byte ptr [edx+2], 83h
mov     byte ptr [edx+3], 0
cmp     bx, 1
jb      short loc_4B5847
jbe     short loc_4B5868
cmp     bx, 2
jz      short loc_4B588D
retn

loc_4B5847:
test    bx, bx
jnz     short locret_4B58B1
mov     bx, [eax+14h]
mov     [edx+1Ch], bx
mov     bx, [eax+16h]
add     ebx, 10h
mov     [edx+1Eh], bx
mov     ax, [eax+18h]
mov     [edx+20h], ax
retn

loc_4B5868:
mov     bx, [eax+518h]
mov     [edx+1Ch], bx
mov     bx, [eax+51Ah]
add     ebx, 10h
mov     [edx+1Eh], bx
mov     ax, [eax+51Ch]
mov     [edx+20h], ax
retn

loc_4B588D:
mov     bx, [eax+500h]
mov     [edx+1Ch], bx
mov     bx, [eax+502h]
add     ebx, 10h
mov     [edx+1Eh], bx
mov     ax, [eax+504h]
mov     [edx+20h], ax

locret_4B58B1:
retn
sub_4B582D endp




sub_4B58B2 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, edx
xor     edx, edx

loc_4B58BA:
mov     ecx, esi
shl     ecx, 5
mov     ebx, edx
mov     cx, ds:word_5311F4[ecx+ebx*2]
mov     [eax+ebx*2+124h], cx
inc     edx
cmp     edx, 10h
jb      short loc_4B58BA
mov     dx, [eax+124h]
mov     bx, [eax+126h]
or      edx, ebx
mov     [eax+144h], dx
mov     dx, [eax+124h]
mov     [eax+146h], dx
mov     dx, [eax+12Ch]
mov     cx, [eax+12Eh]
or      edx, ecx
mov     [eax+148h], dx
mov     dx, [eax+12Eh]
mov     [eax+14Ah], dx
mov     dx, [eax+12Ch]
mov     si, [eax+12Eh]
or      edx, esi
mov     [eax+14Ch], dx
mov     dx, [eax+12Ch]
mov     [eax+14Eh], dx
mov     dx, [eax+124h]
mov     di, [eax+126h]
or      edx, edi
mov     [eax+150h], dx
mov     dx, [eax+124h]
mov     [eax+152h], dx
mov     bx, [eax+126h]
or      edx, ebx
mov     [eax+154h], dx
mov     dx, [eax+126h]
mov     [eax+156h], dx
mov     dx, [eax+12Ch]
mov     cx, [eax+12Eh]
or      edx, ecx
mov     [eax+158h], dx
mov     dx, [eax+12Ch]
mov     [eax+15Ah], dx
mov     si, [eax+12Eh]
or      edx, esi
mov     [eax+15Ch], dx
mov     dx, [eax+12Eh]
mov     [eax+15Eh], dx
mov     dx, [eax+124h]
mov     di, [eax+126h]
or      edx, edi
mov     [eax+160h], dx
mov     dx, [eax+126h]
mov     [eax+162h], dx
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4B58B2 endp




sub_4B59F6 proc near
push    edx
mov     edx, [eax+16Dh]
sar     edx, 18h
call    ds:funcs_4B5A00[edx*4]
pop     edx
retn
sub_4B59F6 endp




sub_4B5A09 proc near
push    edx
mov     edx, [eax+16Eh]
sar     edx, 18h
call    ds:funcs_4B5A13[edx*4]
pop     edx
retn
sub_4B5A09 endp

db 8Bh, 0C0h
jpt_4B5A5E dd offset loc_4B5A65 ; jump table for switch statement
dd offset loc_4B5A94
dd offset loc_4B5AFD
dd offset loc_4B5B58
dd offset loc_4B5B9F



sub_4B5A32 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edi, [eax+16Dh]
sar     edi, 18h
xor     ebx, ebx
mov     bx, [eax+11Ch]
mov     dl, [eax+178h]
cmp     dl, 4           ; switch 5 cases
ja      def_4B5A5E      ; jumptable 004B5A5E default case
xor     eax, eax
mov     al, dl
jmp     jpt_4B5A5E[eax*4] ; switch jump

loc_4B5A65:             ; jumptable 004B5A5E case 0
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     dh, [esi+100h]
cmp     dh, ds:byte_550F78[eax*4]
jnz     def_4B5A5E      ; jumptable 004B5A5E default case
add     dl, 2
mov     [esi+178h], dl

loc_4B5A88:
or      byte ptr [esi+174h], 10h
jmp     def_4B5A5E      ; jumptable 004B5A5E default case

loc_4B5A94:             ; jumptable 004B5A5E case 1
test    byte ptr [esi+174h], 4
jnz     short loc_4B5ABE
mov     edx, edi
mov     eax, edi
shl     eax, 2
sub     eax, edi
xor     ebx, ebx
mov     bl, ds:byte_550F78[eax*4]
xor     edx, edi
mov     dl, [esi+0ACh]
mov     eax, esi
call    sub_4DE83A

loc_4B5ABE:
mov     eax, esi
call    sub_4B57B5
mov     [esi+104h], al
mov     eax, edi
shl     eax, 2
sub     eax, edi
xor     ecx, ecx
mov     cl, ds:byte_550F78[eax*4]
xor     ebx, ebx
mov     bl, [esi+104h]
mov     al, [esi+174h]
and     al, 3
movsx   edx, al
mov     eax, esi
call    sub_4DE8EE
inc     byte ptr [esi+178h]
jmp     short loc_4B5A88

loc_4B5AFD:             ; jumptable 004B5A5E case 2
and     byte ptr [esi+174h], 0CFh
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 2
cmp     ds:byte_550F7B[eax], 0
jz      short loc_4B5B46
mov     edx, edi
cmp     word ptr [esi+edx*8+5FAh], 0
jle     short loc_4B5B46
xor     ecx, ecx
mov     cl, ds:byte_550F79[eax]
mov     eax, esi
call    sub_4EE64E
add     eax, ecx
xor     edx, edx
mov     dl, [esi+100h]
cmp     edx, eax
jz      short loc_4B5B52
jmp     def_4B5A5E      ; jumptable 004B5A5E default case

loc_4B5B46:
add     byte ptr [esi+178h], 2
jmp     def_4B5A5E      ; jumptable 004B5A5E default case

loc_4B5B52:
inc     byte ptr [esi+178h]

loc_4B5B58:             ; jumptable 004B5A5E case 3
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     dl, [esi+100h]
cmp     dl, ds:byte_550F7A[eax*4]
jnz     short loc_4B5B76
inc     byte ptr [esi+178h]
jmp     short def_4B5A5E ; jumptable 004B5A5E default case

loc_4B5B76:
xor     eax, eax
mov     ax, [esi+13Ch]
test    ebx, eax
jz      short def_4B5A5E ; jumptable 004B5A5E default case
mov     al, [esi+175h]
and     al, 3
cmp     al, 3
jnz     short def_4B5A5E ; jumptable 004B5A5E default case
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 2
jmp     short def_4B5A5E ; jumptable 004B5A5E default case

loc_4B5B9F:             ; jumptable 004B5A5E case 4
mov     eax, [esi+100h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4B5A5E ; jumptable 004B5A5E default case
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 0
test    edi, edi
jnz     short def_4B5A5E ; jumptable 004B5A5E default case
mov     word ptr [esi+44h], 0

def_4B5A5E:             ; jumptable 004B5A5E default case
test    edi, edi
jnz     short loc_4B5BF2
cmp     ds:byte_77E807, 0
jnz     short loc_4B5C13
cmp     dword ptr [esi+198h], 0
jz      short loc_4B5BF8

loc_4B5BDB:
mov     word ptr [esi+44h], 0FD00h

loc_4B5BE1:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4B527B

loc_4B5BF2:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B5BF8:
mov     di, [esi+44h]
add     edi, 80h
mov     [esi+44h], di
test    di, di
jle     short loc_4B5BE1
mov     word ptr [esi+44h], 0
jmp     short loc_4B5BE1

loc_4B5C13:
mov     word ptr [esi+44h], 0
jmp     short loc_4B5BF2
sub_4B5A32 endp

db 8Dh, 40h, 0
jpt_4B5C4D dd offset loc_4B5C54 ; jump table for switch statement
dd offset loc_4B5C93
dd offset loc_4B5C93
dd offset loc_4B5CA2



sub_4B5C2E proc near
push    ebx
push    ecx
push    edx
mov     ecx, [eax+16Dh]
sar     ecx, 18h
mov     bl, [eax+178h]
cmp     bl, 3           ; switch 4 cases
ja      def_4B5C4D      ; jumptable 004B5C4D default case
xor     edx, edx
mov     dl, bl
jmp     jpt_4B5C4D[edx*4] ; switch jump

loc_4B5C54:             ; jumptable 004B5C4D case 0
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     cl, [eax+100h]
cmp     cl, ds:byte_550F78[edx*4]
jnz     short loc_4B5C83
add     bl, 2
mov     [eax+178h], bl
or      byte ptr [eax+174h], 10h
cmp     ds:byte_77E807, 1
jnz     short loc_4B5C8B

loc_4B5C83:
mov     word ptr [eax+44h], 0
jmp     short def_4B5C4D ; jumptable 004B5C4D default case

loc_4B5C8B:
mov     word ptr [eax+44h], 0FD00h
jmp     short def_4B5C4D ; jumptable 004B5C4D default case

loc_4B5C93:             ; jumptable 004B5C4D cases 1,2
and     byte ptr [eax+174h], 0CFh
inc     byte ptr [eax+178h]
jmp     short def_4B5C4D ; jumptable 004B5C4D default case

loc_4B5CA2:             ; jumptable 004B5C4D case 3
mov     edx, [eax+100h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_4B5C4D ; jumptable 004B5C4D default case
mov     byte ptr [eax+174h], 0
mov     byte ptr [eax+177h], 0

def_4B5C4D:             ; jumptable 004B5C4D default case
mov     dx, [eax+44h]
add     edx, 0E0h
mov     [eax+44h], dx
test    dx, dx
jge     short loc_4B5CE4
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4B527B
pop     edx
pop     ecx
pop     ebx
retn

loc_4B5CE4:
mov     word ptr [eax+44h], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4B5C2E endp

jpt_4B5D32 dd offset loc_4B5D39 ; jump table for switch statement
dd offset loc_4B5D68
dd offset loc_4B5D68
dd offset loc_4B5DF0
dd offset loc_4B5E3B



sub_4B5D02 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
mov     edi, [eax+16Dh]
sar     edi, 18h
mov     ax, [eax+11Ch]
mov     [esp+18h+var_18], eax
mov     cl, [esi+178h]
cmp     cl, 4           ; switch 5 cases
ja      def_4B5D32      ; jumptable 004B5D32 default case
xor     eax, eax
mov     al, cl
jmp     jpt_4B5D32[eax*4] ; switch jump

loc_4B5D39:             ; jumptable 004B5D32 case 0
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     dl, [esi+100h]
cmp     dl, ds:byte_550F78[eax*4]
jnz     def_4B5D32      ; jumptable 004B5D32 default case
add     cl, 2
mov     [esi+178h], cl
or      byte ptr [esi+174h], 10h
jmp     def_4B5D32      ; jumptable 004B5D32 default case

loc_4B5D68:             ; jumptable 004B5D32 cases 1,2
and     byte ptr [esi+174h], 0CFh
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 2
mov     al, [esi+100h]
cmp     al, ds:byte_550F7A[ecx]
jb      short loc_4B5DC4
xor     ebx, ebx
mov     bl, ds:byte_550F79[ecx]
xor     edx, edx
mov     dl, [esi+0ACh]
mov     eax, esi
call    sub_4DE83A
mov     cl, ds:byte_550F79[ecx]
and     ecx, 0FFh
xor     ebx, ebx
mov     bl, [esi+104h]
mov     al, [esi+174h]
and     al, 3
movsx   edx, al
mov     eax, esi
call    sub_4DE8EE

loc_4B5DC4:
xor     eax, eax
mov     ax, [esi+13Ch]
xor     edx, edx
mov     dx, word ptr [esp+18h+var_18]
test    edx, eax
jz      short loc_4B5DE8
mov     eax, edi
cmp     word ptr [esi+eax*8+5FAh], 0
jg      def_4B5D32      ; jumptable 004B5D32 default case

loc_4B5DE8:
inc     byte ptr [esi+178h]
jmp     short loc_4B5E57

loc_4B5DF0:             ; jumptable 004B5D32 case 3
mov     edx, edi
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 2
xor     ebx, ebx
mov     bl, ds:byte_550F7A[ecx]
xor     edx, edi
mov     dl, [esi+0ACh]
mov     eax, esi
call    sub_4DE83A
mov     cl, ds:byte_550F7A[ecx]
and     ecx, 0FFh
xor     ebx, ebx
mov     bl, [esi+104h]
mov     al, [esi+174h]
and     al, 3
movsx   edx, al
mov     eax, esi
call    sub_4DE8EE
jmp     short loc_4B5DE8

loc_4B5E3B:             ; jumptable 004B5D32 case 4
mov     eax, [esi+100h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4B5D32 ; jumptable 004B5D32 default case
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 0

loc_4B5E57:
mov     byte ptr [esi+110h], 0

def_4B5D32:             ; jumptable 004B5D32 default case
cmp     edi, 0Ch
jnz     loc_4B5EE9
cmp     ds:byte_77E807, 0
jnz     loc_4B5EE3
mov     al, [esi+54Ch]
test    al, al
jz      short loc_4B5E9F
test    al, 2
jz      short loc_4B5E88
mov     word ptr [esi+44h], 0FD80h

loc_4B5E88:
test    byte ptr [esi+54Ch], 1
jz      short loc_4B5E98
mov     byte ptr [esi+110h], 0FFh

loc_4B5E98:
mov     byte ptr [esi+54Ch], 0

loc_4B5E9F:
mov     dh, [esi+9]
test    dh, dh
jz      short loc_4B5EB0
cmp     dh, 4
jz      short loc_4B5EB0
cmp     dh, 0Eh
jnz     short loc_4B5ED0

loc_4B5EB0:
mov     bx, [esi+44h]
add     ebx, 80h
mov     [esi+44h], bx
test    bx, bx
jle     short loc_4B5ED0
mov     word ptr [esi+44h], 0
mov     byte ptr [esi+110h], 0

loc_4B5ED0:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4B527B
jmp     short loc_4B5EE9

loc_4B5EE3:
mov     word ptr [esi+44h], 0

loc_4B5EE9:
cmp     byte ptr [esi+74h], 0
jz      short loc_4B5EFD
mov     eax, esi
call    sub_4B56DA
mov     byte ptr [esi+110h], 0

loc_4B5EFD:
add     esp, 4
jmp     loc_4B5BF2
sub_4B5D02 endp

align 2
jpt_4B5F35 dd offset loc_4B5F3C ; jump table for switch statement
dd offset loc_4B5F79
dd offset loc_4B5FA4
dd offset loc_4B5FD3



sub_4B5F16 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+16Dh]
sar     edx, 18h
mov     bl, [eax+178h]
cmp     bl, 3           ; switch 4 cases
ja      def_4B5F35      ; jumptable 004B5F35 default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_4B5F35[ecx*4] ; switch jump

loc_4B5F3C:             ; jumptable 004B5F35 case 0
mov     ecx, edx
shl     edx, 2
sub     edx, ecx
mov     cl, [eax+100h]
cmp     cl, ds:byte_550F78[edx*4]
jnz     short loc_4B5F61
inc     bl
mov     [eax+178h], bl
or      byte ptr [eax+174h], 10h

loc_4B5F61:
cmp     ds:byte_77E807, 1
jz      loc_4B5FEF
mov     word ptr [eax+44h], 90h
jmp     def_4B5F35      ; jumptable 004B5F35 default case

loc_4B5F79:             ; jumptable 004B5F35 case 1
and     byte ptr [eax+174h], 0CFh
mov     ecx, edx
shl     edx, 2
sub     edx, ecx
mov     bl, [eax+100h]
cmp     bl, ds:byte_550F79[edx*4]
jnz     short def_4B5F35 ; jumptable 004B5F35 default case
mov     word ptr [eax+44h], 0

loc_4B5F9C:
inc     byte ptr [eax+178h]
jmp     short def_4B5F35 ; jumptable 004B5F35 default case

loc_4B5FA4:             ; jumptable 004B5F35 case 2
mov     ecx, edx
shl     edx, 2
sub     edx, ecx
mov     bl, [eax+100h]
cmp     bl, ds:byte_550F7A[edx*4]
jb      short def_4B5F35 ; jumptable 004B5F35 default case
cmp     ds:byte_77E807, 1
jnz     short loc_4B5FCB
mov     word ptr [eax+44h], 0
jmp     short loc_4B5F9C

loc_4B5FCB:
mov     word ptr [eax+44h], 60h ; '`'
jmp     short loc_4B5F9C

loc_4B5FD3:             ; jumptable 004B5F35 case 3
mov     edx, [eax+100h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_4B5F35 ; jumptable 004B5F35 default case
mov     byte ptr [eax+174h], 0
mov     byte ptr [eax+177h], 0

loc_4B5FEF:
mov     word ptr [eax+44h], 0

def_4B5F35:             ; jumptable 004B5F35 default case
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4B527B
pop     edx
pop     ecx
pop     ebx
retn
sub_4B5F16 endp

db 8Bh, 0C0h
jpt_4B6048 dd offset loc_4B604F ; jump table for switch statement
dd offset loc_4B607E
dd offset loc_4B60E7
dd offset loc_4B6142
dd offset loc_4B618E



sub_4B601E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edi, [eax+16Eh]
sar     edi, 18h
mov     bx, [eax+11Ch]
mov     dl, [eax+178h]
cmp     dl, 4           ; switch 5 cases
ja      def_4B6048      ; jumptable 004B6048 default case
xor     eax, eax
mov     al, dl
jmp     jpt_4B6048[eax*4] ; switch jump

loc_4B604F:             ; jumptable 004B6048 case 0
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     dh, [esi+100h]
cmp     dh, ds:byte_550F78[eax*4]
jnz     def_4B6048      ; jumptable 004B6048 default case
add     dl, 2
mov     [esi+178h], dl

loc_4B6072:
or      byte ptr [esi+174h], 20h
jmp     def_4B6048      ; jumptable 004B6048 default case

loc_4B607E:             ; jumptable 004B6048 case 1
test    byte ptr [esi+174h], 4
jnz     short loc_4B60A8
mov     edx, edi
mov     eax, edi
shl     eax, 2
sub     eax, edi
xor     ebx, ebx
mov     bl, ds:byte_550F78[eax*4]
xor     edx, edi
mov     dl, [esi+0ACh]
mov     eax, esi
call    sub_4DE83A

loc_4B60A8:
mov     eax, esi
call    sub_4B5741
mov     [esi+104h], al
mov     eax, edi
shl     eax, 2
sub     eax, edi
xor     ecx, ecx
mov     cl, ds:byte_550F78[eax*4]
xor     ebx, ebx
mov     bl, [esi+104h]
mov     al, [esi+174h]
and     al, 3
movsx   edx, al
mov     eax, esi
call    sub_4DE8EE
inc     byte ptr [esi+178h]
jmp     short loc_4B6072

loc_4B60E7:             ; jumptable 004B6048 case 2
and     byte ptr [esi+174h], 0CFh
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 2
cmp     ds:byte_550F7B[eax], 0
jz      short loc_4B6130
mov     edx, edi
cmp     word ptr [esi+edx*8+5FAh], 0
jle     short loc_4B6130
xor     ecx, ecx
mov     cl, ds:byte_550F79[eax]
mov     eax, esi
call    sub_4EE64E
add     eax, ecx
xor     edx, edx
mov     dl, [esi+100h]
cmp     edx, eax
jz      short loc_4B613C
jmp     def_4B6048      ; jumptable 004B6048 default case

loc_4B6130:
add     byte ptr [esi+178h], 2
jmp     def_4B6048      ; jumptable 004B6048 default case

loc_4B613C:
inc     byte ptr [esi+178h]

loc_4B6142:             ; jumptable 004B6048 case 3
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     dl, [esi+100h]
cmp     dl, ds:byte_550F7A[eax*4]
jnz     short loc_4B6160
inc     byte ptr [esi+178h]
jmp     short def_4B6048 ; jumptable 004B6048 default case

loc_4B6160:
xor     edx, edx
mov     dx, [esi+13Ah]
xor     eax, eax
mov     ax, bx
test    eax, edx
jz      short def_4B6048 ; jumptable 004B6048 default case
mov     al, [esi+175h]
and     al, 5
cmp     al, 5
jnz     short def_4B6048 ; jumptable 004B6048 default case
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 1
jmp     short def_4B6048 ; jumptable 004B6048 default case

loc_4B618E:             ; jumptable 004B6048 case 4
mov     eax, [esi+100h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4B6048 ; jumptable 004B6048 default case
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 0
test    edi, edi
jnz     short def_4B6048 ; jumptable 004B6048 default case
mov     word ptr [esi+44h], 0

def_4B6048:             ; jumptable 004B6048 default case
test    edi, edi
jnz     loc_4B5BF2
cmp     ds:byte_77E807, 0
jnz     loc_4B5C13
cmp     dword ptr [esi+198h], 0
jz      loc_4B5BF8
mov     [esi+198h], edi
jmp     loc_4B5BDB
sub_4B601E endp




sub_4B61E1 proc near
push    edx
mov     edx, [eax+171h]
sar     edx, 18h
test    dl, 0C0h
jnz     short loc_4B61F9
cmp     byte ptr [eax+177h], 0
jz      short loc_4B6200

loc_4B61F9:
mov     eax, 1
pop     edx
retn

loc_4B6200:
xor     eax, eax
pop     edx
retn
sub_4B61E1 endp




sub_4B6204 proc near
neg     eax
cmp     eax, ds:dword_77E7A0
jbe     short loc_4B6214
mov     eax, 0FFFFFFFFh
retn

loc_4B6214:
xor     eax, eax
retn
sub_4B6204 endp




sub_4B6217 proc near
test    edx, edx
jnz     short locret_4B6267
mov     edx, ds:dword_77E7A0
add     edx, eax
test    eax, eax
jle     short loc_4B6240
mov     ds:dword_77E7A0, edx
cmp     edx, 0F423Fh
jbe     short locret_4B6267
mov     ds:dword_77E7A0, 0F423Fh
retn

loc_4B6240:
mov     ds:dword_77E7A0, edx
cmp     edx, 0F423Fh
jbe     short loc_4B6256
xor     edx, edx
mov     ds:dword_77E7A0, edx

loc_4B6256:
test    ebx, ebx
jz      short loc_4B6261
sub     ds:dword_77E7A8, eax
retn

loc_4B6261:
sub     ds:dword_77E7A4, eax

locret_4B6267:
retn
sub_4B6217 endp




sub_4B6268 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
imul    eax, edx, 6F4h
add     eax, offset byte_5F8364
add     [eax+6Eh], cx
mov     esi, [eax+6Ch]
sar     esi, 10h
mov     ebx, [eax+0AEh]
sar     ebx, 10h
cmp     esi, ebx
jle     short loc_4B629A
mov     bx, [eax+0B0h]
mov     [eax+6Eh], bx

loc_4B629A:
test    ecx, ecx
jge     short loc_4B62A8
test    edx, edx
jnz     short loc_4B62A8
sub     ds:dword_77E7D0, ecx

loc_4B62A8:
pop     esi
pop     ecx
pop     ebx
retn
sub_4B6268 endp




sub_4B62AC proc near
push    ebx
push    edx
mov     edx, offset unk_531274

loc_4B62B3:
mov     bx, [edx]
cmp     bx, 0FFFFh
jz      short loc_4B62DC
xor     eax, eax
mov     ax, bx
call    sub_47E888
test    eax, eax
jz      short loc_4B62D7
xor     eax, eax
mov     al, [edx+2]
call    sub_47EB4B
pop     edx
pop     ebx
retn

loc_4B62D7:
add     edx, 4
jmp     short loc_4B62B3

loc_4B62DC:
