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
