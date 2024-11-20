loc_40A219:
lea     ecx, [edx+14h]
lea     eax, [edx+1Ch]
mov     edx, ecx
call    sub_4DD57B
pop     edx
pop     ecx
retn
sub_40A209 endp




sub_40A229 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40A24F
mov     byte ptr [ecx+0ACh], 15h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40A24F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A229 endp




sub_40A253 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40A279
mov     byte ptr [ecx+0ACh], 16h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40A279:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A253 endp




sub_40A27D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40A2A3
mov     byte ptr [ecx+0ACh], 17h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B

loc_40A2A0:
inc     byte ptr [ecx+0Ah]

loc_40A2A3:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A27D endp




sub_40A2A7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40A2CE
mov     byte ptr [esi+0ACh], 18h
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]

loc_40A2CE:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFE9h
mov     eax, esi
call    sub_4DD43B
mov     esi, [esi+98h]
mov     dh, [esi]
cmp     dh, 2
jz      short loc_40A2F0
cmp     dh, 25h ; '%'
jnz     short loc_40A301

loc_40A2F0:
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, 90h
call    sub_4D89E4

loc_40A301:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40A2A7 endp




sub_40A306 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 19h
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
jmp     loc_40A2A0
sub_40A306 endp




sub_40A331 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 1Ah
jnz     short loc_40A342
inc     byte ptr [eax+0Ah]

loc_40A342:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFE9h
jmp     loc_40A11F
sub_40A331 endp




sub_40A350 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40A356[edx*4]
pop     edx
retn
sub_40A350 endp




sub_40A35F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40A385
mov     byte ptr [ecx+0ACh], 1Ch
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B

loc_40A382:
inc     byte ptr [ecx+0Ah]

loc_40A385:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A35F endp




sub_40A389 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 1Ah
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [ecx+0Ch], 2Ch ; ','
jmp     short loc_40A382
sub_40A389 endp




sub_40A3AA proc near
push    edx
mov     dl, [eax+0Ch]
dec     dl
mov     [eax+0Ch], dl
jnz     short loc_40A3B8
inc     byte ptr [eax+0Ah]

loc_40A3B8:
pop     edx
retn
sub_40A3AA endp




sub_40A3BA proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 0Fh
jnz     short loc_40A3C9
inc     byte ptr [eax+0Ah]

loc_40A3C9:
pop     edx
retn
sub_40A3BA endp




sub_40A3CB proc near
push    edx
sub     dword ptr [eax+24h], 140000h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 1Ah
jnz     short loc_40A3E6
add     word ptr [eax+22h], 30h ; '0'
inc     byte ptr [eax+0Ah]

loc_40A3E6:
pop     edx
retn
sub_40A3CB endp




sub_40A3E8 proc near
add     word ptr [eax+22h], 30h ; '0'
retn
sub_40A3E8 endp




sub_40A3EE proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_40A3F7[ecx*4]
jmp     loc_40A219
sub_40A3EE endp




sub_40A403 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     loc_40A199
mov     dword ptr [ecx+1Ch], 1F40000h
mov     dword ptr [ecx+20h], 0E5EA0000h
mov     dword ptr [ecx+24h], 0FB2C0000h
mov     byte ptr [ecx+0ACh], 1Bh
jmp     loc_40A185
sub_40A403 endp




sub_40A433 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40A43E[edx*4]
cmp     byte ptr [esi+0Ch], 0
jnz     short loc_40A454
mov     eax, esi
call    sub_4DEADD
jmp     short loc_40A462

loc_40A454:
mov     eax, esi
call    sub_4DFC52
mov     eax, esi
call    sub_4DF795

loc_40A462:
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40A433 endp




sub_40A47A proc near
push    ebx
push    edx
mov     edx, eax
mov     ax, [eax+14h]
mov     word ptr ds:dword_5F838E+2, ax
mov     ax, [edx+16h]
mov     word ptr ds:dword_5F8392, ax
mov     ax, [edx+18h]
mov     word ptr ds:dword_5F8392+2, ax
cmp     byte ptr [edx+8], 0
jz      short loc_40A4B2
mov     eax, edx
call    sub_40A433
mov     eax, edx
call    sub_409FCA
jmp     short loc_40A4B9

loc_40A4B2:
mov     eax, edx
call    sub_40A060

loc_40A4B9:
mov     al, [edx+0Bh]
test    al, al
jbe     short loc_40A4F4
cmp     al, 1
jnz     short loc_40A4F4
mov     bl, [edx+0Dh]
add     bl, al
mov     [edx+0Dh], bl
cmp     bl, 4
jnz     short loc_40A4F4
mov     byte ptr [edx+0Dh], 0
mov     bx, [edx+15Eh]
add     ebx, 421h
mov     [edx+15Eh], bx
cmp     bx, 4210h
jnz     short loc_40A4F4
mov     byte ptr [edx+0Bh], 0

loc_40A4F4:
mov     ax, [edx+14h]
mov     word ptr ds:dword_5F8376+2, ax
mov     ax, [edx+16h]
mov     word ptr ds:dword_5F837A, ax
mov     ax, [edx+18h]
mov     word ptr ds:dword_5F837A+2, ax
pop     edx
pop     ebx
retn
sub_40A47A endp




sub_40A515 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50BA70[edx*4]
mov     ds:dword_559050, eax
xor     edx, edx
mov     ds:word_559054, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40A557:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     ecx
pop     ebx
retn
sub_40A515 endp




sub_40A562 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50BA7C[edx*4]
mov     ds:dword_559048, eax
xor     edx, edx
mov     ds:word_55904C, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40A557
sub_40A562 endp




sub_40A5A6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, ds:dword_559050
test    edx, edx
jz      loc_40A6B6
cmp     ds:dword_559048, 0
jz      loc_40A6B6
mov     eax, edx
inc     ds:word_559054
mov     edx, [eax]
sar     edx, 10h
mov     ecx, ds:dword_559050+2
sar     ecx, 10h
cmp     ecx, edx
jnz     short loc_40A63D
add     eax, 4
mov     ds:dword_559050, eax
cmp     word ptr [eax+2], 0
jg      short loc_40A600
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_559050, eax

loc_40A600:
xor     ecx, ecx
mov     ds:word_559054, cx
mov     eax, ds:dword_559050
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40A63D:
mov     eax, ds:dword_559048
inc     ds:word_55904C
mov     ecx, [eax]
sar     ecx, 10h
mov     edx, ds:dword_559048+2
sar     edx, 10h
cmp     edx, ecx
jnz     short loc_40A6B6
add     eax, 4
mov     ds:dword_559048, eax
cmp     word ptr [eax+2], 0
jg      short loc_40A679
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
mov     ds:dword_559048, eax

loc_40A679:
xor     ebx, ebx
mov     ds:word_55904C, bx
mov     eax, ds:dword_559048
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_40A6B6:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40A5A6 endp




sub_40A6BB proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     ecx, eax
mov     ebx, offset dword_560BDC
mov     eax, ds:dword_55905C
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40A70A
cmp     dl, ds:byte_560BE4
jnz     short loc_40A70A
mov     dl, [eax+1]
cmp     dl, ds:byte_560BE5
jnz     short loc_40A70A
xor     edx, edx
mov     dx, [eax+2]
mov     esi, ds:dword_560BF8
cmp     edx, esi
jnz     short loc_40A70A
xor     edx, esi
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40A515
add     ds:dword_55905C, 6

loc_40A70A:
mov     eax, ds:dword_559058
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40A744
cmp     dl, [ebx+8]
jnz     short loc_40A744
mov     dl, [eax+1]
cmp     dl, [ebx+9]
jnz     short loc_40A744
xor     edx, edx
mov     dx, [eax+2]
mov     ebp, [ebx+1Ch]
cmp     edx, ebp
jnz     short loc_40A744
xor     edx, ebp
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40A562
add     ds:dword_559058, 6

loc_40A744:
mov     eax, ecx
call    sub_40A5A6
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40A6BB endp




sub_40A751 proc near
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
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     ds:dword_55905C, offset unk_50BA84
mov     ds:dword_559058, offset unk_50BA9C
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx

locret_40A7A6:
retn
sub_40A751 endp




sub_40A7A7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 10h
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn
sub_40A7A7 endp




sub_40A7BF proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 18h
jnz     short loc_40A7CE
inc     byte ptr [eax+0Ah]

loc_40A7CE:
pop     edx
retn
sub_40A7BF endp




sub_40A7D0 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     word ptr [eax+26h], 5
mov     eax, [eax+98h]
cmp     byte ptr [eax], 36h ; '6'
jnz     short loc_40A7FA
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
add     byte ptr [ecx+57h], 8
inc     byte ptr [ecx+0Ah]

loc_40A7FA:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A7D0 endp




sub_40A7FE proc near
push    edx
add     word ptr [eax+26h], 5
mov     edx, [eax+98h]
cmp     byte ptr [edx], 0Eh
jnz     short loc_40A812
inc     byte ptr [eax+0Ah]

loc_40A812:
pop     edx
retn
sub_40A7FE endp




sub_40A814 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     word ptr [eax+26h], 20h ; ' '
mov     eax, [eax+98h]
cmp     byte ptr [eax], 1Ch
jnz     short loc_40A83A
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40A83A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A814 endp




sub_40A83E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
mov     dl, [eax]
cmp     dl, 4
jz      short loc_40A855
cmp     dl, 0Ch
jnz     short loc_40A866

loc_40A855:
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, 91h
call    sub_4D89E4

loc_40A866:
add     word ptr [ecx+26h], 20h ; ' '
pop     edx
pop     ecx
pop     ebx
retn
sub_40A83E endp




sub_40A86F proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40A875[edx*4]
pop     edx
retn
sub_40A86F endp




sub_40A87E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40A889[edx*4]
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40A87E endp




sub_40A8BA proc near
push    edx
mov     edx, eax
mov     ax, [eax+14h]
mov     word ptr ds:dword_5F838E+2, ax
mov     ax, [edx+16h]
mov     word ptr ds:dword_5F8392, ax
mov     ax, [edx+18h]
mov     word ptr ds:dword_5F8392+2, ax
cmp     byte ptr [edx+8], 0
jz      short loc_40A8EA
mov     eax, edx
call    sub_40A87E
jmp     short loc_40A8F1

loc_40A8EA:
mov     eax, edx
call    sub_40A751

loc_40A8F1:
mov     eax, edx
call    sub_40A6BB
mov     ax, [edx+14h]
mov     word ptr ds:dword_5F8376+2, ax
mov     ax, [edx+16h]
mov     word ptr ds:dword_5F837A, ax
mov     ax, [edx+18h]
mov     word ptr ds:dword_5F837A+2, ax
pop     edx
retn
sub_40A8BA endp




sub_40A918 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50BB94[edx*4]
mov     ds:dword_559068, eax
xor     edx, edx
mov     ds:word_55906C, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40A95A:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     ecx
pop     ebx
retn
sub_40A918 endp




sub_40A965 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50BBB8[edx*4]
mov     ds:dword_559060, eax
xor     edx, edx
mov     ds:word_559064, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40A95A
sub_40A965 endp




sub_40A9A9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edx, ds:dword_559068
test    edx, edx
jz      loc_40AACC
cmp     ds:dword_559060, 0
jz      loc_40AACC
mov     eax, edx
cmp     word ptr [edx+2], 0
jg      short loc_40A9EC
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_559068, eax
xor     ebx, ebx
mov     ds:word_55906C, bx

loc_40A9EC:
mov     eax, ds:dword_559068
inc     ds:word_55906C
mov     edx, [eax]
sar     edx, 10h
mov     ecx, ds:dword_559068+2
sar     ecx, 10h
cmp     ecx, edx
jnz     short loc_40AA4A
xor     edi, edi
mov     ds:word_55906C, di
add     eax, 4
mov     ds:dword_559068, eax
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40AA4A:
mov     eax, ds:dword_559060
cmp     word ptr [eax+2], 0
jg      short loc_40AA6E
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_559060, eax
xor     ebx, ebx
mov     ds:word_559064, bx

loc_40AA6E:
mov     eax, ds:dword_559060
inc     ds:word_559064
mov     ecx, [eax]
sar     ecx, 10h
mov     edx, ds:dword_559060+2
sar     edx, 10h
cmp     edx, ecx
jnz     short loc_40AACC
xor     edi, edi
mov     ds:word_559064, di
add     eax, 4
mov     ds:dword_559060, eax
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_40AACC:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40A9A9 endp




sub_40AAD2 proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     ecx, eax
mov     ebx, offset dword_560BDC
mov     eax, ds:dword_559074
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40AB21
cmp     dl, ds:byte_560BE4
jnz     short loc_40AB21
mov     dl, [eax+1]
cmp     dl, ds:byte_560BE5
jnz     short loc_40AB21
xor     edx, edx
mov     dx, [eax+2]
mov     esi, ds:dword_560BF8
cmp     edx, esi
jnz     short loc_40AB21
xor     edx, esi
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40A918
add     ds:dword_559074, 6

loc_40AB21:
mov     eax, ds:dword_559070
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40AB5B
cmp     dl, [ebx+8]
jnz     short loc_40AB5B
mov     dl, [eax+1]
cmp     dl, [ebx+9]
jnz     short loc_40AB5B
xor     edx, edx
mov     dx, [eax+2]
mov     ebp, [ebx+1Ch]
cmp     edx, ebp
jnz     short loc_40AB5B
xor     edx, ebp
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40A965
add     ds:dword_559070, 6

loc_40AB5B:
mov     eax, ecx
call    sub_40A9A9
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40AAD2 endp




sub_40AB68 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+56h], 800h
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     ds:dword_559074, offset unk_50BBE8
mov     ds:dword_559070, offset unk_50BC2A
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_40AB68 endp




sub_40ABB7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 10h
call    sub_4DE96B
mov     byte ptr [ecx+0Bh], 0
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn
sub_40ABB7 endp




sub_40ABD3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     dword ptr [eax+20h], 23333h
mov     eax, [eax+98h]
cmp     byte ptr [eax], 1Bh
jnz     short loc_40ABED
inc     byte ptr [ecx+0Bh]

loc_40ABED:
cmp     byte ptr [ecx+0Bh], 4
jnz     short loc_40AC04
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40AC04:
pop     edx
pop     ecx
pop     ebx
retn
sub_40ABD3 endp




sub_40AC08 proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 7
jnz     short loc_40AC17
inc     byte ptr [eax+0Ah]

loc_40AC17:
pop     edx
retn
sub_40AC08 endp




sub_40AC19 proc near
push    edx
add     word ptr [eax+22h], 3
mov     edx, [eax+98h]
cmp     byte ptr [edx], 11h
jnz     short loc_40AC2D
inc     byte ptr [eax+0Ah]

loc_40AC2D:
pop     edx
sub_40AC19 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_37]



sub_40AC2F proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40AC35[edx*4]
pop     edx
retn
sub_40AC2F endp




sub_40AC3E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40AC5A
xor     ebx, ebx
mov     edx, 12h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40AC5A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40AC3E endp




sub_40AC5E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40AC7A
xor     ebx, ebx
mov     edx, 13h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40AC7A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40AC5E endp




sub_40AC7E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40AC9A
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40AC9A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40AC7E endp




sub_40AC9E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40ACBA
xor     ebx, ebx
mov     edx, 15h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40ACBA:
pop     edx
pop     ecx
pop     ebx
retn
sub_40AC9E endp




sub_40ACBE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40ACDA
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40ACDA:
pop     edx
pop     ecx
pop     ebx
retn
sub_40ACBE endp




sub_40ACDE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40ACFA
xor     ebx, ebx
mov     edx, 17h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40ACFA:
pop     edx
pop     ecx
pop     ebx
retn
sub_40ACDE endp




sub_40ACFE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40AD1A
xor     ebx, ebx
mov     edx, 18h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40AD1A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40ACFE endp




sub_40AD1E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40AD3A
xor     ebx, ebx
mov     edx, 19h
mov     eax, ecx
call    sub_4DE96B

loc_40AD37:
inc     byte ptr [ecx+0Ah]

loc_40AD3A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40AD1E endp




sub_40AD3E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 1Ah
call    sub_4DE96B
mov     byte ptr [ecx+0Ch], 0
jmp     short loc_40AD37
sub_40AD3E endp




sub_40AD55 proc near
push    edx
inc     byte ptr [eax+0Ch]
mov     edx, [eax+98h]
cmp     byte ptr [edx], 10h
jnz     short loc_40AD67
inc     byte ptr [eax+0Ah]

loc_40AD67:
pop     edx
retn
sub_40AD55 endp




sub_40AD69 proc near
push    edx
add     dword ptr [eax+24h], 268000h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 18h
jnz     short loc_40AD7F
inc     byte ptr [eax+0Ah]

loc_40AD7F:
pop     edx
sub_40AD69 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_38]



sub_40AD81 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40AD87[edx*4]
pop     edx
retn
sub_40AD81 endp




sub_40AD90 proc near
cmp     byte ptr [eax+8], 0
jz      sub_40AB68
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40ADA3[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40ADC2
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40ADC2:
pop     edx
pop     ecx
retn
sub_40AD90 endp




sub_40ADC5 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+3], 0
jnz     short loc_40ADDC
mov     eax, edx
call    sub_40AD90
mov     eax, edx
call    sub_40AAD2

loc_40ADDC:
pop     edx
retn
sub_40ADC5 endp




sub_40ADDE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+640h]
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
movzx   esi, byte ptr [eax+8]
mov     ebx, ebp
mov     edx, offset dword_560BDC
call    ds:funcs_40AE1D[esi*4]
mov     edx, ebp
mov     eax, ecx
call    sub_40B3A2
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_40AE52
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_40AE59

loc_40AE52:
mov     eax, ecx
call    sub_4DEADD

loc_40AE59:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40ADDE endp




sub_40AE60 proc near
push    ecx
push    esi
mov     ecx, eax
mov     esi, ebx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 10h
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40B370
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40B389
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
retn
sub_40AE60 endp

jpt_40AF14 dd offset loc_40AF1B ; jump table for switch statement
dd offset loc_40AF3F
dd offset loc_40AF7A
dd offset loc_40AFF8
dd offset loc_40B031
dd offset loc_40B0A6
dd offset loc_40B0CC
dd offset loc_40B10E
dd offset loc_40B168
dd offset loc_40B196
dd offset loc_40B1B4



sub_40AEFA proc near
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ebp, edx
mov     edi, ebx
mov     al, [eax+9]
cmp     al, 0Ah         ; switch 11 cases
ja      def_40AF14      ; jumptable 0040AF14 default case
and     eax, 0FFh
jmp     jpt_40AF14[eax*4] ; switch jump

loc_40AF1B:             ; jumptable 0040AF14 case 0
mov     byte ptr [esi+0ADh], 0FFh
mov     ah, [edx+4]
cmp     ah, 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
cmp     ah, [edx+5]
jnz     def_40AF14      ; jumptable 0040AF14 default case
add     [esi+9], ah
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40AF3F:             ; jumptable 0040AF14 case 1
xor     ecx, ecx
mov     ebx, 0FFFFFFDCh
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     ch, [ebp+9]
cmp     ch, 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     byte ptr [esi+0ACh], 11h
mov     word ptr [edi+2], 0
add     [esi+9], ch
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40AF7A:             ; jumptable 0040AF14 case 2
cmp     byte ptr [esi+0A4h], 37h ; '7'
jnb     short loc_40AF96
xor     ecx, ecx
mov     ebx, 0FFFFFFE8h
mov     edx, 8
mov     eax, esi
call    sub_4DD43B

loc_40AF96:
cmp     byte ptr [ebp+9], 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, [ebp+10h]
cmp     ebx, 4Bh ; 'K'
jnz     short loc_40AFBB
mov     ebx, 8

loc_40AFAD:
mov     edx, edi
mov     eax, esi
call    sub_40B370
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40AFBB:
cmp     ebx, 0AAh
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, 9
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 1
mov     edx, edi
mov     eax, esi
call    sub_40B389
mov     byte ptr [esi+0ACh], 12h

loc_40AFEA:
mov     word ptr [edi+2], 0

loc_40AFF0:
inc     byte ptr [esi+9]
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40AFF8:             ; jumptable 0040AF14 case 3
cmp     byte ptr [edx+9], 3
jnz     def_40AF14      ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 2Dh ; '-'
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, 2
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 2
mov     edx, edi
mov     eax, esi
call    sub_40B389
mov     byte ptr [esi+0ACh], 13h
jmp     short loc_40AFEA

loc_40B031:             ; jumptable 0040AF14 case 4
cmp     byte ptr [edx+9], 3
jnz     short loc_40B06A
mov     ebx, [edx+10h]
cmp     ebx, 55h ; 'U'
jnz     short loc_40B046
mov     ebx, 6
jmp     short loc_40B061

loc_40B046:
cmp     ebx, 0B4h
jnz     short loc_40B06A
mov     ebx, 0Ah
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 2

loc_40B061:
mov     edx, edi
mov     eax, esi
call    sub_40B389

loc_40B06A:
cmp     byte ptr [ebp+9], 4
jnz     def_40AF14      ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, 0Bh
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 9
mov     edx, edi
mov     eax, esi
call    sub_40B389
mov     byte ptr [esi+0ACh], 14h
jmp     loc_40AFEA

