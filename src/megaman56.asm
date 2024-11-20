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
