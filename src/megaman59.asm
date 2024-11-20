pop     edx
retn
sub_491DFC endp




sub_491E21 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_491E7A
mov     eax, 0Bh
call    sub_492095
mov     ds:byte_56F80C, 3
mov     ds:byte_56F83B, 2
mov     edx, 1
mov     eax, 0Ah
call    sub_492095
mov     ds:byte_56F844, 3
mov     bl, 6
mov     ds:byte_56F873, bl
mov     eax, offset unk_525E78
call    sub_49DB4D
mov     eax, [ecx+24h]
mov     [eax+9], bl
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Ah], 0

loc_491E7A:
cmp     dword ptr [ecx+10h], 7Ah ; 'z'
jnz     short loc_491E87
mov     ds:byte_56F83B, 6

loc_491E87:
pop     edx
pop     ecx
pop     ebx
retn
sub_491E21 endp




sub_491E8B proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_491EB6
xor     dl, dl
mov     ds:byte_56F80C, dl
mov     ds:byte_56F844, dl
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 4
mov     edx, [eax+28h]
mov     byte ptr [edx+0Ah], 0
mov     eax, [eax+24h]
call    sub_4DE2F6

loc_491EB6:
pop     edx
retn
sub_491E8B endp




sub_491EB8 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_491F05
mov     eax, [eax+28h]
call    sub_4DE336
mov     eax, offset unk_525EA0
call    sub_49DB4D
mov     eax, offset unk_525EB4
call    sub_49DB4D
mov     eax, offset unk_525EC8
call    sub_49DB4D
mov     eax, offset unk_525EDC
call    sub_49DB4D
mov     eax, offset unk_525EF0
call    sub_49DB4D
mov     edx, 2
xor     eax, eax
call    sub_491F3C

loc_491F05:
pop     edx
retn
sub_491EB8 endp




sub_491F07 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_491F3A
mov     eax, [eax+28h]
call    sub_4DE2F6
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     eax, [edx+30h]
call    sub_4DE2F6
mov     eax, [edx+34h]
call    sub_4DE2F6
mov     edx, [edx+24h]
mov     byte ptr [edx+9], 6
inc     byte ptr [edx+0Dh]

loc_491F3A:
pop     edx
retn
sub_491F07 endp




sub_491F3C proc near
push    ebx
push    ecx
push    esi
push    edi
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, dl
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     cl, 0FFh
mov     ds:byte_77EA61, cl
mov     ds:byte_77EA60, cl
test    eax, eax
jz      short loc_491F96
xor     edi, edi
mov     word ptr ds:dword_77EA4E+2, di
xor     eax, eax
mov     word ptr ds:dword_77EA52, ax
xor     edx, edx
mov     word ptr ds:dword_77EA52+2, dx
xor     bl, bl
mov     word ptr ds:dword_77EA5A, bx
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_491F96:
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
xor     bl, bl
mov     word ptr ds:dword_77EA52, bx
xor     ecx, ecx
mov     word ptr ds:dword_77EA52+2, cx
xor     esi, esi
mov     word ptr ds:dword_77EA5A, si
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_491F3C endp




sub_491FBF proc near
push    ebx
push    edx
xor     dl, dl
mov     ds:byte_55A5BE, dl
mov     ds:byte_55A5BD, dl
xor     bl, bl
mov     ds:byte_55A5BC, dl
mov     edx, ds:off_5265CE[eax*4]
mov     ds:dword_55A5C4, edx
xor     bh, bh
mov     ds:byte_55A5C1, bh
mov     ds:byte_55A5C0, bh
mov     ds:byte_55A5BF, bl
mov     eax, ds:off_5265DA[eax*4]
mov     ds:dword_55A5C8, eax
pop     edx
pop     ebx
retn
sub_491FBF endp




sub_492007 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, offset byte_55A5BC
mov     ebx, dword ptr ds:unk_55A5BB
sar     ebx, 18h
mov     ecx, ds:dword_55A5C4
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_49203A
jbe     short loc_49203D
cmp     bl, 7Fh
jnz     short loc_49203A
xor     bl, bl
mov     ds:byte_55A5BE, bl
jmp     short loc_49203D

loc_49203A:
inc     byte ptr [eax+2]

loc_49203D:
movsx   ecx, byte ptr [eax+2]
mov     ebx, [eax+8]
mov     bl, [ecx+ebx]
mov     [eax], bl
mov     [eax+1], bl
mov     ebx, [eax+2]
sar     ebx, 18h
mov     ecx, [eax+0Ch]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_49206B
jbe     short loc_49206E
cmp     bl, 7Fh
jnz     short loc_49206B
mov     byte ptr [eax+5], 0
jmp     short loc_49206E

loc_49206B:
inc     byte ptr [eax+5]

loc_49206E:
mov     ecx, [eax+2]
sar     ecx, 18h
mov     ebx, [eax+0Ch]
mov     bl, [ecx+ebx]
mov     [eax+3], bl
mov     [eax+4], bl
mov     bl, [eax]
mov     [edx+168h], bl
mov     al, [eax+3]
mov     [edx+169h], al
pop     edx
pop     ecx
pop     ebx
retn
sub_492007 endp




sub_492095 proc near
push    ecx
push    esi
push    edi
mov     ah, dl
movsx   edx, al
movsx   ecx, ah
shl     ecx, 3
mov     eax, ecx
shl     eax, 3
sub     eax, ecx
mov     cx, ds:word_5265E6[edx*8]
mov     word ptr ds:dword_56F818[eax], cx
mov     ecx, ds:(dword_56F814+2)[eax]
sar     ecx, 10h
shl     ecx, 10h
mov     ds:dword_56F810[eax], ecx
mov     ecx, ds:dword_56F818[eax]
mov     ds:dword_56F824[eax], ecx
lea     edi, unk_56F81C[eax]
lea     esi, dword_56F810[eax]
movsd
movsd
mov     cx, ds:word_5265E8[edx*8]
mov     ds:word_56F82C[eax], cx
mov     dx, ds:word_5265EA[edx*8]
mov     ds:word_56F82E[eax], dx
pop     edi
pop     esi
pop     ecx
retn
sub_492095 endp




sub_492107 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_49210D[edx*4]
pop     edx
retn
sub_492107 endp




sub_492116 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_492131
jbe     short loc_49218E
cmp     al, 2
jz      loc_49222D
jmp     loc_492250

loc_492131:
test    al, al
jnz     loc_492250
mov     edx, 80h
mov     eax, 5Eh ; '^'
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_5266DC
mov     dword ptr [ecx+0A4h], offset unk_526728
mov     dword ptr [ecx+0Ch], 0
mov     eax, offset unk_526664
call    sub_49DB4D
mov     eax, offset unk_526678
call    sub_49DB4D
mov     byte ptr [ecx+0Ah], 80h

loc_492186:
inc     byte ptr [ecx+5]
jmp     loc_492250

loc_49218E:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_492250
mov     dl, 3
mov     byte ptr ds:dword_5F836C, dl
mov     dh, 1
mov     byte ptr ds:dword_5F836C+1, dh
or      ds:byte_5F8421, 10h
or      ds:byte_5F8364, dl
mov     ds:byte_5F83DA, dh
xor     ah, ah
mov     ds:byte_5F83D8, ah
mov     eax, [ecx+28h]
mov     ds:dword_5F8424, eax
xor     ebx, ebx
mov     word ptr ds:dword_5F889A+2, bx
mov     word ptr ds:dword_5F889E, 0FA3Fh
mov     word ptr ds:dword_5F889E+2, 0FF00h
xor     edx, edx
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8890, 0FA3F0000h
mov     ds:dword_5F8894, 0FF000000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 400h
mov     ds:word_5F88A8, ax
mov     ds:byte_5F88AC, 30h ; '0'
jmp     loc_492186

loc_49222D:
cmp     ds:word_6E23D6, 0
jnz     short loc_492250
mov     eax, 250003h
call    sub_4D8E42
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

loc_492250:
call    sub_47EBCB
test    eax, eax
jz      short loc_49225D
or      byte ptr [ecx+0Ah], 1

loc_49225D:
call    sub_49DBD1

loc_492262:
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_492116 endp

jpt_492294 dd offset loc_49229B ; jump table for switch statement
dd offset loc_4922D9
dd offset loc_4922EA
dd offset loc_49231D
dd offset loc_49232A



sub_49227F proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_492294      ; jumptable 00492294 default case
and     eax, 0FFh
jmp     jpt_492294[eax*4] ; switch jump

loc_49229B:             ; jumptable 00492294 case 0
call    sub_49DBD1
call    sub_4D8ECC
test    eax, eax
jz      def_492294      ; jumptable 00492294 default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_526738
mov     dword ptr [edx+0A4h], offset unk_526B28
mov     eax, 1
call    sub_49E0D7
mov     byte ptr [edx+5], 1
jmp     def_492294      ; jumptable 00492294 default case

loc_4922D9:             ; jumptable 00492294 case 1
cmp     ds:word_6E23D6, 0
jnz     short loc_4922EA ; jumptable 00492294 case 2
and     byte ptr [edx+0Ah], 7Fh
inc     byte ptr [edx+5]

loc_4922EA:             ; jumptable 00492294 case 2
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     bl, [edx+0Ah]
test    bl, 80h
jnz     short loc_492359
test    bl, 1
jz      short loc_492359
mov     cl, bl
or      cl, 2
mov     [edx+0Ah], cl
mov     eax, 8
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0
jmp     short loc_492359

loc_49231D:             ; jumptable 00492294 case 3
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
jmp     short loc_492359

loc_49232A:             ; jumptable 00492294 case 4
cmp     byte ptr [edx+8], 0FFh
jz      short loc_492352
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     bh, [edx+0Ah]
test    bh, 80h
jnz     short loc_492359
test    bh, 1
jz      short loc_492359
mov     eax, 8
call    sub_49E0D7

loc_492352:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_492359:
call    sub_49DBD1

def_492294:             ; jumptable 00492294 default case
call    sub_47EBCB
test    eax, eax
jz      loc_492262
or      byte ptr [edx+0Ah], 1
jmp     loc_492262
sub_49227F endp

db 8Dh, 40h, 0
jpt_49239D dd offset loc_4923A4 ; jump table for switch statement
dd offset loc_492454
dd offset loc_492494
dd offset loc_49249F



sub_492387 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_49239D      ; jumptable 0049239D default case
and     eax, 0FFh
jmp     jpt_49239D[eax*4] ; switch jump

loc_4923A4:             ; jumptable 0049239D case 0
cmp     ds:word_6E23D6, 0
jnz     def_49239D      ; jumptable 0049239D default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     edx, edx
mov     word ptr ds:dword_5F889A+2, dx
mov     word ptr ds:dword_5F889E, 0FA3Fh
mov     word ptr ds:dword_5F889E+2, dx
xor     edx, edx
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8890, 0FA3F0000h
mov     ds:dword_5F8894, edx
xor     edi, edi
mov     ds:word_5F88A8, di
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
xor     dh, dh
mov     ds:byte_5F88AC, dh
mov     byte ptr ds:dword_5F84CB+1, dh
mov     byte ptr ds:dword_5F84CB+2, dh
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
call    sub_4D8EB1
test    byte ptr [ecx+0Ah], 2
jz      short loc_49244C
mov     eax, 8Bh
call    sub_42BEB2

loc_49244C:
inc     byte ptr [ecx+5]
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_492454:             ; jumptable 0049239D case 1
mov     eax, offset byte_5F8364
call    sub_4B565A
and     ds:byte_5F8364, 0FCh
xor     bl, bl
mov     ds:byte_5F83DA, bl
mov     edx, 80h
mov     eax, 5Eh ; '^'
call    sub_4DC979
test    byte ptr [ecx+0Ah], 2
jz      short loc_49248B
mov     byte ptr [ecx+5], 2
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_49248B:
mov     byte ptr [ecx+5], 3
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_492494:             ; jumptable 0049239D case 2
call    sub_42C353
test    eax, eax
jnz     short def_49239D ; jumptable 0049239D default case
jmp     short loc_49244C

loc_49249F:             ; jumptable 0049239D case 3
or      ds:byte_5F8421, 40h
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, 3
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, 0FA3Fh
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, 800h
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     al, 0FFh
mov     ds:byte_77EA61, al
mov     ds:byte_77EA60, al
mov     [ecx], bh

def_49239D:             ; jumptable 0049239D default case
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_492387 endp




sub_4924F8 proc near
push    edx
cmp     dword ptr [eax+10h], 1
jnz     short loc_49250D
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 1
mov     eax, [eax+28h]
mov     byte ptr [eax+8], 2

loc_49250D:
pop     edx
retn
sub_4924F8 endp




sub_49250F proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     ebx, [eax+10h]
test    ebx, ebx
jnz     loc_49261A
mov     eax, [eax+28h]
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FC00h
mov     word ptr [eax+18h], 0
mov     [eax+1Ch], ebx
mov     dword ptr [eax+20h], 0FC000000h
mov     [eax+24h], ebx
mov     word ptr [eax+54h], 0
mov     word ptr [eax+56h], 0
mov     word ptr [eax+58h], 0
mov     byte ptr [eax+8], 3
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     ebx, ebx
mov     word ptr ds:dword_5F889A+2, bx
mov     word ptr ds:dword_5F889E, 0FA3Fh
mov     word ptr ds:dword_5F889E+2, 0FF00h
xor     edi, edi
mov     ds:dword_5F888C, edi
mov     ds:dword_5F8890, 0FA3F0000h
mov     ds:dword_5F8894, 0FF000000h
xor     eax, eax
mov     ds:word_5F88A8, ax
mov     word ptr ds:dword_5F88A4, bx
mov     word ptr ds:dword_5F88A4+2, 400h
mov     ds:byte_5F88AC, 81h
xor     eax, eax
call    sub_49299E
xor     eax, eax
call    sub_4929C1
mov     eax, [edx+24h]
mov     word ptr [eax+14h], 0F000h
mov     word ptr [eax+16h], 0EC00h
mov     word ptr [eax+18h], 1000h
mov     dword ptr [eax+1Ch], 0F0000000h
mov     dword ptr [eax+20h], 0EC000000h
mov     dword ptr [eax+24h], 10000000h
mov     [eax+54h], bx
mov     [eax+56h], bx
mov     [eax+58h], bx
mov     byte ptr [eax+9], 0
mov     byte ptr [edx+0Bh], 0
mov     byte ptr [edx+6], 0
jmp     short loc_492633

loc_49261A:
cmp     ebx, 1Eh
jnz     short loc_492633
mov     eax, 2
call    sub_49299E
mov     eax, 2
call    sub_4929C1

loc_492633:
mov     eax, edx
call    sub_4928F7
mov     eax, ecx
call    sub_4929E4
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_49250F endp




sub_492646 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 23h ; '#'
jb      short loc_492667
jbe     short loc_49267A
cmp     eax, 2Dh ; '-'
jb      short loc_492695
jbe     short loc_492673
cmp     eax, 41h ; 'A'
jz      short loc_49268B
jmp     short loc_492695

loc_492667:
cmp     eax, 19h
jnz     short loc_492695
mov     ds:byte_5F88AC, 82h

loc_492673:
mov     eax, 3
jmp     short loc_492690

loc_49267A:
mov     eax, 2
call    sub_49299E
mov     eax, 1
jmp     short loc_492690

loc_49268B:
mov     eax, 1

loc_492690:
call    sub_4929C1

loc_492695:
mov     eax, edx
call    sub_4928F7
mov     eax, ecx
call    sub_4929E4
pop     edx
pop     ecx
retn
sub_492646 endp




sub_4926A6 proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_4926EE
and     ds:byte_5F8364, 0FDh
xor     dh, dh
mov     ds:byte_5F88AC, dh
mov     edx, [eax+28h]
and     byte ptr [edx], 0FDh
mov     eax, [eax+24h]
and     byte ptr [eax], 0FDh
mov     eax, offset unk_52668C
call    sub_49DB4D
mov     eax, offset unk_5266A0
call    sub_49DB4D
mov     edx, 1
mov     eax, offset dword_77EA48
call    sub_492892
pop     edx
retn

loc_4926EE:
cmp     edx, 1
jnz     short loc_492707
call    sub_4DE1BE
test    eax, eax
jz      short loc_492707
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+0Fh], 0

loc_492707:
pop     edx

locret_492708:
retn
sub_4926A6 endp

db 8Bh, 0C0h
jpt_49273D dd offset loc_492744 ; jump table for switch statement
dd offset loc_4927B2
dd offset loc_4927C8
dd offset loc_4927D7
dd offset loc_4927EC



sub_49271F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49272E
mov     byte ptr [eax+6], 0

loc_49272E:
mov     al, [ecx+6]
cmp     al, 4           ; switch 5 cases
ja      def_49273D      ; jumptable 0049273D default case
xor     edx, edx
mov     dl, al
jmp     jpt_49273D[edx*4] ; switch jump

loc_492744:             ; jumptable 0049273D case 0
or      ds:byte_5F8364, 2
mov     eax, [ecx+28h]
or      byte ptr [eax], 2
mov     eax, [ecx+28h]
mov     byte ptr [eax+8], 4
mov     eax, [ecx+24h]
or      byte ptr [eax], 2
mov     eax, [ecx+2Ch]
call    sub_4DE336
mov     eax, [ecx+30h]
call    sub_4DE2F6
mov     dword ptr [ecx+2Ch], 0
mov     dword ptr [ecx+30h], 0
mov     edx, 3
mov     eax, offset dword_77EA48
call    sub_492892
or      byte ptr [ecx+0Ah], 80h
xor     ebx, ebx
xor     edx, edx
mov     eax, 181h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 183h
call    sub_4D89E4

loc_4927AB:
inc     byte ptr [ecx+6]
pop     edx
pop     ecx
pop     ebx
retn

loc_4927B2:             ; jumptable 0049273D case 1
cmp     dword ptr [ecx+10h], 14h
jnz     short def_49273D ; jumptable 0049273D default case
mov     eax, 8Bh
call    sub_42BEB2
mov     byte ptr [ecx+5], 3
jmp     short loc_4927AB

loc_4927C8:             ; jumptable 0049273D case 2
cmp     dword ptr [ecx+10h], 5Ah ; 'Z'
jnz     short def_49273D ; jumptable 0049273D default case
inc     al
mov     [ecx+6], al
pop     edx
pop     ecx
pop     ebx
retn

loc_4927D7:             ; jumptable 0049273D case 3
call    sub_42C353
test    eax, eax
jnz     short def_49273D ; jumptable 0049273D default case
mov     eax, 250004h
call    sub_4D8E42
jmp     short loc_4927AB

loc_4927EC:             ; jumptable 0049273D case 4
call    sub_4D8ECC
test    eax, eax
jz      short def_49273D ; jumptable 0049273D default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 182h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 184h
call    sub_4D89E4
mov     byte ptr [ecx+6], 0
call    sub_49DF64

def_49273D:             ; jumptable 0049273D default case
pop     edx
pop     ecx
pop     ebx
retn
sub_49271F endp




sub_49281E proc near
push    edx
cmp     dword ptr [eax+10h], 1
jnz     short loc_49285B
mov     byte ptr [eax+5], 4
and     byte ptr [eax+0Ah], 7Fh
and     ds:byte_5F8364, 0FDh
mov     edx, [eax+28h]
and     byte ptr [edx], 0FDh
mov     eax, [eax+24h]
call    sub_4DE336
mov     eax, offset unk_5266B4
call    sub_49DB4D
mov     edx, 2
mov     eax, offset dword_77EA48
call    sub_492892

loc_49285B:
pop     edx

locret_49285C:
retn
sub_49281E endp




sub_49285D proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49285C
mov     eax, offset unk_5266C8
jmp     sub_49DB4D
sub_49285D endp




