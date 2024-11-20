loc_462F98:
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
retn
sub_462F87 endp




sub_462FA7 proc near
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
mov     edx, [eax+1Ch]
mov     [ecx+1Ch], edx
mov     edx, [eax+20h]
add     edx, 2600000h
mov     [ecx+20h], edx
mov     eax, [eax+24h]
mov     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_462FA7 endp




sub_462FE9 proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, ds:dword_560C00
mov     edx, [eax+1Ch]
mov     [ecx+1Ch], edx
mov     eax, [eax+24h]
mov     [ecx+24h], eax
mov     ah, [ecx+0Fh]
xor     ah, 1
mov     [ecx+0Fh], ah
test    ah, 1
jz      short loc_463015
sub     dword ptr [ecx+1Ch], 80000h
jmp     short loc_46301A

loc_463015:
add     word ptr [ecx+1Eh], 8

loc_46301A:
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
jmp     loc_462F98
sub_462FE9 endp




sub_463025 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_463039
jbe     short loc_463060
jmp     loc_4630E2

loc_463039:
test    al, al
jnz     loc_4630E2
inc     al
mov     [esi+9], al
mov     byte ptr [esi+0Ah], 1Eh
mov     byte ptr [esi+0Bh], 3
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0FFC0h
mov     word ptr [esi+4Eh], 2

loc_463060:
mov     ax, [esi+46h]
shl     eax, 4
movsx   ebx, ax
mov     ax, [esi+44h]
shl     eax, 4
movsx   edx, ax
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     eax, esi
call    sub_42DE56
test    ah, 10h
jz      short loc_4630BB
lea     edx, [esi+14h]
mov     eax, 155h
call    sub_4D8BC3
mov     word ptr [esi+46h], 0FFC0h
mov     bx, [esi+4Eh]
add     ebx, ebx
mov     [esi+4Eh], bx
mov     ah, [esi+0Bh]
dec     ah
mov     [esi+0Bh], ah
jnz     short loc_4630BB
inc     byte ptr [esi+9]

loc_4630BB:
mov     bl, [esi+0Ah]
test    bl, bl
jnz     short loc_4630DB
mov     eax, 640h
call    sub_47E8B8
mov     eax, 51h ; 'Q'
call    sub_47E8B8
inc     byte ptr [esi+0Ah]
jmp     short loc_4630E2

loc_4630DB:
mov     bh, bl
dec     bh
mov     [esi+0Ah], bh

loc_4630E2:
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_463025 endp




sub_4630EE proc near
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
movzx   esi, byte ptr [eax+3]
mov     ebx, ecx
mov     edx, offset dword_560BDC
call    ds:funcs_46312D[esi*4]
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+0ADh]
jz      short loc_463156
movsx   ebx, word ptr [ecx]
xor     edx, edx
mov     dl, [ebp+0ACh]
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_46315D

loc_463156:
mov     eax, ebp
call    sub_4DEADD

loc_46315D:
test    byte ptr [ebp+0], 2
jz      short loc_46317D
xor     ecx, ecx
mov     cl, [ebp+3]
mov     edx, ds:dword_516BC6[ecx*4]
xor     ecx, ecx
mov     ebx, 200h
mov     eax, ebp
call    sub_4ED88B

loc_46317D:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4630EE endp




sub_463184 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     eax, eax
mov     al, [ecx+3]
mov     al, ds:byte_516BA8[eax*4]
mov     [ecx+2], al
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 30h ; '0'
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
xor     eax, eax
mov     al, [ecx+3]
mov     al, ds:byte_516BBC[eax*2]
mov     [ecx+0ACh], al
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     ecx
pop     ebx
retn
sub_463184 endp




sub_4631F9 proc near
push    ecx
mov     ecx, ebx
mov     bl, [eax+8]
cmp     bl, 1
jb      short loc_463208
jbe     short loc_463215
pop     ecx
retn

loc_463208:
test    bl, bl
jnz     short loc_46324C
mov     edx, ecx
call    sub_463184
pop     ecx
retn

loc_463215:
cmp     byte ptr [edx+9], 11h
jnz     short loc_46324C
cmp     dword ptr [edx+10h], 1
jnz     short loc_46324C
cmp     byte ptr [eax+3], 0
jnz     short loc_463243
mov     word ptr [eax+56h], 400h
sub     word ptr [eax+14h], 28h ; '('
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
inc     byte ptr [eax+9]
pop     ecx
retn

loc_463243:
mov     word ptr [eax+56h], 800h
inc     byte ptr [eax+9]

loc_46324C:
pop     ecx
retn
sub_4631F9 endp

jpt_46327F dd offset loc_463286 ; jump table for switch statement
dd offset loc_4632A5
dd offset loc_4632BE
dd offset loc_4632D1
dd offset loc_4632E5
dd offset loc_4632FF
dd offset loc_463319



sub_46326A proc near
push    ecx
push    esi
mov     ecx, eax
mov     eax, ebx
mov     bl, [ecx+8]
cmp     bl, 6           ; switch 7 cases
ja      def_46327F      ; jumptable 0046327F default case
movzx   esi, bl
jmp     jpt_46327F[esi*4] ; switch jump

loc_463286:             ; jumptable 0046327F case 0
mov     edx, eax
mov     eax, ecx
call    sub_463184
mov     byte ptr [ecx+0FCh], 0Ch
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Eh], 1Eh
mov     byte ptr [ecx+0Fh], 0

def_46327F:             ; jumptable 0046327F default case
pop     esi

def_46334D:             ; jumptable 0046334D default case, case 4
pop     ecx             ; jumptable 004633FD default case, case 5
retn

loc_4632A5:             ; jumptable 0046327F case 1
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [edx+9], 5

loc_4632B0:             ; jumptable 0046327F default case
jnz     short def_46327F
cmp     dword ptr [edx+10h], 1

loc_4632B6:             ; jumptable 0046327F default case
jnz     short def_46327F

loc_4632B8:
inc     byte ptr [ecx+8]
pop     esi
pop     ecx
retn

loc_4632BE:             ; jumptable 0046327F case 2
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [edx+9], 5
jnz     short def_46327F ; jumptable 0046327F default case
cmp     dword ptr [edx+10h], 0Ah
jmp     short loc_4632B6

loc_4632D1:             ; jumptable 0046327F case 3
cmp     byte ptr [edx+9], 6
jnz     short def_46327F ; jumptable 0046327F default case
cmp     dword ptr [edx+10h], 1
jnz     short def_46327F ; jumptable 0046327F default case
inc     bl
mov     [ecx+8], bl
pop     esi
pop     ecx
retn

loc_4632E5:             ; jumptable 0046327F case 4
cmp     byte ptr [edx+9], 10h
jnz     short def_46327F ; jumptable 0046327F default case
cmp     dword ptr [edx+10h], 1
jnz     short def_46327F ; jumptable 0046327F default case
mov     byte ptr [ecx+0ACh], 19h
mov     word ptr [eax], 0
jmp     short loc_4632B8

loc_4632FF:             ; jumptable 0046327F case 5
mov     byte ptr [ecx+0ADh], 0FFh
mov     eax, ecx
call    sub_463497
cmp     byte ptr [edx+9], 10h
jnz     short def_46327F ; jumptable 0046327F default case
cmp     dword ptr [edx+10h], 1Eh
jmp     short loc_4632B6

loc_463319:             ; jumptable 0046327F case 6
mov     eax, ecx
call    sub_463497
cmp     byte ptr [edx+9], 11h
jmp     short loc_4632B0
sub_46326A endp

jpt_46334D dd offset loc_463354 ; jump table for switch statement
dd offset loc_46335D
dd offset loc_46337D
dd offset loc_4633A9
dd offset def_46334D



sub_46333A proc near
push    ecx
mov     cl, [eax+8]
cmp     cl, 4           ; switch 5 cases
ja      def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
and     ecx, 0FFh
jmp     jpt_46334D[ecx*4] ; switch jump

loc_463354:             ; jumptable 0046334D case 0
mov     edx, ebx
call    sub_463184
pop     ecx
retn

loc_46335D:             ; jumptable 0046334D case 1
mov     byte ptr [eax+0ADh], 0FFh
cmp     byte ptr [edx+9], 6
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 5
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
inc     byte ptr [eax+8]
pop     ecx
retn

loc_46337D:             ; jumptable 0046334D case 2
cmp     byte ptr [edx+9], 7
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 1
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
mov     byte ptr [eax+0ACh], 14h
mov     byte ptr [eax+0ADh], 0FFh
mov     word ptr [ebx], 0
inc     byte ptr [eax+8]
pop     ecx
retn

loc_4633A9:             ; jumptable 0046334D case 3
mov     byte ptr [eax+0ADh], 0FFh
cmp     byte ptr [edx+9], 13h
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 5
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
mov     byte ptr [eax+0FCh], 0Fh
inc     byte ptr [eax+8]
pop     ecx
retn
sub_46333A endp

db 8Bh, 0C0h
jpt_4633FD dd offset loc_463404 ; jump table for switch statement
dd offset loc_46340D
dd offset loc_463430
dd offset loc_463466
dd offset loc_463479
dd offset def_46334D



sub_4633EA proc near
push    ecx
mov     cl, [eax+8]
cmp     cl, 5           ; switch 6 cases
ja      def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
and     ecx, 0FFh
jmp     jpt_4633FD[ecx*4] ; switch jump

loc_463404:             ; jumptable 004633FD case 0
mov     edx, ebx
call    sub_463184
pop     ecx
retn

loc_46340D:             ; jumptable 004633FD case 1
cmp     byte ptr [edx+9], 1Bh
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 96h

loc_46341E:             ; jumptable 0046334D default case, case 4
jnz     def_46334D      ; jumptable 004633FD default case, case 5
mov     byte ptr [eax+0ACh], 8
inc     byte ptr [eax+8]
pop     ecx
retn

loc_463430:             ; jumptable 004633FD case 2
cmp     byte ptr [edx+9], 1Bh
jnz     short loc_463446
cmp     dword ptr [edx+10h], 0E6h
jnz     short loc_463446
mov     byte ptr [eax+0ACh], 13h

loc_463446:
cmp     byte ptr [edx+9], 1Dh
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 1
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
mov     byte ptr [eax+0ACh], 0
inc     byte ptr [eax+8]
pop     ecx
retn

loc_463466:             ; jumptable 004633FD case 3
cmp     byte ptr [edx+9], 1Dh
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 0CDh
jmp     short loc_46341E

loc_463479:             ; jumptable 004633FD case 4
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
mov     byte ptr [eax+0ADh], 0FFh
inc     byte ptr [eax+8]
pop     ecx
retn
sub_4633EA endp




sub_463497 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Dh], 0
jle     short loc_4634B8
mov     ah, [edx+0Dh]
dec     ah
mov     [edx+0Dh], ah
jnz     short loc_4634F3
call    rand_
and     al, 1Fh
add     al, 1Eh
mov     [edx+0Eh], al
pop     edx
retn

loc_4634B8:
cmp     byte ptr [edx+0Eh], 0
jle     short loc_4634E7
test    byte ptr [edx+0Fh], 3
jnz     short loc_4634DF
cmp     byte ptr [edx+0FCh], 0Bh
jnz     short loc_4634D4
mov     eax, 1
jmp     short loc_4634D9

loc_4634D4:
mov     eax, 0Bh

loc_4634D9:
mov     [edx+0FCh], al

loc_4634DF:
dec     byte ptr [edx+0Eh]
inc     byte ptr [edx+0Fh]
pop     edx
retn

loc_4634E7:
call    rand_
and     al, 0Fh
add     al, 0Fh
mov     [edx+0Dh], al

loc_4634F3:
pop     edx
retn
sub_463497 endp




sub_4634F5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4634FB[edx*4]
pop     edx
retn
sub_4634F5 endp




sub_463504 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     word ptr [ecx], 0
mov     dword ptr [ecx+4], 0
mov     edi, offset unk_55A0D0
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    0
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ecx+0Ch]
mov     ecx, 100h
mov     edx, offset unk_55A0D0
call    sub_4DD4C5
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     word ptr [ebp+6Eh], 0
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], 0
mov     dword ptr [ebp+10h], 0
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_4635D9
pop     ebp

loc_4635D3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_463504 endp




sub_4635D9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edx, [eax+408h]
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
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
xor     ebx, ebx
mov     bl, [ecx+9]
mov     eax, ecx
call    ds:funcs_46361C[ebx*4]
test    byte ptr [edx], 1
jz      short loc_463635
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
and     byte ptr [edx], 0FEh

loc_463635:
mov     al, [ecx+0ADh]
mov     bh, [ecx+0ACh]
cmp     al, bh
jz      short loc_463657
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     loc_4635D3

loc_463657:
mov     eax, ecx
call    sub_4DEADD
jmp     loc_4635D3
sub_4635D9 endp



; Attributes: thunk

sub_463663 proc near
jmp     sub_4DE2F6
sub_463663 endp




sub_463668 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_46367C
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_46367C:
pop     edx
retn
sub_463668 endp




sub_46367E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+3D8h]
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
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
mov     word ptr [ecx+15Eh], 4210h
call    rand_
mov     [ebp+2], ax
movzx   esi, byte ptr [ecx+8]
mov     edx, ebp
mov     eax, ecx
call    ds:funcs_4636CC[esi*4]
test    byte ptr [ebp+1], 2
jnz     short loc_4636E4
mov     dl, [ecx+0ACh]
cmp     dl, 1
jnz     short loc_46370C

loc_4636E4:
mov     al, [ecx+0ADh]
mov     bl, [ecx+0ACh]
cmp     al, bl
jz      short loc_463703
xor     edx, edx
mov     dl, bl
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_463754

loc_463703:
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_463754

loc_46370C:
mov     esi, offset word_560E0C
cmp     dl, [ecx+0ADh]
jz      short loc_46372C
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
jmp     short loc_463733

loc_46372C:
mov     eax, ecx
call    sub_4DEB53

loc_463733:
mov     ax, [ecx+54h]
mov     [esi], ax
test    ax, ax
jz      short loc_463743
xor     eax, eax
jmp     short loc_463749

loc_463743:
mov     eax, [ecx+56h]
sar     eax, 10h

loc_463749:
mov     [esi+4], ax
mov     eax, ecx
call    sub_4DF795

loc_463754:
mov     dword ptr [ebp+1Ch], 0
mov     eax, ecx
call    sub_42DE56
mov     [ebp+18h], eax
test    byte ptr [ebp+19h], 10h
jnz     short loc_463784
mov     edx, [ecx+14h]
sar     edx, 10h
mov     eax, ecx
call    sub_42C592
cwde
cmp     edx, eax
jnz     short loc_463784
mov     dword ptr [ebp+1Ch], 1

loc_463784:
test    byte ptr [ebp+1], 2
jz      short loc_463791
mov     esi, 80h
jmp     short loc_463793

loc_463791:
xor     esi, esi

loc_463793:
push    esi
push    offset unk_800000
xor     eax, eax
mov     ax, [ebp+10h]
or      eax, 5880000h
push    eax
lea     eax, [ebp+20h]
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
lea     eax, [ecx+190h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0C0h
call    sub_4E01FC
mov     dword ptr [ebp+20h], 0
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46367E endp




sub_4637D4 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, [eax+9]
sar     esi, 18h
shl     esi, 3
add     esi, offset unk_516C08
mov     word ptr [edx], 0Ah
mov     word ptr [edx+4], 0
mov     word ptr [edx+6], 0
mov     word ptr [edx+8], 0
mov     word ptr [edx+0Ch], 0FFFFh
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, eax
shl     ebx, 2
mov     eax, ds:dword_55A10C
mov     eax, [ebx+eax]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [edx+10h], ax
mov     dword ptr [edx+20h], 0
mov     dword ptr [edx+24h], 0
mov     word ptr [edx+14h], 8
mov     ax, [edx+14h]
mov     [edx+12h], ax
mov     dword ptr [edx+18h], 0
mov     dword ptr [edx+1Ch], 0
lea     eax, [edx+28h]
xor     ebx, ebx
mov     edx, 0Bh
call    sub_4E19B9
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     ax, [esi+6]
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
mov     ax, [esi]
mov     [ecx+14h], ax
mov     ax, [esi+2]
mov     [ecx+16h], ax
mov     ax, [esi+4]
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
mov     dword ptr [ecx+64h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_516C18
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     ecx
pop     ebx
retn
sub_4637D4 endp

align 2
jpt_463A08 dd offset loc_463A0F ; jump table for switch statement
dd offset loc_463A21
dd offset loc_463A2D
dd offset loc_463A35



sub_463936 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
test    byte ptr [edx], 2
jz      short loc_463949
mov     eax, ecx
call    sub_463A4A

loc_463949:
mov     edx, ebx
mov     eax, ecx
call    sub_463AC0
test    byte ptr [ebx+1], 2
jnz     short loc_463973
mov     edx, ebx
mov     eax, ecx
call    sub_463C2D
mov     edx, ebx
mov     eax, ecx
call    sub_463E94
mov     edx, ebx
mov     eax, ecx
call    sub_463F63

loc_463973:
mov     al, [ecx+0ACh]
cmp     al, 1
jb      short loc_463988
jbe     short loc_4639A7
cmp     al, 2
jz      short loc_4639D3
jmp     loc_4639E8

loc_463988:
test    al, al
jnz     short loc_4639E8
test    byte ptr [ebx], 4
jz      short loc_463998
mov     byte ptr [ecx+0ACh], 1

loc_463998:
test    byte ptr [ebx+1], 4
jz      short loc_4639E8
mov     byte ptr [ecx+0ACh], 2
jmp     short loc_4639E8

loc_4639A7:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_463998
test    byte ptr [ebx], 4
jz      short loc_4639CA
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
jmp     short loc_463998

loc_4639CA:
mov     byte ptr [ecx+0ACh], 0
jmp     short loc_463998

loc_4639D3:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4639E8
mov     byte ptr [ecx+0ACh], 3

loc_4639E8:
movzx   esi, byte ptr [ecx+9]
mov     edx, ebx
mov     eax, ecx
call    ds:funcs_4639F0[esi*4]
test    byte ptr [ebx], 1
jz      short loc_463A46
mov     al, [ecx+9]
cmp     al, 3           ; switch 4 cases
ja      short def_463A08 ; jumptable 00463A08 default case
and     eax, 0FFh
jmp     jpt_463A08[eax*4] ; switch jump

loc_463A0F:             ; jumptable 00463A08 case 0
test    byte ptr [ebx+1], 2
jz      short loc_463A1B

loc_463A15:
mov     byte ptr [ecx+9], 3
jmp     short def_463A08 ; jumptable 00463A08 default case

loc_463A1B:
mov     byte ptr [ecx+9], 1
jmp     short def_463A08 ; jumptable 00463A08 default case

loc_463A21:             ; jumptable 00463A08 case 1
test    byte ptr [ebx+1], 2
jnz     short loc_463A15
mov     byte ptr [ecx+9], 2
jmp     short def_463A08 ; jumptable 00463A08 default case

loc_463A2D:             ; jumptable 00463A08 case 2
test    byte ptr [ebx+1], 2
jnz     short loc_463A15
jmp     short loc_463A1B

loc_463A35:             ; jumptable 00463A08 case 3
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0

def_463A08:             ; jumptable 00463A08 default case
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ebx], 0FEh

loc_463A46:
pop     esi
pop     ecx
pop     ebx
retn
sub_463936 endp




sub_463A4A proc near
push    ebx
push    ecx
push    edi
mov     ebx, eax
mov     ecx, edx
mov     eax, [edx+20h]
and     eax, 0FFFFFFh
jz      short loc_463AB9
test    byte ptr [edx+23h], 18h
jz      short loc_463AA5
mov     dx, [ebx+6Eh]
mov     [ebx+0B2h], dx
sub     edx, eax
mov     [ebx+6Eh], dx
test    dx, dx
jg      short loc_463A8D
mov     di, [ecx]
and     edi, 0FFFFFD1Ch
mov     [ecx], di
mov     eax, edi
or      eax, 201h
mov     [ecx], ax

loc_463A8D:
lea     edx, [ebx+14h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [ebx+15Eh], 7FFFh
jmp     short loc_463AB2

loc_463AA5:
lea     edx, [ebx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_463AB2:
or      byte ptr [ecx], 4
pop     edi
pop     ecx
pop     ebx
retn

loc_463AB9:
and     byte ptr [edx], 0FBh
pop     edi
pop     ecx
pop     ebx
retn
sub_463A4A endp




sub_463AC0 proc near
push    ebx
push    ecx
push    esi
mov     ebx, eax
mov     ecx, edx
test    byte ptr [edx], 10h
jz      short loc_463ADE
cmp     word ptr [edx+6], 0
jle     short loc_463ADB
dec     word ptr [ecx+6]
pop     esi
pop     ecx
pop     ebx
retn

loc_463ADB:
and     byte ptr [ecx], 0EFh

loc_463ADE:
test    byte ptr [ecx], 8
jz      short loc_463B1F
mov     edx, [ebx+54h]
sar     edx, 10h
add     edx, 200h
and     edx, 0FFFh
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ah
sbb     eax, edx
sar     eax, 0Ah
cwde
mov     edx, [ebx+16h]
sar     edx, 10h
mov     esi, [ebx+12h]
sar     esi, 10h
mov     ebx, eax
mov     eax, esi
call    sub_463B56
test    eax, eax
jz      short loc_463B1F
and     byte ptr [ecx], 0F7h

loc_463B1F:
pop     esi
pop     ecx
pop     ebx
retn
sub_463AC0 endp

db 8Dh, 40h, 0
jpt_463B6C dd offset loc_463B73 ; jump table for switch statement
dd offset loc_463B89
dd offset loc_463BA2
dd offset loc_463B95
jpt_463BD1 dd offset loc_463BD8 ; jump table for switch statement
dd offset loc_463BAE
dd offset loc_463BDE
dd offset loc_463BDE
jpt_463BF1 dd offset loc_463BF8 ; jump table for switch statement
dd offset loc_463BFE
dd offset loc_463C15
dd offset loc_463C21



sub_463B56 proc near
push    ecx
cmp     ax, 200h
jge     short loc_463BBB
cmp     bx, 3           ; switch 4 cases
ja      def_463B6C      ; jumptable 00463B6C default case
; jumptable 00463BD1 default case
; jumptable 00463BF1 default case
xor     ecx, ecx
mov     cx, bx
jmp     jpt_463B6C[ecx*4] ; switch jump

loc_463B73:             ; jumptable 00463B6C case 0
cwde
cmp     eax, 0FFFFF7B8h
jl      loc_463C0E

loc_463B7F:
cmp     dx, 1000h
jmp     loc_463C0C

loc_463B89:             ; jumptable 00463B6C case 1
cwde
cmp     eax, 0FFFFF7B8h
jl      loc_463C0E

loc_463B95:             ; jumptable 00463B6C case 3
cmp     dx, 20B4h
jg      loc_463C0E
jmp     short loc_463B7F

loc_463BA2:             ; jumptable 00463B6C case 2
cwde
cmp     eax, 0FFFFF7B8h
jl      loc_463C0E

loc_463BAE:             ; jumptable 00463BD1 case 1
cmp     dx, 20B4h

loc_463BB3:             ; jumptable 00463B6C default case
jle     def_463B6C      ; jumptable 00463BD1 default case
; jumptable 00463BF1 default case
jmp     short loc_463C0E

loc_463BBB:
cmp     dx, 1000h
jle     short loc_463BE6
cmp     bx, 3           ; switch 4 cases
ja      def_463B6C      ; jumptable 00463B6C default case
; jumptable 00463BD1 default case
; jumptable 00463BF1 default case
xor     ecx, ecx
mov     cx, bx
jmp     jpt_463BD1[ecx*4] ; switch jump

loc_463BD8:             ; jumptable 00463BD1 case 0
cmp     ax, 1A00h
jmp     short loc_463BB3

loc_463BDE:             ; jumptable 00463BD1 cases 2,3
cmp     ax, 1A00h
jg      short loc_463C0E
jmp     short loc_463BAE ; jumptable 00463BD1 case 1

loc_463BE6:             ; switch 4 cases
cmp     bx, 3
ja      short def_463B6C ; jumptable 00463B6C default case
; jumptable 00463BD1 default case
; jumptable 00463BF1 default case
xor     ecx, ecx
mov     cx, bx
jmp     jpt_463BF1[ecx*4] ; switch jump

loc_463BF8:             ; jumptable 00463BF1 case 0
cmp     ax, 1A00h
jg      short loc_463C0E

loc_463BFE:             ; jumptable 00463BF1 case 1
cmp     ax, 200h
jl      short loc_463C0E

loc_463C04:
movsx   eax, dx
cmp     eax, 0FFFFFE00h

loc_463C0C:             ; jumptable 00463B6C default case
jge     short def_463B6C ; jumptable 00463BD1 default case
; jumptable 00463BF1 default case

loc_463C0E:
mov     eax, 1
pop     ecx
retn

loc_463C15:             ; jumptable 00463BF1 case 2
cmp     ax, 1A00h
jg      short loc_463C0E
cmp     ax, 200h
jmp     short loc_463C0C

loc_463C21:             ; jumptable 00463BF1 case 3
cmp     ax, 1A00h
jg      short loc_463C0E
jmp     short loc_463C04

def_463B6C:             ; jumptable 00463B6C default case
xor     eax, eax        ; jumptable 00463BD1 default case
; jumptable 00463BF1 default case
pop     ecx
retn
sub_463B56 endp




sub_463C2D proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
cmp     byte ptr [eax+0ACh], 1
jnz     short loc_463C45
mov     dl, [edx]
and     dl, 7Fh
mov     [ecx], dl

loc_463C45:
test    byte ptr [ecx], 80h
jz      short loc_463C89
test    byte ptr [ecx+1], 1
jz      short loc_463C65
test    byte ptr [ecx+8], 3
jnz     short loc_463C5F
mov     edx, ecx
mov     eax, ebx
call    sub_463CE2

loc_463C5F:
inc     word ptr [ecx+8]
jmp     short loc_463CA5

loc_463C65:
mov     di, [ebx+54h]
cmp     di, 200h
jge     short loc_463C7D
mov     eax, edi
add     eax, 20h ; ' '
mov     [ebx+54h], ax
jmp     short loc_463CA5

loc_463C7D:
mov     word ptr [ebx+54h], 200h
or      byte ptr [ecx+1], 1
jmp     short loc_463CA5

loc_463C89:
mov     word ptr [ecx+8], 0
and     byte ptr [ecx+1], 0FEh
mov     dx, [ebx+54h]
test    dx, dx
jle     short loc_463CA5
mov     esi, edx
sub     esi, 20h ; ' '
mov     [ebx+54h], si

loc_463CA5:
cmp     dword ptr [ebx+80h], 90000h
jnb     short loc_463CCD
mov     al, [ecx+1]
test    al, 8
jnz     short loc_463CCD
mov     ah, al
or      ah, 8
mov     [ecx+1], ah
lea     edx, [ebx+14h]
mov     eax, 150h
call    sub_4D8BC3

loc_463CCD:
cmp     dword ptr [ebx+80h], 240000h
jbe     short loc_463CDD
and     byte ptr [ecx+1], 0F7h

loc_463CDD:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_463C2D endp




sub_463CE2 proc near

var_58= dword ptr -58h
var_54= byte ptr -54h
var_44= byte ptr -44h
var_34= byte ptr -34h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 40h
push    eax
xor     edi, edi
mov     eax, [eax+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 600h
lea     esi, [esp+58h+var_54]
call    sub_4DD510
lea     edx, [esp+58h+var_24]
lea     eax, [esp+58h+var_54]
call    sub_4DD57B
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_18], eax
test    eax, eax
jz      loc_463DBF
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 24h ; '$'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 480h
mov     ebx, 1900h
mov     edx, 0C80h
lea     esi, [esp+58h+var_44]
call    sub_4DD510
lea     edi, [ebp+1Ch]
lea     esi, [esp+58h+var_44]
movsd
movsd
movsd
movsd
mov     eax, [esp+58h+var_58]
mov     eax, [eax+1Ch]
add     [ebp+1Ch], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+20h]
add     [ebp+20h], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+24h]
add     [ebp+24h], eax
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 6000h
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
mov     edi, 1

loc_463DBF:
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_1C], eax
test    eax, eax
jz      loc_463E69
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 24h ; '$'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 0FFFFFB80h
mov     ebx, 1900h
mov     edx, 0C80h
lea     esi, [esp+58h+var_34]
call    sub_4DD510
lea     edi, [ebp+1Ch]
lea     esi, [esp+58h+var_34]
movsd
movsd
movsd
movsd
mov     eax, [esp+58h+var_58]
mov     eax, [eax+1Ch]
add     [ebp+1Ch], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+20h]
add     [ebp+20h], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+24h]
add     [ebp+24h], eax
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 6000h
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
jmp     short loc_463E6D

loc_463E69:
test    edi, edi
jz      short loc_463E8B

loc_463E6D:
mov     ecx, [esp+58h+var_18]
test    ecx, ecx
jz      short loc_463E7A
lea     edx, [ecx+14h]
jmp     short loc_463E81

loc_463E7A:
mov     edx, [esp+58h+var_1C]
add     edx, 14h

loc_463E81:
mov     eax, 0D0h
call    sub_4D8BC3

loc_463E8B:
add     esp, 44h

loc_463E8E:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_463CE2 endp




sub_463E94 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ebx, edx
mov     ah, [edx]
test    ah, 40h
jz      short loc_463ECC
mov     dx, [ecx+56h]
add     edx, 20h ; ' '
and     dh, 0Fh
mov     [ecx+56h], dx
mov     edx, [ecx+56h]
sar     edx, 10h
cmp     edx, 0FFFFFF80h
jle     short loc_463EC1
sub     word ptr [ecx+58h], 8

loc_463EC1:
mov     word ptr [ebx+0Ch], 0FFFFh
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_463ECC:
test    ah, 20h
jz      short loc_463EF7
mov     dx, [ecx+56h]
sub     edx, 20h ; ' '
and     dh, 0Fh
mov     [ecx+56h], dx
mov     di, [ecx+58h]
cmp     di, 80h
jge     short loc_463EC1
mov     eax, edi
add     eax, 8
mov     [ecx+58h], ax
jmp     short loc_463EC1

loc_463EF7:
mov     edx, [edx+0Ah]
sar     edx, 10h
cmp     edx, 0FFFFFFFFh
jnz     short loc_463F3E
mov     si, [ecx+58h]
test    si, si
jz      short loc_463F23
jle     short loc_463F18
mov     edx, esi
sub     edx, 8
mov     [ecx+58h], dx
jmp     short loc_463F23

loc_463F18:
mov     eax, esi
add     eax, 8
mov     [ecx+58h], ax

loc_463F23:
cmp     word ptr [ecx+58h], 0
jnz     short loc_463F5E
mov     edx, [ebx]
sar     edx, 10h
sar     edx, 4
and     edx, 3
mov     [ebx+0Ch], dx
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_463F3E:
mov     esi, 24h ; '$'
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     dx, ds:word_516C24[edx*2]
mov     [ecx+58h], dx
inc     word ptr [ebx+0Ch]
and     byte ptr [ebx+0Dh], 7Fh

loc_463F5E:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_463E94 endp




sub_463F63 proc near

var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     edi, eax
mov     ebp, edx
test    byte ptr [edx], 60h
jz      short loc_463F8A
mov     eax, [edi+54h]
sar     eax, 10h
add     eax, 80h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 300h
jmp     short loc_463F99

loc_463F8A:
mov     eax, [edi+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1800h

loc_463F99:
mov     esi, esp
call    sub_4DD510
mov     eax, [edi+1Ch]
add     [esp+2Ch+var_2C], eax
mov     eax, [edi+24h]
add     [esp+2Ch+var_24], eax
lea     edx, [esp+2Ch+var_1C]
mov     eax, esp
call    sub_4DD57B
mov     ecx, 0FFFFh
xor     ebx, ebx
mov     edx, offset unk_516C18
lea     eax, [esp+2Ch+var_1C]
call    sub_42C5B7
cmp     eax, 0FFFFFD80h
jle     short loc_463FDB
mov     eax, 0FFFFFCC0h
jmp     short loc_463FE0

loc_463FDB:
mov     eax, 0FFFFFB40h

loc_463FE0:
mov     esi, [edi+14h]
sar     esi, 10h
movsx   edx, ax
cmp     esi, edx
jle     short loc_464021
mov     si, [ebp+12h]
cmp     si, 18h
jge     short loc_464000
mov     edx, esi
add     edx, 8
mov     [ebp+12h], dx

loc_464000:
mov     word ptr [ebp+14h], 8
mov     dx, [ebp+12h]
sub     [edi+16h], dx
mov     esi, [edi+14h]
sar     esi, 10h
movsx   edx, ax
cmp     esi, edx
jge     short loc_464061

loc_46401B:
mov     [edi+16h], ax
jmp     short loc_464061

loc_464021:
jge     short loc_464053
mov     dx, [ebp+14h]
cmp     dx, 18h
jge     short loc_464036
mov     ebx, edx
add     ebx, 8
mov     [ebp+14h], bx

loc_464036:
mov     word ptr [ebp+12h], 8
mov     dx, [ebp+14h]
add     [edi+16h], dx
mov     esi, [edi+14h]
sar     esi, 10h
movsx   edx, ax
cmp     esi, edx
jle     short loc_464061
jmp     short loc_46401B

loc_464053:
mov     word ptr [ebp+14h], 8
mov     ax, [ebp+14h]
mov     [ebp+12h], ax

loc_464061:
mov     eax, [edi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+20h], eax
add     esp, 18h
jmp     loc_463E8E
sub_463F63 endp




sub_464075 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, [eax+54h]
sar     esi, 10h
lea     ebx, [eax+1Ch]
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     esi, eax
test    esi, esi
jge     short loc_4640B0
mov     ecx, [ecx+54h]
sar     ecx, 10h
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     ecx, eax
mov     eax, ecx
neg     eax
jmp     short loc_4640C6

loc_4640B0:
mov     ecx, [ecx+54h]
sar     ecx, 10h
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     ecx, eax
mov     eax, ecx

loc_4640C6:
cmp     eax, 50h ; 'P'
jge     short loc_4640D5
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4640D5:
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_464075 endp




sub_4640DC proc near
push    ebx
push    ecx
mov     ecx, eax
mov     eax, 610h
call    sub_47E888
test    eax, eax
jnz     short loc_46411D
mov     ax, [edx+4]
xor     ah, ah
and     al, 3Fh
cwde
mov     ebx, dword ptr ds:unk_564C32[eax*2]
sar     ebx, 10h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 3
sar     eax, 0Ch
sub     eax, 400h
mov     [ecx+16h], ax
inc     word ptr [edx+4]
jmp     short loc_46412C

loc_46411D:
mov     word ptr [ecx+16h], 0FC00h
mov     word ptr [edx+4], 0
or      byte ptr [edx], 1

loc_46412C:
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
pop     ecx
pop     ebx
retn
sub_4640DC endp




sub_46413B proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
mov     esi, edx
mov     [esp+18h+var_18], offset byte_5F8364
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46416F
mov     edx, [esi]
sar     edx, 10h
mov     ebx, 28h ; '('
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     edx, 5Ah ; 'Z'
mov     [esi+4], dx
inc     byte ptr [edi+0Ah]

loc_46416F:
lea     eax, [esi+28h]
test    byte ptr [esi], 8
jz      loc_4641E6
mov     edx, edi
call    sub_4E19CA
mov     ebp, eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, edi
call    sub_4DD43B
mov     al, [esi]
test    al, 10h
jnz     short loc_4641DB
test    ebp, ebp
jz      short loc_4641A7
mov     bl, al
or      bl, 80h
mov     [esi], bl
jmp     short loc_4641DB

loc_4641A7:
cmp     word ptr [esi+4], 0
jge     short loc_4641DB
mov     ah, al
and     ah, 7Fh
mov     [esi], ah
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esp+18h+var_18]
add     edx, 14h
lea     eax, [edi+14h]
mov     ecx, 800h
call    sub_4DE552
test    ax, ax
jle     short loc_4641D8
or      byte ptr [esi], 41h
jmp     short loc_4641DB

loc_4641D8:
or      byte ptr [esi], 21h

loc_4641DB:
test    byte ptr [esi], 80h
jnz     short loc_464218
dec     word ptr [esi+4]
jmp     short loc_464218

loc_4641E6:
call    sub_4E19B4
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0C0h
mov     eax, edi
call    sub_4DD43B
mov     bl, [esi]
and     bl, 7Fh
mov     [esi], bl
test    byte ptr [esi+2], 1
jz      short loc_464211
mov     ch, bl
or      ch, 41h
mov     [esi], ch
jmp     short loc_464218

loc_464211:
mov     cl, bl
or      cl, 21h
mov     [esi], cl

loc_464218:
add     esp, 4
jmp     loc_463E8E
sub_46413B endp




sub_464220 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_464242
mov     ax, [edx+2]
xor     ah, ah
and     al, 1Fh
add     eax, 40h ; '@'
mov     [edx+4], ax
inc     byte ptr [edi+0Ah]

loc_464242:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0C0h
mov     eax, edi
call    sub_4DD43B
lea     eax, [esi+28h]
test    byte ptr [esi], 8
jz      short loc_464283
mov     edx, edi
call    sub_4E19CA
mov     eax, edi
call    sub_464075
test    eax, eax
jnz     short loc_464273
cmp     word ptr [esi+4], 0
jnz     short loc_4642A3

loc_464273:
mov     cl, [esi]
and     cl, 9Eh
mov     [esi], cl
mov     ch, cl
or      ch, 1
mov     [esi], ch
jmp     short loc_4642A3

loc_464283:
call    sub_4E19B4
cmp     word ptr [esi+4], 0
jnz     short loc_4642A3
mov     bl, [esi]
and     bl, 86h
mov     [esi], bl
mov     bh, bl
or      bh, 19h
mov     [esi], bh
mov     word ptr [esi+6], 20h ; ' '

loc_4642A3:
dec     word ptr [esi+4]
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_464220 endp

db 8Bh, 0C0h
jpt_4642E4 dd offset loc_4642EB ; jump table for switch statement
dd offset loc_4643A8
dd offset loc_46446C
dd offset loc_464551
dd offset loc_4645E3
dd offset loc_464712



sub_4642C6 proc near

var_30= dword ptr -30h
var_28= dword ptr -28h
var_20= byte ptr -20h
var_1E= dword ptr -1Eh
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
mov     [esp+30h+var_18], edx
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_4642E4      ; jumptable 004642E4 default case
and     eax, 0FFh
jmp     jpt_4642E4[eax*4] ; switch jump

loc_4642EB:             ; jumptable 004642E4 case 0
call    sub_4DE13B
test    eax, eax
jz      short loc_464307
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_464307:
lea     edx, [ebp+14h]
mov     eax, 0A1h
call    sub_4D8BC3
mov     eax, [esp+30h+var_18]
or      byte ptr [eax], 4
mov     word ptr [eax+4], 78h ; 'x'
mov     word ptr [eax+16h], 8
mov     word ptr [eax+0Ah], 0
mov     eax, [ebp+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3C00h
mov     esi, esp
call    sub_4DD510
mov     eax, [ebp+1Ch]
add     [esp+30h+var_30], eax
mov     eax, [ebp+24h]
add     [esp+30h+var_28], eax
lea     edx, [esp+30h+var_20]
mov     eax, esp
call    sub_4DD57B
mov     edx, [ebp+54h]
sar     edx, 10h
add     edx, 200h
and     edx, 0FFFh
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ah
sbb     eax, edx
sar     eax, 0Ah
movsx   ebx, ax
mov     edx, [esp+30h+var_1E]
sar     edx, 10h
mov     eax, [esp+0Eh]
sar     eax, 10h
call    sub_463B56
test    eax, eax
jz      short loc_46439B
mov     eax, 1
jmp     short loc_4643A0

loc_46439B:
mov     eax, 2

loc_4643A0:
mov     [ebp+0Ah], al
jmp     def_4642E4      ; jumptable 004642E4 default case

loc_4643A8:             ; jumptable 004642E4 case 1
mov     ax, [ebp+56h]
add     eax, 20h ; ' '
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0C0h
mov     eax, ebp
call    sub_4DD43B
mov     eax, [ebp+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3C00h
mov     esi, esp
call    sub_4DD510
mov     eax, [ebp+1Ch]
add     [esp+30h+var_30], eax
mov     eax, [ebp+24h]
add     [esp+30h+var_28], eax
lea     edx, [esp+30h+var_20]
mov     eax, esp
call    sub_4DD57B
mov     edx, [ebp+54h]
sar     edx, 10h
add     edx, 200h
and     edx, 0FFFh
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ah
sbb     eax, edx
sar     eax, 0Ah
movsx   ebx, ax
mov     edx, [esp+30h+var_1E]
sar     edx, 10h
mov     eax, [esp+0Eh]
sar     eax, 10h
call    sub_463B56
test    eax, eax
jnz     short loc_464444
mov     eax, [esp+30h+var_18]
or      byte ptr [eax], 8
mov     word ptr [eax+4], 78h ; 'x'

loc_46443C:
inc     byte ptr [ebp+0Ah]
jmp     def_4642E4      ; jumptable 004642E4 default case

loc_464444:
mov     eax, [esp+30h+var_18]
mov     bx, [eax+4]
test    bx, bx
jg      short loc_464460

loc_464451:
mov     word ptr [eax+4], 0
mov     byte ptr [ebp+0Ah], 4
jmp     loc_46476A

loc_464460:
mov     ecx, ebx
dec     ecx
mov     [eax+4], cx
jmp     def_4642E4      ; jumptable 004642E4 default case

loc_46446C:             ; jumptable 004642E4 case 2
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, ebp
call    sub_4DD43B
mov     eax, [ebp+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3C00h
mov     esi, esp
call    sub_4DD510
mov     eax, [ebp+1Ch]
add     [esp+30h+var_30], eax
mov     eax, [ebp+24h]
add     [esp+30h+var_28], eax
lea     edx, [esp+30h+var_20]
mov     eax, esp
call    sub_4DD57B
mov     edx, [ebp+54h]
sar     edx, 10h
add     edx, 200h
and     edx, 0FFFh
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ah
sbb     eax, edx
sar     eax, 0Ah
movsx   ebx, ax
mov     edx, [esp+30h+var_1E]
sar     edx, 10h
mov     eax, [esp+0Eh]
sar     eax, 10h
call    sub_463B56
test    eax, eax
jz      short loc_464505
mov     ax, [ebp+56h]
add     eax, 20h ; ' '
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0C0h
mov     eax, ebp
call    sub_4DD43B
jmp     short loc_464534

loc_464505:
mov     ecx, 0FFFFh
xor     ebx, ebx
mov     edx, offset unk_516C18
lea     eax, [esp+30h+var_20]
call    sub_42C5B7
cmp     eax, 0FFFFFD80h
jle     short loc_464534
mov     eax, [esp+30h+var_18]
mov     word ptr [eax+0Ah], 0
or      byte ptr [eax+1], 4
jmp     loc_46443C

loc_464534:
mov     eax, [esp+30h+var_18]
mov     di, [eax+4]
test    di, di
jle     loc_464451
mov     edx, edi
dec     edx
mov     [eax+4], dx
jmp     def_4642E4      ; jumptable 004642E4 default case

loc_464551:             ; jumptable 004642E4 case 3
cmp     word ptr [edx+0Ah], 0Ah
jnz     short loc_46455E
mov     word ptr [edx+16h], 8

loc_46455E:
mov     eax, [esp+30h+var_18]
mov     dx, [eax+0Ah]
cmp     dx, 1Eh
jnz     short loc_464574
mov     word ptr [eax+16h], 0Ch
jmp     short loc_464580

loc_464574:
cmp     dx, 32h ; '2'
jnz     short loc_464580
mov     word ptr [eax+16h], 10h

loc_464580:
mov     eax, [esp+30h+var_18]
cmp     word ptr [eax+0Ah], 3Ch ; '<'
jge     short loc_46459B
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, ebp
call    sub_4DD43B

loc_46459B:
mov     eax, [esp+30h+var_18]
mov     ax, [eax+16h]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
cmp     eax, 0FFFFFF40h
jg      short loc_4645D4
mov     eax, [esp+30h+var_18]
test    byte ptr [eax+19h], 10h
jnz     short loc_4645D4
cmp     dword ptr [eax+1Ch], 1
jnz     def_4642E4      ; jumptable 004642E4 default case

loc_4645D4:
mov     eax, [esp+30h+var_18]
mov     word ptr [eax+4], 0
jmp     loc_46443C

loc_4645E3:             ; jumptable 004642E4 case 4
mov     ax, [edx+16h]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [esp+30h+var_18]
cmp     word ptr [eax+4], 4
jnz     loc_464686
and     byte ptr [ebp+0], 0FDh
call    sub_4DDF54
test    eax, eax
jz      short loc_46467C
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+3], 1
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
lea     edi, [eax+14h]
lea     esi, [ebp+14h]
movsd
movsd
sub     dword ptr [eax+20h], 0C8h
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
lea     edi, [eax+54h]
lea     esi, [ebp+54h]
movsd
movsd
xor     ecx, ecx
mov     ebx, 0FFFFFC00h
mov     edx, 0FFFFFD00h
call    sub_4DD43B

loc_46467C:
lea     edx, [ebp+14h]
mov     eax, ebp
call    sub_4AF9F8

loc_464686:
mov     eax, [esp+30h+var_18]
test    byte ptr [eax+4], 3
jnz     short loc_4646F7
call    sub_4DE13B
mov     edx, eax
mov     esi, eax
test    eax, eax
jz      short loc_4646EA
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3Fh
mov     ax, [ebp+14h]
add     eax, ebx
mov     [edx+48h], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3Fh
mov     ax, [ebp+16h]
add     eax, ebx
mov     [edx+4Ah], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3Fh
mov     ax, [ebp+18h]
add     eax, ebx
mov     [edx+4Ch], ax

loc_4646EA:
lea     edx, [esi+48h]
mov     eax, 0A1h
call    sub_4D8BC3

loc_4646F7:
mov     eax, [esp+30h+var_18]
mov     cx, [eax+4]
cmp     cx, 9
jz      loc_46443C
mov     esi, ecx
inc     esi
mov     [eax+4], si
jmp     short def_4642E4 ; jumptable 004642E4 default case

loc_464712:             ; jumptable 004642E4 case 5
mov     eax, edx
mov     dl, [edx]
or      dl, 1
mov     [eax], dl

def_4642E4:             ; jumptable 004642E4 default case
cmp     byte ptr [ebp+0Ah], 4
jnb     short loc_46476A
call    sub_4DE13B
test    eax, eax
jz      short loc_46476A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 14h
mov     byte ptr [eax+0Fh], 8
mov     dx, [ebp+14h]
mov     [eax+1Ch], dx
mov     dx, [ebp+16h]
mov     [eax+1Eh], dx
mov     dx, [ebp+18h]
mov     [eax+20h], dx
mov     edx, [esp+30h+var_18]
mov     dl, [edx+2]
and     dl, 0Fh
mov     [eax+9], dl

loc_46476A:
mov     eax, [esp+30h+var_18]
inc     word ptr [eax+0Ah]
add     esp, 1Ch
jmp     loc_463E8E
sub_4642C6 endp



; Attributes: thunk

sub_46477A proc near
jmp     sub_4DE2F6
sub_46477A endp




sub_46477F proc near
push    edx
mov     word ptr [eax+15Eh], 4210h
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_46478E[edx*4]
pop     edx
retn
sub_46477F endp




sub_464797 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], 0
mov     word ptr [ecx+56h], 0C00h
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+44h], 1640h
mov     word ptr [ecx+46h], 0EF50h
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0FFC0h
mov     word ptr [ecx+4Eh], 30h ; '0'
mov     word ptr [ecx+50h], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_464797 endp



; Attributes: thunk

sub_46480A proc near
jmp     sub_4DEADD
sub_46480A endp




sub_46480F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
mov     edx, [esi+44h]
sar     edx, 10h
shl     edx, 0Ch
mov     ecx, [esi+20h]
sub     ecx, edx
mov     [esi+20h], ecx
mov     edx, ecx
sar     edx, 10h
mov     [esi+16h], dx
mov     dx, [esi+4Ch]
add     [esi+44h], dx
mov     dx, [esi+4Eh]
add     [esi+46h], dx
mov     dx, [esi+50h]
add     [esi+48h], dx
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46480F endp




sub_464862 proc near
mov     word ptr [eax+4Ch], 0FFC0h
mov     byte ptr [eax+8], 4
jmp     sub_4DEADD
sub_464862 endp




sub_464871 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ax, [eax+4Ch]
add     [esi+44h], ax
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     ax, [esi+50h]
add     [esi+48h], ax
mov     ax, [esi+44h]
neg     eax
movsx   edx, ax
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+44h]
sar     eax, 10h
shl     eax, 0Ch
mov     edx, [esi+20h]
sub     edx, eax
mov     [esi+20h], edx
mov     eax, edx
sar     eax, 10h
mov     [esi+16h], ax
mov     eax, esi
call    sub_4DEADD
mov     eax, ds:dword_560C04
mov     edx, [esi+1Ch]
mov     [eax+1Ch], edx
mov     edx, [esi+20h]
add     edx, 2600000h
mov     [eax+20h], edx
mov     edx, [esi+24h]
mov     [eax+24h], edx
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_464871 endp




sub_4648F1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+3A8h]
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
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
mov     word ptr [ecx+15Eh], 4210h
call    rand_
mov     [ebp+16h], ax
movzx   esi, byte ptr [ecx+8]
mov     edx, ebp
mov     eax, ecx
call    ds:funcs_46493F[esi*4]
test    byte ptr [ebp+14h], 80h
jnz     short loc_464957
mov     dl, [ecx+0ACh]
cmp     dl, 1
jnz     short loc_46497F

loc_464957:
mov     al, [ecx+0ADh]
mov     bl, [ecx+0ACh]
cmp     al, bl
jz      short loc_464976
xor     edx, edx
mov     dl, bl
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4649C7

loc_464976:
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_4649C7

loc_46497F:
mov     esi, offset word_560E0C
cmp     dl, [ecx+0ADh]
jz      short loc_46499F
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
jmp     short loc_4649A6

loc_46499F:
mov     eax, ecx
call    sub_4DEB53

loc_4649A6:
mov     ax, [ecx+54h]
mov     [esi], ax
test    ax, ax
jz      short loc_4649B6
xor     eax, eax
jmp     short loc_4649BC

loc_4649B6:
mov     eax, [ecx+56h]
sar     eax, 10h

loc_4649BC:
mov     [esi+4], ax
mov     eax, ecx
call    sub_4DF795

loc_4649C7:
mov     eax, ecx
call    sub_42C592
mov     esi, eax
mov     edx, eax
mov     dword ptr [ebp+30h], 0
mov     eax, ecx
call    sub_42DE56
mov     [ebp+2Ch], eax
test    byte ptr [ebp+2Dh], 10h
jnz     short loc_4649FD
mov     ebx, [ecx+14h]
sar     ebx, 10h
movsx   eax, si
cmp     ebx, eax
jnz     short loc_4649FD
mov     dword ptr [ebp+30h], 1

loc_4649FD:
movsx   eax, dx
cmp     eax, 0FFFFFFFFh
jnz     short loc_464A09
xor     eax, eax
jmp     short loc_464A0E

loc_464A09:
mov     eax, 1

loc_464A0E:
mov     [ebp+34h], eax
test    byte ptr [ebp+14h], 80h
jz      short loc_464A1E
mov     eax, 80h
jmp     short loc_464A20

loc_464A1E:
xor     eax, eax

