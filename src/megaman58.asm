pop     edx
retn
sub_48F623 endp




sub_48F658 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F67F
mov     edx, [eax+30h]
and     byte ptr [edx], 0FDh
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 8
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Ch], 1
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0

loc_48F67F:
mov     edx, [eax+2Ch]
mov     edx, [edx+98h]
cmp     byte ptr [edx], 9
jnz     short loc_48F694
mov     edx, [eax+28h]
mov     byte ptr [edx+0Ch], 0

loc_48F694:
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_48F6A1
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ch], 1

loc_48F6A1:
cmp     dword ptr [eax+10h], 0C1h
jnz     short loc_48F6B1
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Ch], 0

loc_48F6B1:
pop     edx
retn
sub_48F658 endp




sub_48F6B3 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48F6C4
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 6
mov     byte ptr [eax+0Ah], 0

locret_48F6C4:
retn
sub_48F6B3 endp




sub_48F6C5 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48F6D6
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 9
mov     byte ptr [eax+0Ah], 0

locret_48F6D6:
retn
sub_48F6C5 endp




sub_48F6D7 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48F6E8
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Ah
mov     byte ptr [eax+0Ah], 0

locret_48F6E8:
retn
sub_48F6D7 endp




sub_48F6E9 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F722
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0Bh
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
or      byte ptr [edx], 2
mov     edx, [eax+38h]
mov     word ptr [edx+56h], 955h
mov     edx, [eax+3Ch]
mov     word ptr [edx+56h], 555h
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0

loc_48F722:
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short loc_48F741
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ch], 0
mov     edx, [eax+34h]
mov     byte ptr [edx+110h], 9
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0

loc_48F741:
cmp     dword ptr [eax+10h], 7Bh ; '{'
jnz     short loc_48F76B
mov     edx, [eax+38h]
mov     byte ptr [edx+110h], 9
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+3Ch]
mov     byte ptr [edx+110h], 9
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0

loc_48F76B:
cmp     dword ptr [eax+10h], 81h
jnz     short loc_48F786
mov     edx, [eax+40h]
mov     byte ptr [edx+110h], 9
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0

loc_48F786:
cmp     dword ptr [eax+10h], 83h
jnz     short loc_48F7A1
mov     eax, [eax+44h]
mov     byte ptr [eax+110h], 9
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0

loc_48F7A1:
pop     edx
retn
sub_48F6E9 endp




sub_48F7A3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_524BA0
mov     dword ptr [ecx+0A4h], offset unk_524D3C
xor     edx, edx

loc_48F7C9:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_524AEC
call    sub_49DB4D
inc     edx
cmp     edx, 0Ah
jl      short loc_48F7C9
pop     edx
pop     ecx
pop     ebx
retn
sub_48F7A3 endp




sub_48F7E7 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_48F7F7
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_48F7F7:
pop     edx
retn
sub_48F7E7 endp

db 8Bh, 0C0h
jpt_48F82D dd offset loc_48F834 ; jump table for switch statement
dd offset loc_48F870
dd offset loc_48F88B
dd offset loc_48F8A4
dd offset loc_48F8AE
dd offset loc_48F8D9



sub_48F813 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_48F82D      ; jumptable 0048F82D default case
and     eax, 0FFh
jmp     jpt_48F82D[eax*4] ; switch jump

loc_48F834:             ; jumptable 0048F82D case 0
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      def_48F82D      ; jumptable 0048F82D default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
and     ds:byte_5F8364, 0FCh
mov     eax, 240011h
call    sub_4D8E42

