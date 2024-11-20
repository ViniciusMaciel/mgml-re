loc_447307:
mov     byte ptr [ebp+0Ah], 4
mov     word ptr [esi+4], 6

loc_447311:             ; jumptable 0044720A case 4
mov     cx, [esi+4]
dec     ecx
mov     [esi+4], cx
test    cx, cx
jl      short loc_44732D
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0E0h
jmp     loc_447267

loc_44732D:
xor     eax, eax
mov     al, [ebp+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     edx, [esi+4]
sar     edx, 10h
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+0Ch]
xor     ah, ah
mov     [esi+34h], ax
or      byte ptr [esi], 1
jmp     def_44720A      ; jumptable 0044720A default case
sub_4471EC endp




sub_44735A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+3D8h]
test    byte ptr [ebx+17h], 2
jz      short loc_447372
mov     word ptr [ebx+8], 0

loc_447372:
mov     al, [ecx+0Ah]
cmp     al, 1
jb      short loc_44738C
jbe     loc_447407
cmp     al, 2
jz      loc_44755B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44738C:
test    al, al
jnz     loc_447578
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [ecx+0ACh], 4
mov     eax, [ecx+54h]
sar     eax, 10h
call    sub_4EF008
neg     eax
shl     eax, 5
sar     eax, 0Ch
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 20h ; ' '
mov     word ptr [ecx+4Eh], 10h
mov     eax, [ecx+54h]
sar     eax, 10h
call    sub_4EF003
neg     eax
shl     eax, 5
sar     eax, 0Ch
mov     [ecx+48h], ax
mov     word ptr [ebx+4], 73h ; 's'
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     edx, [ebx+4]
sar     edx, 10h
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+0Ah]
xor     ah, ah
mov     [ebx+8], ax
and     byte ptr [ebx], 0F7h

loc_447407:
cmp     byte ptr [ecx+0A6h], 1
jnz     short loc_44741D
lea     edx, [ecx+14h]
mov     eax, 0B5h
call    sub_4D8BC3

loc_44741D:
mov     dx, [ebx+4]
dec     edx
mov     [ebx+4], dx
test    dx, dx
jl      loc_44754B
test    byte ptr [ebx+17h], 2
jnz     loc_44754B
cmp     word ptr [ecx+6Eh], 0
jg      short loc_447448
or      byte ptr [ebx], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_447448:
cmp     dx, 64h ; 'd'
jge     short loc_44749E
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 10h
add     [ecx+1Ch], eax
mov     edx, [ecx+14h]
sar     edx, 10h
mov     eax, ecx
call    sub_42C592
cmp     edx, eax
jz      short loc_447481
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 10h
add     [ecx+20h], eax
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
jmp     short loc_447487

loc_447481:
mov     word ptr [ecx+46h], 20h ; ' '

loc_447487:
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 10h
add     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B

loc_44749E:
mov     eax, ecx
call    sub_42DE56
mov     [ebx+48h], eax
test    eax, eax
jz      loc_447578
test    ah, 0Fh
jz      short loc_4474C2
lea     edx, [ecx+14h]
mov     eax, 0DEh
call    sub_4D8BC3

loc_4474C2:
mov     ah, [ebx+49h]
test    ah, 1
jz      short loc_4474E3
cmp     word ptr [ecx+44h], 0
jge     short loc_4474DB
mov     eax, [ecx+42h]
sar     eax, 10h
neg     eax
jmp     short loc_4474F5

loc_4474DB:
mov     eax, [ecx+42h]
sar     eax, 10h
jmp     short loc_4474F5

loc_4474E3:
test    ah, 2
jz      short loc_447503
cmp     word ptr [ecx+44h], 0
jge     short loc_4474F9
mov     eax, [ecx+42h]
sar     eax, 10h

loc_4474F5:
neg     eax
jmp     short loc_4474FF

loc_4474F9:
mov     eax, [ecx+42h]
sar     eax, 10h

loc_4474FF:
mov     [ecx+44h], ax

loc_447503:
mov     dh, [ebx+49h]
test    dh, 4
jz      short loc_44752D
cmp     word ptr [ecx+48h], 0
jge     short loc_44751C
mov     eax, [ecx+46h]
sar     eax, 10h
neg     eax
jmp     short loc_447522

loc_44751C:
mov     eax, [ecx+46h]
sar     eax, 10h

loc_447522:
neg     eax

loc_447524:
mov     [ecx+48h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44752D:
test    dh, 8
jz      short loc_447578
cmp     word ptr [ecx+48h], 0
jge     short loc_447543
mov     eax, [ecx+46h]
sar     eax, 10h
neg     eax
jmp     short loc_447524

loc_447543:
mov     eax, [ecx+46h]
sar     eax, 10h
jmp     short loc_447524

loc_44754B:
mov     word ptr [ebx+8], 0
mov     byte ptr [ecx+0Ah], 2
mov     word ptr [ebx+4], 2

loc_44755B:
mov     si, [ebx+4]
dec     esi
mov     [ebx+4], si
test    si, si
jge     short loc_447578
mov     word ptr [ecx+6Eh], 0
or      byte ptr [ebx], 41h
mov     word ptr [ebx+38h], 0

loc_447578:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44735A endp




sub_44757D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+3D8h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_44759C
jbe     short loc_4475BB
cmp     al, 2
jz      short loc_4475DA
jmp     def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case

loc_44759C:
test    al, al
jnz     def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case
mov     byte ptr [edi+0Ah], 1
mov     byte ptr [edi+0ACh], 6
mov     word ptr [esi+4], 0Ah
mov     word ptr [esi+8], 0

loc_4475BB:
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     short loc_4475CF
mov     byte ptr [edi+0Ah], 2
jmp     short loc_4475DA

loc_4475CF:
mov     ebx, 0Ah
sub     ebx, edx
mov     [edi+46h], bx

loc_4475DA:
mov     ebx, [edi+44h]
sar     ebx, 10h
shl     ebx, 7
xor     ecx, ecx
xor     edx, edx
mov     eax, edi
call    sub_4DD43B
mov     eax, edi
call    sub_42DE56
test    ah, 10h
jz      def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case
cmp     word ptr [esi+4], 0
jge     def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case
or      byte ptr [esi], 1
jmp     def_447641      ; jumptable 00447641 default case
sub_44757D endp         ; jumptable 004477C9 default case

align 4
jpt_447641 dd offset loc_447648 ; jump table for switch statement
dd offset loc_44767F
dd offset loc_44768A
dd offset loc_447754



sub_447624 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case
and     eax, 0FFh
jmp     jpt_447641[eax*4] ; switch jump

loc_447648:             ; jumptable 00447641 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 7
mov     word ptr [esi+44h], 0FFF0h
xor     eax, eax
mov     al, ds:byte_515180
mov     [edi+4], ax
mov     word ptr [edi+8], 0
mov     dl, [edi]
and     dl, 0F7h
mov     [edi], dl
cmp     word ptr [esi+6Eh], 0
jg      short loc_44767F ; jumptable 00447641 case 1
mov     dh, dl
and     dh, 0FBh
mov     [edi], dh

loc_44767F:             ; jumptable 00447641 case 1
cmp     word ptr [edi+4], 0
jge     short loc_44768A ; jumptable 00447641 case 2
mov     byte ptr [esi+0Ah], 2

loc_44768A:             ; jumptable 00447641 case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
xor     eax, eax
mov     al, [esi+0Bh]
mov     al, ds:byte_515181[eax]
xor     ah, ah
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
mov     [edi+48h], eax
test    eax, eax
jz      def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case
test    ah, 0Fh
jz      short loc_4476E1
mov     word ptr [esi+44h], 0

loc_4476E1:
test    byte ptr [edi+49h], 10h
jz      def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case
lea     edx, [esi+14h]
mov     eax, 0DEh
call    sub_4D8BC3
mov     bh, [esi+0Bh]
add     bh, 2
mov     [esi+0Bh], bh
cmp     bh, 0Ah
jnb     short loc_44772F
mov     byte ptr [esi+0Ah], 1
inc     byte ptr [esi+0ACh]
mov     word ptr [esi+44h], 0FFF0h
xor     eax, eax
mov     al, [esi+0Bh]
mov     al, ds:byte_515180[eax]
xor     ah, ah

loc_447723:
mov     [edi+4], ax
or      byte ptr [edi], 8
jmp     def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case

loc_44772F:
cmp     word ptr [esi+6Eh], 0
jg      short loc_44773E
or      byte ptr [edi], 1
jmp     def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case

loc_44773E:
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 11h
mov     word ptr [edi+4], 12h
jmp     def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case

loc_447754:             ; jumptable 00447641 case 3
mov     dx, [edi+4]     ; jumptable 004477C9 case 3
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     short loc_44776A
or      byte ptr [edi], 9
jmp     def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case

loc_44776A:
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     [edi+44h], ax
mov     ax, [esi+56h]
add     ax, [edi+44h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     def_447641      ; jumptable 00447641 default case
sub_447624 endp         ; jumptable 004477C9 default case

align 4
jpt_4477C9 dd offset loc_4477D0 ; jump table for switch statement
dd offset loc_447850
dd offset loc_44785B
dd offset loc_447754



sub_4477AC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case
and     eax, 0FFh
jmp     jpt_4477C9[eax*4] ; switch jump

loc_4477D0:             ; jumptable 004477C9 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 0Ch
mov     word ptr [edi+8], 0
and     byte ptr [edi], 0F7h
test    byte ptr [esi+3], 40h
jz      short loc_44782E
mov     word ptr [esi+44h], 8
mov     dword ptr [edi+3Ch], offset byte_515194
xor     eax, eax
mov     al, ds:byte_515194
mov     [edi+4], ax
mov     word ptr [edi+2], 7
xor     edx, edx
mov     dl, [esi+2]
shl     edx, 2
mov     eax, ds:dword_55A10C
add     eax, edx
mov     edx, [edi+4]
sar     edx, 10h
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+0Bh]
xor     ah, ah
mov     [edi+8], ax
jmp     short loc_447846

loc_44782E:
mov     word ptr [esi+44h], 10h
mov     dword ptr [edi+3Ch], offset byte_51518A
xor     eax, eax
mov     al, ds:byte_51518A
mov     [edi+4], ax

loc_447846:
cmp     word ptr [esi+6Eh], 0
jg      short loc_447850 ; jumptable 004477C9 case 1
and     byte ptr [edi], 0FBh

loc_447850:             ; jumptable 004477C9 case 1
cmp     word ptr [edi+4], 0
jge     short loc_44785B ; jumptable 004477C9 case 2
mov     byte ptr [esi+0Ah], 2

loc_44785B:             ; jumptable 004477C9 case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
xor     eax, eax
mov     al, [esi+0Bh]
mov     edx, [edi+3Ch]
mov     al, [edx+eax+1]
xor     ah, ah
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
mov     [edi+48h], eax
test    eax, eax
jz      def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case
test    ah, 0Fh
jz      short loc_4478B3
mov     word ptr [esi+44h], 0

loc_4478B3:
test    byte ptr [edi+49h], 10h
jz      def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case
lea     edx, [esi+14h]
mov     eax, 0DEh
call    sub_4D8BC3
mov     cl, [esi+0Bh]
add     cl, 2
mov     [esi+0Bh], cl
cmp     cl, 0Ah
jnb     loc_44772F
mov     byte ptr [esi+0Ah], 1
inc     byte ptr [esi+0ACh]
test    byte ptr [esi+3], 40h
jz      short loc_4478F4
mov     word ptr [esi+44h], 8
jmp     short loc_4478FA

loc_4478F4:
mov     word ptr [esi+44h], 10h

loc_4478FA:
movzx   esi, byte ptr [esi+0Bh]
mov     eax, [edi+3Ch]
add     esi, eax
xor     eax, eax
mov     al, [esi]
jmp     loc_447723
sub_4477AC endp




sub_44790C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+3D8h]
lea     edx, [eax+14h]
mov     eax, (offset dword_5F8376+2)
call    sub_4DDDB4
mov     dx, word ptr ds:dword_5F83B8+2
sub     eax, edx
mov     [esi+46h], ax
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_447944
cmp     al, 1
jz      short loc_44795B
jmp     def_44720A      ; jumptable 0044720A default case

loc_447944:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     word ptr [esi+4], 5Ah ; 'Z'
mov     word ptr [esi+8], 0

loc_44795B:
cmp     dword ptr [ebp+80h], offset loc_480000
jbe     short loc_44797B
test    byte ptr [esi], 10h
jz      short loc_44797B
mov     byte ptr [ebp+9], 3

loc_447970:
mov     word ptr [ebp+0Ah], 0
jmp     def_44720A      ; jumptable 0044720A default case

loc_44797B:
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edi, [ebp+14h]
mov     ecx, 20h ; ' '
mov     edx, (offset dword_5F8376+2)
mov     eax, edi
call    sub_4DE552
mov     [esi+44h], ax
mov     ax, [ebp+56h]
add     ax, [esi+44h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 34h ; '4'
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     [esi+48h], eax
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_4479D7
mov     edx, edi
mov     eax, 0B0h
call    sub_4D8BC3

loc_4479D7:
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     edi, [ebp+14h]
sar     edi, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     edi, eax
test    edi, edi
jge     short loc_447A02
neg     edi

loc_447A02:
cmp     edi, 20h ; ' '
jle     short loc_447A2C
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

loc_447A19:
mov     byte ptr [ebp+9], 1
mov     word ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Eh], 4
jmp     def_44720A      ; jumptable 0044720A default case

loc_447A2C:
test    byte ptr [esi+49h], 0Fh
jnz     short loc_447A19
mov     bx, [esi+36h]
test    bx, bx
jnz     short loc_447A57
cmp     dword ptr [ebp+80h], 12000h
jnb     short loc_447A57
mov     byte ptr [ebp+9], 0Ah
mov     [ebp+0Ah], bx
and     byte ptr [esi], 0FEh
jmp     def_44720A      ; jumptable 0044720A default case

loc_447A57:
cmp     word ptr [esi+34h], 0
jnz     short loc_447AA6
cmp     dword ptr [ebp+80h], 120000h
jnb     short loc_447AA6
cmp     word ptr [esi+44h], 0
jge     short loc_447A7B
mov     eax, [esi+42h]
sar     eax, 10h
neg     eax
jmp     short loc_447A81

loc_447A7B:
mov     eax, [esi+42h]
sar     eax, 10h

loc_447A81:
cmp     eax, 10h
jge     short loc_447AA6
mov     eax, [esi+44h]
sar     eax, 10h
add     eax, 400h
and     eax, 0FFFh
cmp     eax, 800h
jge     short loc_447AA6
mov     byte ptr [ebp+9], 4
jmp     loc_447970

loc_447AA6:
mov     bl, [esi]
test    bl, 10h
jnz     def_44720A      ; jumptable 0044720A default case
mov     bh, bl
or      bh, 1
mov     [esi], bh
jmp     def_44720A      ; jumptable 0044720A default case
sub_44790C endp




sub_447ABD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+3D8h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_447ADB
cmp     al, 1
jz      short loc_447B11
jmp     def_44720A      ; jumptable 0044720A default case

loc_447ADB:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 4
mov     word ptr [esi+4], 2Dh ; '-'
xor     eax, eax
mov     al, [ebp+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     edx, [esi+4]
sar     edx, 10h
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+0Ah]
xor     ah, ah
mov     [esi+8], ax

loc_447B11:
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_447B27
lea     edx, [ebp+14h]
mov     eax, 0B5h
call    sub_4D8BC3

loc_447B27:
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jg      short loc_447B3E
mov     word ptr [esi+36h], 2Dh ; '-'
or      byte ptr [esi], 1

