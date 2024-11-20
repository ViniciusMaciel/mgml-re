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

