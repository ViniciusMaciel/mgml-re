loc_4875BB:
movsx   ecx, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_51F11C, eax

loc_4875CD:
pop     edx
pop     ecx
pop     ebx
retn
sub_487546 endp




sub_4875D1 proc near
push    ecx
xor     ecx, ecx
mov     cl, al
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, offset unk_55A440
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
and     edx, 0FFh
mov     edx, ds:off_520300[edx*4]
mov     [eax+4], edx
pop     ecx
retn
sub_4875D1 endp




sub_487602 proc near
push    edx
xor     edx, edx
mov     dl, al
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset unk_55A440
mov     byte ptr [eax], 0
pop     edx
retn
sub_487602 endp




sub_48761B proc near
push    edx
xor     edx, edx
mov     eax, offset unk_55A440

loc_487623:
mov     byte ptr [eax], 0
mov     [eax+1], dl
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
add     eax, 0Ch
inc     edx
cmp     edx, 8
jl      short loc_487623
mov     byte ptr [eax], 0
pop     edx
retn
sub_48761B endp




sub_48763F proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_487645[edx*4]
mov     edx, offset unk_55A4AC

loc_487651:
cmp     edx, offset dword_55A50C
jnb     short loc_487668
test    byte ptr [edx], 1
jz      short loc_487663
mov     eax, edx
call    dword ptr [edx+4]

loc_487663:
add     edx, 0Ch
jmp     short loc_487651

loc_487668:
pop     edx
retn
sub_48763F endp

db 90h
jpt_487690 dd offset loc_487697 ; jump table for switch statement
dd offset loc_48772F
dd offset loc_487748
dd offset loc_487770



sub_48767B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      def_487690      ; jumptable 00487690 default case
and     eax, 0FFh
jmp     jpt_487690[eax*4] ; switch jump

loc_487697:             ; jumptable 00487690 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_487690      ; jumptable 00487690 default case
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_520CAC
mov     dword ptr [ecx+0A4h], offset unk_520C9C
mov     edx, 0Ah
xor     eax, eax
call    sub_4A0E24
mov     eax, 607h
call    sub_47EA91
mov     eax, 608h
call    sub_47EA91
mov     eax, 609h
call    sub_47EA91
mov     eax, 604h
call    sub_47EA91
call    sub_487C36
xor     edx, edx
xor     eax, eax
call    sub_487BEC
mov     edx, 1
mov     eax, edx
call    sub_487BEC
mov     edx, 2
mov     eax, edx
call    sub_487BEC

loc_487727:
inc     byte ptr [ecx+6]
jmp     def_487690      ; jumptable 00487690 default case

loc_48772F:             ; jumptable 00487690 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_487690      ; jumptable 00487690 default case
mov     eax, 608h
call    sub_47E8B8
jmp     short loc_487727

loc_487748:             ; jumptable 00487690 case 2
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      def_487690      ; jumptable 00487690 default case
mov     eax, 604h
call    sub_47EA91
mov     eax, 0Ah
call    sub_49E0D7
jmp     short loc_487727

loc_487770:             ; jumptable 00487690 case 3
cmp     ds:word_6E23D6, 0
jnz     short def_487690 ; jumptable 00487690 default case
xor     eax, eax
call    sub_487C1D
mov     eax, 1
call    sub_487C1D
mov     eax, 2
call    sub_487C1D
call    sub_487B46
mov     ah, 2
mov     byte ptr ds:dword_77EA5A+2, ah
mov     ds:byte_77EA5E, 6
mov     dh, 1
mov     ds:byte_77EA5F, dh
xor     ebx, ebx
mov     word ptr ds:dword_77EA4E+2, bx
mov     word ptr ds:dword_77EA52, bx
mov     word ptr ds:dword_77EA52+2, bx
mov     word ptr ds:dword_77EA5A, bx
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, ah
mov     byte ptr ds:dword_77E954, dh
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     [ecx], bl

def_487690:             ; jumptable 00487690 default case
cmp     byte ptr [ecx+6], 0
jbe     short loc_48780E
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_48780E
mov     edx, eax
mov     eax, ecx
call    dword ptr [edx+4]

loc_48780E:
mov     dh, [ecx+6]
test    dh, dh
jbe     short loc_487845
cmp     dh, 3
jnb     short loc_487845
call    sub_47EBCB
test    eax, eax
jz      short loc_487845
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
mov     eax, 604h
call    sub_47E8B8
mov     byte ptr [ecx+6], 2

loc_487845:
pop     edx
pop     ecx
pop     ebx
retn
sub_48767B endp

db 8Bh, 0C0h
jpt_48787D dd offset loc_487884 ; jump table for switch statement
dd offset loc_487889
dd offset loc_4878F1
dd offset loc_487911
dd offset loc_48792C
dd offset def_48787D



sub_487863 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     al, [eax+2]
cmp     al, 5           ; switch 6 cases
ja      def_48787D      ; jumptable 0048787D default case, case 5
xor     edx, edx
mov     dl, al
jmp     jpt_48787D[edx*4] ; switch jump

loc_487884:             ; jumptable 0048787D case 0
inc     al
mov     [ecx+2], al

loc_487889:             ; jumptable 0048787D case 1
mov     byte ptr [ebx+8], 3
mov     byte ptr [ebx+9], 1
or      byte ptr [ebx+0BDh], 10h
mov     dword ptr [ebx+528h], 2580000h
mov     dword ptr [ebx+52Ch], 0FCFF0000h
mov     dword ptr [ebx+530h], 8340000h
lea     edx, [ebx+538h]
lea     eax, [ebx+528h]
call    sub_4DD57B
mov     word ptr [ebx+540h], 0
mov     word ptr [ebx+542h], 990h
mov     word ptr [ebx+544h], 0
mov     byte ptr [ebx+548h], 30h ; '0'

loc_4878E9:
inc     byte ptr [ecx+2]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4878F1:             ; jumptable 0048787D case 2
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short def_48787D ; jumptable 0048787D default case, case 5
mov     eax, 607h
call    sub_47EA91
mov     word ptr [ecx+8], 20h ; ' '
jmp     short loc_4878E9

loc_487911:             ; jumptable 0048787D case 3
mov     si, [ecx+8]
dec     si
mov     [ecx+8], si
jnz     short def_48787D ; jumptable 0048787D default case, case 5
mov     ds:byte_5F88AC, 0Dh
mov     word ptr [ecx+8], 10h
jmp     short loc_4878E9

loc_48792C:             ; jumptable 0048787D case 4
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jnz     short loc_48794B
mov     ds:byte_5F88AC, 30h ; '0'
mov     eax, 608h
call    sub_47EA91
jmp     short loc_4878E9

loc_48794B:
mov     ax, word ptr ds:dword_5F88A4+2
sub     eax, 30h ; '0'
and     ah, 0Fh
mov     word ptr ds:dword_5F88A4+2, ax

def_48787D:             ; jumptable 0048787D default case, case 5
pop     esi

def_487A8F:             ; jumptable 00487A8F default case, case 3
pop     edx
pop     ecx
pop     ebx
retn
sub_487863 endp

db 90h
jpt_487991 dd offset loc_487998 ; jump table for switch statement
dd offset loc_4879A3
dd offset loc_4879DC
dd offset loc_487A18
dd offset loc_487A48



sub_487977 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, ds:dword_55A518
mov     al, [eax+2]
cmp     al, 4           ; switch 5 cases
ja      def_487991      ; jumptable 00487991 default case
and     eax, 0FFh
jmp     jpt_487991[eax*4] ; switch jump

loc_487998:             ; jumptable 00487991 case 0
mov     word ptr [edx+56h], 200h
jmp     loc_487A5B

loc_4879A3:             ; jumptable 00487991 case 1
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      def_487991      ; jumptable 00487991 default case
mov     eax, 608h
call    sub_47EA91
mov     eax, 607h
call    sub_47E8B8
mov     byte ptr [edx+9], 3
mov     word ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 0
jmp     loc_487A5B

loc_4879DC:             ; jumptable 00487991 case 2
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      def_487991      ; jumptable 00487991 default case
mov     eax, 608h
call    sub_47EA91
mov     eax, 607h
call    sub_47EA91
mov     byte ptr [edx+9], 3
mov     word ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1
mov     word ptr [edx+56h], 0
jmp     short loc_487A5B

loc_487A18:             ; jumptable 00487991 case 3
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      short def_487991 ; jumptable 00487991 default case
mov     eax, 608h
call    sub_47EA91
mov     byte ptr [edx+9], 1
mov     word ptr [edx+0Ah], 0
mov     edx, 0Bh
xor     eax, eax
call    sub_4A0E24
jmp     short loc_487A5B

loc_487A48:             ; jumptable 00487991 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_487991 ; jumptable 00487991 default case
mov     eax, 604h
call    sub_47E8B8

loc_487A5B:
inc     byte ptr [ecx+2]

def_487991:             ; jumptable 00487991 default case
pop     edx
pop     ecx
retn
sub_487977 endp

