loc_4C02BB:
call    sub_4DE227
mov     ebx, eax
test    eax, eax
jz      short loc_4C031D
mov     al, [ecx]
mov     [ebx], al
mov     al, [ecx+2]
mov     [ebx+2], al
mov     byte ptr [ebx+3], 1
mov     byte ptr [ebx+0Ch], 0
mov     byte ptr [ebx+0Dh], 0
mov     byte ptr [ebx+0Eh], 0
mov     byte ptr [ebx+0Fh], 0
mov     ax, [ecx+48h]
mov     [ebx+48h], ax
mov     ax, [ecx+4Ah]
mov     [ebx+4Ah], ax
mov     ax, [ecx+4Ch]
mov     [ebx+4Ch], ax
lea     edx, [ebx+3]
mov     eax, ebx
call    sub_4DD0F8
mov     dword ptr [ebx+50h], 2C808080h
mov     dword ptr [ebx+5Ch], 0
inc     byte ptr [ebx+8]
mov     [ecx+58h], ebx
inc     byte ptr [ecx+0Dh]

loc_4C031D:
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_4C0264 endp




; int __fastcall sub_4C0324(int, int)
sub_4C0324 proc near
push    ecx             ; int
push    edx             ; int
mov     edx, eax
add     dword ptr [eax+5Ch], 20h ; ' '
lea     ecx, [eax+18h]
mov     eax, ecx
call    sub_4EF184
mov     eax, [edx+5Ch]
mov     edx, ecx
call    sub_4EF50D
mov     edx, offset unk_5372A4
mov     eax, ecx
call    sub_4EF689
pop     edx
pop     ecx
retn
sub_4C0324 endp




sub_4C034F proc near
push    edx
mov     edx, eax
call    sub_4DE477
cmp     byte ptr [edx+0Dh], 0
jz      short loc_4C0365
mov     eax, [edx+58h]
call    sub_4DE477

loc_4C0365:
xor     edx, edx

loc_4C0367:
mov     eax, ds:dword_55D0A4[edx*4]
call    sub_4DE3EA
inc     edx
cmp     edx, 7
jb      short loc_4C0367
pop     edx
retn
sub_4C034F endp




sub_4C037B proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4C0381[edx*4]
pop     edx
retn
sub_4C037B endp




sub_4C038A proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C0390[edx*4]
pop     edx
retn
sub_4C038A endp




sub_4C0399 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ecx, offset byte_5F8364
lea     edi, [eax+3Ch]
mov     ah, [eax]
or      ah, 6
mov     [esi], ah
lea     edx, [esi+18h]
mov     eax, edx
call    sub_4EF184
mov     word ptr [edi+4], 0
movsx   ax, byte ptr [esi+0Fh]
shl     eax, 4
mov     [edi+6], ax
mov     word ptr [edi+8], 0
lea     eax, [edi+4]
call    sub_4EF638
cmp     ds:byte_77E7D4, 0Eh
jnz     short loc_4C03E7
xor     edx, edx
jmp     short loc_4C03F1

loc_4C03E7:
lea     edx, [esi+0Ch]
cmp     ds:byte_77E7D4, 14h

loc_4C03F1:
mov     eax, esi
call    sub_4DD0F8
mov     al, [esi+0Dh]
mov     [esi+0Bh], al
mov     bh, ds:byte_77E7D4
cmp     bh, 0Eh
jz      short loc_4C0424
cmp     bh, 14h
jz      short loc_4C0424
cmp     bh, 13h
jnz     loc_4C0634
cmp     byte ptr ds:dword_77E7D5, 0
jnz     loc_4C0634

loc_4C0424:
mov     dword ptr [esi+10h], offset unk_5372CC
test    byte ptr [esi+5], 0Fh
jnz     short loc_4C043B
cmp     ds:word_77E918, 0
jz      short loc_4C046F

loc_4C043B:
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     dh, ds:byte_77E7D4
cmp     dh, 0Eh
jnz     short loc_4C0456
mov     word ptr [esi+4Ah], 0FE7Fh
jmp     short loc_4C0466

loc_4C0456:
cmp     dh, 14h
jz      short loc_4C0460
cmp     dh, 13h
jnz     short loc_4C0466

loc_4C0460:
mov     word ptr [esi+4Ah], 0FFFFh

loc_4C0466:
mov     byte ptr [esi+0Eh], 8
jmp     loc_4C06C1

loc_4C046F:
mov     edx, [esi+46h]
sar     edx, 10h
mov     eax, [ecx+12h]
sar     eax, 10h
cmp     edx, eax
jnz     loc_4C0603
mov     edx, [esi+4Ah]
sar     edx, 10h
mov     eax, [ecx+16h]
sar     eax, 10h
cmp     edx, eax
jnz     loc_4C0603
mov     ax, [esi+48h]
mov     [ecx+14h], ax
mov     [ecx+538h], ax
mov     ax, [esi+4Ah]
mov     [ecx+16h], ax
mov     [ecx+53Ah], ax
mov     ax, [esi+4Ch]
mov     [ecx+18h], ax
mov     [ecx+53Ch], ax
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
mov     ax, [edi+6]
add     ah, 8
and     ah, 0Fh
mov     [ecx+56h], ax
mov     [ecx+542h], ax
mov     eax, ecx
call    sub_4B55D5
cmp     eax, 1
jnz     loc_4C06D7
cmp     byte ptr [ecx+8], 3
jz      loc_4C06D7
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     ax, [esi+48h]
mov     [ecx+14h], ax
mov     [ecx+538h], ax
mov     ax, [esi+4Ah]
mov     [ecx+16h], ax
mov     [ecx+53Ah], ax
mov     ax, [esi+4Ch]
mov     [ecx+18h], ax
mov     [ecx+53Ch], ax
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
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 0
mov     ax, [edi+6]
add     ah, 8
and     ah, 0Fh
mov     [ecx+56h], ax
mov     [ecx+542h], ax
mov     byte ptr [esi+0Eh], 8
mov     byte ptr [esi+9], 2
lea     ebp, [esi+48h]
mov     ecx, 0FFFFh
xor     ebx, ebx
mov     edx, offset unk_5372C0
mov     eax, ebp
call    sub_42C5B7
mov     [edi], eax
mov     edx, ebp
mov     eax, 176h
call    sub_4D8BC3

loc_4C05F5:
mov     ds:word_77E918, 1
jmp     loc_4C06C1

loc_4C0603:
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     cl, ds:byte_77E7D4
cmp     cl, 0Eh
jnz     short loc_4C061E
mov     word ptr [esi+4Ah], 0FE7Fh
jmp     short loc_4C062E

loc_4C061E:
cmp     cl, 14h
jz      short loc_4C0628
cmp     cl, 13h
jnz     short loc_4C062E

loc_4C0628:
mov     word ptr [esi+4Ah], 0FFFFh

loc_4C062E:
mov     byte ptr [esi+0Eh], 8
jmp     short loc_4C05F5

loc_4C0634:
cmp     byte ptr [esi+0Fh], 0
jnz     short loc_4C0643
mov     dword ptr [esi+10h], offset unk_5372CC
jmp     short loc_4C064A

loc_4C0643:
mov     dword ptr [esi+10h], offset unk_5372D8

loc_4C064A:
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     al, [esi+5]
and     al, 0Fh
cmp     al, 2
jnz     short loc_4C0687
cmp     ds:word_77E91E, 0
jz      short loc_4C067D
mov     eax, [esi+48h]
sar     eax, 10h
mov     [edi], eax
mov     ax, ds:word_77E91E
mov     [esi+4Ah], ax
mov     byte ptr [esi+5], 11h
jmp     short loc_4C06C1

loc_4C067D:
mov     eax, [esi+48h]
sar     eax, 10h
mov     [edi], eax
jmp     short loc_4C06C1

loc_4C0687:
mov     eax, [esi+48h]
sar     eax, 10h
mov     [edi], eax
cmp     byte ptr [esi+0Bh], 0
jnz     short loc_4C06A7
mov     bx, ds:word_77E91A
test    bx, bx
jz      short loc_4C06C1
mov     [esi+4Ah], bx
jmp     short loc_4C06B7

loc_4C06A7:
mov     dx, ds:word_77E91C
test    dx, dx
jz      short loc_4C06C1
mov     [esi+4Ah], dx

loc_4C06B7:
mov     al, [esi+5]
and     al, 0F0h
or      al, 2
mov     [esi+5], al

loc_4C06C1:
mov     byte ptr [esi+8], 1
mov     dword ptr [esi+50h], 2C808080h
mov     byte ptr [esi+0Dh], 78h ; 'x'
mov     eax, esi
call    sub_4C06DE

loc_4C06D7:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C0399 endp




sub_4C06DE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4C06E9[edx*4]

loc_4C06F0:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 5
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C06DE endp



; Attributes: thunk

sub_4C0708 proc near
jmp     sub_4DE477
sub_4C0708 endp




sub_4C070D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
mov     ecx, offset byte_5F8364
lea     esi, [eax+3Ch]
cmp     ds:byte_77E7D4, 13h
jnz     short loc_4C0736
mov     eax, 64Bh
call    sub_47E888
test    eax, eax
jnz     loc_4C0990

loc_4C0736:
cmp     byte ptr [ebx+0Ah], 1
jz      short loc_4C074E
mov     eax, 49h ; 'I'
call    sub_47E888
test    eax, eax
jz      short loc_4C074E
xor     edx, edx
jmp     short loc_4C0754

loc_4C074E:
mov     edx, ds:dword_55BD7C

loc_4C0754:
cmp     byte ptr [ebx+0Ah], 0
jnz     loc_4C07FA
mov     eax, [esi+4]
sar     eax, 10h
lea     esi, [eax+620h]
and     esi, 0FFFh
mov     edx, [ecx+54h]
sar     edx, 10h
cmp     edx, esi
jle     loc_4C0990
add     eax, 9E0h
and     eax, 0FFFh
cmp     edx, eax
jge     loc_4C0990
mov     edx, [ecx+184h]
cmp     ebx, edx
jnz     loc_4C0990
mov     byte ptr [edx+0Ah], 1
mov     dword ptr [ecx+184h], 0
or      byte ptr [ecx+0BDh], 40h
mov     dh, ds:byte_77E7D4
cmp     dh, 0Eh
jz      short loc_4C07C3
cmp     dh, 14h
jnz     short loc_4C07D4

loc_4C07C3:
mov     edx, 13h

loc_4C07C8:
xor     eax, eax

loc_4C07CA:
call    sub_4A0E24
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C07D4:
cmp     byte ptr [ebx+5], 0
jnz     short loc_4C07E1
mov     edx, 17h
jmp     short loc_4C07C8

loc_4C07E1:
mov     eax, 49h ; 'I'
call    sub_47E888
test    eax, eax
jnz     loc_4C0990
mov     edx, 6
jmp     short loc_4C07CA

loc_4C07FA:
test    edx, 80000000h
jnz     loc_4C0990
test    dl, 0FFh
jnz     loc_4C0985
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      loc_4C0990
mov     dl, ds:byte_77E7D4
cmp     dl, 0Eh
jz      short loc_4C083C
cmp     dl, 14h
jz      short loc_4C083C
cmp     dl, 13h
jnz     short loc_4C0860
cmp     byte ptr ds:dword_77E7D5, 0
jnz     short loc_4C0860

loc_4C083C:
mov     byte ptr [ebx+9], 1
mov     al, [ebx+0Eh]
mov     ah, 0FFh
imul    ah
mov     [ebx+0Eh], al
mov     byte ptr [ebx+0Dh], 9Fh
lea     edx, [ebx+48h]

loc_4C0851:
mov     eax, 178h

loc_4C0856:
call    sub_4D8BC3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C0860:
mov     eax, 49h ; 'I'
call    sub_47E888
test    eax, eax
jz      loc_4C0985
mov     al, [ebx+5]
and     al, 0Fh
lea     edx, [ebx+48h]
cmp     al, 2
jnz     loc_4C0978
mov     eax, ecx
call    sub_4B55D5
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     ax, [ecx+14h]
mov     [ecx+538h], ax
mov     ax, [ecx+16h]
mov     [ecx+53Ah], ax
mov     ax, [ecx+18h]
mov     [ecx+53Ch], ax
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
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 0
mov     ax, [ecx+56h]
mov     [ecx+542h], ax
test    byte ptr [ebx+5], 0F0h
jz      short loc_4C096E
mov     eax, 6Bh ; 'k'
call    sub_47E888
test    eax, eax
jz      short loc_4C0942
mov     byte ptr [ebx+0Eh], 4
mov     byte ptr [ebx+9], 2
mov     word ptr [ecx+542h], 7FFh

loc_4C0938:
mov     eax, 176h
jmp     loc_4C0856

loc_4C0942:
mov     byte ptr [ebx+0Eh], 0Ch
mov     eax, 6Bh ; 'k'
call    sub_47E8B8
mov     edx, 13h
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ebx+9], 5
mov     word ptr [ecx+542h], 7FFh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C096E:
mov     byte ptr [ebx+0Eh], 0Ch
mov     byte ptr [ebx+9], 2
jmp     short loc_4C0938

loc_4C0978:
mov     byte ptr [ebx+0Eh], 0F4h
mov     byte ptr [ebx+9], 1
jmp     loc_4C0851

loc_4C0985:
and     byte ptr [ecx+0BDh], 0BFh
mov     byte ptr [ebx+0Ah], 0

loc_4C0990:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C070D endp




sub_4C0995 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+3Ch]
mov     ebx, offset byte_5F8364
mov     ah, ds:byte_77E7D4
cmp     ah, 0Eh
jz      short loc_4C09C1
cmp     ah, 14h
jz      short loc_4C09C1
cmp     ah, 13h
jnz     short loc_4C09EB
cmp     byte ptr ds:dword_77E7D5, 0
jnz     short loc_4C09EB

loc_4C09C1:
cmp     byte ptr [ecx+0Dh], 30h ; '0'
jz      short loc_4C09D8
movsx   ax, byte ptr [ecx+0Eh]
add     [ecx+4Ah], ax
dec     byte ptr [ecx+0Dh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C09D8:
mov     eax, 0Ah
call    sub_49E0D7
mov     byte ptr [ecx+9], 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C09EB:
movsx   ax, byte ptr [ecx+0Eh]
add     [ecx+4Ah], ax
lea     esi, [ecx+48h]
test    byte ptr [ecx+5], 0F0h
jnz     short loc_4C0A6B
mov     eax, [ecx+48h]
sar     eax, 10h
sub     eax, [edx]
call    abs_
cmp     eax, 2E0h
jl      loc_4C0AB3
mov     ax, [edx]
sub     eax, 2E0h
mov     [ecx+4Ah], ax
mov     byte ptr [ecx+9], 0
and     byte ptr [ebx+0BDh], 0BFh
mov     byte ptr [ecx+0Ah], 0
mov     edx, esi
mov     eax, 179h
call    sub_4D8BC3
mov     al, [ecx+5]
and     al, 0F0h
or      al, 2
mov     [ecx+5], al
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_4C0A5C
mov     ax, [ecx+4Ah]
mov     ds:word_77E91A, ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C0A5C:
mov     ax, [ecx+4Ah]
mov     ds:word_77E91C, ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C0A6B:
mov     eax, [ecx+48h]
sar     eax, 10h
cmp     eax, [edx]
jg      short loc_4C0AB3
mov     ax, [ecx+4Ah]
sub     ax, [edx]
add     eax, 10h
add     [ecx+4Ah], ax
mov     byte ptr [ecx+9], 0
and     byte ptr [ebx+0BDh], 0BFh
mov     byte ptr [ecx+0Ah], 0
mov     edx, esi
mov     eax, 179h
call    sub_4D8BC3
mov     al, [ecx+5]
and     al, 0F0h
or      al, 2
mov     [ecx+5], al
xor     ebx, ebx
mov     ds:word_77E91E, bx

loc_4C0AB3:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C0995 endp




sub_4C0AB8 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     edx, offset byte_5F8364
lea     ebx, [eax+3Ch]
mov     ah, ds:byte_77E7D4
cmp     ah, 0Eh
jz      short loc_4C0AE4
cmp     ah, 14h
jz      short loc_4C0AE4
cmp     ah, 13h
jnz     short loc_4C0B3B
cmp     byte ptr ds:dword_77E7D5, 0
jnz     short loc_4C0B3B

loc_4C0AE4:
movsx   ax, byte ptr [ecx+0Eh]
add     [ecx+4Ah], ax
movsx   ax, byte ptr [ecx+0Eh]
add     [edx+53Ah], ax
mov     eax, [edx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+52Ch], eax
mov     eax, [ecx+48h]
sar     eax, 10h
cmp     eax, [ebx]
jl      loc_4C0C43
mov     eax, edx
call    sub_4B565A
and     byte ptr [edx+0BDh], 0BFh
mov     ax, [ebx]
mov     [ecx+4Ah], ax
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
jmp     loc_4C0C36

loc_4C0B3B:
test    byte ptr [ecx+5], 0F0h
jnz     loc_4C0BC9
movsx   ax, byte ptr [ecx+0Eh]
add     [ecx+4Ah], ax
movsx   ax, byte ptr [ecx+0Eh]
add     [edx+53Ah], ax
mov     eax, [edx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+52Ch], eax
mov     eax, [ecx+48h]
sar     eax, 10h
cmp     eax, [ebx]
jl      loc_4C0C43
mov     eax, edx
call    sub_4B565A
mov     byte ptr [ecx+9], 0
and     byte ptr [edx+0BDh], 0BFh
mov     byte ptr [ecx+0Ah], 0
mov     al, [ecx+5]
and     al, 0F0h
or      al, 1
mov     [ecx+5], al
lea     edx, [ecx+48h]
mov     eax, 177h
call    sub_4D8BC3
mov     al, [ecx+0Bh]
test    al, al
jnz     short loc_4C0BBB
xor     ah, ah
mov     ds:word_77E91A, ax
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C0BBB:
xor     edi, edi
mov     ds:word_77E91C, di
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C0BC9:
cmp     word ptr [edx+56h], 7FFh
jnz     short loc_4C0BF8
movsx   ax, byte ptr [ecx+0Eh]
add     [ecx+4Ah], ax
movsx   ax, byte ptr [ecx+0Eh]
add     [edx+53Ah], ax
mov     eax, [edx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+52Ch], eax

loc_4C0BF8:
mov     eax, [ecx+48h]
sar     eax, 10h
sub     eax, [ebx]
call    abs_
cmp     eax, 460h
jl      short loc_4C0C43
mov     eax, edx
call    sub_4B565A
mov     byte ptr [ecx+9], 0
and     byte ptr [edx+0BDh], 0BFh
mov     byte ptr [ecx+0Ah], 0
mov     ax, [ecx+4Ah]
mov     ds:word_77E91E, ax
mov     al, [ecx+5]
and     al, 0F0h
or      al, 1
mov     [ecx+5], al

loc_4C0C36:
lea     edx, [ecx+48h]
mov     eax, 177h
call    sub_4D8BC3

loc_4C0C43:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C0AB8 endp




sub_4C0C48 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, offset dword_77EA48
mov     byte ptr ds:dword_77EA5A+2, 1
lea     edx, [ecx+48h]
mov     eax, 179h
call    sub_4D8BC3
mov     dl, ds:byte_77E7D4
cmp     dl, 0Eh
jnz     short loc_4C0CA1
mov     ds:byte_77EA5E, 0Ch
xor     al, al
mov     ds:byte_77EA5F, al
mov     word ptr ds:dword_77EA4E+2, 0BECh
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 13FDh
xor     ah, ah
jmp     loc_4C0D39

loc_4C0CA1:
cmp     dl, 14h
jnz     short loc_4C0CD3
mov     ds:byte_77EA5E, 0Bh
mov     ds:byte_77EA5F, 2
mov     word ptr ds:dword_77EA4E+2, 0FE00h
mov     word ptr ds:dword_77EA52, 0FEFFh
mov     word ptr ds:dword_77EA52+2, 0FD8Fh
xor     eax, eax
jmp     short loc_4C0D39

loc_4C0CD3:
mov     al, ds:byte_77E7FF
test    al, al
jz      short loc_4C0D10
mov     ds:byte_77EA5E, 13h
mov     ds:byte_77EA5F, 0Ch
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0FE40h
mov     word ptr ds:dword_77EA5A, 800h
jmp     short loc_4C0D3F

loc_4C0D10:
mov     ds:byte_77EA5E, 0Ah
mov     ds:byte_77EA5F, al
mov     word ptr ds:dword_77EA4E+2, 0E600h
mov     word ptr ds:dword_77EA52, 0F9FFh
mov     word ptr ds:dword_77EA52+2, 17E0h
xor     ah, ah

loc_4C0D39:
mov     word ptr ds:dword_77EA5A, ax

loc_4C0D3F:
mov     byte ptr [ebx+15h], 0
mov     byte ptr [ebx+19h], 0FFh
mov     byte ptr [ebx+18h], 2
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn
sub_4C0C48 endp




sub_4C0D52 proc near
push    edx
mov     ah, byte ptr ds:dword_77EA5A+2
cmp     ah, 2
jnz     short loc_4C0D7C
cmp     ds:word_6E23D6, 0
jnz     short loc_4C0D7C
mov     dl, ah
inc     dl
mov     byte ptr ds:dword_77EA5A+2, dl
mov     eax, offset byte_5F8364
call    sub_4B565A

loc_4C0D7C:
pop     edx
retn
sub_4C0D52 endp




sub_4C0D7E proc near
push    edx
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4C0DA9
mov     byte ptr [eax+0Eh], 4
mov     byte ptr [eax+9], 2
lea     edx, [eax+48h]
mov     eax, 176h
call    sub_4D8BC3
mov     edx, 1Bh
xor     eax, eax
call    sub_4A0E24

loc_4C0DA9:
pop     edx
retn
sub_4C0D7E endp




sub_4C0DAB proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C0DB1[edx*4]
pop     edx
retn
sub_4C0DAB endp




sub_4C0DBA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+3Ch]
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     ebx, [ecx+18h]
mov     eax, ebx
call    sub_4EF184
mov     word ptr [edx+4], 0
mov     word ptr [edx+6], 0
mov     word ptr [edx+8], 0
lea     eax, [edx+4]
mov     edx, ebx
call    sub_4EF638
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     dword ptr [ecx+50h], 2C808080h
mov     eax, ecx
call    sub_4C0E13
pop     edx
pop     ecx
pop     ebx
retn
sub_4C0DBA endp




sub_4C0E13 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4C0E19[edx*4]
pop     edx
sub_4C0E13 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_96]



sub_4C0E22 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     ds:byte_5F83DA, 0
jz      loc_4C06F0
mov     edx, ds:dword_5F8424
cmp     esi, edx
jnz     loc_4C06F0
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+3], 2
add     edx, 48h ; 'H'
mov     eax, 113h
call    sub_4D8BC3
lea     edx, [esi+3]
mov     eax, esi
call    sub_4DD0F8
mov     byte ptr [esi+0Dh], 1Eh
jmp     loc_4C06F0
sub_4C0E22 endp




sub_4C0E6B proc near

var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
cmp     byte ptr [eax+0Dh], 0
jz      short loc_4C0E97
dec     byte ptr [ebp+0Dh]
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 5
mov     eax, ebp
call    sub_432697
jmp     loc_4C10BC

loc_4C0E97:
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
sub     [esp+20h+var_1E], 301h
sub     [esp+20h+var_20], 3Eh ; '>'
sub     [esp+20h+var_1C], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 4
xor     eax, eax
call    sub_43C263
sub     [esp+20h+var_20], 3Eh ; '>'
sub     [esp+20h+var_1C], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 5
xor     eax, eax
call    sub_43C263
sub     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 6
xor     eax, eax
call    sub_43C263
sub     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 6
xor     eax, eax
call    sub_43C263
mov     ax, [ebp+48h]
mov     [esp+20h+var_20], ax
mov     ax, [ebp+4Ch]
mov     [esp+20h+var_1C], ax
add     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, eax
add     ecx, 3Eh ; '>'
mov     [esp+20h+var_1C], cx
mov     ecx, esp
mov     ebx, 1
mov     edx, 6
xor     eax, eax
call    sub_43C263
add     [esp+20h+var_20], 3Eh ; '>'
add     [esp+20h+var_1C], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 5
xor     eax, eax
call    sub_43C263
add     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 4
xor     eax, eax
call    sub_43C263
add     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 6
xor     eax, eax
call    sub_43C263
mov     ax, [ebp+48h]
mov     [esp+20h+var_20], ax
mov     ax, [ebp+4Ch]
mov     [esp+20h+var_1C], ax
sub     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, eax
add     ecx, 3Eh ; '>'
mov     [esp+20h+var_1C], cx
mov     ecx, esp
mov     ebx, 1
mov     edx, 5
xor     eax, eax
call    sub_43C263
sub     [esp+20h+var_20], 3Eh ; '>'
add     [esp+20h+var_1C], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 6
xor     eax, eax
call    sub_43C263
sub     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 6
xor     eax, eax
call    sub_43C263
sub     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 4
xor     eax, eax
call    sub_43C263
mov     ax, [ebp+48h]
mov     [esp+20h+var_20], ax
mov     ax, [ebp+4Ch]
mov     [esp+20h+var_1C], ax
add     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, eax
sub     ecx, 3Eh ; '>'
mov     [esp+20h+var_1C], cx
mov     ecx, esp
mov     ebx, 1
mov     edx, 6
xor     eax, eax
call    sub_43C263
add     [esp+20h+var_20], 3Eh ; '>'
sub     [esp+20h+var_1C], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 4
xor     eax, eax
call    sub_43C263
add     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 5
xor     eax, eax
call    sub_43C263
add     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 4
xor     eax, eax
call    sub_43C263
mov     eax, ebp
call    sub_432EAB
cmp     byte ptr [ebp+5], 0
jz      short loc_4C10AB
mov     eax, 60Ch
call    sub_47E8B8

loc_4C10AB:
mov     byte ptr [ebp+8], 2
lea     edx, [ebp+48h]
mov     eax, 114h
call    sub_4D8BC3

loc_4C10BC:
add     esp, 8
jmp     loc_4C06D7
sub_4C0E6B endp




sub_4C10C4 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ecx
push    edx
sub     esp, 10h
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4C10D0[ecx*4]
lea     ecx, [edx+18h]  ; int
lea     eax, [edx+40h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 1000h
mov     [esp+18h+var_18], edx
mov     [esp+18h+var_14], edx
mov     [esp+18h+var_10], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 10h
pop     edx
pop     ecx
retn
sub_4C10C4 endp




sub_4C1103 proc near

var_10= word ptr -10h
var_E= word ptr -0Eh
var_C= word ptr -0Ch

push    ecx
push    edx
sub     esp, 8
mov     ecx, eax
add     eax, 3Ch ; '<'
or      byte ptr [ecx], 6
mov     word ptr [eax+4], 0
mov     word ptr [eax+6], 0
mov     word ptr [eax+8], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     dword ptr [ecx+50h], 2C808080h
mov     byte ptr [ecx+0Dh], 28h ; '('
mov     byte ptr [ecx+0Eh], 78h ; 'x'
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_4C1170
mov     [esp+10h+var_10], 0F700h
mov     [esp+10h+var_E], 0FED5h
mov     [esp+10h+var_C], 0DD00h
mov     edx, esp
mov     eax, 2
call    sub_42C4B7
mov     edx, 61302h
jmp     short loc_4C1195

loc_4C1170:
mov     [esp+10h+var_10], 0E900h
mov     [esp+10h+var_E], 0FD55h
mov     [esp+10h+var_C], 0DD00h
mov     edx, esp
mov     eax, 2
call    sub_42C4B7
mov     edx, 61402h

loc_4C1195:
call    sub_4A7AE1
add     esp, 8
pop     edx
pop     ecx
retn
sub_4C1103 endp




sub_4C11A0 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4C11A6[edx*4]
pop     edx
retn
sub_4C11A0 endp




sub_4C11AF proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 18h
mov     esi, eax
lea     ecx, [eax+3Ch]
lea     edx, [eax+48h]
mov     eax, offset byte_5F8364
add     eax, 14h
call    sub_4DD685
cmp     eax, 384h
jge     loc_4C12A0
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 10h
mov     [esp+28h+var_28], eax
mov     eax, [esi+48h]
sar     eax, 10h
shl     eax, 10h
mov     [esp+28h+var_24], eax
mov     eax, [esi+4Ah]
sar     eax, 10h
shl     eax, 10h
mov     [esp+28h+var_20], eax
push    800h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
mov     eax, offset byte_5F8364
add     eax, 1Ch
mov     edx, [ecx+4]
sar     edx, 10h
add     edx, 400h
mov     ecx, eax
mov     ebx, 100h
lea     eax, [esp+30h+var_28]
call    sub_4DE639
test    eax, eax
jz      short loc_4C12A0
mov     byte ptr [esi+9], 1
cmp     byte ptr [esi+0Ch], 0
jnz     short loc_4C1266
mov     [esp+28h+var_18], 0F700h
mov     [esp+28h+var_16], 0FED5h
mov     [esp+28h+var_14], 0DD00h
lea     edx, [esp+28h+var_18]
mov     eax, 2
call    sub_42C4B7
mov     edx, 60302h
jmp     short loc_4C128E

loc_4C1266:
mov     [esp+28h+var_18], 0E900h
mov     [esp+28h+var_16], 0FD55h
mov     [esp+28h+var_14], 0DD00h
lea     edx, [esp+28h+var_18]
mov     eax, 2
call    sub_42C4B7
mov     edx, 60402h

loc_4C128E:
call    sub_4A7AE1
lea     edx, [esi+48h]
mov     eax, 175h
call    sub_4D8BC3

loc_4C12A0:
add     esp, 18h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C11AF endp




sub_4C12A8 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 3Ch ; '<'
mov     bx, [eax+8]
sub     ebx, 50h ; 'P'
and     bh, 0Fh
mov     [eax+8], bx
cmp     bx, 0C00h
jg      short loc_4C12CE
mov     word ptr [eax+8], 0C00h
mov     byte ptr [edx+9], 2

loc_4C12CE:
pop     edx
pop     ebx
sub_4C12A8 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_97]



sub_4C12D1 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 18h
mov     edx, eax
lea     ebx, [eax+3Ch]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4C12E1[ecx*4]
xor     ecx, ecx
mov     [esp+24h+var_14], cx
mov     [esp+24h+var_12], cx

loc_4C12F4:
mov     [esp+24h+var_10], cx
lea     ecx, [edx+18h]  ; int
mov     edx, ecx
lea     eax, [esp+24h+var_14]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+24h+var_24], edx
mov     eax, [ebx]
mov     [esp+24h+var_20], eax
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 18h
pop     edx
pop     ecx
pop     ebx
retn
sub_4C12D1 endp




sub_4C1329 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+3Ch]
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     eax, [ecx+18h]
call    sub_4EF184
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     dword ptr [ecx+50h], 2C808080h
mov     dword ptr [ebx], 1000h
pop     edx
pop     ecx
pop     ebx
sub_4C1329 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_98]



sub_4C1367 proc near

var_24= byte ptr -24h
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
add     eax, 58h ; 'X'
mov     [esp+24h+var_1C], eax
cmp     dword ptr [eax], 0
jz      short loc_4C1382
mov     byte ptr [ebp+9], 1

loc_4C1382:
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
push    80h
push    0
push    4000000h
mov     ecx, [esp+30h+var_1C]
push    ecx
sub     [esp+34h+var_22], 28h ; '('
sub     [esp+34h+var_20], 80h
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 0C000h
xor     ebx, ebx
mov     edx, 3Ch ; '<'
lea     eax, [esp+38h+var_24]
call    sub_4E01FC
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4C13C9[edx*4]
mov     eax, [esp+24h+var_1C]
mov     dword ptr [eax], 0
add     esp, 0Ch
jmp     loc_4C06D7
sub_4C1367 endp




sub_4C13E2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+3Ch]
lea     edx, [eax+48h]
cmp     byte ptr [eax+5], 0
jnz     short loc_4C1412
mov     eax, 605h
call    sub_47E888
test    eax, eax
jnz     short loc_4C140B
mov     eax, 11Eh
call    sub_4D8BC3

loc_4C140B:
mov     eax, 605h
jmp     short loc_4C1459

loc_4C1412:
mov     al, [ecx+5]
cmp     al, 1
jnz     short loc_4C1438
mov     eax, 606h
call    sub_47E888
test    eax, eax
jnz     short loc_4C1431
mov     eax, 11Eh
call    sub_4D8BC3

loc_4C1431:
mov     eax, 606h
jmp     short loc_4C1459

loc_4C1438:
cmp     al, 2
jnz     short loc_4C145E
mov     eax, 604h
call    sub_47E888
test    eax, eax
jnz     short loc_4C1454
mov     eax, 11Eh
call    sub_4D8BC3

loc_4C1454:
mov     eax, 604h

loc_4C1459:
call    sub_47E8B8

loc_4C145E:
mov     dword ptr [ebx], 10h
mov     byte ptr [ecx+9], 2
mov     byte ptr [ecx+0Bh], 80h
pop     edx
pop     ecx
pop     ebx
retn
sub_4C13E2 endp




sub_4C1470 proc near
push    ebx
push    edx
lea     edx, [eax+3Ch]
mov     bl, [eax+0Bh]
test    bl, bl
jz      short loc_4C1486
mov     dl, bl
dec     dl
mov     [eax+0Bh], dl
pop     edx
pop     ebx
retn

loc_4C1486:
mov     dword ptr [edx], 1000h
mov     [eax+9], bl
mov     bh, [eax+5]
test    bh, bh
jnz     short loc_4C149D
mov     eax, 605h
jmp     short loc_4C14B3

loc_4C149D:
cmp     bh, 1
jnz     short loc_4C14A9
mov     eax, 606h
jmp     short loc_4C14B3

loc_4C14A9:
cmp     bh, 2
jnz     short loc_4C14B8
mov     eax, 604h

loc_4C14B3:
call    sub_47EA91

loc_4C14B8:
pop     edx
pop     ebx
retn
sub_4C1470 endp




sub_4C14BB proc near

var_14= word ptr -14h
var_12= word ptr -12h

push    ebx
push    ecx
push    edx
sub     esp, 18h
mov     edx, eax
lea     ebx, [eax+3Ch]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4C14CB[ecx*4]
xor     ecx, ecx
mov     [esp+24h+var_14], cx
mov     [esp+24h+var_12], 400h
jmp     loc_4C12F4
sub_4C14BB endp




sub_4C14E5 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+3Ch]
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     eax, [ecx+18h]
call    sub_4EF184
cmp     ds:byte_77E7D4, 0Eh
jnz     short loc_4C150A
lea     edx, [ecx+3]
jmp     short loc_4C150D

loc_4C150A:
lea     edx, [ecx+0Ch]

loc_4C150D:
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     dword ptr [ecx+50h], 2E808080h
mov     dword ptr [ebx], 1000h
call    sub_4DE227
mov     edx, eax
test    eax, eax
jz      short loc_4C1591
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 16h
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     byte ptr [eax+8], 0
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
cmp     ds:byte_77E7D4, 0Eh
jnz     short loc_4C157C
mov     word ptr [eax+48h], 4FEh
mov     word ptr [eax+4Ah], 0FDAAh
mov     word ptr [eax+4Ch], 0B00h
jmp     short loc_4C158E

loc_4C157C:
mov     word ptr [eax+48h], 0FF00h
mov     word ptr [eax+4Ah], 0FF24h
mov     word ptr [eax+4Ch], 300h

loc_4C158E:
mov     [ecx+58h], edx

loc_4C1591:
mov     eax, ecx
call    sub_4C159C
pop     edx
pop     ecx
pop     ebx
retn
sub_4C14E5 endp




sub_4C159C proc near

var_28= byte ptr -28h
var_26= word ptr -26h
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
mov     [esp+28h+var_1C], offset byte_5F8364
add     eax, 3Ch ; '<'
mov     [esp+28h+var_20], eax
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
push    80h
push    0
push    4000001h
sub     [esp+34h+var_26], 96h
lea     eax, [ebp+40h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 96h
lea     eax, [esp+3Ch+var_28]
call    sub_4E01FC
cmp     byte ptr [ebp+0Ah], 0
jnz     short loc_4C1638
cmp     ds:byte_77E7D4, 0Eh
jnz     short loc_4C160E
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      short loc_4C1638
jmp     short loc_4C161C

loc_4C160E:
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      short loc_4C1638

loc_4C161C:
call    sub_4A0E35
mov     edx, 9
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ebp+0Ah], 1
or      ds:byte_5F8421, 40h

loc_4C1638:
cmp     ds:byte_77E7D4, 0Eh
jnz     short loc_4C1648
mov     eax, 60Bh
jmp     short loc_4C164D

loc_4C1648:
mov     eax, 608h

loc_4C164D:
mov     cl, [ebp+0Ah]
cmp     cl, 1
jnz     loc_4C1738
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_4C1738
call    sub_47E888
test    eax, eax
jz      loc_4C170F
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4C16E2
cmp     byte ptr [ebp+0Bh], 0
jnz     short loc_4C1692
lea     edx, [ebp+48h]
mov     eax, 17Ah
call    sub_4D8BC3
add     [ebp+0Bh], cl

loc_4C1692:
mov     eax, [esp+28h+var_20]
mov     ecx, [eax]
test    ecx, ecx
jz      short loc_4C16A6
lea     ebx, [ecx-40h]
mov     [eax], ebx
jmp     loc_4C1738

loc_4C16A6:
mov     byte ptr [ebp+8], 2
mov     eax, [esp+28h+var_1C]
and     byte ptr [eax+0BDh], 0BFh
cmp     ds:byte_77E7D4, 0Eh
jnz     short loc_4C16C5
mov     eax, 1Eh
jmp     short loc_4C16CA

loc_4C16C5:
mov     eax, 27h ; '''

loc_4C16CA:
call    sub_47E8B8
mov     eax, [ebp+58h]
mov     byte ptr [eax+8], 2
mov     eax, 8
call    sub_49E0D7
jmp     short loc_4C1738

loc_4C16E2:
mov     eax, [esp+28h+var_1C]
and     byte ptr [eax+0BDh], 0BFh
mov     byte ptr [ebp+0Ah], 0
mov     ch, ds:byte_77E7D4
cmp     ch, 0Eh
jnz     short loc_4C1703

loc_4C16FC:
mov     eax, 608h
jmp     short loc_4C1733

loc_4C1703:
cmp     ch, 14h
jnz     short loc_4C1738
mov     eax, 605h
jmp     short loc_4C1733

loc_4C170F:
mov     eax, [esp+28h+var_1C]
and     byte ptr [eax+0BDh], 0BFh
mov     byte ptr [ebp+0Ah], 0
mov     dh, ds:byte_77E7D4
cmp     dh, 0Eh
jz      short loc_4C16FC
cmp     dh, 14h
jnz     short loc_4C1738
mov     eax, 605h

loc_4C1733:
call    sub_47EA91

loc_4C1738:
add     esp, 10h
jmp     loc_4C06D7
sub_4C159C endp




sub_4C1740 proc near

var_20= byte ptr -20h
var_1E= word ptr -1Eh

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 7
call    sub_432697
xor     edx, edx
mov     dl, [ebp+8]     ; int
mov     eax, ebp
call    ds:funcs_4C1760[edx*4]
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
push    80h
push    0
push    4000000h
sub     [esp+2Ch+var_1E], 50h ; 'P'
lea     eax, [ebp+58h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 64h ; 'd'
lea     eax, [esp+34h+var_20]
call    sub_4E01FC
mov     dword ptr [ebp+58h], 0
add     esp, 8
sub_4C1740 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4C1C1E

loc_4C17A9:
pop     ebp
; END OF FUNCTION CHUNK FOR sub_4C1C1E
; START OF FUNCTION CHUNK FOR sub_4C199D

loc_4C17AA:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4C199D



; int __fastcall sub_4C17B0(int, int)
sub_4C17B0 proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     ebx, [ecx+3]
mov     edx, ebx
mov     eax, ecx
call    sub_4DD0F8
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF184
mov     al, [ecx+3]
and     al, 3
and     eax, 0FFh
shl     eax, 0Ah
call    sub_4EF50D
mov     dword ptr [ecx+50h], offset unk_808080
mov     dword ptr [ecx+10h], offset unk_537394
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+5Ch], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Fh], 28h ; '('
cmp     byte ptr ds:dword_77E7D5, 1
jnz     short loc_4C187B
cmp     ds:byte_77E7D4, 5
jnz     short loc_4C187B
mov     edx, [ecx+0Ah]
sar     edx, 18h
shl     edx, 2
add     edx, 681h
mov     eax, edx
call    sub_47E888
test    eax, eax
jz      short loc_4C184A
mov     eax, ecx
call    sub_4DE477
pop     edx
pop     ecx
pop     ebx
retn

loc_4C184A:
lea     eax, [edx+1]
call    sub_47E888
test    eax, eax
jz      short loc_4C186B
or      byte ptr [ecx+0Ch], 2
add     byte ptr [ecx+3], 4
mov     edx, ebx
mov     eax, ecx
call    sub_4DD0F8
pop     edx
pop     ecx
pop     ebx
retn

loc_4C186B:
lea     eax, [edx+2]
call    sub_47E888
test    eax, eax
jz      short loc_4C187B
or      byte ptr [ecx+0Ch], 1

loc_4C187B:
pop     edx
pop     ecx
pop     ebx
retn
sub_4C17B0 endp




sub_4C187F proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
call    sub_4C2060
test    al, al
jz      short loc_4C18B0
mov     eax, ecx
call    sub_4C2097
test    eax, eax
jz      short loc_4C189F
inc     byte ptr [ecx+8]

loc_4C189F:
test    byte ptr [ecx+5Bh], 20h
jz      short loc_4C18B0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 3
mov     byte ptr [ecx+0Ah], 0

loc_4C18B0:
test    byte ptr [ecx+5Bh], 80h
jz      short loc_4C18C5
or      byte ptr [ecx+0Ch], 8
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 3
mov     byte ptr [ecx+0Ah], 1Eh

loc_4C18C5:
pop     edx
pop     ecx
retn
sub_4C187F endp




sub_4C18C8 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4C18CE[edx*4]
pop     edx
retn
sub_4C18C8 endp

align 4
jpt_4C1902 dd offset loc_4C1909 ; jump table for switch statement
dd offset loc_4C191C
dd offset loc_4C1936
dd offset loc_4C1946



sub_4C18E8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_4C1902      ; jumptable 004C1902 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4C1902[edx*4] ; switch jump

loc_4C1909:             ; jumptable 004C1902 case 0
mov     byte ptr ds:dword_5F836C+1, 10h
xor     al, al
mov     byte ptr ds:dword_5F836C+2, al

loc_4C1917:
inc     byte ptr [ecx+0Ah]
jmp     short def_4C1902 ; jumptable 004C1902 default case

loc_4C191C:             ; jumptable 004C1902 case 1
xor     eax, eax
mov     al, [ecx+0Bh]
mov     edx, ds:off_52FCBD[eax*4]
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
jmp     short loc_4C1917

loc_4C1936:             ; jumptable 004C1902 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C1902 ; jumptable 004C1902 default case
inc     al
mov     [ecx+0Ah], al
jmp     short def_4C1902 ; jumptable 004C1902 default case

loc_4C1946:             ; jumptable 004C1902 case 3
call    sub_42ABA2
test    eax, eax
jnz     short def_4C1902 ; jumptable 004C1902 default case
xor     edx, edx
mov     ds:dword_5F84E8, eax
xor     ah, ah
mov     byte ptr ds:dword_5F836C+1, ah
xor     dl, al
mov     byte ptr ds:dword_5F836C+2, dl
mov     byte ptr [ecx+8], 1
mov     [ecx+9], ah
mov     [ecx+0Ah], ah

def_4C1902:             ; jumptable 004C1902 default case
mov     dl, [esi+9]
cmp     dl, 0Bh
jz      short loc_4C197D
cmp     dl, 0Ch
jnz     short loc_4C1998

loc_4C197D:
call    sub_4A0E35
mov     dword ptr [esi+184h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0

loc_4C1998:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C18E8 endp




sub_4C199D proc near

; FUNCTION CHUNK AT 004C17AA SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 6
jb      short loc_4C19FA
lea     edi, [ecx+48h]
jbe     loc_4C1AB3
cmp     al, 0Ah
jb      short loc_4C19E7
jbe     loc_4C1B6F
cmp     al, 14h
jb      short loc_4C19DA
jbe     loc_4C1BB9
cmp     al, 15h
jz      loc_4C1BC4
jmp     loc_4C1BED

loc_4C19DA:
cmp     al, 0Bh
jz      loc_4C1BA2
jmp     loc_4C1BED

loc_4C19E7:
cmp     al, 8
jb      loc_4C1AD4
jbe     loc_4C1AF7
jmp     loc_4C1B58

loc_4C19FA:
cmp     al, 2
jb      short loc_4C1A0F
jbe     short loc_4C1A3C
cmp     al, 4
jb      short loc_4C1A5B
jbe     loc_4C1A97
jmp     loc_4C1AA0

loc_4C1A0F:
test    al, al
ja      short loc_4C1A1D
mov     byte ptr [esi+9], 10h

loc_4C1A17:
mov     byte ptr [esi+0Ah], 0
jmp     short loc_4C1A34

loc_4C1A1D:
mov     ebx, 0FFFFFFFFh
movzx   edi, byte ptr [ecx+0Bh]
mov     edx, ds:off_52FCBD[edi*4]

loc_4C1A2D:
xor     eax, eax
call    sub_4A0CDD

loc_4C1A34:
inc     byte ptr [ecx+0Ah]
jmp     loc_4C1BED

loc_4C1A3C:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C1BED
test    byte ptr ds:dword_55BD7C, 0FFh
jz      short loc_4C1A34

loc_4C1A52:
mov     byte ptr [ecx+0Ah], 14h
jmp     loc_4C1BED

loc_4C1A5B:
mov     eax, 0FFFFFFF6h
call    sub_4B6204
test    eax, eax
jge     short loc_4C1A7D
mov     ebx, 0FFFFFFFFh
mov     edx, ds:off_52FFF9
xor     eax, eax
call    sub_4A0CDD
jmp     short loc_4C1A52

loc_4C1A7D:
xor     ebx, ebx
xor     edx, edx
mov     eax, 0FFFFFFF6h
call    sub_4B6217

loc_4C1A8B:
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Eh], 10h
jmp     loc_4C1BED

loc_4C1A97:
mov     byte ptr [esi+9], 11h
jmp     loc_4C1A17

loc_4C1AA0:
cmp     byte ptr [esi+0A7h], 0
jge     loc_4C1BED
mov     byte ptr [ecx+0Eh], 10h
jmp     short loc_4C1A34

loc_4C1AB3:
mov     ah, [ecx+0Eh]
test    ah, ah
jz      short loc_4C1AC6
mov     dh, ah
dec     dh
mov     [ecx+0Eh], dh
jmp     loc_4C1BED

loc_4C1AC6:
mov     edx, edi
mov     eax, 13Eh
call    sub_4D8BC3
jmp     short loc_4C1A8B

loc_4C1AD4:
mov     bl, [ecx+0Eh]
test    bl, bl
jz      short loc_4C1AE7
mov     al, bl
dec     al
mov     [ecx+0Eh], al
jmp     loc_4C1BED

loc_4C1AE7:
mov     edx, ds:off_52FFF1
mov     ebx, 0FFFFFFFFh
jmp     loc_4C1A2D

loc_4C1AF7:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C1BED
mov     byte ptr ds:dword_5F836C+1, 14h
xor     ah, ah
mov     byte ptr ds:dword_5F836C+2, ah
mov     edx, ds:off_52FFF5
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
mov     edx, edi
mov     eax, 13Fh
call    sub_4D8BC3
mov     eax, ds:dword_5F8412
sar     eax, 10h
xor     edx, edx
call    sub_4B6268
or      byte ptr [ecx+0Ch], 1
xor     eax, eax
mov     al, [ecx+0Dh]
mov     edx, 2
call    sub_4C216B
jmp     loc_4C1A34

loc_4C1B58:
cmp     ds:byte_5F840B, 0
jge     loc_4C1BED

loc_4C1B65:
inc     al
mov     [ecx+0Ah], al
jmp     loc_4C1BED

loc_4C1B6F:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C1BED
mov     edx, ds:off_53002D
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
mov     byte ptr ds:dword_5F836C+1, 13h
xor     dl, dl
mov     byte ptr ds:dword_5F836C+2, dl
jmp     loc_4C1A34

loc_4C1BA2:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4C1BED
cmp     ds:byte_5F840B, 0
jge     short loc_4C1BED
jmp     loc_4C1A52

loc_4C1BB9:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4C1BED
jmp     short loc_4C1B65

loc_4C1BC4:
call    sub_42ABA2
test    eax, eax
jnz     short loc_4C1BED
xor     ah, ah
mov     byte ptr ds:dword_5F836C+1, ah
mov     byte ptr ds:dword_5F836C+2, ah
xor     edx, edx
mov     ds:dword_5F84E8, edx
mov     byte ptr [ecx+8], 1
mov     [ecx+9], ah
mov     [ecx+0Ah], ah

loc_4C1BED:
mov     ah, [esi+9]
cmp     ah, 0Bh
jz      short loc_4C1BFE
cmp     ah, 0Ch
jnz     loc_4C17AA

loc_4C1BFE:
call    sub_4A0E35
mov     dword ptr [esi+184h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
jmp     loc_4C17AA
sub_4C199D endp




; int __fastcall sub_4C1C1E(int, int)
sub_4C1C1E proc near

; FUNCTION CHUNK AT 004C17A9 SIZE 00000001 BYTES

push    ebx             ; float
push    ecx             ; int
push    edx             ; int
push    esi             ; int
push    edi             ; int
push    ebp             ; int
mov     ecx, eax
mov     ebp, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 11h
jb      short loc_4C1C98
jbe     loc_4C1E43
cmp     al, 18h
jb      short loc_4C1C74
jbe     loc_4C1F53
cmp     al, 1Fh
jb      short loc_4C1C67
jbe     loc_4C1FC4
cmp     al, 28h ; '('
jb      loc_4C2017
jbe     loc_4C1FCC
cmp     al, 29h ; ')'
jz      loc_4C1FFE
jmp     loc_4C2017

loc_4C1C67:
cmp     al, 1Eh
jz      loc_4C1F69
jmp     loc_4C2017

loc_4C1C74:
cmp     al, 15h
jb      short loc_4C1C8B
jbe     loc_4C1EA6
cmp     al, 16h
jbe     loc_4C1F10
jmp     loc_4C1F43

loc_4C1C8B:
cmp     al, 14h
jz      loc_4C1E62
jmp     loc_4C2017

loc_4C1C98:
cmp     al, 0Ch
jb      short loc_4C1CBD
jbe     loc_4C1D91
cmp     al, 0Eh
jb      loc_4C1DD7
jbe     loc_4C1DE6
cmp     al, 0Fh
jbe     loc_4C1DFC
jmp     loc_4C1E24

loc_4C1CBD:
cmp     al, 1
jb      short loc_4C1CD2
jbe     short loc_4C1CFD
cmp     al, 0Ah
jb      loc_4C2017
jbe     short loc_4C1D3E
jmp     loc_4C1D64

loc_4C1CD2:
test    al, al
jnz     loc_4C2017
or      byte ptr [ebp+0BDh], 40h
mov     eax, ebp
call    sub_4B61E1
test    eax, eax
jnz     loc_4C2017

loc_4C1CF0:
mov     byte ptr [ebp+9], 10h

loc_4C1CF4:
mov     byte ptr [ebp+0Ah], 0
jmp     loc_4C1D89

loc_4C1CFD:
test    byte ptr [ecx+0Ch], 2
jz      short loc_4C1D0C
mov     byte ptr [ecx+0Ah], 1Eh
jmp     loc_4C2017

loc_4C1D0C:
call    rand_
test    al, 1
jz      short loc_4C1D31
mov     edx, 1
xor     eax, eax
mov     al, [ecx+0Dh]
call    sub_4C216B
or      byte ptr [ecx+0Ch], 2
mov     byte ptr [ecx+0Ah], 14h
jmp     loc_4C2017

loc_4C1D31:
mov     byte ptr [ecx+0Eh], 10h
mov     byte ptr [ecx+0Ah], 0Ah
jmp     loc_4C2017

loc_4C1D3E:
mov     dl, [ecx+0Eh]
test    dl, dl
jz      short loc_4C1D51
mov     bl, dl
dec     bl
mov     [ecx+0Eh], bl
jmp     loc_4C2017

loc_4C1D51:
lea     edx, [ecx+48h]
mov     eax, 13Eh
call    sub_4D8BC3
mov     byte ptr [ecx+0Eh], 10h
jmp     short loc_4C1D89

loc_4C1D64:
mov     bh, [ecx+0Eh]
test    bh, bh
jz      short loc_4C1D77
mov     ah, bh
dec     ah
mov     [ecx+0Eh], ah
jmp     loc_4C2017

loc_4C1D77:
mov     ebx, 0FFFFFFFFh
mov     edx, ds:off_52FFF1

loc_4C1D82:
xor     eax, eax
call    sub_4A0CDD

loc_4C1D89:
inc     byte ptr [ecx+0Ah]
jmp     loc_4C2017

loc_4C1D91:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C2017
mov     byte ptr [ebp+9], 14h
mov     byte ptr [ebp+0Ah], 0
mov     ebx, 0FFFFFFFFh
mov     edx, ds:off_52FFF5
xor     eax, eax
call    sub_4A0CDD
lea     edx, [ecx+48h]
mov     eax, 13Fh
call    sub_4D8BC3
xor     edx, edx
mov     eax, [ebp+0AEh]
sar     eax, 10h
call    sub_4B6268
jmp     short loc_4C1D89

loc_4C1DD7:
cmp     byte ptr [ebp+0A7h], 0
jge     loc_4C2017
jmp     short loc_4C1D89

loc_4C1DE6:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C2017
xor     eax, eax
call    sub_47EEAE
jmp     short loc_4C1D89

loc_4C1DFC:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C2017
mov     ebx, 0FFFFFFFFh
mov     edx, ds:off_53002D
xor     eax, eax
call    sub_4A0CDD
mov     byte ptr [ebp+9], 13h
jmp     loc_4C1CF4

loc_4C1E24:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C2017
cmp     byte ptr [ebp+0A7h], 0
jge     loc_4C2017
jmp     loc_4C1CF0

loc_4C1E43:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C2017
cmp     byte ptr [ebp+0A7h], 0
jge     loc_4C2017
jmp     loc_4C1F60

loc_4C1E62:
add     byte ptr [ecx+3], 4
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     eax, [ecx+18h]
call    sub_4EF184
lea     edx, [ecx+18h]
mov     al, [ecx+3]
and     al, 3
and     eax, 0FFh
shl     eax, 0Ah
call    sub_4EF50D
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Bh], 0
lea     edx, [ecx+48h]
mov     eax, 0A4h
call    sub_4D8BC3
jmp     loc_4C2017

loc_4C1EA6:
call    sub_4DE13B
test    eax, eax
jz      loc_4C2017
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 14h
mov     byte ptr [eax+0Fh], 8
mov     dl, [ecx+3]
and     dl, 3
xor     ebx, ebx
mov     bl, dl
mov     dx, [ecx+48h]
mov     si, ds:word_5373A0[ebx*4]
add     edx, esi
mov     [eax+1Ch], dx
mov     dx, [ecx+4Ah]
sub     edx, 0C8h
mov     [eax+1Eh], dx
mov     dx, [ecx+4Ch]
mov     [eax+20h], dx
mov     byte ptr [eax+9], 4
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Eh], 2
jmp     loc_4C2017

loc_4C1F10:
mov     dh, [ecx+0Eh]
test    dh, dh
jz      short loc_4C1F23
mov     al, dh
dec     al
mov     [ecx+0Eh], al
jmp     loc_4C2017

loc_4C1F23:
cmp     byte ptr [ecx+0Bh], 8
jnb     short loc_4C1F36
dec     al
mov     [ecx+0Ah], al
inc     byte ptr [ecx+0Bh]
jmp     loc_4C2017

loc_4C1F36:
inc     al
mov     [ecx+0Ah], al
mov     [ecx+0Bh], dh
jmp     loc_4C2017

loc_4C1F43:
mov     edx, ds:off_52FFFD
mov     ebx, 0FFFFFFFFh
jmp     loc_4C1D82

loc_4C1F53:
test    byte ptr ds:dword_55BD7C+3, 8

loc_4C1F5A:
jnz     loc_4C2017

loc_4C1F60:
mov     byte ptr [ecx+0Ah], 28h ; '('
jmp     loc_4C2017

loc_4C1F69:
call    sub_4DE13B
test    eax, eax
jz      loc_4C2017
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ecx+48h]
movsd
movsd
mov     dx, [ecx+4Ah]
sub     edx, 64h ; 'd'
mov     [eax+4Ah], dx
mov     [ecx+54h], eax
and     byte ptr [ecx], 0FDh
test    byte ptr [ecx+0Ch], 8
jnz     short loc_4C1FA5
call    sub_4C20DB

loc_4C1FA5:
mov     eax, 1
call    sub_47EEAE
or      byte ptr [ecx+0Ch], 4
xor     eax, eax
mov     al, [ecx+0Dh]
xor     edx, edx
call    sub_4C216B
jmp     loc_4C1D89

loc_4C1FC4:
mov     eax, [ecx+54h]
cmp     byte ptr [eax], 0
jmp     short loc_4C1F5A

loc_4C1FCC:
call    sub_42ABA2
test    eax, eax
jnz     short loc_4C2017
test    byte ptr [ecx+0Ch], 8
jnz     loc_4C1D89
and     ds:byte_5F8421, 0BFh
mov     byte ptr ds:dword_5F836C+1, 10h
mov     byte ptr ds:dword_5F836C+2, 2
mov     ds:dword_5F84E8, eax
jmp     loc_4C1D89

loc_4C1FFE:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
test    byte ptr [ecx+0Ch], 4
jz      short loc_4C2017
mov     eax, ecx
call    sub_4DE477

loc_4C2017:
mov     dh, [ebp+9]
cmp     dh, 0Bh
jz      short loc_4C2028
cmp     dh, 0Ch
jnz     loc_4C17A9

loc_4C2028:
call    sub_4A0E35
and     byte ptr [ebp+0BDh], 0BFh
mov     dword ptr [ebp+184h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
test    byte ptr [ecx+0Ch], 4
jz      loc_4C17A9
mov     eax, ecx
call    sub_4DE477
jmp     loc_4C17A9
sub_4C1C1E endp ; sp-analysis failed




sub_4C2060 proc near
push    ebx
push    ecx
xor     ecx, ecx
mov     cl, [eax+3]
shl     ecx, 0Ah
sub     ecx, 400h
and     ch, 0Fh
mov     ebx, ecx
push    1FFh
mov     ecx, [edx+54h]
sar     ecx, 10h
push    ecx
lea     ecx, [edx+14h]
movsx   edx, bx
add     eax, 48h ; 'H'
mov     ebx, 1FFh
call    sub_4DE6D6
pop     ecx
pop     ebx
retn
sub_4C2060 endp




sub_4C2097 proc near
push    edx
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     short loc_4C20D7
test    byte ptr [edx+0Ch], 2
jz      short loc_4C20B3
mov     byte ptr [eax+9], 0
mov     edx, 0CBh
jmp     short loc_4C20CD

loc_4C20B3:
test    byte ptr [eax+0Ch], 1
jz      short loc_4C20C4
mov     byte ptr [eax+9], 1
mov     edx, 0CAh
jmp     short loc_4C20CD

loc_4C20C4:
mov     byte ptr [eax+9], 2
mov     edx, 0CCh

loc_4C20CD:
mov     [eax+0Bh], dl
mov     eax, 1
pop     edx
retn

loc_4C20D7:
xor     eax, eax
pop     edx

locret_4C20DA:
retn
sub_4C2097 endp




sub_4C20DB proc near
mov     eax, 220h
call    sub_47E888
test    eax, eax
jz      short loc_4C2115
mov     eax, 221h
call    sub_47E888
test    eax, eax
jz      short loc_4C2115
mov     eax, 220h
call    sub_47EA91
mov     eax, 221h
call    sub_47EA91
mov     eax, 2E0h
jmp     sub_47EE82

loc_4C2115:
mov     eax, 220h
call    sub_47E888
test    eax, eax
jnz     short loc_4C213B
mov     eax, 221h
call    sub_47E888
test    eax, eax
jz      short loc_4C213B

loc_4C2131:
mov     eax, 220h
jmp     sub_47E8B8

loc_4C213B:
mov     eax, 220h
call    sub_47E888
test    eax, eax
jz      short loc_4C2131
mov     eax, 221h
call    sub_47E888
test    eax, eax
jnz     short loc_4C2131
mov     eax, 220h
call    sub_47EA91
mov     eax, 221h
jmp     sub_47E8B8
sub_4C20DB endp




sub_4C216B proc near
cmp     byte ptr ds:dword_77E7D5, 1
jnz     locret_4C20DA
cmp     ds:byte_77E7D4, 5
jnz     locret_4C20DA
and     eax, 0FFh
shl     eax, 2
add     eax, 681h
and     edx, 0FFh
add     eax, edx
jmp     sub_47E8B8
sub_4C216B endp




sub_4C219F proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]     ; int
call    ds:funcs_4C21A5[edx*4]
pop     edx
retn
sub_4C219F endp




; int __fastcall sub_4C21AE(int, int)
sub_4C21AE proc near
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
cmp     byte ptr [ecx+3], 0
jnz     short loc_4C21CE
mov     eax, [ecx+4Ch]
sar     eax, 10h
mov     [ecx+54h], eax
mov     word ptr [ecx+4Eh], 0

loc_4C21CE:
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF184
mov     eax, [ecx+0Ch]
sar     eax, 18h
shl     eax, 6
call    sub_4EF50D
mov     dword ptr [ecx+50h], offset unk_808080
mov     dword ptr [ecx+10h], offset unk_5373D4
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+5Ch], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4C21AE endp




sub_4C2212 proc near

var_20= byte ptr -20h
var_1E= word ptr -1Eh

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4C2222[edx*4]
cmp     byte ptr [ebp+3], 2
jz      short loc_4C227E
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 7
mov     eax, ebp
call    sub_432697
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
push    80h
push    0
push    4000000h
sub     [esp+2Ch+var_1E], 2Dh ; '-'
lea     eax, [ebp+58h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
lea     eax, [esp+34h+var_20]
call    sub_4E01FC
mov     dword ptr [ebp+58h], 0

loc_4C227E:
add     esp, 8
pop     ebp

loc_4C2282:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C2212 endp




sub_4C2288 proc near
push    ebx
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4C22BC
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [edx+48h]
movsd
movsd
mov     bx, [edx+4Ah]
sub     ebx, 28h ; '('
mov     [eax+4Ah], bx
mov     eax, edx
call    sub_4DE477

loc_4C22BC:
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4C2288 endp




sub_4C22C1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4C22C7[edx*4]
pop     edx
retn
sub_4C22C1 endp




sub_4C22D0 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, ds:dword_5F84E8
cmp     eax, ecx
jnz     short loc_4C22E9
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
retn

loc_4C22E9:
test    byte ptr [eax+5Bh], 20h
jz      short loc_4C2318
mov     eax, edx
call    sub_4C2720
test    al, al
jz      short loc_4C2301
mov     byte ptr [edx+9], 2
pop     edx
pop     ecx
retn

loc_4C2301:
mov     eax, edx
call    sub_4C255B
add     edx, 48h ; 'H'
mov     eax, 13Dh
call    sub_4D8BC3
pop     edx
pop     ecx
retn

loc_4C2318:
test    byte ptr [edx+5Bh], 80h
jz      short loc_4C2325
inc     byte ptr [edx+8]
mov     byte ptr [edx+9], 0

loc_4C2325:
pop     edx
pop     ecx
retn
sub_4C22D0 endp




sub_4C2328 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4C2344
jbe     short loc_4C2383
cmp     al, 2
jz      loc_4C242F
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C2344:
test    al, al
jnz     loc_4C2459
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_4C2459
mov     byte ptr ds:dword_5F836C, 3
xor     al, al
mov     byte ptr ds:dword_5F836C+1, al
mov     ds:byte_5F88AC, 30h ; '0'
xor     ecx, ecx
mov     ds:dword_5F8370, ecx

loc_4C237B:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C2383:
mov     eax, esi
call    sub_4C2720
test    al, al
jz      loc_4C241A
mov     dh, [esi+0Dh]
test    dh, dh
jnz     short loc_4C23B0
mov     ecx, [esi+0Bh]
sar     ecx, 18h
lea     eax, [esi+48h]
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
jmp     short loc_4C237B

loc_4C23B0:
cmp     dh, 1
jz      short loc_4C237B
mov     eax, [esi+0Ah]
sar     eax, 18h
test    al, 80h
jz      short loc_4C2409
mov     al, dh
and     al, 7Fh
and     eax, 0FFh
shl     eax, 8
xor     ecx, ecx
mov     cl, [esi+0Eh]
or      ecx, eax
mov     eax, ecx
shl     eax, 2
add     eax, ecx
add     eax, eax
mov     ecx, 0Ah
xor     edx, edx
div     ecx
xor     ecx, ecx
mov     ebx, eax
mov     edx, 1

loc_4C23ED:
xor     eax, eax
call    sub_4A6227
mov     eax, [esi+9]
sar     eax, 18h
add     eax, 400h
call    sub_47E8B8
jmp     loc_4C237B

loc_4C2409:
cmp     byte ptr [esi+0Eh], 0FFh
jz      short loc_4C241A
xor     ebx, ebx
mov     bl, [esi+0Eh]
xor     ecx, ecx
xor     edx, edx
jmp     short loc_4C23ED

loc_4C241A:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2
xor     eax, eax
call    sub_4A6227
jmp     loc_4C237B

loc_4C242F:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4C2459
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
xor     edx, edx
mov     ds:dword_5F84E8, edx
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0

loc_4C2459:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C2328 endp

db 90h
jpt_4C2489 dd offset loc_4C2490 ; jump table for switch statement
dd offset loc_4C24B0
dd offset loc_4C24B3
dd offset loc_4C2515
dd offset loc_4C253E



; int __fastcall sub_4C2473(int, int)
sub_4C2473 proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_4C2489      ; jumptable 004C2489 default case
and     eax, 0FFh
jmp     jpt_4C2489[eax*4] ; switch jump

loc_4C2490:             ; jumptable 004C2489 case 0
cmp     byte ptr [esi+0Dh], 1
jz      short loc_4C24A3
lea     edx, [esi+48h]
mov     eax, 13Ch
call    sub_4D8BC3

loc_4C24A3:
mov     al, [esi+0Bh]
add     al, 10h
and     al, 3Fh
mov     [esi+0Fh], al
inc     byte ptr [esi+0Ah]

loc_4C24B0:             ; jumptable 004C2489 case 1
inc     byte ptr [esi+0Ah]

loc_4C24B3:             ; jumptable 004C2489 case 2
mov     al, [esi+0Fh]
cmp     al, [esi+0Bh]
jz      short loc_4C2501
lea     ecx, [esi+18h]
mov     eax, ecx
call    sub_4EF184
mov     al, [esi+0Bh]
and     al, 7
and     eax, 0FFh
mov     eax, ds:dword_5373DE[eax*2]
sar     eax, 10h
sar     eax, 2
mov     edx, ecx
call    sub_4EF57E
xor     eax, eax
mov     al, [esi+0Bh]
shl     eax, 6
mov     edx, ecx
call    sub_4EF50D
mov     al, [esi+0Bh]
inc     al
and     al, 3Fh
mov     [esi+0Bh], al
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C2501:
mov     dl, [esi+0Ah]
cmp     dl, 2
jnz     short def_4C2489 ; jumptable 004C2489 default case
mov     dh, dl
inc     dh
mov     [esi+0Ah], dh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C2515:             ; jumptable 004C2489 case 3
cmp     byte ptr [esi+0Dh], 1
jnz     short loc_4C2536
cmp     byte ptr [esi+0Eh], 0FFh
jz      short loc_4C2536
mov     ecx, [esi+0Bh]
sar     ecx, 18h
lea     eax, [esi+48h]
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4

loc_4C2536:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C253E:             ; jumptable 004C2489 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C2489 ; jumptable 004C2489 default case
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     dword ptr [esi+58h], 0

def_4C2489:             ; jumptable 004C2489 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C2473 endp




; int __fastcall sub_4C255B(int, int)
sub_4C255B proc near
push    ecx             ; int
push    edx             ; int
push    esi             ; int
push    edi             ; int
mov     ecx, eax
call    sub_4DE227
test    eax, eax
jz      short loc_4C25C8
mov     dl, [ecx]
mov     [eax], dl
mov     byte ptr [eax+3], 2
mov     dl, [ecx+2]
mov     [eax+2], dl
lea     edi, [eax+48h]
lea     esi, [ecx+48h]
movsd
movsd
mov     dx, [ecx+4Ah]
sub     edx, 50h ; 'P'
mov     [eax+4Ah], dx
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Bh], 0
mov     [eax+54h], ecx
lea     edx, [eax+3]
call    sub_4DD0F8
mov     byte ptr [ecx+3], 1
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF184
mov     eax, [ecx+0Ch]
sar     eax, 18h
shl     eax, 6
call    sub_4EF50D
mov     byte ptr [ecx+9], 0

loc_4C25C8:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4C255B endp




; int __fastcall sub_4C25CD(int, int)
sub_4C25CD proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
lea     ebx, [eax+18h]
mov     eax, ebx
call    sub_4EF184
mov     al, [ecx+0Bh]
and     al, 7
and     eax, 0FFh
mov     eax, ds:dword_5373DE[eax*2]
sar     eax, 10h
sar     eax, 2
mov     edx, ebx
call    sub_4EF57E
xor     eax, eax
mov     al, [ecx+0Bh]
shl     eax, 6
mov     edx, ebx
call    sub_4EF50D
pop     edx
pop     ecx
pop     ebx
retn
sub_4C25CD endp




; int __fastcall sub_4C260D(int, int)
sub_4C260D proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
mov     ecx, eax
mov     ebx, [eax+54h]
mov     al, [eax+9]
cmp     al, 1
jb      short loc_4C2628
jbe     short loc_4C2647
cmp     al, 2
jz      short loc_4C265D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C2628:
test    al, al
jnz     loc_4C271B
mov     eax, [ecx+48h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+58h], eax
mov     dword ptr [ecx+5Ch], 200000h
mov     byte ptr [ecx+9], 1

loc_4C2647:
cmp     byte ptr [ebx+0Dh], 1
jnz     short loc_4C265A
cmp     byte ptr [ebx+0Eh], 10h
jnz     short loc_4C265A
mov     eax, ebx
call    sub_4C2761

loc_4C265A:
inc     byte ptr [ecx+9]

loc_4C265D:
mov     dx, [ebx+4Ah]
sub     edx, 50h ; 'P'
mov     eax, [ecx+5Ch]
sub     [ecx+58h], eax
sub     dword ptr [ecx+5Ch], 40000h
mov     eax, [ecx+58h]
shr     eax, 10h
mov     [ecx+4Ah], ax
mov     esi, [ecx+48h]
sar     esi, 10h
movsx   eax, dx
cmp     esi, eax
jle     short loc_4C26E3
mov     byte ptr [ebx+3], 0
mov     byte ptr [ebx+8], 1
mov     byte ptr [ebx+9], 0
mov     dword ptr [ebx+58h], 0
mov     dword ptr [ebx+5Ch], 0
lea     edx, [ebx+3]
mov     eax, ebx
call    sub_4DD0F8
lea     esi, [ebx+18h]
mov     eax, esi
call    sub_4EF184
mov     edx, esi
xor     eax, eax
call    sub_4EF486
xor     eax, eax
mov     al, [ebx+0Bh]
shl     eax, 6
mov     edx, esi
call    sub_4EF50D
mov     edx, esi
xor     eax, eax
call    sub_4EF57E
mov     eax, ecx
call    sub_4DE477
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C26E3:
lea     esi, [ecx+18h]
mov     eax, esi
call    sub_4EF184
mov     al, [ebx+0Bh]
and     al, 7
and     eax, 0FFh
mov     eax, ds:dword_5373DE[eax*2]
sar     eax, 10h
mov     edx, esi
call    sub_4EF57E
mov     eax, [ecx+0Ch]
sar     eax, 18h
shl     eax, 6
mov     edx, esi
call    sub_4EF50D
inc     byte ptr [ebx+0Bh]

loc_4C271B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C260D endp




sub_4C2720 proc near
push    edx
mov     edx, eax
mov     eax, [eax+54h]
cmp     byte ptr [edx+0Dh], 1
jnz     short loc_4C2736
cmp     byte ptr [edx+0Eh], 10h
jnz     short loc_4C2736

loc_4C2732:
xor     al, al
pop     edx
retn

loc_4C2736:
test    eax, eax
jz      short loc_4C2743
call    sub_47E888
test    eax, eax
jz      short loc_4C2732

loc_4C2743:
mov     eax, [edx+9]
sar     eax, 18h
add     eax, 400h
call    sub_47E888
test    eax, eax
jnz     short loc_4C2732
cmp     byte ptr [edx+0Eh], 0FFh
jz      short loc_4C2732
mov     al, 1
pop     edx
retn
sub_4C2720 endp




sub_4C2761 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     bl, bl
jmp     short loc_4C2777

loc_4C276C:
inc     bl
cmp     bl, 3
jnb     loc_4C2282

loc_4C2777:
call    sub_4DDF54
mov     edx, eax
test    eax, eax
jz      short loc_4C276C
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 10h
mov     byte ptr [eax+4], 1
lea     edi, [edx+14h]
lea     esi, [ecx+48h]
movsd
movsd
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
xor     eax, eax
mov     al, bl
imul    eax, 600h
mov     [edx+56h], ax
jmp     short loc_4C276C
sub_4C2761 endp




sub_4C27C9 proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 38h
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_4C27EC
or      byte ptr [ecx], 4
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
inc     byte ptr [ecx+8]
mov     word ptr [ecx+0Ch], 0

loc_4C27EC:
xor     edx, edx
mov     dl, [ecx+0Eh]
mov     eax, edx
shl     eax, 8
add     eax, edx
shl     eax, 8
add     eax, edx
mov     [ecx+50h], eax
xor     edx, edx
mov     [esp+44h+var_14], dx
mov     [esp+44h+var_12], 800h
mov     ax, [ecx+0Ch]
mov     [esp+44h+var_10], ax
add     ecx, 18h
mov     eax, ecx
call    sub_4EF184
mov     eax, esp
call    sub_4EF184
mov     edx, esp
lea     eax, [esp+44h+var_14]
call    sub_4EF5F7
mov     ebx, ecx
mov     edx, esp
mov     eax, ecx
call    sub_4EF388
add     esp, 38h
pop     edx
pop     ecx
pop     ebx
retn
sub_4C27C9 endp




sub_4C2845 proc near

var_20= byte ptr -20h
var_1E= word ptr -1Eh

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 7
call    sub_432697
xor     edx, edx
mov     dl, [ebp+8]     ; int
mov     eax, ebp
call    ds:funcs_4C2865[edx*4]
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
push    80h
push    0
push    4000000h
sub     [esp+2Ch+var_1E], 2Dh ; '-'
lea     eax, [ebp+58h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 32h ; '2'
lea     eax, [esp+34h+var_20]
call    sub_4E01FC
mov     dword ptr [ebp+58h], 0
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C2845 endp




; int __fastcall sub_4C28B5(int, int)
sub_4C28B5 proc near
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     eax, [ecx+4Ch]
sar     eax, 10h
mov     [ecx+54h], eax
mov     word ptr [ecx+4Eh], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF184
mov     eax, [ecx+0Ch]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     dword ptr [ecx+50h], offset unk_808080
mov     dword ptr [ecx+10h], offset unk_537400
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+5Ch], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4C28B5 endp




sub_4C2913 proc near
push    edx
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     short loc_4C2926
mov     dl, [edx+8]
inc     dl
mov     [eax+8], dl

loc_4C2926:
test    byte ptr [eax+5Bh], 80h
jz      short loc_4C2930
mov     byte ptr [eax+8], 3

loc_4C2930:
pop     edx
retn
sub_4C2913 endp




sub_4C2932 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_4C294E
jbe     short loc_4C298D
cmp     al, 2
jz      loc_4C2A44
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C294E:
test    al, al
jnz     loc_4C2A6E
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_4C2A6E
mov     byte ptr ds:dword_5F836C, 3
xor     al, al
mov     byte ptr ds:dword_5F836C+1, al
mov     ds:byte_5F88AC, 30h ; '0'
xor     ecx, ecx
mov     ds:dword_5F8370, ecx

loc_4C2985:
inc     byte ptr [esi+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C298D:
mov     eax, esi
call    sub_4C2AAC
test    al, al
jz      loc_4C2A2C
mov     dh, [esi+0Dh]
test    dh, dh
jnz     short loc_4C29BA
mov     ecx, [esi+0Bh]
sar     ecx, 18h
lea     eax, [esi+48h]
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
jmp     short loc_4C2985

loc_4C29BA:
cmp     dh, 1
jz      short loc_4C2985
mov     eax, [esi+0Ah]
sar     eax, 18h
test    al, 80h
jz      short loc_4C2A16
mov     al, dh
and     al, 7Fh
and     eax, 0FFh
shl     eax, 8
xor     edx, edx
mov     dl, [esi+0Eh]
or      edx, eax
mov     eax, edx
shl     eax, 2
add     edx, eax
add     edx, edx
mov     ecx, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
xor     ecx, ecx
mov     ebx, eax
mov     edx, 1
mov     eax, edx

loc_4C29FC:
call    sub_4A6227
mov     eax, [esi+9]
sar     eax, 18h
add     eax, 400h
call    sub_47E8B8
jmp     loc_4C2985

loc_4C2A16:
cmp     byte ptr [esi+0Eh], 0FFh
jz      short loc_4C2A2C
xor     ebx, ebx
mov     bl, [esi+0Eh]
xor     ecx, ecx
xor     edx, edx
mov     eax, 1
jmp     short loc_4C29FC

loc_4C2A2C:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2
mov     eax, 1
call    sub_4A6227
jmp     loc_4C2985

loc_4C2A44:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4C2A6E
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
xor     edx, edx
mov     ds:dword_5F84E8, edx
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0

loc_4C2A6E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C2932 endp




sub_4C2A73 proc near
push    ebx
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4C2AA7
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [edx+48h]
movsd
movsd
mov     bx, [edx+4Ah]
sub     ebx, 28h ; '('
mov     [eax+4Ah], bx
mov     eax, edx
call    sub_4DE477

loc_4C2AA7:
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4C2A73 endp




sub_4C2AAC proc near
push    edx
mov     edx, eax
mov     eax, [eax+54h]
test    eax, eax
jz      short loc_4C2AC3
call    sub_47E888
test    eax, eax
jnz     short loc_4C2AC3

loc_4C2ABF:
xor     al, al
pop     edx
retn

loc_4C2AC3:
mov     eax, [edx+9]
sar     eax, 18h
add     eax, 400h
call    sub_47E888
test    eax, eax
jnz     short loc_4C2ABF
cmp     byte ptr [edx+0Eh], 0FFh
jz      short loc_4C2ABF
mov     al, 1
pop     edx
retn
sub_4C2AAC endp




sub_4C2AE1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C2AE7[edx*4]
pop     edx
retn
sub_4C2AE1 endp




sub_4C2AF0 proc near

var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     ebx, eax
mov     ecx, offset dword_77E784
mov     al, ds:byte_77E7D4
cmp     al, 6
jb      short loc_4C2B25
jbe     short loc_4C2B55
cmp     al, 8
jb      loc_4C2B9C
jbe     loc_4C2B81
cmp     al, 19h
jz      loc_4C2B96
jmp     loc_4C2B9C

loc_4C2B25:
cmp     al, 5
jnz     loc_4C2B9C
mov     ah, byte ptr ds:dword_77E7D5+1
test    ah, ah
jnz     short loc_4C2B3F

loc_4C2B37:
mov     [ebx+3], ah
jmp     loc_4C2BA0

loc_4C2B3F:
cmp     ah, 1
jz      short loc_4C2B37
cmp     ah, 7
jg      short loc_4C2B4F
mov     byte ptr [ebx+3], 2
jmp     short loc_4C2BA0

loc_4C2B4F:
mov     byte ptr [ebx+3], 3
jmp     short loc_4C2BA0

loc_4C2B55:
mov     dl, byte ptr ds:dword_77E7D5+1
test    dl, dl
jnz     short loc_4C2B65
mov     byte ptr [ebx+3], 4
jmp     short loc_4C2BA0

loc_4C2B65:
cmp     dl, 5
jg      short loc_4C2B70
mov     byte ptr [ebx+3], 5
jmp     short loc_4C2BA0

loc_4C2B70:
cmp     dl, 7
jg      short loc_4C2B7B
mov     byte ptr [ebx+3], 6
jmp     short loc_4C2BA0

loc_4C2B7B:
mov     byte ptr [ebx+3], 7
jmp     short loc_4C2BA0

loc_4C2B81:
cmp     byte ptr ds:dword_77E7D5+1, 7
jg      short loc_4C2B90
mov     byte ptr [ebx+3], 8
jmp     short loc_4C2BA0

loc_4C2B90:
mov     byte ptr [ebx+3], 9
jmp     short loc_4C2BA0

loc_4C2B96:
mov     byte ptr [ebx+3], 0Ah
jmp     short loc_4C2BA0

loc_4C2B9C:
mov     byte ptr [ebx+3], 0FFh

loc_4C2BA0:
cmp     byte ptr [ecx+51h], 0
jz      short loc_4C2BAC
mov     byte ptr [ebx+3], 0FFh
jmp     short loc_4C2BB2

loc_4C2BAC:
cmp     byte ptr [ebx+3], 0FFh
jnz     short loc_4C2BBB

loc_4C2BB2:
mov     eax, ebx
call    sub_4DE477
jmp     short loc_4C2C21

loc_4C2BBB:
xor     edx, edx
mov     [esp+18h+var_18], dx
mov     edi, 11Ch

loc_4C2BC6:
xor     eax, eax
mov     al, [ebx+3]
mov     eax, ds:dword_53740A[eax*8]
sar     eax, 10h
mov     esi, [esp-2]
sar     esi, 10h
cmp     esi, eax
jge     short loc_4C2C1E
call    sub_4DE043
mov     ecx, eax
test    eax, eax
jz      short loc_4C2C18
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 4
mov     al, [ebx+3]
mov     [ecx+0Ch], al
mov     al, byte ptr [esp+18h+var_18]
mov     [ecx+0Dh], al
mov     eax, ecx
sub     eax, offset byte_57098C
xor     edx, edx
div     edi
mov     dl, al
lea     eax, [ebx+esi]
mov     [eax+14h], dl
mov     ds:dword_55D0E0[esi*4], ecx

loc_4C2C18:
inc     [esp+18h+var_18]
jmp     short loc_4C2BC6

loc_4C2C1E:
inc     byte ptr [ebx+8]

loc_4C2C21:
add     esp, 4

loc_4C2C24:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C2AF0 endp




sub_4C2C2A proc near
push    edx
mov     edx, eax
call    sub_4C2C79
mov     eax, edx
call    sub_4C2CE0
mov     eax, edx
call    sub_4C3374
pop     edx
retn
sub_4C2C2A endp




sub_4C2C42 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx

loc_4C2C49:
xor     eax, eax
mov     al, [ecx+3]
mov     ebx, ds:dword_53740A[eax*8]
sar     ebx, 10h
movsx   eax, dx
cmp     eax, ebx
jge     short loc_4C2C6E
mov     eax, ds:dword_55D0E0[eax*4]
call    sub_4DE371
inc     edx
jmp     short loc_4C2C49

loc_4C2C6E:
mov     eax, ecx
call    sub_4DE477
pop     edx
pop     ecx
pop     ebx
sub_4C2C42 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_99]



sub_4C2C79 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     ebx, eax
xor     edx, edx
mov     [esp+18h+var_18], edx
xor     edx, edx

loc_4C2C89:
xor     eax, eax
mov     al, [ebx+3]
mov     ecx, ds:dword_53740A[eax*8]
sar     ecx, 10h
movsx   eax, dx
cmp     eax, ecx
jge     short loc_4C2CD8
test    dl, 3
jnz     short loc_4C2CB5
mov     ecx, eax
sar     ecx, 2
mov     ecx, [ebx+ecx*4+14h]
mov     [esp+18h+var_18], ecx
mov     cl, byte ptr [esp+18h+var_18]
jmp     short loc_4C2CCF

loc_4C2CB5:
mov     ecx, edx
xor     ch, dh
and     cl, 3
movsx   ecx, cx
shl     ecx, 3
mov     esi, [esp+18h+var_18]
shr     esi, cl
mov     [esp+18h+var_14], esi
mov     cl, byte ptr [esp+18h+var_14]

loc_4C2CCF:
mov     ds:byte_55D0D0[eax], cl
inc     edx
jmp     short loc_4C2C89

loc_4C2CD8:
add     esp, 8
pop     esi

loc_4C2CDC:
pop     edx
pop     ecx
pop     ebx
retn
sub_4C2C79 endp




sub_4C2CE0 proc near

var_1C= dword ptr -1Ch
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
xor     edx, edx
mov     [esp+1Ch+var_1C], edx
mov     [esp+1Ch+var_18], dx

loc_4C2CF4:
xor     eax, eax
mov     al, [ecx+3]
mov     edx, ds:dword_53740A[eax*8]
sar     edx, 10h
mov     eax, [esp+1Ch+var_1C+2]
sar     eax, 10h
cmp     eax, edx
jge     loc_4C2E50
xor     edx, edx
mov     dl, ds:byte_55D0D0[eax]
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
mov     esi, offset byte_57098C
add     esi, eax
lea     edi, [esi+0DCh]
and     byte ptr [edi+0Fh], 0F9h
xor     ebx, ebx

loc_4C2D3C:
xor     eax, eax
mov     al, [ecx+3]
mov     edx, ds:dword_53740A[eax*8]
sar     edx, 10h
movsx   eax, bx
cmp     eax, edx
jge     short loc_4C2D85
mov     edx, [esp+1Ch+var_1C+2]
sar     edx, 10h
cmp     edx, eax
jz      short loc_4C2D82
xor     edx, edx
mov     dl, ds:byte_55D0D0[eax]
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
mov     edx, offset byte_57098C
add     edx, eax
mov     eax, esi
call    sub_4C2E58

loc_4C2D82:
inc     ebx
jmp     short loc_4C2D3C

loc_4C2D85:
mov     dl, [edi+0Fh]
test    dl, 20h
jz      loc_4C2E46
mov     al, dl
and     al, 50h
cmp     al, 50h ; 'P'
jnz     short loc_4C2DBC
mov     ax, [edi+1Ch]
test    ax, ax
jle     short loc_4C2DAE
mov     edx, eax
dec     edx
mov     [edi+1Ch], dx
jmp     loc_4C2E46

loc_4C2DAE:
mov     dh, dl
and     dh, 0EFh
mov     [edi+0Fh], dh
mov     word ptr [edi+1Ch], 0Fh

loc_4C2DBC:
xor     ebx, ebx

loc_4C2DBE:
xor     eax, eax
mov     al, [ecx+3]
mov     edx, ds:dword_53740A[eax*8]
sar     edx, 10h
movsx   eax, bx
cmp     eax, edx
jge     short loc_4C2E0F
mov     edx, [esp+1Ch+var_1C+2]
sar     edx, 10h
cmp     edx, eax
jz      short loc_4C2E0C
xor     edx, edx
mov     dl, ds:byte_55D0D0[eax]
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
mov     edx, offset byte_57098C
add     edx, eax
mov     eax, esi
call    sub_4C3051
mov     [esp+1Ch+var_1C], eax
test    ax, ax
jz      short loc_4C2E0F

loc_4C2E0C:
inc     ebx
jmp     short loc_4C2DBE

loc_4C2E0F:
mov     ebx, [esp+1Ch+var_1C]
test    bx, bx
jz      short loc_4C2E42
mov     si, [edi+1Ch]
inc     esi
mov     [edi+1Ch], si
cmp     si, 0Fh
jle     short loc_4C2E46
mov     word ptr [edi+1Ch], 0
mov     bl, [edi+0Fh]
test    bl, 40h
jnz     short loc_4C2E3C
mov     bh, bl
or      bh, 1
mov     [edi+0Fh], bh

loc_4C2E3C:
and     byte ptr [edi+0Fh], 0CFh
jmp     short loc_4C2E46

loc_4C2E42:
mov     [edi+1Ch], bx

loc_4C2E46:
inc     [esp+1Ch+var_18]
jmp     loc_4C2CF4

loc_4C2E50:
add     esp, 8
jmp     loc_4C2C24
sub_4C2CE0 endp




sub_4C2E58 proc near

var_28= dword ptr -28h
var_24= word ptr -24h
var_20= word ptr -20h
var_1C= byte ptr -1Ch
var_18= byte ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     ecx, edx
lea     edx, [eax+0DCh]
lea     esi, [ecx+0DCh]
mov     bl, [edx+0Ch]
shl     bl, 2
mov     bh, [edx+0Dh]
or      bh, bl
mov     bl, [esi+0Dh]
shl     bl, 4
or      bh, bl
mov     bl, [esi+0Ch]
shl     bl, 6
or      bl, bh
mov     bh, bl
and     bh, 0Ch
mov     [esp+28h+var_1C], bh
test    bl, 1
jz      short loc_4C2F03
mov     edi, [eax+16h]
sar     edi, 10h
sar     edi, 9
add     edi, 40h ; '@'
mov     [esp+28h+var_28], edi
mov     edi, [esp+28h+var_28]
mov     [esp+28h+var_24], di
mov     edi, [ecx+16h]
sar     edi, 10h
sar     edi, 9
add     edi, 40h ; '@'
mov     [esp+28h+var_28], edi
mov     edi, [esp+28h+var_28]
mov     [esp+28h+var_20], di
cmp     byte ptr [eax+9], 2
jnz     short loc_4C2ED7
cmp     [esp+28h+var_1C], 8
jnz     short loc_4C2ED7
inc     [esp+28h+var_24]

loc_4C2ED7:
cmp     byte ptr [ecx+9], 2
jnz     loc_4C2F67
test    bl, 30h
jz      loc_4C2F62
mov     bh, bl
and     bh, 0F3h
cmp     bh, 0B3h
jz      loc_4C2F62
cmp     bh, 91h
jnz     loc_4C2F67
jmp     short loc_4C2F62

loc_4C2F03:
mov     edi, [eax+12h]
sar     edi, 10h
sar     edi, 9
add     edi, 40h ; '@'
mov     [esp+28h+var_28], edi
mov     edi, [esp+28h+var_28]
mov     [esp+28h+var_24], di
mov     edi, [ecx+12h]
sar     edi, 10h
sar     edi, 9
add     edi, 40h ; '@'
mov     [esp+28h+var_28], edi
mov     edi, [esp+28h+var_28]
mov     [esp+28h+var_20], di
cmp     byte ptr [eax+9], 2
jnz     short loc_4C2F43
cmp     [esp+28h+var_1C], 0Ch
jnz     short loc_4C2F43
inc     [esp+28h+var_24]

loc_4C2F43:
cmp     byte ptr [ecx+9], 2
jnz     short loc_4C2F67
mov     bh, bl
and     bh, 30h
cmp     bh, 10h
jz      short loc_4C2F62
mov     bh, bl
and     bh, 0F3h
cmp     bh, 0E2h
jz      short loc_4C2F62
cmp     bh, 0C0h
jnz     short loc_4C2F67

loc_4C2F62:
inc     [esp+28h+var_20]

loc_4C2F67:
mov     edi, [esp+28h+var_28+2]
sar     edi, 10h
mov     [esp+28h+var_28], edi
mov     edi, [esp+6]
sar     edi, 10h
mov     ebp, [esp+28h+var_28]
sub     ebp, edi
jnz     loc_4C3048
mov     edi, [eax+42h]
sar     edi, 10h
mov     [esp+28h+var_28], edi
mov     edi, [ecx+42h]
sar     edi, 10h
mov     ebp, [esp+28h+var_28]
sub     ebp, edi
mov     edi, ebp
sar     ebp, 4
add     ebp, 6
imul    edi, ebp
sar     edi, 4
cmp     word ptr [eax+44h], 100h
jg      short loc_4C2FB4
cmp     word ptr [eax+44h], 0
jnz     short loc_4C2FBC

loc_4C2FB4:
add     edi, 600h
jmp     short loc_4C2FC2

loc_4C2FBC:
add     edi, 400h

loc_4C2FC2:
mov     bh, bl
and     bh, 3
mov     [esp+28h+var_18], bh
test    bl, 1
jz      short loc_4C2FE5
mov     cx, [ecx+14h]
mov     bx, [eax+14h]
sub     ecx, ebx
xor     ebx, ebx
mov     bl, [esp+28h+var_18]
sub     ebx, 2
jmp     short loc_4C2FF6

loc_4C2FE5:
mov     cx, [ecx+18h]
mov     bx, [eax+18h]
sub     ecx, ebx
xor     ebx, ebx
mov     bl, [esp+28h+var_18]
dec     ebx

loc_4C2FF6:
imul    ecx, ebx
test    cx, cx
jl      short loc_4C3048
movsx   ebx, cx
cmp     ebx, edi
jge     short loc_4C3048
mov     edi, [edx+12h]
sar     edi, 10h
cmp     ebx, edi
jge     short loc_4C3048
mov     eax, [eax+42h]
sar     eax, 10h
mov     ebx, [esi+0Eh]
sar     ebx, 10h
cmp     eax, ebx
jle     short loc_4C3027
mov     ax, [esi+10h]
mov     [edx+10h], ax

loc_4C3027:
mov     al, [edx+0Fh]
or      al, 2
mov     [edx+0Fh], al
cmp     cx, 3C0h
jge     short loc_4C3044
mov     ah, al
or      ah, 4
mov     [edx+0Fh], ah
mov     word ptr [edx+10h], 0

loc_4C3044:
mov     [edx+14h], cx

loc_4C3048:
add     esp, 14h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4C2E58 endp




sub_4C3051 proc near

var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= byte ptr -18h
var_14= byte ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 10h
mov     ecx, edx
lea     edx, [eax+0DCh]
movzx   si, byte ptr [edx+0Dh]
mov     ebx, [eax+12h]
sar     ebx, 10h
sar     ebx, 9
lea     edi, [ebx+40h]
cmp     si, 3
jnz     short loc_4C307E
mov     ebx, 1
jmp     short loc_4C3080

loc_4C307E:
xor     ebx, ebx

loc_4C3080:
add     ebx, edi
mov     [esp+20h+var_20], bx
mov     eax, [eax+16h]
sar     eax, 10h
sar     eax, 9
lea     ebx, [eax+40h]
cmp     si, 2
jnz     short loc_4C309F
mov     eax, 1
jmp     short loc_4C30A1

loc_4C309F:
xor     eax, eax

loc_4C30A1:
add     eax, ebx
mov     [esp+20h+var_1E], ax
mov     eax, [ecx+12h]
sar     eax, 10h
sar     eax, 9
add     eax, 40h ; '@'
mov     [esp+20h+var_1C], ax
mov     eax, [ecx+16h]
sar     eax, 10h
sar     eax, 9
add     eax, 40h ; '@'
mov     [esp+20h+var_1A], ax
mov     [esp+20h+var_18], 1
xor     eax, eax
mov     al, [edx+0Eh]
mov     edx, [edx]
mov     al, [edx+eax*8+3]
mov     [esp+20h+var_14], al
test    al, 1
jz      short loc_4C3106
movsx   edx, si
mov     ecx, 10h
mov     ebx, 1
mov     eax, esp
call    sub_4C3275
test    ax, ax
jnz     short loc_4C3106
xor     ah, ah
mov     [esp+20h+var_18], ah
jmp     loc_4C3257

loc_4C3106:
test    [esp+20h+var_14], 10h
jz      short loc_4C313C
mov     eax, esi
add     eax, 2
xor     ah, ah
and     al, 3
movsx   edx, ax
mov     ecx, 10h
mov     ebx, 0FFFFFFFFh
mov     eax, esp
call    sub_4C3275
test    ax, ax
jnz     short loc_4C313C
xor     al, al
mov     [esp+20h+var_18], al
jmp     loc_4C3257

loc_4C313C:
test    [esp+20h+var_14], 2
jz      short loc_4C3167
movsx   edx, si
mov     ecx, 10h
mov     ebx, 2
mov     eax, esp
call    sub_4C3275
test    ax, ax
jnz     short loc_4C3167
xor     ch, ch
mov     [esp+20h+var_18], ch
jmp     loc_4C3257

loc_4C3167:
test    [esp+20h+var_14], 20h
jz      short loc_4C319D
mov     eax, esi
add     eax, 2
xor     ah, ah
and     al, 3
movsx   edx, ax
mov     ecx, 10h
mov     ebx, 0FFFFFFFEh
mov     eax, esp
call    sub_4C3275
test    ax, ax
jnz     short loc_4C319D
xor     cl, cl
mov     [esp+20h+var_18], cl
jmp     loc_4C3257

loc_4C319D:
test    [esp+20h+var_14], 4
jz      short loc_4C31C8
movsx   edx, si
mov     ecx, 10h
mov     ebx, 3
mov     eax, esp
call    sub_4C3275
test    ax, ax
jnz     short loc_4C31C8
xor     bh, bh
mov     [esp+20h+var_18], bh
jmp     loc_4C3257

loc_4C31C8:
test    [esp+20h+var_14], 40h
jz      short loc_4C31FB
mov     eax, esi
add     eax, 2
xor     ah, ah
and     al, 3
movsx   edx, ax
mov     ecx, 10h
mov     ebx, 0FFFFFFFDh
mov     eax, esp
call    sub_4C3275
test    ax, ax
jnz     short loc_4C31FB
xor     bl, bl
mov     [esp+20h+var_18], bl
jmp     short loc_4C3257

loc_4C31FB:
test    [esp+20h+var_14], 8
jz      short loc_4C322E
mov     eax, esi
add     eax, 3
xor     ah, ah
and     al, 3
movsx   edx, ax
mov     ecx, 10h
mov     ebx, 0FFFFFFFFh
mov     eax, esp
call    sub_4C3275
test    ax, ax
jnz     short loc_4C322E
xor     dh, dh
mov     [esp+20h+var_18], dh
jmp     short loc_4C3257

loc_4C322E:
test    [esp+20h+var_14], 80h
jz      short loc_4C3257
add     esi, 3
and     esi, 3
movsx   edx, si
mov     ecx, 6
xor     ebx, ebx
mov     eax, esp
call    sub_4C3275
test    ax, ax
jnz     short loc_4C3257
xor     dl, dl
mov     [esp+20h+var_18], dl

loc_4C3257:
xor     eax, eax
mov     al, [esp+20h+var_18]
add     esp, 10h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4C3051 endp

off_4C3265 dd offset loc_4C32AE
dd offset loc_4C32E8
dd offset loc_4C3315
dd offset loc_4C333E



sub_4C3275 proc near

var_14= word ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 8
mov     [esp+14h+var_10], edx
mov     si, [eax]
mov     dx, [eax+2]
mov     [esp+14h+var_14], dx
mov     dx, [eax+4]
mov     di, [eax+6]
mov     al, 1
cmp     word ptr [esp+14h+var_10], 3
ja      loc_4C336B
movzx   ebp, word ptr [esp+14h+var_10]
shl     ebp, 2
jmp     ss:off_4C3265[ebp]

loc_4C32AE:
mov     ebp, [esp-2]
sar     ebp, 10h
movsx   ebx, bx
sub     ebp, ebx
movsx   edi, di
cmp     edi, ebp
jnz     loc_4C336B
movsx   ebx, si
movsx   ecx, cx
mov     esi, ebx
sub     esi, ecx
movsx   edx, dx
cmp     edx, esi
jl      loc_4C336B
inc     ebx
cmp     edx, ebx

loc_4C32DD:
jg      loc_4C336B
jmp     loc_4C3369

loc_4C32E8:
movsx   esi, si
movsx   ebx, bx
sub     esi, ebx
movsx   edx, dx
cmp     edx, esi
jnz     loc_4C336B
mov     edx, [esp-2]
sar     edx, 10h
movsx   ebx, di
lea     esi, [edx-1]
cmp     ebx, esi
jl      short loc_4C336B
movsx   ecx, cx
add     edx, ecx
cmp     ebx, edx
jmp     short loc_4C32DD

loc_4C3315:
mov     ebp, [esp-2]
sar     ebp, 10h
movsx   ebx, bx
add     ebx, ebp
movsx   edi, di
cmp     edi, ebx
jnz     short loc_4C336B
movsx   ebx, si
movsx   edx, dx
lea     esi, [ebx-1]
cmp     edx, esi
jl      short loc_4C336B
movsx   ecx, cx
add     ecx, ebx
cmp     edx, ecx
jmp     short loc_4C32DD

loc_4C333E:
movsx   esi, si
movsx   ebx, bx
add     ebx, esi
movsx   edx, dx
cmp     edx, ebx
jnz     short loc_4C336B
mov     edx, [esp-2]
sar     edx, 10h
movsx   ecx, cx
mov     ebx, edx
sub     ebx, ecx
mov     ecx, ebx
movsx   ebx, di
cmp     ebx, ecx
jl      short loc_4C336B
inc     edx
cmp     ebx, edx
jg      short loc_4C336B

loc_4C3369:
xor     al, al

loc_4C336B:
xor     ah, ah
add     esp, 8
pop     ebp
pop     edi
pop     esi
retn
sub_4C3275 endp




sub_4C3374 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx

loc_4C337B:
xor     eax, eax
mov     al, [ecx+3]
mov     edx, ds:dword_53740A[eax*8]
sar     edx, 10h
movsx   eax, bx
cmp     eax, edx
jge     loc_4C2CDC
xor     edx, edx
mov     dl, ds:byte_55D0D0[eax]
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
add     eax, offset byte_57098C
call    sub_4C33B9
inc     ebx
jmp     short loc_4C337B
sub_4C3374 endp




sub_4C33B9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
add     eax, 0DCh
mov     bl, [eax+0Fh]
xor     ecx, ecx
mov     cl, [eax+0Eh]
mov     esi, ecx
shl     esi, 3
mov     ecx, [eax]
mov     bh, [ecx+esi+2]
and     bh, 0E0h
test    bl, 20h
jnz     loc_4C3466
test    bl, 10h
jz      short loc_4C3436
mov     word ptr [eax+10h], 0
cmp     word ptr [edx+44h], 0
jnz     loc_4C3466
test    bh, 80h
jz      short loc_4C3427
or      byte ptr [eax+0Fh], 60h
cmp     bh, 80h
jnz     short loc_4C340F
mov     word ptr [eax+1Ch], 0Fh
jmp     short loc_4C342B

loc_4C340F:
cmp     bh, 0A0h
jnz     short loc_4C341C
mov     word ptr [eax+1Ch], 1Eh
jmp     short loc_4C342B

loc_4C341C:
cmp     bh, 0C0h
mov     word ptr [eax+1Ch], 0F0h
jmp     short loc_4C342B

loc_4C3427:
or      byte ptr [eax+0Fh], 20h

loc_4C342B:
mov     word ptr [edx+4Ch], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C3436:
test    bl, 2
jnz     short loc_4C3466
test    bl, 1
jz      short loc_4C344B
mov     word ptr [eax+10h], 140h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C344B:
mov     ecx, edx
mov     ecx, [ecx+0Ah]
sar     ecx, 18h
shl     ecx, 3
mov     edx, [eax+4]
mov     dl, [ecx+edx+2]
xor     dh, dh
shl     edx, 4
mov     [eax+10h], dx

loc_4C3466:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C33B9 endp




sub_4C346B proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4C3474[ecx*4]
mov     dword ptr [edx+58h], 0
pop     edx
pop     ecx
retn
sub_4C346B endp




sub_4C3485 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 10h
mov     esi, eax
mov     ah, [eax]
or      ah, 6
mov     [esi], ah
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
lea     ecx, [esi+18h]
mov     eax, ecx
call    sub_4EF184
mov     edx, 400h
mov     [esp+20h+var_18], edx
mov     [esp+20h+var_1C], edx
mov     [esp+20h+var_20], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
xor     ecx, ecx
mov     cl, [esi+1]
lea     eax, [esi+48h]
xor     ebx, ebx
xor     edx, edx
call    sub_42C5B7
sub     eax, 0Ah
mov     [esi+4Ah], ax
mov     dword ptr [esi+50h], offset unk_808080
mov     dword ptr [esi+10h], offset unk_537480
mov     dword ptr [esi+58h], 0
mov     dword ptr [esi+5Ch], 0
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
add     esp, 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C3485 endp




sub_4C3504 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     eax, 670h
call    sub_47E888
test    eax, eax
jnz     short loc_4C3550
mov     ah, [edx+0Dh]
test    ah, ah
jz      short loc_4C352A
dec     ah
mov     [edx+0Dh], ah
jmp     short loc_4C3550

loc_4C352A:
mov     bl, [edx+0Ch]
test    bl, bl
jnz     short loc_4C3545
inc     byte ptr [edx+8]
mov     [edx+9], ah

loc_4C3537:
mov     eax, 670h
call    sub_47E8B8
pop     edx
pop     ecx
pop     ebx
retn

loc_4C3545:
mov     al, bl
dec     al
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 3Ch ; '<'

loc_4C3550:
mov     ebx, [ecx+184h]
cmp     edx, ebx
jnz     short loc_4C3568
mov     bl, [ebx+8]
inc     bl
mov     [edx+8], bl
mov     byte ptr [edx+9], 0Ah
jmp     short loc_4C3537

loc_4C3568:
push    80h
push    0
push    4000000h
lea     eax, [edx+58h]
push    eax
xor     eax, eax
mov     al, [edx+1]
push    eax
lea     eax, [edx+48h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC
pop     edx
pop     ecx
pop     ebx
retn
sub_4C3504 endp




sub_4C3596 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     ecx, offset unk_77E5F4
mov     edx, offset byte_5F8364
mov     al, [eax+9]
cmp     al, 7
jb      short loc_4C35EE
jbe     loc_4C380C
cmp     al, 0Dh
jb      short loc_4C35D2
jbe     loc_4C3886
cmp     al, 0Fh
jb      loc_4C38B6
jbe     loc_4C38E7
jmp     loc_4C390F

loc_4C35D2:
cmp     al, 0Bh
jb      short loc_4C35E1
jbe     loc_4C384D
jmp     loc_4C3860

loc_4C35E1:
cmp     al, 0Ah
jz      loc_4C381E
jmp     loc_4C390F

loc_4C35EE:
cmp     al, 3
jb      short loc_4C360B
jbe     loc_4C36E9
cmp     al, 5
jb      loc_4C36F6
jbe     loc_4C37B5
jmp     loc_4C37EA

loc_4C360B:
cmp     al, 1
jb      short loc_4C3616
jbe     short loc_4C363F
jmp     loc_4C36D3

loc_4C3616:
test    al, al
jnz     loc_4C390F
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      loc_4C390F
call    sub_42ABA2
test    eax, eax

loc_4C3634:
jnz     loc_4C390F
jmp     loc_4C37E2

loc_4C363F:
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, [ebp+46h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+10h], eax
mov     eax, [ebp+48h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+14h], eax
mov     eax, [ebp+4Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+18h], eax
xor     eax, eax
mov     al, [ebp+3]
mov     edx, eax
shl     edx, 5
mov     eax, [ebp+0Bh]
sar     eax, 18h
mov     eax, ds:dword_53755E[edx+eax*8]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+40h], eax
xor     eax, eax
mov     al, [ebp+3]
mov     edx, eax
shl     edx, 5
mov     eax, [ebp+0Bh]
sar     eax, 18h
mov     eax, ds:(dword_53755E+2)[edx+eax*8]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+44h], eax
xor     eax, eax
mov     al, [ebp+3]
mov     edx, eax
shl     edx, 5
mov     eax, [ebp+0Bh]
sar     eax, 18h
mov     eax, ds:dword_537562[edx+eax*8]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+48h], eax
jmp     loc_4C37E2

loc_4C36D3:
call    sub_42ABA2
test    eax, eax
jnz     loc_4C390F
mov     byte ptr [ebp+0Ch], 1Eh
jmp     loc_4C37E2

loc_4C36E9:
mov     al, [ebp+0Ch]
dec     al
mov     [ebp+0Ch], al
jmp     loc_4C3634

loc_4C36F6:
call    sub_4DE13B
mov     ecx, eax
test    eax, eax
jz      loc_4C390F
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [ecx+48h]
lea     esi, [ebp+48h]
movsd
movsd
mov     dx, [ebp+4Ah]
sub     edx, 32h ; '2'
mov     [eax+4Ah], dx
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A4h
call    sub_4D89E4
mov     dh, [ebp+3]
test    dh, dh
jnz     short loc_4C3751
mov     edx, 2710h
lea     eax, [ebp+48h]
call    sub_42C443
or      eax, 0F0000h
call    sub_4EE6C2
jmp     short loc_4C37A7

loc_4C3751:
cmp     dh, 1
jnz     short loc_4C3774
mov     edx, 2710h
lea     eax, [ebp+48h]
call    sub_42C443
or      eax, 0F0000h
call    sub_4EE6C2
mov     eax, 671h
jmp     short loc_4C37A2

loc_4C3774:
cmp     dh, 2
jnz     short loc_4C37A7
mov     edx, 2710h
mov     eax, [ebp+0Bh]
sar     eax, 18h
shl     eax, 3
mov     ebx, offset unk_537540
add     eax, ebx
call    sub_42C443
or      eax, 0F0000h
call    sub_4EE6C2
mov     eax, 672h

loc_4C37A2:
call    sub_47E8B8

loc_4C37A7:
call    sub_4C3916
mov     [ebp+54h], ecx
and     byte ptr [ebp+0], 0FDh
jmp     short loc_4C37E2

loc_4C37B5:
mov     ecx, [ebp+54h]
cmp     byte ptr [ecx], 0
jnz     loc_4C390F
cmp     byte ptr [ebp+3], 0
jz      short loc_4C37CE
mov     ecx, 41h ; 'A'
jmp     short loc_4C37D3

loc_4C37CE:
mov     ecx, 3Eh ; '>'

loc_4C37D3:
lea     eax, [ebp+48h]
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4

loc_4C37E2:
inc     byte ptr [ebp+9]
jmp     loc_4C390F

loc_4C37EA:
cmp     byte ptr ds:dword_77E760, 0
jnz     loc_4C390F
mov     cl, 1
mov     byte ptr ds:dword_77E954, cl
call    sub_42A66D
add     [ebp+9], cl
jmp     loc_4C390F

loc_4C380C:
call    sub_42ABA2
test    eax, eax
jnz     loc_4C390F
jmp     loc_4C38F0

loc_4C381E:
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      loc_4C390F
mov     byte ptr ds:dword_5F836C, 3
xor     ah, ah
mov     byte ptr ds:dword_5F836C+1, ah
mov     ds:byte_5F88AC, 30h ; '0'
xor     edx, edx
mov     ds:dword_5F8370, edx
jmp     short loc_4C37E2

loc_4C384D:
mov     ds:byte_5F88AC, 34h ; '4'
inc     byte ptr [ebp+9]
mov     byte ptr [ebp+0Ch], 10h
jmp     loc_4C390F

loc_4C3860:
mov     ch, [ebp+0Ch]
test    ch, ch
jz      short loc_4C3870
mov     ah, ch
dec     ah
mov     [ebp+0Ch], ah
jmp     short loc_4C3874

loc_4C3870:
and     byte ptr [ebp+0], 0FDh

loc_4C3874:
cmp     byte ptr [edx+0A7h], 0
jge     loc_4C390F
jmp     loc_4C37E2

loc_4C3886:
mov     eax, 671h
call    sub_47E888
test    eax, eax
jnz     short loc_4C38A2
mov     eax, 672h
call    sub_47E888
test    eax, eax
jz      short loc_4C38AC

loc_4C38A2:
mov     ecx, 40h ; '@'
jmp     loc_4C37D3

loc_4C38AC:
mov     ecx, 3Fh ; '?'
jmp     loc_4C37D3

loc_4C38B6:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4C390F
mov     dh, [ebp+3]
cmp     dh, 1
jnz     short loc_4C38CE
mov     eax, 671h
jmp     short loc_4C38D8

loc_4C38CE:
cmp     dh, 2
jnz     short loc_4C38DD
mov     eax, 672h

loc_4C38D8:
call    sub_47E8B8

loc_4C38DD:
call    sub_4C3916
jmp     loc_4C37E2

loc_4C38E7:
call    sub_42ABA2
test    eax, eax
jnz     short loc_4C390F

loc_4C38F0:
mov     eax, edx
call    sub_4B565A
or      ds:byte_5F8364, 2
mov     eax, ebp
call    sub_4DE477
mov     eax, 670h
call    sub_47EA91

loc_4C390F:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C3596 endp




sub_4C3916 proc near
mov     eax, 671h
call    sub_47E888
test    eax, eax
jz      loc_4C39D1
mov     eax, 672h
call    sub_47E888
test    eax, eax
jz      loc_4C39D1
mov     eax, 575h
call    sub_47E888
test    eax, eax
jz      short loc_4C3956
mov     eax, 576h
call    sub_47E888
test    eax, eax
jnz     short loc_4C3994

loc_4C3956:
mov     eax, 575h
call    sub_47E888
test    eax, eax
jnz     short loc_4C3979
mov     eax, 576h
call    sub_47E888
test    eax, eax
jnz     short loc_4C3979
mov     eax, 5
jmp     short loc_4C397E

loc_4C3979:
mov     eax, 4

loc_4C397E:
call    sub_47EEAE
mov     eax, 205h
call    sub_47E8B8
mov     eax, 2E6h
jmp     short loc_4C39A3

loc_4C3994:
mov     eax, 8
call    sub_47EEAE
mov     eax, 2E5h

loc_4C39A3:
call    sub_47EE82
mov     eax, 7E0h
call    sub_47EA91
mov     eax, 236h
call    sub_47EA91
mov     eax, 206h
call    sub_47E8B8
mov     ah, 1
mov     byte ptr ds:word_77E7FC, ah
mov     al, ah
retn

loc_4C39D1:
xor     al, al
retn
sub_4C3916 endp




sub_4C39D4 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax
mov     eax, [eax+54h]
cmp     byte ptr [eax], 0
jnz     short loc_4C39F2
mov     eax, ecx
call    sub_4DE477
jmp     loc_4C3A7D

loc_4C39F2:
mov     bl, [ecx+8]
test    bl, bl
jbe     short loc_4C3A03
cmp     bl, 1
jz      short loc_4C3A1A
jmp     loc_4C3A7D

loc_4C3A03:
or      byte ptr [ecx], 6
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
inc     byte ptr [ecx+8]

loc_4C3A1A:
mov     ebx, [ecx+54h]
lea     edi, [esp+2Ch+var_1C]
lea     esi, [ebx+54h]
movsd
movsd
xor     edx, edx
mov     [esp+2Ch+var_1C], dx
mov     [esp+2Ch+var_18], dx
lea     edx, [ecx+18h]
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     [esp+2Ch+var_2C], 600h
cmp     byte ptr [ebx+3], 0
jnz     short loc_4C3A55
mov     [esp+2Ch+var_28], 200h
jmp     short loc_4C3A5D

loc_4C3A55:
mov     [esp+2Ch+var_28], 400h

loc_4C3A5D:
mov     [esp+2Ch+var_24], 600h
lea     eax, [ecx+18h]
mov     edx, esp
call    sub_4EF689
lea     edi, [ecx+48h]
lea     esi, [ebx+14h]
movsd
movsd
mov     word ptr [ecx+4Ah], 0FFFFh

loc_4C3A7D:
add     esp, 18h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C39D4 endp




sub_4C3A86 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 18h
mov     ecx, eax
cmp     byte ptr ds:dword_560BE0, 0Bh
jnz     short loc_4C3AA0
mov     eax, ecx
call    sub_4DE477
jmp     short loc_4C3B08

loc_4C3AA0:
mov     al, [ecx+8]
test    al, al
ja      short loc_4C3B08
or      byte ptr [ecx], 6
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
xor     edx, edx
mov     [esp+24h+var_14], dx
mov     [esp+24h+var_12], dx
mov     [esp+24h+var_10], dx
lea     ebx, [ecx+18h]
mov     edx, ebx
lea     eax, [esp+24h+var_14]
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_24], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ah], 0FFFFh
mov     word ptr [ecx+4Ch], 200h
inc     byte ptr [ecx+8]

loc_4C3B08:
add     esp, 18h
pop     edx
pop     ecx
pop     ebx
retn
sub_4C3A86 endp




sub_4C3B0F proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4C3B15[edx*4]
pop     edx
retn
sub_4C3B0F endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_100]



sub_4C3B1F proc near
push    edx
push    esi
mov     dl, [eax+0Ah]
cmp     dl, 0Ah
jb      short loc_4C3B4A
jbe     short loc_4C3B7D
cmp     dl, 15h
jb      short loc_4C3B42
jbe     loc_4C3BA3
cmp     dl, 16h
jz      loc_4C3BB8
pop     esi
pop     edx
retn

loc_4C3B42:
cmp     dl, 14h
jz      short loc_4C3B91
pop     esi
pop     edx
retn

loc_4C3B4A:
cmp     dl, 1
jb      short loc_4C3B54
jbe     short loc_4C3B68
pop     esi
pop     edx
retn

loc_4C3B54:
test    dl, dl
jnz     loc_4C3BCE
mov     word ptr [eax+0Ch], 0

loc_4C3B62:
inc     byte ptr [eax+0Ah]
pop     esi
pop     edx
retn

loc_4C3B68:
sub     word ptr [eax+0Ch], 2
mov     edx, [eax+0Ah]
sar     edx, 10h
cmp     edx, 0FFFFFC7Ch
jg      short loc_4C3BCE
jmp     short loc_4C3B62

loc_4C3B7D:
mov     dx, [eax+4Ah]
add     edx, 2
mov     [eax+4Ah], dx
cmp     dx, 370h

loc_4C3B8D:
jl      short loc_4C3BCE
jmp     short loc_4C3BCA

loc_4C3B91:
mov     si, [eax+4Ah]
sub     esi, 2
mov     [eax+4Ah], si
cmp     si, 96h
jmp     short loc_4C3B8D

loc_4C3BA3:
sub     word ptr [eax+48h], 2
mov     edx, [eax+46h]
sar     edx, 10h
cmp     edx, 0FFFFFF6Ah
jg      short loc_4C3BCE
jmp     short loc_4C3BCA

loc_4C3BB8:
mov     dx, [eax+48h]
add     edx, 2
mov     [eax+48h], dx
cmp     dx, 96h
jl      short loc_4C3BCE

loc_4C3BCA:
mov     byte ptr [eax+0Ah], 2

loc_4C3BCE:
pop     esi
pop     edx
sub_4C3B1F endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_101]



sub_4C3BD1 proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h
var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 3Ch
mov     ecx, eax
mov     al, [eax+8]
cmp     al, 1
jb      short loc_4C3BE8
jbe     short loc_4C3C0A
jmp     loc_4C3C61

loc_4C3BE8:
test    al, al
jnz     short loc_4C3C61
mov     al, [ecx+3]
mov     [esp+4Ch+var_14], al
lea     edx, [esp+4Ch+var_14]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
inc     byte ptr [ecx+8]
jmp     short loc_4C3C61

loc_4C3C0A:
lea     esi, [ecx+18h]
mov     eax, esi
call    sub_4EF184
mov     ax, [ecx+0Ch]
mov     [esp+4Ch+var_1C], ax
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_5375D4[eax*4]
mov     [esp+4Ch+var_1A], ax
xor     edx, edx
mov     [esp+4Ch+var_18], dx
mov     eax, esp
call    sub_4EF184
mov     edx, esp
lea     eax, [esp+4Ch+var_1C]
call    sub_4EF638
mov     ebx, esi
mov     edx, esp
mov     eax, esi
call    sub_4EF388
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_4C3C5A[edx*4]

loc_4C3C61:
add     esp, 3Ch
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C3BD1 endp




sub_4C3C69 proc near

var_78= dword ptr -78h
var_70= dword ptr -70h
var_68= dword ptr -68h
var_60= dword ptr -60h
var_58= dword ptr -58h
var_50= dword ptr -50h
var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_38= dword ptr -38h
var_30= dword ptr -30h
var_28= dword ptr -28h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 90h
mov     ecx, eax
cmp     byte ptr [eax+3], 0FFh
jnz     short loc_4C3C8E
call    sub_4C4066
mov     eax, ecx
call    sub_4DE477
jmp     loc_4C3E52

loc_4C3C8E:
xor     edx, edx
mov     dl, [ecx+8]
mov     eax, ecx
call    ds:funcs_4C3C95[edx*4]
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jnz     loc_4C3E4B
mov     [esp+0A8h+var_20], 100h
xor     ebx, ebx
mov     [esp+0A8h+var_1E], bx
xor     esi, esi
mov     [esp+0A8h+var_1C], si
mov     eax, esp
call    sub_4EF1AB
mov     edx, [ecx+9]
sar     edx, 18h
shl     edx, 0Ah
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 0Bh
add     edx, 800h
add     eax, edx
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+0A8h+var_48]
lea     edx, [esp+0A8h+var_20]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [ecx+46h]
sar     eax, 10h
add     [esp+0A8h+var_48], eax
mov     eax, [esp+0A8h+var_48]
mov     [esp+0A8h+var_20], ax
mov     eax, [ecx+48h]
sar     eax, 10h
add     [esp+0A8h+var_44], eax
mov     eax, [esp+0A8h+var_44]
mov     [esp+0A8h+var_1E], ax
mov     eax, [ecx+4Ah]
sar     eax, 10h
add     [esp+0A8h+var_40], eax
mov     eax, [esp+0A8h+var_40]
mov     [esp+0A8h+var_1C], ax
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     eax, (offset dword_5F8376+2)
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_68]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_28]
call    sub_4F0003
lea     eax, [esp+0A8h+var_20]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_58]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_30]
call    sub_4F0003
lea     eax, [ecx+48h]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_78]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_38]
call    sub_4F0003
mov     ebx, [esp+0A8h+var_78]
mov     edi, [esp+0A8h+var_58]
sub     ebx, edi
jz      loc_4C3E4B
mov     eax, [esp+0A8h+var_70]
mov     ebp, [esp+0A8h+var_50]
sub     eax, ebp
mov     edx, [esp+0A8h+var_68]
sub     edx, edi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     eax, ebp
cmp     eax, [esp+0A8h+var_60]
jge     short loc_4C3E4B
fld     [esp+0A8h+var_28]
fcomp   [esp+0A8h+var_30]
fnstsw  ax
sahf
jnb     short loc_4C3E22
fld     [esp+0A8h+var_28]
fcomp   [esp+0A8h+var_38]
fnstsw  ax
sahf
ja      short loc_4C3E42

loc_4C3E22:
fld     [esp+0A8h+var_28]
fcomp   [esp+0A8h+var_30]
fnstsw  ax
sahf
jbe     short loc_4C3E4B
fld     [esp+0A8h+var_28]
fcomp   [esp+0A8h+var_38]
fnstsw  ax
sahf
jnb     short loc_4C3E4B

loc_4C3E42:
mov     dword ptr [ecx+50h], 2404040h
jmp     short loc_4C3E52

loc_4C3E4B:
mov     dword ptr [ecx+50h], offset unk_808080

loc_4C3E52:
add     esp, 90h

loc_4C3E58:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C3C69 endp




sub_4C3E5F proc near
or      byte ptr [eax], 2
inc     byte ptr [eax+8]
retn
sub_4C3E5F endp




sub_4C3E66 proc near
push    edx
mov     edx, eax
mov     eax, 7B1h
call    sub_47E888
test    eax, eax
jz      short loc_4C3EA5
mov     eax, (offset dword_5F8376+2)
call    sub_42C443
cmp     eax, [edx+54h]
jnz     short loc_4C3EA5
mov     byte ptr [edx+8], 2
mov     byte ptr [edx+0Bh], 10h
mov     eax, 7B2h
call    sub_47E8B8
add     edx, 48h ; 'H'
mov     eax, 105h
call    sub_4D8BC3

loc_4C3EA5:
pop     edx
retn
sub_4C3E66 endp




; int __fastcall sub_4C3EA7(int, int)
sub_4C3EA7 proc near

var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
lea     edx, [eax+18h]
mov     eax, edx
call    sub_4EF1AB
xor     eax, eax
mov     al, [ecx+0Bh]
mov     [esp+10h+var_10], eax ; int
fild    word ptr [esp+10h+var_10]
fmul    ds:flt_50A410
fstp    dword ptr [ecx+18h]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     ah, [ecx+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4C3F17
inc     byte ptr [ecx+8]
and     byte ptr [ecx], 0FDh
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, 7B2h
call    sub_47EA91
mov     edx, [ecx+54h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [ecx+40h]
mov     ds:dword_6E40B4[eax*4], edx

loc_4C3F17:
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_4C3EA7 endp




; int __fastcall sub_4C3F1E(int, int)
sub_4C3F1E proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     eax, 7B0h
call    sub_47E888
lea     ebx, [ecx+48h]
lea     edx, [ecx+18h]
test    eax, eax
jz      short loc_4C3F89
mov     eax, 7B1h
call    sub_47E888
test    eax, eax
jnz     loc_4C3FDE
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h
mov     eax, edx
call    sub_4EF1AB
mov     dword ptr [ecx+18h], 0
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
or      byte ptr [ecx], 2
mov     eax, 7B2h
call    sub_47E8B8
mov     edx, ebx
mov     eax, 106h
call    sub_4D8BC3
pop     edx
pop     ecx
pop     ebx
retn

loc_4C3F89:
mov     eax, (offset dword_5F8376+2)
call    sub_42C443
cmp     eax, [ecx+54h]
jz      short loc_4C3FDE
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h
mov     eax, edx
call    sub_4EF1AB
mov     dword ptr [ecx+18h], 0
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
or      byte ptr [ecx], 2
mov     eax, 7B2h
call    sub_47E8B8
mov     edx, ebx
mov     eax, 106h
call    sub_4D8BC3
mov     eax, 7B1h
call    sub_47EA91

loc_4C3FDE:
pop     edx
pop     ecx
pop     ebx
retn
sub_4C3F1E endp




; int __fastcall sub_4C3FE2(int, int)
sub_4C3FE2 proc near

var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
mov     ah, [eax+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4C400F
inc     byte ptr [ecx+8]
xor     ebx, ebx
xor     edx, edx
mov     eax, 186h
call    sub_4D89E4
mov     eax, 7B2h
call    sub_47EA91

loc_4C400F:
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
xor     eax, eax
mov     al, [ecx+0Bh]
mov     ebx, 10h
sub     ebx, eax
mov     [esp+10h+var_10], ebx ; int
fild    [esp+10h+var_10]
fmul    ds:flt_50A414
fstp    dword ptr [ecx+18h]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
jmp     loc_4C3F17
sub_4C3FE2 endp




sub_4C4047 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+54h]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, [edx+3Ch]
mov     ds:dword_6E40B4[eax*4], ecx
mov     byte ptr [edx+8], 0
pop     edx
pop     ecx
retn
sub_4C4047 endp




sub_4C4066 proc near

var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
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
sub     esp, 2Ch
mov     [esp+44h+var_24], 1
xor     ecx, ecx
mov     [esp+44h+var_20], ecx

loc_4C407D:
mov     eax, [esp+44h+var_20]
shl     eax, 3
cmp     ds:byte_537668[eax], 0FFh
jz      short loc_4C40BB
mov     dl, ds:byte_77E7D4
cmp     dl, ds:byte_537668[eax]
jnz     short loc_4C40B5
mov     dl, byte ptr ds:dword_77E7D5
cmp     dl, ds:byte_537669[eax]
jnz     short loc_4C40B5
mov     eax, ds:off_53766C[eax]
mov     [esp+44h+var_24], eax
jmp     short loc_4C40C3

loc_4C40B5:
inc     [esp+44h+var_20]
jmp     short loc_4C407D

loc_4C40BB:
test    ecx, ecx
jz      loc_4C42BB

loc_4C40C3:
xor     eax, eax
mov     al, ds:byte_77EAC5
mov     [esp+44h+var_38], eax
xor     eax, eax
mov     al, ds:byte_77EAC4
mov     [esp+44h+var_40], eax
xor     eax, eax
mov     al, ds:byte_77EAC3
mov     [esp+44h+var_3C], eax
xor     eax, eax
mov     al, ds:byte_77EAC2
mov     [esp+44h+var_44], eax
xor     eax, eax
mov     al, ds:byte_77E802
mov     [esp+44h+var_28], eax
mov     eax, [esp+44h+var_3C]
mov     [esp+44h+var_34], eax

loc_4C4101:
mov     eax, [esp+44h+var_34]
cmp     eax, [esp+44h+var_44]
jge     loc_4C42BB
mov     eax, [esp+44h+var_38]
mov     [esp+44h+var_30], eax

loc_4C4116:
mov     eax, [esp+44h+var_30]
cmp     eax, [esp+44h+var_40]
jge     loc_4C42B2
sub     eax, [esp+44h+var_38]
add     eax, eax
mov     edi, ds:dword_77E700
add     edi, eax
mov     edx, [esp+44h+var_34]
sub     edx, [esp+44h+var_3C]
xor     eax, eax
mov     ax, ds:word_77EAAE
imul    eax, edx
movsx   edi, word ptr [edi+eax*2]
test    edi, edi
jle     loc_4C42A9
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     eax, ds:dword_6E40B4[eax*4]
mov     eax, [eax]
mov     [esp+44h+var_2C], eax
xor     ebx, ebx
mov     [esp+44h+var_20], ebx

loc_4C416B:
mov     eax, [esp+44h+var_20]
shl     eax, 4
add     eax, [esp+44h+var_24]
mov     eax, [eax+4]
mov     ebp, [esp+44h+var_2C]
cmp     eax, ebp
jnz     loc_4C428E
xor     eax, ebp
mov     [esp+44h+var_1C], eax
jmp     short loc_4C419F

loc_4C418D:
mov     ecx, [esp+44h+var_1C]
inc     ecx
mov     [esp+44h+var_1C], ecx ; int
cmp     ecx, 2
jge     loc_4C4284

loc_4C419F:
call    sub_4DE227
mov     ecx, eax
test    eax, eax
jz      short loc_4C418D
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 21h ; '!'
mov     al, byte ptr [esp+44h+var_1C]
mov     [ecx+3], al
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     ebx, [esp+44h+var_20]
shl     ebx, 4
add     ebx, [esp+44h+var_24]
mov     eax, [esp+44h+var_1C]
mov     al, [ebx+eax+0Eh]
mov     [ecx+0Ch], al
mov     al, byte ptr [esp+44h+var_28]
mov     [ecx+0Dh], al
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 3
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 2
add     eax, edx
mov     esi, edi
shl     esi, 2
sub     esi, edi
mov     dx, word ptr ds:(dword_6E40AA+2)[esi*4]
add     dx, [ebx+8]
mov     ax, ds:word_5376B8[eax]
add     edx, eax
mov     [ecx+48h], dx
mov     edx, [ecx+9]
sar     edx, 18h
shl     edx, 3
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 2
add     eax, edx
mov     dx, word ptr ds:(dword_6E40AE+2)[esi*4]
add     dx, [ebx+0Ch]
mov     ax, ds:word_5376BA[eax]
add     edx, eax
mov     [ecx+4Ch], dx
mov     dx, word ptr ds:dword_6E40AE[esi*4]
mov     ax, [ebx+0Ah]
add     edx, eax
mov     [ecx+4Ah], dx
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     [ecx+54h], edi
mov     eax, ds:dword_6E40B4[esi*4]
mov     [ecx+3Ch], eax
mov     eax, [ebx]
call    sub_4A7AAC
mov     [ecx+40h], eax
jmp     loc_4C418D

loc_4C4284:
inc     [esp+44h+var_28]
inc     ds:byte_77E802

loc_4C428E:
mov     ebp, [esp+44h+var_20]
inc     ebp
mov     [esp+44h+var_20], ebp
mov     eax, ebp
shl     eax, 4
add     eax, [esp+44h+var_24]
cmp     dword ptr [eax], 0
jnz     loc_4C416B

loc_4C42A9:
inc     [esp+44h+var_30]
jmp     loc_4C4116

loc_4C42B2:
inc     [esp+44h+var_34]
jmp     loc_4C4101

loc_4C42BB:
add     esp, 2Ch
jmp     loc_4C3E58
sub_4C4066 endp




sub_4C42C3 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 18h
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+8]
test    al, al
jbe     short loc_4C42E5
cmp     al, 1
jz      loc_4C4357
jmp     loc_4C43BC

loc_4C42E5:
or      byte ptr [ecx], 6
mov     ebx, [ecx+9]
sar     ebx, 18h
mov     al, ds:byte_537730[ebx]
mov     [ecx+3], al
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
cmp     byte ptr [ecx+0Ch], 5
jz      short loc_4C4310
mov     dword ptr [ecx+50h], offset unk_808080
jmp     short loc_4C4317

loc_4C4310:
mov     dword ptr [ecx+50h], 2808080h

loc_4C4317:
mov     ebx, [ecx+9]
sar     ebx, 18h
mov     ax, ds:word_5376F0[ebx*8]
mov     [ecx+48h], ax
mov     ebx, [ecx+9]
sar     ebx, 18h
mov     ax, ds:word_5376F2[ebx*8]
mov     [ecx+4Ah], ax
mov     eax, [ecx+9]
sar     eax, 18h
mov     ax, ds:word_5376F4[eax*8]
mov     [ecx+4Ch], ax
mov     dword ptr [ecx+10h], offset unk_537738
inc     byte ptr [ecx+8]

loc_4C4357:
xor     edx, edx
mov     [esp+28h+var_18], dx
mov     eax, [ecx+9]
sar     eax, 18h
mov     ax, ds:word_5376F6[eax*8]
mov     [esp+28h+var_16], ax
mov     [esp+28h+var_14], dx
lea     ebx, [ecx+18h]
mov     edx, ebx
lea     eax, [esp+28h+var_18]
call    sub_4EF638
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, [esi+184h]
cmp     ecx, eax
jnz     short loc_4C43BC
mov     ecx, [eax+9]
sar     ecx, 18h
add     ecx, 3Ch ; '<'
add     eax, 48h ; 'H'
xor     ebx, ebx
xor     edx, edx
call    sub_4A62D4

loc_4C43BC:
add     esp, 18h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C42C3 endp




sub_4C43C4 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]     ; int
call    ds:funcs_4C43CA[edx*4]
pop     edx
retn
sub_4C43C4 endp




; int __fastcall sub_4C43D3(int, int)
sub_4C43D3 proc near
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF184
mov     eax, [ecx+0Ch]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     eax, ecx
call    sub_4C4612
mov     dword ptr [ecx+50h], offset unk_808080
mov     dword ptr [ecx+10h], offset unk_537754
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+5Ch], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
retn
sub_4C43D3 endp




; int __fastcall sub_4C4431(int, int)
sub_4C4431 proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
mov     ecx, eax
add     eax, 18h
call    sub_4EF184
mov     bl, [ecx+9]
test    bl, bl
jbe     short loc_4C4450
cmp     bl, 1
jz      short loc_4C4466
jmp     loc_4C44DF

loc_4C4450:
mov     eax, [ecx+48h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+58h], eax
mov     dword ptr [ecx+5Ch], 400000h
inc     byte ptr [ecx+9]

loc_4C4466:
lea     eax, [ecx+48h]
call    sub_42C7E7
mov     esi, eax
sub     esi, 14h
mov     eax, [ecx+5Ch]
sub     [ecx+58h], eax
sub     dword ptr [ecx+5Ch], 40000h
mov     eax, [ecx+58h]
shr     eax, 10h
mov     [ecx+4Ah], ax
mov     edx, [ecx+48h]
sar     edx, 10h
movsx   eax, si
lea     ebx, [ecx+18h]
cmp     edx, eax
jle     short loc_4C44B3
mov     edx, ebx
mov     eax, 400h
call    sub_4EF486
mov     [ecx+4Ah], si
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Ah], 0
jmp     short loc_4C44DF

loc_4C44B3:
xor     eax, eax
mov     al, [ecx+0Ah]
shl     eax, 4
and     eax, 0FFFh
mov     edx, ebx
call    sub_4EF486
xor     eax, eax
mov     al, [ecx+0Ah]
shl     eax, 4
and     eax, 0FFFh
mov     edx, ebx
call    sub_4EF50D
add     byte ptr [ecx+0Ah], 0Dh

loc_4C44DF:
mov     eax, ecx
call    sub_4C4612
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C4431 endp




sub_4C44EB proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     short loc_4C4502
inc     byte ptr [edx+8]
mov     byte ptr [edx+9], 0

loc_4C4502:
push    80h
push    0
push    4000000h
lea     eax, [esi+58h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
lea     eax, [esi+48h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC
mov     dword ptr [esi+58h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C44EB endp

jpt_4C4562 dd offset loc_4C4569 ; jump table for switch statement
dd offset loc_4C459E
dd offset loc_4C45A7
dd offset loc_4C45CA
dd offset loc_4C45F3



sub_4C454C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_4C4562      ; jumptable 004C4562 default case
and     eax, 0FFh
jmp     jpt_4C4562[eax*4] ; switch jump

loc_4C4569:             ; jumptable 004C4562 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4C4562      ; jumptable 004C4562 default case
mov     byte ptr ds:dword_5F836C, 3
xor     dh, dh
mov     byte ptr ds:dword_5F836C+1, dh
xor     edx, edx
mov     ds:dword_5F8370, edx

loc_4C4592:
inc     byte ptr [esi+9]
mov     byte ptr [esi+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C459E:             ; jumptable 004C4562 case 1
mov     ds:byte_5F88AC, 34h ; '4'
jmp     short loc_4C4592

loc_4C45A7:             ; jumptable 004C4562 case 2
mov     bl, [esi+0Ah]
cmp     bl, 10h
jbe     short loc_4C45BE
and     byte ptr [esi], 0FDh
mov     byte ptr [esi+0Ah], 0

loc_4C45B6:
inc     byte ptr [esi+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C45BE:
mov     bh, bl
inc     bh
mov     [esi+0Ah], bh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C45CA:             ; jumptable 004C4562 case 3
cmp     ds:byte_5F840B, 0
jge     short def_4C4562 ; jumptable 004C4562 default case
lea     eax, [esi+48h]
mov     ecx, 45h ; 'E'
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
mov     eax, 546h
call    sub_47E8B8
jmp     short loc_4C45B6

loc_4C45F3:             ; jumptable 004C4562 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C4562 ; jumptable 004C4562 default case
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, esi
call    sub_4DE477

def_4C4562:             ; jumptable 004C4562 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C454C endp




sub_4C4612 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    edx
push    esi
sub     esp, 10h
mov     edx, 200h
mov     [esp+18h+var_10], edx
mov     [esp+18h+var_14], edx
mov     [esp+18h+var_18], edx
xor     esi, esi
mov     [esp+18h+var_C], esi
add     eax, 18h
mov     edx, esp
call    sub_4EF689
add     esp, 10h
pop     esi
pop     edx
retn
sub_4C4612 endp




sub_4C463D proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4C4643[edx*4]
pop     edx
retn
sub_4C463D endp




sub_4C464C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C4652[edx*4]
pop     edx
retn
sub_4C464C endp




sub_4C465B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+3Ch]
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     eax, [ecx+18h]
call    sub_4EF184
mov     word ptr [ebx], 0
mov     word ptr [ebx+2], 0
mov     word ptr [ebx+4], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     dword ptr [ecx+50h], 2C808080h
mov     dl, [ecx+5]
test    dl, dl
jnz     short loc_4C46B2
mov     word ptr [ebx+8], 605h
jmp     short loc_4C46C5

loc_4C46B2:
cmp     dl, 1
jnz     short loc_4C46BF
mov     word ptr [ebx+8], 606h
jmp     short loc_4C46C5

loc_4C46BF:
mov     word ptr [ebx+8], 604h

loc_4C46C5:
mov     eax, ecx
call    sub_4C46D0
pop     edx
pop     ecx
pop     ebx
retn
sub_4C465B endp




sub_4C46D0 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
sub     esp, 10h
mov     edx, eax
lea     ebx, [eax+3Ch]
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_4C46E0[ecx*4]
lea     ecx, [edx+18h]  ; int
mov     edx, ecx
mov     eax, ebx
call    sub_4EF638
mov     edx, 200h
mov     [esp+1Ch+var_1C], edx
mov     [esp+1Ch+var_18], edx
mov     [esp+1Ch+var_14], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 10h
pop     edx
pop     ecx
pop     ebx
retn
sub_4C46D0 endp



; Attributes: thunk

sub_4C4713 proc near
jmp     sub_4DE477
sub_4C4713 endp




sub_4C4718 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
add     eax, 3Ch ; '<'
mov     ax, [eax+8]
and     eax, 0FFFFh
call    sub_47E888
test    eax, eax
jnz     loc_4C47A2
cmp     byte ptr [edx+0Ah], 0
jz      short loc_4C4760
mov     bl, [edx+0Bh]
test    bl, bl
jnz     short loc_4C4755
mov     dword ptr [edx+50h], 2C808080h
mov     [edx+0Ah], bl
mov     byte ptr [edx+0Bh], 80h
pop     edx
pop     ecx
pop     ebx
retn

loc_4C4755:
mov     bh, bl
dec     bh
mov     [edx+0Bh], bh
pop     edx
pop     ecx
pop     ebx
retn

loc_4C4760:
mov     cl, [edx+0Bh]
test    cl, cl
jnz     short loc_4C4797
mov     al, [edx+5]
test    al, al
jnz     short loc_4C4777
mov     dword ptr [edx+50h], 2C108010h
jmp     short loc_4C478B

loc_4C4777:
cmp     al, 1
jnz     short loc_4C4784
mov     dword ptr [edx+50h], 2C108080h
jmp     short loc_4C478B

loc_4C4784:
mov     dword ptr [edx+50h], 2C101080h

loc_4C478B:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0Bh], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4C4797:
mov     ch, cl
dec     ch
mov     [edx+0Bh], ch
pop     edx
pop     ecx
pop     ebx
retn

loc_4C47A2:
mov     byte ptr [edx+9], 1
mov     ah, [edx+5]
test    ah, ah
jnz     short loc_4C47B8
mov     dword ptr [edx+50h], 2C108010h
pop     edx
pop     ecx
pop     ebx
retn

loc_4C47B8:
cmp     ah, 1
jnz     short loc_4C47C8
mov     dword ptr [edx+50h], 2C108080h
pop     edx
pop     ecx
pop     ebx
retn

loc_4C47C8:
mov     dword ptr [edx+50h], 2C101080h
pop     edx
pop     ecx
pop     ebx
retn
sub_4C4718 endp




sub_4C47D3 proc near
push    edx
mov     edx, eax
add     eax, 3Ch ; '<'
mov     ax, [eax+8]
and     eax, 0FFFFh
call    sub_47E888
test    eax, eax
jnz     short loc_4C47F7
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0

loc_4C47F7:
pop     edx
retn
sub_4C47D3 endp




sub_4C47F9 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C47FF[edx*4]
pop     edx
retn
sub_4C47F9 endp




sub_4C4808 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     ah, [eax]
or      ah, 6
mov     [ebp+0], ah
mov     dword ptr [ebp+40h], 400h
mov     dword ptr [ebp+44h], 0
lea     edx, [ebp+3]
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+50h], 2808080h
mov     eax, 62Dh
call    sub_47E888
test    eax, eax
jz      short loc_4C4877
xor     ecx, ecx

loc_4C484A:
xor     eax, eax
mov     al, [ebp+3]
shl     eax, 7
mov     esi, ecx
mov     edi, esp
lea     esi, word_55D0A0[eax+esi*8]
movsd
movsd
mov     edx, ecx
or      edx, 10000h
mov     eax, [ebp+14h]
mov     ebx, esp
call    sub_4EDFC2
inc     ecx
cmp     ecx, 10h
jb      short loc_4C484A

loc_4C4877:
cmp     byte ptr [ebp+3], 3
jnz     short loc_4C4887
mov     eax, 62Dh
call    sub_47E8B8

loc_4C4887:
xor     ecx, ecx

loc_4C4889:
mov     edx, ecx
or      edx, 10000h
mov     eax, [ebp+14h]
call    sub_4EDF7C
movzx   esi, byte ptr [ebp+3]
shl     esi, 7
mov     edx, ecx
lea     edi, word_55D0A0[esi+edx*8]
mov     esi, eax
movsd
movsd
inc     ecx
cmp     ecx, 10h
jb      short loc_4C4889
mov     eax, [ebp+14h]
mov     ebx, [eax+70h]
mov     ebx, [ebx+24h]
xor     ecx, ecx

loc_4C48BE:
mov     esi, ecx
xor     edx, edx
mov     dl, [ebp+3]
dec     edx
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
add     eax, eax
lea     edx, [ecx+ecx]
add     eax, edx
mov     dx, [ebx+esi*8+2]
mov     ds:word_55D320[eax], dx
inc     ecx
cmp     ecx, 19h
jb      short loc_4C48BE
mov     al, [ebp+3]
dec     al
shl     al, 4
mov     [ebp+0Ah], al
lea     eax, [ebp+48h]
call    sub_42C443
mov     [ebp+54h], eax
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_6E40B4[eax*4]
mov     [ebp+0Ch], eax
mov     eax, ds:dword_537760
call    sub_4A7AAC
mov     [ebp+3Ch], eax
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Bh], 0
add     esp, 8

loc_4C492E:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C4808 endp




sub_4C4935 proc near

var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch
var_28= byte ptr -28h
var_27= byte ptr -27h
var_26= byte ptr -26h
var_25= byte ptr -25h
var_24= byte ptr -24h
var_23= byte ptr -23h
var_22= byte ptr -22h
var_21= byte ptr -21h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ecx, eax
mov     [esp+30h+var_20], offset byte_5F8364
lea     edx, [eax+48h]
cmp     byte ptr [eax+3], 1
jnz     short loc_4C4985
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      short loc_4C4968

loc_4C495F:
mov     byte ptr [ecx+0Bh], 0
jmp     loc_4C4BB8

loc_4C4968:
xor     bl, bl
mov     bh, [ecx+0Bh]
inc     bh
mov     [ecx+0Bh], bh
cmp     bh, 18h
jnz     loc_4C4A46
mov     eax, 11Dh
jmp     loc_4C4A3E

loc_4C4985:
cmp     byte ptr [ecx+3], 2
jnz     loc_4C4A18
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      short loc_4C49B9
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      short loc_4C49B9
mov     eax, 606h
call    sub_47E888
test    eax, eax
jnz     short loc_4C49ED

loc_4C49B9:
cmp     dword ptr [ecx+44h], 0
jz      short loc_4C49ED
mov     [esp+30h+var_30], 0DF00h
mov     [esp+30h+var_2E], 0F37Fh
mov     [esp+30h+var_2C], 1500h
mov     edx, esp
xor     eax, eax
call    sub_42C4B7
mov     edx, 71202h
call    sub_4A7AE1
mov     dword ptr [ecx+44h], 0

loc_4C49ED:
mov     eax, 606h
call    sub_47E888
test    eax, eax
jnz     loc_4C495F
xor     bl, bl
mov     ah, [ecx+0Bh]
inc     ah
mov     [ecx+0Bh], ah
cmp     ah, 18h
jnz     short loc_4C4A46
lea     edx, [ecx+48h]
mov     eax, 11Bh
jmp     short loc_4C4A3E

loc_4C4A18:
mov     eax, 605h
call    sub_47E888
test    eax, eax
jnz     loc_4C495F
xor     bl, bl
mov     bh, [ecx+0Bh]
inc     bh
mov     [ecx+0Bh], bh
cmp     bh, 18h
jnz     short loc_4C4A46
mov     eax, 11Ah

loc_4C4A3E:
call    sub_4D8BC3
mov     [ecx+0Bh], bl

loc_4C4A46:
test    bl, bl
jnz     loc_4C4BB8
mov     dword ptr [ecx+50h], 2808080h
mov     ah, [ecx+0Ah]
add     ah, 2
mov     [ecx+0Ah], ah
cmp     ah, 40h ; '@'
jb      short loc_4C4A66
mov     [ecx+0Ah], bl

loc_4C4A66:
xor     eax, eax
mov     al, [ecx+0Ah]
mov     [esp+30h+var_1C], eax
xor     ebp, ebp

loc_4C4A71:
mov     eax, ebp
shl     eax, 3
lea     edi, [esp+30h+var_28]
lea     esi, unk_55D2A0[eax]
movsd
movsd
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 7
mov     dl, byte ptr ds:word_55D0A0[edx+eax]
mov     bh, byte ptr [esp+30h+var_1C]
add     dl, bh
mov     [esp+30h+var_28], dl
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 7
mov     dl, ds:byte_55D0A2[edx+eax]
add     dl, bh
mov     [esp+30h+var_26], dl
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 7
mov     dl, byte ptr ds:dword_55D0A4[edx+eax]
add     dl, bh
mov     [esp+30h+var_24], dl
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 7
mov     dl, byte ptr ds:(dword_55D0A4+2)[edx+eax]
add     dl, bh
mov     [esp+30h+var_22], dl
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 7
mov     bl, [ecx+3]
dec     bl
shl     bl, 4
mov     dl, byte ptr ds:(word_55D0A0+1)[edx+eax]
sub     dl, bl
mov     [esp+30h+var_27], dl
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 7
mov     bl, [ecx+3]
dec     bl
shl     bl, 4
mov     dl, ds:byte_55D0A3[edx+eax]
sub     dl, bl
mov     [esp+30h+var_25], dl
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 7
mov     bl, [ecx+3]
dec     bl
shl     bl, 4
mov     dl, byte ptr ds:(dword_55D0A4+1)[edx+eax]
sub     dl, bl
mov     [esp+30h+var_23], dl
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 7
add     eax, edx
mov     dl, [ecx+3]
dec     dl
shl     dl, 4
mov     al, byte ptr ds:(dword_55D0A4+3)[eax]
sub     al, dl
mov     [esp+30h+var_21], al
mov     edx, ebp
or      edx, 10000h
mov     eax, [ecx+14h]
lea     ebx, [esp+30h+var_28]
call    sub_4EDFC2
inc     ebp
cmp     ebp, 10h
jb      loc_4C4A71
mov     eax, [ecx+14h]
mov     ebx, [eax+70h]
mov     ebx, [ebx+24h]
xor     ebp, ebp

loc_4C4B78:
xor     eax, eax
mov     al, [ecx+3]
lea     edx, [eax-1]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
lea     edx, [ebp+ebp+0]
mov     dx, ds:word_55D320[edx+eax*2]
add     edx, 4
call    rand_
xor     ah, ah
and     al, 7
sub     edx, eax
mov     eax, ebp
mov     [ebx+eax*8+2], dx
inc     ebp
cmp     ebp, 19h
jb      short loc_4C4B78
jmp     loc_4C4C2A

loc_4C4BB8:
mov     dword ptr [ecx+50h], 2000000h
mov     dh, [ecx+3]
cmp     dh, 2
jnz     short loc_4C4C2A
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      short loc_4C4C2A
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      short loc_4C4C2A
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      short loc_4C4C2A
cmp     dh, [ecx+3]
jnz     short loc_4C4C2A
cmp     dword ptr [ecx+44h], 0
jnz     short loc_4C4C2A
mov     dword ptr [ecx+44h], 1
mov     [esp+30h+var_30], 0DF00h
mov     [esp+30h+var_2E], 0F37Fh
mov     [esp+30h+var_2C], 1500h
mov     edx, esp
xor     eax, eax
call    sub_42C4B7
mov     edx, 70202h
call    sub_4A7AE1

loc_4C4C2A:
mov     eax, [esp+30h+var_20]
mov     eax, [eax+12h]
sar     eax, 10h
cmp     eax, 0FFFFDEE0h
jle     short loc_4C4C4F
xor     eax, eax
mov     [esp+30h+var_30], ax
mov     [esp+30h+var_2E], 800h
mov     [esp+30h+var_2C], ax
jmp     short loc_4C4C5F

loc_4C4C4F:
xor     ebx, ebx
mov     [esp+30h+var_30], bx
mov     [esp+30h+var_2E], bx
mov     [esp+30h+var_2C], bx

loc_4C4C5F:
lea     edx, [ecx+18h]
mov     eax, esp
call    sub_4EF638
add     esp, 18h
jmp     loc_4C492E
sub_4C4935 endp




sub_4C4C71 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
movzx   edi, byte ptr [eax+8]
lea     esi, [eax+58h]
mov     ebx, esi
mov     edx, offset dword_560BDC
call    ds:funcs_4C4C86[edi*4]
mov     edx, esi
mov     eax, ecx
call    sub_4C5194
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C4C71 endp




sub_4C4C9C proc near
push    ecx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
mov     word ptr [ebx], 0
mov     word ptr [ebx+2], 1000h
mov     word ptr [ebx+4], 0
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_5377C8[eax*2]
mov     [ebx+6], ax
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     ecx
retn
sub_4C4C9C endp




sub_4C4CE2 proc near
push    ecx
xor     ecx, ecx
mov     cl, [eax+3]
call    ds:funcs_4C4CE8[ecx*4]
pop     ecx
retn
sub_4C4CE2 endp

jpt_4C4D12 dd offset loc_4C4D19 ; jump table for switch statement
dd offset loc_4C4D2D
dd offset loc_4C4D45
dd offset loc_4C4D51
dd offset def_4C4D12



sub_4C4D05 proc near
push    ecx
push    esi
mov     cl, [eax+9]
cmp     cl, 4           ; switch 5 cases
ja      short def_4C4D12 ; jumptable 004C4D12 default case, case 4
; jumptable 004C4D82 default case, case 4
movzx   esi, cl
jmp     jpt_4C4D12[esi*4] ; switch jump

loc_4C4D19:             ; jumptable 004C4D12 case 0
cmp     byte ptr [edx+9], 6
jnz     short def_4C4D12 ; jumptable 004C4D12 default case, case 4
; jumptable 004C4D82 default case, case 4
cmp     dword ptr [edx+10h], 3Ch ; '<'

loc_4C4D23:             ; jumptable 004C4D12 default case, case 4
jnz     short def_4C4D12 ; jumptable 004C4D82 default case, case 4
inc     cl
mov     [eax+9], cl

def_4C4D12:             ; jumptable 004C4D12 default case, case 4
pop     esi             ; jumptable 004C4D82 default case, case 4
pop     ecx
retn

loc_4C4D2D:             ; jumptable 004C4D12 case 1
mov     si, [ebx+4]
add     esi, 0Ah
mov     [ebx+4], si
cmp     si, 500h

loc_4C4D3D:             ; jumptable 004C4D12 default case, case 4
jnz     short def_4C4D12 ; jumptable 004C4D82 default case, case 4
inc     byte ptr [eax+9]
pop     esi
pop     ecx
retn

loc_4C4D45:             ; jumptable 004C4D12 case 2
cmp     byte ptr [edx+9], 0Dh
jnz     short def_4C4D12 ; jumptable 004C4D12 default case, case 4
; jumptable 004C4D82 default case, case 4
cmp     dword ptr [edx+10h], 14h
jmp     short loc_4C4D23

loc_4C4D51:             ; jumptable 004C4D12 case 3
mov     dx, [ebx+4]
sub     dx, 0Ah
mov     [ebx+4], dx
jmp     short loc_4C4D3D
sub_4C4D05 endp

db 8Bh, 0C0h
jpt_4C4D82 dd offset loc_4C4D89 ; jump table for switch statement
dd offset loc_4C4D9D
dd offset loc_4C4DBA
dd offset loc_4C4DCA
dd offset def_4C4D12



sub_4C4D75 proc near
push    ecx
push    esi
mov     cl, [eax+9]
cmp     cl, 4           ; switch 5 cases
ja      short def_4C4D12 ; jumptable 004C4D12 default case, case 4
; jumptable 004C4D82 default case, case 4
movzx   esi, cl
jmp     jpt_4C4D82[esi*4] ; switch jump

loc_4C4D89:             ; jumptable 004C4D82 case 0
cmp     byte ptr [edx+9], 6
jnz     short def_4C4D12 ; jumptable 004C4D12 default case, case 4
; jumptable 004C4D82 default case, case 4
cmp     dword ptr [edx+10h], 3Ch ; '<'

loc_4C4D93:             ; jumptable 004C4D12 default case, case 4
jnz     short def_4C4D12 ; jumptable 004C4D82 default case, case 4
inc     cl
mov     [eax+9], cl
pop     esi
pop     ecx
retn

loc_4C4D9D:             ; jumptable 004C4D82 case 1
sub     word ptr [ebx+4], 0Ah
mov     edx, [ebx+2]
sar     edx, 10h
cmp     edx, 0FFFFFB00h

loc_4C4DAE:             ; jumptable 004C4D12 default case, case 4
jnz     def_4C4D12      ; jumptable 004C4D82 default case, case 4
inc     byte ptr [eax+9]
pop     esi
pop     ecx
retn

loc_4C4DBA:             ; jumptable 004C4D82 case 2
cmp     byte ptr [edx+9], 0Dh
jnz     def_4C4D12      ; jumptable 004C4D12 default case, case 4
; jumptable 004C4D82 default case, case 4
cmp     dword ptr [edx+10h], 14h
jmp     short loc_4C4D93

loc_4C4DCA:             ; jumptable 004C4D82 case 3
mov     dx, [ebx+4]
add     dx, 0Ah
mov     [ebx+4], dx
jmp     short loc_4C4DAE
sub_4C4D75 endp




sub_4C4DD8 proc near
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     al, [eax+9]
cmp     al, 1
jb      short loc_4C4DEA
jbe     short loc_4C4E12
pop     esi
pop     ecx
retn

loc_4C4DEA:
test    al, al
jnz     short loc_4C4E27
cmp     byte ptr [edx+9], 3
jnz     short loc_4C4E27
mov     edx, [esi+10h]
cmp     edx, 5
jl      short loc_4C4E0A
cmp     edx, 35h ; '5'
jg      short loc_4C4E0A
mov     edx, esi
mov     eax, ecx
call    sub_4C5206

loc_4C4E0A:
cmp     dword ptr [esi+10h], 3Fh ; '?'
jnz     short loc_4C4E27
jmp     short loc_4C4E24

loc_4C4E12:
mov     dx, [ebx+6]
add     edx, 10h
mov     [ebx+6], dx
cmp     dx, 400h
jnz     short loc_4C4E27

loc_4C4E24:
inc     byte ptr [ecx+9]

loc_4C4E27:
pop     esi
pop     ecx
retn
sub_4C4DD8 endp

db 8Dh, 40h, 0
jpt_4C4E50 dd offset loc_4C4E57 ; jump table for switch statement
dd offset loc_4C4E6C
dd offset loc_4C4E88
dd offset loc_4C4E9D
dd offset def_4C4E50



sub_4C4E41 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      short def_4C4E50 ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
movzx   esi, al
jmp     jpt_4C4E50[esi*4] ; switch jump

loc_4C4E57:             ; jumptable 004C4E50 case 0
cmp     byte ptr [edx+9], 6
jnz     short def_4C4E50 ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 0Eh
jnz     short def_4C4E50 ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
mov     eax, ecx
call    sub_4C529D
jmp     short loc_4C4E81

loc_4C4E6C:             ; jumptable 004C4E50 case 1
mov     di, [ebx+2]
sub     edi, 400h
mov     [ebx+2], di
cmp     di, 800h

loc_4C4E7F:             ; jumptable 004C4E50 default case, case 4
jnz     short def_4C4E50 ; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4

loc_4C4E81:
inc     byte ptr [ecx+9]

def_4C4E50:             ; jumptable 004C4E50 default case, case 4
pop     edi             ; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
pop     esi
pop     ecx
retn

loc_4C4E88:             ; jumptable 004C4E50 case 2
cmp     byte ptr [edx+9], 6
jnz     short def_4C4E50 ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 1Eh
jnz     short def_4C4E50 ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
inc     al
mov     [ecx+9], al
pop     edi
pop     esi
pop     ecx
retn

loc_4C4E9D:             ; jumptable 004C4E50 case 3
mov     dx, [ebx+2]
sub     dx, 80h
mov     [ebx+2], dx
jmp     short loc_4C4E7F
sub_4C4E41 endp

db 90h
jpt_4C4ED0 dd offset loc_4C4ED7 ; jump table for switch statement
dd offset loc_4C4EEC
dd offset loc_4C4F08
dd offset loc_4C4F25
dd offset def_4C4E50



sub_4C4EC1 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      short def_4C4E50 ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
movzx   esi, al
jmp     jpt_4C4ED0[esi*4] ; switch jump

loc_4C4ED7:             ; jumptable 004C4ED0 case 0
cmp     byte ptr [edx+9], 6
jnz     short def_4C4E50 ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 0Ah
jnz     short def_4C4E50 ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
mov     eax, ecx
call    sub_4C529D
jmp     short loc_4C4F01

loc_4C4EEC:             ; jumptable 004C4ED0 case 1
mov     di, [ebx+2]
sub     edi, 400h
mov     [ebx+2], di
cmp     di, 800h

loc_4C4EFF:             ; jumptable 004C4E50 default case, case 4
jnz     short def_4C4E50 ; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4

loc_4C4F01:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_4C4F08:             ; jumptable 004C4ED0 case 2
cmp     byte ptr [edx+9], 6
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 1Eh
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
inc     al
mov     [ecx+9], al
pop     edi
pop     esi
pop     ecx
retn

loc_4C4F25:             ; jumptable 004C4ED0 case 3
mov     dx, [ebx+2]
sub     dx, 80h
mov     [ebx+2], dx
jmp     short loc_4C4EFF
sub_4C4EC1 endp

db 90h
jpt_4C4F5C dd offset loc_4C4F63 ; jump table for switch statement
dd offset loc_4C4F80
dd offset loc_4C4FA0
dd offset loc_4C4FBD
dd offset def_4C4E50



sub_4C4F49 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
movzx   esi, al
jmp     jpt_4C4F5C[esi*4] ; switch jump

loc_4C4F63:             ; jumptable 004C4F5C case 0
cmp     byte ptr [edx+9], 5
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 8
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
mov     eax, ecx
call    sub_4C529D
jmp     short loc_4C4F99

loc_4C4F80:             ; jumptable 004C4F5C case 1
mov     di, [ebx+2]
sub     edi, 400h
mov     [ebx+2], di
cmp     di, 800h

loc_4C4F93:             ; jumptable 004C4E50 default case, case 4
jnz     def_4C4E50      ; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4

loc_4C4F99:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_4C4FA0:             ; jumptable 004C4F5C case 2
cmp     byte ptr [edx+9], 6
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 1Eh
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
inc     al
mov     [ecx+9], al
pop     edi
pop     esi
pop     ecx
retn

loc_4C4FBD:             ; jumptable 004C4F5C case 3
mov     dx, [ebx+2]
sub     dx, 80h
mov     [ebx+2], dx
jmp     short loc_4C4F93
sub_4C4F49 endp

db 90h
jpt_4C4FF4 dd offset loc_4C4FFB ; jump table for switch statement
dd offset loc_4C5018
dd offset loc_4C5038
dd offset loc_4C5055
dd offset def_4C4E50



sub_4C4FE1 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
movzx   esi, al
jmp     jpt_4C4FF4[esi*4] ; switch jump

loc_4C4FFB:             ; jumptable 004C4FF4 case 0
cmp     byte ptr [edx+9], 6
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 0Ch
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
mov     eax, ecx
call    sub_4C529D
jmp     short loc_4C5031

loc_4C5018:             ; jumptable 004C4FF4 case 1
mov     di, [ebx+2]
sub     edi, 400h
mov     [ebx+2], di
cmp     di, 800h

loc_4C502B:             ; jumptable 004C4E50 default case, case 4
jnz     def_4C4E50      ; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4

loc_4C5031:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_4C5038:             ; jumptable 004C4FF4 case 2
cmp     byte ptr [edx+9], 6
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 1Eh
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
inc     al
mov     [ecx+9], al
pop     edi
pop     esi
pop     ecx
retn

loc_4C5055:             ; jumptable 004C4FF4 case 3
mov     dx, [ebx+2]
sub     dx, 80h
mov     [ebx+2], dx
jmp     short loc_4C502B
sub_4C4FE1 endp

db 90h
jpt_4C508C dd offset loc_4C5093 ; jump table for switch statement
dd offset loc_4C50B0
dd offset loc_4C50D0
dd offset loc_4C50ED
dd offset def_4C4E50



sub_4C5079 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
movzx   esi, al
jmp     jpt_4C508C[esi*4] ; switch jump

loc_4C5093:             ; jumptable 004C508C case 0
cmp     byte ptr [edx+9], 6
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 8
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
mov     eax, ecx
call    sub_4C529D
jmp     short loc_4C50C9

loc_4C50B0:             ; jumptable 004C508C case 1
mov     di, [ebx+2]
sub     edi, 400h
mov     [ebx+2], di
cmp     di, 800h

loc_4C50C3:             ; jumptable 004C4E50 default case, case 4
jnz     def_4C4E50      ; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4

loc_4C50C9:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_4C50D0:             ; jumptable 004C508C case 2
cmp     byte ptr [edx+9], 6
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 1Eh
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
inc     al
mov     [ecx+9], al
pop     edi
pop     esi
pop     ecx
retn

loc_4C50ED:             ; jumptable 004C508C case 3
mov     dx, [ebx+2]
sub     dx, 80h
mov     [ebx+2], dx
jmp     short loc_4C50C3
sub_4C5079 endp

db 90h
jpt_4C5124 dd offset loc_4C512B ; jump table for switch statement
dd offset loc_4C5148
dd offset loc_4C5168
dd offset loc_4C5185
dd offset def_4C4E50



sub_4C5111 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
movzx   esi, al
jmp     jpt_4C5124[esi*4] ; switch jump

loc_4C512B:             ; jumptable 004C5124 case 0
cmp     byte ptr [edx+9], 4
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 8
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
mov     eax, ecx
call    sub_4C529D
jmp     short loc_4C5161

loc_4C5148:             ; jumptable 004C5124 case 1
mov     di, [ebx+2]
sub     edi, 400h
mov     [ebx+2], di
cmp     di, 800h

loc_4C515B:             ; jumptable 004C4E50 default case, case 4
jnz     def_4C4E50      ; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4

loc_4C5161:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_4C5168:             ; jumptable 004C5124 case 2
cmp     byte ptr [edx+9], 6
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 1Eh
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
inc     al
mov     [ecx+9], al
pop     edi
pop     esi
pop     ecx
retn

loc_4C5185:             ; jumptable 004C5124 case 3
mov     dx, [ebx+2]
sub     dx, 80h
mov     [ebx+2], dx
jmp     short loc_4C515B
sub_4C5111 endp




; int __thiscall sub_4C5194(int)
sub_4C5194 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; int
push    edi             ; int
sub     esp, 10h
mov     ebx, eax
mov     ecx, edx
add     eax, 18h
call    sub_4EF184
cmp     byte ptr [ebx+3], 2
jnz     short loc_4C51BE
mov     edi, 11A0h
mov     [esp+1Ch+var_14], edi
mov     [esp+1Ch+var_18], edi
mov     [esp+1Ch+var_1C], edi
jmp     short loc_4C51D3

loc_4C51BE:
mov     edx, 1000h
mov     [esp+1Ch+var_14], edx ; int
mov     [esp+1Ch+var_1C], edx ; float
mov     eax, [ecx]
sar     eax, 10h
mov     [esp+1Ch+var_18], eax ; int

loc_4C51D3:
xor     edx, edx
mov     [esp+1Ch+var_10], edx ; int
add     ebx, 18h
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, [ecx+2]
sar     eax, 10h
mov     edx, ebx
call    sub_4EF50D
mov     eax, [ecx+4]
sar     eax, 10h
mov     edx, ebx
call    sub_4EF57E
add     esp, 10h
pop     edi
pop     ecx
pop     ebx
retn
sub_4C5194 endp




sub_4C5206 proc near
push    ebx
push    ecx
push    esi
mov     dl, [edx+10h]
sub     dl, 5
xor     ebx, ebx
mov     bl, dl
lea     ecx, [eax+48h]
call    sub_4EE133
mov     edx, eax
cmp     ebx, 10h
jnb     short loc_4C5230

loc_4C5222:
shl     ebx, 3
or      ebx, 2E000000h
mov     [eax+4], ebx
jmp     short loc_4C5247

loc_4C5230:
cmp     ebx, 20h ; ' '
jbe     short loc_4C5240
mov     esi, 30h ; '0'
sub     esi, ebx
mov     ebx, esi
jmp     short loc_4C5222

loc_4C5240:
mov     dword ptr [eax+4], 2E000080h

loc_4C5247:
mov     ebx, [ecx]
sar     ebx, 10h
add     ebx, 24h ; '$'
shl     ebx, 10h
movsx   edx, word ptr [ecx]
sub     edx, 18h
and     edx, 0FFFFh
or      edx, ebx
mov     [eax+8], edx
mov     edx, [ecx+2]
sar     edx, 10h
sub     edx, 10h
mov     [eax+10h], edx
mov     dword ptr [eax+0Ch], 3D4860A0h
mov     dword ptr [eax+14h], 2E60BFh
mov     dword ptr [eax+1Ch], 7FA0h
mov     dword ptr [eax+24h], 7FBFh
mov     dword ptr [eax+18h], 8
mov     dword ptr [eax+20h], 8
pop     esi
pop     ecx
pop     ebx
retn
sub_4C5206 endp




sub_4C529D proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4C52C1
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 0
mov     bl, [edx+1]
mov     [eax+0Ch], bl
mov     dl, [edx+3]
mov     [eax+0Dh], dl

loc_4C52C1:
pop     edx
pop     ebx
retn
sub_4C529D endp




sub_4C52C4 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4C52CD[ecx*4]
mov     dword ptr [edx+58h], 0
pop     edx
pop     ecx
retn
sub_4C52C4 endp




sub_4C52DE proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 10h
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
cmp     byte ptr [ecx+3], 0
jnz     short loc_4C5340
mov     dh, ah
or      dh, 4
mov     [ecx], dh
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     ebx, [ecx+18h]
mov     eax, ebx
call    sub_4EF184
mov     edx, 300h
mov     [esp+20h+var_18], edx
mov     [esp+20h+var_1C], edx
mov     [esp+20h+var_20], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     edx, ebx
mov     eax, 400h
call    sub_4EF486
mov     dword ptr [ecx+50h], offset unk_808080
jmp     loc_4C5463

loc_4C5340:
xor     dl, dl
mov     bl, ds:byte_77E7D4

loc_4C5348:
xor     eax, eax
mov     al, dl
shl     eax, 3
mov     dh, ds:byte_537854[eax]
cmp     dh, bl
jz      short loc_4C5370
test    dh, dh
jge     short loc_4C536C
mov     eax, ecx

loc_4C535F:
call    sub_4DE477

loc_4C5364:
add     esp, 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C536C:
inc     dl
jmp     short loc_4C5348

loc_4C5370:
or      byte ptr [ecx], 28h
xor     edx, edx
mov     dl, [ecx+3]
mov     dl, ds:byte_537874[edx*4]
mov     [ecx+22h], dl
xor     edx, edx
mov     dl, [ecx+3]
mov     dl, ds:byte_537875[edx*4]
mov     [ecx+23h], dl
xor     edx, edx
mov     dl, [ecx+3]
mov     dl, ds:byte_537876[edx*4]
xor     dh, dh
mov     [ecx+24h], dx
xor     edx, edx
mov     dl, [ecx+3]
mov     dl, ds:byte_537877[edx*4]
xor     dh, dh
mov     [ecx+26h], dx
mov     dword ptr [ecx+18h], offset unk_808080
mov     dx, [ecx+48h]
mov     [ecx+1Ch], dx
mov     dx, [ecx+4Ah]
mov     [ecx+1Eh], dx
mov     dx, [ecx+4Ch]
mov     [ecx+20h], dx
cmp     byte ptr [ecx+3], 3
jz      short loc_4C542C
xor     edx, edx
mov     dl, ds:byte_537855[eax]
mov     esi, edx
shl     esi, 7
xor     edx, edx
mov     dl, byte ptr ds:off_537856[eax]
shl     edx, 5
or      esi, edx
xor     edx, edx
mov     dl, byte ptr ds:(off_537856+1)[eax]
or      esi, edx
mov     ebx, ds:(off_537856+2)[eax]
sar     ebx, 10h
shl     ebx, 6
mov     edx, ds:off_537856[eax]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
or      eax, ebx
shl     eax, 10h
or      eax, esi
mov     [ecx+14h], eax
jmp     short loc_4C5463

loc_4C542C:
xor     edx, edx
mov     dl, ds:byte_537855[eax]
mov     ebx, edx
shl     ebx, 7
xor     edx, edx
mov     dl, byte ptr ds:off_537856[eax]
shl     edx, 5
or      edx, ebx
mov     al, byte ptr ds:(off_537856+1)[eax]
and     eax, 0FFh
or      eax, edx
or      eax, 3EC00000h
mov     [ecx+14h], eax
mov     ax, [ecx+24h]
sub     [ecx+1Eh], ax

loc_4C5463:
mov     dword ptr [ecx+10h], offset unk_5377E8
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+5Ch], 0
inc     byte ptr [ecx+8]
jmp     loc_4C5364
sub_4C52DE endp




sub_4C5480 proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h
var_16= word ptr -16h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     edx, eax
mov     ecx, ds:dword_5F84E8
cmp     eax, ecx
jnz     short loc_4C5497
inc     byte ptr [ecx+8]

loc_4C5497:
cmp     byte ptr [edx+3], 0
jnz     short loc_4C54A6
mov     edi, esp
lea     esi, [edx+48h]
movsd
movsd
jmp     short loc_4C54D4

loc_4C54A6:
mov     ax, [edx+1Ch]
mov     [esp+1Ch+var_1C], ax
mov     ax, [edx+1Eh]
mov     [esp+1Ch+var_1A], ax
mov     ax, [edx+20h]
mov     [esp+1Ch+var_18], ax
xor     ebx, ebx
mov     [esp+1Ch+var_16], bx
cmp     byte ptr [edx+3], 3
jz      short loc_4C54D4
mov     eax, edx
call    sub_4C56CE

loc_4C54D4:
push    80h
push    0
push    4000000h
lea     eax, [edx+58h]
push    eax
xor     eax, eax
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
lea     eax, [esp+30h+var_1C]
call    sub_4E01FC
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C5480 endp




; int __fastcall sub_4C5508(int, int)
sub_4C5508 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx             ; int
push    ecx             ; int
push    edx             ; float
push    esi             ; int
sub     esp, 10h
mov     esi, eax
mov     cl, [eax+9]
cmp     cl, 3
jb      short loc_4C553C
jbe     loc_4C55AE
cmp     cl, 5
jb      loc_4C5608
jbe     loc_4C5687
cmp     cl, 0Ah
jz      loc_4C569D
jmp     loc_4C5364

loc_4C553C:
cmp     cl, 1
jb      short loc_4C5545
jbe     short loc_4C557B
jmp     short loc_4C558E

loc_4C5545:
test    cl, cl
jnz     loc_4C5364
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_4C5364
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, cl
xor     eax, eax
mov     ds:dword_5F8370, eax

loc_4C5573:
inc     byte ptr [esi+9]
jmp     loc_4C5364

loc_4C557B:
mov     ds:byte_5F88AC, 34h ; '4'
inc     byte ptr [eax+9]
mov     byte ptr [eax+0Ah], 0
jmp     loc_4C5364

loc_4C558E:
mov     cl, [eax+0Ah]
cmp     cl, 10h
jbe     short loc_4C55A2
mov     al, [eax]
and     al, 0FDh
mov     [esi], al
mov     byte ptr [esi+0Ah], 0
jmp     short loc_4C5573

loc_4C55A2:
mov     ch, cl
inc     ch
mov     [eax+0Ah], ch
jmp     loc_4C5364

loc_4C55AE:
cmp     ds:byte_5F840B, 0
jge     loc_4C5364
xor     eax, eax
mov     al, [esi+3]
mov     ebx, ds:dword_537884[eax*4]
xor     ecx, ecx
xor     edx, edx
mov     eax, 2
call    sub_4A6227
cmp     byte ptr [esi+3], 0
jnz     short loc_4C5573
or      byte ptr [esi], 2
mov     ax, word ptr ds:dword_5F8376+2
mov     [esi+48h], ax
mov     cx, word ptr ds:dword_5F837A
sub     ecx, 0C8h
mov     [esi+4Ah], cx
mov     ax, word ptr ds:dword_5F837A+2
mov     [esi+4Ch], ax
jmp     loc_4C5573

loc_4C5608:
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_4C5669
cmp     byte ptr [eax+3], 0
jnz     short loc_4C5660
lea     ecx, [esi+18h]
mov     eax, ecx
call    sub_4EF184
mov     ebx, 400h
mov     [esp+20h+var_18], ebx ; int
mov     [esp+20h+var_1C], ebx ; int
mov     [esp+20h+var_20], ebx ; int
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     edx, ecx
xor     eax, eax
call    sub_4EF57E
xor     eax, eax
mov     al, [esi+0Ah]
shl     eax, 4
and     eax, 0FFFh
mov     edx, ecx
call    sub_4EF50D
mov     edx, ecx
xor     eax, eax
call    sub_4EF486

loc_4C5660:
add     byte ptr [esi+0Ah], 0Ah
jmp     loc_4C5364

loc_4C5669:
cmp     byte ptr [eax+3], 0
jnz     short loc_4C567B
mov     ds:byte_5F88AC, 35h ; '5'
inc     byte ptr [eax+9]
jmp     short loc_4C567F

loc_4C567B:
mov     byte ptr [eax+9], 0Ah

loc_4C567F:
and     byte ptr [esi], 0FDh
jmp     loc_4C5364

loc_4C5687:
cmp     ds:byte_5F840B, 0
jge     loc_4C5364
mov     byte ptr [eax+9], 0Ah
jmp     loc_4C5364

loc_4C569D:
xor     eax, eax
mov     al, [esi+3]
mov     eax, ds:dword_537844[eax*4]
call    sub_47E8B8
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
xor     edx, edx
mov     ds:dword_5F84E8, edx
mov     eax, esi
jmp     loc_4C535F
sub_4C5508 endp




sub_4C56CE proc near
push    edx
xor     edx, edx
mov     dx, ds:word_77EAB6
sar     edx, 2
and     edx, 3
shl     dl, 5
mov     [eax+22h], dl
pop     edx
retn
sub_4C56CE endp




sub_4C56E6 proc near

var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 24h
mov     ebp, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_4C5701
cmp     al, 1
jz      short loc_4C5719
jmp     loc_4C58C3

loc_4C5701:
or      byte ptr [ebp+0], 6
lea     edx, [ebp+3]
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+50h], offset unk_808080
inc     byte ptr [ebp+8]

loc_4C5719:
mov     dh, [ebp+9]
test    dh, dh
jnz     loc_4C57B8
xor     eax, eax
mov     al, [ebp+0Ch]
call    sub_4E1877
mov     [esp+3Ch+var_1C], eax
mov     ecx, 0Ch
lea     edi, [ebp+18h]
mov     esi, eax
lea     esi, [esi+1F8h]
rep movsd
xor     edi, edi
mov     [esp+3Ch+var_2C], di
mov     ax, [ebp+58h]
add     eax, 5DCh
mov     [esp+3Ch+var_2A], ax
mov     [esp+3Ch+var_28], di
mov     eax, [esp+3Ch+var_1C]
add     eax, 1F8h
lea     ebx, [esp+3Ch+var_24]
lea     edx, [esp+3Ch+var_2C]
call    sub_4EF2DC
mov     eax, [esp+3Ch+var_1C]
mov     ax, [eax+190h]
mov     edx, [esp+3Ch+var_24]
add     edx, eax
mov     [ebp+48h], dx
mov     eax, [esp+3Ch+var_1C]
mov     ax, [eax+192h]
mov     edx, [esp+3Ch+var_24+2]
add     edx, eax
mov     [ebp+4Ah], dx
mov     eax, [esp+3Ch+var_1C]
mov     ax, [eax+194h]
mov     edx, [esp+3Ch+var_20]
add     edx, eax
mov     [ebp+4Ch], dx
jmp     loc_4C58C3

loc_4C57B8:             ; int
lea     ecx, [ebp+18h]
cmp     dh, 1
jnz     short loc_4C5836
xor     edi, edi
mov     [esp+3Ch+var_2C], di
mov     [esp+3Ch+var_2A], di
mov     [esp+3Ch+var_28], 200h
mov     edx, ecx
lea     eax, [esp+3Ch+var_2C]
call    sub_4EF638
mov     ebx, 200h
mov     [esp+3Ch+var_3C], ebx
mov     [esp+3Ch+var_38], ebx
mov     [esp+3Ch+var_34], ebx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     [esp+3Ch+var_2C], di
mov     ax, [ebp+58h]
mov     [esp+3Ch+var_2A], ax
mov     [esp+3Ch+var_28], di

loc_4C580A:
lea     ebx, [esp+3Ch+var_24]
lea     edx, [esp+3Ch+var_2C]
mov     eax, ecx
call    sub_4EF2DC
mov     eax, [esp+3Ch+var_24]
mov     [ebp+48h], ax
mov     eax, [esp+3Ch+var_24+2]
mov     [ebp+4Ah], ax
mov     eax, [esp+3Ch+var_20]
mov     [ebp+4Ch], ax
jmp     loc_4C58C3

loc_4C5836:
cmp     dh, 2
jnz     short loc_4C5889
xor     edi, edi
mov     [esp+3Ch+var_2C], di
mov     [esp+3Ch+var_2A], di
mov     [esp+3Ch+var_28], 200h
mov     edx, ecx
lea     eax, [esp+3Ch+var_2C]
call    sub_4EF638
mov     edi, 200h
mov     [esp+3Ch+var_3C], edi
mov     [esp+3Ch+var_38], edi
mov     [esp+3Ch+var_34], edi
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
xor     ebx, ebx
mov     [esp+3Ch+var_2C], bx
mov     ax, [ebp+58h]
mov     [esp+3Ch+var_2A], ax
mov     [esp+3Ch+var_28], bx
jmp     short loc_4C580A

loc_4C5889:
cmp     dh, 3
jnz     short loc_4C58C3
xor     edx, edx
mov     [esp+3Ch+var_2C], dx
mov     [esp+3Ch+var_2A], dx
mov     [esp+3Ch+var_28], dx
mov     edx, ecx
lea     eax, [esp+3Ch+var_2C]
call    sub_4EF638
mov     edx, 800h
mov     [esp+3Ch+var_3C], edx
mov     [esp+3Ch+var_38], edx
mov     [esp+3Ch+var_34], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689

loc_4C58C3:
add     esp, 24h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C56E6 endp




sub_4C58CD proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
add     eax, eax
add     eax, offset unk_537894
mov     dx, [eax]
mov     [ecx+48h], dx
mov     dx, [eax+2]
mov     [ecx+4Ah], dx
mov     ax, [eax+4]
mov     [ecx+4Ch], ax
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4C58CD endp




sub_4C5919 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
sub     esp, 10h
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_4C592E
mov     eax, ecx
call    sub_4C58CD

loc_4C592E:
lea     ebx, [ecx+18h]
mov     eax, ebx
call    sub_4EF184
mov     edx, 200h
mov     [esp+1Ch+var_14], edx
mov     [esp+1Ch+var_18], edx
mov     [esp+1Ch+var_1C], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
lea     eax, [ecx+48h]
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
call    sub_4ED95E
add     esp, 10h
pop     edx
pop     ecx
pop     ebx
retn
sub_4C5919 endp




sub_4C596C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_53791E[eax*4]
mov     edx, offset byte_5F8364
mov     bl, [ebp+9]
test    bl, bl
jbe     short loc_4C5999
cmp     bl, 1
jz      short loc_4C59AB
jmp     loc_4C59FE

loc_4C5999:
test    eax, eax
jnz     short loc_4C59A6
mov     eax, ebp
call    sub_4DE477
jmp     short loc_4C59FE

loc_4C59A6:
inc     bl
mov     [ebp+9], bl

loc_4C59AB:
xor     cl, cl

loc_4C59AD:
mov     ebx, [eax+6]
sar     ebx, 18h
cmp     ebx, 0FFFFFFFFh
jz      short loc_4C59FE
mov     bx, [edx+14h]
mov     si, [eax]
sub     ebx, esi
mov     esi, ebx
mov     bx, [edx+18h]
mov     di, [eax+2]
sub     ebx, edi
mov     edi, ebx
xor     ebx, ebx
mov     bx, [eax+4]
movsx   esi, si
cmp     esi, ebx
jnb     short loc_4C59F7
xor     ebx, ebx
mov     bx, [eax+6]
movsx   esi, di
cmp     esi, ebx
jnb     short loc_4C59F7
mov     [ebp+0Ch], cl
inc     byte ptr [ebp+8]
mov     al, [eax+9]
mov     [ebp+9], al
jmp     short loc_4C59FE

loc_4C59F7:
add     eax, 0Ah
inc     cl
jmp     short loc_4C59AD

loc_4C59FE:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C596C endp




sub_4C5A05 proc near
push    ecx
mov     ecx, eax
mov     eax, 4Ch ; 'L'
call    sub_47E888
test    eax, eax
jnz     short loc_4C5A3D
mov     eax, 644h
call    sub_47E888
test    eax, eax
jnz     short loc_4C5A3D
mov     eax, 644h
call    sub_47E8B8
mov     edx, 7
mov     eax, 4
call    sub_4A0E24

loc_4C5A3D:
mov     byte ptr [ecx+8], 0
pop     ecx
retn
sub_4C5A05 endp




sub_4C5A43 proc near
push    ecx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4C5A53
cmp     al, 1
jz      short loc_4C5A87
pop     ecx
retn

loc_4C5A53:
mov     eax, 4Ch ; 'L'
call    sub_47E888
test    eax, eax
jnz     short loc_4C5A78
mov     eax, 645h
call    sub_47E888
test    eax, eax
jnz     short loc_4C5A78
cmp     ds:byte_5F83D8, 0
jnz     short loc_4C5A82

loc_4C5A78:
mov     byte ptr [ecx+8], 0
mov     byte ptr [ecx+9], 0
pop     ecx
retn

loc_4C5A82:
inc     byte ptr [ecx+0Ah]
pop     ecx
retn

loc_4C5A87:
cmp     ds:byte_5F83D8, 0
jnz     short def_4C5AE3 ; jumptable 004C5AE3 default case
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
cmp     eax, 0FFFFFFDEh
jl      short loc_4C5AB6
mov     eax, 645h
call    sub_47E8B8
mov     edx, 9
mov     eax, 4
call    sub_4A0E24

loc_4C5AB6:
mov     byte ptr [ecx+8], 0
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0

def_4C5AE3:             ; jumptable 004C5AE3 default case
pop     ecx
retn
sub_4C5A43 endp

jpt_4C5AE3 dd offset loc_4C5AEA ; jump table for switch statement
dd offset loc_4C5B13
dd offset loc_4C5B1F
dd offset loc_4C5B48



sub_4C5AD4 proc near
push    ecx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      short def_4C5AE3 ; jumptable 004C5AE3 default case
and     eax, 0FFh
jmp     jpt_4C5AE3[eax*4] ; switch jump

loc_4C5AEA:             ; jumptable 004C5AE3 case 0
mov     eax, 4Ch ; 'L'
call    sub_47E888
test    eax, eax
jnz     short loc_4C5B06
mov     eax, 647h
call    sub_47E888
test    eax, eax
jz      short loc_4C5B10

loc_4C5B06:
mov     byte ptr [ecx+8], 0
mov     byte ptr [ecx+9], 0
pop     ecx
retn

loc_4C5B10:
inc     byte ptr [ecx+0Ah]

loc_4C5B13:             ; jumptable 004C5AE3 case 1
cmp     byte ptr ds:dword_560BDC, 0
jnz     short def_4C5AE3 ; jumptable 004C5AE3 default case
inc     byte ptr [ecx+0Ah]

loc_4C5B1F:             ; jumptable 004C5AE3 case 2
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short def_4C5AE3 ; jumptable 004C5AE3 default case
mov     eax, 647h
call    sub_47E8B8
mov     edx, 0Bh
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+0Ah]
pop     ecx
retn

loc_4C5B48:             ; jumptable 004C5AE3 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C5AE3      ; jumptable 004C5AE3 default case
mov     eax, offset byte_5F8364
call    sub_4B565A
jmp     short loc_4C5B06
sub_4C5AD4 endp




sub_4C5B61 proc near
push    ecx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4C5B73
jbe     short loc_4C5BA0
cmp     al, 2
jz      short loc_4C5BAE
pop     ecx
retn

loc_4C5B73:
test    al, al
jnz     short loc_4C5BD9
mov     eax, 53h ; 'S'
call    sub_47E888
test    eax, eax
jnz     short loc_4C5B93
mov     eax, 64Ah
call    sub_47E888
test    eax, eax
jz      short loc_4C5B9D

loc_4C5B93:
mov     byte ptr [ecx+8], 0
mov     byte ptr [ecx+9], 0
pop     ecx
retn

loc_4C5B9D:
inc     byte ptr [ecx+0Ah]

loc_4C5BA0:
cmp     ds:dword_77E758, 0
jz      short loc_4C5BD9
inc     byte ptr [ecx+0Ah]
pop     ecx
retn

loc_4C5BAE:
cmp     ds:dword_77E758, 0
jnz     short loc_4C5BD9
mov     eax, 64Ah
call    sub_47E8B8
mov     edx, 10h
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+8], 0
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0

loc_4C5BD9:
pop     ecx
retn
sub_4C5B61 endp




sub_4C5BDB proc near
push    ebx
push    ecx
push    edx
push    esi
movzx   esi, byte ptr [eax+9]
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     ebx, [eax+9]
sar     ebx, 18h
mov     edx, ebx
shl     edx, 2
add     ebx, edx
add     ebx, ebx
mov     edx, ds:dword_53791E[ecx*4]
add     edx, ebx
call    ds:funcs_4C5C04[esi*4]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C5BDB endp




sub_4C5C10 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C5C16[edx*4]
pop     edx
retn
sub_4C5C10 endp




sub_4C5C1F proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ecx, eax
xor     ebp, ebp
lea     edx, [eax+3Ch]
xor     bl, bl
mov     ah, ds:byte_77E7D4
cmp     ah, 0Eh
jnz     short loc_4C5C6B
mov     [esp+20h+var_1C], 1Eh
mov     dword ptr [edx], 52Eh
mov     dword ptr [edx+4], 52Fh
mov     dword ptr [edx+8], 530h
mov     esi, 609h
mov     edi, 60Ah
mov     [esp+20h+var_20], 60Bh
jmp     short loc_4C5CCC

loc_4C5C6B:
cmp     ah, 14h
jnz     short loc_4C5C9F
mov     [esp+20h+var_1C], 27h ; '''
mov     dword ptr [edx], 531h
mov     dword ptr [edx+4], 532h
mov     dword ptr [edx+8], 533h
mov     esi, 606h
mov     edi, 607h
mov     [esp+20h+var_20], 608h
jmp     short loc_4C5CCC

loc_4C5C9F:
mov     [esp+20h+var_1C], 44h ; 'D'
mov     dword ptr [edx], 534h
mov     dword ptr [edx+4], 535h
mov     dword ptr [edx+8], 536h
mov     esi, 63Eh
mov     edi, 63Fh
mov     [esp+20h+var_20], 640h

loc_4C5CCC:
mov     eax, [esp+20h+var_1C]
call    sub_47E888
test    eax, eax
jnz     loc_4C5DDD
mov     eax, [edx]
call    sub_47E888
test    eax, eax
jz      short loc_4C5CEA
inc     bl

loc_4C5CEA:
mov     eax, [edx+4]
call    sub_47E888
test    eax, eax
jz      short loc_4C5CF8
inc     bl

loc_4C5CF8:
mov     eax, [edx+8]
call    sub_47E888
test    eax, eax
jz      short loc_4C5D06
inc     bl

loc_4C5D06:
cmp     bl, 1
jnz     short loc_4C5D50
mov     eax, esi
call    sub_47E8B8
cmp     ds:byte_77E7D4, 13h
jnz     short loc_4C5D7B
mov     eax, 4Bh ; 'K'
call    sub_47E888
test    eax, eax
jnz     short loc_4C5D7B
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short loc_4C5D7B
mov     eax, 4Bh ; 'K'
call    sub_47E8B8
mov     edx, 0Eh
mov     eax, 4
call    sub_4A0E24
add     [ecx+8], bl
jmp     short loc_4C5D7B

loc_4C5D50:
cmp     bl, 2
jnz     short loc_4C5D60
mov     eax, esi
call    sub_47E8B8
mov     eax, edi
jmp     short loc_4C5D76

loc_4C5D60:
cmp     bl, 3
jnz     short loc_4C5D7B
mov     eax, esi
call    sub_47E8B8
mov     eax, edi
call    sub_47E8B8
mov     eax, [esp+20h+var_20]

loc_4C5D76:
call    sub_47E8B8

loc_4C5D7B:
mov     dh, ds:byte_77E7D4
cmp     dh, 0Eh
jnz     short loc_4C5D98
mov     ebp, ds:dword_77E7D0+2
sar     ebp, 18h
mov     ebp, ds:off_537A68[ebp*4]
jmp     short loc_4C5DAD

loc_4C5D98:
cmp     dh, 14h
jnz     short loc_4C5DAD
mov     ebp, ds:dword_77E7D0+2
sar     ebp, 18h
mov     ebp, ds:off_537A74[ebp*4]

loc_4C5DAD:
mov     bh, ds:byte_77E7D4
cmp     bh, 0Eh
jnz     short loc_4C5DC3
mov     edx, ebp
mov     eax, ecx
call    sub_4C5DEE
jmp     short loc_4C5DDD

loc_4C5DC3:
cmp     bh, 14h
jnz     short loc_4C5DE4
cmp     byte ptr [ecx+9], 0
jnz     short loc_4C5DE4
mov     edx, ebp
mov     eax, ecx
call    sub_4C5F7E
mov     byte ptr [ecx+9], 1
jmp     short loc_4C5DE4

loc_4C5DDD:
mov     eax, ecx
call    sub_4DE477

loc_4C5DE4:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C5C1F endp




sub_4C5DEE proc near
push    ebx
push    ecx
push    esi
lea     ecx, [eax+3Ch]
xor     bl, bl

loc_4C5DF6:
mov     ah, [edx+1]
cmp     ah, 20h ; ' '
jnz     loc_4C5EC9
cmp     byte ptr [edx+2], 35h ; '5'
jnz     short loc_4C5E1B
mov     eax, [ecx+8]
call    sub_47E888
test    eax, eax
jz      short loc_4C5E1B

loc_4C5E14:
mov     bl, 1
jmp     loc_4C5F6B

loc_4C5E1B:
test    bl, bl
jnz     loc_4C5F6B
mov     eax, 60Ch
call    sub_47E888
test    eax, eax
jz      short loc_4C5E3B
mov     eax, 60Ch
call    sub_47EA91

loc_4C5E3B:
call    sub_4DDF54

loc_4C5E40:
test    eax, eax
jz      loc_4C5F6B
mov     bh, [edx]
mov     [eax], bh
mov     bh, [edx+2]
mov     [eax+2], bh
mov     bh, [edx+3]
mov     [eax+3], bh
mov     bh, [edx+4]
mov     [eax+4], bh
mov     bh, [edx+5]
mov     [eax+5], bh
movzx   si, byte ptr [edx+7]
shl     esi, 4
mov     [eax+56h], si
mov     bh, [edx+8]
mov     [eax+0Ch], bh
mov     bh, [edx+9]
mov     [eax+0Dh], bh
mov     bh, [edx+0Ah]
mov     [eax+0Eh], bh
mov     bh, [edx+0Bh]
mov     [eax+0Fh], bh
mov     si, [edx+0Ch]
mov     [eax+14h], si
mov     si, [edx+0Eh]
mov     [eax+16h], si
mov     si, [edx+10h]
mov     [eax+18h], si
mov     esi, [eax+12h]
sar     esi, 10h
shl     esi, 10h
mov     [eax+1Ch], esi
mov     esi, [eax+14h]
sar     esi, 10h
shl     esi, 10h
mov     [eax+20h], esi
mov     esi, [eax+16h]
sar     esi, 10h
shl     esi, 10h
mov     [eax+24h], esi
jmp     loc_4C5F6B

loc_4C5EC9:
xor     bl, bl
cmp     ah, 60h ; '`'
jnz     short loc_4C5F11
cmp     byte ptr [edx+2], 2Ah ; '*'
jnz     short loc_4C5F03
mov     bh, [edx+8]
cmp     bh, 2
jnz     short loc_4C5EEE
mov     eax, [ecx]
call    sub_47E888
test    eax, eax
jz      short loc_4C5F03
jmp     loc_4C5E14

loc_4C5EEE:
cmp     bh, 1
jnz     short loc_4C5F03
mov     eax, [ecx+4]
call    sub_47E888
test    eax, eax
jz      short loc_4C5F03
mov     bl, bh
jmp     short loc_4C5F6B

loc_4C5F03:
test    bl, bl
jnz     short loc_4C5F6B
call    sub_4DE043
jmp     loc_4C5E40

loc_4C5F11:
cmp     ah, 0E0h
jnz     short loc_4C5F6B
call    sub_4DE227
test    eax, eax
jz      short loc_4C5F6B
mov     bh, [edx]
mov     [eax], bh
mov     bh, [edx+2]
mov     [eax+2], bh
mov     bh, [edx+3]
mov     [eax+3], bh
mov     bh, [edx+4]
mov     [eax+4], bh
mov     bh, [edx+5]
mov     [eax+5], bh
mov     bh, [edx+8]
mov     [eax+0Ch], bh
mov     bh, [edx+9]
mov     [eax+0Dh], bh
mov     bh, [edx+0Ah]
mov     [eax+0Eh], bh
mov     bh, [edx+0Bh]
mov     [eax+0Fh], bh
mov     si, [edx+0Ch]
mov     [eax+48h], si
mov     si, [edx+0Eh]
mov     [eax+4Ah], si
mov     si, [edx+10h]
mov     [eax+4Ch], si

loc_4C5F6B:
add     edx, 14h
movsx   eax, byte ptr [edx]
cmp     eax, 0FFFFFFFFh
jnz     loc_4C5DF6
pop     esi
pop     ecx
pop     ebx
retn
sub_4C5DEE endp




sub_4C5F7E proc near
push    ebx
push    ecx
movsx   eax, byte ptr [edx]
cmp     eax, 0FFFFFFFFh
jz      loc_4C608C

loc_4C5F8C:
mov     ah, [edx+1]
cmp     ah, 20h ; ' '
jnz     loc_4C6023
call    sub_4DDF54
test    eax, eax
jz      loc_4C607D
mov     bl, [edx]
mov     [eax], bl
mov     bl, [edx+2]
mov     [eax+2], bl
mov     bl, [edx+3]
mov     [eax+3], bl
mov     bl, [edx+4]
mov     [eax+4], bl
mov     bl, [edx+5]
mov     [eax+5], bl
xor     ebx, ebx
mov     bl, [edx+7]
shl     ebx, 4
mov     [eax+56h], bx
mov     bl, [edx+8]
mov     [eax+0Ch], bl
mov     bl, [edx+9]
mov     [eax+0Dh], bl
mov     bl, [edx+0Ah]
mov     [eax+0Eh], bl
mov     bl, [edx+0Bh]
mov     [eax+0Fh], bl
mov     bx, [edx+0Ch]
mov     [eax+14h], bx
mov     bx, [edx+0Eh]
mov     [eax+16h], bx
mov     bx, [edx+10h]
mov     [eax+18h], bx
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
jmp     short loc_4C607D

loc_4C6023:
cmp     ah, 0E0h
jnz     short loc_4C607D
call    sub_4DE227
test    eax, eax
jz      short loc_4C607D
mov     bl, [edx]
mov     [eax], bl
mov     bl, [edx+2]
mov     [eax+2], bl
mov     bl, [edx+3]
mov     [eax+3], bl
mov     bl, [edx+4]
mov     [eax+4], bl
mov     bl, [edx+5]
mov     [eax+5], bl
mov     bl, [edx+8]
mov     [eax+0Ch], bl
mov     bl, [edx+9]
mov     [eax+0Dh], bl
mov     bl, [edx+0Ah]
mov     [eax+0Eh], bl
mov     bl, [edx+0Bh]
mov     [eax+0Fh], bl
mov     bx, [edx+0Ch]
mov     [eax+48h], bx
mov     bx, [edx+0Eh]
mov     [eax+4Ah], bx
mov     bx, [edx+10h]
mov     [eax+4Ch], bx

loc_4C607D:
add     edx, 14h
movsx   eax, byte ptr [edx]
cmp     eax, 0FFFFFFFFh
jnz     loc_4C5F8C

loc_4C608C:
pop     ecx
pop     ebx
retn
sub_4C5F7E endp




sub_4C608F proc near

var_78= dword ptr -78h
var_70= dword ptr -70h
var_68= dword ptr -68h
var_60= dword ptr -60h
var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= dword ptr -50h
var_48= dword ptr -48h
var_40= dword ptr -40h
var_38= word ptr -38h
var_36= word ptr -36h
var_34= word ptr -34h
var_30= dword ptr -30h
var_28= dword ptr -28h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 90h
mov     ecx, eax
cmp     byte ptr [eax+3], 0FFh
jnz     short loc_4C60B4
call    sub_4C646C
mov     eax, ecx
call    sub_4DE477
jmp     loc_4C6258

loc_4C60B4:
xor     edx, edx
mov     dl, [ecx+8]
mov     eax, ecx
call    ds:funcs_4C60BB[edx*4]
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jnz     loc_4C6251
mov     [esp+0A8h+var_38], 0FE00h
xor     ebx, ebx
mov     [esp+0A8h+var_36], bx
xor     esi, esi
mov     [esp+0A8h+var_34], si
mov     eax, esp
call    sub_4EF1AB
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
add     eax, 800h
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+0A8h+var_58]
lea     edx, [esp+0A8h+var_38]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [ecx+46h]
sar     eax, 10h
add     [esp+0A8h+var_58], eax
mov     eax, [esp+0A8h+var_58]
mov     [esp+0A8h+var_38], ax
mov     eax, [ecx+48h]
sar     eax, 10h
add     [esp+0A8h+var_54], eax
mov     eax, [esp+0A8h+var_54]
mov     [esp+0A8h+var_36], ax
mov     eax, [ecx+4Ah]
sar     eax, 10h
add     [esp+0A8h+var_50], eax
mov     eax, [esp+0A8h+var_50]
mov     [esp+0A8h+var_34], ax
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     eax, (offset dword_5F8376+2)
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_68]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_30]
call    sub_4F0003
lea     eax, [esp+0A8h+var_38]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_48]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_20]
call    sub_4F0003
lea     eax, [ecx+48h]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_78]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_28]
call    sub_4F0003
mov     ebx, [esp+0A8h+var_78]
mov     edi, [esp+0A8h+var_48]
sub     ebx, edi
jz      loc_4C6251
mov     eax, [esp+0A8h+var_70]
mov     ebp, [esp+0A8h+var_40]
sub     eax, ebp
mov     edx, [esp+0A8h+var_68]
sub     edx, edi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     eax, ebp
cmp     eax, [esp+0A8h+var_60]
jge     short loc_4C6251
fld     [esp+0A8h+var_30]
fcomp   [esp+0A8h+var_20]
fnstsw  ax
sahf
jnb     short loc_4C6228
fld     [esp+0A8h+var_30]
fcomp   [esp+0A8h+var_28]
fnstsw  ax
sahf
ja      short loc_4C6248

loc_4C6228:
fld     [esp+0A8h+var_30]
fcomp   [esp+0A8h+var_20]
fnstsw  ax
sahf
jbe     short loc_4C6251
fld     [esp+0A8h+var_30]
fcomp   [esp+0A8h+var_28]
fnstsw  ax
sahf
jnb     short loc_4C6251

loc_4C6248:
mov     dword ptr [ecx+50h], 2404040h
jmp     short loc_4C6258

loc_4C6251:
mov     dword ptr [ecx+50h], offset unk_808080

loc_4C6258:
add     esp, 90h

loc_4C625E:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C608F endp




sub_4C6265 proc near
or      byte ptr [eax], 2
inc     byte ptr [eax+8]
retn
sub_4C6265 endp




sub_4C626C proc near
push    edx
mov     edx, eax
mov     eax, 7B1h
call    sub_47E888
test    eax, eax
jz      short loc_4C62AB
mov     eax, (offset dword_5F8376+2)
call    sub_42C443
cmp     eax, [edx+54h]
jnz     short loc_4C62AB
mov     byte ptr [edx+8], 2
mov     byte ptr [edx+0Bh], 10h
mov     eax, 7B2h
call    sub_47E8B8
add     edx, 48h ; 'H'
mov     eax, 105h
call    sub_4D8BC3

loc_4C62AB:
pop     edx
retn
sub_4C626C endp




; int __fastcall sub_4C62AD(int, int)
sub_4C62AD proc near

var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
lea     edx, [eax+18h]
mov     eax, edx
call    sub_4EF1AB
xor     eax, eax
mov     al, [ecx+0Bh]
mov     [esp+10h+var_10], eax ; int
fild    word ptr [esp+10h+var_10]
fmul    ds:flt_50A418
fstp    dword ptr [ecx+18h]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     ah, [ecx+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4C631D
inc     byte ptr [ecx+8]
and     byte ptr [ecx], 0FDh
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, 7B2h
call    sub_47EA91
mov     edx, [ecx+54h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [ecx+40h]
mov     ds:dword_6E40B4[eax*4], edx

loc_4C631D:
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_4C62AD endp




; int __fastcall sub_4C6324(int, int)
sub_4C6324 proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     eax, 7B0h
call    sub_47E888
lea     ebx, [ecx+48h]
lea     edx, [ecx+18h]
test    eax, eax
jz      short loc_4C638F
mov     eax, 7B1h
call    sub_47E888
test    eax, eax
jnz     loc_4C63E4
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h
mov     eax, edx
call    sub_4EF1AB
mov     dword ptr [ecx+18h], 0
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
or      byte ptr [ecx], 2
mov     eax, 7B2h
call    sub_47E8B8
mov     edx, ebx
mov     eax, 106h
call    sub_4D8BC3
pop     edx
pop     ecx
pop     ebx
retn

loc_4C638F:
mov     eax, (offset dword_5F8376+2)
call    sub_42C443
cmp     eax, [ecx+54h]
jz      short loc_4C63E4
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h
mov     eax, edx
call    sub_4EF1AB
mov     dword ptr [ecx+18h], 0
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
or      byte ptr [ecx], 2
mov     eax, 7B2h
call    sub_47E8B8
mov     edx, ebx
mov     eax, 106h
call    sub_4D8BC3
mov     eax, 7B1h
call    sub_47EA91

loc_4C63E4:
pop     edx
pop     ecx
pop     ebx
retn
sub_4C6324 endp




; int __fastcall sub_4C63E8(int, int)
sub_4C63E8 proc near

var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
mov     ah, [eax+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4C6415
inc     byte ptr [ecx+8]
xor     ebx, ebx
xor     edx, edx
mov     eax, 186h
call    sub_4D89E4
mov     eax, 7B2h
call    sub_47EA91

loc_4C6415:
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
xor     eax, eax
mov     al, [ecx+0Bh]
mov     ebx, 10h
sub     ebx, eax
mov     [esp+10h+var_10], ebx ; int
fild    [esp+10h+var_10]
fmul    ds:flt_50A41C
fstp    dword ptr [ecx+18h]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
jmp     loc_4C631D
sub_4C63E8 endp




sub_4C644D proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+54h]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, [edx+3Ch]
mov     ds:dword_6E40B4[eax*4], ecx
mov     byte ptr [edx+8], 0
pop     edx
pop     ecx
retn
sub_4C644D endp




sub_4C646C proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
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
mov     [esp+40h+var_20], 1
xor     ecx, ecx
mov     [esp+40h+var_1C], ecx

loc_4C6483:
mov     eax, [esp+40h+var_1C]
shl     eax, 3
cmp     ds:byte_537C68[eax], 0FFh
jz      short loc_4C64C1
mov     dl, ds:byte_77E7D4
cmp     dl, ds:byte_537C68[eax]
jnz     short loc_4C64BB
mov     dl, byte ptr ds:dword_77E7D5
cmp     dl, ds:byte_537C69[eax]
jnz     short loc_4C64BB
mov     eax, ds:off_537C6C[eax]
mov     [esp+40h+var_20], eax
jmp     short loc_4C64C9

loc_4C64BB:
inc     [esp+40h+var_1C]
jmp     short loc_4C6483

loc_4C64C1:
test    ecx, ecx
jz      loc_4C66A3

loc_4C64C9:
xor     eax, eax
mov     al, ds:byte_77EAC5
mov     [esp+40h+var_34], eax
xor     eax, eax
mov     al, ds:byte_77EAC4
mov     [esp+40h+var_3C], eax
xor     eax, eax
mov     al, ds:byte_77EAC3
mov     [esp+40h+var_38], eax
xor     eax, eax
mov     al, ds:byte_77EAC2
mov     [esp+40h+var_40], eax
xor     eax, eax
mov     al, ds:byte_77E802
mov     [esp+40h+var_24], eax
mov     eax, [esp+40h+var_38]
mov     [esp+40h+var_30], eax

loc_4C6507:
mov     eax, [esp+40h+var_30]
cmp     eax, [esp+40h+var_40]
jge     loc_4C66A3
mov     eax, [esp+40h+var_34]
mov     [esp+40h+var_2C], eax

loc_4C651C:
mov     eax, [esp+40h+var_2C]
cmp     eax, [esp+40h+var_3C]
jge     loc_4C669A
sub     eax, [esp+40h+var_34]
add     eax, eax
add     eax, ds:dword_77E700
mov     ebp, [esp+40h+var_30]
sub     ebp, [esp+40h+var_38]
xor     ecx, ecx
mov     cx, ds:word_77EAAE
imul    ebp, ecx
add     ebp, ebp
movsx   ebp, word ptr [eax+ebp]
test    ebp, ebp
jle     loc_4C6691
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
mov     eax, ds:dword_6E40B4[eax*4]
mov     eax, [eax]
mov     [esp+40h+var_28], eax
xor     esi, esi
mov     [esp+40h+var_1C], esi

loc_4C6572:
mov     eax, [esp+40h+var_1C]
shl     eax, 4
add     eax, [esp+40h+var_20]
mov     eax, [eax+4]
cmp     eax, [esp+40h+var_28]
jnz     loc_4C6678
xor     edi, edi
jmp     short loc_4C6598

loc_4C658E:
inc     edi
cmp     edi, 2
jge     loc_4C666E

loc_4C6598:
call    sub_4DE227
mov     ecx, eax
test    eax, eax
jz      short loc_4C658E
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 2Fh ; '/'
mov     ebx, [esp+40h+var_1C]
shl     ebx, 4
add     ebx, [esp+40h+var_20]
lea     esi, [ebx+edi]
xor     eax, eax
mov     al, [esi+0Eh]
sar     eax, 4
mov     [ecx+3], al
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dl, [esi+0Eh]
and     dl, 0Fh
mov     [ecx+0Ch], dl
mov     al, byte ptr [esp+40h+var_24]
mov     [ecx+0Dh], al
mov     esi, ebp
shl     esi, 2
sub     esi, ebp
mov     dx, word ptr ds:(dword_6E40AA+2)[esi*4]
mov     ax, [ebx+8]
add     edx, eax
mov     eax, [ecx+9]
sar     eax, 18h
mov     ax, ds:word_537DA8[eax*4]
add     edx, eax
mov     [ecx+48h], dx
mov     dx, word ptr ds:(dword_6E40AE+2)[esi*4]
mov     ax, [ebx+0Ch]
add     edx, eax
mov     eax, [ecx+9]
sar     eax, 18h
mov     ax, ds:word_537DAA[eax*4]
add     edx, eax
mov     [ecx+4Ch], dx
mov     dx, word ptr ds:dword_6E40AE[esi*4]
mov     ax, [ebx+0Ah]
add     edx, eax
mov     [ecx+4Ah], dx
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     [ecx+54h], ebp
mov     eax, ds:dword_6E40B4[esi*4]
mov     [ecx+3Ch], eax
mov     eax, [ebx]
call    sub_4A7AAC
mov     [ecx+40h], eax
jmp     loc_4C658E

loc_4C666E:
inc     [esp+40h+var_24]
inc     ds:byte_77E802

loc_4C6678:
mov     eax, [esp+40h+var_1C]
inc     eax
mov     [esp+40h+var_1C], eax
shl     eax, 4
add     eax, [esp+40h+var_20]
cmp     dword ptr [eax], 0
jnz     loc_4C6572

loc_4C6691:
inc     [esp+40h+var_2C]
jmp     loc_4C651C

loc_4C669A:
inc     [esp+40h+var_30]
jmp     loc_4C6507

loc_4C66A3:
add     esp, 28h
jmp     loc_4C625E
sub_4C646C endp




sub_4C66AB proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
movzx   edi, byte ptr [eax+8]
lea     esi, [eax+58h]
mov     ebx, esi
mov     edx, offset dword_560BDC
call    ds:funcs_4C66C0[edi*4]
mov     edx, esi
mov     eax, ecx
call    sub_4C677E
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C66AB endp




sub_4C66D6 proc near
push    ecx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
cmp     byte ptr [ecx+3], 0
jnz     short loc_4C66FC
mov     word ptr [ecx+4Ah], 100h

loc_4C66FC:
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     ecx
retn
sub_4C66D6 endp




sub_4C6705 proc near
push    ecx
xor     ecx, ecx
mov     cl, [eax+3]
call    ds:funcs_4C670B[ecx*4]
pop     ecx
retn
sub_4C6705 endp




sub_4C6714 proc near
mov     bl, [eax+9]
cmp     bl, 1
jb      short loc_4C671F
jbe     short loc_4C6735
retn

loc_4C671F:
test    bl, bl
jnz     short locret_4C6746
cmp     byte ptr [edx+9], 19h
jnz     short locret_4C6746
cmp     dword ptr [edx+10h], 5
jnz     short locret_4C6746
inc     bl
mov     [eax+9], bl
retn

loc_4C6735:
mov     dx, [eax+4Ah]
sub     dx, 20h ; ' '
mov     [eax+4Ah], dx
jnz     short locret_4C6746
inc     byte ptr [eax+9]

locret_4C6746:
retn
sub_4C6714 endp




sub_4C6747 proc near
mov     bl, [eax+9]
cmp     bl, 1
jb      short loc_4C6752
jbe     short loc_4C6768
retn

loc_4C6752:
test    bl, bl
jnz     short locret_4C677D
cmp     byte ptr [edx+9], 4
jnz     short locret_4C677D
cmp     dword ptr [edx+10h], 55h ; 'U'
jnz     short locret_4C677D
inc     bl
mov     [eax+9], bl
retn

loc_4C6768:
mov     dx, [eax+4Ah]
add     edx, 8
mov     [eax+4Ah], dx
cmp     dx, 100h
jnz     short locret_4C677D
inc     byte ptr [eax+9]

locret_4C677D:
retn
sub_4C6747 endp




sub_4C677E proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; float
push    ebp             ; int
sub     esp, 10h
mov     ebx, eax
lea     ecx, [eax+18h]
mov     eax, ecx
call    sub_4EF184
mov     edx, 1000h
mov     [esp+1Ch+var_1C], edx ; int
mov     [esp+1Ch+var_18], edx ; int
mov     [esp+1Ch+var_14], edx ; int
xor     ebp, ebp
mov     [esp+1Ch+var_10], ebp ; int
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     eax, [ebx+9]
sar     eax, 18h
shl     eax, 6
mov     edx, ecx
call    sub_4EF50D
add     esp, 10h
pop     ebp
pop     ecx
pop     ebx
retn
sub_4C677E endp




sub_4C67C6 proc near

arg_0= byte ptr  4
arg_4= byte ptr  8

push    esi
push    edi
mov     esi, eax
mov     edi, edx
call    sub_4DE043
mov     edx, eax
test    eax, eax
jz      short loc_4C681A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Fh
mov     [eax+3], cl
mov     byte ptr [eax+0Ch], 0
mov     [eax+14h], di
mov     word ptr [eax+16h], 0FFFFh
mov     [eax+18h], bx
cmp     cl, 4
jnb     short loc_4C6807
cmp     [esp+8+arg_0], 0
jnz     short loc_4C6807
mov     word ptr [eax+56h], 400h
jmp     short loc_4C680D

loc_4C6807:
mov     word ptr [edx+56h], 0

loc_4C680D:
mov     al, [esi+1]
mov     [edx+0Eh], al
mov     al, [esp+8+arg_4]
mov     [edx+0Fh], al

loc_4C681A:
pop     edi
pop     esi
retn    8
sub_4C67C6 endp




sub_4C681F proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     edi, eax
mov     ecx, [eax+0Ch]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
add     edx, ecx
mov     esi, ds:off_537F04[edx*4]
xor     edx, edx
mov     [esp+18h+var_18], edx

loc_4C6847:
cmp     word ptr [esi], 0
jz      short loc_4C6879
mov     ah, [esi+5]
test    ah, ah
xor     edx, edx
mov     dl, byte ptr [esp+18h+var_18]
push    edx
xor     edx, edx
mov     dl, ah
push    edx
xor     ecx, ecx
mov     cl, [esi+4]
mov     ebx, [esi]
sar     ebx, 10h
movsx   edx, word ptr [esi]
mov     eax, edi
call    sub_4C67C6
inc     [esp+18h+var_18]
add     esi, 6
jmp     short loc_4C6847

loc_4C6879:
mov     ecx, [edi+0Ch]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
add     edx, ecx
mov     esi, ds:off_537F08[edx*4]

loc_4C6892:
cmp     word ptr [esi], 0
jz      short loc_4C68B5
push    0
push    0
mov     ebx, [esi]
sar     ebx, 10h
movsx   edx, word ptr [esi]
mov     ecx, 4
mov     eax, edi
call    sub_4C67C6
add     esi, 4
jmp     short loc_4C6892

loc_4C68B5:
add     esp, 4

loc_4C68B8:
pop     edi

loc_4C68B9:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C681F endp




sub_4C68BE proc near
push    ecx
push    edx
mov     edx, eax
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     ecx, [edx+0Ch]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, ecx
mov     ax, ds:word_537F30[eax*4]
mov     word ptr ds:dword_5F889A+2, ax
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     ecx, [edx+0Ch]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, ecx
mov     ax, ds:word_537F32[eax*4]
mov     word ptr ds:dword_5F889E+2, ax
mov     eax, ds:dword_5F889A
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F888C, eax
mov     ds:dword_5F8890, 0FFFF0000h
mov     eax, ds:dword_5F889E
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8894, eax
xor     ecx, ecx
mov     word ptr ds:dword_5F88A4, cx
mov     edx, [edx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
mov     ax, ds:word_537F34[eax*4]
mov     word ptr ds:dword_5F88A4+2, ax
mov     ds:word_5F88A8, cx
xor     cl, cl
mov     ds:byte_5F88AC, cl
pop     edx
pop     ecx
retn
sub_4C68BE endp




sub_4C6985 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
xor     edx, edx
mov     [esp+24h+var_20], edx
mov     edx, offset byte_5F8364
mov     ecx, [eax+0Ch]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, ecx
mov     eax, ds:off_537F04[eax*4]
mov     ecx, [esp+24h+var_24]
add     ecx, 14h

loc_4C69B9:
cmp     word ptr [eax], 0
jnz     short loc_4C69C6
xor     al, al
jmp     loc_4C6AAC

loc_4C69C6:
xor     ebx, ebx
mov     bl, [eax+4]
inc     ebx
shl     ebx, 6
mov     [esp+24h+var_1C], bx
cmp     byte ptr [eax+5], 0
jnz     short loc_4C6A2A
mov     ebx, [edx+16h]
sar     ebx, 10h
mov     esi, [edx+2Eh]
sar     esi, 10h
add     ebx, esi
sar     ebx, 1
mov     esi, [eax]
sar     esi, 10h
mov     edi, [esp+24h+var_20+2]
sar     edi, 10h
lea     ebp, [esi+edi]
movsx   ebx, bx
cmp     ebx, ebp
jg      loc_4C6A7A
sub     esi, edi
cmp     ebx, esi
jl      loc_4C6A7A
mov     bx, [eax]
sub     bx, [edx+2Ch]
mov     si, [eax]
sub     si, [ecx]
movsx   edi, bx
movsx   esi, si
imul    esi, edi
test    esi, esi
jl      short loc_4C6A86
jmp     short loc_4C6A75

loc_4C6A2A:
mov     esi, [edx+12h]
sar     esi, 10h
mov     ebx, [edx+2Ah]
sar     ebx, 10h
add     ebx, esi
sar     ebx, 1
movsx   edi, word ptr [eax]
mov     esi, [esp+24h+var_20+2]
sar     esi, 10h
lea     ebp, [edi+esi]
movsx   ebx, bx
cmp     ebx, ebp
jg      short loc_4C6A7A
sub     edi, esi
cmp     ebx, edi
jl      short loc_4C6A7A
mov     bx, [eax+2]
sub     bx, [edx+30h]
mov     si, [eax+2]
mov     di, [ecx+4]
sub     esi, edi
mov     edi, esi
movsx   esi, bx
movsx   edi, di
imul    esi, edi
test    esi, esi
jl      short loc_4C6A86

loc_4C6A75:
test    bx, bx
jz      short loc_4C6A86

loc_4C6A7A:
inc     [esp+24h+var_20]
add     eax, 6
jmp     loc_4C69B9

loc_4C6A86:
mov     edx, [esp+24h+var_24]
mov     edx, [edx+9]
sar     edx, 18h
cmp     edx, [esp+24h+var_20]
jz      short loc_4C6A99
mov     al, 1
jmp     short loc_4C6AAC

loc_4C6A99:
mov     edx, [esp+24h+var_24]
inc     byte ptr [edx+0Ch]
cmp     word ptr [eax+6], 0
jnz     short loc_4C6AAA
mov     al, 2
jmp     short loc_4C6AAC

loc_4C6AAA:
mov     al, 3

loc_4C6AAC:
add     esp, 0Ch
pop     ebp
jmp     loc_4C68B8
sub_4C6985 endp




sub_4C6AB5 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 1
mov     eax, 8000001Dh
call    sub_4D89E4
mov     al, [ecx+0Fh]
inc     al
mov     [ecx+0Eh], al
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4C6AB5 endp




sub_4C6AE3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, [eax+0Ch]
sar     ebx, 18h
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
shl     edx, 4
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 2
mov     ebx, ds:dword_77E814[edx]
cmp     ebx, 3
jnz     short loc_4C6B3A
shl     ebx, 2
add     ebx, eax
mov     eax, [ecx+58h]
and     al, 0FCh
mov     edx, ds:dword_537F0C[ebx]
sub     edx, eax
mov     eax, edx
mov     ecx, 0Fh
xor     edx, edx
div     ecx
imul    eax, eax
add     eax, ds:dword_537F1C[ebx]
jmp     short loc_4C6B43

loc_4C6B3A:
mov     edx, ebx
mov     eax, ds:dword_537F1C[eax+edx*4]

loc_4C6B43:
call    sub_4A62A5
pop     edx
pop     ecx
pop     ebx
retn
sub_4C6AE3 endp




sub_4C6B4C proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     ebx, eax
xor     edx, edx
mov     [esp+18h+var_18], edx
jmp     short loc_4C6B6C

loc_4C6B5D:
lea     edi, [ecx+1]
mov     [esp+18h+var_18], edi
cmp     edi, 3
jge     loc_4C6C08

loc_4C6B6C:
mov     edx, [ebx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ecx, [esp+18h+var_18]
add     eax, ecx
shl     eax, 4
mov     edx, [ebx+58h]
cmp     edx, ds:dword_77E808[eax]
ja      short loc_4C6B5D
mov     esi, 2

loc_4C6B91:
cmp     esi, [esp+18h+var_18]
jle     short loc_4C6BE4
mov     edx, [ebx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
add     eax, esi
shl     eax, 4
mov     edx, ds:(dword_77E7F6+2)[eax]
mov     ds:dword_77E808[eax], edx
xor     edx, edx

loc_4C6BB6:
mov     ecx, [ebx+0Ch]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
add     eax, esi
shl     eax, 4
lea     ecx, [edx+edx]
add     eax, ecx
mov     cx, ds:word_77E7FC[eax]
mov     word ptr ds:dword_77E80C[eax], cx
inc     edx
cmp     edx, 4
jl      short loc_4C6BB6
dec     esi
jmp     short loc_4C6B91

loc_4C6BE4:
mov     edx, [ebx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
add     eax, [esp+18h+var_18]
shl     eax, 4
mov     edx, [ebx+58h]
mov     ds:dword_77E808[eax], edx
mov     al, byte ptr [esp+18h+var_18]
jmp     loc_4C68B5

loc_4C6C08:
mov     al, 3
jmp     loc_4C68B5
sub_4C6B4C endp




sub_4C6C0F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, offset unk_56FCB4
mov     esi, ds:dword_77E730
xor     ebx, ebx
jmp     short loc_4C6C41

loc_4C6C22:
cmp     al, 0Eh
jnz     short loc_4C6C34

loc_4C6C26:
mov     eax, edx
call    sub_432EAB
mov     eax, edx
call    sub_4DE477

loc_4C6C34:
inc     ebx
add     edx, 60h ; '`'
cmp     ebx, 20h ; ' '
jge     loc_4C68B9

loc_4C6C41:
mov     cl, bl
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4C6C34
mov     al, [edx+2]
cmp     al, 18h
jb      short loc_4C6C22
jbe     short loc_4C6C26
cmp     al, 19h
jbe     short loc_4C6C26
cmp     al, 21h ; '!'
jz      short loc_4C6C26
jmp     short loc_4C6C34
sub_4C6C0F endp

jpt_4C6C83 dd offset loc_4C6C8A ; jump table for switch statement
dd offset loc_4C6CAA
dd offset loc_4C6CBA
dd offset loc_4C6CF5



sub_4C6C6E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4C6C83      ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
and     eax, 0FFh
jmp     jpt_4C6C83[eax*4] ; switch jump

loc_4C6C8A:             ; jumptable 004C6C83 case 0
mov     eax, 10h
call    sub_4D9040
mov     eax, 7E0h
call    sub_47E8B8
call    sub_4C6C0F

loc_4C6CA3:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C6CAA:             ; jumptable 004C6C83 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short def_4C6C83 ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
jmp     short loc_4C6CA3

loc_4C6CBA:             ; jumptable 004C6C83 case 2
cmp     ds:word_6E23D6, 0
jnz     short def_4C6C83 ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
cmp     ds:byte_77EAB8, 0
jnz     short def_4C6C83 ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
mov     ds:word_77EA80, 50h ; 'P'
xor     ebx, ebx
mov     edx, 1
mov     eax, 8000001Dh
call    sub_4D89E4
mov     edx, 2Fh ; '/'
xor     eax, eax
call    sub_4A0E24
jmp     short loc_4C6CA3

loc_4C6CF5:             ; jumptable 004C6C83 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C6C83 ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
mov     byte ptr [ecx+0Eh], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

def_4C6C83:             ; jumptable 004C6C83 default case
pop     edx             ; jumptable 004C6D37 default case
pop     ecx
pop     ebx
retn
sub_4C6C6E endp

align 2
jpt_4C6D37 dd offset loc_4C6D3E ; jump table for switch statement
dd offset loc_4C6D61
dd offset loc_4C6DAE
dd offset loc_4C6DD4
dd offset loc_4C6DF9
dd offset loc_4C6E46



sub_4C6D26 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      short def_4C6C83 ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
and     eax, 0FFh
jmp     jpt_4C6D37[eax*4] ; switch jump

loc_4C6D3E:             ; jumptable 004C6D37 case 0
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
add     eax, edx
xor     edx, edx
mov     dl, ds:byte_537DE0[eax]
xor     eax, eax
call    sub_4A0E24

loc_4C6D5A:
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C6D61:             ; jumptable 004C6D37 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C6C83 ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     edx, ds:dword_55BD7C
and     edx, 0FFh
add     eax, edx
mov     dh, ds:byte_537DE1[eax]
cmp     dh, 0FFh
jnz     short loc_4C6D9F
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

loc_4C6D97:
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4C6D9F:
mov     [ecx+0Fh], dh
mov     eax, 9
call    sub_49E0D7
jmp     short loc_4C6D5A

loc_4C6DAE:             ; jumptable 004C6D37 case 2
cmp     ds:word_6E23D6, 0
jnz     def_4C6C83      ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
mov     edx, 80h
mov     eax, 18h
call    sub_4DC979
mov     eax, ecx
call    sub_4C68BE
jmp     short loc_4C6D5A

loc_4C6DD4:             ; jumptable 004C6D37 case 3
mov     eax, 1
call    sub_49E0D7
mov     eax, ecx
call    sub_4C681F
mov     byte ptr [ecx+0Ch], 0
mov     dword ptr [ecx+58h], 0
mov     byte ptr [ecx+0Dh], 0
jmp     loc_4C6D5A

loc_4C6DF9:             ; jumptable 004C6D37 case 4
cmp     ds:word_6E23D6, 0
jnz     def_4C6C83      ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
cmp     ds:byte_77EAB8, 0
jnz     def_4C6C83      ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
shl     edx, 2
add     edx, 4Eh ; 'N'
add     edx, ds:dword_77E814[eax]
xor     eax, eax
call    sub_4A0E24
mov     eax, 10h
call    sub_4D9040
jmp     loc_4C6D5A

loc_4C6E46:             ; jumptable 004C6D37 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C6C83      ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
cmp     ds:byte_77EAB8, 0
jnz     def_4C6C83      ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     edx, 39h ; '9'
mov     eax, 2
call    sub_4A0E24
mov     ebx, [ecx+0Ch]
sar     ebx, 18h
mov     edx, ebx
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 4
shl     edx, 2
add     edx, 64h ; 'd'
add     edx, ds:dword_77E814[eax]
mov     eax, 3
call    sub_4A0E24
mov     eax, 25000Dh
call    sub_4D8E42
inc     byte ptr [ecx+9]
jmp     loc_4C6D97
sub_4C6D26 endp

db 8Dh, 40h, 0
jpt_4C6F12 dd offset loc_4C6FC9 ; jump table for switch statement
dd offset loc_4C6F19
dd offset loc_4C6F25
dd offset loc_4C6FBA



sub_4C6EC6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_4C6ED6
inc     dword ptr [ecx+58h]
jmp     short loc_4C6EFE

loc_4C6ED6:
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     ebx, 7
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_4C6EFB
mov     edx, (offset dword_5F8376+2)
mov     eax, 169h
call    sub_4D8BC3

loc_4C6EFB:
dec     byte ptr [ecx+0Dh]

loc_4C6EFE:
mov     eax, ecx
call    sub_4C6985
cmp     al, 3           ; switch 4 cases
ja      def_4C6F12      ; jumptable 004C6F12 default case
and     eax, 0FFh
jmp     jpt_4C6F12[eax*4] ; switch jump

loc_4C6F19:             ; jumptable 004C6F12 case 1
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Ah], 0
jmp     def_4C6F12      ; jumptable 004C6F12 default case

loc_4C6F25:             ; jumptable 004C6F12 case 2
mov     edx, (offset dword_5F8376+2)
mov     eax, 16Ah
call    sub_4D8BC3
mov     eax, ecx
call    sub_4C6B4C
mov     ds:byte_55D3B8, al
inc     byte ptr [ecx+9]
cmp     ds:byte_55D3B8, 0
jz      short loc_4C6F86
mov     ebx, [ecx+0Ch]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 4
cmp     ds:dword_77E814[eax], 3
jnz     short loc_4C6F74
lea     eax, [ebx+201h]
call    sub_47E888
test    eax, eax
jz      short loc_4C6F7D

loc_4C6F74:
mov     byte ptr [ecx+0Ah], 2
jmp     def_4C6F12      ; jumptable 004C6F12 default case

loc_4C6F7D:
mov     byte ptr [ecx+0Ah], 3
jmp     def_4C6F12      ; jumptable 004C6F12 default case

loc_4C6F86:
mov     ebx, [ecx+0Ch]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 4
cmp     ds:dword_77E814[eax], 3
jnz     short loc_4C6FAE
lea     eax, [ebx+201h]
call    sub_47E888
test    eax, eax
jz      short loc_4C6FB4

loc_4C6FAE:
mov     byte ptr [ecx+0Ah], 4
jmp     short def_4C6F12 ; jumptable 004C6F12 default case

loc_4C6FB4:
mov     byte ptr [ecx+0Ah], 5
jmp     short def_4C6F12 ; jumptable 004C6F12 default case

loc_4C6FBA:             ; jumptable 004C6F12 case 3
mov     edx, (offset dword_5F8376+2)
mov     eax, 167h
call    sub_4D8BC3

loc_4C6FC9:             ; jumptable 004C6F12 case 0
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     ebx, ds:dword_77E814[eax]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
mov     edx, [ecx+58h]
cmp     edx, ds:dword_537F0C[eax+ebx*4]
jb      short def_4C6F12 ; jumptable 004C6F12 default case
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Ah], 1

def_4C6F12:             ; jumptable 004C6F12 default case
cmp     byte ptr [ecx+9], 2
jnz     short loc_4C7025
mov     eax, 2
call    sub_4A0E75
mov     eax, 3
call    sub_4A0E75
mov     eax, 40h ; '@'
call    sub_4D9040

loc_4C7025:
pop     edx
pop     ecx
pop     ebx
retn
sub_4C6EC6 endp




sub_4C7029 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
test    al, al
jbe     short loc_4C703B
cmp     al, 1
jz      short loc_4C705B
pop     edx
pop     ecx
retn

loc_4C703B:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_4C7074
mov     edx, 32h ; '2'
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
retn

loc_4C705B:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4C7074
call    sub_4D8EFD
test    eax, eax
jnz     short loc_4C7074
mov     eax, ecx
call    sub_4C6AB5

loc_4C7074:
pop     edx
pop     ecx
retn
sub_4C7029 endp




sub_4C7077 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
test    al, al
jbe     short loc_4C7089
cmp     al, 1
jz      short loc_4C70A9
pop     edx
pop     ecx
retn

loc_4C7089:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_4C70C2
mov     edx, 34h ; '4'
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
retn

loc_4C70A9:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4C70C2
call    sub_4D8EFD
test    eax, eax
jnz     short loc_4C70C2
mov     eax, ecx
call    sub_4C6AB5

loc_4C70C2:
pop     edx
pop     ecx
retn
sub_4C7077 endp

align 2
jpt_4C70EB dd offset loc_4C70F2 ; jump table for switch statement
dd offset loc_4C7147
dd offset loc_4C718E
dd offset loc_4C71A2



sub_4C70D6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
cmp     al, 3           ; switch 4 cases
ja      def_4C70EB      ; jumptable 004C70EB default case
and     eax, 0FFh
jmp     jpt_4C70EB[eax*4] ; switch jump

loc_4C70F2:             ; jumptable 004C70EB case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4C70EB      ; jumptable 004C70EB default case
mov     eax, ecx
call    sub_4C6AE3
mov     eax, 7
call    sub_47EEAE
mov     edx, 35h ; '5'
xor     eax, eax
call    sub_4A0E24
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     edx, ds:dword_77E814[eax]
cmp     edx, 3
jnb     short loc_4C717F
lea     ebx, [edx+1]
mov     ds:dword_77E814[eax], ebx
jmp     short loc_4C717F

loc_4C7147:             ; jumptable 004C70EB case 1
mov     bl, ds:byte_55D3B8
cmp     bl, 3
jnb     short loc_4C7186
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C70EB ; jumptable 004C70EB default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, bl
add     eax, edx
call    sub_4A62B7
mov     edx, 2

loc_4C7178:
xor     eax, eax
call    sub_4A0E24

loc_4C717F:
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C7186:
mov     byte ptr [ecx+0Bh], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4C718E:             ; jumptable 004C70EB case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C70EB ; jumptable 004C70EB default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
add     edx, 3
jmp     short loc_4C7178

loc_4C71A2:             ; jumptable 004C70EB case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C70EB ; jumptable 004C70EB default case
call    sub_4D8EFD
test    eax, eax
jnz     short def_4C70EB ; jumptable 004C70EB default case
mov     eax, ecx
call    sub_4C6AB5

def_4C70EB:             ; jumptable 004C70EB default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4C70D6 endp

db 8Dh, 40h, 0
jpt_4C71E7 dd offset loc_4C71EE ; jump table for switch statement
dd offset loc_4C7250
dd offset loc_4C728B
dd offset loc_4C729F



sub_4C71D2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
cmp     al, 3           ; switch 4 cases
ja      def_4C71E7      ; jumptable 004C71E7 default case
and     eax, 0FFh
jmp     jpt_4C71E7[eax*4] ; switch jump

loc_4C71EE:             ; jumptable 004C71E7 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4C71E7      ; jumptable 004C71E7 default case
mov     eax, [ecx+0Ch]
sar     eax, 18h
add     eax, 201h
call    sub_47E8B8
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
mov     al, ds:byte_537F2C[eax*4]
and     eax, 0FFh
call    sub_4A629F
mov     eax, 7
call    sub_47EEAE
mov     edx, 36h ; '6'

loc_4C7242:
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C7250:             ; jumptable 004C71E7 case 1
mov     bl, ds:byte_55D3B8
cmp     bl, 3
jnb     short loc_4C7283
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C71E7 ; jumptable 004C71E7 default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, bl
add     eax, edx
call    sub_4A62B7
mov     edx, 2
jmp     short loc_4C7242

loc_4C7283:
mov     byte ptr [ecx+0Bh], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4C728B:             ; jumptable 004C71E7 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C71E7 ; jumptable 004C71E7 default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
add     edx, 3
jmp     short loc_4C7242

loc_4C729F:             ; jumptable 004C71E7 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C71E7 ; jumptable 004C71E7 default case
call    sub_4D8EFD
test    eax, eax
jnz     short def_4C71E7 ; jumptable 004C71E7 default case
mov     eax, [ecx+0Ch]
sar     eax, 18h
add     eax, 201h
call    sub_47E8B8
mov     eax, ecx
call    sub_4C6AB5

def_4C71E7:             ; jumptable 004C71E7 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4C71D2 endp

db 8Bh, 0C0h
jpt_4C72F3 dd offset loc_4C72FA ; jump table for switch statement
dd offset loc_4C734F
dd offset loc_4C7387
dd offset loc_4C739B



sub_4C72DE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
cmp     al, 3           ; switch 4 cases
ja      def_4C72F3      ; jumptable 004C72F3 default case
and     eax, 0FFh
jmp     jpt_4C72F3[eax*4] ; switch jump

loc_4C72FA:             ; jumptable 004C72F3 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4C72F3      ; jumptable 004C72F3 default case
mov     eax, ecx
call    sub_4C6AE3
mov     eax, 7
call    sub_47EEAE
mov     edx, 37h ; '7'
xor     eax, eax
call    sub_4A0E24
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     edx, ds:dword_77E814[eax]
cmp     edx, 3
jnb     short loc_4C7380
lea     ebx, [edx+1]
mov     ds:dword_77E814[eax], ebx
jmp     short loc_4C7380

loc_4C734F:             ; jumptable 004C72F3 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C72F3 ; jumptable 004C72F3 default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, ds:byte_55D3B8
add     eax, edx
call    sub_4A62B7
mov     edx, 2

loc_4C7379:
xor     eax, eax
call    sub_4A0E24

loc_4C7380:
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C7387:             ; jumptable 004C72F3 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C72F3 ; jumptable 004C72F3 default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
add     edx, 3
jmp     short loc_4C7379

loc_4C739B:             ; jumptable 004C72F3 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C72F3 ; jumptable 004C72F3 default case
call    sub_4D8EFD
test    eax, eax
jnz     short def_4C72F3 ; jumptable 004C72F3 default case
mov     eax, ecx
call    sub_4C6AB5

def_4C72F3:             ; jumptable 004C72F3 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4C72DE endp

db 8Bh, 0C0h
jpt_4C73DE dd offset loc_4C73E5 ; jump table for switch statement
dd offset loc_4C7446
dd offset loc_4C7473
dd offset loc_4C7487



sub_4C73CA proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
cmp     al, 3           ; switch 4 cases
ja      def_4C73DE      ; jumptable 004C73DE default case
and     eax, 0FFh
jmp     jpt_4C73DE[eax*4] ; switch jump

loc_4C73E5:             ; jumptable 004C73DE case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4C73DE      ; jumptable 004C73DE default case
mov     eax, [ecx+0Ch]
sar     eax, 18h
add     eax, 201h
call    sub_47E8B8
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
mov     al, ds:byte_537F2C[eax*4]
and     eax, 0FFh
call    sub_4A629F
mov     eax, 7
call    sub_47EEAE
mov     edx, 4Dh ; 'M'

loc_4C7439:
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
retn

loc_4C7446:             ; jumptable 004C73DE case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C73DE ; jumptable 004C73DE default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, eax
xor     eax, eax
mov     al, ds:byte_55D3B8
add     eax, edx
call    sub_4A62B7
mov     edx, 2
jmp     short loc_4C7439

loc_4C7473:             ; jumptable 004C73DE case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C73DE ; jumptable 004C73DE default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
add     edx, 3
jmp     short loc_4C7439

loc_4C7487:             ; jumptable 004C73DE case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C73DE ; jumptable 004C73DE default case
call    sub_4D8EFD
test    eax, eax
jnz     short def_4C73DE ; jumptable 004C73DE default case
mov     eax, ecx
call    sub_4C6AB5

def_4C73DE:             ; jumptable 004C73DE default case
pop     edx
pop     ecx
retn
sub_4C73CA endp




sub_4C74A3 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4C74A9[edx*4]
pop     edx
retn
sub_4C74A3 endp




sub_4C74B2 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_4C74BB[ecx*4]
mov     eax, [edx+58h]
call    sub_4A62AB
pop     edx
pop     ecx
retn
sub_4C74B2 endp




sub_4C74CD proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_4C74E5
jbe     short loc_4C74FF
cmp     al, 2
jz      loc_4C755D
pop     edx
pop     ecx
retn

loc_4C74E5:
test    al, al
jnz     loc_4C75A0
mov     edx, 38h ; '8'
xor     eax, eax
call    sub_4A0E24

loc_4C74F9:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
retn

loc_4C74FF:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C75A0
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA5E, 8
mov     ds:byte_77EA5F, 2
mov     word ptr ds:dword_77EA4E+2, 35Fh
mov     word ptr ds:dword_77EA52, 0FFBFh
mov     word ptr ds:dword_77EA52+2, 160h
mov     word ptr ds:dword_77EA5A, 0C00h
xor     dl, dl
mov     byte ptr ds:dword_77EA5A+3, dl
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 2
jmp     short loc_4C74F9

loc_4C755D:
cmp     al, byte ptr ds:dword_77EA5A+2
jnz     short loc_4C75A0
inc     byte ptr ds:dword_77EA5A+2
mov     ds:word_77EA80, 7Fh
mov     eax, 7E0h
call    sub_47EA91
mov     eax, 200h
call    sub_47EA91
mov     byte ptr ds:word_77E7FC, 1
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, ecx
call    sub_4DE477

loc_4C75A0:
pop     edx
pop     ecx
retn
sub_4C74CD endp




sub_4C75A3 proc near
push    edx
push    esi
push    edi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C75AD[edx*4]
lea     edi, [esi+14h]
mov     esi, (offset dword_5F838E+2)
movsd
movsd
pop     edi
pop     esi
pop     edx
retn
sub_4C75A3 endp




sub_4C75C2 proc near
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, ax
mov     word ptr ds:dword_5F889E, dx
mov     word ptr ds:dword_5F889E+2, bx
cwde
shl     eax, 10h
mov     ds:dword_5F888C, eax
movsx   eax, dx
shl     eax, 10h
mov     ds:dword_5F8890, eax
movsx   eax, bx
shl     eax, 10h
mov     ds:dword_5F8894, eax
xor     edx, edx
mov     word ptr ds:dword_5F88A4, dx
mov     word ptr ds:dword_5F88A4+2, cx
mov     ds:word_5F88A8, dx
xor     ah, ah
mov     ds:byte_5F88AC, ah
retn
sub_4C75C2 endp




sub_4C762A proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
mov     ebp, ds:dword_77E8D4
shl     ebp, 3
add     ebp, offset off_538110
mov     ecx, [ebp+0]
xor     esi, esi

loc_4C7645:
xor     eax, eax
mov     al, [ebp+4]
cmp     esi, eax
jge     loc_4C773F
call    sub_4DE043
mov     edx, eax
mov     ebx, eax
test    eax, eax
jz      loc_4C7736
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 26h ; '&'
mov     al, [ecx+4]
mov     [edx+0Ch], al
mov     al, [ecx+5]
mov     [edx+0Dh], al
mov     byte ptr [edx+0Eh], 0
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+1]
mov     [edx+0Fh], al
mov     ax, [ecx]
mov     [edx+14h], ax
mov     ax, [ecx+2]
mov     [edx+18h], ax
cmp     byte ptr [edx+0Ch], 0
jz      short loc_4C76CA
call    rand_
xor     ah, ah
and     al, 0Fh
inc     eax
imul    eax, 7
add     eax, 78h ; 'x'
mov     [edx+16h], ax
neg     eax
mov     [edx+16h], ax
call    rand_
and     eax, 3
mov     edi, eax
shl     eax, 2
add     eax, edi
add     eax, eax
add     eax, 64h ; 'd'
jmp     short loc_4C76FC

loc_4C76CA:
call    rand_
xor     ah, ah
and     al, 0Fh
inc     eax
imul    eax, 5
add     eax, 78h ; 'x'
mov     [edx+16h], ax
mov     edi, eax
neg     edi
mov     [edx+16h], di
call    rand_
and     eax, 3
mov     edi, eax
shl     eax, 2
add     eax, edi
add     eax, eax
add     eax, 32h ; '2'

loc_4C76FC:
mov     [edx+0DCh], eax
call    rand_
and     eax, 0F00h
mov     edx, eax
call    sub_4EF008
imul    eax, [ebx+0DCh]
shr     eax, 0Ch
mov     [ebx+44h], ax
mov     eax, edx
call    sub_4EF003
imul    eax, [ebx+0DCh]
shr     eax, 0Ch
mov     [ebx+48h], ax

loc_4C7736:
inc     esi
add     ecx, 6
jmp     loc_4C7645

loc_4C773F:
add     esp, 4

loc_4C7742:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C762A endp




sub_4C7749 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
mov     ebp, edx
xor     edx, edx
mov     [esp+18h+var_18], edx
jmp     short loc_4C7768

loc_4C775C:
mov     ebx, [esp+18h+var_18]
inc     ebx
mov     [esp+18h+var_18], ebx
cmp     ebx, 3
jge     short loc_4C77B4

loc_4C7768:
mov     eax, [esp+18h+var_18]
shl     eax, 4
cmp     ebp, [edi+eax]
ja      short loc_4C775C
mov     esi, 2

loc_4C7778:
mov     eax, [esp+18h+var_18]
cmp     esi, eax
jle     short loc_4C77A9
mov     eax, esi
shl     eax, 4
mov     edx, [edi+eax-10h]
mov     [edi+eax], edx
xor     edx, edx

loc_4C778D:
mov     ecx, esi
shl     ecx, 4
add     ecx, edi
mov     eax, edx
mov     bx, [ecx+eax*2-0Ch]
mov     [ecx+eax*2+4], bx
inc     edx
cmp     edx, 4
jl      short loc_4C778D
dec     esi
jmp     short loc_4C7778

loc_4C77A9:
shl     eax, 4
mov     [edi+eax], ebp
mov     al, byte ptr [esp+18h+var_18]
jmp     short loc_4C77B6

loc_4C77B4:
mov     al, 3

loc_4C77B6:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4C7749 endp




sub_4C77BF proc near
push    ebx
push    ecx
push    edx
mov     ecx, ds:dword_77E8D4
shl     ecx, 3
cmp     ds:dword_77E8D4, 3
jnz     short loc_4C77F7
mov     eax, [eax+58h]
and     al, 0FCh
mov     ebx, ds:dword_537FD4[ecx]
sub     ebx, eax
mov     eax, ebx
mov     ebx, 0Fh
xor     edx, edx
div     ebx
imul    eax, eax
add     eax, ds:dword_537FD0[ecx]
jmp     short loc_4C77FD

loc_4C77F7:
mov     eax, ds:dword_537FD0[ecx]

loc_4C77FD:
call    sub_4A62A5
pop     edx
pop     ecx
pop     ebx
retn
sub_4C77BF endp




sub_4C7806 proc near
push    edx
mov     edx, ds:dword_77E8D4
mov     eax, [eax+58h]
cmp     eax, ds:dword_537FD4[edx*8]
jnb     short loc_4C7842
mov     eax, offset byte_57098C
xor     edx, edx
jmp     short loc_4C782D

loc_4C7822:
inc     edx
add     eax, 11Ch
cmp     edx, 20h ; ' '
jge     short loc_4C7842

loc_4C782D:
cmp     byte ptr [eax], 0
jz      short loc_4C7822
cmp     byte ptr [eax+2], 26h ; '&'
jnz     short loc_4C7822
cmp     byte ptr [eax+0Ch], 0
jz      short loc_4C7822
xor     al, al
pop     edx
retn

loc_4C7842:
mov     al, 1
pop     edx
retn
sub_4C7806 endp




sub_4C7846 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+9]
test    al, al
jbe     short loc_4C785C
cmp     al, 1
jz      short loc_4C7896
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C785C:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_4C78CD
mov     eax, esi
call    sub_4C762A
mov     eax, 10h
call    sub_4D9040
xor     ecx, ecx
mov     ebx, 300h
mov     edx, 0FFFFFFFFh
xor     eax, eax
call    sub_4C75C2
inc     byte ptr [esi+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C7896:
cmp     ds:word_6E23D6, 0
jnz     short loc_4C78CD
cmp     ds:byte_77EAB8, 0
jnz     short loc_4C78CD
xor     ebx, ebx
mov     edx, 1
mov     eax, 80000021h
call    sub_4D89E4
mov     edx, 0Dh
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0

loc_4C78CD:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C7846 endp

jpt_4C7912 dd offset loc_4C7919 ; jump table for switch statement
dd offset loc_4C7947
dd offset loc_4C79B9
dd offset loc_4C79D0
dd offset loc_4C7A34
dd offset loc_4C7B7D
dd offset loc_4C7BB6
dd offset loc_4C7BF1
dd offset loc_4C7C0C
dd offset loc_4C7C2D



sub_4C78FA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     al, [eax+9]
cmp     al, 9           ; switch 10 cases
ja      def_4C7912      ; jumptable 004C7912 default case
and     eax, 0FFh
jmp     jpt_4C7912[eax*4] ; switch jump

loc_4C7919:             ; jumptable 004C7912 case 0
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C7912      ; jumptable 004C7912 default case
mov     eax, 10h
call    sub_4D9040
mov     edx, 16h
add     edx, ds:dword_77E8D4

loc_4C793B:
xor     eax, eax

loc_4C793D:
call    sub_4A0E24
jmp     loc_4C7BE3

loc_4C7947:             ; jumptable 004C7912 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C7912      ; jumptable 004C7912 default case
cmp     ds:byte_77EAB8, 0
jnz     def_4C7912      ; jumptable 004C7912 default case
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     edx, (offset dword_5F8376+2)
mov     eax, 16Dh
call    sub_4D8BC3
mov     ds:word_77EA80, 50h ; 'P'
mov     eax, 25000Eh
call    sub_4D8E42
mov     dword ptr [esi+58h], 0
mov     byte ptr [esi+0Ch], 0
mov     edx, 1Ah
mov     eax, 2
call    sub_4A0E24
mov     edx, 28h ; '('
add     edx, ds:dword_77E8D4
mov     eax, 3
jmp     short loc_4C793D

loc_4C79B9:             ; jumptable 004C7912 case 2
mov     eax, esi
call    sub_4C7806
test    al, al
jnz     loc_4C7BE3
inc     dword ptr [esi+58h]
jmp     def_4C7912      ; jumptable 004C7912 default case

loc_4C79D0:             ; jumptable 004C7912 case 3
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4C7912      ; jumptable 004C7912 default case
mov     edx, (offset dword_5F8376+2)
mov     eax, 16Dh
call    sub_4D8BC3
mov     eax, 40h ; '@'
call    sub_4D9040
mov     eax, 2
call    sub_4A0E75
mov     eax, 3
call    sub_4A0E75
mov     eax, ds:dword_77E8D4
mov     edx, [esi+58h]
cmp     edx, ds:dword_537FD4[eax*8]
jb      short loc_4C7A2A
mov     edx, 20h ; ' '
jmp     loc_4C793B

loc_4C7A2A:
mov     edx, 1Fh
jmp     loc_4C793B

loc_4C7A34:             ; jumptable 004C7912 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C7912      ; jumptable 004C7912 default case
cmp     ds:byte_77EAB8, 0
jnz     def_4C7912      ; jumptable 004C7912 default case
mov     eax, ds:dword_77E8D4
mov     edx, [esi+58h]
cmp     edx, ds:dword_537FD4[eax*8]
jb      short loc_4C7A88
mov     edx, 10h
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 1
mov     eax, 80010022h
call    sub_4D89E4
mov     ds:byte_55D3BC, 0FFh
jmp     loc_4C7BE3

loc_4C7A88:
mov     eax, 7
call    sub_47EEAE
mov     eax, 315h
call    sub_47E888
test    eax, eax
jnz     short loc_4C7AF8
cmp     ds:dword_77E8D4, 3
jnz     short loc_4C7ACB
mov     eax, 5Ch ; '\'
call    sub_4A629F
mov     edx, 12h
xor     eax, eax
call    sub_4A0E24
mov     eax, 315h
call    sub_47E8B8
jmp     short loc_4C7ADE

loc_4C7ACB:
mov     eax, esi
call    sub_4C77BF
mov     edx, 11h
xor     eax, eax
call    sub_4A0E24

loc_4C7ADE:
xor     ebx, ebx
mov     edx, 1
mov     eax, 80010023h
call    sub_4D89E4
mov     ds:byte_55D3BC, 0FFh
jmp     short loc_4C7B67

loc_4C7AF8:
mov     edx, [esi+58h]
mov     eax, offset dword_77E8C8
call    sub_4C7749
mov     ds:byte_55D3BC, al
test    al, al
jnz     short loc_4C7B43
mov     eax, esi
call    sub_4C77BF
mov     edx, 13h
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 1
mov     eax, 80010024h
call    sub_4D89E4
mov     edx, (offset dword_5F8376+2)
mov     eax, 16Eh
call    sub_4D8BC3
jmp     short loc_4C7B67

loc_4C7B43:
mov     eax, esi
call    sub_4C77BF
mov     edx, 11h
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 1
mov     eax, 80010023h
call    sub_4D89E4

loc_4C7B67:
mov     edi, ds:dword_77E8D4
cmp     edi, 3
jnb     short loc_4C7BE3
lea     ebp, [edi+1]
mov     ds:dword_77E8D4, ebp
jmp     short loc_4C7BE3

loc_4C7B7D:             ; jumptable 004C7912 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C7912      ; jumptable 004C7912 default case
cmp     ds:byte_55D3BC, 3
jnb     short loc_4C7BAC
xor     eax, eax
mov     al, ds:byte_55D3BC
add     eax, 0Ch
call    sub_4A62B7
mov     edx, 24h ; '$'
jmp     loc_4C793B

loc_4C7BAC:
mov     edx, 1Dh
jmp     loc_4C793B

loc_4C7BB6:             ; jumptable 004C7912 case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C7912      ; jumptable 004C7912 default case
call    sub_4D8EFD
test    eax, eax
jnz     def_4C7912      ; jumptable 004C7912 default case
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4C7BE8
mov     eax, 9

loc_4C7BDE:
call    sub_49E0D7

loc_4C7BE3:
inc     byte ptr [esi+9]
jmp     short def_4C7912 ; jumptable 004C7912 default case

loc_4C7BE8:
inc     byte ptr [esi+8]

loc_4C7BEB:
mov     byte ptr [esi+9], 0
jmp     short def_4C7912 ; jumptable 004C7912 default case

loc_4C7BF1:             ; jumptable 004C7912 case 7
cmp     ds:word_6E23D6, 0
jnz     short def_4C7912 ; jumptable 004C7912 default case
mov     edx, 80h
mov     eax, 18h
call    sub_4DC979
jmp     short loc_4C7BE3

loc_4C7C0C:             ; jumptable 004C7912 case 8
mov     eax, esi
call    sub_4C762A
xor     ecx, ecx
mov     ebx, 300h
mov     edx, 0FFFFFFFFh
xor     eax, eax
call    sub_4C75C2
mov     eax, 1
jmp     short loc_4C7BDE

loc_4C7C2D:             ; jumptable 004C7912 case 9
cmp     ds:word_6E23D6, 0
jz      short loc_4C7BEB

def_4C7912:             ; jumptable 004C7912 default case
mov     eax, [esi+58h]
call    sub_4A62AB
jmp     loc_4C7742
sub_4C78FA endp




sub_4C7C44 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_4C7C5C
jbe     short loc_4C7C76
cmp     al, 2
jz      loc_4C7CD4
pop     edx
pop     ecx
retn

loc_4C7C5C:
test    al, al
jnz     loc_4C7CFC
mov     edx, 15h
xor     eax, eax
call    sub_4A0E24

loc_4C7C70:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
retn

loc_4C7C76:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C7CFC
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA5E, 8
mov     ds:byte_77EA5F, 2
mov     word ptr ds:dword_77EA4E+2, 0FF42h
mov     word ptr ds:dword_77EA52, 0FFBFh
mov     word ptr ds:dword_77EA52+2, 296h
mov     word ptr ds:dword_77EA5A, 800h
xor     ah, ah
mov     byte ptr ds:dword_77EA5A+3, ah
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 2
jmp     short loc_4C7C70

loc_4C7CD4:
cmp     al, byte ptr ds:dword_77EA5A+2
jnz     short loc_4C7CFC
inc     byte ptr ds:dword_77EA5A+2
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     ds:word_77EA80, 7Fh
mov     eax, ecx
call    sub_4DE477

loc_4C7CFC:
pop     edx
pop     ecx
retn
sub_4C7C44 endp




sub_4C7CFF proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C7D05[edx*4]
pop     edx
retn
sub_4C7CFF endp




sub_4C7D0E proc near
push    ebx
push    edx
mov     edx, eax
mov     eax, offset byte_5F8364
cmp     byte ptr [edx+3], 0FFh
jnz     short loc_4C7D2C
call    sub_4C7D5E
mov     eax, edx
call    sub_4DE477
pop     edx
pop     ebx
retn

loc_4C7D2C:
cmp     byte ptr [edx+8], 0
jnz     short loc_4C7D38
or      byte ptr [edx], 2
inc     byte ptr [edx+8]

loc_4C7D38:
mov     bx, [eax+56h]
cmp     bx, 3ACh
jl      short loc_4C7D4A
cmp     bx, 0C54h
jle     short loc_4C7D54

loc_4C7D4A:
mov     dword ptr [edx+50h], 2404040h
pop     edx
pop     ebx
retn

loc_4C7D54:
mov     dword ptr [edx+50h], offset unk_808080
pop     edx
pop     ebx
retn
sub_4C7D0E endp




sub_4C7D5E proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
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
mov     eax, ds:off_538160
mov     [esp+40h+var_20], eax
xor     edx, edx
mov     [esp+40h+var_1C], edx
xor     ecx, ecx

loc_4C7D78:
mov     eax, [esp+40h+var_1C]
shl     eax, 3
cmp     ds:byte_53815C[eax], 0FFh
jz      short loc_4C7DB6
mov     dl, ds:byte_77E7D4
cmp     dl, ds:byte_53815C[eax]
jnz     short loc_4C7DB0
mov     dl, byte ptr ds:dword_77E7D5
cmp     dl, ds:byte_53815D[eax]
jnz     short loc_4C7DB0
mov     eax, ds:off_538160[eax]
mov     [esp+40h+var_20], eax
jmp     short loc_4C7DBE

loc_4C7DB0:
inc     [esp+40h+var_1C]
jmp     short loc_4C7D78

loc_4C7DB6:
test    ecx, ecx
jz      loc_4C7F98

loc_4C7DBE:
xor     eax, eax
mov     al, ds:byte_77EAC5
mov     [esp+40h+var_34], eax
xor     eax, eax
mov     al, ds:byte_77EAC4
mov     [esp+40h+var_3C], eax
xor     eax, eax
mov     al, ds:byte_77EAC3
mov     [esp+40h+var_38], eax
xor     eax, eax
mov     al, ds:byte_77EAC2
mov     [esp+40h+var_40], eax
xor     eax, eax
mov     al, ds:byte_77E802
mov     [esp+40h+var_24], eax
mov     eax, [esp+40h+var_38]
mov     [esp+40h+var_30], eax

loc_4C7DFC:
mov     eax, [esp+40h+var_30]
cmp     eax, [esp+40h+var_40]
jge     loc_4C7F98
mov     eax, [esp+40h+var_34]
mov     [esp+40h+var_2C], eax

loc_4C7E11:
mov     eax, [esp+40h+var_2C]
cmp     eax, [esp+40h+var_3C]
jge     loc_4C7F8F
sub     eax, [esp+40h+var_34]
add     eax, eax
add     eax, ds:dword_77E700
mov     ebp, [esp+40h+var_30]
sub     ebp, [esp+40h+var_38]
xor     ecx, ecx
mov     cx, ds:word_77EAAE
imul    ebp, ecx
add     ebp, ebp
movsx   ebp, word ptr [eax+ebp]
test    ebp, ebp
jle     loc_4C7F86
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
mov     eax, ds:dword_6E40B4[eax*4]
mov     eax, [eax]
mov     [esp+40h+var_28], eax
xor     esi, esi
mov     [esp+40h+var_1C], esi

loc_4C7E67:
mov     eax, [esp+40h+var_1C]
shl     eax, 4
add     eax, [esp+40h+var_20]
mov     eax, [eax+4]
cmp     eax, [esp+40h+var_28]
jnz     loc_4C7F6D
xor     edi, edi
jmp     short loc_4C7E8D

loc_4C7E83:
inc     edi
cmp     edi, 2
jge     loc_4C7F63

loc_4C7E8D:
call    sub_4DE227
mov     ecx, eax
test    eax, eax
jz      short loc_4C7E83
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 34h ; '4'
mov     ebx, [esp+40h+var_1C]
shl     ebx, 4
add     ebx, [esp+40h+var_20]
lea     esi, [ebx+edi]
xor     eax, eax
mov     al, [esi+0Eh]
sar     eax, 4
mov     [ecx+3], al
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dl, [esi+0Eh]
and     dl, 0Fh
mov     [ecx+0Ch], dl
mov     al, byte ptr [esp+40h+var_24]
mov     [ecx+0Dh], al
mov     esi, ebp
shl     esi, 2
sub     esi, ebp
mov     dx, word ptr ds:(dword_6E40AA+2)[esi*4]
mov     ax, [ebx+8]
add     edx, eax
mov     eax, [ecx+9]
sar     eax, 18h
mov     ax, ds:word_53817C[eax*4]
add     edx, eax
mov     [ecx+48h], dx
mov     dx, word ptr ds:(dword_6E40AE+2)[esi*4]
mov     ax, [ebx+0Ch]
add     edx, eax
mov     eax, [ecx+9]
sar     eax, 18h
mov     ax, ds:word_53817E[eax*4]
add     edx, eax
mov     [ecx+4Ch], dx
mov     dx, word ptr ds:dword_6E40AE[esi*4]
mov     ax, [ebx+0Ah]
add     edx, eax
mov     [ecx+4Ah], dx
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     [ecx+54h], ebp
mov     eax, ds:dword_6E40B4[esi*4]
mov     [ecx+3Ch], eax
mov     eax, [ebx]
call    sub_4A7AAC
mov     [ecx+40h], eax
jmp     loc_4C7E83

loc_4C7F63:
inc     [esp+40h+var_24]
inc     ds:byte_77E802

loc_4C7F6D:
mov     eax, [esp+40h+var_1C]
inc     eax
mov     [esp+40h+var_1C], eax
shl     eax, 4
add     eax, [esp+40h+var_20]
cmp     dword ptr [eax], 0
jnz     loc_4C7E67

loc_4C7F86:
inc     [esp+40h+var_2C]
jmp     loc_4C7E11

loc_4C7F8F:
inc     [esp+40h+var_30]
jmp     loc_4C7DFC

loc_4C7F98:
add     esp, 28h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C7D5E endp




sub_4C7FA2 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+3], 1
jnz     short loc_4C7FBF
mov     eax, edx
call    sub_4C8364
mov     eax, edx
call    sub_4DE477
pop     edx
pop     ecx
pop     ebx
retn

loc_4C7FBF:
xor     ecx, ecx
mov     cl, [edx+8]
mov     eax, edx
call    ds:funcs_4C7FC6[ecx*4]
cmp     byte ptr [edx+0Ch], 0
jnz     short loc_4C7FF3
mov     bx, word ptr ds:dword_5F83B8+2
cmp     bx, 3ACh
jl      short loc_4C7FE8
cmp     bx, 0C54h
jle     short loc_4C8018

loc_4C7FE8:
mov     dword ptr [edx+50h], 2404040h
pop     edx
pop     ecx
pop     ebx
retn

loc_4C7FF3:
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
movsx   ecx, ax
mov     eax, [edx+9]
sar     eax, 18h
shl     eax, 0Ah
sub     ecx, eax
mov     eax, ecx
call    abs_
cmp     eax, 3ACh
jl      short loc_4C7FE8

loc_4C8018:
mov     dword ptr [edx+50h], offset unk_808080
pop     edx
pop     ecx
pop     ebx
retn
sub_4C7FA2 endp

db 8Dh, 40h, 0
jpt_4C8069 dd offset loc_4C8070 ; jump table for switch statement
dd offset loc_4C8077
dd offset loc_4C807E
dd offset loc_4C8070
dd offset loc_4C8077
dd offset loc_4C807E



sub_4C803E proc near
push    ecx
push    edx
mov     edx, eax
xor     eax, eax
or      byte ptr [edx], 2
mov     byte ptr [edx+8], 7
mov     dword ptr [edx+10h], offset unk_538420
cmp     byte ptr [edx+3], 0
jnz     short loc_4C8097
mov     cl, byte ptr ds:dword_77E7D5
cmp     cl, 5           ; switch 6 cases
ja      short def_4C8069 ; jumptable 004C8069 default case
and     ecx, 0FFh
jmp     jpt_4C8069[ecx*4] ; switch jump

loc_4C8070:             ; jumptable 004C8069 cases 0,3
mov     eax, 66h ; 'f'
jmp     short def_4C8069 ; jumptable 004C8069 default case

loc_4C8077:             ; jumptable 004C8069 cases 1,4
mov     eax, 67h ; 'g'
jmp     short def_4C8069 ; jumptable 004C8069 default case

loc_4C807E:             ; jumptable 004C8069 cases 2,5
mov     eax, 68h ; 'h'

def_4C8069:             ; jumptable 004C8069 default case
call    sub_47E888
test    eax, eax
jz      short loc_4C8093
mov     byte ptr [edx+0Eh], 0
pop     edx
pop     ecx
retn

loc_4C8093:
mov     byte ptr [edx+0Eh], 0Ah

loc_4C8097:
pop     edx
pop     ecx
retn
sub_4C803E endp

jpt_4C811C dd offset loc_4C8123 ; jump table for switch statement
dd offset loc_4C812A
dd offset loc_4C8131
dd offset loc_4C8123
dd offset loc_4C812A
dd offset loc_4C8131



sub_4C80B2 proc near
push    ebx
push    ecx
push    edx
push    ebp
mov     edx, eax
mov     ecx, offset byte_5F8364
xor     ebx, ebx
cmp     byte ptr [eax+0Eh], 0
jnz     short loc_4C8104
cmp     ds:dword_77E778, 0
jnz     short loc_4C8104
cmp     ds:dword_77E758, 0
jnz     short loc_4C8104
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 1
jb      short loc_4C80E8
jbe     short loc_4C80F3
cmp     al, 2
jz      short loc_4C80FA
jmp     short loc_4C8104

loc_4C80E8:
test    al, al
jnz     short loc_4C8104
mov     eax, 616h
jmp     short loc_4C80FF

loc_4C80F3:
mov     eax, 617h
jmp     short loc_4C80FF

loc_4C80FA:
mov     eax, 618h

loc_4C80FF:
call    sub_47E8B8

loc_4C8104:
cmp     byte ptr [edx+3], 0
jnz     loc_4C81BC
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 5           ; switch 6 cases
ja      short def_4C811C ; jumptable 004C811C default case
and     eax, 0FFh
jmp     jpt_4C811C[eax*4] ; switch jump

loc_4C8123:             ; jumptable 004C811C cases 0,3
mov     ebx, 66h ; 'f'
jmp     short def_4C811C ; jumptable 004C811C default case

loc_4C812A:             ; jumptable 004C811C cases 1,4
mov     ebx, 67h ; 'g'
jmp     short def_4C811C ; jumptable 004C811C default case

loc_4C8131:             ; jumptable 004C811C cases 2,5
mov     ebx, 68h ; 'h'

def_4C811C:             ; jumptable 004C811C default case
mov     al, [edx+0Eh]
test    al, al
jnz     loc_4C81B0
cmp     ds:dword_77E778, 0
jnz     short loc_4C8153
cmp     ds:dword_77E758, 0
jz      short loc_4C815E

loc_4C8153:
mov     eax, ebx
call    sub_47E888
test    eax, eax
jz      short loc_4C817F

loc_4C815E:
mov     byte ptr [edx+8], 3
mov     byte ptr [edx+0Bh], 10h
add     edx, 48h ; 'H'
mov     eax, 105h
call    sub_4D8BC3
mov     eax, ebx

loc_4C8175:
call    sub_47E8B8
pop     ebp
pop     edx
pop     ecx
pop     ebx
retn

loc_4C817F:
cmp     edx, [ecx+184h]
jnz     loc_4C8202
mov     [ecx+184h], eax
mov     eax, 65h ; 'e'
call    sub_47E888
test    eax, eax
jnz     short loc_4C8202
mov     edx, 2
call    sub_4A0E24
mov     eax, 65h ; 'e'
jmp     short loc_4C8175

loc_4C81B0:
mov     ah, al
dec     ah
mov     [edx+0Eh], ah
pop     ebp
pop     edx
pop     ecx
pop     ebx
retn

loc_4C81BC:
mov     ebp, [ecx+184h]
cmp     edx, ebp
jnz     short loc_4C8202
mov     dword ptr [ecx+184h], 0
mov     ah, [ecx+0BDh]
test    ah, 40h
jnz     short loc_4C8202
mov     bl, ah
or      bl, 40h
mov     [ecx+0BDh], bl
mov     eax, 0Ah
call    sub_49E0D7
mov     eax, 5Fh ; '_'
call    sub_47E8B8
mov     byte ptr [ebp+8], 6
mov     byte ptr [ebp+9], 0

loc_4C8202:
pop     ebp
pop     edx
pop     ecx
pop     ebx
retn
sub_4C80B2 endp




; int __fastcall sub_4C8207(int, int)
sub_4C8207 proc near

var_C= dword ptr -0Ch

push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
lea     edx, [eax+18h]
mov     eax, edx
call    sub_4EF1AB
xor     eax, eax
mov     al, [ecx+0Bh]
mov     [esp+0Ch+var_C], eax ; int
fild    word ptr [esp+0Ch+var_C]
fmul    ds:flt_50A420
fstp    dword ptr [ecx+18h]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     ah, [ecx+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4C8268
mov     eax, 10h
call    sub_4D8E2B
inc     byte ptr [ecx+8]
and     byte ptr [ecx], 0FDh
mov     edx, [ecx+54h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [ecx+40h]
mov     ds:dword_6E40B4[eax*4], edx

loc_4C8268:
add     esp, 4
pop     edx
pop     ecx
retn
sub_4C8207 endp




sub_4C826E proc near
push    edx
mov     edx, eax
mov     eax, 5Fh ; '_'
call    sub_47E888
test    eax, eax
jz      short loc_4C8282
inc     byte ptr [edx+8]

loc_4C8282:
pop     edx
retn
sub_4C826E endp




sub_4C8284 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+54h]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, [edx+3Ch]
mov     ds:dword_6E40B4[eax*4], ecx
mov     byte ptr [edx+8], 2
pop     edx
pop     ecx
retn
sub_4C8284 endp




sub_4C82A3 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+9], 0
jnz     loc_4C8334
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA5E, 1Dh
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
add     eax, ecx
mov     cx, ds:word_5383E4[eax*2]
mov     word ptr ds:dword_77EA4E+2, cx
mov     cx, ds:word_5383E6[eax*2]
mov     word ptr ds:dword_77EA52, cx
mov     cx, ds:word_5383E8[eax*2]
mov     word ptr ds:dword_77EA52+2, cx
mov     cx, ds:word_5383EA[eax*2]
mov     word ptr ds:dword_77EA5A, cx
mov     al, ds:byte_5383EC[eax*2]
mov     ds:byte_77EA5F, al
xor     al, al
mov     byte ptr ds:dword_77EA5A+3, al
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
inc     byte ptr [edx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8334:
mov     bl, byte ptr ds:dword_77EA5A+2
cmp     bl, 2
jnz     short loc_4C8356
mov     bh, bl
inc     bh
mov     byte ptr ds:dword_77EA5A+2, bh
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     [edx+8], bl

loc_4C8356:
pop     edx
pop     ecx
pop     ebx
retn
sub_4C82A3 endp



; Attributes: thunk

sub_4C835A proc near
jmp     sub_4DE477
sub_4C835A endp




sub_4C835F proc near
mov     byte ptr [eax+8], 1
retn
sub_4C835F endp




sub_4C8364 proc near

var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi             ; int
push    edi             ; float
push    ebp             ; float
sub     esp, 2Ch
xor     edx, edx
mov     [esp+44h+var_2C], edx ; int
xor     ah, ah
mov     byte ptr [esp+44h+var_24], ah
mov     byte ptr [esp+44h+var_20], ah ; int
xor     ebx, ebx
xor     ecx, ecx

loc_4C8381:
mov     eax, ebx
shl     eax, 3
mov     dh, ds:byte_5383AC[eax]
cmp     dh, 0FFh
jz      short loc_4C83B6
cmp     dh, ds:byte_77E7D4
jnz     short loc_4C83B3
mov     dl, byte ptr ds:dword_77E7D5
cmp     dl, ds:byte_5383AD[eax]
jnz     short loc_4C83B3
mov     eax, ds:off_5383B0[eax]
mov     [esp+44h+var_2C], eax
jmp     short loc_4C83BE

loc_4C83B3:
inc     ebx
jmp     short loc_4C8381

loc_4C83B6:
test    ecx, ecx
jz      loc_4C8706

loc_4C83BE:
xor     eax, eax
mov     al, ds:byte_77EAC5
mov     [esp+44h+var_38], eax ; int
xor     eax, eax
mov     al, ds:byte_77EAC4
mov     [esp+44h+var_40], eax ; int
xor     eax, eax
mov     al, ds:byte_77EAC3
mov     [esp+44h+var_3C], eax ; int
xor     eax, eax
mov     al, ds:byte_77EAC2
mov     [esp+44h+var_44], eax ; int
mov     eax, 5Fh ; '_'
call    sub_47EA91
mov     eax, [esp+44h+var_3C]
mov     [esp+44h+var_34], eax ; int

loc_4C83FB:
mov     eax, [esp+44h+var_34]
cmp     eax, [esp+44h+var_44]
jge     loc_4C8706
mov     eax, [esp+44h+var_38]
mov     [esp+44h+var_30], eax ; float

loc_4C8410:
mov     eax, [esp+44h+var_30]
cmp     eax, [esp+44h+var_40]
jge     loc_4C86FD
sub     eax, [esp+44h+var_38]
add     eax, eax
mov     ebp, ds:dword_77E700
add     ebp, eax
mov     edx, [esp+44h+var_34]
sub     edx, [esp+44h+var_3C]
xor     eax, eax
mov     ax, ds:word_77EAAE
imul    eax, edx
movsx   ebp, word ptr [ebp+eax*2+0]
test    ebp, ebp
jle     loc_4C86F4
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
mov     eax, ds:dword_6E40B4[eax*4]
mov     eax, [eax]
mov     ds:dword_55D3C0, eax
cmp     byte ptr [esp+44h+var_24], 0
jnz     loc_4C85A9
xor     ebx, ebx
mov     eax, [esp+44h+var_2C]
mov     eax, [eax]
mov     edx, ds:dword_55D3C0
cmp     eax, edx
jz      short loc_4C848B
mov     eax, [esp+44h+var_2C]
cmp     edx, [eax+4]
jnz     loc_4C85A9

loc_4C848B:
mov     eax, ebx
shl     eax, 4
add     eax, [esp+44h+var_2C]
mov     eax, [eax]
cmp     eax, ds:dword_55D3C0
jnz     short loc_4C84A5
mov     byte ptr [esp+44h+var_1C], 1
jmp     short loc_4C84AB

loc_4C84A5:
xor     cl, cl
mov     byte ptr [esp+44h+var_1C], cl ; int

loc_4C84AB:
cmp     byte ptr [esp+44h+var_1C], 0
jz      short loc_4C84DB
mov     eax, ebx
shl     eax, 4
add     eax, [esp+44h+var_2C]
mov     edx, [eax]
mov     ds:dword_55D3C0, edx
mov     eax, [eax+4]
call    sub_4A7AAC
mov     ecx, eax
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
mov     ds:dword_6E40B4[eax*4], ecx

loc_4C84DB:
call    sub_4DE227
mov     ecx, eax
test    eax, eax
jz      loc_4C859D
mov     byte ptr [esp+44h+var_24], 1 ; int
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 35h ; '5'
test    ebx, ebx
jnz     short loc_4C8500
mov     byte ptr [eax+3], 0
jmp     short loc_4C8504

loc_4C8500:
mov     byte ptr [eax+3], 2

loc_4C8504:
mov     esi, ebx
shl     esi, 4
add     esi, [esp+44h+var_2C]
mov     al, [esi+0Fh]
mov     [ecx+0Dh], al
lea     edx, [ecx+0Dh]
mov     eax, ecx
call    sub_4DD0F8
mov     al, [esi+0Eh]
mov     [ecx+0Ch], al
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
mov     edi, ebp
shl     edi, 2
sub     edi, ebp
mov     ax, word ptr ds:(dword_6E40AA+2)[edi*4]
mov     [esp+44h+var_28], eax
mov     ax, [esi+8]
add     [esp+44h+var_28], eax
mov     eax, [esp+44h+var_28]
mov     [ecx+48h], ax
mov     ax, word ptr ds:(dword_6E40AE+2)[edi*4]
mov     [esp+44h+var_28], eax ; int
mov     ax, [esi+0Ch]
add     [esp+44h+var_28], eax
mov     eax, [esp+44h+var_28]
mov     [ecx+4Ch], ax
mov     ax, word ptr ds:dword_6E40AE[edi*4]
mov     [ecx+4Ah], ax
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     [ecx+54h], ebp
mov     eax, ds:dword_6E40B4[edi*4]
mov     [ecx+3Ch], eax
mov     eax, [esi]
call    sub_4A7AAC
mov     [ecx+40h], eax

loc_4C859D:
add     ebx, 2
cmp     ebx, 4
jl      loc_4C84AB

loc_4C85A9:
cmp     byte ptr [esp+44h+var_20], 0
jnz     loc_4C86F4
mov     ebx, 1
mov     eax, [esp+44h+var_2C]
add     eax, 10h
mov     edx, [eax]
mov     ecx, ds:dword_55D3C0
cmp     edx, ecx
jz      short loc_4C85D5
cmp     ecx, [eax+4]
jnz     loc_4C86F4

loc_4C85D5:
mov     eax, ebx
shl     eax, 4
add     eax, [esp+44h+var_2C]
mov     eax, [eax]
cmp     eax, ds:dword_55D3C0
jnz     short loc_4C85EF
mov     byte ptr [esp+44h+var_1C], 1
jmp     short loc_4C85F5

loc_4C85EF:
xor     cl, cl
mov     byte ptr [esp+44h+var_1C], cl ; int

loc_4C85F5:
cmp     byte ptr [esp+44h+var_1C], 0
jz      short loc_4C8625
mov     eax, ebx
shl     eax, 4
add     eax, [esp+44h+var_2C]
mov     edx, [eax]
mov     ds:dword_55D3C0, edx
mov     eax, [eax+4]
call    sub_4A7AAC
mov     edx, eax
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
mov     ds:dword_6E40B4[eax*4], edx

loc_4C8625:
call    sub_4DE227
mov     ecx, eax
test    eax, eax
jz      loc_4C86E8
mov     byte ptr [esp+44h+var_20], 1 ; int
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 35h ; '5'
cmp     ebx, 1
jnz     short loc_4C864B
mov     byte ptr [eax+3], 0
jmp     short loc_4C864F

loc_4C864B:
mov     byte ptr [eax+3], 2

loc_4C864F:
mov     esi, ebx
shl     esi, 4
add     esi, [esp+44h+var_2C]
mov     al, [esi+0Fh]
mov     [ecx+0Dh], al
lea     edx, [ecx+0Dh]
mov     eax, ecx
call    sub_4DD0F8
mov     al, [esi+0Eh]
mov     [ecx+0Ch], al
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
mov     edi, ebp
shl     edi, 2
sub     edi, ebp
mov     ax, word ptr ds:(dword_6E40AA+2)[edi*4]
mov     [esp+44h+var_28], eax
mov     ax, [esi+8]
add     [esp+44h+var_28], eax
mov     eax, [esp+44h+var_28]
mov     [ecx+48h], ax
mov     ax, word ptr ds:(dword_6E40AE+2)[edi*4]
mov     [esp+44h+var_28], eax ; int
mov     ax, [esi+0Ch]
add     [esp+44h+var_28], eax
mov     eax, [esp+44h+var_28]
mov     [ecx+4Ch], ax
mov     ax, word ptr ds:dword_6E40AE[edi*4]
mov     [ecx+4Ah], ax
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     [ecx+54h], ebp
mov     eax, ds:dword_6E40B4[edi*4]
mov     [ecx+3Ch], eax
mov     eax, [esi]
call    sub_4A7AAC
mov     [ecx+40h], eax

loc_4C86E8:
add     ebx, 2
cmp     ebx, 4
jl      loc_4C85F5

loc_4C86F4:
inc     [esp+44h+var_30]
jmp     loc_4C8410

loc_4C86FD:
inc     [esp+44h+var_34]
jmp     loc_4C83FB

loc_4C8706:
add     esp, 2Ch
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8364 endp




sub_4C8710 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4C8719[ecx*4]
mov     eax, edx
call    sub_4C8EF1
cmp     byte ptr [edx+0Fh], 0
jz      short loc_4C8734
mov     eax, edx
call    sub_4C8FCB

loc_4C8734:
pop     edx
pop     ecx
retn
sub_4C8710 endp




sub_4C8737 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4C873D[edx*4]
pop     edx
retn
sub_4C8737 endp




sub_4C8746 proc near
push    ecx
push    edx
mov     ecx, eax
mov     dword ptr [eax+54h], 0
mov     eax, 5Ah ; 'Z'
call    sub_47E888
test    eax, eax
jz      short loc_4C878E
mov     eax, offset unk_538478
call    sub_42C443
mov     edx, 10060200h
call    sub_4A7AE1
mov     eax, offset unk_5384A0
call    sub_42C443
mov     edx, 10060300h
call    sub_4A7AE1
mov     byte ptr [ecx+8], 2
pop     edx
pop     ecx
retn

loc_4C878E:
mov     eax, ecx
call    sub_4C8F4A
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Fh], 1
mov     eax, ecx
call    sub_4C8F7C
pop     edx
pop     ecx
retn
sub_4C8746 endp




sub_4C87AB proc near
push    ecx
push    edx
mov     ecx, eax
mov     dword ptr [eax+54h], 0
mov     eax, 5Bh ; '['
call    sub_47E888
test    eax, eax
jz      short loc_4C87F3
mov     eax, offset unk_538480
call    sub_42C443
mov     edx, 10060200h
call    sub_4A7AE1
mov     eax, offset unk_5384A8
call    sub_42C443
mov     edx, 10060300h
call    sub_4A7AE1
mov     byte ptr [ecx+8], 2
pop     edx
pop     ecx
retn

loc_4C87F3:
mov     eax, ecx
call    sub_4C8F4A
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Fh], 1
mov     eax, ecx
call    sub_4C8F7C
pop     edx
pop     ecx
retn
sub_4C87AB endp




sub_4C8810 proc near
push    ecx
push    edx
mov     ecx, eax
mov     dword ptr [eax+54h], 0
mov     eax, 5Ch ; '\'
call    sub_47E888
test    eax, eax
jz      short loc_4C8858
mov     eax, offset unk_538488
call    sub_42C443
mov     edx, 10060200h
call    sub_4A7AE1
mov     eax, offset unk_5384B0
call    sub_42C443
mov     edx, 10060300h
call    sub_4A7AE1
mov     byte ptr [ecx+8], 2
pop     edx
pop     ecx
retn

loc_4C8858:
mov     eax, ecx
call    sub_4C8F4A
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Fh], 1
mov     eax, ecx
call    sub_4C8F7C
pop     edx
pop     ecx
retn
sub_4C8810 endp




sub_4C8875 proc near
push    edx
mov     edx, eax
mov     dword ptr [eax+54h], 0
call    sub_4C8F4A
mov     byte ptr [edx+0Ch], 0
mov     byte ptr [edx+0Dh], 0
mov     byte ptr [edx+0Fh], 1
mov     eax, edx
call    sub_4C8F7C
pop     edx
retn
sub_4C8875 endp




sub_4C8899 proc near
push    ecx
push    edx
mov     ecx, eax
mov     dword ptr [eax+54h], 0
mov     eax, 56h ; 'V'
call    sub_47E888
test    eax, eax
jz      short loc_4C88E1
mov     eax, offset unk_538498
call    sub_42C443
mov     edx, 10060100h
call    sub_4A7AE1
mov     eax, offset unk_5384C0
call    sub_42C443
mov     edx, 10060102h
call    sub_4A7AE1
mov     byte ptr [ecx+8], 2
pop     edx
pop     ecx
retn

loc_4C88E1:
mov     byte ptr [ecx+2], 2Fh ; '/'
mov     eax, ecx
call    sub_4C8F4A
mov     byte ptr [ecx+2], 36h ; '6'
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Fh], 1
mov     eax, ecx
call    sub_4C8F7C
pop     edx
pop     ecx
retn
sub_4C8899 endp




sub_4C8906 proc near
push    edx
mov     edx, eax
mov     eax, [eax+54h]
cmp     byte ptr [eax+3], 4
jnz     short loc_4C8916
mov     byte ptr [edx+2], 2Fh ; '/'

loc_4C8916:
mov     eax, edx
call    sub_4C8F4A
mov     byte ptr [edx+2], 36h ; '6'
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+0Dh], 1

loc_4C8929:
mov     byte ptr [edx+0Fh], 0
pop     edx
retn
sub_4C8906 endp




sub_4C892F proc near
push    edx
mov     edx, eax
mov     dword ptr [eax+54h], 0
call    sub_4C8F4A
mov     byte ptr [edx+0Ch], 2
cmp     byte ptr [edx+3], 6
jnz     short loc_4C894C
xor     eax, eax
jmp     short loc_4C8951

loc_4C894C:
mov     eax, 1

loc_4C8951:
mov     [edx+0Dh], al
jmp     short loc_4C8929
sub_4C892F endp




sub_4C8956 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4C895C[edx*4]
pop     edx
retn
sub_4C8956 endp

align 4
jpt_4C898C dd offset loc_4C8993 ; jump table for switch statement
dd offset loc_4C89A9
dd offset loc_4C89D7
dd offset loc_4C8A01



sub_4C8978 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4C898C      ; jumptable 004C898C default case
xor     edx, edx
mov     dl, al
jmp     jpt_4C898C[edx*4] ; switch jump

loc_4C8993:             ; jumptable 004C898C case 0
test    byte ptr ds:dword_77E8F8, 1
jz      def_4C898C      ; jumptable 004C898C default case
inc     al
mov     [ecx+9], al
pop     edx
pop     ecx
pop     ebx
retn

loc_4C89A9:             ; jumptable 004C898C case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C898C      ; jumptable 004C898C default case
mov     edx, 0Bh
xor     eax, eax
call    sub_4A0E24
and     byte ptr ds:dword_77E8F8, 0FEh
or      ds:byte_5F8421, 40h

loc_4C89D0:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C89D7:             ; jumptable 004C898C case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C898C      ; jumptable 004C898C default case
mov     eax, 5Ah ; 'Z'
call    sub_47E888
test    eax, eax
jnz     short loc_4C89D0
and     ds:byte_5F8421, 0BFh
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8A01:             ; jumptable 004C898C case 3
cmp     byte ptr [ecx+0Eh], 20h ; ' '
jnz     short loc_4C8A15
xor     ebx, ebx
xor     edx, edx
mov     eax, 105h
call    sub_4D89E4

loc_4C8A15:
mov     dl, [ecx+0Eh]
dec     dl
mov     [ecx+0Eh], dl
jnz     short def_4C898C ; jumptable 004C898C default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, offset unk_538478
call    sub_42C443
mov     edx, 10060200h
call    sub_4A7AE1
mov     eax, offset unk_5384A0
call    sub_42C443
mov     edx, 10060300h
call    sub_4A7AE1
and     ds:byte_5F8421, 0BFh
mov     byte ptr [ecx+8], 2

def_4C898C:             ; jumptable 004C898C default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8978 endp

jpt_4C8A88 dd offset loc_4C8A8F ; jump table for switch statement
dd offset loc_4C8AA5
dd offset loc_4C8AD3
dd offset loc_4C8AFD



sub_4C8A74 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4C8A88      ; jumptable 004C8A88 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4C8A88[edx*4] ; switch jump

loc_4C8A8F:             ; jumptable 004C8A88 case 0
test    byte ptr ds:dword_77E8F8, 2
jz      def_4C8A88      ; jumptable 004C8A88 default case
inc     al
mov     [ecx+9], al
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8AA5:             ; jumptable 004C8A88 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C8A88      ; jumptable 004C8A88 default case
mov     edx, 0Fh
xor     eax, eax
call    sub_4A0E24
and     byte ptr ds:dword_77E8F8, 0FDh
or      ds:byte_5F8421, 40h

loc_4C8ACC:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8AD3:             ; jumptable 004C8A88 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C8A88      ; jumptable 004C8A88 default case
mov     eax, 5Bh ; '['
call    sub_47E888
test    eax, eax
jnz     short loc_4C8ACC
and     ds:byte_5F8421, 0BFh
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8AFD:             ; jumptable 004C8A88 case 3
cmp     byte ptr [ecx+0Eh], 20h ; ' '
jnz     short loc_4C8B11
xor     ebx, ebx
xor     edx, edx
mov     eax, 105h
call    sub_4D89E4

loc_4C8B11:
mov     dl, [ecx+0Eh]
dec     dl
mov     [ecx+0Eh], dl
jnz     short def_4C8A88 ; jumptable 004C8A88 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, offset unk_538480
call    sub_42C443
mov     edx, 10060200h
call    sub_4A7AE1
mov     eax, offset unk_5384A8
call    sub_42C443
mov     edx, 10060300h
call    sub_4A7AE1
and     ds:byte_5F8421, 0BFh
mov     byte ptr [ecx+8], 2

def_4C8A88:             ; jumptable 004C8A88 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8A74 endp

jpt_4C8B84 dd offset loc_4C8B8B ; jump table for switch statement
dd offset loc_4C8BA1
dd offset loc_4C8BCF
dd offset loc_4C8BF9



sub_4C8B70 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4C8B84      ; jumptable 004C8B84 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4C8B84[edx*4] ; switch jump

loc_4C8B8B:             ; jumptable 004C8B84 case 0
test    byte ptr ds:dword_77E8F8, 4
jz      def_4C8B84      ; jumptable 004C8B84 default case
inc     al
mov     [ecx+9], al
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8BA1:             ; jumptable 004C8B84 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C8B84      ; jumptable 004C8B84 default case
mov     edx, 11h
xor     eax, eax
call    sub_4A0E24
and     byte ptr ds:dword_77E8F8, 0FBh
or      ds:byte_5F8421, 40h

loc_4C8BC8:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8BCF:             ; jumptable 004C8B84 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C8B84      ; jumptable 004C8B84 default case
mov     eax, 5Ch ; '\'
call    sub_47E888
test    eax, eax
jnz     short loc_4C8BC8
and     ds:byte_5F8421, 0BFh
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8BF9:             ; jumptable 004C8B84 case 3
cmp     byte ptr [ecx+0Eh], 20h ; ' '
jnz     short loc_4C8C0D
xor     ebx, ebx
xor     edx, edx
mov     eax, 105h
call    sub_4D89E4

loc_4C8C0D:
mov     dl, [ecx+0Eh]
dec     dl
mov     [ecx+0Eh], dl
jnz     short def_4C8B84 ; jumptable 004C8B84 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, offset unk_538488
call    sub_42C443
mov     edx, 10060200h
call    sub_4A7AE1
mov     eax, offset unk_5384B0
call    sub_42C443
mov     edx, 10060300h
call    sub_4A7AE1
and     ds:byte_5F8421, 0BFh
mov     byte ptr [ecx+8], 2

def_4C8B84:             ; jumptable 004C8B84 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8B70 endp

jpt_4C8C80 dd offset loc_4C8C87 ; jump table for switch statement
dd offset loc_4C8C9E
dd offset loc_4C8CFE
dd offset loc_4C8D3D



sub_4C8C6C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4C8C80      ; jumptable 004C8C80 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4C8C80[edx*4] ; switch jump

loc_4C8C87:             ; jumptable 004C8C80 case 0
test    byte ptr ds:dword_77E8F8, 8
jz      def_4C8C80      ; jumptable 004C8C80 default case
inc     al
mov     [ecx+9], al
jmp     def_4C8C80      ; jumptable 004C8C80 default case

loc_4C8C9E:             ; jumptable 004C8C80 case 1
cmp     byte ptr [ecx+0Eh], 20h ; ' '
jnz     short loc_4C8CB2
xor     ebx, ebx
xor     edx, edx
mov     eax, 105h
call    sub_4D89E4

loc_4C8CB2:
mov     al, [ecx+0Eh]
dec     al
mov     [ecx+0Eh], al
jnz     def_4C8C80      ; jumptable 004C8C80 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, offset unk_538490
call    sub_42C443
mov     edx, 10060200h
call    sub_4A7AE1
mov     eax, offset unk_5384B8
call    sub_42C443
mov     edx, 10060300h

loc_4C8CF1:
call    sub_4A7AE1
inc     byte ptr [ecx+9]
jmp     def_4C8C80      ; jumptable 004C8C80 default case

loc_4C8CFE:             ; jumptable 004C8C80 case 2
mov     eax, ds:dword_5F837A
sar     eax, 10h
sub     eax, 500h
test    eax, eax
jge     short loc_4C8D11
neg     eax

loc_4C8D11:
cmp     eax, 200h
jle     short def_4C8C80 ; jumptable 004C8C80 default case
mov     eax, offset unk_538490
call    sub_42C443
mov     edx, 63200h
call    sub_4A7AE1
mov     eax, offset unk_5384B8
call    sub_42C443
mov     edx, 63300h
jmp     short loc_4C8CF1

loc_4C8D3D:             ; jumptable 004C8C80 case 3
cmp     byte ptr [ecx+0Eh], 0
jnz     short loc_4C8D51
xor     ebx, ebx
xor     edx, edx
mov     eax, 106h
call    sub_4D89E4

loc_4C8D51:
mov     dl, [ecx+0Eh]
inc     dl
mov     [ecx+0Eh], dl
cmp     dl, 20h ; ' '
jnz     short def_4C8C80 ; jumptable 004C8C80 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 186h
call    sub_4D89E4
mov     byte ptr [ecx+9], 0

def_4C8C80:             ; jumptable 004C8C80 default case
cmp     byte ptr [ecx+0Eh], 0
jnz     short loc_4C8D7B
and     byte ptr [ecx], 0FDh
jmp     short loc_4C8D7E

loc_4C8D7B:
or      byte ptr [ecx], 2

loc_4C8D7E:
and     byte ptr ds:dword_77E8F8, 0F7h
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8C6C endp

align 4
jpt_4C8DB1 dd offset loc_4C8DB8 ; jump table for switch statement
dd offset loc_4C8DE8
dd offset loc_4C8E16
dd offset loc_4C8E2E



sub_4C8D9C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4C8DB1      ; jumptable 004C8DB1 default case
and     eax, 0FFh
jmp     jpt_4C8DB1[eax*4] ; switch jump

loc_4C8DB8:             ; jumptable 004C8DB1 case 0
cmp     ds:word_77E900, 1
jnz     short loc_4C8DD3
xor     ebx, ebx
mov     ds:word_77E900, bx
mov     byte ptr [ecx+9], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8DD3:
test    byte ptr ds:dword_77E8F8, 10h
jz      def_4C8DB1      ; jumptable 004C8DB1 default case
mov     byte ptr [ecx+9], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8DE8:             ; jumptable 004C8DB1 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C8DB1      ; jumptable 004C8DB1 default case
mov     edx, 13h
xor     eax, eax
call    sub_4A0E24
and     byte ptr ds:dword_77E8F8, 0EFh
or      ds:byte_5F8421, 40h
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8E16:             ; jumptable 004C8DB1 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C8DB1 ; jumptable 004C8DB1 default case
and     ds:byte_5F8421, 0BFh
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8E2E:             ; jumptable 004C8DB1 case 3
cmp     byte ptr [ecx+0Eh], 20h ; ' '
jnz     short loc_4C8E42
xor     ebx, ebx
xor     edx, edx
mov     eax, 105h
call    sub_4D89E4

loc_4C8E42:
mov     dl, [ecx+0Eh]
dec     dl
mov     [ecx+0Eh], dl
jnz     short def_4C8DB1 ; jumptable 004C8DB1 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, offset unk_538498
call    sub_42C443
mov     edx, 10060100h
call    sub_4A7AE1
mov     eax, offset unk_5384C0
call    sub_42C443
mov     edx, 10060102h
call    sub_4A7AE1
mov     byte ptr [ecx+8], 2

def_4C8DB1:             ; jumptable 004C8DB1 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8D9C endp




sub_4C8E8A proc near
push    ebx
push    edx
mov     edx, [eax+54h]
mov     bl, [edx+8]
mov     [eax+8], bl
mov     bl, [edx+0Eh]
mov     [eax+0Eh], bl
mov     edx, [edx+50h]
mov     [eax+50h], edx
cmp     byte ptr [eax+0Eh], 0
jnz     short loc_4C8EAD
and     byte ptr [eax], 0FDh
pop     edx
pop     ebx
retn

loc_4C8EAD:
or      byte ptr [eax], 2
pop     edx
pop     ebx
retn
sub_4C8E8A endp




sub_4C8EB3 proc near
push    edx
mov     dl, [eax+9]
cmp     dl, 1
jb      short loc_4C8EC0
jbe     short loc_4C8EDD
pop     edx
retn

loc_4C8EC0:
test    dl, dl
jnz     short loc_4C8EEA
cmp     ds:byte_560BE5, 21h ; '!'
jnz     short loc_4C8EEA
cmp     ds:dword_560BEC, 0
jnz     short loc_4C8EEA
inc     dl
mov     [eax+9], dl
pop     edx
retn

loc_4C8EDD:
mov     dl, [eax+0Eh]
dec     dl
mov     [eax+0Eh], dl
jnz     short loc_4C8EEA
inc     byte ptr [eax+9]

loc_4C8EEA:
pop     edx
retn
sub_4C8EB3 endp



; Attributes: thunk

sub_4C8EEC proc near
jmp     sub_4DE477
sub_4C8EEC endp




; int __thiscall sub_4C8EF1(int)
sub_4C8EF1 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx             ; int
push    ecx             ; int
push    edx             ; float
push    edi             ; int
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+18h]
mov     eax, ebx
call    sub_4EF184
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 7
mov     [esp+20h+var_20], eax ; int
mov     edx, 1000h
mov     [esp+20h+var_1C], edx ; int
mov     [esp+20h+var_18], edx ; int
xor     edi, edi
mov     [esp+20h+var_14], edi ; int
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_4C8F36
xor     eax, eax
jmp     short loc_4C8F3B

loc_4C8F36:
mov     eax, 800h

loc_4C8F3B:
mov     edx, ebx
call    sub_4EF50D
add     esp, 10h
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8EF1 endp




sub_4C8F4A proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
mov     byte ptr [ecx+0Eh], 20h ; ' '
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     edx
pop     ecx
retn
sub_4C8F4A endp




sub_4C8F7C proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
call    sub_4DE227
mov     ecx, eax
test    eax, eax
jz      short loc_4C8FC7
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 36h ; '6'
mov     byte ptr [eax+3], 5
cmp     byte ptr [edx+3], 4
jz      short loc_4C8FA6
mov     bx, [edx+48h]
add     bh, 3
jmp     short loc_4C8FAD

loc_4C8FA6:
mov     bx, [edx+48h]
add     bh, 2

loc_4C8FAD:
mov     [eax+48h], bx
mov     ax, [edx+4Ah]
mov     [ecx+4Ah], ax
mov     ax, [edx+4Ch]
mov     [ecx+4Ch], ax
mov     [ecx+54h], edx
mov     [edx+54h], ecx

loc_4C8FC7:
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8F7C endp




sub_4C8FCB proc near

var_74= dword ptr -74h
var_70= dword ptr -70h
var_6C= dword ptr -6Ch
var_64= dword ptr -64h
var_5C= dword ptr -5Ch
var_54= dword ptr -54h
var_4C= dword ptr -4Ch
var_44= dword ptr -44h
var_3C= dword ptr -3Ch
var_34= dword ptr -34h
var_2C= dword ptr -2Ch
var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    edi
push    ebp
sub     esp, 90h
mov     ecx, eax
cmp     byte ptr [eax+3], 4
jz      short loc_4C8FE5
mov     eax, 300h
jmp     short loc_4C8FEA

loc_4C8FE5:
mov     eax, 200h

loc_4C8FEA:
mov     [esp+0A4h+var_24], ax
xor     edx, edx
mov     [esp+0A4h+var_22], dx
mov     [esp+0A4h+var_20], dx
mov     eax, esp
call    sub_4EF1AB
mov     edx, esp
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_4C9017
xor     eax, eax
jmp     short loc_4C901C

loc_4C9017:
mov     eax, 800h

loc_4C901C:
call    sub_4EF50D
lea     ebx, [esp+0A4h+var_74]
lea     edx, [esp+0A4h+var_24]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [ecx+46h]
sar     eax, 10h
add     [esp+0A4h+var_74], eax
mov     eax, [esp+0A4h+var_74]
mov     [esp+0A4h+var_24], ax
mov     eax, [ecx+48h]
sar     eax, 10h
add     [esp+0A4h+var_70], eax
mov     eax, [esp+0A4h+var_70]
mov     [esp+0A4h+var_22], ax
mov     eax, [ecx+4Ah]
sar     eax, 10h
add     [esp+0A4h+var_6C], eax
mov     eax, [esp+0A4h+var_6C]
mov     [esp+0A4h+var_20], ax
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     eax, (offset dword_5F8376+2)
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A4h+var_54]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A4h+var_34]
call    sub_4F0003
lea     eax, [esp+0A4h+var_24]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A4h+var_64]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A4h+var_2C]
call    sub_4F0003
lea     eax, [ecx+48h]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A4h+var_44]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A4h+var_1C]
call    sub_4F0003
mov     ebx, [esp+0A4h+var_44]
mov     edi, [esp+0A4h+var_64]
sub     ebx, edi
jz      short loc_4C916F
mov     edx, [esp+0A4h+var_3C]
mov     ebp, [esp+0A4h+var_5C]
sub     edx, ebp
mov     eax, [esp+0A4h+var_54]
sub     eax, edi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     eax, ebp
cmp     eax, [esp+0A4h+var_4C]
jge     short loc_4C916F
fld     [esp+0A4h+var_34]
fcomp   [esp+0A4h+var_2C]
fnstsw  ax
sahf
jnb     short loc_4C9149
fld     [esp+0A4h+var_34]
fcomp   [esp+0A4h+var_1C]
fnstsw  ax
sahf
ja      short loc_4C9166

loc_4C9149:
fld     [esp+0A4h+var_34]
fcomp   [esp+0A4h+var_2C]
fnstsw  ax
sahf
jbe     short loc_4C916F
fld     [esp+0A4h+var_34]
fcomp   [esp+0A4h+var_1C]
fnstsw  ax
sahf
jnb     short loc_4C916F

loc_4C9166:
mov     dword ptr [ecx+50h], 2404040h
jmp     short loc_4C9176

loc_4C916F:
mov     dword ptr [ecx+50h], offset unk_808080

loc_4C9176:
add     esp, 90h
pop     ebp
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8FCB endp




sub_4C9182 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4C918B[ecx*4]
mov     eax, edx
call    sub_4C95CA
pop     edx
pop     ecx
retn
sub_4C9182 endp




sub_4C919C proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4C91A2[edx*4]
pop     edx
retn
sub_4C919C endp




sub_4C91AB proc near
push    edx
mov     edx, eax
mov     dword ptr [eax+54h], 0
call    sub_4C965B
mov     byte ptr [edx+0Ch], 0
mov     byte ptr [edx+0Dh], 0
mov     eax, edx
call    sub_4C967F
pop     edx
retn
sub_4C91AB endp




sub_4C91CB proc near
push    edx
mov     edx, eax
call    sub_4C965B
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+0Dh], 1
pop     edx
retn
sub_4C91CB endp




sub_4C91DD proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, 57h ; 'W'
call    sub_47E888
test    eax, eax
jnz     short loc_4C920B
mov     eax, 58h ; 'X'
call    sub_47E888
test    eax, eax
jnz     short loc_4C920B
mov     eax, 6Ch ; 'l'
call    sub_47E888
test    eax, eax
jz      short loc_4C9212

loc_4C920B:
mov     byte ptr [ecx+8], 2
pop     edx
pop     ecx
retn

loc_4C9212:
mov     [ecx+54h], eax
or      byte ptr [ecx], 6
mov     byte ptr [ecx+2], 16h
mov     byte ptr [ecx+3], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 37h ; '7'
mov     byte ptr [ecx+3], 2
mov     dword ptr [ecx+50h], 2808080h
mov     eax, ecx
call    sub_4C96BB
xor     dl, dl
jmp     short loc_4C924B

loc_4C9244:
inc     dl
cmp     dl, 0Ch
jge     short loc_4C9267

loc_4C924B:
call    sub_4DE13B
test    eax, eax
jz      short loc_4C9244
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 18h
mov     byte ptr [eax+3], 1
mov     dh, [ecx+1]
mov     [eax+0Ch], dh
jmp     short loc_4C9244

loc_4C9267:
mov     dword ptr [ecx+58h], 0

loc_4C926E:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     edx
pop     ecx
retn
sub_4C91DD endp




sub_4C9281 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     byte ptr [ecx+2], 16h
mov     byte ptr [ecx+3], 1
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 37h ; '7'
mov     byte ptr [ecx+3], 3
mov     dword ptr [ecx+50h], 2C808080h
jmp     short loc_4C9267
sub_4C9281 endp




sub_4C92AF proc near
push    edx
mov     edx, eax
call    sub_4C965B
mov     byte ptr [edx+0Ch], 2
cmp     byte ptr [edx+3], 4
jnz     short loc_4C92C8
xor     eax, eax
mov     [edx+0Dh], al
pop     edx
retn

loc_4C92C8:
mov     eax, 1
mov     [edx+0Dh], al
pop     edx
retn
sub_4C92AF endp




sub_4C92D2 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4C92D8[edx*4]
pop     edx
retn
sub_4C92D2 endp

align 2
jpt_4C932E dd offset loc_4C9335 ; jump table for switch statement
dd offset loc_4C9355
dd offset loc_4C936D
dd offset loc_4C9389
dd offset loc_4C9391
dd offset loc_4C93A2
dd offset loc_4C9422
dd offset loc_4C9487
dd offset loc_4C94E4
dd offset loc_4C94F1
dd offset loc_4C9518
dd offset loc_4C9563



sub_4C9312 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+9]
cmp     al, 0Bh         ; switch 12 cases
ja      def_4C932E      ; jumptable 004C932E default case
and     eax, 0FFh
jmp     jpt_4C932E[eax*4] ; switch jump

loc_4C9335:             ; jumptable 004C932E case 0
mov     eax, 57h ; 'W'
call    sub_47E888
test    eax, eax
jz      short loc_4C934C

loc_4C9343:
mov     byte ptr [ecx+9], 0FFh
jmp     def_4C932E      ; jumptable 004C932E default case

loc_4C934C:
inc     byte ptr [ecx+9]

def_4C932E:             ; jumptable 004C932E default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C9355:             ; jumptable 004C932E case 1
mov     ah, byte ptr ds:dword_77E8F8
test    ah, 20h
jz      short def_4C932E ; jumptable 004C932E default case
mov     dl, ah
and     dl, 0DFh
mov     byte ptr ds:dword_77E8F8, dl
jmp     short loc_4C934C

loc_4C936D:             ; jumptable 004C932E case 2
mov     eax, esi
call    sub_4B55D5
test    eax, eax
jz      short def_4C932E ; jumptable 004C932E default case
mov     byte ptr ds:dword_5F836C, 3
xor     bh, bh
mov     byte ptr ds:dword_5F836C+1, bh
jmp     short loc_4C934C

loc_4C9389:             ; jumptable 004C932E case 3
inc     byte ptr ds:dword_5F836C+1
jmp     short loc_4C934C

loc_4C9391:             ; jumptable 004C932E case 4
or      ds:byte_5F8421, 20h
xor     eax, eax
mov     ds:word_57096A, ax
jmp     short loc_4C934C

loc_4C93A2:             ; jumptable 004C932E case 5
cmp     byte ptr [ecx+0Eh], 20h ; ' '
jnz     short loc_4C93B6
xor     ebx, ebx
xor     edx, edx
mov     eax, 105h
call    sub_4D89E4

loc_4C93B6:
mov     bl, [ecx+0Eh]
dec     bl
mov     [ecx+0Eh], bl
jnz     short def_4C932E ; jumptable 004C932E default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, offset unk_538504
call    sub_42C443
mov     edx, 10060400h
call    sub_4A7AE1
mov     eax, offset unk_53850C
call    sub_42C443
mov     edx, 10060500h
call    sub_4A7AE1
mov     byte ptr [ecx+0Fh], 0
mov     bx, [esi+56h]
cmp     bx, 800h
jge     short loc_4C940E
mov     byte ptr [ecx+9], 6
jmp     def_4C932E      ; jumptable 004C932E default case

loc_4C940E:
jle     short loc_4C9419
mov     byte ptr [ecx+9], 7
jmp     def_4C932E      ; jumptable 004C932E default case

loc_4C9419:
mov     byte ptr [ecx+9], 8
jmp     def_4C932E      ; jumptable 004C932E default case

loc_4C9422:             ; jumptable 004C932E case 6
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
cmp     ax, 800h
jle     short loc_4C9476
xor     esi, esi
mov     ds:word_57096A, si
or      ds:byte_5F8421, 10h
mov     edi, (offset dword_5F889A+2)
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, offset dword_5F888C
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, di
jmp     short loc_4C9419

loc_4C9476:
mov     ax, ds:word_5F848E

loc_4C947C:
mov     ds:word_57096A, ax
jmp     def_4C932E      ; jumptable 004C932E default case

loc_4C9487:             ; jumptable 004C932E case 7
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
cmp     ax, 800h
jge     short loc_4C94DC
xor     edi, edi
mov     ds:word_57096A, di
or      ds:byte_5F8421, 10h
mov     edi, (offset dword_5F889A+2)
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, offset dword_5F888C
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, ax
jmp     loc_4C9419

loc_4C94DC:
mov     ax, ds:word_5F848C
jmp     short loc_4C947C

loc_4C94E4:             ; jumptable 004C932E case 8
mov     eax, 10h
call    sub_4D9040
inc     byte ptr [ecx+9]

loc_4C94F1:             ; jumptable 004C932E case 9
mov     ax, [esi+124h]
mov     ds:word_57096A, ax
cmp     word ptr [esi+18h], 300h
jle     def_4C932E      ; jumptable 004C932E default case
xor     esi, esi
mov     ds:word_57096A, si
jmp     loc_4C934C

loc_4C9518:             ; jumptable 004C932E case 10
xor     edx, edx
mov     ds:word_57096A, dx
mov     dl, [ecx+0Fh]
inc     dl
mov     [ecx+0Fh], dl
cmp     dl, 0Fh
jnz     def_4C932E      ; jumptable 004C932E default case
mov     byte ptr [ecx+0Eh], 20h ; ' '
mov     eax, offset unk_538504
call    sub_42C443
mov     edx, 60400h
call    sub_4A7AE1
mov     eax, offset unk_53850C
call    sub_42C443
mov     edx, 60500h
call    sub_4A7AE1
jmp     loc_4C934C

loc_4C9563:             ; jumptable 004C932E case 11
cmp     ds:byte_77EAB8, 0
jnz     def_4C932E      ; jumptable 004C932E default case
mov     eax, 57h ; 'W'
call    sub_47E8B8
jmp     loc_4C9343
sub_4C9312 endp




sub_4C957F proc near
push    edx
mov     edx, [eax+54h]
mov     dl, [edx+8]
mov     [eax+8], dl
mov     edx, [eax+54h]
mov     dl, [edx+0Eh]
mov     [eax+0Eh], dl
test    dl, dl
jnz     short loc_4C959B
and     byte ptr [eax], 0FDh
pop     edx
retn

loc_4C959B:
or      byte ptr [eax], 2
pop     edx
retn
sub_4C957F endp




sub_4C95A0 proc near
push    ecx
push    edx
mov     edx, [eax+58h]
add     edx, 8
mov     [eax+58h], edx
mov     ecx, edx
and     ecx, 0FFFh
mov     [eax+58h], ecx
pop     edx
pop     ecx
retn
sub_4C95A0 endp




sub_4C95B9 proc near
push    edx
mov     edx, [eax+54h]
mov     edx, [edx+58h]
mov     [eax+58h], edx
pop     edx
sub_4C95B9 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_102]


; Attributes: thunk

sub_4C95C5 proc near
jmp     sub_4DE477
sub_4C95C5 endp




; int __fastcall sub_4C95CA(int, int)
sub_4C95CA proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    edi             ; float
push    ebp             ; int
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+18h]
mov     eax, ebx
call    sub_4EF184
mov     ah, [ecx+3]
cmp     ah, 2
jz      short loc_4C95EB
cmp     ah, 3
jnz     short loc_4C9614

loc_4C95EB:
mov     ebp, 600h
mov     [esp+24h+var_1C], ebp
mov     [esp+24h+var_20], ebp
mov     [esp+24h+var_24], ebp
xor     ebx, ebx
mov     [esp+24h+var_18], ebx
lea     ebx, [ecx+18h]
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, [ecx+58h]
mov     edx, ebx
jmp     short loc_4C964D

loc_4C9614:
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 7
mov     [esp+24h+var_24], eax ; int
mov     edx, 1000h
mov     [esp+24h+var_20], edx ; int
mov     [esp+24h+var_1C], edx ; int
xor     edi, edi
mov     [esp+24h+var_18], edi ; int
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     edx, ebx
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_4C9648
xor     eax, eax
jmp     short loc_4C964D

loc_4C9648:
mov     eax, 800h

loc_4C964D:
call    sub_4EF50D
add     esp, 10h
pop     ebp
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C95CA endp




sub_4C965B proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
mov     byte ptr [ecx+0Eh], 20h ; ' '
jmp     loc_4C926E
sub_4C965B endp




sub_4C967F proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE227
test    eax, eax
jz      short loc_4C96B8
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 37h ; '7'
mov     byte ptr [eax+3], 1
mov     bx, [edx+48h]
add     bh, 4
mov     [eax+48h], bx
mov     bx, [edx+4Ah]
mov     [eax+4Ah], bx
mov     bx, [edx+4Ch]
mov     [eax+4Ch], bx
mov     [eax+54h], edx
mov     [edx+54h], eax

loc_4C96B8:
pop     edx
pop     ebx
retn
sub_4C967F endp




sub_4C96BB proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE227
test    eax, eax
jz      short loc_4C96F1
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 37h ; '7'
mov     byte ptr [eax+3], 3
mov     bx, [edx+48h]
mov     [eax+48h], bx
mov     bx, [edx+4Ah]
mov     [eax+4Ah], bx
mov     bx, [edx+4Ch]
mov     [eax+4Ch], bx
mov     [eax+54h], edx
mov     [edx+54h], eax

loc_4C96F1:
pop     edx
pop     ebx
retn
sub_4C96BB endp




sub_4C96F4 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C96FA[edx*4]
pop     edx
retn
sub_4C96F4 endp




sub_4C9703 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx             ; int
push    ecx             ; float
push    edx             ; int
sub     esp, 10h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     ebx, [ecx+18h]
mov     eax, ebx
call    sub_4EF184
mov     edx, 200h
mov     [esp+1Ch+var_14], edx ; int
mov     [esp+1Ch+var_18], edx ; int
mov     [esp+1Ch+var_1C], edx ; int
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 5
mov     edx, ebx
call    sub_4EF50D
mov     dword ptr [ecx+50h], offset unk_808080
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+5Ch], 0
inc     byte ptr [ecx+8]
add     esp, 10h
pop     edx
pop     ecx
pop     ebx
sub_4C9703 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_103]



sub_4C976E proc near
push    ecx
push    edx
mov     edx, eax        ; int
xor     ecx, ecx
mov     cl, [eax+8]     ; int
call    ds:funcs_4C9777[ecx*4]
mov     dword ptr [edx+58h], 0
pop     edx
pop     ecx
retn
sub_4C976E endp




; int __fastcall sub_4C9788(int, int)
sub_4C9788 proc near
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF184
mov     eax, [ecx+0Ch]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     dword ptr [ecx+50h], offset unk_808080
mov     dword ptr [ecx+10h], offset unk_538524
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+5Ch], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4C9788 endp




sub_4C97D7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 7
call    sub_432697
cmp     esi, ds:dword_5F84E8
jnz     short loc_4C97FB
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx

loc_4C97FB:
push    80h
push    0
push    4000000h
lea     eax, [esi+58h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
lea     eax, [esi+48h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C97D7 endp




sub_4C982A proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_10= word ptr -10h
var_E= word ptr -0Eh
var_C= word ptr -0Ch

push    ecx
push    edx
sub     esp, 18h
mov     ecx, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_4C983E
cmp     al, 1
jz      short loc_4C9855
jmp     short loc_4C988D

loc_4C983E:
or      byte ptr [ecx], 6
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
inc     byte ptr [ecx+8]

loc_4C9855:
xor     edx, edx
mov     [esp+20h+var_10], dx
mov     [esp+20h+var_E], dx
mov     [esp+20h+var_C], dx
add     ecx, 18h        ; int
mov     edx, ecx
lea     eax, [esp+20h+var_10]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+20h+var_20], edx
mov     [esp+20h+var_1C], edx
mov     [esp+20h+var_18], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689

loc_4C988D:
add     esp, 18h
pop     edx
pop     ecx
retn
sub_4C982A endp

unk_4C9893 db    0
dword_4C9894 dd 3 dup(20h), 53000000h, 57565251h, 8910EC83h
dd 0BEE789C1h
dd offset unk_4C9893
movsd
movsd
movsd
movsd
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C98BD[edx*4]
mov     edx, [ecx+9]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4C98EE
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 4
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_4C98EB
mov     dl, [ecx+0Ch]
add     [ecx+0Dh], dl

loc_4C98EB:
inc     byte ptr [ecx+0Eh]

loc_4C98EE:
movsx   dx, byte ptr [ecx+0Dh]
add     [ecx+4Ah], dx
add     ecx, 18h
mov     eax, ecx
call    sub_4EF184
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     edx, ecx
mov     eax, 800h
call    sub_4EF50D
add     esp, 10h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn



sub_4C991F proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     byte ptr [ecx+2], 29h ; ')'
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 3Bh ; ';'
mov     dword ptr [ecx+50h], offset unk_808080
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 4
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
retn
sub_4C991F endp




sub_4C9961 proc near
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+9]
mov     edx, offset dword_560BDC
call    ds:funcs_4C996D[ecx*4]
pop     edx
pop     ecx
retn
sub_4C9961 endp




sub_4C9977 proc near
mov     dl, [eax+0Fh]
cmp     dl, 66h ; 'f'
jnz     short loc_4C998B
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Ch], 0FFh
inc     byte ptr [eax+0Fh]
retn

loc_4C998B:
cmp     dl, 76h ; 'v'
jnz     short loc_4C999F
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
inc     byte ptr [eax+9]
mov     byte ptr [eax+0Ah], 0

loc_4C999F:
inc     byte ptr [eax+0Fh]
retn
sub_4C9977 endp




sub_4C99A3 proc near
push    ebx
mov     bl, [eax+0Ah]
cmp     bl, 1
jb      short loc_4C99B0
jbe     short loc_4C99D4
pop     ebx
retn

loc_4C99B0:
test    bl, bl
jnz     short loc_4C99E4
cmp     byte ptr [edx+9], 0Fh
jnz     short loc_4C99E4
cmp     dword ptr [edx+10h], 258h
jnz     short loc_4C99E4
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Ch], 0FFh
mov     byte ptr [eax+0Dh], 0
inc     byte ptr [eax+0Ah]
pop     ebx
retn

loc_4C99D4:
cmp     dword ptr [edx+10h], 268h
jnz     short loc_4C99E4
mov     byte ptr [eax+0Ch], 0
inc     byte ptr [eax+0Ah]

loc_4C99E4:
pop     ebx
retn
sub_4C99A3 endp


loc_4C99E6:
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C99EC[edx*4]
pop     edx
retn



sub_4C99F5 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_20= word ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 30h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset byte_538540
add     eax, 10h
mov     [ecx+78h], eax
xor     edx, edx
mov     word ptr [esp+44h+var_24], dx
mov     word ptr [esp+44h+var_24+2], dx
mov     [esp+44h+var_20], 0F000h
lea     eax, [ecx+8Ch]
mov     ebx, esp
lea     edx, [esp+44h+var_24]
call    sub_4EF1FB
lea     edx, [esp+44h+var_34]
mov     eax, esp
call    sub_4EF886
mov     eax, [esp+44h+var_34]
mov     word ptr [esp+44h+var_24], ax
mov     eax, [esp+44h+var_30]
mov     word ptr [esp+44h+var_24+2], ax
mov     eax, [esp+44h+var_2C]
mov     [esp+44h+var_20], ax
lea     edi, [ecx+0DCh]
lea     esi, [esp+44h+var_24]
movsd
movsd
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
mov     ax, word ptr ds:dword_538542[eax*4]
mov     [ecx+6Eh], ax
cwde
mov     edx, [esp+1Eh]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ecx+44h], dx
mov     edx, [esp+44h+var_24]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ecx+46h], dx
mov     edx, [esp+44h+var_24+2]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ecx+48h], ax
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_538542[eax*4]
sar     eax, 10h
mov     edx, [esp+1Eh]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ecx+4Ch], dx
mov     edx, [esp+44h+var_24]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ecx+4Eh], dx
mov     edx, [esp+44h+var_24+2]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ecx+50h], ax
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
mov     al, ds:byte_538540[eax*4]
mov     [ecx+2], al
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset byte_538540
lea     edx, [eax+1]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 0
lea     eax, [ecx+88h]
mov     dx, [ecx+14h]
mov     [eax+34h], dx
mov     dx, [ecx+16h]
mov     [eax+36h], dx
mov     dx, [ecx+18h]
mov     [eax+38h], dx
mov     edx, [ecx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+1Ch], edx
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     edx, [ecx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+24h], edx
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+0E4h]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [esp+44h+var_1C]
lea     esi, [ecx+0E4h]
movsd
movsd
lea     edi, [ecx+0ECh]
lea     esi, [esp+44h+var_1C]
movsd
movsd
lea     edi, [esp+44h+var_1C]
lea     esi, [ecx+0ECh]
movsd
movsd
lea     edi, [ecx+0F4h]
lea     esi, [esp+44h+var_1C]
movsd
movsd
lea     edi, [esp+44h+var_1C]
lea     esi, [ecx+0F4h]
movsd
movsd
lea     edi, [ecx+0FCh]
lea     esi, [esp+44h+var_1C]
movsd
movsd
mov     dword ptr [eax+3Ch], offset unk_808080
inc     byte ptr [ecx+8]
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
mov     al, ds:byte_538560[eax*4]
mov     [ecx+0Bh], al
mov     eax, ecx
call    sub_4C9F90
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, ds:byte_53855C[eax*4]
mov     eax, ecx
call    ds:funcs_4C9C73[edx*4]
add     esp, 30h

loc_4C9C7D:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4C99F5 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_25]



sub_4C9C83 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= byte ptr -28h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ebp, eax
xor     edx, edx
mov     dl, [eax+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, ds:byte_538562[eax*4]
mov     eax, ebp
call    sub_4EE66E
test    eax, eax
jz      short loc_4C9D25
cmp     eax, 7FFFh
jnz     short loc_4C9CF6
xor     edx, edx
mov     dl, [ebp+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, [ebp+0D4h]
test    ds:dword_538564[eax], edx
jz      short loc_4C9D25
xor     edx, edx
mov     dl, ds:byte_53855C[eax]
mov     eax, ebp
call    ds:funcs_4C9CE6[edx*4]
mov     eax, ebp
call    sub_4DE371
jmp     short loc_4C9D25

loc_4C9CF6:
xor     edx, edx
mov     dl, [ebp+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, ds:byte_53855C[eax*4]
mov     eax, ebp
call    ds:funcs_4C9CE6[edx*4]
mov     eax, ebp
call    sub_4DE371
jmp     loc_4C9F45

loc_4C9D25:
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+0FCh]
lea     esi, [ebp+0F4h]
movsd
movsd
lea     edi, [ebp+0F4h]
lea     esi, [ebp+0ECh]
movsd
movsd
lea     edi, [ebp+0ECh]
lea     esi, [ebp+0E4h]
movsd
movsd
lea     edi, [ebp+0E4h]
lea     esi, [ebp+14h]
movsd
movsd
mov     al, [ebp+0Bh]
mov     ah, al
dec     ah
mov     [ebp+0Bh], ah
test    al, al
jbe     loc_4C9CF6
mov     eax, [ebp+0C8h]
movsx   edx, word ptr [eax]
mov     eax, [ebp+12h]
sar     eax, 10h
sub     edx, eax
mov     [esp+38h+var_38], edx
mov     eax, [ebp+0C8h]
mov     edx, [eax]
sar     edx, 10h
mov     eax, [ebp+14h]
sar     eax, 10h
sub     edx, eax
mov     [esp+38h+var_34], edx
mov     eax, [ebp+0C8h]
mov     edx, [eax+2]
sar     edx, 10h
mov     eax, [ebp+16h]
sar     eax, 10h
sub     edx, eax
mov     [esp+38h+var_30], edx
mov     eax, [esp+38h+var_38]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4C9DED
mov     eax, [esp+38h+var_34]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4C9DED
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
jbe     short loc_4C9DFB

loc_4C9DED:
sar     [esp+38h+var_38], 2
sar     [esp+38h+var_34], 2
sar     [esp+38h+var_30], 2

loc_4C9DFB:
lea     edx, [esp+38h+var_28]
mov     eax, esp
call    sub_4EF932
xor     edx, edx
mov     dl, [ebp+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
mov     ecx, ds:dword_53854C[eax*4]
mov     ebx, ds:dword_538548[eax*4]
lea     edx, [ebp+0DCh]
lea     eax, [esp+38h+var_28]
lea     esi, [esp+38h+var_20]
call    sub_4DFFB5
lea     edi, [ebp+0DCh]
lea     esi, [esp+38h+var_20]
movsd
movsd
mov     edx, [ebp+6Ch]
sar     edx, 10h
mov     eax, [esp+16h]
sar     eax, 10h
imul    eax, edx
sar     eax, 4
mov     [ebp+44h], ax
mov     eax, [esp+38h+var_20]
sar     eax, 10h
imul    eax, edx
sar     eax, 4
mov     [ebp+46h], ax
mov     eax, [esp+38h+var_20+2]
sar     eax, 10h
imul    eax, edx
sar     eax, 4
mov     [ebp+48h], ax
xor     edx, edx
mov     dl, [ebp+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, ds:dword_538542[eax]
sar     edx, 10h
mov     ecx, [ebp+6Ch]
sar     ecx, 10h
add     edx, ecx
xor     ecx, ecx
mov     cx, ds:word_538546[eax]
cmp     edx, ecx
jl      short loc_4C9EB5
mov     [ebp+6Eh], cx
jmp     short loc_4C9EB9

loc_4C9EB5:
mov     [ebp+6Eh], dx

loc_4C9EB9:
mov     eax, ebp
call    sub_4C9FF2
mov     eax, [ebp+42h]
sar     eax, 10h
shl     eax, 8
add     [ebp+1Ch], eax
mov     eax, [ebp+44h]
sar     eax, 10h
shl     eax, 8
add     [ebp+20h], eax
mov     eax, [ebp+46h]
sar     eax, 10h
shl     eax, 8
add     [ebp+24h], eax
lea     eax, [ebp+88h]
mov     edx, [ebp+1Ch]
sar     edx, 10h
mov     [ebp+14h], dx
mov     [eax+34h], dx
mov     edx, [ebp+20h]
sar     edx, 10h
mov     [ebp+16h], dx
mov     [eax+36h], dx
mov     edx, [ebp+24h]
sar     edx, 10h
mov     [ebp+18h], dx
mov     [eax+38h], dx
mov     eax, ebp
call    sub_4C9F90
mov     eax, ebp
call    sub_4CA0AA
xor     edx, edx
mov     dl, [ebp+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, ds:byte_53855C[eax*4]
mov     eax, ebp
call    ds:funcs_4C9F3E[edx*4]

loc_4C9F45:
add     esp, 20h
pop     ebp
jmp     loc_4C9C7D
sub_4C9C83 endp




sub_4C9F4E proc near
push    edx
lea     edx, [eax+14h]
mov     eax, 144h

loc_4C9F57:
call    sub_4D8BC3
pop     edx
sub_4C9F4E endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_26]



sub_4C9F5E proc near
push    edx
mov     byte ptr [eax+0Ch], 0Ah
lea     edx, [eax+14h]
mov     eax, 141h
jmp     short loc_4C9F57
sub_4C9F5E endp




sub_4C9F6D proc near
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ch], 0
jz      short loc_4C9F8D
cmp     byte ptr [ecx+0Ch], 1
jnz     short loc_4C9F8A
lea     edx, [ecx+14h]
mov     eax, 142h
call    sub_4D8BC3

loc_4C9F8A:
dec     byte ptr [ecx+0Ch]

loc_4C9F8D:
pop     edx
pop     ecx
retn
sub_4C9F6D endp




sub_4C9F90 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
push    80h
push    0
xor     edx, edx
mov     dl, [eax+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, ds:byte_538561[eax*4]
or      edx, 40A0000h
push    edx
lea     edx, [esi+0D4h]
push    edx
xor     edx, edx
mov     dl, [esi+1]
push    edx
xor     edx, edx
mov     dl, ds:byte_53855F[eax*4]
lea     eax, [esi+14h]
mov     ecx, 8000h
xor     ebx, ebx
call    sub_4E01FC
mov     dword ptr [esi+0D4h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C9F90 endp




sub_4C9FF2 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax
mov     ebx, [eax+42h]
sar     ebx, 10h
mov     esi, [eax+46h]
sar     esi, 10h
mov     eax, ebx
imul    eax, ebx
mov     edx, esi
imul    edx, esi
add     eax, edx
call    sub_4EF075
mov     edi, [ecx+44h]
sar     edi, 10h
mov     edx, eax
mov     eax, edi
call    sub_4EF04B
mov     [esp+2Ch+var_1C], ax
mov     edx, esi
mov     eax, ebx
call    sub_4EF04B
add     ah, 8
mov     [esp+2Ch+var_1A], ax
xor     edx, edx
mov     [esp+2Ch+var_18], dx
mov     edx, 200h
mov     [esp+2Ch+var_24], edx
mov     [esp+2Ch+var_28], edx
mov     [esp+2Ch+var_2C], edx
add     ecx, 8Ch        ; int
mov     edx, ecx
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 18h
jmp     loc_4C9C7D
sub_4C9FF2 endp




sub_4CA077 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4CA0A7
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     bx, [edx+14h]
mov     [eax+48h], bx
mov     bx, [edx+16h]
mov     [eax+4Ah], bx
mov     dx, [edx+18h]
mov     [eax+4Ch], dx

loc_4CA0A7:
pop     edx
pop     ebx
retn
sub_4CA077 endp




sub_4CA0AA proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    eax
xor     edx, edx

loc_4CA0B2:
xor     ebx, ebx
mov     bl, ds:byte_53868C[edx*2]
movzx   edi, ds:byte_53868D[edx*2]
call    sub_4EE133
mov     dword ptr [eax+4], 2E808080h
mov     ecx, edx
shl     ecx, 3
add     ecx, [esp+18h+var_18]
mov     esi, [ecx+0E4h]
mov     [eax+8], esi
mov     ecx, [ecx+0E8h]
mov     [eax+10h], ecx
mov     ecx, edi
shl     ecx, 8
mov     esi, ecx
or      esi, 3D480000h
or      esi, ebx
mov     [eax+0Ch], esi
mov     edi, ecx
or      edi, 2E0000h
lea     esi, [ebx+1Fh]
or      edi, esi
mov     [eax+14h], edi
add     ecx, 1F00h
mov     edi, ecx
or      edi, ebx
mov     [eax+1Ch], edi
or      ecx, esi
mov     [eax+24h], ecx
mov     dword ptr [eax+18h], 14h
inc     edx
cmp     edx, 4
jl      short loc_4CA0B2
add     esp, 4
jmp     loc_4C9C7D
sub_4CA0AA endp




sub_4CA132 proc near
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
lea     edi, [eax+5Ch]
lea     esi, [eax+54h]
movsd
movsd
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4CA154[edx*4]
pop     edi
pop     esi
pop     edx
retn
sub_4CA132 endp




sub_4CA15F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ah, [eax]
or      ah, 22h
mov     [esi], ah
mov     word ptr [esi+9Ah], 0
mov     dl, [esi+0Fh]
test    dl, 1
jnz     short loc_4CA1B3
mov     byte ptr [esi+96h], 40h ; '@'
mov     byte ptr [esi+97h], 80h
test    byte ptr [esi+0Fh], 10h
jnz     short loc_4CA19D
mov     dword ptr [esi+8Ch], 2C808080h
jmp     short loc_4CA1A7

loc_4CA19D:
mov     dword ptr [esi+8Ch], 2C6060C0h

loc_4CA1A7:
mov     dword ptr [esi+88h], 3D08000Eh
jmp     short loc_4CA1F4

loc_4CA1B3:
test    dl, 8
jnz     short loc_4CA1CA
mov     al, ds:byte_5386A0
mov     [esi+96h], al
mov     al, ds:byte_5386A1
jmp     short loc_4CA1DA

loc_4CA1CA:
mov     al, ds:byte_5386AC
mov     [esi+96h], al
mov     al, ds:byte_5386AD

loc_4CA1DA:
mov     [esi+97h], al
mov     dword ptr [esi+8Ch], 2C808080h
mov     dword ptr [esi+88h], 3D48000Eh

loc_4CA1F4:
mov     ax, [esi+14h]
mov     [esi+90h], ax
mov     ax, [esi+16h]
mov     [esi+92h], ax
mov     ax, [esi+18h]
mov     [esi+94h], ax
test    byte ptr [esi+0Fh], 2
jnz     short loc_4CA236
mov     word ptr [esi+98h], 20h ; ' '
test    byte ptr [esi+0Fh], 10h
jnz     short loc_4CA230
mov     byte ptr [esi+0Eh], 4
jmp     short loc_4CA243

loc_4CA230:
mov     byte ptr [esi+0Eh], 20h ; ' '
jmp     short loc_4CA243

loc_4CA236:
mov     word ptr [esi+98h], 10h
mov     byte ptr [esi+0Eh], 8

loc_4CA243:
test    byte ptr [esi+0Fh], 20h
jz      short loc_4CA24F
mov     byte ptr [esi+0Bh], 4Bh ; 'K'
jmp     short loc_4CA253

loc_4CA24F:
mov     byte ptr [esi+0Bh], 0F0h

loc_4CA253:
mov     dword ptr [esi+10h], 0
mov     dword ptr [esi+78h], 0
mov     dword ptr [esi+0CCh], 0
push    80h
push    0
mov     eax, [esi+0Bh]
sar     eax, 18h
or      eax, 8000000h
push    eax
lea     eax, [esi+0CCh]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
xor     edx, edx
mov     dx, [esi+98h]
lea     eax, [esi+14h]
mov     ecx, 0A000h
xor     ebx, ebx
call    sub_4E01FC
mov     eax, esi
call    sub_42CE47
test    eax, eax
jz      short loc_4CA2B7
mov     byte ptr [esi+8], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4CA2B7:
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CA15F endp




sub_4CA2BF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ah, [eax+0Bh]
dec     ah
mov     [esi+0Bh], ah
test    byte ptr [esi+0Fh], 1
jnz     short loc_4CA2F4
mov     dx, [esi+9Ah]
add     edx, 8
mov     [esi+9Ah], dx
mov     ebx, edx
xor     bh, dh
and     bl, 3Fh
mov     [esi+9Ah], bx
jmp     short loc_4CA35E

loc_4CA2F4:
xor     edx, edx
mov     dl, ah
mov     eax, 0F0h
sub     eax, edx
mov     edx, eax
mov     ecx, 6
sar     edx, 1Fh
idiv    ecx
lea     eax, [edx+edx]
test    byte ptr [esi+0Fh], 8
jnz     short loc_4CA328
mov     dl, ds:byte_5386A0[eax]
mov     [esi+96h], dl
mov     al, ds:byte_5386A1[eax]
jmp     short loc_4CA33A

loc_4CA328:
mov     dl, ds:byte_5386AC[eax]
mov     [esi+96h], dl
mov     al, ds:byte_5386AD[eax]

loc_4CA33A:
mov     [esi+97h], al
mov     dword ptr [esi+8Ch], 2C808080h
lea     eax, [esi+14h]
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
call    sub_4ED95E

loc_4CA35E:
cmp     byte ptr [esi+0Bh], 0
jz      short loc_4CA3D5
cmp     word ptr [esi+16h], 0
jge     short loc_4CA3D5
mov     ax, [esi+4Ch]
add     [esi+44h], ax
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     ax, [esi+50h]
add     [esi+48h], ax
mov     eax, [esi+42h]
sar     eax, 10h
shl     eax, 8
add     [esi+1Ch], eax
mov     eax, [esi+44h]
sar     eax, 10h
shl     eax, 8
add     [esi+20h], eax
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 8
add     [esi+24h], eax
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     ax, [esi+14h]
mov     [esi+90h], ax
mov     ax, [esi+16h]
mov     [esi+92h], ax
mov     ax, [esi+18h]
mov     [esi+94h], ax
jmp     short loc_4CA3DF

loc_4CA3D5:
mov     byte ptr [esi], 0
mov     eax, esi
call    sub_4DE371

loc_4CA3DF:
test    byte ptr [esi+0CFh], 2
jz      short loc_4CA3FA
mov     dword ptr [esi+0CCh], 0
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4CA3FA:
push    80h
push    0
mov     eax, [esi+0Bh]
sar     eax, 18h
or      eax, 8000000h
push    eax
lea     eax, [esi+0CCh]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
xor     edx, edx
mov     dx, [esi+98h]
lea     eax, [esi+14h]
mov     ecx, 0A000h
xor     ebx, ebx
call    sub_4E01FC
mov     dword ptr [esi+0CCh], 0
mov     eax, esi
call    sub_42CE47
test    eax, eax
jz      short loc_4CA44A
inc     byte ptr [esi+8]

loc_4CA44A:
test    byte ptr [esi+0Fh], 4
jnz     short loc_4CA45A
mov     edx, 28h ; '('
call    sub_4EE6C2

loc_4CA45A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CA2BF endp




sub_4CA45F proc near
push    ecx
push    edx
mov     ecx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4CA486
test    byte ptr [ecx+0Fh], 1
jz      short loc_4CA47D
mov     edx, eax
mov     eax, ecx
call    sub_4CA493
jmp     short loc_4CA486

loc_4CA47D:
mov     edx, eax
mov     eax, ecx
call    sub_4CA4AB

loc_4CA486:
mov     byte ptr [ecx], 0
mov     eax, ecx
call    sub_4DE371
pop     edx
pop     ecx
retn
sub_4CA45F endp




sub_4CA493 proc near
push    esi
push    edi
mov     byte ptr [edx], 7
mov     byte ptr [edx+2], 80h
mov     byte ptr [edx+3], 42h ; 'B'
lea     edi, [edx+48h]
lea     esi, [eax+14h]
movsd
movsd
pop     edi
pop     esi
retn
sub_4CA493 endp




sub_4CA4AB proc near
push    ebx
mov     byte ptr [edx], 3
mov     byte ptr [edx+2], 83h
mov     byte ptr [edx+3], 0
mov     bx, [eax+14h]
mov     [edx+1Ch], bx
mov     word ptr [edx+1Eh], 0FFFFh
mov     ax, [eax+18h]
mov     [edx+20h], ax
pop     ebx
retn
sub_4CA4AB endp




sub_4CA4CF proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4CA4D5[edx*4]
pop     edx
retn
sub_4CA4CF endp




sub_4CA4DE proc near
push    edx
push    esi
push    edi
or      byte ptr [eax], 2
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 18h
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     dword ptr [eax+0DCh], 0
mov     dword ptr [eax+88h], 3D48002Eh
mov     dword ptr [eax+8Ch], 2E40E040h
mov     byte ptr [eax+96h], 60h ; '`'
mov     byte ptr [eax+97h], 20h ; ' '
mov     word ptr [eax+98h], 8
mov     edx, [eax+1Ch]
sar     edx, 10h
mov     [eax+14h], dx
mov     [eax+90h], dx
mov     edx, [eax+20h]
sar     edx, 10h
mov     [eax+16h], dx
mov     [eax+92h], dx
mov     edx, [eax+24h]
sar     edx, 10h
mov     [eax+18h], dx
mov     [eax+94h], dx
lea     edi, [eax+34h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+2Ch]
lea     esi, [eax+14h]
movsd
movsd
mov     dword ptr [eax+9Ch], 0
lea     edx, [eax+14h]
mov     eax, 0F0h
call    sub_4D8BC3
pop     edi
pop     esi
pop     edx
retn
sub_4CA4DE endp




sub_4CA595 proc near
push    edx
push    esi
push    edi
sub     esp, 8
mov     edx, eax
inc     dword ptr [eax+0DCh]
mov     si, [eax+14h]
mov     [eax+90h], si
mov     si, [eax+16h]
mov     [eax+92h], si
mov     si, [eax+18h]
mov     [eax+94h], si
cmp     byte ptr [eax+0Bh], 0
ja      short loc_4CA5F3
mov     byte ptr [edx+0Ch], 1
inc     byte ptr [edx+8]
mov     eax, edx
mov     esi, esp
call    sub_4CA955
lea     edi, [edx+0A4h]
mov     esi, esp
movsd
movsd
add     edx, 14h
mov     eax, 0F1h
call    sub_4D8BC3
jmp     short loc_4CA5FA

loc_4CA5F3:
mov     eax, edx
call    sub_4CAA65

loc_4CA5FA:
add     esp, 8
pop     edi
pop     esi
pop     edx
retn
sub_4CA595 endp




sub_4CA601 proc near

var_36= dword ptr -36h
var_32= dword ptr -32h
var_2C= byte ptr -2Ch
var_24= byte ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
call    sub_42CE47
mov     edx, ebp
add     edx, 14h
mov     [esp+34h+var_1C], edx
test    eax, eax
jz      short loc_4CA654
mov     edx, [ebp+0Ah]
sar     edx, 18h
mov     edx, ds:dword_5386D0[edx*4]
call    sub_4EE6C2
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+0Bh], 18h
mov     dword ptr [ebp+0DCh], 0
mov     edx, [esp+34h+var_1C]

loc_4CA645:
mov     eax, 0F2h
call    sub_4D8BC3
jmp     loc_4CA8C5

loc_4CA654:
test    byte ptr [ebp+9Fh], 2
jz      short loc_4CA670
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+0Bh], 18h
mov     dword ptr [ebp+0DCh], 0
jmp     short loc_4CA645

loc_4CA670:
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
cmp     byte ptr [ebp+0Ch], 0
jl      loc_4CA735
mov     ax, [ebp+14h]
mov     [ebp+90h], ax
mov     ax, [ebp+16h]
mov     [ebp+92h], ax
mov     ax, [ebp+18h]
mov     [ebp+94h], ax
lea     edi, [ebp+0E4h]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [esp+34h+var_24]
lea     esi, [ebp+0E4h]
movsd
movsd
lea     edi, [ebp+0ECh]
lea     esi, [esp+34h+var_24]
movsd
movsd
lea     edi, [esp+34h+var_24]
lea     esi, [ebp+0ECh]
movsd
movsd
lea     edi, [ebp+0F4h]
lea     esi, [esp+34h+var_24]
movsd
movsd
lea     edi, [esp+34h+var_24]
lea     esi, [ebp+0F4h]
movsd
movsd
lea     edi, [ebp+0FCh]
lea     esi, [esp+34h+var_24]
movsd
movsd
lea     edi, [esp+34h+var_24]
lea     esi, [ebp+0FCh]
movsd
movsd
lea     edi, [ebp+104h]
lea     esi, [esp+34h+var_24]
movsd
movsd
lea     edi, [esp+34h+var_24]
lea     esi, [ebp+104h]
movsd
movsd
lea     edi, [ebp+10Ch]
lea     esi, [esp+34h+var_24]
movsd
movsd
jmp     loc_4CA8C5

loc_4CA735:
mov     dh, [ebp+0Bh]
dec     dh
mov     [ebp+0Bh], dh
jnz     short loc_4CA74B
mov     eax, ebp
call    sub_4DE371
jmp     loc_4CA87A

loc_4CA74B:
mov     eax, ebp
lea     esi, [esp+34h+var_2C]
call    sub_4CA955
lea     edx, [ebp+0A4h]
mov     ecx, 0FFFB10Bh
mov     ebx, 32h ; '2'
lea     eax, [esp+34h+var_2C]
mov     esi, esp
call    sub_4DFFB5
lea     edi, [ebp+0A4h]
mov     esi, esp
movsd
movsd
mov     edx, [esp+34h+var_36]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [ebp+44h], ax
mov     edx, [esp+34h+var_36+2]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [ebp+46h], ax
mov     edx, [esp+34h+var_32]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [ebp+48h], ax
mov     eax, [ebp+42h]
sar     eax, 10h
shl     eax, 8
add     [ebp+1Ch], eax
mov     eax, [ebp+46h]
sar     eax, 10h
shl     eax, 8
add     [ebp+24h], eax
mov     eax, [ebp+44h]
sar     eax, 10h
shl     eax, 8
add     [ebp+20h], eax
lea     eax, [ebp+1Ch]
mov     edx, [esp+34h+var_1C]
call    sub_4DD57B
mov     eax, ebp
call    sub_4CA9F3
lea     edi, [ebp+10Ch]
lea     esi, [ebp+104h]
movsd
movsd
lea     edi, [ebp+104h]
lea     esi, [ebp+0FCh]
movsd
movsd
lea     edi, [ebp+0FCh]
lea     esi, [ebp+0F4h]
movsd
movsd
lea     edi, [ebp+0F4h]
lea     esi, [ebp+0ECh]
movsd
movsd
lea     edi, [ebp+0ECh]
lea     esi, [ebp+0E4h]
movsd
movsd
lea     edi, [ebp+0E4h]
lea     esi, [ebp+14h]
movsd
movsd
mov     ax, [ebp+14h]
mov     [ebp+90h], ax
mov     ax, [ebp+16h]
mov     [ebp+92h], ax
mov     ax, [ebp+18h]
mov     [ebp+94h], ax

loc_4CA87A:
test    byte ptr [ebp+0], 1
jz      short loc_4CA8BB
push    80h
push    0
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     eax, ds:dword_5386C4[eax*4]
or      eax, 49000000h
push    eax
lea     eax, [ebp+9Ch]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [ebp+14h]
mov     ecx, 0A000h
xor     ebx, ebx
mov     edx, 0C0h
call    sub_4E01FC

loc_4CA8BB:
mov     dword ptr [ebp+9Ch], 0

loc_4CA8C5:
add     esp, 1Ch

loc_4CA8C8:
pop     ebp

loc_4CA8C9:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CA601 endp




sub_4CA8CF proc near

var_10= byte ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 4
mov     edx, eax
cmp     dword ptr [eax+0DCh], 4
jnb     short loc_4CA921
mov     al, [eax+0DCh]
shl     al, 4
mov     bl, 40h ; '@'
sub     bl, al
mov     al, [edx+0DCh]
mov     ah, 38h ; '8'
mul     ah
mov     ah, 0E0h
sub     ah, al
mov     [esp+10h+var_10], ah
xor     eax, eax
mov     al, bl
mov     ebx, eax
shl     ebx, 10h
or      ebx, 2E000000h
xor     ecx, ecx
mov     cl, [esp+10h+var_10]
shl     ecx, 8
or      ecx, ebx
or      ecx, eax
mov     [edx+8Ch], ecx
jmp     short loc_4CA932

loc_4CA921:
mov     ah, [eax]
and     ah, 0FDh
mov     [edx], ah
mov     dword ptr [edx+8Ch], 2E000000h

loc_4CA932:
inc     dword ptr [edx+0DCh]
cmp     byte ptr [edx+0Bh], 0
ja      short loc_4CA947
mov     eax, edx
call    sub_4DE371
jmp     short loc_4CA94E

loc_4CA947:
mov     eax, edx
call    sub_4CAC42

loc_4CA94E:
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_4CA8CF endp




sub_4CA955 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= byte ptr -18h

push    ebx
push    ecx
push    edx
push    edi
sub     esp, 18h
mov     ecx, esi
mov     ebx, ds:dword_5F8376
sar     ebx, 10h
mov     edx, [eax+12h]
sar     edx, 10h
sub     ebx, edx
mov     [esp+28h+var_28], ebx
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
mov     ebx, [eax+14h]
sar     ebx, 10h
sub     edx, ebx
mov     [esp+28h+var_24], edx
mov     edx, ds:dword_5F837A
sar     edx, 10h
mov     eax, [eax+16h]
sar     eax, 10h
sub     edx, eax
mov     [esp+28h+var_20], edx
mov     eax, [esp+28h+var_28]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4CA9C8
mov     eax, [esp+28h+var_24]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4CA9C8
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
jbe     short loc_4CA9D6

loc_4CA9C8:
sar     [esp+28h+var_28], 2
sar     [esp+28h+var_24], 2
sar     [esp+28h+var_20], 2

loc_4CA9D6:
lea     edx, [esp+28h+var_18]
mov     eax, esp
call    sub_4EF932
mov     edi, ecx
lea     esi, [esp+28h+var_18]
movsd
movsd
mov     eax, ecx
add     esp, 18h
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CA955 endp




sub_4CA9F3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
xor     bl, bl

loc_4CA9FC:
call    sub_4EE133
mov     dword ptr [eax+4], 2E80C080h
xor     ecx, ecx
mov     cl, bl
mov     edx, ecx
mov     esi, [edi+edx*8+0E4h]
mov     [eax+8], esi
mov     edx, [edi+edx*8+0E8h]
mov     [eax+10h], edx
mov     dword ptr [eax+0Ch], 3D482080h
mov     dword ptr [eax+14h], 2E209Fh
mov     dword ptr [eax+1Ch], 3F80h
mov     dword ptr [eax+24h], 3F9Fh
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 3
mov     ecx, 0C0h
sub     ecx, edx
mov     [eax+18h], ecx
mov     dword ptr [eax+20h], 0
inc     bl
cmp     bl, 6
jb      short loc_4CA9FC
jmp     loc_4CA8C9
sub_4CA9F3 endp




sub_4CAA65 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= word ptr -2Ch
var_2A= dword ptr -2Ah
var_26= dword ptr -26h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ebx, eax
xor     ah, ah
mov     [esp+38h+var_20], ah
jmp     loc_4CAB6C

loc_4CAA7B:
mov     dl, 60h ; '`'
mov     dh, 0E0h

loc_4CAA7F:
mov     [esp+38h+var_1C], dl
mov     esi, [esp+38h+var_2A]
sar     esi, 10h
mov     eax, esi
call    sub_4EF008
mov     ebp, [esp+38h+var_26]
sar     ebp, 10h
imul    eax, ebp
sar     eax, 0Ch
mov     edi, [ebx+12h]
sar     edi, 10h
add     edi, eax
mov     [esp+38h+var_38], edi
mov     eax, esi
call    sub_4EF003
mov     esi, eax
imul    esi, ebp
sar     esi, 0Ch
mov     eax, [ebx+16h]
sar     eax, 10h
add     eax, esi
mov     di, [ebx+16h]
add     edi, [esp+38h+var_30]
movzx   esi, [esp+38h+var_1C]
shl     esi, 10h
or      esi, 2E000000h
mov     [esp+38h+var_34], esi
movzx   esi, dh
shl     esi, 8
mov     ebp, [esp+38h+var_34]
or      ebp, esi
movzx   esi, dl
mov     edx, ebp
or      edx, esi
mov     [ecx+4], edx
movsx   ebp, di
shl     ebp, 10h
mov     esi, [esp-2]
sar     esi, 10h
add     ebp, esi
mov     [ecx+8], ebp
cwde
mov     [ecx+10h], eax
mov     dword ptr [ecx+0Ch], 3D482040h
mov     dword ptr [ecx+14h], 2E205Fh
mov     dword ptr [ecx+1Ch], 3F40h
mov     dword ptr [ecx+24h], 3F5Fh
mov     dword ptr [ecx+18h], 40h ; '@'
mov     dword ptr [ecx+20h], 0

loc_4CAB30:
xor     eax, eax
mov     al, [esp+38h+var_20]
mov     eax, ds:(off_5386E8+2)[eax*8]
sar     eax, 10h
mov     ecx, [esp+38h+var_30+2]
sar     ecx, 10h
add     eax, 10h
cmp     ecx, eax
jnz     short loc_4CAB59
dec     byte ptr [ebx+0Bh]
add     word ptr [ebx+98h], 8

loc_4CAB59:
mov     dl, [esp+38h+var_20]
inc     dl
mov     [esp+38h+var_20], dl
cmp     dl, 18h
jnb     loc_4CAC3A

loc_4CAB6C:
mov     ax, [ebx+0DCh]
mov     [esp+38h+var_2C], ax
movzx   esi, [esp+38h+var_20]
shl     esi, 3
mov     eax, ds:(off_5386E8+2)[esi]
sar     eax, 10h
mov     ecx, [esp+38h+var_30+2]
sar     ecx, 10h
cmp     eax, ecx
jge     short loc_4CAB30
add     eax, 10h
cmp     ecx, eax
jge     short loc_4CAB30
call    sub_4EE133
mov     ecx, eax
mov     di, [ebx+0DCh]
mov     dx, word ptr ds:dword_5386EC[esi]
sub     edi, edx
mov     [esp+38h+var_2C], di
imul    eax, edi, 18h
add     ax, word ptr ds:dword_5386F0[esi]
and     ah, 0Fh
mov     word ptr [esp+38h+var_2A+2], ax
mov     ebp, ds:dword_5386F0[esi]
sar     ebp, 10h
mov     eax, ebp
mov     edx, ebp
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
movsx   edx, di
mov     [esp+38h+var_38], edx
imul    eax, edx
sub     ebp, eax
mov     eax, ebp
mov     [esp+38h+var_30], eax
mov     esi, ds:dword_5386EC[esi]
sar     esi, 10h
mov     eax, esi
mov     edx, esi
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
imul    eax, [esp+38h+var_38]
sub     esi, eax
mov     word ptr [esp+38h+var_26+2], si
cmp     di, 8
jge     loc_4CAA7B
mov     dh, byte ptr [esp+38h+var_2C]
inc     dh
mov     al, dh
mov     ah, 0Ch
mul     ah
mov     dl, al
mov     al, dh
mov     ah, 1Ch
mul     ah
mov     dh, al
jmp     loc_4CAA7F

loc_4CAC3A:
add     esp, 20h
jmp     loc_4CA8C8
sub_4CAA65 endp




sub_4CAC42 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= word ptr -2Ch
var_28= byte ptr -28h
var_24= byte ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ecx, eax
xor     ah, ah
mov     [esp+38h+var_28], ah
jmp     loc_4CAE02

loc_4CAC58:
mov     ax, [ecx+0DCh]
mov     word ptr [esp+38h+var_30], ax
mov     ax, word ptr ds:dword_5386EC[ebx]
mov     edx, [esp+38h+var_30]
sub     edx, eax
mov     word ptr [esp+38h+var_30], dx
mov     al, dl
mov     ah, 6
mul     ah
mov     ah, 60h ; '`'
sub     ah, al
mov     [esp+38h+var_24], ah
mov     al, dl
mov     ah, 0Eh
mul     ah
mov     ah, 0E0h
sub     ah, al
mov     [esp+38h+var_20], ah
mov     al, [esp+38h+var_24]
mov     [esp+38h+var_1C], al
mov     ax, word ptr ds:dword_5386F0[ebx]
mov     [esp+38h+var_2C], ax
mov     edi, ds:dword_5386F0[ebx]
sar     edi, 10h
mov     eax, edi
mov     edx, edi
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     ebp, ds:(off_5386E8+2)[ebx]
sar     ebp, 10h
imul    eax, ebp
mov     [esp+38h+var_38], eax
mov     ebx, ds:dword_5386EC[ebx]
sar     ebx, 10h
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
imul    eax, ebp
mov     [esp+38h+var_34], eax
mov     eax, edi
mov     edx, edi
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     ebp, [esp+38h+var_34+2]
sar     ebp, 10h
mov     edx, eax
imul    edx, ebp
mov     eax, [esp-2]
sar     eax, 10h
add     eax, edx
mov     edi, eax
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
imul    ebp, eax
mov     eax, [esp+38h+var_38+2]
sar     eax, 10h
add     eax, ebp

loc_4CAD2D:
mov     ebx, eax
mov     edx, [esp+38h+var_30+2]
sar     edx, 10h
mov     eax, edx
call    sub_4EF008
movsx   ebx, bx
imul    eax, ebx
sar     eax, 0Ch
mov     ebp, [ecx+12h]
sar     ebp, 10h
add     ebp, eax
mov     [esp+38h+var_38], ebp
mov     eax, edx
call    sub_4EF003
mov     edx, eax
imul    edx, ebx
sar     edx, 0Ch
mov     eax, [ecx+16h]
sar     eax, 10h
add     eax, edx
add     di, [ecx+16h]
xor     edx, edx
mov     dl, [esp+38h+var_1C]
shl     edx, 10h
or      edx, 2E000000h
xor     ebx, ebx
mov     bl, [esp+38h+var_20]
shl     ebx, 8
or      ebx, edx
xor     edx, edx
mov     dl, [esp+38h+var_24]
or      ebx, edx
mov     [esi+4], ebx
movsx   ebx, di
shl     ebx, 10h
mov     edx, [esp-2]
sar     edx, 10h
add     ebx, edx
mov     [esi+8], ebx
cwde
mov     [esi+10h], eax
mov     dword ptr [esi+0Ch], 3D482040h
mov     dword ptr [esi+14h], 2E205Fh
mov     dword ptr [esi+1Ch], 3F40h
mov     dword ptr [esi+24h], 3F5Fh
mov     dword ptr [esi+18h], 30h ; '0'
mov     dword ptr [esi+20h], 0

loc_4CADD1:
xor     eax, eax
mov     al, [esp+38h+var_28]
mov     eax, ds:(off_5386E8+2)[eax*8]
sar     eax, 10h
add     eax, 10h
cmp     eax, [ecx+0DCh]
jnz     short loc_4CADEF
dec     byte ptr [ecx+0Bh]

loc_4CADEF:
mov     dl, [esp+38h+var_28]
inc     dl
mov     [esp+38h+var_28], dl
cmp     dl, 18h
jnb     loc_4CAC3A

loc_4CAE02:
xor     ebx, ebx
mov     bl, [esp+38h+var_28]
shl     ebx, 3
mov     eax, ds:(off_5386E8+2)[ebx]
sar     eax, 10h
add     eax, 10h
cmp     eax, [ecx+0DCh]
jbe     short loc_4CADD1
call    sub_4EE133
mov     esi, eax
mov     eax, ds:(off_5386E8+2)[ebx]
sar     eax, 10h
mov     edi, [ecx+0DCh]
cmp     eax, edi
jbe     loc_4CAC58
mov     dl, 60h ; '`'
mov     [esp+38h+var_24], dl
mov     [esp+38h+var_20], 0E0h
mov     [esp+38h+var_1C], dl
mov     ax, word ptr ds:dword_5386F0[ebx]
mov     [esp+38h+var_2C], ax
mov     edx, ds:dword_5386F0[ebx]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     ebp, edi
imul    eax, edi
mov     edi, eax
mov     edx, ds:dword_5386EC[ebx]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
imul    eax, ebp
jmp     loc_4CAD2D
sub_4CAC42 endp




sub_4CAE93 proc near

var_6= word ptr -6

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     esi, eax
cmp     byte ptr [eax+8], 0
jz      short loc_4CAEAA
mov     eax, esi
call    sub_4CB356

loc_4CAEAA:
xor     edx, edx
mov     dl, [esi+8]
mov     eax, esi
call    ds:funcs_4CAEB1[edx*4]
mov     eax, esi
call    sub_4CB3D2
xor     eax, eax
mov     al, [esi+0Ah]
mov     eax, [esi+eax*4+0DCh]
mov     [esi+88h], eax
mov     edi, esp
lea     esi, [esi+14h]
movsd
movsd
add     [esp+8+var_6], 320h
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 20h ; ' '
mov     eax, esp
call    sub_4ED95E
add     esp, 8
jmp     loc_4CB180
sub_4CAE93 endp




sub_4CAEFA proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= byte ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 14h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_5387AC
lea     ebx, [ecx+88h]
xor     dl, dl
mov     [esp+28h+var_18], dl

loc_4CAF32:
mov     al, [esp+28h+var_18]
mov     [ecx+3], al
lea     edx, [esp+28h+var_18]
mov     eax, ecx
call    sub_4DD0F8
xor     edx, edx
mov     dl, [esp+28h+var_18]
mov     eax, [ebx]
mov     [ecx+edx*4+0DCh], eax
mov     dh, [esp+28h+var_18]
inc     dh
mov     [esp+28h+var_18], dh
cmp     dh, 4
jb      short loc_4CAF32
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
mov     word ptr [ecx+1Ah], 0
lea     edi, [ebx+34h]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ebx+3Ch], offset unk_808080
lea     edx, [ebx+4]
lea     eax, [ecx+54h]
call    sub_4EF638
mov     edx, 200h
mov     [esp+28h+var_20], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_28], edx
lea     eax, [ecx+8Ch]
mov     edx, esp
call    sub_4EF689
mov     eax, [ecx+54h]
sar     eax, 10h
call    sub_4EF008
neg     eax
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 0
mov     eax, [ecx+54h]
sar     eax, 10h
call    sub_4EF003
neg     eax
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [ecx+48h], ax
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0FE80h
mov     word ptr [ecx+50h], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Ah], 0
call    rand_
and     al, 7
add     al, 14h
mov     [ecx+0Bh], al
call    rand_
and     al, 1Fh
add     al, 0Ah
mov     [ecx+0Ch], al
mov     word ptr [ecx+7Ch], 0
mov     eax, ecx
call    sub_4CB3D2
lea     edx, [ecx+14h]
mov     eax, 0F9h
call    sub_4D8BC3
add     esp, 14h
jmp     loc_4CB180
sub_4CAEFA endp




sub_4CB058 proc near
push    ecx
push    edx
mov     edx, eax
add     eax, 88h
mov     ecx, [edx+42h]
sar     ecx, 10h
shl     ecx, 8
add     [edx+1Ch], ecx
mov     ecx, [edx+44h]
sar     ecx, 10h
shl     ecx, 8
add     [edx+20h], ecx
mov     ecx, [edx+46h]
sar     ecx, 10h
shl     ecx, 8
add     [edx+24h], ecx
mov     ecx, [edx+1Ch]
sar     ecx, 10h
mov     [edx+14h], cx
mov     [eax+34h], cx
mov     ecx, [edx+20h]
sar     ecx, 10h
mov     [edx+16h], cx
mov     [eax+36h], cx
mov     ecx, [edx+24h]
sar     ecx, 10h
mov     [edx+18h], cx
mov     [eax+38h], cx
mov     ax, [edx+4Ch]
add     [edx+44h], ax
mov     ax, [edx+4Eh]
add     [edx+46h], ax
mov     ax, [edx+50h]
add     [edx+48h], ax
mov     ah, [edx+0Bh]
dec     ah
mov     [edx+0Bh], ah
jnz     short loc_4CB0E0
inc     byte ptr [edx+8]
call    rand_
and     al, 0Fh
add     al, 28h ; '('
mov     [edx+0Bh], al

loc_4CB0E0:
mov     cl, [edx+0Ah]
inc     cl
mov     [edx+0Ah], cl
cmp     cl, 2
jbe     short loc_4CB0F1
mov     byte ptr [edx+0Ah], 0

loc_4CB0F1:
pop     edx
pop     ecx
retn
sub_4CB058 endp




sub_4CB0F4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     ebx, [eax+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     edi, [eax+14h]
mov     ecx, 40h ; '@'
mov     edx, (offset dword_5F880A+2)
mov     eax, edi
call    sub_4DE552
add     [esi+56h], ax
mov     ah, [esi+0Bh]
dec     ah
mov     [esi+0Bh], ah
jnz     short loc_4CB159
inc     byte ptr [esi+8]
call    rand_
and     al, 1Fh
add     al, 64h ; 'd'
mov     [esi+0Bh], al
mov     ebx, [esi+54h]
sar     ebx, 10h
and     ebx, 0FFFh
mov     ecx, 800h
mov     edx, (offset dword_5F880A+2)
mov     eax, edi
call    sub_4DE552
add     [esi+56h], ax

loc_4CB159:
mov     bl, [esi+0Ah]
inc     bl
mov     [esi+0Ah], bl
cmp     bl, 2

loc_4CB164:
jbe     short loc_4CB16A
mov     byte ptr [esi+0Ah], 0

loc_4CB16A:
test    byte ptr ds:word_77EAB6, 2
jz      short loc_4CB180
lea     edx, [esi+14h]
mov     eax, 0FAh
call    sub_4D8BC3

loc_4CB180:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CB0F4 endp




sub_4CB186 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+88h]
mov     ebx, [eax+54h]
sar     ebx, 10h
and     ebx, 0FFFh
add     eax, 14h
mov     ecx, 20h ; ' '
mov     edx, (offset dword_5F880A+2)
call    sub_4DE552
add     [esi+56h], ax
mov     eax, [esi+54h]
sar     eax, 10h
call    sub_4EF008
neg     eax
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [esi+44h], ax
mov     word ptr [esi+46h], 0
mov     eax, [esi+54h]
sar     eax, 10h
call    sub_4EF003
neg     eax
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [esi+48h], ax
mov     eax, [esi+42h]
sar     eax, 10h
shl     eax, 8
add     [esi+1Ch], eax
mov     eax, [esi+44h]
sar     eax, 10h
shl     eax, 8
add     [esi+20h], eax
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 8
add     [esi+24h], eax
mov     eax, [esi+1Ch]
sar     eax, 10h
mov     [esi+14h], ax
mov     [edi+34h], ax
mov     eax, [esi+20h]
sar     eax, 10h
mov     [esi+16h], ax
mov     [edi+36h], ax
mov     eax, [esi+24h]
sar     eax, 10h
mov     [esi+18h], ax
mov     [edi+38h], ax
mov     eax, [esi+9]
sar     eax, 18h
shl     eax, 2
mov     dl, [esi+0Bh]
dec     dl
mov     [esi+0Bh], dl
jz      short loc_4CB263
imul    eax, eax
cmp     eax, [esi+80h]
jbe     short loc_4CB29B

loc_4CB263:
inc     byte ptr [esi+8]
mov     byte ptr [esi+0Bh], 0F0h
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0
mov     word ptr [esi+48h], 0
mov     word ptr [esi+4Ch], 0
mov     word ptr [esi+4Eh], 180h
mov     word ptr [esi+50h], 0
lea     edx, [esi+14h]
mov     eax, 0FBh
call    sub_4D8BC3

loc_4CB29B:
mov     bh, [esi+0Ah]
inc     bh
mov     [esi+0Ah], bh
cmp     bh, 2
jmp     loc_4CB164
sub_4CB186 endp




sub_4CB2AB proc near
push    ecx
push    edx
mov     edx, eax
add     eax, 88h
mov     ecx, [edx+42h]
sar     ecx, 10h
shl     ecx, 8
add     [edx+1Ch], ecx
mov     ecx, [edx+44h]
sar     ecx, 10h
shl     ecx, 8
add     [edx+20h], ecx
mov     ecx, [edx+46h]
sar     ecx, 10h
shl     ecx, 8
add     [edx+24h], ecx
mov     ecx, [edx+1Ch]
sar     ecx, 10h
mov     [edx+14h], cx
mov     [eax+34h], cx
mov     ecx, [edx+20h]
sar     ecx, 10h
mov     [edx+16h], cx
mov     [eax+36h], cx
mov     ecx, [edx+24h]
sar     ecx, 10h
mov     [edx+18h], cx
mov     [eax+38h], cx
mov     ax, [edx+4Ch]
add     [edx+44h], ax
mov     ax, [edx+4Eh]
add     [edx+46h], ax
mov     ax, [edx+50h]
add     [edx+48h], ax
mov     ecx, 3200h
mov     eax, [edx+44h]
sar     eax, 10h
cmp     eax, ecx
jle     short loc_4CB32D
mov     [edx+46h], cx

loc_4CB32D:
mov     ah, [edx+0Bh]
dec     ah
mov     [edx+0Bh], ah
jnz     short loc_4CB348
mov     eax, edx
call    sub_4CB403
mov     eax, edx
call    sub_4DE371
pop     edx
pop     ecx
retn

loc_4CB348:
mov     byte ptr [edx+0Ah], 3
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4CB2AB endp




sub_4CB356 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     edx, [eax+88h]
test    byte ptr [eax+0D7h], 1Ah
jnz     short loc_4CB380
mov     eax, ecx
call    sub_42CE47
test    eax, eax
jnz     short loc_4CB380
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4CB390

loc_4CB380:
mov     eax, ecx
call    sub_4CB403
mov     eax, ecx
call    sub_4DE371
jmp     short loc_4CB3CA

loc_4CB390:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
add     edx, 4
lea     eax, [ecx+54h]
call    sub_4EF638
mov     edx, 200h
mov     [esp+20h+var_18], edx
mov     [esp+20h+var_1C], edx
mov     [esp+20h+var_20], edx
lea     eax, [ecx+8Ch]
mov     edx, esp
call    sub_4EF689

loc_4CB3CA:
add     esp, 10h
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4CB356 endp




sub_4CB3D2 proc near
push    ebx
push    ecx
push    edx
push    0
push    0
push    4000005h
lea     edx, [eax+0D4h]
push    edx
xor     edx, edx
mov     dl, [eax+1]
push    edx
add     eax, 14h
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 20h ; ' '
call    sub_4E01FC
pop     edx
pop     ecx
pop     ebx
retn
sub_4CB3D2 endp




sub_4CB403 proc near
push    esi
push    edi
mov     esi, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4CB423
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
lea     edi, [eax+48h]
lea     esi, [esi+14h]
movsd
movsd

loc_4CB423:
pop     edi
pop     esi
retn
sub_4CB403 endp




sub_4CB426 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4CB42C[edx*4]
pop     edx
retn
sub_4CB426 endp




sub_4CB435 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+0DCh]
mov     eax, [eax+9]
sar     eax, 18h
mov     eax, ds:off_538B84[eax*4]
mov     [ebx], eax
mov     eax, [ecx+9]
sar     eax, 18h
mov     eax, ds:off_538BB0[eax*4]
mov     [ebx+4], eax
mov     eax, [ecx+9]
sar     eax, 18h
mov     eax, ds:off_538BDC[eax*4]
mov     [ebx+8], eax
or      byte ptr [ecx], 2
lea     ebp, [ecx+88h]
mov     esi, [ecx+0Ah]
sar     esi, 18h
shl     esi, 3
mov     eax, [ebx+4]
add     esi, eax
xor     eax, eax
mov     al, [esi]
sub     eax, 40h ; '@'
shl     eax, 9
mov     [ecx+14h], ax
mov     word ptr [ecx+16h], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     eax, [ebx+4]
mov     al, [eax+edx*8+1]
xor     ah, ah
sub     eax, 40h ; '@'
shl     eax, 9
mov     [ecx+18h], ax
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
mov     word ptr [ecx+54h], 0
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     edx, [ebx+4]
mov     al, [edx+eax*8+3]
and     al, 30h
xor     ah, ah
shl     eax, 6
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     eax, [ebx+4]
mov     al, [eax+edx*8+3]
and     al, 30h
and     eax, 0FFh
sar     eax, 4
mov     [ebx+0Dh], al
mov     [ebx+0Ch], al
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+4Ch], 0
mov     dword ptr [ecx+50h], 0
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     edx, [ebx+4]
mov     al, [edx+eax*8+2]
xor     ah, ah
shl     eax, 4
mov     [ebx+10h], ax
mov     byte ptr [ebx+0Fh], 0
mov     dword ptr [ecx+78h], 0
lea     eax, [ecx+14h]
call    sub_42C7E7
mov     [ecx+16h], ax
mov     edx, 100h
mov     eax, ecx
call    sub_4CBCA0
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
lea     edi, [ebp+34h]
lea     esi, [ecx+14h]
movsd
movsd
lea     esi, [ebp+4]
lea     eax, [ecx+54h]
mov     edx, esi
call    sub_4EF5F7
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     edx, [ecx+0Ah]
sar     edx, 18h
shl     edx, 3
mov     eax, [ebx+4]
mov     al, [edx+eax+4]
mov     [ecx+3], al
mov     dword ptr [ebp+3Ch], offset unk_808080
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ebx+1Ch], 0
mov     ax, [ebx+1Ch]
mov     [ebx+1Ah], ax
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

loc_4CB600:
add     esp, 10h

loc_4CB603:
pop     ebp

loc_4CB604:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4CB435 endp ; sp-analysis failed

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_104]



sub_4CB60A proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
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
lea     ecx, [eax+88h]
mov     word ptr [eax+58h], 0
mov     ax, [eax+58h]
mov     [ebp+54h], ax
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4CB64A[edx*4]
lea     eax, [ebp+14h]
call    sub_42C7E7
mov     [ebp+16h], ax
mov     edx, 100h
mov     eax, ebp
call    sub_4CBCA0
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
lea     edi, [ecx+34h]
lea     esi, [ebp+14h]
movsd
movsd
add     ecx, 4          ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 200h
mov     [esp+0], edx
mov     [esp+arg_0], edx
mov     [esp+arg_4], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     ecx, 1000008h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
jmp     loc_4CB600
sub_4CB60A endp



; Attributes: thunk

sub_4CB6BE proc near
jmp     sub_4DE371
sub_4CB6BE endp




sub_4CB6C3 proc near
push    edx
mov     edx, eax
call    sub_4CBD74
inc     byte ptr [edx+9]
pop     edx
retn
sub_4CB6C3 endp




sub_4CB6D0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     edx, [eax+0DCh]
call    sub_4CBA83
mov     eax, esi
call    sub_4CB852
test    ax, ax
jnz     short loc_4CB703
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4CB703:
mov     byte ptr [esi+9], 2
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, eax
sar     ecx, 5
mov     eax, [edx+10h]
sar     eax, 10h
add     eax, ecx
mov     [edx+12h], ax
mov     eax, esi
call    sub_4CB9A7
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CB6D0 endp




sub_4CB731 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
lea     ecx, [eax+0DCh]
call    sub_4CBA83
mov     word ptr [ecx+14h], 7FFFh
mov     ebx, [edx+42h]
sar     ebx, 10h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
mov     ebx, eax
sar     ebx, 5
mov     eax, [ecx+10h]
sar     eax, 10h
add     eax, ebx
mov     [ecx+12h], ax
cmp     ax, 400h
jle     loc_4CB846
mov     esi, eax
sub     esi, 400h
mov     [ecx+12h], si
xor     eax, eax
mov     al, [ecx+0Eh]
mov     ebx, [ecx]
test    byte ptr [ebx+eax*8+2], 10h
jz      short loc_4CB799
mov     al, 0FFh
xor     ebx, ebx
mov     bl, [ecx+0Ch]
shl     ebx, 0Ah
add     bh, 0Ch
jmp     short loc_4CB7A6

loc_4CB799:
mov     al, 1
xor     ebx, ebx
mov     bl, [ecx+0Ch]
shl     ebx, 0Ah
add     bh, 4

loc_4CB7A6:
and     bh, 0Fh
mov     [edx+56h], bx
mov     bx, [ecx+16h]
mov     [edx+14h], bx
mov     bx, [ecx+18h]
mov     [edx+18h], bx
mov     ah, [ecx+0Ch]
test    ah, ah
jnz     short loc_4CB7D7
cbw
imul    ax, [ecx+12h]
sub     [edx+14h], ax
sub     word ptr [edx+18h], 200h
jmp     short loc_4CB814

loc_4CB7D7:
cmp     ah, 1
jnz     short loc_4CB7EF
cbw
sub     word ptr [edx+14h], 200h
imul    ax, [ecx+12h]
add     [edx+18h], ax
jmp     short loc_4CB814

loc_4CB7EF:
cmp     ah, 2
jnz     short loc_4CB805
cbw
imul    ax, [ecx+12h]
add     [edx+14h], ax
add     byte ptr [edx+19h], 2
jmp     short loc_4CB814

loc_4CB805:
cbw
add     byte ptr [edx+15h], 2
imul    ax, [ecx+12h]
sub     [edx+18h], ax

loc_4CB814:
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+1Ch], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
mov     eax, edx
call    sub_4CBD74
and     byte ptr [ecx+0Fh], 0FEh
mov     word ptr [ecx+12h], 0
mov     byte ptr [edx+9], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4CB846:
mov     eax, edx
call    sub_4CB9A7
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CB731 endp




sub_4CB852 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
lea     edx, [eax+0DCh]
mov     bl, [edx+0Fh]
and     bl, 0E0h
cmp     bl, 40h ; '@'
jnz     short loc_4CB87C
call    sub_4CBD74
and     byte ptr [edx+0Fh], 0BFh
xor     eax, eax
jmp     loc_4CB99F

loc_4CB87C:
xor     ebx, ebx
mov     [esp+1Ch+var_1C], ebx
mov     ecx, [eax+54h]
sar     ecx, 10h
sar     ecx, 0Ah
mov     [edx+0Ch], cl
mov     ecx, [eax+12h]
sar     ecx, 10h
sar     ecx, 9
add     ecx, 40h ; '@'
mov     edi, ecx
mov     ecx, [eax+16h]
sar     ecx, 10h
sar     ecx, 9
add     ecx, 40h ; '@'
mov     esi, ecx
mov     bl, [edx+0Ch]
test    bl, bl
jnz     short loc_4CB8B3
inc     esi
jmp     short loc_4CB8B9

loc_4CB8B3:
cmp     bl, 1
jnz     short loc_4CB8B9
inc     edi

loc_4CB8B9:
xor     ecx, ecx
mov     cl, [edx+0Eh]
shl     ecx, 3
mov     ebx, [edx]
add     ecx, ebx
xor     ebx, ebx
mov     bl, [ecx]
movsx   ebp, di
cmp     ebx, ebp
jnz     loc_4CB99C
xor     ebx, ebp
mov     bl, [ecx+1]
movsx   ebp, si
cmp     ebx, ebp
jnz     loc_4CB99C
mov     bl, [ecx+2]
and     bl, 10h
xor     ecx, ecx
mov     cl, bl
sar     ecx, 4
mov     bx, [eax+14h]
and     bh, 1
mov     ax, [eax+18h]
and     ah, 1
add     ebx, eax
mov     [edx+12h], bx
cmp     byte ptr [edx+0Ch], 1
ja      short loc_4CB916
mov     eax, 200h
sub     eax, ebx
mov     [edx+12h], ax

loc_4CB916:
sub     edi, 40h ; '@'
mov     [edx+16h], di
sub     esi, 40h ; '@'
mov     [edx+18h], si
mov     al, [edx+0Ch]
test    al, 1
jz      short loc_4CB952
and     al, 2
mov     ebx, eax
and     ebx, 0FFh
sar     ebx, 1
xor     eax, eax
mov     al, cl
add     ebx, eax
inc     ebx
and     ebx, 1
add     ebx, ebx
mov     eax, [edx+16h]
sar     eax, 10h
dec     ebx
add     eax, ebx
mov     [edx+18h], ax
jmp     short loc_4CB976

loc_4CB952:
and     al, 2
mov     ebx, eax
and     ebx, 0FFh
sar     ebx, 1
xor     eax, eax
mov     al, cl
add     ebx, eax
and     ebx, 1
add     ebx, ebx
mov     eax, [edx+14h]
sar     eax, 10h
dec     ebx
add     eax, ebx
mov     [edx+16h], ax

loc_4CB976:
shl     word ptr [edx+16h], 9
shl     word ptr [edx+18h], 9
test    cl, cl
jz      short loc_4CB98B
mov     al, [edx+0Ch]
add     al, 3
jmp     short loc_4CB990

loc_4CB98B:
mov     al, [edx+0Ch]
inc     al

loc_4CB990:
and     al, 3
mov     [edx+0Dh], al
mov     [esp+1Ch+var_1C], 1

loc_4CB99C:
mov     eax, [esp+1Ch+var_1C]

loc_4CB99F:
add     esp, 4
jmp     loc_4CB603
sub_4CB852 endp




sub_4CB9A7 proc near

var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     ecx, eax
lea     ebx, [eax+0DCh]
xor     eax, eax
mov     al, [ebx+0Eh]
mov     edx, [ebx]
test    byte ptr [edx+eax*8+2], 10h
jz      short loc_4CB9CA
mov     [esp+14h+var_14], 0FFh
jmp     short loc_4CB9CE

loc_4CB9CA:
mov     [esp+14h+var_14], 1

loc_4CB9CE:
mov     eax, [ebx+10h]
sar     eax, 10h
call    sub_4EF003
mov     edx, eax
shl     edx, 0Dh
mov     eax, [ebx+10h]
sar     eax, 10h
call    sub_4EF008
shl     eax, 0Dh
mov     esi, [ebx+14h]
sar     esi, 10h
shl     esi, 10h
mov     [ecx+1Ch], esi
mov     esi, [ebx+16h]
sar     esi, 10h
shl     esi, 10h
mov     [ecx+24h], esi
cmp     byte ptr [ebx+0Ch], 0
jnz     short loc_4CBA1C
mov     esi, [esp-3]
sar     esi, 18h
imul    edx, esi
add     [ecx+1Ch], edx

loc_4CBA17:
sub     [ecx+24h], eax
jmp     short loc_4CBA56

loc_4CBA1C:
cmp     byte ptr [ebx+0Ch], 1
jnz     short loc_4CBA31
sub     [ecx+1Ch], eax
mov     eax, [esp-3]
sar     eax, 18h
imul    eax, edx
jmp     short loc_4CBA17

loc_4CBA31:
cmp     byte ptr [ebx+0Ch], 2
jnz     short loc_4CBA46
mov     esi, [esp-3]
sar     esi, 18h
imul    edx, esi
sub     [ecx+1Ch], edx
jmp     short loc_4CBA53

loc_4CBA46:
add     [ecx+1Ch], eax
mov     eax, [esp-3]
sar     eax, 18h
imul    eax, edx

loc_4CBA53:
add     [ecx+24h], eax

loc_4CBA56:
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
movsx   ax, [esp+14h+var_14]
mov     dx, [ebx+12h]
imul    edx, eax
xor     eax, eax
mov     al, [ebx+0Ch]
shl     eax, 0Ah
add     eax, edx
mov     [ecx+56h], ax
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CB9A7 endp




sub_4CBA83 proc near

var_1C= word ptr -1Ch
var_18= byte ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     edx, eax
lea     ecx, [eax+0DCh]
mov     bx, [ecx+10h]
xor     eax, eax
mov     al, [ecx+0Eh]
shl     eax, 3
mov     esi, [ecx]
add     esi, eax
mov     al, [esi+2]
and     al, 0F0h
mov     [esp+1Ch+var_18], al
xor     eax, eax
mov     al, [esi]
lea     esi, [eax-40h]
shl     esi, 9
mov     eax, [edx+12h]
sar     eax, 10h
sub     esi, eax
mov     eax, esi
call    abs_
mov     esi, eax
xor     eax, eax
mov     al, [ecx+0Eh]
mov     edi, eax
shl     edi, 3
mov     eax, [ecx]
mov     al, [edi+eax+1]
mov     edi, eax
and     edi, 0FFh
sub     edi, 40h ; '@'
shl     edi, 9
mov     eax, [edx+16h]
sar     eax, 10h
sub     edi, eax
mov     eax, edi
call    abs_
mov     edi, esi
add     edi, eax
mov     eax, edi
add     eax, 1FFh
mov     [ecx+14h], ax
test    byte ptr [ecx+0Fh], 4
jz      short loc_4CBB11
mov     [esp+1Ch+var_1C], 20h ; ' '
jmp     short loc_4CBB17

loc_4CBB11:
mov     [esp+1Ch+var_1C], 8

loc_4CBB17:
test    byte ptr [ecx+0Fh], 11h
jnz     loc_4CBB9F
test    [esp+1Ch+var_18], 0E0h
jz      short loc_4CBB6B
mov     eax, [edx+42h]
sar     eax, 10h
mov     esi, eax
sar     esi, 4
add     esi, 6
imul    eax, esi
sar     eax, 4
lea     esi, [eax+180h]
mov     al, [esp+1Ch+var_18]
and     al, 0E0h
cmp     al, 40h ; '@'
jnz     short loc_4CBB54
add     esi, 200h
jmp     short loc_4CBB5E

loc_4CBB54:
cmp     al, 60h ; '`'
jnz     short loc_4CBB5E
add     esi, 400h

loc_4CBB5E:
movsx   eax, di
cmp     eax, esi
jg      short loc_4CBB9F
or      byte ptr [ecx+0Fh], 10h
jmp     short loc_4CBB99

loc_4CBB6B:
mov     esi, [edx+42h]
sar     esi, 10h
sub     esi, 140h
mov     eax, esi
imul    eax, esi
sar     eax, 7
sub     eax, esi
lea     esi, [eax+400h]
movsx   eax, di
cmp     eax, esi
jg      short loc_4CBB9F
or      byte ptr [ecx+0Fh], 1
cmp     word ptr [edx+4Ch], 0
jle     short loc_4CBB9F

loc_4CBB99:
mov     word ptr [edx+4Ch], 0

loc_4CBB9F:
mov     ecx, [edx+42h]
sar     ecx, 10h
movsx   eax, bx
cmp     ecx, eax
jge     loc_4CBC21
cmp     word ptr [edx+4Ch], 0
jge     short loc_4CBBBD
mov     word ptr [edx+4Ch], 0

loc_4CBBBD:
mov     ecx, [edx+42h]
sar     ecx, 10h
movsx   eax, bx
sub     eax, 0Dh
cmp     ecx, eax
jge     short loc_4CBBE4
mov     eax, [edx+4Ah]
sar     eax, 10h
mov     ecx, [esp-2]
sar     ecx, 10h
cmp     eax, ecx
jge     short loc_4CBC03
inc     word ptr [edx+4Ch]
jmp     short loc_4CBC03

loc_4CBBE4:
mov     di, [edx+4Ch]
cmp     di, 2
jle     short loc_4CBBF9
mov     eax, edi
sub     eax, 2
mov     [edx+4Ch], ax
jmp     short loc_4CBC03

loc_4CBBF9:
mov     [edx+44h], bx
mov     word ptr [edx+4Ch], 0

loc_4CBC03:
mov     ax, [edx+4Ch]
add     [edx+44h], ax
mov     ecx, [edx+42h]
sar     ecx, 10h
movsx   eax, bx
cmp     ecx, eax
jle     loc_4CBC98
jmp     loc_4CBC8E

loc_4CBC21:
jle     loc_4CBC98
cmp     word ptr [edx+4Ch], 0
jle     short loc_4CBC34
mov     word ptr [edx+4Ch], 0

loc_4CBC34:
mov     ecx, [edx+42h]
sar     ecx, 10h
movsx   eax, bx
add     eax, 0Dh
cmp     ecx, eax
jle     short loc_4CBC5D
mov     eax, [edx+4Ah]
sar     eax, 10h
mov     ecx, [esp-2]
sar     ecx, 10h
neg     ecx
cmp     eax, ecx
jle     short loc_4CBC79
dec     word ptr [edx+4Ch]
jmp     short loc_4CBC79

loc_4CBC5D:
mov     eax, [edx+4Ah]
sar     eax, 10h
cmp     eax, 0FFFFFFFEh
jge     short loc_4CBC6F
add     word ptr [edx+4Ch], 2
jmp     short loc_4CBC79

loc_4CBC6F:
mov     [edx+44h], bx
mov     word ptr [edx+4Ch], 0

loc_4CBC79:
mov     ax, [edx+4Ch]
add     [edx+44h], ax
mov     ecx, [edx+42h]
sar     ecx, 10h
movsx   eax, bx
cmp     ecx, eax
jge     short loc_4CBC98

loc_4CBC8E:
mov     [edx+44h], bx
mov     word ptr [edx+4Ch], 0

loc_4CBC98:
add     esp, 8
jmp     loc_4CB604
sub_4CBA83 endp




sub_4CBCA0 proc near

var_14= word ptr -14h
var_12= dword ptr -12h

push    ebx
push    ecx
push    esi
sub     esp, 8
mov     ecx, eax
test    dx, dx
jz      loc_4CBD6D
mov     eax, [eax+54h]
sar     eax, 10h
sar     eax, 0Ah
mov     ebx, eax
mov     ax, [ecx+14h]
mov     [esp+14h+var_14], ax
mov     ax, [ecx+16h]
sub     eax, 80h
mov     word ptr [esp+14h+var_12], ax
mov     ax, [ecx+18h]
mov     word ptr [esp+14h+var_12+2], ax
test    bl, 1
jz      short loc_4CBD02
movsx   esi, dx
sar     esi, 1
mov     eax, [esp-2]
sar     eax, 10h
sub     eax, esi
mov     [esp+14h+var_14], ax
mov     eax, esp
call    sub_42C7E7
mov     esi, eax
add     [esp+14h+var_14], dx
jmp     short loc_4CBD23

loc_4CBD02:
movsx   esi, dx
sar     esi, 1
mov     eax, [esp+14h+var_12]
sar     eax, 10h
sub     eax, esi
mov     word ptr [esp+14h+var_12+2], ax
mov     eax, esp
call    sub_42C7E7
mov     esi, eax
add     word ptr [esp+14h+var_12+2], dx

loc_4CBD23:
mov     eax, esp
call    sub_42C7E7
xor     bh, bh
and     bl, 2
dec     ebx
sub     eax, esi
imul    eax, ebx
imul    eax, 3
mov     dx, [ecx+54h]
add     edx, eax
mov     [ecx+54h], dx
mov     bx, [ecx+4Ch]
test    bx, bx
jle     short loc_4CBD61
mov     edx, [ecx+4Ah]
sar     edx, 10h
sar     edx, 1
mov     eax, [ecx+52h]
sar     eax, 10h
sub     eax, edx
mov     [ecx+54h], ax
jmp     short loc_4CBD6D

loc_4CBD61:
mov     eax, ebx
add     eax, ebx
mov     esi, edx
sub     esi, eax
mov     [ecx+54h], si

loc_4CBD6D:
add     esp, 8
pop     esi
pop     ecx
pop     ebx
retn
sub_4CBCA0 endp




sub_4CBD74 proc near

var_20= dword ptr -20h
var_1C= word ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 0Ch
mov     esi, eax
lea     ebx, [eax+0DCh]
mov     eax, [eax+0Ah]
sar     eax, 18h
shl     eax, 3
mov     edx, [ebx+4]
add     edx, eax
cmp     byte ptr [edx+4], 6
jnz     short loc_4CBDDD
cmp     byte ptr [esi+9], 0
jnz     short loc_4CBDA7
xor     eax, eax
mov     al, [edx+5]
mov     [ebx+1Ah], ax

loc_4CBDA7:
mov     eax, [ebx+18h]
sar     eax, 10h
mov     edx, [ebx+8]
mov     al, [edx+eax]
mov     [ebx+0Eh], al
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, ds:dword_5387CE[eax*8]
sar     ecx, 10h
mov     edx, [ebx+18h]
sar     edx, 10h
inc     edx
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     [ebx+1Ah], dx
jmp     loc_4CBE77

loc_4CBDDD:
xor     edx, edx
jmp     short loc_4CBDEC

loc_4CBDE1:
inc     edx
cmp     dx, 4
jge     loc_4CBE74

loc_4CBDEC:
cmp     byte ptr [esi+9], 0
jnz     short loc_4CBE0D
mov     eax, [esi+0Ah]
sar     eax, 18h
shl     eax, 3
mov     ecx, [ebx+4]
add     eax, ecx
movsx   ecx, dx
mov     ch, [ecx+eax+5]
cmp     dx, 2
jmp     short loc_4CBE24

loc_4CBE0D:
xor     ecx, ecx
mov     cl, [ebx+0Eh]
shl     ecx, 3
mov     eax, [ebx]
add     eax, ecx
movsx   ecx, dx
mov     ch, [ecx+eax+4]
cmp     dx, 3

loc_4CBE24:
jz      short loc_4CBE74
movsx   eax, dx
shl     eax, 2
mov     [esp+20h+var_20], eax
call    rand_
mov     cl, byte ptr [esp+20h+var_20]
sar     eax, cl
and     eax, 0Fh
mov     [esp+20h+var_1C], ax
xor     eax, eax
mov     al, ch
mov     edi, eax
shl     edi, 3
mov     eax, [ebx]
mov     al, [edi+eax+2]
and     al, 0Fh
movzx   di, al
mov     [esp+20h+var_18], edi
movzx   edi, al
mov     eax, [esp+20h+var_20+2]
sar     eax, 10h
cmp     edi, eax
jg      short loc_4CBE74
cmp     word ptr [esp+20h+var_18], 0
jnz     loc_4CBDE1

loc_4CBE74:
mov     [ebx+0Eh], ch

loc_4CBE77:
add     esp, 0Ch
jmp     loc_4CB604
sub_4CBD74 endp




sub_4CBE7F proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
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
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4CBEA9[edx*4]
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     ecx, 1000008h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
add     esp, 10h
pop     ebp
sub_4CBE7F endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4CBEF9

loc_4CBEF3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
; END OF FUNCTION CHUNK FOR sub_4CBEF9
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_105]



sub_4CBEF9 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004CBEF3 SIZE 00000005 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     word ptr [ecx+54h], 0
mov     al, [ecx+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
mov     byte ptr [ecx+2], 4
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 2Fh ; '/'
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_24], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     word ptr [ecx+6Eh], 400h
mov     dword ptr [ecx+78h], offset unk_538C30
mov     dword ptr [ecx+10h], 0
inc     byte ptr [ecx+8]
mov     dword ptr [ecx+0C4h], offset unk_808080
add     esp, 10h
jmp     loc_4CBEF3
sub_4CBEF9 endp



; Attributes: thunk

sub_4CBFC7 proc near
jmp     sub_4DE371
sub_4CBFC7 endp




sub_4CBFCC proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4CBFD2[edx*4]
pop     edx
retn
sub_4CBFCC endp




sub_4CBFDB proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 18h
mov     eax, [eax+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+90h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+92h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+94h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     edx, ds:dword_5F837A
sar     edx, 10h
mov     eax, [ecx+16h]
sar     eax, 10h
sub     edx, eax
mov     ebx, ds:dword_5F8376
sar     ebx, 10h
mov     eax, [ecx+12h]
sar     eax, 10h
sub     ebx, eax
mov     eax, ebx
call    sub_4EF04B
mov     [ecx+0DCh], eax
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CBFDB endp




sub_4CC078 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+0Ch]
sar     eax, 18h
call    sub_4E1877
mov     ecx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4CC0E4
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 13h
mov     byte ptr [eax+3], 0
mov     bl, [edx+1]
mov     [eax+0Ch], bl
mov     bl, [edx+0Dh]
mov     [eax+0Dh], bl
mov     ebx, [edx+0DCh]
mov     [eax+28h], ebx
mov     bx, [ecx+198h]
mov     [eax+1Ch], bx
mov     bx, [ecx+19Ah]
mov     [eax+1Eh], bx
mov     cx, [ecx+19Ch]
mov     [eax+20h], cx
inc     byte ptr [edx+0Ch]
mov     bl, [edx+0Eh]
dec     bl
mov     [edx+0Eh], bl
jnz     short loc_4CC0E4
inc     byte ptr [edx+8]

loc_4CC0E4:
inc     byte ptr [edx+0Dh]
pop     edx
pop     ecx
pop     ebx

locret_4CC0EA:
retn
sub_4CC078 endp




sub_4CC0EB proc near
cmp     byte ptr [eax+0Ch], 0
jnz     short locret_4CC0EA
jmp     sub_4DE371
sub_4CC0EB endp




sub_4CC0F6 proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4CC104[edx*4]
test    byte ptr [esi+3], 1
jnz     short loc_4CC114
inc     byte ptr [esi+0Fh]

loc_4CC114:
cmp     byte ptr [esi+0Fh], 6
jnz     short loc_4CC11E
mov     byte ptr [esi+0Fh], 0

loc_4CC11E:
mov     ax, [esi+90h]
mov     [esp+18h+var_18], ax
mov     ax, [esi+92h]
mov     [esp+18h+var_16], ax
mov     ax, [esi+94h]
mov     [esp+18h+var_14], ax
test    byte ptr [esi+3], 1
jnz     short loc_4CC19C
lea     eax, [esi+9Ch]
cmp     byte ptr [esi+0Ah], 0
jz      short loc_4CC16D
push    80h
push    0
push    8000000h
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     ecx, 4000h
jmp     short loc_4CC185

loc_4CC16D:
push    80h
push    0
push    8000000h
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     ecx, 8000h

loc_4CC185:
xor     ebx, ebx
mov     edx, 20h ; ' '
lea     eax, [esp+2Ch+var_18]
call    sub_4E01FC
mov     eax, esi
call    sub_4326CA

loc_4CC19C:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 3Ch ; '<'
mov     eax, esi
call    sub_4ED88B
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CC0F6 endp




sub_4CC1B7 proc near
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0Bh], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     word ptr [eax+7Ch], 0
mov     eax, [eax+62h]
sar     eax, 10h
call    sub_4EF008
neg     eax
imul    eax, [ecx+9Ch]
shr     eax, 4
mov     [ecx+44h], ax
mov     ax, [ecx+0A0h]
neg     eax
shl     eax, 8
mov     [ecx+46h], ax
mov     eax, [ecx+62h]
sar     eax, 10h
call    sub_4EF003
neg     eax
imul    eax, [ecx+9Ch]
shr     eax, 4
mov     [ecx+48h], ax
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 200h
mov     word ptr [ecx+50h], 0
mov     dword ptr [ecx+9Ch], 0
mov     dword ptr [ecx+88h], 3D48000Eh
mov     dword ptr [ecx+8Ch], 2C808080h
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     edx, [ecx+42h]
sar     edx, 10h
shl     edx, 0Ah
mov     eax, [ecx+1Ch]
sub     eax, edx
mov     [ecx+34h], eax
mov     eax, [ecx+20h]
mov     [ecx+38h], eax
mov     edx, [ecx+46h]
sar     edx, 10h
shl     edx, 0Ah
mov     eax, [ecx+24h]
sub     eax, edx
mov     [ecx+3Ch], eax
lea     edx, [ecx+2Ch]
lea     eax, [ecx+34h]
call    sub_4DD57B
mov     dword ptr [ecx+78h], 0
test    byte ptr [ecx+3], 80h
jz      short loc_4CC2B8
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C60[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C62[eax*4]
jmp     short loc_4CC2D8

loc_4CC2B8:
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C48[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C4A[eax*4]

loc_4CC2D8:
mov     [ecx+97h], al
mov     word ptr [ecx+98h], 20h ; ' '
or      byte ptr [ecx], 2
mov     byte ptr [ecx+74h], 1
mov     eax, ecx
call    sub_4CC833
test    ax, ax
jz      short loc_4CC302
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+0Dh], 0

loc_4CC302:
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
sub     eax, 10h
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
and     byte ptr [ecx+0Eh], 0FBh
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4CC1B7 endp




sub_4CC330 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
test    byte ptr [eax+9Fh], 20h
jz      short loc_4CC387
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF008
neg     eax
shl     eax, 5
sar     eax, 4
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 0F000h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF003
neg     eax
shl     eax, 5
sar     eax, 4
mov     [ecx+48h], ax
mov     byte ptr [ecx+0Ah], 1
mov     dword ptr [ecx+9Ch], 0
jmp     short loc_4CC3CA

loc_4CC387:
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_4CC3C1
test    byte ptr [ecx+9Fh], 1Ch

loc_4CC394:
jz      short loc_4CC3CA

loc_4CC396:
mov     dword ptr [ecx+9Ch], 0
call    sub_4DE13B
test    eax, eax
jz      short loc_4CC3B2
mov     edx, eax
mov     eax, ecx
call    sub_4CCA46

loc_4CC3B2:
mov     byte ptr [ecx], 0
mov     eax, ecx
call    sub_4DE371
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4CC3C1:
test    byte ptr [ecx+9Fh], 1Ah
jmp     short loc_4CC394

loc_4CC3CA:
mov     dword ptr [ecx+9Ch], 0
test    byte ptr [ecx+3], 1
jnz     short loc_4CC3E3
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4CC3E9
jmp     short loc_4CC396

loc_4CC3E3:
mov     word ptr [ecx+7Ch], 0

loc_4CC3E9:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ecx+8Ch], 2C808080h
test    byte ptr [ecx+3], 80h
jz      short loc_4CC42D
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C60[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C62[eax*4]
jmp     short loc_4CC44D

loc_4CC42D:
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C48[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C4A[eax*4]

loc_4CC44D:
mov     [ecx+97h], al
mov     eax, ecx
call    sub_4CC99B
lea     edx, [ecx+2Ch]
lea     eax, [ecx+34h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4CC833
test    ax, ax
jz      short loc_4CC484
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+0Dh], 0

loc_4CC484:
mov     ah, [ecx+0Ch]
cmp     ah, 96h
jb      short loc_4CC496
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+0Dh], 0
jmp     short loc_4CC49D

loc_4CC496:
mov     dl, ah
inc     dl
mov     [ecx+0Ch], dl

loc_4CC49D:
mov     byte ptr [ecx+76h], 0
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
sub     eax, 10h
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4CC330 endp




sub_4CC4CA proc near
push    ecx
push    edx
mov     ecx, eax
mov     dword ptr [eax+88h], 3D48000Eh
mov     dword ptr [eax+8Ch], 2C808080h
mov     eax, [eax+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+90h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+92h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+94h], ax
test    byte ptr [ecx+3], 80h
jz      short loc_4CC53D
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C60[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C62[eax*4]
jmp     short loc_4CC55D

loc_4CC53D:
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C48[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C4A[eax*4]

loc_4CC55D:
mov     [ecx+97h], al
mov     word ptr [ecx+98h], 20h ; ' '
call    sub_4DE13B
test    eax, eax
jz      short loc_4CC57E
mov     edx, eax
mov     eax, ecx
call    sub_4CCA46

loc_4CC57E:
mov     byte ptr [ecx], 0
mov     eax, ecx
call    sub_4DE371
pop     edx
pop     ecx
retn
sub_4CC4CA endp




sub_4CC58B proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
test    byte ptr [eax+9Fh], 20h
jz      short loc_4CC5F8
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF008
neg     eax
shl     eax, 5
sar     eax, 4
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 0F000h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF003
neg     eax
shl     eax, 5
sar     eax, 4
mov     [ecx+48h], ax
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [ecx+8], 1
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 200h
mov     word ptr [ecx+50h], 0
mov     dword ptr [ecx+9Ch], 0
jmp     short loc_4CC635

loc_4CC5F8:
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_4CC62C
test    byte ptr [ecx+9Fh], 1Ch

loc_4CC605:
jz      short loc_4CC635
mov     dword ptr [ecx+9Ch], 0
call    sub_4DE13B
test    eax, eax
jz      loc_4CC760
mov     edx, eax
mov     eax, ecx
call    sub_4CCA46
jmp     loc_4CC760

loc_4CC62C:
test    byte ptr [ecx+9Fh], 1Ah
jmp     short loc_4CC605

loc_4CC635:
mov     dword ptr [ecx+9Ch], 0
cmp     word ptr [ecx+44h], 0
jnz     short loc_4CC654
cmp     word ptr [ecx+46h], 0
jnz     short loc_4CC654
cmp     word ptr [ecx+48h], 0
jz      short loc_4CC6A2

loc_4CC654:
test    byte ptr [ecx+3], 80h
jz      short loc_4CC67C
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C60[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C62[eax*4]
jmp     short loc_4CC69C

loc_4CC67C:
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C48[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C4A[eax*4]

loc_4CC69C:
mov     [ecx+97h], al

loc_4CC6A2:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, ecx
call    sub_4CC99B
lea     edx, [ecx+2Ch]
lea     eax, [ecx+34h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4CC833
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
sub     eax, 10h
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
mov     al, [ecx+0Dh]
cmp     al, 1Eh
jge     short loc_4CC74E
cmp     al, 0Fh
jge     short loc_4CC70E
mov     eax, 1
jmp     short loc_4CC713

loc_4CC70E:
mov     eax, 0FFFFFFFFh

loc_4CC713:
mov     edx, [ecx+0Ah]
sar     edx, 18h
cwde
test    edx, eax
jz      short loc_4CC746
mov     eax, [ecx+8Ch]
and     eax, 0FFh
cmp     eax, 0FFh
jnz     short loc_4CC73C
mov     dword ptr [ecx+8Ch], 2C808080h
jmp     short loc_4CC746

loc_4CC73C:
mov     dword ptr [ecx+8Ch], 2CFFFFFFh

loc_4CC746:
inc     byte ptr [ecx+0Dh]
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4CC74E:
call    sub_4DE13B
test    eax, eax
jz      short loc_4CC760
mov     edx, eax
mov     eax, ecx
call    sub_4CCA46

loc_4CC760:
mov     byte ptr [ecx], 0
mov     eax, ecx
call    sub_4DE371
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4CC58B endp




sub_4CC76F proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     dword ptr [eax+88h], 3D48000Eh
mov     dword ptr [eax+8Ch], 2C808080h
mov     word ptr [eax+7Ch], 0
mov     byte ptr [eax+76h], 0
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
sub     eax, 10h
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
test    byte ptr [ecx+3], 80h
jz      short loc_4CC7FC
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C60[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C62[eax*4]
jmp     short loc_4CC81C

loc_4CC7FC:
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C48[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C4A[eax*4]

loc_4CC81C:
mov     [ecx+97h], al
mov     word ptr [ecx+98h], 20h ; ' '
or      byte ptr [ecx], 2
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4CC76F endp




sub_4CC833 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebx, eax
xor     edx, edx
mov     [esp+1Ch+var_1C], edx
call    sub_42DE56
mov     ebp, eax
test    eax, eax
jz      loc_4CC98E
test    ah, 10h
jz      loc_4CC93F
cmp     word ptr [ebx+46h], 0
jge     short loc_4CC86C
mov     eax, [ebx+44h]
sar     eax, 10h
neg     eax
jmp     short loc_4CC872

loc_4CC86C:
mov     eax, [ebx+44h]
sar     eax, 10h

loc_4CC872:
cmp     eax, 0A00h
jg      short loc_4CC8A6
mov     word ptr [ebx+44h], 0
mov     word ptr [ebx+46h], 0
mov     word ptr [ebx+48h], 0
mov     word ptr [ebx+4Ch], 0
mov     word ptr [ebx+4Eh], 0
mov     word ptr [ebx+50h], 0
mov     [esp+1Ch+var_1C], 1
jmp     short loc_4CC8DB

loc_4CC8A6:
mov     edx, [ebx+44h]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 5
test    eax, eax
jge     short loc_4CC8BC
neg     eax

loc_4CC8BC:
sar     eax, 8
mov     [ebx+46h], ax
mov     eax, [ebx+42h]
sar     eax, 10h
sar     eax, 1
mov     [ebx+44h], ax
mov     eax, [ebx+46h]
sar     eax, 10h
sar     eax, 1
mov     [ebx+48h], ax

loc_4CC8DB:
cmp     ds:byte_77E7D4, 0Bh
jnz     short loc_4CC927
mov     eax, [ebx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4CC927
mov     eax, ebx
call    sub_4DE3AC
lea     edx, [ebx+14h]
mov     eax, 102h
call    sub_4D8BC3
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4CC91E
mov     ecx, 11h
lea     edi, [eax+14h]
lea     esi, [ebx+88h]
rep movsd

loc_4CC91E:
mov     eax, ebx
call    sub_4CCA6A
jmp     short loc_4CC984

loc_4CC927:
lea     edx, [ebx+14h]
mov     eax, 0B3h
call    sub_4D8BC3
call    sub_4DE13B
test    eax, eax
jz      short loc_4CC984
jmp     short loc_4CC969

loc_4CC93F:
cmp     ds:byte_77E7D4, 0Bh
jnz     short loc_4CC953
mov     eax, [ebx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jz      short loc_4CC960

loc_4CC953:
lea     edx, [ebx+14h]
mov     eax, 0B3h
call    sub_4D8BC3

loc_4CC960:
call    sub_4DE13B
test    eax, eax
jz      short loc_4CC984

loc_4CC969:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
mov     ecx, 11h
lea     edi, [eax+14h]
lea     esi, [ebx+88h]
rep movsd

loc_4CC984:
lea     eax, [ebx+44h]
mov     edx, ebp
call    sub_42D90F

loc_4CC98E:
mov     eax, [esp+1Ch+var_1C]
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CC833 endp




sub_4CC99B proc near
push    edx
mov     dx, [eax+4Ch]
add     [eax+44h], dx
mov     dx, [eax+4Eh]
add     [eax+46h], dx
mov     dx, [eax+50h]
add     [eax+48h], dx
mov     edx, [eax+42h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4CC9CA
mov     word ptr [eax+44h], 0A000h
jmp     short loc_4CC9D8

loc_4CC9CA:
cmp     word ptr [eax+44h], 6000h
jle     short loc_4CC9D8
mov     word ptr [eax+44h], 6000h

loc_4CC9D8:
mov     edx, [eax+44h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4CC9EE
mov     word ptr [eax+46h], 0A000h
jmp     short loc_4CC9FC

loc_4CC9EE:
cmp     word ptr [eax+46h], 6000h
jle     short loc_4CC9FC
mov     word ptr [eax+46h], 6000h

loc_4CC9FC:
mov     edx, [eax+46h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4CCA12
mov     word ptr [eax+48h], 0A000h
jmp     short loc_4CCA20

loc_4CCA12:
cmp     word ptr [eax+48h], 6000h
jle     short loc_4CCA20
mov     word ptr [eax+48h], 6000h

loc_4CCA20:
mov     edx, [eax+42h]
sar     edx, 10h
shl     edx, 8
add     [eax+1Ch], edx
mov     edx, [eax+44h]
sar     edx, 10h
shl     edx, 8
add     [eax+20h], edx
mov     edx, [eax+46h]
sar     edx, 10h
shl     edx, 8
add     [eax+24h], edx
pop     edx
retn
sub_4CC99B endp




sub_4CCA46 proc near
push    esi
push    edi
mov     byte ptr [edx], 5
mov     byte ptr [edx+2], 80h
cmp     byte ptr [eax+0Ah], 0
jz      short loc_4CCA5B
mov     byte ptr [edx+3], 2
jmp     short loc_4CCA5F

loc_4CCA5B:
mov     byte ptr [edx+3], 42h ; 'B'

loc_4CCA5F:
lea     edi, [edx+48h]
lea     esi, [eax+14h]
movsd
movsd
pop     edi
pop     esi
retn
sub_4CCA46 endp




sub_4CCA6A proc near
push    esi
push    edi
mov     byte ptr [edx], 1
mov     byte ptr [edx+2], 19h
mov     byte ptr [edx+3], 0
jmp     short loc_4CCA5F
sub_4CCA6A endp




sub_4CCA79 proc near
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+8]
lea     edx, [eax+0E0h]
call    ds:funcs_4CCA86[ecx*4]
pop     edx
pop     ecx
retn
sub_4CCA79 endp

db 90h
jpt_4CCB9A dd offset loc_4CCBA1 ; jump table for switch statement
dd offset loc_4CCBB5
dd offset loc_4CCBC3
dd offset loc_4CCBCF
dd offset loc_4CCBCF
dd offset loc_4CCBC3
dd offset loc_4CCBB5
dd offset loc_4CCBA1



sub_4CCAB1 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
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
mov     byte ptr [edx], 0
mov     byte ptr [edx+1], 0
mov     word ptr [edx+4], 0
mov     word ptr [edx+6], 0
call    rand_
mov     bl, [ecx+3]
cmp     bl, 1
jb      short loc_4CCB00
jbe     short loc_4CCB08
cmp     bl, 2
jz      loc_4CCB8C
jmp     loc_4CCC43

loc_4CCB00:
test    bl, bl
jnz     loc_4CCC43

loc_4CCB08:
mov     ebx, eax
xor     bh, ah
and     bl, 0Fh
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_4CCB39
mov     si, [ecx+14h]
sub     esi, 1900h
sub     esi, ebx
mov     [edx+0Ah], si
cwde
sar     eax, 2
and     eax, 3
mov     ebx, 0FFFFFFB0h
sub     ebx, eax
mov     [ecx+44h], bx
jmp     short loc_4CCB57

loc_4CCB39:
mov     si, [ecx+14h]
add     esi, 1900h
add     esi, ebx
mov     [edx+0Ah], si
cwde
sar     eax, 2
and     eax, 3
add     eax, 50h ; 'P'
mov     [ecx+44h], ax

loc_4CCB57:
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     dword ptr [ecx+88h], 3D08000Eh
mov     dword ptr [ecx+8Ch], 2C808080h
mov     al, ds:byte_538CA4
mov     [ecx+96h], al
mov     al, ds:byte_538CA5
jmp     loc_4CCC3D

loc_4CCB8C:
mov     bl, [ecx+0Ch]
cmp     bl, 7           ; switch 8 cases
ja      short def_4CCB9A ; jumptable 004CCB9A default case
and     ebx, 0FFh
jmp     jpt_4CCB9A[ebx*4] ; switch jump

loc_4CCBA1:             ; jumptable 004CCB9A cases 0,7
mov     ebx, eax
xor     bh, ah
and     bl, 0Fh
mov     esi, 0FFFFFFE0h

loc_4CCBAD:
sub     esi, ebx
mov     [ecx+4Ch], si
jmp     short def_4CCB9A ; jumptable 004CCB9A default case

loc_4CCBB5:             ; jumptable 004CCB9A cases 1,6
mov     ebx, eax
xor     bh, ah
and     bl, 7
mov     esi, 0FFFFFFF0h
jmp     short loc_4CCBAD

loc_4CCBC3:             ; jumptable 004CCB9A cases 2,5
mov     ebx, eax
xor     bh, ah
and     bl, 7
add     ebx, 10h
jmp     short loc_4CCBD9

loc_4CCBCF:             ; jumptable 004CCB9A cases 3,4
mov     ebx, eax
xor     bh, ah
and     bl, 0Fh
add     ebx, 20h ; ' '

loc_4CCBD9:
mov     [ecx+4Ch], bx

def_4CCB9A:             ; jumptable 004CCB9A default case
test    byte ptr [ecx+0Ch], 1
jnz     short loc_4CCBF9
movsx   ebx, ax
sar     ebx, 3
and     ebx, 0Fh
mov     esi, 0FFFFFFE0h
sub     esi, ebx
mov     [ecx+4Eh], si
jmp     short loc_4CCC09

loc_4CCBF9:
movsx   ebx, ax
sar     ebx, 3
and     ebx, 0Fh
add     ebx, 20h ; ' '
mov     [ecx+4Eh], bx

loc_4CCC09:
mov     word ptr [ecx+50h], 0FFF0h
cwde
sar     eax, 6
and     eax, 0Fh
mov     [edx+0Eh], al
mov     dword ptr [ecx+88h], 3C48000Eh
mov     dword ptr [ecx+8Ch], 2C808080h
mov     al, ds:byte_538CB0
mov     [ecx+96h], al
mov     al, ds:byte_538CB1

loc_4CCC3D:
mov     [ecx+97h], al

loc_4CCC43:
movsx   ax, byte ptr [ecx+0Dh]
add     eax, eax
movsx   bx, byte ptr [ecx+0Fh]
add     ebx, eax
mov     [edx+0Ch], bx
mov     dword ptr [ecx+0D8h], 0
mov     eax, [ecx+0D8h]
mov     [ecx+0D4h], eax
mov     [ecx+0D0h], eax
mov     [ecx+0CCh], eax
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
mov     word ptr [ecx+98h], 40h ; '@'
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4CCAB1 endp




sub_4CCCB6 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ebx, edx
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
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
call    rand_
mov     [edx+2], ax
movzx   esi, byte ptr [ecx+3]
mov     eax, ecx
call    ds:funcs_4CCCE7[esi*4]
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
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
mov     edx, ebx
mov     eax, ecx
call    sub_4CD2F2
mov     ah, [ebx]
test    ah, 1
jz      short loc_4CCD52
mov     dl, ah
and     dl, 0FEh
mov     [ebx], dl
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0

loc_4CCD52:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4CCCB6 endp




sub_4CCD57 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+9]
test    al, al
jbe     short loc_4CCD6B
cmp     al, 1
jz      short loc_4CCD92
pop     edi
pop     esi
pop     ecx
retn

loc_4CCD6B:
call    sub_4DE13B
test    eax, eax
jz      short loc_4CCD8B
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd
mov     byte ptr [eax+0Dh], 0

loc_4CCD8B:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_4CCD92:
mov     eax, ecx
call    sub_4DE371
pop     edi
pop     esi
pop     ecx
retn
sub_4CCD57 endp




sub_4CCD9D proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
mov     dx, [eax+44h]
add     [eax+14h], dx
mov     dx, [eax+46h]
add     [eax+16h], dx
mov     dx, [eax+48h]
mov     ax, [eax+18h]
add     eax, edx
mov     [ecx+18h], ax

loc_4CCDC2:
xor     edx, edx
mov     dl, [ebx+1]
sar     edx, 1
mov     esi, 6
mov     eax, edx
sar     edx, 1Fh
idiv    esi
and     edx, 0FFh
mov     al, ds:byte_538CA4[edx*2]
mov     [ecx+96h], al
mov     al, ds:byte_538CA5[edx*2]
mov     [ecx+97h], al
inc     byte ptr [ebx+1]
pop     esi
pop     ecx
pop     ebx
retn
sub_4CCD9D endp

db 90h
jpt_4CCE23 dd offset loc_4CCE2A ; jump table for switch statement
dd offset loc_4CCE54
dd offset loc_4CCE83
dd offset def_4CCE23



sub_4CCE0D proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4CCE23      ; jumptable 004CCE23 default case, case 3
xor     edx, edx
mov     dl, al
jmp     jpt_4CCE23[edx*4] ; switch jump

loc_4CCE2A:             ; jumptable 004CCE23 case 0
call    rand_
xor     ah, ah
and     al, 7
imul    eax, 84h
add     eax, 3A0h
mov     [ebx+8], ax
cmp     byte ptr [ecx+0Ch], 1
jnz     short loc_4CCE4F
imul    eax, -1
mov     [ebx+8], ax

loc_4CCE4F:
inc     byte ptr [ecx+9]
jmp     short def_4CCE23 ; jumptable 004CCE23 default case, case 3

loc_4CCE54:             ; jumptable 004CCE23 case 1
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_4CCE71
mov     esi, [ecx+12h]
sar     esi, 10h
mov     edx, [ebx+6]
sar     edx, 10h
cmp     esi, edx
jge     short def_4CCE23 ; jumptable 004CCE23 default case, case 3

loc_4CCE6A:
inc     al
mov     [ecx+9], al
jmp     short def_4CCE23 ; jumptable 004CCE23 default case, case 3

loc_4CCE71:
mov     esi, [ecx+12h]
sar     esi, 10h
mov     edx, [ebx+6]
sar     edx, 10h
cmp     esi, edx
jle     short def_4CCE23 ; jumptable 004CCE23 default case, case 3
jmp     short loc_4CCE6A

loc_4CCE83:             ; jumptable 004CCE23 case 2
cmp     word ptr [ebx+4], 10h
jge     short loc_4CCE6A
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_4CCE96
inc     word ptr [ecx+44h]
jmp     short loc_4CCE9A

loc_4CCE96:
dec     word ptr [ecx+44h]

loc_4CCE9A:
inc     word ptr [ecx+46h]
inc     word ptr [ebx+4]

def_4CCE23:             ; jumptable 004CCE23 default case, case 3
mov     ax, [ecx+44h]
add     [ecx+14h], ax
mov     ax, [ecx+46h]
add     [ecx+16h], ax
mov     ax, [ecx+48h]
add     [ecx+18h], ax
jmp     loc_4CCDC2
sub_4CCE0D endp

db 8Bh, 0C0h
jpt_4CCF24 dd offset loc_4CCF2B ; jump table for switch statement
dd offset loc_4CCFE6
dd offset loc_4CD03B
dd offset loc_4CD10A



sub_4CCED1 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
mov     eax, [eax+0DCh]
mov     ax, [eax]
mov     dx, [ebx+14h]
sub     eax, edx
mov     [ecx+10h], ax
mov     eax, [ebx+0DCh]
mov     ax, [eax+2]
mov     si, [ebx+16h]
sub     eax, esi
mov     [ecx+12h], ax
mov     eax, [ebx+0DCh]
mov     ax, [eax+4]
mov     di, [ebx+18h]
sub     eax, edi
mov     [ecx+14h], ax
mov     al, [ebx+9]
cmp     al, 3           ; switch 4 cases
ja      def_4CCF24      ; jumptable 004CCF24 default case
and     eax, 0FFh
jmp     jpt_4CCF24[eax*4] ; switch jump

loc_4CCF2B:             ; jumptable 004CCF24 case 0
cmp     word ptr [ecx+4], 10h
jge     loc_4CCFB4
mov     edx, [ebx+4Ah]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     edx, [ecx+2]
sar     edx, 10h
mov     esi, 10h
sub     esi, edx
imul    eax, esi
mov     [ebx+44h], ax
mov     edx, [ebx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     edx, [ecx+2]
sar     edx, 10h
mov     esi, 10h
sub     esi, edx
imul    eax, esi
mov     [ebx+46h], ax
mov     edx, [ebx+4Eh]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     edx, [ecx+2]
sar     edx, 10h
mov     esi, 10h
sub     esi, edx
imul    eax, esi
mov     [ebx+48h], ax
inc     word ptr [ecx+4]
jmp     def_4CCF24      ; jumptable 004CCF24 default case

loc_4CCFB4:
mov     word ptr [ecx+4], 0
mov     word ptr [ebx+44h], 0
mov     word ptr [ebx+46h], 0
mov     word ptr [ebx+48h], 0
mov     word ptr [ebx+4Ch], 0
mov     word ptr [ebx+4Eh], 0
mov     word ptr [ebx+50h], 0

loc_4CCFDE:
inc     byte ptr [ebx+9]
jmp     def_4CCF24      ; jumptable 004CCF24 default case

loc_4CCFE6:             ; jumptable 004CCF24 case 1
cmp     word ptr [ecx+4], 40h ; '@'
jge     short loc_4CCFB4
mov     eax, [ecx+2]
sar     eax, 10h
sar     eax, 2
cmp     eax, 6
jb      short loc_4CD00B
jbe     short loc_4CD01C
cmp     eax, 0Ah
jb      short loc_4CD02A
jbe     short loc_4CD014
cmp     eax, 0Eh
jz      short loc_4CD024
jmp     short loc_4CD02A

loc_4CD00B:
test    eax, eax
jbe     short loc_4CD024
cmp     eax, 2
jnz     short loc_4CD02A

loc_4CD014:
mov     word ptr [ebx+4Eh], 0
jmp     short loc_4CD02A

loc_4CD01C:
mov     word ptr [ebx+4Eh], 0FFFFh
jmp     short loc_4CD02A

loc_4CD024:
mov     word ptr [ebx+4Eh], 1

loc_4CD02A:
inc     word ptr [ecx+4]
mov     ax, [ebx+4Eh]
add     [ebx+46h], ax
jmp     def_4CCF24      ; jumptable 004CCF24 default case

loc_4CD03B:             ; jumptable 004CCF24 case 2
cmp     word ptr [ecx+10h], 0
jle     short loc_4CD049
mov     eax, 4
jmp     short loc_4CD04E

loc_4CD049:
mov     eax, 0FFFFFFFCh

loc_4CD04E:
mov     edx, [ecx+0Eh]
sar     edx, 10h
sar     edx, 6
add     eax, edx
mov     [ebx+44h], ax
cmp     word ptr [ecx+12h], 0
jle     short loc_4CD06B
mov     eax, 4
jmp     short loc_4CD070

loc_4CD06B:
mov     eax, 0FFFFFFFCh

loc_4CD070:
mov     edx, [ecx+10h]
sar     edx, 10h
sar     edx, 6
add     eax, edx
mov     [ebx+46h], ax
cmp     word ptr [ecx+14h], 0
jle     short loc_4CD08D
mov     eax, 4
jmp     short loc_4CD092

loc_4CD08D:
mov     eax, 0FFFFFFFCh

loc_4CD092:
mov     edx, [ecx+12h]
sar     edx, 10h
sar     edx, 6
add     eax, edx
mov     [ebx+48h], ax
cmp     word ptr [ecx+10h], 0
jge     short loc_4CD0B2
mov     eax, [ecx+0Eh]
sar     eax, 10h
neg     eax
jmp     short loc_4CD0B8

loc_4CD0B2:
mov     eax, [ecx+0Eh]
sar     eax, 10h

loc_4CD0B8:
cmp     eax, 400h
jl      short loc_4CD0FF
cmp     word ptr [ecx+12h], 0
jge     short loc_4CD0D0
mov     eax, [ecx+10h]
sar     eax, 10h
neg     eax
jmp     short loc_4CD0D6

loc_4CD0D0:
mov     eax, [ecx+10h]
sar     eax, 10h

loc_4CD0D6:
cmp     eax, 400h
jl      short loc_4CD0FF
cmp     word ptr [ecx+14h], 0
jge     short loc_4CD0EE
mov     eax, [ecx+12h]
sar     eax, 10h
neg     eax
jmp     short loc_4CD0F4

loc_4CD0EE:
mov     eax, [ecx+12h]
sar     eax, 10h

loc_4CD0F4:
cmp     eax, 400h
jge     def_4CCF24      ; jumptable 004CCF24 default case

loc_4CD0FF:
mov     word ptr [ecx+4], 0
jmp     loc_4CCFDE

loc_4CD10A:             ; jumptable 004CCF24 case 3
cmp     byte ptr [ecx+0Eh], 0
jnz     short loc_4CD172
cmp     word ptr [ecx+10h], 0
jle     short loc_4CD11E
mov     eax, 0Ch
jmp     short loc_4CD123

loc_4CD11E:
mov     eax, 0FFFFFFF4h

loc_4CD123:
mov     edx, [ecx+0Eh]
sar     edx, 10h
sar     edx, 4
add     eax, edx
mov     [ebx+44h], ax
cmp     word ptr [ecx+12h], 0
jle     short loc_4CD140
mov     eax, 0Ch
jmp     short loc_4CD145

loc_4CD140:
mov     eax, 0FFFFFFF4h

loc_4CD145:
mov     edx, [ecx+10h]
sar     edx, 10h
sar     edx, 4
add     eax, edx
mov     [ebx+46h], ax
cmp     word ptr [ecx+14h], 0
jle     short loc_4CD162
mov     eax, 0Ch
jmp     short loc_4CD167

loc_4CD162:
mov     eax, 0FFFFFFF4h

loc_4CD167:
mov     edx, [ecx+12h]
sar     edx, 10h
sar     edx, 4
jmp     short loc_4CD1D2

loc_4CD172:
cmp     word ptr [ecx+10h], 0
jle     short loc_4CD180
mov     eax, 8
jmp     short loc_4CD185

loc_4CD180:
mov     eax, 0FFFFFFF8h

loc_4CD185:
mov     edx, [ecx+0Eh]
sar     edx, 10h
sar     edx, 5
add     eax, edx
mov     [ebx+44h], ax
cmp     word ptr [ecx+12h], 0
jle     short loc_4CD1A2
mov     eax, 8
jmp     short loc_4CD1A7

loc_4CD1A2:
mov     eax, 0FFFFFFF8h

loc_4CD1A7:
mov     edx, [ecx+10h]
sar     edx, 10h
sar     edx, 5
add     eax, edx
mov     [ebx+46h], ax
cmp     word ptr [ecx+14h], 0
jle     short loc_4CD1C4
mov     eax, 8
jmp     short loc_4CD1C9

loc_4CD1C4:
mov     eax, 0FFFFFFF8h

loc_4CD1C9:
mov     edx, [ecx+12h]
sar     edx, 10h
sar     edx, 5

loc_4CD1D2:
add     eax, edx
mov     [ebx+48h], ax
mov     si, [ecx+4]
cmp     si, 100h
jge     short loc_4CD1EC
mov     edi, esi
inc     edi
mov     [ecx+4], di
jmp     short loc_4CD1F5

loc_4CD1EC:
mov     word ptr [ecx+4], 0
or      byte ptr [ecx], 1

loc_4CD1F5:
cmp     word ptr [ecx+10h], 0
jge     short loc_4CD206
mov     eax, [ecx+0Eh]
sar     eax, 10h
neg     eax
jmp     short loc_4CD20C

loc_4CD206:
mov     eax, [ecx+0Eh]
sar     eax, 10h

loc_4CD20C:
cmp     eax, 28h ; '('
jge     short def_4CCF24 ; jumptable 004CCF24 default case
cmp     word ptr [ecx+12h], 0
jge     short loc_4CD222
mov     eax, [ecx+10h]
sar     eax, 10h
neg     eax
jmp     short loc_4CD228

loc_4CD222:
mov     eax, [ecx+10h]
sar     eax, 10h

loc_4CD228:
cmp     eax, 28h ; '('
jge     short def_4CCF24 ; jumptable 004CCF24 default case
cmp     word ptr [ecx+14h], 0
jge     short loc_4CD23E
mov     eax, [ecx+12h]
sar     eax, 10h
neg     eax
jmp     short loc_4CD244

loc_4CD23E:
mov     eax, [ecx+12h]
sar     eax, 10h

loc_4CD244:
cmp     eax, 28h ; '('
jge     short def_4CCF24 ; jumptable 004CCF24 default case
mov     word ptr [ecx+4], 0
or      byte ptr [ecx], 1

def_4CCF24:             ; jumptable 004CCF24 default case
mov     eax, [ecx]
sar     eax, 10h
sar     eax, 2
and     eax, 3
mov     edx, [ebx+42h]
sar     edx, 10h
add     edx, eax
mov     eax, [ebx+12h]
sar     eax, 10h
add     eax, edx
mov     [ebx+14h], ax
mov     edx, [ecx]
sar     edx, 10h
sar     edx, 4
and     edx, 3
mov     eax, [ebx+44h]
sar     eax, 10h
add     edx, eax
mov     eax, [ebx+14h]
sar     eax, 10h
add     eax, edx
mov     [ebx+16h], ax
mov     ax, [ebx+48h]
add     [ebx+18h], ax
cmp     byte ptr [ebx+9], 0
jnz     short loc_4CD2B9
mov     al, ds:byte_538CB0
mov     [ebx+96h], al
mov     al, ds:byte_538CB1
mov     [ebx+97h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4CD2B9:
xor     edx, edx
mov     dl, [ecx+1]
sar     edx, 1
mov     esi, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    esi
xor     eax, eax
mov     al, dl
mov     dl, ds:byte_538CB0[eax*2]
mov     [ebx+96h], dl
mov     al, ds:byte_538CB1[eax*2]
mov     [ebx+97h], al
inc     byte ptr [ecx+1]
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4CCED1 endp




sub_4CD2F2 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     edi, edx
test    byte ptr [eax+0CFh], 0Ah
jz      short loc_4CD30B
or      byte ptr [edx], 1
jmp     loc_4CD38A

loc_4CD30B:
cmp     byte ptr [esi+0Eh], 0
jnz     short loc_4CD315
xor     eax, eax
jmp     short loc_4CD31A

loc_4CD315:
mov     eax, 80h

loc_4CD31A:
mov     ecx, eax
mov     al, [esi+3]
cmp     al, 1
jb      short loc_4CD327
jbe     short loc_4CD32B
jmp     short loc_4CD35A

loc_4CD327:
test    al, al
jnz     short loc_4CD35A

loc_4CD32B:
cmp     byte ptr [esi+0Ch], 0
jnz     short loc_4CD341
mov     edx, [esi+12h]
sar     edx, 10h
mov     eax, [edi+8]
sar     eax, 10h
cmp     edx, eax
jl      short loc_4CD357

loc_4CD341:
cmp     byte ptr [esi+0Ch], 1
jnz     short loc_4CD35A
mov     edx, [esi+12h]
sar     edx, 10h
mov     eax, [edi+8]
sar     eax, 10h
cmp     edx, eax
jle     short loc_4CD35A

loc_4CD357:
or      byte ptr [edi], 1

loc_4CD35A:
push    ecx
push    0
mov     eax, [edi+0Ah]
sar     eax, 10h
or      eax, 4000000h
push    eax
lea     eax, [esi+0CCh]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
lea     eax, [esi+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 40h ; '@'
call    sub_4E01FC

loc_4CD38A:
mov     dword ptr [esi+0CCh], 0
mov     eax, esi
call    sub_42CE47
test    eax, eax
jz      short loc_4CD3A2
or      byte ptr [edi], 1

loc_4CD3A2:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4CD2F2 endp




sub_4CD3A7 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4CD3AD[edx*4]
pop     edx
retn
sub_4CD3A7 endp

db 90h
jpt_4CD475 dd offset loc_4CD493 ; jump table for switch statement
dd offset loc_4CD52F
dd offset loc_4CD54B
dd offset loc_4CD47C



sub_4CD3C7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     ah, [eax]
or      ah, 22h
mov     [ecx], ah
mov     dword ptr [ecx+10h], 0
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+88h], 3D08000Eh
mov     dword ptr [ecx+8Ch], 2C808080h
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+90h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+92h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+94h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     byte ptr [ecx+96h], 0E0h
mov     byte ptr [ecx+97h], 20h ; ' '
mov     word ptr [ecx+98h], 20h ; ' '
mov     word ptr [ecx+9Ah], 0
mov     byte ptr [ecx+0Dh], 14h
mov     al, [ecx+3]
cmp     al, 3           ; switch 4 cases
ja      def_4CD475      ; jumptable 004CD475 default case
and     eax, 0FFh
jmp     jpt_4CD475[eax*4] ; switch jump

loc_4CD47C:             ; jumptable 004CD475 case 3
mov     word ptr [ecx+98h], 30h ; '0'
mov     dword ptr [ecx+8Ch], 2C8080FFh
mov     byte ptr [ecx+0Dh], 28h ; '('

loc_4CD493:             ; jumptable 004CD475 case 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 78h ; 'x'
mov     byte ptr [ecx+0Eh], 0
mov     eax, [ecx+62h]
sar     eax, 10h
call    sub_4EF008
neg     eax
mov     ebx, eax
shl     eax, 3
add     eax, ebx
shl     eax, 2
sar     eax, 0Ch
mov     [ecx+44h], ax
mov     eax, [edx+4E8h]
sar     eax, 10h
mov     ebx, [ecx+14h]
sar     ebx, 10h
sub     eax, ebx
mov     ebx, eax
mov     eax, ecx
call    sub_4DD64B
lea     edx, [eax+24h]
mov     esi, 24h ; '$'
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     esi, eax
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    esi
mov     [ecx+46h], ax
mov     eax, [ecx+62h]
sar     eax, 10h
call    sub_4EF003
neg     eax
mov     edx, eax
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 0Ch
mov     [ecx+48h], ax
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
jmp     short def_4CD475 ; jumptable 004CD475 default case

loc_4CD52F:             ; jumptable 004CD475 case 1
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 3Ch ; '<'
mov     byte ptr [ecx+0Eh], 0
mov     word ptr [ecx+44h], 200h
jmp     short loc_4CD56B

loc_4CD54B:             ; jumptable 004CD475 case 2
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 3Ch ; '<'
mov     byte ptr [ecx+0Eh], 0
movsx   ax, byte ptr [ecx+0Ch]
shl     eax, 4
mov     [ecx+44h], ax

loc_4CD56B:
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     word ptr [ecx+54h], 0
mov     ax, [ecx+64h]
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0

def_4CD475:             ; jumptable 004CD475 default case
mov     eax, ecx
call    sub_42CE47
test    eax, eax
jz      short loc_4CD5AF
mov     eax, ecx
call    sub_4DE371

loc_4CD5AF:
mov     dword ptr [ecx+9Ch], 0
lea     edx, [ecx+14h]
mov     eax, 1AFh
call    sub_4D8BC3
jmp     loc_4CD744
sub_4CD3C7 endp




sub_4CD5CB proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
mov     ah, [eax+0Bh]
dec     ah
mov     [ebp+0Bh], ah
jnz     short loc_4CD5FB
mov     eax, ebp
call    sub_4DE371
jmp     loc_4CD70F

loc_4CD5FB:
lea     eax, [ebp+0Ah]
cmp     byte ptr [ebp+0Ah], 6
jnz     short loc_4CD60B
mov     ecx, 0FFFFFFFAh
jmp     short loc_4CD610

loc_4CD60B:
mov     ecx, 2

loc_4CD610:
xor     edx, edx
mov     dl, [eax]
add     edx, ecx
mov     [eax], dl
xor     eax, eax
mov     al, [ebp+0Ah]
mov     al, ds:byte_538CE4[eax]
mov     [ebp+96h], al
xor     eax, eax
mov     al, [ebp+0Ah]
mov     al, ds:byte_538CE5[eax]
mov     [ebp+97h], al
mov     dx, [ebp+9Ah]
add     edx, 8
mov     [ebp+9Ah], dx
mov     ebx, edx
xor     bh, dh
and     bl, 3Fh
mov     [ebp+9Ah], bx
mov     edx, [ebp+42h]
sar     edx, 10h
mov     eax, [ebp+4Ah]
sar     eax, 10h
add     eax, edx
shl     eax, 10h
add     [ebp+1Ch], eax
mov     eax, [ebp+44h]
sar     eax, 10h
shl     eax, 10h
add     [ebp+20h], eax
mov     edx, [ebp+46h]
sar     edx, 10h
mov     eax, [ebp+4Eh]
sar     eax, 10h
add     eax, edx
shl     eax, 10h
add     [ebp+24h], eax
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B
jmp     loc_4CD7BE
sub_4CD5CB endp

; START OF FUNCTION CHUNK FOR sub_4CD6E4

loc_4CD69D:
test    byte ptr [ebp+0], 1
jz      loc_4CD739
push    80h
push    0
mov     eax, [ebp+0Ah]
sar     eax, 18h
or      eax, 8000000h
push    eax
lea     eax, [ebp+9Ch]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
xor     edx, edx
mov     dx, [ebp+98h]
add     edx, 10h
lea     eax, [ebp+14h]
mov     ecx, 0A000h
xor     ebx, ebx
call    sub_4E01FC
jmp     short loc_4CD739
; END OF FUNCTION CHUNK FOR sub_4CD6E4



sub_4CD6E4 proc near

; FUNCTION CHUNK AT 004CD69D SIZE 00000047 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
mov     ah, [eax+0Bh]
dec     ah
mov     [ebp+0Bh], ah
jnz     short loc_4CD74A
mov     eax, ebp
call    sub_4DE371

loc_4CD70F:
mov     eax, ebp
call    sub_42CE47
test    eax, eax
jnz     short loc_4CD727
test    byte ptr [ebp+9Fh], 2
jz      loc_4CD69D

loc_4CD727:
mov     byte ptr [ebp+8], 4
mov     byte ptr [ebp+96h], 0
mov     byte ptr [ebp+97h], 40h ; '@'

loc_4CD739:
mov     dword ptr [ebp+9Ch], 0
pop     ebp

loc_4CD744:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4CD74A:
lea     eax, [ebp+0Ah]
cmp     byte ptr [ebp+0Ah], 6
jnz     loc_4CD835
mov     ecx, 0FFFFFFFAh

loc_4CD75C:
xor     edx, edx
mov     dl, [eax]
add     edx, ecx
mov     [eax], dl
xor     eax, eax
mov     al, [ebp+0Ah]
mov     al, ds:byte_538CE4[eax]
mov     [ebp+96h], al
xor     eax, eax
mov     al, [ebp+0Ah]
mov     al, ds:byte_538CE5[eax]
mov     [ebp+97h], al
mov     dx, [ebp+9Ah]
add     edx, 8
mov     [ebp+9Ah], dx
mov     ebx, edx
xor     bh, dh
and     bl, 3Fh
mov     [ebp+9Ah], bx
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
mov     eax, ebp
call    sub_4DD43B

loc_4CD7BE:
mov     bl, [ebp+0Eh]
test    bl, bl
jz      short loc_4CD7CC
mov     bh, bl
dec     bh
mov     [ebp+0Eh], bh

loc_4CD7CC:
mov     cl, [ebp+0Eh]
test    cl, cl
jnz     short loc_4CD80F
call    sub_4DE13B
test    eax, eax
jz      short loc_4CD80F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Fh
mov     byte ptr [eax+3], 4
mov     [eax+0Ch], cl
mov     dx, [ebp+90h]
mov     [eax+1Ch], dx
mov     dx, [ebp+92h]
mov     [eax+1Eh], dx
mov     dx, [ebp+94h]
mov     [eax+20h], dx
mov     byte ptr [ebp+0Eh], 2

loc_4CD80F:
mov     ax, [ebp+14h]
mov     [ebp+90h], ax
mov     ax, [ebp+16h]
mov     [ebp+92h], ax
mov     ax, [ebp+18h]
mov     [ebp+94h], ax
jmp     loc_4CD70F

loc_4CD835:
mov     ecx, 2
jmp     loc_4CD75C
sub_4CD6E4 endp



; Attributes: thunk

sub_4CD83F proc near
jmp     sub_4DE371
sub_4CD83F endp




sub_4CD844 proc near
push    ecx
push    edx
lea     edx, [eax+0CCh]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4CD851[ecx*4]
mov     dword ptr [edx+14h], 0
pop     edx
pop     ecx
retn
sub_4CD844 endp




sub_4CD862 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+0CCh]
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     [ecx+34h], eax
test    byte ptr [edx+0Eh], 1
jnz     short loc_4CD883
or      byte ptr [edx], 2

loc_4CD883:
mov     dword ptr [edx+54h], 0
mov     dword ptr [edx+58h], 0
mov     dword ptr [edx+64h], 0
mov     dword ptr [edx+70h], 0
mov     dword ptr [edx+74h], 0
mov     eax, [ecx+34h]
mov     eax, [eax+88h]
mov     [edx+88h], eax
movsx   ax, byte ptr [edx+0Dh]
mov     [edx+0C2h], ax
mov     word ptr [ecx], 10h
mov     dword ptr [ecx+4], 0
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx+14h], 0
lea     eax, [ecx+24h]
call    sub_4E19B4
mov     dword ptr [ecx+38h], 1000h
mov     dword ptr [ecx+3Ch], 1000h
mov     dword ptr [ecx+40h], 1000h
mov     word ptr [edx+6Eh], 400h
mov     dword ptr [edx+78h], offset unk_538D0C
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
mov     dword ptr [edx+0C4h], offset unk_808080
mov     eax, edx
call    sub_4CD927
pop     edx
pop     ecx
retn
sub_4CD862 endp




sub_4CD927 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 0CCh
mov     [esp+1Ch+var_1C], eax
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
mov     ah, [ebp+0Eh]
test    ah, 20h
jz      short loc_4CD970
mov     dl, ah
and     dl, 0DFh
mov     [ebp+0Eh], dl
mov     dword ptr [ebp+0C4h], 0FFFFFFh
jmp     short loc_4CD97A

loc_4CD970:
mov     dword ptr [ebp+0C4h], offset unk_808080

loc_4CD97A:
call    rand_
mov     ecx, [esp+1Ch+var_1C]
mov     [ecx+2], ax
test    byte ptr [ebp+0], 2
jz      loc_4CDA0F
test    byte ptr [ecx], 10h
jz      short loc_4CDA0F
mov     esi, [ebp+0Ah]
sar     esi, 18h
mov     eax, [ecx+34h]
lea     edi, [ebp+14h]
lea     esi, [eax+esi*8+190h]
movsd
movsd
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
mov     ecx, [ebp+0Ah]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 4
mov     esi, [esp+1Ch+var_1C]
mov     esi, [esi+34h]
mov     ecx, 0Ch
lea     edi, [ebp+8Ch]
lea     esi, [esi+eax+250h]
rep movsd
movsx   ax, byte ptr [ebp+0Dh]
mov     [ebp+0C2h], ax

loc_4CDA0F:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_4CDA1E
mov     eax, ebp
call    sub_4CE50D

loc_4CDA1E:
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4CDA25[ecx*4]
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_4CDA41
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
and     byte ptr [eax], 0FEh

loc_4CDA41:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+0Ah]
test    dx, dx
jz      short loc_4CDA54
mov     ebx, edx
dec     ebx
mov     [eax+0Ah], bx

loc_4CDA54:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 10h
jnz     short loc_4CDAC6
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
movsx   ax, byte ptr [ebp+0Dh]
mov     [ebp+0C2h], ax
mov     ax, [ebp+58h]
mov     ds:word_55D3C8, ax
mov     ax, [ebp+54h]
mov     ds:word_55D3CA, ax
mov     ax, [ebp+56h]
mov     ds:word_55D3CC, ax
lea     ecx, [ebp+8Ch]  ; int
mov     edx, ecx
mov     eax, offset word_55D3C8
call    sub_4EF5F7
mov     edx, 200h
mov     ds:dword_55D3D0, edx
mov     ds:dword_55D3D4, edx
mov     ds:dword_55D3D8, edx
mov     edx, offset dword_55D3D0
mov     eax, ecx
call    sub_4EF689

loc_4CDAC6:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 40h
jz      short loc_4CDB1D
mov     edi, offset word_55D3C8
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, offset dword_55D3D0
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1800h
mov     eax, ebp
call    sub_4DD43B
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
lea     edi, [ebp+14h]
mov     esi, offset word_55D3C8
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, offset dword_55D3D0
movsd
movsd
movsd
movsd

loc_4CDB1D:
test    byte ptr [ebp+0], 1
jz      loc_4CDBB9
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 8
jz      loc_4CDBB9
mov     edi, offset word_55D3C8
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, offset dword_55D3D0
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1800h
mov     eax, ebp
call    sub_4DD43B
mov     edi, [esp+1Ch+var_1C]
lea     edi, [edi+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+14h]
mov     esi, offset word_55D3C8
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, offset dword_55D3D0
movsd
movsd
movsd
movsd
push    0
push    offset unk_800000
xor     eax, eax
mov     ecx, [esp+24h+var_1C]
mov     al, [ecx+8]
or      eax, 9880000h
push    eax
lea     eax, [ecx+14h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
push    0A000h
push    200h
lea     ebx, [ebp+14h]
lea     eax, [ecx+0Ch]
mov     ecx, 40h ; '@'
mov     edx, 50h ; 'P'
call    sub_4E02CB

loc_4CDBB9:
add     esp, 4

loc_4CDBBC:
pop     ebp

loc_4CDBBD:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4CD927 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_106]


; Attributes: thunk

sub_4CDBC3 proc near
jmp     sub_4DE371
sub_4CDBC3 endp




sub_4CDBC8 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
add     eax, 0CCh
mov     [esp+24h+var_20], eax
mov     [esp+24h+var_24], offset byte_5F8364
mov     dl, [ebp+0Ah]
cmp     dl, 1
jb      short loc_4CDBFF
jbe     loc_4CDD09
cmp     dl, 2
jz      loc_4CDD76
jmp     loc_4CDDBE

loc_4CDBFF:
test    dl, dl
jnz     loc_4CDDBE
mov     byte ptr [ebp+0Ah], 1
mov     edi, offset unk_55D3E0
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, offset unk_55D3E8
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
mov     ax, word ptr ds:dword_5F83B8+2
mov     [esp+24h+var_1C], eax
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0C00h
lea     edi, [ebp+14h]
mov     esi, offset byte_5F8364
add     esi, 14h
mov     edx, edi
mov     eax, esi
call    sub_4DDDB4
mov     word ptr ds:dword_5F83B8+2, ax
test    byte ptr [ebp+0Eh], 40h
jz      short loc_4CDC62
mov     ecx, 800h
jmp     short loc_4CDC67

loc_4CDC62:
mov     ecx, 0FFFFF800h

loc_4CDC67:
xor     ebx, ebx
xor     edx, edx
mov     eax, offset byte_5F8364
call    sub_4DD43B
mov     edx, esi
mov     eax, edi
call    sub_4DDDB4
mov     [ebp+56h], ax
mov     edx, [esp+24h+var_24]
mov     edx, [edx+12h]
sar     edx, 10h
mov     eax, [ebp+12h]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     [ebp+44h], ax
mov     eax, [esp+24h+var_24]
mov     eax, [eax+16h]
sar     eax, 10h
mov     edx, [ebp+16h]
sar     edx, 10h
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     [ebp+48h], ax
mov     edi, [esp+24h+var_24]
lea     edi, [edi+14h]
mov     esi, offset unk_55D3E0
movsd
movsd
mov     edi, [esp+24h+var_24]
lea     edi, [edi+1Ch]
mov     esi, offset unk_55D3E8
movsd
movsd
movsd
movsd
mov     eax, [esp+24h+var_1C]
mov     edx, [esp+24h+var_24]
mov     [edx+56h], ax
mov     eax, [esp+24h+var_20]
mov     word ptr [eax+4], 15h
mov     byte ptr [eax+8], 0
mov     dl, [eax]
and     dl, 0AFh
mov     [eax], dl
mov     dh, dl
or      dh, 40h
mov     [eax], dh

loc_4CDD09:
mov     eax, [esp+24h+var_20]
dec     word ptr [eax+4]
mov     eax, 10h
mov     edx, [esp+24h+var_20]
sub     ax, [edx+4]
add     eax, eax
mov     [ebp+46h], ax
mov     ax, [ebp+44h]
add     [ebp+14h], ax
mov     ax, [ebp+46h]
add     [ebp+16h], ax
mov     ax, [ebp+48h]
add     [ebp+18h], ax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
mov     eax, ebp
call    sub_42DE56
test    ah, 3Fh
jnz     short loc_4CDD72
test    byte ptr [edx+17h], 2
jz      short loc_4CDDBE

loc_4CDD72:
mov     byte ptr [ebp+0Ah], 2

loc_4CDD76:
call    sub_4DE13B
mov     esi, eax
test    eax, eax
jz      short loc_4CDDA4
mov     byte ptr [eax], 7
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1000h
mov     eax, ebp
call    sub_4DD43B
lea     edi, [esi+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_4CDDA4:
and     byte ptr [ebp+0], 0FDh
or      byte ptr [ebp+0Eh], 1
mov     eax, [esp+24h+var_20]
mov     ch, [eax]
or      ch, 1
mov     [eax], ch
mov     dl, ch
and     dl, 0A1h
mov     [eax], dl

loc_4CDDBE:
add     esp, 0Ch
jmp     loc_4CDBBC
sub_4CDBC8 endp




sub_4CDDC6 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+0CCh]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4CDDE9
jbe     short loc_4CDE2A
cmp     al, 2
jz      loc_4CDE6F
jmp     loc_4CDBBD

loc_4CDDE9:
test    al, al
jnz     loc_4CDBBD
mov     byte ptr [edx+0Ah], 1
mov     word ptr [edx+48h], 0
mov     word ptr [edx+54h], 0
mov     eax, [ecx+34h]
mov     ax, [eax+56h]
mov     [edx+56h], ax
mov     word ptr [edx+58h], 0C00h
mov     word ptr [ecx+4], 20h ; ' '
mov     byte ptr [ecx+8], 0
mov     ah, [ecx]
and     ah, 0AFh
mov     [ecx], ah
mov     bl, ah
or      bl, 40h
mov     [ecx], bl

loc_4CDE2A:
mov     bx, [ecx+4]
dec     ebx
mov     [ecx+4], bx
test    bx, bx
jl      short loc_4CDE6B
mov     eax, 20h ; ' '
sub     eax, ebx
add     eax, eax
mov     [edx+46h], ax
add     [edx+16h], ax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, edx
call    sub_42DE56
test    ah, 3Fh
jnz     short loc_4CDE6B
test    byte ptr [ecx+17h], 2
jz      loc_4CDBBD

loc_4CDE6B:
mov     byte ptr [edx+0Ah], 2

loc_4CDE6F:
call    sub_4DE13B
test    eax, eax
jz      short loc_4CDE8B
mov     byte ptr [eax], 7
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
lea     edi, [eax+48h]
lea     esi, [edx+14h]
movsd
movsd

loc_4CDE8B:
and     byte ptr [edx], 0FDh
or      byte ptr [edx+0Eh], 1
mov     dl, [ecx]
or      dl, 1
mov     [ecx], dl
mov     dh, dl
and     dh, 0A1h
mov     [ecx], dh
jmp     loc_4CDBBD
sub_4CDDC6 endp

align 4
jpt_4CDED5 dd offset loc_4CDEDC ; jump table for switch statement
dd offset loc_4CDEFF
dd offset loc_4CDF27
dd offset loc_4CDF3F



sub_4CDEB8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
add     eax, 0CCh
mov     cl, [edx+0Ah]
cmp     cl, 3           ; switch 4 cases
ja      def_4CDED5      ; jumptable 004CDED5 default case
and     ecx, 0FFh
jmp     jpt_4CDED5[ecx*4] ; switch jump

loc_4CDEDC:             ; jumptable 004CDED5 case 0
mov     byte ptr [edx+0Ah], 1
mov     word ptr [eax+4], 0Ah
mov     byte ptr [eax+8], 0
mov     dword ptr [eax+38h], 1000h
mov     dword ptr [eax+3Ch], 1000h
mov     dword ptr [eax+40h], 1000h

loc_4CDEFF:             ; jumptable 004CDED5 case 1
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jl      short loc_4CDF16
add     dword ptr [eax+3Ch], 199h
jmp     short def_4CDED5 ; jumptable 004CDED5 default case

loc_4CDF16:
mov     byte ptr [edx+0Ah], 2
mov     word ptr [eax+4], 1Eh
mov     dword ptr [eax+3Ch], 2000h

loc_4CDF27:             ; jumptable 004CDED5 case 2
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     short def_4CDED5 ; jumptable 004CDED5 default case
mov     byte ptr [edx+0Ah], 3
mov     word ptr [eax+4], 0Fh

loc_4CDF3F:             ; jumptable 004CDED5 case 3
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jl      short loc_4CDF56
sub     dword ptr [eax+3Ch], 111h
jmp     short def_4CDED5 ; jumptable 004CDED5 default case

loc_4CDF56:
or      byte ptr [eax], 1
mov     dword ptr [eax+3Ch], 1000h

def_4CDED5:             ; jumptable 004CDED5 default case
add     eax, 38h ; '8'
lea     ecx, [edx+8Ch]
mov     edx, eax
mov     eax, ecx
call    sub_4EF689
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CDEB8 endp

align 4
jpt_4CDFCF dd offset loc_4CDFD6 ; jump table for switch statement
dd offset loc_4CE024
dd offset loc_4CE06C
dd offset loc_4CE0C1
dd offset loc_4CE163
dd offset loc_4CE1C4
dd offset loc_4CE30E
dd offset loc_4CE3FF
dd offset loc_4CE42C



sub_4CDF9C proc near

var_30= dword ptr -30h
var_28= byte ptr -28h
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
add     eax, 0CCh
mov     [esp+40h+var_1C], eax
mov     esi, offset byte_5F8364
test    byte ptr [eax+17h], 2
jz      short loc_4CDFBF
mov     byte ptr [eax+8], 0

loc_4CDFBF:
mov     al, [ebp+0Ah]
cmp     al, 8           ; switch 9 cases
ja      def_4CDFCF      ; jumptable 004CDFCF default case
and     eax, 0FFh
jmp     jpt_4CDFCF[eax*4] ; switch jump

loc_4CDFD6:             ; jumptable 004CDFCF case 0
mov     byte ptr [ebp+0Ah], 1
mov     word ptr [ebp+54h], 0
mov     eax, [esp+40h+var_1C]
mov     eax, [eax+34h]
mov     ax, [eax+56h]
mov     [ebp+56h], ax
mov     word ptr [ebp+58h], 0C00h
or      byte ptr [ebp+0Eh], 10h
mov     eax, [esp+40h+var_1C]
mov     word ptr [eax+4], 0Ah
mov     word ptr [eax+6], 0
mov     bl, [eax]
and     bl, 0A7h
mov     [eax], bl
mov     bh, bl
or      bh, 48h
mov     [eax], bh
lea     edx, [ebp+14h]
mov     eax, 0C5h
call    sub_4D8BC3

loc_4CE024:             ; jumptable 004CDFCF case 1
mov     eax, [esp+40h+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      short loc_4CE058
test    byte ptr [eax+4], 1
jz      short loc_4CE04A

loc_4CE03C:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'
jmp     loc_4CE471

loc_4CE04A:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFC0h
jmp     loc_4CE471

loc_4CE058:
mov     byte ptr [ebp+0Ah], 2
mov     word ptr [ebp+44h], 100h
mov     byte ptr [eax+8], 20h ; ' '
mov     word ptr [eax+4], 14h

loc_4CE06C:             ; jumptable 004CDFCF case 2
mov     eax, [esp+40h+var_1C]
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jl      short loc_4CE09D
sar     word ptr [ebp+44h], 1
mov     eax, [ebp+42h]
sar     eax, 10h
shl     eax, 4
lea     edx, [eax+80h]
xor     ecx, ecx
mov     ebx, 0A0h
jmp     loc_4CE471

loc_4CE09D:
mov     byte ptr [ebp+0Ah], 3
mov     word ptr [ebp+46h], 0Ch
mov     word ptr [ebp+4Eh], 4
mov     word ptr [ebp+44h], 30h ; '0'
mov     word ptr [ebp+4Ch], 10h
mov     word ptr [eax+4], 8
jmp     short loc_4CE0CC

loc_4CE0C1:             ; jumptable 004CDFCF case 3
mov     eax, [esp+40h+var_1C]
cmp     word ptr [eax+4], 0
jz      short loc_4CE0DC

loc_4CE0CC:
mov     ax, [ebp+4Ch]
add     [ebp+44h], ax
mov     eax, [esp+40h+var_1C]
dec     word ptr [eax+4]

loc_4CE0DC:
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
test    ah, 3Fh
jnz     short loc_4CE106
mov     eax, [esp+40h+var_1C]
test    byte ptr [eax+17h], 2
jz      short loc_4CE130

loc_4CE106:
mov     eax, [esp+40h+var_1C]
cmp     word ptr [eax+4], 0
jnz     short loc_4CE130
mov     byte ptr [ebp+0Ah], 5
or      byte ptr [ebp+0Eh], 4
mov     eax, 0Ah
call    sub_42A701
lea     edx, [ebp+14h]
mov     eax, 0C6h
call    sub_4D8BC3

loc_4CE130:
push    400h
mov     eax, [ebp+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     edx, [esi+54h]
sar     edx, 10h
lea     eax, [esi+1Ch]
mov     ebx, 800h
call    sub_4DE689
test    eax, eax
jz      def_4CDFCF      ; jumptable 004CDFCF default case
mov     byte ptr [ebp+0Ah], 4
jmp     loc_4CE482

loc_4CE163:             ; jumptable 004CDFCF case 4
mov     eax, [ebp+42h]
sar     eax, 10h
shl     eax, 4
lea     edx, [eax+80h]
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
sar     word ptr [ebp+44h], 1
test    ah, 3Fh
jz      short loc_4CE1AC
mov     byte ptr [ebp+0Ah], 5
or      byte ptr [ebp+0Eh], 4
mov     eax, 0Ah
call    sub_42A701
lea     edx, [ebp+14h]
mov     eax, 0C6h
call    sub_4D8BC3

loc_4CE1AC:
cmp     word ptr [ebp+44h], 0
jnz     def_4CDFCF      ; jumptable 004CDFCF default case
mov     byte ptr [ebp+0Ah], 5
or      byte ptr [ebp+0Eh], 4
jmp     def_4CDFCF      ; jumptable 004CDFCF default case

loc_4CE1C4:             ; jumptable 004CDFCF case 5
test    byte ptr [ebp+0Eh], 8
jz      def_4CDFCF      ; jumptable 004CDFCF default case
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
mov     ecx, [ebp+0Ah]
sar     ecx, 18h
shl     ecx, 3
mov     eax, [esp+40h+var_1C]
mov     eax, [eax+34h]
add     eax, 190h
add     eax, ecx
mov     ecx, 20h ; ' '
call    sub_4DE552
mov     dx, [ebp+56h]
add     edx, eax
and     dh, 0Fh
mov     [ebp+56h], dx
test    ax, ax
jnz     def_4CDFCF      ; jumptable 004CDFCF default case
mov     byte ptr [ebp+0Ah], 6
lea     edi, [esp+40h+var_30]
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, esp
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [esp+40h+var_28]
lea     esi, [ebp+54h]
movsd
movsd
mov     esi, [esp+40h+var_1C]
mov     esi, [esi+34h]
lea     edi, [ebp+54h]
lea     esi, [esi+54h]
movsd
movsd
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     esi, [esp+40h+var_1C]
mov     esi, [esi+34h]
lea     edi, [ebp+14h]
lea     esi, [esi+eax*8+190h]
movsd
movsd
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 400h
mov     eax, ebp
call    sub_4DD43B
mov     edx, [ebp+12h]
sar     edx, 10h
mov     eax, [esp+0Eh]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     [ebp+44h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [esp+40h+var_30]
sar     edx, 10h
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     [ebp+46h], ax
mov     eax, [ebp+16h]
sar     eax, 10h
mov     edx, [esp+40h+var_30+2]
sar     edx, 10h
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     [ebp+48h], ax
lea     edi, [ebp+14h]
lea     esi, [esp+40h+var_30]
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, esp
movsd
movsd
movsd
movsd
lea     edi, [ebp+54h]
lea     esi, [esp+40h+var_28]
movsd
movsd
mov     eax, [esp+40h+var_1C]
mov     word ptr [eax+4], 20h ; ' '

loc_4CE30E:             ; jumptable 004CDFCF case 6
mov     eax, [esp+40h+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      short loc_4CE361

loc_4CE320:
mov     ax, [ebp+44h]
add     [ebp+14h], ax
mov     ax, [ebp+46h]
add     [ebp+16h], ax
mov     ax, [ebp+48h]
add     [ebp+18h], ax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
jmp     def_4CDFCF      ; jumptable 004CDFCF default case

loc_4CE361:
mov     byte ptr [ebp+0Ah], 7
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, [esp+40h+var_1C]
mov     edx, [edx+34h]
mov     edx, [edx+eax*8+18Eh]
sar     edx, 10h
mov     eax, [ebp+12h]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     [ebp+44h], ax
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, [esp+40h+var_1C]
mov     edx, [edx+34h]
mov     eax, [edx+eax*8+190h]
sar     eax, 10h
mov     edx, [ebp+14h]
sar     edx, 10h
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     [ebp+46h], ax
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, [esp+40h+var_1C]
mov     edx, [edx+34h]
mov     edx, [edx+eax*8+192h]
sar     edx, 10h
mov     eax, [ebp+16h]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     [ebp+48h], ax
mov     eax, [esp+40h+var_1C]
mov     word ptr [eax+4], 10h

loc_4CE3FF:             ; jumptable 004CDFCF case 7
mov     eax, [esp+40h+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     loc_4CE320
mov     byte ptr [ebp+0Ah], 8
mov     word ptr [eax+4], 4
lea     edx, [ebp+14h]
mov     eax, 0C7h
call    sub_4D8BC3

loc_4CE42C:             ; jumptable 004CDFCF case 8
mov     eax, [esp+40h+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4CE45E
mov     bh, [eax]
or      bh, 11h
mov     [eax], bh
mov     cl, bh
and     cl, 0B7h
mov     [eax], cl
mov     ch, [ebp+0Eh]
or      ch, 2
mov     [ebp+0Eh], ch
mov     al, ch
and     al, 0E7h
mov     [ebp+0Eh], al
jmp     short def_4CDFCF ; jumptable 004CDFCF default case

loc_4CE45E:
test    byte ptr [eax+4], 1
jnz     loc_4CE03C
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFC0h

loc_4CE471:
mov     eax, ebp
call    sub_4DD43B

def_4CDFCF:             ; jumptable 004CDFCF default case
cmp     byte ptr [ebp+0Ah], 5
jnb     loc_4CE505

loc_4CE482:
mov     eax, [esp+40h+var_1C]
mov     ax, [eax+6]
mov     edx, eax
inc     edx
mov     ecx, [esp+40h+var_1C]
mov     [ecx+6], dx
test    al, 1
jnz     short loc_4CE505
call    sub_4DE13B
mov     [esp+40h+var_20], eax
test    eax, eax
jz      short loc_4CE505
lea     edi, [esp+40h+var_30]
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, esp
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFD00h
mov     eax, ebp
call    sub_4DD43B
mov     eax, [esp+40h+var_20]
mov     byte ptr [eax], 9
mov     byte ptr [eax+2], 0Fh
mov     byte ptr [eax+3], 0
mov     ax, [ebp+14h]
mov     edx, [esp+40h+var_20]
mov     [edx+1Ch], ax
mov     ax, [ebp+16h]
mov     [edx+1Eh], ax
mov     ax, [ebp+18h]
mov     [edx+20h], ax
lea     edi, [ebp+14h]
lea     esi, [esp+40h+var_30]
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, esp
movsd
movsd
movsd
movsd

loc_4CE505:
add     esp, 28h
jmp     loc_4CDBBC
sub_4CDF9C endp




sub_4CE50D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
add     eax, 0CCh
mov     ebx, [eax+14h]
and     ebx, 0FFFFFFh
jz      short loc_4CE56C
lea     edx, [ecx+14h]
test    byte ptr [eax+17h], 38h
jz      short loc_4CE562
mov     si, [ecx+6Eh]
sub     esi, ebx
mov     [ecx+6Eh], si
test    si, si
jg      short loc_4CE54C
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
mov     eax, 0A2h
jmp     short loc_4CE551

loc_4CE54C:
mov     eax, 0A0h

loc_4CE551:
call    sub_4D8BC3
mov     dword ptr [ecx+0C4h], 0FFFFFFh
jmp     short loc_4CE56C

loc_4CE562:
mov     eax, 0A3h
call    sub_4D8BC3

loc_4CE56C:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CE50D endp




sub_4CE576 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4CE57F[ecx*4]
mov     dword ptr [edx+0CCh], 0
pop     edx
pop     ecx
retn
sub_4CE576 endp




sub_4CE593 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= byte ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 14h
mov     ecx, eax
xor     ah, ah
mov     [esp+28h+var_18], ah
lea     ebx, [ecx+0DCh]
or      byte ptr [ecx], 6
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
lea     edx, [esp+28h+var_18]
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ebx], 0
movsx   ax, byte ptr [ecx+0Ch]
mov     [ebx+4], ax
movsx   ax, byte ptr [ecx+0Dh]
mov     [ebx+6], ax
movsx   ax, byte ptr [ecx+0Eh]
mov     [ebx+8], ax
movsx   ax, byte ptr [ecx+0Fh]
mov     [ebx+0Ah], ax
mov     word ptr [ebx+0Ch], 0
mov     ax, [ecx+56h]
mov     [ebx+0Eh], ax
mov     word ptr [ecx+6Eh], 400h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+0CCh], 0
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF5F7
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, ecx
call    sub_4CE682
add     esp, 14h

loc_4CE67C:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CE593 endp




sub_4CE682 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+0DCh]
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
mov     dword ptr [eax+0C4h], offset unk_808080
call    rand_
mov     [ecx+2], ax
test    byte ptr [ebp+0CFh], 39h
jz      short loc_4CE6D3
lea     edx, [ebp+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_4CE6D3:
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4CE6DA[ecx*4]
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF5F7
mov     edx, 200h
mov     ds:dword_55D3F8, edx
mov     ds:dword_55D3FC, edx
mov     ds:dword_55D400, edx
mov     edx, offset dword_55D3F8
mov     eax, ecx
call    sub_4EF689
test    byte ptr [ebp+0], 2
jz      short loc_4CE738
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 50h ; 'P'
mov     eax, ebp
call    sub_4ED88B

loc_4CE738:
test    byte ptr [ebp+0], 1
jz      short loc_4CE778
push    80h
push    0
mov     al, [ebp+3]
and     al, 7Fh
and     eax, 0FFh
add     eax, eax
or      eax, 29000000h
push    eax
lea     eax, [ebp+0CCh]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [ebp+14h]
mov     ecx, 0E000h
xor     ebx, ebx
mov     edx, 50h ; 'P'
call    sub_4E01FC

loc_4CE778:
pop     ebp
jmp     loc_4CE67C
sub_4CE682 endp



; Attributes: thunk

sub_4CE77E proc near
jmp     sub_4DE371
sub_4CE77E endp




sub_4CE783 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+0DCh]
mov     ax, [esi+0Eh]
mov     [edi+56h], ax
mov     al, [edi+0Ah]
cmp     al, 1
jb      short loc_4CE7AE
jbe     short loc_4CE7CC
cmp     al, 2
jz      loc_4CE819
jmp     loc_4CE841

loc_4CE7AE:
test    al, al
jnz     loc_4CE841
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     loc_4CE841
mov     byte ptr [edi+0Ah], 1

loc_4CE7CC:
test    byte ptr [edi+0CFh], 4
jz      short loc_4CE7F1
neg     word ptr [esi+0Ah]
mov     eax, [edi+0Ah]
sar     eax, 18h
mov     edx, [esi+4]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_4CE7ED
neg     eax

loc_4CE7ED:
mov     [esi+6], ax

loc_4CE7F1:
mov     ax, [esi+6]
dec     eax
mov     [esi+6], ax
test    ax, ax
jl      short loc_4CE815
mov     edx, [esi+8]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
jmp     short loc_4CE841

loc_4CE815:
mov     byte ptr [edi+0Ah], 2

loc_4CE819:
mov     bx, [esi+8]
dec     ebx
mov     [esi+8], bx
test    bx, bx
jge     short loc_4CE841
mov     byte ptr [edi+0Ah], 1
movsx   ax, byte ptr [edi+0Dh]
mov     [esi+6], ax
movsx   ax, byte ptr [edi+0Eh]
mov     [esi+8], ax
neg     word ptr [esi+0Ah]

loc_4CE841:
mov     ax, [esi+0Ch]
mov     [edi+56h], ax
mov     al, [edi+3]
and     al, 7Fh
xor     ah, ah
shl     eax, 4
add     ax, [esi+0Ch]
and     ah, 0Fh
mov     [esi+0Ch], ax
jmp     loc_4CE67C
sub_4CE783 endp




sub_4CE863 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
lea     ecx, [eax+0CCh]
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
mov     dword ptr [eax+0C4h], offset unk_808080
call    rand_
mov     [ecx+2], ax
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_4CE8A8[edx*4]
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF5F7
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
test    byte ptr [ebp+0], 2
jz      short loc_4CE8F1
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 80h
mov     eax, ebp
call    sub_4ED88B

loc_4CE8F1:
mov     ecx, 1000008h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
add     esp, 10h
sub_4CE863 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4CE9EE

loc_4CE90A:
pop     ebp
; END OF FUNCTION CHUNK FOR sub_4CE9EE
; START OF FUNCTION CHUNK FOR sub_4CE911
;   ADDITIONAL PARENT FUNCTION sub_4CEB14

loc_4CE90B:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4CE911



sub_4CE911 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= byte ptr -18h

; FUNCTION CHUNK AT 004CE90B SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 14h
mov     ecx, eax
xor     ah, ah
mov     [esp+28h+var_18], ah
lea     ebx, [ecx+0CCh]
or      byte ptr [ecx], 6
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
lea     edx, [esp+28h+var_18]
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ebx], 0
mov     word ptr [ecx+6Eh], 400h
mov     dword ptr [ecx+78h], 0
mov     bl, [ecx+3]
cmp     bl, 1
jb      short loc_4CE97D
jbe     short loc_4CE98A
cmp     bl, 2
jz      short loc_4CE994
jmp     short loc_4CE9A2

loc_4CE97D:
test    bl, bl
jnz     short loc_4CE9A2
mov     byte ptr [ecx+8], 1
mov     [ecx+9], bl
jmp     short loc_4CE99C

loc_4CE98A:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 1
jmp     short loc_4CE99C

loc_4CE994:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 1

loc_4CE99C:
mov     word ptr [ecx+0Ah], 0

loc_4CE9A2:
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+0CCh], 0
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF5F7
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, ecx
call    sub_4CE9EE
add     esp, 14h
jmp     loc_4CE90B
sub_4CE911 endp




sub_4CE9EE proc near

; FUNCTION CHUNK AT 004CE90A SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+0CCh]
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_4CEA01[ecx*4]
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
test    byte ptr [edx], 2
jz      short loc_4CEA3F
push    80h
push    0
push    500000Ah
push    edx
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [ebp+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 30h ; '0'
call    sub_4E01FC

loc_4CEA3F:
mov     dword ptr [ebp+0CCh], 0
jmp     loc_4CE90A
sub_4CE9EE endp ; sp-analysis failed



; Attributes: thunk

sub_4CEA4E proc near
jmp     sub_4DE371
sub_4CEA4E endp




sub_4CEA53 proc near
push    ebx
push    ecx
push    edx
push    esi
lea     edx, [eax+0CCh]
mov     bl, [eax+0Ah]
cmp     bl, 1
jb      short loc_4CEA71
jbe     short loc_4CEA96
cmp     bl, 2
jz      short loc_4CEAB6
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4CEA71:
test    bl, bl
jnz     loc_4CEB0F
inc     bl
mov     [eax+0Ah], bl
mov     word ptr [edx+4], 40h ; '@'
mov     word ptr [eax+46h], 0FFC0h
mov     word ptr [eax+4Eh], 1
mov     word ptr [edx+6], 0

loc_4CEA96:
mov     bx, [eax+46h]
test    bx, bx
jz      short loc_4CEAAD
mov     dx, [eax+4Eh]
mov     ecx, ebx
add     ecx, edx
mov     [eax+46h], cx
jmp     short loc_4CEAF8

loc_4CEAAD:
inc     byte ptr [eax+0Ah]
mov     word ptr [edx+4], 0

loc_4CEAB6:
mov     si, [edx+4]
dec     esi
mov     [edx+4], si
test    si, si
jge     short loc_4CEAF0
mov     bx, [edx+6]
inc     ebx
mov     [edx+6], bx
mov     ecx, ebx
xor     ch, bh
and     cl, 3
mov     [edx+6], cx
mov     ecx, [edx+4]
sar     ecx, 10h
movsx   cx, ds:byte_538D44[ecx]
mov     [eax+4Eh], cx
mov     word ptr [edx+4], 1Fh

loc_4CEAF0:
mov     dx, [eax+4Eh]
add     [eax+46h], dx

loc_4CEAF8:
mov     edx, [eax+44h]
sar     edx, 10h
shl     edx, 0Ch
add     [eax+20h], edx
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B

loc_4CEB0F:
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4CEA53 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_107]



sub_4CEB14 proc near

; FUNCTION CHUNK AT 004CE90B SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+0CCh]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4CEB2F
jbe     short loc_4CEB8C
jmp     loc_4CE90B

loc_4CEB2F:
test    al, al
jnz     loc_4CE90B
inc     al
mov     [esi+0Ah], al
mov     eax, [esi+0Ah]
sar     eax, 18h
shl     eax, 4
mov     ax, ds:word_538D4E[eax]
mov     [esi+44h], ax
mov     eax, [esi+9]
sar     eax, 18h
shl     eax, 4
mov     ax, ds:word_538D48[eax]
mov     [edi+0Eh], ax
mov     eax, [esi+9]
sar     eax, 18h
shl     eax, 4
mov     ax, ds:word_538D4A[eax]
mov     [edi+10h], ax
mov     eax, [esi+9]
sar     eax, 18h
shl     eax, 4
mov     ax, ds:word_538D4C[eax]
mov     [edi+12h], ax

loc_4CEB8C:
mov     eax, [esi+9]
sar     eax, 18h
shl     eax, 4
mov     ecx, ds:dword_538D54[eax]
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+0Eh]
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     edx, [esi+12h]
sar     edx, 10h
mov     eax, [edi+0Ch]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
mov     ecx, [esi+16h]
sar     ecx, 10h
mov     edx, [edi+10h]
sar     edx, 10h
sub     ecx, edx
mov     edx, ecx
mov     edi, [esi+9]
sar     edi, 18h
shl     edi, 4
imul    eax, eax
imul    edx, ecx
add     eax, edx
cmp     eax, ds:dword_538D50[edi]
jnb     loc_4CE90B
inc     byte ptr [esi+0Ah]
jmp     loc_4CE90B
sub_4CEB14 endp




sub_4CEC0D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+0CCh]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4CEC27
jbe     short loc_4CEC50
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4CEC27:
test    al, al
jnz     short loc_4CEC80
inc     al
mov     [ecx+0Ah], al
mov     word ptr [esi+4], 82h
mov     word ptr [ecx+46h], 0FFF0h
mov     word ptr [ecx+4Eh], 0FFFCh
xor     ebx, ebx
xor     edx, edx
mov     eax, 156h
call    sub_4D89E4

loc_4CEC50:
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+20h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     bx, [esi+4]
dec     ebx
mov     [esi+4], bx
test    bx, bx
jge     short loc_4CEC80
inc     byte ptr [ecx+0Ah]

loc_4CEC80:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CEC0D endp




sub_4CEC85 proc near

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
add     eax, 0CCh
mov     [esp+2Ch+var_1C], eax
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
call    rand_
mov     edx, [esp+2Ch+var_1C]
mov     [edx+2], ax
xor     ecx, ecx
mov     cl, [ebp+8]
mov     eax, ebp
call    ds:funcs_4CECC7[ecx*4]
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 200h
mov     [esp+2Ch+var_2C], edx
mov     [esp+2Ch+var_28], edx
mov     [esp+2Ch+var_24], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
test    byte ptr [ebp+0], 2
jz      short loc_4CED2B
mov     edx, [ebp+56h]
sar     edx, 10h
mov     ecx, edx
sar     ecx, 4
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ebx, 2C0h
sub     ebx, eax
sar     edx, 6
mov     eax, 32h ; '2'
sub     eax, edx
mov     edx, eax
xor     ecx, ecx
mov     eax, ebp
call    sub_4ED88B

loc_4CED2B:
test    byte ptr [ebp+0], 1
jz      short loc_4CED8A
mov     eax, [esp+2Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_4CED8A
sub     word ptr [ebp+16h], 20h ; ' '
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
push    80h
push    0
push    4880000h
mov     eax, [esp+38h+var_1C]
add     eax, 8
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [ebp+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 20h ; ' '
call    sub_4E01FC
add     word ptr [ebp+16h], 20h ; ' '
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax

loc_4CED8A:
add     esp, 14h
pop     ebp

loc_4CED8E:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CEC85 endp




sub_4CED94 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+0CCh]
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     word ptr [ecx+54h], 400h
mov     al, [ecx+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ebx], 0
mov     dword ptr [ebx+4], 0
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_24], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     word ptr [ecx+6Eh], 400h
mov     dword ptr [ecx+78h], offset unk_538DBC
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
mov     dword ptr [ecx+0C4h], offset unk_808080
add     esp, 10h
jmp     loc_4CED8E
sub_4CED94 endp




sub_4CEE76 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+0CCh]
xor     ebx, ebx
mov     bl, [eax+9]
call    ds:funcs_4CEE88[ebx*4]
lea     edi, [edx+0BCh]
lea     esi, [edx+14h]
movsd
movsd
test    byte ptr [ecx], 1
jz      loc_4CED8E
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
and     byte ptr [ecx], 0FEh
jmp     loc_4CED8E
sub_4CEE76 endp



; Attributes: thunk

sub_4CEEB5 proc near
jmp     sub_4DE371
sub_4CEEB5 endp




sub_4CEEBA proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
add     eax, 0CCh
mov     edx, offset byte_5F8364
mov     bl, [ecx+0Ah]
cmp     bl, 1
jb      short loc_4CEEDE
jbe     short loc_4CEEF2
cmp     bl, 2
jz      short loc_4CEF29
jmp     loc_4CEFB0

loc_4CEEDE:
test    bl, bl
jnz     loc_4CEFB0
or      byte ptr [ecx], 2
inc     byte ptr [ecx+0Ah]
mov     word ptr [eax+4], 3Ch ; '<'

loc_4CEEF2:
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jl      short loc_4CEF16
sub     word ptr [ecx+16h], 2
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 0Ch
mov     [ecx+20h], eax
jmp     loc_4CEFB0

loc_4CEF16:
inc     byte ptr [ecx+0Ah]
mov     bx, [ecx+16h]
mov     [ecx+4Eh], bx
mov     word ptr [ecx+46h], 10h
jmp     short loc_4CEF30

loc_4CEF29:
cmp     word ptr [eax+4], 40h ; '@'
jnz     short loc_4CEF36

loc_4CEF30:
mov     word ptr [eax+4], 0

loc_4CEF36:
mov     bx, [ecx+54h]
test    bx, bx
jz      short loc_4CEF49
sub     ebx, 10h
and     bh, 0Fh
mov     [ecx+54h], bx

loc_4CEF49:
mov     bx, [ecx+56h]
add     ebx, 20h ; ' '
and     bh, 0Fh
mov     [ecx+56h], bx
mov     si, [ecx+58h]
cmp     si, 400h
jz      short loc_4CEF6E
mov     ebx, esi
add     ebx, 10h
and     bh, 0Fh
mov     [ecx+58h], bx

loc_4CEF6E:
mov     ebx, [eax+2]
sar     ebx, 10h
mov     ebx, dword ptr ds:unk_564C32[ebx*2]
sar     ebx, 10h
mov     esi, [ecx+44h]
sar     esi, 10h
imul    esi, ebx
sar     esi, 0Ch
mov     ebx, [ecx+4Ch]
sar     ebx, 10h
add     ebx, esi
mov     [ecx+16h], bx
mov     ebx, [ecx+44h]
sar     ebx, 10h
shl     ebx, 0Ch
mov     [ecx+20h], ebx
mov     bx, [eax+4]
inc     ebx
xor     bh, bh
and     bl, 3Fh
mov     [eax+4], bx

loc_4CEFB0:
mov     eax, [ecx+12h]
sar     eax, 10h
mov     ebx, [edx+12h]
sar     ebx, 10h
sub     eax, ebx
mov     ebx, eax
mov     eax, [ecx+14h]
sar     eax, 10h
mov     esi, [edx+14h]
sar     esi, 10h
sub     eax, esi
mov     esi, [ecx+16h]
sar     esi, 10h
mov     edx, [edx+16h]
sar     edx, 10h
sub     esi, edx
mov     edx, esi
test    eax, eax
jge     short loc_4CEFE4
neg     eax

loc_4CEFE4:
cmp     eax, 80h
jge     short loc_4CF013
imul    ebx, ebx
imul    edx, edx
add     edx, ebx
cmp     edx, 400h
jge     short loc_4CF013
xor     ebx, ebx
xor     edx, edx
mov     eax, 80010005h
call    sub_4D89E4
mov     byte ptr [ecx+9], 4
mov     word ptr [ecx+0Ah], 0

loc_4CF013:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CEEBA endp




sub_4CF018 proc near
and     byte ptr [eax], 0FDh
retn
sub_4CF018 endp




sub_4CF01C proc near
or      byte ptr [eax], 2
retn
sub_4CF01C endp




sub_4CF020 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+0CCh]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4CF03A
cmp     al, 1
jz      short loc_4CF047
pop     edx
pop     ecx
pop     ebx
retn

loc_4CF03A:
or      byte ptr [ecx], 2
mov     byte ptr [ecx+0Ah], 1
mov     word ptr [ecx+66h], 400h

loc_4CF047:
mov     ax, [ecx+4Ch]
add     [ecx+44h], ax
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     ax, [ecx+50h]
add     [ecx+48h], ax
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 8
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 8
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
add     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_42DE56
test    ah, 10h
jz      short loc_4CF0CF
cmp     word ptr [ecx+66h], 0
jnz     short loc_4CF0A4
or      byte ptr [ebx], 1

loc_4CF0A4:
sar     word ptr [ecx+44h], 1
sar     word ptr [ecx+48h], 1
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+56h]
add     ax, [ecx+66h]
and     ah, 0Fh
mov     [ecx+56h], ax
sub     word ptr [ecx+66h], 20h ; ' '
or      byte ptr [ebx], 2

loc_4CF0CF:
pop     edx
pop     ecx
pop     ebx
retn
sub_4CF020 endp




sub_4CF0D3 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+0CCh]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4CF0EB
cmp     al, 1
jz      short loc_4CF0FE
pop     edx
pop     ecx
retn

loc_4CF0EB:
or      byte ptr [edx], 2
mov     byte ptr [edx+0Ah], 1
mov     word ptr [edx+46h], 0FFCEh
mov     word ptr [edx+4Eh], 4

loc_4CF0FE:
mov     ax, [edx+46h]
add     [edx+16h], ax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     ax, [edx+4Eh]
add     [edx+46h], ax
mov     eax, edx
call    sub_42DE56
test    ah, 10h
jz      short loc_4CF12D
mov     byte ptr [edx+0Ah], 2
or      byte ptr [ecx], 1

loc_4CF12D:
pop     edx
pop     ecx
retn
sub_4CF0D3 endp




sub_4CF130 proc near
push    edx
mov     edx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_4CF14E
mov     eax, edx
call    sub_4DE371
mov     eax, 611h
call    sub_47E8B8
inc     byte ptr [edx+0Ah]

loc_4CF14E:
pop     edx
retn
sub_4CF130 endp




sub_4CF150 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
lea     ecx, [eax+0CCh]
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
call    rand_
mov     [ecx+2], ax
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_4CF18B[edx*4]
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     ecx, 1000008h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
add     esp, 10h

loc_4CF1D4:
pop     ebp

loc_4CF1D5:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CF150 endp




sub_4CF1DB proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+0CCh]
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax]
or      ah, 4
mov     [ecx], ah
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     word ptr [ecx+54h], 0
mov     al, [ecx+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ebx], 0
mov     dword ptr [ebx+4], 0
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_24], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     word ptr [ecx+6Eh], 400h
mov     dword ptr [ecx+78h], offset unk_538DDC
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
mov     dword ptr [ecx+0C4h], offset unk_808080
add     esp, 10h
jmp     loc_4CF1D5
sub_4CF1DB endp




sub_4CF2BD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+0CCh]
mov     eax, 4
call    sub_47E888
test    eax, eax
jz      short loc_4CF2DB
or      byte ptr [edx], 2

loc_4CF2DB:
xor     ebx, ebx
mov     bl, [edx+9]
mov     eax, edx
call    ds:funcs_4CF2E2[ebx*4]
lea     edi, [edx+0BCh]
lea     esi, [edx+14h]
movsd
movsd
test    byte ptr [ecx], 1
jz      loc_4CF1D5
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
and     byte ptr [ecx], 0FEh
jmp     loc_4CF1D5
sub_4CF2BD endp



; Attributes: thunk

sub_4CF30F proc near
jmp     sub_4DE371
sub_4CF30F endp




sub_4CF314 proc near
push    ebx
push    edx
lea     edx, [eax+0CCh]
mov     bl, [eax+0Ah]
test    bl, bl
jbe     short loc_4CF32B
cmp     bl, 1
jz      short loc_4CF347
pop     edx
pop     ebx
retn

loc_4CF32B:
mov     byte ptr [eax+0Ah], 1
mov     word ptr [edx+4], 1Eh
mov     word ptr [eax+44h], 0
mov     word ptr [eax+46h], 0
mov     word ptr [eax+48h], 0

loc_4CF347:
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     short loc_4CF358
or      byte ptr [edx], 1

loc_4CF358:
pop     edx
pop     ebx
retn
sub_4CF314 endp




sub_4CF35B proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
add     eax, 0CCh
mov     [esp+24h+var_20], eax
mov     eax, [esp+24h+var_24]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4CF381
cmp     al, 1
jz      short loc_4CF3D3
jmp     loc_4CF576

loc_4CF381:
mov     eax, [esp+24h+var_24]
or      byte ptr [eax], 2
mov     byte ptr [eax+0Ah], 1
mov     eax, [esp+24h+var_20]
mov     word ptr [eax+4], 1Eh
mov     eax, [esp+24h+var_24]
test    byte ptr [eax+0Fh], 40h
jz      short loc_4CF3AD
mov     word ptr [eax+44h], 0
mov     ds:byte_55D428, 4
jmp     short loc_4CF3BA

loc_4CF3AD:
mov     word ptr [eax+44h], 240h
mov     ds:byte_55D428, 5

loc_4CF3BA:
mov     eax, [esp+24h+var_24]
mov     word ptr [eax+48h], 0
mov     word ptr [eax+4Ch], 16h
mov     eax, [esp+24h+var_20]
mov     word ptr [eax+8], 1

loc_4CF3D3:
mov     eax, [esp+24h+var_24]
test    byte ptr [eax+0Fh], 40h
jz      short loc_4CF3F0
mov     eax, [esp+24h+var_20]
mov     eax, [eax+6]
sar     eax, 10h
shl     eax, 3
mov     ebp, offset unk_538E18
jmp     short loc_4CF402

loc_4CF3F0:
mov     eax, [esp+24h+var_20]
mov     eax, [eax+6]
sar     eax, 10h
shl     eax, 3
mov     ebp, offset unk_538DE8

loc_4CF402:
add     ebp, eax
mov     ax, [ebp+0]
mov     ds:word_55D418, ax
xor     edx, edx
mov     word ptr ds:dword_55D41A, dx
mov     ax, [ebp+2]
mov     word ptr ds:dword_55D41A+2, ax
mov     ebx, [esp+24h+var_24]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     eax, [esp+24h+var_24]
add     eax, 14h
mov     ecx, 20h ; ' '
mov     edx, offset word_55D418
call    sub_4DE552
mov     edx, [esp+24h+var_24]
mov     dx, [edx+56h]
add     edx, eax
and     dh, 0Fh
mov     ecx, [esp+24h+var_24]
mov     [ecx+56h], dx
mov     edx, eax
shl     edx, 2
mov     [ecx+48h], dx
cwde
sar     eax, 1
and     eax, 0FFFh
mov     edx, ecx
mov     [ecx+58h], ax
mov     ecx, [ecx+46h]
sar     ecx, 10h
mov     edx, [edx+42h]
sar     edx, 10h
xor     ebx, ebx
mov     eax, [esp+24h+var_24]
call    sub_4DD43B
mov     eax, [ebp+2]
sar     eax, 10h
sar     eax, 1
movsx   edx, word ptr [ebp+0]
sub     edx, eax
mov     ecx, [esp+24h+var_24]
mov     ecx, [ecx+12h]
sar     ecx, 10h
sub     ecx, edx
mov     edx, [ebp+4]
sar     edx, 10h
sar     edx, 1
mov     eax, [ebp+0]
sar     eax, 10h
sub     eax, edx
mov     edx, [esp+24h+var_24]
mov     edx, [edx+16h]
sar     edx, 10h
sub     edx, eax
mov     eax, [ebp+2]
sar     eax, 10h
cmp     ecx, eax
jnb     short loc_4CF50C
mov     eax, [ebp+4]
sar     eax, 10h
cmp     edx, eax
jnb     short loc_4CF50C
mov     edx, [esp+24h+var_20]
mov     edx, [edx+6]
sar     edx, 10h
xor     eax, eax
mov     al, ds:byte_55D428
cmp     edx, eax
jnz     short loc_4CF504
mov     eax, [esp+24h+var_20]
or      byte ptr [eax], 1
mov     eax, [esp+24h+var_24]
mov     word ptr [eax+44h], 0
mov     word ptr [eax+46h], 0
mov     word ptr [eax+48h], 0
mov     word ptr [eax+54h], 0
mov     word ptr [eax+58h], 0

loc_4CF504:
mov     eax, [esp+24h+var_20]
inc     word ptr [eax+8]

loc_4CF50C:
mov     eax, [esp+24h+var_24]
mov     ax, [eax+14h]
sub     ds:word_55D418, ax
mov     eax, [esp+24h+var_24]
mov     ax, [eax+18h]
sub     word ptr ds:dword_55D41A+2, ax
mov     edx, ds:dword_55D41A
sar     edx, 10h
imul    edx, edx
mov     eax, dword ptr ds:unk_55D416
sar     eax, 10h
imul    eax, eax
add     eax, edx
cmp     eax, 4000h
jle     short loc_4CF560
mov     eax, [esp+24h+var_24]
cmp     word ptr [eax+44h], 320h
jge     short loc_4CF576
mov     ax, [eax+4Ch]
mov     edx, [esp+24h+var_24]
add     [edx+44h], ax
jmp     short loc_4CF576

loc_4CF560:
mov     eax, [esp+24h+var_24]
cmp     word ptr [eax+44h], 160h
jle     short loc_4CF576
mov     ax, [eax+4Ch]
mov     edx, [esp+24h+var_24]
sub     [edx+44h], ax

loc_4CF576:
test    byte ptr ds:word_77EAB6, 3
jnz     loc_4CF647
xor     edi, edi
mov     word ptr [esp+24h+var_1C], di
jmp     loc_4CF638

loc_4CF58F:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 1
mov     edi, offset word_55D420
mov     esi, [esp+24h+var_24]
lea     esi, [esi+14h]
movsd
movsd
mov     edi, offset unk_55D408
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     eax, [esp+24h+var_20]
mov     ax, [eax+2]
xor     ah, ah
and     al, 3
cwde
mov     ecx, eax
shl     ecx, 5
mov     eax, [esp+24h+var_20+2]
sar     eax, 10h
shl     eax, 3
add     eax, ecx
mov     ecx, ds:dword_538E42[eax]
sar     ecx, 10h
push    ecx
mov     ecx, ds:(dword_538E3E+2)[eax]
sar     ecx, 10h
push    ecx
mov     ecx, ds:dword_538E3E[eax]
sar     ecx, 10h
mov     ebx, [esp+2Ch+var_24]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, offset unk_55D408
mov     eax, offset word_55D420
call    sub_4DD4C5
mov     ax, ds:word_55D420
mov     [ebp+1Ch], ax
mov     ax, ds:word_55D422
mov     [ebp+1Eh], ax
mov     ax, ds:word_55D424
mov     [ebp+20h], ax
mov     eax, [esp+24h+var_1C]
inc     eax
mov     word ptr [esp+24h+var_1C], ax
cmp     ax, 4
jge     short loc_4CF647

loc_4CF638:
call    sub_4DE13B
mov     ebp, eax
test    eax, eax
jnz     loc_4CF58F

loc_4CF647:
add     esp, 0Ch
jmp     loc_4CF1D4
sub_4CF35B endp

unk_4CF64F db    0
dword_4CF650 dd 3 dup(2), 53000000h, 89565251h, 0DCB08DC1h
dd 0C7000000h, 0C480h, 80808000h, 8ADB3100h
dd 0F2890858h
call    ds:funcs_4CF67C[ebx*4]
push    80h
push    0
push    4880000h
lea     eax, [esi+10h]
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
lea     eax, [ecx+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 200h
call    sub_4E01FC
mov     dword ptr [esi+10h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn



sub_4CF6B9 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     ecx, edx        ; int
mov     al, [eax+9]
test    al, al
jbe     short loc_4CF6D6
cmp     al, 1
jz      loc_4CF74E
jmp     loc_4CF7A7

loc_4CF6D6:
or      byte ptr [ebp+0], 6
mov     word ptr [ebp+14h], 870h
mov     word ptr [ebp+16h], 0F9F0h
mov     word ptr [ebp+18h], 0FCD8h
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+56h], 400h
mov     word ptr [ebp+58h], 0
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+0C4h], offset unk_808080
mov     dword ptr [ebp+78h], offset unk_538ECC
mov     byte ptr [ebp+0Dh], 0
mov     al, [ebp+0Dh]
mov     [ebp+0Ch], al
mov     word ptr [ecx], 1
mov     word ptr [ecx+4], 0
mov     dword ptr [ecx+0Ch], 180h
mov     eax, [ecx+0Ch]
mov     [ecx+8], eax
inc     byte ptr [ebp+9]
mov     byte ptr [ebp+0Ah], 0
jmp     short loc_4CF7A7

loc_4CF74E:
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
mov     eax, [edx+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
sub     eax, 610h
mov     [ebp+16h], ax
mov     ax, [edx+4]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     [edx+4], ax
mov     ah, byte ptr ds:dword_560BDC
test    ah, ah
jnz     short loc_4CF7A7
inc     byte ptr [ebp+8]
mov     [ebp+9], ah
mov     [ebp+0Ah], ah

loc_4CF7A7:
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
mov     eax, ebp
call    sub_4CFCAB
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 12Ch
mov     eax, ebp
call    sub_4ED88B

loc_4CF7F0:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4CF6B9 endp

db 90h
jpt_4CF83E dd offset loc_4CF845 ; jump table for switch statement
dd offset loc_4CF853
dd offset loc_4CF89D
dd offset loc_4CF93C



sub_4CF807 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ebx, edx
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
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
call    sub_4CFA9F
mov     al, [ecx+9]
cmp     al, 3           ; switch 4 cases
ja      def_4CF83E      ; jumptable 004CF83E default case
and     eax, 0FFh
jmp     jpt_4CF83E[eax*4] ; switch jump

loc_4CF845:             ; jumptable 004CF83E case 0
mov     word ptr [ecx+16h], 0F400h

loc_4CF84B:
inc     byte ptr [ecx+9]
jmp     def_4CF83E      ; jumptable 004CF83E default case

loc_4CF853:             ; jumptable 004CF83E case 1
sub     word ptr [ecx+14h], 0Ch
mov     eax, [ebx+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
sub     eax, 0C00h
mov     [ecx+16h], ax
mov     ax, [ebx+4]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     [ebx+4], ax
cmp     word ptr [ecx+14h], 0
jge     def_4CF83E      ; jumptable 004CF83E default case
mov     word ptr [ecx+14h], 0
mov     word ptr [ebx+2], 800h
jmp     short loc_4CF84B

loc_4CF89D:             ; jumptable 004CF83E case 2
mov     ax, [ebx+2]
add     eax, 2
and     ah, 0Fh
mov     [ebx+2], ax
mov     ax, [ecx+56h]
add     eax, 2
and     ah, 0Fh
mov     [ecx+56h], ax
mov     eax, [ebx]
sar     eax, 10h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 8
sar     eax, 0Ch
mov     [ecx+14h], ax
mov     eax, [ebx]
sar     eax, 10h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 8
sar     eax, 0Ch
cwde
add     eax, 7D8h
mov     [ecx+18h], ax
mov     eax, [ebx+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
sub     eax, 0C00h
mov     [ecx+16h], ax
mov     ax, [ebx+4]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     [ebx+4], ax
cmp     word ptr [ecx+56h], 800h
jnz     short def_4CF83E ; jumptable 004CF83E default case
jmp     loc_4CF84B

loc_4CF93C:             ; jumptable 004CF83E case 3
add     word ptr [ecx+18h], 0Ch
mov     eax, [ebx+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
sub     eax, 0C00h
mov     [ecx+16h], ax
mov     ax, [ebx+4]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     [ebx+4], ax
cmp     word ptr [ecx+18h], 1000h
jle     short def_4CF83E ; jumptable 004CF83E default case
mov     word ptr [ecx+14h], 0F500h
mov     word ptr [ecx+16h], 0F400h
mov     word ptr [ecx+18h], 1000h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 800h
mov     word ptr [ecx+58h], 0
mov     word ptr [ebx+2], 0C00h
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

def_4CF83E:             ; jumptable 004CF83E default case
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
mov     eax, ecx
call    sub_4CFCAB
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4CF807 endp




sub_4CF9E1 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ebx, edx
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
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
call    sub_4CFA9F
mov     ax, [ebx+2]
add     eax, 2
and     ah, 0Fh
mov     [ebx+2], ax
mov     ax, [ecx+56h]
add     eax, 2
and     ah, 0Fh
mov     [ecx+56h], ax
mov     eax, [ebx]
sar     eax, 10h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 8
sar     eax, 0Ch
mov     [ecx+14h], ax
mov     eax, [ebx]
sar     eax, 10h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 8
sar     eax, 0Ch
cwde
add     eax, 1000h
mov     [ecx+18h], ax
mov     eax, [ebx+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
sub     eax, 0C00h
mov     [ecx+16h], ax
mov     ax, [ebx+4]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     [ebx+4], ax
jmp     def_4CF83E      ; jumptable 004CF83E default case
sub_4CF9E1 endp




sub_4CFA9F proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= word ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     edi, eax
mov     eax, [edx+10h]
and     eax, 0FFFFFFh
jz      short loc_4CFB0A
test    byte ptr [edx+13h], 38h
jz      short loc_4CFB0A
test    byte ptr [edx], 1
jz      short loc_4CFAFD
mov     esi, [edx+8]
mov     [edx+0Ch], esi
mov     ecx, esi
sub     ecx, eax
mov     [edx+8], ecx
test    ecx, ecx
jg      short loc_4CFAE4
and     byte ptr [edx], 0FEh
mov     byte ptr [edi+0Ch], 0
mov     byte ptr [edi+0Ah], 1
mov     eax, 1Bh
call    sub_47EEAE

loc_4CFAE4:
lea     edx, [edi+14h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     dword ptr [edi+0C4h], 0FFFFFFh
jmp     short loc_4CFB0A

loc_4CFAFD:
lea     edx, [edi+14h]
mov     eax, 9Bh
call    sub_4D8BC3

loc_4CFB0A:
mov     dl, [edi+0Ah]
cmp     dl, 1
jb      loc_4CFCA3
jbe     short loc_4CFB26
cmp     dl, 2
jz      loc_4CFC2E
jmp     loc_4CFCA3

loc_4CFB26:
mov     edx, [edi+9]
sar     edx, 18h
mov     esi, 5
mov     eax, edx
sar     edx, 1Fh
idiv    esi
test    edx, edx
jnz     loc_4CFC18
call    sub_4DE13B
mov     edx, eax
mov     ebp, eax
test    eax, eax
jz      loc_4CFC18
call    rand_
mov     [esp+34h+var_1C], eax
mov     eax, [esp+34h+var_1C]
mov     [esp+34h+var_18], ax
mov     byte ptr [edx], 5
mov     byte ptr [edx+2], 80h
mov     byte ptr [edx+3], 41h ; 'A'
mov     byte ptr [edx+0Dh], 1
mov     eax, [edi+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFE000h
mov     esi, esp
call    sub_4DD510
lea     edx, [esp+34h+var_24]
mov     eax, esp
call    sub_4DD57B
mov     edx, [esp+16h]
sar     edx, 10h
mov     eax, edx
sar     eax, 2
and     eax, 0Fh
test    dl, 1
jnz     short loc_4CFBB2
mov     edx, [esp+0Eh]
sar     edx, 10h
add     edx, eax
jmp     short loc_4CFBBB

loc_4CFBB2:
mov     edx, [esp+0Eh]
sar     edx, 10h
sub     edx, eax

loc_4CFBBB:
mov     word ptr [esp+34h+var_24], dx
mov     eax, [esp+34h+var_1C+2]
sar     eax, 10h
mov     edx, eax
sar     edx, 4
sar     eax, 6
and     eax, 0Fh
test    dl, 1
mov     edx, [esp+34h+var_24+2]
sar     edx, 10h
add     edx, eax
mov     word ptr [esp+34h+var_20], dx
mov     dx, [edi+14h]
mov     esi, [esp+34h+var_24]
add     edx, esi
mov     [ebp+48h], dx
mov     dx, [edi+18h]
mov     eax, [esp+34h+var_20]
add     edx, eax
mov     [ebp+4Ch], dx
mov     edx, [esp+34h+var_1C+2]
sar     edx, 10h
sar     edx, 8
and     edx, 0Fh
mov     eax, [edi+14h]
sar     eax, 10h
add     eax, edx
mov     [ebp+4Ah], ax

loc_4CFC18:
mov     ch, [edi+0Ch]
inc     ch
mov     [edi+0Ch], ch
cmp     ch, 15h
jnz     loc_4CFCA3
inc     byte ptr [edi+0Ah]
jmp     short loc_4CFCA3

loc_4CFC2E:
call    sub_4DE13B
mov     ebp, eax
test    eax, eax
jz      short loc_4CFCA3
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 28h ; '('
mov     byte ptr [eax+0Fh], 0Ch
mov     eax, [edi+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFE000h
mov     esi, esp
call    sub_4DD510
lea     edx, [esp+34h+var_24]
mov     eax, esp
call    sub_4DD57B
mov     dx, [edi+14h]
mov     ebx, [esp+34h+var_24]
add     edx, ebx
mov     [ebp+1Ch], dx
mov     ax, [edi+16h]
mov     [ebp+1Eh], ax
mov     dx, [edi+18h]
mov     ecx, [esp+34h+var_20]
add     edx, ecx
mov     [ebp+20h], dx
call    rand_
and     al, 0Fh
mov     [ebp+9], al

loc_4CFCA3:
add     esp, 20h
jmp     loc_4CF7F0
sub_4CFA9F endp




; int __fastcall sub_4CFCAB(int, int)
sub_4CFCAB proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
push    edi             ; int
sub     esp, 10h
mov     ecx, eax
mov     edi, esp
mov     esi, offset unk_4CF64F
movsd
movsd
movsd
movsd
cmp     byte ptr [eax+0Ah], 0
jz      short loc_4CFCE6
xor     edx, edx
mov     dl, [ecx+0Dh]
mov     ebx, 24h ; '$'
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     ax, ds:word_538ED8[edx*2]
mov     [ecx+58h], ax
inc     byte ptr [ecx+0Dh]

loc_4CFCE6:
lea     ebx, [ecx+8Ch]
mov     eax, ebx
call    sub_4EF184
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, [ecx+54h]
sar     eax, 10h
mov     edx, ebx
call    sub_4EF50D
mov     eax, [ecx+56h]
sar     eax, 10h
mov     edx, ebx
call    sub_4EF57E
add     esp, 10h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CFCAB endp




sub_4CFD1F proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4CFD25[edx*4]
pop     edx
retn
sub_4CFD1F endp




sub_4CFD2E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     eax, ds:dword_560C00
lea     edi, [ecx+14h]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [ecx+1Ch]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
or      byte ptr [ecx], 6
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+78h], 0
inc     byte ptr [ecx+8]
lea     ebx, [ecx+8Ch]
mov     eax, ebx
call    sub_4EF184
mov     edx, offset unk_538F2C
mov     eax, ebx
call    sub_4EF689
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CFD2E endp




sub_4CFD96 proc near
push    edx
push    esi
push    edi
mov     edx, ds:dword_560C00
lea     edi, [eax+14h]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [eax+1Ch]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
mov     word ptr [eax+58h], 0
lea     edi, [eax+0BCh]
lea     esi, [eax+14h]
movsd
movsd
pop     edi
pop     esi
pop     edx
retn
sub_4CFD96 endp




sub_4CFDC6 proc near
push    edx
push    esi
push    edi
mov     edx, ds:dword_560C00
lea     edi, [eax+14h]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [eax+1Ch]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
xor     byte ptr [eax+0Ch], 1
lea     edi, [eax+0BCh]
lea     esi, [eax+14h]
movsd
movsd
test    byte ptr [eax+0Ch], 1
jz      short loc_4CFE02
add     word ptr [eax+0BCh], 8
pop     edi
pop     esi
pop     edx
retn

loc_4CFE02:
sub     word ptr [eax+0BCh], 8
pop     edi
pop     esi
pop     edx
retn
sub_4CFDC6 endp




sub_4CFE0E proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4CFE14[edx*4]
pop     edx
retn
sub_4CFE0E endp




sub_4CFE1D proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
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
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4CFE47[edx*4]
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
test    byte ptr [ebp+0], 1
jz      short loc_4CFE9E
mov     ecx, 1000008h

loc_4CFE8D:
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697

loc_4CFE9E:
test    byte ptr [ebp+0], 2
jz      short loc_4CFEBA
mov     ecx, 1
mov     ebx, 200h
mov     edx, 104h
mov     eax, ebp
call    sub_4ED88B

loc_4CFEBA:
add     esp, 10h

loc_4CFEBD:
pop     ebp

loc_4CFEBE:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CFE1D endp




sub_4CFEC4 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+0DCh]
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     word ptr [eax+54h], 0
mov     word ptr [eax+56h], 0
mov     word ptr [eax+58h], 0
mov     dword ptr [eax+44h], 0
mov     dword ptr [eax+48h], 0
mov     dword ptr [eax+64h], 0
mov     dword ptr [eax+70h], 0
mov     dword ptr [eax+74h], 0
mov     word ptr [eax+4Ch], 2
xor     edx, edx
call    sub_4DD0F8
mov     byte ptr [ebx+20h], 1
mov     word ptr [ebx+1Eh], 140h
lea     esi, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, esi
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_24], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     word ptr [ecx+6Eh], 400h
mov     dword ptr [ecx+78h], offset unk_538FEB
mov     dword ptr [ecx+10h], offset unk_538FF7
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     byte ptr [ebx+22h], 0Fh
mov     byte ptr [ebx+23h], 0
mov     byte ptr [ebx+24h], 0
mov     byte ptr [ebx+25h], 0
mov     byte ptr [ebx+26h], 0
mov     eax, ecx
call    sub_4CFF9D
add     esp, 10h
jmp     loc_4CFEBE
sub_4CFEC4 endp




sub_4CFF9D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
lea     ecx, [eax+0DCh]
mov     esi, offset byte_5F8364
cmp     byte ptr [eax+0Ch], 0
jnz     loc_4D0098
mov     eax, ebx
call    sub_4D07D8
xor     edx, edx
mov     dl, [ebx+9]
mov     eax, ebx
call    ds:funcs_4CFFC6[edx*4]
cmp     byte ptr [ecx+24h], 0
jnz     short loc_4D000B
mov     edx, ds:dword_5F8412
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, dword ptr ds:unk_5F83D0
sar     edx, 10h
cmp     eax, edx
jle     short loc_4D000B
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4D000B
mov     edx, 15h
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+24h], 1

loc_4D000B:
cmp     byte ptr [ecx+25h], 0
jz      short loc_4D001B
cmp     byte ptr [esi+71h], 0
jl      short loc_4D001B
mov     byte ptr [ecx+25h], 0

loc_4D001B:
cmp     byte ptr [esi+71h], 0
jge     short loc_4D005B
cmp     byte ptr [ecx+25h], 0
jnz     short loc_4D005B
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4D005B
xor     edx, edx
mov     dl, [ecx+26h]
mov     dl, ds:byte_538FE8[edx]
and     edx, 0FFh
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+25h], 1
mov     ah, [ecx+26h]
cmp     ah, 2
jz      short loc_4D005B
mov     dl, ah
inc     dl
mov     [ecx+26h], dl

loc_4D005B:
cmp     ebx, [esi+184h]
jnz     short loc_4D0098
mov     dword ptr [esi+184h], 0
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4D0098
or      byte ptr [esi+0BDh], 40h
mov     eax, esi
call    sub_4B55D5
mov     edx, 13h
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ebx+8], 3
mov     byte ptr [ebx+9], 0

loc_4D0098:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CFF9D endp



; Attributes: thunk

sub_4D009D proc near
jmp     sub_4DE371
sub_4D009D endp




sub_4D00A2 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4D015D
mov     bl, [edx+9]
test    bl, bl
jnz     short loc_4D00CC
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4D00CC:
cmp     bl, 1
jnz     short loc_4D0134
mov     byte ptr ds:dword_77EA5A+2, bl
mov     ah, 3
mov     ds:byte_77EA5E, ah
mov     ds:byte_77EA5F, bl
mov     word ptr ds:dword_77EA4E+2, 0F360h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 600h
mov     word ptr ds:dword_77EA5A, 0C00h
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
mov     byte ptr ds:word_77E7FC+1, ah
mov     ah, 1
mov     ds:byte_77E7FE, ah
add     [edx+9], ah
pop     edx
pop     ecx
pop     ebx
retn

loc_4D0134:
mov     cl, byte ptr ds:dword_77EA5A+2
cmp     cl, 2
jnz     short loc_4D015D
cmp     ds:word_6E23D6, 0
jnz     short loc_4D015D
mov     ch, cl
inc     ch
mov     byte ptr ds:dword_77EA5A+2, ch
mov     eax, offset byte_5F8364
call    sub_4B565A

loc_4D015D:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D00A2 endp




sub_4D0161 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
lea     ecx, [eax+0DCh]
xor     eax, eax
mov     al, [ecx+20h]
shl     eax, 3
mov     edx, offset unk_538F78
add     edx, eax
lea     eax, [ebx+14h]
call    sub_4DDDB4
and     ah, 0Fh
mov     [ebx+56h], ax
mov     byte ptr [ebx+9], 1
xor     eax, eax
mov     al, [ecx+20h]
shl     eax, 3
mov     edx, offset unk_538F78
add     edx, eax
sub     eax, 8
add     eax, offset unk_538F78
call    sub_4DD685
mov     [ecx+10h], eax
mov     [ecx+14h], eax
cmp     byte ptr [ecx+20h], 5
jb      short loc_4D01BC
mov     word ptr [ebx+44h], 0A0h

loc_4D01BC:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D0161 endp




sub_4D01C0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+0DCh]
mov     edx, [eax+42h]
sar     edx, 10h
mov     eax, [esi+1Ch]
sar     eax, 10h
cmp     edx, eax
jz      short loc_4D01E5
mov     ax, [edi+4Ch]
add     [edi+44h], ax

loc_4D01E5:
mov     edx, [edi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
mov     eax, edi
call    sub_4D0790
mov     eax, [esi+10h]
mov     [esi+14h], eax
xor     eax, eax
mov     al, [esi+20h]
shl     eax, 3
mov     edx, offset unk_538F78
add     edx, eax
lea     ecx, [edi+14h]
mov     eax, ecx
call    sub_4DD685
mov     [esi+10h], eax
mov     eax, [esi+14h]
cmp     eax, [esi+10h]
jge     loc_4CFEBE
mov     ah, [esi+20h]
inc     ah
mov     [esi+20h], ah
cmp     ah, 0Dh
jnz     short loc_4D0253
mov     byte ptr [edi+9], 3
mov     word ptr [edi+4Ch], 200h
mov     edx, ecx
mov     eax, 180h
call    sub_4D8BC3
jmp     loc_4CFEBE

loc_4D0253:
mov     byte ptr [edi+9], 2
xor     eax, eax
mov     al, [esi+20h]
shl     eax, 3
mov     edx, offset unk_538F78
add     edx, eax
mov     eax, ecx
call    sub_4DDDB4
and     ah, 0Fh
mov     [esi+18h], ax
mov     edx, [edi+54h]
sar     edx, 10h
mov     eax, [esi+16h]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
call    abs_
and     ah, 0Fh
mov     [esi+1Ah], ax
cmp     ax, 800h
jl      short loc_4D02A5
mov     eax, 1000h
mov     cx, [esi+1Ah]
sub     eax, ecx
mov     [esi+1Ah], ax

loc_4D02A5:
mov     edx, [esi+18h]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [esi+1Ch], ax
jmp     loc_4CFEBE
sub_4D01C0 endp




sub_4D02BD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+0DCh]
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
call    abs_
cmp     eax, 800h
jl      loc_4D0381
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
cmp     edx, eax
jle     short loc_4D0343
mov     ax, [esi+56h]
add     eax, 14h
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
call    abs_
cmp     eax, 800h
jge     loc_4D03E2
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
cmp     edx, eax
jl      loc_4D03E2
jmp     loc_4D03CF

loc_4D0343:
mov     ax, [esi+56h]
sub     eax, 14h
and     ah, 0Fh
mov     [esi+56h], ax
mov     eax, [esi+54h]
sar     eax, 10h
mov     edx, [edi+16h]
sar     edx, 10h
sub     eax, edx
call    abs_
cmp     eax, 800h
jge     loc_4D03E2
mov     eax, [esi+54h]
sar     eax, 10h
mov     edx, [edi+16h]
sar     edx, 10h
cmp     eax, edx

loc_4D037D:
jg      short loc_4D03E2
jmp     short loc_4D03CF

loc_4D0381:
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
cmp     edx, eax
jle     short loc_4D03AF
mov     ax, [esi+56h]
sub     eax, 14h
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
cmp     edx, eax
jmp     short loc_4D037D

loc_4D03AF:
mov     ax, [esi+56h]
add     eax, 14h
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
cmp     edx, eax
jl      short loc_4D03E2

loc_4D03CF:
mov     ax, [edi+18h]
mov     [esi+56h], ax
mov     byte ptr [esi+9], 3
mov     eax, esi
call    sub_4D043F

loc_4D03E2:
mov     eax, [edi+18h]
sar     eax, 10h
mov     edx, [edi+1Ah]
sar     edx, 10h
cmp     eax, edx
jle     short loc_4D03FC
mov     ax, [esi+4Ch]
sub     [esi+44h], ax
jmp     short loc_4D0404

loc_4D03FC:
mov     ax, [esi+4Ch]
add     [esi+44h], ax

loc_4D0404:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_4D0790
xor     eax, eax
mov     al, [edi+20h]
shl     eax, 3
mov     edx, offset unk_538F78
add     edx, eax
lea     eax, [esi+14h]
call    sub_4DDDB4
and     ah, 0Fh
mov     [edi+18h], ax
jmp     loc_4CFEBE
sub_4D02BD endp




sub_4D043F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+0DCh]
mov     dl, [ecx+20h]
cmp     dl, 7
jb      short loc_4D0486
add     eax, 14h
cmp     dl, 7
jbe     loc_4D0550
cmp     dl, 0Ch
jb      short loc_4D0478
jbe     loc_4D05B3
cmp     dl, 0Dh
jz      loc_4D066D
jmp     loc_4D06BC

loc_4D0478:
cmp     dl, 0Ah
jz      loc_4D05AD
jmp     loc_4D06BC

loc_4D0486:
cmp     dl, 2
jb      loc_4D06BC
jbe     short loc_4D049F
cmp     dl, 5
jz      loc_4D053A
jmp     loc_4D06BC

loc_4D049F:
mov     bl, [eax+0Ah]
test    bl, bl
jnz     short loc_4D04CD
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4D06C7
mov     edx, 17h
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [esi+0Ah]

loc_4D04C2:
mov     word ptr [esi+44h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D04CD:
cmp     bl, 1
jnz     short loc_4D04F2
test    [ecx+22h], bl
jnz     loc_4D06C7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4D06C7
add     bl, bl
mov     [eax+0Ah], bl
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D04F2:
cmp     bl, 2
jnz     short loc_4D050B
mov     edx, 16h
xor     eax, eax
call    sub_4A0E24

loc_4D0503:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D050B:
cmp     bl, 3
jnz     loc_4D06C7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4D06C7
mov     byte ptr [esi+9], 0
lea     edx, [esi+14h]
mov     eax, 17Ch
call    sub_4D8BC3
mov     word ptr [esi+44h], 0
jmp     short loc_4D057F

loc_4D053A:
test    byte ptr [ecx+22h], 2
jnz     short loc_4D0545
inc     byte ptr [esi+0Ah]
jmp     short loc_4D0559

loc_4D0545:
cmp     byte ptr [ecx+23h], 0
jnz     short loc_4D05A5
lea     edx, [esi+14h]
jmp     short loc_4D0597

loc_4D0550:
test    byte ptr [ecx+22h], 4

loc_4D0554:
jnz     short loc_4D058F
inc     byte ptr [esi+0Ah]

loc_4D0559:
cmp     byte ptr [esi+0Ah], 0
jz      loc_4D06C7
mov     byte ptr [esi+9], 0
cmp     word ptr [esi+44h], 0
jnz     short loc_4D057B
lea     edx, [esi+14h]
mov     eax, 17Ch
call    sub_4D8BC3

loc_4D057B:
mov     byte ptr [ecx+23h], 0

loc_4D057F:
mov     eax, esi
call    sub_4D0161
mov     byte ptr [esi+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D058F:
cmp     byte ptr [ecx+23h], 0
jnz     short loc_4D05A5
mov     edx, eax

loc_4D0597:
mov     eax, 17Dh
call    sub_4D8BC3
mov     byte ptr [ecx+23h], 1

loc_4D05A5:
mov     word ptr [esi+44h], 0
jmp     short loc_4D0559

loc_4D05AD:
test    byte ptr [ecx+22h], 8
jmp     short loc_4D0554

loc_4D05B3:
mov     dh, [esi+0Ah]
test    dh, dh
jnz     short loc_4D0615
cmp     byte ptr [ecx+23h], 0
jnz     short loc_4D05D0
mov     edx, eax
mov     eax, 17Dh
call    sub_4D8BC3
mov     byte ptr [ecx+23h], 1

loc_4D05D0:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4D06C7
inc     byte ptr [esi+0Ah]
mov     edx, 18h
xor     eax, eax
call    sub_4A0E24
xor     eax, eax
mov     al, [ecx+20h]
shl     eax, 3
lea     edx, [eax+8]
add     edx, offset unk_538F78
sub     eax, 8
add     eax, offset unk_538F78
call    sub_4DD685
mov     [ecx+10h], eax
mov     [ecx+14h], eax
jmp     loc_4D04C2

loc_4D0615:
cmp     dh, 1
jnz     short loc_4D063C
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4D06C7
mov     byte ptr [esi+9], 4
mov     edx, eax
mov     eax, 17Bh
call    sub_4D8BC3
jmp     loc_4D0503

loc_4D063C:
mov     bh, [ecx+21h]
test    bh, bh
jz      short loc_4D064F
mov     al, bh
dec     al
mov     [ecx+21h], al
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D064F:
mov     byte ptr [esi+9], 1
mov     word ptr [esi+4Ch], 0Fh
mov     edx, eax
mov     eax, 17Eh
call    sub_4D8BC3
mov     [esi+0Ah], bh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D066D:
cmp     word ptr [esi+44h], 0
jle     short loc_4D0692
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Ch]
sub     [esi+44h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D0692:
mov     word ptr [esi+44h], 0
mov     byte ptr [esi+3], 1
mov     byte ptr [esi+8], 0
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     byte ptr ds:word_77E7FC+1, 0Ch
xor     dl, dl
mov     ds:byte_77E7FE, dl
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D06BC:
mov     byte ptr [esi+9], 0
mov     eax, esi
call    sub_4D0161

loc_4D06C7:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D043F endp




sub_4D06CC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+0DCh]
cmp     word ptr [eax+44h], 140h
jz      short loc_4D06EA
mov     ax, [eax+4Ch]
add     [esi+44h], ax

loc_4D06EA:
mov     cx, [esi+56h]
cmp     cx, 800h
jz      short loc_4D070A
mov     eax, ecx
sub     eax, 0Ah
mov     [esi+56h], ax
cmp     ax, 800h
jge     short loc_4D070A
mov     word ptr [esi+56h], 800h

loc_4D070A:
push    0
push    0
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
add     ebx, 800h
lea     edx, [esi+1Ch]
lea     ebp, [esi+14h]
mov     eax, ebp
call    sub_4DD4C5
mov     eax, esi
call    sub_4D0790
xor     eax, eax
mov     al, [edi+20h]
shl     eax, 3
add     eax, 8
mov     edx, offset unk_538F78
add     edx, eax
mov     eax, ebp
call    sub_4DD685
mov     [edi+10h], eax
cmp     eax, 25Dh
jge     loc_4CFEBD
xor     eax, eax
mov     al, [edi+20h]
shl     eax, 3
mov     edx, offset unk_538F78
add     edx, eax
mov     eax, ebp
call    sub_4DD685
mov     [edi+10h], eax
mov     [edi+14h], eax
mov     byte ptr [esi+9], 3
mov     byte ptr [edi+21h], 3Ch ; '<'
mov     word ptr [edi+1Eh], 400h
mov     word ptr [esi+44h], 0
jmp     loc_4CFEBD
sub_4D06CC endp




sub_4D0790 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
call    sub_42CE47
mov     ebx, eax
test    eax, eax
jz      short loc_4D07D4
mov     eax, ecx
call    sub_4EE9F8
mov     edx, 8000h
mov     eax, ebx
call    sub_4EE6C2
mov     eax, 30h ; '0'
call    sub_47E8B8
mov     eax, 31Ch
call    sub_47E8B8
lea     edx, [ecx+14h]
mov     eax, 17Fh
call    sub_4D8BC3

loc_4D07D4:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D0790 endp




sub_4D07D8 proc near
push    edx
add     eax, 0DCh
mov     edx, [eax]
cmp     byte ptr [edx+2], 33h ; '3'
jz      short loc_4D07EA
and     byte ptr [eax+22h], 0FEh

loc_4D07EA:
mov     edx, [eax+4]
cmp     byte ptr [edx+2], 33h ; '3'
jz      short loc_4D07F7
and     byte ptr [eax+22h], 0FDh

loc_4D07F7:
mov     edx, [eax+8]
cmp     byte ptr [edx+2], 33h ; '3'
jz      short loc_4D0804
and     byte ptr [eax+22h], 0FBh

loc_4D0804:
mov     edx, [eax+0Ch]
cmp     byte ptr [edx+2], 33h ; '3'
jz      short loc_4D0811
and     byte ptr [eax+22h], 0F7h

loc_4D0811:
pop     edx
retn
sub_4D07D8 endp




sub_4D0813 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
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
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D083D[edx*4]
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
test    byte ptr [ebp+0], 1
jz      loc_4CFE9E
mov     ecx, 20000008h
jmp     loc_4CFE8D
sub_4D0813 endp




sub_4D088C proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+78h], offset unk_538FEB
mov     dword ptr [ecx+10h], offset unk_538FF7
cmp     byte ptr [ecx+0Dh], 0
jz      short loc_4D08F6
mov     byte ptr [ecx+8], 3
jmp     short loc_4D08FA

loc_4D08F6:
mov     byte ptr [ecx+8], 1

loc_4D08FA:
mov     byte ptr [ecx+0Ah], 0
mov     dword ptr [ecx+0C4h], offset unk_808080
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D088C endp




sub_4D090D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
cmp     ds:byte_77E7D4, 1Bh
jnz     loc_4D09CD
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_4D0992
mov     ebx, ds:dword_5F84E8
cmp     esi, ebx
jnz     loc_4CFEBE
xor     edi, edi
mov     ds:dword_5F84E8, edi
movsx   edx, ax
mov     ax, [ebx+56h]
and     ah, 0Fh
cwde
sub     edx, eax
lea     eax, [edx+180h]
and     eax, 0FFFh
cmp     eax, 300h
jge     loc_4CFEBE
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4CFEBE
mov     ecx, 0D2h
xor     ebx, ebx
xor     edx, edx
mov     eax, offset byte_5F8364
call    sub_4A62D4
mov     byte ptr [esi+0Ah], 1
jmp     loc_4CFEBE

loc_4D0992:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4CFEBE
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4D09B8
mov     ds:byte_77E805, 1

loc_4D09AF:
mov     byte ptr [esi+0Ah], 0
jmp     loc_4CFEBE

loc_4D09B8:
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 1
jnz     loc_4CFEBE
jmp     short loc_4D09AF

loc_4D09CD:
cmp     esi, ds:dword_5F84E8
jnz     loc_4CFEBE
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
movsx   edx, ax
mov     ax, [esi+56h]
and     ah, 0Fh
cwde
sub     edx, eax
add     edx, 180h
and     edx, 0FFFh
cmp     edx, 300h
jge     loc_4CFEBE
mov     ds:byte_77E805, 1
jmp     loc_4CFEBE
sub_4D090D endp




sub_4D0A12 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4D0A2F
jbe     short loc_4D0A46
cmp     al, 2
jz      short loc_4D0A6A
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D0A2F:
test    al, al
jnz     short loc_4D0A77
inc     al
mov     [esi+0Ah], al
mov     dword ptr [esi+44h], 0
mov     dword ptr [esi+48h], 0

loc_4D0A46:
mov     ecx, [edx+184h]
cmp     esi, ecx
jnz     short loc_4D0A77
mov     ecx, [ecx+9]
sar     ecx, 18h
lea     eax, [esi+14h]
xor     ebx, ebx
xor     edx, edx
call    sub_4A62D4
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D0A6A:
cmp     byte ptr ds:dword_77E760, 0
jnz     short loc_4D0A77
mov     byte ptr [esi+0Ah], 1

loc_4D0A77:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D0A12 endp

dword_4D0A7C dd 3 dup(200h), 0
dword_4D0A8C dd 3 dup(200h), 0
dword_4D0A9C dd 3 dup(200h), 0
dword_4D0AAC dd 3 dup(200h), 0

loc_4D0ABC:
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+3]
lea     edx, [eax+0DCh]
call    ds:funcs_4D0AC9[ecx*4]
pop     edx
pop     ecx
retn



sub_4D0AD3 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
mov     edi, esp
mov     esi, offset dword_4D0A7C
movsd
movsd
movsd
movsd
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
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4D0B07[ecx*4]

loc_4D0B0E:             ; int
lea     ecx, [ebp+8Ch]
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
add     esp, 10h

loc_4D0B48:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4D0AD3 endp




sub_4D0B4E proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
cmp     ds:byte_77E7D4, 0Dh
jnz     short loc_4D0B6F
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
jmp     short loc_4D0B78

loc_4D0B6F:
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8

loc_4D0B78:
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+10h], 0
mov     word ptr [ebx], 0
mov     ax, [ecx+16h]
mov     [ebx+2], ax
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
call    sub_4DE13B
test    eax, eax
jz      short loc_4D0BCA
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 15h
mov     byte ptr [eax+3], 0
mov     bl, [ecx+1]
mov     [eax+0Ch], bl
mov     byte ptr [eax+0Dh], 0
or      byte ptr [eax+6], 20h

loc_4D0BCA:
call    sub_4DE13B
test    eax, eax
jz      short loc_4D0BE8
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 15h
mov     byte ptr [eax+3], 1
mov     bl, [ecx+1]
mov     [eax+0Ch], bl
or      byte ptr [eax+6], 20h

loc_4D0BE8:
inc     byte ptr [ecx+8]
pop     ecx
pop     ebx
retn
sub_4D0B4E endp

align 10h
jpt_4D0C1B dd offset loc_4D0C22 ; jump table for switch statement
dd offset loc_4D0C5A
dd offset loc_4D0C75
dd offset loc_4D0CA8



sub_4D0C00 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     eax, offset dword_560BDC
mov     bl, [esi+9]
cmp     bl, 3           ; switch 4 cases
ja      def_4D0C1B      ; jumptable 004D0C1B default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_4D0C1B[ecx*4] ; switch jump

loc_4D0C22:             ; jumptable 004D0C1B case 0
mov     ax, [edx]
xor     ah, ah
and     al, 3Fh
cwde
mov     ecx, dword ptr ds:unk_564C32[eax*2]
sar     ecx, 10h
mov     eax, ecx
shl     eax, 2
add     ecx, eax
sar     ecx, 0Ch
mov     eax, [edx]
sar     eax, 10h
add     eax, ecx
mov     [esi+16h], ax
inc     word ptr [edx]
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
jmp     short def_4D0C1B ; jumptable 004D0C1B default case

loc_4D0C5A:             ; jumptable 004D0C1B case 1
mov     byte ptr [esi+0Ch], 1
mov     dx, [edx+2]
mov     [esi+16h], dx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
inc     byte ptr [esi+9]

loc_4D0C75:             ; jumptable 004D0C1B case 2
mov     cx, [esi+44h]
cmp     cx, 190h
jge     short loc_4D0C89
mov     edi, ecx
add     edi, 8
mov     [esi+44h], di

loc_4D0C89:
mov     edx, [eax+10h]
cmp     edx, 14h
jl      short loc_4D0C9D
cmp     edx, 78h ; 'x'
jge     short loc_4D0C9D
add     word ptr [esi+56h], 8
jmp     short def_4D0C1B ; jumptable 004D0C1B default case

loc_4D0C9D:
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short def_4D0C1B ; jumptable 004D0C1B default case
inc     byte ptr [esi+9]
jmp     short def_4D0C1B ; jumptable 004D0C1B default case

loc_4D0CA8:             ; jumptable 004D0C1B case 3
mov     dx, [esi+44h]
cmp     dx, 300h
jge     short def_4D0C1B ; jumptable 004D0C1B default case
mov     ebx, edx
add     ebx, 10h
mov     [esi+44h], bx

def_4D0C1B:             ; jumptable 004D0C1B default case
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4D0C00 endp




sub_4D0CDD proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     ebp, eax
mov     edi, esp
mov     esi, offset dword_4D0A8C
movsd
movsd
movsd
movsd
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
xor     ecx, ecx
mov     cl, [eax+8]
add     eax, 0DCh
mov     [esp+28h+var_18], eax
mov     edx, eax
mov     eax, ebp
call    ds:funcs_4D0D1E[ecx*4]
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
mov     edx, [esp+28h+var_18]
mov     eax, ebp
call    sub_4D119E
mov     dword ptr [ebp+0CCh], 0
mov     dword ptr [ebp+0D4h], 0
add     esp, 14h
jmp     loc_4D0B48
sub_4D0CDD endp




sub_4D0D83 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+10h], 0
mov     word ptr [ecx+44h], 100h
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+10h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+14h], eax
mov     eax, [ecx+54h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
cmp     byte ptr [ecx+3], 1
jnz     short loc_4D0DF0
mov     dword ptr [esi+2Ch], offset unk_539004
jmp     short loc_4D0DF7

loc_4D0DF0:
mov     dword ptr [esi+2Ch], offset unk_539268

loc_4D0DF7:
mov     edx, esi
mov     eax, ecx
call    sub_4D10E2
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
call    sub_4DE13B
test    eax, eax
jz      short loc_4D0E4A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 15h
mov     byte ptr [eax+3], 0
mov     bl, [ecx+1]
mov     [eax+0Ch], bl
mov     byte ptr [eax+0Dh], 0
or      byte ptr [eax+6], 20h

loc_4D0E4A:
call    sub_4DE13B
test    eax, eax
jz      short loc_4D0E68
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 15h
mov     byte ptr [eax+3], 1
mov     bl, [ecx+1]
mov     [eax+0Ch], bl
or      byte ptr [eax+6], 20h

loc_4D0E68:
lea     ebx, [ecx+14h]
mov     edx, 2
mov     eax, ecx
call    sub_451859
mov     [esi+28h], eax
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
pop     ebx
retn
sub_4D0D83 endp




sub_4D0E85 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
mov     esi, edx
xor     edx, edx
mov     [esp+18h+var_18], edx
xor     ebp, ebp
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jg      loc_4D0F96
jnz     short loc_4D0F07
mov     eax, [esi+4]
sar     eax, 10h
shl     eax, 10h
mov     [esi+10h], eax
mov     eax, [esi+6]
sar     eax, 10h
shl     eax, 10h
mov     [esi+14h], eax
mov     eax, [esi+8]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
cmp     word ptr [esi+0Ch], 0
jge     short loc_4D0F03
mov     eax, [esi+0Ah]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jz      short loc_4D0F07
mov     ax, [esi+0Ch]
xor     ah, ah
and     al, 7Fh
movsx   edx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, offset unk_5393C4
add     edx, eax
mov     [esi+2Ch], edx
jmp     short loc_4D0F07

loc_4D0F03:
add     dword ptr [esi+2Ch], 0Ch

loc_4D0F07:
mov     eax, [esi+2Ch]
cmp     word ptr [eax], 0
jz      short loc_4D0F8D
mov     ebx, [eax]
sar     ebx, 10h
mov     edx, [edi+12h]
sar     edx, 10h
sub     ebx, edx
shl     ebx, 10h
mov     ecx, [eax+2]
sar     ecx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
sub     ecx, eax
shl     ecx, 10h
add     [edi+1Ch], ebx
add     [edi+24h], ecx
add     [edi+34h], ebx
add     [edi+3Ch], ecx
lea     edx, [edi+14h]
lea     eax, [edi+1Ch]
call    sub_4DD57B
lea     edx, [edi+2Ch]
lea     eax, [edi+34h]
call    sub_4DD57B
add     ds:dword_5F8380, ebx
add     ds:dword_5F8388, ecx
add     ds:dword_5F8398, ebx
add     ds:dword_5F83A0, ecx
mov     edx, (offset dword_5F8376+2)
mov     eax, offset dword_5F8380
call    sub_4DD57B
mov     edx, (offset dword_5F838E+2)
mov     eax, offset dword_5F8398
call    sub_4DD57B
add     dword ptr [esi+2Ch], 0Ch

loc_4D0F8D:
mov     edx, esi
mov     eax, edi
call    sub_4D10E2

loc_4D0F96:
mov     eax, [esi+18h]
mov     ebx, [esi+10h]
add     ebx, eax
mov     [esi+10h], ebx
mov     eax, ebx
sar     eax, 10h
mov     [edi+44h], ax
mov     eax, [esi+1Ch]
mov     edx, [esi+14h]
add     edx, eax
mov     [esi+14h], edx
mov     eax, edx
sar     eax, 10h
mov     [edi+48h], ax
mov     eax, [esi+24h]
mov     ecx, [esi+20h]
add     ecx, eax
mov     [esi+20h], ecx
mov     eax, ecx
sar     eax, 10h
mov     [edi+56h], ax
mov     ecx, [edi+46h]
sar     ecx, 10h
mov     edx, [edi+42h]
sar     edx, 10h
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
cmp     byte ptr [edi+9], 0
jnz     short loc_4D1025
lea     eax, [edi+14h]
mov     edx, offset unk_539434
call    sub_4DD69F
cmp     eax, 40h ; '@'
jnb     short loc_4D1025
mov     dword ptr [esi+2Ch], offset unk_5393C4
mov     eax, [esi+2Ch]
cmp     word ptr [eax], 0
jz      short loc_4D1019
mov     ax, [eax+8]
mov     [esi+4], ax
jmp     short loc_4D1022

loc_4D1019:
mov     edx, esi
mov     eax, edi
call    sub_4D10E2

loc_4D1022:
inc     byte ptr [edi+9]

loc_4D1025:
mov     ebx, [edi+0CCh]
test    ebx, 0FFFFFFh
jz      short loc_4D1046
test    byte ptr [edi+0CFh], 1Ch
jz      short loc_4D1046
mov     eax, ebx
and     eax, 0FFFFFFh
mov     [esp+18h+var_18], eax

loc_4D1046:
mov     eax, [edi+0D4h]
test    eax, 0FFFFFFh
jz      short loc_4D1064
test    byte ptr [edi+0D7h], 1Ch
jz      short loc_4D1064
mov     ebp, eax
and     ebp, 0FFFFFFh

loc_4D1064:
cmp     ebp, [esp+18h+var_18]
jle     short loc_4D106C
mov     [esp+18h+var_18], ebp

loc_4D106C:
cmp     [esp+18h+var_18], 0
jz      short loc_4D10DA
cmp     word ptr ds:dword_77E8F8, 0
jnz     short loc_4D10DA
lea     ecx, [edi+14h]
mov     ebx, 2800h
mov     edx, 400h
mov     eax, 1Eh
call    sub_42A70B
mov     eax, [esp+18h+var_18]
mov     di, word ptr ds:dword_77E7E0
sub     edi, eax
mov     word ptr ds:dword_77E7E0, di
test    di, di
jge     short loc_4D10B4
xor     edx, edx
mov     word ptr ds:dword_77E7E0, dx

loc_4D10B4:
mov     edx, ds:dword_77E7E0
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, ds:dword_77E7DC+2
sar     edx, 10h
cmp     edx, eax
jg      short loc_4D10DA
mov     eax, [esi+28h]
or      byte ptr [eax+0Ch], 1

loc_4D10DA:
add     esp, 4
jmp     loc_4D0B48
sub_4D0E85 endp




sub_4D10E2 proc near
push    ebx
push    ecx
push    esi
mov     ebx, eax
mov     ecx, edx
mov     eax, [edx+2Ch]
mov     dx, [eax+8]
mov     [ecx+4], dx
mov     dx, [eax+2]
mov     [ecx+6], dx
mov     dx, [eax+4]
mov     [ecx+8], dx
mov     dx, [eax+6]
mov     [ecx+0Ah], dx
mov     ax, [eax+0Ah]
mov     [ecx+0Ch], ax
mov     edx, [ecx+4]
sar     edx, 10h
mov     eax, [ebx+42h]
sar     eax, 10h
sub     edx, eax
shl     edx, 10h
mov     esi, [ecx+2]
sar     esi, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     [ecx+18h], eax
mov     edx, [ecx+6]
sar     edx, 10h
mov     eax, [ebx+46h]
sar     eax, 10h
sub     edx, eax
shl     edx, 10h
mov     esi, [ecx+2]
sar     esi, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     [ecx+1Ch], eax
mov     edx, [ecx+8]
sar     edx, 10h
mov     eax, [ebx+54h]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
and     eax, 0FFFh
cmp     eax, 800h
jle     short loc_4D1177
sub     eax, 1000h

loc_4D1177:
cmp     eax, 0FFFFF800h
jge     short loc_4D1187
mov     edx, 1000h
sub     edx, eax
mov     eax, edx

loc_4D1187:
mov     ebx, [ecx+2]
sar     ebx, 10h
shl     eax, 10h
mov     edx, eax
sar     edx, 1Fh
idiv    ebx
mov     [ecx+24h], eax
pop     esi
pop     ecx
pop     ebx
retn
sub_4D10E2 endp




sub_4D119E proc near

var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
mov     ebp, edx
test    byte ptr [eax], 1
jz      short loc_4D1228
lea     edi, [ebp+38h]
mov     esi, eax
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [esp+20h+var_1C]
lea     esi, [ebp+38h]
movsd
movsd
lea     edi, [ebp+30h]
lea     esi, [esp+20h+var_1C]
movsd
movsd
push    0
push    0
push    2000000h
sub     word ptr [ebp+3Ah], 280h
add     eax, 0CCh
push    eax
xor     eax, eax
mov     edx, [esp+30h+var_20]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+30h]
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
call    sub_4E01FC
push    0
push    0
push    2000000h
mov     eax, [esp+2Ch+var_20]
add     eax, 0D4h
push    eax
xor     eax, eax
mov     edx, [esp+30h+var_20]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+38h]
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 60h ; '`'
call    sub_4E01FC

loc_4D1228:
add     esp, 0Ch
jmp     loc_4D0B48
sub_4D119E endp




sub_4D1230 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
mov     ecx, edx
mov     edi, esp
mov     esi, offset dword_4D0A9C
movsd
movsd
movsd
movsd
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
xor     ebx, ebx
mov     bl, [eax+8]
call    ds:funcs_4D1266[ebx*4]
mov     ax, [ecx]
xor     ah, ah
and     al, 3Fh
cwde
mov     edx, dword ptr ds:unk_564C32[eax*2]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
add     edx, eax
sar     edx, 0Ch
mov     eax, [ecx]
sar     eax, 10h
add     eax, edx
mov     [ebp+16h], ax
inc     word ptr [ecx]
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
jmp     loc_4D0B0E
sub_4D1230 endp




sub_4D12C0 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
cmp     ds:byte_77E7D4, 0Dh
jnz     short loc_4D12E1
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
jmp     short loc_4D12EA

loc_4D12E1:
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8

loc_4D12EA:
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+10h], offset unk_53943C
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Eh], 1
mov     word ptr [ebx], 0
mov     ax, [ecx+16h]
mov     [ebx+2], ax
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     ecx
pop     ebx
retn
sub_4D12C0 endp

jpt_4D1374 dd offset loc_4D137B ; jump table for switch statement
dd offset loc_4D13A0
dd offset loc_4D13B9
dd offset loc_4D140D
dd offset loc_4D1425
dd offset loc_4D142E



sub_4D1344 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     eax, [eax+0Ah]
sar     eax, 18h
mov     esi, ds:dword_539448[eax*4]
mov     edx, ds:dword_53945C[eax*4]
mov     eax, ds:dword_5394A8[eax*4]
mov     bl, [ecx+9]
cmp     bl, 5           ; switch 6 cases
ja      def_4D1374      ; jumptable 004D1374 default case
movzx   edi, bl
jmp     jpt_4D1374[edi*4] ; switch jump

loc_4D137B:             ; jumptable 004D1374 case 0
mov     edx, ds:dword_5F84E8
cmp     ecx, edx
jnz     def_4D1374      ; jumptable 004D1374 default case
or      ds:byte_5F8421, 40h
xor     ebx, ebx
mov     ds:dword_5F84E8, ebx
inc     byte ptr [edx+9]
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4D13A0:             ; jumptable 004D1374 case 1
cmp     esi, 7FFFFFFFh
jz      short loc_4D13B1
mov     edx, esi
xor     eax, eax
call    sub_4A0E24

loc_4D13B1:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4D13B9:             ; jumptable 004D1374 case 2
cmp     esi, 7FFFFFFFh
jz      short loc_4D13FE
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4D1374      ; jumptable 004D1374 default case
cmp     eax, 7FFFFFFFh
jz      short loc_4D13F5
call    sub_47E888
test    eax, eax
jz      short loc_4D13F1

loc_4D13DE:
mov     eax, 0Ah
call    sub_49E0D7
mov     byte ptr [ecx+9], 3
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4D13F1:
mov     byte ptr [ecx+0Eh], 0

loc_4D13F5:
mov     byte ptr [ecx+9], 4
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4D13FE:
cmp     eax, esi
jz      short loc_4D13F5
call    sub_47E888
test    eax, eax
jnz     short loc_4D13DE
jmp     short loc_4D13F1

loc_4D140D:             ; jumptable 004D1374 case 3
cmp     ds:word_6E23D6, 0
jnz     def_4D1374      ; jumptable 004D1374 default case
inc     bl
mov     [ecx+9], bl
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4D1425:             ; jumptable 004D1374 case 4
and     ds:byte_5F8421, 0BFh
jmp     short loc_4D13B1

loc_4D142E:             ; jumptable 004D1374 case 5
cmp     edx, 7FFFFFFFh
jz      short loc_4D144D
cmp     eax, 7FFFFFFFh
jz      short loc_4D1446
call    sub_47E888
test    eax, eax
jz      short loc_4D144D

loc_4D1446:
mov     eax, edx
call    sub_47E8B8

loc_4D144D:
cmp     byte ptr [ecx+0Eh], 1
jnz     loc_4D14E8
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     eax, ds:dword_539494[eax*4]
cmp     eax, 7FFFFFFFh
jz      short loc_4D14D5
mov     dl, [eax+8]
mov     byte ptr ds:dword_77EA5A+2, dl
mov     dl, [eax+9]
mov     ds:byte_77EA5E, dl
mov     dl, [eax+0Ah]
mov     ds:byte_77EA5F, dl
mov     dx, [eax]
mov     word ptr ds:dword_77EA4E+2, dx
mov     dx, [eax+2]
mov     word ptr ds:dword_77EA52, dx
mov     dx, [eax+4]
mov     word ptr ds:dword_77EA52+2, dx
mov     ax, [eax+6]
mov     word ptr ds:dword_77EA5A, ax
xor     dl, dl
mov     byte ptr ds:dword_77EA5A+3, dl
mov     dh, 0FFh
mov     ds:byte_77EA61, dh
cmp     byte ptr [ecx+0Dh], 4
jnz     short loc_4D14CE
mov     ds:byte_77EA60, dh
jmp     short loc_4D14D5

loc_4D14CE:
mov     ds:byte_77EA60, 2

loc_4D14D5:
mov     eax, ecx
call    sub_432EAB
mov     eax, ecx
call    sub_4DE371
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4D14E8:
mov     byte ptr [ecx+0Eh], 1
mov     byte ptr [ecx+9], 0

def_4D1374:             ; jumptable 004D1374 default case
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4D1344 endp




sub_4D14F5 proc near
push    ebx
push    ecx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
mov     edi, esp
mov     esi, offset dword_4D0AAC
movsd
movsd
movsd
movsd
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
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
xor     ebx, ebx
mov     bl, [eax+8]
call    ds:funcs_4D1528[ebx*4]
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
add     esp, 10h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4D14F5 endp




sub_4D155B proc near
push    ebx
push    ecx
cmp     byte ptr [eax+0Ch], 0
jnz     short loc_4D1592
mov     bx, [edx]
xor     bh, bh
and     bl, 3Fh
movsx   ecx, bx
mov     ebx, dword ptr ds:unk_564C32[ecx*2]
sar     ebx, 10h
mov     ecx, ebx
shl     ecx, 2
add     ecx, ebx
sar     ecx, 0Ch
mov     ebx, [edx]
sar     ebx, 10h
add     ecx, ebx
mov     [eax+16h], cx
inc     word ptr [edx]
jmp     short loc_4D159A

loc_4D1592:
mov     dx, [edx+2]
mov     [eax+16h], dx

loc_4D159A:
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
pop     ecx
pop     ebx
retn
sub_4D155B endp




sub_4D15C1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D15C7[edx*4]
pop     edx
retn
sub_4D15C1 endp




sub_4D15D0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+0DCh]
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+50h]
mov     [ecx+4Eh], ax
mov     [ecx+4Ch], ax
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
lea     eax, [ecx+0E8h]
mov     ebx, 0FFFFFFA0h
mov     edx, 9
call    sub_4E19B9
mov     dword ptr [ecx+78h], offset unk_5394C8
mov     byte ptr [ecx+74h], 0
mov     byte ptr [esi], 0
mov     dword ptr [esi+1Ch], 0
mov     dword ptr [esi+20h], 0
mov     dword ptr [esi+2Ch], 0
mov     dword ptr [esi+30h], 0
mov     word ptr [esi+3Ch], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     eax, ecx
call    sub_4D176E
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D15D0 endp




sub_4D167D proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
lea     ecx, [eax+0DCh]
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
mov     al, [eax+74h]
mov     [ebp+75h], al
mov     dword ptr [ebp+0C4h], offset unk_808080
mov     eax, ebp
call    sub_4D181C
lea     eax, [ebp+0E8h]
mov     edx, ebp
call    sub_4E19CA
mov     [ecx+1Ch], eax
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4D16D6[edx*4]
cmp     byte ptr [ebp+8], 2
jz      loc_4D1764
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
mov     al, [ecx]
xor     edx, edx
mov     dl, al
inc     al
mov     [ecx], al
mov     ax, ds:word_5394F0[edx*2]
add     [ebp+0BEh], ax
and     byte ptr [ecx], 1Fh
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     eax, ebp
call    sub_4D18B9
cmp     byte ptr [ebp+9], 6
jz      short loc_4D174B
mov     eax, ebp
call    sub_4D1933

loc_4D174B:
test    byte ptr [ebp+0], 2
jz      short loc_4D1764
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 28h ; '('
mov     eax, ebp
call    sub_4ED88B

loc_4D1764:
add     esp, 10h

loc_4D1767:
pop     ebp

loc_4D1768:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D167D endp




sub_4D176E proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+0DCh]
call    rand_
and     eax, 0Fh
cmp     eax, 0Eh
jge     short loc_4D17BB
call    rand_
and     al, 1
mov     [ecx+1], al
mov     word ptr [edx+44h], 64h ; 'd'
mov     word ptr [edx+46h], 0
mov     word ptr [edx+4Eh], 0
call    rand_
and     eax, 7
mov     ax, ds:word_539530[eax*2]
mov     [ecx+2], ax
mov     byte ptr [edx+9], 0
jmp     short loc_4D17D3

loc_4D17BB:
call    rand_
and     eax, 7
mov     ax, ds:word_539530[eax*2]
mov     [ecx+4], ax
mov     byte ptr [edx+9], 2

loc_4D17D3:
mov     byte ptr [edx+0Ah], 0
mov     eax, edx
call    sub_4D167D
pop     edx
pop     ecx
retn
sub_4D176E endp




sub_4D17E1 proc near
push    edx
lea     edx, [eax+0DCh]
cmp     dword ptr [edx+1Ch], 0
jz      short loc_4D181A
mov     word ptr [eax+54h], 40h ; '@'
mov     word ptr [eax+44h], 0C8h
mov     word ptr [eax+46h], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [edx+3Eh], 20h ; ' '
mov     word ptr [edx+6], 5Ah ; 'Z'
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

loc_4D181A:
pop     edx
retn
sub_4D17E1 endp




sub_4D181C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+0DCh]
cmp     byte ptr [eax+9], 6
jz      loc_4D1768
test    byte ptr [edi+2Fh], 38h
jz      loc_4D1768
mov     word ptr [edi+3Ch], 0
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+34h]
lea     eax, [esi+14h]
xor     ecx, ecx
call    sub_4DE726
mov     edx, eax
test    eax, 0FFFF0000h
jz      short loc_4D186B
add     dh, 8
and     dh, 0Fh
mov     [esi+56h], dx
jmp     short loc_4D186F

loc_4D186B:
mov     [esi+56h], ax

loc_4D186F:
mov     word ptr [esi+44h], 80h
mov     word ptr [esi+46h], 0FD00h
mov     word ptr [esi+4Eh], 80h
mov     word ptr [edi+8], 8
mov     byte ptr [esi+74h], 1
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     byte ptr [esi+9], 6
mov     byte ptr [esi+0Ah], 0
jmp     loc_4D1768
sub_4D181C endp




sub_4D18B9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+0DCh]
mov     bx, [eax+54h]
mov     word ptr [eax+54h], 0
mov     dword ptr [ecx+20h], 0
call    sub_42DE56
test    ah, 0Fh
jz      short loc_4D18E5
or      byte ptr [ecx+20h], 1

loc_4D18E5:
cmp     byte ptr [edx+74h], 0
jnz     short loc_4D192A
mov     eax, edx
call    sub_42C592
mov     edi, eax
mov     esi, [edx+2Ch]
sar     esi, 10h
cmp     eax, esi
jz      short loc_4D191C
cmp     byte ptr [edx+75h], 0
jnz     short loc_4D1926
lea     edi, [edx+14h]
lea     esi, [edx+2Ch]
movsd
movsd
lea     edi, [edx+1Ch]
lea     esi, [edx+34h]
movsd
movsd
movsd
movsd
or      byte ptr [ecx+20h], 4
jmp     short loc_4D1926

loc_4D191C:
mov     [edx+16h], si
shl     eax, 10h
mov     [edx+38h], eax

loc_4D1926:
or      byte ptr [ecx+20h], 2

loc_4D192A:
mov     [edx+54h], bx
jmp     loc_4D1768
sub_4D18B9 endp




sub_4D1933 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
add     eax, 0DCh
mov     dword ptr [eax+2Ch], 0
lea     edi, [eax+24h]
lea     esi, [edx+14h]
movsd
movsd
push    0
push    offset unk_800000
sub     word ptr [eax+26h], 28h ; '('
xor     ecx, ecx
mov     cx, [eax+3Ch]
or      ecx, 4080000h
push    ecx
lea     ecx, [eax+2Ch]
push    ecx
mov     dl, [edx+1]
and     edx, 0FFh
push    edx
add     eax, 24h ; '$'
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC
jmp     loc_4D1768
sub_4D1933 endp




sub_4D198E proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4D19B3
push    ebx
push    edx
mov     dx, [eax+54h]
cmp     dx, 0C0h
jnz     short loc_4D19A7
inc     byte ptr [eax+0Ah]
pop     edx
pop     ebx
retn

loc_4D19A7:
mov     ebx, edx
add     ebx, 20h ; ' '
mov     [eax+54h], bx
pop     edx
pop     ebx
retn

loc_4D19B3:
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     edx, [eax+0DCh]
call    sub_4D1A28
test    eax, eax
jnz     short loc_4D1A23
mov     bx, [edx+2]
dec     bx
mov     [edx+2], bx
jnz     short loc_4D19E0
mov     eax, esi
call    sub_4D176E
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D19E0:
call    rand_
and     eax, 0Fh
cmp     eax, 0Ah
jl      short loc_4D1A03
cmp     byte ptr [edx+1], 0
jz      short loc_4D19FA
add     word ptr [esi+56h], 40h ; '@'
jmp     short loc_4D19FF

loc_4D19FA:
sub     word ptr [esi+56h], 40h ; '@'

loc_4D19FF:
and     byte ptr [esi+57h], 0Fh

loc_4D1A03:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_4D17E1

loc_4D1A23:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D198E endp




sub_4D1A28 proc near
push    ebx
push    edx
lea     edx, [eax+0DCh]
mov     bl, [edx+20h]
test    bl, 1
jz      short loc_4D1A45
call    sub_4D1A5C
mov     eax, 1
pop     edx
pop     ebx
retn

loc_4D1A45:
test    bl, 4
jz      short loc_4D1A57
call    sub_4D1A93
mov     eax, 0FFFFFFFFh
pop     edx
pop     ebx
retn

loc_4D1A57:
xor     eax, eax
pop     edx
pop     ebx
retn
sub_4D1A28 endp




sub_4D1A5C proc near
push    ebx
push    edx
push    esi
push    edi
lea     edx, [eax+0DCh]
lea     edi, [eax+14h]
lea     esi, [eax+2Ch]
movsd
movsd
lea     edi, [eax+1Ch]
lea     esi, [eax+34h]
movsd
movsd
movsd
movsd
mov     bx, [eax+56h]
add     bh, 8
and     bh, 0Fh
mov     [edx+0Ah], bx
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4D1A5C endp




sub_4D1A93 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+0DCh]
mov     word ptr [eax+44h], 180h
mov     word ptr [eax+46h], 0FE00h
mov     word ptr [eax+4Eh], 50h ; 'P'
mov     word ptr [eax+54h], 0E80h
lea     edx, [eax+14h]
mov     eax, 15Ch
call    sub_4D8BC3
mov     byte ptr [esi+74h], 1
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     dx, [esi+4Eh]
add     [esi+46h], dx
xor     ecx, ecx
mov     cl, [esi+2]
mov     edx, ds:dword_55A110
mov     edx, [edx+ecx*4]
mov     dl, [edx+0Ah]
xor     dh, dh
mov     [edi+3Ch], dx
mov     byte ptr [esi+9], 5
mov     [esi+0Ah], dh
jmp     loc_4D1768
sub_4D1A93 endp




sub_4D1B0D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+0DCh]
mov     ecx, [eax+54h]
sar     ecx, 10h
mov     ebx, [edx+8]
sar     ebx, 10h
cmp     ecx, ebx
jnz     short loc_4D1B32
call    sub_4D176E
jmp     loc_4D1768

loc_4D1B32:
mov     bx, [eax+54h]
test    bx, bx
jz      short loc_4D1B5A
cmp     bx, 800h
jl      short loc_4D1B4D
mov     edi, ebx
add     edi, 20h ; ' '
mov     [eax+54h], di
jmp     short loc_4D1B56

loc_4D1B4D:
mov     esi, ebx
sub     esi, 20h ; ' '
mov     [eax+54h], si

loc_4D1B56:
and     byte ptr [eax+55h], 0Fh

loc_4D1B5A:
mov     ecx, [eax+54h]
sar     ecx, 10h
mov     edx, [edx+8]
sar     edx, 10h
cmp     ecx, edx
jle     short loc_4D1B71
sub     word ptr [eax+56h], 40h ; '@'
jmp     short loc_4D1B76

loc_4D1B71:
add     word ptr [eax+56h], 40h ; '@'

loc_4D1B76:
and     byte ptr [eax+57h], 0Fh
jmp     loc_4D1768
sub_4D1B0D endp




sub_4D1B7F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+0DCh]
mov     bx, [eax+54h]
test    bx, bx
jz      short loc_4D1BB2
cmp     bx, 800h
jl      short loc_4D1BA5
mov     edi, ebx
add     edi, 20h ; ' '
mov     [eax+54h], di
jmp     short loc_4D1BAE

loc_4D1BA5:
mov     esi, ebx
sub     esi, 20h ; ' '
mov     [eax+54h], si

loc_4D1BAE:
and     byte ptr [eax+55h], 0Fh

loc_4D1BB2:
mov     bx, [edx+4]
test    bx, bx
jnz     short loc_4D1BC5
call    sub_4D176E
jmp     loc_4D1768

loc_4D1BC5:
mov     ecx, ebx
dec     ecx
mov     [edx+4], cx
cmp     byte ptr [eax+9], 2
jnz     loc_4D1768
call    sub_4D17E1
jmp     loc_4D1768
sub_4D1B7F endp




sub_4D1BE0 proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4D1C24
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
mov     ecx, 80h
call    sub_4DE552
test    ax, ax
jz      short loc_4D1C1C
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D1C1C:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D1C24:
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ebp, offset byte_5F8364
lea     edi, [eax+0DCh]
call    sub_4D1A28
test    eax, eax
jnz     loc_4D1767
mov     ax, [edi+3Eh]
mov     dx, [esi+54h]
add     edx, eax
mov     [esi+54h], dx
cmp     dx, 40h ; '@'
jnz     short loc_4D1C5E
mov     word ptr [edi+3Eh], 20h ; ' '

loc_4D1C5E:
cmp     word ptr [esi+54h], 180h
jnz     short loc_4D1C6C
mov     word ptr [edi+3Eh], 0FFE0h

loc_4D1C6C:
mov     ax, [edi+6]
test    ax, ax
jz      loc_4D1CF1
mov     edx, eax
dec     edx
mov     [edi+6], dx
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
push    800h
mov     eax, [ebp+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     edx, [esi+54h]
sar     edx, 10h
lea     eax, [esi+1Ch]
mov     ebx, 400h
call    sub_4DE639
mov     edx, eax
test    eax, eax
jz      short loc_4D1CD9
cmp     dword ptr [esi+80h], 9C40h
ja      short loc_4D1CD9
mov     eax, esi
call    sub_4D1A93
jmp     loc_4D1767

loc_4D1CD9:
test    edx, edx
jnz     loc_4D1767
cmp     dword ptr [esi+80h], 3D090h
jb      loc_4D1767

loc_4D1CF1:
mov     word ptr [edi+4], 1Eh
mov     byte ptr [esi+9], 3
mov     byte ptr [esi+0Ah], 0
jmp     loc_4D1767
sub_4D1BE0 endp




sub_4D1D04 proc near
cmp     byte ptr [eax+0Ah], 0
jnz     loc_4D1D8C
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 0DCh
test    byte ptr [eax+20h], 1
jz      short loc_4D1D25
mov     word ptr [esi+44h], 0

loc_4D1D25:
mov     dh, [esi+74h]
test    dh, dh
jnz     short loc_4D1D44
mov     word ptr [eax+3Ch], 0
mov     word ptr [eax+4], 1Eh
mov     byte ptr [esi+9], 3
mov     [esi+0Ah], dh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D1D44:
test    byte ptr [eax+2Fh], 2
jz      short loc_4D1D66
mov     word ptr [eax+3Ch], 0
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+56h], ax
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D1D66:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D1D8C:
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 0DCh
test    byte ptr [eax+20h], 1
jz      short loc_4D1DA3
mov     word ptr [esi+44h], 0

loc_4D1DA3:
mov     dh, [esi+74h]
test    dh, dh
jnz     short loc_4D1DBC
mov     word ptr [eax+4], 1Eh
mov     byte ptr [esi+9], 3
mov     [esi+0Ah], dh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D1DBC:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D1D04 endp




sub_4D1DE2 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
add     eax, 0DCh
mov     dx, [ebp+54h]
add     dh, 2
and     dh, 0Fh
mov     [ebp+54h], dx
xor     edx, edx
mov     bx, [eax+8]
dec     bx
mov     [eax+8], bx
jnz     short loc_4D1E10
mov     edx, 1

loc_4D1E10:
test    byte ptr [eax+20h], 1
jz      short loc_4D1E1B
mov     edx, 1

loc_4D1E1B:
cmp     byte ptr [ebp+74h], 0
jz      short loc_4D1E25
test    edx, edx
jz      short loc_4D1E5C

loc_4D1E25:
call    sub_4DE13B
test    eax, eax
jz      short loc_4D1E41
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_4D1E41:
lea     edx, [ebp+14h]
mov     eax, ebp
call    sub_4AF9F8
mov     byte ptr [ebp+8], 2
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 0
jmp     loc_4D1767

loc_4D1E5C:
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
mov     eax, ebp
call    sub_4DD43B
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax
jmp     loc_4D1767
sub_4D1DE2 endp



; Attributes: thunk

sub_4D1E82 proc near
jmp     sub_4DE371
sub_4D1E82 endp

unk_4D1E87 db    0
dword_4D1E88 dd 3 dup(2), 53000000h, 57565251h, 8910EC83h
dd 0BEE789C1h
dd offset unk_4D1E87
movsd
movsd
movsd
movsd
lea     edx, [eax+0DCh]
cmp     byte ptr [eax+8], 0
jnz     loc_4D1F97
or      byte ptr [ecx], 6
mov     ax, [ecx+14h]
mov     [edx], ax
mov     ax, [ecx+16h]
mov     [edx+2], ax
mov     ax, [ecx+18h]
mov     [edx+4], ax
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
add     eax, ebx
add     eax, eax
mov     [edx+0Ch], eax
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [edx+8], 800h
cmp     byte ptr [ecx+0Fh], 0
jnz     short loc_4D1F11
movsx   ax, byte ptr [ecx+0Eh]
mov     [edx+6], ax
mov     word ptr [ecx+56h], 400h
jmp     short loc_4D1F28

loc_4D1F11:
movsx   ax, byte ptr [ecx+0Eh]
mov     [edx+6], ax
mov     edi, eax
neg     edi
mov     [edx+6], di
mov     word ptr [ecx+56h], 0C00h

loc_4D1F28:
mov     eax, 800h
call    sub_4EF008
imul    eax, [edx+0Ch]
sar     eax, 0Ch
movsx   ebx, ax
movsx   eax, word ptr [edx]
add     eax, ebx
mov     [ecx+14h], ax
mov     eax, 800h
call    sub_4EF003
imul    eax, [edx+0Ch]
sar     eax, 0Ch
cwde
mov     edx, [edx+2]
sar     edx, 10h
add     eax, edx
mov     [ecx+18h], ax
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_4D1F7F
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
jmp     short loc_4D1F88

loc_4D1F7F:
xor     edx, edx
mov     eax, ecx
call    sub_4DD107

loc_4D1F88:
mov     dword ptr [ecx+0C4h], offset unk_808080
inc     byte ptr [ecx+8]
jmp     short loc_4D200A

loc_4D1F97:
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
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     ax, [edx+8]
add     ax, [edx+6]
and     ah, 0Fh
mov     [edx+8], ax
mov     ax, [ecx+56h]
add     ax, [edx+6]
and     ah, 0Fh
mov     [ecx+56h], ax
mov     eax, [edx+6]
sar     eax, 10h
call    sub_4EF008
imul    eax, [edx+0Ch]
sar     eax, 0Ch
cwde
movsx   ebx, word ptr [edx]
add     eax, ebx
mov     [ecx+14h], ax
mov     eax, [edx+6]
sar     eax, 10h
call    sub_4EF003
imul    eax, [edx+0Ch]
sar     eax, 0Ch
cwde
mov     edx, [edx+2]
sar     edx, 10h
add     eax, edx
mov     [ecx+18h], ax

loc_4D200A:
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
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
add     esp, 10h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn



sub_4D205B proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+0CCh]
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
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
call    rand_
mov     [ebx+2], ax
xor     edx, edx
mov     dl, [ecx+8]
mov     eax, ecx
call    ds:funcs_4D2095[edx*4]
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_24], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
test    byte ptr [ecx], 1
jz      short loc_4D20DB
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ecx
call    sub_432697

loc_4D20DB:
add     esp, 10h

loc_4D20DE:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D205B endp




sub_4D20E4 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+0CCh]
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ebx], 0
mov     dword ptr [ebx+4], 0
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_24], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     word ptr [ecx+6Eh], 400h
mov     dword ptr [ecx+78h], offset unk_539550
mov     dword ptr [ecx+10h], offset unk_53955C
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     eax, ecx
call    sub_4D21AB
jmp     loc_4D20DB
sub_4D20E4 endp




sub_4D21AB proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+0CCh]
xor     ebx, ebx
mov     bl, [eax+9]
call    ds:funcs_4D21BD[ebx*4]
lea     edi, [edx+0BCh]
lea     esi, [edx+14h]
movsd
movsd
test    byte ptr [ecx], 1
jz      loc_4D20DE
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
and     byte ptr [ecx], 0FEh
jmp     loc_4D20DE
sub_4D21AB endp



; Attributes: thunk

sub_4D21EA proc near
jmp     sub_4DE371
sub_4D21EA endp




sub_4D21EF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     edx, [eax+0CCh]
mov     ecx, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4D2212
jbe     short loc_4D222F
cmp     al, 2
jz      short loc_4D2253
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D2212:
test    al, al
jnz     short loc_4D2261
inc     al
mov     [esi+0Ah], al
mov     word ptr [edx+4], 0
mov     dword ptr [esi+44h], 0
mov     dword ptr [esi+48h], 0

loc_4D222F:
mov     edx, [ecx+184h]
cmp     esi, edx
jnz     short loc_4D2261
mov     ecx, [edx+9]
sar     ecx, 18h
lea     eax, [edx+14h]
xor     ebx, ebx
xor     edx, edx
call    sub_4A62D4
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D2253:
cmp     byte ptr ds:dword_77E760, 0
jnz     short loc_4D2261
dec     al
mov     [esi+0Ah], al

loc_4D2261:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D21EF endp




sub_4D2266 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D226C[edx*4]
pop     edx
retn
sub_4D2266 endp




sub_4D2275 proc near
push    ebx
push    ecx
push    edx
sub     esp, 30h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
inc     byte ptr [ecx+8]
mov     dword ptr [ecx+8Ch], 3E000000h
mov     dword ptr [ecx+90h], 0
mov     dword ptr [ecx+94h], 0
mov     dword ptr [ecx+98h], 0
mov     dword ptr [ecx+9Ch], 3E000000h
mov     dword ptr [ecx+0A0h], 0
mov     dword ptr [ecx+0A4h], 0
mov     dword ptr [ecx+0A8h], 0
mov     dword ptr [ecx+0ACh], 3E800000h
lea     eax, [ecx+54h]
mov     edx, esp
call    sub_4EF638
lea     edx, [ecx+8Ch]
mov     ebx, edx
mov     eax, esp
call    sub_4EF388
add     esp, 30h
pop     edx
pop     ecx
pop     ebx
retn
sub_4D2275 endp




sub_4D230A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 30h
mov     esi, eax
mov     edi, [eax+0C8h]
add     edi, 348h
mov     eax, [edi+14h]
shr     eax, 1
xor     edx, edx
mov     dl, [esi+3]
cmp     eax, edx
jnz     short loc_4D23A7
test    byte ptr [edi+14h], 1
jz      short loc_4D23A7
mov     dword ptr [esi+8Ch], 3E000000h
mov     dword ptr [esi+90h], 0
mov     dword ptr [esi+94h], 0
mov     dword ptr [esi+98h], 0
mov     dword ptr [esi+9Ch], 3E000000h
mov     dword ptr [esi+0A0h], 0
mov     dword ptr [esi+0A4h], 0
mov     dword ptr [esi+0A8h], 0
mov     dword ptr [esi+0ACh], 3E000000h
lea     eax, [esi+54h]
mov     edx, esp
call    sub_4EF638
lea     edx, [esi+8Ch]
mov     ebx, edx
mov     eax, esp
call    sub_4EF388

loc_4D23A7:
mov     cl, [esi+3]
mov     eax, 1
shl     eax, cl
test    [edi+10h], eax
jnz     short loc_4D23BD
mov     eax, esi
call    sub_4DE371

loc_4D23BD:
add     esp, 30h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D230A endp



; Attributes: thunk

sub_4D23C6 proc near
jmp     sub_4DE371
sub_4D23C6 endp




sub_4D23CB proc near
push    ecx
push    edx
lea     ecx, [eax+0DCh]
mov     edx, eax
mov     eax, ecx
call    sub_4E19CA
test    eax, eax
jz      short loc_4D23E5
mov     eax, 1

loc_4D23E5:
pop     edx
pop     ecx
retn
sub_4D23CB endp




sub_4D23E8 proc near
push    ecx
push    edx
lea     ecx, [eax+0DCh]
mov     edx, eax
mov     eax, ecx
call    sub_4E19CA
test    eax, eax
jnz     short loc_4D2405
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4D2405:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4D23E8 endp




sub_4D240A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+0DCh]
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+78h], offset unk_539574
mov     byte ptr [ecx+74h], 1
mov     byte ptr [ecx+0Ch], 0
mov     word ptr [ecx+44h], 0
call    rand_
and     ah, 0Fh
mov     [ecx+56h], ax
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [esi+18h], 2000000h
mov     ebx, 0FFFFFFA0h
mov     edx, 1
mov     eax, esi
call    sub_4E19B9
mov     dword ptr [esi+20h], 0
mov     eax, [esi+20h]
mov     [esi+1Ch], eax
call    rand_
and     ah, 0Fh
mov     [esi+10h], ax
mov     eax, ecx
call    sub_42C592
mov     [esi+12h], ax
mov     edx, [esi+10h]
sar     edx, 10h
mov     eax, [ecx+14h]
sar     eax, 10h
sub     edx, 82h
cmp     eax, edx
jle     short loc_4D24B9
mov     ax, [esi+12h]
sub     eax, 82h
mov     [ecx+16h], ax
mov     word ptr [esi+14h], 82h
jmp     short loc_4D24C7

loc_4D24B9:
mov     ax, [ecx+16h]
mov     dx, [esi+12h]
sub     eax, edx
mov     [esi+14h], ax

loc_4D24C7:
mov     word ptr [esi+16h], 0FF7Eh
inc     byte ptr [ecx+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D240A endp




sub_4D24D5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+0DCh]
call    sub_4D23CB
test    eax, eax
jz      short loc_4D24FD
mov     byte ptr [esi+9], 1
mov     ax, [esi+56h]
mov     [esi+66h], ax
mov     word ptr [esi+46h], 0

loc_4D24FD:
add     word ptr [edi+10h], 22h ; '"'
mov     ecx, [edi+10h]
sar     ecx, 10h
mov     edx, [edi+12h]
sar     edx, 10h
add     ecx, edx
shl     ecx, 10h
mov     eax, [edi+0Eh]
sar     eax, 10h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 4
add     ecx, eax
mov     [esi+20h], ecx
add     word ptr [esi+56h], 14h
and     byte ptr [esi+57h], 0Fh
mov     cx, [esi+44h]
sub     ecx, 5
mov     [esi+44h], cx
test    cx, cx
jge     short loc_4D2551
mov     word ptr [esi+44h], 0

loc_4D2551:
push    0
push    0
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ebx, [esi+64h]
sar     ebx, 10h
lea     edx, [esi+1Ch]
lea     eax, [esi+14h]
call    sub_4DD4C5
mov     eax, esi
call    sub_42DE56
test    eax, eax
jnz     loc_4D25EE
mov     eax, esi
call    sub_42C592
mov     ebx, eax
sub     ax, [edi+12h]
test    ax, ax
jge     short loc_4D2594
movsx   edx, ax
neg     edx
jmp     short loc_4D2597

loc_4D2594:
movsx   edx, ax

loc_4D2597:
cmp     edx, 0Ah
jle     short loc_4D25AF
test    ax, ax
jl      short loc_4D25A8
add     word ptr [edi+12h], 0Ah
jmp     short loc_4D25B3

loc_4D25A8:
sub     word ptr [edi+12h], 0Ah
jmp     short loc_4D25B3

loc_4D25AF:
mov     [edi+12h], bx

loc_4D25B3:
mov     edx, [edi+10h]
sar     edx, 10h
mov     eax, [edi+12h]
sar     eax, 10h
add     edx, eax
shl     edx, 10h
mov     eax, [edi+0Eh]
sar     eax, 10h
call    sub_4EF008
mov     edi, eax
shl     edi, 2
sub     edi, eax
shl     edi, 3
add     eax, edi
shl     eax, 4
add     edx, eax
mov     [esi+20h], edx
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B

loc_4D25EE:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D24D5 endp




sub_4D25F4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+0DCh]
mov     edx, offset byte_5F8364
call    sub_4D23E8
test    eax, eax
jz      short loc_4D2613
mov     byte ptr [esi+9], 0

loc_4D2613:
add     word ptr [edi+10h], 22h ; '"'
mov     eax, [edi+10h]
sar     eax, 10h
mov     ecx, [edi+12h]
sar     ecx, 10h
add     eax, ecx
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [edx+20h]
mov     ecx, [esi+20h]
sub     eax, ecx
mov     ecx, eax
mov     eax, 5
test    ecx, ecx
jge     short loc_4D2644
mov     eax, 0FFFFFFFBh

loc_4D2644:
mov     cx, [esi+46h]
add     ecx, eax
mov     [esi+46h], cx
test    cx, cx
jge     short loc_4D265D
mov     eax, [esi+44h]
sar     eax, 10h
neg     eax
jmp     short loc_4D2663

loc_4D265D:
mov     eax, [esi+44h]
sar     eax, 10h

loc_4D2663:
cmp     eax, 0A0h
jle     short loc_4D267F
cmp     word ptr [esi+46h], 0
jle     short loc_4D2679
mov     word ptr [esi+46h], 0A0h
jmp     short loc_4D267F

loc_4D2679:
mov     word ptr [esi+46h], 0FF60h

loc_4D267F:
mov     ecx, [esi+44h]
sar     ecx, 10h
sar     ecx, 4
mov     eax, [edi+12h]
sar     eax, 10h
add     eax, ecx
mov     [edi+14h], ax
mov     ecx, [edi+12h]
sar     ecx, 10h
mov     eax, [edi+14h]
sar     eax, 10h
cmp     ecx, eax
jle     short loc_4D26B2
mov     ax, [edi+16h]
mov     [edi+14h], ax
mov     word ptr [esi+46h], 0

loc_4D26B2:
mov     ecx, [edi+10h]
sar     ecx, 10h
mov     eax, [edi+12h]
sar     eax, 10h
add     eax, ecx
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [edi+0Eh]
sar     eax, 10h
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
sub     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 4
add     [esi+20h], eax
add     word ptr [esi+56h], 14h
and     byte ptr [esi+57h], 0Fh
mov     ebx, [esi+64h]
sar     ebx, 10h
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 20h ; ' '
call    sub_4DE552
add     [esi+66h], ax
and     byte ptr [esi+67h], 0Fh
mov     bx, [esi+44h]
add     ebx, 5
mov     [esi+44h], bx
cmp     bx, 0A0h
jle     short loc_4D2722
mov     word ptr [esi+44h], 0A0h

loc_4D2722:
push    0
push    0
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ebx, [esi+64h]
sar     ebx, 10h
lea     edx, [esi+1Ch]
lea     eax, [esi+14h]
call    sub_4DD4C5
mov     eax, esi
call    sub_42DE56
test    eax, eax
jnz     loc_4D27D6
mov     eax, esi
call    sub_42C592
mov     ebx, eax
mov     edx, [edi+10h]
sar     edx, 10h
movsx   ecx, ax
cmp     ecx, edx
jz      loc_4D25EE
sub     ax, [edi+12h]
test    ax, ax
jge     short loc_4D2776
movsx   edx, ax
neg     edx
jmp     short loc_4D2779

loc_4D2776:
movsx   edx, ax

loc_4D2779:
cmp     edx, 0Ah
jle     short loc_4D2791
test    ax, ax
jl      short loc_4D278A
add     word ptr [edi+12h], 0Ah
jmp     short loc_4D2795

loc_4D278A:
sub     word ptr [edi+12h], 0Ah
jmp     short loc_4D2795

loc_4D2791:
mov     [edi+12h], bx

loc_4D2795:
mov     edx, [edi+10h]
sar     edx, 10h
mov     eax, [edi+12h]
sar     eax, 10h
add     eax, edx
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [edi+0Eh]
sar     eax, 10h
call    sub_4EF008
mov     edi, eax
shl     eax, 2
sub     eax, edi
shl     eax, 3
add     eax, edi
shl     eax, 4
add     [esi+20h], eax
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
jmp     loc_4D25EE

loc_4D27D6:
add     esi, 66h ; 'f'
mov     edx, eax
mov     eax, esi
call    sub_42DACB
jmp     loc_4D25EE
sub_4D25F4 endp




sub_4D27E7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+0DCh]
cmp     byte ptr [eax+0Ch], 1
jnz     short loc_4D2821
push    0
push    0
add     word ptr [ebp+56h], 190h
add     word ptr [ebp+54h], 190h
mov     ebx, [ebp+64h]
sar     ebx, 10h
lea     edx, [ebp+1Ch]
lea     eax, [ebp+14h]
mov     ecx, 200h
call    sub_4DD4C5

loc_4D2821:
add     word ptr [esi+1Ah], 33h ; '3'
cmp     dword ptr [esi+18h], 3000000h
jl      short loc_4D2859
call    sub_4DE13B
test    eax, eax
jz      short loc_4D284B
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_4D284B:
mov     byte ptr [ebp+8], 2
lea     edx, [ebp+14h]
mov     eax, ebp
call    sub_4AF9F8

loc_4D2859:
mov     eax, ebp
call    sub_42DE56
pop     ebp
jmp     loc_4D25EE
sub_4D27E7 endp




sub_4D2866 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+0DCh]
cmp     dword ptr [edi+1Ch], 0
jz      short loc_4D28BD
test    byte ptr [edi+1Fh], 20h
jz      short loc_4D28A0
mov     byte ptr [esi+0Ch], 1
mov     byte ptr [esi+9], 2
mov     ecx, [edi+26h]
sar     ecx, 10h
mov     ebx, [edi+22h]
sar     ebx, 10h
xor     edx, edx
xor     eax, eax
call    sub_49D994
mov     [esi+66h], ax

loc_4D28A0:
test    byte ptr [edi+1Fh], 2
jz      short loc_4D28AA
mov     byte ptr [esi+9], 2

loc_4D28AA:
test    byte ptr [edi+1Fh], 8
jz      short loc_4D28BD
test    dword ptr [edi+1Ch], 0FFFFFFh
jz      short loc_4D28BD
mov     byte ptr [esi+9], 2

loc_4D28BD:
xor     ecx, ecx
mov     cl, [esi+9]
mov     eax, esi
call    ds:funcs_4D28C4[ecx*4]
push    0
push    offset unk_800000
push    4080000h
lea     eax, [edi+1Ch]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
lea     eax, [esi+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 20h ; ' '
call    sub_4E01FC
mov     dword ptr [edi+1Ch], 0
jmp     loc_4D25EE
sub_4D2866 endp



; Attributes: thunk

sub_4D2901 proc near
jmp     sub_4DE371
sub_4D2901 endp




sub_4D2906 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 30h
mov     ecx, eax
lea     edx, [eax+0DCh]
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
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
movzx   esi, byte ptr [eax+8]
call    ds:funcs_4D2934[esi*4]
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
lea     esi, [ecx+8Ch]
mov     eax, esi
call    sub_4EF184
mov     eax, [edx+18h]
sar     eax, 10h
mov     [edx+34h], eax
mov     [edx+30h], eax
mov     [edx+2Ch], eax
add     edx, 2Ch ; ','
mov     eax, esi
call    sub_4EF689
mov     eax, esp
call    sub_4EF184
lea     eax, [ecx+54h]
mov     edx, esp
call    sub_4EF5F7
mov     ebx, esi
mov     edx, esp
mov     eax, esi
call    sub_4EF388
test    byte ptr [ecx], 2
jz      short loc_4D29AC
mov     eax, [ecx+54h]
sar     eax, 10h
lea     esi, [ecx+0BCh]
mov     ecx, eax
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED95E

loc_4D29AC:
add     esp, 30h
jmp     loc_4D25EE
sub_4D2906 endp




sub_4D29B4 proc near
push    ecx
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
lea     edi, [eax+5Ch]
lea     esi, [eax+54h]
movsd
movsd
mov     dl, [eax+0Ch]
mov     [eax+0Dh], dl
mov     edx, [eax+52h]
sar     edx, 10h
mov     ecx, [eax+5Ah]
sar     ecx, 10h
cmp     edx, ecx
jz      short loc_4D29EC
mov     byte ptr [eax+0Ch], 1

loc_4D29EC:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D29F1[edx*4]
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D29B4 endp




sub_4D29FD proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ecx, eax
lea     ebp, [eax+0DCh]
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, 1000h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     byte ptr [ecx+8], 1
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+78h], 0
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, ds:dword_55A110
mov     ebx, [ebx+eax*4]
mov     al, [ebx+0Ah]
mov     [ecx+73h], al
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A110
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
mov     [ecx+6Eh], ax
mov     dword ptr [ebp+8], 0
add     esp, 10h

loc_4D2ACB:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D29FD endp




sub_4D2AD2 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebp, eax
add     eax, 0DCh
mov     [esp+30h+var_1C], eax
mov     eax, 60Fh
call    sub_47E888
test    eax, eax
jz      short loc_4D2B04
mov     ax, [ebp+54h]
add     eax, 1Eh
and     ah, 0Fh
mov     [ebp+54h], ax

loc_4D2B04:             ; int
lea     ecx, [ebp+8Ch]
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 1000h
mov     [esp+30h+var_30], edx
mov     [esp+30h+var_2C], edx
mov     [esp+30h+var_28], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, [esp+30h+var_1C]
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    0
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 5000000h
push    eax
mov     eax, [esp+3Ch+var_1C]
add     eax, 8
mov     [esp+3Ch+var_20], eax
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 78h ; 'x'
mov     eax, [esp+44h+var_1C]
call    sub_4E01FC
mov     edi, [esp+30h+var_1C]
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    0
mov     eax, [esp+38h+var_1C]
add     word ptr [eax+4], 0B4h
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 5000000h
push    eax
mov     eax, [esp+3Ch+var_20]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 78h ; 'x'
mov     eax, [esp+44h+var_1C]
call    sub_4E01FC
mov     edi, [esp+30h+var_1C]
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    0
mov     eax, [esp+38h+var_1C]
sub     word ptr [eax+4], 0B4h
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 5000000h
push    eax
mov     edx, [esp+3Ch+var_20]
push    edx
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 78h ; 'x'
mov     eax, [esp+44h+var_1C]
call    sub_4E01FC
mov     eax, [esp+30h+var_1C]
mov     dword ptr [eax+8], 0
add     esp, 18h
jmp     loc_4D2ACB
sub_4D2AD2 endp



; Attributes: thunk

sub_4D2C1A proc near
jmp     sub_4DE2F6
sub_4D2C1A endp




sub_4D2C1F proc near
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+0DCh]
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
xor     ecx, ecx
mov     cl, [eax+3]
call    ds:funcs_4D2C40[ecx*4]
mov     dword ptr [edx+8], 0
pop     edi
pop     esi
pop     edx
pop     ecx
sub_4D2C1F endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_108]



sub_4D2C53 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D2C59[edx*4]
pop     edx
retn
sub_4D2C53 endp




sub_4D2C62 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax
lea     ebx, [eax+0DCh]
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     esi, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, esi
call    sub_4EF638
mov     edx, 1000h
mov     [esp+2Ch+var_2C], edx
mov     [esp+2Ch+var_28], edx
mov     [esp+2Ch+var_24], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     byte ptr [ecx+8], 1
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+78h], 0
mov     word ptr [ecx+6Eh], 1
mov     byte ptr [ebx+2Fh], 1
cmp     word ptr [ecx+56h], 0
jnz     short loc_4D2D36
mov     [esp+2Ch+var_1C], 0F500h
mov     [esp+2Ch+var_1A], 0FE7Fh
mov     [esp+2Ch+var_18], 0F300h
lea     edx, [esp+2Ch+var_1C]
mov     eax, 1
call    sub_42C4B7
mov     edx, 31802h
jmp     short loc_4D2D5E

loc_4D2D36:
mov     [esp+2Ch+var_1C], 0E500h
mov     [esp+2Ch+var_1A], 0FE7Fh
mov     [esp+2Ch+var_18], 0EF00h
lea     edx, [esp+2Ch+var_1C]
mov     eax, 1
call    sub_42C4B7
mov     edx, 31702h

loc_4D2D5E:
call    sub_4A7AE1
mov     dword ptr [ebx+8], 0
add     esp, 18h

loc_4D2D6D:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4D2C62 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_109]



sub_4D2D73 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebp, eax
add     eax, 0DCh
mov     [esp+30h+var_1C], eax
lea     edi, [ebp+0ECh]
lea     esi, [ebp+14h]
test    byte ptr [eax+0Bh], 20h
jnz     loc_4D2E58
mov     eax, [eax+8]
and     eax, 0FFFFFFh
mov     [esp+30h+var_20], eax
jz      loc_4D2E77
mov     edx, esi
mov     eax, 0A0h
call    sub_4D8BC3
mov     ebx, [ebp+54h]
sar     ebx, 10h
xor     ecx, ecx
mov     edx, edi
mov     eax, esi
call    sub_4DE726
xor     ax, ax
shr     eax, 10h
test    eax, eax
jnz     loc_4D2E77
mov     eax, [esp+30h+var_20]
mov     dx, [ebp+6Eh]
sub     edx, eax
mov     [ebp+6Eh], dx
test    dx, dx
jg      short loc_4D2DF9
mov     byte ptr [ebp+9], 1
mov     word ptr [ebp+4Ch], 0
jmp     loc_4D2E77

loc_4D2DF9:
cmp     byte ptr [ebp+9], 2
jnz     short loc_4D2E2C
mov     eax, [ebp+52h]
sar     eax, 10h
mov     edx, [ebp+5Ah]
sar     edx, 10h
cmp     eax, edx
jle     short loc_4D2E2C
cmp     word ptr [ebp+5Ch], 0FFFh
jle     short loc_4D2E2C
add     word ptr [ebp+4Ch], 5
mov     eax, [esp+30h+var_1C]
mov     word ptr [eax+28h], 0
mov     byte ptr [ebp+0Ah], 1
jmp     short loc_4D2E52

loc_4D2E2C:
mov     eax, [esp+30h+var_1C]
mov     byte ptr [eax+2Eh], 0
mov     word ptr [ebp+4Ch], 5
mov     word ptr [eax+28h], 0
mov     word ptr [ebp+54h], 0
mov     ax, [ebp+54h]
mov     [ebp+5Ch], ax
mov     byte ptr [ebp+0Ah], 0

loc_4D2E52:
mov     byte ptr [ebp+9], 2
jmp     short loc_4D2E77

loc_4D2E58:
mov     ebx, [ebp+54h]
sar     ebx, 10h
xor     ecx, ecx
mov     edx, edi
mov     eax, esi
call    sub_4DE726
xor     ax, ax
shr     eax, 10h
test    eax, eax
jnz     short loc_4D2E77
mov     byte ptr [ebp+9], 1

loc_4D2E77:
movzx   esi, byte ptr [ebp+9]
mov     eax, ebp
call    ds:funcs_4D2E7D[esi*4]
lea     esi, [ebp+8Ch]
lea     eax, [ebp+54h]
mov     edx, esi
call    sub_4EF638
mov     ecx, 1000h
mov     [esp+30h+var_30], ecx
mov     [esp+30h+var_2C], ecx
mov     [esp+30h+var_28], ecx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
mov     eax, [esp+30h+var_1C]
cmp     byte ptr [eax+2Fh], 0
jz      loc_4D2F71
mov     ax, [ebp+14h]
mov     edx, [esp+30h+var_1C]
mov     [edx], ax
mov     si, [ebp+16h]
sub     esi, 78h ; 'x'
mov     [edx+2], si
mov     ax, [ebp+18h]
mov     [edx+4], ax
push    80h
push    offset unk_800000
push    4080000h
lea     edi, [edx+8]
push    edi
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 78h ; 'x'
mov     eax, [esp+44h+var_1C]
call    sub_4E01FC
mov     ax, [ebp+14h]
mov     edx, [esp+30h+var_1C]
mov     [edx], ax
mov     si, [ebp+16h]
sub     esi, 168h
mov     [edx+2], si
mov     ax, [ebp+18h]
mov     [edx+4], ax
push    80h
push    offset unk_800000
push    4080000h
push    edi
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 78h ; 'x'
mov     eax, [esp+44h+var_1C]
call    sub_4E01FC

loc_4D2F71:
mov     eax, [esp+30h+var_1C]
mov     dword ptr [eax+8], 0
add     esp, 18h
pop     ebp
jmp     loc_4D2D6D
sub_4D2D73 endp



; Attributes: thunk

sub_4D2F85 proc near
jmp     sub_4DE2F6
sub_4D2F85 endp




sub_4D2F8A proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 8
mov     ecx, eax
lea     ebx, [eax+0DCh]
cmp     word ptr [eax+54h], 0C00h
jz      short loc_4D2FB4
sub     word ptr [eax+4Ch], 0Ah
mov     ax, [eax+54h]
add     ax, [ecx+4Ch]
and     ah, 0Fh
mov     [ecx+54h], ax

loc_4D2FB4:
cmp     word ptr [ecx+54h], 0C00h
jge     loc_4D3041
mov     word ptr [ecx+54h], 0
mov     byte ptr [ecx+3], 8
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+9], 0
mov     byte ptr [ebx+2Fh], 0
lea     edx, [ecx+14h]
mov     eax, 107h
call    sub_4D8BC3
cmp     word ptr [ecx+56h], 0
jnz     short loc_4D3017
mov     [esp+14h+var_14], 0F500h
mov     [esp+14h+var_12], 0FE7Fh
mov     [esp+14h+var_10], 0F300h
mov     edx, esp
mov     eax, 1
call    sub_42C4B7
mov     edx, 30802h
jmp     short loc_4D303C

loc_4D3017:
mov     [esp+14h+var_14], 0E500h
mov     [esp+14h+var_12], 0FE7Fh
mov     [esp+14h+var_10], 0EF00h
mov     edx, esp
mov     eax, 1
call    sub_42C4B7
mov     edx, 30702h

loc_4D303C:
call    sub_4A7AE1

loc_4D3041:
add     esp, 8
pop     edx
pop     ecx
pop     ebx
retn
sub_4D2F8A endp




sub_4D3048 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+0DCh]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4D308C
cmp     word ptr [edx+54h], 0
jnz     short loc_4D30CC
xor     byte ptr [ecx+2Eh], 1
mov     ebx, [edx+4Ah]
sar     ebx, 10h
mov     eax, [ecx+26h]
sar     eax, 10h
sub     ebx, eax
mov     eax, ebx
call    abs_
cmp     eax, 2
jg      short loc_4D30C4

loc_4D307E:
mov     word ptr [edx+54h], 0
mov     byte ptr [edx+9], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4D308C:
mov     ebx, [edx+5Ah]
sar     ebx, 10h
mov     eax, [edx+52h]
sar     eax, 10h
sub     ebx, eax
mov     eax, ebx
call    abs_
cmp     eax, 800h
jle     short loc_4D30CC
xor     byte ptr [ecx+2Eh], 1
mov     eax, [edx+4Ah]
sar     eax, 10h
mov     ebx, [ecx+26h]
sar     ebx, 10h
sub     eax, ebx
call    abs_
cmp     eax, 2
jle     short loc_4D307E

loc_4D30C4:
mov     ax, [edx+4Ch]
mov     [ecx+28h], ax

loc_4D30CC:
cmp     byte ptr [ecx+2Eh], 0
jz      short loc_4D30D8
dec     word ptr [edx+4Ch]
jmp     short loc_4D30DC

loc_4D30D8:
inc     word ptr [edx+4Ch]

loc_4D30DC:
mov     ax, [edx+54h]
mov     [edx+5Ch], ax
mov     ecx, eax
sub     cx, [edx+4Ch]
and     ch, 0Fh
mov     [edx+54h], cx
pop     edx
pop     ecx
pop     ebx
retn
sub_4D3048 endp




sub_4D30F5 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ecx
push    edx
sub     esp, 10h
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4D3101[ecx*4]
lea     ecx, [edx+8Ch]  ; int
lea     eax, [edx+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 1000h
mov     [esp+18h+var_18], edx
mov     [esp+18h+var_14], edx
mov     [esp+18h+var_10], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 10h
pop     edx
pop     ecx
retn
sub_4D30F5 endp




sub_4D3137 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     dword ptr [ecx+0C4h], 2C808080h
mov     byte ptr [ecx+0Dh], 28h ; '('
mov     byte ptr [ecx+0Eh], 78h ; 'x'
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D3137 endp




sub_4D31A7 proc near
push    edx
push    esi
push    edi
lea     edi, [eax+5Ch]
lea     esi, [eax+54h]
movsd
movsd
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4D31B7[edx*4]
pop     edi
pop     esi
pop     edx
retn
sub_4D31A7 endp




sub_4D31C2 proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4DD64B
cmp     eax, 384h
jge     loc_4D3270
push    800h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
mov     ecx, offset byte_5F8364
add     ecx, 1Ch
mov     edx, [esi+54h]
sar     edx, 10h
add     edx, 400h
lea     eax, [esi+1Ch]
mov     ebx, 100h
call    sub_4DE639
test    eax, eax
jz      short loc_4D3270
mov     byte ptr [esi+9], 1
cmp     byte ptr [esi+0Ch], 0
jnz     short loc_4D3246
mov     [esp+18h+var_18], 0F700h
mov     [esp+18h+var_16], 0FED5h
mov     [esp+18h+var_14], 0DD00h
mov     edx, esp
mov     eax, 2
call    sub_42C4B7
mov     edx, 60302h
jmp     short loc_4D326B

loc_4D3246:
mov     [esp+18h+var_18], 0E900h
mov     [esp+18h+var_16], 0FD55h
mov     [esp+18h+var_14], 0DD00h
mov     edx, esp
mov     eax, 2
call    sub_42C4B7
mov     edx, 60402h

loc_4D326B:
call    sub_4A7AE1

loc_4D3270:
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D31C2 endp




sub_4D3278 proc near
push    edx
mov     dx, [eax+58h]
sub     edx, 50h ; 'P'
and     dh, 0Fh
mov     [eax+58h], dx
cmp     dx, 0C00h
jg      short loc_4D3298
mov     word ptr [eax+58h], 0C00h
mov     byte ptr [eax+9], 2

loc_4D3298:
pop     edx
sub_4D3278 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_110]


; Attributes: thunk

sub_4D329A proc near
jmp     sub_4DE477
sub_4D329A endp




sub_4D329F proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D32A5[edx*4]
pop     edx
retn
sub_4D329F endp




sub_4D32AE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+0DCh]
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+50h]
mov     [ecx+4Eh], ax
mov     [ecx+4Ch], ax
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+78h], 0
mov     word ptr [ecx+6Eh], 0
mov     byte ptr [ecx+74h], 0
mov     dword ptr [ebx+1Ch], 0
mov     dword ptr [ebx+20h], 0
mov     word ptr [ebx+24h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4D32AE endp




sub_4D3332 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
lea     edx, [eax+0DCh]
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
mov     dword ptr [eax+0C4h], offset unk_808080
call    sub_4D3410
cmp     byte ptr [ebp+8], 2
jz      loc_4D3406
mov     eax, ebp
call    sub_4D34D3
mov     dword ptr [edx+1Ch], 0
lea     edi, [edx+14h]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    0
push    4080000h
sub     word ptr [edx+16h], 80h
lea     eax, [edx+1Ch]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [edx+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 80h
call    sub_4E01FC
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF5F7
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
test    byte ptr [ebp+0], 2
jz      short loc_4D3406
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 80h
mov     eax, ebp
call    sub_4ED88B

loc_4D3406:
add     esp, 10h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D3332 endp




sub_4D3410 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
add     eax, 0DCh
mov     eax, [eax+1Ch]
and     eax, 0FFFFFFh
jz      loc_4D34CE
add     [ecx+6Eh], ax
lea     edx, [ecx+14h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     dword ptr [ecx+0C4h], 0FFFFFFh
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A110
mov     eax, [edx+eax*4]
mov     al, [eax+8]
and     eax, 0FFh
shl     eax, 4
mov     edx, [ecx+6Ch]
sar     edx, 10h
cmp     edx, eax
jl      short loc_4D34CE
call    sub_4DE13B
test    eax, eax
jz      short loc_4D3483
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4D3483:
lea     edx, [ecx+14h]
mov     eax, ecx
call    sub_4AF9F8

loc_4D348D:
cmp     ds:word_5395F8, 8
jnb     short loc_4D34A7
mov     eax, ecx
call    sub_4D3545
inc     ds:word_5395F8
jmp     short loc_4D348D

loc_4D34A7:
mov     eax, ecx
call    sub_4D3596
mov     eax, ecx
call    sub_4D3596
lea     edx, [ecx+14h]
mov     eax, 157h
call    sub_4D8BC3
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0

loc_4D34CE:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D3410 endp




sub_4D34D3 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edx, [eax+0DCh]
cmp     dword ptr [eax+80h], 225510h
jnb     short loc_4D3540
cmp     ds:word_5395F8, 8
jnb     short loc_4D3540
mov     si, [edx+24h]
test    si, si
jnz     short loc_4D3539
call    rand_
and     eax, 7
mov     ax, ds:word_539606[eax*2]
mov     [edx+24h], ax
lea     edx, [ecx+14h]
mov     eax, 157h
call    sub_4D8BC3
mov     eax, ecx
call    sub_4D3545
mov     eax, ecx
call    sub_4D3596
inc     ds:word_5395F8
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4D3539:
mov     edi, esi
dec     edi
mov     [edx+24h], di

loc_4D3540:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D34D3 endp




sub_4D3545 proc near
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DDF54
test    eax, eax
jz      short loc_4D3592
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 3Eh ; '>'
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+8], 0
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
lea     edi, [eax+14h]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [eax+1Ch]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
mov     word ptr [eax+54h], 0
mov     word ptr [eax+56h], 0
mov     word ptr [eax+58h], 0

loc_4D3592:
pop     edi
pop     esi
pop     edx
retn
sub_4D3545 endp




sub_4D3596 proc near

var_28= dword ptr -28h
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
push    eax
xor     edx, edx
mov     [esp+28h+var_1C], edx

loc_4D35A6:
lea     edi, [esp+28h+var_24]
mov     esi, [esp+28h+var_28]
lea     esi, [esi+14h]
movsd
movsd
call    rand_
and     eax, 7
movsx   ax, ds:byte_539616[eax]
add     [esp+28h+var_24], ax
call    rand_
and     eax, 7
movsx   ax, ds:byte_539616[eax]
add     [esp+28h+var_22], ax
call    rand_
and     eax, 7
movsx   ax, ds:byte_539616[eax]
add     [esp+28h+var_20], ax
mov     ebp, [esp+28h+var_1C]
add     ebp, 7
lea     ecx, [esp+28h+var_24]
mov     ebx, 1
mov     edx, ebp
xor     eax, eax
call    sub_43C263
lea     edi, [esp+28h+var_24]
mov     esi, [esp+28h+var_28]
lea     esi, [esi+14h]
movsd
movsd
call    rand_
and     eax, 7
movsx   ax, ds:byte_539616[eax]
add     [esp+28h+var_24], ax
call    rand_
and     eax, 7
movsx   ax, ds:byte_539616[eax]
add     [esp+28h+var_22], ax
call    rand_
and     eax, 7
movsx   ax, ds:byte_539616[eax]
add     [esp+28h+var_20], ax
lea     ecx, [esp+28h+var_24]
mov     ebx, 1
mov     edx, ebp
xor     eax, eax
call    sub_43C263
mov     ecx, [esp+28h+var_1C]
inc     ecx
mov     [esp+28h+var_1C], ecx
cmp     ecx, 3
jb      loc_4D35A6
jmp     loc_4D3406
sub_4D3596 endp



; Attributes: thunk

sub_4D367E proc near
jmp     sub_4DE371
sub_4D367E endp




sub_4D3683 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx
push    ecx
sub     esp, 10h
mov     ebx, edx
lea     ecx, [eax+8Ch]  ; int
add     eax, 54h ; 'T'
mov     edx, ecx
call    sub_4EF638
movsx   eax, bx
mov     [esp+18h+var_18], eax
mov     [esp+18h+var_14], eax
mov     [esp+18h+var_10], eax
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 10h
pop     ecx
pop     ebx
retn
sub_4D3683 endp




sub_4D36B7 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
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
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+38h], eax
mov     [ecx+20h], eax
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     word ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     dword ptr [ecx+0CCh], 0
mov     edx, 200h
mov     eax, ecx
call    sub_4D3683
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8

loc_4D3767:
mov     dword ptr [ecx+0C4h], offset unk_808080
inc     byte ptr [ecx+8]
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D36B7 endp




sub_4D3779 proc near

var_20= byte ptr -20h
var_1E= word ptr -1Eh

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     eax, [eax+0Bh]
sar     eax, 18h
call    sub_4E1877
mov     ecx, eax
cmp     byte ptr [ebp+3], 4
jnb     loc_4D380C
mov     al, [ecx+0Ch]
mov     bl, [ebp+0Fh]
cmp     al, bl
jge     short loc_4D37B1
mov     dword ptr [ebp+0C4h], 404040h
jmp     short loc_4D37F7

loc_4D37B1:
jnz     short loc_4D37ED
mov     cl, byte ptr ds:word_77EAB6
and     cl, 0Fh
shl     cl, 3
test    byte ptr ds:word_77EAB6, 10h
jz      short loc_4D37CD
add     cl, 80h
jmp     short loc_4D37D3

loc_4D37CD:
mov     al, 0F0h
sub     al, cl
mov     cl, al

loc_4D37D3:
and     ecx, 0FFh
mov     eax, ecx
shl     eax, 8
or      eax, ecx
shl     ecx, 10h
or      eax, ecx
mov     [ebp+0C4h], eax
jmp     short loc_4D37F7

loc_4D37ED:
mov     dword ptr [ebp+0C4h], offset unk_808080

loc_4D37F7:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
jmp     short loc_4D3876

loc_4D380C:
test    byte ptr [ebp+0CFh], 22h
jz      short loc_4D3831
mov     edx, (offset dword_5F8376+2)
mov     eax, 168h
call    sub_4D8BC3
mov     byte ptr [ecx+0Dh], 1Eh
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+9], 0
jmp     short loc_4D3876

loc_4D3831:
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    0
push    8800000h
sub     [esp+2Ch+var_1E], 32h ; '2'
lea     eax, [ebp+0CCh]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 32h ; '2'
lea     eax, [esp+34h+var_20]
call    sub_4E01FC
mov     dword ptr [ebp+0CCh], 0

loc_4D3876:
add     esp, 8

loc_4D3879:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D3779 endp




sub_4D3880 proc near
push    ecx
push    edx
push    esi
mov     edx, eax
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF003
mov     ecx, eax
shl     eax, 2
sub     eax, ecx
shl     eax, 9
neg     eax
sar     eax, 0Ch
mov     [edx+48h], ax
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
sub     eax, ecx
shl     eax, 9
neg     eax
sar     eax, 0Ch
mov     [edx+44h], ax
mov     word ptr [edx+46h], 0F9C0h
mov     word ptr [edx+4Eh], 80h
test    byte ptr [edx+0CFh], 20h
jnz     short loc_4D38E5
cmp     ds:word_5F83A8, 258h
jle     short loc_4D38F9

loc_4D38E5:
mov     cx, [edx+44h]
add     ecx, ecx
mov     [edx+44h], cx
mov     si, [edx+48h]
add     esi, esi
mov     [edx+48h], si

loc_4D38F9:
inc     byte ptr [edx+9]
pop     esi
pop     edx
pop     ecx
retn
sub_4D3880 endp




sub_4D3900 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
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
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     ah, [eax+55h]
add     ah, 2
mov     [ecx+55h], ah
inc     byte ptr [ecx+57h]
mov     edx, 200h
mov     eax, ecx
call    sub_4D3683
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, ecx
call    sub_42DE56
test    eax, eax
jz      short loc_4D39AC
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
inc     byte ptr [ecx+8]

loc_4D39AC:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D3900 endp




sub_4D39B1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4D39B7[edx*4]
pop     edx
retn
sub_4D39B1 endp



; Attributes: thunk

sub_4D39C0 proc near
jmp     sub_4DE371
sub_4D39C0 endp




sub_4D39C5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D39CB[edx*4]
pop     edx
retn
sub_4D39C5 endp




sub_4D39D4 proc near
inc     byte ptr [eax+8]
retn
sub_4D39D4 endp




sub_4D39D8 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
and     ds:byte_5F8364, 0FDh
lea     edi, [ecx+14h]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
or      byte ptr [ecx], 6
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     edx, [ecx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+34h], edx
mov     [ecx+1Ch], edx
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+38h], edx
mov     [ecx+20h], edx
mov     edx, [ecx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+3Ch], edx
mov     [ecx+24h], edx
mov     word ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     dword ptr [ecx+0CCh], 0
mov     edx, 100h
mov     eax, ecx
call    sub_4D3683
mov     byte ptr [ecx+2], 4
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 1Fh
jmp     loc_4D3767
sub_4D39D8 endp




sub_4D3A87 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edi, [ebp+54h]
mov     esi, offset dword_5F83B8
movsd
movsd
lea     edi, [ebp+14h]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edx, 100h
call    sub_4D3683
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+34h], eax
mov     [ebp+1Ch], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+38h], eax
mov     [ebp+20h], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+3Ch], eax
mov     [ebp+24h], eax
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
jmp     loc_4D3879
sub_4D3A87 endp




sub_4D3AFD proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D3B03[edx*4]
pop     edx
retn
sub_4D3AFD endp




sub_4D3B0C proc near
push    edx
mov     edx, [eax+9]
sar     edx, 18h
call    ds:funcs_4D3B13[edx*4]
pop     edx
retn
sub_4D3B0C endp




sub_4D3B1C proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jz      short loc_4D3B2D
mov     eax, edx
call    sub_4D3E17

loc_4D3B2D:
xor     ecx, ecx
mov     cl, [edx+8]
mov     eax, edx
call    ds:funcs_4D3B34[ecx*4]
mov     eax, edx
call    sub_4D3E75
pop     edx
pop     ecx
retn
sub_4D3B1C endp




sub_4D3B45 proc near
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     edx, eax
mov     ah, [eax]
or      ah, 2
mov     [edx], ah
mov     dword ptr [edx+0D4h], 0
mov     dword ptr [edx+0D8h], 0
mov     dword ptr [edx+78h], offset unk_53964C
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
mov     dword ptr [edx+88h], 3DC8002Ah
mov     dword ptr [edx+8Ch], 2E808080h
mov     ax, [edx+14h]
mov     [edx+90h], ax
mov     ax, [edx+16h]
mov     [edx+92h], ax
mov     ax, [edx+18h]
mov     [edx+94h], ax
lea     edi, [edx+34h]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [edx+2Ch]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [edx+0DCh]
lea     esi, [edx+14h]
movsd
movsd
mov     edi, esp
lea     esi, [edx+0DCh]
movsd
movsd
lea     edi, [edx+0E4h]
mov     esi, esp
movsd
movsd
mov     edi, esp
lea     esi, [edx+0E4h]
movsd
movsd
lea     edi, [edx+0ECh]
mov     esi, esp
movsd
movsd
mov     edi, esp
lea     esi, [edx+0ECh]
movsd
movsd
lea     edi, [edx+0F4h]
mov     esi, esp
movsd
movsd
mov     edi, esp
lea     esi, [edx+0F4h]
movsd
movsd
lea     edi, [edx+0FCh]
mov     esi, esp
movsd
movsd
mov     al, ds:byte_539658
mov     [edx+96h], al
mov     al, ds:byte_539659
mov     [edx+97h], al
mov     word ptr [edx+98h], 64h ; 'd'
mov     eax, [edx+54h]
sar     eax, 10h
call    sub_4EF008
neg     eax
mov     ecx, eax
shl     eax, 2
add     eax, ecx
shl     eax, 3
sar     eax, 4
mov     [edx+44h], ax
mov     word ptr [edx+46h], 0
mov     eax, [edx+54h]
sar     eax, 10h
call    sub_4EF003
neg     eax
mov     ecx, eax
shl     eax, 2
add     eax, ecx
shl     eax, 3
sar     eax, 4
mov     [edx+48h], ax
mov     word ptr [edx+4Ch], 0
mov     word ptr [edx+4Eh], 0
mov     word ptr [edx+50h], 0
inc     byte ptr [edx+8]
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0B4h
mov     word ptr [edx+7Ch], 0
mov     eax, edx
call    sub_4D3E75
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D3B45 endp




sub_4D3CC9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
add     eax, 88h
lea     edi, [ebp+0FCh]
lea     esi, [ebp+0F4h]
movsd
movsd
lea     edi, [ebp+0F4h]
lea     esi, [ebp+0ECh]
movsd
movsd
lea     edi, [ebp+0ECh]
lea     esi, [ebp+0E4h]
movsd
movsd
lea     edi, [ebp+0E4h]
lea     esi, [ebp+0DCh]
movsd
movsd
lea     edi, [ebp+0DCh]
lea     esi, [ebp+14h]
movsd
movsd
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 8
add     [ebp+1Ch], edx
mov     edx, [ebp+44h]
sar     edx, 10h
shl     edx, 8
add     [ebp+20h], edx
mov     edx, [ebp+46h]
sar     edx, 10h
shl     edx, 8
add     [ebp+24h], edx
mov     edx, [ebp+1Ch]
sar     edx, 10h
mov     [ebp+14h], dx
mov     [eax+8], dx
mov     edx, [ebp+20h]
sar     edx, 10h
mov     [ebp+16h], dx
mov     [eax+0Ah], dx
mov     edx, [ebp+24h]
sar     edx, 10h
mov     [ebp+18h], dx
mov     [eax+0Ch], dx
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     esi, [ebp+14h]
mov     ecx, 40h ; '@'
mov     edx, (offset dword_5F880A+2)
mov     eax, esi
call    sub_4DE552
add     [ebp+56h], ax
mov     eax, [ebp+54h]
sar     eax, 10h
call    sub_4EF008
neg     eax
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 0
mov     eax, [ebp+54h]
sar     eax, 10h
call    sub_4EF003
neg     eax
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ebp+48h], ax
mov     ah, [ebp+0Bh]
dec     ah
mov     [ebp+0Bh], ah
jnz     short loc_4D3DE7
mov     eax, ebp
call    sub_4D3EBF
mov     eax, ebp
call    sub_4DE371
jmp     short loc_4D3E10

loc_4D3DE7:
cmp     ah, 9Ch
ja      short loc_4D3E09
mov     bl, [ebp+0Ah]
inc     bl
mov     [ebp+0Ah], bl
cmp     bl, 0Ah
jb      short loc_4D3E09
mov     byte ptr [ebp+0Ah], 0
mov     edx, esi
mov     eax, 14Bh
call    sub_4D8BC3

loc_4D3E09:
mov     eax, ebp
call    sub_4D3F1F

loc_4D3E10:
pop     ebp

loc_4D3E11:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D3CC9 endp




sub_4D3E17 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
test    byte ptr [eax+0D7h], 1Ah
jnz     short loc_4D3E51
lea     eax, [ebp+14h]
mov     ecx, 0FFFFh
xor     ebx, ebx
xor     edx, edx
call    sub_42C5B7
cmp     eax, 0FFFFFFF0h
jl      short loc_4D3E51
cmp     word ptr [ebp+7Ch], 0
jnz     short loc_4D3E51
cmp     dword ptr [ebp+80h], 10000h
jnb     short loc_4D3E61

loc_4D3E51:
mov     eax, ebp
call    sub_4D3EBF
mov     eax, ebp
call    sub_4DE371
jmp     short loc_4D3E10

loc_4D3E61:
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
jmp     short loc_4D3E10
sub_4D3E17 endp




sub_4D3E75 proc near
push    ebx
push    ecx
push    edx
push    0
push    0
xor     ecx, ecx
mov     cl, [eax+2]
mov     edx, ds:dword_55A110
mov     edx, [edx+ecx*4]
mov     dl, [edx+9]
and     edx, 0FFh
or      edx, 4000000h
push    edx
lea     edx, [eax+0D4h]
push    edx
xor     edx, edx
mov     dl, [eax+1]
push    edx
add     eax, 14h
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 64h ; 'd'
call    sub_4E01FC
pop     edx
pop     ecx
pop     ebx
retn
sub_4D3E75 endp




sub_4D3EBF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4D3EE6
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 10h
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
lea     edi, [eax+48h]
lea     esi, [edx+14h]
movsd
movsd

loc_4D3EE6:
call    sub_4DE13B
test    eax, eax
jz      short loc_4D3F06
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 10h
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0
lea     edi, [eax+48h]
lea     esi, [edx+14h]
movsd
movsd

loc_4D3F06:
lea     ecx, [edx+14h]
mov     ebx, 8
xor     edx, edx
mov     eax, 1
call    sub_43C263
jmp     loc_4D3E11
sub_4D3EBF endp




sub_4D3F1F proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    eax
xor     edx, edx

loc_4D3F27:
xor     ebx, ebx
mov     bl, ds:byte_53965A[edx*2]
movzx   edi, ds:byte_53965B[edx*2]
call    sub_4EE133
mov     dword ptr [eax+4], 2E808080h
mov     ecx, edx
shl     ecx, 3
add     ecx, [esp+18h+var_18]
mov     esi, [ecx+0DCh]
mov     [eax+8], esi
mov     ecx, [ecx+0E0h]
mov     [eax+10h], ecx
mov     ecx, edi
shl     ecx, 8
mov     esi, ecx
or      esi, 3DC80000h
or      esi, ebx
mov     [eax+0Ch], esi
mov     edi, ecx
or      edi, 2A0000h
lea     esi, [ebx+1Fh]
or      edi, esi
mov     [eax+14h], edi
add     ecx, 1F00h
mov     edi, ecx
or      edi, ebx
mov     [eax+1Ch], edi
or      ecx, esi
mov     [eax+24h], ecx
mov     dword ptr [eax+18h], 64h ; 'd'
inc     edx
cmp     edx, 5
jl      short loc_4D3F27
add     esp, 4
jmp     loc_4D3E11
sub_4D3F1F endp




sub_4D3FA7 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 10h
mov     ebx, edx
lea     edi, [eax+0BCh]
lea     esi, [eax+14h]
movsd
movsd
lea     ecx, [eax+8Ch]  ; int
add     eax, 54h ; 'T'
mov     edx, ecx
call    sub_4EF638
movsx   eax, bx
mov     [esp+20h+var_20], eax
mov     [esp+20h+var_1C], eax
mov     [esp+20h+var_18], eax
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 10h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4D3FA7 endp




sub_4D3FEA proc near

var_20= byte ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    offset unk_800000
push    0C800000h
add     eax, 0CCh
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 1Eh
lea     eax, [esp+34h+var_20]
call    sub_4E01FC
mov     dword ptr [ebp+0CCh], 0
add     esp, 8
jmp     loc_4D423E
sub_4D3FEA endp




sub_4D403E proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     byte ptr [ecx+3], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     word ptr [ecx+14h], 1F4h
mov     word ptr [ecx+16h], 0FFF0h
mov     word ptr [ecx+18h], 0FF60h
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
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     edx, 200h
mov     eax, ecx
call    sub_4D3FA7
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+0CCh], 0
inc     byte ptr [ecx+8]
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D403E endp




sub_4D4107 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
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
test    byte ptr [eax+0CFh], 20h
jz      loc_4D41DA
lea     edx, [ebp+14h]
mov     eax, 160h
call    sub_4D8BC3
mov     edx, ds:dword_560BEC
inc     edx
mov     ds:dword_560BEC, edx
mov     ecx, 5
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
test    edx, edx
jnz     short loc_4D4176
call    sub_4DDF54
test    eax, eax
jz      short loc_4D4186
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8
mov     byte ptr [eax+8], 1
jmp     short loc_4D4186

loc_4D4176:
call    sub_4DE043
test    eax, eax
jz      short loc_4D4186
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 21h ; '!'

loc_4D4186:
xor     dl, dl
mov     ds:byte_560BE7, dl
lea     eax, [ebp+14h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DDDB4
mov     edx, eax
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
sub     eax, ecx
shl     eax, 3
add     eax, ecx
add     eax, eax
sar     eax, 0Ch
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 0FFF0h
mov     eax, edx
call    sub_4EF003
shl     eax, 3
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 0Ch
mov     [ebp+48h], ax
inc     byte ptr [ebp+8]
jmp     short loc_4D41F4

loc_4D41DA:
cmp     word ptr [ebp+14h], 0
jle     short loc_4D41EE
sub     word ptr [ebp+58h], 100h
sub     word ptr [ebp+14h], 14h
jmp     short loc_4D41F4

loc_4D41EE:
mov     word ptr [ebp+14h], 0

loc_4D41F4:
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     edx, 200h
mov     eax, ebp
call    sub_4D3FA7
mov     eax, ebp
call    sub_4D3FEA

loc_4D422B:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 28h ; '('
mov     eax, ebp
call    sub_4ED88B

loc_4D423E:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D4107 endp




sub_4D4245 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
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
mov     dx, [eax+44h]
add     [eax+14h], dx
mov     dx, [eax+46h]
add     [eax+16h], dx
mov     dx, [eax+48h]
add     [eax+18h], dx
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
sub     word ptr [eax+54h], 100h
cmp     word ptr [eax+18h], 400h
jge     short loc_4D42BA
test    byte ptr [ebp+0CFh], 4
jz      short loc_4D42FD

loc_4D42BA:
lea     edx, [ebp+14h]
test    byte ptr [ebp+0CFh], 4
jz      short loc_4D42CD
mov     eax, 162h
jmp     short loc_4D42D2

loc_4D42CD:
mov     eax, 161h

loc_4D42D2:
call    sub_4D8BC3
cmp     word ptr [ebp+44h], 0
jl      short loc_4D42E6
mov     word ptr [ebp+44h], 50h ; 'P'
jmp     short loc_4D42EC

loc_4D42E6:
mov     word ptr [ebp+44h], 0FFB0h

loc_4D42EC:
mov     word ptr [ebp+48h], 0
mov     word ptr [ebp+46h], 0FFC4h
inc     byte ptr [ebp+8]
jmp     short loc_4D4304

loc_4D42FD:
mov     eax, ebp
call    sub_4D3FEA

loc_4D4304:
mov     edx, 200h
mov     eax, ebp
call    sub_4D3FA7
jmp     loc_4D422B
sub_4D4245 endp




sub_4D4315 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
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
mov     ax, [eax+44h]
add     [ebp+14h], ax
mov     ax, [ebp+46h]
add     [ebp+16h], ax
mov     ax, [ebp+48h]
add     [ebp+18h], ax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
cmp     eax, 0FFFFFDA8h
jg      short loc_4D4304
mov     eax, ebp
call    sub_4DE371
jmp     loc_4D423E
sub_4D4315 endp




sub_4D438C proc near
push    edx
cmp     byte ptr ds:dword_560BE0, 0Bh
jnz     short loc_4D439D
call    sub_4DE371
pop     edx
retn

loc_4D439D:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D43A2[edx*4]
pop     edx
retn
sub_4D438C endp




sub_4D43AB proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     edi, [edx+34h]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [edx+2Ch]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [edx+5Ch]
lea     esi, [edx+54h]
movsd
movsd
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4D43D0[ecx*4]
mov     dword ptr [edx+0CCh], 0
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D43AB endp




sub_4D43E6 proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     ebx, [ecx+88h]
xor     edx, edx
mov     dl, [ecx+3]
mov     ax, ds:word_5396CA[edx*8]
mov     [ecx+14h], ax
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_5396CC[eax*8]
mov     [ecx+16h], ax
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_5396CE[eax*8]
mov     [ecx+18h], ax
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
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     word ptr [ecx+4Ch], 10h
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+50h]
mov     [ecx+4Eh], ax
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 40h ; '@'
mov     dword ptr [ecx+0DCh], 0
mov     dword ptr [ecx+78h], 0
lea     eax, [ecx+14h]
call    sub_42C7E7
mov     [ecx+16h], ax
lea     edi, [ebx+34h]
lea     esi, [ecx+14h]
movsd
movsd
lea     esi, [ebx+4]
lea     eax, [ecx+54h]
mov     edx, esi
call    sub_4EF5F7
mov     edx, 200h
mov     [esp+10h+var_10], edx
mov     [esp+10h+var_C], edx
mov     [esp+10h+var_8], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     dword ptr [ebx+3Ch], offset unk_808080
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
add     esp, 10h
jmp     loc_4D478A
sub_4D43E6 endp




sub_4D4500 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= word ptr -24h
var_22= dword ptr -22h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
mov     ebx, offset byte_5F8364
add     eax, 88h
mov     [esp+34h+var_1C], eax
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4D4520[edx*4]
cmp     byte ptr [ebp+0Bh], 0
jz      short loc_4D4546
cmp     byte ptr [ebp+3], 0
jnz     short loc_4D4546
mov     eax, ebp
call    sub_4D49D8
mov     eax, ebp
call    sub_4D49E7
jmp     loc_4D4675

loc_4D4546:
mov     dh, [ebp+0CFh]
test    dh, 8
jz      loc_4D45F4
test    dh, 20h
jnz     loc_4D45F4
test    dword ptr [ebp+0CCh], 0FFFFFFh
jz      loc_4D45F4
add     dword ptr [ebp+0DCh], 100h
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4D45F4
cmp     byte ptr [ebp+3], 0
jnz     short loc_4D45BF
mov     edx, [ebp+0Ch]
sar     edx, 18h
xor     ecx, ecx
mov     cl, ds:byte_53974E[edx]
inc     edx
mov     esi, 6
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     [ebp+0Fh], dl
mov     ah, [ebp+0Ch]
dec     ah
mov     [ebp+0Ch], ah
jnz     short loc_4D45E7
mov     word ptr [ebp+58h], 0
mov     byte ptr [ebp+0Bh], 1
jmp     short loc_4D45F4

loc_4D45BF:
mov     edx, [ebp+0Ch]
sar     edx, 18h
xor     ecx, ecx
mov     cl, ds:byte_539754[edx]
inc     edx
mov     esi, 4
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     [ebp+0Fh], dl
mov     eax, 1Ch
call    sub_47EEAE

loc_4D45E7:
test    ecx, ecx
jz      short loc_4D45F4
mov     edx, ecx
xor     eax, eax
call    sub_4A0E24

loc_4D45F4:
mov     dh, [ebp+0Eh]
test    dh, dh
jnz     short loc_4D4651
test    byte ptr [ebp+0CFh], 2
jz      loc_4D4675
mov     edx, [ebx+14h]
sar     edx, 10h
mov     eax, [ebp+14h]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
call    abs_
cmp     eax, 10h
jge     short loc_4D4675
cmp     byte ptr [ebp+3], 0
jnz     short loc_4D463E
mov     al, [ebp+0Ch]
dec     al
mov     [ebp+0Ch], al
jnz     short loc_4D463E
mov     word ptr [ebp+58h], 0
mov     byte ptr [ebp+0Bh], 1
jmp     short loc_4D4642

loc_4D463E:
mov     byte ptr [ebp+0Eh], 18h

loc_4D4642:
lea     edx, [ebp+14h]
mov     eax, 189h
call    sub_4D8BC3
jmp     short loc_4D4675

loc_4D4651:
cmp     dh, 8
jle     short loc_4D4672
mov     al, dh
and     al, 7
movsx   eax, al
mov     ax, ds:word_53973E[eax*2]
add     [ebp+56h], ax
xor     edx, edx
mov     eax, ebp
call    sub_4D4E6E

loc_4D4672:
dec     byte ptr [ebp+0Eh]

loc_4D4675:
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     edi, [esp+34h+var_1C]
lea     edi, [edi+34h]
lea     esi, [ebp+14h]
movsd
movsd
mov     bx, [ebp+56h]
mov     ax, [ebp+0DCh]
and     ah, 0Fh
mov     edx, ebx
add     edx, eax
mov     [ebp+56h], dx
mov     ecx, [esp+34h+var_1C]
add     ecx, 4          ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     esi, 200h
mov     [esp+34h+var_34], esi
mov     [esp+34h+var_30], esi
mov     [esp+34h+var_2C], esi
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     eax, [ebp+62h]
sar     eax, 10h
mov     edx, [ebp+0DCh]
cmp     eax, edx
jnb     short loc_4D46EE
mov     ecx, edx
sub     ecx, eax
mov     [ebp+0DCh], ecx
jmp     short loc_4D46F8

loc_4D46EE:
mov     dword ptr [ebp+0DCh], 0

loc_4D46F8:
mov     [ebp+56h], bx
mov     ecx, 1000008h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
mov     bx, [ebp+56h]
lea     edi, [esp+34h+var_24]
lea     esi, [ebp+14h]
movsd
movsd
movsx   edx, bx
sub     word ptr [esp+34h+var_22], 50h ; 'P'
mov     eax, edx
call    sub_4EF008
mov     ecx, [esp+0Eh]
sar     ecx, 10h
mov     [esp+34h+var_24], cx
mov     eax, edx
call    sub_4EF003
mov     edx, [esp+34h+var_22]
sar     edx, 10h
mov     word ptr [esp+34h+var_22+2], dx
push    80h
push    0
push    8880000h
lea     eax, [ebp+0CCh]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 80h
lea     eax, [esp+48h+var_24]
call    sub_4E01FC
mov     dword ptr [ebp+0CCh], 0
add     esp, 1Ch

loc_4D4789:
pop     ebp

loc_4D478A:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D4500 endp ; sp-analysis failed




sub_4D4790 proc near
push    edx
mov     edx, eax
call    sub_432EAB
mov     eax, edx
call    sub_4DE371
pop     edx
sub_4D4790 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_111]



sub_4D47A1 proc near

var_22= dword ptr -22h
var_1E= dword ptr -1Eh
var_8= byte ptr -8
var_6= dword ptr -6

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
call    sub_432697
mov     ax, [ebp+56h]
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
movsx   edx, ax
sub     word ptr [esp+20h+var_1E], 50h ; 'P'
mov     eax, edx
call    sub_4EF008
mov     eax, [esp+20h+var_22]
sar     eax, 10h
mov     word ptr [esp+20h+var_22+2], ax
mov     eax, edx
call    sub_4EF003
mov     eax, [esp+8+var_6]
sar     eax, 10h
mov     word ptr [esp+8+var_6+2], ax
push    80h
push    0
push    8880000h
lea     eax, [ebp+0CCh]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 80h
lea     eax, [esp+1Ch+var_8]
call    sub_4E01FC
mov     dword ptr [ebp+0CCh], 0
add     esp, 8
jmp     loc_4D4789
sub_4D47A1 endp




sub_4D4836 proc near
mov     byte ptr [eax+9], 1
retn
sub_4D4836 endp




sub_4D483B proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
mov     ax, [eax+4Ch]
mov     dx, [esi+44h]
add     edx, eax
mov     [esi+44h], dx
cmp     dx, 300h
jle     short loc_4D485F
mov     word ptr [esi+44h], 300h

loc_4D485F:
xor     eax, eax
mov     al, [esi+0Ah]
shl     eax, 2
add     eax, offset unk_539692
xor     edx, edx
mov     dl, [eax]
movsx   dx, ds:byte_53967C[edx*2]
shl     edx, 8
mov     [esp+18h+var_18], dx
mov     al, [eax]
and     eax, 0FFh
movsx   ax, ds:byte_53967D[eax*2]
shl     eax, 8
mov     [esp+18h+var_14], ax
mov     ax, [esi+16h]
mov     [esp+18h+var_16], ax
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, esp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     eax, esi
call    sub_4D4968
test    ax, ax
jz      short loc_4D48D2
mov     byte ptr [esi+9], 2

loc_4D48D2:
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D483B endp




sub_4D48DA proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
xor     eax, eax
mov     al, [esi+0Ah]
shl     eax, 2
add     eax, offset unk_539692
xor     ecx, ecx
mov     cl, [eax+3]
movsx   dx, ds:byte_53967C[ecx*2]
shl     edx, 8
mov     [esp+18h+var_18], dx
mov     al, [eax+3]
and     eax, 0FFh
movsx   ax, ds:byte_53967D[eax*2]
shl     eax, 8
mov     [esp+18h+var_14], ax
mov     ax, [esi+16h]
mov     [esp+18h+var_16], ax
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, esp
call    sub_4DE552
mov     edx, eax
add     dx, [esi+56h]
and     dh, 0Fh
mov     [esi+56h], dx
test    eax, eax
jnz     short loc_4D48D2
mov     ah, [esi+0Ah]
inc     ah
mov     [esi+0Ah], ah
cmp     ah, 0Eh
jb      short loc_4D495F
mov     byte ptr [esi+0Ah], 0

loc_4D495F:
mov     byte ptr [esi+9], 1
jmp     loc_4D48D2
sub_4D48DA endp




sub_4D4968 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     eax, eax
mov     al, [edx+0Ah]
shl     eax, 2
add     eax, offset unk_539692
mov     al, [eax]
and     eax, 0FFh
movsx   cx, ds:byte_53967C[eax*2]
movsx   bx, ds:byte_53967D[eax*2]
shl     ecx, 8
shl     ebx, 8
mov     eax, [edx+12h]
sar     eax, 10h
movsx   ecx, cx
sub     ecx, eax
mov     eax, ecx
call    abs_
cmp     eax, 200h
jge     short loc_4D49D2
mov     edx, [edx+16h]
sar     edx, 10h
movsx   eax, bx
sub     eax, edx
call    abs_
cmp     eax, 200h
jge     short loc_4D49D2
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4D49D2:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4D4968 endp




sub_4D49D8 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Bh]
call    ds:funcs_4D49DE[edx*4]
pop     edx
retn
sub_4D49D8 endp




sub_4D49E7 proc near
push    edx
mov     edx, [eax+9]
sar     edx, 18h
call    ds:funcs_4D49EE[edx*4]
pop     edx
sub_4D49E7 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_112]



sub_4D49F7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ax, [eax+44h]
mov     ebx, 20h ; ' '
movsx   edx, ax
cmp     edx, ebx
jge     short loc_4D4A1D
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+4Ch], 0
inc     byte ptr [ecx+0Bh]
jmp     short loc_4D4A25

loc_4D4A1D:
mov     edx, eax
sub     edx, ebx
mov     [ecx+44h], dx

loc_4D4A25:
cmp     word ptr [ecx+44h], 100h
jge     short loc_4D4A40
cmp     ax, 100h
jle     short loc_4D4A40
lea     edx, [ecx+14h]
mov     eax, 18Bh
call    sub_4D8BC3

loc_4D4A40:
mov     edx, 1
mov     eax, ecx
call    sub_4D4E6E
pop     edx
pop     ecx
pop     ebx
retn
sub_4D49F7 endp




sub_4D4A50 proc near
push    ecx
push    edx
mov     ecx, eax
test    byte ptr [eax+0CFh], 8
jz      short loc_4D4AB5
test    dword ptr [ecx+0CCh], 0FFFFFFh
jnz     short loc_4D4AB5
mov     eax, [ecx+0C8h]
mov     word ptr [eax+4Ch], 0
mov     dx, [eax+4Ch]
mov     eax, [ecx+0C8h]
mov     [eax+44h], dx
mov     eax, [ecx+0C8h]
mov     byte ptr [eax+8], 4
mov     word ptr [ecx+44h], 300h
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+50h]
mov     [ecx+4Eh], ax
mov     [ecx+4Ch], ax
inc     byte ptr [ecx+0Bh]
lea     edx, [ecx+14h]
mov     eax, 18Ah
call    sub_4D8BC3

loc_4D4AB5:
mov     edx, 1
mov     eax, ecx
call    sub_4D4E6E
pop     edx
pop     ecx
retn
sub_4D4A50 endp




sub_4D4AC4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     edx, 20h ; ' '
mov     eax, [eax+42h]
sar     eax, 10h
cmp     eax, edx
jl      short loc_4D4AEA
mov     eax, ebp
call    sub_42DE56
test    eax, eax
jz      loc_4D4C00

loc_4D4AEA:
mov     eax, offset unk_539702
call    sub_49DBA5
lea     edi, [eax+14h]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [eax+1Ch]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+54h]
lea     esi, [ebp+54h]
movsd
movsd
mov     dx, ds:word_77EAB6
and     dh, 1
add     [eax+56h], dx
mov     word ptr [eax+46h], 0FF40h
mov     eax, offset unk_539702
call    sub_49DBA5
lea     edi, [eax+14h]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [eax+1Ch]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+54h]
lea     esi, [ebp+54h]
movsd
movsd
mov     dx, ds:word_77EAB6
and     dh, 1
sub     [eax+56h], dx
mov     word ptr [eax+46h], 0FF40h
mov     eax, offset unk_539716
call    sub_49DBA5
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd
mov     dx, [ebp+56h]
xor     dh, dh
and     dl, 0C0h
movsx   esi, dx
mov     edx, esi
sar     edx, 6
mov     [eax+0Fh], dl
mov     eax, offset unk_53972A
call    sub_49DBA5
mov     esi, [ebp+0C8h]
lea     edi, [eax+14h]
lea     esi, [esi+14h]
movsd
movsd
mov     esi, [ebp+0C8h]
lea     edi, [eax+1Ch]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     esi, [ebp+0C8h]
lea     edi, [eax+54h]
lea     esi, [esi+54h]
movsd
movsd
mov     ecx, 0FFFFF380h
xor     ebx, ebx
xor     edx, edx
call    sub_4DD43B
call    sub_4DE13B
test    eax, eax
jz      short loc_4D4C14
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd
mov     dx, [ebp+16h]
sub     edx, 64h ; 'd'
mov     [eax+4Ah], dx
mov     [ebp+0C8h], eax
and     byte ptr [ebp+0], 0FDh
mov     word ptr [ebp+44h], 0
inc     byte ptr [ebp+0Bh]
jmp     short loc_4D4C14

loc_4D4C00:
mov     ax, [ebp+56h]
add     eax, 40h ; '@'
and     ah, 0Fh
mov     [ebp+56h], ax
sub     [ebp+44h], dx

loc_4D4C14:
mov     edx, 1
mov     eax, ebp
call    sub_4D4E6E
jmp     loc_4D4789
sub_4D4AC4 endp




sub_4D4C25 proc near
push    ebx
push    edx
mov     edx, eax
mov     eax, [eax+0C8h]
cmp     byte ptr [eax], 0
jnz     short loc_4D4C44
mov     bh, 1
mov     byte ptr ds:dword_77E954, bh
call    sub_42A66D
add     [edx+0Bh], bh

loc_4D4C44:
pop     edx
pop     ebx
retn
sub_4D4C25 endp




sub_4D4C47 proc near
push    edx
mov     edx, eax
call    sub_42ABA2
test    eax, eax
jnz     short loc_4D4C74
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
mov     byte ptr [edx+8], 3
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0

loc_4D4C74:
pop     edx
retn
sub_4D4C47 endp




sub_4D4C76 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_4D4CA3
mov     byte ptr ds:dword_5F836C, 3
xor     bl, bl
mov     byte ptr ds:dword_5F836C+1, bl
xor     ecx, ecx
mov     ds:dword_5F8370, ecx
inc     byte ptr [edx+0Ch]

loc_4D4CA3:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D4C76 endp




sub_4D4CA7 proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     edi, eax
mov     esi, offset byte_5F8364
xor     edx, edx
mov     ds:word_57096E, dx
mov     ds:word_57096A, dx
mov     al, byte ptr ds:dword_5F8370
mov     ah, al
inc     ah
cmp     al, 0Ah
jb      short loc_4D4CF4
jbe     loc_4D4D96
cmp     al, 14h
jb      short loc_4D4CF0
jbe     loc_4D4DBC
cmp     al, 15h

loc_4D4CE5:
jz      loc_4D4DE0
jmp     loc_4D4DE3

loc_4D4CF0:
cmp     al, 0Bh
jmp     short loc_4D4CE5

loc_4D4CF4:
cmp     al, 1
jb      short loc_4D4D03
jbe     short loc_4D4D1C
cmp     al, 2
jz      short loc_4D4D25
jmp     loc_4D4DE3

loc_4D4D03:
test    al, al
jnz     loc_4D4DE3
inc     byte ptr ds:dword_5F836C+1

loc_4D4D11:
mov     byte ptr ds:dword_5F8370, ah
jmp     loc_4D4DE3

loc_4D4D1C:
or      ds:byte_5F8421, 20h
jmp     short loc_4D4D11

loc_4D4D25:
mov     ecx, 2
mov     [esp+2Ch+var_1C], cx
mov     [esp+2Ch+var_1A], 9
mov     [esp+2Ch+var_18], cx
mov     ecx, esp
lea     ebx, [esp+2Ch+var_1C]
mov     edx, esi
mov     eax, edi
call    sub_4DD821
test    al, 1
jz      short loc_4D4D72
mov     ax, ds:word_5F848C
mov     cx, ds:word_5F849C
or      eax, ecx
mov     ds:word_57096E, ax
mov     ds:word_57096A, ax
mov     byte ptr ds:dword_5F8370, 0Ah
jmp     short loc_4D4DE3

loc_4D4D72:
mov     ax, ds:word_5F848E
mov     bx, ds:word_5F849C
or      eax, ebx
mov     ds:word_57096E, ax
mov     ds:word_57096A, ax
mov     byte ptr ds:dword_5F8370, 14h
jmp     short loc_4D4DE3

loc_4D4D96:
mov     dx, ds:word_5F848C
mov     bx, ds:word_5F849C
or      edx, ebx
mov     ds:word_57096E, dx
mov     ds:word_57096A, dx
mov     byte ptr ds:dword_5F8370, ah
jmp     short loc_4D4DE0

loc_4D4DBC:
mov     dx, ds:word_5F848E
mov     cx, ds:word_5F849C
or      edx, ecx
mov     ds:word_57096E, dx
mov     ds:word_57096A, dx
mov     byte ptr ds:dword_5F8370, ah

loc_4D4DE0:
inc     byte ptr [esi+0Dh]

loc_4D4DE3:
cmp     byte ptr [esi+0Dh], 0Ah
jle     short loc_4D4DF3
mov     dword ptr [esi+0Ch], 0
inc     byte ptr [edi+0Ch]

loc_4D4DF3:
add     esp, 18h
jmp     loc_4D478A
sub_4D4CA7 endp




sub_4D4DFB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Bh], 3
jbe     short loc_4D4E6A
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E604, eax
mov     eax, [ecx+14h]
sar     eax, 10h
sub     eax, 12Ch
shl     eax, 10h
mov     dword ptr ds:unk_77E608, eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E60C, eax
mov     eax, [ecx+54h]
sar     eax, 10h
add     eax, 600h
shl     eax, 10h
mov     ds:dword_77E634, eax
mov     ds:dword_77E638, 1000000h
mov     ds:dword_77E63C, 3000000h
inc     byte ptr [ecx+0Ch]

loc_4D4E6A:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D4DFB endp




sub_4D4E6E proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     bl, dl
mov     esi, offset byte_5F8364
cmp     byte ptr [eax+0Dh], 0
jz      short loc_4D4E87
dec     byte ptr [ecx+0Dh]
pop     esi
pop     ecx
pop     ebx
retn

loc_4D4E87:
call    sub_4DE13B
test    eax, eax
jz      loc_4D4F58
test    dl, dl
ja      loc_4D4F17
mov     bx, word ptr ds:dword_5F8376+2
sub     bx, [ecx+14h]
movsx   edx, bx
sar     edx, 4
test    edx, edx
jz      short loc_4D4EC2
test    bx, bx
jge     short loc_4D4EBD
mov     ebx, 0FFFFFF9Ch
jmp     short loc_4D4EC2

loc_4D4EBD:
mov     ebx, 64h ; 'd'

loc_4D4EC2:
mov     dx, [esi+18h]
sub     dx, [ecx+18h]
movsx   esi, dx
sar     esi, 4
test    esi, esi
jz      short loc_4D4EE5
test    dx, dx
jge     short loc_4D4EE0
mov     edx, 0FFFFFF9Ch
jmp     short loc_4D4EE5

loc_4D4EE0:
mov     edx, 64h ; 'd'

loc_4D4EE5:
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
mov     si, [ecx+14h]
add     esi, ebx
mov     [eax+1Ch], si
mov     bx, [ecx+16h]
sub     ebx, 50h ; 'P'
mov     [eax+1Eh], bx
mov     bx, [ecx+18h]
add     ebx, edx
mov     [eax+20h], bx
mov     byte ptr [ecx+0Dh], 2
pop     esi
pop     ecx
pop     ebx
retn

loc_4D4F17:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 14h
mov     byte ptr [eax+0Fh], 8
mov     dx, [ecx+14h]
mov     [eax+1Ch], dx
mov     dx, [ecx+16h]
sub     edx, 50h ; 'P'
mov     [eax+1Eh], dx
mov     dx, [ecx+18h]
sub     edx, 28h ; '('
mov     [eax+20h], dx
mov     byte ptr [eax+9], 4
mov     byte ptr [ecx+0Dh], 8

loc_4D4F58:
pop     esi
pop     ecx
pop     ebx
retn
sub_4D4E6E endp




sub_4D4F5C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
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
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D4F83[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_4D4FA3
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4D4FA3:
pop     ebp

loc_4D4FA4:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D4F5C endp




sub_4D4FAA proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax        ; int
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     ebx, [ecx+88h]
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 800h
mov     word ptr [ecx+58h], 0
lea     edi, [ebx+34h]
lea     esi, [ecx+14h]
movsd
movsd
lea     esi, [ebx+4]
lea     eax, [ecx+54h]
mov     edx, esi
call    sub_4EF5F7
mov     edx, 200h
mov     [esp+0], edx
mov     [esp+4], edx
mov     [esp+8], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     dword ptr [ebx+3Ch], offset unk_808080
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], offset unk_5397A0
inc     byte ptr [ecx+8]
add     esp, 10h
jmp     loc_4D4FA4
sub_4D4FAA endp




sub_4D502B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     short loc_4D505A
mov     eax, 635h
call    sub_47E888
test    eax, eax
jnz     short loc_4D505A
mov     eax, 635h
call    sub_47E8B8
inc     byte ptr [edx+8]
mov     byte ptr [edx+9], 0

loc_4D505A:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D502B endp

align 4
jpt_4D509A dd offset loc_4D50A1 ; jump table for switch statement
dd offset loc_4D50EE
dd offset loc_4D50F7
dd offset loc_4D5107



sub_4D5084 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4D509A      ; jumptable 004D509A default case
and     eax, 0FFh
jmp     jpt_4D509A[eax*4] ; switch jump

loc_4D50A1:             ; jumptable 004D509A case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4D509A      ; jumptable 004D509A default case
mov     byte ptr ds:dword_5F836C, 3
xor     ch, ch
mov     byte ptr ds:dword_5F836C+1, ch
xor     edx, edx
mov     ds:dword_5F8370, edx
lea     eax, [esi+14h]
mov     ecx, 0Ah
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx

loc_4D50E6:
inc     byte ptr [esi+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D50EE:             ; jumptable 004D509A case 1
mov     ds:byte_5F88AC, 30h ; '0'
jmp     short loc_4D50E6

loc_4D50F7:             ; jumptable 004D509A case 2
cmp     byte ptr ds:dword_77E760, 0
jnz     short def_4D509A ; jumptable 004D509A default case
call    sub_42A98E
jmp     short loc_4D50E6

loc_4D5107:             ; jumptable 004D509A case 3
call    sub_42ABA2
test    eax, eax
jnz     short def_4D509A ; jumptable 004D509A default case
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0

def_4D509A:             ; jumptable 004D509A default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D5084 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_113]
unk_4D512F db    0



sub_4D5130 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= byte ptr -18h

add     eax, [eax+2]
add     byte ptr [ecx], 53h ; 'S'
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax        ; int
lea     edi, [esp+28h+var_18]
mov     esi, offset unk_4D512F
movsd
movsw
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
lea     ebx, [eax+8Ch]
add     eax, 54h ; 'T'
mov     edx, ebx
call    sub_4EF638
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     eax, [esp+eax*2+0Eh]
sar     eax, 10h
mov     [esp+28h+var_28], eax
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     eax, [esp+eax*2+0Eh]
sar     eax, 10h
mov     [esp+28h+var_24], eax
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     eax, [esp+eax*2+0Eh]
sar     eax, 10h
mov     [esp+28h+var_20], eax
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
add     esp, 18h

loc_4D51A4:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D5130 endp ; sp-analysis failed




sub_4D51AA proc near

var_20= byte ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    offset unk_800000
push    4880000h
add     eax, 0CCh
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     eax, [ebp+0Ah]
sar     eax, 18h
add     eax, eax
mov     edx, eax
shl     eax, 4
sub     eax, edx
mov     edx, 78h ; 'x'
sub     edx, eax
mov     ecx, 8000h
xor     ebx, ebx
lea     eax, [esp+34h+var_20]
call    sub_4E01FC
mov     dword ptr [ebp+0CCh], 0
add     esp, 8
pop     ebp
jmp     short loc_4D51A4
sub_4D51AA endp




sub_4D520D proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     ebx, edx
call    sub_4DE043
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      loc_4D52B1
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 26h ; '&'
mov     al, [esi+0Ch]
mov     [edx+0Ch], al
mov     al, [esi+0Dh]
mov     [edx+0Dh], al
mov     byte ptr [edx+0Eh], 1
mov     al, [esi+0Fh]
mov     [edx+0Fh], al
lea     edi, [edx+14h]
lea     esi, [esi+14h]
movsd
movsd
cmp     byte ptr [edx+0Ch], 0
jz      short loc_4D5267
call    rand_
and     eax, 3
mov     esi, eax
shl     esi, 2
add     esi, eax
add     esi, esi
add     esi, 64h ; 'd'
jmp     short loc_4D527B

loc_4D5267:
call    rand_
and     eax, 3
mov     esi, eax
shl     esi, 2
add     esi, eax
add     esi, esi
add     esi, 32h ; '2'

loc_4D527B:
mov     [edx+0DCh], esi
lea     edx, [ebx-400h]
mov     eax, edx
call    sub_4EF008
imul    eax, [ecx+0DCh]
shr     eax, 0Ch
mov     [ecx+44h], ax
mov     eax, edx
call    sub_4EF003
imul    eax, [ecx+0DCh]
shr     eax, 0Ch
mov     [ecx+48h], ax

loc_4D52B1:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4D520D endp

word_4D52B6 dw 5651h
dd 8AC18957h, 6CC8020h, 41C72188h, 64h, 5441C700h
dd 0
dd 5841C7h, 0C7000000h, 6441h, 41C70000h
dd 70h, 7441C700h, 0
dd 5641C766h, 798D0400h, 14718D2Ch, 418BA5A5h
dd 10F8C112h, 8910E0C1h, 41893441h, 16418B1Ch
dd 0C110F8C1h, 418910E0h, 2441893Ch, 0C114418Bh
dd 0E0C110F8h, 38418910h, 66204189h, 4641C7h
dd 41C76600h, 6600104Eh, 4C41C7h, 41C76600h
dd 8B000050h, 0FAC10A51h, 0C1D08918h, 0D02902E0h
dd 0BA02E0C1h
dd offset unk_5397B8
dword_4D5354 dd 5189C201h, 0C481C778h, 80000000h, 89008080h
dd 0FDCBE8C8h, 418AFFFFh, 2E0C00Ch, 8D034188h
dd 0C8890351h, 7D7BE8h, 0E8C88900h, 0FFFFFE26h
dd 5F0841FEh, 53C3595Eh, 55575651h, 0D389C589h
dd 8D2C7D8Dh, 0A5A51475h, 8D347D8Dh, 0A5A51C75h
dd 7D8DA5A5h, 54758D5Ch, 7880A5A5h, 3874000Eh
db 0F6h, 5
dd offset word_77EAB6
dw 7503h
dd 345FE2Fh, 0C109458Bh, 0E0C118F8h, 8AD23102h
dd 0C0830355h, 7EC23903h, 0C558A0Dh, 8802E2C0h
dd 45C60355h, 558D000Eh, 0E8E88903h, 7D0Ch
dd 8A144D8Dh, 0CF85h, 7420A800h, 9A4BE827h
dd 0E0830001h, 0C1C38903h, 0C30102E3h, 0C381DB01h
dd 12Ch, 0DC9D89h
db 2 dup(0), 0BAh
dd offset dword_5F8376+2
db 0E9h
dd 0D0h, 0F27502A8h, 840F08A8h, 0BAh, 0C7D80h
dd 0CA890974h, 16BB8h, 8907EB00h, 16CB8CAh
dd 7CE80000h, 8A000037h, 0FC800D65h, 802A7502h
dd 74000C7Dh, 0C43FE05h, 438313EBh, 2CBA1E58h
dd 0B8000000h, 4, 0FCB9B7E8h, 0E8E889FFh
dd 8EFDh, 13FE9h, 0FEE28800h, 0D5588C2h
dd 10E45C6h, 0C10A458Bh, 0C18918F8h, 2902E1C1h
dd 2E1C1C1h
db 0B8h
dd offset unk_5397B8
db 1, 0C8h, 89h
dd 458D7845h
db 14h, 0BAh
dd offset dword_5F8376+2
dw 9E8h
dword_4D54A8 dd 89000089h, 888DC2h, 89000004h, 9B4EE8C8h
dd 0AF0F0001h, 0DC85h, 0CE8C100h, 44458966h
dd 34E8C889h, 0F00019Bh, 0DC85AFh, 0E8C10000h
dd 4589660Ch, 0E8E88948h, 0FFFFFD29h, 4A83FEBh
dd 958D3B74h, 0D4h, 0BDE8C889h, 89000088h
dd 9B0AE8C1h, 0AF0F0001h, 0DC85h, 0CE8C100h
dd 44458966h, 0F0E8C889h, 0F00019Ah, 0DC85AFh
dd 0E8C10000h, 4589660Ch, 0E45C648h, 458B6601h
dd 80556h, 0E4800000h, 4589660Fh, 458B6656h
dd 4501664Eh, 42458B46h, 0C110F8C1h, 45010CE0h
dd 44458B1Ch, 0C110F8C1h, 45010CE0h, 46458B20h
dd 0C110F8C1h, 45010CE0h, 14558D24h, 0E81C458Dh
dd 800Fh, 0E3E8E889h, 89FFF588h, 74C085C2h
dd 0E45C60Ch, 44458D01h, 0F5838AE8h, 0E8E889FFh
dd 0FFFFFBA9h, 17E8E889h, 8BFFFFFCh, 0F8C10A45h
dd 0C1C18918h, 0C10102E1h, 0BA02E1C1h, 64h
dd 0C931CA29h, 200BBh, 0E8E88900h, 182D3h
dd 595E5F5Dh, 5153C35Bh, 31C18952h, 0F418AC0h
dd 0C2AAE8h, 8ADB3100h, 0C2890859h, 14FFC889h
db 9Dh
dd offset off_5397DC
pop     edx
pop     ecx
pop     ebx
retn



sub_4D55E1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D55E7[edx*4]
pop     edx
retn
sub_4D55E1 endp




sub_4D55F0 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax        ; int
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_5397E4
lea     ebx, [ecx+88h]
mov     ax, [ecx+64h]
add     ah, 4
and     ah, 0Fh
mov     [esp+2Ch+var_1C], ax
mov     ax, [ecx+66h]
and     ah, 0Fh
mov     [esp+2Ch+var_1A], ax
xor     edx, edx
mov     [esp+2Ch+var_18], dx
lea     esi, [ecx+8Ch]
mov     edx, esi
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     edx, 100h
mov     [esp+2Ch+var_24], edx
mov     [esp+2Ch+var_2C], edx
mov     [esp+2Ch+var_28], 200h
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     eax, [ecx+64h]
sar     eax, 10h
call    sub_4EF008
neg     eax
mov     esi, eax
shl     eax, 2
sub     eax, esi
shl     eax, 3
add     eax, esi
add     eax, eax
sar     eax, 0Ch
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 0
mov     eax, [ecx+64h]
sar     eax, 10h
call    sub_4EF003
neg     eax
mov     esi, eax
shl     eax, 2
sub     eax, esi
shl     eax, 3
add     eax, esi
add     eax, eax
sar     eax, 0Ch
mov     [ecx+48h], ax
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+44h]
add     [ecx+14h], ax
mov     ax, [ecx+46h]
add     [ecx+16h], ax
mov     ax, [ecx+48h]
add     [ecx+18h], ax
mov     ax, [ecx+14h]
mov     [ebx+34h], ax
mov     ax, [ecx+16h]
mov     [ebx+36h], ax
mov     ax, [ecx+18h]
mov     [ebx+38h], ax
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
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ebx+3Ch], 2808080h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     eax, ecx
call    sub_4D58A6
mov     byte ptr [ecx+0Fh], 0
inc     byte ptr [ecx+8]

loc_4D5766:
add     esp, 18h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D55F0 endp




sub_4D576F proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax
lea     ebx, [eax+88h]
xor     edx, edx
call    sub_4EE66E
test    eax, eax
jz      short loc_4D5793

loc_4D578A:
mov     eax, ecx
call    sub_4DE371
jmp     short loc_4D5766

loc_4D5793:
mov     ah, [ecx+0Fh]
inc     ah
mov     [ecx+0Fh], ah
cmp     ah, 40h ; '@'
jz      short loc_4D578A
cmp     ah, 30h ; '0'
jge     short loc_4D57AE
mov     dword ptr [ebx+3Ch], 2808080h
jmp     short loc_4D57D7

loc_4D57AE:
mov     al, ah
sub     al, 30h ; '0'
shl     al, 3
mov     ah, 80h
sub     ah, al
mov     al, ah
and     eax, 0FFh
mov     edx, eax
shl     edx, 10h
mov     esi, eax
shl     esi, 8
add     edx, 2000000h
add     edx, esi
add     edx, eax
mov     [ebx+3Ch], edx

loc_4D57D7:
mov     ax, [ecx+64h]
add     ah, 4
and     ah, 0Fh
mov     [esp+2Ch+var_1C], ax
mov     ax, [ecx+66h]
and     ah, 0Fh
mov     [esp+2Ch+var_1A], ax
xor     edx, edx
mov     [esp+2Ch+var_18], dx
lea     esi, [ecx+8Ch]
mov     edx, esi
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     eax, [ecx+0Ch]
sar     eax, 18h
shl     eax, 5
add     eax, 200h
mov     [esp+2Ch+var_24], eax
mov     [esp+2Ch+var_2C], eax
mov     [esp+2Ch+var_28], 200h
mov     edx, esp
mov     eax, esi
call    sub_4EF689
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 10h
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 10h
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 10h
add     [ecx+24h], eax
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ebx+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ebx+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ebx+38h], ax
cmp     byte ptr [ecx+0Fh], 3Ch ; '<'
jge     loc_4D5766
mov     eax, ecx
call    sub_4D58A6
jmp     loc_4D5766
sub_4D576F endp




sub_4D58A6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, [eax+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
lea     edx, [eax+40h]
push    80h
push    0
push    8000020h
lea     eax, [esi+0CCh]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
lea     eax, [esi+14h]
mov     ecx, 0A000h
xor     ebx, ebx
call    sub_4E01FC
mov     dword ptr [esi+0CCh], 0
mov     dword ptr [esi+0D0h], 0
mov     dword ptr [esi+0D4h], 0
mov     dword ptr [esi+0D8h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D58A6 endp




sub_4D5911 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 10h
mov     ebx, edx
lea     edi, [eax+0BCh]
lea     esi, [eax+14h]
movsd
movsd
lea     ecx, [eax+8Ch]  ; int
add     eax, 54h ; 'T'
mov     edx, ecx
call    sub_4EF638
movsx   eax, bx
mov     [esp+20h+var_20], eax
mov     [esp+20h+var_1C], eax
mov     [esp+20h+var_18], eax
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 10h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4D5911 endp




sub_4D5954 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_4D596A
cmp     al, 1
jz      short loc_4D59D1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D596A:
or      byte ptr [esi], 6
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0
mov     dword ptr [esi+64h], 0
mov     word ptr [esi+54h], 0
mov     word ptr [esi+58h], 0
mov     dword ptr [esi+64h], 0
mov     dword ptr [esi+70h], 0
mov     dword ptr [esi+74h], 0
mov     dword ptr [esi+0C4h], offset unk_808080
mov     edx, 200h
mov     eax, esi
call    sub_4D5911
mov     byte ptr [esi+2], 4
mov     byte ptr [esi+3], 8
lea     edx, [esi+3]
mov     eax, esi
call    sub_4DD0F8
mov     byte ptr [esi+2], 29h ; ')'
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D59D1:
cmp     byte ptr [esi+0Dh], 0
jnz     loc_4D5A4F
mov     bx, [esi+56h]
cmp     bx, 800h
jnz     short loc_4D5A06
mov     eax, [esi+9]
sar     eax, 18h
mov     edx, ds:(funcs_4D55E7+6)[eax*4]
sar     edx, 10h
mov     eax, [esi+16h]
sar     eax, 10h
cmp     eax, edx
jl      short loc_4D5A27

loc_4D5A00:
mov     byte ptr [esi+0Dh], 8
jmp     short loc_4D5A2D

loc_4D5A06:
cmp     bx, 400h
jnz     short loc_4D5A27
mov     eax, [esi+9]
sar     eax, 18h
mov     edx, ds:(funcs_4D55E7+6)[eax*4]
sar     edx, 10h
mov     eax, [esi+12h]
sar     eax, 10h
cmp     eax, edx
jle     short loc_4D5A00

loc_4D5A27:
cmp     byte ptr [esi+0Dh], 8
jnz     short loc_4D5A64

loc_4D5A2D:
mov     edx, [esi+9]
sar     edx, 18h
cmp     ds:word_5397FA[edx*4], 0
jnz     short loc_4D5A4A
mov     eax, esi
call    sub_4DE371
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D5A4A:
inc     byte ptr [esi+0Ch]
jmp     short loc_4D5A64

loc_4D5A4F:
mov     edx, [esi+9]
sar     edx, 18h
mov     ax, word ptr ds:(funcs_4D55E7+6)[edx*4]
add     [esi+56h], ax
dec     byte ptr [esi+0Dh]

loc_4D5A64:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     edx, 200h
mov     eax, esi
call    sub_4D5911
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D5954 endp




sub_4D5A9D proc near
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
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D5AB7[edx*4]
pop     edi
pop     esi
pop     edx
retn
sub_4D5A9D endp




sub_4D5AC2 proc near
push    ebx
push    edx
lea     edx, [eax+0DCh]
or      byte ptr [eax], 2
mov     word ptr [eax+54h], 0
mov     word ptr [eax+56h], 0
mov     word ptr [eax+58h], 0
mov     dword ptr [eax+44h], 0
mov     dword ptr [eax+48h], 0
mov     dword ptr [eax+64h], 0
mov     dword ptr [eax+70h], 0
mov     dword ptr [eax+74h], 0
mov     dword ptr [eax+88h], 3DC8000Bh
mov     byte ptr [eax+96h], 0A0h
mov     byte ptr [eax+97h], 0C0h
mov     dword ptr [eax+8Ch], 2C808080h
mov     word ptr [eax+98h], 18h
inc     byte ptr [eax+8]
cmp     byte ptr [eax+3], 0
jz      short loc_4D5B3C
mov     byte ptr [eax+9], 0
jmp     short loc_4D5B40

loc_4D5B3C:
mov     byte ptr [eax+9], 1

loc_4D5B40:
mov     word ptr [eax+44h], 0FFD8h
mov     word ptr [eax+46h], 0FFB0h
mov     word ptr [eax+48h], 0FFD8h
mov     word ptr [eax+4Eh], 0Ch
mov     bx, [eax+14h]
mov     [eax+90h], bx
mov     bx, [eax+16h]
mov     [eax+92h], bx
mov     bx, [eax+18h]
mov     [eax+94h], bx
mov     word ptr [eax+6Eh], 1
mov     dword ptr [eax+78h], 0
mov     dword ptr [edx+8], 0
pop     edx
pop     ebx
retn
sub_4D5AC2 endp




sub_4D5B90 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+0DCh]
cmp     dword ptr [ebp+8], 0
jnz     loc_4D5C64
cmp     byte ptr [eax+9], 0
jnz     short loc_4D5C02
mov     ax, [eax+44h]
add     [ecx+14h], ax
mov     ax, [ecx+46h]
add     [ecx+16h], ax
mov     ax, [ecx+48h]
add     [ecx+18h], ax
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
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
cmp     word ptr [ecx+16h], 0
jl      short loc_4D5C02
mov     word ptr [ecx+16h], 0FFF0h
inc     byte ptr [ecx+9]

loc_4D5C02:
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
mov     edi, ebp
lea     esi, [ecx+14h]
movsd
movsd
push    80h
push    0
push    4080000h
sub     word ptr [ebp+2], 20h ; ' '
lea     eax, [ebp+8]
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
mov     ecx, 0A000h
xor     ebx, ebx
mov     edx, 20h ; ' '
mov     eax, ebp
call    sub_4E01FC
mov     dword ptr [ebp+8], 0
jmp     loc_4D5D14

loc_4D5C64:
cmp     byte ptr [eax+0Ch], 1
jnz     short loc_4D5C71
mov     eax, 52Fh
jmp     short loc_4D5C8A

loc_4D5C71:
mov     dl, [ecx+0Ch]
cmp     dl, 2
jnz     short loc_4D5C80
mov     eax, 52Eh
jmp     short loc_4D5C8A

loc_4D5C80:
cmp     dl, 3
jnz     short loc_4D5C8F
mov     eax, 530h

loc_4D5C8A:
call    sub_47E8B8

loc_4D5C8F:
mov     al, [ecx+0Ah]
test    al, al
jbe     short loc_4D5C9F
cmp     al, 1
jz      short loc_4D5CFD
jmp     loc_4D5D14

loc_4D5C9F:
mov     eax, 609h
call    sub_47E888
test    eax, eax
jnz     short loc_4D5CC1
mov     eax, 609h
call    sub_47E8B8
mov     byte ptr [ebp+10h], 0Bh

loc_4D5CBB:
mov     byte ptr [ecx+0Ah], 1
jmp     short loc_4D5D14

loc_4D5CC1:
mov     eax, 60Ah
call    sub_47E888
test    eax, eax
jnz     short loc_4D5CDF
mov     eax, 60Ah
call    sub_47E8B8
mov     byte ptr [ebp+10h], 0Ch
jmp     short loc_4D5CBB

loc_4D5CDF:
mov     eax, 60Bh
call    sub_47E888
test    eax, eax
jnz     short loc_4D5D14
mov     eax, 60Bh
call    sub_47E8B8
mov     byte ptr [ebp+10h], 0Dh
jmp     short loc_4D5CBB

loc_4D5CFD:
call    sub_4A0E35
xor     edx, edx
mov     dl, [ebp+10h]
mov     eax, 4
call    sub_4A0E24
inc     byte ptr [ecx+8]

loc_4D5D14:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D5B90 endp



; Attributes: thunk

sub_4D5D1B proc near
jmp     sub_4DE371
sub_4D5D1B endp




sub_4D5D20 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D5D2D[edx*4]
mov     dword ptr [ebp+0CCh], 0
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    0
push    4000000h
lea     eax, [ebp+0CCh]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [ebp+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 20h ; ' '
call    sub_4E01FC
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 14h
mov     eax, ebp
call    sub_4ED88B
pop     ebp
jmp     loc_4D5E77
sub_4D5D20 endp




sub_4D5D8F proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ecx+54h], 400h
movsx   ax, byte ptr [ecx+0Fh]
shl     eax, 4
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
lea     ebx, [ecx+8Ch]
mov     eax, ebx
call    sub_4EF184
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_1C], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_24], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     word ptr [ecx+64h], 200h
mov     word ptr [ecx+66h], 80h
mov     dword ptr [ecx+0D8h], 0
mov     eax, [ecx+0D8h]
mov     [ecx+0D4h], eax
mov     [ecx+0D0h], eax
mov     [ecx+0CCh], eax
mov     dword ptr [ecx+0C4h], offset unk_808080
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ecx+78h], offset unk_539814
mov     eax, ecx
call    sub_42DE56
mov     byte ptr [ecx+74h], 0
inc     byte ptr [ecx+8]

loc_4D5E74:
add     esp, 10h

loc_4D5E77:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D5D8F endp




sub_4D5E7D proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
call    sub_4D6068
mov     ah, [ecx+0Ah]
test    ah, ah
jz      short loc_4D5ECF
mov     bx, [ecx+54h]
add     bx, [ecx+64h]
and     bh, 0Fh
mov     [ecx+54h], bx
mov     bx, [ecx+56h]
add     bx, [ecx+66h]
and     bh, 0Fh
mov     [ecx+56h], bx
mov     word ptr [ecx+58h], 0
mov     byte ptr [ecx+74h], 1
jmp     short loc_4D5ED2

loc_4D5ECF:
mov     [ecx+74h], ah

loc_4D5ED2:
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_1C], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_24], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, ecx
call    sub_4D5F90
test    byte ptr [ecx+0CFh], 20h
jz      short loc_4D5F80
call    rand_
mov     edx, eax
xor     dh, ah
and     dl, 0Fh
add     edx, 20h ; ' '
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 0Fh
add     ebx, 28h ; '('
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF008
neg     eax
movsx   edx, dx
imul    eax, edx
sar     eax, 4
mov     [ecx+44h], ax
mov     eax, ebx
neg     eax
shl     eax, 8
mov     [ecx+46h], ax
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF003
neg     eax
imul    edx, eax
sar     edx, 4
mov     [ecx+48h], dx
mov     word ptr [ecx+4Eh], 300h
mov     byte ptr [ecx+0Ah], 1
lea     edx, [ecx+14h]
mov     eax, 138h
call    sub_4D8BC3

loc_4D5F80:
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
jmp     loc_4D5E74
sub_4D5E7D endp




sub_4D5F90 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
xor     ebx, ebx
call    sub_42DE56
mov     esi, eax
test    eax, eax
jz      loc_4D6061
test    ah, 10h
jz      loc_4D604A
cmp     word ptr [ecx+46h], 0
jge     short loc_4D5FC1
mov     eax, [ecx+44h]
sar     eax, 10h
neg     eax
jmp     short loc_4D5FC7

loc_4D5FC1:
mov     eax, [ecx+44h]
sar     eax, 10h

loc_4D5FC7:
cmp     eax, 0A00h
jg      short loc_4D600B
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     byte ptr [ecx+0Ah], 0
mov     word ptr [ecx+54h], 400h
mov     ebx, 1
lea     edx, [ecx+14h]
mov     eax, 13Ah
jmp     short loc_4D6052

loc_4D600B:
mov     edx, [ecx+44h]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 5
test    eax, eax
jge     short loc_4D6021
neg     eax

loc_4D6021:
sar     eax, 8
mov     [ecx+46h], ax
mov     eax, [ecx+42h]
sar     eax, 10h
sar     eax, 1
mov     [ecx+44h], ax
mov     eax, [ecx+46h]
sar     eax, 10h
sar     eax, 1
mov     [ecx+48h], ax
lea     edx, [ecx+14h]
mov     eax, 139h
jmp     short loc_4D6052

loc_4D604A:
lea     edx, [ecx+14h]
mov     eax, 13Bh

loc_4D6052:
call    sub_4D8BC3
lea     eax, [ecx+44h]
mov     edx, esi
call    sub_42D90F

loc_4D6061:
mov     eax, ebx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D5F90 endp




sub_4D6068 proc near
push    edx
mov     dx, [eax+4Ch]
add     [eax+44h], dx
mov     dx, [eax+4Eh]
add     [eax+46h], dx
mov     dx, [eax+50h]
add     [eax+48h], dx
mov     edx, [eax+42h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4D6097
mov     word ptr [eax+44h], 0A000h
jmp     short loc_4D60A5

loc_4D6097:
cmp     word ptr [eax+44h], 6000h
jle     short loc_4D60A5
mov     word ptr [eax+44h], 6000h

loc_4D60A5:
mov     edx, [eax+44h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4D60BB
mov     word ptr [eax+46h], 0A000h
jmp     short loc_4D60C9

loc_4D60BB:
cmp     word ptr [eax+46h], 6000h
jle     short loc_4D60C9
mov     word ptr [eax+46h], 6000h

loc_4D60C9:
mov     edx, [eax+46h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4D60DF
mov     word ptr [eax+48h], 0A000h
jmp     short loc_4D60ED

loc_4D60DF:
cmp     word ptr [eax+48h], 6000h
jle     short loc_4D60ED
mov     word ptr [eax+48h], 6000h

loc_4D60ED:
mov     edx, [eax+42h]
sar     edx, 10h
shl     edx, 8
add     [eax+1Ch], edx
mov     edx, [eax+44h]
sar     edx, 10h
shl     edx, 8
add     [eax+20h], edx
mov     edx, [eax+46h]
sar     edx, 10h
shl     edx, 8
add     [eax+24h], edx
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
pop     edx
retn
sub_4D6068 endp




sub_4D611E proc near
push    edx
push    esi
push    edi
lea     edi, [eax+34h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+2Ch]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [eax+5Ch]
lea     esi, [eax+54h]
movsd
movsd
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D6140[edx*4]
pop     edi
pop     esi
pop     edx
retn
sub_4D611E endp




sub_4D614B proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax        ; int
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     ebx, [ecx+88h]
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     word ptr [ecx+64h], 40h ; '@'
mov     dword ptr [ecx+78h], 0
lea     edi, [ebx+34h]
lea     esi, [ecx+14h]
movsd
movsd
lea     esi, [ebx+4]
lea     eax, [ecx+54h]
mov     edx, esi
call    sub_4EF5F7
mov     edx, 200h
mov     [esp+24h+var_24], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     dword ptr [ebx+3Ch], offset unk_808080
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
add     esp, 10h

loc_4D61DF:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D614B endp




sub_4D61E5 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= word ptr -20h
var_1E= dword ptr -1Eh
var_C= byte ptr -0Ch
var_A= dword ptr -0Ah

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebp, eax
lea     ecx, [eax+88h]
call    sub_4D62B9
lea     edi, [ecx+34h]
lea     esi, [ebp+14h]
movsd
movsd
add     ecx, 4          ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 200h
mov     [esp+30h+var_30], edx
mov     [esp+30h+var_2C], edx
mov     [esp+30h+var_28], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
mov     ax, [ebp+56h]
lea     edi, [esp+30h+var_20]
lea     esi, [ebp+14h]
movsd
movsd
movsx   edx, ax
sub     word ptr [esp+30h+var_1E], 50h ; 'P'
mov     eax, edx
call    sub_4EF008
mov     ecx, [esp+0Eh]
sar     ecx, 10h
mov     [esp+30h+var_20], cx
mov     eax, edx
call    sub_4EF003
mov     edx, [esp+1Ch+var_A]
sar     edx, 10h
mov     word ptr [esp+1Ch+var_A+2], dx
push    80h
push    0
push    8880000h
lea     eax, [ebp+0CCh]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 80h
lea     eax, [esp+30h+var_C]
call    sub_4E01FC
mov     dword ptr [ebp+0CCh], 0
add     esp, 18h
pop     ebp
jmp     loc_4D61DF
sub_4D61E5 endp




sub_4D62B9 proc near
push    ebx
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Ch], 0
jnz     short loc_4D6310
call    sub_4DE13B
test    eax, eax
jz      short loc_4D6313
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 14h
mov     byte ptr [eax+0Fh], 8
mov     bx, [edx+14h]
mov     [eax+1Ch], bx
mov     bx, [edx+16h]
sub     ebx, 50h ; 'P'
mov     [eax+1Eh], bx
mov     bx, [edx+18h]
sub     ebx, 28h ; '('
mov     [eax+20h], bx
mov     byte ptr [eax+9], 4
mov     byte ptr [edx+0Ch], 8
pop     edx
pop     ebx
retn

loc_4D6310:
dec     byte ptr [edx+0Ch]

loc_4D6313:
pop     edx
pop     ebx
retn
sub_4D62B9 endp




sub_4D6316 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4D631F[ecx*4]
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4D6316 endp




sub_4D6330 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_539830
test    byte ptr [ecx+3], 40h
jz      short loc_4D636C
mov     ax, [ecx+66h]
jmp     short loc_4D637C

loc_4D636C:
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
call    sub_42A85C

loc_4D637C:
mov     [esp+2Ch+var_1C], ax
mov     ax, [ecx+64h]
and     ah, 0Fh
mov     [esp+2Ch+var_1A], ax
xor     edx, edx
mov     [esp+2Ch+var_18], dx
test    byte ptr [ecx+3], 40h
jz      short loc_4D63BB

loc_4D639A:
call    rand_
xor     ah, ah
and     al, 7
sub     eax, 4
add     eax, eax
add     [esp+2Ch+var_1C], ax
call    rand_
xor     ah, ah
and     al, 7
sub     eax, 4
jmp     short loc_4D640C

loc_4D63BB:
mov     al, ds:byte_5F896C
cmp     al, 1
jb      short loc_4D63C8
jbe     short loc_4D639A
jmp     short loc_4D63ED

loc_4D63C8:
test    al, al
jnz     short loc_4D63ED
call    rand_
xor     ah, ah
and     al, 3
sub     eax, 2
add     eax, eax
add     [esp+2Ch+var_1C], ax
call    rand_
xor     ah, ah
and     al, 3
sub     eax, 2
jmp     short loc_4D640C

loc_4D63ED:
call    rand_
xor     ah, ah
and     al, 0Fh
sub     eax, 8
add     eax, eax
add     [esp+2Ch+var_1C], ax
call    rand_
xor     ah, ah
and     al, 0Fh
sub     eax, 8

loc_4D640C:
add     eax, eax
add     [esp+2Ch+var_1A], ax
lea     esi, [ecx+8Ch]
mov     edx, esi
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+2Ch+var_28], edx
mov     [esp+2Ch+var_24], edx
mov     [esp+2Ch+var_2C], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
xor     ebx, ebx
mov     [esp+2Ch+var_1C], bx
mov     [esp+2Ch+var_1A], bx
mov     [esp+2Ch+var_18], 0F000h
mov     ebx, esp
lea     edx, [esp+2Ch+var_1C]
mov     eax, esi
call    sub_4EF1FB
mov     edx, [esp+2Ch+var_2C]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 4
test    byte ptr [ecx+3], 40h
jz      short loc_4D64AB
mov     [ecx+44h], ax
mov     edx, [esp+2Ch+var_28]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [ecx+46h], ax
mov     edx, [esp+2Ch+var_24]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
jmp     short loc_4D651E

loc_4D64AB:
cmp     ds:byte_5F896B, 3
jl      short loc_4D64ED
mov     eax, [esp+2Ch+var_2C]
shl     eax, 3
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ecx+44h], ax
mov     eax, [esp+2Ch+var_28]
shl     eax, 3
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ecx+46h], ax
mov     eax, [esp+2Ch+var_24]
shl     eax, 3
mov     edx, eax
shl     eax, 4
sub     eax, edx
jmp     short loc_4D651E

loc_4D64ED:
mov     [ecx+44h], ax
mov     edx, [esp+2Ch+var_28]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [ecx+46h], ax
mov     edx, [esp+2Ch+var_24]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2

loc_4D651E:
sar     eax, 4
mov     [ecx+48h], ax
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     word ptr [ecx+7Ch], 0
lea     edx, [ecx+88h]
test    byte ptr [ecx+3], 40h
jz      short loc_4D6582
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 6
mov     esi, eax
shl     eax, 3
sub     eax, esi
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 6
mov     esi, eax
shl     eax, 3
sub     eax, esi
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 6
mov     esi, eax
shl     eax, 3
sub     eax, esi
add     [ecx+24h], eax

loc_4D6582:
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [edx+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [edx+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [edx+38h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [edx+3Ch], 2808080h
mov     byte ptr [ecx+2], 82h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 2Eh ; '.'
mov     edx, 2
mov     eax, offset byte_5F8364
call    sub_4EE62E
mov     [ecx+0Bh], al
inc     byte ptr [ecx+8]
xor     edx, edx
mov     eax, ecx
call    sub_4D67C5
mov     eax, ecx
call    sub_4D66EE
lea     edx, [ecx+14h]
mov     eax, 120h
call    sub_4D8BC3
add     esp, 18h

loc_4D660B:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D6330 endp




sub_4D6611 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     edx, edx
call    sub_4EE66E
test    eax, eax
jnz     short loc_4D6629
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4D6650

loc_4D6629:
test    byte ptr [ecx+3], 40h
jz      short loc_4D6638
mov     eax, ecx
call    sub_4DE371
jmp     short loc_4D663F

loc_4D6638:
mov     eax, ecx
call    sub_4DE3AC

loc_4D663F:
mov     edx, 1
mov     eax, ecx
call    sub_4D67C5
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4D6650:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     eax, [ecx+88h]
mov     dl, [ecx+0Bh]
mov     dh, dl
dec     dh
mov     [ecx+0Bh], dh
test    dl, dl
ja      short loc_4D6694
test    byte ptr [ecx+3], 40h
jz      short loc_4D6688
mov     eax, ecx
call    sub_4DE371
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4D6688:
mov     eax, ecx
call    sub_4DE3AC
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4D6694:
mov     edx, [ecx+42h]
sar     edx, 10h
shl     edx, 8
add     [ecx+1Ch], edx
mov     edx, [ecx+44h]
sar     edx, 10h
shl     edx, 8
add     [ecx+20h], edx
mov     edx, [ecx+46h]
sar     edx, 10h
shl     edx, 8
add     [ecx+24h], edx
mov     edx, [ecx+1Ch]
sar     edx, 10h
mov     [ecx+14h], dx
mov     [eax+34h], dx
mov     edx, [ecx+20h]
sar     edx, 10h
mov     [ecx+16h], dx
mov     [eax+36h], dx
mov     edx, [ecx+24h]
sar     edx, 10h
mov     [ecx+18h], dx
mov     [eax+38h], dx
mov     eax, ecx
call    sub_4D66EE
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D6611 endp




sub_4D66EE proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
mov     edx, 2
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     edx, eax
mov     ax, [ecx+14h]
add     eax, eax
mov     bx, [ecx+2Ch]
sub     eax, ebx
mov     [esp+1Ch+var_1C], ax
mov     ax, [ecx+16h]
add     eax, eax
mov     si, [ecx+2Eh]
sub     eax, esi
mov     [esp+1Ch+var_1A], ax
mov     ax, [ecx+18h]
add     eax, eax
mov     di, [ecx+30h]
sub     eax, edi
mov     [esp+1Ch+var_18], ax
cmp     ds:byte_5F84D5, 0
jnz     short loc_4D6749
mov     edx, 1000h

loc_4D6749:
lea     ebx, [ecx+14h]
lea     eax, [ecx+0D4h]
test    byte ptr [ecx+3], 40h
jz      short loc_4D6772
push    80h
push    0
push    8000005h
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
push    0A000h
jmp     short loc_4D67A8

loc_4D6772:
or      edx, 8000000h
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4D6794
push    80h
push    0
push    edx
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
push    6000h
jmp     short loc_4D67A8

loc_4D6794:
push    80h
push    0
push    edx
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
push    4000h

loc_4D67A8:
push    200h
mov     ecx, 20h ; ' '
mov     edx, ecx
lea     eax, [esp+38h+var_1C]
call    sub_4E02CB
add     esp, 8
jmp     loc_4D660B
sub_4D66EE endp




sub_4D67C5 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
call    sub_4DE13B
test    eax, eax
jz      loc_4D686E
lea     edx, [eax+28h]
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 85h
mov     si, [ecx+14h]
mov     [eax+1Ch], si
mov     si, [ecx+16h]
mov     [eax+1Eh], si
mov     si, [ecx+18h]
mov     [eax+20h], si
mov     si, [ecx+44h]
mov     [edx+8], si
mov     si, [ecx+46h]
mov     [edx+0Ah], si
mov     si, [ecx+48h]
mov     [edx+0Ch], si
mov     dl, [ecx+3]
cmp     dl, 40h ; '@'
jnz     short loc_4D6835
mov     edx, [ecx+62h]
sar     edx, 10h
add     edx, 400h

loc_4D6827:
and     edx, 0FFFh
mov     [eax+40h], edx

loc_4D6830:
add     bl, 10h
jmp     short loc_4D686B

loc_4D6835:
cmp     dl, 41h ; 'A'
jnz     short loc_4D6848
mov     edx, [ecx+62h]
sar     edx, 10h
sub     edx, 400h
jmp     short loc_4D6827

loc_4D6848:
cmp     dl, 42h ; 'B'
jnz     short loc_4D6856
mov     dword ptr [eax+40h], 0FFFFh
jmp     short loc_4D6830

loc_4D6856:
mov     edx, [ecx+62h]
sar     edx, 10h
add     edx, 400h
and     edx, 0FFFh
mov     [eax+40h], edx

loc_4D686B:
mov     [eax+3], bl

loc_4D686E:
pop     esi
pop     ecx
pop     ebx
retn
sub_4D67C5 endp




sub_4D6872 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D6878[edx*4]
pop     edx
retn
sub_4D6872 endp




sub_4D6881 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 46h
mov     [ecx], ah
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0Fh], 0
mov     eax, ecx
call    sub_4D6946
mov     dword ptr [ecx+0C4h], 2202020h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     eax, eax

loc_4D68BC:
mov     edx, eax
mov     dword ptr [ecx+edx*4+0DCh], 0
inc     eax
cmp     eax, 10h
jl      short loc_4D68BC
mov     dword ptr [ecx+78h], offset unk_539844
mov     eax, ecx
call    sub_4D6B42
pop     edx
pop     ecx
retn
sub_4D6881 endp




sub_4D68E0 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Fh], 40h ; '@'
jge     short loc_4D68F0
add     byte ptr [edx+0Fh], 8
jmp     short loc_4D68F4

loc_4D68F0:
mov     byte ptr [edx+0Fh], 40h ; '@'

loc_4D68F4:
cmp     byte ptr [edx+0Eh], 0
jz      short loc_4D6904
mov     eax, edx
call    sub_4DE371
pop     edx
pop     ecx
retn

loc_4D6904:
mov     eax, edx
call    sub_4D6D88
mov     ecx, eax
test    eax, eax
jz      short loc_4D6914
mov     [edx+0Fh], cl

loc_4D6914:
mov     eax, edx
call    sub_4D6E9C
test    eax, eax
jz      short loc_4D692B
mov     dword ptr [edx+0C4h], 2404040h
jmp     short loc_4D6935

loc_4D692B:
mov     dword ptr [edx+0C4h], 2202020h

loc_4D6935:
mov     eax, edx
call    sub_4D6946
mov     eax, edx
call    sub_4D6B42
pop     edx
pop     ecx
retn
sub_4D68E0 endp




sub_4D6946 proc near

var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_2C= dword ptr -2Ch
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
sub     esp, 54h
mov     ebp, eax
add     eax, 88h
mov     [esp+6Ch+var_1C], eax
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     ecx, 0Ch
mov     edi, esp
lea     esi, [eax+8Ch]
rep movsd
lea     edi, [esp+6Ch+var_2C]
lea     esi, [eax+14h]
movsd
movsd
lea     ecx, [ebp+8Ch]
mov     eax, ecx
call    sub_4EF184
mov     [esp+6Ch+var_24], 400h
xor     ebx, ebx
mov     [esp+6Ch+var_22], bx
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 0Fh
shl     eax, 8
mov     [esp+6Ch+var_20], ax
mov     edx, ecx
lea     eax, [esp+6Ch+var_24]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+6Ch+var_34], edx
mov     [esp+6Ch+var_38], edx
mov     [esp+6Ch+var_3C], edx
lea     edx, [esp+6Ch+var_3C]
mov     eax, ecx
call    sub_4EF689
mov     ebx, ecx
mov     edx, ecx
mov     eax, esp
call    sub_4EF388
xor     esi, esi
mov     [esp+6Ch+var_24], si
mov     [esp+6Ch+var_22], si
mov     [esp+6Ch+var_20], 0F000h
lea     ebx, [esp+6Ch+var_3C]
lea     edx, [esp+6Ch+var_24]
mov     eax, ecx
call    sub_4EF1FB
mov     eax, [esp+6Ch+var_3C]
shl     eax, 4
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ebp+44h], ax
mov     eax, [esp+6Ch+var_38]
shl     eax, 4
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ebp+46h], ax
mov     eax, [esp+6Ch+var_34]
shl     eax, 4
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ebp+48h], ax
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 8
mov     eax, [esp+3Eh]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [ebp+1Ch], eax
mov     edx, [ebp+44h]
sar     edx, 10h
shl     edx, 8
mov     eax, [esp+6Ch+var_2C]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [ebp+20h], eax
mov     edx, [ebp+46h]
sar     edx, 10h
shl     edx, 8
mov     eax, [esp+6Ch+var_2C+2]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [ebp+24h], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
mov     [ebp+14h], ax
mov     edx, [esp+6Ch+var_1C]
mov     [edx+34h], ax
mov     eax, [ebp+20h]
sar     eax, 10h
mov     [ebp+16h], ax
mov     [edx+36h], ax
mov     eax, [ebp+24h]
sar     eax, 10h
mov     [ebp+18h], ax
mov     [edx+38h], ax
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
mov     edx, [esp+6Ch+var_3C]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ebp+44h], ax
mov     edx, [esp+6Ch+var_38]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ebp+46h], ax
mov     edx, [esp+6Ch+var_34]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ebp+48h], ax
mov     edi, 1400h
mov     [esp+6Ch+var_38], edi
mov     [esp+6Ch+var_3C], edi
mov     eax, [ebp+0Ch]
sar     eax, 18h
shl     eax, 6
mov     [esp+6Ch+var_34], eax
lea     edx, [esp+6Ch+var_3C]
mov     eax, ecx
call    sub_4EF689
add     esp, 54h

loc_4D6B3B:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D6946 endp




sub_4D6B42 proc near

var_48= word ptr -48h
var_46= word ptr -46h
var_44= word ptr -44h
var_40= word ptr -40h
var_3E= word ptr -3Eh
var_3C= word ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 30h
mov     esi, eax
mov     eax, [eax+42h]
sar     eax, 10h
shl     eax, 8
mov     [esp+48h+var_38], eax
mov     eax, [esi+44h]
sar     eax, 10h
shl     eax, 8
mov     [esp+48h+var_20], eax
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 8
mov     [esp+48h+var_30], eax
xor     ah, ah
mov     [esp+48h+var_1C], ah

loc_4D6B7A:
mov     ecx, [esi+0Ch]
sar     ecx, 18h
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     edx, eax
xor     eax, eax
mov     al, [esp+48h+var_1C]
lea     ebx, [esi+0DCh]
mov     [esp+48h+var_28], ebx
mov     bl, al
shl     bl, 3
mov     edi, eax
shl     edi, 3
mov     [esp+48h+var_2C], edi
mov     edi, eax
shl     edi, 2
mov     [esp+48h+var_34], edi
mov     edi, [esp+48h+var_2C]
add     edi, esi
mov     ebp, [esp+48h+var_28]
add     ebp, [esp+48h+var_34]
mov     [esp+48h+var_24], ebp
cmp     eax, edx
jge     loc_4D6CA0
mov     cl, bl
add     cl, 6
xor     eax, eax
mov     al, cl
mov     edx, [esp+48h+var_38]
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+48h+var_48], dx
mov     edx, [esp+48h+var_20]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+48h+var_46], dx
imul    eax, [esp+48h+var_30]
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+48h+var_44], ax
mov     cl, bl
inc     cl
and     ecx, 0FFh
mov     eax, [esp+48h+var_38]
imul    eax, ecx
add     eax, [esi+1Ch]
sar     eax, 10h
mov     [esp+48h+var_40], ax
mov     eax, [esp+48h+var_20]
imul    eax, ecx
add     eax, [esi+20h]
sar     eax, 10h
mov     [esp+48h+var_3E], ax
imul    ecx, [esp+48h+var_30]
mov     eax, [esi+24h]
add     eax, ecx
sar     eax, 10h
mov     [esp+48h+var_3C], ax
push    80h
push    0
push    9000030h
mov     edx, [esp+54h+var_24]
push    edx
xor     eax, eax
mov     al, [esi+1]
push    eax
push    0A000h
push    200h
mov     ecx, 48h ; 'H'
lea     ebx, [esp+64h+var_40]
mov     edx, ecx
lea     eax, [esp+64h+var_48]
call    sub_4E02CB
mov     dword ptr [edi+0DCh], 0
mov     dword ptr [edi+0E0h], 0
inc     [esp+48h+var_1C]
jmp     loc_4D6B7A

loc_4D6CA0:
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
mov     ecx, 8
idiv    ecx
test    edx, edx
jz      loc_4D6D80
cmp     [esp+48h+var_1C], 8
jnb     loc_4D6D80
mov     eax, [esp+48h+var_2C]
add     eax, edx
and     eax, 0FFh
mov     edx, [esp+48h+var_38]
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+48h+var_48], dx
mov     edx, [esp+48h+var_20]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+48h+var_46], dx
imul    eax, [esp+48h+var_30]
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+48h+var_44], ax
xor     eax, eax
mov     al, bl
mov     edx, [esp+48h+var_38]
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+48h+var_40], dx
mov     edx, [esp+48h+var_20]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+48h+var_3E], dx
imul    eax, [esp+48h+var_30]
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+48h+var_3C], ax
push    80h
push    0
push    9000030h
mov     ebx, [esp+54h+var_24]
push    ebx
xor     eax, eax
mov     al, [esi+1]
push    eax
push    0A000h
push    200h
mov     ecx, 48h ; 'H'
lea     ebx, [esp+64h+var_40]
mov     edx, ecx
lea     eax, [esp+64h+var_48]
call    sub_4E02CB
mov     dword ptr [edi+0DCh], 0
mov     dword ptr [edi+0E0h], 0

loc_4D6D80:
add     esp, 30h
jmp     loc_4D6B3B
sub_4D6B42 endp




sub_4D6D88 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_24= dword ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     esi, eax
mov     eax, [eax+42h]
sar     eax, 10h
shl     eax, 8
mov     [esp+34h+var_24], eax
mov     ebp, [esi+44h]
sar     ebp, 10h
shl     ebp, 8
mov     edi, [esi+46h]
sar     edi, 10h
shl     edi, 8
xor     ah, ah
mov     [esp+34h+var_1C], ah

loc_4D6DB8:
mov     al, [esp+34h+var_1C]
cmp     al, [esi+0Fh]
jnb     loc_4D6E92
inc     al
mov     [esp+34h+var_20], al
xor     eax, eax
mov     al, [esp+34h+var_20]
mov     edx, [esp+34h+var_24]
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+34h+var_2C], dx
mov     edx, ebp
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+34h+var_2A], dx
imul    eax, edi
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+34h+var_28], ax
xor     eax, eax
mov     al, [esp+34h+var_1C]
mov     edx, [esp+34h+var_24]
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     word ptr [esp+34h+var_34], dx
mov     edx, ebp
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     word ptr [esp+34h+var_34+2], dx
imul    eax, edi
add     eax, [esi+24h]
sar     eax, 10h
mov     word ptr [esp+34h+var_30], ax
mov     ecx, 0FFFFh
mov     ebx, offset unk_539844
mov     edx, esp
lea     eax, [esp+34h+var_2C]
call    sub_42CE61
test    eax, eax
jz      short loc_4D6E85
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4D6E7C
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Eh
mov     byte ptr [eax+3], 1
mov     eax, [esp+34h+var_34]
mov     [edx+1Ch], ax
mov     eax, [esp+34h+var_34+2]
mov     [edx+1Eh], ax
mov     eax, [esp+34h+var_30]
mov     [edx+20h], ax

loc_4D6E7C:
xor     eax, eax
mov     al, [esp+34h+var_1C]
inc     eax
jmp     short loc_4D6E94

loc_4D6E85:
mov     al, [esp+34h+var_20]
mov     [esp+34h+var_1C], al
jmp     loc_4D6DB8

loc_4D6E92:
xor     eax, eax

loc_4D6E94:
add     esp, 1Ch
jmp     loc_4D6B3B
sub_4D6D88 endp




sub_4D6E9C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     bl, bl

loc_4D6EA3:
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
xor     edx, edx
mov     dl, bl
cmp     edx, eax
jge     short loc_4D6ED5
test    byte ptr [ecx+edx*8+0DFh], 0FFh
jz      short loc_4D6ED1
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4D6ED1:
inc     bl
jmp     short loc_4D6EA3

loc_4D6ED5:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4D6E9C endp




sub_4D6EDB proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]     ; int
call    ds:funcs_4D6EE1[edx*4]
pop     edx
retn
sub_4D6EDB endp




; int __fastcall sub_4D6EEA(int, int)
sub_4D6EEA proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; float
push    edi             ; int
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+88h]
cmp     byte ptr [eax+3], 2
jnb     loc_4D7036
or      byte ptr [ecx], 6
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_539858
mov     byte ptr [ecx+2], 30h ; '0'
mov     edx, offset unk_539876
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 32h ; '2'
mov     word ptr [ecx+6Eh], 0
mov     word ptr [ecx+44h], 0
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_539864[eax*2]
mov     [ecx+46h], ax
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_53986A[eax*2]
mov     [ecx+4Eh], ax
mov     word ptr [ecx+50h], 0
mov     edx, ebx
mov     ax, [ecx+14h]
mov     [ebx+34h], ax
mov     ax, [ecx+16h]
mov     [ebx+36h], ax
mov     ax, [ecx+18h]
mov     [ebx+38h], ax
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
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ebx+3Ch], 2808080h
inc     byte ptr [ecx+8]
call    rand_
and     al, 0Fh
mov     [ecx+9], al
lea     eax, [ebx+4]

loc_4D6FF1:
cmp     byte ptr [ecx+3], 0
call    sub_4EF1BC
lea     ebx, [edx+4]
xor     eax, eax
mov     al, [ecx+9]
shl     eax, 8
mov     edx, ebx
call    sub_4EF50D
mov     eax, [ecx+6Ch]
sar     eax, 10h
mov     [esp+24h+var_1C], eax
mov     [esp+24h+var_20], eax
mov     [esp+24h+var_24], eax
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, ecx
call    sub_4D734D

loc_4D702D:
add     esp, 10h

loc_4D7030:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D7036:
mov     edx, [ecx+42h]
sar     edx, 10h
mov     eax, ds:dword_539866
sar     eax, 10h
imul    eax, edx
sar     eax, 8
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 0
mov     edx, [ecx+46h]
sar     edx, 10h
mov     eax, ds:dword_539866
sar     eax, 10h
imul    eax, edx
sar     eax, 8
mov     [ecx+48h], ax
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_539858
mov     ax, [ecx+14h]
mov     [ebx+34h], ax
mov     ax, [ecx+16h]
mov     [ebx+36h], ax
mov     ax, [ecx+18h]
mov     [ebx+38h], ax
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
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     byte ptr [ecx+8], 3
jmp     loc_4D702D
sub_4D6EEA endp




sub_4D7104 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
cmp     byte ptr [eax+3], 0
jnz     short loc_4D712A
mov     eax, [ecx+14h]
sar     eax, 10h
cmp     eax, 0FFFFF82Fh
jge     short loc_4D717D
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Ah], 8
jmp     short loc_4D717D

loc_4D712A:
mov     eax, [ecx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jle     short loc_4D717D
lea     edx, [ecx+14h]
mov     eax, 1F9h
call    sub_4D8BC3
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Ah], 8
call    sub_4DE13B
test    eax, eax
jz      short loc_4D717D
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 1
mov     byte ptr [eax+3], 2
mov     dx, [ecx+14h]
mov     [eax+48h], dx
mov     dx, [ecx+16h]
mov     [eax+4Ah], dx
mov     dx, [ecx+18h]
mov     [eax+4Ch], dx

loc_4D717D:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     bl, [ecx+3]
test    bl, bl
jnz     short loc_4D71B9
xor     eax, eax
mov     al, bl
add     eax, eax
mov     ebx, ds:dword_53986E[eax]
sar     ebx, 10h
mov     edx, [ecx+44h]
sar     edx, 10h
cmp     edx, ebx
jge     short loc_4D71DD
jmp     short loc_4D71D2

loc_4D71B9:
xor     eax, eax
mov     al, bl
add     eax, eax
mov     edx, ds:dword_53986E[eax]
sar     edx, 10h
mov     ebx, [ecx+44h]
sar     ebx, 10h
cmp     ebx, edx
jle     short loc_4D71DD

loc_4D71D2:
mov     ax, word ptr ds:(dword_53986E+2)[eax]
mov     [ecx+46h], ax

loc_4D71DD:
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 0Ah
add     [ecx+20h], eax
mov     ax, [ecx+20h]
mov     [ecx+16h], ax
lea     edx, [ecx+88h]
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [edx+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [edx+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [edx+38h], ax
inc     byte ptr [ecx+6Fh]
cmp     word ptr [ecx+6Eh], 0
jge     short loc_4D7231
mov     word ptr [ecx+6Eh], 0

loc_4D7231:
cmp     byte ptr [ecx+3], 0
jz      short loc_4D7277
cmp     byte ptr ds:dword_77E7DC+3, 1
jle     short loc_4D7247
mov     eax, 900h
jmp     short loc_4D724C

loc_4D7247:
mov     eax, 800h

loc_4D724C:
mov     ebx, [ecx+6Ch]
sar     ebx, 10h
cmp     ebx, eax
ja      short loc_4D7277
add     word ptr [ecx+22h], 40h ; '@'
mov     eax, ds:dword_5F8376
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax

loc_4D7277:
inc     byte ptr [ecx+9]
cmp     word ptr [ecx+6Eh], 1000h
jle     short loc_4D7288
mov     word ptr [ecx+6Eh], 1000h

loc_4D7288:
lea     eax, [edx+4]
jmp     loc_4D6FF1
sub_4D7104 endp




; int __thiscall sub_4D7290(int)
sub_4D7290 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx             ; int
push    ecx             ; int
push    edx             ; float
push    esi             ; int
sub     esp, 10h
mov     ecx, eax
mov     ah, [eax+0Ah]
dec     ah
mov     [ecx+0Ah], ah
jnz     short loc_4D72AA
mov     eax, ecx
call    sub_4DE371

loc_4D72AA:
lea     ebx, [ecx+88h]
sub     word ptr [ecx+6Eh], 200h
inc     byte ptr [ecx+9]
mov     si, [ecx+6Eh]
cmp     si, 1000h
jle     short loc_4D72CC
mov     word ptr [ecx+6Eh], 1000h
jmp     short loc_4D72D7

loc_4D72CC:
test    si, si
jge     short loc_4D72D7
mov     word ptr [ecx+6Eh], 0

loc_4D72D7:
lea     eax, [ebx+4]
cmp     byte ptr [ecx+3], 0
call    sub_4EF1BC
lea     edx, [ebx+4]
xor     eax, eax
mov     al, [ecx+9]
shl     eax, 8
call    sub_4EF50D
mov     edx, 1000h
mov     [esp+20h+var_18], edx
mov     [esp+20h+var_20], edx
mov     eax, [ecx+6Ch]
sar     eax, 10h
mov     [esp+20h+var_1C], eax
cmp     byte ptr [ecx+3], 0
jnz     short loc_4D7315
sub     word ptr [ebx+36h], 80h

loc_4D7315:
lea     eax, [ebx+4]
mov     edx, esp
call    sub_4EF689
mov     eax, [ecx+6Ch]
sar     eax, 10h
shl     eax, 7
sar     eax, 0Ch
mov     ebx, eax
or      ebx, 2000000h
mov     edx, eax
shl     edx, 8
or      edx, ebx
shl     eax, 10h
or      edx, eax
mov     [ecx+0C4h], edx
add     esp, 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D7290 endp




sub_4D734D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
push    80h
push    0
push    4000040h
add     eax, 0D4h
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
lea     eax, [esi+14h]
mov     ecx, 0A000h
xor     ebx, ebx
mov     edx, 40h ; '@'
call    sub_4E01FC
mov     dword ptr [esi+0D4h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D734D endp




sub_4D738E proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4D73BE
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     bx, [edx+14h]
mov     [eax+48h], bx
mov     bx, [edx+16h]
mov     [eax+4Ah], bx
mov     dx, [edx+18h]
mov     [eax+4Ch], dx

loc_4D73BE:
pop     edx
pop     ebx
retn
sub_4D738E endp




sub_4D73C1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
add     eax, 14h
mov     ecx, 0FFFFh
xor     ebx, ebx
xor     edx, edx
call    sub_42C5B7
cmp     eax, 0FFFFFFEFh
jge     short loc_4D73EB
mov     eax, ebp
call    sub_4DE371
jmp     loc_4D7493

loc_4D73EB:
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
mov     eax, [ebp+42h]
sar     eax, 10h
shl     eax, 0Ch
add     [ebp+1Ch], eax
mov     eax, [ebp+44h]
sar     eax, 10h
shl     eax, 0Ch
add     [ebp+20h], eax
mov     eax, [ebp+46h]
sar     eax, 10h
shl     eax, 0Ch
add     [ebp+24h], eax
lea     eax, [ebp+88h]
mov     edx, [ebp+1Ch]
sar     edx, 10h
mov     [ebp+14h], dx
mov     [eax+34h], dx
mov     edx, [ebp+20h]
sar     edx, 10h
mov     [ebp+16h], dx
mov     [eax+36h], dx
mov     edx, [ebp+24h]
sar     edx, 10h
mov     [ebp+18h], dx
mov     [eax+38h], dx
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4D7493
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+0Dh], 0
cmp     byte ptr [ebp+3], 2
jnz     short loc_4D7473
mov     byte ptr [eax+0Eh], 0
jmp     short loc_4D7477

loc_4D7473:
mov     byte ptr [eax+0Eh], 1

loc_4D7477:
mov     byte ptr [edx+3], 2
mov     ax, [ebp+14h]
mov     [edx+48h], ax
mov     ax, [ebp+16h]
mov     [edx+4Ah], ax
mov     ax, [ebp+18h]
mov     [edx+4Ch], ax

loc_4D7493:
pop     ebp
jmp     loc_4D7030
sub_4D73C1 endp




sub_4D7499 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D749F[edx*4]
pop     edx
retn
sub_4D7499 endp




sub_4D74A8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+88h]
cmp     byte ptr [eax+3], 0FFh
jnz     short loc_4D74D2
or      byte ptr [ecx], 26h
mov     byte ptr [ecx+8], 7
mov     byte ptr [ecx+0Bh], 80h
mov     dword ptr [ebx+3Ch], 2808080h
jmp     loc_4D7CB3

loc_4D74D2:
mov     dl, [ecx+3]
cmp     dl, 0FEh
jnz     short loc_4D74EB
mov     byte ptr [ecx+8], 8
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 10h
jmp     loc_4D7CB3

loc_4D74EB:
cmp     dl, 0FDh
jnz     short loc_4D74F9
mov     byte ptr [ecx+8], 9
jmp     loc_4D7CB3

loc_4D74F9:
cmp     dl, 0FCh
jnz     short loc_4D750F
lea     eax, [ecx+2Ch]
call    sub_4E1E86
mov     byte ptr [ecx+8], 0Ah
jmp     loc_4D7CB3

loc_4D750F:
or      byte ptr [ecx], 6
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_53988C
lea     edi, [ecx+0DCh]
lea     esi, [ecx+44h]
movsd
movsd
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     esi, [ecx+0E4h]
lea     edi, [ecx+14h]
lea     esi, [esi+208h]
movsd
movsd
mov     ax, [ecx+14h]
mov     [ebx+34h], ax
mov     ax, [ecx+16h]
mov     [ebx+36h], ax
mov     ax, [ecx+18h]
mov     [ebx+38h], ax
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
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ebx+3Ch], 2808080h
inc     byte ptr [ecx+8]
mov     word ptr [ecx+0C2h], 0
inc     byte ptr [ecx+0Bh]
mov     eax, ecx
call    sub_4D7B31
lea     edx, [ecx+14h]
mov     eax, 1F4h
call    sub_4D8BC3
jmp     loc_4D7CB3
sub_4D74A8 endp




sub_4D75E4 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= byte ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 20h
mov     ecx, eax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax+0Ah]
inc     ah
mov     [ecx+0Ah], ah
cmp     ah, 1Eh
jnb     short loc_4D7615
add     word ptr [ecx+0C2h], 10h

loc_4D7615:
inc     byte ptr [ecx+0Bh]
mov     esi, [ecx+0E4h]
lea     edi, [ecx+14h]
lea     esi, [esi+208h]
movsd
movsd
lea     eax, [ecx+88h]
mov     dx, [ecx+14h]
mov     [eax+34h], dx
mov     dx, [ecx+16h]
mov     [eax+36h], dx
mov     dx, [ecx+18h]
mov     [eax+38h], dx
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
cmp     byte ptr [ecx+0Ch], 0
jz      loc_4D775D
lea     edx, [ecx+14h]
mov     eax, 1F5h
call    sub_4D8BC3
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+8], 5
mov     edx, [ecx+12h]
sar     edx, 10h
mov     eax, ds:dword_5F880A
sar     eax, 10h
sub     eax, edx
mov     [esp+34h+var_34], eax
mov     eax, [ecx+14h]
sar     eax, 10h
mov     edx, ds:dword_5F880A+2
sar     edx, 10h
sub     edx, eax
mov     [esp+34h+var_30], edx
mov     edx, [ecx+16h]
sar     edx, 10h
mov     eax, ds:dword_5F880E
sar     eax, 10h
sub     eax, edx
mov     [esp+34h+var_2C], eax
lea     edx, [ecx+44h]
mov     eax, esp
call    sub_4EF932
lea     edi, [ecx+0DCh]
lea     esi, [ecx+44h]
movsd
movsd
lea     edi, [esp+34h+var_24]
lea     esi, [ecx+0DCh]
movsd
movsd
lea     edi, [esp+34h+var_1C]
lea     esi, [esp+34h+var_24]
movsd
movsd
mov     ax, word ptr ds:dword_539898
mov     [ecx+6Eh], ax
cwde
mov     esi, [esp+16h]
sar     esi, 10h
mov     edx, esi
imul    edx, eax
sar     edx, 4
mov     [ecx+44h], dx
mov     ebx, [esp+34h+var_1C]
sar     ebx, 10h
mov     edx, ebx
imul    edx, eax
sar     edx, 4
mov     [ecx+46h], dx
mov     edx, [esp+34h+var_1C+2]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ecx+48h], ax
mov     eax, ds:dword_539898
sar     eax, 10h
imul    esi, eax
sar     esi, 4
mov     [ecx+4Ch], si
imul    ebx, eax
sar     ebx, 4
mov     [ecx+4Eh], bx
imul    eax, edx
sar     eax, 4
mov     [ecx+50h], ax

loc_4D775D:
mov     eax, ecx
call    sub_4D7B31
add     esp, 20h
jmp     loc_4D7CB3
sub_4D75E4 endp




sub_4D776C proc near
inc     byte ptr [eax+8]
retn
sub_4D776C endp




sub_4D7770 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= dword ptr -28h
var_20= byte ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ebp, eax
xor     edx, edx
call    sub_4EE66E
test    eax, eax
jz      short loc_4D77A5
cmp     eax, 7FFFh
jnz     short loc_4D7796
test    byte ptr [ebp+0D7h], 0FFh
jz      short loc_4D77A5

loc_4D7796:
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0

loc_4D77A5:
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
test    byte ptr [ebp+0Ah], 7
jnz     short loc_4D77DC
call    sub_4DE043
test    eax, eax
jz      short loc_4D77DC
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FEh
lea     edi, [eax+0BCh]
lea     esi, [ebp+14h]
movsd
movsd

loc_4D77DC:
mov     bh, [ebp+0Ah]
inc     bh
mov     [ebp+0Ah], bh
cmp     bh, 0Ah
jnb     loc_4D7954
mov     eax, [ebp+0C8h]
movsx   edx, word ptr [eax]
mov     eax, [ebp+12h]
sar     eax, 10h
sub     edx, eax
mov     [esp+38h+var_38], edx
mov     eax, [ebp+0C8h]
mov     edx, [eax]
sar     edx, 10h
mov     eax, [ebp+14h]
sar     eax, 10h
sub     edx, eax
mov     [esp+38h+var_34], edx
mov     eax, [ebp+0C8h]
mov     edx, [eax+2]
sar     edx, 10h
mov     eax, [ebp+16h]
sar     eax, 10h
sub     edx, eax
mov     [esp+38h+var_30], edx
mov     eax, [esp+38h+var_38]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4D785C
mov     eax, [esp+38h+var_34]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4D785C
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
jbe     short loc_4D786A

loc_4D785C:
sar     [esp+38h+var_38], 2
sar     [esp+38h+var_34], 2
sar     [esp+38h+var_30], 2

loc_4D786A:
lea     edx, [esp+38h+var_20]
mov     eax, esp
call    sub_4EF932
lea     edx, [ebp+0DCh]
mov     ecx, 0FF069DAh
mov     ebx, 165h
lea     eax, [esp+38h+var_20]
lea     esi, [esp+38h+var_28]
call    sub_4DFFB5
lea     edi, [ebp+0DCh]
lea     esi, [esp+38h+var_28]
movsd
movsd
mov     eax, [ebp+6Ch]
sar     eax, 10h
mov     edx, [esp+0Eh]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ebp+44h], dx
mov     edx, [esp+38h+var_28]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ebp+46h], dx
mov     edx, [esp+38h+var_28+2]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ebp+48h], ax
mov     edx, [ebp+6Ch]
sar     edx, 10h
mov     eax, ds:dword_539898
sar     eax, 10h
add     eax, edx
mov     edx, ds:dword_539898+2
sar     edx, 10h
cmp     eax, edx
jl      short loc_4D78FA
mov     ax, ds:word_53989C

loc_4D78FA:
mov     [ebp+6Eh], ax

loc_4D78FE:
mov     eax, [ebp+42h]
sar     eax, 10h
shl     eax, 8
add     [ebp+1Ch], eax
mov     eax, [ebp+44h]
sar     eax, 10h
shl     eax, 8
add     [ebp+20h], eax
mov     eax, [ebp+46h]
sar     eax, 10h
shl     eax, 8
add     [ebp+24h], eax
lea     eax, [ebp+88h]
mov     edx, [ebp+1Ch]
sar     edx, 10h
mov     [ebp+14h], dx
mov     [eax+34h], dx
mov     edx, [ebp+20h]
sar     edx, 10h
mov     [ebp+16h], dx
mov     [eax+36h], dx
mov     edx, [ebp+24h]
sar     edx, 10h
mov     [ebp+18h], dx
mov     [eax+38h], dx
jmp     short loc_4D7968

loc_4D7954:
cmp     bh, 3Ch ; '<'
jb      short loc_4D78FE
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0

loc_4D7968:
inc     byte ptr [ebp+0Bh]
mov     eax, ebp
call    sub_4D7B31
mov     eax, ebp
call    sub_4D7A93
add     esp, 20h
jmp     loc_4D7CB2
sub_4D7770 endp




sub_4D7981 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
mov     al, [eax+9]
test    al, al
ja      loc_4D7A58
mov     byte ptr [ecx+0Ah], 10h
inc     byte ptr [ecx+9]
mov     eax, [ecx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFE1h
jle     loc_4D7A69
lea     edx, [ecx+14h]
mov     eax, 1F6h
call    sub_4D8BC3
mov     eax, [ecx+12h]
sar     eax, 10h
mov     edx, ds:dword_5F8376
sar     edx, 10h
sub     edx, eax
mov     eax, edx
mov     edx, [ecx+16h]
sar     edx, 10h
mov     ebx, ds:dword_5F837A
sar     ebx, 10h
sub     ebx, edx
mov     edx, ebx
call    sub_4EF04B
mov     ebp, eax
cmp     byte ptr ds:dword_77E7DC+3, 1
jle     short loc_4D79F9
mov     [esp+1Ch+var_1C], 5
jmp     short loc_4D7A00

loc_4D79F9:
mov     [esp+1Ch+var_1C], 3

loc_4D7A00:
xor     ebx, ebx

loc_4D7A02:
cmp     ebx, [esp+1Ch+var_1C]
jge     short loc_4D7A69
call    sub_4DE043
mov     esi, eax
test    eax, eax
jz      short loc_4D7A55
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 32h ; '2'
mov     byte ptr [eax+3], 3
mov     eax, ds:(off_5398C6+2)[ebx*2]
sar     eax, 10h
add     eax, ebp
call    sub_4EF008
mov     [esi+44h], ax
mov     word ptr [esi+46h], 0
mov     eax, ds:(off_5398C6+2)[ebx*2]
sar     eax, 10h
add     eax, ebp
call    sub_4EF003
mov     [esi+48h], ax
lea     edi, [esi+14h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4D7A55:
inc     ebx
jmp     short loc_4D7A02

loc_4D7A58:
mov     dh, [ecx+0Ah]
dec     dh
mov     [ecx+0Ah], dh
jnz     short loc_4D7A69
mov     eax, ecx
call    sub_4DE371

loc_4D7A69:
xor     eax, eax
mov     al, [ecx+0Ah]
shl     eax, 3
mov     ebx, eax
or      ebx, 2000000h
mov     edx, eax
shl     edx, 8
or      edx, ebx
shl     eax, 10h
or      edx, eax
mov     [ecx+0C4h], edx
add     esp, 4
jmp     loc_4D7CB2
sub_4D7981 endp




sub_4D7A93 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+14h]
lea     edx, [eax+0D4h]
cmp     byte ptr ds:dword_77E7DC+3, 1
jle     short loc_4D7ABA
push    80h
push    0
push    40A0060h
jmp     short loc_4D7AC6

loc_4D7ABA:
push    80h
push    0
push    40A0040h

loc_4D7AC6:
push    edx
xor     edx, edx
mov     dl, [esi+1]
push    edx
mov     edx, [esi+0C0h]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, eax
mov     ecx, 0A000h
xor     ebx, ebx
mov     eax, edi
call    sub_4E01FC
mov     dword ptr [esi+0D4h], 0
jmp     loc_4D7CB3
sub_4D7A93 endp




sub_4D7AFE proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4D7B2E
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     bx, [edx+14h]
mov     [eax+48h], bx
mov     bx, [edx+16h]
mov     [eax+4Ah], bx
mov     dx, [edx+18h]
mov     [eax+4Ch], dx

loc_4D7B2E:
pop     edx
pop     ebx
retn
sub_4D7AFE endp




sub_4D7B31 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 18h
mov     ecx, eax
mov     eax, [eax+42h]
sar     eax, 10h
mov     edx, [ecx+46h]
sar     edx, 10h
xor     ebx, ebx
mov     bl, [ecx+0Bh]
shl     ebx, 7
mov     [esp+24h+var_14], bx
call    sub_4EF04B
add     ah, 8
mov     [esp+24h+var_12], ax
xor     edx, edx
mov     [esp+24h+var_10], dx
lea     ebx, [ecx+8Ch]
mov     edx, ebx
lea     eax, [esp+24h+var_14]
call    sub_4EF638
mov     eax, [ecx+0C0h]
sar     eax, 10h
mov     [esp+24h+var_1C], eax
mov     [esp+24h+var_20], eax
mov     [esp+24h+var_24], eax
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
add     esp, 18h
pop     edx
pop     ecx
pop     ebx
retn
sub_4D7B31 endp




sub_4D7B9B proc near
push    ebx
push    ecx
push    edx
sub     byte ptr [eax+0Bh], 20h ; ' '
xor     edx, edx
mov     dl, [eax+0Bh]
test    edx, edx
jg      short loc_4D7BB4
call    sub_4DE371
pop     edx
pop     ecx
pop     ebx
retn

loc_4D7BB4:
mov     ebx, edx
shl     ebx, 10h
or      ebx, 2000000h
mov     ecx, edx
shl     ecx, 8
or      ecx, ebx
or      ecx, edx
mov     [eax+0C4h], ecx
pop     edx
pop     ecx
pop     ebx

locret_4D7BD1:
retn
sub_4D7B9B endp




sub_4D7BD2 proc near
add     byte ptr [eax+0Bh], 8
add     byte ptr [eax+0Ah], 8
cmp     byte ptr [eax+0Bh], 0F0h
jb      short locret_4D7BD1
jmp     sub_4DE371
sub_4D7BD2 endp




sub_4D7BE5 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     esi, eax
xor     ebx, ebx
mov     bl, [eax+0Ah]
xor     ecx, ecx
mov     cl, [eax+0Bh]
test    ecx, ecx
jz      loc_4D7CAA
mov     ebp, [eax+2Ah]
sar     ebp, 10h
mov     edi, ecx
sub     edi, ebx
imul    ebp, edi
mov     edx, [eax+12h]
sar     edx, 10h
imul    edx, ebx
add     edx, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     ebp, eax
mov     edx, [esi+2Ch]
sar     edx, 10h
imul    edx, edi
mov     [esp+24h+var_1C], edx
mov     edx, [esi+14h]
sar     edx, 10h
imul    edx, ebx
mov     eax, [esp+24h+var_1C]
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     [esp+24h+var_24], eax
mov     edx, [esi+2Eh]
sar     edx, 10h
imul    edx, edi
mov     [esp+24h+var_1C], edx
mov     edx, [esi+16h]
sar     edx, 10h
imul    edx, ebx
mov     eax, [esp+24h+var_1C]
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     [esp+24h+var_20], eax
mov     edx, [esi+30h]
sar     edx, 10h
imul    edi, edx
mov     edx, [esi+18h]
sar     edx, 10h
imul    edx, ebx
add     edx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     ecx, eax
mov     ebx, [esp+24h+var_20]
mov     edx, [esp+24h+var_24]
mov     eax, ebp
call    sub_4E1E4D
mov     ah, [esi+0Ah]
inc     ah
mov     [esi+0Ah], ah
cmp     ah, [esi+0Bh]
jbe     short loc_4D7CAF
mov     eax, esi

loc_4D7CAA:
call    sub_4DE371

loc_4D7CAF:
add     esp, 0Ch

loc_4D7CB2:
pop     ebp

loc_4D7CB3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D7BE5 endp




sub_4D7CB9 proc near
push    ecx
push    edx
lea     edx, [eax+0CCh]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4D7CC6[ecx*4]
mov     dword ptr [edx+14h], 0
pop     edx
pop     ecx
retn
sub_4D7CB9 endp




sub_4D7CD7 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+0CCh]
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     [ecx+34h], eax
mov     dword ptr [edx+54h], 0
mov     dword ptr [edx+58h], 0
mov     dword ptr [edx+64h], 0
or      byte ptr [edx], 26h
mov     eax, [ecx+34h]
mov     eax, [eax+88h]
mov     [edx+88h], eax
movsx   ax, byte ptr [edx+0Dh]
mov     [edx+0C2h], ax
mov     word ptr [ecx], 50h ; 'P'
mov     dword ptr [ecx+4], 0
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx+14h], 0
mov     dword ptr [ecx+38h], 1000h
mov     dword ptr [ecx+3Ch], 1000h
mov     dword ptr [ecx+40h], 1000h
mov     word ptr [edx+6Eh], 400h
mov     dword ptr [edx+78h], offset unk_5398F8
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     dword ptr [edx+0C4h], offset unk_808080
mov     eax, edx
call    sub_4D7D7A
pop     edx
pop     ecx
retn
sub_4D7CD7 endp




sub_4D7D7A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ebx, [eax+0CCh]
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
call    rand_
mov     [ebx+2], ax
mov     ah, [ebx]
test    ah, 40h
jz      loc_4D7EBE
test    ah, 10h
jz      loc_4D7E7C
mov     eax, [edx+0Ah]
sar     eax, 18h
mov     esi, [ebx+34h]
lea     edi, [edx+14h]
lea     esi, [esi+eax*8+190h]
movsd
movsd
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
mov     eax, [ebx+34h]
test    byte ptr [eax], 2
jnz     short loc_4D7E07
and     byte ptr [edx], 0FDh
jmp     loc_4D7EBE

loc_4D7E07:
or      byte ptr [edx], 2
mov     eax, [ebx+34h]
mov     cx, [eax+196h]
xor     ch, ch
and     cl, 1Fh
mov     esi, ecx
and     esi, 0FFFFh
shl     esi, 3
mov     cx, [eax+196h]
and     ecx, 3E0h
and     ecx, 0FFFFh
sar     ecx, 5
shl     ecx, 0Bh
or      ecx, esi
mov     si, [eax+196h]
and     esi, 7C00h
and     esi, 0FFFFh
sar     esi, 0Ah
shl     esi, 13h
or      ecx, esi
test    byte ptr [eax+0Fh], 2
jz      short loc_4D7E74
mov     eax, [eax+194h]
sar     eax, 10h
test    ah, 80h
jz      short loc_4D7E74
or      ecx, 2E000000h

loc_4D7E74:
mov     [edx+0C4h], ecx
jmp     short loc_4D7EBE

loc_4D7E7C:
mov     eax, [edx+0Ah]
sar     eax, 18h
mov     ecx, [ebx+34h]
mov     ax, [ecx+eax*8+190h]
mov     [edx+14h], ax
mov     eax, [edx+0Ah]
sar     eax, 18h
mov     ecx, [ebx+34h]
mov     ax, [ecx+eax*8+194h]
mov     [edx+18h], ax
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+1Ch], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax

loc_4D7EBE:
mov     eax, [ebx+34h]
test    byte ptr [eax+0Fh], 4
jz      short loc_4D7F01
mov     byte ptr [edx+9], 1
mov     word ptr [edx+0Ah], 0
and     byte ptr [ebx], 0EFh
sub     word ptr [edx+16h], 400h
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, [ebx+34h]
mov     eax, [eax+1C0h]
sar     eax, 10h
sub     eax, 400h
test    eax, eax
jge     short loc_4D7EFD
neg     eax

loc_4D7EFD:
mov     [ebx+48h], ax

loc_4D7F01:
mov     eax, [ebx+34h]
test    byte ptr [eax+0Fh], 40h
jz      short loc_4D7F17
mov     byte ptr [edx+9], 2
mov     word ptr [edx+0Ah], 0
and     byte ptr [ebx], 0EFh

loc_4D7F17:
mov     eax, [ebx+34h]
test    byte ptr [eax+0Eh], 2
jz      short loc_4D7F33
cmp     byte ptr [edx+0Dh], 7
jge     short loc_4D7F33
mov     byte ptr [edx+9], 3
mov     word ptr [edx+0Ah], 0
and     byte ptr [ebx], 0AFh

loc_4D7F33:
mov     eax, [ebx+34h]
test    byte ptr [eax+0Eh], 1
jz      short loc_4D7F4F
cmp     byte ptr [edx+0Dh], 7
jle     short loc_4D7F4F
mov     byte ptr [edx+9], 3
mov     word ptr [edx+0Ah], 0
and     byte ptr [ebx], 0AFh

loc_4D7F4F:
xor     ecx, ecx
mov     cl, [edx+9]
mov     eax, edx
call    ds:funcs_4D7F56[ecx*4]
test    byte ptr [ebx], 40h
jz      short loc_4D7F89
mov     ecx, [edx+0Ah]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 4
mov     esi, [ebx+34h]
mov     ecx, 0Ch
lea     edi, [edx+8Ch]
lea     esi, [esi+eax+250h]
rep movsd

loc_4D7F89:
lea     edi, [edx+0BCh]
lea     esi, [edx+14h]
movsd
movsd
movsx   ax, byte ptr [edx+0Dh]
mov     [edx+0C2h], ax
test    byte ptr [ebx], 1
jz      short loc_4D7FB2
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
and     byte ptr [ebx], 0FEh

loc_4D7FB2:
mov     si, [ebx+0Ah]
test    si, si
jz      loc_4D8238
mov     edi, esi
dec     edi
mov     [ebx+0Ah], di
jmp     loc_4D8238
sub_4D7D7A endp



; Attributes: thunk

sub_4D7FCB proc near
jmp     sub_4DE371
sub_4D7FCB endp

db 90h
jpt_4D8003 dd offset loc_4D800A ; jump table for switch statement
dd offset loc_4D8045
dd offset loc_4D818B
dd offset loc_4D81E3



sub_4D7FE1 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
add     eax, 0CCh
mov     [esp+20h+var_20], eax
mov     al, [ebp+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_4D8003      ; jumptable 004D8003 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4D8003[edx*4] ; switch jump

loc_4D800A:             ; jumptable 004D8003 case 0
mov     eax, [esp+20h+var_20]
mov     eax, [eax+34h]
test    byte ptr [eax+0Fh], 8
jnz     short loc_4D801F
and     byte ptr [ebp+0], 0FDh
jmp     def_4D8003      ; jumptable 004D8003 default case

