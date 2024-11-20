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