loc_40B0A6:             ; jumptable 0040AF14 case 5
cmp     byte ptr [esi+0A4h], 19h
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     byte ptr [esi+0ACh], 14h
mov     byte ptr [esi+0ADh], 0FFh
mov     word ptr [edi+2], 19h
jmp     loc_40AFF0

loc_40B0CC:             ; jumptable 0040AF14 case 6
mov     byte ptr [esi+0ADh], 0FFh
mov     word ptr [ebx+2], 19h
cmp     byte ptr [edx+9], 4
jnz     def_40AF14      ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 28h ; '('
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, 3
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 8
mov     edx, edi
mov     eax, esi
call    sub_40B389
jmp     loc_40AFF0

loc_40B10E:             ; jumptable 0040AF14 case 7
cmp     byte ptr [edx+9], 4
jnz     short loc_40B12D
cmp     dword ptr [edx+10h], 46h ; 'F'
jnz     short loc_40B12D
mov     ebx, 3
mov     edx, edi
mov     eax, esi
call    sub_40B389
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40B12D:
cmp     byte ptr [ebp+9], 5
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     edx, [ebp+10h]
cmp     edx, 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, edx
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 4
mov     edx, edi
mov     eax, esi
call    sub_40B389
mov     byte ptr [esi+0ACh], 15h
jmp     loc_40AFEA

loc_40B168:             ; jumptable 0040AF14 case 8
cmp     byte ptr [edx+9], 5
jnz     short loc_40B17E
cmp     dword ptr [edx+10h], 14h
jnz     short loc_40B17E
mov     ebx, 0Ch
jmp     loc_40AFAD

loc_40B17E:
cmp     byte ptr [ebp+9], 6
jnz     short def_40AF14 ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 2
jnz     short def_40AF14 ; jumptable 0040AF14 default case
mov     byte ptr [esi+0ACh], 0
jmp     loc_40AFEA

loc_40B196:             ; jumptable 0040AF14 case 9
cmp     byte ptr [edx+9], 6
jnz     short def_40AF14 ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 0Ah
jnz     short def_40AF14 ; jumptable 0040AF14 default case
mov     byte ptr [esi+0ACh], 2
mov     word ptr [ebx+2], 0
jmp     loc_40AFF0

loc_40B1B4:             ; jumptable 0040AF14 case 10
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4DD43B
cmp     byte ptr [ebp+8], 1
jnz     short def_40AF14 ; jumptable 0040AF14 default case
xor     ebx, ebx
mov     edx, edi
mov     eax, esi
call    sub_40B370
xor     ebx, ebx
mov     edx, edi
mov     eax, esi
call    sub_40B389
mov     byte ptr [esi+0ACh], 16h
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0

def_40AF14:             ; jumptable 0040AF14 default case
pop     ebp

def_40B22B:             ; jumptable 0040B22B default case, case 7
pop     edi
pop     esi
pop     ecx
retn
sub_40AEFA endp

db 8Dh, 40h, 0
jpt_40B22B dd offset loc_40B232 ; jump table for switch statement
dd offset loc_40B23B
dd offset loc_40B26F
dd offset loc_40B29F
dd offset loc_40B2C2
dd offset loc_40B311
dd offset loc_40B337
dd offset def_40B22B



sub_40B216 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     eax, edx
mov     esi, ebx
mov     dl, [ecx+9]
cmp     dl, 7           ; switch 8 cases
ja      short def_40B22B ; jumptable 0040B22B default case, case 7
xor     ebx, ebx
mov     bl, dl
jmp     jpt_40B22B[ebx*4] ; switch jump

loc_40B232:             ; jumptable 0040B22B case 0
inc     dl
mov     [ecx+9], dl
pop     edi
pop     esi
pop     ecx
retn

loc_40B23B:             ; jumptable 0040B22B case 1
cmp     byte ptr [eax+9], 2
jnz     short def_40B22B ; jumptable 0040B22B default case, case 7
cmp     dword ptr [eax+10h], 1
jnz     short def_40B22B ; jumptable 0040B22B default case, case 7
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_40B370
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_40B389
mov     byte ptr [ecx+0ACh], 17h
jmp     loc_40B30A

loc_40B26F:             ; jumptable 0040B22B case 2
cmp     byte ptr [eax+9], 3
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
cmp     dword ptr [eax+10h], 14h
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ecx
call    sub_40B389
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0ACh], 18h
pop     edi
pop     esi
pop     ecx
retn

loc_40B29F:             ; jumptable 0040B22B case 3
cmp     byte ptr [ecx+0A4h], 0Bh
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
mov     byte ptr [ecx+0ACh], 18h
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0Bh
jmp     short loc_40B30A

loc_40B2C2:             ; jumptable 0040B22B case 4
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0Bh
cmp     byte ptr [eax+9], 3
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
mov     edi, [eax+10h]
cmp     edi, 50h ; 'P'
jnz     short loc_40B2F3
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_40B389
pop     edi
pop     esi
pop     ecx
retn

loc_40B2F3:
cmp     edi, 64h ; 'd'
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7

loc_40B2FC:
mov     ebx, 0Dh
mov     edx, esi
mov     eax, ecx
call    sub_40B370

loc_40B30A:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_40B311:             ; jumptable 0040B22B case 5
cmp     byte ptr [eax+9], 3
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
cmp     dword ptr [eax+10h], 0A0h
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
mov     byte ptr [ecx+0ACh], 1Ah
mov     word ptr [esi+2], 0
jmp     short loc_40B2FC

loc_40B337:             ; jumptable 0040B22B case 6
cmp     byte ptr [eax+9], 4
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
cmp     dword ptr [eax+10h], 1
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_40B370
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_40B389
mov     byte ptr [ecx+0ACh], 19h
jmp     short loc_40B30A
sub_40B216 endp




sub_40B370 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50BDE9[ebx*4]
mov     [edx+4], eax
retn
sub_40B370 endp




sub_40B389 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50BE21[ebx*4]
mov     [edx+8], eax
retn
sub_40B389 endp




sub_40B3A2 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+0Bh]
sar     eax, 18h
mov     ecx, [edx+4]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40B3C7
jbe     short loc_40B3CA
cmp     al, 7Fh
jnz     short loc_40B3C7
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40B3CA

loc_40B3C7:
inc     byte ptr [esi+0Eh]

loc_40B3CA:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40B40C
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40B40C:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40B42F
jbe     short loc_40B432
cmp     al, 7Fh
jnz     short loc_40B42F
mov     byte ptr [esi+11h], 0
jmp     short loc_40B432

loc_40B42F:
inc     byte ptr [esi+11h]

loc_40B432:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40B474
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40B474:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40B3A2 endp




sub_40B47F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+670h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40B48F[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40B4A3
mov     eax, ecx
call    sub_4DEADD

loc_40B4A3:
mov     edx, ebx
mov     eax, ecx
call    sub_40B7EE
pop     edx
pop     ecx
pop     ebx
retn
sub_40B47F endp




sub_40B4B0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+670h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
cmp     byte ptr [ecx+3], 0
jnz     short loc_40B4D7
mov     word ptr [ecx+56h], 0C00h
jmp     short loc_40B4DD

loc_40B4D7:
mov     word ptr [ecx+56h], 800h

loc_40B4DD:
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 0
xor     eax, eax

loc_40B502:
mov     edx, eax
mov     word ptr [ecx+edx*8+196h], 4210h
inc     eax
cmp     eax, 18h
jb      short loc_40B502
or      byte ptr [ecx+23Fh], 80h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40B7AE
mov     byte ptr [ecx+10Bh], 0
mov     byte ptr [ecx+117h], 0
mov     byte ptr [ecx+143h], 0FFh
mov     byte ptr [ecx+147h], 0FFh
mov     byte ptr [ecx+14Bh], 0FFh
mov     byte ptr [ecx+14Fh], 0FFh
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40B4B0 endp




sub_40B570 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40B592
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_40B592:
cmp     byte ptr [ecx+3], 0
jnz     short loc_40B59F
add     word ptr [ecx+14h], 3
jmp     short loc_40B5A4

loc_40B59F:
add     word ptr [ecx+18h], 3

loc_40B5A4:
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
jmp     loc_40B678
sub_40B570 endp




sub_40B5C3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset dword_560BDC
lea     edi, [eax+670h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40B5EC
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40B5EC:
cmp     dword ptr [esi+10h], 4Bh ; 'K'
jnz     loc_40B678
mov     ebx, 1
mov     edx, edi
mov     eax, ecx
call    sub_40B7AE
jmp     loc_40B678
sub_40B5C3 endp




sub_40B609 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+670h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40B64E
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+10Bh], 0FFh
mov     byte ptr [ecx+117h], 0FFh
mov     byte ptr [ecx+143h], 0
mov     byte ptr [ecx+147h], 0
inc     byte ptr [ecx+0Ah]

loc_40B64E:
mov     eax, [edi+10h]
cmp     eax, 0C9h
jb      short loc_40B663
jbe     short loc_40B67E
cmp     eax, 0CDh
jz      short loc_40B685
jmp     short loc_40B678

loc_40B663:
cmp     eax, 0BFh
jnz     short loc_40B678
mov     ebx, 2

loc_40B66F:
mov     edx, esi
mov     eax, ecx
call    sub_40B7AE

loc_40B678:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40B67E:
mov     ebx, 3
jmp     short loc_40B66F

loc_40B685:
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_40B7AE
mov     byte ptr [ecx+14Bh], 0
mov     byte ptr [ecx+14Fh], 0
jmp     short loc_40B678
sub_40B609 endp




sub_40B6A3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+670h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40B6D4
xor     ebx, ebx
mov     edx, 12h
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_40B7AE
inc     byte ptr [ecx+0Ah]

loc_40B6D4:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40B6A3 endp




sub_40B6D9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+670h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40B757
cmp     byte ptr [ecx+3], 0
jnz     short loc_40B6FF
mov     word ptr [ecx+56h], 100h
jmp     short loc_40B705

loc_40B6FF:
mov     word ptr [ecx+56h], 400h

loc_40B705:
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+117h], 0
mov     al, [ecx+117h]
mov     [ecx+10Bh], al
mov     byte ptr [ecx+14Bh], 0FFh
mov     al, [ecx+14Bh]
mov     [ecx+147h], al
mov     [ecx+143h], al
mov     byte ptr [ecx+14Fh], 0FFh
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_40B7AE
inc     byte ptr [ecx+0Ah]

loc_40B757:
mov     eax, [edi+10h]
cmp     eax, 5Ah ; 'Z'
jb      short loc_40B780
jbe     short loc_40B7A4
cmp     eax, 8Ch
jb      short loc_40B776
jbe     short loc_40B7A4
cmp     eax, 0A0h
jz      short loc_40B790
jmp     loc_40B678

loc_40B776:
cmp     eax, 7Ch ; '|'

loc_40B779:
jz      short loc_40B79A
jmp     loc_40B678

loc_40B780:
cmp     eax, 1Eh
jb      loc_40B678
jbe     short loc_40B790
cmp     eax, 46h ; 'F'
jmp     short loc_40B779

loc_40B790:
mov     ebx, 6
jmp     loc_40B66F

loc_40B79A:
mov     ebx, 7
jmp     loc_40B66F

loc_40B7A4:
mov     ebx, 8
jmp     loc_40B66F
sub_40B6D9 endp




sub_40B7AE proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50BF48[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50BF6C[eax*4]
mov     [edx+10h], eax
retn
sub_40B7AE endp




sub_40B7EE proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_40B81A
jbe     short loc_40B81E
cmp     ax, 7FFFh
jnz     short loc_40B81A
mov     word ptr [edx+4], 0
jmp     short loc_40B81E

loc_40B81A:
inc     word ptr [esi+4]

loc_40B81E:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_40B863
movsx   eax, word ptr [esi]
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40B863:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_40B88E
jbe     short loc_40B892
cmp     ax, 7FFFh
jnz     short loc_40B88E
mov     word ptr [esi+0Ah], 0
jmp     short loc_40B892

loc_40B88E:
inc     word ptr [esi+0Ah]

loc_40B892:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_40B8E1
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_40B8E1:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40B7EE endp




sub_40B8EE proc near
push    ebx
push    ecx
push    edx
xor     ebx, ebx
mov     bl, [eax+3]
xor     ecx, ecx
mov     cl, [eax+8]
mov     edx, ecx
shl     edx, 2
mov     ecx, ds:off_50BFA0[ebx*4]
add     ecx, edx
lea     ebx, [eax+640h]
mov     edx, offset dword_560BDC
call    dword ptr [ecx]
pop     edx
pop     ecx
pop     ebx
retn
sub_40B8EE endp




sub_40B91A proc near
push    ecx
push    esi
mov     ecx, eax
mov     eax, edx
mov     esi, ebx
mov     dl, [ecx+9]
cmp     dl, 1
jb      short loc_40B938
jbe     short loc_40B968
cmp     dl, 2
jz      loc_40B9FE
pop     esi
pop     ecx
retn

loc_40B938:
test    dl, dl
jnz     loc_40BA95
mov     [ebx+12h], dl
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40C646
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40C65F
mov     edx, esi
mov     eax, ecx
call    sub_40C755
inc     byte ptr [ecx+9]
pop     esi
pop     ecx
retn

loc_40B968:
mov     bh, [eax+9]
cmp     bh, 1
jnz     short loc_40B998
mov     edx, [eax+10h]
cmp     edx, 1
jnz     short loc_40B98B

loc_40B978:
mov     ebx, 11h

loc_40B97D:
mov     edx, esi
mov     eax, ecx
call    sub_40C65F
jmp     loc_40B9F2

loc_40B98B:
cmp     edx, 23h ; '#'
jnz     loc_40B9F2

loc_40B994:
xor     ebx, ebx
jmp     short loc_40B97D

loc_40B998:
cmp     bh, 2
jnz     loc_40B9F2
mov     eax, [eax+10h]
cmp     eax, 87h
jb      short loc_40B9D1
jbe     short loc_40B994
cmp     eax, 0E6h
jb      short loc_40B9C8
jbe     short loc_40B994
cmp     eax, 0FFh
jb      short loc_40B9F2
jbe     short loc_40B978
cmp     eax, 12Ch
jz      short loc_40B9E4
jmp     short loc_40B9F2

loc_40B9C8:
cmp     eax, 0D2h

loc_40B9CD:
jz      short loc_40B978
jmp     short loc_40B9F2

loc_40B9D1:
cmp     eax, 41h ; 'A'
jb      short loc_40B9DD
jbe     short loc_40B994
cmp     eax, 50h ; 'P'
jmp     short loc_40B9CD

loc_40B9DD:
cmp     eax, 14h
jnz     short loc_40B9F2
jmp     short loc_40B978

loc_40B9E4:
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40C65F
inc     byte ptr [ecx+9]

loc_40B9F2:
mov     edx, esi
mov     eax, ecx
call    sub_40C755
pop     esi
pop     ecx
retn

loc_40B9FE:
cmp     byte ptr [eax+9], 8
jnz     loc_40BA95
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 10h
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_40C646
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40C65F
mov     edx, esi
mov     eax, ecx
call    sub_40C678
mov     byte ptr [esi+12h], 1

loc_40BA72:
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     ebx, [esi]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B

loc_40BA95:
pop     esi
pop     ecx
retn
sub_40B91A endp

db 8Bh, 0C0h
jpt_40BB24 dd offset loc_40BB2B ; jump table for switch statement
dd offset loc_40BB4B
dd offset loc_40BBFA
dd offset loc_40BC34
dd offset loc_40BCC4
dd offset loc_40BD63
dd offset loc_40BDA1
dd offset loc_40BE2A
dd offset loc_40BE7D
dd offset loc_40BEDF
dd offset loc_40BF40
dd offset loc_40BF65
dd offset loc_40BF95
dd offset loc_40C002
dd offset loc_40C066
dd offset loc_40C080
dd offset loc_40C0B9



sub_40BADE proc near

var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     eax, edx
mov     [esp+14h+var_14], ebx
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
mov     dl, [ebp+0ACh]
mov     [ebp+0ADh], dl
mov     dl, [ebp+9]
cmp     dl, 10h         ; switch 17 cases
ja      def_40BB24      ; jumptable 0040BB24 default case
and     edx, 0FFh
jmp     jpt_40BB24[edx*4] ; switch jump

loc_40BB2B:             ; jumptable 0040BB24 case 0
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 9
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 1

loc_40BB40:             ; jumptable 0040BB24 default case
jnz     def_40BB24
jmp     loc_40BD5B

loc_40BB4B:             ; jumptable 0040BB24 case 1
mov     dl, [eax+9]
cmp     dl, 9
jnz     short loc_40BB8F
mov     eax, [eax+10h]
cmp     eax, 14h
jb      short loc_40BB72
jbe     short loc_40BB85
cmp     eax, 3Ch ; '<'
jb      def_40BB24      ; jumptable 0040BB24 default case
jbe     short loc_40BB7B
cmp     eax, 64h ; 'd'
jz      short loc_40BB85
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BB72:
cmp     eax, 0Ah
jnz     def_40BB24      ; jumptable 0040BB24 default case

loc_40BB7B:
mov     ebx, 11h
jmp     loc_40C10A

loc_40BB85:
mov     ebx, 1
jmp     loc_40C10A

loc_40BB8F:
cmp     dl, 0Ch
jnz     short loc_40BBB0
cmp     dword ptr [eax+10h], 1
jnz     short loc_40BBB0
mov     ebx, 2
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
xor     ebx, ebx
jmp     loc_40C10A

loc_40BBB0:
cmp     byte ptr [eax+9], 0Eh
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 12Ch
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 0Eh
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 12h
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
mov     byte ptr [ebp+0ACh], 11h

loc_40BBEC:
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 0
jmp     loc_40BD5B

loc_40BBFA:             ; jumptable 0040BB24 case 2
cmp     byte ptr [eax+9], 0Fh
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     edi, [eax+10h]
cmp     edi, 1
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 3
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, edi
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
mov     byte ptr [ebp+0ACh], 12h
jmp     short loc_40BBEC

loc_40BC34:             ; jumptable 0040BB24 case 3
mov     bl, [eax+9]
cmp     bl, 0Fh
jnz     short loc_40BC71
mov     eax, [eax+10h]
cmp     eax, 14h
jb      short loc_40BC54
jbe     short loc_40BC6A
cmp     eax, 28h ; '('
jb      short loc_40BC9D
jbe     short loc_40BC59
cmp     eax, 50h ; 'P'
jz      short loc_40BC6A
jmp     short loc_40BC9D

loc_40BC54:
cmp     eax, 5
jnz     short loc_40BC9D

loc_40BC59:
mov     ebx, 11h

loc_40BC5E:
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
jmp     short loc_40BC9D

loc_40BC6A:
mov     ebx, 1
jmp     short loc_40BC5E

loc_40BC71:
cmp     bl, 11h
jnz     short loc_40BC9D
cmp     dword ptr [eax+10h], 1
jnz     short loc_40BC9D
mov     ebx, 2
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 3
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
inc     byte ptr [ebp+9]

loc_40BC9D:
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      def_40BB24      ; jumptable 0040BB24 default case
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Ah ; '*'
mov     eax, ebp
call    sub_4DD43B
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BCC4:             ; jumptable 0040BB24 case 4
mov     ch, [eax+9]
cmp     ch, 11h
jnz     short loc_40BD24
mov     ecx, [eax+10h]
cmp     ecx, 0Ah
jnz     short loc_40BCE8
mov     ebx, 0Fh
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BCE8:
cmp     ecx, 1Eh
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 4
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 4
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
mov     byte ptr [ebp+0ACh], 14h
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 0
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BD24:
cmp     ch, 12h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 1
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     word ptr [ebp+56h], 700h
mov     ebx, 2
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 2

loc_40BD51:
mov     edx, [esp+14h+var_14]

loc_40BD54:
mov     eax, ebp
call    sub_40C65F

loc_40BD5B:
inc     byte ptr [ebp+9]
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BD63:             ; jumptable 0040BB24 case 5
cmp     byte ptr [eax+9], 13h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 0Ah
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 5
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 4
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
mov     byte ptr [ebp+0ACh], 15h
jmp     loc_40BBEC

loc_40BDA1:             ; jumptable 0040BB24 case 6
mov     dl, [eax+9]
cmp     dl, 13h
jnz     short loc_40BDED
mov     eax, [eax+10h]
cmp     eax, 28h ; '('
jb      short loc_40BDC9
jbe     short loc_40BDD9
cmp     eax, 50h ; 'P'
jb      short loc_40BDC4
jbe     short loc_40BDD9
cmp     eax, 78h ; 'x'

loc_40BDBD:
jz      short loc_40BDE3
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BDC4:
cmp     eax, 37h ; '7'
jmp     short loc_40BDBD

loc_40BDC9:
cmp     eax, 0Fh
jb      def_40BB24      ; jumptable 0040BB24 default case
jbe     short loc_40BDD9
cmp     eax, 1Eh
jmp     short loc_40BDBD

loc_40BDD9:
mov     ebx, 13h
jmp     loc_40C10A

loc_40BDE3:
mov     ebx, 2
jmp     loc_40C10A

loc_40BDED:
cmp     dl, 15h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 1
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 2
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 2
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
mov     byte ptr [ebp+0ACh], 16h
jmp     loc_40BBEC

loc_40BE2A:             ; jumptable 0040BB24 case 7
cmp     byte ptr [eax+9], 15h
jnz     short loc_40BE54
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_40BE54
mov     ebx, 0Eh
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 13h
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F

loc_40BE54:
cmp     byte ptr [ebp+0A4h], 0Eh
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     byte ptr [ebp+0ACh], 16h
mov     byte ptr [ebp+0ADh], 0FFh

loc_40BE6F:
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 0Eh
jmp     loc_40BD5B

loc_40BE7D:             ; jumptable 0040BB24 case 8
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 15h
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     eax, [eax+10h]
cmp     eax, 32h ; '2'
jb      def_40BB24      ; jumptable 0040BB24 default case
jbe     short loc_40BEA6
cmp     eax, 46h ; 'F'
jz      short loc_40BEBF
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BEA6:
mov     ebx, 3
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 15h
jmp     loc_40C10A

loc_40BEBF:
mov     ebx, 11h
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 16h
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
jmp     short loc_40BE6F

loc_40BEDF:             ; jumptable 0040BB24 case 9
cmp     byte ptr [eax+9], 15h
jnz     short loc_40BF04
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short loc_40BF04
mov     ebx, 7
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 5
jmp     loc_40C10A

loc_40BF04:
cmp     byte ptr [eax+9], 16h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 1
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     byte ptr [ebp+0ACh], 17h
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 0
mov     ebx, 2
mov     edx, eax
mov     eax, ebp
call    sub_40C646
mov     ebx, 6
jmp     loc_40BD51

loc_40BF40:             ; jumptable 0040BB24 case 10
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 17h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 69h ; 'i'
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 11h
jmp     loc_40BD51

loc_40BF65:             ; jumptable 0040BB24 case 11
cmp     byte ptr [ebp+0A4h], 8
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     byte ptr [ebp+0ACh], 17h
mov     byte ptr [ebp+0ADh], 0FFh
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 8
mov     ebx, 6
mov     edx, eax
jmp     loc_40BD54

loc_40BF95:             ; jumptable 0040BB24 case 12
mov     byte ptr [ebp+0ADh], 0FFh
mov     eax, [eax+10h]
cmp     eax, 0D2h
jb      short loc_40BFC5
jbe     loc_40BB7B
cmp     eax, 104h
jb      def_40BB24      ; jumptable 0040BB24 default case
jbe     short loc_40BFDF
cmp     eax, 118h
jz      short loc_40BFE9
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BFC5:
cmp     eax, 78h ; 'x'
jb      def_40BB24      ; jumptable 0040BB24 default case
jbe     loc_40BB7B
cmp     eax, 0BEh
jnz     def_40BB24      ; jumptable 0040BB24 default case

loc_40BFDF:
mov     ebx, 6
jmp     loc_40C10A

loc_40BFE9:
mov     ebx, 8
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 17h
jmp     loc_40BD51

loc_40C002:             ; jumptable 0040BB24 case 13
cmp     byte ptr [eax+9], 17h
jnz     short loc_40C01B
cmp     dword ptr [eax+10h], 122h
jnz     short loc_40C01B
mov     ebx, 7
jmp     loc_40C10A

loc_40C01B:
mov     dl, [eax+9]
cmp     dl, 18h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 1
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     [ebp+0ACh], dl
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 0
mov     byte ptr [ebp+108h], 14h
mov     byte ptr [ebp+114h], 15h
mov     ebx, 9
mov     edx, eax
mov     eax, ebp
call    sub_40C646
mov     ebx, 9
jmp     loc_40BD51

loc_40C066:             ; jumptable 0040BB24 case 14
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 19h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 5
jmp     loc_40BB40

loc_40C080:             ; jumptable 0040BB24 case 15
cmp     byte ptr [eax+9], 1Dh
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 5
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     byte ptr [ebp+0ACh], 19h
mov     edx, ebx
mov     word ptr [ebx+2], 0
mov     ebx, 0Ah
mov     eax, ebp
call    sub_40C646
mov     ebx, 0Ah
jmp     loc_40BD51

loc_40C0B9:             ; jumptable 0040BB24 case 16
cmp     byte ptr [eax+9], 20h ; ' '
jnz     short def_40BB24 ; jumptable 0040BB24 default case
mov     eax, [eax+10h]
cmp     eax, 28h ; '('
jb      short loc_40C0D7
jbe     short loc_40C0FE
cmp     eax, 3Ch ; '<'
jb      short def_40BB24 ; jumptable 0040BB24 default case
jbe     short loc_40C0F7
cmp     eax, 55h ; 'U'
jz      short loc_40C105
jmp     short def_40BB24 ; jumptable 0040BB24 default case

loc_40C0D7:
cmp     eax, 1Eh
jnz     short def_40BB24 ; jumptable 0040BB24 default case
mov     byte ptr [ebp+0ACh], 1Ah
mov     edx, ebx
mov     word ptr [ebx+2], 0
mov     ebx, 12h
mov     eax, ebp
call    sub_40C646

loc_40C0F7:
mov     ebx, 18h
jmp     short loc_40C10A

loc_40C0FE:
mov     ebx, 0Bh
jmp     short loc_40C10A

loc_40C105:
mov     ebx, 0Bh

loc_40C10A:
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F

def_40BB24:             ; jumptable 0040BB24 default case
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C678
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_40C141
mov     ebx, [esp+14h+var_14]
mov     ebx, [ebx]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_40C148

loc_40C141:
mov     eax, ebp
call    sub_4DEADD

loc_40C148:
mov     eax, [esp+14h+var_14]
cmp     byte ptr [eax+12h], 0
jz      short loc_40C164
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 32h ; '2'
mov     eax, ebp
call    sub_4ED88B

loc_40C164:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_40BADE endp




sub_40C16C proc near
push    ecx
push    esi
mov     ecx, eax
mov     esi, ebx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1Ah
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0
mov     byte ptr [ebx+12h], 1
mov     byte ptr [ecx+108h], 14h
mov     byte ptr [ecx+114h], 15h
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ecx
call    sub_40C646
mov     ebx, 0Ch
mov     edx, esi
mov     eax, ecx
call    sub_40C65F
mov     edx, esi
mov     eax, ecx
call    sub_40C678
jmp     loc_40BA72
sub_40C16C endp

jpt_40C283 dd offset loc_40C28A ; jump table for switch statement
dd offset loc_40C2B7
dd offset loc_40C2D7
dd offset loc_40C30A
dd offset loc_40C326
dd offset loc_40C338
dd offset loc_40C3F5
dd offset loc_40C44C
dd offset loc_40C46B
dd offset loc_40C477
dd offset loc_40C4AB
dd offset loc_40C50B
dd offset loc_40C535
dd offset loc_40C583
dd offset loc_40C59A
dd offset loc_40C5BB
dd offset loc_40C5D7
dd offset def_40C283



sub_40C23E proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     [esp+18h+var_18], edx
mov     [esp+18h+var_14], ebx
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
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
mov     al, [ebp+9]
cmp     al, 11h         ; switch 18 cases
ja      def_40C283      ; jumptable 0040C283 default case, case 17
xor     edx, edx
mov     dl, al
jmp     jpt_40C283[edx*4] ; switch jump

loc_40C28A:             ; jumptable 0040C283 case 0
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 5
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 1Bh

loc_40C2A8:
mov     eax, [esp+18h+var_14]
mov     word ptr [eax+2], 0
jmp     loc_40C413

loc_40C2B7:             ; jumptable 0040C283 case 1
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 6
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 1Ch
jmp     short loc_40C2A8

loc_40C2D7:             ; jumptable 0040C283 case 2
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 6
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 0A0h
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 1Dh
mov     ebx, 13h
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C646
jmp     short loc_40C2A8

loc_40C30A:             ; jumptable 0040C283 case 3
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     ebx, 0Dh
jmp     loc_40C3E8

loc_40C326:             ; jumptable 0040C283 case 4
mov     byte ptr [ebp+0ACh], 1Eh

loc_40C32D:
mov     word ptr [ebx+2], 0
jmp     loc_40C413

loc_40C338:             ; jumptable 0040C283 case 5
mov     eax, [esp+18h+var_18]
mov     dl, [eax+9]
cmp     dl, 6
jnz     short loc_40C3A7
mov     eax, [eax+10h]
cmp     eax, 0E6h
jb      short loc_40C368
jbe     short loc_40C38D
cmp     eax, 0FAh
jb      def_40C283      ; jumptable 0040C283 default case, case 17
jbe     short loc_40C383
cmp     eax, 113h
jz      short loc_40C39D
jmp     def_40C283      ; jumptable 0040C283 default case, case 17

loc_40C368:
cmp     eax, 0C8h
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     ebx, 10h
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C646

loc_40C383:
mov     ebx, 19h
jmp     loc_40C4E8

loc_40C38D:
mov     ebx, 0Ch
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C646

loc_40C39D:
mov     ebx, 0Dh
jmp     loc_40C4E8

loc_40C3A7:
cmp     dl, 7
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 1Fh
mov     edx, ebx
mov     word ptr [ebx+2], 0
mov     byte ptr [ebp+108h], 4
mov     byte ptr [ebp+114h], 7
mov     ebx, 2
mov     eax, ebp
call    sub_40C646

loc_40C3E3:
mov     ebx, 4

loc_40C3E8:
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C65F
jmp     short loc_40C413

loc_40C3F5:             ; jumptable 0040C283 case 6
mov     byte ptr [ebp+0ADh], 0FFh
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 8
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 0Ah

loc_40C40D:             ; jumptable 0040C283 default case, case 17
jnz     def_40C283

loc_40C413:
inc     byte ptr [ebp+9]

def_40C283:             ; jumptable 0040C283 default case, case 17
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C678
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      loc_40C61A
mov     ebx, [esp+18h+var_14]
mov     ebx, [ebx]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ebp
call    sub_4DE96B
jmp     loc_40C621

loc_40C44C:             ; jumptable 0040C283 case 7
mov     eax, [esp+18h+var_18]
mov     ebx, [eax+10h]
cmp     ebx, 32h ; '2'
jnz     short loc_40C461
mov     ebx, 13h
jmp     loc_40C4E8

loc_40C461:
cmp     ebx, 41h ; 'A'
jnz     short def_40C283 ; jumptable 0040C283 default case, case 17
jmp     loc_40C3E3

loc_40C46B:             ; jumptable 0040C283 case 8
mov     byte ptr [ebp+0ACh], 20h ; ' '
jmp     loc_40C32D

loc_40C477:             ; jumptable 0040C283 case 9
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 0Ah
jnz     short def_40C283 ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jnz     short def_40C283 ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 21h ; '!'
mov     edx, ebx
mov     word ptr [ebx+2], 0
mov     ebx, 0Dh
mov     eax, ebp
call    sub_40C646
mov     ebx, 0Eh
jmp     loc_40C3E8

loc_40C4AB:             ; jumptable 0040C283 case 10
mov     byte ptr [ebp+0ADh], 0FFh
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 0Ah
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     esi, [eax+10h]
cmp     esi, 0Ah
jnz     short loc_40C4DE
mov     ebx, 6
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 1Ah
jmp     short loc_40C4E8

loc_40C4DE:
cmp     esi, 1Eh
jnz     short loc_40C4F8

loc_40C4E3:
mov     ebx, 0Fh

loc_40C4E8:
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C65F
jmp     def_40C283      ; jumptable 0040C283 default case, case 17

loc_40C4F8:
cmp     esi, 3Ch ; '<'
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     ebx, 1Ah
jmp     loc_40C3E8

loc_40C50B:             ; jumptable 0040C283 case 11
cmp     byte ptr [ebp+0A4h], 0Dh
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 21h ; '!'
mov     byte ptr [ebp+114h], 16h
mov     eax, [esp+18h+var_14]
mov     word ptr [eax+2], 0Dh
jmp     loc_40C413

loc_40C535:             ; jumptable 0040C283 case 12
mov     byte ptr [ebp+0ADh], 0FFh
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 0Ah
jnz     short loc_40C54B
cmp     dword ptr [eax+10h], 55h ; 'U'
jz      short loc_40C4E3

loc_40C54B:
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 0Bh
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+114h], 7
mov     ebx, 2
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 10h
jmp     loc_40C3E8

loc_40C583:             ; jumptable 0040C283 case 13
cmp     byte ptr [ebp+0A4h], 12h
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
inc     al
mov     [ebp+9], al
jmp     def_40C283      ; jumptable 0040C283 default case, case 17

loc_40C59A:             ; jumptable 0040C283 case 14
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, ebp
call    sub_4DD43B
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jmp     loc_40C40D

loc_40C5BB:             ; jumptable 0040C283 case 15
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, ebp
call    sub_4DD43B
mov     byte ptr [ebp+0ACh], 1
jmp     loc_40C2A8

loc_40C5D7:             ; jumptable 0040C283 case 16
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, ebp
call    sub_4DD43B
mov     ah, [ebp+0A4h]
cmp     ah, 3
jz      short loc_40C5F7
cmp     ah, 0Bh
jnz     short loc_40C604

loc_40C5F7:
lea     edx, [ebp+14h]
mov     eax, 91h
call    sub_4D8BC3

loc_40C604:
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 0Ch
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jmp     loc_40C40D

loc_40C61A:
mov     eax, ebp
call    sub_4DEADD

loc_40C621:
mov     eax, [esp+18h+var_14]
cmp     byte ptr [eax+12h], 0
jz      short loc_40C63E
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 32h ; '2'
mov     eax, ebp
call    sub_4ED88B

loc_40C63E:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_40C23E endp




sub_40C646 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50C156[ebx*4]
mov     [edx+4], eax
retn
sub_40C646 endp




sub_40C65F proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50C1A6[ebx*4]
mov     [edx+8], eax
retn
sub_40C65F endp




sub_40C678 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+0Bh]
sar     eax, 18h
mov     ecx, [edx+4]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40C69D
jbe     short loc_40C6A0
cmp     al, 7Fh
jnz     short loc_40C69D
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40C6A0

loc_40C69D:
inc     byte ptr [esi+0Eh]

loc_40C6A0:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40C6E2
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