loc_464A20:
push    eax
push    offset unk_800000
xor     eax, eax
mov     ax, [ebp+1Eh]
or      eax, 5880000h
push    eax
lea     eax, [ebp+38h]
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
lea     eax, [ecx+190h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0C0h
call    sub_4E01FC
mov     dword ptr [ebp+38h], 0
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4648F1 endp




sub_464A61 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     word ptr [edx+14h], 2
mov     word ptr [edx+18h], 0
mov     word ptr [edx+1Ah], 0
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, ds:dword_55A10C
mov     eax, [ebx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [edx+1Eh], ax
cmp     byte ptr [ecx+0Ch], 1
jnz     short loc_464AA2
movsx   ax, byte ptr [ecx+0Dh]
shl     eax, 9
mov     [edx+26h], ax
jmp     short loc_464AA8

loc_464AA2:
mov     word ptr [edx+26h], 0

loc_464AA8:
mov     word ptr [edx+22h], 8
mov     ax, [edx+22h]
mov     [edx+20h], ax
movsx   ax, byte ptr [ecx+0Eh]
imul    eax, 0C8h
sub     eax, 6A4h
mov     [edx+28h], ax
mov     dword ptr [edx+2Ch], 0
mov     dword ptr [edx+30h], 0
mov     dword ptr [edx+34h], 0
mov     word ptr [edx+2Ah], 0FFFFh
mov     dword ptr [edx+38h], 0
mov     dword ptr [edx+3Ch], 0
lea     eax, [edx+40h]
xor     ebx, ebx
mov     edx, 0Bh
call    sub_4E19B9
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+64h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Bh]
xor     ah, ah
shl     eax, 4
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_516C98
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
pop     ecx
pop     ebx
retn
sub_464A61 endp




sub_464B7F proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
test    byte ptr [edx+14h], 2
jz      short loc_464B93
mov     eax, ecx
call    sub_464C82

loc_464B93:
test    byte ptr [ebx+14h], 80h
jnz     short loc_464BB4
mov     edx, ebx
mov     eax, ecx
call    sub_464CF1
mov     edx, ebx
mov     eax, ecx
call    sub_464F5C
mov     edx, ebx
mov     eax, ecx
call    sub_46502D

loc_464BB4:
mov     al, [ecx+0ACh]
cmp     al, 1
jb      short loc_464BC9
jbe     short loc_464BE9
cmp     al, 2
jz      short loc_464C16
jmp     loc_464C2B

loc_464BC9:
test    al, al
jnz     short loc_464C2B
test    byte ptr [ebx+14h], 4
jz      short loc_464BDA
mov     byte ptr [ecx+0ACh], 1

loc_464BDA:
test    byte ptr [ebx+15h], 1
jz      short loc_464C2B
mov     byte ptr [ecx+0ACh], 2
jmp     short loc_464C2B

loc_464BE9:
mov     esi, [ecx+0A4h]
sar     esi, 18h
cmp     esi, 0FFFFFFFFh
jnz     short loc_464BDA
test    byte ptr [ebx+14h], 4
jz      short loc_464C0D
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
jmp     short loc_464BDA

loc_464C0D:
mov     byte ptr [ecx+0ACh], 0
jmp     short loc_464BDA

loc_464C16:
mov     esi, [ecx+0A4h]
sar     esi, 18h
cmp     esi, 0FFFFFFFFh
jnz     short loc_464C2B
mov     byte ptr [ecx+0ACh], 3

loc_464C2B:
movzx   esi, byte ptr [ecx+9]
mov     edx, ebx
mov     eax, ecx
call    ds:funcs_464C33[esi*4]
mov     dh, [ebx+14h]
test    dh, 1
jz      short loc_464C7E
mov     al, [ecx+9]
cmp     al, 1
jb      short loc_464C51
jbe     short loc_464C66
cmp     al, 2
jz      short loc_464C6D
jmp     short loc_464C74

loc_464C51:
test    al, al
jnz     short loc_464C74
test    dh, 80h
jz      short loc_464C60

loc_464C5A:
mov     byte ptr [ecx+9], 2
jmp     short loc_464C74

loc_464C60:
mov     byte ptr [ecx+9], 1
jmp     short loc_464C74

loc_464C66:
test    dh, 80h
jnz     short loc_464C5A
jmp     short loc_464C70

loc_464C6D:
mov     [ecx+8], al

loc_464C70:
mov     byte ptr [ecx+9], 0

loc_464C74:
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ebx+14h], 0FEh

loc_464C7E:
pop     esi
pop     ecx
pop     ebx
retn
sub_464B7F endp




sub_464C82 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, [edx+38h]
and     eax, 0FFFFFFh
jz      short loc_464CEA
test    byte ptr [edx+3Bh], 18h
jz      short loc_464CD6
mov     dx, [ebx+6Eh]
mov     [ebx+0B2h], dx
sub     edx, eax
mov     [ebx+6Eh], dx
test    dx, dx
jg      short loc_464CBE
mov     dh, [ecx+14h]
and     dh, 44h
mov     [ecx+14h], dh
mov     al, dh
or      al, 81h
mov     [ecx+14h], al

loc_464CBE:
lea     edx, [ebx+14h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [ebx+15Eh], 7FFFh
jmp     short loc_464CE3

loc_464CD6:
lea     edx, [ebx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_464CE3:
or      byte ptr [ecx+14h], 4
pop     ecx
pop     ebx
retn

loc_464CEA:
and     byte ptr [edx+14h], 0FBh
pop     ecx
pop     ebx
retn
sub_464C82 endp




sub_464CF1 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
cmp     byte ptr [eax+0ACh], 1
jnz     short loc_464D0B
mov     dl, [edx+14h]
and     dl, 0DFh
mov     [ecx+14h], dl

loc_464D0B:
mov     dh, [ecx+14h]
test    dh, 20h
jz      short loc_464D51
test    dh, 40h
jz      short loc_464D2D
test    byte ptr [ecx+1Ah], 3
jnz     short loc_464D27
mov     edx, ecx
mov     eax, ebx
call    sub_464DAA

loc_464D27:
inc     word ptr [ecx+1Ah]
jmp     short loc_464D6D

loc_464D2D:
mov     di, [ebx+54h]
cmp     di, 200h
jge     short loc_464D45
mov     eax, edi
add     eax, 20h ; ' '
mov     [ebx+54h], ax
jmp     short loc_464D6D

loc_464D45:
mov     word ptr [ebx+54h], 200h
or      byte ptr [ecx+14h], 40h
jmp     short loc_464D6D

loc_464D51:
mov     word ptr [ecx+1Ah], 0
and     byte ptr [ecx+14h], 0BFh
mov     dx, [ebx+54h]
test    dx, dx
jle     short loc_464D6D
mov     esi, edx
sub     esi, 20h ; ' '
mov     [ebx+54h], si

loc_464D6D:
cmp     dword ptr [ebx+80h], 90000h
jnb     short loc_464D95
mov     al, [ecx+15h]
test    al, 2
jnz     short loc_464D95
mov     ah, al
or      ah, 2
mov     [ecx+15h], ah
lea     edx, [ebx+14h]
mov     eax, 150h
call    sub_4D8BC3

loc_464D95:
cmp     dword ptr [ebx+80h], 240000h
jbe     short loc_464DA5
and     byte ptr [ecx+15h], 0FDh

loc_464DA5:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_464CF1 endp




sub_464DAA proc near

var_58= dword ptr -58h
var_54= byte ptr -54h
var_44= byte ptr -44h
var_34= byte ptr -34h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 40h
push    eax
xor     edi, edi
mov     eax, [eax+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 600h
lea     esi, [esp+58h+var_54]
call    sub_4DD510
lea     edx, [esp+58h+var_24]
lea     eax, [esp+58h+var_54]
call    sub_4DD57B
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_18], eax
test    eax, eax
jz      loc_464E87
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 24h ; '$'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 480h
mov     ebx, 1900h
mov     edx, 0C80h
lea     esi, [esp+58h+var_44]
call    sub_4DD510
lea     edi, [ebp+1Ch]
lea     esi, [esp+58h+var_44]
movsd
movsd
movsd
movsd
mov     eax, [esp+58h+var_58]
mov     eax, [eax+1Ch]
add     [ebp+1Ch], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+20h]
add     [ebp+20h], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+24h]
add     [ebp+24h], eax
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 6000h
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
mov     edi, 1

loc_464E87:
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_1C], eax
test    eax, eax
jz      loc_464F31
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 24h ; '$'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 0FFFFFB80h
mov     ebx, 1900h
mov     edx, 0C80h
lea     esi, [esp+58h+var_34]
call    sub_4DD510
lea     edi, [ebp+1Ch]
lea     esi, [esp+58h+var_34]
movsd
movsd
movsd
movsd
mov     eax, [esp+58h+var_58]
mov     eax, [eax+1Ch]
add     [ebp+1Ch], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+20h]
add     [ebp+20h], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+24h]
add     [ebp+24h], eax
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 6000h
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
jmp     short loc_464F35

loc_464F31:
test    edi, edi
jz      short loc_464F53

loc_464F35:
mov     ecx, [esp+58h+var_18]
test    ecx, ecx
jz      short loc_464F42
lea     edx, [ecx+14h]
jmp     short loc_464F49

loc_464F42:
mov     edx, [esp+58h+var_1C]
add     edx, 14h

loc_464F49:
mov     eax, 0D0h
call    sub_4D8BC3

loc_464F53:
add     esp, 44h

loc_464F56:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_464DAA endp




sub_464F5C proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ebx, edx
mov     ah, [edx+14h]
test    ah, 10h
jz      short loc_464F95
mov     dx, [ecx+56h]
add     edx, 20h ; ' '
and     dh, 0Fh
mov     [ecx+56h], dx
mov     edx, [ecx+56h]
sar     edx, 10h
cmp     edx, 0FFFFFF80h
jle     short loc_464F8A
sub     word ptr [ecx+58h], 8

loc_464F8A:
mov     word ptr [ebx+2Ah], 0FFFFh
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_464F95:
test    ah, 8
jz      short loc_464FC0
mov     dx, [ecx+56h]
sub     edx, 20h ; ' '
and     dh, 0Fh
mov     [ecx+56h], dx
mov     di, [ecx+58h]
cmp     di, 80h
jge     short loc_464F8A
mov     eax, edi
add     eax, 8
mov     [ecx+58h], ax
jmp     short loc_464F8A

loc_464FC0:
mov     edx, [edx+28h]
sar     edx, 10h
cmp     edx, 0FFFFFFFFh
jnz     short loc_465008
mov     si, [ecx+58h]
test    si, si
jz      short loc_464FEC
jle     short loc_464FE1
mov     edx, esi
sub     edx, 8
mov     [ecx+58h], dx
jmp     short loc_464FEC

loc_464FE1:
mov     eax, esi
add     eax, 8
mov     [ecx+58h], ax

loc_464FEC:
cmp     word ptr [ecx+58h], 0
jnz     short loc_465028
mov     edx, [ebx+14h]
sar     edx, 10h
sar     edx, 4
and     edx, 3
mov     [ebx+2Ah], dx
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_465008:
mov     esi, 24h ; '$'
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     dx, ds:word_516CA4[edx*2]
mov     [ecx+58h], dx
inc     word ptr [ebx+2Ah]
and     byte ptr [ebx+2Bh], 7Fh

loc_465028:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_464F5C endp




sub_46502D proc near
push    ebx
push    ecx
push    esi
mov     ecx, [eax+12h]
sar     ecx, 10h
sub     ecx, 1200h
test    ecx, ecx
jge     short loc_465042
neg     ecx

loc_465042:
cmp     ecx, 2C00h
jge     short loc_46506C
mov     ecx, [eax+16h]
sar     ecx, 10h
add     ecx, 600h
test    ecx, ecx
jge     short loc_46505C
neg     ecx

loc_46505C:
cmp     ecx, 2A00h
jge     short loc_46506C
mov     ebx, [edx+26h]
sar     ebx, 10h
jmp     short loc_465071

loc_46506C:
mov     ebx, 0FFFFF830h

loc_465071:
mov     esi, [eax+14h]
sar     esi, 10h
movsx   ecx, bx
cmp     esi, ecx
jle     short loc_4650B2
mov     cx, [edx+20h]
cmp     cx, 20h ; ' '
jge     short loc_465091
mov     esi, ecx
add     esi, 8
mov     [edx+20h], si

loc_465091:
mov     word ptr [edx+22h], 8
mov     dx, [edx+20h]
sub     [eax+16h], dx
mov     edx, [eax+14h]
sar     edx, 10h
movsx   ecx, bx
cmp     edx, ecx
jge     short loc_4650F2

loc_4650AC:
mov     [eax+16h], bx
jmp     short loc_4650F2

loc_4650B2:
jge     short loc_4650E4
mov     cx, [edx+22h]
cmp     cx, 20h ; ' '
jge     short loc_4650C7
mov     esi, ecx
add     esi, 8
mov     [edx+22h], si

loc_4650C7:
mov     word ptr [edx+20h], 8
mov     dx, [edx+22h]
add     [eax+16h], dx
mov     ecx, [eax+14h]
sar     ecx, 10h
movsx   edx, bx
cmp     ecx, edx
jle     short loc_4650F2
jmp     short loc_4650AC

loc_4650E4:
mov     word ptr [edx+22h], 8
mov     bx, [edx+22h]
mov     [edx+20h], bx

loc_4650F2:
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
pop     esi
pop     ecx
pop     ebx
retn
sub_46502D endp




sub_465102 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, [eax+54h]
sar     esi, 10h
lea     ebx, [eax+1Ch]
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     esi, eax
test    esi, esi
jge     short loc_46513D
mov     ecx, [ecx+54h]
sar     ecx, 10h
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     ecx, eax
mov     eax, ecx
neg     eax
jmp     short loc_465153

loc_46513D:
mov     ecx, [ecx+54h]
sar     ecx, 10h
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     ecx, eax
mov     eax, ecx

loc_465153:
cmp     eax, 50h ; 'P'
jge     short loc_465162
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_465162:
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_465102 endp




sub_465169 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
mov     esi, edx
mov     ebp, offset byte_5F8364
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46519C
mov     edx, [edx+14h]
sar     edx, 10h
mov     ebx, 28h ; '('
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     edx, 5Ah ; 'Z'
mov     [esi+18h], dx
inc     byte ptr [edi+0Ah]

loc_46519C:
lea     eax, [esi+40h]
mov     edx, edi
call    sub_4E19CA
mov     [esp+18h+var_18], eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 300h
mov     eax, edi
call    sub_4DD43B
mov     dx, [esi+26h]
test    dx, dx
jl      short loc_4651CB
mov     ebx, edx
sub     ebx, 30h ; '0'
mov     [esi+26h], bx

loc_4651CB:
cmp     [esp+18h+var_18], 0
jz      short loc_4651D7
or      byte ptr [esi+14h], 20h
jmp     short loc_465213

loc_4651D7:
and     byte ptr [esi+14h], 0DFh
cmp     byte ptr [edi+0Ch], 2
jnz     short loc_465213
cmp     word ptr [esi+18h], 0
jge     short loc_465213
cmp     byte ptr [edi+0Fh], 0
jnz     short loc_465213
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [edi+14h]
mov     ecx, 800h
call    sub_4DE552
test    ax, ax
jle     short loc_46520F
or      byte ptr [esi+14h], 11h
jmp     short loc_465213

loc_46520F:
or      byte ptr [esi+14h], 9

loc_465213:
cmp     byte ptr [edi+0Ch], 1
jnz     short loc_465231
cmp     word ptr [esi+26h], 0
jge     short loc_465231
mov     dl, [esi+14h]
and     dl, 0D6h
mov     [esi+14h], dl
mov     dh, dl
or      dh, 9
mov     [esi+14h], dh

loc_465231:
dec     word ptr [esi+18h]
add     esp, 4
jmp     loc_464F56
sub_465169 endp




sub_46523D proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46526D
cmp     byte ptr [edi+0Ch], 1
jnz     short loc_465259
mov     word ptr [esi+18h], 40h ; '@'
jmp     short loc_46526A

loc_465259:
mov     ax, [esi+16h]
xor     ah, ah
and     al, 1Fh
add     eax, 40h ; '@'
mov     [esi+18h], ax

loc_46526A:
inc     byte ptr [edi+0Ah]

loc_46526D:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 120h
mov     eax, edi
call    sub_4DD43B
mov     bl, [edi+0Ch]
cmp     bl, 1
jz      short loc_46528B
cmp     byte ptr [edi+0Fh], 1
jnz     short loc_4652B1

loc_46528B:
lea     eax, [esi+40h]
call    sub_4E19B4
cmp     word ptr [esi+18h], 0
jnz     short loc_4652E2
mov     byte ptr [edi+0Ch], 0
mov     ah, [esi+14h]
and     ah, 0E6h
mov     [esi+14h], ah
mov     dl, ah
or      dl, 1
mov     [esi+14h], dl
jmp     short loc_4652E2

loc_4652B1:
cmp     bl, 2
jnz     short loc_4652E2
lea     eax, [esi+40h]
mov     edx, edi
call    sub_4E19CA
mov     eax, edi
call    sub_465102
test    eax, eax
jnz     short loc_4652D2
cmp     word ptr [esi+18h], 0
jnz     short loc_4652E2

loc_4652D2:
mov     ch, [esi+14h]
and     ch, 0E6h
mov     [esi+14h], ch
mov     al, ch
or      al, 1
mov     [esi+14h], al