loc_447B3E:
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     ecx, 20h ; ' '
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     [esi+44h], ax
mov     ax, [ebp+56h]
add     ax, [esi+44h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 34h ; '4'
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     [esi+48h], eax
jmp     loc_447275
sub_447ABD endp




sub_447B88 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     ebx, [eax+3D8h]
xor     edx, edx
xor     eax, eax
jmp     short loc_447BA2

loc_447B9B:
inc     eax
cmp     ax, 4
jge     short loc_447BC5

loc_447BA2:
movsx   ecx, ax
mov     cl, ds:byte_51519E[ecx]
xor     ch, ch
add     edx, ecx
mov     cx, [ebx+2]
xor     ch, ch
and     cl, 0Fh
and     ecx, 0FFFFh
movsx   esi, dx
cmp     ecx, esi
jge     short loc_447B9B

loc_447BC5:
mov     byte ptr [edi+9], 2
mov     word ptr [edi+0Ah], 0
cmp     ax, 1
jb      short loc_447BDF
jbe     short loc_447BEA
cmp     ax, 2
jz      short loc_447BF2
jmp     short loc_447BFA

loc_447BDF:
test    ax, ax
jnz     short loc_447BFA
mov     [edi+66h], ax
jmp     short loc_447BFE

loc_447BEA:
mov     word ptr [edi+66h], 10h
jmp     short loc_447BFE

loc_447BF2:
mov     word ptr [edi+66h], 0FFF0h
jmp     short loc_447BFE

loc_447BFA:
mov     byte ptr [edi+9], 0

loc_447BFE:
mov     eax, 1
jmp     def_447641      ; jumptable 00447641 default case
sub_447B88 endp         ; jumptable 004477C9 default case




sub_447C08 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
lea     ecx, [eax+3D8h]
call    sub_4DE043
mov     [ecx+4Ch], eax
test    eax, eax
jz      loc_447CD8
mov     byte ptr [eax], 1
cmp     word ptr [ecx+6], 0
jnz     short loc_447C73
mov     eax, [ecx+4Ch]
mov     byte ptr [eax+2], 6
mov     eax, [ecx+4Ch]
mov     byte ptr [eax+3], 0
mov     edx, [ebx+20h]
sub     edx, 3C0000h
mov     eax, [ecx+4Ch]
mov     [eax+20h], edx
mov     eax, [ecx+4Ch]
mov     dword ptr [eax+9Ch], 20h ; ' '
mov     eax, [ecx+4Ch]
mov     dword ptr [eax+0A0h], 10h
lea     edx, [ebx+14h]
mov     eax, 0B2h
call    sub_4D8BC3
jmp     short loc_447C90

loc_447C73:
mov     eax, [ecx+4Ch]
mov     byte ptr [eax+2], 9
mov     eax, [ecx+4Ch]
mov     byte ptr [eax+3], 3
mov     edx, [ebx+20h]
sub     edx, offset loc_500000
mov     eax, [ecx+4Ch]
mov     [eax+20h], edx

loc_447C90:
mov     eax, [ecx+4Ch]
mov     edx, [ebx+1Ch]
mov     [eax+1Ch], edx
mov     eax, [ecx+4Ch]
mov     edx, [ebx+24h]
mov     [eax+24h], edx
mov     eax, [ecx+4Ch]
mov     dx, [ebx+56h]
mov     [eax+64h], dx
mov     eax, [ecx+4Ch]
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
push    0
push    0
mov     ecx, [ecx+4Ch]
mov     ebx, [ecx+62h]
sar     ebx, 10h
lea     edx, [ecx+1Ch]
lea     eax, [ecx+14h]
mov     ecx, 6E0h
call    sub_4DD4C5

loc_447CD8:
pop     edx
pop     ecx
pop     ebx
retn
sub_447C08 endp




sub_447CDC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+3D8h]
mov     eax, [ebx+14h]
and     eax, 0FFFFFFh
jz      loc_447EDA
test    byte ptr [ebx+17h], 38h
jz      loc_447ECD
mov     dx, [ecx+6Eh]
mov     [ecx+0B2h], dx
sub     edx, eax
mov     [ecx+6Eh], dx
test    dx, dx
jg      short loc_447D47
mov     dh, [ebx]
and     dh, 0B5h
mov     [ebx], dh
mov     al, dh
or      al, 48h
mov     [ebx], al
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     edx, [ebx+4]
sar     edx, 10h
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+9]
and     eax, 0FFh

loc_447D47:
test    byte ptr [ebx], 8
jz      loc_447E6C
add     [ebx+0Ah], ax
test    byte ptr [ebx+17h], 20h
jnz     short loc_447DAA
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     edx, [ebx+4]
sar     edx, 10h
shl     edx, 4
mov     eax, [eax]
add     eax, edx
xor     edx, edx
mov     dl, [eax+9]
mov     eax, [ebx+8]
sar     eax, 10h
cmp     eax, edx
jge     short loc_447DAA
cmp     word ptr [ebx+6], 0
jnz     short loc_447D9D
cmp     byte ptr [ecx+9], 6
jz      short loc_447D99
mov     word ptr [ecx+0Ah], 0

loc_447D99:
mov     byte ptr [ecx+9], 6

loc_447D9D:
lea     edx, [ecx+14h]

loc_447DA0:
mov     eax, 0A0h
jmp     loc_447EB9

loc_447DAA:
lea     esi, [ecx+14h]
cmp     byte ptr [ecx+9], 5
jz      loc_447E65
mov     edx, esi
mov     eax, 0A2h
call    sub_4D8BC3
lea     edx, [ebx+1Ch]
test    byte ptr [ebx+22h], 1
jz      short loc_447E11
mov     eax, esi
call    sub_4DDDB4
mov     [ebx+44h], ax
mov     edx, [ecx+54h]
sar     edx, 10h
mov     eax, [ebx+42h]
sar     eax, 10h
sub     edx, eax
lea     eax, [edx+400h]
and     eax, 0FFFh
cmp     eax, 800h
jge     short loc_447E01
mov     byte ptr [ecx+9], 7

loc_447DFB:
mov     ax, [ebx+44h]
jmp     short loc_447E53

loc_447E01:
mov     byte ptr [ecx+9], 8
mov     ax, [ebx+44h]
add     ah, 8
and     ah, 0Fh
jmp     short loc_447E53

loc_447E11:
mov     eax, offset unk_5151A2
call    sub_4DDDB4
mov     [ebx+44h], ax
mov     edx, [ebx+42h]
sar     edx, 10h
mov     eax, [ecx+54h]
sar     eax, 10h
sub     edx, eax
lea     eax, [edx+400h]
and     eax, 0FFFh
cmp     eax, 800h
jge     short loc_447E45
mov     byte ptr [ecx+9], 8
jmp     short loc_447DFB

loc_447E45:
mov     byte ptr [ecx+9], 7
mov     ax, [ebx+44h]
add     ah, 8
and     ah, 0Fh

loc_447E53:
mov     [ecx+56h], ax
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ebx+0Ah], 0
jmp     short loc_447EBE

loc_447E65:
mov     edx, esi
jmp     loc_447DA0

loc_447E6C:
test    byte ptr [ebx+17h], 20h
jnz     short loc_447EA4
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     edx, [ebx+4]
sar     edx, 10h
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+9]
and     eax, 0FFh
mov     edx, [ebx+8]
sar     edx, 10h
cmp     edx, eax
jl      loc_447D9D

loc_447EA4:
lea     edx, [ecx+14h]
cmp     byte ptr [ecx+9], 5
jz      short loc_447EB4
mov     eax, 0A2h
jmp     short loc_447EB9

loc_447EB4:
mov     eax, 0A0h

loc_447EB9:
call    sub_4D8BC3

loc_447EBE:
mov     word ptr [ecx+15Eh], 7FFFh
and     byte ptr [ecx+3], 0BFh
jmp     short loc_447EDA

loc_447ECD:
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_447EDA:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_447CDC endp

dword_447EE4 dd 2 dup(0)



sub_447EEC proc near

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
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_447F41[edx*4]
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_447F67
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_447F6E

loc_447F67:
mov     eax, ebp
call    sub_4DEADD

loc_447F6E:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 20h
jz      short loc_447FA0
lea     ecx, [eax+34h]
lea     eax, [ebp+228h]
mov     edx, ecx
call    sub_4EF689
lea     eax, [ebp+258h]
mov     edx, ecx
call    sub_4EF689
lea     eax, [ebp+288h]
mov     edx, ecx
call    sub_4EF689

loc_447FA0:
test    byte ptr [ebp+0], 2
jz      short loc_447FE7
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+44h]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+44h]
sub     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax

loc_447FE7:
test    byte ptr [ebp+0], 1
jz      short loc_448037
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 4
jz      short loc_448037
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+190h]
movsd
movsd
push    0
push    offset unk_800000
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     ax, [edx+8]
or      eax, 4880000h
push    eax
lea     eax, [edx+14h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [edx+0Ch]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 30h ; '0'
call    sub_4E01FC

loc_448037:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+14h], 0

loc_448041:
add     esp, 4

loc_448044:
pop     ebp

def_448375:             ; jumptable 00448375 default case
pop     edi             ; jumptable 004484F1 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_447EEC endp




sub_44804B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     dl, ds:byte_77EAC6
mov     ds:byte_559E20[eax*2], dl
mov     eax, [ecx+0Ah]
sar     eax, 18h
xor     dl, dl
mov     ds:byte_559E21[eax*2], dl
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     dword ptr [esi+34h], 1000h
mov     dword ptr [esi+38h], 1
mov     dword ptr [esi+3Ch], 1000h
mov     word ptr [esi], 0EEh
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+18h], 0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     edx, [edx+eax*4]
mov     dl, [edx+0Fh]
and     edx, 0FFh
lea     eax, [esi+24h]
mov     ebx, 0FFFFFFA0h
call    sub_4E19B9
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_5151E0
mov     dword ptr [ecx+10h], 0
mov     eax, ecx
call    sub_42C592
add     eax, 32h ; '2'
mov     [ecx+16h], ax
mov     word ptr [esi+44h], 0FFCEh
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+15Eh], 4210h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44804B endp

align 4
jpt_44826C dd offset loc_448273 ; jump table for switch statement
dd offset loc_448279
dd offset def_44826C
dd offset def_44826C
dd offset loc_44828A
dd offset loc_44828A
dd offset loc_44827E
dd offset def_44826C
dd offset loc_44828A
dd offset loc_44827E



sub_4481B4 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+408h]
test    byte ptr [ebx+1], 1
jz      short loc_4481D9
lea     eax, [ebx+24h]
mov     edx, ecx
call    sub_4E19CA
test    eax, eax
jz      short loc_4481D9
or      byte ptr [ebx], 10h
jmp     short loc_4481DC

loc_4481D9:
and     byte ptr [ebx], 0EFh

loc_4481DC:
test    byte ptr [ebx], 2
jz      short loc_4481E8
mov     eax, ecx
call    sub_448D13

loc_4481E8:
test    byte ptr [ebx], 40h
jz      short loc_448221
mov     dl, [ecx+9]
cmp     dl, 1
jbe     short loc_448221
cmp     dl, 6
jz      short loc_448221
cmp     dword ptr [ecx+80h], 0AFC8h
ja      short loc_448221
mov     byte ptr [ecx+9], 5
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ebx], 3Fh
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     ds:byte_559E21[eax*2], 96h

loc_448221:
test    byte ptr [ebx], 80h
jz      short loc_448249
mov     eax, [ecx+0Ah]
sar     eax, 18h
cmp     ds:byte_559E21[eax*2], 0
jz      short loc_448249
cmp     byte ptr [ecx+9], 1
jbe     short loc_448246
mov     byte ptr [ecx+9], 7
mov     word ptr [ecx+0Ah], 0

loc_448246:
and     byte ptr [ebx], 7Fh

loc_448249:
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_448250[edx*4]
test    byte ptr [ebx], 1
jz      loc_4482C5
mov     al, [ecx+9]
cmp     al, 9           ; switch 10 cases
ja      short def_44826C ; jumptable 0044826C default case, cases 2,3,7
and     eax, 0FFh
jmp     jpt_44826C[eax*4] ; switch jump

loc_448273:             ; jumptable 0044826C case 0
mov     byte ptr [ecx+9], 1
jmp     short loc_4482BC

loc_448279:             ; jumptable 0044826C case 1
test    byte ptr [ebx], 10h
jz      short loc_448284

loc_44827E:             ; jumptable 0044826C cases 6,9
mov     byte ptr [ecx+9], 7
jmp     short loc_4482BC

loc_448284:
mov     byte ptr [ecx+9], 0
jmp     short loc_4482BC

loc_44828A:             ; jumptable 0044826C cases 4,5,8
lea     edx, [ecx+190h]
mov     eax, ecx
call    sub_4AF9F8
mov     eax, ecx
call    sub_4DE2F6
jmp     short loc_4482BC

def_44826C:             ; jumptable 0044826C default case, cases 2,3,7
mov     eax, [ecx+0Ah]
sar     eax, 18h
cmp     ds:byte_559E21[eax*2], 0
jnz     short loc_44827E ; jumptable 0044826C cases 6,9
test    byte ptr [ebx], 10h
jnz     short loc_44827E ; jumptable 0044826C cases 6,9
mov     eax, ecx
call    sub_448C9C

loc_4482BC:
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ebx], 0FEh

loc_4482C5:
mov     dx, [ebx+0Ah]
test    dx, dx
jz      short loc_4482D5
mov     esi, edx
dec     esi
mov     [ebx+0Ah], si

loc_4482D5:
mov     eax, [ecx+0Ah]
sar     eax, 18h
add     eax, eax
mov     dl, ds:byte_559E20[eax]
mov     dh, ds:byte_77EAC6
cmp     dl, dh
jz      short loc_448309
cmp     ds:byte_559E21[eax], 0
jz      short loc_448309
mov     ds:byte_559E20[eax], dh
mov     eax, [ecx+0Ah]
sar     eax, 18h
dec     ds:byte_559E21[eax*2]

loc_448309:
test    byte ptr [ebx+1], 2
jz      short loc_44833A
mov     ax, [ebx+6]
mov     edx, eax
inc     edx
mov     [ebx+6], dx
test    al, 3
jz      short loc_448333
mov     byte ptr [ecx+108h], 5
mov     word ptr [ecx+15Eh], 1Fh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_448333:
mov     byte ptr [ecx+108h], 6

loc_44833A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4481B4 endp



; Attributes: thunk

sub_44833F proc near
jmp     sub_4DE2F6
sub_44833F endp

jpt_448375 dd offset loc_44837C ; jump table for switch statement
dd offset loc_4483A3
dd offset loc_4483C9
dd offset loc_448436
dd offset loc_44847E



sub_448358 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     ecx, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case
and     eax, 0FFh
jmp     jpt_448375[eax*4] ; switch jump

loc_44837C:             ; jumptable 00448375 case 0
mov     byte ptr [ebx+0Ah], 1
mov     byte ptr [ebx+0ACh], 0Bh
mov     word ptr [ecx+8], 0
mov     word ptr [ecx+4], 0Bh
and     byte ptr [ecx], 0F7h
lea     edx, [ebx+14h]
mov     eax, 0BCh
call    sub_4D8BC3

loc_4483A3:             ; jumptable 00448375 case 1
mov     dx, [ecx+4]
dec     edx
mov     [ecx+4], dx
test    dx, dx
jge     def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case
mov     byte ptr [ebx+0Ah], 2
mov     word ptr [ecx+4], 4
mov     dword ptr [ecx+38h], 1000h
or      byte ptr [ecx], 20h

loc_4483C9:             ; jumptable 00448375 case 2
mov     di, [ecx+4]
dec     edi
mov     [ecx+4], di
test    di, di
jl      short loc_44841F
mov     eax, [ecx+2]
sar     eax, 10h
movsx   ax, ds:byte_5151F4[eax]
add     [ebx+16h], ax
mov     eax, [ebx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+20h], eax
mov     eax, [ecx+2]
sar     eax, 10h
movsx   ax, ds:byte_5151F4[eax]
sub     [ecx+44h], ax
mov     eax, [ecx+2]
sar     eax, 10h
mov     eax, ds:dword_5151EA[eax*2]
sar     eax, 10h
mov     [ecx+38h], eax
jmp     def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case

loc_44841F:
mov     byte ptr [ebx+0Ah], 3
mov     word ptr [ecx+4], 3
lea     edx, [ebx+14h]
mov     eax, 0BBh
call    sub_4D8BC3

loc_448436:             ; jumptable 00448375 case 3
mov     si, [ecx+4]
dec     esi
mov     [ecx+4], si
test    si, si
jl      short loc_448466
add     word ptr [ebx+16h], 11h
mov     eax, [ebx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+20h], eax
sub     word ptr [ecx+44h], 11h
sub     dword ptr [ecx+38h], 555h
jmp     def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case

loc_448466:
mov     byte ptr [ebx+0Ah], 4
mov     byte ptr [ebx+108h], 4
mov     dword ptr [ecx+38h], 1
mov     word ptr [ecx+4], 0

loc_44847E:             ; jumptable 00448375 case 4
mov     si, [ecx+4]
dec     esi
mov     [ecx+4], si
test    si, si
jge     def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case
mov     eax, ebx
call    sub_42C592
add     eax, 32h ; '2'
mov     [ebx+16h], ax
mov     eax, [ebx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+20h], eax
mov     word ptr [ecx+44h], 0FFCEh
or      byte ptr [ecx], 1
jmp     def_448375      ; jumptable 00448375 default case
sub_448358 endp         ; jumptable 004484F1 default case

align 4
jpt_4484F1 dd offset loc_4484F8 ; jump table for switch statement
dd offset loc_448551
dd offset loc_448599
dd offset loc_4485F9
dd offset loc_448631
dd offset loc_44868E



sub_4484D4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case
and     eax, 0FFh
jmp     jpt_4484F1[eax*4] ; switch jump

loc_4484F8:             ; jumptable 004484F1 case 0
mov     word ptr [ecx+8], 0
and     word ptr [ecx], 0FBF7h
or      byte ptr [ecx+1], 4
mov     eax, [esi+0Ah]
sar     eax, 18h
cmp     ds:byte_559E21[eax*2], 0
jnz     short loc_448527
cmp     dword ptr [esi+80h], 20000h
ja      def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case

loc_448527:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+108h], 5
mov     word ptr [ecx+4], 3
or      byte ptr [ecx+1], 1
lea     eax, [ecx+24h]
call    sub_4E19B4
lea     edx, [esi+14h]
mov     eax, 0BBh
call    sub_4D8BC3

loc_448551:             ; jumptable 004484F1 case 1
mov     bx, [ecx+4]
dec     ebx
mov     [ecx+4], bx
test    bx, bx
jl      short loc_448581
sub     word ptr [esi+16h], 11h
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
add     word ptr [ecx+44h], 11h
add     dword ptr [ecx+38h], 555h
jmp     def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case

loc_448581:
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+108h], 6
mov     word ptr [ecx+4], 4
mov     dword ptr [ecx+38h], 1000h

loc_448599:             ; jumptable 004484F1 case 2
mov     bx, [ecx+4]
dec     ebx
mov     [ecx+4], bx
test    bx, bx
jl      short loc_4485EF
mov     eax, [ecx+2]
sar     eax, 10h
movsx   ax, ds:byte_515200[eax]
add     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [ecx+2]
sar     eax, 10h
movsx   ax, ds:byte_515200[eax]
sub     [ecx+44h], ax
mov     esi, [ecx+2]
sar     esi, 10h
mov     eax, ds:dword_5151F6[esi*2]
sar     eax, 10h
mov     [ecx+38h], eax
jmp     def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case

loc_4485EF:
mov     byte ptr [esi+0Ah], 3
mov     word ptr [ecx+4], 5

loc_4485F9:             ; jumptable 004484F1 case 3
mov     di, [ecx+4]
dec     edi
mov     [ecx+4], di
test    di, di
jge     def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case
mov     byte ptr [esi+0Ah], 4
mov     word ptr [ecx+4], 0Bh
mov     byte ptr [esi+0ACh], 0
lea     edx, [esi+14h]
mov     eax, 0BCh
call    sub_4D8BC3
or      byte ptr [ecx], 8
and     word ptr [ecx], 0FBDFh

loc_448631:             ; jumptable 004484F1 case 4
mov     bx, [ecx+4]
dec     ebx
mov     [ecx+4], bx
test    bx, bx
jl      short loc_448667
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case

loc_448667:
mov     byte ptr [esi+0Ah], 5
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+4], 3Ch ; '<'

loc_44868E:             ; jumptable 004484F1 case 5
mov     bx, [ecx+4]
dec     ebx
mov     [ecx+4], bx
test    bx, bx
jl      short loc_4486A5
test    byte ptr [ecx], 10h
jz      def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case

loc_4486A5:
or      byte ptr [ecx], 1
and     byte ptr [ecx+1], 0FEh
jmp     def_448375      ; jumptable 00448375 default case
sub_4484D4 endp         ; jumptable 004484F1 default case




sub_4486B1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+408h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4486CF
cmp     al, 1
jz      short loc_4486E6
jmp     loc_448044

loc_4486CF:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     word ptr [esi+4], 40h ; '@'
mov     word ptr [esi+8], 0

loc_4486E6:
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jg      short loc_4486F7
or      byte ptr [esi], 1

loc_4486F7:
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 48h ; 'H'
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
mov     word ptr [esi+44h], 0
mov     esi, [ebp+14h]
sar     esi, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     esi, eax
test    esi, esi
jge     short loc_448750
neg     esi

loc_448750:
cmp     esi, 20h ; ' '
jg      short loc_44875E
test    dh, 0Fh
jz      loc_448044

loc_44875E:
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax
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
jmp     loc_448044
sub_4486B1 endp




sub_448783 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_44879B
cmp     bl, 1
jz      short loc_4487B5
pop     edx
pop     ebx
retn

loc_44879B:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 2
mov     word ptr [eax+4], 4
mov     word ptr [eax+8], 0
and     byte ptr [eax], 0F7h

loc_4487B5:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4487C6
or      byte ptr [eax], 9

loc_4487C6:
pop     edx
pop     ebx
retn
sub_448783 endp




sub_4487C9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     ebp, [eax+408h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4487E7
cmp     al, 1
jz      short loc_448812
jmp     loc_448044

loc_4487E7:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 3
mov     word ptr [esi+44h], 100h
mov     word ptr [ebp+4], 0Ch
mov     word ptr [ebp+8], 0
and     word ptr [ebp+0], 0FD3Dh
or      byte ptr [ebp+1], 2
and     byte ptr [esi+57h], 0Fh

loc_448812:
mov     bx, [ebp+4]
dec     ebx
mov     [ebp+4], bx
mov     eax, 5
sub     eax, ebx
shl     eax, 6
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
test    eax, eax
jz      loc_448044
call    sub_4DE13B
test    eax, eax
jz      short loc_44886C
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
lea     edi, [eax+48h]
lea     esi, [esi+190h]
movsd
movsd

loc_44886C:
or      byte ptr [ebp+0], 9
jmp     loc_448044
sub_4487C9 endp




sub_448875 proc near

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
mov     al, [ebp+0Ah]
cmp     al, 1
jb      short loc_44889E
jbe     short loc_4488C4
cmp     al, 2
jz      loc_4489AA
jmp     loc_448041

loc_44889E:
test    al, al
jnz     loc_448041
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 3Ch ; '<'
mov     word ptr [eax+8], 0
or      byte ptr [eax+1], 2

loc_4488C4:
call    sub_436700
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_4488DF
lea     edx, [ebp+14h]
mov     eax, 0BDh
call    sub_4D8BC3

loc_4488DF:
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     ecx, 20h ; ' '
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
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
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+44h], 0
mov     ebx, [ebp+14h]
sar     ebx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     ebx, eax
mov     eax, ebx
test    ebx, ebx
jge     short loc_448951
neg     eax

loc_448951:
cmp     eax, 20h ; ' '
jg      short loc_44895B
test    dh, 0Fh
jz      short loc_44897B

loc_44895B:
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax
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

loc_44897B:
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jl      short loc_448996
test    byte ptr [eax+17h], 2
jz      loc_448041

loc_448996:
mov     byte ptr [ebp+0Ah], 2
mov     byte ptr [ebp+0ACh], 4
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0Ah

loc_4489AA:
mov     eax, [esp+1Ch+var_1C]
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     short loc_4489DC
call    sub_4DE13B
test    eax, eax
jz      short loc_448A0E
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
lea     edi, [eax+48h]
lea     esi, [ebp+190h]
movsd
movsd
jmp     short loc_448A0E

loc_4489DC:
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_4489F2
lea     edx, [ebp+14h]
mov     eax, 0BEh
call    sub_4D8BC3

loc_4489F2:
xor     ecx, ecx
mov     ebx, 200h
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
jmp     loc_448041

loc_448A0E:
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 9
jmp     loc_448041
sub_448875 endp




sub_448A19 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_448A38
jbe     short loc_448A60
cmp     al, 2
jz      short loc_448AAD
jmp     def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case

loc_448A38:
test    al, al
jnz     def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case
mov     byte ptr [edi+0Ah], 1
mov     byte ptr [edi+0ACh], 6
mov     word ptr [edi+44h], 100h
mov     word ptr [esi+4], 0Ch
mov     word ptr [esi+8], 0
and     byte ptr [esi], 0F7h

loc_448A60:
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
mov     eax, 7
sub     eax, edx
shl     eax, 6
mov     [edi+46h], ax
mov     ebx, [edi+44h]
sar     ebx, 10h
mov     edx, [edi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, edi
call    sub_4DD43B
mov     eax, edi
call    sub_42DE56
test    ah, 10h
jz      def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case
mov     byte ptr [edi+0Ah], 2
mov     byte ptr [edi+0ACh], 7
mov     word ptr [esi+4], 5

loc_448AAD:
mov     cx, [esi+4]
dec     ecx
mov     [esi+4], cx
test    cx, cx
jge     def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case
or      byte ptr [esi], 9
jmp     def_448375      ; jumptable 00448375 default case
sub_448A19 endp         ; jumptable 004484F1 default case




sub_448AC7 proc near

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
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_448AEA
cmp     al, 1
jz      short loc_448B04
jmp     loc_448041

loc_448AEA:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 78h ; 'x'
mov     word ptr [eax+8], 0

loc_448B04:
call    sub_436700
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     ecx, 20h ; ' '
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     ebx, eax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+44h], 0
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
cmp     eax, 20h ; ' '
jle     short loc_448B99
mov     byte ptr [ebp+9], 6
mov     word ptr [ebp+0Ah], 0
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
jmp     loc_448041

loc_448B99:
test    eax, eax
jge     short loc_448B9F
neg     eax

loc_448B9F:
cmp     eax, 20h ; ' '
jg      short loc_448BA9
test    bh, 0Fh
jz      short loc_448BC9

loc_448BA9:
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax
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

loc_448BC9:
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     loc_448041
or      byte ptr [eax], 81h
jmp     loc_448041
sub_448AC7 endp




sub_448BE6 proc near
push    edx
push    esi
push    edi
mov     esi, eax
lea     edx, [eax+408h]
mov     word ptr [edx+8], 0
call    sub_4DE13B
test    eax, eax
jz      short loc_448C16
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
lea     edi, [eax+48h]
lea     esi, [esi+190h]
movsd
movsd

loc_448C16:
or      byte ptr [edx], 1
pop     edi
pop     esi
pop     edx
retn
sub_448BE6 endp




sub_448C1D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_448C3A
cmp     al, 1
jz      short loc_448C4B
jmp     def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case

loc_448C3A:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1
mov     word ptr [edi+8], 0

loc_448C4B:
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 20h ; ' '
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     bx, [esi+56h]
add     ebx, eax
and     bh, 0Fh
mov     [esi+56h], bx
test    ax, ax
jge     short loc_448C7A
cwde
neg     eax
jmp     short loc_448C7B

loc_448C7A:
cwde

loc_448C7B:
cmp     eax, 20h ; ' '
jge     def_448375      ; jumptable 00448375 default case
; jumptable 004484F1 default case
or      byte ptr [edi], 1
jmp     def_448375      ; jumptable 00448375 default case
sub_448C1D endp         ; jumptable 004484F1 default case

jpt_448CE8 dd offset loc_448CEF ; jump table for switch statement
dd offset loc_448CF5
dd offset loc_448CFB
dd offset loc_448D03



sub_448C9C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     ebx, [eax+408h]
xor     edx, edx
xor     eax, eax
jmp     short loc_448CB6

loc_448CAF:
inc     eax
cmp     ax, 4
jge     short loc_448CD9

loc_448CB6:
movsx   ecx, ax
mov     cl, ds:byte_515204[ecx]
xor     ch, ch
add     edx, ecx
mov     cx, [ebx+2]
xor     ch, ch
and     cl, 0Fh
and     ecx, 0FFFFh
movsx   esi, dx
cmp     ecx, esi
jge     short loc_448CAF

loc_448CD9:
mov     byte ptr [edi+9], 2
cmp     ax, 3           ; switch 4 cases
ja      short def_448CE8 ; jumptable 00448CE8 default case
xor     ecx, ecx
mov     cx, ax
jmp     jpt_448CE8[ecx*4] ; switch jump

loc_448CEF:             ; jumptable 00448CE8 case 0
mov     byte ptr [edi+9], 0
jmp     short def_448CE8 ; jumptable 00448CE8 default case

loc_448CF5:             ; jumptable 00448CE8 case 1
mov     word ptr [edi+66h], 0

loc_448CFB:             ; jumptable 00448CE8 case 2
mov     word ptr [edi+66h], 10h
jmp     short def_448CE8 ; jumptable 00448CE8 default case

loc_448D03:             ; jumptable 00448CE8 case 3
mov     word ptr [edi+66h], 0FFF0h

def_448CE8:             ; jumptable 00448CE8 default case
mov     eax, 1
jmp     def_448375      ; jumptable 00448375 default case
sub_448C9C endp         ; jumptable 004484F1 default case




sub_448D13 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
mov     edi, esp
mov     esi, offset dword_447EE4
movsd
movsd
lea     ebx, [eax+408h]
mov     eax, [ebx+14h]
and     eax, 0FFFFFFh
jz      loc_448EC7
test    byte ptr [ebx+1], 4
jnz     loc_448EBA
test    byte ptr [ebx+17h], 38h
jz      loc_448EBA
mov     dx, [ecx+6Eh]
mov     [ecx+0B2h], dx
sub     edx, eax
mov     [ecx+6Eh], dx
test    dx, dx
jg      short loc_448D87
mov     al, [ebx]
and     al, 0F5h
mov     [ebx], al
mov     ah, al
or      ah, 8
mov     [ebx], ah
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh

loc_448D87:
lea     edx, [ecx+14h]
test    byte ptr [ebx], 8
jz      loc_448E68
add     [ebx+0Ah], ax
test    byte ptr [ebx+1], 2
jnz     short loc_448DE6
test    byte ptr [ebx+17h], 20h
jnz     short loc_448DE6
xor     eax, eax
mov     al, [ecx+2]
mov     esi, ds:dword_55A10C
mov     eax, [esi+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
mov     esi, [ebx+8]
sar     esi, 10h
cmp     esi, eax
jge     short loc_448DE6
mov     eax, 0A0h
call    sub_4D8BC3
cmp     byte ptr [ecx+9], 3
jz      loc_448EA8
mov     byte ptr [ecx+9], 3
mov     word ptr [ecx+0Ah], 0
jmp     loc_448EA8

loc_448DE6:
lea     esi, [ecx+14h]
mov     edx, esi
mov     eax, 0A2h
call    sub_4D8BC3
lea     edx, [ebx+1Ch]
test    byte ptr [ebx+22h], 1
jz      short loc_448E2C
mov     eax, esi
call    sub_4DDDB4
mov     esi, [ecx+54h]
sar     esi, 10h
movsx   edx, ax
sub     esi, edx
add     esi, 400h
and     esi, 0FFFh
cmp     esi, 800h
jl      short loc_448E52

loc_448E24:
add     ah, 8
and     ah, 0Fh
jmp     short loc_448E52

loc_448E2C:
mov     eax, esp
call    sub_4DDDB4
mov     edx, [ecx+54h]
sar     edx, 10h
movsx   esi, ax
sub     esi, edx
add     esi, 400h
and     esi, 0FFFh
cmp     esi, 800h
jl      short loc_448E24

loc_448E52:
mov     [ecx+56h], ax
mov     byte ptr [ecx+9], 4
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ebx+0Ah], 0
jmp     short loc_448EA8

loc_448E68:
test    byte ptr [ebx+1], 2
jnz     short loc_448E9B
test    byte ptr [ebx+17h], 20h
jnz     short loc_448E9B
xor     eax, eax
mov     al, [ecx+2]
mov     esi, ds:dword_55A10C
mov     eax, [esi+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
mov     ebx, [ebx+8]
sar     ebx, 10h
cmp     ebx, eax
jge     short loc_448E9B
mov     eax, 0A0h
jmp     short loc_448EA3

loc_448E9B:
lea     edx, [ecx+14h]
mov     eax, 0A2h

loc_448EA3:
call    sub_4D8BC3

loc_448EA8:
mov     word ptr [ecx+15Eh], 7FFFh
mov     byte ptr [ecx+108h], 6
jmp     short loc_448EC7

loc_448EBA:
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_448EC7:
mov     eax, 1
add     esp, 8
jmp     def_448375      ; jumptable 00448375 default case
sub_448D13 endp         ; jumptable 004484F1 default case




sub_448ED4 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_448EDA[edx*4]
pop     edx
retn
sub_448ED4 endp




sub_448EE3 proc near
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
cmp     byte ptr [ecx+3], 0
jz      short loc_448F02
lea     edx, [ecx+3]
jmp     short loc_448F04

loc_448F02:
xor     edx, edx

loc_448F04:
mov     eax, ecx
call    sub_4DD0F8
mov     dh, [ecx+2]
cmp     dh, 26h ; '&'
jnz     short loc_448F2C
mov     dword ptr [ecx+158h], 1D701D7h
mov     dword ptr [ecx+15Ch], 1D7h
jmp     loc_448F8F

loc_448F2C:
cmp     dh, 24h ; '$'
jz      short loc_448F4A
cmp     dh, 30h ; '0'
jz      short loc_448F4A
cmp     dh, 42h ; 'B'
jz      short loc_448F4A
cmp     dh, 53h ; 'S'
jz      short loc_448F4A
cmp     dh, 5Ch ; '\'
jz      short loc_448F4A
cmp     dh, 44h ; 'D'
jnz     short loc_448F60

loc_448F4A:
mov     dword ptr [ecx+158h], 21A021Ah
mov     dword ptr [ecx+15Ch], 21Ah
jmp     short loc_448F8F

loc_448F60:
cmp     dh, 5Eh ; '^'
jnz     short loc_448F7B
mov     dword ptr [ecx+158h], 20001C0h
mov     dword ptr [ecx+15Ch], 180h
jmp     short loc_448F8F

loc_448F7B:
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h

loc_448F8F:
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ebx], 2
mov     word ptr [ebx+8], 0
test    byte ptr [ecx+0Dh], 10h
jz      short loc_448FB1
mov     word ptr [ebx+20h], 2710h
jmp     short loc_448FB7

loc_448FB1:
mov     word ptr [ebx+20h], 1388h

loc_448FB7:
lea     edi, [ebx+0Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dx, [ecx+56h]
mov     [ebx+0Ah], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+6Eh], 0
mov     dx, [ecx+6Eh]
mov     [ecx+0B0h], dx
mov     [ecx+0B2h], dx
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], offset unk_515758
mov     byte ptr [ecx+8], 1
mov     bl, [ecx+0Dh]
and     bl, 7
mov     [ecx+9], bl
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_449031
jmp     loc_449FCE
sub_448EE3 endp




sub_449031 proc near

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
xor     edx, edx
mov     dl, [ebp+2]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_515208
add     ecx, eax
xor     ebx, ebx
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+20h]
xor     edx, edx
mov     eax, ebp
call    sub_44A832
test    al, al
jz      loc_449FCA
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
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_4490B2
mov     eax, ebp
call    sub_44A750

loc_4490B2:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4490B9[edx*4]
test    byte ptr [ebp+0Dh], 20h
jnz     short loc_4490DD
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax

loc_4490DD:
mov     al, [ebp+0ADh]
mov     bl, [ebp+0ACh]
cmp     al, bl
jz      short loc_4490FC
xor     edx, edx
mov     dl, bl
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_449103

loc_4490FC:
mov     eax, ebp
call    sub_4DEADD

loc_449103:
test    byte ptr [ebp+0], 2
jz      short loc_44911A
mov     eax, [ecx+8]
mov     ebx, [ecx+4]
mov     edx, [ecx]
mov     ecx, eax
mov     eax, ebp
call    sub_4ED88B

loc_44911A:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_449130
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
jmp     short loc_44913C

loc_449130:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3

loc_44913C:
mov     eax, ebp
call    sub_432697
jmp     loc_449FCA
sub_449031 endp



; Attributes: thunk

sub_449148 proc near
jmp     sub_4DE2F6
sub_449148 endp




sub_44914D proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_449153[edx*4]
pop     edx
retn
sub_44914D endp




sub_44915C proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+408h]
mov     al, [eax+0Eh]
and     al, 3
movsx   eax, al
shl     eax, 4
mov     ebx, offset unk_5157A4
add     ebx, eax
xor     eax, eax
mov     al, [edx+2]
call    sub_44A7D8
mov     [edx+0ACh], al
call    rand_
and     eax, 0Fh
mov     al, [ebx+eax]
xor     ah, ah
mov     [ecx+8], ax
inc     byte ptr [edx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn
sub_44915C endp




sub_4491A1 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bx, [eax+8]
dec     bx
mov     [eax+8], bx
jnz     short loc_4491DD
cmp     byte ptr [edx+2], 49h ; 'I'
jnz     short loc_4491C4
mov     word ptr [eax+8], 78h ; 'x'
jmp     short loc_4491CA

loc_4491C4:
mov     word ptr [eax+8], 1

loc_4491CA:
xor     eax, eax
mov     al, [edx+2]
call    sub_44A7A0
mov     [edx+0ACh], al

loc_4491DA:
inc     byte ptr [edx+0Ah]

loc_4491DD:
pop     edx
pop     ebx
retn
sub_4491A1 endp




sub_4491E0 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
mov     bx, [edx+8]
test    bx, bx
jz      short loc_4491F9
mov     ecx, ebx
dec     ecx
mov     [edx+8], cx

loc_4491F9:
cmp     word ptr [edx+8], 0
jnz     short loc_449221
cmp     byte ptr [eax+0A7h], 0
jge     short loc_449221
cmp     byte ptr [eax+2], 49h ; 'I'
jnz     short loc_44921D
mov     byte ptr [eax+0ACh], 9
inc     byte ptr [eax+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_44921D:
mov     byte ptr [eax+0Ah], 0

loc_449221:
pop     edx
pop     ecx
pop     ebx
retn
sub_4491E0 endp




sub_449225 proc near
cmp     byte ptr [eax+0A7h], 0
jge     short locret_449232
mov     byte ptr [eax+0Ah], 0

locret_449232:
retn
sub_449225 endp




sub_449233 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_449239[edx*4]
pop     edx
retn
sub_449233 endp




sub_449242 proc near
push    ecx
push    edx
mov     ecx, eax
add     eax, 408h
mov     word ptr [eax+14h], 0
xor     edx, edx
mov     dl, [ecx+0Eh]
mov     [eax+1Eh], dx
shl     edx, 3
mov     [eax+1Eh], dx
mov     [eax+16h], dx
mov     edx, 1
mov     eax, ecx
call    sub_44A7F9
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
retn
sub_449242 endp




sub_449287 proc near

var_18= dword ptr -18h
var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     ecx, eax
lea     ebx, [eax+408h]
mov     edx, offset unk_515850
mov     eax, [eax+0Ah]
sar     eax, 18h
sar     eax, 4
and     eax, 3
mov     [esp+18h+var_18], eax
mov     al, byte ptr [esp+18h+var_18]
and     eax, 0FFh
shl     eax, 4
mov     esi, offset unk_515810
add     esi, eax
call    rand_
and     eax, 0Fh
mov     al, [esi+eax]
mov     [esp+18h+var_14], al
test    al, al
jbe     short loc_4492D5
cmp     al, 1
jz      short loc_4492FC
jmp     short loc_449313

loc_4492D5:
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7E2
mov     [ecx+0ACh], al
mov     edx, 1
mov     eax, ecx
call    sub_44A7F9
mov     [ecx+44h], ax
mov     edx, offset unk_515850
jmp     short loc_449362

loc_4492FC:
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7D8
mov     [ecx+0ACh], al
mov     edx, offset unk_515860
jmp     short loc_449362

loc_449313:
mov     esi, [ebx+14h]
sar     esi, 10h
mov     eax, [ebx+1Ch]
sar     eax, 10h
cmp     esi, eax
jnz     short loc_44932A
mov     [esp+18h+var_14], 0FFh
jmp     short loc_449362

loc_44932A:
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7E2
mov     [ecx+0ACh], al
cmp     word ptr [ebx+14h], 0
jz      short loc_449349
mov     eax, [ebx+8]
sar     eax, 10h
jmp     short loc_449359

loc_449349:
mov     eax, [ebx+8]
sar     eax, 10h
add     eax, 800h
and     eax, 0FFFh

loc_449359:
mov     [ecx+64h], ax
mov     edx, offset unk_515870

loc_449362:
call    rand_
and     eax, 0Fh
add     edx, eax
xor     eax, eax
mov     al, [edx]
mov     [ebx+8], ax
mov     dl, [esp+18h+var_14]
cmp     dl, 0FFh
jz      short loc_449384
mov     al, dl
inc     al
add     [ecx+0Ah], al

loc_449384:
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_449287 endp




sub_44938C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
mov     dx, [edi+16h]
dec     dx
mov     [edi+16h], dx
jnz     short loc_4493DD
cmp     word ptr [edi+14h], 0
jz      short loc_4493C5
mov     al, [esi+0Fh]
and     al, 0Fh
movsx   eax, al
jmp     short loc_4493CD

loc_4493C5:
xor     eax, eax
mov     al, [esi+0Fh]
sar     eax, 4

loc_4493CD:
shl     eax, 8
mov     [esi+64h], ax
mov     byte ptr [esi+0Ah], 5
jmp     loc_449FCE

loc_4493DD:
mov     cx, [edi+8]
dec     cx
mov     [edi+8], cx
jnz     short loc_4493F2

loc_4493E9:
mov     byte ptr [esi+0Ah], 1
jmp     loc_449FCE

loc_4493F2:
mov     ebx, 64h ; 'd'
mov     edx, 40h ; '@'
mov     eax, esi
call    sub_44A832
test    al, al
jz      loc_449FCE
xor     eax, eax
mov     al, [esi+2]
call    sub_44A7D8
mov     [esi+0ACh], al
mov     word ptr [edi+8], 3Ch ; '<'
mov     byte ptr [esi+0Ah], 9
jmp     loc_449FCE
sub_44938C endp




sub_44942A proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bx, [eax+8]
dec     bx
mov     [eax+8], bx
jnz     short loc_449443
mov     byte ptr [edx+0Ah], 1

loc_449443:
pop     edx
pop     ebx
retn
sub_44942A endp




sub_449446 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+408h]
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+62h]
sar     eax, 10h
mov     ebx, 40h ; '@'
call    sub_4DE5F4
mov     edx, eax
test    ax, ax
jnz     short loc_449491
mov     eax, 1
mov     bx, [esi+14h]
sub     eax, ebx
mov     [esi+14h], ax
mov     ax, [esi+1Eh]
mov     di, [esi+16h]
sub     eax, edi
mov     [esi+16h], ax
mov     byte ptr [ecx+0Ah], 1

loc_449491:
mov     ax, [ecx+56h]
add     eax, edx
and     ah, 0Fh
mov     [ecx+56h], ax
jmp     loc_449FCE
sub_449446 endp




sub_4494A3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+62h]
sar     eax, 10h
mov     ebx, 40h ; '@'
call    sub_4DE5F4
mov     edx, eax
test    ax, ax
jnz     short loc_4494E5
mov     word ptr [esi+8], 14h
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7D8
mov     [ecx+0ACh], al
inc     byte ptr [ecx+0Ah]

loc_4494E5:
mov     ax, [ecx+56h]
add     eax, edx
and     ah, 0Fh
mov     [ecx+56h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4494A3 endp




sub_4494F7 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+408h]
mov     bx, [ecx+8]
dec     bx
mov     [ecx+8], bx
jnz     short loc_449527
xor     eax, eax
mov     al, [edx+2]
call    sub_44A7A0
mov     [edx+0ACh], al
mov     word ptr [ecx+8], 46h ; 'F'
inc     byte ptr [edx+0Ah]

loc_449527:
pop     edx
pop     ecx
pop     ebx
retn
sub_4494F7 endp




sub_44952B proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+408h]
cmp     byte ptr [eax+0A7h], 0
jge     short loc_449556
mov     bl, [edx+2]
cmp     bl, 49h ; 'I'
jz      short loc_449556
xor     eax, eax
mov     al, bl
call    sub_44A7D8
mov     [edx+0ACh], al

loc_449556:
mov     bx, [ecx+8]
dec     bx
mov     [ecx+8], bx
jnz     short loc_4495B4
mov     bh, [edx+2]
cmp     bh, 49h ; 'I'
jnz     short loc_449577
mov     byte ptr [edx+0ACh], 9
mov     byte ptr [edx+0Ah], 0Ah
jmp     short loc_449589

loc_449577:
xor     eax, eax
mov     al, bh
call    sub_44A7E2
mov     [edx+0ACh], al
inc     byte ptr [edx+0Ah]

loc_449589:
cmp     word ptr [ecx+14h], 0
jz      short loc_449598
mov     eax, [ecx+8]
sar     eax, 10h
jmp     short loc_4495A8

loc_449598:
mov     eax, [ecx+8]
sar     eax, 10h
add     eax, 800h
and     eax, 0FFFh

loc_4495A8:
mov     [edx+64h], ax
mov     ax, [ecx+1Eh]
mov     [ecx+16h], ax

loc_4495B4:
pop     edx
pop     ecx
pop     ebx
retn
sub_44952B endp




sub_4495B8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+408h]
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+62h]
sar     eax, 10h
mov     ebx, 40h ; '@'
call    sub_4DE5F4
mov     dx, [ecx+56h]
add     edx, eax
and     dh, 0Fh
mov     [ecx+56h], dx
test    ax, ax
jnz     loc_449FCD
mov     byte ptr [ecx+0Ah], 1
cmp     word ptr [ebp+14h], 0
jz      short loc_449631
lea     edi, [ecx+14h]
lea     esi, [ebp+0Ch]
movsd
movsd
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
mov     ax, [ebp+0Ah]
mov     [ecx+56h], ax

loc_449631:
mov     eax, 1
mov     bx, [ebp+14h]
sub     eax, ebx
mov     [ebp+14h], ax
jmp     loc_449FCD
sub_4495B8 endp




sub_449645 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     dx, [esi+8]
dec     dx
mov     [esi+8], dx
jnz     short loc_4496B9
mov     ebx, 64h ; 'd'
mov     edx, 40h ; '@'
call    sub_44A832
test    al, al
jz      short loc_4496B5
mov     edx, [esi+1Ch]
sar     edx, 10h
mov     eax, [esi+14h]
sar     eax, 10h
sub     edx, 5
cmp     eax, edx
jl      short loc_44968E
mov     word ptr [esi+8], 3Ch ; '<'
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44968E:
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7E2
mov     [ecx+0ACh], al
mov     ax, [ecx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ecx+64h], ax
mov     byte ptr [ecx+0Ah], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4496B5:
mov     byte ptr [ecx+0Ah], 1

loc_4496B9:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_449645 endp




sub_4496BE proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0A7h], 0
jge     short loc_4496DE
mov     byte ptr [edx+0Ah], 8
xor     eax, eax
mov     al, [edx+2]
call    sub_44A7E2
mov     [edx+0ACh], al

loc_4496DE:
pop     edx
retn
sub_4496BE endp




sub_4496E0 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4496E6[edx*4]
pop     edx
retn
sub_4496E0 endp




sub_4496EF proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0
xor     ebx, ebx
mov     bl, [edx+0Eh]
mov     [eax+1Eh], bx
shl     ebx, 3
mov     [eax+1Eh], bx
mov     [eax+18h], bx
mov     word ptr [eax+1Ah], 0
mov     word ptr [edx+46h], 0
mov     word ptr [edx+48h], 0
jmp     loc_4491DA
sub_4496EF endp




sub_44972F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+408h]
mov     edx, offset unk_5158AC
call    rand_
and     eax, 0Fh
mov     al, ds:byte_51589C[eax]
cmp     al, 1
jb      short loc_449760
jbe     short loc_4497BE
cmp     al, 2
jz      loc_4497D9
jmp     loc_449800

loc_449760:
test    al, al
jnz     loc_449800
cmp     word ptr [ebx+16h], 0
jnz     short loc_449774
inc     byte ptr [ecx+0Ah]
jmp     short loc_449778

loc_449774:
add     byte ptr [ecx+0Ah], 2

loc_449778:
test    byte ptr [ecx+0Dh], 8
jz      short loc_449797
mov     edx, 2
mov     eax, ecx
call    sub_44A7F9
mov     [ecx+44h], ax
mov     byte ptr [ecx+0ACh], 2
jmp     short loc_4497B7

loc_449797:
mov     edx, 1
mov     eax, ecx
call    sub_44A7F9
mov     [ecx+44h], ax
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7E2
mov     [ecx+0ACh], al

loc_4497B7:
mov     edx, offset unk_5158AC
jmp     short loc_449800

loc_4497BE:
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7D8
mov     [ecx+0ACh], al
mov     edx, offset unk_5158BC
add     byte ptr [ecx+0Ah], 3
jmp     short loc_449800

loc_4497D9:
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7E2
mov     [ecx+0ACh], al
mov     ax, [ecx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebx+1Ch], ax
mov     edx, offset unk_5158CC
add     byte ptr [ecx+0Ah], 4

