loc_440CB9:
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short loc_440D12
mov     ecx, [eax+38h]
mov     byte ptr [ecx+8], 0
mov     ecx, [eax+38h]
mov     bx, [edx+56h]
mov     [ecx+64h], bx
mov     ecx, [eax+38h]
mov     dword ptr [ecx+9Ch], 20h ; ' '
mov     ecx, [eax+38h]
mov     dword ptr [ecx+0A0h], 10h
mov     byte ptr [edx+0Ch], 0
mov     word ptr [eax+4], 8
mov     byte ptr [edx+0Ah], 2

loc_440D01:
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     short loc_440D12
or      byte ptr [eax], 1

loc_440D12:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_440C7F endp

align 4
jpt_440D56 dd offset loc_440D5D ; jump table for switch statement
dd offset loc_440D6E
dd offset loc_440DAE
dd offset loc_440E2A
dd offset loc_440EBB



sub_440D2C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+408h]
test    byte ptr [esi+17h], 2
jz      short loc_440D46
mov     word ptr [esi+8], 0

loc_440D46:
mov     al, [ebp+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_440D56      ; jumptable 00440D56 default case
and     eax, 0FFh
jmp     jpt_440D56[eax*4] ; switch jump

loc_440D5D:             ; jumptable 00440D56 case 0
mov     word ptr [esi+4], 0Fh
mov     byte ptr [ebp+0ACh], 15h
mov     byte ptr [ebp+0Ah], 1

loc_440D6E:             ; jumptable 00440D56 case 1
mov     bx, [esi+4]
dec     ebx
mov     [esi+4], bx
test    bx, bx
jge     def_440D56      ; jumptable 00440D56 default case
mov     byte ptr [ebp+0Ah], 2
mov     byte ptr [ebp+0ACh], 18h
mov     word ptr [ebp+44h], 0Fh
mov     word ptr [esi+4], 0Fh
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [esi+8], ax

loc_440DAE:             ; jumptable 00440D56 case 2
dec     word ptr [esi+4]
test    byte ptr [esi+17h], 2
jz      short loc_440DBE
mov     word ptr [ebp+44h], 0

loc_440DBE:
mov     eax, 8
sub     ax, [esi+4]
shl     eax, 2
mov     [ebp+46h], ax
mov     ebx, [ebp+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_440D56      ; jumptable 00440D56 default case
test    ah, 0Fh
jz      short loc_440E05
mov     word ptr [ebp+44h], 0

loc_440E05:
test    dh, 10h
jz      def_440D56      ; jumptable 00440D56 default case
mov     word ptr [esi+4], 0Fh
mov     word ptr [esi+8], 0
mov     byte ptr [ebp+0ACh], 17h
mov     byte ptr [ebp+0Ah], 3
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440E2A:             ; jumptable 00440D56 case 3
mov     cx, [esi+4]
dec     ecx
mov     [esi+4], cx
test    cx, cx
jge     short loc_440E4B
mov     byte ptr [ebp+0Ah], 4
mov     word ptr [esi+4], 12h
mov     byte ptr [ebp+0ACh], 23h ; '#'
jmp     short loc_440E5B

loc_440E4B:
mov     ax, [ebp+44h]
test    ax, ax
jz      short loc_440E5B
mov     edx, eax
dec     edx
mov     [ebp+44h], dx

loc_440E5B:
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     edx, [ebp+14h]
sar     edx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     edx, eax
cmp     edx, 10h
jle     def_440D56      ; jumptable 00440D56 default case
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
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440EBB:             ; jumptable 00440D56 case 4
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     def_440D56      ; jumptable 00440D56 default case
or      byte ptr [esi], 1
jmp     def_440D56      ; jumptable 00440D56 default case
sub_440D2C endp




sub_440ED5 proc near
push    ebx
push    edx
push    esi
mov     edx, eax
add     eax, 408h
mov     bl, [edx+0Ah]
cmp     bl, 1
jb      short loc_440EF2
jbe     short loc_440F17
cmp     bl, 2
jz      short loc_440F39
pop     esi
pop     edx
pop     ebx
retn

loc_440EF2:
test    bl, bl
jnz     short loc_440F4A
and     byte ptr [eax], 0F7h
mov     word ptr [eax+4], 0Ah
mov     word ptr [eax+8], 0
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 20h ; ' '
mov     byte ptr [edx+110h], 7

loc_440F17:
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short loc_440F39
mov     word ptr [eax+4], 0Ah
mov     byte ptr [edx+0ACh], 8
mov     byte ptr [edx+110h], 6

loc_440F39:
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     short loc_440F4A
or      byte ptr [eax], 9

loc_440F4A:
pop     esi
pop     edx
pop     ebx
retn
sub_440ED5 endp

align 10h
jpt_440F7D dd offset loc_440F84 ; jump table for switch statement
dd offset loc_440FEB
dd offset loc_441035
dd offset loc_44109E



sub_440F60 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
and     eax, 0FFh
jmp     jpt_440F7D[eax*4] ; switch jump

loc_440F84:             ; jumptable 00440F7D case 0
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0
and     byte ptr [esi+57h], 0Fh
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 21h ; '!'
mov     word ptr [esi+44h], 0Dh
mov     word ptr [esi+46h], 0FFE8h
mov     byte ptr [esi+110h], 7
cmp     byte ptr [esi+0Ch], 0
jz      short loc_440FEB ; jumptable 00440F7D case 1
mov     eax, [edi+38h]
mov     byte ptr [eax+8], 0
mov     eax, [edi+38h]
mov     dx, [esi+56h]
mov     [eax+64h], dx
mov     eax, [edi+38h]
mov     dword ptr [eax+9Ch], 20h ; ' '
mov     eax, [edi+38h]
mov     dword ptr [eax+0A0h], 10h
mov     byte ptr [esi+0Ch], 0

loc_440FEB:             ; jumptable 00440F7D case 1
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jl      short loc_441024
cmp     cx, 2
jge     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case

loc_441024:
mov     word ptr [edi+4], 7
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 22h ; '"'

loc_441035:             ; jumptable 00440F7D case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
mov     eax, 4
sub     eax, ebx
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      short def_440F7D ; jumptable 00440F7D default case
; jumptable 00441115 default case
test    ah, 0Fh
jz      short loc_44107F
mov     word ptr [esi+44h], 0

loc_44107F:
test    dh, 10h
jz      short def_440F7D ; jumptable 00440F7D default case
; jumptable 00441115 default case
cmp     word ptr [edi+4], 0
jg      short def_440F7D ; jumptable 00440F7D default case
; jumptable 00441115 default case
mov     word ptr [edi+4], 12h
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 23h ; '#'
jmp     short def_440F7D ; jumptable 00440F7D default case
; jumptable 00441115 default case

loc_44109E:             ; jumptable 00440F7D case 3
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx

loc_4410AA:             ; jumptable 00440F7D default case
jge     short def_440F7D ; jumptable 00441115 default case
or      byte ptr [edi], 1
mov     byte ptr [esi+110h], 6
or      byte ptr [edi], 8

def_440F7D:             ; jumptable 00440F7D default case
or      byte ptr [esi], 2 ; jumptable 00441115 default case
mov     ax, [edi+6]
inc     eax
xor     ah, ah
and     al, 3
mov     [edi+6], ax
cmp     word ptr [esi+6Eh], 0
jg      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
test    ax, ax
jnz     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
and     byte ptr [esi], 0FDh
jmp     def_440601      ; jumptable 00440601 default case
sub_440F60 endp         ; jumptable 004412B9 default case
; jumptable 004415E9 default case
align 4
jpt_441115 dd offset loc_44111C ; jump table for switch statement
dd offset loc_441191
dd offset loc_4411DB
dd offset loc_441250
dd offset loc_441273



sub_4410FC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      short def_440F7D ; jumptable 00440F7D default case
; jumptable 00441115 default case
and     eax, 0FFh
jmp     jpt_441115[eax*4] ; switch jump

loc_44111C:             ; jumptable 00441115 case 0
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+6], 0
mov     word ptr [edi+8], 0
and     byte ptr [esi+57h], 0Fh
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 25h ; '%'
mov     word ptr [esi+44h], 0FFF5h
mov     word ptr [esi+46h], 0FFE8h
mov     byte ptr [esi+110h], 7
cmp     byte ptr [esi+0Ch], 0
jz      short loc_441191 ; jumptable 00441115 case 1
mov     eax, [edi+38h]
mov     byte ptr [eax+8], 0
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     edx, eax
mov     eax, [edi+38h]
mov     [eax+64h], dx
mov     eax, [edi+38h]
mov     dword ptr [eax+9Ch], 20h ; ' '
mov     eax, [edi+38h]
mov     dword ptr [eax+0A0h], 10h
mov     byte ptr [esi+0Ch], 0

loc_441191:             ; jumptable 00441115 case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jl      short loc_4411CA
cmp     dx, 2
jge     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case

loc_4411CA:
mov     word ptr [edi+4], 0Bh
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 26h ; '&'

loc_4411DB:             ; jumptable 00441115 case 2
dec     word ptr [edi+4]
mov     eax, 8
sub     ax, [edi+4]
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
test    ah, 0Fh
jz      short loc_441226
mov     word ptr [esi+44h], 0

loc_441226:
test    dh, 10h
jz      def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
cmp     word ptr [edi+4], 0
jg      def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
mov     word ptr [edi+4], 26h ; '&'
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 27h ; '''
jmp     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case

loc_441250:             ; jumptable 00441115 case 3
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
mov     word ptr [edi+4], 11h
mov     byte ptr [esi+0Ah], 4
mov     byte ptr [esi+0ACh], 28h ; '('

loc_441273:             ; jumptable 00441115 case 4
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jmp     loc_4410AA
sub_4410FC endp

jpt_4412B9 dd offset loc_4412C0 ; jump table for switch statement
dd offset loc_4412E3
dd offset loc_441306
dd offset loc_44132D
dd offset loc_4413FE
dd offset loc_441428



sub_44129C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
and     eax, 0FFh
jmp     jpt_4412B9[eax*4] ; switch jump

loc_4412C0:             ; jumptable 004412B9 case 0
mov     word ptr [edi+4], 5
mov     word ptr [edi+8], 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 10h
mov     word ptr [esi+44h], 8
mov     word ptr [esi+46h], 0FFF2h

loc_4412E3:             ; jumptable 004412B9 case 1
mov     ax, [edi+4]
dec     eax
mov     [edi+4], ax
test    ax, ax
jge     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
mov     word ptr [edi+4], 0Eh
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 11h

loc_441306:             ; jumptable 004412B9 case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jge     short loc_441320
mov     byte ptr [esi+0Ah], 3
mov     word ptr [esi+44h], 0
jmp     short loc_44132D ; jumptable 004412B9 case 3

loc_441320:
mov     eax, 7
sub     eax, ebx
add     eax, eax
mov     [esi+46h], ax

loc_44132D:             ; jumptable 004412B9 case 3
cmp     byte ptr [esi+0Ah], 3
jnz     short loc_441349
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
mov     eax, 7
sub     eax, ebx
add     eax, eax
mov     [esi+46h], ax

loc_441349:
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
test    ah, 0Fh
jz      short loc_441380
mov     word ptr [esi+44h], 0

loc_441380:
test    dh, 10h
jz      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
test    byte ptr [edi+2], 0Fh
jnz     short loc_4413E8
mov     word ptr [edi+4], 0Eh
mov     byte ptr [esi+0Ah], 4
add     byte ptr [esi+0ACh], 3
cmp     byte ptr [esi+0Ch], 0
jz      short loc_4413DC
mov     eax, [edi+38h]
mov     byte ptr [eax+8], 0
mov     dx, [esi+56h]
add     dh, 8
and     dh, 0Fh
mov     eax, [edi+38h]
mov     [eax+64h], dx
mov     eax, [edi+38h]
mov     dword ptr [eax+9Ch], 20h ; ' '
mov     eax, [edi+38h]
mov     dword ptr [eax+0A0h], 10h
mov     byte ptr [esi+0Ch], 0

loc_4413DC:
mov     byte ptr [esi+110h], 7
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_4413E8:
mov     word ptr [edi+4], 7
mov     byte ptr [esi+0Ah], 5
add     byte ptr [esi+0ACh], 2
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_4413FE:             ; jumptable 004412B9 case 4
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
mov     byte ptr [esi+110h], 6
mov     word ptr [edi+4], 26h ; '&'
mov     byte ptr [esi+0Ah], 5
mov     byte ptr [esi+0ACh], 28h ; '('

loc_441428:             ; jumptable 004412B9 case 5
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
jmp     loc_440C67
sub_44129C endp

align 10h
jpt_44146D dd offset loc_441474 ; jump table for switch statement
dd offset loc_44148B
dd offset loc_4414B4
dd offset loc_4414D3



sub_441450 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
add     eax, 408h
mov     cl, [edx+0Ah]
cmp     cl, 3           ; switch 4 cases
ja      def_44146D      ; jumptable 0044146D default case
and     ecx, 0FFh
jmp     jpt_44146D[ecx*4] ; switch jump

loc_441474:             ; jumptable 0044146D case 0
mov     word ptr [eax+4], 0Eh
mov     word ptr [eax+8], 0
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0Ch

loc_44148B:             ; jumptable 0044146D case 1
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short def_44146D ; jumptable 0044146D default case
mov     cx, [eax+2]
xor     ch, ch
and     cl, 1Fh
add     ecx, 8
mov     [eax+4], cx
mov     byte ptr [edx+0Ah], 2
mov     byte ptr [edx+0ACh], 0Dh

loc_4414B4:             ; jumptable 0044146D case 2
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     short def_44146D ; jumptable 0044146D default case
mov     word ptr [eax+4], 7
mov     byte ptr [edx+0Ah], 3
mov     byte ptr [edx+0ACh], 0Eh

loc_4414D3:             ; jumptable 0044146D case 3
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short def_44146D ; jumptable 0044146D default case
or      byte ptr [eax], 1

def_44146D:             ; jumptable 0044146D default case
test    byte ptr [eax], 10h
jz      short loc_4414F0
mov     byte ptr [edx+0Dh], 0
or      byte ptr [eax], 1

loc_4414F0:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_441450 endp




sub_4414F5 proc near
and     byte ptr [eax], 0FDh
retn
sub_4414F5 endp

align 4
jpt_44152E dd offset def_44152E ; jump table for switch statement
dd offset loc_441535
dd offset loc_44155D
dd offset def_44152E
dd offset loc_441585
dd offset loc_441596



sub_441514 proc near
push    ebx
push    ecx
push    edx
push    edi
lea     edx, [eax+408h]
mov     bl, [eax+0Ah]
cmp     bl, 5           ; switch 6 cases
ja      def_44152E      ; jumptable 0044152E default case, cases 0,3
xor     ecx, ecx
mov     cl, bl
jmp     jpt_44152E[ecx*4] ; switch jump

loc_441535:             ; jumptable 0044152E case 1
or      byte ptr [eax], 2
mov     byte ptr [eax+0Ah], 2
mov     byte ptr [eax+0ACh], 11h
mov     word ptr [edx+4], 8
mov     word ptr [edx+8], 0
mov     byte ptr [eax+10Bh], 0FFh
mov     byte ptr [eax+10Fh], 0FFh

loc_44155D:             ; jumptable 0044152E case 2
mov     di, [edx+4]
dec     edi
mov     [edx+4], di
test    di, di
jge     short loc_44157B
mov     byte ptr [eax+0Ah], 3
mov     byte ptr [eax+0ACh], 0Ah
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_44157B:
sub     word ptr [eax+16h], 4
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_441585:             ; jumptable 0044152E case 4
mov     byte ptr [eax+0Ah], 5
mov     byte ptr [eax+0ACh], 11h
mov     word ptr [edx+4], 8

loc_441596:             ; jumptable 0044152E case 5
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jl      short loc_4415AE
add     word ptr [eax+16h], 8
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4415AE:
mov     byte ptr [eax+0Ah], 6
and     byte ptr [eax], 0FDh

def_44152E:             ; jumptable 0044152E default case, cases 0,3
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_441514 endp

align 4
jpt_4415E9 dd offset loc_4415F0 ; jump table for switch statement
dd offset loc_44164F
dd offset loc_441725
dd offset loc_441748



sub_4415CC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
and     eax, 0FFh
jmp     jpt_4415E9[eax*4] ; switch jump

loc_4415F0:             ; jumptable 004415E9 case 0
mov     byte ptr [esi+0Dh], 0
call    sub_4DE043
mov     [edi+38h], eax
test    eax, eax
jnz     short loc_44160F
mov     byte ptr [esi+9], 0Fh
mov     word ptr [esi+0Ah], 0
jmp     loc_441779

loc_44160F:
mov     byte ptr [eax], 1
mov     eax, [edi+38h]
mov     byte ptr [eax+8], 4
mov     eax, [edi+38h]
mov     byte ptr [eax+2], 6
mov     eax, [edi+38h]
mov     byte ptr [eax+3], 80h
or      byte ptr [esi], 2
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 30h ; '0'
mov     word ptr [edi+4], 0Fh
mov     word ptr [edi+8], 0
mov     byte ptr [esi+10Bh], 0FFh
mov     byte ptr [esi+10Fh], 0FFh

loc_44164F:             ; jumptable 004415E9 case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jl      loc_4416EB
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 40h ; '@'
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
sub     word ptr [esi+16h], 4
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [edi+38h]
mov     bx, [esi+14h]
mov     [eax+14h], bx
mov     bx, [esi+16h]
sub     ebx, 64h ; 'd'
mov     eax, [edi+38h]
mov     [eax+16h], bx
mov     eax, [edi+38h]
mov     bx, [esi+18h]
mov     [eax+18h], bx
mov     esi, [edi+38h]
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     esi, [edi+38h]
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     esi, [edi+38h]
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_4416EB:
mov     eax, [edi+38h]
mov     byte ptr [eax+8], 0
mov     eax, [edi+38h]
mov     bx, [esi+56h]
mov     [eax+64h], bx
mov     eax, [edi+38h]
mov     dword ptr [eax+9Ch], 18h
mov     eax, [edi+38h]
mov     dword ptr [eax+0A0h], 8
mov     byte ptr [esi+0Ch], 0
mov     word ptr [edi+4], 8
mov     byte ptr [esi+0Ah], 2

loc_441725:             ; jumptable 004415E9 case 2
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 11h
mov     word ptr [edi+4], 8

loc_441748:             ; jumptable 004415E9 case 3
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jl      short loc_44176C
add     word ptr [esi+16h], 8
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_44176C:
mov     byte ptr [esi+9], 0Fh
mov     word ptr [esi+0Ah], 0
and     byte ptr [esi], 0FDh

loc_441779:
mov     byte ptr [esi+0Dh], 1
jmp     def_440601      ; jumptable 00440601 default case
sub_4415CC endp         ; jumptable 004412B9 default case
; jumptable 004415E9 default case
align 4
jpt_4417C0 dd offset loc_4417C7 ; jump table for switch statement
dd offset loc_441805
dd offset loc_44192D
dd offset loc_44194F



sub_441794 proc near

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
add     eax, 408h
mov     [esp+20h+var_20], eax
mov     eax, ds:dword_55A00C
mov     [esp+20h+var_1C], eax
mov     al, [ebp+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_4417C0      ; jumptable 004417C0 default case
and     eax, 0FFh
jmp     jpt_4417C0[eax*4] ; switch jump

loc_4417C7:             ; jumptable 004417C0 case 0
or      byte ptr [ebp+0], 2
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0Dh], 0
mov     byte ptr [ebp+0ACh], 30h ; '0'
mov     byte ptr [ebp+10Bh], 0FFh
mov     byte ptr [ebp+10Fh], 0FFh
mov     eax, [esp+20h+var_20]
mov     word ptr [eax+4], 0Fh
mov     word ptr [eax+8], 0
mov     eax, [esp+20h+var_1C]
mov     byte ptr [eax+9], 5
mov     word ptr [eax+0Ah], 0

loc_441805:             ; jumptable 004417C0 case 1
mov     eax, [esp+20h+var_20]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      loc_4418A9
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [ebp+0Bh]
sar     edx, 18h
mov     edx, ds:dword_559FEC[edx*4]
add     edx, 14h
lea     eax, [ebp+14h]
mov     ecx, 40h ; '@'
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
sub     word ptr [ebp+16h], 4
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     ax, [ebp+14h]
mov     edx, [esp+20h+var_1C]
mov     [edx+14h], ax
mov     si, [ebp+16h]
sub     esi, 50h ; 'P'
mov     [edx+16h], si
mov     ax, [ebp+18h]
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
mov     ax, [ebp+56h]
mov     [edx+56h], ax
jmp     def_4417C0      ; jumptable 004417C0 default case

loc_4418A9:
mov     byte ptr [ebp+0Ah], 2
mov     byte ptr [ebp+0Ch], 0
mov     word ptr [eax+4], 8
mov     eax, [esp+20h+var_1C]
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     esi, [ebp+0Bh]
sar     esi, 18h
mov     esi, ds:dword_559FEC[esi*4]
lea     edi, [esi+0C4h]
lea     esi, [esi+190h]
movsd
movsd
mov     esi, [ebp+0Bh]
sar     esi, 18h
mov     esi, ds:dword_559FEC[esi*4]
sub     word ptr [esi+0C6h], 140h
mov     edx, [ebp+0Bh]
sar     edx, 18h
mov     edx, ds:dword_559FEC[edx*4]
xor     ecx, ecx
mov     ebx, 18h
call    sub_4DD9FD
mov     eax, [ebp+0Bh]
sar     eax, 18h
mov     eax, ds:dword_559FEC[eax*4]
mov     esi, [eax+0Ah]
sar     esi, 18h
mov     esi, ds:dword_559FEC[esi*4]
and     byte ptr [esi+0Fh], 0BFh

loc_44192D:             ; jumptable 004417C0 case 2
mov     eax, [esp+20h+var_20]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short def_4417C0 ; jumptable 004417C0 default case
mov     byte ptr [ebp+0Ah], 3
mov     byte ptr [ebp+0ACh], 11h
mov     word ptr [eax+4], 8

loc_44194F:             ; jumptable 004417C0 case 3
mov     eax, [esp+20h+var_20]
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jl      short loc_441973
add     word ptr [ebp+16h], 8
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
jmp     short def_4417C0 ; jumptable 004417C0 default case

loc_441973:
mov     byte ptr [ebp+9], 0Fh
mov     word ptr [ebp+0Ah], 0
and     byte ptr [ebp+0], 0FDh
mov     byte ptr [ebp+0Dh], 1

def_4417C0:             ; jumptable 004417C0 default case
add     esp, 8
jmp     def_440D56      ; jumptable 00440D56 default case
sub_441794 endp

align 10h
jpt_4419FD dd offset loc_441A04 ; jump table for switch statement
dd offset loc_441A0C
dd offset loc_441A14
dd offset loc_441A1C
dd offset loc_441A34



sub_4419A4 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
lea     esi, [eax+408h]
test    byte ptr [eax+3], 1
jz      short loc_4419C2
mov     eax, offset unk_514EEC
jmp     short loc_4419C7

loc_4419C2:
mov     eax, offset unk_514EF2

loc_4419C7:
xor     ebx, ebx
xor     edx, edx
jmp     short loc_4419D5

loc_4419CD:
inc     edx
inc     eax
cmp     dx, 6
jge     short loc_4419F2

loc_4419D5:
movzx   di, byte ptr [eax]
add     ebx, edi
mov     di, [esi+2]
and     edi, 0Fh
mov     [esp+1Ch+var_1C], edi
xor     edi, edi
mov     di, word ptr [esp+1Ch+var_1C]
movsx   ebp, bx
cmp     edi, ebp
jge     short loc_4419CD

loc_4419F2:             ; switch 5 cases
cmp     dx, 4
ja      short def_4419FD ; jumptable 004419FD default case
xor     eax, eax
mov     ax, dx
jmp     jpt_4419FD[eax*4] ; switch jump

loc_441A04:             ; jumptable 004419FD case 0
mov     word ptr [ecx+66h], 0
jmp     short loc_441A50

loc_441A0C:             ; jumptable 004419FD case 1
mov     word ptr [ecx+66h], 6
jmp     short loc_441A50

loc_441A14:             ; jumptable 004419FD case 2
mov     word ptr [ecx+66h], 0FFFAh
jmp     short loc_441A50

loc_441A1C:             ; jumptable 004419FD case 3
mov     byte ptr [ecx+9], 4
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ecx+66h], 10h

loc_441A2C:
mov     word ptr [esi+4], 40h ; '@'
jmp     short loc_441A50

loc_441A34:             ; jumptable 004419FD case 4
mov     byte ptr [ecx+9], 4
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ecx+66h], 0FFF0h
jmp     short loc_441A2C

def_4419FD:             ; jumptable 004419FD default case
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0

loc_441A50:
mov     eax, 1
jmp     loc_440207
sub_4419A4 endp




sub_441A5A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
mov     edi, esp
mov     esi, offset dword_4400DC
movsd
movsd
lea     ebx, [eax+408h]
mov     eax, [ebx+14h]
and     eax, 0FFFFFFh
jz      loc_441B94
test    byte ptr [ebx+17h], 38h
jz      loc_441B94
cmp     word ptr [ecx+6Eh], 0
jg      short loc_441AB5
mov     dh, [ebx]
and     dh, 0F3h
mov     [ebx], dh
mov     al, dh
or      al, 8
mov     [ebx], al
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh

loc_441AB5:
test    byte ptr [ebx], 8
jz      loc_441B8B
add     [ebx+0Ah], ax
test    byte ptr [ebx+17h], 20h
jnz     short loc_441AFD
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
mov     edx, [ebx+8]
sar     edx, 10h
cmp     edx, eax
jge     short loc_441AFD
mov     edx, [ecx+14h]
sar     edx, 10h
mov     eax, ecx
call    sub_42C592
cmp     edx, eax
jz      loc_441B81

loc_441AFD:
lea     edx, [ebx+1Ch]
test    byte ptr [ebx+22h], 1
jz      short loc_441B3F
lea     eax, [ecx+14h]
call    sub_4DDDB4
mov     esi, [ecx+54h]
sar     esi, 10h
movsx   edx, ax
sub     esi, edx
lea     edx, [esi+400h]
and     edx, 0FFFh
cmp     edx, 800h
jge     short loc_441B33
mov     byte ptr [ecx+9], 0Bh
jmp     short loc_441B75

loc_441B33:
mov     byte ptr [ecx+9], 0Ah
add     ah, 8
and     ah, 0Fh
jmp     short loc_441B75

loc_441B3F:
mov     eax, esp
call    sub_4DDDB4
mov     edx, [ecx+54h]
sar     edx, 10h
movsx   esi, ax
sub     esi, edx
add     esi, 400h
and     esi, 0FFFh
cmp     esi, 800h
jge     short loc_441B6B
mov     byte ptr [ecx+9], 0Ah
jmp     short loc_441B75

loc_441B6B:
mov     byte ptr [ecx+9], 0Bh
add     ah, 8
and     ah, 0Fh

loc_441B75:
mov     [ecx+56h], ax
mov     word ptr [ebx+0Ah], 0
jmp     short loc_441B85

loc_441B81:
mov     byte ptr [ecx+9], 9

loc_441B85:
mov     word ptr [ecx+0Ah], 0

loc_441B8B:
mov     word ptr [ecx+15Eh], 7FFFh

loc_441B94:
mov     eax, 1
add     esp, 8
jmp     def_440601      ; jumptable 00440601 default case
sub_441A5A endp         ; jumptable 004412B9 default case
; jumptable 004415E9 default case



sub_441BA1 proc near
push    ecx
push    edx
lea     edx, [eax+408h]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_441BAE[ecx*4]
mov     dword ptr [edx+14h], 0
pop     edx
pop     ecx
retn
sub_441BA1 endp




sub_441BBF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     word ptr [esi], 10Eh
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+18h], 0
mov     word ptr [esi+34h], 0
lea     eax, [esi+24h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     word ptr [esi+36h], 12Ch
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+18h]
xor     ah, ah
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_514F18
mov     dword ptr [ecx+10h], 0
mov     al, [ecx+3]
cmp     al, 1
jb      short loc_441C97
jbe     short loc_441CA4
cmp     al, 2
jz      short loc_441CC3
jmp     short loc_441CDC

loc_441C97:
test    al, al
jnz     short loc_441CDC
mov     byte ptr [ecx+8], 1
mov     [ecx+9], ah
jmp     short loc_441CCB

loc_441CA4:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
and     byte ptr [esi+1], 0FEh
jmp     short loc_441CDC

loc_441CC3:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 3

loc_441CCB:
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B

loc_441CDC:
mov     eax, ecx
call    sub_441CFD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_441BBF endp

db 90h
jpt_441D82 dd offset loc_441D89 ; jump table for switch statement
dd offset loc_441D89
dd offset loc_441D89
dd offset def_441D82
dd offset loc_441D89



sub_441CFD proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
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
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     edx, [esp+1Ch+var_1C]
mov     [edx+2], ax
mov     ax, [edx]
and     eax, 104h
cmp     ax, 104h
jnz     short loc_441D60
mov     eax, ebp
call    sub_4424B8

loc_441D60:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_441D67[edx*4]
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_441D99
mov     al, [ebp+9]
cmp     al, 4           ; switch 5 cases
ja      short def_441D82 ; jumptable 00441D82 default case, case 3
and     eax, 0FFh
jmp     jpt_441D82[eax*4] ; switch jump

loc_441D89:             ; jumptable 00441D82 cases 0-2,4
mov     byte ptr [ebp+9], 4

def_441D82:             ; jumptable 00441D82 default case, case 3
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0FEh

loc_441D99:
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+36h], 0
jnz     short loc_441DBC
cmp     dword ptr [ebp+80h], offset unk_800000
jbe     short loc_441DBC
test    byte ptr [ebp+6], 80h
jnz     short loc_441DBC
mov     eax, ebp
call    sub_4DE2F6

loc_441DBC:
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+0Ah]
test    bx, bx
jz      short loc_441DCF
mov     ecx, ebx
dec     ecx
mov     [eax+0Ah], cx

loc_441DCF:
mov     eax, [esp+1Ch+var_1C]
mov     si, [eax+36h]
test    si, si
jz      short loc_441DE2
mov     edi, esi
dec     edi
mov     [eax+36h], di

loc_441DE2:
mov     al, [ebp+0ADh]
mov     bh, [ebp+0ACh]
cmp     al, bh
jz      short loc_441E01
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_441E08

loc_441E01:
mov     eax, ebp
call    sub_4DEADD

loc_441E08:
test    byte ptr [ebp+0], 2
jz      short loc_441E21
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_441E21:
test    byte ptr [ebp+0], 1
jz      short loc_441E74
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_441E74
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
sub     word ptr [eax+0Eh], 28h ; '('
add     eax, 0Ch
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     ecx, [esp+1Ch+var_1C]
test    byte ptr [ecx], 20h
push    80h
push    offset unk_800000
push    4000000h
push    edx
xor     edx, edx
mov     dl, [ebp+1]
push    edx
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC

loc_441E74:
add     esp, 4
pop     ebp

def_441EE5:             ; jumptable 00441EE5 default case
pop     edi             ; jumptable 0044202D default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_441CFD endp



; Attributes: thunk

sub_441E7E proc near
jmp     sub_4DE2F6
sub_441E7E endp




sub_441E83 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
mov     bl, [eax+0Ah]
test    bl, bl
jbe     short loc_441E9A
cmp     bl, 1
jz      short loc_441EA6
pop     edx
pop     ebx
retn

loc_441E9A:
inc     bl
mov     [eax+0Ah], bl
mov     byte ptr [eax+0ACh], 0

loc_441EA6:
test    byte ptr [edx], 10h
jnz     short loc_441EB4
test    dword ptr [edx+14h], 0FFFFFFh
jz      short loc_441EB7

loc_441EB4:
or      byte ptr [edx], 1

loc_441EB7:
pop     edx
pop     ebx
retn
sub_441E83 endp

db 8Dh, 40h, 0
jpt_441EE5 dd offset loc_441EEC ; jump table for switch statement
dd offset loc_441F1A
dd offset loc_441F63
dd offset loc_441FDA



sub_441ECD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      short def_441EE5 ; jumptable 00441EE5 default case
; jumptable 0044202D default case
xor     edx, edx
mov     dl, al
jmp     jpt_441EE5[edx*4] ; switch jump

loc_441EEC:             ; jumptable 00441EE5 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 21h ; '!'
mov     word ptr [esi+44h], 0Dh
mov     word ptr [esi+46h], 0FFE8h
mov     byte ptr [esi+110h], 7
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0

loc_441F1A:             ; jumptable 00441EE5 case 1
mov     ax, [edi+4]
dec     eax
mov     [edi+4], ax
test    ax, ax
jl      short loc_441F53
cmp     ax, 2
jge     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case

loc_441F53:
mov     word ptr [edi+4], 7
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 22h ; '"'

loc_441F63:             ; jumptable 00441EE5 case 2
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
mov     eax, 4
sub     eax, ecx
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
test    ah, 0Fh
jz      short loc_441FB1
mov     word ptr [esi+44h], 0

loc_441FB1:
test    dh, 10h
jz      def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
cmp     word ptr [edi+4], 0
jg      def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
mov     word ptr [edi+4], 12h
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 23h ; '#'
jmp     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case

loc_441FDA:             ; jumptable 00441EE5 case 3
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
mov     byte ptr [esi+110h], 6
or      word ptr [edi], 109h
jmp     def_441EE5      ; jumptable 00441EE5 default case
sub_441ECD endp         ; jumptable 0044202D default case

jpt_44202D dd offset loc_442034 ; jump table for switch statement
dd offset loc_442062
dd offset loc_4420AB
dd offset loc_442122
dd offset loc_442144



sub_442011 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
xor     edx, edx
mov     dl, al
jmp     jpt_44202D[edx*4] ; switch jump

loc_442034:             ; jumptable 0044202D case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 25h ; '%'
mov     word ptr [esi+44h], 0FFF5h
mov     word ptr [esi+46h], 0FFE8h
mov     byte ptr [esi+110h], 7
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0

loc_442062:             ; jumptable 0044202D case 1
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jl      short loc_44209B
cmp     bx, 2
jge     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case

loc_44209B:
mov     word ptr [edi+4], 0Bh
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 26h ; '&'

loc_4420AB:             ; jumptable 0044202D case 2
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
mov     eax, 8
sub     eax, edx
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
test    ah, 0Fh
jz      short loc_4420F9
mov     word ptr [esi+44h], 0

loc_4420F9:
test    dh, 10h
jz      def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
cmp     word ptr [edi+4], 0
jg      def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
mov     word ptr [edi+4], 26h ; '&'
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 27h ; '''
jmp     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case

loc_442122:             ; jumptable 0044202D case 3
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
mov     word ptr [edi+4], 11h
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 28h ; '('

loc_442144:             ; jumptable 0044202D case 4
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
or      word ptr [edi], 109h
mov     byte ptr [esi+110h], 6
jmp     def_441EE5      ; jumptable 00441EE5 default case
sub_442011 endp         ; jumptable 0044202D default case

db 8Bh, 0C0h
jpt_44219C dd offset loc_4422A6 ; jump table for switch statement
dd offset loc_442300
dd offset loc_442300
dd offset loc_44239F
dd offset loc_4421A3



sub_44217D proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_44219C      ; jumptable 0044219C default case
xor     edx, edx
mov     dl, al
jmp     jpt_44219C[edx*4] ; switch jump

loc_4421A3:             ; jumptable 0044219C case 4
test    byte ptr [edi+17h], 20h
jnz     loc_442276
xor     eax, eax
mov     al, [esi+0Bh]
mov     al, ds:byte_514F24[eax]
and     eax, 0FFh
mov     edx, [edi+2]
sar     edx, 10h
cmp     edx, eax
jnz     loc_44225D
cmp     word ptr [edi+34h], 3
jge     loc_44225D
xor     edx, edx
jmp     short loc_44224A

loc_4421DA:
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
xor     ebx, ebx
mov     bl, [esi+0Bh]
mov     bl, ds:byte_514F28[edx+ebx*4]
and     ebx, 0FFh
mov     bx, [esi+ebx*8+190h]
mov     [eax+1Ch], bx
xor     ebx, ebx
mov     bl, [esi+0Bh]
mov     bl, ds:byte_514F28[edx+ebx*4]
and     ebx, 0FFh
imul    ecx, edx, 0Ch
mov     bx, [esi+ebx*8+192h]
sub     ebx, ecx
mov     [eax+1Eh], bx
xor     ebx, ebx
mov     bl, [esi+0Bh]
mov     bl, ds:byte_514F28[edx+ebx*4]
and     ebx, 0FFh
mov     bx, [esi+ebx*8+194h]
mov     [eax+20h], bx
inc     edx
cmp     edx, 4
jge     short loc_442253

loc_44224A:
call    sub_4DE13B
test    eax, eax
jnz     short loc_4421DA

loc_442253:
mov     al, [esi+0Bh]
inc     al
and     al, 3
mov     [esi+0Bh], al

loc_44225D:
mov     ax, [edi+4]
inc     eax
mov     [edi+4], ax
mov     edx, eax
xor     dh, ah
and     dl, 3Fh
mov     [edi+4], dx
jmp     def_44219C      ; jumptable 0044219C default case

loc_442276:
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+1Ch]
lea     eax, [esi+14h]
xor     ecx, ecx
call    sub_4DE726
mov     [esp+18h+var_18], eax
mov     edx, [esp+18h+var_18]
test    eax, 0FFFF0000h
jz      short loc_44229C
add     dh, 8
and     dh, 0Fh

loc_44229C:
mov     [esi+56h], dx
mov     word ptr [esi+0Ah], 0

loc_4422A6:             ; jumptable 0044219C case 0
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Bh], 0
mov     byte ptr [esi+0ACh], 4
mov     word ptr [esi+44h], 0FF00h
mov     word ptr [esi+46h], 300h
mov     byte ptr [esi+110h], 7
mov     bl, [edi]
or      bl, 20h
mov     [edi], bl
mov     bh, bl
and     bh, 0B3h
mov     [edi], bh
mov     word ptr [edi+8], 0
mov     word ptr [edi+4], 0
mov     word ptr [esi+44h], 100h
mov     word ptr [esi+46h], 0FD00h
mov     word ptr [esi+4Eh], 80h
lea     edx, [esi+14h]
mov     eax, 0A2h
call    sub_4D8BC3

loc_442300:             ; jumptable 0044219C cases 1,2
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     eax, esi
call    sub_42DE56
mov     [esp+18h+var_18], eax
test    eax, eax
jz      def_44219C      ; jumptable 0044219C default case
test    ah, 0Fh
jz      short loc_442342
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+56h], ax

loc_442342:
test    byte ptr [esp+18h+var_18+1], 10h
jz      def_44219C      ; jumptable 0044219C default case
mov     ch, [edi]
test    ch, 40h
jnz     short loc_442381
mov     al, ch
or      al, 40h
mov     [edi], al
test    al, 80h
jz      short loc_44237E
mov     cx, [edi+34h]
cmp     cx, 3
jge     short loc_44237E
mov     eax, ecx
inc     eax
mov     [edi+34h], ax
lea     edx, [esi+14h]
mov     ebx, 1
mov     eax, esi
call    sub_4AFA70

loc_44237E:
or      byte ptr [edi], 80h

loc_442381:
lea     edx, [esi+14h]
mov     eax, 0DAh
call    sub_4D8BC3
inc     byte ptr [esi+0Ah]
mov     word ptr [esi+44h], 60h ; '`'
mov     word ptr [esi+46h], 0FE00h
jmp     short def_44219C ; jumptable 0044219C default case

loc_44239F:             ; jumptable 0044219C case 3
mov     dl, [esi+0A4h]
test    dl, dl
jnz     short def_44219C ; jumptable 0044219C default case
inc     al
mov     [esi+0Ah], al
mov     [esi+0Bh], dl
mov     byte ptr [esi+0ACh], 5

def_44219C:             ; jumptable 0044219C default case
mov     word ptr [esi+15Eh], 190Ch
add     esp, 4
jmp     def_441EE5      ; jumptable 00441EE5 default case
sub_44217D endp         ; jumptable 0044202D default case




sub_4423C9 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
mov     ecx, offset byte_5F8364
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_4423F1
cmp     al, 1
jz      short loc_442408
jmp     loc_441E74

loc_4423F1:
mov     byte ptr [ebp+0Ah], 1
mov     word ptr [ebp+44h], 0C0h
mov     word ptr [ebp+66h], 18h
mov     byte ptr [ebp+0ACh], 9

loc_442408:
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [ecx+14h]
mov     ecx, 18h
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
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
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
test    dh, 0Fh
jnz     short loc_44247A
mov     edx, [ebp+14h]
sar     edx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
test    edx, edx
jge     short loc_442475
neg     eax

loc_442475:
cmp     eax, 10h
jle     short loc_44249A

loc_44247A:
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
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax

loc_44249A:
mov     eax, [esp+1Ch+var_1C]
test    word ptr [eax+2], 1FFh
jnz     loc_441E74
mov     byte ptr [ebp+9], 1
mov     word ptr [ebp+0Ah], 0
jmp     loc_441E74
sub_4423C9 endp




sub_4424B8 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     ebp, [eax+408h]
mov     eax, [ebp+14h]
and     eax, 0FFFFFFh
mov     [esp+1Ch+var_1C], eax
jz      loc_442650
test    byte ptr [ebp+17h], 38h
jz      loc_442643
mov     ax, [esi+6Eh]
mov     [esi+0B2h], ax
mov     eax, [esp+1Ch+var_1C]
mov     dx, [esi+6Eh]
sub     edx, eax
mov     [esi+6Eh], dx
test    dx, dx
jg      loc_4425A7
mov     word ptr [esi+0B2h], 0FFFFh
mov     ax, [esi+0B2h]
mov     [esi+6Eh], ax
and     byte ptr [ebp+0], 0F3h
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+19h]
and     eax, 0FFh
mov     [esp+1Ch+var_1C], eax
xor     ebx, ebx
jmp     short loc_442594

loc_44253A:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 3
movsx   edx, bx
xor     ecx, ecx
mov     cl, ds:byte_514F38[edx]
mov     cx, [esi+ecx*8+190h]
mov     [eax+1Ch], cx
xor     ecx, ecx
mov     cl, ds:byte_514F38[edx]
imul    edi, ebx, 0Ch
mov     cx, [esi+ecx*8+192h]
sub     ecx, edi
mov     [eax+1Eh], cx
mov     dl, ds:byte_514F38[edx]
and     edx, 0FFh
mov     dx, [esi+edx*8+194h]
mov     [eax+20h], dx
inc     ebx
cmp     bx, 4
jge     short loc_44259D

loc_442594:
call    sub_4DE13B
test    eax, eax
jnz     short loc_44253A

loc_44259D:
mov     byte ptr [esi+9], 3
mov     word ptr [esi+0Ah], 0

loc_4425A7:
test    byte ptr [ebp+0], 8
jz      loc_44262B
mov     eax, [esp+1Ch+var_1C]
add     [ebp+0Ah], ax
test    byte ptr [ebp+17h], 20h
jnz     short loc_4425E2
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
mov     al, [eax+19h]
and     eax, 0FFh
mov     edx, [ebp+8]
sar     edx, 10h
cmp     edx, eax
jl      short loc_442623

loc_4425E2:
lea     edi, [esi+14h]
mov     edx, edi
mov     eax, 0A2h
call    sub_4D8BC3
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ebp+1Ch]
xor     ecx, ecx
mov     eax, edi
call    sub_4DE726
mov     edx, eax
add     dh, 8
mov     [esi+56h], dx
test    eax, 0FFFF0000h
jz      short loc_442619
mov     byte ptr [esi+9], 1
jmp     short loc_44261D

loc_442619:
mov     byte ptr [esi+9], 2

loc_44261D:
mov     word ptr [ebp+0Ah], 0

loc_442623:
mov     word ptr [esi+0Ah], 0
jmp     short loc_442638

loc_44262B:
lea     edx, [esi+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_442638:
mov     word ptr [esi+15Eh], 7FFFh
jmp     short loc_442650

loc_442643:
lea     edx, [esi+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_442650:
mov     eax, 1
jmp     loc_441E74
sub_4424B8 endp




sub_44265A proc near
push    ebx
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
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
movzx   esi, byte ptr [eax+3]
lea     ebx, [eax+408h]
mov     edx, offset dword_560BDC
call    ds:funcs_442696[esi*4]
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_4426BE
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4426C5

loc_4426BE:
mov     eax, ecx
call    sub_4DEADD

loc_4426C5:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44265A endp




sub_4426CB proc near
push    ecx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 1
jb      short loc_4426DA
jbe     short loc_44271E
jmp     short loc_44272E

loc_4426DA:
test    al, al
jnz     short loc_44272E
or      byte ptr [esi], 2
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     word ptr [esi+15Eh], 4210h
mov     dword ptr [esi+78h], 0
mov     byte ptr [esi+0ACh], 19h
mov     byte ptr [esi+0ADh], 0FFh
jmp     short loc_44272B

loc_44271E:
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [edx+9], 5
jnz     short loc_44272E

loc_44272B:
inc     byte ptr [esi+8]

loc_44272E:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 28h ; '('
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     ecx
retn
sub_4426CB endp




sub_442744 proc near
push    ecx
push    esi
mov     esi, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_442755
cmp     al, 1
jz      short loc_442798
jmp     short loc_44272E

loc_442755:
or      byte ptr [esi], 2
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     word ptr [esi+15Eh], 4210h
mov     dword ptr [esi+78h], 0
mov     byte ptr [esi+0ACh], 9
mov     byte ptr [esi+0ADh], 0FFh
inc     byte ptr [esi+8]
jmp     short loc_44272E

loc_442798:
cmp     byte ptr [edx+9], 5
jnz     short loc_44272E
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
mov     eax, esi
call    sub_4DD43B
jmp     loc_44272E
sub_442744 endp




sub_4427B3 proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     ecx, ebx
movzx   edi, byte ptr [eax+8]
call    ds:funcs_4427BE[edi*4]
cmp     word ptr [ecx+2], 0
jz      short loc_4427DF
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 28h ; '('
mov     eax, esi
call    sub_4ED88B

loc_4427DF:
pop     edi
pop     esi
pop     ecx
retn
sub_4427B3 endp




sub_4427E3 proc near
push    ecx
mov     ecx, eax
mov     al, [eax+9]
test    al, al
jbe     short loc_4427F3
cmp     al, 1
jz      short loc_44283C
pop     ecx
retn

loc_4427F3:
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 10h
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0
inc     byte ptr [ecx+9]
pop     ecx
retn

loc_44283C:
cmp     byte ptr [edx+6], 4
jnz     short loc_442849
add     [ecx+8], al
mov     byte ptr [ecx+9], 0

loc_442849:
pop     ecx
retn
sub_4427E3 endp

db 8Dh, 40h, 0
jpt_44288C dd offset loc_442893 ; jump table for switch statement
dd offset loc_4428A2
dd offset loc_4428C6
dd offset loc_4428D5
dd offset loc_4428F8
dd offset loc_442925
dd offset loc_442934
dd offset loc_442945
dd offset loc_442954
dd offset loc_44296C



sub_442876 proc near
push    ecx
push    esi
mov     esi, ebx
mov     dl, [eax+9]
cmp     dl, 9           ; switch 10 cases
ja      def_44288C      ; jumptable 0044288C default case
and     edx, 0FFh
jmp     jpt_44288C[edx*4] ; switch jump

loc_442893:             ; jumptable 0044288C case 0
mov     byte ptr [eax+0ACh], 2
mov     word ptr [ebx], 0
inc     byte ptr [eax+9]

loc_4428A2:             ; jumptable 0044288C case 1
cmp     word ptr [esi], 6
jge     short loc_4428B2
add     word ptr [eax+56h], 20h ; ' '
inc     word ptr [esi]
jmp     short loc_4428B5

loc_4428B2:
inc     byte ptr [eax+9]

loc_4428B5:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
call    sub_4DD43B
pop     esi
pop     ecx
retn

loc_4428C6:             ; jumptable 0044288C case 2
mov     byte ptr [eax+0ACh], 7
mov     word ptr [ebx], 0
inc     byte ptr [eax+9]

loc_4428D5:             ; jumptable 0044288C case 3
cmp     word ptr [esi], 8
jge     short loc_4428F2

loc_4428DB:
xor     ecx, ecx
mov     ebx, 40h ; '@'
mov     edx, 30h ; '0'

loc_4428E7:
call    sub_4DD43B
inc     word ptr [esi]
pop     esi
pop     ecx
retn

loc_4428F2:
inc     byte ptr [eax+9]
pop     esi
pop     ecx
retn

loc_4428F8:             ; jumptable 0044288C case 4
mov     byte ptr [eax+0ACh], 8
mov     word ptr [eax+16h], 0FFCCh
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     def_44288C      ; jumptable 0044288C default case
jmp     short loc_4428F2

loc_442925:             ; jumptable 0044288C case 5
mov     byte ptr [eax+0ACh], 2
mov     word ptr [ebx], 0
inc     byte ptr [eax+9]

loc_442934:             ; jumptable 0044288C case 6
cmp     word ptr [esi], 14h
jge     short loc_4428F2
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
jmp     short loc_4428E7

loc_442945:             ; jumptable 0044288C case 7
mov     byte ptr [eax+0ACh], 7
mov     word ptr [ebx], 0
inc     byte ptr [eax+9]

loc_442954:             ; jumptable 0044288C case 8
cmp     word ptr [esi], 5
jnz     short loc_442960
mov     word ptr [esi+2], 1

loc_442960:
cmp     word ptr [esi], 0Dh
jl      loc_4428DB
jmp     short loc_4428F2

loc_44296C:             ; jumptable 0044288C case 9
mov     byte ptr [eax+0ACh], 8
mov     word ptr [eax+16h], 0FFFFh
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_44288C ; jumptable 0044288C default case
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0

def_44288C:             ; jumptable 0044288C default case
pop     esi
pop     ecx
retn
sub_442876 endp

align 2
jpt_4429C2 dd offset loc_4429C9 ; jump table for switch statement
dd offset loc_4429D8
dd offset loc_4429F8
dd offset loc_442A07



sub_4429AE proc near
push    ecx
push    esi
mov     esi, ebx
mov     bl, [eax+9]
cmp     bl, 3           ; switch 4 cases
ja      def_4429C2      ; jumptable 004429C2 default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_4429C2[ecx*4] ; switch jump

loc_4429C9:             ; jumptable 004429C2 case 0
mov     byte ptr [eax+0ACh], 2
mov     word ptr [esi], 0
inc     byte ptr [eax+9]

loc_4429D8:             ; jumptable 004429C2 case 1
cmp     word ptr [esi], 0Ch
jge     short loc_4429F2
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h

loc_4429E7:
call    sub_4DD43B
inc     word ptr [esi]
pop     esi
pop     ecx
retn

loc_4429F2:
inc     byte ptr [eax+9]
pop     esi
pop     ecx
retn

loc_4429F8:             ; jumptable 004429C2 case 2
mov     byte ptr [eax+0ACh], 1
mov     word ptr [esi], 0
inc     byte ptr [eax+9]

loc_442A07:             ; jumptable 004429C2 case 3
cmp     word ptr [esi], 6
jge     short loc_442A1E
sub     word ptr [eax+56h], 80h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'
jmp     short loc_4429E7

loc_442A1E:
mov     byte ptr [edx+7], 1
mov     word ptr [esi], 0
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0

def_4429C2:             ; jumptable 004429C2 default case
pop     esi
pop     ecx
retn
sub_4429AE endp




sub_442A31 proc near
push    ecx
mov     dl, [eax+9]
test    dl, dl
jbe     short loc_442A40
cmp     dl, 1
jz      short loc_442A51
pop     ecx
retn

loc_442A40:
mov     byte ptr [eax+0ACh], 12h
mov     byte ptr [eax+110h], 8
inc     byte ptr [eax+9]

loc_442A51:
mov     dx, [ebx]
cmp     dx, 39h ; '9'
jge     short loc_442A62
mov     ecx, edx
inc     ecx
mov     [ebx], cx
pop     ecx
retn

loc_442A62:
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0
pop     ecx
retn
sub_442A31 endp




sub_442A6B proc near
push    ecx
push    esi
mov     esi, ebx
mov     bl, [eax+9]
cmp     bl, 1
jb      short loc_442A81
jbe     short loc_442A94
cmp     bl, 2
jz      short loc_442ABE
pop     esi
pop     ecx
retn

loc_442A81:
test    bl, bl
jnz     short loc_442ADC
mov     word ptr [esi], 0
mov     byte ptr [eax+0ACh], 13h
inc     byte ptr [eax+9]

loc_442A94:
cmp     word ptr [esi], 3
jge     short loc_442AB4
add     word ptr [eax+56h], 0C0h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFD0h
call    sub_4DD43B
inc     word ptr [esi]
pop     esi
pop     ecx
retn

loc_442AB4:
mov     byte ptr [edx+7], 2
inc     byte ptr [eax+9]
pop     esi
pop     ecx
retn

loc_442ABE:
cmp     byte ptr [edx+7], 3
jnz     short loc_442ACE
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0
pop     esi
pop     ecx
retn

loc_442ACE:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFC9h
call    sub_4DD43B

loc_442ADC:
pop     esi
pop     ecx
retn
sub_442A6B endp

db 8Dh, 40h, 0
jpt_442B24 dd offset loc_442B2B ; jump table for switch statement
dd offset loc_442B3A
dd offset loc_442B63
dd offset loc_442B88
dd offset loc_442BA2
dd offset loc_442BB0
dd offset loc_442C12
dd offset loc_442C21
dd offset loc_442C3E
dd offset loc_442C4D
dd offset loc_442C62



sub_442B0E proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     edi, ebx
mov     al, [eax+9]
cmp     al, 0Ah         ; switch 11 cases
ja      def_442B24      ; jumptable 00442B24 default case
xor     edx, edx
mov     dl, al
jmp     jpt_442B24[edx*4] ; switch jump

loc_442B2B:             ; jumptable 00442B24 case 0
mov     word ptr [ebx], 0
mov     byte ptr [esi+0ACh], 1
inc     byte ptr [esi+9]

loc_442B3A:             ; jumptable 00442B24 case 1
cmp     word ptr [edi], 0Fh
jge     short loc_442B57
mov     ecx, 0FFFFFFD0h
xor     ebx, ebx
mov     edx, ecx

loc_442B49:
mov     eax, esi
call    sub_4DD43B

loc_442B50:
inc     word ptr [edi]
pop     edi
pop     esi
pop     ecx
retn

loc_442B57:
mov     word ptr [edi], 0

loc_442B5C:
inc     byte ptr [esi+9]
pop     edi
pop     esi
pop     ecx
retn

loc_442B63:             ; jumptable 00442B24 case 2
cmp     word ptr [ebx], 0Ch
jge     short loc_442B7A
sub     word ptr [esi+56h], 80h
mov     bx, [ebx]
inc     ebx
mov     [edi], bx
pop     edi
pop     esi
pop     ecx
retn

loc_442B7A:
mov     word ptr [ebx], 0
mov     byte ptr [esi+110h], 6
jmp     short loc_442B5C

loc_442B88:             ; jumptable 00442B24 case 3
cmp     word ptr [ebx], 4
jge     short loc_442B99
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'
jmp     short loc_442B49

loc_442B99:
inc     al
mov     [esi+9], al
pop     edi
pop     esi
pop     ecx
retn

loc_442BA2:             ; jumptable 00442B24 case 4
mov     word ptr [ebx], 0
mov     byte ptr [esi+0ACh], 15h
jmp     short loc_442B5C

loc_442BB0:             ; jumptable 00442B24 case 5
cmp     byte ptr [esi+0A4h], 12h
jnz     short loc_442BBF
mov     word ptr [edi+2], 0

loc_442BBF:
mov     cl, [esi+0A4h]
cmp     cl, 0Ah
jb      short loc_442BE4
cmp     cl, 1Bh
jnb     short loc_442BE4
xor     ecx, ecx
mov     ebx, 0FFFFFFD0h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4DD43B
jmp     short loc_442BFF

loc_442BE4:
cmp     byte ptr [esi+0A4h], 1Bh
jnz     short loc_442BFF
mov     word ptr [esi+16h], 0FFCCh
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx

loc_442BFF:
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_442B24 ; jumptable 00442B24 default case
jmp     loc_442B5C

loc_442C12:             ; jumptable 00442B24 case 6
mov     word ptr [ebx], 0
mov     byte ptr [esi+0ACh], 1
inc     byte ptr [esi+9]

loc_442C21:             ; jumptable 00442B24 case 7
cmp     word ptr [edi], 20h ; ' '
jge     loc_442B5C
sub     word ptr [esi+56h], 20h ; ' '
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 38h ; '8'
jmp     loc_442B49

loc_442C3E:             ; jumptable 00442B24 case 8
mov     word ptr [ebx], 0
mov     byte ptr [esi+0ACh], 1
inc     byte ptr [esi+9]

loc_442C4D:             ; jumptable 00442B24 case 9
cmp     word ptr [edi], 4
jge     loc_442B5C
sub     word ptr [esi+56h], 100h
jmp     loc_442B50

loc_442C62:             ; jumptable 00442B24 case 10
mov     byte ptr [esi+0ACh], 16h

def_442B24:             ; jumptable 00442B24 default case
pop     edi
pop     esi
pop     ecx
retn
sub_442B0E endp




sub_442C6D proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     ecx, ebx
movzx   edi, byte ptr [eax+8]
call    ds:funcs_442C78[edi*4]
cmp     word ptr [ecx+2], 0
jz      short loc_442C99
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 28h ; '('
mov     eax, esi
call    sub_4ED88B

loc_442C99:
pop     edi
pop     esi
pop     ecx
retn
sub_442C6D endp

align 2
jpt_442CC1 dd offset loc_442CC8 ; jump table for switch statement
dd offset loc_442D18
dd offset loc_442D26
dd offset loc_442D47



sub_442CAE proc near
push    ecx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_442CC1      ; jumptable 00442CC1 default case
and     eax, 0FFh
jmp     jpt_442CC1[eax*4] ; switch jump

loc_442CC8:             ; jumptable 00442CC1 case 0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 9
mov     byte ptr [ecx+0ADh], 0FFh
mov     byte ptr [ecx+110h], 7
mov     word ptr [ebx+2], 0

loc_442D13:
inc     byte ptr [ecx+9]
pop     ecx
retn

loc_442D18:             ; jumptable 00442CC1 case 1
add     word ptr [ecx+56h], 80h
cmp     byte ptr [edx+6], 3
jnz     short def_442CC1 ; jumptable 00442CC1 default case
jmp     short loc_442D13

loc_442D26:             ; jumptable 00442CC1 case 2
mov     dx, [ecx+56h]
add     edx, 80h
mov     [ecx+56h], dx
mov     eax, edx
and     ah, 0Fh
cmp     ax, 0C00h
jle     short def_442CC1 ; jumptable 00442CC1 default case
mov     word ptr [ecx+56h], 0C00h
jmp     short loc_442D13

loc_442D47:             ; jumptable 00442CC1 case 3
cmp     byte ptr [edx+6], 4
jnz     short def_442CC1 ; jumptable 00442CC1 default case
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

def_442CC1:             ; jumptable 00442CC1 default case
pop     ecx
retn
sub_442CAE endp

jpt_442D94 dd offset loc_442D9B ; jump table for switch statement
dd offset loc_442DAA
dd offset loc_442DCF
dd offset loc_442DDE
dd offset loc_442E01
dd offset loc_442E2E
dd offset loc_442E3D
dd offset loc_442E54
dd offset loc_442E63
dd offset loc_442E7B



sub_442D7E proc near
push    ecx
push    esi
mov     esi, ebx
mov     dl, [eax+9]
cmp     dl, 9           ; switch 10 cases
ja      def_442D94      ; jumptable 00442D94 default case
and     edx, 0FFh
jmp     jpt_442D94[edx*4] ; switch jump

loc_442D9B:             ; jumptable 00442D94 case 0
mov     word ptr [ebx], 0
mov     byte ptr [eax+0ACh], 9
inc     byte ptr [eax+9]

loc_442DAA:             ; jumptable 00442D94 case 1
mov     dx, [esi]
cmp     dx, 0Ch
jge     short loc_442DBB
mov     ebx, edx
inc     ebx
mov     [esi], bx
jmp     short loc_442DBE

loc_442DBB:
inc     byte ptr [eax+9]

loc_442DBE:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
call    sub_4DD43B
pop     esi
pop     ecx
retn

loc_442DCF:             ; jumptable 00442D94 case 2
mov     byte ptr [eax+0ACh], 7
mov     word ptr [ebx], 0
inc     byte ptr [eax+9]

loc_442DDE:             ; jumptable 00442D94 case 3
cmp     word ptr [esi], 8
jge     short loc_442DFB

loc_442DE4:
xor     ecx, ecx
mov     ebx, 40h ; '@'
mov     edx, 30h ; '0'
call    sub_4DD43B
inc     word ptr [esi]
pop     esi
pop     ecx
retn

loc_442DFB:
inc     byte ptr [eax+9]
pop     esi
pop     ecx
retn

loc_442E01:             ; jumptable 00442D94 case 4
mov     byte ptr [eax+0ACh], 8
mov     word ptr [eax+16h], 0FFCCh
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     def_442D94      ; jumptable 00442D94 default case
jmp     short loc_442DFB

loc_442E2E:             ; jumptable 00442D94 case 5
mov     byte ptr [eax+0ACh], 9
mov     word ptr [ebx], 0
inc     byte ptr [eax+9]

loc_442E3D:             ; jumptable 00442D94 case 6
cmp     word ptr [esi], 18h
jge     loc_442DBB
add     word ptr [eax+56h], 8
inc     word ptr [esi]
jmp     loc_442DBE

loc_442E54:             ; jumptable 00442D94 case 7
mov     byte ptr [eax+0ACh], 7
mov     word ptr [ebx], 0
inc     byte ptr [eax+9]

loc_442E63:             ; jumptable 00442D94 case 8
cmp     word ptr [esi], 5
jnz     short loc_442E6F
mov     word ptr [esi+2], 1

