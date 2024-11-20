mov     edx, [ebx+9]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jz      short loc_47CE86
mov     ecx, [ebx+9]
sar     ecx, 18h
mov     eax, 1
shl     eax, cl
xor     ecx, ecx
mov     cx, word ptr ds:dword_77E8F8
test    ecx, eax
jnz     short loc_47CE86
mov     eax, ebx
call    ds:funcs_47CE46[edx*4]
test    eax, eax
jz      short loc_47CE86
mov     eax, [ebx+9]
sar     eax, 18h
mov     eax, ds:dword_51938C[eax*4]
call    sub_47E888
test    eax, eax
jnz     short loc_47CE86
mov     ecx, [ebx+9]
sar     ecx, 18h
mov     eax, 1
shl     eax, cl
test    al, 3
jz      short loc_47CE7E
mov     byte ptr [ebx+9], 1
jmp     short loc_47CE82

loc_47CE7E:
mov     byte ptr [ebx+9], 2

loc_47CE82:
mov     byte ptr [ebx+0Ah], 0

loc_47CE86:
pop     edx
pop     ecx
pop     ebx
retn
sub_47CDB5 endp




sub_47CE8A proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_47CEA4
jbe     short loc_47CEF9
cmp     al, 2
jz      loc_47CF2E
pop     edx
pop     ecx
pop     ebx
retn

loc_47CEA4:
test    al, al
jnz     loc_47CF46
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_47CF46
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 9
mov     [ebx+14h], ax
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
mov     [ebx+18h], ax
mov     eax, [ebx+9]
sar     eax, 18h
shl     eax, 2
mov     edx, offset unk_519374
add     edx, eax
mov     eax, ebx
call    sub_47CFFF
test    eax, eax
jz      short loc_47CF3E

loc_47CEF2:
inc     byte ptr [ebx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_47CEF9:
mov     edx, [ebx+9]
sar     edx, 18h
mov     dl, ds:byte_5193A4[edx]
and     edx, 0FFh
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
movsx   cx, byte ptr [ebx+0Ch]
mov     eax, 1
shl     eax, cl
or      word ptr ds:dword_77E8F8, ax
jmp     short loc_47CEF2

loc_47CF2E:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_47CF46
and     ds:byte_5F8421, 0BFh

loc_47CF3E:
mov     byte ptr [ebx+9], 0
mov     byte ptr [ebx+0Ah], 0

loc_47CF46:
pop     edx
pop     ecx
pop     ebx
retn
sub_47CE8A endp




sub_47CF4A proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_47CF64
jbe     short loc_47CFB9
cmp     al, 2
jz      loc_47CFEA
pop     edx
pop     ecx
pop     ebx
retn

loc_47CF64:
test    al, al
jnz     loc_47CFFB
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     loc_47CFFB
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 9
mov     [ebx+14h], ax
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
mov     [ebx+18h], ax
mov     eax, [ebx+9]
sar     eax, 18h
shl     eax, 2
mov     edx, offset unk_519374
add     edx, eax
mov     eax, ebx
call    sub_47CFFF
test    eax, eax
jz      short loc_47CFF3

loc_47CFB2:
inc     byte ptr [ebx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_47CFB9:
mov     edx, [ebx+9]
sar     edx, 18h
mov     dl, ds:byte_5193A4[edx]
and     edx, 0FFh
mov     eax, 4
call    sub_4A0E24
movsx   cx, byte ptr [ebx+0Ch]
mov     eax, 1
shl     eax, cl
or      word ptr ds:dword_77E8F8, ax
jmp     short loc_47CFB2

loc_47CFEA:
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short loc_47CFFB

loc_47CFF3:
mov     byte ptr [ebx+9], 0
mov     byte ptr [ebx+0Ah], 0

loc_47CFFB:
pop     edx
pop     ecx
pop     ebx
retn
sub_47CF4A endp




sub_47CFFF proc near
push    ebx
push    ecx
movsx   cx, byte ptr [eax+14h]
movsx   bx, byte ptr [edx]
sub     ecx, ebx
mov     ebx, ecx
and     ebx, 0FFFFh
xor     ecx, ecx
mov     cl, [edx+2]
cmp     ebx, ecx
jge     short loc_47D03F
movsx   ax, byte ptr [eax+18h]
movsx   bx, byte ptr [edx+1]
sub     eax, ebx
xor     ecx, ecx
mov     cx, ax
xor     eax, eax
mov     al, [edx+3]
cmp     ecx, eax
jge     short loc_47D03F
mov     eax, 1
pop     ecx
pop     ebx
retn

loc_47D03F:
xor     eax, eax
pop     ecx
pop     ebx
retn
sub_47CFFF endp




sub_47D044 proc near
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      short sub_47D071
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      short sub_47D071
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      short sub_47D071
xor     eax, eax
retn
sub_47D044 endp




sub_47D071 proc near
mov     eax, 1
retn
sub_47D071 endp




sub_47D077 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47D07D[edx*4]
pop     edx
retn
sub_47D077 endp




sub_47D086 proc near
mov     byte ptr [eax+8], 1
retn
sub_47D086 endp




sub_47D08B proc near
push    edx
mov     edx, eax
mov     eax, 60Ch
call    sub_47E888
test    eax, eax
jz      short loc_47D0A4
mov     byte ptr [edx+8], 2
mov     byte ptr [edx+9], 0

loc_47D0A4:
pop     edx
retn
sub_47D08B endp

db 90h
jpt_47D0D7 dd offset loc_47D0DE ; jump table for switch statement
dd offset loc_47D10E
dd offset loc_47D117
dd offset loc_47D14D
dd offset loc_47D16B
dd offset loc_47D192
dd offset loc_47D1AD



sub_47D0C3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 6           ; switch 7 cases
ja      def_47D0D7      ; jumptable 0047D0D7 default case
xor     edx, edx
mov     dl, al
jmp     jpt_47D0D7[edx*4] ; switch jump

loc_47D0DE:             ; jumptable 0047D0D7 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_47D0D7      ; jumptable 0047D0D7 default case
mov     byte ptr ds:dword_5F836C, 3
xor     dh, dh
mov     byte ptr ds:dword_5F836C+1, dh
xor     ebx, ebx
mov     ds:dword_5F8370, ebx

loc_47D107:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_47D10E:             ; jumptable 0047D0D7 case 1
mov     ds:byte_5F88AC, 30h ; '0'
jmp     short loc_47D107

loc_47D117:             ; jumptable 0047D0D7 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47D0D7      ; jumptable 0047D0D7 default case
mov     ds:byte_5F88AC, 36h ; '6'
mov     edx, ds:off_52FFF5
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
xor     ebx, ebx
xor     edx, edx
mov     eax, 13Fh
call    sub_4D89E4
jmp     short loc_47D107

loc_47D14D:             ; jumptable 0047D0D7 case 3
cmp     ds:byte_5F840B, 0
jge     def_47D0D7      ; jumptable 0047D0D7 default case
mov     eax, ds:dword_5F8412
sar     eax, 10h
xor     edx, edx
call    sub_4B6268
jmp     short loc_47D107

loc_47D16B:             ; jumptable 0047D0D7 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_47D0D7 ; jumptable 0047D0D7 default case
mov     edx, ds:off_53002D
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
mov     ds:byte_5F88AC, 35h ; '5'
jmp     loc_47D107

loc_47D192:             ; jumptable 0047D0D7 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_47D0D7 ; jumptable 0047D0D7 default case
cmp     ds:byte_5F840B, 0
jge     short def_47D0D7 ; jumptable 0047D0D7 default case
inc     al
mov     [ecx+9], al
pop     edx
pop     ecx
pop     ebx
retn

loc_47D1AD:             ; jumptable 0047D0D7 case 6
call    sub_42ABA2
test    eax, eax
jnz     short def_47D0D7 ; jumptable 0047D0D7 default case
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
xor     edx, edx
mov     ds:dword_5F84E8, edx
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     eax, 60Ch
call    sub_47EA91

def_47D0D7:             ; jumptable 0047D0D7 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47D0C3 endp




sub_47D1E5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47D1EB[edx*4]
pop     edx
retn
sub_47D1E5 endp




sub_47D1F4 proc near
mov     byte ptr [eax+8], 1
retn
sub_47D1F4 endp




sub_47D1F9 proc near
push    edx
cmp     byte ptr ds:dword_77E760, 0
jz      short loc_47D22D
cmp     byte ptr ds:dword_77E764+1, 10h
jnb     short loc_47D22D
xor     edx, edx
mov     dl, byte ptr ds:dword_77E764+1
mov     dl, ds:byte_5193B8[edx]
mov     [eax+0Ch], dl
test    dl, dl
jz      short loc_47D22D
mov     byte ptr [eax+8], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Fh], 0

loc_47D22D:
pop     edx
retn
sub_47D1F9 endp

db 8Bh, 0C0h
jpt_47D277 dd offset loc_47D27E ; jump table for switch statement
dd offset loc_47D2A6
dd offset loc_47D2AF
dd offset loc_47D2DE
dd offset loc_47D31F
dd offset loc_47D32E
dd offset loc_47D366
dd offset loc_47D37D
dd offset def_47D277
dd offset def_47D277
dd offset loc_47D38C



sub_47D25D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+9]
cmp     al, 0Ah         ; switch 11 cases
ja      def_47D277      ; jumptable 0047D277 default case, cases 8,9
and     eax, 0FFh
jmp     jpt_47D277[eax*4] ; switch jump

loc_47D27E:             ; jumptable 0047D277 case 0
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      def_47D277      ; jumptable 0047D277 default case, cases 8,9
mov     byte ptr ds:dword_5F836C, 3
xor     dh, dh
mov     byte ptr ds:dword_5F836C+1, dh
xor     ebx, ebx
mov     ds:dword_5F8370, ebx
jmp     short loc_47D2CF

loc_47D2A6:             ; jumptable 0047D277 case 1
mov     ds:byte_5F88AC, 30h ; '0'
jmp     short loc_47D2CF

loc_47D2AF:             ; jumptable 0047D277 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47D277      ; jumptable 0047D277 default case, cases 8,9
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_47D2D6
mov     eax, 10h

loc_47D2CA:
call    sub_4D9040

loc_47D2CF:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_47D2D6:
mov     byte ptr [ecx+9], 0Ah
pop     edx
pop     ecx
pop     ebx
retn

loc_47D2DE:             ; jumptable 0047D277 case 3
cmp     ds:byte_77EAB8, 0
jnz     def_47D277      ; jumptable 0047D277 default case, cases 8,9
mov     edx, 0Bh
xor     eax, eax
call    sub_4A0E24
mov     eax, [ecx+9]
sar     eax, 18h
mov     al, ds:byte_5193E4[eax]
xor     ah, ah
mov     ds:word_77EA80, ax
mov     eax, [ecx+9]
sar     eax, 18h
mov     eax, ds:dword_5193C8[eax*4]
call    sub_4D8E42
jmp     short loc_47D2CF

loc_47D31F:             ; jumptable 0047D277 case 4
call    sub_4D8ECC
test    eax, eax
jz      def_47D277      ; jumptable 0047D277 default case, cases 8,9
jmp     short loc_47D2CF

loc_47D32E:             ; jumptable 0047D277 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47D277      ; jumptable 0047D277 default case, cases 8,9
cmp     ds:word_5708DA, 0
jnz     short loc_47D34E
call    sub_4D8ECC
test    eax, eax
jnz     short def_47D277 ; jumptable 0047D277 default case, cases 8,9

loc_47D34E:
mov     byte ptr [edx+548h], 31h ; '1'
xor     eax, eax
call    sub_4A0E75
mov     eax, 40h ; '@'
jmp     loc_47D2CA

loc_47D366:             ; jumptable 0047D277 case 6
cmp     ds:byte_77EAB8, 0
jnz     short def_47D277 ; jumptable 0047D277 default case, cases 8,9
mov     ds:word_77EA80, 7Fh
jmp     loc_47D2CF

loc_47D37D:             ; jumptable 0047D277 case 7
mov     eax, 20h ; ' '
call    sub_4D9040
jmp     loc_47D2D6

loc_47D38C:             ; jumptable 0047D277 case 10
call    sub_42ABA2
test    eax, eax
jnz     short def_47D277 ; jumptable 0047D277 default case, cases 8,9
mov     eax, edx
call    sub_4B565A
or      ds:byte_5F8364, 2
xor     edx, edx
mov     ds:dword_5F84E8, edx
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0

def_47D277:             ; jumptable 0047D277 default case, cases 8,9
pop     edx
pop     ecx
pop     ebx
retn
sub_47D25D endp




sub_47D3B7 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47D3BD[edx*4]
pop     edx
retn
sub_47D3B7 endp




sub_47D3C6 proc near
push    edx
mov     edx, eax
mov     eax, offset unk_519404
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
mov     [edx+1Ch], eax
mov     byte ptr [edx+8], 1
pop     edx
retn
sub_47D3C6 endp




sub_47D3E0 proc near
push    ebx
push    edx
mov     edx, eax
mov     eax, [eax+1Ch]
mov     bl, [eax+0Ah]
test    bl, bl
jnz     short loc_47D3FE
call    sub_47D4E8
test    al, al
jz      short loc_47D3FE
mov     byte ptr [edx+8], 2
mov     [edx+9], bl

loc_47D3FE:
pop     edx
pop     ebx
retn
sub_47D3E0 endp

db 8Bh, 0C0h
jpt_47D43A dd offset loc_47D441 ; jump table for switch statement
dd offset loc_47D458
dd offset loc_47D47E
dd offset loc_47D487
dd offset loc_47D4A0
dd offset loc_47D4B9
dd offset loc_47D4C2
dd offset def_47D43A
dd offset def_47D43A



sub_47D427 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 8           ; switch 9 cases
ja      def_47D43A      ; jumptable 0047D43A default case, cases 7,8
xor     edx, edx
mov     dl, al
jmp     jpt_47D43A[edx*4] ; switch jump

loc_47D441:             ; jumptable 0047D43A case 0
test    word ptr ds:dword_55BD7C+2, 0F80h

loc_47D44A:             ; jumptable 0047D43A default case, cases 7,8
jnz     def_47D43A
inc     al
mov     [ecx+9], al

def_47D43A:             ; jumptable 0047D43A default case, cases 7,8
pop     edx
pop     ecx
retn

loc_47D458:             ; jumptable 0047D43A case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short def_47D43A ; jumptable 0047D43A default case, cases 7,8
mov     byte ptr ds:dword_5F836C, 3
xor     al, al
mov     byte ptr ds:dword_5F836C+1, al
xor     edx, edx
mov     ds:dword_5F8370, edx
jmp     short loc_47D49A

loc_47D47E:             ; jumptable 0047D43A case 2
mov     ds:byte_5F88AC, 30h ; '0'
jmp     short loc_47D49A

loc_47D487:             ; jumptable 0047D43A case 3
mov     ds:byte_5F88AC, 35h ; '5'
mov     edx, 0D2h

loc_47D493:
xor     eax, eax
call    sub_4A0E24

loc_47D49A:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
retn

loc_47D4A0:             ; jumptable 0047D43A case 4
cmp     ds:byte_5F840B, 0
jge     short def_47D43A ; jumptable 0047D43A default case, cases 7,8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_47D43A ; jumptable 0047D43A default case, cases 7,8
mov     edx, 0D3h
jmp     short loc_47D493

loc_47D4B9:             ; jumptable 0047D43A case 5
test    byte ptr ds:dword_55BD7C+3, 8
jmp     short loc_47D44A

loc_47D4C2:             ; jumptable 0047D43A case 6
call    sub_42ABA2
test    eax, eax
jnz     short def_47D43A ; jumptable 0047D43A default case, cases 7,8
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
mov     eax, 1Ah
call    sub_47EEAE
jmp     short loc_47D49A
sub_47D427 endp




sub_47D4E8 proc near
push    ecx
push    edx
mov     edx, [eax+12h]
sar     edx, 10h
mov     ecx, ds:dword_519416
sar     ecx, 10h
cmp     ecx, edx
jl      short loc_47D54F
mov     ecx, ds:dword_51941E
sar     ecx, 10h
cmp     ecx, edx
jg      short loc_47D54F
mov     edx, [eax+14h]
sar     edx, 10h
mov     ecx, ds:dword_519416+2
sar     ecx, 10h
cmp     ecx, edx
jl      short loc_47D54F
mov     ecx, ds:dword_51941E+2
sar     ecx, 10h
cmp     ecx, edx
jg      short loc_47D54F
mov     eax, [eax+16h]
sar     eax, 10h
mov     edx, ds:dword_51941A
sar     edx, 10h
cmp     edx, eax
jl      short loc_47D54F
mov     edx, ds:dword_519422
sar     edx, 10h
cmp     edx, eax
jg      short loc_47D54F
mov     al, 1
pop     edx
pop     ecx
retn

loc_47D54F:
xor     al, al
pop     edx
pop     ecx
retn
sub_47D4E8 endp




sub_47D554 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47D55A[edx*4]
pop     edx
retn
sub_47D554 endp




sub_47D563 proc near
push    edx
mov     edx, eax
mov     eax, 5Eh ; '^'
call    sub_47E888
test    eax, eax
jnz     loc_47D5F8
mov     eax, 531h
call    sub_47E888
test    eax, eax
jnz     short loc_47D5A2
mov     eax, 532h
call    sub_47E888
test    eax, eax
jnz     short loc_47D5A2
mov     eax, 533h
call    sub_47E888
test    eax, eax
jz      short loc_47D5A9

loc_47D5A2:
or      byte ptr ds:dword_77E8F8, 3

loc_47D5A9:
mov     eax, 5Dh ; ']'
call    sub_47E888
test    eax, eax
jz      short loc_47D5BE
or      byte ptr ds:dword_77E8F8, 18h

loc_47D5BE:
mov     eax, 6Eh ; 'n'
call    sub_47E888
test    eax, eax
jz      short loc_47D5D3
or      byte ptr ds:dword_77E8F8, 4

loc_47D5D3:
mov     eax, 41h ; 'A'
call    sub_47E888
test    eax, eax
jz      short loc_47D5E8
or      byte ptr ds:dword_77E8F8, 40h

loc_47D5E8:
cmp     word ptr ds:dword_77E8F8, 6Fh ; 'o'
jnz     short loc_47D603

loc_47D5F2:
mov     byte ptr [edx+8], 2
pop     edx
retn

loc_47D5F8:
mov     word ptr ds:dword_77E8F8, 6Fh ; 'o'
jmp     short loc_47D5F2

loc_47D603:
mov     byte ptr [edx+0Dh], 0
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0
pop     edx
retn
sub_47D563 endp




sub_47D619 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_47D61F[edx*4]
pop     edx
retn
sub_47D619 endp



; Attributes: thunk

sub_47D628 proc near
jmp     sub_4DE439
sub_47D628 endp




