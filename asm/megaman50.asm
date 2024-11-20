loc_473ADD:
mov     cx, [ebx+198h]
mov     [esi+14h], cx
mov     cx, [ebx+19Ah]
mov     [esi+16h], cx
mov     cx, [ebx+19Ch]
mov     [esi+18h], cx
mov     ecx, [esi+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [esi+1Ch], ecx
mov     ecx, [esi+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [esi+20h], ecx
mov     ecx, [esi+16h]
sar     ecx, 10h
shl     ecx, 10h
mov     [esi+24h], ecx
push    0
push    0
mov     bx, [ebx+56h]
and     bh, 0Fh
movsx   ebx, bx
mov     ecx, 550h
call    sub_4DD4C5
mov     ax, [ebp+6Ah]
and     ah, 3
and     eax, 0FFFFh
add     eax, 80h
imul    eax, [esp+2Ch+var_24]
sar     eax, 0Ch
mov     edx, [esi+12h]
sar     edx, 10h
add     eax, edx
mov     [edi+0C4h], ax
mov     ax, [esi+16h]
mov     [edi+0C6h], ax
mov     ax, [ebp+6Ah]
and     ah, 3
and     eax, 0FFFFh
add     eax, 80h
imul    eax, [esp+2Ch+var_20]
sar     eax, 0Ch
mov     edx, [esi+16h]
sar     edx, 10h
add     eax, edx
mov     [edi+0C8h], ax
push    0FFh
xor     ecx, ecx
mov     ebx, 14h
mov     edx, edi
mov     eax, esi
call    sub_4DDA0E

loc_473BAA:
add     esp, 18h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_473896 endp




sub_473BB3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
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
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
movzx   esi, byte ptr [eax+8]
mov     ebx, ecx
mov     edx, offset dword_560BDC
call    ds:funcs_473BF2[esi*4]
mov     edx, ecx
mov     eax, ebp
call    sub_474067
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+0ADh]
jz      short loc_473C26
mov     ebx, [ecx]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ebp+0ACh]
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_473C2D

loc_473C26:
mov     eax, ebp
call    sub_4DEADD

loc_473C2D:
cmp     byte ptr [ecx+12h], 0
jz      short loc_473C4C
test    byte ptr [ebp+0], 2
jz      short loc_473C4C
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 26h ; '&'
mov     eax, ebp
call    sub_4ED88B

loc_473C4C:
pop     ebp

loc_473C4D:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_473BB3 endp




sub_473C53 proc near
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
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0
mov     word ptr [ebx], 0
mov     byte ptr [ebx+12h], 1
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_474035
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_47404E
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0

def_473D09:             ; jumptable 00473D09 default case
pop     esi
pop     ecx
retn
sub_473C53 endp

db 8Dh, 40h, 0
jpt_473D09 dd offset loc_473D10 ; jump table for switch statement
dd offset loc_473D2E
dd offset loc_473DD3
dd offset loc_473E5A
dd offset loc_473F2C
dd offset loc_473F96
dd offset loc_473FD5



sub_473CF3 proc near
push    ecx
push    esi
mov     ecx, eax
mov     eax, edx
mov     esi, ebx
mov     bl, [ecx+9]
cmp     bl, 6           ; switch 7 cases
ja      short def_473D09 ; jumptable 00473D09 default case
and     ebx, 0FFh
jmp     jpt_473D09[ebx*4] ; switch jump

loc_473D10:             ; jumptable 00473D09 case 0
cmp     byte ptr [edx+9], 2
jnz     short def_473D09 ; jumptable 00473D09 default case
cmp     dword ptr [eax+10h], 14h
jnz     short def_473D09 ; jumptable 00473D09 default case
mov     byte ptr [ecx+0ACh], 1
mov     word ptr [esi+2], 0
jmp     loc_473F90

loc_473D2E:             ; jumptable 00473D09 case 1
mov     bl, [edx+9]
cmp     bl, 2
jnz     loc_473DB6
mov     eax, [edx+10h]
cmp     eax, 0F0h
jb      short loc_473D70
jbe     short loc_473D92
cmp     eax, 127h
jb      short loc_473D66
jbe     short loc_473DA0
cmp     eax, 140h
jb      def_473D09      ; jumptable 00473D09 default case
jbe     short loc_473D92
cmp     eax, 181h

loc_473D61:
jz      short loc_473DA0
pop     esi
pop     ecx
retn

loc_473D66:
cmp     eax, 10Eh
jz      short loc_473DA7
pop     esi
pop     ecx
retn

loc_473D70:
cmp     eax, 6Eh ; 'n'
jb      short loc_473D89
jbe     short loc_473DA0
cmp     eax, 7Ah ; 'z'
jb      def_473D09      ; jumptable 00473D09 default case
jbe     short loc_473D92
cmp     eax, 0C8h
jmp     short loc_473D61

loc_473D89:
cmp     eax, 22h ; '"'
jnz     def_473D09      ; jumptable 00473D09 default case

loc_473D92:
mov     ebx, 6

loc_473D97:
mov     eax, ecx
mov     edx, esi
jmp     loc_473F7A

loc_473DA0:
mov     ebx, 1
jmp     short loc_473D97

loc_473DA7:
mov     [ecx+0ACh], bl
mov     word ptr [esi+2], 0
pop     esi
pop     ecx
retn

loc_473DB6:
cmp     bl, 7
jnz     def_473D09      ; jumptable 00473D09 default case
cmp     dword ptr [edx+10h], 1
jnz     def_473D09      ; jumptable 00473D09 default case
mov     ebx, 7
jmp     loc_473E51

loc_473DD3:             ; jumptable 00473D09 case 2
mov     bh, [edx+9]
cmp     bh, 7
jnz     short loc_473E2C
mov     eax, [edx+10h]
cmp     eax, 0D5h
jb      short loc_473E01
jbe     short loc_473E22
cmp     eax, 125h
jb      short loc_473DFA
jbe     short loc_473E22
cmp     eax, 193h

loc_473DF5:
jz      short loc_473E18
pop     esi
pop     ecx
retn

loc_473DFA:
cmp     eax, 111h
jmp     short loc_473DF5

loc_473E01:
cmp     eax, 67h ; 'g'
jb      short loc_473E0F
jbe     short loc_473E22
cmp     eax, 0C3h
jmp     short loc_473DF5

loc_473E0F:
cmp     eax, 4Ah ; 'J'
jnz     def_473D09      ; jumptable 00473D09 default case

loc_473E18:
mov     ebx, 5
jmp     loc_473D97

loc_473E22:
mov     ebx, 7
jmp     loc_473D97

loc_473E2C:
cmp     bh, 9
jnz     def_473D09      ; jumptable 00473D09 default case
cmp     dword ptr [edx+10h], 1
jnz     def_473D09      ; jumptable 00473D09 default case
mov     byte ptr [ecx+0ACh], 3
mov     word ptr [esi+2], 0

loc_473E4C:
mov     ebx, 2

loc_473E51:
mov     eax, ecx
mov     edx, esi
jmp     loc_473F8B

loc_473E5A:             ; jumptable 00473D09 case 3
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [edx+9], 9
jnz     loc_473F13
mov     eax, [eax+10h]
cmp     eax, 0D2h
jb      short loc_473EC1
jbe     loc_473EFF
cmp     eax, 13Eh
jb      short loc_473EAA
jbe     loc_473F09
cmp     eax, 186h
jb      short loc_473EA3
jbe     loc_473F09
cmp     eax, 1AEh

loc_473E9A:
jz      loc_473EF5
pop     esi
pop     ecx
retn

loc_473EA3:
cmp     eax, 172h
jmp     short loc_473E9A

loc_473EAA:
cmp     eax, 0FAh
jb      short loc_473EBA
jbe     short loc_473EFF
cmp     eax, 131h
jmp     short loc_473E9A

loc_473EBA:
cmp     eax, 0E1h
jmp     short loc_473E9A

loc_473EC1:
cmp     eax, 41h ; 'A'
jb      short loc_473EDB
jbe     short loc_473EEB
cmp     eax, 78h ; 'x'
jb      short loc_473ED6
jbe     short loc_473EEB
cmp     eax, 0BEh
jmp     short loc_473E9A

loc_473ED6:
cmp     eax, 5Ah ; 'Z'
jmp     short loc_473E9A

loc_473EDB:
cmp     eax, 0Ah
jb      def_473D09      ; jumptable 00473D09 default case
jbe     short loc_473EEB
cmp     eax, 30h ; '0'
jmp     short loc_473E9A

loc_473EEB:
mov     ebx, 8
jmp     loc_473D97

loc_473EF5:
mov     ebx, 2
jmp     loc_473D97

loc_473EFF:
mov     ebx, 9
jmp     loc_473D97

loc_473F09:
mov     ebx, 0Ah
jmp     loc_473D97

loc_473F13:
cmp     byte ptr [eax+9], 0Ah
jnz     def_473D09      ; jumptable 00473D09 default case
cmp     dword ptr [eax+10h], 1
jnz     def_473D09      ; jumptable 00473D09 default case
jmp     loc_473E4C

loc_473F2C:             ; jumptable 00473D09 case 4
mov     byte ptr [ecx+0ADh], 0FFh
mov     eax, [edx+10h]
cmp     eax, 3Ch ; '<'
jb      short loc_473F54
jbe     short loc_473F67
cmp     eax, 96h
jb      def_473D09      ; jumptable 00473D09 default case
jbe     short loc_473F71
cmp     eax, 0AAh
jz      short loc_473F82
pop     esi
pop     ecx
retn

loc_473F54:
cmp     eax, 11h
jb      def_473D09      ; jumptable 00473D09 default case
jbe     short loc_473F67
cmp     eax, 2Dh ; '-'
jmp     loc_473E9A

loc_473F67:
mov     ebx, 0Bh
jmp     loc_473D97

loc_473F71:
mov     ebx, 2

loc_473F76:
mov     edx, esi
mov     eax, ecx

loc_473F7A:
call    sub_47404E
pop     esi
pop     ecx
retn

loc_473F82:
mov     ebx, 0Bh

loc_473F87:
mov     edx, esi
mov     eax, ecx

loc_473F8B:
call    sub_47404E

loc_473F90:
inc     byte ptr [ecx+9]
pop     esi
pop     ecx
retn

loc_473F96:             ; jumptable 00473D09 case 5
mov     eax, [edx+10h]
cmp     eax, 118h
jb      short loc_473FAC
jbe     short loc_473FB9
cmp     eax, 121h
jz      short loc_473FC0
pop     esi
pop     ecx
retn

loc_473FAC:
cmp     eax, 0F8h
jnz     def_473D09      ; jumptable 00473D09 default case
jmp     short loc_473F71

loc_473FB9:
mov     ebx, 0Bh
jmp     short loc_473F76

loc_473FC0:
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_474035
mov     ebx, 4
jmp     short loc_473F87

loc_473FD5:             ; jumptable 00473D09 case 6
cmp     byte ptr [edx+9], 0Bh
jnz     def_473D09      ; jumptable 00473D09 default case
mov     eax, [eax+10h]
cmp     eax, 23h ; '#'
jb      short loc_473FFC
jbe     short loc_474010
cmp     eax, 28h ; '('
jb      def_473D09      ; jumptable 00473D09 default case
jbe     short loc_47401D
cmp     eax, 2Dh ; '-'
jz      short loc_474026
pop     esi
pop     ecx
retn

loc_473FFC:
cmp     eax, 19h
jb      def_473D09      ; jumptable 00473D09 default case
jbe     short loc_474010
cmp     eax, 1Eh
jnz     def_473D09      ; jumptable 00473D09 default case

loc_474010:
mov     eax, ecx
call    sub_474144
inc     byte ptr [ecx+0Ch]
pop     esi
pop     ecx
retn

loc_47401D:
and     byte ptr [ecx], 0FDh
mov     byte ptr [esi+12h], 0
jmp     short loc_474010

loc_474026:
mov     eax, ecx
call    sub_474144
inc     byte ptr [ecx+0Ch]
jmp     loc_473F90
sub_473CF3 endp




sub_474035 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_5174F1[ebx*4]
mov     [edx+4], eax
retn
sub_474035 endp




sub_47404E proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_517501[ebx*4]
mov     [edx+8], eax
retn
sub_47404E endp




sub_474067 proc near
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
jb      short loc_47408C
jbe     short loc_47408F
cmp     al, 7Fh
jnz     short loc_47408C
mov     byte ptr [edx+0Eh], 0
jmp     short loc_47408F

loc_47408C:
inc     byte ptr [esi+0Eh]

loc_47408F:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_4740D1
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 50004h
mov     eax, ecx
call    sub_4EE044

loc_4740D1:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_4740F4
jbe     short loc_4740F7
cmp     al, 7Fh
jnz     short loc_4740F4
mov     byte ptr [esi+11h], 0
jmp     short loc_4740F7

loc_4740F4:
inc     byte ptr [esi+11h]

loc_4740F7:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_474139
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 70006h
mov     eax, edi
call    sub_4EE044

loc_474139:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_474067 endp




sub_474144 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      loc_473C4D
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+0Dh], 3
mov     ecx, [edx+9]
sar     ecx, 18h
mov     bx, [edx+14h]
mov     si, ds:word_517531[ecx*8]
add     ebx, esi
mov     [eax+48h], bx
mov     ecx, [edx+9]
sar     ecx, 18h
mov     bx, [edx+16h]
mov     di, ds:word_517533[ecx*8]
add     ebx, edi
mov     [eax+4Ah], bx
mov     ecx, [edx+9]
sar     ecx, 18h
mov     dx, [edx+18h]
mov     bx, ds:word_517535[ecx*8]
add     edx, ebx
mov     [eax+4Ch], dx
jmp     loc_473C4D
sub_474144 endp




sub_4741B4 proc near
push    edx
push    esi
push    edi
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
mov     word ptr [eax+15Eh], 4210h
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4741D7[edx*4]
pop     edi
pop     esi
pop     edx
retn
sub_4741B4 endp




sub_4741E2 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
xor     bl, bl
jmp     short loc_4742B3

loc_474245:
mov     dl, [eax+1]
mov     [ecx+0Eh], dl

loc_47424B:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 48h ; 'H'
mov     [eax+3], bl
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+5], 0
mov     dx, [ecx+56h]
mov     [eax+56h], dx
mov     dl, [ecx+0Ch]
mov     [eax+0Ch], dl
mov     dl, [ecx+1]
mov     [eax+0Dh], dl
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
movsx   esi, bl
lea     edi, [eax+14h]
lea     esi, [ecx+esi*8+198h]
movsd
movsd
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

loc_4742AC:
inc     bl
cmp     bl, 2
jge     short loc_4742CA

loc_4742B3:
call    sub_4DDF54
mov     edx, eax
test    eax, eax
jz      short loc_4742AC
test    bl, bl
jnz     short loc_474245
mov     dl, [eax+1]
mov     [ecx+0Dh], dl
jmp     short loc_47424B

loc_4742CA:
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_4E1877
mov     dl, [ecx+0Dh]
mov     [eax+0Dh], dl
mov     dl, [ecx+0Eh]
mov     [eax+0Eh], dl
mov     byte ptr [ecx+8], 1
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4741E2 endp




sub_4742EB proc near
push    edx
push    esi
push    edi
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
cmp     word ptr [eax+6Eh], 0
jl      short loc_474359
test    byte ptr [eax+0Ch], 1
jnz     short loc_47430F
mov     eax, edx
call    sub_4DEADD

loc_47430F:
cmp     byte ptr [edx+0Dh], 0
jle     short loc_474332
mov     eax, [edx+0Ah]
sar     eax, 18h
call    sub_4E1877
cmp     word ptr [eax+6Eh], 0
jl      short loc_474332
lea     edi, [eax+14h]
lea     esi, [edx+198h]
movsd
movsd

loc_474332:
cmp     byte ptr [edx+0Eh], 0
jle     short loc_47435D
mov     eax, [edx+0Bh]
sar     eax, 18h
call    sub_4E1877
cmp     word ptr [eax+6Eh], 0
jl      short loc_47435D
lea     edi, [eax+14h]
lea     esi, [edx+1A0h]
movsd
movsd
pop     edi
pop     esi
pop     edx
retn

loc_474359:
mov     byte ptr [edx+8], 2

loc_47435D:
pop     edi
pop     esi
pop     edx
retn
sub_4742EB endp



; Attributes: thunk

sub_474361 proc near
jmp     sub_4DE2F6
sub_474361 endp




sub_474366 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_47437E
cmp     al, 1
jz      loc_474409
pop     edx
pop     ecx
pop     ebx
retn

loc_47437E:
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ecx+54h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+34h], eax
mov     [ecx+1Ch], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+3Ch], eax
mov     [ecx+24h], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+38h], eax
mov     [ecx+20h], eax
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]

loc_474409:
mov     eax, ecx
call    sub_4DFC52
mov     ax, [ecx+58h]
mov     ds:word_560E10, ax
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_474366 endp




sub_474425 proc near
mov     byte ptr [eax+8], 0
mov     edx, ds:off_517571[edx*4]
mov     [eax], edx
mov     byte ptr [eax+9], 0
retn
sub_474425 endp




sub_474437 proc near
mov     byte ptr [eax+0Ah], 0
mov     edx, ds:off_5175B9[edx*4]
mov     [eax+4], edx
mov     byte ptr [eax+0Bh], 0
retn
sub_474437 endp




sub_47444A proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     ah, [edx+9]
test    ah, ah
jnz     short loc_4744BB
mov     eax, [edx+5]
sar     eax, 18h
mov     ecx, [edx]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_474472
jbe     short loc_4744C2
cmp     al, 7Fh
jnz     short loc_474472
mov     byte ptr [edx+8], 0

loc_474472:
mov     ecx, [esi+5]
sar     ecx, 18h
mov     eax, [esi]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 50004h
mov     eax, ecx
call    sub_4EE044
mov     ecx, [esi+5]
sar     ecx, 18h
mov     eax, [esi]
mov     al, [ecx+eax+1]
mov     [esi+9], al
add     byte ptr [esi+8], 2
jmp     short loc_4744C2

loc_4744BB:
mov     dl, ah
dec     dl
mov     [esi+9], dl

loc_4744C2:
mov     bl, [esi+0Bh]
test    bl, bl
jnz     short loc_474530
mov     eax, [esi+7]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_4744E2
jbe     short loc_474537
cmp     al, 7Fh
jnz     short loc_4744E2
mov     [esi+0Ah], bl

loc_4744E2:
mov     ecx, [esi+7]
sar     ecx, 18h
mov     eax, [esi+4]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 70006h
mov     eax, edi
call    sub_4EE044
mov     eax, [esi+7]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax+1]
mov     [esi+0Bh], al
add     byte ptr [esi+0Ah], 2
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_474530:
mov     bh, bl
dec     bh
mov     [esi+0Bh], bh

loc_474537:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_47444A endp




sub_47453C proc near
push    ecx
mov     ecx, eax
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 7Ch
and     eax, 0FFFFh
shl     eax, 6
call    sub_4EF008
shl     eax, 6
mov     edx, 0FED50000h
sub     edx, eax
mov     [ecx+20h], edx
mov     eax, edx
sar     eax, 10h
mov     [ecx+16h], ax
pop     ecx
retn
sub_47453C endp




sub_47456E proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
inc     byte ptr [ecx+8]
mov     edx, ebx
mov     eax, ecx
call    sub_474749
pop     ecx
pop     ebx
retn
sub_47456E endp




sub_4745AE proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ecx, edx
call    sub_47453C
cmp     ds:dword_560BEC, 1
jnz     short loc_4745D0
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
jmp     short loc_4745D7

loc_4745D0:
mov     eax, esi
call    sub_4DEADD

loc_4745D7:
mov     eax, ds:dword_560BEC
cmp     eax, 3Ch ; '<'
jb      short loc_4745EE
jbe     short loc_474609
cmp     eax, 0AAh
jz      short loc_474610
pop     esi
pop     ecx
pop     ebx
retn

loc_4745EE:
cmp     eax, 1
jnz     short loc_474619
xor     edx, edx
mov     eax, ecx
call    sub_474437
xor     edx, edx
mov     eax, ecx
call    sub_474425
pop     esi
pop     ecx
pop     ebx
retn

loc_474609:
mov     edx, 4
jmp     short loc_474612

loc_474610:
xor     edx, edx

loc_474612:
mov     eax, ecx
call    sub_474437

loc_474619:
pop     esi
pop     ecx
pop     ebx
retn
sub_4745AE endp




sub_47461D proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
call    sub_47453C
mov     eax, ebx
call    sub_4DEADD
mov     eax, ds:dword_560BEC
cmp     eax, 96h
jb      short loc_47466F
jbe     loc_4746A5
cmp     eax, 0DCh
jb      short loc_474665
jbe     loc_4746A5
cmp     eax, 122h
jb      loc_4746B8
jbe     short loc_4746A1
cmp     eax, 140h
jz      short loc_4746AC
pop     ecx
pop     ebx
retn

loc_474665:
cmp     eax, 0D2h

loc_47466A:
jz      short loc_4746A1
pop     ecx
pop     ebx
retn

loc_47466F:
cmp     eax, 32h ; '2'
jb      short loc_474684
jbe     short loc_4746A1
cmp     eax, 3Ch ; '<'
jb      short loc_4746B8
jbe     short loc_4746A5
cmp     eax, 8Ch
jmp     short loc_47466A

loc_474684:
cmp     eax, 1
jnz     short loc_4746B8
mov     edx, 4
mov     eax, ecx
call    sub_474437
xor     edx, edx
mov     eax, ecx
call    sub_474425
pop     ecx
pop     ebx
retn

loc_4746A1:
xor     edx, edx
jmp     short loc_4746B1

loc_4746A5:
mov     edx, 4
jmp     short loc_4746B1

loc_4746AC:
mov     edx, 4

loc_4746B1:
mov     eax, ecx
call    sub_474437

loc_4746B8:
pop     ecx
pop     ebx
retn
sub_47461D endp




sub_4746BB proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ecx, edx
cmp     ds:dword_560BEC, 1
jnz     short loc_4746E3
mov     edx, 5
mov     eax, ecx
call    sub_474437
mov     edx, 1
mov     eax, ecx
call    sub_474425

loc_4746E3:
mov     ebx, [esi+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx

loc_4746ED:
mov     eax, esi

loc_4746EF:
call    sub_4DD43B
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     ecx
pop     ebx
retn
sub_4746BB endp




sub_4746FF proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ecx, edx
mov     edx, ds:dword_560BEC
cmp     edx, 1
jnz     short loc_474724
mov     eax, ecx
call    sub_474437
mov     edx, 1
mov     eax, ecx
call    sub_474425

loc_474724:
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
jmp     short loc_4746ED
sub_4746FF endp




sub_474734 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
jmp     short loc_4746EF
sub_474734 endp




sub_474749 proc near
push    ecx
push    esi
push    edi
xor     ecx, ecx
mov     cl, ds:byte_560BE5
cmp     ds:dword_5175D1[ecx*4], 0
jz      short loc_474787
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
xor     ecx, ecx
mov     cl, ds:byte_560BE5
call    ds:dword_5175D1[ecx*4]

loc_474787:
pop     edi
pop     esi
pop     ecx
retn
sub_474749 endp




sub_47478B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
movzx   esi, byte ptr [eax+8]
lea     ebx, [eax+408h]
mov     edx, ebx
call    ds:funcs_47479D[esi*4]
mov     edx, ebx
mov     eax, ecx
call    sub_47444A
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47478B endp




sub_4747B2 proc near

var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
lea     ecx, [eax+408h]
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
movzx   esi, byte ptr [ebp+8]
mov     ebx, ecx
mov     edx, offset dword_560BDC
mov     eax, ebp
call    ds:funcs_4747F6[esi*4]
mov     edx, ecx
mov     eax, ebp
call    sub_474D87
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_474826
mov     ebx, [ecx]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_47482D

loc_474826:
mov     eax, ebp
call    sub_4DEADD

loc_47482D:
test    byte ptr [ebp+0], 2
jz      short loc_474875
mov     dh, [ecx+0Bh]
cmp     dh, 1
jnz     short loc_474850
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 24h ; '$'
mov     eax, ebp
call    sub_4ED88B
jmp     short loc_474875

loc_474850:
cmp     dh, 2
jnz     short loc_474875
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
sub     [esp+20h+var_1C], 70h ; 'p'
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 24h ; '$'
mov     eax, esp
call    sub_4ED95E

loc_474875:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4747B2 endp




sub_47487F proc near
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
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0
mov     word ptr [ebx], 0
mov     byte ptr [ebx+0Bh], 1
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_474D6E
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     esi
pop     ecx
retn
sub_47487F endp




sub_4748EE proc near
push    ecx
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_4748F4[ecx*4]
pop     ecx
retn
sub_4748EE endp




sub_4748FD proc near
push    ecx
mov     ecx, eax
mov     eax, edx
mov     edx, ebx
mov     byte ptr [ecx+0ADh], 0FFh
mov     bl, [eax+9]
cmp     bl, 15h
jnz     short loc_47495D
mov     eax, [eax+10h]
cmp     eax, 6Eh ; 'n'
jb      short loc_474933
jbe     short loc_474956
cmp     eax, 0A0h
jb      loc_47497C
jbe     short loc_47494F
cmp     eax, 0E6h
jz      short loc_474941
pop     ecx
retn

loc_474933:
cmp     eax, 0Ah
jb      short loc_47497C
jbe     short loc_474941
cmp     eax, 3Ch ; '<'
jz      short loc_47494F
pop     ecx
retn

loc_474941:
mov     ebx, 9

loc_474946:
mov     eax, ecx
call    sub_474D6E
pop     ecx
retn

loc_47494F:
mov     ebx, 8
jmp     short loc_474946

loc_474956:
mov     ebx, 1
jmp     short loc_474946

loc_47495D:
cmp     bl, 17h
jnz     short loc_47497C
cmp     dword ptr [eax+10h], 1
jnz     short loc_47497C
mov     ebx, 2
mov     eax, ecx
call    sub_474D6E
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0

loc_47497C:
pop     ecx
retn
sub_4748FD endp




sub_47497E proc near
push    ecx
mov     ecx, eax
mov     eax, edx
mov     edx, ebx
mov     byte ptr [ecx+0ADh], 0FFh
mov     bl, [eax+9]
cmp     bl, 17h
jnz     loc_474A19
mov     eax, [eax+10h]
cmp     eax, 73h ; 's'
jb      short loc_4749E3
jbe     loc_474A12
cmp     eax, 0DCh
jb      short loc_4749CD
jbe     loc_474A0B
cmp     eax, 102h
jb      loc_474A35
jbe     loc_474A12
cmp     eax, 113h
jz      short loc_4749FD
pop     ecx
retn

loc_4749CD:
cmp     eax, 8Ch
jb      loc_474A35
jbe     short loc_474A0B
cmp     eax, 0D2h
jz      short loc_474A12
pop     ecx
retn

loc_4749E3:
cmp     eax, 32h ; '2'
jb      short loc_4749F8
jbe     short loc_474A0B
cmp     eax, 3Ch ; '<'
jb      short loc_474A35
jbe     short loc_474A12
cmp     eax, 46h ; 'F'
jz      short loc_474A0B
pop     ecx
retn

loc_4749F8:
cmp     eax, 14h
jnz     short loc_474A35

loc_4749FD:
mov     ebx, 0Bh

loc_474A02:
mov     eax, ecx
call    sub_474D6E
pop     ecx
retn

loc_474A0B:
mov     ebx, 0Ah
jmp     short loc_474A02

loc_474A12:
mov     ebx, 2
jmp     short loc_474A02

loc_474A19:
cmp     bl, 18h
jnz     short loc_474A35
mov     ebx, [eax+10h]
cmp     ebx, 1
jnz     short loc_474A35
mov     eax, ecx
call    sub_474D6E
mov     byte ptr [ecx+9], 2
mov     byte ptr [ecx+0Ah], 0

loc_474A35:
pop     ecx
retn
sub_47497E endp




sub_474A37 proc near
push    ecx
mov     ecx, eax
mov     eax, ebx
mov     bl, [ecx+0Ah]
test    bl, bl
jbe     short loc_474A4E
cmp     bl, 1
jz      loc_474B22
pop     ecx
retn

loc_474A4E:
mov     byte ptr [ecx+0ADh], 0FFh
mov     edx, [edx+10h]
cmp     edx, 110h
jb      short loc_474ABC
jbe     loc_474B01
cmp     edx, 186h
jb      short loc_474A9E
jbe     loc_474B01
cmp     edx, 1D1h
jb      short loc_474A90
jbe     loc_474B01
cmp     edx, 262h
jz      loc_474B08
pop     ecx
retn

loc_474A90:
cmp     edx, 19Fh

loc_474A96:
jz      loc_474AF1
pop     ecx
retn

loc_474A9E:
cmp     edx, 154h
jb      short loc_474AB4
jbe     loc_474B01
cmp     edx, 172h
jmp     short loc_474A96

loc_474AB4:
cmp     edx, 122h
jmp     short loc_474A96

loc_474ABC:
cmp     edx, 82h
jb      short loc_474AE0
jbe     short loc_474B01
cmp     edx, 0CAh
jb      short loc_474AD8
jbe     short loc_474B01
cmp     edx, 0E6h
jmp     short loc_474A96

loc_474AD8:
cmp     edx, 0A0h
jmp     short loc_474A96

loc_474AE0:
cmp     edx, 6Eh ; 'n'
jb      short loc_474AEC
jbe     short loc_474B01
cmp     edx, 7Dh ; '}'
jmp     short loc_474A96

loc_474AEC:
cmp     edx, 32h ; '2'
jnz     short loc_474B4B

loc_474AF1:
mov     ebx, 8

loc_474AF6:
mov     edx, eax
mov     eax, ecx
call    sub_474D6E
pop     ecx
retn

loc_474B01:
mov     ebx, 1
jmp     short loc_474AF6

loc_474B08:
mov     byte ptr [ecx+0ACh], 2
mov     ebx, 0Ch
mov     edx, eax
mov     eax, ecx
call    sub_474D6E
inc     byte ptr [ecx+0Ah]
pop     ecx
retn

loc_474B22:
cmp     byte ptr [edx+9], 1Ah
jnz     short loc_474B4B
cmp     dword ptr [edx+10h], 1
jnz     short loc_474B4B
mov     byte ptr [ecx+0ACh], 3
mov     ebx, 3
mov     edx, eax
mov     eax, ecx
call    sub_474D6E
mov     byte ptr [ecx+9], 3
mov     byte ptr [ecx+0Ah], 0

loc_474B4B:
pop     ecx
retn
sub_474A37 endp




sub_474B4D proc near
push    ecx
mov     ecx, eax
mov     eax, ebx
mov     bl, [ecx+0Ah]
test    bl, bl
jbe     short loc_474B60
cmp     bl, 1
jz      short loc_474B81
pop     ecx
retn

loc_474B60:
mov     edx, [ecx+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_474BBF
mov     ebx, 4
mov     edx, eax
mov     eax, ecx
call    sub_474D6E
inc     byte ptr [ecx+0Ah]
pop     ecx
retn

loc_474B81:
cmp     byte ptr [edx+9], 1Ah
jnz     short loc_474B9D
cmp     dword ptr [edx+10h], 1Eh
jnz     short loc_474B9D
mov     ebx, 0Dh
mov     edx, eax
mov     eax, ecx
call    sub_474D6E
pop     ecx
retn

loc_474B9D:
cmp     byte ptr [edx+9], 1Fh
jnz     short loc_474BBF
cmp     dword ptr [edx+10h], 1
jnz     short loc_474BBF
mov     ebx, 2
mov     edx, eax
mov     eax, ecx
call    sub_474D6E
mov     byte ptr [ecx+9], 4
mov     byte ptr [ecx+0Ah], 0

loc_474BBF:
pop     ecx
retn
sub_474B4D endp




sub_474BC1 proc near
push    ecx
push    esi
mov     ecx, eax
mov     esi, ebx
cmp     byte ptr [edx+9], 20h ; ' '
jnz     short loc_474BFA
cmp     dword ptr [edx+10h], 1
jnz     short loc_474BFA
mov     byte ptr [ecx+0ACh], 6
mov     word ptr [esi+2], 0
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_474D6E
mov     byte ptr [esi+0Bh], 2
mov     byte ptr [ecx+9], 5
mov     byte ptr [ecx+0Ah], 0

loc_474BFA:
pop     esi
pop     ecx
retn
sub_474BC1 endp




sub_474BFD proc near
push    ecx
mov     ecx, eax
mov     eax, ebx
mov     bl, [ecx+0Ah]
test    bl, bl
jbe     short loc_474C10
cmp     bl, 1
jz      short loc_474C4D
pop     ecx
retn

loc_474C10:
mov     byte ptr [ecx+0ADh], 0FFh
mov     edx, [edx+10h]
cmp     edx, 1Eh
jb      short loc_474C28
jbe     short loc_474C41
cmp     edx, 3Ch ; '<'
jz      short loc_474C48
pop     ecx
retn

loc_474C28:
cmp     edx, 0Ah
jnz     loc_474CA9
mov     ebx, 10h

loc_474C36:
mov     edx, eax
mov     eax, ecx
call    sub_474D6E
pop     ecx
retn

loc_474C41:
mov     ebx, 2
jmp     short loc_474C36

loc_474C48:
inc     byte ptr [ecx+0Ah]
pop     ecx
retn

loc_474C4D:
cmp     byte ptr [edx+9], 20h ; ' '
jnz     short loc_474C5F
cmp     dword ptr [edx+10h], 47h ; 'G'
jnz     short loc_474C5F
mov     byte ptr [eax+0Bh], 0
pop     ecx
retn

loc_474C5F:
cmp     byte ptr [edx+9], 21h ; '!'
jnz     short loc_474CA9
cmp     dword ptr [edx+10h], 1
jnz     short loc_474CA9
mov     dword ptr [ecx+158h], 1990199h
mov     dword ptr [ecx+15Ch], 42100199h
mov     byte ptr [ecx+0ACh], 6
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [eax+2], 0
mov     ebx, 5
mov     edx, eax
mov     eax, ecx
call    sub_474D6E
mov     byte ptr [ecx+9], 6
mov     byte ptr [ecx+0Ah], 0

loc_474CA9:
pop     ecx
retn
sub_474BFD endp

db 8Dh, 40h, 0
jpt_474CD5 dd offset loc_474CDC ; jump table for switch statement
dd offset loc_474CF8
dd offset loc_474D14
dd offset loc_474D58



sub_474CBE proc near
push    ecx
mov     ecx, edx
mov     edx, ebx
mov     bl, [eax+0Ah]
cmp     bl, 3           ; switch 4 cases
ja      def_474CD5      ; jumptable 00474CD5 default case
and     ebx, 0FFh
jmp     jpt_474CD5[ebx*4] ; switch jump

loc_474CDC:             ; jumptable 00474CD5 case 0
cmp     dword ptr [ecx+10h], 3Fh ; '?'
jnz     def_474CD5      ; jumptable 00474CD5 default case
mov     byte ptr [eax+0ACh], 7
mov     word ptr [edx+2], 0

loc_474CF3:
inc     byte ptr [eax+0Ah]
pop     ecx
retn

loc_474CF8:             ; jumptable 00474CD5 case 1
cmp     byte ptr [eax+0A4h], 0Dh
jnz     def_474CD5      ; jumptable 00474CD5 default case
mov     byte ptr [eax+0ACh], 7
mov     word ptr [edx+2], 0Dh
jmp     short loc_474CF3

loc_474D14:             ; jumptable 00474CD5 case 2
mov     byte ptr [eax+0ADh], 0FFh
mov     ebx, [ecx+10h]
cmp     ebx, 7Dh ; '}'
jb      short loc_474D39
jbe     short loc_474D4A
cmp     ebx, 8Ch
jb      short def_474CD5 ; jumptable 00474CD5 default case
jbe     short loc_474D51
cmp     ebx, 0A4h
jz      short loc_474CF3
pop     ecx
retn

loc_474D39:
cmp     ebx, 50h ; 'P'
jnz     short def_474CD5 ; jumptable 00474CD5 default case
mov     ebx, 0Eh

loc_474D43:
call    sub_474D6E
pop     ecx
retn

loc_474D4A:
mov     ebx, 5
jmp     short loc_474D43

loc_474D51:
mov     ebx, 0Fh
jmp     short loc_474D43

loc_474D58:             ; jumptable 00474CD5 case 3
cmp     byte ptr [ecx+9], 22h ; '"'
jnz     short def_474CD5 ; jumptable 00474CD5 default case
cmp     dword ptr [ecx+10h], 1
jnz     short def_474CD5 ; jumptable 00474CD5 default case
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0

def_474CD5:             ; jumptable 00474CD5 default case
pop     ecx
sub_474CBE endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_66]



sub_474D6E proc near
mov     byte ptr [edx+0Ah], 0
mov     al, [edx+0Ah]
mov     [edx+8], al
mov     byte ptr [edx+9], 0FFh
mov     eax, ds:off_517705[ebx*4]
mov     [edx+4], eax
retn
sub_474D6E endp




sub_474D87 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+7]
sar     eax, 18h
mov     edx, [edx+4]
mov     al, [edx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_474DAC
jbe     short loc_474DAF
cmp     al, 7Fh
jnz     short loc_474DAC
mov     byte ptr [esi+0Ah], 0
jmp     short loc_474DAF

loc_474DAC:
inc     byte ptr [esi+0Ah]

loc_474DAF:
mov     eax, [esi+7]
sar     eax, 18h
mov     edx, [esi+4]
mov     al, [edx+eax]
mov     [esi+8], al
cmp     al, [esi+9]
jz      short loc_474DF1
mov     eax, [esi+5]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 3Ch ; '<'
mov     edx, 2Dh ; '-'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 80007h
mov     eax, edi
call    sub_4EE044

loc_474DF1:
mov     al, [esi+8]
mov     [esi+9], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_474D87 endp




sub_474DFC proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_474DFC endp




sub_474E21 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_474E35
jbe     short loc_474E53
cmp     al, 2
jz      short loc_474E4C
jmp     short loc_474E53

loc_474E35:
test    al, al
jnz     short loc_474E53
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
jmp     short loc_474E53

loc_474E4C:
sub     dword ptr [ecx+24h], 10000h

loc_474E53:
inc     byte ptr [ecx+0Ch]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 5
call    sub_4EF008
mov     edx, eax
shl     eax, 2
add     eax, edx
add     eax, eax
shl     eax, 4
mov     [ecx+20h], eax
pop     edx
pop     ecx
pop     ebx
retn
sub_474E21 endp




sub_474E77 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_474E80[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_474E9F
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_474E9F:
pop     edx
pop     ecx
retn
sub_474E77 endp




sub_474EA2 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_474EB2
mov     eax, edx
call    sub_474DFC

loc_474EB2:
mov     eax, edx
call    sub_474E77
pop     edx
retn
sub_474EA2 endp




sub_474EBB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
xor     eax, eax

loc_474EE8:
mov     edx, eax
mov     word ptr [ecx+edx*8+196h], 4210h
inc     eax
cmp     eax, 6
jl      short loc_474EE8
or      byte ptr [ecx+1AFh], 80h
mov     word ptr [ecx+0Eh], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_474EBB endp




sub_474F0E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_474F22
jbe     short loc_474F3D
cmp     al, 2
jz      short loc_474F36
jmp     short loc_474F3D

loc_474F22:
test    al, al
jnz     short loc_474F3D
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
jmp     short loc_474F3D

loc_474F36:
sub     dword ptr [ecx+24h], 10000h

loc_474F3D:
inc     byte ptr [ecx+0Ch]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 5
call    sub_4EF008
mov     edx, eax
shl     eax, 2
add     eax, edx
add     eax, eax
shl     eax, 4
mov     [ecx+20h], eax
pop     edx
pop     ecx
pop     ebx
retn
sub_474F0E endp




sub_474F61 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_474F6A[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_474F89
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_474F89:
pop     edx
pop     ecx
retn
sub_474F61 endp




sub_474F8C proc near

var_48= byte ptr -48h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 60h
mov     ebp, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_474FA4
mov     eax, ebp
call    sub_474EBB

loc_474FA4:
mov     eax, ebp
call    sub_474F61
add     word ptr [ebp+0Eh], 4
mov     eax, esp
call    sub_4EF184
mov     eax, [ebp+0Ch]
sar     eax, 10h
mov     edx, esp
call    sub_4EF50D
mov     ecx, 0Ch
lea     edi, [esp+78h+var_48]
mov     esi, esp
rep movsd
lea     eax, [ebp+288h]
mov     ebx, eax
lea     edx, [esp+78h+var_48]
call    sub_4EF388
lea     eax, [ebp+2E8h]
mov     ebx, eax
mov     edx, esp
call    sub_4EF388
add     esp, 60h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_474F8C endp




sub_474FFB proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
lea     edx, [eax+408h]
mov     [esp+1Ch+var_1C], edx
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
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47503A[edx*4]
mov     ah, [ebp+0Bh]
test    ah, ah
jz      short loc_475051
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_475058

loc_475051:
mov     dl, ah
inc     dl
mov     [ebp+0Bh], dl

loc_475058:
test    byte ptr [ebp+0], 2
jz      short loc_475071
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_475071:
cmp     byte ptr [ebp+8], 7
jz      short loc_47508A
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 2
mov     eax, ebp
call    sub_432697

loc_47508A:
cmp     byte ptr [ebp+8], 1
jnz     short loc_4750A3
mov     edi, [esp+1Ch+var_1C]
lea     edi, [edi+14h]
lea     esi, [ebp+14h]
movsd
movsd
mov     edx, [esp+1Ch+var_1C]
sub     word ptr [edx+16h], 1Eh

loc_4750A3:
mov     edx, [esp+1Ch+var_1C]
mov     dword ptr [edx+0Ch], 0
add     esp, 4
sub_474FFB endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_47564B
;   ADDITIONAL PARENT FUNCTION sub_4757D7
;   ADDITIONAL PARENT FUNCTION sub_475A91

loc_4750B0:
pop     ebp
; END OF FUNCTION CHUNK FOR sub_47564B
; START OF FUNCTION CHUNK FOR sub_4750B7
;   ADDITIONAL PARENT FUNCTION sub_475201

loc_4750B1:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4750B7



sub_4750B7 proc near

; FUNCTION CHUNK AT 004750B1 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 40h ; '@'
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     ax, ds:word_51778C[eax*2]
mov     [ecx+15Ch], ax
mov     [ecx+15Ah], ax
mov     [ecx+158h], ax
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], offset unk_517780
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
lea     edi, [ebx+24h]
lea     esi, [ecx+14h]
movsd
movsd
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_517774
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+74h], 0
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0
mov     byte ptr [ecx+8], 0
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     word ptr [ebx], 0
mov     dword ptr [ebx+0Ch], 0
mov     dword ptr [ebx+10h], 0
mov     dword ptr [ebx+8], 7FFFFFFFh
mov     bl, [ecx+3]
cmp     bl, 1
jb      short loc_4751B4
jbe     short loc_4751CB
cmp     bl, 2
jz      short loc_4751E2

loc_4751B4:
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 1
jmp     loc_4750B1

loc_4751CB:
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 3
jmp     loc_4750B1

loc_4751E2:
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
and     byte ptr [ecx], 0FDh
mov     byte ptr [ecx+8], 7
jmp     loc_4750B1
sub_4750B7 endp



; Attributes: thunk

sub_4751FC proc near
jmp     sub_4DE2F6
sub_4751FC endp




sub_475201 proc near

; FUNCTION CHUNK AT 004750B1 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
test    byte ptr [edi+0Fh], 20h
jz      short loc_475227
mov     eax, 2
call    sub_47EEAE
mov     byte ptr [esi+8], 6
jmp     loc_4753F4

loc_475227:
mov     eax, esi
call    sub_47597E
test    eax, eax
jz      short loc_47523B
mov     byte ptr [esi+8], 4
jmp     loc_4753F4

loc_47523B:
mov     edx, esi
mov     eax, offset byte_5F8364
call    sub_4DD64B
mov     [edi+8], eax
mov     al, [esi+9]
cmp     al, 3
jb      short loc_475289
jbe     loc_4753E4
cmp     al, 0Bh
jb      short loc_47527C
jbe     loc_475432
cmp     al, 0Fh
jb      loc_4750B1
jbe     loc_475441
cmp     al, 14h
jz      loc_47546E
jmp     loc_4750B1

loc_47527C:
cmp     al, 0Ah
jz      loc_4753FD
jmp     loc_4750B1

loc_475289:
cmp     al, 1
jb      short loc_475294
jbe     short loc_4752AA
jmp     loc_4753C1

loc_475294:
test    al, al
jnz     loc_4750B1
call    rand_
xor     ah, ah
mov     [edi+4], ax
inc     byte ptr [esi+9]

loc_4752AA:
mov     eax, esi
call    sub_475A91
test    al, al
jz      loc_4750B1
cmp     dword ptr [edi+8], 12Ch
jnb     short loc_4752DA
mov     word ptr [esi+44h], 80h
cmp     byte ptr [esi+0ACh], 2
jz      short loc_4752F7
xor     ebx, ebx
mov     edx, 2
jmp     short loc_4752F0

loc_4752DA:
mov     word ptr [esi+44h], 40h ; '@'
cmp     byte ptr [esi+0ACh], 1
jz      short loc_4752F7
xor     ebx, ebx
mov     edx, 1

loc_4752F0:
mov     eax, esi
call    sub_4DE96B

loc_4752F7:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     ecx, eax
mov     edx, eax
mov     eax, esi
call    sub_475A09
cmp     byte ptr [esi+0Dh], 0
jz      short loc_47536A
mov     ebx, [esi+0Ah]
sar     ebx, 18h
lea     edx, [edi+24h]
lea     eax, [esi+14h]
call    sub_4DD685
sar     eax, 7
cmp     ebx, eax
jge     short loc_47536A
mov     word ptr [esi+44h], 80h
cmp     byte ptr [esi+0ACh], 2
jz      short loc_475355
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B

loc_475355:
movsx   ax, byte ptr [esi+0Dh]
shl     eax, 2
mov     [edi+4], ax
mov     byte ptr [esi+9], 0Ah
jmp     loc_4750B1

loc_47536A:
mov     edx, ecx
mov     eax, esi
call    sub_475942
mov     ax, [esi+56h]
add     ax, [esi+66h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, ecx
mov     eax, esi
call    sub_475A4C
cmp     word ptr [esi+46h], 0
jnz     loc_4750B1
mov     cx, [edi+4]
test    cx, cx
jnz     short loc_4753B5
inc     byte ptr [esi+9]
call    rand_
xor     ah, ah
and     al, 1Fh
inc     eax
mov     [edi+4], ax
jmp     loc_4750B1

loc_4753B5:
mov     esi, ecx
dec     esi
mov     [edi+4], si
jmp     loc_4750B1

loc_4753C1:
cmp     byte ptr [esi+0A7h], 0
jge     short loc_4753E4
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0
inc     byte ptr [esi+9]

loc_4753E4:
mov     cx, [edi+4]
dec     cx
mov     [edi+4], cx

loc_4753EE:
jnz     loc_4750B1

loc_4753F4:
mov     byte ptr [esi+9], 0
jmp     loc_4750B1

loc_4753FD:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+24h]
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     loc_4750B1
inc     byte ptr [esi+9]
jmp     loc_4750B1

loc_475432:
mov     eax, esi
call    sub_475A91
test    al, al
jz      loc_4750B1

loc_475441:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
mov     eax, esi
call    sub_475A09
mov     dx, [edi+4]
dec     dx
mov     [edi+4], dx
jmp     short loc_4753EE

loc_47546E:
mov     ebx, [esi+62h]
sar     ebx, 10h
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [edi]
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     loc_4750B1
mov     byte ptr [esi+9], 1
jmp     loc_4750B1
sub_475201 endp




sub_4754A3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+408h]
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4DD64B
mov     [ebx+8], eax
mov     al, [ecx+9]
test    al, al
jbe     short loc_4754CC
cmp     al, 1
jz      short loc_4754E8
pop     edx
pop     ecx
pop     ebx
retn

loc_4754CC:
cmp     dword ptr [ebx+8], 12Ch
jnb     short loc_475508
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
jmp     short loc_475504

loc_4754E8:
cmp     byte ptr [ecx+0A7h], 0
jge     short loc_475508
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0

loc_475504:
mov     byte ptr [ecx+0Bh], 0

loc_475508:
pop     edx
pop     ecx
pop     ebx
retn
sub_4754A3 endp




sub_47550C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
xor     esi, esi
mov     al, [eax+9]
cmp     al, 3
jb      short loc_47554D
jbe     loc_4755DC
cmp     al, 14h
jb      short loc_475540
jbe     loc_475610
cmp     al, 15h
jbe     loc_4755DC
cmp     al, 16h
jz      loc_475615
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_475540:
cmp     al, 4
jz      loc_4755E3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47554D:
cmp     al, 1
jb      short loc_475555
jbe     short loc_475578
jmp     short loc_4755AE

loc_475555:
test    al, al
jnz     loc_47563D
cmp     byte ptr [ecx+0ACh], 3
jz      short loc_475578
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Bh], 0

loc_475578:
mov     ax, [ecx+56h]
add     eax, esi
and     ah, 0Fh
mov     [ecx+56h], ax
test    si, si
jnz     loc_47563D
call    sub_42ABA2
test    eax, eax
jnz     loc_47563D
mov     edx, [ecx+9]
sar     edx, 18h
call    sub_4A0E24

loc_4755A6:
inc     byte ptr [ecx+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4755AE:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_47563D
cmp     ds:byte_77E7D4, 12h
jnz     short loc_4755A6
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_4755A6
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4755A6
mov     byte ptr [ecx+9], 14h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4755DC:
call    sub_42A98E
jmp     short loc_4755A6

loc_4755E3:
call    sub_42ABA2
test    eax, eax
jnz     short loc_47563D
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
cmp     byte ptr [ecx+0ACh], 3
jz      short loc_47563D
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_475610:
and     byte ptr [ecx], 0FDh
jmp     short loc_4755A6

loc_475615:
call    sub_42ABA2
test    eax, eax
jnz     short loc_47563D
and     ds:byte_5F8421, 0BFh
mov     eax, 238h
call    sub_47E8B8
or      ds:byte_5F8364, 2
mov     eax, ecx
call    sub_4DE2F6

loc_47563D:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47550C endp




sub_475642 proc near
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
retn
sub_475642 endp




sub_47564B proc near

; FUNCTION CHUNK AT 004750B0 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+408h]
mov     al, [eax+9]
test    al, al
jbe     short loc_475669
cmp     al, 1
jz      short loc_4756AA
jmp     loc_4750B0

loc_475669:
mov     ax, word ptr ds:dword_5F83B8+2
mov     [ebp+56h], ax
mov     word ptr [ebp+46h], 200h
mov     ax, [ebp+46h]
mov     [ebp+44h], ax
mov     word ptr [esi+1Ch], 18h
mov     word ptr [esi+20h], 0
mov     ax, [esi+20h]
mov     [esi+1Eh], ax
xor     ebx, ebx
mov     edx, 4
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+9]
mov     byte ptr [ebp+0Bh], 0

loc_4756AA:
test    byte ptr [esi+0Fh], 2
jz      short loc_4756DF
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
cmp     byte ptr [ebp+0ACh], 0
jz      loc_4750B0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
jmp     loc_4757B7

loc_4756DF:
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     ebx, eax
test    eax, eax
jz      short loc_475709
lea     ecx, [ebp+44h]
mov     edx, eax
mov     eax, ecx
call    sub_42D90F

loc_475709:
mov     eax, [ebp+42h]
sar     eax, 10h
call    abs_
mov     edx, eax
mov     eax, [esi+1Ah]
sar     eax, 10h
call    abs_
cmp     edx, eax
jg      short loc_475735
mov     word ptr [esi+1Ch], 0
mov     ax, [esi+1Ch]
mov     [ebp+44h], ax
jmp     short loc_475758

loc_475735:
mov     dx, [ebp+44h]
test    dx, dx
jge     short loc_47574C
mov     ax, [esi+1Ch]
mov     edi, edx
add     edi, eax
mov     [ebp+44h], di
jmp     short loc_475758

loc_47574C:
mov     ax, [esi+1Ch]
mov     ecx, edx
sub     ecx, eax
mov     [ebp+44h], cx

loc_475758:
lea     edx, [esi+24h]
lea     eax, [ebp+14h]
call    sub_4DD685
cmp     eax, 1000h
jle     short loc_47577C
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd

loc_47577C:
mov     edx, ebx
mov     eax, ebp
call    sub_475A09
cmp     byte ptr [ebp+0A7h], 0
jge     loc_4750B0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     word ptr [ebp+48h], 0
mov     ax, [ebp+48h]
mov     [ebp+46h], ax
mov     [ebp+44h], ax
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0

loc_4757B7:
mov     byte ptr [ebp+0Bh], 0
jmp     loc_4750B0
sub_47564B endp ; sp-analysis failed

db 8Dh, 40h, 0
jpt_475804 dd offset loc_47580B ; jump table for switch statement
dd offset loc_475839
dd offset loc_475843
dd offset loc_4758DB
dd offset loc_4758EE



sub_4757D7 proc near

var_28= byte ptr -28h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004750B0 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ebp, eax
add     eax, 408h
mov     [esp+38h+var_1C], eax
mov     edx, offset byte_5F8364
mov     [esp+38h+var_20], edx
mov     al, [ebp+9]
cmp     al, 4           ; switch 5 cases
ja      def_475804      ; jumptable 00475804 default case
and     eax, 0FFh
jmp     jpt_475804[eax*4] ; switch jump

loc_47580B:             ; jumptable 00475804 case 0
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      def_475804      ; jumptable 00475804 default case
mov     byte ptr ds:dword_5F836C, 3
xor     ah, ah
mov     byte ptr ds:dword_5F836C+1, ah
xor     ecx, ecx
mov     ds:dword_5F8370, ecx

loc_475831:
inc     byte ptr [ebp+9]
jmp     def_475804      ; jumptable 00475804 default case

loc_475839:             ; jumptable 00475804 case 1
mov     ds:byte_5F88AC, 30h ; '0'
inc     byte ptr [ebp+9]

loc_475843:             ; jumptable 00475804 case 2
cmp     ds:word_6E23D6, 0
jnz     def_475804      ; jumptable 00475804 default case
lea     eax, [ebp+14h]
mov     ecx, 5
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
or      byte ptr [ebp+0], 2
mov     word ptr [ebp+44h], 200h
mov     word ptr [ebp+56h], 0A8Ch
mov     eax, [esp+38h+var_1C]
mov     word ptr [eax+4], 0B4h
lea     edi, [ebp+14h]
mov     esi, [esp+38h+var_20]
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [esp+38h+var_28]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [esp+38h+var_28]
movsd
movsd
lea     edi, [esp+38h+var_28]
lea     esi, [ebp+2Ch]
movsd
movsd
mov     edi, eax
lea     edi, [edi+24h]
lea     esi, [esp+38h+var_28]
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, [esp+38h+var_20]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     edi, esp
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+34h]
mov     esi, esp
movsd
movsd
movsd
movsd
sub     word ptr [ebp+16h], 32h ; '2'
jmp     loc_475831

loc_4758DB:             ; jumptable 00475804 case 3
mov     eax, [esp+38h+var_1C]
mov     dx, [eax+4]
dec     dx
mov     [eax+4], dx
jnz     short loc_4758EE ; jumptable 00475804 case 4
inc     byte ptr [ebp+9]

loc_4758EE:             ; jumptable 00475804 case 4
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
mov     eax, ebp
call    sub_475A09
mov     dl, byte ptr ds:dword_77E760
test    dl, dl
jnz     short def_475804 ; jumptable 00475804 default case
mov     eax, [esp+38h+var_20]
call    sub_4B565A
mov     eax, [esp+38h+var_20]
or      byte ptr [eax], 2
mov     eax, 239h
call    sub_47E8B8
mov     byte ptr [ebp+8], 1
mov     [ebp+9], dl

def_475804:             ; jumptable 00475804 default case
add     esp, 20h
jmp     loc_4750B0
sub_4757D7 endp ; sp-analysis failed




sub_475942 proc near
push    ecx
mov     ecx, eax
mov     ax, [eax+66h]
test    edx, edx
jnz     short loc_475966
call    rand_
imul    ax, ds:word_77EAB6
xor     ah, ah
and     al, 0Fh
sub     eax, 8
shl     eax, 2
jmp     short loc_475978

loc_475966:
test    dh, 5
jz      short loc_475970
mov     eax, 10h

loc_475970:
test    dh, 0Ah
jz      short loc_475978
imul    eax, -1

loc_475978:
mov     [ecx+66h], ax
pop     ecx
retn
sub_475942 endp




sub_47597E proc near
push    ebx
push    ecx
push    edx
cmp     eax, ds:dword_5F84E8
jnz     short loc_475A03
and     ds:byte_5F8364, 0FDh
or      ds:byte_5F8421, 40h
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
mov     edx, [eax+18Eh]
sar     edx, 10h
mov     ds:dword_55A0F4, edx
mov     edx, [eax+190h]
sar     edx, 10h
sub     edx, 20h ; ' '
mov     ds:dword_55A0F8, edx
mov     edx, [eax+192h]
sar     edx, 10h
mov     ds:dword_55A0FC, edx
mov     ecx, ds:dword_77E964
lea     edx, [eax+14h]
mov     eax, offset byte_5F8364
add     eax, 14h
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_55A0F4
call    sub_42AAA8
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_475A03:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_47597E endp




sub_475A09 proc near
push    ebx
push    ecx
mov     ecx, eax
call    sub_42C592
test    dh, 10h
jnz     short loc_475A33
mov     dx, [ecx+46h]
add     edx, 4
mov     [ecx+46h], dx
add     [ecx+16h], dx
mov     ebx, [ecx+14h]
sar     ebx, 10h
movsx   edx, ax
cmp     ebx, edx
jle     short loc_475A3D

loc_475A33:
mov     [ecx+16h], ax
mov     word ptr [ecx+46h], 0

loc_475A3D:
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
pop     ecx
pop     ebx
retn
sub_475A09 endp




sub_475A4C proc near
push    ebx
push    ecx
mov     ecx, eax
mov     eax, edx
lea     edx, [ecx+408h]
test    eax, eax
jz      short loc_475A8E
mov     bx, [edx]
inc     ebx
mov     [edx], bx
cmp     bx, 3Ch ; '<'
jbe     short loc_475A8E
mov     word ptr [edx], 0
mov     bx, [ecx+56h]
add     ebx, 7D0h
call    rand_
xor     ah, ah
and     al, 3Fh
add     eax, ebx
and     ah, 0Fh
mov     [edx+2], ax
mov     byte ptr [ecx+9], 14h

loc_475A8E:
pop     ecx
pop     ebx
retn
sub_475A4C endp




sub_475A91 proc near

var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004750B0 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
add     eax, 408h
mov     [esp+34h+var_1C], eax
cmp     dword ptr [eax+8], 64h ; 'd'
jnb     loc_475B55
lea     edi, [ebp+0C4h]
lea     esi, [ebp+190h]
movsd
movsd
mov     edi, offset dword_5F8428
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     [esp+34h+var_24], 2
mov     [esp+34h+var_22], 9
mov     [esp+34h+var_20], 4
mov     ecx, esp
lea     ebx, [esp+34h+var_24]
mov     edx, offset byte_5F8364
mov     eax, ebp
call    sub_4DD6EC
test    al, 10h
jnz     short loc_475B55
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
cmp     byte ptr [ebp+0ACh], 0
jz      short loc_475B20
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     byte ptr [ebp+0Bh], 0
jmp     short loc_475B51

loc_475B20:
mov     dl, [ebp+0Bh]
inc     dl
mov     [ebp+0Bh], dl
cmp     dl, 3Ch ; '<'
jbe     short loc_475B51
xor     ebx, ebx
mov     edx, 1
mov     eax, ebp
call    sub_4DE96B
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     ecx, [esp+34h+var_1C]
mov     [ecx+2], ax
mov     byte ptr [ebp+9], 14h

loc_475B51:
xor     al, al
jmp     short loc_475B57

loc_475B55:
mov     al, 1

loc_475B57:
add     esp, 1Ch
jmp     loc_4750B0
sub_475A91 endp ; sp-analysis failed




sub_475B5F proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_475B65[edx*4]
pop     edx
retn
sub_475B5F endp




sub_475B6E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     byte ptr [ebx+14h], 0
mov     word ptr [ebx+16h], 0
mov     dword ptr [ebx+18h], 0
mov     byte ptr [ebx+15h], 1
mov     dword ptr [ebx+40h], 0
mov     dword ptr [ebx+44h], 0
mov     dword ptr [ebx+34h], 4800000h
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 3
mov     eax, edx
shl     eax, 3
sub     eax, edx
mov     edx, offset off_51782E
add     edx, eax
mov     [ebx+0Ch], edx
mov     dword ptr [ebx+10h], offset unk_51779E
cmp     byte ptr ds:word_77E7FC, 0
jz      short loc_475C14
cmp     byte ptr ds:word_77E7FC+1, 19h
jnz     short loc_475C14
cmp     ds:byte_77E7FE, 3
jnz     short loc_475C14
mov     ds:byte_55A104, 1

loc_475C14:
mov     edi, ebx
lea     esi, [ecx+14h]
movsd
movsd
mov     ax, [ecx+56h]
mov     [ebx+8], ax
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_517A4A
mov     dword ptr [ecx+10h], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0ACh], 0
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_47601C
jmp     def_47638F      ; jumptable 0047638F default case
sub_475B6E endp




sub_475C94 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebx, eax
lea     ecx, [ebx+408h]
mov     esi, offset byte_5F8364

loc_475CA7:
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
test    al, 80h
jnz     short loc_475CB9
mov     [ebx+9], al

loc_475CB9:
mov     ah, al
cmp     al, 8
jb      short loc_475D06
jbe     loc_475F2C
cmp     al, 92h
jb      short loc_475CEA
jbe     loc_475FB5
cmp     al, 94h
jb      loc_475FC2
jbe     loc_475FCF
cmp     al, 95h
jz      loc_475FDC
jmp     loc_475FFD

loc_475CEA:
cmp     al, 90h
jb      short loc_475CF9
jbe     loc_475FAB
jmp     loc_475FEC

loc_475CF9:
cmp     al, 9
jz      loc_475E3C
jmp     loc_475FFD

loc_475D06:
cmp     al, 4
jb      short loc_475D23
jbe     loc_475E91
cmp     al, 6
jb      loc_475ED3
jbe     loc_475EFB
jmp     loc_475F01

loc_475D23:
cmp     al, 2
jb      short loc_475D2E
jbe     short loc_475D64
jmp     loc_475DB3

loc_475D2E:
cmp     al, 1
jnz     loc_475FFD
mov     eax, [ecx+10h]
lea     ebp, [eax+1]
mov     [ecx+10h], ebp
mov     al, [eax]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edx, [eax+1]
mov     [ecx+10h], edx
mov     al, [eax]
xor     ah, ah
shl     eax, 4
mov     [ecx+16h], ax
mov     byte ptr [ebx+9], 1
jmp     loc_475FFD

loc_475D64:
mov     eax, [ecx+10h]
cmp     byte ptr [eax], 3
jnz     short loc_475D75
cmp     byte ptr [ebx+0ACh], 0
jnz     short loc_475D80

loc_475D75:
mov     eax, [ecx+10h]
mov     al, [eax]
mov     [ebx+0ACh], al

loc_475D80:
mov     edi, [ecx+10h]
inc     edi
mov     [ecx+10h], edi
lea     eax, [edi+1]
mov     [ecx+10h], eax
xor     eax, eax
mov     al, [edi]
shl     eax, 2
mov     edi, offset unk_517A26
add     edi, eax
mov     [ecx+2Ch], edi
mov     word ptr [ecx+30h], 1
mov     byte ptr [ebx+9], 2
mov     word ptr [ecx+16h], 0
jmp     loc_475FFD

loc_475DB3:
push    64h ; 'd'
push    64h ; 'd'
mov     edx, [ebx+18h]
push    edx
mov     edi, [ebx+14h]
push    edi
mov     ebp, [esi+18h]
push    ebp
mov     eax, [esi+14h]
push    eax
call    sub_476988
test    al, al
jz      short loc_475DD9
add     dword ptr [ecx+10h], 5
jmp     loc_475CA7

loc_475DD9:
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     [ebx+44h], ax
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
mov     edi, eax
shl     edi, 4
mov     ax, [ecx]
add     eax, edi
mov     [ecx+1Ch], ax
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     di, [ecx+4]

loc_475E2D:
add     edi, eax
mov     [ecx+1Eh], di
mov     byte ptr [ebx+9], 3
jmp     loc_475FFD

loc_475E3C:
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     [ebx+44h], ax
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     di, [esi+14h]
add     edi, eax
mov     [ecx+1Ch], di
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     di, [esi+18h]
jmp     short loc_475E2D

loc_475E91:
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     [ebx+44h], ax
mov     edi, [ecx+10h]
lea     eax, [edi+1]
mov     [ecx+10h], eax
xor     ah, ah
mov     al, [edi]
shl     eax, 3
mov     [ecx+16h], ax
mov     byte ptr [ebx+9], 4
jmp     loc_475FFD

loc_475ED3:
lea     edi, [ebx+14h]
mov     edx, edi
mov     eax, 1ADh
call    sub_4D8BC3
mov     edx, edi
mov     eax, 1AEh
call    sub_4D8BC3
mov     byte ptr [ebx+9], 5

loc_475EF2:
mov     byte ptr [ebx+0Ah], 0
jmp     loc_475FFD

loc_475EFB:
mov     byte ptr [ebx+9], 6
jmp     short loc_475EF2

loc_475F01:
mov     edi, [ecx+10h]
lea     eax, [edi+1]
mov     [ecx+10h], eax
mov     al, [edi]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
xor     ah, ah
mov     [ebx+64h], ax
mov     byte ptr [ebx+9], 7
jmp     loc_475FFD

loc_475F2C:
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     [ebx+44h], ax
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
xor     ah, ah
shl     eax, 3
mov     [ecx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 3Fh
mov     [ecx+1Eh], ax
call    rand_
xor     ah, ah
and     al, 3Fh
mov     [ecx+20h], ax
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
and     eax, 0FFh
shl     eax, 2
mov     edi, offset unk_517A26
add     edi, eax
mov     [ecx+2Ch], edi
mov     word ptr [ecx+30h], 1
mov     byte ptr [ebx+9], 8
jmp     loc_475EF2

loc_475FAB:
mov     eax, [ecx+10h]
movsx   edi, byte ptr [eax]
add     eax, edi
jmp     short loc_475FFA

loc_475FB5:
or      byte ptr [ecx+14h], 2
mov     dword ptr [ecx+34h], 4800001h
jmp     short loc_475FFD

loc_475FC2:
or      byte ptr [ecx+14h], 2
mov     dword ptr [ecx+34h], 5800001h
jmp     short loc_475FFD

loc_475FCF:
and     byte ptr [ecx+14h], 0FDh
mov     dword ptr [ecx+34h], 4800000h
jmp     short loc_475FFD

loc_475FDC:
mov     ax, [ebx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebx+56h], ax
jmp     short loc_475FFD

loc_475FEC:
call    rand_
and     eax, 3
mov     edi, [ecx+0Ch]
mov     eax, [edi+eax*4]

loc_475FFA:
mov     [ecx+10h], eax