db 8Bh, 0C0h
jpt_487A8F dd offset loc_487A96 ; jump table for switch statement
dd offset loc_487A9F
dd offset loc_487ABE
dd offset def_487A8F



sub_487A73 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, ds:dword_55A51C
mov     cl, [edx+2]
cmp     cl, 3           ; switch 4 cases
ja      def_487A8F      ; jumptable 00487A8F default case, case 3
and     ecx, 0FFh
jmp     jpt_487A8F[ecx*4] ; switch jump

loc_487A96:             ; jumptable 00487A8F case 0
mov     word ptr [edx+8], 258h
inc     byte ptr [edx+2]

loc_487A9F:             ; jumptable 00487A8F case 1
mov     bx, [edx+8]
dec     bx
mov     [edx+8], bx
jnz     def_487A8F      ; jumptable 00487A8F default case, case 3
mov     byte ptr [eax+9], 2
mov     [eax+0Ah], bx

loc_487AB7:
inc     byte ptr [edx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_487ABE:             ; jumptable 00487A8F case 2
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      def_487A8F      ; jumptable 00487A8F default case, case 3
mov     eax, 609h
call    sub_47EA91
jmp     short loc_487AB7
sub_487A73 endp




sub_487ADC proc near
call    sub_49DBD1
jmp     sub_49DECF
sub_487ADC endp




sub_487AE6 proc near
push    ebx
push    ecx
push    edx
push    esi
movsx   edx, al
shl     edx, 3
add     edx, offset unk_520D00
xor     ebx, ebx

loc_487AF8:
movsx   eax, bx
cmp     eax, [edx]
jnb     def_48787D      ; jumptable 0048787D default case, case 5
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
mov     ds:dword_55A50C[eax*4], esi
and     byte ptr [esi+6], 0DFh
movsx   ecx, cx
mov     eax, 80000000h
shr     eax, cl
or      ds:dword_520410, eax
inc     ebx
jmp     short loc_487AF8
sub_487AE6 endp




sub_487B46 proc near
push    edx
xor     edx, edx

loc_487B49:
cmp     ds:dword_520410, 0
jz      loc_487668
movsx   eax, dl
call    sub_487B61
inc     edx
jmp     short loc_487B49
sub_487B46 endp




sub_487B61 proc near
push    ebx
push    ecx
push    edx
mov     bl, al
movsx   ecx, al
mov     eax, 80000000h
shr     eax, cl
test    ds:dword_520410, eax
jz      loc_487BE8
movsx   edx, bl
mov     edx, ds:dword_55A50C[edx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_487BD6
jbe     short loc_487B9E
cmp     eax, 60h ; '`'
jz      short loc_487BBE
jmp     short loc_487BD6

loc_487B9E:
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
jmp     short loc_487BD0

loc_487BBE:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0

loc_487BD0:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_487BD6:
movsx   ecx, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_520410, eax

loc_487BE8:
pop     edx
pop     ecx
pop     ebx
retn
sub_487B61 endp




sub_487BEC proc near
push    ecx
xor     ecx, ecx
mov     cl, al
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, offset unk_55A4AC
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
and     edx, 0FFh
mov     edx, ds:off_520CF4[edx*4]
mov     [eax+4], edx
pop     ecx
retn
sub_487BEC endp




sub_487C1D proc near
push    edx
xor     edx, edx
mov     dl, al
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset unk_55A4AC
mov     byte ptr [eax], 0
pop     edx
retn
sub_487C1D endp




sub_487C36 proc near
push    edx
xor     edx, edx
mov     eax, offset unk_55A4AC

loc_487C3E:
mov     byte ptr [eax], 0
mov     [eax+1], dl
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
add     eax, 0Ch
inc     edx
cmp     edx, 8
jl      short loc_487C3E
mov     byte ptr [eax], 0
pop     edx
retn
sub_487C36 endp




sub_487C5A proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_487C60[edx*4]
pop     edx
retn
sub_487C5A endp

align 2
jpt_487C99 dd offset loc_487CA0 ; jump table for switch statement
dd offset loc_487CCD
dd offset loc_487D76
dd offset loc_487D7E
dd offset loc_487D9A



sub_487C7E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_487C99      ; jumptable 00487C99 default case
and     eax, 0FFh
jmp     jpt_487C99[eax*4] ; switch jump

loc_487CA0:             ; jumptable 00487C99 case 0
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_520D60
mov     dword ptr [esi+0A4h], offset unk_520DAC
mov     dword ptr [esi+0Ch], 0
mov     byte ptr [esi+0Ah], 0
inc     byte ptr [esi+5]

loc_487CCD:             ; jumptable 00487C99 case 1
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      def_487C99      ; jumptable 00487C99 default case
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 0
mov     word ptr [ecx+53Ah], 0FFFFh
mov     word ptr [ecx+53Ch], 0DA80h
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
xor     ebx, ebx
mov     ds:word_57096A, bx
mov     eax, offset unk_520D4C
call    sub_49DB4D

loc_487D71:
inc     byte ptr [esi+5]
jmp     short def_487C99 ; jumptable 00487C99 default case

loc_487D76:             ; jumptable 00487C99 case 2
inc     byte ptr ds:dword_5F836C+1
jmp     short loc_487D71

loc_487D7E:             ; jumptable 00487C99 case 3
or      ds:byte_5F8421, 20h
mov     ds:word_77EA80, 6Eh ; 'n'
mov     eax, 0B000Ah
call    sub_4D8E42
jmp     short loc_487D71

loc_487D9A:             ; jumptable 00487C99 case 4
call    sub_4D8ECC
test    eax, eax
jz      short def_487C99 ; jumptable 00487C99 default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_520DBC
mov     dword ptr [esi+0A4h], offset unk_520FD4
inc     byte ptr [esi+4]
mov     byte ptr [esi+5], 0

def_487C99:             ; jumptable 00487C99 default case
call    sub_49DBD1
call    sub_49DECF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_487C7E endp




sub_487DD2 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_487DFD
call    sub_47EBCB
test    eax, eax
jz      short loc_487DF0
mov     byte ptr [edx+0Ah], 1
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_487DF0:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
jmp     short loc_487E04

loc_487DFD:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 1

loc_487E04:
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_487DD2 endp

db 8Bh, 0C0h
jpt_487E38 dd offset loc_487E3F ; jump table for switch statement
dd offset loc_487EBB
dd offset loc_487EE6
dd offset loc_487EFD
dd offset loc_487F16



sub_487E22 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_487E38      ; jumptable 00487E38 default case
and     eax, 0FFh
jmp     jpt_487E38[eax*4] ; switch jump

loc_487E3F:             ; jumptable 00487E38 case 0
call    sub_4E1D8A
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0F8D3h
mov     word ptr ds:dword_5F889E, 0FCFFh
mov     word ptr ds:dword_5F889E+2, 9Dh
mov     ds:dword_5F888C, 0F8D30000h
mov     ds:dword_5F8890, 0FCFF0000h
mov     ds:dword_5F8894, 9D0000h
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 0A08h
mov     ds:word_5F88A8, di
xor     bh, bh
mov     ds:byte_5F88AC, bh

loc_487EB3:
inc     byte ptr [ecx+5]
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_487EBB:             ; jumptable 00487E38 case 1
call    sub_4D8EB1
mov     eax, [ecx+24h]
call    sub_4DE2F6
mov     eax, offset byte_5F8364
call    sub_4B565A
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_487EB3
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
jmp     short loc_487EB3

loc_487EE6:             ; jumptable 00487E38 case 2
cmp     ds:byte_77EAB8, 0
jnz     short def_487E38 ; jumptable 00487E38 default case
mov     edx, 0Bh
xor     eax, eax
call    sub_4A0E24
jmp     short loc_487EB3

loc_487EFD:             ; jumptable 00487E38 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_487E38 ; jumptable 00487E38 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000009h
call    sub_4D89E4
jmp     short loc_487EB3

loc_487F16:             ; jumptable 00487E38 case 4
mov     byte ptr [ecx], 0

def_487E38:             ; jumptable 00487E38 default case
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_487E22 endp



; Attributes: thunk

sub_487F1E proc near
jmp     sub_49DBD1
sub_487F1E endp




sub_487F23 proc near
push    edx
xor     edx, edx
mov     ds:word_57096A, dx
cmp     dword ptr [eax+10h], 130h
jle     short loc_487F42
mov     ax, ds:word_5F8488
mov     ds:word_57096A, ax

loc_487F42:
call    sub_49DBD1
pop     edx
retn
sub_487F23 endp




sub_487F49 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     ebx, [eax+10h]
test    ebx, ebx
jnz     short loc_487FB5
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0F7FCh
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 0F1E0h
mov     ds:dword_5F888C, 0F7FC0000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 0F1E00000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, ax
jmp     short loc_487FC6

loc_487FB5:
cmp     ebx, 1
jnz     short loc_487FC6
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D

loc_487FC6:
xor     edi, edi
mov     ds:word_57096A, di
cmp     dword ptr [edx+10h], 78h ; 'x'
jge     short loc_487FFE
mov     ax, [ecx+124h]
mov     ds:word_57096A, ax
mov     esi, [edx+10h]
cmp     esi, 68h ; 'h'
jle     short loc_487FFE
cmp     esi, 76h ; 'v'
jge     short loc_487FFE
mov     dx, [ecx+12Ah]
or      eax, edx
mov     ds:word_57096A, ax

loc_487FFE:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_487F49 endp




sub_488004 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48800A[edx*4]
pop     edx
retn
sub_488004 endp




sub_488013 proc near
push    edx
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_4880AA
mov     eax, 626h
call    sub_47E888
test    eax, eax
jz      short loc_488040
mov     byte ptr [edx+0Bh], 4
mov     byte ptr [edx+4], 4
jmp     short loc_4880A6

loc_488040:
mov     eax, 622h
call    sub_47E888
test    eax, eax
jz      short loc_48806C
mov     eax, 62Ah
call    sub_47E888
test    eax, eax
jnz     short loc_48806C
mov     eax, 62Ah
call    sub_47E8B8
mov     byte ptr [edx+0Bh], 0
jmp     short loc_4880A2

loc_48806C:
mov     eax, 623h
call    sub_47E888
test    eax, eax
jz      short loc_48807E
mov     byte ptr [edx+0Bh], 1

loc_48807E:
mov     eax, 624h
call    sub_47E888
test    eax, eax
jz      short loc_488090
mov     byte ptr [edx+0Bh], 2

loc_488090:
mov     eax, 625h
call    sub_47E888
test    eax, eax
jz      short loc_4880A2
mov     byte ptr [edx+0Bh], 3

loc_4880A2:
mov     byte ptr [edx+4], 1

loc_4880A6:
mov     byte ptr [edx+5], 0

loc_4880AA:
pop     edx
retn
sub_488013 endp




sub_4880AC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_4880C0
cmp     al, 1
jz      short loc_4880D8
pop     edx
pop     ecx
pop     ebx
retn

loc_4880C0:
xor     eax, eax
mov     al, [ecx+0Bh]
mov     eax, ds:dword_521460[eax*4]
call    sub_4D8E42
inc     byte ptr [ecx+5]
pop     edx
pop     ecx
pop     ebx
retn

loc_4880D8:
call    sub_4D8ECC
test    eax, eax
jz      short loc_48813F
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
xor     eax, eax
mov     al, [ecx+0Bh]
mov     eax, ds:off_521438[eax*4]
mov     ds:dword_77E6B4, eax
xor     eax, eax
mov     al, [ecx+0Bh]
mov     eax, ds:off_52144C[eax*4]
mov     [ecx+0A4h], eax
mov     dword ptr [ecx+0Ch], 0
and     ds:byte_5F8364, 0FDh
mov     byte ptr ds:dword_5F836C, 3
xor     dh, dh
mov     byte ptr ds:dword_5F836C+1, dh
mov     [ecx+0Ah], dh
call    sub_49DBD1
call    sub_49DECF
inc     byte ptr [ecx+4]
mov     [ecx+5], dh

loc_48813F:
pop     edx
pop     ecx
pop     ebx
retn
sub_4880AC endp




sub_488143 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_47EBCB
test    eax, eax
jz      short loc_488154
or      byte ptr [edx+0Ah], 1

loc_488154:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_488167
mov     bh, [edx+0Ah]
test    bh, 1
jz      short loc_48816E
test    bh, 80h
jnz     short loc_48816E

loc_488167:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_48816E:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ebx
retn
sub_488143 endp




sub_48817B proc near
push    edx
mov     edx, eax
call    sub_4D8EB1
call    sub_4E1D8A
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, 621h
call    sub_47EA91
mov     byte ptr [edx], 0
pop     edx
retn
sub_48817B endp




sub_4881AD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, 80h
mov     eax, 1Ah
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
xor     eax, eax
mov     al, [ecx+0Bh]
mov     eax, ds:off_521438[eax*4]
mov     ds:dword_77E6B4, eax
xor     eax, eax
mov     al, [ecx+0Bh]
mov     eax, ds:off_52144C[eax*4]
mov     [ecx+0A4h], eax
mov     dword ptr [ecx+0Ch], 0
and     ds:byte_5F8364, 0FDh
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 200h
mov     word ptr ds:dword_5F889E, 0FFFFh
xor     esi, esi
mov     word ptr ds:dword_5F889E+2, si
mov     ds:dword_5F888C, 2000000h
mov     ds:dword_5F8890, 0FFFF0000h
xor     esi, esi
mov     ds:dword_5F8894, esi
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 800h
xor     edx, edx
mov     ds:word_5F88A8, dx
xor     bh, bh
mov     ds:byte_5F88AC, bh
mov     eax, offset unk_521018
call    sub_49DB4D
mov     byte ptr [ecx+0Ah], 80h
mov     ebx, 1
xor     edx, edx
mov     eax, 3Bh ; ';'
call    sub_4DBCF3
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
call    sub_49DBD1
call    sub_49DECF
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4881AD endp




sub_4882A4 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_47EBCB
test    eax, eax
jz      short loc_4882B5
or      byte ptr [edx+0Ah], 1

loc_4882B5:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_4882D3
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     cl, [edx+0Ah]
test    cl, 1
jz      short loc_4882DA
test    cl, 80h
jnz     short loc_4882DA

loc_4882D3:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_4882DA:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_4882A4 endp




sub_4882E7 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+24h]
call    sub_4D8EB1
call    sub_4E1D8A
mov     ah, 1
mov     byte ptr ds:dword_77E954, ah
test    [ecx+0Ah], ah
jz      short loc_48834F
or      ds:byte_5F8364, 2
mov     word ptr [edx+14h], 200h
mov     word ptr [edx+16h], 0FB50h
mov     word ptr [edx+18h], 800h
mov     word ptr [edx+56h], 0
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
call    sub_42A66D
jmp     short loc_488354

loc_48834F:
call    sub_42AC90

loc_488354:
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, 621h
call    sub_47EA91
mov     eax, edx
call    sub_41D22F
mov     eax, edx
call    sub_4DE336
mov     byte ptr [ecx], 0
pop     edx
pop     ecx
retn
sub_4882E7 endp




sub_48837C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 1
jb      short loc_488392
jbe     short loc_4883B4
cmp     al, 2
jz      short loc_4883CF
pop     edx
pop     ecx
pop     ebx
retn

loc_488392:
test    al, al
jnz     short loc_4883E1
cmp     ds:byte_77EAB8, 0
jnz     short loc_4883E1
xor     ebx, ebx
xor     edx, edx
mov     eax, 8000000Ah
call    sub_4D89E4

loc_4883AD:
inc     byte ptr [ecx+6]
pop     edx
pop     ecx
pop     ebx
retn

loc_4883B4:
call    sub_42C353
test    eax, eax
jnz     short loc_4883E1
cmp     dword ptr [ecx+10h], 64h ; 'd'
jle     short loc_4883E1
mov     eax, 240013h
call    sub_4D8E42
jmp     short loc_4883AD

loc_4883CF:
call    sub_4D8ECC
test    eax, eax
jz      short loc_4883E1
mov     byte ptr [ecx+6], 0
call    sub_49DF64

loc_4883E1:
pop     edx
pop     ecx
pop     ebx
retn
sub_48837C endp




sub_4883E5 proc near
cmp     dword ptr [eax+10h], 2
jnz     short locret_4883EF
and     byte ptr [eax+0Ah], 7Fh

locret_4883EF:
retn
sub_4883E5 endp




sub_4883F0 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_488436
mov     eax, [eax+24h]
mov     word ptr [eax+14h], 0F920h
mov     word ptr [eax+16h], 0F9C0h
mov     word ptr [eax+18h], 20D0h
mov     word ptr [eax+56h], 0F80h
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

loc_488436:
pop     edx
retn
sub_4883F0 endp




sub_488438 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_488485
or      ds:byte_5F8364, 2
mov     eax, [eax+24h]
mov     word ptr [eax+14h], 200h
mov     word ptr [eax+16h], 0F8F8h
mov     word ptr [eax+18h], 800h
mov     word ptr [eax+56h], 0
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

loc_488485:
pop     edx
retn
sub_488438 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_67]



sub_488488 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_488496
mov     edx, [eax+24h]
mov     byte ptr [edx+8], 2

loc_488496:
cmp     dword ptr [eax+10h], 59h ; 'Y'
jnz     short loc_4884A3
mov     eax, [eax+24h]
mov     byte ptr [eax+8], 1

loc_4884A3:
pop     edx
retn
sub_488488 endp




sub_4884A5 proc near
push    edx
cmp     dword ptr [eax+10h], 0Fh
jnz     short loc_4884B3
mov     edx, [eax+2Ch]
mov     byte ptr [edx+8], 2

loc_4884B3:
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_4884C0
mov     edx, [eax+28h]
mov     byte ptr [edx+8], 5

loc_4884C0:
cmp     dword ptr [eax+10h], 37h ; '7'
jnz     short loc_4884CD
mov     edx, [eax+28h]
mov     byte ptr [edx+8], 3

loc_4884CD:
cmp     dword ptr [eax+10h], 3Bh ; ';'
jnz     short loc_4884E1
mov     edx, [eax+2Ch]
mov     byte ptr [edx+8], 1
mov     eax, [eax+28h]
mov     byte ptr [eax+8], 4

loc_4884E1:
pop     edx
retn
sub_4884A5 endp




sub_4884E3 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4884FA
mov     eax, [eax+24h]
mov     byte ptr [eax+8], 4
mov     eax, [edx+28h]
mov     byte ptr [eax+8], 2

loc_4884FA:
cmp     dword ptr [edx+10h], 3Bh ; ';'
jnz     short loc_48850A
mov     eax, 0Ah
call    sub_49E0D7

loc_48850A:
cmp     dword ptr [edx+10h], 59h ; 'Y'
jnz     short loc_488517
mov     edx, [edx+24h]
mov     byte ptr [edx+8], 1

loc_488517:
pop     edx
retn
sub_4884E3 endp




sub_488519 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_5214B0
mov     dword ptr [ecx+0A4h], offset unk_52152C
mov     byte ptr [ecx+0Bh], 0
mov     al, [ecx+0Bh]
mov     [ecx+0Ah], al
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Ah], 0
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
pop     edx
pop     ecx
pop     ebx
retn
sub_488519 endp




sub_488565 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_488575
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_488575:
pop     edx
retn
sub_488565 endp

jpt_4885A7 dd offset loc_4885AE ; jump table for switch statement
dd offset loc_4885BC
dd offset loc_488603
dd offset loc_488627
dd offset loc_48864F
dd offset loc_4886A8
dd offset loc_4886EE



sub_488593 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 6           ; switch 7 cases
ja      def_4885A7      ; jumptable 004885A7 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4885A7[edx*4] ; switch jump

loc_4885AE:             ; jumptable 004885A7 case 0
mov     eax, ecx
call    sub_488519

loc_4885B5:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4885BC:             ; jumptable 004885A7 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4885A7      ; jumptable 004885A7 default case
mov     byte ptr ds:dword_5F836C, 3
xor     bh, bh
mov     byte ptr ds:dword_5F836C+1, bh
mov     ds:byte_5F88AC, bh
mov     eax, offset unk_521474
call    sub_49DB4D
mov     eax, offset unk_52149C
call    sub_49DB4D
mov     eax, 24000Bh
call    sub_4D8E42
jmp     short loc_4885B5

loc_488603:             ; jumptable 004885A7 case 2
call    sub_4D8ECC
test    eax, eax
jz      def_4885A7      ; jumptable 004885A7 default case
or      byte ptr [ecx+0Ah], 1
call    sub_436868
inc     byte ptr [ecx+4]
mov     dword ptr [ecx+0Ch], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_488627:             ; jumptable 004885A7 case 3
mov     edx, [ecx+0Ch]
inc     edx
mov     [ecx+0Ch], edx
cmp     edx, 20h ; ' '
jnz     def_4885A7      ; jumptable 004885A7 default case
inc     byte ptr [ecx+4]
xor     ds:byte_5F8364, 2
mov     eax, offset unk_521488
call    sub_49DB4D
pop     edx
pop     ecx
pop     ebx
retn

loc_48864F:             ; jumptable 004885A7 case 4
cmp     byte ptr [ecx+8], 0FFh
jnz     short loc_48865E
inc     al
mov     [ecx+4], al
pop     edx
pop     ecx
pop     ebx
retn

loc_48865E:
call    sub_47EBCB
test    eax, eax
jz      short loc_488693
mov     dh, [ecx+0Ah]
cmp     dh, 1
jnz     short loc_488693
cmp     ds:word_6E23D6, 0
jnz     short loc_488693
cmp     ds:byte_77EAB8, 0
jnz     short loc_488693
mov     eax, 0Ah
call    sub_49E0D7
add     [ecx+4], dh
pop     edx
pop     ecx
pop     ebx
retn

loc_488693:
mov     eax, ecx
call    sub_488565
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn

loc_4886A8:             ; jumptable 004885A7 case 5
cmp     ds:word_6E23D6, 0
jnz     def_4885A7      ; jumptable 004885A7 default case
cmp     ds:byte_77EAB8, 0
jnz     def_4885A7      ; jumptable 004885A7 default case
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
inc     byte ptr [ecx+4]
mov     eax, 629h
call    sub_47E888
test    eax, eax
jnz     short def_4885A7 ; jumptable 004885A7 default case
mov     eax, 12h
call    sub_47EEAE
pop     edx
pop     ecx
pop     ebx
retn

loc_4886EE:             ; jumptable 004885A7 case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4885A7 ; jumptable 004885A7 default case
call    sub_4D8EB1
inc     byte ptr ds:dword_5F836C+1
call    sub_42A66D
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 6
mov     ds:byte_77EA5F, 5
xor     al, al
mov     byte ptr ds:dword_77EA5A+3, al
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
and     ds:byte_5F8364, 0FCh
mov     ds:byte_5F83DA, al
mov     [ecx], al

def_4885A7:             ; jumptable 004885A7 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_488593 endp




sub_488752 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_488758[edx*4]
pop     edx
retn
sub_488752 endp

align 2
jpt_488787 dd offset loc_48878E ; jump table for switch statement
dd offset loc_4887E9
dd offset loc_4887FF
dd offset loc_48881E



sub_488772 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_488787      ; jumptable 00488787 default case
and     eax, 0FFh
jmp     jpt_488787[eax*4] ; switch jump

loc_48878E:             ; jumptable 00488787 case 0
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Ah], 80h
mov     ds:dword_77E6B4, offset unk_52159C
mov     dword ptr [ecx+0A4h], offset unk_5219DC
mov     eax, offset unk_521560
call    sub_49DB4D
mov     al, ds:byte_521A5C
mov     ds:byte_56F80C, al
mov     ax, ds:word_521A5E
mov     ds:word_56F82C, ax
mov     ax, ds:word_521A60
mov     ds:word_56F82E, ax

loc_4887E4:
inc     byte ptr [ecx+5]
jmp     short def_488787 ; jumptable 00488787 default case

loc_4887E9:             ; jumptable 00488787 case 1
mov     eax, 3
call    sub_49E0D7
mov     eax, 3Dh ; '='
call    sub_42BEB2
jmp     short loc_4887E4

loc_4887FF:             ; jumptable 00488787 case 2
cmp     ds:word_6E23D6, 0
jnz     short def_488787 ; jumptable 00488787 default case
call    sub_42C353
test    eax, eax
jnz     short def_488787 ; jumptable 00488787 default case
mov     eax, 240007h
call    sub_4D8E42
jmp     short loc_4887E4

loc_48881E:             ; jumptable 00488787 case 3
call    sub_4D8ECC
test    eax, eax
jz      short def_488787 ; jumptable 00488787 default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_5215EC
mov     dword ptr [ecx+0A4h], offset unk_5219EC
and     byte ptr [ecx+0Ah], 1
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

def_488787:             ; jumptable 00488787 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_488858
or      byte ptr [ecx+0Ah], 1

loc_488858:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_488772 endp




sub_488866 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jnz     short loc_488877
mov     eax, 14h
jmp     short loc_488896

loc_488877:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jnz     short loc_488891
cmp     byte ptr [edx+0Ah], 1
jnz     short loc_4888A2

loc_488891:
mov     eax, 8

loc_488896:
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_4888A2:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_488866 endp




sub_4888AF proc near
push    ecx
push    edx
mov     ecx, eax
cmp     ds:word_6E23D6, 0
jnz     short loc_488910
mov     al, [eax+5]
test    al, al
jbe     short loc_4888CA
cmp     al, 1
jz      short loc_488906
jmp     short loc_488910

loc_4888CA:
call    sub_4D8EB1
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
call    sub_4E1D8A
mov     dl, 1
mov     byte ptr ds:dword_77E954, dl
call    sub_42A66D
mov     eax, 2
call    sub_488B78
mov     byte ptr ds:dword_77EA5A+2, 2
add     [ecx+5], dl
jmp     short loc_488910

loc_488906:
or      ds:byte_56F80C, 3
mov     byte ptr [ecx], 0

loc_488910:
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_488920
call    sub_49DBD1
call    sub_49DECF

loc_488920:
pop     edx
pop     ecx

locret_488922:
retn
sub_4888AF endp




sub_488923 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_488950
xor     ah, ah
mov     ds:byte_56F80C, ah
mov     eax, [edx+24h]
call    sub_4DE2F6
mov     eax, offset unk_521574
call    sub_49DB4D
mov     eax, 3
call    sub_488B78

loc_488950:
cmp     dword ptr [edx+10h], 1
jnz     short loc_488961
mov     edx, [edx+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_488961:
pop     edx
retn
sub_488923 endp




sub_488963 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_488979
mov     byte ptr [eax+5], 0
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_488979:
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_488986
mov     edx, [eax+28h]
mov     byte ptr [edx+0Dh], 0

loc_488986:
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short loc_48899B
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 0

loc_48899B:
cmp     dword ptr [eax+10h], 1C2h
jnz     short loc_4889B3
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

loc_4889B3:
pop     edx
retn
sub_488963 endp




sub_4889B5 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4889C7
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0

loc_4889C7:
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_4889D4
mov     eax, [eax+28h]
mov     byte ptr [eax+0Dh], 0

loc_4889D4:
pop     edx

locret_4889D5:
retn
sub_4889B5 endp




sub_4889D6 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4889EC
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 6
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 0

loc_4889EC:
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_488A01
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

loc_488A01:
pop     edx
retn
sub_4889D6 endp




sub_488A03 proc near
push    ecx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_488A61
mov     eax, offset unk_521588
call    sub_49DB4D
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0
mov     edx, 1

loc_488A27:
mov     eax, edx
shl     eax, 3
mov     ecx, eax
shl     eax, 3
sub     eax, ecx
mov     cl, ds:byte_521A62
mov     ds:byte_56F80C[eax], cl
mov     cx, ds:word_521A64
mov     ds:word_56F82C[eax], cx
mov     cx, ds:word_521A66
mov     ds:word_56F82E[eax], cx
inc     edx
cmp     edx, 5
jl      short loc_488A27

loc_488A61:
pop     edx
pop     ecx
retn
sub_488A03 endp




sub_488A64 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_488AA3
mov     eax, [eax+2Ch]
call    sub_4DE2F6
mov     edx, 1

loc_488A7C:
mov     eax, edx
shl     eax, 3
mov     ecx, eax
shl     eax, 3
sub     eax, ecx
xor     cl, cl
mov     ds:byte_56F80C[eax], cl
inc     edx
cmp     edx, 5
jl      short loc_488A7C
mov     eax, [ebx+28h]
mov     byte ptr [eax+9], 9
mov     [eax+0Ah], cl
inc     byte ptr [eax+0Dh]

loc_488AA3:
cmp     dword ptr [ebx+10h], 6Eh ; 'n'
jnz     short loc_488AB0
mov     eax, [ebx+28h]
mov     byte ptr [eax+0Dh], 0

loc_488AB0:
cmp     dword ptr [ebx+10h], 0BEh
jnz     short loc_488AC8
mov     eax, [ebx+28h]
mov     byte ptr [eax+9], 0Ah
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

loc_488AC8:
cmp     dword ptr [ebx+10h], 0FAh
jnz     short loc_488AE0
mov     eax, [ebx+28h]
mov     byte ptr [eax+9], 0Bh
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

loc_488AE0:
pop     edx
pop     ecx
pop     ebx

locret_488AE3:
retn
sub_488A64 endp




sub_488AE4 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_488AF9
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Ch
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_488AF9:
retn
sub_488AE4 endp




sub_488AFA proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_488B0F
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Dh
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_488B0F:
retn
sub_488AFA endp




sub_488B10 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 168h
jb      short loc_488B32
jbe     short loc_488B3F
cmp     edx, 190h
jb      short loc_488B60
jbe     short loc_488B48
cmp     edx, 1E0h
jz      short loc_488B51
pop     edx
retn

loc_488B32:
test    edx, edx
jnz     short loc_488B60
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Eh
jmp     short loc_488B58

loc_488B3F:
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Fh
jmp     short loc_488B58

loc_488B48:
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 10h
jmp     short loc_488B58

loc_488B51:
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 11h

loc_488B58:
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

loc_488B60:
pop     edx
retn
sub_488B10 endp




sub_488B62 proc near
cmp     dword ptr [eax+10h], 50h ; 'P'
jnz     short locret_488B77
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 12h
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_488B77:
retn
sub_488B62 endp




sub_488B78 proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 6
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
sub_488B78 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_68]



sub_488BC5 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 1
jnz     short loc_488BDC
xor     eax, eax
call    sub_4A0E24
mov     ds:byte_5F88AC, 35h ; '5'

loc_488BDC:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_488BEA
call    sub_49DF64

loc_488BEA:
pop     edx
retn
sub_488BC5 endp




sub_488BEC proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_488C02
mov     edx, 5
xor     eax, eax
call    sub_4A0E24

loc_488C02:
cmp     dword ptr [ecx+10h], 29h ; ')'
jnz     short loc_488C0F
mov     ds:byte_5F88AC, 2Dh ; '-'

loc_488C0F:
cmp     dword ptr [ecx+10h], 33h ; '3'
jle     short loc_488C1A
call    sub_49DF64

loc_488C1A:
pop     edx
pop     ecx
retn
sub_488BEC endp




sub_488C1D proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_488C53
mov     eax, offset unk_521A68
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+3], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [edx+24h]
mov     word ptr [eax+56h], 800h
call    sub_49DF64

loc_488C53:
pop     edx
retn
sub_488C1D endp




sub_488C55 proc near
push    ebx
push    edx
push    edi
cmp     dword ptr [eax+10h], 1
jnz     short loc_488C7C
mov     edx, [eax+24h]
mov     word ptr [edx+44h], 140h
mov     edx, [eax+24h]
mov     byte ptr [edx+0Eh], 2
mov     edx, [eax+24h]
mov     byte ptr [edx+0Dh], 1
mov     edx, [eax+24h]
mov     byte ptr [edx+8], 2

loc_488C7C:
cmp     dword ptr [eax+10h], 5Bh ; '['
jnz     short loc_488C8B
mov     edx, [eax+24h]
mov     word ptr [edx+44h], 0

loc_488C8B:
cmp     dword ptr [eax+10h], 5Bh ; '['
jl      loc_488D47
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_488D47
mov     word ptr ds:dword_5F889A+2, 329h
mov     ebx, 0FFFFFCFFh
mov     word ptr ds:dword_5F889E, bx
mov     word ptr ds:dword_5F889E+2, 498h
mov     ds:dword_5F888C, 3290000h
mov     edi, 0FCFF0000h
mov     ds:dword_5F8890, edi
mov     ds:dword_5F8894, 4980000h
mov     word ptr ds:dword_5F88A4+2, 4F6h
mov     ds:byte_5F88AC, 30h ; '0'
mov     edx, [eax+24h]
mov     word ptr [edx+14h], 2CEh
mov     edx, [eax+24h]
mov     [edx+16h], bx
mov     edx, [eax+24h]
mov     word ptr [edx+18h], 4C0h
mov     edx, [eax+24h]
mov     dword ptr [edx+1Ch], 2CE0000h
mov     edx, [eax+24h]
mov     [edx+20h], edi
mov     edx, [eax+24h]
mov     dword ptr [edx+24h], 4C00000h
mov     edx, [eax+24h]
mov     word ptr [edx+56h], 0CF6h
mov     edx, [eax+24h]
mov     byte ptr [edx+0Eh], 0
mov     edx, [eax+24h]
mov     byte ptr [edx+0Dh], 1
mov     eax, [eax+24h]
mov     word ptr [eax+44h], 0
call    sub_49DF64

loc_488D47:
pop     edi
pop     edx
pop     ebx
retn
sub_488C55 endp




sub_488D4B proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_488D71
mov     eax, [eax+24h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 6
xor     eax, eax
call    sub_4A0E24

loc_488D71:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     loc_488E28
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_488E28
mov     word ptr ds:dword_5F889A+2, 269h
mov     ebx, 0FFFFFCFFh
mov     word ptr ds:dword_5F889E, bx
mov     word ptr ds:dword_5F889E+2, 382h
mov     ds:dword_5F888C, 2690000h
mov     ds:dword_5F8890, 0FCFF0000h
mov     ds:dword_5F8894, 3820000h
mov     edi, 800h
mov     word ptr ds:dword_5F88A4+2, di
mov     ds:byte_5F88AC, 0Ch
mov     eax, [ecx+24h]
mov     word ptr [eax+14h], 1A1h
mov     eax, [ecx+24h]
mov     [eax+16h], bx
mov     eax, [ecx+24h]
mov     word ptr [eax+18h], 385h
mov     eax, [ecx+24h]
mov     dword ptr [eax+1Ch], 1A10000h
mov     eax, [ecx+24h]
mov     dword ptr [eax+20h], 0FCFF0000h
mov     eax, [ecx+24h]
mov     dword ptr [eax+24h], 3850000h
mov     eax, [ecx+24h]
mov     [eax+56h], di
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
call    sub_49DF64

loc_488E28:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_488D4B endp




sub_488E2D proc near
push    ebx
push    ecx
push    edx
mov     edx, offset byte_5F8364
cmp     dword ptr [eax+10h], 1
jnz     short loc_488E44
mov     ecx, [eax+24h]
mov     word ptr [ecx+44h], 40h ; '@'

loc_488E44:
add     word ptr [edx+532h], 5
mov     ecx, [edx+530h]
sar     ecx, 10h
mov     [edx+53Ch], cx
cmp     dword ptr [eax+10h], 96h
jnz     short loc_488E9B
mov     dl, 1
mov     byte ptr ds:dword_77EA5A+2, dl
mov     ds:byte_77EA5E, 6
mov     ds:byte_77EA5F, dl
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 0FFh
mov     [eax+0Bh], dl
mov     [eax+0Ah], bh
call    sub_49DF64

loc_488E9B:
pop     edx
pop     ecx
pop     ebx

locret_488E9E:
retn
sub_488E2D endp




sub_488E9F proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_488FB3
mov     word ptr ds:dword_5F889A+2, 0FFB2h
mov     ecx, 0FFFFFFFFh
mov     word ptr ds:dword_5F889E, cx
mov     word ptr ds:dword_5F889E+2, 0FFAFh
mov     ds:dword_5F888C, 0FFB20000h
mov     esi, 0FFFF0000h
mov     ds:dword_5F8890, esi
mov     ds:dword_5F8894, 0FFAF0000h
mov     edi, 800h
mov     word ptr ds:dword_5F88A4+2, di
mov     ds:byte_5F88AC, 30h ; '0'
mov     eax, offset unk_521A68
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+3], 0
mov     eax, [edx+24h]
mov     word ptr [eax+14h], 51h ; 'Q'
mov     eax, [edx+24h]
mov     [eax+16h], cx
mov     eax, [edx+24h]
mov     word ptr [eax+18h], 0FFAFh
mov     eax, [edx+24h]
mov     dword ptr [eax+1Ch], offset unk_510000
mov     eax, [edx+24h]
mov     [eax+20h], esi
mov     eax, [edx+24h]
mov     dword ptr [eax+24h], 0FFAF0000h
mov     eax, [edx+24h]
mov     [eax+56h], di
mov     eax, [edx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [edx+24h]
mov     word ptr [eax+44h], 0
mov     eax, offset unk_521A7C
call    sub_49DB4D
mov     eax, offset unk_521A90
call    sub_49DB4D
mov     eax, offset unk_521AA4
call    sub_49DB4D
mov     eax, [edx+28h]
mov     word ptr [eax+56h], 0
mov     eax, [edx+28h]
mov     word ptr [eax+44h], 0
mov     eax, [edx+2Ch]
mov     word ptr [eax+56h], 0
mov     eax, [edx+2Ch]
mov     word ptr [eax+44h], 0
mov     eax, [edx+30h]
mov     [eax+56h], di
mov     eax, [edx+30h]
mov     word ptr [eax+44h], 0

loc_488FB3:
pop     edi
pop     esi
pop     edx
pop     ecx

locret_488FB7:
retn
sub_488E9F endp




sub_488FB8 proc near
push    edx
mov     edx, eax
mov     eax, [eax+28h]
cmp     byte ptr [eax+8], 1
jnz     short loc_488FD6
mov     byte ptr [eax+8], 2
mov     eax, [edx+2Ch]
mov     byte ptr [eax+8], 2
mov     eax, [edx+30h]
mov     byte ptr [eax+8], 2

loc_488FD6:
cmp     dword ptr [edx+10h], 3Dh ; '='
jnz     short loc_488FEE
call    sub_49DF64
and     ds:byte_5F8364, 0FDh
mov     edx, [edx+24h]
and     byte ptr [edx], 0FDh

loc_488FEE:
pop     edx
retn
sub_488FB8 endp




sub_488FF0 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_489014
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 37h ; '7'
xor     eax, eax
call    sub_4A0E24

loc_489014:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     short loc_489028
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489028
call    sub_49DF64

loc_489028:
pop     edx
pop     ecx
retn
sub_488FF0 endp




sub_48902B proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_48903B
mov     eax, [eax+24h]
or      byte ptr [eax], 2

loc_48903B:
cmp     dword ptr [ecx+10h], 10h
jnz     short loc_48905B
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 38h ; '8'
xor     eax, eax
call    sub_4A0E24

loc_48905B:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_48906F
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48906F
call    sub_49DF64

loc_48906F:
pop     edx
pop     ecx
retn
sub_48902B endp




sub_489072 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_489083
or      ds:byte_5F8364, 2

loc_489083:
cmp     dword ptr [ecx+10h], 10h
jnz     short loc_4890A3
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 39h ; '9'
xor     eax, eax
call    sub_4A0E24

loc_4890A3:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_4890B7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4890B7
call    sub_49DF64

loc_4890B7:
pop     edx
pop     ecx
retn
sub_489072 endp




sub_4890BA proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_4890DE
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Ah ; ':'
xor     eax, eax
call    sub_4A0E24

loc_4890DE:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_4890F2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4890F2
call    sub_49DF64

loc_4890F2:
pop     edx
pop     ecx
retn
sub_4890BA endp




sub_4890F5 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489119
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Bh ; ';'
xor     eax, eax
call    sub_4A0E24

loc_489119:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_48912D
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48912D
call    sub_49DF64

loc_48912D:
pop     edx
pop     ecx
retn
sub_4890F5 endp




sub_489130 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_48914A
xor     ebx, ebx
xor     edx, edx
mov     eax, 18Ch
call    sub_4D89E4

loc_48914A:
cmp     dword ptr [ecx+10h], 1Fh
jnz     short loc_48918D
xor     ebx, ebx
xor     edx, edx
mov     eax, 18Dh
call    sub_4D89E4
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Ch ; '<'
xor     eax, eax
call    sub_4A0E24
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     ds:byte_5F88AC, 0Ch

loc_48918D:
mov     esi, [ecx+10h]
cmp     esi, 1Fh
jle     short loc_4891AA
cmp     esi, 3Fh ; '?'
jge     short loc_4891AA
add     word ptr ds:dword_5F88A4+2, 40h ; '@'
mov     eax, [ecx+24h]
sub     word ptr [eax+56h], 40h ; '@'

loc_4891AA:
cmp     dword ptr [ecx+10h], 3Fh ; '?'
jnz     short loc_4891C5
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     ds:byte_5F88AC, 30h ; '0'

loc_4891C5:
cmp     dword ptr [ecx+10h], 49h ; 'I'
jle     short loc_4891D9
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4891D9
call    sub_49DF64

loc_4891D9:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_489130 endp




sub_4891DE proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_48920B
mov     eax, [eax+30h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+30h]
mov     word ptr [eax+44h], 3Ch ; '<'
mov     edx, 3Dh ; '='
xor     eax, eax
call    sub_4A0E24

loc_48920B:
cmp     dword ptr [ecx+10h], 56h ; 'V'
jl      short loc_489228
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+30h]
mov     word ptr [eax+44h], 0

loc_489228:
cmp     dword ptr [ecx+10h], 56h ; 'V'
jle     short loc_48923C
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48923C
call    sub_49DF64

loc_48923C:
pop     edx
pop     ecx
retn
sub_4891DE endp




sub_48923F proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489263
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Eh ; '>'
xor     eax, eax
call    sub_4A0E24

loc_489263:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489277
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489277
call    sub_49DF64

loc_489277:
pop     edx
pop     ecx
retn
sub_48923F endp




sub_48927A proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_48929E
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Fh ; '?'
xor     eax, eax
call    sub_4A0E24

loc_48929E:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_4892B9
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4892B9
and     ds:byte_5F8364, 0FDh
call    sub_49DF64

loc_4892B9:
pop     edx
pop     ecx
retn
sub_48927A endp




sub_4892BC proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_4892E0
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 40h ; '@'
xor     eax, eax
call    sub_4A0E24

loc_4892E0:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_4892F4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4892F4
call    sub_49DF64

loc_4892F4:
pop     edx
pop     ecx

locret_4892F6:
retn
sub_4892BC endp




sub_4892F7 proc near
push    edx
cmp     dword ptr [eax+10h], 1
jnz     short loc_489311
mov     ds:byte_5F88AC, 82h
mov     edx, 2
xor     eax, eax
call    sub_4A0E24

loc_489311:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48931F
call    sub_49DF64

loc_48931F:
pop     edx
retn
sub_4892F7 endp




sub_489321 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_489337
mov     edx, 7
xor     eax, eax
call    sub_4A0E24

loc_489337:
cmp     dword ptr [ecx+10h], 29h ; ')'
jnz     short loc_489344
mov     ds:byte_5F88AC, 2Dh ; '-'

loc_489344:
cmp     dword ptr [ecx+10h], 33h ; '3'
jle     short loc_48934F
call    sub_49DF64

loc_48934F:
pop     edx
pop     ecx
retn
sub_489321 endp




sub_489352 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_489388
mov     eax, offset unk_521A68
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+3], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [edx+24h]
mov     word ptr [eax+56h], 800h
call    sub_49DF64

loc_489388:
pop     edx
retn
sub_489352 endp




sub_48938A proc near
push    ebx
push    edx
push    edi
cmp     dword ptr [eax+10h], 1
jnz     short loc_4893B1
mov     edx, [eax+24h]
mov     word ptr [edx+44h], 140h
mov     edx, [eax+24h]
mov     byte ptr [edx+0Eh], 2
mov     edx, [eax+24h]
mov     byte ptr [edx+0Dh], 1
mov     edx, [eax+24h]
mov     byte ptr [edx+8], 2

loc_4893B1:
cmp     dword ptr [eax+10h], 5Bh ; '['
jnz     short loc_4893C0
mov     edx, [eax+24h]
mov     word ptr [edx+44h], 0

loc_4893C0:
cmp     dword ptr [eax+10h], 5Bh ; '['
jl      loc_48947C
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_48947C
mov     word ptr ds:dword_5F889A+2, 329h
mov     ebx, 0FFFFFCFFh
mov     word ptr ds:dword_5F889E, bx
mov     word ptr ds:dword_5F889E+2, 498h
mov     ds:dword_5F888C, 3290000h
mov     edi, 0FCFF0000h
mov     ds:dword_5F8890, edi
mov     ds:dword_5F8894, 4980000h
mov     word ptr ds:dword_5F88A4+2, 4F6h
mov     ds:byte_5F88AC, 30h ; '0'
mov     edx, [eax+24h]
mov     word ptr [edx+14h], 2CEh
mov     edx, [eax+24h]
mov     [edx+16h], bx
mov     edx, [eax+24h]
mov     word ptr [edx+18h], 4C0h
mov     edx, [eax+24h]
mov     dword ptr [edx+1Ch], 2CE0000h
mov     edx, [eax+24h]
mov     [edx+20h], edi
mov     edx, [eax+24h]
mov     dword ptr [edx+24h], 4C00000h
mov     edx, [eax+24h]
mov     word ptr [edx+56h], 0CF6h
mov     edx, [eax+24h]
mov     byte ptr [edx+0Eh], 0
mov     edx, [eax+24h]
mov     byte ptr [edx+0Dh], 1
mov     eax, [eax+24h]
mov     word ptr [eax+44h], 0
call    sub_49DF64

loc_48947C:
pop     edi
pop     edx
pop     ebx
retn
sub_48938A endp




sub_489480 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_4894A4
mov     eax, [eax+24h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 8
xor     eax, eax
call    sub_4A0E24

loc_4894A4:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     short loc_4894B8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4894B8
call    sub_49DF64

loc_4894B8:
pop     edx
pop     ecx
retn
sub_489480 endp




sub_4894BB proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_4894D8
mov     ds:byte_5F88AC, 32h ; '2'
mov     edx, 9
xor     eax, eax
call    sub_4A0E24

loc_4894D8:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     short loc_4894EC
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4894EC
call    sub_49DF64

loc_4894EC:
pop     edx
pop     ecx
retn
sub_4894BB endp




sub_4894EF proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_489515
mov     eax, [eax+24h]
mov     byte ptr [eax+0Eh], 12h
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 0Ah
xor     eax, eax
call    sub_4A0E24

loc_489515:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     loc_4895CC
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4895CC
mov     word ptr ds:dword_5F889A+2, 269h
mov     ebx, 0FFFFFCFFh
mov     word ptr ds:dword_5F889E, bx
mov     word ptr ds:dword_5F889E+2, 382h
mov     ds:dword_5F888C, 2690000h
mov     ds:dword_5F8890, 0FCFF0000h
mov     ds:dword_5F8894, 3820000h
mov     edi, 800h
mov     word ptr ds:dword_5F88A4+2, di
mov     ds:byte_5F88AC, 0Ch
mov     eax, [ecx+24h]
mov     word ptr [eax+14h], 1A1h
mov     eax, [ecx+24h]
mov     [eax+16h], bx
mov     eax, [ecx+24h]
mov     word ptr [eax+18h], 385h
mov     eax, [ecx+24h]
mov     dword ptr [eax+1Ch], 1A10000h
mov     eax, [ecx+24h]
mov     dword ptr [eax+20h], 0FCFF0000h
mov     eax, [ecx+24h]
mov     dword ptr [eax+24h], 3850000h
mov     eax, [ecx+24h]
mov     [eax+56h], di
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
call    sub_49DF64

loc_4895CC:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4894EF endp




sub_4895D1 proc near
push    ebx
push    ecx
push    edx
mov     edx, offset byte_5F8364
cmp     dword ptr [eax+10h], 1
jnz     short loc_4895E8
mov     ecx, [eax+24h]
mov     word ptr [ecx+44h], 40h ; '@'

loc_4895E8:
add     word ptr [edx+532h], 5
mov     ecx, [edx+530h]
sar     ecx, 10h
mov     [edx+53Ch], cx
cmp     dword ptr [eax+10h], 96h
jnz     short loc_489640
mov     dl, 1
mov     byte ptr ds:dword_77EA5A+2, dl
mov     ds:byte_77EA5E, 6
mov     ds:byte_77EA5F, 4
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 0FFh
mov     [eax+0Bh], dl
mov     [eax+0Ah], bh
call    sub_49DF64

loc_489640:
pop     edx
pop     ecx
pop     ebx

locret_489643:
retn
sub_4895D1 endp




sub_489644 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_489758
mov     word ptr ds:dword_5F889A+2, 0FFB2h
mov     ecx, 0FFFFFFFFh
mov     word ptr ds:dword_5F889E, cx
mov     word ptr ds:dword_5F889E+2, 0FFAFh
mov     ds:dword_5F888C, 0FFB20000h
mov     esi, 0FFFF0000h
mov     ds:dword_5F8890, esi
mov     ds:dword_5F8894, 0FFAF0000h
mov     edi, 800h
mov     word ptr ds:dword_5F88A4+2, di
mov     ds:byte_5F88AC, 30h ; '0'
mov     eax, offset unk_521A68
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+3], 0
mov     eax, [edx+24h]
mov     word ptr [eax+14h], 51h ; 'Q'
mov     eax, [edx+24h]
mov     [eax+16h], cx
mov     eax, [edx+24h]
mov     word ptr [eax+18h], 0FFAFh
mov     eax, [edx+24h]
mov     dword ptr [eax+1Ch], offset unk_510000
mov     eax, [edx+24h]
mov     [eax+20h], esi
mov     eax, [edx+24h]
mov     dword ptr [eax+24h], 0FFAF0000h
mov     eax, [edx+24h]
mov     [eax+56h], di
mov     eax, [edx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [edx+24h]
mov     word ptr [eax+44h], 0
mov     eax, offset unk_521A7C
call    sub_49DB4D
mov     eax, offset unk_521A90
call    sub_49DB4D
mov     eax, offset unk_521AA4
call    sub_49DB4D
mov     eax, [edx+28h]
mov     word ptr [eax+56h], 0
mov     eax, [edx+28h]
mov     word ptr [eax+44h], 0
mov     eax, [edx+2Ch]
mov     word ptr [eax+56h], 0
mov     eax, [edx+2Ch]
mov     word ptr [eax+44h], 0
mov     eax, [edx+30h]
mov     [eax+56h], di
mov     eax, [edx+30h]
mov     word ptr [eax+44h], 0

loc_489758:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_489644 endp

push    edx
mov     edx, eax
mov     eax, [eax+28h]
cmp     byte ptr [eax+8], 1
jnz     short loc_48977B
mov     byte ptr [eax+8], 2
mov     eax, [edx+2Ch]
mov     byte ptr [eax+8], 2
mov     eax, [edx+30h]
mov     byte ptr [eax+8], 2

loc_48977B:
cmp     dword ptr [edx+10h], 3Dh ; '='
jnz     short loc_489793
call    sub_49DF64
and     ds:byte_5F8364, 0FDh
mov     edx, [edx+24h]
and     byte ptr [edx], 0FDh

loc_489793:
pop     edx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_4897B9
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 37h ; '7'
xor     eax, eax
call    sub_4A0E24

loc_4897B9:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     short loc_4897CD
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4897CD
call    sub_49DF64

loc_4897CD:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_4897E0
mov     eax, [eax+24h]
or      byte ptr [eax], 2

loc_4897E0:
cmp     dword ptr [ecx+10h], 10h
jnz     short loc_489800
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 38h ; '8'
xor     eax, eax
call    sub_4A0E24

loc_489800:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489814
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489814
call    sub_49DF64

loc_489814:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_489828
or      ds:byte_5F8364, 2

loc_489828:
cmp     dword ptr [ecx+10h], 10h
jnz     short loc_489848
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 41h ; 'A'
xor     eax, eax
call    sub_4A0E24

loc_489848:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_48985C
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48985C
call    sub_49DF64

loc_48985C:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489883
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 42h ; 'B'
xor     eax, eax
call    sub_4A0E24

loc_489883:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489897
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489897
call    sub_49DF64

loc_489897:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_4898BE
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 43h ; 'C'
xor     eax, eax
call    sub_4A0E24

loc_4898BE:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_4898D2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4898D2
call    sub_49DF64

loc_4898D2:
pop     edx
pop     ecx
retn



sub_4898D5 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_4898EF
xor     ebx, ebx
xor     edx, edx
mov     eax, 18Ch
call    sub_4D89E4

loc_4898EF:
cmp     dword ptr [ecx+10h], 1Fh
jnz     short loc_489932
xor     ebx, ebx
xor     edx, edx
mov     eax, 18Dh
call    sub_4D89E4
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Ch ; '<'
xor     eax, eax
call    sub_4A0E24
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     ds:byte_5F88AC, 0Ch

loc_489932:
mov     esi, [ecx+10h]
cmp     esi, 1Fh
jle     short loc_48994F
cmp     esi, 3Fh ; '?'
jge     short loc_48994F
add     word ptr ds:dword_5F88A4+2, 40h ; '@'
mov     eax, [ecx+24h]
sub     word ptr [eax+56h], 40h ; '@'

loc_48994F:
cmp     dword ptr [ecx+10h], 3Fh ; '?'
jnz     short loc_48996A
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     ds:byte_5F88AC, 30h ; '0'

loc_48996A:
cmp     dword ptr [ecx+10h], 49h ; 'I'
jle     short loc_48997E
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48997E
call    sub_49DF64

loc_48997E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4898D5 endp

push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_4899B0
mov     eax, [eax+30h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+30h]
mov     word ptr [eax+44h], 3Ch ; '<'
mov     edx, 3Dh ; '='
xor     eax, eax
call    sub_4A0E24

loc_4899B0:
cmp     dword ptr [ecx+10h], 56h ; 'V'
jl      short loc_4899CD
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+30h]
mov     word ptr [eax+44h], 0

loc_4899CD:
cmp     dword ptr [ecx+10h], 56h ; 'V'
jle     short loc_4899E1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4899E1
call    sub_49DF64

loc_4899E1:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489A08
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Eh ; '>'
xor     eax, eax
call    sub_4A0E24

loc_489A08:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489A1C
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489A1C
call    sub_49DF64

loc_489A1C:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489A43
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Fh ; '?'
xor     eax, eax
call    sub_4A0E24

loc_489A43:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489A5E
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489A5E
and     ds:byte_5F8364, 0FDh
call    sub_49DF64

loc_489A5E:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489A85
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 40h ; '@'
xor     eax, eax
call    sub_4A0E24

loc_489A85:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489A99
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489A99
call    sub_49DF64

loc_489A99:
pop     edx
pop     ecx
retn


; Attributes: thunk

sub_489A9C proc near
jmp     sub_49DF64
sub_489A9C endp




sub_489AA1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, 629h
call    sub_47E888
test    eax, eax
jz      short loc_489ADF
mov     ds:dword_77E6B4, offset unk_521C88
mov     dword ptr [ecx+0A4h], offset unk_521EE0
mov     eax, 2E1h
call    sub_47EE82
jmp     short loc_489AF3

loc_489ADF:
mov     ds:dword_77E6B4, offset unk_521AE0
mov     dword ptr [ecx+0A4h], offset unk_521E30

loc_489AF3:
mov     byte ptr [ecx+0Bh], 0
mov     al, [ecx+0Bh]
mov     [ecx+0Ah], al
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0Ah], 0
mov     eax, 52Ch
call    sub_47E8B8
pop     edx
pop     ecx
pop     ebx
retn
sub_489AA1 endp




sub_489B1A proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_489B2A
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_489B2A:
pop     edx
retn
sub_489B1A endp

jpt_489B8C dd offset loc_489B93 ; jump table for switch statement
dd offset loc_489BAF
dd offset loc_489C30
dd offset loc_489C40
dd offset loc_489C5B
dd offset loc_489C8A
dd offset loc_489CA6
dd offset loc_489CE4
dd offset loc_489CF0
dd offset loc_489D05
dd offset loc_489D33
dd offset loc_489D3F
dd offset loc_489E07
dd offset loc_489E49
dd offset loc_489E84
dd offset loc_489FF9
dd offset loc_48A04C



sub_489B70 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 10h         ; switch 17 cases
ja      def_489B8C      ; jumptable 00489B8C default case
xor     ebx, ebx
mov     bl, al
jmp     jpt_489B8C[ebx*4] ; switch jump

loc_489B93:             ; jumptable 00489B8C case 0
mov     eax, 2
call    sub_49E0D7
mov     eax, ecx
call    sub_489AA1
inc     byte ptr [ecx+4]
or      byte ptr [edx], 3
jmp     loc_489CD3

loc_489BAF:             ; jumptable 00489B8C case 1
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      loc_489CD3
or      byte ptr [edx+0BDh], 10h
mov     byte ptr [edx+8], 3
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+548h], 30h ; '0'
mov     word ptr [edx+538h], 200h
mov     word ptr [edx+53Ah], 0FCFFh
mov     word ptr [edx+53Ch], 2E8h
mov     dword ptr [edx+528h], 2000000h
mov     dword ptr [edx+52Ch], 0FCFF0000h
mov     dword ptr [edx+530h], 2E80000h
mov     word ptr [edx+540h], 0
mov     word ptr [edx+542h], 800h
mov     word ptr [edx+544h], 0

loc_489C28:
inc     byte ptr [ecx+4]
jmp     loc_489CD3

loc_489C30:             ; jumptable 00489B8C case 2
cmp     ds:word_6E23D6, 0
jnz     loc_489CD3
jmp     short loc_489C28

loc_489C40:             ; jumptable 00489B8C case 3
or      byte ptr [edx+0BDh], 20h
xor     esi, esi
mov     ds:word_57096A, si
mov     byte ptr [ecx+0Ah], 1
call    sub_49DF64
jmp     short loc_489C28

loc_489C5B:             ; jumptable 00489B8C case 4
cmp     byte ptr [ecx+0Bh], 0
jz      short loc_489C69

loc_489C61:
inc     byte ptr [ecx+4]
jmp     def_489B8C      ; jumptable 00489B8C default case

loc_489C69:
call    sub_47EBCB
test    eax, eax
jz      short loc_489CCC
cmp     byte ptr [ecx+0Ah], 1
jnz     short loc_489CCC
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
mov     byte ptr [ecx+4], 0Ch
jmp     short loc_489CCC

loc_489C8A:             ; jumptable 00489B8C case 5
cmp     byte ptr ds:dword_77EA5A+2, 2
jnz     short loc_489CCC
mov     eax, [ecx+24h]
call    sub_4DE2F6
inc     byte ptr [ecx+4]
inc     byte ptr ds:dword_77EA5A+2
jmp     short loc_489CCC

loc_489CA6:             ; jumptable 00489B8C case 6
cmp     byte ptr ds:dword_77EA5A+2, 0
jnz     short loc_489CCC
mov     eax, 2
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
inc     byte ptr [ecx+4]

loc_489CC7:
call    sub_49DF64

loc_489CCC:
mov     eax, ecx
call    sub_489B1A

loc_489CD3:
call    sub_49DBD1
call    sub_49DECF

def_489B8C:             ; jumptable 00489B8C default case
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_489CE4:             ; jumptable 00489B8C case 7
inc     al
mov     [ecx+4], al
call    sub_49DF64
jmp     short def_489B8C ; jumptable 00489B8C default case

loc_489CF0:             ; jumptable 00489B8C case 8
cmp     ds:word_6E23D6, 0
jnz     short loc_489CCC
inc     al
mov     [ecx+4], al
mov     byte ptr [ecx+0Ah], 1
jmp     short loc_489CC7

loc_489D05:             ; jumptable 00489B8C case 9
cmp     byte ptr [ecx+8], 0FFh
jnz     short loc_489D12

loc_489D0B:
inc     al
mov     [ecx+4], al
jmp     short def_489B8C ; jumptable 00489B8C default case

loc_489D12:
call    sub_47EBCB
test    eax, eax
jz      short loc_489CCC
cmp     byte ptr [ecx+0Ah], 1
jnz     short loc_489CCC
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
mov     byte ptr [ecx+4], 10h
jmp     short loc_489CCC

loc_489D33:             ; jumptable 00489B8C case 10
cmp     ds:word_6E23D6, 0
jnz     short def_489B8C ; jumptable 00489B8C default case
jmp     short loc_489D0B

loc_489D3F:             ; jumptable 00489B8C case 11
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_489B8C ; jumptable 00489B8C default case
or      ds:byte_5F8364, 2
mov     eax, offset byte_5F8364
call    sub_4B565A
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     edx, [ecx+30h]
mov     byte ptr [edx+3], 1
mov     dl, [edx+3]
mov     eax, [ecx+24h]
mov     [eax+3], dl
mov     edx, [ecx+30h]
mov     byte ptr [edx+8], 0
mov     dl, [edx+8]
mov     eax, [ecx+24h]
mov     [eax+8], dl
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Ch], 46h ; 'F'
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Ch], 47h ; 'G'
mov     eax, [ecx+24h]
mov     word ptr [eax+14h], 6Fh ; 'o'
mov     edx, [ecx+24h]
sub     word ptr [edx+18h], 14h
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
mov     eax, 2Ch ; ','
call    sub_47E8B8

loc_489DF0:
mov     eax, 7E0h
call    sub_47EA91
call    sub_47E829
mov     byte ptr [ecx], 0
jmp     def_489B8C      ; jumptable 00489B8C default case

loc_489E07:             ; jumptable 00489B8C case 12
mov     edx, offset dword_77EA48
mov     bh, 1
mov     byte ptr ds:dword_77EA5A+2, bh
mov     ds:byte_77EA5E, 6
mov     eax, 629h
call    sub_47E888
test    eax, eax
jz      short loc_489E32
mov     ds:byte_77EA5F, 4
jmp     short loc_489E38

loc_489E32:
mov     ds:byte_77EA5F, bh

