loc_40C6E2:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40C705
jbe     short loc_40C708
cmp     al, 7Fh
jnz     short loc_40C705
mov     byte ptr [esi+11h], 0
jmp     short loc_40C708

loc_40C705:
inc     byte ptr [esi+11h]

loc_40C708:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40C74A
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

loc_40C74A:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40C678 endp




sub_40C755 proc near
push    ebx
push    ecx
mov     eax, offset byte_5F8364
mov     ecx, [edx+0Bh]
sar     ecx, 18h
mov     ebx, [edx+4]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_40C77B
jbe     short loc_40C77E
cmp     bl, 7Fh
jnz     short loc_40C77B
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40C77E

loc_40C77B:
inc     byte ptr [edx+0Eh]

loc_40C77E:
mov     ecx, [edx+0Bh]
sar     ecx, 18h
mov     ebx, [edx+4]
mov     bl, [ecx+ebx]
mov     [edx+0Ch], bl
mov     [edx+0Dh], bl
mov     [eax+168h], bl
mov     ecx, [edx+0Eh]
sar     ecx, 18h
mov     ebx, [edx+8]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_40C7B5
jbe     short loc_40C7B8
cmp     bl, 7Fh
jnz     short loc_40C7B5
mov     byte ptr [edx+11h], 0
jmp     short loc_40C7B8

loc_40C7B5:
inc     byte ptr [edx+11h]

loc_40C7B8:
mov     ecx, [edx+0Eh]
sar     ecx, 18h
mov     ebx, [edx+8]
mov     bl, [ecx+ebx]
mov     [edx+0Fh], bl
mov     [edx+10h], bl
mov     [eax+169h], bl
pop     ecx
pop     ebx
retn
sub_40C755 endp




sub_40C7D3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559084, dx
mov     eax, ds:dword_559080
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40C80F:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40C7D3 endp




sub_40C81B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_55907C, dx
mov     eax, ds:dword_559078
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40C80F
sub_40C81B endp




sub_40C859 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_559080
test    ecx, ecx
jz      loc_40C8FF
cmp     ds:dword_559078, 0
jz      loc_40C8FF
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_40C8BB
jge     short loc_40C893
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40C8AF

loc_40C893:
inc     ds:word_559084
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_559080+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40C8BB
add     eax, 4

loc_40C8AF:
mov     ds:dword_559080, eax
mov     eax, edx
call    sub_40C7D3

loc_40C8BB:
mov     eax, ds:dword_559078
mov     di, [eax+2]
test    di, di
jz      short loc_40C8FF
jge     short loc_40C8D7
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40C8F3

loc_40C8D7:
inc     ds:word_55907C
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_559078+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40C8FF
add     eax, 4

loc_40C8F3:
mov     ds:dword_559078, eax
mov     eax, edx
call    sub_40C81B

loc_40C8FF:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_40C859 endp




sub_40C904 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_55908C
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40C95E
cmp     bl, ds:byte_560BE4
jnz     short loc_40C95E
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_40C95E
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_40C95E
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C3CA[eax*4]
mov     ds:dword_559080, eax
mov     eax, edx
call    sub_40C7D3
add     ds:dword_55908C, 6

loc_40C95E:
mov     eax, ds:dword_559088
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40C9A5
cmp     bl, [ecx+8]
jnz     short loc_40C9A5
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_40C9A5
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_40C9A5
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C3FA[eax*4]
mov     ds:dword_559078, eax
mov     eax, edx
call    sub_40C81B
add     ds:dword_559088, 6

loc_40C9A5:
mov     eax, edx
call    sub_40C859
pop     edx
pop     ecx
pop     ebx
retn
sub_40C904 endp




sub_40C9B0 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     ds:dword_55908C, offset unk_50C44A
mov     ds:dword_559088, offset unk_50C498
xor     eax, eax

loc_40C9E5:
mov     edx, eax
mov     word ptr [ecx+edx*8+196h], 4210h
inc     eax
cmp     eax, 18h
jl      short loc_40C9E5
mov     word ptr [ecx+0Eh], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_40C9B0 endp




sub_40CA03 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CA1F
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CA1F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CA03 endp




sub_40CA23 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CA3F
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CA3F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CA23 endp




sub_40CA43 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CA5F
xor     ebx, ebx
mov     edx, 12h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CA5F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CA43 endp




sub_40CA63 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CA7F
xor     ebx, ebx
mov     edx, 13h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CA7F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CA63 endp




sub_40CA83 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CA9F
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CA9F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CA83 endp




sub_40CAA3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_40CAB5
jbe     short loc_40CAC2
pop     edx
pop     ecx
pop     ebx
retn

loc_40CAB5:
test    al, al
jnz     short loc_40CADE
xor     ebx, ebx
mov     edx, 1Bh
jmp     short loc_40CAD4

loc_40CAC2:
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 35h ; '5'
jnz     short loc_40CADE
xor     ebx, ebx
mov     edx, 15h

loc_40CAD4:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CADE:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CAA3 endp




sub_40CAE2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CB09
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CB09:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CAE2 endp




sub_40CB0D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CB29
xor     ebx, ebx
mov     edx, 17h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CB29:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CB0D endp




sub_40CB2D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CB49
xor     ebx, ebx
mov     edx, 18h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CB49:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CB2D endp




sub_40CB4D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CB69
xor     ebx, ebx
mov     edx, 19h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CB69:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CB4D endp




sub_40CB6D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CB89
xor     ebx, ebx
mov     edx, 1Ah
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CB89:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CB6D endp




sub_40CB8D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_40CBA2
jbe     short loc_40CBD1
cmp     al, 2
jz      short loc_40CBE4
jmp     short loc_40CBF6

loc_40CBA2:
test    al, al
jnz     short loc_40CBF6
xor     ebx, ebx
mov     edx, 10h
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ch], 14h
mov     word ptr [esi+56h], 5DCh
mov     dword ptr [esi+1Ch], 0FEB60000h
mov     dword ptr [esi+24h], 0FE520000h
inc     byte ptr [esi+0Ah]
jmp     short loc_40CBF6

loc_40CBD1:
mov     bl, [esi+0Ch]
dec     bl
mov     [esi+0Ch], bl
jnz     short loc_40CBF6
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Ch], 1Ch
jmp     short loc_40CBF6

loc_40CBE4:
mov     ah, [esi+0Ch]
dec     ah
mov     [esi+0Ch], ah
jnz     short loc_40CBF1
inc     byte ptr [esi+0Ah]

loc_40CBF1:
add     word ptr [esi+56h], 14h

loc_40CBF6:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40CB8D endp




sub_40CC0B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_40CC20
jbe     short loc_40CC4F
cmp     al, 2
jz      short loc_40CC62
jmp     short loc_40CBF6

loc_40CC20:
test    al, al
jnz     short loc_40CBF6
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ch], 14h
mov     word ptr [esi+56h], 0
mov     dword ptr [esi+1Ch], 0FE5C0000h
mov     dword ptr [esi+24h], 0FF3D0000h
inc     byte ptr [esi+0Ah]
jmp     short loc_40CBF6

loc_40CC4F:
mov     ah, [esi+0Ch]
dec     ah
mov     [esi+0Ch], ah
jnz     short loc_40CBF6
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Ch], 1Ch
jmp     short loc_40CBF6

loc_40CC62:
sub     word ptr [esi+56h], 14h
jmp     short loc_40CBF6
sub_40CC0B endp




sub_40CC69 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40CC73[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40CC92
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40CC92:
mov     eax, ecx
call    sub_40C904
mov     eax, ds:dword_560C0C
mov     dl, [ecx+9]
cmp     dl, 2
jb      short loc_40CCB2
jbe     short loc_40CCDA
cmp     dl, 5
jz      short loc_40CCF9
jmp     loc_40CD23

loc_40CCB2:
cmp     dl, 1
jnz     loc_40CD23
mov     edx, [ecx+98h]
mov     bl, [edx]
cmp     bl, 22h ; '"'
jb      short loc_40CD23
mov     dl, bl
and     edx, 0FFh
mov     dx, word ptr ds:(off_50C1CE+2)[edx*2]
jmp     short loc_40CD1F

loc_40CCDA:
mov     edx, [ecx+98h]
mov     bh, [edx]
cmp     bh, 4
ja      short loc_40CD23
mov     dl, bh
and     edx, 0FFh
mov     dx, ds:word_50C24C[edx*2]
jmp     short loc_40CD1F

loc_40CCF9:
cmp     byte ptr [ecx+0ACh], 15h
jnz     short loc_40CD23
mov     edx, [ecx+98h]
mov     bl, [edx]
cmp     bl, 1Bh
jb      short loc_40CD23
mov     dl, bl
and     edx, 0FFh
mov     dx, ds:word_50C220[edx*2]

loc_40CD1F:
mov     [eax+0Ch], dx

loc_40CD23:
mov     eax, [ecx+148h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_40CD6E
cmp     byte ptr [ecx+0Fh], 0
jnz     short loc_40CD4A
mov     dl, [ecx+0Eh]
inc     dl
mov     [ecx+0Eh], dl
cmp     dl, 0Fh
jnz     short loc_40CD57
mov     byte ptr [ecx+0Fh], 1
jmp     short loc_40CD57

loc_40CD4A:
mov     al, [ecx+0Eh]
dec     al
mov     [ecx+0Eh], al
jnz     short loc_40CD57
mov     [ecx+0Fh], al

loc_40CD57:
xor     eax, eax
mov     al, [ecx+0Eh]
imul    eax, 421h
add     eax, 4210h
mov     [ecx+236h], ax

loc_40CD6E:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CC69 endp




sub_40CD72 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_40CD82
mov     eax, edx
call    sub_40C9B0

loc_40CD82:
mov     eax, edx
call    sub_40CC69
pop     edx
retn
sub_40CD72 endp




sub_40CD8B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_55909C, dx
mov     eax, ds:dword_559098
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40CDC7:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40CD8B endp




sub_40CDD3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559094, dx
mov     eax, ds:dword_559090
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40CDC7
sub_40CDD3 endp




sub_40CE11 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_559098
test    ecx, ecx
jz      loc_40CEB7
cmp     ds:dword_559090, 0
jz      loc_40CEB7
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_40CE73
jge     short loc_40CE4B
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40CE67

loc_40CE4B:
inc     ds:word_55909C
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_559098+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40CE73
add     eax, 4

loc_40CE67:
mov     ds:dword_559098, eax
mov     eax, edx
call    sub_40CD8B

loc_40CE73:
mov     eax, ds:dword_559090
mov     di, [eax+2]
test    di, di
jz      short loc_40CEB7
jge     short loc_40CE8F
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40CEAB

loc_40CE8F:
inc     ds:word_559094
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_559090+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40CEB7
add     eax, 4

loc_40CEAB:
mov     ds:dword_559090, eax
mov     eax, edx
call    sub_40CDD3

loc_40CEB7:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_40CE11 endp




sub_40CEBC proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_5590A4
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40CF16
cmp     bl, ds:byte_560BE4
jnz     short loc_40CF16
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_40CF16
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_40CF16
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C5A0[eax*4]
mov     ds:dword_559098, eax
mov     eax, edx
call    sub_40CD8B
add     ds:dword_5590A4, 6

loc_40CF16:
mov     eax, ds:dword_5590A0
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40CF5D
cmp     bl, [ecx+8]
jnz     short loc_40CF5D
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_40CF5D
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_40CF5D
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C5AC[eax*4]
mov     ds:dword_559090, eax
mov     eax, edx
call    sub_40CDD3
add     ds:dword_5590A0, 6

loc_40CF5D:
mov     eax, edx
call    sub_40CE11
pop     edx
pop     ecx
pop     ebx
retn
sub_40CEBC endp




sub_40CF68 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
cmp     byte ptr ds:dword_560BDC+1, 48h ; 'H'
jnz     short loc_40CF9B
mov     ds:dword_5590A4, offset unk_50C5B8
mov     ds:dword_5590A0, offset unk_50C5D6
jmp     short loc_40CFAF

loc_40CF9B:
mov     ds:dword_5590A4, offset unk_50C5FA
mov     ds:dword_5590A0, offset unk_50C606

loc_40CFAF:
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_40CF68 endp




sub_40CFC9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CFE5
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CFE5:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CFC9 endp




sub_40CFE9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40D005
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40D005:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CFE9 endp




sub_40D009 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40D025
xor     ebx, ebx
mov     edx, 12h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40D025:
pop     edx
pop     ecx
pop     ebx
retn
sub_40D009 endp




sub_40D029 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40D045
xor     ebx, ebx
mov     edx, 13h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40D045:
pop     edx
pop     ecx
pop     ebx
retn
sub_40D029 endp




sub_40D049 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40D052[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40D071
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40D071:
mov     eax, ecx
call    sub_40CEBC
pop     edx
pop     ecx
retn
sub_40D049 endp




sub_40D07B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_40D08E
mov     eax, esi
call    sub_40CF68

loc_40D08E:
mov     eax, esi
call    sub_40D049
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
sub_40D07B endp




sub_40D0AD proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590B4, dx
mov     eax, ds:dword_5590B0
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40D0E9:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40D0AD endp




sub_40D0F5 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590AC, dx
mov     eax, ds:dword_5590A8
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40D0E9
sub_40D0F5 endp




sub_40D133 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_5590B0
test    ecx, ecx
jz      loc_40D1D9
cmp     ds:dword_5590A8, 0
jz      loc_40D1D9
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_40D195
jge     short loc_40D16D
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40D189

loc_40D16D:
inc     ds:word_5590B4
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_5590B0+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40D195
add     eax, 4

loc_40D189:
mov     ds:dword_5590B0, eax
mov     eax, edx
call    sub_40D0AD

loc_40D195:
mov     eax, ds:dword_5590A8
mov     di, [eax+2]
test    di, di
jz      short loc_40D1D9
jge     short loc_40D1B1
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40D1CD

loc_40D1B1:
inc     ds:word_5590AC
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_5590A8+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40D1D9
add     eax, 4

loc_40D1CD:
mov     ds:dword_5590A8, eax
mov     eax, edx
call    sub_40D0F5

loc_40D1D9:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_40D133 endp




sub_40D1DE proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_5590BC
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40D238
cmp     bl, ds:byte_560BE4
jnz     short loc_40D238
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_40D238
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_40D238
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C824[eax*4]
mov     ds:dword_5590B0, eax
mov     eax, edx
call    sub_40D0AD
add     ds:dword_5590BC, 6

loc_40D238:
mov     eax, ds:dword_5590B8
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40D27F
cmp     bl, [ecx+8]
jnz     short loc_40D27F
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_40D27F
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_40D27F
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C878[eax*4]
mov     ds:dword_5590A8, eax
mov     eax, edx
call    sub_40D0F5
add     ds:dword_5590B8, 6

loc_40D27F:
mov     eax, edx
call    sub_40D133
pop     edx
pop     ecx
pop     ebx
retn
sub_40D1DE endp




sub_40D28A proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     ds:dword_5590BC, offset unk_50C8CC
mov     ds:dword_5590B8, offset unk_50C95C
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_40D28A endp

db 8Bh, 0C0h
jpt_40D2EA dd offset loc_40D2F1 ; jump table for switch statement
dd offset def_40D2EA
dd offset loc_40D30A
dd offset def_40D2EA
dd offset loc_40D31B



sub_40D2D9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      short def_40D2EA ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
and     eax, 0FFh
jmp     jpt_40D2EA[eax*4] ; switch jump

loc_40D2F1:             ; jumptable 0040D2EA case 0
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B

loc_40D2FF:
mov     byte ptr [ecx+0Dh], 1
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_40D30A:             ; jumptable 0040D2EA case 2
mov     byte ptr [ecx+0Dh], 0
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 9
jnz     short def_40D2EA ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
jmp     short loc_40D2FF

loc_40D31B:             ; jumptable 0040D2EA case 4
mov     byte ptr [ecx+0Dh], 0

def_40D2EA:             ; jumptable 0040D2EA default case, cases 1,3
pop     edx             ; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
pop     ecx
pop     ebx
retn
sub_40D2D9 endp

db 8Bh, 0C0h
jpt_40D34E dd offset loc_40D355 ; jump table for switch statement
dd offset loc_40D369
dd offset def_40D2EA
dd offset loc_40D37A
dd offset loc_40D390
dd offset def_40D2EA



sub_40D33D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      short def_40D2EA ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
and     eax, 0FFh
jmp     jpt_40D34E[eax*4] ; switch jump

loc_40D355:             ; jumptable 0040D34E case 0
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
jmp     short loc_40D389

loc_40D369:             ; jumptable 0040D34E case 1
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 9
jnz     short def_40D2EA ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
mov     byte ptr [ecx+0Dh], 1
jmp     short loc_40D389

loc_40D37A:             ; jumptable 0040D34E case 3
mov     byte ptr [ecx+0Dh], 0
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 14h

loc_40D387:             ; jumptable 0040D2EA default case, cases 1,3
jnz     short def_40D2EA ; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4

loc_40D389:
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_40D390:             ; jumptable 0040D34E case 4
add     dword ptr [ecx+1Ch], 28000h
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 3Dh ; '='
jmp     short loc_40D387
sub_40D33D endp

db 8Dh, 40h, 0
jpt_40D3D2 dd offset loc_40D3D9 ; jump table for switch statement
dd offset loc_40D3F2
dd offset loc_40D416
dd offset loc_40D42F
dd offset def_40D2EA
dd offset loc_40D3EA



sub_40D3BD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_40D2EA      ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
and     eax, 0FFh
jmp     jpt_40D3D2[eax*4] ; switch jump

loc_40D3D9:             ; jumptable 0040D3D2 case 0
xor     ebx, ebx
mov     edx, 12h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40D3EA:             ; jumptable 0040D3D2 case 5
mov     byte ptr [ecx+0Dh], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_40D3F2:             ; jumptable 0040D3D2 case 1
add     dword ptr [ecx+1Ch], 1B102h
sub     dword ptr [ecx+24h], 9D9Ah
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 13h

loc_40D409:             ; jumptable 0040D2EA default case, cases 1,3
jnz     def_40D2EA      ; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4

loc_40D40F:
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_40D416:             ; jumptable 0040D3D2 case 2
add     dword ptr [ecx+1Ch], 12CB3h
sub     dword ptr [ecx+24h], 6D72h
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 1Dh
jmp     short loc_40D409

loc_40D42F:             ; jumptable 0040D3D2 case 3
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 31h ; '1'
jnz     def_40D2EA      ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
mov     byte ptr [ecx+0Dh], 1
jmp     short loc_40D40F
sub_40D3BD endp

db 90h
jpt_40D46E dd offset loc_40D475 ; jump table for switch statement
dd offset loc_40D48E
dd offset def_40D2EA
dd offset loc_40D4B2
dd offset def_40D2EA



sub_40D459 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_40D2EA      ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
and     eax, 0FFh
jmp     jpt_40D46E[eax*4] ; switch jump

loc_40D475:             ; jumptable 0040D46E case 0
xor     ebx, ebx
mov     edx, 13h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Dh], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_40D48E:             ; jumptable 0040D46E case 1
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 18h
jnz     def_40D2EA      ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
xor     ebx, ebx
mov     edx, 14h

loc_40D4A4:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_40D4B2:             ; jumptable 0040D46E case 3
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 0Bh
jnz     def_40D2EA      ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
xor     ebx, ebx
mov     edx, 15h
jmp     short loc_40D4A4
sub_40D459 endp




sub_40D4CA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40D4E6
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40D4E6:
pop     edx
pop     ecx
pop     ebx
retn
sub_40D4CA endp




sub_40D4EA proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40D4F3[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40D512
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40D512:
mov     eax, ecx
call    sub_40D1DE
pop     edx
pop     ecx
retn
sub_40D4EA endp




sub_40D51C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_40D52F
mov     eax, esi
call    sub_40D28A

loc_40D52F:
mov     eax, esi
call    sub_40D4EA
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
sub_40D51C endp




sub_40D54E proc near
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
movzx   esi, byte ptr [eax+3]
mov     ebx, ebp
mov     edx, offset dword_560BDC
call    ds:funcs_40D58D[esi*4]
mov     edx, ebp
mov     eax, ecx
call    sub_40DE4F
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_40D5C2
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_40D5C9

loc_40D5C2:
mov     eax, ecx
call    sub_4DEADD

loc_40D5C9:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40D54E endp




sub_40D5D0 proc near
push    ecx
xor     ecx, ecx
mov     cl, [eax+8]
mov     edx, offset dword_560BDC
call    ds:funcs_40D5DB[ecx*4]
pop     ecx
retn
sub_40D5D0 endp




sub_40D5E4 proc near
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
mov     word ptr [ecx+15Eh], 0
xor     al, al

loc_40D619:
movsx   edx, al
mov     word ptr [ecx+edx*8+196h], 4210h
inc     al
cmp     al, 12h
jl      short loc_40D619
mov     word ptr [ecx+226h], 4210h
mov     word ptr [ecx+22Eh], 0C210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0
mov     word ptr [esi], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40DE36
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
retn
sub_40D5E4 endp

jpt_40D6B8 dd offset loc_40D6BF ; jump table for switch statement
dd offset loc_40D6E1
dd offset loc_40D74C
dd offset loc_40D7AB
dd offset loc_40D7DB
dd offset loc_40D81A
dd offset loc_40D86C
dd offset loc_40D8E5



sub_40D69E proc near
push    ecx
push    esi
mov     esi, eax
mov     eax, edx
mov     ecx, ebx
mov     dl, [esi+9]
cmp     dl, 7           ; switch 8 cases
ja      def_40D6B8      ; jumptable 0040D6B8 default case
and     edx, 0FFh
jmp     jpt_40D6B8[edx*4] ; switch jump

loc_40D6BF:             ; jumptable 0040D6B8 case 0
mov     byte ptr [esi+0ADh], 0FFh
mov     ch, [eax+4]
cmp     ch, 1
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
cmp     ch, [eax+5]
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
add     [esi+9], ch
pop     esi
pop     ecx
retn

loc_40D6E1:             ; jumptable 0040D6B8 case 1
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [eax+9], 1
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     eax, [eax+10h]
cmp     eax, 0Ah
jb      short loc_40D70F
jbe     short loc_40D729
cmp     eax, 28h ; '('
jb      def_40D6B8      ; jumptable 0040D6B8 default case
jbe     short loc_40D734
cmp     eax, 32h ; '2'
jz      short loc_40D738
pop     esi
pop     ecx
retn

loc_40D70F:
cmp     eax, 1
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     ebx, 4
mov     eax, esi
mov     edx, ecx
call    sub_40DE1D
pop     esi
pop     ecx
retn

loc_40D729:
mov     ebx, 7

loc_40D72E:
mov     eax, esi
mov     edx, ecx
jmp     short loc_40D77B

loc_40D734:
xor     ebx, ebx
jmp     short loc_40D72E

loc_40D738:
mov     ebx, 7
mov     edx, ecx
mov     eax, esi
call    sub_40DE36

loc_40D746:
inc     byte ptr [esi+9]
pop     esi
pop     ecx
retn

loc_40D74C:             ; jumptable 0040D6B8 case 2
mov     dh, [eax+9]
cmp     dh, 1
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     eax, [eax+10h]
cmp     eax, 78h ; 'x'
jb      short loc_40D76C
jbe     short loc_40D783
cmp     eax, 96h
jz      short loc_40D798
pop     esi
pop     ecx
retn

loc_40D76C:
cmp     eax, 6Eh ; 'n'

loc_40D76F:             ; jumptable 0040D6B8 default case
jnz     def_40D6B8

loc_40D775:
xor     ebx, ebx

loc_40D777:
mov     edx, ecx
mov     eax, esi

loc_40D77B:
call    sub_40DE36
pop     esi
pop     ecx
retn

loc_40D783:
mov     ebx, 1
mov     edx, ecx
mov     eax, esi
call    sub_40DE1D
mov     ebx, 2
jmp     short loc_40D777

loc_40D798:
mov     byte ptr [esi+0ACh], 2
mov     word ptr [ebx+2], 0
add     [esi+9], dh
pop     esi
pop     ecx
retn

loc_40D7AB:             ; jumptable 0040D6B8 case 3
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     word ptr [esi+44h], 0
mov     word ptr [esi+48h], 0
mov     byte ptr [esi+0ACh], 3
mov     word ptr [ebx+2], 0
jmp     loc_40D746

loc_40D7DB:             ; jumptable 0040D6B8 case 4
cmp     byte ptr [esi+0A4h], 4
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
xor     ebx, ebx
mov     edx, ecx
mov     eax, esi
call    sub_40DE1D
mov     ebx, 7
mov     edx, ecx
mov     eax, esi
call    sub_40DE36
mov     byte ptr [esi+0ACh], 3
mov     byte ptr [esi+0ADh], 0FFh
mov     word ptr [ecx+2], 4
jmp     loc_40D746

loc_40D81A:             ; jumptable 0040D6B8 case 5
mov     byte ptr [esi+0ADh], 0FFh
mov     word ptr [ebx+2], 4
mov     dh, [eax+9]
cmp     dh, 1
jnz     short loc_40D83B
cmp     dword ptr [eax+10h], 0AFh
jmp     loc_40D76F

loc_40D83B:
cmp     dh, 3
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     edx, [eax+10h]
cmp     edx, 1
jz      loc_40D775
cmp     edx, 0Ah
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     ebx, 5
mov     edx, ecx
mov     eax, esi
call    sub_40DE1D
jmp     loc_40D746

loc_40D86C:             ; jumptable 0040D6B8 case 6
mov     cl, [esi+0A4h]
cmp     cl, 5
jnz     short loc_40D885
mov     word ptr [esi+44h], 56h ; 'V'
mov     word ptr [esi+48h], 0FF95h
jmp     short loc_40D8CD

loc_40D885:
cmp     cl, 14h
jnz     short loc_40D898
mov     word ptr [esi+44h], 0
mov     word ptr [esi+48h], 0
jmp     short loc_40D8CD

loc_40D898:
cmp     cl, 34h ; '4'
jnz     short loc_40D8AB
mov     word ptr [esi+44h], 0
mov     word ptr [esi+48h], 0FF80h
jmp     short loc_40D8CD

loc_40D8AB:
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_40D8CD
and     byte ptr [esi], 0FDh
mov     byte ptr [esi+143h], 0FFh
mov     byte ptr [esi+147h], 0FFh
inc     byte ptr [esi+9]

loc_40D8CD:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     ecx
retn

loc_40D8E5:             ; jumptable 0040D6B8 case 7
cmp     byte ptr [eax+8], 1
jnz     short def_40D6B8 ; jumptable 0040D6B8 default case
cmp     byte ptr [eax+9], 0
jnz     short def_40D6B8 ; jumptable 0040D6B8 default case
or      byte ptr [esi], 2
mov     byte ptr [esi+0ACh], 5
mov     word ptr [ecx+2], 0
mov     ebx, 2
mov     edx, ecx
mov     eax, esi
call    sub_40DE1D
mov     ebx, 3
mov     edx, ecx
mov     eax, esi
call    sub_40DE36
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0

def_40D6B8:             ; jumptable 0040D6B8 default case
pop     esi
pop     ecx
retn
sub_40D69E endp

db 8Dh, 40h, 0
jpt_40D974 dd offset loc_40D97B ; jump table for switch statement
dd offset loc_40D9A0
dd offset loc_40DA5A
dd offset loc_40DA93
dd offset loc_40DABE
dd offset loc_40DAEC
dd offset loc_40DB1D
dd offset loc_40DB57
dd offset loc_40DBBD
dd offset loc_40DBE6
dd offset loc_40DC20
dd offset loc_40DC7B



sub_40D95A proc near
push    ecx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     edi, edx
mov     esi, ebx
mov     al, [eax+9]
cmp     al, 0Bh         ; switch 12 cases
ja      def_40D974      ; jumptable 0040D974 default case
and     eax, 0FFh
jmp     jpt_40D974[eax*4] ; switch jump

loc_40D97B:             ; jumptable 0040D974 case 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     bl, [edx+9]
cmp     bl, 1
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edx+10h], 1
jnz     def_40D974      ; jumptable 0040D974 default case

loc_40D998:
add     [ecx+9], bl
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40D9A0:             ; jumptable 0040D974 case 1
cmp     byte ptr [ecx+0A4h], 10h
jbe     short loc_40D9C7
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_40D9C7
dec     word ptr [ecx+18h]
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax

loc_40D9C7:
cmp     byte ptr [edi+9], 1
jnz     def_40D974      ; jumptable 0040D974 default case
mov     eax, [edi+10h]
cmp     eax, 28h ; '('
jb      short loc_40D9F2
jbe     short loc_40DA05
cmp     eax, 32h ; '2'
jb      def_40D974      ; jumptable 0040D974 default case
jbe     short loc_40DA0F
cmp     eax, 82h
jz      short loc_40DA27
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40D9F2:
cmp     eax, 5
jnz     def_40D974      ; jumptable 0040D974 default case
mov     ebx, 8
jmp     loc_40DCCB

loc_40DA05:
mov     ebx, 6
jmp     loc_40DCCB

loc_40DA0F:
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     ebx, 9
jmp     loc_40DCCB

loc_40DA27:
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_40DE36
mov     byte ptr [ecx+0ACh], 6
mov     word ptr [esi+2], 9
mov     word ptr [esi], 0
jmp     loc_40DB4F

loc_40DA5A:             ; jumptable 0040D974 case 2
cmp     word ptr [ebx], 26h ; '&'
jge     short loc_40DA7C
xor     eax, eax
xor     ebx, ebx
mov     edx, 21h ; '!'
mov     edi, ecx
mov     ecx, eax
mov     eax, edi
call    sub_4DD43B
inc     word ptr [esi]
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DA7C:
mov     byte ptr [ecx+0ACh], 7
mov     word ptr [ebx+2], 0
mov     word ptr [ebx], 0
jmp     loc_40DB4F

loc_40DA93:             ; jumptable 0040D974 case 3
mov     bl, [edx+9]
cmp     bl, 1
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edx+10h], 0D7h
jnz     def_40D974      ; jumptable 0040D974 default case
mov     byte ptr [ecx+0ACh], 8
mov     word ptr [esi+2], 0
jmp     loc_40D998

loc_40DABE:             ; jumptable 0040D974 case 4
mov     dl, [edx+9]
cmp     dl, 1
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edi+10h], 19Ah
jnz     def_40D974      ; jumptable 0040D974 default case
mov     byte ptr [ecx+0ACh], 9
mov     word ptr [ebx+2], 0
add     [ecx+9], dl
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DAEC:             ; jumptable 0040D974 case 5
cmp     byte ptr [ecx+0A4h], 0Ah
jnz     def_40D974      ; jumptable 0040D974 default case
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     byte ptr [ecx+0ACh], 9
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0Ah
jmp     short loc_40DB4F

loc_40DB1D:             ; jumptable 0040D974 case 6
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0Ah
cmp     byte ptr [edx+9], 1
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edx+10h], 1C7h
jnz     def_40D974      ; jumptable 0040D974 default case
mov     ebx, 7
mov     edx, esi
mov     eax, ecx

loc_40DB4A:
call    sub_40DE1D

loc_40DB4F:
inc     byte ptr [ecx+9]
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DB57:             ; jumptable 0040D974 case 7
cmp     byte ptr [edx+9], 1
jnz     short loc_40DB7E
mov     ebp, [edx+10h]
cmp     ebp, 203h
jz      short loc_40DB70
cmp     ebp, 230h
jnz     short loc_40DB7E

loc_40DB70:
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D

loc_40DB7E:
cmp     byte ptr [edi+9], 2
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edi+10h], 1
jnz     def_40D974      ; jumptable 0040D974 default case
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_40DE36
mov     byte ptr [ecx+0ACh], 0Ah
mov     word ptr [esi+2], 0
jmp     short loc_40DB4F

loc_40DBBD:             ; jumptable 0040D974 case 8
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [edx+9], 3
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edx+10h], 64h ; 'd'
jnz     def_40D974      ; jumptable 0040D974 default case
mov     ebx, 8
mov     eax, ecx
mov     edx, esi
jmp     loc_40DB4A

loc_40DBE6:             ; jumptable 0040D974 case 9
cmp     dword ptr [edx+10h], 78h ; 'x'
jnz     short loc_40DBFA
mov     ebx, 0Ah
mov     edx, esi
mov     eax, ecx
call    sub_40DE36

loc_40DBFA:
cmp     byte ptr [ecx+0A4h], 23h ; '#'
jnz     def_40D974      ; jumptable 0040D974 default case
mov     byte ptr [ecx+0ACh], 0Ah
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 23h ; '#'
jmp     loc_40DB4F

loc_40DC20:             ; jumptable 0040D974 case 10
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 23h ; '#'
cmp     byte ptr [edx+9], 3
jnz     def_40D974      ; jumptable 0040D974 default case
mov     eax, [edx+10h]
cmp     eax, 0A5h
jb      short loc_40DC53
jbe     short loc_40DC68
cmp     eax, 0AFh
jz      loc_40DB4F
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DC53:
cmp     eax, 9Bh
jnz     def_40D974      ; jumptable 0040D974 default case

loc_40DC5E:
mov     ebx, 3
jmp     loc_40DCCB

loc_40DC68:
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DC7B:             ; jumptable 0040D974 case 11
mov     eax, [edx+10h]
cmp     eax, 12Ch
jb      short loc_40DCA8
jbe     short loc_40DC5E
cmp     eax, 145h
jb      short loc_40DC9C
jbe     short loc_40DC68
cmp     eax, 159h
jz      short loc_40DCC6
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DC9C:
cmp     eax, 140h

loc_40DCA1:
jz      short loc_40DCBF
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DCA8:
cmp     eax, 0F5h
jb      short loc_40DCB8
jbe     short loc_40DC5E
cmp     eax, 0FFh
jmp     short loc_40DCA1

loc_40DCB8:
cmp     eax, 0B4h
jnz     short def_40D974 ; jumptable 0040D974 default case

loc_40DCBF:
mov     ebx, 0Ah
jmp     short loc_40DCCB

loc_40DCC6:
mov     ebx, 3

loc_40DCCB:
mov     edx, esi
mov     eax, ecx
call    sub_40DE36

def_40D974:             ; jumptable 0040D974 default case
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_40D95A endp

align 2
jpt_40DD02 dd offset loc_40DD09 ; jump table for switch statement
dd offset loc_40DD94
dd offset loc_40DDA9
dd offset def_40DD02



sub_40DCEA proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     edi, edx
mov     esi, ebx
mov     al, [eax+8]
cmp     al, 3           ; switch 4 cases
ja      def_40DD02      ; jumptable 0040DD02 default case, case 3
xor     edx, edx
mov     dl, al
jmp     jpt_40DD02[edx*4] ; switch jump

loc_40DD09:             ; jumptable 0040DD02 case 0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     word ptr [ebx+2], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ecx
call    sub_40DE36

loc_40DD69:
inc     byte ptr [ecx+8]

def_40DD02:             ; jumptable 0040DD02 default case, case 3
mov     eax, [edi+10h]
cmp     eax, 4Bh ; 'K'
jb      short loc_40DDC1
jbe     loc_40DDDD
cmp     eax, 78h ; 'x'
jb      short loc_40DDB8
jbe     loc_40DDF6
cmp     eax, 82h
jz      loc_40DE0B
pop     edi
pop     esi
pop     ecx
retn

loc_40DD94:             ; jumptable 0040DD02 case 1
mov     edx, [ecx+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_40DD02 ; jumptable 0040DD02 default case, case 3
inc     al
mov     [ecx+8], al
jmp     short def_40DD02 ; jumptable 0040DD02 default case, case 3

loc_40DDA9:             ; jumptable 0040DD02 case 2
mov     byte ptr [ecx+0ACh], 2
mov     word ptr [ebx+2], 0
jmp     short loc_40DD69

loc_40DDB8:
cmp     eax, 4Dh ; 'M'
jz      short loc_40DDE4
pop     edi
pop     esi
pop     ecx
retn

loc_40DDC1:
cmp     eax, 23h ; '#'
jb      short loc_40DDD1
jbe     short loc_40DDDD
cmp     eax, 32h ; '2'
jz      short loc_40DDD6
pop     edi
pop     esi
pop     ecx
retn

loc_40DDD1:
cmp     eax, 14h
jnz     short loc_40DE19

loc_40DDD6:
mov     ebx, 0Eh
jmp     short loc_40DE10

loc_40DDDD:
mov     ebx, 0Bh
jmp     short loc_40DE10

loc_40DDE4:
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
pop     edi
pop     esi
pop     ecx
retn

loc_40DDF6:
mov     ebx, 0Ch
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     ebx, 0Fh
jmp     short loc_40DE10

loc_40DE0B:
mov     ebx, 0Dh

loc_40DE10:
mov     edx, esi
mov     eax, ecx
call    sub_40DE36

loc_40DE19:
pop     edi
pop     esi
pop     ecx
retn
sub_40DCEA endp




sub_40DE1D proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50CB0A[ebx*4]
mov     [edx+4], eax
retn
sub_40DE1D endp




sub_40DE36 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50CB3E[ebx*4]
mov     [edx+8], eax
retn
sub_40DE36 endp




sub_40DE4F proc near
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
cmp     al, 3Fh ; '?'
jb      short loc_40DE74
jbe     short loc_40DE77
cmp     al, 7Fh
jnz     short loc_40DE74
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40DE77

loc_40DE74:
inc     byte ptr [esi+0Eh]

loc_40DE77:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40DEB9
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40DEB9:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 3Fh ; '?'
jb      short loc_40DEDC
jbe     short loc_40DEDF
cmp     al, 7Fh
jnz     short loc_40DEDC
mov     byte ptr [esi+11h], 0
jmp     short loc_40DEDF

loc_40DEDC:
inc     byte ptr [esi+11h]

loc_40DEDF:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40DF21
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40DF21:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40DE4F endp

jpt_40DF8E dd offset loc_40DF95 ; jump table for switch statement
dd offset loc_40DFF7
dd offset loc_40E01F
dd offset loc_40E08D
dd offset loc_40E0B3



sub_40DF40 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
mov     [esp+1Ch+var_1C], offset dword_560BDC
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
mov     al, [ecx+8]
cmp     al, 4           ; switch 5 cases
ja      def_40DF8E      ; jumptable 0040DF8E default case
and     eax, 0FFh
jmp     jpt_40DF8E[eax*4] ; switch jump

loc_40DF95:             ; jumptable 0040DF8E case 0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 4
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 0
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40E163
xor     ebx, ebx

loc_40DFE6:
mov     edx, ebp
mov     eax, ecx
call    sub_40E17C

loc_40DFEF:
inc     byte ptr [ecx+8]
jmp     def_40DF8E      ; jumptable 0040DF8E default case

loc_40DFF7:             ; jumptable 0040DF8E case 1
mov     byte ptr [ecx+0ADh], 0FFh
cmp     ds:byte_560BE5, 3
jnz     def_40DF8E      ; jumptable 0040DF8E default case
cmp     ds:dword_560BEC, 0Ah
jnz     def_40DF8E      ; jumptable 0040DF8E default case
mov     ebx, 2
jmp     short loc_40DFE6

loc_40E01F:             ; jumptable 0040DF8E case 2
cmp     ds:byte_560BE5, 3
jnz     short loc_40E04F
cmp     ds:dword_560BEC, 2Dh ; '-'
jnz     short loc_40E04F
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_40E163
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40E17C
jmp     def_40DF8E      ; jumptable 0040DF8E default case

loc_40E04F:
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+9], 4
jnz     def_40DF8E      ; jumptable 0040DF8E default case
mov     edx, [eax+10h]
cmp     edx, 1
jnz     def_40DF8E      ; jumptable 0040DF8E default case
mov     ebx, edx
mov     edx, ebp
mov     eax, ecx
call    sub_40E163
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40E17C
mov     byte ptr [ecx+0ACh], 5
jmp     loc_40DFEF

loc_40E08D:             ; jumptable 0040DF8E case 3
mov     byte ptr [ecx+0ADh], 0FFh
cmp     ds:byte_560BE5, 4
jnz     def_40DF8E      ; jumptable 0040DF8E default case
cmp     ds:dword_560BEC, 0Ah
jnz     def_40DF8E      ; jumptable 0040DF8E default case
jmp     loc_40DFEF

loc_40E0B3:             ; jumptable 0040DF8E case 4
cmp     ds:byte_560BE5, 5
jnz     short loc_40E0EA
mov     ebx, ds:dword_560BEC
cmp     ebx, 1
jnz     short loc_40E0D7
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_40E17C
jmp     short loc_40E0EA

loc_40E0D7:
cmp     ebx, 1Eh
jnz     short loc_40E0EA
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_40E163

loc_40E0EA:
mov     al, [ecx+0A4h]
cmp     al, 11h
jb      short loc_40E102
jbe     short loc_40E10F
cmp     al, 19h
jb      short def_40DF8E ; jumptable 0040DF8E default case
jbe     short loc_40E118
cmp     al, 20h ; ' '
jz      short loc_40E121
jmp     short def_40DF8E ; jumptable 0040DF8E default case

loc_40E102:
cmp     al, 3
jnz     short def_40DF8E ; jumptable 0040DF8E default case
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+7], 1
jmp     short def_40DF8E ; jumptable 0040DF8E default case

loc_40E10F:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+7], 2
jmp     short def_40DF8E ; jumptable 0040DF8E default case

loc_40E118:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+7], 3
jmp     short def_40DF8E ; jumptable 0040DF8E default case

loc_40E121:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+7], 4

def_40DF8E:             ; jumptable 0040DF8E default case
mov     edx, ebp
mov     eax, ecx
call    sub_40E195
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_40E152
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_40E159

loc_40E152:
mov     eax, ecx
call    sub_4DEADD

loc_40E159:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40DF40 endp




sub_40E163 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50CBD1[ebx*4]
mov     [edx+4], eax
retn
sub_40E163 endp




sub_40E17C proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50CBE1[ebx*4]
mov     [edx+8], eax
retn
sub_40E17C endp




sub_40E195 proc near
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
jb      short loc_40E1BA
jbe     short loc_40E1BD
cmp     al, 7Fh
jnz     short loc_40E1BA
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40E1BD

loc_40E1BA:
inc     byte ptr [esi+0Eh]

loc_40E1BD:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40E1FF
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40E1FF:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40E222
jbe     short loc_40E225
cmp     al, 7Fh
jnz     short loc_40E222
mov     byte ptr [esi+11h], 0
jmp     short loc_40E225

loc_40E222:
inc     byte ptr [esi+11h]

loc_40E225:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40E267
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40E267:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40E195 endp

off_40E272 dd offset dword_40E2D4
dd offset byte_40E337
dd offset byte_40E36F
dd offset word_40E37E
dd offset byte_40E393
dd offset off_40E342
word_40E28A dw 5153h
dd 55575652h, 0A88DC189h, 640h, 8D2C798Dh
dd 0A5A51471h, 8D34798Dh, 0A5A51C71h, 798DA5A5h
dd 54718D5Ch, 808AA5A5h, 0ACh, 0AD8188h
dd 418A0000h, 0F053C08h, 7987h, 88D23100h
dd 9524FFC2h
dd offset off_40E272
dword_40E2D4 dd 31020980h, 0E8C889D2h, 0CEE18h, 15881C7h
dd 2000000h, 81C70200h, 15Ch, 200h, 5E81C766h
dd 10000001h, 7841C742h, 0
dd 0AC81C6h, 0C6060000h, 0AD81h, 0C766FF00h
dd 370245h, 45C766h, 0DB310000h, 0C889EA89h
dd 0E8E8h, 89DB3100h, 0E8C889EAh, 0F6h
db 0FEh, 41h, 8
byte_40E337 db 66h
dd 92007D81h, 0FE037500h
db 41h, 8
off_40E342 dd offset loc_45FF66
mov     eax, ds:dword_560BEC
cmp     eax, 37h ; '7'
jb      short loc_40E3A5
jbe     loc_40E3B3
cmp     eax, 91h
jb      short loc_40E39C
jbe     short loc_40E3B3
cmp     eax, 0AFh
jz      loc_40E3CE
jmp     loc_40E3D9
byte_40E36F db 0C6h
dd 0AC81h, 0C7660700h, 245h
db 0EBh, 0C1h
word_40E37E dw 918Bh
dd 0A4h, 8318FAC1h, 0B675FFFAh, 4188C0FEh
db 8, 0EBh, 0AFh
byte_40E393 db 0C6h
dd 0AC81h, 0A3EB0800h

loc_40E39C:
cmp     eax, 87h
jz      short loc_40E3BE
jmp     short loc_40E3D9

loc_40E3A5:
cmp     eax, 1Eh
jb      short loc_40E3D9
jbe     short loc_40E3B3
cmp     eax, 2Dh ; '-'
jz      short loc_40E3BA
jmp     short loc_40E3D9

loc_40E3B3:
mov     ebx, 1
jmp     short loc_40E3D0

loc_40E3BA:
xor     ebx, ebx
jmp     short loc_40E3D0

loc_40E3BE:
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40E411
jmp     short loc_40E3BA

loc_40E3CE:
xor     ebx, ebx

loc_40E3D0:
mov     edx, ebp
mov     eax, ecx
call    sub_40E42A

loc_40E3D9:
mov     edx, ebp
mov     eax, ecx
call    sub_40E443
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_40E403
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_40E40A

loc_40E403:
mov     eax, ecx
call    sub_4DEADD

loc_40E40A:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn



sub_40E411 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50CC21[ebx*4]
mov     [edx+4], eax
retn
sub_40E411 endp




sub_40E42A proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50CC29[ebx*4]
mov     [edx+8], eax
retn
sub_40E42A endp




sub_40E443 proc near
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
jb      short loc_40E468
jbe     short loc_40E46B
cmp     al, 7Fh
jnz     short loc_40E468
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40E46B

loc_40E468:
inc     byte ptr [esi+0Eh]

loc_40E46B:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40E4AD
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40E4AD:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40E4D0
jbe     short loc_40E4D3
cmp     al, 7Fh
jnz     short loc_40E4D0
mov     byte ptr [esi+11h], 0
jmp     short loc_40E4D3

loc_40E4D0:
inc     byte ptr [esi+11h]

loc_40E4D3:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40E515
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40E515:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40E443 endp




sub_40E520 proc near
mov     byte ptr [eax+4], 0
mov     edx, ds:off_50CC40[edx*4]
mov     [eax+8], edx
mov     byte ptr [eax+5], 0
retn
sub_40E520 endp




sub_40E533 proc near
mov     byte ptr [eax+6], 0
mov     edx, ds:off_50CC61[edx*4]
mov     [eax+0Ch], edx
mov     byte ptr [eax+7], 0
retn
sub_40E533 endp




sub_40E546 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     ah, [edx+5]
test    ah, ah
jnz     short loc_40E5BA
mov     eax, [edx+1]
sar     eax, 18h
mov     ecx, [edx+8]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_40E56F
jbe     short loc_40E5C1
cmp     al, 7Fh
jnz     short loc_40E56F
mov     byte ptr [edx+4], 0

loc_40E56F:
mov     ecx, [esi+1]
sar     ecx, 18h
mov     eax, [esi+8]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044
mov     ecx, [esi+1]
sar     ecx, 18h
mov     eax, [esi+8]
mov     al, [ecx+eax+1]
mov     [esi+5], al
add     byte ptr [esi+4], 2
jmp     short loc_40E5C1

loc_40E5BA:
mov     dl, ah
dec     dl
mov     [esi+5], dl

loc_40E5C1:
mov     bl, [esi+7]
test    bl, bl
jnz     short loc_40E62F
mov     eax, [esi+3]
sar     eax, 18h
mov     ecx, [esi+0Ch]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_40E5E1
jbe     short loc_40E636
cmp     al, 7Fh
jnz     short loc_40E5E1
mov     [esi+6], bl

loc_40E5E1:
mov     ecx, [esi+3]
sar     ecx, 18h
mov     eax, [esi+0Ch]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044
mov     eax, [esi+3]
sar     eax, 18h
mov     ecx, [esi+0Ch]
mov     al, [ecx+eax+1]
mov     [esi+7], al
add     byte ptr [esi+6], 2
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_40E62F:
mov     bh, bl
dec     bh
mov     [esi+7], bh

loc_40E636:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40E546 endp

align 4
jpt_40E698 dd offset loc_40E69F ; jump table for switch statement
dd offset loc_40E738
dd offset loc_40E710
dd offset loc_40E71E
dd offset loc_40E738



sub_40E650 proc near

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
mov     [esp+20h+var_20], offset dword_560BDC
lea     edx, [eax+640h]
mov     [esp+20h+var_1C], edx
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
mov     dl, [eax+8]
cmp     dl, 4           ; switch 5 cases
ja      def_40E698      ; jumptable 0040E698 default case
and     edx, 0FFh
jmp     jpt_40E698[edx*4] ; switch jump

loc_40E69F:             ; jumptable 0040E698 case 0
or      byte ptr [eax], 2
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     dword ptr [ebp+78h], 0
mov     word ptr [ebp+44h], 0
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+48h], 0
mov     byte ptr [ebp+0Ch], 0
mov     byte ptr [ebp+0Dh], 0
xor     edx, edx
mov     eax, [esp+20h+var_1C]
call    sub_40E520
xor     edx, edx
mov     eax, [esp+20h+var_1C]
call    sub_40E533
xor     ebx, ebx
mov     edx, 1
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+8]
jmp     short def_40E698 ; jumptable 0040E698 default case

loc_40E710:             ; jumptable 0040E698 case 2
mov     word ptr [eax+48h], 20h ; ' '
mov     ah, [eax+8]
inc     ah
mov     [ebp+8], ah

loc_40E71E:             ; jumptable 0040E698 case 3
mov     edx, [ebp+46h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_4DEADD
jmp     short def_40E698 ; jumptable 0040E698 default case

loc_40E738:             ; jumptable 0040E698 cases 1,4
mov     eax, ebp
call    sub_4DFC52
mov     eax, ebp
call    sub_4DF795

def_40E698:             ; jumptable 0040E698 default case
mov     edx, [esp+20h+var_20]
cmp     byte ptr [edx+9], 6
jnz     loc_40E7DC
mov     ecx, [edx+10h]
cmp     ecx, 2Dh ; '-'
jnz     short loc_40E762

loc_40E75B:
mov     edx, 1
jmp     short loc_40E769

loc_40E762:
cmp     ecx, 35h ; '5'
jnz     short loc_40E777

loc_40E767:
xor     edx, edx

loc_40E769:
mov     eax, [esp+20h+var_1C]
call    sub_40E520
jmp     loc_40E7D1

loc_40E777:
cmp     ecx, 41h ; 'A'
jnz     short loc_40E783
mov     edx, 2
jmp     short loc_40E7C8

loc_40E783:
cmp     ecx, 96h
jnz     short loc_40E78F
xor     edx, edx
jmp     short loc_40E7C8

loc_40E78F:
cmp     ecx, 0A0h
jz      short loc_40E75B
cmp     ecx, 0A8h
jz      short loc_40E767
cmp     ecx, 0C8h
jz      short loc_40E75B
cmp     ecx, 0D0h
jz      short loc_40E767
cmp     ecx, 0DAh
jnz     short loc_40E7BE
mov     edx, 1
jmp     short loc_40E7C8

loc_40E7BE:
cmp     ecx, 0E6h
jnz     short loc_40E7D1
xor     edx, edx

loc_40E7C8:
mov     eax, [esp+20h+var_1C]
call    sub_40E533

loc_40E7D1:
mov     edx, [esp+20h+var_1C]
mov     eax, ebp
call    sub_40E546

loc_40E7DC:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40E650 endp




sub_40E7E6 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50CD44[edx*4]
mov     ds:dword_5590C8, eax
xor     edx, edx
mov     ds:word_5590CC, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40E828:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     ecx
pop     ebx
retn
sub_40E7E6 endp




sub_40E833 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50CD6C[edx*4]
mov     ds:dword_5590C0, eax
xor     edx, edx
mov     ds:word_5590C4, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40E828
sub_40E833 endp




sub_40E877 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edx, ds:dword_5590C8
test    edx, edx
jz      loc_40E99A
cmp     ds:dword_5590C0, 0
jz      loc_40E99A
mov     eax, edx
cmp     word ptr [edx+2], 0
jg      short loc_40E8BA
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_5590C8, eax
xor     ebx, ebx
mov     ds:word_5590CC, bx

loc_40E8BA:
mov     eax, ds:dword_5590C8
inc     ds:word_5590CC
mov     edx, [eax]
sar     edx, 10h
mov     ecx, ds:dword_5590C8+2
sar     ecx, 10h
cmp     ecx, edx
jnz     short loc_40E918
xor     edi, edi
mov     ds:word_5590CC, di
add     eax, 4
mov     ds:dword_5590C8, eax
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40E918:
mov     eax, ds:dword_5590C0
cmp     word ptr [eax+2], 0
jg      short loc_40E93C
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_5590C0, eax
xor     ebx, ebx
mov     ds:word_5590C4, bx

loc_40E93C:
mov     eax, ds:dword_5590C0
inc     ds:word_5590C4
mov     ecx, [eax]
sar     ecx, 10h
mov     edx, ds:dword_5590C0+2
sar     edx, 10h
cmp     edx, ecx
jnz     short loc_40E99A
xor     edi, edi
mov     ds:word_5590C4, di
add     eax, 4
mov     ds:dword_5590C0, eax
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_40E99A:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40E877 endp




sub_40E9A0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     ecx, eax
mov     ebx, offset dword_560BDC
mov     eax, ds:dword_5590D4
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40E9EF
cmp     dl, ds:byte_560BE4
jnz     short loc_40E9EF
mov     dl, [eax+1]
cmp     dl, ds:byte_560BE5
jnz     short loc_40E9EF
xor     edx, edx
mov     dx, [eax+2]
mov     esi, ds:dword_560BF8
cmp     edx, esi
jnz     short loc_40E9EF
xor     edx, esi
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40E7E6
add     ds:dword_5590D4, 6

loc_40E9EF:
mov     eax, ds:dword_5590D0
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40EA29
cmp     dl, [ebx+8]
jnz     short loc_40EA29
mov     dl, [eax+1]
cmp     dl, [ebx+9]
jnz     short loc_40EA29
xor     edx, edx
mov     dx, [eax+2]
mov     ebp, [ebx+1Ch]
cmp     edx, ebp
jnz     short loc_40EA29
xor     edx, ebp
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40E833
add     ds:dword_5590D0, 6

loc_40EA29:
mov     eax, ecx
call    sub_40E877
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40E9A0 endp




sub_40EA36 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     byte ptr [ecx+147h], 0FFh
mov     al, [ecx+147h]
mov     [ecx+143h], al
mov     ds:dword_5590D4, offset unk_50CD90
mov     ds:dword_5590D0, offset unk_50CDF6
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_40EA36 endp




sub_40EA86 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EAA2
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B

loc_40EA9F:
inc     byte ptr [ecx+0Ah]

