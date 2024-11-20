loc_425E95:
call    sub_4DDF54
mov     ebx, eax
mov     ecx, eax
test    eax, eax
jz      loc_426000
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 3
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+5], 0
mov     byte ptr [eax+0Ch], 10h
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
cmp     byte ptr [esi+5Ah], 0FFh
jz      short loc_425F0B
xor     eax, eax
mov     al, [esi+5Ah]
call    sub_4E1877
mov     dx, [eax+56h]
add     dh, 8
and     dh, 0Fh
mov     [ebx+56h], dx
mov     dx, [eax+1C8h]
mov     [ebx+14h], dx
mov     dx, [eax+1CAh]
inc     dh
mov     [ebx+16h], dx
mov     ax, [eax+1CCh]
jmp     loc_425E5A

loc_425F0B:
mov     ax, [edx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebx+56h], ax
mov     ax, [edx+1F0h]
mov     [ebx+14h], ax
mov     ax, [edx+1F2h]
inc     ah
jmp     loc_425E88

loc_425F32:
jl      loc_425DE5
call    sub_4DDF54
mov     ebx, eax
mov     ecx, eax
test    eax, eax
jz      loc_426000
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 3
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+5], 0
mov     byte ptr [eax+0Ch], 10h
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
cmp     byte ptr [esi+5Ah], 0FFh
jz      short loc_425FAB
xor     eax, eax
mov     al, [esi+5Ah]
call    sub_4E1877
mov     dx, [eax+56h]
add     dh, 8
and     dh, 0Fh
mov     [ebx+56h], dx
mov     dx, [eax+1C8h]
mov     [ebx+14h], dx
mov     dx, [eax+1CAh]
inc     dh
mov     [ebx+16h], dx
mov     ax, [eax+1CCh]
jmp     short loc_425FD8

loc_425FAB:
mov     ax, [edx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebx+56h], ax
mov     ax, [edx+1F0h]
mov     [ebx+14h], ax
mov     ax, [edx+1F2h]
inc     ah
mov     [ebx+16h], ax
mov     ax, [edx+1F4h]

loc_425FD8:
mov     [ebx+18h], ax

loc_425FDC:
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax

loc_426000:
mov     word ptr [esi+50h], 0

loc_426006:
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_425CF9 endp




sub_42600E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+4C0h]
mov     dx, [esi+50h]
cmp     dx, 3Ch ; '<'
jl      short loc_42607D
mov     ah, [esi+5Ah]
cmp     ah, 0FFh
jnz     short loc_42604A
mov     byte ptr [ecx+0ACh], 7
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
or      byte ptr [ecx+0Ch], 2
jmp     short loc_42606F

loc_42604A:
cmp     ah, [ecx+0Eh]
jz      short loc_426054
cmp     ah, [ecx+0Dh]
jnz     short loc_42606F

loc_426054:
xor     eax, eax
mov     al, [esi+5Ah]
call    sub_4E1877
mov     bl, [eax+0Eh]
and     bl, 0CDh
mov     [eax+0Eh], bl
mov     bh, bl
or      bh, 22h
mov     [eax+0Eh], bh

loc_42606F:
mov     word ptr [esi+50h], 0
inc     byte ptr [ecx+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_42607D:
mov     ebx, edx
inc     ebx
mov     [esi+50h], bx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_42600E endp




sub_426089 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+4C0h]
mov     ah, [esi+5Ah]
cmp     ah, 0FFh
jnz     short loc_4260F0
test    byte ptr [ecx+0A6h], 8
jz      short loc_4260B3
lea     edx, [ecx+14h]
mov     eax, 1C5h
call    sub_4D8BC3

loc_4260B3:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     loc_4261A3
and     byte ptr [ecx+0Ch], 0FEh
mov     byte ptr [ecx+0Ah], 0
mov     word ptr [esi+4Eh], 0
mov     byte ptr [ecx+0ACh], 1
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4260F0:
cmp     ah, [ecx+0Eh]
jz      short loc_426100
mov     al, [ecx+0Dh]
cmp     al, ah
jnz     loc_426176

loc_426100:
xor     eax, eax
mov     al, [esi+5Ah]
call    sub_4E1877
mov     ebx, eax
test    byte ptr [eax+0A6h], 8
jz      short loc_426122
lea     edx, [eax+14h]
mov     eax, 1C5h
call    sub_4D8BC3

loc_426122:
mov     eax, [ebx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4261A3
and     byte ptr [ebx+0Eh], 0DFh
mov     byte ptr [ecx+0Ah], 0
mov     word ptr [esi+4Eh], 0
and     byte ptr [ecx+0Ch], 0FEh
mov     byte ptr [ecx+0ACh], 1
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     al, [ecx+0Eh]
cmp     al, [esi+5Ah]
jnz     short loc_4261A3
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E1877
and     byte ptr [eax+0Eh], 0FBh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_426176:
test    al, al
jle     short loc_426189
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E1877
and     byte ptr [eax+0Eh], 0FBh

loc_426189:
mov     byte ptr [ecx+0Ah], 0
mov     word ptr [esi+4Eh], 0
mov     al, [ecx+0Ch]
and     al, 0BEh
mov     [ecx+0Ch], al
mov     ah, al
or      ah, 40h
mov     [ecx+0Ch], ah

loc_4261A3:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_426089 endp




sub_4261A8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+4C0h]
cmp     byte ptr [esi+5Ah], 0FFh
jnz     short loc_4261DC
or      byte ptr [ecx+0Ch], 2
mov     byte ptr [ecx+0ACh], 7
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Bh], 3
jmp     short loc_426211

loc_4261DC:
mov     byte ptr [ecx+0ACh], 2
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     al, [ecx+0Eh]
mov     dl, [esi+5Ah]
cmp     al, dl
jz      short loc_426203
cmp     dl, [ecx+0Dh]
jnz     short loc_426211

loc_426203:
xor     eax, eax
mov     al, [esi+5Ah]
call    sub_4E1877
mov     byte ptr [eax+0Eh], 42h ; 'B'

loc_426211:
inc     byte ptr [ecx+0Bh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4261A8 endp




sub_426219 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+4C0h]
test    byte ptr [eax+0A6h], 8
jz      short loc_42623C
lea     edx, [ecx+14h]
mov     eax, 1C5h
call    sub_4D8BC3

loc_42623C:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_426449      ; jumptable 00426449 default case
and     byte ptr [ecx+0Ch], 0FEh
mov     al, [ecx+0Eh]
mov     dh, [esi+5Ah]
cmp     al, dh
jz      short loc_426265
cmp     dh, [ecx+0Dh]
jnz     loc_426301

loc_426265:
mov     bh, [esi+5Ah]
cmp     bh, 0FFh
jz      loc_426301
xor     eax, eax
mov     al, bh
call    sub_4E1877
mov     edi, eax
test    byte ptr [eax+0A6h], 8
jz      short loc_426292
lea     edx, [eax+14h]
mov     eax, 1C5h
call    sub_4D8BC3

loc_426292:
mov     eax, [edi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_426449      ; jumptable 00426449 default case
mov     byte ptr [ecx+0ACh], 3
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     ax, [ecx+44h]
add     eax, eax
mov     [ecx+44h], ax
mov     dx, [esi+46h]
add     edx, edx
mov     [esi+46h], dx
mov     word ptr [esi+50h], 0
and     byte ptr [edi+0Eh], 0BFh
inc     byte ptr [ecx+0Bh]
or      byte ptr [ecx+0Ch], 80h
mov     al, [ecx+0Eh]
cmp     al, [esi+5Ah]
jnz     def_426449      ; jumptable 00426449 default case
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E1877
and     byte ptr [eax+0Eh], 0FBh
jmp     def_426449      ; jumptable 00426449 default case

loc_426301:
mov     byte ptr [ecx+0ACh], 3
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     dx, [ecx+44h]
add     edx, edx
mov     [ecx+44h], dx
mov     bx, [esi+46h]
add     ebx, ebx
mov     [esi+46h], bx
mov     word ptr [esi+50h], 0
inc     byte ptr [ecx+0Bh]
or      byte ptr [ecx+0Ch], 80h
jmp     def_426449      ; jumptable 00426449 default case
sub_426219 endp




sub_42633F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+4C0h]
cmp     word ptr [edx+50h], 5Ah ; 'Z'
jl      short loc_42636E
mov     byte ptr [eax+0ACh], 4
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
pop     ebx
retn

loc_42636E:
xor     ebx, ebx
mov     bl, [eax+9]
call    ds:funcs_4252B5[ebx*4]
inc     word ptr [edx+50h]
pop     edx
pop     ecx
pop     ebx
retn
sub_42633F endp




sub_426382 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+4C0h]
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4263E1
mov     byte ptr [eax+0ACh], 1
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
and     byte ptr [ecx+0Ch], 3Fh
mov     word ptr [ecx+44h], 0Ch
mov     edx, [esi+44h]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [esi+46h], ax
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [esi+5Bh], 0
mov     word ptr [esi+4Eh], 0

loc_4263E1:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_426382 endp




sub_4263E6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_426413
mov     byte ptr [eax+0ACh], 2
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [ecx+0Bh], 1

loc_426413:
pop     edx
pop     ecx
pop     ebx
retn
sub_4263E6 endp

db 8Bh, 0C0h
jpt_426449 dd offset loc_426450 ; jump table for switch statement
dd offset loc_426502
dd offset loc_42651B
dd offset loc_42652E
dd offset loc_426535



sub_42642D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+4C0h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_426449      ; jumptable 00426449 default case
xor     edx, edx
mov     dl, al
jmp     jpt_426449[edx*4] ; switch jump

loc_426450:             ; jumptable 00426449 case 0
cmp     word ptr [ebx+4Ch], 0
jz      loc_4264F4
mov     edx, [ebx+4Ah]
sar     edx, 10h
mov     esi, 4
mov     eax, edx
sar     edx, 1Fh
idiv    esi
test    edx, edx
jnz     loc_4264F9
mov     dl, [ebx+52h]
and     dl, 7
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     dh, ds:byte_510E1C[eax*2]
lea     edi, [ebx+38h]
lea     esi, unk_510E1E[eax*2]
movsd
movsd
call    sub_4DE13B
test    eax, eax
jz      short loc_4264F9
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
mov     dl, [ebx+52h]
and     dl, 3
mov     [eax+0Dh], dl
mov     dl, dh
and     edx, 0FFh
shl     edx, 3
add     ecx, edx
mov     dx, [ecx+190h]
mov     di, [ebx+38h]
add     edx, edi
mov     [eax+48h], dx
mov     dx, [ecx+192h]
mov     si, [ebx+3Ah]
add     edx, esi
mov     [eax+4Ah], dx
mov     dx, [ecx+194h]
mov     di, [ebx+3Ch]
add     edx, edi
mov     [eax+4Ch], dx
jmp     short loc_4264F9

loc_4264F4:
inc     al
mov     [ecx+0Ah], al

loc_4264F9:
dec     word ptr [ebx+4Ch]
jmp     def_426449      ; jumptable 00426449 default case

loc_426502:             ; jumptable 00426449 case 1
mov     eax, ecx
call    sub_4367FD
mov     eax, 0Eh

loc_42650E:
call    sub_49E0D7

loc_426513:
inc     byte ptr [ecx+0Ah]
jmp     def_426449      ; jumptable 00426449 default case

loc_42651B:             ; jumptable 00426449 case 2
cmp     ds:word_6E23D6, 0
jnz     def_426449      ; jumptable 00426449 default case
and     byte ptr [ecx], 0FDh
jmp     short loc_426513

loc_42652E:             ; jumptable 00426449 case 3
mov     eax, 6
jmp     short loc_42650E

loc_426535:             ; jumptable 00426449 case 4
cmp     ds:word_6E23D6, 0
jnz     def_426449      ; jumptable 00426449 default case
mov     byte ptr [ecx+8], 2
jmp     def_426449      ; jumptable 00426449 default case
sub_42642D endp




sub_42654C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+4C0h]
xor     ebx, ebx
mov     bl, [edx+58h]
mov     ecx, ebx
shl     ecx, 2
add     ecx, ebx
mov     bx, word ptr ds:dword_510D7C[ecx*2]
mov     [eax+14h], bx
xor     ebx, ebx
mov     bl, [edx+58h]
mov     ecx, ebx
shl     ecx, 2
add     ecx, ebx
mov     bx, word ptr ds:(dword_510D7C+2)[ecx*2]
mov     [eax+18h], bx
mov     ecx, [eax+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+1Ch], ecx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
xor     ebx, ebx
mov     bl, [edx+58h]
mov     ecx, ebx
shl     ecx, 2
add     ebx, ecx
add     ebx, ebx
mov     cx, [eax+14h]
mov     si, ds:word_510D80[ebx]
add     ecx, esi
mov     [edx+40h], cx
xor     ebx, ebx
mov     bl, [edx+58h]
mov     ecx, ebx
shl     ecx, 2
add     ecx, ebx
mov     ax, [eax+18h]
mov     di, ds:word_510D82[ecx*2]
add     eax, edi
mov     [edx+44h], ax
jmp     def_426449      ; jumptable 00426449 default case
sub_42654C endp




sub_4265E1 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+4C0h]
mov     ax, [eax+56h]
add     ax, [ecx+46h]
and     ah, 0Fh
mov     [edx+56h], ax
mov     ebx, [ecx+48h]
sar     ebx, 10h
mov     eax, [ecx+46h]
sar     eax, 10h
call    sub_4EF008
imul    eax, ebx
sar     eax, 0Ch
cwde
mov     ebx, [ecx+3Eh]
sar     ebx, 10h
add     eax, ebx
mov     [edx+14h], ax
mov     ebx, [ecx+48h]
sar     ebx, 10h
mov     eax, [ecx+46h]
sar     eax, 10h
call    sub_4EF003
imul    eax, ebx
sar     eax, 0Ch
cwde
mov     ecx, [ecx+42h]
sar     ecx, 10h
add     eax, ecx
mov     [edx+18h], ax
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
pop     edx
pop     ecx
pop     ebx
retn
sub_4265E1 endp




sub_42666B proc near
push    ebx
push    ecx
push    edx
lea     ecx, [eax+4C0h]
xor     ebx, ebx
mov     bl, [ecx+58h]
mov     edx, ebx
shl     edx, 2
add     edx, ebx
mov     dx, word ptr ds:dword_510D7C[edx*2]
mov     [eax+14h], dx
mov     cl, [ecx+58h]
and     ecx, 0FFh
mov     edx, ecx
shl     edx, 2
add     edx, ecx
mov     dx, word ptr ds:(dword_510D7C+2)[edx*2]
mov     [eax+18h], dx
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
pop     edx
pop     ecx
pop     ebx
retn
sub_42666B endp




sub_4266C4 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_4266CF[ecx*4]
lea     edi, [edx+2Ch]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [edx+34h]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [edx+5Ch]
lea     esi, [edx+54h]
movsd
movsd
cmp     byte ptr [edx+0Dh], 0
jnz     short loc_426702
mov     eax, edx
call    sub_4DEADD
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_426702:
mov     eax, edx
call    sub_4DFC52
mov     eax, edx
call    sub_4DF795
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4266C4 endp




sub_426715 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_426764
or      byte ptr [ecx], 2
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+56h], 800h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Dh]
inc     byte ptr [ecx+0Eh]
inc     byte ptr [ecx+0Ah]

loc_426764:
pop     edx
pop     ecx
pop     ebx
retn
sub_426715 endp




sub_426768 proc near
cmp     byte ptr [eax+0Eh], 0
jnz     short locret_426773
sub     word ptr [eax+16h], 6

locret_426773:
retn
sub_426768 endp




sub_426774 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_426794
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Dh], 0

loc_426794:
cmp     byte ptr [ecx+0A4h], 56h ; 'V'
jnz     short loc_4267A0
inc     byte ptr [ecx+0Dh]

loc_4267A0:
pop     edx
pop     ecx
pop     ebx
retn
sub_426774 endp




sub_4267A4 proc near
cmp     byte ptr [eax+0Eh], 0
jnz     short locret_4267AF
add     word ptr [eax+16h], 3

locret_4267AF:
retn
sub_4267A4 endp




sub_4267B0 proc near
push    ebx
push    edx
mov     dl, [eax+0A4h]
cmp     dl, 5Eh ; '^'
jnb     short loc_4267C4
add     word ptr [eax+16h], 5
jmp     short loc_4267CD

loc_4267C4:
cmp     dl, 6Fh ; 'o'
jnb     short loc_4267CD
dec     word ptr [eax+16h]

loc_4267CD:
mov     bl, [eax+0A4h]
cmp     bl, 67h ; 'g'
jnb     short loc_4267E0
add     word ptr [eax+18h], 0Bh
pop     edx
pop     ebx
retn

loc_4267E0:
cmp     bl, 6Fh ; 'o'
jnb     short loc_4267EA
sub     word ptr [eax+18h], 10h

loc_4267EA:
pop     edx
pop     ebx
retn
sub_4267B0 endp




sub_4267ED proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4267F8[edx*4]
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 100h
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4267ED endp




sub_426817 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+550h]
mov     ah, [eax]
or      ah, 42h
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     eax, ecx
call    sub_4DF7EB
lea     edx, [ecx+630h]
mov     eax, ebx
call    sub_4EECF9
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ebx+0DCh], 0
cmp     byte ptr ds:dword_77E7DC+3, 1
jle     short loc_42687B
mov     dword ptr [ebx+0E0h], 1
jmp     short loc_426885

loc_42687B:
mov     dword ptr [ebx+0E0h], 0

loc_426885:
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+16h], 0FFCDh
mov     word ptr [ecx+18h], 400h
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ecx+1Ch], 0
mov     dword ptr [ecx+20h], 0FFCD0000h
mov     dword ptr [ecx+24h], 4000000h
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     word ptr [ecx+56h], 0
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ebx+98h], 1
mov     byte ptr [ebx+9Ah], 0
mov     byte ptr [ebx+9Bh], 0
mov     dx, [ebx+98h]
test    dx, dx
jle     short loc_426947
mov     word ptr [ebx+98h], 0
mov     eax, [ebx+98h]
sar     eax, 18h
mov     edx, [ebx+97h]
sar     edx, 18h
mov     ebx, eax
mov     eax, ecx
call    sub_4DE96B
jmp     loc_426B3F

loc_426947:
jnz     loc_426B3F
mov     eax, ecx
call    sub_4DEADD
jmp     loc_426B3F
sub_426817 endp




sub_426959 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+550h]
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
call    sub_428568
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_426985[edx*4]
mov     dx, [ebp+98h]
test    dx, dx
jle     short loc_4269BC
mov     word ptr [ebp+98h], 0
mov     ebx, [ebp+98h]
sar     ebx, 18h
mov     edx, [ebp+97h]
sar     edx, 18h
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4269C5

loc_4269BC:
jnz     short loc_4269C5
mov     eax, ecx
call    sub_4DEADD

loc_4269C5:
mov     edx, [ebp+9Ah]
sar     edx, 10h
mov     eax, ecx
call    sub_4283E3
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8
sub_426959 endp

db 8Dh, 40h, 0
jpt_426A1D dd offset def_426A1D ; jump table for switch statement
dd offset loc_426A80
dd offset loc_426B36
dd offset loc_426B36
dd offset loc_426B36
dd offset loc_426B36
dd offset loc_426B36
dd offset loc_426B36
dd offset loc_426B3B



sub_426A01 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
lea     ebp, [eax+550h]
mov     al, [eax+9]
cmp     al, 8           ; switch 9 cases
ja      short def_426A1D ; jumptable 00426A1D default case, case 0
xor     edx, edx
mov     dl, al
jmp     jpt_426A1D[edx*4] ; switch jump

def_426A1D:             ; jumptable 00426A1D default case, case 0
call    sub_4DE043
test    eax, eax
jz      short loc_426A58
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FCh
mov     word ptr [eax+14h], 0C8h
mov     word ptr [eax+16h], 0C8h
mov     word ptr [eax+18h], 0C8h
mov     word ptr [eax+1Ah], 700h
mov     byte ptr [eax+0Bh], 20h ; ' '
mov     byte ptr [eax+0Ah], 0

loc_426A58:
xor     ebx, ebx
xor     edx, edx
mov     eax, 20Ch
call    sub_4D89E4
call    sub_436710
mov     word ptr [ebp+0CEh], 0
mov     byte ptr [ecx+0Bh], 5Ah ; 'Z'
inc     byte ptr [ecx+9]
jmp     loc_426B3B      ; jumptable 00426A1D case 8

loc_426A80:             ; jumptable 00426A1D case 1
mov     edx, [ebp+0CCh]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     [esp+1Ch+var_1C], eax
mov     ebx, eax

loc_426A95:
mov     eax, [esp+1Ch+var_1C]
add     eax, 3
cmp     ebx, eax
jge     short loc_426AF9
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_426AF6
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     esi, ebx
lea     edi, [edx+48h]
lea     esi, [ecx+esi*8+190h]
movsd
movsd
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+48h], ax
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+4Ah], ax
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+4Ch], ax

loc_426AF6:
inc     ebx
jmp     short loc_426A95

loc_426AF9:
mov     dx, [ebp+0CEh]
inc     edx
mov     [ebp+0CEh], dx
cmp     dx, 4
jle     short loc_426B17
mov     word ptr [ebp+0CEh], 0

loc_426B17:
mov     dl, [ecx+0Bh]
dec     dl
mov     [ecx+0Bh], dl
jnz     short loc_426B24
inc     byte ptr [ecx+9]

loc_426B24:
cmp     byte ptr [ecx+0Bh], 0Ah
jnz     short loc_426B3B ; jumptable 00426A1D case 8
mov     eax, 6Ch ; 'l'
call    sub_47E8B8
jmp     short loc_426B3B ; jumptable 00426A1D case 8

loc_426B36:             ; jumptable 00426A1D cases 2-7
inc     al
mov     [ecx+9], al

loc_426B3B:             ; jumptable 00426A1D case 8
add     esp, 4

loc_426B3E:             ; jumptable 00427ADF cases 5-8
pop     ebp

loc_426B3F:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_426A01 endp




sub_426B45 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+550h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_426B5A
cmp     al, 1
jz      short loc_426B98

loc_426B5A:
call    sub_4DE043
test    eax, eax
jz      short loc_426B8E
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FCh
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 10h
mov     word ptr [eax+18h], 10h
mov     word ptr [eax+1Ah], 500h
mov     byte ptr [eax+0Bh], 1Eh
mov     byte ptr [eax+0Ah], 0

loc_426B8E:
inc     byte ptr [edx+0Ah]
mov     byte ptr [edx+0Bh], 1Eh
pop     edx
pop     ecx
retn

loc_426B98:
mov     ah, [edx+0Bh]
sub     ah, al
mov     [edx+0Bh], ah
jnz     short loc_426BB4
mov     word ptr [ecx+9Eh], 0
mov     [edx+9], al
mov     [edx+0Ah], ah
mov     [edx+0Bh], ah

loc_426BB4:
pop     edx
pop     ecx
retn
sub_426B45 endp

db 8Bh, 0C0h
jpt_426C11 dd offset loc_426C18 ; jump table for switch statement
dd offset loc_426C7E
dd offset loc_426D71
dd offset def_426C11



sub_426BC9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
lea     ecx, [eax+550h]
mov     al, [ecx+0A2h]
mov     [ecx+0A3h], al
mov     al, [ecx+0A1h]
mov     [ecx+0A2h], al
mov     al, [ecx+0A0h]
mov     [ecx+0A1h], al
xor     esi, esi
mov     ax, [ecx+9Eh]
cmp     ax, 3           ; switch 4 cases
ja      def_426C11      ; jumptable 00426C11 default case, case 3
and     eax, 0FFFFh
jmp     jpt_426C11[eax*4] ; switch jump

loc_426C18:             ; jumptable 00426C11 case 0
call    rand_
and     eax, 0Fh
cmp     eax, 8
jnb     short loc_426C2E
mov     byte ptr [ecx+0A0h], 2
jmp     short loc_426C35

loc_426C2E:
mov     byte ptr [ecx+0A0h], 3

loc_426C35:
mov     al, [ecx+0A0h]
mov     [ebx+9], al
mov     byte ptr [ebx+0Ah], 0
mov     byte ptr [ebx+0Bh], 0
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jge     short loc_426C70
mov     word ptr [ecx+9Eh], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_426C70:
mov     word ptr [ecx+9Eh], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_426C7E:             ; jumptable 00426C11 case 1
call    rand_
and     eax, 0Fh
cmp     eax, 2
jnb     short loc_426CD8
mov     byte ptr [ecx+0A0h], 2
mov     al, [ecx+0A0h]
mov     [ebx+9], al
mov     byte ptr [ebx+0Ah], 0
mov     byte ptr [ebx+0Bh], 0
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jge     short loc_426CCD

loc_426CBF:
mov     word ptr [ecx+9Eh], 2
jmp     loc_426D42

loc_426CCD:
mov     word ptr [ecx+9Eh], 1
jmp     short loc_426D42

loc_426CD8:
cmp     eax, 3
jnb     short loc_426D13
mov     byte ptr [ecx+0A0h], 3
mov     al, [ecx+0A0h]
mov     [ebx+9], al
mov     byte ptr [ebx+0Ah], 0
mov     byte ptr [ebx+0Bh], 0
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jl      short loc_426CBF
jmp     short loc_426CCD

loc_426D13:
cmp     eax, 9
jnb     short loc_426D21
mov     byte ptr [ecx+0A0h], 4
jmp     short loc_426D28

loc_426D21:
mov     byte ptr [ecx+0A0h], 5

loc_426D28:
mov     al, [ecx+0A0h]
mov     [ebx+9], al
mov     byte ptr [ebx+0Ah], 0
mov     byte ptr [ebx+0Bh], 0
mov     word ptr [ecx+9Eh], 0

loc_426D42:
mov     al, [ecx+0A1h]
mov     dh, [ecx+0A0h]
cmp     al, dh
jnz     def_426C11      ; jumptable 00426C11 default case, case 3
cmp     dh, [ecx+0A2h]
jnz     def_426C11      ; jumptable 00426C11 default case, case 3
inc     esi
cmp     esi, 10h
jb      loc_426C7E      ; jumptable 00426C11 case 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_426D71:             ; jumptable 00426C11 case 2
call    rand_
and     eax, 0Fh
cmp     eax, 3
jnb     short loc_426DC8
mov     byte ptr [ecx+0A0h], 2
mov     al, [ecx+0A0h]
mov     [ebx+9], al
mov     byte ptr [ebx+0Ah], 0
mov     byte ptr [ebx+0Bh], 0
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jge     short loc_426DBD
mov     word ptr [ecx+9Eh], 2
jmp     short loc_426E05

loc_426DBD:
mov     word ptr [ecx+9Eh], 1
jmp     short loc_426E05

loc_426DC8:
cmp     eax, 8
jnb     short loc_426DD6
mov     byte ptr [ecx+0A0h], 4
jmp     short loc_426DEB

loc_426DD6:
cmp     eax, 0Ah
jnb     short loc_426DE4
mov     byte ptr [ecx+0A0h], 5
jmp     short loc_426DEB

loc_426DE4:
mov     byte ptr [ecx+0A0h], 6

loc_426DEB:
mov     al, [ecx+0A0h]
mov     [ebx+9], al
mov     byte ptr [ebx+0Ah], 0
mov     byte ptr [ebx+0Bh], 0
mov     word ptr [ecx+9Eh], 0

loc_426E05:
mov     al, [ecx+0A1h]
mov     ah, [ecx+0A0h]
cmp     al, ah
jnz     short def_426C11 ; jumptable 00426C11 default case, case 3
cmp     ah, [ecx+0A2h]
jnz     short def_426C11 ; jumptable 00426C11 default case, case 3
inc     esi
cmp     esi, 10h
jb      loc_426D71      ; jumptable 00426C11 case 2

def_426C11:             ; jumptable 00426C11 default case, case 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_426BC9 endp

db 90h
jpt_426E6E dd offset def_426E6E ; jump table for switch statement
dd offset loc_426E81
dd offset loc_426EEE
dd offset loc_426F5C
dd offset loc_426FA1
dd offset loc_42704F
dd offset loc_427074
dd offset loc_427112
dd offset loc_427133



sub_426E51 proc near

var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
lea     edi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 8           ; switch 9 cases
ja      short def_426E6E ; jumptable 00426E6E default case, case 0
and     eax, 0FFh
jmp     jpt_426E6E[eax*4] ; switch jump

def_426E6E:             ; jumptable 00426E6E default case, case 0
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     loc_426F54

loc_426E81:             ; jumptable 00426E6E case 1
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     esi, [ebp+14h]
mov     ecx, 80h
mov     edx, edi
mov     eax, esi
call    sub_4DE552
mov     [esp+24h+var_1C], eax
test    eax, eax
jz      short loc_426EB3

loc_426EA6:
mov     eax, [esp+24h+var_1C]
add     [ebp+56h], ax
jmp     loc_42713F

loc_426EB3:
mov     word ptr [edi+98h], 1
mov     byte ptr [edi+9Ah], 1
mov     byte ptr [edi+9Bh], 0
call    rand_
test    al, 3
jnz     short loc_426EDF
mov     edx, esi
mov     eax, 1FCh
call    sub_4D8BC3

loc_426EDF:
lea     edx, [ebp+14h]
mov     eax, 1EBh
call    sub_4D8BC3
jmp     short loc_426F54

loc_426EEE:             ; jumptable 00426E6E case 2
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     [ebp+56h], ax
xor     eax, eax
mov     al, [ebp+0A4h]
movsx   ax, ds:byte_510EAC[eax]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_42713F
mov     word ptr [edi+98h], 1
mov     byte ptr [edi+9Ah], 2

loc_426F4D:
mov     byte ptr [edi+9Bh], 0

loc_426F54:
inc     byte ptr [ebp+0Ah]
jmp     loc_42713F

loc_426F5C:             ; jumptable 00426E6E case 3
cmp     byte ptr [ebp+0A7h], 0
jge     loc_42713F
lea     edx, [ebp+14h]
mov     eax, 1ECh
call    sub_4D8BC3
mov     word ptr [edi+98h], 1
mov     byte ptr [edi+9Ah], 3
mov     byte ptr [edi+9Bh], 0
mov     word ptr [edi+9Ch], 1
mov     word ptr [edi+0C8h], 0
jmp     short loc_426F54

loc_426FA1:             ; jumptable 00426E6E case 4
mov     cx, [edi+0C8h]
inc     ecx
mov     [edi+0C8h], cx
cmp     cx, 0Ah
jge     short loc_426FD8
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 20h ; ' '
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     [ebp+56h], ax

loc_426FD8:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 400h
mov     eax, ebp
call    sub_4DD43B
lea     edx, [ebp+14h]
mov     eax, edx
call    sub_4282E5
test    eax, eax
jnz     short loc_427003
mov     eax, 1EDh
call    sub_4D8BC3
inc     byte ptr [ebp+0Ah]

loc_427003:
call    sub_4DE13B
mov     edi, eax
test    eax, eax
jz      loc_42713F
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 1
mov     byte ptr [eax+3], 22h ; '"'
test    byte ptr ds:word_77EAB6, 1
jz      short loc_427039
lea     edi, [edi+48h]
lea     esi, [ebp+1E8h]
jmp     short loc_427042

loc_427039:
lea     edi, [edi+48h]
lea     esi, [ebp+208h]

loc_427042:
movsd
movsd
mov     word ptr [eax+4Ah], 0FFE1h
jmp     loc_42713F

loc_42704F:             ; jumptable 00426E6E case 5
mov     word ptr [edi+98h], 1
mov     byte ptr [edi+9Ah], 4
mov     byte ptr [edi+9Bh], 0
mov     word ptr [edi+9Ch], 0
jmp     loc_426F54

loc_427074:             ; jumptable 00426E6E case 6
sub     word ptr [ebp+16h], 0Ah
mov     eax, [ebp+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFCDh
jg      short loc_42708A
mov     word ptr [ebp+16h], 0FFCDh

loc_42708A:
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     ax, [ebp+14h]
add     eax, eax
mov     [esp+24h+var_24], ax
mov     ax, [ebp+16h]
mov     [esp+24h+var_22], ax
mov     ax, [ebp+18h]
add     eax, eax
sub     eax, 400h
mov     [esp+24h+var_20], ax
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, esp
call    sub_4DE552
mov     [esp+24h+var_1C], eax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426EA6
test    eax, eax
jnz     loc_426EA6
mov     eax, [ebp+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFCDh
jnz     loc_426EA6
mov     word ptr [edi+98h], 1
mov     byte ptr [edi+9Ah], 0
jmp     loc_426F4D

loc_427112:             ; jumptable 00426E6E case 7
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFE20h
mov     eax, ebp
call    sub_4DD43B
lea     eax, [ebp+14h]
call    sub_4283B9
test    eax, eax
jz      short loc_42713F
jmp     loc_426F54

loc_427133:             ; jumptable 00426E6E case 8
mov     byte ptr [ebp+9], 1
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0

loc_42713F:
add     esp, 0Ch
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8
sub_426E51 endp

db 8Bh, 0C0h
jpt_4271A9 dd offset def_4271A9 ; jump table for switch statement
dd offset loc_4271CE
dd offset loc_4271DB
dd offset loc_427238
dd offset loc_42765C
dd offset loc_4276FD
dd offset loc_42784A
dd offset loc_42786D
dd offset loc_42786D
dd offset loc_42786D
dd offset loc_42786D
dd offset loc_42786D
dd offset loc_42786D
dd offset loc_42786D
dd offset loc_42786D
dd offset loc_427861



sub_427189 proc near

var_28= dword ptr -28h
var_24= word ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
add     eax, 550h
mov     [esp+28h+var_20], eax
mov     al, [ebp+0Ah]
cmp     al, 0Fh         ; switch 16 cases
ja      short def_4271A9 ; jumptable 004271A9 default case, case 0
and     eax, 0FFh
jmp     jpt_4271A9[eax*4] ; switch jump

def_4271A9:             ; jumptable 004271A9 default case, case 0
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+0A4h], 0
mov     word ptr [eax+0A6h], 0

loc_4271C6:
inc     byte ptr [ebp+0Ah]
jmp     loc_42786D      ; jumptable 004271A9 cases 7-14

loc_4271CE:             ; jumptable 004271A9 case 1
mov     edi, [esp+28h+var_20]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     short loc_4271C6

loc_4271DB:             ; jumptable 004271A9 case 2
mov     ecx, 80h
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
mov     edx, [esp+28h+var_20]
lea     eax, [ebp+14h]
call    sub_4DE552
test    eax, eax
jz      short loc_427205

loc_4271FC:
add     [ebp+56h], ax
jmp     loc_42786D      ; jumptable 004271A9 cases 7-14

loc_427205:
call    rand_
test    al, 3
jnz     short loc_42721B
lea     edx, [ebp+14h]
mov     eax, 200h
call    sub_4D8BC3

loc_42721B:
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 11h
mov     byte ptr [eax+9Bh], 0
jmp     short loc_4271C6

loc_427238:             ; jumptable 004271A9 case 3
cmp     byte ptr [ebp+0A4h], 0Fh
jbe     loc_42752D
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
mov     eax, ebp
add     eax, 14h
mov     [esp+28h+var_1C], eax
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     [ebp+56h], ax
cmp     byte ptr [ebp+0A4h], 10h
jnz     loc_427335
mov     edx, [esp+28h+var_1C]
mov     eax, 1EEh
call    sub_4D8BC3
mov     eax, [esp+28h+var_20]
mov     ax, [eax]
mov     di, [ebp+14h]
sub     eax, edi
mov     word ptr [esp+28h+var_28], ax
mov     eax, [esp+28h+var_20]
mov     ax, [eax+2]
mov     dx, [ebp+16h]
sub     eax, edx
mov     word ptr [esp+28h+var_28+2], ax
mov     eax, [esp+28h+var_20]
mov     ax, [eax+4]
mov     bx, [ebp+18h]
sub     eax, ebx
mov     [esp+28h+var_24], ax
mov     edx, [esp+28h+var_28]
sar     edx, 10h
imul    edx, edx
mov     eax, [esp-2]
sar     eax, 10h
imul    eax, eax
add     edx, eax
mov     eax, [esp+28h+var_28+2]
sar     eax, 10h
imul    eax, eax
add     eax, edx
call    sub_4EF075
mov     edi, [esp+28h+var_20]
lea     edi, [edi+0A8h]
lea     esi, [ebp+14h]
movsd
movsd
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+0C0h], 0
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
mov     ecx, 800h
mov     edx, eax
mov     eax, [esp+28h+var_1C]
call    sub_4DE552
mov     edx, eax
mov     ax, [ebp+56h]
add     eax, edx
mov     edx, [esp+28h+var_20]
mov     [edx+0C4h], ax
jmp     loc_42786D      ; jumptable 004271A9 cases 7-14

loc_427335:
mov     eax, [esp+28h+var_20]
mov     dx, [eax+0C0h]
inc     edx
mov     [eax+0C0h], dx
cmp     dx, 14h
jl      loc_427471
inc     word ptr [eax+0A4h]
mov     eax, [esp+28h+var_1C]
call    sub_4283B9
test    eax, eax
jz      short loc_4273BC
mov     edx, [esp+28h+var_1C]
mov     eax, 1F0h
call    sub_4D8BC3
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 12h
mov     byte ptr [eax+9Bh], 0
mov     ecx, [esp+28h+var_1C]
mov     ebx, 0FA0h
mov     edx, 64h ; 'd'
mov     eax, 28h ; '('
call    sub_42A70B
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+9Ch], 2
inc     byte ptr [ebp+0Ah]
jmp     loc_427471

loc_4273BC:
mov     eax, [esp+28h+var_20]
mov     si, [eax+0A4h]
cmp     si, 2
jnz     short loc_42741F
mov     edx, [esp+28h+var_1C]
mov     eax, 1EFh
call    sub_4D8BC3
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 13h
mov     byte ptr [eax+9Bh], 0
mov     ecx, [esp+28h+var_1C]
mov     ebx, 0FA0h
mov     edx, 64h ; 'd'
mov     eax, 28h ; '('
call    sub_42A70B
mov     eax, [esp+28h+var_20]
mov     [eax+9Ch], si
mov     byte ptr [ebp+0Ah], 6
jmp     short loc_427471

loc_42741F:
mov     edx, [esp+28h+var_1C]
mov     eax, 1EFh
call    sub_4D8BC3
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 13h
mov     byte ptr [eax+9Bh], 0
mov     ecx, [esp+28h+var_1C]
mov     ebx, 0FA0h
mov     edx, 64h ; 'd'
mov     eax, 28h ; '('
call    sub_42A70B
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+9Ch], 2
mov     byte ptr [ebp+0Ah], 5

loc_427471:
mov     ecx, [esp+28h+var_20]
mov     ecx, [ecx+0BEh]
sar     ecx, 10h
mov     eax, [esp+28h+var_20]
mov     eax, [eax+0A6h]
sar     eax, 10h
mov     ebx, 14h
sub     ebx, ecx
imul    eax, ebx
mov     edx, [esp+28h+var_20]
movsx   edx, word ptr [edx]
imul    edx, ecx
add     edx, eax
mov     esi, 14h
mov     eax, edx
sar     edx, 1Fh
idiv    esi
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     edx, [esp+28h+var_20]
mov     edx, [edx+0AAh]
sar     edx, 10h
imul    edx, ebx
mov     eax, [esp+28h+var_20]
mov     eax, [eax+2]
sar     eax, 10h
imul    eax, ecx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
shl     eax, 10h
mov     [ebp+24h], eax
mov     eax, ecx
shl     eax, 10h
mov     edx, eax
shl     eax, 3
sub     eax, edx
mov     edx, eax
imul    edx, ecx
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 12h
sub     edx, eax
sub     edx, 10000h
mov     [ebp+20h], edx
mov     eax, [ebp+1Ch]
sar     eax, 10h
mov     [ebp+14h], ax
mov     eax, [ebp+20h]
sar     eax, 10h
mov     [ebp+16h], ax
mov     eax, [ebp+24h]
sar     eax, 10h
mov     [ebp+18h], ax
jmp     loc_42786D      ; jumptable 004271A9 cases 7-14

loc_42752D:
mov     eax, (offset dword_5F8376+2)
call    sub_42834F
test    eax, eax
jz      short loc_42754B
mov     edi, [esp+28h+var_20]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     loc_42761A

loc_42754B:
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     edx, [esp+28h+var_20]
mov     [edx+0B0h], eax
mov     ecx, eax
neg     ecx
mov     [edx+0B0h], ecx
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
mov     [edx+0B4h], eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     edx, 400h
sub     edx, eax
mov     eax, [esp+28h+var_20]
mov     [eax+0B8h], edx
add     eax, 0B0h
mov     edx, esp
call    sub_4EF932
mov     edx, [esp-2]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 0Ch
mov     edx, ds:dword_5F8376
sar     edx, 10h
add     eax, edx
mov     edx, [esp+28h+var_20]
mov     [edx], ax
mov     edx, [esp+28h+var_28]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     edx, eax
shl     edx, 2
sar     edx, 0Ch
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
add     eax, edx
mov     edx, [esp+28h+var_20]
mov     [edx+2], ax
mov     edx, [esp+28h+var_28+2]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     edx, eax
shl     edx, 2
sar     edx, 0Ch
mov     eax, ds:dword_5F837A
sar     eax, 10h
add     eax, edx
mov     edx, [esp+28h+var_20]
mov     [edx+4], ax

loc_42761A:
xor     eax, eax
mov     al, [ebp+0A4h]
movsx   ax, ds:byte_510EBC[eax]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, [esp+28h+var_20]
call    sub_4DE552
jmp     loc_4271FC

loc_42765C:             ; jumptable 004271A9 case 4
cmp     byte ptr [ebp+0A4h], 17h
ja      short loc_4276AF
call    sub_4DE043
test    eax, eax
jz      short loc_4276AF
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FFh
mov     edx, [ebp+88h]
mov     [eax+88h], edx
lea     edi, [eax+0BCh]
lea     esi, [ebp+208h]
movsd
movsd
mov     word ptr [eax+0C2h], 0Fh
mov     ecx, 0Ch
lea     edi, [eax+8Ch]
lea     esi, [ebp+520h]
rep movsd

loc_4276AF:
mov     edx, 0FFFFFFFBh
mov     eax, ebp
call    sub_428875
test    eax, eax
jz      loc_42786D      ; jumptable 004271A9 cases 7-14
cmp     byte ptr [ebp+0A7h], 0
jge     loc_42786D      ; jumptable 004271A9 cases 7-14
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0
mov     byte ptr [eax+9Bh], 0
mov     word ptr [eax+9Ch], 0
mov     byte ptr [ebp+0Ah], 0Fh
jmp     loc_42786D      ; jumptable 004271A9 cases 7-14

loc_4276FD:             ; jumptable 004271A9 case 5
mov     eax, (offset dword_5F8376+2)
call    sub_42834F
test    eax, eax
jz      short loc_42771B
mov     edi, [esp+28h+var_20]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     loc_4277F6

loc_42771B:
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     edx, [esp+28h+var_20]
mov     [edx+0B0h], eax
mov     eax, edx
mov     edx, [edx+0B0h]
neg     edx
mov     [eax+0B0h], edx
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
mov     edx, [esp+28h+var_20]
mov     [edx+0B4h], eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     edx, 400h
sub     edx, eax
mov     eax, [esp+28h+var_20]
mov     [eax+0B8h], edx
add     eax, 0B0h
mov     edx, esp
call    sub_4EF932
mov     edx, [esp-2]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 0Ch
mov     edx, ds:dword_5F8376
sar     edx, 10h
add     eax, edx
mov     edx, [esp+28h+var_20]
mov     [edx], ax
mov     edx, [esp+28h+var_28]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 0Ch
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
add     eax, edx
mov     edx, [esp+28h+var_20]
mov     [edx+2], ax
mov     edx, [esp+28h+var_28+2]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 0Ch
mov     edx, ds:dword_5F837A
sar     edx, 10h
add     eax, edx
mov     edx, [esp+28h+var_20]
mov     [edx+4], ax

loc_4277F6:
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, [esp+28h+var_20]
call    sub_4DE552
add     [ebp+56h], ax
xor     edx, edx
mov     eax, ebp
call    sub_428875
cmp     byte ptr [ebp+0A7h], 0
jge     short loc_42786D ; jumptable 004271A9 cases 7-14
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0
mov     byte ptr [eax+9Bh], 10h
mov     byte ptr [ebp+0Ah], 3
jmp     short loc_42786D ; jumptable 004271A9 cases 7-14

loc_42784A:             ; jumptable 004271A9 case 6
mov     eax, [esp+28h+var_20]
mov     word ptr [eax], 0
mov     word ptr [eax+2], 0FFFFh
mov     word ptr [eax+4], 400h
jmp     short loc_4277F6

loc_427861:             ; jumptable 004271A9 case 15
mov     byte ptr [ebp+9], 1
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0

loc_42786D:             ; jumptable 004271A9 cases 7-14
add     esp, 10h
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8
sub_427189 endp

jpt_4278B9 dd offset def_4278B9 ; jump table for switch statement
dd offset loc_4278CD
dd offset loc_42792A
dd offset loc_4279AC
dd offset loc_427A59
dd offset loc_427A7B
dd offset loc_427A97
dd offset loc_427A97
dd offset loc_427A97



sub_427899 proc near

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
mov     ebp, eax
add     eax, 550h
mov     [esp+2Ch+var_1C], eax
mov     al, [ebp+0Ah]
cmp     al, 8           ; switch 9 cases
ja      short def_4278B9 ; jumptable 004278B9 default case, case 0
and     eax, 0FFh
jmp     jpt_4278B9[eax*4] ; switch jump

def_4278B9:             ; jumptable 004278B9 default case, case 0
mov     edi, [esp+2Ch+var_1C]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     short loc_427922

loc_4278CD:             ; jumptable 004278B9 case 1
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     esi, [ebp+14h]
mov     ecx, 80h
mov     edx, [esp+2Ch+var_1C]
mov     eax, esi
call    sub_4DE552
mov     edx, eax
test    eax, eax
jz      short loc_4278FB
add     [ebp+56h], ax
jmp     loc_427A97      ; jumptable 004278B9 cases 6-8

loc_4278FB:
mov     edx, esi
mov     eax, 1F1h
call    sub_4D8BC3
mov     eax, [esp+2Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 5

loc_42791B:
mov     byte ptr [eax+9Bh], 0

loc_427922:
inc     byte ptr [ebp+0Ah]
jmp     loc_427A97      ; jumptable 004278B9 cases 6-8

loc_42792A:             ; jumptable 004278B9 case 2
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     esi, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DE552
add     [ebp+56h], ax
xor     eax, eax
mov     al, [ebp+0A4h]
movsx   ax, ds:byte_510ED8[eax]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_427A97      ; jumptable 004278B9 cases 6-8
mov     edx, esi
mov     eax, 1FFh
call    sub_4D8BC3
mov     edx, esi
mov     eax, 1F2h
call    sub_4D8BC3
mov     eax, [esp+2Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 6
jmp     loc_42791B

loc_4279AC:             ; jumptable 004278B9 case 3
cmp     byte ptr [ebp+0A4h], 2
jnz     short loc_4279C2
lea     edx, [ebp+14h]
mov     eax, 1F3h
call    sub_4D8BC3

loc_4279C2:
mov     bl, [ebp+0A4h]
cmp     bl, 2
jb      short loc_427A37
cmp     bl, 0Ah
ja      short loc_427A37
test    bl, 1
jnz     short loc_427A37
call    sub_4DE043
mov     ecx, eax
test    eax, eax
jz      short loc_427A37
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 32h ; '2'
mov     byte ptr [eax+3], 3
mov     eax, [ebp+1E6h]
sar     eax, 10h
mov     edx, [ebp+12h]
sar     edx, 10h
sub     eax, edx
mov     [esp+2Ch+var_2C], eax
xor     edx, edx
mov     [esp+2Ch+var_28], edx
mov     edx, [ebp+1EAh]
sar     edx, 10h
mov     eax, [ebp+16h]
sar     eax, 10h
sub     edx, eax
mov     [esp+2Ch+var_24], edx
lea     edx, [ecx+44h]
mov     eax, esp
call    sub_4EF932
lea     edi, [ecx+14h]
lea     esi, [ebp+1E8h]
movsd
movsd
mov     word ptr [ecx+16h], 0FFFEh

loc_427A37:
cmp     byte ptr [ebp+0A7h], 0
jge     short loc_427A97 ; jumptable 004278B9 cases 6-8
mov     eax, [esp+2Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 7
jmp     loc_42791B

loc_427A59:             ; jumptable 004278B9 case 4
cmp     byte ptr [ebp+0A7h], 0
jge     short loc_427A97 ; jumptable 004278B9 cases 6-8
mov     eax, [esp+2Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0
jmp     loc_42791B

loc_427A7B:             ; jumptable 004278B9 case 5
mov     edx, 0FFFFFFFBh
mov     eax, ebp
call    sub_428875
test    eax, eax
jz      short loc_427A97 ; jumptable 004278B9 cases 6-8
mov     byte ptr [ebp+9], 1
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0

loc_427A97:             ; jumptable 004278B9 cases 6-8
add     esp, 14h
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8
sub_427899 endp

db 8Bh, 0C0h
jpt_427ADF dd offset def_427ADF ; jump table for switch statement
dd offset loc_427AF2
dd offset loc_427B69
dd offset loc_427BB7
dd offset loc_427BF6
dd offset loc_426B3E
dd offset loc_426B3E
dd offset loc_426B3E
dd offset loc_426B3E



sub_427AC5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 8           ; switch 9 cases
ja      short def_427ADF ; jumptable 00427ADF default case, case 0
and     eax, 0FFh
jmp     jpt_427ADF[eax*4] ; switch jump

def_427ADF:             ; jumptable 00427ADF default case, case 0
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     loc_427BAF

loc_427AF2:             ; jumptable 00427ADF case 1
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, edi
call    sub_4DE552
mov     edx, eax
test    eax, eax
jz      short loc_427B1C
add     [ebp+56h], ax
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8

loc_427B1C:
mov     word ptr [edi+98h], 1
mov     byte ptr [edi+9Ah], 0Fh
mov     byte ptr [edi+9Bh], 0
inc     byte ptr [ebp+0Ah]
call    sub_4DE043
test    eax, eax
jz      loc_426B3E      ; jumptable 00427ADF cases 5-8
mov     [edi+0D8h], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 1
mov     dword ptr [eax+0C8h], (offset dword_5F880A+2)
mov     [eax+0E4h], ebp
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8

loc_427B69:             ; jumptable 00427ADF case 2
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     [ebp+56h], ax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3E      ; jumptable 00427ADF cases 5-8
mov     word ptr [edi+98h], 1
mov     byte ptr [edi+9Ah], 10h

loc_427BA8:
mov     byte ptr [edi+9Bh], 0

loc_427BAF:
inc     byte ptr [ebp+0Ah]
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8

loc_427BB7:             ; jumptable 00427ADF case 3
cmp     byte ptr [ebp+0A4h], 9
jnz     short loc_427BD7
lea     edx, [ebp+14h]
mov     eax, 1FDh
call    sub_4D8BC3
mov     eax, [edi+0D8h]
mov     byte ptr [eax+0Ch], 1

loc_427BD7:
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3E      ; jumptable 00427ADF cases 5-8
mov     word ptr [edi+98h], 1
mov     byte ptr [edi+9Ah], 0
jmp     short loc_427BA8

loc_427BF6:             ; jumptable 00427ADF case 4
mov     byte ptr [ebp+9], 1
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8
sub_427AC5 endp

db 8Bh, 0C0h
jpt_427C6C dd offset def_427C6C ; jump table for switch statement
dd offset loc_427C82
dd offset loc_427DAD
dd offset loc_42808A
dd offset loc_428176
dd offset loc_4281CF
dd offset loc_428176
dd offset loc_4281CF
dd offset loc_428176
dd offset loc_4281CF
dd offset def_427C6C
dd offset loc_428176
dd offset loc_4281CF
dd offset loc_428176
dd offset loc_428241
dd offset loc_42828A
dd offset loc_4282AF



sub_427C4D proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 550h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0Ah]
cmp     al, 10h         ; switch 17 cases
ja      short def_427C6C ; jumptable 00427C6C default case, cases 0,10
and     eax, 0FFh
jmp     jpt_427C6C[eax*4] ; switch jump

def_427C6C:             ; jumptable 00427C6C default case, cases 0,10
mov     edi, [esp+1Ch+var_1C]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     loc_428082

loc_427C82:             ; jumptable 00427C6C case 1
mov     ecx, 80h
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
mov     edx, [esp+1Ch+var_1C]
lea     eax, [ebp+14h]
call    sub_4DE552
mov     esi, eax
test    eax, eax
jz      short loc_427CAD
add     [ebp+56h], ax
jmp     loc_426B3B      ; jumptable 00426A1D case 8

loc_427CAD:
call    sub_4DE13B
mov     edx, [esp+1Ch+var_1C]
mov     [edx+0D0h], eax
test    eax, eax
jz      loc_427D67
mov     byte ptr [eax], 5
mov     eax, [edx+0D0h]
mov     byte ptr [eax+2], 1Dh
mov     eax, [edx+0D0h]
mov     byte ptr [eax+0Dh], 80h
mov     eax, [edx+0D0h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [edx+0D0h]
mov     byte ptr [eax+0Fh], 1
mov     eax, [edx+0D0h]
mov     byte ptr [eax+3], 3
mov     eax, [ebp+1E6h]
sar     eax, 10h
mov     edx, [ebp+206h]
sar     edx, 10h
add     eax, edx
sar     eax, 1
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+48h], dx
mov     eax, [ebp+1E8h]
sar     eax, 10h
mov     edx, [ebp+208h]
sar     edx, 10h
add     eax, edx
sar     eax, 1
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+4Ah], dx
mov     eax, [ebp+1EAh]
sar     eax, 10h
mov     edx, [ebp+20Ah]
sar     edx, 10h
add     eax, edx
sar     eax, 1
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+4Ch], dx

loc_427D67:
lea     ecx, [ebp+14h]
mov     edx, ecx
mov     eax, 1FEh
call    sub_4D8BC3
mov     edx, ecx
mov     eax, 1F7h
call    sub_4D8BC3
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 8
mov     byte ptr [eax+9Bh], 0
inc     byte ptr [ebp+0Ah]
mov     word ptr [eax+0CCh], 0
jmp     loc_426B3B      ; jumptable 00426A1D case 8

loc_427DAD:             ; jumptable 00427C6C case 2
mov     eax, [esp+1Ch+var_1C]
inc     word ptr [eax+0CCh]
call    rand_
mov     esi, eax
and     esi, 3Fh
xor     ebx, ebx
jmp     short loc_427DCF

loc_427DC5:
inc     ebx
cmp     ebx, 2
jge     loc_427E49

loc_427DCF:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_427DC5
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+0Dh], 3
mov     byte ptr [eax+0Eh], 1
mov     byte ptr [eax+3], 22h ; '"'
mov     eax, dword ptr ds:unk_564C32[esi*2]
sar     eax, 10h
shl     eax, 8
sar     eax, 0Ch
mov     edi, [ebp+12h]
sar     edi, 10h
add     eax, edi
mov     [edx+48h], ax
call    rand_
xor     ah, ah
and     al, 3Fh
mov     edi, 0FFFFFFFFh
sub     edi, eax
mov     eax, edi
sub     eax, 1Eh
mov     [edx+4Ah], ax
mov     ecx, dword ptr ds:unk_56F78A[esi*2]
sar     ecx, 10h
shl     ecx, 8
sar     ecx, 0Ch
mov     eax, [ebp+16h]
sar     eax, 10h
add     eax, ecx
mov     [edx+4Ch], ax
add     esi, 15h
and     esi, 3Fh
jmp     loc_427DC5

loc_427E49:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+0E0h], 0
jz      short loc_427E85
cmp     word ptr [eax+0CCh], 50h ; 'P'
jnz     short loc_427E85
call    sub_4DE13B
test    eax, eax
jz      short loc_427E85
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 6
mov     byte ptr [eax+0Fh], 3
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd
mov     word ptr [eax+4Ah], 0FFFFh

loc_427E85:
mov     ch, [ebp+0A4h]
cmp     ch, 2Bh ; '+'
jb      loc_427FC6
jnz     short loc_427ED7
lea     edx, [ebp+14h]
mov     eax, 1F8h
call    sub_4D8BC3
call    sub_4DE043
test    eax, eax
jz      short loc_427ED7
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FCh
mov     word ptr [eax+14h], 0FFh
mov     word ptr [eax+16h], 10h
mov     word ptr [eax+18h], 10h
mov     word ptr [eax+1Ah], 500h
mov     byte ptr [eax+0Bh], 1Eh
mov     byte ptr [eax+0Ah], 0

loc_427ED7:
cmp     byte ptr [ebp+0A4h], 30h ; '0'
jnz     short loc_427F06
call    sub_4DE13B
test    eax, eax
jz      short loc_427F06
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 6
mov     byte ptr [eax+0Fh], 3
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd
mov     word ptr [eax+4Ah], 0FFFFh

loc_427F06:
mov     edx, [ebp+1E6h]
sar     edx, 10h
mov     eax, [ebp+206h]
sar     eax, 10h
add     eax, edx
sar     eax, 1
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+48h], dx
mov     edx, [ebp+1E8h]
sar     edx, 10h
mov     eax, [ebp+208h]
sar     eax, 10h
add     eax, edx
sar     eax, 1
sub     eax, 64h ; 'd'
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+4Ah], dx
mov     eax, [ebp+1EAh]
sar     eax, 10h
mov     edx, [ebp+20Ah]
sar     edx, 10h
add     eax, edx
sar     eax, 1
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+4Ch], dx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
add     byte ptr [eax+0Fh], 0Ah
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
cmp     byte ptr [eax+0Fh], 0DCh
jb      short loc_427F98
mov     byte ptr [eax+0Fh], 0DCh

loc_427F98:
test    byte ptr ds:word_77EAB6, 1
jz      short loc_427FC6
call    sub_4DE043
test    eax, eax
jz      short loc_427FC6
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 32h ; '2'
mov     byte ptr [eax+3], 0
mov     esi, [esp+1Ch+var_1C]
mov     esi, [esi+0D0h]
lea     edi, [eax+14h]
lea     esi, [esi+48h]
movsd
movsd

loc_427FC6:
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     [ebp+56h], ax
xor     eax, eax
mov     al, [ebp+0A4h]
movsx   ax, ds:byte_510EF4[eax]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+0CCh], 5Ah ; 'Z'
jle     loc_426B3B      ; jumptable 00426A1D case 8
call    sub_4DE043
test    eax, eax
jz      short loc_42805A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FCh
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 10h
mov     word ptr [eax+18h], 10h
mov     word ptr [eax+1Ah], 3E8h
mov     byte ptr [eax+0Bh], 1Eh
mov     byte ptr [eax+0Ah], 0

loc_42805A:
xor     ebx, ebx
xor     edx, edx
mov     eax, 20Ch
call    sub_4D89E4
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 9

loc_42807B:
mov     byte ptr [eax+9Bh], 0

loc_428082:
inc     byte ptr [ebp+0Ah]
jmp     loc_426B3B      ; jumptable 00426A1D case 8

loc_42808A:             ; jumptable 00427C6C case 3
mov     ch, [ebp+0A4h]
cmp     ch, 8
jnb     loc_42811A
mov     edx, [ebp+1E6h]
sar     edx, 10h
mov     eax, [ebp+206h]
sar     eax, 10h
add     eax, edx
sar     eax, 1
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+48h], dx
mov     eax, [ebp+1E8h]
sar     eax, 10h
mov     edx, [ebp+208h]
sar     edx, 10h
add     eax, edx
sar     eax, 1
sub     eax, 64h ; 'd'
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+4Ah], dx
mov     edx, [ebp+1EAh]
sar     edx, 10h
mov     eax, [ebp+20Ah]
sar     eax, 10h
add     eax, edx
sar     eax, 1
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+4Ch], dx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
sub     byte ptr [eax+0Dh], 10h
jmp     short loc_42812A

loc_42811A:
jnz     short loc_42812A
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
call    sub_4DE3EA

loc_42812A:
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     [ebp+56h], ax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
call    sub_4288D8
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0Ah
jmp     loc_42807B

loc_428176:             ; jumptable 00427C6C cases 4,6,8,11,13
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
sub     eax, 40h ; '@'
add     [ebp+56h], ax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
call    sub_4288D8
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0Ch
mov     byte ptr [eax+9Bh], 0
lea     ecx, [ebp+208h]
jmp     short loc_428228

loc_4281CF:             ; jumptable 00427C6C cases 5,7,9,12
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     eax, 40h ; '@'
add     [ebp+56h], ax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
call    sub_4288D8
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0Bh

loc_42821B:
mov     byte ptr [eax+9Bh], 0
lea     ecx, [ebp+1E8h]

loc_428228:
mov     ebx, 0FA0h
mov     edx, 64h ; 'd'
mov     eax, 1Eh
call    sub_42A70B
jmp     loc_428082

loc_428241:             ; jumptable 00427C6C case 14
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     eax, 40h ; '@'
add     [ebp+56h], ax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0Eh
jmp     short loc_42821B

loc_42828A:             ; jumptable 00427C6C case 15
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0
jmp     loc_42807B

loc_4282AF:             ; jumptable 00427C6C case 16
mov     edx, 0FFFFFFFBh
mov     eax, ebp
call    sub_428875
test    eax, eax
jz      loc_426B3B      ; jumptable 00426A1D case 8
mov     byte ptr [ebp+9], 1
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0
jmp     loc_426B3B      ; jumptable 00426A1D case 8
sub_427C4D endp




sub_4282D4 proc near
mov     byte ptr [eax+8], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
retn
sub_4282D4 endp




sub_4282E5 proc near
push    ebx
push    ecx
push    edx
movsx   edx, word ptr [eax]
mov     eax, [eax+2]
sar     eax, 10h
sub     eax, 400h
cmp     edx, 538h
jge     short loc_428349
cmp     eax, 538h
jge     short loc_428349
cmp     edx, 0FFFFFAC8h
jle     short loc_428349
cmp     eax, 0FFFFFAC8h
jle     short loc_428349
lea     ecx, [edx+8E5h]
cmp     eax, ecx
jge     short loc_428349
mov     ecx, edx
neg     ecx
lea     ebx, [ecx+8E5h]
cmp     eax, ebx
jge     short loc_428349
sub     edx, 8E5h
cmp     eax, edx
jle     short loc_428349
sub     ecx, 8E5h
cmp     eax, ecx
jle     short loc_428349
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_428349:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4282E5 endp




sub_42834F proc near
push    ebx
push    ecx
push    edx
movsx   edx, word ptr [eax]
mov     eax, [eax+2]
sar     eax, 10h
sub     eax, 400h
cmp     edx, 59Ch
jge     short loc_4283B3
cmp     eax, 59Ch
jge     short loc_4283B3
cmp     edx, 0FFFFFA64h
jle     short loc_4283B3
cmp     eax, 0FFFFFA64h
jle     short loc_4283B3
lea     ecx, [edx+973h]
cmp     eax, ecx
jge     short loc_4283B3
mov     ecx, edx
neg     ecx
lea     ebx, [ecx+973h]
cmp     eax, ebx
jge     short loc_4283B3
sub     edx, 973h
cmp     eax, edx
jle     short loc_4283B3
sub     ecx, 973h
cmp     eax, ecx
jle     short loc_4283B3
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4283B3:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_42834F endp




sub_4283B9 proc near
push    edx
movsx   edx, word ptr [eax]
mov     eax, [eax+2]
sar     eax, 10h
sub     eax, 400h
imul    edx, edx
imul    eax, eax
add     edx, eax
cmp     edx, 0C5C10h
jge     short loc_4283DF
mov     eax, 1
pop     edx
retn

loc_4283DF:
xor     eax, eax
pop     edx
retn
sub_4283B9 endp




sub_4283E3 proc near

var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     esi, eax
mov     [esp+24h+var_18], edx
lea     ebp, [eax+550h]
xor     edi, edi

loc_4283F9:
mov     ecx, edi
shl     ecx, 3
mov     edx, offset unk_510F2C
add     edx, ecx
xor     eax, eax
mov     al, ds:byte_510F33[ecx]
mov     [esp+24h+var_1C], eax
shl     eax, 2
sub     eax, [esp+24h+var_1C]
shl     eax, 4
mov     [esp+24h+var_1C], eax
lea     eax, [esi+250h]
add     eax, [esp+24h+var_1C]
mov     ebx, esp
call    sub_4EF2DC
xor     eax, eax
mov     al, ds:byte_510F33[ecx]
shl     eax, 3
lea     edx, [esi+eax]
mov     ax, [edx+190h]
add     [esp+24h+var_24], ax
mov     ax, [edx+192h]
add     [esp+24h+var_22], ax
mov     ax, [edx+194h]
add     [esp+24h+var_20], ax
push    0
push    0
mov     eax, [ebp+0E0h]
shl     eax, 4
mov     edx, [esp+2Ch+var_18]
mov     ebx, ds:dword_510FBC[eax+edx*4]
push    ebx
lea     eax, [ebp+8]
add     eax, ecx
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
xor     edx, edx
mov     dl, ds:byte_510F32[ecx]
mov     ecx, 8000h
xor     ebx, ebx
lea     eax, [esp+38h+var_24]
call    sub_4E01FC
inc     edi
cmp     edi, 8
jl      loc_4283F9
mov     edi, 8

loc_4284AD:
mov     ecx, edi
shl     ecx, 3
mov     eax, offset unk_510F2C
add     eax, ecx
mov     [esp+24h+var_1C], eax
xor     edx, edx
mov     dl, ds:byte_510F33[ecx]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, eax
shl     edx, 4
lea     eax, [esi+250h]
add     eax, edx
mov     ebx, esp
mov     edx, [esp+24h+var_1C]
call    sub_4EF2DC
xor     eax, eax
mov     al, ds:byte_510F33[ecx]
shl     eax, 3
lea     edx, [esi+eax]
mov     ax, [edx+190h]
add     [esp+24h+var_24], ax
mov     ax, [edx+192h]
add     [esp+24h+var_22], ax
mov     ax, [edx+194h]
add     [esp+24h+var_20], ax
push    80h
push    0
mov     eax, [ebp+0E0h]
shl     eax, 4
mov     edx, [esp+2Ch+var_18]
mov     ebx, ds:dword_510FDC[eax+edx*4]
push    ebx
lea     eax, [ebp+8]
add     eax, ecx
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
xor     edx, edx
mov     dl, ds:byte_510F32[ecx]
mov     ecx, 8000h
xor     ebx, ebx
lea     eax, [esp+38h+var_24]
call    sub_4E01FC
inc     edi
cmp     edi, 12h
jl      loc_4284AD
add     esp, 10h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4283E3 endp




sub_428568 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     ecx, [eax+550h]
mov     ax, [eax+6Eh]
mov     [ebx+0B2h], ax
xor     eax, eax
jmp     short loc_42858A

loc_428584:
inc     eax
cmp     eax, 12h
jge     short loc_428598

loc_42858A:
mov     edx, eax
mov     esi, [ecx+edx*8+8]
and     esi, 0FFFFFFh
jz      short loc_428584

loc_428598:
xor     eax, eax

loc_42859A:
mov     edx, eax
mov     dword ptr [ecx+edx*8+8], 0
inc     eax
cmp     eax, 12h
jl      short loc_42859A
mov     eax, [ebx+6Ch]
sar     eax, 10h
cmp     esi, eax
jle     short loc_4285EA
cmp     ds:word_5F83D2, 0
jl      short loc_4285E2
mov     ds:byte_5F88AD, 1
mov     word ptr [ebx+6Eh], 0
mov     word ptr [ecx+98h], 0FFFFh
mov     byte ptr [ebx+9], 7
mov     byte ptr [ebx+0Ah], 0
mov     byte ptr [ebx+0Bh], 0
jmp     short loc_428613

loc_4285E2:
mov     word ptr [ebx+6Eh], 0
jmp     short loc_428613

loc_4285EA:
test    esi, esi
jz      short loc_42860A
lea     edx, [ebx+14h]
mov     eax, 0A0h
call    sub_4D8BC3
sub     [ebx+6Eh], si
mov     word ptr [ebx+15Eh], 7FFFh
jmp     short loc_428613

loc_42860A:
mov     word ptr [ebx+15Eh], 4210h

loc_428613:
mov     eax, [ebx+6Ch]
sar     eax, 10h
mov     edx, [ebx+0B0h]
sar     edx, 10h
cmp     eax, edx
jz      loc_426B3F
mov     esi, [ebx+0AEh]
sar     esi, 10h
sar     esi, 6
mov     edx, esi
shl     edx, 2
sub     edx, esi
add     edx, edx
cmp     eax, edx
jg      short loc_428669
mov     al, [ecx+0DCh]
test    al, 1
jnz     loc_426B3F
mov     ah, al
or      ah, 1
mov     [ecx+0DCh], ah
lea     edx, [ebx+14h]
mov     eax, 204h
jmp     loc_42886B

loc_428669:
mov     edx, esi
shl     edx, 2
sub     edx, esi
shl     edx, 2
cmp     eax, edx
jg      short loc_4286A4
mov     eax, [ecx+0DCh]
shr     eax, 1
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 2
call    rand_
test    al, 1
jz      short loc_428703

loc_428697:
lea     edx, [ebx+14h]

loc_42869A:
mov     eax, 1FAh
jmp     loc_42886B

loc_4286A4:
mov     edx, esi
shl     edx, 4
cmp     eax, edx
jg      short loc_4286D2
mov     eax, [ecx+0DCh]
shr     eax, 2
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 4
lea     edx, [ebx+14h]
mov     eax, 203h
jmp     loc_42886B

loc_4286D2:
mov     edx, esi
shl     edx, 2
add     edx, esi
shl     edx, 2
sub     edx, esi
cmp     eax, edx
jg      short loc_42870B
mov     eax, [ecx+0DCh]
shr     eax, 3
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 8

loc_4286FA:
call    rand_
test    al, 1
jnz     short loc_428697

loc_428703:
lea     edx, [ebx+14h]
jmp     loc_42879A