loc_48F869:
inc     byte ptr [edx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_48F870:             ; jumptable 0048F82D case 1
call    sub_4D8ECC
test    eax, eax
jz      def_48F82D      ; jumptable 0048F82D default case
inc     byte ptr [edx+4]
mov     dword ptr [edx+0Ch], 19h
pop     edx
pop     ecx
pop     ebx
retn

loc_48F88B:             ; jumptable 0048F82D case 2
mov     ecx, [edx+0Ch]
dec     ecx
mov     [edx+0Ch], ecx
jnz     def_48F82D      ; jumptable 0048F82D default case
mov     eax, 2
call    sub_49E0D7
jmp     short loc_48F869

loc_48F8A4:             ; jumptable 0048F82D case 3
mov     eax, edx
call    sub_48F7A3
inc     byte ptr [edx+4]

loc_48F8AE:             ; jumptable 0048F82D case 4
cmp     ds:word_6E23D6, 0
jnz     short loc_48F8D9 ; jumptable 0048F82D case 5
mov     eax, [edx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_48F8CC
call    sub_47EBCB
test    eax, eax
jz      short loc_48F8D9 ; jumptable 0048F82D case 5

loc_48F8CC:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]

loc_48F8D9:             ; jumptable 0048F82D case 5
mov     eax, edx
call    sub_48F7E7
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 5
jnz     short def_48F82D ; jumptable 0048F82D default case
cmp     ds:word_6E23D6, 0
jnz     short def_48F82D ; jumptable 0048F82D default case
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 0Dh
xor     bh, bh
mov     ds:byte_77EA5F, bh
mov     word ptr ds:dword_77EA4E+2, 708h
mov     word ptr ds:dword_77EA52, 0FF7Fh
mov     word ptr ds:dword_77EA52+2, 50h ; 'P'
mov     word ptr ds:dword_77EA5A, 800h
xor     al, al
mov     byte ptr ds:dword_77EA5A+3, al
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
mov     [edx], al
call    sub_4D8EB1
or      byte ptr [ecx], 1
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, 54h ; 'T'
call    sub_47E8B8

def_48F82D:             ; jumptable 0048F82D default case
pop     edx
pop     ecx
pop     ebx
retn
sub_48F813 endp




sub_48F96B proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48F971[edx*4]
pop     edx
retn
sub_48F96B endp

db 90h
jpt_48F9A3 dd offset loc_48F9AA ; jump table for switch statement
dd offset loc_48F9C8
dd offset loc_48FA47
dd offset loc_48FA58
dd offset loc_48FA6E



sub_48F98F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_48F9A3      ; jumptable 0048F9A3 default case
xor     edx, edx
mov     dl, al
jmp     jpt_48F9A3[edx*4] ; switch jump

loc_48F9AA:             ; jumptable 0048F9A3 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_48F9A3      ; jumptable 0048F9A3 default case
mov     eax, 10h
call    sub_4D9040
jmp     short loc_48FA42

loc_48F9C8:             ; jumptable 0048F9A3 case 1
cmp     ds:byte_77EAB8, 0
jnz     def_48F9A3      ; jumptable 0048F9A3 default case
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
mov     ds:dword_77E6B4, offset unk_524DC8
mov     dword ptr [ecx+0A4h], offset unk_524F20
mov     eax, offset unk_524DA0
call    sub_49DB4D
mov     eax, offset unk_524DB4
call    sub_49DB4D

loc_48FA38:
call    sub_49DBD1
call    sub_49DECF

loc_48FA42:
inc     byte ptr [ecx+5]
jmp     short def_48F9A3 ; jumptable 0048F9A3 default case

loc_48FA47:             ; jumptable 0048F9A3 case 2
cmp     ds:word_6E23D6, 0
jnz     short loc_48FAA5
inc     al
mov     [ecx+5], al
jmp     short loc_48FAA5

loc_48FA58:             ; jumptable 0048F9A3 case 3
mov     eax, 25000Ch
call    sub_4D8E42
mov     eax, 1
call    sub_49E0D7
jmp     short loc_48FA38

loc_48FA6E:             ; jumptable 0048F9A3 case 4
call    sub_4D8ECC
test    eax, eax
jz      short loc_48FAA5
cmp     ds:word_6E23D6, 0
jnz     short loc_48FAA5
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_524E18
mov     dword ptr [ecx+0A4h], offset unk_524F30
and     byte ptr [ecx+0Ah], 3
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

loc_48FAA5:
call    sub_49DBD1
call    sub_49DECF

def_48F9A3:             ; jumptable 0048F9A3 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_48FABC
or      byte ptr [ecx+0Ah], 1

loc_48FABC:
pop     edx
pop     ecx
pop     ebx
retn
sub_48F98F endp




sub_48FAC0 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jnz     short loc_48FAD1
mov     eax, 0Ah
jmp     short loc_48FB0B

loc_48FAD1:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
cmp     byte ptr [edx+0Ah], 3
jnz     short loc_48FAF0
mov     eax, [edx+28h]
mov     byte ptr [eax+8], 2
mov     eax, 8
jmp     short loc_48FB0B

loc_48FAF0:
call    sub_47EBCB
test    eax, eax
jz      short loc_48FB17
test    byte ptr [edx+0Ah], 2
jz      short loc_48FB06
mov     eax, [edx+28h]
mov     byte ptr [eax+8], 2

loc_48FB06:
mov     eax, 8

loc_48FB0B:
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_48FB17:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_48FAC0 endp




sub_48FB24 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     ds:word_6E23D6, 0
jnz     loc_48FBBC
mov     al, [eax+5]
cmp     al, 1
jb      short loc_48FB48
jbe     short loc_48FB59
cmp     al, 2
jz      short loc_48FB82
jmp     loc_48FBBC

loc_48FB48:
test    al, al
jnz     short loc_48FBBC
mov     eax, [ecx+24h]
call    sub_4DE336

loc_48FB54:
inc     byte ptr [ecx+5]
jmp     short loc_48FBBC

loc_48FB59:
call    sub_4D8EB1
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 3
jmp     short loc_48FB54

loc_48FB82:
mov     edx, 0Ah
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, 529h
call    sub_47E8B8
mov     eax, 0Eh
call    sub_47EEAE
mov     eax, 20h ; ' '
call    sub_4D9040
mov     byte ptr [ecx], 0
mov     eax, 2
call    sub_49E0D7

loc_48FBBC:
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_48FBCC
call    sub_49DBD1
call    sub_49DECF

loc_48FBCC:
pop     edx
pop     ecx
retn
sub_48FB24 endp




sub_48FBCF proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 39h ; '9'
jb      short loc_48FC13
jbe     loc_48FC57
cmp     edx, 55h ; 'U'
jb      short loc_48FC01
jbe     loc_48FC57
cmp     edx, 8Dh
jb      loc_48FC67
jbe     short loc_48FC41
cmp     edx, 0CDh
jz      short loc_48FC4A
pop     edx
retn

loc_48FC01:
cmp     edx, 43h ; 'C'
jb      loc_48FC67
jbe     short loc_48FC38
cmp     edx, 48h ; 'H'

loc_48FC0F:
jz      short loc_48FC57
pop     edx
retn

loc_48FC13:
cmp     edx, 9
jb      short loc_48FC26
jbe     short loc_48FC57
cmp     edx, 19h
jb      short loc_48FC67
jbe     short loc_48FC57
cmp     edx, 29h ; ')'
jmp     short loc_48FC0F

loc_48FC26:
cmp     edx, 5
jnz     short loc_48FC67
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 1

loc_48FC32:
mov     byte ptr [eax+0Ah], 0
pop     edx
retn

loc_48FC38:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 2
jmp     short loc_48FC32

loc_48FC41:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 3
jmp     short loc_48FC32

loc_48FC4A:
and     byte ptr [eax+0Ah], 1
mov     eax, [eax+28h]
mov     byte ptr [eax+8], 2
pop     edx
retn

loc_48FC57:
mov     edx, [eax+24h]
add     edx, 14h
mov     eax, 90h
call    sub_4D8BC3

loc_48FC67:
pop     edx

locret_48FC68:
retn
sub_48FBCF endp




sub_48FC69 proc near
cmp     dword ptr [eax+10h], 1Eh
jnz     short locret_48FC7A
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

locret_48FC7A:
retn
sub_48FC69 endp




sub_48FC7B proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48FC81[edx*4]
pop     edx
retn
sub_48FC7B endp

db 90h
jpt_48FCB0 dd offset loc_48FCB7 ; jump table for switch statement
dd offset loc_48FCEE
dd offset loc_48FD1C
dd offset loc_48FD59



sub_48FC9B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_48FCB0      ; jumptable 0048FCB0 default case
and     eax, 0FFh
jmp     jpt_48FCB0[eax*4] ; switch jump

loc_48FCB7:             ; jumptable 0048FCB0 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_48FCB0      ; jumptable 0048FCB0 default case
mov     byte ptr ds:dword_5F836C, 3
xor     al, al
mov     byte ptr ds:dword_5F836C+1, al
and     ds:byte_5F8364, 0FDh
inc     byte ptr [ecx+5]
mov     ds:word_55A5B4, 190h
pop     edx
pop     ecx
pop     ebx
retn

loc_48FCEE:             ; jumptable 0048FCB0 case 1
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, offset unk_524F60
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
mov     eax, 250008h
call    sub_4D8E42
inc     byte ptr [ecx+5]
pop     edx
pop     ecx
pop     ebx
retn

loc_48FD1C:             ; jumptable 0048FCB0 case 2
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
mov     ds:dword_77E6B4, offset unk_52502C
mov     dword ptr [ecx+0A4h], offset unk_525078
mov     eax, 2
call    sub_49E0D7
call    sub_49DBD1
call    sub_49DECF
inc     byte ptr [ecx+5]

loc_48FD59:             ; jumptable 0048FCB0 case 3
call    sub_49DBD1
call    sub_49DECF
cmp     ds:word_6E23D6, 0
jnz     short def_48FCB0 ; jumptable 0048FCB0 default case
mov     ds:dword_77E6B4, offset unk_524F74
mov     dword ptr [ecx+0A4h], offset unk_524FFC
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

def_48FCB0:             ; jumptable 0048FCB0 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_48FC9B endp




sub_48FD94 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_48FDD2
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jz      short loc_48FDDA
mov     bh, [edx+0Ah]
test    bh, 80h
jnz     short loc_48FDDA
mov     cl, bh
or      cl, 1
mov     [edx+0Ah], cl
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]
jmp     short loc_48FDD6

loc_48FDD2:
add     byte ptr [edx+4], 2

loc_48FDD6:
mov     byte ptr [edx+5], 0

loc_48FDDA:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_48FD94 endp




sub_48FDE8 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_48FDFD
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]

loc_48FDFD:
cmp     ds:word_6E23D6, 0
jnz     short loc_48FE0A
inc     byte ptr [edx+4]

loc_48FE0A:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_48FDE8 endp




sub_48FE17 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_48FE2F
jbe     short loc_48FE41
cmp     al, 2
jz      short loc_48FE92
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_48FE2F:
test    al, al
jnz     loc_48FEFD
inc     al
mov     [ecx+5], al
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_48FE41:
cmp     ds:word_6E23D6, 0
jnz     loc_48FEFD
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
test    byte ptr [ecx+0Ah], 1
jz      short loc_48FE69
call    sub_4E1D8A

loc_48FE69:
call    sub_49DF64
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     bh, 1
mov     byte ptr ds:dword_77E954, bh
call    sub_42A66D
call    sub_4D8EB1
add     [ecx+5], bh
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_48FE92:
mov     byte ptr ds:dword_77EA5A+2, al
mov     ds:byte_77EA5E, 0Dh
xor     dh, dh
mov     ds:byte_77EA5F, dh
mov     word ptr ds:dword_77EA4E+2, 708h
mov     word ptr ds:dword_77EA52, 0FF7Fh
mov     word ptr ds:dword_77EA52+2, 0FFD8h
xor     edi, edi
mov     word ptr ds:dword_77EA5A, di
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, al
or      ds:byte_5F8364, 3
mov     ds:byte_5F83DA, bl
mov     ds:byte_77E807, bl
mov     eax, 1Fh
call    sub_47EA91
mov     [ecx], bl

loc_48FEFD:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_48FE17 endp



; Attributes: thunk

sub_48FF02 proc near
jmp     sub_49DF64
sub_48FF02 endp




sub_48FF07 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     edi, [eax+24h]
mov     dl, [eax+6]
test    dl, dl
jbe     short loc_48FF20
cmp     dl, 1
jz      short loc_48FF49
jmp     short def_48FFCC ; jumptable 0048FFCC default case

loc_48FF20:
mov     cx, ds:word_55A5B4
cmp     cx, 0C8h
jle     short loc_48FF3C
mov     esi, ecx
sub     esi, 8
mov     ds:word_55A5B4, si
jmp     short def_48FFCC ; jumptable 0048FFCC default case

loc_48FF3C:
cmp     dword ptr [eax+10h], 74h ; 't'
jl      short def_48FFCC ; jumptable 0048FFCC default case
inc     dl
mov     [eax+6], dl
jmp     short def_48FFCC ; jumptable 0048FFCC default case

loc_48FF49:
mov     dx, ds:word_55A5B4
cmp     dx, 3C0h
jge     short def_48FFCC ; jumptable 0048FFCC default case
mov     ebx, edx
add     ebx, 10h
mov     ds:word_55A5B4, bx

def_48FFCC:             ; jumptable 0048FFCC default case
mov     edx, dword ptr ds:unk_55A5B2
sar     edx, 10h
mov     eax, [edi+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     esi, esp
call    sub_4DD510
lea     edx, [esp+2Ch+var_1C]
mov     eax, esp
call    sub_4DD57B
mov     eax, [esp+2Ch+var_1C]
add     [edi+14h], ax
mov     eax, [esp+2Ch+var_18]
add     [edi+18h], ax
add     esp, 18h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48FF07 endp

db 8Bh, 0C0h
jpt_48FFCC dd offset loc_48FFDD ; jump table for switch statement
dd offset loc_48FFDD
dd offset loc_48FFD3
dd offset loc_48FFE2



sub_48FFB3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     edx, eax
mov     edi, [eax+24h]
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      short def_48FFCC ; jumptable 0048FFCC default case
and     eax, 0FFh
jmp     jpt_48FFCC[eax*4] ; switch jump

loc_48FFD3:             ; jumptable 0048FFCC case 2
mov     eax, 0Ah
call    sub_49E0D7

loc_48FFDD:             ; jumptable 0048FFCC cases 0,1
inc     byte ptr [edx+6]
jmp     short def_48FFCC ; jumptable 0048FFCC default case

loc_48FFE2:             ; jumptable 0048FFCC case 3
cmp     ds:word_6E23D6, 0
jnz     def_48FFCC      ; jumptable 0048FFCC default case
call    sub_49DF64
jmp     def_48FFCC      ; jumptable 0048FFCC default case
sub_48FFB3 endp




sub_48FFFA proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_490000[edx*4]
pop     edx
retn
sub_48FFFA endp

align 2
jpt_490033 dd offset loc_49003A ; jump table for switch statement
dd offset loc_490062
dd offset loc_4900E2
dd offset loc_4900FB
dd offset loc_490106



sub_49001E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_490033      ; jumptable 00490033 default case
and     eax, 0FFh
jmp     jpt_490033[eax*4] ; switch jump

loc_49003A:             ; jumptable 00490033 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_490033      ; jumptable 00490033 default case
mov     byte ptr [ecx+0Ah], 80h
mov     eax, 10h
call    sub_4D9040

loc_49005A:
inc     byte ptr [ecx+5]
jmp     def_490033      ; jumptable 00490033 default case

loc_490062:             ; jumptable 00490033 case 1
cmp     ds:byte_77EAB8, 0
jnz     def_490033      ; jumptable 00490033 default case
and     ds:byte_5F8364, 0FCh
mov     edx, 80h
mov     eax, 10h
call    sub_4DC979
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
mov     ds:dword_77E6B4, offset unk_5250A8
mov     dword ptr [ecx+0A4h], offset unk_525228
mov     eax, offset unk_525094
call    sub_49DB4D
call    sub_49DBD1
call    sub_49DECF
jmp     loc_49005A

loc_4900E2:             ; jumptable 00490033 case 2
cmp     ds:word_6E23D6, 0
jnz     short loc_490134
mov     eax, 24001Bh
call    sub_4D8E42

loc_4900F6:
inc     byte ptr [ecx+5]
jmp     short loc_490134

loc_4900FB:             ; jumptable 00490033 case 3
call    sub_4D8ECC
test    eax, eax
jz      short loc_490134
jmp     short loc_4900F6

loc_490106:             ; jumptable 00490033 case 4
cmp     ds:word_6E23D6, 0
jnz     short loc_490134
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_5250F8
mov     dword ptr [ecx+0A4h], offset unk_525238
and     byte ptr [ecx+0Ah], 1
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

loc_490134:
call    sub_49DBD1
call    sub_49DECF

def_490033:             ; jumptable 00490033 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_49014B
or      byte ptr [ecx+0Ah], 1

loc_49014B:
pop     edx
pop     ecx
pop     ebx
retn
sub_49001E endp




sub_49014F proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_490173
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jnz     short loc_490173
cmp     byte ptr [edx+0Ah], 1
jnz     short loc_49017A

loc_490173:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_49017A:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_49014F endp




sub_490187 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
call    sub_4D8EB1
mov     edx, 0Ah
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, [ecx+24h]
call    sub_4DE336
call    sub_490252
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 3
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000028h
call    sub_4D89E4
mov     byte ptr [ecx], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_490187 endp




sub_4901E4 proc near
push    edx
mov     edx, eax
mov     eax, [eax+24h]
mov     edx, [edx+10h]
cmp     edx, 14Fh
jb      short loc_490201
jbe     short loc_490217
cmp     edx, 163h
jz      short loc_49021F
pop     edx
retn

loc_490201:
cmp     edx, 0EBh
jnz     short loc_490227
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
pop     edx
retn

loc_490217:
inc     byte ptr [eax+0Dh]
inc     byte ptr [eax+0Eh]
pop     edx
retn

loc_49021F:
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_490227:
pop     edx

locret_490228:
retn
sub_4901E4 endp




sub_490229 proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jbe     short loc_490238
cmp     edx, 64h ; 'd'
jz      short loc_490245
pop     edx
retn

loc_490238:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Eh], 0
pop     edx
retn

loc_490245:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Dh], 0
pop     edx
retn
sub_490229 endp




sub_490252 proc near
push    ebx
push    ecx
push    edx
call    sub_4DDFD0
test    eax, eax
jz      short loc_4902CA
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 17h
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     word ptr [eax+14h], 0FEFCh
mov     word ptr [eax+16h], 0
mov     word ptr [eax+18h], 0EA20h
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
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     byte ptr [eax+8], 0
push    7080h
mov     ecx, 51h ; 'Q'
xor     ebx, ebx
xor     edx, edx
call    sub_436785

loc_4902CA:
pop     edx
pop     ecx
pop     ebx
retn
sub_490252 endp




sub_4902CE proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 18h
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
sub_4902CE endp




sub_49031A proc near

var_C= byte ptr -0Ch

push    esi
push    edi
sub     esp, 4
mov     [esp+0Ch+var_C], al
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
mov     al, [esp+0Ch+var_C]
mov     [esi+4], al
mov     [esi+5], dl
mov     [esi+6], bl
or      byte ptr [esi+7], 2
mov     edx, ds:dword_77E6DC
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
mov     edi, edx
push    0
xor     eax, eax
mov     ax, cx
shl     eax, 5
or      al, 0Fh
mov     ecx, eax
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
add     esp, 4
pop     edi
pop     esi

locret_4903AD:
retn
sub_49031A endp




sub_4903AE proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4903AD
mov     eax, [eax+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
xor     eax, eax
jmp     sub_4902CE
sub_4903AE endp




sub_4903C9 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490412
mov     eax, 1
call    sub_4902CE
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 0Bh
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FE480000h
mov     dword ptr [eax+24h], 0FE700000h
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
or      byte ptr [eax], 2

loc_490412:
pop     edx
retn
sub_4903C9 endp




sub_490414 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_490435
mov     eax, [eax+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+56h], 800h
mov     dword ptr [eax+1Ch], 0FEA20000h

locret_490435:
retn
sub_490414 endp




sub_490436 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49045F
mov     edx, [eax+28h]
or      byte ptr [edx], 2
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0
mov     dword ptr [edx+1Ch], 0FE5C0000h
mov     dword ptr [edx+24h], 0FF380000h
mov     word ptr [edx+56h], 0C00h

loc_49045F:
cmp     dword ptr [eax+10h], 3Eh ; '>'
jnz     short loc_490470
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_490470:
cmp     dword ptr [eax+10h], 52h ; 'R'
jnz     short loc_49048E
mov     edx, [eax+28h]
mov     dword ptr [edx+24h], 0FF420000h
mov     byte ptr [edx+14Bh], 0FFh
mov     byte ptr [edx+14Fh], 0FFh

loc_49048E:
cmp     dword ptr [eax+10h], 79h ; 'y'
jnz     short loc_49049F
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0

loc_49049F:
cmp     dword ptr [eax+10h], 0D2h
jnz     loc_49052D
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+19Eh], 2108h
mov     word ptr [eax+1AEh], 2D6Bh
mov     word ptr [eax+1C6h], 2D6Bh
mov     word ptr [eax+1B6h], 2108h
mov     word ptr [eax+1CEh], 2108h
mov     word ptr [eax+20Eh], 2108h
mov     word ptr [eax+216h], 2108h
mov     word ptr [eax+21Eh], 2108h
mov     word ptr [eax+226h], 2108h
mov     word ptr [eax+22Eh], 2108h
mov     byte ptr [eax+10Bh], 0FFh
mov     byte ptr [eax+117h], 0FFh
mov     byte ptr [eax+143h], 0
mov     byte ptr [eax+147h], 0

loc_49052D:
pop     edx
retn
sub_490436 endp




sub_49052F proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+0Ch], 0
jnz     short loc_49054E
mov     eax, 2
call    sub_4902CE
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh

loc_49054E:
pop     edx
retn
sub_49052F endp




sub_490550 proc near
push    ebx
shl     edx, 3
add     eax, edx
mov     dx, [eax+196h]
cmp     dx, 4210h
jz      short loc_490578
mov     ebx, edx
add     ebx, 421h
mov     [eax+196h], bx
cmp     bx, 4210h

loc_490578:
pop     ebx
retn
sub_490550 endp




sub_49057A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4905EB
mov     eax, 1
call    sub_4902CE
mov     eax, [ecx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FE590000h
mov     dword ptr [eax+24h], 0FF3D0000h
mov     byte ptr [eax+10Bh], 0
mov     byte ptr [eax+117h], 0
mov     byte ptr [eax+143h], 0FFh
mov     byte ptr [eax+147h], 0FFh
mov     eax, [ecx+2Ch]
or      byte ptr [eax], 2
mov     dword ptr [ecx+64h], 1
mov     dword ptr [ecx+74h], 2
mov     dword ptr [ecx+70h], 0
mov     eax, [ecx+70h]
mov     [ecx+6Ch], eax
mov     [ecx+68h], eax

loc_4905EB:
mov     ebx, [ecx+10h]
cmp     ebx, 0Eh
jl      loc_490677
cmp     ebx, 14h
jg      short loc_490677
mov     ebx, [ecx+28h]
mov     edx, 1
mov     eax, ebx
call    sub_490550
mov     edx, 3
mov     eax, ebx
call    sub_490550
mov     edx, 6
mov     eax, ebx
call    sub_490550
mov     edx, 7
mov     eax, ebx
call    sub_490550
mov     edx, 4
mov     eax, ebx
call    sub_490550
mov     edx, 0Fh
mov     eax, ebx
call    sub_490550
mov     edx, 10h
mov     eax, ebx
call    sub_490550
mov     edx, 11h
mov     eax, ebx
call    sub_490550
mov     edx, 12h
mov     eax, ebx
call    sub_490550
mov     edx, 13h
mov     eax, ebx
call    sub_490550

loc_490677:
cmp     dword ptr [ecx+10h], 39h ; '9'
jnz     short loc_490684
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1

loc_490684:
cmp     dword ptr [ecx+10h], 57h ; 'W'
jnz     short loc_490691
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 0

loc_490691:
mov     eax, [ecx+10h]
cmp     eax, 5Ah ; 'Z'
jl      short loc_4906C3
cmp     eax, 78h ; 'x'
jg      short loc_4906C3
add     dword ptr [ecx+68h], 9
add     dword ptr [ecx+6Ch], 9
add     dword ptr [ecx+70h], 9
cmp     dword ptr [ecx+68h], 0FFh
jb      short loc_4906C3
mov     dword ptr [ecx+70h], 0FFh
mov     eax, [ecx+70h]
mov     [ecx+6Ch], eax
mov     [ecx+68h], eax

loc_4906C3:
pop     edx
pop     ecx
pop     ebx
retn
sub_49057A endp




sub_4906C7 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4906E7
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0
mov     dword ptr [eax+64h], 0
mov     eax, [eax+30h]
mov     byte ptr [eax+0Eh], 80h

loc_4906E7:
pop     edx
retn
sub_4906C7 endp




sub_4906E9 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490723
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FECC0000h
mov     dword ptr [eax+24h], 0FE840000h
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 0Ch
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FE5C0000h
mov     word ptr [eax+56h], 0

loc_490723:
cmp     dword ptr [edx+10h], 11h
jnz     short loc_49073A
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+56h], 0

loc_49073A:
pop     edx
retn
sub_4906E9 endp




sub_49073C proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_490766
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 6
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1
mov     dword ptr [edx+1Ch], 0FF380000h
mov     dword ptr [edx+24h], 0FF380000h
mov     word ptr [edx+56h], 0

loc_490766:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_490773
mov     edx, [eax+28h]
mov     byte ptr [edx+0Dh], 0

loc_490773:
cmp     dword ptr [eax+10h], 66h ; 'f'
jnz     short loc_49078A
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+56h], 800h

loc_49078A:
pop     edx
retn
sub_49073C endp




sub_49078C proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4907A3
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+56h], 800h

locret_4907A3:
retn
sub_49078C endp




sub_4907A4 proc near

; FUNCTION CHUNK AT 0047BC6C SIZE 0000002C BYTES

cmp     dword ptr [eax+10h], 0Ah
jnz     short locret_4907A3
jmp     loc_47BC6C
sub_4907A4 endp




sub_4907AF proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4907C0
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0

locret_4907C0:
retn
sub_4907AF endp




sub_4907C1 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4907D2
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0

locret_4907D2:
retn
sub_4907C1 endp




sub_4907D3 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4907FD
xor     eax, eax
call    sub_4902CE
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh

loc_4907FD:
pop     edx
retn
sub_4907D3 endp




sub_4907FF proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49082C
mov     eax, 1
call    sub_4902CE
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 6
mov     byte ptr [eax+0Ah], 0

loc_49082C:
pop     edx
retn
sub_4907FF endp




sub_49082E proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490858
xor     eax, eax
call    sub_4902CE
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh

loc_490858:
pop     edx
retn
sub_49082E endp




sub_49085A proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490887
mov     eax, 1
call    sub_4902CE
mov     eax, [edx+24h]
and     byte ptr [eax], 0FCh
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2

loc_490887:
pop     edx
retn
sub_49085A endp




sub_490889 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4908AB
xor     eax, eax
call    sub_4902CE
mov     eax, [edx+24h]
or      byte ptr [eax], 3
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh

loc_4908AB:
pop     edx
retn
sub_490889 endp




sub_4908AD proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4908BA
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 2

locret_4908BA:
retn
sub_4908AD endp




sub_4908BB proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490903
mov     eax, 1
call    sub_4902CE
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 9
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FF1F0000h
mov     dword ptr [eax+20h], 0FFFB0000h
mov     dword ptr [eax+24h], 0FE700000h
mov     word ptr [eax+56h], 400h
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2

loc_490903:
cmp     dword ptr [edx+10h], 32h ; '2'
jnz     short loc_490917
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 0Ah
mov     byte ptr [eax+0Ah], 0

loc_490917:
pop     edx
retn
sub_4908BB endp




sub_490919 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49092A
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0

locret_49092A:
retn
sub_490919 endp




sub_49092B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_5252A8
mov     dword ptr [ecx+0A4h], offset unk_52566C
mov     eax, offset unk_525258
call    sub_49DB4D
mov     eax, offset unk_52526C
call    sub_49DB4D
mov     eax, offset unk_525280
call    sub_49DB4D
mov     eax, offset unk_525294
call    sub_49DB4D
mov     dword ptr [ecx+64h], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_49092B endp




sub_490982 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_490992
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_490992:
pop     edx
retn
sub_490982 endp

db 8Bh, 0C0h
jpt_4909C4 dd offset loc_4909CB ; jump table for switch statement
dd offset loc_4909F6
dd offset loc_490A12
dd offset loc_490A31
dd offset loc_490A3B
dd offset loc_490A66



sub_4909AE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_4909C4      ; jumptable 004909C4 default case
and     eax, 0FFh
jmp     jpt_4909C4[eax*4] ; switch jump

loc_4909CB:             ; jumptable 004909C4 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4909C4      ; jumptable 004909C4 default case
and     ds:byte_5F8364, 0FCh
inc     byte ptr [esi+4]
mov     eax, 25000Bh
call    sub_4D8E42
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4909F6:             ; jumptable 004909C4 case 1
call    sub_4D8ECC
test    eax, eax
jz      def_4909C4      ; jumptable 004909C4 default case
mov     dword ptr [esi+0Ch], 1Eh
inc     byte ptr [esi+4]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_490A12:             ; jumptable 004909C4 case 2
mov     ebx, [esi+0Ch]
dec     ebx
mov     [esi+0Ch], ebx
jnz     def_4909C4      ; jumptable 004909C4 default case
inc     byte ptr [esi+4]
mov     eax, 2
call    sub_49E0D7
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_490A31:             ; jumptable 004909C4 case 3
mov     eax, esi
call    sub_49092B
inc     byte ptr [esi+4]

loc_490A3B:             ; jumptable 004909C4 case 4
cmp     ds:word_6E23D6, 0
jnz     short loc_490A66 ; jumptable 004909C4 case 5
mov     eax, [esi+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_490A59
call    sub_47EBCB
test    eax, eax
jz      short loc_490A66 ; jumptable 004909C4 case 5

loc_490A59:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [esi+4]

loc_490A66:             ; jumptable 004909C4 case 5
mov     eax, esi
call    sub_490982
cmp     dword ptr [esi+64h], 0
jz      short loc_490A8D
xor     ecx, ecx
mov     cx, [esi+74h]
xor     ebx, ebx
mov     bl, [esi+70h]
xor     edx, edx
mov     dl, [esi+6Ch]
xor     eax, eax
mov     al, [esi+68h]
call    sub_49031A

loc_490A8D:
call    sub_49DBD1
call    sub_49DECF
cmp     dword ptr [esi+14h], 4680h
cmp     byte ptr [esi+4], 5
jnz     def_4909C4      ; jumptable 004909C4 default case
cmp     ds:word_6E23D6, 0
jnz     def_4909C4      ; jumptable 004909C4 default case
mov     bh, 2
mov     byte ptr ds:dword_77EA5A+2, bh
mov     ds:byte_77EA5E, 1Bh
mov     ds:byte_77EA5F, 6
mov     word ptr ds:dword_77EA4E+2, 0FFC0h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0C0h
mov     word ptr ds:dword_77EA5A, 800h
xor     al, al
mov     byte ptr ds:dword_77EA5A+3, al
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, bh
mov     [esi], al
call    sub_4D8EB1
or      ds:byte_5F8364, 1
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, 2EBh
call    sub_47EE82
mov     eax, 55h ; 'U'
call    sub_47E8B8
call    sub_47E829

def_4909C4:             ; jumptable 004909C4 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4909AE endp




sub_490B3A proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 10h
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
sub_490B3A endp




sub_490B86 proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490BAC
mov     eax, [eax+28h]
mov     bl, [eax]
and     bl, 0FDh
mov     [eax], bl
mov     edx, [edx+24h]
mov     bh, bl
and     bh, 0FDh
mov     [eax], bh
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_490BAC:
pop     edx
pop     ebx
retn
sub_490B86 endp




sub_490BAF proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490BD6
mov     eax, 1
call    sub_490B3A
mov     eax, [edx+24h]
and     byte ptr [eax], 0FCh
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 1

loc_490BD6:
pop     edx
retn
sub_490BAF endp




sub_490BD8 proc near
cmp     dword ptr [eax+10h], 8
jnz     short locret_490BEC
mov     eax, [eax+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 1

locret_490BEC:
retn
sub_490BD8 endp




sub_490BED proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490C1B
xor     eax, eax
call    sub_490B3A
mov     eax, [edx+28h]
and     byte ptr [eax], 0FCh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [edx+24h]
or      byte ptr [eax], 3
mov     byte ptr [eax+8], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 2

loc_490C1B:
pop     edx
retn
sub_490BED endp




sub_490C1D proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+5], 0
jnz     short loc_490C56
cmp     ds:word_6E23D6, 0
jnz     short loc_490C56
mov     eax, 3
call    sub_49E0D7
mov     eax, 2
call    sub_490B3A
mov     eax, [edx+24h]
mov     byte ptr [eax+8], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 5
inc     byte ptr [edx+5]

loc_490C56:
pop     edx
retn
sub_490C1D endp




sub_490C58 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_525758
mov     dword ptr [ecx+0A4h], offset unk_5258E8
xor     edx, edx

loc_490C7E:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_52571C
call    sub_49DB4D
inc     edx
cmp     edx, 3
jl      short loc_490C7E
pop     edx
pop     ecx
pop     ebx
retn
sub_490C58 endp




sub_490C9C proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_490CAC
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_490CAC:
pop     edx
retn
sub_490C9C endp

jpt_490CFF dd offset loc_490D06 ; jump table for switch statement
dd offset loc_490D2A
dd offset loc_490D82
dd offset loc_490D9D
dd offset loc_490DAF
dd offset loc_490DBC
dd offset loc_490DC6
dd offset def_490CFF
dd offset def_490CFF
dd offset def_490CFF
dd offset loc_490DFC
jpt_490D53 dd offset loc_490D5A ; jump table for switch statement
dd offset loc_490D61
dd offset loc_490D68
dd offset loc_490D76



sub_490CEA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 0Ah         ; switch 11 cases
ja      def_490CFF      ; jumptable 00490CFF default case, cases 7-9
and     eax, 0FFh
jmp     jpt_490CFF[eax*4] ; switch jump

loc_490D06:             ; jumptable 00490CFF case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_490CFF      ; jumptable 00490CFF default case, cases 7-9
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881

def_490D53:             ; jumptable 00490D53 default case
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_490D2A:             ; jumptable 00490CFF case 1
call    sub_4D8E21
call    rand_
sar     eax, 8
and     eax, 3
mov     ds:word_55A5B8, ax
xor     dl, dl
mov     ds:byte_560BE6, dl
cmp     ax, 3           ; switch 4 cases
ja      short def_490D53 ; jumptable 00490D53 default case
and     eax, 0FFFFh
jmp     jpt_490D53[eax*4] ; switch jump

loc_490D5A:             ; jumptable 00490D53 case 0
mov     eax, 250010h
jmp     short loc_490D7B

loc_490D61:             ; jumptable 00490D53 case 1
mov     eax, 250011h
jmp     short loc_490D7B

loc_490D68:             ; jumptable 00490D53 case 2
mov     ds:byte_560BE6, 0FFh
mov     eax, 250012h
jmp     short loc_490D7B

loc_490D76:             ; jumptable 00490D53 case 3
mov     eax, 250011h

loc_490D7B:
call    sub_4D8E42
jmp     short def_490D53 ; jumptable 00490D53 default case

loc_490D82:             ; jumptable 00490CFF case 2
call    sub_4D8ECC
test    eax, eax
jz      def_490CFF      ; jumptable 00490CFF default case, cases 7-9
inc     byte ptr [ecx+4]
mov     dword ptr [ecx+0Ch], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_490D9D:             ; jumptable 00490CFF case 3
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     def_490CFF      ; jumptable 00490CFF default case, cases 7-9
jmp     def_490D53      ; jumptable 00490D53 default case

loc_490DAF:             ; jumptable 00490CFF case 4
mov     eax, 2
call    sub_49E0D7
inc     byte ptr [ecx+4]

loc_490DBC:             ; jumptable 00490CFF case 5
mov     eax, ecx
call    sub_490C58
inc     byte ptr [ecx+4]

loc_490DC6:             ; jumptable 00490CFF case 6
cmp     ds:word_6E23D6, 0
jnz     short loc_490DFC ; jumptable 00490CFF case 10
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_490DE4
call    sub_47EBCB
test    eax, eax
jz      short loc_490DFC ; jumptable 00490CFF case 10

loc_490DE4:
mov     eax, 0Ah
call    sub_49E0D7
mov     byte ptr [ecx+4], 0Ah
mov     eax, 25h ; '%'
call    sub_47E8B8

loc_490DFC:             ; jumptable 00490CFF case 10
mov     eax, ecx
call    sub_490C9C
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 0Ah
jnz     short def_490CFF ; jumptable 00490CFF default case, cases 7-9
cmp     ds:word_6E23D6, 0
jnz     short def_490CFF ; jumptable 00490CFF default case, cases 7-9
mov     bh, 2
mov     byte ptr ds:dword_77EA5A+2, bh
mov     ds:byte_77EA5E, 13h
mov     ds:byte_77EA5F, 0Bh
mov     word ptr ds:dword_77EA4E+2, 0FFC0h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0C0h
mov     word ptr ds:dword_77EA5A, 800h
xor     dl, dl
mov     byte ptr ds:dword_77EA5A+3, dl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, bh
mov     [ecx], dl
mov     ds:byte_77E7FF, 1
call    sub_4D8EB1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_490CFF:             ; jumptable 00490CFF default case, cases 7-9
pop     edx
pop     ecx
pop     ebx
retn
sub_490CEA endp




sub_490E88 proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 0Ah
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
sub_490E88 endp




sub_490ED4 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_490EE8
mov     eax, [eax+24h]
or      byte ptr [eax], 3
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

locret_490EE8:
retn
sub_490ED4 endp




sub_490EE9 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490F08
mov     eax, 1
call    sub_490E88
mov     eax, [edx+24h]
and     byte ptr [eax], 0FCh
mov     eax, [edx+28h]
or      byte ptr [eax], 2

loc_490F08:
pop     edx

locret_490F09:
retn
sub_490EE9 endp




sub_490F0A proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_490F3E
mov     eax, 2
call    sub_490E88
mov     eax, [edx+24h]
or      byte ptr [eax], 3
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh
and     ds:byte_5F8364, 0FEh

loc_490F3E:
pop     edx
retn
sub_490F0A endp




sub_490F40 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+5], 0
jnz     short loc_490F97
cmp     byte ptr ds:dword_77E7D5+1, 7
jnz     short loc_490F6B
mov     eax, 21h ; '!'
call    sub_47E888
test    eax, eax
jz      short loc_490F6B
mov     eax, [edx+0A4h]
mov     byte ptr [eax], 0FFh
pop     edx
retn

loc_490F6B:
cmp     ds:word_6E23D6, 0
jnz     short loc_490F97
mov     eax, 3
call    sub_49E0D7
xor     eax, eax
call    sub_490E88
mov     eax, [edx+24h]
or      byte ptr [eax], 3
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
inc     byte ptr [edx+5]

loc_490F97:
pop     edx
retn
sub_490F40 endp




sub_490F99 proc near
push    edx
mov     ds:dword_77E6B4, offset unk_525954
mov     dword ptr [eax+0A4h], offset unk_525AF4
xor     edx, edx

loc_490FB0:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_525918
call    sub_49DB4D
inc     edx
cmp     edx, 3
jl      short loc_490FB0
pop     edx
retn
sub_490F99 endp




sub_490FCC proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_490FDC
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_490FDC:
pop     edx
retn
sub_490FCC endp

align 10h
jpt_491027 dd offset loc_49102E ; jump table for switch statement
dd offset loc_491050
dd offset loc_491082
dd offset loc_49109E
dd offset loc_4910AD
dd offset loc_4910BA
dd offset loc_4910C4
dd offset def_491027
dd offset def_491027
dd offset def_491027
dd offset loc_4910F0



sub_49100C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 0Ah         ; switch 11 cases
ja      def_491027      ; jumptable 00491027 default case, cases 7-9
and     eax, 0FFh
jmp     jpt_491027[eax*4] ; switch jump

loc_49102E:             ; jumptable 00491027 case 0
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      def_491027      ; jumptable 00491027 default case, cases 7-9
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881

loc_491048:
inc     byte ptr [ecx+4]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_491050:             ; jumptable 00491027 case 1
call    sub_4D8E21
call    rand_
mov     edx, eax
sar     edx, 8
and     edx, 1
test    dx, dx
jbe     short loc_49106F
cmp     dx, 1
jz      short loc_491076
jmp     short loc_491048

loc_49106F:
mov     eax, 25001Ch
jmp     short loc_49107B

loc_491076:
mov     eax, 25001Dh

loc_49107B:
call    sub_4D8E42
jmp     short loc_491048

loc_491082:             ; jumptable 00491027 case 2
call    sub_4D8ECC
test    eax, eax
jz      def_491027      ; jumptable 00491027 default case, cases 7-9
inc     byte ptr [ecx+4]
mov     dword ptr [ecx+0Ch], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49109E:             ; jumptable 00491027 case 3
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     def_491027      ; jumptable 00491027 default case, cases 7-9
jmp     short loc_491048

loc_4910AD:             ; jumptable 00491027 case 4
mov     eax, 2
call    sub_49E0D7
inc     byte ptr [ecx+4]

loc_4910BA:             ; jumptable 00491027 case 5
mov     eax, ecx
call    sub_490F99
inc     byte ptr [ecx+4]

loc_4910C4:             ; jumptable 00491027 case 6
cmp     ds:word_6E23D6, 0
jnz     short loc_4910F0 ; jumptable 00491027 case 10
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_4910E2
call    sub_47EBCB
test    eax, eax
jz      short loc_4910F0 ; jumptable 00491027 case 10

loc_4910E2:
mov     eax, 0Ah
call    sub_49E0D7
mov     byte ptr [ecx+4], 0Ah

loc_4910F0:             ; jumptable 00491027 case 10
mov     eax, ecx
call    sub_490FCC
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 0Ah
jnz     def_491027      ; jumptable 00491027 default case, cases 7-9
mov     si, ds:word_6E23D6
test    si, si
jnz     def_491027      ; jumptable 00491027 default case, cases 7-9
cmp     byte ptr ds:dword_77E7D5+1, 7
jnz     short loc_49115E
mov     eax, 21h ; '!'
call    sub_47E888
test    eax, eax
jz      short loc_49115E
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, 3
mov     word ptr ds:dword_77EA4E+2, si
mov     word ptr ds:dword_77EA52, si
mov     word ptr ds:dword_77EA52+2, si
mov     word ptr ds:dword_77EA5A, si
jmp     short loc_491190

loc_49115E:
mov     ds:byte_77EA5E, 1Bh
mov     ds:byte_77EA5F, 6
mov     word ptr ds:dword_77EA4E+2, 0FFC0h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0C0h
mov     word ptr ds:dword_77EA5A, 800h

loc_491190:
mov     bl, 2
mov     byte ptr ds:dword_77EA5A+2, bl
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, bl
mov     [ecx], bh
mov     ds:byte_77E7FF, bh
or      byte ptr [edx], 1
call    sub_4D8EB1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_491027:             ; jumptable 00491027 default case, cases 7-9
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49100C endp




sub_4911CC proc near
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 0Ch
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
pop     edx

locret_491207:
retn
sub_4911CC endp




sub_491208 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49121B
mov     eax, 1
call    sub_4911CC

loc_49121B:
cmp     dword ptr [edx+10h], 0Bh
jnz     short loc_49124F
call    sub_4DE13B
test    eax, eax
jz      short loc_49124F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+0Ch], 5
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 2
mov     word ptr [eax+1Ch], 0
mov     word ptr [eax+1Eh], 0FEB3h
mov     word ptr [eax+20h], 0FC90h

loc_49124F:
pop     edx
retn
sub_491208 endp




sub_491251 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49128E
mov     eax, 2
call    sub_4911CC
mov     eax, [edx+2Ch]
or      byte ptr [eax], 6
mov     eax, [edx+30h]
or      byte ptr [eax], 6
mov     eax, [edx+34h]
or      byte ptr [eax], 6
mov     eax, [edx+38h]
or      byte ptr [eax], 6
mov     eax, [edx+44h]
or      byte ptr [eax], 6
mov     eax, [edx+40h]
or      byte ptr [eax], 6
mov     eax, [edx+3Ch]
or      byte ptr [eax], 6

loc_49128E:
cmp     dword ptr [edx+10h], 1Eh
jnz     short loc_4912E1
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+34h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+38h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+44h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+40h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+3Ch]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_4912E1:
pop     edx

locret_4912E2:
retn
sub_491251 endp




sub_4912E3 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_491320
mov     eax, 3
call    sub_4911CC
mov     eax, [edx+2Ch]
mov     byte ptr [eax], 0
mov     eax, [edx+30h]
mov     byte ptr [eax], 0
mov     eax, [edx+34h]
mov     byte ptr [eax], 0
mov     eax, [edx+38h]
mov     byte ptr [eax], 0
mov     eax, [edx+44h]
mov     byte ptr [eax], 0
mov     eax, [edx+40h]
mov     byte ptr [eax], 0
mov     eax, [edx+3Ch]
mov     byte ptr [eax], 0

loc_491320:
cmp     dword ptr [edx+10h], 0
jnz     short loc_491342
mov     eax, [edx+24h]
or      byte ptr [eax], 6
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0Ah
mov     eax, [edx+28h]
or      byte ptr [eax], 6
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0Ah

loc_491342:
pop     edx
retn
sub_4912E3 endp




sub_491344 proc near
push    ebx
push    ecx
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49138A
mov     edx, [eax+24h]
mov     byte ptr [edx], 0
mov     edx, [eax+28h]
mov     byte ptr [edx], 0
xor     ecx, ecx

loc_49135B:
mov     eax, ecx
mov     ebx, ds:dword_525E00[ecx*4]
mov     edx, ecx
shl     edx, 3
add     edx, offset unk_525DE0
xor     eax, ecx
call    sub_42C4B7
mov     edx, ebx
call    sub_4A7AE1
inc     ecx
cmp     ecx, 4
jb      short loc_49135B
xor     eax, eax
call    sub_4911CC

loc_49138A:
pop     edx
pop     ecx
pop     ebx
retn
sub_491344 endp




sub_49138E proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4913B3
mov     eax, 4
call    sub_4911CC
mov     eax, [edx+48h]
or      byte ptr [eax], 6
mov     eax, [edx+4Ch]
or      byte ptr [eax], 6
mov     eax, [edx+50h]
or      byte ptr [eax], 6

loc_4913B3:
pop     edx
retn
sub_49138E endp




sub_4913B5 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_4913DF
mov     eax, [eax+48h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 14h
mov     eax, [edx+4Ch]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 15h
mov     eax, [edx+50h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 16h

loc_4913DF:
pop     edx
retn
sub_4913B5 endp




sub_4913E1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_525C14
mov     dword ptr [ecx+0A4h], offset unk_525E10
xor     edx, edx

loc_491407:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_525B24
call    sub_49DB4D
inc     edx
cmp     edx, 0Ch
jl      short loc_491407
pop     edx
pop     ecx
pop     ebx
retn
sub_4913E1 endp




sub_491425 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_491435
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_491435:
pop     edx
retn
sub_491425 endp

align 4
jpt_49147E dd offset loc_491485 ; jump table for switch statement
dd offset loc_4914C2
dd offset loc_4914DD
dd offset loc_4914F8
dd offset loc_491507
dd offset loc_491514
dd offset loc_49151E
dd offset def_49147E
dd offset def_49147E
dd offset def_49147E
dd offset loc_49154A



sub_491464 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 0Ah         ; switch 11 cases
ja      def_49147E      ; jumptable 0049147E default case, cases 7-9
and     eax, 0FFh
jmp     jpt_49147E[eax*4] ; switch jump

loc_491485:             ; jumptable 0049147E case 0
mov     eax, ebx
call    sub_4B55D5
test    eax, eax
jz      def_49147E      ; jumptable 0049147E default case, cases 7-9
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
inc     byte ptr [ecx+4]
xor     ds:byte_5F8364, 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4914C2:             ; jumptable 0049147E case 1
call    sub_4D8E21
call    sub_4D8ED6
mov     eax, 250015h
call    sub_4D8E42

loc_4914D6:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4914DD:             ; jumptable 0049147E case 2
call    sub_4D8ECC
test    eax, eax
jz      def_49147E      ; jumptable 0049147E default case, cases 7-9
inc     byte ptr [ecx+4]
mov     dword ptr [ecx+0Ch], 5
pop     edx
pop     ecx
pop     ebx
retn

loc_4914F8:             ; jumptable 0049147E case 3
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     def_49147E      ; jumptable 0049147E default case, cases 7-9
jmp     short loc_4914D6

loc_491507:             ; jumptable 0049147E case 4
mov     eax, 3
call    sub_49E0D7
inc     byte ptr [ecx+4]

loc_491514:             ; jumptable 0049147E case 5
mov     eax, ecx
call    sub_4913E1
inc     byte ptr [ecx+4]

loc_49151E:             ; jumptable 0049147E case 6
cmp     ds:word_6E23D6, 0
jnz     short loc_49154A ; jumptable 0049147E case 10
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_49153C
call    sub_47EBCB
test    eax, eax
jz      short loc_49154A ; jumptable 0049147E case 10

loc_49153C:
mov     eax, 0Ah
call    sub_49E0D7
mov     byte ptr [ecx+4], 0Ah

loc_49154A:             ; jumptable 0049147E case 10
mov     eax, ecx
call    sub_491425
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 0Ah
jnz     def_49147E      ; jumptable 0049147E default case, cases 7-9
cmp     ds:word_6E23D6, 0
jnz     def_49147E      ; jumptable 0049147E default case, cases 7-9
mov     ah, 2
mov     byte ptr ds:dword_77EA5A+2, ah
mov     ds:byte_77EA5E, 13h
mov     ds:byte_77EA5F, ah
mov     word ptr ds:dword_77EA4E+2, 100h
mov     word ptr ds:dword_77EA52, 0FF9Fh
mov     word ptr ds:dword_77EA52+2, 80h
mov     word ptr ds:dword_77EA5A, 800h
xor     al, al
mov     byte ptr ds:dword_77EA5A+3, al
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
mov     [ecx], al
or      byte ptr [ebx], 3
mov     dword ptr [ebx+528h], 0FE0000h
mov     dword ptr [ebx+52Ch], 0FF9F0000h
mov     dword ptr [ebx+530h], 0BF0000h
lea     edx, [ebx+538h]
lea     eax, [ebx+528h]
call    sub_4DD57B
mov     word ptr [ebx+540h], 0
mov     word ptr [ebx+542h], 804h
mov     word ptr [ebx+544h], 0
call    sub_4D8EB1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_49147E:             ; jumptable 0049147E default case, cases 7-9
pop     edx
pop     ecx
pop     ebx
retn
sub_491464 endp




sub_491623 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_491629[edx*4]
pop     edx
retn
sub_491623 endp

db 90h
jpt_49165A dd offset loc_491661 ; jump table for switch statement
dd offset loc_4916EA
dd offset loc_491779
dd offset loc_491792



sub_491643 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_49165A      ; jumptable 0049165A default case
and     eax, 0FFh
jmp     jpt_49165A[eax*4] ; switch jump

loc_491661:             ; jumptable 0049165A case 0
mov     edx, 80h
mov     eax, 5Eh ; '^'
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Ah], 80h
mov     ds:dword_77E6B4, offset unk_525F40
mov     dword ptr [ecx+0A4h], offset unk_5264F8
mov     eax, offset unk_525E64
call    sub_49DB4D
mov     eax, offset unk_525E78
call    sub_49DB4D
xor     edx, edx
xor     eax, eax
call    sub_492095
xor     eax, eax
mov     ds:word_56F82C, ax
mov     ds:byte_56F80C, 3
mov     edx, 1
mov     eax, edx
call    sub_492095
xor     edx, edx
mov     ds:word_56F864, dx
mov     ds:byte_56F844, 3

loc_4916E2:
inc     byte ptr [ecx+5]
jmp     def_49165A      ; jumptable 0049165A default case

loc_4916EA:             ; jumptable 0049165A case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49165A      ; jumptable 0049165A default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
and     ds:byte_5F8364, 0FDh
xor     dl, dl
mov     ds:byte_5F83DA, dl
xor     dh, dh
mov     ds:byte_5F83D8, dl
xor     edi, edi
mov     word ptr ds:dword_5F889A+2, di
xor     eax, eax
mov     word ptr ds:dword_5F889E, ax
mov     word ptr ds:dword_5F889E+2, dx
xor     ebx, ebx
mov     ds:dword_5F888C, ebx
mov     ds:dword_5F8890, ebx
mov     ds:dword_5F8894, ebx
xor     ebx, ebx
mov     word ptr ds:dword_5F88A4, bx
xor     esi, esi
mov     word ptr ds:dword_5F88A4+2, si
mov     ds:word_5F88A8, di
mov     ds:byte_5F88AC, 30h ; '0'
jmp     loc_4916E2

loc_491779:             ; jumptable 0049165A case 2
cmp     ds:word_6E23D6, 0
jnz     short def_49165A ; jumptable 0049165A default case
mov     eax, 250002h
call    sub_4D8E42
jmp     loc_4916E2

loc_491792:             ; jumptable 0049165A case 3
call    sub_4D8ECC
test    eax, eax
jz      short def_49165A ; jumptable 0049165A default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_525F90
mov     dword ptr [ecx+0A4h], offset unk_526508
mov     ds:word_56F82C, 8Ch
mov     ds:word_56F864, 0FFC4h
and     byte ptr [ecx+0Ah], 1
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

def_49165A:             ; jumptable 0049165A default case
call    sub_47EBCB
test    eax, eax
jz      short loc_4917E6
or      byte ptr [ecx+0Ah], 1

loc_4917E6:
call    sub_49DBD1
call    sub_49DECF
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_491643 endp




sub_4917F6 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jnz     short loc_491807
mov     eax, 14h
jmp     short loc_491826

loc_491807:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jnz     short loc_491821
cmp     byte ptr [edx+0Ah], 1
jnz     short loc_491832

loc_491821:
mov     eax, 8

loc_491826:
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_491832:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_4917F6 endp




sub_49183F proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_49185F
jbe     loc_491921
cmp     al, 2
jz      loc_491943
jmp     loc_491992

loc_49185F:
test    al, al
jnz     loc_491992
cmp     ds:word_6E23D6, 0
jnz     loc_491992
xor     bh, bh
mov     ds:byte_56F80C, bh
mov     ds:byte_56F844, bh
mov     edx, 80h
mov     eax, 5Eh ; '^'
call    sub_4DC979
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
xor     bl, bl
mov     ds:byte_5F88AC, bl
mov     byte ptr ds:dword_5F84CB+1, bl
mov     byte ptr ds:dword_5F84CB+2, bl
call    sub_4D8EB1
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D

loc_49191C:
inc     byte ptr [ecx+5]
jmp     short loc_491992

loc_491921:
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8421, 40h
and     ds:byte_5F8364, 0FCh
xor     dh, dh
mov     ds:byte_5F83DA, dh
jmp     short loc_49191C

loc_491943:
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, 3
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, 0FA3Fh
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, 800h
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     bh, 0FFh
mov     ds:byte_77EA61, bh
mov     ds:byte_77EA60, bh
mov     [ecx], bl

loc_491992:
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_4919A2
call    sub_49DBD1
call    sub_49DECF

loc_4919A2:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_49183F endp




sub_4919A7 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 1E0h
jb      short loc_4919BF
jbe     short loc_4919D7
cmp     edx, 212h
jz      short loc_4919E0
pop     edx
retn

loc_4919BF:
cmp     edx, 186h
jnz     short loc_4919E7
mov     eax, [eax+28h]
mov     byte ptr [eax+0Ch], 1
mov     ds:byte_56F83B, 2
pop     edx
retn

loc_4919D7:
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ch], 1
pop     edx
retn

loc_4919E0:
mov     eax, [eax+28h]
mov     byte ptr [eax+0Ch], 2

loc_4919E7:
pop     edx
retn
sub_4919A7 endp




sub_4919E9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 0Fh
jb      short loc_491A28
jbe     loc_491ADB
cmp     eax, 32h ; '2'
jb      short loc_491A1A
jbe     loc_491AE2
cmp     eax, 46h ; 'F'
jz      loc_491AE9
jmp     loc_491AF0

loc_491A1A:
cmp     eax, 1Eh
jz      loc_491ADB
jmp     loc_491AF0

loc_491A28:
test    eax, eax
jbe     short loc_491A36
cmp     eax, 1
jz      short loc_491A47
jmp     loc_491AF0

loc_491A36:
mov     edx, 1
xor     eax, eax
call    sub_491F3C
jmp     loc_491AF0

loc_491A47:
xor     ah, ah
mov     ds:byte_56F844, ah
xor     edx, edx
mov     eax, 5
call    sub_492095
mov     ds:byte_56F80C, 3
mov     ds:byte_56F83B, 6
mov     eax, [ecx+24h]
call    sub_4DE2F6
mov     eax, [ecx+28h]
call    sub_4DE336
or      ds:byte_5F8364, 2
mov     ds:byte_5F88AC, 80h
mov     word ptr ds:dword_5F889A+2, 0FE5Ch
mov     word ptr ds:dword_5F889E, 14h
mov     word ptr ds:dword_5F889E+2, 0FED4h
mov     ds:dword_5F888C, 0FE5C0000h
mov     ds:dword_5F8890, 140000h
mov     ds:dword_5F8894, 0FED40000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 400h
mov     ds:word_5F88A8, ax
xor     eax, eax
jmp     short loc_491AEB

loc_491ADB:
mov     eax, 1
jmp     short loc_491AEB

loc_491AE2:
mov     eax, 2
jmp     short loc_491AEB

loc_491AE9:
xor     eax, eax

loc_491AEB:
call    sub_491FBF

loc_491AF0:
cmp     dword ptr [ecx+10h], 0
jz      short loc_491AFD
mov     eax, ebx
call    sub_492007

loc_491AFD:
pop     edx
pop     ecx
pop     ebx
retn
sub_4919E9 endp




sub_491B01 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_491B2D
xor     ah, ah
mov     ds:byte_56F80C, ah
and     ds:byte_5F8364, 0FDh
mov     eax, offset unk_525EA0
call    sub_49DB4D
mov     edx, 2
xor     eax, eax
call    sub_491F3C

loc_491B2D:
pop     edx
retn
sub_491B01 endp




sub_491B2F proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_491B43
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
inc     byte ptr [eax+0Dh]

locret_491B43:
retn
sub_491B2F endp




sub_491B44 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_491B86
mov     edx, 1
mov     eax, edx
call    sub_492095
mov     ds:byte_56F844, 3
mov     ds:byte_56F873, 6
mov     eax, [ecx+24h]
call    sub_4DE336
mov     eax, offset unk_525F04
call    sub_49DB4D
mov     edx, 3
xor     eax, eax
call    sub_491F3C

loc_491B86:
pop     edx
pop     ecx
retn
sub_491B44 endp




sub_491B89 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_491BAC
mov     eax, [eax+28h]
and     byte ptr [eax], 0FDh
mov     eax, offset unk_525EA0
call    sub_49DB4D
mov     edx, 2
xor     eax, eax
call    sub_491F3C

loc_491BAC:
pop     edx
retn
sub_491B89 endp




sub_491BAE proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_491BD1
mov     eax, [eax+24h]
call    sub_4DE336
mov     edx, [edx+28h]
or      byte ptr [edx], 2
mov     edx, 3
xor     eax, eax
call    sub_491F3C

loc_491BD1:
pop     edx
retn
sub_491BAE endp




sub_491BD3 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_491C0D
xor     ah, ah
mov     ds:byte_56F80C, ah
mov     edx, 1
mov     eax, 2
call    sub_492095
mov     ds:byte_56F844, 3
mov     eax, [ecx+28h]
call    sub_4DE2F6
mov     eax, offset unk_525E64
call    sub_49DB4D

loc_491C0D:
pop     edx
pop     ecx
retn
sub_491BD3 endp




sub_491C10 proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+10h]
cmp     eax, 1Eh
jb      short loc_491C25
jbe     short loc_491C75
cmp     eax, 50h ; 'P'
jz      short loc_491C7A
jmp     short loc_491C86

loc_491C25:
test    eax, eax
jnz     short loc_491C86
xor     dl, dl
mov     ds:byte_56F844, dl
xor     edx, edx
mov     eax, 3
call    sub_492095
mov     ds:byte_56F80C, 3
mov     ds:byte_56F83B, 6
mov     eax, [ecx+24h]
call    sub_4DE2F6
mov     eax, offset unk_525F18
call    sub_49DB4D
mov     eax, offset unk_525F2C
call    sub_49DB4D
mov     edx, 1
xor     eax, eax
call    sub_491F3C
jmp     short loc_491C86

loc_491C75:
inc     byte ptr [ecx+6]
jmp     short loc_491C86

loc_491C7A:
mov     byte ptr [ecx+6], 0
xor     edx, edx
mov     ds:dword_77E698, edx

loc_491C86:
cmp     byte ptr [ecx+6], 0
jz      short loc_491CAD
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_52659E[eax*2]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E698, eax

loc_491CAD:
pop     edx
pop     ecx
retn
sub_491C10 endp




sub_491CB0 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_491D08
mov     eax, 0Ch
call    sub_492095
mov     edx, 1
mov     eax, 6
call    sub_492095
mov     ds:byte_56F844, 3
mov     ds:byte_56F873, 2
mov     eax, [ecx+24h]
call    sub_4DE336
mov     eax, [ecx+28h]
call    sub_4DE2F6
mov     eax, offset unk_525E64
call    sub_49DB4D
mov     edx, 3
xor     eax, eax
call    sub_491F3C

loc_491D08:
pop     edx
pop     ecx
retn
sub_491CB0 endp




sub_491D0B proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_491D3E
xor     dl, dl
mov     ds:byte_56F80C, dl
mov     ds:byte_56F844, dl
mov     eax, [eax+24h]
call    sub_4DE2F6
mov     eax, offset unk_525EA0
call    sub_49DB4D
mov     edx, 2
xor     eax, eax
call    sub_491F3C

loc_491D3E:
pop     edx
retn
sub_491D0B endp




sub_491D40 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_491D97
mov     eax, 0Dh
call    sub_492095
mov     ds:byte_56F80C, 3
mov     edx, 1
mov     eax, 7
call    sub_492095
mov     ds:byte_56F844, 3
mov     ds:byte_56F873, 2
mov     eax, [ecx+24h]
call    sub_4DE336
mov     eax, offset unk_525E78
call    sub_49DB4D
mov     edx, 3
xor     eax, eax
call    sub_491F3C

loc_491D97:
pop     edx
pop     ecx
retn
sub_491D40 endp




sub_491D9A proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_491DEC
mov     eax, 8
call    sub_492095
mov     ds:byte_56F80C, 3
mov     ds:byte_56F83B, 2
mov     edx, 1
mov     eax, 9
call    sub_492095
mov     ds:byte_56F844, 3
mov     ds:byte_56F873, 6
mov     eax, [ecx+28h]
call    sub_4DE336
mov     eax, offset unk_525E64
call    sub_49DB4D

loc_491DEC:
cmp     dword ptr [ecx+10h], 7Ch ; '|'
jnz     short loc_491DF9
mov     ds:byte_56F83B, 6

loc_491DF9:
pop     edx
pop     ecx
retn
sub_491D9A endp




sub_491DFC proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_491E1F
xor     dl, dl
mov     ds:byte_56F80C, dl
mov     ds:byte_56F844, dl
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 5
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_491E1F:
