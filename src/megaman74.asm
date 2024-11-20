call    sub_4874BB
mov     eax, 6Fh ; 'o'
call    sub_47E8B8
mov     byte ptr [edx+4], 0FFh
sub_4B8260 endp

; START OF FUNCTION CHUNK FOR sub_4B8544
;   ADDITIONAL PARENT FUNCTION sub_4B8260

loc_4B82B5:
pop     edx
retn
; END OF FUNCTION CHUNK FOR sub_4B8544



sub_4B82B7 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 0Ah
jb      short loc_4B82E3
jbe     loc_4B8470
cmp     al, 0FEh
jb      loc_4B8520
jbe     loc_4B8388
cmp     al, 0FFh
jz      loc_4B8516
jmp     loc_4B8520

loc_4B82E3:
test    al, al
jnz     loc_4B8520
mov     eax, 200h
call    sub_47E888
test    eax, eax
jnz     loc_4B8520
mov     eax, 204h
call    sub_47E888
test    eax, eax
jz      loc_4B838D
mov     eax, 206h
call    sub_47E888
test    eax, eax
jnz     short loc_4B838D
mov     eax, offset unk_53748C
call    sub_49DBA5
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
xor     ecx, ecx
mov     cx, ax
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_5374A0
call    sub_49DBA5
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 30h
xor     ecx, ecx
mov     cx, ax
sar     ecx, 4
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_5374F0
call    sub_49DBA5
mov     eax, 16h
call    sub_4873C4
mov     eax, 7E0h
call    sub_47E8B8

loc_4B8384:
mov     byte ptr [edx+4], 0FEh

loc_4B8388:
mov     al, 1
pop     edx
pop     ecx
retn

loc_4B838D:
mov     eax, 212h
call    sub_47E888
test    eax, eax
jz      short loc_4B83E9
mov     eax, 213h
call    sub_47E888
test    eax, eax
jnz     short loc_4B83E9
mov     eax, offset unk_5396DA
call    sub_49DBA5
mov     ecx, eax
mov     eax, offset unk_5396EE
call    sub_49DBA5
mov     [ecx+0C8h], eax
mov     eax, 17h
call    sub_4873C4
mov     eax, 235h
call    sub_47E8B8
mov     eax, 7E0h
call    sub_47E8B8
mov     byte ptr [edx+4], 0Ah
jmp     short loc_4B8388

loc_4B83E9:
mov     eax, 209h
call    sub_47E888
test    eax, eax
jz      short loc_4B8430
mov     eax, 211h
call    sub_47E888
test    eax, eax
jnz     short loc_4B8430
mov     eax, offset unk_531A50
call    sub_49DBA5
mov     eax, 20Dh
call    sub_47E888
test    eax, eax
jz      short loc_4B8427
mov     eax, offset unk_531A64
call    sub_49DBA5

loc_4B8427:
mov     byte ptr [edx+4], 0FFh
jmp     loc_4B8520

loc_4B8430:
mov     eax, 246h
call    sub_47E888
test    eax, eax
jz      loc_4B8520
mov     eax, 200h
call    sub_47E888
test    eax, eax
jnz     loc_4B8520
cmp     byte ptr ds:dword_77E7D5+1, 0Bh
jge     loc_4B8520
mov     eax, 58h ; 'X'
call    sub_47EB4B
jmp     loc_4B8388

loc_4B8470:
mov     eax, 679h
call    sub_47E888
test    eax, eax
jz      short loc_4B84F5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4B8388
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4B84E6
mov     eax, 7E0h
call    sub_47EA91
mov     eax, 235h
call    sub_47EA91
mov     eax, 24Ah
call    sub_47E8B8
mov     eax, 213h
call    sub_47E8B8
mov     eax, 214h
call    sub_47E8B8
mov     eax, 2E4h
call    sub_47EE82
mov     eax, 6
call    sub_47EEAE
mov     byte ptr ds:word_77E7FC, 1
jmp     loc_4B8384

loc_4B84E6:
mov     eax, 679h
call    sub_47EA91
jmp     loc_4B8388

loc_4B84F5:
mov     eax, 213h
call    sub_47E888
test    eax, eax
jz      loc_4B8388
mov     eax, 52h ; 'R'
call    sub_47EB4B
jmp     loc_4B8384

loc_4B8516:
mov     eax, 1FFh
call    sub_47E8B8

loc_4B8520:
mov     byte ptr [edx+4], 0
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
pop     edx
pop     ecx
retn
sub_4B82B7 endp




sub_4B8533 proc near
mov     byte ptr [eax+4], 0
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4B8533 endp




sub_4B8544 proc near

; FUNCTION CHUNK AT 004B82B5 SIZE 00000002 BYTES

push    edx
xor     dl, dl
jmp     short loc_4B8554

loc_4B8549:
inc     dl
cmp     dl, 2
jge     loc_4B82B5

loc_4B8554:
call    sub_4DDF54
test    eax, eax
jz      short loc_4B8549
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 32h ; '2'
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     [eax+0Ch], dl
jmp     short loc_4B8549
sub_4B8544 endp




sub_4B8571 proc near
mov     eax, 200h
call    sub_47E888
test    eax, eax
jz      short loc_4B8592
call    sub_4DE227
test    eax, eax
jz      short loc_4B858F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 32h ; '2'

loc_4B858F:
mov     al, 1
retn

loc_4B8592:
xor     al, al
retn
sub_4B8571 endp




sub_4B8595 proc near
push    edx
push    esi
push    edi
sub     esp, 8
mov     edi, esp
mov     esi, offset byte_4B7A8B
movsd
movsd
mov     eax, esp
call    sub_42C443
mov     edx, 80100000h
call    sub_4A7AE1
add     esp, 8
pop     edi
pop     esi
pop     edx
retn
sub_4B8595 endp




sub_4B85BC proc near
push    edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_531CAC
mov     eax, offset unk_531CA4
call    sub_47EF23
cmp     byte ptr ds:dword_77E7D5+1, 0
jnz     short loc_4B8619
mov     eax, 1
call    sub_47E888
test    eax, eax
jz      short loc_4B85FC
mov     edx, offset unk_531D14
jmp     short loc_4B860F

loc_4B85FC:
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4B8619
mov     edx, offset unk_531D0C

loc_4B860F:
mov     eax, offset unk_531CA4
call    sub_47EF23

loc_4B8619:
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4B85BC endp




sub_4B8623 proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4B8647
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4B8640[edx*4]

loc_4B8647:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4B8679
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_531C10[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4B8679:
pop     edx
retn
sub_4B8623 endp




sub_4B867B proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B8691
jbe     short loc_4B86E6
cmp     al, 2
jbe     loc_4B8722
pop     edx
retn

loc_4B8691:
test    al, al
jnz     loc_4B8746
mov     eax, 47h ; 'G'
call    sub_47E888
test    eax, eax
jz      short loc_4B86B7
mov     eax, 1
call    sub_487AE6

loc_4B86B1:
mov     byte ptr [edx+4], 0FFh
pop     edx
retn

loc_4B86B7:
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4B86DB
mov     eax, 62h ; 'b'
call    sub_47EB4B
mov     eax, 47h ; 'G'
call    sub_47E8B8
jmp     short loc_4B86B1

loc_4B86DB:
call    sub_487AE6
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4B86E6:
mov     eax, ds:dword_55A518
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+4], 3
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
mov     eax, ds:dword_55A51C
mov     byte ptr [eax+4], 3
mov     byte ptr [eax+3], 0
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
mov     byte ptr [edx+4], 2
pop     edx
retn

loc_4B8722:
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      short loc_4B8746
mov     eax, 0Dh
call    sub_47EB4B
xor     ah, ah
mov     byte ptr ds:dword_560BE0, ah
mov     byte ptr [edx+4], 3

loc_4B8746:
pop     edx
retn
sub_4B867B endp




sub_4B8748 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8792
mov     eax, 2Ch ; ','
call    sub_47E888
test    eax, eax
jnz     short loc_4B878E
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4B877A
mov     eax, offset unk_51EF94
call    sub_4B8C15
jmp     short loc_4B878E

loc_4B877A:
mov     eax, 2
call    sub_47E8B8
mov     eax, 0Bh
call    sub_47EB4B

loc_4B878E:
mov     byte ptr [edx+4], 0FFh

loc_4B8792:
pop     edx
retn
sub_4B8748 endp




sub_4B8794 proc near

; FUNCTION CHUNK AT 004B887E SIZE 00000004 BYTES

push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B87B2
jbe     loc_4B881B
cmp     al, 2
jbe     loc_4B8870
pop     edx
pop     ecx
pop     ebx
retn

loc_4B87B2:
test    al, al
jnz     loc_4B887E
mov     eax, 641h
call    sub_47E888
test    eax, eax
jz      short loc_4B87D0

loc_4B87C8:
mov     byte ptr [ecx+4], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4B87D0:
xor     ebx, ebx
mov     edx, 1
mov     eax, 5
call    sub_47EEF1
xor     ebx, ebx
mov     edx, 1
xor     eax, eax
call    sub_47EEF1
mov     eax, 620h
call    sub_47E8B8
mov     eax, 0Fh
call    sub_47EB4B
call    sub_4DE1BE
test    eax, eax
jz      short loc_4B8813
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8

loc_4B8813:
mov     byte ptr [ecx+4], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4B881B:
mov     eax, 621h
call    sub_47E888
test    eax, eax
jz      short loc_4B8837
mov     eax, 10h
call    sub_47EB4B
pop     edx
pop     ecx
pop     ebx
retn

loc_4B8837:
mov     eax, 640h
call    sub_47E888
test    eax, eax
jz      short loc_4B887E
mov     eax, 630h
call    sub_47E888
test    eax, eax
jnz     loc_4B87C8
mov     eax, 641h
call    sub_47E8B8
mov     eax, 11h
call    sub_47EB4B
jmp     loc_4B87C8

loc_4B8870:
mov     eax, 13h
call    sub_47EB4B
mov     byte ptr [ecx+4], 0FFh
sub_4B8794 endp

; START OF FUNCTION CHUNK FOR sub_4B8C15
;   ADDITIONAL PARENT FUNCTION sub_4B8794

loc_4B887E:
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4B8C15



sub_4B8882 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B88B2
mov     eax, 630h
call    sub_47E888
test    eax, eax
jnz     short loc_4B88AE
mov     eax, 630h
call    sub_47E8B8
mov     eax, 12h
call    sub_47EB4B

loc_4B88AE:
mov     byte ptr [edx+4], 0FFh

loc_4B88B2:
pop     edx
retn
sub_4B8882 endp




sub_4B88B4 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B88EC
mov     eax, 2
call    sub_487AE6
mov     byte ptr [edx+4], 0FFh
mov     eax, offset unk_531C68
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jnz     short loc_4B88E2
mov     eax, 3
jmp     short loc_4B88E7

loc_4B88E2:
mov     eax, 2

loc_4B88E7:
call    sub_487B61

loc_4B88EC:
pop     edx
retn
sub_4B88B4 endp




sub_4B88EE proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8959
mov     eax, 13h
call    sub_47E888
test    eax, eax
jz      short loc_4B8912
mov     eax, offset unk_51EF94

loc_4B890B:
call    sub_4B8C15
jmp     short loc_4B8955

loc_4B8912:
mov     eax, 10h
call    sub_47E888
test    eax, eax
jz      short loc_4B8936
mov     eax, 13h
call    sub_47E8B8
mov     eax, 1Ah
call    sub_47EB4B
jmp     short loc_4B8955

loc_4B8936:
mov     eax, 2Ch ; ','
call    sub_47E888
test    eax, eax
jz      short loc_4B894B
mov     eax, offset unk_521AB8
jmp     short loc_4B890B

loc_4B894B:
mov     eax, offset unk_51EF94
call    sub_4B8C15

loc_4B8955:
mov     byte ptr [edx+4], 0FFh

loc_4B8959:
pop     edx
retn
sub_4B88EE endp




sub_4B895B proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B89C6
mov     eax, 13h
call    sub_47E888
test    eax, eax
jz      short loc_4B897F
mov     eax, offset unk_51EF94

loc_4B8978:
call    sub_4B8C15
jmp     short loc_4B89C2

loc_4B897F:
mov     eax, 10h
call    sub_47E888
test    eax, eax
jz      short loc_4B89A3
mov     eax, 13h
call    sub_47E8B8
mov     eax, 1Ah
call    sub_47EB4B
jmp     short loc_4B89C2

loc_4B89A3:
mov     eax, 2Ch ; ','
call    sub_47E888
test    eax, eax
jz      short loc_4B89B8
mov     eax, offset unk_521AB8
jmp     short loc_4B8978

loc_4B89B8:
mov     eax, offset unk_51EF94
call    sub_4B8C15

loc_4B89C2:
mov     byte ptr [edx+4], 0FFh

loc_4B89C6:
pop     edx
retn
sub_4B895B endp




sub_4B89C8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8A19
mov     eax, 3
call    sub_487AE6
mov     eax, offset unk_531C68
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jnz     short loc_4B89F2
mov     eax, 3
jmp     short loc_4B89F7

loc_4B89F2:
mov     eax, 2

loc_4B89F7:
call    sub_487B61
mov     eax, offset unk_531C78
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jz      short loc_4B8A15
mov     eax, 5
call    sub_487B61

loc_4B8A15:
mov     byte ptr [edx+4], 0FFh

loc_4B8A19:
pop     edx
retn
sub_4B89C8 endp




sub_4B8A1B proc near
push    edx
mov     dl, [eax+4]
test    dl, dl
ja      short loc_4B8A27
mov     byte ptr [eax+4], 0FFh

loc_4B8A27:
pop     edx
retn
sub_4B8A1B endp




sub_4B8A29 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8A7A
mov     eax, 4
call    sub_487AE6
mov     eax, offset unk_531C68
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jnz     short loc_4B8A53
mov     eax, 5
jmp     short loc_4B8A58

loc_4B8A53:
mov     eax, 1

loc_4B8A58:
call    sub_487B61
mov     eax, offset unk_531C80
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jz      short loc_4B8A76
mov     eax, 3
call    sub_487B61

loc_4B8A76:
mov     byte ptr [edx+4], 0FFh

loc_4B8A7A:
pop     edx
retn
sub_4B8A29 endp




sub_4B8A7C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8ACD
mov     eax, 5
call    sub_487AE6
mov     eax, offset unk_531C68
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jnz     short loc_4B8AA6
mov     eax, 5
jmp     short loc_4B8AAB

loc_4B8AA6:
mov     eax, 1

loc_4B8AAB:
call    sub_487B61
mov     eax, offset unk_531C80
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jz      short loc_4B8AC9
mov     eax, 3
call    sub_487B61

loc_4B8AC9:
mov     byte ptr [edx+4], 0FFh

loc_4B8ACD:
pop     edx
retn
sub_4B8A7C endp




sub_4B8ACF proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8B20
mov     eax, 6
call    sub_487AE6
mov     eax, offset unk_531C68
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jnz     short loc_4B8AF9
mov     eax, 5
jmp     short loc_4B8AFE

loc_4B8AF9:
mov     eax, 1

loc_4B8AFE:
call    sub_487B61
mov     eax, offset unk_531C80
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jz      short loc_4B8B1C
mov     eax, 3
call    sub_487B61

loc_4B8B1C:
mov     byte ptr [edx+4], 0FFh

loc_4B8B20:
pop     edx
retn
sub_4B8ACF endp




sub_4B8B22 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8B73
mov     eax, 7
call    sub_487AE6
mov     eax, offset unk_531C68
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jnz     short loc_4B8B4C
mov     eax, 5
jmp     short loc_4B8B51

loc_4B8B4C:
mov     eax, 1

loc_4B8B51:
call    sub_487B61
mov     eax, offset unk_531C80
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jz      short loc_4B8B6F
mov     eax, 3
call    sub_487B61

loc_4B8B6F:
mov     byte ptr [edx+4], 0FFh

loc_4B8B73:
pop     edx
retn
sub_4B8B22 endp




sub_4B8B75 proc near
mov     al, [eax+4]
test    al, al
jnz     sub_4B8BF3
mov     eax, 236h
call    sub_47E888
test    eax, eax
jz      short loc_4B8BB6
mov     eax, 7E1h
call    sub_47E8B8
mov     eax, 7E3h
call    sub_47E8B8
mov     eax, 7E4h
call    sub_47E8B8
mov     eax, 7E5h
call    sub_47E8B8

loc_4B8BB6:
mov     eax, 245h
call    sub_47E888
test    eax, eax
jnz     short loc_4B8BE0
mov     eax, 243h
call    sub_47E888
test    eax, eax
jnz     short loc_4B8BE0
mov     eax, 244h
call    sub_47E888
test    eax, eax
jz      short sub_4B8BF3

loc_4B8BE0:
cmp     byte ptr ds:dword_77E7D5+1, 0Bh
jge     short sub_4B8BF3
mov     eax, 59h ; 'Y'
call    sub_47EB4B
sub_4B8B75 endp




sub_4B8BF3 proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4B8BF3 endp




sub_4B8C00 proc near
cmp     byte ptr ds:dword_77E7D5+1, 2
jl      short sub_4B8BF3
mov     eax, offset unk_531C88
call    sub_4B8C90
jmp     short sub_4B8BF3
sub_4B8C00 endp




sub_4B8C15 proc near

; FUNCTION CHUNK AT 004B887E SIZE 00000004 BYTES

push    ebx
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
jmp     short loc_4B8C2B

loc_4B8C1E:
add     edx, 14h
inc     ecx
cmp     ecx, 2
jge     loc_4B887E

loc_4B8C2B:
call    sub_4DDF54
test    eax, eax
jz      short loc_4B8C1E
mov     ds:dword_55CF04[ecx*4], eax
mov     byte ptr [eax], 1
mov     bl, [edx+1]
mov     [eax+2], bl
mov     bl, [edx+2]
mov     [eax+4], bl
mov     byte ptr [eax+3], 1
mov     ebx, [edx+0Ch]
mov     [eax+14h], ebx
mov     ebx, [edx+8]
mov     [eax+0Ch], ebx
mov     bx, [edx+10h]
mov     [eax+18h], bx
mov     bx, [edx+12h]
mov     [eax+56h], bx
mov     ebx, [edx+0Ah]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+1Ch], ebx
mov     ebx, [edx+0Ch]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+20h], ebx
mov     ebx, [edx+0Eh]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+24h], ebx
jmp     short loc_4B8C1E
sub_4B8C15 endp




sub_4B8C90 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_4DDF54
test    eax, eax
jz      short loc_4B8CF2
mov     byte ptr [eax], 1
mov     cl, [edx+1]
mov     [eax+2], cl
mov     cl, [edx+2]
mov     [eax+4], cl
mov     cl, [edx+4]
mov     [eax+3], cl
mov     ecx, [edx+0Ch]
mov     [eax+14h], ecx
mov     ecx, [edx+8]
mov     [eax+0Ch], ecx
mov     cx, [edx+10h]
mov     [eax+18h], cx
mov     cx, [edx+12h]
mov     [eax+56h], cx
mov     ecx, [edx+0Ah]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+1Ch], ecx
mov     ecx, [edx+0Ch]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
mov     edx, [edx+0Eh]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx

loc_4B8CF2:
pop     edx
pop     ecx
retn
sub_4B8C90 endp

mov     eax, ds:dword_55CF04
call    sub_4DE2F6
mov     eax, ds:dword_55CF08
jmp     sub_4DE2F6



sub_4B8D09 proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4B8D09 endp




sub_4B8D14 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_531D3C[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4B8D14 endp




sub_4B8D3C proc near
push    edx
mov     edx, eax
mov     eax, dword ptr ds:unk_77E803
sar     eax, 18h
test    al, 80h
jz      short loc_4B8D5F
mov     al, [edx+4]
test    al, al
ja      short loc_4B8D5F
mov     eax, 0Ah
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4B8D5F:
pop     edx
retn
sub_4B8D3C endp




sub_4B8D61 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8D88
cmp     byte ptr ds:dword_77E7D5+1, 6
jnz     short loc_4B8D7B
mov     eax, 24h ; '$'
jmp     short loc_4B8D80

loc_4B8D7B:
mov     eax, 16h

loc_4B8D80:
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4B8D88:
pop     edx
retn
sub_4B8D61 endp

word_4B8D8A dw 1900h
dd 3000000h
db 2 dup(0)



sub_4B8D92 proc near
push    ebx
push    edx
call    sub_47EBFB
mov     eax, 604h
call    sub_47EA91
mov     eax, 605h
call    sub_47EA91
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
shl     eax, 3
mov     edx, offset unk_532530
add     edx, eax
mov     eax, offset unk_532528
call    sub_47EF23
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B8DE5
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1

loc_4B8DE5:
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
pop     ebx
retn
sub_4B8D92 endp




sub_4B8DF0 proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4B8E14
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4B8E0D[edx*4]

loc_4B8E14:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4B8E46
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_5324D0[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4B8E46:
pop     edx
retn
sub_4B8DF0 endp




sub_4B8E48 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B8E5C
cmp     al, 1
jz      short loc_4B8E65
pop     edx
pop     ecx
pop     ebx
retn

loc_4B8E5C:
inc     al
mov     [ecx+4], al
pop     edx
pop     ecx
pop     ebx
retn

loc_4B8E65:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B8E81
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B8E93

loc_4B8E81:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B8E93:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B8E48 endp




sub_4B8E97 proc near
push    edx
mov     dl, [eax+4]
test    dl, dl
jnz     short loc_4B8EA3
mov     byte ptr [eax+4], 0FFh

loc_4B8EA3:
pop     edx
retn
sub_4B8E97 endp




sub_4B8EA5 proc near

arg_0= dword ptr  4

mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, al
mov     ds:byte_77EA5F, dl
mov     word ptr ds:dword_77EA4E+2, bx
mov     word ptr ds:dword_77EA52, cx
mov     eax, [esp+arg_0]
mov     word ptr ds:dword_77EA52+2, ax
xor     edx, edx
mov     word ptr ds:dword_77EA5A, dx
xor     dl, dl
mov     byte ptr ds:dword_77EA5A+3, dl
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 2
retn    4
sub_4B8EA5 endp




sub_4B8EF1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+4]
test    al, al
jbe     short loc_4B8F0C
cmp     al, 1
jz      short loc_4B8F1E
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B8F0C:
mov     eax, offset unk_532378
call    sub_47EC19
inc     byte ptr [edx+4]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B8F1E:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4B8FB5
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      short loc_4B8F4B
push    0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3

loc_4B8F44:
mov     eax, 8
jmp     short loc_4B8F9C

loc_4B8F4B:
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      short loc_4B8F66
push    0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 4
jmp     short loc_4B8F44

loc_4B8F66:
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      short loc_4B8FA1
xor     dl, dl
mov     byte ptr ds:word_77E7FC, dl
mov     eax, 200h
call    sub_47E8B8
push    239Fh
mov     ecx, 0FFFFFFFFh
mov     ebx, 426h
xor     edx, edx
mov     eax, 5

loc_4B8F9C:
call    sub_4B8EA5

loc_4B8FA1:
mov     eax, 604h
call    sub_47EA91
mov     eax, 605h
call    sub_47EA91

loc_4B8FB5:
test    byte ptr [esi+16Bh], 2
jz      short loc_4B8FCD
mov     eax, 607h
call    sub_47E8B8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B8FCD:
mov     eax, 607h
call    sub_47EA91
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B8EF1 endp




sub_4B8FDC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset unk_531D7C

loc_4B8FE6:
mov     bx, [edx]
cmp     bx, 0FFFFh
jz      short loc_4B9010
xor     eax, eax
mov     ax, bx
call    sub_47E888
test    eax, eax
jz      short loc_4B900B
xor     eax, eax
mov     al, [edx+2]
call    sub_47EB4B
pop     edx
pop     ecx
pop     ebx
retn

loc_4B900B:
add     edx, 4
jmp     short loc_4B8FE6

loc_4B9010:
mov     al, [ecx+4]
test    al, al
jnz     short loc_4B9025
mov     eax, 51h ; 'Q'
call    sub_47EB4B
mov     byte ptr [ecx+4], 0FFh

loc_4B9025:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B8FDC endp




sub_4B9029 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset unk_531D7C

loc_4B9033:
mov     bx, [edx]
cmp     bx, 0FFFFh
jz      short loc_4B905D
xor     eax, eax
mov     ax, bx
call    sub_47E888
test    eax, eax
jz      short loc_4B9058
xor     eax, eax
mov     al, [edx+2]
call    sub_47EB4B
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9058:
add     edx, 4
jmp     short loc_4B9033

loc_4B905D:
mov     al, [ecx+4]
test    al, al
jnz     short loc_4B9078
call    sub_4DE227
test    eax, eax
jz      short loc_4B9074
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'

loc_4B9074:
mov     byte ptr [ecx+4], 0FFh

loc_4B9078:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B9029 endp




sub_4B907C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B9094
mov     eax, offset unk_532390
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B9094:
pop     edx
retn
sub_4B907C endp




sub_4B9096 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B90AA
cmp     al, 1
jz      short loc_4B90DD
pop     edx
pop     ecx
pop     ebx
retn

loc_4B90AA:
mov     eax, offset unk_532380
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B90D6
mov     eax, 2
call    sub_47EDA7
mov     eax, 3
call    sub_47EDA7

loc_4B90D6:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B90DD:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B90F9
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B910B

loc_4B90F9:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B910B:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B9096 endp




sub_4B910F proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B9127
mov     eax, offset unk_532370
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B9127:
pop     edx
retn
sub_4B910F endp




sub_4B9129 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B913D
cmp     al, 1
jz      short loc_4B9170
pop     edx
pop     ecx
pop     ebx
retn

loc_4B913D:
mov     eax, offset unk_532380
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9169
mov     eax, 2
call    sub_47EDA7
mov     eax, 3
call    sub_47EDA7

loc_4B9169:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9170:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B918C
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B919E

loc_4B918C:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B919E:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B9129 endp




sub_4B91A2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B91BA
mov     eax, offset unk_532370
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B91BA:
pop     edx
retn
sub_4B91A2 endp




sub_4B91BC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B91D0
cmp     al, 1
jz      short loc_4B9203
pop     edx
pop     ecx
pop     ebx
retn

loc_4B91D0:
mov     eax, offset unk_532380
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B91FC
mov     eax, 2
call    sub_47EDA7
mov     eax, 3
call    sub_47EDA7

loc_4B91FC:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9203:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B921F
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9231

loc_4B921F:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B9231:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B91BC endp




sub_4B9235 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B924D
mov     eax, offset unk_532370
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B924D:
pop     edx
retn
sub_4B9235 endp




sub_4B924F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B9263
cmp     al, 1
jz      short loc_4B9296
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9263:
mov     eax, offset unk_532380
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B928F
mov     eax, 2
call    sub_47EDA7
mov     eax, 3
call    sub_47EDA7

loc_4B928F:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9296:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B92B2
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B92C4

loc_4B92B2:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B92C4:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B924F endp




sub_4B92C8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B92E0
mov     eax, offset unk_532370
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B92E0:
pop     edx
retn
sub_4B92C8 endp




sub_4B92E2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B92F6
cmp     al, 1
jz      short loc_4B9329
pop     edx
pop     ecx
pop     ebx
retn

loc_4B92F6:
mov     eax, offset unk_532388
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9322
mov     eax, 5
call    sub_47EDA7
mov     eax, 6
call    sub_47EDA7

loc_4B9322:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9329:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B9345
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9357

loc_4B9345:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B9357:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B92E2 endp




sub_4B935B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B936F
cmp     al, 1
jz      short loc_4B93A2
pop     edx
pop     ecx
pop     ebx
retn

loc_4B936F:
mov     eax, offset unk_532388
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B939B
mov     eax, 5
call    sub_47EDA7
mov     eax, 6
call    sub_47EDA7

loc_4B939B:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B93A2:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B93BE
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B93D0

loc_4B93BE:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B93D0:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B935B endp




sub_4B93D4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B93E8
cmp     al, 1
jz      short loc_4B941B
pop     edx
pop     ecx
pop     ebx
retn

loc_4B93E8:
mov     eax, offset unk_532398
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9414
mov     eax, 5
call    sub_47EDA7
mov     eax, 6
call    sub_47EDA7

loc_4B9414:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B941B:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B9437
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9449

loc_4B9437:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B9449:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B93D4 endp




sub_4B944D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B9461
cmp     al, 1
jz      short loc_4B9499
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9461:
call    sub_4B967D
mov     eax, offset unk_5323A0
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9492
mov     eax, 5
call    sub_47EDA7
mov     eax, 6
call    sub_47EDA7

loc_4B9492:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9499:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B94B5
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B94C7

loc_4B94B5:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B94C7:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B944D endp




sub_4B94CB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B94DF
cmp     al, 1
jz      short loc_4B9517
pop     edx
pop     ecx
pop     ebx
retn

loc_4B94DF:
call    sub_4B967D
mov     eax, offset unk_5323A8
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9510
mov     eax, 5
call    sub_47EDA7
mov     eax, 6
call    sub_47EDA7

loc_4B9510:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9517:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B9533
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9545

loc_4B9533:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B9545:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B94CB endp




sub_4B9549 proc near
mov     al, [eax+4]
test    al, al
jnz     short sub_4B9576
mov     eax, 22Eh
call    sub_47E888
test    eax, eax
jz      short sub_4B9576
mov     eax, 22Fh
call    sub_47E888
test    eax, eax
jnz     short sub_4B9576
mov     eax, 22Fh

loc_4B9571:
call    sub_47E8B8
sub_4B9549 endp




sub_4B9576 proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4B9576 endp




sub_4B9583 proc near
mov     al, [eax+4]
test    al, al
jnz     short sub_4B9576
cmp     byte ptr ds:dword_77E7D5+1, 8
jge     short loc_4B959D
mov     eax, 22Dh
call    sub_47EA91

loc_4B959D:
mov     eax, 22Dh
call    sub_47E888
test    eax, eax
jz      short loc_4B95C3
mov     eax, 22Eh
call    sub_47E888
test    eax, eax
jnz     short loc_4B95C3
mov     eax, 55h ; 'U'
call    sub_47EB4B

loc_4B95C3:
mov     eax, 22Eh
call    sub_47E888
test    eax, eax
jz      short loc_4B95E9
mov     eax, 22Fh
call    sub_47E888
test    eax, eax
jz      short loc_4B95E9
mov     eax, offset unk_532590
call    sub_49DBA5

loc_4B95E9:
mov     eax, 55h ; 'U'
call    sub_47E888
test    eax, eax
jz      short loc_4B960F
mov     eax, 233h
call    sub_47E888
test    eax, eax
jnz     short loc_4B960F
mov     eax, offset unk_5325A4
call    sub_49DBA5

loc_4B960F:
mov     eax, 7E6h
jmp     loc_4B9571
sub_4B9583 endp




sub_4B9619 proc near
mov     al, [eax+4]
test    al, al
jnz     sub_4B9576
mov     eax, 233h
call    sub_47E888
test    eax, eax
jz      sub_4B9576
mov     eax, 234h
call    sub_47E888
test    eax, eax
jnz     short loc_4B965A
mov     eax, offset unk_5325B8
call    sub_49DBA5
mov     eax, 0Bh
call    sub_47EEAE
jmp     short loc_4B9664

loc_4B965A:
mov     eax, offset unk_5325CC
call    sub_49DBA5

loc_4B9664:
mov     eax, offset unk_5325E0
call    sub_49DBA5
mov     eax, offset unk_5325F4
call    sub_49DBA5
jmp     sub_4B9576
sub_4B9619 endp




sub_4B967D proc near
push    edx
push    esi
push    edi
sub     esp, 8
mov     edi, esp
mov     esi, offset word_4B8D8A
movsd
movsd
mov     eax, esp
call    sub_42C443
mov     edx, 80100000h
call    sub_4A7AE1
add     esp, 8
pop     edi
pop     esi
pop     edx
retn
sub_4B967D endp




sub_4B96A4 proc near
push    edx
mov     eax, 16h
call    sub_47E8B8
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4B96A4 endp




sub_4B96B9 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_532650[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4B96B9 endp




sub_4B96E1 proc near
push    edx
mov     edx, eax
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4B96FB
xor     eax, eax
call    sub_47EB4B
pop     edx
retn

loc_4B96FB:
mov     al, [edx+4]
cmp     al, 1
jb      short loc_4B9706
jbe     short loc_4B9723
pop     edx
retn

loc_4B9706:
test    al, al
jnz     short loc_4B9747
mov     eax, 0Ch
call    sub_47E888
test    eax, eax
jnz     short loc_4B9743
call    sub_48B667
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4B9723:
mov     eax, 60Ch
call    sub_47E888
test    eax, eax
jz      short loc_4B9747
mov     eax, 17h
call    sub_47EB4B
xor     ah, ah
mov     byte ptr ds:dword_560BE0, ah

loc_4B9743:
mov     byte ptr [edx+4], 0FFh

loc_4B9747:
pop     edx

locret_4B9748:
retn
sub_4B96E1 endp




sub_4B9749 proc near
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short locret_4B9748
xor     eax, eax
jmp     sub_47EB4B
sub_4B9749 endp




sub_4B975E proc near
push    edx
call    sub_47EBFB
xor     edx, edx
mov     ds:dword_77E5EC, edx
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_532AA4
mov     eax, offset unk_532A9C
call    sub_47EF23
pop     edx
retn
sub_4B975E endp




sub_4B978A proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_5326BC[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx

locret_4B97B1:
retn
sub_4B978A endp

jpt_4B97D7 dd offset loc_4B97DE ; jump table for switch statement
dd offset loc_4B981E
dd offset loc_4B984C
dd offset loc_4B987A



sub_4B97C2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 3           ; switch 4 cases
ja      def_4B97D7      ; jumptable 004B97D7 default case
and     eax, 0FFh
jmp     jpt_4B97D7[eax*4] ; switch jump

loc_4B97DE:             ; jumptable 004B97D7 case 0
mov     eax, 26h ; '&'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9816
mov     eax, offset unk_532A6C
call    sub_47EC19
call    sub_4DE1BE
test    eax, eax
jz      short loc_4B980E
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Dh
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0

loc_4B980E:
mov     byte ptr [ecx+4], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9816:
mov     byte ptr [ecx+4], 0FFh
pop     edx
pop     ecx
pop     ebx
retn

loc_4B981E:             ; jumptable 004B97D7 case 1
mov     eax, 26h ; '&'
call    sub_47E888
test    eax, eax
jz      short def_4B97D7 ; jumptable 004B97D7 default case
mov     eax, 14h
call    sub_47EB4B
mov     ebx, 1
mov     edx, ebx
mov     eax, ebx
call    sub_47EEF1
mov     byte ptr [ecx+4], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4B984C:             ; jumptable 004B97D7 case 2
mov     eax, 10h
call    sub_47E888
test    eax, eax
jz      short def_4B97D7 ; jumptable 004B97D7 default case
mov     eax, 15h
call    sub_47EB4B
xor     ebx, ebx
xor     edx, edx
mov     eax, 1
call    sub_47EEF1
mov     byte ptr [ecx+4], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4B987A:             ; jumptable 004B97D7 case 3
call    sub_4DE1BE
test    eax, eax
jz      short loc_4B9816
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Dh
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 1
jmp     short loc_4B9816

def_4B97D7:             ; jumptable 004B97D7 default case
pop     edx
pop     ecx
pop     ebx

locret_4B9897:
retn
sub_4B97C2 endp




sub_4B9898 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B98B0
mov     eax, offset unk_532A7C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B98B0:
pop     edx
retn
sub_4B9898 endp




sub_4B98B2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B98CA
mov     eax, offset unk_532A84
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B98CA:
pop     edx
retn
sub_4B98B2 endp




sub_4B98CC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B98E4
mov     eax, offset unk_532A8C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B98E4:
pop     edx
retn
sub_4B98CC endp




sub_4B98E6 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B98FE
mov     eax, offset unk_532A94
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B98FE:
pop     edx
retn
sub_4B98E6 endp




sub_4B9900 proc near
push    edx
call    sub_47EBFB
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4B9900 endp




sub_4B9910 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_532B84[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4B9910 endp




sub_4B9938 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B994A
jbe     short loc_4B9968
cmp     al, 2
jbe     short loc_4B997D
pop     edx
retn

loc_4B994A:
test    al, al
jnz     short loc_4B9999
mov     eax, 1Ch
call    sub_47E888
test    eax, eax
jnz     short loc_4B9962
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4B9962:
mov     byte ptr [edx+4], 2
pop     edx
retn

loc_4B9968:
mov     eax, 1Bh
call    sub_47E888
test    eax, eax
jz      short loc_4B9999
mov     eax, 21h ; '!'
jmp     short loc_4B9990

loc_4B997D:
mov     eax, 1Fh
call    sub_47E888
test    eax, eax
jz      short loc_4B9999
mov     eax, 26h ; '&'

loc_4B9990:
call    sub_47EB4B
mov     byte ptr [edx+4], 0FFh

loc_4B9999:
pop     edx
retn
sub_4B9938 endp




sub_4B999B proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+5], 0
jnz     short loc_4B99C0
mov     eax, 1Dh
call    sub_47E888
test    eax, eax
jz      short loc_4B99C0
mov     eax, 23h ; '#'
call    sub_47EB4B
mov     byte ptr [edx+5], 0FFh

loc_4B99C0:
pop     edx
retn
sub_4B999B endp




sub_4B99C2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B99D0
jbe     short loc_4B9A25
pop     edx
retn

loc_4B99D0:
test    al, al
jnz     loc_4B9A41
mov     eax, 27h ; '''
call    sub_47E888
test    eax, eax
jz      short loc_4B9A07
mov     eax, 54h ; 'T'
call    sub_47E888
test    eax, eax
jz      short loc_4B99FB
mov     eax, offset unk_532C00
jmp     short loc_4B9A00

loc_4B99FB:
mov     eax, offset unk_532C08

loc_4B9A00:
call    sub_47EC19
jmp     short loc_4B9A3D

loc_4B9A07:
mov     eax, offset unk_532C00
call    sub_47EC19
mov     eax, 29h ; ')'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9A3D
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4B9A25:
mov     eax, 29h ; ')'
call    sub_47E888
test    eax, eax
jz      short loc_4B9A41
mov     eax, 27h ; '''
call    sub_47EB4B

loc_4B9A3D:
mov     byte ptr [edx+4], 0FFh

loc_4B9A41:
pop     edx
retn
sub_4B99C2 endp




sub_4B9A43 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9A5B
mov     eax, offset unk_532C00
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B9A5B:
pop     edx
retn
sub_4B9A43 endp




sub_4B9A5D proc near
push    edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_533018
mov     eax, offset unk_533010
call    sub_47EF23
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4B9A5D endp




sub_4B9A89 proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4B9AAD
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4B9AA6[edx*4]

loc_4B9AAD:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4B9ADF
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_532CC0[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4B9ADF:
pop     edx
retn
sub_4B9A89 endp




sub_4B9AE1 proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 8
mov     ecx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9B27
mov     eax, offset unk_532FE8
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
mov     [esp+14h+var_14], 0B00h
xor     ebx, ebx
mov     [esp+14h+var_12], bx
mov     [esp+14h+var_10], 900h
mov     eax, esp
call    sub_42C443
mov     edx, 0E0100h
call    sub_4A7AE1
mov     byte ptr [ecx+4], 0FFh

loc_4B9B27:
add     esp, 8
pop     edx
pop     ecx
pop     ebx
retn
sub_4B9AE1 endp




sub_4B9B2E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9B46
mov     eax, offset unk_532FB8
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B9B46:
pop     edx

locret_4B9B47:
retn
sub_4B9B2E endp




sub_4B9B48 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9B60
mov     eax, offset unk_532FB8
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B9B60:
pop     edx

locret_4B9B61:
retn
sub_4B9B48 endp




sub_4B9B62 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B9B72
jbe     short loc_4B9B94
pop     edx
pop     ecx
retn

loc_4B9B72:
test    al, al
jnz     short loc_4B9BBF
mov     eax, 30h ; '0'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9B8E
mov     eax, 1Eh
call    sub_47EB4B

loc_4B9B8E:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
retn

loc_4B9B94:
mov     eax, 30h ; '0'
call    sub_47E888
test    eax, eax
jz      short loc_4B9BBF
mov     eax, 19Dh
call    sub_4EE7A4
mov     edx, offset unk_533038
mov     eax, offset unk_533010
call    sub_47EF23
mov     byte ptr [ecx+4], 0FFh

loc_4B9BBF:
pop     edx
pop     ecx

locret_4B9BC1:
retn
sub_4B9B62 endp




sub_4B9BC2 proc near
mov     eax, 28h ; '('
call    sub_47E888
test    eax, eax
jz      short locret_4B9BC1
mov     eax, 18h
jmp     sub_47EB4B
sub_4B9BC2 endp




sub_4B9BDA proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9BFC
mov     eax, offset unk_532FC0
call    sub_47EC19
mov     eax, 19Dh
call    sub_4EE7A4
mov     byte ptr [edx+4], 0FFh

loc_4B9BFC:
pop     edx
retn
sub_4B9BDA endp




sub_4B9BFE proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9C20
mov     eax, offset unk_532FC0
call    sub_47EC19
mov     eax, 19Dh
call    sub_4EE7A4
mov     byte ptr [edx+4], 0FFh

loc_4B9C20:
pop     edx
retn
sub_4B9BFE endp




sub_4B9C22 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9C44
mov     eax, offset unk_532FC8
call    sub_47EC19
mov     eax, 19Dh
call    sub_4EE7A4
mov     byte ptr [edx+4], 0FFh

loc_4B9C44:
pop     edx
retn
sub_4B9C22 endp




sub_4B9C46 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9C68
mov     eax, offset unk_532FD0
call    sub_47EC19
mov     eax, 19Dh
call    sub_4EE7A4
mov     byte ptr [edx+4], 0FFh

loc_4B9C68:
pop     edx
retn
sub_4B9C46 endp




sub_4B9C6A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9C8C
mov     eax, offset unk_532FD8
call    sub_47EC19
mov     eax, 19Dh
call    sub_4EE7A4
mov     byte ptr [edx+4], 0FFh

loc_4B9C8C:
pop     edx
retn
sub_4B9C6A endp




sub_4B9C8E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9CB0
mov     eax, offset unk_532FE0
call    sub_47EC19
mov     eax, 19Dh
call    sub_4EE7A4
mov     byte ptr [edx+4], 0FFh

loc_4B9CB0:
pop     edx
retn
sub_4B9C8E endp




sub_4B9CB2 proc near
mov     al, byte ptr ds:dword_77E5EC
test    al, al
jnz     short sub_4B9CE1
mov     eax, 21Bh
call    sub_47E888
test    eax, eax
jz      short sub_4B9CE1
mov     eax, 22Ah
call    sub_47E888
test    eax, eax
jnz     short sub_4B9CE1
mov     eax, offset unk_537808
call    sub_49DBA5
sub_4B9CB2 endp




sub_4B9CE1 proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4B9CE1 endp

word_4B9CEE dw 100h
dd 0
db 2 dup(0)



sub_4B9CF6 proc near
push    edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_53354C
mov     eax, offset unk_533544
call    sub_47EF23
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4B9CF6 endp




sub_4B9D22 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_533168[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4B9D22 endp




sub_4B9D4A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9D68
mov     eax, offset unk_5334DC
call    sub_47EC19
xor     eax, eax
call    sub_4BA0BE
inc     byte ptr [edx+4]

loc_4B9D68:
pop     edx
retn
sub_4B9D4A endp




sub_4B9D6A proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
jnz     short loc_4B9DB1
mov     eax, offset unk_5334E4
call    sub_47EC19
mov     eax, 31h ; '1'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9D96
mov     eax, 7E1h
call    sub_47E8B8

loc_4B9D96:
mov     eax, 32h ; '2'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9DAE
mov     eax, 7E3h
call    sub_47E8B8

loc_4B9DAE:
inc     byte ptr [edx+5]

loc_4B9DB1:
pop     edx
retn
sub_4B9D6A endp




sub_4B9DB3 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9DD1
mov     eax, offset unk_5334DC
call    sub_47EC19
xor     eax, eax
call    sub_4BA0BE
inc     byte ptr [edx+4]

loc_4B9DD1:
pop     edx
retn
sub_4B9DB3 endp




sub_4B9DD3 proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
jnz     short loc_4B9E1A
mov     eax, offset unk_5334E4
call    sub_47EC19
mov     eax, 31h ; '1'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9DFF
mov     eax, 7E1h
call    sub_47E8B8

loc_4B9DFF:
mov     eax, 32h ; '2'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9E17
mov     eax, 7E3h
call    sub_47E8B8

loc_4B9E17:
inc     byte ptr [edx+5]

loc_4B9E1A:
pop     edx
retn
sub_4B9DD3 endp




sub_4B9E1C proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B9E2E
cmp     al, 1
jz      short loc_4B9E44
pop     edx
pop     ecx
retn

loc_4B9E2E:
mov     eax, offset unk_5334EC
call    sub_47EC19
mov     eax, 1
call    sub_4BA0BE
jmp     short loc_4B9E74

loc_4B9E44:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4B9E77
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      short loc_4B9E77
mov     eax, 606h
call    sub_47EA91
mov     edx, 4
mov     eax, 0Dh
call    sub_4BA1EF

loc_4B9E74:
inc     byte ptr [ecx+4]

loc_4B9E77:
pop     edx
pop     ecx
retn
sub_4B9E1C endp




sub_4B9E7A proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
ja      short loc_4B9EC1
mov     eax, offset unk_5334E4
call    sub_47EC19
mov     eax, 31h ; '1'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9EA6
mov     eax, 7E1h
call    sub_47E8B8

loc_4B9EA6:
mov     eax, 32h ; '2'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9EBE
mov     eax, 7E3h
call    sub_47E8B8

loc_4B9EBE:
inc     byte ptr [edx+5]

loc_4B9EC1:
pop     edx

locret_4B9EC2:
retn
sub_4B9E7A endp




sub_4B9EC3 proc near
mov     eax, 11h
call    sub_47E888
test    eax, eax
jnz     short locret_4B9EC2
mov     eax, 11h
call    sub_47E8B8
mov     eax, 20h ; ' '
call    sub_47EB4B
mov     eax, 2EAh
jmp     sub_47EE82
sub_4B9EC3 endp




sub_4B9EEF proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B9EFF
cmp     al, 1
jz      short loc_4B9F19
pop     edx
retn

loc_4B9EFF:
mov     eax, offset unk_5334F4
call    sub_47EC19
mov     eax, 2
call    sub_4BA0BE
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4B9F19:
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      short loc_4B9F35
mov     eax, 22h ; '"'
call    sub_47EB4B
mov     byte ptr [edx+4], 0FFh

loc_4B9F35:
pop     edx
retn
sub_4B9EEF endp




sub_4B9F37 proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
ja      short loc_4B9F7E
mov     eax, offset unk_5334FC
call    sub_47EC19
mov     eax, 31h ; '1'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9F63
mov     eax, 7E1h
call    sub_47E8B8

loc_4B9F63:
mov     eax, 32h ; '2'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9F7B
mov     eax, 7E3h
call    sub_47E8B8

loc_4B9F7B:
inc     byte ptr [edx+5]

loc_4B9F7E:
pop     edx
retn
sub_4B9F37 endp




sub_4B9F80 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9FA1
mov     eax, offset unk_533504
call    sub_47EC19
mov     eax, 3
call    sub_4BA0BE
inc     byte ptr [edx+4]

loc_4B9FA1:
pop     edx
retn
sub_4B9F80 endp




sub_4B9FA3 proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
ja      short loc_4B9FBA
mov     eax, offset unk_53350C
call    sub_47EC19
inc     byte ptr [edx+5]

loc_4B9FBA:
pop     edx
retn
sub_4B9FA3 endp




sub_4B9FBC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9FDD
mov     eax, offset unk_533504
call    sub_47EC19
mov     eax, 3
call    sub_4BA0BE
inc     byte ptr [edx+4]

loc_4B9FDD:
pop     edx
retn
sub_4B9FBC endp




sub_4B9FDF proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
ja      short loc_4B9FF6
mov     eax, offset unk_53350C
call    sub_47EC19
inc     byte ptr [edx+5]

loc_4B9FF6:
pop     edx
retn
sub_4B9FDF endp




sub_4B9FF8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BA019
mov     eax, offset unk_533514
call    sub_47EC19
mov     eax, 3
call    sub_4BA0BE
inc     byte ptr [edx+4]

loc_4BA019:
pop     edx
retn
sub_4B9FF8 endp




sub_4BA01B proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
ja      short loc_4BA032
mov     eax, offset unk_53351C
call    sub_47EC19
inc     byte ptr [edx+5]

loc_4BA032:
pop     edx
retn
sub_4BA01B endp




sub_4BA034 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BA055
mov     eax, offset unk_533524
call    sub_47EC19
mov     eax, 3
call    sub_4BA0BE
inc     byte ptr [edx+4]

loc_4BA055:
pop     edx
retn
sub_4BA034 endp




sub_4BA057 proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
ja      short loc_4BA06E
mov     eax, offset unk_53352C
call    sub_47EC19
inc     byte ptr [edx+5]

loc_4BA06E:
pop     edx
retn
sub_4BA057 endp




sub_4BA070 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BA091
mov     eax, offset unk_533534
call    sub_47EC19
mov     eax, 3
call    sub_4BA0BE
inc     byte ptr [edx+4]

loc_4BA091:
pop     edx
retn
sub_4BA070 endp




sub_4BA093 proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
ja      short loc_4BA0AA
mov     eax, offset unk_53353C
call    sub_47EC19
inc     byte ptr [edx+5]

loc_4BA0AA:
pop     edx
retn
sub_4BA093 endp

db 8Bh, 0C0h
jpt_4BA0DD dd offset def_4BA0DD ; jump table for switch statement
dd offset def_4BA0DD
dd offset loc_4BA0E4
dd offset loc_4BA16D



sub_4BA0BE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, 1100h
mov     edi, esp
mov     esi, offset word_4B9CEE
movsd
movsd
cmp     eax, 3          ; switch 4 cases
ja      def_4BA0DD      ; jumptable 004BA0DD default case, cases 0,1
jmp     jpt_4BA0DD[eax*4] ; switch jump

loc_4BA0E4:             ; jumptable 004BA0DD case 2
mov     ecx, 1200h
call    sub_4DE043
mov     edx, eax
mov     ebx, eax
test    eax, eax
jz      def_4BA0DD      ; jumptable 004BA0DD default case, cases 0,1
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 12h
mov     byte ptr [eax+3], 3
mov     word ptr [eax+14h], 700h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FB56h
mov     eax, [eax+12h]
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
mov     [edx+54h], ax
mov     byte ptr [edx+0Ch], 0
mov     eax, 12h
call    sub_47E888
test    eax, eax
jz      short loc_4BA161
mov     byte ptr [edx+0Dh], 0
jmp     short loc_4BA165

loc_4BA161:
mov     byte ptr [edx+0Dh], 1

loc_4BA165:
mov     word ptr [ebx+56h], 0
jmp     short def_4BA0DD ; jumptable 004BA0DD default case, cases 0,1

loc_4BA16D:             ; jumptable 004BA0DD case 3
mov     ecx, 1200h
call    sub_4DE043
test    eax, eax
jz      short def_4BA0DD ; jumptable 004BA0DD default case, cases 0,1
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 12h
mov     byte ptr [eax+3], 3
mov     word ptr [eax+14h], 700h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FB56h
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
mov     word ptr [eax+56h], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 2

def_4BA0DD:             ; jumptable 004BA0DD default case, cases 0,1
mov     eax, esp
call    sub_42C443
mov     edx, ecx
call    sub_4A7AE1
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BA0BE endp




sub_4BA1EF proc near
mov     ah, 2
mov     byte ptr ds:dword_77EA5A+2, ah
mov     ds:byte_77EA5E, al
mov     ds:byte_77EA5F, dl
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dl, dl
mov     byte ptr ds:dword_77EA5A+3, dl
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, ah
retn
sub_4BA1EF endp




sub_4BA236 proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BA236 endp




sub_4BA241 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_5335D0[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BA241 endp




sub_4BA269 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BA287
xor     eax, eax
call    sub_47EB4B
pop     edx
pop     ecx
pop     ebx
retn

loc_4BA287:
mov     al, [ecx+4]
cmp     al, 2
jb      short loc_4BA298
jbe     short loc_4BA2DC
cmp     al, 3
jbe     short loc_4BA2FA
pop     edx
pop     ecx
pop     ebx
retn

loc_4BA298:
test    al, al
ja      short loc_4BA2AD
xor     edx, edx
mov     ds:word_77E918, dx
mov     byte ptr [ecx+4], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4BA2AD:
mov     eax, 43h ; 'C'
call    sub_47E888
test    eax, eax
jz      short loc_4BA2C3

loc_4BA2BB:
mov     byte ptr [ecx+4], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4BA2C3:
xor     ebx, ebx
mov     edx, 1
mov     eax, 3
call    sub_47EEF1
mov     byte ptr [ecx+4], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4BA2DC:
mov     eax, 43h ; 'C'
call    sub_47E888
test    eax, eax
jz      short loc_4BA316
xor     ebx, ebx
xor     edx, edx
mov     eax, 3
call    sub_47EEF1
jmp     short loc_4BA2BB

loc_4BA2FA:
mov     eax, 1Eh
call    sub_47E888
test    eax, eax
jz      short loc_4BA316
mov     eax, 19h
call    sub_47EB4B
mov     byte ptr [ecx+4], 0FFh

loc_4BA316:
pop     edx
pop     ecx
pop     ebx

locret_4BA319:
retn
sub_4BA269 endp




sub_4BA31A proc near
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short locret_4BA319
xor     eax, eax
jmp     sub_47EB4B
sub_4BA31A endp




sub_4BA32F proc near
push    edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_5341EC
mov     eax, offset unk_5341E4
call    sub_47EF23
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BA32F endp




sub_4BA35B proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4BA37F
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4BA378[edx*4]

loc_4BA37F:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4BA3B1
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_5336D0[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4BA3B1:
pop     edx
retn
sub_4BA35B endp




sub_4BA3B3 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA3C1
cmp     al, 1
jnz     short loc_4BA3CF

loc_4BA3C1:
