loc_476AD8:
mov     al, bl
jmp     loc_4762C6
sub_476A32 endp




sub_476ADF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
cmp     byte ptr [ecx+8], 0
jnz     short loc_476B5D
or      byte ptr [ecx], 42h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 0C000C00h
mov     dword ptr [ecx+15Ch], 0C00h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ecx+48h], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

loc_476B5D:
mov     bl, [ecx+0Ch]
cmp     bl, 5
jge     short loc_476BC4
mov     edx, [ecx+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     edx, [ecx+16h]
sar     edx, 10h
add     eax, 1E00h
cmp     edx, eax
jle     short loc_476BA7
movsx   ax, bl
mov     edx, 5
sub     edx, eax
mov     eax, edx
shl     eax, 2
mov     [ecx+48h], ax
mov     edi, eax
neg     edi
mov     [ecx+48h], di
jmp     short loc_476BC4

loc_476BA7:
mov     dx, [ecx+48h]
test    dx, dx
jge     short loc_476BC4
mov     ebx, edx
add     ebx, 8
mov     [ecx+48h], bx
test    bx, bx
jle     short loc_476BC4
mov     word ptr [ecx+48h], 0

loc_476BC4:
mov     ax, [ecx+48h]
add     [ecx+18h], ax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_476BF5
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_476BFC

loc_476BF5:
mov     eax, ecx
call    sub_4DEADD

loc_476BFC:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_476ADF endp




sub_476C02 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+408h]
lea     edx, [eax+1E8h]
lea     ebx, [eax+64h]
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     word ptr [eax+15Eh], 4210h
call    rand_
mov     [edx+2], ax
mov     ah, [ecx+3]
cmp     ah, 2
jnz     short loc_476C55
cmp     byte ptr [ecx+8], 0
jz      short loc_476C55
or      [ecx], ah

loc_476C55:
xor     edx, edx
mov     dl, [ecx+8]
mov     eax, ecx
call    ds:funcs_476C5C[edx*4]
cmp     byte ptr [ecx+3], 2
jnz     short loc_476CC0
cmp     byte ptr [ecx+8], 0
jz      short loc_476CC0
cmp     byte ptr [ebx+3], 0
jz      short loc_476C8D
cmp     byte ptr [ebx], 0
jnz     short loc_476C8D
lea     edx, [ecx+14h]
mov     eax, 190h
call    sub_4D8BC3
mov     byte ptr [ebx+3], 0
jmp     short loc_476C93

loc_476C8D:
cmp     byte ptr [ebx+3], 0
jnz     short loc_476CA9

loc_476C93:
cmp     byte ptr [ebx], 0
jle     short loc_476CA9
lea     edx, [ecx+14h]
mov     eax, 191h
call    sub_4D8BC3
mov     byte ptr [ebx+3], 1

loc_476CA9:
mov     eax, [ecx+15Ch]
sar     eax, 10h
test    ah, 80h
jz      short loc_476CC0
cmp     byte ptr [ebx+2], 0
jnz     short loc_476CC0
and     byte ptr [ecx], 0FDh

loc_476CC0:
cmp     byte ptr [ecx+3], 2
jnz     short loc_476CD8
test    dword ptr [ebp+8], 0FFFFFFh
jz      short loc_476CD8
mov     word ptr [ecx+15Eh], 7FFFh

loc_476CD8:
mov     dword ptr [ebp+8], 0
jmp     loc_477723
sub_476C02 endp




sub_476CE4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     esi, [eax+408h]
lea     edi, [eax+0C4h]
lea     ebx, [eax+1E8h]
lea     ebp, [eax+64h]
call    sub_4DF838
or      byte ptr [ecx], 2
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     byte ptr [ecx+2], 37h ; '7'
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 67h ; 'g'
mov     dword ptr [ecx+158h], 1800180h
mov     dword ptr [ecx+15Ch], 180h
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     dword ptr [ecx+78h], offset unk_517A94
mov     byte ptr [esi+3Eh], 0
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     eax, [eax]
mov     al, [eax+0Ah]
mov     [ecx+73h], al
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     eax, [eax]
mov     al, [eax+0Bh]
xor     ah, ah
mov     [edi+4], ax
mov     [ebx+4], ah
mov     word ptr [ebx], 0
mov     byte ptr [ebx+5], 1Eh
mov     [ebp+3], ah
mov     [edi+6], ah
lea     eax, [esi+20h]
mov     ebx, 0FFFFFFA0h
mov     edx, 5
call    sub_4E19B9
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     byte ptr [ecx+8], 1
mov     dl, [ecx+3]
test    dl, dl
jnz     short loc_476E03
mov     [ecx+9], dl
mov     [ecx+0Ah], dl
mov     [ecx+0Fh], dl
mov     byte ptr [ecx+0ACh], 1
mov     word ptr [ecx+44h], 80h
mov     byte ptr [esi+3Dh], 78h ; 'x'
mov     [esi+3Ch], dl
jmp     short loc_476E1C

loc_476E03:
mov     byte ptr [ecx+8], 3
mov     word ptr [ecx+44h], 2D0h
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [esi+3Dh], 78h ; 'x'
mov     byte ptr [esi+3Ch], 0

loc_476E1C:
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+4Eh], 60h ; '`'
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [esi+8], 0
mov     eax, ecx
call    sub_476E4F
jmp     loc_477723
sub_476CE4 endp




sub_476E4F proc near

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
add     eax, 408h
mov     [esp+38h+var_20], eax
mov     eax, ebp
add     eax, 0C4h
mov     [esp+38h+var_1C], eax
lea     ecx, [ebp+1E8h]
lea     esi, [ebp+64h]
mov     ebx, offset byte_5F8364
and     byte ptr [eax+6], 0F7h
lea     eax, [ebp+428h]
mov     edx, ebp
call    sub_4E19CA
test    eax, eax
jz      short loc_476E99
mov     eax, [esp+38h+var_1C]
or      byte ptr [eax+6], 8

loc_476E99:
mov     al, [ecx+5]
test    al, al
jz      short loc_476EA7
mov     ah, al
dec     ah
mov     [ecx+5], ah

loc_476EA7:
mov     dx, [ecx]
test    dx, dx
jz      short loc_476EB5
mov     edi, edx
dec     edi
mov     [ecx], di

loc_476EB5:
mov     eax, [esp+38h+var_20]
mov     eax, [eax+8]
and     eax, 0FFFFFFh
jz      loc_4770A7
mov     dh, [ebp+9]
cmp     dh, 1
jnz     short loc_476ED2
add     [ecx+4], dh

loc_476ED2:
mov     dx, [ebp+6Eh]
mov     [ebp+0B2h], dx
sub     edx, eax
mov     [ebp+6Eh], dx
add     [ecx], ax
cmp     word ptr [ebp+6Eh], 0
jg      short loc_476EFE
mov     eax, [esp+38h+var_1C]
and     byte ptr [eax+6], 0FDh
mov     byte ptr [ebp+9], 7
jmp     loc_4772AF

loc_476EFE:
mov     word ptr [ebp+15Eh], 7FFFh
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 10h
jnz     short loc_476F2D
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
xor     edx, edx
mov     dl, [eax+9]
xor     eax, eax
mov     ax, [ecx]
cmp     eax, edx
jge     short loc_476F3B

loc_476F2D:
mov     eax, [esp+38h+var_20]
test    byte ptr [eax+0Bh], 20h
jz      loc_476FE5

loc_476F3B:
cmp     byte ptr [ebp+9], 5
jz      loc_4772AF
lea     edi, [ebp+14h]
mov     edx, edi
mov     eax, 0A2h
call    sub_4D8BC3
mov     eax, [esp+38h+var_1C]
mov     dl, [eax+6]
or      dl, 10h
mov     [eax+6], dl
mov     dh, dl
and     dh, 0DFh
mov     [eax+6], dh
mov     word ptr [ecx], 0
mov     byte ptr [ecx+4], 0
mov     byte ptr [ecx+5], 1Eh
mov     byte ptr [ebp+9], 6
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+38h+var_20]
add     edx, 10h
xor     ecx, ecx
mov     eax, edi
call    sub_4DE726
mov     edx, eax
mov     word ptr [ebp+44h], 120h
mov     word ptr [ebp+46h], 0FEE0h
mov     ecx, [esp+38h+var_1C]
and     byte ptr [ecx+6], 0FDh
add     dh, 8
and     dh, 0Fh
mov     [ebp+56h], dx
test    eax, 0FFFF0000h
jnz     short loc_476FD8
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0ACh], 8

loc_476FC2:
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     loc_4772AF

loc_476FD8:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 0Ah
jmp     short loc_476FC2

loc_476FE5:
lea     edi, [ebp+14h]
mov     edx, edi
mov     eax, 0A0h
call    sub_4D8BC3
mov     dh, [ecx+5]
test    dh, dh
jz      short loc_47703C
cmp     byte ptr [ecx+4], 2
jnz     loc_4772AF
cmp     byte ptr [ebp+9], 5
jz      loc_4772AF
mov     byte ptr [ebp+9], 5
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0ACh], 6
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
mov     eax, [esp+38h+var_1C]
or      byte ptr [eax+6], 40h
jmp     loc_4772AF

loc_47703C:
mov     byte ptr [ecx+5], 1Eh
mov     [ecx+4], dh
push    400h
mov     eax, [ebx+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebx+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
lea     eax, [ebp+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jnz     loc_4772AF
cmp     byte ptr [ebp+9], 8
jz      loc_4772AF
mov     byte ptr [ebp+9], 6
mov     byte ptr [ebp+0Ah], 4
mov     ecx, [esp+38h+var_20]
mov     ecx, [ecx+38h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, (offset dword_5F8376+2)
mov     eax, edi
call    sub_4DE552
mov     byte ptr [ebp+0ACh], 0Dh
jmp     loc_476FC2

loc_4770A7:
mov     dl, [ebp+9]
cmp     dl, 2
jz      loc_4772AF
cmp     dl, 3
jz      loc_4772AF
cmp     dl, 4
jz      loc_4772AF
cmp     dl, 5
jz      loc_4772AF
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 10h
jnz     loc_4772AF
cmp     byte ptr [ebp+9], 8
jz      loc_4772AF
mov     eax, [esp+38h+var_20]
mov     cl, [eax+3Eh]
test    cl, cl
jz      short loc_4770F8
mov     ch, cl
dec     ch
mov     [eax+3Eh], ch

loc_4770F8:
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 8
jz      loc_477283
cmp     byte ptr [ebp+9], 1
jz      loc_477262
push    400h
mov     eax, [ebx+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebx+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
lea     eax, [ebp+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      loc_4771FA
mov     ecx, [ebp+80h]
cmp     ecx, 120000h
jbe     short loc_477155
mov     byte ptr [ebp+9], 1
mov     byte ptr [ebp+0Ah], 0
jmp     loc_477262

loc_477155:
cmp     ecx, 44AA2h
jnb     short loc_47718F
mov     eax, [esp+38h+var_20]
mov     cl, [eax+3Eh]
test    cl, cl
jnz     short loc_47718F
cmp     byte ptr [ebp+3], 2
jz      short loc_47717A
mov     byte ptr [ebp+9], 3
mov     [ebp+0Ah], cl
jmp     loc_477258

loc_47717A:
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Ah], 5
mov     [esi+2], cl
mov     [esi+1], cl
mov     [esi], cl
jmp     loc_477258

loc_47718F:
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 6
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 80h
jnz     short loc_4771A9
mov     byte ptr [eax+7], 0
or      byte ptr [eax+6], 80h

loc_4771A9:
mov     eax, [esp+38h+var_20]
mov     word ptr [eax+3Ah], 10h
cmp     byte ptr [ebp+3], 2
jz      loc_477262
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 1
jnz     loc_477262
mov     byte ptr [ebp+9], 4
mov     byte ptr [ebp+0ACh], 5
mov     bh, [eax+6]
or      bh, 3
mov     [eax+6], bh
mov     cl, bh
and     cl, 7Fh
mov     [eax+6], cl
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_477262

loc_4771FA:
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 6
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 80h
jnz     short loc_477214
mov     byte ptr [eax+7], 0
or      byte ptr [eax+6], 80h

loc_477214:
mov     eax, [esp+38h+var_20]
mov     word ptr [eax+3Ah], 10h
cmp     dword ptr [ebp+80h], 44AA2h
jnb     short loc_477262
mov     dh, [eax+3Eh]
test    dh, dh
jnz     short loc_477262
cmp     byte ptr [ebp+3], 2
jz      short loc_477240
mov     byte ptr [ebp+9], 3
mov     [ebp+0Ah], dh
jmp     short loc_477250

loc_477240:
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Ah], 5
mov     [esi+2], dh
mov     [esi+1], dh
mov     [esi], dh

loc_477250:
mov     eax, [esp+38h+var_1C]
and     byte ptr [eax+6], 7Fh

loc_477258:
mov     eax, [esp+38h+var_20]
mov     word ptr [eax+3Ah], 80h

loc_477262:
cmp     byte ptr [ebp+9], 0
jnz     short loc_4772AF
cmp     byte ptr [ebp+0Ah], 6
jnz     short loc_4772AF
cmp     byte ptr [ebp+0ACh], 1
jz      short loc_4772AF
mov     byte ptr [ebp+0ACh], 1
jmp     loc_476FC2

loc_477283:
mov     dh, [ebp+9]
test    dh, dh
jnz     short loc_4772AF
cmp     byte ptr [ebp+0Ah], 6
jnz     short loc_4772AF
mov     [ebp+0Ah], dh
mov     [ebp+0Fh], dh
mov     word ptr [ebp+44h], 80h
mov     eax, [esp+38h+var_20]
mov     byte ptr [eax+3Dh], 78h ; 'x'
mov     [eax+3Ch], dh
mov     eax, [esp+38h+var_1C]
and     byte ptr [eax+6], 7Eh

loc_4772AF:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4772B6[edx*4]
lea     edx, [ebp+14h]
mov     cl, [ebp+0A6h]
test    cl, 4
jz      short loc_4772D2
mov     eax, 159h
jmp     short loc_4772DC

loc_4772D2:
test    cl, 8
jz      short loc_4772E1
mov     eax, 15Ah

loc_4772DC:
call    sub_4D8BC3

loc_4772E1:
mov     al, [ebp+9]
cmp     al, 5
jz      short loc_4772F7
cmp     al, 6
jz      short loc_4772F7
cmp     al, 7
jz      short loc_4772F7
mov     eax, ebp
call    sub_4787AB

loc_4772F7:
cmp     byte ptr [ebp+3], 2
jnz     short loc_477357
mov     eax, [ebp+15Ch]
sar     eax, 10h
test    ah, 80h
jz      short loc_477315
cmp     byte ptr [esi+2], 0
jnz     short loc_477315
and     byte ptr [ebp+0], 0FDh

loc_477315:
mov     eax, [esp+38h+var_20]
add     eax, 8
test    byte ptr [ebp+0], 2
jz      short loc_477344
mov     edi, [esp+38h+var_20]
lea     esi, [ebp+190h]
movsd
movsd
push    0

loc_477330:
push    offset unk_800000
mov     edx, [ebp+70h]
sar     edx, 18h
or      edx, 4080000h
push    edx
jmp     short loc_47737D

loc_477344:
mov     edi, [esp+38h+var_20]
lea     esi, [ebp+190h]
movsd
movsd
push    80h
jmp     short loc_477330

loc_477357:
mov     edi, [esp+38h+var_20]
lea     esi, [ebp+190h]
movsd
movsd
push    0
push    offset unk_800000
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
mov     eax, [esp+44h+var_20]
add     eax, 8

loc_47737D:
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 78h ; 'x'
mov     eax, [esp+4Ch+var_20]
call    sub_4E01FC
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 2
jz      loc_4774B7
xor     edx, edx
mov     [esp+38h+var_28], dx
mov     [esp+38h+var_26], 738h
mov     [esp+38h+var_24], 0FFD0h
lea     eax, [ebp+258h]
mov     ebx, esp
lea     edx, [esp+38h+var_28]
call    sub_4EF1FB
mov     ax, [ebp+1A0h]
add     eax, [esp+38h+var_38]
mov     edx, [esp+38h+var_20]
mov     [edx], ax
mov     dx, [ebp+1A2h]
add     edx, [esp+38h+var_34]
mov     eax, [esp+38h+var_20]
mov     [eax+2], dx
mov     dx, [ebp+1A4h]
add     edx, [esp+38h+var_30]
mov     eax, [esp+38h+var_20]
mov     [eax+4], dx
push    80h
push    0
xor     eax, eax
mov     edx, [esp+40h+var_1C]
mov     ax, [edx+4]
or      eax, 5080000h
push    eax
mov     esi, [esp+44h+var_20]
add     esi, 18h
push    esi
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 3Ch ; '<'
mov     eax, [esp+4Ch+var_20]
call    sub_4E01FC
lea     eax, [ebp+2B8h]
mov     ebx, esp
lea     edx, [esp+38h+var_28]
call    sub_4EF1FB
mov     dx, [ebp+1B0h]
add     edx, [esp+38h+var_38]
mov     eax, [esp+38h+var_20]
mov     [eax], dx
mov     dx, [ebp+1B2h]
mov     ecx, [esp+38h+var_34]
add     edx, ecx
mov     [eax+2], dx
mov     ax, [ebp+1B4h]
add     eax, [esp+38h+var_30]
mov     edx, [esp+38h+var_20]
mov     [edx+4], ax
push    80h
push    0
xor     eax, eax
mov     edx, [esp+40h+var_1C]
mov     ax, [edx+4]
or      eax, 5080000h
push    eax
push    esi
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 3Ch ; '<'
mov     eax, [esp+4Ch+var_20]
call    sub_4E01FC

loc_4774B7:
cmp     byte ptr [ebp+3], 2
jz      short loc_4774D6
test    byte ptr [ebp+0], 2
jz      short loc_4774D6
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 0A0h
mov     eax, ebp
call    sub_4ED88B

loc_4774D6:
add     esp, 20h
jmp     loc_477723
sub_476E4F endp



; Attributes: thunk

sub_4774DE proc near
jmp     sub_4DE2F6
sub_4774DE endp




sub_4774E3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [eax+0C4h]
lea     esi, [eax+64h]
cmp     dword ptr [eax+80h], 120000h
jbe     short loc_477511
cmp     ds:byte_77E7D4, 1Dh
jnz     short loc_47753B
cmp     byte ptr ds:dword_77E7D5, 2
jnz     short loc_47753B

loc_477511:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 5
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0ACh], 6
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
or      byte ptr [edi+6], 40h
jmp     short loc_477542

loc_47753B:
mov     eax, ecx
call    sub_4DEADD

loc_477542:
cmp     byte ptr [ecx+3], 2
jnz     loc_478689
mov     word ptr [ecx+15Eh], 0
or      byte ptr [ecx+15Fh], 80h
mov     byte ptr [esi+2], 0
mov     dl, [esi+2]
mov     [esi+1], dl
mov     [esi], dl
jmp     loc_478689
sub_4774E3 endp




sub_47756D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+64h]
xor     ebx, ebx
mov     bl, [eax+0Ah]
call    ds:funcs_47757A[ebx*4]
cmp     byte ptr [ecx+3], 2
jnz     short loc_4775EF
mov     bl, [edx+1]
and     bl, 1Fh
movsx   bx, bl
mov     eax, ebx
shl     eax, 5
mov     bl, [edx]
and     bl, 1Fh
movsx   bx, bl
or      eax, ebx
mov     bl, [edx+2]
and     bl, 1Fh
movsx   bx, bl
shl     ebx, 0Ah
or      eax, ebx
mov     [ecx+15Eh], ax
sub     byte ptr [edx], 4
sub     byte ptr [edx+1], 4
cmp     byte ptr [edx], 0
jge     short loc_4775D1
mov     byte ptr [edx], 0
mov     byte ptr [edx+1], 0
or      byte ptr [ecx+15Fh], 80h

loc_4775D1:
mov     ecx, [ecx+15Ch]
sar     ecx, 10h
test    ch, 80h
jz      short loc_4775EF
mov     bl, [edx+2]
dec     bl
mov     [edx+2], bl
test    bl, bl
jge     short loc_4775EF
mov     byte ptr [edx+2], 0

loc_4775EF:
pop     edx
pop     ecx
pop     ebx
retn
sub_47756D endp




sub_4775F3 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
lea     edx, [eax+408h]
mov     [esp+1Ch+var_1C], edx
lea     edx, [eax+0C4h]
lea     esi, [eax+1E8h]
test    byte ptr [edx+1], 0Fh
jz      short loc_47766E
mov     dx, [ebp+56h]
add     dh, 8
and     dh, 0Fh
mov     esi, [esp+1Ch+var_1C]
mov     [esi+38h], dx
mov     byte ptr [ebp+0Ah], 5
mov     esi, [ebp+54h]
sar     esi, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+36h]
sar     edx, 10h
cmp     esi, edx
jle     short loc_47764A
mov     byte ptr [ebp+0ACh], 0Eh
jmp     short loc_477651

loc_47764A:
mov     byte ptr [ebp+0ACh], 0Dh

loc_477651:
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_47782A
jmp     loc_477720

loc_47766E:
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     edx, [esp+1Ch+var_1C]
mov     bl, [edx+3Dh]
test    bl, bl
jnz     loc_477719
mov     cl, [ebp+0A6h]
cmp     cl, 1
jnz     loc_477720
test    [esi+2], cl
jz      short loc_4776CE
mov     byte ptr [ebp+0Ah], 3
mov     byte ptr [ebp+0Dh], 80h
mov     [ebp+0Eh], bl
mov     byte ptr [ebp+0Fh], 3
mov     edi, edx
lea     edi, [edi+30h]
lea     esi, [ebp+14h]
movsd
movsd
mov     dx, [ebp+56h]
mov     esi, [esp+1Ch+var_1C]
mov     [esi+38h], dx
mov     byte ptr [esi+3Dh], 0Ah
mov     [esi+3Ch], bl
jmp     short loc_477720

loc_4776CE:
cmp     byte ptr [ebp+0Fh], 0
jnz     short loc_4776D7
add     [edx+3Ch], cl

loc_4776D7:
mov     edx, [esp+1Ch+var_1C]
cmp     byte ptr [edx+3Ch], 1
jz      short loc_4776EA
mov     byte ptr [edx+3Dh], 78h ; 'x'
mov     byte ptr [ebp+0Fh], 0
jmp     short loc_477720

loc_4776EA:
mov     byte ptr [ebp+0Ah], 3
mov     byte ptr [ebp+0Dh], 80h
mov     byte ptr [ebp+0Eh], 0
mov     byte ptr [ebp+0Fh], 3
mov     edi, edx
lea     edi, [edi+30h]
lea     esi, [ebp+14h]
movsd
movsd
mov     dx, [ebp+56h]
mov     esi, [esp+1Ch+var_1C]
mov     [esi+38h], dx
mov     byte ptr [esi+3Dh], 0Ah
mov     byte ptr [esi+3Ch], 0
jmp     short loc_477720

loc_477719:
mov     bh, bl
dec     bh
mov     [edx+3Dh], bh

loc_477720:
add     esp, 4

loc_477723:
pop     ebp
jmp     loc_478689
sub_4775F3 endp




sub_477729 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0Eh], 0
jnz     short loc_477765
mov     ecx, [edx+36h]
sar     ecx, 10h
sub     ecx, 400h
and     ecx, 0FFFh
mov     ebx, [eax+54h]
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_47775E

loc_477754:
mov     byte ptr [eax+0Ah], 2
mov     byte ptr [edx+3Dh], 5
jmp     short loc_477786

loc_47775E:
sub     word ptr [eax+56h], 40h ; '@'
jmp     short loc_477786

loc_477765:
mov     ecx, [edx+36h]
sar     ecx, 10h
add     ecx, 400h
and     ecx, 0FFFh
mov     ebx, [eax+54h]
sar     ebx, 10h
cmp     ebx, ecx
jz      short loc_477754
add     word ptr [eax+56h], 40h ; '@'

loc_477786:
and     byte ptr [eax+57h], 0Fh
pop     edx
pop     ecx
pop     ebx
retn
sub_477729 endp




sub_47778E proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
lea     ecx, [eax+0C4h]
mov     bl, [edx+3Dh]
dec     bl
mov     [edx+3Dh], bl
jnz     short loc_4777CE
mov     [eax+0Ah], bl
mov     word ptr [eax+44h], 80h
mov     byte ptr [edx+3Dh], 78h ; 'x'
and     byte ptr [ecx+6], 0FEh
mov     byte ptr [eax+0ACh], 1

loc_4777BF:
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B

loc_4777CE:
pop     edx
pop     ecx
pop     ebx
retn
sub_47778E endp




sub_4777D2 proc near
push    ebx
push    ecx
push    edx
lea     ecx, [eax+408h]
lea     edx, [eax+1E8h]
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [ecx+3Dh], 0Ah
test    byte ptr [edx+2], 1
jz      short loc_4777FC
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0ACh], 0Dh
jmp     short loc_4777BF

loc_4777FC:
mov     byte ptr [eax+0Eh], 1
mov     byte ptr [eax+0ACh], 0Eh
jmp     short loc_4777BF
sub_4777D2 endp




sub_477809 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bl, [eax+3Dh]
test    bl, bl
jnz     short loc_477820
mov     byte ptr [edx+0Ah], 1
pop     edx
pop     ebx
retn

loc_477820:
mov     bh, bl
dec     bh
mov     [eax+3Dh], bh
pop     edx
pop     ebx
retn
sub_477809 endp




sub_47782A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+408h]
add     eax, 0C4h
mov     ebx, [ecx+54h]
sar     ebx, 10h
mov     esi, [edx+36h]
sar     esi, 10h
cmp     ebx, esi
jnz     short loc_477882

loc_47784B:
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Fh], 0
mov     word ptr [ecx+44h], 80h
mov     byte ptr [edx+3Ch], 0
and     byte ptr [eax+6], 0FEh
mov     byte ptr [ecx+0ACh], 1
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, esi
mov     eax, ecx
call    sub_4DE96B

loc_477879:
and     byte ptr [ecx+57h], 0Fh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_477882:
jle     short loc_47788C
sub     word ptr [ecx+56h], 80h
jmp     short loc_477879

loc_47788C:
add     word ptr [ecx+56h], 80h
jmp     short loc_477879
sub_47782A endp




sub_477894 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
add     eax, 408h
lea     edi, [esi+0C4h]
cmp     byte ptr [esi+3], 2
jnz     short loc_47790F
mov     dh, [esi+9]
test    dh, dh
jnz     short loc_47790F
cmp     byte ptr [esi+0Ah], 6
jnz     short loc_47790F
cmp     byte ptr [edi+7], 0B4h
jnb     short loc_4778FC
mov     ecx, [eax+38h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
inc     byte ptr [edi+7]
jmp     loc_478689

loc_4778FC:
mov     [edi+7], dh
and     byte ptr [edi+6], 7Fh
mov     byte ptr [esi+9], 1
mov     [esi+0Ah], dh
jmp     loc_478689

loc_47790F:
mov     ecx, [eax+38h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
jmp     loc_478689
sub_477894 endp




sub_477949 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+408h]
lea     edx, [eax+64h]
movzx   esi, byte ptr [eax+0Ah]
call    ds:funcs_47795C[esi*4]
cmp     byte ptr [ecx+3], 2
jnz     loc_477A00
mov     al, [ebx+3Fh]
test    al, al
jnz     short loc_4779DD
mov     bl, [edx+1]
and     bl, 1Fh
movsx   bx, bl
shl     ebx, 5
mov     al, [edx]
and     al, 1Fh
movsx   si, al
or      ebx, esi
mov     al, [edx+2]
and     al, 1Fh
movsx   si, al
shl     esi, 0Ah
or      ebx, esi
mov     [ecx+15Eh], bx
inc     byte ptr [edx+2]
mov     al, [ecx+15Fh]
or      al, 80h
mov     [ecx+15Fh], al
cmp     byte ptr [edx+2], 10h
jl      short loc_477A00
mov     bl, al
and     bl, 7Fh
mov     [ecx+15Fh], bl
mov     byte ptr [edx+2], 10h
mov     bh, [edx]
cmp     bh, 10h
jz      short loc_477A00
mov     cl, bh
add     cl, 4
mov     [edx], cl
add     byte ptr [edx+1], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4779DD:
mov     ah, al
dec     ah
mov     [ebx+3Fh], ah
mov     word ptr [ecx+15Eh], 0
or      byte ptr [ecx+15Fh], 80h
mov     byte ptr [edx+2], 0
mov     al, [edx+2]
mov     [edx+1], al
mov     [edx], al

loc_477A00:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_477949 endp




sub_477A05 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+408h]
lea     edi, [eax+1E8h]
mov     byte ptr [eax+0ACh], 0
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [esi+3Dh], 0Ah
mov     byte ptr [edi+6], 5Ah ; 'Z'
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [esi+3Fh], 1
jmp     loc_478689
sub_477A05 endp




sub_477A43 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
lea     edi, [eax+64h]
mov     byte ptr [ecx+3Fh], 1
mov     ah, [ecx+3Dh]
test    ah, ah
jz      short loc_477A8D
mov     dh, ah
dec     dh
mov     [ecx+3Dh], dh
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     loc_478689

loc_477A8D:
mov     byte ptr [esi+0ACh], 2
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
cmp     byte ptr [esi+3], 2
jnz     short loc_477ABA
mov     byte ptr [ecx+3Fh], 7
mov     byte ptr [edi], 0
mov     byte ptr [edi+1], 0
mov     byte ptr [edi+2], 0

loc_477ABA:
mov     byte ptr [esi+0Ah], 2
mov     word ptr [esi+44h], 2D0h
mov     word ptr [ecx+3Ah], 10h
jmp     loc_478689
sub_477A43 endp




sub_477ACF proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
lea     edi, [esi+0C4h]
lea     ebp, [esi+1E8h]
push    400h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
mov     ecx, offset byte_5F8364
add     ecx, 1Ch
mov     edx, [esi+54h]
sar     edx, 10h
lea     eax, [esi+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      short loc_477B22
mov     ah, [ebp+6]
test    ah, ah
jnz     short loc_477B76

loc_477B22:
cmp     byte ptr [esi+3], 2
jz      short loc_477B47

loc_477B28:
mov     byte ptr [esi+0Ah], 3
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+3Dh], 14h
or      byte ptr [edi+6], 80h
mov     byte ptr [edi+7], 0
mov     eax, esi
call    sub_477BD8
jmp     loc_477720

loc_477B47:
mov     bh, [ebp+6]
test    bh, bh
jnz     short loc_477B28
mov     byte ptr [esi+9], 5
mov     [esi+0Ah], bh
mov     byte ptr [esi+0ACh], 6
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
or      byte ptr [edi+6], 40h
jmp     loc_477720

loc_477B76:
mov     dl, ah
dec     dl
mov     [ebp+6], dl
cmp     dword ptr [esi+80h], 2BF20h
jnb     short loc_477BCC
mov     byte ptr [esi+9], 2
mov     byte ptr [esi+0ACh], 4
or      byte ptr [edi+6], 2
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ch]
xor     ah, ah
mov     [edi+4], ax
mov     eax, esi
call    sub_477CBC
jmp     loc_477720

loc_477BCC:
mov     eax, esi
call    sub_477894
jmp     loc_477720
sub_477ACF endp




sub_477BD8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
lea     edx, [eax+0C4h]
test    byte ptr [edx+1], 0Fh
jz      short loc_477C4A
mov     byte ptr [esi+9], 0
mov     word ptr [esi+44h], 80h
mov     byte ptr [esi+0Ah], 5
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     [edi+38h], ax
mov     eax, [esi+54h]
sar     eax, 10h
mov     edx, [edi+36h]
sar     edx, 10h
cmp     eax, edx
jle     short loc_477C26
mov     byte ptr [esi+0ACh], 0Eh
jmp     short loc_477C2D

loc_477C26:
mov     byte ptr [esi+0ACh], 0Dh

loc_477C2D:
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     eax, esi
call    sub_47782A
jmp     loc_478689

loc_477C4A:
mov     dl, [edi+3Dh]
test    dl, dl
jz      short loc_477C6A
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
dec     byte ptr [edi+3Dh]
jmp     loc_478689

loc_477C6A:
cmp     byte ptr [esi+0A6h], 1
jz      short loc_477C89
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
jmp     loc_478689

loc_477C89:
mov     [esi+9], dl
mov     word ptr [esi+44h], 80h
jmp     loc_478689
sub_477BD8 endp




sub_477C97 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
mov     bl, [edx+3Dh]
test    bl, bl
jz      short loc_477CB0
mov     bh, bl
dec     bh
mov     [edx+3Dh], bh
pop     edx
pop     ebx
retn

loc_477CB0:
mov     [eax+9], bl
mov     word ptr [eax+44h], 80h
pop     edx
pop     ebx
retn
sub_477C97 endp




sub_477CBC proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     edx, eax
lea     esi, [eax+408h]
lea     ebx, [eax+0C4h]
lea     ecx, [eax+64h]
cmp     byte ptr [eax+0A6h], 0
jnz     short loc_477CEB
mov     word ptr [esi+3Ah], 20h ; ' '
mov     eax, edx
call    sub_477894

loc_477CEB:
cmp     byte ptr [edx+3], 2
jnz     short loc_477D50
mov     al, [ecx+1]
and     al, 1Fh
cbw
shl     eax, 5
mov     [esp+18h+var_18], eax
mov     al, [ecx]
and     al, 1Fh
cbw
mov     edi, [esp+18h+var_18]
or      edi, eax
mov     al, [ecx+2]
and     al, 1Fh
cbw
shl     eax, 0Ah
or      edi, eax
mov     [edx+15Eh], di
inc     byte ptr [ecx+2]
mov     al, [edx+15Fh]
or      al, 80h
mov     [edx+15Fh], al
cmp     byte ptr [ecx+2], 10h
jl      short loc_477D50
and     al, 7Fh
mov     [edx+15Fh], al
mov     byte ptr [ecx+2], 10h
mov     ah, [ecx]
cmp     ah, 10h
jz      short loc_477D50
mov     al, ah
add     al, 4
mov     [ecx], al
add     byte ptr [ecx+1], 4

loc_477D50:
mov     ecx, [edx+0A4h]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jnz     short loc_477D8E
cmp     byte ptr [edx+3], 2
jz      short loc_477D86
and     byte ptr [ebx+6], 0FDh
mov     byte ptr [edx+9], 0
mov     word ptr [edx+44h], 80h
mov     word ptr [esi+3Ah], 10h
mov     byte ptr [esi+3Eh], 3Ch ; '<'
or      byte ptr [ebx+6], 80h
mov     byte ptr [ebx+7], 0
jmp     short loc_477D8E

loc_477D86:
mov     byte ptr [edx+9], 8
mov     byte ptr [edx+0Ah], 0

loc_477D8E:
add     esp, 4
jmp     loc_478689
sub_477CBC endp




sub_477D96 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_477D9C[edx*4]
pop     edx
retn
sub_477D96 endp




sub_477DA5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
lea     edi, [eax+0C4h]
mov     ecx, [ecx+38h]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
add     eax, 14h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     loc_478689
mov     byte ptr [esi+0ACh], 3
or      byte ptr [edi+6], 2
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Bh]
xor     ah, ah
mov     [edi+4], ax
mov     byte ptr [esi+0Ah], 1
jmp     loc_478689
sub_477DA5 endp




sub_477E23 proc near
push    edx
mov     dl, [eax+0A6h]
cmp     dl, 2
jnz     short loc_477E32
mov     [eax+0Ah], dl

loc_477E32:
pop     edx
retn
sub_477E23 endp




sub_477E34 proc near
add     byte ptr [eax+475h], 8
cmp     byte ptr [eax+0A6h], 1
jnz     short locret_477E48
mov     byte ptr [eax+0Ah], 3

locret_477E48:
retn
sub_477E34 endp




sub_477E49 proc near
push    ebx
push    edx
lea     edx, [eax+0C4h]
mov     bl, [eax+475h]
sub     bl, 8
mov     [eax+475h], bl
cmp     bl, 20h ; ' '
ja      short loc_477E6D
mov     byte ptr [eax+0Ah], 4
and     byte ptr [edx+6], 0FDh

loc_477E6D:
pop     edx
pop     ebx
retn
sub_477E49 endp




sub_477E70 proc near
push    ebx
push    ecx
push    edx
lea     ecx, [eax+408h]
lea     edx, [eax+0C4h]
mov     ebx, [eax+0A4h]
sar     ebx, 18h
cmp     ebx, 0FFFFFFFFh
jnz     short loc_477ED3
mov     byte ptr [ecx+3Eh], 3Ch ; '<'
cmp     byte ptr [eax+3], 2
jz      short loc_477EA1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 6
jmp     short loc_477EA9

loc_477EA1:
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0

loc_477EA9:
test    byte ptr [edx+6], 80h
jz      short loc_477EB7
mov     byte ptr [edx+7], 0
or      byte ptr [edx+6], 80h

loc_477EB7:
mov     word ptr [ecx+3Ah], 10h
mov     byte ptr [eax+0ACh], 1
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B

loc_477ED3:
pop     edx
pop     ecx
pop     ebx
retn
sub_477E70 endp




sub_477ED7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+64h]
mov     byte ptr [eax+0ACh], 5
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [esi+0Ah], 6
mov     dl, [ecx+1]
and     dl, 1Fh
movsx   dx, dl
mov     eax, edx
shl     eax, 5
mov     dl, [ecx]
and     dl, 1Fh
movsx   dx, dl
or      eax, edx
mov     dl, [ecx+2]
and     dl, 1Fh
movsx   dx, dl
shl     edx, 0Ah
or      eax, edx
mov     [esi+15Eh], ax
inc     byte ptr [ecx+2]
mov     dl, [esi+15Fh]
or      dl, 80h
mov     [esi+15Fh], dl
cmp     byte ptr [ecx+2], 10h
jl      short loc_477F62
mov     bl, dl
and     bl, 7Fh
mov     [esi+15Fh], bl
mov     byte ptr [ecx+2], 10h
mov     bh, [ecx]
cmp     bh, 10h
jz      short loc_477F62
mov     al, bh
add     al, 4
mov     [ecx], al
add     byte ptr [ecx+1], 4

loc_477F62:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_477ED7 endp




sub_477F67 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
add     eax, 408h
lea     edi, [esi+64h]
mov     ecx, [eax+38h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_477FAC
mov     byte ptr [esi+0Ah], 0

loc_477FAC:
mov     al, [edi+1]
and     al, 1Fh
cbw
mov     ebx, eax
shl     ebx, 5
mov     al, [edi]
and     al, 1Fh
cbw
or      ebx, eax
mov     al, [edi+2]
and     al, 1Fh
cbw
shl     eax, 0Ah
or      ebx, eax
mov     [esi+15Eh], bx
inc     byte ptr [edi+2]
mov     dl, [esi+15Fh]
or      dl, 80h
mov     [esi+15Fh], dl
cmp     byte ptr [edi+2], 10h
jl      loc_478689
mov     bl, dl
and     bl, 7Fh
mov     [esi+15Fh], bl
mov     byte ptr [edi+2], 10h
mov     bh, [edi]
cmp     bh, 10h
jz      loc_478689
mov     cl, bh
add     cl, 4
mov     [edi], cl
add     byte ptr [edi+1], 4
jmp     loc_478689
sub_477F67 endp




sub_478019 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     ecx, [eax+408h]
lea     esi, [eax+64h]
mov     ecx, [ecx+38h]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
add     eax, 14h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
mov     eax, [edi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_478063
mov     byte ptr [edi+9], 1
mov     byte ptr [edi+0Ah], 0

loc_478063:
cmp     byte ptr [edi+3], 2
jnz     loc_478689
mov     al, [esi+1]
and     al, 1Fh
cbw
mov     ebx, eax
shl     ebx, 5
mov     al, [esi]
and     al, 1Fh
cbw
or      ebx, eax
mov     al, [esi+2]
and     al, 1Fh
cbw
shl     eax, 0Ah
or      ebx, eax
mov     [edi+15Eh], bx
sub     byte ptr [esi], 4
sub     byte ptr [esi+1], 4
cmp     byte ptr [esi], 0
jge     short loc_4780AE
mov     byte ptr [esi], 0
mov     byte ptr [esi+1], 0
or      byte ptr [edi+15Fh], 80h

loc_4780AE:
mov     eax, [edi+15Ch]
sar     eax, 10h
test    ah, 80h
jz      loc_478689
mov     cl, [esi+2]
dec     cl
mov     [esi+2], cl
test    cl, cl
jge     loc_478689
mov     byte ptr [esi+2], 0
jmp     loc_478689
sub_478019 endp




sub_4780D9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+0C4h]
lea     edx, [eax+64h]
movzx   esi, byte ptr [eax+0Ah]
call    ds:funcs_4780EC[esi*4]
cmp     byte ptr [ecx+3], 2
jnz     loc_47817D
mov     al, [edx+2]
test    al, al
jnz     short loc_47811E
mov     word ptr [ecx+15Eh], 0
or      byte ptr [ecx+15Fh], 80h
mov     [edx+2], al
mov     [edx+1], al
mov     [edx], al
jmp     short loc_47817D

loc_47811E:
mov     al, [edx+1]
and     al, 1Fh
cbw
mov     esi, eax
shl     esi, 5
mov     al, [edx]
and     al, 1Fh
cbw
or      esi, eax
mov     al, [edx+2]
and     al, 1Fh
cbw
shl     eax, 0Ah
or      esi, eax
mov     [ecx+15Eh], si
sub     byte ptr [edx], 4
sub     byte ptr [edx+1], 4
cmp     byte ptr [edx], 0
jge     short loc_47815F
mov     byte ptr [edx], 0
mov     byte ptr [edx+1], 0
or      byte ptr [ecx+15Fh], 80h

loc_47815F:
mov     eax, [ecx+15Ch]
sar     eax, 10h
test    ah, 80h
jz      short loc_47817D
mov     ah, [edx+2]
dec     ah
mov     [edx+2], ah
test    ah, ah
jge     short loc_47817D
mov     byte ptr [edx+2], 0

loc_47817D:
mov     eax, ecx
call    sub_4DEADD
mov     eax, ecx
call    sub_42DE56
mov     [ebx], eax
mov     eax, ecx
call    sub_42C592
mov     esi, eax
test    byte ptr [ebx+6], 40h
jnz     loc_47820E
mov     edx, [ecx+2Ch]
sar     edx, 10h
sub     eax, edx
cmp     eax, 10h
jl      short loc_4781D8
cmp     byte ptr [ecx+9], 5
jz      short loc_47820E
mov     byte ptr [ecx+9], 5
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0ACh], 6
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4781D8:
cmp     byte ptr [ecx+9], 5
jnz     short loc_478204
cmp     byte ptr [ecx+0Ah], 2
jz      short loc_478204
mov     byte ptr [ecx+0Ah], 2
mov     byte ptr [ecx+0ACh], 7
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+74h], 0

loc_478204:
mov     [ecx+16h], si
shl     esi, 10h
mov     [ecx+20h], esi

loc_47820E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4780D9 endp




sub_478213 proc near
push    edx
mov     dl, [eax+0A6h]
cmp     dl, 1
jnz     short loc_478238
mov     word ptr [eax+46h], 0FD00h
mov     [eax+0Ah], dl
mov     [eax+74h], dl
lea     edx, [eax+14h]
mov     eax, 15Fh
call    sub_4D8BC3

loc_478238:
pop     edx
retn
sub_478213 endp




sub_47823A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+0C4h]
lea     ebp, [eax+1E8h]
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
call    sub_4DD43B
mov     ax, [esi+4Eh]
mov     dx, [esi+46h]
add     edx, eax
mov     [esi+46h], dx
test    dx, dx
jl      loc_477723
cmp     byte ptr [ebp+4], 2
jnz     short loc_4782A1
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 10h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

loc_4782A1:
and     byte ptr [edi+6], 0BFh
jmp     loc_477723
sub_47823A endp




sub_4782AA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+408h]
lea     edi, [eax+0C4h]
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     loc_478689
mov     byte ptr [eax+0ACh], 1
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Fh], 0
mov     word ptr [ecx+44h], 80h
mov     byte ptr [esi+3Dh], 78h ; 'x'
mov     byte ptr [esi+3Ch], 0
and     byte ptr [edi+6], 0FCh
jmp     loc_478689
sub_4782AA endp

db 8Bh, 0C0h
jpt_4783B1 dd offset loc_4783B8 ; jump table for switch statement
dd offset loc_4783F1
dd offset loc_47840C
dd offset loc_47843F
dd offset loc_47843F



sub_47831E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
lea     edi, [eax+0C4h]
add     eax, 64h ; 'd'
cmp     byte ptr [esi+3], 2
jnz     short loc_4783A1
mov     dl, [eax+1]
and     dl, 1Fh
movsx   dx, dl
shl     edx, 5
mov     bl, [eax]
and     bl, 1Fh
movsx   bx, bl
or      ebx, edx
mov     dl, [eax+2]
and     dl, 1Fh
movsx   dx, dl
shl     edx, 0Ah
or      ebx, edx
mov     [esi+15Eh], bx
inc     byte ptr [eax+2]
mov     bl, [esi+15Fh]
or      bl, 80h
mov     [esi+15Fh], bl
cmp     byte ptr [eax+2], 10h
jl      short loc_4783A1
mov     dl, bl
and     dl, 7Fh
mov     [esi+15Fh], dl
mov     byte ptr [eax+2], 10h
mov     dh, [eax]
cmp     dh, 10h
jz      short loc_4783A1
mov     bl, dh
add     bl, 4
mov     [eax], bl
add     byte ptr [eax+1], 4

loc_4783A1:
mov     al, [esi+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_4783B1      ; jumptable 004783B1 default case
and     eax, 0FFh
jmp     jpt_4783B1[eax*4] ; switch jump

loc_4783B8:             ; jumptable 004783B1 case 0
push    0
mov     eax, [esi+44h]
sar     eax, 10h
push    eax
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
add     ebx, 800h
and     ebx, 0FFFh

loc_4783D9:
lea     edx, [esi+1Ch]
lea     eax, [esi+14h]
call    sub_4DD4C5
mov     ax, [esi+4Eh]
add     [esi+46h], ax
jmp     def_4783B1      ; jumptable 004783B1 default case

loc_4783F1:             ; jumptable 004783B1 case 1
push    0
mov     eax, [esi+44h]
sar     eax, 10h
push    eax
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ax, [esi+56h]
and     ah, 0Fh
movsx   ebx, ax
jmp     short loc_4783D9

loc_47840C:             ; jumptable 004783B1 case 2
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_4783B1      ; jumptable 004783B1 default case
mov     byte ptr [esi+0ACh], 0Ch
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ah], 3
jmp     def_4783B1      ; jumptable 004783B1 default case

loc_47843F:             ; jumptable 004783B1 cases 3,4
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_47849C
cmp     byte ptr [esi+3], 2
jnz     short loc_47845F
test    byte ptr [edi+6], 10h
jz      short loc_47845F
mov     byte ptr [esi+9], 8
jmp     short loc_47847B

loc_47845F:
mov     byte ptr [esi+0ACh], 1
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+9], 0

loc_47847B:
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Fh], 0
mov     word ptr [esi+44h], 80h
mov     byte ptr [ecx+3Dh], 78h ; 'x'
mov     byte ptr [ecx+3Ch], 0
mov     byte ptr [edi+6], 0
mov     byte ptr [esi+475h], 20h ; ' '

loc_47849C:
cmp     byte ptr [esi+0Ah], 4
jnz     short def_4783B1 ; jumptable 004783B1 default case
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

def_4783B1:             ; jumptable 004783B1 default case
mov     eax, esi
call    sub_4DEADD
mov     eax, esi
call    sub_42DE56
mov     [edi], eax
mov     eax, esi
call    sub_42C592
mov     dh, [edi+6]
test    dh, 10h
jz      loc_478689
test    dh, 20h
jnz     loc_478689
mov     edx, [esi+14h]
sar     edx, 10h
cmp     eax, edx
jnz     loc_478689
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_47850E
mov     byte ptr [esi+0ACh], 9
jmp     short loc_478515

loc_47850E:
mov     byte ptr [esi+0ACh], 0Bh

loc_478515:
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ah], 2
or      byte ptr [edi+6], 20h
jmp     loc_478689
sub_47831E endp




sub_478533 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_478565
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
lea     edi, [eax+48h]
lea     esi, [ecx+190h]
movsd
movsd
lea     edx, [ecx+190h]
mov     eax, ecx
call    sub_4AF9F8

loc_478565:
mov     byte ptr [ecx+8], 2
and     byte ptr [ecx], 0FDh
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_478533 endp




sub_478571 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+408h]
lea     edx, [eax+64h]
movzx   esi, byte ptr [eax+0Ah]
call    ds:funcs_478584[esi*4]
mov     ah, [ebx+3Fh]
test    ah, ah
jnz     short loc_4785FD
mov     bl, [edx+1]
and     bl, 1Fh
movsx   bx, bl
mov     esi, ebx
shl     esi, 5
mov     bl, [edx]
and     bl, 1Fh
movsx   bx, bl
or      esi, ebx
mov     bl, [edx+2]
and     bl, 1Fh
movsx   bx, bl
shl     ebx, 0Ah
or      esi, ebx
mov     [ecx+15Eh], si
sub     byte ptr [edx], 4
sub     byte ptr [edx+1], 4
cmp     byte ptr [edx], 0
jge     short loc_4785DA
mov     [edx], ah
mov     [edx+1], ah
or      byte ptr [ecx+15Fh], 80h

loc_4785DA:
mov     ecx, [ecx+15Ch]
sar     ecx, 10h
test    ch, 80h
jz      short loc_478614
mov     bl, [edx+2]
dec     bl
mov     [edx+2], bl
test    bl, bl
jge     short loc_478614
mov     byte ptr [edx+2], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4785FD:
mov     dl, ah
dec     dl
mov     [ebx+3Fh], dl
mov     word ptr [ecx+15Eh], 4210h
and     byte ptr [ecx+15Fh], 7Fh

loc_478614:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_478571 endp




sub_478619 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [eax+408h]
add     eax, 1E8h
lea     esi, [ecx+64h]
test    byte ptr [eax+2], 1
jz      short loc_478652
mov     byte ptr [ecx+0ACh], 0Dh
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Eh], 0
jmp     short loc_47866E

loc_478652:
mov     byte ptr [ecx+0ACh], 0Eh
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Eh], 1

loc_47866E:
mov     ax, [ecx+56h]
mov     [edi+38h], ax
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [edi+3Fh], 1

loc_47867E:
mov     byte ptr [esi], 10h
mov     byte ptr [esi+1], 10h
mov     byte ptr [esi+2], 10h

loc_478689:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_478619 endp




sub_47868F proc near
push    ecx
push    edx
lea     ecx, [eax+408h]
lea     edx, [eax+64h]
call    sub_477729
mov     byte ptr [ecx+3Fh], 1
mov     byte ptr [edx], 10h
mov     byte ptr [edx+1], 10h
mov     byte ptr [edx+2], 10h
pop     edx
pop     ecx
retn
sub_47868F endp




sub_4786B1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [eax+408h]
lea     esi, [eax+64h]
mov     byte ptr [eax+0ACh], 2
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 3
mov     word ptr [ecx+44h], 2D0h
mov     word ptr [edi+3Ah], 10h
mov     byte ptr [edi+3Fh], 0Fh
jmp     short loc_47867E
sub_4786B1 endp




sub_4786ED proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+408h]
lea     edx, [eax+0C4h]
test    byte ptr [edx+1], 0Fh
jnz     short loc_478711
cmp     dword ptr [esi+80h], offset loc_480000
jbe     short loc_478767

loc_478711:
mov     dx, [esi+56h]
add     dh, 8
and     dh, 0Fh
mov     [ecx+38h], dx
mov     eax, [esi+54h]
sar     eax, 10h
mov     edx, [ecx+36h]
sar     edx, 10h
cmp     eax, edx
jle     short loc_478738
mov     byte ptr [esi+0ACh], 0Eh
jmp     short loc_47873F

loc_478738:
mov     byte ptr [esi+0ACh], 0Dh

loc_47873F:
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ah], 4
mov     dx, [esi+56h]
add     dh, 8
and     dh, 0Fh
mov     [ecx+38h], dx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_478767:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4786ED endp




sub_47877D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+408h]
add     eax, 0C4h
mov     ebx, [ecx+54h]
sar     ebx, 10h
mov     esi, [edx+36h]
sar     esi, 10h
cmp     ebx, esi
jnz     loc_477882
mov     byte ptr [ecx+9], 0
jmp     loc_47784B
sub_47877D endp




sub_4787AB proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+0C4h]
call    sub_4DEADD
mov     eax, ecx
call    sub_42DE56
mov     [edx], eax
mov     eax, ecx
call    sub_42C592
mov     ebx, eax
mov     edx, [ecx+2Ch]
sar     edx, 10h
mov     esi, eax
sub     esi, edx
cmp     esi, 10h
jl      short loc_478802
mov     byte ptr [ecx+9], 5
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0ACh], 6
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, eax
mov     eax, ecx
call    sub_4DE96B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_478802:
mov     [ecx+16h], ax
shl     eax, 10h
mov     [ecx+20h], eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4787AB endp




sub_478811 proc near
cmp     byte ptr ds:dword_77E7DC+3, 2
jnz     short loc_478843
mov     ds:dword_55A10C, offset off_517DDC
mov     ds:dword_55A108, offset off_517F7C
mov     ds:dword_55A110, offset off_517FDC
mov     ds:dword_55A114, offset off_518060
retn

loc_478843:
mov     ds:dword_55A10C, offset off_517B40
mov     ds:dword_55A108, offset off_517CE0
mov     ds:dword_55A110, offset off_517D40
mov     ds:dword_55A114, offset off_517DC4
retn
sub_478811 endp




sub_47886C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_478872[edx*4]
pop     edx
retn
sub_47886C endp




sub_47887B proc near
push    ecx
push    edx
mov     edx, eax
mov     eax, 50000h
call    sub_4A7AAC
test    eax, eax
jnz     short loc_478897
mov     eax, edx
call    sub_4DE439
pop     edx
pop     ecx
retn

loc_478897:
inc     byte ptr [edx+8]
mov     ecx, [eax+18h]
mov     ds:dword_55A11C, ecx
mov     ecx, [eax+1Ch]
mov     ds:dword_55A118, ecx
mov     ecx, [eax+18h]
mov     ecx, [ecx+24h]
mov     [edx+1Ch], ecx
mov     eax, [eax+1Ch]
mov     eax, [eax+24h]
mov     [edx+20h], eax
pop     edx
pop     ecx
retn
sub_47887B endp




sub_4788C1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     ebx, ebx
jmp     short loc_4788E8

loc_4788CB:
mov     [eax], edx
mov     [eax+4], ecx
mov     [eax+8], edx
mov     [eax+0Ch], ecx
mov     [eax+10h], edx
mov     [eax+14h], ecx
mov     [eax+18h], edx
mov     [eax+1Ch], ecx
inc     ebx
cmp     ebx, 2
jge     short loc_478913

loc_4788E8:
mov     eax, ebx
mov     eax, [esi+eax*4+1Ch]
mov     edx, [eax]
mov     ecx, [eax+4]
add     edx, 10001h
add     ecx, 10001h
cmp     edx, 0C0C0FEC0h
jb      short loc_4788CB
mov     edx, 0C080FE80h
mov     ecx, 0C0BFFEBFh
jmp     short loc_4788CB

loc_478913:
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4788C1 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_24]



sub_478918 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47891E[edx*4]
pop     edx
retn
sub_478918 endp




sub_478927 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
mov     esi, eax
xor     edx, edx
jmp     short loc_47893D

loc_478933:
mov     [ecx+esi+18h], eax
inc     edx
cmp     edx, 3
jnb     short loc_47895D

loc_47893D:
mov     ecx, edx
shl     ecx, 2
mov     eax, ds:dword_518750[ecx]
call    sub_4A7AAC
test    eax, eax
jnz     short loc_478933
mov     eax, ebx
call    sub_4DE439
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47895D:
mov     dword ptr [esi+0Ch], 0
mov     dword ptr [esi+14h], 0
inc     byte ptr [esi+8]
mov     byte ptr [esi+0Bh], 0
mov     eax, [esi+18h]
mov     eax, [eax+18h]
mov     eax, [eax+8]
and     eax, 0FFFFFFh
add     eax, offset unk_6B87CC
mov     ebx, 1
mov     edx, offset dword_55A120
call    sub_4EECEF
mov     eax, [esi+18h]
mov     eax, [eax+1Ch]
mov     eax, [eax+8]
and     eax, 0FFFFFFh
add     eax, offset unk_6B87CC
mov     ebx, 1
mov     edx, offset unk_55A140
call    sub_4EECEF
mov     eax, [esi+1Ch]
mov     eax, [eax+18h]
mov     eax, [eax+8]
and     eax, 0FFFFFFh
add     eax, offset unk_6B87CC
mov     ebx, 1
mov     edx, offset unk_55A160
call    sub_4EECEF
mov     eax, [esi+1Ch]
mov     eax, [eax+1Ch]
mov     eax, [eax+8]
and     eax, 0FFFFFFh
add     eax, offset unk_6B87CC
mov     ebx, 1
mov     edx, offset unk_55A180
call    sub_4EECEF
mov     eax, [esi+20h]
mov     eax, [eax+18h]
mov     eax, [eax+8]
and     eax, 0FFFFFFh
add     eax, offset unk_6B87CC
mov     ebx, 1
mov     edx, offset unk_55A1A0
call    sub_4EECEF
mov     eax, [esi+20h]
mov     eax, [eax+1Ch]
mov     eax, [eax+8]
and     eax, 0FFFFFFh
add     eax, offset unk_6B87CC
mov     ebx, 1
mov     edx, offset unk_55A1C0
call    sub_4EECEF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_478927 endp




sub_478A43 proc near

var_30= dword ptr -30h
var_28= byte ptr -28h
var_26= byte ptr -26h
var_24= byte ptr -24h
var_22= byte ptr -22h
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
xor     edx, edx
mov     [esp+38h+var_20], edx
mov     ecx, [eax+0Ch]
add     ecx, 1000h
mov     [eax+0Ch], ecx
cmp     ecx, 40000h
jl      short loc_478A79
mov     [esp+38h+var_20], 1
lea     edi, [ecx-40000h]
mov     [eax+0Ch], edi

loc_478A79:
mov     ecx, [ebp+0Ch]
sar     ecx, 0Ch
and     ecx, 3Fh
mov     eax, ebp
mov     dl, [ebp+0Bh]
inc     dl
mov     [ebp+0Bh], dl
xor     eax, ebp
mov     al, dl
shl     eax, 7
cmp     eax, 800h
jl      short loc_478A9E
mov     byte ptr [ebp+0Bh], 0

loc_478A9E:
mov     ebx, ecx
shl     ebx, 10h
or      ebx, ecx
xor     edi, edi
jmp     short loc_478AAF

loc_478AA9:
inc     edi
cmp     edi, 3
jnb     short loc_478AFC

loc_478AAF:
mov     eax, edi
mov     eax, [ebp+eax*4+18h]
mov     eax, [eax+18h]
mov     eax, [eax+8]
and     eax, 0FFFFFFh
mov     edx, offset unk_6B87CC
add     edx, eax
mov     [esp+38h+var_1C], edx
xor     ecx, ecx

loc_478ACD:
mov     eax, edi
shl     eax, 6
mov     edx, ecx
shl     edx, 2
add     eax, edx
mov     esi, ds:dword_55A120[eax]
add     esi, ebx
add     edx, [esp+38h+var_1C]
mov     [edx], esi
mov     eax, ds:dword_55A124[eax]
add     eax, ebx
mov     [edx+4], eax
add     ecx, 2
cmp     ecx, 8
jb      short loc_478ACD
jmp     short loc_478AA9

loc_478AFC:
xor     edi, edi
jmp     short loc_478B0A

loc_478B00:
inc     edi
cmp     edi, 4
jnb     loc_478BA6

loc_478B0A:
mov     eax, edi
shl     eax, 4
mov     ebx, ds:dword_518764[eax]
mov     edx, ds:dword_518760[eax]
mov     eax, ds:dword_51875C[eax]
call    sub_4A7AAC
mov     esi, esp
call    sub_4EE48D
xor     ecx, ecx

loc_478B2F:
mov     eax, edi
shl     eax, 4
cmp     ecx, ds:dword_518768[eax]
jnb     short loc_478B00
mov     edx, ecx
mov     eax, [esp+38h+var_30]
lea     esi, [esp+38h+var_28]
call    sub_4EE4F0
mov     dh, [esp+38h+var_28]
inc     dh
mov     [esp+38h+var_28], dh
mov     bl, [esp+38h+var_26]
inc     bl
mov     [esp+38h+var_26], bl
mov     bh, [esp+38h+var_24]
inc     bh
mov     [esp+38h+var_24], bh
inc     [esp+38h+var_22]
cmp     [esp+38h+var_20], 0
jz      short loc_478B94
mov     ah, dh
sub     ah, 40h ; '@'
mov     [esp+38h+var_28], ah
mov     dl, bl
sub     dl, 40h ; '@'
mov     [esp+38h+var_26], dl
mov     dh, bh
sub     dh, 40h ; '@'
mov     [esp+38h+var_24], dh
sub     [esp+38h+var_22], 40h ; '@'

loc_478B94:
lea     ebx, [esp+38h+var_28]
mov     edx, ecx
mov     eax, [esp+38h+var_30]
call    sub_4EE54C
inc     ecx
jmp     short loc_478B2F

loc_478BA6:
add     esp, 20h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_478A43 endp




sub_478BB0 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_478BB6[edx*4]
pop     edx
retn
sub_478BB0 endp




sub_478BBF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx

loc_478BC7:
mov     eax, edx
shl     eax, 3
add     eax, offset unk_5187A8
call    sub_42C443
mov     ecx, eax
mov     eax, edx
mov     [esi+eax*2+0Ch], cx
mov     word ptr [esi+eax*2+14h], 80h
mov     bl, dl
shl     bl, 6
lea     ecx, [esi+edx]
mov     [ecx+5], bl
xor     ecx, ecx
mov     cx, [esi+eax*2+0Ch]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     word ptr ds:dword_6E40AE[eax*4], 0FE80h
inc     edx
cmp     edx, 3
jb      short loc_478BC7
mov     dword ptr [esi+8], 0
inc     byte ptr [esi+4]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_478BBF endp




sub_478C1E proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cx, [eax+0Ch]
mov     eax, (offset dword_5F8376+2)
call    sub_42C443
cmp     eax, ecx
jnz     short loc_478C39
inc     byte ptr [edx+4]

loc_478C39:
pop     edx
pop     ecx
retn
sub_478C1E endp




sub_478C3C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
xor     ebx, ebx
jmp     loc_478CDA

loc_478C4A:
mov     cl, [eax+8]
lea     edx, [ebx+ebx]
add     edx, edi
test    cl, cl
jbe     short loc_478C60
cmp     cl, 1
jz      short loc_478C9B
jmp     loc_478CD4

loc_478C60:
xor     esi, esi
mov     si, [edx+0Ch]
mov     ecx, esi
shl     ecx, 2
sub     ecx, esi
sub     word ptr ds:dword_6E40AE[ecx*4], 3
xor     ecx, ecx
mov     cx, [edx+0Ch]
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     edx, ds:(dword_6E40AA+2)[edx*4]
sar     edx, 10h
cmp     edx, 0FFFFFD00h
jg      short loc_478CD4
mov     byte ptr [eax+8], 1
jmp     short loc_478CD4

loc_478C9B:
xor     esi, esi
mov     si, [edx+0Ch]
mov     ecx, esi
shl     ecx, 2
sub     ecx, esi
add     word ptr ds:dword_6E40AE[ecx*4], 3
xor     ecx, ecx
mov     cx, [edx+0Ch]
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     edx, ds:(dword_6E40AA+2)[edx*4]
sar     edx, 10h
cmp     edx, 0FFFFFE80h
jl      short loc_478CD4
mov     byte ptr [eax+8], 0

loc_478CD4:
inc     ebx
cmp     ebx, 3
jnb     short loc_478CF1

loc_478CDA:
lea     eax, [edi+ebx]
mov     dl, [eax+5]
test    dl, dl
jz      loc_478C4A
mov     dh, dl
dec     dh
mov     [eax+5], dh
jmp     short loc_478CD4

loc_478CF1:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_478C3C endp




sub_478CF7 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_478CFD[edx*4]
pop     edx
retn
sub_478CF7 endp




sub_478D06 proc near
push    ecx
push    edx
mov     edx, eax
xor     eax, eax
mov     al, [edx+3]
mov     eax, ds:off_518820[eax*4]
mov     [edx+20h], eax
mov     [edx+1Ch], eax
mov     al, [eax+2]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0
mov     eax, [edx+1Ch]
xor     ecx, ecx
mov     cl, [eax+1]
shl     ecx, 8
mov     al, [eax]
and     eax, 0FFh
add     eax, ecx
add     eax, eax
mov     ecx, offset word_76D4A4
add     ecx, eax
mov     [edx+18h], ecx
mov     eax, edx
call    sub_478F03
test    eax, eax
jz      short loc_478D58
mov     eax, edx
call    sub_4DE3EA

loc_478D58:
mov     byte ptr [edx+8], 1
pop     edx
pop     ecx
retn
sub_478D06 endp




sub_478D5F proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+20h]
mov     ah, [eax+0Dh]
inc     ah
mov     [edx+0Dh], ah
cmp     ah, [edx+0Ch]
jle     short loc_478D86
mov     eax, edx
call    sub_478F03
test    eax, eax
jz      short loc_478D86
mov     eax, edx
call    sub_4DE3EA

loc_478D86:
mov     bh, [edx+3]
cmp     bh, 1
jnz     short loc_478DA8
cmp     byte ptr [ecx], 70h ; 'p'
jnz     short loc_478DA8
xor     eax, eax
mov     al, bh
mov     eax, ds:off_518820[eax*4]
mov     [edx+20h], eax
mov     [edx+1Ch], eax
mov     byte ptr [edx+8], 2

loc_478DA8:
mov     eax, edx
call    sub_478DDE
pop     edx
pop     ecx
pop     ebx
retn
sub_478D5F endp




sub_478DB3 proc near
push    edx
mov     edx, eax
mov     ah, [eax+0Dh]
inc     ah
mov     [edx+0Dh], ah
cmp     ah, [edx+0Ch]
jle     short loc_478DD5
mov     eax, edx
call    sub_478F03
test    eax, eax
jz      short loc_478DD5
mov     eax, edx
call    sub_4DE3EA

loc_478DD5:
mov     eax, edx
call    sub_478DDE
pop     edx
retn
sub_478DB3 endp




sub_478DDE proc near

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
sub     esp, 18h
mov     ebx, eax
xor     eax, eax
mov     al, [ebx+3]
xor     edx, edx
mov     dx, ds:word_518830[eax*4]
mov     [esp+30h+var_1C], edx
cmp     ds:word_518832[eax*4], 0
jz      loc_478EDA
xor     ecx, ecx

loc_478E0D:
lea     eax, [ecx+ecx]
mov     edx, [ebx+14h]
xor     esi, esi
mov     si, [edx+eax]
add     eax, [ebx+18h]
xor     edi, edi
mov     di, [eax]
mov     eax, esi
and     eax, 1Fh
mov     [esp+30h+var_30], eax
mov     edx, edi
and     edx, 1Fh
mov     eax, [ebx+0Ah]
sar     eax, 18h
mov     [esp+30h+var_20], eax
sub     edx, [esp+30h+var_30]
imul    edx, eax
mov     ebp, [ebx+9]
sar     ebp, 18h
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
mov     edx, [esp+30h+var_30]
add     edx, eax
mov     [esp+30h+var_2C], edx
mov     eax, esi
and     eax, 3E0h
sar     eax, 5
mov     [esp+30h+var_28], eax
mov     eax, edi
and     eax, 3E0h
sar     eax, 5
sub     eax, [esp+30h+var_28]
mov     edx, [esp+30h+var_20]
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
add     eax, [esp+30h+var_28]
shl     eax, 5
mov     [esp+30h+var_24], eax
and     esi, 7C00h
sar     esi, 0Ah
mov     edx, edi
and     edx, 7C00h
sar     edx, 0Ah
sub     edx, esi
mov     edi, [esp+30h+var_20]
imul    edx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
lea     edx, [eax+esi]
shl     edx, 0Ah
mov     eax, [esp+30h+var_2C]
or      ah, 80h
or      eax, [esp+30h+var_24]
or      eax, edx
mov     edx, [esp+30h+var_1C]
add     edx, ecx
mov     ds:word_76D4A4[edx*2], ax
inc     ecx
cmp     ecx, 10h
jl      loc_478E0D
jmp     short loc_478EF9

loc_478EDA:
cmp     byte ptr [ebx+0Dh], 0
jnz     short loc_478EF9
mov     edx, [esp+30h+var_1C]
add     edx, edx
add     edx, offset word_76D4A4
mov     eax, [ebx+14h]
mov     ebx, 1
call    sub_4EECEF

loc_478EF9:
add     esp, 18h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_478DDE endp




sub_478F03 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+20h]
mov     ecx, [eax+18h]
mov     [eax+14h], ecx
mov     bl, [edx+3]
test    bl, bl
jge     short loc_478F48
mov     ecx, [edx]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jnz     short loc_478F2E
mov     dl, [eax+0Ch]
cmp     dl, [eax+0Dh]
jnz     short loc_478F4C
mov     eax, ecx
pop     edx
pop     ecx
pop     ebx
retn

loc_478F2E:
mov     dl, bl
and     dl, 7Fh
mov     ecx, edx
and     ecx, 0FFh
shl     ecx, 2
mov     edx, [eax+1Ch]
add     edx, ecx
mov     [eax+20h], edx
jmp     short loc_478F4C

loc_478F48:
add     dword ptr [eax+20h], 4

loc_478F4C:
mov     edx, [eax+20h]
mov     cl, [edx+2]
mov     [eax+0Ch], cl
mov     byte ptr [eax+0Dh], 0
xor     ecx, ecx
mov     cl, [edx+1]
shl     ecx, 8
mov     dl, [edx]
and     edx, 0FFh
add     edx, ecx
add     edx, edx
mov     ecx, offset word_76D4A4
add     ecx, edx
mov     [eax+18h], ecx
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_478F03 endp




sub_478F7D proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_478F83[edx*4]
pop     edx
retn
sub_478F7D endp




sub_478F8C proc near
push    ecx
push    edx
mov     edx, eax
xor     eax, eax
mov     al, [edx+3]
mov     eax, ds:off_518A04[eax*4]
mov     [edx+20h], eax
mov     [edx+1Ch], eax
mov     al, [eax+2]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0
mov     eax, [edx+1Ch]
xor     ecx, ecx
mov     cl, [eax+1]
shl     ecx, 8
mov     al, [eax]
and     eax, 0FFh
add     eax, ecx
add     eax, eax
mov     ecx, offset word_76D4A4
add     ecx, eax
mov     [edx+18h], ecx
mov     eax, edx
call    sub_479163
test    eax, eax
jz      short loc_478FDE
mov     eax, edx
call    sub_4DE439

loc_478FDE:
mov     byte ptr [edx+8], 1
pop     edx
pop     ecx
retn
sub_478F8C endp




sub_478FE5 proc near
push    edx
mov     edx, eax
mov     ah, [eax+0Dh]
inc     ah
mov     [edx+0Dh], ah
cmp     ah, [edx+0Ch]
jle     short loc_479007
mov     eax, edx
call    sub_479163
test    eax, eax
jz      short loc_479007
mov     eax, edx
call    sub_4DE439

loc_479007:
mov     eax, edx
call    sub_479010
pop     edx
retn
sub_478FE5 endp




sub_479010 proc near

var_34= dword ptr -34h
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
sub     esp, 1Ch
mov     ebx, eax
xor     edx, edx
mov     dl, [eax+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ax, ds:word_518A70[eax*2]
and     eax, 0FFFFh
mov     [esp+34h+var_20], eax
mov     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dx, ds:word_518A72[eax*2]
mov     [esp+34h+var_1C], edx
cmp     ds:word_518A74[eax*2], 0
jz      loc_47912A
xor     ecx, ecx

loc_47905E:
cmp     ecx, [esp+34h+var_1C]
jge     loc_479159
lea     eax, [ecx+ecx]
mov     edx, [ebx+14h]
xor     esi, esi
mov     si, [edx+eax]
add     eax, [ebx+18h]
movzx   ebp, word ptr [eax]
mov     eax, esi
and     eax, 1Fh
mov     [esp+34h+var_34], eax
mov     edx, ebp
and     edx, 1Fh
mov     edi, [ebx+0Ah]
sar     edi, 18h
sub     edx, eax
imul    edx, edi
mov     eax, [ebx+9]
sar     eax, 18h
mov     [esp+34h+var_24], eax
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+34h+var_24]
mov     edx, [esp+34h+var_34]
add     edx, eax
mov     [esp+34h+var_30], edx
mov     eax, esi
and     eax, 3E0h
sar     eax, 5
mov     [esp+34h+var_2C], eax
mov     eax, ebp
and     eax, 3E0h
sar     eax, 5
sub     eax, [esp+34h+var_2C]
imul    eax, edi
mov     edx, eax
sar     edx, 1Fh
idiv    [esp+34h+var_24]
add     eax, [esp+34h+var_2C]
shl     eax, 5
mov     [esp+34h+var_28], eax
and     esi, 7C00h
sar     esi, 0Ah
mov     edx, ebp
and     edx, 7C00h
sar     edx, 0Ah
sub     edx, esi
imul    edx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+34h+var_24]
lea     edx, [eax+esi]
shl     edx, 0Ah
mov     eax, [esp+34h+var_30]
or      ah, 80h
or      eax, [esp+34h+var_28]
or      edx, eax
mov     eax, [esp+34h+var_20]
add     eax, ecx
mov     ds:word_76D4A4[eax*2], dx
inc     ecx
jmp     loc_47905E

loc_47912A:
cmp     byte ptr [ebx+0Dh], 0
jnz     short loc_479159
mov     eax, [esp+34h+var_1C]
mov     edx, eax
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     edx, [esp+34h+var_20]
add     edx, edx
add     edx, offset word_76D4A4
mov     ecx, [ebx+14h]
mov     ebx, eax
mov     eax, ecx
call    sub_4EECEF

loc_479159:
add     esp, 1Ch
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_479010 endp




sub_479163 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+20h]
mov     ecx, [eax+18h]
mov     [eax+14h], ecx
mov     bl, [edx+3]
test    bl, bl
jge     short loc_4791A8
mov     ecx, [edx]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jnz     short loc_47918E
mov     dl, [eax+0Ch]
cmp     dl, [eax+0Dh]
jnz     short loc_4791AC
mov     eax, ecx
pop     edx
pop     ecx
pop     ebx
retn

loc_47918E:
mov     dl, bl
and     dl, 7Fh
mov     ecx, edx
and     ecx, 0FFh
shl     ecx, 2
mov     edx, [eax+1Ch]
add     edx, ecx
mov     [eax+20h], edx
jmp     short loc_4791AC

loc_4791A8:
add     dword ptr [eax+20h], 4

loc_4791AC:
mov     edx, [eax+20h]
mov     cl, [edx+2]
mov     [eax+0Ch], cl
mov     byte ptr [eax+0Dh], 0
xor     ecx, ecx
mov     cl, [edx+1]
shl     ecx, 8
mov     dl, [edx]
and     edx, 0FFh
add     edx, ecx
add     edx, edx
mov     ecx, offset word_76D4A4
add     ecx, edx
mov     [eax+18h], ecx
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_479163 endp




sub_4791DD proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
mov     esi, 5
cmp     ds:byte_77E7D4, 2
jnz     short loc_4791F3
xor     esi, esi

loc_4791F3:
xor     ecx, ecx
jmp     short loc_4791FD

loc_4791F7:
inc     ecx
cmp     ecx, 5
jge     short loc_47923E

loc_4791FD:
call    sub_4DE1BE
mov     edx, eax
test    eax, eax
jz      short loc_4791F7
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     [eax+3], cl
mov     byte ptr [eax+0Dh], 0
mov     al, [eax+0Dh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Fh], 1
lea     eax, [ecx+esi]
mov     eax, ds:dword_518B1C[eax*4]
call    sub_4A7AAC
mov     [edx+1Ch], eax
test    byte ptr [ebx+6], 20h
jz      short loc_4791F7
or      byte ptr [edx+6], 20h
jmp     short loc_4791F7

loc_47923E:
mov     eax, ebx
call    sub_4DE439
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4791DD endp




sub_47924A proc near

var_20= dword ptr -20h
var_18= byte ptr -18h
var_16= byte ptr -16h
var_14= byte ptr -14h
var_12= byte ptr -12h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 18h
mov     ecx, eax
mov     eax, [eax+1Ch]
mov     ebx, 4
xor     edx, edx
mov     esi, esp
call    sub_4EE48D
xor     edx, edx
mov     eax, [esp+28h+var_20]
lea     esi, [esp+28h+var_18]
call    sub_4EE4F0
mov     ah, [ecx+0Ch]
inc     ah
mov     [ecx+0Ch], ah
mov     cl, ah
and     cl, 18h
shl     cl, 3
mov     al, cl
add     al, 6
mov     [esp+28h+var_18], al
mov     al, cl
inc     al
mov     [esp+28h+var_16], al
mov     al, cl
add     al, 3Dh ; '='
mov     [esp+28h+var_14], al
add     cl, 3Fh ; '?'

loc_47929E:
mov     [esp+28h+var_12], cl

loc_4792A2:
lea     ebx, [esp+28h+var_18]
xor     edx, edx
mov     eax, [esp+28h+var_20]
call    sub_4EE54C
add     esp, 18h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47924A endp




sub_4792B9 proc near

var_20= dword ptr -20h
var_18= byte ptr -18h
var_16= byte ptr -16h
var_14= byte ptr -14h
var_12= byte ptr -12h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 18h
mov     ecx, eax
mov     eax, [eax+1Ch]
mov     ebx, 4
xor     edx, edx
mov     esi, esp
call    sub_4EE48D
xor     edx, edx
mov     eax, [esp+28h+var_20]
lea     esi, [esp+28h+var_18]
call    sub_4EE4F0
inc     byte ptr [ecx+0Ch]
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     bl, [ecx+0Ch]
cmp     bl, ds:byte_518B45[eax*2]
jnz     short loc_479308
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ch], 0
cmp     byte ptr [ecx+0Dh], 0Eh
jnz     short loc_479308
mov     byte ptr [ecx+0Dh], 0

loc_479308:
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     al, ds:byte_518B44[eax*2]
mov     ah, 30h ; '0'
mul     ah
mov     ah, al
inc     ah
mov     [esp+28h+var_18], ah
add     al, 2Eh ; '.'
mov     [esp+28h+var_16], al
mov     [esp+28h+var_14], ah
mov     [esp+28h+var_12], al
jmp     loc_4792A2
sub_4792B9 endp




sub_479334 proc near

var_20= dword ptr -20h
var_18= byte ptr -18h
var_16= byte ptr -16h
var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 18h
mov     ecx, eax
mov     eax, [eax+1Ch]
mov     ebx, 5
xor     edx, edx
mov     esi, esp
call    sub_4EE48D
xor     edx, edx
mov     eax, [esp+28h+var_20]
lea     esi, [esp+28h+var_18]
call    sub_4EE4F0
inc     byte ptr [ecx+0Ch]
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     bl, [ecx+0Ch]
cmp     bl, ds:byte_518B61[eax*2]
jnz     short loc_479383
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ch], 0
cmp     byte ptr [ecx+0Dh], 5
jnz     short loc_479383
mov     byte ptr [ecx+0Dh], 0

loc_479383:
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     al, ds:byte_518B44[eax*2]
mov     ah, 30h ; '0'
mul     ah
mov     cl, al
add     al, 2Eh ; '.'
mov     [esp+28h+var_18], al
mov     [esp+28h+var_16], al
inc     cl
mov     [esp+28h+var_14], cl
jmp     loc_47929E
sub_479334 endp




sub_4793AB proc near

var_20= dword ptr -20h
var_18= byte ptr -18h
var_16= byte ptr -16h
var_14= byte ptr -14h
var_12= byte ptr -12h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 18h
mov     ecx, eax
mov     eax, [eax+1Ch]
mov     ebx, 6
xor     edx, edx
mov     esi, esp
call    sub_4EE48D
xor     edx, edx
mov     eax, [esp+28h+var_20]
lea     esi, [esp+28h+var_18]
call    sub_4EE4F0
inc     byte ptr [ecx+0Ch]
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     bl, [ecx+0Ch]
cmp     bl, ds:byte_518B6B[eax*2]
jnz     short loc_4793FA
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ch], 0
cmp     byte ptr [ecx+0Dh], 9
jnz     short loc_4793FA
mov     byte ptr [ecx+0Dh], 0

loc_4793FA:
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     al, ds:byte_518B44[eax*2]
mov     ah, 30h ; '0'
mul     ah
mov     [esp+28h+var_18], al
mov     ah, al
add     ah, 2Fh ; '/'
mov     [esp+28h+var_16], ah
mov     [esp+28h+var_14], al
mov     [esp+28h+var_12], ah
jmp     loc_4792A2
sub_4793AB endp




sub_479425 proc near

var_2C= dword ptr -2Ch
var_24= byte ptr -24h
var_23= byte ptr -23h
var_22= byte ptr -22h
var_21= byte ptr -21h
var_20= byte ptr -20h
var_1F= byte ptr -1Fh
var_1E= byte ptr -1Eh
var_1D= byte ptr -1Dh
var_1C= byte ptr -1Ch
var_18= byte ptr -18h
var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 24h
mov     ecx, eax
mov     ah, [eax+0Ch]
inc     ah
mov     [ecx+0Ch], ah
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     dl, [ecx+0Ch]
cmp     dl, ds:byte_518B7D[eax*2]
jnz     short loc_479459
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ch], 0
cmp     byte ptr [ecx+0Dh], 0Ch
jnz     short loc_479459
mov     byte ptr [ecx+0Dh], 0

loc_479459:
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
mov     bl, ds:byte_518B7C[ebx*2]
and     ebx, 0FFh
mov     esi, 6
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    esi
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 3
mov     [esp+34h+var_14], al
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    esi
mov     ebx, eax
shl     ebx, 2
add     ebx, eax
shl     ebx, 3
mov     [esp+34h+var_18], bl
mov     eax, [ecx+1Ch]
mov     ebx, 7
xor     edx, edx
mov     esi, esp
call    sub_4EE48D
xor     edx, edx
mov     eax, [esp+34h+var_2C]
lea     esi, [esp+34h+var_24]
call    sub_4EE4F0
mov     al, [esp+34h+var_14]
add     al, 23h ; '#'
mov     [esp+34h+var_1C], al
mov     [esp+34h+var_24], al
mov     al, [esp+34h+var_14]
add     al, 26h ; '&'
mov     [esp+34h+var_22], al
mov     ch, [esp+34h+var_14]
add     ch, 4
mov     [esp+34h+var_20], ch
mov     al, [esp+34h+var_14]
inc     al
mov     [esp+34h+var_1E], al
mov     al, [esp+34h+var_18]
add     al, 54h ; 'T'
mov     [esp+34h+var_23], al
mov     al, [esp+34h+var_18]
add     al, 67h ; 'g'
mov     [esp+34h+var_21], al
mov     cl, [esp+34h+var_23]
mov     [esp+34h+var_1F], cl
mov     [esp+34h+var_1D], al
lea     ebx, [esp+34h+var_24]
xor     edx, edx
mov     eax, [esp+34h+var_2C]
call    sub_4EE54C
mov     edx, 1
mov     eax, [esp+34h+var_2C]
lea     esi, [esp+34h+var_24]
call    sub_4EE4F0
mov     al, [esp+34h+var_14]
add     al, 20h ; ' '
mov     [esp+34h+var_24], al
mov     al, [esp+34h+var_1C]
mov     [esp+34h+var_22], al
mov     al, [esp+34h+var_14]
add     al, 7
mov     [esp+34h+var_20], al
mov     [esp+34h+var_1E], ch
mov     al, [esp+34h+var_18]
add     al, 41h ; 'A'
mov     [esp+34h+var_23], al
mov     [esp+34h+var_21], cl
mov     [esp+34h+var_1F], al
mov     [esp+34h+var_1D], cl
lea     ebx, [esp+34h+var_24]
mov     edx, 1
mov     eax, [esp+34h+var_2C]
call    sub_4EE54C
add     esp, 24h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_479425 endp




sub_47957D proc near
push    edx
cmp     byte ptr [eax+0Fh], 0
jnz     short loc_47958B
call    sub_4791DD
pop     edx
retn

loc_47958B:
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_479590[edx*4]
pop     edx
retn
sub_47957D endp




sub_479599 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47959F[edx*4]
pop     edx
retn
sub_479599 endp




sub_4795A8 proc near
push    ecx
push    edx
mov     edx, eax
mov     eax, 200000h
call    sub_4A7AAC
mov     [edx+1Ch], eax
xor     ecx, ecx
mov     ds:dword_55A1E0, ecx
inc     byte ptr [edx+8]
pop     edx
pop     ecx
retn
sub_4795A8 endp




sub_4795C7 proc near

var_28= dword ptr -28h
var_20= byte ptr -20h
var_1E= byte ptr -1Eh
var_1C= byte ptr -1Ch
var_1A= byte ptr -1Ah

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebp, eax
xor     edi, edi
inc     ds:dword_55A1E0
mov     eax, [eax+1Ch]
mov     ebx, 2
xor     edx, edx
mov     esi, esp
call    sub_4EE48D
xor     ecx, ecx
jmp     short loc_479616

loc_4795EF:
inc     [esp+30h+var_20]
inc     [esp+30h+var_1E]
inc     [esp+30h+var_1C]
inc     [esp+30h+var_1A]

loc_4795FF:
movsx   edx, cx
lea     ebx, [esp+30h+var_20]
mov     eax, [esp+30h+var_28]
call    sub_4EE54C
inc     ecx
cmp     cx, 8
jge     short loc_479652

loc_479616:
movsx   edx, cx
mov     eax, [esp+30h+var_28]
lea     esi, [esp+30h+var_20]
call    sub_4EE4F0
test    di, di
jnz     short loc_479637
test    cx, cx
jnz     short loc_4795EF
cmp     [esp+30h+var_20], 0A0h
jb      short loc_4795EF

loc_479637:
mov     edi, 1
sub     [esp+30h+var_20], 1Fh
sub     [esp+30h+var_1E], 1Fh
sub     [esp+30h+var_1C], 1Fh
sub     [esp+30h+var_1A], 1Fh
jmp     short loc_4795FF

loc_479652:
mov     eax, [ebp+1Ch]
mov     ebx, 2
mov     edx, 1
mov     esi, esp
call    sub_4EE48D
xor     ecx, ecx
jmp     short loc_479691

loc_47966A:
inc     [esp+30h+var_20]
inc     [esp+30h+var_1E]
inc     [esp+30h+var_1C]
inc     [esp+30h+var_1A]

loc_47967A:
movsx   edx, cx
lea     ebx, [esp+30h+var_20]
mov     eax, [esp+30h+var_28]
call    sub_4EE54C
inc     ecx
cmp     cx, 4
jge     short loc_4796BC

loc_479691:
movsx   edx, cx
mov     eax, [esp+30h+var_28]
lea     esi, [esp+30h+var_20]
call    sub_4EE4F0
test    di, di
jz      short loc_47966A
sub     [esp+30h+var_20], 1Fh
sub     [esp+30h+var_1E], 1Fh
sub     [esp+30h+var_1C], 1Fh
sub     [esp+30h+var_1A], 1Fh
jmp     short loc_47967A

loc_4796BC:
add     esp, 18h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4795C7 endp




sub_4796C6 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4796CC[edx*4]
pop     edx
retn
sub_4796C6 endp




sub_4796D5 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     eax, 640h
call    sub_47E888
test    eax, eax
jz      short loc_4796F0
mov     byte ptr [ebx+8], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4796F0:
call    sub_4DE227
test    eax, eax
jz      short loc_479712
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 13h
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     dword ptr [eax+0Ch], 0
mov     [ebx+1Ch], eax

loc_479712:
call    sub_4DE043
test    eax, eax
jz      short loc_47972D
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Fh
mov     byte ptr [eax+3], 0
mov     dword ptr [eax+0Ch], 0

loc_47972D:
xor     edx, edx
jmp     short loc_479737

loc_479731:
inc     edx
cmp     edx, 6
jge     short loc_479772

loc_479737:
call    sub_4DE13B
test    eax, eax
jz      short loc_479731
mov     ecx, edx
mov     ds:dword_55A200[edx*4], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Ch
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     [eax+0Eh], dl
mov     byte ptr [eax+0Fh], 0
add     cl, dl
mov     ch, 6
sub     ch, cl
mov     [eax+9], ch
mov     byte ptr [eax+0Ah], 0
jmp     short loc_479731

loc_479772:
xor     edx, edx

loc_479774:
mov     eax, edx
shl     eax, 3
add     eax, offset unk_518BBC
call    sub_42C443
call    sub_4EEA3F
mov     ds:dword_55A1E4[edx*4], eax
inc     edx
cmp     edx, 7
jl      short loc_479774
inc     byte ptr [ebx+8]
mov     byte ptr [ebx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4796D5 endp




sub_4797A0 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
call    sub_4799A8
mov     ecx, eax
mov     ebx, eax
call    sub_4799EE
cmp     byte ptr [edx+9], 0
jnz     loc_479947
cmp     byte ptr ds:dword_560BDC, 0
jnz     loc_479982
mov     eax, 627h
call    sub_47E888
test    eax, eax
jz      short loc_479807
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     short loc_479807
call    sub_4B55BB
test    eax, eax
jz      short loc_479807
mov     eax, 621h
call    sub_47E8B8
mov     eax, 622h

loc_4797FE:
call    sub_47E8B8
pop     edx
pop     ecx
pop     ebx
retn

loc_479807:
cmp     ebx, 7Eh ; '~'
jge     short loc_479850
mov     eax, 623h
call    sub_47E888
test    eax, eax
jnz     short loc_479850
mov     eax, 624h
call    sub_47E888
test    eax, eax
jnz     short loc_479850
mov     eax, 625h
call    sub_47E888
test    eax, eax
jnz     short loc_479850
call    sub_4B55BB
test    eax, eax
jz      short loc_479850
mov     eax, 621h
call    sub_47E8B8
mov     eax, 623h
jmp     short loc_4797FE

loc_479850:
cmp     ebx, 3Fh ; '?'
jge     short loc_47989C
mov     eax, 623h
call    sub_47E888
test    eax, eax
jz      short loc_47989C
mov     eax, 624h
call    sub_47E888
test    eax, eax
jnz     short loc_47989C
mov     eax, 625h
call    sub_47E888
test    eax, eax
jnz     short loc_47989C
call    sub_4B55BB
test    eax, eax
jz      short loc_47989C
mov     eax, 621h
call    sub_47E8B8
mov     eax, 624h
jmp     loc_4797FE

loc_47989C:
test    ebx, ebx
jnz     short loc_479903
mov     eax, 623h
call    sub_47E888
test    eax, eax
jz      short loc_479903
mov     eax, 624h
call    sub_47E888
test    eax, eax
jz      short loc_479903
mov     eax, 625h
call    sub_47E888
test    eax, eax
jnz     short loc_479903
call    sub_4B55BB
test    eax, eax
jz      short loc_479903
mov     eax, 621h
call    sub_47E8B8
mov     eax, 625h
call    sub_47E8B8
mov     eax, 629h
call    sub_47E888
test    eax, eax
jnz     loc_479982
mov     eax, 629h
jmp     loc_4797FE

loc_479903:
mov     eax, 628h
call    sub_47E888
test    eax, eax
jz      loc_479982
mov     eax, 626h
call    sub_47E888
test    eax, eax
jnz     short loc_479982
call    sub_4B55BB
test    eax, eax
jz      short loc_479982
mov     eax, 621h
call    sub_47E8B8
mov     eax, 626h
call    sub_47E8B8
inc     byte ptr [edx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_479947:
mov     eax, 629h
call    sub_47E888
test    eax, eax
jnz     short loc_479963
test    ecx, ecx
jnz     short loc_479963
mov     eax, 629h
call    sub_47E8B8

loc_479963:
mov     eax, 640h
call    sub_47E888
test    eax, eax
jz      short loc_479982
mov     eax, 10h
call    sub_4D9040
inc     byte ptr [edx+8]
mov     byte ptr [edx+9], 0

loc_479982:
pop     edx
pop     ecx
pop     ebx
retn
sub_4797A0 endp




sub_479986 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx

loc_47998C:
mov     eax, ds:dword_55A200[edx*4]
call    sub_4DE3EA
inc     edx
cmp     edx, 6
jl      short loc_47998C
mov     eax, ecx
call    sub_4DE439
pop     edx
pop     ecx
retn
sub_479986 endp




sub_4799A8 proc near
push    ebx
push    edx
push    esi
xor     edx, edx
mov     ebx, 0BBh
jmp     short loc_4799C1

loc_4799B4:
mov     ds:dword_55A1E4[edx*4], esi
inc     edx
cmp     edx, 7
jge     short loc_4799E8

loc_4799C1:
mov     eax, edx
shl     eax, 3
add     eax, offset unk_518BBC
call    sub_42C443
call    sub_4EEA3F
mov     esi, eax
cmp     eax, ds:dword_55A1E4[edx*4]
jge     short loc_4799B4
cmp     eax, ebx
jge     short loc_4799B4
mov     ebx, eax
jmp     short loc_4799B4

loc_4799E8:
mov     eax, ebx
pop     esi
pop     edx
pop     ebx
retn
sub_4799A8 endp




sub_4799EE proc near
push    edx
cmp     eax, 9Ch
jge     short loc_479A00
mov     edx, ds:dword_55A200
mov     byte ptr [edx+0Fh], 1

loc_479A00:
cmp     eax, 7Dh ; '}'
jge     short loc_479A0F
mov     edx, ds:dword_55A204
mov     byte ptr [edx+0Fh], 1

loc_479A0F:
cmp     eax, 5Eh ; '^'
jge     short loc_479A1E
mov     edx, ds:dword_55A208
mov     byte ptr [edx+0Fh], 1

loc_479A1E:
cmp     eax, 3Eh ; '>'
jge     short loc_479A2D
mov     edx, ds:dword_55A20C
mov     byte ptr [edx+0Fh], 1

loc_479A2D:
cmp     eax, 1Fh
jge     short loc_479A3C
mov     edx, ds:dword_55A210
mov     byte ptr [edx+0Fh], 1

loc_479A3C:
test    eax, eax
jnz     short loc_479A5E
mov     eax, ds:dword_55A214
mov     byte ptr [eax+0Fh], 1
xor     eax, eax

loc_479A4B:
mov     edx, ds:dword_55A200[eax*4]
mov     word ptr [edx+26h], 1
inc     eax
cmp     eax, 6
jl      short loc_479A4B

loc_479A5E:
pop     edx
retn
sub_4799EE endp




sub_479A60 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_479A66[edx*4]
pop     edx
retn
sub_479A60 endp




sub_479A6F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     eax, 1Dh
call    sub_47E888
test    eax, eax
jnz     short loc_479A8D
cmp     byte ptr ds:dword_77E7D5+1, 5
jz      short loc_479A96

loc_479A8D:
mov     byte ptr [ecx+8], 2
jmp     loc_479C72

loc_479A96:
mov     dl, byte ptr ds:dword_560BDC
test    dl, dl
jnz     loc_479C72
xor     dh, dh
mov     word ptr ds:dword_77E8F8, dx
mov     eax, ds:dword_55A110
mov     eax, [eax+48h]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     word ptr ds:dword_77E7E0+2, ax
or      byte ptr [ecx+6], 20h
mov     eax, 1Bh
call    sub_47E888
test    eax, eax
jnz     short loc_479AE6
mov     ax, word ptr ds:dword_77E7E0+2
mov     word ptr ds:dword_77E7E0, ax
mov     [ecx+3], dl
jmp     short loc_479B2C

loc_479AE6:
mov     eax, 1Ch
call    sub_47E888
test    eax, eax
jnz     short loc_479B0E
mov     byte ptr [ecx+3], 1
mov     eax, 1Ch
call    sub_47E8B8
mov     eax, 2
call    sub_49E0D7
jmp     short loc_479B1E

loc_479B0E:
mov     byte ptr [ecx+3], 2
mov     ax, word ptr ds:dword_77E7E0+2
mov     word ptr ds:dword_77E7E0, ax

loc_479B1E:
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000010h
call    sub_4D89E4

loc_479B2C:
xor     ebx, ebx
xor     edx, edx
mov     eax, 100h
call    sub_4D89E4
mov     eax, ds:dword_55A110
mov     ebx, [eax+48h]
mov     bl, [ebx+0Ah]
and     ebx, 0FFh
xor     edx, edx
xor     eax, eax
call    sub_4368BF
mov     eax, ecx
call    sub_47A737
cmp     byte ptr [ecx+3], 0
jz      short loc_479B68
mov     eax, ecx
call    sub_47A7F9

loc_479B68:
mov     eax, offset byte_5F8364
or      ds:byte_5F8364, 3
mov     ds:byte_5F88AD, 0FFh
cmp     byte ptr [ecx+3], 0
jnz     short loc_479BA8
mov     word ptr ds:dword_5F8376+2, 3200h
mov     word ptr ds:dword_5F837A, 0FD9Eh
mov     edi, 400h
mov     word ptr ds:dword_5F837A+2, di
mov     word ptr ds:dword_5F83B8+2, di
jmp     short loc_479BCC

loc_479BA8:
mov     word ptr ds:dword_5F8376+2, 0A00h
mov     word ptr ds:dword_5F837A, 0FD9Eh
mov     word ptr ds:dword_5F837A+2, 0E000h
mov     word ptr ds:dword_5F83B8+2, 600h

loc_479BCC:
mov     ebx, [eax+12h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+1Ch], ebx
mov     ebx, [eax+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+20h], ebx
mov     ebx, [eax+16h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+24h], ebx
mov     word ptr [eax+58h], 0
mov     bx, [eax+58h]
mov     [eax+54h], bx
lea     edi, [eax+2Ch]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [eax+34h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+5Ch]
lea     esi, [eax+54h]
movsd
movsd
mov     byte ptr [eax+76h], 1
mov     byte ptr [eax+74h], 0
mov     ebx, ds:dword_55A2A8
mov     [eax+0C0h], ebx
mov     dword ptr [ecx+1Ch], 0
mov     bl, 1
mov     byte ptr ds:dword_77E954+2, bl
mov     ds:byte_77E807, bl
mov     byte ptr [ecx+0Ch], 0
mov     [ecx+8], bl
mov     al, [ecx+3]
cmp     al, bl
jb      short loc_479C57
jbe     short loc_479C60
cmp     al, 2
jz      short loc_479C66
jmp     short loc_479C6A

loc_479C57:
test    al, al
jnz     short loc_479C6A
mov     [ecx+9], al
jmp     short loc_479C6A

loc_479C60:
mov     byte ptr [ecx+9], 2
jmp     short loc_479C6A

loc_479C66:
mov     byte ptr [ecx+9], 4

loc_479C6A:
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0

loc_479C72:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_479A6F endp




sub_479C78 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_479C7E[edx*4]
pop     edx
retn
sub_479C78 endp



; Attributes: thunk

sub_479C87 proc near
jmp     sub_4DE439
sub_479C87 endp

jpt_479CF4 dd offset loc_479CFB ; jump table for switch statement
dd offset loc_479D29
dd offset loc_479D77
dd offset loc_479D9F
dd offset loc_479DD0
dd offset loc_479E05
dd offset loc_479E36
dd offset loc_479E94
dd offset loc_479F04
dd offset loc_479F67
dd offset loc_479F98
dd offset loc_479FCE
dd offset loc_47A045
dd offset loc_47A076
dd offset loc_47A099
dd offset loc_47A0DC



sub_479CCC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edi, eax
mov     esi, offset byte_5F8364
xor     edx, edx
call    sub_47A865
mov     ebx, eax
mov     dl, [edi+0Ah]
cmp     dl, 0Fh         ; switch 16 cases
ja      def_479CF4      ; jumptable 00479CF4 default case
and     edx, 0FFh
jmp     jpt_479CF4[edx*4] ; switch jump

loc_479CFB:             ; jumptable 00479CF4 case 0
mov     ebp, [edi+1Ch]
cmp     ebp, 14h
jnb     short loc_479D0E
lea     eax, [ebp+1]
mov     [edi+1Ch], eax
jmp     def_479CF4      ; jumptable 00479CF4 default case

loc_479D0E:
mov     edx, 1
mov     eax, 4
call    sub_4A0E24

loc_479D1D:
mov     dword ptr [edi+1Ch], 0
jmp     loc_479EFC

loc_479D29:             ; jumptable 00479CF4 case 1
test    eax, eax
jz      def_479CF4      ; jumptable 00479CF4 default case
mov     ecx, offset unk_518C8A
xor     ebx, eax
mov     edx, 2Ch ; ','
mov     eax, edi
call    sub_47A94C
inc     byte ptr [edi+0Ch]
mov     dword ptr [edi+1Ch], 0
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_479D66
mov     eax, 4
call    sub_4A0E75
call    sub_4D8EB1

loc_479D66:
xor     edx, edx
mov     eax, 4
call    sub_4A0E24
jmp     loc_479EFC

loc_479D77:             ; jumptable 00479CF4 case 2
test    eax, eax
jz      def_479CF4      ; jumptable 00479CF4 default case
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     def_479CF4      ; jumptable 00479CF4 default case
mov     dword ptr [edi+1Ch], 0
or      byte ptr [esi+0BDh], 40h
jmp     loc_479EFC

loc_479D9F:             ; jumptable 00479CF4 case 3
mov     eax, esi
call    sub_4B61E1
test    eax, eax
jnz     def_479CF4      ; jumptable 00479CF4 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 101h
call    sub_4D89E4
mov     edx, 18h
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [edi+0Ch]
jmp     loc_479D1D

loc_479DD0:             ; jumptable 00479CF4 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_479CF4      ; jumptable 00479CF4 default case
and     byte ptr [esi+0BDh], 0BFh
xor     ebx, ebx
xor     edx, edx
mov     eax, 100h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 8000000Eh
call    sub_4D89E4
jmp     loc_479EFC

loc_479E05:             ; jumptable 00479CF4 case 5
test    eax, eax
jz      def_479CF4      ; jumptable 00479CF4 default case
mov     esi, 1

loc_479E12:
mov     ecx, esi
shl     ecx, 3
add     ecx, offset unk_518C8A
mov     ebx, esi
mov     edx, 2Ch ; ','
mov     eax, edi
call    sub_47A94C
inc     esi
cmp     esi, 4
jl      short loc_479E12
jmp     loc_479EF9

loc_479E36:             ; jumptable 00479CF4 case 6
test    eax, eax
jz      def_479CF4      ; jumptable 00479CF4 default case
mov     esi, 4

loc_479E43:
mov     ecx, esi
shl     ecx, 3
add     ecx, offset unk_518C8A
mov     ebx, esi
mov     edx, 2Ch ; ','
mov     eax, edi
call    sub_47A94C
inc     esi
cmp     esi, 7
jl      short loc_479E43
xor     esi, esi

loc_479E64:
mov     ecx, esi
shl     ecx, 3
add     ecx, offset unk_518D5A
mov     ebx, esi
mov     edx, 32h ; '2'
mov     eax, edi
call    sub_47A94C
inc     esi
cmp     esi, 4
jl      short loc_479E64
mov     edx, 19h
mov     eax, 4
call    sub_4A0E24
jmp     short loc_479EF9

loc_479E94:             ; jumptable 00479CF4 case 7
test    eax, eax
jz      def_479CF4      ; jumptable 00479CF4 default case
xor     esi, esi
jmp     short loc_479EA6

loc_479EA0:
inc     esi
cmp     esi, 4
jge     short loc_479EBF

loc_479EA6:
mov     eax, ds:dword_55A21C[esi*4]
cmp     byte ptr [eax], 0
jz      short loc_479EA0
cmp     byte ptr [eax+2], 32h ; '2'
jnz     short loc_479EA0
call    sub_4DE2F6
jmp     short loc_479EA0

loc_479EBF:
mov     esi, 7

loc_479EC4:
mov     ecx, esi
shl     ecx, 3
add     ecx, offset unk_518C8A
mov     ebx, esi
mov     edx, 2Ch ; ','
mov     eax, edi
call    sub_47A94C
inc     esi
cmp     esi, 0Ah
jl      short loc_479EC4

loc_479EE3:
mov     edx, 1Ah

loc_479EE8:
mov     eax, 4
call    sub_4A0E24

loc_479EF2:
mov     dword ptr [edi+1Ch], 0

loc_479EF9:
inc     byte ptr [edi+0Ch]

loc_479EFC:
inc     byte ptr [edi+0Ah]
jmp     def_479CF4      ; jumptable 00479CF4 default case

loc_479F04:             ; jumptable 00479CF4 case 8
mov     eax, [edi+1Ch]
cmp     eax, 258h
jnb     short loc_479F16
lea     esi, [eax+1]
mov     [edi+1Ch], esi
jmp     short loc_479F34

loc_479F16:
jnz     short loc_479F34
cmp     word ptr ds:dword_5F837A+2, 0
jle     short loc_479F34
mov     edx, 0Bh
mov     eax, 4
call    sub_4A0E24
inc     dword ptr [edi+1Ch]

loc_479F34:
test    ebx, ebx
jz      def_479CF4      ; jumptable 00479CF4 default case
mov     esi, 4

loc_479F41:
mov     ecx, esi
shl     ecx, 3
add     ecx, offset unk_518D5A
mov     ebx, esi
mov     edx, 32h ; '2'
mov     eax, edi
call    sub_47A94C
inc     esi
cmp     esi, 8
jl      short loc_479F41
mov     edx, 1Bh
jmp     short loc_479EE8

loc_479F67:             ; jumptable 00479CF4 case 9
test    eax, eax
jz      def_479CF4      ; jumptable 00479CF4 default case
mov     esi, 0Ah

loc_479F74:
mov     ecx, esi
shl     ecx, 3
add     ecx, offset unk_518C8A
mov     ebx, esi
mov     edx, 2Ch ; ','
mov     eax, edi
call    sub_47A94C
inc     esi
cmp     esi, 0Dh
jl      short loc_479F74
jmp     loc_479EE3

loc_479F98:             ; jumptable 00479CF4 case 10
test    eax, eax
jz      def_479CF4      ; jumptable 00479CF4 default case
mov     esi, 0Dh

loc_479FA5:
mov     ecx, esi
shl     ecx, 3
add     ecx, offset unk_518C8A
mov     ebx, esi
mov     edx, 2Ch ; ','
mov     eax, edi
call    sub_47A94C
inc     esi
cmp     esi, 11h
jl      short loc_479FA5
mov     edx, 19h
jmp     loc_479EE8

loc_479FCE:             ; jumptable 00479CF4 case 11
mov     edx, [edi+1Ch]
cmp     edx, 352h
jnb     short loc_479FE1
lea     ebp, [edx+1]
mov     [edi+1Ch], ebp
jmp     short loc_47A014

loc_479FE1:
jnz     short loc_47A014
mov     edx, ds:dword_77E7E0
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, ds:dword_77E7DC+2
sar     edx, 10h
cmp     edx, eax
jle     short loc_47A011
mov     edx, 0Ch
mov     eax, 4
call    sub_4A0E24

loc_47A011:
inc     dword ptr [edi+1Ch]

loc_47A014:
test    ebx, ebx
jz      def_479CF4      ; jumptable 00479CF4 default case
mov     esi, 11h

loc_47A021:
mov     ecx, esi
shl     ecx, 3
add     ecx, offset unk_518C8A
mov     ebx, esi
mov     edx, 2Ch ; ','
mov     eax, edi
call    sub_47A94C
inc     esi
cmp     esi, 14h
jl      short loc_47A021
jmp     loc_479EE3

loc_47A045:             ; jumptable 00479CF4 case 12
test    eax, eax
jz      def_479CF4      ; jumptable 00479CF4 default case
mov     esi, 14h

loc_47A052:
mov     ecx, esi
shl     ecx, 3
add     ecx, offset unk_518C8A
mov     ebx, esi
mov     edx, 2Ch ; ','
mov     eax, edi
call    sub_47A94C
inc     esi
cmp     esi, 18h
jl      short loc_47A052
jmp     loc_479EF2

loc_47A076:             ; jumptable 00479CF4 case 13
test    eax, eax
jz      def_479CF4      ; jumptable 00479CF4 default case
mov     ecx, offset unk_518D4A
mov     ebx, 18h
mov     edx, 2Ch ; ','
mov     eax, edi
call    sub_47A94C
jmp     loc_479EF2

loc_47A099:             ; jumptable 00479CF4 case 14
test    eax, eax
jz      short def_479CF4 ; jumptable 00479CF4 default case
mov     ecx, offset unk_518D52
mov     ebx, 19h
mov     edx, 2Ch ; ','
mov     eax, edi
call    sub_47A94C
mov     esi, 4
jmp     short loc_47A0C4

loc_47A0BA:
inc     esi
cmp     esi, 8
jge     loc_479EF2

loc_47A0C4:
mov     eax, ds:dword_55A21C[esi*4]
cmp     byte ptr [eax], 0
jz      short loc_47A0BA
cmp     byte ptr [eax+2], 32h ; '2'
jnz     short loc_47A0BA
mov     byte ptr [eax+0Fh], 1
jmp     short loc_47A0BA

loc_47A0DC:             ; jumptable 00479CF4 case 15
test    eax, eax
jz      short def_479CF4 ; jumptable 00479CF4 default case
mov     dword ptr [edi+1Ch], 0
inc     byte ptr [edi+0Ch]
mov     byte ptr [edi+9], 1
mov     byte ptr [edi+0Ah], 0

def_479CF4:             ; jumptable 00479CF4 default case
mov     eax, edi
call    sub_47AA2F
pop     ebp
jmp     loc_479C72
sub_479CCC endp

align 10h
jpt_47A12E dd offset loc_47A135 ; jump table for switch statement
dd offset loc_47A16D
dd offset loc_47A18A
dd offset loc_47A1A0
dd offset loc_47A1BE
dd offset loc_47A1E0



sub_47A118 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_47A12E      ; jumptable 0047A12E default case
and     eax, 0FFh
jmp     jpt_47A12E[eax*4] ; switch jump

loc_47A135:             ; jumptable 0047A12E case 0
call    sub_47AA42
test    eax, eax
jz      short loc_47A160
or      ds:byte_5F8421, 40h
mov     edx, 2
xor     eax, eax
call    sub_4A0E24
mov     dword ptr [ecx+1Ch], 0

loc_47A158:
inc     byte ptr [ecx+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47A160:
mov     byte ptr [ecx+9], 5
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47A16D:             ; jumptable 0047A12E case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47A12E      ; jumptable 0047A12E default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 101h
call    sub_4D89E4
jmp     short loc_47A158

loc_47A18A:             ; jumptable 0047A12E case 2
mov     eax, 10h
call    sub_4D9040
mov     eax, 0Ah
call    sub_49E0D7
jmp     short loc_47A158

loc_47A1A0:             ; jumptable 0047A12E case 3
cmp     ds:word_6E23D6, 0
jnz     def_47A12E      ; jumptable 0047A12E default case
cmp     ds:byte_77EAB8, 0
jnz     short def_47A12E ; jumptable 0047A12E default case
call    sub_4368E1
jmp     short loc_47A158

loc_47A1BE:             ; jumptable 0047A12E case 4
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short def_47A12E ; jumptable 0047A12E default case
mov     byte ptr ds:dword_5F836C, 3
xor     bh, bh
mov     byte ptr ds:dword_5F836C+1, bh
jmp     loc_47A158

loc_47A1E0:             ; jumptable 0047A12E case 5
and     ds:byte_5F8364, 0FCh
xor     dl, dl
mov     ds:byte_5F83DA, dl
xor     dh, dh
mov     ds:byte_5F88AD, dl
mov     ds:word_5F83A8, dx
xor     ebx, ebx
mov     ds:word_5F83AA, bx
xor     esi, esi
mov     ds:word_5F83AC, si
mov     eax, 1Bh
call    sub_47E8B8
mov     byte ptr [ecx+8], 2
mov     [ecx+9], dl
mov     [ecx+0Ah], dl

def_47A12E:             ; jumptable 0047A12E default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47A118 endp




sub_47A229 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_47A23B
cmp     al, 1
jz      short loc_47A269
jmp     short loc_47A294

loc_47A23B:
mov     edx, [ecx+1Ch]
cmp     edx, 168h
jnb     short loc_47A24E
lea     ebx, [edx+1]
mov     [ecx+1Ch], ebx
jmp     short loc_47A294

loc_47A24E:
mov     edx, 3
mov     eax, 4
call    sub_4A0E24
mov     dword ptr [ecx+1Ch], 0
inc     byte ptr [ecx+0Ah]
jmp     short loc_47A294

loc_47A269:
mov     edx, 1
mov     eax, ecx
call    sub_47A865
test    eax, eax
jz      short loc_47A294
or      ds:byte_5F8421, 40h
mov     dword ptr [ecx+1Ch], 0
inc     byte ptr [ecx+0Ch]
mov     byte ptr [ecx+9], 3
mov     byte ptr [ecx+0Ah], 0
jmp     short loc_47A29A

loc_47A294:
cmp     byte ptr [ecx+0Ah], 2
jnb     short loc_47A2A1

loc_47A29A:
mov     eax, ecx
call    sub_47AA2F

loc_47A2A1:
pop     edx
pop     ecx
pop     ebx
retn
sub_47A229 endp

align 4
jpt_47A2DE dd offset loc_47A2E5 ; jump table for switch statement
dd offset loc_47A30A
dd offset loc_47A363
dd offset loc_47A3CB
dd offset loc_47A3E3
dd offset loc_47A409
dd offset loc_47A42A
dd offset loc_47A44C



sub_47A2C8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 7           ; switch 8 cases
ja      def_47A2DE      ; jumptable 0047A2DE default case
and     eax, 0FFh
jmp     jpt_47A2DE[eax*4] ; switch jump

loc_47A2E5:             ; jumptable 0047A2DE case 0
call    sub_47AA42
test    eax, eax
jz      short loc_47A2FD
or      ds:byte_5F8421, 40h

loc_47A2F5:
inc     byte ptr [ecx+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47A2FD:
mov     byte ptr [ecx+9], 5

loc_47A301:
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47A30A:             ; jumptable 0047A2DE case 1
mov     eax, offset byte_5F8364
call    sub_4B61E1
test    eax, eax
jnz     def_47A2DE      ; jumptable 0047A2DE default case
mov     edx, 1
mov     eax, 7Fh
call    sub_4DC979
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_47A340
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1

loc_47A340:
mov     edx, 4
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
xor     edx, edx
mov     eax, 101h
call    sub_4D89E4
mov     dword ptr [ecx+1Ch], 0
jmp     short loc_47A2F5

loc_47A363:             ; jumptable 0047A2DE case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47A2DE      ; jumptable 0047A2DE default case
mov     edx, 2
mov     eax, 7Fh
call    sub_4DC979
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      short loc_47A3A5
mov     edx, 5
mov     eax, 4
call    sub_4A0E24
mov     byte ptr [ecx+0Ah], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47A3A5:
mov     edx, 6
mov     eax, 4
call    sub_4A0E24
xor     ebx, ebx
xor     edx, edx
mov     eax, 100h
call    sub_4D89E4
mov     byte ptr [ecx+0Ah], 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47A3CB:             ; jumptable 0047A2DE case 3
and     ds:byte_5F8421, 0BFh
xor     eax, eax
mov     word ptr ds:dword_77E8F8, ax
mov     byte ptr [ecx+9], 4
jmp     loc_47A301

loc_47A3E3:             ; jumptable 0047A2DE case 4
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     def_47A2DE      ; jumptable 0047A2DE default case
mov     eax, 10h
call    sub_4D9040
mov     eax, 0Ah
call    sub_49E0D7
jmp     loc_47A2F5

loc_47A409:             ; jumptable 0047A2DE case 5
cmp     ds:word_6E23D6, 0
jnz     def_47A2DE      ; jumptable 0047A2DE default case
cmp     ds:byte_77EAB8, 0
jnz     short def_47A2DE ; jumptable 0047A2DE default case
call    sub_4368E1
jmp     loc_47A2F5

loc_47A42A:             ; jumptable 0047A2DE case 6
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short def_47A2DE ; jumptable 0047A2DE default case
mov     byte ptr ds:dword_5F836C, 3
xor     bh, bh
mov     byte ptr ds:dword_5F836C+1, bh
jmp     loc_47A2F5

loc_47A44C:             ; jumptable 0047A2DE case 7
and     ds:byte_5F8364, 0FCh
xor     dl, dl
mov     ds:byte_5F83DA, dl
xor     dh, dh
mov     ds:byte_5F88AD, dl
mov     ds:word_5F83A8, dx
xor     ebx, ebx
mov     ds:word_5F83AA, bx
xor     esi, esi
mov     ds:word_5F83AC, si
mov     eax, 1Fh
call    sub_47E8B8
mov     byte ptr [ecx+8], 2
mov     [ecx+9], dl
mov     [ecx+0Ah], dl

def_47A2DE:             ; jumptable 0047A2DE default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47A2C8 endp

align 4
jpt_47A4D2 dd offset loc_47A4D9 ; jump table for switch statement
dd offset loc_47A4FF
dd offset loc_47A523
dd offset loc_47A591
dd offset loc_47A5D8
dd offset loc_47A5FB
dd offset loc_47A62F
dd offset loc_47A667
dd offset loc_47A68D



sub_47A4BC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 8           ; switch 9 cases
ja      def_47A4D2      ; jumptable 0047A4D2 default case
and     eax, 0FFh
jmp     jpt_47A4D2[eax*4] ; switch jump

loc_47A4D9:             ; jumptable 0047A4D2 case 0
cmp     byte ptr ds:dword_77E7D5, 3
jnz     def_47A4D2      ; jumptable 0047A4D2 default case
mov     byte ptr [esi+0Ch], 0

loc_47A4EA:
inc     byte ptr [esi+0Ah]

def_47A4D2:             ; jumptable 0047A4D2 default case
cmp     byte ptr [esi+0Ah], 4
jnb     short loc_47A4FA

loc_47A4F3:
mov     eax, esi
call    sub_47AA2F

loc_47A4FA:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47A4FF:             ; jumptable 0047A4D2 case 1
mov     edx, 2
mov     eax, esi
call    sub_47A865
test    eax, eax
jz      short def_47A4D2 ; jumptable 0047A4D2 default case
mov     edx, 7
mov     eax, 4
call    sub_4A0E24
inc     byte ptr [esi+0Ch]
jmp     short loc_47A4EA

loc_47A523:             ; jumptable 0047A4D2 case 2
mov     edx, 2
mov     eax, esi
call    sub_47A865
test    eax, eax
jz      short def_47A4D2 ; jumptable 0047A4D2 default case
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_47A54B
mov     eax, 4
call    sub_4A0E75
call    sub_4D8EB1

loc_47A54B:
mov     edx, 9
mov     eax, 4
call    sub_4A0E24
push    2C400040h
mov     eax, ds:dword_55A2A4
mov     ecx, 50h ; 'P'
xor     ebx, ebx
xor     edx, edx
call    sub_436785
mov     eax, ds:dword_55A2A4
mov     byte ptr [eax+0Eh], 1
inc     byte ptr [esi+0Ch]
mov     dword ptr [esi+1Ch], 0

loc_47A585:
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Bh], 0
jmp     def_47A4D2      ; jumptable 0047A4D2 default case

loc_47A591:             ; jumptable 0047A4D2 case 3
mov     eax, esi
call    sub_47AA5E
mov     eax, ds:dword_55A2A4
cmp     word ptr [eax+6Eh], 0
jg      def_47A4D2      ; jumptable 0047A4D2 default case
call    sub_47AA42
test    eax, eax
jz      short loc_47A5CB
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_47A585
mov     eax, 4
call    sub_4A0E75
call    sub_4D8EB1
jmp     short loc_47A585

loc_47A5CB:
mov     byte ptr [esi+9], 5

loc_47A5CF:
mov     byte ptr [esi+0Ah], 0
jmp     loc_47A4F3

loc_47A5D8:             ; jumptable 0047A4D2 case 4
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_47A4D2      ; jumptable 0047A4D2 default case
mov     edx, 1Fh
xor     eax, eax
call    sub_4A0E24
jmp     loc_47A4EA

loc_47A5FB:             ; jumptable 0047A4D2 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47A4D2      ; jumptable 0047A4D2 default case
mov     eax, 10h
call    sub_4D9040
xor     ebx, ebx
xor     edx, edx
mov     eax, 101h
call    sub_4D89E4
mov     eax, 0Ah
call    sub_49E0D7
jmp     loc_47A4EA

loc_47A62F:             ; jumptable 0047A4D2 case 6
cmp     ds:word_6E23D6, 0
jnz     def_47A4D2      ; jumptable 0047A4D2 default case
cmp     ds:byte_77EAB8, 0
jnz     def_47A4D2      ; jumptable 0047A4D2 default case
mov     eax, ds:dword_55A2A4
mov     byte ptr [eax+8], 2
call    sub_4368E1
mov     eax, ds:dword_55A2A4
call    sub_4367FD
jmp     loc_47A4EA

loc_47A667:             ; jumptable 0047A4D2 case 7
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_47A4D2      ; jumptable 0047A4D2 default case
mov     byte ptr ds:dword_5F836C, 3
xor     dl, dl
mov     byte ptr ds:dword_5F836C+1, dl
jmp     loc_47A4EA

loc_47A68D:             ; jumptable 0047A4D2 case 8
mov     eax, 1Dh
call    sub_47E8B8
mov     byte ptr [esi+8], 2
mov     byte ptr [esi+9], 0
jmp     loc_47A5CF
sub_47A4BC endp




sub_47A6A4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_47A6B8
cmp     al, 1
jz      short loc_47A703
pop     edx
pop     ecx
pop     ebx
retn

loc_47A6B8:
mov     eax, offset byte_5F8364
call    sub_4B56DA
mov     ds:byte_5F88AD, 1
xor     bh, bh
mov     ds:byte_5F84D9, bh
mov     eax, 10h
call    sub_4D9040
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_47A6F0
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1

loc_47A6F0:
mov     edx, 12h
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_47A703:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_47A733
xor     ebx, ebx
xor     edx, edx
mov     eax, 101h
call    sub_4D89E4
mov     byte ptr ds:dword_77E784, 0Ah
xor     dh, dh
mov     byte ptr ds:dword_77E784+1, dh
mov     byte ptr [ecx+8], 2
mov     [ecx+9], dh
mov     [ecx+0Ah], dh

loc_47A733:
pop     edx
pop     ecx
pop     ebx
retn
sub_47A6A4 endp




sub_47A737 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
call    sub_4DE043
mov     edx, eax
test    eax, eax
jz      loc_47A7F4
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 12h
cmp     byte ptr [ecx+3], 0
jnz     short loc_47A771
mov     byte ptr [eax+3], 1
mov     word ptr [eax+14h], 3200h
mov     word ptr [eax+18h], 400h
mov     word ptr [eax+56h], 400h
jmp     short loc_47A78B

loc_47A771:
mov     byte ptr [eax+3], 2
or      byte ptr [eax+6], 20h
mov     word ptr [eax+14h], 0A00h
mov     word ptr [eax+18h], 0E000h
mov     word ptr [eax+56h], 600h

loc_47A78B:
mov     word ptr [eax+16h], 0FFFFh
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
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+44h], 0
mov     word ptr [eax+46h], 0
mov     word ptr [eax+48h], 0
lea     edi, [eax+2Ch]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [eax+34h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+5Ch]
lea     esi, [eax+54h]
movsd
movsd
mov     ds:dword_55A2A8, eax

loc_47A7F4:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_47A737 endp




sub_47A7F9 proc near
push    edx
call    sub_4DDFD0
test    eax, eax
jz      short loc_47A863
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Ch
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+3], 0
mov     word ptr [eax+14h], 0FE00h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0EA00h
mov     word ptr [eax+56h], 0C00h
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
mov     edx, ds:dword_55A2A8
mov     dl, [edx+1]
mov     [eax+0Ch], dl
mov     byte ptr [eax+0Fh], 1
mov     ds:dword_55A2A4, eax

loc_47A863:
pop     edx
retn
sub_47A7F9 endp




sub_47A865 proc near
push    ebx
push    ecx
mov     ecx, edx
xor     edx, edx
test    ecx, ecx
jbe     short loc_47A876
cmp     ecx, 1
jz      short loc_47A88C
jmp     short loc_47A8A2

loc_47A876:
mov     ecx, [eax+9]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
add     eax, eax
add     eax, offset unk_518C18
jmp     short loc_47A8B6

loc_47A88C:
mov     ecx, [eax+9]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
add     eax, eax
add     eax, offset unk_518C6C
jmp     short loc_47A8B6

loc_47A8A2:
mov     ecx, [eax+9]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
add     eax, eax
add     eax, offset unk_518C78

loc_47A8B6:
mov     bl, [eax]
cmp     bl, 0FFh
jnz     short loc_47A8C2
xor     eax, eax
pop     ecx
pop     ebx
retn

loc_47A8C2:
cmp     bl, 1
jnz     short loc_47A8FE
cmp     byte ptr [eax+1], 3
jnz     short loc_47A8E9

loc_47A8CD:
mov     ecx, ds:dword_5F837A
sar     ecx, 10h
mov     eax, [eax+2]
sar     eax, 10h
cmp     ecx, eax
jle     loc_47A947
jmp     loc_47A942

loc_47A8E9:
mov     ecx, ds:dword_5F837A
sar     ecx, 10h
mov     eax, [eax+2]
sar     eax, 10h
cmp     ecx, eax
jge     short loc_47A947
jmp     short loc_47A942

loc_47A8FE:
test    bl, bl
jnz     short loc_47A923
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_5F8376
sar     ebx, 10h
cmp     ebx, ecx
jle     short loc_47A947
mov     bh, [eax+1]
cmp     bh, 3
jz      short loc_47A8CD
cmp     bh, 5
jz      short loc_47A8E9
jmp     short loc_47A942

loc_47A923:
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_5F8376
sar     ebx, 10h
cmp     ebx, ecx
jge     short loc_47A947
mov     ch, [eax+1]
cmp     ch, 3
jz      short loc_47A8CD
cmp     ch, 5
jz      short loc_47A8E9

loc_47A942:
mov     edx, 1

loc_47A947:
mov     eax, edx
pop     ecx
pop     ebx
retn
sub_47A865 endp




sub_47A94C proc near
push    esi
push    edi
push    ebp
mov     edi, eax
mov     ebp, edx
call    sub_4DDF54
mov     esi, eax
test    eax, eax
jz      loc_47AA2B
mov     byte ptr [eax], 1
mov     dx, [ecx]
mov     [eax+14h], dx
mov     dx, [ecx+2]
mov     [eax+16h], dx
mov     dx, [ecx+4]
mov     [eax+18h], dx
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
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     dx, [ecx+6]
mov     [eax+56h], dx
mov     edx, ebx
shl     edx, 2
cmp     ebp, 2Ch ; ','
jnz     short loc_47A9F8
mov     ds:dword_55A23C[edx], eax
mov     byte ptr [eax+2], 2Ch ; ','
mov     byte ptr [eax+4], 0
mov     edx, ebx
shl     edx, 3
add     edx, offset unk_518DBA
mov     bl, [edx]
mov     [eax+3], bl
mov     bl, [edx+4]
mov     [eax+0Ch], bl
mov     bl, [edx+5]
mov     [eax+0Dh], bl
mov     bl, [edx+6]
mov     [eax+0Eh], bl
mov     dl, [edx+7]
mov     [eax+0Fh], dl
jmp     short loc_47AA25

loc_47A9F8:
mov     ds:dword_55A21C[edx], eax
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+2], 32h ; '2'
mov     byte ptr [eax+4], 2
mov     bl, ds:byte_518D9A[edx]
mov     [eax+0Ch], bl
mov     bl, ds:byte_518D9B[edx]
mov     [eax+0Dh], bl
mov     dl, ds:byte_518D9C[edx]
mov     [eax+0Eh], dl

loc_47AA25:
mov     [esi+3A8h], edi

loc_47AA2B:
pop     ebp
pop     edi
pop     esi
retn
sub_47A94C endp




sub_47AA2F proc near
cmp     word ptr ds:dword_77E7E0, 0
jnz     short locret_47AA41
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0

locret_47AA41:
retn
sub_47AA2F endp




sub_47AA42 proc near
cmp     word ptr ds:dword_77E7E0, 0
jle     short loc_47AA5B
mov     word ptr ds:dword_77E8F8, 0FFFFh
mov     eax, 1
retn

loc_47AA5B:
xor     eax, eax
retn
sub_47AA42 endp




sub_47AA5E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
cmp     al, 1
jb      short loc_47AA70
jbe     short loc_47AA99
pop     edx
pop     ecx
pop     ebx
retn

loc_47AA70:
test    al, al
jnz     short loc_47AAB3
mov     edx, [ecx+1Ch]
cmp     edx, 3Ch ; '<'
jnb     short loc_47AA86
lea     ebx, [edx+1]
mov     [ecx+1Ch], ebx
pop     edx
pop     ecx
pop     ebx
retn

loc_47AA86:
mov     eax, 10h
call    sub_4D9040
mov     dword ptr [ecx+1Ch], 0
jmp     short loc_47AAB0

loc_47AA99:
cmp     ds:byte_77EAB8, 0
jnz     short loc_47AAB3
xor     ebx, ebx
xor     edx, edx
mov     eax, 8000002Ah
call    sub_4D89E4

loc_47AAB0:
inc     byte ptr [ecx+0Bh]

loc_47AAB3:
pop     edx
pop     ecx
pop     ebx
retn
sub_47AA5E endp




sub_47AAB7 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47AABD[edx*4]
pop     edx
retn
sub_47AAB7 endp




sub_47AAC6 proc near
push    edx
mov     dl, [eax+9]
test    dl, dl
jnz     short loc_47AB25
mov     dh, byte ptr ds:dword_560BDC
test    dh, dh
jnz     short loc_47AB31
mov     word ptr ds:dword_77E8F8, dx
or      byte ptr [eax+6], 20h
mov     dl, byte ptr ds:dword_77E5EC
cmp     dl, 2
jb      short loc_47AAF7
jbe     short loc_47AB01
cmp     dl, 3
jz      short loc_47AB07
jmp     short loc_47AB0D

loc_47AAF7:
cmp     dl, 1
jnz     short loc_47AB0D
mov     [eax+3], dh
jmp     short loc_47AB13

loc_47AB01:
mov     byte ptr [eax+3], 1
jmp     short loc_47AB13

loc_47AB07:
mov     byte ptr [eax+3], 2
jmp     short loc_47AB13

loc_47AB0D:
mov     byte ptr [eax+8], 3
pop     edx
retn

loc_47AB13:
mov     dword ptr [eax+1Ch], 0
inc     byte ptr [eax+9]
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0

loc_47AB25:
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_47AB2A[edx*4]

loc_47AB31:
pop     edx
retn
sub_47AAC6 endp




sub_47AB33 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_47AB39[edx*4]
pop     edx
retn
sub_47AB33 endp




sub_47AB42 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
test    al, al
jbe     short loc_47AB56
cmp     al, 1
jz      short loc_47ABA1
pop     edx
pop     ecx
pop     ebx
retn

loc_47AB56:
mov     eax, offset byte_5F8364
call    sub_4B56DA
mov     ds:byte_5F88AD, 1
xor     bh, bh
mov     ds:byte_5F84D9, bh
mov     eax, 10h
call    sub_4D9040
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_47AB8E
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1

loc_47AB8E:
mov     edx, 10h
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_47ABA1:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_47ABDE
xor     ebx, ebx
xor     edx, edx
mov     eax, 182h
call    sub_4D89E4
mov     eax, 10h
call    sub_4D8E2B
mov     byte ptr ds:dword_77E784, 0Ah
xor     dh, dh
mov     byte ptr ds:dword_77E784+1, dh
mov     byte ptr [ecx+8], 3
mov     [ecx+9], dh
mov     [ecx+0Ah], dh
mov     [ecx+0Bh], dh

loc_47ABDE:
pop     edx
pop     ecx
pop     ebx
retn
sub_47AB42 endp



; Attributes: thunk

sub_47ABE2 proc near
jmp     sub_4DE439
sub_47ABE2 endp

jpt_47AC0E dd offset loc_47AC15 ; jump table for switch statement
dd offset loc_47ACC3
dd offset loc_47ACEB
dd offset loc_47ACF3



sub_47ABF7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case
and     eax, 0FFh
jmp     jpt_47AC0E[eax*4] ; switch jump

loc_47AC15:             ; jumptable 0047AC0E case 0
mov     eax, edx
call    sub_47B2DE
or      ds:byte_5F8364, 3
or      ds:byte_5F8421, 40h
xor     ecx, ecx
mov     word ptr ds:dword_5F8376+2, cx
mov     word ptr ds:dword_5F837A, 0FA3Fh
mov     word ptr ds:dword_5F837A+2, 0FF00h
xor     ecx, ecx
mov     ds:dword_5F8380, ecx
mov     ds:dword_5F8384, 0FA3F0000h
mov     ds:dword_5F8388, 0FF000000h
xor     eax, eax
mov     ds:word_5F83BC, ax
xor     ebx, ebx
mov     word ptr ds:dword_5F83B8, bx
mov     word ptr ds:dword_5F83B8+2, 800h
mov     edi, (offset dword_5F838E+2)
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, offset dword_5F8398
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
mov     edi, offset unk_5F83C0
mov     esi, offset dword_5F83B8
movsd
movsd
mov     cl, 1
mov     ds:byte_5F83DA, cl
xor     ch, ch
mov     ds:byte_5F83D8, ch
mov     eax, ds:dword_55A2C4
mov     ds:dword_5F8424, eax
add     [edx+0Ah], cl
jmp     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case

loc_47ACC3:             ; jumptable 0047AC0E case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case
mov     byte ptr ds:dword_5F836C, 3
xor     al, al
mov     byte ptr ds:dword_5F836C+1, al

loc_47ACE3:
inc     byte ptr [edx+0Ah]
jmp     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case

loc_47ACEB:             ; jumptable 0047AC0E case 2
inc     byte ptr ds:dword_5F836C+1
jmp     short loc_47ACE3

loc_47ACF3:             ; jumptable 0047AC0E case 3
mov     ah, ds:byte_5F8421
and     ah, 9Fh
mov     ds:byte_5F8421, ah
mov     bl, ah
or      bl, 20h
mov     ds:byte_5F8421, bl
xor     ebx, ebx
mov     ds:word_57096A, bx
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0
jmp     def_47AC0E      ; jumptable 0047AC0E default case
sub_47ABF7 endp         ; jumptable 0047B78B default case




sub_47AD2B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_47B2DE
or      ds:byte_5F8364, 3
xor     ebx, ebx
mov     word ptr ds:dword_5F8376+2, bx
mov     word ptr ds:dword_5F837A, 0FA3Fh
mov     word ptr ds:dword_5F837A+2, 0FF00h
xor     ecx, ecx
mov     ds:dword_5F8380, ecx
mov     ds:dword_5F8384, 0FA3F0000h
mov     ds:dword_5F8388, 0FF000000h
xor     edi, edi
mov     ds:word_5F83BC, di
xor     eax, eax
mov     word ptr ds:dword_5F83B8, ax
mov     word ptr ds:dword_5F83B8+2, 800h
mov     edi, (offset dword_5F838E+2)
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, offset dword_5F8398
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
mov     edi, offset unk_5F83C0
mov     esi, offset dword_5F83B8
movsd
movsd
mov     bl, 1
mov     ds:byte_5F83DA, bl
xor     bh, bh
mov     ds:byte_5F83D8, bh
mov     eax, ds:dword_55A2C4
mov     ds:dword_5F8424, eax
mov     [edx+8], bl
mov     [edx+9], bh
mov     [edx+0Ah], bh
mov     [edx+0Bh], bh
jmp     def_47AC0E      ; jumptable 0047AC0E default case
sub_47AD2B endp         ; jumptable 0047B78B default case

db 8Dh, 40h, 0
jpt_47AE1D dd offset loc_47AE24 ; jump table for switch statement
dd offset loc_47AE54
dd offset loc_47AE79
dd offset loc_47AE84
dd offset loc_47AEC2
dd offset loc_47AEDE
dd offset loc_47AF13
dd offset loc_47AF47



sub_47AE03 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+9]
cmp     al, 7           ; switch 8 cases
ja      def_47AE1D      ; jumptable 0047AE1D default case
and     eax, 0FFh
jmp     jpt_47AE1D[eax*4] ; switch jump

loc_47AE24:             ; jumptable 0047AE1D case 0
mov     eax, 1
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
mov     eax, 181h
call    sub_4D89E4
mov     eax, ecx
call    sub_47B613
mov     byte ptr [ecx+0Dh], 0
mov     al, [ecx+0Dh]
mov     [ecx+0Ch], al

loc_47AE4D:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_47AE54:             ; jumptable 0047AE1D case 1
cmp     ds:word_6E23D6, 0
jnz     def_47AE1D      ; jumptable 0047AE1D default case
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 5
mov     dword ptr [ecx+1Ch], 0
inc     byte ptr [ecx+9]
jmp     loc_47AF7D

loc_47AE79:             ; jumptable 0047AE1D case 2
mov     eax, ecx
call    sub_47B70F
pop     edx
pop     ecx
pop     ebx
retn

loc_47AE84:             ; jumptable 0047AE1D case 3
mov     eax, ecx
call    sub_47B96F
mov     al, [ecx+0Ch]
cmp     al, [ecx+0Dh]
jz      short loc_47AEB8
mov     eax, ecx
call    sub_47BA86
test    eax, eax
jz      short loc_47AEB8
call    sub_47BBEE
test    eax, eax
jz      short loc_47AEAC
inc     byte ptr [ecx+9]
jmp     short loc_47AEB8

loc_47AEAC:
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0

loc_47AEB8:
mov     al, [ecx+0Ch]
mov     [ecx+0Dh], al
pop     edx
pop     ecx
pop     ebx
retn

loc_47AEC2:             ; jumptable 0047AE1D case 4
mov     edx, [ecx+1Ch]
inc     edx
mov     [ecx+1Ch], edx
cmp     edx, 78h ; 'x'
jnz     def_47AE1D      ; jumptable 0047AE1D default case
or      ds:byte_5F8421, 40h
jmp     loc_47AE4D

loc_47AEDE:             ; jumptable 0047AE1D case 5
mov     eax, 10h
call    sub_4D9040
mov     eax, 9
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
mov     eax, 182h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 184h
call    sub_4D89E4
jmp     loc_47AE4D

loc_47AF13:             ; jumptable 0047AE1D case 6
cmp     ds:word_6E23D6, 0
jnz     short def_47AE1D ; jumptable 0047AE1D default case
mov     bh, ds:byte_77EAB8
test    bh, bh
jnz     short def_47AE1D ; jumptable 0047AE1D default case
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short def_47AE1D ; jumptable 0047AE1D default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, bh
jmp     loc_47AE4D

loc_47AF47:             ; jumptable 0047AE1D case 7
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_47AF5F
mov     eax, 4
call    sub_4A0E75
call    sub_4D8EB1

loc_47AF5F:
call    sub_4368E1
and     byte ptr [edx], 0FEh
mov     byte ptr [edx+76h], 0
mov     eax, 605h
call    sub_47E8B8
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 0

loc_47AF7D:
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0

def_47AE1D:             ; jumptable 0047AE1D default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47AE03 endp

db 8Bh, 0C0h
jpt_47AFC1 dd offset loc_47AFC8 ; jump table for switch statement
dd offset loc_47B00A
dd offset loc_47B036
dd offset loc_47B06F
dd offset loc_47B0A4
dd offset loc_47B0CF
dd offset loc_47B11C



sub_47AFA7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+9]
cmp     al, 6           ; switch 7 cases
ja      def_47AFC1      ; jumptable 0047AFC1 default case
and     eax, 0FFh
jmp     jpt_47AFC1[eax*4] ; switch jump

loc_47AFC8:             ; jumptable 0047AFC1 case 0
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000013h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 181h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 183h
call    sub_4D89E4
mov     eax, 1
call    sub_49E0D7
mov     dword ptr [ecx+1Ch], 0

loc_47B003:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_47B00A:             ; jumptable 0047AFC1 case 1
cmp     ds:word_6E23D6, 0
jnz     def_47AFC1      ; jumptable 0047AFC1 default case
and     ds:byte_5F8421, 0BFh
mov     edx, 5
mov     eax, 4
call    sub_4A0E24
inc     byte ptr [ecx+9]
jmp     loc_47B160

loc_47B036:             ; jumptable 0047AFC1 case 2
mov     eax, ecx
call    sub_47B96F
mov     edx, ds:dword_55A2C8
mov     bh, [edx+0Ch]
cmp     bh, 1
jnz     def_47AFC1      ; jumptable 0047AFC1 default case
call    sub_47BBEE
test    eax, eax
jz      short loc_47B05F
add     [ecx+9], bh
pop     edx
pop     ecx
pop     ebx
retn

loc_47B05F:
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_47B06F:             ; jumptable 0047AFC1 case 3
mov     edx, [ecx+1Ch]
test    edx, edx
jnz     short loc_47B08E
mov     edx, 3
xor     eax, eax
call    sub_4A0E24
mov     eax, 10h
call    sub_4D9040
jmp     short loc_47B09D

loc_47B08E:
cmp     edx, 78h ; 'x'
jnz     short loc_47B09D
or      ds:byte_5F8421, 40h
inc     byte ptr [ecx+9]

loc_47B09D:
inc     dword ptr [ecx+1Ch]
pop     edx
pop     ecx
pop     ebx
retn

loc_47B0A4:             ; jumptable 0047AFC1 case 4
mov     eax, 9
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
mov     eax, 182h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 184h
call    sub_4D89E4
jmp     loc_47B003

loc_47B0CF:             ; jumptable 0047AFC1 case 5
cmp     ds:word_6E23D6, 0
jnz     def_47AFC1      ; jumptable 0047AFC1 default case
cmp     ds:byte_77EAB8, 0
jnz     def_47AFC1      ; jumptable 0047AFC1 default case
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      short def_47AFC1 ; jumptable 0047AFC1 default case
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_47B10F
xor     eax, eax
call    sub_4A0E75
mov     eax, 0FFFFFFFFh
call    sub_4A0595

loc_47B10F:
mov     byte ptr [edx+8], 3
mov     byte ptr [edx+9], 0
jmp     loc_47B003

loc_47B11C:             ; jumptable 0047AFC1 case 6
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_47B134
mov     eax, 4
call    sub_4A0E75
call    sub_4D8EB1

loc_47B134:
call    sub_4368E1
mov     eax, ds:dword_55A2C8
call    sub_4367FD
and     byte ptr [edx], 0FEh
mov     byte ptr [edx+76h], 0
mov     eax, 606h
call    sub_47E8B8
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0

loc_47B160:
mov     byte ptr [ecx+0Bh], 0

def_47AFC1:             ; jumptable 0047AFC1 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47AFA7 endp

db 8Dh, 40h, 0
jpt_47B19D dd offset loc_47B1A4 ; jump table for switch statement
dd offset loc_47B1D1
dd offset loc_47B1FD
dd offset loc_47B23D
dd offset loc_47B25A
dd offset loc_47B292



sub_47B183 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+9]
cmp     al, 5           ; switch 6 cases
ja      def_47B19D      ; jumptable 0047B19D default case
and     eax, 0FFh
jmp     jpt_47B19D[eax*4] ; switch jump

loc_47B1A4:             ; jumptable 0047B19D case 0
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000014h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 181h
call    sub_4D89E4
mov     eax, 1
call    sub_49E0D7

loc_47B1CA:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_47B1D1:             ; jumptable 0047B19D case 1
cmp     ds:word_6E23D6, 0
jnz     def_47B19D      ; jumptable 0047B19D default case
and     ds:byte_5F8421, 0BFh
mov     edx, 0Ch
mov     eax, 4
call    sub_4A0E24
inc     byte ptr [ecx+9]
jmp     loc_47B2D6

loc_47B1FD:             ; jumptable 0047B19D case 2
mov     eax, ecx
call    sub_47B96F
mov     edx, ds:dword_55A2C8
mov     bl, [edx+0Ch]
cmp     bl, 1
jnz     def_47B19D      ; jumptable 0047B19D default case
call    sub_47BBEE
test    eax, eax
jz      short loc_47B22D
or      ds:byte_5F8421, 40h
add     [ecx+9], bl
pop     edx
pop     ecx
pop     ebx
retn

loc_47B22D:
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_47B23D:             ; jumptable 0047B19D case 3
mov     eax, 9
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
mov     eax, 182h
call    sub_4D89E4
jmp     loc_47B1CA

loc_47B25A:             ; jumptable 0047B19D case 4
cmp     ds:word_6E23D6, 0
jnz     def_47B19D      ; jumptable 0047B19D default case
mov     bh, ds:byte_77EAB8
test    bh, bh
jnz     short def_47B19D ; jumptable 0047B19D default case
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short def_47B19D ; jumptable 0047B19D default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, bh
jmp     loc_47B1CA

loc_47B292:             ; jumptable 0047B19D case 5
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_47B2AA
mov     eax, 4
call    sub_4A0E75
call    sub_4D8EB1

loc_47B2AA:
call    sub_4368E1
mov     eax, ds:dword_55A2C8
call    sub_4367FD
and     byte ptr [edx], 0FEh
mov     byte ptr [edx+76h], 0
mov     eax, 607h
call    sub_47E8B8
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0

loc_47B2D6:
mov     byte ptr [ecx+0Bh], 0

def_47B19D:             ; jumptable 0047B19D default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47B183 endp




sub_47B2DE proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
mov     eax, ds:dword_55A10C
mov     eax, [eax+28h]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 5
mov     word ptr ds:dword_77E7E0+2, ax
call    sub_4DDF54
mov     ebp, eax
test    eax, eax
jz      loc_47B419
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Ah
mov     byte ptr [eax+4], 1
mov     ebx, [esp+1Ch+var_1C]
mov     bl, [ebx+3]
mov     [eax+3], bl
mov     word ptr [eax+14h], 0
cmp     byte ptr [eax+3], 1
mov     word ptr [eax+16h], 0FC00h
mov     word ptr [eax+18h], 0
mov     ebx, [eax+12h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+1Ch], ebx
mov     ebx, [eax+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+20h], ebx
mov     ebx, [eax+16h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+24h], ebx
mov     word ptr [eax+58h], 0
mov     bx, [eax+58h]
mov     [eax+56h], bx
mov     [eax+54h], bx
mov     word ptr [eax+48h], 0
mov     bx, [eax+48h]
mov     [eax+46h], bx
mov     [eax+44h], bx
lea     edi, [eax+2Ch]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [eax+34h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+5Ch]
lea     esi, [eax+54h]
movsd
movsd
mov     ebx, [esp+1Ch+var_1C]
mov     [eax+3D8h], ebx
mov     dh, [eax+3]
test    dh, dh
jnz     short loc_47B3C6
mov     bx, word ptr ds:dword_77E7E0+2
mov     word ptr ds:dword_77E7E0, bx
mov     [eax+0ACh], dh
mov     byte ptr [eax+0ADh], 0FFh
mov     [eax+0Ch], dh
jmp     short loc_47B414

loc_47B3C6:
mov     ebp, ds:dword_55A10C
mov     ebp, [ebp+28h]
xor     ebx, ebx
mov     bl, [ebp+0Bh]
shl     ebx, 5
add     word ptr ds:dword_77E7E0, bx
mov     ebp, ds:dword_77E7DC+2
sar     ebp, 10h
mov     ebx, ds:dword_77E7E0
sar     ebx, 10h
cmp     ebp, ebx
jle     short loc_47B402
mov     bx, word ptr ds:dword_77E7E0+2
mov     word ptr ds:dword_77E7E0, bx

loc_47B402:
mov     byte ptr [eax+0ACh], 1
mov     byte ptr [eax+0ADh], 0FFh
mov     byte ptr [eax+0Ch], 2Eh ; '.'

loc_47B414:
mov     ds:dword_55A2C4, eax

loc_47B419:
mov     eax, ds:dword_55A10C
mov     ebx, [eax+28h]
mov     bl, [ebx+0Ah]
and     ebx, 0FFh
xor     edx, edx
xor     eax, eax
call    sub_4368BF
mov     eax, [esp+1Ch+var_1C]
mov     bl, [eax+3]
test    bl, bl
jnz     loc_47B4DA
call    sub_4DDF54
test    eax, eax
jz      loc_47B5F4
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 66h ; 'f'
mov     [eax+3], bl
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0F400h
mov     word ptr [eax+18h], 3070h
mov     ebx, [eax+12h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+1Ch], ebx
mov     ebx, [eax+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+20h], ebx
mov     ebx, [eax+16h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+24h], ebx
mov     word ptr [eax+58h], 0
mov     bx, [eax+58h]
mov     [eax+56h], bx
mov     [eax+54h], bx
mov     word ptr [eax+48h], 0
mov     bx, [eax+48h]
mov     [eax+46h], bx
mov     [eax+44h], bx
lea     edi, [eax+2Ch]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [eax+34h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+5Ch]
lea     esi, [eax+54h]
movsd
movsd
mov     byte ptr [eax+0Ch], 5
mov     ds:dword_55A2AC, eax
jmp     loc_47B5F4

loc_47B4DA:
call    sub_4DDFD0
mov     ebp, eax
test    eax, eax
jz      loc_47B5F4
mov     byte ptr [eax], 1
mov     ebx, [esp+1Ch+var_1C]
mov     cl, [ebx+3]
cmp     cl, 1
jnz     short loc_47B536
mov     byte ptr [eax+2], 12h
mov     [eax+3], cl
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0E600h
mov     word ptr [eax+18h], 600h
mov     word ptr [eax+56h], 0
mov     word ptr [eax+0B0h], 0
mov     bx, [eax+0B0h]
mov     [eax+6Eh], bx
push    2C004000h
mov     ecx, 60h ; '`'
jmp     short loc_47B574

loc_47B536:
mov     byte ptr [eax+2], 0Fh
mov     byte ptr [eax+3], 0
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0F800h
mov     word ptr [eax+18h], 800h
mov     word ptr [eax+56h], 400h
mov     word ptr [eax+0B0h], 0
mov     bx, [eax+0B0h]
mov     [eax+6Eh], bx
push    2C004080h
mov     ecx, 50h ; 'P'

loc_47B574:
xor     ebx, ebx
xor     edx, edx
call    sub_436785
mov     byte ptr [ebp+4], 0
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
mov     word ptr [ebp+58h], 0
mov     ax, [ebp+58h]
mov     [ebp+54h], ax
mov     word ptr [ebp+48h], 0
mov     ax, [ebp+48h]
mov     [ebp+46h], ax
mov     [ebp+44h], ax
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
cmp     byte ptr [ebp+2], 12h
jnz     short loc_47B5EE
mov     eax, [esp+1Ch+var_1C]
mov     [ebp+490h], eax

loc_47B5EE:
mov     ds:dword_55A2C8, ebp

loc_47B5F4:
add     esp, 4

loc_47B5F7:
pop     ebp

def_47AC0E:             ; jumptable 0047AC0E default case
pop     edi             ; jumptable 0047B78B default case

loc_47B5F9:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47B2DE endp

db 90h
jpt_47B6E4 dd offset loc_47B636 ; jump table for switch statement
dd offset loc_47B628
dd offset loc_47B644
dd offset loc_47B620
dd offset loc_47B64C



sub_47B613 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     bl, bl
jmp     loc_47B6AF

loc_47B620:             ; jumptable 0047B6E4 case 3
mov     word ptr [eax+14h], 0FC00h
jmp     short loc_47B652

loc_47B628:             ; jumptable 0047B6E4 case 1
mov     word ptr [eax+14h], 0FE00h

loc_47B62E:
mov     word ptr [eax+18h], 2300h
jmp     short def_47B6E4 ; jumptable 0047B6E4 default case

loc_47B636:             ; jumptable 0047B6E4 case 0
mov     word ptr [eax+14h], 0
mov     word ptr [eax+18h], 2000h
jmp     short def_47B6E4 ; jumptable 0047B6E4 default case

loc_47B644:             ; jumptable 0047B6E4 case 2
mov     word ptr [eax+14h], 200h
jmp     short loc_47B62E

loc_47B64C:             ; jumptable 0047B6E4 case 4
mov     word ptr [eax+14h], 400h

loc_47B652:
mov     word ptr [eax+18h], 2600h

def_47B6E4:             ; jumptable 0047B6E4 default case
mov     word ptr [edx+16h], 0F780h
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
mov     word ptr [edx+58h], 0
mov     ax, [edx+58h]
mov     [edx+56h], ax
mov     [edx+54h], ax
mov     [edx+3A8h], esi
movsx   eax, bl
mov     ds:dword_55A2B0[eax*4], edx

loc_47B6A4:
inc     bl
cmp     bl, 5
jge     loc_47B5F9

loc_47B6AF:
call    sub_4DDF54
mov     edx, eax
test    eax, eax
jz      short loc_47B6A4
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 32h ; '2'
mov     byte ptr [eax+4], 3
mov     byte ptr [eax+3], 0
mov     [eax+0Ch], bl
mov     [eax+0Dh], bl
mov     byte ptr [eax+0Eh], 5
mov     byte ptr [eax+0Fh], 0
cmp     bl, 4           ; switch 5 cases
ja      def_47B6E4      ; jumptable 0047B6E4 default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_47B6E4[ecx*4] ; switch jump
sub_47B613 endp

jpt_47B78B dd offset loc_47B792 ; jump table for switch statement
dd offset loc_47B7E1
dd offset loc_47B80A
dd offset loc_47B872
dd offset loc_47B899
dd offset loc_47B8BF
dd offset loc_47B8D7
dd offset loc_47B908
dd offset loc_47B911



sub_47B70F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, offset byte_5F8364
cmp     byte ptr [eax+0Ah], 3
jnb     short loc_47B77C
call    sub_47EBCB
test    eax, eax
jz      short loc_47B77C
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_47B73F
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1

loc_47B73F:
mov     eax, 11h
call    sub_4D8E2B
mov     eax, ds:dword_55A2C4
mov     byte ptr [eax+0ACh], 1
mov     eax, ds:dword_55A2C4
mov     byte ptr [eax+0ADh], 0FFh
mov     eax, ds:dword_55A2C4
mov     byte ptr [eax+0Ch], 2Eh ; '.'
mov     eax, 9
call    sub_49E0D7
mov     byte ptr [ecx+0Eh], 1
mov     byte ptr [ecx+0Ah], 3

loc_47B77C:
mov     al, [ecx+0Ah]
cmp     al, 8           ; switch 9 cases
ja      def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case
xor     ebx, ebx
mov     bl, al
jmp     jpt_47B78B[ebx*4] ; switch jump

loc_47B792:             ; jumptable 0047B78B case 0
xor     esi, esi
mov     ds:word_57096A, si
mov     esi, [ecx+1Ch]
inc     esi
mov     [ecx+1Ch], esi
cmp     esi, 6
jnz     short loc_47B7B8
mov     edx, 1
xor     eax, eax
call    sub_4A0E24
jmp     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case

loc_47B7B8:
cmp     esi, 0Ah
jnz     short loc_47B7D0
xor     ebx, ebx
xor     edx, edx
mov     eax, 19Eh

loc_47B7C6:
call    sub_4D89E4
jmp     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case

loc_47B7D0:
cmp     esi, 28h ; '('

loc_47B7D3:             ; jumptable 0047AC0E default case
jnz     def_47AC0E      ; jumptable 0047B78B default case

loc_47B7D9:
inc     byte ptr [ecx+0Ah]
jmp     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case

loc_47B7E1:             ; jumptable 0047B78B case 1
mov     ax, [edx+126h]
or      ax, [edx+13Eh]
mov     dx, [edx+140h]
or      eax, edx
mov     ds:word_57096A, ax
mov     edx, [ecx+1Ch]
inc     edx
mov     [ecx+1Ch], edx
cmp     edx, 6Ch ; 'l'
jmp     short loc_47B7D3

loc_47B80A:             ; jumptable 0047B78B case 2
xor     edi, edi
mov     ds:word_57096A, di
mov     esi, [ecx+1Ch]
inc     esi
mov     [ecx+1Ch], esi
cmp     esi, 0A0h
jnz     short loc_47B82D
xor     ebx, ebx
xor     edx, edx
mov     eax, 19Fh
jmp     short loc_47B7C6

loc_47B82D:
cmp     esi, 0B4h
jnz     short loc_47B85D
mov     edx, ds:dword_55A2C4
mov     byte ptr [edx+0ACh], 1
mov     edx, ds:dword_55A2C4
mov     byte ptr [edx+0ADh], 0FFh
mov     eax, ds:dword_55A2C4
mov     byte ptr [eax+0Ch], 0
jmp     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case

loc_47B85D:
cmp     esi, 140h
jnz     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case
mov     byte ptr [ecx+0Ah], 6
jmp     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case

loc_47B872:             ; jumptable 0047B78B case 3
mov     bx, ds:word_6E23D6
test    bx, bx
jnz     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case
mov     ds:word_57096A, bx
mov     dword ptr [ecx+1Ch], 0
mov     byte ptr [ecx+0Eh], 2
jmp     loc_47B7D9

loc_47B899:             ; jumptable 0047B78B case 4
mov     edx, [ecx+1Ch]
inc     edx
mov     [ecx+1Ch], edx
cmp     edx, 0Fh
jnz     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case
mov     eax, 1
call    sub_49E0D7
mov     dword ptr [ecx+1Ch], 0
jmp     loc_47B7D9

loc_47B8BF:             ; jumptable 0047B78B case 5
cmp     ds:word_6E23D6, 0

loc_47B8C7:             ; jumptable 0047AC0E default case
jnz     def_47AC0E      ; jumptable 0047B78B default case
inc     al
mov     [ecx+0Ah], al
jmp     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case

loc_47B8D7:             ; jumptable 0047B78B case 6
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_47B8EC
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1

loc_47B8EC:
xor     edx, edx
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
xor     edx, edx
mov     eax, 182h
call    sub_4D89E4
jmp     loc_47B7D9

loc_47B908:             ; jumptable 0047B78B case 7
test    byte ptr ds:dword_55BD7C+3, 8
jmp     short loc_47B8C7

loc_47B911:             ; jumptable 0047B78B case 8
mov     eax, edx
call    sub_4B565A
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000012h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 19Fh
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 181h
call    sub_4D89E4
mov     dword ptr [ecx+1Ch], 0
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Ah], 0
jmp     def_47AC0E      ; jumptable 0047AC0E default case
sub_47B70F endp         ; jumptable 0047B78B default case

db 8Bh, 0C0h
jpt_47B996 dd offset loc_47B99D ; jump table for switch statement
dd offset loc_47B9F4
dd offset loc_47BA27
dd offset loc_47BA41
dd offset loc_47BA5F
dd offset def_47B996



sub_47B96F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     si, word ptr ds:dword_77E7E0
mov     ax, word ptr ds:dword_77E7E0+2
mov     dl, [ecx+0Bh]
cmp     dl, 5           ; switch 6 cases
ja      def_47B996      ; jumptable 0047B996 default case, case 5
and     edx, 0FFh
jmp     jpt_47B996[edx*4] ; switch jump

loc_47B99D:             ; jumptable 0047B996 case 0
movsx   ebx, ax
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
mov     ebp, eax
shl     eax, 2
sub     eax, ebp
movsx   edi, si
cmp     edi, eax
jle     short loc_47B9C6
mov     byte ptr [ecx+0Bh], 1
jmp     def_47B996      ; jumptable 0047B996 default case, case 5

loc_47B9C6:
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
cmp     edi, eax
jle     short loc_47B9DE
mov     byte ptr [ecx+0Bh], 2
jmp     def_47B996      ; jumptable 0047B996 default case, case 5

loc_47B9DE:
cmp     edi, ebp
jle     short loc_47B9EB
mov     byte ptr [ecx+0Bh], 3
jmp     def_47B996      ; jumptable 0047B996 default case, case 5

loc_47B9EB:
mov     byte ptr [ecx+0Bh], 5
jmp     def_47B996      ; jumptable 0047B996 default case, case 5

loc_47B9F4:             ; jumptable 0047B996 case 1
movsx   edx, ax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
mov     edx, eax
shl     eax, 2
sub     eax, edx
movsx   edx, si
cmp     edx, eax
jg      short def_47B996 ; jumptable 0047B996 default case, case 5
mov     edx, 0Dh

loc_47BA17:
mov     eax, 4
call    sub_4A0E24
mov     byte ptr [ecx+0Bh], 4
jmp     short def_47B996 ; jumptable 0047B996 default case, case 5

loc_47BA27:             ; jumptable 0047B996 case 2
movsx   edx, ax
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
movsx   edx, si
cmp     edx, eax
jg      short def_47B996 ; jumptable 0047B996 default case, case 5
mov     edx, 0Eh
jmp     short loc_47BA17

loc_47BA41:             ; jumptable 0047B996 case 3
movsx   edx, ax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
movsx   edx, si
cmp     edx, eax
jg      short def_47B996 ; jumptable 0047B996 default case, case 5
mov     edx, 0Fh
jmp     short loc_47BA17

loc_47BA5F:             ; jumptable 0047B996 case 4
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short def_47B996 ; jumptable 0047B996 default case, case 5
mov     byte ptr [ecx+0Bh], 0

def_47B996:             ; jumptable 0047B996 default case, case 5
test    si, si
jnz     loc_47B5F7
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
jmp     loc_47B5F7
sub_47B96F endp




sub_47BA86 proc near

var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     edx, eax
xor     al, al
mov     [esp+14h+var_14], al
jmp     short loc_47BA9C

loc_47BA96:
inc     al
cmp     al, 5
jge     short loc_47BAB5

loc_47BA9C:
mov     ebx, [edx+9]
sar     ebx, 18h
movsx   ecx, al
mov     esi, 1
shl     esi, cl
test    ebx, esi
jnz     short loc_47BA96
inc     [esp+14h+var_14]
jmp     short loc_47BA96

loc_47BAB5:
mov     bh, [esp+14h+var_14]
cmp     bh, 1
jb      short loc_47BACD
jbe     short loc_47BAF7
cmp     bh, 2
jz      loc_47BB5D
jmp     loc_47BBB0

loc_47BACD:
test    bh, bh
jnz     loc_47BBB0
xor     ebx, ebx
xor     edx, edx
mov     eax, 183h
call    sub_4D89E4
mov     edx, ds:dword_55A2AC
mov     byte ptr [edx+0Ch], 0
mov     ecx, 1
jmp     loc_47BB53

loc_47BAF7:
xor     al, al
jmp     short loc_47BB01

loc_47BAFB:
inc     al
cmp     al, 5
jge     short loc_47BB41

loc_47BB01:
mov     ebx, [edx+9]
sar     ebx, 18h
movsx   ecx, al
mov     esi, 1
shl     esi, cl
test    ebx, esi
jnz     short loc_47BAFB
movsx   ecx, al
shl     ecx, 2
mov     ebx, ds:dword_55A2B0[ecx]
mov     ah, [ebx+0Fh]
test    ah, ah
jnz     short loc_47BAFB
mov     [ebx+0Dh], ah
mov     ebx, ds:dword_55A2B0[ecx]
mov     byte ptr [ebx+0Eh], 1
mov     ecx, ds:dword_55A2B0[ecx]
mov     byte ptr [ecx+0Fh], 1
jmp     short loc_47BAFB

loc_47BB41:
mov     byte ptr [edx+0Fh], 0

loc_47BB45:
mov     edx, ds:dword_55A2AC
mov     al, [esp+14h+var_14]
mov     [edx+0Ch], al
xor     ecx, ecx

loc_47BB53:
mov     eax, ecx
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47BB5D:
xor     al, al
xor     ah, ah
jmp     short loc_47BB69

loc_47BB63:
inc     al
cmp     al, 5
jge     short loc_47BBAA

loc_47BB69:
mov     ebx, [edx+9]
sar     ebx, 18h
movsx   ecx, al
mov     esi, 1
shl     esi, cl
test    ebx, esi
jnz     short loc_47BB63
movsx   ecx, al
shl     ecx, 2
mov     ebx, ds:dword_55A2B0[ecx]
cmp     byte ptr [ebx+0Fh], 0
jnz     short loc_47BB63
mov     [ebx+0Dh], ah
mov     ebx, ds:dword_55A2B0[ecx]
mov     byte ptr [ebx+0Eh], 2
mov     ecx, ds:dword_55A2B0[ecx]
mov     byte ptr [ecx+0Fh], 1
inc     ah
jmp     short loc_47BB63

loc_47BBAA:
mov     byte ptr [edx+0Fh], 2
jmp     short loc_47BB45

loc_47BBB0:
xor     al, al
xor     ah, ah
jmp     short loc_47BBBC

loc_47BBB6:
inc     al
cmp     al, 5
jge     short loc_47BB45

loc_47BBBC:
mov     ebx, [edx+9]
sar     ebx, 18h
movsx   ecx, al
mov     esi, 1
shl     esi, cl
test    ebx, esi
jnz     short loc_47BBB6
movsx   ecx, al
mov     ebx, ds:dword_55A2B0[ecx*4]
mov     [ebx+0Dh], ah
mov     ecx, ds:dword_55A2B0[ecx*4]
mov     bl, [esp+14h+var_14]
mov     [ecx+0Eh], bl
inc     ah
jmp     short loc_47BBB6
sub_47BA86 endp




sub_47BBEE proc near
cmp     word ptr ds:dword_77E7E0, 0
jle     short loc_47BC07
mov     word ptr ds:dword_77E8F8, 0FFFFh
mov     eax, 1
retn

loc_47BC07:
xor     eax, eax
retn
sub_47BBEE endp




sub_47BC0A proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 10h
mov     ecx, eax
mov     ah, [eax+0Ch]
inc     ah
mov     [ecx+0Ch], ah
cmp     ah, 4
jnz     short loc_47BC39
mov     byte ptr [ecx+0Ch], 0
mov     dh, [ecx+0Dh]
inc     dh
mov     [ecx+0Dh], dh
cmp     dh, ah
jnz     short loc_47BC39
mov     eax, ecx
call    sub_4DE439
jmp     short loc_47BC64

loc_47BC39:
mov     eax, [ecx+1Ch]
mov     ebx, 5
xor     edx, edx
mov     esi, esp
call    sub_4EE48D
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
shl     ebx, 3
add     ebx, offset unk_518EB4
xor     edx, edx
mov     eax, [esp+20h+var_18]
call    sub_4EE54C

loc_47BC64:
add     esp, 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47BC0A endp

; START OF FUNCTION CHUNK FOR sub_4907A4

loc_47BC6C:
push    edx
call    sub_4DE1BE
mov     edx, eax
test    eax, eax
jz      short loc_47BC96
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+0Dh], 0
mov     al, [eax+0Dh]
mov     [edx+0Ch], al
mov     eax, 0C0000h
call    sub_4A7AAC
mov     [edx+1Ch], eax

loc_47BC96:
pop     edx
retn
; END OF FUNCTION CHUNK FOR sub_4907A4



sub_47BC98 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47BC9E[edx*4]
pop     edx
retn
sub_47BC98 endp




sub_47BCA7 proc near
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
retn
sub_47BCA7 endp




sub_47BCBF proc near

var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     esi, eax
movzx   edi, byte ptr [eax+0Ah]
mov     ebp, ds:dword_77E6DC
mov     [esp+20h+var_20], 2D0h
lea     eax, [ebp+18h]
mov     ds:dword_77E6DC, eax
mov     eax, edi
add     eax, 140h
mov     [esp+20h+var_1E], ax
mov     [esp+20h+var_1C], 10h
mov     eax, 40h ; '@'
sub     eax, edi
mov     [esp+20h+var_1A], ax
mov     ecx, 100h
mov     ebx, 2D0h
mov     edx, esp
mov     eax, ebp
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, ebp
call    sub_4F87A6
test    edi, edi
jz      short loc_47BD69
mov     ebp, ds:dword_77E6DC
mov     [esp+20h+var_1E], 140h
mov     [esp+20h+var_1A], di
lea     eax, [ebp+18h]
mov     ds:dword_77E6DC, eax
mov     ecx, 140h
sub     ecx, edi
mov     ebx, 2D0h
mov     edx, esp
mov     eax, ebp
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, ebp
call    sub_4F87A6

loc_47BD69:
test    edi, edi
jnz     short loc_47BD73
mov     byte ptr [esi+0Ah], 3Eh ; '>'
jmp     short loc_47BD77

loc_47BD73:
sub     byte ptr [esi+0Ah], 2

loc_47BD77:
movzx   edi, byte ptr [esi+0Bh]
mov     ebp, ds:dword_77E6DC
mov     [esp+20h+var_20], 2C8h
lea     eax, [ebp+18h]
mov     ds:dword_77E6DC, eax
mov     eax, edi
add     eax, 120h
mov     [esp+20h+var_1E], ax
mov     [esp+20h+var_1C], 8
mov     eax, 20h ; ' '
sub     eax, edi
mov     [esp+20h+var_1A], ax
mov     ecx, 100h
mov     ebx, 2C8h
mov     edx, esp
mov     eax, ebp
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, ebp
call    sub_4F87A6
test    edi, edi
jz      short loc_47BE16
mov     ebp, ds:dword_77E6DC
mov     [esp+20h+var_1E], 120h
mov     [esp+20h+var_1A], di
lea     eax, [ebp+18h]
mov     ds:dword_77E6DC, eax
mov     ecx, 120h
sub     ecx, edi
mov     ebx, 2C8h
mov     edx, esp
mov     eax, ebp
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, ebp
call    sub_4F87A6

loc_47BE16:
test    edi, edi
jnz     short loc_47BE20
mov     byte ptr [esi+0Bh], 1Fh
jmp     short loc_47BE23

loc_47BE20:
dec     byte ptr [esi+0Bh]

loc_47BE23:
mov     edi, [esi+9]
sar     edi, 18h
mov     ebp, ds:dword_77E6DC
mov     [esp+20h+var_20], 370h
lea     eax, [ebp+18h]
mov     ds:dword_77E6DC, eax
mov     eax, edi
add     eax, 140h
mov     [esp+20h+var_1E], ax
mov     [esp+20h+var_1C], 10h
mov     eax, 40h ; '@'
sub     eax, edi
mov     [esp+20h+var_1A], ax
mov     ecx, 100h
mov     ebx, 370h
mov     edx, esp
mov     eax, ebp
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, ebp
call    sub_4F87A6
test    edi, edi
jz      short loc_47BEC4
mov     ebp, ds:dword_77E6DC
mov     [esp+20h+var_1E], 140h
mov     [esp+20h+var_1A], di
lea     eax, [ebp+18h]
mov     ds:dword_77E6DC, eax
mov     ecx, 140h
sub     ecx, edi
mov     ebx, 370h
mov     edx, esp
mov     eax, ebp
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, ebp
call    sub_4F87A6

loc_47BEC4:
test    edi, edi
jnz     short loc_47BECE
mov     byte ptr [esi+0Ch], 3Eh ; '>'
jmp     short loc_47BED2

loc_47BECE:
sub     byte ptr [esi+0Ch], 2

loc_47BED2:
mov     edi, [esi+0Ah]
sar     edi, 18h
mov     ebp, ds:dword_77E6DC
mov     [esp+20h+var_20], 368h
lea     eax, [ebp+18h]
mov     ds:dword_77E6DC, eax
mov     eax, edi
add     eax, 160h
mov     [esp+20h+var_1E], ax
mov     [esp+20h+var_1C], 8
mov     eax, 20h ; ' '
sub     eax, edi
mov     [esp+20h+var_1A], ax
mov     ecx, 140h
mov     ebx, 368h
mov     edx, esp
mov     eax, ebp
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, ebp
call    sub_4F87A6
test    edi, edi
jz      short loc_47BF73
mov     ebp, ds:dword_77E6DC
mov     [esp+20h+var_1E], 160h
mov     [esp+20h+var_1A], di
lea     eax, [ebp+18h]
mov     ds:dword_77E6DC, eax
mov     ecx, 160h
sub     ecx, edi
mov     ebx, 368h
mov     edx, esp
mov     eax, ebp
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, ebp
call    sub_4F87A6

loc_47BF73:
test    edi, edi
jnz     short loc_47BF7D
mov     byte ptr [esi+0Dh], 1Fh
jmp     short loc_47BF80

loc_47BF7D:
dec     byte ptr [esi+0Dh]

loc_47BF80:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47BCBF endp




sub_47BF8A proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_47BF90[edx*4]
pop     edx
retn
sub_47BF8A endp

align 2
jpt_47BFC7 dd offset loc_47BFCE ; jump table for switch statement
dd offset loc_47BFDC
dd offset loc_47C019
dd offset loc_47C039
dd offset loc_47C050
dd offset loc_47C07D



sub_47BFB2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+8]
cmp     al, 5           ; switch 6 cases
ja      def_47BFC7      ; jumptable 0047BFC7 default case
and     eax, 0FFh
jmp     jpt_47BFC7[eax*4] ; switch jump

loc_47BFCE:             ; jumptable 0047BFC7 case 0
mov     dword ptr [ecx+1Ch], 0

loc_47BFD5:
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_47BFDC:             ; jumptable 0047BFC7 case 1
mov     eax, ds:dword_5F8376
sar     eax, 10h
cmp     eax, 0FFFFF700h
jge     def_47BFC7      ; jumptable 0047BFC7 default case
call    sub_4B55BB
test    eax, eax
jz      loc_47C09A
or      ds:byte_5F8421, 40h
mov     eax, 10h
call    sub_4D9040
mov     eax, 26h ; '&'
call    sub_47E8B8
jmp     short loc_47BFD5

loc_47C019:             ; jumptable 0047BFC7 case 2
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      def_47BFC7      ; jumptable 0047BFC7 default case
or      ds:byte_5F8421, 40h
call    sub_4A0E35
jmp     short loc_47BFD5

loc_47C039:             ; jumptable 0047BFC7 case 3
mov     eax, 0Eh
call    sub_49E0D7
mov     eax, 10h
call    sub_4D9040
inc     byte ptr [ecx+8]

loc_47C050:             ; jumptable 0047BFC7 case 4
mov     ebx, 5
xor     edx, edx
mov     eax, [ecx+1Ch]
div     ebx
test    edx, edx
jnz     short loc_47C06C
xor     ebx, ebx
mov     eax, 0A1h
call    sub_4D89E4

loc_47C06C:
mov     edx, [ecx+1Ch]
inc     edx
mov     [ecx+1Ch], edx
cmp     edx, 2Eh ; '.'
jnz     short def_47BFC7 ; jumptable 0047BFC7 default case
jmp     loc_47BFD5

loc_47C07D:             ; jumptable 0047BFC7 case 5
cmp     ds:word_6E23D6, 0
jnz     short def_47BFC7 ; jumptable 0047BFC7 default case
cmp     ds:byte_77EAB8, 0
jnz     short def_47BFC7 ; jumptable 0047BFC7 default case
mov     eax, 10h
call    sub_47E8B8

loc_47C09A:
mov     eax, ecx
call    sub_4DE439

def_47BFC7:             ; jumptable 0047BFC7 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47BFB2 endp

align 2
jpt_47C0D2 dd offset loc_47C0D9 ; jump table for switch statement
dd offset loc_47C107
dd offset loc_47C12A
dd offset loc_47C138
dd offset loc_47C151
dd offset loc_47C164



sub_47C0BE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+8]
cmp     al, 5           ; switch 6 cases
ja      def_47C0D2      ; jumptable 0047C0D2 default case
xor     edx, edx
mov     dl, al
jmp     jpt_47C0D2[edx*4] ; switch jump

loc_47C0D9:             ; jumptable 0047C0D2 case 0
mov     eax, ds:dword_5F8376
sar     eax, 10h
cmp     eax, 0FFFFF830h
jle     def_47C0D2      ; jumptable 0047C0D2 default case
call    sub_4B55BB
test    eax, eax
jz      loc_47C1B9
or      ds:byte_5F8421, 40h

loc_47C100:
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_47C107:             ; jumptable 0047C0D2 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_47C0D2      ; jumptable 0047C0D2 default case
mov     byte ptr ds:dword_5F836C, 3
xor     bh, bh
mov     byte ptr ds:dword_5F836C+1, bh
jmp     short loc_47C100

loc_47C12A:             ; jumptable 0047C0D2 case 2
mov     edx, 0Bh
xor     eax, eax
call    sub_4A0E24
jmp     short loc_47C100

loc_47C138:             ; jumptable 0047C0D2 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47C0D2      ; jumptable 0047C0D2 default case
mov     eax, 0Ah
call    sub_49E0D7
jmp     short loc_47C100

loc_47C151:             ; jumptable 0047C0D2 case 4
cmp     ds:word_6E23D6, 0
jnz     short def_47C0D2 ; jumptable 0047C0D2 default case
inc     al
mov     [ecx+8], al
pop     edx
pop     ecx
pop     ebx
retn

loc_47C164:             ; jumptable 0047C0D2 case 5
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 7
mov     ds:byte_77EA5F, 5
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

loc_47C1B9:
mov     eax, ecx
call    sub_4DE439

def_47C0D2:             ; jumptable 0047C0D2 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47C0BE endp




sub_47C1C4 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47C1CA[edx*4]
pop     edx
retn
sub_47C1C4 endp




sub_47C1D3 proc near
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
retn
sub_47C1D3 endp




sub_47C1E3 proc near

var_28= dword ptr -28h
var_24= word ptr -24h
var_22= word ptr -22h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     esi, eax
movzx   edi, byte ptr [eax+0Ah]
xor     eax, eax
mov     al, [esi+3]
mov     [esp+28h+var_1C], eax
mov     ebp, eax
shl     ebp, 2
sub     ebp, eax
shl     ebp, 2
xor     eax, eax
mov     ax, ss:word_518EEE[ebp]
call    sub_47E888
test    eax, eax
jz      loc_47C402
cmp     byte ptr [esi+0Ch], 2
jz      loc_47C2F0
mov     eax, ds:dword_77E6DC
mov     [esp+28h+var_20], eax
mov     ax, word ptr ss:dword_518EE4[ebp]
mov     word ptr [esp+28h+var_28], ax
mov     eax, [esp+28h+var_20]
add     eax, 18h
mov     ds:dword_77E6DC, eax
mov     ax, word ptr ss:(dword_518EE4+2)[ebp]
add     eax, edi
mov     word ptr [esp+28h+var_28+2], ax
mov     [esp+28h+var_24], 10h
mov     eax, 40h ; '@'
sub     eax, edi
mov     [esp+28h+var_22], ax
mov     ecx, ss:dword_518EE4[ebp]
sar     ecx, 10h
sub     ecx, 40h ; '@'
mov     ebx, [esp-2]
sar     ebx, 10h
mov     edx, esp
mov     eax, [esp+28h+var_20]
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, [esp+28h+var_20]
call    sub_4F87A6
test    edi, edi
jz      short loc_47C2F0
mov     eax, ds:dword_77E6DC
mov     [esp+28h+var_20], eax
mov     ax, word ptr ss:(dword_518EE4+2)[ebp]
mov     word ptr [esp+28h+var_28+2], ax
mov     [esp+28h+var_22], di
mov     ecx, [esp+28h+var_28]
sar     ecx, 10h
mov     eax, [esp+28h+var_20]
add     eax, 18h
mov     ds:dword_77E6DC, eax
sub     ecx, edi
mov     ebx, ss:(funcs_47BF90+6)[ebp]
sar     ebx, 10h
mov     edx, esp
mov     eax, [esp+28h+var_20]
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, [esp+28h+var_20]
call    sub_4F87A6

loc_47C2F0:
sar     edi, 1
cmp     byte ptr [esi+0Ch], 1
jz      loc_47C3D5
mov     eax, ds:dword_77E6DC
mov     [esp+28h+var_20], eax
mov     eax, [esp+28h+var_1C]
mov     ebp, eax
shl     ebp, 2
sub     ebp, eax
shl     ebp, 2
mov     ax, word ptr ss:dword_518EE8[ebp]
mov     word ptr [esp+28h+var_28], ax
mov     eax, [esp+28h+var_20]
add     eax, 18h
mov     ds:dword_77E6DC, eax
mov     ax, word ptr ss:(dword_518EE8+2)[ebp]
add     eax, edi
mov     word ptr [esp+28h+var_28+2], ax
mov     [esp+28h+var_24], 8
mov     eax, 20h ; ' '
sub     eax, edi
mov     [esp+28h+var_22], ax
mov     ecx, ss:dword_518EE8[ebp]
sar     ecx, 10h
sub     ecx, 20h ; ' '
mov     ebx, [esp-2]
sar     ebx, 10h
mov     edx, esp
mov     eax, [esp+28h+var_20]
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, [esp+28h+var_20]
call    sub_4F87A6
test    edi, edi
jz      short loc_47C3D5
mov     eax, ds:dword_77E6DC
mov     [esp+28h+var_20], eax
mov     ax, word ptr ss:(dword_518EE8+2)[ebp]
mov     word ptr [esp+28h+var_28+2], ax
mov     [esp+28h+var_22], di
mov     ecx, [esp+28h+var_28]
sar     ecx, 10h
mov     eax, [esp+28h+var_20]
add     eax, 18h
mov     ds:dword_77E6DC, eax
sub     ecx, edi
mov     ebx, ss:(dword_518EE4+2)[ebp]
sar     ebx, 10h
mov     edx, esp
mov     eax, [esp+28h+var_20]
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, [esp+28h+var_20]
call    sub_4F87A6

loc_47C3D5:
mov     eax, [esp+28h+var_1C]
mov     edi, eax
shl     edi, 2
sub     edi, eax
shl     edi, 2
cmp     byte ptr [esi+0Bh], 0
jz      short loc_47C3F4
mov     al, [esi+0Ah]
add     al, ds:byte_518EEC[edi]
jmp     short loc_47C3FD

loc_47C3F4:
mov     al, [esi+0Ah]
sub     al, ds:byte_518EEC[edi]

loc_47C3FD:
and     al, 3Fh
mov     [esi+0Ah], al

loc_47C402:
add     esp, 10h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47C1E3 endp




sub_47C40C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47C412[edx*4]
pop     edx
retn
sub_47C40C endp




sub_47C41B proc near
push    edx
mov     edx, eax
mov     eax, 40100h
call    sub_4A7AAC
mov     [edx+20h], eax
test    eax, eax
jnz     short loc_47C438
mov     eax, edx
call    sub_4DE439
pop     edx
retn

loc_47C438:
mov     byte ptr [edx+18h], 0
mov     al, [edx+18h]
mov     [edx+17h], al
mov     [edx+16h], al
mov     [edx+15h], al
mov     [edx+14h], al
xor     eax, eax
mov     al, [edx+14h]
mov     al, ds:byte_518F29[eax*2]
mov     [edx+19h], al
xor     eax, eax
mov     al, [edx+15h]
mov     al, ds:byte_518F63[eax*2]
mov     [edx+1Ah], al
xor     eax, eax
mov     al, [edx+16h]
mov     al, ds:byte_518F9D[eax*2]
mov     [edx+1Bh], al
xor     eax, eax
mov     al, [edx+17h]
mov     al, ds:byte_518FD7[eax*2]
mov     [edx+1Ch], al
xor     eax, eax
mov     al, [edx+18h]
mov     al, ds:byte_519011[eax*2]
mov     [edx+1Dh], al
inc     byte ptr [edx+8]
pop     edx
retn
sub_47C41B endp




sub_47C49B proc near

var_38= dword ptr -38h
var_34= byte ptr -34h
var_2C= dword ptr -2Ch
var_24= byte ptr -24h
var_22= byte ptr -22h
var_20= byte ptr -20h
var_1E= byte ptr -1Eh
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
push    eax
mov     eax, [eax+20h]
mov     ebx, 6
xor     edx, edx
lea     esi, [esp+38h+var_34]
call    sub_4EE48D
xor     edi, edi
jmp     short loc_47C4C7

loc_47C4BC:
inc     edi
cmp     di, 5
jge     loc_47C5D0

loc_47C4C7:
movsx   edx, di
mov     eax, [esp+38h+var_38]
add     eax, edx
mov     bl, [eax+19h]
dec     bl
mov     [eax+19h], bl
jnz     short loc_47C4BC
inc     byte ptr [eax+14h]
xor     ecx, ecx
mov     cl, [eax+14h]
lea     ebx, [ecx+ecx]
mov     ecx, edx
shl     ecx, 3
sub     ecx, edx
shl     ecx, 2
add     ecx, edx
add     ecx, ecx
lea     edx, [ecx+ebx]
cmp     ds:byte_518F28[edx], 0FFh
jnz     short loc_47C502
mov     byte ptr [eax+14h], 0

loc_47C502:
movsx   eax, di
mov     [esp+38h+var_1C], eax
mov     ecx, [esp+38h+var_38]
mov     edx, eax
add     ecx, eax
xor     eax, eax
mov     al, [ecx+14h]
lea     esi, [eax+eax]
mov     ebx, edx
shl     ebx, 3
sub     ebx, edx
shl     ebx, 2
add     ebx, edx
add     ebx, ebx
lea     eax, [ebx+esi]
mov     al, ds:byte_518F29[eax]
mov     [ecx+19h], al
movsx   ebp, di
mov     edx, ebp
mov     eax, [esp+38h+var_2C]
lea     esi, [esp+38h+var_24]
call    sub_4EE4F0
xor     eax, eax
mov     al, [ecx+14h]
mov     al, ds:byte_518F28[ebx+eax*2]
mov     ah, 30h ; '0'
mul     ah
mov     edx, [esp+38h+var_1C]
mov     ah, ds:byte_51904A[edx*4]
add     ah, al
mov     [esp+38h+var_24], ah
xor     eax, eax
mov     al, [ecx+14h]
mov     al, ds:byte_518F28[ebx+eax*2]
mov     ah, 30h ; '0'
mul     ah
mov     ah, ds:byte_51904B[edx*4]
add     ah, al
mov     [esp+38h+var_22], ah
xor     eax, eax
mov     al, [ecx+14h]
mov     al, ds:byte_518F28[ebx+eax*2]
mov     ah, 30h ; '0'
mul     ah
mov     ah, ds:byte_51904C[edx*4]
add     ah, al
mov     [esp+38h+var_20], ah
xor     eax, eax
mov     al, [ecx+14h]
mov     al, ds:byte_518F28[ebx+eax*2]
mov     ah, 30h ; '0'
mul     ah
mov     ah, ds:byte_51904D[edx*4]
add     ah, al
mov     [esp+38h+var_1E], ah
lea     ebx, [esp+38h+var_24]
mov     edx, ebp
mov     eax, [esp+38h+var_2C]
call    sub_4EE54C
jmp     loc_47C4BC

loc_47C5D0:
add     esp, 20h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47C49B endp




sub_47C5DA proc near
push    ecx
push    edx
xor     edx, edx
mov     dl, [eax+3]
xor     ecx, ecx
mov     cl, [eax+8]
mov     edx, ds:off_519140[edx*4]
call    dword ptr [edx+ecx*4]
pop     edx
pop     ecx
retn
sub_47C5DA endp




sub_47C5F3 proc near
push    edx
mov     edx, eax
xor     eax, eax
mov     al, [edx+3]
mov     eax, ds:dword_519068[eax*4]
call    sub_4A7AAC
mov     [edx+20h], eax
test    eax, eax
jnz     short loc_47C617
mov     eax, edx
call    sub_4DE439
pop     edx
retn

loc_47C617:
mov     ah, [edx+3]
test    ah, ah
jnz     short loc_47C623
mov     [edx+0Ch], ah
jmp     short loc_47C632

loc_47C623:
cmp     ah, 2
jnz     short loc_47C62E
mov     byte ptr [edx+0Ch], 3
jmp     short loc_47C632

loc_47C62E:
mov     byte ptr [edx+0Ch], 1

loc_47C632:
mov     byte ptr [edx+0Dh], 0
mov     eax, [edx+9]
sar     eax, 18h
mov     eax, ds:off_51911C[eax*4]
mov     al, [eax]
mov     [edx+0Eh], al
inc     byte ptr [edx+8]
pop     edx
retn
sub_47C5F3 endp




sub_47C64D proc near
push    edx
mov     edx, eax
mov     eax, 60Dh
call    sub_47E888
test    eax, eax
jz      short loc_47C665
inc     byte ptr [edx+8]
mov     byte ptr [edx+9], 0

loc_47C665:
pop     edx
retn
sub_47C64D endp

db 8Dh, 40h, 0
jpt_47C696 dd offset loc_47C69D ; jump table for switch statement
dd offset loc_47C6D3
dd offset loc_47C6E2
dd offset loc_47C6E9
dd offset loc_47C6D3
dd offset loc_47C70E



sub_47C682 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+9]
cmp     al, 5           ; switch 6 cases
ja      def_47C696      ; jumptable 0047C696 default case
and     eax, 0FFh
jmp     jpt_47C696[eax*4] ; switch jump

loc_47C69D:             ; jumptable 0047C696 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_47C696      ; jumptable 0047C696 default case
mov     byte ptr ds:dword_5F836C, 3
xor     cl, cl
mov     byte ptr ds:dword_5F836C+1, cl
mov     ds:byte_5F88AC, 30h ; '0'
xor     ecx, ecx
mov     ds:dword_5F8370, ecx

loc_47C6CD:
inc     byte ptr [edx+9]
pop     edx
pop     ecx
retn

loc_47C6D3:             ; jumptable 0047C696 cases 1,4
mov     eax, edx
call    sub_47C74A
cmp     byte ptr [edx+0Dh], 4
jnz     short def_47C696 ; jumptable 0047C696 default case
jmp     short loc_47C6CD

loc_47C6E2:             ; jumptable 0047C696 case 2
call    sub_47C873
jmp     short loc_47C6CD

loc_47C6E9:             ; jumptable 0047C696 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_47C696 ; jumptable 0047C696 default case
mov     byte ptr [edx+0Ch], 2
mov     byte ptr [edx+0Dh], 0
mov     eax, [edx+9]
sar     eax, 18h
mov     eax, ds:off_51911C[eax*4]
mov     al, [eax]
mov     [edx+0Eh], al
jmp     short loc_47C6CD

loc_47C70E:             ; jumptable 0047C696 case 5
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
mov     eax, 60Dh
call    sub_47EA91
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+0Dh], 0
mov     eax, [edx+9]
sar     eax, 18h
mov     eax, ds:off_51911C[eax*4]
mov     al, [eax]
mov     [edx+0Eh], al
mov     byte ptr [edx+8], 1

def_47C696:             ; jumptable 0047C696 default case
pop     edx
pop     ecx
retn
sub_47C682 endp




sub_47C74A proc near

var_24= dword ptr -24h
var_1C= byte ptr -1Ch
var_1B= byte ptr -1Bh
var_1A= byte ptr -1Ah
var_19= byte ptr -19h
var_18= byte ptr -18h
var_17= byte ptr -17h
var_16= byte ptr -16h
var_15= byte ptr -15h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax
mov     eax, [eax+9]
sar     eax, 18h
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
add     ebx, ebx
mov     edi, ds:off_51911C[eax*4]
add     edi, ebx
cmp     byte ptr [edi], 0
jz      loc_47C86A
xor     ebx, ebx
mov     bl, [ecx+3]
mov     bl, ds:byte_51916C[ebx]
and     ebx, 0FFh
mov     eax, [ecx+20h]
xor     edx, edx
mov     esi, esp
call    sub_4EE48D
mov     dl, [ecx+0Eh]
dec     dl
mov     [ecx+0Eh], dl
jnz     short loc_47C7D4
inc     byte ptr [ecx+0Dh]
add     edi, 2
mov     bh, [edi]
cmp     bh, 0FFh
jnz     short loc_47C7BA
mov     [ecx+0Dh], dl
mov     edi, [ecx+9]
sar     edi, 18h
mov     edi, ds:off_51911C[edi*4]
jmp     short loc_47C7C2

loc_47C7BA:
test    bh, bh
jz      loc_47C86A

loc_47C7C2:
mov     eax, [ecx+9]
sar     eax, 18h
mov     eax, ds:off_51911C[eax*4]
mov     al, [eax]
mov     [ecx+0Eh], al

loc_47C7D4:
xor     edx, edx
mov     eax, [esp+2Ch+var_24]
lea     esi, [esp+2Ch+var_1C]
call    sub_4EE4F0
movsx   eax, byte ptr [edi+1]
mov     al, ds:byte_519074[eax*8]
mov     [esp+2Ch+var_1C], al
movsx   eax, byte ptr [edi+1]
mov     al, ds:byte_519075[eax*8]
mov     [esp+2Ch+var_1B], al
movsx   eax, byte ptr [edi+1]
mov     al, ds:byte_519076[eax*8]
mov     [esp+2Ch+var_1A], al
movsx   eax, byte ptr [edi+1]
mov     al, ds:byte_519077[eax*8]
mov     [esp+2Ch+var_19], al
movsx   eax, byte ptr [edi+1]
mov     al, ds:byte_519078[eax*8]
mov     [esp+2Ch+var_18], al
movsx   eax, byte ptr [edi+1]
mov     al, ds:byte_519079[eax*8]
mov     [esp+2Ch+var_17], al
movsx   eax, byte ptr [edi+1]
mov     al, ds:byte_51907A[eax*8]
mov     [esp+2Ch+var_16], al
movsx   eax, byte ptr [edi+1]
mov     al, ds:byte_51907B[eax*8]
mov     [esp+2Ch+var_15], al
lea     ebx, [esp+2Ch+var_1C]
xor     edx, edx
mov     eax, [esp+2Ch+var_24]
call    sub_4EE54C

loc_47C86A:
add     esp, 18h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47C74A endp




sub_47C873 proc near
push    ebx
push    ecx
push    edx
call    sub_47C8FE
test    al, al
jz      short loc_47C8E7
mov     eax, 235h
call    sub_47E888
test    eax, eax
jnz     short loc_47C8DC
mov     ecx, 1
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
mov     eax, 7E5h
call    sub_47E8B8
mov     eax, 7E6h
call    sub_47E8B8
mov     eax, 7E7h
call    sub_47E8B8
mov     eax, 235h
call    sub_47E8B8
mov     eax, 212h
call    sub_47E8B8
xor     ah, ah
mov     byte ptr ds:word_77E7FC, ah
pop     edx
pop     ecx
pop     ebx
retn

loc_47C8DC:
mov     ecx, 2
xor     ebx, ebx
mov     edx, ecx
jmp     short loc_47C8F3

loc_47C8E7:
mov     ecx, 22h ; '"'
xor     ebx, ebx
mov     edx, 2

loc_47C8F3:
xor     eax, eax
call    sub_4A62D4
pop     edx
pop     ecx
pop     ebx
retn
sub_47C873 endp




sub_47C8FE proc near
push    edx
cmp     ds:byte_77E7D4, 13h
jnz     short loc_47C90C

loc_47C908:
xor     al, al
pop     edx
retn

loc_47C90C:
mov     eax, 214h
call    sub_47E888
test    eax, eax
jnz     short loc_47C908
mov     eax, 52h ; 'R'
call    sub_47E888
test    eax, eax
jz      short loc_47C908
mov     eax, 522h
call    sub_47E888
test    eax, eax
jz      short loc_47C908
mov     edx, 0FCh
mov     eax, 6
call    sub_4A7EE1
cmp     eax, 3
jnz     short loc_47C908
mov     edx, 120h
mov     eax, 6
call    sub_4A7EE1
cmp     eax, 3
jnz     short loc_47C908
mov     al, 1
pop     edx
retn
sub_47C8FE endp




sub_47C962 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47C968[edx*4]
pop     edx
retn
sub_47C962 endp




sub_47C971 proc near
push    edx
mov     edx, eax
mov     eax, 130000h
call    sub_4A7AAC
mov     [edx+1Ch], eax
test    eax, eax
jnz     short loc_47C98E

loc_47C985:
mov     eax, edx
call    sub_4DE439
pop     edx
retn

loc_47C98E:
mov     eax, 130200h
call    sub_4A7AAC
mov     [edx+20h], eax
test    eax, eax
jz      short loc_47C985
mov     byte ptr [edx+10h], 0
mov     al, [edx+10h]
mov     [edx+0Fh], al
mov     [edx+0Eh], al
mov     [edx+0Dh], al
mov     [edx+0Ch], al
xor     eax, eax
mov     al, [edx+0Ch]
mov     al, ds:byte_519171[eax*2]
mov     [edx+11h], al
xor     eax, eax
mov     al, [edx+0Dh]
mov     al, ds:byte_5191AB[eax*2]
mov     [edx+12h], al
xor     eax, eax
mov     al, [edx+0Eh]
mov     al, ds:byte_5191E5[eax*2]
mov     [edx+13h], al
xor     eax, eax
mov     al, [edx+0Fh]
mov     al, ds:byte_51921F[eax*2]
mov     [edx+14h], al
xor     eax, eax
mov     al, [edx+10h]
mov     al, ds:byte_519259[eax*2]
mov     [edx+15h], al
inc     byte ptr [edx+8]
pop     edx
retn
sub_47C971 endp




sub_47CA02 proc near

var_38= dword ptr -38h
var_34= byte ptr -34h
var_2C= dword ptr -2Ch
var_24= byte ptr -24h
var_22= byte ptr -22h
var_20= byte ptr -20h
var_1E= dword ptr -1Eh

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
push    eax
xor     edx, edx
mov     word ptr [esp+38h+var_1E+2], dx
jmp     short loc_47CA29

loc_47CA15:
mov     ebx, [esp+38h+var_1E+2]
inc     ebx
mov     word ptr [esp+38h+var_1E+2], bx
cmp     bx, 5
jge     loc_47CB62

loc_47CA29:
mov     edi, [esp+38h+var_1E]
sar     edi, 10h
mov     eax, [esp+38h+var_38]
add     eax, edi
mov     dl, [eax+11h]
dec     dl
mov     [eax+11h], dl
jnz     short loc_47CA15
mov     bl, [eax+0Ch]
inc     bl
mov     [eax+0Ch], bl
xor     edx, edx
mov     dl, bl
mov     ecx, edi
shl     ecx, 3
sub     ecx, edi
shl     ecx, 2
add     ecx, edi
add     ecx, ecx
cmp     ds:byte_519170[ecx+edx*2], 0FFh
jnz     short loc_47CA67
mov     byte ptr [eax+0Ch], 0

loc_47CA67:
mov     edi, [esp+38h+var_1E]
sar     edi, 10h
mov     ecx, [esp+38h+var_38]
xor     edx, edx
mov     dl, [ecx+edi+0Ch]
add     edx, edx
mov     eax, edi
shl     eax, 3
sub     eax, edi
shl     eax, 2
lea     ebp, [edi+eax]
add     ebp, ebp
lea     eax, [edx+ebp]
mov     al, ds:byte_519171[eax]
mov     [ecx+edi+11h], al
xor     eax, eax
mov     al, ds:byte_5192AB[edi]
shl     eax, 2
mov     edx, ecx
add     eax, ecx
mov     eax, [eax+1Ch]
mov     ebx, 2
xor     edx, ecx
lea     esi, [esp+38h+var_34]
call    sub_4EE48D
xor     edx, edx
mov     dl, ds:byte_5192A6[edi]
mov     eax, [esp+38h+var_2C]
lea     esi, [esp+38h+var_24]
call    sub_4EE4F0
xor     eax, eax
mov     al, [ecx+edi+0Ch]
mov     dl, ss:byte_519170[ebp+eax*2]
shl     dl, 6
mov     dh, ds:byte_519292[edi*4]
add     dh, dl
mov     [esp+38h+var_24], dh
xor     edx, edx
mov     dl, [ecx+edi+0Ch]
add     edx, edx
lea     ebx, [edx+ebp]
mov     dl, ds:byte_519170[ebx]
shl     dl, 6
mov     dh, ds:byte_519293[edi*4]
add     dh, dl
mov     [esp+38h+var_22], dh
xor     edx, edx
mov     dl, [ecx+edi+0Ch]
add     edx, edx
lea     esi, [edx+ebp]
mov     dl, ds:byte_519170[esi]
shl     dl, 6
mov     dh, ds:byte_519294[edi*4]
add     dh, dl
mov     [esp+38h+var_20], dh
xor     edx, edx
mov     dl, [ecx+edi+0Ch]
mov     dl, ss:byte_519170[ebp+edx*2]
shl     dl, 6
mov     al, ds:byte_519295[edi*4]
add     al, dl
mov     byte ptr [esp+38h+var_1E], al
xor     edx, edx
mov     dl, ds:byte_5192A6[edi]
lea     ebx, [esp+38h+var_24]
mov     eax, [esp+38h+var_2C]
call    sub_4EE54C
jmp     loc_47CA15

loc_47CB62:
add     esp, 20h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47CA02 endp




sub_47CB6C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47CB72[edx*4]
pop     edx
retn
sub_47CB6C endp




sub_47CB7B proc near
push    edx
mov     edx, eax
mov     eax, 30100h
call    sub_4A7AAC
mov     [edx+1Ch], eax
test    eax, eax
jnz     short loc_47CB98
mov     eax, edx
call    sub_4DE439
pop     edx
retn

loc_47CB98:
mov     byte ptr [edx+18h], 0
mov     al, [edx+18h]
mov     [edx+17h], al
mov     [edx+16h], al
mov     [edx+15h], al
mov     [edx+14h], al
xor     eax, eax
mov     al, [edx+14h]
mov     al, ds:byte_5192B9[eax*2]
mov     [edx+16h], al
xor     eax, eax
mov     al, [edx+15h]
mov     al, ds:byte_5192F3[eax*2]
mov     [edx+17h], al
xor     eax, eax
mov     al, [edx+16h]
mov     al, ds:byte_51932D[eax*2]
mov     [edx+18h], al
xor     eax, eax
mov     al, [edx+17h]
mov     al, byte ptr ds:(off_519364+3)[eax*2]
mov     [edx+19h], al
xor     eax, eax
mov     al, [edx+18h]
mov     al, ds:byte_5193A1[eax*2]
mov     [edx+1Ah], al
inc     byte ptr [edx+8]
pop     edx
retn
sub_47CB7B endp




sub_47CBFB proc near

var_3C= dword ptr -3Ch
var_38= byte ptr -38h
var_30= dword ptr -30h
var_28= byte ptr -28h
var_27= byte ptr -27h
var_26= byte ptr -26h
var_25= byte ptr -25h
var_24= byte ptr -24h
var_23= byte ptr -23h
var_22= byte ptr -22h
var_21= byte ptr -21h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
push    eax
xor     edi, edi
jmp     short loc_47CC14

loc_47CC09:
inc     edi
cmp     di, 2
jge     loc_47CD5F

loc_47CC14:
movsx   ecx, di
mov     eax, [esp+3Ch+var_3C]
add     eax, ecx
mov     dl, [eax+16h]
dec     dl
mov     [eax+16h], dl
jnz     short loc_47CC09
mov     bl, [eax+14h]
inc     bl
mov     [eax+14h], bl
xor     edx, edx
mov     dl, bl
lea     ebx, [edx+edx]
mov     edx, ecx
shl     edx, 3
sub     edx, ecx
shl     edx, 2
add     edx, ecx
cmp     ds:byte_5192B8[ebx+edx*2], 0FFh
jnz     short loc_47CC4F
mov     byte ptr [eax+14h], 0

loc_47CC4F:
movsx   eax, di
mov     [esp+3Ch+var_20], eax
mov     ecx, [esp+3Ch+var_3C]
mov     edx, eax
add     ecx, eax
xor     eax, eax
mov     al, [ecx+14h]
lea     ebx, [eax+eax]
mov     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
mov     [esp+3Ch+var_1C], eax
mov     al, ds:byte_5192B9[ebx+eax]
mov     [ecx+16h], al
mov     eax, [esp+3Ch+var_3C]
mov     eax, [eax+1Ch]
mov     ebx, 5
xor     edx, edx
lea     esi, [esp+3Ch+var_38]
call    sub_4EE48D
movsx   ebp, di
mov     edx, ebp
mov     eax, [esp+3Ch+var_30]
lea     esi, [esp+3Ch+var_28]
call    sub_4EE4F0
xor     eax, eax
mov     al, [ecx+14h]
add     eax, eax
mov     ecx, [esp+3Ch+var_1C]
add     ecx, eax
mov     dl, ds:byte_5192B8[ecx]
mov     eax, [esp+3Ch+var_20]
shl     dl, 6
mov     dh, ds:byte_51932C[eax*4]
add     dh, dl
mov     [esp+3Ch+var_28], dh
mov     dh, ds:byte_51932D[eax*4]
add     dh, dl
mov     [esp+3Ch+var_26], dh
mov     dh, ds:byte_51932E[eax*4]
add     dh, dl
mov     [esp+3Ch+var_24], dh
mov     dh, ds:byte_51932F[eax*4]
add     dh, dl
mov     [esp+3Ch+var_22], dh
xor     ebx, ebx
mov     bl, ds:byte_519334[eax*4]
xor     edx, edx
mov     dl, ds:byte_5192B8[ecx]
sar     edx, 2
mov     ecx, edx
shl     edx, 2
sub     edx, ecx
shl     edx, 4
add     ebx, edx
mov     [esp+3Ch+var_27], bl
xor     ecx, ecx
mov     cl, ds:byte_519335[eax*4]
add     ecx, edx
mov     [esp+3Ch+var_25], cl
xor     ecx, ecx
mov     cl, ds:byte_519336[eax*4]
add     ecx, edx
mov     [esp+3Ch+var_23], cl
mov     al, ds:byte_519337[eax*4]
and     eax, 0FFh
add     eax, edx
mov     [esp+3Ch+var_21], al
lea     ebx, [esp+3Ch+var_28]
mov     edx, ebp
mov     eax, [esp+3Ch+var_30]
call    sub_4EE54C
jmp     loc_47CC09

loc_47CD5F:
add     esp, 24h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47CBFB endp




sub_47CD69 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47CD6F[edx*4]
pop     edx
retn
sub_47CD69 endp




sub_47CD78 proc near
cmp     byte ptr ds:dword_77E7D5+1, 3
jnz     short loc_47CD8B
cmp     word ptr ds:dword_77E8F8, 3Fh ; '?'
jnz     short loc_47CD90

loc_47CD8B:
mov     byte ptr [eax+8], 2
retn

loc_47CD90:
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
retn
sub_47CD78 endp




sub_47CDA1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_47CDA7[edx*4]
pop     edx
retn
sub_47CDA1 endp



; Attributes: thunk

sub_47CDB0 proc near
jmp     sub_4DE439
sub_47CDB0 endp




sub_47CDB5 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
xor     cl, cl
cmp     byte ptr ds:dword_77E7D5+1, 3
jnz     short loc_47CDCF
cmp     word ptr ds:dword_77E8F8, 3Fh ; '?'
jnz     short loc_47CDD7

loc_47CDCF:
mov     byte ptr [ebx+8], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_47CDD7:
mov     byte ptr [ebx+0Ch], 0FFh
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 9
mov     [ebx+14h], ax
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
mov     [ebx+18h], ax

loc_47CDF9:
cmp     cl, 6
jge     short loc_47CE1F
movsx   eax, cl
shl     eax, 2
mov     edx, offset unk_519374
add     edx, eax
mov     eax, ebx
call    sub_47CFFF
test    eax, eax
jz      short loc_47CE1B
mov     [ebx+0Ch], cl
jmp     short loc_47CE1F

loc_47CE1B:
inc     cl
jmp     short loc_47CDF9

loc_47CE1F:
mov     edx, [ebx+9]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jz      short loc_47CE86
mov     ecx, [ebx+9]
sar     ecx, 18h
mov     eax, 1
shl     eax, cl
xor     ecx, ecx
mov     cx, word ptr ds:dword_77E8F8
test    ecx, eax
jnz     short loc_47CE86
mov     eax, ebx
call    ds:funcs_47CE46[edx*4]
test    eax, eax
jz      short loc_47CE86
mov     eax, [ebx+9]
sar     eax, 18h
mov     eax, ds:dword_51938C[eax*4]
call    sub_47E888
test    eax, eax
jnz     short loc_47CE86
mov     ecx, [ebx+9]
sar     ecx, 18h
mov     eax, 1
shl     eax, cl
test    al, 3
jz      short loc_47CE7E
mov     byte ptr [ebx+9], 1
jmp     short loc_47CE82

loc_47CE7E:
mov     byte ptr [ebx+9], 2

loc_47CE82:
mov     byte ptr [ebx+0Ah], 0

loc_47CE86:
pop     edx
pop     ecx
pop     ebx
retn
sub_47CDB5 endp




sub_47CE8A proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_47CEA4
jbe     short loc_47CEF9
cmp     al, 2
jz      loc_47CF2E
pop     edx
pop     ecx
pop     ebx
retn

loc_47CEA4:
test    al, al
jnz     loc_47CF46
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_47CF46
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 9
mov     [ebx+14h], ax
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
mov     [ebx+18h], ax
mov     eax, [ebx+9]
sar     eax, 18h
shl     eax, 2
mov     edx, offset unk_519374
add     edx, eax
mov     eax, ebx
call    sub_47CFFF
test    eax, eax
jz      short loc_47CF3E

loc_47CEF2:
inc     byte ptr [ebx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_47CEF9:
mov     edx, [ebx+9]
sar     edx, 18h
mov     dl, ds:byte_5193A4[edx]
and     edx, 0FFh
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
movsx   cx, byte ptr [ebx+0Ch]
mov     eax, 1
shl     eax, cl
or      word ptr ds:dword_77E8F8, ax
jmp     short loc_47CEF2

loc_47CF2E:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_47CF46
and     ds:byte_5F8421, 0BFh

loc_47CF3E:
mov     byte ptr [ebx+9], 0
mov     byte ptr [ebx+0Ah], 0

loc_47CF46:
pop     edx
pop     ecx
pop     ebx
retn
sub_47CE8A endp




sub_47CF4A proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_47CF64
jbe     short loc_47CFB9
cmp     al, 2
jz      loc_47CFEA
pop     edx
pop     ecx
pop     ebx
retn

loc_47CF64:
test    al, al
jnz     loc_47CFFB
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     loc_47CFFB
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 9
mov     [ebx+14h], ax
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
mov     [ebx+18h], ax
mov     eax, [ebx+9]
sar     eax, 18h
shl     eax, 2
mov     edx, offset unk_519374
add     edx, eax
mov     eax, ebx
call    sub_47CFFF
test    eax, eax
jz      short loc_47CFF3

loc_47CFB2:
inc     byte ptr [ebx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_47CFB9:
mov     edx, [ebx+9]
sar     edx, 18h
mov     dl, ds:byte_5193A4[edx]
and     edx, 0FFh
mov     eax, 4
call    sub_4A0E24
movsx   cx, byte ptr [ebx+0Ch]
mov     eax, 1
shl     eax, cl
or      word ptr ds:dword_77E8F8, ax
jmp     short loc_47CFB2

loc_47CFEA:
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short loc_47CFFB

loc_47CFF3:
mov     byte ptr [ebx+9], 0
mov     byte ptr [ebx+0Ah], 0

loc_47CFFB:
pop     edx
pop     ecx
pop     ebx
retn
sub_47CF4A endp




sub_47CFFF proc near
push    ebx
push    ecx
movsx   cx, byte ptr [eax+14h]
movsx   bx, byte ptr [edx]
sub     ecx, ebx
mov     ebx, ecx
and     ebx, 0FFFFh
xor     ecx, ecx
mov     cl, [edx+2]
cmp     ebx, ecx
jge     short loc_47D03F
movsx   ax, byte ptr [eax+18h]
movsx   bx, byte ptr [edx+1]
sub     eax, ebx
xor     ecx, ecx
mov     cx, ax
xor     eax, eax
mov     al, [edx+3]
cmp     ecx, eax
jge     short loc_47D03F
mov     eax, 1
pop     ecx
pop     ebx
retn

loc_47D03F:
xor     eax, eax
pop     ecx
pop     ebx
retn
sub_47CFFF endp




sub_47D044 proc near
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      short sub_47D071
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      short sub_47D071
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      short sub_47D071
xor     eax, eax
retn
sub_47D044 endp




sub_47D071 proc near
mov     eax, 1
retn
sub_47D071 endp




sub_47D077 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47D07D[edx*4]
pop     edx
retn
sub_47D077 endp




sub_47D086 proc near
mov     byte ptr [eax+8], 1
retn
sub_47D086 endp




sub_47D08B proc near
push    edx
mov     edx, eax
mov     eax, 60Ch
call    sub_47E888
test    eax, eax
jz      short loc_47D0A4
mov     byte ptr [edx+8], 2
mov     byte ptr [edx+9], 0

loc_47D0A4:
pop     edx
retn
sub_47D08B endp

db 90h
jpt_47D0D7 dd offset loc_47D0DE ; jump table for switch statement
dd offset loc_47D10E
dd offset loc_47D117
dd offset loc_47D14D
dd offset loc_47D16B
dd offset loc_47D192
dd offset loc_47D1AD



sub_47D0C3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 6           ; switch 7 cases
ja      def_47D0D7      ; jumptable 0047D0D7 default case
xor     edx, edx
mov     dl, al
jmp     jpt_47D0D7[edx*4] ; switch jump

loc_47D0DE:             ; jumptable 0047D0D7 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_47D0D7      ; jumptable 0047D0D7 default case
mov     byte ptr ds:dword_5F836C, 3
xor     dh, dh
mov     byte ptr ds:dword_5F836C+1, dh
xor     ebx, ebx
mov     ds:dword_5F8370, ebx

loc_47D107:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_47D10E:             ; jumptable 0047D0D7 case 1
mov     ds:byte_5F88AC, 30h ; '0'
jmp     short loc_47D107

loc_47D117:             ; jumptable 0047D0D7 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47D0D7      ; jumptable 0047D0D7 default case
mov     ds:byte_5F88AC, 36h ; '6'
mov     edx, ds:off_52FFF5
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
xor     ebx, ebx
xor     edx, edx
mov     eax, 13Fh
call    sub_4D89E4
jmp     short loc_47D107

loc_47D14D:             ; jumptable 0047D0D7 case 3
cmp     ds:byte_5F840B, 0
jge     def_47D0D7      ; jumptable 0047D0D7 default case
mov     eax, ds:dword_5F8412
sar     eax, 10h
xor     edx, edx
call    sub_4B6268
jmp     short loc_47D107

loc_47D16B:             ; jumptable 0047D0D7 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_47D0D7 ; jumptable 0047D0D7 default case
mov     edx, ds:off_53002D
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
mov     ds:byte_5F88AC, 35h ; '5'
jmp     loc_47D107

loc_47D192:             ; jumptable 0047D0D7 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_47D0D7 ; jumptable 0047D0D7 default case
cmp     ds:byte_5F840B, 0
jge     short def_47D0D7 ; jumptable 0047D0D7 default case
inc     al
mov     [ecx+9], al
pop     edx
pop     ecx
pop     ebx
retn

loc_47D1AD:             ; jumptable 0047D0D7 case 6
call    sub_42ABA2
test    eax, eax
jnz     short def_47D0D7 ; jumptable 0047D0D7 default case
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
xor     edx, edx
mov     ds:dword_5F84E8, edx
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     eax, 60Ch
call    sub_47EA91

def_47D0D7:             ; jumptable 0047D0D7 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47D0C3 endp




sub_47D1E5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47D1EB[edx*4]
pop     edx
retn
sub_47D1E5 endp




sub_47D1F4 proc near
mov     byte ptr [eax+8], 1
retn
sub_47D1F4 endp




sub_47D1F9 proc near
push    edx
cmp     byte ptr ds:dword_77E760, 0
jz      short loc_47D22D
cmp     byte ptr ds:dword_77E764+1, 10h
jnb     short loc_47D22D
xor     edx, edx
mov     dl, byte ptr ds:dword_77E764+1
mov     dl, ds:byte_5193B8[edx]
mov     [eax+0Ch], dl
test    dl, dl
jz      short loc_47D22D
mov     byte ptr [eax+8], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Fh], 0

loc_47D22D:
pop     edx
retn
sub_47D1F9 endp

db 8Bh, 0C0h
jpt_47D277 dd offset loc_47D27E ; jump table for switch statement
dd offset loc_47D2A6
dd offset loc_47D2AF
dd offset loc_47D2DE
dd offset loc_47D31F
dd offset loc_47D32E
dd offset loc_47D366
dd offset loc_47D37D
dd offset def_47D277
dd offset def_47D277
dd offset loc_47D38C



sub_47D25D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+9]
cmp     al, 0Ah         ; switch 11 cases
ja      def_47D277      ; jumptable 0047D277 default case, cases 8,9
and     eax, 0FFh
jmp     jpt_47D277[eax*4] ; switch jump

loc_47D27E:             ; jumptable 0047D277 case 0
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      def_47D277      ; jumptable 0047D277 default case, cases 8,9
mov     byte ptr ds:dword_5F836C, 3
xor     dh, dh
mov     byte ptr ds:dword_5F836C+1, dh
xor     ebx, ebx
mov     ds:dword_5F8370, ebx
jmp     short loc_47D2CF

loc_47D2A6:             ; jumptable 0047D277 case 1
mov     ds:byte_5F88AC, 30h ; '0'
jmp     short loc_47D2CF

loc_47D2AF:             ; jumptable 0047D277 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47D277      ; jumptable 0047D277 default case, cases 8,9
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_47D2D6
mov     eax, 10h

loc_47D2CA:
call    sub_4D9040

loc_47D2CF:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_47D2D6:
mov     byte ptr [ecx+9], 0Ah
pop     edx
pop     ecx
pop     ebx
retn

loc_47D2DE:             ; jumptable 0047D277 case 3
cmp     ds:byte_77EAB8, 0
jnz     def_47D277      ; jumptable 0047D277 default case, cases 8,9
mov     edx, 0Bh
xor     eax, eax
call    sub_4A0E24
mov     eax, [ecx+9]
sar     eax, 18h
mov     al, ds:byte_5193E4[eax]
xor     ah, ah
mov     ds:word_77EA80, ax
mov     eax, [ecx+9]
sar     eax, 18h
mov     eax, ds:dword_5193C8[eax*4]
call    sub_4D8E42
jmp     short loc_47D2CF

loc_47D31F:             ; jumptable 0047D277 case 4
call    sub_4D8ECC
test    eax, eax
jz      def_47D277      ; jumptable 0047D277 default case, cases 8,9
jmp     short loc_47D2CF

loc_47D32E:             ; jumptable 0047D277 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47D277      ; jumptable 0047D277 default case, cases 8,9
cmp     ds:word_5708DA, 0
jnz     short loc_47D34E
call    sub_4D8ECC
test    eax, eax
jnz     short def_47D277 ; jumptable 0047D277 default case, cases 8,9

loc_47D34E:
mov     byte ptr [edx+548h], 31h ; '1'
xor     eax, eax
call    sub_4A0E75
mov     eax, 40h ; '@'
jmp     loc_47D2CA

loc_47D366:             ; jumptable 0047D277 case 6
cmp     ds:byte_77EAB8, 0
jnz     short def_47D277 ; jumptable 0047D277 default case, cases 8,9
mov     ds:word_77EA80, 7Fh
jmp     loc_47D2CF

loc_47D37D:             ; jumptable 0047D277 case 7
mov     eax, 20h ; ' '
call    sub_4D9040
jmp     loc_47D2D6

loc_47D38C:             ; jumptable 0047D277 case 10
call    sub_42ABA2
test    eax, eax
jnz     short def_47D277 ; jumptable 0047D277 default case, cases 8,9
mov     eax, edx
call    sub_4B565A
or      ds:byte_5F8364, 2
xor     edx, edx
mov     ds:dword_5F84E8, edx
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0

def_47D277:             ; jumptable 0047D277 default case, cases 8,9
pop     edx
pop     ecx
pop     ebx
retn
sub_47D25D endp




sub_47D3B7 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47D3BD[edx*4]
pop     edx
retn
sub_47D3B7 endp




sub_47D3C6 proc near
push    edx
mov     edx, eax
mov     eax, offset unk_519404
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
mov     [edx+1Ch], eax
mov     byte ptr [edx+8], 1
pop     edx
retn
sub_47D3C6 endp




sub_47D3E0 proc near
push    ebx
push    edx
mov     edx, eax
mov     eax, [eax+1Ch]
mov     bl, [eax+0Ah]
test    bl, bl
jnz     short loc_47D3FE
call    sub_47D4E8
test    al, al
jz      short loc_47D3FE
mov     byte ptr [edx+8], 2
mov     [edx+9], bl

loc_47D3FE:
pop     edx
pop     ebx
retn
sub_47D3E0 endp

db 8Bh, 0C0h
jpt_47D43A dd offset loc_47D441 ; jump table for switch statement
dd offset loc_47D458
dd offset loc_47D47E
dd offset loc_47D487
dd offset loc_47D4A0
dd offset loc_47D4B9
dd offset loc_47D4C2
dd offset def_47D43A
dd offset def_47D43A



sub_47D427 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 8           ; switch 9 cases
ja      def_47D43A      ; jumptable 0047D43A default case, cases 7,8
xor     edx, edx
mov     dl, al
jmp     jpt_47D43A[edx*4] ; switch jump

loc_47D441:             ; jumptable 0047D43A case 0
test    word ptr ds:dword_55BD7C+2, 0F80h

loc_47D44A:             ; jumptable 0047D43A default case, cases 7,8
jnz     def_47D43A
inc     al
mov     [ecx+9], al

def_47D43A:             ; jumptable 0047D43A default case, cases 7,8
pop     edx
pop     ecx
retn

loc_47D458:             ; jumptable 0047D43A case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short def_47D43A ; jumptable 0047D43A default case, cases 7,8
mov     byte ptr ds:dword_5F836C, 3
xor     al, al
mov     byte ptr ds:dword_5F836C+1, al
xor     edx, edx
mov     ds:dword_5F8370, edx
jmp     short loc_47D49A

loc_47D47E:             ; jumptable 0047D43A case 2
mov     ds:byte_5F88AC, 30h ; '0'
jmp     short loc_47D49A

loc_47D487:             ; jumptable 0047D43A case 3
mov     ds:byte_5F88AC, 35h ; '5'
mov     edx, 0D2h

loc_47D493:
xor     eax, eax
call    sub_4A0E24

loc_47D49A:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
retn

loc_47D4A0:             ; jumptable 0047D43A case 4
cmp     ds:byte_5F840B, 0
jge     short def_47D43A ; jumptable 0047D43A default case, cases 7,8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_47D43A ; jumptable 0047D43A default case, cases 7,8
mov     edx, 0D3h
jmp     short loc_47D493

loc_47D4B9:             ; jumptable 0047D43A case 5
test    byte ptr ds:dword_55BD7C+3, 8
jmp     short loc_47D44A

loc_47D4C2:             ; jumptable 0047D43A case 6
call    sub_42ABA2
test    eax, eax
jnz     short def_47D43A ; jumptable 0047D43A default case, cases 7,8
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
mov     eax, 1Ah
call    sub_47EEAE
jmp     short loc_47D49A
sub_47D427 endp




sub_47D4E8 proc near
push    ecx
push    edx
mov     edx, [eax+12h]
sar     edx, 10h
mov     ecx, ds:dword_519416
sar     ecx, 10h
cmp     ecx, edx
jl      short loc_47D54F
mov     ecx, ds:dword_51941E
sar     ecx, 10h
cmp     ecx, edx
jg      short loc_47D54F
mov     edx, [eax+14h]
sar     edx, 10h
mov     ecx, ds:dword_519416+2
sar     ecx, 10h
cmp     ecx, edx
jl      short loc_47D54F
mov     ecx, ds:dword_51941E+2
sar     ecx, 10h
cmp     ecx, edx
jg      short loc_47D54F
mov     eax, [eax+16h]
sar     eax, 10h
mov     edx, ds:dword_51941A
sar     edx, 10h
cmp     edx, eax
jl      short loc_47D54F
mov     edx, ds:dword_519422
sar     edx, 10h
cmp     edx, eax
jg      short loc_47D54F
mov     al, 1
pop     edx
pop     ecx
retn

loc_47D54F:
xor     al, al
pop     edx
pop     ecx
retn
sub_47D4E8 endp




sub_47D554 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47D55A[edx*4]
pop     edx
retn
sub_47D554 endp




sub_47D563 proc near
push    edx
mov     edx, eax
mov     eax, 5Eh ; '^'
call    sub_47E888
test    eax, eax
jnz     loc_47D5F8
mov     eax, 531h
call    sub_47E888
test    eax, eax
jnz     short loc_47D5A2
mov     eax, 532h
call    sub_47E888
test    eax, eax
jnz     short loc_47D5A2
mov     eax, 533h
call    sub_47E888
test    eax, eax
jz      short loc_47D5A9

loc_47D5A2:
or      byte ptr ds:dword_77E8F8, 3

loc_47D5A9:
mov     eax, 5Dh ; ']'
call    sub_47E888
test    eax, eax
jz      short loc_47D5BE
or      byte ptr ds:dword_77E8F8, 18h

loc_47D5BE:
mov     eax, 6Eh ; 'n'
call    sub_47E888
test    eax, eax
jz      short loc_47D5D3
or      byte ptr ds:dword_77E8F8, 4

loc_47D5D3:
mov     eax, 41h ; 'A'
call    sub_47E888
test    eax, eax
jz      short loc_47D5E8
or      byte ptr ds:dword_77E8F8, 40h

loc_47D5E8:
cmp     word ptr ds:dword_77E8F8, 6Fh ; 'o'
jnz     short loc_47D603

loc_47D5F2:
mov     byte ptr [edx+8], 2
pop     edx
retn

loc_47D5F8:
mov     word ptr ds:dword_77E8F8, 6Fh ; 'o'
jmp     short loc_47D5F2

loc_47D603:
mov     byte ptr [edx+0Dh], 0
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0
pop     edx
retn
sub_47D563 endp




sub_47D619 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_47D61F[edx*4]
pop     edx
retn
sub_47D619 endp



; Attributes: thunk

sub_47D628 proc near
jmp     sub_4DE439
sub_47D628 endp




sub_47D62D proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     bl, bl
cmp     word ptr ds:dword_77E8F8, 6Fh ; 'o'
jnz     short loc_47D646
mov     byte ptr [eax+8], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_47D646:
mov     byte ptr [eax+0Ch], 0FFh
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 9
mov     [edx+14h], ax
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
mov     [edx+18h], ax

loc_47D668:
cmp     bl, 7
jge     short loc_47D6AA
mov     [edx+0Ch], bl
movsx   ecx, bl
mov     eax, edx
call    ds:funcs_47D675[ecx*4]
test    eax, eax
jz      short loc_47D6A6
mov     ecx, [edx+9]
sar     ecx, 18h
mov     eax, 1
shl     eax, cl
xor     ecx, ecx
mov     cx, word ptr ds:dword_77E8F8
test    ecx, eax
jnz     short loc_47D6A6
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_47D6A6:
inc     bl
jmp     short loc_47D668

loc_47D6AA:
pop     edx
pop     ecx
pop     ebx
retn
sub_47D62D endp




sub_47D6AE proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_47D6CC
jbe     loc_47D73B
cmp     al, 2
jz      loc_47D784
pop     edx
pop     ecx
pop     ebx
retn

loc_47D6CC:
test    al, al
jnz     loc_47D7AD
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_47D7AD
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 9
mov     [ebx+14h], ax
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
mov     [ebx+18h], ax
mov     al, [ebx+0Dh]
cmp     al, 1
jnz     short loc_47D711
add     [ebx+0Ah], al
mov     byte ptr [ebx+0Dh], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_47D711:
mov     edx, [ebx+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     edx, offset unk_519458
add     edx, eax
mov     eax, ebx
call    sub_47D7B1
test    eax, eax
jz      loc_47D7A5

loc_47D734:
inc     byte ptr [ebx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_47D73B:
mov     edx, [ebx+9]
sar     edx, 18h
mov     dl, ds:byte_51947B[edx]
and     edx, 0FFh
mov     eax, 4
call    sub_4A0E24
mov     ecx, [ebx+9]
sar     ecx, 18h
mov     eax, 1
shl     eax, cl
test    al, 48h
jz      short loc_47D76F
or      ds:byte_5F8421, 40h

loc_47D76F:
movsx   cx, byte ptr [ebx+0Ch]
mov     eax, 1
shl     eax, cl
or      word ptr ds:dword_77E8F8, ax
jmp     short loc_47D734

loc_47D784:
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short loc_47D7AD
mov     ecx, [ebx+9]
sar     ecx, 18h
mov     eax, 1
shl     eax, cl
test    al, 48h
jz      short loc_47D7A5
and     ds:byte_5F8421, 0BFh

loc_47D7A5:
mov     byte ptr [ebx+9], 0
mov     byte ptr [ebx+0Ah], 0

loc_47D7AD:
pop     edx
pop     ecx
pop     ebx
retn
sub_47D6AE endp




sub_47D7B1 proc near
push    ebx
push    ecx
movsx   bx, byte ptr [eax+14h]
movsx   cx, byte ptr [edx]
sub     ebx, ecx
and     ebx, 0FFFFh
xor     ecx, ecx
mov     cl, [edx+2]
cmp     ebx, ecx
jge     short loc_47D805
movsx   ax, byte ptr [eax+18h]
movsx   bx, byte ptr [edx+1]
sub     eax, ebx
xor     ecx, ecx
mov     cx, ax
xor     eax, eax
mov     al, [edx+3]
cmp     ecx, eax
jge     short loc_47D805
mov     al, [edx+4]
cmp     al, byte ptr ds:dword_77E7D5
jz      short loc_47D7FD
mov     eax, [edx+1]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_47D805

loc_47D7FD:
mov     eax, 1
pop     ecx
pop     ebx
retn

loc_47D805:
xor     eax, eax
pop     ecx
pop     ebx
retn
sub_47D7B1 endp




sub_47D80A proc near
push    ecx
push    edx
mov     ecx, [eax+9]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
add     edx, ecx
add     edx, offset unk_519458
call    sub_47D7B1
test    eax, eax
jz      short loc_47D82D
mov     eax, 1

loc_47D82D:
pop     edx
pop     ecx
retn
sub_47D80A endp




sub_47D830 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     edx, offset unk_519458
add     edx, eax
mov     eax, ecx
call    sub_47D7B1
test    eax, eax
jz      short loc_47D873
mov     eax, 41h ; 'A'
call    sub_47E888
test    eax, eax
jz      short loc_47D873
mov     eax, 5Eh ; '^'
call    sub_47E8B8
mov     eax, 1
pop     edx
pop     ecx
retn

loc_47D873:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_47D830 endp




sub_47D878 proc near
push    ecx
push    edx
mov     ecx, [eax+9]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
add     edx, ecx
add     edx, offset unk_519458
call    sub_47D7B1
test    eax, eax
jz      short loc_47D8A5
mov     eax, 5Dh ; ']'
call    sub_47E8B8
mov     eax, 1

loc_47D8A5:
pop     edx
pop     ecx
retn
sub_47D878 endp




sub_47D8A8 proc near
push    ecx
push    edx
mov     ecx, [eax+9]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
add     edx, ecx
add     edx, offset unk_519458
call    sub_47D7B1
test    eax, eax
jz      short loc_47D8D5
mov     eax, 6Eh ; 'n'
call    sub_47E8B8
mov     eax, 1

loc_47D8D5:
pop     edx
pop     ecx
retn
sub_47D8A8 endp




sub_47D8D8 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     edx, offset unk_519458
add     edx, eax
mov     eax, ecx
call    sub_47D7B1
test    eax, eax
jz      short loc_47D911
mov     eax, 521h
call    sub_47E888
test    eax, eax
jnz     short loc_47D911
mov     eax, 1
pop     edx
pop     ecx
retn

loc_47D911:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_47D8D8 endp




sub_47D916 proc near
push    edx
mov     edx, eax
mov     eax, 531h
call    sub_47E888
test    eax, eax
jnz     short loc_47D943
mov     eax, 532h
call    sub_47E888
test    eax, eax
jnz     short loc_47D943
mov     eax, 533h
call    sub_47E888
test    eax, eax
jz      short loc_47D94C

loc_47D943:
mov     byte ptr [edx+0Dh], 1
mov     eax, 1

loc_47D94C:
pop     edx
retn
sub_47D916 endp




sub_47D94E proc near
mov     eax, 529h
call    sub_47E888
test    eax, eax
jz      short loc_47D96B
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_47D96B
mov     eax, 1
retn

loc_47D96B:
xor     eax, eax
retn
sub_47D94E endp




sub_47D96E proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47D974[edx*4]
pop     edx
retn
sub_47D96E endp




sub_47D97D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     eax, 53h ; 'S'
call    sub_47E888
test    eax, eax
jz      short loc_47D99A
mov     byte ptr [esi+8], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47D99A:
mov     ds:dword_55A2CC, eax
xor     ecx, ecx
mov     ds:dword_55A2D0, eax
mov     ds:dword_55A2D4, eax
jmp     short loc_47D9B7

loc_47D9AD:
inc     ecx
cmp     ecx, 3
jnb     loc_47DA32

loc_47D9B7:
call    sub_4DDFD0
test    eax, eax
jz      short loc_47D9AD
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 11h
mov     [eax+3], cl
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     bx, ds:word_519490[ecx*4]
mov     [eax+14h], bx
mov     word ptr [eax+16h], 0FFFFh
mov     bx, ds:word_519492[ecx*4]
mov     [eax+18h], bx
mov     word ptr [eax+54h], 0
mov     word ptr [eax+56h], 0
mov     word ptr [eax+58h], 0
mov     ebx, [eax+12h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+1Ch], ebx
mov     ebx, [eax+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+20h], ebx
mov     ebx, [eax+16h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+24h], ebx
mov     ds:dword_55A2CC[ecx*4], eax
jmp     loc_47D9AD

loc_47DA32:
mov     ebx, 3
mov     edx, 1
mov     eax, 0Ch
call    sub_47EEF1
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47D97D endp




sub_47DA53 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_47DA59[edx*4]
pop     edx
retn
sub_47DA53 endp




sub_47DA62 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     word ptr ds:dword_5F837A, 0FFD8h
jb      loc_47DB62
test    ds:byte_5F836A, 40h
jnz     loc_47DB62
cmp     ds:byte_77EAB8, 0
jnz     loc_47DB62
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_47DB62
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000032h
call    sub_4D89E4
mov     eax, 64Bh
call    sub_47E8B8
call    sub_436708
mov     byte ptr ds:dword_5F836C, 3
mov     bl, 1
mov     byte ptr ds:dword_5F836C+1, bl
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
mov     ax, word ptr ds:dword_5F83B8
mov     word ptr ds:dword_5F88A4, ax
mov     ax, word ptr ds:dword_5F83B8+2
mov     word ptr ds:dword_5F88A4+2, ax
mov     ax, ds:word_5F83BC
mov     ds:word_5F88A8, ax
xor     al, al
mov     ds:byte_5F88AC, al
mov     edx, 14h
xor     eax, eax
call    sub_4A0E24
add     [ecx+9], bl

loc_47DB62:
pop     edx
pop     ecx
pop     ebx
retn
sub_47DA62 endp




sub_47DB66 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_47DBFC
mov     eax, offset byte_5F8364
call    sub_4B565A
and     ds:byte_5F8421, 0BFh
mov     eax, ds:dword_55A2CC
mov     byte ptr [eax+0Dh], 1
mov     eax, ds:dword_55A2D0
mov     byte ptr [eax+0Dh], 1
mov     eax, ds:dword_55A2D4
mov     byte ptr [eax+0Dh], 1
mov     edx, ds:dword_5194B0
push    edx
mov     eax, ds:dword_55A2CC
mov     ecx, 51h ; 'Q'
xor     ebx, ebx
xor     edx, edx
call    sub_436785
mov     ecx, ds:off_5194B4
push    ecx
mov     eax, ds:dword_55A2D0
mov     ecx, 51h ; 'Q'
mov     ebx, 14h
xor     edx, edx
call    sub_436785
mov     ebx, ds:dword_5194B8
push    ebx
mov     eax, ds:dword_55A2D4
mov     ecx, 51h ; 'Q'
mov     ebx, 28h ; '('
xor     edx, edx
call    sub_436785
inc     byte ptr [esi+9]

loc_47DBFC:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47DB66 endp




sub_47DC01 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     eax, eax

loc_47DC0A:
mov     edx, ds:dword_55A2CC[eax*4]
or      bx, [edx+6Eh]
inc     eax
cmp     eax, 3
jb      short loc_47DC0A
test    bx, bx
jnz     short loc_47DC71
cmp     ds:byte_77EAB8, 0
jnz     short loc_47DC71
mov     eax, 10h
call    sub_4D9040
mov     eax, 64Bh
call    sub_47EA91
mov     eax, 53h ; 'S'
call    sub_47E8B8
call    sub_436710
mov     edx, 15h
xor     eax, eax
call    sub_4A0E24
mov     ebx, 3
xor     edx, edx
mov     eax, 0Ch
call    sub_47EEF1
call    sub_436868
inc     byte ptr [ecx+9]

loc_47DC71:
pop     edx
pop     ecx
pop     ebx
retn
sub_47DC01 endp




sub_47DC75 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     ds:byte_77EAB8, 0
jnz     short loc_47DC94
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000031h
call    sub_4D89E4
inc     byte ptr [ecx+9]

loc_47DC94:
pop     edx
pop     ecx
pop     ebx
retn
sub_47DC75 endp




sub_47DC98 proc near
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short locret_47DCA5
mov     byte ptr [eax+8], 2

locret_47DCA5:
retn
sub_47DC98 endp



; Attributes: thunk

sub_47DCA6 proc near
jmp     sub_4DE439
sub_47DCA6 endp

dword_47DCAB dd 104FEFEh
dword_47DCAF dd 103FA0Ah
dword_47DCB3 dd 101EAFBh
dword_47DCB7 dd 101FA01h
dword_47DCBB dd 10124FBh

loc_47DCBF:
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47DCC5[edx*4]
pop     edx
retn



sub_47DCCE proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_47DCD4[edx*4]
pop     edx
retn
sub_47DCCE endp



; Attributes: thunk

sub_47DCDD proc near
jmp     sub_4DE439
sub_47DCDD endp

db 90h
jpt_47DD13 dd offset loc_47DD1A ; jump table for switch statement
dd offset loc_47DD33
dd offset loc_47DD49
dd offset loc_47DD72
dd offset loc_47DDBC
dd offset loc_47DDDA
dd offset loc_47DDFD



sub_47DCFF proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 6           ; switch 7 cases
ja      def_47DD13      ; jumptable 0047DD13 default case
xor     edx, edx
mov     dl, al
jmp     jpt_47DD13[edx*4] ; switch jump

loc_47DD1A:             ; jumptable 0047DD13 case 0
mov     eax, 56h ; 'V'
call    sub_47E888
test    eax, eax
jnz     loc_47DE0D

loc_47DD2C:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_47DD33:             ; jumptable 0047DD13 case 1
test    ds:byte_77E8FE, 40h
jz      def_47DD13      ; jumptable 0047DD13 default case
inc     al
mov     [ecx+9], al
pop     edx
pop     ecx
pop     ebx
retn

loc_47DD49:             ; jumptable 0047DD13 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47DD13      ; jumptable 0047DD13 default case
mov     edx, 1
xor     eax, eax
call    sub_4A0E24
and     ds:byte_77E8FE, 0BFh
or      ds:byte_5F8421, 40h
jmp     short loc_47DD2C

loc_47DD72:             ; jumptable 0047DD13 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47DD13      ; jumptable 0047DD13 default case
mov     eax, 56h ; 'V'
call    sub_47E888
test    eax, eax
jz      short loc_47DDAD
xor     ebx, ebx
xor     edx, edx
mov     eax, 208h
call    sub_4D89E4
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Ah], 0
mov     dword ptr [ecx+1Ch], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_47DDAD:
and     ds:byte_5F8421, 0BFh
mov     byte ptr [ecx+9], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_47DDBC:             ; jumptable 0047DD13 case 4
mov     eax, ecx
call    sub_47E19D
test    eax, eax
jz      short def_47DD13 ; jumptable 0047DD13 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 209h
call    sub_4D89E4
jmp     loc_47DD2C

loc_47DDDA:             ; jumptable 0047DD13 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_47DD13 ; jumptable 0047DD13 default case
mov     ds:word_77E900, 1
mov     edx, 1Dh
xor     eax, eax
call    sub_4A0E24
jmp     loc_47DD2C

loc_47DDFD:             ; jumptable 0047DD13 case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_47DD13 ; jumptable 0047DD13 default case
and     ds:byte_5F8421, 0BFh

loc_47DE0D:
mov     byte ptr [ecx+8], 1

def_47DD13:             ; jumptable 0047DD13 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47DCFF endp




sub_47DE15 proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
mov     eax, dword_47DCAB
mov     [esp+0Ch+var_C], eax
mov     eax, 35h ; '5'
call    sub_47E888
test    eax, eax
jnz     short loc_47DE49
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jz      short def_47DE86 ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
mov     eax, 604h
call    sub_47E8B8

loc_47DE49:
or      ds:byte_77E8FE, 1
mov     byte ptr [ecx+8], 1

def_47DE86:             ; jumptable 0047DE86 default case
add     esp, 4          ; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
pop     edx
pop     ecx
retn
sub_47DE15 endp

db 90h
jpt_47DE86 dd offset loc_47DE8D ; jump table for switch statement
dd offset loc_47DEB3
dd offset loc_47DECF
dd offset loc_47DEEE



sub_47DE6B proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
mov     eax, dword_47DCAF
mov     [esp+0Ch+var_C], eax
mov     al, [ecx+9]
cmp     al, 3           ; switch 4 cases
ja      short def_47DE86 ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
and     eax, 0FFh
jmp     jpt_47DE86[eax*4] ; switch jump

loc_47DE8D:             ; jumptable 0047DE86 case 0
mov     eax, 6Dh ; 'm'
call    sub_47E888
test    eax, eax
jz      short loc_47DEA1

loc_47DE9B:
mov     byte ptr [ecx+8], 1
jmp     short def_47DE86 ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47DEA1:
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jz      short def_47DE86 ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47DEAE:
inc     byte ptr [ecx+9]
jmp     short def_47DE86 ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47DEB3:             ; jumptable 0047DE86 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_47DE86 ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jnz     short loc_47DEAE
mov     byte ptr [ecx+9], 0
jmp     short def_47DE86 ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47DECF:             ; jumptable 0047DE86 case 2
mov     edx, 1Bh
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
mov     eax, 6Dh ; 'm'
call    sub_47E8B8
jmp     short loc_47DEAE

loc_47DEEE:             ; jumptable 0047DE86 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
and     ds:byte_5F8421, 0BFh
jmp     short loc_47DE9B
sub_47DE6B endp

db 8Dh, 40h, 0
jpt_47DF36 dd offset loc_47DF3D ; jump table for switch statement
dd offset loc_47DF7D
dd offset loc_47DFA0
dd offset loc_47DFB8



sub_47DF17 proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
mov     eax, dword_47DCB3
mov     [esp+0Ch+var_C], eax
mov     al, [ecx+9]
cmp     al, 3           ; switch 4 cases
ja      def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
and     eax, 0FFh
jmp     jpt_47DF36[eax*4] ; switch jump

loc_47DF3D:             ; jumptable 0047DF36 case 0
test    ds:byte_77E8FE, 8
jnz     short loc_47DF54
mov     eax, 56h ; 'V'
call    sub_47E888
test    eax, eax
jz      short loc_47DF64

loc_47DF54:
or      ds:byte_77E8FE, 8

loc_47DF5B:
mov     byte ptr [ecx+8], 1
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47DF64:
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jz      def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47DF75:
inc     byte ptr [ecx+9]
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47DF7D:             ; jumptable 0047DF36 case 1
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jnz     short loc_47DF75
mov     byte ptr [ecx+9], 0
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47DFA0:             ; jumptable 0047DF36 case 2
mov     edx, 6
mov     eax, 4
call    sub_4A0E24
or      ds:byte_77E8FE, 8
jmp     short loc_47DF75

loc_47DFB8:             ; jumptable 0047DF36 case 3
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_47DF5B
jmp     def_47DE86      ; jumptable 0047DE86 default case
sub_47DF17 endp         ; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
db 90h
jpt_47DFF6 dd offset loc_47DFFD ; jump table for switch statement
dd offset loc_47E03D
dd offset loc_47E060
dd offset loc_47E078



sub_47DFD7 proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
mov     eax, dword_47DCB7
mov     [esp+0Ch+var_C], eax
mov     al, [ecx+9]
cmp     al, 3           ; switch 4 cases
ja      def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
and     eax, 0FFh
jmp     jpt_47DFF6[eax*4] ; switch jump

loc_47DFFD:             ; jumptable 0047DFF6 case 0
test    ds:byte_77E8FE, 10h
jnz     short loc_47E014
mov     eax, 56h ; 'V'
call    sub_47E888
test    eax, eax
jz      short loc_47E024

loc_47E014:
or      ds:byte_77E8FE, 10h

loc_47E01B:
mov     byte ptr [ecx+8], 1
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47E024:
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jz      def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47E035:
inc     byte ptr [ecx+9]
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47E03D:             ; jumptable 0047DFF6 case 1
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jnz     short loc_47E035
mov     byte ptr [ecx+9], 0
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47E060:             ; jumptable 0047DFF6 case 2
mov     edx, 8
mov     eax, 4
call    sub_4A0E24
or      ds:byte_77E8FE, 10h
jmp     short loc_47E035

loc_47E078:             ; jumptable 0047DFF6 case 3
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_47E01B
jmp     def_47DE86      ; jumptable 0047DE86 default case
sub_47DFD7 endp         ; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
db 90h
jpt_47E0B6 dd offset loc_47E0BD ; jump table for switch statement
dd offset loc_47E0FF
dd offset loc_47E122
dd offset loc_47E13A



sub_47E097 proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
mov     eax, dword_47DCBB
mov     [esp+0Ch+var_C], eax
mov     al, [ecx+9]
cmp     al, 3           ; switch 4 cases
ja      def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
and     eax, 0FFh
jmp     jpt_47E0B6[eax*4] ; switch jump

loc_47E0BD:             ; jumptable 0047E0B6 case 0
test    ds:byte_77E8FE, 20h
jz      short loc_47E0CF

loc_47E0C6:
mov     byte ptr [ecx+8], 1
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47E0CF:
mov     eax, 56h ; 'V'
call    sub_47E888
test    eax, eax
jz      short loc_47E0E6
or      ds:byte_77E8FE, 24h
jmp     short loc_47E0C6

loc_47E0E6:
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jz      def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47E0F7:
inc     byte ptr [ecx+9]
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47E0FF:             ; jumptable 0047E0B6 case 1
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jnz     short loc_47E0F7
mov     byte ptr [ecx+9], 0
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47E122:             ; jumptable 0047E0B6 case 2
mov     edx, 7
mov     eax, 4
call    sub_4A0E24
or      ds:byte_77E8FE, 20h
jmp     short loc_47E0F7

loc_47E13A:             ; jumptable 0047E0B6 case 3
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_47E0C6
jmp     def_47DE86      ; jumptable 0047DE86 default case
sub_47E097 endp         ; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case



sub_47E148 proc near
mov     byte ptr [eax+8], 1
retn
sub_47E148 endp




sub_47E14D proc near
push    ecx
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 9
movsx   ecx, al
movsx   eax, byte ptr [edx]
sub     ecx, eax
and     ecx, 0FFFFh
xor     eax, eax
mov     al, [edx+2]
cmp     ecx, eax
jge     short loc_47E199
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
movsx   eax, al
movsx   ecx, byte ptr [edx+1]
sub     eax, ecx
xor     ecx, ecx
mov     cx, ax
xor     eax, eax
mov     al, [edx+3]
cmp     ecx, eax
jge     short loc_47E199
mov     eax, 1
pop     ecx
retn

loc_47E199:
xor     eax, eax
pop     ecx
retn
sub_47E14D endp




sub_47E19D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
xor     edi, edi
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_47E1B3
cmp     al, 1
jz      short loc_47E1D1
jmp     short loc_47E1EB

loc_47E1B3:
mov     ecx, (offset dword_5F8376+2)
mov     ebx, 400h
mov     edx, 200h
mov     eax, 4
call    sub_42A70B
inc     byte ptr [esi+0Ah]
jmp     short loc_47E1EB

loc_47E1D1:
mov     ah, byte ptr ds:dword_77E954+3
test    ah, ah
jnz     short loc_47E1EB
cmp     dword ptr [esi+1Ch], 5Ah ; 'Z'
jb      short loc_47E1E8
mov     edi, 1
jmp     short loc_47E1EB

loc_47E1E8:
mov     [esi+0Ah], ah

loc_47E1EB:
inc     dword ptr [esi+1Ch]
mov     eax, edi
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47E19D endp




sub_47E1F6 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47E1FC[edx*4]
pop     edx
retn
sub_47E1F6 endp




sub_47E205 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_47E20B[edx*4]
pop     edx
retn
sub_47E205 endp



; Attributes: thunk

sub_47E214 proc near
jmp     sub_4DE439
sub_47E214 endp

align 2
jpt_47E245 dd offset loc_47E24C ; jump table for switch statement
dd offset loc_47E284
dd offset loc_47E2C6
dd offset loc_47E2D7
dd offset loc_47E2F1
dd offset loc_47E30B



sub_47E232 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 5           ; switch 6 cases
ja      def_47E245      ; jumptable 0047E245 default case
xor     edx, edx
mov     dl, al
jmp     jpt_47E245[edx*4] ; switch jump

loc_47E24C:             ; jumptable 0047E245 case 0
mov     eax, 64h ; 'd'
call    sub_47E888
test    eax, eax
jnz     short loc_47E261
mov     byte ptr [ecx+9], 1
pop     edx
pop     ecx
retn

loc_47E261:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_519506[eax*4]
call    sub_47E888
test    eax, eax
jnz     loc_47E314
mov     byte ptr [ecx+9], 3
pop     edx
pop     ecx
retn

loc_47E284:             ; jumptable 0047E245 case 1
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:(off_5194FC+2)[eax*2]
sar     eax, 10h
mov     edx, ds:dword_5F837A
sar     edx, 10h
cmp     edx, eax
jge     def_47E245      ; jumptable 0047E245 default case
mov     edx, 1
mov     eax, 4
call    sub_4A0E24
mov     eax, 64h ; 'd'
call    sub_47E8B8

loc_47E2C0:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
retn

loc_47E2C6:             ; jumptable 0047E245 case 2
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short def_47E245 ; jumptable 0047E245 default case
inc     al
mov     [ecx+9], al
pop     edx
pop     ecx
retn

loc_47E2D7:             ; jumptable 0047E245 case 3
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_519506[eax*4]
call    sub_47E888
test    eax, eax
jz      short def_47E245 ; jumptable 0047E245 default case
jmp     short loc_47E2C0

loc_47E2F1:             ; jumptable 0047E245 case 4
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short def_47E245 ; jumptable 0047E245 default case
mov     edx, 3
mov     eax, 4
call    sub_4A0E24
jmp     short loc_47E2C0

loc_47E30B:             ; jumptable 0047E245 case 5
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short def_47E245 ; jumptable 0047E245 default case

loc_47E314:
mov     byte ptr [ecx+8], 1

def_47E245:             ; jumptable 0047E245 default case
pop     edx
pop     ecx
retn
sub_47E232 endp

db 8Dh, 40h, 0
jpt_47E346 dd offset loc_47E34D ; jump table for switch statement
dd offset loc_47E370
dd offset loc_47E38E
dd offset loc_47E3A0
dd offset loc_47E3E6



sub_47E332 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_47E346      ; jumptable 0047E346 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_47E346[ecx*4] ; switch jump

loc_47E34D:             ; jumptable 0047E346 case 0
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_519506[eax*4]
call    sub_47E888
test    eax, eax
jnz     loc_47E3EF

loc_47E369:
inc     byte ptr [ebx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_47E370:             ; jumptable 0047E346 case 1
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_519506[eax*4]
call    sub_47E888
test    eax, eax
jz      def_47E346      ; jumptable 0047E346 default case
jmp     short loc_47E369

loc_47E38E:             ; jumptable 0047E346 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_47E346 ; jumptable 0047E346 default case
inc     al
mov     [ebx+9], al
pop     edx
pop     ecx
pop     ebx
retn

loc_47E3A0:             ; jumptable 0047E346 case 3
xor     dl, dl
xor     ecx, ecx
jmp     short loc_47E3AD

loc_47E3A6:
inc     dl
cmp     dl, 3
jge     short loc_47E3C3

loc_47E3AD:
movsx   eax, dl
mov     eax, ds:dword_519512[eax*4]
call    sub_47E888
test    eax, eax
jz      short loc_47E3A6
inc     ecx
jmp     short loc_47E3A6

loc_47E3C3:
lea     edx, [ecx+3]
mov     eax, 4
call    sub_4A0E24
cmp     ecx, 3
jnz     short loc_47E369
mov     eax, 2Bh ; '+'
call    sub_47E8B8
call    sub_47E829
jmp     short loc_47E369

loc_47E3E6:             ; jumptable 0047E346 case 4
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short def_47E346 ; jumptable 0047E346 default case

loc_47E3EF:
mov     byte ptr [ebx+8], 1

def_47E346:             ; jumptable 0047E346 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47E332 endp




sub_47E3F7 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_47E427
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_51951E[eax*4]
call    sub_47E888
test    eax, eax
jz      short loc_47E434
mov     eax, 10h
call    sub_4D9040
inc     byte ptr [edx+9]
pop     edx
retn

loc_47E427:
cmp     ds:byte_77EAB8, 0
jnz     short loc_47E434
mov     byte ptr [edx+8], 1

loc_47E434:
pop     edx
retn
sub_47E3F7 endp




sub_47E436 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_47E43C[edx*4]
pop     edx
retn
sub_47E436 endp




sub_47E445 proc near
push    ebx
push    edx
push    edi
mov     ebx, eax
mov     edx, 1
cmp     byte ptr [eax+8], 0
jnz     short loc_47E48E
cmp     word ptr ds:dword_77E8F8+2, 0
jnz     short loc_47E487
mov     word ptr ds:dword_77E8F8+2, 0FE00h

loc_47E468:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
cmp     ds:dword_6E40B4[eax], 0
jz      short loc_47E487
sub     word ptr ds:(dword_6E40AE+2)[eax], 200h
inc     edx
jmp     short loc_47E468

loc_47E487:
inc     byte ptr [ebx+8]
pop     edi
pop     edx
pop     ebx
retn

loc_47E48E:
add     word ptr ds:dword_77E8F8+2, 40h ; '@'
mov     di, word ptr ds:dword_77E8F8+2

loc_47E49D:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
cmp     ds:dword_6E40B4[eax], 0
jz      short loc_47E4CD
cmp     di, 200h
jnz     short loc_47E4C2
sub     word ptr ds:(dword_6E40AE+2)[eax], 3C0h
jmp     short loc_47E4CA

loc_47E4C2:
add     word ptr ds:(dword_6E40AE+2)[eax], 40h ; '@'

loc_47E4CA:
inc     edx
jmp     short loc_47E49D

loc_47E4CD:
cmp     word ptr ds:dword_77E8F8+2, 200h
jnz     short loc_47E4E1
mov     word ptr ds:dword_77E8F8+2, 0FE00h

loc_47E4E1:
pop     edi
pop     edx
pop     ebx
retn
sub_47E445 endp




sub_47E4E5 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ebx, eax
mov     edx, 1

loc_47E4F0:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
cmp     ds:dword_6E40B4[eax], 0
jz      short loc_47E514
mov     cx, word ptr ds:dword_77E8F8+2
sub     word ptr ds:(dword_6E40AE+2)[eax], cx
inc     edx
jmp     short loc_47E4F0

loc_47E514:
xor     edi, edi
mov     word ptr ds:dword_77E8F8+2, di
mov     eax, ebx
call    sub_4DE439
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_47E4E5 endp




sub_47E529 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+8]
cmp     al, 1
jb      short loc_47E53D
jbe     short loc_47E56B
cmp     al, 2
jz      short loc_47E58E
pop     edx
pop     ecx
retn

loc_47E53D:
test    al, al
jnz     loc_47E5F1
xor     eax, eax
mov     al, [edx+3]
mov     eax, ds:dword_519534[eax*4]
call    sub_47E888
test    eax, eax
jz      loc_47E5F1
or      ds:byte_5F8421, 40h

loc_47E565:
inc     byte ptr [edx+8]
pop     edx
pop     ecx
retn

loc_47E56B:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_47E5F1
mov     eax, 0Ah
call    sub_49E0D7
mov     eax, 10h
call    sub_4D9040
jmp     short loc_47E565

loc_47E58E:
cmp     ds:word_6E23D6, 0
jnz     short loc_47E5F1
cmp     ds:byte_77EAB8, 0
jnz     short loc_47E5F1
mov     eax, offset dword_77EA48
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 16h
cmp     byte ptr [edx+3], 0
jnz     short loc_47E5C1
mov     ecx, 2
jmp     short loc_47E5C3

loc_47E5C1:
xor     ecx, ecx

loc_47E5C3:
mov     [eax+17h], cl
mov     word ptr [eax+8], 0
mov     word ptr [eax+0Ah], 0
mov     word ptr [eax+0Ch], 0
mov     word ptr [eax+12h], 0
mov     byte ptr [eax+15h], 0
mov     byte ptr [eax+19h], 0FFh
mov     byte ptr [eax+18h], 0FFh
mov     eax, edx
call    sub_4DE439

loc_47E5F1:
pop     edx
pop     ecx
retn
sub_47E529 endp




sub_47E5F4 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47E5FA[edx*4]
pop     edx
retn
sub_47E5F4 endp




sub_47E603 proc near
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
mov     word ptr [eax+1Ah], 0FF42h
retn
sub_47E603 endp




sub_47E619 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edi, eax
mov     ebp, [eax+18h]
sar     ebp, 10h
xor     esi, esi

loc_47E629:
mov     ecx, esi
shl     ecx, 3
mov     eax, esi
shl     eax, 13h
or      eax, 2000000h
mov     edx, esi
shl     edx, 0Bh
or      eax, edx
or      ecx, eax
lea     ebx, [esi+ebp]
lea     edx, [esi+20h]
mov     eax, edi
call    sub_47E6D9
inc     esi
cmp     esi, 10h
jl      short loc_47E629
xor     esi, esi

loc_47E656:
lea     ebx, [ebp+10h]
add     ebx, esi
lea     edx, [esi+30h]
mov     ecx, 2808080h
mov     eax, edi
call    sub_47E6D9
inc     esi
cmp     esi, 90h
jl      short loc_47E656
xor     esi, esi

loc_47E675:
mov     eax, 10h
sub     eax, esi
mov     edx, eax
shl     edx, 3
mov     ecx, eax
shl     ecx, 13h
or      ecx, 2000000h
shl     eax, 0Bh
or      ecx, eax
or      ecx, edx
lea     ebx, [ebp+0A0h]
add     ebx, esi
lea     edx, [esi+0C0h]
mov     eax, edi
call    sub_47E6D9
inc     esi
cmp     esi, 10h
jl      short loc_47E675
mov     ah, [edi+0Bh]
inc     ah
mov     [edi+0Bh], ah
cmp     ah, 2
jbe     short loc_47E6C3
mov     byte ptr [edi+0Bh], 0
inc     word ptr [edi+1Ah]

loc_47E6C3:
cmp     word ptr [edi+1Ah], 400h
jl      short loc_47E6D2
mov     eax, edi
call    sub_4DE439

loc_47E6D2:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47E619 endp




sub_47E6D9 proc near
push    esi
mov     esi, edx
test    ebx, ebx
jl      loc_47E784
cmp     ebx, 400h
jge     loc_47E784
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx], 9000000h
or      ecx, 2C000000h
mov     [edx+4], ecx
mov     word ptr [edx+0Eh], 7C00h
mov     eax, ebx
sar     eax, 8
add     eax, 15h
or      al, 20h
mov     [edx+16h], ax
mov     byte ptr [edx+1Ch], 0
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 0FFh
mov     al, [edx+24h]
mov     [edx+14h], al
mov     [edx+15h], bl
mov     [edx+0Dh], bl
mov     [edx+25h], bl
mov     [edx+1Dh], bl
mov     word ptr [edx+18h], 20h ; ' '
mov     ax, [edx+18h]
mov     [edx+8], ax
mov     word ptr [edx+20h], 11Fh
mov     ax, [edx+20h]
mov     [edx+10h], ax
mov     [edx+12h], si
mov     eax, esi
mov     [edx+0Ah], ax
inc     esi
mov     [edx+22h], si
mov     [edx+1Ah], si
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6

loc_47E784:
pop     esi
retn
sub_47E6D9 endp




sub_47E786 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, 1Fh
jmp     short loc_47E796

loc_47E791:
dec     edx
test    edx, edx
jl      short loc_47E7A8

loc_47E796:
mov     eax, edx
call    sub_4DE290
test    eax, eax
jz      short loc_47E791
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0

loc_47E7A8:
mov     eax, ecx
call    sub_4DE439
pop     edx
pop     ecx
retn
sub_47E786 endp




sub_47E7B2 proc near
push    ebx
push    edx
test    eax, eax
jnz     short loc_47E7DB
mov     eax, offset unk_560D04
xor     edx, edx

loc_47E7BF:
mov     dword ptr [eax], 0
add     eax, 4
inc     edx
cmp     edx, 40h ; '@'
jl      short loc_47E7BF
call    sub_4A0B90
call    sub_4A0BB9
pop     edx
pop     ebx
retn

loc_47E7DB:
mov     ebx, 8
mov     edx, offset unk_560D04
mov     eax, offset unk_7519CC
call    sub_4EECEF
pop     edx
pop     ebx
retn
sub_47E7B2 endp




sub_47E7F2 proc near
push    edx
test    eax, eax
jnz     short loc_47E80D
mov     eax, offset unk_560DC4
xor     edx, edx

loc_47E7FE:
mov     dword ptr [eax], 0
add     eax, 4
inc     edx
cmp     edx, 10h
jl      short loc_47E7FE

loc_47E80D:
xor     edx, edx
mov     ds:dword_560BDC, edx
mov     ds:dword_77E5E8, edx
mov     ds:dword_77E5EC, edx
mov     ds:dword_77E5F0, edx
pop     edx
retn
sub_47E7F2 endp




sub_47E829 proc near
inc     byte ptr ds:dword_77E7D5+2
retn
sub_47E829 endp




sub_47E830 proc near
push    ecx
push    edx
mov     edx, offset dword_560BDC
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_47E858
cmp     byte ptr ds:dword_77EA5A+2, 0
jnz     short loc_47E858
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
call    ds:funcs_47E851[eax*4]

loc_47E858:
cmp     byte ptr [edx], 0
jz      short loc_47E885
cmp     byte ptr [edx+1], 0FFh
jz      short loc_47E871
xor     ecx, ecx
mov     cl, [edx+1]
mov     eax, edx
call    ds:funcs_47E86A[ecx*4]

loc_47E871:
cmp     byte ptr [edx], 0
jnz     short loc_47E885
xor     eax, eax
mov     al, [edx+1]
add     eax, 380h
call    sub_47E8B8

loc_47E885:
pop     edx
pop     ecx
retn
sub_47E830 endp




sub_47E888 proc near
push    ecx
mov     ecx, eax
and     ecx, 7
mov     ch, 80h
shr     ch, cl
mov     cl, ch
shr     eax, 3
add     eax, offset unk_560D04
mov     al, [eax]
and     eax, 0FFh
and     ecx, 0FFh
test    eax, ecx
jz      short loc_47E8B4
mov     eax, 1
pop     ecx
retn

loc_47E8B4:
xor     eax, eax
pop     ecx
retn
sub_47E888 endp




sub_47E8B8 proc near
push    ecx
push    edx
mov     edx, eax

loc_47E8BC:
mov     ecx, edx
and     ecx, 7
mov     al, 80h
shr     al, cl
mov     cl, al
mov     eax, edx
shr     eax, 3
add     eax, offset unk_560D04
or      [eax], cl
cmp     edx, 500h
jb      short loc_47E901
cmp     edx, 520h
jnb     short loc_47E901
xor     eax, eax
jmp     short loc_47E8ED

loc_47E8E7:
inc     eax
cmp     eax, 20h ; ' '
jge     short loc_47E901

loc_47E8ED:
cmp     byte ptr ds:(dword_5F88B5+3)[eax], 0
jnz     short loc_47E8E7
mov     cl, dl
sub     cl, 0FFh
mov     byte ptr ds:(dword_5F88B5+3)[eax], cl

loc_47E901:
cmp     ds:byte_5F84D0, 0
jz      short loc_47E944
cmp     edx, 53Ah
jb      short loc_47E944
cmp     edx, 53Ch
ja      short loc_47E944
mov     eax, 53Ah
call    sub_47E888
mov     ecx, eax
mov     eax, 53Bh
call    sub_47E888
add     cl, al
mov     eax, 53Ch
call    sub_47E888
add     cl, al
mov     ds:byte_5F84D0, cl

loc_47E944:
lea     ecx, [edx-500h]
cmp     ecx, 80h
jnb     loc_47EA47
lea     eax, [edx+80h]
cmp     ecx, 20h ; ' '
jb      loc_47EA42
lea     ecx, [edx-520h]
cmp     ecx, 20h ; ' '
jnb     loc_47EA1D
cmp     edx, 528h
jnz     short loc_47E9CC
mov     eax, 582h
call    sub_47E8B8
mov     eax, 583h
call    sub_47E8B8
mov     eax, 584h
call    sub_47E8B8
mov     eax, 585h
call    sub_47E8B8
mov     eax, 586h
call    sub_47E8B8
mov     eax, 587h
call    sub_47E8B8
mov     eax, 5C1h
call    sub_47E8B8
mov     eax, 5C2h
call    sub_47E8B8

loc_47E9CC:
cmp     edx, 53Ah
jnz     short loc_47E9E8
mov     eax, 5BAh
call    sub_47EA91
mov     eax, 5BBh
call    sub_47E8B8

loc_47E9E8:
cmp     edx, 53Bh
jnz     short loc_47EA04
mov     eax, 5BBh
call    sub_47EA91
mov     eax, 5BCh
call    sub_47E8B8

loc_47EA04:
cmp     edx, 53Ch
jnz     loc_47E885
mov     eax, 5BCh
call    sub_47EA91
pop     edx
pop     ecx
retn

loc_47EA1D:
lea     ecx, [edx-540h]
cmp     ecx, 4
jb      short loc_47EA42
lea     ecx, [edx-544h]
cmp     ecx, 14h
jb      loc_47E885
lea     ecx, [edx-558h]
cmp     ecx, 28h ; '('
jnb     short loc_47EA47

loc_47EA42:
call    sub_47E8B8

loc_47EA47:
cmp     edx, 2Ah ; '*'
jnz     short loc_47EA6A
mov     eax, 580h
call    sub_47E8B8
mov     eax, 581h
call    sub_47E8B8
mov     eax, 5C3h
call    sub_47E8B8

loc_47EA6A:
cmp     edx, 51h ; 'Q'
jnz     loc_47E885
mov     eax, 5BAh
call    sub_47E8B8
mov     eax, 588h
call    sub_47E8B8
mov     edx, 589h
jmp     loc_47E8BC
sub_47E8B8 endp




sub_47EA91 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, eax
and     ecx, 7
mov     bl, 80h
shr     bl, cl
xor     bl, 0FFh
shr     eax, 3
add     eax, offset unk_560D04
and     [eax], bl
cmp     edx, 500h
jb      short loc_47EB04
cmp     edx, 520h
jnb     short loc_47EB04
xor     eax, eax
lea     ecx, [edx-4FFh]
jmp     short loc_47EACC

loc_47EAC6:
inc     eax
cmp     eax, 20h ; ' '
jge     short loc_47EAE0

loc_47EACC:
xor     ebx, ebx
mov     bl, byte ptr ds:(dword_5F88B5+3)[eax]
cmp     ebx, ecx
jnz     short loc_47EAC6
xor     cl, cl
mov     byte ptr ds:(dword_5F88B5+3)[eax], cl

loc_47EAE0:
xor     eax, eax
lea     ecx, [edx-4FFh]
jmp     short loc_47EAF0

loc_47EAEA:
inc     eax
cmp     eax, 3
jge     short loc_47EB04

loc_47EAF0:
xor     ebx, ebx
mov     bl, byte ptr ds:(dword_5F88B1+3)[eax]
cmp     ebx, ecx
jnz     short loc_47EAEA
xor     ch, ch
mov     byte ptr ds:(dword_5F88B1+3)[eax], ch

loc_47EB04:
pop     edx
pop     ecx
pop     ebx
retn
sub_47EA91 endp

push    edx
mov     eax, ds:dword_77E6B8
mov     dl, [eax]
mov     byte ptr ds:word_55A2D8, dl
mov     dl, [eax+1]
mov     byte ptr ds:word_55A2D8+1, dl
mov     dx, ds:word_55A2D8
add     eax, 2
mov     ds:dword_77E6B8, eax
mov     eax, edx
pop     edx
retn



sub_47EB32 proc near
push    edx
mov     dl, [eax]
mov     byte ptr ds:word_55A2D8, dl
mov     al, [eax+1]
mov     byte ptr ds:word_55A2D8+1, al
mov     ax, ds:word_55A2D8
pop     edx
retn
sub_47EB32 endp




sub_47EB4B proc near
push    ebx
push    ecx
push    edx
cmp     ds:word_5F83D2, 0
jl      short loc_47EBC7
mov     ecx, offset dword_560BDC
mov     byte ptr ds:dword_560BDC, 1
xor     dl, dl
mov     ds:byte_560BE5, dl
mov     ds:byte_560BE4, dl
mov     byte ptr ds:dword_560BDC+1, al
xor     edx, edx
mov     ds:dword_560BEC, edx
xor     ebx, ebx
mov     ds:dword_560BE8, edx
mov     ds:dword_560BF8, edx
mov     ds:dword_560BF4, edx
mov     ds:dword_560BF0, edx
xor     eax, eax
mov     ds:dword_560BE0, edx
xor     bl, dl
mov     ds:byte_560BE7, bl
xor     bh, dh
mov     ds:byte_560BE6, bh
mov     ds:dword_560C80, edx

loc_47EBB7:
mov     edx, eax
mov     dword ptr [ecx+edx*4+24h], 0
inc     eax
cmp     eax, 10h
jl      short loc_47EBB7

loc_47EBC7:
pop     edx
pop     ecx
pop     ebx
retn
sub_47EB4B endp




sub_47EBCB proc near
cmp     byte ptr ds:dword_77E7DC+2, 0
jnz     short loc_47EBE9
xor     eax, eax
mov     al, byte ptr ds:dword_560BDC+1
add     eax, 380h
call    sub_47E888
test    eax, eax
jz      short loc_47EBF8

loc_47EBE9:
test    byte ptr ds:word_5708DE, 8
jz      short loc_47EBF8
mov     eax, 1

locret_47EBF7:
retn

loc_47EBF8:
xor     eax, eax
retn
sub_47EBCB endp




sub_47EBFB proc near
push    ecx
push    edx
xor     edx, edx
mov     ds:dword_77E5E4, edx
xor     eax, eax

loc_47EC07:
xor     ecx, ecx
mov     ds:dword_560C84[eax*4], ecx
inc     eax
cmp     eax, 20h ; ' '
jl      short loc_47EC07

loc_47EC16:
pop     edx
pop     ecx
retn
sub_47EBFB endp




sub_47EC19 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
xor     ebx, ebx

loc_47EC21:
movsx   eax, bx
cmp     eax, [edx]
jnb     short loc_47EC6B
movsx   ecx, bx
mov     eax, ecx
shl     eax, 2
add     ecx, eax
shl     ecx, 2
mov     eax, [edx+4]
add     eax, ecx
xor     ecx, ecx
mov     cl, [eax]
call    sub_49DB4D
movsx   eax, cx
mov     esi, ds:dword_560C00[eax*4]
mov     ds:dword_560C84[eax*4], esi
and     byte ptr [esi+6], 0DFh
movsx   ecx, cx
mov     eax, 80000000h
shr     eax, cl
or      ds:dword_77E5E4, eax
inc     ebx
jmp     short loc_47EC21

loc_47EC6B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47EC19 endp

push    ecx
mov     ecx, eax
mov     eax, edx
shl     eax, 2
add     edx, eax
shl     edx, 2
mov     eax, [ecx+4]
add     eax, edx
xor     edx, edx
mov     dl, [eax]
call    sub_49DB4D
movsx   eax, dx
mov     ecx, ds:dword_560C00[eax*4]
mov     ds:dword_560C84[eax*4], ecx
movsx   ecx, dx
mov     eax, 80000000h
shr     eax, cl
or      ds:dword_77E5E4, eax
pop     ecx
retn



sub_47ECAE proc near
push    ebx
push    ecx
push    edx
push    esi
xor     ebx, ebx

loc_47ECB4:
mov     edx, ds:dword_77E5E4
test    edx, edx
jz      short loc_47EC6B
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
test    eax, edx
jz      loc_47EDA1
mov     edx, ds:dword_560C84[ebx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 40h ; '@'
jb      short loc_47ED06
jbe     short loc_47ED10
cmp     eax, 60h ; '`'
jb      loc_47ED90
jbe     loc_47ED64
cmp     eax, 0E0h
jz      loc_47ED78
jmp     loc_47ED90

loc_47ED06:
cmp     eax, 20h ; ' '
jz      short loc_47ED38
jmp     loc_47ED90

loc_47ED10:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
mov     ecx, eax
shl     ecx, 2
mov     eax, ds:dword_77E6D4
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
mov     esi, ecx
shl     esi, 2
mov     ecx, [eax]
mov     eax, edx
call    dword ptr [ecx+esi]
jmp     short loc_47ED90

loc_47ED38:
cmp     byte ptr [edx+2], 10h
jz      short loc_47ED5B
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
mov     ecx, ds:dword_77E6F0
movzx   esi, byte ptr [edx+4]
mov     ecx, [ecx+eax*4]
mov     eax, edx
call    dword ptr [ecx+esi*4]
jmp     short loc_47ED90

loc_47ED5B:
mov     eax, edx
call    sub_4DE2F6
jmp     short loc_47ED90

loc_47ED64:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0
jmp     short loc_47ED8A

loc_47ED78:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6D8

loc_47ED8A:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_47ED90:
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_77E5E4, eax

loc_47EDA1:
inc     ebx
jmp     loc_47ECB4
sub_47ECAE endp




sub_47EDA7 proc near
push    ebx
push    ecx
push    edx
mov     bl, al
movsx   ecx, al
mov     eax, 80000000h
shr     eax, cl
test    ds:dword_77E5E4, eax
jz      loc_47EE7E
movsx   edx, bl
mov     edx, ds:dword_560C84[edx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 40h ; '@'
jb      short loc_47EDF4
jbe     short loc_47EDFE
cmp     eax, 60h ; '`'
jb      loc_47EE6C
jbe     short loc_47EE41
cmp     eax, 0E0h
jz      short loc_47EE55
jmp     loc_47EE6C

loc_47EDF4:
cmp     eax, 20h ; ' '
jz      short loc_47EE1E
jmp     loc_47EE6C

loc_47EDFE:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6D4

loc_47EE10:
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
shl     ecx, 2
mov     eax, [eax]
jmp     short loc_47EE66

loc_47EE1E:
cmp     byte ptr [edx+2], 10h
jz      short loc_47EE38
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6F0
jmp     short loc_47EE10

loc_47EE38:
mov     eax, edx
call    sub_4DE2F6
jmp     short loc_47EE6C

loc_47EE41:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0
jmp     short loc_47EE66

loc_47EE55:
mov     byte ptr [edx+8], 2
xor     ecx, ecx
mov     cl, [edx+2]
shl     ecx, 2
mov     eax, ds:dword_77E6D8

loc_47EE66:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_47EE6C:
movsx   ecx, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_77E5E4, eax

loc_47EE7E:
pop     edx
pop     ecx
pop     ebx
retn
sub_47EDA7 endp




sub_47EE82 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, 2E0h
jmp     short loc_47EEA1

loc_47EE8D:
mov     eax, edx
call    sub_47EA91

loc_47EE94:
inc     edx
cmp     edx, 2EBh
ja      loc_47EC16

loc_47EEA1:
cmp     ecx, edx
jnz     short loc_47EE8D
mov     eax, edx
call    sub_47E8B8
jmp     short loc_47EE94
sub_47EE82 endp




sub_47EEAE proc near
push    edx
push    edi
cwde
mov     ax, ds:word_519850[eax*2]
mov     dx, word ptr ds:unk_77E7E4
add     edx, eax
mov     word ptr ds:unk_77E7E4, dx
test    dx, dx
jge     short loc_47EED9
xor     edi, edi
mov     word ptr ds:unk_77E7E4, di
jmp     short loc_47EEE9

loc_47EED9:
cmp     dx, 0FFh
jle     short loc_47EEE9
mov     word ptr ds:unk_77E7E4, 0FFh

loc_47EEE9:
call    sub_4377CA
pop     edi
pop     edx
retn
sub_47EEAE endp




sub_47EEF1 proc near
push    ecx
mov     ecx, edx
lea     edx, [eax+7C0h]
add     eax, 7E0h
test    ecx, ecx
jz      short loc_47EF15
call    sub_47E8B8
test    ebx, ebx
jz      short loc_47EF1A
mov     eax, edx
call    sub_47E8B8
pop     ecx
retn

loc_47EF15:
call    sub_47EA91

loc_47EF1A:
mov     eax, edx
call    sub_47EA91
pop     ecx
retn
sub_47EEF1 endp




sub_47EF23 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     ecx, edx
xor     edi, edi
jmp     short loc_47EF37

loc_47EF2F:
inc     edi
inc     ecx
inc     esi
cmp     edi, 8
jge     short loc_47EF5F

loc_47EF37:
cmp     byte ptr [esi], 0
jz      short loc_47EF5F
mov     dl, [ecx]
cmp     dl, 0FFh
jz      short loc_47EF2F
xor     eax, eax
mov     al, dl
mov     ebx, eax
sar     ebx, 1
and     ebx, 1
and     al, 1
xor     edx, edx
mov     dl, al
xor     eax, eax
mov     al, [esi]
call    sub_47EEF1
jmp     short loc_47EF2F

loc_47EF5F:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_47EF23 endp




sub_47EF64 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_47EF6A[edx*4]
pop     edx
retn
sub_47EF64 endp




sub_47EF73 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     esi, offset dword_77EA48
mov     al, [eax+5]
test    al, al
jbe     short loc_47EF93
cmp     al, 1
jz      short loc_47EFAC
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47EF93:
or      ds:byte_5F836A, 3
mov     edx, 80h
mov     eax, 8
call    sub_4DC979
inc     byte ptr [ecx+5]

loc_47EFAC:
mov     eax, ebx
call    sub_4B55D5
test    eax, eax
jz      short loc_47EFE6
mov     ebx, [esi+0Eh]
sar     ebx, 10h
sar     ebx, 0Ah
shl     ebx, 2
mov     eax, ds:off_519AE8[ebx]
mov     ds:dword_77E6B4, eax
mov     dword ptr [ecx+0A4h], offset unk_519B08
mov     dword ptr [ecx+0Ch], 0
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

loc_47EFE6:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47EF73 endp

align 4
jpt_47F039 dd offset loc_47F040 ; jump table for switch statement
dd offset loc_47F11D
dd offset loc_47F131
dd offset loc_47F155
dd offset loc_47F161
dd offset loc_47F16D
dd offset loc_47F19D
dd offset loc_47F1B4
dd offset loc_47F1D2
dd offset loc_47F11D
dd offset loc_47F2D0
dd offset loc_47F155
dd offset loc_47F161
dd offset loc_47F2E9



sub_47F024 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 0Dh         ; switch 14 cases
ja      def_47F039      ; jumptable 0047F039 default case
xor     edx, edx
mov     dl, al
jmp     jpt_47F039[edx*4] ; switch jump

loc_47F040:             ; jumptable 0047F039 case 0
mov     ebx, ds:dword_77EA48+2
sar     ebx, 10h
mov     edx, ds:dword_77EA48
sar     edx, 10h
mov     eax, ds:dword_77EA44+2
sar     eax, 10h
call    sub_49D881
mov     byte ptr ds:dword_5F836C, 3
mov     bl, 1
mov     byte ptr ds:dword_5F836C+1, bl
mov     eax, ds:dword_77EA56
sar     eax, 10h
call    sub_4EF008
shl     eax, 6
sar     eax, 0Ch
mov     edx, ds:dword_77EA44+2
sar     edx, 10h
add     eax, edx
mov     word ptr ds:dword_5F889A+2, ax
mov     ax, word ptr ds:dword_5F837A
mov     word ptr ds:dword_5F889E, ax
mov     eax, ds:dword_77EA56
sar     eax, 10h
call    sub_4EF003
shl     eax, 6
sar     eax, 0Ch
mov     edx, ds:dword_77EA48+2
sar     edx, 10h
add     eax, edx
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
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     ax, word ptr ds:dword_77EA56+2
mov     word ptr ds:dword_5F88A4+2, ax
mov     ds:word_5F88A8, si
mov     ds:byte_5F88AC, 30h ; '0'
add     [ecx+5], bl
jmp     def_47F039      ; jumptable 0047F039 default case

loc_47F11D:             ; jumptable 0047F039 cases 1,9
inc     al
mov     [ecx+5], al
mov     eax, 7B1h
call    sub_47E8B8
jmp     def_47F039      ; jumptable 0047F039 default case

loc_47F131:             ; jumptable 0047F039 case 2
mov     eax, 7B2h
call    sub_47E888
test    eax, eax
jnz     def_47F039      ; jumptable 0047F039 default case
inc     byte ptr ds:dword_5F836C+1
mov     byte ptr [ecx+0Ah], 0

loc_47F14D:
inc     byte ptr [ecx+5]
jmp     def_47F039      ; jumptable 0047F039 default case

loc_47F155:             ; jumptable 0047F039 cases 3,11
mov     eax, ecx
call    sub_47F364
jmp     def_47F039      ; jumptable 0047F039 default case

loc_47F161:             ; jumptable 0047F039 cases 4,12
mov     eax, 7B1h
call    sub_47EA91
jmp     short loc_47F14D

loc_47F16D:             ; jumptable 0047F039 case 5
mov     eax, 7B2h
call    sub_47E888
test    eax, eax
jnz     def_47F039      ; jumptable 0047F039 default case
mov     dl, 1
mov     byte ptr ds:dword_77EA5A+2, dl
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 2
add     [ecx+5], dl
jmp     def_47F039      ; jumptable 0047F039 default case

loc_47F19D:             ; jumptable 0047F039 case 6
cmp     byte ptr ds:dword_77EA5A+2, 2
jnz     def_47F039      ; jumptable 0047F039 default case
inc     al
mov     [ecx+5], al
jmp     def_47F039      ; jumptable 0047F039 default case

loc_47F1B4:             ; jumptable 0047F039 case 7
mov     eax, 7B2h
call    sub_47E888
test    eax, eax
jnz     def_47F039      ; jumptable 0047F039 default case
mov     byte ptr ds:dword_77EA5A+2, 3
jmp     loc_47F14D

loc_47F1D2:             ; jumptable 0047F039 case 8
cmp     byte ptr ds:dword_77EA5A+2, 0
jnz     def_47F039      ; jumptable 0047F039 default case
mov     eax, ds:dword_77EA56+2
sar     eax, 10h
sar     eax, 0Ah
mov     eax, ds:off_519AF8[eax*4]
mov     ds:dword_77E6B4, eax
mov     ebx, ds:dword_77EA52
sar     ebx, 10h
mov     edx, ds:dword_77EA4E+2
sar     edx, 10h
mov     eax, ds:dword_77EA4E
sar     eax, 10h
call    sub_49D881
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
mov     eax, ds:dword_77EA56+2
sar     eax, 10h
call    sub_4EF008
shl     eax, 6
sar     eax, 0Ch
mov     edx, ds:dword_77EA4E
sar     edx, 10h
add     eax, edx
mov     word ptr ds:dword_5F889A+2, ax
mov     ax, word ptr ds:dword_77EA52
dec     eax
mov     word ptr ds:dword_5F889E, ax
mov     eax, ds:dword_77EA56+2
sar     eax, 10h
call    sub_4EF003
shl     eax, 6
sar     eax, 0Ch
mov     edx, ds:dword_77EA52
sar     edx, 10h
add     eax, edx
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
mov     ax, word ptr ds:dword_77EA5A
mov     word ptr ds:dword_5F88A4+2, ax
mov     ds:word_5F88A8, dx
mov     ds:byte_5F88AC, 30h ; '0'
jmp     loc_47F14D

loc_47F2D0:             ; jumptable 0047F039 case 10
mov     eax, 7B2h
call    sub_47E888
test    eax, eax
jnz     short def_47F039 ; jumptable 0047F039 default case
inc     byte ptr ds:dword_5F836C+1
jmp     loc_47F14D

loc_47F2E9:             ; jumptable 0047F039 case 13
mov     eax, 7B2h
call    sub_47E888
test    eax, eax
jnz     short def_47F039 ; jumptable 0047F039 default case
mov     eax, 7B0h
call    sub_47EA91
mov     eax, 7B3h
call    sub_47E8B8
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

def_47F039:             ; jumptable 0047F039 default case
call    sub_49DBD1
call    sub_49DECF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47F024 endp




sub_47F321 proc near
push    ecx
push    edx
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4B565A
xor     ecx, ecx
mov     ds:dword_5F836C, ecx
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, 7B3h
call    sub_47EA91
mov     byte ptr [edx], 0
pop     edx
pop     ecx
retn
sub_47F321 endp

align 4
jpt_47F388 dd offset loc_47F38F ; jump table for switch statement
dd offset loc_47F3AB
dd offset loc_47F3EC
dd offset loc_47F3F6



sub_47F364 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, offset byte_5F8364
xor     ebx, ebx
mov     ds:word_57096A, bx
mov     cl, [eax+0Ah]
cmp     cl, 3           ; switch 4 cases
ja      def_47F388      ; jumptable 0047F388 default case
and     ecx, 0FFh
jmp     jpt_47F388[ecx*4] ; switch jump

loc_47F38F:             ; jumptable 0047F388 case 0
mov     ecx, ds:dword_77E7D0+1
sar     ecx, 18h
mov     cl, ds:byte_519B18[ecx]
mov     [eax+0Bh], cl
or      ds:byte_5F8421, 20h
inc     byte ptr [eax+0Ah]

loc_47F3AB:             ; jumptable 0047F388 case 1
mov     cx, [edx+124h]
mov     ds:word_57096A, cx
cmp     dword ptr [eax+10h], 24h ; '$'
jle     short def_47F388 ; jumptable 0047F388 default case
inc     byte ptr [eax+5]
inc     byte ptr [eax+0Ah]
mov     al, [edx+0BDh]
and     al, 9Fh
mov     [edx+0BDh], al
mov     ah, al
or      ah, 40h
mov     [edx+0BDh], ah
xor     esi, esi
mov     ds:word_57096A, si
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47F3EC:             ; jumptable 0047F388 case 2
or      ds:byte_5F8421, 20h
inc     byte ptr [eax+0Ah]

loc_47F3F6:             ; jumptable 0047F388 case 3
mov     cx, [edx+124h]
mov     ds:word_57096A, cx
xor     ecx, ecx
mov     cl, [eax+0Bh]
cmp     ecx, [eax+10h]
jge     short def_47F388 ; jumptable 0047F388 default case
inc     byte ptr [eax+5]
inc     byte ptr [eax+0Ah]
mov     al, [edx+0BDh]
and     al, 9Fh
mov     [edx+0BDh], al
mov     ah, al
or      ah, 40h
mov     [edx+0BDh], ah
xor     ecx, ecx
mov     ds:word_57096A, cx

def_47F388:             ; jumptable 0047F388 default case
pop     esi
pop     edx
pop     ecx
pop     ebx

locret_47F43A:
retn
sub_47F364 endp




sub_47F43B proc near

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
sub_47F43B endp




sub_47F4CF proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F50E
mov     ds:byte_55A2DD, 1
mov     dh, 40h ; '@'
mov     ds:byte_55A2DC, dh
mov     ds:byte_55A2DE, dh
mov     ds:byte_55A2E0, dh
mov     ds:byte_55A2DF, 2
mov     edx, [eax+24h]
mov     word ptr [edx+15Eh], 4210h
mov     edx, [eax+30h]
mov     dword ptr [edx+50h], offset unk_808080

loc_47F50E:
cmp     dword ptr [eax+10h], 1A9h
jnz     short loc_47F525
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 6
mov     edx, [eax+24h]
mov     byte ptr [edx+0Ah], 0

loc_47F525:
cmp     dword ptr [eax+10h], 1D1h
jnz     short loc_47F53C
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 2
mov     eax, [eax+30h]
mov     byte ptr [eax+0Ah], 0

loc_47F53C:
pop     edx
retn
sub_47F4CF endp




sub_47F53E proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F58F
xor     dl, dl
mov     ds:byte_55A2DD, dl
mov     edx, [eax+24h]
mov     dword ptr [edx+1Ch], 0
mov     edx, [eax+24h]
mov     word ptr [edx+56h], 800h
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 1
mov     edx, [eax+24h]
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
mov     word ptr [edx+48h], 0
mov     eax, [eax+30h]
mov     dword ptr [eax+50h], offset unk_808080

loc_47F58F:
pop     edx
retn
sub_47F53E endp




sub_47F591 proc near
push    edx
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_47F5A6
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 2
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47F5A6:
pop     edx

locret_47F5A7:
retn
sub_47F591 endp




sub_47F5A8 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F5BD
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47F5BD:
pop     edx
retn
sub_47F5A8 endp




sub_47F5BF proc near
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+24h]
mov     ecx, [edx+10h]
test    ecx, ecx
jnz     short loc_47F5E6
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     [eax+1Ch], ecx
mov     dword ptr [eax+20h], 0FEF00000h
mov     dword ptr [eax+24h], 0D590000h

loc_47F5E6:
cmp     dword ptr [edx+10h], 14h
jnz     short loc_47F5F6
mov     byte ptr [eax+0Ah], 0
mov     dl, [eax+0Ah]
mov     [eax+9], dl

loc_47F5F6:
pop     edx
pop     ecx
retn
sub_47F5BF endp




sub_47F5F9 proc near
push    edx
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_47F60E
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 3
mov     edx, [eax+24h]
mov     byte ptr [edx+0Ah], 0

loc_47F60E:
cmp     dword ptr [eax+10h], 60h ; '`'
jnz     short loc_47F642
call    sub_4DE13B
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 2
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     word ptr [eax+1Ch], 10h
mov     word ptr [eax+1Eh], 0FE6Ch
mov     word ptr [eax+20h], 0DF0h

loc_47F642:
pop     edx
retn
sub_47F5F9 endp




sub_47F644 proc near
push    edx
mov     edx, [eax+24h]
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F656
mov     byte ptr [edx+9], 4
mov     byte ptr [edx+0Ah], 0

loc_47F656:
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short loc_47F663
mov     ds:byte_56FA77, 1

loc_47F663:
cmp     dword ptr [eax+10h], 0D2h
jnz     short loc_47F674
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0

loc_47F674:
cmp     dword ptr [eax+10h], 136h
jnz     short loc_47F685
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0

loc_47F685:
cmp     dword ptr [eax+10h], 172h
jnz     short loc_47F695
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 1

loc_47F695:
pop     edx
retn
sub_47F644 endp




sub_47F697 proc near
push    edx
mov     edx, eax
mov     eax, [eax+24h]
cmp     dword ptr [edx+10h], 32h ; '2'
jnz     short loc_47F6B0
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0
add     word ptr [eax+22h], 50h ; 'P'

loc_47F6B0:
pop     edx
retn
sub_47F697 endp




sub_47F6B2 proc near
push    edx
mov     edx, [eax+2Ch]
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_47F6C4
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_47F6C4:
pop     edx
retn
sub_47F6B2 endp




sub_47F6C6 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F717
call    sub_4DE1BE
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 3
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+5], 0
call    sub_4DE1BE
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 3
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+5], 0
call    sub_4DE1BE
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 4
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+5], 0

loc_47F717:
cmp     dword ptr [edx+10h], 1Ah
jnz     short loc_47F72B
mov     eax, [edx+44h]
mov     byte ptr [eax+9], 1
mov     eax, [edx+44h]
mov     byte ptr [eax+0Ah], 0

loc_47F72B:
cmp     dword ptr [edx+10h], 21h ; '!'
jnz     short loc_47F73F
mov     eax, [edx+48h]
mov     byte ptr [eax+9], 1
mov     eax, [edx+48h]
mov     byte ptr [eax+0Ah], 0

loc_47F73F:
cmp     dword ptr [edx+10h], 28h ; '('
jnz     short loc_47F753
mov     eax, [edx+40h]
mov     byte ptr [eax+9], 1
mov     eax, [edx+40h]
mov     byte ptr [eax+0Ah], 0

loc_47F753:
cmp     dword ptr [edx+10h], 31h ; '1'
jnz     short loc_47F76E
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 9
mov     eax, [edx+24h]
mov     byte ptr [eax+0Ah], 0
mov     ds:byte_55A2E1, 1

loc_47F76E:
pop     edx
retn
sub_47F6C6 endp




sub_47F770 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F78B
mov     edx, [eax+2Ch]
and     byte ptr [edx], 0FDh
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0Ah
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47F78B:
pop     edx
retn
sub_47F770 endp




sub_47F78D proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F7B3
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0Bh
mov     byte ptr [edx+0Ah], 0
mov     dword ptr [edx+1Ch], 0
mov     dword ptr [edx+20h], 0
mov     word ptr [edx+56h], 0

loc_47F7B3:
cmp     dword ptr [eax+10h], 1
jnz     short loc_47F7C7
mov     edx, [eax+34h]
mov     byte ptr [edx+9], 1
mov     edx, [eax+34h]
mov     byte ptr [edx+0Ah], 0

loc_47F7C7:
cmp     dword ptr [eax+10h], 0Dh
jnz     short loc_47F7DB
mov     edx, [eax+38h]
mov     byte ptr [edx+9], 1
mov     edx, [eax+38h]
mov     byte ptr [edx+0Ah], 0

loc_47F7DB:
cmp     dword ptr [eax+10h], 19h
jnz     short loc_47F7EF
mov     edx, [eax+3Ch]
mov     byte ptr [edx+9], 1
mov     edx, [eax+3Ch]
mov     byte ptr [edx+0Ah], 0

loc_47F7EF:
cmp     dword ptr [eax+10h], 44h ; 'D'
jnz     short loc_47F803
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 3
mov     eax, [eax+30h]
mov     byte ptr [eax+0Ah], 0

loc_47F803:
pop     edx
retn
sub_47F78D endp

push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F81A
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 3
mov     eax, [eax+30h]
mov     byte ptr [eax+0Ah], 0

loc_47F81A:
pop     edx
retn



sub_47F81C proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_47F833
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 0Ch
mov     byte ptr [eax+0Ah], 0
add     word ptr [eax+26h], 0C8h

locret_47F833:
retn
sub_47F81C endp




sub_47F834 proc near
push    ecx
push    edx
cmp     dword ptr [eax+10h], 6
jnz     short loc_47F844
xor     dl, dl
mov     ds:byte_55A2E1, dl

loc_47F844:
cmp     dword ptr [eax+10h], 1Eh
jg      loc_47F8F5
mov     ecx, [eax+24h]
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_47F8A3
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
call    rand_
xor     ah, ah
and     al, 3Fh
add     ax, [ecx+14h]
sub     eax, 1Fh
mov     [edx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 1Fh
add     ax, [ecx+16h]
sub     eax, 0Fh
mov     [edx+1Eh], ax
call    rand_
xor     ah, ah
and     al, 3Fh
add     ax, [ecx+18h]
sub     eax, 1Fh
mov     [edx+20h], ax

loc_47F8A3:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_47F8F5
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
call    rand_
xor     ah, ah
and     al, 3Fh
add     ax, [ecx+14h]
sub     eax, 1Fh
mov     [edx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 1Fh
add     ax, [ecx+16h]
sub     eax, 0Fh
mov     [edx+1Eh], ax
call    rand_
xor     ah, ah
and     al, 3Fh
add     ax, [ecx+18h]
sub     eax, 1Fh
mov     [edx+20h], ax

loc_47F8F5:
pop     edx
pop     ecx
retn
sub_47F834 endp




sub_47F8F8 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F90D
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47F90D:
pop     edx
retn
sub_47F8F8 endp




sub_47F90F proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F924
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0Bh
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47F924:
pop     edx
retn
sub_47F90F endp




sub_47F926 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_519C78
xor     ecx, ecx
jmp     short loc_47F94B

loc_47F945:
inc     ecx
cmp     ecx, 10h
jge     short loc_47F97C

loc_47F94B:
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_519B38
call    sub_49DB4D
mov     ebx, eax
test    ecx, ecx
jz      short loc_47F945
lea     edx, [ecx-1]
add     edx, offset unk_51A0A4
call    sub_4DD0F8
mov     dword ptr [ebx+50h], offset unk_808080
jmp     short loc_47F945

loc_47F97C:
mov     eax, [esi+28h]
mov     dword ptr [eax+50h], offset unk_808080
mov     eax, [esi+60h]
mov     dword ptr [eax+50h], 2808080h
mov     eax, [esi+30h]
mov     dword ptr [eax+50h], 0
call    sub_4DE13B
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 2
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     word ptr [eax+1Ch], 0
mov     word ptr [eax+1Eh], 0FE6Ch
mov     word ptr [eax+20h], 0E00h
mov     [esi+64h], eax
xor     ah, ah
mov     ds:byte_55A2DD, ah
mov     dword ptr [esi+0A4h], offset unk_51A014
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47F926 endp




sub_47F9E2 proc near
push    edx
mov     dl, ds:byte_55A2E1
cmp     dl, 1
jnz     short loc_47FA0B
test    byte ptr ds:word_77EAB6, 2
jz      short loc_47FA01
add     ds:word_77E60A, 2
jmp     short loc_47FA0B

loc_47FA01:
sub     dword ptr ds:unk_77E608, 20000h

loc_47FA0B:
cmp     byte ptr [eax+8], 0FFh
jz      short loc_47FA1A
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_47FA1A:
pop     edx
retn
sub_47F9E2 endp

db 8Dh, 40h, 0
jpt_47FA53 dd offset loc_47FA5A ; jump table for switch statement
dd offset loc_47FA71
dd offset loc_47FA91
dd offset loc_47FAA2
dd offset loc_47FABD
dd offset loc_47FADB
dd offset loc_47FAE4
dd offset loc_47FB33



sub_47FA3F proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 7           ; switch 8 cases
ja      def_47FA53      ; jumptable 0047FA53 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_47FA53[ecx*4] ; switch jump

loc_47FA5A:             ; jumptable 0047FA53 case 0
cmp     ds:word_6E23D6, 0
jnz     def_47FA53      ; jumptable 0047FA53 default case
inc     al
mov     [edx+4], al
pop     edx
pop     ecx
pop     ebx
retn

loc_47FA71:             ; jumptable 0047FA53 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_47FA53      ; jumptable 0047FA53 default case
and     ds:byte_5F8364, 0FCh

loc_47FA8A:
inc     byte ptr [edx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_47FA91:             ; jumptable 0047FA53 case 2
call    sub_4D8E21
mov     eax, 240003h
call    sub_4D8E42
jmp     short loc_47FA8A

loc_47FAA2:             ; jumptable 0047FA53 case 3
call    sub_4D8ECC
test    eax, eax
jz      def_47FA53      ; jumptable 0047FA53 default case
inc     byte ptr [edx+4]
mov     dword ptr [edx+0Ch], 37h ; '7'
pop     edx
pop     ecx
pop     ebx
retn

loc_47FABD:             ; jumptable 0047FA53 case 4
mov     ebx, [edx+0Ch]
dec     ebx
mov     [edx+0Ch], ebx
jnz     def_47FA53      ; jumptable 0047FA53 default case
inc     byte ptr [edx+4]
mov     eax, 2
call    sub_49E0D7
pop     edx
pop     ecx
pop     ebx
retn

loc_47FADB:             ; jumptable 0047FA53 case 5
mov     eax, edx
call    sub_47F926
jmp     short loc_47FA8A

loc_47FAE4:             ; jumptable 0047FA53 case 6
mov     eax, edx
call    sub_47F9E2
call    sub_49DBD1
call    sub_49DECF
cmp     ds:word_6E23D6, 0
jnz     short loc_47FB21
cmp     byte ptr [edx+9], 13h
jnz     short loc_47FB0B
cmp     dword ptr [edx+10h], 2Ch ; ','
jz      short loc_47FB14

loc_47FB0B:
call    sub_47EBCB
test    eax, eax
jz      short loc_47FB21

loc_47FB14:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]

loc_47FB21:
cmp     ds:byte_55A2DD, 0
jz      def_47FA53      ; jumptable 0047FA53 default case
jmp     loc_47FBC6

loc_47FB33:             ; jumptable 0047FA53 case 7
mov     eax, edx
call    sub_47F9E2
call    sub_49DBD1
call    sub_49DECF
cmp     ds:word_6E23D6, 0
jnz     short loc_47FBBD
mov     byte ptr ds:dword_77EA5A+2, 2
xor     bl, bl
mov     ds:byte_77EA5E, bl
mov     bh, 1
mov     ds:byte_77EA5F, bh
mov     word ptr ds:dword_77EA4E+2, 0B06h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0ED1Fh
xor     eax, eax
mov     word ptr ds:dword_77EA5A, ax
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
mov     eax, 604h
call    sub_47EA91
or      ds:byte_5F8364, bh
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     [edx], bl
call    sub_4D8EB1

loc_47FBBD:
cmp     ds:byte_55A2DD, 0
jz      short def_47FA53 ; jumptable 0047FA53 default case

loc_47FBC6:
xor     ecx, ecx
mov     cl, ds:byte_55A2DF
xor     ebx, ebx
mov     bl, ds:byte_55A2DC
xor     edx, edx
mov     dl, ds:byte_55A2DE
xor     eax, eax
mov     al, ds:byte_55A2E0
call    sub_47F43B

def_47FA53:             ; jumptable 0047FA53 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47FA3F endp




sub_47FBEE proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+24h]
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FC03
mov     word ptr [edx+15Eh], 2108h

loc_47FC03:
cmp     dword ptr [eax+10h], 14Ah
jnz     short loc_47FC1C
mov     ecx, [eax+30h]
mov     byte ptr [ecx+0Ch], 1
mov     bl, [ecx+0Ch]
mov     ecx, [eax+2Ch]
mov     [ecx+0Ch], bl

loc_47FC1C:
cmp     dword ptr [eax+10h], 1AEh
jnz     short loc_47FC2D
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_47FC2D:
cmp     dword ptr [eax+10h], 1B8h
jnz     short loc_47FC3A
mov     byte ptr [edx+0Bh], 1

loc_47FC3A:
cmp     dword ptr [eax+10h], 1EFh
jnz     short loc_47FC53
mov     ecx, [eax+30h]
mov     byte ptr [ecx+0Ch], 2
mov     bl, [ecx+0Ch]
mov     ecx, [eax+2Ch]
mov     [ecx+0Ch], bl

loc_47FC53:
cmp     dword ptr [eax+10h], 219h
jnz     short loc_47FC64
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_47FC64:
pop     edx
pop     ecx
pop     ebx
retn
sub_47FBEE endp




sub_47FC68 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FC83
mov     edx, [eax+28h]
or      byte ptr [edx], 2
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 3
mov     edx, [eax+24h]
mov     byte ptr [edx+0Ah], 0

loc_47FC83:
cmp     dword ptr [eax+10h], 82h
jnz     short loc_47FC9C
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 1
mov     dl, [edx+0Ch]
mov     eax, [eax+2Ch]
mov     [eax+0Ch], dl

loc_47FC9C:
pop     edx
retn
sub_47FC68 endp




sub_47FC9E proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FCB3
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 4
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47FCB3:
pop     edx
retn
sub_47FC9E endp




sub_47FCB5 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FCCA
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 5
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47FCCA:
pop     edx
retn
sub_47FCB5 endp




sub_47FCCC proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_47FCF3
mov     eax, [eax+28h]
mov     dword ptr [eax+1Ch], 1F40000h
mov     dword ptr [eax+20h], 0E3FF0000h
mov     dword ptr [eax+24h], 1800000h
mov     word ptr [eax+15Eh], 4210h

locret_47FCF3:
retn
sub_47FCCC endp




sub_47FCF4 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_47FD28
call    sub_4DE13B
test    eax, eax
jz      short locret_47FD28
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+0Ch], 5
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 2
mov     word ptr [eax+1Ch], 1F4h
mov     word ptr [eax+1Eh], 0E2B0h
mov     word ptr [eax+20h], 0ECh

locret_47FD28:
retn
sub_47FCF4 endp




sub_47FD29 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FD3E
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 6
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47FD3E:
pop     edx
retn
sub_47FD29 endp




sub_47FD40 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FD58
mov     edx, [eax+24h]
mov     word ptr [edx+56h], 800h
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0

loc_47FD58:
cmp     dword ptr [eax+10h], 2Dh ; '-'
jnz     short loc_47FD69
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_47FD69:
pop     edx

locret_47FD6A:
retn
sub_47FD40 endp




sub_47FD6B proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FD91
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+24h], 0FC200000h
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0

loc_47FD91:
pop     edx

locret_47FD92:
retn
sub_47FD6B endp




sub_47FD93 proc near
push    edx
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_47FDA8
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 9
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47FDA8:
pop     edx
retn
sub_47FD93 endp




sub_47FDAA proc near
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+28h]
mov     ecx, [edx+10h]
test    ecx, ecx
jnz     short loc_47FDC3
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     [eax+24h], ecx

loc_47FDC3:
cmp     dword ptr [edx+10h], 3Ch ; '<'
jnz     short loc_47FDD1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0

loc_47FDD1:
pop     edx
pop     ecx
retn
sub_47FDAA endp




sub_47FDD4 proc near

var_10= word ptr -10h
var_E= word ptr -0Eh
var_C= word ptr -0Ch

push    ebx
push    edx
sub     esp, 8
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FE29
mov     [esp+10h+var_10], 260h
mov     [esp+10h+var_E], 0E290h
mov     [esp+10h+var_C], 0FF10h
mov     ebx, 50h ; 'P'
mov     edx, 250h
mov     eax, esp
call    sub_43AB52
mov     [esp+10h+var_10], 1D0h
mov     [esp+10h+var_E], 0E290h
mov     [esp+10h+var_C], 0FF50h
mov     ebx, 8E0h
mov     edx, 250h
mov     eax, esp
call    sub_43AB52

loc_47FE29:
add     esp, 8
pop     edx
pop     ebx
retn
sub_47FDD4 endp




sub_47FE2F proc near
push    edx
mov     edx, eax
mov     eax, [eax+24h]
cmp     dword ptr [edx+10h], 0
jnz     short loc_47FE4A
mov     dword ptr [eax+24h], 0FC380000h
mov     byte ptr [eax+9], 0Ah
mov     byte ptr [eax+0Ah], 0

loc_47FE4A:
pop     edx

locret_47FE4B:
retn
sub_47FE2F endp




sub_47FE4C proc near
push    edx
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_47FE6E
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0Bh
mov     edx, [eax+24h]
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+34h]
or      byte ptr [edx], 2
mov     eax, [eax+34h]
mov     byte ptr [eax+9], 1

loc_47FE6E:
pop     edx
retn
sub_47FE4C endp




sub_47FE70 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_47FE80
mov     eax, [eax+28h]
mov     dword ptr [eax+24h], 0FE400000h

locret_47FE80:
retn
sub_47FE70 endp




sub_47FE81 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FE96
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 2
mov     eax, [eax+28h]
mov     byte ptr [eax+0Ah], 0

loc_47FE96:
pop     edx

locret_47FE97:
retn
sub_47FE81 endp




sub_47FE98 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FEB4
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0
mov     edx, [eax+28h]
mov     byte ptr [edx+0Ah], 0
mov     eax, [eax+34h]
mov     byte ptr [eax+0Ah], 2

loc_47FEB4:
pop     edx

locret_47FEB5:
retn
sub_47FE98 endp




sub_47FEB6 proc near
push    ebx
push    edx
push    esi
mov     esi, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51A1E0
xor     edx, edx

loc_47FED2:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_51A0B4
call    sub_49DB4D
inc     edx
cmp     edx, 0Eh
jl      short loc_47FED2
mov     dword ptr [esi+0A4h], offset unk_51A778
pop     esi
pop     edx
pop     ebx
retn
sub_47FEB6 endp




sub_47FEFA proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_47FF0A
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_47FF0A:
pop     edx
retn
sub_47FEFA endp

db 8Bh, 0C0h
jpt_47FF44 dd offset loc_47FF4B ; jump table for switch statement
dd offset loc_47FF63
dd offset loc_47FF84
dd offset loc_47FF95
dd offset loc_47FFB1
dd offset loc_47FFCA
dd offset loc_47FFD3
dd offset loc_47FFF9



sub_47FF2E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     al, [eax+4]
cmp     al, 7           ; switch 8 cases
ja      def_47FF44      ; jumptable 0047FF44 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_47FF44[ecx*4] ; switch jump

loc_47FF4B:             ; jumptable 0047FF44 case 0
cmp     ds:word_6E23D6, 0
jnz     def_47FF44      ; jumptable 0047FF44 default case
inc     al
mov     [edx+4], al
jmp     def_47FF44      ; jumptable 0047FF44 default case

loc_47FF63:             ; jumptable 0047FF44 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_47FF44      ; jumptable 0047FF44 default case
and     ds:byte_5F8364, 0FCh

loc_47FF7C:
inc     byte ptr [edx+4]
jmp     def_47FF44      ; jumptable 0047FF44 default case

loc_47FF84:             ; jumptable 0047FF44 case 2
call    sub_4D8E21
mov     eax, 240002h
call    sub_4D8E42
jmp     short loc_47FF7C

loc_47FF95:             ; jumptable 0047FF44 case 3
call    sub_4D8ECC
test    eax, eax
jz      def_47FF44      ; jumptable 0047FF44 default case
inc     byte ptr [edx+4]
mov     dword ptr [edx+0Ch], 1Eh
jmp     def_47FF44      ; jumptable 0047FF44 default case

loc_47FFB1:             ; jumptable 0047FF44 case 4
mov     ecx, [edx+0Ch]
dec     ecx
mov     [edx+0Ch], ecx
jnz     def_47FF44      ; jumptable 0047FF44 default case
mov     eax, 2
call    sub_49E0D7
jmp     short loc_47FF7C

loc_47FFCA:             ; jumptable 0047FF44 case 5
mov     eax, edx
call    sub_47FEB6
jmp     short loc_47FF7C

loc_47FFD3:             ; jumptable 0047FF44 case 6
cmp     ds:word_6E23D6, 0
jnz     short loc_47FFF9 ; jumptable 0047FF44 case 7
call    sub_47EBCB
test    eax, eax
jnz     short loc_47FFEC
cmp     byte ptr [edx+8], 0FFh
jnz     short loc_47FFF9 ; jumptable 0047FF44 case 7

loc_47FFEC:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]

loc_47FFF9:             ; jumptable 0047FF44 case 7
mov     eax, edx
call    sub_47FEFA

loc_480000:
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 7
jnz     short def_47FF44 ; jumptable 0047FF44 default case
cmp     ds:word_6E23D6, 0
jnz     short def_47FF44 ; jumptable 0047FF44 default case
mov     cl, 2
mov     byte ptr ds:dword_77EA5A+2, cl
mov     ds:byte_77EA5E, cl
xor     al, al
mov     ds:byte_77EA5F, al
xor     esi, esi
mov     word ptr ds:dword_77EA4E+2, si
xor     edi, edi
mov     word ptr ds:dword_77EA52, di
xor     ah, ah
mov     word ptr ds:dword_77EA52+2, ax
xor     ebx, ebx
mov     word ptr ds:dword_77EA5A, bx
mov     byte ptr ds:dword_77EA5A+3, al
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
mov     eax, 605h
call    sub_47EA91
mov     byte ptr [edx], 0
call    sub_4D8EB1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_47FF44:             ; jumptable 0047FF44 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47FF2E endp




sub_480087 proc near
push    edx
cmp     dword ptr [eax+10h], 0Fh
jnz     short loc_48009C
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     eax, [eax+28h]
mov     byte ptr [eax+0Ah], 0

loc_48009C:
pop     edx
retn
sub_480087 endp




sub_48009E proc near

var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     esi, eax
mov     eax, [eax+28h]
mov     di, [eax+14h]
mov     [esp+24h+var_18], edi
mov     di, [eax+16h]
mov     dx, [eax+18h]
mov     [esp+24h+var_1C], edx
cmp     dword ptr [esi+10h], 0
jnz     short loc_4800D0
mov     byte ptr [eax+9], 3
mov     eax, [esi+28h]
mov     byte ptr [eax+0Ah], 0

loc_4800D0:
cmp     dword ptr [esi+10h], 0E6h
jnz     short loc_480149
mov     eax, [esp+24h+var_18]
sub     eax, 40h ; '@'
mov     [esp+24h+var_24], ax
mov     eax, edi
sub     eax, 174h
mov     [esp+24h+var_22], ax
mov     eax, [esp+24h+var_1C]
add     eax, 58h ; 'X'
mov     [esp+24h+var_20], ax
push    0
push    0FFFFFFFEh
xor     ecx, ecx
mov     ebx, 1
mov     edx, ebx
lea     eax, [esp+2Ch+var_24]
call    sub_43954B
mov     ds:dword_55A2E4, eax
mov     [esp+24h+var_24], 0FEA2h
mov     [esp+24h+var_22], 0FDDAh
mov     [esp+24h+var_20], 0FC7Ch
push    0
push    0FFFFFFFEh
xor     ecx, ecx
mov     ebx, 1
mov     edx, ebx
lea     eax, [esp+2Ch+var_24]
call    sub_43954B
mov     ds:dword_55A2F4, eax

loc_480149:
cmp     dword ptr [esi+10h], 0F0h
jnz     short loc_480195
mov     eax, [esp+24h+var_18]
add     eax, 7Eh ; '~'
mov     [esp+24h+var_24], ax
mov     eax, edi
sub     eax, 180h
mov     [esp+24h+var_22], ax
mov     eax, [esp+24h+var_1C]
add     eax, 28h ; '('
mov     [esp+24h+var_20], ax
push    0
push    0FFFFFFFEh
xor     ecx, ecx
mov     ebx, 1
mov     edx, ebx
lea     eax, [esp+2Ch+var_24]
call    sub_43954B
mov     ds:dword_55A2E8, eax

loc_480195:
cmp     dword ptr [esi+10h], 0F5h
jnz     short loc_4801E1
mov     eax, [esp+24h+var_18]
add     eax, 38h ; '8'
mov     [esp+24h+var_24], ax
mov     eax, edi
sub     eax, 0E8h
mov     [esp+24h+var_22], ax
mov     eax, [esp+24h+var_1C]
add     eax, 78h ; 'x'
mov     [esp+24h+var_20], ax
push    0
push    0FFFFFFFEh
xor     ecx, ecx
mov     ebx, 1
mov     edx, ebx
lea     eax, [esp+2Ch+var_24]
call    sub_43954B
mov     ds:dword_55A2EC, eax

loc_4801E1:
cmp     dword ptr [esi+10h], 104h
jnz     short loc_480229
mov     eax, [esp+24h+var_18]
sub     eax, 28h ; '('
mov     [esp+24h+var_24], ax
sub     edi, 128h
mov     [esp+24h+var_22], di
mov     eax, [esp+24h+var_1C]
add     eax, 0C4h
mov     [esp+24h+var_20], ax
push    0
push    0FFFFFFFEh
xor     ecx, ecx
mov     ebx, 1
mov     edx, ebx
lea     eax, [esp+2Ch+var_24]
call    sub_43954B
mov     ds:dword_55A2F0, eax

loc_480229:
add     esp, 10h
sub_48009E endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4803B7

def_4803CE:             ; jumptable 004803CE default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx

locret_480231:
retn
; END OF FUNCTION CHUNK FOR sub_4803B7



sub_480232 proc near
cmp     dword ptr [eax+10h], 23h ; '#'
jnz     short locret_480242
mov     eax, [eax+28h]
mov     byte ptr [eax+128h], 0Ch

locret_480242:
retn
sub_480232 endp




sub_480243 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_480258
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 1
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_480258:
pop     edx

locret_480259:
retn
sub_480243 endp




sub_48025A proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4802B1
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0
mov     eax, [edx+28h]
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Ah], 0
mov     eax, ds:dword_55A2E4
call    sub_4DE3EA
mov     eax, ds:dword_55A2E8
call    sub_4DE3EA
mov     eax, ds:dword_55A2EC
call    sub_4DE3EA
mov     eax, ds:dword_55A2F0
call    sub_4DE3EA
mov     eax, ds:dword_55A2F4
call    sub_4DE3EA

loc_4802B1:
cmp     dword ptr [edx+10h], 3Ch ; '<'
jnz     short loc_4802E5
call    sub_4DE13B
test    eax, eax
jz      short loc_4802E5
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+0Ch], 5
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 2
mov     word ptr [eax+1Ch], 0FF00h
mov     word ptr [eax+1Eh], 0FD28h
mov     word ptr [eax+20h], 0FC90h

loc_4802E5:
pop     edx
retn
sub_48025A endp




sub_4802E7 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_480315
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 2
mov     edx, [eax+28h]
mov     byte ptr [edx+0Ah], 0
mov     eax, [eax+28h]
mov     byte ptr [eax+128h], 0Dh
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979

loc_480315:
pop     edx
retn
sub_4802E7 endp




sub_480317 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48032C
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_48032C:
pop     edx

locret_48032D:
retn
sub_480317 endp




sub_48032E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
and     ds:byte_5F8364, 0FCh
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51A868
mov     ds:byte_6E23E4, 2
mov     eax, offset unk_51A840
call    sub_49DB4D
mov     eax, offset unk_51A854
call    sub_49DB4D
mov     dword ptr [ecx+0A4h], offset unk_51AB70
mov     byte ptr [ecx+0Bh], 0
mov     al, [ecx+0Bh]
mov     [ecx+0Ah], al
mov     dword ptr [ecx+0Ch], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_48032E endp




sub_480389 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_480399
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_480399:
pop     edx
retn
sub_480389 endp

jpt_4803CE dd offset loc_4803D5 ; jump table for switch statement
dd offset loc_4803F4
dd offset loc_480405
dd offset loc_480421
dd offset loc_480430
dd offset loc_48043A
dd offset loc_480460



sub_4803B7 proc near

; FUNCTION CHUNK AT 0048022C SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     al, [eax+4]
cmp     al, 6           ; switch 7 cases
ja      def_4803CE      ; jumptable 004803CE default case
and     eax, 0FFh
jmp     jpt_4803CE[eax*4] ; switch jump

loc_4803D5:             ; jumptable 004803CE case 0
call    sub_436868
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4803CE      ; jumptable 004803CE default case

loc_4803EC:
inc     byte ptr [edx+4]
jmp     def_4803CE      ; jumptable 004803CE default case

loc_4803F4:             ; jumptable 004803CE case 1
call    sub_4D8E21
mov     eax, 240001h
call    sub_4D8E42
jmp     short loc_4803EC

loc_480405:             ; jumptable 004803CE case 2
call    sub_4D8ECC
test    eax, eax
jz      def_4803CE      ; jumptable 004803CE default case
inc     byte ptr [edx+4]
mov     dword ptr [edx+0Ch], 1Eh
jmp     def_4803CE      ; jumptable 004803CE default case

loc_480421:             ; jumptable 004803CE case 3
mov     ecx, [edx+0Ch]
dec     ecx
mov     [edx+0Ch], ecx
jnz     def_4803CE      ; jumptable 004803CE default case
jmp     short loc_4803EC

loc_480430:             ; jumptable 004803CE case 4
mov     eax, edx
call    sub_48032E
inc     byte ptr [edx+4]

loc_48043A:             ; jumptable 004803CE case 5
cmp     ds:word_6E23D6, 0
jnz     short loc_480460 ; jumptable 004803CE case 6
cmp     byte ptr [edx+8], 0FFh
jz      short loc_480453
call    sub_47EBCB
test    eax, eax
jz      short loc_480460 ; jumptable 004803CE case 6

loc_480453:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]

loc_480460:             ; jumptable 004803CE case 6
mov     eax, edx
call    sub_480389
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 6
jnz     def_4803CE      ; jumptable 004803CE default case
cmp     ds:word_6E23D6, 0
jnz     def_4803CE      ; jumptable 004803CE default case
call    sub_4369AD
mov     byte ptr ds:dword_77EA5A+2, 2
xor     al, al
mov     ds:byte_77EA5E, al
mov     ds:byte_77EA5F, 4
xor     esi, esi
mov     word ptr ds:dword_77EA4E+2, si
xor     edi, edi
mov     word ptr ds:dword_77EA52, di
xor     ah, ah
mov     word ptr ds:dword_77EA52+2, ax
xor     ebx, ebx
mov     word ptr ds:dword_77EA5A, bx
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, al
mov     bh, 0FFh
mov     ds:byte_77EA61, bh
mov     ds:byte_77EA60, bh
mov     eax, 606h
call    sub_47EA91
mov     [edx], bl
call    sub_4D8EB1
or      ds:byte_5F8364, 1
mov     eax, offset byte_5F8364
call    sub_4B565A
jmp     def_4803CE      ; jumptable 004803CE default case
sub_4803B7 endp




sub_480502 proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 2
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
sub_480502 endp




sub_48054E proc near

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
sub_48054E endp




sub_4805E2 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_480626
xor     ah, ah
mov     ds:byte_56F844, ah
xor     bl, bl
mov     ds:byte_56F80C, bl
mov     ds:byte_56F87C, 3
mov     cl, 60h ; '`'
mov     ds:byte_55A304, cl
mov     ds:byte_55A306, cl
mov     ds:byte_55A308, cl
mov     ah, 1
mov     ds:byte_55A305, ah
mov     ds:byte_55A307, ah

loc_480626:
cmp     dword ptr [edx+10h], 0BFh
jnz     short loc_480652
mov     eax, [edx+30h]
or      byte ptr [eax], 2
mov     dword ptr [eax+1Ch], 0
mov     dword ptr [eax+20h], 0
mov     dword ptr [eax+24h], 6500000h
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_480652:
cmp     dword ptr [edx+10h], 15Dh
jnz     short loc_480678
mov     eax, ds:dword_55A300
mov     byte ptr [eax+0Dh], 0
mov     eax, [edx+30h]
mov     word ptr [eax+15Eh], 1884h
xor     cl, cl
mov     ds:byte_55A305, cl

loc_480678:
pop     edx
pop     ecx
pop     ebx
retn
sub_4805E2 endp




sub_48067C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_4806F1
xor     ah, ah
mov     ds:byte_56F87C, ah
mov     bl, 3
mov     ds:byte_56F80C, bl
mov     ds:byte_56F844, bl
mov     ebx, 0F00000h
mov     ds:dword_56F814, ebx
mov     ds:dword_56F84C, ebx
mov     ds:dword_55A2F8, offset loc_500000
mov     ds:dword_55A2FC, 0FF060000h
mov     eax, [edx+30h]
mov     [eax+1Ch], ecx
mov     [eax+20h], ecx
mov     [eax+24h], ecx
mov     byte ptr [eax+9], 6
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+15Eh], 4210h
mov     eax, ds:dword_55A300
mov     byte ptr [eax+0Dh], 1
mov     ds:byte_55A305, 1

loc_4806F1:
cmp     dword ptr [edx+10h], 0B4h
jge     short loc_480768
sub     ds:dword_56F814, 15555h
sub     ds:dword_56F84C, 15555h
mov     esi, ds:dword_55A2FC
add     esi, 15555h
mov     ds:dword_55A2FC, esi
mov     eax, esi
shr     eax, 10h
mov     ebx, eax
mov     eax, ds:dword_55A300
mov     [eax+1Eh], bx
mov     edx, [edx+10h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, eax
shl     edx, 5
mov     ecx, 0B4h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     ds:byte_55A304, al
mov     ds:byte_55A306, al
mov     ds:byte_55A308, al
mov     ch, 1
mov     ds:byte_55A305, ch
mov     ds:byte_55A307, ch

loc_480768:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48067C endp




sub_48076D proc near
push    ebx
push    ecx
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4807D1
xor     dl, dl
mov     ds:byte_55A305, dl
mov     edx, ds:dword_55A300
mov     byte ptr [edx+0Dh], 0
xor     dh, dh
mov     ds:byte_56F844, dh
mov     ds:byte_56F80C, dh
mov     bh, 3
mov     ds:byte_56F994, bh
mov     ds:word_56F9B6, 80h
mov     ds:byte_56FA3C, bh
mov     ds:word_56FA5E, 100h
mov     ds:byte_56FA6C, 1
mov     eax, [eax+30h]
mov     ecx, 0FFFFFE0Ch
xor     ebx, ebx
mov     edx, 3E8h
call    sub_43A761

loc_4807D1:
pop     edx
pop     ecx
pop     ebx
retn
sub_48076D endp




sub_4807D5 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48084B
mov     eax, 1
call    sub_480502
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979
mov     eax, [ecx+24h]
or      byte ptr [eax], 2
mov     eax, [ecx+28h]
or      byte ptr [eax], 2
mov     eax, [ecx+2Ch]
or      byte ptr [eax], 2
mov     eax, [ecx+30h]
and     byte ptr [eax], 0FDh
mov     eax, [ecx+34h]
or      byte ptr [eax], 2
mov     ds:byte_56F80C, 3
xor     ecx, ecx
mov     ds:dword_56F84C, ecx
mov     ds:dword_56F814, ecx
mov     ds:word_56F82C, 0FFB0h
mov     ds:byte_56F844, 3
xor     ah, ah
mov     ds:byte_56F994, ah
xor     dl, dl
mov     ds:byte_56FA3C, dl

loc_48084B:
pop     edx
pop     ecx

locret_48084D:
retn
sub_4807D5 endp




sub_48084E proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_480874
mov     eax, [eax+24h]
mov     dword ptr [eax+24h], 0F7000000h
mov     dword ptr [eax+20h], 0FE8D0000h
mov     dword ptr [eax+24h], 0FFA80000h
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0

locret_480874:
retn
sub_48084E endp




sub_480875 proc near
push    edx
mov     edx, eax
mov     eax, [eax+24h]
cmp     dword ptr [edx+10h], 0
jnz     short loc_4808AF
mov     dword ptr [eax+1Ch], 0F6C10000h
mov     dword ptr [eax+20h], 0FF9F0000h
mov     dword ptr [eax+24h], 0FEA00000h
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+56h], 0
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0

loc_4808AF:
cmp     dword ptr [edx+10h], 6Ch ; 'l'
jnz     short loc_4808BD
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_4808BD:
pop     edx
retn
sub_480875 endp




sub_4808BF proc near
push    edx
mov     edx, [eax+24h]
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_4808D1
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0

loc_4808D1:
mov     edx, [eax+28h]
cmp     dword ptr [eax+10h], 0
jnz     short loc_4808E2
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0

loc_4808E2:
pop     edx
retn
sub_4808BF endp




sub_4808E4 proc near
push    edx
mov     edx, eax
mov     eax, [eax+28h]
cmp     dword ptr [edx+10h], 1Eh
jnz     short loc_4808F8
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0

loc_4808F8:
cmp     dword ptr [edx+10h], 0B4h
jnz     short loc_480909
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

loc_480909:
pop     edx
retn
sub_4808E4 endp

push    edx
mov     edx, [eax+24h]
cmp     dword ptr [eax+10h], 0
jnz     short loc_48091D
mov     byte ptr [edx+9], 4
mov     byte ptr [edx+0Ah], 0

loc_48091D:
pop     edx
retn



sub_48091F proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48094C
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 1
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
xor     ebx, ebx
mov     ds:word_56F82C, bx

loc_48094C:
cmp     dword ptr [edx+10h], 4Fh ; 'O'
jnz     short loc_480959
mov     eax, [edx+24h]
mov     byte ptr [eax+0Dh], 0

loc_480959:
pop     edx
pop     ebx
retn
sub_48091F endp




sub_48095C proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48096B
mov     ds:word_56F82C, 0FFB0h

locret_48096B:
retn
sub_48095C endp




sub_48096C proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_480986
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0
mov     ds:word_56F82C, 50h ; 'P'

locret_480986:
retn
sub_48096C endp




sub_480987 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_480A1D
xor     eax, eax
call    sub_480502
xor     ah, ah
mov     ds:byte_56F844, ah
xor     dl, dl
mov     ds:byte_56F80C, ah
mov     dh, 3
mov     ds:byte_56F994, dh
mov     ds:byte_56FA3C, dh
xor     ecx, ecx
mov     ds:dword_56FA40, ecx
mov     ds:dword_56FA44, ecx
xor     dh, dh
mov     ds:word_56FA5C, dx
mov     ds:word_56FA5E, 100h
mov     eax, [esi+24h]
and     byte ptr [eax], 0FDh
mov     eax, [esi+28h]
and     byte ptr [eax], 0FDh
mov     eax, [esi+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [esi+30h]
or      byte ptr [eax], 2
mov     eax, [esi+34h]
and     byte ptr [eax], 0FDh
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979
mov     eax, [esi+30h]
mov     ecx, 0FFFFFE0Ch
xor     ebx, ebx
mov     edx, 3E8h
call    sub_43A761

loc_480A1D:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 7
cmp     ax, 7
jnz     short loc_480A46
push    1
mov     eax, [esi+30h]
mov     ecx, 12Ch
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
call    sub_43A67E

loc_480A46:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_480987 endp




sub_480A4B proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 8
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_480FAD
mov     eax, 1
call    sub_480502
xor     ah, ah
mov     ds:byte_56FA3C, ah
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     edx, [edx+30h]
and     byte ptr [edx], 0FDh
mov     ds:byte_55A305, 1
mov     ch, 20h ; ' '
mov     ds:byte_55A304, ch
mov     ds:byte_55A306, ch
mov     ds:byte_55A308, ch
mov     ds:byte_55A307, 2
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979
mov     [esp+14h+var_14], 0F826h
mov     [esp+14h+var_12], 0FFE9h
mov     [esp+14h+var_10], 82Ah
push    1
push    0FFFFFFFDh
mov     ecx, 1Eh
xor     ebx, ebx
mov     edx, 18h
lea     eax, [esp+1Ch+var_14]
call    sub_43954B
mov     [esp+14h+var_14], 0F844h
mov     [esp+14h+var_12], 0FF9Ch
mov     [esp+14h+var_10], 88Eh
push    1
push    0FFFFFFFDh
mov     ecx, 1Eh
xor     ebx, ebx
mov     edx, 18h
lea     eax, [esp+1Ch+var_14]
call    sub_43954B
jmp     loc_480FAD

loc_480B0B:
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_480B7C
xor     eax, eax
call    sub_480502
xor     ah, ah
mov     ds:byte_55A305, ah
mov     eax, [esi+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [esi+30h]
or      byte ptr [eax], 2
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979
mov     ds:byte_56FA3C, 3
xor     ecx, ecx
mov     ds:dword_56FA40, ecx
mov     ds:dword_56FA44, ecx
xor     edx, edx
mov     ds:word_56FA5C, dx
mov     ds:word_56FA5E, 100h
mov     eax, [esi+30h]
mov     ecx, 0FFFFFE0Ch
xor     ebx, ebx
mov     edx, 3E8h
call    sub_43A761

loc_480B7C:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 7
cmp     ax, 7
jnz     short loc_480BA5
push    1
mov     eax, [esi+30h]
mov     ecx, 12Ch
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
call    sub_43A67E

loc_480BA5:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_480BAA:
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_480C21
mov     eax, 1
call    sub_480502
mov     ah, 3
mov     ds:byte_56F844, ah
mov     ds:byte_56F80C, ah
xor     dh, dh
mov     ds:byte_56FA3C, dh
mov     ds:byte_56F994, dh
mov     eax, [ecx+24h]
or      byte ptr [eax], 2
mov     dword ptr [eax+1Ch], 0F6500000h
mov     dword ptr [eax+20h], 0FF9F0000h
mov     dword ptr [eax+24h], 0FF700000h
mov     eax, [ecx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 6
mov     [eax+0Ah], dh
mov     byte ptr [eax+0Ch], 1
mov     eax, [ecx+30h]
and     byte ptr [eax], 0FDh
mov     eax, [ecx+34h]
or      byte ptr [eax], 2
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979

loc_480C21:
cmp     dword ptr [ecx+10h], 0C8h
jnz     short loc_480C31
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Ch], 0

loc_480C31:
pop     edx
pop     ecx
retn

loc_480C34:
cmp     dword ptr [eax+10h], 0
jnz     short locret_480C4B
mov     eax, [eax+24h]
mov     word ptr [eax+56h], 400h
mov     byte ptr [eax+9], 6
mov     byte ptr [eax+0Ah], 0

locret_480C4B:
retn

loc_480C4C:
cmp     dword ptr [eax+10h], 0
jnz     short locret_480C73
xor     ah, ah
mov     ds:byte_56F994, ah
mov     ds:byte_56F87C, ah
mov     ds:byte_56F844, ah
mov     ds:byte_56F80C, ah
mov     ds:byte_56F8B4, 3

locret_480C73:
retn

loc_480C74:
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_480CA6
mov     eax, [eax+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
xor     bh, bh
mov     ds:byte_56F8B4, bh
mov     cl, 3
mov     ds:byte_56F844, cl
mov     ds:byte_56F80C, cl

loc_480CA6:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 7
cmp     ax, 7
jnz     short loc_480CCF
push    1
mov     eax, [edx+30h]
mov     ecx, 12Ch
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
call    sub_43A67E

loc_480CCF:
pop     edx
pop     ecx
pop     ebx

locret_480CD2:
retn

loc_480CD3:
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_480D44
xor     eax, eax
call    sub_480502
mov     eax, [edx+30h]
mov     [eax+1Ch], ecx
mov     [eax+20h], ecx
mov     [eax+24h], ecx
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
xor     ah, ah
mov     ds:byte_56F844, ah
xor     bl, bl
mov     ds:byte_56F80C, bl
mov     ds:byte_56F95C, 3
mov     ds:dword_56F964, ecx
mov     ds:dword_56F960, ecx
mov     ds:word_56F97E, 0FE00h
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [edx+34h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+30h]
or      byte ptr [eax], 2

loc_480D44:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 7
sub     ds:word_56F97E, 6
cmp     ax, 7
jnz     short loc_480D75
push    1
mov     eax, [edx+30h]
mov     ecx, 12Ch
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
call    sub_43A67E

loc_480D75:
pop     edx
pop     ecx
pop     ebx
retn
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_480DA2
mov     eax, [eax+30h]
mov     [eax+1Ch], ecx
mov     [eax+20h], ecx
mov     [eax+24h], ecx
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     ds:word_56F97E, 0FF80h

loc_480DA2:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 7
cmp     ax, 7
jnz     short loc_480DCB
push    1
mov     eax, [edx+30h]
mov     ecx, 12Ch
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
call    sub_43A67E

loc_480DCB:
pop     edx
pop     ecx
pop     ebx
retn

loc_480DCF:
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_480E23
mov     ds:dword_56F964, edx
xor     esi, esi
mov     ds:dword_56F960, edx
xor     edx, edx
mov     ds:word_56F97E, dx
mov     ds:word_56F97C, 0FC00h
mov     eax, [eax+30h]
mov     [eax+1Ch], esi
mov     [eax+20h], esi
mov     [eax+24h], esi
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     [eax+56h], dx
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979

loc_480E23:
cmp     dword ptr [ecx+10h], 73h ; 's'
jl      short loc_480E39
add     ds:word_56F97C, 0Bh
add     ds:word_56F97E, 21h ; '!'

loc_480E39:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 7
cmp     ax, 7
jnz     short loc_480E62
push    1
mov     eax, [ecx+30h]
mov     ecx, 12Ch
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
call    sub_43A67E

loc_480E62:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_480E67:
push    ebx
push    ecx
push    edx
mov     dx, ds:word_77EAB6
xor     dh, dh
and     dl, 7
add     ds:word_56F97C, 16h
cmp     dx, 7
jnz     short loc_480E9D
push    1
mov     eax, [eax+30h]
mov     ecx, 12Ch
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
call    sub_43A67E

loc_480E9D:
pop     edx
pop     ecx
pop     ebx
retn

loc_480EA1:
push    ebx
push    ecx
push    edx
mov     dx, ds:word_77EAB6
xor     dh, dh
and     dl, 7
cmp     dx, 7
jnz     short loc_480ECF
push    1
mov     eax, [eax+30h]
mov     ecx, 12Ch
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
call    sub_43A67E

loc_480ECF:
pop     edx
pop     ecx
pop     ebx
retn

loc_480ED3:
push    ebx
push    ecx
push    edx
sub     esp, 8
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_480F8B
mov     eax, 1
call    sub_480502
mov     edx, [edx+2Ch]
or      byte ptr [edx], 2
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979
mov     [esp+14h+var_14], 0F826h
mov     [esp+14h+var_12], 0FFE9h
mov     [esp+14h+var_10], 82Ah
push    1
push    0FFFFFFFDh
mov     ecx, 1Eh
xor     ebx, ebx
mov     edx, 18h
lea     eax, [esp+1Ch+var_14]
call    sub_43954B
mov     [esp+14h+var_14], 0F844h
mov     [esp+14h+var_12], 0FF9Ch
mov     [esp+14h+var_10], 88Eh
push    1
push    0FFFFFFFDh
mov     ecx, 1Eh
xor     ebx, ebx
mov     edx, 18h
lea     eax, [esp+1Ch+var_14]
call    sub_43954B
mov     [esp+14h+var_14], 0F86Ch
mov     [esp+14h+var_12], 0FFECh
mov     [esp+14h+var_10], 834h
push    1
push    0FFFFFFFDh
mov     ecx, 1Eh
xor     ebx, ebx
mov     edx, 18h
lea     eax, [esp+1Ch+var_14]
call    sub_43954B

loc_480F8B:
mov     ds:byte_55A305, 1
mov     dh, 20h ; ' '
mov     ds:byte_55A304, dh
mov     ds:byte_55A306, dh
mov     ds:byte_55A308, dh

loc_480FA6:
mov     ds:byte_55A307, 2

loc_480FAD:
add     esp, 8
pop     edx
pop     ecx
pop     ebx
retn
sub_480A4B endp




sub_480FB4 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_480FFA
mov     eax, [eax+24h]
or      byte ptr [eax], 2
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     edx, [edx+34h]
or      byte ptr [edx], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     ds:word_56F97C, 0FFB0h
xor     ebx, ebx
mov     ds:word_56F97E, bx
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979

loc_480FFA:
xor     ch, ch
mov     ds:byte_55A305, ch
pop     edx
pop     ecx
pop     ebx
retn
sub_480FB4 endp




sub_481006 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_481032
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0F6C00000h
mov     dword ptr [eax+20h], 0FF9F0000h
mov     dword ptr [eax+24h], 0FE620000h
mov     word ptr [eax+56h], 0

locret_481032:
retn
sub_481006 endp




sub_481033 proc near
push    ecx
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_481085
xor     dl, dl
mov     ds:byte_56F95C, dl
mov     ds:byte_56F9CC, 3
xor     ecx, ecx
mov     ds:dword_56F9D0, ecx
mov     ds:dword_56F9D4, 0AE0000h
mov     ds:word_56F9EE, 18h
mov     ds:byte_56FA04, 3
mov     ds:dword_56FA08, ecx
mov     ds:dword_56FA0C, 0AE0000h
mov     ds:word_56FA26, 10h

loc_481085:
cmp     dword ptr [eax+10h], 28h ; '('
jnz     short loc_481092
mov     ds:byte_55A309, 2

loc_481092:
pop     edx
pop     ecx
retn
sub_481033 endp




sub_481095 proc near
cmp     dword ptr [eax+0Ch], 0
jnz     short locret_4810A9
xor     ah, ah
mov     ds:byte_56FA04, ah
mov     ds:byte_56F9CC, ah

locret_4810A9:
retn
sub_481095 endp




sub_4810AA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     loc_48114A
xor     eax, eax
call    sub_480502
mov     ah, 3
mov     ds:byte_56F8EC, ah
mov     ebx, 1400000h
mov     ds:dword_56F8F0, ebx
mov     ds:dword_56F8F4, ecx
mov     ds:byte_56F924, ah
mov     ds:dword_56F928, ebx
mov     ds:dword_56F92C, ecx
mov     ebx, 0FFFFF175h
mov     ds:word_56F944, bx
mov     ds:word_56F90C, bx
xor     esi, esi
mov     ds:word_56F946, si
xor     edi, edi
mov     ds:word_56F90E, di
mov     eax, [edx+30h]
or      byte ptr [eax], 2
mov     [eax+1Ch], ecx
mov     [eax+20h], ecx
mov     [eax+24h], ecx
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [edx+34h]
and     byte ptr [eax], 0FDh
xor     cl, cl
mov     ds:byte_55A309, cl

loc_48114A:
cmp     dword ptr [edx+10h], 16h
jge     short loc_481162
add     ds:word_56F90E, 0FEh
add     ds:word_56F946, 0FEh

loc_481162:
cmp     dword ptr [edx+10h], 16h
jnz     short loc_48117B
mov     ecx, 0E8Bh
mov     ds:word_56F944, cx
mov     ds:word_56F90C, cx

loc_48117B:
cmp     dword ptr [edx+10h], 2Ch ; ','
jnz     short loc_48119F
xor     edi, edi
mov     ds:word_56F944, di
mov     ds:word_56F90C, di
mov     ds:word_56F946, di
mov     ds:word_56F90E, di

loc_48119F:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4810AA endp




sub_4811A5 proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_481207
mov     eax, 2
call    sub_480502
xor     ah, ah
mov     ds:byte_56F8EC, ah
xor     bl, bl
mov     ds:byte_56F924, bl
mov     ds:byte_56F95C, 3
xor     bh, bh
mov     ds:word_56F97E, bx
mov     eax, [edx+30h]
mov     dword ptr [eax+1Ch], 7D00000h
mov     dword ptr [eax+20h], 0FA880000h
mov     dword ptr [eax+24h], 0E8900000h
mov     byte ptr [eax+9], 5
mov     [eax+0Ah], bl
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979

loc_481207:
pop     edx
pop     ebx
retn
sub_4811A5 endp




sub_48120A proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_481246
mov     eax, 1
call    sub_480502
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+34h]
or      byte ptr [eax], 2
mov     ds:byte_55A309, 1

loc_481246:
pop     edx
retn
sub_48120A endp




sub_481248 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48126F
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 9
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 9
mov     byte ptr [eax+0Ah], 0
xor     ah, ah
mov     ds:byte_55A309, ah

loc_48126F:
pop     edx
retn
sub_481248 endp




sub_481271 proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4812FC
mov     eax, [eax+28h]
and     byte ptr [eax], 0FDh
mov     eax, [esi+28h]
and     byte ptr [eax], 0FDh
mov     eax, [esi+28h]
and     byte ptr [eax], 0FDh
mov     [esp+18h+var_18], 12Ch
mov     [esp+18h+var_16], 0FE0Ch
mov     [esp+18h+var_14], 1900h
push    1
push    0FFFFFFFDh
mov     ecx, 1Eh
mov     ebx, 1
mov     edx, 30h ; '0'
lea     eax, [esp+20h+var_18]
call    sub_43954B
mov     [esp+18h+var_18], 0FED4h
mov     [esp+18h+var_16], 0FE70h
mov     [esp+18h+var_14], 1900h
push    1
push    0FFFFFFFEh
mov     ecx, 1Eh
mov     ebx, 1
mov     edx, 30h ; '0'
lea     eax, [esp+20h+var_18]
call    sub_43954B
mov     eax, 3
call    sub_480502

loc_4812FC:
cmp     dword ptr [esi+10h], 3Bh ; ';'
jnz     short loc_481311
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979

loc_481311:
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_481271 endp




sub_481319 proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 8
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     loc_4813E2
mov     eax, 1
call    sub_480502
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0F8680000h
mov     [eax+20h], ecx
mov     dword ptr [eax+24h], 8000000h
mov     word ptr [eax+56h], 130h
mov     [esp+14h+var_14], 0F812h
mov     [esp+14h+var_12], 0FFE9h
mov     [esp+14h+var_10], 802h
push    1
push    0FFFFFFFEh
mov     ecx, 1Eh
xor     ebx, ebx
mov     edx, 10h
lea     eax, [esp+1Ch+var_14]
call    sub_43954B
mov     [esp+14h+var_14], 0F894h
mov     [esp+14h+var_12], 0FFF6h
mov     [esp+14h+var_10], 7EEh
push    1
push    0FFFFFFFEh
mov     ecx, 1Eh
xor     ebx, ebx
mov     edx, 10h
lea     eax, [esp+1Ch+var_14]
call    sub_43954B
mov     [esp+14h+var_14], 0F83Ah
xor     ebx, ebx
mov     [esp+14h+var_12], bx
mov     [esp+14h+var_10], 866h
push    1
push    0FFFFFFFEh
mov     ecx, 1Eh
xor     ebx, ebx
mov     edx, 10h
lea     eax, [esp+1Ch+var_14]
call    sub_43954B

loc_4813E2:
mov     ds:byte_55A305, 1
mov     bl, 20h ; ' '
mov     ds:byte_55A304, bl
mov     ds:byte_55A306, bl
mov     ds:byte_55A308, bl
jmp     loc_480FA6
sub_481319 endp




sub_481402 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51ABC8
mov     eax, offset unk_51B2C0
call    sub_49DB4D
mov     eax, offset unk_51B2D4
call    sub_49DB4D
mov     eax, offset unk_51B2E8
call    sub_49DB4D
mov     eax, offset unk_51B2FC
call    sub_49DB4D
mov     eax, offset unk_51B310
call    sub_49DB4D
call    sub_4DE13B
test    eax, eax
jz      short loc_481477
mov     ds:dword_55A300, eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 1
mov     word ptr [eax+1Ch], 50h ; 'P'
mov     word ptr [eax+1Eh], 40h ; '@'

loc_481477:
call    sub_4DE1BE
test    eax, eax
jz      short loc_48148F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+0Fh], 0
or      byte ptr [eax+6], 20h

loc_48148F:
xor     edx, edx
jmp     short loc_481499

loc_481493:
inc     edx
cmp     edx, 4
jge     short loc_4814B7

loc_481499:
call    sub_4DE1BE
test    eax, eax
jz      short loc_481493
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 4
mov     bl, dl
add     bl, 0Ah
mov     [eax+3], bl
or      byte ptr [eax+6], 20h
jmp     short loc_481493

loc_4814B7:
xor     bh, bh
mov     ds:byte_55A309, bh
mov     dword ptr [ecx+0A4h], offset unk_51B324
pop     edx
pop     ecx
pop     ebx
retn
sub_481402 endp




sub_4814CD proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_4814DD
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_4814DD:
pop     edx
retn
sub_4814CD endp

db 8Dh, 40h, 0
jpt_481514 dd offset loc_48151B ; jump table for switch statement
dd offset loc_48153C
dd offset loc_481548
dd offset loc_481564
dd offset loc_48157D
dd offset loc_481587
dd offset loc_4815B2



sub_4814FE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+4]
cmp     al, 6           ; switch 7 cases
ja      def_481514      ; jumptable 00481514 default case
and     eax, 0FFh
jmp     jpt_481514[eax*4] ; switch jump

loc_48151B:             ; jumptable 00481514 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_481514      ; jumptable 00481514 default case
and     ds:byte_5F8364, 0FCh

loc_481534:
inc     byte ptr [esi+4]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_48153C:             ; jumptable 00481514 case 1
mov     eax, 240004h
call    sub_4D8E42
jmp     short loc_481534

loc_481548:             ; jumptable 00481514 case 2
call    sub_4D8ECC
test    eax, eax
jz      def_481514      ; jumptable 00481514 default case
inc     byte ptr [esi+4]
mov     dword ptr [esi+0Ch], 14h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_481564:             ; jumptable 00481514 case 3
mov     ecx, [esi+0Ch]
dec     ecx
mov     [esi+0Ch], ecx
jnz     def_481514      ; jumptable 00481514 default case
mov     eax, 2
call    sub_49E0D7
jmp     short loc_481534

loc_48157D:             ; jumptable 00481514 case 4
mov     eax, esi
call    sub_481402
inc     byte ptr [esi+4]

loc_481587:             ; jumptable 00481514 case 5
cmp     ds:word_6E23D6, 0
jnz     short loc_4815B2 ; jumptable 00481514 case 6
mov     eax, [esi+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_4815A5
call    sub_47EBCB
test    eax, eax
jz      short loc_4815B2 ; jumptable 00481514 case 6

loc_4815A5:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [esi+4]

loc_4815B2:             ; jumptable 00481514 case 6
mov     eax, esi
call    sub_4814CD
call    sub_49DBD1
cmp     ds:byte_55A305, 0
jz      short loc_4815EB
xor     ecx, ecx
mov     cl, ds:byte_55A307
xor     ebx, ebx
mov     bl, ds:byte_55A304
xor     edx, edx
mov     dl, ds:byte_55A306
xor     eax, eax
mov     al, ds:byte_55A308
call    sub_48054E

loc_4815EB:
mov     al, ds:byte_55A309
cmp     al, 1
jb      short loc_4815FC
jbe     short loc_48160A
cmp     al, 2
jz      short loc_48162D
jmp     short loc_48164E

loc_4815FC:
test    al, al
jnz     short loc_48164E
xor     edx, edx
mov     ds:dword_77E698, edx
jmp     short loc_48164E

loc_48160A:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_51B44A[eax*2]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E698, eax
jmp     short loc_48164E

loc_48162D:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 1
and     eax, 0FFFFh
mov     eax, ds:dword_51B452[eax*2]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E694, eax

loc_48164E:
call    sub_49DECF
cmp     byte ptr [esi+4], 6
jnz     def_481514      ; jumptable 00481514 default case
mov     bx, ds:word_6E23D6
test    bx, bx
jnz     short def_481514 ; jumptable 00481514 default case
mov     cl, 2
mov     byte ptr ds:dword_77EA5A+2, cl
mov     ds:byte_77EA5E, 3
mov     ds:byte_77EA5F, 1
mov     word ptr ds:dword_77EA4E+2, bx
mov     word ptr ds:dword_77EA52, bx
xor     eax, eax
mov     word ptr ds:dword_77EA52+2, bx
mov     word ptr ds:dword_77EA5A, bx
xor     ah, bh
mov     byte ptr ds:dword_77EA5A+3, ah
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, cl
mov     eax, 600h
call    sub_47EA91
xor     eax, eax
call    sub_47EA91
mov     byte ptr [esi], 0
call    sub_4D8EB1
or      ds:byte_5F8364, 1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_481514:             ; jumptable 00481514 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4814FE endp




sub_4816E1 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4816F6
mov     edx, [eax+28h]
mov     byte ptr [edx+8], 5
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0

loc_4816F6:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_48170A
mov     edx, [eax+28h]
mov     byte ptr [edx+8], 9
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0

loc_48170A:
cmp     dword ptr [eax+10h], 5Ah ; 'Z'
jnz     short loc_48171E
mov     edx, [eax+28h]
mov     byte ptr [edx+8], 6
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0

loc_48171E:
pop     edx
retn
sub_4816E1 endp




sub_481720 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4817A6
mov     eax, [eax+28h]
call    sub_4DE2F6
or      byte ptr [edx+0Ah], 20h
mov     eax, ds:dword_55A30C
mov     dword ptr [eax+528h], 72C0000h
mov     eax, ds:dword_55A30C
mov     dword ptr [eax+52Ch], 0FFFF0000h
mov     eax, ds:dword_55A30C
mov     dword ptr [eax+530h], 137B0000h
mov     eax, ds:dword_55A30C
mov     word ptr [eax+538h], 72Ch
mov     eax, ds:dword_55A30C
mov     word ptr [eax+53Ah], 0FFFFh
mov     eax, ds:dword_55A30C
mov     word ptr [eax+53Ch], 137Bh
mov     eax, ds:dword_55A30C
mov     word ptr [eax+542h], 0C00h
mov     eax, ds:dword_55A30C
mov     byte ptr [eax+548h], 30h ; '0'

loc_4817A6:
cmp     dword ptr [edx+10h], 0Fh
jnz     short loc_4817C4
mov     eax, ds:dword_55A30C
mov     byte ptr [eax+548h], 80h
mov     edx, 7
xor     eax, eax
call    sub_4A0E24

loc_4817C4:
pop     edx
retn
sub_481720 endp




sub_4817C6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_481809
mov     eax, ds:dword_55A30C
mov     word ptr [eax+542h], 800h
mov     eax, ds:dword_55A30C
xor     byte ptr [eax], 2
mov     eax, ds:dword_55A30C
mov     byte ptr [eax+548h], 30h ; '0'
mov     eax, [esi+24h]
mov     byte ptr [eax+8], 2
mov     eax, [esi+24h]
mov     byte ptr [eax+0Dh], 9
mov     eax, [esi+24h]
mov     byte ptr [eax+0Eh], 0Fh

loc_481809:
cmp     dword ptr [esi+10h], 0ACh
jnz     short loc_481878
mov     eax, ds:dword_51B456+1
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+24h]
mov     ecx, [ecx+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044
mov     eax, ds:dword_51B456+2
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+24h]
mov     ecx, [ecx+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044

loc_481878:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4817C6 endp




sub_48187D proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_481895
mov     edx, [eax+24h]
sub     word ptr [edx+18h], 40h ; '@'
mov     edx, ds:dword_55A30C
or      byte ptr [edx], 2

loc_481895:
mov     eax, [eax+24h]
cmp     byte ptr [eax+0A6h], 1
jnz     short loc_4818AE
lea     edx, [eax+14h]
mov     eax, 111h
call    sub_4D8BC3

loc_4818AE:
pop     edx
retn
sub_48187D endp




sub_4818B0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4818C8
mov     eax, ds:dword_55A30C
xor     byte ptr [eax], 2
mov     byte ptr [esi+0Ah], 0

loc_4818C8:
mov     ecx, [esi+10h]
cmp     ecx, 3
jl      short loc_481942
cmp     ecx, 5
jg      short loc_481942
mov     eax, ds:(dword_51B452+1)[ecx*2]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edx, [esi+24h]
mov     ecx, [edx+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044
mov     eax, [esi+10h]
mov     eax, ds:(dword_51B452+2)[eax*2]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edx, [esi+24h]
mov     ecx, [edx+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044

loc_481942:
cmp     dword ptr [esi+10h], 0Fh
jnz     short loc_4819AE
mov     eax, ds:dword_51B45F
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edx, [esi+24h]
mov     ecx, [edx+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044
mov     eax, ds:dword_51B45F+1
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+24h]
mov     ecx, [ecx+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044

loc_4819AE:
cmp     dword ptr [esi+10h], 1Eh
jnz     short loc_4819C0
mov     edx, 9
xor     eax, eax
call    sub_4A0E24

loc_4819C0:
mov     eax, [esi+10h]
cmp     eax, 2Dh ; '-'
jl      loc_481A3E
cmp     eax, 89h
jge     short loc_481A3E
xor     eax, eax
mov     al, [esi+0Ah]
add     eax, eax
mov     edx, ds:(dword_51B45F+3)[eax]
sar     edx, 10h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4819EE
mov     byte ptr [esi+0Ah], 0
jmp     short loc_481A01

loc_4819EE:
cmp     ds:word_51B464[eax], 0
jnz     short loc_481A01
mov     al, ds:byte_51B466[eax]
sub     [esi+0Ah], al

loc_481A01:
xor     eax, eax
mov     al, [esi+0Ah]
mov     eax, ds:(dword_51B45F+3)[eax*2]
sar     eax, 10h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edx, [esi+24h]
mov     ecx, [edx+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044
inc     byte ptr [esi+0Ah]

loc_481A3E:
cmp     dword ptr [esi+10h], 89h
jnz     short loc_481A7A
mov     eax, ds:dword_51B45F+1
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+24h]
mov     ecx, [ecx+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044

loc_481A7A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4818B0 endp




sub_481A7F proc near
push    ecx
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_481AD3
mov     edx, ds:dword_55A30C
or      byte ptr [edx], 2
mov     edx, ds:dword_55A30C
mov     byte ptr [edx+548h], 30h ; '0'
mov     edx, [eax+24h]
sub     word ptr [edx+14h], 80h
mov     edx, [eax+24h]
mov     ecx, [edx+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [edx+1Ch], ecx
mov     edx, [eax+24h]
mov     ecx, [edx+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [edx+20h], ecx
mov     edx, [eax+24h]
mov     ecx, [edx+16h]
sar     ecx, 10h
shl     ecx, 10h
mov     [edx+24h], ecx

loc_481AD3:
cmp     dword ptr [eax+10h], 0Ah
jge     short loc_481AE2
mov     edx, [eax+24h]
add     word ptr [edx+56h], 0B4h

loc_481AE2:
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_481B06
mov     edx, [eax+24h]
mov     word ptr [edx+56h], 708h
mov     edx, [eax+24h]
mov     byte ptr [edx+8], 3
mov     edx, [eax+24h]
mov     byte ptr [edx+0Dh], 0
mov     edx, [eax+24h]
mov     byte ptr [edx+0Fh], 0

loc_481B06:
mov     edx, [eax+24h]
add     edx, 14h
mov     eax, ds:dword_55A30C
add     eax, 14h
call    sub_4DDDB4
mov     edx, eax
mov     eax, ds:dword_55A30C
mov     [eax+542h], dx
pop     edx
pop     ecx
retn
sub_481A7F endp




sub_481B2A proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_481B5D
mov     eax, ds:dword_55A30C
mov     byte ptr [eax+548h], 81h
mov     edx, 5
xor     eax, eax
call    sub_4A0E24
mov     eax, [ecx+24h]
test    byte ptr [eax], 1
jz      short loc_481B5D
call    sub_4DE336
or      byte ptr [ecx+0Ah], 10h

loc_481B5D:
pop     edx
pop     ecx

locret_481B5F:
retn
sub_481B2A endp




sub_481B60 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_481B84
mov     edx, 0Eh
xor     eax, eax
call    sub_4A0E24
mov     eax, [ecx+28h]
mov     byte ptr [eax+8], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Fh], 0

loc_481B84:
pop     edx
pop     ecx
retn
sub_481B60 endp




sub_481B87 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_481C17
mov     eax, ds:dword_51B452+3
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+24h]
mov     ecx, [ecx+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044
mov     eax, ds:dword_51B456
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+24h]
mov     ecx, [ecx+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044
mov     edx, 8
xor     eax, eax
call    sub_4A0E24
mov     eax, [esi+24h]
mov     byte ptr [eax+0Fh], 0
mov     eax, [esi+24h]
mov     byte ptr [eax+8], 4

loc_481C17:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_481B87 endp




sub_481C1C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, 641h
call    sub_47E888
test    eax, eax
jz      short loc_481C50
mov     ds:dword_77E6B4, offset unk_51B4D8
mov     dword ptr [ecx+0A4h], offset unk_51B73C
jmp     short loc_481C64

loc_481C50:
mov     ds:dword_77E6B4, offset unk_51B608
mov     dword ptr [ecx+0A4h], offset unk_51B78C

loc_481C64:
mov     eax, ds:dword_55A310
mov     [ecx+24h], eax
mov     eax, ds:dword_55A314
mov     [ecx+28h], eax
mov     byte ptr [ecx+0Bh], 0
mov     al, [ecx+0Bh]
mov     [ecx+0Ah], al
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Ah], 1
pop     edx
pop     ecx
pop     ebx
retn
sub_481C1C endp




sub_481C8D proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_481C9D
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_481C9D:
pop     edx
retn
sub_481C8D endp

db 8Bh, 0C0h
jpt_481CDC dd offset loc_481CE3 ; jump table for switch statement
dd offset loc_481CF2
dd offset loc_481D24
dd offset loc_481D67
dd offset loc_481D83
dd offset loc_481DA3



sub_481CB9 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     esi, eax
mov     ds:dword_55A30C, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_481CDC      ; jumptable 00481CDC default case
xor     edx, edx
mov     dl, al
jmp     jpt_481CDC[edx*4] ; switch jump

loc_481CE3:             ; jumptable 00481CDC case 0
mov     eax, esi
call    sub_481C1C

loc_481CEA:
inc     byte ptr [esi+4]
jmp     def_481CDC      ; jumptable 00481CDC default case

loc_481CF2:             ; jumptable 00481CDC case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_481CDC      ; jumptable 00481CDC default case
mov     eax, ds:dword_55A30C
mov     byte ptr [eax+8], 3
mov     eax, ds:dword_55A30C
mov     byte ptr [eax+9], 0
mov     eax, ds:dword_55A30C
mov     byte ptr [eax+548h], 30h ; '0'
jmp     short loc_481CEA

loc_481D24:             ; jumptable 00481CDC case 2
cmp     byte ptr [esi+8], 0FFh
jnz     short loc_481D34
inc     al
mov     [esi+4], al
jmp     def_481CDC      ; jumptable 00481CDC default case

loc_481D34:
call    sub_47EBCB
test    eax, eax
jz      short loc_481D51
test    byte ptr [esi+0Ah], 1
jz      short loc_481D51
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
jmp     short loc_481CEA

loc_481D51:
mov     eax, esi
call    sub_481C8D
call    sub_49DBD1
call    sub_49DECF
jmp     def_481CDC      ; jumptable 00481CDC default case

loc_481D67:             ; jumptable 00481CDC case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_481CDC      ; jumptable 00481CDC default case
mov     eax, 10h
call    sub_4D9040
jmp     loc_481CEA

loc_481D83:             ; jumptable 00481CDC case 4
cmp     ds:byte_77EAB8, 0
jnz     def_481CDC      ; jumptable 00481CDC default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000007h
call    sub_4D89E4
jmp     loc_481CEA

loc_481DA3:             ; jumptable 00481CDC case 5
mov     byte ptr ds:dword_77E954, 1
mov     ecx, 7380000h
mov     ds:dword_5F888C, ecx
mov     ebx, 0FFFF0000h
mov     ds:dword_5F8890, ebx
mov     edi, 12E30000h
mov     ds:dword_5F8894, edi
mov     edx, 64h ; 'd'
mov     word ptr ds:dword_5F88A4+2, dx
mov     ds:dword_5F8380, ecx
mov     ds:dword_5F8384, ebx
mov     ds:dword_5F8388, edi
mov     word ptr ds:dword_5F83B8+2, dx
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
mov     eax, ds:dword_55A30C
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
mov     eax, ds:dword_55A30C
inc     byte ptr ds:dword_5F836C+1
or      byte ptr [eax], 2
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     [esp+24h+var_24], eax
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
sub     eax, 96h
mov     [esp+24h+var_20], eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     [esp+24h+var_1C], eax
call    sub_42A98E
mov     ebx, ds:dword_5F83B8
sar     ebx, 10h
sub     ebx, 824h
and     ebx, 0FFFh
xor     ecx, ecx
mov     edx, 258h
mov     eax, esp
call    sub_42A8BE
mov     byte ptr [esi], 0
test    byte ptr [esi+0Ah], 10h
jnz     short loc_481E89
mov     eax, [esi+24h]
call    sub_4DE336

loc_481E89:
test    byte ptr [esi+0Ah], 20h
jnz     short loc_481E97
mov     eax, [esi+28h]
call    sub_4DE2F6

loc_481E97:
mov     ds:word_77EA80, 7Fh
mov     eax, offset byte_5F8364
call    sub_4B565A

def_481CDC:             ; jumptable 00481CDC default case
add     esp, 10h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx

locret_481EB2:
retn
sub_481CB9 endp




sub_481EB3 proc near
push    edx
call    sub_4DDFD0
test    eax, eax
jz      short loc_481EFC
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 9
mov     byte ptr [eax+4], 5
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     dword ptr [eax+1Ch], 72C0000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 145F0000h
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B

loc_481EFC:
call    sub_4DDF54
test    eax, eax
jz      short loc_481F44
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2Ah ; '*'
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     dword ptr [eax+1Ch], 7EC0000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 145F0000h
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B

loc_481F44:
pop     edx
retn
sub_481EB3 endp

jpt_481F75 dd offset loc_481F7C ; jump table for switch statement
dd offset loc_481F9B
dd offset loc_481FD7
dd offset loc_481FE6
dd offset loc_481FF2
dd offset loc_482011
dd offset loc_48208F



sub_481F62 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 6           ; switch 7 cases
ja      def_481F75      ; jumptable 00481F75 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_481F75[ecx*4] ; switch jump

loc_481F7C:             ; jumptable 00481F75 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_481F75      ; jumptable 00481F75 default case
mov     eax, edx
call    sub_482099

loc_481F95:
inc     byte ptr [edx+4]
pop     edx
pop     ecx
retn

loc_481F9B:             ; jumptable 00481F75 case 1
cmp     byte ptr [edx+8], 0FFh
jnz     short loc_481FAC
inc     al
mov     [edx+4], al
inc     byte ptr [edx+5]
pop     edx
pop     ecx
retn

loc_481FAC:
call    sub_47EBCB
test    eax, eax
jz      short loc_481FC3
mov     byte ptr [edx+4], 6
mov     byte ptr [edx+5], 0
mov     word ptr [edx+6], 0

loc_481FC3:
mov     eax, edx
call    sub_482216
call    sub_49DBD1

loc_481FCF:
call    sub_49DECF
pop     edx
pop     ecx
retn

loc_481FD7:             ; jumptable 00481F75 case 2
call    sub_42C353
test    eax, eax
jnz     def_481F75      ; jumptable 00481F75 default case
jmp     short loc_481F95

loc_481FE6:             ; jumptable 00481F75 case 3
mov     eax, 240000h
call    sub_4D8E42
jmp     short loc_481F95

loc_481FF2:             ; jumptable 00481F75 case 4
call    sub_4D8ECC
test    eax, eax
jz      def_481F75      ; jumptable 00481F75 default case
mov     eax, [edx+28h]
call    sub_4DE336
mov     eax, edx
call    sub_4820FA
inc     byte ptr [edx+4]

loc_482011:             ; jumptable 00481F75 case 5
cmp     byte ptr [edx+8], 0FFh
jz      loc_481F95
call    sub_47EBCB
test    eax, eax
jz      short loc_48202E
mov     byte ptr [edx+4], 6
mov     word ptr [edx+6], 0

loc_48202E:
mov     eax, edx
call    sub_482216
call    sub_49DBD1
cmp     ds:byte_55A35C, 0
jz      short loc_482048
call    sub_482B79

loc_482048:
mov     dl, ds:byte_55A35E
test    dl, dl
jbe     short loc_48205C
cmp     dl, 1
jz      short loc_482069
jmp     loc_481FCF

loc_48205C:
xor     edx, edx
mov     ds:dword_77E698, edx
jmp     loc_481FCF

loc_482069:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_51BEFA[eax*2]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E698, eax
jmp     loc_481FCF

loc_48208F:             ; jumptable 00481F75 case 6
mov     eax, edx
call    sub_482228

def_481F75:             ; jumptable 00481F75 default case
pop     edx
pop     ecx
retn
sub_481F62 endp




sub_482099 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, ds:byte_77E952
mov     [ecx+0Bh], al
mov     al, ds:byte_77E953
mov     [ecx+0Ah], al
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51B870
mov     eax, offset unk_51B7F8
call    sub_49DB4D
mov     dword ptr [ecx+0A4h], offset unk_51BE24
mov     byte ptr [ecx+0Bh], 0
mov     al, [ecx+0Bh]
mov     [ecx+0Ah], al
mov     dword ptr [ecx+0Ch], 0
xor     ah, ah
mov     ds:byte_55A35E, ah
mov     ds:byte_55A35C, ah
pop     edx
pop     ecx
pop     ebx
retn
sub_482099 endp




sub_4820FA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     dword ptr [eax+14h], 0
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51B8E4
mov     eax, offset unk_51B7E4
call    sub_49DB4D
mov     eax, offset unk_51B80C
call    sub_49DB4D
mov     eax, offset unk_51B820
call    sub_49DB4D
mov     eax, offset unk_51B834
call    sub_49DB4D
mov     eax, offset unk_51B848
call    sub_49DB4D
mov     eax, offset unk_51B85C
call    sub_49DB4D
mov     eax, offset unk_55A334
call    sub_4F87C5
mov     eax, offset unk_55A344
call    sub_4F87C5
or      ds:byte_55A33B, 2
or      ds:byte_55A34B, 2
xor     edx, edx
mov     ds:word_55A34C, dx
mov     ds:word_55A33C, dx
mov     ds:word_55A34E, dx
mov     ds:word_55A33E, dx
mov     dh, 8
mov     ds:byte_55A348, dh
mov     ds:byte_55A338, dh
mov     ds:byte_55A349, dh
mov     ds:byte_55A339, dh
mov     ds:byte_55A34A, dh
mov     ds:byte_55A33A, dh
mov     eax, 140h
mov     ds:word_55A350, ax
mov     edx, eax
mov     ds:word_55A340, ax
mov     ebx, 0F0h
mov     word ptr ds:dword_55A352, bx
mov     ds:word_55A342, bx
mov     dword ptr [ecx+0A4h], offset unk_51BE34
mov     byte ptr [ecx+0Bh], 0
mov     al, [ecx+0Bh]
mov     [ecx+0Ah], al
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+8], 1
xor     dh, ah
mov     ds:byte_55A35E, dh
xor     bl, bl
mov     ds:byte_55A35C, bl
pop     edx
pop     ecx
pop     ebx
retn
sub_4820FA endp




sub_482216 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_482226
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_482226:
pop     edx
retn
sub_482216 endp




sub_482228 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edi, eax
mov     esi, offset byte_5F8364
mov     al, [eax+6]
cmp     al, 1
jb      short loc_48224F
jbe     loc_4822CB
cmp     al, 2
jz      loc_48236F
jmp     loc_48243C

loc_48224F:
test    al, al
jnz     loc_48243C
cmp     byte ptr [edi+5], 0
jnz     short loc_4822B9
cmp     byte ptr [edi+7], 0
jnz     short loc_48227B
mov     byte ptr [edi+7], 1
mov     eax, 0Ah
call    sub_49E0D7
mov     eax, 40h ; '@'
call    sub_4D9040

loc_48227B:
cmp     ds:word_6E23D6, 0
jnz     loc_48243C
cmp     ds:byte_77EAB8, 0
jnz     loc_48243C
call    sub_42C353
test    eax, eax
jnz     loc_48243C
mov     eax, 1
call    sub_482B27
mov     eax, 2
call    sub_49E0D7
jmp     short loc_4822C8

loc_4822B9:
mov     eax, 1
call    sub_482B27
call    sub_4D8EB1

loc_4822C8:
inc     byte ptr [edi+6]

loc_4822CB:
mov     edx, 80h
mov     eax, 156h
call    sub_4DC979
mov     ds:dword_77E6B4, offset unk_51BDDC
call    sub_49DBD1
call    sub_49DECF
or      byte ptr [esi], 2
mov     word ptr [esi+538h], 400h
mov     word ptr [esi+53Ah], 0FFFFh
mov     word ptr [esi+53Ch], 1BE0h
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
mov     word ptr [esi+542h], 800h
mov     word ptr [esi+544h], 0
or      byte ptr [esi+0BDh], 10h
inc     byte ptr [esi+9]
inc     byte ptr [edi+6]
jmp     loc_48243C

loc_48236F:
call    sub_4DDFD0
mov     ebp, eax
test    eax, eax
jz      short loc_4823DF
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
mov     byte ptr [eax+0Fh], 1
mov     word ptr [eax+14h], 400h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 2100h
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
mov     dword ptr [eax+44h], 0
mov     dword ptr [eax+48h], 0

loc_4823DF:
mov     word ptr [ebp+0B0h], 0
mov     ax, [ebp+0B0h]
mov     [ebp+6Eh], ax
push    2C203080h
mov     ecx, 60h ; '`'
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_436785
mov     eax, esi
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     al, [edi+0Bh]
mov     ds:byte_77E952, al
mov     al, [edi+0Ah]
mov     ds:byte_77E953, al
mov     byte ptr [edi], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000006h
call    sub_4D89E4

loc_48243C:
pop     ebp

loc_48243D:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx

locret_482442:
retn
sub_482228 endp




sub_482443 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_482442
and     ds:byte_5F8364, 0FDh
mov     word ptr ds:dword_5F836C, 3
call    sub_4DD215
mov     eax, 30h ; '0'
jmp     sub_42BEB2
sub_482443 endp




sub_482468 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+34h]
mov     ecx, [eax+38h]
mov     ebx, [eax+3Ch]
cmp     dword ptr [eax+10h], 0
jnz     short loc_4824BD
mov     word ptr [edx+0Ah], 0
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ebx+0Ah], 0
mov     ds:byte_55A35C, 1
mov     ds:byte_55A338, 40h ; '@'
mov     ds:byte_55A339, 40h ; '@'
mov     ds:byte_55A33A, 10h
mov     ds:byte_55A348, 48h ; 'H'
mov     ds:byte_55A349, 48h ; 'H'
mov     ds:byte_55A34A, 12h

loc_4824BD:
cmp     dword ptr [eax+10h], 64h ; 'd'
jnz     short loc_4824C9
mov     word ptr [ecx+0Ah], 1

loc_4824C9:
cmp     dword ptr [eax+10h], 6Ch ; 'l'
jnz     short loc_4824DB
mov     word ptr [edx+0Ah], 1
mov     word ptr [ebx+0Ah], 1

loc_4824DB:
pop     edx
pop     ecx
pop     ebx
retn
sub_482468 endp




sub_4824DF proc near
push    edx
mov     edx, [eax+2Ch]
cmp     dword ptr [eax+10h], 0
jnz     short loc_482505
mov     eax, 3
call    sub_482B27
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
xor     ah, ah
mov     ds:byte_55A35C, ah

loc_482505:
pop     edx
retn
sub_4824DF endp




sub_482507 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+34h]
mov     ecx, [eax+38h]
mov     ebx, [eax+3Ch]
cmp     dword ptr [eax+10h], 0
jnz     short loc_482566
mov     eax, 1
call    sub_482B27
mov     word ptr [edx+0Ah], 2
mov     word ptr [ecx+0Ah], 2
mov     word ptr [ebx+0Ah], 2
mov     ds:byte_55A35C, 1
mov     dl, 40h ; '@'
mov     ds:byte_55A338, dl
mov     ds:byte_55A339, dl
mov     ds:byte_55A33A, 10h
mov     bh, 48h ; 'H'
mov     ds:byte_55A348, bh
mov     ds:byte_55A349, bh
mov     ds:byte_55A34A, 12h

loc_482566:
pop     edx
pop     ecx
pop     ebx
retn
sub_482507 endp




sub_48256A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, [eax+34h]
mov     ecx, [eax+38h]
mov     ebx, [eax+3Ch]
mov     esi, [eax+2Ch]
cmp     dword ptr [eax+10h], 0
jnz     short loc_4825A4
mov     eax, 3
call    sub_482B27
mov     byte ptr [edx+8], 2
mov     byte ptr [ecx+8], 2
mov     byte ptr [ebx+8], 2
mov     word ptr [esi+0Ah], 1
xor     ah, ah
mov     ds:byte_55A35C, ah

loc_4825A4:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48256A endp




sub_4825A9 proc near
push    edx
mov     edx, [eax+2Ch]
cmp     dword ptr [eax+10h], 0
jnz     short loc_4825BD
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 2

loc_4825BD:
pop     edx
retn
sub_4825A9 endp




sub_4825BF proc near
push    edx
mov     edx, [eax+2Ch]
cmp     dword ptr [eax+10h], 0
jnz     short loc_4825CF
mov     word ptr [edx+0Ah], 3

loc_4825CF:
pop     edx
retn
sub_4825BF endp




sub_4825D1 proc near
push    edx
mov     edx, [eax+2Ch]
cmp     dword ptr [eax+10h], 0
jnz     short loc_4825E1
mov     word ptr [edx+0Ah], 4

loc_4825E1:
pop     edx
retn
sub_4825D1 endp




sub_4825E3 proc near
push    ecx
push    edx
mov     edx, [eax+24h]
mov     ecx, [eax+2Ch]
cmp     dword ptr [eax+10h], 0
jnz     short loc_482608
and     byte ptr [ecx], 0FDh
mov     byte ptr [edx+9], 1
mov     word ptr [edx+0Ah], 0
mov     eax, 1
call    sub_482B27

loc_482608:
pop     edx
pop     ecx
retn
sub_4825E3 endp




sub_48260B proc near
push    edx
mov     edx, [eax+24h]
cmp     dword ptr [eax+10h], 19h
jnz     short loc_482619
mov     byte ptr [edx+9], 4

loc_482619:
pop     edx
retn
sub_48260B endp




sub_48261B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, [eax+24h]
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     loc_4826C0
mov     byte ptr [edx+9], 0
or      ds:byte_5F8364, 2
mov     word ptr ds:dword_5F889A+2, 400h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1F00h
mov     ds:dword_5F888C, 4000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 1F000000h
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     word ptr ds:dword_5F88A4+2, 0C00h
mov     ds:word_5F88A8, si
mov     ds:byte_5F88AC, 80h
mov     ds:byte_55A35C, 1
mov     dl, 8
mov     ds:byte_55A348, dl
mov     ds:byte_55A338, dl
mov     ds:byte_55A349, dl
mov     ds:byte_55A339, dl
mov     ds:byte_55A34A, dl
mov     ds:byte_55A33A, dl
jmp     short loc_482704

loc_4826C0:
cmp     ecx, 19h
jg      short loc_482704
mov     dl, ds:byte_55A348
add     dl, 3
mov     ds:byte_55A348, dl
mov     ds:byte_55A338, dl
mov     dh, ds:byte_55A349
add     dh, 3
mov     ds:byte_55A349, dh
mov     ds:byte_55A339, dh
mov     bl, ds:byte_55A34A
add     bl, 3
mov     ds:byte_55A34A, bl
mov     ds:byte_55A33A, bl

loc_482704:
cmp     dword ptr [eax+10h], 41h ; 'A'
jge     short loc_48271D
xor     dl, dl
mov     byte ptr ds:dword_5F84CB+1, dl
mov     byte ptr ds:dword_5F84CB+2, dl
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_48271D:
mov     al, 0Ch
mov     byte ptr ds:dword_5F84CB+1, al
mov     byte ptr ds:dword_5F84CB+2, al
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48261B endp




sub_48272E proc near
push    ebx
push    edx
mov     edx, [eax+24h]
cmp     dword ptr [eax+10h], 0
jnz     short loc_482748
xor     bl, bl
mov     ds:byte_55A35C, bl
mov     byte ptr [edx+9], 5
pop     edx
pop     ebx
retn

loc_482748:
xor     ah, ah
mov     byte ptr ds:dword_5F84CB+1, ah
mov     byte ptr ds:dword_5F84CB+2, ah
pop     edx
pop     ebx
retn
sub_48272E endp




sub_482759 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, [eax+24h]
mov     edx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     short loc_482782
mov     byte ptr [ecx+9], 6
mov     byte ptr [ecx+0Ah], 0
mov     word ptr ds:dword_5F88A4+2, 800h
mov     byte ptr [eax+7], 0
jmp     short loc_482788

loc_482782:
cmp     byte ptr [eax+7], 0
jnz     short loc_4827BB

loc_482788:
mov     ecx, [ecx+14h]
sar     ecx, 10h
cmp     ecx, 0FFFFFFFFh
jnz     short loc_482806
mov     byte ptr [eax+7], 1
mov     word ptr ds:dword_55A352+2, 0FEA0h
mov     byte ptr [edx+548h], 22h ; '"'
mov     byte ptr [edx+74h], 1
mov     ds:byte_55A35E, 1
mov     byte ptr [eax+6], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4827BB:
mov     bh, [eax+6]
test    bh, bh
jz      short loc_4827CB
mov     ch, bh
dec     ch
mov     [eax+6], ch
jmp     short loc_4827D1

loc_4827CB:
mov     ds:byte_55A35E, bh

loc_4827D1:
mov     eax, ds:dword_55A352
sar     eax, 10h
shl     eax, 0Ch
mov     esi, [edx+52Ch]
add     esi, eax
mov     [edx+52Ch], esi
mov     eax, esi
sar     eax, 10h
mov     [edx+53Ah], ax
add     word ptr ds:dword_55A352+2, 30h ; '0'
sub     word ptr [edx+53Ch], 14h

loc_482806:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_482759 endp




sub_48280B proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+24h]
cmp     dword ptr [eax+10h], 0
jnz     short loc_48283E
and     ds:byte_5F8364, 0FDh
xor     bh, bh
mov     ds:byte_5F88AC, bh
mov     ecx, ds:dword_5F889E
sar     ecx, 10h
shl     ecx, 10h
mov     ds:dword_5F8894, ecx
mov     word ptr [eax+6], 0

loc_48283E:
cmp     dword ptr [eax+10h], 46h ; 'F'
jnz     short loc_482848
mov     byte ptr [edx+9], 7

loc_482848:
pop     edx
pop     ecx
pop     ebx
retn
sub_48280B endp




sub_48284C proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+2Ch]
mov     ecx, [edx+30h]
mov     ebx, [edx+10h]
test    ebx, ebx
jnz     short loc_4828B6
mov     [eax+8], ebx
mov     word ptr [eax+0Ch], 0
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Fh], 1
mov     word ptr [eax+14h], 400h
mov     word ptr [eax+16h], 0FC00h
mov     word ptr [eax+18h], 2108h
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
mov     [eax+44h], ebx
mov     [eax+48h], ebx
mov     byte ptr [ecx+0Fh], 1
or      ds:byte_5F8364, 2

loc_4828B6:
pop     edx
pop     ecx
pop     ebx
retn
sub_48284C endp

jpt_4829EC dd offset loc_4829F3 ; jump table for switch statement
dd offset loc_482A0F
dd offset loc_482A01
dd offset loc_482A0F
dd offset loc_4829F3
dd offset loc_482A01
dd offset loc_4829F3
dd offset loc_482A0F
jpt_482AA6 dd offset loc_482AAD ; jump table for switch statement
dd offset loc_482AC3
dd offset loc_482AB8
dd offset loc_482AC3
dd offset loc_482AAD
dd offset loc_482AB8
dd offset loc_482AAD
dd offset loc_482AC3



sub_4828FA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, [eax+2Ch]
mov     ecx, offset byte_5F8364
mov     ebx, [eax+10h]
test    ebx, ebx
jnz     short loc_482917
mov     byte ptr [edx+0Dh], 1
inc     byte ptr [edx+0Eh]
jmp     short loc_48293F

loc_482917:
cmp     ebx, 1
jnz     short loc_48293F
xor     edx, edx
mov     word ptr ds:dword_55A358+2, dx
xor     dl, dl
mov     ds:byte_55A35D, dl
xor     ebx, ebx
mov     word ptr ds:dword_55A358, bx
xor     esi, esi
mov     ds:word_55A356, si

loc_48293F:
mov     bh, [eax+9]
cmp     bh, 2
jnz     loc_482A1D
cmp     dword ptr [eax+10h], 0
jnz     short loc_482958
mov     byte ptr [ecx+548h], 81h

loc_482958:
mov     ebx, 6
mov     word ptr ds:dword_55A358, bx
mov     esi, [eax+10h]
cmp     esi, 0Fh
jz      short loc_482971
cmp     esi, 2Dh ; '-'
jnz     short loc_48297A

loc_482971:
mov     ds:byte_55A35D, 1
jmp     short loc_4829CB

loc_48297A:
cmp     esi, 19h
jnz     short loc_48299D
xor     ah, ah
mov     ds:byte_55A35D, ah
xor     edi, edi
mov     word ptr ds:dword_55A358+2, di
xor     al, al

loc_482992:
mov     ds:word_55A356, ax
jmp     loc_482AD3

loc_48299D:
cmp     esi, 7Dh ; '}'
jnz     short loc_4829BE
xor     al, al
mov     ds:byte_55A35D, al
xor     ecx, ecx
mov     word ptr ds:dword_55A358+2, cx
mov     ds:word_55A356, bx
jmp     loc_482AD3

loc_4829BE:
cmp     ds:byte_55A35D, 0
jz      loc_482AD3

loc_4829CB:
mov     edx, ds:dword_55A358
sar     edx, 10h
mov     ecx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
and     eax, 7
cmp     eax, 7          ; switch 8 cases
ja      def_4829EC      ; jumptable 004829EC default case
; jumptable 00482AA6 default case
jmp     jpt_4829EC[eax*4] ; switch jump

loc_4829F3:             ; jumptable 004829EC cases 0,4,6
mov     ds:word_55A356, 0Ah
jmp     def_4829EC      ; jumptable 004829EC default case
; jumptable 00482AA6 default case

loc_482A01:             ; jumptable 004829EC cases 2,5
mov     ds:word_55A356, 6
jmp     def_4829EC      ; jumptable 004829EC default case
; jumptable 00482AA6 default case

loc_482A0F:             ; jumptable 004829EC cases 1,3,7
xor     ebx, ebx
mov     ds:word_55A356, bx
jmp     def_4829EC      ; jumptable 004829EC default case
; jumptable 00482AA6 default case

loc_482A1D:
cmp     bh, 4
jnz     short loc_482A32
mov     eax, 6
mov     word ptr ds:dword_55A358, ax
jmp     loc_482992

loc_482A32:
cmp     bh, 7
jnz     loc_482AD3
cmp     dword ptr [eax+10h], 0
jnz     short loc_482A48
mov     byte ptr [ecx+548h], 82h

loc_482A48:
mov     word ptr ds:dword_55A358, 4
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_482A5E
mov     ds:byte_55A35D, 1

loc_482A5E:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_482A80
xor     cl, cl
mov     ds:byte_55A35D, cl
xor     esi, esi
mov     word ptr ds:dword_55A358+2, si
xor     edi, edi
mov     ds:word_55A356, di
jmp     short loc_482AD3

loc_482A80:
cmp     ds:byte_55A35D, 0
jz      short loc_482AD3
mov     edx, ds:dword_55A358
sar     edx, 10h
mov     ecx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
and     eax, 7
cmp     eax, 7          ; switch 8 cases
ja      short def_4829EC ; jumptable 004829EC default case
; jumptable 00482AA6 default case
jmp     jpt_482AA6[eax*4] ; switch jump

loc_482AAD:             ; jumptable 00482AA6 cases 0,4,6
mov     ds:word_55A356, 16h
jmp     short def_4829EC ; jumptable 004829EC default case
; jumptable 00482AA6 default case

loc_482AB8:             ; jumptable 00482AA6 cases 2,5
mov     ds:word_55A356, 0Ah
jmp     short def_4829EC ; jumptable 004829EC default case
; jumptable 00482AA6 default case

loc_482AC3:             ; jumptable 00482AA6 cases 1,3,7
xor     edx, edx
mov     ds:word_55A356, dx

def_4829EC:             ; jumptable 004829EC default case
inc     word ptr ds:dword_55A358+2 ; jumptable 00482AA6 default case

loc_482AD3:
mov     al, byte ptr ds:dword_55A358
mov     byte ptr ds:dword_5F84CB+1, al
mov     al, byte ptr ds:word_55A356
mov     byte ptr ds:dword_5F84CB+2, al
jmp     loc_48243D
sub_4828FA endp




sub_482AEC proc near
push    ecx
push    edx
mov     edx, [eax+2Ch]
mov     ecx, [eax+30h]
cmp     dword ptr [eax+10h], 0
jnz     short loc_482B01
mov     byte ptr [edx+0Dh], 1
inc     byte ptr [edx+0Eh]

loc_482B01:
cmp     dword ptr [eax+10h], 122h
jnz     short loc_482B15
mov     eax, edx
call    sub_4DE336
mov     byte ptr [ecx+0Fh], 1

loc_482B15:
pop     edx
pop     ecx
retn
sub_482AEC endp




sub_482B18 proc near
xor     ah, ah
mov     byte ptr ds:dword_5F84CB+1, ah
mov     byte ptr ds:dword_5F84CB+2, ah
retn
sub_482B18 endp




sub_482B27 proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 5
mov     ds:byte_77EA5F, al
mov     word ptr ds:dword_77EA4E+2, 400h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 1BE0h
mov     word ptr ds:dword_77EA5A, 800h
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_482B27 endp




sub_482B79 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, ds:dword_77E6DC
lea     eax, [edi+38h]
mov     ds:dword_77E6DC, eax
mov     esi, eax
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 4
mov     edx, esi
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
add     eax, offset unk_55A334
mov     ebx, 4
mov     edx, edi
call    sub_4EECEF
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset unk_55A31C
mov     ebx, 3
mov     edx, esi
call    sub_4EECEF
push    0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2
mov     eax, edx
call    sub_4F892F
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, edi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
jmp     loc_48243D
sub_482B79 endp




sub_482C19 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_482C1F[edx*4]
pop     edx
retn
sub_482C19 endp




sub_482C28 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+5]
test    al, al
jbe     short loc_482C43
cmp     al, 1
jz      short loc_482C55
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_482C43:
mov     edx, 80h
mov     eax, 8
call    sub_4DC979
inc     byte ptr [esi+5]

loc_482C55:
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      loc_482D21
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51BF4C
mov     dword ptr [esi+0A4h], offset unk_51C140
mov     dword ptr [esi+0Ch], 0
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 400h
mov     word ptr [ecx+53Ah], 0FFFFh
mov     word ptr [ecx+53Ch], 1900h
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
mov     byte ptr [ecx+548h], 0
inc     byte ptr [esi+4]
mov     byte ptr [esi+5], 0
mov     byte ptr [esi+7], 0
call    sub_49DBD1
call    sub_49DECF

loc_482D21:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_482C28 endp

db 8Dh, 40h, 0
jpt_482D64 dd offset loc_482D6B ; jump table for switch statement
dd offset loc_482D73
dd offset loc_482D8D
dd offset loc_482DB8
dd offset loc_482EB6



sub_482D3D proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
call    sub_47EBCB
test    eax, eax
jz      short loc_482D54
mov     byte ptr [edx+6], 1

loc_482D54:
mov     al, [edx+5]
cmp     al, 4           ; switch 5 cases
ja      def_482D64      ; jumptable 00482D64 default case
and     eax, 0FFh
jmp     jpt_482D64[eax*4] ; switch jump

loc_482D6B:             ; jumptable 00482D64 case 0
inc     byte ptr [ecx+9]

loc_482D6E:
inc     byte ptr [edx+5]
jmp     short loc_482DAA

loc_482D73:             ; jumptable 00482D64 case 1
call    sub_436868
or      byte ptr [ecx+0BDh], 20h
mov     byte ptr [edx+6], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0
jmp     short loc_482D6E

loc_482D8D:             ; jumptable 00482D64 case 2
mov     eax, edx
call    sub_483029
mov     eax, edx
call    sub_483245
mov     bh, [edx+6]
cmp     bh, 1
jnz     short loc_482DAA
add     [edx+4], bh

loc_482DA6:
mov     byte ptr [edx+5], 0

loc_482DAA:
call    sub_49DBD1

def_482D64:             ; jumptable 00482D64 default case
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn

loc_482DB8:             ; jumptable 00482D64 case 3
call    sub_4D8ECC
test    eax, eax
jz      short loc_482DAA
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_51C150
mov     dword ptr [edx+0A4h], offset unk_51C3B4
and     byte ptr [ecx], 0FDh
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 0FE00h
mov     word ptr [ecx+53Ah], 0FFFFh
mov     word ptr [ecx+53Ch], 1900h
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
mov     word ptr [ecx+542h], 940h
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 30h ; '0'
mov     ecx, [edx+24h]
mov     word ptr [ecx+14h], 0FE40h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 1978h
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
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 140h
mov     word ptr [ecx+58h], 0
inc     byte ptr [edx+5]
mov     byte ptr [edx+7], 0
jmp     loc_482DAA

loc_482EB6:             ; jumptable 00482D64 case 4
cmp     byte ptr [edx+8], 0FFh
jz      short loc_482EDF
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     bh, [edx+6]
cmp     bh, 1
jnz     loc_482DAA
mov     byte ptr [edx+6], 2
add     [edx+4], bh
jmp     loc_482DA6

loc_482EDF:
inc     byte ptr [edx+4]
jmp     loc_482DA6
sub_482D3D endp




sub_482EE7 proc near
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 1
jb      short loc_482F01
jbe     short loc_482F16
cmp     al, 2
jz      loc_482FB8
pop     edi
pop     edx
pop     ecx
retn

loc_482F01:
test    al, al
jnz     loc_483008
mov     eax, [ecx+28h]
call    sub_4DE2F6
jmp     loc_482FEF

loc_482F16:
mov     al, [ecx+5]
test    al, al
jbe     short loc_482F29

loc_482F1D:
cmp     al, 1
jz      loc_482FEF
pop     edi
pop     edx
pop     ecx
retn

loc_482F29:
call    sub_4E1D8A
mov     edx, 80h
mov     eax, 76h ; 'v'
call    sub_4DC979
call    sub_4D8EB1
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0FE00h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1900h
mov     ds:dword_5F888C, 0FE000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 19000000h
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 940h
mov     ds:word_5F88A8, di
xor     ah, ah
mov     ds:byte_5F88AC, ah

loc_482FB1:
inc     byte ptr [ecx+5]
pop     edi
pop     edx
pop     ecx
retn

loc_482FB8:
mov     al, [ecx+5]
test    al, al
ja      loc_482F1D
call    sub_4E1D8A
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
call    sub_4D8EB1
xor     eax, eax
call    sub_4834D4
mov     eax, offset byte_5F8364
call    sub_48351C
jmp     short loc_482FB1

loc_482FEF:
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     byte ptr [ecx], 0

loc_483008:
pop     edi
pop     edx
pop     ecx
retn
sub_482EE7 endp

db 90h
jpt_483047 dd offset loc_48304E ; jump table for switch statement
dd offset loc_483062
dd offset loc_4830E6
dd offset loc_4830F5
dd offset loc_48316E
dd offset loc_4831E7
dd offset loc_4831F2



sub_483029 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
xor     ebx, ebx
mov     ds:word_57096A, bx
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_483047      ; jumptable 00483047 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_483047[ecx*4] ; switch jump

loc_48304E:             ; jumptable 00483047 case 0
cmp     dword ptr [edx+10h], 3Ch ; '<'
jnz     def_483047      ; jumptable 00483047 default case
inc     al
mov     [edx+0Ah], al
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_483062:             ; jumptable 00483047 case 1
mov     cx, word ptr ds:dword_5F83B8+2
and     ch, 0Fh
cmp     cx, 400h
jge     short loc_4830D3
or      ds:byte_5F8421, 10h
mov     eax, 400h
mov     word ptr ds:dword_5F889A+2, ax
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1900h
mov     ds:dword_5F888C, 4000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 19000000h
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     word ptr ds:dword_5F88A4+2, ax
mov     ds:word_5F88A8, si

loc_4830CB:
inc     byte ptr [edx+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4830D3:
mov     dx, ds:word_5F848C

loc_4830DA:
mov     ds:word_57096A, dx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4830E6:             ; jumptable 00483047 case 2
cmp     dword ptr [edx+10h], 82h
jnz     def_483047      ; jumptable 00483047 default case
jmp     short loc_4830CB

loc_4830F5:             ; jumptable 00483047 case 3
mov     ecx, ds:dword_5F8376
sar     ecx, 10h
cmp     ecx, 0FFFFFE40h
jge     short loc_483162
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0FE40h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1900h
mov     ds:dword_5F888C, 0FE400000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 19000000h
mov     word ptr ds:dword_5F88A4, bx
mov     word ptr ds:dword_5F88A4+2, 400h
mov     ds:word_5F88A8, bx
jmp     loc_4830CB

loc_483162:
mov     dx, ds:word_5F8488
jmp     loc_4830DA

loc_48316E:             ; jumptable 00483047 case 4
mov     cx, word ptr ds:dword_5F83B8+2
and     ch, 0Fh
cmp     cx, 800h
jle     short loc_4831DB
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0FE40h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1900h
mov     ds:dword_5F888C, 0FE400000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 19000000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, ax
jmp     loc_4830CB

loc_4831DB:
mov     dx, ds:word_5F848E
jmp     loc_4830DA

loc_4831E7:             ; jumptable 00483047 case 5
inc     byte ptr ds:dword_5F836C+1
jmp     loc_4830CB

loc_4831F2:             ; jumptable 00483047 case 6
cmp     byte ptr ds:dword_5F836C+1, 0
jnz     short def_483047 ; jumptable 00483047 default case
cmp     byte ptr [edx+0Bh], 5
jnz     short def_483047 ; jumptable 00483047 default case
mov     bh, ds:byte_5F8421
and     bh, 9Fh
mov     ds:byte_5F8421, bh
mov     cl, bh
or      cl, 40h
mov     ds:byte_5F8421, cl
mov     eax, 240006h
call    sub_4D8E42
inc     byte ptr [edx+5]

def_483047:             ; jumptable 00483047 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_483029 endp

jpt_48325F dd offset loc_483266 ; jump table for switch statement
dd offset loc_48327F
dd offset loc_483337
dd offset loc_4833C5
dd offset loc_4833D1
dd offset def_48325F



sub_483245 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebx, eax
mov     ecx, [eax+24h]
mov     al, [eax+0Bh]
cmp     al, 5           ; switch 6 cases
ja      def_48325F      ; jumptable 0048325F default case, case 5
xor     edx, edx
mov     dl, al
jmp     jpt_48325F[edx*4] ; switch jump

loc_483266:             ; jumptable 0048325F case 0
cmp     dword ptr [ebx+10h], 3Ch ; '<'
jnz     def_48325F      ; jumptable 0048325F default case, case 5
mov     eax, offset unk_51BF10
call    sub_49DB4D
jmp     loc_48332F

loc_48327F:             ; jumptable 0048325F case 1
mov     esi, [ebx+10h]
sub     esi, 3Ch ; '<'
mov     edi, 20h ; ' '
sub     edi, esi
mov     ebp, edi
shl     ebp, 0Ah
mov     eax, esi
shl     eax, 3
add     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
lea     edx, [eax+ebp]
mov     eax, edx
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     [ecx+14h], ax
mov     eax, edi
shl     eax, 5
add     eax, edi
shl     eax, 8
imul    edx, esi, 1C7Bh
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     [ecx+18h], ax
mov     eax, dword ptr ds:unk_564C32[esi*2]
sar     eax, 10h
shl     eax, 9
neg     eax
sar     eax, 0Ch
movsx   edx, ax
mov     eax, ecx
call    sub_42C592
cwde
add     eax, edx
mov     [ecx+16h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
cmp     dword ptr [ebx+10h], 5Ch ; '\'

loc_483322:             ; jumptable 0048325F default case, case 5
jnz     def_48325F
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Ah], 0

loc_48332F:
inc     byte ptr [ebx+0Bh]
jmp     def_48325F      ; jumptable 0048325F default case, case 5

loc_483337:             ; jumptable 0048325F case 2
mov     esi, [ebx+10h]
sub     esi, 5Ch ; '\'
mov     edi, 14h
sub     edi, esi
mov     ebp, edi
shl     ebp, 3
add     ebp, edi
shl     ebp, 2
sub     ebp, edi
shl     ebp, 2
mov     eax, esi
shl     eax, 6
mov     edx, eax
shl     eax, 3
sub     eax, edx
neg     eax
lea     edx, [eax+ebp]
mov     ebp, 14h
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
mov     [ecx+14h], ax
imul    edx, edi, 1C7Bh
imul    esi, 1978h
add     edx, esi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
mov     [ecx+18h], ax
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
cmp     dword ptr [ebx+10h], 70h ; 'p'
jmp     loc_483322

loc_4833C5:             ; jumptable 0048325F case 3
cmp     dword ptr [ebx+10h], 0E6h
jmp     loc_483322

loc_4833D1:             ; jumptable 0048325F case 4
cmp     dword ptr [ebx+10h], 104h
jnz     short def_48325F ; jumptable 0048325F default case, case 5
inc     al
mov     [ebx+0Bh], al

def_48325F:             ; jumptable 0048325F default case, case 5
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx

locret_4833E5:
retn
sub_483245 endp




sub_4833E6 proc near
push    ecx
push    edx
push    esi
mov     edx, eax
mov     ecx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     short loc_48340E
or      ds:byte_5F8364, 2
mov     ds:byte_5F88AC, 88h
mov     eax, 1
call    sub_4834D4

loc_48340E:
mov     esi, [edx+10h]
cmp     esi, 14h
jz      short loc_483420
cmp     esi, 32h ; '2'
jz      short loc_483420
cmp     esi, 50h ; 'P'
jnz     short loc_483427

loc_483420:
mov     eax, 2
jmp     short loc_48343B

loc_483427:
cmp     esi, 28h ; '('
jz      short loc_483436
cmp     esi, 46h ; 'F'
jz      short loc_483436
cmp     esi, 64h ; 'd'
jnz     short loc_483440

loc_483436:
mov     eax, 1

loc_48343B:
call    sub_4834D4

loc_483440:
mov     eax, ecx
call    sub_48351C
pop     esi
pop     edx
pop     ecx
retn
sub_4833E6 endp




sub_48344B proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48346C
and     ds:byte_5F8364, 0FDh
xor     dh, dh
mov     byte ptr ds:dword_5F84CB+1, dh
mov     byte ptr ds:dword_5F84CB+2, dh
call    sub_4834C4

loc_48346C:
pop     edx
retn
sub_48344B endp




sub_48346E proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_48349F

loc_483476:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, offset unk_572D5C
call    sub_4DE3EA
inc     edx
cmp     edx, 40h ; '@'
jl      short loc_483476
mov     eax, offset unk_51BF24
call    sub_49DB4D

loc_48349F:
pop     edx
retn
sub_48346E endp




sub_4834A1 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4834AF
call    sub_4834C4

loc_4834AF:
cmp     byte ptr [edx+7], 1
jnz     short loc_4834C2
mov     eax, offset unk_51BF38
call    sub_49DB4D
inc     byte ptr [edx+7]

loc_4834C2:
pop     edx

locret_4834C3:
retn
sub_4834A1 endp




sub_4834C4 proc near
push    edx
mov     edx, [eax+24h]
inc     byte ptr [edx+8]
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 0
pop     edx
retn
sub_4834C4 endp




sub_4834D4 proc near
push    edx
xor     edx, edx
mov     word ptr ds:dword_55A362+2, dx
mov     word ptr ds:dword_55A362, dx
mov     ds:word_55A360, dx
mov     ds:word_55A36A, dx
mov     ds:word_55A368, dx
mov     ds:word_55A366, dx
mov     edx, ds:off_51C436[eax*4]
mov     ds:dword_55A36C, edx
mov     eax, ds:off_51C442[eax*4]
mov     ds:dword_55A370, eax
pop     edx
retn
sub_4834D4 endp




sub_48351C proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, offset word_55A360
mov     bx, ds:word_55A360
mov     word ptr ds:dword_55A362, bx
mov     ebx, ds:dword_55A362
sar     ebx, 10h
mov     ecx, ds:dword_55A36C
mov     bx, [ecx+ebx*2+2]
cmp     bx, 3FFFh
jb      short loc_483563
jbe     short loc_483567
cmp     bx, 7FFFh
jnz     short loc_483563
xor     ebx, ebx
mov     word ptr ds:dword_55A362+2, bx
jmp     short loc_483567

loc_483563:
inc     word ptr [eax+4]

loc_483567:
mov     ecx, [eax+2]
sar     ecx, 10h
mov     ebx, [eax+0Ch]
mov     bx, [ebx+ecx*2]
mov     [eax], bx
mov     bx, [eax+6]
mov     [eax+8], bx
mov     ecx, [eax+8]
sar     ecx, 10h
mov     ebx, [eax+10h]
mov     bx, [ebx+ecx*2+2]
cmp     bx, 3FFFh
jb      short loc_4835A5
jbe     short loc_4835A9
cmp     bx, 7FFFh
jnz     short loc_4835A5
mov     word ptr [eax+0Ah], 0
jmp     short loc_4835A9

loc_4835A5:
inc     word ptr [eax+0Ah]

loc_4835A9:
mov     ebx, [eax+8]
sar     ebx, 10h
mov     ecx, [eax+10h]
mov     bx, [ecx+ebx*2]
mov     [eax+6], bx
mov     bl, [eax]
mov     [edx+168h], bl
mov     al, [eax+6]
mov     [edx+169h], al
pop     edx
pop     ecx
pop     ebx
retn
sub_48351C endp




sub_4835CF proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_4835D5[edx*4]
pop     edx
retn
sub_4835CF endp

db 90h
jpt_48362A dd offset loc_483631 ; jump table for switch statement
dd offset loc_483636
dd offset loc_48366C
dd offset loc_4836FA
dd offset loc_483734
dd offset loc_48378D
dd offset loc_4837BF
dd offset loc_4837F5
dd offset loc_483830
dd offset loc_483850
dd offset loc_48386C
dd offset loc_483883



sub_48360F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+6]
cmp     al, 0Bh         ; switch 12 cases
ja      def_48362A      ; jumptable 0048362A default case
xor     edx, edx
mov     dl, al
jmp     jpt_48362A[edx*4] ; switch jump

loc_483631:             ; jumptable 0048362A case 0
inc     al
mov     [ecx+6], al

loc_483636:             ; jumptable 0048362A case 1
mov     eax, esi
call    sub_4B55D5
test    eax, eax
jz      def_48362A      ; jumptable 0048362A default case
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51D0A8
mov     dword ptr [ecx+0A4h], offset unk_51D098
inc     byte ptr [ecx+6]

loc_48366C:             ; jumptable 0048362A case 2
mov     byte ptr [esi+8], 3
mov     byte ptr [esi+9], 1
or      byte ptr [esi+0BDh], 10h
mov     dword ptr [esi+528h], 0EE180000h
mov     dword ptr [esi+52Ch], 0FFFF0000h
mov     dword ptr [esi+530h], 5970000h
lea     edx, [esi+538h]
lea     eax, [esi+528h]
call    sub_4DD57B
mov     word ptr [esi+540h], 0
mov     word ptr [esi+542h], 0
mov     word ptr [esi+544h], 0
mov     byte ptr [esi+548h], 30h ; '0'
mov     eax, ds:dword_55A374
mov     byte ptr [eax+4], 2
mov     byte ptr [eax+8], 0
mov     word ptr [eax+56h], 0E77h
mov     eax, ds:dword_55A378
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+8], 0
mov     word ptr [eax+56h], 0ECEh

loc_4836F2:
inc     byte ptr [ecx+6]
jmp     def_48362A      ; jumptable 0048362A default case

loc_4836FA:             ; jumptable 0048362A case 3
cmp     byte ptr ds:dword_77E784+1, 2
jnz     def_48362A      ; jumptable 0048362A default case
inc     al
mov     [ecx+6], al
mov     byte ptr [ecx+7], 1
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51D118
mov     dword ptr [ecx+0A4h], offset unk_51D0F0

loc_483734:             ; jumptable 0048362A case 4
mov     eax, [ecx+0A4h]
mov     dl, [eax+1]
cmp     dl, 1
jnz     def_48362A      ; jumptable 0048362A default case
add     [ecx+6], dl
mov     dword ptr [esi+528h], 0EE180000h
mov     dword ptr [esi+52Ch], 0FFFF0000h
mov     dword ptr [esi+530h], 5970000h
lea     edx, [esi+538h]
lea     eax, [esi+528h]
call    sub_4DD57B
mov     word ptr [esi+542h], 4E7h
mov     dword ptr [ecx+0Ch], 0Fh
jmp     def_48362A      ; jumptable 0048362A default case

loc_48378D:             ; jumptable 0048362A case 5
mov     edi, [ecx+0Ch]
dec     edi
mov     [ecx+0Ch], edi
test    edi, edi
jge     def_48362A      ; jumptable 0048362A default case
mov     edx, 1
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+6]
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 3
mov     word ptr [eax+0Ah], 0
jmp     def_48362A      ; jumptable 0048362A default case

loc_4837BF:             ; jumptable 0048362A case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4837F5 ; jumptable 0048362A case 7
mov     edx, 2
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+6]
mov     eax, ds:dword_55A374
mov     byte ptr [eax+9], 1
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 0
mov     word ptr [eax+0Ah], 0

loc_4837F5:             ; jumptable 0048362A case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_483830 ; jumptable 0048362A case 8
call    sub_49DF64
mov     edx, 3
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+6]
mov     eax, ds:dword_55A374
mov     byte ptr [eax+9], 0
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 3
mov     word ptr [eax+0Ah], 0

loc_483830:             ; jumptable 0048362A case 8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_483850 ; jumptable 0048362A case 9
call    sub_49DF64
inc     byte ptr [ecx+6]
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 4
mov     word ptr [eax+0Ah], 0

loc_483850:             ; jumptable 0048362A case 9
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jnz     short def_48362A ; jumptable 0048362A default case
mov     edx, 4
xor     eax, eax
call    sub_4A0E24
jmp     loc_4836F2

loc_48386C:             ; jumptable 0048362A case 10
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_48362A ; jumptable 0048362A default case
inc     al
mov     [ecx+6], al
mov     dword ptr [ecx+0Ch], 8
jmp     short def_48362A ; jumptable 0048362A default case

loc_483883:             ; jumptable 0048362A case 11
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     short def_48362A ; jumptable 0048362A default case
mov     eax, esi
call    sub_4B565A
mov     byte ptr [ecx], 0
mov     byte ptr ds:dword_77E954, 1
mov     eax, 3
call    sub_47E8B8
call    sub_484D64
xor     eax, eax
call    sub_484CFC

def_48362A:             ; jumptable 0048362A default case
cmp     byte ptr [ecx+6], 1
jbe     short loc_4838CB
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_4838CB
mov     edx, eax
mov     eax, ecx
call    dword ptr [edx+4]

loc_4838CB:
mov     dh, [ecx+6]
cmp     dh, 2
jbe     loc_484255
cmp     dh, 0Bh
jnb     loc_484255
call    sub_47EBCB
test    eax, eax
jz      loc_484255
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
xor     ebx, ebx
xor     edx, edx
mov     eax, 108h
call    sub_4D89E4
mov     byte ptr [ecx+6], 0Bh
mov     dword ptr [ecx+0Ch], 1
mov     eax, 0Ah
call    sub_47E8B8
mov     dword ptr [esi+528h], 0EE180000h
mov     dword ptr [esi+52Ch], 0FFFF0000h
mov     dword ptr [esi+530h], 5970000h
lea     edx, [esi+538h]
lea     eax, [esi+528h]
call    sub_4DD57B
mov     word ptr [esi+542h], 4E7h
jmp     loc_484255
sub_48360F endp

db 8Bh, 0C0h
jpt_4839A4 dd offset loc_4839AB ; jump table for switch statement
dd offset loc_4839AB
dd offset loc_483A0B
dd offset loc_483A9C
dd offset loc_483B47
dd offset loc_483B92
dd offset loc_483BCB
dd offset loc_483BDB



sub_483983 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     [esp+1Ch+var_1C], offset byte_5F8364
mov     al, [eax+6]
cmp     al, 7           ; switch 8 cases
ja      def_4839A4      ; jumptable 004839A4 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4839A4[edx*4] ; switch jump

loc_4839AB:             ; jumptable 004839A4 cases 0,1
mov     eax, [esp+1Ch+var_1C]
call    sub_4B55D5
test    eax, eax
jz      def_4839A4      ; jumptable 004839A4 default case
add     byte ptr [ebp+6], 2
mov     byte ptr [ebp+7], 0Ah
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+8], 3
mov     byte ptr [eax+9], 1
or      byte ptr [eax+0BDh], 10h
mov     edi, eax
lea     edi, [edi+538h]
mov     esi, eax
lea     esi, [esi+14h]
movsd
movsd
mov     edi, eax
lea     edi, [edi+528h]
mov     esi, eax
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     edi, eax
lea     edi, [edi+540h]
mov     esi, eax
lea     esi, [esi+54h]
movsd
movsd
mov     byte ptr [eax+548h], 30h ; '0'

loc_483A0B:             ; jumptable 004839A4 case 2
mov     bl, [ebp+7]
test    bl, bl
jnz     loc_483A90
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+14h]
sar     edx, 10h
mov     eax, [esp+1Ch+var_1C]
call    sub_42C592
cmp     edx, eax
jnz     def_4839A4      ; jumptable 004839A4 default case
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     eax, [esp+1Ch+var_1C]
add     eax, 14h
mov     ecx, 20h ; ' '
mov     edx, offset unk_51D5C0
call    sub_4DE552
test    ax, ax
jnz     short loc_483A70
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+548h], 30h ; '0'
inc     byte ptr [ebp+6]
mov     edx, 1Fh

loc_483A64:
xor     eax, eax
call    sub_4A0E24
jmp     def_4839A4      ; jumptable 004839A4 default case

loc_483A70:
mov     edx, [esp+1Ch+var_1C]
mov     byte ptr [edx+548h], 0Dh
add     ax, [edx+542h]
and     ah, 0Fh
mov     [edx+542h], ax
jmp     def_4839A4      ; jumptable 004839A4 default case

loc_483A90:
mov     bh, bl
dec     bh
mov     [ebp+7], bh
jmp     def_4839A4      ; jumptable 004839A4 default case

loc_483A9C:             ; jumptable 004839A4 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4839A4      ; jumptable 004839A4 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 10Eh
call    sub_4D89E4
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51D248
mov     dword ptr [ebp+0A4h], offset unk_51D230
mov     ds:dword_5F888C, 0F6400000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 13C90000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
mov     word ptr ds:dword_5F88A4+2, 8C0h
mov     eax, ds:dword_55A380
mov     byte ptr [eax+9], 1
mov     eax, ds:dword_55A380
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A380
mov     word ptr [eax+56h], 600h
inc     byte ptr [ebp+6]
mov     byte ptr [ebp+7], 0Ah
jmp     def_4839A4      ; jumptable 004839A4 default case

loc_483B47:             ; jumptable 004839A4 case 4
mov     edx, [ebp+0A4h]
mov     bl, [edx+1]
cmp     bl, 1
jnz     short loc_483B7E
mov     cl, [ebp+7]
test    cl, cl
jnz     short loc_483B75
mov     ax, word ptr ds:dword_5F88A4+2
add     eax, 20h ; ' '
and     ah, 0Fh
mov     word ptr ds:dword_5F88A4+2, ax
jmp     def_4839A4      ; jumptable 004839A4 default case

loc_483B75:
mov     ch, cl
sub     ch, bl
mov     [ebp+7], ch
jmp     short def_4839A4 ; jumptable 004839A4 default case

loc_483B7E:
cmp     byte ptr [edx], 0FFh
jnz     short def_4839A4 ; jumptable 004839A4 default case
inc     al
mov     [ebp+6], al
mov     edx, 20h ; ' '
jmp     loc_483A64

loc_483B92:             ; jumptable 004839A4 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4839A4 ; jumptable 004839A4 default case
add     al, 2
mov     [ebp+6], al
xor     ebx, ebx
mov     word ptr ds:dword_5F88A4+2, bx
mov     byte ptr ds:dword_77E954, 1

loc_483BB0:
mov     eax, 4
call    sub_47E8B8
call    sub_484D64
mov     eax, 1
call    sub_484CFC
jmp     short def_4839A4 ; jumptable 004839A4 default case

loc_483BCB:             ; jumptable 004839A4 case 6
inc     al
mov     [ebp+6], al
xor     edx, edx
mov     word ptr ds:dword_5F88A4+2, dx
jmp     short loc_483BB0

loc_483BDB:             ; jumptable 004839A4 case 7
mov     byte ptr [ebp+0], 0
mov     eax, offset byte_5F8364
call    sub_4B565A

def_4839A4:             ; jumptable 004839A4 default case
mov     ch, [ebp+6]
cmp     ch, 3
jbe     short loc_483C08
cmp     ch, 5
jnb     short loc_483C08
mov     eax, [ebp+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_483C08
mov     edx, eax
mov     eax, ebp
call    dword ptr [edx+4]

loc_483C08:
mov     dh, [ebp+6]
cmp     dh, 1
jbe     loc_483C85
cmp     dh, 6
jnb     short loc_483C85
call    sub_47EBCB
test    eax, eax
jz      short loc_483C85
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
xor     ebx, ebx
xor     edx, edx
mov     eax, 108h
call    sub_4D89E4
cmp     byte ptr [ebp+6], 4
jnb     short loc_483C50
mov     byte ptr [ebp+6], 6
jmp     short loc_483C54

loc_483C50:
mov     byte ptr [ebp+6], 5

loc_483C54:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+528h], 0F6400000h
mov     dword ptr [eax+52Ch], 0FFFF0000h
mov     dword ptr [eax+530h], 13C90000h
lea     edx, [eax+538h]
add     eax, 528h
call    sub_4DD57B

loc_483C85:
add     esp, 4
jmp     loc_484254
sub_483983 endp

db 8Bh, 0C0h
jpt_483CE5 dd offset loc_483CEC ; jump table for switch statement
dd offset loc_483D5A
dd offset loc_483D79
dd offset loc_483E93
dd offset loc_483EE0
dd offset loc_483F2E
dd offset loc_483F66
dd offset loc_483F9A
dd offset loc_483FDF
dd offset loc_484030
dd offset loc_4840EC
dd offset loc_484105
dd offset loc_484132



sub_483CC3 proc near

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
push    ebp
sub     esp, 1Ch
mov     ebp, eax
mov     [esp+34h+var_1C], offset byte_5F8364
mov     al, [eax+6]
cmp     al, 0Ch         ; switch 13 cases
ja      def_483CE5      ; jumptable 00483CE5 default case
xor     edx, edx
mov     dl, al
jmp     jpt_483CE5[edx*4] ; switch jump

loc_483CEC:             ; jumptable 00483CE5 case 0
mov     edx, ds:dword_55A378
lea     edi, [esp+34h+var_24]
lea     esi, [edx+14h]
movsd
movsd
mov     eax, [edx+12h]
sar     eax, 10h
mov     [esp+34h+var_34], eax
mov     eax, [edx+14h]
sar     eax, 10h
sub     eax, 50h ; 'P'
mov     [esp+34h+var_30], eax
mov     eax, [edx+16h]
sar     eax, 10h
mov     [esp+34h+var_2C], eax
mov     ecx, ds:dword_77E964
add     ecx, 61h ; 'a'
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esp+34h+var_24]
call    sub_4DDDB4
lea     ebx, [eax+20h]
mov     edx, 12Ch
mov     eax, esp
call    sub_42AAD8
or      ds:byte_5F8421, 40h
and     ds:byte_5F8364, 0FDh

loc_483D52:
inc     byte ptr [ebp+6]
jmp     def_483CE5      ; jumptable 00483CE5 default case

loc_483D5A:             ; jumptable 00483CE5 case 1
call    sub_42ABA2
test    eax, eax
jnz     def_483CE5      ; jumptable 00483CE5 default case
inc     byte ptr [ebp+6]
mov     edx, 2Dh ; '-'
call    sub_4A0E24
jmp     def_483CE5      ; jumptable 00483CE5 default case

loc_483D79:             ; jumptable 00483CE5 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_483CE5      ; jumptable 00483CE5 default case
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_483CE5      ; jumptable 00483CE5 default case
call    sub_42A9A2
and     ds:byte_5F8421, 0BFh
inc     byte ptr [ebp+6]
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51D2DC
mov     dword ptr [ebp+0A4h], offset unk_51D2B4
mov     edx, 2Eh ; '.'
xor     eax, eax
call    sub_4A0E24
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     ds:dword_5F888C, 0F4940000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 48C0000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
xor     ecx, ecx
mov     word ptr ds:dword_5F88A4, cx
mov     word ptr ds:dword_5F88A4+2, 82Ch
mov     ds:word_5F88A8, cx
mov     ds:byte_5F88AC, 30h ; '0'
call    sub_484D64
mov     eax, 1
call    sub_484CFC
mov     eax, 606h
call    sub_47EA91
mov     eax, 607h
call    sub_47EA91
mov     eax, ds:dword_55A380
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+8], 0
mov     eax, ds:dword_55A384
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+8], 0
mov     eax, ds:dword_55A378
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+8], 0
jmp     def_483CE5      ; jumptable 00483CE5 default case

loc_483E93:             ; jumptable 00483CE5 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_483CE5      ; jumptable 00483CE5 default case
inc     al
mov     [ebp+6], al
or      ds:byte_5F8364, 2
call    sub_49DF64
mov     eax, ds:dword_55A380
mov     byte ptr [eax+9], 1
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     edx, ds:dword_55A380

loc_483ED5:
mov     dl, [edx+1]
mov     [eax+0Ch], dl
jmp     def_483CE5      ; jumptable 00483CE5 default case

loc_483EE0:             ; jumptable 00483CE5 case 4
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      def_483CE5      ; jumptable 00483CE5 default case
mov     eax, 606h
call    sub_47EA91
inc     byte ptr [ebp+6]
mov     edx, 2Fh ; '/'
xor     eax, eax
call    sub_4A0E24
mov     eax, ds:dword_55A380
mov     byte ptr [eax+9], 3
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A378

loc_483F1F:
mov     byte ptr [eax+9], 0

loc_483F23:
mov     word ptr [eax+0Ah], 0
jmp     def_483CE5      ; jumptable 00483CE5 default case

loc_483F2E:             ; jumptable 00483CE5 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_483CE5      ; jumptable 00483CE5 default case
inc     al
mov     [ebp+6], al
mov     edx, 31h ; '1'
xor     eax, eax
call    sub_4A0E24
mov     eax, ds:dword_55A380
mov     byte ptr [eax+9], 0
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A384
mov     byte ptr [eax+9], 2
jmp     short loc_483F23

loc_483F66:             ; jumptable 00483CE5 case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_483CE5      ; jumptable 00483CE5 default case
inc     al
mov     [ebp+6], al
mov     edx, 33h ; '3'
xor     eax, eax
call    sub_4A0E24
mov     eax, ds:dword_55A380
mov     byte ptr [eax+9], 3
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A384
jmp     short loc_483F1F

loc_483F9A:             ; jumptable 00483CE5 case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_483CE5      ; jumptable 00483CE5 default case
inc     al
mov     [ebp+6], al
mov     eax, ds:dword_55A380
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     edx, ds:dword_55A384
mov     dl, [edx+1]
mov     [eax+0Ch], dl
mov     edx, ds:dword_55A388
mov     dl, [edx+1]
mov     [eax+0Dh], dl
mov     dword ptr [ebp+0Ch], 0C8h
jmp     def_483CE5      ; jumptable 00483CE5 default case

loc_483FDF:             ; jumptable 00483CE5 case 8
mov     ebx, [ebp+0Ch]
dec     ebx
mov     [ebp+0Ch], ebx
cmp     ebx, 8Ch
jnz     short loc_484009
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 1
mov     word ptr [eax+0Ah], 0
mov     edx, ds:dword_55A388
mov     dl, [edx+1]
mov     [eax+0Ch], dl

loc_484009:
cmp     dword ptr [ebp+0Ch], 50h ; 'P'
jnz     def_483CE5      ; jumptable 00483CE5 default case
inc     byte ptr [ebp+6]
mov     eax, ds:dword_55A384
mov     byte ptr [eax+9], 1
mov     word ptr [eax+0Ah], 0
mov     edx, ds:dword_55A388
jmp     loc_483ED5

loc_484030:             ; jumptable 00483CE5 case 9
mov     esi, [ebp+0Ch]
dec     esi
mov     [ebp+0Ch], esi
test    esi, esi
jge     def_483CE5      ; jumptable 00483CE5 default case
call    sub_49DF64
inc     byte ptr [ebp+6]
mov     ds:dword_5F888C, 0F5D70000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 4540000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
mov     word ptr ds:dword_5F83B8+2, 6CCh
mov     eax, 3
call    sub_484DF3
mov     eax, 4
call    sub_484DF3
mov     eax, 1
call    sub_484DF3
mov     dword ptr [ebp+0Ch], 0B4h
xor     ebx, ebx
xor     edx, edx
mov     eax, 10Fh
call    sub_4D89E4
mov     eax, ds:dword_55A388
mov     word ptr [eax+56h], 800h
mov     eax, ds:dword_55A388
or      byte ptr [eax+0Fh], 40h
mov     eax, ds:dword_55A388
mov     byte ptr [eax+9], 1
mov     eax, ds:dword_55A388
mov     byte ptr [eax+0Ah], 0
mov     eax, ds:dword_55A388
mov     byte ptr [eax+0Bh], 0
jmp     short def_483CE5 ; jumptable 00483CE5 default case

loc_4840EC:             ; jumptable 00483CE5 case 10
mov     ecx, [ebp+0Ch]
dec     ecx
mov     [ebp+0Ch], ecx
test    ecx, ecx
jge     short def_483CE5 ; jumptable 00483CE5 default case
mov     word ptr ds:dword_5F88A4+2, 800h
jmp     loc_483D52

loc_484105:             ; jumptable 00483CE5 case 11
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, 5
call    sub_484DF3
mov     byte ptr [ebp+0], 0
xor     eax, eax
call    sub_47E8B8
jmp     short def_483CE5 ; jumptable 00483CE5 default case

loc_484132:             ; jumptable 00483CE5 case 12
call    sub_42A9A2
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr [ebp+0], 0
xor     eax, eax
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2

def_483CE5:             ; jumptable 00483CE5 default case
mov     dl, [ebp+6]
cmp     dl, 2
jbe     short loc_484179
cmp     dl, 0Bh
jnb     short loc_484179
mov     eax, [ebp+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_484179
mov     edx, eax
mov     eax, ebp
call    dword ptr [edx+4]

loc_484179:
cmp     byte ptr [ebp+6], 0Bh
jnb     loc_484251
call    sub_47EBCB
test    eax, eax
jz      loc_484251
mov     eax, 3
call    sub_484DF3
mov     eax, 4
call    sub_484DF3
mov     eax, 1
call    sub_484DF3
mov     eax, 5
call    sub_484DF3
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
xor     ebx, ebx
xor     edx, edx
mov     eax, 108h
call    sub_4D89E4
cmp     byte ptr [ebp+6], 2
jnb     short loc_4841E6
mov     byte ptr [ebp+6], 0Ch
jmp     short loc_4841EA

loc_4841E6:
mov     byte ptr [ebp+6], 0Bh

loc_4841EA:
mov     eax, [esp+34h+var_1C]
mov     byte ptr [eax+8], 3
mov     byte ptr [eax+9], 1
or      byte ptr [eax+0BDh], 10h
mov     dword ptr [eax+528h], 0F5D70000h
mov     dword ptr [eax+52Ch], 0FFFF0000h
mov     dword ptr [eax+530h], 4540000h
lea     edx, [eax+538h]
add     eax, 528h
call    sub_4DD57B
mov     eax, [esp+34h+var_1C]
mov     word ptr [eax+540h], 0
mov     word ptr [eax+542h], 800h
mov     word ptr [eax+544h], 0
mov     byte ptr [eax+548h], 0

loc_484251:
add     esp, 1Ch

loc_484254:
pop     ebp

loc_484255:
pop     edi

loc_484256:
pop     esi

loc_484257:
pop     edx
pop     ecx
pop     ebx
retn
sub_483CC3 endp ; sp-analysis failed

jpt_4842C7 dd offset loc_4842CE ; jump table for switch statement
dd offset loc_48433B
dd offset loc_48435A
dd offset loc_484427
dd offset loc_48444E
dd offset loc_48447A
dd offset loc_4844B1
dd offset loc_4844D4
dd offset loc_484559
dd offset loc_48458B
dd offset loc_4845BD
dd offset loc_48464B
dd offset loc_484671
dd offset loc_4846A8
dd offset loc_4846BC
dd offset loc_4846E2
dd offset loc_484761
dd offset loc_484792



sub_4842A3 proc near

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
push    ebp
sub     esp, 1Ch
mov     ebp, eax
mov     edx, offset byte_5F8364
mov     [esp+34h+var_1C], edx
mov     al, [eax+6]
cmp     al, 11h         ; switch 18 cases
ja      def_4842C7      ; jumptable 004842C7 default case
and     eax, 0FFh
jmp     jpt_4842C7[eax*4] ; switch jump

loc_4842CE:             ; jumptable 004842C7 case 0
mov     edx, ds:dword_55A374
lea     edi, [esp+34h+var_24]
lea     esi, [edx+14h]
movsd
movsd
mov     eax, [edx+12h]
sar     eax, 10h
mov     [esp+34h+var_34], eax
mov     eax, [edx+14h]
sar     eax, 10h
sub     eax, 80h
mov     [esp+34h+var_30], eax
mov     eax, [edx+16h]
sar     eax, 10h
mov     [esp+34h+var_2C], eax
mov     ecx, ds:dword_77E964
sub     ecx, 30h ; '0'
mov     edx, [esp+34h+var_1C]
add     edx, 14h
lea     eax, [esp+34h+var_24]
call    sub_4DDDB4
mov     edx, 140h
mov     esi, esp
mov     ebx, eax
mov     eax, esi
call    sub_42AAD8
mov     eax, [esp+34h+var_1C]
or      byte ptr [eax+0BDh], 40h
and     byte ptr [eax], 0FDh
jmp     loc_4844CC

loc_48433B:             ; jumptable 004842C7 case 1
call    sub_42ABA2
test    eax, eax
jnz     def_4842C7      ; jumptable 004842C7 default case
mov     edx, 5Fh ; '_'
inc     byte ptr [ebp+6]
call    sub_4A0E24
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_48435A:             ; jumptable 004842C7 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4842C7      ; jumptable 004842C7 default case
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      def_4842C7      ; jumptable 004842C7 default case
call    sub_42A9A2
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51D530
mov     dword ptr [ebp+0A4h], offset unk_51D510
or      ds:byte_5F8364, 2
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     ds:dword_5F888C, 18BD0000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 50290000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     word ptr ds:dword_5F88A4+2, 0DE8h
mov     ds:word_5F88A8, si
mov     ds:byte_5F88AC, 30h ; '0'
call    sub_484D64
mov     eax, 0Dh

loc_48441D:
call    sub_484CFC
jmp     loc_4844CC

loc_484427:             ; jumptable 004842C7 case 3
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, 150h
call    sub_4D89E4
inc     byte ptr [ebp+6]
mov     dword ptr [ebp+0Ch], 5Ah ; 'Z'

loc_48444E:             ; jumptable 004842C7 case 4
mov     edx, [ebp+0Ch]
dec     edx
mov     [ebp+0Ch], edx
test    edx, edx
jge     def_4842C7      ; jumptable 004842C7 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 150h
call    sub_4D89E4
inc     byte ptr [ebp+6]
mov     dword ptr [ebp+0Ch], 28h ; '('
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_48447A:             ; jumptable 004842C7 case 5
mov     edi, [ebp+0Ch]
dec     edi
mov     [ebp+0Ch], edi
test    edi, edi
jge     def_4842C7      ; jumptable 004842C7 default case
mov     eax, ds:dword_55A37C
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0

loc_484498:
mov     eax, 609h
call    sub_47E8B8

loc_4844A2:
inc     byte ptr [ebp+6]
mov     dword ptr [ebp+0Ch], 14h
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_4844B1:             ; jumptable 004842C7 case 6
mov     ebx, [ebp+0Ch]
dec     ebx
mov     [ebp+0Ch], ebx
test    ebx, ebx
jge     def_4842C7      ; jumptable 004842C7 default case
mov     edx, 35h ; '5'

loc_4844C5:
xor     eax, eax
call    sub_4A0E24

loc_4844CC:
inc     byte ptr [ebp+6]
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_4844D4:             ; jumptable 004842C7 case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4842C7      ; jumptable 004842C7 default case
and     ds:byte_5F8364, 0FDh
mov     ds:dword_5F888C, 18220000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 4F7C0000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
mov     word ptr ds:dword_5F88A4+2, 9B2h
call    sub_49DF64
xor     ebx, ebx
xor     edx, edx
mov     eax, 150h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 150h
call    sub_4D89E4
call    sub_484D64
mov     eax, 0Eh
jmp     loc_48441D

loc_484559:             ; jumptable 004842C7 case 8
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A37C
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A380
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
jmp     loc_4844A2

loc_48458B:             ; jumptable 004842C7 case 9
mov     ebx, [ebp+0Ch]
dec     ebx
mov     [ebp+0Ch], ebx
test    ebx, ebx
jge     def_4842C7      ; jumptable 004842C7 default case
mov     eax, 609h
call    sub_47E8B8
inc     byte ptr [ebp+6]
mov     dword ptr [ebp+0Ch], 168h
mov     ds:dword_55A3B4, offset unk_51D5C8
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_4845BD:             ; jumptable 004842C7 case 10
mov     ecx, [ebp+0Ch]
test    ecx, ecx
jz      short loc_4845CA
lea     ebx, [ecx-1]
mov     [ebp+0Ch], ebx

loc_4845CA:
mov     esi, [ebp+0Ch]
test    esi, esi
jz      short loc_4845F5
mov     eax, ds:dword_55A3B4
movsx   edx, word ptr [eax]
cmp     edx, esi
jnz     short loc_4845F5
mov     edx, [esp+34h+var_1C]
add     edx, 14h
mov     eax, [eax]
sar     eax, 10h
call    sub_4D8BC3
add     ds:dword_55A3B4, 4

loc_4845F5:
cmp     dword ptr [ebp+0Ch], 96h
jnz     short loc_484622
mov     edx, 36h ; '6'
xor     eax, eax
call    sub_4A0E24
mov     eax, 609h
call    sub_47E8B8
xor     ebx, ebx
xor     edx, edx
mov     eax, 80010015h
call    sub_4D89E4

loc_484622:
cmp     dword ptr [ebp+0Ch], 5Ah ; 'Z'
jg      def_4842C7      ; jumptable 004842C7 default case
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4842C7      ; jumptable 004842C7 default case
inc     byte ptr [ebp+6]
mov     eax, 609h
call    sub_47E8B8
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_48464B:             ; jumptable 004842C7 case 11
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      def_4842C7      ; jumptable 004842C7 default case
mov     eax, 607h
call    sub_47EA91
mov     edx, 37h ; '7'
jmp     loc_4844C5

loc_484671:             ; jumptable 004842C7 case 12
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4842C7      ; jumptable 004842C7 default case
call    sub_49DF64
call    sub_484D64
mov     eax, 0Fh
call    sub_484CFC
inc     byte ptr [ebp+6]
mov     dword ptr [ebp+0Ch], 1Eh
or      ds:byte_5F8364, 2
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_4846A8:             ; jumptable 004842C7 case 13
mov     eax, [ebp+0Ch]
dec     eax
mov     [ebp+0Ch], eax
test    eax, eax
jge     def_4842C7      ; jumptable 004842C7 default case
jmp     loc_484498

loc_4846BC:             ; jumptable 004842C7 case 14
mov     esi, [ebp+0Ch]
dec     esi
mov     [ebp+0Ch], esi
test    esi, esi
jge     def_4842C7      ; jumptable 004842C7 default case
mov     bl, 1
mov     ds:byte_5F88AC, bl
add     [ebp+6], bl
mov     dword ptr [ebp+0Ch], 0Ch
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_4846E2:             ; jumptable 004842C7 case 15
mov     edx, ds:dword_55A374
mov     ebx, ds:dword_5F88A4
sar     ebx, 10h
add     edx, 14h
mov     eax, offset byte_5F8364
add     eax, 538h
mov     ecx, 50h ; 'P'
call    sub_4DE552
mov     ds:word_55A3B8, ax
add     ax, word ptr ds:dword_5F88A4+2
and     ah, 0Fh
mov     word ptr ds:dword_5F88A4+2, ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, offset byte_5F8364
call    sub_4DD47D
mov     ecx, [ebp+0Ch]
dec     ecx
mov     [ebp+0Ch], ecx
test    ecx, ecx
jge     def_4842C7      ; jumptable 004842C7 default case
mov     edx, 39h ; '9'
xor     eax, eax
call    sub_4A0E24
mov     ds:byte_5F88AC, 32h ; '2'
mov     word ptr ds:dword_5F88A4+2, 800h
jmp     loc_4844CC

loc_484761:             ; jumptable 004842C7 case 16
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short def_4842C7 ; jumptable 004842C7 default case
mov     eax, 607h
call    sub_47EA91
mov     eax, edx
call    sub_4B565A
mov     byte ptr [ebp+0], 0
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
jmp     short loc_4847BA

loc_484792:             ; jumptable 004842C7 case 17
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short def_4842C7 ; jumptable 004842C7 default case
mov     eax, 607h
call    sub_47EA91
call    sub_42A9A2
mov     eax, edx
call    sub_4B565A
mov     byte ptr [ebp+0], 0

loc_4847BA:
call    sub_484D64
mov     eax, 6
call    sub_47E8B8
mov     eax, 0Bh
call    sub_47E8B8
mov     eax, 10h
call    sub_484CFC

def_4842C7:             ; jumptable 004842C7 default case
mov     ah, [ebp+6]
cmp     ah, 2
jbe     short loc_4847FC
cmp     ah, 10h
jnb     short loc_4847FC
mov     eax, [ebp+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_4847FC
mov     edx, eax
mov     eax, ebp
call    dword ptr [edx+4]

loc_4847FC:
cmp     byte ptr [ebp+6], 10h
jnb     loc_484251
call    sub_47EBCB
test    eax, eax
jz      loc_484251
mov     eax, 607h
call    sub_47E8B8
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
xor     ebx, ebx
xor     edx, edx
mov     eax, 108h
call    sub_4D89E4
cmp     byte ptr [ebp+6], 2
jnb     short loc_48484B
mov     byte ptr [ebp+6], 11h
jmp     short loc_48484F

loc_48484B:
mov     byte ptr [ebp+6], 10h

loc_48484F:
mov     eax, [esp+34h+var_1C]
mov     byte ptr [eax+8], 3
mov     byte ptr [eax+9], 1
or      byte ptr [eax+0BDh], 10h
mov     dword ptr [eax+528h], 18820000h
mov     dword ptr [eax+52Ch], 0FFFF0000h
mov     dword ptr [eax+530h], 510A0000h
lea     edx, [eax+538h]
add     eax, 528h
call    sub_4DD57B
mov     eax, [esp+34h+var_1C]
mov     word ptr [eax+540h], 0
mov     word ptr [eax+542h], 800h
mov     word ptr [eax+544h], 0
jmp     loc_484251
sub_4842A3 endp

db 8Dh, 40h, 0
jpt_4848F9 dd offset loc_484900 ; jump table for switch statement
dd offset loc_484966
dd offset loc_484A2C
dd offset loc_484A45
dd offset loc_484A79
dd offset loc_484AFE
dd offset loc_484B17
dd offset loc_484B57



sub_4848D7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     edi, offset byte_5F8364
mov     ebp, ds:dword_55A374
mov     al, [eax+6]
cmp     al, 7           ; switch 8 cases
ja      def_4848F9      ; jumptable 004848F9 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4848F9[edx*4] ; switch jump

loc_484900:             ; jumptable 004848F9 case 0
mov     eax, edi
call    sub_4B55D5
test    eax, eax
jz      def_4848F9      ; jumptable 004848F9 default case
mov     eax, 0Bh
call    sub_484CFC
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, 16h
call    sub_47E888
test    eax, eax
jz      short loc_484943
mov     ds:dword_77E6B4, offset unk_51D480
jmp     short loc_48494D

loc_484943:
mov     ds:dword_77E6B4, offset unk_51D3F0

loc_48494D:
mov     dword ptr [esi+0A4h], offset unk_51D3D0
inc     byte ptr [esi+6]
mov     edx, 5Eh ; '^'
xor     eax, eax
call    sub_4A0E24

loc_484966:             ; jumptable 004848F9 case 1
mov     byte ptr [edi+8], 3
mov     byte ptr [edi+9], 1
or      byte ptr [edi+0BDh], 10h
mov     eax, 16h
call    sub_47E888
mov     ebp, eax
lea     eax, [edi+528h]
lea     edx, [edi+538h]
test    ebp, ebp
jz      short loc_4849D8
mov     dword ptr [edi+528h], 1CDC0000h
mov     dword ptr [edi+52Ch], 0FFFF0000h
mov     dword ptr [edi+530h], 50400000h
call    sub_4DD57B
mov     word ptr [edi+540h], 0
mov     word ptr [edi+542h], 59Ch
mov     word ptr [edi+544h], 0
mov     dword ptr [esi+0Ch], 0Ah
jmp     short loc_484A1D

loc_4849D8:
mov     dword ptr [edi+528h], 170B0000h
mov     dword ptr [edi+52Ch], 0FFFF0000h
mov     dword ptr [edi+530h], 5E9F0000h
call    sub_4DD57B
mov     word ptr [edi+540h], 0
mov     word ptr [edi+542h], 1D1h
mov     word ptr [edi+544h], 0
mov     dword ptr [esi+0Ch], 0Ch

loc_484A1D:
mov     byte ptr [edi+548h], 30h ; '0'

loc_484A24:
inc     byte ptr [esi+6]
jmp     def_4848F9      ; jumptable 004848F9 default case

loc_484A2C:             ; jumptable 004848F9 case 2
cmp     byte ptr ds:dword_77E784+1, 2
jnz     def_4848F9      ; jumptable 004848F9 default case
inc     al
mov     [esi+6], al
mov     ds:byte_5F88AC, 1

loc_484A45:             ; jumptable 004848F9 case 3
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, edi
call    sub_4DD47D
cmp     dword ptr [esi+0Ch], 5
jnz     short loc_484A6A
call    sub_49DF64
mov     byte ptr [ebp+9], 3
mov     word ptr [ebp+0Ah], 0

loc_484A6A:
mov     ecx, [esi+0Ch]
dec     ecx
mov     [esi+0Ch], ecx
jnz     def_4848F9      ; jumptable 004848F9 default case
jmp     short loc_484A1D

loc_484A79:             ; jumptable 004848F9 case 4
mov     eax, [esi+0A4h]
cmp     byte ptr [eax], 0FFh
jnz     def_4848F9      ; jumptable 004848F9 default case
mov     edx, 47h ; 'G'
xor     eax, eax
call    sub_4A0E24
call    sub_484D64
mov     eax, 0Ch
call    sub_484CFC
mov     edx, ds:dword_55A374
mov     eax, 16h
call    sub_47E888
test    eax, eax
jz      short loc_484ABF
mov     word ptr [edx+56h], 0BB8h
jmp     short loc_484AC5

loc_484ABF:
mov     word ptr [edx+56h], 767h

loc_484AC5:
mov     edx, ds:dword_55A378
mov     eax, 16h
call    sub_47E888
test    eax, eax
jz      short loc_484AE1
mov     word ptr [edx+56h], 800h
jmp     short loc_484AE7

loc_484AE1:
mov     word ptr [edx+56h], 727h

loc_484AE7:
mov     ch, 1
mov     byte ptr ds:dword_77E954, ch
add     [esi+6], ch

loc_484AF2:
mov     dword ptr [esi+0Ch], 1Eh
jmp     def_4848F9      ; jumptable 004848F9 default case

loc_484AFE:             ; jumptable 004848F9 case 5
mov     ebp, [esi+0Ch]
dec     ebp
mov     [esi+0Ch], ebp
jnz     def_4848F9      ; jumptable 004848F9 default case
mov     ds:byte_5F88AC, 0Dh
jmp     loc_484A24

loc_484B17:             ; jumptable 004848F9 case 6
mov     ebx, ds:dword_5F88A4
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [edi+538h]
mov     ecx, 20h ; ' '
call    sub_4DE552
mov     dx, word ptr ds:dword_5F88A4+2
add     edx, eax
and     dh, 0Fh
mov     word ptr ds:dword_5F88A4+2, dx
test    ax, ax
jnz     short def_4848F9 ; jumptable 004848F9 default case
mov     ds:byte_5F88AC, 31h ; '1'
inc     byte ptr [esi+6]
jmp     short loc_484AF2

loc_484B57:             ; jumptable 004848F9 case 7
mov     edx, [esi+0Ch]
test    edx, edx
jz      short loc_484B64
lea     ecx, [edx-1]
mov     [esi+0Ch], ecx

loc_484B64:
cmp     dword ptr [esi+0Ch], 0
jnz     short def_4848F9 ; jumptable 004848F9 default case
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4848F9 ; jumptable 004848F9 default case
mov     eax, edi
call    sub_4B565A
mov     byte ptr [esi], 0
mov     eax, 17h
call    sub_47E8B8

def_4848F9:             ; jumptable 004848F9 default case
mov     ch, [esi+6]
test    ch, ch
jbe     short loc_484BA5
cmp     ch, 5
jnb     short loc_484BA5
mov     eax, [esi+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_484BA5
mov     edx, eax
mov     eax, esi
call    dword ptr [edx+4]

loc_484BA5:
mov     dh, [esi+6]
test    dh, dh
jbe     loc_484254
cmp     dh, 7
jnb     loc_484254
call    sub_47EBCB
test    eax, eax
jz      loc_484254
cmp     byte ptr [esi+6], 5
jnb     short loc_484BD3
mov     byte ptr ds:dword_77E954, 1

loc_484BD3:
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
xor     ebx, ebx
xor     edx, edx
mov     eax, 108h
call    sub_4D89E4
mov     byte ptr [esi+6], 7
mov     dword ptr [esi+0Ch], 0
mov     byte ptr [edi+8], 3
mov     byte ptr [edi+9], 1
or      byte ptr [edi+0BDh], 10h
mov     eax, 16h
call    sub_47E888
mov     esi, eax
lea     eax, [edi+528h]
lea     edx, [edi+538h]
test    esi, esi
jz      short loc_484C59
mov     dword ptr [edi+528h], 1BDA0000h
mov     dword ptr [edi+52Ch], 0FFFF0000h
mov     dword ptr [edi+530h], 50FD0000h
call    sub_4DD57B
mov     word ptr [edi+542h], 315h
jmp     short loc_484C85

loc_484C59:
mov     dword ptr [edi+528h], 16100000h
mov     dword ptr [edi+52Ch], 0FFFF0000h
mov     dword ptr [edi+530h], 5D7D0000h
call    sub_4DD57B
mov     word ptr [edi+542h], 0FCFh

loc_484C85:
mov     word ptr [edi+540h], 0
mov     word ptr [edi+544h], 0
call    sub_484D64
mov     eax, 0Ch
call    sub_484CFC
mov     edx, ds:dword_55A374
mov     eax, 16h
call    sub_47E888
test    eax, eax
jz      short loc_484CC2
mov     word ptr [edx+56h], 0BB8h
jmp     short loc_484CC8

loc_484CC2:
mov     word ptr [edx+56h], 767h

loc_484CC8:
mov     edx, ds:dword_55A378
mov     eax, 16h
call    sub_47E888
test    eax, eax
jz      short loc_484CE7
mov     word ptr [edx+56h], 800h
jmp     loc_484254

loc_484CE7:
mov     word ptr [edx+56h], 727h
jmp     loc_484254
sub_4848D7 endp




sub_484CF2 proc near
call    sub_49DBD1
jmp     sub_49DECF
sub_484CF2 endp




sub_484CFC proc near
push    ebx
push    ecx
push    edx
push    esi
movsx   edx, al
shl     edx, 3
add     edx, offset unk_51D65C
xor     ecx, ecx
mov     ds:dword_51C450, ecx
xor     ebx, ebx

loc_484D16:
movsx   eax, bx
cmp     eax, [edx]
jnb     loc_484256
movsx   ecx, bx
mov     eax, ecx
shl     eax, 2
add     ecx, eax
shl     ecx, 2
mov     eax, [edx+4]
add     eax, ecx
xor     ecx, ecx
mov     cl, [eax]
call    sub_49DB4D
movsx   eax, cx
mov     esi, ds:dword_560C00[eax*4]
mov     ds:dword_55A374[eax*4], esi
and     byte ptr [esi+6], 0DFh
movsx   ecx, cx
mov     eax, 80000000h
shr     eax, cl
or      ds:dword_51C450, eax
inc     ebx
jmp     short loc_484D16
sub_484CFC endp




sub_484D64 proc near
push    ebx
push    ecx
push    edx
xor     ebx, ebx

loc_484D69:
mov     edx, ds:dword_51C450
test    edx, edx
jz      loc_484257
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
test    eax, edx
jz      short loc_484DED
mov     edx, ds:dword_55A374[ebx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_484DDC
jbe     short loc_484DA3
cmp     eax, 60h ; '`'
jz      short loc_484DC4
jmp     short loc_484DDC

loc_484DA3:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
mov     ecx, eax
shl     ecx, 2
mov     eax, ds:dword_77E6F0
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
shl     ecx, 2
mov     eax, [eax]
jmp     short loc_484DD6

loc_484DC4:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0

loc_484DD6:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_484DDC:
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_51C450, eax

loc_484DED:
inc     ebx
jmp     loc_484D69
sub_484D64 endp




sub_484DF3 proc near
push    ebx
push    ecx
push    edx
mov     bl, al
movsx   ecx, al
mov     eax, 80000000h
shr     eax, cl
test    ds:dword_51C450, eax
jz      loc_484E7A
movsx   edx, bl
mov     edx, ds:dword_55A374[edx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_484E68
jbe     short loc_484E30
cmp     eax, 60h ; '`'
jz      short loc_484E50
jmp     short loc_484E68

loc_484E30:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6F0
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
shl     ecx, 2
mov     eax, [eax]
jmp     short loc_484E62

loc_484E50:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0

loc_484E62:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_484E68:
movsx   ecx, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_51C450, eax

loc_484E7A:
pop     edx
pop     ecx
pop     ebx
retn
sub_484DF3 endp




sub_484E7E proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_484E84[edx*4]
pop     edx
retn
sub_484E7E endp




sub_484E8D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
test    al, al
ja      short loc_484EC0
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51E7A4
mov     dword ptr [ecx+0A4h], offset unk_51E79C
inc     byte ptr [ecx+6]

loc_484EC0:
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_484ED2
mov     edx, eax
mov     eax, ecx
call    dword ptr [edx+4]

loc_484ED2:
pop     edx
pop     ecx
pop     ebx
retn
sub_484E8D endp




sub_484ED6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+6]
cmp     al, 1
jb      short loc_484EFA
jbe     loc_484FB8
cmp     al, 2
jz      loc_484FD8
jmp     loc_48500C

loc_484EFA:
test    al, al
jnz     loc_48500C
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      loc_48500C
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51E7B8
mov     dword ptr [ecx+0A4h], offset unk_51E7A8
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     ds:dword_5F888C, 0FFE00000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 1300000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
xor     edx, edx
mov     word ptr ds:dword_5F88A4, dx
mov     word ptr ds:dword_5F88A4+2, dx
mov     ds:word_5F88A8, dx
mov     ds:byte_5F88AC, 30h ; '0'
inc     byte ptr [ecx+6]
mov     dword ptr [ecx+0Ch], 0Ah
xor     edx, edx
mov     eax, 1
call    sub_4A0E24
jmp     short loc_48500C

loc_484FB8:
mov     ebx, [ecx+0Ch]
dec     ebx
mov     [ecx+0Ch], ebx
test    ebx, ebx
jge     short loc_484FCD
mov     ds:byte_5F88AC, 32h ; '2'
inc     byte ptr [ecx+6]

loc_484FCD:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short loc_48500C
jmp     short loc_484FFB

loc_484FD8:
cmp     ds:byte_5F840B, 0
jge     short loc_484FF2
call    rand_
and     eax, 1Fh
add     eax, 10h
mov     [ecx+0Ch], eax
dec     byte ptr [ecx+6]

loc_484FF2:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short loc_48500C

loc_484FFB:
mov     byte ptr ds:dword_77E954, 1
mov     byte ptr [ecx], 0
mov     eax, edx
call    sub_4B565A

loc_48500C:
cmp     byte ptr [ecx+6], 0
jbe     short loc_485022
mov     edx, [ecx+0A4h]
cmp     byte ptr [edx], 0FFh
jz      short loc_485022
mov     eax, ecx
call    dword ptr [edx+4]

loc_485022:
pop     edx
pop     ecx
pop     ebx
retn
sub_484ED6 endp




sub_485026 proc near
call    sub_49DBD1
jmp     sub_49DECF
sub_485026 endp




sub_485030 proc near
push    ebx
push    ecx
push    edx
push    esi
movsx   edx, al
shl     edx, 3
add     edx, offset unk_51E7E0
xor     ecx, ecx
mov     ds:dword_51D78C, ecx
xor     ebx, ebx

loc_48504A:
movsx   eax, bx
cmp     eax, [edx]
jnb     short loc_485094
movsx   ecx, bx
mov     eax, ecx
shl     eax, 2
add     ecx, eax
shl     ecx, 2
mov     eax, [edx+4]
add     eax, ecx
xor     ecx, ecx
mov     cl, [eax]
call    sub_49DB4D
movsx   eax, cx
mov     esi, ds:dword_560C00[eax*4]
mov     ds:dword_55A3BC[eax*4], esi
and     byte ptr [esi+6], 0DFh
movsx   ecx, cx
mov     eax, 80000000h
shr     eax, cl
or      ds:dword_51D78C, eax
inc     ebx
jmp     short loc_48504A

loc_485094:
pop     esi

loc_485095:
pop     edx
pop     ecx
pop     ebx
retn
sub_485030 endp




sub_485099 proc near
push    ebx
push    ecx
push    edx
xor     ebx, ebx

loc_48509E:
mov     edx, ds:dword_51D78C
test    edx, edx
jz      short loc_485095
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
test    eax, edx
jz      short loc_48511E
mov     edx, ds:dword_55A3BC[ebx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_48510D
jbe     short loc_4850D4
cmp     eax, 60h ; '`'
jz      short loc_4850F5
jmp     short loc_48510D

loc_4850D4:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
mov     ecx, eax
shl     ecx, 2
mov     eax, ds:dword_77E6F0
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
shl     ecx, 2
mov     eax, [eax]
jmp     short loc_485107

loc_4850F5:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0

loc_485107:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_48510D:
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_51D78C, eax

loc_48511E:
inc     ebx
jmp     loc_48509E
sub_485099 endp




sub_485124 proc near
push    ebx
push    ecx
push    edx
mov     bl, al
movsx   ecx, al
mov     eax, 80000000h
shr     eax, cl
test    ds:dword_51D78C, eax
jz      short loc_485191
movsx   edx, bl
mov     edx, ds:dword_55A3BC[edx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_48517F
jbe     short loc_48515B
cmp     eax, 60h ; '`'
jnz     short loc_48517F

loc_48515B:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6F0
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
shl     ecx, 2
mov     eax, [eax]
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_48517F:
movsx   ecx, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_51D78C, eax

loc_485191:
pop     edx
pop     ecx
pop     ebx
retn
sub_485124 endp




sub_485195 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48519B[edx*4]
pop     edx
retn
sub_485195 endp




sub_4851A4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_4851C5
jbe     loc_48526E
cmp     al, 2
jz      loc_485284
jmp     loc_4852C9

loc_4851C5:
test    al, al
jnz     loc_4852C9
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51EC00
mov     dword ptr [esi+0A4h], offset unk_51EC4C
mov     byte ptr [esi+0Ah], 80h
mov     byte ptr [esi+0Bh], 0
mov     dword ptr [esi+0Ch], 0
mov     eax, offset unk_51E9BC
call    sub_49DB4D
xor     ecx, ecx

loc_485207:
mov     eax, ecx
shl     eax, 3
mov     ebx, eax
shl     eax, 3
sub     eax, ebx
mov     bl, ds:byte_51EF54[ecx*8]
mov     ds:byte_56F80C[eax], bl
mov     bx, ds:word_51EF58[ecx*8]
mov     ds:word_56F82C[eax], bx
mov     dx, ds:word_51EF5A[ecx*8]
mov     ds:word_56F82E[eax], dx
inc     ecx
cmp     ecx, 8
jl      short loc_485207
mov     ds:word_56F9A2, 0F0h
mov     ds:dword_56F99C, 0F00000h
xor     edi, edi
mov     ds:dword_55A3FC, edi
mov     eax, 240005h
call    sub_4D8E42

loc_485269:
inc     byte ptr [esi+5]
jmp     short loc_4852C9

loc_48526E:
mov     edx, [esi+0A4h]
mov     eax, esi
call    dword ptr [edx+4]
call    sub_4D8ECC
test    eax, eax
jz      short loc_4852C9
jmp     short loc_485269

loc_485284:
mov     edx, [esi+0A4h]
mov     eax, esi
call    dword ptr [edx+4]
cmp     byte ptr [esi+0Bh], 0Ah
jnz     short loc_48529F
mov     eax, 2
call    sub_49E0D7

loc_48529F:
cmp     byte ptr [esi+0Bh], 1Eh
jnz     short loc_4852C6
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_51EC5C
mov     dword ptr [esi+0A4h], offset unk_51EF04
mov     byte ptr [esi+4], 1
mov     byte ptr [esi+5], 0

loc_4852C6:
inc     byte ptr [esi+0Bh]

loc_4852C9:
test    byte ptr ds:word_5708DE, 8
jz      short loc_4852D6
or      byte ptr [esi+0Ah], 1

loc_4852D6:
call    sub_49DBD1
call    sub_49DECF
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4851A4 endp




sub_4852E6 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_4852F8
cmp     al, 1
jz      short loc_485316
jmp     short loc_485356

loc_4852F8:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
cmp     ds:word_6E23D6, 0
jnz     short loc_485356
and     byte ptr [edx+0Ah], 7Fh
inc     byte ptr [edx+5]
jmp     short loc_485356

loc_485316:
cmp     byte ptr [edx+8], 0FFh
jnz     short loc_48532C
mov     eax, 14h
call    sub_49E0D7
or      byte ptr [edx+0Ah], 80h
jmp     short loc_48534E

loc_48532C:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     bl, [edx+0Ah]
test    bl, 1
jz      short loc_485356
test    bl, 80h
jnz     short loc_485356
mov     eax, 0Ah
call    sub_49E0D7

loc_48534E:
mov     byte ptr [edx+4], 2
mov     byte ptr [edx+5], 0

loc_485356:
test    byte ptr ds:word_5708DE, 8
jz      short loc_485363
or      byte ptr [edx+0Ah], 1

loc_485363:
call    sub_49DBD1
call    sub_49DECF

loc_48536D:
pop     edx
pop     ecx
pop     ebx
retn
sub_4852E6 endp




sub_485371 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_485383
cmp     al, 1
jz      short loc_4853BC
pop     edx
pop     ecx
retn

loc_485383:
cmp     ds:word_6E23D6, 0
jnz     short loc_4853A9
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
call    sub_4E1D8A
call    sub_4D8EB1
inc     byte ptr [ecx+5]

loc_4853A9:
mov     al, [ecx+0Ah]
test    al, 1
jz      short loc_4853E8
test    al, 80h
jnz     short loc_4853E8
call    sub_49DBD1
pop     edx
pop     ecx
retn

loc_4853BC:
mov     byte ptr ds:dword_77E954, al
call    sub_42A66D
and     ds:byte_77E806, 7Fh
mov     byte ptr [ecx], 0
xor     dh, dh
mov     byte ptr ds:dword_6DD9BC+1, dh
inc     byte ptr ds:dword_6DD9BC
mov     eax, offset sub_4378C0
call    sub_4EEDCA

loc_4853E8:
pop     edx
pop     ecx
retn
sub_485371 endp




sub_4853EB proc near
cmp     ds:dword_55A3FC, 0DEh
jnz     short loc_485411
xor     ah, ah
mov     ds:byte_56F87C, ah
mov     ds:byte_56F8EC, ah
mov     ds:byte_56F924, ah
mov     ds:byte_56F95C, ah

loc_485411:
inc     ds:dword_55A3FC
retn
sub_4853EB endp




sub_485418 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48543B
xor     ah, ah
mov     ds:byte_56F80C, ah
mov     dl, 3
mov     ds:byte_56F844, dl
mov     ds:byte_56F8B4, dl
mov     ds:byte_56F994, dl

loc_48543B:
pop     edx
retn
sub_485418 endp




sub_48543D proc near
push    ebx
push    ecx
push    edx
xor     edx, edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_485458
xor     bl, bl
mov     ds:byte_56F8B4, bl
xor     bh, bh
mov     ds:byte_56F994, bh

loc_485458:
cmp     dword ptr [eax+10h], 82h
jnz     loc_48536D

loc_485465:
cmp     dx, 4
jge     loc_48536D
call    sub_4DE13B
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
or      byte ptr [eax+6], 20h
mov     word ptr [eax+1Ch], 0FF00h
mov     ebx, edx
shl     ebx, 5
mov     ecx, 0FFFFFD60h
sub     ecx, ebx
mov     [eax+1Eh], cx
imul    ebx, edx, 3Fh ; '?'
add     ebx, 118h
mov     [eax+20h], bx
mov     bl, dl
add     bl, dl
mov     bh, 6
sub     bh, bl
mov     [eax+9], bh
inc     edx
jmp     short loc_485465
sub_48543D endp




sub_4854BC proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4854FC
mov     eax, [eax+24h]
call    sub_4DE2F6
xor     ah, ah
mov     ds:byte_56F844, ah
mov     edx, 1

loc_4854D8:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_51E9BC
call    sub_49DB4D
inc     edx
cmp     edx, 3
jle     short loc_4854D8
mov     eax, 1
call    sub_4856CE

loc_4854FC:
pop     edx
retn
sub_4854BC endp




sub_4854FE proc near
push    ebx
push    edx
mov     ebx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_485564

loc_485509:
mov     eax, edx
mov     eax, [ebx+eax*4+24h]
call    sub_4DE2F6
inc     edx
cmp     edx, 2
jle     short loc_485509
xor     edx, edx

loc_48551C:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, offset unk_572D5C
call    sub_4DE3EA
inc     edx
cmp     edx, 40h ; '@'
jl      short loc_48551C
mov     edx, 4

loc_485540:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_51E9BC
call    sub_49DB4D
inc     edx
cmp     edx, 6
jle     short loc_485540
mov     eax, 2
call    sub_4856CE

loc_485564:
cmp     dword ptr [ebx+10h], 82h
jnz     short loc_4855D1
call    sub_4DE13B
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     word ptr [eax+1Ch], 0FFEEh
mov     word ptr [eax+1Eh], 0FFB1h
mov     word ptr [eax+20h], 0C8h
mov     byte ptr [eax+9], 8
or      byte ptr [eax+6], 20h
call    sub_4DE13B
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     word ptr [eax+1Ch], 1Ch
mov     word ptr [eax+1Eh], 0FFB1h
mov     word ptr [eax+20h], 0C8h
mov     byte ptr [eax+9], 4
or      byte ptr [eax+6], 20h

loc_4855D1:
pop     edx
pop     ebx
retn
sub_4854FE endp




sub_4855D4 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_485619

loc_4855DF:
mov     eax, edx
mov     eax, [ecx+eax*4+24h]
call    sub_4DE2F6
inc     edx
cmp     edx, 2
jle     short loc_4855DF
mov     edx, 7

loc_4855F5:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_51E9BC
call    sub_49DB4D
inc     edx
cmp     edx, 0Bh
jle     short loc_4855F5
mov     eax, 3
call    sub_4856CE

loc_485619:
pop     edx
pop     ecx
retn
sub_4855D4 endp




sub_48561C proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_485689

loc_485627:
mov     eax, edx
mov     eax, [ecx+eax*4+24h]
call    sub_4DE2F6
inc     edx
cmp     edx, 4
jle     short loc_485627
xor     edx, edx

loc_48563A:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, offset unk_572D5C
call    sub_4DE3EA
inc     edx
cmp     edx, 40h ; '@'
jl      short loc_48563A
mov     ds:byte_56F80C, 3
mov     edx, 0Ch

loc_485665:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_51E9BC
call    sub_49DB4D
inc     edx
cmp     edx, 0Eh
jle     short loc_485665
mov     eax, 4
call    sub_4856CE

loc_485689:
pop     edx
pop     ecx
retn
sub_48561C endp




sub_48568C proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4856CC
mov     eax, [eax+24h]
call    sub_4DE2F6
mov     eax, [edx+28h]
call    sub_4DE2F6
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     edx, 0Fh

loc_4856B2:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_51E9BC
call    sub_49DB4D
inc     edx
cmp     edx, 1Ch
jle     short loc_4856B2

loc_4856CC:
pop     edx

locret_4856CD:
retn
sub_48568C endp




sub_4856CE proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 7
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
sub_4856CE endp




sub_48571A proc near
cmp     byte ptr [eax+4], 0
jnz     loc_48589A
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+5]
test    al, al
jbe     short loc_48573F
cmp     al, 1
jz      short loc_485794
jmp     loc_48582C

loc_48573F:
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, ds:off_51F10C
mov     ds:dword_77E6B4, eax
mov     dword ptr [esi+0A4h], offset unk_51EFBC
mov     eax, offset unk_51EF94
call    sub_49DB4D
mov     eax, offset unk_51EFA8
call    sub_49DB4D
mov     eax, [esi+24h]
mov     ds:dword_55CF04, eax
mov     eax, [esi+28h]
mov     ds:dword_55CF08, eax
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Bh], 0
mov     dword ptr [esi+0Ch], 0
inc     byte ptr [esi+5]

loc_485794:
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      loc_48582C
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 0
mov     word ptr [ecx+53Ah], 0FFFFh
mov     word ptr [ecx+53Ch], 0FF74h
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
inc     byte ptr [esi+4]
mov     byte ptr [esi+5], 0

loc_48582C:
call    sub_49DBD1
call    sub_49DECF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
db 8Dh, 40h, 0
jpt_4858AE dd offset loc_4858B5 ; jump table for switch statement
dd offset loc_48596E
dd offset loc_485902
dd offset loc_48591A
dd offset loc_485933
dd offset loc_48593C
dd offset loc_48594E
dd offset loc_485967
dd offset loc_48598A
dd offset loc_485994
dd offset loc_4859AB
dd offset loc_485994
dd offset loc_4859B2
dd offset loc_4859BC
dd offset loc_48596E
dd offset loc_4859D8
dd offset loc_4859E2
dd offset loc_48596E
dd offset loc_4859FC
dd offset loc_485A06
dd offset loc_485A19
dd offset loc_485A32
dd offset loc_485A3F

loc_48589A:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 16h         ; switch 23 cases
ja      def_4858AE      ; jumptable 004858AE default case
xor     edx, edx
mov     dl, al
jmp     jpt_4858AE[edx*4] ; switch jump

loc_4858B5:             ; jumptable 004858AE case 0
mov     edx, [ecx+0A4h]
mov     eax, ecx
call    dword ptr [edx+4]
cmp     byte ptr ds:dword_77E784+1, 2
jnz     def_4858AE      ; jumptable 004858AE default case
mov     eax, [ecx+24h]
cmp     byte ptr [eax+8], 0
jz      def_4858AE      ; jumptable 004858AE default case
mov     eax, [ecx+28h]
cmp     byte ptr [eax+8], 0
jz      def_4858AE      ; jumptable 004858AE default case

loc_4858E7:
call    sub_49DFCA
mov     eax, ds:off_51F10C

loc_4858F1:
mov     ds:dword_77E6B4, eax
mov     dword ptr [ecx+0A4h], offset unk_51EFCC
jmp     short loc_485912

loc_485902:             ; jumptable 004858AE case 2
mov     edx, 0Ch

loc_485907:
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Ah], 1

loc_485912:
inc     byte ptr [ecx+5]
jmp     def_4858AE      ; jumptable 004858AE default case

loc_48591A:             ; jumptable 004858AE case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4858AE      ; jumptable 004858AE default case
call    sub_49DFCA
mov     eax, ds:off_51F110
jmp     short loc_4858F1

loc_485933:             ; jumptable 004858AE case 4
and     ds:byte_5F8364, 0FDh
jmp     short loc_48596E ; jumptable 004858AE cases 1,14,17

loc_48593C:             ; jumptable 004858AE case 5
mov     edx, 0Dh

loc_485941:
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Ah], 2
jmp     short loc_485912

loc_48594E:             ; jumptable 004858AE case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4858AE      ; jumptable 004858AE default case
call    sub_49DFCA
mov     eax, ds:off_51F114
jmp     short loc_4858F1

loc_485967:             ; jumptable 004858AE case 7
or      ds:byte_5F8364, 2

loc_48596E:             ; jumptable 004858AE cases 1,14,17
mov     edx, [ecx+0A4h]
mov     eax, ecx
call    dword ptr [edx+4]
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jnz     def_4858AE      ; jumptable 004858AE default case
jmp     short loc_485912

loc_48598A:             ; jumptable 004858AE case 8
mov     edx, 0Eh
jmp     loc_485907

loc_485994:             ; jumptable 004858AE cases 9,11
test    byte ptr ds:dword_55BD7C+3, 8

loc_48599B:             ; jumptable 004858AE default case
jnz     def_4858AE
inc     al
mov     [ecx+5], al
jmp     def_4858AE      ; jumptable 004858AE default case

loc_4859AB:             ; jumptable 004858AE case 10
mov     edx, 0Fh
jmp     short loc_485941

loc_4859B2:             ; jumptable 004858AE case 12
mov     edx, 10h
jmp     loc_485907

loc_4859BC:             ; jumptable 004858AE case 13
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4858AE      ; jumptable 004858AE default case
call    sub_49DFCA
mov     eax, ds:off_51F118
jmp     loc_4858F1

loc_4859D8:             ; jumptable 004858AE case 15
mov     edx, 11h
jmp     loc_485941

loc_4859E2:             ; jumptable 004858AE case 16
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4858AE      ; jumptable 004858AE default case
xor     bh, bh
mov     ds:byte_5F88AC, bh
jmp     loc_4858E7

loc_4859FC:             ; jumptable 004858AE case 18
mov     edx, 12h
jmp     loc_485907

loc_485A06:             ; jumptable 004858AE case 19
or      byte ptr [ecx+0Bh], 80h
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4858AE ; jumptable 004858AE default case
mov     byte ptr [ecx+5], 15h
jmp     short def_4858AE ; jumptable 004858AE default case

loc_485A19:             ; jumptable 004858AE case 20
cmp     ds:word_6E23D6, 0
jnz     short def_4858AE ; jumptable 004858AE default case
mov     eax, 1
call    sub_49E0D7
jmp     loc_485912

loc_485A32:             ; jumptable 004858AE case 21
cmp     ds:word_6E23D6, 0
jmp     loc_48599B

loc_485A3F:             ; jumptable 004858AE case 22
mov     eax, offset byte_5F8364
call    sub_4B565A
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, [ecx+24h]
call    sub_4DE2F6
mov     eax, [ecx+28h]
call    sub_4DE2F6
mov     eax, offset unk_51EF94
call    sub_4B8C15
mov     byte ptr [ecx], 0

def_4858AE:             ; jumptable 004858AE default case
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_485AB0
mov     bh, [ecx+0Ah]
cmp     bh, 1
jnz     short loc_485A97
mov     eax, [ecx+24h]
mov     byte ptr [eax+0ACh], 8
mov     eax, [ecx+24h]
jmp     short loc_485AA9

loc_485A97:
cmp     bh, 2
jnz     short loc_485AB0
mov     eax, [ecx+28h]
mov     byte ptr [eax+0ACh], 8
mov     eax, [ecx+28h]

loc_485AA9:
mov     byte ptr [eax+0ADh], 0FFh

loc_485AB0:
call    sub_47EBCB
test    eax, eax
jz      short loc_485AE6
test    byte ptr [ecx+0Bh], 80h
jnz     short loc_485AE6
mov     eax, 9
call    sub_49E0D7
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_485ADE
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1

loc_485ADE:
or      byte ptr [ecx+0Bh], 81h
mov     byte ptr [ecx+5], 14h

loc_485AE6:
pop     edx
pop     ecx
pop     ebx
retn
sub_48571A endp




sub_485AEA proc near
call    sub_49DBD1
jmp     sub_49DECF
sub_485AEA endp

jpt_485B1F dd offset loc_485B26 ; jump table for switch statement
dd offset loc_485B3D
dd offset loc_485B9D
dd offset loc_485BAD



sub_485B04 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
xor     ebx, ebx
mov     bl, al
jmp     jpt_485B1F[ebx*4] ; switch jump

loc_485B26:             ; jumptable 00485B1F case 0
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
call    sub_49DFCA
inc     byte ptr [ecx+6]

loc_485B3D:             ; jumptable 00485B1F case 1
mov     byte ptr [edx+8], 3
mov     byte ptr [edx+9], 1
or      byte ptr [edx+0BDh], 10h
lea     edi, [edx+538h]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [edx+528h]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [edx+540h]
lea     esi, [edx+54h]
movsd
movsd
mov     byte ptr [edx+548h], 35h ; '5'
mov     eax, 60Ah
call    sub_47EA91
inc     byte ptr [ecx+6]
mov     dword ptr [ecx+0Ch], 2Dh ; '-'
call    sub_436868
mov     edx, 28h ; '('
xor     eax, eax
call    sub_4A0E24
jmp     short def_485B1F ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16

loc_485B9D:             ; jumptable 00485B1F case 2
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short def_485B1F ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
inc     al
mov     [ecx+6], al
jmp     short def_485B1F ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16

loc_485BAD:             ; jumptable 00485B1F case 3
mov     eax, edx
call    sub_4B565A
mov     byte ptr [ecx], 0
mov     eax, 620h
call    sub_47E8B8
mov     eax, 52Dh

loc_485BC6:
call    sub_47E8B8

def_485B1F:             ; jumptable 00485B1F default case
pop     edi             ; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_485B04 endp




sub_485BD1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_485BD7[edx*4]
mov     edx, offset unk_55A440

loc_485BE3:
cmp     edx, offset unk_55A4A0
jnb     short loc_485BFA
test    byte ptr [edx], 1
jz      short loc_485BF5
mov     eax, edx
call    dword ptr [edx+4]

loc_485BF5:
add     edx, 0Ch
jmp     short loc_485BE3

loc_485BFA:
mov     eax, 619h
call    sub_47EA91
mov     eax, 61Ah
call    sub_47EA91
mov     eax, 61Bh
call    sub_47EA91
mov     eax, 61Ch
call    sub_47EA91
pop     edx
retn
sub_485BD1 endp

jpt_485C58 dd offset loc_485C5F ; jump table for switch statement
dd offset loc_485CE5
dd offset loc_485D01
dd offset loc_485D7D
dd offset loc_485D9C
dd offset loc_485DC4
dd offset loc_485E5E
dd offset loc_485E6D



sub_485C44 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 7           ; switch 8 cases
ja      def_485C58      ; jumptable 00485C58 default case
xor     edx, edx
mov     dl, al
jmp     jpt_485C58[edx*4] ; switch jump

loc_485C5F:             ; jumptable 00485C58 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_485C58      ; jumptable 00485C58 default case
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51FF74
mov     dword ptr [ecx+0A4h], offset unk_51FEEC
mov     eax, 3
call    sub_4873C4
call    sub_48761B
mov     edx, 4
xor     eax, eax
call    sub_4875D1
mov     edx, 5
mov     eax, 1
call    sub_4875D1
mov     edx, 6
mov     eax, 2
call    sub_4875D1
mov     edx, 7
mov     eax, 3
call    sub_4875D1

loc_485CDD:
inc     byte ptr [ecx+6]
jmp     def_485C58      ; jumptable 00485C58 default case

loc_485CE5:             ; jumptable 00485C58 case 1
cmp     byte ptr ds:dword_77E784+1, 2
jnz     def_485C58      ; jumptable 00485C58 default case
inc     al
mov     [ecx+6], al
mov     eax, 60Ch
jmp     loc_485E8B

loc_485D01:             ; jumptable 00485C58 case 2
mov     eax, 60Fh
call    sub_47E888
test    eax, eax
jz      def_485C58      ; jumptable 00485C58 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000003h
call    sub_4D89E4
xor     eax, eax
call    sub_487602
mov     eax, 1
call    sub_487602
mov     eax, 2
call    sub_487602
mov     eax, 3
call    sub_487602
mov     edx, 8
xor     eax, eax
call    sub_4875D1
mov     eax, 60Fh
call    sub_47EA91
call    sub_48742C
call    sub_4DE4B5
mov     eax, 4
call    sub_4873C4
inc     byte ptr [ecx+6]
call    sub_49DF64
jmp     def_485C58      ; jumptable 00485C58 default case

loc_485D7D:             ; jumptable 00485C58 case 3
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax+1], 9
jnz     def_485C58      ; jumptable 00485C58 default case
mov     eax, 607h
call    sub_47E8B8
jmp     loc_485CDD

loc_485D9C:             ; jumptable 00485C58 case 4
mov     eax, 60Fh
call    sub_47E888
test    eax, eax
jz      def_485C58      ; jumptable 00485C58 default case
mov     eax, 60Fh
call    sub_47EA91
mov     dword ptr [ecx+0Ch], 1Eh
jmp     loc_485CDD

loc_485DC4:             ; jumptable 00485C58 case 5
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     def_485C58      ; jumptable 00485C58 default case
inc     byte ptr [ecx+6]
mov     byte ptr ds:dword_77E954, 1
mov     eax, 3
call    sub_487546
mov     eax, 4
call    sub_487546
mov     eax, 5
call    sub_487546
call    sub_48742C
mov     ds:dword_5F888C, 3F80000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 1DA30000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
xor     edx, edx
mov     word ptr ds:dword_5F88A4, dx
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, dx
xor     bl, bl
mov     ds:byte_5F88AC, bl
call    sub_48761B
jmp     short def_485C58 ; jumptable 00485C58 default case

loc_485E5E:             ; jumptable 00485C58 case 6
mov     eax, 5
call    sub_4873C4
jmp     loc_485CDD

loc_485E6D:             ; jumptable 00485C58 case 7
mov     edx, 4
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx], 0
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, 9

loc_485E8B:
call    sub_47E8B8

def_485C58:             ; jumptable 00485C58 default case
mov     ah, [ecx+6]
test    ah, ah
jbe     short loc_485EAE
cmp     ah, 5
jnb     short loc_485EAE
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_485EAE
mov     edx, eax
mov     eax, ecx
call    dword ptr [edx+4]

loc_485EAE:
mov     bl, [ecx+6]
cmp     bl, 1
jbe     short loc_485EED
cmp     bl, 5
jnb     short loc_485EED
call    sub_47EBCB
test    eax, eax
jz      short loc_485EED
mov     eax, 60Fh
call    sub_47EA91
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
mov     byte ptr [ecx+6], 5
mov     dword ptr [ecx+0Ch], 1

loc_485EED:
pop     edx
pop     ecx
pop     ebx
retn
sub_485C44 endp

align 4
jpt_485F29 dd offset loc_485F30 ; jump table for switch statement
dd offset loc_485F7D
dd offset loc_485F9B
dd offset loc_485FC7
dd offset loc_485FE0
dd offset def_485F29



sub_485F0C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     eax, offset byte_5F8364
mov     dl, [ecx+2]
cmp     dl, 5           ; switch 6 cases
ja      def_485F29      ; jumptable 00485F29 default case, case 5
and     edx, 0FFh
jmp     jpt_485F29[edx*4] ; switch jump

loc_485F30:             ; jumptable 00485F29 case 0
mov     ds:dword_5F888C, 3F80000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 17EA0000h
lea     edx, [eax+538h]
add     eax, 528h
call    sub_4DD57B
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ah, 1
mov     ds:byte_5F88AC, ah
mov     word ptr [ecx+8], 0A0h
add     [ecx+2], ah
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_485F7D:             ; jumptable 00485F29 case 1
mov     si, [ecx+8]
dec     si
mov     [ecx+8], si
jnz     def_485F29      ; jumptable 00485F29 default case, case 5
mov     word ptr [ecx+8], 0A0h
inc     byte ptr [ecx+2]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_485F9B:             ; jumptable 00485F29 case 2
mov     dx, [ecx+8]
dec     edx
mov     [ecx+8], dx
cmp     dx, 7Ch ; '|'
jz      short loc_485FBD
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h

loc_485FB3:
call    sub_4DD47D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_485FBD:
inc     byte ptr [ecx+2]
mov     ds:byte_5F88AC, 30h ; '0'

loc_485FC7:             ; jumptable 00485F29 case 3
mov     si, [ecx+8]
dec     esi
mov     [ecx+8], si
cmp     si, 64h ; 'd'
jnz     short def_485F29 ; jumptable 00485F29 default case, case 5
inc     byte ptr [ecx+2]
mov     byte ptr [eax+548h], 0Ch

loc_485FE0:             ; jumptable 00485F29 case 4
mov     dx, [ecx+8]
dec     edx
mov     [ecx+8], dx
cmp     dx, 1Eh
jz      short loc_485FFA
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'
jmp     short loc_485FB3

loc_485FFA:
inc     byte ptr [ecx+2]
mov     byte ptr [eax+548h], 30h ; '0'
mov     edx, 9
mov     eax, 1
call    sub_4875D1

def_485F29:             ; jumptable 00485F29 default case, case 5
pop     esi

def_486A26:             ; jumptable 00486A26 default case, case 8
pop     edx
pop     ecx
pop     ebx
retn
sub_485F0C endp

jpt_48604B dd offset loc_486052 ; jump table for switch statement
dd offset loc_486063
dd offset loc_486089
dd offset loc_4860BC
dd offset loc_486115
dd offset loc_486130
dd offset loc_486151



sub_486034 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+2]
cmp     al, 6           ; switch 7 cases
ja      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
and     eax, 0FFh
jmp     jpt_48604B[eax*4] ; switch jump

loc_486052:             ; jumptable 0048604B case 0
mov     eax, ds:dword_55A414
or      byte ptr [eax+0Fh], 8
mov     word ptr [ecx+8], 23h ; '#'
jmp     short loc_4860B4

loc_486063:             ; jumptable 0048604B case 1
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
call    sub_49DF64
mov     edx, 0Ah
mov     eax, 2
call    sub_4875D1
jmp     short loc_4860B4

loc_486089:             ; jumptable 0048604B case 2
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 607h
call    sub_47EA91
mov     eax, ds:dword_55A414
or      byte ptr [eax+0Fh], 10h

loc_4860AE:
mov     word ptr [ecx+8], 10h

loc_4860B4:
inc     byte ptr [ecx+2]
jmp     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16

loc_4860BC:             ; jumptable 0048604B case 3
mov     si, [ecx+8]
dec     si
mov     [ecx+8], si
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     ebx, ds:dword_55A400
mov     eax, ds:dword_55A414
mov     byte ptr [ebx+0Ah], 1
lea     edi, [ebx+14h]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [ebx+1Ch]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
sub     word ptr [ebx+16h], 18Ch
mov     eax, [ebx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+20h], eax
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [ebx+14h]
call    sub_4DDDB4
mov     [ebx+56h], ax
jmp     short loc_4860AE

loc_486115:             ; jumptable 0048604B case 4
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
xor     edx, edx
xor     eax, eax
call    sub_4A0E24
jmp     short loc_4860B4

loc_486130:             ; jumptable 0048604B case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
call    sub_49DF64
mov     eax, 608h
call    sub_47E8B8
jmp     loc_4860B4

loc_486151:             ; jumptable 0048604B case 6
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, ds:dword_55A400
mov     byte ptr [eax+0Ah], 4
mov     ecx, ds:dword_55A414
or      byte ptr [ecx+0Fh], 10h
mov     eax, 1

loc_48617B:
call    sub_487602
jmp     def_485B1F      ; jumptable 00485B1F default case
sub_486034 endp         ; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
align 4
jpt_4861C3 dd offset loc_4861CA ; jump table for switch statement
dd offset loc_4861D3
dd offset loc_4861F4
dd offset loc_48621A
dd offset loc_48624E
dd offset loc_4862A7
dd offset loc_4862C5
dd offset loc_4862E6
dd offset loc_486303



sub_4861AC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+2]
cmp     al, 8           ; switch 9 cases
ja      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
and     eax, 0FFh
jmp     jpt_4861C3[eax*4] ; switch jump

loc_4861CA:             ; jumptable 004861C3 case 0
mov     word ptr [ecx+8], 0Fh
inc     byte ptr [ecx+2]

loc_4861D3:             ; jumptable 004861C3 case 1
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, ds:dword_55A40C
or      byte ptr [eax+0Fh], 8
mov     word ptr [ecx+8], 14h
jmp     short loc_486246

loc_4861F4:             ; jumptable 004861C3 case 2
mov     di, [ecx+8]
dec     di
mov     [ecx+8], di
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
call    sub_49DF64
mov     edx, 0Bh
mov     eax, 3
call    sub_4875D1
jmp     short loc_486246

loc_48621A:             ; jumptable 004861C3 case 3
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 608h
call    sub_47EA91
mov     ebx, ds:dword_55A40C
or      byte ptr [ebx+0Fh], 10h

loc_486240:
mov     word ptr [ecx+8], 10h

loc_486246:
inc     byte ptr [ecx+2]
jmp     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16

loc_48624E:             ; jumptable 004861C3 case 4
mov     ax, [ecx+8]
dec     ax
mov     [ecx+8], ax
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     ebx, ds:dword_55A404
mov     eax, ds:dword_55A40C
mov     byte ptr [ebx+0Ah], 1
lea     edi, [ebx+14h]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [ebx+1Ch]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
sub     word ptr [ebx+16h], 18Ch
mov     eax, [ebx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+20h], eax
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [ebx+14h]
call    sub_4DDDB4
mov     [ebx+56h], ax
jmp     short loc_486240

loc_4862A7:             ; jumptable 004861C3 case 5
mov     si, [ecx+8]
dec     si
mov     [ecx+8], si
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     edx, 1
xor     eax, eax
call    sub_4A0E24
jmp     short loc_486246

loc_4862C5:             ; jumptable 004861C3 case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
call    sub_49DF64
mov     eax, 609h
call    sub_47E8B8
jmp     loc_486246

loc_4862E6:             ; jumptable 004861C3 case 7
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     word ptr [ecx+8], 0Ah
jmp     loc_486246

loc_486303:             ; jumptable 004861C3 case 8
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, ds:dword_55A404
mov     byte ptr [eax+0Ah], 4
mov     eax, ds:dword_55A40C
or      byte ptr [eax+0Fh], 10h
mov     eax, 2
jmp     loc_48617B
sub_4861AC endp

align 10h
jpt_486367 dd offset loc_48636E ; jump table for switch statement
dd offset loc_48637C
dd offset loc_4863AA
dd offset loc_486403
dd offset loc_486427
dd offset loc_486440
dd offset loc_48646D
dd offset loc_486487



sub_486350 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+2]
cmp     al, 7           ; switch 8 cases
ja      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
and     eax, 0FFh
jmp     jpt_486367[eax*4] ; switch jump

loc_48636E:             ; jumptable 00486367 case 0
mov     eax, ds:dword_55A410
or      byte ptr [eax+0Fh], 8
jmp     loc_48641F

loc_48637C:             ; jumptable 00486367 case 1
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 609h
call    sub_47EA91
mov     ebx, ds:dword_55A410
or      byte ptr [ebx+0Fh], 10h

loc_4863A2:
mov     word ptr [ecx+8], 10h
jmp     short loc_48641F

loc_4863AA:             ; jumptable 00486367 case 2
mov     ax, [ecx+8]
dec     ax
mov     [ecx+8], ax
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     ebx, ds:dword_55A408
mov     eax, ds:dword_55A410
mov     byte ptr [ebx+0Ah], 1
lea     edi, [ebx+14h]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [ebx+1Ch]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
sub     word ptr [ebx+16h], 18Ch
mov     eax, [ebx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+20h], eax
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [ebx+14h]
call    sub_4DDDB4
mov     [ebx+56h], ax
jmp     short loc_4863A2

loc_486403:             ; jumptable 00486367 case 3
mov     si, [ecx+8]
dec     si
mov     [ecx+8], si
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     edx, 2

loc_486418:
xor     eax, eax
call    sub_4A0E24

loc_48641F:
inc     byte ptr [ecx+2]
jmp     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16

loc_486427:             ; jumptable 00486367 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
call    sub_49DF64
mov     edx, 3
jmp     short loc_486418

loc_486440:             ; jumptable 00486367 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 607h
call    sub_47E8B8
mov     eax, 608h
call    sub_47E8B8
mov     eax, 609h
call    sub_47E8B8
jmp     short loc_48641F

loc_48646D:             ; jumptable 00486367 case 6
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     word ptr [ecx+8], 0Fh
jmp     short loc_48641F

loc_486487:             ; jumptable 00486367 case 7
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, ds:dword_55A408
mov     byte ptr [eax+0Ah], 4
mov     eax, ds:dword_55A410
or      byte ptr [eax+0Fh], 10h
mov     eax, 3
call    sub_487602
mov     eax, 60Fh
jmp     loc_485BC6
sub_486350 endp

align 10h
jpt_48651F dd offset loc_486526 ; jump table for switch statement
dd offset loc_48652B
dd offset loc_486590
dd offset loc_4865BE
dd offset loc_4865EE
dd offset loc_486622
dd offset loc_486677
dd offset loc_4866A1
dd offset loc_4866C5
dd offset loc_4866E8
dd offset loc_486717
dd offset loc_4866E8
dd offset loc_48673D
dd offset loc_486768
dd offset loc_4867BA
dd offset loc_4867E4
dd offset def_485B1F



sub_486504 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+2]
cmp     al, 10h         ; switch 17 cases
ja      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
xor     edx, edx
mov     dl, al
jmp     jpt_48651F[edx*4] ; switch jump

loc_486526:             ; jumptable 0048651F case 0
inc     al
mov     [ecx+2], al

loc_48652B:             ; jumptable 0048651F case 1
mov     byte ptr [esi+8], 3
mov     byte ptr [esi+9], 1
or      byte ptr [esi+0BDh], 10h
mov     dword ptr [esi+528h], 16020000h
mov     dword ptr [esi+52Ch], 0FFFF0000h
mov     dword ptr [esi+530h], 0F9C10000h
lea     edx, [esi+538h]
lea     eax, [esi+528h]
call    sub_4DD57B
mov     word ptr [esi+540h], 0
mov     word ptr [esi+542h], 800h
mov     word ptr [esi+544h], 0
mov     byte ptr [esi+548h], 30h ; '0'
jmp     loc_48670F

loc_486590:             ; jumptable 0048651F case 2
mov     eax, 60Ah
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 60Ah
call    sub_47EA91
mov     ds:byte_5F88AC, 0Ch
mov     word ptr [ecx+8], 0Ch
jmp     loc_48670F

loc_4865BE:             ; jumptable 0048651F case 3
mov     di, [ecx+8]
dec     di
mov     [ecx+8], di
jnz     short loc_4865E0
mov     ds:byte_5F88AC, 30h ; '0'
mov     edx, 8
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+2]

loc_4865E0:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'
jmp     loc_4867CF

loc_4865EE:             ; jumptable 0048651F case 4
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_4865FE
mov     ds:byte_5F88AC, 32h ; '2'

loc_4865FE:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
cmp     byte ptr [esi+0A7h], 0
jge     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
call    sub_49DF64
jmp     loc_48670F

loc_486622:             ; jumptable 0048651F case 5
mov     ds:dword_5F888C, 16020000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 0FA610000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
mov     word ptr ds:dword_5F88A4+2, 6D0h
mov     eax, 60Bh
call    sub_47E8B8
mov     eax, 60Dh
jmp     loc_48670A

loc_486677:             ; jumptable 0048651F case 6
mov     eax, 60Ah
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 60Ah
call    sub_47EA91
mov     edx, 0Bh

loc_486698:
xor     eax, eax
call    sub_4A0E24
jmp     short loc_48670F

loc_4866A1:             ; jumptable 0048651F case 7
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_4866B1
mov     ds:byte_5F88AC, 32h ; '2'

loc_4866B1:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 60Ch
jmp     short loc_48670A

loc_4866C5:             ; jumptable 0048651F case 8
mov     eax, 60Ah
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 60Ah
call    sub_47EA91
mov     edx, 0Dh
jmp     short loc_486698

loc_4866E8:             ; jumptable 0048651F cases 9,11
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_4866F8
mov     ds:byte_5F88AC, 32h ; '2'

loc_4866F8:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 60Bh

loc_48670A:
call    sub_47E8B8

loc_48670F:
inc     byte ptr [ecx+2]
jmp     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16

loc_486717:             ; jumptable 0048651F case 10
mov     eax, 60Ah
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 60Ah
call    sub_47EA91
mov     edx, 17h
jmp     loc_486698

loc_48673D:             ; jumptable 0048651F case 12
mov     eax, 60Ah
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     ds:byte_5F88AC, 0Dh
mov     word ptr [ecx+8], 0Ch
mov     eax, 60Ah
call    sub_47EA91
jmp     short loc_48670F

loc_486768:             ; jumptable 0048651F case 13
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jz      short loc_48678B
mov     ax, word ptr ds:dword_5F88A4+2
sub     eax, 30h ; '0'
and     ah, 0Fh
mov     word ptr ds:dword_5F88A4+2, ax
jmp     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16

loc_48678B:
mov     eax, 60Bh
call    sub_47E8B8
mov     ah, 1
mov     ds:byte_5F88AC, ah
mov     word ptr [ecx+8], 6Ch ; 'l'
add     [ecx+2], ah
mov     eax, 60Ch
call    sub_47E8B8
mov     eax, 60Dh
call    sub_47E8B8

loc_4867BA:             ; jumptable 0048651F case 14
mov     di, [ecx+8]
dec     di
mov     [ecx+8], di
jz      short loc_4867DB

loc_4867C6:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h

loc_4867CF:
mov     eax, esi
call    sub_4DD47D
jmp     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16

loc_4867DB:
mov     word ptr [ecx+8], 5Ah ; 'Z'
inc     byte ptr [ecx+2]

loc_4867E4:             ; jumptable 0048651F case 15
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jz      loc_48670F
mov     ax, [esi+542h]
add     eax, 0Ah
and     ah, 0Fh
mov     [esi+542h], ax
jmp     short loc_4867C6
sub_486504 endp

jpt_48684E dd offset loc_486855 ; jump table for switch statement
dd offset loc_486889
dd offset loc_4868BF
dd offset loc_4868DF
dd offset loc_48690B
dd offset loc_486925
dd offset loc_486965
dd offset loc_4869A4
dd offset loc_4869C5
dd offset def_4870C2



sub_486834 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, ds:dword_55A400
mov     al, [eax+2]
cmp     al, 9           ; switch 10 cases
ja      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
and     eax, 0FFh
jmp     jpt_48684E[eax*4] ; switch jump

loc_486855:             ; jumptable 0048684E case 0
mov     eax, 60Bh
call    sub_47E888
test    eax, eax
jz      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     byte ptr [edx+9], 1
mov     word ptr [edx+0Ah], 0
mov     eax, 60Bh
call    sub_47EA91
mov     edx, 6

loc_486880:
xor     eax, eax
call    sub_4A0E24
jmp     short loc_4868B9

loc_486889:             ; jumptable 0048684E case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
call    sub_49DF64
mov     eax, 60Ch
call    sub_47E8B8
mov     eax, 60Dh

loc_4868B4:
call    sub_47E8B8

loc_4868B9:
inc     byte ptr [ecx+2]

def_4870C2:             ; jumptable 004870C2 default case, case 4
pop     edx             ; jumptable 0048684E default case, case 9
pop     ecx
retn

loc_4868BF:             ; jumptable 0048684E case 2
mov     eax, 60Bh
call    sub_47E888
test    eax, eax
jz      short def_4870C2 ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     word ptr [edx+56h], 0E08h
mov     eax, 60Bh

loc_4868D8:
call    sub_47EA91
jmp     short loc_4868B9

loc_4868DF:             ; jumptable 0048684E case 3
mov     eax, 60Bh
call    sub_47E888
test    eax, eax
jz      short def_4870C2 ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     byte ptr [edx+9], 4
mov     word ptr [edx+0Ah], 0
mov     eax, 60Bh
call    sub_47EA91
mov     edx, 16h
jmp     loc_486880

loc_48690B:             ; jumptable 0048684E case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4870C2 ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
mov     eax, 60Ah
jmp     short loc_4868B4

loc_486925:             ; jumptable 0048684E case 5
mov     eax, 60Bh
call    sub_47E888
test    eax, eax
jz      short def_4870C2 ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     byte ptr [edx+9], 2
mov     word ptr [edx+0Ah], 0
mov     eax, 60Bh
call    sub_47EA91
mov     eax, 619h
call    sub_47EA91
mov     eax, 61Fh
call    sub_47EA91
mov     edx, 18h
jmp     loc_486880

loc_486965:             ; jumptable 0048684E case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     eax, 61Fh
call    sub_47E888
test    eax, eax
jz      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     byte ptr [edx+9], 3
mov     word ptr [edx+0Ah], 0
mov     edx, 19h
xor     eax, eax
call    sub_4A0E24
mov     eax, 61Fh
jmp     loc_4868D8

loc_4869A4:             ; jumptable 0048684E case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     eax, 60Ah
call    sub_47E8B8
mov     eax, 60Ch
jmp     loc_4868B4

loc_4869C5:             ; jumptable 0048684E case 8
mov     eax, 60Bh
call    sub_47E888
test    eax, eax
jz      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     byte ptr [edx+9], 5
mov     word ptr [edx+0Ah], 0
jmp     loc_4868B9
sub_486834 endp

align 4
jpt_486A26 dd offset loc_486A2D ; jump table for switch statement
dd offset loc_486A36
dd offset loc_486A6A
dd offset loc_486A92
dd offset loc_486AC4
dd offset loc_486AFE
dd offset loc_486B1F
dd offset loc_486B59
dd offset def_486A26



sub_486A0C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, ds:dword_55A404
mov     al, [eax+2]
cmp     al, 8           ; switch 9 cases
ja      def_486A26      ; jumptable 00486A26 default case, case 8
xor     ebx, ebx
mov     bl, al
jmp     jpt_486A26[ebx*4] ; switch jump

loc_486A2D:             ; jumptable 00486A26 case 0
inc     al
mov     [ecx+2], al
pop     edx
pop     ecx
pop     ebx
retn

loc_486A36:             ; jumptable 00486A26 case 1
mov     eax, 60Ch
call    sub_47E888
test    eax, eax
jz      def_486A26      ; jumptable 00486A26 default case, case 8
mov     byte ptr [edx+9], 1
mov     word ptr [edx+0Ah], 0
mov     eax, 60Ch
call    sub_47EA91
mov     edx, 7

loc_486A61:
xor     eax, eax
call    sub_4A0E24
jmp     short loc_486A8B

loc_486A6A:             ; jumptable 00486A26 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_486A26      ; jumptable 00486A26 default case, case 8
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
mov     eax, 60Bh

loc_486A86:
call    sub_47E8B8

loc_486A8B:
inc     byte ptr [ecx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_486A92:             ; jumptable 00486A26 case 3
mov     eax, 60Ch
call    sub_47E888
test    eax, eax
jz      def_486A26      ; jumptable 00486A26 default case, case 8
mov     byte ptr [edx+9], 2
mov     word ptr [edx+0Ah], 0
mov     word ptr [edx+0Ch], 20h ; ' '
and     byte ptr [edx+0Fh], 0FDh
mov     eax, 60Ch
call    sub_47EA91
jmp     short loc_486A8B

loc_486AC4:             ; jumptable 00486A26 case 4
mov     eax, 60Ch
call    sub_47E888
test    eax, eax
jz      def_486A26      ; jumptable 00486A26 default case, case 8
mov     byte ptr [edx+9], 2
mov     word ptr [edx+0Ah], 0
mov     word ptr [edx+0Ch], 800h
or      byte ptr [edx+0Fh], 2
mov     eax, 60Ch
call    sub_47EA91
mov     edx, 0Ch
jmp     loc_486A61

loc_486AFE:             ; jumptable 00486A26 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_486A26      ; jumptable 00486A26 default case, case 8
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
mov     eax, 60Ah
jmp     loc_486A86

loc_486B1F:             ; jumptable 00486A26 case 6
mov     eax, 60Ch
call    sub_47E888
test    eax, eax
jz      def_486A26      ; jumptable 00486A26 default case, case 8
mov     byte ptr [edx+9], 2
mov     word ptr [edx+0Ah], 0
mov     word ptr [edx+0Ch], 20h ; ' '
or      byte ptr [edx+0Fh], 2
mov     eax, 60Ch
call    sub_47EA91
mov     edx, 0Eh
jmp     loc_486A61

loc_486B59:             ; jumptable 00486A26 case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_486A26      ; jumptable 00486A26 default case, case 8
mov     byte ptr [edx+9], 2
mov     word ptr [edx+0Ah], 0
mov     word ptr [edx+0Ch], 20h ; ' '
and     byte ptr [edx+0Fh], 0FDh
mov     eax, 61Dh
jmp     loc_486A86
sub_486A0C endp

jpt_486BBF dd offset loc_486BC6 ; jump table for switch statement
dd offset loc_486C02
dd offset loc_486C11
dd offset loc_486C34
dd offset loc_486C11
dd offset loc_486C77
dd offset loc_486CA7
dd offset loc_486CE3



sub_486BA4 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     ecx, ds:dword_55A408
mov     al, [eax+2]
cmp     al, 7           ; switch 8 cases
ja      def_486BBF      ; jumptable 00486BBF default case
and     eax, 0FFh
jmp     jpt_486BBF[eax*4] ; switch jump

loc_486BC6:             ; jumptable 00486BBF case 0
mov     eax, 60Dh
call    sub_47E888
test    eax, eax
jz      def_486BBF      ; jumptable 00486BBF default case
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ecx+0Ch], 20h ; ' '
or      byte ptr [ecx+0Fh], 2
mov     eax, 60Dh
call    sub_47EA91
mov     eax, 619h

loc_486BFB:
call    sub_47EA91
jmp     short loc_486C70

loc_486C02:             ; jumptable 00486BBF case 1
mov     edx, 9
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ebx+2]

loc_486C11:             ; jumptable 00486BBF cases 2,4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_486BBF      ; jumptable 00486BBF default case
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
mov     eax, 60Ah
call    sub_47E8B8
jmp     short loc_486C70

loc_486C34:             ; jumptable 00486BBF case 3
mov     eax, 60Dh
call    sub_47E888
test    eax, eax
jz      def_486BBF      ; jumptable 00486BBF default case
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ecx+0Ch], 800h
or      byte ptr [ecx+0Fh], 2
mov     eax, 60Dh
call    sub_47EA91
mov     edx, 0Ah

loc_486C69:
xor     eax, eax
call    sub_4A0E24

loc_486C70:
inc     byte ptr [ebx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_486C77:             ; jumptable 00486BBF case 5
mov     eax, 60Dh
call    sub_47E888
test    eax, eax
jz      def_486BBF      ; jumptable 00486BBF default case
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ecx+0Ch], 20h ; ' '
and     byte ptr [ecx+0Fh], 0FDh
mov     eax, 60Ch
jmp     loc_486BFB

loc_486CA7:             ; jumptable 00486BBF case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_486BBF ; jumptable 00486BBF default case
mov     eax, 61Dh
call    sub_47E888
test    eax, eax
jz      short def_486BBF ; jumptable 00486BBF default case
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ecx+0Ch], 20h ; ' '
or      byte ptr [ecx+0Fh], 2
mov     eax, 61Dh
call    sub_47EA91
mov     edx, 0Fh
jmp     short loc_486C69

loc_486CE3:             ; jumptable 00486BBF case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_486BBF ; jumptable 00486BBF default case
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
mov     eax, 60Fh
call    sub_47E8B8

def_486BBF:             ; jumptable 00486BBF default case
pop     edx
pop     ecx
pop     ebx
retn
sub_486BA4 endp




sub_486D04 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_485BD7[edx*4]
mov     edx, offset unk_55A440

loc_486D16:
cmp     edx, offset unk_55A4A0
jnb     loc_485BFA
test    byte ptr [edx], 1
jz      short loc_486D2C
mov     eax, edx
call    dword ptr [edx+4]

loc_486D2C:
add     edx, 0Ch
jmp     short loc_486D16
sub_486D04 endp

align 4
jpt_486D7B dd offset loc_486D82 ; jump table for switch statement
dd offset loc_486DCB
dd offset loc_486E9B
dd offset loc_486EAD
dd offset loc_486EDA
dd offset loc_486F2C
dd offset loc_486F43
dd offset loc_486F5E
dd offset loc_486F78
dd offset loc_486FAA
dd offset loc_486FC8



sub_486D60 proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+6]
cmp     al, 0Ah         ; switch 11 cases
ja      def_486D7B      ; jumptable 00486D7B default case
xor     edx, edx
mov     dl, al
jmp     jpt_486D7B[edx*4] ; switch jump

loc_486D82:             ; jumptable 00486D7B case 0
mov     eax, esi
call    sub_4B55D5
test    eax, eax
jz      def_486D7B      ; jumptable 00486D7B default case
mov     eax, 10h
call    sub_4D9040
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51FE5C
mov     dword ptr [ecx+0A4h], offset unk_51FE4C
inc     byte ptr [ecx+6]
mov     ds:word_77EA80, 64h ; 'd'

loc_486DCB:             ; jumptable 00486D7B case 1
mov     byte ptr [esi+8], 3
mov     byte ptr [esi+9], 1
or      byte ptr [esi+0BDh], 10h
mov     dword ptr [esi+528h], 16160000h
mov     dword ptr [esi+52Ch], 0FFFF0000h
mov     dword ptr [esi+530h], 0FA800000h
lea     edx, [esi+538h]
lea     eax, [esi+528h]
call    sub_4DD57B
mov     word ptr [esi+540h], 0
mov     word ptr [esi+542h], 494h
mov     word ptr [esi+544h], 0
mov     byte ptr [esi+548h], 30h ; '0'
xor     eax, eax
call    sub_4873C4
call    sub_48761B
xor     edx, edx
xor     eax, eax
call    sub_4875D1
mov     edx, 1
mov     eax, edx
call    sub_4875D1
mov     edx, 2
mov     eax, edx
call    sub_4875D1
mov     edx, 3
mov     eax, edx
call    sub_4875D1
mov     eax, 606h
call    sub_47EA91
mov     eax, 607h
call    sub_47EA91
mov     eax, 608h
call    sub_47EA91
mov     eax, 609h
call    sub_47EA91
inc     byte ptr [ecx+6]
mov     dword ptr [ecx+0Ch], 1Eh
jmp     def_486D7B      ; jumptable 00486D7B default case

loc_486E9B:             ; jumptable 00486D7B case 2
cmp     byte ptr ds:dword_77E784+1, 2
jnz     def_486D7B      ; jumptable 00486D7B default case
inc     al
mov     [ecx+6], al

loc_486EAD:             ; jumptable 00486D7B case 3
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
test    edx, edx
jge     def_486D7B      ; jumptable 00486D7B default case
inc     byte ptr [ecx+6]
mov     eax, 606h
call    sub_47E8B8
mov     edx, 0Fh

loc_486ECE:
xor     eax, eax
call    sub_4A0E24
jmp     def_486D7B      ; jumptable 00486D7B default case

loc_486EDA:             ; jumptable 00486D7B case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_486D7B      ; jumptable 00486D7B default case
inc     al
mov     [ecx+6], al
mov     dword ptr [ecx+0Ch], 7
mov     edx, 10h
xor     eax, eax
call    sub_4A0E24
mov     eax, 606h
call    sub_47E8B8

loc_486F09:
mov     eax, 607h
call    sub_47E8B8
mov     eax, 608h
call    sub_47E8B8
mov     eax, 609h

loc_486F22:
call    sub_47E8B8
jmp     def_486D7B      ; jumptable 00486D7B default case

loc_486F2C:             ; jumptable 00486D7B case 5
mov     ebp, [ecx+0Ch]
dec     ebp
mov     [ecx+0Ch], ebp
test    ebp, ebp
jge     def_486D7B      ; jumptable 00486D7B default case
inc     byte ptr [ecx+6]
jmp     def_486D7B      ; jumptable 00486D7B default case

loc_486F43:             ; jumptable 00486D7B case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_486D7B      ; jumptable 00486D7B default case
inc     al
mov     [ecx+6], al
mov     dword ptr [ecx+0Ch], 46h ; 'F'
jmp     short loc_486F09

loc_486F5E:             ; jumptable 00486D7B case 7
mov     esi, [ecx+0Ch]
dec     esi
mov     [ecx+0Ch], esi
jnz     def_486D7B      ; jumptable 00486D7B default case
inc     byte ptr [ecx+6]
mov     edx, 11h
jmp     loc_486ECE

loc_486F78:             ; jumptable 00486D7B case 8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_486D7B      ; jumptable 00486D7B default case
inc     al
mov     [ecx+6], al
mov     edx, 12h
xor     eax, eax
call    sub_4A0E24
mov     eax, 606h
call    sub_47E8B8
mov     eax, 60Eh
jmp     loc_486F22

loc_486FAA:             ; jumptable 00486D7B case 9
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_486D7B      ; jumptable 00486D7B default case
inc     al
mov     [ecx+6], al
mov     dword ptr [ecx+0Ch], 88h
jmp     def_486D7B      ; jumptable 00486D7B default case

loc_486FC8:             ; jumptable 00486D7B case 10
cmp     ds:byte_77EAB8, 0
jnz     short def_486D7B ; jumptable 00486D7B default case
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
test    edx, edx
jge     short def_486D7B ; jumptable 00486D7B default case
xor     eax, eax
call    sub_487602
mov     eax, 1
call    sub_487602
mov     eax, 2
call    sub_487602
mov     eax, 3
call    sub_487602
mov     eax, esi
call    sub_4B565A
mov     byte ptr [ecx], 0
mov     byte ptr ds:dword_77E954, 1
call    sub_48742C
mov     eax, 1
call    sub_4873C4
mov     eax, 5
call    sub_47E8B8
mov     eax, 20h ; ' '
call    sub_4D9040
mov     ds:word_77EA80, 7Fh

def_486D7B:             ; jumptable 00486D7B default case
mov     dh, [ecx+6]
test    dh, dh
jbe     short loc_48705A
cmp     dh, 0Ah
jnb     short loc_48705A
mov     esi, [ecx+0A4h]
cmp     byte ptr [esi], 0FFh
jz      short loc_48705A
mov     eax, ecx
call    dword ptr [esi+4]

loc_48705A:
cmp     byte ptr [ecx+6], 2
jbe     short loc_48708D
call    sub_47EBCB
test    eax, eax
jz      short loc_48708D
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
mov     byte ptr [ecx+6], 0Ah
mov     dword ptr [ecx+0Ch], 0
call    sub_48761B

loc_48708D:
pop     ebp

loc_48708E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_486D60 endp

align 4
jpt_4870C2 dd offset loc_4870C9 ; jump table for switch statement
dd offset loc_4870F5
dd offset loc_487117
dd offset loc_487139
dd offset def_4870C2

loc_4870A8:
push    ecx
push    edx
mov     edx, eax
mov     ecx, ds:dword_55A400
mov     al, [eax+2]
cmp     al, 4           ; switch 5 cases
ja      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
and     eax, 0FFh
jmp     jpt_4870C2[eax*4] ; switch jump

loc_4870C9:             ; jumptable 004870C2 case 0
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     eax, 606h
call    sub_47EA91
mov     byte ptr [ecx+9], 1

loc_4870E9:
mov     word ptr [ecx+0Ah], 0
inc     byte ptr [edx+2]
pop     edx
pop     ecx
retn

loc_4870F5:             ; jumptable 004870C2 case 1
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     eax, 606h
call    sub_47EA91
mov     byte ptr [ecx+9], 0
jmp     short loc_4870E9

loc_487117:             ; jumptable 004870C2 case 2
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     eax, 606h
call    sub_47EA91
mov     byte ptr [ecx+9], 2
jmp     short loc_4870E9

loc_487139:             ; jumptable 004870C2 case 3
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     eax, 606h
call    sub_47EA91
mov     byte ptr [ecx+9], 3
jmp     short loc_4870E9
align 4
jpt_487186 dd offset loc_48718D ; jump table for switch statement
dd offset loc_48718D
dd offset loc_4871B5
dd offset loc_4871D3

loc_48716C:
push    ecx
push    edx
mov     edx, eax
mov     ecx, ds:dword_55A404
mov     al, [eax+2]
cmp     al, 3           ; switch 4 cases
ja      def_487186      ; jumptable 00487186 default case
and     eax, 0FFh
jmp     jpt_487186[eax*4] ; switch jump

loc_48718D:             ; jumptable 00487186 cases 0,1
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short def_487186 ; jumptable 00487186 default case
mov     eax, 607h
call    sub_47EA91
mov     byte ptr [ecx+9], 1

loc_4871A9:
mov     word ptr [ecx+0Ah], 0
inc     byte ptr [edx+2]
pop     edx
pop     ecx
retn

loc_4871B5:             ; jumptable 00487186 case 2
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short def_487186 ; jumptable 00487186 default case
mov     eax, 607h
call    sub_47EA91
mov     byte ptr [ecx+9], 2
jmp     short loc_4871A9

loc_4871D3:             ; jumptable 00487186 case 3
mov     eax, 61Ah
call    sub_47E888
test    eax, eax
jz      short def_487186 ; jumptable 00487186 default case
mov     eax, 1
call    sub_4874BB
mov     eax, 1
call    sub_487602
mov     eax, 61Dh
call    sub_47E8B8

def_487186:             ; jumptable 00487186 default case
pop     edx
pop     ecx
retn
align 4
jpt_48723C dd offset loc_487243 ; jump table for switch statement
dd offset loc_487243
dd offset loc_487271
dd offset loc_487291
dd offset loc_4872B3
dd offset loc_4872D9
dd offset def_48723C



sub_487220 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_55A408
mov     al, [eax+2]
cmp     al, 6           ; switch 7 cases
ja      def_48723C      ; jumptable 0048723C default case, case 6
and     eax, 0FFh
jmp     jpt_48723C[eax*4] ; switch jump

loc_487243:             ; jumptable 0048723C cases 0,1
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      def_48723C      ; jumptable 0048723C default case, case 6
mov     eax, 608h
call    sub_47EA91
mov     byte ptr [ecx+9], 1

loc_487263:
mov     word ptr [ecx+0Ah], 0

loc_487269:
inc     byte ptr [edx+2]

def_48723C:             ; jumptable 0048723C default case, case 6
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_487271:             ; jumptable 0048723C case 2
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      short def_48723C ; jumptable 0048723C default case, case 6
mov     eax, 608h
call    sub_47EA91
mov     word ptr [edx+8], 3Ch ; '<'
jmp     short loc_487269

loc_487291:             ; jumptable 0048723C case 3
mov     di, [edx+8]
dec     di
mov     [edx+8], di
jnz     short def_48723C ; jumptable 0048723C default case, case 6
mov     byte ptr [ecx+9], 2
mov     [ecx+0Ah], di
inc     byte ptr [edx+2]
mov     word ptr [edx+8], 0F0h
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4872B3:             ; jumptable 0048723C case 4
mov     bx, [edx+8]
dec     bx
mov     [edx+8], bx
jnz     short loc_4872C9
mov     byte ptr [ecx+9], 3
mov     [ecx+0Ah], bx
jmp     short loc_487269

loc_4872C9:
mov     eax, 60Eh
call    sub_47E888
test    eax, eax
jz      short def_48723C ; jumptable 0048723C default case, case 6
jmp     short loc_487269

loc_4872D9:             ; jumptable 0048723C case 5
mov     eax, 61Bh
call    sub_47E888
test    eax, eax
jz      short def_48723C ; jumptable 0048723C default case, case 6
mov     byte ptr [ecx+9], 0
jmp     loc_487263
sub_487220 endp

jpt_48731F dd offset loc_487326 ; jump table for switch statement
dd offset loc_487326
dd offset loc_487353
dd offset loc_487373
dd offset loc_48738A



sub_487304 proc near

; FUNCTION CHUNK AT 004873B6 SIZE 00000004 BYTES

push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, ds:dword_55A40C
mov     al, [eax+2]
cmp     al, 4           ; switch 5 cases
ja      def_48731F      ; jumptable 0048731F default case
and     eax, 0FFh
jmp     jpt_48731F[eax*4] ; switch jump

loc_487326:             ; jumptable 0048731F cases 0,1
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      def_48731F      ; jumptable 0048731F default case
mov     eax, 609h
call    sub_47EA91
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0

loc_48734C:
inc     byte ptr [edx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_487353:             ; jumptable 0048731F case 2
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      short def_48731F ; jumptable 0048731F default case
mov     eax, 609h
call    sub_47EA91
mov     word ptr [edx+8], 1Eh
jmp     short loc_48734C

loc_487373:             ; jumptable 0048731F case 3
mov     bx, [edx+8]
dec     bx
mov     [edx+8], bx
jnz     short loc_48738A ; jumptable 0048731F case 4
mov     byte ptr [ecx+9], 2
mov     [ecx+0Ah], bx
inc     byte ptr [edx+2]

loc_48738A:             ; jumptable 0048731F case 4
mov     eax, 61Ch
call    sub_47E888
test    eax, eax
jz      short def_48731F ; jumptable 0048731F default case
mov     eax, 3
call    sub_4874BB
mov     eax, 3
call    sub_487602
mov     eax, 61Eh
call    sub_47E8B8
sub_487304 endp

; START OF FUNCTION CHUNK FOR sub_48742C
;   ADDITIONAL PARENT FUNCTION sub_487304

def_48731F:             ; jumptable 0048731F default case
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_48742C



sub_4873BA proc near
call    sub_49DBD1
jmp     sub_49DECF
sub_4873BA endp




sub_4873C4 proc near
push    ebx
push    ecx
push    edx
push    esi
movsx   edx, al
shl     edx, 3
add     edx, offset unk_520330
xor     ecx, ecx
mov     ds:dword_51F11C, ecx
xor     ebx, ebx

loc_4873DE:
movsx   eax, bx
cmp     eax, [edx]
jnb     loc_48708E
movsx   ecx, bx
mov     eax, ecx
shl     eax, 2
add     ecx, eax
shl     ecx, 2
mov     eax, [edx+4]
add     eax, ecx
xor     ecx, ecx
mov     cl, [eax]
call    sub_49DB4D
movsx   eax, cx
mov     esi, ds:dword_560C00[eax*4]
mov     ds:dword_55A400[eax*4], esi
and     byte ptr [esi+6], 0DFh
movsx   ecx, cx
mov     eax, 80000000h
shr     eax, cl
or      ds:dword_51F11C, eax
inc     ebx
jmp     short loc_4873DE
sub_4873C4 endp




sub_48742C proc near

; FUNCTION CHUNK AT 004873B6 SIZE 00000004 BYTES

push    ebx
push    ecx
push    edx
xor     ebx, ebx

loc_487431:
mov     edx, ds:dword_51F11C
test    edx, edx
jz      def_48731F      ; jumptable 0048731F default case
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
test    eax, edx
jz      short loc_4874B5
mov     edx, ds:dword_55A400[ebx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_4874A4
jbe     short loc_48746B
cmp     eax, 60h ; '`'
jz      short loc_48748C
jmp     short loc_4874A4

loc_48746B:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
mov     ecx, eax
shl     ecx, 2
mov     eax, ds:dword_77E6F0
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
shl     ecx, 2
mov     eax, [eax]
jmp     short loc_48749E

loc_48748C:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0

loc_48749E:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_4874A4:
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_51F11C, eax

loc_4874B5:
inc     ebx
jmp     loc_487431
sub_48742C endp




sub_4874BB proc near
push    ebx
push    ecx
push    edx
mov     bl, al
movsx   ecx, al
mov     eax, 80000000h
shr     eax, cl
test    ds:dword_51F11C, eax
jz      loc_487542
movsx   edx, bl
mov     edx, ds:dword_55A400[edx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_487530
jbe     short loc_4874F8
cmp     eax, 60h ; '`'
jz      short loc_487518
jmp     short loc_487530

loc_4874F8:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6F0
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
shl     ecx, 2
mov     eax, [eax]
jmp     short loc_48752A

loc_487518:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0

loc_48752A:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_487530:
movsx   ecx, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_51F11C, eax

loc_487542:
pop     edx
pop     ecx
pop     ebx
retn
sub_4874BB endp




sub_487546 proc near
push    ebx
push    ecx
push    edx
mov     bl, al
movsx   ecx, al
mov     eax, 80000000h
shr     eax, cl
test    ds:dword_51F11C, eax
jz      loc_4875CD
movsx   edx, bl
mov     edx, ds:dword_55A400[edx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_4875BB
jbe     short loc_487583
cmp     eax, 60h ; '`'
jz      short loc_4875A3
jmp     short loc_4875BB

loc_487583:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6F0
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
shl     ecx, 2
mov     eax, [eax]
jmp     short loc_4875B5

loc_4875A3:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0

loc_4875B5:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_4875BB:
movsx   ecx, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_51F11C, eax

loc_4875CD:
pop     edx
pop     ecx
pop     ebx
retn
sub_487546 endp




sub_4875D1 proc near
push    ecx
xor     ecx, ecx
mov     cl, al
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, offset unk_55A440
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
and     edx, 0FFh
mov     edx, ds:off_520300[edx*4]
mov     [eax+4], edx
pop     ecx
retn
sub_4875D1 endp




sub_487602 proc near
push    edx
xor     edx, edx
mov     dl, al
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset unk_55A440
mov     byte ptr [eax], 0
pop     edx
retn
sub_487602 endp




sub_48761B proc near
push    edx
xor     edx, edx
mov     eax, offset unk_55A440

loc_487623:
mov     byte ptr [eax], 0
mov     [eax+1], dl
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
add     eax, 0Ch
inc     edx
cmp     edx, 8
jl      short loc_487623
mov     byte ptr [eax], 0
pop     edx
retn
sub_48761B endp




sub_48763F proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_487645[edx*4]
mov     edx, offset unk_55A4AC

loc_487651:
cmp     edx, offset dword_55A50C
jnb     short loc_487668
test    byte ptr [edx], 1
jz      short loc_487663
mov     eax, edx
call    dword ptr [edx+4]

loc_487663:
add     edx, 0Ch
jmp     short loc_487651

loc_487668:
pop     edx
retn
sub_48763F endp

db 90h
jpt_487690 dd offset loc_487697 ; jump table for switch statement
dd offset loc_48772F
dd offset loc_487748
dd offset loc_487770



sub_48767B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      def_487690      ; jumptable 00487690 default case
and     eax, 0FFh
jmp     jpt_487690[eax*4] ; switch jump

loc_487697:             ; jumptable 00487690 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_487690      ; jumptable 00487690 default case
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_520CAC
mov     dword ptr [ecx+0A4h], offset unk_520C9C
mov     edx, 0Ah
xor     eax, eax
call    sub_4A0E24
mov     eax, 607h
call    sub_47EA91
mov     eax, 608h
call    sub_47EA91
mov     eax, 609h
call    sub_47EA91
mov     eax, 604h
call    sub_47EA91
call    sub_487C36
xor     edx, edx
xor     eax, eax
call    sub_487BEC
mov     edx, 1
mov     eax, edx
call    sub_487BEC
mov     edx, 2
mov     eax, edx
call    sub_487BEC

loc_487727:
inc     byte ptr [ecx+6]
jmp     def_487690      ; jumptable 00487690 default case

loc_48772F:             ; jumptable 00487690 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_487690      ; jumptable 00487690 default case
mov     eax, 608h
call    sub_47E8B8
jmp     short loc_487727

loc_487748:             ; jumptable 00487690 case 2
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      def_487690      ; jumptable 00487690 default case
mov     eax, 604h
call    sub_47EA91
mov     eax, 0Ah
call    sub_49E0D7
jmp     short loc_487727

loc_487770:             ; jumptable 00487690 case 3
cmp     ds:word_6E23D6, 0
jnz     short def_487690 ; jumptable 00487690 default case
xor     eax, eax
call    sub_487C1D
mov     eax, 1
call    sub_487C1D
mov     eax, 2
call    sub_487C1D
call    sub_487B46
mov     ah, 2
mov     byte ptr ds:dword_77EA5A+2, ah
mov     ds:byte_77EA5E, 6
mov     dh, 1
mov     ds:byte_77EA5F, dh
xor     ebx, ebx
mov     word ptr ds:dword_77EA4E+2, bx
mov     word ptr ds:dword_77EA52, bx
mov     word ptr ds:dword_77EA52+2, bx
mov     word ptr ds:dword_77EA5A, bx
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, ah
mov     byte ptr ds:dword_77E954, dh
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     [ecx], bl

def_487690:             ; jumptable 00487690 default case
cmp     byte ptr [ecx+6], 0
jbe     short loc_48780E
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_48780E
mov     edx, eax
mov     eax, ecx
call    dword ptr [edx+4]

loc_48780E:
mov     dh, [ecx+6]
test    dh, dh
jbe     short loc_487845
cmp     dh, 3
jnb     short loc_487845
call    sub_47EBCB
test    eax, eax
jz      short loc_487845
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
mov     eax, 604h
call    sub_47E8B8
mov     byte ptr [ecx+6], 2

loc_487845:
pop     edx
pop     ecx
pop     ebx
retn
sub_48767B endp

db 8Bh, 0C0h
jpt_48787D dd offset loc_487884 ; jump table for switch statement
dd offset loc_487889
dd offset loc_4878F1
dd offset loc_487911
dd offset loc_48792C
dd offset def_48787D



sub_487863 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     al, [eax+2]
cmp     al, 5           ; switch 6 cases
ja      def_48787D      ; jumptable 0048787D default case, case 5
xor     edx, edx
mov     dl, al
jmp     jpt_48787D[edx*4] ; switch jump

loc_487884:             ; jumptable 0048787D case 0
inc     al
mov     [ecx+2], al

loc_487889:             ; jumptable 0048787D case 1
mov     byte ptr [ebx+8], 3
mov     byte ptr [ebx+9], 1
or      byte ptr [ebx+0BDh], 10h
mov     dword ptr [ebx+528h], 2580000h
mov     dword ptr [ebx+52Ch], 0FCFF0000h
mov     dword ptr [ebx+530h], 8340000h
lea     edx, [ebx+538h]
lea     eax, [ebx+528h]
call    sub_4DD57B
mov     word ptr [ebx+540h], 0
mov     word ptr [ebx+542h], 990h
mov     word ptr [ebx+544h], 0
mov     byte ptr [ebx+548h], 30h ; '0'

loc_4878E9:
inc     byte ptr [ecx+2]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4878F1:             ; jumptable 0048787D case 2
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short def_48787D ; jumptable 0048787D default case, case 5
mov     eax, 607h
call    sub_47EA91
mov     word ptr [ecx+8], 20h ; ' '
jmp     short loc_4878E9

loc_487911:             ; jumptable 0048787D case 3
mov     si, [ecx+8]
dec     si
mov     [ecx+8], si
jnz     short def_48787D ; jumptable 0048787D default case, case 5
mov     ds:byte_5F88AC, 0Dh
mov     word ptr [ecx+8], 10h
jmp     short loc_4878E9

loc_48792C:             ; jumptable 0048787D case 4
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jnz     short loc_48794B
mov     ds:byte_5F88AC, 30h ; '0'
mov     eax, 608h
call    sub_47EA91
jmp     short loc_4878E9

loc_48794B:
mov     ax, word ptr ds:dword_5F88A4+2
sub     eax, 30h ; '0'
and     ah, 0Fh
mov     word ptr ds:dword_5F88A4+2, ax

def_48787D:             ; jumptable 0048787D default case, case 5
pop     esi

def_487A8F:             ; jumptable 00487A8F default case, case 3
pop     edx
pop     ecx
pop     ebx
retn
sub_487863 endp

db 90h
jpt_487991 dd offset loc_487998 ; jump table for switch statement
dd offset loc_4879A3
dd offset loc_4879DC
dd offset loc_487A18
dd offset loc_487A48



sub_487977 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, ds:dword_55A518
mov     al, [eax+2]
cmp     al, 4           ; switch 5 cases
ja      def_487991      ; jumptable 00487991 default case
and     eax, 0FFh
jmp     jpt_487991[eax*4] ; switch jump

loc_487998:             ; jumptable 00487991 case 0
mov     word ptr [edx+56h], 200h
jmp     loc_487A5B

loc_4879A3:             ; jumptable 00487991 case 1
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      def_487991      ; jumptable 00487991 default case
mov     eax, 608h
call    sub_47EA91
mov     eax, 607h
call    sub_47E8B8
mov     byte ptr [edx+9], 3
mov     word ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 0
jmp     loc_487A5B

loc_4879DC:             ; jumptable 00487991 case 2
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      def_487991      ; jumptable 00487991 default case
mov     eax, 608h
call    sub_47EA91
mov     eax, 607h
call    sub_47EA91
mov     byte ptr [edx+9], 3
mov     word ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1
mov     word ptr [edx+56h], 0
jmp     short loc_487A5B

loc_487A18:             ; jumptable 00487991 case 3
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      short def_487991 ; jumptable 00487991 default case
mov     eax, 608h
call    sub_47EA91
mov     byte ptr [edx+9], 1
mov     word ptr [edx+0Ah], 0
mov     edx, 0Bh
xor     eax, eax
call    sub_4A0E24
jmp     short loc_487A5B

loc_487A48:             ; jumptable 00487991 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_487991 ; jumptable 00487991 default case
mov     eax, 604h
call    sub_47E8B8

loc_487A5B:
inc     byte ptr [ecx+2]

def_487991:             ; jumptable 00487991 default case
pop     edx
pop     ecx
retn
sub_487977 endp

db 8Bh, 0C0h
jpt_487A8F dd offset loc_487A96 ; jump table for switch statement
dd offset loc_487A9F
dd offset loc_487ABE
dd offset def_487A8F



sub_487A73 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, ds:dword_55A51C
mov     cl, [edx+2]
cmp     cl, 3           ; switch 4 cases
ja      def_487A8F      ; jumptable 00487A8F default case, case 3
and     ecx, 0FFh
jmp     jpt_487A8F[ecx*4] ; switch jump

loc_487A96:             ; jumptable 00487A8F case 0
mov     word ptr [edx+8], 258h
inc     byte ptr [edx+2]

loc_487A9F:             ; jumptable 00487A8F case 1
mov     bx, [edx+8]
dec     bx
mov     [edx+8], bx
jnz     def_487A8F      ; jumptable 00487A8F default case, case 3
mov     byte ptr [eax+9], 2
mov     [eax+0Ah], bx

loc_487AB7:
inc     byte ptr [edx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_487ABE:             ; jumptable 00487A8F case 2
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      def_487A8F      ; jumptable 00487A8F default case, case 3
mov     eax, 609h
call    sub_47EA91
jmp     short loc_487AB7
sub_487A73 endp




sub_487ADC proc near
call    sub_49DBD1
jmp     sub_49DECF
sub_487ADC endp




sub_487AE6 proc near
push    ebx
push    ecx
push    edx
push    esi
movsx   edx, al
shl     edx, 3
add     edx, offset unk_520D00
xor     ebx, ebx

loc_487AF8:
movsx   eax, bx
cmp     eax, [edx]
jnb     def_48787D      ; jumptable 0048787D default case, case 5
movsx   ecx, bx
mov     eax, ecx
shl     eax, 2
add     ecx, eax
shl     ecx, 2
mov     eax, [edx+4]
add     eax, ecx
xor     ecx, ecx
mov     cl, [eax]
call    sub_49DB4D
movsx   eax, cx
mov     esi, ds:dword_560C00[eax*4]
mov     ds:dword_55A50C[eax*4], esi
and     byte ptr [esi+6], 0DFh
movsx   ecx, cx
mov     eax, 80000000h
shr     eax, cl
or      ds:dword_520410, eax
inc     ebx
jmp     short loc_487AF8
sub_487AE6 endp




sub_487B46 proc near
push    edx
xor     edx, edx

loc_487B49:
cmp     ds:dword_520410, 0
jz      loc_487668
movsx   eax, dl
call    sub_487B61
inc     edx
jmp     short loc_487B49
sub_487B46 endp




sub_487B61 proc near
push    ebx
push    ecx
push    edx
mov     bl, al
movsx   ecx, al
mov     eax, 80000000h
shr     eax, cl
test    ds:dword_520410, eax
jz      loc_487BE8
movsx   edx, bl
mov     edx, ds:dword_55A50C[edx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_487BD6
jbe     short loc_487B9E
cmp     eax, 60h ; '`'
jz      short loc_487BBE
jmp     short loc_487BD6

loc_487B9E:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6F0
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
shl     ecx, 2
mov     eax, [eax]
jmp     short loc_487BD0

loc_487BBE:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0

loc_487BD0:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_487BD6:
movsx   ecx, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_520410, eax

loc_487BE8:
pop     edx
pop     ecx
pop     ebx
retn
sub_487B61 endp




sub_487BEC proc near
push    ecx
xor     ecx, ecx
mov     cl, al
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, offset unk_55A4AC
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
and     edx, 0FFh
mov     edx, ds:off_520CF4[edx*4]
mov     [eax+4], edx
pop     ecx
retn
sub_487BEC endp




sub_487C1D proc near
push    edx
xor     edx, edx
mov     dl, al
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset unk_55A4AC
mov     byte ptr [eax], 0
pop     edx
retn
sub_487C1D endp




sub_487C36 proc near
push    edx
xor     edx, edx
mov     eax, offset unk_55A4AC

loc_487C3E:
mov     byte ptr [eax], 0
mov     [eax+1], dl
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
add     eax, 0Ch
inc     edx
cmp     edx, 8
jl      short loc_487C3E
mov     byte ptr [eax], 0
pop     edx
retn
sub_487C36 endp




sub_487C5A proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_487C60[edx*4]
pop     edx
retn
sub_487C5A endp

align 2
jpt_487C99 dd offset loc_487CA0 ; jump table for switch statement
dd offset loc_487CCD
dd offset loc_487D76
dd offset loc_487D7E
dd offset loc_487D9A



sub_487C7E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_487C99      ; jumptable 00487C99 default case
and     eax, 0FFh
jmp     jpt_487C99[eax*4] ; switch jump

loc_487CA0:             ; jumptable 00487C99 case 0
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_520D60
mov     dword ptr [esi+0A4h], offset unk_520DAC
mov     dword ptr [esi+0Ch], 0
mov     byte ptr [esi+0Ah], 0
inc     byte ptr [esi+5]

loc_487CCD:             ; jumptable 00487C99 case 1
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      def_487C99      ; jumptable 00487C99 default case
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 0
mov     word ptr [ecx+53Ah], 0FFFFh
mov     word ptr [ecx+53Ch], 0DA80h
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
xor     ebx, ebx
mov     ds:word_57096A, bx
mov     eax, offset unk_520D4C
call    sub_49DB4D

loc_487D71:
inc     byte ptr [esi+5]
jmp     short def_487C99 ; jumptable 00487C99 default case

loc_487D76:             ; jumptable 00487C99 case 2
inc     byte ptr ds:dword_5F836C+1
jmp     short loc_487D71

loc_487D7E:             ; jumptable 00487C99 case 3
or      ds:byte_5F8421, 20h
mov     ds:word_77EA80, 6Eh ; 'n'
mov     eax, 0B000Ah
call    sub_4D8E42
jmp     short loc_487D71

loc_487D9A:             ; jumptable 00487C99 case 4
call    sub_4D8ECC
test    eax, eax
jz      short def_487C99 ; jumptable 00487C99 default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_520DBC
mov     dword ptr [esi+0A4h], offset unk_520FD4
inc     byte ptr [esi+4]
mov     byte ptr [esi+5], 0

def_487C99:             ; jumptable 00487C99 default case
call    sub_49DBD1
call    sub_49DECF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_487C7E endp




sub_487DD2 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_487DFD
call    sub_47EBCB
test    eax, eax
jz      short loc_487DF0
mov     byte ptr [edx+0Ah], 1
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_487DF0:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
jmp     short loc_487E04

loc_487DFD:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 1

loc_487E04:
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_487DD2 endp

db 8Bh, 0C0h
jpt_487E38 dd offset loc_487E3F ; jump table for switch statement
dd offset loc_487EBB
dd offset loc_487EE6
dd offset loc_487EFD
dd offset loc_487F16



sub_487E22 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_487E38      ; jumptable 00487E38 default case
and     eax, 0FFh
jmp     jpt_487E38[eax*4] ; switch jump

loc_487E3F:             ; jumptable 00487E38 case 0
call    sub_4E1D8A
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0F8D3h
mov     word ptr ds:dword_5F889E, 0FCFFh
mov     word ptr ds:dword_5F889E+2, 9Dh
mov     ds:dword_5F888C, 0F8D30000h
mov     ds:dword_5F8890, 0FCFF0000h
mov     ds:dword_5F8894, 9D0000h
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 0A08h
mov     ds:word_5F88A8, di
xor     bh, bh
mov     ds:byte_5F88AC, bh

loc_487EB3:
inc     byte ptr [ecx+5]
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_487EBB:             ; jumptable 00487E38 case 1
call    sub_4D8EB1
mov     eax, [ecx+24h]
call    sub_4DE2F6
mov     eax, offset byte_5F8364
call    sub_4B565A
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_487EB3
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
jmp     short loc_487EB3

loc_487EE6:             ; jumptable 00487E38 case 2
cmp     ds:byte_77EAB8, 0
jnz     short def_487E38 ; jumptable 00487E38 default case
mov     edx, 0Bh
xor     eax, eax
call    sub_4A0E24
jmp     short loc_487EB3

loc_487EFD:             ; jumptable 00487E38 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_487E38 ; jumptable 00487E38 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000009h
call    sub_4D89E4
jmp     short loc_487EB3

loc_487F16:             ; jumptable 00487E38 case 4
mov     byte ptr [ecx], 0

def_487E38:             ; jumptable 00487E38 default case
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_487E22 endp



; Attributes: thunk

sub_487F1E proc near
jmp     sub_49DBD1
sub_487F1E endp




sub_487F23 proc near
push    edx
xor     edx, edx
mov     ds:word_57096A, dx
cmp     dword ptr [eax+10h], 130h
jle     short loc_487F42
mov     ax, ds:word_5F8488
mov     ds:word_57096A, ax

loc_487F42:
call    sub_49DBD1
pop     edx
retn
sub_487F23 endp




sub_487F49 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     ebx, [eax+10h]
test    ebx, ebx
jnz     short loc_487FB5
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0F7FCh
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 0F1E0h
mov     ds:dword_5F888C, 0F7FC0000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 0F1E00000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, ax
jmp     short loc_487FC6

loc_487FB5:
cmp     ebx, 1
jnz     short loc_487FC6
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D

loc_487FC6:
xor     edi, edi
mov     ds:word_57096A, di
cmp     dword ptr [edx+10h], 78h ; 'x'
jge     short loc_487FFE
mov     ax, [ecx+124h]
mov     ds:word_57096A, ax
mov     esi, [edx+10h]
cmp     esi, 68h ; 'h'
jle     short loc_487FFE
cmp     esi, 76h ; 'v'
jge     short loc_487FFE
mov     dx, [ecx+12Ah]
or      eax, edx
mov     ds:word_57096A, ax

loc_487FFE:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_487F49 endp




sub_488004 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48800A[edx*4]
pop     edx
retn
sub_488004 endp




sub_488013 proc near
push    edx
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_4880AA
mov     eax, 626h
call    sub_47E888
test    eax, eax
jz      short loc_488040
mov     byte ptr [edx+0Bh], 4
mov     byte ptr [edx+4], 4
jmp     short loc_4880A6

loc_488040:
mov     eax, 622h
call    sub_47E888
test    eax, eax
jz      short loc_48806C
mov     eax, 62Ah
call    sub_47E888
test    eax, eax
jnz     short loc_48806C
mov     eax, 62Ah
call    sub_47E8B8
mov     byte ptr [edx+0Bh], 0
jmp     short loc_4880A2

loc_48806C:
mov     eax, 623h
call    sub_47E888
test    eax, eax
jz      short loc_48807E
mov     byte ptr [edx+0Bh], 1

loc_48807E:
mov     eax, 624h
call    sub_47E888
test    eax, eax
jz      short loc_488090
mov     byte ptr [edx+0Bh], 2

loc_488090:
mov     eax, 625h
call    sub_47E888
test    eax, eax
jz      short loc_4880A2
mov     byte ptr [edx+0Bh], 3

loc_4880A2:
mov     byte ptr [edx+4], 1

loc_4880A6:
mov     byte ptr [edx+5], 0

loc_4880AA:
pop     edx
retn
sub_488013 endp




sub_4880AC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_4880C0
cmp     al, 1
jz      short loc_4880D8
pop     edx
pop     ecx
pop     ebx
retn

loc_4880C0:
xor     eax, eax
mov     al, [ecx+0Bh]
mov     eax, ds:dword_521460[eax*4]
call    sub_4D8E42
inc     byte ptr [ecx+5]
pop     edx
pop     ecx
pop     ebx
retn

loc_4880D8:
call    sub_4D8ECC
test    eax, eax
jz      short loc_48813F
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
xor     eax, eax
mov     al, [ecx+0Bh]
mov     eax, ds:off_521438[eax*4]
mov     ds:dword_77E6B4, eax
xor     eax, eax
mov     al, [ecx+0Bh]
mov     eax, ds:off_52144C[eax*4]
mov     [ecx+0A4h], eax
mov     dword ptr [ecx+0Ch], 0
and     ds:byte_5F8364, 0FDh
mov     byte ptr ds:dword_5F836C, 3
xor     dh, dh
mov     byte ptr ds:dword_5F836C+1, dh
mov     [ecx+0Ah], dh
call    sub_49DBD1
call    sub_49DECF
inc     byte ptr [ecx+4]
mov     [ecx+5], dh

loc_48813F:
pop     edx
pop     ecx
pop     ebx
retn
sub_4880AC endp




sub_488143 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_47EBCB
test    eax, eax
jz      short loc_488154
or      byte ptr [edx+0Ah], 1

loc_488154:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_488167
mov     bh, [edx+0Ah]
test    bh, 1
jz      short loc_48816E
test    bh, 80h
jnz     short loc_48816E

loc_488167:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_48816E:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ebx
retn
sub_488143 endp




sub_48817B proc near
push    edx
mov     edx, eax
call    sub_4D8EB1
call    sub_4E1D8A
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, 621h
call    sub_47EA91
mov     byte ptr [edx], 0
pop     edx
retn
sub_48817B endp




sub_4881AD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, 80h
mov     eax, 1Ah
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
xor     eax, eax
mov     al, [ecx+0Bh]
mov     eax, ds:off_521438[eax*4]
mov     ds:dword_77E6B4, eax
xor     eax, eax
mov     al, [ecx+0Bh]
mov     eax, ds:off_52144C[eax*4]
mov     [ecx+0A4h], eax
mov     dword ptr [ecx+0Ch], 0
and     ds:byte_5F8364, 0FDh
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 200h
mov     word ptr ds:dword_5F889E, 0FFFFh
xor     esi, esi
mov     word ptr ds:dword_5F889E+2, si
mov     ds:dword_5F888C, 2000000h
mov     ds:dword_5F8890, 0FFFF0000h
xor     esi, esi
mov     ds:dword_5F8894, esi
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 800h
xor     edx, edx
mov     ds:word_5F88A8, dx
xor     bh, bh
mov     ds:byte_5F88AC, bh
mov     eax, offset unk_521018
call    sub_49DB4D
mov     byte ptr [ecx+0Ah], 80h
mov     ebx, 1
xor     edx, edx
mov     eax, 3Bh ; ';'
call    sub_4DBCF3
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
call    sub_49DBD1
call    sub_49DECF
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4881AD endp




sub_4882A4 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_47EBCB
test    eax, eax
jz      short loc_4882B5
or      byte ptr [edx+0Ah], 1

loc_4882B5:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_4882D3
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     cl, [edx+0Ah]
test    cl, 1
jz      short loc_4882DA
test    cl, 80h
jnz     short loc_4882DA

loc_4882D3:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_4882DA:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_4882A4 endp




sub_4882E7 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+24h]
call    sub_4D8EB1
call    sub_4E1D8A
mov     ah, 1
mov     byte ptr ds:dword_77E954, ah
test    [ecx+0Ah], ah
jz      short loc_48834F
or      ds:byte_5F8364, 2
mov     word ptr [edx+14h], 200h
mov     word ptr [edx+16h], 0FB50h
mov     word ptr [edx+18h], 800h
mov     word ptr [edx+56h], 0
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
call    sub_42A66D
jmp     short loc_488354

loc_48834F:
call    sub_42AC90

loc_488354:
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, 621h
call    sub_47EA91
mov     eax, edx
call    sub_41D22F
mov     eax, edx
call    sub_4DE336
mov     byte ptr [ecx], 0
pop     edx
pop     ecx
retn
sub_4882E7 endp




sub_48837C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 1
jb      short loc_488392
jbe     short loc_4883B4
cmp     al, 2
jz      short loc_4883CF
pop     edx
pop     ecx
pop     ebx
retn

loc_488392:
test    al, al
jnz     short loc_4883E1
cmp     ds:byte_77EAB8, 0
jnz     short loc_4883E1
xor     ebx, ebx
xor     edx, edx
mov     eax, 8000000Ah
call    sub_4D89E4

loc_4883AD:
inc     byte ptr [ecx+6]
pop     edx
pop     ecx
pop     ebx
retn

loc_4883B4:
call    sub_42C353
test    eax, eax
jnz     short loc_4883E1
cmp     dword ptr [ecx+10h], 64h ; 'd'
jle     short loc_4883E1
mov     eax, 240013h
call    sub_4D8E42
jmp     short loc_4883AD

loc_4883CF:
call    sub_4D8ECC
test    eax, eax
jz      short loc_4883E1
mov     byte ptr [ecx+6], 0
call    sub_49DF64

loc_4883E1:
pop     edx
pop     ecx
pop     ebx
retn
sub_48837C endp




sub_4883E5 proc near
cmp     dword ptr [eax+10h], 2
jnz     short locret_4883EF
and     byte ptr [eax+0Ah], 7Fh

locret_4883EF:
retn
sub_4883E5 endp




sub_4883F0 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_488436
mov     eax, [eax+24h]
mov     word ptr [eax+14h], 0F920h
mov     word ptr [eax+16h], 0F9C0h
mov     word ptr [eax+18h], 20D0h
mov     word ptr [eax+56h], 0F80h
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

loc_488436:
pop     edx
retn
sub_4883F0 endp




sub_488438 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_488485
or      ds:byte_5F8364, 2
mov     eax, [eax+24h]
mov     word ptr [eax+14h], 200h
mov     word ptr [eax+16h], 0F8F8h
mov     word ptr [eax+18h], 800h
mov     word ptr [eax+56h], 0
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

loc_488485:
pop     edx
retn
sub_488438 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_67]



sub_488488 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_488496
mov     edx, [eax+24h]
mov     byte ptr [edx+8], 2

loc_488496:
cmp     dword ptr [eax+10h], 59h ; 'Y'
jnz     short loc_4884A3
mov     eax, [eax+24h]
mov     byte ptr [eax+8], 1

loc_4884A3:
pop     edx
retn
sub_488488 endp




sub_4884A5 proc near
push    edx
cmp     dword ptr [eax+10h], 0Fh
jnz     short loc_4884B3
mov     edx, [eax+2Ch]
mov     byte ptr [edx+8], 2

loc_4884B3:
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_4884C0
mov     edx, [eax+28h]
mov     byte ptr [edx+8], 5

loc_4884C0:
cmp     dword ptr [eax+10h], 37h ; '7'
jnz     short loc_4884CD
mov     edx, [eax+28h]
mov     byte ptr [edx+8], 3

loc_4884CD:
cmp     dword ptr [eax+10h], 3Bh ; ';'
jnz     short loc_4884E1
mov     edx, [eax+2Ch]
mov     byte ptr [edx+8], 1
mov     eax, [eax+28h]
mov     byte ptr [eax+8], 4

loc_4884E1:
pop     edx
retn
sub_4884A5 endp




sub_4884E3 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4884FA
mov     eax, [eax+24h]
mov     byte ptr [eax+8], 4
mov     eax, [edx+28h]
mov     byte ptr [eax+8], 2

loc_4884FA:
cmp     dword ptr [edx+10h], 3Bh ; ';'
jnz     short loc_48850A
mov     eax, 0Ah
call    sub_49E0D7

loc_48850A:
cmp     dword ptr [edx+10h], 59h ; 'Y'
jnz     short loc_488517
mov     edx, [edx+24h]
mov     byte ptr [edx+8], 1

loc_488517:
pop     edx
retn
sub_4884E3 endp




sub_488519 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_5214B0
mov     dword ptr [ecx+0A4h], offset unk_52152C
mov     byte ptr [ecx+0Bh], 0
mov     al, [ecx+0Bh]
mov     [ecx+0Ah], al
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Ah], 0
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
pop     edx
pop     ecx
pop     ebx
retn
sub_488519 endp




sub_488565 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_488575
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_488575:
pop     edx
retn
sub_488565 endp

jpt_4885A7 dd offset loc_4885AE ; jump table for switch statement
dd offset loc_4885BC
dd offset loc_488603
dd offset loc_488627
dd offset loc_48864F
dd offset loc_4886A8
dd offset loc_4886EE



sub_488593 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 6           ; switch 7 cases
ja      def_4885A7      ; jumptable 004885A7 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4885A7[edx*4] ; switch jump

loc_4885AE:             ; jumptable 004885A7 case 0
mov     eax, ecx
call    sub_488519

loc_4885B5:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4885BC:             ; jumptable 004885A7 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4885A7      ; jumptable 004885A7 default case
mov     byte ptr ds:dword_5F836C, 3
xor     bh, bh
mov     byte ptr ds:dword_5F836C+1, bh
mov     ds:byte_5F88AC, bh
mov     eax, offset unk_521474
call    sub_49DB4D
mov     eax, offset unk_52149C
call    sub_49DB4D
mov     eax, 24000Bh
call    sub_4D8E42
jmp     short loc_4885B5

loc_488603:             ; jumptable 004885A7 case 2
call    sub_4D8ECC
test    eax, eax
jz      def_4885A7      ; jumptable 004885A7 default case
or      byte ptr [ecx+0Ah], 1
call    sub_436868
inc     byte ptr [ecx+4]
mov     dword ptr [ecx+0Ch], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_488627:             ; jumptable 004885A7 case 3
mov     edx, [ecx+0Ch]
inc     edx
mov     [ecx+0Ch], edx
cmp     edx, 20h ; ' '
jnz     def_4885A7      ; jumptable 004885A7 default case
inc     byte ptr [ecx+4]
xor     ds:byte_5F8364, 2
mov     eax, offset unk_521488
call    sub_49DB4D
pop     edx
pop     ecx
pop     ebx
retn

loc_48864F:             ; jumptable 004885A7 case 4
cmp     byte ptr [ecx+8], 0FFh
jnz     short loc_48865E
inc     al
mov     [ecx+4], al
pop     edx
pop     ecx
pop     ebx
retn

loc_48865E:
call    sub_47EBCB
test    eax, eax
jz      short loc_488693
mov     dh, [ecx+0Ah]
cmp     dh, 1
jnz     short loc_488693
cmp     ds:word_6E23D6, 0
jnz     short loc_488693
cmp     ds:byte_77EAB8, 0
jnz     short loc_488693
mov     eax, 0Ah
call    sub_49E0D7
add     [ecx+4], dh
pop     edx
pop     ecx
pop     ebx
retn

loc_488693:
mov     eax, ecx
call    sub_488565
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn

loc_4886A8:             ; jumptable 004885A7 case 5
cmp     ds:word_6E23D6, 0
jnz     def_4885A7      ; jumptable 004885A7 default case
cmp     ds:byte_77EAB8, 0
jnz     def_4885A7      ; jumptable 004885A7 default case
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
inc     byte ptr [ecx+4]
mov     eax, 629h
call    sub_47E888
test    eax, eax
jnz     short def_4885A7 ; jumptable 004885A7 default case
mov     eax, 12h
call    sub_47EEAE
pop     edx
pop     ecx
pop     ebx
retn

loc_4886EE:             ; jumptable 004885A7 case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4885A7 ; jumptable 004885A7 default case
call    sub_4D8EB1
inc     byte ptr ds:dword_5F836C+1
call    sub_42A66D
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 6
mov     ds:byte_77EA5F, 5
xor     al, al
mov     byte ptr ds:dword_77EA5A+3, al
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
and     ds:byte_5F8364, 0FCh
mov     ds:byte_5F83DA, al
mov     [ecx], al

def_4885A7:             ; jumptable 004885A7 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_488593 endp




sub_488752 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_488758[edx*4]
pop     edx
retn
sub_488752 endp

align 2
jpt_488787 dd offset loc_48878E ; jump table for switch statement
dd offset loc_4887E9
dd offset loc_4887FF
dd offset loc_48881E



sub_488772 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_488787      ; jumptable 00488787 default case
and     eax, 0FFh
jmp     jpt_488787[eax*4] ; switch jump

loc_48878E:             ; jumptable 00488787 case 0
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Ah], 80h
mov     ds:dword_77E6B4, offset unk_52159C
mov     dword ptr [ecx+0A4h], offset unk_5219DC
mov     eax, offset unk_521560
call    sub_49DB4D
mov     al, ds:byte_521A5C
mov     ds:byte_56F80C, al
mov     ax, ds:word_521A5E
mov     ds:word_56F82C, ax
mov     ax, ds:word_521A60
mov     ds:word_56F82E, ax

loc_4887E4:
inc     byte ptr [ecx+5]
jmp     short def_488787 ; jumptable 00488787 default case

loc_4887E9:             ; jumptable 00488787 case 1
mov     eax, 3
call    sub_49E0D7
mov     eax, 3Dh ; '='
call    sub_42BEB2
jmp     short loc_4887E4

loc_4887FF:             ; jumptable 00488787 case 2
cmp     ds:word_6E23D6, 0
jnz     short def_488787 ; jumptable 00488787 default case
call    sub_42C353
test    eax, eax
jnz     short def_488787 ; jumptable 00488787 default case
mov     eax, 240007h
call    sub_4D8E42
jmp     short loc_4887E4

loc_48881E:             ; jumptable 00488787 case 3
call    sub_4D8ECC
test    eax, eax
jz      short def_488787 ; jumptable 00488787 default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_5215EC
mov     dword ptr [ecx+0A4h], offset unk_5219EC
and     byte ptr [ecx+0Ah], 1
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

def_488787:             ; jumptable 00488787 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_488858
or      byte ptr [ecx+0Ah], 1

loc_488858:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_488772 endp




sub_488866 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jnz     short loc_488877
mov     eax, 14h
jmp     short loc_488896

loc_488877:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jnz     short loc_488891
cmp     byte ptr [edx+0Ah], 1
jnz     short loc_4888A2

loc_488891:
mov     eax, 8

loc_488896:
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_4888A2:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_488866 endp




sub_4888AF proc near
push    ecx
push    edx
mov     ecx, eax
cmp     ds:word_6E23D6, 0
jnz     short loc_488910
mov     al, [eax+5]
test    al, al
jbe     short loc_4888CA
cmp     al, 1
jz      short loc_488906
jmp     short loc_488910

loc_4888CA:
call    sub_4D8EB1
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
call    sub_4E1D8A
mov     dl, 1
mov     byte ptr ds:dword_77E954, dl
call    sub_42A66D
mov     eax, 2
call    sub_488B78
mov     byte ptr ds:dword_77EA5A+2, 2
add     [ecx+5], dl
jmp     short loc_488910

loc_488906:
or      ds:byte_56F80C, 3
mov     byte ptr [ecx], 0

loc_488910:
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_488920
call    sub_49DBD1
call    sub_49DECF

loc_488920:
pop     edx
pop     ecx

locret_488922:
retn
sub_4888AF endp




sub_488923 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_488950
xor     ah, ah
mov     ds:byte_56F80C, ah
mov     eax, [edx+24h]
call    sub_4DE2F6
mov     eax, offset unk_521574
call    sub_49DB4D
mov     eax, 3
call    sub_488B78

loc_488950:
cmp     dword ptr [edx+10h], 1
jnz     short loc_488961
mov     edx, [edx+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_488961:
pop     edx
retn
sub_488923 endp




sub_488963 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_488979
mov     byte ptr [eax+5], 0
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_488979:
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_488986
mov     edx, [eax+28h]
mov     byte ptr [edx+0Dh], 0

loc_488986:
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short loc_48899B
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 0

loc_48899B:
cmp     dword ptr [eax+10h], 1C2h
jnz     short loc_4889B3
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

loc_4889B3:
pop     edx
retn
sub_488963 endp




sub_4889B5 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4889C7
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0

loc_4889C7:
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_4889D4
mov     eax, [eax+28h]
mov     byte ptr [eax+0Dh], 0

loc_4889D4:
pop     edx

locret_4889D5:
retn
sub_4889B5 endp




sub_4889D6 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4889EC
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 6
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 0

loc_4889EC:
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_488A01
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

loc_488A01:
pop     edx
retn
sub_4889D6 endp




sub_488A03 proc near
push    ecx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_488A61
mov     eax, offset unk_521588
call    sub_49DB4D
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0
mov     edx, 1

loc_488A27:
mov     eax, edx
shl     eax, 3
mov     ecx, eax
shl     eax, 3
sub     eax, ecx
mov     cl, ds:byte_521A62
mov     ds:byte_56F80C[eax], cl
mov     cx, ds:word_521A64
mov     ds:word_56F82C[eax], cx
mov     cx, ds:word_521A66
mov     ds:word_56F82E[eax], cx
inc     edx
cmp     edx, 5
jl      short loc_488A27

loc_488A61:
pop     edx
pop     ecx
retn
sub_488A03 endp




sub_488A64 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_488AA3
mov     eax, [eax+2Ch]
call    sub_4DE2F6
mov     edx, 1

loc_488A7C:
mov     eax, edx
shl     eax, 3
mov     ecx, eax
shl     eax, 3
sub     eax, ecx
xor     cl, cl
mov     ds:byte_56F80C[eax], cl
inc     edx
cmp     edx, 5
jl      short loc_488A7C
mov     eax, [ebx+28h]
mov     byte ptr [eax+9], 9
mov     [eax+0Ah], cl
inc     byte ptr [eax+0Dh]

loc_488AA3:
cmp     dword ptr [ebx+10h], 6Eh ; 'n'
jnz     short loc_488AB0
mov     eax, [ebx+28h]
mov     byte ptr [eax+0Dh], 0

loc_488AB0:
cmp     dword ptr [ebx+10h], 0BEh
jnz     short loc_488AC8
mov     eax, [ebx+28h]
mov     byte ptr [eax+9], 0Ah
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

loc_488AC8:
cmp     dword ptr [ebx+10h], 0FAh
jnz     short loc_488AE0
mov     eax, [ebx+28h]
mov     byte ptr [eax+9], 0Bh
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

loc_488AE0:
pop     edx
pop     ecx
pop     ebx

locret_488AE3:
retn
sub_488A64 endp




sub_488AE4 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_488AF9
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Ch
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_488AF9:
retn
sub_488AE4 endp




sub_488AFA proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_488B0F
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Dh
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_488B0F:
retn
sub_488AFA endp




sub_488B10 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 168h
jb      short loc_488B32
jbe     short loc_488B3F
cmp     edx, 190h
jb      short loc_488B60
jbe     short loc_488B48
cmp     edx, 1E0h
jz      short loc_488B51
pop     edx
retn

loc_488B32:
test    edx, edx
jnz     short loc_488B60
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Eh
jmp     short loc_488B58

loc_488B3F:
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Fh
jmp     short loc_488B58

loc_488B48:
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 10h
jmp     short loc_488B58

loc_488B51:
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 11h

loc_488B58:
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

loc_488B60:
pop     edx
retn
sub_488B10 endp




sub_488B62 proc near
cmp     dword ptr [eax+10h], 50h ; 'P'
jnz     short locret_488B77
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 12h
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_488B77:
retn
sub_488B62 endp




sub_488B78 proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 6
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
sub_488B78 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_68]



sub_488BC5 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 1
jnz     short loc_488BDC
xor     eax, eax
call    sub_4A0E24
mov     ds:byte_5F88AC, 35h ; '5'

loc_488BDC:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_488BEA
call    sub_49DF64

loc_488BEA:
pop     edx
retn
sub_488BC5 endp




sub_488BEC proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_488C02
mov     edx, 5
xor     eax, eax
call    sub_4A0E24

loc_488C02:
cmp     dword ptr [ecx+10h], 29h ; ')'
jnz     short loc_488C0F
mov     ds:byte_5F88AC, 2Dh ; '-'

loc_488C0F:
cmp     dword ptr [ecx+10h], 33h ; '3'
jle     short loc_488C1A
call    sub_49DF64

loc_488C1A:
pop     edx
pop     ecx
retn
sub_488BEC endp




sub_488C1D proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_488C53
mov     eax, offset unk_521A68
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+3], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [edx+24h]
mov     word ptr [eax+56h], 800h
call    sub_49DF64

loc_488C53:
pop     edx
retn
sub_488C1D endp




sub_488C55 proc near
push    ebx
push    edx
push    edi
cmp     dword ptr [eax+10h], 1
jnz     short loc_488C7C
mov     edx, [eax+24h]
mov     word ptr [edx+44h], 140h
mov     edx, [eax+24h]
mov     byte ptr [edx+0Eh], 2
mov     edx, [eax+24h]
mov     byte ptr [edx+0Dh], 1
mov     edx, [eax+24h]
mov     byte ptr [edx+8], 2

loc_488C7C:
cmp     dword ptr [eax+10h], 5Bh ; '['
jnz     short loc_488C8B
mov     edx, [eax+24h]
mov     word ptr [edx+44h], 0

loc_488C8B:
cmp     dword ptr [eax+10h], 5Bh ; '['
jl      loc_488D47
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_488D47
mov     word ptr ds:dword_5F889A+2, 329h
mov     ebx, 0FFFFFCFFh
mov     word ptr ds:dword_5F889E, bx
mov     word ptr ds:dword_5F889E+2, 498h
mov     ds:dword_5F888C, 3290000h
mov     edi, 0FCFF0000h
mov     ds:dword_5F8890, edi
mov     ds:dword_5F8894, 4980000h
mov     word ptr ds:dword_5F88A4+2, 4F6h
mov     ds:byte_5F88AC, 30h ; '0'
mov     edx, [eax+24h]
mov     word ptr [edx+14h], 2CEh
mov     edx, [eax+24h]
mov     [edx+16h], bx
mov     edx, [eax+24h]
mov     word ptr [edx+18h], 4C0h
mov     edx, [eax+24h]
mov     dword ptr [edx+1Ch], 2CE0000h
mov     edx, [eax+24h]
mov     [edx+20h], edi
mov     edx, [eax+24h]
mov     dword ptr [edx+24h], 4C00000h
mov     edx, [eax+24h]
mov     word ptr [edx+56h], 0CF6h
mov     edx, [eax+24h]
mov     byte ptr [edx+0Eh], 0
mov     edx, [eax+24h]
mov     byte ptr [edx+0Dh], 1
mov     eax, [eax+24h]
mov     word ptr [eax+44h], 0
call    sub_49DF64

loc_488D47:
pop     edi
pop     edx
pop     ebx
retn
sub_488C55 endp




sub_488D4B proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_488D71
mov     eax, [eax+24h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 6
xor     eax, eax
call    sub_4A0E24

loc_488D71:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     loc_488E28
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_488E28
mov     word ptr ds:dword_5F889A+2, 269h
mov     ebx, 0FFFFFCFFh
mov     word ptr ds:dword_5F889E, bx
mov     word ptr ds:dword_5F889E+2, 382h
mov     ds:dword_5F888C, 2690000h
mov     ds:dword_5F8890, 0FCFF0000h
mov     ds:dword_5F8894, 3820000h
mov     edi, 800h
mov     word ptr ds:dword_5F88A4+2, di
mov     ds:byte_5F88AC, 0Ch
mov     eax, [ecx+24h]
mov     word ptr [eax+14h], 1A1h
mov     eax, [ecx+24h]
mov     [eax+16h], bx
mov     eax, [ecx+24h]
mov     word ptr [eax+18h], 385h
mov     eax, [ecx+24h]
mov     dword ptr [eax+1Ch], 1A10000h
mov     eax, [ecx+24h]
mov     dword ptr [eax+20h], 0FCFF0000h
mov     eax, [ecx+24h]
mov     dword ptr [eax+24h], 3850000h
mov     eax, [ecx+24h]
mov     [eax+56h], di
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
call    sub_49DF64

loc_488E28:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_488D4B endp




sub_488E2D proc near
push    ebx
push    ecx
push    edx
mov     edx, offset byte_5F8364
cmp     dword ptr [eax+10h], 1
jnz     short loc_488E44
mov     ecx, [eax+24h]
mov     word ptr [ecx+44h], 40h ; '@'

loc_488E44:
add     word ptr [edx+532h], 5
mov     ecx, [edx+530h]
sar     ecx, 10h
mov     [edx+53Ch], cx
cmp     dword ptr [eax+10h], 96h
jnz     short loc_488E9B
mov     dl, 1
mov     byte ptr ds:dword_77EA5A+2, dl
mov     ds:byte_77EA5E, 6
mov     ds:byte_77EA5F, dl
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 0FFh
mov     [eax+0Bh], dl
mov     [eax+0Ah], bh
call    sub_49DF64

loc_488E9B:
pop     edx
pop     ecx
pop     ebx

locret_488E9E:
retn
sub_488E2D endp




sub_488E9F proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_488FB3
mov     word ptr ds:dword_5F889A+2, 0FFB2h
mov     ecx, 0FFFFFFFFh
mov     word ptr ds:dword_5F889E, cx
mov     word ptr ds:dword_5F889E+2, 0FFAFh
mov     ds:dword_5F888C, 0FFB20000h
mov     esi, 0FFFF0000h
mov     ds:dword_5F8890, esi
mov     ds:dword_5F8894, 0FFAF0000h
mov     edi, 800h
mov     word ptr ds:dword_5F88A4+2, di
mov     ds:byte_5F88AC, 30h ; '0'
mov     eax, offset unk_521A68
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+3], 0
mov     eax, [edx+24h]
mov     word ptr [eax+14h], 51h ; 'Q'
mov     eax, [edx+24h]
mov     [eax+16h], cx
mov     eax, [edx+24h]
mov     word ptr [eax+18h], 0FFAFh
mov     eax, [edx+24h]
mov     dword ptr [eax+1Ch], offset unk_510000
mov     eax, [edx+24h]
mov     [eax+20h], esi
mov     eax, [edx+24h]
mov     dword ptr [eax+24h], 0FFAF0000h
mov     eax, [edx+24h]
mov     [eax+56h], di
mov     eax, [edx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [edx+24h]
mov     word ptr [eax+44h], 0
mov     eax, offset unk_521A7C
call    sub_49DB4D
mov     eax, offset unk_521A90
call    sub_49DB4D
mov     eax, offset unk_521AA4
call    sub_49DB4D
mov     eax, [edx+28h]
mov     word ptr [eax+56h], 0
mov     eax, [edx+28h]
mov     word ptr [eax+44h], 0
mov     eax, [edx+2Ch]
mov     word ptr [eax+56h], 0
mov     eax, [edx+2Ch]
mov     word ptr [eax+44h], 0
mov     eax, [edx+30h]
mov     [eax+56h], di
mov     eax, [edx+30h]
mov     word ptr [eax+44h], 0

loc_488FB3:
pop     edi
pop     esi
pop     edx
pop     ecx

locret_488FB7:
retn
sub_488E9F endp




sub_488FB8 proc near
push    edx
mov     edx, eax
mov     eax, [eax+28h]
cmp     byte ptr [eax+8], 1
jnz     short loc_488FD6
mov     byte ptr [eax+8], 2
mov     eax, [edx+2Ch]
mov     byte ptr [eax+8], 2
mov     eax, [edx+30h]
mov     byte ptr [eax+8], 2

loc_488FD6:
cmp     dword ptr [edx+10h], 3Dh ; '='
jnz     short loc_488FEE
call    sub_49DF64
and     ds:byte_5F8364, 0FDh
mov     edx, [edx+24h]
and     byte ptr [edx], 0FDh

loc_488FEE:
pop     edx
retn
sub_488FB8 endp




sub_488FF0 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_489014
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 37h ; '7'
xor     eax, eax
call    sub_4A0E24

loc_489014:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     short loc_489028
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489028
call    sub_49DF64

loc_489028:
pop     edx
pop     ecx
retn
sub_488FF0 endp




sub_48902B proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_48903B
mov     eax, [eax+24h]
or      byte ptr [eax], 2

loc_48903B:
cmp     dword ptr [ecx+10h], 10h
jnz     short loc_48905B
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 38h ; '8'
xor     eax, eax
call    sub_4A0E24

loc_48905B:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_48906F
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48906F
call    sub_49DF64

loc_48906F:
pop     edx
pop     ecx
retn
sub_48902B endp




sub_489072 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_489083
or      ds:byte_5F8364, 2

loc_489083:
cmp     dword ptr [ecx+10h], 10h
jnz     short loc_4890A3
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 39h ; '9'
xor     eax, eax
call    sub_4A0E24

loc_4890A3:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_4890B7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4890B7
call    sub_49DF64

loc_4890B7:
pop     edx
pop     ecx
retn
sub_489072 endp




sub_4890BA proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_4890DE
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Ah ; ':'
xor     eax, eax
call    sub_4A0E24

loc_4890DE:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_4890F2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4890F2
call    sub_49DF64

loc_4890F2:
pop     edx
pop     ecx
retn
sub_4890BA endp




sub_4890F5 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489119
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Bh ; ';'
xor     eax, eax
call    sub_4A0E24

loc_489119:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_48912D
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48912D
call    sub_49DF64

loc_48912D:
pop     edx
pop     ecx
retn
sub_4890F5 endp




sub_489130 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_48914A
xor     ebx, ebx
xor     edx, edx
mov     eax, 18Ch
call    sub_4D89E4

loc_48914A:
cmp     dword ptr [ecx+10h], 1Fh
jnz     short loc_48918D
xor     ebx, ebx
xor     edx, edx
mov     eax, 18Dh
call    sub_4D89E4
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Ch ; '<'
xor     eax, eax
call    sub_4A0E24
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     ds:byte_5F88AC, 0Ch

loc_48918D:
mov     esi, [ecx+10h]
cmp     esi, 1Fh
jle     short loc_4891AA
cmp     esi, 3Fh ; '?'
jge     short loc_4891AA
add     word ptr ds:dword_5F88A4+2, 40h ; '@'
mov     eax, [ecx+24h]
sub     word ptr [eax+56h], 40h ; '@'

loc_4891AA:
cmp     dword ptr [ecx+10h], 3Fh ; '?'
jnz     short loc_4891C5
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     ds:byte_5F88AC, 30h ; '0'

loc_4891C5:
cmp     dword ptr [ecx+10h], 49h ; 'I'
jle     short loc_4891D9
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4891D9
call    sub_49DF64

loc_4891D9:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_489130 endp




sub_4891DE proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_48920B
mov     eax, [eax+30h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+30h]
mov     word ptr [eax+44h], 3Ch ; '<'
mov     edx, 3Dh ; '='
xor     eax, eax
call    sub_4A0E24

loc_48920B:
cmp     dword ptr [ecx+10h], 56h ; 'V'
jl      short loc_489228
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+30h]
mov     word ptr [eax+44h], 0

loc_489228:
cmp     dword ptr [ecx+10h], 56h ; 'V'
jle     short loc_48923C
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48923C
call    sub_49DF64

loc_48923C:
pop     edx
pop     ecx
retn
sub_4891DE endp




sub_48923F proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489263
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Eh ; '>'
xor     eax, eax
call    sub_4A0E24

loc_489263:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489277
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489277
call    sub_49DF64

loc_489277:
pop     edx
pop     ecx
retn
sub_48923F endp




sub_48927A proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_48929E
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Fh ; '?'
xor     eax, eax
call    sub_4A0E24

loc_48929E:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_4892B9
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4892B9
and     ds:byte_5F8364, 0FDh
call    sub_49DF64

loc_4892B9:
pop     edx
pop     ecx
retn
sub_48927A endp




sub_4892BC proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_4892E0
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 40h ; '@'
xor     eax, eax
call    sub_4A0E24

loc_4892E0:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_4892F4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4892F4
call    sub_49DF64

loc_4892F4:
pop     edx
pop     ecx

locret_4892F6:
retn
sub_4892BC endp




sub_4892F7 proc near
push    edx
cmp     dword ptr [eax+10h], 1
jnz     short loc_489311
mov     ds:byte_5F88AC, 82h
mov     edx, 2
xor     eax, eax
call    sub_4A0E24

loc_489311:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48931F
call    sub_49DF64

loc_48931F:
pop     edx
retn
sub_4892F7 endp




sub_489321 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_489337
mov     edx, 7
xor     eax, eax
call    sub_4A0E24

loc_489337:
cmp     dword ptr [ecx+10h], 29h ; ')'
jnz     short loc_489344
mov     ds:byte_5F88AC, 2Dh ; '-'

loc_489344:
cmp     dword ptr [ecx+10h], 33h ; '3'
jle     short loc_48934F
call    sub_49DF64

loc_48934F:
pop     edx
pop     ecx
retn
sub_489321 endp




sub_489352 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_489388
mov     eax, offset unk_521A68
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+3], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [edx+24h]
mov     word ptr [eax+56h], 800h
call    sub_49DF64

loc_489388:
pop     edx
retn
sub_489352 endp




sub_48938A proc near
push    ebx
push    edx
push    edi
cmp     dword ptr [eax+10h], 1
jnz     short loc_4893B1
mov     edx, [eax+24h]
mov     word ptr [edx+44h], 140h
mov     edx, [eax+24h]
mov     byte ptr [edx+0Eh], 2
mov     edx, [eax+24h]
mov     byte ptr [edx+0Dh], 1
mov     edx, [eax+24h]
mov     byte ptr [edx+8], 2

loc_4893B1:
cmp     dword ptr [eax+10h], 5Bh ; '['
jnz     short loc_4893C0
mov     edx, [eax+24h]
mov     word ptr [edx+44h], 0

loc_4893C0:
cmp     dword ptr [eax+10h], 5Bh ; '['
jl      loc_48947C
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_48947C
mov     word ptr ds:dword_5F889A+2, 329h
mov     ebx, 0FFFFFCFFh
mov     word ptr ds:dword_5F889E, bx
mov     word ptr ds:dword_5F889E+2, 498h
mov     ds:dword_5F888C, 3290000h
mov     edi, 0FCFF0000h
mov     ds:dword_5F8890, edi
mov     ds:dword_5F8894, 4980000h
mov     word ptr ds:dword_5F88A4+2, 4F6h
mov     ds:byte_5F88AC, 30h ; '0'
mov     edx, [eax+24h]
mov     word ptr [edx+14h], 2CEh
mov     edx, [eax+24h]
mov     [edx+16h], bx
mov     edx, [eax+24h]
mov     word ptr [edx+18h], 4C0h
mov     edx, [eax+24h]
mov     dword ptr [edx+1Ch], 2CE0000h
mov     edx, [eax+24h]
mov     [edx+20h], edi
mov     edx, [eax+24h]
mov     dword ptr [edx+24h], 4C00000h
mov     edx, [eax+24h]
mov     word ptr [edx+56h], 0CF6h
mov     edx, [eax+24h]
mov     byte ptr [edx+0Eh], 0
mov     edx, [eax+24h]
mov     byte ptr [edx+0Dh], 1
mov     eax, [eax+24h]
mov     word ptr [eax+44h], 0
call    sub_49DF64

loc_48947C:
pop     edi
pop     edx
pop     ebx
retn
sub_48938A endp




sub_489480 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_4894A4
mov     eax, [eax+24h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 8
xor     eax, eax
call    sub_4A0E24

loc_4894A4:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     short loc_4894B8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4894B8
call    sub_49DF64

loc_4894B8:
pop     edx
pop     ecx
retn
sub_489480 endp




sub_4894BB proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_4894D8
mov     ds:byte_5F88AC, 32h ; '2'
mov     edx, 9
xor     eax, eax
call    sub_4A0E24

loc_4894D8:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     short loc_4894EC
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4894EC
call    sub_49DF64

loc_4894EC:
pop     edx
pop     ecx
retn
sub_4894BB endp




sub_4894EF proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_489515
mov     eax, [eax+24h]
mov     byte ptr [eax+0Eh], 12h
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 0Ah
xor     eax, eax
call    sub_4A0E24

loc_489515:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     loc_4895CC
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4895CC
mov     word ptr ds:dword_5F889A+2, 269h
mov     ebx, 0FFFFFCFFh
mov     word ptr ds:dword_5F889E, bx
mov     word ptr ds:dword_5F889E+2, 382h
mov     ds:dword_5F888C, 2690000h
mov     ds:dword_5F8890, 0FCFF0000h
mov     ds:dword_5F8894, 3820000h
mov     edi, 800h
mov     word ptr ds:dword_5F88A4+2, di
mov     ds:byte_5F88AC, 0Ch
mov     eax, [ecx+24h]
mov     word ptr [eax+14h], 1A1h
mov     eax, [ecx+24h]
mov     [eax+16h], bx
mov     eax, [ecx+24h]
mov     word ptr [eax+18h], 385h
mov     eax, [ecx+24h]
mov     dword ptr [eax+1Ch], 1A10000h
mov     eax, [ecx+24h]
mov     dword ptr [eax+20h], 0FCFF0000h
mov     eax, [ecx+24h]
mov     dword ptr [eax+24h], 3850000h
mov     eax, [ecx+24h]
mov     [eax+56h], di
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
call    sub_49DF64

loc_4895CC:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4894EF endp




sub_4895D1 proc near
push    ebx
push    ecx
push    edx
mov     edx, offset byte_5F8364
cmp     dword ptr [eax+10h], 1
jnz     short loc_4895E8
mov     ecx, [eax+24h]
mov     word ptr [ecx+44h], 40h ; '@'

loc_4895E8:
add     word ptr [edx+532h], 5
mov     ecx, [edx+530h]
sar     ecx, 10h
mov     [edx+53Ch], cx
cmp     dword ptr [eax+10h], 96h
jnz     short loc_489640
mov     dl, 1
mov     byte ptr ds:dword_77EA5A+2, dl
mov     ds:byte_77EA5E, 6
mov     ds:byte_77EA5F, 4
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 0FFh
mov     [eax+0Bh], dl
mov     [eax+0Ah], bh
call    sub_49DF64

loc_489640:
pop     edx
pop     ecx
pop     ebx

locret_489643:
retn
sub_4895D1 endp




sub_489644 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_489758
mov     word ptr ds:dword_5F889A+2, 0FFB2h
mov     ecx, 0FFFFFFFFh
mov     word ptr ds:dword_5F889E, cx
mov     word ptr ds:dword_5F889E+2, 0FFAFh
mov     ds:dword_5F888C, 0FFB20000h
mov     esi, 0FFFF0000h
mov     ds:dword_5F8890, esi
mov     ds:dword_5F8894, 0FFAF0000h
mov     edi, 800h
mov     word ptr ds:dword_5F88A4+2, di
mov     ds:byte_5F88AC, 30h ; '0'
mov     eax, offset unk_521A68
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+3], 0
mov     eax, [edx+24h]
mov     word ptr [eax+14h], 51h ; 'Q'
mov     eax, [edx+24h]
mov     [eax+16h], cx
mov     eax, [edx+24h]
mov     word ptr [eax+18h], 0FFAFh
mov     eax, [edx+24h]
mov     dword ptr [eax+1Ch], offset unk_510000
mov     eax, [edx+24h]
mov     [eax+20h], esi
mov     eax, [edx+24h]
mov     dword ptr [eax+24h], 0FFAF0000h
mov     eax, [edx+24h]
mov     [eax+56h], di
mov     eax, [edx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [edx+24h]
mov     word ptr [eax+44h], 0
mov     eax, offset unk_521A7C
call    sub_49DB4D
mov     eax, offset unk_521A90
call    sub_49DB4D
mov     eax, offset unk_521AA4
call    sub_49DB4D
mov     eax, [edx+28h]
mov     word ptr [eax+56h], 0
mov     eax, [edx+28h]
mov     word ptr [eax+44h], 0
mov     eax, [edx+2Ch]
mov     word ptr [eax+56h], 0
mov     eax, [edx+2Ch]
mov     word ptr [eax+44h], 0
mov     eax, [edx+30h]
mov     [eax+56h], di
mov     eax, [edx+30h]
mov     word ptr [eax+44h], 0

loc_489758:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_489644 endp

push    edx
mov     edx, eax
mov     eax, [eax+28h]
cmp     byte ptr [eax+8], 1
jnz     short loc_48977B
mov     byte ptr [eax+8], 2
mov     eax, [edx+2Ch]
mov     byte ptr [eax+8], 2
mov     eax, [edx+30h]
mov     byte ptr [eax+8], 2

loc_48977B:
cmp     dword ptr [edx+10h], 3Dh ; '='
jnz     short loc_489793
call    sub_49DF64
and     ds:byte_5F8364, 0FDh
mov     edx, [edx+24h]
and     byte ptr [edx], 0FDh

loc_489793:
pop     edx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_4897B9
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 37h ; '7'
xor     eax, eax
call    sub_4A0E24

loc_4897B9:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     short loc_4897CD
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4897CD
call    sub_49DF64

loc_4897CD:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_4897E0
mov     eax, [eax+24h]
or      byte ptr [eax], 2

loc_4897E0:
cmp     dword ptr [ecx+10h], 10h
jnz     short loc_489800
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 38h ; '8'
xor     eax, eax
call    sub_4A0E24

loc_489800:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489814
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489814
call    sub_49DF64

loc_489814:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_489828
or      ds:byte_5F8364, 2

loc_489828:
cmp     dword ptr [ecx+10h], 10h
jnz     short loc_489848
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 41h ; 'A'
xor     eax, eax
call    sub_4A0E24

loc_489848:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_48985C
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48985C
call    sub_49DF64

loc_48985C:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489883
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 42h ; 'B'
xor     eax, eax
call    sub_4A0E24

loc_489883:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489897
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489897
call    sub_49DF64

loc_489897:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_4898BE
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 43h ; 'C'
xor     eax, eax
call    sub_4A0E24

loc_4898BE:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_4898D2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4898D2
call    sub_49DF64

loc_4898D2:
pop     edx
pop     ecx
retn



sub_4898D5 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_4898EF
xor     ebx, ebx
xor     edx, edx
mov     eax, 18Ch
call    sub_4D89E4

loc_4898EF:
cmp     dword ptr [ecx+10h], 1Fh
jnz     short loc_489932
xor     ebx, ebx
xor     edx, edx
mov     eax, 18Dh
call    sub_4D89E4
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Ch ; '<'
xor     eax, eax
call    sub_4A0E24
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     ds:byte_5F88AC, 0Ch

loc_489932:
mov     esi, [ecx+10h]
cmp     esi, 1Fh
jle     short loc_48994F
cmp     esi, 3Fh ; '?'
jge     short loc_48994F
add     word ptr ds:dword_5F88A4+2, 40h ; '@'
mov     eax, [ecx+24h]
sub     word ptr [eax+56h], 40h ; '@'

loc_48994F:
cmp     dword ptr [ecx+10h], 3Fh ; '?'
jnz     short loc_48996A
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     ds:byte_5F88AC, 30h ; '0'

loc_48996A:
cmp     dword ptr [ecx+10h], 49h ; 'I'
jle     short loc_48997E
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48997E
call    sub_49DF64

loc_48997E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4898D5 endp

push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_4899B0
mov     eax, [eax+30h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+30h]
mov     word ptr [eax+44h], 3Ch ; '<'
mov     edx, 3Dh ; '='
xor     eax, eax
call    sub_4A0E24

loc_4899B0:
cmp     dword ptr [ecx+10h], 56h ; 'V'
jl      short loc_4899CD
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+30h]
mov     word ptr [eax+44h], 0

loc_4899CD:
cmp     dword ptr [ecx+10h], 56h ; 'V'
jle     short loc_4899E1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4899E1
call    sub_49DF64

loc_4899E1:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489A08
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Eh ; '>'
xor     eax, eax
call    sub_4A0E24

loc_489A08:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489A1C
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489A1C
call    sub_49DF64

loc_489A1C:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489A43
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Fh ; '?'
xor     eax, eax
call    sub_4A0E24

loc_489A43:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489A5E
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489A5E
and     ds:byte_5F8364, 0FDh
call    sub_49DF64

loc_489A5E:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489A85
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 40h ; '@'
xor     eax, eax
call    sub_4A0E24

loc_489A85:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489A99
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489A99
call    sub_49DF64

loc_489A99:
pop     edx
pop     ecx
retn


; Attributes: thunk

sub_489A9C proc near
jmp     sub_49DF64
sub_489A9C endp




sub_489AA1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, 629h
call    sub_47E888
test    eax, eax
jz      short loc_489ADF
mov     ds:dword_77E6B4, offset unk_521C88
mov     dword ptr [ecx+0A4h], offset unk_521EE0
mov     eax, 2E1h
call    sub_47EE82
jmp     short loc_489AF3

loc_489ADF:
mov     ds:dword_77E6B4, offset unk_521AE0
mov     dword ptr [ecx+0A4h], offset unk_521E30

loc_489AF3:
mov     byte ptr [ecx+0Bh], 0
mov     al, [ecx+0Bh]
mov     [ecx+0Ah], al
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0Ah], 0
mov     eax, 52Ch
call    sub_47E8B8
pop     edx
pop     ecx
pop     ebx
retn
sub_489AA1 endp




sub_489B1A proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_489B2A
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_489B2A:
pop     edx
retn
sub_489B1A endp

jpt_489B8C dd offset loc_489B93 ; jump table for switch statement
dd offset loc_489BAF
dd offset loc_489C30
dd offset loc_489C40
dd offset loc_489C5B
dd offset loc_489C8A
dd offset loc_489CA6
dd offset loc_489CE4
dd offset loc_489CF0
dd offset loc_489D05
dd offset loc_489D33
dd offset loc_489D3F
dd offset loc_489E07
dd offset loc_489E49
dd offset loc_489E84
dd offset loc_489FF9
dd offset loc_48A04C



sub_489B70 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 10h         ; switch 17 cases
ja      def_489B8C      ; jumptable 00489B8C default case
xor     ebx, ebx
mov     bl, al
jmp     jpt_489B8C[ebx*4] ; switch jump

loc_489B93:             ; jumptable 00489B8C case 0
mov     eax, 2
call    sub_49E0D7
mov     eax, ecx
call    sub_489AA1
inc     byte ptr [ecx+4]
or      byte ptr [edx], 3
jmp     loc_489CD3

loc_489BAF:             ; jumptable 00489B8C case 1
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      loc_489CD3
or      byte ptr [edx+0BDh], 10h
mov     byte ptr [edx+8], 3
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+548h], 30h ; '0'
mov     word ptr [edx+538h], 200h
mov     word ptr [edx+53Ah], 0FCFFh
mov     word ptr [edx+53Ch], 2E8h
mov     dword ptr [edx+528h], 2000000h
mov     dword ptr [edx+52Ch], 0FCFF0000h
mov     dword ptr [edx+530h], 2E80000h
mov     word ptr [edx+540h], 0
mov     word ptr [edx+542h], 800h
mov     word ptr [edx+544h], 0

loc_489C28:
inc     byte ptr [ecx+4]
jmp     loc_489CD3

loc_489C30:             ; jumptable 00489B8C case 2
cmp     ds:word_6E23D6, 0
jnz     loc_489CD3
jmp     short loc_489C28

loc_489C40:             ; jumptable 00489B8C case 3
or      byte ptr [edx+0BDh], 20h
xor     esi, esi
mov     ds:word_57096A, si
mov     byte ptr [ecx+0Ah], 1
call    sub_49DF64
jmp     short loc_489C28

loc_489C5B:             ; jumptable 00489B8C case 4
cmp     byte ptr [ecx+0Bh], 0
jz      short loc_489C69

loc_489C61:
inc     byte ptr [ecx+4]
jmp     def_489B8C      ; jumptable 00489B8C default case

loc_489C69:
call    sub_47EBCB
test    eax, eax
jz      short loc_489CCC
cmp     byte ptr [ecx+0Ah], 1
jnz     short loc_489CCC
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
mov     byte ptr [ecx+4], 0Ch
jmp     short loc_489CCC

loc_489C8A:             ; jumptable 00489B8C case 5
cmp     byte ptr ds:dword_77EA5A+2, 2
jnz     short loc_489CCC
mov     eax, [ecx+24h]
call    sub_4DE2F6
inc     byte ptr [ecx+4]
inc     byte ptr ds:dword_77EA5A+2
jmp     short loc_489CCC

loc_489CA6:             ; jumptable 00489B8C case 6
cmp     byte ptr ds:dword_77EA5A+2, 0
jnz     short loc_489CCC
mov     eax, 2
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
inc     byte ptr [ecx+4]

loc_489CC7:
call    sub_49DF64

loc_489CCC:
mov     eax, ecx
call    sub_489B1A

loc_489CD3:
call    sub_49DBD1
call    sub_49DECF

def_489B8C:             ; jumptable 00489B8C default case
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_489CE4:             ; jumptable 00489B8C case 7
inc     al
mov     [ecx+4], al
call    sub_49DF64
jmp     short def_489B8C ; jumptable 00489B8C default case

loc_489CF0:             ; jumptable 00489B8C case 8
cmp     ds:word_6E23D6, 0
jnz     short loc_489CCC
inc     al
mov     [ecx+4], al
mov     byte ptr [ecx+0Ah], 1
jmp     short loc_489CC7

loc_489D05:             ; jumptable 00489B8C case 9
cmp     byte ptr [ecx+8], 0FFh
jnz     short loc_489D12

loc_489D0B:
inc     al
mov     [ecx+4], al
jmp     short def_489B8C ; jumptable 00489B8C default case

loc_489D12:
call    sub_47EBCB
test    eax, eax
jz      short loc_489CCC
cmp     byte ptr [ecx+0Ah], 1
jnz     short loc_489CCC
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
mov     byte ptr [ecx+4], 10h
jmp     short loc_489CCC

loc_489D33:             ; jumptable 00489B8C case 10
cmp     ds:word_6E23D6, 0
jnz     short def_489B8C ; jumptable 00489B8C default case
jmp     short loc_489D0B

loc_489D3F:             ; jumptable 00489B8C case 11
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_489B8C ; jumptable 00489B8C default case
or      ds:byte_5F8364, 2
mov     eax, offset byte_5F8364
call    sub_4B565A
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     edx, [ecx+30h]
mov     byte ptr [edx+3], 1
mov     dl, [edx+3]
mov     eax, [ecx+24h]
mov     [eax+3], dl
mov     edx, [ecx+30h]
mov     byte ptr [edx+8], 0
mov     dl, [edx+8]
mov     eax, [ecx+24h]
mov     [eax+8], dl
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Ch], 46h ; 'F'
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Ch], 47h ; 'G'
mov     eax, [ecx+24h]
mov     word ptr [eax+14h], 6Fh ; 'o'
mov     edx, [ecx+24h]
sub     word ptr [edx+18h], 14h
mov     edx, [ecx+30h]
add     word ptr [edx+14h], 0Ah
mov     eax, [ecx+30h]
mov     word ptr [eax+18h], 0FEC3h
mov     eax, [ecx+28h]
call    sub_4DE2F6
mov     eax, [ecx+2Ch]
call    sub_4DE2F6
mov     eax, [ecx+30h]
call    sub_4DE2F6
mov     eax, offset unk_521AB8
call    sub_49DB4D
mov     eax, offset unk_521ACC
call    sub_49DB4D
mov     eax, 2Ch ; ','
call    sub_47E8B8

loc_489DF0:
mov     eax, 7E0h
call    sub_47EA91
call    sub_47E829
mov     byte ptr [ecx], 0
jmp     def_489B8C      ; jumptable 00489B8C default case

loc_489E07:             ; jumptable 00489B8C case 12
mov     edx, offset dword_77EA48
mov     bh, 1
mov     byte ptr ds:dword_77EA5A+2, bh
mov     ds:byte_77EA5E, 6
mov     eax, 629h
call    sub_47E888
test    eax, eax
jz      short loc_489E32
mov     ds:byte_77EA5F, 4
jmp     short loc_489E38

loc_489E32:
mov     ds:byte_77EA5F, bh

loc_489E38:
mov     byte ptr [edx+15h], 0
mov     byte ptr [edx+19h], 9
mov     byte ptr [edx+18h], 0FFh
jmp     loc_489C61

loc_489E49:             ; jumptable 00489B8C case 13
cmp     byte ptr ds:dword_77EA5A+2, 2
jnz     def_489B8C      ; jumptable 00489B8C default case
mov     edx, [ecx+24h]
test    edx, edx
jz      short loc_489E64
mov     eax, edx
call    sub_4DE2F6

loc_489E64:
call    sub_4E1D8A
mov     dl, 1
mov     byte ptr ds:dword_77E954, dl
call    sub_42A66D
add     [ecx+4], dl
add     byte ptr ds:dword_77EA5A+2, dl
jmp     def_489B8C      ; jumptable 00489B8C default case

loc_489E84:             ; jumptable 00489B8C case 14
cmp     byte ptr ds:dword_77EA5A+2, 0
jnz     def_489B8C      ; jumptable 00489B8C default case
or      ds:byte_5F8364, 2
mov     edi, 0FFFFFFB2h
mov     word ptr ds:dword_5F889A+2, di
mov     word ptr ds:dword_5F8376+2, di
mov     edx, 0FFFFFFFFh
mov     word ptr ds:dword_5F889E, dx
mov     word ptr ds:dword_5F837A, dx
mov     esi, 0FFFFFFAFh
mov     word ptr ds:dword_5F889E+2, si
mov     word ptr ds:dword_5F837A+2, si
mov     edx, 0FFB20000h
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8380, edx
mov     esi, 0FFFF0000h
mov     ds:dword_5F8890, esi
mov     ds:dword_5F8384, esi
mov     ebp, 0FFAF0000h
mov     ds:dword_5F8894, ebp
mov     ds:dword_5F8388, ebp
mov     eax, 800h
mov     word ptr ds:dword_5F88A4+2, ax
mov     word ptr ds:dword_5F83B8+2, ax
mov     ds:byte_5F88AC, 30h ; '0'
mov     eax, offset unk_521A68
call    sub_49DB4D
mov     eax, [ecx+24h]
mov     word ptr [eax+14h], 6Fh ; 'o'
mov     eax, [ecx+24h]
mov     word ptr [eax+16h], 0FFFFh
mov     eax, [ecx+24h]
mov     word ptr [eax+18h], 0FF9Bh
mov     eax, [ecx+24h]
mov     dword ptr [eax+1Ch], offset unk_6F0000
mov     eax, [ecx+24h]
mov     [eax+20h], esi
mov     eax, [ecx+24h]
mov     dword ptr [eax+24h], 0FF9B0000h
mov     eax, [ecx+24h]
mov     word ptr [eax+56h], 0
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+24h]
mov     word ptr [eax+44h], 0
mov     eax, offset unk_521AB8
call    sub_49DB4D
mov     eax, offset unk_521ACC
call    sub_49DB4D
mov     eax, offset unk_521AA4
call    sub_49DB4D
mov     edx, [ecx+30h]
mov     byte ptr [edx+3], 1
mov     dl, [edx+3]
mov     eax, [ecx+24h]
mov     [eax+3], dl
mov     edx, [ecx+30h]
add     word ptr [edx+14h], 0Ah
mov     eax, [ecx+30h]
mov     word ptr [eax+18h], 0FEC3h
mov     edx, [ecx+30h]
mov     byte ptr [edx+8], 0
mov     dl, [edx+8]
mov     eax, [ecx+24h]
mov     [eax+8], dl
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Ch], 46h ; 'F'
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Ch], 47h ; 'G'
mov     eax, [ecx+30h]
mov     word ptr [eax+56h], 800h
mov     eax, [ecx+30h]
mov     word ptr [eax+44h], 0
mov     eax, 1
call    sub_49E0D7
jmp     loc_489C61

loc_489FF9:             ; jumptable 00489B8C case 15
cmp     ds:word_6E23D6, 0
jnz     def_489B8C      ; jumptable 00489B8C default case
mov     eax, 2Ch ; ','
call    sub_47E8B8
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, [ecx+34h]
call    sub_4DE2F6
mov     eax, [ecx+38h]
call    sub_4DE2F6
mov     eax, [ecx+30h]
call    sub_4DE2F6
mov     eax, offset unk_521AB8
call    sub_49DB4D
mov     eax, offset unk_521ACC
call    sub_49DB4D
jmp     loc_489DF0

loc_48A04C:             ; jumptable 00489B8C case 16
or      ds:byte_5F8364, 2
call    sub_4E1D8A
mov     dl, 1
mov     byte ptr ds:dword_77E954, dl
call    sub_42A66D
mov     eax, [ecx+24h]
mov     word ptr [eax+14h], 6Fh ; 'o'
mov     eax, [ecx+24h]
mov     word ptr [eax+16h], 0FFFFh
mov     eax, [ecx+24h]
mov     word ptr [eax+18h], 0FF9Bh
mov     eax, [ecx+24h]
mov     dword ptr [eax+1Ch], offset unk_6F0000
mov     eax, [ecx+24h]
mov     dword ptr [eax+20h], 0FFFF0000h
mov     eax, [ecx+24h]
mov     dword ptr [eax+24h], 0FF9B0000h
mov     eax, [ecx+24h]
mov     word ptr [eax+56h], 0
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [ecx+24h]
mov     [eax+0Dh], dl
mov     eax, [ecx+24h]
mov     word ptr [eax+44h], 0
mov     edx, [ecx+30h]
mov     byte ptr [edx+3], 1
mov     dl, [edx+3]
mov     eax, [ecx+24h]
mov     [eax+3], dl
mov     edx, [ecx+30h]
add     word ptr [edx+14h], 0Ah
mov     eax, [ecx+30h]
mov     word ptr [eax+18h], 0FEC3h
mov     eax, [ecx+28h]
call    sub_4DE2F6
mov     eax, [ecx+2Ch]
call    sub_4DE2F6
mov     eax, [ecx+30h]
call    sub_4DE2F6
mov     eax, offset unk_521AB8
call    sub_49DB4D
mov     eax, offset unk_521ACC
call    sub_49DB4D
mov     edx, [ecx+30h]
mov     byte ptr [edx+8], 0
mov     dl, [edx+8]
mov     eax, [ecx+24h]
mov     [eax+8], dl
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Ch], 46h ; 'F'
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Ch], 47h ; 'G'
mov     eax, [ecx+30h]
mov     word ptr [eax+56h], 800h
mov     eax, [ecx+30h]
mov     word ptr [eax+44h], 0
mov     eax, 2Ch ; ','
call    sub_47E8B8
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, [ecx+28h]
call    sub_4DE2F6
mov     eax, [ecx+2Ch]
call    sub_4DE2F6
mov     eax, [ecx+30h]
call    sub_4DE2F6
jmp     loc_489DF0
sub_489B70 endp




sub_48A16B proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48A171[edx*4]
pop     edx
retn
sub_48A16B endp

db 90h
jpt_48A1A6 dd offset loc_48A1AD ; jump table for switch statement
dd offset loc_48A1F9
dd offset loc_48A28F
dd offset loc_48A2B4



sub_48A18B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_48A1A6      ; jumptable 0048A1A6 default case
and     eax, 0FFh
jmp     jpt_48A1A6[eax*4] ; switch jump

loc_48A1AD:             ; jumptable 0048A1A6 case 0
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_522038
mov     dword ptr [esi+0A4h], offset unk_522084
mov     dword ptr [esi+0Ch], 0
mov     edx, 80h
mov     eax, 0Ah
call    sub_4DC979
mov     eax, offset unk_521FAC
call    sub_49DB4D
mov     eax, offset unk_521FC0
call    sub_49DB4D
inc     byte ptr [esi+5]

loc_48A1F9:             ; jumptable 0048A1A6 case 1
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      def_48A1A6      ; jumptable 0048A1A6 default case
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 0F300h
mov     word ptr [ecx+53Ah], 0F9FFh
mov     word ptr [ecx+53Ch], 2600h
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
mov     word ptr [ecx+542h], 0
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 0

loc_48A28A:
inc     byte ptr [esi+5]
jmp     short def_48A1A6 ; jumptable 0048A1A6 default case

loc_48A28F:             ; jumptable 0048A1A6 case 2
mov     dl, 2

loc_48A291:
movsx   ebx, dl
mov     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 2
add     eax, offset unk_521FAC
call    sub_49DB4D
inc     dl
cmp     dl, 6
jle     short loc_48A291
inc     byte ptr [ecx+9]
jmp     short loc_48A28A

loc_48A2B4:             ; jumptable 0048A1A6 case 3
or      ds:byte_5F8421, 20h
xor     edx, edx
mov     ds:word_57096A, dx
mov     byte ptr [esi+0Ah], 80h
mov     byte ptr [esi+0Bh], 0
mov     byte ptr [esi+6], 0
mov     eax, 24000Ah
call    sub_4D8E42
inc     byte ptr [esi+4]
mov     byte ptr [esi+5], 0

def_48A1A6:             ; jumptable 0048A1A6 default case
call    sub_49DBD1
call    sub_49DECF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48A18B endp




sub_48A2F0 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_47EBCB
test    eax, eax
jz      short loc_48A301
or      byte ptr [edx+0Ah], 1

loc_48A301:
mov     al, [edx+5]
test    al, al
jbe     short loc_48A30E
cmp     al, 1
jz      short loc_48A33E
jmp     short loc_48A36D

loc_48A30E:
call    sub_49DBD1
call    sub_4D8ECC
test    eax, eax
jz      short loc_48A36D
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_522094
mov     dword ptr [edx+0A4h], offset unk_5224C0
and     byte ptr [edx+0Ah], 7Fh
inc     byte ptr [edx+5]
jmp     short loc_48A36D

loc_48A33E:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_48A361
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     cl, [edx+0Ah]
test    cl, 1
jz      short loc_48A368
test    cl, 80h
jnz     short loc_48A368
inc     byte ptr [edx+4]
jmp     short loc_48A364

loc_48A361:
add     [edx+4], al

loc_48A364:
mov     byte ptr [edx+5], 0

loc_48A368:
call    sub_49DBD1

loc_48A36D:
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_48A2F0 endp

db 8Bh, 0C0h
jpt_48A39B dd offset loc_48A3A2 ; jump table for switch statement
dd offset loc_48A446
dd offset loc_48A484
dd offset loc_48A496



sub_48A387 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_48A39B      ; jumptable 0048A39B default case
xor     edx, edx
mov     dl, al
jmp     jpt_48A39B[edx*4] ; switch jump

loc_48A3A2:             ; jumptable 0048A39B case 0
test    byte ptr [ecx+0Ah], 1
jz      short loc_48A3C6
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_48A3C6
mov     eax, [ecx+28h]
call    sub_4DE336
mov     eax, [ecx+2Ch]
call    sub_4DE2F6
mov     eax, [ecx+30h]
call    sub_4DE2F6

loc_48A3C6:
call    sub_4E1D8A
call    sub_4D8EB1
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0F300h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1A00h
mov     ds:dword_5F888C, 0F3000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 1A000000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 400h
xor     ebx, ebx
mov     ds:word_5F88A8, ax
xor     bh, ah
mov     ds:byte_5F88AC, bh

loc_48A43F:
inc     byte ptr [ecx+5]
pop     edx
pop     ecx
pop     ebx
retn

loc_48A446:             ; jumptable 0048A39B case 1
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     dh, 1
mov     byte ptr ds:dword_77E954, dh
test    [ecx+0Ah], dh
jz      short loc_48A464
call    sub_42A66D
jmp     short loc_48A469

loc_48A464:
call    sub_42AC90

loc_48A469:
call    sub_40533E
mov     eax, [ecx+24h]
call    sub_4DE336
mov     edx, 0Ah
xor     eax, eax
call    sub_4A0E24
jmp     short loc_48A43F

loc_48A484:             ; jumptable 0048A39B case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_48A39B ; jumptable 0048A39B default case
inc     al
mov     [ecx+5], al
pop     edx
pop     ecx
pop     ebx
retn

loc_48A496:             ; jumptable 0048A39B case 3
cmp     ds:byte_77EAB8, 0
jnz     short def_48A39B ; jumptable 0048A39B default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 8000000Ch
call    sub_4D89E4
mov     ds:word_77EA80, 73h ; 's'
mov     byte ptr [ecx], 0

def_48A39B:             ; jumptable 0048A39B default case
pop     edx
pop     ecx
pop     ebx

locret_48A4BC:
retn
sub_48A387 endp




sub_48A4BD proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48A4F1
mov     eax, [eax+28h]
mov     word ptr [eax+14h], 0EC48h
mov     word ptr [eax+18h], 19B8h
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
mov     word ptr [eax+56h], 500h

loc_48A4F1:
pop     edx
retn
sub_48A4BD endp




sub_48A4F3 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48A527
mov     eax, [eax+28h]
mov     word ptr [eax+14h], 0EC00h
mov     word ptr [eax+18h], 1A00h
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
mov     word ptr [eax+56h], 500h

loc_48A527:
pop     edx
retn
sub_48A4F3 endp




sub_48A529 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48A56F
mov     eax, [eax+28h]
mov     word ptr [eax+14h], 0EC00h
mov     word ptr [eax+16h], 0FD1Ch
mov     word ptr [eax+18h], 1A00h
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
mov     word ptr [eax+56h], 900h

loc_48A56F:
pop     edx

locret_48A570:
retn
sub_48A529 endp

db 8Bh, 0C0h
jpt_48A5A1 dd offset loc_48A5A8 ; jump table for switch statement
dd offset loc_48A656
dd offset loc_48A6CC
dd offset loc_48A6D7



sub_48A583 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     ebx, ebx
mov     ds:word_57096A, bx
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      def_48A5A1      ; jumptable 0048A5A1 default case
and     eax, 0FFh
jmp     jpt_48A5A1[eax*4] ; switch jump

loc_48A5A8:             ; jumptable 0048A5A1 case 0
cmp     word ptr ds:dword_5F837A+2, 1A00h
jge     short loc_48A612
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0F300h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1A00h
mov     ds:dword_5F888C, 0F3000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 1A000000h
xor     ecx, ecx
mov     word ptr ds:dword_5F88A4, cx
mov     word ptr ds:dword_5F88A4+2, cx
mov     ds:word_5F88A8, cx

loc_48A60A:
inc     byte ptr [edx+6]
jmp     def_48A5A1      ; jumptable 0048A5A1 default case

loc_48A612:
mov     ax, ds:word_5F8488

loc_48A618:
mov     ds:word_57096A, ax

def_48A5A1:             ; jumptable 0048A5A1 default case
cmp     dword ptr [edx+10h], 0
jnz     short loc_48A640
mov     eax, [edx+28h]
call    sub_4DE336
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     eax, [edx+30h]
call    sub_4DE2F6
mov     byte ptr [edx+0Bh], 1

loc_48A640:
mov     ebx, [edx+10h]
test    ebx, ebx
jz      short loc_48A64C
cmp     ebx, 32h ; '2'
jnz     short loc_48A652

loc_48A64C:
mov     edx, [edx+24h]
inc     byte ptr [edx+8]

loc_48A652:
pop     edx
pop     ecx
pop     ebx
retn

loc_48A656:             ; jumptable 0048A5A1 case 1
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
cmp     ax, 400h
jle     short loc_48A6C1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0F300h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1A00h
mov     ds:dword_5F888C, 0F3000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 1A000000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 400h
mov     ds:word_5F88A8, ax
jmp     loc_48A60A

loc_48A6C1:
mov     ax, ds:word_5F848E
jmp     loc_48A618

loc_48A6CC:             ; jumptable 0048A5A1 case 2
inc     byte ptr ds:dword_5F836C+1
jmp     loc_48A60A

loc_48A6D7:             ; jumptable 0048A5A1 case 3
cmp     byte ptr ds:dword_5F836C+1, 0
jnz     def_48A5A1      ; jumptable 0048A5A1 default case
mov     bl, ds:byte_5F8421
and     bl, 9Fh
mov     ds:byte_5F8421, bl
mov     bh, bl
or      bh, 40h
mov     ds:byte_5F8421, bh
jmp     loc_48A60A
sub_48A583 endp




sub_48A703 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48A709[edx*4]
pop     edx
retn
sub_48A703 endp




sub_48A712 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 1
jb      short loc_48A733
jbe     short loc_48A796
cmp     al, 2
jz      loc_48A82F
jmp     loc_48A869

loc_48A733:
test    al, al
jnz     loc_48A869
mov     edx, 80h
mov     eax, 5Eh ; '^'
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_5225A8
mov     dword ptr [esi+0A4h], offset unk_5225F4
mov     dword ptr [esi+0Ch], 0
mov     ds:word_77EA80, 7Fh
mov     ds:word_55A54C, 0FDA7h
mov     ds:word_55A54E, 8
mov     byte ptr [esi+0Ah], 80h
mov     byte ptr [esi+0Bh], 0
inc     byte ptr [esi+5]

loc_48A796:
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      loc_48A869
and     byte ptr [ecx], 0FDh
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 0ED80h
mov     word ptr [ecx+53Ah], 0FFFFh
mov     word ptr [ecx+53Ch], 1E80h
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
mov     word ptr [ecx+542h], 400h
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 30h ; '0'
inc     byte ptr [esi+5]
jmp     short loc_48A869

loc_48A82F:
mov     ah, [esi+0Bh]
cmp     ah, 2Dh ; '-'
jnb     short loc_48A840
mov     dh, ah
inc     dh
mov     [esi+0Bh], dh
jmp     short loc_48A869

loc_48A840:
mov     byte ptr [esi+0Bh], 0
mov     eax, offset unk_52251C
call    sub_49DB4D
mov     eax, 7
call    sub_49E0D7
mov     eax, 240009h
call    sub_4D8E42
inc     byte ptr [esi+4]
mov     byte ptr [esi+5], 0

loc_48A869:
call    sub_49DBD1
call    sub_49DECF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48A712 endp




sub_48A878 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_48A88D
cmp     al, 1
jz      short loc_48A8BE
jmp     loc_48A8F9

loc_48A88D:
call    sub_49DBD1
call    sub_4D8ECC
test    eax, eax
jz      short loc_48A8F9
call    sub_436868
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_522604
mov     dword ptr [edx+0A4h], offset unk_52290C
inc     byte ptr [edx+5]
jmp     short loc_48A8F9

loc_48A8BE:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_48A8ED
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jz      short loc_48A8F4
mov     bh, [edx+0Ah]
test    bh, 80h
jnz     short loc_48A8F4
mov     cl, bh
or      cl, 1
mov     [edx+0Ah], cl
inc     byte ptr [edx+4]
jmp     short loc_48A8F0

loc_48A8ED:
add     [edx+4], al

loc_48A8F0:
mov     byte ptr [edx+5], 0

loc_48A8F4:
call    sub_49DBD1

loc_48A8F9:
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_48A878 endp




sub_48A902 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_48A916
jbe     short loc_48A953
cmp     al, 2
jz      short loc_48A978
pop     edx
pop     ecx
retn

loc_48A916:
test    al, al
jnz     short loc_48A984
mov     edx, 80h
mov     eax, 156h
call    sub_4DC979
call    sub_4E1D8A
call    sub_4D8EB1
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_48A94D
xor     eax, eax
call    sub_4A0E75
mov     eax, 0FFFFFFFFh
call    sub_4A0595

loc_48A94D:
inc     byte ptr [ecx+5]
pop     edx
pop     ecx
retn

loc_48A953:
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     dl, 1
mov     byte ptr ds:dword_77E954, dl
test    [ecx+0Ah], dl
jz      short loc_48A971
call    sub_42A66D
jmp     short loc_48A94D

loc_48A971:
call    sub_42AC90
jmp     short loc_48A94D

loc_48A978:
mov     ah, ds:byte_77EAB8
test    ah, ah
jnz     short loc_48A984
mov     [ecx], ah

loc_48A984:
pop     edx
pop     ecx
retn
sub_48A902 endp




sub_48A987 proc near
cmp     dword ptr [eax+10h], 0
jnz     short loc_48A993
mov     byte ptr [eax+6], 0
jmp     short loc_48A999

loc_48A993:
cmp     byte ptr [eax+6], 0
jnz     short locret_48A9AA

loc_48A999:
cmp     ds:word_6E23D6, 0
jnz     short locret_48A9AA
and     byte ptr [eax+0Ah], 7Fh
inc     byte ptr [eax+6]

locret_48A9AA:
retn
sub_48A987 endp

jpt_48AA00 dd offset loc_48AA07 ; jump table for switch statement
dd offset loc_48AA1D
dd offset loc_48AA2E
dd offset loc_48AA85
dd offset loc_48AAA4
dd offset loc_48AAB7



sub_48A9C3 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48A9F0
mov     eax, offset unk_52256C
call    sub_49DB4D
mov     eax, offset unk_522530
call    sub_49DB4D
mov     eax, offset unk_522544
call    sub_49DB4D
mov     byte ptr [edx+6], 0

loc_48A9F0:
mov     al, [edx+6]
cmp     al, 5           ; switch 6 cases
ja      def_48AA00      ; jumptable 0048AA00 default case
and     eax, 0FFh
jmp     jpt_48AA00[eax*4] ; switch jump

loc_48AA07:             ; jumptable 0048AA00 case 0
cmp     dword ptr [edx+10h], 14h
jnz     loc_48AB25
xor     al, al
mov     ds:byte_55A550, al
jmp     loc_48AA9C

loc_48AA1D:             ; jumptable 0048AA00 case 1
xor     eax, eax
call    sub_48AD6E
test    eax, eax
jz      loc_48AB25
jmp     short loc_48AA9C

loc_48AA2E:             ; jumptable 0048AA00 case 2
mov     eax, 1
call    sub_48AD6E
xor     eax, eax
call    sub_48AC87
test    eax, eax
jz      short loc_48AA46
inc     byte ptr [edx+6]

loc_48AA46:
mov     eax, [edx+28h]
mov     bx, ds:word_55A54C
sub     ebx, 54h ; 'T'
mov     [eax+16h], bx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
mov     eax, [edx+2Ch]
mov     bx, ds:word_55A54C
sub     ebx, 54h ; 'T'

loc_48AA70:
mov     [eax+16h], bx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
jmp     loc_48AB25

loc_48AA85:             ; jumptable 0048AA00 case 3
mov     eax, 1
call    sub_48AD6E
cmp     dword ptr [edx+10h], 0B4h

loc_48AA96:
jnz     loc_48AB25

loc_48AA9C:
inc     byte ptr [edx+6]
jmp     loc_48AB25

loc_48AAA4:             ; jumptable 0048AA00 case 4
mov     eax, 1
call    sub_48AD6E
cmp     dword ptr [edx+10h], 208h
jmp     short loc_48AA96

loc_48AAB7:             ; jumptable 0048AA00 case 5
mov     eax, 1
call    sub_48AD6E
mov     eax, 1
call    sub_48AC87
test    eax, eax
jz      short loc_48AAD2
inc     byte ptr [edx+6]

loc_48AAD2:
mov     eax, [edx+24h]
mov     bx, ds:word_55A54C
mov     [eax+16h], bx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
mov     eax, [edx+28h]
mov     bx, ds:word_55A54C
sub     ebx, 34h ; '4'
mov     [eax+16h], bx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
mov     eax, [edx+2Ch]
mov     bx, ds:word_55A54C
sub     ebx, 34h ; '4'
jmp     loc_48AA70

def_48AA00:             ; jumptable 0048AA00 default case
mov     eax, 1
call    sub_48AD6E

loc_48AB25:
mov     eax, [edx+34h]
mov     dx, ds:word_55A54C
mov     [eax+4Ah], dx
pop     edx
pop     ecx
pop     ebx
retn
sub_48A9C3 endp




sub_48AB37 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48AB82
mov     eax, [eax+24h]
call    sub_4DE336
mov     eax, [edx+28h]
call    sub_4DE2F6
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     eax, [edx+34h]
call    sub_4DE477
mov     eax, offset unk_522558
call    sub_49DB4D
mov     eax, offset unk_522580
call    sub_49DB4D
mov     eax, offset unk_522594
call    sub_49DB4D
mov     byte ptr [edx+6], 0

loc_48AB82:
mov     eax, [edx+38h]
sub     word ptr [eax+4Ah], 5
mov     edx, [edx+3Ch]
sub     word ptr [edx+4Ah], 5
pop     edx
retn
sub_48AB37 endp




sub_48AB94 proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48ABCF
mov     eax, [eax+38h]
call    sub_4DE477
mov     eax, [edx+3Ch]
call    sub_4DE477
mov     byte ptr [edx+6], 0
or      ds:byte_5F8364, 2
mov     ds:byte_5F88AC, 80h
xor     bh, bh
mov     byte ptr ds:dword_5F84CB+1, bh
mov     byte ptr ds:dword_5F84CB+2, 6

loc_48ABCF:
mov     al, [edx+6]
cmp     al, 1
jb      short loc_48ABDB
jbe     short loc_48ABE9
pop     edx
pop     ebx
retn

loc_48ABDB:
test    al, al
jnz     short loc_48ABFA
mov     ds:byte_55A550, al
inc     al
mov     [edx+6], al

loc_48ABE9:
mov     eax, 2
call    sub_48AD6E
test    eax, eax
jz      short loc_48ABFA
inc     byte ptr [edx+6]

loc_48ABFA:
pop     edx
pop     ebx
retn
sub_48AB94 endp




sub_48ABFD proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48AC0E
mov     byte ptr [eax+6], 0
mov     ds:byte_5F88AC, 30h ; '0'

locret_48AC0E:
retn
sub_48ABFD endp




sub_48AC0F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_48AC2E
mov     eax, [eax+30h]
call    sub_4DE2F6
mov     byte ptr [ecx+6], 0
jmp     short loc_48AC3F

loc_48AC2E:
cmp     edx, 1Eh
jnz     short loc_48AC3F
mov     edx, 28h ; '('
xor     eax, eax
call    sub_4A0E24

loc_48AC3F:
mov     al, [ecx+6]
test    al, al
jbe     short loc_48AC4E
cmp     al, 1
jz      short loc_48AC6B
pop     edx
pop     ecx
pop     ebx
retn

loc_48AC4E:
cmp     dword ptr [ecx+10h], 32h ; '2'
jnz     short loc_48AC83
mov     byte ptr [ebx+548h], 81h
mov     byte ptr [ebx+168h], 0
mov     byte ptr [ebx+169h], 0
jmp     short loc_48AC80

loc_48AC6B:
mov     eax, [ebx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_48AC83
mov     byte ptr [ebx+548h], 0

loc_48AC80:
inc     byte ptr [ecx+6]

loc_48AC83:
pop     edx
pop     ecx
pop     ebx
retn
sub_48AC0F endp




sub_48AC87 proc near
push    ecx
push    edx
xor     edx, edx
test    eax, eax
jnz     loc_48AD0E
mov     eax, dword ptr ds:unk_55A54A
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jl      short loc_48ACAB
xor     ecx, ecx
mov     ds:word_55A54E, cx
jmp     short loc_48ACFB

loc_48ACAB:
cmp     eax, 0FFFFFFC3h
jle     short loc_48ACBB
mov     ds:word_55A54E, 2
jmp     short loc_48ACE9

loc_48ACBB:
cmp     eax, 0FFFFFF4Bh
jle     short loc_48ACCD
mov     ds:word_55A54E, 4
jmp     short loc_48ACE9

loc_48ACCD:
cmp     eax, 0FFFFFE97h
jle     short loc_48ACDF
mov     ds:word_55A54E, 6
jmp     short loc_48ACE9

loc_48ACDF:
cmp     ds:word_55A54E, 0
jle     short loc_48ACFB

loc_48ACE9:
mov     ax, ds:word_55A54E
add     ds:word_55A54C, ax
mov     eax, edx
pop     edx
pop     ecx
retn

loc_48ACFB:
mov     ds:word_55A54C, 0FFFFh

loc_48AD04:
mov     edx, 1
mov     eax, edx
pop     edx
pop     ecx
retn

loc_48AD0E:
mov     eax, dword ptr ds:unk_55A54A
sar     eax, 10h
cmp     eax, 0FFFFFE97h
jge     short loc_48AD28

loc_48AD1D:
mov     ds:word_55A54E, 6
jmp     short loc_48AD4D

loc_48AD28:
cmp     eax, 0FFFFFF4Bh
jl      short loc_48AD1D
cmp     eax, 0FFFFFFC3h
jge     short loc_48AD3F
mov     ds:word_55A54E, 4
jmp     short loc_48AD4D

loc_48AD3F:
cmp     eax, 0FFFFFFFFh
jg      short loc_48AD4D
mov     ds:word_55A54E, 2

loc_48AD4D:
mov     eax, dword ptr ds:unk_55A54A
sar     eax, 10h
cmp     eax, 0FFFFFDA7h
jle     short loc_48AD04
mov     ax, ds:word_55A54E
sub     ds:word_55A54C, ax
mov     eax, edx
pop     edx
pop     ecx
retn
sub_48AC87 endp




sub_48AD6E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edx, eax
xor     edi, edi
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
or      byte ptr [esi+7], 2
cmp     edx, 1
jb      short loc_48ADB4
jbe     short loc_48ADFF
cmp     edx, 2
jz      short loc_48AE0E
jmp     loc_48AE53

loc_48ADB4:
test    edx, edx
jnz     loc_48AE53
mov     bh, ds:byte_55A550
cmp     bh, 19h
jnb     short loc_48ADD6
mov     dl, bh
add     dl, bh
mov     [esi+6], dl
mov     [esi+5], dl
mov     [esi+4], dl
jmp     short loc_48ADE8

loc_48ADD6:
mov     byte ptr [esi+6], 32h ; '2'
mov     al, [esi+6]
mov     [esi+5], al
mov     [esi+4], al
mov     edi, 1

loc_48ADE8:
mov     cl, ds:byte_55A550
cmp     cl, 0FFh
jnb     short loc_48AE53
mov     ch, cl
inc     ch
mov     ds:byte_55A550, ch
jmp     short loc_48AE53

loc_48ADFF:
mov     byte ptr [esi+6], 32h ; '2'
mov     al, [esi+6]
mov     [esi+5], al
mov     [esi+4], al
jmp     short loc_48AE53

loc_48AE0E:
mov     dl, ds:byte_55A550
cmp     dl, 19h
jnb     short loc_48AE2C
mov     al, dl
add     al, dl
mov     ah, 32h ; '2'
sub     ah, al
mov     [esi+6], ah
mov     [esi+5], ah
mov     [esi+4], ah
jmp     short loc_48AE3E

loc_48AE2C:
mov     byte ptr [esi+6], 0
mov     al, [esi+6]
mov     [esi+5], al
mov     [esi+4], al
mov     edi, 1

loc_48AE3E:
mov     dh, ds:byte_55A550
cmp     dh, 0FFh
jnb     short loc_48AE53
mov     bl, dh
inc     bl
mov     ds:byte_55A550, bl

loc_48AE53:
mov     edx, ds:dword_77E6DC
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
mov     ebp, edx
push    0
mov     ecx, 4Fh ; 'O'
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 38h ; '8'
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, ebp
call    sub_4F87A6
mov     eax, edi
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48AD6E endp




sub_48AEA4 proc near
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
sub_48AEA4 endp




sub_48AEF0 proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_48AF92
mov     eax, 7
call    sub_48AEA4
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     eax, [edx+34h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+38h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+3Ch]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+40h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+44h]
mov     byte ptr [eax+9], 8
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

loc_48AF92:
pop     edx
pop     ebx
retn
sub_48AEF0 endp




sub_48AF95 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48AFD1
mov     eax, 5
call    sub_48AEA4
mov     edx, [edx+24h]
and     byte ptr [edx], 0FDh
and     ds:byte_56F80C, 0FCh
and     ds:byte_56F87C, 0FCh
and     ds:byte_56F8EC, 0FCh
and     ds:byte_56F924, 0FCh
and     ds:byte_56F95C, 0FCh

loc_48AFD1:
pop     edx
retn
sub_48AF95 endp




sub_48AFD3 proc near

var_10= word ptr -10h
var_E= word ptr -0Eh
var_C= word ptr -0Ch

push    ebx
push    edx
sub     esp, 8
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_48B0C4
mov     eax, 6
call    sub_48AEA4
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Ch], 1
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+0Ah], 0
mov     bl, [eax+0Ah]
mov     [eax+9], bl
mov     eax, [edx+30h]
or      byte ptr [eax], 2
mov     byte ptr [eax+0Ah], 0
mov     bl, [eax+0Ah]
mov     [eax+9], bl
mov     eax, [edx+34h]
or      byte ptr [eax], 2
mov     eax, [edx+38h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
or      byte ptr [eax], 2
mov     eax, [edx+3Ch]
or      byte ptr [eax], 2
mov     eax, [edx+40h]
or      byte ptr [eax], 2
mov     eax, [edx+44h]
or      byte ptr [eax], 2
mov     [esp+10h+var_10], 0B8h
mov     [esp+10h+var_E], 0FF92h
mov     [esp+10h+var_C], 12Ch
mov     eax, esp
call    sub_43B799
mov     [esp+10h+var_10], 46h ; 'F'
mov     [esp+10h+var_C], 10Eh
mov     eax, esp
call    sub_43B799
mov     [esp+10h+var_10], 3Fh ; '?'
mov     [esp+10h+var_C], 0B4h
mov     eax, esp
call    sub_43B799
mov     [esp+10h+var_C], 28h ; '('
mov     eax, esp
call    sub_43B799
mov     [esp+10h+var_10], 0C8h
mov     [esp+10h+var_C], 8Ch
mov     eax, esp
call    sub_43B799
mov     eax, [edx+48h]
mov     byte ptr [eax+9], 2
mov     word ptr [eax+48h], 0F0h
mov     word ptr [eax+4Ah], 0FFBAh
mov     word ptr [eax+4Ch], 7Ch ; '|'

loc_48B0C4:
cmp     dword ptr [edx+10h], 1Eh
jnz     short loc_48B0D1
mov     eax, [edx+28h]
mov     byte ptr [eax+0Ch], 0

loc_48B0D1:
cmp     dword ptr [edx+10h], 5Ah ; 'Z'
jnz     short loc_48B0E2
mov     eax, [edx+40h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

loc_48B0E2:
add     esp, 8
pop     edx
pop     ebx
retn
sub_48AFD3 endp




sub_48B0E8 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48B0FA
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_48B0FA:
cmp     dword ptr [eax+10h], 96h
jnz     short loc_48B10E
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0

loc_48B10E:
pop     edx
retn
sub_48B0E8 endp




sub_48B110 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48B125
mov     edx, [eax+2Ch]
or      byte ptr [edx], 2
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_48B125:
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_48B132
mov     edx, [eax+38h]
mov     byte ptr [edx+0Ah], 0

loc_48B132:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_48B143
mov     edx, [eax+40h]
mov     byte ptr [edx+9], 4
mov     byte ptr [edx+0Ah], 0

loc_48B143:
cmp     dword ptr [eax+10h], 41h ; 'A'
jnz     short loc_48B154
mov     eax, [eax+34h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_48B154:
pop     edx
retn
sub_48B110 endp




sub_48B156 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48B168
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 4
mov     byte ptr [edx+0Ah], 0

loc_48B168:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_48B179
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0

loc_48B179:
pop     edx
retn
sub_48B156 endp




sub_48B17B proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48B1B4
mov     edx, [eax+3Ch]
mov     byte ptr [edx+110h], 0Ah
mov     edx, [eax+44h]
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+9], 6
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+48h]
mov     word ptr [edx+48h], 180h
mov     word ptr [edx+4Ah], 0FF38h
mov     word ptr [edx+4Ch], 0
mov     byte ptr [edx+9], 0

loc_48B1B4:
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_48B1D7
mov     edx, [eax+48h]
mov     word ptr [edx+48h], 0FF80h
mov     word ptr [edx+4Ah], 0FF38h
mov     word ptr [edx+4Ch], 0
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_48B1D7:
cmp     dword ptr [eax+10h], 28h ; '('
jnz     short loc_48B1EB
mov     edx, [eax+44h]
mov     byte ptr [edx+110h], 9
mov     byte ptr [edx+0Ch], 0

loc_48B1EB:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_48B1FC
mov     eax, [eax+38h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_48B1FC:
pop     edx
retn
sub_48B17B endp




sub_48B1FE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_522A0C
mov     dword ptr [ecx+0A4h], offset unk_522B34
xor     edx, edx

loc_48B224:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_522944
call    sub_49DB4D
inc     edx
cmp     edx, 0Ah
jl      short loc_48B224
pop     edx
pop     ecx
pop     ebx
retn
sub_48B1FE endp




sub_48B242 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_48B252
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_48B252:
pop     edx
retn
sub_48B242 endp

jpt_48B287 dd offset loc_48B28E ; jump table for switch statement
dd offset loc_48B2CC
dd offset loc_48B2E8
dd offset loc_48B307
dd offset loc_48B311
dd offset loc_48B33C



sub_48B26C proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_48B287      ; jumptable 0048B287 default case
and     eax, 0FFh
jmp     jpt_48B287[eax*4] ; switch jump

loc_48B28E:             ; jumptable 0048B287 case 0
mov     eax, ebx
call    sub_4B55D5
test    eax, eax
jz      def_48B287      ; jumptable 0048B287 default case
mov     byte ptr ds:dword_5F836C, 3
mov     dh, 1
mov     byte ptr ds:dword_5F836C+1, dh
or      ds:byte_5F8421, 10h
and     ds:byte_5F8364, 0FCh
mov     eax, 240008h
call    sub_4D8E42
add     [ecx+4], dh
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_48B2CC:             ; jumptable 0048B287 case 1
call    sub_4D8ECC
test    eax, eax
jz      def_48B287      ; jumptable 0048B287 default case
inc     byte ptr [ecx+4]
mov     dword ptr [ecx+0Ch], 19h
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_48B2E8:             ; jumptable 0048B287 case 2
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     def_48B287      ; jumptable 0048B287 default case
mov     eax, 2
call    sub_49E0D7
inc     byte ptr [ecx+4]
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_48B307:             ; jumptable 0048B287 case 3
mov     eax, ecx
call    sub_48B1FE
inc     byte ptr [ecx+4]

loc_48B311:             ; jumptable 0048B287 case 4
cmp     ds:word_6E23D6, 0
jnz     short loc_48B33C ; jumptable 0048B287 case 5
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_48B32F
call    sub_47EBCB
test    eax, eax
jz      short loc_48B33C ; jumptable 0048B287 case 5

loc_48B32F:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [ecx+4]

loc_48B33C:             ; jumptable 0048B287 case 5
mov     eax, ecx
call    sub_48B242
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 5
jnz     def_48B287      ; jumptable 0048B287 default case
cmp     ds:word_6E23D6, 0
jnz     def_48B287      ; jumptable 0048B287 default case
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 6
mov     edx, 205h
mov     eax, 6
call    sub_4A7EE1
cmp     eax, 3
jz      short loc_48B390
mov     ds:byte_77EA5F, 4
jmp     short loc_48B397

loc_48B390:
mov     ds:byte_77EA5F, 1

loc_48B397:
xor     edi, edi
mov     word ptr ds:dword_77EA4E+2, di
mov     word ptr ds:dword_77EA52, di
mov     word ptr ds:dword_77EA52+2, 0FE3Eh
mov     word ptr ds:dword_77EA5A, 800h
xor     ah, ah
mov     byte ptr ds:dword_77EA5A+3, ah
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
mov     [ecx], ah
call    sub_4D8EB1
or      byte ptr [ebx], 1
mov     eax, ebx
call    sub_4B565A
mov     eax, 19h
call    sub_47E8B8

def_48B287:             ; jumptable 0048B287 default case
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_48B26C endp




sub_48B3EF proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48B3F5[edx*4]
pop     edx
retn
sub_48B3EF endp

db 90h
jpt_48B432 dd offset loc_48B439 ; jump table for switch statement
dd offset loc_48B4E4
dd offset loc_48B50A
dd offset loc_48B56E



sub_48B40F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     edi, offset byte_5F8364
mov     ebp, ds:dword_55A554
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      def_48B432      ; jumptable 0048B432 default case
and     eax, 0FFh
jmp     jpt_48B432[eax*4] ; switch jump

loc_48B439:             ; jumptable 0048B432 case 0
mov     eax, edi
call    sub_4B55D5
test    eax, eax
jz      def_48B432      ; jumptable 0048B432 default case
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_522BA0
mov     dword ptr [esi+0A4h], offset unk_522B90
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     ds:dword_5F888C, 58620000h
mov     ds:dword_5F8890, 0FDBF0000h
mov     ds:dword_5F8894, 1D8B0000h
lea     edx, [edi+538h]
lea     eax, [edi+528h]
call    sub_4DD57B
xor     ebx, ebx
mov     word ptr ds:dword_5F88A4, bx
mov     word ptr ds:dword_5F88A4+2, 0DD4h
mov     ds:word_5F88A8, bx
mov     ds:byte_5F88AC, 30h ; '0'
inc     byte ptr [esi+6]
mov     dword ptr [esi+0Ch], 1Eh
mov     edx, 5
jmp     loc_48B592

loc_48B4E4:             ; jumptable 0048B432 case 1
mov     edx, [esi+0Ch]
dec     edx
mov     [esi+0Ch], edx
jnz     def_48B432      ; jumptable 0048B432 default case
inc     byte ptr [esi+6]
mov     dword ptr [esi+0Ch], 24h ; '$'
mov     byte ptr [ebp+9], 1
mov     word ptr [ebp+0Ah], 0
jmp     def_48B432      ; jumptable 0048B432 default case

loc_48B50A:             ; jumptable 0048B432 case 2
mov     eax, 60Dh
call    sub_47E888
test    eax, eax
jz      short loc_48B56E ; jumptable 0048B432 case 3
cmp     dword ptr [esi+0Ch], 24h ; '$'
jnz     short loc_48B525
mov     ds:byte_5F88AC, 0Dh

loc_48B525:
mov     ecx, [esi+0Ch]
test    ecx, ecx
jz      short loc_48B532
lea     ebx, [ecx-1]
mov     [esi+0Ch], ebx

loc_48B532:
cmp     dword ptr [esi+0Ch], 0
jz      short loc_48B564
mov     ebx, [edi+540h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [edi+14h]
mov     ecx, 20h ; ' '
call    sub_4DE552
add     ax, [edi+542h]
and     ah, 0Fh
mov     [edi+542h], ax
jmp     short loc_48B56E ; jumptable 0048B432 case 3

loc_48B564:
mov     byte ptr [edi+548h], 30h ; '0'
inc     byte ptr [esi+6]

loc_48B56E:             ; jumptable 0048B432 case 3
mov     eax, 0Ch
call    sub_47E888
test    eax, eax
jz      short def_48B432 ; jumptable 0048B432 default case
mov     eax, edi
call    sub_4B565A
mov     byte ptr [esi], 0
mov     byte ptr ds:dword_77E954, 1
mov     edx, 0Ah

loc_48B592:
mov     eax, 3FEh
call    sub_4DC979
or      byte ptr [ebp+0], 3
or      byte ptr [ebp+6], 3

def_48B432:             ; jumptable 0048B432 default case
mov     cl, [esi+6]
test    cl, cl
jbe     short loc_48B5C1
cmp     cl, 3
jnb     short loc_48B5C1
mov     ebp, [esi+0A4h]
cmp     byte ptr [ebp+0], 0FFh
jz      short loc_48B5C1
mov     eax, esi
call    dword ptr [ebp+4]

loc_48B5C1:
mov     ah, [esi+6]
test    ah, ah
jbe     loc_48B656
cmp     ah, 3
jnb     loc_48B656
call    sub_47EBCB
test    eax, eax
jz      short loc_48B656
call    sub_48B6CE
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
mov     byte ptr [esi+6], 3
mov     eax, 0Ch
call    sub_47E8B8
mov     dword ptr [edi+528h], 58620000h
mov     dword ptr [edi+52Ch], 0FDBF0000h
mov     dword ptr [edi+530h], 1D8B0000h
lea     edx, [edi+538h]
lea     eax, [edi+528h]
call    sub_4DD57B
mov     word ptr [edi+540h], 0
mov     word ptr [edi+542h], 961h
mov     word ptr [edi+544h], 0
mov     byte ptr [edi+548h], 30h ; '0'

loc_48B656:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48B40F endp




sub_48B65D proc near
call    sub_49DBD1
jmp     sub_49DECF
sub_48B65D endp




sub_48B667 proc near

; FUNCTION CHUNK AT 0048B6CA SIZE 00000004 BYTES

push    ebx
push    ecx
push    edx
xor     edx, edx
mov     ds:dword_522B74, edx
test    al, al
jnz     short loc_48B6CA
xor     edx, edx

loc_48B678:
movsx   ecx, dx
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
xor     ecx, ecx
mov     cl, ds:byte_522B7C[eax]
add     eax, offset byte_522B7C
call    sub_49DB4D
movsx   eax, cx
mov     ebx, ds:dword_560C00[eax*4]
mov     ds:dword_55A554[eax*4], ebx
mov     eax, ebx
mov     bl, [ebx+6]
and     bl, 0DFh
mov     [eax+6], bl
movsx   ecx, cx
mov     eax, 80000000h
shr     eax, cl
or      ds:dword_522B74, eax
inc     edx
cmp     dx, 1
jl      short loc_48B678
sub_48B667 endp

; START OF FUNCTION CHUNK FOR sub_48B6CE
;   ADDITIONAL PARENT FUNCTION sub_48B667

loc_48B6CA:
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_48B6CE



sub_48B6CE proc near

; FUNCTION CHUNK AT 0048B6CA SIZE 00000004 BYTES

push    ebx
push    ecx
push    edx
xor     ebx, ebx

loc_48B6D3:
mov     edx, ds:dword_522B74
test    edx, edx
jz      short loc_48B6CA
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
test    eax, edx
jz      short loc_48B753
mov     edx, ds:dword_55A554[ebx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_48B742
jbe     short loc_48B709
cmp     eax, 60h ; '`'
jz      short loc_48B72A
jmp     short loc_48B742

loc_48B709:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
mov     ecx, eax
shl     ecx, 2
mov     eax, ds:dword_77E6F0
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
shl     ecx, 2
mov     eax, [eax]
jmp     short loc_48B73C

loc_48B72A:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0

loc_48B73C:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_48B742:
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_522B74, eax

loc_48B753:
inc     ebx
jmp     loc_48B6D3
sub_48B6CE endp




sub_48B759 proc near
push    ebx
push    ecx
push    edx
mov     bl, al
movsx   ecx, al
mov     eax, 80000000h
shr     eax, cl
test    ds:dword_522B74, eax
jz      short loc_48B7C6
movsx   edx, bl
mov     edx, ds:dword_55A554[edx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_48B7B4
jbe     short loc_48B790
cmp     eax, 60h ; '`'
jnz     short loc_48B7B4

loc_48B790:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6F0
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
shl     ecx, 2
mov     eax, [eax]
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_48B7B4:
movsx   ecx, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_522B74, eax

loc_48B7C6:
pop     edx
pop     ecx
pop     ebx
retn
sub_48B759 endp




sub_48B7CA proc near
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ah, ds:byte_77E7D4
mov     ds:byte_77EA5E, ah
mov     ds:byte_77EA5F, al
xor     dl, dl
mov     byte ptr ds:dword_77EA5A+3, dl
mov     dh, 0FFh
mov     ds:byte_77EA61, dh
mov     ds:byte_77EA60, dh
pop     edx
retn
sub_48B7CA endp




sub_48B7FB proc near
push    edx
mov     dl, [eax+0Dh]
test    dl, dl
ja      short loc_48B80D
mov     byte ptr [eax+548h], 0
inc     byte ptr [eax+0Dh]

loc_48B80D:
pop     edx
retn
sub_48B7FB endp




sub_48B80F proc near
push    edx
mov     dl, [eax+0Dh]
test    dl, dl
jbe     short loc_48B81E
cmp     dl, 1
jz      short loc_48B82E
pop     edx
retn

loc_48B81E:
mov     byte ptr [eax+548h], 0Dh
inc     byte ptr [eax+0Dh]
mov     byte ptr [eax+0Eh], 0
pop     edx
retn

loc_48B82E:
inc     byte ptr [eax+0Eh]
sub     dword ptr [eax+530h], 50000h
cmp     byte ptr [eax+0Eh], 1Eh
jnz     short loc_48B849
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0

loc_48B849:
pop     edx
retn
sub_48B80F endp




sub_48B84B proc near
push    edx
mov     dl, [eax+0Dh]
test    dl, dl
jbe     short loc_48B85A
cmp     dl, 1
jz      short loc_48B866
pop     edx
retn

loc_48B85A:
mov     byte ptr [eax+548h], 0Ch
inc     byte ptr [eax+0Dh]
pop     edx
retn

loc_48B866:
add     word ptr [eax+532h], 5
pop     edx
retn
sub_48B84B endp




sub_48B870 proc near
push    edx
mov     dl, [eax+0Dh]
test    dl, dl
jnz     short loc_48B88E
mov     byte ptr [eax+548h], 80h
inc     byte ptr [eax+0Dh]
mov     [eax+168h], dl
mov     [eax+169h], dl

loc_48B88E:
pop     edx
retn
sub_48B870 endp




sub_48B890 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+9]
sar     edx, 18h
call    ds:funcs_48B89A[edx*4]
lea     edx, [ecx+538h]
lea     eax, [ecx+528h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
pop     edx
pop     ecx
retn
sub_48B890 endp




sub_48B8C0 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     short loc_48B92B
cmp     ds:byte_77E7D4, 0Bh
jnz     short loc_48B8FD
mov     eax, 2
call    sub_48B7CA
mov     eax, 0FE000000h
mov     ds:dword_5F888C, eax
mov     ds:dword_5F8894, eax
mov     ds:dword_5F8890, 0FEFF0000h
jmp     short loc_48B922

loc_48B8FD:
xor     eax, eax
call    sub_48B7CA
mov     ds:dword_5F888C, 0C000000h
mov     ds:dword_5F8894, 14000000h
mov     ds:dword_5F8890, 0FFFF0000h

loc_48B922:
mov     word ptr [edx+542h], 800h

loc_48B92B:
cmp     dword ptr [ecx+10h], 0Ah
jnz     short loc_48B939
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+0Dh], 0

loc_48B939:
pop     edx
pop     ecx
retn
sub_48B8C0 endp




sub_48B93C proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48B965
cmp     ds:byte_77E7D4, 0Bh
jnz     short loc_48B955
mov     eax, 6
jmp     short loc_48B95A

loc_48B955:
mov     eax, 1

loc_48B95A:
call    sub_48B7CA
mov     eax, [edx+24h]
or      byte ptr [eax], 2

loc_48B965:
cmp     dword ptr [edx+10h], 5
jnz     short loc_48B999
call    sub_4DE13B
test    eax, eax
jz      short loc_48B999
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+0Ch], 5
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 2
mov     word ptr [eax+1Ch], 85h
mov     word ptr [eax+1Eh], 0FE92h
mov     word ptr [eax+20h], 0FF38h

loc_48B999:
cmp     dword ptr [edx+10h], 72h ; 'r'
jnz     short loc_48B9A6
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 1

loc_48B9A6:
cmp     dword ptr [edx+10h], 0ACh
jnz     short loc_48B9B6
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 0

loc_48B9B6:
pop     edx
retn
sub_48B93C endp




sub_48B9B8 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     short loc_48B9EC
cmp     ds:byte_77E7D4, 0Bh
jnz     short loc_48B9D7
mov     eax, 2
jmp     short loc_48B9D9

loc_48B9D7:
xor     eax, eax

loc_48B9D9:
call    sub_48B7CA
mov     eax, [ecx+24h]
and     byte ptr [eax], 0FDh
mov     byte ptr [edx+0Ch], 3
mov     byte ptr [edx+0Dh], 0

loc_48B9EC:
cmp     dword ptr [ecx+10h], 1
jnz     short loc_48B9F5
and     byte ptr [edx], 0FEh

loc_48B9F5:
cmp     dword ptr [ecx+10h], 14h
jnz     short loc_48B9FE
or      byte ptr [edx], 1

loc_48B9FE:
pop     edx
pop     ecx
retn
sub_48B9B8 endp




sub_48BA01 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     short loc_48BA5E
mov     eax, [eax+28h]
or      byte ptr [eax], 2
mov     eax, [ecx+2Ch]
or      byte ptr [eax], 2
cmp     ds:byte_77E7D4, 0Bh
jnz     short loc_48BA2C
mov     eax, 7
jmp     short loc_48BA31

loc_48BA2C:
mov     eax, 2

loc_48BA31:
call    sub_48B7CA
mov     dword ptr [edx+528h], 0
mov     dword ptr [edx+530h], 0
mov     dword ptr [edx+52Ch], 0
mov     byte ptr [edx+0Dh], 0
mov     al, [edx+0Dh]
mov     [edx+0Ch], al

loc_48BA5E:
cmp     dword ptr [ecx+10h], 0Fh
jnz     short loc_48BA70
mov     eax, [ecx+28h]
inc     byte ptr [eax+9]
mov     eax, [ecx+2Ch]
inc     byte ptr [eax+9]

loc_48BA70:
cmp     dword ptr [ecx+10h], 46h ; 'F'
jnz     short loc_48BA7E
mov     byte ptr [edx+0Ch], 2
mov     byte ptr [edx+0Dh], 0

loc_48BA7E:
pop     edx
pop     ecx
retn
sub_48BA01 endp




sub_48BA81 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
cmp     ds:byte_77E7D4, 0Bh
jnz     short loc_48BAB6
mov     ds:dword_77E6B4, offset unk_522D24
jmp     short loc_48BAC0

loc_48BAB6:
mov     ds:dword_77E6B4, offset unk_522C24

loc_48BAC0:
mov     dword ptr [ecx+0A4h], offset unk_522E34
xor     edx, edx

loc_48BACC:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_522BE8
call    sub_49DB4D
inc     edx
cmp     edx, 0Ah
jl      short loc_48BACC
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
xor     esi, esi
mov     ds:dword_5F8370, esi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48BA81 endp




sub_48BB01 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_48BB11
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_48BB11:
pop     edx
retn
sub_48BB01 endp

db 8Dh, 40h, 0
jpt_48BB42 dd offset loc_48BB49 ; jump table for switch statement
dd offset loc_48BB8A
dd offset loc_48BBA4
dd offset loc_48BBB3
dd offset loc_48BBBD
dd offset loc_48BBE8



sub_48BB2E proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_48BB42      ; jumptable 0048BB42 default case
and     eax, 0FFh
jmp     jpt_48BB42[eax*4] ; switch jump

loc_48BB49:             ; jumptable 0048BB42 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_48BB42      ; jumptable 0048BB42 default case
mov     eax, 10h
call    sub_4D9040
call    sub_4D8ED6
cmp     ds:byte_77E7D4, 0Bh
jnz     short loc_48BB7A
mov     eax, 250013h
jmp     short loc_48BB7F

loc_48BB7A:
mov     eax, 24000Eh

loc_48BB7F:
call    sub_4D8E42

loc_48BB84:
inc     byte ptr [edx+4]
pop     edx
pop     ecx
retn

loc_48BB8A:             ; jumptable 0048BB42 case 1
call    sub_4D8ECC
test    eax, eax
jz      def_48BB42      ; jumptable 0048BB42 default case
inc     byte ptr [edx+4]
mov     dword ptr [edx+0Ch], 17h
pop     edx
pop     ecx
retn

loc_48BBA4:             ; jumptable 0048BB42 case 2
mov     ecx, [edx+0Ch]
dec     ecx
mov     [edx+0Ch], ecx
jnz     def_48BB42      ; jumptable 0048BB42 default case
jmp     short loc_48BB84

loc_48BBB3:             ; jumptable 0048BB42 case 3
mov     eax, edx
call    sub_48BA81
inc     byte ptr [edx+4]

loc_48BBBD:             ; jumptable 0048BB42 case 4
cmp     ds:word_6E23D6, 0
jnz     short loc_48BBE8 ; jumptable 0048BB42 case 5
mov     eax, [edx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_48BBDB
call    sub_47EBCB
test    eax, eax
jz      short loc_48BBE8 ; jumptable 0048BB42 case 5

loc_48BBDB:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]

loc_48BBE8:             ; jumptable 0048BB42 case 5
mov     eax, edx
call    sub_48BB01
mov     eax, offset byte_5F8364
call    sub_48B890
mov     eax, ds:dword_77EA56+3
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_48BC3C
mov     eax, ds:dword_5F888C
sar     eax, 10h
mov     word ptr ds:dword_77EA4E+2, ax
mov     eax, ds:dword_5F8890
sar     eax, 10h
mov     word ptr ds:dword_77EA52, ax
mov     eax, ds:dword_5F8894
sar     eax, 10h
mov     word ptr ds:dword_77EA52+2, ax
mov     ax, word ptr ds:dword_5F88A4+2
mov     word ptr ds:dword_77EA5A, ax

loc_48BC3C:
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 5
jnz     def_48BB42      ; jumptable 0048BB42 default case
cmp     ds:word_6E23D6, 0
jnz     def_48BB42      ; jumptable 0048BB42 default case
mov     ch, ds:byte_77EAB8
test    ch, ch
jnz     def_48BB42      ; jumptable 0048BB42 default case
cmp     ds:byte_77E7D4, 0Bh
jnz     short loc_48BCB6
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 14h
mov     ds:byte_77EA5F, ch
mov     word ptr ds:dword_77EA4E+2, 100h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 8D00h
xor     eax, eax
mov     word ptr ds:dword_77EA5A, ax
xor     cl, cl
mov     byte ptr ds:dword_77EA5A+3, cl
jmp     short loc_48BCF4

loc_48BCB6:
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 0Eh
mov     ds:byte_77EA5F, ch
mov     word ptr ds:dword_77EA4E+2, 0F395h
mov     word ptr ds:dword_77EA52, 0FE7Fh
mov     word ptr ds:dword_77EA52+2, 0B00h
mov     word ptr ds:dword_77EA5A, 400h
mov     byte ptr ds:dword_77EA5A+3, ch

loc_48BCF4:
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
mov     byte ptr [edx], 0
call    sub_4D8EB1
or      ds:byte_5F8364, 1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_48BB42:             ; jumptable 0048BB42 default case
pop     edx
pop     ecx
retn
sub_48BB2E endp




sub_48BD1E proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48BD24[edx*4]
pop     edx
retn
sub_48BD1E endp

align 2
jpt_48BD56 dd offset loc_48BD5D ; jump table for switch statement
dd offset loc_48BD7B
dd offset loc_48BDFA
dd offset loc_48BE0B
dd offset loc_48BE21



sub_48BD42 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_48BD56      ; jumptable 0048BD56 default case
xor     edx, edx
mov     dl, al
jmp     jpt_48BD56[edx*4] ; switch jump

loc_48BD5D:             ; jumptable 0048BD56 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_48BD56      ; jumptable 0048BD56 default case
mov     eax, 10h
call    sub_4D9040
jmp     short loc_48BDF5

loc_48BD7B:             ; jumptable 0048BD56 case 1
cmp     ds:byte_77EAB8, 0
jnz     def_48BD56      ; jumptable 0048BD56 default case
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
mov     ds:dword_77E6B4, offset unk_522E90
mov     dword ptr [ecx+0A4h], offset unk_523030
mov     eax, offset unk_522E68
call    sub_49DB4D
mov     eax, offset unk_522E7C
call    sub_49DB4D

loc_48BDEB:
call    sub_49DBD1
call    sub_49DECF

loc_48BDF5:
inc     byte ptr [ecx+5]
jmp     short def_48BD56 ; jumptable 0048BD56 default case

loc_48BDFA:             ; jumptable 0048BD56 case 2
cmp     ds:word_6E23D6, 0
jnz     short loc_48BE58
inc     al
mov     [ecx+5], al
jmp     short loc_48BE58

loc_48BE0B:             ; jumptable 0048BD56 case 3
mov     eax, 240016h
call    sub_4D8E42
mov     eax, 1
call    sub_49E0D7
jmp     short loc_48BDEB

loc_48BE21:             ; jumptable 0048BD56 case 4
call    sub_4D8ECC
test    eax, eax
jz      short loc_48BE58
cmp     ds:word_6E23D6, 0
jnz     short loc_48BE58
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_522EE0
mov     dword ptr [ecx+0A4h], offset unk_523040
and     byte ptr [ecx+0Ah], 3
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

loc_48BE58:
call    sub_49DBD1
call    sub_49DECF

def_48BD56:             ; jumptable 0048BD56 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_48BE6F
or      byte ptr [ecx+0Ah], 1

loc_48BE6F:
pop     edx
pop     ecx
pop     ebx
retn
sub_48BD42 endp




sub_48BE73 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jnz     short loc_48BE84
mov     eax, 14h
jmp     short loc_48BEBE

loc_48BE84:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
cmp     byte ptr [edx+0Ah], 3
jnz     short loc_48BEA3
mov     eax, [edx+28h]
mov     byte ptr [eax+8], 2
mov     eax, 8
jmp     short loc_48BEBE

loc_48BEA3:
call    sub_47EBCB
test    eax, eax
jz      short loc_48BECA
test    byte ptr [edx+0Ah], 2
jz      short loc_48BEB9
mov     eax, [edx+28h]
mov     byte ptr [eax+8], 2

loc_48BEB9:
mov     eax, 8

loc_48BEBE:
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_48BECA:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_48BE73 endp




sub_48BED7 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     ds:word_6E23D6, 0
jnz     loc_48BF74
mov     al, [eax+5]
cmp     al, 1
jb      short loc_48BEFB
jbe     short loc_48BF0C
cmp     al, 2
jz      short loc_48BF35
jmp     loc_48BF74

loc_48BEFB:
test    al, al
jnz     short loc_48BF74
mov     eax, [ecx+24h]
call    sub_4DE336

loc_48BF07:
inc     byte ptr [ecx+5]
jmp     short loc_48BF74

loc_48BF0C:
call    sub_4D8EB1
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 3
jmp     short loc_48BF07

loc_48BF35:
mov     edx, 0Ah
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, 528h
call    sub_47E8B8
mov     eax, 0Dh
call    sub_47EEAE
call    sub_47E829
mov     eax, 20h ; ' '
call    sub_4D9040
mov     byte ptr [ecx], 0
mov     eax, 2
call    sub_49E0D7

loc_48BF74:
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_48BF84
call    sub_49DBD1
call    sub_49DECF

loc_48BF84:
pop     edx
pop     ecx
retn
sub_48BED7 endp




sub_48BF87 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 39h ; '9'
jb      short loc_48BFCB
jbe     loc_48C00F
cmp     edx, 55h ; 'U'
jb      short loc_48BFB9
jbe     loc_48C00F
cmp     edx, 8Dh
jb      loc_48C01F
jbe     short loc_48BFF9
cmp     edx, 0CDh
jz      short loc_48C002
pop     edx
retn

loc_48BFB9:
cmp     edx, 43h ; 'C'
jb      loc_48C01F
jbe     short loc_48BFF0
cmp     edx, 48h ; 'H'

loc_48BFC7:
jz      short loc_48C00F
pop     edx
retn

loc_48BFCB:
cmp     edx, 9
jb      short loc_48BFDE
jbe     short loc_48C00F
cmp     edx, 19h
jb      short loc_48C01F
jbe     short loc_48C00F
cmp     edx, 29h ; ')'
jmp     short loc_48BFC7

loc_48BFDE:
cmp     edx, 5
jnz     short loc_48C01F
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 1

loc_48BFEA:
mov     byte ptr [eax+0Ah], 0
pop     edx
retn

loc_48BFF0:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 2
jmp     short loc_48BFEA

loc_48BFF9:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 3
jmp     short loc_48BFEA

loc_48C002:
and     byte ptr [eax+0Ah], 1
mov     eax, [eax+28h]
mov     byte ptr [eax+8], 2
pop     edx
retn

loc_48C00F:
mov     edx, [eax+24h]
add     edx, 14h
mov     eax, 90h
call    sub_4D8BC3

loc_48C01F:
pop     edx

locret_48C020:
retn
sub_48BF87 endp




sub_48C021 proc near
cmp     dword ptr [eax+10h], 1Eh
jnz     short locret_48C032
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

locret_48C032:
retn
sub_48C021 endp




sub_48C033 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48C048
mov     edx, [eax+24h]
inc     byte ptr [edx+0Dh]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0

loc_48C048:
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_48C055
mov     eax, [eax+24h]
mov     byte ptr [eax+0Dh], 0

loc_48C055:
pop     edx
retn
sub_48C033 endp

jpt_48C085 dd offset loc_48C0D3 ; jump table for switch statement
dd offset loc_48C08C
dd offset loc_48C09F
dd offset loc_48C0B0
dd offset loc_48C0C3
dd offset loc_48C0E0
dd offset def_48C085



sub_48C073 proc near
push    ecx
push    edx
mov     dl, [eax+0Dh]
cmp     dl, 6           ; switch 7 cases
ja      def_48C085      ; jumptable 0048C085 default case, case 6
xor     ecx, ecx
mov     cl, dl
jmp     jpt_48C085[ecx*4] ; switch jump

loc_48C08C:             ; jumptable 0048C085 case 1
mov     dh, ds:byte_560BE5
cmp     dh, 1
jnz     short def_48C085 ; jumptable 0048C085 default case, case 6
add     dl, dh
mov     [eax+0Dh], dl

def_48C085:             ; jumptable 0048C085 default case, case 6
pop     edx
pop     ecx
retn

loc_48C09F:             ; jumptable 0048C085 case 2
mov     byte ptr [eax+548h], 0Ch
inc     byte ptr [eax+0Dh]
mov     byte ptr [eax+0Eh], 0
pop     edx
pop     ecx
retn

loc_48C0B0:             ; jumptable 0048C085 case 3
inc     byte ptr [eax+0Eh]
add     word ptr [eax+532h], 5
cmp     byte ptr [eax+0Eh], 3Ch ; '<'
jnz     short def_48C085 ; jumptable 0048C085 default case, case 6
jmp     short loc_48C0DA

loc_48C0C3:             ; jumptable 0048C085 case 4
add     dword ptr [eax+528h], 64h ; 'd'
mov     word ptr [eax+542h], 700h

loc_48C0D3:             ; jumptable 0048C085 case 0
mov     byte ptr [eax+548h], 30h ; '0'

loc_48C0DA:
inc     byte ptr [eax+0Dh]
pop     edx
pop     ecx
retn

loc_48C0E0:             ; jumptable 0048C085 case 5
cmp     ds:byte_560BE5, 5
jnz     short def_48C085 ; jumptable 0048C085 default case, case 6
mov     word ptr [eax+542h], 800h
jmp     short loc_48C0DA
sub_48C073 endp




sub_48C0F4 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+9]
sar     edx, 18h
call    ds:funcs_48C0FE[edx*4]
lea     edx, [ecx+538h]
lea     eax, [ecx+528h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
pop     edx
pop     ecx
retn
sub_48C0F4 endp




sub_48C124 proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_48C14B
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8890, edx
mov     ds:dword_5F8894, 0FE3E0000h
mov     word ptr ds:dword_5F88A4+2, 800h

loc_48C14B:
pop     edx

locret_48C14C:
retn
sub_48C124 endp




sub_48C14D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_5230B8
mov     dword ptr [ecx+0A4h], offset unk_5231E4
xor     edx, edx

loc_48C173:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_523068
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
inc     edx
cmp     edx, 2
jl      short loc_48C173
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
xor     ecx, ecx
mov     ds:dword_5F8370, ecx
pop     edx
pop     ecx
pop     ebx
retn
sub_48C14D endp




sub_48C1AB proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_48C1BB
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_48C1BB:
pop     edx
retn
sub_48C1AB endp




sub_48C1BD proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 3
jb      short loc_48C1E9
jbe     short loc_48C223
cmp     al, 0Ah
jb      short loc_48C1E1
jbe     loc_48C269
cmp     al, 0Bh
jz      loc_48C293
pop     edx
pop     ecx
pop     ebx
retn

loc_48C1E1:
cmp     al, 4
jz      short loc_48C240
pop     edx
pop     ecx
pop     ebx
retn

loc_48C1E9:
cmp     al, 1
jnb     short loc_48C21A
test    al, al
jnz     loc_48C2C2
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_48C2C2
mov     eax, edx
call    sub_48C14D
call    sub_49DBD1
inc     byte ptr [edx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_48C21A:
inc     al
mov     [edx+4], al
pop     edx
pop     ecx
pop     ebx
retn

loc_48C223:
mov     ecx, [edx+0A4h]
cmp     byte ptr [ecx], 0FFh
jnz     short loc_48C233
inc     al
mov     [edx+4], al

loc_48C233:
call    sub_47EBCB
test    eax, eax
jz      short loc_48C240
mov     byte ptr [edx+4], 0Ah

loc_48C240:
mov     eax, edx
call    sub_48C1AB
mov     eax, offset byte_5F8364
call    sub_48C0F4
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 4
jnz     short loc_48C2C2
mov     byte ptr [edx+4], 0Bh
pop     edx
pop     ecx
pop     ebx
retn

loc_48C269:
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
mov     bh, 1
mov     byte ptr ds:dword_77E954, bh
call    sub_42A66D
mov     eax, 52Bh
call    sub_47E8B8
add     [edx+4], bh
pop     edx
pop     ecx
pop     ebx
retn

loc_48C293:
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42AC90
mov     byte ptr ds:dword_77E5EC+1, 1
mov     byte ptr [edx], 0
mov     eax, 16h
call    sub_47EEAE
call    sub_47E829

loc_48C2C2:
pop     edx
pop     ecx
pop     ebx
retn
sub_48C1BD endp




sub_48C2C6 proc near
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA5E, 6
mov     ds:byte_77EA5F, 0
mov     word ptr ds:dword_77EA4E+2, ax
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA52+2, bx
mov     word ptr ds:dword_77EA5A, cx
xor     ah, ah
mov     byte ptr ds:dword_77EA5A+3, ah
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 2
retn
sub_48C2C6 endp




sub_48C30D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_48C3A4
mov     eax, offset byte_6DD9CC
xor     edx, edx
jmp     short loc_48C338

loc_48C32D:
inc     edx
add     eax, 4A0h
cmp     edx, 10h
jge     short loc_48C343

loc_48C338:
cmp     byte ptr [eax], 0
jz      short loc_48C32D
cmp     byte ptr [eax+2], 5
jnz     short loc_48C32D

loc_48C343:
mov     [ecx+24h], eax
mov     al, ds:byte_5F8421
or      al, 20h
mov     ds:byte_5F8421, al
mov     ah, al
and     ah, 0BFh
mov     ds:byte_5F8421, ah
mov     dl, 1
mov     byte ptr ds:word_77E7FC, dl
mov     byte ptr ds:word_77E7FC+1, 6
xor     bl, bl
mov     ds:byte_77E7FE, bl
mov     eax, 318h
call    sub_47E8B8
mov     eax, 319h
call    sub_47E8B8
mov     eax, 31Ah
call    sub_47E8B8
mov     ds:byte_55A5A4, bl
add     [ecx+4], dl
mov     [ecx+5], bl
mov     [ecx+6], bl
mov     [ecx+7], bl

loc_48C3A4:
pop     edx
pop     ecx
pop     ebx
retn
sub_48C30D endp

db 8Bh, 0C0h
jpt_48C41E dd offset loc_48C425 ; jump table for switch statement
dd offset loc_48C436
dd offset loc_48C487
dd offset loc_48C4A3
dd offset loc_48C4CB
dd offset loc_48C4F5
dd offset loc_48C5B1
dd offset loc_48C5D1
dd offset loc_48C6A6
dd offset loc_48C7A9
dd offset loc_48C802
dd offset loc_48C81E
dd offset loc_48C8BD
dd offset loc_48C8E3
dd offset loc_48C908
dd offset loc_48C91C
dd offset loc_48C930
dd offset loc_48C949
dd offset loc_48C975



sub_48C3F6 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     esi, eax
mov     ebp, offset byte_5F8364
mov     ecx, offset unk_77E5F4
mov     edi, [eax+24h]
mov     al, [eax+5]
cmp     al, 12h         ; switch 19 cases
ja      def_48C41E      ; jumptable 0048C41E default case
and     eax, 0FFh
jmp     jpt_48C41E[eax*4] ; switch jump

loc_48C425:             ; jumptable 0048C41E case 0
mov     edx, 15h

loc_48C42A:
xor     eax, eax

loc_48C42C:
call    sub_4A0E24
jmp     loc_48C816

loc_48C436:             ; jumptable 0048C41E case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_48C41E      ; jumptable 0048C41E default case
mov     eax, [edi+12h]
sar     eax, 10h
mov     [esp+2Ch+var_2C], eax
mov     eax, [edi+14h]
sar     eax, 10h
sub     eax, 80h
mov     [esp+2Ch+var_28], eax
mov     eax, [edi+16h]
sar     eax, 10h
sub     eax, 102h
mov     [esp+2Ch+var_24], eax
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, esp
call    sub_42AAD8
mov     ch, 1
mov     ds:byte_55A5A4, ch
add     [esi+5], ch
jmp     def_48C41E      ; jumptable 0048C41E default case

loc_48C487:             ; jumptable 0048C41E case 2
call    sub_42ABA2
test    eax, eax
jnz     def_48C41E      ; jumptable 0048C41E default case
mov     byte ptr [edi+0Eh], 8
mov     byte ptr [edi+0Dh], 1
mov     edx, 16h
jmp     short loc_48C42C

loc_48C4A3:             ; jumptable 0048C41E case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_48C41E      ; jumptable 0048C41E default case
xor     ecx, ecx
mov     ebx, 9E1h
mov     edx, 0FFFFFD00h
mov     eax, 200h
call    sub_48C2C6
jmp     loc_48C816

loc_48C4CB:             ; jumptable 0048C41E case 4
mov     ch, byte ptr ds:dword_77EA5A+2
cmp     ch, 2
jnz     def_48C41E      ; jumptable 0048C41E default case
mov     al, ch
inc     al
mov     byte ptr ds:dword_77EA5A+2, al
call    sub_42A9A2
xor     ah, ah
mov     ds:byte_55A5A4, ah
jmp     loc_48C816

loc_48C4F5:             ; jumptable 0048C41E case 5
mov     bh, byte ptr ds:dword_77EA5A+2
test    bh, bh
jnz     def_48C41E      ; jumptable 0048C41E default case
call    sub_4DDF54
mov     edi, eax
test    eax, eax
jz      short loc_48C55E
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+4], 5
mov     [eax+3], bh
mov     [eax+0Eh], bh
mov     word ptr [eax+14h], 2C2h
mov     word ptr [eax+16h], 0FCFFh
mov     word ptr [eax+18h], 7D0h
mov     word ptr [eax+56h], 800h
mov     eax, [eax+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+1Ch], eax
mov     eax, [edi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+20h], eax
mov     eax, [edi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+24h], eax
mov     [esi+24h], edi

loc_48C55E:
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, [edi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+10h], eax
mov     eax, [edi+14h]
sar     eax, 10h
sub     eax, 84h
shl     eax, 10h
mov     [ecx+14h], eax
mov     eax, [edi+16h]
sar     eax, 10h
add     eax, 120h
shl     eax, 10h
mov     [ecx+18h], eax
mov     dword ptr [ecx+40h], 8000000h
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0FFE00000h
jmp     loc_48C816

loc_48C5B1:             ; jumptable 0048C41E case 6
cmp     ds:word_6E23D6, 0
jnz     def_48C41E      ; jumptable 0048C41E default case
mov     byte ptr [edi+0Eh], 8
mov     byte ptr [edi+0Dh], 1
mov     edx, 6Ch ; 'l'
jmp     loc_48C42A

loc_48C5D1:             ; jumptable 0048C41E case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_48C41E      ; jumptable 0048C41E default case
mov     ds:dword_77E604, 9300000h
mov     dword ptr ds:unk_77E608, 0F8EB0000h
mov     ds:dword_77E60C, 6DB0000h
mov     ds:dword_77E634, 6100000h
mov     ds:dword_77E638, 1540000h
mov     ds:dword_77E63C, 0FFE00000h
xor     edx, edx
jmp     short loc_48C624

loc_48C61E:
inc     edx
cmp     edx, 2
jge     short loc_48C688

loc_48C624:
call    sub_4DE043
test    eax, eax
jz      short loc_48C61E
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 29h ; ')'
imul    ecx, edx, 35Ch
add     ecx, 1DDFh
mov     [eax+14h], cx
mov     word ptr [eax+16h], 0FCFFh
mov     word ptr [eax+18h], 0FC18h
mov     word ptr [eax+56h], 400h
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
mov     word ptr [eax+44h], 500h
mov     ecx, edx
mov     [esi+ecx*4+28h], eax
jmp     short loc_48C61E

loc_48C688:
mov     byte ptr [edi+0Eh], 0
mov     byte ptr [edi+0Dh], 1
xor     ebx, ebx
mov     edx, 1
mov     eax, 18Eh
call    sub_4D89E4
jmp     loc_48C816

loc_48C6A6:             ; jumptable 0048C41E case 8
mov     eax, [esi+28h]
cmp     word ptr [eax+14h], 0BB8h
jge     def_48C41E      ; jumptable 0048C41E default case
mov     ds:dword_77E604, 2FA0000h
mov     dword ptr ds:unk_77E608, 0FC720000h
mov     ds:dword_77E60C, 8C60000h
mov     ds:dword_77E634, 8D00000h
mov     ds:dword_77E638, 340000h
mov     ds:dword_77E63C, 0FFE00000h
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     ax, [edi+14h]
sub     eax, 64h ; 'd'
mov     word ptr ds:dword_5F889A+2, ax
mov     ax, word ptr ds:dword_5F837A
mov     word ptr ds:dword_5F889E, ax
mov     ax, [edi+18h]
add     eax, 64h ; 'd'
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
lea     edx, [edi+14h]
mov     eax, offset byte_5F8364
add     eax, 538h
call    sub_4DDDB4
mov     word ptr ds:dword_5F88A4+2, ax
xor     ecx, ecx
mov     ds:word_5F88A8, bx
mov     ds:byte_5F88AC, 30h ; '0'
xor     ebx, ebx
mov     edx, 1
mov     eax, 18Fh
call    sub_4D89E4
mov     eax, [esi+24h]
mov     [eax+56h], cx
jmp     short loc_48C816

loc_48C7A9:             ; jumptable 0048C41E case 9
mov     ebp, [esi+28h]
mov     ebx, [edi+54h]
sar     ebx, 10h
add     ebp, 14h
lea     eax, [edi+14h]
mov     [esp+2Ch+var_1C], eax
mov     ecx, 40h ; '@'
mov     edx, ebp
call    sub_4DE552
cmp     word ptr [edi+56h], 200h
jge     short loc_48C7F8
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     ecx, 40h ; '@'
mov     edx, ebp
mov     eax, [esp+2Ch+var_1C]
call    sub_4DE552
test    ax, ax
jle     def_48C41E      ; jumptable 0048C41E default case
add     [edi+56h], ax
jmp     def_48C41E      ; jumptable 0048C41E default case

loc_48C7F8:
mov     edx, 6Dh ; 'm'
jmp     loc_48C42A

loc_48C802:             ; jumptable 0048C41E case 10
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_48C41E      ; jumptable 0048C41E default case

loc_48C80F:
mov     dword ptr [esi+10h], 10h

loc_48C816:
inc     byte ptr [esi+5]
jmp     def_48C41E      ; jumptable 0048C41E default case

loc_48C81E:             ; jumptable 0048C41E case 11
mov     eax, [esi+10h]
test    eax, eax
jz      short loc_48C878
lea     edx, [eax-1]
mov     [esi+10h], edx
fild    ds:dword_77E604
fadd    ds:dbl_50A2D4
call    __CHP
fistp   ds:dword_77E604
fild    ds:dword_77E60C
fadd    ds:dbl_50A2DC
call    __CHP
fistp   ds:dword_77E60C
fild    ds:dword_77E634
fadd    ds:dbl_50A2E4
call    __CHP
fistp   ds:dword_77E634
add     word ptr ds:dword_77E638+2, 2

loc_48C878:
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [edi+14h]
mov     ecx, 40h ; '@'
call    sub_4DE552
add     [edi+56h], ax
cmp     dword ptr [esi+10h], 0
jnz     def_48C41E      ; jumptable 0048C41E default case
test    ax, ax
jnz     def_48C41E      ; jumptable 0048C41E default case
mov     edx, 6Eh ; 'n'
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ebp+548h], 32h ; '2'
jmp     loc_48C816

loc_48C8BD:             ; jumptable 0048C41E case 12
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_48C41E      ; jumptable 0048C41E default case
mov     edx, 6Fh ; 'o'

loc_48C8CF:
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [edi+0Eh], 8
mov     byte ptr [edi+0Dh], 1
jmp     loc_48C816

loc_48C8E3:             ; jumptable 0048C41E case 13
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_48C41E      ; jumptable 0048C41E default case
mov     edx, 70h ; 'p'

loc_48C8F5:
xor     eax, eax
call    sub_4A0E24
mov     ds:byte_5F88AC, 32h ; '2'
jmp     loc_48C816

loc_48C908:             ; jumptable 0048C41E case 14
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_48C41E      ; jumptable 0048C41E default case
mov     edx, 71h ; 'q'
jmp     short loc_48C8CF

loc_48C91C:             ; jumptable 0048C41E case 15
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_48C41E      ; jumptable 0048C41E default case
mov     edx, 72h ; 'r'
jmp     short loc_48C8F5

loc_48C930:             ; jumptable 0048C41E case 16
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_48C41E      ; jumptable 0048C41E default case
mov     ds:byte_5F88AC, 0Dh
jmp     loc_48C80F

loc_48C949:             ; jumptable 0048C41E case 17
mov     ebx, [esi+10h]
test    ebx, ebx
jz      short loc_48C961
lea     edi, [ebx-1]
mov     [esi+10h], edi
add     word ptr ds:dword_5F88A4+2, 80h
jmp     short def_48C41E ; jumptable 0048C41E default case

loc_48C961:
mov     dh, 1
mov     ds:byte_5F88AC, dh
mov     dword ptr [esi+10h], 1Eh
add     [esi+5], dh
jmp     short def_48C41E ; jumptable 0048C41E default case

loc_48C975:             ; jumptable 0048C41E case 18
mov     edx, [esi+10h]
test    edx, edx
jz      short loc_48C9BB
lea     ecx, [edx-1]
mov     [esi+10h], ecx
or      ds:byte_5F8421, 10h
sub     word ptr ds:dword_5F889A+2, 14h
add     word ptr ds:dword_5F889E+2, 14h
mov     eax, ds:dword_5F889A
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F888C, eax
mov     eax, ds:dword_5F889E
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8894, eax
jmp     short def_48C41E ; jumptable 0048C41E default case

loc_48C9BB:
inc     byte ptr [esi+4]
mov     byte ptr [esi+5], 0

def_48C41E:             ; jumptable 0048C41E default case
call    sub_47EBCB
test    eax, eax
jz      short loc_48C9F9
cmp     byte ptr ds:dword_77EA5A+2, 0
jnz     short loc_48C9F9
cmp     ds:word_6E23D6, 0
jnz     short loc_48C9F9
mov     bl, [esi+4]
cmp     bl, 1
jnz     short loc_48C9F9
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
add     [esi+4], bl
mov     byte ptr [esi+5], 0

loc_48C9F9:
add     esp, 14h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48C3F6 endp




sub_48CA03 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_48CA19
cmp     al, 1
jz      short loc_48CA3A
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_48CA19:
mov     ecx, 800h
mov     ebx, 1940h
mov     edx, 0FFFFFCFFh
mov     eax, 1A9h
call    sub_48C2C6
inc     byte ptr [esi+5]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_48CA3A:
cmp     byte ptr ds:dword_77EA5A+2, 2
jnz     short loc_48CA70
cmp     ds:byte_55A5A4, 0
jz      short loc_48CA51
call    sub_42A9A2

loc_48CA51:
inc     byte ptr ds:dword_77EA5A+2
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     byte ptr [esi], 0

loc_48CA70:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48CA03 endp




sub_48CA75 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48CA7B[edx*4]
pop     edx
retn
sub_48CA75 endp




sub_48CA84 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      loc_48CB36
call    sub_4DDF54
test    eax, eax
jz      short loc_48CAF8
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 24h ; '$'
mov     byte ptr [eax+4], 4
mov     byte ptr [eax+3], 0
mov     word ptr [eax+14h], 1884h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 5CDFh
mov     word ptr [eax+56h], 0
mov     ebx, [eax+12h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+1Ch], ebx
mov     ebx, [eax+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+20h], ebx
mov     ebx, [eax+16h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+24h], ebx
mov     byte ptr [eax+0Eh], 0
mov     [edx+24h], eax

loc_48CAF8:
mov     ah, [ecx+0BDh]
or      ah, 20h
mov     [ecx+0BDh], ah
mov     bl, ah
and     bl, 0BFh
mov     [ecx+0BDh], bl
xor     ebx, ebx
mov     ds:word_57096E, bx
mov     ds:word_57096A, bx
xor     bh, bh
mov     ds:byte_55A5A8, bh
inc     byte ptr [edx+4]
mov     [edx+5], bh
mov     [edx+6], bh
mov     [edx+7], bh

loc_48CB36:
pop     edx
pop     ecx
pop     ebx
retn
sub_48CA84 endp

align 4
jpt_48CB6E dd offset loc_48CB75 ; jump table for switch statement
dd offset loc_48CB89
dd offset loc_48CBCE
dd offset loc_48CC47
dd offset loc_48CD2A



sub_48CB50 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     eax, offset byte_5F8364
mov     dl, [ecx+5]
cmp     dl, 4           ; switch 5 cases
ja      def_48CB6E      ; jumptable 0048CB6E default case
and     edx, 0FFh
jmp     jpt_48CB6E[edx*4] ; switch jump

loc_48CB75:             ; jumptable 0048CB6E case 0
mov     edx, 6Dh ; 'm'
xor     eax, eax
call    sub_4A0E24

loc_48CB81:
inc     byte ptr [ecx+5]
jmp     def_48CB6E      ; jumptable 0048CB6E default case

loc_48CB89:             ; jumptable 0048CB6E case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_48CB6E      ; jumptable 0048CB6E default case
mov     eax, [ecx+24h]
mov     word ptr [eax+44h], 320h
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 2
cmp     word ptr ds:dword_5F83B8+2, 800h
jge     short loc_48CBC0
mov     ax, ds:word_5F848E
jmp     short loc_48CBC6

loc_48CBC0:
mov     ax, ds:word_5F848C

loc_48CBC6:
mov     ds:word_57096A, ax
jmp     short loc_48CB81

loc_48CBCE:             ; jumptable 0048CB6E case 2
mov     edx, [ecx+24h]
cmp     word ptr [edx+18h], 4588h
jge     short loc_48CBDF
mov     word ptr [edx+44h], 0

loc_48CBDF:
xor     edx, edx
mov     dx, [eax+128h]
xor     ebx, ebx
mov     bx, ds:word_57096A
test    ebx, edx
jz      short loc_48CC08
cmp     word ptr [eax+56h], 800h
jg      short loc_48CC1B
xor     esi, esi
mov     ds:word_57096A, si
jmp     short loc_48CC29

loc_48CC08:
cmp     word ptr [eax+56h], 800h
jl      short loc_48CC1B
xor     edi, edi
mov     ds:word_57096A, di
jmp     short loc_48CC29

loc_48CC1B:
cmp     ds:word_57096A, 0
jnz     def_48CB6E      ; jumptable 0048CB6E default case

loc_48CC29:
mov     eax, [ecx+24h]
cmp     word ptr [eax+44h], 0
jnz     def_48CB6E      ; jumptable 0048CB6E default case
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 0
jmp     loc_48CB81

loc_48CC47:             ; jumptable 0048CB6E case 3
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 1884h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 407Eh
mov     ds:dword_5F888C, 18840000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 407E0000h
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, di
mov     ds:byte_5F88AC, 30h ; '0'
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+24h]
mov     word ptr [eax+18h], 413Ch
mov     eax, [ecx+24h]
mov     dword ptr [eax+24h], 413C0000h
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E604, 19A10000h
mov     dword ptr ds:unk_77E608, 0FF740000h
mov     ds:dword_77E60C, 41B20000h
mov     ds:dword_77E634, 0A8E0000h
mov     ds:dword_77E638, 400000h
xor     esi, esi
mov     ds:dword_77E63C, esi
mov     edx, 68h ; 'h'
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+5]

loc_48CD2A:             ; jumptable 0048CB6E case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_48CB6E ; jumptable 0048CB6E default case
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

def_48CB6E:             ; jumptable 0048CB6E default case
call    sub_47EBCB
test    eax, eax
jz      short loc_48CD5F
cmp     byte ptr [ecx+4], 1
jnz     short loc_48CD5F
xor     eax, eax
call    sub_4A0E75
mov     ah, 1
mov     ds:byte_55A5A8, ah
add     [ecx+4], ah
mov     byte ptr [ecx+5], 0

loc_48CD5F:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48CB50 endp




sub_48CD65 proc near
push    ecx
push    edx
push    edi
mov     edx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_48CD7D
cmp     al, 1
jz      loc_48CE25
pop     edi
pop     edx
pop     ecx
retn

loc_48CD7D:
cmp     ds:byte_55A5A8, 0
jz      short loc_48CDF2
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 1884h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 407Eh
mov     ds:dword_5F888C, 18840000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 407E0000h
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, di
mov     eax, [edx+24h]
mov     word ptr [eax+18h], 413Ch
mov     eax, [edx+24h]
mov     dword ptr [eax+24h], 413C0000h

loc_48CDF2:
mov     eax, [edx+24h]
mov     byte ptr [eax+0Ch], 69h ; 'i'
mov     eax, [edx+24h]
mov     byte ptr [eax+0Dh], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+8], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+4], 0
xor     ecx, ecx
mov     ds:word_57096E, cx
mov     ds:word_57096A, cx
inc     byte ptr [edx+5]
pop     edi
pop     edx
pop     ecx
retn

loc_48CE25:
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     byte ptr [edx], 0
pop     edi
pop     edx
pop     ecx
retn
sub_48CD65 endp




sub_48CE42 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48CE48[edx*4]
pop     edx
retn
sub_48CE42 endp




sub_48CE51 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48CE57[edx*4]
pop     edx
retn
sub_48CE51 endp




sub_48CE60 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+6]
cmp     al, 1
jb      short loc_48CE84
jbe     loc_48CF44
cmp     al, 2
jz      loc_48CF64
jmp     loc_48CF98

loc_48CE84:
test    al, al
jnz     loc_48CF98
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      loc_48CF98
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_523250
mov     dword ptr [ecx+0A4h], offset unk_523240
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     ds:dword_5F888C, 0FF000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 0FEDD0000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
xor     edx, edx
mov     word ptr ds:dword_5F88A4, dx
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, dx
mov     ds:byte_5F88AC, 30h ; '0'
inc     byte ptr [ecx+6]
mov     dword ptr [ecx+0Ch], 0Ah
xor     edx, edx
mov     eax, 1
call    sub_4A0E24
jmp     short loc_48CF98

loc_48CF44:
mov     ebx, [ecx+0Ch]
dec     ebx
mov     [ecx+0Ch], ebx
test    ebx, ebx
jge     short loc_48CF59
mov     ds:byte_5F88AC, 32h ; '2'
inc     byte ptr [ecx+6]

loc_48CF59:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short loc_48CF98
jmp     short loc_48CF87

loc_48CF64:
cmp     ds:byte_5F840B, 0
jge     short loc_48CF7E
call    rand_
and     eax, 1Fh
add     eax, 10h
mov     [ecx+0Ch], eax
dec     byte ptr [ecx+6]

loc_48CF7E:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short loc_48CF98

loc_48CF87:
mov     byte ptr ds:dword_77E954, 1
mov     byte ptr [ecx], 0
mov     eax, edx
call    sub_4B565A

loc_48CF98:
cmp     byte ptr [ecx+6], 0
jbe     short loc_48CFAE
mov     edx, [ecx+0A4h]
cmp     byte ptr [edx], 0FFh
jz      short loc_48CFAE
mov     eax, ecx
call    dword ptr [edx+4]

loc_48CFAE:
pop     edx
pop     ecx
pop     ebx
retn
sub_48CE60 endp




sub_48CFB2 proc near
call    sub_49DBD1
jmp     sub_49DECF
sub_48CFB2 endp




sub_48CFBC proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48CFC2[edx*4]
pop     edx
retn
sub_48CFBC endp

align 4
jpt_48D013 dd offset loc_48D01A ; jump table for switch statement
dd offset loc_48D26A
dd offset loc_48D27B
dd offset loc_48D29C
dd offset loc_48D2BC
dd offset loc_48D374
dd offset loc_48D384
dd offset loc_48D39C
dd offset loc_48D3EB
dd offset loc_48D48F
dd offset loc_48D4C2
dd offset loc_48D4D9



sub_48CFFC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 0Bh         ; switch 12 cases
ja      def_48D013      ; jumptable 0048D013 default case
xor     edx, edx
mov     dl, al
jmp     jpt_48D013[edx*4] ; switch jump

loc_48D01A:             ; jumptable 0048D013 case 0
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_523324
mov     dword ptr [ecx+0A4h], offset unk_523470
mov     dword ptr [ecx+0Ch], 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_48D013      ; jumptable 0048D013 default case
call    sub_4DE043
mov     ds:dword_55A5AC, eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 11h
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+5], 0
mov     word ptr [eax+14h], 0E501h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 21DFh
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
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     bl, 3
lea     esi, [eax+0DCh]

loc_48D0BD:
call    sub_4DDF54
test    eax, eax
jz      loc_48D187
movsx   edi, bl
mov     edx, edi
shl     edx, 2
add     edx, edi
mov     bh, ds:byte_5232D4[edx*4]
mov     [eax], bh
mov     bh, ds:byte_5232D6[edx*4]
mov     [eax+2], bh
mov     bh, ds:byte_5232D7[edx*4]
mov     [eax+3], bh
mov     bh, ds:byte_5232D8[edx*4]
mov     [eax+4], bh
mov     bh, ds:byte_5232D9[edx*4]
mov     [eax+5], bh
movzx   di, ds:byte_5232DB[edx*4]
shl     edi, 4
mov     [eax+56h], di
mov     bh, ds:byte_5232DC[edx*4]
mov     [eax+0Ch], bh
mov     bh, ds:byte_5232DD[edx*4]
mov     [eax+0Dh], bh
mov     bh, ds:byte_5232DE[edx*4]
mov     [eax+0Eh], bh
mov     bh, ds:byte_5232DF[edx*4]
mov     [eax+0Fh], bh
mov     di, ds:word_5232E0[edx*4]
mov     [eax+14h], di
mov     di, ds:word_5232E2[edx*4]
mov     [eax+16h], di
mov     dx, ds:word_5232E4[edx*4]
mov     [eax+18h], dx
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
mov     [esi], eax

loc_48D187:
add     esi, 4
dec     bl
test    bl, bl
jge     loc_48D0BD
mov     bl, 3

loc_48D196:
call    sub_4DDF54
test    eax, eax
jz      loc_48D25E
movsx   esi, bl
mov     edx, esi
shl     edx, 2
add     edx, esi
mov     bh, ds:byte_523284[edx*4]
mov     [eax], bh
mov     bh, ds:byte_523286[edx*4]
mov     [eax+2], bh
mov     bh, ds:byte_523287[edx*4]
mov     [eax+3], bh
mov     bh, ds:byte_523288[edx*4]
mov     [eax+4], bh
mov     bh, ds:byte_523289[edx*4]
mov     [eax+5], bh
movzx   si, ds:byte_52328B[edx*4]
shl     esi, 4
mov     [eax+56h], si
mov     bh, ds:byte_52328C[edx*4]
mov     [eax+0Ch], bh
mov     bh, ds:byte_52328D[edx*4]
mov     [eax+0Dh], bh
mov     bh, ds:byte_52328E[edx*4]
mov     [eax+0Eh], bh
mov     bh, ds:byte_52328F[edx*4]
mov     [eax+0Fh], bh
mov     si, ds:word_523290[edx*4]
mov     [eax+14h], si
mov     si, ds:word_523292[edx*4]
mov     [eax+16h], si
mov     dx, ds:word_523294[edx*4]
mov     [eax+18h], dx
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

loc_48D25E:
dec     bl
test    bl, bl
jge     loc_48D196
jmp     short loc_48D294

loc_48D26A:             ; jumptable 0048D013 case 1
mov     edx, 1
mov     eax, 8
call    sub_4DC979
jmp     short loc_48D294

loc_48D27B:             ; jumptable 0048D013 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_48D013      ; jumptable 0048D013 default case
mov     edx, 6

loc_48D28D:
xor     eax, eax
call    sub_4A0E24

loc_48D294:
inc     byte ptr [ecx+5]
jmp     def_48D013      ; jumptable 0048D013 default case

loc_48D29C:             ; jumptable 0048D013 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_48D013      ; jumptable 0048D013 default case
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     edx, 9
jmp     short loc_48D28D

loc_48D2BC:             ; jumptable 0048D013 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_48D013      ; jumptable 0048D013 default case
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     loc_48D368
inc     al
mov     [ecx+5], al
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
xor     ebx, ebx
mov     word ptr ds:dword_5F88A4, bx
mov     word ptr ds:dword_5F88A4+2, bx
mov     ds:word_5F88A8, bx
xor     ah, ah
mov     ds:byte_5F88AC, ah
jmp     def_48D013      ; jumptable 0048D013 default case

loc_48D368:
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
jmp     def_48D013      ; jumptable 0048D013 default case

loc_48D374:             ; jumptable 0048D013 case 5
inc     al
mov     [ecx+5], al
inc     byte ptr ds:dword_5F836C+1
jmp     def_48D013      ; jumptable 0048D013 default case

loc_48D384:             ; jumptable 0048D013 case 6
or      ds:byte_5F8421, 20h
mov     ax, ds:word_5F8488
mov     ds:word_57096A, ax
jmp     loc_48D294

loc_48D39C:             ; jumptable 0048D013 case 7
cmp     word ptr ds:dword_5F837A+2, 1C20h
jge     def_48D013      ; jumptable 0048D013 default case
xor     edx, edx
mov     ds:word_57096A, dx
mov     eax, ds:dword_55A5AC
or      byte ptr [eax], 6
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_523370
mov     dword ptr [ecx+0A4h], offset unk_523480
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+6], 0F0h
jmp     loc_48D294

loc_48D3EB:             ; jumptable 0048D013 case 8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_48D013      ; jumptable 0048D013 default case
mov     edx, 0Ah
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+5]
mov     edx, 0FFFFE774h
mov     word ptr ds:dword_5F8376+2, dx
mov     word ptr ds:dword_5F889A+2, dx
mov     esi, 0FFFFFFFFh
mov     word ptr ds:dword_5F837A, si
mov     word ptr ds:dword_5F889E, si
mov     eax, 18C0h
mov     word ptr ds:dword_5F837A+2, ax
mov     word ptr ds:dword_5F889E+2, ax
mov     edx, 0E7740000h
mov     ds:dword_5F8380, edx
mov     ds:dword_5F888C, edx
mov     esi, 0FFFF0000h
mov     ds:dword_5F8384, esi
mov     ds:dword_5F8890, esi
mov     ebp, 18C00000h
mov     ds:dword_5F8388, ebp
mov     ds:dword_5F8894, ebp
mov     word ptr ds:dword_5F88A4, 400h
xor     esi, esi
mov     word ptr ds:dword_5F88A4+2, si
mov     ds:word_5F88A8, si
jmp     def_48D013      ; jumptable 0048D013 default case

loc_48D48F:             ; jumptable 0048D013 case 9
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_48D013      ; jumptable 0048D013 default case
mov     eax, ds:dword_55A5AC
mov     byte ptr [eax+0Ch], 0
mov     edx, ds:dword_55A5AC
add     edx, 14h
mov     eax, 17Bh
call    sub_4D8BC3
inc     byte ptr [ecx+5]
call    sub_49DF64
jmp     short def_48D013 ; jumptable 0048D013 default case

loc_48D4C2:             ; jumptable 0048D013 case 10
mov     dl, [ecx+6]
test    dl, dl
jnz     short loc_48D4D0
inc     al
mov     [ecx+5], al
jmp     short def_48D013 ; jumptable 0048D013 default case

loc_48D4D0:
mov     dh, dl
dec     dh
mov     [ecx+6], dh
jmp     short def_48D013 ; jumptable 0048D013 default case

loc_48D4D9:             ; jumptable 0048D013 case 11
mov     edx, ds:dword_55A5AC
add     edx, 14h
mov     eax, 17Dh
call    sub_4D8BC3
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     edx, 2
mov     eax, 8
call    sub_4DC979
mov     byte ptr ds:dword_77E954, 1
call    sub_42AC90
mov     byte ptr [ecx], 0

def_48D013:             ; jumptable 0048D013 default case
call    sub_49DBD1
call    sub_49DECF
call    sub_47EBCB
test    eax, eax
jz      short loc_48D55B
cmp     byte ptr [ecx+5], 1
jbe     short loc_48D55B
mov     edx, ds:dword_55A5AC
add     edx, 14h
mov     eax, 188h
call    sub_4D8BC3
xor     eax, eax
call    sub_4A0E75
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     byte ptr [ecx+4], 2
mov     byte ptr [ecx+5], 0

loc_48D55B:
pop     ebp

loc_48D55C:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48CFFC endp




sub_48D562 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_48D61F
mov     bl, [edx+5]
test    bl, bl
jnz     short loc_48D58D
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+5]
jmp     loc_48D61F

loc_48D58D:
cmp     bl, 1
jnz     short loc_48D5F3
mov     byte ptr ds:dword_77EA5A+2, bl
mov     ds:byte_77EA5E, 3
mov     ds:byte_77EA5F, bl
mov     word ptr ds:dword_77EA4E+2, 0F360h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 600h
mov     word ptr ds:dword_77EA5A, 0C00h
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
mov     byte ptr ds:word_77E7FC+1, 3
mov     ah, bl
mov     ds:byte_77E7FE, bl
add     [edx+5], ah
jmp     short loc_48D61F

loc_48D5F3:
mov     cl, byte ptr ds:dword_77EA5A+2
cmp     cl, 2
jnz     short loc_48D61F
cmp     ds:word_6E23D6, 0
jnz     short loc_48D61F
mov     ch, cl
inc     ch
mov     byte ptr ds:dword_77EA5A+2, ch
mov     byte ptr [edx], 0
mov     eax, offset byte_5F8364
call    sub_4B565A

loc_48D61F:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_48D562 endp




sub_48D62D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     eax, ds:dword_55A5AC
lea     edx, [eax+0DCh]
mov     ebx, 0FFFFE774h
mov     word ptr ds:dword_5F8376+2, bx
mov     word ptr ds:dword_5F889A+2, bx
mov     edi, 0FFFFFFFFh
mov     word ptr ds:dword_5F837A, di
mov     word ptr ds:dword_5F889E, di
mov     esi, 18C0h
mov     word ptr ds:dword_5F837A+2, si
mov     word ptr ds:dword_5F889E+2, si
mov     ebx, 0E7740000h
mov     ds:dword_5F8380, ebx
mov     ds:dword_5F888C, ebx
mov     edi, 0FFFF0000h
mov     ds:dword_5F8384, edi
mov     ds:dword_5F8890, edi
mov     ebx, 18C00000h
mov     ds:dword_5F8388, ebx
mov     ds:dword_5F8894, ebx
mov     word ptr ds:dword_5F88A4, 400h
xor     esi, esi
mov     word ptr ds:dword_5F88A4+2, si
mov     ds:word_5F88A8, si
or      byte ptr [eax], 6
mov     eax, ds:dword_55A5AC
mov     byte ptr [eax+9], 3
mov     eax, ds:dword_55A5AC
mov     byte ptr [eax+0Ch], 0
mov     eax, ds:dword_55A5AC
mov     word ptr [eax+14h], 0E526h
mov     eax, ds:dword_55A5AC
mov     word ptr [eax+16h], 0FFFFh
mov     eax, ds:dword_55A5AC
mov     word ptr [eax+18h], 149Bh
mov     eax, ds:dword_55A5AC
mov     ebx, [eax+12h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+1Ch], ebx
mov     eax, ds:dword_55A5AC
mov     ebx, [eax+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+20h], ebx
mov     eax, ds:dword_55A5AC
mov     ebx, [eax+16h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+24h], ebx
mov     eax, ds:dword_55A5AC
mov     [eax+54h], si
mov     eax, ds:dword_55A5AC
mov     word ptr [eax+56h], 5Bh ; '['
mov     eax, ds:dword_55A5AC
mov     [eax+58h], si
mov     byte ptr [edx+20h], 2
mov     eax, ds:dword_55A5AC
mov     word ptr [eax+44h], 140h
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     edx, 2
mov     eax, 8
call    sub_4DC979
mov     byte ptr [ecx], 0
jmp     loc_48D55C
sub_48D62D endp




sub_48D77A proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_48D842
mov     eax, offset byte_6DD9CC
xor     edx, edx
jmp     short loc_48D7A4

loc_48D799:
inc     edx
add     eax, 4A0h
cmp     edx, 10h
jge     short loc_48D7B5

loc_48D7A4:
cmp     byte ptr [eax], 0
jz      short loc_48D799
cmp     byte ptr [eax+2], 9
jnz     short loc_48D799
cmp     byte ptr [eax+4], 2
jnz     short loc_48D799

loc_48D7B5:
mov     [ecx+24h], eax
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
mov     ax, word ptr ds:dword_5F83B8+2
mov     word ptr ds:dword_5F88A4+2, ax
mov     ds:word_5F88A8, dx
xor     al, al
mov     ds:byte_55A5B0, al
inc     byte ptr [ecx+4]
mov     [ecx+5], al
mov     [ecx+6], al
mov     [ecx+7], al

loc_48D842:
pop     edx
pop     ecx
retn
sub_48D77A endp




sub_48D845 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_48D864
jbe     loc_48D943
cmp     al, 2
jz      loc_48D97C
jmp     loc_48D9DC

loc_48D864:
test    al, al
jnz     loc_48D9DC
mov     edx, 70h ; 'p'
xor     eax, eax
call    sub_4A0E24
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 8
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0F4EEh
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 0AD77h
mov     ds:dword_5F888C, 0F4EE0000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 0AD770000h
xor     edx, edx
mov     word ptr ds:dword_5F88A4, dx
mov     edx, [ecx+24h]
add     edx, 14h
mov     eax, offset byte_5F8364
add     eax, 538h
call    sub_4DDDB4
mov     word ptr ds:dword_5F88A4+2, ax
xor     ebx, ebx
mov     ds:word_5F88A8, bx
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E604, 0F6400000h
mov     dword ptr ds:unk_77E608, 0FF7C0000h
mov     ds:dword_77E60C, 0AEB90000h
mov     ds:dword_77E634, 8000000h
xor     ebx, ebx
mov     ds:dword_77E638, ebx
mov     ds:dword_77E63C, ebx
and     ds:byte_5F8364, 0FDh

loc_48D93B:
inc     byte ptr [ecx+5]
jmp     loc_48D9DC

loc_48D943:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_48D9DC
or      ds:byte_5F8364, 2
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 2
mov     eax, [ecx+24h]
mov     word ptr [eax+44h], 320h
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
jmp     short loc_48D93B

loc_48D97C:
mov     eax, [ecx+24h]
cmp     word ptr [eax+56h], 800h
jnz     short loc_48D9C0
or      ds:byte_5F8421, 10h
mov     edx, [ecx+24h]
add     edx, 14h
mov     eax, offset byte_5F8364
add     eax, 14h
call    sub_4DDDB4
mov     word ptr ds:dword_5F88A4+2, ax
mov     eax, [ecx+24h]
mov     edx, [eax+16h]
sar     edx, 10h
cmp     edx, 0FFFFC4DCh
jle     short loc_48D9CD
mov     word ptr [eax+56h], 0C00h
jmp     short loc_48D9CD

loc_48D9C0:
cmp     word ptr [eax+14h], 12Ch
jle     short loc_48D9CD
call    sub_4DE2F6

loc_48D9CD:
mov     eax, [ecx+24h]
mov     dl, [eax]
test    dl, dl
jnz     short loc_48D9DC
inc     byte ptr [ecx+4]
mov     [ecx+5], dl

loc_48D9DC:
call    sub_47EBCB
test    eax, eax
jz      short loc_48DA01
mov     bh, [ecx+4]
cmp     bh, 1
jnz     short loc_48DA01
mov     ds:byte_55A5B0, bh
xor     eax, eax
call    sub_4A0E75
add     [ecx+4], bh
mov     byte ptr [ecx+5], 0

loc_48DA01:
pop     edx
pop     ecx
pop     ebx
retn
sub_48D845 endp




sub_48DA05 proc near
push    edx
push    edi
mov     edx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_48DA1B
cmp     al, 1
jz      loc_48DA9E
pop     edi
pop     edx
retn

loc_48DA1B:
cmp     ds:byte_55A5B0, 0
jz      short loc_48DA98
or      ds:byte_5F8364, 2
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0F4EEh
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 0AD77h
mov     ds:dword_5F888C, 0F4EE0000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 0AD770000h
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, di
mov     eax, [edx+24h]
call    sub_4DE2F6
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D

loc_48DA98:
inc     byte ptr [edx+5]
pop     edi
pop     edx
retn

loc_48DA9E:
mov     eax, offset byte_5F8364
call    sub_4B565A
call    sub_47E829
mov     byte ptr [edx], 0
pop     edi
pop     edx
retn
sub_48DA05 endp




sub_48DAB3 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48DAB9[edx*4]
pop     edx
retn
sub_48DAB3 endp




sub_48DAC2 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48DAC8[edx*4]
pop     edx
retn
sub_48DAC2 endp




sub_48DAD1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_48DAE6
cmp     al, 1
jz      short loc_48DB2D
jmp     loc_48DB64

loc_48DAE6:
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_523514
mov     dword ptr [ecx+0A4h], offset unk_523560
mov     dword ptr [ecx+0Ch], 0
mov     eax, offset unk_5234B0
call    sub_49DB4D
mov     eax, offset unk_5234C4
call    sub_49DB4D
mov     eax, 10h
call    sub_4D9040
inc     byte ptr [ecx+5]

loc_48DB2D:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_48DB64
and     ds:byte_5F8364, 0FDh
mov     byte ptr ds:dword_5F836C, 3
xor     bl, bl
mov     byte ptr ds:dword_5F836C+1, bl
mov     [ecx+0Ah], bl
mov     eax, 240012h
call    sub_4D8E42
inc     byte ptr [ecx+4]
mov     [ecx+5], bl

loc_48DB64:
call    sub_49DBD1

loc_48DB69:
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_48DAD1 endp




sub_48DB72 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_48DB84
cmp     al, 1
jz      short loc_48DBB0
jmp     short loc_48DB69

loc_48DB84:
call    sub_49DBD1
call    sub_4D8ECC
test    eax, eax
jz      short loc_48DB69
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_523570
mov     dword ptr [ecx+0A4h], offset unk_523B50
inc     byte ptr [ecx+5]
jmp     short loc_48DB69

loc_48DBB0:
cmp     byte ptr [ecx+8], 0FFh
jz      short loc_48DBFF
mov     edx, [ecx+0A4h]
mov     eax, ecx
call    dword ptr [edx+4]
call    sub_47EBCB
test    eax, eax
jz      short loc_48DB64
test    byte ptr [ecx+0Ah], 80h
jnz     short loc_48DB64
mov     bl, ds:byte_77EAB8
test    bl, bl
jnz     short loc_48DB64
cmp     ds:word_6E23D6, 0
jnz     short loc_48DB64
or      byte ptr [ecx+0Ah], 1
xor     edx, edx
mov     eax, 1
call    sub_48DEB5
inc     byte ptr [ecx+4]
mov     [ecx+5], bl
jmp     loc_48DB64

loc_48DBFF:
add     [ecx+4], al
mov     byte ptr [ecx+5], 0
jmp     loc_48DB64
sub_48DB72 endp




sub_48DC0B proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_48DC1D
cmp     al, 1
jz      short loc_48DC3C
pop     edx
pop     ecx
retn

loc_48DC1D:
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
call    sub_4E1D8A
call    sub_4D8EB1
inc     byte ptr [ecx+5]
pop     edx
pop     ecx
retn

loc_48DC3C:
cmp     byte ptr ds:dword_77EA5A+2, 2
jnz     short loc_48DC6A
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     dl, 1
mov     byte ptr ds:dword_77E954, dl
call    sub_42A66D
call    sub_47E829
mov     byte ptr [ecx], 0
add     byte ptr ds:dword_77EA5A+2, dl

loc_48DC6A:
pop     edx
pop     ecx

locret_48DC6C:
retn
sub_48DC0B endp




sub_48DC6D proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48DCE2
mov     eax, [eax+24h]
mov     word ptr [eax+14h], 0AEh
mov     word ptr [eax+16h], 0FE76h
mov     word ptr [eax+18h], 0FEFBh
mov     dword ptr [eax+1Ch], 0AE0000h
mov     dword ptr [eax+20h], 0FE760000h
mov     dword ptr [eax+24h], 0FEFB0000h
mov     word ptr [eax+56h], 400h
mov     eax, [edx+28h]
mov     word ptr [eax+14h], 56h ; 'V'
mov     word ptr [eax+16h], 0FE23h
mov     word ptr [eax+18h], 0FEB5h
mov     dword ptr [eax+1Ch], offset unk_560000
mov     dword ptr [eax+20h], 0FE230000h
mov     dword ptr [eax+24h], 0FEB50000h
mov     word ptr [eax+56h], 400h
mov     edx, 2
xor     eax, eax
call    sub_48DEB5

loc_48DCE2:
pop     edx

locret_48DCE3:
retn
sub_48DC6D endp




sub_48DCE4 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48DD27
mov     eax, [eax+24h]
mov     word ptr [eax+14h], 84h
mov     word ptr [eax+16h], 0FE23h
mov     word ptr [eax+18h], 0FEFCh
mov     dword ptr [eax+1Ch], offset unk_840000
mov     dword ptr [eax+20h], 0FE230000h
mov     dword ptr [eax+24h], 0FEFC0000h
mov     word ptr [eax+56h], 5C7h
mov     eax, offset unk_5234D8
call    sub_49DB4D

loc_48DD27:
cmp     dword ptr [edx+10h], 5Ah ; 'Z'
jnz     short loc_48DD37
mov     eax, offset unk_523500
call    sub_49DB4D

loc_48DD37:
pop     edx

locret_48DD38:
retn
sub_48DCE4 endp




sub_48DD39 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48DD38
mov     eax, [eax+34h]
jmp     sub_4DE2F6
sub_48DD39 endp




sub_48DD47 proc near
cmp     dword ptr [eax+10h], 1Eh
jnz     short locret_48DD38
or      byte ptr [eax+0Ah], 80h
mov     eax, 0Ah
jmp     sub_49E0D7
sub_48DD47 endp




sub_48DD5B proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48DD78
mov     eax, offset unk_5234EC
call    sub_49DB4D
mov     eax, 2
call    sub_49E0D7

loc_48DD78:
cmp     ds:word_6E23D6, 0
jnz     short loc_48DD86
and     byte ptr [edx+0Ah], 7Fh

loc_48DD86:
pop     edx
retn
sub_48DD5B endp




sub_48DD88 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     loc_48DE2B
mov     eax, [eax+24h]
mov     word ptr [eax+14h], 30h ; '0'
mov     word ptr [eax+16h], 0FE23h
mov     word ptr [eax+18h], 0FEDEh
mov     dword ptr [eax+1Ch], 300000h
mov     dword ptr [eax+20h], 0FE230000h
mov     dword ptr [eax+24h], 0FEDE0000h
mov     word ptr [eax+56h], 4E3h
mov     eax, [edx+28h]
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FE83h
mov     word ptr [eax+18h], 0FF60h
mov     [eax+1Ch], ecx
mov     dword ptr [eax+20h], 0FE830000h
mov     dword ptr [eax+24h], 0FF600000h
mov     word ptr [eax+56h], 0C00h
mov     eax, [edx+2Ch]
mov     word ptr [eax+14h], 0FFEAh
mov     word ptr [eax+16h], 0FE23h
mov     word ptr [eax+18h], 0FEB4h
mov     dword ptr [eax+1Ch], 0FFEA0000h
mov     dword ptr [eax+20h], 0FE230000h
mov     dword ptr [eax+24h], 0FEB40000h
mov     word ptr [eax+56h], 7D0h
mov     eax, [edx+30h]
call    sub_4DE371

loc_48DE2B:
cmp     dword ptr [edx+10h], 82h
jnz     short loc_48DE64
mov     eax, [edx+28h]
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FE23h
mov     word ptr [eax+18h], 0FF86h
mov     dword ptr [eax+1Ch], 0
mov     dword ptr [eax+20h], 0FE230000h
mov     dword ptr [eax+24h], 0FF860000h
mov     word ptr [eax+56h], 0

loc_48DE64:
pop     edx
pop     ecx
retn
sub_48DD88 endp




sub_48DE67 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48DE7D
mov     edx, [eax+28h]
and     byte ptr [edx], 0FDh
mov     eax, [eax+2Ch]
mov     word ptr [eax+56h], 872h

loc_48DE7D:
pop     edx
retn
sub_48DE67 endp




sub_48DE7F proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48DE92
mov     edx, [eax+28h]
or      byte ptr [edx], 2
mov     eax, [eax+2Ch]
and     byte ptr [eax], 0FDh

loc_48DE92:
pop     edx
retn
sub_48DE7F endp




sub_48DE94 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48DEA1
mov     edx, [eax+28h]
and     byte ptr [edx], 0FDh

loc_48DEA1:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_48DEB3
xor     edx, edx
mov     eax, 2
call    sub_48DEB5

loc_48DEB3:
pop     edx
retn
sub_48DE94 endp




sub_48DEB5 proc near
push    ecx
mov     ecx, eax
mov     eax, offset dword_77EA48
cmp     ecx, 1
jb      short loc_48DECB
jbe     short loc_48DEE6
cmp     ecx, 2
jz      short loc_48DEF6
jmp     short loc_48DF0B

loc_48DECB:
test    ecx, ecx
jnz     short loc_48DF0B
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ch, 0FFh
mov     ds:byte_77EA61, ch
mov     ds:byte_77EA60, ch
jmp     short loc_48DF0B

loc_48DEE6:
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA61, 8
jmp     short loc_48DF04

loc_48DEF6:
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA61, 0Ah

loc_48DF04:
mov     ds:byte_77EA60, 2

loc_48DF0B:
mov     byte ptr [eax+16h], 0Dh
mov     [eax+17h], dl
mov     word ptr [eax+8], 708h
mov     word ptr [eax+0Ah], 0FF7Fh
mov     word ptr [eax+0Ch], 0FFD8h
mov     word ptr [eax+12h], 0
mov     byte ptr [eax+15h], 0
pop     ecx
retn
sub_48DEB5 endp




sub_48DF30 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48DF36[edx*4]
pop     edx
retn
sub_48DF30 endp

align 10h
jpt_48DF6A dd offset loc_48DF71 ; jump table for switch statement
dd offset loc_48DFD0
dd offset loc_48E001
dd offset loc_48E017
dd offset loc_48E05F



sub_48DF54 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_48DF6A      ; jumptable 0048DF6A default case
and     eax, 0FFh
jmp     jpt_48DF6A[eax*4] ; switch jump

loc_48DF71:             ; jumptable 0048DF6A case 0
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [esi+0Ch], 0
mov     byte ptr [esi+0Ah], 80h
mov     ds:dword_77E6B4, offset unk_523C78
mov     dword ptr [esi+0A4h], offset unk_523FB4
mov     eax, offset unk_523BC4
call    sub_49DB4D
mov     eax, [esi+24h]
mov     byte ptr [eax+9], 9
mov     byte ptr [eax+0Ah], 0
xor     edx, edx
xor     eax, eax
call    sub_48E3F9

loc_48DFC8:
inc     byte ptr [esi+5]
jmp     def_48DF6A      ; jumptable 0048DF6A default case

loc_48DFD0:             ; jumptable 0048DF6A case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_48DF6A      ; jumptable 0048DF6A default case
or      ds:byte_5F8364, 1
mov     byte ptr ds:dword_5F836C, 3
xor     ch, ch
mov     byte ptr ds:dword_5F836C+1, ch
or      ds:byte_5F8421, 10h
jmp     short loc_48DFC8

loc_48E001:             ; jumptable 0048DF6A case 2
mov     eax, 2
call    sub_49E0D7
mov     eax, 58h ; 'X'
call    sub_42BEB2
jmp     short loc_48DFC8

loc_48E017:             ; jumptable 0048DF6A case 3
cmp     ds:word_6E23D6, 0
jnz     short def_48DF6A ; jumptable 0048DF6A default case
call    sub_42C353
test    eax, eax
jnz     short def_48DF6A ; jumptable 0048DF6A default case
mov     eax, 24000Dh
call    sub_4D8E42
mov     eax, [esi+24h]
call    sub_4DE336
mov     eax, offset unk_523BC4
call    sub_49DB4D
mov     eax, offset unk_523BD8
call    sub_49DB4D
mov     eax, offset unk_523BEC
call    sub_49DB4D
jmp     loc_48DFC8

loc_48E05F:             ; jumptable 0048DF6A case 4
call    sub_4D8ECC
test    eax, eax
jz      short def_48DF6A ; jumptable 0048DF6A default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_523CC8
mov     dword ptr [esi+0A4h], offset unk_523FC4
and     byte ptr [esi+0Ah], 1
inc     byte ptr [esi+4]
mov     byte ptr [esi+5], 0

def_48DF6A:             ; jumptable 0048DF6A default case
xor     eax, eax
mov     al, ds:byte_52401C
mov     ecx, 2
mov     ebx, eax
mov     edx, eax
call    sub_48E47A
call    sub_47EBCB
test    eax, eax
jz      short loc_48E0AE
or      byte ptr [esi+0Ah], 1

loc_48E0AE:
call    sub_49DBD1
call    sub_49DECF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48DF54 endp




sub_48E0BD proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jnz     short loc_48E0CE
mov     eax, 14h
jmp     short loc_48E0ED

loc_48E0CE:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jnz     short loc_48E0E8
cmp     byte ptr [edx+0Ah], 1
jnz     short loc_48E0F9

loc_48E0E8:
mov     eax, 8

loc_48E0ED:
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_48E0F9:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_48E0BD endp

align 4
jpt_48E13A dd offset loc_48E141 ; jump table for switch statement
dd offset loc_48E164
dd offset loc_48E174
dd offset loc_48E19B



sub_48E118 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     ds:word_6E23D6, 0
jnz     def_48E13A      ; jumptable 0048E13A default case
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_48E13A      ; jumptable 0048E13A default case
and     eax, 0FFh
jmp     jpt_48E13A[eax*4] ; switch jump

loc_48E141:             ; jumptable 0048E13A case 0
call    sub_4D8EB1
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
mov     eax, 59h ; 'Y'
call    sub_42BEB2

loc_48E15F:
inc     byte ptr [ecx+5]
jmp     short def_48E13A ; jumptable 0048E13A default case

loc_48E164:             ; jumptable 0048E13A case 1
call    sub_42C353
test    eax, eax
jnz     short def_48E13A ; jumptable 0048E13A default case
call    sub_4E1D8A
jmp     short loc_48E15F

loc_48E174:             ; jumptable 0048E13A case 2
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 3
xor     dh, dh
mov     ds:byte_5F83DA, dh
jmp     short loc_48E15F

loc_48E19B:             ; jumptable 0048E13A case 3
mov     edx, 2
mov     eax, 1
call    sub_48E3F9
mov     byte ptr [ecx], 0

def_48E13A:             ; jumptable 0048E13A default case
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_48E1BD
call    sub_49DBD1
call    sub_49DECF

loc_48E1BD:
pop     edx
pop     ecx
retn
sub_48E118 endp




sub_48E1C0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     ds:byte_52401C, 0
jbe     short loc_48E1EA
xor     eax, eax
mov     al, ds:byte_52401C
mov     ecx, 2
mov     ebx, eax
mov     edx, eax
call    sub_48E47A
dec     ds:byte_52401C

loc_48E1EA:
cmp     dword ptr [esi+10h], 64h ; 'd'
jnz     short loc_48E1F7
mov     eax, [esi+24h]
mov     byte ptr [eax+0Dh], 0

loc_48E1F7:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48E1C0 endp




sub_48E1FC proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 28h ; '('
jb      short loc_48E20E
jbe     short loc_48E21F
cmp     edx, 32h ; '2'
jz      short loc_48E224
pop     edx
retn

loc_48E20E:
test    edx, edx
jnz     short loc_48E22B
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
jmp     short loc_48E227

loc_48E21F:
mov     eax, [eax+28h]
jmp     short loc_48E227

loc_48E224:
mov     eax, [eax+2Ch]

loc_48E227:
mov     byte ptr [eax+0Dh], 0

loc_48E22B:
pop     edx
retn
sub_48E1FC endp




sub_48E22D proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48E25A
mov     eax, [eax+24h]
call    sub_4DE336
mov     eax, [edx+28h]
call    sub_4DE336
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     edx, 2
xor     eax, eax
call    sub_48E3F9

loc_48E25A:
pop     edx
retn
sub_48E22D endp




sub_48E25C proc near
mov     eax, [eax+10h]
cmp     eax, 1Eh
jnz     short locret_48E2C0
call    sub_4DE13B
test    eax, eax
jz      short loc_48E292
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+0Ch], 5
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 2
mov     word ptr [eax+1Ch], 0EF98h
mov     word ptr [eax+1Eh], 0FE31h
mov     word ptr [eax+20h], 0EA11h

loc_48E292:
call    sub_4DE13B
test    eax, eax
jz      short locret_48E2C0
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+0Ch], 5
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 2
mov     word ptr [eax+1Ch], 0EF98h
mov     word ptr [eax+1Eh], 0FE31h
mov     word ptr [eax+20h], 0E9D0h

locret_48E2C0:
retn
sub_48E25C endp




sub_48E2C1 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48E2C0
mov     eax, offset unk_523C14
call    sub_49DB4D
mov     eax, offset unk_523C28
call    sub_49DB4D
mov     eax, offset unk_523C3C
call    sub_49DB4D
mov     eax, offset unk_523C50
call    sub_49DB4D
mov     eax, offset unk_523C64
jmp     sub_49DB4D
sub_48E2C1 endp




sub_48E2F9 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_48E339
mov     eax, [eax+28h]
call    sub_4DE336
mov     eax, [ecx+2Ch]
call    sub_4DE2F6
mov     eax, [ecx+30h]
call    sub_4DE2F6
mov     eax, [ecx+34h]
call    sub_4DE2F6
mov     eax, [ecx+38h]
call    sub_4DE2F6
xor     eax, eax
call    sub_48E3F9
mov     byte ptr [ecx+6], 0
jmp     short loc_48E33F

loc_48E339:
cmp     byte ptr [eax+6], 0
jnz     short loc_48E381

loc_48E33F:
mov     eax, offset unk_523BC4
call    sub_49DB4D
mov     eax, [ecx+24h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     eax, offset unk_523BD8
call    sub_49DB4D
mov     eax, [ecx+28h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     eax, offset unk_523BEC
call    sub_49DB4D
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
inc     byte ptr [ecx+6]

loc_48E381:
pop     edx
pop     ecx
retn
sub_48E2F9 endp




sub_48E384 proc near
cmp     dword ptr [eax+10h], 0Ah
jnz     short locret_48E391
mov     eax, [eax+28h]
mov     byte ptr [eax+0Dh], 0

locret_48E391:
retn
sub_48E384 endp




sub_48E392 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48E3AD
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 4

loc_48E3AD:
pop     edx
retn
sub_48E392 endp




sub_48E3AF proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 50h ; 'P'
jb      short loc_48E3C4
jbe     short loc_48E3D1
cmp     edx, 104h
jz      short loc_48E3DA
pop     edx
retn

loc_48E3C4:
test    edx, edx
jnz     short loc_48E3E5
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 6
jmp     short loc_48E3E1

loc_48E3D1:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 7
jmp     short loc_48E3E1

loc_48E3DA:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 8

loc_48E3E1:
mov     byte ptr [eax+0Ah], 0

loc_48E3E5:
pop     edx
retn
sub_48E3AF endp




sub_48E3E7 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48E3F8
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0

locret_48E3F8:
retn
sub_48E3E7 endp




sub_48E3F9 proc near
push    ebx
push    ecx
push    esi
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 0Bh
mov     ds:byte_77EA5F, dl
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     cl, 0FFh
mov     ds:byte_77EA61, cl
mov     ds:byte_77EA60, cl
test    eax, eax
jz      short loc_48E452
mov     word ptr ds:dword_77EA4E+2, 0A00h
mov     word ptr ds:dword_77EA52, 0FD9Eh
mov     word ptr ds:dword_77EA52+2, 0E000h
mov     word ptr ds:dword_77EA5A, 600h
pop     esi
pop     ecx
pop     ebx
retn

loc_48E452:
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
xor     bl, bl
mov     word ptr ds:dword_77EA52, bx
xor     ecx, ecx
mov     word ptr ds:dword_77EA52+2, cx
xor     esi, esi
mov     word ptr ds:dword_77EA5A, si
pop     esi
pop     ecx
pop     ebx
retn
sub_48E3F9 endp




sub_48E47A proc near

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
sub_48E47A endp




sub_48E50E proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48E514[edx*4]
pop     edx
retn
sub_48E50E endp

align 2
jpt_48E550 dd offset loc_48E557 ; jump table for switch statement
dd offset loc_48E564
dd offset loc_48E580
dd offset loc_48E5D8
dd offset loc_48E6D0
dd offset loc_48E72E



sub_48E536 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 5           ; switch 6 cases
ja      def_48E550      ; jumptable 0048E550 default case
and     eax, 0FFh
jmp     jpt_48E550[eax*4] ; switch jump

loc_48E557:             ; jumptable 0048E550 case 0
mov     eax, 10h
call    sub_4D9040
inc     byte ptr [ecx+5]

loc_48E564:             ; jumptable 0048E550 case 1
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      def_48E550      ; jumptable 0048E550 default case
mov     byte ptr [edx+8], 3
mov     byte ptr [edx+9], 0
jmp     loc_48E712

loc_48E580:             ; jumptable 0048E550 case 2
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     byte ptr [ecx+0Ah], 80h
mov     eax, 12h
call    sub_47E888
test    eax, eax
jnz     short loc_48E5B1
mov     byte ptr [ecx+0Bh], 0
mov     eax, 12h
call    sub_47E8B8
jmp     short loc_48E5B5

loc_48E5B1:
mov     byte ptr [ecx+0Bh], 1

loc_48E5B5:
mov     eax, 604h
call    sub_47EA91
mov     eax, offset unk_52402C
call    sub_49DB4D
mov     eax, 5
call    sub_48E9EF
jmp     loc_48E712

loc_48E5D8:             ; jumptable 0048E550 case 3
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 700h
mov     word ptr ds:dword_5F889E, 0FDA4h
mov     word ptr ds:dword_5F889E+2, 0FB56h
mov     ds:dword_5F888C, 7000000h
mov     ds:dword_5F8890, 0FDA40000h
mov     ds:dword_5F8894, 0FB560000h
xor     edx, edx
mov     word ptr ds:dword_5F88A4, dx
mov     word ptr ds:dword_5F88A4+2, dx
mov     ds:word_5F88A8, dx
xor     dh, dh
mov     ds:byte_5F88AC, dh
mov     ds:byte_5F83DA, 1
mov     ds:byte_5F83D8, dh
mov     eax, [ecx+24h]
mov     ds:dword_5F8424, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_48E6A6
mov     ds:dword_77E6B4, offset unk_5240CC
mov     dword ptr [ecx+0A4h], offset unk_524118
mov     eax, offset unk_524054
call    sub_49DB4D
mov     eax, offset unk_524068
call    sub_49DB4D
mov     eax, 65h ; 'e'
call    sub_42BEB2
jmp     short loc_48E6BA

loc_48E6A6:
mov     ds:dword_77E6B4, offset unk_524344
mov     dword ptr [ecx+0A4h], offset unk_524118

loc_48E6BA:
mov     eax, 2
call    sub_49E0D7
call    sub_49DBD1
call    sub_49DECF
jmp     short loc_48E712

loc_48E6D0:             ; jumptable 0048E550 case 4
call    sub_47EBCB
test    eax, eax
jz      short loc_48E6DD
or      byte ptr [ecx+0Ah], 1

loc_48E6DD:
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_48E719
cmp     ds:word_6E23D6, 0
jnz     def_48E550      ; jumptable 0048E550 default case
call    sub_42C353
test    eax, eax
jnz     def_48E550      ; jumptable 0048E550 default case
mov     eax, 240014h

loc_48E70D:
call    sub_4D8E42

loc_48E712:
inc     byte ptr [ecx+5]
pop     edx
pop     ecx
pop     ebx
retn

loc_48E719:
cmp     ds:word_6E23D6, 0
jnz     def_48E550      ; jumptable 0048E550 default case
mov     eax, 240015h
jmp     short loc_48E70D

loc_48E72E:             ; jumptable 0048E550 case 5
call    sub_47EBCB
test    eax, eax
jz      short loc_48E73B
or      byte ptr [ecx+0Ah], 1

loc_48E73B:
or      byte ptr [edx+0BDh], 20h
call    sub_49DBD1
call    sub_49DECF
call    sub_4D8ECC
test    eax, eax
jz      short def_48E550 ; jumptable 0048E550 default case
call    sub_49DFCA
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_48E776
mov     ds:dword_77E6B4, offset unk_524128
mov     dword ptr [ecx+0A4h], offset unk_524324
jmp     short loc_48E78A

loc_48E776:
mov     ds:dword_77E6B4, offset unk_524390
mov     dword ptr [ecx+0A4h], offset unk_5244FC

loc_48E78A:
and     byte ptr [ecx+0Ah], 7Fh
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

def_48E550:             ; jumptable 0048E550 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_48E536 endp




sub_48E7A1 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_47EBCB
test    eax, eax
jz      short loc_48E7B2
or      byte ptr [edx+0Ah], 1

loc_48E7B2:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_48E7DA
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     cl, [edx+0Ah]
test    cl, 1
jz      short loc_48E7E1
test    cl, 80h
jnz     short loc_48E7E1
mov     eax, 8
call    sub_49E0D7

loc_48E7DA:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_48E7E1:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_48E7A1 endp




sub_48E7EE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_48E806
jbe     short loc_48E835
cmp     al, 2
jz      short loc_48E86B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_48E806:
test    al, al
jnz     loc_48E8C4
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
call    sub_4D8EB1
test    byte ptr [ecx+0Ah], 1
jz      short loc_48E82D
call    sub_4E1D8A

loc_48E82D:
inc     byte ptr [ecx+5]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_48E835:
cmp     ds:byte_77EAB8, 0
jnz     loc_48E8C4
cmp     ds:word_6E23D6, 0
jnz     short loc_48E8C4
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     bl, 1
mov     byte ptr ds:dword_77E954, bl
call    sub_42A66D
add     [ecx+5], bl
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_48E86B:
mov     byte ptr ds:dword_77EA5A+2, al
mov     ds:byte_77EA5E, 0Bh
mov     ds:byte_77EA5F, al
mov     word ptr ds:dword_77EA4E+2, 3200h
mov     word ptr ds:dword_77EA52, 0FD9Eh
mov     esi, 400h
mov     word ptr ds:dword_77EA52+2, si
mov     word ptr ds:dword_77EA5A, si
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, al
and     ds:byte_5F8364, 0FCh
mov     ds:byte_5F83DA, bl
mov     [ecx], bl

loc_48E8C4:
pop     esi
pop     edx
pop     ecx
pop     ebx

locret_48E8C8:
retn
sub_48E7EE endp




sub_48E8C9 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48E8FD
and     ds:byte_5F8364, 0FDh
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     eax, [edx+30h]
call    sub_4DE2F6
mov     eax, offset unk_524040
call    sub_49DB4D
mov     eax, 3
call    sub_48E9EF

loc_48E8FD:
pop     edx
retn
sub_48E8C9 endp




sub_48E8FF proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_48E941
or      ds:byte_5F8364, 2
mov     eax, [eax+28h]
call    sub_4DE336
mov     eax, offset unk_52407C
call    sub_49DB4D
mov     eax, offset unk_524090
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 1
mov     eax, 5
call    sub_48E9EF
pop     edx
pop     ecx
retn

loc_48E941:
cmp     ecx, 5Ah ; 'Z'
jnz     short loc_48E95D
mov     eax, offset unk_5240A4
call    sub_49DB4D
mov     eax, offset unk_5240B8
call    sub_49DB4D
pop     edx
pop     ecx
retn

loc_48E95D:
cmp     ecx, 0FEh
jnz     short loc_48E978
mov     ah, [eax+0Ah]
or      ah, 80h
mov     [edx+0Ah], ah
mov     eax, 0Ah
call    sub_49E0D7

loc_48E978:
pop     edx
pop     ecx
retn
sub_48E8FF endp




sub_48E97B proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_48E9B5
or      ds:byte_5F8364, 2
mov     eax, offset unk_52407C
call    sub_49DB4D
mov     eax, offset unk_524090
call    sub_49DB4D
mov     edx, [edx+24h]
mov     byte ptr [edx+9], 1
mov     eax, 5
call    sub_48E9EF
pop     edx
pop     ecx
retn

loc_48E9B5:
cmp     ecx, 5Ah ; 'Z'
jnz     short loc_48E9D1
mov     eax, offset unk_5240A4
call    sub_49DB4D
mov     eax, offset unk_5240B8
call    sub_49DB4D
pop     edx
pop     ecx
retn

loc_48E9D1:
cmp     ecx, 0DDh
jnz     short loc_48E9EC
mov     ah, [eax+0Ah]
or      ah, 80h
mov     [edx+0Ah], ah
mov     eax, 0Ah
call    sub_49E0D7

loc_48E9EC:
pop     edx
pop     ecx
retn
sub_48E97B endp




sub_48E9EF proc near
push    ebx
push    edx
push    esi
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 0Dh
mov     ds:byte_77EA5F, al
mov     word ptr ds:dword_77EA4E+2, 700h
mov     word ptr ds:dword_77EA52, 0FDA4h
mov     word ptr ds:dword_77EA52+2, 0FB56h
xor     esi, esi
mov     word ptr ds:dword_77EA5A, si
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     esi
pop     edx
pop     ebx
retn
sub_48E9EF endp

byte_48EA43 db 48h
dd 0CFF9CFFh, 640000FEh, 0C8FD4400h, 0DC000000h
dd 0F6FF8800h, 4C0000FFh, 0FAFF38FFh, 82000000h
dd 0D4FF6A00h, 240000FEh, 24FE5CFFh, 380000FFh
dd 0D4FE70FFh, 0D70000FEh, 78FCE0FFh
db 3 dup(0)



sub_48EA83 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48EA89[edx*4]
pop     edx
retn
sub_48EA83 endp

db 90h
jpt_48EAC0 dd offset loc_48EAC7 ; jump table for switch statement
dd offset loc_48EB1C
dd offset loc_48EB4D
dd offset loc_48EB55
dd offset loc_48EB8C
dd offset loc_48EBBD



sub_48EAAB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 5           ; switch 6 cases
ja      def_48EAC0      ; jumptable 0048EAC0 default case
and     eax, 0FFh
jmp     jpt_48EAC0[eax*4] ; switch jump

loc_48EAC7:             ; jumptable 0048EAC0 case 0
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Ah], 80h
mov     ds:dword_77E6B4, offset unk_5245E0
mov     dword ptr [ecx+0A4h], offset unk_524A3C
mov     eax, 4
call    sub_48F194
mov     eax, 5Ah ; 'Z'
call    sub_42BEB2

loc_48EB14:
inc     byte ptr [ecx+5]
jmp     def_48EAC0      ; jumptable 0048EAC0 default case

loc_48EB1C:             ; jumptable 0048EAC0 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_48EAC0      ; jumptable 0048EAC0 default case
mov     byte ptr ds:dword_5F836C, 3
xor     dl, dl
mov     byte ptr ds:dword_5F836C+1, dl
and     ds:byte_5F8364, 0FCh
or      ds:byte_5F8421, 10h
jmp     short loc_48EB14

loc_48EB4D:             ; jumptable 0048EAC0 case 2
inc     byte ptr ds:dword_5F836C+1
jmp     short loc_48EB14

loc_48EB55:             ; jumptable 0048EAC0 case 3
call    sub_42C353
test    eax, eax
jnz     def_48EAC0      ; jumptable 0048EAC0 default case
mov     eax, offset unk_524518
call    sub_49DB4D
mov     eax, offset unk_52452C
call    sub_49DB4D
mov     eax, offset unk_524540
call    sub_49DB4D
mov     eax, 24000Ch
call    sub_4D8E42
jmp     short loc_48EB14

loc_48EB8C:             ; jumptable 0048EAC0 case 4
call    sub_4D8ECC
test    eax, eax
jz      short def_48EAC0 ; jumptable 0048EAC0 default case
mov     eax, 2
call    sub_49E0D7
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_524630
mov     dword ptr [ecx+0A4h], offset unk_524A4C
jmp     loc_48EB14

loc_48EBBD:             ; jumptable 0048EAC0 case 5
cmp     ds:word_6E23D6, 0
jnz     short def_48EAC0 ; jumptable 0048EAC0 default case
and     byte ptr [ecx+0Ah], 1
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

def_48EAC0:             ; jumptable 0048EAC0 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_48EBE7
or      byte ptr [ecx+0Ah], 1

loc_48EBE7:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_48EAAB endp




sub_48EBF5 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jnz     short loc_48EC0E
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]
jmp     short loc_48EC52