sub_49286D proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49285C
mov     eax, [eax+38h]
jmp     sub_4DE336
sub_49286D endp




sub_49287B proc near
cmp     dword ptr [eax+10h], 154h
jnz     short locret_49285C
or      byte ptr [eax+0Ah], 80h
mov     eax, 0Ah
jmp     sub_49E0D7
sub_49287B endp




sub_492892 proc near
push    ebx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, dl
mov     dx, word ptr ds:dword_5F889A+2
mov     word ptr ds:dword_77EA4E+2, dx
mov     dx, word ptr ds:dword_5F889E
mov     word ptr ds:dword_77EA52, dx
mov     dx, word ptr ds:dword_5F889E+2
mov     word ptr ds:dword_77EA52+2, dx
mov     dx, word ptr ds:dword_5F88A4+2
mov     word ptr ds:dword_77EA5A, dx
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     bh, 0FFh
mov     ds:byte_77EA61, bh
mov     ds:byte_77EA60, bh
pop     ebx
retn
sub_492892 endp




sub_4928F7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
or      byte ptr [esi+7], 2
mov     bl, [edx+0Bh]
cmp     bl, 1Eh
jnb     short loc_492943
mov     [esi+6], bl
mov     [esi+5], bl
mov     [esi+4], bl
mov     bh, bl
inc     bh
mov     [edx+0Bh], bh
jmp     short loc_492950

loc_492943:
mov     byte ptr [esi+6], 1Eh
mov     al, [esi+6]
mov     [esi+5], al
mov     [esi+4], al

loc_492950:
mov     edx, ds:dword_77E6DC
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
mov     edi, edx
push    0
mov     ecx, 4Fh ; 'O'
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
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4928F7 endp




sub_49299E proc near
push    edx
xor     dl, dl
mov     ds:byte_55A5D6, dl
mov     ds:byte_55A5D5, dl
mov     ds:byte_55A5D4, dl
mov     eax, ds:off_526BD1[eax*4]
mov     ds:dword_55A5CC, eax
pop     edx
retn
sub_49299E endp




sub_4929C1 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A5D9, dl
mov     ds:byte_55A5D8, dl
mov     ds:byte_55A5D7, dl
mov     eax, ds:off_526BE1[eax*4]
mov     ds:dword_55A5D0, eax
pop     edx
retn
sub_4929C1 endp




sub_4929E4 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, offset dword_55A5CC
mov     ebx, ds:dword_55A5D0+3
sar     ebx, 18h
mov     ecx, ds:dword_55A5CC
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_492A17
jbe     short loc_492A1A
cmp     bl, 7Fh
jnz     short loc_492A17
xor     bl, bl
mov     ds:byte_55A5D6, bl
jmp     short loc_492A1A

loc_492A17:
inc     byte ptr [eax+0Ah]

loc_492A1A:
mov     ecx, [eax+7]
sar     ecx, 18h
mov     ebx, [eax]
mov     bl, [ecx+ebx]
mov     [eax+8], bl
mov     [eax+9], bl
mov     ebx, [eax+0Ah]
sar     ebx, 18h
mov     ecx, [eax+4]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_492A4A
jbe     short loc_492A4D
cmp     bl, 7Fh
jnz     short loc_492A4A
mov     byte ptr [eax+0Dh], 0
jmp     short loc_492A4D

loc_492A4A:
inc     byte ptr [eax+0Dh]

loc_492A4D:
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     ebx, [eax+4]
mov     bl, [ecx+ebx]
mov     [eax+0Bh], bl
mov     [eax+0Ch], bl
mov     bl, [eax+8]
mov     [edx+168h], bl
mov     al, [eax+0Bh]
mov     [edx+169h], al
pop     edx
pop     ecx
pop     ebx
retn
sub_4929E4 endp




sub_492A75 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_492A7B[edx*4]
pop     edx
retn
sub_492A75 endp

db 90h
jpt_492AAF dd offset loc_492AB6 ; jump table for switch statement
dd offset loc_492B01
dd offset loc_492B0E
dd offset loc_492BAA



sub_492A95 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_492AAF      ; jumptable 00492AAF default case
and     eax, 0FFh
jmp     jpt_492AAF[eax*4] ; switch jump

loc_492AB6:             ; jumptable 00492AAF case 0
mov     edx, 80h
mov     eax, 5Eh ; '^'
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_526CA0
mov     dword ptr [ecx+0A4h], offset unk_526CEC
mov     dword ptr [ecx+0Ch], 0
mov     eax, offset unk_526C00
call    sub_49DB4D
mov     byte ptr [ecx+0Ah], 80h

loc_492AF9:
inc     byte ptr [ecx+5]
jmp     def_492AAF      ; jumptable 00492AAF default case

loc_492B01:             ; jumptable 00492AAF case 1
mov     eax, offset unk_526C14
call    sub_49DB4D
inc     byte ptr [ecx+5]

loc_492B0E:             ; jumptable 00492AAF case 2
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      def_492AAF      ; jumptable 00492AAF default case
mov     byte ptr [edx+8], 3
mov     byte ptr [edx+9], 1
or      byte ptr [edx+0BDh], 10h
or      byte ptr [edx], 3
mov     byte ptr [edx+76h], 1
mov     byte ptr [edx+74h], 0
mov     eax, [ecx+24h]
mov     [edx+0C0h], eax
mov     word ptr [edx+538h], 0
mov     word ptr [edx+53Ah], 0D63Fh
mov     word ptr [edx+53Ch], 0FF00h
mov     dword ptr [edx+528h], 0
mov     dword ptr [edx+52Ch], 0D63F0000h
mov     dword ptr [edx+530h], 0FF000000h
mov     word ptr [edx+540h], 0
mov     word ptr [edx+542h], 400h
mov     word ptr [edx+544h], 0
mov     byte ptr [edx+548h], 30h ; '0'
mov     eax, 1
call    sub_49E0D7
jmp     loc_492AF9

loc_492BAA:             ; jumptable 00492AAF case 3
cmp     ds:word_6E23D6, 0
jnz     short def_492AAF ; jumptable 00492AAF default case
mov     eax, 250006h
call    sub_4D8E42
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

def_492AAF:             ; jumptable 00492AAF default case
call    sub_47EBCB
test    eax, eax
jz      short loc_492BDA
or      byte ptr [ecx+0Ah], 1

loc_492BDA:
call    sub_49DBD1

loc_492BDF:
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_492A95 endp

db 90h
jpt_492C0E dd offset loc_492C15 ; jump table for switch statement
dd offset loc_492C4D
dd offset loc_492C7E
dd offset loc_492C8B



sub_492BF9 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_492C0E      ; jumptable 00492C0E default case
and     eax, 0FFh
jmp     jpt_492C0E[eax*4] ; switch jump

loc_492C15:             ; jumptable 00492C0E case 0
call    sub_49DBD1
call    sub_4D8ECC
test    eax, eax
jz      def_492C0E      ; jumptable 00492C0E default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_526CFC
mov     dword ptr [edx+0A4h], offset unk_527240
and     byte ptr [edx+0Ah], 7Fh
mov     byte ptr [edx+5], 1
jmp     def_492C0E      ; jumptable 00492C0E default case

loc_492C4D:             ; jumptable 00492C0E case 1
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     al, [edx+0Ah]
test    al, 80h
jnz     short loc_492CBA
test    al, 1
jz      short loc_492CBA
mov     bl, al
or      bl, 2
mov     [edx+0Ah], bl
mov     eax, 8
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0
jmp     short loc_492CBA

loc_492C7E:             ; jumptable 00492C0E case 2
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
jmp     short loc_492CBA

loc_492C8B:             ; jumptable 00492C0E case 3
cmp     byte ptr [edx+8], 0FFh
jz      short loc_492CB3
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     bh, [edx+0Ah]
test    bh, 80h
jnz     short loc_492CBA
test    bh, 1
jz      short loc_492CBA
mov     eax, 8
call    sub_49E0D7

loc_492CB3:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_492CBA:
call    sub_49DBD1

def_492C0E:             ; jumptable 00492C0E default case
call    sub_47EBCB
test    eax, eax
jz      loc_492BDF
or      byte ptr [edx+0Ah], 1
jmp     loc_492BDF
sub_492BF9 endp

jpt_492CFB dd offset loc_492D02 ; jump table for switch statement
dd offset loc_492DA6
dd offset loc_492DE6
dd offset loc_492DF1



sub_492CE5 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_492CFB      ; jumptable 00492CFB default case
and     eax, 0FFh
jmp     jpt_492CFB[eax*4] ; switch jump

loc_492D02:             ; jumptable 00492CFB case 0
cmp     ds:word_6E23D6, 0
jnz     def_492CFB      ; jumptable 00492CFB default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     edx, edx
mov     word ptr ds:dword_5F889A+2, dx
mov     word ptr ds:dword_5F889E, 0FA3Fh
mov     word ptr ds:dword_5F889E+2, dx
xor     edx, edx
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8890, 0FA3F0000h
mov     ds:dword_5F8894, edx
xor     edi, edi
mov     ds:word_5F88A8, di
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
xor     dh, dh
mov     ds:byte_5F88AC, dh
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
call    sub_4D8EB1
test    byte ptr [ecx+0Ah], 2
jz      short loc_492D9E
mov     eax, 8Ch
call    sub_42BEB2

loc_492D9E:
inc     byte ptr [ecx+5]
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_492DA6:             ; jumptable 00492CFB case 1
mov     eax, offset byte_5F8364
call    sub_4B565A
and     ds:byte_5F8364, 0FCh
xor     bl, bl
mov     ds:byte_5F83DA, bl
mov     edx, 80h
mov     eax, 5Eh ; '^'
call    sub_4DC979
test    byte ptr [ecx+0Ah], 2
jz      short loc_492DDD
mov     byte ptr [ecx+5], 2
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_492DDD:
mov     byte ptr [ecx+5], 3
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_492DE6:             ; jumptable 00492CFB case 2
call    sub_42C353
test    eax, eax
jnz     short def_492CFB ; jumptable 00492CFB default case
jmp     short loc_492D9E