sub_47D62D proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     bl, bl
cmp     word ptr ds:dword_77E8F8, 6Fh ; 'o'
jnz     short loc_47D646
mov     byte ptr [eax+8], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_47D646:
mov     byte ptr [eax+0Ch], 0FFh
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 9
mov     [edx+14h], ax
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
mov     [edx+18h], ax

loc_47D668:
cmp     bl, 7
jge     short loc_47D6AA
mov     [edx+0Ch], bl
movsx   ecx, bl
mov     eax, edx
call    ds:funcs_47D675[ecx*4]
test    eax, eax
jz      short loc_47D6A6
mov     ecx, [edx+9]
sar     ecx, 18h
mov     eax, 1
shl     eax, cl
xor     ecx, ecx
mov     cx, word ptr ds:dword_77E8F8
test    ecx, eax
jnz     short loc_47D6A6
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_47D6A6:
inc     bl
jmp     short loc_47D668

loc_47D6AA:
pop     edx
pop     ecx
pop     ebx
retn
sub_47D62D endp




sub_47D6AE proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_47D6CC
jbe     loc_47D73B
cmp     al, 2
jz      loc_47D784
pop     edx
pop     ecx
pop     ebx
retn

loc_47D6CC:
test    al, al
jnz     loc_47D7AD
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_47D7AD
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 9
mov     [ebx+14h], ax
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
mov     [ebx+18h], ax
mov     al, [ebx+0Dh]
cmp     al, 1
jnz     short loc_47D711
add     [ebx+0Ah], al
mov     byte ptr [ebx+0Dh], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_47D711:
mov     edx, [ebx+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     edx, offset unk_519458
add     edx, eax
mov     eax, ebx
call    sub_47D7B1
test    eax, eax
jz      loc_47D7A5

loc_47D734:
inc     byte ptr [ebx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_47D73B:
mov     edx, [ebx+9]
sar     edx, 18h
mov     dl, ds:byte_51947B[edx]
and     edx, 0FFh
mov     eax, 4
call    sub_4A0E24
mov     ecx, [ebx+9]
sar     ecx, 18h
mov     eax, 1
shl     eax, cl
test    al, 48h
jz      short loc_47D76F
or      ds:byte_5F8421, 40h

loc_47D76F:
movsx   cx, byte ptr [ebx+0Ch]
mov     eax, 1
shl     eax, cl
or      word ptr ds:dword_77E8F8, ax
jmp     short loc_47D734

loc_47D784:
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short loc_47D7AD
mov     ecx, [ebx+9]
sar     ecx, 18h
mov     eax, 1
shl     eax, cl
test    al, 48h
jz      short loc_47D7A5
and     ds:byte_5F8421, 0BFh

loc_47D7A5:
mov     byte ptr [ebx+9], 0
mov     byte ptr [ebx+0Ah], 0

loc_47D7AD:
pop     edx
pop     ecx
pop     ebx
retn
sub_47D6AE endp




sub_47D7B1 proc near
push    ebx
push    ecx
movsx   bx, byte ptr [eax+14h]
movsx   cx, byte ptr [edx]
sub     ebx, ecx
and     ebx, 0FFFFh
xor     ecx, ecx
mov     cl, [edx+2]
cmp     ebx, ecx
jge     short loc_47D805
movsx   ax, byte ptr [eax+18h]
movsx   bx, byte ptr [edx+1]
sub     eax, ebx
xor     ecx, ecx
mov     cx, ax
xor     eax, eax
mov     al, [edx+3]
cmp     ecx, eax
jge     short loc_47D805
mov     al, [edx+4]
cmp     al, byte ptr ds:dword_77E7D5
jz      short loc_47D7FD
mov     eax, [edx+1]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_47D805

loc_47D7FD:
mov     eax, 1
pop     ecx
pop     ebx
retn

loc_47D805:
xor     eax, eax
pop     ecx
pop     ebx
retn
sub_47D7B1 endp




sub_47D80A proc near
push    ecx
push    edx
mov     ecx, [eax+9]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
add     edx, ecx
add     edx, offset unk_519458
call    sub_47D7B1
test    eax, eax
jz      short loc_47D82D
mov     eax, 1

loc_47D82D:
pop     edx
pop     ecx
retn
sub_47D80A endp




sub_47D830 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     edx, offset unk_519458
add     edx, eax
mov     eax, ecx
call    sub_47D7B1
test    eax, eax
jz      short loc_47D873
mov     eax, 41h ; 'A'
call    sub_47E888
test    eax, eax
jz      short loc_47D873
mov     eax, 5Eh ; '^'
call    sub_47E8B8
mov     eax, 1
pop     edx
pop     ecx
retn

loc_47D873:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_47D830 endp




sub_47D878 proc near
push    ecx
push    edx
mov     ecx, [eax+9]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
add     edx, ecx
add     edx, offset unk_519458
call    sub_47D7B1
test    eax, eax
jz      short loc_47D8A5
mov     eax, 5Dh ; ']'
call    sub_47E8B8
mov     eax, 1

loc_47D8A5:
pop     edx
pop     ecx
retn
sub_47D878 endp




sub_47D8A8 proc near
push    ecx
push    edx
mov     ecx, [eax+9]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
add     edx, ecx
add     edx, offset unk_519458
call    sub_47D7B1
test    eax, eax
jz      short loc_47D8D5
mov     eax, 6Eh ; 'n'
call    sub_47E8B8
mov     eax, 1

loc_47D8D5:
pop     edx
pop     ecx
retn
sub_47D8A8 endp




sub_47D8D8 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     edx, offset unk_519458
add     edx, eax
mov     eax, ecx
call    sub_47D7B1
test    eax, eax
jz      short loc_47D911
mov     eax, 521h
call    sub_47E888
test    eax, eax
jnz     short loc_47D911
mov     eax, 1
pop     edx
pop     ecx
retn

loc_47D911:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_47D8D8 endp




sub_47D916 proc near
push    edx
mov     edx, eax
mov     eax, 531h
call    sub_47E888
test    eax, eax
jnz     short loc_47D943
mov     eax, 532h
call    sub_47E888
test    eax, eax
jnz     short loc_47D943
mov     eax, 533h
call    sub_47E888
test    eax, eax
jz      short loc_47D94C

loc_47D943:
mov     byte ptr [edx+0Dh], 1
mov     eax, 1

loc_47D94C:
pop     edx
retn
sub_47D916 endp




sub_47D94E proc near
mov     eax, 529h
call    sub_47E888
test    eax, eax
jz      short loc_47D96B
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_47D96B
mov     eax, 1
retn

loc_47D96B:
xor     eax, eax
retn
sub_47D94E endp




sub_47D96E proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47D974[edx*4]
pop     edx
retn
sub_47D96E endp




sub_47D97D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     eax, 53h ; 'S'
call    sub_47E888
test    eax, eax
jz      short loc_47D99A
mov     byte ptr [esi+8], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47D99A:
mov     ds:dword_55A2CC, eax
xor     ecx, ecx
mov     ds:dword_55A2D0, eax
mov     ds:dword_55A2D4, eax
jmp     short loc_47D9B7

loc_47D9AD:
inc     ecx
cmp     ecx, 3
jnb     loc_47DA32

loc_47D9B7:
call    sub_4DDFD0
test    eax, eax
jz      short loc_47D9AD
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 11h
mov     [eax+3], cl
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     bx, ds:word_519490[ecx*4]
mov     [eax+14h], bx
mov     word ptr [eax+16h], 0FFFFh
mov     bx, ds:word_519492[ecx*4]
mov     [eax+18h], bx
mov     word ptr [eax+54h], 0
mov     word ptr [eax+56h], 0
mov     word ptr [eax+58h], 0
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
mov     ds:dword_55A2CC[ecx*4], eax
jmp     loc_47D9AD

loc_47DA32:
mov     ebx, 3
mov     edx, 1
mov     eax, 0Ch
call    sub_47EEF1
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47D97D endp




sub_47DA53 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_47DA59[edx*4]
pop     edx
retn
sub_47DA53 endp




sub_47DA62 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     word ptr ds:dword_5F837A, 0FFD8h
jb      loc_47DB62
test    ds:byte_5F836A, 40h
jnz     loc_47DB62
cmp     ds:byte_77EAB8, 0
jnz     loc_47DB62
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_47DB62
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000032h
call    sub_4D89E4
mov     eax, 64Bh
call    sub_47E8B8
call    sub_436708
mov     byte ptr ds:dword_5F836C, 3
mov     bl, 1
mov     byte ptr ds:dword_5F836C+1, bl
or      ds:byte_5F8421, 10h
mov     ax, word ptr ds:dword_5F8376+2
mov     word ptr ds:dword_5F889A+2, ax
mov     ax, word ptr ds:dword_5F837A
mov     word ptr ds:dword_5F889E, ax
mov     ax, word ptr ds:dword_5F837A+2
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
mov     ax, word ptr ds:dword_5F83B8
mov     word ptr ds:dword_5F88A4, ax
mov     ax, word ptr ds:dword_5F83B8+2
mov     word ptr ds:dword_5F88A4+2, ax
mov     ax, ds:word_5F83BC
mov     ds:word_5F88A8, ax
xor     al, al
mov     ds:byte_5F88AC, al
mov     edx, 14h
xor     eax, eax
call    sub_4A0E24
add     [ecx+9], bl

loc_47DB62:
pop     edx
pop     ecx
pop     ebx
retn
sub_47DA62 endp




sub_47DB66 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_47DBFC
mov     eax, offset byte_5F8364
call    sub_4B565A
and     ds:byte_5F8421, 0BFh
mov     eax, ds:dword_55A2CC
mov     byte ptr [eax+0Dh], 1
mov     eax, ds:dword_55A2D0
mov     byte ptr [eax+0Dh], 1
mov     eax, ds:dword_55A2D4
mov     byte ptr [eax+0Dh], 1
mov     edx, ds:dword_5194B0
push    edx
mov     eax, ds:dword_55A2CC
mov     ecx, 51h ; 'Q'
xor     ebx, ebx
xor     edx, edx
call    sub_436785
mov     ecx, ds:off_5194B4
push    ecx
mov     eax, ds:dword_55A2D0
mov     ecx, 51h ; 'Q'
mov     ebx, 14h
xor     edx, edx
call    sub_436785
mov     ebx, ds:dword_5194B8
push    ebx
mov     eax, ds:dword_55A2D4
mov     ecx, 51h ; 'Q'
mov     ebx, 28h ; '('
xor     edx, edx
call    sub_436785
inc     byte ptr [esi+9]

loc_47DBFC:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47DB66 endp




sub_47DC01 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     eax, eax

loc_47DC0A:
mov     edx, ds:dword_55A2CC[eax*4]
or      bx, [edx+6Eh]
inc     eax
cmp     eax, 3
jb      short loc_47DC0A
test    bx, bx
jnz     short loc_47DC71
cmp     ds:byte_77EAB8, 0
jnz     short loc_47DC71
mov     eax, 10h
call    sub_4D9040
mov     eax, 64Bh
call    sub_47EA91
mov     eax, 53h ; 'S'
call    sub_47E8B8
call    sub_436710
mov     edx, 15h
xor     eax, eax
call    sub_4A0E24
mov     ebx, 3
xor     edx, edx
mov     eax, 0Ch
call    sub_47EEF1
call    sub_436868
inc     byte ptr [ecx+9]

loc_47DC71:
pop     edx
pop     ecx
pop     ebx
retn
sub_47DC01 endp




sub_47DC75 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     ds:byte_77EAB8, 0
jnz     short loc_47DC94
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000031h
call    sub_4D89E4
inc     byte ptr [ecx+9]

loc_47DC94:
pop     edx
pop     ecx
pop     ebx
retn
sub_47DC75 endp




sub_47DC98 proc near
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short locret_47DCA5
mov     byte ptr [eax+8], 2

locret_47DCA5:
retn
sub_47DC98 endp



; Attributes: thunk

sub_47DCA6 proc near
jmp     sub_4DE439
sub_47DCA6 endp

dword_47DCAB dd 104FEFEh
dword_47DCAF dd 103FA0Ah
dword_47DCB3 dd 101EAFBh
dword_47DCB7 dd 101FA01h
dword_47DCBB dd 10124FBh

loc_47DCBF:
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47DCC5[edx*4]
pop     edx
retn



sub_47DCCE proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_47DCD4[edx*4]
pop     edx
retn
sub_47DCCE endp



; Attributes: thunk

sub_47DCDD proc near
jmp     sub_4DE439
sub_47DCDD endp

db 90h
jpt_47DD13 dd offset loc_47DD1A ; jump table for switch statement
dd offset loc_47DD33
dd offset loc_47DD49
dd offset loc_47DD72
dd offset loc_47DDBC
dd offset loc_47DDDA
dd offset loc_47DDFD



sub_47DCFF proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 6           ; switch 7 cases
ja      def_47DD13      ; jumptable 0047DD13 default case
xor     edx, edx
mov     dl, al
jmp     jpt_47DD13[edx*4] ; switch jump

loc_47DD1A:             ; jumptable 0047DD13 case 0
mov     eax, 56h ; 'V'
call    sub_47E888
test    eax, eax
jnz     loc_47DE0D

loc_47DD2C:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_47DD33:             ; jumptable 0047DD13 case 1
test    ds:byte_77E8FE, 40h
jz      def_47DD13      ; jumptable 0047DD13 default case
inc     al
mov     [ecx+9], al
pop     edx
pop     ecx
pop     ebx
retn

loc_47DD49:             ; jumptable 0047DD13 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47DD13      ; jumptable 0047DD13 default case
mov     edx, 1
xor     eax, eax
call    sub_4A0E24
and     ds:byte_77E8FE, 0BFh
or      ds:byte_5F8421, 40h
jmp     short loc_47DD2C

loc_47DD72:             ; jumptable 0047DD13 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47DD13      ; jumptable 0047DD13 default case
mov     eax, 56h ; 'V'
call    sub_47E888
test    eax, eax
jz      short loc_47DDAD
xor     ebx, ebx
xor     edx, edx
mov     eax, 208h
call    sub_4D89E4
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Ah], 0
mov     dword ptr [ecx+1Ch], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_47DDAD:
and     ds:byte_5F8421, 0BFh
mov     byte ptr [ecx+9], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_47DDBC:             ; jumptable 0047DD13 case 4
mov     eax, ecx
call    sub_47E19D
test    eax, eax
jz      short def_47DD13 ; jumptable 0047DD13 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 209h
call    sub_4D89E4
jmp     loc_47DD2C

loc_47DDDA:             ; jumptable 0047DD13 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_47DD13 ; jumptable 0047DD13 default case
mov     ds:word_77E900, 1
mov     edx, 1Dh
xor     eax, eax
call    sub_4A0E24
jmp     loc_47DD2C

loc_47DDFD:             ; jumptable 0047DD13 case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_47DD13 ; jumptable 0047DD13 default case
and     ds:byte_5F8421, 0BFh

loc_47DE0D:
mov     byte ptr [ecx+8], 1

def_47DD13:             ; jumptable 0047DD13 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47DCFF endp




sub_47DE15 proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
mov     eax, dword_47DCAB
mov     [esp+0Ch+var_C], eax
mov     eax, 35h ; '5'
call    sub_47E888
test    eax, eax
jnz     short loc_47DE49
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jz      short def_47DE86 ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
mov     eax, 604h
call    sub_47E8B8

loc_47DE49:
or      ds:byte_77E8FE, 1
mov     byte ptr [ecx+8], 1

def_47DE86:             ; jumptable 0047DE86 default case
add     esp, 4          ; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
pop     edx
pop     ecx
retn
sub_47DE15 endp

db 90h
jpt_47DE86 dd offset loc_47DE8D ; jump table for switch statement
dd offset loc_47DEB3
dd offset loc_47DECF
dd offset loc_47DEEE



sub_47DE6B proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
mov     eax, dword_47DCAF
mov     [esp+0Ch+var_C], eax
mov     al, [ecx+9]
cmp     al, 3           ; switch 4 cases
ja      short def_47DE86 ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
and     eax, 0FFh
jmp     jpt_47DE86[eax*4] ; switch jump

loc_47DE8D:             ; jumptable 0047DE86 case 0
mov     eax, 6Dh ; 'm'
call    sub_47E888
test    eax, eax
jz      short loc_47DEA1

loc_47DE9B:
mov     byte ptr [ecx+8], 1
jmp     short def_47DE86 ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47DEA1:
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jz      short def_47DE86 ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47DEAE:
inc     byte ptr [ecx+9]
jmp     short def_47DE86 ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47DEB3:             ; jumptable 0047DE86 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_47DE86 ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jnz     short loc_47DEAE
mov     byte ptr [ecx+9], 0
jmp     short def_47DE86 ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47DECF:             ; jumptable 0047DE86 case 2
mov     edx, 1Bh
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
mov     eax, 6Dh ; 'm'
call    sub_47E8B8
jmp     short loc_47DEAE

loc_47DEEE:             ; jumptable 0047DE86 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
and     ds:byte_5F8421, 0BFh
jmp     short loc_47DE9B
sub_47DE6B endp

db 8Dh, 40h, 0
jpt_47DF36 dd offset loc_47DF3D ; jump table for switch statement
dd offset loc_47DF7D
dd offset loc_47DFA0
dd offset loc_47DFB8



sub_47DF17 proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
mov     eax, dword_47DCB3
mov     [esp+0Ch+var_C], eax
mov     al, [ecx+9]
cmp     al, 3           ; switch 4 cases
ja      def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
and     eax, 0FFh
jmp     jpt_47DF36[eax*4] ; switch jump

loc_47DF3D:             ; jumptable 0047DF36 case 0
test    ds:byte_77E8FE, 8
jnz     short loc_47DF54
mov     eax, 56h ; 'V'
call    sub_47E888
test    eax, eax
jz      short loc_47DF64

loc_47DF54:
or      ds:byte_77E8FE, 8

loc_47DF5B:
mov     byte ptr [ecx+8], 1
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47DF64:
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jz      def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47DF75:
inc     byte ptr [ecx+9]
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47DF7D:             ; jumptable 0047DF36 case 1
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jnz     short loc_47DF75
mov     byte ptr [ecx+9], 0
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47DFA0:             ; jumptable 0047DF36 case 2
mov     edx, 6
mov     eax, 4
call    sub_4A0E24
or      ds:byte_77E8FE, 8
jmp     short loc_47DF75

loc_47DFB8:             ; jumptable 0047DF36 case 3
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_47DF5B
jmp     def_47DE86      ; jumptable 0047DE86 default case
sub_47DF17 endp         ; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
db 90h
jpt_47DFF6 dd offset loc_47DFFD ; jump table for switch statement
dd offset loc_47E03D
dd offset loc_47E060
dd offset loc_47E078



sub_47DFD7 proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
mov     eax, dword_47DCB7
mov     [esp+0Ch+var_C], eax
mov     al, [ecx+9]
cmp     al, 3           ; switch 4 cases
ja      def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
and     eax, 0FFh
jmp     jpt_47DFF6[eax*4] ; switch jump

loc_47DFFD:             ; jumptable 0047DFF6 case 0
test    ds:byte_77E8FE, 10h
jnz     short loc_47E014
mov     eax, 56h ; 'V'
call    sub_47E888
test    eax, eax
jz      short loc_47E024

loc_47E014:
or      ds:byte_77E8FE, 10h

loc_47E01B:
mov     byte ptr [ecx+8], 1
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47E024:
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jz      def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47E035:
inc     byte ptr [ecx+9]
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47E03D:             ; jumptable 0047DFF6 case 1
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jnz     short loc_47E035
mov     byte ptr [ecx+9], 0
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47E060:             ; jumptable 0047DFF6 case 2
mov     edx, 8
mov     eax, 4
call    sub_4A0E24
or      ds:byte_77E8FE, 10h
jmp     short loc_47E035

loc_47E078:             ; jumptable 0047DFF6 case 3
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_47E01B
jmp     def_47DE86      ; jumptable 0047DE86 default case
sub_47DFD7 endp         ; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
db 90h
jpt_47E0B6 dd offset loc_47E0BD ; jump table for switch statement
dd offset loc_47E0FF
dd offset loc_47E122
dd offset loc_47E13A



sub_47E097 proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
mov     eax, dword_47DCBB
mov     [esp+0Ch+var_C], eax
mov     al, [ecx+9]
cmp     al, 3           ; switch 4 cases
ja      def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
and     eax, 0FFh
jmp     jpt_47E0B6[eax*4] ; switch jump

loc_47E0BD:             ; jumptable 0047E0B6 case 0
test    ds:byte_77E8FE, 20h
jz      short loc_47E0CF

loc_47E0C6:
mov     byte ptr [ecx+8], 1
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47E0CF:
mov     eax, 56h ; 'V'
call    sub_47E888
test    eax, eax
jz      short loc_47E0E6
or      ds:byte_77E8FE, 24h
jmp     short loc_47E0C6

loc_47E0E6:
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jz      def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47E0F7:
inc     byte ptr [ecx+9]
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47E0FF:             ; jumptable 0047E0B6 case 1
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case
mov     edx, esp
mov     eax, ecx
call    sub_47E14D
test    eax, eax
jnz     short loc_47E0F7
mov     byte ptr [ecx+9], 0
jmp     def_47DE86      ; jumptable 0047DE86 default case
; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case

loc_47E122:             ; jumptable 0047E0B6 case 2
mov     edx, 7
mov     eax, 4
call    sub_4A0E24
or      ds:byte_77E8FE, 20h
jmp     short loc_47E0F7

loc_47E13A:             ; jumptable 0047E0B6 case 3
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_47E0C6
jmp     def_47DE86      ; jumptable 0047DE86 default case
sub_47E097 endp         ; jumptable 0047DF36 default case
; jumptable 0047DFF6 default case
; jumptable 0047E0B6 default case



sub_47E148 proc near
mov     byte ptr [eax+8], 1
retn
sub_47E148 endp




sub_47E14D proc near
push    ecx
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 9
movsx   ecx, al
movsx   eax, byte ptr [edx]
sub     ecx, eax
and     ecx, 0FFFFh
xor     eax, eax
mov     al, [edx+2]
cmp     ecx, eax
jge     short loc_47E199
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
movsx   eax, al
movsx   ecx, byte ptr [edx+1]
sub     eax, ecx
xor     ecx, ecx
mov     cx, ax
xor     eax, eax
mov     al, [edx+3]
cmp     ecx, eax
jge     short loc_47E199
mov     eax, 1
pop     ecx
retn

loc_47E199:
xor     eax, eax
pop     ecx
retn
sub_47E14D endp




sub_47E19D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
xor     edi, edi
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_47E1B3
cmp     al, 1
jz      short loc_47E1D1
jmp     short loc_47E1EB

loc_47E1B3:
mov     ecx, (offset dword_5F8376+2)
mov     ebx, 400h
mov     edx, 200h
mov     eax, 4
call    sub_42A70B
inc     byte ptr [esi+0Ah]
jmp     short loc_47E1EB

loc_47E1D1:
mov     ah, byte ptr ds:dword_77E954+3
test    ah, ah
jnz     short loc_47E1EB
cmp     dword ptr [esi+1Ch], 5Ah ; 'Z'
jb      short loc_47E1E8
mov     edi, 1
jmp     short loc_47E1EB

loc_47E1E8:
mov     [esi+0Ah], ah

loc_47E1EB:
inc     dword ptr [esi+1Ch]
mov     eax, edi
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47E19D endp




sub_47E1F6 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47E1FC[edx*4]
pop     edx
retn
sub_47E1F6 endp




sub_47E205 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_47E20B[edx*4]
pop     edx
retn
sub_47E205 endp



; Attributes: thunk

sub_47E214 proc near
jmp     sub_4DE439
sub_47E214 endp

align 2
jpt_47E245 dd offset loc_47E24C ; jump table for switch statement
dd offset loc_47E284
dd offset loc_47E2C6
dd offset loc_47E2D7
dd offset loc_47E2F1
dd offset loc_47E30B



sub_47E232 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 5           ; switch 6 cases
ja      def_47E245      ; jumptable 0047E245 default case
xor     edx, edx
mov     dl, al
jmp     jpt_47E245[edx*4] ; switch jump

loc_47E24C:             ; jumptable 0047E245 case 0
mov     eax, 64h ; 'd'
call    sub_47E888
test    eax, eax
jnz     short loc_47E261
mov     byte ptr [ecx+9], 1
pop     edx
pop     ecx
retn

loc_47E261:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_519506[eax*4]
call    sub_47E888
test    eax, eax
jnz     loc_47E314
mov     byte ptr [ecx+9], 3
pop     edx
pop     ecx
retn

loc_47E284:             ; jumptable 0047E245 case 1
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:(off_5194FC+2)[eax*2]
sar     eax, 10h
mov     edx, ds:dword_5F837A
sar     edx, 10h
cmp     edx, eax
jge     def_47E245      ; jumptable 0047E245 default case
mov     edx, 1
mov     eax, 4
call    sub_4A0E24
mov     eax, 64h ; 'd'
call    sub_47E8B8

loc_47E2C0:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
retn

loc_47E2C6:             ; jumptable 0047E245 case 2
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short def_47E245 ; jumptable 0047E245 default case
inc     al
mov     [ecx+9], al
pop     edx
pop     ecx
retn

loc_47E2D7:             ; jumptable 0047E245 case 3
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_519506[eax*4]
call    sub_47E888
test    eax, eax
jz      short def_47E245 ; jumptable 0047E245 default case
jmp     short loc_47E2C0

loc_47E2F1:             ; jumptable 0047E245 case 4
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short def_47E245 ; jumptable 0047E245 default case
mov     edx, 3
mov     eax, 4
call    sub_4A0E24
jmp     short loc_47E2C0

loc_47E30B:             ; jumptable 0047E245 case 5
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short def_47E245 ; jumptable 0047E245 default case

loc_47E314:
mov     byte ptr [ecx+8], 1

def_47E245:             ; jumptable 0047E245 default case
pop     edx
pop     ecx
retn
sub_47E232 endp

db 8Dh, 40h, 0
jpt_47E346 dd offset loc_47E34D ; jump table for switch statement
dd offset loc_47E370
dd offset loc_47E38E
dd offset loc_47E3A0
dd offset loc_47E3E6



sub_47E332 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_47E346      ; jumptable 0047E346 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_47E346[ecx*4] ; switch jump

loc_47E34D:             ; jumptable 0047E346 case 0
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_519506[eax*4]
call    sub_47E888
test    eax, eax
jnz     loc_47E3EF

loc_47E369:
inc     byte ptr [ebx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_47E370:             ; jumptable 0047E346 case 1
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_519506[eax*4]
call    sub_47E888
test    eax, eax
jz      def_47E346      ; jumptable 0047E346 default case
jmp     short loc_47E369

loc_47E38E:             ; jumptable 0047E346 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_47E346 ; jumptable 0047E346 default case
inc     al
mov     [ebx+9], al
pop     edx
pop     ecx
pop     ebx
retn

loc_47E3A0:             ; jumptable 0047E346 case 3
xor     dl, dl
xor     ecx, ecx
jmp     short loc_47E3AD

loc_47E3A6:
inc     dl
cmp     dl, 3
jge     short loc_47E3C3

loc_47E3AD:
movsx   eax, dl
mov     eax, ds:dword_519512[eax*4]
call    sub_47E888
test    eax, eax
jz      short loc_47E3A6
inc     ecx
jmp     short loc_47E3A6

loc_47E3C3:
lea     edx, [ecx+3]
mov     eax, 4
call    sub_4A0E24
cmp     ecx, 3
jnz     short loc_47E369
mov     eax, 2Bh ; '+'
call    sub_47E8B8
call    sub_47E829
jmp     short loc_47E369

loc_47E3E6:             ; jumptable 0047E346 case 4
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short def_47E346 ; jumptable 0047E346 default case

loc_47E3EF:
mov     byte ptr [ebx+8], 1

def_47E346:             ; jumptable 0047E346 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47E332 endp




sub_47E3F7 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_47E427
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_51951E[eax*4]
call    sub_47E888
test    eax, eax
jz      short loc_47E434
mov     eax, 10h
call    sub_4D9040
inc     byte ptr [edx+9]
pop     edx
retn

loc_47E427:
cmp     ds:byte_77EAB8, 0
jnz     short loc_47E434
mov     byte ptr [edx+8], 1

loc_47E434:
pop     edx
retn
sub_47E3F7 endp




sub_47E436 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_47E43C[edx*4]
pop     edx
retn
sub_47E436 endp




sub_47E445 proc near
push    ebx
push    edx
push    edi
mov     ebx, eax
mov     edx, 1
cmp     byte ptr [eax+8], 0
jnz     short loc_47E48E
cmp     word ptr ds:dword_77E8F8+2, 0
jnz     short loc_47E487
mov     word ptr ds:dword_77E8F8+2, 0FE00h

loc_47E468:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
cmp     ds:dword_6E40B4[eax], 0
jz      short loc_47E487
sub     word ptr ds:(dword_6E40AE+2)[eax], 200h
inc     edx
jmp     short loc_47E468

loc_47E487:
inc     byte ptr [ebx+8]
pop     edi
pop     edx
pop     ebx
retn

loc_47E48E:
add     word ptr ds:dword_77E8F8+2, 40h ; '@'
mov     di, word ptr ds:dword_77E8F8+2

loc_47E49D:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
cmp     ds:dword_6E40B4[eax], 0
jz      short loc_47E4CD
cmp     di, 200h
jnz     short loc_47E4C2
sub     word ptr ds:(dword_6E40AE+2)[eax], 3C0h
jmp     short loc_47E4CA

loc_47E4C2:
add     word ptr ds:(dword_6E40AE+2)[eax], 40h ; '@'

loc_47E4CA:
inc     edx
jmp     short loc_47E49D

loc_47E4CD:
cmp     word ptr ds:dword_77E8F8+2, 200h
jnz     short loc_47E4E1
mov     word ptr ds:dword_77E8F8+2, 0FE00h

loc_47E4E1:
pop     edi
pop     edx
pop     ebx
retn
sub_47E445 endp




sub_47E4E5 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ebx, eax
mov     edx, 1

loc_47E4F0:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
cmp     ds:dword_6E40B4[eax], 0
jz      short loc_47E514
mov     cx, word ptr ds:dword_77E8F8+2
sub     word ptr ds:(dword_6E40AE+2)[eax], cx
inc     edx
jmp     short loc_47E4F0

loc_47E514:
xor     edi, edi
mov     word ptr ds:dword_77E8F8+2, di
mov     eax, ebx
call    sub_4DE439
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_47E4E5 endp




sub_47E529 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+8]
cmp     al, 1
jb      short loc_47E53D
jbe     short loc_47E56B
cmp     al, 2
jz      short loc_47E58E
pop     edx
pop     ecx
retn

loc_47E53D:
test    al, al
jnz     loc_47E5F1
xor     eax, eax
mov     al, [edx+3]
mov     eax, ds:dword_519534[eax*4]
call    sub_47E888
test    eax, eax
jz      loc_47E5F1
or      ds:byte_5F8421, 40h

loc_47E565:
inc     byte ptr [edx+8]
pop     edx
pop     ecx
retn

loc_47E56B:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_47E5F1
mov     eax, 0Ah
call    sub_49E0D7
mov     eax, 10h
call    sub_4D9040
jmp     short loc_47E565

loc_47E58E:
cmp     ds:word_6E23D6, 0
jnz     short loc_47E5F1
cmp     ds:byte_77EAB8, 0
jnz     short loc_47E5F1
mov     eax, offset dword_77EA48
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 16h
cmp     byte ptr [edx+3], 0
jnz     short loc_47E5C1
mov     ecx, 2
jmp     short loc_47E5C3

loc_47E5C1:
xor     ecx, ecx

loc_47E5C3:
mov     [eax+17h], cl
mov     word ptr [eax+8], 0
mov     word ptr [eax+0Ah], 0
mov     word ptr [eax+0Ch], 0
mov     word ptr [eax+12h], 0
mov     byte ptr [eax+15h], 0
mov     byte ptr [eax+19h], 0FFh
mov     byte ptr [eax+18h], 0FFh
mov     eax, edx
call    sub_4DE439

loc_47E5F1:
pop     edx
pop     ecx
retn
sub_47E529 endp




sub_47E5F4 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47E5FA[edx*4]
pop     edx
retn
sub_47E5F4 endp




sub_47E603 proc near
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
mov     word ptr [eax+1Ah], 0FF42h
retn
sub_47E603 endp




sub_47E619 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edi, eax
mov     ebp, [eax+18h]
sar     ebp, 10h
xor     esi, esi

loc_47E629:
mov     ecx, esi
shl     ecx, 3
mov     eax, esi
shl     eax, 13h
or      eax, 2000000h
mov     edx, esi
shl     edx, 0Bh
or      eax, edx
or      ecx, eax
lea     ebx, [esi+ebp]
lea     edx, [esi+20h]
mov     eax, edi
call    sub_47E6D9
inc     esi
cmp     esi, 10h
jl      short loc_47E629
xor     esi, esi

loc_47E656:
lea     ebx, [ebp+10h]
add     ebx, esi
lea     edx, [esi+30h]
mov     ecx, 2808080h
mov     eax, edi
call    sub_47E6D9
inc     esi
cmp     esi, 90h
jl      short loc_47E656
xor     esi, esi

loc_47E675:
mov     eax, 10h
sub     eax, esi
mov     edx, eax
shl     edx, 3
mov     ecx, eax
shl     ecx, 13h
or      ecx, 2000000h
shl     eax, 0Bh
or      ecx, eax
or      ecx, edx
lea     ebx, [ebp+0A0h]
add     ebx, esi
lea     edx, [esi+0C0h]
mov     eax, edi
call    sub_47E6D9
inc     esi
cmp     esi, 10h
jl      short loc_47E675
mov     ah, [edi+0Bh]
inc     ah
mov     [edi+0Bh], ah
cmp     ah, 2
jbe     short loc_47E6C3
mov     byte ptr [edi+0Bh], 0
inc     word ptr [edi+1Ah]

loc_47E6C3:
cmp     word ptr [edi+1Ah], 400h
jl      short loc_47E6D2
mov     eax, edi
call    sub_4DE439

loc_47E6D2:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47E619 endp




sub_47E6D9 proc near
push    esi
mov     esi, edx
test    ebx, ebx
jl      loc_47E784
cmp     ebx, 400h
jge     loc_47E784
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx], 9000000h
or      ecx, 2C000000h
mov     [edx+4], ecx
mov     word ptr [edx+0Eh], 7C00h
mov     eax, ebx
sar     eax, 8
add     eax, 15h
or      al, 20h
mov     [edx+16h], ax
mov     byte ptr [edx+1Ch], 0
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 0FFh
mov     al, [edx+24h]
mov     [edx+14h], al
mov     [edx+15h], bl
mov     [edx+0Dh], bl
mov     [edx+25h], bl
mov     [edx+1Dh], bl
mov     word ptr [edx+18h], 20h ; ' '
mov     ax, [edx+18h]
mov     [edx+8], ax
mov     word ptr [edx+20h], 11Fh
mov     ax, [edx+20h]
mov     [edx+10h], ax
mov     [edx+12h], si
mov     eax, esi
mov     [edx+0Ah], ax
inc     esi
mov     [edx+22h], si
mov     [edx+1Ah], si
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6

loc_47E784:
pop     esi
retn
sub_47E6D9 endp




sub_47E786 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, 1Fh
jmp     short loc_47E796

loc_47E791:
dec     edx
test    edx, edx
jl      short loc_47E7A8

loc_47E796:
mov     eax, edx
call    sub_4DE290
test    eax, eax
jz      short loc_47E791
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0

loc_47E7A8:
mov     eax, ecx
call    sub_4DE439
pop     edx
pop     ecx
retn
sub_47E786 endp




sub_47E7B2 proc near
push    ebx
push    edx
test    eax, eax
jnz     short loc_47E7DB
mov     eax, offset unk_560D04
xor     edx, edx

loc_47E7BF:
mov     dword ptr [eax], 0
add     eax, 4
inc     edx
cmp     edx, 40h ; '@'
jl      short loc_47E7BF
call    sub_4A0B90
call    sub_4A0BB9
pop     edx
pop     ebx
retn

loc_47E7DB:
mov     ebx, 8
mov     edx, offset unk_560D04
mov     eax, offset unk_7519CC
call    sub_4EECEF
pop     edx
pop     ebx
retn
sub_47E7B2 endp




sub_47E7F2 proc near
push    edx
test    eax, eax
jnz     short loc_47E80D
mov     eax, offset unk_560DC4
xor     edx, edx

loc_47E7FE:
mov     dword ptr [eax], 0
add     eax, 4
inc     edx
cmp     edx, 10h
jl      short loc_47E7FE

loc_47E80D:
xor     edx, edx
mov     ds:dword_560BDC, edx
mov     ds:dword_77E5E8, edx
mov     ds:dword_77E5EC, edx
mov     ds:dword_77E5F0, edx
pop     edx
retn
sub_47E7F2 endp




sub_47E829 proc near
inc     byte ptr ds:dword_77E7D5+2
retn
sub_47E829 endp




sub_47E830 proc near
push    ecx
push    edx
mov     edx, offset dword_560BDC
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_47E858
cmp     byte ptr ds:dword_77EA5A+2, 0
jnz     short loc_47E858
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
call    ds:funcs_47E851[eax*4]

loc_47E858:
cmp     byte ptr [edx], 0
jz      short loc_47E885
cmp     byte ptr [edx+1], 0FFh
jz      short loc_47E871
xor     ecx, ecx
mov     cl, [edx+1]
mov     eax, edx
call    ds:funcs_47E86A[ecx*4]

loc_47E871:
cmp     byte ptr [edx], 0
jnz     short loc_47E885
xor     eax, eax
mov     al, [edx+1]
add     eax, 380h
call    sub_47E8B8

loc_47E885:
pop     edx
pop     ecx
retn
sub_47E830 endp




sub_47E888 proc near
push    ecx
mov     ecx, eax
and     ecx, 7
mov     ch, 80h
shr     ch, cl
mov     cl, ch
shr     eax, 3
add     eax, offset unk_560D04
mov     al, [eax]
and     eax, 0FFh
and     ecx, 0FFh
test    eax, ecx
jz      short loc_47E8B4
mov     eax, 1
pop     ecx
retn

loc_47E8B4:
xor     eax, eax
pop     ecx
retn
sub_47E888 endp




sub_47E8B8 proc near
push    ecx
push    edx
mov     edx, eax

loc_47E8BC:
mov     ecx, edx
and     ecx, 7
mov     al, 80h
shr     al, cl
mov     cl, al
mov     eax, edx
shr     eax, 3
add     eax, offset unk_560D04
or      [eax], cl
cmp     edx, 500h
jb      short loc_47E901
cmp     edx, 520h
jnb     short loc_47E901
xor     eax, eax
jmp     short loc_47E8ED

loc_47E8E7:
inc     eax
cmp     eax, 20h ; ' '
jge     short loc_47E901

loc_47E8ED:
cmp     byte ptr ds:(dword_5F88B5+3)[eax], 0
jnz     short loc_47E8E7
mov     cl, dl
sub     cl, 0FFh
mov     byte ptr ds:(dword_5F88B5+3)[eax], cl

loc_47E901:
cmp     ds:byte_5F84D0, 0
jz      short loc_47E944
cmp     edx, 53Ah
jb      short loc_47E944
cmp     edx, 53Ch
ja      short loc_47E944
mov     eax, 53Ah
call    sub_47E888
mov     ecx, eax
mov     eax, 53Bh
call    sub_47E888
add     cl, al
mov     eax, 53Ch
call    sub_47E888
add     cl, al
mov     ds:byte_5F84D0, cl

loc_47E944:
lea     ecx, [edx-500h]
cmp     ecx, 80h
jnb     loc_47EA47
lea     eax, [edx+80h]
cmp     ecx, 20h ; ' '
jb      loc_47EA42
lea     ecx, [edx-520h]
cmp     ecx, 20h ; ' '
jnb     loc_47EA1D
cmp     edx, 528h
jnz     short loc_47E9CC
mov     eax, 582h
call    sub_47E8B8
mov     eax, 583h
call    sub_47E8B8
mov     eax, 584h
call    sub_47E8B8
mov     eax, 585h
call    sub_47E8B8
mov     eax, 586h
call    sub_47E8B8
mov     eax, 587h
call    sub_47E8B8
mov     eax, 5C1h
call    sub_47E8B8
mov     eax, 5C2h
call    sub_47E8B8

loc_47E9CC:
cmp     edx, 53Ah
jnz     short loc_47E9E8
mov     eax, 5BAh
call    sub_47EA91
mov     eax, 5BBh
call    sub_47E8B8

loc_47E9E8:
cmp     edx, 53Bh
jnz     short loc_47EA04
mov     eax, 5BBh
call    sub_47EA91
mov     eax, 5BCh
call    sub_47E8B8

loc_47EA04:
cmp     edx, 53Ch
jnz     loc_47E885
mov     eax, 5BCh
call    sub_47EA91
pop     edx
pop     ecx
retn

loc_47EA1D:
lea     ecx, [edx-540h]
cmp     ecx, 4
jb      short loc_47EA42
lea     ecx, [edx-544h]
cmp     ecx, 14h
jb      loc_47E885
lea     ecx, [edx-558h]
cmp     ecx, 28h ; '('
jnb     short loc_47EA47

loc_47EA42:
call    sub_47E8B8

loc_47EA47:
cmp     edx, 2Ah ; '*'
jnz     short loc_47EA6A
mov     eax, 580h
call    sub_47E8B8
mov     eax, 581h
call    sub_47E8B8
mov     eax, 5C3h
call    sub_47E8B8

loc_47EA6A:
cmp     edx, 51h ; 'Q'
jnz     loc_47E885
mov     eax, 5BAh
call    sub_47E8B8
mov     eax, 588h
call    sub_47E8B8
mov     edx, 589h
jmp     loc_47E8BC
sub_47E8B8 endp




sub_47EA91 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, eax
and     ecx, 7
mov     bl, 80h
shr     bl, cl
xor     bl, 0FFh
shr     eax, 3
add     eax, offset unk_560D04
and     [eax], bl
cmp     edx, 500h
jb      short loc_47EB04
cmp     edx, 520h
jnb     short loc_47EB04
xor     eax, eax
lea     ecx, [edx-4FFh]
jmp     short loc_47EACC

loc_47EAC6:
inc     eax
cmp     eax, 20h ; ' '
jge     short loc_47EAE0

loc_47EACC:
xor     ebx, ebx
mov     bl, byte ptr ds:(dword_5F88B5+3)[eax]
cmp     ebx, ecx
jnz     short loc_47EAC6
xor     cl, cl
mov     byte ptr ds:(dword_5F88B5+3)[eax], cl

loc_47EAE0:
xor     eax, eax
lea     ecx, [edx-4FFh]
jmp     short loc_47EAF0

loc_47EAEA:
inc     eax
cmp     eax, 3
jge     short loc_47EB04

loc_47EAF0:
xor     ebx, ebx
mov     bl, byte ptr ds:(dword_5F88B1+3)[eax]
cmp     ebx, ecx
jnz     short loc_47EAEA
xor     ch, ch
mov     byte ptr ds:(dword_5F88B1+3)[eax], ch

loc_47EB04:
pop     edx
pop     ecx
pop     ebx
retn
sub_47EA91 endp

push    edx
mov     eax, ds:dword_77E6B8
mov     dl, [eax]
mov     byte ptr ds:word_55A2D8, dl
mov     dl, [eax+1]
mov     byte ptr ds:word_55A2D8+1, dl
mov     dx, ds:word_55A2D8
add     eax, 2
mov     ds:dword_77E6B8, eax
mov     eax, edx
pop     edx
retn



sub_47EB32 proc near
push    edx
mov     dl, [eax]
mov     byte ptr ds:word_55A2D8, dl
mov     al, [eax+1]
mov     byte ptr ds:word_55A2D8+1, al
mov     ax, ds:word_55A2D8
pop     edx
retn
sub_47EB32 endp




sub_47EB4B proc near
push    ebx
push    ecx
push    edx
cmp     ds:word_5F83D2, 0
jl      short loc_47EBC7
mov     ecx, offset dword_560BDC
mov     byte ptr ds:dword_560BDC, 1
xor     dl, dl
mov     ds:byte_560BE5, dl
mov     ds:byte_560BE4, dl
mov     byte ptr ds:dword_560BDC+1, al
xor     edx, edx
mov     ds:dword_560BEC, edx
xor     ebx, ebx
mov     ds:dword_560BE8, edx
mov     ds:dword_560BF8, edx
mov     ds:dword_560BF4, edx
mov     ds:dword_560BF0, edx
xor     eax, eax
mov     ds:dword_560BE0, edx
xor     bl, dl
mov     ds:byte_560BE7, bl
xor     bh, dh
mov     ds:byte_560BE6, bh
mov     ds:dword_560C80, edx

loc_47EBB7:
mov     edx, eax
mov     dword ptr [ecx+edx*4+24h], 0
inc     eax
cmp     eax, 10h
jl      short loc_47EBB7

loc_47EBC7:
pop     edx
pop     ecx
pop     ebx
retn
sub_47EB4B endp




sub_47EBCB proc near
cmp     byte ptr ds:dword_77E7DC+2, 0
jnz     short loc_47EBE9
xor     eax, eax
mov     al, byte ptr ds:dword_560BDC+1
add     eax, 380h
call    sub_47E888
test    eax, eax
jz      short loc_47EBF8

loc_47EBE9:
test    byte ptr ds:word_5708DE, 8
jz      short loc_47EBF8
mov     eax, 1

locret_47EBF7:
retn

loc_47EBF8:
xor     eax, eax
retn
sub_47EBCB endp




sub_47EBFB proc near
push    ecx
push    edx
xor     edx, edx
mov     ds:dword_77E5E4, edx
xor     eax, eax

loc_47EC07:
xor     ecx, ecx
mov     ds:dword_560C84[eax*4], ecx
inc     eax
cmp     eax, 20h ; ' '
jl      short loc_47EC07

loc_47EC16:
pop     edx
pop     ecx
retn
sub_47EBFB endp




sub_47EC19 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
xor     ebx, ebx

loc_47EC21:
movsx   eax, bx
cmp     eax, [edx]
jnb     short loc_47EC6B
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
mov     ds:dword_560C84[eax*4], esi
and     byte ptr [esi+6], 0DFh
movsx   ecx, cx
mov     eax, 80000000h
shr     eax, cl
or      ds:dword_77E5E4, eax
inc     ebx
jmp     short loc_47EC21

loc_47EC6B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47EC19 endp

push    ecx
mov     ecx, eax
mov     eax, edx
shl     eax, 2
add     edx, eax
shl     edx, 2
mov     eax, [ecx+4]
add     eax, edx
xor     edx, edx
mov     dl, [eax]
call    sub_49DB4D
movsx   eax, dx
mov     ecx, ds:dword_560C00[eax*4]
mov     ds:dword_560C84[eax*4], ecx
movsx   ecx, dx
mov     eax, 80000000h
shr     eax, cl
or      ds:dword_77E5E4, eax
pop     ecx
retn



sub_47ECAE proc near
push    ebx
push    ecx
push    edx
push    esi
xor     ebx, ebx

loc_47ECB4:
mov     edx, ds:dword_77E5E4
test    edx, edx
jz      short loc_47EC6B
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
test    eax, edx
jz      loc_47EDA1
mov     edx, ds:dword_560C84[ebx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 40h ; '@'
jb      short loc_47ED06
jbe     short loc_47ED10
cmp     eax, 60h ; '`'
jb      loc_47ED90
jbe     loc_47ED64
cmp     eax, 0E0h
jz      loc_47ED78
jmp     loc_47ED90

loc_47ED06:
cmp     eax, 20h ; ' '
jz      short loc_47ED38
jmp     loc_47ED90

loc_47ED10:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
mov     ecx, eax
shl     ecx, 2
mov     eax, ds:dword_77E6D4
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
mov     esi, ecx
shl     esi, 2
mov     ecx, [eax]
mov     eax, edx
call    dword ptr [ecx+esi]
jmp     short loc_47ED90

loc_47ED38:
cmp     byte ptr [edx+2], 10h
jz      short loc_47ED5B
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
mov     ecx, ds:dword_77E6F0
movzx   esi, byte ptr [edx+4]
mov     ecx, [ecx+eax*4]
mov     eax, edx
call    dword ptr [ecx+esi*4]
jmp     short loc_47ED90

loc_47ED5B:
mov     eax, edx
call    sub_4DE2F6
jmp     short loc_47ED90

loc_47ED64:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0
jmp     short loc_47ED8A

loc_47ED78:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6D8

loc_47ED8A:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_47ED90:
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_77E5E4, eax

loc_47EDA1:
inc     ebx
jmp     loc_47ECB4
sub_47ECAE endp




sub_47EDA7 proc near
push    ebx
push    ecx
push    edx
mov     bl, al
movsx   ecx, al
mov     eax, 80000000h
shr     eax, cl
test    ds:dword_77E5E4, eax
jz      loc_47EE7E
movsx   edx, bl
mov     edx, ds:dword_560C84[edx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 40h ; '@'
jb      short loc_47EDF4
jbe     short loc_47EDFE
cmp     eax, 60h ; '`'
jb      loc_47EE6C
jbe     short loc_47EE41
cmp     eax, 0E0h
jz      short loc_47EE55
jmp     loc_47EE6C

loc_47EDF4:
cmp     eax, 20h ; ' '
jz      short loc_47EE1E
jmp     loc_47EE6C

loc_47EDFE:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6D4

loc_47EE10:
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
shl     ecx, 2
mov     eax, [eax]
jmp     short loc_47EE66

loc_47EE1E:
cmp     byte ptr [edx+2], 10h
jz      short loc_47EE38
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6F0
jmp     short loc_47EE10

loc_47EE38:
mov     eax, edx
call    sub_4DE2F6
jmp     short loc_47EE6C

loc_47EE41:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0
jmp     short loc_47EE66

loc_47EE55:
mov     byte ptr [edx+8], 2
xor     ecx, ecx
mov     cl, [edx+2]
shl     ecx, 2
mov     eax, ds:dword_77E6D8

loc_47EE66:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_47EE6C:
movsx   ecx, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_77E5E4, eax

loc_47EE7E:
pop     edx
pop     ecx
pop     ebx
retn
sub_47EDA7 endp




sub_47EE82 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, 2E0h
jmp     short loc_47EEA1

loc_47EE8D:
mov     eax, edx
call    sub_47EA91

loc_47EE94:
inc     edx
cmp     edx, 2EBh
ja      loc_47EC16

loc_47EEA1:
cmp     ecx, edx
jnz     short loc_47EE8D
mov     eax, edx
call    sub_47E8B8
jmp     short loc_47EE94
sub_47EE82 endp




sub_47EEAE proc near
push    edx
push    edi
cwde
mov     ax, ds:word_519850[eax*2]
mov     dx, word ptr ds:unk_77E7E4
add     edx, eax
mov     word ptr ds:unk_77E7E4, dx
test    dx, dx
jge     short loc_47EED9
xor     edi, edi
mov     word ptr ds:unk_77E7E4, di
jmp     short loc_47EEE9

loc_47EED9:
cmp     dx, 0FFh
jle     short loc_47EEE9
mov     word ptr ds:unk_77E7E4, 0FFh

loc_47EEE9:
call    sub_4377CA
pop     edi
pop     edx
retn
sub_47EEAE endp




sub_47EEF1 proc near
push    ecx
mov     ecx, edx
lea     edx, [eax+7C0h]
add     eax, 7E0h
test    ecx, ecx
jz      short loc_47EF15
call    sub_47E8B8
test    ebx, ebx
jz      short loc_47EF1A
mov     eax, edx
call    sub_47E8B8
pop     ecx
retn

loc_47EF15:
call    sub_47EA91

loc_47EF1A:
mov     eax, edx
call    sub_47EA91
pop     ecx
retn
sub_47EEF1 endp




sub_47EF23 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     ecx, edx
xor     edi, edi
jmp     short loc_47EF37

loc_47EF2F:
inc     edi
inc     ecx
inc     esi
cmp     edi, 8
jge     short loc_47EF5F

loc_47EF37:
cmp     byte ptr [esi], 0
jz      short loc_47EF5F
mov     dl, [ecx]
cmp     dl, 0FFh
jz      short loc_47EF2F
xor     eax, eax
mov     al, dl
mov     ebx, eax
sar     ebx, 1
and     ebx, 1
and     al, 1
xor     edx, edx
mov     dl, al
xor     eax, eax
mov     al, [esi]
call    sub_47EEF1
jmp     short loc_47EF2F

loc_47EF5F:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_47EF23 endp




sub_47EF64 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_47EF6A[edx*4]
pop     edx
retn
sub_47EF64 endp




sub_47EF73 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     esi, offset dword_77EA48
mov     al, [eax+5]
test    al, al
jbe     short loc_47EF93
cmp     al, 1
jz      short loc_47EFAC
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47EF93:
or      ds:byte_5F836A, 3
mov     edx, 80h
mov     eax, 8
call    sub_4DC979
inc     byte ptr [ecx+5]

loc_47EFAC:
mov     eax, ebx
call    sub_4B55D5
test    eax, eax
jz      short loc_47EFE6
mov     ebx, [esi+0Eh]
sar     ebx, 10h
sar     ebx, 0Ah
shl     ebx, 2
mov     eax, ds:off_519AE8[ebx]
mov     ds:dword_77E6B4, eax
mov     dword ptr [ecx+0A4h], offset unk_519B08
mov     dword ptr [ecx+0Ch], 0
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

loc_47EFE6:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47EF73 endp

align 4
jpt_47F039 dd offset loc_47F040 ; jump table for switch statement
dd offset loc_47F11D
dd offset loc_47F131
dd offset loc_47F155
dd offset loc_47F161
dd offset loc_47F16D
dd offset loc_47F19D
dd offset loc_47F1B4
dd offset loc_47F1D2
dd offset loc_47F11D
dd offset loc_47F2D0
dd offset loc_47F155
dd offset loc_47F161
dd offset loc_47F2E9



sub_47F024 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 0Dh         ; switch 14 cases
ja      def_47F039      ; jumptable 0047F039 default case
xor     edx, edx
mov     dl, al
jmp     jpt_47F039[edx*4] ; switch jump

loc_47F040:             ; jumptable 0047F039 case 0
mov     ebx, ds:dword_77EA48+2
sar     ebx, 10h
mov     edx, ds:dword_77EA48
sar     edx, 10h
mov     eax, ds:dword_77EA44+2
sar     eax, 10h
call    sub_49D881
mov     byte ptr ds:dword_5F836C, 3
mov     bl, 1
mov     byte ptr ds:dword_5F836C+1, bl
mov     eax, ds:dword_77EA56
sar     eax, 10h
call    sub_4EF008
shl     eax, 6
sar     eax, 0Ch
mov     edx, ds:dword_77EA44+2
sar     edx, 10h
add     eax, edx
mov     word ptr ds:dword_5F889A+2, ax
mov     ax, word ptr ds:dword_5F837A
mov     word ptr ds:dword_5F889E, ax
mov     eax, ds:dword_77EA56
sar     eax, 10h
call    sub_4EF003
shl     eax, 6
sar     eax, 0Ch
mov     edx, ds:dword_77EA48+2
sar     edx, 10h
add     eax, edx
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
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     ax, word ptr ds:dword_77EA56+2
mov     word ptr ds:dword_5F88A4+2, ax
mov     ds:word_5F88A8, si
mov     ds:byte_5F88AC, 30h ; '0'
add     [ecx+5], bl
jmp     def_47F039      ; jumptable 0047F039 default case

loc_47F11D:             ; jumptable 0047F039 cases 1,9
inc     al
mov     [ecx+5], al
mov     eax, 7B1h
call    sub_47E8B8
jmp     def_47F039      ; jumptable 0047F039 default case

loc_47F131:             ; jumptable 0047F039 case 2
mov     eax, 7B2h
call    sub_47E888
test    eax, eax
jnz     def_47F039      ; jumptable 0047F039 default case
inc     byte ptr ds:dword_5F836C+1
mov     byte ptr [ecx+0Ah], 0

loc_47F14D:
