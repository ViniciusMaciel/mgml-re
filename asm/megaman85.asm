loc_4D19B3:
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     edx, [eax+0DCh]
call    sub_4D1A28
test    eax, eax
jnz     short loc_4D1A23
mov     bx, [edx+2]
dec     bx
mov     [edx+2], bx
jnz     short loc_4D19E0
mov     eax, esi
call    sub_4D176E
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D19E0:
call    rand_
and     eax, 0Fh
cmp     eax, 0Ah
jl      short loc_4D1A03
cmp     byte ptr [edx+1], 0
jz      short loc_4D19FA
add     word ptr [esi+56h], 40h ; '@'
jmp     short loc_4D19FF

loc_4D19FA:
sub     word ptr [esi+56h], 40h ; '@'

loc_4D19FF:
and     byte ptr [esi+57h], 0Fh

loc_4D1A03:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_4D17E1

loc_4D1A23:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D198E endp




sub_4D1A28 proc near
push    ebx
push    edx
lea     edx, [eax+0DCh]
mov     bl, [edx+20h]
test    bl, 1
jz      short loc_4D1A45
call    sub_4D1A5C
mov     eax, 1
pop     edx
pop     ebx
retn

loc_4D1A45:
test    bl, 4
jz      short loc_4D1A57
call    sub_4D1A93
mov     eax, 0FFFFFFFFh
pop     edx
pop     ebx
retn

loc_4D1A57:
xor     eax, eax
pop     edx
pop     ebx
retn
sub_4D1A28 endp




sub_4D1A5C proc near
push    ebx
push    edx
push    esi
push    edi
lea     edx, [eax+0DCh]
lea     edi, [eax+14h]
lea     esi, [eax+2Ch]
movsd
movsd
lea     edi, [eax+1Ch]
lea     esi, [eax+34h]
movsd
movsd
movsd
movsd
mov     bx, [eax+56h]
add     bh, 8
and     bh, 0Fh
mov     [edx+0Ah], bx
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4D1A5C endp




sub_4D1A93 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+0DCh]
mov     word ptr [eax+44h], 180h
mov     word ptr [eax+46h], 0FE00h
mov     word ptr [eax+4Eh], 50h ; 'P'
mov     word ptr [eax+54h], 0E80h
lea     edx, [eax+14h]
mov     eax, 15Ch
call    sub_4D8BC3
mov     byte ptr [esi+74h], 1
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     dx, [esi+4Eh]
add     [esi+46h], dx
xor     ecx, ecx
mov     cl, [esi+2]
mov     edx, ds:dword_55A110
mov     edx, [edx+ecx*4]
mov     dl, [edx+0Ah]
xor     dh, dh
mov     [edi+3Ch], dx
mov     byte ptr [esi+9], 5
mov     [esi+0Ah], dh
jmp     loc_4D1768
sub_4D1A93 endp




sub_4D1B0D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+0DCh]
mov     ecx, [eax+54h]
sar     ecx, 10h
mov     ebx, [edx+8]
sar     ebx, 10h
cmp     ecx, ebx
jnz     short loc_4D1B32
call    sub_4D176E
jmp     loc_4D1768

loc_4D1B32:
mov     bx, [eax+54h]
test    bx, bx
jz      short loc_4D1B5A
cmp     bx, 800h
jl      short loc_4D1B4D
mov     edi, ebx
add     edi, 20h ; ' '
mov     [eax+54h], di
jmp     short loc_4D1B56

loc_4D1B4D:
mov     esi, ebx
sub     esi, 20h ; ' '
mov     [eax+54h], si

loc_4D1B56:
and     byte ptr [eax+55h], 0Fh

loc_4D1B5A:
mov     ecx, [eax+54h]
sar     ecx, 10h
mov     edx, [edx+8]
sar     edx, 10h
cmp     ecx, edx
jle     short loc_4D1B71
sub     word ptr [eax+56h], 40h ; '@'
jmp     short loc_4D1B76

loc_4D1B71:
add     word ptr [eax+56h], 40h ; '@'

loc_4D1B76:
and     byte ptr [eax+57h], 0Fh
jmp     loc_4D1768
sub_4D1B0D endp




sub_4D1B7F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+0DCh]
mov     bx, [eax+54h]
test    bx, bx
jz      short loc_4D1BB2
cmp     bx, 800h
jl      short loc_4D1BA5
mov     edi, ebx
add     edi, 20h ; ' '
mov     [eax+54h], di
jmp     short loc_4D1BAE

loc_4D1BA5:
mov     esi, ebx
sub     esi, 20h ; ' '
mov     [eax+54h], si

loc_4D1BAE:
and     byte ptr [eax+55h], 0Fh

loc_4D1BB2:
mov     bx, [edx+4]
test    bx, bx
jnz     short loc_4D1BC5
call    sub_4D176E
jmp     loc_4D1768

loc_4D1BC5:
mov     ecx, ebx
dec     ecx
mov     [edx+4], cx
cmp     byte ptr [eax+9], 2
jnz     loc_4D1768
call    sub_4D17E1
jmp     loc_4D1768
sub_4D1B7F endp




sub_4D1BE0 proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4D1C24
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
mov     ecx, 80h
call    sub_4DE552
test    ax, ax
jz      short loc_4D1C1C
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D1C1C:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D1C24:
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ebp, offset byte_5F8364
lea     edi, [eax+0DCh]
call    sub_4D1A28
test    eax, eax
jnz     loc_4D1767
mov     ax, [edi+3Eh]
mov     dx, [esi+54h]
add     edx, eax
mov     [esi+54h], dx
cmp     dx, 40h ; '@'
jnz     short loc_4D1C5E
mov     word ptr [edi+3Eh], 20h ; ' '

loc_4D1C5E:
cmp     word ptr [esi+54h], 180h
jnz     short loc_4D1C6C
mov     word ptr [edi+3Eh], 0FFE0h

loc_4D1C6C:
mov     ax, [edi+6]
test    ax, ax
jz      loc_4D1CF1
mov     edx, eax
dec     edx
mov     [edi+6], dx
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
push    800h
mov     eax, [ebp+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     edx, [esi+54h]
sar     edx, 10h
lea     eax, [esi+1Ch]
mov     ebx, 400h
call    sub_4DE639
mov     edx, eax
test    eax, eax
jz      short loc_4D1CD9
cmp     dword ptr [esi+80h], 9C40h
ja      short loc_4D1CD9
mov     eax, esi
call    sub_4D1A93
jmp     loc_4D1767

loc_4D1CD9:
test    edx, edx
jnz     loc_4D1767
cmp     dword ptr [esi+80h], 3D090h
jb      loc_4D1767

loc_4D1CF1:
mov     word ptr [edi+4], 1Eh
mov     byte ptr [esi+9], 3
mov     byte ptr [esi+0Ah], 0
jmp     loc_4D1767
sub_4D1BE0 endp




sub_4D1D04 proc near
cmp     byte ptr [eax+0Ah], 0
jnz     loc_4D1D8C
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 0DCh
test    byte ptr [eax+20h], 1
jz      short loc_4D1D25
mov     word ptr [esi+44h], 0

loc_4D1D25:
mov     dh, [esi+74h]
test    dh, dh
jnz     short loc_4D1D44
mov     word ptr [eax+3Ch], 0
mov     word ptr [eax+4], 1Eh
mov     byte ptr [esi+9], 3
mov     [esi+0Ah], dh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D1D44:
test    byte ptr [eax+2Fh], 2
jz      short loc_4D1D66
mov     word ptr [eax+3Ch], 0
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+56h], ax
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D1D66:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D1D8C:
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 0DCh
test    byte ptr [eax+20h], 1
jz      short loc_4D1DA3
mov     word ptr [esi+44h], 0

loc_4D1DA3:
mov     dh, [esi+74h]
test    dh, dh
jnz     short loc_4D1DBC
mov     word ptr [eax+4], 1Eh
mov     byte ptr [esi+9], 3
mov     [esi+0Ah], dh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D1DBC:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D1D04 endp




sub_4D1DE2 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
add     eax, 0DCh
mov     dx, [ebp+54h]
add     dh, 2
and     dh, 0Fh
mov     [ebp+54h], dx
xor     edx, edx
mov     bx, [eax+8]
dec     bx
mov     [eax+8], bx
jnz     short loc_4D1E10
mov     edx, 1

loc_4D1E10:
test    byte ptr [eax+20h], 1
jz      short loc_4D1E1B
mov     edx, 1

loc_4D1E1B:
cmp     byte ptr [ebp+74h], 0
jz      short loc_4D1E25
test    edx, edx
jz      short loc_4D1E5C

loc_4D1E25:
call    sub_4DE13B
test    eax, eax
jz      short loc_4D1E41
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_4D1E41:
lea     edx, [ebp+14h]
mov     eax, ebp
call    sub_4AF9F8
mov     byte ptr [ebp+8], 2
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 0
jmp     loc_4D1767

loc_4D1E5C:
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
mov     eax, ebp
call    sub_4DD43B
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax
jmp     loc_4D1767
sub_4D1DE2 endp



; Attributes: thunk

sub_4D1E82 proc near
jmp     sub_4DE371
sub_4D1E82 endp

unk_4D1E87 db    0
dword_4D1E88 dd 3 dup(2), 53000000h, 57565251h, 8910EC83h
dd 0BEE789C1h
dd offset unk_4D1E87
movsd
movsd
movsd
movsd
lea     edx, [eax+0DCh]
cmp     byte ptr [eax+8], 0
jnz     loc_4D1F97
or      byte ptr [ecx], 6
mov     ax, [ecx+14h]
mov     [edx], ax
mov     ax, [ecx+16h]
mov     [edx+2], ax
mov     ax, [ecx+18h]
mov     [edx+4], ax
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
add     eax, ebx
add     eax, eax
mov     [edx+0Ch], eax
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [edx+8], 800h
cmp     byte ptr [ecx+0Fh], 0
jnz     short loc_4D1F11
movsx   ax, byte ptr [ecx+0Eh]
mov     [edx+6], ax
mov     word ptr [ecx+56h], 400h
jmp     short loc_4D1F28

loc_4D1F11:
movsx   ax, byte ptr [ecx+0Eh]
mov     [edx+6], ax
mov     edi, eax
neg     edi
mov     [edx+6], di
mov     word ptr [ecx+56h], 0C00h

loc_4D1F28:
mov     eax, 800h
call    sub_4EF008
imul    eax, [edx+0Ch]
sar     eax, 0Ch
movsx   ebx, ax
movsx   eax, word ptr [edx]
add     eax, ebx
mov     [ecx+14h], ax
mov     eax, 800h
call    sub_4EF003
imul    eax, [edx+0Ch]
sar     eax, 0Ch
cwde
mov     edx, [edx+2]
sar     edx, 10h
add     eax, edx
mov     [ecx+18h], ax
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_4D1F7F
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
jmp     short loc_4D1F88

loc_4D1F7F:
xor     edx, edx
mov     eax, ecx
call    sub_4DD107

loc_4D1F88:
mov     dword ptr [ecx+0C4h], offset unk_808080
inc     byte ptr [ecx+8]
jmp     short loc_4D200A

loc_4D1F97:
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
mov     ax, [edx+8]
add     ax, [edx+6]
and     ah, 0Fh
mov     [edx+8], ax
mov     ax, [ecx+56h]
add     ax, [edx+6]
and     ah, 0Fh
mov     [ecx+56h], ax
mov     eax, [edx+6]
sar     eax, 10h
call    sub_4EF008
imul    eax, [edx+0Ch]
sar     eax, 0Ch
cwde
movsx   ebx, word ptr [edx]
add     eax, ebx
mov     [ecx+14h], ax
mov     eax, [edx+6]
sar     eax, 10h
call    sub_4EF003
imul    eax, [edx+0Ch]
sar     eax, 0Ch
cwde
mov     edx, [edx+2]
sar     edx, 10h
add     eax, edx
mov     [ecx+18h], ax

loc_4D200A:
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
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
add     esp, 10h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn



sub_4D205B proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+0CCh]
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
call    rand_
mov     [ebx+2], ax
xor     edx, edx
mov     dl, [ecx+8]
mov     eax, ecx
call    ds:funcs_4D2095[edx*4]
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_24], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
test    byte ptr [ecx], 1
jz      short loc_4D20DB
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ecx
call    sub_432697

loc_4D20DB:
add     esp, 10h

loc_4D20DE:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D205B endp




sub_4D20E4 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+0CCh]
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ebx], 0
mov     dword ptr [ebx+4], 0
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_24], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     word ptr [ecx+6Eh], 400h
mov     dword ptr [ecx+78h], offset unk_539550
mov     dword ptr [ecx+10h], offset unk_53955C
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     eax, ecx
call    sub_4D21AB
jmp     loc_4D20DB
sub_4D20E4 endp




sub_4D21AB proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+0CCh]
xor     ebx, ebx
mov     bl, [eax+9]
call    ds:funcs_4D21BD[ebx*4]
lea     edi, [edx+0BCh]
lea     esi, [edx+14h]
movsd
movsd
test    byte ptr [ecx], 1
jz      loc_4D20DE
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
and     byte ptr [ecx], 0FEh
jmp     loc_4D20DE
sub_4D21AB endp



; Attributes: thunk

sub_4D21EA proc near
jmp     sub_4DE371
sub_4D21EA endp




sub_4D21EF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     edx, [eax+0CCh]
mov     ecx, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4D2212
jbe     short loc_4D222F
cmp     al, 2
jz      short loc_4D2253
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D2212:
test    al, al
jnz     short loc_4D2261
inc     al
mov     [esi+0Ah], al
mov     word ptr [edx+4], 0
mov     dword ptr [esi+44h], 0
mov     dword ptr [esi+48h], 0

loc_4D222F:
mov     edx, [ecx+184h]
cmp     esi, edx
jnz     short loc_4D2261
mov     ecx, [edx+9]
sar     ecx, 18h
lea     eax, [edx+14h]
xor     ebx, ebx
xor     edx, edx
call    sub_4A62D4
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D2253:
cmp     byte ptr ds:dword_77E760, 0
jnz     short loc_4D2261
dec     al
mov     [esi+0Ah], al

loc_4D2261:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D21EF endp




sub_4D2266 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D226C[edx*4]
pop     edx
retn
sub_4D2266 endp




sub_4D2275 proc near
push    ebx
push    ecx
push    edx
sub     esp, 30h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
inc     byte ptr [ecx+8]
mov     dword ptr [ecx+8Ch], 3E000000h
mov     dword ptr [ecx+90h], 0
mov     dword ptr [ecx+94h], 0
mov     dword ptr [ecx+98h], 0
mov     dword ptr [ecx+9Ch], 3E000000h
mov     dword ptr [ecx+0A0h], 0
mov     dword ptr [ecx+0A4h], 0
mov     dword ptr [ecx+0A8h], 0
mov     dword ptr [ecx+0ACh], 3E800000h
lea     eax, [ecx+54h]
mov     edx, esp
call    sub_4EF638
lea     edx, [ecx+8Ch]
mov     ebx, edx
mov     eax, esp
call    sub_4EF388
add     esp, 30h
pop     edx
pop     ecx
pop     ebx
retn
sub_4D2275 endp




sub_4D230A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 30h
mov     esi, eax
mov     edi, [eax+0C8h]
add     edi, 348h
mov     eax, [edi+14h]
shr     eax, 1
xor     edx, edx
mov     dl, [esi+3]
cmp     eax, edx
jnz     short loc_4D23A7
test    byte ptr [edi+14h], 1
jz      short loc_4D23A7
mov     dword ptr [esi+8Ch], 3E000000h
mov     dword ptr [esi+90h], 0
mov     dword ptr [esi+94h], 0
mov     dword ptr [esi+98h], 0
mov     dword ptr [esi+9Ch], 3E000000h
mov     dword ptr [esi+0A0h], 0
mov     dword ptr [esi+0A4h], 0
mov     dword ptr [esi+0A8h], 0
mov     dword ptr [esi+0ACh], 3E000000h
lea     eax, [esi+54h]
mov     edx, esp
call    sub_4EF638
lea     edx, [esi+8Ch]
mov     ebx, edx
mov     eax, esp
call    sub_4EF388

loc_4D23A7:
mov     cl, [esi+3]
mov     eax, 1
shl     eax, cl
test    [edi+10h], eax
jnz     short loc_4D23BD
mov     eax, esi
call    sub_4DE371

loc_4D23BD:
add     esp, 30h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D230A endp



; Attributes: thunk

sub_4D23C6 proc near
jmp     sub_4DE371
sub_4D23C6 endp




sub_4D23CB proc near
push    ecx
push    edx
lea     ecx, [eax+0DCh]
mov     edx, eax
mov     eax, ecx
call    sub_4E19CA
test    eax, eax
jz      short loc_4D23E5
mov     eax, 1

loc_4D23E5:
pop     edx
pop     ecx
retn
sub_4D23CB endp




sub_4D23E8 proc near
push    ecx
push    edx
lea     ecx, [eax+0DCh]
mov     edx, eax
mov     eax, ecx
call    sub_4E19CA
test    eax, eax
jnz     short loc_4D2405
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4D2405:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4D23E8 endp




sub_4D240A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+0DCh]
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+78h], offset unk_539574
mov     byte ptr [ecx+74h], 1
mov     byte ptr [ecx+0Ch], 0
mov     word ptr [ecx+44h], 0
call    rand_
and     ah, 0Fh
mov     [ecx+56h], ax
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [esi+18h], 2000000h
mov     ebx, 0FFFFFFA0h
mov     edx, 1
mov     eax, esi
call    sub_4E19B9
mov     dword ptr [esi+20h], 0
mov     eax, [esi+20h]
mov     [esi+1Ch], eax
call    rand_
and     ah, 0Fh
mov     [esi+10h], ax
mov     eax, ecx
call    sub_42C592
mov     [esi+12h], ax
mov     edx, [esi+10h]
sar     edx, 10h
mov     eax, [ecx+14h]
sar     eax, 10h
sub     edx, 82h
cmp     eax, edx
jle     short loc_4D24B9
mov     ax, [esi+12h]
sub     eax, 82h
mov     [ecx+16h], ax
mov     word ptr [esi+14h], 82h
jmp     short loc_4D24C7

loc_4D24B9:
mov     ax, [ecx+16h]
mov     dx, [esi+12h]
sub     eax, edx
mov     [esi+14h], ax

loc_4D24C7:
mov     word ptr [esi+16h], 0FF7Eh
inc     byte ptr [ecx+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D240A endp




sub_4D24D5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+0DCh]
call    sub_4D23CB
test    eax, eax
jz      short loc_4D24FD
mov     byte ptr [esi+9], 1
mov     ax, [esi+56h]
mov     [esi+66h], ax
mov     word ptr [esi+46h], 0

loc_4D24FD:
add     word ptr [edi+10h], 22h ; '"'
mov     ecx, [edi+10h]
sar     ecx, 10h
mov     edx, [edi+12h]
sar     edx, 10h
add     ecx, edx
shl     ecx, 10h
mov     eax, [edi+0Eh]
sar     eax, 10h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 4
add     ecx, eax
mov     [esi+20h], ecx
add     word ptr [esi+56h], 14h
and     byte ptr [esi+57h], 0Fh
mov     cx, [esi+44h]
sub     ecx, 5
mov     [esi+44h], cx
test    cx, cx
jge     short loc_4D2551
mov     word ptr [esi+44h], 0

loc_4D2551:
push    0
push    0
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ebx, [esi+64h]
sar     ebx, 10h
lea     edx, [esi+1Ch]
lea     eax, [esi+14h]
call    sub_4DD4C5
mov     eax, esi
call    sub_42DE56
test    eax, eax
jnz     loc_4D25EE
mov     eax, esi
call    sub_42C592
mov     ebx, eax
sub     ax, [edi+12h]
test    ax, ax
jge     short loc_4D2594
movsx   edx, ax
neg     edx
jmp     short loc_4D2597

loc_4D2594:
movsx   edx, ax

loc_4D2597:
cmp     edx, 0Ah
jle     short loc_4D25AF
test    ax, ax
jl      short loc_4D25A8
add     word ptr [edi+12h], 0Ah
jmp     short loc_4D25B3

loc_4D25A8:
sub     word ptr [edi+12h], 0Ah
jmp     short loc_4D25B3

loc_4D25AF:
mov     [edi+12h], bx

loc_4D25B3:
mov     edx, [edi+10h]
sar     edx, 10h
mov     eax, [edi+12h]
sar     eax, 10h
add     edx, eax
shl     edx, 10h
mov     eax, [edi+0Eh]
sar     eax, 10h
call    sub_4EF008
mov     edi, eax
shl     edi, 2
sub     edi, eax
shl     edi, 3
add     eax, edi
shl     eax, 4
add     edx, eax
mov     [esi+20h], edx
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B

loc_4D25EE:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D24D5 endp




sub_4D25F4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+0DCh]
mov     edx, offset byte_5F8364
call    sub_4D23E8
test    eax, eax
jz      short loc_4D2613
mov     byte ptr [esi+9], 0

loc_4D2613:
add     word ptr [edi+10h], 22h ; '"'
mov     eax, [edi+10h]
sar     eax, 10h
mov     ecx, [edi+12h]
sar     ecx, 10h
add     eax, ecx
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [edx+20h]
mov     ecx, [esi+20h]
sub     eax, ecx
mov     ecx, eax
mov     eax, 5
test    ecx, ecx
jge     short loc_4D2644
mov     eax, 0FFFFFFFBh

loc_4D2644:
mov     cx, [esi+46h]
add     ecx, eax
mov     [esi+46h], cx
test    cx, cx
jge     short loc_4D265D
mov     eax, [esi+44h]
sar     eax, 10h
neg     eax
jmp     short loc_4D2663

loc_4D265D:
mov     eax, [esi+44h]
sar     eax, 10h

loc_4D2663:
cmp     eax, 0A0h
jle     short loc_4D267F
cmp     word ptr [esi+46h], 0
jle     short loc_4D2679
mov     word ptr [esi+46h], 0A0h
jmp     short loc_4D267F

loc_4D2679:
mov     word ptr [esi+46h], 0FF60h

loc_4D267F:
mov     ecx, [esi+44h]
sar     ecx, 10h
sar     ecx, 4
mov     eax, [edi+12h]
sar     eax, 10h
add     eax, ecx
mov     [edi+14h], ax
mov     ecx, [edi+12h]
sar     ecx, 10h
mov     eax, [edi+14h]
sar     eax, 10h
cmp     ecx, eax
jle     short loc_4D26B2
mov     ax, [edi+16h]
mov     [edi+14h], ax
mov     word ptr [esi+46h], 0

loc_4D26B2:
mov     ecx, [edi+10h]
sar     ecx, 10h
mov     eax, [edi+12h]
sar     eax, 10h
add     eax, ecx
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [edi+0Eh]
sar     eax, 10h
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
sub     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 4
add     [esi+20h], eax
add     word ptr [esi+56h], 14h
and     byte ptr [esi+57h], 0Fh
mov     ebx, [esi+64h]
sar     ebx, 10h
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 20h ; ' '
call    sub_4DE552
add     [esi+66h], ax
and     byte ptr [esi+67h], 0Fh
mov     bx, [esi+44h]
add     ebx, 5
mov     [esi+44h], bx
cmp     bx, 0A0h
jle     short loc_4D2722
mov     word ptr [esi+44h], 0A0h

loc_4D2722:
push    0
push    0
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ebx, [esi+64h]
sar     ebx, 10h
lea     edx, [esi+1Ch]
lea     eax, [esi+14h]
call    sub_4DD4C5
mov     eax, esi
call    sub_42DE56
test    eax, eax
jnz     loc_4D27D6
mov     eax, esi
call    sub_42C592
mov     ebx, eax
mov     edx, [edi+10h]
sar     edx, 10h
movsx   ecx, ax
cmp     ecx, edx
jz      loc_4D25EE
sub     ax, [edi+12h]
test    ax, ax
jge     short loc_4D2776
movsx   edx, ax
neg     edx
jmp     short loc_4D2779

loc_4D2776:
movsx   edx, ax

loc_4D2779:
cmp     edx, 0Ah
jle     short loc_4D2791
test    ax, ax
jl      short loc_4D278A
add     word ptr [edi+12h], 0Ah
jmp     short loc_4D2795

loc_4D278A:
sub     word ptr [edi+12h], 0Ah
jmp     short loc_4D2795

loc_4D2791:
mov     [edi+12h], bx

loc_4D2795:
mov     edx, [edi+10h]
sar     edx, 10h
mov     eax, [edi+12h]
sar     eax, 10h
add     eax, edx
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [edi+0Eh]
sar     eax, 10h
call    sub_4EF008
mov     edi, eax
shl     eax, 2
sub     eax, edi
shl     eax, 3
add     eax, edi
shl     eax, 4
add     [esi+20h], eax
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
jmp     loc_4D25EE

loc_4D27D6:
add     esi, 66h ; 'f'
mov     edx, eax
mov     eax, esi
call    sub_42DACB
jmp     loc_4D25EE
sub_4D25F4 endp




sub_4D27E7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+0DCh]
cmp     byte ptr [eax+0Ch], 1
jnz     short loc_4D2821
push    0
push    0
add     word ptr [ebp+56h], 190h
add     word ptr [ebp+54h], 190h
mov     ebx, [ebp+64h]
sar     ebx, 10h
lea     edx, [ebp+1Ch]
lea     eax, [ebp+14h]
mov     ecx, 200h
call    sub_4DD4C5

loc_4D2821:
add     word ptr [esi+1Ah], 33h ; '3'
cmp     dword ptr [esi+18h], 3000000h
jl      short loc_4D2859
call    sub_4DE13B
test    eax, eax
jz      short loc_4D284B
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_4D284B:
mov     byte ptr [ebp+8], 2
lea     edx, [ebp+14h]
mov     eax, ebp
call    sub_4AF9F8

loc_4D2859:
mov     eax, ebp
call    sub_42DE56
pop     ebp
jmp     loc_4D25EE
sub_4D27E7 endp




sub_4D2866 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+0DCh]
cmp     dword ptr [edi+1Ch], 0
jz      short loc_4D28BD
test    byte ptr [edi+1Fh], 20h
jz      short loc_4D28A0
mov     byte ptr [esi+0Ch], 1
mov     byte ptr [esi+9], 2
mov     ecx, [edi+26h]
sar     ecx, 10h
mov     ebx, [edi+22h]
sar     ebx, 10h
xor     edx, edx
xor     eax, eax
call    sub_49D994
mov     [esi+66h], ax

loc_4D28A0:
test    byte ptr [edi+1Fh], 2
jz      short loc_4D28AA
mov     byte ptr [esi+9], 2

loc_4D28AA:
test    byte ptr [edi+1Fh], 8
jz      short loc_4D28BD
test    dword ptr [edi+1Ch], 0FFFFFFh
jz      short loc_4D28BD
mov     byte ptr [esi+9], 2

loc_4D28BD:
xor     ecx, ecx
mov     cl, [esi+9]
mov     eax, esi
call    ds:funcs_4D28C4[ecx*4]
push    0
push    offset unk_800000
push    4080000h
lea     eax, [edi+1Ch]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
lea     eax, [esi+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 20h ; ' '
call    sub_4E01FC
mov     dword ptr [edi+1Ch], 0
jmp     loc_4D25EE
sub_4D2866 endp



; Attributes: thunk

sub_4D2901 proc near
jmp     sub_4DE371
sub_4D2901 endp




sub_4D2906 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 30h
mov     ecx, eax
lea     edx, [eax+0DCh]
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
movzx   esi, byte ptr [eax+8]
call    ds:funcs_4D2934[esi*4]
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
lea     esi, [ecx+8Ch]
mov     eax, esi
call    sub_4EF184
mov     eax, [edx+18h]
sar     eax, 10h
mov     [edx+34h], eax
mov     [edx+30h], eax
mov     [edx+2Ch], eax
add     edx, 2Ch ; ','
mov     eax, esi
call    sub_4EF689
mov     eax, esp
call    sub_4EF184
lea     eax, [ecx+54h]
mov     edx, esp
call    sub_4EF5F7
mov     ebx, esi
mov     edx, esp
mov     eax, esi
call    sub_4EF388
test    byte ptr [ecx], 2
jz      short loc_4D29AC
mov     eax, [ecx+54h]
sar     eax, 10h
lea     esi, [ecx+0BCh]
mov     ecx, eax
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED95E

loc_4D29AC:
add     esp, 30h
jmp     loc_4D25EE
sub_4D2906 endp




sub_4D29B4 proc near
push    ecx
push    edx
push    esi
push    edi
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
mov     dl, [eax+0Ch]
mov     [eax+0Dh], dl
mov     edx, [eax+52h]
sar     edx, 10h
mov     ecx, [eax+5Ah]
sar     ecx, 10h
cmp     edx, ecx
jz      short loc_4D29EC
mov     byte ptr [eax+0Ch], 1

loc_4D29EC:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D29F1[edx*4]
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D29B4 endp




sub_4D29FD proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ecx, eax
lea     ebp, [eax+0DCh]
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, 1000h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     byte ptr [ecx+8], 1
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+78h], 0
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, ds:dword_55A110
mov     ebx, [ebx+eax*4]
mov     al, [ebx+0Ah]
mov     [ecx+73h], al
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A110
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
mov     [ecx+6Eh], ax
mov     dword ptr [ebp+8], 0
add     esp, 10h

loc_4D2ACB:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D29FD endp




sub_4D2AD2 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebp, eax
add     eax, 0DCh
mov     [esp+30h+var_1C], eax
mov     eax, 60Fh
call    sub_47E888
test    eax, eax
jz      short loc_4D2B04
mov     ax, [ebp+54h]
add     eax, 1Eh
and     ah, 0Fh
mov     [ebp+54h], ax

loc_4D2B04:             ; int
lea     ecx, [ebp+8Ch]
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 1000h
mov     [esp+30h+var_30], edx
mov     [esp+30h+var_2C], edx
mov     [esp+30h+var_28], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, [esp+30h+var_1C]
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    0
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 5000000h
push    eax
mov     eax, [esp+3Ch+var_1C]
add     eax, 8
mov     [esp+3Ch+var_20], eax
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 78h ; 'x'
mov     eax, [esp+44h+var_1C]
call    sub_4E01FC
mov     edi, [esp+30h+var_1C]
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    0
mov     eax, [esp+38h+var_1C]
add     word ptr [eax+4], 0B4h
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 5000000h
push    eax
mov     eax, [esp+3Ch+var_20]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 78h ; 'x'
mov     eax, [esp+44h+var_1C]
call    sub_4E01FC
mov     edi, [esp+30h+var_1C]
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    0
mov     eax, [esp+38h+var_1C]
sub     word ptr [eax+4], 0B4h
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 5000000h
push    eax
mov     edx, [esp+3Ch+var_20]
push    edx
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 78h ; 'x'
mov     eax, [esp+44h+var_1C]
call    sub_4E01FC
mov     eax, [esp+30h+var_1C]
mov     dword ptr [eax+8], 0
add     esp, 18h
jmp     loc_4D2ACB
sub_4D2AD2 endp



; Attributes: thunk

sub_4D2C1A proc near
jmp     sub_4DE2F6
sub_4D2C1A endp




sub_4D2C1F proc near
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+0DCh]
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
xor     ecx, ecx
mov     cl, [eax+3]
call    ds:funcs_4D2C40[ecx*4]
mov     dword ptr [edx+8], 0
pop     edi
pop     esi
pop     edx
pop     ecx
sub_4D2C1F endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_108]



sub_4D2C53 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D2C59[edx*4]
pop     edx
retn
sub_4D2C53 endp




sub_4D2C62 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax
lea     ebx, [eax+0DCh]
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     esi, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, esi
call    sub_4EF638
mov     edx, 1000h
mov     [esp+2Ch+var_2C], edx
mov     [esp+2Ch+var_28], edx
mov     [esp+2Ch+var_24], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     byte ptr [ecx+8], 1
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+78h], 0
mov     word ptr [ecx+6Eh], 1
mov     byte ptr [ebx+2Fh], 1
cmp     word ptr [ecx+56h], 0
jnz     short loc_4D2D36
mov     [esp+2Ch+var_1C], 0F500h
mov     [esp+2Ch+var_1A], 0FE7Fh
mov     [esp+2Ch+var_18], 0F300h
lea     edx, [esp+2Ch+var_1C]
mov     eax, 1
call    sub_42C4B7
mov     edx, 31802h
jmp     short loc_4D2D5E

loc_4D2D36:
mov     [esp+2Ch+var_1C], 0E500h
mov     [esp+2Ch+var_1A], 0FE7Fh
mov     [esp+2Ch+var_18], 0EF00h
lea     edx, [esp+2Ch+var_1C]
mov     eax, 1
call    sub_42C4B7
mov     edx, 31702h

loc_4D2D5E:
call    sub_4A7AE1
mov     dword ptr [ebx+8], 0
add     esp, 18h

loc_4D2D6D:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4D2C62 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_109]



sub_4D2D73 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebp, eax
add     eax, 0DCh
mov     [esp+30h+var_1C], eax
lea     edi, [ebp+0ECh]
lea     esi, [ebp+14h]
test    byte ptr [eax+0Bh], 20h
jnz     loc_4D2E58
mov     eax, [eax+8]
and     eax, 0FFFFFFh
mov     [esp+30h+var_20], eax
jz      loc_4D2E77
mov     edx, esi
mov     eax, 0A0h
call    sub_4D8BC3
mov     ebx, [ebp+54h]
sar     ebx, 10h
xor     ecx, ecx
mov     edx, edi
mov     eax, esi
call    sub_4DE726
xor     ax, ax
shr     eax, 10h
test    eax, eax
jnz     loc_4D2E77
mov     eax, [esp+30h+var_20]
mov     dx, [ebp+6Eh]
sub     edx, eax
mov     [ebp+6Eh], dx
test    dx, dx
jg      short loc_4D2DF9
mov     byte ptr [ebp+9], 1
mov     word ptr [ebp+4Ch], 0
jmp     loc_4D2E77

loc_4D2DF9:
cmp     byte ptr [ebp+9], 2
jnz     short loc_4D2E2C
mov     eax, [ebp+52h]
sar     eax, 10h
mov     edx, [ebp+5Ah]
sar     edx, 10h
cmp     eax, edx
jle     short loc_4D2E2C
cmp     word ptr [ebp+5Ch], 0FFFh
jle     short loc_4D2E2C
add     word ptr [ebp+4Ch], 5
mov     eax, [esp+30h+var_1C]
mov     word ptr [eax+28h], 0
mov     byte ptr [ebp+0Ah], 1
jmp     short loc_4D2E52

loc_4D2E2C:
mov     eax, [esp+30h+var_1C]
mov     byte ptr [eax+2Eh], 0
mov     word ptr [ebp+4Ch], 5
mov     word ptr [eax+28h], 0
mov     word ptr [ebp+54h], 0
mov     ax, [ebp+54h]
mov     [ebp+5Ch], ax
mov     byte ptr [ebp+0Ah], 0

loc_4D2E52:
mov     byte ptr [ebp+9], 2
jmp     short loc_4D2E77

loc_4D2E58:
mov     ebx, [ebp+54h]
sar     ebx, 10h
xor     ecx, ecx
mov     edx, edi
mov     eax, esi
call    sub_4DE726
xor     ax, ax
shr     eax, 10h
test    eax, eax
jnz     short loc_4D2E77
mov     byte ptr [ebp+9], 1

loc_4D2E77:
movzx   esi, byte ptr [ebp+9]
mov     eax, ebp
call    ds:funcs_4D2E7D[esi*4]
lea     esi, [ebp+8Ch]
lea     eax, [ebp+54h]
mov     edx, esi
call    sub_4EF638
mov     ecx, 1000h
mov     [esp+30h+var_30], ecx
mov     [esp+30h+var_2C], ecx
mov     [esp+30h+var_28], ecx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
mov     eax, [esp+30h+var_1C]
cmp     byte ptr [eax+2Fh], 0
jz      loc_4D2F71
mov     ax, [ebp+14h]
mov     edx, [esp+30h+var_1C]
mov     [edx], ax
mov     si, [ebp+16h]
sub     esi, 78h ; 'x'
mov     [edx+2], si
mov     ax, [ebp+18h]
mov     [edx+4], ax
push    80h
push    offset unk_800000
push    4080000h
lea     edi, [edx+8]
push    edi
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 78h ; 'x'
mov     eax, [esp+44h+var_1C]
call    sub_4E01FC
mov     ax, [ebp+14h]
mov     edx, [esp+30h+var_1C]
mov     [edx], ax
mov     si, [ebp+16h]
sub     esi, 168h
mov     [edx+2], si
mov     ax, [ebp+18h]
mov     [edx+4], ax
push    80h
push    offset unk_800000
push    4080000h
push    edi
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 78h ; 'x'
mov     eax, [esp+44h+var_1C]
call    sub_4E01FC

loc_4D2F71:
mov     eax, [esp+30h+var_1C]
mov     dword ptr [eax+8], 0
add     esp, 18h
pop     ebp
jmp     loc_4D2D6D
sub_4D2D73 endp



; Attributes: thunk

sub_4D2F85 proc near
jmp     sub_4DE2F6
sub_4D2F85 endp




sub_4D2F8A proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 8
mov     ecx, eax
lea     ebx, [eax+0DCh]
cmp     word ptr [eax+54h], 0C00h
jz      short loc_4D2FB4
sub     word ptr [eax+4Ch], 0Ah
mov     ax, [eax+54h]
add     ax, [ecx+4Ch]
and     ah, 0Fh
mov     [ecx+54h], ax

loc_4D2FB4:
cmp     word ptr [ecx+54h], 0C00h
jge     loc_4D3041
mov     word ptr [ecx+54h], 0
mov     byte ptr [ecx+3], 8
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+9], 0
mov     byte ptr [ebx+2Fh], 0
lea     edx, [ecx+14h]
mov     eax, 107h
call    sub_4D8BC3
cmp     word ptr [ecx+56h], 0
jnz     short loc_4D3017
mov     [esp+14h+var_14], 0F500h
mov     [esp+14h+var_12], 0FE7Fh
mov     [esp+14h+var_10], 0F300h
mov     edx, esp
mov     eax, 1
call    sub_42C4B7
mov     edx, 30802h
jmp     short loc_4D303C

loc_4D3017:
mov     [esp+14h+var_14], 0E500h
mov     [esp+14h+var_12], 0FE7Fh
mov     [esp+14h+var_10], 0EF00h
mov     edx, esp
mov     eax, 1
call    sub_42C4B7
mov     edx, 30702h

loc_4D303C:
call    sub_4A7AE1

loc_4D3041:
add     esp, 8
pop     edx
pop     ecx
pop     ebx
retn
sub_4D2F8A endp




sub_4D3048 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+0DCh]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4D308C
cmp     word ptr [edx+54h], 0
jnz     short loc_4D30CC
xor     byte ptr [ecx+2Eh], 1
mov     ebx, [edx+4Ah]
sar     ebx, 10h
mov     eax, [ecx+26h]
sar     eax, 10h
sub     ebx, eax
mov     eax, ebx
call    abs_
cmp     eax, 2
jg      short loc_4D30C4

loc_4D307E:
mov     word ptr [edx+54h], 0
mov     byte ptr [edx+9], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4D308C:
mov     ebx, [edx+5Ah]
sar     ebx, 10h
mov     eax, [edx+52h]
sar     eax, 10h
sub     ebx, eax
mov     eax, ebx
call    abs_
cmp     eax, 800h
jle     short loc_4D30CC
xor     byte ptr [ecx+2Eh], 1
mov     eax, [edx+4Ah]
sar     eax, 10h
mov     ebx, [ecx+26h]
sar     ebx, 10h
sub     eax, ebx
call    abs_
cmp     eax, 2
jle     short loc_4D307E

loc_4D30C4:
mov     ax, [edx+4Ch]
mov     [ecx+28h], ax

loc_4D30CC:
cmp     byte ptr [ecx+2Eh], 0
jz      short loc_4D30D8
dec     word ptr [edx+4Ch]
jmp     short loc_4D30DC

loc_4D30D8:
inc     word ptr [edx+4Ch]

loc_4D30DC:
mov     ax, [edx+54h]
mov     [edx+5Ch], ax
mov     ecx, eax
sub     cx, [edx+4Ch]
and     ch, 0Fh
mov     [edx+54h], cx
pop     edx
pop     ecx
pop     ebx
retn
sub_4D3048 endp




sub_4D30F5 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ecx
push    edx
sub     esp, 10h
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4D3101[ecx*4]
lea     ecx, [edx+8Ch]  ; int
lea     eax, [edx+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 1000h
mov     [esp+18h+var_18], edx
mov     [esp+18h+var_14], edx
mov     [esp+18h+var_10], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 10h
pop     edx
pop     ecx
retn
sub_4D30F5 endp




sub_4D3137 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     dword ptr [ecx+0C4h], 2C808080h
mov     byte ptr [ecx+0Dh], 28h ; '('
mov     byte ptr [ecx+0Eh], 78h ; 'x'
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D3137 endp




sub_4D31A7 proc near
push    edx
push    esi
push    edi
lea     edi, [eax+5Ch]
lea     esi, [eax+54h]
movsd
movsd
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4D31B7[edx*4]
pop     edi
pop     esi
pop     edx
retn
sub_4D31A7 endp




sub_4D31C2 proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4DD64B
cmp     eax, 384h
jge     loc_4D3270
push    800h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
mov     ecx, offset byte_5F8364
add     ecx, 1Ch
mov     edx, [esi+54h]
sar     edx, 10h
add     edx, 400h
lea     eax, [esi+1Ch]
mov     ebx, 100h
call    sub_4DE639
test    eax, eax
jz      short loc_4D3270
mov     byte ptr [esi+9], 1
cmp     byte ptr [esi+0Ch], 0
jnz     short loc_4D3246
mov     [esp+18h+var_18], 0F700h
mov     [esp+18h+var_16], 0FED5h
mov     [esp+18h+var_14], 0DD00h
mov     edx, esp
mov     eax, 2
call    sub_42C4B7
mov     edx, 60302h
jmp     short loc_4D326B

loc_4D3246:
mov     [esp+18h+var_18], 0E900h
mov     [esp+18h+var_16], 0FD55h
mov     [esp+18h+var_14], 0DD00h
mov     edx, esp
mov     eax, 2
call    sub_42C4B7
mov     edx, 60402h

loc_4D326B:
call    sub_4A7AE1

loc_4D3270:
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D31C2 endp




sub_4D3278 proc near
push    edx
mov     dx, [eax+58h]
sub     edx, 50h ; 'P'
and     dh, 0Fh
mov     [eax+58h], dx
cmp     dx, 0C00h
jg      short loc_4D3298
mov     word ptr [eax+58h], 0C00h
mov     byte ptr [eax+9], 2

loc_4D3298:
pop     edx
sub_4D3278 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_110]


; Attributes: thunk

sub_4D329A proc near
jmp     sub_4DE477
sub_4D329A endp




sub_4D329F proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D32A5[edx*4]
pop     edx
retn
sub_4D329F endp




sub_4D32AE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+0DCh]
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+50h]
mov     [ecx+4Eh], ax
mov     [ecx+4Ch], ax
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+78h], 0
mov     word ptr [ecx+6Eh], 0
mov     byte ptr [ecx+74h], 0
mov     dword ptr [ebx+1Ch], 0
mov     dword ptr [ebx+20h], 0
mov     word ptr [ebx+24h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4D32AE endp




sub_4D3332 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
lea     edx, [eax+0DCh]
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
mov     dword ptr [eax+0C4h], offset unk_808080
call    sub_4D3410
cmp     byte ptr [ebp+8], 2
jz      loc_4D3406
mov     eax, ebp
call    sub_4D34D3
mov     dword ptr [edx+1Ch], 0
lea     edi, [edx+14h]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    0
push    4080000h
sub     word ptr [edx+16h], 80h
lea     eax, [edx+1Ch]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [edx+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 80h
call    sub_4E01FC
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF5F7
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
test    byte ptr [ebp+0], 2
jz      short loc_4D3406
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 80h
mov     eax, ebp
call    sub_4ED88B

loc_4D3406:
add     esp, 10h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D3332 endp




sub_4D3410 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
add     eax, 0DCh
mov     eax, [eax+1Ch]
and     eax, 0FFFFFFh
jz      loc_4D34CE
add     [ecx+6Eh], ax
lea     edx, [ecx+14h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     dword ptr [ecx+0C4h], 0FFFFFFh
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A110
mov     eax, [edx+eax*4]
mov     al, [eax+8]
and     eax, 0FFh
shl     eax, 4
mov     edx, [ecx+6Ch]
sar     edx, 10h
cmp     edx, eax
jl      short loc_4D34CE
call    sub_4DE13B
test    eax, eax
jz      short loc_4D3483
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4D3483:
lea     edx, [ecx+14h]
mov     eax, ecx
call    sub_4AF9F8

loc_4D348D:
cmp     ds:word_5395F8, 8
jnb     short loc_4D34A7
mov     eax, ecx
call    sub_4D3545
inc     ds:word_5395F8
jmp     short loc_4D348D

loc_4D34A7:
mov     eax, ecx
call    sub_4D3596
mov     eax, ecx
call    sub_4D3596
lea     edx, [ecx+14h]
mov     eax, 157h
call    sub_4D8BC3
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0

loc_4D34CE:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D3410 endp




sub_4D34D3 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edx, [eax+0DCh]
cmp     dword ptr [eax+80h], 225510h
jnb     short loc_4D3540
cmp     ds:word_5395F8, 8
jnb     short loc_4D3540
mov     si, [edx+24h]
test    si, si
jnz     short loc_4D3539
call    rand_
and     eax, 7
mov     ax, ds:word_539606[eax*2]
mov     [edx+24h], ax
lea     edx, [ecx+14h]
mov     eax, 157h
call    sub_4D8BC3
mov     eax, ecx
call    sub_4D3545
mov     eax, ecx
call    sub_4D3596
inc     ds:word_5395F8
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4D3539:
mov     edi, esi
dec     edi
mov     [edx+24h], di

loc_4D3540:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D34D3 endp




sub_4D3545 proc near
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DDF54
test    eax, eax
jz      short loc_4D3592
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 3Eh ; '>'
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+8], 0
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
lea     edi, [eax+14h]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [eax+1Ch]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
mov     word ptr [eax+54h], 0
mov     word ptr [eax+56h], 0
mov     word ptr [eax+58h], 0

loc_4D3592:
pop     edi
pop     esi
pop     edx
retn
sub_4D3545 endp




sub_4D3596 proc near

var_28= dword ptr -28h
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
sub     esp, 0Ch
push    eax
xor     edx, edx
mov     [esp+28h+var_1C], edx

loc_4D35A6:
lea     edi, [esp+28h+var_24]
mov     esi, [esp+28h+var_28]
lea     esi, [esi+14h]
movsd
movsd
call    rand_
and     eax, 7
movsx   ax, ds:byte_539616[eax]
add     [esp+28h+var_24], ax
call    rand_
and     eax, 7
movsx   ax, ds:byte_539616[eax]
add     [esp+28h+var_22], ax
call    rand_
and     eax, 7
movsx   ax, ds:byte_539616[eax]
add     [esp+28h+var_20], ax
mov     ebp, [esp+28h+var_1C]
add     ebp, 7
lea     ecx, [esp+28h+var_24]
mov     ebx, 1
mov     edx, ebp
xor     eax, eax
call    sub_43C263
lea     edi, [esp+28h+var_24]
mov     esi, [esp+28h+var_28]
lea     esi, [esi+14h]
movsd
movsd
call    rand_
and     eax, 7
movsx   ax, ds:byte_539616[eax]
add     [esp+28h+var_24], ax
call    rand_
and     eax, 7
movsx   ax, ds:byte_539616[eax]
add     [esp+28h+var_22], ax
call    rand_
and     eax, 7
movsx   ax, ds:byte_539616[eax]
add     [esp+28h+var_20], ax
lea     ecx, [esp+28h+var_24]
mov     ebx, 1
mov     edx, ebp
xor     eax, eax
call    sub_43C263
mov     ecx, [esp+28h+var_1C]
inc     ecx
mov     [esp+28h+var_1C], ecx
cmp     ecx, 3
jb      loc_4D35A6
jmp     loc_4D3406
sub_4D3596 endp



; Attributes: thunk

sub_4D367E proc near
jmp     sub_4DE371
sub_4D367E endp




sub_4D3683 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx
push    ecx
sub     esp, 10h
mov     ebx, edx
lea     ecx, [eax+8Ch]  ; int
add     eax, 54h ; 'T'
mov     edx, ecx
call    sub_4EF638
movsx   eax, bx
mov     [esp+18h+var_18], eax
mov     [esp+18h+var_14], eax
mov     [esp+18h+var_10], eax
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 10h
pop     ecx
pop     ebx
retn
sub_4D3683 endp




sub_4D36B7 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
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
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+38h], eax
mov     [ecx+20h], eax
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     word ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     dword ptr [ecx+0CCh], 0
mov     edx, 200h
mov     eax, ecx
call    sub_4D3683
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8

loc_4D3767:
mov     dword ptr [ecx+0C4h], offset unk_808080
inc     byte ptr [ecx+8]
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D36B7 endp




sub_4D3779 proc near

var_20= byte ptr -20h
var_1E= word ptr -1Eh

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     eax, [eax+0Bh]
sar     eax, 18h
call    sub_4E1877
mov     ecx, eax
cmp     byte ptr [ebp+3], 4
jnb     loc_4D380C
mov     al, [ecx+0Ch]
mov     bl, [ebp+0Fh]
cmp     al, bl
jge     short loc_4D37B1
mov     dword ptr [ebp+0C4h], 404040h
jmp     short loc_4D37F7

loc_4D37B1:
jnz     short loc_4D37ED
mov     cl, byte ptr ds:word_77EAB6
and     cl, 0Fh
shl     cl, 3
test    byte ptr ds:word_77EAB6, 10h
jz      short loc_4D37CD
add     cl, 80h
jmp     short loc_4D37D3

loc_4D37CD:
mov     al, 0F0h
sub     al, cl
mov     cl, al

loc_4D37D3:
and     ecx, 0FFh
mov     eax, ecx
shl     eax, 8
or      eax, ecx
shl     ecx, 10h
or      eax, ecx
mov     [ebp+0C4h], eax
jmp     short loc_4D37F7

loc_4D37ED:
mov     dword ptr [ebp+0C4h], offset unk_808080

loc_4D37F7:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
jmp     short loc_4D3876

loc_4D380C:
test    byte ptr [ebp+0CFh], 22h
jz      short loc_4D3831
mov     edx, (offset dword_5F8376+2)
mov     eax, 168h
call    sub_4D8BC3
mov     byte ptr [ecx+0Dh], 1Eh
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+9], 0
jmp     short loc_4D3876

loc_4D3831:
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    0
push    8800000h
sub     [esp+2Ch+var_1E], 32h ; '2'
lea     eax, [ebp+0CCh]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 32h ; '2'
lea     eax, [esp+34h+var_20]
call    sub_4E01FC
mov     dword ptr [ebp+0CCh], 0

loc_4D3876:
add     esp, 8

loc_4D3879:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D3779 endp




sub_4D3880 proc near
push    ecx
push    edx
push    esi
mov     edx, eax
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF003
mov     ecx, eax
shl     eax, 2
sub     eax, ecx
shl     eax, 9
neg     eax
sar     eax, 0Ch
mov     [edx+48h], ax
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
sub     eax, ecx
shl     eax, 9
neg     eax
sar     eax, 0Ch
mov     [edx+44h], ax
mov     word ptr [edx+46h], 0F9C0h
mov     word ptr [edx+4Eh], 80h
test    byte ptr [edx+0CFh], 20h
jnz     short loc_4D38E5
cmp     ds:word_5F83A8, 258h
jle     short loc_4D38F9

loc_4D38E5:
mov     cx, [edx+44h]
add     ecx, ecx
mov     [edx+44h], cx
mov     si, [edx+48h]
add     esi, esi
mov     [edx+48h], si

loc_4D38F9:
inc     byte ptr [edx+9]
pop     esi
pop     edx
pop     ecx
retn
sub_4D3880 endp




sub_4D3900 proc near
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
mov     ah, [eax+55h]
add     ah, 2
mov     [ecx+55h], ah
inc     byte ptr [ecx+57h]
mov     edx, 200h
mov     eax, ecx
call    sub_4D3683
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, ecx
call    sub_42DE56
test    eax, eax
jz      short loc_4D39AC
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
inc     byte ptr [ecx+8]

loc_4D39AC:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D3900 endp




sub_4D39B1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4D39B7[edx*4]
pop     edx
retn
sub_4D39B1 endp



; Attributes: thunk

sub_4D39C0 proc near
jmp     sub_4DE371
sub_4D39C0 endp




sub_4D39C5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D39CB[edx*4]
pop     edx
retn
sub_4D39C5 endp




sub_4D39D4 proc near
inc     byte ptr [eax+8]
retn
sub_4D39D4 endp




sub_4D39D8 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
and     ds:byte_5F8364, 0FDh
lea     edi, [ecx+14h]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
or      byte ptr [ecx], 6
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     edx, [ecx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+34h], edx
mov     [ecx+1Ch], edx
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+38h], edx
mov     [ecx+20h], edx
mov     edx, [ecx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+3Ch], edx
mov     [ecx+24h], edx
mov     word ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     dword ptr [ecx+0CCh], 0
mov     edx, 100h
mov     eax, ecx
call    sub_4D3683
mov     byte ptr [ecx+2], 4
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 1Fh
jmp     loc_4D3767
sub_4D39D8 endp




sub_4D3A87 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edi, [ebp+54h]
mov     esi, offset dword_5F83B8
movsd
movsd
lea     edi, [ebp+14h]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edx, 100h
call    sub_4D3683
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+34h], eax
mov     [ebp+1Ch], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+38h], eax
mov     [ebp+20h], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+3Ch], eax
mov     [ebp+24h], eax
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
jmp     loc_4D3879
sub_4D3A87 endp




sub_4D3AFD proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D3B03[edx*4]
pop     edx
retn
sub_4D3AFD endp




sub_4D3B0C proc near
push    edx
mov     edx, [eax+9]
sar     edx, 18h
call    ds:funcs_4D3B13[edx*4]
pop     edx
retn
sub_4D3B0C endp




sub_4D3B1C proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jz      short loc_4D3B2D
mov     eax, edx
call    sub_4D3E17

loc_4D3B2D:
xor     ecx, ecx
mov     cl, [edx+8]
mov     eax, edx
call    ds:funcs_4D3B34[ecx*4]
mov     eax, edx
call    sub_4D3E75
pop     edx
pop     ecx
retn
sub_4D3B1C endp




sub_4D3B45 proc near
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     edx, eax
mov     ah, [eax]
or      ah, 2
mov     [edx], ah
mov     dword ptr [edx+0D4h], 0
mov     dword ptr [edx+0D8h], 0
mov     dword ptr [edx+78h], offset unk_53964C
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
mov     dword ptr [edx+88h], 3DC8002Ah
mov     dword ptr [edx+8Ch], 2E808080h
mov     ax, [edx+14h]
mov     [edx+90h], ax
mov     ax, [edx+16h]
mov     [edx+92h], ax
mov     ax, [edx+18h]
mov     [edx+94h], ax
lea     edi, [edx+34h]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [edx+2Ch]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [edx+0DCh]
lea     esi, [edx+14h]
movsd
movsd
mov     edi, esp
lea     esi, [edx+0DCh]
movsd
movsd
lea     edi, [edx+0E4h]
mov     esi, esp
movsd
movsd
mov     edi, esp
lea     esi, [edx+0E4h]
movsd
movsd
lea     edi, [edx+0ECh]
mov     esi, esp
movsd
movsd
mov     edi, esp
lea     esi, [edx+0ECh]
movsd
movsd
lea     edi, [edx+0F4h]
mov     esi, esp
movsd
movsd
mov     edi, esp
lea     esi, [edx+0F4h]
movsd
movsd
lea     edi, [edx+0FCh]
mov     esi, esp
movsd
movsd
mov     al, ds:byte_539658
mov     [edx+96h], al
mov     al, ds:byte_539659
mov     [edx+97h], al
mov     word ptr [edx+98h], 64h ; 'd'
mov     eax, [edx+54h]
sar     eax, 10h
call    sub_4EF008
neg     eax
mov     ecx, eax
shl     eax, 2
add     eax, ecx
shl     eax, 3
sar     eax, 4
mov     [edx+44h], ax
mov     word ptr [edx+46h], 0
mov     eax, [edx+54h]
sar     eax, 10h
call    sub_4EF003
neg     eax
mov     ecx, eax
shl     eax, 2
add     eax, ecx
shl     eax, 3
sar     eax, 4
mov     [edx+48h], ax
mov     word ptr [edx+4Ch], 0
mov     word ptr [edx+4Eh], 0
mov     word ptr [edx+50h], 0
inc     byte ptr [edx+8]
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0B4h
mov     word ptr [edx+7Ch], 0
mov     eax, edx
call    sub_4D3E75
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D3B45 endp




sub_4D3CC9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
add     eax, 88h
lea     edi, [ebp+0FCh]
lea     esi, [ebp+0F4h]
movsd
movsd
lea     edi, [ebp+0F4h]
lea     esi, [ebp+0ECh]
movsd
movsd
lea     edi, [ebp+0ECh]
lea     esi, [ebp+0E4h]
movsd
movsd
lea     edi, [ebp+0E4h]
lea     esi, [ebp+0DCh]
movsd
movsd
lea     edi, [ebp+0DCh]
lea     esi, [ebp+14h]
movsd
movsd
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 8
add     [ebp+1Ch], edx
mov     edx, [ebp+44h]
sar     edx, 10h
shl     edx, 8
add     [ebp+20h], edx
mov     edx, [ebp+46h]
sar     edx, 10h
shl     edx, 8
add     [ebp+24h], edx
mov     edx, [ebp+1Ch]
sar     edx, 10h
mov     [ebp+14h], dx
mov     [eax+8], dx
mov     edx, [ebp+20h]
sar     edx, 10h
mov     [ebp+16h], dx
mov     [eax+0Ah], dx
mov     edx, [ebp+24h]
sar     edx, 10h
mov     [ebp+18h], dx
mov     [eax+0Ch], dx
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     esi, [ebp+14h]
mov     ecx, 40h ; '@'
mov     edx, (offset dword_5F880A+2)
mov     eax, esi
call    sub_4DE552
add     [ebp+56h], ax
mov     eax, [ebp+54h]
sar     eax, 10h
call    sub_4EF008
neg     eax
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 0
mov     eax, [ebp+54h]
sar     eax, 10h
call    sub_4EF003
neg     eax
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ebp+48h], ax
mov     ah, [ebp+0Bh]
dec     ah
mov     [ebp+0Bh], ah
jnz     short loc_4D3DE7
mov     eax, ebp
call    sub_4D3EBF
mov     eax, ebp
call    sub_4DE371
jmp     short loc_4D3E10

loc_4D3DE7:
cmp     ah, 9Ch
ja      short loc_4D3E09
mov     bl, [ebp+0Ah]
inc     bl
mov     [ebp+0Ah], bl
cmp     bl, 0Ah
jb      short loc_4D3E09
mov     byte ptr [ebp+0Ah], 0
mov     edx, esi
mov     eax, 14Bh
call    sub_4D8BC3

loc_4D3E09:
mov     eax, ebp
call    sub_4D3F1F

loc_4D3E10:
pop     ebp

loc_4D3E11:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D3CC9 endp




sub_4D3E17 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
test    byte ptr [eax+0D7h], 1Ah
jnz     short loc_4D3E51
lea     eax, [ebp+14h]
mov     ecx, 0FFFFh
xor     ebx, ebx
xor     edx, edx
call    sub_42C5B7
cmp     eax, 0FFFFFFF0h
jl      short loc_4D3E51
cmp     word ptr [ebp+7Ch], 0
jnz     short loc_4D3E51
cmp     dword ptr [ebp+80h], 10000h
jnb     short loc_4D3E61

loc_4D3E51:
mov     eax, ebp
call    sub_4D3EBF
mov     eax, ebp
call    sub_4DE371
jmp     short loc_4D3E10

loc_4D3E61:
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
jmp     short loc_4D3E10
sub_4D3E17 endp




sub_4D3E75 proc near
push    ebx
push    ecx
push    edx
push    0
push    0
xor     ecx, ecx
mov     cl, [eax+2]
mov     edx, ds:dword_55A110
mov     edx, [edx+ecx*4]
mov     dl, [edx+9]
and     edx, 0FFh
or      edx, 4000000h
push    edx
lea     edx, [eax+0D4h]
push    edx
xor     edx, edx
mov     dl, [eax+1]
push    edx
add     eax, 14h
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 64h ; 'd'
call    sub_4E01FC
pop     edx
pop     ecx
pop     ebx
retn
sub_4D3E75 endp




sub_4D3EBF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4D3EE6
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 10h
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
lea     edi, [eax+48h]
lea     esi, [edx+14h]
movsd
movsd

loc_4D3EE6:
call    sub_4DE13B
test    eax, eax
jz      short loc_4D3F06
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 10h
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0
lea     edi, [eax+48h]
lea     esi, [edx+14h]
movsd
movsd

loc_4D3F06:
lea     ecx, [edx+14h]
mov     ebx, 8
xor     edx, edx
mov     eax, 1
call    sub_43C263
jmp     loc_4D3E11
sub_4D3EBF endp




sub_4D3F1F proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    eax
xor     edx, edx