loc_492DF1:             ; jumptable 00492CFB case 3
or      ds:byte_5F8421, 40h
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, 3
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, 0FA3Fh
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, 800h
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     al, 0FFh
mov     ds:byte_77EA61, al
mov     ds:byte_77EA60, al
mov     [ecx], bh

def_492CFB:             ; jumptable 00492CFB default case
pop     edi
pop     edx
pop     ecx
pop     ebx

locret_492E49:
retn
sub_492CE5 endp




sub_492E4A proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_492E92
and     ds:byte_5F8364, 0FDh
xor     dh, dh
mov     ds:byte_5F88AC, dh
mov     edx, [eax+24h]
and     byte ptr [edx], 0FDh
mov     eax, [eax+28h]
and     byte ptr [eax], 0FDh
mov     eax, offset unk_526C28
call    sub_49DB4D
mov     eax, offset unk_526C3C
call    sub_49DB4D
mov     edx, 1
mov     eax, offset dword_77EA48
call    sub_49310F
pop     edx
retn

loc_492E92:
cmp     edx, 1
jnz     short loc_492EAB
call    sub_4DE1BE
test    eax, eax
jz      short loc_492EAB
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+0Fh], 0

loc_492EAB:
pop     edx
retn
sub_492E4A endp




sub_492EAD proc near
push    edx
mov     edx, eax
mov     eax, [eax+24h]
cmp     dword ptr [edx+10h], 0
jnz     short loc_492EF9
or      ds:byte_5F8364, 2
or      byte ptr [eax], 2
inc     byte ptr [eax+8]
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     eax, [edx+2Ch]
call    sub_4DE336
mov     eax, [edx+30h]
call    sub_4DE2F6
mov     dword ptr [edx+2Ch], 0
mov     dword ptr [edx+30h], 0
mov     edx, 3
mov     eax, offset dword_77EA48
call    sub_49310F

loc_492EF9:
pop     edx
retn
sub_492EAD endp




sub_492EFB proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_492F07
mov     eax, [eax+24h]
inc     byte ptr [eax+8]

locret_492F07:
retn
sub_492EFB endp

db 90h
jpt_492F38 dd offset loc_492F3F ; jump table for switch statement
dd offset loc_492F82
dd offset loc_492FA0
dd offset loc_492FC2
dd offset loc_492FD3
dd offset loc_492FDF
dd offset loc_492FF4

loc_492F25:
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 6           ; switch 7 cases
ja      def_492F38      ; jumptable 00492F38 default case
xor     edx, edx
mov     dl, al
jmp     jpt_492F38[edx*4] ; switch jump

loc_492F3F:             ; jumptable 00492F38 case 0
and     ds:byte_5F8364, 0FDh
mov     eax, [ecx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [ecx+24h]
inc     byte ptr [eax+8]
mov     eax, [ecx+28h]
mov     word ptr [eax+14h], 0F000h
mov     word ptr [eax+16h], 0D800h
mov     word ptr [eax+18h], 400h
mov     dword ptr [eax+1Ch], 0F0000000h
mov     dword ptr [eax+20h], 0D8000000h
mov     dword ptr [eax+24h], 4000000h

loc_492F7C:
inc     byte ptr [ecx+6]
pop     edx
pop     ecx
retn

loc_492F82:             ; jumptable 00492F38 case 1
cmp     dword ptr [ecx+10h], 50h ; 'P'
jnz     def_492F38      ; jumptable 00492F38 default case
or      byte ptr [ecx+0Ah], 80h
mov     eax, 0Eh
call    sub_49E0D7
mov     byte ptr [ecx+5], 2
jmp     short loc_492F7C

loc_492FA0:             ; jumptable 00492F38 case 2
cmp     ds:word_6E23D6, 0
jnz     short def_492F38 ; jumptable 00492F38 default case
mov     edx, 80h
mov     eax, 4
call    sub_4DC979
mov     dword ptr [ecx+28h], 0
jmp     short loc_492F7C

loc_492FC2:             ; jumptable 00492F38 case 3
cmp     dword ptr [ecx+10h], 0B4h
jl      short def_492F38 ; jumptable 00492F38 default case
inc     al
mov     [ecx+6], al
pop     edx
pop     ecx
retn

loc_492FD3:             ; jumptable 00492F38 case 4
mov     eax, 8Ch
call    sub_42BEB2
jmp     short loc_492F7C

loc_492FDF:             ; jumptable 00492F38 case 5
call    sub_42C353
test    eax, eax
jnz     short def_492F38 ; jumptable 00492F38 default case
mov     eax, 250007h
call    sub_4D8E42
jmp     short loc_492F7C

loc_492FF4:             ; jumptable 00492F38 case 6
call    sub_4D8ECC
test    eax, eax
jz      short def_492F38 ; jumptable 00492F38 default case
mov     byte ptr [ecx+6], 0
mov     eax, 7
call    sub_49E0D7
call    sub_49DF64

def_492F38:             ; jumptable 00492F38 default case
pop     edx
pop     ecx
retn



sub_493013 proc near
push    edx
mov     edx, eax
mov     al, [eax+6]
cmp     al, 1
jb      short loc_493021
jbe     short loc_493034
pop     edx
retn

loc_493021:
test    al, al
jnz     short loc_493046
mov     eax, offset unk_526C50
call    sub_49DB4D
inc     byte ptr [edx+6]
pop     edx
retn

loc_493034:
cmp     ds:word_6E23D6, 0
jnz     short loc_493046
mov     byte ptr [edx+5], 3
and     byte ptr [edx+0Ah], 7Fh

loc_493046:
pop     edx
retn
sub_493013 endp




sub_493048 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49306B
mov     eax, [eax+28h]
and     byte ptr [eax], 0FDh
mov     eax, offset unk_526C64
call    sub_49DB4D
xor     edx, edx
mov     eax, offset dword_77EA48
call    sub_49310F

loc_49306B:
pop     edx

locret_49306C:
retn
sub_493048 endp




sub_49306D proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49306C
mov     eax, offset unk_526C8C
jmp     sub_49DB4D
sub_49306D endp




sub_49307D proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49306C
mov     eax, offset unk_526C78
jmp     sub_49DB4D
sub_49307D endp




sub_49308D proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_4930F5
mov     eax, [eax+2Ch]
call    sub_4DE336
mov     [ecx+2Ch], edx
mov     eax, [ecx+30h]
call    sub_4DE336
mov     [ecx+30h], edx
mov     eax, [ecx+34h]
call    sub_4DE336
mov     [ecx+34h], edx
mov     eax, [ecx+28h]
or      byte ptr [eax], 2
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FF00h
mov     word ptr [eax+18h], 0
mov     dword ptr [eax+1Ch], 0
mov     dword ptr [eax+20h], 0FF000000h
mov     dword ptr [eax+24h], 0
mov     edx, 3
mov     eax, offset dword_77EA48
call    sub_49310F

loc_4930F5:
cmp     dword ptr [ecx+10h], 0C8h
jnz     short loc_49310C
or      byte ptr [ecx+0Ah], 80h
mov     eax, 0Ah
call    sub_49E0D7

loc_49310C:
pop     edx
pop     ecx
retn
sub_49308D endp




sub_49310F proc near
push    ebx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, dl
mov     dx, word ptr ds:dword_5F889A+2
mov     word ptr ds:dword_77EA4E+2, dx
mov     dx, word ptr ds:dword_5F889E
mov     word ptr ds:dword_77EA52, dx
mov     dx, word ptr ds:dword_5F889E+2
mov     word ptr ds:dword_77EA52+2, dx
mov     dx, word ptr ds:dword_5F88A4+2
mov     word ptr ds:dword_77EA5A, dx
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     bh, 0FFh
mov     ds:byte_77EA61, bh
mov     ds:byte_77EA60, bh
pop     ebx
retn
sub_49310F endp




sub_493174 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A5DE, dl
mov     ds:byte_55A5DD, dl
mov     ds:byte_55A5DC, dl
mov     eax, ds:off_5272BA[eax*4]
mov     ds:dword_55A5E4, eax
pop     edx
retn
sub_493174 endp




sub_493197 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A5E1, dl
mov     ds:byte_55A5E0, dl
mov     ds:byte_55A5DF, dl
mov     eax, ds:off_5272D6[eax*4]
mov     ds:dword_55A5E8, eax
pop     edx
retn
sub_493197 endp




sub_4931BA proc near
push    ebx
push    ecx
push    edx
mov     edx, offset byte_5F8364
mov     eax, offset byte_55A5DC
mov     ebx, dword ptr ds:unk_55A5DB
sar     ebx, 18h
mov     ecx, ds:dword_55A5E4
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_4931F0
jbe     short loc_4931F3
cmp     bl, 7Fh
jnz     short loc_4931F0
xor     bl, bl
mov     ds:byte_55A5DE, bl
jmp     short loc_4931F3

loc_4931F0:
inc     byte ptr [eax+2]

loc_4931F3:
movsx   ecx, byte ptr [eax+2]
mov     ebx, [eax+8]
mov     bl, [ecx+ebx]
mov     [eax], bl
mov     [eax+1], bl
mov     ebx, [eax+2]
sar     ebx, 18h
mov     ecx, [eax+0Ch]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_493221
jbe     short loc_493224
cmp     bl, 7Fh
jnz     short loc_493221
mov     byte ptr [eax+5], 0
jmp     short loc_493224

loc_493221:
inc     byte ptr [eax+5]

loc_493224:
mov     ecx, [eax+2]
sar     ecx, 18h
mov     ebx, [eax+0Ch]
mov     bl, [ecx+ebx]
mov     [eax+3], bl
mov     [eax+4], bl
mov     bl, [eax]
mov     [edx+168h], bl
mov     al, [eax+3]
mov     [edx+169h], al
pop     edx
pop     ecx
pop     ebx
retn
sub_4931BA endp




sub_49324B proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 17h
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
sub_49324B endp




sub_493297 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
mov     ah, byte ptr ds:word_77EAB6
test    ah, 10h
jz      short loc_4932D9
test    ah, 7
jz      short loc_4932DE

loc_4932D3:
mov     byte ptr [esi+4], 0
jmp     short loc_4932E2

loc_4932D9:
test    ah, 3
jnz     short loc_4932D3

loc_4932DE:
mov     byte ptr [esi+4], 64h ; 'd'

loc_4932E2:
mov     byte ptr [esi+5], 64h ; 'd'
mov     byte ptr [esi+6], 64h ; 'd'
or      byte ptr [esi+7], 2
mov     edx, ds:dword_77E6DC
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
mov     edi, edx
push    0
mov     ecx, 4Fh ; 'O'
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
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx

locret_49333B:
retn
sub_493297 endp




sub_49333C proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+10h]
cmp     eax, 1
jb      short loc_493368
jbe     short loc_49339C
cmp     eax, 15h
jb      loc_4933FB
jbe     loc_4933F5
cmp     eax, 1Fh
jz      loc_4933F5
jmp     loc_4933FB

loc_493368:
test    eax, eax
jnz     loc_4933FB
call    sub_49324B
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+24h]
inc     byte ptr [eax+8]
mov     eax, offset unk_5272F6
call    sub_49DB4D
mov     edx, 80h
mov     eax, 60h ; '`'
call    sub_4DC979
jmp     short loc_4933FB

loc_49339C:
push    0
push    0FFFFFFFDh
mov     ecx, 14h
mov     ebx, 1
mov     edx, 4
mov     eax, offset unk_52760A
call    sub_43954B
push    0
push    0FFFFFFFCh
mov     ecx, 14h
mov     ebx, 2
mov     edx, 5
mov     eax, offset unk_527612
call    sub_43954B
push    0
push    0FFFFFFFAh
mov     ecx, 14h
mov     ebx, 3
mov     edx, 0Ah
mov     eax, offset unk_52761A

loc_4933EE:
call    sub_43954B
jmp     short loc_4933FB

loc_4933F5:
mov     eax, [edx+28h]

loc_4933F8:
inc     byte ptr [eax+8]

loc_4933FB:
call    sub_493297
pop     edx
pop     ecx
pop     ebx
retn
sub_49333C endp




sub_493404 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+10h]
cmp     edx, 1
jb      short loc_493413
jbe     short loc_49343A
jmp     short loc_4933FB

loc_493413:
test    edx, edx
jnz     short loc_4933FB
mov     eax, [eax+28h]
call    sub_4DE336
mov     eax, offset unk_52730A
call    sub_49DB4D
mov     edx, 80h
mov     eax, 60h ; '`'
call    sub_4DC979
jmp     short loc_4933FB

loc_49343A:
push    0
push    0FFFFFFFBh
mov     ecx, 14h
mov     ebx, 3
mov     edx, 0Ah
mov     eax, offset unk_527622
call    sub_43954B
push    0
push    0FFFFFFFAh
mov     ecx, 14h
mov     ebx, 1
mov     edx, 5
mov     eax, offset unk_52762A
jmp     loc_4933EE
sub_493404 endp




sub_493474 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+10h]
cmp     edx, 1
jb      short loc_49348B
jbe     short loc_4934B9
cmp     edx, 14h
jz      short loc_4934DB
jmp     loc_4933FB

loc_49348B:
test    edx, edx
jnz     loc_4933FB
mov     eax, [eax+2Ch]
call    sub_4DE336
mov     eax, offset unk_52731E
call    sub_49DB4D
mov     edx, 80h
mov     eax, 60h ; '`'
call    sub_4DC979
jmp     loc_4933FB

loc_4934B9:
push    0
push    0FFFFFFFBh
mov     ecx, 14h
mov     ebx, 3
mov     edx, 0Ah
mov     eax, offset unk_527632
call    sub_43954B
jmp     loc_4933FB

loc_4934DB:
mov     eax, [eax+30h]
jmp     loc_4933F8
sub_493474 endp

align 4
jpt_493508 dd offset loc_49350F ; jump table for switch statement
dd offset loc_493542
dd offset loc_49355E
dd offset loc_493576

loc_4934F4:
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      def_493508      ; jumptable 00493508 default case
and     eax, 0FFh
jmp     jpt_493508[eax*4] ; switch jump

loc_49350F:             ; jumptable 00493508 case 0
mov     eax, [ecx+30h]
call    sub_4DE336
mov     eax, 3
call    sub_49324B
mov     eax, [ecx+24h]
or      byte ptr [eax], 2
mov     eax, [ecx+24h]
inc     byte ptr [eax+8]
mov     edx, 80h
mov     eax, 60h ; '`'
call    sub_4DC979

loc_49353C:
inc     byte ptr [ecx+6]
pop     edx
pop     ecx
retn

loc_493542:             ; jumptable 00493508 case 1
cmp     dword ptr [ecx+10h], 0AAh
jnz     short def_493508 ; jumptable 00493508 default case
or      byte ptr ds:dword_55A5EC, 80h
mov     eax, 0Fh
call    sub_49E0D7
jmp     short loc_49353C

loc_49355E:             ; jumptable 00493508 case 2
cmp     ds:word_6E23D6, 0
jnz     short def_493508 ; jumptable 00493508 default case
mov     eax, [ecx+24h]
call    sub_4DE336
mov     byte ptr [ecx+0Ah], 1Eh
jmp     short loc_49353C

loc_493576:             ; jumptable 00493508 case 3
mov     ah, [ecx+0Ah]
test    ah, ah
jz      short loc_493587
mov     dl, ah
dec     dl
mov     [ecx+0Ah], dl
pop     edx
pop     ecx
retn

loc_493587:
mov     eax, offset unk_527346
call    sub_49DB4D
mov     eax, offset unk_52735A
call    sub_49DB4D
mov     eax, 7
call    sub_49E0D7
mov     byte ptr [ecx+6], 0
call    sub_49DF64

def_493508:             ; jumptable 00493508 default case
pop     edx
pop     ecx
retn



sub_4935B1 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 1
jb      short loc_4935C7
jbe     loc_49369C
jmp     loc_4936B0

loc_4935C7:
test    al, al
jnz     loc_4936B0
or      ds:byte_5F8364, 3
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0A40h
mov     word ptr ds:dword_5F889E, 0E795h
mov     word ptr ds:dword_5F889E+2, 0F4C4h
mov     ds:dword_5F888C, 0A400000h
mov     ds:dword_5F8890, 0E7950000h
mov     ds:dword_5F8894, 0F4C40000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, ax
mov     ds:byte_5F88AC, 84h
mov     dl, 1
mov     ds:byte_5F83DA, dl
xor     dh, dh
mov     ds:byte_5F83D8, dh
mov     eax, [ecx+28h]
mov     ds:dword_5F8424, eax
mov     ds:byte_5F84D4, dh
xor     eax, eax
call    sub_493174
xor     eax, eax
call    sub_493197
call    sub_4DE13B
test    eax, eax
jz      short loc_49367D
mov     [eax], dl
mov     byte ptr [eax+2], 12h

loc_49367D:
xor     edx, edx
jmp     short loc_493687

loc_493681:
inc     edx
cmp     edx, 9
jge     short loc_4936AD

loc_493687:
call    sub_4DE13B
test    eax, eax
jz      short loc_493681
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 16h
mov     [eax+0Ch], dl
jmp     short loc_493681

loc_49369C:
cmp     ds:word_6E23D6, 0
jnz     short loc_4936B0
and     byte ptr ds:dword_55A5EC, 7Fh

loc_4936AD:
inc     byte ptr [ecx+6]

loc_4936B0:
call    sub_4931BA
pop     edx
pop     ecx
retn
sub_4935B1 endp




sub_4936B8 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 1Eh
jb      short loc_4936D7
jbe     short loc_4936E8
cmp     edx, 0A0h
jb      short loc_493728
jbe     short loc_4936FC
cmp     edx, 0D2h
jz      short loc_493714
jmp     short loc_493728

loc_4936D7:
test    edx, edx
jbe     short loc_4936E2
cmp     edx, 0Ah
jz      short loc_4936F0
jmp     short loc_493728

loc_4936E2:
mov     edx, [eax+28h]
inc     byte ptr [edx+8]

loc_4936E8:
mov     eax, [eax+2Ch]
inc     byte ptr [eax+8]
jmp     short loc_493728

loc_4936F0:
mov     eax, 3
call    sub_493174
jmp     short loc_493728

loc_4936FC:
mov     ds:byte_5F88AC, 83h
mov     eax, 1
call    sub_493174
mov     eax, 1
jmp     short loc_493723

loc_493714:
mov     eax, 2
call    sub_493174
mov     eax, 2

loc_493723:
call    sub_493197

loc_493728:
call    sub_4931BA
pop     edx

locret_49372E:
retn
sub_4936B8 endp




sub_49372F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_49374A
jbe     short loc_4937AF
cmp     al, 2
jz      loc_4937C9
jmp     loc_4937F4

loc_49374A:
test    al, al
jnz     loc_4937F4
and     ds:byte_5F8364, 0FDh
mov     al, ds:byte_5F84D4
mov     ds:byte_55A5F0, al
xor     bl, bl
mov     ds:byte_5F84D4, bl
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52736E
mov     dword ptr [ecx+0A4h], offset unk_5273CA
mov     dword ptr [ecx+0Ch], 0
mov     eax, offset unk_5272E2
call    sub_49DB4D

loc_4937AA:
inc     byte ptr [ecx+5]
jmp     short loc_4937F4

loc_4937AF:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_4937F4
mov     eax, 1
call    sub_49E0D7
jmp     short loc_4937AA

loc_4937C9:
cmp     ds:word_6E23D6, 0
jnz     short loc_4937F4
xor     edx, edx
mov     ds:dword_55A5EC, edx
mov     eax, 250005h
call    sub_4D8E42
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

loc_4937F4:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_49372F endp




sub_493802 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_493816
cmp     al, 1
jz      short loc_493842
jmp     loc_493884

loc_493816:
call    sub_49DBD1
call    sub_4D8ECC
test    eax, eax
jz      short loc_493884
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_5273DA
mov     dword ptr [edx+0A4h], offset unk_52763A
inc     byte ptr [edx+5]
jmp     short loc_493884

loc_493842:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_493878
call    sub_47EBCB
test    eax, eax
jz      short loc_49386B
test    byte ptr ds:dword_55A5EC, 80h
jnz     short loc_49386B
mov     ds:dword_55A5EC, 1
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_49386B:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
jmp     short loc_49387F

loc_493878:
add     [edx+4], al
mov     byte ptr [edx+5], 0

loc_49387F:
call    sub_49DBD1

loc_493884:
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_493802 endp




sub_49388C proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_4938A2
jbe     short loc_4938B6
cmp     al, 2
jz      short loc_493907
pop     edx
pop     ecx
pop     ebx
retn

loc_4938A2:
test    al, al
jnz     loc_493961
call    sub_4D8EB1

loc_4938AF:
inc     byte ptr [edx+5]
pop     edx
pop     ecx
pop     ebx
retn

loc_4938B6:
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA5E, 1Bh
mov     ds:byte_77EA5F, 8
mov     word ptr ds:dword_77EA4E+2, 70h ; 'p'
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0D8h
mov     word ptr ds:dword_77EA5A, 0C00h
xor     cl, cl
mov     byte ptr ds:dword_77EA5A+3, cl
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 2
jmp     short loc_4938AF

loc_493907:
cmp     al, byte ptr ds:dword_77EA5A+2
jnz     short loc_493961
call    sub_4E1D8A
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 3
xor     bh, bh
mov     byte ptr ds:dword_5F84CB+1, bh
mov     byte ptr ds:dword_5F84CB+2, bh
mov     al, ds:byte_55A5F0
mov     ds:byte_5F84D4, al
mov     ch, 1
mov     byte ptr ds:dword_77E954, ch
call    sub_42A66D
add     byte ptr ds:dword_77EA5A+2, ch
call    sub_47E829
mov     eax, 2Ah ; '*'
call    sub_47E8B8
mov     [edx], bh

loc_493961:
pop     edx
pop     ecx
pop     ebx
retn
sub_49388C endp




sub_493965 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_49396B[edx*4]
pop     edx
retn
sub_493965 endp




sub_493974 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A602, dl
mov     ds:byte_55A600, dl
mov     ds:byte_55A601, 0FFh
mov     eax, ds:off_527741[eax*4]
mov     ds:dword_55A5F8, eax
pop     edx
retn
sub_493974 endp




sub_493998 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A605, dl
mov     ds:byte_55A603, dl
mov     ds:byte_55A604, 0FFh
mov     eax, ds:off_52774E[eax*4]
mov     ds:dword_55A5FC, eax
pop     edx
retn
sub_493998 endp

; START OF FUNCTION CHUNK FOR sub_493A4D

loc_4939BC:
inc     byte ptr [eax+0Eh]

loc_4939BF:
mov     ecx, [eax+0Bh]
sar     ecx, 18h
mov     ebx, [eax+4]
mov     bl, [ecx+ebx]
mov     [eax+0Ch], bl
mov     [eax+0Dh], bl
mov     ebx, [eax+0Eh]
sar     ebx, 18h
mov     ecx, [eax+8]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_4939F0
jbe     short loc_4939F3
cmp     bl, 7Fh
jnz     short loc_4939F0
mov     byte ptr [eax+11h], 0
jmp     short loc_4939F3

loc_4939F0:
inc     byte ptr [eax+11h]

loc_4939F3:
mov     ecx, [eax+0Eh]
sar     ecx, 18h
mov     ebx, [eax+8]
mov     bl, [ecx+ebx]
mov     [eax+0Fh], bl
mov     [eax+10h], bl
mov     bl, [eax+0Ch]
mov     [edx+168h], bl
mov     al, [eax+0Fh]
mov     [edx+169h], al
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_493A4D



sub_493A1B proc near
push    edx
cmp     dword ptr [eax+10h], 1
jnz     short loc_493A4B
mov     ds:byte_5F88AC, 81h
mov     al, ds:byte_5F84D4
mov     ds:byte_55A609, al
mov     al, ds:byte_5F84D5
mov     ds:byte_55A608, al
xor     dl, dl
mov     ds:byte_5F84D5, dl
mov     ds:byte_5F84D4, dl

loc_493A4B:
pop     edx
retn
sub_493A1B endp




sub_493A4D proc near

; FUNCTION CHUNK AT 004939BC SIZE 0000005F BYTES

cmp     dword ptr [eax+10h], 0
jnz     short loc_493A68
mov     ds:byte_5F88AC, 82h
xor     eax, eax
call    sub_493974
xor     eax, eax
call    sub_493998

loc_493A68:
push    ebx
push    ecx
push    edx
mov     edx, offset byte_5F8364
mov     eax, offset unk_55A5F4
mov     ebx, ds:dword_55A5FC+3
sar     ebx, 18h
mov     ecx, ds:dword_55A5F8
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      loc_4939BC
jbe     loc_4939BF
cmp     bl, 7Fh
jnz     loc_4939BC
xor     bl, bl
mov     ds:byte_55A602, bl
jmp     loc_4939BF
sub_493A4D endp




sub_493AAD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_527690
mov     dword ptr [ecx+0A4h], offset unk_527752
pop     edx
pop     ecx
pop     ebx
retn
sub_493AAD endp




sub_493AD5 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_493AE5
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_493AE5:
pop     edx
retn
sub_493AD5 endp




sub_493AE7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 3
jb      short loc_493B1B
jbe     loc_493BDB
cmp     al, 5
jb      loc_493BF0
jbe     loc_493C04
cmp     al, 0Ah
jz      loc_493C3A
jmp     loc_493CD4

loc_493B1B:
cmp     al, 1
jb      short loc_493B2A
jbe     loc_493BAB
jmp     loc_493BBF

loc_493B2A:
test    al, al
jnz     loc_493CD4
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      loc_493CD4
mov     byte ptr ds:dword_5F836C, 3
mov     bh, 1
mov     byte ptr ds:dword_5F836C+1, bh
or      ds:byte_5F8421, 10h
mov     ds:dword_5F888C, 1040000h
mov     ds:dword_5F8890, 0FF9F0000h
mov     ds:dword_5F8894, 0F00000h
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     ds:word_5F88A8, di
mov     word ptr ds:dword_5F88A4+2, 0F800h
add     [ecx+4], bh
jmp     loc_493CD4

loc_493BAB:
inc     al
mov     [ecx+4], al
mov     eax, 250020h
call    sub_4D8E42
jmp     loc_493CD4

loc_493BBF:
call    sub_4D8ECC
test    eax, eax
jz      loc_493CD4
inc     byte ptr [ecx+4]
mov     dword ptr [ecx+0Ch], 5
jmp     loc_493CD4

loc_493BDB:
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     loc_493CD4
inc     byte ptr [ecx+4]
jmp     loc_493CD4

loc_493BF0:
mov     eax, 3
call    sub_49E0D7
mov     eax, ecx
call    sub_493AAD
inc     byte ptr [ecx+4]

loc_493C04:
cmp     ds:word_6E23D6, 0
jnz     short loc_493C3A
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_493C22
call    sub_47EBCB
test    eax, eax
jz      short loc_493C3A

loc_493C22:
mov     eax, 0Ah
call    sub_49E0D7
mov     eax, 21h ; '!'
call    sub_47E8B8
mov     byte ptr [ecx+4], 0Ah

loc_493C3A:
mov     eax, ecx
call    sub_493AD5
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 0Ah
jnz     loc_493CD4
mov     si, ds:word_6E23D6
test    si, si
jnz     short loc_493CD4
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 12h
xor     bl, bl
mov     ds:byte_77EA5F, bl
xor     edi, edi
mov     word ptr ds:dword_77EA4E+2, di
xor     eax, eax
mov     word ptr ds:dword_77EA52, ax
xor     bh, bh
mov     word ptr ds:dword_77EA52+2, bx
mov     word ptr ds:dword_77EA5A, si
mov     byte ptr ds:dword_77EA5A+3, bl
mov     [ecx], bl
mov     al, ds:byte_55A609
mov     [edx+170h], al
mov     al, ds:byte_55A608
mov     [edx+171h], al
mov     al, 0FFh
mov     ds:byte_77EA61, al
mov     ds:byte_77EA60, al
call    sub_4D8EB1
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     [ecx+4], bl

loc_493CD4:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_493AE7 endp

unk_493CDA db    0
db    0
dd 0
dword_493CE0 dd 0FEAC0000h, 0C80000h, 0F3800800h, 0F7680000h
dd 31520800h, 4508AD2h
call    ds:funcs_493CF8[edx*4]
pop     edx
retn
align 2
jpt_493D29 dd offset loc_493D30 ; jump table for switch statement
dd offset loc_493D8E
dd offset loc_493E26
dd offset loc_493E3F



sub_493D12 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_493D29      ; jumptable 00493D29 default case
and     eax, 0FFh
jmp     jpt_493D29[eax*4] ; switch jump

loc_493D30:             ; jumptable 00493D29 case 0
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
call    sub_4D8ED6
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0Ah], 80h
mov     ds:dword_77E6B4, offset unk_5277C8
mov     dword ptr [ecx+0A4h], offset unk_527FF4
mov     eax, offset unk_5277A0
call    sub_49DB4D
mov     eax, offset unk_5277B4
call    sub_49DB4D

loc_493D86:
inc     byte ptr [ecx+5]
jmp     def_493D29      ; jumptable 00493D29 default case

loc_493D8E:             ; jumptable 00493D29 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_493D29      ; jumptable 00493D29 default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
and     ds:byte_5F8364, 0FDh
xor     dl, dl
mov     ds:byte_5F83DA, dl
xor     dh, dh
mov     ds:byte_5F83D8, dl
xor     ebx, ebx
mov     word ptr ds:dword_5F889A+2, bx
xor     esi, esi
mov     word ptr ds:dword_5F889E, si
xor     edi, edi
mov     word ptr ds:dword_5F889E+2, di
xor     ebx, ebx
mov     ds:dword_5F888C, ebx
mov     ds:dword_5F8890, ebx
mov     ds:dword_5F8894, ebx
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, dx
xor     ebx, ebx
mov     ds:word_5F88A8, bx
mov     ds:byte_5F88AC, 30h ; '0'
xor     eax, eax
call    sub_494B70
jmp     loc_493D86

loc_493E26:             ; jumptable 00493D29 case 2
cmp     ds:word_6E23D6, 0
jnz     short def_493D29 ; jumptable 00493D29 default case
mov     eax, 240019h
call    sub_4D8E42
jmp     loc_493D86

loc_493E3F:             ; jumptable 00493D29 case 3
call    sub_4D8ECC
test    eax, eax
jz      short def_493D29 ; jumptable 00493D29 default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_527818
mov     dword ptr [ecx+0A4h], offset unk_528004
and     byte ptr [ecx+0Ah], 3
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

def_493D29:             ; jumptable 00493D29 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_493E81
or      byte ptr [ecx+0Ah], 1

loc_493E81:
call    sub_49DBD1
call    sub_49DECF

loc_493E8B:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_493D12 endp




sub_493E91 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_493EB5
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jnz     short loc_493EB5
cmp     byte ptr [edx+0Ah], 1
jnz     short loc_493EC6

loc_493EB5:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_493EC6:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_493E91 endp

db 8Dh, 40h, 0
jpt_493F02 dd offset loc_493F09 ; jump table for switch statement
dd offset loc_493F33
dd offset loc_493F4E
dd offset loc_493F60
dd offset loc_493F7F
dd offset loc_493FE3



sub_493EEE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 5           ; switch 6 cases
ja      def_493F02      ; jumptable 00493F02 default case
xor     edx, edx
mov     dl, al
jmp     jpt_493F02[edx*4] ; switch jump

loc_493F09:             ; jumptable 00493F02 case 0
cmp     ds:word_6E23D6, 0
jnz     def_493F02      ; jumptable 00493F02 default case
call    sub_4D8EB1
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979

loc_493F2B:
inc     byte ptr [ecx+5]
jmp     def_493F02      ; jumptable 00493F02 default case

loc_493F33:             ; jumptable 00493F02 case 1
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 3
xor     dl, dl
mov     ds:byte_5F83DA, dl
jmp     short loc_493F2B

loc_493F4E:             ; jumptable 00493F02 case 2
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_493F2B
mov     eax, 90h
call    sub_42BEB2
jmp     short loc_493F2B

loc_493F60:             ; jumptable 00493F02 case 3
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_493F75
call    sub_42C353
test    eax, eax
jnz     def_493F02      ; jumptable 00493F02 default case
jmp     short loc_493F2B

loc_493F75:
inc     al
mov     [ecx+5], al
jmp     def_493F02      ; jumptable 00493F02 default case

loc_493F7F:             ; jumptable 00493F02 case 4
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 19h
xor     bl, bl
mov     ds:byte_77EA5F, bl
mov     word ptr ds:dword_77EA4E+2, 0F31Ch
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0F664h
mov     word ptr ds:dword_77EA5A, 0C00h
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     al, 0FFh
mov     ds:byte_77EA61, al
mov     ds:byte_77EA60, al
jmp     loc_493F2B

loc_493FE3:             ; jumptable 00493F02 case 5
mov     eax, 1Bh
call    sub_4EE7A4
mov     eax, 1Ch
call    sub_4EE7A4
mov     eax, 1Dh
call    sub_4EE7A4
mov     eax, 25h ; '%'
call    sub_4EE7A4
mov     eax, 26h ; '&'
call    sub_4EE7A4
mov     eax, 27h ; '''
call    sub_4EE7A4
call    sub_494C46
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000026h
call    sub_4D89E4
mov     eax, 2
call    sub_49E0D7
mov     byte ptr [ecx], 0

def_493F02:             ; jumptable 00493F02 default case
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_49404F
call    sub_49DBD1
call    sub_49DECF

loc_49404F:
pop     edx
pop     ecx
pop     ebx
retn
sub_493EEE endp




sub_494053 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0EBh
jnz     short loc_4940C6
or      ds:byte_5F8364, 2
mov     ds:byte_5F88AC, 80h
mov     word ptr ds:dword_5F889A+2, 0FE3Eh
xor     ebx, ebx
mov     word ptr ds:dword_5F889E, bx
mov     word ptr ds:dword_5F889E+2, 64h ; 'd'
mov     ds:dword_5F888C, 0FE3E0000h
xor     esi, esi
mov     ds:dword_5F8890, esi
mov     ds:dword_5F8894, offset unk_640000
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 0C00h
xor     ebx, ebx
mov     ds:word_5F88A8, bx

loc_4940C6:
add     word ptr [ecx+538h], 3
mov     edx, [ecx+536h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+528h], edx
cmp     dword ptr [eax+10h], 0EBh
jle     short loc_4940FE
test    byte ptr [eax+10h], 0Fh
jnz     short loc_4940FE
mov     edx, (offset dword_5F889A+2)
mov     eax, 90h
call    sub_4D8BC3

loc_4940FE:
mov     eax, ecx
call    sub_494BB8
jmp     loc_493E8B
sub_494053 endp




sub_49410A proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 3Ch ; '<'
jb      short loc_49412B
jbe     short loc_494157
cmp     eax, 46h ; 'F'
jb      short loc_494168
jbe     short loc_494150
cmp     eax, 5Ah ; 'Z'
jz      short loc_49415E
jmp     short loc_494168

loc_49412B:
test    eax, eax
jbe     short loc_494136
cmp     eax, 14h
jz      short loc_494150
jmp     short loc_494168

loc_494136:
mov     word ptr ds:dword_5F889A+2, 0FCAEh
mov     ds:dword_5F888C, 0FCAE0000h
mov     eax, 1
jmp     short loc_494163

loc_494150:
mov     eax, 2
jmp     short loc_494163

loc_494157:
mov     eax, 3
jmp     short loc_494163

loc_49415E:
mov     eax, 4

loc_494163:
call    sub_494B70

loc_494168:
add     word ptr [ecx+538h], 4
mov     eax, [ecx+536h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+528h], eax
test    byte ptr [edx+10h], 0Fh
jnz     loc_49427D
mov     edx, (offset dword_5F889A+2)
mov     eax, 90h
call    sub_4D8BC3
jmp     loc_49427D

loc_4941A0:
push    ecx
push    edx
mov     ecx, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 0Ah
jb      short loc_4941D4
jbe     loc_49421F
cmp     eax, 3Ah ; ':'
jb      short loc_4941CA
jbe     short loc_494207
cmp     eax, 6Eh ; 'n'
jz      loc_49422D
jmp     loc_49427D

loc_4941CA:
cmp     eax, 28h ; '('
jz      short loc_494226
jmp     loc_49427D

loc_4941D4:
cmp     eax, 2
jb      short loc_4941E5
jbe     short loc_49420E
cmp     eax, 8
jz      short loc_49420E
jmp     loc_49427D

loc_4941E5:
test    eax, eax
jnz     loc_49427D
mov     word ptr ds:dword_5F889A+2, 0FF38h
mov     ds:dword_5F888C, 0FF380000h
mov     ds:byte_5F88AC, 81h

loc_494207:
mov     eax, 5
jmp     short loc_494239

loc_49420E:
mov     edx, (offset dword_5F889A+2)
mov     eax, 90h
call    sub_4D8BC3
jmp     short loc_49427D

loc_49421F:
mov     eax, 6
jmp     short loc_494239

loc_494226:
mov     eax, 7
jmp     short loc_494239

loc_49422D:
mov     ds:byte_5F88AC, 82h
mov     eax, 8

loc_494239:
call    sub_494B70
jmp     short loc_49427D

loc_494240:
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     eax, [eax+10h]
test    eax, eax
jbe     short loc_494257
cmp     eax, 3Ah ; ':'
jz      short loc_494287
jmp     short loc_49427D

loc_494257:
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 1
mov     eax, [edx+2Ch]
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
mov     byte ptr [eax+9], 1
mov     eax, [edx+30h]
mov     byte ptr [eax+0Ah], 0
mov     eax, 9

loc_494278:
call    sub_494B70

loc_49427D:
mov     eax, ecx
call    sub_494BB8
pop     edx
pop     ecx

locret_494286:
retn

loc_494287:
mov     eax, offset unk_527778
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Ah], 0
jmp     short loc_49427D
sub_49410A endp




sub_4942A1 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4942C9
mov     word ptr ds:dword_5F889E, 0FFFBh
mov     ds:dword_5F8890, 0FFFB0000h
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 2
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_4942C9:
pop     edx
retn
sub_4942A1 endp




sub_4942CB proc near
push    edx
mov     edx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     short loc_4942E8
mov     ds:byte_5F88AC, 83h
mov     eax, 0Ah

loc_4942E3:
call    sub_494B70

loc_4942E8:
mov     eax, edx
call    sub_494BB8
pop     edx
retn
sub_4942CB endp




sub_4942F1 proc near
push    ecx
push    edx
mov     ecx, offset byte_5F8364
mov     edx, [eax+10h]
cmp     edx, 0Ah
jb      short loc_49430C
jbe     short loc_49432C
cmp     edx, 14h
jz      short loc_49433D
jmp     loc_49427D

loc_49430C:
test    edx, edx
jnz     loc_49427D
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 3
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0
mov     eax, 0Ah
jmp     loc_494278

loc_49432C:
mov     ds:byte_5F88AC, 84h
mov     eax, 0Bh
jmp     loc_494278

loc_49433D:
mov     eax, 0Ch
jmp     loc_494278
sub_4942F1 endp




sub_494347 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49436F
mov     word ptr ds:dword_5F889A+2, 0FED4h
mov     ds:dword_5F888C, 0FED40000h
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 4
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_49436F:
pop     edx
retn
sub_494347 endp




sub_494371 proc near
push    edx
mov     edx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     loc_4942E8
mov     word ptr ds:dword_5F889A+2, 0FF4Ch
mov     ds:dword_5F888C, 0FF4C0000h
mov     eax, 0Eh
jmp     loc_4942E3
sub_494371 endp




sub_49439E proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 0Ah
jb      short loc_4943BB
jbe     short loc_4943FB
cmp     eax, 5Ch ; '\'
jz      short loc_494405
jmp     loc_49427D

loc_4943BB:
cmp     eax, 5
jnz     loc_49427D
mov     word ptr ds:dword_5F889E, 0FFF9h
mov     ds:dword_5F8890, 0FFF90000h
mov     ds:byte_5F88AC, 85h
mov     eax, 0Fh
call    sub_494B70
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 5
mov     eax, [edx+24h]
mov     byte ptr [eax+0Ah], 0
jmp     loc_49427D

loc_4943FB:
mov     eax, 10h
jmp     loc_494278

loc_494405:
mov     eax, 11h
jmp     loc_494278
sub_49439E endp




sub_49440F proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_494437
mov     word ptr ds:dword_5F889A+2, 0FED4h
mov     ds:dword_5F888C, 0FED40000h
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 6
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_494437:
pop     edx
retn
sub_49440F endp




sub_494439 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     short loc_49447A
mov     word ptr ds:dword_5F889A+2, 0FF4Ch
mov     ds:dword_5F888C, 0FF4C0000h
mov     ds:byte_5F88AC, 86h
mov     eax, 11h
call    sub_494B70
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 7
mov     eax, [edx+24h]
mov     byte ptr [eax+0Ah], 0

loc_49447A:
cmp     dword ptr [edx+10h], 14h
jnz     loc_49427D
mov     eax, 12h
jmp     loc_494278
sub_494439 endp




sub_49448E proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4944B6
mov     word ptr ds:dword_5F889A+2, 0FED4h
mov     ds:dword_5F888C, 0FED40000h
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 8
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_4944B6:
pop     edx
retn
sub_49448E endp




sub_4944B8 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4944F3
mov     word ptr ds:dword_5F889E+2, 12Ch
mov     ds:dword_5F8894, 12C0000h
mov     ds:byte_5F88AC, 84h
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 9
mov     eax, [edx+24h]
mov     byte ptr [eax+0Ah], 0
mov     eax, offset unk_52778C
call    sub_49DB4D

loc_4944F3:
cmp     dword ptr [edx+10h], 262h
jnz     short loc_494504
mov     eax, [edx+28h]
call    sub_4DE336

loc_494504:
pop     edx
retn
sub_4944B8 endp




sub_494506 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     loc_49427D
mov     word ptr ds:dword_5F889A+2, 0FF10h
mov     word ptr ds:dword_5F889E+2, 64h ; 'd'
mov     ds:dword_5F888C, 0FF100000h
mov     ds:dword_5F8894, offset unk_640000
xor     eax, eax
call    sub_494B70
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 0Ah
mov     edx, [edx+24h]
mov     byte ptr [edx+0Ah], 0
jmp     loc_49427D
sub_494506 endp




sub_494559 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49456E
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0Bh
mov     edx, [eax+24h]
mov     byte ptr [edx+0Ah], 0

loc_49456E:
cmp     dword ptr [eax+10h], 82h
jnz     short loc_494585
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0Ch
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_494585:
pop     edx
retn
sub_494559 endp




sub_494587 proc near
push    edx
mov     edx, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 18h
jb      short loc_4945AC
jbe     short loc_4945C5
cmp     eax, 4Ah ; 'J'
jb      loc_4942E8
jbe     short loc_4945CF
cmp     eax, 64h ; 'd'
jz      short loc_4945CF
jmp     loc_4942E8

loc_4945AC:
test    eax, eax
jnz     loc_4942E8
mov     ds:byte_5F88AC, 87h
mov     eax, 14h
jmp     loc_4942E3

loc_4945C5:
mov     eax, 19h
jmp     loc_4942E3

loc_4945CF:
mov     eax, 15h
jmp     loc_4942E3
sub_494587 endp




sub_4945D9 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4945EE
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0Dh
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_4945EE:
pop     edx
retn
sub_4945D9 endp




sub_4945F0 proc near
push    edx
mov     edx, eax
mov     eax, [eax+10h]
cmp     eax, 0Ah
jb      short loc_49460B
jbe     short loc_494631
cmp     eax, 3Ch ; '<'
jz      loc_49468F
jmp     loc_494692

loc_49460B:
test    eax, eax
jnz     loc_494692
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 2
mov     eax, [edx+2Ch]
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
mov     byte ptr [eax+9], 2
mov     eax, [edx+30h]
mov     byte ptr [eax+0Ah], 0
jmp     short loc_494692

loc_494631:
call    sub_4DE13B
test    eax, eax
jz      short loc_49465F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+0Ch], 5
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 2
mov     word ptr [eax+1Ch], 1C2h
mov     word ptr [eax+1Eh], 0FD92h
mov     word ptr [eax+20h], 1Dh

loc_49465F:
call    sub_4DE13B
test    eax, eax
jz      short loc_494692
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+0Ch], 5
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 2
mov     word ptr [eax+1Ch], 1C2h
mov     word ptr [eax+1Eh], 0FD92h
mov     word ptr [eax+20h], 0FFE0h
jmp     short loc_494692

loc_49468F:
inc     byte ptr [edx+6]

loc_494692:
cmp     byte ptr [edx+6], 0
jz      short loc_4946F3
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_5280E2[eax*2]
sar     eax, 10h
shl     eax, 10h
jmp     short loc_4946EE

loc_4946B6:
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4946D2
mov     edx, [eax+2Ch]
and     byte ptr [edx], 0FDh
mov     eax, [eax+30h]
and     byte ptr [eax], 0FDh
xor     edx, edx
xor     eax, eax
call    sub_494AFB

loc_4946D2:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_5280E2[eax*2]
sar     eax, 10h
shl     eax, 11h

loc_4946EE:
mov     ds:dword_77E698, eax

loc_4946F3:
pop     edx
retn
sub_4945F0 endp




sub_4946F5 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     ecx, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 0Ah
jb      short loc_494710
jbe     short loc_494733
cmp     eax, 32h ; '2'
jz      short loc_49473F
jmp     short loc_494746

loc_494710:
test    eax, eax
jnz     short loc_494746
mov     ds:byte_5F88AC, 89h
mov     eax, 16h
call    sub_494B70
mov     edx, 1
mov     eax, edx
call    sub_494AFB
jmp     short loc_494746

loc_494733:
mov     eax, 17h
call    sub_494B70
jmp     short loc_494746

loc_49473F:
mov     ds:byte_5F88AC, 88h

loc_494746:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_5280E2[eax*2]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E698, eax
cmp     dword ptr [ebx+10h], 32h ; '2'
jle     short loc_494787
add     word ptr [ecx+53Ch], 3
mov     eax, [ecx+536h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+530h], eax

loc_494787:
mov     eax, ecx
call    sub_494BB8
pop     edx
pop     ecx
pop     ebx
retn
sub_4946F5 endp




sub_494792 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4947C1
mov     edx, [eax+2Ch]
or      byte ptr [edx], 2
mov     edx, [eax+30h]
or      byte ptr [edx], 2
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 1
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ah], 0

loc_4947C1:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     loc_4946D2
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 3
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Ah], 0
jmp     loc_4946D2
sub_494792 endp




sub_4947DE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 50h ; 'P'
jb      short loc_4947FA
jbe     short loc_49483C
cmp     eax, 55h ; 'U'
jz      short loc_494845
jmp     short loc_49484F

loc_4947FA:
test    eax, eax
jnz     short loc_49484F
mov     eax, [ecx+2Ch]
call    sub_4DE2F6
mov     eax, [ecx+30h]
call    sub_4DE2F6
mov     word ptr ds:dword_5F889E+2, 0F2FEh
mov     eax, ds:dword_5F889A
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8894, eax
mov     ds:byte_5F88AC, 1
xor     edx, edx
mov     eax, 2
call    sub_494AFB
jmp     short loc_49484F

loc_49483C:
mov     ds:byte_5F88AC, 30h ; '0'
jmp     short loc_49484F

loc_494845:
mov     eax, 0Eh
call    sub_49E0D7

loc_49484F:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_5280E2[eax*2]
sar     eax, 10h
shl     eax, 11h
mov     ds:dword_77E698, eax
cmp     dword ptr [ecx+10h], 50h ; 'P'
jle     short loc_49488D
call    rand_
test    al, 7
jnz     short loc_49488D
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A1h
call    sub_4D89E4

loc_49488D:
cmp     dword ptr [ecx+10h], 64h ; 'd'
jge     short loc_4948AD
add     word ptr [esi+53Ch], 18h
mov     eax, [esi+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [esi+530h], eax

loc_4948AD:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4947DE endp

jpt_4948DA dd offset loc_4948E1 ; jump table for switch statement
dd offset loc_494919
dd offset loc_494935
dd offset loc_4949D7
dd offset loc_4949F1

loc_4948C6:
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_4948DA      ; jumptable 004948DA default case
and     eax, 0FFh
jmp     jpt_4948DA[eax*4] ; switch jump

loc_4948E1:             ; jumptable 004948DA case 0
cmp     ds:word_6E23D6, 0
jnz     def_4948DA      ; jumptable 004948DA default case
call    sub_4D8EB1
mov     edx, 80h
mov     eax, 5Eh ; '^'
call    sub_4DC979
mov     byte ptr [ecx+0Ah], 80h
mov     eax, 90h
call    sub_42BEB2

loc_494911:
