loc_4E1860:
cmp     eax, 20h ; ' '
jl      short loc_4E17EC
inc     ebx
cmp     ebx, 2
jl      loc_4E16F6
add     esp, 8
jmp     loc_4E04CD
sub_4E16EC endp




sub_4E1877 proc near
push    edx
mov     dl, al
xor     eax, eax
mov     al, dl
call    sub_4DD420
mov     dh, dl
and     dh, 1Fh
cmp     eax, 40h ; '@'
jb      short loc_4E18CD
jbe     loc_4E1931
cmp     eax, 80h
jb      short loc_4E18C0
jbe     loc_4E1960
cmp     eax, 0C0h
jb      loc_4E19B0
jbe     loc_4E197E
cmp     eax, 0E0h
jz      loc_4E1997
xor     eax, eax
pop     edx
retn

loc_4E18C0:
cmp     eax, 60h ; '`'
jz      loc_4E1942
xor     eax, eax
pop     edx
retn

loc_4E18CD:
and     dl, 0Fh
cmp     eax, 10h
jb      short loc_4E18E0
jbe     short loc_4E18F7
cmp     eax, 20h ; ' '
jz      short loc_4E1913
xor     eax, eax
pop     edx
retn

loc_4E18E0:
test    eax, eax
jnz     loc_4E19B0
mov     al, dl
imul    eax, 6F4h
add     eax, offset byte_5F8364
pop     edx
retn

loc_4E18F7:
and     edx, 0FFh
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
add     eax, offset byte_6DC7FC
pop     edx
retn

loc_4E1913:
mov     dl, dh
and     edx, 0FFh
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 5
add     eax, offset byte_6DD9CC
pop     edx
retn

loc_4E1931:
xor     eax, eax
mov     al, dh
imul    eax, 734h
add     eax, offset unk_6E23DC
pop     edx
retn

loc_4E1942:
mov     dl, dh
and     edx, 0FFh
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
add     eax, offset byte_57098C
pop     edx
retn

loc_4E1960:
mov     al, dl
and     al, 3Fh
xor     edx, edx
mov     dl, al
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, offset unk_572D5C
pop     edx
retn

loc_4E197E:
mov     dl, dh
and     edx, 0FFh
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
add     eax, offset unk_56FA74
pop     edx
retn

loc_4E1997:
mov     dl, dh
and     edx, 0FFh
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 5
add     eax, offset unk_56FCB4
pop     edx
retn

loc_4E19B0:
xor     eax, eax
pop     edx
retn
sub_4E1877 endp




sub_4E19B4 proc near
mov     byte ptr [eax+7], 0
retn
sub_4E19B4 endp




sub_4E19B9 proc near
mov     [eax+6], dl
movsx   edx, bx
sar     edx, 4
mov     [eax+0Fh], dl
mov     byte ptr [eax+7], 0
retn
sub_4E19B9 endp




sub_4E19CA proc near
push    ebx
mov     ebx, [edx+54h]
sar     ebx, 10h
call    sub_4E19D8
pop     ebx
retn
sub_4E19CA endp




sub_4E19D8 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 28h
mov     ebp, eax
mov     esi, edx
xor     eax, eax
mov     al, [ebp+6]
mov     al, ds:byte_55065A[eax*4]
and     eax, 0FFh
shl     eax, 14h
cmp     eax, [edx+80h]
ja      short loc_4E1A08

loc_4E19FF:
mov     byte ptr [ebp+7], 0
jmp     loc_4E1AB3

loc_4E1A08:
mov     al, [ebp+7]
cmp     al, 1
jb      short loc_4E1A1D
jbe     loc_4E1ABD
cmp     al, 2
jz      loc_4E1D20

loc_4E1A1D:
xor     ecx, ecx
mov     word ptr [esp+38h+var_24], cx
mov     word ptr [esp+38h+var_28+2], cx
mov     word ptr [esp+38h+var_28], cx
movsx   eax, bx
push    eax
lea     ecx, [esp+3Ch+var_38]
lea     ebx, [esp+3Ch+var_28]
mov     edx, offset byte_5F8364
mov     eax, esi
call    sub_4DD830
test    al, 10h
jnz     loc_4E1AB3
mov     byte ptr [ebp+7], 1
mov     ax, [esi+14h]
mov     [ebp+0], ax
movsx   dx, byte ptr [ebp+0Fh]
shl     edx, 4
mov     ax, [esi+16h]
add     eax, edx
mov     [ebp+2], ax
mov     ax, [esi+18h]
mov     [ebp+4], ax
mov     ax, word ptr ds:dword_5F8376+2
mov     dx, [ebp+0]
sub     eax, edx
mov     [ebp+8], ax
mov     ax, word ptr ds:dword_5F837A
mov     bx, [ebp+2]
sub     eax, ebx
mov     [ebp+0Ah], ax
mov     ax, word ptr ds:dword_5F837A+2
mov     cx, [ebp+4]
sub     eax, ecx
mov     [ebp+0Ch], ax
xor     eax, eax
mov     al, [ebp+6]
mov     al, ds:byte_550658[eax*4]
mov     [ebp+0Eh], al

loc_4E1AB3:
xor     eax, eax

loc_4E1AB5:
add     esp, 28h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4E1ABD:
lea     edi, [esp+38h+var_20]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
movsx   eax, word ptr [ebp+0]
mov     edx, [esp+16h]
sar     edx, 10h
sub     edx, eax
mov     [esp+38h+var_38], edx
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
ja      loc_4E19FF
mov     eax, [ebp+0]
sar     eax, 10h
mov     edx, [esp+38h+var_20]
sar     edx, 10h
sub     edx, eax
mov     [esp+38h+var_34], edx
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
ja      loc_4E19FF
mov     eax, [ebp+2]
sar     eax, 10h
mov     edx, [esp+38h+var_20+2]
sar     edx, 10h
sub     edx, eax
mov     [esp+38h+var_30], edx
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
ja      loc_4E19FF
lea     edx, [esp+38h+var_18]
mov     eax, esp
call    sub_4EF932
lea     edx, [ebp+8]
mov     ecx, 0FF069DAh
mov     ebx, 165h
lea     eax, [esp+38h+var_18]
lea     esi, [esp+38h+var_28]
call    sub_4DFFB5
mov     eax, [esp+38h+var_28]
mov     [ebp+8], ax
mov     eax, [esp+38h+var_28+2]
mov     [ebp+0Ah], ax
mov     eax, [esp+38h+var_24]
mov     [ebp+0Ch], ax
mov     ax, [ebp+0]
mov     word ptr [esp+38h+var_18], ax
mov     ax, [ebp+2]
mov     word ptr [esp+38h+var_18+2], ax
mov     ax, [ebp+4]
mov     word ptr [esp+38h+var_14], ax
mov     esi, [esp+0Eh]
sar     esi, 10h
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 3
add     eax, esi
shl     eax, 2
sar     eax, 0Ch
mov     word ptr [esp+38h+var_28], ax
mov     esi, [esp+38h+var_28]
sar     esi, 10h
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 3
add     eax, esi
shl     eax, 2
sar     eax, 0Ch
mov     word ptr [esp+38h+var_28+2], ax
mov     esi, [esp+38h+var_28+2]
sar     esi, 10h
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 3
add     eax, esi
shl     eax, 2
sar     eax, 0Ch
mov     word ptr [esp+38h+var_24], ax
mov     eax, [esp+38h+var_18]
mov     edx, [esp+38h+var_28]
add     eax, edx
mov     [ebp+0], ax
mov     eax, [esp+38h+var_18+2]
mov     ebx, [esp+38h+var_28+2]
add     eax, ebx
mov     [ebp+2], ax
mov     eax, [esp+38h+var_14]
mov     ecx, [esp+38h+var_24]
add     eax, ecx
mov     [ebp+4], ax
mov     ecx, 0FFFFh
mov     ebx, offset unk_55064C
mov     edx, ebp
mov     eax, ebp
call    sub_42CE61
test    eax, eax
jnz     loc_4E19FF
mov     edx, [esp+0Eh]
sar     edx, 10h
sar     edx, 1
mov     eax, [esp+1Eh]
sar     eax, 10h
add     eax, edx
mov     word ptr [esp+38h+var_18], ax
mov     edx, [esp+38h+var_28]
sar     edx, 10h
sar     edx, 1
mov     eax, [esp+38h+var_18]
sar     eax, 10h
add     eax, edx
mov     word ptr [esp+38h+var_18+2], ax
mov     edx, [esp+38h+var_28+2]
sar     edx, 10h
sar     edx, 1
mov     eax, [esp+38h+var_18+2]
sar     eax, 10h
add     eax, edx
mov     word ptr [esp+38h+var_14], ax
mov     ecx, 0FFFFh
mov     ebx, offset unk_55064C
lea     edx, [esp+38h+var_18]
lea     eax, [esp+38h+var_18]
call    sub_42CE61
test    eax, eax
jnz     loc_4E19FF
mov     dh, [ebp+0Eh]
dec     dh
mov     [ebp+0Eh], dh
jz      loc_4E19FF
mov     ax, [ebp+0]
sub     eax, [esp+38h+var_20]
add     eax, 64h ; 'd'
cmp     ax, 0C8h
jnb     loc_4E1AB3
mov     ax, [ebp+2]
sub     eax, [esp+38h+var_20+2]
add     eax, 64h ; 'd'
cmp     ax, 0C8h
jnb     loc_4E1AB3
mov     ax, [ebp+4]
sub     eax, [esp+38h+var_1C]
add     eax, 64h ; 'd'
cmp     ax, 0C8h
jnb     loc_4E1AB3
cmp     ds:byte_77EABE, 2
jnz     short loc_4E1CF6
xor     ebx, ebx
xor     edx, edx
mov     eax, 9Ch
call    sub_4D89E4

loc_4E1CF6:
mov     byte ptr [ebp+7], 2
xor     eax, eax
mov     al, [ebp+6]
mov     al, ds:byte_550659[eax*4]
mov     [ebp+0Eh], al
call    sub_4377C1
test    eax, eax
jg      loc_4E1AB3

loc_4E1D16:
mov     eax, 1
jmp     loc_4E1AB5

loc_4E1D20:
call    sub_4377C1
test    eax, eax
jle     short loc_4E1D32
mov     byte ptr [ebp+0Eh], 0
jmp     loc_4E19FF

loc_4E1D32:
call    sub_436700
mov     edx, 9
mov     word ptr [esp+38h+var_24], dx
mov     word ptr [esp+38h+var_28+2], dx
mov     word ptr [esp+38h+var_28], dx
movsx   eax, bx
push    eax
lea     ecx, [esp+3Ch+var_38]
lea     ebx, [esp+3Ch+var_28]
mov     edx, offset byte_5F8364
mov     eax, esi
call    sub_4DD830
test    al, 10h
jz      short loc_4E1D79
mov     ah, [ebp+0Eh]
dec     ah
mov     [ebp+0Eh], ah
jnz     short loc_4E1D16
mov     [ebp+7], ah
jmp     loc_4E1AB3

loc_4E1D79:
xor     eax, eax
mov     al, [ebp+6]
mov     al, ds:byte_550659[eax*4]
mov     [ebp+0Eh], al
jmp     short loc_4E1D16
sub_4E19D8 endp




sub_4E1D8A proc near
push    edx
xor     ah, ah
mov     ds:byte_77EABF, ah
mov     edx, 0E00h
mov     ds:word_77EAB2, dx
mov     word ptr ds:dword_77EAA8, dx
xor     eax, eax
mov     ax, ds:word_77E71C
mov     edx, 180h
call    sub_4EF12B
pop     edx
retn
sub_4E1D8A endp




sub_4E1DBA proc near
push    ecx
push    edx
mov     ds:byte_77EABF, 1
mov     edx, 680h
mov     ds:word_77EAB2, dx
mov     word ptr ds:dword_77EAA8, dx
xor     eax, eax
mov     ax, ds:word_77E71C
lea     ecx, [eax+eax]
cmp     ecx, 3333h
jb      short loc_4E1DF0
mov     edx, 180h
jmp     short loc_4E1DF7

loc_4E1DF0:
mov     edx, 180h
mov     eax, ecx

loc_4E1DF7:
call    sub_4EF12B
pop     edx
pop     ecx
retn
sub_4E1DBA endp




sub_4E1DFF proc near
push    ecx
push    edx
mov     ds:byte_77EABF, 2
mov     edx, 300h
mov     ds:word_77EAB2, dx
mov     word ptr ds:dword_77EAA8, dx
xor     eax, eax
mov     ax, ds:word_77E71C
mov     ecx, eax
shl     ecx, 2
cmp     ecx, 3333h
jb      short loc_4E1E37
mov     edx, 180h
jmp     short loc_4E1E3E

loc_4E1E37:
mov     edx, 180h
mov     eax, ecx

loc_4E1E3E:
call    sub_4EF12B
pop     edx
pop     ecx
retn
sub_4E1DFF endp




sub_4E1E46 proc near
mov     word ptr ds:dword_77EAA8, ax
retn
sub_4E1E46 endp




sub_4E1E4D proc near

var_C= byte ptr -0Ch
var_8= byte ptr -8
var_4= byte ptr -4

push    eax
push    edx
push    ebx
call    sub_4EF154
mov     edx, 180h
mov     eax, ecx
call    sub_4EF12B
mov     al, [esp+0Ch+var_4]
mov     ds:byte_55DCC4, al
mov     al, [esp+0Ch+var_8]
mov     ds:byte_55DCC5, al
mov     al, [esp+0Ch+var_C]
mov     ds:byte_55DCC6, al
mov     ds:word_55DCC8, cx
add     esp, 0Ch
retn
sub_4E1E4D endp




sub_4E1E86 proc near
push    edx
xor     edx, edx
mov     dl, ds:byte_55DCC4
mov     [eax], dx
xor     edx, edx
mov     dl, ds:byte_55DCC5
mov     [eax+2], dx
xor     edx, edx
mov     dl, ds:byte_55DCC6
mov     [eax+4], dx
mov     dx, ds:word_55DCC8
mov     [eax+6], dx
pop     edx
retn
sub_4E1E86 endp




sub_4E1EB7 proc near
push    ebx
push    edx
push    esi
push    edi
xor     ebx, ebx
mov     bl, ds:byte_77E71A
xor     edx, edx
mov     dl, ds:byte_77E719
xor     eax, eax
mov     al, ds:byte_77E718
call    sub_4EF154
xor     eax, eax
mov     ax, ds:word_77E71C
mov     edx, 180h
call    sub_4EF12B
mov     edi, offset unk_55DCC0
mov     esi, offset unk_77E714
movsd
movsd
movsd
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4E1EB7 endp




sub_4E1EFB proc near
push    ebx
push    ecx
push    esi
mov     bl, al
mov     esi, edx
cmp     al, ds:byte_55DC22
jz      loc_4E1F7B
cmp     al, ds:byte_55DC36
jz      loc_4E1F7B
cmp     al, ds:byte_55DC4A
jz      short loc_4E1F7B
cmp     al, ds:byte_55DC5E
jz      short loc_4E1F7B
cmp     ds:dword_55DCBC, 4
jnb     short loc_4E1F7B
xor     edx, edx
jmp     short loc_4E1F3D

loc_4E1F37:
inc     edx
cmp     edx, 4
jnb     short loc_4E1F7B

loc_4E1F3D:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
mov     cl, ds:byte_55DC22[eax]
test    cl, cl
jnz     short loc_4E1F37
mov     ds:byte_55DC22[eax], bl
mov     ds:dword_55DC2C[eax], esi
cmp     ds:byte_55DC2B[eax], 0
jz      short loc_4E1F6E
mov     ds:byte_55DC2B[eax], cl
jmp     short loc_4E1F75

loc_4E1F6E:
mov     ds:byte_55DC2B[eax], 1

loc_4E1F75:
inc     ds:dword_55DCBC

loc_4E1F7B:
pop     esi
pop     ecx
pop     ebx
retn
sub_4E1EFB endp




sub_4E1F7F proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 28h
mov     ebp, eax
cmp     byte ptr [eax+6], 0
jz      loc_4E20B2
xor     eax, eax
mov     al, [ebp+6]
call    sub_4E1877
mov     esi, eax
mov     dl, [eax]
test    dl, dl
jnz     short loc_4E1FAB
mov     [ebp+6], dl
jmp     short loc_4E1FC4

loc_4E1FAB:
mov     edi, offset byte_5F8364
cmp     dword ptr [eax+80h], 2F00000h
jb      short loc_4E1FD1

loc_4E1FBC:
mov     byte ptr [ebp+7], 0
mov     byte ptr [ebp+6], 0

loc_4E1FC4:
xor     eax, eax
dec     ds:dword_55DCBC
jmp     loc_4E20B4

loc_4E1FD1:
mov     dl, [ebp+7]
test    dl, dl
jbe     short loc_4E1FE1
cmp     dl, 1
jz      loc_4E20BC

loc_4E1FE1:
mov     ebx, 9
mov     word ptr [esp+40h+var_24], bx
mov     word ptr [esp+40h+var_28+2], bx
mov     word ptr [esp+40h+var_28], bx
mov     ax, word ptr ds:dword_77E9E8
mov     word ptr [esp+40h+var_20], ax
mov     ax, word ptr ds:dword_77E9EC
mov     word ptr [esp+40h+var_20+2], ax
mov     ax, word ptr ds:dword_77E9F0
mov     word ptr [esp+40h+var_1C], ax
mov     ecx, [edi+54h]
sar     ecx, 10h
lea     edx, [esi+14h]
lea     ebx, [esp+40h+var_28]
lea     eax, [esp+40h+var_20]
call    sub_4DD954
test    al, 2
jz      loc_4E20B2
test    byte ptr [esi+6], 80h
jnz     short loc_4E2044
cmp     byte ptr [esi+1], 60h ; '`'
jb      loc_4E20B2

loc_4E2044:
mov     byte ptr [ebp+7], 1
mov     ax, [edi+14h]
mov     [ebp+0], ax
mov     ax, [edi+16h]
sub     eax, 64h ; 'd'
mov     [ebp+2], ax
mov     ax, [edi+18h]
mov     [ebp+4], ax
cmp     byte ptr [ebp+0Fh], 0
jz      short loc_4E209C
mov     ax, [esi+14h]
mov     dx, [ebp+0]
sub     eax, edx
mov     [ebp+8], ax
mov     ax, [esi+16h]
mov     bx, [ebp+2]
sub     eax, ebx
mov     [ebp+0Ah], ax
mov     ax, [esi+18h]
mov     cx, [ebp+4]
sub     eax, ecx
mov     [ebp+0Ch], ax
mov     byte ptr [ebp+0Eh], 32h ; '2'
jmp     loc_4E20B2

loc_4E209C:
mov     word ptr [ebp+8], 0
mov     word ptr [ebp+0Ah], 0F000h
mov     word ptr [ebp+0Ch], 0
mov     byte ptr [ebp+0Eh], 0Fh

loc_4E20B2:
xor     eax, eax

loc_4E20B4:
add     esp, 28h
jmp     loc_4E04CC

loc_4E20BC:
lea     edi, [esp+40h+var_30]
lea     esi, [eax+14h]
movsd
movsd
movsx   eax, word ptr [ebp+0]
mov     edx, [esp+0Eh]
sar     edx, 10h
sub     edx, eax
mov     [esp+40h+var_40], edx
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
ja      loc_4E1FBC
mov     eax, [ebp+0]
sar     eax, 10h
mov     edx, [esp+40h+var_30]
sar     edx, 10h
sub     edx, eax
mov     [esp+40h+var_3C], edx
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
ja      loc_4E1FBC
mov     eax, [ebp+2]
sar     eax, 10h
mov     edx, [esp+40h+var_30+2]
sar     edx, 10h
sub     edx, eax
mov     [esp+40h+var_38], edx
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
ja      loc_4E1FBC
lea     edx, [esp+40h+var_20]
mov     eax, esp
call    sub_4EF932
lea     edx, [ebp+8]
mov     ecx, 0F746EA4h
mov     ebx, 424h
lea     eax, [esp+40h+var_20]
lea     esi, [esp+40h+var_28]
call    sub_4DFFB5
mov     eax, [esp+40h+var_28]
mov     [ebp+8], ax
mov     eax, [esp+40h+var_28+2]
mov     [ebp+0Ah], ax
mov     eax, [esp+40h+var_24]
mov     [ebp+0Ch], ax
mov     ax, [ebp+0]
mov     word ptr [esp+40h+var_20], ax
mov     ax, [ebp+2]
mov     word ptr [esp+40h+var_20+2], ax
mov     ax, [ebp+4]
mov     word ptr [esp+40h+var_1C], ax
mov     eax, [esp+16h]
sar     eax, 10h
mov     esi, eax
shl     esi, 2
sub     esi, eax
shl     esi, 3
add     esi, eax
shl     esi, 2
sar     esi, 0Ch
mov     word ptr [esp+40h+var_28], si
mov     eax, [esp+40h+var_28]
sar     eax, 10h
mov     esi, eax
shl     esi, 2
sub     esi, eax
shl     esi, 3
add     esi, eax
shl     esi, 2
sar     esi, 0Ch
mov     word ptr [esp+40h+var_28+2], si
mov     eax, [esp+40h+var_28+2]
sar     eax, 10h
mov     esi, eax
shl     esi, 2
sub     esi, eax
shl     esi, 3
add     esi, eax
shl     esi, 2
sar     esi, 0Ch
mov     word ptr [esp+40h+var_24], si
mov     eax, [esp+40h+var_20]
mov     edx, [esp+40h+var_28]
add     eax, edx
mov     [ebp+0], ax
mov     eax, [esp+40h+var_20+2]
mov     ebx, [esp+40h+var_28+2]
add     eax, ebx
mov     [ebp+2], ax
mov     eax, [esp+40h+var_1C]
mov     ecx, [esp+40h+var_24]
add     eax, ecx
mov     [ebp+4], ax
mov     ecx, 0FFFFh
mov     ebx, offset unk_55068C
mov     edx, ebp
mov     eax, ebp
call    sub_42CE61
test    eax, eax
jnz     loc_4E1FBC
mov     edx, [esp+16h]
sar     edx, 10h
sar     edx, 1
mov     eax, [esp+40h+var_24+2]
sar     eax, 10h
add     eax, edx
mov     word ptr [esp+40h+var_20], ax
mov     edx, [esp+40h+var_28]
sar     edx, 10h
sar     edx, 1
mov     eax, [esp+40h+var_20]
sar     eax, 10h
add     eax, edx
mov     word ptr [esp+40h+var_20+2], ax
mov     edx, [esp+40h+var_28+2]
sar     edx, 10h
sar     edx, 1
mov     eax, [esp+40h+var_20+2]
sar     eax, 10h
add     eax, edx
mov     word ptr [esp+40h+var_1C], ax
mov     ecx, 0FFFFh
mov     ebx, offset unk_55068C
lea     edx, [esp+40h+var_20]
lea     eax, [esp+40h+var_20]
call    sub_42CE61
test    eax, eax
jnz     loc_4E1FBC
mov     dh, [ebp+0Eh]
dec     dh
mov     [ebp+0Eh], dh
jz      loc_4E1FBC
mov     ax, [ebp+0]
sub     eax, [esp+40h+var_30]
add     eax, 64h ; 'd'
cmp     ax, 0C8h
jnb     loc_4E20B2
mov     ax, [ebp+2]
sub     eax, [esp+40h+var_30+2]
add     eax, 64h ; 'd'
cmp     ax, 0C8h
jnb     loc_4E20B2
mov     ax, [ebp+4]
sub     eax, [esp+40h+var_2C]
add     eax, 64h ; 'd'
cmp     ax, 0C8h
jnb     loc_4E20B2
mov     byte ptr [ebp+7], 0
mov     byte ptr [ebp+6], 0
dec     ds:dword_55DCBC
mov     eax, [ebp+10h]
or      byte ptr [eax+4], 1
mov     eax, 1
jmp     loc_4E20B4
sub_4E1F7F endp




sub_4E22FB proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

; FUNCTION CHUNK AT 004E0AEA SIZE 00000006 BYTES

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ecx, edx
mov     ebx, 8
mov     edx, offset dword_564B34
call    sub_4EECEF
mov     edi, offset unk_77E714
mov     esi, ecx
movsd
movsd
movsd
mov     edi, offset unk_55DCC0
mov     esi, offset unk_77E714
movsd
movsd
movsd
xor     ebx, ebx
mov     bl, [ecx+6]
xor     edx, edx
mov     dl, [ecx+5]
xor     eax, eax
mov     al, [ecx+4]
call    sub_4EF154
xor     eax, eax
mov     ax, [ecx+8]
mov     edx, 180h
call    sub_4EF12B
mov     al, [ecx+0Ah]
mov     ds:byte_77EABE, al
cmp     dword ptr [ecx], 0
jz      loc_4E2419
mov     ax, [ecx+0Ah]
cmp     ax, 1
jb      short loc_4E237B
jbe     short loc_4E23BC
cmp     ax, 2
jz      loc_4E23E4
jmp     loc_4E2419

loc_4E237B:
test    ax, ax
jnz     loc_4E2419
test    byte ptr [ecx+7], 80h
jz      short loc_4E23A6
xor     edx, edx
mov     dl, [ecx+4]
shl     edx, 10h
xor     eax, eax
mov     al, [ecx+5]
shl     eax, 8
add     edx, eax
mov     al, [ecx+6]
movzx   ebp, al
add     ebp, edx
jmp     short loc_4E23AB

loc_4E23A6:
mov     ebp, 0FFFFFFh

loc_4E23AB:
mov     [esp+1Ch+var_18], 3F800000h
mov     [esp+1Ch+var_1C], 40E00000h
jmp     short loc_4E2419

loc_4E23BC:
test    byte ptr [ecx+7], 80h
jz      short loc_4E23E0
xor     eax, eax
mov     al, [ecx+4]
mov     edx, eax
shl     edx, 10h
xor     eax, eax
mov     al, [ecx+5]
shl     eax, 8
add     edx, eax
mov     al, [ecx+6]
movzx   ebp, al
add     ebp, edx
jmp     short loc_4E240A

loc_4E23E0:
xor     ebp, ebp
jmp     short loc_4E240A

loc_4E23E4:
test    byte ptr [ecx+7], 80h
jz      short loc_4E2408
xor     eax, eax
mov     al, [ecx+4]
mov     edx, eax
shl     edx, 10h
xor     eax, eax
mov     al, [ecx+5]
shl     eax, 8
add     edx, eax
mov     al, [ecx+6]
movzx   ebp, al
add     ebp, edx
jmp     short loc_4E240A

loc_4E2408:
xor     ebp, ebp

loc_4E240A:
mov     [esp+1Ch+var_18], 3F800000h
mov     [esp+1Ch+var_1C], 40800000h

loc_4E2419:
push    [esp+1Ch+var_1C]
push    [esp+20h+var_18]
mov     edx, [ecx]
mov     ebx, ebp
mov     eax, 1
call    sub_4F387C
mov     al, [ecx+7]
and     al, 7Fh
mov     ds:byte_77EAC0, al
add     esp, 8
jmp     loc_4E0AEA
sub_4E22FB endp ; sp-analysis failed




sub_4E2440 proc near
push    ebx
push    edx
mov     ebx, dword ptr ds:unk_5F84D1
sar     ebx, 18h
xor     edx, edx
mov     ds:dword_55DC6C, edx
mov     ds:dword_55DC70, edx
mov     ds:dword_55DC74, edx
mov     ds:dword_55DC78, edx
jmp     short loc_4E246D

loc_4E2467:
inc     edx
cmp     edx, 10h
jge     short loc_4E24A2

loc_4E246D:
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
test    ds:byte_6DC7FC[eax], 1
jz      short loc_4E2467
mov     al, ds:byte_6DC7FE[eax]
and     eax, 0FFh
sub     eax, 80h
cmp     eax, 10h
jge     short loc_4E2467
inc     byte ptr ds:dword_55DC6C[eax]
jmp     short loc_4E2467

loc_4E24A2:
mov     eax, ebx
shl     eax, 3
cmp     ebx, 6
jnz     short loc_4E24B4
mov     eax, ds:dword_5F8959[eax]
jmp     short loc_4E24BA

loc_4E24B4:
mov     eax, ds:(dword_5F8955+3)[eax]

loc_4E24BA:
sar     eax, 18h
cmp     eax, 3
jle     short loc_4E24C7
mov     eax, 3

loc_4E24C7:
shl     eax, 4
mov     al, ds:byte_550698[ebx+eax]
cmp     al, byte ptr ds:dword_55DC6C[ebx]
jbe     short loc_4E24E1
mov     eax, 1
pop     edx
pop     ebx
retn

loc_4E24E1:
xor     eax, eax
pop     edx
pop     ebx
retn
sub_4E2440 endp




sub_4E24E6 proc near
push    edx
xor     edx, edx
mov     ds:dword_55DCD4, edx
mov     al, byte ptr ds:dword_5F88B1+3
mov     ds:byte_55DCDC, al
mov     al, byte ptr ds:dword_5F88B5
mov     ds:byte_55DCDD, al
mov     al, byte ptr ds:dword_5F88B5+1
mov     ds:byte_55DCDE, al
mov     al, ds:byte_5F84D4
mov     ds:byte_55DCDF, al
pop     edx
retn
sub_4E24E6 endp




sub_4E2519 proc near
push    edx
call    sub_4E4BA7
mov     edx, ds:dword_55DCD0+1
sar     edx, 18h
mov     eax, offset dword_55DCD4
call    ds:funcs_4E252D[edx*4]
pop     edx
retn
sub_4E2519 endp




sub_4E2536 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
call    sub_4A0E35
mov     edx, ds:off_52FD85
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
mov     edx, 20006h
xor     eax, eax
call    sub_4A05F5
call    sub_4E4892
mov     dword ptr [ecx], 1
jmp     def_4E296E      ; jumptable 004E296E default case
sub_4E2536 endp         ; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
jpt_4E25A7 dd offset loc_4E25AE ; jump table for switch statement
dd offset loc_4E25B9
dd offset loc_4E25C4
dd offset loc_4E25CF
dd offset loc_4E25DA
dd offset loc_4E25E5



sub_4E2586 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4E4892
test    byte ptr ds:dword_55BD7C+3, 40h
jz      short loc_4E25F0
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 5          ; switch 6 cases
ja      short def_4E25A7 ; jumptable 004E25A7 default case
jmp     jpt_4E25A7[eax*4] ; switch jump

loc_4E25AE:             ; jumptable 004E25A7 case 0
mov     dword ptr [edx], 2
xor     eax, eax
pop     edx
pop     ebx
retn

loc_4E25B9:             ; jumptable 004E25A7 case 1
mov     dword ptr [edx], 3
xor     eax, eax
pop     edx
pop     ebx
retn

loc_4E25C4:             ; jumptable 004E25A7 case 2
mov     dword ptr [edx], 4
xor     eax, eax
pop     edx
pop     ebx
retn

loc_4E25CF:             ; jumptable 004E25A7 case 3
mov     dword ptr [edx], 5
xor     eax, eax
pop     edx
pop     ebx
retn

loc_4E25DA:             ; jumptable 004E25A7 case 4
mov     dword ptr [edx], 6
xor     eax, eax
pop     edx
pop     ebx
retn

loc_4E25E5:             ; jumptable 004E25A7 case 5
mov     dword ptr [edx], 8
xor     eax, eax
pop     edx
pop     ebx
retn

loc_4E25F0:
mov     bl, byte ptr ds:word_5708DE
test    bl, 1
jz      short loc_4E2606
mov     dword ptr [edx], 7
xor     eax, eax
pop     edx
pop     ebx
retn

loc_4E2606:
test    bl, 8
jz      short def_4E25A7 ; jumptable 004E25A7 default case
mov     dword ptr [edx], 8

def_4E25A7:             ; jumptable 004E25A7 default case
xor     eax, eax
pop     edx
pop     ebx
retn
sub_4E2586 endp

jpt_4E266B dd offset loc_4E2672 ; jump table for switch statement
dd offset loc_4E2690
dd offset loc_4E26B1
dd offset loc_4E2717
dd offset loc_4E2802
dd offset loc_4E28C6
dd offset loc_4E28C6
dd offset loc_4E28ED
jpt_4E2729 dd offset loc_4E2730 ; jump table for switch statement
dd offset loc_4E275E
dd offset loc_4E27DA
dd offset loc_4E27E4
jpt_4E282A dd offset loc_4E2831 ; jump table for switch statement
dd offset loc_4E2852
dd offset loc_4E2873
dd offset loc_4E2899



sub_4E2656 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     al, [eax+1]
cmp     al, 7           ; switch 8 cases
ja      def_4E266B      ; jumptable 004E266B default case
xor     edx, edx
mov     dl, al
jmp     jpt_4E266B[edx*4] ; switch jump

loc_4E2672:             ; jumptable 004E266B case 0
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     eax, 0C1h
call    sub_42BEB2
jmp     loc_4E2756

loc_4E2690:             ; jumptable 004E266B case 1
call    sub_42C353
test    eax, eax
jnz     def_4E266B      ; jumptable 004E266B default case
mov     ebx, 14h
mov     edx, offset unk_767464
mov     eax, 1
jmp     loc_4E2751

loc_4E26B1:             ; jumptable 004E266B case 2
test    byte ptr ds:dword_55BD7C+3, 40h
jz      short loc_4E26F9
mov     al, byte ptr ds:dword_55BD74
mov     [ecx+4], al
cmp     al, 0FFh
jz      short loc_4E26E3
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
or      byte ptr ds:dword_55BD7C+1, 40h
jmp     loc_4E2756

loc_4E26E3:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
jmp     def_4E266B      ; jumptable 004E266B default case

loc_4E26F9:
call    sub_4E3F1F
test    eax, eax
jz      short loc_4E270B
add     byte ptr [ecx+1], 5
jmp     def_4E266B      ; jumptable 004E266B default case

loc_4E270B:
mov     eax, ecx
call    sub_4E3F64
jmp     def_4E266B      ; jumptable 004E266B default case

loc_4E2717:             ; jumptable 004E266B case 3
mov     al, [ecx+4]
sub     al, 40h ; '@'   ; switch 4 cases
cmp     al, 3
ja      def_4E2729      ; jumptable 004E2729 default case
and     eax, 0FFh
jmp     jpt_4E2729[eax*4] ; switch jump

loc_4E2730:             ; jumptable 004E2729 case 64
call    sub_436973
test    eax, eax
jnz     short loc_4E2745
mov     ebx, 58h ; 'X'
mov     edx, offset unk_767464
jmp     short loc_4E27A4

loc_4E2745:
mov     ebx, 50h ; 'P'

loc_4E274A:
mov     edx, offset unk_767464
xor     eax, eax

loc_4E2751:
call    sub_4A0CDD

loc_4E2756:
inc     byte ptr [ecx+1]
jmp     def_4E266B      ; jumptable 004E266B default case

loc_4E275E:             ; jumptable 004E2729 case 65
mov     edx, dword ptr ds:unk_5F84D3
sar     edx, 18h
mov     eax, edx
xor     ebx, ebx
mov     bx, ds:word_5509F6[edx*2]
mov     esi, ebx
shl     esi, 2
add     esi, ebx
shl     esi, 2
shl     eax, 3
add     eax, offset byte_5F8364
mov     ebx, [eax+5F2h]
sar     ebx, 18h
cmp     ds:byte_5506DC[esi+ebx], 0FFh
jnz     short loc_4E27B2
mov     ebx, 3Bh ; ';'

loc_4E279D:
mov     edx, offset unk_767464
xor     eax, eax

loc_4E27A4:
call    sub_4A0CDD

def_4E282A:             ; jumptable 004E282A default case
add     byte ptr [ecx+1], 2
jmp     def_4E266B      ; jumptable 004E266B default case

loc_4E27B2:
mov     ebx, [eax+5F8h]
sar     ebx, 10h
mov     eax, offset byte_5F8364
call    sub_4EE60F
cmp     eax, ebx
jnz     short loc_4E27D0
mov     ebx, 3Ah ; ':'
jmp     short loc_4E279D

loc_4E27D0:
mov     ebx, 52h ; 'R'
jmp     loc_4E274A

loc_4E27DA:             ; jumptable 004E2729 case 66
mov     ebx, 54h ; 'T'
jmp     loc_4E274A

loc_4E27E4:             ; jumptable 004E2729 case 67
mov     ebx, 56h ; 'V'
jmp     loc_4E274A

def_4E2729:             ; jumptable 004E2729 default case
cmp     byte ptr [ecx+4], 58h ; 'X'
jnb     short loc_4E27FB
mov     ebx, 5Ah ; 'Z'
jmp     short loc_4E279D

loc_4E27FB:
mov     ebx, 5Bh ; '['
jmp     short loc_4E279D

loc_4E2802:             ; jumptable 004E266B case 4
test    byte ptr ds:dword_55BD7C+3, 40h
jz      def_4E266B      ; jumptable 004E266B default case
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     loc_4E28BF
mov     al, [ecx+4]
sub     al, 40h ; '@'   ; switch 4 cases
cmp     al, 3
ja      short def_4E282A ; jumptable 004E282A default case
and     eax, 0FFh
jmp     jpt_4E282A[eax*4] ; switch jump

loc_4E2831:             ; jumptable 004E282A case 64
mov     ebx, 51h ; 'Q'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
call    sub_4369B9
mov     word ptr [ecx+0Ch], 540h
jmp     def_4E282A      ; jumptable 004E282A default case

loc_4E2852:             ; jumptable 004E282A case 65
mov     ebx, 53h ; 'S'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
call    sub_4EE5BE
mov     word ptr [ecx+0Ch], 541h
jmp     def_4E282A      ; jumptable 004E282A default case

loc_4E2873:             ; jumptable 004E282A case 66
mov     ebx, 55h ; 'U'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
mov     eax, 708h
call    sub_4377B1
mov     word ptr [ecx+0Ch], 542h
jmp     def_4E282A      ; jumptable 004E282A default case

loc_4E2899:             ; jumptable 004E282A case 67
mov     ebx, 57h ; 'W'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
mov     eax, 384h
call    sub_4377AA
mov     word ptr [ecx+0Ch], 543h
jmp     def_4E282A      ; jumptable 004E282A default case

loc_4E28BF:
inc     al
mov     [ecx+1], al
jmp     short def_4E266B ; jumptable 004E266B default case

loc_4E28C6:             ; jumptable 004E266B cases 5,6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4E266B ; jumptable 004E266B default case
cmp     byte ptr [ecx+1], 6
jnz     short loc_4E28E0
xor     eax, eax
mov     ax, [ecx+0Ch]
call    sub_47EA91

loc_4E28E0:
and     byte ptr ds:dword_55BD7C+1, 0BFh
mov     byte ptr [ecx+1], 2
jmp     short def_4E266B ; jumptable 004E266B default case

loc_4E28ED:             ; jumptable 004E266B case 7
call    sub_42C353
test    eax, eax
jnz     short def_4E266B ; jumptable 004E266B default case
mov     [ecx], eax

def_4E266B:             ; jumptable 004E266B default case
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4E2656 endp

db 8Dh, 40h, 0
jpt_4E296E dd offset loc_4E2975 ; jump table for switch statement
dd offset loc_4E2993
dd offset loc_4E29BE
dd offset loc_4E29FA
jpt_4E2A06 dd offset loc_4E2A0D ; jump table for switch statement
dd offset loc_4E2A16
dd offset loc_4E2A16
dd offset loc_4E2A16
dd offset loc_4E2A16
dd offset loc_4E2A1F
dd offset loc_4E2A2C
dd offset loc_4E2A2C
dd offset loc_4E2A2C
dd offset loc_4E2A32
dd offset loc_4E2A32
dd offset loc_4E2A32
dd offset loc_4E2A38
dd offset loc_4E2A32
dd offset loc_4E2A41
dd offset loc_4E2A41
dd offset loc_4E2A41
dd offset loc_4E2A41



sub_4E295A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+1]
cmp     al, 3           ; switch 4 cases
ja      def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
xor     edx, edx
mov     dl, al
jmp     jpt_4E296E[edx*4] ; switch jump

loc_4E2975:             ; jumptable 004E296E case 0
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     eax, 0C1h
call    sub_42BEB2

loc_4E298E:
inc     byte ptr [ecx+1]
jmp     short def_4E296E ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E2993:             ; jumptable 004E296E case 1
call    sub_42C353
test    eax, eax
jnz     short def_4E296E ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
mov     ebx, 19h
mov     edx, offset unk_767464
mov     eax, 1
call    sub_4A0CDD
mov     edx, 20002h
xor     eax, eax
call    sub_4A05F5
jmp     short loc_4E298E

loc_4E29BE:             ; jumptable 004E296E case 2
test    byte ptr ds:dword_55BD7C+3, 40h
jnz     short loc_4E29E5
call    sub_4E3F1F
test    eax, eax
jz      short loc_4E29DC

loc_4E29D0:
mov     dword ptr [ecx], 0

def_4E296E:             ; jumptable 004E296E default case
xor     eax, eax        ; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4E29DC:
mov     eax, ecx
call    sub_4E3F64
jmp     short def_4E296E ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E29E5:
inc     al
mov     [ecx+1], al
mov     eax, ds:dword_55BD78
and     eax, 0FF0000h
shr     eax, 10h
mov     [ecx+4], al

loc_4E29FA:             ; jumptable 004E296E case 3
mov     al, [ecx+4]
cmp     al, 11h         ; switch 18 cases
ja      short def_4E296E ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
and     eax, 0FFh
jmp     jpt_4E2A06[eax*4] ; switch jump

loc_4E2A0D:             ; jumptable 004E2A06 case 0
mov     eax, ecx
call    sub_4E2A4A
jmp     short def_4E296E ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E2A16:             ; jumptable 004E2A06 cases 1-4
mov     eax, ecx
call    sub_4E2BFA
jmp     short def_4E296E ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E2A1F:             ; jumptable 004E2A06 case 5
mov     byte ptr [ecx+5], 45h ; 'E'

loc_4E2A23:
mov     eax, ecx
call    sub_4E2E94
jmp     short def_4E296E ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E2A2C:             ; jumptable 004E2A06 cases 6-8
mov     byte ptr [ecx+5], 46h ; 'F'
jmp     short loc_4E2A23

loc_4E2A32:             ; jumptable 004E2A06 cases 9-11,13
mov     byte ptr [ecx+5], 47h ; 'G'
jmp     short loc_4E2A23

loc_4E2A38:             ; jumptable 004E2A06 case 12
mov     eax, ecx
call    sub_4E2F2E
jmp     short def_4E296E ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E2A41:             ; jumptable 004E2A06 cases 14-17
mov     eax, ecx
call    sub_4E31F9
jmp     short def_4E296E ; jumptable 004E296E default case
sub_4E295A endp         ; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3



sub_4E2A4A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+2]
cmp     al, 1
jb      short loc_4E2A68
jbe     loc_4E2B09
cmp     al, 2
jz      loc_4E2BC6
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2A68:
test    al, al
jnz     loc_4E2BD6
mov     eax, 524h
call    sub_47E888
test    eax, eax
jnz     short loc_4E2A91
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
jmp     short loc_4E2AC8

loc_4E2A91:
mov     edx, dword ptr ds:unk_5F83D0
sar     edx, 10h
mov     eax, ds:dword_5F8412
sar     eax, 10h
cmp     edx, eax
jnz     short loc_4E2AD0
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
mov     ebx, 40h ; '@'

loc_4E2ABC:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD

loc_4E2AC8:
add     byte ptr [ecx+2], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2AD0:
cmp     ds:byte_77E800, 0
jnz     short loc_4E2AF1
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
mov     ebx, 41h ; 'A'
jmp     short loc_4E2ABC

loc_4E2AF1:
mov     ebx, 42h ; 'B'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD

loc_4E2B02:
inc     byte ptr [ecx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2B09:
test    byte ptr ds:dword_55BD7C+3, 40h
jz      loc_4E2BD6
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4E2B02
mov     ax, ds:word_5F83D2
xor     ah, ah
and     al, 0F0h
cwde
mov     edx, ds:dword_5F8412
sar     edx, 10h
sub     edx, eax
sar     edx, 4
xor     eax, eax
mov     al, ds:byte_77E800
cmp     edx, eax
jle     short loc_4E2B7D
mov     ebx, 44h ; 'D'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
mov     dx, ds:word_5F83D2
xor     dh, dh
and     dl, 0F0h
xor     eax, eax
mov     al, ds:byte_77E800
shl     eax, 4
add     edx, eax
mov     ds:word_5F83D2, dx
xor     bl, bl
mov     ds:byte_77E800, bl
jmp     short loc_4E2B02

loc_4E2B7D:
mov     ebx, 43h ; 'C'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
mov     ax, ds:word_5F83D2
xor     ah, ah
and     al, 0F0h
cwde
mov     edx, ds:dword_5F8412
sar     edx, 10h
sub     edx, eax
sar     edx, 4
xor     eax, eax
mov     al, ds:byte_77E800
sub     eax, edx
mov     ds:byte_77E800, al
mov     ax, word ptr ds:dword_5F8412+2
mov     ds:word_5F83D2, ax
jmp     loc_4E2B02

loc_4E2BC6:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4E2BD6
mov     [ecx+1], al
mov     byte ptr [ecx+2], 0

loc_4E2BD6:
pop     edx
pop     ecx
pop     ebx
retn
sub_4E2A4A endp

jpt_4E2C54 dd offset loc_4E2C5B ; jump table for switch statement
dd offset loc_4E2C72
dd offset loc_4E2C89
dd offset loc_4E2CA0
jpt_4E2D05 dd offset loc_4E2D0C ; jump table for switch statement
dd offset loc_4E2D36
dd offset loc_4E2D63
dd offset loc_4E2D90



sub_4E2BFA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+2]
cmp     al, 1
jb      short loc_4E2C18
jbe     loc_4E2CE1
cmp     al, 2
jz      loc_4E2DF7
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2C18:
test    al, al
jnz     loc_4E2E07
xor     eax, eax
mov     al, [ecx+4]
mov     al, ds:byte_5509E4[eax]
and     eax, 0FFh
add     eax, 520h
call    sub_47E888
test    eax, eax
jz      loc_4E2CC8
mov     al, [ecx+4]
dec     al              ; switch 4 cases
cmp     al, 3
ja      def_4E2C54      ; jumptable 004E2C54 default case
; jumptable 004E2D05 default case
and     eax, 0FFh
jmp     jpt_4E2C54[eax*4] ; switch jump

loc_4E2C5B:             ; jumptable 004E2C54 case 1
cmp     byte ptr ds:dword_5F84CB+3, 0
jz      short loc_4E2C6B
mov     ebx, 33h ; '3'
jmp     short loc_4E2CB5

loc_4E2C6B:
mov     ebx, 32h ; '2'
jmp     short loc_4E2CB5

loc_4E2C72:             ; jumptable 004E2C54 case 2
test    ds:byte_5F84CF, 2
jz      short loc_4E2C82
mov     ebx, 39h ; '9'
jmp     short loc_4E2CB5

loc_4E2C82:
mov     ebx, 38h ; '8'
jmp     short loc_4E2CB5

loc_4E2C89:             ; jumptable 004E2C54 case 3
test    ds:byte_5F84CF, 1
jz      short loc_4E2C99
mov     ebx, 35h ; '5'
jmp     short loc_4E2CB5

loc_4E2C99:
mov     ebx, 34h ; '4'
jmp     short loc_4E2CB5

loc_4E2CA0:             ; jumptable 004E2C54 case 4
cmp     ds:byte_5F84D0, 0
jz      short loc_4E2CB0
mov     ebx, 49h ; 'I'
jmp     short loc_4E2CB5

loc_4E2CB0:
mov     ebx, 48h ; 'H'

loc_4E2CB5:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD

def_4E2C54:             ; jumptable 004E2C54 default case
inc     byte ptr [ecx+2] ; jumptable 004E2D05 default case
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2CC8:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
add     byte ptr [ecx+2], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2CE1:
test    byte ptr ds:dword_55BD7C+3, 40h
jz      loc_4E2E07
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short def_4E2C54 ; jumptable 004E2C54 default case
; jumptable 004E2D05 default case
mov     al, [ecx+4]
dec     al              ; switch 4 cases
cmp     al, 3
ja      short def_4E2C54 ; jumptable 004E2C54 default case
; jumptable 004E2D05 default case
and     eax, 0FFh
jmp     jpt_4E2D05[eax*4] ; switch jump

loc_4E2D0C:             ; jumptable 004E2D05 case 1
cmp     byte ptr ds:dword_5F84CB+3, 0
jz      short loc_4E2D1C
mov     ebx, 3Dh ; '='
jmp     short loc_4E2D21

loc_4E2D1C:
mov     ebx, 3Ch ; '<'

loc_4E2D21:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
xor     byte ptr ds:dword_5F84CB+3, 1
jmp     short def_4E2C54 ; jumptable 004E2C54 default case
; jumptable 004E2D05 default case

loc_4E2D36:             ; jumptable 004E2D05 case 2
test    ds:byte_5F84CF, 2
jz      short loc_4E2D46
mov     ebx, 3Fh ; '?'
jmp     short loc_4E2D4B

loc_4E2D46:
mov     ebx, 3Eh ; '>'

loc_4E2D4B:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
xor     ds:byte_5F84CF, 2
jmp     def_4E2C54      ; jumptable 004E2C54 default case
; jumptable 004E2D05 default case

loc_4E2D63:             ; jumptable 004E2D05 case 3
test    ds:byte_5F84CF, 1
jz      short loc_4E2D73
mov     ebx, 37h ; '7'
jmp     short loc_4E2D78

loc_4E2D73:
mov     ebx, 36h ; '6'

loc_4E2D78:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
xor     ds:byte_5F84CF, 1
jmp     def_4E2C54      ; jumptable 004E2C54 default case
; jumptable 004E2D05 default case

loc_4E2D90:             ; jumptable 004E2D05 case 4
cmp     ds:byte_5F84D0, 0
jz      short loc_4E2DB7
mov     ebx, 4Bh ; 'K'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
xor     bh, bh
mov     ds:byte_5F84D0, bh
jmp     def_4E2C54      ; jumptable 004E2C54 default case
; jumptable 004E2D05 default case

loc_4E2DB7:
mov     ebx, 4Ah ; 'J'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
mov     eax, 53Ah
call    sub_47E888
mov     edx, eax
mov     eax, 53Bh
call    sub_47E888
add     dl, al
mov     eax, 53Ch
call    sub_47E888
add     dl, al
mov     ds:byte_5F84D0, dl
jmp     def_4E2C54      ; jumptable 004E2C54 default case
; jumptable 004E2D05 default case

loc_4E2DF7:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4E2E07
mov     [ecx+1], al
mov     byte ptr [ecx+2], 0

loc_4E2E07:
pop     edx
pop     ecx
pop     ebx
retn
sub_4E2BFA endp




sub_4E2E0B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+2]
test    al, al
jbe     short loc_4E2E1F
cmp     al, 1
jz      short loc_4E2E7F
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2E1F:
xor     eax, eax
mov     al, [ecx+4]
mov     al, ds:byte_5509E4[eax]
and     eax, 0FFh
add     eax, 520h
call    sub_47E888
test    eax, eax
jz      short loc_4E2E67
test    ds:byte_5F84CF, 2
jz      short loc_4E2E4D
mov     ebx, 3Fh ; '?'
jmp     short loc_4E2E52

loc_4E2E4D:
mov     ebx, 3Eh ; '>'

loc_4E2E52:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
xor     ds:byte_5F84CF, 2
jmp     short loc_4E2E78

loc_4E2E67:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4

loc_4E2E78:
inc     byte ptr [ecx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2E7F:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4E2E90
mov     byte ptr [ecx+1], 2
mov     byte ptr [ecx+2], 0

loc_4E2E90:
pop     edx
pop     ecx
pop     ebx
retn
sub_4E2E0B endp




sub_4E2E94 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+2]
test    al, al
jbe     short loc_4E2EA8
cmp     al, 1
jz      short loc_4E2F02
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2EA8:
xor     eax, eax
mov     al, [ecx+4]
mov     al, ds:byte_5509E4[eax]
and     eax, 0FFh
add     eax, 520h
call    sub_47E888
test    eax, eax
jz      short loc_4E2EEA
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
xor     ebx, ebx
mov     bl, [ecx+5]
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
jmp     short loc_4E2EFB

loc_4E2EEA:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4

loc_4E2EFB:
inc     byte ptr [ecx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2F02:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4E2F13
mov     byte ptr [ecx+1], 2
mov     byte ptr [ecx+2], 0

loc_4E2F13:
pop     edx
pop     ecx
pop     ebx
retn
sub_4E2E94 endp

db 8Dh, 40h, 0
jpt_4E2F43 dd offset loc_4E2F4A ; jump table for switch statement
dd offset loc_4E2FAE
dd offset loc_4E2FF5
dd offset loc_4E3000
dd offset loc_4E303B



sub_4E2F2E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+2]
cmp     al, 4           ; switch 5 cases
ja      def_4E2F43      ; jumptable 004E2F43 default case
and     eax, 0FFh
jmp     jpt_4E2F43[eax*4] ; switch jump

loc_4E2F4A:             ; jumptable 004E2F43 case 0
xor     eax, eax
mov     al, [ecx+4]
mov     al, ds:byte_5509E4[eax]
and     eax, 0FFh
add     eax, 520h
call    sub_47E888
test    eax, eax
jz      short loc_4E2F91
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
mov     ebx, 4Ch ; 'L'

loc_4E2F7E:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD

loc_4E2F8A:
inc     byte ptr [ecx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2F91:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4

loc_4E2FA2:
mov     byte ptr [ecx+1], 2
mov     byte ptr [ecx+2], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2FAE:             ; jumptable 004E2F43 case 1
mov     eax, offset dword_77E784
call    sub_4E3072
cmp     eax, 1
jb      short loc_4E2FC8
jbe     short loc_4E2FE7
cmp     eax, 2
jz      short loc_4E2FEE
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2FC8:
test    eax, eax
jnz     def_4E2F43      ; jumptable 004E2F43 default case
mov     ebx, 4Dh ; 'M'
mov     edx, offset unk_767464
call    sub_4A0CDD
add     byte ptr [ecx+2], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2FE7:
mov     ebx, 4Eh ; 'N'
jmp     short loc_4E2F7E

loc_4E2FEE:
mov     ebx, 4Fh ; 'O'
jmp     short loc_4E2F7E

loc_4E2FF5:             ; jumptable 004E2F43 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4E2F43 ; jumptable 004E2F43 default case
jmp     short loc_4E2FA2

loc_4E3000:             ; jumptable 004E2F43 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4E2F43 ; jumptable 004E2F43 default case
call    sub_4A7DD4
mov     al, byte ptr ds:word_77E7FC+1
mov     ds:byte_77E7D4, al
mov     al, ds:byte_77E7FE
mov     byte ptr ds:dword_77E7D5, al
mov     eax, 17h
call    sub_49E0D7
mov     eax, 10h
call    sub_4D9040
jmp     loc_4E2F8A

loc_4E303B:             ; jumptable 004E2F43 case 4
call    sub_4A03B0
call    sub_4D8E21
call    sub_4D8ED6
or      ds:byte_77E6BD, 8
call    sub_4D87EE
call    sub_4DBAEF
call    sub_4DBBD8
mov     byte ptr ds:dword_77E784, 5
mov     byte ptr ds:dword_77E784+1, 2

def_4E2F43:             ; jumptable 004E2F43 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4E2F2E endp




sub_4E3072 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+78h], 0
jnz     short loc_4E3086

loc_4E307D:
mov     eax, 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4E3086:
mov     al, [edx+50h]
cmp     al, 0Ch
jb      short loc_4E30C1
jbe     loc_4E3173
cmp     al, 12h
jb      short loc_4E30B4
jbe     loc_4E31AC
cmp     al, 19h
jb      loc_4E31F0
jbe     loc_4E31C7
cmp     al, 1Bh
jz      short loc_4E30E0
jmp     loc_4E31F0

loc_4E30B4:
cmp     al, 0Fh
jz      loc_4E3199
jmp     loc_4E31F0

loc_4E30C1:
cmp     al, 5
jb      short loc_4E30D8
jbe     short loc_4E3112
cmp     al, 6
jbe     short loc_4E312A
cmp     al, 8
jz      loc_4E314A
jmp     loc_4E31F0

loc_4E30D8:
cmp     al, 3
jnz     loc_4E31F0

loc_4E30E0:
mov     eax, 318h
call    sub_47E888
test    eax, eax
jz      short loc_4E307D
cmp     byte ptr [edx+51h], 2
jg      short loc_4E307D
mov     eax, 55h ; 'U'
call    sub_47E888
test    eax, eax
jz      short loc_4E3108
mov     byte ptr [edx+79h], 1Bh
jmp     short loc_4E310C

loc_4E3108:
mov     byte ptr [edx+79h], 3

loc_4E310C:
mov     byte ptr [edx+7Ah], 1
jmp     short loc_4E3144

loc_4E3112:
mov     eax, 319h
call    sub_47E888
test    eax, eax
jz      loc_4E307D
mov     byte ptr [edx+79h], 5
jmp     short loc_4E3140

loc_4E312A:
mov     eax, 31Ah
call    sub_47E888
test    eax, eax
jz      loc_4E307D

loc_4E313C:
mov     byte ptr [edx+79h], 6

loc_4E3140:
mov     byte ptr [edx+7Ah], 0

loc_4E3144:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn

loc_4E314A:
mov     eax, 31Bh
call    sub_47E888
test    eax, eax
jz      loc_4E307D
mov     cl, [edx+51h]
cmp     cl, 2
jle     short loc_4E316D
cmp     cl, 5
jnz     loc_4E307D

loc_4E316D:
mov     byte ptr [edx+79h], 8
jmp     short loc_4E3140

loc_4E3173:
mov     eax, 31Ch
call    sub_47E888
test    eax, eax
jz      loc_4E307D
mov     bh, [edx+51h]
test    bh, bh
jnz     loc_4E307D
mov     byte ptr [edx+79h], 0Ch
mov     [edx+7Ah], bh
jmp     short loc_4E3144

loc_4E3199:
mov     eax, 31Ah
call    sub_47E888
test    eax, eax
jnz     short loc_4E313C
jmp     loc_4E307D

loc_4E31AC:
mov     eax, 31Fh
call    sub_47E888
test    eax, eax
jz      loc_4E307D
mov     byte ptr [edx+79h], 12h
jmp     loc_4E3140

loc_4E31C7:
mov     eax, 31Dh
call    sub_47E888
test    eax, eax
jz      loc_4E307D
cmp     byte ptr [edx+51h], 1
jle     loc_4E307D
mov     byte ptr [edx+79h], 19h
mov     byte ptr [edx+7Ah], 3
jmp     loc_4E3144

loc_4E31F0:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn
sub_4E3072 endp




sub_4E31F9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+2]
test    al, al
jbe     short loc_4E3211
cmp     al, 1
jz      loc_4E32A3
pop     edx
pop     ecx
pop     ebx
retn

loc_4E3211:
xor     eax, eax
mov     al, [ecx+4]
mov     al, ds:byte_5509E4[eax]
and     eax, 0FFh
add     eax, 520h
call    sub_47E888
test    eax, eax
jnz     short loc_4E3267
mov     al, [ecx+4]
mov     al, ds:byte_5509E4[eax]
and     eax, 0FFh
add     eax, 521h
call    sub_47E888
test    eax, eax
jnz     short loc_4E3267
mov     al, [ecx+4]
mov     al, ds:byte_5509E4[eax]
and     eax, 0FFh
add     eax, 522h
call    sub_47E888
test    eax, eax
jz      short loc_4E328B

loc_4E3267:
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
mov     ebx, 47h ; 'G'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
jmp     short loc_4E329C

loc_4E328B:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4

loc_4E329C:
inc     byte ptr [ecx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_4E32A3:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4E32B4
mov     byte ptr [ecx+1], 2
mov     byte ptr [ecx+2], 0

loc_4E32B4:
pop     edx
pop     ecx
pop     ebx
retn
sub_4E31F9 endp

db 8Bh, 0C0h
jpt_4E32DF dd offset loc_4E32E6 ; jump table for switch statement
dd offset loc_4E3307
dd offset loc_4E3339
dd offset loc_4E3397



sub_4E32CA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+1]
cmp     al, 3           ; switch 4 cases
ja      def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
and     eax, 0FFh
jmp     jpt_4E32DF[eax*4] ; switch jump

loc_4E32E6:             ; jumptable 004E32DF case 0
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     eax, 0C2h

loc_4E32FA:
call    sub_42BEB2

loc_4E32FF:
inc     byte ptr [ecx+1]
jmp     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E3307:             ; jumptable 004E32DF case 1
call    sub_42C353
test    eax, eax
jnz     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
mov     ebx, 1Dh
mov     edx, offset unk_767464
call    sub_4A0CDD
mov     edx, 20007h
mov     eax, 2
call    sub_4A05F5
call    sub_4E36DB
jmp     short loc_4E32FF

loc_4E3339:             ; jumptable 004E32DF case 2
mov     ah, byte ptr ds:dword_55BD7C+3
test    ah, 40h
jz      short loc_4E335F
test    ah, 8
jz      short loc_4E335F
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 2
jnz     short loc_4E335F
mov     eax, 0C4h
jmp     short loc_4E32FA

loc_4E335F:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4E3386
mov     bl, byte ptr ds:dword_55BD74+2
test    bl, 1
jz      short loc_4E337A
test    bl, 4
jz      short loc_4E3386
jmp     short loc_4E337F

loc_4E337A:
test    bl, 8
jz      short loc_4E3386

loc_4E337F:
mov     eax, ecx
call    sub_4E33AB

loc_4E3386:
call    sub_4E36DB

loc_4E338B:
mov     eax, ecx
call    sub_4E3F64
jmp     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E3397:             ; jumptable 004E32DF case 3
call    sub_42C353
test    eax, eax
jnz     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
mov     [ecx], eax
jmp     def_4E296E      ; jumptable 004E296E default case
sub_4E32CA endp         ; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3



sub_4E33AB proc near
push    edx
mov     byte ptr [eax+6], 3
mov     dl, [eax+12h]
mov     [eax+10h], dl
mov     dl, [eax+15h]
mov     [eax+13h], dl
mov     dl, [eax+1Ah]
mov     [eax+18h], dl
mov     dl, [eax+1Dh]
mov     [eax+1Bh], dl
mov     dl, [eax+22h]
mov     [eax+20h], dl
mov     dl, [eax+25h]
mov     [eax+23h], dl
mov     dl, [eax+2Ah]
mov     [eax+28h], dl
mov     dl, [eax+2Dh]
mov     [eax+2Bh], dl
mov     dl, [eax+32h]
mov     [eax+30h], dl
mov     dl, [eax+35h]
mov     [eax+33h], dl
pop     edx
retn
sub_4E33AB endp




sub_4E33EE proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
cmp     byte ptr [eax+6], 0
jz      loc_4E3546
xor     eax, eax
mov     al, [esi+11h]
xor     ecx, ecx
mov     cl, [esi+10h]
mov     ebx, eax
sub     ebx, ecx
mov     ecx, [esi+3]
sar     ecx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+12h], al
xor     eax, eax
mov     al, [esi+14h]
xor     ecx, ecx
mov     cl, [esi+13h]
mov     ebx, eax
sub     ebx, ecx
mov     ecx, [esi+3]
sar     ecx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+15h], al
xor     eax, eax
mov     al, [esi+19h]
xor     ebx, ebx
mov     bl, [esi+18h]
mov     ecx, eax
sub     ecx, ebx
mov     ebx, ecx
mov     ecx, [esi+3]
sar     ecx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+1Ah], al
xor     eax, eax
mov     al, [esi+1Ch]
xor     ebx, ebx
mov     bl, [esi+1Bh]
mov     ecx, eax
sub     ecx, ebx
mov     ebx, ecx
mov     ecx, [esi+3]
sar     ecx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+1Dh], al
xor     eax, eax
mov     al, [esi+21h]
xor     ecx, ecx
mov     cl, [esi+20h]
mov     ebx, eax
sub     ebx, ecx
mov     ecx, ebx
mov     ebx, [esi+3]
sar     ebx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+22h], al
xor     eax, eax
mov     al, [esi+24h]
xor     ecx, ecx
mov     cl, [esi+23h]
mov     ebx, eax
sub     ebx, ecx
mov     ecx, ebx
mov     ebx, [esi+3]
sar     ebx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+25h], al
xor     eax, eax
mov     al, [esi+29h]
xor     ecx, ecx
mov     cl, [esi+28h]
mov     ebx, eax
sub     ebx, ecx
mov     ecx, [esi+3]
sar     ecx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+2Ah], al
xor     eax, eax
mov     al, [esi+2Ch]
xor     ebx, ebx
mov     bl, [esi+2Bh]
mov     ecx, eax
sub     ecx, ebx
mov     ebx, ecx
mov     ecx, [esi+3]
sar     ecx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+2Dh], al
xor     eax, eax
mov     al, [esi+31h]
xor     ecx, ecx
mov     cl, [esi+30h]
mov     ebx, eax
sub     ebx, ecx
mov     ecx, ebx
mov     ebx, [esi+3]
sar     ebx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+32h], al
xor     eax, eax
mov     al, [esi+34h]
xor     ecx, ecx
mov     cl, [esi+33h]
mov     ebx, eax
sub     ebx, ecx
mov     ecx, ebx
mov     ebx, [esi+3]
sar     ebx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+35h], al
dec     byte ptr [esi+6]
jmp     short loc_4E3582

loc_4E3546:
mov     al, [esi+11h]
mov     [esi+12h], al
mov     al, [esi+14h]
mov     [esi+15h], al
mov     al, [esi+19h]
mov     [esi+1Ah], al
mov     al, [esi+1Ch]
mov     [esi+1Dh], al
mov     al, [esi+21h]
mov     [esi+22h], al
mov     al, [esi+24h]
mov     [esi+25h], al
mov     al, [esi+29h]
mov     [esi+2Ah], al
mov     al, [esi+2Ch]
mov     [esi+2Dh], al
mov     al, [esi+31h]
mov     [esi+32h], al
mov     al, [esi+34h]
mov     [esi+35h], al

loc_4E3582:
test    edx, edx
jnz     loc_4E364A
xor     ebx, ebx
mov     bl, [esi+12h]
xor     ecx, ecx
mov     edx, 28h ; '('
mov     eax, 0CBh
call    sub_4E45AF
xor     ebx, ebx
mov     bl, [esi+15h]
mov     ecx, 1
mov     edx, 28h ; '('
mov     eax, 0CBh
call    sub_4E45AF
xor     ebx, ebx
mov     bl, [esi+1Ah]
xor     ecx, ecx
mov     edx, 32h ; '2'
mov     eax, 0CBh
call    sub_4E45AF
xor     ebx, ebx
mov     bl, [esi+1Dh]
mov     ecx, 1
mov     edx, 32h ; '2'
mov     eax, 0CBh
call    sub_4E45AF
xor     ebx, ebx
mov     bl, [esi+22h]
xor     ecx, ecx
mov     edx, 3Ch ; '<'
mov     eax, 0CBh
call    sub_4E45AF
xor     ebx, ebx
mov     bl, [esi+25h]
mov     ecx, 1
mov     edx, 3Ch ; '<'
mov     eax, 0CBh
call    sub_4E45AF
xor     ebx, ebx
mov     bl, [esi+2Ah]
xor     ecx, ecx
mov     edx, 46h ; 'F'
mov     eax, 0CBh
call    sub_4E45AF
xor     ebx, ebx
mov     bl, [esi+2Dh]
mov     ecx, 1
mov     edx, 46h ; 'F'
mov     eax, 0CBh
call    sub_4E45AF
pop     esi
pop     ecx
pop     ebx
retn

loc_4E364A:
xor     ecx, ecx
mov     cl, [esi+16h]
xor     ebx, ebx
mov     bl, [esi+12h]
mov     edx, 9Eh
mov     eax, 0A4h
call    sub_4E475E
xor     ecx, ecx
mov     cl, [esi+1Eh]
xor     ebx, ebx
mov     bl, [esi+1Ah]
mov     edx, 0A8h
mov     eax, 0A4h
call    sub_4E475E
xor     ecx, ecx
mov     cl, [esi+26h]
xor     ebx, ebx
mov     bl, [esi+22h]
mov     edx, 0B2h
mov     eax, 0A4h
call    sub_4E475E
xor     ecx, ecx
mov     cl, [esi+2Eh]
xor     ebx, ebx
mov     bl, [esi+2Ah]
mov     edx, 0BCh
mov     eax, 0A4h
call    sub_4E475E
xor     ecx, ecx
mov     cl, [esi+36h]
xor     ebx, ebx
mov     bl, [esi+32h]
mov     edx, 0C6h
mov     eax, 0A4h
call    sub_4E475E
mov     bh, [esi+5]
test    bh, bh
jz      short loc_4E36D7
xor     eax, eax
mov     al, bh
call    sub_4E4A62

loc_4E36D7:
pop     esi
pop     ecx
pop     ebx
retn
sub_4E33EE endp




sub_4E36DB proc near
push    edx
mov     eax, offset dword_55DCD4
call    sub_4E4250
xor     edx, edx
mov     eax, offset dword_55DCD4
call    sub_4E33EE
pop     edx
retn
sub_4E36DB endp

db 8Bh, 0C0h
jpt_4E3737 dd offset loc_4E373E ; jump table for switch statement
dd offset loc_4E3763
dd offset loc_4E380A
dd offset loc_4E3929
dd offset loc_4E3A86
dd offset loc_4E3AA5
dd offset loc_4E3AB4



sub_4E3712 proc near

; FUNCTION CHUNK AT 004E3DDC SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     edi, edi
mov     di, ds:word_5708DE
mov     esi, offset byte_5F8364
mov     al, [eax+1]
cmp     al, 6           ; switch 7 cases
ja      def_4E3737      ; jumptable 004E3737 default case
and     eax, 0FFh
jmp     jpt_4E3737[eax*4] ; switch jump

loc_4E373E:             ; jumptable 004E3737 case 0
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     eax, 0C2h
call    sub_42BEB2
mov     byte ptr [ecx+5], 0

loc_4E375B:
inc     byte ptr [ecx+1]
jmp     def_4E3737      ; jumptable 004E3737 default case

loc_4E3763:             ; jumptable 004E3737 case 1
call    sub_42C353
test    eax, eax
jnz     def_4E3737      ; jumptable 004E3737 default case
cmp     ds:byte_5F84D4, 0
jz      short loc_4E3780
mov     ebx, 5Ch ; '\'
jmp     short loc_4E3785

loc_4E3780:
mov     ebx, 5Dh ; ']'

loc_4E3785:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
test    byte ptr ds:dword_55BD7C+3, 4
jnz     short loc_4E37F9
mov     ebx, 2Fh ; '/'
mov     edx, offset unk_767464
mov     eax, 1
call    sub_4A0CDD
cmp     byte ptr [esi+172h], 0
jnz     short loc_4E37C3
mov     edx, 2001Ch
xor     eax, eax
call    sub_4A05F5

loc_4E37C3:
mov     edx, 20009h
mov     eax, 1
call    sub_4A05F5
mov     edx, 20017h
mov     eax, 2
call    sub_4A05F5
mov     edx, 20008h
mov     eax, 3
call    sub_4A05F5
xor     edx, edx
mov     eax, ecx
call    sub_4E4444

loc_4E37F9:
mov     edx, 1
mov     eax, ecx
call    sub_4E33EE
jmp     loc_4E375B

loc_4E380A:             ; jumptable 004E3737 case 2
test    byte ptr ds:dword_55BD7C+3, 40h
jz      loc_4E391D
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 1
jb      short loc_4E3836
jbe     short loc_4E3857
cmp     eax, 2
jz      loc_4E38EA
jmp     loc_4E3A97

loc_4E3836:
test    eax, eax
jnz     loc_4E3A97
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
inc     byte ptr [ecx+1]
jmp     loc_4E3A97

loc_4E3857:
cmp     ds:byte_5F84D6, 0
jnz     short loc_4E387A
mov     ebx, 61h ; 'a'

loc_4E3865:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD

loc_4E3871:
add     byte ptr [ecx+1], 3
jmp     loc_4E3A97

loc_4E387A:
cmp     byte ptr ds:dword_5F88B1+1, 0
jg      short loc_4E388A
mov     ebx, 60h ; '`'
jmp     short loc_4E3865

loc_4E388A:
cmp     byte ptr ds:dword_5F88B1+2, 0
jnz     short loc_4E38C9
mov     eax, dword ptr ds:unk_5F84D3
sar     eax, 18h
add     eax, 80h
call    sub_4A629F
mov     ebx, 5Eh ; '^'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
mov     byte ptr ds:dword_5F88B1+2, 1
mov     al, ds:byte_5F84D6
mov     ds:byte_5F84D4, al
jmp     short loc_4E3871

loc_4E38C9:
mov     ebx, 5Fh ; '_'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+2, bh
mov     ds:byte_5F84D4, bh
jmp     short loc_4E3871

loc_4E38EA:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     eax, 0C4h
call    sub_42BEB2
add     byte ptr [ecx+1], 4
jmp     loc_4E3A97

loc_4E391D:
mov     eax, ecx
call    sub_4E3F64
jmp     loc_4E3A97

loc_4E3929:             ; jumptable 004E3737 case 3
mov     eax, ds:dword_55BD78
and     eax, 0FF00h
shr     eax, 8
mov     [ecx+4], al
mov     [ecx+5], al
test    al, al
jbe     short loc_4E3945
inc     al
mov     [ecx+5], al

loc_4E3945:
xor     ebx, ebx
mov     bl, [ecx+5]
cmp     byte ptr [ecx+4], 0Dh
jnb     loc_4E39C2
lea     eax, [ebx+4C0h]
call    sub_47E888
test    eax, eax
jz      short loc_4E39A1
xor     eax, eax
mov     al, [ecx+4]
lea     edx, [eax+9]
or      edx, 20000h
mov     eax, 1
call    sub_4A05F5
mov     eax, [esi+16Fh]
sar     eax, 18h
cmp     eax, ebx
jnz     short loc_4E3996
mov     edx, 2001Ch
xor     eax, ebx
call    sub_4A05F5
jmp     short loc_4E399D

loc_4E3996:
xor     eax, eax
call    sub_4A0595

loc_4E399D:
mov     edx, ebx
jmp     short loc_4E39E1

loc_4E39A1:
mov     byte ptr [ecx+5], 0
mov     edx, 20016h
mov     eax, 1
call    sub_4A05F5
xor     eax, eax
call    sub_4A0595
mov     edx, 0FFFFFFFFh
jmp     short loc_4E39E1

loc_4E39C2:
mov     byte ptr [ecx+5], 0
mov     edx, 20016h
mov     eax, 1
call    sub_4A05F5
xor     eax, eax
call    sub_4A0595
mov     edx, 0FFFFFFFFh

loc_4E39E1:
mov     eax, ecx
call    sub_4E4444
test    byte ptr ds:dword_55BD74+2, 4
jz      short loc_4E39F8
mov     eax, ecx
call    sub_4E33AB

loc_4E39F8:
test    byte ptr ds:dword_55BD7C+3, 40h
jz      short loc_4E3A6D
cmp     byte ptr [ecx+4], 0Dh
jz      short loc_4E3A56
lea     eax, [ebx+4C0h]
call    sub_47E888
test    eax, eax
jz      short loc_4E3A43
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
xor     ebx, ebx
mov     bl, [ecx+4]
add     ebx, 0E4h
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
inc     byte ptr [ecx+1]
jmp     short loc_4E3A97

loc_4E3A43:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
jmp     short loc_4E3A97

loc_4E3A56:
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h

loc_4E3A62:
call    sub_4D89E4
add     byte ptr [ecx+1], 2
jmp     short loc_4E3A97

loc_4E3A6D:
test    di, 1008h
jz      loc_4E391D
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
jmp     short loc_4E3A62

loc_4E3A86:             ; jumptable 004E3737 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4E3A97
mov     byte ptr [ecx+1], 3

loc_4E3A93:
mov     byte ptr [ecx+2], 0

loc_4E3A97:
mov     edx, 1
mov     eax, ecx
call    sub_4E33EE
jmp     short def_4E3737 ; jumptable 004E3737 default case

loc_4E3AA5:             ; jumptable 004E3737 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4E3A97
mov     byte ptr [ecx+1], 1
jmp     short loc_4E3A93

loc_4E3AB4:             ; jumptable 004E3737 case 6
call    sub_42C353
test    eax, eax
jnz     short def_4E3737 ; jumptable 004E3737 default case
mov     [ecx], eax

def_4E3737:             ; jumptable 004E3737 default case
xor     eax, eax
jmp     loc_4E3DDC
sub_4E3712 endp




sub_4E3AC6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+1]
cmp     al, 1
jb      short loc_4E3ADD
jbe     short loc_4E3AF7
cmp     al, 2
jz      short loc_4E3B1A
jmp     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E3ADD:
test    al, al
jnz     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
mov     eax, 0C1h
call    sub_42BEB2

loc_4E3AEF:
inc     byte ptr [ecx+1]
jmp     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E3AF7:
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     edx, ds:off_52FD55
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
jmp     short loc_4E3AEF

loc_4E3B1A:
test    byte ptr ds:dword_55BD7C+3, 40h
jz      short loc_4E3B40
mov     edx, ds:dword_55BD7C
and     edx, 0FFh
cmp     edx, 4
jnz     short loc_4E3B40
mov     byte ptr [ecx], 9
mov     byte ptr [ecx+1], 0
jmp     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E3B40:
test    byte ptr ds:dword_55BD7C+3, 40h
jnz     short loc_4E3B56
test    byte ptr ds:word_5708DE, 8
jz      loc_4E338B

loc_4E3B56:
test    byte ptr ds:word_5708DE, 8
jz      short loc_4E3B70
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4

loc_4E3B70:
call    sub_4A0E35
mov     edx, ds:dword_77E7D5
sar     edx, 18h
mov     eax, offset byte_5F8364
call    sub_4B58B2
mov     eax, 0C4h
call    sub_42BEB2
jmp     loc_4E29D0
sub_4E3AC6 endp




sub_4E3B97 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     edi, eax
mov     al, [eax+1]
test    al, al
jbe     short loc_4E3BB6
cmp     al, 1
jz      loc_4E3C2F
jmp     loc_4E3DD6

loc_4E3BB6:
mov     eax, offset byte_559A4C
call    sub_4F90BD
mov     eax, offset byte_559A74
call    sub_4F90F7
mov     esi, ds:off_52FCE5
xor     eax, eax
xor     edx, edx
jmp     short loc_4E3BE6

loc_4E3BD6:
sub     ecx, 7
mov     ds:dword_559A88[eax*4], ecx
inc     eax
cmp     eax, 9
jge     short loc_4E3BF1

loc_4E3BE6:
lea     ecx, [esi+edx]
inc     edx
cmp     byte ptr [ecx], 82h
jz      short loc_4E3BD6
jmp     short loc_4E3BE6

loc_4E3BF1:
call    sub_437FBF
call    sub_4A0E35
mov     edx, ds:off_52FCE1
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
mov     edx, ds:off_52FCE5
mov     ebx, 0FFFFFFFFh
mov     eax, 1
call    sub_4A0CDD
call    sub_4F904F
mov     ds:dword_559AAC, eax
inc     byte ptr [edi+1]

loc_4E3C2F:
mov     esi, ds:dword_55BD7C
and     esi, 0FFh
cmp     esi, 9
jge     loc_4E3D89
call    sub_4F8FEF
mov     [esp+20h+var_1C], eax
test    eax, eax
jz      loc_4E3CE6
xor     edx, edx

loc_4E3C57:
lea     eax, [edx+edx]
mov     ch, ds:byte_559A4C[eax]
test    ch, ch
jz      short loc_4E3C74
mov     al, ch
and     eax, 0FFh
cmp     eax, [esp+20h+var_1C]
jz      short loc_4E3C74
inc     edx
jmp     short loc_4E3C57

loc_4E3C74:
cmp     ds:byte_559A4C[edx*2], 0
jnz     loc_4E3DD6
mov     eax, [esp+20h+var_1C]
call    sub_4F8FAD
test    eax, eax
jz      loc_4E3DD6
mov     ecx, ds:dword_559A88[esi*4]
mov     ebx, 7
mov     edx, eax
mov     eax, ecx
call    memcpy_
xor     eax, eax
jmp     short loc_4E3CB6

loc_4E3CAC:
inc     eax
cmp     eax, 14h
jge     loc_4E3DD6

loc_4E3CB6:
lea     edx, [eax+eax]
cmp     ds:byte_559A4C[edx], 0
jz      loc_4E3DD6
xor     ebx, ebx
mov     bl, ds:byte_559A4D[edx]
cmp     ebx, ds:dword_511F05[esi*4]
jnz     short loc_4E3CAC
mov     al, byte ptr [esp+20h+var_1C]
mov     ds:byte_559A4C[edx], al
jmp     loc_4E3DD6

loc_4E3CE6:
call    sub_4F904F
mov     [esp+20h+var_1C], eax
cmp     eax, 0FFFFFFFFh
jz      loc_4E3D6C
cmp     eax, ds:dword_559AAC
jz      loc_4E3D6C
xor     eax, eax
jmp     short loc_4E3D0E

loc_4E3D08:
inc     eax
cmp     eax, 0Ah
jge     short loc_4E3D62

loc_4E3D0E:
lea     edx, [eax+eax]
xor     ebx, ebx
mov     bl, ds:byte_559A75[edx]
cmp     ebx, ds:dword_511F05[esi*4]
jnz     short loc_4E3D08
mov     dl, ds:byte_559A74[edx]
and     edx, 0FFh
mov     [esp+20h+var_20], edx
xor     edx, edx
mov     ebp, [esp+20h+var_1C]
jmp     short loc_4E3D3F

loc_4E3D39:
inc     edx
cmp     edx, 0Ah
jge     short loc_4E3D57

loc_4E3D3F:
lea     ecx, [edx+edx]
xor     ebx, ebx
mov     bl, ds:byte_559A74[ecx]
cmp     ebx, ebp
jnz     short loc_4E3D39
mov     dl, byte ptr [esp+20h+var_20]
mov     ds:byte_559A74[ecx], dl

loc_4E3D57:
mov     dl, byte ptr [esp+20h+var_1C]
mov     ds:byte_559A74[eax*2], dl

loc_4E3D62:
call    sub_437FBF
jmp     loc_4E3DD6

loc_4E3D6C:
mov     ecx, [esp+20h+var_1C]
cmp     ecx, 0FFFFFFFFh
jnz     loc_4E3DD6
cmp     ecx, ds:dword_559AAC
jz      short loc_4E3DD6
mov     ds:dword_559AAC, ecx
jmp     short loc_4E3DD6

loc_4E3D89:
test    byte ptr ds:dword_55BD7C+3, 40h
jz      short loc_4E3DD6
cmp     esi, 0Ah
jb      short loc_4E3DA0
jbe     short loc_4E3DCF
cmp     esi, 0Bh
jz      short loc_4E3DBB
jmp     short loc_4E3DD6

loc_4E3DA0:
cmp     esi, 9
jnz     short loc_4E3DD6
mov     eax, offset byte_559A4C
call    sub_4F90CB
mov     eax, offset byte_559A74
call    sub_4F9105
jmp     short loc_4E3D62

loc_4E3DBB:
mov     eax, offset byte_559A4C
call    sub_4F90D9
mov     eax, offset byte_559A74
call    sub_4F9113

loc_4E3DCF:
mov     byte ptr [edi], 6
mov     byte ptr [edi+1], 1

loc_4E3DD6:
xor     eax, eax
add     esp, 8

loc_4E3DDB:
pop     ebp
sub_4E3B97 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4E4BA7
;   ADDITIONAL PARENT FUNCTION sub_4E3712
;   ADDITIONAL PARENT FUNCTION sub_4E3FD4
;   ADDITIONAL PARENT FUNCTION sub_4E4037
;   ADDITIONAL PARENT FUNCTION sub_4E409A
;   ADDITIONAL PARENT FUNCTION sub_4E40FD

loc_4E3DDC:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4E4BA7
jpt_4E3E0E dd offset loc_4E3E15 ; jump table for switch statement
dd offset loc_4E3E2F
dd offset loc_4E3E58
dd offset def_4E296E



sub_4E3DF2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
call    sub_4E4892
mov     dl, [ecx+1]
cmp     dl, 3           ; switch 4 cases
ja      def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
and     edx, 0FFh
jmp     jpt_4E3E0E[edx*4] ; switch jump

loc_4E3E15:             ; jumptable 004E3E0E case 0
mov     edx, ds:off_530069

loc_4E3E1B:
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
inc     byte ptr [ecx+1]
jmp     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E3E2F:             ; jumptable 004E3E0E case 1
test    byte ptr ds:dword_55BD7C+3, 40h
jz      def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
test    byte ptr ds:dword_55BD7C, 0FFh
jz      short loc_4E3E50

loc_4E3E45:
mov     dword ptr [ecx], 0
jmp     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E3E50:
mov     edx, ds:off_530075
jmp     short loc_4E3E1B

loc_4E3E58:             ; jumptable 004E3E0E case 2
test    byte ptr ds:dword_55BD7C+3, 40h
jz      def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4E3E45
call    sub_4A0E35
call    sub_4A62BD
call    sub_4A056E
call    sub_4A86A4
call    sub_4D8ED6
call    sub_4D8E21
call    sub_4D8EB1
mov     eax, 1FEh
call    sub_47EA91
mov     word ptr ds:dword_6DD9BC, 1
mov     eax, offset sub_4378C0
call    sub_4EEDCA
jmp     def_4E296E      ; jumptable 004E296E default case
sub_4E3DF2 endp         ; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3



sub_4E3EB3 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+0Bh]
cmp     al, ds:byte_5F84D4
jnz     short loc_4E3EE8
mov     al, [edx+8]
cmp     al, byte ptr ds:dword_5F88B1+3
jnz     short loc_4E3EE8
mov     al, [edx+9]
cmp     al, byte ptr ds:dword_5F88B5
jnz     short loc_4E3EE8
mov     al, [edx+0Ah]
cmp     al, byte ptr ds:dword_5F88B5+1
jz      short loc_4E3F17

loc_4E3EE8:
mov     eax, ecx
call    sub_4B56DA
mov     eax, ecx
call    sub_4B570A
mov     al, [edx+0Bh]
cmp     al, [ecx+170h]
jz      short loc_4E3F10
mov     edx, 80h
mov     eax, 8
call    sub_4DC979

loc_4E3F10:
mov     byte ptr [ecx+110h], 0

loc_4E3F17:
mov     eax, 1
pop     edx
pop     ecx
retn
sub_4E3EB3 endp




sub_4E3F1F proc near
push    ebx
push    edx
mov     ax, ds:word_5708DE
test    ax, 1008h
jz      short loc_4E3F5F
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     eax, 0C4h
call    sub_42BEB2
mov     eax, 1
pop     edx
pop     ebx
retn

loc_4E3F5F:
xor     eax, eax
pop     edx
pop     ebx
retn
sub_4E3F1F endp




sub_4E3F64 proc near

var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
xor     eax, eax
mov     ax, ds:word_5708DE
mov     [esp+10h+var_10], eax
test    byte ptr [esp+10h+var_10+1], 0Ch
jz      short loc_4E3FCD
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
test    byte ptr [esp+10h+var_10+1], 4
jz      short loc_4E3FB5
mov     bh, [ecx]
dec     bh
mov     [ecx], bh
cmp     bh, 2
jge     short loc_4E3FC3
mov     byte ptr [ecx], 6
jmp     short loc_4E3FC3

loc_4E3FB5:
mov     dh, [ecx]
inc     dh
mov     [ecx], dh
cmp     dh, 6
jle     short loc_4E3FC3
mov     byte ptr [ecx], 2

loc_4E3FC3:
mov     byte ptr [ecx+1], 0
mov     word ptr [ecx+2], 0

loc_4E3FCD:
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_4E3F64 endp




sub_4E3FD4 proc near

; FUNCTION CHUNK AT 004E3DDC SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, offset byte_5F8364
xor     edi, edi
jmp     short loc_4E3FEC

loc_4E3FE2:
inc     edi
cmp     edi, 1Fh
jge     loc_4E3DDC

loc_4E3FEC:
xor     ecx, ecx

loc_4E3FEE:
mov     eax, 1Fh
sub     eax, edi
cmp     ecx, eax
jge     short loc_4E3FE2
lea     eax, [esi+ecx]
mov     bl, [eax+555h]
test    bl, bl
jz      short loc_4E4034
mov     al, [eax+554h]
test    al, al
jz      short loc_4E4028
xor     edx, edx
mov     dl, al
xor     eax, eax
mov     al, bl
mov     dl, ds:byte_52DE5C[edx*8]
cmp     dl, ds:byte_52DE5C[eax*8]
jge     short loc_4E4034

loc_4E4028:
lea     ebx, [ecx+1]
mov     edx, ecx
mov     eax, esi
call    sub_4E4160

loc_4E4034:
inc     ecx
jmp     short loc_4E3FEE
sub_4E3FD4 endp




sub_4E4037 proc near

; FUNCTION CHUNK AT 004E3DDC SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, offset byte_5F8364
xor     edi, edi
jmp     short loc_4E404F

loc_4E4045:
inc     edi
cmp     edi, 1Fh
jge     loc_4E3DDC

loc_4E404F:
xor     ecx, ecx

loc_4E4051:
mov     eax, 1Fh
sub     eax, edi
cmp     ecx, eax
jge     short loc_4E4045
lea     eax, [esi+ecx]
mov     bl, [eax+555h]
test    bl, bl
jz      short loc_4E4097
mov     al, [eax+554h]
test    al, al
jz      short loc_4E408B
xor     edx, edx
mov     dl, al
xor     eax, eax
mov     al, bl
mov     dl, ds:byte_52DE5D[edx*8]
cmp     dl, ds:byte_52DE5D[eax*8]
jge     short loc_4E4097

loc_4E408B:
lea     ebx, [ecx+1]
mov     edx, ecx
mov     eax, esi
call    sub_4E4160
