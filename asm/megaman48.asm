loc_46EFC6:
mov     eax, edx
call    sub_4DFC52
mov     eax, edx
call    sub_4DF795
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_46EF88 endp




sub_46EFD9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46F047
or      byte ptr [ecx], 2
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+56h], 400h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
inc     byte ptr [ecx+0Dh]
inc     byte ptr [ecx+0Ah]
cmp     ds:byte_560BE4, 5
jnz     short loc_46F047
mov     byte ptr [ecx+9], 4
mov     byte ptr [ecx+0Ah], 0

loc_46F047:
pop     edx
pop     ecx
pop     ebx
retn
sub_46EFD9 endp




sub_46F04B proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46F06B
mov     word ptr [edx+16h], 0FFB0h
mov     eax, edx
call    sub_4DEB53
mov     eax, edx
call    sub_4DF7CB
inc     byte ptr [edx+0Ah]

loc_46F06B:
pop     edx
retn
sub_46F04B endp




sub_46F06D proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46F08D
mov     word ptr [edx+16h], 0
mov     eax, edx
call    sub_4DEB53
mov     eax, edx
call    sub_4DF7CB
inc     byte ptr [edx+0Ah]

loc_46F08D:
pop     edx
retn
sub_46F06D endp




sub_46F08F proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
jnz     short loc_46F0A1
mov     [eax+0Dh], dl
mov     dh, dl
inc     dh
mov     [eax+0Ah], dh

loc_46F0A1:
pop     edx
retn
sub_46F08F endp




sub_46F0A3 proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46F0BE
mov     word ptr [eax+14h], 0F95Ch
mov     word ptr [eax+16h], 0
mov     word ptr [eax+18h], 0F60Ah
inc     byte ptr [eax+0Ah]

loc_46F0BE:
cmp     ds:dword_560BEC, 2Dh ; '-'
jnz     short locret_46F0CB
mov     byte ptr [eax+0Dh], 0

locret_46F0CB:
retn
sub_46F0A3 endp




sub_46F0CC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46F0EB
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Dh]
inc     byte ptr [ecx+0Ah]

loc_46F0EB:
cmp     ds:dword_560BEC, 5
jnz     short loc_46F0F8
mov     byte ptr [ecx+0Dh], 0

loc_46F0F8:
pop     edx
pop     ecx
pop     ebx
retn
sub_46F0CC endp




sub_46F0FC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     word ptr [eax+15Eh], 4210h
test    byte ptr [eax], 2
jz      short loc_46F123
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B

loc_46F123:
xor     edx, edx
mov     dl, [esi+8]
mov     eax, esi
call    ds:funcs_46F12A[edx*4]
cmp     byte ptr [esi+9], 0
jz      short loc_46F145
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
jmp     short loc_46F151

loc_46F145:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1

loc_46F151:
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46F0FC endp




sub_46F15D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     edx, [ecx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+1Ch], edx
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     edx, [ecx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+24h], edx
mov     edx, [ecx+1Ch]
mov     [ecx+34h], edx
mov     edx, [ecx+20h]
mov     [ecx+38h], edx
mov     edx, [ecx+24h]
mov     [ecx+3Ch], edx
mov     dx, [ecx+14h]
mov     [ecx+2Ch], dx
mov     dx, [ecx+16h]
mov     [ecx+2Eh], dx
mov     dx, [ecx+18h]
mov     [ecx+30h], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+54h]
mov     [ecx+5Ch], dx
mov     dx, [ecx+56h]
mov     [ecx+5Eh], dx
mov     dx, [ecx+58h]
mov     [ecx+60h], dx
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     byte ptr [ecx+9], 0
mov     edx, [ecx+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_46F15D endp




sub_46F251 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
cmp     byte ptr [esi+0Dh], 0
jnz     short loc_46F278
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46F278:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46F251 endp




sub_46F290 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
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
mov     al, [ebp+74h]
mov     [ebp+75h], al
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     edx, [esp+1Ch+var_1C]
mov     [edx+2], ax
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_46F2EB[edx*4]
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
mov     eax, [esp+1Ch+var_1C]
add     eax, 40h ; '@'
mov     edx, ebp
call    sub_4E19CA
test    eax, eax
jz      short loc_46F32F
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 20h
jmp     short loc_46F335

loc_46F32F:
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0DFh

loc_46F335:
mov     al, [ebp+0ADh]
mov     bl, [ebp+0ACh]
cmp     al, bl
jz      short loc_46F354
xor     edx, edx
mov     dl, bl
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_46F35B

loc_46F354:
mov     eax, ebp
call    sub_4DEADD

loc_46F35B:
mov     eax, ebp
call    sub_42DE56
mov     eax, ebp
call    sub_42C592
mov     edx, eax
cmp     byte ptr [ebp+74h], 0
jnz     short loc_46F3B0
mov     esi, [ebp+14h]
sar     esi, 10h
movsx   edx, ax
sub     esi, edx
mov     edx, esi
test    esi, esi
jge     short loc_46F384
neg     edx

loc_46F384:
cmp     edx, 100h
jle     short loc_46F390
mov     byte ptr [ebp+3], 0

loc_46F390:
mov     esi, [ebp+14h]
sar     esi, 10h
movsx   edx, ax
cmp     esi, edx
jge     short loc_46F3AC
add     word ptr [ebp+16h], 28h ; '('
mov     esi, [ebp+14h]
sar     esi, 10h
cmp     esi, edx
jle     short loc_46F3B0

loc_46F3AC:
mov     [ebp+16h], ax

loc_46F3B0:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 80h
mov     eax, ebp
call    sub_4ED88B
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      loc_46F4B7
mov     edi, eax
lea     edi, [edi+18h]
lea     esi, [ebp+190h]
movsd
movsd
push    0
push    offset unk_800000
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     ax, [edx+10h]
or      eax, 4880000h
push    eax
lea     eax, [edx+20h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     esi, [edx+18h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 6Eh ; 'n'
mov     eax, esi
call    sub_4E01FC
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      loc_46F4B7
mov     eax, [ebp+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     edx, eax
shl     edx, 2
sar     edx, 0Ch
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+16h]
sar     eax, 10h
add     eax, edx
mov     edx, [esp+1Ch+var_1C]
mov     [edx+18h], ax
mov     eax, [ebp+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     edx, eax
shl     edx, 2
sar     edx, 0Ch
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+1Ah]
sar     eax, 10h
add     eax, edx
mov     edx, [esp+1Ch+var_1C]
mov     [edx+1Ch], ax
push    0
push    offset unk_800000
mov     eax, [edx+12h]
sar     eax, 10h
or      eax, 4880000h
push    eax
lea     eax, [edx+30h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 50h ; 'P'
mov     eax, esi
call    sub_4E01FC

loc_46F4B7:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+20h], 0
mov     dword ptr [eax+30h], 0

loc_46F4C8:
add     esp, 4

loc_46F4CB:
pop     ebp

loc_46F4CC:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46F290 endp




sub_46F4D2 proc near
push    ebx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [esi], ah
mov     word ptr [esi+54h], 0
mov     al, [esi+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [esi+56h], ax
mov     word ptr [esi+58h], 0
mov     word ptr [esi+64h], 0
mov     word ptr [esi+66h], 0
mov     byte ptr [esi+74h], 0
mov     al, [esi+74h]
mov     [esi+75h], al
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     word ptr [esi+158h], 200h
mov     word ptr [esi+15Ah], 200h
mov     word ptr [esi+15Ch], 200h
lea     eax, [esi+448h]
mov     ebx, 0FFFFFF38h
mov     edx, 3
call    sub_4E19B9
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [esi+6Eh], ax
mov     [esi+0B0h], ax
mov     [esi+0B2h], ax
mov     dword ptr [esi+78h], offset off_51718C
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Bh], 0
mov     word ptr [esi+15Eh], 4210h
xor     ebx, ebx
mov     edx, 5
mov     eax, esi
call    sub_4DE96B
or      byte ptr [edi], 1
mov     word ptr [edi+4], 0B4h
mov     word ptr [edi+6], 0
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
mov     al, [eax+0Bh]
xor     ah, ah
mov     [edi+10h], ax
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ch]
xor     ah, ah
mov     [edi+14h], ax
mov     word ptr [edi+12h], 0
mov     word ptr [edi+16h], 0
mov     dword ptr [edi+20h], 0
mov     dword ptr [edi+24h], 0
mov     dword ptr [edi+30h], 0
mov     dword ptr [edi+34h], 0
mov     word ptr [edi+8], 0
lea     edi, [edi+50h]
lea     esi, [esi+14h]
movsd
movsd
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_46F4D2 endp




sub_46F63A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+408h]
cmp     byte ptr [eax+3], 0
jz      short loc_46F669
lea     edx, [ecx+50h]
lea     eax, [esi+14h]
call    sub_4DD685
cmp     eax, 0Ah
jle     short loc_46F669
mov     byte ptr [esi+8], 6

loc_46F660:
mov     byte ptr [esi+9], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46F669:
mov     eax, esi
call    sub_47006D
test    al, al
jz      short loc_46F690
jge     short loc_46F67C
mov     byte ptr [esi+8], 5
jmp     short loc_46F660

loc_46F67C:
mov     byte ptr [esi+8], 2
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0ACh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46F690:
test    byte ptr [ecx], 20h
jz      short loc_46F6CB
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 34h ; '4'
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jge     short loc_46F6CB
mov     byte ptr [esi+0ACh], 0
inc     byte ptr [esi+8]

loc_46F6CB:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46F63A endp




sub_46F6D0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edx, [eax+408h]
call    sub_47006D
test    al, al
jge     short loc_46F6F3
mov     byte ptr [ecx+8], 5
mov     byte ptr [ecx+9], 0
jmp     loc_46F4CC

loc_46F6F3:
xor     ebx, ebx
mov     bl, [ecx+9]
mov     eax, ecx
call    ds:funcs_46F6FA[ebx*4]
mov     bx, [edx+4]
test    bx, bx
jz      short loc_46F711
mov     ecx, ebx
dec     ecx
mov     [edx+4], cx

loc_46F711:
mov     si, [edx+8]
test    si, si
jz      loc_46F4CC
mov     edi, esi
dec     edi
mov     [edx+8], di
jmp     loc_46F4CC
sub_46F6D0 endp




sub_46F72A proc near
push    ebx
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0A7h], 0
jge     short loc_46F75B
mov     byte ptr [eax+0ACh], 1
mov     bx, [edx+2]
xor     bh, bh
and     bl, 1Fh
add     ebx, 1Eh
mov     [edx+4], bx
mov     word ptr [edx+8], 0
inc     byte ptr [eax+9]

loc_46F75B:
pop     edx
pop     ebx
retn
sub_46F72A endp




sub_46F75E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0A7h], 0
jge     short loc_46F79F
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 400h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
test    ax, ax
jge     short loc_46F78F
cwde
neg     eax
jmp     short loc_46F790

loc_46F78F:
cwde

loc_46F790:
cmp     eax, 68h ; 'h'
jle     short loc_46F79C
mov     byte ptr [esi+0ACh], 10h

loc_46F79C:
inc     byte ptr [esi+9]

loc_46F79F:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46F75E endp




sub_46F7A4 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ebx, [eax+54h]
sar     ebx, 10h
add     eax, 14h
mov     ecx, 34h ; '4'
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     ebx, eax
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ah, [esi+0A4h]
cmp     ah, 5
jz      short loc_46F7DF
cmp     ah, 14h
jnz     short loc_46F7EC

loc_46F7DF:
lea     edx, [esi+14h]
mov     eax, 1B6h
call    sub_4D8BC3

loc_46F7EC:
test    bx, bx
jge     short loc_46F7F8
movsx   edx, bx
neg     edx
jmp     short loc_46F7FB

loc_46F7F8:
movsx   edx, bx

loc_46F7FB:
cmp     edx, 34h ; '4'
jge     short loc_46F80A
mov     byte ptr [esi+0ACh], 3
inc     byte ptr [esi+9]

loc_46F80A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46F7A4 endp




sub_46F80F proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
push    eax
add     eax, 408h
mov     [esp+20h+var_1C], eax
mov     eax, [esp+20h+var_20]
cmp     byte ptr [eax+0A7h], 0
jge     loc_46F8D0
mov     eax, [esp+20h+var_1C]
cmp     word ptr [eax+8], 0
jnz     loc_46F8D0
call    sub_4DE043
mov     ebp, eax
test    eax, eax
jz      short loc_46F8B9
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 9
mov     byte ptr [eax+3], 3
lea     edi, [ebp+14h]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+198h]
movsd
movsd
mov     eax, [eax+12h]
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
push    0
push    140h
mov     eax, [esp+28h+var_20]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     edx, [ebp+1Ch]
lea     eax, [ebp+14h]
mov     ecx, 800h
call    sub_4DD4C5
mov     eax, [esp+20h+var_20]
mov     ax, [eax+56h]
mov     [ebp+64h], ax

loc_46F8B9:
mov     eax, [esp+20h+var_1C]
mov     word ptr [eax+8], 0Fh
mov     eax, [esp+20h+var_20]
mov     byte ptr [eax+0ACh], 4
inc     byte ptr [eax+9]

loc_46F8D0:
add     esp, 8
jmp     loc_46F4CB
sub_46F80F endp




sub_46F8D8 proc near
cmp     byte ptr [eax+0A7h], 0
jge     short locret_46F8EB
mov     byte ptr [eax+0ACh], 2
inc     byte ptr [eax+9]

locret_46F8EB:
retn
sub_46F8D8 endp




sub_46F8EC proc near
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0A7h], 0
jge     short loc_46F922
mov     byte ptr [eax+0ACh], 1
mov     byte ptr [eax+9], 1
cmp     word ptr [edx+4], 0
jnz     short loc_46F922
cmp     byte ptr [eax+3], 0
jz      short loc_46F91A
mov     byte ptr [eax+8], 3
jmp     short loc_46F91E

loc_46F91A:
mov     byte ptr [eax+8], 6

loc_46F91E:
mov     byte ptr [eax+9], 0

loc_46F922:
pop     edx
retn
sub_46F8EC endp




sub_46F924 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+408h]
call    sub_47015E
test    al, al
jz      short loc_46F954
jge     short loc_46F96A
mov     byte ptr [edx+8], 4
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0ACh], 9
and     byte ptr [ecx], 0FDh
mov     word ptr [ecx+4], 0
pop     edx
pop     ecx
retn

loc_46F954:
mov     eax, edx
call    sub_47006D
test    al, al
jge     short loc_46F96A
mov     byte ptr [edx+8], 5
mov     byte ptr [edx+9], 0
pop     edx
pop     ecx
retn

loc_46F96A:
xor     ecx, ecx
mov     cl, [edx+9]
mov     eax, edx
call    ds:funcs_46F971[ecx*4]
pop     edx
pop     ecx
retn
sub_46F924 endp




sub_46F97B proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
or      byte ptr [eax], 2
mov     bx, [eax+2]
xor     bh, bh
and     bl, 1Fh
add     ebx, 1Eh
mov     [eax+4], bx
mov     byte ptr [edx+0ACh], 5
inc     byte ptr [edx+9]
pop     edx
pop     ebx
retn
sub_46F97B endp




sub_46F9A4 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0A7h], 0
jge     short loc_46F9CB
mov     bx, [edx+4]
dec     bx
mov     [edx+4], bx
jnz     short loc_46F9CB
mov     byte ptr [eax+0ACh], 0
inc     byte ptr [eax+9]

loc_46F9CB:
pop     edx
pop     ebx
retn
sub_46F9A4 endp




sub_46F9CE proc near
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0A7h], 0
jge     short loc_46F9E9
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
and     byte ptr [edx], 0FDh

loc_46F9E9:
pop     edx
retn
sub_46F9CE endp




sub_46F9EB proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
lea     ecx, [eax+408h]
call    sub_47006D
test    al, al
jge     short loc_46FA0D
mov     byte ptr [edx+8], 5

loc_46FA04:
mov     byte ptr [edx+9], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46FA0D:
xor     ebx, ebx
mov     si, [ecx+4]
inc     esi
mov     [ecx+4], si
cmp     si, 1Bh
jge     short loc_46FA23
mov     ebx, 3

loc_46FA23:
cmp     word ptr [ecx+4], 15h
jge     short loc_46FA2F
mov     ebx, 6

loc_46FA2F:
cmp     word ptr [ecx+4], 0Fh
jge     short loc_46FA3B
mov     ebx, 9

loc_46FA3B:
cmp     word ptr [ecx+4], 9
jge     short loc_46FA47
mov     ebx, 7

loc_46FA47:
cmp     word ptr [ecx+4], 4
jge     short loc_46FA50
xor     ebx, ebx

loc_46FA50:
mov     eax, [ecx+0Ch]
add     eax, 800h
call    sub_4EF008
movsx   ebx, bx
mov     esi, eax
imul    esi, ebx
sar     esi, 0Ch
mov     eax, [edx+12h]
sar     eax, 10h
add     eax, esi
mov     [edx+14h], ax
mov     eax, [ecx+0Ch]
add     eax, 800h
call    sub_4EF003
imul    eax, ebx
sar     eax, 0Ch
mov     ecx, [edx+16h]
sar     ecx, 10h
add     ecx, eax
mov     [edx+18h], cx
cmp     byte ptr [edx+0A7h], 0
jge     short loc_46FAB3
mov     bl, [edx+3]
test    bl, bl
jz      short loc_46FAAC
mov     byte ptr [edx+8], 6
jmp     loc_46FA04

loc_46FAAC:
mov     byte ptr [edx+8], 2
mov     [edx+9], bl

loc_46FAB3:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46F9EB endp




sub_46FAB8 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_46FABE[edx*4]
pop     edx
retn
sub_46FAB8 endp




sub_46FAC7 proc near
push    edx
lea     edx, [eax+408h]
test    byte ptr [edx], 8
jz      short loc_46FADC
mov     byte ptr [eax+0ACh], 0Dh
jmp     short loc_46FAE3

loc_46FADC:
mov     byte ptr [eax+0ACh], 0Ah

loc_46FAE3:
mov     byte ptr [eax+74h], 1
mov     word ptr [edx+4], 0
mov     word ptr [edx+6], 0
inc     byte ptr [eax+9]
pop     edx
retn
sub_46FAC7 endp




sub_46FAF8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+408h]
xor     esi, esi
xor     ebx, ebx
cmp     word ptr [ecx+4], 9
jge     short loc_46FB15
mov     ebx, 18h

loc_46FB15:
cmp     word ptr [ecx+4], 5
jge     short loc_46FB21
mov     ebx, 38h ; '8'

loc_46FB21:
cmp     word ptr [ecx+6], 9
jge     short loc_46FB2D
mov     esi, 15h

loc_46FB2D:
cmp     word ptr [ecx+6], 5
jge     short loc_46FB39
mov     esi, 0FFFFFFEBh

loc_46FB39:
inc     word ptr [ecx+4]
inc     word ptr [ecx+6]
mov     eax, [ecx+0Ch]
add     eax, 800h
call    sub_4EF008
movsx   ebx, bx
mov     edi, eax
imul    edi, ebx
sar     edi, 0Ch
mov     eax, [edx+12h]
sar     eax, 10h
add     eax, edi
mov     [edx+14h], ax
mov     eax, [ecx+0Ch]
add     eax, 800h
call    sub_4EF003
imul    ebx, eax
sar     ebx, 0Ch
mov     eax, [edx+16h]
sar     eax, 10h
add     eax, ebx
mov     [edx+18h], ax
add     [edx+16h], si
cmp     byte ptr [edx+0A7h], 0
jge     loc_46F4CC
test    byte ptr [ecx], 8
jz      short loc_46FBA3
mov     byte ptr [edx+0ACh], 0Eh
jmp     short loc_46FBAA

loc_46FBA3:
mov     byte ptr [edx+0ACh], 0Bh

loc_46FBAA:
mov     byte ptr [edx+74h], 0

loc_46FBAE:
inc     byte ptr [edx+9]
jmp     loc_46F4CC
sub_46FAF8 endp




sub_46FBB6 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+408h]
mov     eax, [ecx+0Ch]
add     eax, 800h
call    sub_4EF008
mov     ebx, eax
shl     eax, 2
add     ebx, eax
sar     ebx, 0Ch
mov     eax, [edx+12h]
sar     eax, 10h
add     eax, ebx
mov     [edx+14h], ax
mov     eax, [ecx+0Ch]
add     eax, 800h
call    sub_4EF003
mov     ebx, eax
shl     eax, 2
add     ebx, eax
sar     ebx, 0Ch
mov     eax, [edx+16h]
sar     eax, 10h
add     eax, ebx
mov     [edx+18h], ax
cmp     byte ptr [edx+0A7h], 0
jge     loc_46F4CC
cmp     word ptr [edx+6Eh], 0
jnz     short loc_46FC46
call    sub_4DE13B
test    eax, eax
jz      short loc_46FC39
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [edx+14h]
movsd
movsd

loc_46FC39:
mov     byte ptr [edx+8], 7
mov     byte ptr [edx+9], 0
jmp     loc_46F4CC

loc_46FC46:
test    byte ptr [ecx], 8
jz      short loc_46FC54
mov     byte ptr [edx+0ACh], 0Fh
jmp     short loc_46FC5B

loc_46FC54:
mov     byte ptr [edx+0ACh], 0Ch

loc_46FC5B:
mov     word ptr [ecx+4], 0
jmp     loc_46FBAE
sub_46FBB6 endp




sub_46FC66 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
lea     ecx, [eax+408h]
xor     ebx, ebx
cmp     word ptr [ecx+4], 0Eh
jge     short loc_46FC80
mov     ebx, 0Ah

loc_46FC80:
cmp     word ptr [ecx+4], 0Bh
jge     short loc_46FC8C
mov     ebx, 15h

loc_46FC8C:
cmp     word ptr [ecx+4], 5
jge     short loc_46FC95
xor     ebx, ebx

loc_46FC95:
inc     word ptr [ecx+4]
mov     eax, [ecx+0Ch]
call    sub_4EF008
movsx   ebx, bx
mov     esi, eax
imul    esi, ebx
sar     esi, 0Ch
mov     eax, [edx+12h]
sar     eax, 10h
add     eax, esi
mov     [edx+14h], ax
mov     eax, [ecx+0Ch]
call    sub_4EF003
imul    eax, ebx
sar     eax, 0Ch
mov     ecx, [edx+16h]
sar     ecx, 10h
add     ecx, eax
mov     [edx+18h], cx
cmp     byte ptr [edx+0A7h], 0
jge     short loc_46FCF6
mov     bl, [edx+3]
test    bl, bl
jz      short loc_46FCEF
mov     byte ptr [edx+8], 6
mov     byte ptr [edx+9], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46FCEF:
mov     byte ptr [edx+8], 2
mov     [edx+9], bl

loc_46FCF6:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46FC66 endp




sub_46FCFB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+408h]
cmp     byte ptr [eax+3], 0
jz      short loc_46FD34
test    byte ptr [ebx+23h], 38h
jz      short loc_46FD1F
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_46FD1F:
test    byte ptr [ebx+33h], 38h
jz      short loc_46FD74
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3
jmp     short loc_46FD74

loc_46FD34:
mov     eax, ecx
call    sub_47015E
test    al, al
jz      short loc_46FD5D
jge     short loc_46FD74
mov     byte ptr [ecx+8], 4
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0ACh], 9
and     byte ptr [ebx], 0FDh
mov     word ptr [ebx+4], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_46FD5D:
mov     eax, ecx
call    sub_47006D
test    al, al
jge     short loc_46FD74
mov     byte ptr [ecx+8], 5
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_46FD74:
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_46FD7B[edx*4]
pop     edx
pop     ecx
pop     ebx
retn
sub_46FCFB endp




sub_46FD86 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
cmp     byte ptr [eax+3], 0
jz      short loc_46FDBA
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+50h]
lea     eax, [esi+14h]
mov     ecx, 100h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

loc_46FDBA:
or      byte ptr [edi], 2
mov     byte ptr [esi+0ACh], 6
inc     byte ptr [esi+9]
jmp     loc_46F4CC
sub_46FD86 endp




sub_46FDCC proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     esi, eax
lea     edi, [eax+408h]
cmp     byte ptr [eax+3], 0
jz      short loc_46FE04
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+50h]
lea     eax, [esi+14h]
mov     ecx, 100h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

loc_46FE04:
cmp     byte ptr [esi+0A7h], 0
jge     loc_46F8D0
cmp     byte ptr [esi+3], 0
jz      loc_46FF57
xor     ebx, ebx
xor     ecx, ecx
mov     eax, [esi+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
sar     eax, 0Ch
test    eax, eax
jge     short loc_46FE69
mov     eax, [esi+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
sar     eax, 0Ch
mov     [esp+20h+var_1C], eax
mov     edx, eax
neg     edx
mov     [esp+20h+var_1C], edx
jmp     short loc_46FE89

loc_46FE69:
mov     eax, [esi+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
sar     eax, 0Ch
mov     [esp+20h+var_1C], eax

loc_46FE89:
mov     eax, [esp+20h+var_1C]
test    ax, ax
jz      short loc_46FEB2
mov     edx, [esi+12h]
sar     edx, 10h
mov     ecx, [edi+4Eh]
sar     ecx, 10h
sub     edx, ecx
test    edx, edx
jge     short loc_46FEA6
neg     edx

loc_46FEA6:
movsx   ecx, ax
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     ecx, eax

loc_46FEB2:
mov     eax, [esi+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
sar     eax, 0Ch
test    eax, eax
jge     short loc_46FEFA
mov     eax, [esi+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
sar     eax, 0Ch
mov     [esp+20h+var_20], eax
mov     ebp, eax
neg     ebp
mov     [esp+20h+var_20], ebp
jmp     short loc_46FF19

loc_46FEFA:
mov     eax, [esi+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
sar     eax, 0Ch
mov     [esp+20h+var_20], eax

loc_46FF19:
mov     eax, [esp+20h+var_20]
test    ax, ax
jz      short loc_46FF41
mov     edx, [esi+16h]
sar     edx, 10h
mov     ebx, [edi+52h]
sar     ebx, 10h
sub     edx, ebx
test    edx, edx
jge     short loc_46FF35
neg     edx

loc_46FF35:
movsx   ebx, ax
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     ebx, eax

loc_46FF41:
movsx   edx, cx
movsx   eax, bx
cmp     edx, eax
jge     short loc_46FF51
mov     [edi+4], bx
jmp     short loc_46FF68

loc_46FF51:
mov     [edi+4], cx
jmp     short loc_46FF68

loc_46FF57:
mov     ax, [edi+2]
xor     ah, ah
and     al, 1Fh
add     eax, 1Eh
mov     [edi+4], ax

loc_46FF68:
mov     byte ptr [esi+0ACh], 8
inc     byte ptr [esi+9]
jmp     loc_46F8D0
sub_46FDCC endp




sub_46FF77 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+408h]
cmp     byte ptr [eax+3], 0
jz      short loc_46FF91
cmp     word ptr [ebx+4], 0
jz      short loc_46FFE3

loc_46FF91:
mov     eax, [ecx+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
lea     edx, [eax+eax]
sar     edx, 0Ch
mov     eax, [ecx+12h]
sar     eax, 10h
add     eax, edx
mov     [ecx+14h], ax
mov     eax, [ecx+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
lea     edx, [eax+eax]
sar     edx, 0Ch
mov     eax, [ecx+16h]
sar     eax, 10h
add     eax, edx
mov     [ecx+18h], ax

loc_46FFE3:
mov     si, [ebx+4]
test    si, si
jz      short loc_46FFF3
mov     edi, esi
dec     edi
mov     [ebx+4], di

loc_46FFF3:
mov     dl, [ecx+0A4h]
cmp     dl, 5
jz      short loc_470003
cmp     dl, 14h
jnz     short loc_470010

loc_470003:
lea     edx, [ecx+14h]
mov     eax, 1B6h
call    sub_4D8BC3

loc_470010:
cmp     byte ptr [ecx+0A7h], 0
jge     loc_46F4CC
cmp     word ptr [ebx+4], 0
jnz     loc_46F4CC
mov     byte ptr [ecx+0ACh], 7
inc     byte ptr [ecx+9]
jmp     loc_46F4CC
sub_46FF77 endp




sub_470037 proc near
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0A7h], 0
jge     short loc_470052
and     byte ptr [edx], 0FDh
mov     byte ptr [eax+8], 2
mov     byte ptr [eax+9], 0

loc_470052:
pop     edx
retn
sub_470037 endp




sub_470054 proc near
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+190h]
call    sub_4AF9F8
mov     eax, ecx
call    sub_4DE2F6
pop     edx
pop     ecx
retn
sub_470054 endp




sub_47006D proc near

var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
lea     esi, [eax+408h]
xor     bl, bl
mov     eax, [esi+20h]
and     eax, 0FFFFFFh
xor     edx, edx
mov     dl, [edi+2]
mov     ebp, ds:dword_55A10C
mov     ebp, [ebp+edx*4+0]
xor     edx, edx
mov     dl, [ebp+9]
mov     [esp+1Ch+var_1C], dx
test    eax, eax
jz      loc_470157
test    byte ptr [esi+23h], 38h
jz      loc_470157
add     [esi+12h], ax
mov     dx, [edi+6Eh]
mov     [edi+0B2h], dx
mov     ebx, edx
sub     ebx, eax
mov     [edi+6Eh], bx
test    bx, bx
jge     short loc_4700D4
mov     word ptr [edi+6Eh], 0

loc_4700D4:
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+28h]
lea     ebp, [edi+14h]
xor     ecx, ecx
mov     eax, ebp
call    sub_4DE726
mov     [esi+0Ch], eax
mov     word ptr [edi+15Eh], 7FFFh
xor     eax, eax
mov     ax, [esi+12h]
mov     edx, [esp-2]
sar     edx, 10h
cmp     edx, eax
jl      short loc_47010D
cmp     word ptr [edi+6Eh], 0
jnz     short loc_470134

loc_47010D:
mov     bl, 0FFh
mov     word ptr [esi+12h], 0
lea     edx, [edi+14h]
mov     eax, 0A2h
call    sub_4D8BC3
test    word ptr [esi+0Eh], 0FFFFh
jz      short loc_47012F
or      byte ptr [esi], 10h
jmp     short loc_470142

loc_47012F:
or      byte ptr [esi], 8
jmp     short loc_470142

loc_470134:
mov     bl, 1
mov     edx, ebp
mov     eax, 0A0h
call    sub_4D8BC3

loc_470142:
test    word ptr [esi+0Eh], 0FFFFh
jz      short loc_470151
add     dword ptr [esi+0Ch], 800h

loc_470151:
mov     word ptr [esi+0Eh], 0

loc_470157:
mov     al, bl
jmp     loc_46F4C8
sub_47006D endp




sub_47015E proc near

var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     edi, eax
lea     esi, [eax+408h]
xor     bl, bl
mov     eax, [esi+30h]
and     eax, 0FFFFFFh
xor     ecx, ecx
mov     cl, [edi+2]
mov     edx, ds:dword_55A10C
mov     edx, [edx+ecx*4]
mov     dl, [edx+0Ah]
xor     dh, dh
mov     [esp+18h+var_18], dx
test    eax, eax
jz      loc_470252
test    byte ptr [esi+33h], 38h
jz      loc_470252
add     [esi+16h], ax
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+38h]
lea     eax, [edi+14h]
xor     ecx, ecx
call    sub_4DE726
mov     [esi+0Ch], eax
test    word ptr [esi+0Eh], 0FFFFh
jz      short loc_4701CC
lea     edx, [eax+800h]
mov     [esi+0Ch], edx

loc_4701CC:
mov     word ptr [esi+0Eh], 0
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, [esp-2]
sar     eax, 10h
cmp     eax, edx
jl      short loc_4701E9
test    byte ptr [esi+33h], 20h
jz      short loc_4701F3

loc_4701E9:
mov     bl, 0FFh
mov     word ptr [esi+16h], 0
jmp     short loc_470245

loc_4701F3:
mov     bl, 1
mov     eax, [esi+0Ch]
add     eax, 800h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     edx, eax
sar     edx, 0Ch
mov     eax, [edi+12h]
sar     eax, 10h
add     eax, edx
mov     [edi+14h], ax
mov     eax, [esi+0Ch]
add     eax, 800h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     edx, eax
sar     edx, 0Ch
mov     eax, [edi+16h]
sar     eax, 10h
add     eax, edx
mov     [edi+18h], ax

loc_470245:
lea     edx, [edi+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_470252:
mov     al, bl
add     esp, 4
jmp     loc_46F4CC
sub_47015E endp




sub_47025C proc near
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
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
cmp     byte ptr [eax+8], 0
jnz     short loc_4702C7
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
inc     byte ptr [ecx+8]

loc_4702C7:
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_4702E8
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4702EF

loc_4702E8:
mov     eax, ecx
call    sub_4DEADD

loc_4702EF:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47025C endp




sub_4702F5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+3A8h]
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
mov     word ptr [eax+15Eh], 4210h
call    rand_
mov     [ebx+46h], ax
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_4E1877
lea     edx, [ecx+14h]
add     eax, 14h
call    sub_4DDDB4
add     ah, 8
and     ah, 0Fh
mov     [ecx+56h], ax
xor     edx, edx
mov     dl, [ecx+8]
mov     eax, ecx
call    ds:funcs_47034D[edx*4]
mov     dword ptr [ebx+18h], 0
mov     dword ptr [ebx+20h], 0
mov     dword ptr [ebx+28h], 0
mov     dword ptr [ebx+30h], 0
jmp     loc_470479
sub_4702F5 endp




sub_470375 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     ah, [eax]
or      ah, 2
mov     [ebp+0], ah
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 10001000h
mov     dword ptr [ebp+15Ch], 1000h
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+0ADh], 0
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
mov     eax, [ebp+0Ah]
sar     eax, 18h
call    sub_4E1877
mov     edx, eax
xor     eax, eax
mov     al, [ebp+3]
lea     esi, [eax+1]
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 4
lea     esi, [edx+eax]
mov     ecx, 0Ch
lea     edi, [ebp+160h]
lea     esi, [esi+1F8h]
rep movsd
xor     eax, eax
mov     al, [ebp+3]
lea     esi, [eax+1]
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 4
add     edx, 1F8h
add     edx, eax
mov     eax, ebp
call    sub_4DF87F
mov     word ptr [ebp+15Eh], 4210h
mov     dword ptr [ebp+78h], 0
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 6
mov     [ebp+6Eh], ax
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
mov     [ebp+73h], al
or      byte ptr [ebp+0Eh], 2

loc_470478:
pop     ebp

loc_470479:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_470375 endp




sub_47047F proc near

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
mov     ebp, eax
add     eax, 3A8h
mov     [esp+24h+var_1C], eax
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     ebx, eax
mov     eax, [ebp+0Ah]
sar     eax, 18h
call    sub_4E1877
mov     [esp+24h+var_20], eax
cmp     byte ptr [ebp+9], 2
jz      loc_4706B4
mov     eax, [esp+24h+var_1C]
mov     dx, [eax+42h]
test    dx, dx
jz      short loc_4704CD
mov     ecx, edx
dec     ecx
mov     [eax+42h], cx

loc_4704CD:
lea     eax, [ebp+14h]
mov     dl, [ebp+0Eh]
test    dl, 2
jnz     loc_470631
mov     edx, [esp+24h+var_1C]
mov     dx, [edx+20h]
test    dx, dx
jz      loc_4705E8
mov     ax, [ebp+6Eh]
mov     [ebp+0B2h], ax
mov     esi, eax
sub     esi, edx
mov     [ebp+6Eh], si
mov     ax, [ebx+6Eh]
mov     [ebx+0B2h], ax
mov     edi, eax
sub     edi, edx
mov     [ebx+6Eh], di
cmp     byte ptr [ebp+3], 0
jnz     short loc_47051F
mov     byte ptr [ebx+0Fh], 1
jmp     short loc_470523

loc_47051F:
mov     byte ptr [ebx+0Fh], 2

loc_470523:
cmp     word ptr [ebp+6Eh], 0
jge     short loc_47058C
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     ebx, eax
mov     byte ptr [ebp+9], 2
mov     edx, [esp+24h+var_1C]
mov     byte ptr [edx+48h], 3Ch ; '<'
xor     edx, edx
mov     dl, [ebp+3]
inc     edx
mov     esi, edx
shl     esi, 2
sub     esi, edx
shl     esi, 4
add     esi, [esp+24h+var_20]
mov     ecx, 0Ch
lea     edi, [ebp+160h]
lea     esi, [esi+1F8h]
rep movsd
cmp     byte ptr [ebp+3], 0
jnz     short loc_47057E
mov     byte ptr [eax+0Dh], 0FFh
mov     eax, [esp+24h+var_20]
mov     byte ptr [eax+0Dh], 0FFh
jmp     short loc_4705DA

loc_47057E:
mov     byte ptr [eax+0Eh], 0FFh
mov     eax, [esp+24h+var_20]
mov     byte ptr [eax+0Eh], 0FFh
jmp     short loc_4705DA

loc_47058C:
mov     eax, [esp+24h+var_1C]
add     [eax+42h], dx
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
xor     esi, esi
mov     edx, [esp+24h+var_1C]
mov     si, [edx+42h]
lea     edx, [ebp+14h]
cmp     esi, eax
jl      short loc_4705D0
mov     eax, [esp+24h+var_1C]
mov     word ptr [eax+42h], 0
or      byte ptr [ebx+0Ch], 40h
mov     eax, 0A2h
jmp     short loc_4705D5

loc_4705D0:
mov     eax, 0A0h

loc_4705D5:
call    sub_4D8BC3

loc_4705DA:
mov     word ptr [ebp+15Eh], 7FFFh
jmp     loc_4706B4

loc_4705E8:
mov     edx, [esp+24h+var_1C]
test    dword ptr [edx+18h], 0FFFFFFh
jz      short loc_470601
mov     edx, eax
mov     eax, 0A3h
call    sub_4D8BC3

loc_470601:
mov     eax, [esp+24h+var_1C]
test    dword ptr [eax+28h], 0FFFFFFh
jz      short loc_47061B
lea     edx, [ebp+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_47061B:
mov     eax, [esp+24h+var_1C]
test    dword ptr [eax+30h], 0FFFFFFh
jz      loc_4706B4
jmp     loc_4706A7

loc_470631:
cmp     byte ptr [ebx+0Fh], 0
jz      short loc_470648
mov     word ptr [ebp+15Eh], 7FFFh
dec     byte ptr [ebx+0Fh]
jmp     loc_4706B4

loc_470648:
test    dl, 2
jz      short loc_470666
mov     edx, [esp+24h+var_1C]
test    dword ptr [edx+20h], 0FFFFFFh
jz      short loc_470666
mov     edx, eax
mov     eax, 0A3h
call    sub_4D8BC3

loc_470666:
mov     eax, [esp+24h+var_1C]
test    dword ptr [eax+18h], 0FFFFFFh
jz      short loc_470680
lea     edx, [ebp+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_470680:
mov     eax, [esp+24h+var_1C]
test    dword ptr [eax+28h], 0FFFFFFh
jz      short loc_47069A
lea     edx, [ebp+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_47069A:
mov     eax, [esp+24h+var_1C]
test    dword ptr [eax+30h], 0FFFFFFh
jz      short loc_4706B4

loc_4706A7:
lea     edx, [ebp+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_4706B4:
cmp     byte ptr [ebp+9], 2
jz      short loc_4706CA
test    byte ptr [ebp+0Eh], 40h
jnz     short loc_4706C6
mov     byte ptr [ebp+9], 0
jmp     short loc_4706CA

loc_4706C6:
mov     byte ptr [ebp+9], 1

loc_4706CA:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4706D1[edx*4]
cmp     byte ptr [ebp+9], 2
jz      loc_4709FF
mov     eax, ebp
call    sub_4DEB53
xor     eax, eax
mov     al, [ebp+3]
inc     eax
mov     esi, eax
shl     esi, 2
sub     esi, eax
shl     esi, 4
add     esi, [esp+24h+var_20]
mov     ecx, 0Ch
lea     edi, [ebp+160h]
lea     esi, [esi+1F8h]
rep movsd
xor     eax, eax
mov     al, [ebp+3]
inc     eax
mov     esi, eax
shl     esi, 2
sub     esi, eax
shl     esi, 4
mov     eax, [esp+24h+var_20]
add     eax, 1F8h
mov     [esp+24h+var_24], eax
lea     edx, [eax+esi]
mov     eax, ebp
call    sub_4DF87F
mov     eax, [ebx+9]
sar     eax, 18h
test    al, 80h
jz      short loc_47078B
mov     eax, ebp
call    sub_4DEB53
xor     eax, eax
mov     al, [ebp+3]
inc     eax
mov     ebx, eax
shl     ebx, 2
sub     ebx, eax
shl     ebx, 4
mov     esi, [esp+24h+var_20]
mov     ecx, 0Ch
lea     edi, [ebp+160h]
lea     esi, [esi+ebx+1F8h]
rep movsd
xor     eax, eax
mov     al, [ebp+3]
inc     eax
mov     ebx, eax
shl     ebx, 2
sub     ebx, eax
shl     ebx, 4
mov     edx, [esp+24h+var_24]
add     edx, ebx
mov     eax, ebp
call    sub_4DF87F

loc_47078B:
mov     ax, [ebp+190h]
mov     edx, [esp+24h+var_1C]
mov     [edx+10h], ax
mov     ax, [ebp+192h]
add     eax, 28h ; '('
mov     [edx+12h], ax
mov     ax, [ebp+194h]
mov     [edx+14h], ax
mov     eax, [edx+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [edx], eax
mov     eax, [edx+10h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+4], eax
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+8], eax
push    0
push    0
mov     ax, [ebp+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     esi, [edx+10h]
mov     ecx, 0FFFFFCE0h
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 18h
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0C8h
mov     eax, esi
call    sub_4E01FC
mov     ax, [ebp+1C8h]
mov     edx, [esp+24h+var_1C]
mov     [edx+10h], ax
mov     ax, [ebp+1CAh]
add     eax, 78h ; 'x'
mov     [edx+12h], ax
mov     ax, [ebp+1CCh]
mov     [edx+14h], ax
mov     eax, [edx+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [edx], eax
mov     eax, [edx+10h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+4], eax
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+8], eax
push    820h
push    0
mov     ax, [ebp+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0FFFFF100h
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 28h ; '('
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 46h ; 'F'
mov     eax, esi
call    sub_4E01FC
mov     ax, [ebp+1C8h]
mov     edx, [esp+24h+var_1C]
mov     [edx+10h], ax
mov     ax, [ebp+1CAh]
add     eax, 78h ; 'x'
mov     [edx+12h], ax
mov     ax, [ebp+1CCh]
mov     [edx+14h], ax
mov     eax, [edx+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [edx], eax
mov     eax, [edx+10h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+4], eax
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+8], eax
push    0FFFFF7E0h
push    0
mov     ax, [ebp+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0FFFFF100h
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 30h ; '0'
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 46h ; 'F'
mov     eax, esi
call    sub_4E01FC
mov     ax, [ebp+1C8h]
mov     edx, [esp+24h+var_1C]
mov     [edx+10h], ax
mov     ax, [ebp+1CAh]
add     eax, 78h ; 'x'
mov     [edx+12h], ax
mov     ax, [ebp+1CCh]
mov     [edx+14h], ax
mov     eax, [edx+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [edx], eax
mov     eax, [edx+10h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+4], eax
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+8], eax
push    0
push    0
mov     ax, [ebp+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0FFFFF100h
mov     eax, esi
call    sub_4DD4C5
push    0
push    0
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 20h ; ' '
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 46h ; 'F'
mov     eax, esi
call    sub_4E01FC
jmp     short loc_470A13

loc_4709FF:
mov     eax, ebp
call    sub_4DEB53
lea     edx, [ebp+160h]
mov     eax, ebp
call    sub_4DF87F

loc_470A13:
add     esp, 0Ch
jmp     loc_470478
sub_47047F endp



; Attributes: thunk

sub_470A1B proc near
jmp     sub_4DE2F6
sub_470A1B endp




sub_470A20 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
test    byte ptr [eax+0Ch], 1
jnz     short loc_470A4D
mov     byte ptr [ecx+0ACh], 1

loc_470A3D:
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_470AA7
jmp     short loc_470A94

loc_470A4D:
mov     dh, [ecx+0Eh]
test    dh, 4
jz      short loc_470A5E
mov     byte ptr [ecx+0ACh], 0
jmp     short loc_470A3D

loc_470A5E:
test    dh, 8
jz      short loc_470A6C
mov     byte ptr [ecx+0ACh], 3
jmp     short loc_470A3D

loc_470A6C:
test    dh, 10h
jz      short loc_470A7A
mov     byte ptr [ecx+0ACh], 4
jmp     short loc_470A3D

loc_470A7A:
test    dh, 20h
jz      short loc_470AA7
mov     byte ptr [ecx+0ACh], 5
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_470AA7

loc_470A94:
mov     [ecx+0ADh], al
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA

loc_470AA7:
pop     edx
pop     ecx
pop     ebx
retn
sub_470A20 endp




sub_470AAB proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_470AB1[edx*4]
pop     edx
retn
sub_470AAB endp




sub_470ABA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
test    byte ptr [eax+0Eh], 4
jnz     short loc_470AF0
mov     byte ptr [ecx+0ACh], 5
mov     dl, [ecx+0ACh]
mov     [ecx+0ADh], dl
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_470AF0:
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_470ABA endp




sub_470AF8 proc near
push    edx
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_470B0F
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+9], 0

loc_470B0F:
pop     edx
retn
sub_470AF8 endp




sub_470B11 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     ecx, [eax+3A8h]
cmp     byte ptr [ecx+48h], 0
jz      loc_470BC1
mov     edx, [ecx+45h]
sar     edx, 18h
mov     esi, 4
mov     eax, edx
sar     edx, 1Fh
idiv    esi
test    edx, edx
jnz     loc_470BC5
mov     dl, [ecx+46h]
and     dl, 7
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     dh, ds:byte_51721C[eax*2]
lea     edi, [ecx+38h]
lea     esi, unk_51721E[eax*2]
movsd
movsd
call    sub_4DE13B
test    eax, eax
jz      short loc_470BC5
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
mov     dl, [ecx+46h]
and     dl, 3
mov     [eax+0Dh], dl
mov     dl, dh
and     edx, 0FFh
shl     edx, 3
add     edx, ebx
mov     bx, [edx+190h]
mov     si, [ecx+38h]
add     ebx, esi
mov     [eax+48h], bx
mov     bx, [edx+192h]
mov     di, [ecx+3Ah]
add     ebx, edi
mov     [eax+4Ah], bx
mov     dx, [edx+194h]
mov     bx, [ecx+3Ch]
add     edx, ebx
mov     [eax+4Ch], dx
jmp     short loc_470BC5

loc_470BC1:
mov     byte ptr [ebx+8], 2

loc_470BC5:
dec     byte ptr [ecx+48h]
jmp     loc_470479
sub_470B11 endp




sub_470BCD proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 1
jb      short loc_470BED
jbe     loc_470CC9
cmp     al, 2
jz      loc_470CF8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_470BED:
test    al, al
jnz     loc_470D3F
or      byte ptr [esi], 2
mov     edx, [esi+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     al, ds:byte_51726D[eax]
mov     [esi+3], al
mov     edx, [esi+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     al, ds:byte_51726C[eax]
mov     [esi+2], al
lea     edx, [esi+3]
mov     eax, esi
call    sub_4DD0F8
mov     byte ptr [esi+2], 49h ; 'I'
mov     word ptr [esi+54h], 0
mov     dword ptr [esi+64h], 0
mov     dword ptr [esi+44h], 0
mov     dword ptr [esi+48h], 0
mov     dword ptr [esi+64h], 0
mov     dword ptr [esi+70h], 0
mov     dword ptr [esi+74h], 0
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+34h], eax
mov     [esi+1Ch], eax
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+3Ch], eax
mov     [esi+24h], eax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+38h], eax
mov     [esi+20h], eax
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
cmp     byte ptr [esi+0Ch], 4
jnz     short loc_470CC1
mov     byte ptr [esi+0Dh], 40h ; '@'
mov     byte ptr [esi+8], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_470CC1:
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_470CC9:
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+34h], eax
mov     [esi+1Ch], eax
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+3Ch], eax
mov     [esi+24h], eax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+38h], eax
mov     [esi+20h], eax
jmp     short loc_470D15

loc_470CF8:
dec     byte ptr [esi+0Dh]
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 20h ; ' '
mov     eax, esi
call    sub_4DD43B
cmp     byte ptr [esi+0Dh], 0
jnz     short loc_470D15
mov     byte ptr [esi+8], 1

loc_470D15:
mov     eax, esi
call    sub_4DEADD
mov     edx, [esi+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, ds:byte_51726E[eax]
xor     ecx, ecx
mov     ebx, 200h
mov     eax, esi
call    sub_4ED88B

loc_470D3F:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_470BCD endp




sub_470D44 proc near
push    edx
mov     eax, offset byte_6DD9CC
xor     edx, edx
jmp     short loc_470D59

loc_470D4E:
inc     edx
add     eax, 4A0h
cmp     edx, 10h
jge     short loc_470D64

loc_470D59:
cmp     byte ptr [eax], 0
jz      short loc_470D4E
cmp     byte ptr [eax+2], 50h ; 'P'
jnz     short loc_470D4E

loc_470D64:
pop     edx
retn
sub_470D44 endp




sub_470D66 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+64h], 0
mov     word ptr [ecx+5Ch], 0
mov     dx, [ecx+5Ch]
mov     [ecx+54h], dx
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+60h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     edx, [ecx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+34h], edx
mov     [ecx+1Ch], edx
mov     edx, [ecx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+3Ch], edx
mov     [ecx+24h], edx
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+38h], edx
mov     [ecx+20h], edx
mov     byte ptr [ebp+12h], 0
xor     edx, edx
mov     dl, [ebp+12h]
mov     dl, ds:byte_517284[edx*2]
mov     [ebp+10h], dl
xor     edx, edx
mov     dl, [ebp+12h]
mov     dl, ds:byte_517285[edx*2]
mov     [ebp+11h], dl
xor     edx, edx
mov     dl, [ebp+10h]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], offset unk_51728C
mov     dword ptr [ebp+0], 0
inc     byte ptr [ecx+8]
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_470D66 endp




sub_470E6A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 408h
mov     edx, ds:dword_5F84E8
cmp     esi, edx
jnz     short loc_470EE3
mov     eax, 36h ; '6'
call    sub_47E888
test    eax, eax
jz      short loc_470EA3
lea     eax, [edx+14h]
mov     ecx, 1Ah
xor     ebx, ebx
xor     edx, edx
call    sub_4A62D4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_470EA3:
mov     eax, 549h
call    sub_47E888
test    eax, eax
jz      short loc_470ED4
mov     eax, 57h ; 'W'
call    sub_47EB4B
mov     ds:dword_560C00, edx
call    sub_470D44
mov     ds:dword_560C04, eax
mov     byte ptr [edx+9], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_470ED4:
or      ds:byte_5F8421, 40h
inc     byte ptr [edx+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_470EE3:
mov     dl, [eax+11h]
test    dl, dl
jnz     short loc_470F32
mov     bl, [eax+12h]
inc     bl
mov     [eax+12h], bl
xor     edx, edx
mov     dl, bl
cmp     ds:byte_517284[edx*2], 0FFh
jnz     short loc_470F04
mov     byte ptr [eax+12h], 0

loc_470F04:
xor     edx, edx
mov     dl, [eax+12h]
mov     dl, ds:byte_517284[edx*2]
mov     [eax+10h], dl
xor     edx, edx
mov     dl, [eax+12h]
mov     dl, ds:byte_517285[edx*2]
mov     [eax+11h], dl
xor     edx, edx
mov     dl, [eax+10h]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
jmp     short loc_470F40

loc_470F32:
mov     dh, dl
dec     dh
mov     [eax+11h], dh
mov     eax, esi
call    sub_4DEADD

loc_470F40:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_470E6A endp

jpt_470F87 dd offset loc_470F8E ; jump table for switch statement
dd offset loc_470FE8
dd offset loc_47100B
dd offset loc_471025



sub_470F68 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 10h
mov     esi, eax
lea     edx, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_470F87      ; jumptable 00470F87 default case
and     eax, 0FFh
jmp     jpt_470F87[eax*4] ; switch jump

loc_470F8E:             ; jumptable 00470F87 case 0
call    sub_470D44
mov     edx, [eax+12h]
sar     edx, 10h
add     edx, 20h ; ' '
mov     [esp+20h+var_20], edx
mov     edx, [eax+14h]
sar     edx, 10h
sub     edx, 79h ; 'y'
mov     [esp+20h+var_1C], edx
mov     edx, [eax+16h]
sar     edx, 10h
add     edx, 18h
mov     [esp+20h+var_18], edx
mov     ebx, [eax+54h]
sar     ebx, 10h
sub     ebx, 800h
mov     ecx, 12h
mov     edx, 107h
mov     eax, esp
call    sub_42AAA8
and     ds:byte_5F8364, 0FDh
and     byte ptr [esi], 0FDh

loc_470FE0:
inc     byte ptr [esi+0Ah]
jmp     def_470F87      ; jumptable 00470F87 default case

loc_470FE8:             ; jumptable 00470F87 case 1
call    sub_42ABA2
test    eax, eax
jnz     def_470F87      ; jumptable 00470F87 default case
lea     eax, [esi+14h]
mov     ecx, 14h
xor     ebx, ebx
mov     edx, 1
call    sub_4A62D4
jmp     short loc_470FE0

loc_47100B:             ; jumptable 00470F87 case 2
cmp     byte ptr ds:dword_77E760, 0
jnz     short def_470F87 ; jumptable 00470F87 default case
call    sub_42A98E
or      ds:byte_5F8364, 2
or      byte ptr [esi], 2
jmp     short loc_470FE0

loc_471025:             ; jumptable 00470F87 case 3
call    sub_42ABA2
test    eax, eax
jnz     short def_470F87 ; jumptable 00470F87 default case
and     ds:byte_5F8421, 0BFh
mov     byte ptr [edx+12h], 0
xor     eax, eax
mov     al, [edx+12h]
mov     al, ds:byte_517284[eax*2]
mov     [edx+10h], al
xor     eax, eax
mov     al, [edx+12h]
mov     al, ds:byte_517285[eax*2]
mov     [edx+11h], al
mov     dl, [edx+10h]
and     edx, 0FFh
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
dec     byte ptr [esi+9]
mov     byte ptr [esi+0Ah], 0

def_470F87:             ; jumptable 00470F87 default case
add     esp, 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_470F68 endp




sub_471078 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     word ptr [eax+44h], 0
jz      short loc_4710AB
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax

loc_4710AB:
cmp     byte ptr [esi+0Eh], 0
jnz     short loc_4710BD
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4710BD:
mov     edx, [esi+0Ah]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Eh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_471078 endp




sub_4710D5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4710DB[edx*4]
pop     edx
retn
sub_4710D5 endp



; Attributes: thunk

sub_4710E4 proc near
jmp     sub_4DE2F6
sub_4710E4 endp




sub_4710E9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4710F4[edx*4]
test    byte ptr [esi], 2
jz      short loc_471113
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 3Ch ; '<'
mov     eax, esi
call    sub_4ED88B

loc_471113:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4710E9 endp




sub_471118 proc near
push    edx
xor     edx, edx
jmp     short loc_471123

loc_47111D:
inc     edx
cmp     edx, 8
jge     short loc_471136

loc_471123:
lea     eax, [edx+54Bh]
call    sub_47E888
test    eax, eax
jz      short loc_47111D
mov     al, dl
pop     edx
retn

loc_471136:
mov     al, 0FFh
pop     edx
retn
sub_471118 endp




sub_47113A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+64h], 0
mov     word ptr [ecx+5Ch], 0
mov     ax, [ecx+5Ch]
mov     [ecx+54h], ax
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+60h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+34h], eax
mov     [ecx+1Ch], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+3Ch], eax
mov     [ecx+24h], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+38h], eax
mov     [ecx+20h], eax
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], offset unk_5172B0
inc     byte ptr [ecx+8]
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47113A endp




sub_47120A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     short loc_47123D
or      ds:byte_5F8421, 40h
mov     eax, 40h ; '@'
call    sub_47E888
test    eax, eax
jnz     short loc_471239
mov     dl, [edx+9]
inc     dl
mov     [esi+9], dl
jmp     short loc_47123D

loc_471239:
mov     byte ptr [edx+9], 2

loc_47123D:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47120A endp

align 4
jpt_471287 dd offset loc_47128E ; jump table for switch statement
dd offset loc_4712E1
dd offset loc_47130E
dd offset loc_471325



sub_471268 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 14h
mov     esi, eax
xor     ah, ah
mov     [esp+24h+var_14], ah
mov     al, [esi+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case
and     eax, 0FFh
jmp     jpt_471287[eax*4] ; switch jump

loc_47128E:             ; jumptable 00471287 case 0
mov     eax, [esi+12h]
sar     eax, 10h
mov     [esp+24h+var_24], eax
mov     eax, [esi+14h]
sar     eax, 10h
sub     eax, 92h
mov     [esp+24h+var_20], eax
mov     eax, [esi+16h]
sar     eax, 10h
mov     [esp+24h+var_1C], eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0D4h
mov     eax, esp
call    sub_42AAA8
and     ds:byte_5F8364, 0FDh

loc_4712C7:
inc     byte ptr [esi+0Ah]

def_471287:             ; jumptable 00471287 default case
cmp     [esp+24h+var_14], 0 ; jumptable 00471398 default case
jnz     loc_471351
mov     eax, esi
call    sub_4DEADD
jmp     loc_471351

loc_4712E1:             ; jumptable 00471287 case 1
call    sub_42ABA2
test    eax, eax
jnz     short def_471287 ; jumptable 00471287 default case
; jumptable 00471398 default case
lea     eax, [esi+14h]
mov     ecx, 1
xor     ebx, ebx
mov     edx, ecx
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]
jmp     short loc_471351

loc_47130E:             ; jumptable 00471287 case 2
cmp     byte ptr ds:dword_77E760, 0
jnz     short def_471287 ; jumptable 00471287 default case
; jumptable 00471398 default case
call    sub_42A98E
or      ds:byte_5F8364, 2
jmp     short loc_4712C7

loc_471325:             ; jumptable 00471287 case 3
call    sub_42ABA2
test    eax, eax
jnz     short def_471287 ; jumptable 00471287 default case
; jumptable 00471398 default case
and     ds:byte_5F8421, 0BFh
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
mov     eax, 40h ; '@'
call    sub_47E8B8
dec     byte ptr [esi+9]

loc_47134D:
mov     byte ptr [esi+0Ah], 0

loc_471351:
add     esp, 14h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_471268 endp

align 4
jpt_471398 dd offset loc_47139F ; jump table for switch statement
dd offset loc_4713E0
dd offset loc_471417
dd offset loc_471439
dd offset loc_471484
dd offset loc_4714D5



sub_471374 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 14h
mov     esi, eax
xor     ah, ah
mov     [esp+24h+var_14], ah
mov     ecx, offset byte_5F8364
mov     al, [esi+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case
and     eax, 0FFh
jmp     jpt_471398[eax*4] ; switch jump

loc_47139F:             ; jumptable 00471398 case 0
mov     eax, [esi+12h]
sar     eax, 10h
mov     [esp+24h+var_24], eax
mov     eax, [esi+14h]
sar     eax, 10h
sub     eax, 92h
mov     [esp+24h+var_20], eax
mov     eax, [esi+16h]
sar     eax, 10h
mov     [esp+24h+var_1C], eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0D4h
mov     eax, esp
call    sub_42AAA8
and     ds:byte_5F8364, 0FDh

loc_4713D8:
inc     byte ptr [esi+0Ah]
jmp     def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case

loc_4713E0:             ; jumptable 00471398 case 1
call    sub_42ABA2
test    eax, eax
jnz     def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case
call    sub_471118
cmp     al, 0FFh
jnz     short loc_471403
mov     byte ptr [esi+0Ch], 1
mov     byte ptr [esi+0Ah], 3
jmp     def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case

loc_471403:
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ch], 1Eh
jmp     short loc_4713D8

loc_471417:             ; jumptable 00471398 case 2
mov     dl, [esi+0Ch]
dec     dl
mov     [esi+0Ch], dl
jnz     def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case
mov     byte ptr [esi+0Ch], 0Fh
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, esi
call    sub_4DE96B
jmp     short loc_4713D8

loc_471439:             ; jumptable 00471398 case 3
mov     ch, [esi+0Ch]
dec     ch
mov     [esi+0Ch], ch
jnz     def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
call    sub_471118
xor     edx, edx
mov     dl, al
lea     eax, [esi+14h]
cmp     edx, 0FFh
jnz     short loc_471470
mov     ecx, 2
jmp     short loc_471473

loc_471470:
lea     ecx, [edx+3]

loc_471473:
xor     ebx, ebx
mov     edx, 1
call    sub_4A62D4
jmp     loc_4713D8

loc_471484:             ; jumptable 00471398 case 4
cmp     byte ptr ds:dword_77E760, 0
jnz     def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case
call    sub_42A98E
call    sub_471118
xor     edx, edx
mov     dl, al
cmp     edx, 0FFh
jz      short loc_4714CD
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4714CD
lea     eax, [edx+38h]
call    sub_47E8B8
lea     eax, [edx+54Bh]
call    sub_47EA91
mov     eax, 19h
call    sub_47EEAE

loc_4714CD:
or      byte ptr [ecx], 2
jmp     loc_4713D8

loc_4714D5:             ; jumptable 00471398 case 5
call    sub_42ABA2
test    eax, eax
jnz     def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case
and     ds:byte_5F8421, 0BFh
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
mov     eax, 40h ; '@'
call    sub_47E8B8
mov     byte ptr [esi+9], 0
jmp     loc_47134D
sub_471374 endp




sub_471507 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_47150D[edx*4]
pop     edx
retn
sub_471507 endp



; Attributes: thunk

sub_471516 proc near
jmp     sub_4DE2F6
sub_471516 endp




sub_47151B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_471526[edx*4]
test    byte ptr [esi], 2
jz      short loc_471545
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 3Ch ; '<'
mov     eax, esi
call    sub_4ED88B

loc_471545:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47151B endp




sub_47154A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+3D8h]
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
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
mov     word ptr [ecx+15Eh], 4210h
call    rand_
mov     [ebp+6], ax
xor     edx, edx
mov     dl, [ecx+8]
mov     eax, ecx
call    ds:funcs_471597[edx*4]
mov     al, [ecx+0ADh]
mov     ah, [ecx+0ACh]
cmp     al, ah
jz      short loc_4715B6
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
jmp     short loc_4715D1

loc_4715B6:
test    byte ptr [ebp+4], 10h
jz      short loc_4715C5
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_4715D8

loc_4715C5:
xor     ebx, ebx
mov     bl, [ecx+0A4h]
xor     edx, edx
mov     dl, ah

loc_4715D1:
mov     eax, ecx
call    sub_4DE96B

