mov     eax, ecx
call    sub_4DE96B

def_4441DE:             ; jumptable 004441DE default case
mov     eax, ecx
call    sub_44424E
pop     edx
pop     ecx
pop     ebx
retn
sub_444112 endp

db 8Dh, 40h, 0
jpt_4442F1 dd offset loc_4442F8 ; jump table for switch statement
dd offset loc_4442F8
dd offset loc_4442F8
dd offset def_4442F1
dd offset loc_4442F8
dd offset loc_4442F8



sub_44424E proc near

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
test    byte ptr [edx], 20h
jnz     short loc_4442BA
mov     eax, [esp+1Ch+var_1C]
add     eax, 24h ; '$'
mov     edx, ebp
call    sub_4E19CA
test    eax, eax
jz      short loc_4442BA
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 10h
jmp     short loc_4442C0

loc_4442BA:
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0EFh

loc_4442C0:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 4
jz      short loc_4442CF
mov     eax, ebp
call    sub_444B50

loc_4442CF:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4442D6[edx*4]
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_444308
mov     al, [ebp+9]
cmp     al, 5           ; switch 6 cases
ja      short def_4442F1 ; jumptable 004442F1 default case, case 3
and     eax, 0FFh
jmp     jpt_4442F1[eax*4] ; switch jump

loc_4442F8:             ; jumptable 004442F1 cases 0-2,4,5
mov     byte ptr [ebp+9], 4

def_4442F1:             ; jumptable 004442F1 default case, case 3
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0FEh

loc_444308:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+0Ah]
test    dx, dx
jz      short loc_44431B
mov     ebx, edx
dec     ebx
mov     [eax+0Ah], bx

loc_44431B:
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_44433A
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_444341

loc_44433A:
mov     eax, ebp
call    sub_4DEADD

loc_444341:
test    byte ptr [ebp+0], 2
jz      short loc_44435A
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44435A:
test    byte ptr [ebp+0], 1
jz      short loc_4443B3
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_4443B3
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
jz      short loc_44438F
push    80h
jmp     short loc_444391

loc_44438F:
push    0

loc_444391:
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

loc_4443B3:
add     esp, 4
pop     ebp

def_444422:             ; jumptable 00444422 default case
pop     edi             ; jumptable 0044456A default case
; jumptable 00444A4F default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44424E endp



; Attributes: thunk

sub_4443BD proc near
jmp     sub_4DE2F6
sub_4443BD endp




sub_4443C2 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
mov     bl, [eax+0Ah]
test    bl, bl
jbe     short loc_4443D9
cmp     bl, 1
jz      short loc_4443E5
pop     edx
pop     ebx
retn

loc_4443D9:
inc     bl
mov     [eax+0Ah], bl
mov     byte ptr [eax+0ACh], 0

loc_4443E5:
test    byte ptr [edx], 10h
jnz     short loc_4443F3
test    dword ptr [edx+14h], 0FFFFFFh
jz      short loc_4443F6

loc_4443F3:
or      byte ptr [edx], 1

loc_4443F6:
pop     edx
pop     ebx
retn
sub_4443C2 endp

align 2
jpt_444422 dd offset loc_444429 ; jump table for switch statement
dd offset loc_444457
dd offset loc_4444A0
dd offset loc_444517



sub_44440A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      short def_444422 ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
xor     edx, edx
mov     dl, al
jmp     jpt_444422[edx*4] ; switch jump

loc_444429:             ; jumptable 00444422 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 21h ; '!'
mov     word ptr [esi+44h], 0Dh
mov     word ptr [esi+46h], 0FFE8h
mov     byte ptr [esi+110h], 7
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0

loc_444457:             ; jumptable 00444422 case 1
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jl      short loc_444490
cmp     cx, 2
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case

loc_444490:
mov     word ptr [edi+4], 7
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 22h ; '"'

loc_4444A0:             ; jumptable 00444422 case 2
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
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
test    ah, 0Fh
jz      short loc_4444EE
mov     word ptr [esi+44h], 0

loc_4444EE:
test    dh, 10h
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
cmp     word ptr [edi+4], 0
jg      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     word ptr [edi+4], 12h
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 23h ; '#'
jmp     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case

loc_444517:             ; jumptable 00444422 case 3
mov     dx, [edi+4]     ; jumptable 00444A4F case 3
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     byte ptr [esi+110h], 6
or      byte ptr [edi], 9
jmp     def_444422      ; jumptable 00444422 default case
sub_44440A endp         ; jumptable 0044456A default case
; jumptable 00444A4F default case
db 8Bh, 0C0h
jpt_44456A dd offset loc_444571 ; jump table for switch statement
dd offset loc_44459F
dd offset loc_4445E8
dd offset loc_44465C
dd offset loc_44467E



sub_44454E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
xor     edx, edx
mov     dl, al
jmp     jpt_44456A[edx*4] ; switch jump

loc_444571:             ; jumptable 0044456A case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 25h ; '%'
mov     word ptr [esi+44h], 0FFF5h
mov     word ptr [esi+46h], 0FFE8h
mov     byte ptr [esi+110h], 7
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0

loc_44459F:             ; jumptable 0044456A case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jl      short loc_4445D8
cmp     dx, 2
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case

loc_4445D8:
mov     word ptr [edi+4], 0Bh
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 26h ; '&'

loc_4445E8:             ; jumptable 0044456A case 2
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
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
test    ah, 0Fh
jz      short loc_444633
mov     word ptr [esi+44h], 0

loc_444633:
test    dh, 10h
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
cmp     word ptr [edi+4], 0
jg      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     word ptr [edi+4], 26h ; '&'
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 27h ; '''
jmp     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case

loc_44465C:             ; jumptable 0044456A case 3
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     word ptr [edi+4], 11h
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 28h ; '('

loc_44467E:             ; jumptable 0044456A case 4
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
or      byte ptr [edi], 9
mov     byte ptr [esi+110h], 6
jmp     def_444422      ; jumptable 00444422 default case
sub_44454E endp         ; jumptable 0044456A default case
; jumptable 00444A4F default case
db 8Dh, 40h, 0
jpt_4446D5 dd offset loc_4447DF ; jump table for switch statement
dd offset loc_444839
dd offset loc_444839
dd offset loc_4448D8
dd offset loc_4446DC



sub_4446B6 proc near

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
ja      def_4446D5      ; jumptable 004446D5 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4446D5[edx*4] ; switch jump

loc_4446DC:             ; jumptable 004446D5 case 4
test    byte ptr [edi+17h], 20h
jnz     loc_4447AF
xor     eax, eax
mov     al, [esi+0Bh]
mov     al, ds:byte_515078[eax]
and     eax, 0FFh
mov     edx, [edi+2]
sar     edx, 10h
cmp     edx, eax
jnz     loc_444796
cmp     word ptr [edi+34h], 3
jge     loc_444796
xor     edx, edx
jmp     short loc_444783

loc_444713:
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
xor     ebx, ebx
mov     bl, [esi+0Bh]
mov     bl, ds:byte_51507C[edx+ebx*4]
and     ebx, 0FFh
mov     bx, [esi+ebx*8+190h]
mov     [eax+1Ch], bx
xor     ebx, ebx
mov     bl, [esi+0Bh]
mov     bl, ds:byte_51507C[edx+ebx*4]
and     ebx, 0FFh
imul    ecx, edx, 0Ch
mov     bx, [esi+ebx*8+192h]
sub     ebx, ecx
mov     [eax+1Eh], bx
xor     ebx, ebx
mov     bl, [esi+0Bh]
mov     bl, ds:byte_51507C[edx+ebx*4]
and     ebx, 0FFh
mov     bx, [esi+ebx*8+194h]
mov     [eax+20h], bx
inc     edx
cmp     edx, 4
jge     short loc_44478C

loc_444783:
call    sub_4DE13B
test    eax, eax
jnz     short loc_444713

loc_44478C:
mov     al, [esi+0Bh]
inc     al
and     al, 3
mov     [esi+0Bh], al

loc_444796:
mov     ax, [edi+4]
inc     eax
mov     [edi+4], ax
mov     edx, eax
xor     dh, ah
and     dl, 3Fh
mov     [edi+4], dx
jmp     def_4446D5      ; jumptable 004446D5 default case

loc_4447AF:
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+1Ch]
lea     eax, [esi+14h]
xor     ecx, ecx
call    sub_4DE726
mov     [esp+18h+var_18], eax
mov     edx, [esp+18h+var_18]
test    eax, 0FFFF0000h
jz      short loc_4447D5
add     dh, 8
and     dh, 0Fh

loc_4447D5:
mov     [esi+56h], dx
mov     word ptr [esi+0Ah], 0

loc_4447DF:             ; jumptable 004446D5 case 0
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

loc_444839:             ; jumptable 004446D5 cases 1,2
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
jz      def_4446D5      ; jumptable 004446D5 default case
test    ah, 0Fh
jz      short loc_44487B
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+56h], ax

loc_44487B:
test    byte ptr [esp+18h+var_18+1], 10h
jz      def_4446D5      ; jumptable 004446D5 default case
mov     ch, [edi]
test    ch, 40h
jnz     short loc_4448BA
mov     al, ch
or      al, 40h
mov     [edi], al
test    al, 80h
jz      short loc_4448B7
mov     cx, [edi+34h]
cmp     cx, 3
jge     short loc_4448B7
mov     eax, ecx
inc     eax
mov     [edi+34h], ax
lea     edx, [esi+14h]
mov     ebx, 1
mov     eax, esi
call    sub_4AFA70

loc_4448B7:
or      byte ptr [edi], 80h

loc_4448BA:
lea     edx, [esi+14h]
mov     eax, 0DAh
call    sub_4D8BC3
inc     byte ptr [esi+0Ah]
mov     word ptr [esi+44h], 60h ; '`'
mov     word ptr [esi+46h], 0FE00h
jmp     short def_4446D5 ; jumptable 004446D5 default case

loc_4448D8:             ; jumptable 004446D5 case 3
mov     dl, [esi+0A4h]
test    dl, dl
jnz     short def_4446D5 ; jumptable 004446D5 default case
inc     al
mov     [esi+0Ah], al
mov     [esi+0Bh], dl
mov     byte ptr [esi+0ACh], 5

def_4446D5:             ; jumptable 004446D5 default case
mov     word ptr [esi+15Eh], 190Ch
cmp     dword ptr [esi+80h], offset unk_800000
jbe     short loc_444913
test    byte ptr [esi+6], 80h
jnz     short loc_444913
mov     eax, esi
call    sub_4DE2F6

loc_444913:
add     esp, 4
jmp     def_444422      ; jumptable 00444422 default case
sub_4446B6 endp         ; jumptable 0044456A default case
; jumptable 00444A4F default case



sub_44491B proc near

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
jbe     short loc_444943
cmp     al, 1
jz      short loc_44495A
jmp     loc_4449F9

loc_444943:
mov     byte ptr [ebp+0Ah], 1
mov     word ptr [ebp+44h], 0C0h
mov     word ptr [ebp+66h], 18h
mov     byte ptr [ebp+0ACh], 9

loc_44495A:
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
jnz     short loc_4449C4
mov     edx, [ebp+14h]
sar     edx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     edx, eax
cmp     edx, 10h
jle     short loc_4449E4

loc_4449C4:
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

loc_4449E4:
mov     eax, [esp+1Ch+var_1C]
test    word ptr [eax+2], 1FFh
jnz     short loc_4449F9
mov     byte ptr [ebp+9], 1
mov     word ptr [ebp+0Ah], 0

loc_4449F9:
mov     ah, [ebp+0A4h]
test    ah, ah
jz      short loc_444A0C
cmp     ah, 8
jnz     loc_4443B3

loc_444A0C:
lea     edx, [ebp+14h]
mov     eax, 0D7h
call    sub_4D8BC3
jmp     loc_4443B3
sub_44491B endp

jpt_444A4F dd offset loc_444A56 ; jump table for switch statement
dd offset loc_444A84
dd offset loc_444ACB
dd offset loc_444517



sub_444A2E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     ebx, 0Ch
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
xor     edx, edx
mov     dl, al
jmp     jpt_444A4F[edx*4] ; switch jump

loc_444A56:             ; jumptable 00444A4F case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 21h ; '!'
mov     word ptr [esi+44h], 12h
mov     word ptr [esi+46h], 0FFC0h
mov     byte ptr [esi+110h], 7
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0

loc_444A84:             ; jumptable 00444A4F case 1
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jl      short loc_444ABD
cmp     cx, 2
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case

loc_444ABD:
mov     [edi+4], bx
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 22h ; '"'

loc_444ACB:             ; jumptable 00444A4F case 2
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
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
test    ah, 0Fh
jz      short loc_444B19
mov     word ptr [esi+44h], 0

loc_444B19:
test    dh, 10h
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
cmp     word ptr [edi+4], 0
jg      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     word ptr [edi+4], 12h
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 23h ; '#'
xor     ebx, ebx
xor     edx, edx
mov     eax, 0D8h
call    sub_4D89E4
jmp     def_444422      ; jumptable 00444422 default case
sub_444A2E endp         ; jumptable 0044456A default case
; jumptable 00444A4F default case



sub_444B50 proc near

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
jz      loc_444CE8
test    byte ptr [ebp+17h], 38h
jz      loc_444CDB
mov     ax, [esi+6Eh]
mov     [esi+0B2h], ax
mov     eax, [esp+1Ch+var_1C]
mov     dx, [esi+6Eh]
sub     edx, eax
mov     [esi+6Eh], dx
test    dx, dx
jg      loc_444C3F
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
jmp     short loc_444C2C

loc_444BD2:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 3
movsx   edx, bx
xor     ecx, ecx
mov     cl, ds:byte_515094[edx]
mov     cx, [esi+ecx*8+190h]
mov     [eax+1Ch], cx
xor     ecx, ecx
mov     cl, ds:byte_515094[edx]
imul    edi, ebx, 0Ch
mov     cx, [esi+ecx*8+192h]
sub     ecx, edi
mov     [eax+1Eh], cx
mov     dl, ds:byte_515094[edx]
and     edx, 0FFh
mov     dx, [esi+edx*8+194h]
mov     [eax+20h], dx
inc     ebx
cmp     bx, 4
jge     short loc_444C35

loc_444C2C:
call    sub_4DE13B
test    eax, eax
jnz     short loc_444BD2

loc_444C35:
mov     byte ptr [esi+9], 3
mov     word ptr [esi+0Ah], 0

loc_444C3F:
test    byte ptr [ebp+0], 8
jz      loc_444CC3
mov     eax, [esp+1Ch+var_1C]
add     [ebp+0Ah], ax
test    byte ptr [ebp+17h], 20h
jnz     short loc_444C7A
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
jl      short loc_444CBB

loc_444C7A:
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
jz      short loc_444CB1
mov     byte ptr [esi+9], 1
jmp     short loc_444CB5

loc_444CB1:
mov     byte ptr [esi+9], 2

loc_444CB5:
mov     word ptr [ebp+0Ah], 0

loc_444CBB:
mov     word ptr [esi+0Ah], 0
jmp     short loc_444CD0

loc_444CC3:
lea     edx, [esi+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_444CD0:
mov     word ptr [esi+15Eh], 7FFFh
jmp     short loc_444CE8

loc_444CDB:
lea     edx, [esi+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_444CE8:
mov     eax, 1
jmp     loc_4443B3
sub_444B50 endp




sub_444CF2 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_444CF8[edx*4]
pop     edx
retn
sub_444CF2 endp




sub_444D01 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444D3F
or      byte ptr [ecx], 2
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     edx, edx
mov     dl, [ecx+3]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444D3F:
mov     al, [ecx+0Ch]
cmp     al, 2
jb      short loc_444D4E
jbe     short loc_444D58
cmp     al, 3
jz      short loc_444D5F
jmp     short loc_444D64

loc_444D4E:
cmp     al, 1
jnz     short loc_444D64
inc     word ptr [ecx+14h]
jmp     short loc_444D64

loc_444D58:
sub     word ptr [ecx+18h], 6
jmp     short loc_444D64

loc_444D5F:
add     word ptr [ecx+18h], 2

loc_444D64:
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
mov     eax, ecx
call    sub_4DEADD
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_444D01 endp




sub_444D8B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
mov     eax, ecx
call    sub_444EF6
pop     edx
pop     ecx
pop     ebx
retn
sub_444D8B endp




sub_444DC4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444DDD
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444DDD:
pop     edx
pop     ecx
pop     ebx
retn
sub_444DC4 endp




sub_444DE1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444DFD
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444DFD:
pop     edx
pop     ecx
pop     ebx
retn
sub_444DE1 endp




sub_444E01 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444E2B
mov     byte ptr [ecx+110h], 9
mov     byte ptr [ecx+100h], 0Ch
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444E2B:
pop     edx
pop     ecx
pop     ebx
retn
sub_444E01 endp




sub_444E2F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444E52
mov     byte ptr [ecx+110h], 9
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444E52:
pop     edx
pop     ecx
pop     ebx
retn
sub_444E2F endp




sub_444E56 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444E72
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444E72:
pop     edx
pop     ecx
pop     ebx
retn
sub_444E56 endp




sub_444E76 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444E92
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444E92:
pop     edx
pop     ecx
pop     ebx
retn
sub_444E76 endp




sub_444E96 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444EB2
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444EB2:
pop     edx
pop     ecx
pop     ebx
retn
sub_444E96 endp




sub_444EB6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444ED2
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444ED2:
pop     edx
pop     ecx
pop     ebx
retn
sub_444EB6 endp




sub_444ED6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444EF2
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444EF2:
pop     edx
pop     ecx
pop     ebx
retn
sub_444ED6 endp




sub_444EF6 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_444EFF[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_444F1E
mov     eax, ecx
call    sub_4DEADD

loc_444F1E:
pop     edx
pop     ecx
retn
sub_444EF6 endp



; Attributes: thunk

sub_444F21 proc near
jmp     sub_4DE2F6
sub_444F21 endp




sub_444F26 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_444F2C[edx*4]
pop     edx
retn
sub_444F26 endp




sub_444F35 proc near
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
sub_444F35 endp




sub_444F5A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444F76
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444F76:
pop     edx
pop     ecx
pop     ebx
retn
sub_444F5A endp




sub_444F7A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444F93
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444F93:
pop     edx
pop     ecx
pop     ebx
retn
sub_444F7A endp




sub_444F97 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_444FA0[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_444FBF
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_444FBF:
pop     edx
pop     ecx
retn
sub_444F97 endp


loc_444FC2:
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_444FD2
mov     eax, edx
call    sub_444F35

loc_444FD2:
mov     eax, edx
call    sub_444F97
pop     edx
retn



sub_444FDB proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 3D8h
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
xor     ecx, ecx
mov     cl, [ebp+8]
mov     eax, ebp
call    ds:funcs_445030[ecx*4]
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_445056
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_44505D

loc_445056:
mov     eax, ebp
call    sub_4DEB53

loc_44505D:
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+3Ch]
mov     ds:word_560E1E, ax
mov     eax, ebp
call    sub_4DF795
test    byte ptr [ebp+0], 2
jz      short loc_44508A
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44508A:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+4Ch], 0

loc_445094:
mov     edi, offset unk_559E08
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, offset unk_559E10
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
mov     ax, [ebp+56h]
mov     [ebp+64h], ax
lea     edi, [ebp+14h]
lea     esi, [ebp+1A0h]
movsd
movsd
mov     ecx, [ebp+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [ebp+1Ch], ecx
mov     ecx, [ebp+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [ebp+20h], ecx
mov     ecx, [ebp+16h]
sar     ecx, 10h
shl     ecx, 10h
mov     [ebp+24h], ecx
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+3Ch]
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ecx, [esp+1Ch+var_1C]
mov     ecx, [ecx+4Ch]
mov     ecx, ds:dword_51512A[ecx*2]
sar     ecx, 10h
mov     ebx, 0FFFFFE00h
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
mov     ecx, [esp+1Ch+var_1C]
mov     ecx, [ecx+4Ch]
shl     ecx, 2
mov     edx, [esp+1Ch+var_1C]
add     ecx, edx
mov     ecx, [ecx+44h]
mov     ax, [ebp+14h]
mov     [ecx+1Ch], ax
mov     ecx, [edx+4Ch]
shl     ecx, 2
add     ecx, edx
mov     ecx, [ecx+44h]
mov     ax, [ebp+16h]
mov     [ecx+1Eh], ax
mov     ecx, [edx+4Ch]
shl     ecx, 2
add     ecx, edx
mov     ecx, [ecx+44h]
mov     ax, [ebp+18h]
mov     [ecx+20h], ax
lea     edi, [ebp+14h]
mov     esi, offset unk_559E08
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, offset unk_559E10
movsd
movsd
movsd
movsd
mov     ax, [ebp+64h]
mov     [ebp+56h], ax
mov     edi, [edx+4Ch]
inc     edi
mov     [edx+4Ch], edi
cmp     edi, 2
jl      loc_445094
test    byte ptr [ebp+0], 2
jz      short loc_4451D3
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 4
jz      short loc_4451D3
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+190h]
movsd
movsd
push    0
push    offset unk_800000
add     word ptr [eax+0Eh], 1Eh
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
mov     edx, 50h ; 'P'
call    sub_4E01FC

loc_4451D3:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+14h], 0
sub_444FDB endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_445357
;   ADDITIONAL PARENT FUNCTION sub_44569A
;   ADDITIONAL PARENT FUNCTION sub_446357

def_446381:             ; jumptable 00446381 default case
add     esp, 4

loc_4451E0:
pop     ebp
jmp     def_445C30      ; jumptable 00445C30 default case
; END OF FUNCTION CHUNK FOR sub_445357 ; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case



sub_4451E6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+3D8h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [esi], 26h ; '&'
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+18h], 0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
xor     edx, edx
mov     dl, [eax+0Fh]
lea     eax, [esi+24h]
mov     ebx, 0FFFFFFA0h
call    sub_4E19B9
mov     word ptr [esi+34h], 0
mov     word ptr [esi+36h], 0
mov     word ptr [esi+3Ch], 0
mov     word ptr [esi+38h], 4
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E1877
mov     [esi+40h], eax
mov     eax, [eax+0Ah]
sar     eax, 18h
call    sub_4E1877
mov     [esi+44h], eax
mov     eax, [esi+40h]
mov     eax, [eax+0Bh]
sar     eax, 18h
call    sub_4E1877
mov     [esi+48h], eax
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
mov     dword ptr [ecx+78h], offset unk_515120
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+15Eh], 4210h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4451E6 endp

db 90h
jpt_445426 dd offset loc_44545A ; jump table for switch statement
dd offset def_445426
dd offset def_445426
dd offset loc_44545A
dd offset loc_445448
dd offset def_445426
dd offset loc_44542D
dd offset loc_445436
dd offset loc_44543F
dd offset loc_44543F
dd offset def_445426
dd offset loc_44545A
dd offset loc_445451
dd offset loc_44545A



sub_445357 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004451DD SIZE 00000009 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+3D8h]
mov     ebx, [eax+54h]
sar     ebx, 10h
xor     edx, edx
mov     dx, [ebp+3Ch]
add     ebx, edx
and     ebx, 0FFFh
lea     eax, [ebp+24h]
mov     edx, [esp+1Ch+var_1C]
call    sub_4E19D8
test    eax, eax
jz      short loc_44538D
or      byte ptr [ebp+1], 1
jmp     short loc_445391

loc_44538D:
and     byte ptr [ebp+1], 0FEh

loc_445391:
test    byte ptr [ebp+0], 2
jz      short loc_44539F
mov     eax, [esp+1Ch+var_1C]
call    sub_446779

loc_44539F:
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+54h]
sar     edx, 10h
xor     eax, eax
mov     ax, [ebp+3Ch]
lea     ebx, [eax+edx]
and     ebx, 0FFFh
mov     eax, [esp+1Ch+var_1C]
add     eax, 14h
mov     ecx, 40h ; '@'
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     edx, [esp+1Ch+var_1C]
mov     [edx+64h], ax
xor     edx, edx
mov     dx, [ebp+3Ch]
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+62h]
sar     eax, 10h
add     eax, edx
add     eax, 500h
and     eax, 0FFFh
cmp     eax, 0A00h
jge     short loc_445402
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+64h]
add     edx, eax
mov     [ebp+3Ch], dx

loc_445402:
xor     edx, edx
mov     eax, [esp+1Ch+var_1C]
mov     dl, [eax+9]
call    ds:funcs_44540A[edx*4]
test    byte ptr [ebp+0], 1
jz      short loc_445474
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+9]
cmp     al, 0Dh         ; switch 14 cases
ja      short def_445426 ; jumptable 00445426 default case, cases 1,2,5,10
and     eax, 0FFh
jmp     jpt_445426[eax*4] ; switch jump

loc_44542D:             ; jumptable 00445426 case 6
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 8
jmp     short loc_445467

loc_445436:             ; jumptable 00445426 case 7
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 9
jmp     short loc_445467

loc_44543F:             ; jumptable 00445426 cases 8,9
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 4
jmp     short loc_445467

loc_445448:             ; jumptable 00445426 case 4
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 1
jmp     short loc_445467

loc_445451:             ; jumptable 00445426 case 12
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 3
jmp     short loc_445467

loc_44545A:             ; jumptable 00445426 cases 0,3,11,13
test    byte ptr [ebp+1], 1
jnz     short loc_44543F ; jumptable 00445426 cases 8,9

def_445426:             ; jumptable 00445426 default case, cases 1,2,5,10
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 0

loc_445467:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+0Ah], 0
and     byte ptr [ebp+0], 0FEh

loc_445474:
mov     bx, [ebp+34h]
test    bx, bx
jz      short loc_445484
mov     ecx, ebx
dec     ecx
mov     [ebp+34h], cx

loc_445484:
mov     si, [ebp+0Ah]
test    si, si
jz      short loc_445494
mov     edi, esi
dec     edi
mov     [ebp+0Ah], di

loc_445494:
mov     ax, [ebp+36h]
test    ax, ax
jz      short loc_4454A4
mov     edx, eax
dec     edx
mov     [ebp+36h], dx

loc_4454A4:
test    byte ptr [ebp+1], 8
jz      def_446381      ; jumptable 00446381 default case
mov     bx, [ebp+38h]
dec     ebx
mov     [ebp+38h], bx
test    bx, bx
jge     def_446381      ; jumptable 00446381 default case
call    sub_4DE13B
mov     [ebp+50h], eax
test    eax, eax
jz      short loc_4454EB
mov     byte ptr [eax], 5
mov     eax, [ebp+50h]
mov     byte ptr [eax+2], 80h
mov     eax, [ebp+50h]
mov     byte ptr [eax+3], 41h ; 'A'
mov     esi, [ebp+50h]
lea     edi, [esi+48h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+14h]
movsd
movsd

loc_4454EB:
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE2F6
mov     eax, [ebp+44h]
call    sub_4DE3EA
mov     eax, [ebp+48h]
call    sub_4DE3EA
mov     ebp, [ebp+40h]
or      byte ptr [ebp+0Fh], 2
mov     ebp, [esp+1Ch+var_1C]
add     ebp, 190h
xor     ebx, ebx
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4AFA70
mov     edx, ebp
mov     eax, 0A1h
call    sub_4D8BC3
jmp     def_446381      ; jumptable 00446381 default case
sub_445357 endp




sub_445530 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edx, [eax+3D8h]
test    byte ptr [edx], 2
jz      short loc_445549
mov     eax, ecx
call    sub_446779

loc_445549:
mov     ax, [edx+3Ch]
sub     eax, 80h
mov     si, [edx+2]
and     esi, 0FFh
sub     eax, esi
and     ah, 0Fh
mov     [edx+3Ch], ax
movzx   esi, byte ptr [ecx+9]
mov     eax, ecx
call    ds:funcs_44540A[esi*4]
test    byte ptr [edx], 1
jz      short loc_4455A0
mov     al, [ecx+9]
cmp     al, 6
jb      short loc_445593
jbe     short loc_445587
cmp     al, 7
jz      short loc_44558D
jmp     short loc_445593

loc_445587:
mov     byte ptr [ecx+9], 8
jmp     short loc_445597

loc_44558D:
mov     byte ptr [ecx+9], 9
jmp     short loc_445597

loc_445593:
mov     byte ptr [ecx+9], 2

loc_445597:
mov     word ptr [ecx+0Ah], 0
and     byte ptr [edx], 0FEh

loc_4455A0:
mov     bx, [edx+0Ah]
test    bx, bx
jz      short loc_4455B0
mov     esi, ebx
dec     esi
mov     [edx+0Ah], si

loc_4455B0:
test    byte ptr [edx+1], 8
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     di, [edx+36h]
dec     edi
mov     [edx+36h], di
test    di, di
jge     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
call    sub_4DE13B
mov     [edx+50h], eax
mov     esi, eax
test    eax, eax
jz      short loc_4455F6
mov     byte ptr [eax], 5
mov     esi, [edx+50h]
mov     byte ptr [esi+2], 80h
mov     eax, [edx+50h]
mov     byte ptr [eax+3], 41h ; 'A'
mov     esi, [edx+50h]
lea     edi, [esi+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4455F6:
mov     eax, ecx
call    sub_4DE2F6
mov     eax, [edx+44h]
call    sub_4DE3EA
mov     eax, [edx+48h]
call    sub_4DE3EA
mov     edx, [edx+40h]
or      byte ptr [edx+0Fh], 2
lea     esi, [ecx+190h]
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_4AFA70
mov     edx, esi
mov     eax, 0A1h
call    sub_4D8BC3
jmp     def_445C30      ; jumptable 00445C30 default case
sub_445530 endp         ; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case



sub_445639 proc near
push    edx
lea     edx, [eax+3D8h]
call    sub_4DE2F6
mov     eax, [edx+44h]
call    sub_4DE3EA
mov     eax, [edx+48h]
call    sub_4DE3EA
pop     edx
retn
sub_445639 endp




sub_445657 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 3D8h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_44566F
cmp     bl, 1
jz      short loc_445686
pop     edx
pop     ebx
retn

loc_44566F:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0
mov     word ptr [eax+4], 1Eh
mov     word ptr [eax+8], 0

loc_445686:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_445697
or      byte ptr [eax], 1

loc_445697:
pop     edx
pop     ebx
retn
sub_445657 endp




sub_44569A proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004451DD SIZE 00000009 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 3D8h
mov     [esp+1Ch+var_1C], eax
mov     dword ptr [eax+58h], offset byte_5F8364
test    byte ptr [eax+17h], 2
jz      short loc_4456C0
mov     word ptr [eax+8], 0

loc_4456C0:
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_4456D0
cmp     al, 1
jz      short loc_445707
jmp     def_446381      ; jumptable 00446381 default case

loc_4456D0:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+8], 0
mov     ax, [eax+2]
xor     ah, ah
and     al, 1Fh
add     eax, 10h
mov     edx, [esp+1Ch+var_1C]
mov     [edx+36h], ax
cmp     byte ptr [ebp+3], 0
jnz     short loc_445707
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+34h], 12Ch

loc_445707:
cmp     byte ptr [ebp+0A6h], 2
jnz     short loc_44571D
lea     edx, [ebp+14h]
mov     eax, 0B6h
call    sub_4D8BC3

loc_44571D:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+58h]
add     edx, 14h
lea     eax, [ebp+14h]
mov     ecx, 10h
call    sub_4DE552
mov     [ebp+64h], ax
mov     ax, [ebp+56h]
add     ax, [ebp+64h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, [esp+1Ch+var_1C]
mov     [edx+5Ch], eax
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
mov     eax, edx
test    edx, edx
jge     short loc_445796
neg     eax

loc_445796:
cmp     eax, 20h ; ' '
jle     short loc_4457B8
mov     ax, [ebp+2Eh]
mov     [ebp+16h], ax
mov     eax, [ebp+38h]
mov     [ebp+20h], eax
mov     byte ptr [ebp+9], 0Ah

loc_4457AD:
mov     word ptr [ebp+0Ah], 0
jmp     def_446381      ; jumptable 00446381 default case

loc_4457B8:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+5Dh], 0Fh
jz      short loc_4457D9
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
mov     byte ptr [ebp+9], 0Bh
jmp     short loc_4457AD

loc_4457D9:
cmp     byte ptr [ebp+3], 0
jnz     short loc_4457F5
mov     bx, [eax+34h]
test    bx, bx
jnz     short loc_4457F5
mov     byte ptr [ebp+9], 4
mov     [ebp+0Ah], bx
jmp     def_446381      ; jumptable 00446381 default case

loc_4457F5:
cmp     dword ptr [ebp+80h], 20000h
jnb     short loc_44582A
mov     byte ptr [ebp+9], 0Ch
mov     word ptr [ebp+0Ah], 0
cmp     byte ptr [ebp+0A4h], 0Fh
jnb     short loc_44581F
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 8
jmp     def_446381      ; jumptable 00446381 default case

loc_44581F:
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0F7h
jmp     def_446381      ; jumptable 00446381 default case

loc_44582A:
cmp     byte ptr [ebp+3], 0
jnz     loc_4458A1
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+36h], 0
jnz     short loc_4458A1
push    100h
mov     eax, [eax+58h]
mov     edx, [eax+54h]
sar     edx, 10h
push    edx
lea     ecx, [eax+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
lea     eax, [ebp+1Ch]
mov     ebx, 100h
call    sub_4DE639
test    eax, eax
jz      short loc_4458A1
mov     eax, ebp
call    sub_446729
test    eax, eax
jbe     short loc_445879
cmp     eax, 1
jz      short loc_44587F
jmp     short loc_4458A1

loc_445879:
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 40h

loc_44587F:
mov     byte ptr [ebp+9], 0Ch
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax+1], 2
cmp     byte ptr [ebp+0A4h], 0Fh
jnb     short loc_44589E
or      byte ptr [eax], 8
jmp     short loc_4458A1

loc_44589E:
and     byte ptr [eax], 0F7h

loc_4458A1:
cmp     byte ptr [ebp+3], 1
jnz     def_446381      ; jumptable 00446381 default case
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+34h], 0
jnz     def_446381      ; jumptable 00446381 default case
push    300h
mov     eax, [eax+58h]
mov     edx, [eax+54h]
sar     edx, 10h
push    edx
lea     ecx, [eax+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
xor     eax, eax
mov     ebx, [esp+24h+var_1C]
mov     ax, [ebx+3Ch]
add     edx, eax
and     edx, 0FFFh
lea     eax, [ebp+1Ch]
mov     ebx, 18h
call    sub_4DE639
test    eax, eax
jz      def_446381      ; jumptable 00446381 default case
call    sub_4DE043
mov     edx, [esp+1Ch+var_1C]
mov     [edx+54h], eax
test    eax, eax
jz      def_446381      ; jumptable 00446381 default case
mov     byte ptr [eax], 1
mov     eax, [edx+54h]
mov     byte ptr [eax+2], 9
mov     eax, [edx+54h]
mov     byte ptr [eax+3], 0
mov     esi, [edx+54h]
lea     edi, [esi+14h]
lea     esi, [ebp+14h]
movsd
movsd
mov     esi, [edx+54h]
lea     edi, [esi+1Ch]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0FFFFF300h
mov     edx, [ebp+54h]
sar     edx, 10h
xor     eax, eax
mov     ecx, [esp+24h+var_1C]
mov     ax, [ecx+3Ch]
lea     ebx, [eax+edx]
and     ebx, 0FFFh
mov     eax, [ecx+54h]
lea     edx, [eax+1Ch]
add     eax, 14h
mov     ecx, 6E0h
call    sub_4DD4C5
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+54h]
mov     dx, [ebp+56h]
mov     [eax+64h], dx
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+34h], 3Ch ; '<'
mov     eax, [eax+40h]
or      byte ptr [eax+0Fh], 1
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
mov     byte ptr [eax+9], 0
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+48h]
mov     byte ptr [eax+9], 0
jmp     def_446381      ; jumptable 00446381 default case
sub_44569A endp




sub_44599E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+3D8h]
mov     dword ptr [esi+58h], offset byte_5F8364
test    byte ptr [esi+17h], 2
jz      short loc_4459BF
mov     word ptr [esi+8], 0

loc_4459BF:
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_4459CF
cmp     al, 1
jz      short loc_4459F1
jmp     loc_4451E0

loc_4459CF:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 2
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [esi+8], ax

loc_4459F1:
cmp     byte ptr [ebp+0A6h], 2
jnz     short loc_445A07
lea     edx, [ebp+14h]
mov     eax, 0B6h
call    sub_4D8BC3

loc_445A07:
test    byte ptr [esi+1], 1
jnz     short loc_445A15
or      byte ptr [esi], 1
jmp     loc_4451E0

loc_445A15:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     [esi+5Ch], eax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_445A5A
neg     eax

loc_445A5A:
cmp     eax, 20h ; ' '
jle     short loc_445A7C
mov     ax, [ebp+2Eh]
mov     [ebp+16h], ax
mov     eax, [ebp+38h]
mov     [ebp+20h], eax
mov     byte ptr [ebp+9], 0Ah

loc_445A71:
mov     word ptr [ebp+0Ah], 0
jmp     loc_4451E0

loc_445A7C:
test    byte ptr [esi+5Dh], 0Fh
jnz     short loc_445A88
test    byte ptr [esi+17h], 2
jz      short loc_445AA0

loc_445A88:
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
mov     byte ptr [ebp+9], 0Bh
jmp     short loc_445A71

loc_445AA0:
cmp     dword ptr [ebp+80h], offset loc_480000
jbe     loc_4451E0
push    400h
mov     eax, [ebp+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     eax, [esi+58h]
mov     edx, [eax+54h]
sar     edx, 10h
add     eax, 1Ch
mov     ebx, 800h
call    sub_4DE689
test    eax, eax
jz      loc_4451E0
mov     byte ptr [ebp+9], 0Dh
mov     word ptr [ebp+0Ah], 0
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_445AF8
or      byte ptr [esi], 8
jmp     loc_4451E0

loc_445AF8:
and     byte ptr [esi], 0F7h
jmp     loc_4451E0
sub_44599E endp




sub_445B00 proc near
push    ebx
push    edx
lea     edx, [eax+3D8h]
mov     bl, [eax+0Ah]
test    bl, bl
ja      short loc_445B20
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 0
mov     word ptr [edx+8], 0

loc_445B20:
pop     edx
pop     ebx
retn
sub_445B00 endp




sub_445B23 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dword ptr [edi+58h], offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_445B4B
cmp     al, 1
jz      loc_44621C      ; jumptable 00446167 case 4
; jumptable 0044664F case 3
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_445B4B:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 5
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [edi+58h]
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
sar     eax, 2
mov     [esi+66h], ax
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0
mov     eax, [edi+40h]
or      byte ptr [eax+0Fh], 1
mov     eax, [edi+44h]
mov     byte ptr [eax+9], 0
mov     eax, [edi+48h]
mov     byte ptr [eax+9], 0
jmp     loc_44621C      ; jumptable 00446167 case 4
sub_445B23 endp         ; jumptable 0044664F case 3

; START OF FUNCTION CHUNK FOR sub_446143

loc_445B9C:
mov     ecx, [esi+64h]
sar     ecx, 10h
jmp     loc_446240
; END OF FUNCTION CHUNK FOR sub_446143



sub_445BA7 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 3D8h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_445BBF
cmp     bl, 1
jz      short loc_445BD6
pop     edx
pop     ebx
retn

loc_445BBF:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 5
mov     word ptr [eax+4], 10h
mov     word ptr [eax+8], 0

loc_445BD6:
mov     bx, [edx+56h]
add     ebx, 80h
and     bh, 0Fh
mov     [edx+56h], bx
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jg      short loc_445BF8
or      byte ptr [eax], 1

loc_445BF8:
pop     edx
pop     ebx
retn
sub_445BA7 endp

jpt_445C30 dd offset loc_445C37 ; jump table for switch statement
dd offset loc_445C75
dd offset loc_445C9A
dd offset loc_445CB2
dd offset loc_445D10
dd offset loc_445D7E



sub_445C13 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dl, [eax+0Ah]
cmp     dl, 5           ; switch 6 cases
ja      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
xor     eax, eax
mov     al, dl
jmp     jpt_445C30[eax*4] ; switch jump

loc_445C37:             ; jumptable 00445C30 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 20h ; ' '
mov     word ptr [edi+8], 0
and     byte ptr [edi], 0DFh
and     byte ptr [esi+57h], 0Fh
cmp     word ptr [esi+6Eh], 0
jg      short loc_445C59
and     byte ptr [edi], 0FBh

loc_445C59:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFBA0h

loc_445C62:
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_445C75:             ; jumptable 00445C30 case 1
mov     byte ptr [esi+0Ah], 2
mov     word ptr [esi+44h], 0FE70h
mov     word ptr [esi+46h], 0
mov     word ptr [edi+4], 3
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     ebx, 0FFFFF6A0h
jmp     short loc_445C62

loc_445C9A:             ; jumptable 00445C30 case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jge     short loc_445CB2 ; jumptable 00445C30 case 3
mov     byte ptr [esi+0Ah], 3
mov     word ptr [esi+46h], 158h

loc_445CB2:             ; jumptable 00445C30 case 3
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     [edi+5Ch], eax
test    eax, eax
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
test    ah, 0Fh
jz      short loc_445CE4
mov     word ptr [esi+44h], 0

loc_445CE4:
test    byte ptr [edi+5Dh], 10h
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0ACh], 21h ; '!'
mov     byte ptr [esi+0Ah], 4
mov     word ptr [esi+44h], 0FF60h

loc_445CFF:
mov     word ptr [esi+46h], 0
mov     word ptr [edi+4], 6
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_445D10:             ; jumptable 00445C30 case 4
mov     cx, [edi+4]     ; jumptable 00445DD0 case 4
test    cx, cx
jz      short loc_445D20
mov     eax, ecx
dec     eax
mov     [edi+4], ax

loc_445D20:
mov     eax, 3
sub     ax, [edi+4]
shl     eax, 4
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     [edi+5Ch], eax
test    eax, eax
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
test    ah, 0Fh
jz      short loc_445D65
mov     word ptr [esi+44h], 0

loc_445D65:
test    byte ptr [edi+5Dh], 10h
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0Ah], 5
mov     word ptr [edi+4], 0Ah
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_445D7E:             ; jumptable 00445C30 case 5
mov     dx, [edi+4]     ; jumptable 00445DD0 case 5
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
or      byte ptr [edi], 1
jmp     def_445C30      ; jumptable 00445C30 default case
sub_445C13 endp         ; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
db 8Dh, 40h, 0
jpt_445DD0 dd offset loc_445DD7 ; jump table for switch statement
dd offset loc_445E15
dd offset loc_445E3A
dd offset loc_445E52
dd offset loc_445D10
dd offset loc_445D7E



sub_445DB3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dl, [eax+0Ah]
cmp     dl, 5           ; switch 6 cases
ja      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
xor     eax, eax
mov     al, dl
jmp     jpt_445DD0[eax*4] ; switch jump

loc_445DD7:             ; jumptable 00445DD0 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1Eh
mov     word ptr [edi+8], 0
and     byte ptr [edi], 0DFh
and     byte ptr [esi+57h], 0Fh
cmp     word ptr [esi+6Eh], 0
jg      short loc_445DF9
and     byte ptr [edi], 0FBh

loc_445DF9:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 460h

loc_445E02:
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_445E15:             ; jumptable 00445DD0 case 1
mov     byte ptr [esi+0Ah], 2
mov     word ptr [esi+44h], 190h
mov     word ptr [esi+46h], 0
mov     word ptr [edi+4], 3
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     ebx, 0FFFFF6A0h
jmp     short loc_445E02

loc_445E3A:             ; jumptable 00445DD0 case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jge     short loc_445E52 ; jumptable 00445DD0 case 3
mov     byte ptr [esi+0Ah], 3
mov     word ptr [esi+46h], 158h

loc_445E52:             ; jumptable 00445DD0 case 3
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     [edi+5Ch], eax
test    eax, eax
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
test    ah, 0Fh
jz      short loc_445E84
mov     word ptr [esi+44h], 0

loc_445E84:
test    byte ptr [edi+5Dh], 10h
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0ACh], 1Fh
mov     byte ptr [esi+0Ah], 4
mov     word ptr [esi+44h], 0A0h
jmp     loc_445CFF
sub_445DB3 endp

db 8Dh, 40h, 0
jpt_445ED8 dd offset loc_445EDF ; jump table for switch statement
dd offset loc_445EF6
dd offset loc_445F12
dd offset loc_445F2E
dd offset loc_445FAA



sub_445EBB proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 3D8h
mov     dl, [esi+0Ah]
cmp     dl, 4           ; switch 5 cases
ja      def_445ED8      ; jumptable 00445ED8 default case
and     edx, 0FFh
jmp     jpt_445ED8[edx*4] ; switch jump

loc_445EDF:             ; jumptable 00445ED8 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1Ch
mov     word ptr [eax+4], 7
mov     word ptr [eax+8], 0

loc_445EF6:             ; jumptable 00445ED8 case 1
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_445ED8      ; jumptable 00445ED8 default case
mov     byte ptr [esi+0Ah], 2
mov     word ptr [eax+4], 6

loc_445F12:             ; jumptable 00445ED8 case 2
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     def_445ED8      ; jumptable 00445ED8 default case
mov     byte ptr [esi+0Ah], 3
mov     word ptr [eax+4], 0Ah

loc_445F2E:             ; jumptable 00445ED8 case 3
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      short loc_445FA0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0F0h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+14h]
sar     eax, 10h
mov     edx, [esi+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_445F7E
neg     eax

loc_445F7E:
cmp     eax, 20h ; ' '
jle     short def_445ED8 ; jumptable 00445ED8 default case
mov     ax, [esi+2Eh]
mov     [esi+16h], ax
mov     eax, [esi+38h]
mov     [esi+20h], eax
mov     byte ptr [esi+9], 0Ah
mov     word ptr [esi+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_445FA0:
mov     byte ptr [esi+0Ah], 4
mov     word ptr [eax+4], 7

loc_445FAA:             ; jumptable 00445ED8 case 4
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     short def_445ED8 ; jumptable 00445ED8 default case
or      byte ptr [eax], 21h

def_445ED8:             ; jumptable 00445ED8 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_445EBB endp

db 8Dh, 40h, 0
jpt_445FF4 dd offset loc_445FFB ; jump table for switch statement
dd offset loc_446012
dd offset loc_44607C
dd offset loc_446098
dd offset loc_4460B9



sub_445FD7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 3D8h
mov     dl, [esi+0Ah]
cmp     dl, 4           ; switch 5 cases
ja      def_445FF4      ; jumptable 00445FF4 default case
and     edx, 0FFh
jmp     jpt_445FF4[edx*4] ; switch jump

loc_445FFB:             ; jumptable 00445FF4 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1Dh
mov     word ptr [eax+4], 0Dh
mov     word ptr [eax+8], 0

loc_446012:             ; jumptable 00445FF4 case 1
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jl      short loc_446072
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFB0h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, [esi+2Ch]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
test    edx, edx
jge     short loc_446064
neg     eax

loc_446064:
cmp     eax, 20h ; ' '
jle     def_445FF4      ; jumptable 00445FF4 default case
jmp     loc_446111

loc_446072:
mov     byte ptr [esi+0Ah], 2
mov     word ptr [eax+4], 3

loc_44607C:             ; jumptable 00445FF4 case 2
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_445FF4      ; jumptable 00445FF4 default case
mov     byte ptr [esi+0Ah], 3
mov     word ptr [eax+4], 8

loc_446098:             ; jumptable 00445FF4 case 3
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     def_445FF4      ; jumptable 00445FF4 default case
mov     byte ptr [esi+0Ah], 4
mov     word ptr [eax+4], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4460B9:             ; jumptable 00445FF4 case 4
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4460CA
or      byte ptr [eax], 21h

loc_4460CA:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFF80h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+14h]
sar     eax, 10h
mov     edx, [esi+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_44610C
neg     eax

loc_44610C:
cmp     eax, 20h ; ' '
jle     short def_445FF4 ; jumptable 00445FF4 default case

loc_446111:
mov     ax, [esi+2Eh]
mov     [esi+16h], ax
mov     eax, [esi+38h]
mov     [esi+20h], eax
mov     byte ptr [esi+9], 0Ah
mov     word ptr [esi+0Ah], 0

def_445FF4:             ; jumptable 00445FF4 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_445FD7 endp

db 90h
jpt_446167 dd offset loc_44616E ; jump table for switch statement
dd offset loc_446185
dd offset loc_4461A6
dd offset loc_4461DB
dd offset loc_44621C



sub_446143 proc near

; FUNCTION CHUNK AT 00445B9C SIZE 0000000B BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dword ptr [edi+58h], offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
and     eax, 0FFh
jmp     jpt_446167[eax*4] ; switch jump

loc_44616E:             ; jumptable 00446167 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 11h
mov     word ptr [edi+4], 0Ah
mov     word ptr [edi+8], 0

loc_446185:             ; jumptable 00446167 case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     short loc_446199
mov     byte ptr [esi+0Ah], 2
jmp     short loc_4461A6 ; jumptable 00446167 case 2

loc_446199:
mov     eax, edx
mov     edx, 0Ah
sub     edx, eax
mov     [esi+46h], dx

loc_4461A6:             ; jumptable 00446167 case 2
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 7
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
test    ah, 10h
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 12h
mov     word ptr [edi+4], 3

loc_4461DB:             ; jumptable 00446167 case 3
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     short def_445C30 ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0Ah], 4

loc_4461ED:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [edi+58h]
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
mov     edx, eax
mov     ecx, 3
sar     edx, 1Fh
idiv    ecx
mov     [esi+66h], ax
mov     word ptr [edi+4], 3

loc_44621C:             ; jumptable 00446167 case 4
mov     dx, [edi+4]     ; jumptable 0044664F case 3
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     short loc_44622D
or      byte ptr [edi], 1

loc_44622D:
cmp     word ptr [esi+66h], 0
jge     loc_445B9C
mov     ecx, [esi+64h]
sar     ecx, 10h
neg     ecx

loc_446240:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [edi+58h]
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

def_445C30:             ; jumptable 00445C30 default case
pop     edi             ; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_446143 endp




sub_446265 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 3D8h
mov     dl, [esi+0Ah]
cmp     dl, 1
jb      short loc_446288
jbe     short loc_4462A7
cmp     dl, 2
jz      loc_44632A
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_446288:
test    dl, dl
jnz     loc_44633B
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 13h
mov     word ptr [eax+4], 0Dh
mov     word ptr [eax+8], 0

loc_4462A7:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      short loc_446319
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFF10h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+14h]
sar     eax, 10h
mov     edx, [esi+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_4462F7
neg     eax

loc_4462F7:
cmp     eax, 20h ; ' '
jle     short loc_44633B
mov     ax, [esi+2Eh]
mov     [esi+16h], ax
mov     eax, [esi+38h]
mov     [esi+20h], eax
mov     byte ptr [esi+9], 0Ah
mov     word ptr [esi+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_446319:
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 0
mov     word ptr [eax+4], 6

loc_44632A:
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     short loc_44633B
or      byte ptr [eax], 1

loc_44633B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_446265 endp

db 8Dh, 40h, 0
jpt_446381 dd offset loc_446388 ; jump table for switch statement
dd offset loc_4463BF
dd offset loc_44645D
dd offset loc_4465B7
dd offset loc_4465D7



sub_446357 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004451DD SIZE 00000009 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 3D8h
mov     [esp+1Ch+var_1C], eax
mov     dword ptr [eax+58h], offset byte_5F8364
mov     al, [ebp+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_446381      ; jumptable 00446381 default case
and     eax, 0FFh
jmp     jpt_446381[eax*4] ; switch jump

loc_446388:             ; jumptable 00446381 case 0
mov     byte ptr [ebp+0Ah], 1
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 8
jz      short loc_4463A3
mov     byte ptr [ebp+0ACh], 18h
mov     word ptr [ebp+48h], 0FFE4h
jmp     short loc_4463B0

loc_4463A3:
mov     byte ptr [ebp+0ACh], 14h
mov     word ptr [ebp+48h], 1Ch

loc_4463B0:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 5
mov     word ptr [eax+8], 0

loc_4463BF:             ; jumptable 00446381 case 1
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short loc_4463F5
mov     byte ptr [ebp+0Ah], 2
inc     byte ptr [ebp+0ACh]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0Ah
lea     edx, [ebp+14h]
mov     eax, 0B7h
call    sub_4D8BC3
jmp     def_446381      ; jumptable 00446381 default case

loc_4463F5:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
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
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_446437
neg     eax

loc_446437:
cmp     eax, 20h ; ' '
jle     def_446381      ; jumptable 00446381 default case
mov     ax, [ebp+2Eh]
mov     [ebp+16h], ax
mov     eax, [ebp+38h]
mov     [ebp+20h], eax
mov     byte ptr [ebp+9], 0Ah
mov     word ptr [ebp+0Ah], 0
jmp     def_446381      ; jumptable 00446381 default case

loc_44645D:             ; jumptable 00446381 case 2
mov     eax, [esp+1Ch+var_1C]
dec     word ptr [eax+4]
mov     eax, [eax+2]
sar     eax, 10h
mov     edx, 5
sub     edx, eax
mov     eax, edx
shl     eax, 2
mov     [ebp+46h], ax
mov     ecx, [ebp+46h]
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [ebp+44h]
sar     ebx, 10h
shl     ebx, 4
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
test    ah, 10h
jz      def_446381      ; jumptable 00446381 default case
lea     edx, [ebp+14h]
mov     eax, 0B8h
call    sub_4D8BC3
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+1], 2
jz      loc_44659F
push    300h
mov     eax, [eax+58h]
mov     edx, [eax+54h]
sar     edx, 10h
push    edx
lea     ecx, [eax+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
xor     eax, eax
mov     ebx, [esp+24h+var_1C]
mov     ax, [ebx+3Ch]
add     edx, eax
and     edx, 0FFFh
lea     eax, [ebp+1Ch]
mov     ebx, 18h
call    sub_4DE639
test    eax, eax
jz      loc_44659F
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax+1], 0FDh
call    sub_4DE043
mov     edx, [esp+1Ch+var_1C]
mov     [edx+54h], eax
test    eax, eax
jz      loc_44659F
mov     byte ptr [eax], 1
mov     eax, [edx+54h]
mov     byte ptr [eax+2], 9
mov     eax, [edx+54h]
mov     byte ptr [eax+3], 0
mov     esi, [edx+54h]
lea     edi, [esi+14h]
lea     esi, [ebp+14h]
movsd
movsd
mov     esi, [edx+54h]
lea     edi, [esi+1Ch]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0FFFFF300h
mov     ebx, [ebp+54h]
sar     ebx, 10h
xor     edx, edx
mov     ecx, [esp+24h+var_1C]
mov     dx, [ecx+3Ch]
add     ebx, edx
and     ebx, 0FFFh
mov     eax, [ecx+54h]
lea     edx, [eax+1Ch]
add     eax, 14h
mov     ecx, 6E0h
call    sub_4DD4C5
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+54h]
mov     dx, [ebp+56h]
mov     [eax+64h], dx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+40h]
or      byte ptr [eax+0Fh], 1
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
mov     byte ptr [eax+9], 0
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+48h]
mov     byte ptr [eax+9], 0

loc_44659F:
mov     byte ptr [ebp+0Ah], 3
inc     byte ptr [ebp+0ACh]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 4
jmp     def_446381      ; jumptable 00446381 default case

loc_4465B7:             ; jumptable 00446381 case 3
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4465D7 ; jumptable 00446381 case 4
test    byte ptr [eax], 40h
jz      short loc_4465D7 ; jumptable 00446381 case 4
mov     byte ptr [ebp+0Ah], 4
mov     word ptr [eax+4], 0Fh

loc_4465D7:             ; jumptable 00446381 case 4
mov     eax, [esp+1Ch+var_1C]
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     def_446381      ; jumptable 00446381 default case
mov     dh, [eax]
or      dh, 1
mov     [eax], dh
test    dh, 40h
jz      short loc_44660D
test    dh, 8
jz      short loc_446603
add     byte ptr [ebp+57h], 4
jmp     short loc_446609

loc_446603:
sub     word ptr [ebp+56h], 400h

loc_446609:
and     byte ptr [ebp+57h], 0Fh

loc_44660D:
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0BFh
jmp     def_446381      ; jumptable 00446381 default case
sub_446357 endp

db 8Dh, 40h, 0
jpt_44664F dd offset loc_446656 ; jump table for switch statement
dd offset loc_44667B
dd offset loc_44670E
dd offset loc_44621C



sub_44662B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dword ptr [edi+58h], offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
and     eax, 0FFh
jmp     jpt_44664F[eax*4] ; switch jump

loc_446656:             ; jumptable 0044664F case 0
mov     byte ptr [esi+0Ah], 1
test    byte ptr [edi], 8
jz      short loc_446668
mov     byte ptr [esi+0ACh], 1Bh
jmp     short loc_44666F

loc_446668:
mov     byte ptr [esi+0ACh], 17h

loc_44666F:
mov     word ptr [edi+4], 6
mov     word ptr [edi+8], 0

loc_44667B:             ; jumptable 0044664F case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jl      loc_446704
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 180h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     [edi+5Ch], eax
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, [esi+2Ch]
sar     eax, 10h
sub     edx, eax
test    edx, edx
jge     short loc_4466D2
neg     edx

loc_4466D2:
cmp     edx, 20h ; ' '
jle     short loc_4466F4
mov     ax, [esi+2Eh]
mov     [esi+16h], ax
mov     eax, [esi+38h]
mov     [esi+20h], eax
mov     byte ptr [esi+9], 0Ah

loc_4466E9:
mov     word ptr [esi+0Ah], 0
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_4466F4:
test    byte ptr [edi+5Dh], 0Fh
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+9], 0Bh
jmp     short loc_4466E9

loc_446704:
mov     byte ptr [esi+0Ah], 2
mov     word ptr [edi+4], 4

loc_44670E:             ; jumptable 0044664F case 2
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0Ah], 3
jmp     loc_4461ED
sub_44662B endp




sub_446729 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+3D8h]
mov     word ptr [eax+64h], 0
mov     ax, [eax+64h]
cwde
mov     [edx+4Ch], eax

loc_446742:
mov     ebx, [edx+4Ch]
cmp     ebx, 2
jge     short loc_446772
mov     al, ds:byte_515130[ebx]
xor     ah, ah
add     [ecx+64h], ax
mov     ax, [edx+2]
xor     ah, ah
and     al, 0Fh
xor     ebx, ebx
mov     bx, ax
mov     eax, [ecx+62h]
sar     eax, 10h
cmp     ebx, eax
jl      short loc_446772
inc     dword ptr [edx+4Ch]
jmp     short loc_446742

loc_446772:
mov     eax, [edx+4Ch]
pop     edx
pop     ecx
pop     ebx
retn
sub_446729 endp




sub_446779 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+3D8h]
mov     edx, [ebx+14h]
and     edx, 0FFFFFFh
mov     [ebx+4Ch], edx
jz      loc_446936
test    byte ptr [ebx+17h], 38h
jz      loc_446929
mov     ax, [ecx+6Eh]
mov     [ecx+0B2h], ax
mov     ax, [ebx+4Ch]
mov     dx, [ecx+6Eh]
sub     edx, eax
mov     [ecx+6Eh], dx
test    dx, dx
jg      short loc_4467EF
mov     di, [ebx]
and     edi, 0FFFFF7DDh
mov     [ebx], di
mov     eax, edi
or      eax, 820h
mov     [ebx], ax
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
mov     [ebx+4Ch], eax

loc_4467EF:
lea     edx, [ecx+14h]
test    byte ptr [ebx], 20h
jz      loc_4468E4
mov     ax, [ebx+4Ch]
add     [ebx+0Ah], ax
test    byte ptr [ebx+17h], 20h
jnz     short loc_44682A
xor     eax, eax
mov     al, [ecx+2]
mov     esi, ds:dword_55A10C
mov     esi, [esi+eax*4]
xor     eax, eax
mov     al, [esi+9]
mov     esi, [ebx+8]
sar     esi, 10h
cmp     esi, eax
jl      loc_4468DD

loc_44682A:
lea     esi, [ecx+14h]
mov     edx, esi
mov     eax, 0A2h
call    sub_4D8BC3
lea     edx, [ebx+1Ch]
test    byte ptr [ebx+22h], 1
jz      short loc_446887
mov     eax, esi
call    sub_4DDDB4
mov     [ecx+64h], ax
mov     edx, [ecx+54h]
sar     edx, 10h
mov     eax, [ecx+62h]
sar     eax, 10h
sub     edx, eax
lea     eax, [edx+400h]
and     eax, 0FFFh
cmp     eax, 800h
jge     short loc_446877
mov     byte ptr [ecx+9], 6

loc_446871:
mov     ax, [ecx+64h]
jmp     short loc_4468CB

loc_446877:
mov     byte ptr [ecx+9], 7
mov     ax, [ecx+64h]
add     ah, 8
and     ah, 0Fh
jmp     short loc_4468CB

loc_446887:
mov     eax, offset unk_515132
call    sub_4DDDB4
mov     [ecx+64h], ax
mov     edx, [ecx+62h]
sar     edx, 10h
mov     eax, [ecx+54h]
sar     eax, 10h
sub     edx, eax
add     edx, 400h
and     edx, 0FFFh
cmp     edx, 800h
jge     short loc_4468BD
mov     byte ptr [ecx+9], 7
jmp     short loc_446871

loc_4468BD:
mov     byte ptr [ecx+9], 6
mov     ax, [ecx+64h]
add     ah, 8
and     ah, 0Fh

loc_4468CB:
mov     [ecx+56h], ax
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ebx+0Ah], 0
jmp     short loc_44691E

loc_4468DD:
mov     eax, 0A0h
jmp     short loc_446919

loc_4468E4:
test    byte ptr [ebx+17h], 20h
jnz     short loc_44690A
xor     eax, eax
mov     al, [ecx+2]
mov     esi, ds:dword_55A10C
mov     eax, [esi+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
mov     ebx, [ebx+8]
sar     ebx, 10h
cmp     ebx, eax
jl      short loc_446914

loc_44690A:
lea     edx, [ecx+14h]
mov     eax, 0A2h
jmp     short loc_446919

loc_446914:
mov     eax, 0A0h

loc_446919:
call    sub_4D8BC3

loc_44691E:
mov     word ptr [ecx+15Eh], 7FFFh
jmp     short loc_446936

loc_446929:
