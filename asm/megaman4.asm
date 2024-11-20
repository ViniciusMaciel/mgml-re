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

loc_449800:
call    rand_
and     eax, 0Fh
add     edx, eax
xor     eax, eax
mov     al, [edx]
mov     [ebx+8], ax
pop     edx
pop     ecx
pop     ebx
retn
sub_44972F endp




sub_449816 proc near

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
cmp     word ptr [eax+1Ah], 0
jnz     short loc_449850
cmp     word ptr [eax+14h], 0
jnz     short loc_449850
mov     edx, [eax+16h]
sar     edx, 10h
mov     eax, [eax+1Ch]
sar     eax, 10h
cmp     edx, eax
jnz     short loc_449850
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+0Ah]
jmp     short loc_449872

loc_449850:
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+1Ah], 0
jz      short loc_4498A5
cmp     word ptr [eax+14h], 0
jnz     short loc_4498A5
cmp     word ptr [eax+18h], 1
jnz     short loc_4498A5
mov     ax, [eax+0Ah]
add     ah, 8
and     ah, 0Fh

loc_449872:
mov     [ebp+56h], ax
lea     edi, [ebp+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+0Ch]
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

loc_4498A5:
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+18h]
dec     dx
mov     [eax+18h], dx
jnz     short loc_4498EE
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+64h], ax
mov     eax, 1
mov     edx, [esp+1Ch+var_1C]
mov     di, [edx+16h]
sub     eax, edi
mov     [edx+16h], ax

loc_4498E5:
mov     byte ptr [ebp+0Ah], 1
jmp     loc_449FCA

loc_4498EE:
mov     cx, [eax+8]
dec     cx
mov     [eax+8], cx
jz      short loc_4498E5
mov     ebx, 64h ; 'd'
mov     edx, 40h ; '@'
mov     eax, ebp
call    sub_44A832
test    al, al
jz      loc_449FCA
xor     eax, eax
mov     al, [ebp+2]
call    sub_44A7D8
mov     [ebp+0ACh], al
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+8], 3Ch ; '<'
mov     byte ptr [ebp+0Ah], 6
jmp     loc_449FCA
sub_449816 endp




sub_449935 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
mov     ebx, [eax+0Ch]
sar     ebx, 18h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+62h]
sar     eax, 10h
call    sub_4DE5F4
mov     edi, eax
cmp     word ptr [ecx+1Ah], 0
jnz     short loc_449967
test    ax, ax
jl      short loc_449973

loc_449967:
cmp     word ptr [ecx+1Ah], 0
jz      short loc_449975
test    di, di
jle     short loc_449975

loc_449973:
neg     edi

loc_449975:
test    di, di
jnz     short loc_4499A6
mov     eax, 1
mov     bx, [ecx+14h]
sub     eax, ebx
mov     [ecx+14h], ax
mov     ax, [ecx+1Eh]
mov     [ecx+18h], ax
mov     eax, 1
mov     dx, [ecx+16h]
sub     eax, edx
mov     [ecx+16h], ax

loc_4499A0:
mov     byte ptr [esi+0Ah], 1
jmp     short loc_4499E6

loc_4499A6:
mov     ax, [ecx+8]
dec     ax
mov     [ecx+8], ax
jz      short loc_4499A0
mov     ebx, 64h ; 'd'
mov     edx, 40h ; '@'
mov     eax, esi
call    sub_44A832
test    al, al
jz      short loc_4499E6
xor     eax, eax
mov     al, [esi+2]
call    sub_44A7D8
mov     [esi+0ACh], al
mov     word ptr [ecx+8], 3Ch ; '<'
mov     byte ptr [esi+0Ah], 6
jmp     loc_449FCE

loc_4499E6:
add     di, [esi+56h]
and     edi, 0FFFh
mov     [esi+56h], di
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
jmp     loc_449FCE
sub_449935 endp




sub_449A0A proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bx, [eax+8]
dec     bx
mov     [eax+8], bx
jnz     short loc_449A23
mov     byte ptr [edx+0Ah], 1

loc_449A23:
pop     edx
pop     ebx
retn
sub_449A0A endp




sub_449A26 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
mov     ebx, [ecx+6]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [ecx+1Ah]
sar     eax, 10h
call    sub_4DE5F4
mov     edx, eax
test    ax, ax
jnz     short loc_449A87
cmp     word ptr [ecx+16h], 0
jz      short loc_449A67
mov     eax, 1
mov     di, [ecx+14h]
sub     eax, edi
mov     [ecx+14h], ax

loc_449A67:
mov     eax, 1
mov     bx, [ecx+1Ah]
sub     eax, ebx
mov     [ecx+1Ah], ax
mov     ax, [ecx+1Eh]
sub     ax, [ecx+18h]
inc     eax
mov     [ecx+18h], ax
mov     byte ptr [esi+0Ah], 1

loc_449A87:
mov     ax, [esi+56h]
add     eax, edx
and     ah, 0Fh
mov     [esi+56h], ax
jmp     loc_449FCE
sub_449A26 endp




sub_449A99 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     dx, [esi+8]
dec     dx
mov     [esi+8], dx
jnz     short loc_449AF5
mov     ebx, 64h ; 'd'
mov     edx, 40h ; '@'
call    sub_44A832
test    al, al
jz      short loc_449AF1
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7E2
mov     [ecx+0ACh], al
mov     ax, [ecx+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+1Ch], ax
mov     word ptr [esi+8], 64h ; 'd'
mov     byte ptr [ecx+0Ah], 5
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_449AF1:
mov     byte ptr [ecx+0Ah], 1

loc_449AF5:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_449A99 endp




sub_449AFA proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_449B00[edx*4]
pop     edx
retn
sub_449AFA endp




sub_449B09 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+408h]
mov     edx, 1
call    sub_44A7F9
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
xor     eax, eax
mov     al, [ecx+0Eh]
mov     [ebx+14h], ax
mov     edx, eax
shl     edx, 4
mov     [ebx+14h], dx
xor     eax, eax
mov     al, [ecx+0Fh]
mov     [ebx+16h], ax
mov     esi, eax
shl     esi, 4
mov     [ebx+16h], si
inc     byte ptr [ecx+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_449B09 endp




sub_449B5B proc near

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
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+408h]
cmp     byte ptr [eax+2], 2Ah ; '*'
jnz     short loc_449B7E
mov     edx, offset unk_515908
mov     esi, offset unk_515928
jmp     short loc_449B88

loc_449B7E:
mov     edx, offset unk_5158F8
mov     esi, offset unk_515918

loc_449B88:
mov     edi, offset unk_515938
call    rand_
and     eax, 0Fh
mov     al, [edx+eax]
mov     [esp+28h+var_1C], al
cmp     al, 1
jb      short loc_449BAB
jbe     short loc_449BFA
cmp     al, 2
jz      short loc_449C0F
jmp     loc_449C8D

loc_449BAB:
test    al, al
jnz     loc_449C8D
test    byte ptr [ecx+0Dh], 8
jnz     short loc_449BC7
call    rand_
and     eax, 0Fh
cmp     byte ptr [esi+eax], 0
jz      short loc_449BE3

loc_449BC7:
mov     byte ptr [ecx+0ACh], 2
mov     edx, 2

loc_449BD3:
mov     eax, ecx
call    sub_44A7F9
mov     [ecx+44h], ax
jmp     loc_449CAF

loc_449BE3:
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7E2
mov     [ecx+0ACh], al
mov     edx, 1
jmp     short loc_449BD3

loc_449BFA:
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7D8
mov     [ecx+0ACh], al
jmp     loc_449CAF

loc_449C0F:
mov     eax, [ecx+12h]
sar     eax, 10h
mov     edx, [ebx+0Ah]
sar     edx, 10h
sub     eax, edx
mov     esi, [ebx+12h]
sar     esi, 10h
mov     edx, esi
sar     edx, 1
add     eax, edx
mov     [esp+28h+var_24], eax
mov     edx, [ecx+16h]
sar     edx, 10h
mov     eax, [ebx+0Eh]
sar     eax, 10h
sub     edx, eax
mov     [esp+28h+var_28], edx
mov     eax, [ebx+14h]
sar     eax, 10h
mov     edx, eax
sar     edx, 1
mov     ebp, [esp+28h+var_28]
add     ebp, edx
mov     [esp+28h+var_28], ebp
mov     edx, [esp+28h+var_28]
mov     [esp+28h+var_20], edx
xor     edx, edx
mov     dx, word ptr [esp+28h+var_24]
cmp     edx, esi
jge     short loc_449C86
xor     edx, edx
mov     dx, word ptr [esp+28h+var_20]
cmp     edx, eax
jge     short loc_449C86
mov     edx, 1
mov     eax, ecx
call    sub_44A7F9
mov     [ecx+44h], ax
mov     byte ptr [ecx+0ACh], 2
jmp     short loc_449CAF

loc_449C86:
mov     [esp+28h+var_1C], 0FFh
jmp     short loc_449CAF

loc_449C8D:
call    rand_
and     ah, 0Fh
mov     [ecx+64h], ax
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7E2
mov     [ecx+0ACh], al
mov     word ptr [ebx+1Eh], 1

loc_449CAF:
call    rand_
and     eax, 0Fh
mov     al, [edi+eax]
xor     ah, ah
mov     [ebx+8], ax
mov     dh, [esp+28h+var_1C]
cmp     dh, 0FFh
jz      short loc_449CD0
mov     al, dh
inc     al
add     [ecx+0Ah], al

loc_449CD0:
add     esp, 10h
jmp     loc_449FCD
sub_449B5B endp




sub_449CD8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     ebx, 64h ; 'd'
mov     edx, 40h ; '@'
call    sub_44A832
test    al, al
jz      short loc_449D20
cmp     byte ptr [esi+2], 2Ah ; '*'
jnz     loc_4493E9
xor     eax, eax
mov     al, [esi+0Ah]
mov     [edi+18h], ax
mov     byte ptr [esi+0Ah], 6
xor     eax, eax
mov     al, [esi+0ACh]
mov     [edi+1Ah], ax
jmp     loc_449FCE

loc_449D20:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, [edi+0Ah]
sar     eax, 10h
mov     edx, [edi+12h]
sar     edx, 10h
lea     ebx, [eax+edx]
mov     ecx, [esi+12h]
sar     ecx, 10h
cmp     ecx, ebx
jle     short loc_449D56
mov     ax, [edi+0Ch]
mov     cx, [edi+14h]
add     eax, ecx
jmp     short loc_449D66

loc_449D56:
sub     eax, edx
cmp     ecx, eax
jge     short loc_449D88
mov     ax, [edi+0Ch]
mov     dx, [edi+14h]
sub     eax, edx

loc_449D66:
mov     [esi+14h], ax
mov     ax, [esi+56h]
mov     edx, 1000h
sub     edx, eax
mov     [esi+64h], dx
mov     byte ptr [esi+0Ah], 5
mov     word ptr [edi+1Eh], 2
add     word ptr [edi+8], 0Ah

loc_449D88:
mov     eax, [edi+0Eh]
sar     eax, 10h
mov     ecx, [edi+14h]
sar     ecx, 10h
lea     ebx, [eax+ecx]
mov     edx, [esi+16h]
sar     edx, 10h
cmp     edx, ebx
jle     short loc_449DAD
mov     ax, [edi+10h]
mov     dx, [edi+16h]
add     eax, edx
jmp     short loc_449DBD

loc_449DAD:
sub     eax, ecx
cmp     edx, eax
jge     short loc_449DE0
mov     ax, [edi+10h]
mov     dx, [edi+16h]
sub     eax, edx

loc_449DBD:
mov     [esi+18h], ax
mov     eax, 800h
sub     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+64h], ax
mov     byte ptr [esi+0Ah], 5
mov     word ptr [edi+1Eh], 2
add     word ptr [edi+8], 0Ah

loc_449DE0:
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     ax, [edi+8]
dec     ax
mov     [edi+8], ax
jnz     loc_449FCE
jmp     loc_4493E9
sub_449CD8 endp




sub_449E19 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bx, [eax+8]
dec     bx
mov     [eax+8], bx
jnz     short loc_449E32
mov     byte ptr [edx+0Ah], 1

loc_449E32:
pop     edx
pop     ebx
retn
sub_449E19 endp




sub_449E35 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+408h]
mov     ebx, 64h ; 'd'
mov     edx, 40h ; '@'
call    sub_44A832
test    al, al
jz      short loc_449E82
xor     eax, eax
mov     al, [esi+0Ah]
mov     [ecx+18h], ax
mov     byte ptr [esi+0Ah], 6
xor     eax, eax
mov     al, [esi+0ACh]
mov     [ecx+1Ah], ax
xor     eax, eax
mov     al, [esi+2]
call    sub_44A7D8
mov     [esi+0ACh], al
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_449E82:
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jnz     short loc_449E92
mov     byte ptr [esi+0Ah], 1

loc_449E92:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+56h]
add     eax, 80h
and     ah, 0Fh
mov     [esi+56h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_449E35 endp




sub_449EB8 proc near
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
jnz     loc_4494E5
mov     al, [esi+1Eh]
mov     [ecx+0Ah], al
jmp     loc_4494E5
sub_449EB8 endp




sub_449EF0 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+408h]
mov     ax, [eax+56h]
add     ah, 8
and     ah, 0Fh
mov     [edx+64h], ax
xor     eax, eax
mov     al, [edx+2]
call    sub_44A7E2
mov     [edx+0ACh], al
mov     word ptr [ecx+1Eh], 1
mov     byte ptr [edx+0Ah], 5
pop     edx
pop     ecx
retn
sub_449EF0 endp




sub_449F25 proc near
push    edx
lea     edx, [eax+408h]
mov     dl, [edx+3]
and     edx, 0FFh
call    ds:funcs_449F35[edx*4]
pop     edx
retn
sub_449F25 endp




sub_449F3E proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     edi, [eax+408h]
inc     byte ptr [edi+3]
mov     ax, [esi+56h]
mov     [edi+4], ax
mov     al, [esi+0ACh]
mov     [edi+2], al
xor     eax, eax
mov     al, [esi+2]
call    sub_44A7D8
mov     [esi+0ACh], al
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ebp, offset byte_5F8364
add     ebp, 14h
mov     eax, esi
add     eax, 14h
mov     [esp+1Ch+var_1C], eax
mov     ecx, 800h
mov     edx, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_449FD4
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
cwde
neg     eax

loc_449FB2:
sar     eax, 3
mov     [edi+6], ax

loc_449FB9:
xor     ecx, ecx
mov     cl, [esi+0Ch]

loc_449FBE:
lea     eax, [esi+14h]
xor     ebx, ebx
xor     edx, edx
call    sub_4A62D4

loc_449FCA:
add     esp, 4

loc_449FCD:
pop     ebp

loc_449FCE:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_449FD4:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
cwde
jmp     short loc_449FB2
sub_449F3E endp




sub_449FEC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+408h]
mov     ebp, offset dword_77E760
test    byte ptr [eax+0Dh], 40h
jnz     short loc_44A048
mov     ecx, [edi+4]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_44A048
xor     eax, eax
mov     al, [esi+2]
call    sub_44A7A0
mov     [esi+0ACh], al
inc     byte ptr [edi+3]

loc_44A048:
cmp     byte ptr [ebp+0], 0
jnz     loc_449FCD
and     byte ptr [edi], 0FBh
mov     byte ptr [edi+3], 3
xor     eax, eax
mov     al, [esi+2]
call    sub_44A7D8
mov     [esi+0ACh], al
jmp     loc_449FCD
sub_449FEC endp




sub_44A06E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+408h]
mov     ebp, offset dword_77E760
mov     ecx, [edi+4]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jge     short loc_44A048
xor     eax, eax
mov     al, [esi+2]
call    sub_44A7D8
mov     [esi+0ACh], al
dec     byte ptr [edi+3]
jmp     short loc_44A048
sub_44A06E endp




sub_44A0C6 proc near
push    edx
lea     edx, [eax+408h]
mov     dl, [edx+2]
cmp     dl, 1
jb      short loc_44A106
jbe     short loc_44A0E0
cmp     dl, 3
jz      short loc_44A0F9
xor     al, al
pop     edx
retn

loc_44A0E0:
mov     al, [eax+0Ah]
cmp     al, 5
jb      short loc_44A0F1
jbe     short loc_44A0F5
cmp     al, 8
jz      short loc_44A0F5
xor     al, al
pop     edx
retn

loc_44A0F1:
cmp     al, 4

loc_44A0F3:
jnz     short loc_44A106

loc_44A0F5:
mov     al, 1
pop     edx
retn

loc_44A0F9:
mov     al, [eax+0Ah]
cmp     al, 4
jb      short loc_44A106
jbe     short loc_44A0F5
cmp     al, 5
jmp     short loc_44A0F3

loc_44A106:
xor     al, al
pop     edx
retn
sub_44A0C6 endp




sub_44A10A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     ebx, [esi+4]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [esi+2]
sar     eax, 10h
call    sub_4DE5F4
mov     edx, eax
test    ax, ax
jz      short loc_44A145
test    byte ptr [ecx+0Dh], 80h
jnz     short loc_44A145
mov     eax, ecx
call    sub_44A0C6
test    al, al
jz      short loc_44A15F

loc_44A145:
mov     al, [esi+2]
mov     [ecx+0ACh], al
or      byte ptr [esi], 2
mov     dl, [ecx+0Dh]
and     dl, 7
mov     [ecx+9], dl
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44A15F:
add     dx, [ecx+56h]
and     dh, 0Fh
mov     [ecx+56h], dx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44A10A endp




sub_44A16F proc near
push    edx
lea     edx, [eax+408h]
mov     dl, [edx+3]
and     edx, 0FFh
call    ds:funcs_44A17F[edx*4]
pop     edx
retn
sub_44A16F endp




sub_44A188 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     ebx, [esi+4]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [esi+2]
sar     eax, 10h
call    sub_4DE5F4
mov     edx, eax
test    ax, ax
jz      short loc_44A1C3
test    byte ptr [ecx+0Dh], 80h
jnz     short loc_44A1C3
mov     eax, ecx
call    sub_44A0C6
test    al, al
jz      short loc_44A1DD

loc_44A1C3:
mov     al, [esi+2]
mov     [ecx+0ACh], al
or      byte ptr [esi], 2
mov     dl, [ecx+0Dh]
and     dl, 7
mov     [ecx+9], dl
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44A1DD:
add     dx, [ecx+56h]
and     dh, 0Fh
mov     [ecx+56h], dx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44A188 endp




sub_44A1ED proc near
push    edx
lea     edx, [eax+408h]
mov     dl, [edx+3]
and     edx, 0FFh
call    ds:funcs_44A1FD[edx*4]
pop     edx
retn
sub_44A1ED endp




sub_44A206 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     edi, [eax+408h]
mov     ax, [eax+56h]
mov     [edi+4], ax
mov     al, [esi+0ACh]
mov     [edi+2], al
mov     ebx, 0C8h
mov     edx, 0FAh
mov     eax, esi
call    sub_44A832
mov     ecx, esi
add     ecx, 14h
mov     [esp+1Ch+var_1C], ecx
mov     ebp, offset byte_5F8364
add     ebp, 14h
test    al, al
jz      short loc_44A2B6
xor     eax, eax
mov     al, [esi+2]
call    sub_44A7D8
mov     [esi+0ACh], al
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
test    ax, ax
jge     short loc_44A291
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
cwde
neg     eax
jmp     short loc_44A2A7

loc_44A291:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
cwde

loc_44A2A7:
sar     eax, 3
mov     [edi+6], ax
inc     byte ptr [edi+3]
mov     al, [esi+0Ch]
jmp     short loc_44A2FB

loc_44A2B6:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 20h ; ' '
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
test    ax, ax
jle     short loc_44A2D7
mov     eax, 1
jmp     short loc_44A2D9

loc_44A2D7:
xor     eax, eax

loc_44A2D9:
mov     [edi+6], ax
test    ax, ax
jz      short loc_44A2EB
mov     byte ptr [esi+0ACh], 3
jmp     short loc_44A2F2

loc_44A2EB:
mov     byte ptr [esi+0ACh], 4

loc_44A2F2:
mov     byte ptr [edi+3], 4
mov     al, [esi+0Ch]
inc     al

loc_44A2FB:
xor     ecx, ecx
mov     cl, al
jmp     loc_449FBE
sub_44A206 endp




sub_44A304 proc near
push    edx
mov     edx, eax
add     eax, 408h
cmp     byte ptr ds:dword_77E760, 0
jnz     short loc_44A335
and     byte ptr [eax], 0FBh
cmp     word ptr [eax+6], 0
jz      short loc_44A32B
mov     byte ptr [edx+0ACh], 5
inc     byte ptr [eax+3]
pop     edx
retn

loc_44A32B:
mov     byte ptr [edx+0ACh], 6
inc     byte ptr [eax+3]

loc_44A335:
pop     edx
retn
sub_44A304 endp




sub_44A337 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+408h]
cmp     byte ptr [eax+0A7h], 0
jge     short loc_44A36F
xor     eax, eax
mov     al, [edx+2]
call    sub_44A7D8
mov     [edx+0ACh], al
mov     al, [ecx+2]
mov     [edx+0ACh], al
or      byte ptr [ecx], 2
mov     cl, [edx+0Dh]
and     cl, 7
mov     [edx+9], cl

loc_44A36F:
pop     edx
pop     ecx
retn
sub_44A337 endp




sub_44A372 proc near
push    edx
lea     edx, [eax+408h]
mov     dl, [edx+3]
and     edx, 0FFh
call    ds:funcs_44A382[edx*4]
pop     edx
retn
sub_44A372 endp




sub_44A38B proc near

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
push    ebp
sub     esp, 1Ch
mov     ebp, eax
add     eax, 408h
mov     [esp+34h+var_1C], eax
mov     ax, [ebp+56h]
mov     ecx, [esp+34h+var_1C]
mov     [ecx+4], ax
mov     al, [ebp+0ACh]
mov     [ecx+2], al
and     ds:byte_5F8364, 0FDh
mov     byte ptr ds:dword_5F836C+1, 10h
xor     dh, dh
mov     byte ptr ds:dword_5F836C+2, dh
lea     edi, [esp+34h+var_24]
lea     esi, [ebp+14h]
movsd
movsd
mov     eax, [ebp+12h]
sar     eax, 10h
mov     [esp+34h+var_34], eax
mov     eax, [ebp+14h]
sar     eax, 10h
sub     eax, 30h ; '0'
mov     [esp+34h+var_30], eax
mov     eax, [ebp+16h]
sar     eax, 10h
mov     [esp+34h+var_2C], eax
mov     ecx, ds:dword_77E964
add     ecx, 6Ch ; 'l'
mov     esi, offset byte_5F8364
add     esi, 14h
mov     edx, esi
lea     eax, [esp+34h+var_24]
call    sub_4DDDB4
mov     ebx, eax
mov     edx, 100h
mov     eax, esp
call    sub_42AAA8
xor     eax, eax
mov     al, [ebp+2]
call    sub_44A7D8
mov     [ebp+0ACh], al
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edi, [ebp+14h]
mov     ecx, 800h
mov     edx, esi
mov     eax, edi
call    sub_4DE552
test    ax, ax
jge     short loc_44A462
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, esi
mov     eax, edi
call    sub_4DE552
cwde
neg     eax
jmp     short loc_44A477

loc_44A462:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, esi
mov     eax, edi
call    sub_4DE552
cwde

loc_44A477:
sar     eax, 3
mov     ecx, [esp+34h+var_1C]
mov     [ecx+6], ax
inc     byte ptr [ecx+3]
add     esp, 1Ch
jmp     loc_449FCD
sub_44A38B endp




sub_44A48D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+408h]
mov     ebp, offset byte_5F8364
call    sub_42ABA2
test    eax, eax
jnz     short loc_44A4C0
xor     ecx, ecx
mov     cl, [esi+0Ch]
lea     eax, [esi+14h]
xor     ebx, ebx
mov     edx, 0Dh
call    sub_4A62D4
inc     byte ptr [edi+3]

loc_44A4C0:
mov     ecx, [edi+4]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     loc_449FCD
sub_44A48D endp




sub_44A4E7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+408h]
mov     ecx, [esi+4]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
cmp     byte ptr ds:dword_77E760, 0
jnz     short loc_44A545
and     byte ptr [esi], 0FBh
add     byte ptr [esi+3], 2
xor     eax, eax
mov     al, [edi+2]
call    sub_44A7D8
mov     [edi+0ACh], al
call    sub_42A98E
jmp     loc_449FCE

loc_44A545:
cmp     byte ptr ds:dword_77E784, 6
jnz     loc_449FCE
inc     byte ptr [esi+3]
jmp     loc_449FCE
sub_44A4E7 endp




sub_44A55A proc near
push    ecx
push    edx
lea     ecx, [eax+408h]
cmp     byte ptr ds:dword_77E784, 3
jnz     short loc_44A57F
call    sub_4A0E35
mov     edx, 0DCh
xor     eax, eax
call    sub_4A0E24
dec     byte ptr [ecx+3]

loc_44A57F:
pop     edx
pop     ecx
retn
sub_44A55A endp




sub_44A582 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+408h]
mov     edi, offset byte_5F8364
mov     ebx, [esi+4]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [esi+2]
sar     eax, 10h
call    sub_4DE5F4
mov     edx, eax
test    ax, ax
jz      short loc_44A5BC
test    byte ptr [ecx+0Dh], 80h
jz      loc_449491

loc_44A5BC:
call    sub_42ABA2
test    eax, eax
jnz     loc_449491
or      byte ptr [edi], 2
mov     byte ptr [edi+9], 0
mov     byte ptr [edi+0Ah], 0
mov     al, [esi+2]
mov     [ecx+0ACh], al
or      byte ptr [esi], 2
mov     al, [ecx+0Dh]
and     al, 7
mov     [ecx+9], al
jmp     loc_449491
sub_44A582 endp




sub_44A5ED proc near
push    edx
lea     edx, [eax+408h]
mov     dl, [edx+3]
and     edx, 0FFh
call    ds:funcs_44A5FD[edx*4]
pop     edx
retn
sub_44A5ED endp




sub_44A606 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     edi, [eax+408h]
inc     byte ptr [edi+3]
mov     ax, [esi+56h]
mov     [edi+4], ax
mov     al, [esi+0ACh]
mov     [edi+2], al
mov     byte ptr [esi+0ACh], 8
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ebp, offset byte_5F8364
add     ebp, 14h
mov     eax, esi
add     eax, 14h
mov     [esp+1Ch+var_1C], eax
mov     ecx, 800h
mov     edx, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_44A675
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
movsx   ecx, ax
neg     ecx
jmp     short loc_44A68D

loc_44A675:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
movsx   ecx, ax

loc_44A68D:
sar     ecx, 3
mov     [edi+6], cx
jmp     loc_449FB9
sub_44A606 endp




sub_44A699 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     ecx, [edi+4]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr ds:dword_77E760, 0
jnz     loc_449FCE
mov     byte ptr [esi+0ACh], 9
and     byte ptr [edi], 0FBh
inc     byte ptr [edi+3]
jmp     loc_449FCE
sub_44A699 endp




sub_44A6EC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     ebx, [esi+4]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [esi+2]
sar     eax, 10h
call    sub_4DE5F4
mov     edx, eax
cmp     byte ptr [ecx+0A7h], 0
jge     loc_4494E5
test    ax, ax
jnz     loc_4494E5
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7D8
mov     [ecx+0ACh], al
mov     al, [esi+2]
mov     [ecx+0ACh], al
or      byte ptr [esi], 2
mov     al, [ecx+0Dh]
and     al, 7
mov     [ecx+9], al
jmp     loc_4494E5
sub_44A6EC endp




sub_44A750 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
mov     ecx, ds:dword_5F84E8
cmp     eax, ecx
jnz     short loc_44A79C
mov     bl, [ecx+2]
cmp     bl, 34h ; '4'
jnz     short loc_44A771
mov     byte ptr [ecx+9], 6
jmp     short loc_44A78B

loc_44A771:
cmp     bl, 11h
jnz     short loc_44A77C
mov     byte ptr [ecx+9], 7
jmp     short loc_44A78B

loc_44A77C:
cmp     bl, 49h ; 'I'
jnz     short loc_44A787
mov     byte ptr [ecx+9], 8
jmp     short loc_44A78B

loc_44A787:
mov     byte ptr [ecx+9], 4

loc_44A78B:
mov     byte ptr [edx+3], 0
mov     ch, [edx]
or      ch, 4
mov     [edx], ch
mov     al, ch
and     al, 0FDh
mov     [edx], al

loc_44A79C:
pop     edx
pop     ecx
pop     ebx
retn
sub_44A750 endp




sub_44A7A0 proc near
cmp     al, 2Ah ; '*'
jb      short loc_44A7BA
jbe     short loc_44A7C8
cmp     al, 50h ; 'P'
jb      short loc_44A7B3
jbe     short loc_44A7C5
cmp     al, 53h ; 'S'
jz      short loc_44A7CE
mov     al, 8
retn

loc_44A7B3:
cmp     al, 39h ; '9'
jz      short loc_44A7C5
mov     al, 8
retn

loc_44A7BA:
test    al, al
jbe     short loc_44A7C5
cmp     al, 11h
jz      short loc_44A7CB
mov     al, 8
retn

loc_44A7C5:
xor     al, al
retn

loc_44A7C8:
mov     al, 9
retn

loc_44A7CB:
mov     al, 1
retn

loc_44A7CE:
call    rand_
and     al, 1
add     al, 8
retn
sub_44A7A0 endp




sub_44A7D8 proc near
cmp     al, 11h
jnz     short loc_44A7DF
mov     al, 1
retn

loc_44A7DF:
xor     al, al
retn
sub_44A7D8 endp




sub_44A7E2 proc near
cmp     al, 4Ch ; 'L'
jb      short loc_44A7EF
jbe     short loc_44A7F3
cmp     al, 4Dh ; 'M'
jz      short loc_44A7F3
mov     al, 1
retn

loc_44A7EF:
cmp     al, 39h ; '9'
jnz     short loc_44A7F6

loc_44A7F3:
xor     al, al
retn

loc_44A7F6:
mov     al, 1
retn
sub_44A7E2 endp




sub_44A7F9 proc near
and     edx, 0FFh
dec     edx
jz      short loc_44A821
mov     dl, [eax+2]
cmp     dl, 2Ah ; '*'
jnz     short loc_44A810
mov     eax, 40h ; '@'
retn

loc_44A810:
cmp     dl, 5
jnz     short loc_44A81B
mov     eax, 140h
retn

loc_44A81B:
mov     eax, 180h
retn

loc_44A821:
mov     al, [eax+2]
and     eax, 0FFh
mov     al, ds:byte_5156E8[eax]
xor     ah, ah
retn
sub_44A7F9 endp




sub_44A832 proc near

var_20= dword ptr -20h
var_18= dword ptr -18h
var_10= dword ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 14h
mov     edi, eax
mov     [esp+20h+var_10], ebx
shl     edx, 4
movsx   edx, dx
mov     eax, [eax+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     esi, esp
call    sub_4DD510
mov     eax, [edi+12h]
sar     eax, 10h
mov     edx, [esp+20h+var_20]
sar     edx, 10h
add     edx, eax
mov     eax, ds:dword_5F8376
sar     eax, 10h
sub     edx, eax
xor     eax, eax
mov     ax, word ptr [esp+20h+var_10]
add     edx, eax
mov     ebx, edx
mov     esi, [edi+16h]
sar     esi, 10h
mov     edx, [esp+20h+var_18]
sar     edx, 10h
add     esi, edx
mov     edx, ds:dword_5F837A
sar     edx, 10h
sub     esi, edx
lea     edx, [esi+eax]
mov     esi, edx
add     eax, eax
xor     edx, edx
mov     dx, bx
cmp     edx, eax
jge     short loc_44A8AF
xor     edx, edx
mov     dx, si
cmp     edx, eax
jge     short loc_44A8AF
mov     al, 1
jmp     short loc_44A8B1

loc_44A8AF:
xor     al, al

loc_44A8B1:
add     esp, 14h
pop     edi
pop     esi
pop     ecx
retn
sub_44A832 endp




sub_44A8B8 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_44A8BE[edx*4]
pop     edx
retn
sub_44A8B8 endp




sub_44A8C7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+438h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
cmp     byte ptr [ecx+3], 0
jz      short loc_44A8E4
lea     edx, [ecx+3]
jmp     short loc_44A8E6

loc_44A8E4:
xor     edx, edx

loc_44A8E6:
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ebx], 0
mov     dword ptr [ebx+4], 0
mov     word ptr [ebx+0Ch], 0F204h
mov     word ptr [ebx+0Eh], 0
mov     word ptr [ebx+10h], 0B90h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     word ptr [ecx+6Eh], 0
mov     dx, [ecx+6Eh]
mov     [ecx+0B0h], dx
mov     [ecx+0B2h], dx
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     eax, 0Fh
call    sub_47E8B8
mov     eax, ecx
call    sub_44A999
pop     edx
pop     ecx
pop     ebx
retn
sub_44A8C7 endp




sub_44A999 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+438h]
mov     al, [eax+0ACh]
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
mov     [edx+2], ax
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_44A9E6[ecx*4]
test    byte ptr [edx], 1
jz      short loc_44AA02
mov     eax, ebp
call    sub_4DE2F6
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_44AA02:
mov     al, [ebp+0ADh]
mov     bh, [ebp+0ACh]
cmp     al, bh
jz      short loc_44AA21
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_44AA28

loc_44AA21:
mov     eax, ebp
call    sub_4DEADD

loc_44AA28:
test    byte ptr [ebp+0], 2
jz      short loc_44AA41
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44AA41:
mov     ecx, 1000000h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
pop     ebp

loc_44AA58:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44A999 endp



; Attributes: thunk

sub_44AA5E proc near
jmp     sub_4DE2F6
sub_44AA5E endp




sub_44AA63 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+438h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_44AA80
cmp     al, 1
jz      short loc_44AAA0
jmp     loc_44AB05

loc_44AA80:
inc     al
mov     [esi+0Ah], al
mov     word ptr [esi+44h], 1C0h
mov     ecx, [esi+9]
sar     ecx, 18h
lea     eax, [esi+14h]
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4

loc_44AAA0:
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+0Ch]
lea     eax, [esi+14h]
mov     ecx, 20h ; ' '
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
mov     eax, [esi+12h]
sar     eax, 10h
mov     ebx, [edi+0Ah]
sar     ebx, 10h
sub     eax, ebx
mov     ebx, eax
mov     edx, [esi+16h]
sar     edx, 10h
mov     eax, [edi+0Eh]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
imul    ebx, ebx
imul    eax, edx
add     ebx, eax
cmp     ebx, 800h
jge     short loc_44AB05
or      byte ptr [edi], 1

loc_44AB05:
cmp     byte ptr [esi+0A6h], 1
jnz     short loc_44AB1C
xor     ebx, ebx
xor     edx, edx
mov     eax, 112h
call    sub_4D89E4

loc_44AB1C:
cmp     ds:byte_5F83D5, 0
jge     loc_44AA58
mov     bl, [edi]
test    bl, 2
jnz     loc_44AA58
mov     bh, bl
or      bh, 2
mov     [edi], bh
xor     edx, edx
xor     eax, eax
call    sub_4A0E24
jmp     loc_44AA58
sub_44AA63 endp




sub_44AB49 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_44AB4F[edx*4]
pop     edx
retn
sub_44AB49 endp

db 90h
jpt_44AC30 dd offset loc_44AC37 ; jump table for switch statement
dd offset loc_44AC4B
dd offset loc_44AC55
dd offset loc_44AC6F
dd offset loc_44AC79



sub_44AB6D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ebp+0], ah
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 1D701D7h
mov     dword ptr [ebp+15Ch], 1D7h
mov     word ptr [ebp+15Eh], 4210h
mov     word ptr [ecx], 0
mov     dword ptr [ecx+4], 0
mov     edi, offset unk_559E28
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
mov     edx, offset unk_559E28
call    sub_4DD4C5
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], offset unk_5159D0
mov     dword ptr [ebp+10h], offset unk_5159DC
mov     al, [ebp+3]
cmp     al, 4           ; switch 5 cases
ja      short def_44AC30 ; jumptable 0044AC30 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_44AC30[ecx*4] ; switch jump

loc_44AC37:             ; jumptable 0044AC30 case 0
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0

loc_44AC3F:
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
jmp     short loc_44AC8B

loc_44AC4B:             ; jumptable 0044AC30 case 1
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 2
jmp     short loc_44AC3F

loc_44AC55:             ; jumptable 0044AC30 case 2
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 3
mov     word ptr [ebp+0Ah], 0
mov     ebx, 1Dh
mov     edx, 10h
jmp     short loc_44AC8B

loc_44AC6F:             ; jumptable 0044AC30 case 3
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 4
jmp     short loc_44AC3F

loc_44AC79:             ; jumptable 0044AC30 case 4
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 5
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx

loc_44AC8B:
mov     eax, ebp
call    sub_4DE96B

def_44AC30:             ; jumptable 0044AC30 default case
mov     eax, ebp
call    sub_44ACA0

def_44B06A:             ; jumptable 0044B06A default case, case 5
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44AB6D endp




sub_44ACA0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+408h]
mov     al, [eax+0ACh]
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
mov     [edx+2], ax
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_44ACED[ecx*4]
test    byte ptr [edx], 1
jz      short loc_44AD06
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_44AD06:
mov     al, [ebp+0ADh]
mov     bh, [ebp+0ACh]
cmp     al, bh
jz      short loc_44AD25
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_44AD2C

loc_44AD25:
mov     eax, ebp
call    sub_4DEADD

loc_44AD2C:
test    byte ptr [ebp+0], 2
jz      short loc_44AD45
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44AD45:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
jmp     def_44B06A      ; jumptable 0044B06A default case, case 5
sub_44ACA0 endp



; Attributes: thunk

sub_44AD5D proc near
jmp     sub_4DE2F6
sub_44AD5D endp




sub_44AD62 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_44AD76
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_44AD76:
pop     edx
retn
sub_44AD62 endp




sub_44AD78 proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_44AD8A
jbe     short loc_44AD9A
cmp     dl, 2
jz      short loc_44ADAF
pop     edx
retn

loc_44AD8A:
test    dl, dl
jnz     short loc_44ADC4
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_44AD9A:
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_44ADC4
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 8
pop     edx
retn

loc_44ADAF:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_44ADC4
dec     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_44ADC4:
pop     edx
retn
sub_44AD78 endp




sub_44ADC6 proc near
push    edx
mov     edx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_44ADD6
cmp     al, 1
jz      short loc_44ADE2
pop     edx
retn

loc_44ADD6:
inc     al
mov     [edx+0Ah], al
mov     byte ptr [edx+0ACh], 0

loc_44ADE2:
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      short loc_44AE04
mov     eax, 609h
call    sub_47EA91
inc     byte ptr [edx+0Ah]
mov     byte ptr [edx+0ACh], 10h

loc_44AE04:
pop     edx
retn
sub_44ADC6 endp

db 8Dh, 40h, 0
jpt_44AE3C dd offset loc_44AE43 ; jump table for switch statement
dd offset loc_44AE48
dd offset loc_44AE79
dd offset loc_44AE97
dd offset loc_44AEC8
dd offset loc_44AEEF



sub_44AE21 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     edx, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_44AE3C      ; jumptable 0044AE3C default case
xor     ebx, ebx
mov     bl, al
jmp     jpt_44AE3C[ebx*4] ; switch jump

loc_44AE43:             ; jumptable 0044AE3C case 0
inc     al
mov     [esi+0Ah], al

loc_44AE48:             ; jumptable 0044AE3C case 1
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      def_44AE3C      ; jumptable 0044AE3C default case
mov     eax, 609h
call    sub_47EA91
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 14h
mov     word ptr [edx+4], 46h ; 'F'
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44AE79:             ; jumptable 0044AE3C case 2
cmp     byte ptr [esi+0A7h], 0
jge     def_44AE3C      ; jumptable 0044AE3C default case
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 15h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44AE97:             ; jumptable 0044AE3C case 3
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      def_44AE3C      ; jumptable 0044AE3C default case
mov     eax, 609h
call    sub_47EA91
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 11h
mov     word ptr [esi+56h], 800h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44AEC8:             ; jumptable 0044AE3C case 4
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      short def_44AE3C ; jumptable 0044AE3C default case
mov     eax, 609h
call    sub_47EA91
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44AEEF:             ; jumptable 0044AE3C case 5
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 40h ; '@'
mov     edx, offset unk_5159E8
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short def_44AE3C ; jumptable 0044AE3C default case
mov     eax, 607h
call    sub_47E8B8
mov     byte ptr [esi+0ACh], 11h
inc     byte ptr [esi+0Ah]

def_44AE3C:             ; jumptable 0044AE3C default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44AE21 endp

db 8Dh, 40h, 0
jpt_44AF60 dd offset loc_44AF67 ; jump table for switch statement
dd offset loc_44AF6C
dd offset loc_44AF9D
dd offset def_44AF60



sub_44AF45 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     edx, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_44AF60      ; jumptable 0044AF60 default case, case 3
xor     ebx, ebx
mov     bl, al
jmp     jpt_44AF60[ebx*4] ; switch jump

loc_44AF67:             ; jumptable 0044AF60 case 0
inc     al
mov     [esi+0Ah], al

loc_44AF6C:             ; jumptable 0044AF60 case 1
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      def_44AF60      ; jumptable 0044AF60 default case, case 3
mov     eax, 609h
call    sub_47EA91
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 2
mov     word ptr [edx+4], 5Ah ; 'Z'
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44AF9D:             ; jumptable 0044AF60 case 2
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 50h ; 'P'
mov     edx, (offset dword_5159EE+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 140h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     eax, [esi+12h]
sar     eax, 10h
mov     edx, ds:dword_5159EE
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     ebx, [esi+16h]
sar     ebx, 10h
mov     eax, ds:dword_5159F2
sar     eax, 10h
sub     ebx, eax
mov     eax, ebx
imul    edx, edx
imul    eax, ebx
add     eax, edx
cmp     eax, 800h
jge     short loc_44B018
mov     eax, 607h
call    sub_47E8B8
inc     byte ptr [esi+0Ah]

loc_44B018:
cmp     byte ptr [esi+0A6h], 1
jnz     short def_44AF60 ; jumptable 0044AF60 default case, case 3
xor     ebx, ebx
xor     edx, edx
mov     eax, 10Bh
call    sub_4D89E4

def_44AF60:             ; jumptable 0044AF60 default case, case 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44AF45 endp

db 90h
jpt_44B06A dd offset loc_44B071 ; jump table for switch statement
dd offset loc_44B0A0
dd offset loc_44B0CF
dd offset loc_44B14F
dd offset loc_44B18D
dd offset def_44B06A



sub_44B04D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     edx, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_44B06A      ; jumptable 0044B06A default case, case 5
and     eax, 0FFh
jmp     jpt_44B06A[eax*4] ; switch jump

loc_44B071:             ; jumptable 0044B06A case 0
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_44B084
mov     byte ptr [esi+0ACh], 8
inc     byte ptr [esi+0Ah]

loc_44B084:
mov     ecx, [edx+184h]
cmp     esi, ecx
jnz     def_44B06A      ; jumptable 0044B06A default case, case 5
mov     dword ptr [edx+184h], 0
mov     byte ptr [ecx+0Ah], 2

loc_44B0A0:             ; jumptable 0044B06A case 1
cmp     byte ptr [esi+0A7h], 0
jge     short loc_44B0B3
mov     byte ptr [esi+0ACh], 0
dec     byte ptr [esi+0Ah]

loc_44B0B3:
mov     ebx, [edx+184h]
cmp     esi, ebx
jnz     def_44B06A      ; jumptable 0044B06A default case, case 5
mov     dword ptr [edx+184h], 0
mov     byte ptr [ebx+0Ah], 2

loc_44B0CF:             ; jumptable 0044B06A case 2
mov     eax, 604h
call    sub_47E8B8
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Bh], 10h
mov     byte ptr [esi+0ACh], 0
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edi, [edx+14h]
lea     ebp, [esi+14h]
mov     ecx, 800h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_44B11D
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552
neg     eax
jmp     short loc_44B131

loc_44B11D:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552

loc_44B131:
sar     eax, 3
mov     [esi+64h], ax
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0
mov     word ptr [esi+48h], 0
jmp     def_44B06A      ; jumptable 0044B06A default case, case 5

loc_44B14F:             ; jumptable 0044B06A case 3
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
test    byte ptr ds:dword_55BD7C+2, 20h
jz      def_44B06A      ; jumptable 0044B06A default case, case 5
mov     byte ptr [esi+0ACh], 8
inc     byte ptr [esi+0Ah]
jmp     def_44B06A      ; jumptable 0044B06A default case, case 5

loc_44B18D:             ; jumptable 0044B06A case 4
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jge     def_44B06A      ; jumptable 0044B06A default case, case 5
mov     byte ptr [esi+0ACh], 0
dec     byte ptr [esi+0Ah]
jmp     def_44B06A      ; jumptable 0044B06A default case, case 5
sub_44B04D endp




sub_44B1CB proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_44B1D1[edx*4]
pop     edx
retn
sub_44B1CB endp




sub_44B1DA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+438h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
cmp     byte ptr [ecx+3], 0
jz      short loc_44B1F7
lea     edx, [ecx+3]
jmp     short loc_44B1F9

loc_44B1F7:
xor     edx, edx

loc_44B1F9:
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ebx], 0
mov     dword ptr [ebx+4], 0
mov     word ptr [ebx+0Ch], 0F204h
mov     word ptr [ebx+0Eh], 0
mov     word ptr [ebx+10h], 190h
mov     word ptr [ebx+0Ah], 0
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     word ptr [ecx+6Eh], 0
mov     dx, [ecx+6Eh]
mov     [ecx+0B0h], dx
mov     [ecx+0B2h], dx
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_44B2A8
pop     edx
pop     ecx
pop     ebx
retn
sub_44B1DA endp




sub_44B2A8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+438h]
mov     al, [eax+0ACh]
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
mov     [ecx+2], ax
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_44B2F5[edx*4]
test    byte ptr [ecx], 1
jz      short loc_44B311
mov     eax, ebp
call    sub_4DE2F6
mov     word ptr [ebp+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_44B311:
mov     al, [ebp+0ADh]
cmp     al, [ebp+0ACh]
jz      short loc_44B332
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_44B339

loc_44B332:
mov     eax, ebp
call    sub_4DEB53

loc_44B339:
mov     ax, [ecx+0Ah]
mov     ds:word_560E16, ax
mov     eax, ebp
call    sub_4DF795
test    byte ptr [ebp+0], 2
jz      short loc_44B363
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44B363:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697

def_44B479:             ; jumptable 0044B479 default case, case 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44B2A8 endp



; Attributes: thunk

sub_44B37D proc near
jmp     sub_4DE2F6
sub_44B37D endp




sub_44B382 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_44B396
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_44B396:
pop     edx
retn
sub_44B382 endp




sub_44B398 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
jbe     short loc_44B3A7
cmp     dl, 1
jz      short loc_44B3B5
pop     edx
retn

loc_44B3A7:
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 13h
pop     edx
retn

loc_44B3B5:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_44B3C8
mov     byte ptr [eax+9], 4
mov     word ptr [eax+0Ah], 0

loc_44B3C8:
pop     edx
retn
sub_44B398 endp




sub_44B3CA proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_44B3D7
jbe     short loc_44B3E9
pop     edx
retn

loc_44B3D7:
test    dl, dl
jnz     short loc_44B408
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 11h
pop     edx
retn

loc_44B3E9:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_44B408
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0
mov     eax, 61Fh
call    sub_47E8B8

loc_44B408:
pop     edx
retn
sub_44B3CA endp




sub_44B40A proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_44B417
jbe     short loc_44B429
pop     edx
retn

loc_44B417:
test    dl, dl
jnz     short loc_44B43E
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 12h
pop     edx
retn

loc_44B429:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_44B43E
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_44B43E:
pop     edx
retn
sub_44B40A endp

db 8Dh, 40h, 0
jpt_44B479 dd offset loc_44B480 ; jump table for switch statement
dd offset loc_44B498
dd offset loc_44B4D2
dd offset loc_44B4E7
dd offset def_44B479



sub_44B457 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+438h]
mov     ebp, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_44B479      ; jumptable 0044B479 default case, case 4
xor     edx, edx
mov     dl, al
jmp     jpt_44B479[edx*4] ; switch jump

loc_44B480:             ; jumptable 0044B479 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 1
mov     word ptr [esi+64h], 20h ; ' '
mov     word ptr [edi+4], 28h ; '('

loc_44B498:             ; jumptable 0044B479 case 1
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

loc_44B4BA:
mov     bx, [edi+4]
dec     bx
mov     [edi+4], bx
jnz     def_44B479      ; jumptable 0044B479 default case, case 4
inc     byte ptr [esi+0Ah]
jmp     def_44B479      ; jumptable 0044B479 default case, case 4

loc_44B4D2:             ; jumptable 0044B479 case 2
mov     byte ptr [esi+0ACh], 0
inc     byte ptr [esi+0Ah]
mov     word ptr [edi+4], 14h
jmp     def_44B479      ; jumptable 0044B479 default case, case 4

loc_44B4E7:             ; jumptable 0044B479 case 3
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     edx, [esi+54h]
sar     edx, 10h
mov     ebx, [edi+8]
sar     ebx, 10h
add     ebx, edx
and     ebx, 0FFFh
lea     edx, [ebp+14h]
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [edi+0Ah]
and     ah, 0Fh
mov     [edi+0Ah], ax
jmp     short loc_44B4BA
sub_44B457 endp




sub_44B519 proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_44B52B
jbe     short loc_44B53B
cmp     dl, 2
jz      short loc_44B550
pop     edx
retn

loc_44B52B:
test    dl, dl
jnz     short loc_44B565
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_44B53B:
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_44B565
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 8
pop     edx
retn

loc_44B550:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_44B565
dec     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_44B565:
pop     edx
retn
sub_44B519 endp




sub_44B567 proc near
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
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
lea     edx, [eax+408h]
cmp     byte ptr [eax+8], 0
jnz     short loc_44B5AA
mov     eax, ebp
call    sub_44B60C
jmp     short loc_44B5B1

loc_44B5AA:
mov     eax, ebp
call    sub_44B703

loc_44B5B1:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
test    byte ptr [ebp+0], 2
jz      short loc_44B5DD
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44B5DD:
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+0ADh]
jz      short loc_44B5FE
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_44B605

loc_44B5FE:
mov     eax, ebp
call    sub_4DEADD

loc_44B605:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44B567 endp




sub_44B60C proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
lea     edx, [ecx+3]
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_44B62B
mov     eax, ecx
call    sub_4DD0F8
jmp     short loc_44B632

loc_44B62B:
mov     eax, ecx
call    sub_4DD107

loc_44B632:
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_515A1C
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_515A28[edx*4]
mov     [ebx], edx
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_515A3C[edx*4]
mov     [ebx+4], edx
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_515A7C[edx*4]
mov     [ebx+8], edx
mov     dword ptr [ebx+0Ch], 1
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_515A68[edx*4]
mov     [ebx+10h], edx
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     ecx
pop     ebx
retn
sub_44B60C endp

db 90h
jpt_44B724 dd offset loc_44B72B ; jump table for switch statement
dd offset loc_44B7F6
dd offset loc_44B84A
dd offset loc_44B8E0
dd offset loc_44B8F8
dd offset loc_44B918



sub_44B703 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     esi, eax
mov     edi, edx
mov     ebp, offset byte_5F8364
mov     al, [eax+9]
cmp     al, 5           ; switch 6 cases
ja      def_44B724      ; jumptable 0044B724 default case
and     eax, 0FFh
jmp     jpt_44B724[eax*4] ; switch jump

loc_44B72B:             ; jumptable 0044B724 case 0
mov     edi, [ebp+184h]
cmp     esi, edi
jnz     def_44B724      ; jumptable 0044B724 default case
mov     ecx, 800h
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [edi+14h]
call    sub_4DE552
test    ax, ax
jge     short loc_44B76F
mov     ecx, 800h
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [edi+14h]
call    sub_4DE552
cwde
neg     eax
jmp     short loc_44B786

loc_44B76F:
mov     ecx, 800h
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [edi+14h]
call    sub_4DE552
cwde

loc_44B786:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [ebp+0], 0FDh
or      byte ptr [ebp+0BDh], 80h
mov     dword ptr [ebp+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     [esp+24h+var_24], eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     [esp+24h+var_20], eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     [esp+24h+var_1C], eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [ebp+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, esp
call    sub_42AAA8

loc_44B7EE:
inc     byte ptr [esi+9]
jmp     def_44B724      ; jumptable 0044B724 default case

loc_44B7F6:             ; jumptable 0044B724 case 1
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_44B724      ; jumptable 0044B724 default case
call    sub_42ABA2
test    eax, eax
jnz     def_44B724      ; jumptable 0044B724 default case
mov     ebx, [edi]
cmp     ebx, 7FFFFFFFh
jz      short loc_44B7EE
mov     edx, ebx
call    sub_4A0E24
mov     byte ptr [esi+0ACh], 8
jmp     short loc_44B7EE

loc_44B84A:             ; jumptable 0044B724 case 2
cmp     dword ptr [edx], 7FFFFFFFh
jz      short loc_44B8B5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_44B724      ; jumptable 0044B724 default case
mov     al, [esi+0Eh]
cmp     al, 1
jb      short loc_44B871
jbe     short loc_44B887
cmp     al, 2
jz      short loc_44B89A
jmp     def_44B724      ; jumptable 0044B724 default case

loc_44B871:
test    al, al
jnz     def_44B724      ; jumptable 0044B724 default case

loc_44B879:
call    sub_42A98E
mov     byte ptr [esi+9], 4
jmp     def_44B724      ; jumptable 0044B724 default case

loc_44B887:
mov     eax, 0Ah
call    sub_49E0D7
mov     byte ptr [esi+9], 3
jmp     def_44B724      ; jumptable 0044B724 default case

loc_44B89A:
mov     ecx, [edx+8]
cmp     ecx, 7FFFFFFFh
jz      short loc_44B879
mov     eax, ecx
call    sub_47E888
test    eax, eax
jnz     short loc_44B887
mov     [edx+0Ch], eax
jmp     short loc_44B879

loc_44B8B5:
mov     al, [esi+0Eh]
cmp     al, 1
jb      short loc_44B871
jbe     short loc_44B887
cmp     al, 2
jnz     def_44B724      ; jumptable 0044B724 default case
cmp     dword ptr [edx+8], 7FFFFFFFh
jz      short loc_44B879
mov     eax, [edi+8]
call    sub_47E888
test    eax, eax
jnz     short loc_44B887
mov     [edi+0Ch], eax
jmp     short loc_44B879

loc_44B8E0:             ; jumptable 0044B724 case 3
cmp     ds:word_6E23D6, 0
jnz     def_44B724      ; jumptable 0044B724 default case
call    sub_42A98E
jmp     loc_44B7EE

loc_44B8F8:             ; jumptable 0044B724 case 4
call    sub_42ABA2
test    eax, eax
jnz     def_44B724      ; jumptable 0044B724 default case
and     ds:byte_5F8421, 7Fh
or      ds:byte_5F8364, 2
jmp     loc_44B7EE

loc_44B918:             ; jumptable 0044B724 case 5
cmp     dword ptr [edx+4], 7FFFFFFFh
jz      short loc_44B93F
mov     ecx, [edi+8]
cmp     ecx, 7FFFFFFFh
jz      short loc_44B937
mov     eax, ecx
call    sub_47E888
test    eax, eax
jz      short loc_44B93F

loc_44B937:
mov     eax, [edi+4]
call    sub_47E8B8

loc_44B93F:
cmp     dword ptr [edi+0Ch], 1
jnz     loc_44B9C4
mov     ebp, [edi+10h]
cmp     ebp, 7FFFFFFFh
jz      short loc_44B9BB
mov     al, [ebp+8]
mov     byte ptr ds:dword_77EA5A+2, al
mov     eax, [edi+10h]
mov     al, [eax+9]
mov     ds:byte_77EA5E, al
mov     eax, [edi+10h]
mov     al, [eax+0Ah]
mov     ds:byte_77EA5F, al
mov     eax, [edi+10h]
mov     ax, [eax]
mov     word ptr ds:dword_77EA4E+2, ax
mov     eax, [edi+10h]
mov     ax, [eax+2]
mov     word ptr ds:dword_77EA52, ax
mov     eax, [edi+10h]
mov     ax, [eax+4]
mov     word ptr ds:dword_77EA52+2, ax
mov     eax, [edi+10h]
mov     ax, [eax+6]
mov     word ptr ds:dword_77EA5A, ax
xor     ah, ah
mov     byte ptr ds:dword_77EA5A+3, ah
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2

loc_44B9BB:
mov     eax, esi
call    sub_4DE2F6
jmp     short def_44B724 ; jumptable 0044B724 default case

loc_44B9C4:
mov     dword ptr [edi+0Ch], 1
mov     byte ptr [esi+9], 0

def_44B724:             ; jumptable 0044B724 default case
add     esp, 10h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_44B703 endp




sub_44B9D8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     word ptr [eax+15Eh], 4210h
test    byte ptr [eax], 2
jz      short loc_44B9FF
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B

loc_44B9FF:
xor     edx, edx
mov     dl, [esi+3]
mov     eax, esi
call    ds:funcs_44BA06[edx*4]
cmp     byte ptr [esi+9], 0
jz      short loc_44BA21
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
jmp     short loc_44BA2D

loc_44BA21:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1

loc_44BA2D:
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44B9D8 endp




sub_44BA39 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_44BA3F[edx*4]
pop     edx
retn
sub_44BA39 endp




sub_44BA48 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_44BA4E[edx*4]
pop     edx
retn
sub_44BA48 endp




sub_44BA57 proc near
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
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
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
mov     edx, [ecx+1Ch]
mov     [ecx+34h], edx
mov     edx, [ecx+20h]
mov     [ecx+38h], edx
mov     dx, [ecx+18h]
mov     [ecx+30h], dx
mov     dx, [ecx+14h]
mov     [ecx+2Ch], dx
mov     dx, [ecx+16h]
mov     [ecx+2Eh], dx
mov     dx, [ecx+18h]
mov     [ecx+30h], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+54h]
mov     [ecx+5Ch], dx
mov     dx, [ecx+56h]
mov     [ecx+5Eh], dx
mov     dx, [ecx+58h]
mov     [ecx+60h], dx
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     byte ptr [ecx+9], 0

loc_44BB33:
mov     word ptr [ecx+64h], 80h
mov     edx, [ecx+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_44BA57 endp




sub_44BB53 proc near

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
mov     esi, eax
cmp     eax, ds:dword_5F84E8
jnz     loc_44BBF8
and     ds:byte_5F8364, 0FDh
or      ds:byte_5F8421, 80h
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     [esp+28h+var_28], eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     [esp+28h+var_24], eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     [esp+28h+var_20], eax
mov     ecx, ds:dword_77E964
lea     ebp, [esi+14h]
mov     edi, offset byte_5F8364
add     edi, 14h
mov     edx, ebp
mov     eax, edi
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, esp
call    sub_42AAA8
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
mov     edx, edi
mov     eax, ebp
call    sub_4DDDB4
mov     ds:word_559E38, ax
mov     byte ptr [esi+8], 2
jmp     short loc_44BC1A

loc_44BBF8:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_44BC07
mov     eax, esi
call    sub_4DEADD
jmp     short loc_44BC1A

loc_44BC07:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0

loc_44BC1A:
add     esp, 10h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44BB53 endp




sub_44BC24 proc near
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
cmp     byte ptr [esi+0Dh], 0
jnz     short loc_44BC4B
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44BC4B:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44BC24 endp




sub_44BC63 proc near
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
mov     dword ptr [ecx+10h], offset unk_515AB8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
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
mov     edx, [ecx+1Ch]
mov     [ecx+34h], edx
mov     edx, [ecx+20h]
mov     [ecx+38h], edx
mov     edx, [ecx+24h]
mov     [ecx+3Ch], edx
mov     dx, [ecx+14h]
mov     [ecx+2Ch], dx
mov     dx, [ecx+16h]
mov     [ecx+2Eh], dx
mov     dx, [ecx+18h]
mov     [ecx+30h], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+54h]
mov     [ecx+5Ch], dx
mov     dx, [ecx+56h]
mov     [ecx+5Eh], dx
mov     dx, [ecx+58h]
mov     [ecx+60h], dx
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
jmp     loc_44BB33
sub_44BC63 endp




sub_44BD3E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, dword ptr ds:unk_559E36
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short loc_44BDA7
call    sub_42ABA2
test    eax, eax
jnz     short loc_44BDA7
mov     ecx, [esi+9]
sar     ecx, 18h
lea     eax, [esi+14h]
xor     ebx, ebx
mov     edx, 3
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+9], 1
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44BDA7:
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44BD3E endp




sub_44BDB3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr ds:dword_77E760, 0
jnz     short loc_44BDDB
call    sub_42A98E
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_44BDDB:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_44BDB3 endp




sub_44BDE6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+5Ch]
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [ecx+56h]
add     edx, eax
and     dh, 0Fh
mov     [ecx+56h], dx
test    ax, ax
jnz     short loc_44BE42
call    sub_42ABA2
test    eax, eax
jnz     short loc_44BE42
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
and     ds:byte_5F8421, 7Fh
or      ds:byte_5F8364, 2
mov     byte ptr [ecx+8], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_44BE42:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_44BDE6 endp

byte_44BE4D db 37h, 16h, 0FFh
dword_44BE50 dd 4E3AFFh, 52515300h, 89555756h, 2C7D8DC5h
dd 0A514758Dh, 347D8DA5h, 0A51C758Dh, 8DA5A5A5h
dd 758D5C7Dh, 0E8A5A554h, 75h, 20045F6h
dd 0C9311374h, 200BBh, 30BA00h, 0E8890000h
dd 0A19F6E8h, 9558A00h, 974D284h, 3AE8E889h
dd 0EB00092Ch, 0FED68807h, 97588C6h
; START OF FUNCTION CHUNK FOR sub_44BEF1

loc_44BEAC:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_44BEF1
db 8Bh
db 0C0h
jpt_44BF0B dd offset loc_44BF12 ; jump table for switch statement
dd offset loc_44BF1E
dd offset loc_44BF45
dd offset loc_44BF8C
dd offset loc_44BFB2
dd offset loc_44BFCC
dd offset loc_44BFDA
dd offset loc_44BFF1
dd offset loc_44BFDA
dd offset loc_44BFF8
dd offset loc_44BFB2
dd offset loc_44BFFF
dd offset loc_44BFB2
dd offset loc_44C006
dd offset loc_44C043



sub_44BEF1 proc near

; FUNCTION CHUNK AT 0044BEAC SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     al, [eax+8]
cmp     al, 0Eh         ; switch 15 cases
ja      def_44BF0B      ; jumptable 0044BF0B default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_44BF0B[ecx*4] ; switch jump

loc_44BF12:             ; jumptable 0044BF0B case 0
mov     eax, ebp
call    sub_44C0A7
jmp     loc_44BFC4

loc_44BF1E:             ; jumptable 0044BF0B case 1
cmp     ebp, ds:dword_5F84E8
jnz     def_44BF0B      ; jumptable 0044BF0B default case
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
mov     byte ptr ds:dword_77E5EC, 4
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+0Ah], 5
jmp     def_44BF0B      ; jumptable 0044BF0B default case

loc_44BF45:             ; jumptable 0044BF0B case 2
mov     al, [ebp+0Ah]
test    al, al
jnz     short loc_44BF80
mov     ecx, [ebp+62h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [ebp+14h]
call    sub_4DE552
mov     dx, [ebp+56h]
add     edx, eax
and     dh, 0Fh
mov     [ebp+56h], dx
test    ax, ax
jnz     def_44BF0B      ; jumptable 0044BF0B default case
jmp     short loc_44BFC4

loc_44BF80:
mov     ah, al
dec     ah
mov     [ebp+0Ah], ah
jmp     def_44BF0B      ; jumptable 0044BF0B default case

loc_44BF8C:             ; jumptable 0044BF0B case 3
mov     edx, 0Dh

loc_44BF91:
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8

loc_44BF9F:
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+9], 0
jmp     def_44BF0B      ; jumptable 0044BF0B default case

loc_44BFB2:             ; jumptable 0044BF0B cases 4,10,12
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_44BF0B      ; jumptable 0044BF0B default case
call    sub_49DF64

loc_44BFC4:
inc     byte ptr [ebp+8]
jmp     def_44BF0B      ; jumptable 0044BF0B default case

loc_44BFCC:             ; jumptable 0044BF0B case 5
mov     edx, 0Eh

loc_44BFD1:
xor     eax, eax
call    sub_4A0E24
jmp     short loc_44BFC4

loc_44BFDA:             ; jumptable 0044BF0B cases 6,8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_44BF0B      ; jumptable 0044BF0B default case
inc     al
mov     [ebp+8], al
jmp     def_44BF0B      ; jumptable 0044BF0B default case

loc_44BFF1:             ; jumptable 0044BF0B case 7
mov     edx, 0Fh
jmp     short loc_44BF91

loc_44BFF8:             ; jumptable 0044BF0B case 9
mov     edx, 10h
jmp     short loc_44BFD1

loc_44BFFF:             ; jumptable 0044BF0B case 11
mov     edx, 11h
jmp     short loc_44BF91

loc_44C006:             ; jumptable 0044BF0B case 13
mov     edi, esp
mov     esi, offset byte_44BE4D
movsd
movsd
mov     ecx, [ebp+62h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     edx, esp
call    sub_4DE552
mov     dx, [ebp+56h]
add     edx, eax
and     dh, 0Fh
mov     [ebp+56h], dx
test    ax, ax
jnz     short def_44BF0B ; jumptable 0044BF0B default case
xor     ebx, ebx
mov     edx, 1
jmp     loc_44BF9F

loc_44C043:             ; jumptable 0044BF0B case 14
mov     eax, 1Ah
call    sub_47E888
test    eax, eax
jnz     short def_44BF0B ; jumptable 0044BF0B default case
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'
mov     eax, ebp
call    sub_4DD43B
cmp     byte ptr [ebp+0A6h], 0
jz      short def_44BF0B ; jumptable 0044BF0B default case
lea     edx, [ebp+14h]
mov     eax, 111h
call    sub_4D8BC3

def_44BF0B:             ; jumptable 0044BF0B default case
mov     eax, 1Ah
call    sub_47E888
test    eax, eax
jz      short loc_44C08C
mov     eax, ebp
call    sub_4DE2F6

loc_44C08C:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
add     esp, 8
jmp     loc_44BEAC
sub_44BEF1 endp




sub_44C0A7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 80h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_515AC4
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_44C0A7 endp




sub_44C134 proc near
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
call    sub_44C1B8
test    byte ptr [ebp+0], 2
jz      short loc_44C174
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44C174:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_44C184
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_44C18B

loc_44C184:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_44C18B:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44C134 endp

align 4
jpt_44C1CE dd offset loc_44C1D5 ; jump table for switch statement
dd offset loc_44C204
dd offset loc_44C237
dd offset loc_44C251
dd offset loc_44C27F
dd offset loc_44C237
dd offset loc_44C294
dd offset loc_44C237
dd offset loc_44C2B5



sub_44C1B8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 8           ; switch 9 cases
ja      def_44C1CE      ; jumptable 0044C1CE default case
and     eax, 0FFh
jmp     jpt_44C1CE[eax*4] ; switch jump

loc_44C1D5:             ; jumptable 0044C1CE case 0
mov     eax, esi
call    sub_44C2F3
inc     byte ptr [esi+8]
mov     edx, ds:dword_560C00
mov     ebx, [esi+54h]
sar     ebx, 10h
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
add     [esi+56h], ax
jmp     def_44C1CE      ; jumptable 0044C1CE default case

loc_44C204:             ; jumptable 0044C1CE case 1
cmp     ds:byte_560BE5, 3
jnz     def_44C1CE      ; jumptable 0044C1CE default case
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     edx, 0B5h

loc_44C224:
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     def_44C1CE      ; jumptable 0044C1CE default case

loc_44C237:             ; jumptable 0044C1CE cases 2,5,7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_44C1CE      ; jumptable 0044C1CE default case
call    sub_49DF64

loc_44C249:
inc     byte ptr [esi+8]
jmp     def_44C1CE      ; jumptable 0044C1CE default case

loc_44C251:             ; jumptable 0044C1CE case 3
cmp     ds:byte_560BE5, 5
jnz     def_44C1CE      ; jumptable 0044C1CE default case
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
add     [esi+56h], ax
jmp     short loc_44C249

loc_44C27F:             ; jumptable 0044C1CE case 4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     edx, 0B7h
jmp     short loc_44C224

loc_44C294:             ; jumptable 0044C1CE case 6
cmp     ds:byte_560BE5, 7
jnz     short def_44C1CE ; jumptable 0044C1CE default case
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     edx, 0B9h
jmp     loc_44C224

loc_44C2B5:             ; jumptable 0044C1CE case 8
mov     ah, byte ptr ds:dword_560BDC
test    ah, ah
jnz     short def_44C1CE ; jumptable 0044C1CE default case
mov     [esi+0Bh], ah
mov     [esi+0Ah], ah
mov     [esi+9], ah
mov     [esi+8], ah
mov     byte ptr [esi+0Ch], 5Ch ; '\'
mov     [esi+0Fh], ah
mov     [esi+0Eh], ah
mov     [esi+0Dh], ah
mov     [esi+4], ah

def_44C1CE:             ; jumptable 0044C1CE default case
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
sub_44C1B8 endp




sub_44C2F3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 80h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_44C2F3 endp




sub_44C375 proc near
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
xor     ecx, ecx
mov     cl, [eax+8]
lea     ebx, [eax+408h]
mov     edx, offset dword_560BDC
call    ds:funcs_44C3A7[ecx*4]
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 100h
mov     eax, ebp
call    sub_4ED88B
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44C375 endp




sub_44C3C8 proc near
push    ecx
push    esi
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     dx, [ecx+16h]
add     edx, eax
mov     [ecx+16h], dx
mov     esi, edx
sub     esi, 4C0h
mov     [ecx+16h], si
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ebx], 0
mov     dword ptr [ebx+4], 88000h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     esi
pop     ecx
retn
sub_44C3C8 endp




sub_44C446 proc near
push    ecx
push    esi
mov     ecx, [ebx+4]
cmp     ecx, 8000h
jle     short loc_44C47D
mov     edx, ecx
sar     edx, 10h
add     [eax+16h], dx
mov     edx, [ebx+4]
add     [eax+20h], edx
mov     si, [ebx]
inc     esi
mov     [ebx], si
cmp     si, 10h
jnz     short loc_44C49E
add     dword ptr [ebx+4], 0FFFF8000h
mov     word ptr [ebx], 0
jmp     short loc_44C49E

loc_44C47D:
cmp     byte ptr [edx+9], 4
jnz     short loc_44C49E
cmp     dword ptr [edx+10h], 78h ; 'x'
jle     short loc_44C49E
mov     word ptr [ebx+8], 0
mov     word ptr [ebx+0Ah], 0Eh
mov     word ptr [ebx+0Ch], 0
inc     byte ptr [eax+8]

loc_44C49E:
call    sub_4DEADD
pop     esi
pop     ecx
retn
sub_44C446 endp




sub_44C4A6 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, edx
cmp     byte ptr [edx+7], 0
jnz     short loc_44C4FA
cmp     word ptr [ebx+8], 600h
jge     short loc_44C4E4
mov     dx, [ebx+0Ah]
add     [ebx+8], dx
inc     word ptr [ebx+0Ch]
mov     edx, [ebx+0Ah]
sar     edx, 10h
mov     edi, 4
mov     eax, edx
sar     edx, 1Fh
idiv    edi
test    edx, edx
jnz     short loc_44C4FA
add     word ptr [ebx+0Ah], 14h
jmp     short loc_44C4FA

loc_44C4E4:
mov     word ptr [ebx+8], 600h
mov     word ptr [ebx+0Ah], 0Eh
mov     word ptr [ebx+0Ch], 0
mov     byte ptr [esi+7], 1

loc_44C4FA:
cmp     byte ptr [esi+9], 6
jnz     short loc_44C509
cmp     dword ptr [esi+10h], 0Ah
jle     short loc_44C509

loc_44C506:
inc     byte ptr [ecx+8]

loc_44C509:
mov     eax, ecx
call    sub_4DEB53
mov     dx, [ebx+8]
mov     ds:word_560E14, dx
mov     eax, ecx
call    sub_4DF795
pop     edi
pop     esi
pop     ecx
retn
sub_44C4A6 endp




sub_44C526 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, edx
cmp     word ptr [ebx+8], 0
jle     short loc_44C55D
mov     dx, [ebx+0Ah]
sub     [ebx+8], dx
inc     word ptr [ebx+0Ch]
mov     edx, [ebx+0Ah]
sar     edx, 10h
mov     edi, 4
mov     eax, edx
sar     edx, 1Fh
idiv    edi
test    edx, edx
jnz     short loc_44C563
add     word ptr [ebx+0Ah], 14h
jmp     short loc_44C563

loc_44C55D:
mov     word ptr [ebx+8], 0

loc_44C563:
cmp     byte ptr [esi+9], 6
jnz     short loc_44C509
cmp     dword ptr [esi+10h], 32h ; '2'
jle     short loc_44C509
mov     word ptr [ebx], 0
mov     dword ptr [ebx+4], 10000h
jmp     short loc_44C506
sub_44C526 endp




sub_44C57D proc near
push    esi
mov     edx, [ebx+4]
sar     edx, 10h
sub     [eax+16h], dx
mov     edx, [ebx+4]
sub     [eax+20h], edx
mov     si, [ebx]
inc     esi
mov     [ebx], si
cmp     si, 5
jnz     short loc_44C5A7
add     dword ptr [ebx+4], 8000h
mov     word ptr [ebx], 0

loc_44C5A7:
call    sub_4DEADD
pop     esi
retn
sub_44C57D endp




sub_44C5AE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     byte ptr [ecx+0Fh], 0
mov     al, [ecx+3]
xor     al, 1
xor     ah, ah
shl     eax, 8
mov     [ecx+14h], ax
mov     word ptr [ecx+18h], 328h
mov     word ptr [ebp+0], 0
mov     word ptr [ecx+56h], 400h
mov     ax, [ecx+56h]
mov     [ebp+2], ax
mov     word ptr [ebp+4], 0
cmp     byte ptr [ecx+3], 0
jnz     short loc_44C659
mov     dword ptr [ecx+158h], 5000500h
mov     dword ptr [ecx+15Ch], 500h
mov     word ptr [ecx+16h], 0FF9Ch
jmp     short loc_44C673

loc_44C659:
mov     dword ptr [ecx+158h], 3000300h
mov     dword ptr [ecx+15Ch], 300h
mov     word ptr [ecx+16h], 0FF6Ah

loc_44C673:
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
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
mov     word ptr [ecx+15Eh], 4210h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
call    sub_4DE227
test    eax, eax
jz      short loc_44C6CF
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Fh
mov     [eax+54h], ecx

loc_44C6CF:
mov     dword ptr [ebp+8], 0
inc     byte ptr [ecx+9]
jmp     loc_44C97F
sub_44C5AE endp

jpt_44C739 dd offset loc_44C740 ; jump table for switch statement
dd offset loc_44C762
dd offset loc_44C7D9
dd offset loc_44C7F4



sub_44C6EE proc near

var_24= byte ptr -24h
var_22= word ptr -22h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
add     eax, 408h
mov     [esp+24h+var_1C], eax
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
cmp     byte ptr ds:dword_560BE0, 5
jnz     loc_44C90E
mov     al, [ebp+0Fh]
cmp     al, 3           ; switch 4 cases
ja      def_44C739      ; jumptable 0044C739 default case
and     eax, 0FFh
jmp     jpt_44C739[eax*4] ; switch jump

loc_44C740:             ; jumptable 0044C739 case 0
sub     word ptr [ebp+14h], 0Ah
mov     eax, [ebp+12h]
sar     eax, 10h
cmp     eax, 0FFFFFF00h
jge     def_44C739      ; jumptable 0044C739 default case

loc_44C756:
mov     byte ptr [ebp+0Eh], 0

loc_44C75A:
inc     byte ptr [ebp+0Fh]
jmp     def_44C739      ; jumptable 0044C739 default case

loc_44C762:             ; jumptable 0044C739 case 1
inc     byte ptr [ebp+0Eh]
mov     eax, [ebp+0Bh]
sar     eax, 18h
shl     eax, 7
add     eax, 400h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 0Ch
sub     eax, 100h
mov     [ebp+14h], ax
mov     eax, [ebp+0Bh]
sar     eax, 18h
shl     eax, 7
add     eax, 400h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 0Ch
add     eax, 300h
mov     [ebp+18h], ax
mov     eax, [esp+24h+var_1C]
sub     word ptr [eax+2], 80h
cmp     byte ptr [ebp+0Eh], 10h
jl      def_44C739      ; jumptable 0044C739 default case
mov     word ptr [eax+2], 0C00h
mov     word ptr [ebp+18h], 2D8h
jmp     short loc_44C75A

loc_44C7D9:             ; jumptable 0044C739 case 2
mov     bx, [ebp+14h]
add     ebx, 0Ah
mov     [ebp+14h], bx
cmp     bx, 100h
jle     def_44C739      ; jumptable 0044C739 default case
jmp     loc_44C756

loc_44C7F4:             ; jumptable 0044C739 case 3
inc     byte ptr [ebp+0Eh]
mov     eax, [ebp+0Bh]
sar     eax, 18h
shl     eax, 7
add     eax, 0C00h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 0Ch
add     eax, 100h
mov     [ebp+14h], ax
mov     eax, [ebp+0Bh]
sar     eax, 18h
shl     eax, 7
add     eax, 0C00h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 0Ch
add     eax, 300h
mov     [ebp+18h], ax
mov     eax, [esp+24h+var_1C]
sub     word ptr [eax+2], 80h
cmp     byte ptr [ebp+0Eh], 10h
jl      short def_44C739 ; jumptable 0044C739 default case
mov     word ptr [eax+2], 400h
mov     word ptr [ebp+18h], 328h
mov     byte ptr [ebp+0Fh], 0

def_44C739:             ; jumptable 0044C739 default case
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
lea     edi, [ebp+54h]
mov     esi, [esp+24h+var_1C]
movsd
movsd
mov     ah, [ebp+0Dh]
test    ah, ah
jz      short loc_44C8CB
mov     dl, ah
dec     dl
mov     [ebp+0Dh], dl
test    dl, 1
jz      short loc_44C8BB
mov     al, [ebp+3]
xor     al, 1
xor     ah, ah
imul    eax, 30h ; '0'
inc     ah
add     [ebp+56h], ax
jmp     short loc_44C8CB

loc_44C8BB:
mov     al, [ebp+3]
xor     al, 1
xor     ah, ah
imul    eax, 30h ; '0'
inc     ah
sub     [ebp+56h], ax

loc_44C8CB:
mov     eax, [esp+24h+var_1C]
test    byte ptr [eax+0Bh], 8
jz      short loc_44C91B
mov     al, ds:byte_560BE7
inc     al
cmp     byte ptr [ebp+3], 0
jnz     short loc_44C8EA
add     ds:byte_560BE6, al
jmp     short loc_44C908

loc_44C8EA:
mov     cl, ds:byte_560BE6
cmp     cl, 1
ja      short loc_44C8FE
xor     al, al
mov     ds:byte_560BE6, al
jmp     short loc_44C908

loc_44C8FE:
mov     ch, cl
sub     ch, al
mov     ds:byte_560BE6, ch

loc_44C908:
mov     byte ptr [ebp+0Dh], 10h
jmp     short loc_44C91B

loc_44C90E:
mov     byte ptr [ebp+0Dh], 0
lea     edi, [ebp+54h]
mov     esi, [esp+24h+var_1C]
movsd
movsd

loc_44C91B:
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    0
push    4800000h
sub     [esp+30h+var_22], 28h ; '('

loc_44C934:
mov     eax, [esp+30h+var_1C]
add     eax, 8
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 4Bh ; 'K'
lea     eax, [esp+38h+var_24]
call    sub_4E01FC
mov     eax, [esp+24h+var_1C]
mov     dword ptr [eax+8], 0
mov     eax, ebp
call    sub_4DEADD
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 50h ; 'P'
mov     eax, ebp
call    sub_4ED88B

loc_44C97C:
add     esp, 0Ch

loc_44C97F:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44C6EE endp ; sp-analysis failed




sub_44C986 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_44C98C[edx*4]
pop     edx
retn
sub_44C986 endp




sub_44C995 proc near

var_1C= byte ptr -1Ch
var_1A= word ptr -1Ah

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, edx
mov     edi, esp
lea     esi, [eax+14h]
movsd
movsd
push    80h
push    offset unk_800000
push    0C800000h
sub     [esp+28h+var_1A], 1Eh
lea     edx, [ebp+8]
push    edx
mov     al, [eax+1]
and     eax, 0FFh
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 1Eh
lea     eax, [esp+30h+var_1C]
call    sub_4E01FC
mov     dword ptr [ebp+8], 0
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_44C995 endp




sub_44C9ED proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+408h]
mov     ah, [eax]
or      ah, 2
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
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 0FF60h
mov     word ptr [ecx+56h], 400h
mov     edx, [ecx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+34h], edx
mov     [ecx+1Ch], edx
mov     edx, [ecx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+3Ch], edx
mov     [ecx+24h], edx
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+38h], edx
mov     [ecx+20h], edx
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
jmp     loc_44C6CF
sub_44C9ED endp




sub_44CACA proc near
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
test    byte ptr [ecx+0Bh], 20h
jz      short loc_44CB6E
lea     edx, [ebp+14h]
mov     eax, 160h
call    sub_4D8BC3
inc     ds:dword_560BEC
call    sub_4DE043
test    eax, eax
jz      short loc_44CB1B
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 21h ; '!'

loc_44CB1B:
lea     eax, [ebp+14h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DDDB4
mov     edx, eax
mov     ds:byte_560BE7, 1
call    sub_4EF008
mov     ebx, eax
shl     eax, 2
sub     eax, ebx
shl     eax, 3
add     eax, ebx
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
inc     byte ptr [ebp+9]
jmp     short loc_44CB88

loc_44CB6E:
mov     dx, [ebp+14h]
test    dx, dx
jle     short loc_44CB82
mov     ebx, edx
sub     ebx, 14h
mov     [ebp+14h], bx
jmp     short loc_44CB88

loc_44CB82:
mov     word ptr [ebp+14h], 0

loc_44CB88:
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
mov     edx, ecx
mov     eax, ebp
call    sub_44C995
mov     eax, ebp
call    sub_4DEADD
jmp     loc_44CC9E
sub_44CACA endp




sub_44CBC1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
add     eax, 408h
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
mov     dx, [ebp+44h]
add     [ebp+14h], dx
mov     dx, [ebp+46h]
add     [ebp+16h], dx
mov     dx, [ebp+48h]
add     [ebp+18h], dx
mov     edx, [ebp+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ebp+1Ch], edx
mov     edx, [ebp+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ebp+20h], edx
mov     edx, [ebp+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ebp+24h], edx
cmp     word ptr [ebp+18h], 400h
jge     short loc_44CC32
test    byte ptr [eax+0Bh], 4
jz      short loc_44CC72

loc_44CC32:
lea     edx, [ebp+14h]
test    byte ptr [eax+0Bh], 4
jz      short loc_44CC42
mov     eax, 162h
jmp     short loc_44CC47

loc_44CC42:
mov     eax, 161h

loc_44CC47:
call    sub_4D8BC3
cmp     word ptr [ebp+44h], 0
jl      short loc_44CC5B
mov     word ptr [ebp+44h], 50h ; 'P'
jmp     short loc_44CC61

loc_44CC5B:
mov     word ptr [ebp+44h], 0FFB0h

loc_44CC61:
mov     word ptr [ebp+48h], 0
mov     word ptr [ebp+46h], 0FFC4h
inc     byte ptr [ebp+9]
jmp     short loc_44CC7B

loc_44CC72:
mov     edx, eax
mov     eax, ebp
call    sub_44C995

loc_44CC7B:
add     byte ptr [ebp+59h], 4
mov     eax, ebp
call    sub_4DEB53
mov     eax, ebp
call    sub_4DFC52
mov     ax, [ebp+58h]
mov     ds:word_560E10, ax

loc_44CC97:
mov     eax, ebp
call    sub_4DF795

loc_44CC9E:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 28h ; '('
mov     eax, ebp
call    sub_4ED88B
jmp     loc_44C97F
sub_44CBC1 endp




sub_44CCB6 proc near
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
jg      short loc_44CD2D
mov     eax, ebp
call    sub_4DE2F6
jmp     loc_44C97F

loc_44CD2D:
cmp     word ptr [ebp+44h], 0
jle     short loc_44CD3A
add     byte ptr [ebp+55h], 4
jmp     short loc_44CD40

loc_44CD3A:
sub     word ptr [ebp+54h], 400h

loc_44CD40:
mov     eax, ebp
call    sub_4DEB53
mov     eax, ebp
call    sub_4DFC52
mov     ax, [ebp+54h]
mov     ds:word_560E0C, ax
jmp     loc_44CC97
sub_44CCB6 endp




sub_44CD5D proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_44CD63[edx*4]
pop     edx
retn
sub_44CD5D endp




sub_44CD6C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     byte ptr [ecx+3], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
call    rand_
test    al, 1
jz      short loc_44CDE4
mov     word ptr [ecx+14h], 2BCh
mov     word ptr [ecx+44h], 0FFE2h
mov     word ptr [ecx+56h], 400h
jmp     short loc_44CDF6

loc_44CDE4:
mov     word ptr [ecx+14h], 0FD44h
mov     word ptr [ecx+44h], 1Eh
mov     word ptr [ecx+56h], 0C00h

loc_44CDF6:
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 258h
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
mov     word ptr [ebp+0], 0
mov     ax, [ecx+56h]
mov     [ebp+2], ax
mov     word ptr [ebp+4], 0
mov     dword ptr [ecx+158h], 5000500h
mov     dword ptr [ecx+15Ch], 500h
mov     word ptr [ecx+16h], 0FF9Ch
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
mov     word ptr [ecx+15Eh], 4210h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
call    sub_4DE227
test    eax, eax
jz      loc_44C6CF
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Fh
mov     [eax+54h], ecx
mov     byte ptr [eax+3], 0
jmp     loc_44C6CF
sub_44CD6C endp




sub_44CECE proc near

var_22= word ptr -22h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
add     eax, 408h
mov     [esp+24h+var_1C], eax
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
cmp     byte ptr ds:dword_560BE0, 5
jnz     loc_44CFDA
test    byte ptr ds:dword_560BE8, 4
jz      short loc_44CF1D
mov     word ptr [ebp+15Eh], 4210h
jmp     short loc_44CF26

loc_44CF1D:
mov     word ptr [ebp+15Eh], 7FFFh

loc_44CF26:
mov     ax, [ebp+44h]
mov     dx, [ebp+14h]
add     edx, eax
mov     [ebp+14h], dx
cmp     word ptr [ebp+44h], 0
jge     short loc_44CF54
mov     eax, [ebp+12h]
sar     eax, 10h
cmp     eax, 0FFFFFD44h
jg      short loc_44CF5B

loc_44CF48:
mov     eax, ebp
call    sub_4DE2F6
jmp     loc_44C97C

loc_44CF54:
cmp     dx, 2BCh
jge     short loc_44CF48

loc_44CF5B:
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
lea     edi, [ebp+54h]
mov     esi, [esp+24h+var_1C]
movsd
movsd
mov     dh, [ebp+0Dh]
test    dh, dh
jz      short loc_44CFBD
mov     bl, dh
dec     bl
mov     [ebp+0Dh], bl
test    bl, 1
jz      short loc_44CFAD
mov     al, [ebp+3]
xor     al, 1
xor     ah, ah
imul    eax, 30h ; '0'
inc     ah
add     [ebp+56h], ax
jmp     short loc_44CFBD

loc_44CFAD:
mov     al, [ebp+3]
xor     al, 1
xor     ah, ah
imul    eax, 30h ; '0'
inc     ah
sub     [ebp+56h], ax

loc_44CFBD:
mov     eax, [esp+24h+var_1C]
test    byte ptr [eax+0Bh], 8
jz      short loc_44CFE7
mov     al, ds:byte_560BE7
add     al, 2
add     ds:byte_560BE6, al
mov     byte ptr [ebp+0Dh], 10h
jmp     short loc_44CFE7

loc_44CFDA:
mov     byte ptr [ebp+0Dh], 0
lea     edi, [ebp+54h]
mov     esi, [esp+24h+var_1C]
movsd
movsd

loc_44CFE7:
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    0
push    4800000h
sub     [esp+30h+var_22], 14h
jmp     loc_44C934
sub_44CECE endp




sub_44D005 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_44D00B[edx*4]
pop     edx
retn
sub_44D005 endp




sub_44D014 proc near
push    edx
cmp     byte ptr ds:dword_560BE0, 0Bh
jnz     short loc_44D025
call    sub_4DE2F6
pop     edx
retn

loc_44D025:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_44D02A[edx*4]
pop     edx
retn
sub_44D014 endp




sub_44D033 proc near

; FUNCTION CHUNK AT 0044D091 SIZE 00000001 BYTES

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
mov     dl, [eax+3]
call    ds:funcs_44D05A[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_44D07A
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44D07A:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_44D08A
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_44D091

loc_44D08A:
mov     dh, dl
inc     dh
mov     [ebp+9], dh
sub_44D033 endp

; START OF FUNCTION CHUNK FOR sub_44D221
;   ADDITIONAL PARENT FUNCTION sub_44D033

loc_44D091:
pop     ebp
; END OF FUNCTION CHUNK FOR sub_44D221
; START OF FUNCTION CHUNK FOR sub_44D0AF

loc_44D092:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_44D0AF
db 8Dh, 40h, 0
jpt_44D0C6 dd offset loc_44D0CD ; jump table for switch statement
dd offset loc_44D0DC
dd offset loc_44D0ED
dd offset loc_44D152
dd offset loc_44D165



sub_44D0AF proc near

; FUNCTION CHUNK AT 0044D092 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_44D0C6      ; jumptable 0044D0C6 default case
and     eax, 0FFh
jmp     jpt_44D0C6[eax*4] ; switch jump

loc_44D0CD:             ; jumptable 0044D0C6 case 0
mov     eax, esi
call    sub_44D198

loc_44D0D4:
inc     byte ptr [esi+8]
jmp     def_44D0C6      ; jumptable 0044D0C6 default case

loc_44D0DC:             ; jumptable 0044D0C6 case 1
mov     eax, esi
call    sub_44D221
test    eax, eax
jz      def_44D0C6      ; jumptable 0044D0C6 default case
jmp     short loc_44D0D4

loc_44D0ED:             ; jumptable 0044D0C6 case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     edi, [esi+14h]
mov     eax, edi
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short def_44D0C6 ; jumptable 0044D0C6 default case
call    sub_42ABA2
test    eax, eax
jnz     short def_44D0C6 ; jumptable 0044D0C6 default case
call    sub_44D32B
mov     ecx, eax
xor     ebx, ebx
mov     edx, 3
mov     eax, edi
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     short def_44D0C6 ; jumptable 0044D0C6 default case

loc_44D152:             ; jumptable 0044D0C6 case 3
cmp     byte ptr ds:dword_77E760, 0
jnz     short def_44D0C6 ; jumptable 0044D0C6 default case
call    sub_42A98E
jmp     loc_44D0D4

loc_44D165:             ; jumptable 0044D0C6 case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_44D0C6 ; jumptable 0044D0C6 default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1

def_44D0C6:             ; jumptable 0044D0C6 default case
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
jmp     loc_44D092
sub_44D0AF endp




sub_44D198 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 80h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_515B18
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_44D198 endp




sub_44D221 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 0044D091 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     edi, offset byte_5F8364
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     loc_44D306
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_44D27B
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_44D291

loc_44D27B:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_44D291:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 40h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_559E3C, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_559E40, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_559E44, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_559E3C
call    sub_42AAA8
mov     eax, 1
jmp     short loc_44D308

loc_44D306:
xor     eax, eax

loc_44D308:
add     esp, 4
jmp     loc_44D091
sub_44D221 endp ; sp-analysis failed

db 8Dh, 40h, 0
jpt_44D340 dd offset loc_44D347 ; jump table for switch statement
dd offset def_44D340
dd offset def_44D340
dd offset loc_44D37E
dd offset def_44D340
dd offset def_44D340



sub_44D32B proc near
push    edx
xor     edx, edx
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 5           ; switch 6 cases
ja      def_44D340      ; jumptable 0044D340 default case, cases 1,2,4,5
and     eax, 0FFh
jmp     jpt_44D340[eax*4] ; switch jump

loc_44D347:             ; jumptable 0044D340 case 0
mov     eax, 20h ; ' '
call    sub_47E888
test    eax, eax
jnz     short loc_44D375
mov     eax, 60Eh
call    sub_47E888
test    eax, eax
jz      short loc_44D36C
mov     edx, 3Fh ; '?'
mov     eax, edx
pop     edx
retn

loc_44D36C:
mov     edx, 3Eh ; '>'
mov     eax, edx
pop     edx
retn

loc_44D375:
mov     edx, 40h ; '@'
mov     eax, edx
pop     edx
retn

loc_44D37E:             ; jumptable 0044D340 case 3
mov     eax, 211h
call    sub_47E888
test    eax, eax
jnz     short def_44D340 ; jumptable 0044D340 default case, cases 1,2,4,5
mov     eax, 20Bh
call    sub_47E888
test    eax, eax
jz      short def_44D340 ; jumptable 0044D340 default case, cases 1,2,4,5
mov     edx, 20h ; ' '
mov     eax, 20Ch
call    sub_47E8B8

def_44D340:             ; jumptable 0044D340 default case, cases 1,2,4,5
mov     eax, edx
pop     edx
retn
sub_44D32B endp




sub_44D3AD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     byte ptr [ecx+3], 1
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+56h], 800h
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     word ptr [ecx+14h], 0F640h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 0AD89h
mov     edx, [ecx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+34h], edx
mov     [ecx+1Ch], edx
mov     edx, [ecx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+3Ch], edx
mov     [ecx+24h], edx
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+38h], edx
mov     [ecx+20h], edx
mov     word ptr [ecx+15Eh], 4210h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44D3AD endp




sub_44D47F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
cmp     eax, 0FFFFAEACh
jg      short loc_44D4A1
mov     eax, 1Fh
call    sub_47EB4B
inc     byte ptr [esi+8]

loc_44D4A1:
mov     eax, esi
call    sub_4DEADD
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B
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
sub_44D47F endp




sub_44D4D3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     word ptr [eax+44h], 0
jz      short loc_44D520
test    byte ptr ds:word_77EAB6, 7
jnz     short loc_44D4F6
lea     edx, [esi+14h]
mov     eax, 10Dh
call    sub_4D8BC3

loc_44D4F6:
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
jmp     short loc_44D531

loc_44D520:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
call    sub_432697

loc_44D531:
cmp     byte ptr [esi+0Dh], 0
jnz     short loc_44D540
mov     eax, esi
call    sub_4DEADD
jmp     short loc_44D553

loc_44D540:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0

loc_44D553:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44D4D3 endp




sub_44D56B proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_44D571[edx*4]
pop     edx
retn
sub_44D56B endp




sub_44D57A proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_44D580[edx*4]
pop     edx
retn
sub_44D57A endp




sub_44D589 proc near

var_28= byte ptr -28h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
lea     ecx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ebp+0], ah
cmp     byte ptr [ebp+3], 0
jz      short loc_44D5AD
lea     edx, [ebp+3]
jmp     short loc_44D5AF

loc_44D5AD:
xor     edx, edx

loc_44D5AF:
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     word ptr [ecx], 2
mov     dword ptr [ecx+4], 0
mov     dword ptr [ecx+8], 0
mov     edi, esp
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
lea     edx, [esp+30h+var_28]
call    sub_4DD4C5
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], 0
mov     dword ptr [ebp+10h], offset unk_515B58
mov     word ptr [ebp+44h], 0
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+48h], 0
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_44D672
add     esp, 10h
jmp     loc_44D816
sub_44D589 endp




sub_44D672 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+408h]
mov     al, [eax+0ACh]
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
mov     [edx+2], ax
test    byte ptr [edx], 2
jz      short loc_44D6C4
mov     eax, ebp
call    sub_44D969

loc_44D6C4:
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_44D6CB[ecx*4]
test    byte ptr [edx], 1
jz      short loc_44D6EF
mov     al, [ebp+9]
test    al, al
jbe     short loc_44D6E2
cmp     al, 1
jnz     short loc_44D6E6

loc_44D6E2:
mov     byte ptr [ebp+9], 0

loc_44D6E6:
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_44D6EF:
mov     al, [ebp+0ADh]
mov     cl, [ebp+0ACh]
cmp     al, cl
jz      short loc_44D70E
xor     edx, edx
mov     dl, cl
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_44D715

loc_44D70E:
mov     eax, ebp
call    sub_4DEADD

loc_44D715:
test    byte ptr [ebp+0], 2
jz      short loc_44D72E
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44D72E:
test    byte ptr [ebp+0], 1
jz      loc_44D816
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
jmp     loc_44D816
sub_44D672 endp



; Attributes: thunk

sub_44D750 proc near
jmp     sub_4DE2F6
sub_44D750 endp




sub_44D755 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_44D774
jbe     short loc_44D7E4
jmp     loc_44D813

loc_44D774:
test    al, al
jnz     loc_44D813
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [edi+0Ch]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [esi+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_44D7C2
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
neg     eax
jmp     short loc_44D7D7

loc_44D7C2:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552

loc_44D7D7:
sar     eax, 3
mov     [esi+64h], ax
mov     word ptr [edi+4], 1Eh

loc_44D7E4:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+0Ch]
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short loc_44D813
or      byte ptr [edi], 2
inc     byte ptr [esi+0Ah]

loc_44D813:
add     esp, 4

loc_44D816:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44D755 endp




sub_44D81D proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
lea     ebp, [esi+14h]
mov     ecx, offset byte_5F8364
add     ecx, 14h
mov     [esp+1Ch+var_1C], ecx
cmp     al, 1
jb      short loc_44D853
jbe     loc_44D8C7
cmp     al, 2
jz      loc_44D90F
jmp     short loc_44D813

loc_44D853:
test    al, al
jnz     short loc_44D813
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_44D895
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
neg     eax
jmp     short loc_44D8AA

loc_44D895:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552

loc_44D8AA:
sar     eax, 3
mov     [esi+64h], ax
mov     ax, [edi+2]
xor     ah, ah
and     al, 3Fh
add     eax, 8
mov     [edi+4], ax
jmp     loc_44D813

loc_44D8C7:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     short loc_44D900
mov     byte ptr [esi+0ACh], 8
inc     byte ptr [esi+0Ah]

loc_44D900:
cmp     byte ptr ds:dword_560BDC, 0
jnz     loc_44D813
jmp     short loc_44D961

loc_44D90F:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jge     short loc_44D954
mov     byte ptr [esi+0ACh], 0
dec     byte ptr [esi+0Ah]
mov     ax, [edi+2]
xor     ah, ah
and     al, 3Fh
add     eax, 8
mov     [edi+4], ax

loc_44D954:
cmp     byte ptr ds:dword_560BDC, 0
jnz     loc_44D813

loc_44D961:
or      byte ptr [edi], 1
jmp     loc_44D813
sub_44D81D endp




sub_44D969 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
mov     ecx, ds:dword_5F84E8
cmp     eax, ecx
jnz     short loc_44D9BF
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
and     byte ptr [edx], 0FDh
xor     ebx, ebx
mov     ds:dword_5F84E8, ebx
cmp     ds:byte_77E7D4, 4
jnz     short loc_44D9AD
mov     eax, 9
call    sub_47EB4B
mov     byte ptr ds:dword_560BE0, 1
jmp     short loc_44D9BF

loc_44D9AD:
mov     eax, 1Dh
call    sub_47EB4B
xor     dh, dh
mov     byte ptr ds:dword_560BE0, dh

loc_44D9BF:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn
sub_44D969 endp




sub_44D9C8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DA02
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]

loc_44DA02:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi], 2
jz      short loc_44DA2C
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_44DA2C:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44D9C8 endp




sub_44DA31 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DA6B
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]

loc_44DA6B:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi], 2
jz      short loc_44DA95
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_44DA95:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44DA31 endp




sub_44DA9A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DAD4
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]

loc_44DAD4:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi], 2
jz      short loc_44DAFE
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_44DAFE:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44DA9A endp




sub_44DB03 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DB3D
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]

loc_44DB3D:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi], 2
jz      short loc_44DB67
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_44DB67:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44DB03 endp




sub_44DB6C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DB98
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
inc     byte ptr [esi+8]

loc_44DB98:
cmp     byte ptr [esi+9], 0
jnz     short loc_44DBAB
mov     al, [esi+0Ah]
test    al, al
ja      short loc_44DBC3
xor     ebx, ebx
xor     edx, edx
jmp     short loc_44DBB9

loc_44DBAB:
mov     al, [esi+0Ah]
test    al, al
ja      short loc_44DBC3
xor     ebx, ebx
mov     edx, 1

loc_44DBB9:
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]

loc_44DBC3:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi], 2
jz      short loc_44DBED
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_44DBED:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44DB6C endp




sub_44DBF2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DC2C
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]

loc_44DC2C:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi], 2
jz      short loc_44DC56
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_44DC56:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44DBF2 endp




sub_44DC5B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DC95
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]

loc_44DC95:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi], 2
jz      short loc_44DCBF
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_44DCBF:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44DC5B endp




sub_44DCC4 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DCF0
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
inc     byte ptr [esi+8]

loc_44DCF0:
cmp     byte ptr [esi+9], 0
jnz     short loc_44DD03
mov     al, [esi+0Ah]
test    al, al
ja      short loc_44DD1B
xor     ebx, ebx
xor     edx, edx
jmp     short loc_44DD11

loc_44DD03:
mov     al, [esi+0Ah]
test    al, al
ja      short loc_44DD1B
xor     ebx, ebx
mov     edx, 1

loc_44DD11:
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]

loc_44DD1B:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi], 2
jz      short loc_44DD45
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_44DD45:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44DCC4 endp

push    esi
push    edi
mov     esi, eax
mov     edi, edx
call    sub_4DE043
mov     edx, eax
test    eax, eax
jz      short loc_44DD8D
or      byte ptr [eax], 1
mov     byte ptr [eax+2], 38h ; '8'
mov     [eax+3], cl
mov     ecx, [esi]
mov     [eax+0DCh], ecx
mov     ecx, [esi+4]
mov     [eax+0E4h], ecx
mov     word ptr [eax+0ECh], 0
mov     [eax+0EEh], di
mov     [eax+0F0h], bx

loc_44DD8D:
mov     eax, edx
pop     edi
pop     esi
retn



sub_44DD92 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
sub     esp, 10h
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DDBA
or      byte ptr [ecx], 6
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+0C4h], offset unk_808080
inc     byte ptr [ecx+9]

loc_44DDBA:
lea     edx, [ecx+0DCh]
mov     ax, [edx+14h]
add     [edx+10h], ax
mov     ebx, [edx+0Eh]
sar     ebx, 10h
mov     eax, [edx+10h]
sar     eax, 10h
call    sub_4EF008
imul    eax, ebx
shl     eax, 4
mov     ebx, [edx]
shl     ebx, 10h
add     ebx, eax
mov     [ecx+1Ch], ebx
mov     ebx, [edx+0Eh]
sar     ebx, 10h
mov     eax, [edx+10h]
sar     eax, 10h
call    sub_4EF003
imul    eax, ebx
shl     eax, 4
mov     ebx, [edx+8]
shl     ebx, 10h
add     ebx, eax
mov     [ecx+24h], ebx
mov     edx, [edx+4]
shl     edx, 10h
mov     [ecx+20h], edx
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+0BCh], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+0C0h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+0BEh], ax
add     ecx, 8Ch
mov     eax, ecx
call    sub_4EF184
mov     edx, 1000h
mov     [esp+1Ch+var_14], edx
mov     [esp+1Ch+var_18], edx
mov     [esp+1Ch+var_1C], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 10h
pop     edx
pop     ecx
pop     ebx
retn
sub_44DD92 endp




sub_44DE74 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+3D8h]
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
mov     [edx+6], ax
xor     ecx, ecx
mov     cl, [ebp+8]
mov     eax, ebp
call    ds:funcs_44DEAC[ecx*4]
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_44DED4
mov     ebx, [ebp+9]
sar     ebx, 18h
xor     edx, edx
mov     dl, al
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_44DEDB

loc_44DED4:
mov     eax, ebp
call    sub_4DEADD

loc_44DEDB:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44DE74 endp




sub_44DF01 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 42h
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
mov     word ptr [ebx+4], 1
xor     dl, dl

loc_44DF3B:
movsx   eax, dl
mov     si, [ecx+14h]
mov     [ebx+eax*8+0Ch], si
mov     si, [ecx+16h]
mov     [ebx+eax*8+0Eh], si
mov     word ptr [ebx+eax*8+10h], 200h
mov     word ptr [ebx+eax*8+24h], 0
mov     si, [ecx+16h]
sub     esi, 0C8h
mov     [ebx+eax*8+26h], si
movsx   si, dl
dec     esi
imul    esi, 190h
sub     esi, 0C8h
mov     [ebx+eax*8+28h], si
mov     dword ptr [ebx+eax*8+40h], 0
mov     esi, [ebx+eax*8+40h]
mov     [ebx+eax*8+3Ch], esi
inc     dl
cmp     dl, 3
jl      short loc_44DF3B
sub     word ptr [ebx+0Ch], 100h
inc     byte ptr [ebx+15h]
add     ebx, 0Ch
xor     edx, edx
mov     eax, ecx
call    sub_451925
inc     byte ptr [ecx+8]
pop     esi
pop     ecx
pop     ebx
retn
sub_44DF01 endp




sub_44DFB6 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
call    sub_44DFCD
mov     edx, ebx
mov     eax, ecx
call    sub_44E06C
pop     ecx
pop     ebx
retn
sub_44DFB6 endp




sub_44DFCD proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     esi, edx
xor     dl, dl
xor     edi, edi
jmp     short loc_44DFE3

loc_44DFDC:
inc     dl
cmp     dl, 3
jge     short loc_44E000

loc_44DFE3:
movsx   eax, dl
shl     eax, 3
add     eax, esi
test    dword ptr [eax+3Ch], 0FFFFFFh
jz      short loc_44DFDC
test    byte ptr [eax+3Fh], 1Ch
jz      short loc_44DFDC
mov     di, [eax+3Ch]
jmp     short loc_44DFDC

loc_44E000:
test    di, di
jz      short loc_44E066
lea     eax, [ebp+14h]
test    byte ptr [esi+4], 1
jz      short loc_44E05A
cmp     word ptr ds:dword_77E8F8, 0
jnz     short loc_44E066
mov     ecx, eax
mov     ebx, 2800h
mov     edx, 400h
mov     eax, 1Eh
call    sub_42A70B
mov     bx, word ptr ds:dword_77E7E0
sub     ebx, edi
mov     word ptr ds:dword_77E7E0, bx
test    bx, bx
jg      short loc_44E050
xor     edi, edi
mov     word ptr ds:dword_77E7E0, di
and     byte ptr [esi+4], 0FEh

loc_44E050:
lea     edx, [ebp+14h]
mov     eax, 0A0h
jmp     short loc_44E061

loc_44E05A:
mov     edx, eax
mov     eax, 0A3h

loc_44E061:
call    sub_4D8BC3

loc_44E066:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_44DFCD endp




sub_44E06C proc near

var_18= byte ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     edi, edx
xor     ah, ah
mov     [esp+18h+var_18], ah

loc_44E07D:
push    80h
push    0
push    2000000h
mov     esi, [esp+9]
sar     esi, 18h
shl     esi, 3
lea     eax, [edi+3Ch]
add     eax, esi
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [edi+24h]
add     eax, esi
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 140h
call    sub_4E01FC
mov     dword ptr [edi+esi+3Ch], 0
mov     dl, [esp+18h+var_18]
inc     dl
mov     [esp+18h+var_18], dl
cmp     dl, 3
jl      short loc_44E07D
add     esp, 4
jmp     short loc_44E066
sub_44E06C endp




sub_44E0CC proc near

; FUNCTION CHUNK AT 0044E2C4 SIZE 00000025 BYTES

cmp     byte ptr [eax+8], 0
jnz     loc_44E2C4
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     byte ptr [ecx+0ACh], 0
mov     word ptr [ecx+15Ch], 200h
mov     dx, [ecx+15Ch]
mov     [ecx+15Ah], dx
mov     [ecx+158h], dx
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+56h], 0C00h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
sub_44E0CC endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_50]



sub_44E12E proc near
mov     word ptr [eax+0Ch], 1F4h
inc     byte ptr [eax+0Ah]
retn
sub_44E12E endp




sub_44E138 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     dx, [eax+0Ch]
dec     dx
mov     [eax+0Ch], dx
jnz     short loc_44E18B
mov     word ptr [eax+0Ch], 80h
push    0
mov     ecx, 244h
mov     ebx, 0Ah
mov     edx, 14Ah
call    sub_43A45D
mov     ds:dword_559E4C, eax
push    0
mov     ecx, 244h
mov     ebx, 0Ah
mov     edx, 0FFFFFEB6h
mov     eax, esi
call    sub_43A45D
mov     ds:dword_559E50, eax
inc     byte ptr [esi+0Ah]

loc_44E18B:
sub     dword ptr [esi+20h], 30750h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44E138 endp




sub_44E197 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     dx, [eax+0Ch]
dec     edx
mov     [eax+0Ch], dx
cmp     dx, 1Ch
jnz     short loc_44E1F8
mov     eax, ds:dword_559E4C
mov     byte ptr [eax+8], 2
mov     eax, ds:dword_559E50
mov     byte ptr [eax+8], 2
push    1
mov     ecx, 244h
mov     ebx, 0Ah
mov     edx, 14Ah
mov     eax, esi
call    sub_43A45D
mov     ds:dword_559E4C, eax
push    1
mov     ecx, 244h
mov     ebx, 0Ah
mov     edx, 0FFFFFEB6h
mov     eax, esi
call    sub_43A45D
mov     ds:dword_559E50, eax

loc_44E1F8:
cmp     word ptr [esi+0Ch], 4
jnz     short loc_44E22F
push    2
mov     ecx, 208h
mov     ebx, 0Ah
mov     edx, 14Ah
mov     eax, esi
call    sub_43A45D
push    2
mov     ecx, 208h
mov     ebx, 0Ah
mov     edx, 0FFFFFEB6h
mov     eax, esi
call    sub_43A45D

loc_44E22F:
cmp     word ptr [esi+0Ch], 0
jnz     short loc_44E24B
mov     eax, ds:dword_559E4C
mov     byte ptr [eax+8], 2
mov     eax, ds:dword_559E50
mov     byte ptr [eax+8], 2
inc     byte ptr [esi+0Ah]

loc_44E24B:
sub     dword ptr [esi+20h], 10750h
add     word ptr [esi+56h], 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44E197 endp




sub_44E25C proc near
push    ebx
push    ecx
push    edx
add     word ptr [eax+56h], 0Ch
xor     ecx, ecx
mov     ebx, 0FFFFFF06h
mov     edx, 900h
call    sub_4DD43B
pop     edx
pop     ecx
pop     ebx
retn
sub_44E25C endp




sub_44E279 proc near
push    edx
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
pop     edx
retn
sub_44E279 endp




sub_44E287 proc near
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+1Ch]
mov     [edx+34h], eax
mov     eax, [edx+20h]
mov     [edx+38h], eax
mov     eax, [edx+24h]
mov     [edx+3Ch], eax
mov     eax, [edx+54h]
mov     [edx+5Ch], eax
mov     eax, [edx+58h]
mov     [edx+60h], eax
xor     ecx, ecx
mov     cl, [edx+0Ah]
mov     eax, edx
call    ds:funcs_44E2B0[ecx*4]
mov     eax, ds:dword_560C00
call    sub_43375C
pop     edx
pop     ecx
retn
sub_44E287 endp

; START OF FUNCTION CHUNK FOR sub_44E0CC

loc_44E2C4:
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_44E2CD[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
retn
; END OF FUNCTION CHUNK FOR sub_44E0CC
jpt_44E32F dd offset loc_44E336 ; jump table for switch statement
dd offset def_44E32F
dd offset loc_44E38E
dd offset def_44E32F
dd offset loc_44E3A1



sub_44E2FD proc near
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
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_44E32F      ; jumptable 0044E32F default case, cases 1,3
and     eax, 0FFh
jmp     jpt_44E32F[eax*4] ; switch jump

loc_44E336:             ; jumptable 0044E32F case 0
or      byte ptr [ebp+0], 2
xor     edx, edx
mov     eax, ebp
call    sub_4DD107
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     dword ptr [ebp+78h], 0
mov     byte ptr [ebp+0Ch], 0
mov     byte ptr [ebp+0Dh], 0
mov     word ptr [ebp+44h], 0FEF2h
mov     word ptr [ebp+48h], 0FEF2h
mov     byte ptr [ebp+0ACh], 1
mov     byte ptr [ebp+0ADh], 0FFh
inc     byte ptr [ebp+8]
jmp     short def_44E32F ; jumptable 0044E32F default case, cases 1,3

loc_44E38E:             ; jumptable 0044E32F case 2
add     word ptr [ebp+14h], 0Ch
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
jmp     short def_44E32F ; jumptable 0044E32F default case, cases 1,3

loc_44E3A1:             ; jumptable 0044E32F case 4
cmp     byte ptr [ebp+0Ch], 40h ; '@'
jge     short loc_44E3AF
sub     word ptr [ebp+58h], 3
inc     byte ptr [ebp+0Ch]

loc_44E3AF:
cmp     byte ptr [ebp+0Dh], 3Ch ; '<'
jge     short loc_44E3C2
sub     word ptr [ebp+44h], 9
sub     word ptr [ebp+48h], 9
inc     byte ptr [ebp+0Dh]

loc_44E3C2:
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B

def_44E32F:             ; jumptable 0044E32F default case, cases 1,3
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_44E404
mov     ebx, 2Eh ; '.'
mov     edx, 1
mov     eax, ebp
call    sub_4DE96B
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
jmp     short loc_44E421

loc_44E404:
cmp     byte ptr [ebp+8], 4
jnz     short loc_44E41A
mov     eax, ebp
call    sub_4DEB53
mov     eax, ebp
call    sub_4DF7CB
jmp     short loc_44E421

loc_44E41A:
mov     eax, ebp
call    sub_4DEADD

loc_44E421:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44E2FD endp




sub_44E43B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 21080200h
mov     dword ptr [ecx+78h], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_44E43B endp




sub_44E474 proc near
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx

loc_44E48C:
call    sub_4DF7CB
pop     edx
pop     ecx
retn
sub_44E474 endp




sub_44E494 proc near
mov     dword ptr [eax+44h], 0FF9C0000h
mov     dword ptr [eax+48h], 0F4000000h
mov     dword ptr [eax+4Ch], 1000000h
mov     byte ptr [eax+0Ch], 0B4h
sub_44E494 endp




sub_44E4AD proc near
inc     byte ptr [eax+0Ah]
retn
sub_44E4AD endp




sub_44E4B1 proc near
push    edx
fild    dword ptr [eax+1Ch]
fadd    ds:dbl_50A2B4
call    __CHP
fistp   dword ptr [eax+1Ch]
fild    dword ptr [eax+44h]
fadd    ds:dbl_50A2BC
call    __CHP
fistp   dword ptr [eax+44h]
fild    dword ptr [eax+48h]
fadd    ds:dbl_50A2C4
call    __CHP
fistp   dword ptr [eax+48h]
fild    dword ptr [eax+4Ch]
fadd    ds:dbl_50A2CC
call    __CHP
fistp   dword ptr [eax+4Ch]
mov     dl, [eax+0Ch]
dec     dl
mov     [eax+0Ch], dl
jnz     short loc_44E503
inc     byte ptr [eax+0Ah]

loc_44E503:
pop     edx
sub_44E4B1 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_51]



sub_44E505 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_44E50E[ecx*4]
mov     eax, [edx+44h]
sar     eax, 10h
mov     [edx+54h], ax
mov     eax, [edx+48h]
sar     eax, 10h
mov     [edx+56h], ax
mov     eax, [edx+4Ch]
sar     eax, 10h
mov     [edx+58h], ax

loc_44E533:
lea     ecx, [edx+14h]
lea     eax, [edx+1Ch]
mov     edx, ecx

loc_44E53B:
call    sub_4DD57B
pop     edx
pop     ecx
retn
sub_44E505 endp




sub_44E543 proc near
sub     dword ptr [eax+24h], 0C977Ah
sub_44E543 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_52]



sub_44E54B proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_44E554[ecx*4]
jmp     short loc_44E533
sub_44E54B endp




sub_44E55D proc near
push    edx
mov     byte ptr [eax+0Ch], 4Bh ; 'K'
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     [eax+56h], dx
inc     byte ptr [eax+0Ah]
pop     edx
retn
sub_44E55D endp




sub_44E579 proc near
push    edx
mov     dl, [eax+0Ch]
dec     dl
mov     [eax+0Ch], dl
jnz     short loc_44E587
inc     byte ptr [eax+0Ah]

loc_44E587:
add     word ptr [eax+56h], 5
pop     edx
sub_44E579 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_53]



sub_44E58E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_44E599[edx*4]
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44E58E endp




sub_44E5B5 proc near
mov     dword ptr [eax+44h], 0
mov     dword ptr [eax+48h], 4000000h
mov     dword ptr [eax+4Ch], 0FF000000h
mov     byte ptr [eax+0Ch], 1
inc     byte ptr [eax+0Ah]
retn
sub_44E5B5 endp




sub_44E5D2 proc near
push    edx
mov     dl, [eax+0Ch]
dec     dl
mov     [eax+0Ch], dl
jnz     short loc_44E5E4
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0Ch], 2Dh ; '-'

loc_44E5E4:
pop     edx
retn
sub_44E5D2 endp




sub_44E5E6 proc near
push    edx
mov     dl, [eax+0Ch]
dec     dl
mov     [eax+0Ch], dl
jnz     short loc_44E5F8
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0Ch], 2Dh ; '-'

loc_44E5F8:
sub     dword ptr [eax+48h], 17DDDDh
add     dword ptr [eax+4Ch], 111111h
pop     edx
sub_44E5E6 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_54]



sub_44E608 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_44E613[edx*4]
mov     eax, [esi+44h]
sar     eax, 10h
mov     [esi+54h], ax
mov     eax, [esi+48h]
sar     eax, 10h
mov     [esi+56h], ax
mov     eax, [esi+4Ch]
sar     eax, 10h
mov     [esi+58h], ax
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
cmp     ax, 3
jnz     short loc_44E680
push    1
xor     ecx, ecx
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
mov     eax, esi
call    sub_43A67E
push    1
mov     ecx, 0C8h
mov     ebx, 0FFFFFF9Ch
mov     edx, 0FFFFFE70h
mov     eax, esi
call    sub_43A67E

loc_44E680:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44E608 endp




sub_44E685 proc near
mov     dword ptr [eax+44h], 0
mov     dword ptr [eax+48h], 8000000h
mov     dword ptr [eax+4Ch], 0
mov     byte ptr [eax+0Ch], 0
inc     byte ptr [eax+0Ah]
retn
sub_44E685 endp




sub_44E6A2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ah, [eax+0Ch]
inc     ah
mov     [esi+0Ch], ah
cmp     ah, 46h ; 'F'
jl      short loc_44E6FF
test    ah, 1
jz      short loc_44E6FF
push    0
mov     ecx, 190h
mov     ebx, 1F4h
xor     edx, edx
mov     eax, esi
call    sub_43A67E
push    0
mov     ecx, 190h
mov     ebx, 1F4h
mov     edx, 0FFFFFF9Ch
mov     eax, esi
call    sub_43A67E
push    0
mov     ecx, 190h
mov     ebx, 1F4h
mov     edx, 64h ; 'd'
mov     eax, esi
call    sub_43A67E

loc_44E6FF:
cmp     byte ptr [esi+0Ch], 5Ah ; 'Z'
jnz     short loc_44E718
mov     ecx, 258h
mov     ebx, 1F4h
xor     edx, edx
mov     eax, esi
call    sub_4BF707

loc_44E718:
cmp     byte ptr [esi+0Ch], 64h ; 'd'
jnz     short loc_44E725
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Ch], 32h ; '2'

loc_44E725:
add     word ptr [esi+26h], 0A0h
add     word ptr [esi+22h], 0Ah
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44E6A2 endp




sub_44E735 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ah, [eax+0Ch]
dec     ah
mov     [esi+0Ch], ah
jnz     short loc_44E748
inc     byte ptr [esi+0Ah]

loc_44E748:
add     word ptr [esi+26h], 0A0h
test    byte ptr [esi+0Ch], 1
jz      short loc_44E799
push    0
mov     ecx, 12Ch
mov     ebx, 1F4h
xor     edx, edx
mov     eax, esi
call    sub_43A67E
push    0
mov     ecx, 12Ch
mov     ebx, 1F4h
mov     edx, 0FFFFFF9Ch
mov     eax, esi
call    sub_43A67E
push    0
mov     ecx, 12Ch
mov     ebx, 1F4h
mov     edx, 64h ; 'd'
mov     eax, esi
call    sub_43A67E

loc_44E799:
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_44E735 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_55]



sub_44E79E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_44E7A9[edx*4]
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
cmp     ax, 3
jnz     short loc_44E7ED
push    1
xor     ecx, ecx
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
mov     eax, esi
call    sub_43A67E
push    1
mov     ecx, 0C8h
mov     ebx, 0FFFFFF9Ch
mov     edx, 0FFFFFE70h
mov     eax, esi
call    sub_43A67E

loc_44E7ED:
mov     eax, [esi+44h]
sar     eax, 10h
mov     [esi+54h], ax
mov     eax, [esi+48h]
sar     eax, 10h
mov     [esi+56h], ax
mov     eax, [esi+4Ch]
sar     eax, 10h
mov     [esi+58h], ax
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44E79E endp




sub_44E81B proc near
push    ecx
push    edx
mov     edx, eax
mov     ah, [eax+0Ah]
test    ah, ah
jnz     short loc_44E82E
mov     [edx+0Ch], ah
inc     byte ptr [edx+0Ah]
jmp     short loc_44E853

loc_44E82E:
inc     byte ptr [edx+0Ch]
mov     eax, [edx+9]
sar     eax, 18h
shl     eax, 6
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
sub     eax, ecx
shl     eax, 3
add     eax, ecx
add     eax, eax
shl     eax, 4
mov     [edx+20h], eax

loc_44E853:
lea     eax, [edx+14h]
lea     ecx, [edx+1Ch]
mov     edx, eax
mov     eax, ecx
jmp     loc_44E53B
sub_44E81B endp




sub_44E862 proc near
cmp     byte ptr [eax+8], 0
jz      sub_44E43B
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_44E875[ecx*4]
mov     eax, edx
call    sub_4DEB53
mov     eax, edx
jmp     loc_44E48C
sub_44E862 endp

jpt_44E8DE dd offset loc_44E8E5 ; jump table for switch statement
dd offset loc_44E94A
dd offset loc_44E935
dd offset loc_44E951
dd offset loc_44E989



sub_44E89E proc near
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
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
mov     dl, [eax+8]
cmp     dl, 4           ; switch 5 cases
ja      def_44E8DE      ; jumptable 0044E8DE default case
and     edx, 0FFh
jmp     jpt_44E8DE[edx*4] ; switch jump

loc_44E8E5:             ; jumptable 0044E8DE case 0
or      byte ptr [eax], 2
xor     edx, edx
call    sub_4DD107
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     dword ptr [ebp+78h], 0
mov     word ptr [ebp+44h], 0
mov     word ptr [ebp+48h], 0C0h
mov     ebx, 2Eh ; '.'
mov     edx, 1
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+8]
jmp     short def_44E8DE ; jumptable 0044E8DE default case

loc_44E935:             ; jumptable 0044E8DE case 2
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
xor     ebx, ebx
call    sub_4DD43B
mov     eax, ebp

loc_44E94A:             ; jumptable 0044E8DE case 1
call    sub_4DEADD
jmp     short def_44E8DE ; jumptable 0044E8DE default case

loc_44E951:             ; jumptable 0044E8DE case 3
cmp     byte ptr [eax+0Ch], 40h ; '@'
jge     short loc_44E95F
add     word ptr [ebp+58h], 3
inc     byte ptr [ebp+0Ch]

loc_44E95F:
cmp     byte ptr [ebp+0Dh], 3Ch ; '<'
jge     short loc_44E972
sub     word ptr [ebp+44h], 8
add     word ptr [ebp+48h], 10h
inc     byte ptr [ebp+0Dh]

loc_44E972:
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp

loc_44E989:             ; jumptable 0044E8DE case 4
call    sub_4DEB53
mov     eax, ebp
call    sub_4DF7CB

def_44E8DE:             ; jumptable 0044E8DE default case
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44E89E endp




sub_44E9AF proc near
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
mov     al, [eax+8]
cmp     al, 1
jb      short loc_44E9E6
jbe     short loc_44EA48
cmp     al, 2
jz      loc_44EA7D
jmp     loc_44EA84

loc_44E9E6:
test    al, al
jnz     loc_44EA84
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
jmp     short loc_44EA84

loc_44EA48:
sub     word ptr [ecx+14h], 5
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
mov     eax, ds:dword_560C08
mov     edx, ecx
call    sub_43375C

loc_44EA7D:
mov     eax, ecx
call    sub_4DEADD

loc_44EA84:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44E9AF endp




sub_44EA8A proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_44EA95[ecx*4]
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
mov     eax, edx
call    sub_4DEB53
mov     eax, edx
call    sub_4DF7CB
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_44EA8A endp




sub_44EAC9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     al, ds:byte_560BE4
cmp     al, 5
jb      short loc_44EAEE
jbe     short loc_44EAFA
cmp     al, 7
jb      short loc_44EB1A
jbe     short loc_44EB08
cmp     al, 0Ah
jz      short loc_44EB0F
jmp     short loc_44EB1A

loc_44EAEE:
test    al, al
jnz     short loc_44EB1A
mov     word ptr [ecx+58h], 20h ; ' '
jmp     short loc_44EB1A

loc_44EAFA:
mov     edx, 1

loc_44EAFF:
mov     eax, ecx
call    sub_44ED58
jmp     short loc_44EB1A

loc_44EB08:
mov     edx, 2
jmp     short loc_44EAFF

loc_44EB0F:
mov     edx, 3
mov     word ptr [ecx+58h], 40h ; '@'

loc_44EB1A:
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+16h], 0E0C0h
mov     word ptr [ecx+18h], 0
inc     dl
mov     [ecx+9], dl
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD107
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B

loc_44EB63:
pop     edx
pop     ecx
pop     ebx
retn
sub_44EAC9 endp




sub_44EB67 proc near
push    ecx
push    edx
mov     dx, ds:word_77EAB6
xor     dh, dh
and     dl, 3Fh
mov     ecx, edx
and     ecx, 0FFFFh
mov     ecx, dword ptr ds:unk_564C32[ecx*2]
sar     ecx, 10h
sar     ecx, 0Ah
mov     edx, [eax+14h]
sar     edx, 10h
add     edx, ecx
mov     [eax+16h], dx
cmp     byte ptr [eax+0Ch], 0
jz      short loc_44EBBE
mov     ecx, ds:dword_560BEC
and     ecx, 3Fh
mov     ecx, dword ptr ds:unk_564C32[ecx*2]
sar     ecx, 10h
sar     ecx, 0Ah
mov     edx, [eax+56h]
sar     edx, 10h
sub     edx, ecx
mov     [eax+58h], dx

loc_44EBBE:
pop     edx
pop     ecx
retn
sub_44EB67 endp




sub_44EBC1 proc near
push    ecx
push    edx
mov     edx, ds:dword_560BEC
cmp     edx, 28h ; '('
jb      short loc_44EBE3
jbe     short loc_44EBEF
cmp     edx, 46h ; 'F'
jb      short loc_44EBDE
jbe     short loc_44EBEF
cmp     edx, 5Ah ; 'Z'

loc_44EBDA:
jz      short loc_44EBF4
jmp     short loc_44EBF8

loc_44EBDE:
cmp     edx, 3Ch ; '<'
jmp     short loc_44EBDA

loc_44EBE3:
cmp     edx, 0Ah
jb      short loc_44EBF8
jbe     short loc_44EBEF
cmp     edx, 19h
jmp     short loc_44EBDA

loc_44EBEF:
inc     byte ptr [eax+0Ch]
jmp     short loc_44EBF8

loc_44EBF4:
mov     byte ptr [eax+0Ch], 0

loc_44EBF8:
mov     dx, ds:word_77EAB6
xor     dh, dh
and     dl, 3Fh
mov     ecx, edx
and     ecx, 0FFFFh
mov     ecx, dword ptr ds:unk_564C32[ecx*2]
sar     ecx, 10h
sar     ecx, 0Ah
mov     edx, [eax+14h]
sar     edx, 10h
add     edx, ecx
mov     [eax+16h], dx
cmp     byte ptr [eax+0Ch], 0
jz      short loc_44EC49
mov     dx, ds:word_77EAB6
xor     dh, dh
and     dl, 3
and     edx, 0FFFFh
mov     dx, ds:word_515C04[edx*2]
add     [eax+58h], dx

loc_44EC49:
pop     edx
pop     ecx
retn
sub_44EBC1 endp




sub_44EC4C proc near
push    edx
mov     edx, ds:dword_560BEC
cmp     edx, 18h
jge     short loc_44EC5F
sub     word ptr [eax+58h], 4
pop     edx
retn

loc_44EC5F:
cmp     edx, 38h ; '8'
jge     short loc_44EC70
add     word ptr [eax+58h], 6
add     word ptr [eax+14h], 0Ah
pop     edx
retn

loc_44EC70:
add     word ptr [eax+14h], 14h
pop     edx
retn
sub_44EC4C endp




sub_44EC77 proc near
push    edx
mov     edx, ds:dword_560BEC
cmp     edx, 64h ; 'd'
jge     short loc_44EC8A
add     word ptr [eax+14h], 10h
pop     edx
retn

loc_44EC8A:
cmp     edx, 7Ch ; '|'
jge     short loc_44EC9B
sub     word ptr [eax+58h], 4
add     word ptr [eax+14h], 8
pop     edx
retn

loc_44EC9B:
sub     word ptr [eax+18h], 30h ; '0'
pop     edx
retn
sub_44EC77 endp




sub_44ECA2 proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_44ECCF
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0F830h
mov     word ptr [eax+18h], 0FB50h
mov     word ptr [eax+54h], 0
mov     word ptr [eax+56h], 0
mov     word ptr [eax+58h], 0
inc     byte ptr [eax+0Ah]

loc_44ECCF:
sub     word ptr [eax+18h], 20h ; ' '
retn
sub_44ECA2 endp




sub_44ECD5 proc near
push    ecx
push    edx
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_44ECF2
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0E0C0h
mov     word ptr [eax+18h], 0E4A8h
inc     byte ptr [eax+0Ah]

loc_44ECF2:
mov     edx, ds:dword_560BEC
cmp     edx, 6Eh ; 'n'
jge     short loc_44ED2B
mov     dx, ds:word_77EAB6
xor     dh, dh
and     dl, 3Fh
and     edx, 0FFFFh
mov     ecx, dword ptr ds:unk_564C32[edx*2]
sar     ecx, 10h
sar     ecx, 0Ah
mov     edx, [eax+14h]
sar     edx, 10h
add     edx, ecx
mov     [eax+16h], dx
pop     edx
pop     ecx
retn

loc_44ED2B:
cmp     edx, 86h
jge     short loc_44ED3B
add     word ptr [eax+58h], 3
pop     edx
pop     ecx
retn

loc_44ED3B:
cmp     edx, 0A6h
jge     short loc_44ED50
sub     word ptr [eax+58h], 6
sub     word ptr [eax+14h], 0Ah
pop     edx
pop     ecx
retn

loc_44ED50:
sub     word ptr [eax+14h], 19h
pop     edx
pop     ecx
retn
sub_44ECD5 endp




sub_44ED58 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
jmp     short loc_44ED6B

loc_44ED61:
inc     edx
cmp     edx, 18h
jnb     loc_44EB63

loc_44ED6B:
call    sub_4DE13B
test    eax, eax
jz      short loc_44ED61
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ah
mov     byte ptr [eax+3], 1
mov     bl, [ecx+1]
mov     [eax+0Ch], bl
mov     [eax+0Dh], dl
jmp     short loc_44ED61
sub_44ED58 endp




sub_44ED8A proc near
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
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
xor     ecx, ecx
mov     cl, [eax+8]
lea     edx, [eax+3D8h]
call    ds:funcs_44EDC3[ecx*4]
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+0ADh]
jz      short loc_44EDEB
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_44EDF2

loc_44EDEB:
mov     eax, ebp
call    sub_4DEADD

loc_44EDF2:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44ED8A endp




sub_44EE0C proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 42h
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     byte ptr [ecx+0Ch], 0
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     ax, [ecx+16h]
mov     [ebx], ax
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     ecx
pop     ebx
retn
sub_44EE0C endp




sub_44EE72 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ah, [eax+0Ch]
inc     ah
mov     [ecx+0Ch], ah
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 6
call    sub_4EF008
mov     ebx, eax
shl     eax, 2
add     eax, ebx
shl     eax, 2
shl     eax, 4
movsx   edx, word ptr [edx]
shl     edx, 10h
add     eax, edx
mov     [ecx+20h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
pop     ecx
pop     ebx
retn
sub_44EE72 endp



; Attributes: thunk

sub_44EEB2 proc near
jmp     sub_4DE2F6
sub_44EEB2 endp




sub_44EEB7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+20h], 0FE700000h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
sub_44EEB7 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_56]



sub_44EEF0 proc near

var_10= word ptr -10h
var_E= word ptr -0Eh
var_C= word ptr -0Ch

push    ebx
push    edx
sub     esp, 8
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_44EF06
jbe     short loc_44EF3B
cmp     dl, 2
jz      short loc_44EF44
jmp     short loc_44EF4B

loc_44EF06:
test    dl, dl
jnz     short loc_44EF4B
inc     dl
mov     [eax+0Ah], dl
mov     edx, [eax+1Ch]
sar     edx, 10h
mov     [esp+10h+var_10], dx
xor     edx, edx
mov     [esp+10h+var_E], dx
mov     eax, [eax+24h]
sar     eax, 10h
mov     [esp+10h+var_C], ax
xor     ebx, ebx
mov     edx, 1F4h
mov     eax, esp
call    sub_43BA24
jmp     short loc_44EF4B

loc_44EF3B:
sub     dword ptr [eax+20h], 10000h
jmp     short loc_44EF4B

loc_44EF44:
sub     dword ptr [eax+20h], 20000h

loc_44EF4B:
add     esp, 8
pop     edx
pop     ebx
retn
sub_44EEF0 endp




sub_44EF51 proc near
push    ecx
push    edx
mov     edx, eax
mov     ah, [eax+0Ah]
test    ah, ah
jnz     short loc_44EF65
mov     [edx+0Ch], ah
inc     byte ptr [edx+0Ah]
pop     edx
pop     ecx
retn

loc_44EF65:
inc     byte ptr [edx+0Ch]
mov     eax, [edx+9]
sar     eax, 18h
shl     eax, 6
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
add     eax, ecx
shl     eax, 2
shl     eax, 4
sub     eax, 3E80000h
mov     [edx+20h], eax
pop     edx
pop     ecx
retn
sub_44EF51 endp




sub_44EF8E proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_44EF97[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
retn
sub_44EF8E endp




sub_44EFBA proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44EFCA
mov     eax, edx
call    sub_44EEB7

loc_44EFCA:
mov     eax, edx
call    sub_44EF8E
pop     edx
retn
sub_44EFBA endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_57]
db 8Dh, 40h, 0
jpt_44F00A dd offset loc_44F011 ; jump table for switch statement
dd offset loc_44F02B
dd offset loc_44F041
dd offset loc_44F049
dd offset loc_44F067
dd offset loc_44F07F
dd offset loc_44F093
dd offset def_44F00A



sub_44EFF7 proc near

; FUNCTION CHUNK AT 0044F02B SIZE 0000007D BYTES

push    edx
mov     edx, eax
mov     al, [eax+0Ah]
cmp     al, 7           ; switch 8 cases
ja      def_44F00A      ; jumptable 0044F00A default case, case 7
and     eax, 0FFh
jmp     jpt_44F00A[eax*4] ; switch jump

loc_44F011:             ; jumptable 0044F00A case 0
dec     word ptr [edx+0Eh]
mov     eax, [edx+0Ch]
sar     eax, 10h
cmp     eax, 0FFFFFCE0h

loc_44F020:             ; jumptable 0044F00A default case, case 7
jg      def_44F00A

loc_44F026:
inc     byte ptr [edx+0Ah]

def_44F00A:             ; jumptable 0044F00A default case, case 7
pop     edx
sub_44EFF7 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_58]
; START OF FUNCTION CHUNK FOR sub_44EFF7

loc_44F02B:             ; jumptable 0044F00A case 1
inc     word ptr [edx+0Eh]
mov     eax, [edx+0Ch]
sar     eax, 10h
cmp     eax, 0FFFFFCF4h
jl      short def_44F00A ; jumptable 0044F00A default case, case 7
dec     byte ptr [edx+0Ah]
pop     edx
retn

loc_44F041:             ; jumptable 0044F00A case 2
mov     word ptr [edx+0Eh], 0FBB4h
jmp     short loc_44F026

loc_44F049:             ; jumptable 0044F00A case 3
sub     word ptr [edx+0Eh], 6
mov     eax, [edx+0Ch]
sar     eax, 10h
cmp     eax, 0FFFFED40h
jg      short def_44F00A ; jumptable 0044F00A default case, case 7
mov     eax, 0Bh
call    sub_49E0D7
jmp     short loc_44F026

loc_44F067:             ; jumptable 0044F00A case 4
sub     word ptr [edx+0Eh], 6
mov     eax, [edx+0Ch]
sar     eax, 10h
cmp     eax, 0FFFFE890h
jg      short def_44F00A ; jumptable 0044F00A default case, case 7
mov     byte ptr [edx+0Ah], 7
pop     edx
retn

loc_44F07F:             ; jumptable 0044F00A case 5
mov     word ptr [edx+0Eh], 0FB1Eh
mov     word ptr [edx+14h], 3E8h
mov     word ptr [edx+18h], 0AF0h
jmp     short loc_44F026

loc_44F093:             ; jumptable 0044F00A case 6
sub     word ptr [edx+18h], 8
mov     eax, [edx+16h]
sar     eax, 10h
cmp     eax, 0FFFFFED4h
jmp     loc_44F020
; END OF FUNCTION CHUNK FOR sub_44EFF7



sub_44F0A8 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+8]
cmp     al, 1
jb      short loc_44F0BC
jbe     short loc_44F112
cmp     al, 2
jz      short loc_44F0FC
jmp     short loc_44F112

loc_44F0BC:
test    al, al
jnz     short loc_44F112
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], 0
mov     word ptr [ecx+15Eh], 4210h
inc     byte ptr [ecx+8]
jmp     short loc_44F112

loc_44F0FC:
mov     dx, [ecx+0Eh]
mov     [ecx+16h], dx
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_44F10B[edx*4]

loc_44F112:
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
pop     edx
pop     ecx
pop     ebx
retn
sub_44F0A8 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_59]
db 8Dh, 40h, 0
jpt_44F15C dd offset loc_44F163 ; jump table for switch statement
dd offset loc_44F181
dd offset loc_44F19B
dd offset loc_44F1A3
dd offset loc_44F1F5
dd offset loc_44F25C
dd offset loc_44F2E4
dd offset def_44F15C



sub_44F145 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 7           ; switch 8 cases
ja      def_44F15C      ; jumptable 0044F15C default case, case 7
and     eax, 0FFh
jmp     jpt_44F15C[eax*4] ; switch jump

loc_44F163:             ; jumptable 0044F15C case 0
mov     di, [esi+56h]
add     edi, 4
mov     [esi+56h], di
cmp     di, 0C42h
jl      def_44F15C      ; jumptable 0044F15C default case, case 7

loc_44F179:
inc     byte ptr [esi+0Ah]
jmp     def_44F15C      ; jumptable 0044F15C default case, case 7

loc_44F181:             ; jumptable 0044F15C case 1
dec     word ptr [esi+54h]
add     word ptr [esi+56h], 4
mov     eax, [esi+52h]
sar     eax, 10h
cmp     eax, 0FFFFFFE2h
jg      def_44F15C      ; jumptable 0044F15C default case, case 7
jmp     short loc_44F179

loc_44F19B:             ; jumptable 0044F15C case 2
mov     word ptr [esi+0Ch], 46h ; 'F'
jmp     short loc_44F179

loc_44F1A3:             ; jumptable 0044F15C case 3
mov     ax, [esi+0Ch]
dec     ax
mov     [esi+0Ch], ax
jnz     def_44F15C      ; jumptable 0044F15C default case, case 7
mov     word ptr [esi+0Ch], 40h ; '@'
push    0
mov     ecx, 244h
mov     ebx, 0Ah
mov     edx, 14Ah
mov     eax, esi
call    sub_43A45D
mov     ds:dword_559E54, eax
push    0
mov     ecx, 244h
mov     ebx, 0Ah
mov     edx, 0FFFFFEB6h
mov     eax, esi
call    sub_43A45D
mov     ds:dword_559E58, eax
jmp     short loc_44F179

loc_44F1F5:             ; jumptable 0044F15C case 4
mov     cx, [esi+0Ch]
dec     cx
mov     [esi+0Ch], cx
jnz     def_44F15C      ; jumptable 0044F15C default case, case 7
mov     eax, ds:dword_559E54
mov     byte ptr [eax+8], 2
mov     eax, ds:dword_559E58
mov     byte ptr [eax+8], 2
push    1
mov     ecx, 244h
mov     ebx, 0Ah
mov     edx, 14Ah
mov     eax, esi
call    sub_43A45D
mov     ds:dword_559E54, eax
push    1
mov     ecx, 244h
mov     ebx, 0Ah
mov     edx, 0FFFFFEB6h
mov     eax, esi
call    sub_43A45D
mov     ds:dword_559E58, eax
mov     word ptr [esi+0Ch], 20h ; ' '
jmp     loc_44F179

loc_44F25C:             ; jumptable 0044F15C case 5
mov     dx, [esi+0Ch]
dec     dx
mov     [esi+0Ch], dx
jnz     def_44F15C      ; jumptable 0044F15C default case, case 7
mov     word ptr [esi+0Ch], 28h ; '('
mov     eax, ds:dword_559E54
mov     byte ptr [eax+8], 2
mov     eax, ds:dword_559E58
mov     byte ptr [eax+8], 2
push    2
mov     ecx, 244h
mov     ebx, 0Ah
mov     edx, 14Ah
mov     eax, esi
call    sub_43A45D
mov     ds:dword_559E54, eax
push    2
mov     ecx, 244h
mov     ebx, 0Ah
mov     edx, 0FFFFFEB6h
mov     eax, esi
call    sub_43A45D
mov     ds:dword_559E58, eax
inc     byte ptr [esi+0Ah]
cmp     byte ptr ds:dword_77E7D5+1, 7
jnz     short loc_44F2D8
mov     eax, 21h ; '!'
call    sub_47E888
test    eax, eax
jnz     short def_44F15C ; jumptable 0044F15C default case, case 7

loc_44F2D8:
mov     eax, 0Bh
call    sub_49E0D7
jmp     short def_44F15C ; jumptable 0044F15C default case, case 7

loc_44F2E4:             ; jumptable 0044F15C case 6
sub     word ptr [esi+16h], 2
add     word ptr [esi+14h], 18h
sub     word ptr [esi+58h], 10h
xor     ecx, ecx
mov     ebx, 0FFFFFF06h
mov     edx, 900h
mov     eax, esi
call    sub_4DD43B
mov     di, [esi+0Ch]
dec     di
mov     [esi+0Ch], di
jnz     short def_44F15C ; jumptable 0044F15C default case, case 7
mov     eax, ds:dword_559E54
mov     byte ptr [eax+8], 2
mov     eax, ds:dword_559E58
mov     byte ptr [eax+8], 2
inc     byte ptr [esi+0Ah]
mov     word ptr [esi+14h], 0ED54h
mov     word ptr [esi+16h], 0F894h
mov     word ptr [esi+18h], 118h

def_44F15C:             ; jumptable 0044F15C default case, case 7
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44F145 endp




sub_44F33F proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
jbe     short loc_44F34E
cmp     dl, 1
jz      short loc_44F371
pop     edx
retn

loc_44F34E:
mov     word ptr [eax+54h], 0
mov     word ptr [eax+56h], 0
mov     word ptr [eax+14h], 0ED54h
mov     word ptr [eax+16h], 0F894h
mov     word ptr [eax+18h], 118h
inc     byte ptr [eax+0Ah]
pop     edx
retn

loc_44F371:
add     word ptr [eax+16h], 3
pop     edx
retn
sub_44F33F endp




sub_44F378 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+8]
test    al, al
ja      short loc_44F3E1
or      byte ptr [ecx], 2
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+58h]
mov     [ecx+54h], dx
mov     [ecx+56h], dx
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], 0
mov     word ptr [ecx+15Eh], 4210h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
mov     word ptr [ecx+56h], 800h

loc_44F3E1:
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_44F3E8[edx*4]
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_44F378 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_60]
db 8Dh, 40h, 0
jpt_44F423 dd offset loc_44F42A ; jump table for switch statement
dd offset loc_44F439
dd offset loc_44F46B
dd offset loc_44F493



sub_44F40E proc near
push    ebx
push    ecx
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 3           ; switch 4 cases
ja      def_44F423      ; jumptable 0044F423 default case
and     edx, 0FFh
jmp     jpt_44F423[edx*4] ; switch jump

loc_44F42A:             ; jumptable 0044F423 case 0
mov     byte ptr [eax+0Ch], 4
mov     byte ptr [eax+0Dh], 5

loc_44F432:
inc     byte ptr [eax+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_44F439:             ; jumptable 0044F423 case 1
mov     ch, [eax+0Ch]
dec     ch
mov     [eax+0Ch], ch
test    ch, ch
jg      short loc_44F44D
dec     word ptr [eax+14h]
mov     byte ptr [eax+0Ch], 4

loc_44F44D:
mov     dh, [eax+0Dh]
dec     dh
mov     [eax+0Dh], dh
test    dh, dh
jg      short def_44F423 ; jumptable 0044F423 default case
inc     word ptr [eax+16h]
mov     byte ptr [eax+0Dh], 5
cmp     word ptr [eax+16h], 0DCh
jl      short def_44F423 ; jumptable 0044F423 default case
jmp     short loc_44F432

loc_44F46B:             ; jumptable 0044F423 case 2
mov     bl, [eax+0Ch]
dec     bl
mov     [eax+0Ch], bl
test    bl, bl
jg      short def_44F423 ; jumptable 0044F423 default case
dec     word ptr [eax+14h]
mov     byte ptr [eax+0Ch], 4
mov     edx, [eax+12h]
sar     edx, 10h
cmp     edx, 0FFFFFEDEh
jg      short def_44F423 ; jumptable 0044F423 default case
mov     byte ptr [eax+0Ch], 1Eh
jmp     short loc_44F432

loc_44F493:             ; jumptable 0044F423 case 3
mov     dl, [eax+0Ch]
dec     dl
mov     [eax+0Ch], dl
test    dl, dl
jg      short def_44F423 ; jumptable 0044F423 default case
call    sub_4DE2F6

def_44F423:             ; jumptable 0044F423 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_44F40E endp




sub_44F4A8 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     dl, [eax+8]
test    dl, dl
ja      short loc_44F4F2
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 200020h
mov     dword ptr [ecx+15Ch], 20h ; ' '
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], 0
mov     word ptr [ecx+15Eh], 4210h
or      byte ptr [ecx], 2
mov     word ptr [ecx+56h], 400h
inc     byte ptr [ecx+8]

loc_44F4F2:
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_44F4F9[edx*4]
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
pop     edx
pop     ecx
pop     ebx
retn
sub_44F4A8 endp




sub_44F50F proc near
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
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_44F50F endp




sub_44F54A proc near
push    ecx
push    edx
mov     edx, eax
mov     ah, [eax+0Ah]
test    ah, ah
jnz     short loc_44F55E
mov     [edx+0Ch], ah
inc     byte ptr [edx+0Ah]
pop     edx
pop     ecx
retn

loc_44F55E:
inc     byte ptr [edx+0Ch]
mov     eax, [edx+9]
sar     eax, 18h
shl     eax, 6
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
add     eax, ecx
shl     eax, 2
shl     eax, 4
sub     eax, 3E80000h
mov     [edx+20h], eax
pop     edx
pop     ecx
retn
sub_44F54A endp

jpt_44F5A6 dd offset loc_44F5AD ; jump table for switch statement
dd offset loc_44F5B6
dd offset loc_44F5BF
dd offset loc_44F5C8



sub_44F597 proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 3           ; switch 4 cases
ja      short def_44F5A6 ; jumptable 0044F5A6 default case
and     edx, 0FFh
jmp     jpt_44F5A6[edx*4] ; switch jump

loc_44F5AD:             ; jumptable 0044F5A6 case 0
mov     dword ptr [eax+20h], 0FC180000h
pop     edx
retn

loc_44F5B6:             ; jumptable 0044F5A6 case 1
sub     dword ptr [eax+20h], 10000h
pop     edx
retn

loc_44F5BF:             ; jumptable 0044F5A6 case 2
mov     word ptr [eax+46h], 0E000h
inc     byte ptr [eax+0Ah]

loc_44F5C8:             ; jumptable 0044F5A6 case 3
sub     word ptr [eax+46h], 88h
mov     edx, [eax+44h]
sar     edx, 10h
shl     edx, 4
add     [eax+20h], edx

def_44F5A6:             ; jumptable 0044F5A6 default case
pop     edx
retn
sub_44F597 endp




sub_44F5DC proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_44F5E5[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_44F604
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_44F604:
pop     edx
pop     ecx
retn
sub_44F5DC endp




sub_44F607 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44F617
mov     eax, edx
call    sub_44F50F

loc_44F617:
mov     eax, edx
call    sub_44F5DC
pop     edx
retn
sub_44F607 endp




sub_44F620 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
sub_44F620 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_61]



sub_44F652 proc near
push    ebx
push    ecx
push    edx

loc_44F655:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h

loc_44F65E:
call    sub_4DD43B
pop     edx
pop     ecx
pop     ebx
retn
sub_44F652 endp




sub_44F667 proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
jmp     short loc_44F65E
sub_44F667 endp




sub_44F675 proc near
push    ebx
push    ecx
push    edx
sub     dword ptr [eax+20h], 2C71Ch
add     word ptr [eax+56h], 0Ah
jmp     short loc_44F655
sub_44F675 endp




sub_44F686 proc near
sub     dword ptr [eax+24h], 0C977Ah
retn
sub_44F686 endp




sub_44F68E proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_44F697[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_44F6B6
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_44F6B6:
pop     edx
pop     ecx
retn
sub_44F68E endp




sub_44F6B9 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44F6C9
mov     eax, edx
call    sub_44F620

loc_44F6C9:
mov     eax, edx
call    sub_44F68E
pop     edx
retn
sub_44F6B9 endp




sub_44F6D2 proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
call    sub_4DD43B
pop     edx
pop     ecx
pop     ebx
sub_44F6D2 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_62]



sub_44F6E7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44F71D
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 0C800C8h
mov     dword ptr [ecx+15Ch], 421000C8h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]

loc_44F71D:
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_44F724[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_44F6E7 endp

jpt_44F78E dd offset loc_44F795 ; jump table for switch statement
dd offset loc_44F7DE
dd offset loc_44F7F5
dd offset loc_44F808



sub_44F751 proc near
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
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
mov     al, [ebp+8]
cmp     al, 3           ; switch 4 cases
ja      def_44F78E      ; jumptable 0044F78E default case
xor     edx, edx
mov     dl, al
jmp     jpt_44F78E[edx*4] ; switch jump

loc_44F795:             ; jumptable 0044F78E case 0
or      byte ptr [ebp+0], 2
xor     edx, edx
mov     eax, ebp
call    sub_4DD107
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     byte ptr [ebp+0ACh], 0
mov     byte ptr [ebp+0ADh], 0FFh
mov     word ptr [ebp+44h], 0
mov     word ptr [ebp+46h], 0

loc_44F7D9:
inc     byte ptr [ebp+8]
jmp     short def_44F78E ; jumptable 0044F78E default case

loc_44F7DE:             ; jumptable 0044F78E case 1
cmp     ds:byte_560BE5, 4
jnz     short def_44F78E ; jumptable 0044F78E default case
mov     word ptr [ebp+44h], 6
mov     word ptr [ebp+46h], 0Ch
jmp     short loc_44F7D9

loc_44F7F5:             ; jumptable 0044F78E case 2
cmp     ds:dword_560BEC, 96h
jnz     short def_44F78E ; jumptable 0044F78E default case
inc     al
mov     [ebp+8], al
jmp     short def_44F78E ; jumptable 0044F78E default case

loc_44F808:             ; jumptable 0044F78E case 3
mov     dx, [ebp+44h]
cmp     dx, 0Ch
jge     short loc_44F81B
mov     ebx, edx
add     ebx, 2
mov     [ebp+44h], bx

loc_44F81B:
cmp     word ptr [ebp+44h], 18h
jge     short def_44F78E ; jumptable 0044F78E default case
add     word ptr [ebp+46h], 3

def_44F78E:             ; jumptable 0044F78E default case
mov     dx, [ebp+46h]
neg     edx
shl     edx, 4
movsx   ebx, dx
mov     dx, [ebp+44h]
shl     edx, 4
movsx   edx, dx
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_44F863
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_44F86A

loc_44F863:
mov     eax, ebp
call    sub_4DEADD

loc_44F86A:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44F751 endp




sub_44F871 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_44F877[edx*4]
pop     edx
retn
sub_44F871 endp




sub_44F880 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44F8C6
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
jmp     short loc_44F8E7

loc_44F8C6:
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

loc_44F8E7:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44F880 endp




sub_44F8ED proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_44F8F3[edx*4]
pop     edx
retn
sub_44F8ED endp




sub_44F8FC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44F942
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
jmp     short loc_44F963

loc_44F942:
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

loc_44F963:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44F8FC endp




sub_44F969 proc near
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
call    sub_44F9BF
pop     edx
pop     ecx
pop     ebx
retn
sub_44F969 endp




sub_44F9A2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_44F9BB
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_44F9BB:
pop     edx
pop     ecx
pop     ebx
retn
sub_44F9A2 endp




sub_44F9BF proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_44F9C8[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
retn
sub_44F9BF endp



; Attributes: thunk

sub_44F9E4 proc near
jmp     sub_4DE336
sub_44F9E4 endp




sub_44F9E9 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_44F9EF[edx*4]
pop     edx
retn
sub_44F9E9 endp




sub_44F9F8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+408h]
mov     al, [eax+0ACh]
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
mov     [edx+2], ax
xor     ecx, ecx
mov     cl, [ebp+8]
mov     eax, ebp
call    ds:funcs_44FA45[ecx*4]
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_44FA64
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
jmp     short loc_44FA7E

loc_44FA64:
test    byte ptr [edx], 1
jz      short loc_44FA72
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_44FA85

loc_44FA72:
xor     ebx, ebx
mov     bl, [ebp+0A4h]
xor     edx, edx
mov     dl, ah

loc_44FA7E:
mov     eax, ebp
call    sub_4DE96B

loc_44FA85:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44F9F8 endp




sub_44FA9F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     byte ptr [ecx+2], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 0Ch
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     word ptr [ecx+15Ch], 200h
mov     word ptr [ebx], 1
mov     dword ptr [ebx+4], 0
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_44FA9F endp




sub_44FB09 proc near
push    ebx
push    ecx
push    edx
push    edi
lea     edx, [eax+408h]
mov     bl, [eax+0Bh]
test    bl, bl
jnz     loc_44FB97
mov     byte ptr [eax+0Bh], 1
mov     word ptr [edx+4], 0
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_44FB3C
jbe     short loc_44FB6C
cmp     dl, 2
jz      short loc_44FB84
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_44FB3C:
test    dl, dl
jnz     loc_44FBF8
mov     byte ptr [eax+0ACh], 9
mov     byte ptr [eax+110h], 7
mov     word ptr [eax+44h], 0C0h

loc_44FB58:
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_44FB6C:
mov     [eax+0ACh], bl
mov     byte ptr [eax+110h], 6
mov     word ptr [eax+44h], 0
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_44FB84:
mov     byte ptr [eax+0ACh], 9
mov     byte ptr [eax+110h], 7
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_44FB97:
inc     word ptr [edx+4]
mov     bl, [eax+0Ah]
cmp     bl, 1
jb      short loc_44FBAF
jbe     short loc_44FBB5
cmp     bl, 2
jz      short loc_44FBE8
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_44FBAF:
test    bl, bl
jnz     short loc_44FBF8
jmp     short loc_44FB58

loc_44FBB5:
mov     cx, [edx+4]
cmp     cx, 5
jz      short loc_44FBC5
cmp     cx, 0Fh
jnz     short loc_44FBCC

loc_44FBC5:
mov     byte ptr [eax+110h], 7

loc_44FBCC:
mov     di, [edx+4]
cmp     di, 0Ah
jz      short loc_44FBDC
cmp     di, 14h
jnz     short loc_44FBF8

loc_44FBDC:
mov     byte ptr [eax+110h], 6
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_44FBE8:
mov     bh, [eax+57h]
inc     bh
mov     [eax+57h], bh
mov     cl, bh
and     cl, 0Fh
mov     [eax+57h], cl

loc_44FBF8:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_44FB09 endp



; Attributes: thunk

sub_44FBFD proc near
jmp     sub_4DE336
sub_44FBFD endp




sub_44FC02 proc near

; FUNCTION CHUNK AT 0044FC60 SIZE 00000007 BYTES

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
mov     dl, [eax+3]
call    ds:funcs_44FC29[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_44FC49
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44FC49:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_44FC59
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_44FC60

loc_44FC59:
mov     dh, dl
inc     dh
mov     [ebp+9], dh
sub_44FC02 endp

; START OF FUNCTION CHUNK FOR sub_44FC67
;   ADDITIONAL PARENT FUNCTION sub_44FC02

loc_44FC60:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_44FC67



sub_44FC67 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch

; FUNCTION CHUNK AT 0044FC60 SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     esi, eax
mov     edi, offset byte_5F8364
mov     eax, 618h
call    sub_47E888
test    eax, eax
jz      short loc_44FC89
mov     byte ptr [esi+8], 1Ah

loc_44FC89:
mov     al, [esi+8]
lea     ebp, [esi+14h]
lea     edx, [esi+0C4h]
cmp     al, 14h
jb      short loc_44FCD1
jbe     loc_44FEF7
cmp     al, 17h
jb      short loc_44FCC4
jbe     loc_44FF6E
cmp     al, 19h
jb      loc_44FF82
jbe     loc_44FFDA
cmp     al, 1Ah
jz      loc_450018
jmp     loc_45001F

loc_44FCC4:
cmp     al, 15h
jbe     loc_44FF36
jmp     loc_44FF55

loc_44FCD1:
cmp     al, 0Ah
jb      short loc_44FCF0
jbe     loc_44FDBB
cmp     al, 0Bh
jbe     loc_44FE83
cmp     al, 0Ch
jz      loc_44FE9D
jmp     loc_45001F

loc_44FCF0:
test    al, al
jbe     short loc_44FCFD
cmp     al, 1
jz      short loc_44FD09
jmp     loc_45001F

loc_44FCFD:
mov     eax, esi
call    sub_450027
jmp     loc_44FF4D

loc_44FD09:
mov     eax, 610h
call    sub_47E888
test    eax, eax
jz      short loc_44FD85
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     [esp+30h+var_30], eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     [esp+30h+var_2C], eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     [esp+30h+var_28], eax
mov     [esp+30h+var_20], 0F1F0h
mov     [esp+30h+var_1E], 0FFFFh
mov     [esp+30h+var_1C], 0E10h
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [esp+30h+var_20]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, esp
call    sub_42AAA8
and     byte ptr [edi], 0FDh
mov     byte ptr [esi+8], 0Ah
jmp     loc_45001F

loc_44FD85:
mov     eax, 60Fh
call    sub_47E888
test    eax, eax
jz      loc_45001F
mov     word ptr [esi+0C4h], 0F180h
mov     word ptr [esi+0C6h], 0FFFFh
mov     word ptr [esi+0C8h], 111Dh
mov     byte ptr [esi+8], 14h
jmp     loc_45001F

loc_44FDBB:
mov     [esp+30h+var_20], 0F1F0h
mov     [esp+30h+var_1E], 0FFFFh
mov     [esp+30h+var_1C], 10CCh
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [esp+30h+var_20]
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     loc_45001F
call    sub_42ABA2
test    eax, eax
jnz     loc_45001F
mov     edx, 4Eh ; 'N'
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     word ptr [edi+538h], 0F1F0h
mov     word ptr [edi+53Ah], 0FFFFh
mov     word ptr [edi+53Ch], 0E10h
mov     eax, [edi+536h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+528h], eax
mov     eax, [edi+538h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+52Ch], eax
mov     eax, [edi+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [edi+530h], eax
mov     dword ptr [edi+184h], 0
jmp     loc_44FF2A

loc_44FE83:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_45001F
call    sub_42A98E
or      byte ptr [edi], 2
jmp     loc_44FF4D

loc_44FE9D:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     eax, ebp
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     loc_45001F
call    sub_42ABA2
test    eax, eax
jnz     loc_45001F
mov     eax, edi
call    sub_4B565A
mov     eax, 610h
call    sub_47EA91
mov     eax, 60Eh
call    sub_47E8B8
mov     byte ptr [esi+8], 1
jmp     loc_45001F

loc_44FEF7:
mov     eax, 612h
call    sub_47E888
test    eax, eax
jz      loc_45001F
mov     ecx, 4Ah ; 'J'

loc_44FF0E:
xor     ebx, ebx
mov     edx, 2
mov     eax, ebp
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B

loc_44FF2A:
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 1
jmp     loc_45001F

loc_44FF36:
cmp     byte ptr ds:dword_77E760, 0
jnz     loc_45001F
mov     eax, 613h

loc_44FF48:
call    sub_47E8B8

loc_44FF4D:
inc     byte ptr [esi+8]
jmp     loc_45001F

loc_44FF55:
mov     eax, 614h
call    sub_47E888
test    eax, eax
jz      loc_45001F
mov     ecx, 4Ch ; 'L'
jmp     short loc_44FF0E

loc_44FF6E:
cmp     byte ptr ds:dword_77E760, 0
jnz     loc_45001F
mov     eax, 615h
jmp     short loc_44FF48

loc_44FF82:
mov     eax, 20h ; ' '
call    sub_47E888
test    eax, eax
jz      loc_45001F
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     eax, ebp
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short loc_45001F
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
mov     word ptr [esi+44h], 140h
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 1
mov     byte ptr [esi+0Ah], 28h ; '('
jmp     short loc_45001F

loc_44FFDA:
mov     ah, [esi+0Ah]
dec     ah
mov     [esi+0Ah], ah
jz      loc_44FF4D
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     dh, [esi+0A4h]
cmp     dh, 3
jz      short loc_450009
cmp     dh, 0Ah
jnz     short loc_45001F

loc_450009:
lea     edx, [esi+14h]
mov     eax, 10Ch
call    sub_4D8BC3
jmp     short loc_45001F

loc_450018:
mov     eax, esi
call    sub_4DE2F6

loc_45001F:
add     esp, 18h
jmp     loc_44FC60
sub_44FC67 endp ; sp-analysis failed




sub_450027 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 80h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_515C94
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_450027 endp




sub_4500B0 proc near

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
add     eax, 3D8h
mov     [esp+24h+var_24], eax
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
mov     edx, [esp+24h+var_24]
mov     [edx+2], ax
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_450105[edx*4]
mov     eax, [esp+24h+var_24]
add     eax, 34h ; '4'
mov     ebx, 6
mov     edx, offset word_560E04
call    sub_4EECD4
mov     eax, ebp
call    sub_4DF795
test    byte ptr [ebp+0], 2
jz      short loc_450141
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_450141:
test    byte ptr [ebp+0], 1
jz      short loc_450191
mov     eax, [esp+24h+var_24]
test    byte ptr [eax], 4
jz      short loc_450191
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+198h]
movsd
movsd
push    0
push    offset unk_800000
xor     eax, eax
mov     edx, [esp+2Ch+var_24]
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

loc_450191:
test    byte ptr [ebp+0], 1
jz      loc_45028D
mov     bh, [ebp+0Fh]
test    bh, 40h
jnz     loc_45028D
test    bh, 2
jnz     short loc_4501B7
mov     eax, [esp+24h+var_24]
mov     eax, [eax+4Ch]
call    sub_444FDB

loc_4501B7:
mov     ch, [ebp+0Fh]
test    ch, 1
jz      short loc_4501DC
test    ch, 4
jnz     short loc_4501D8
mov     eax, [esp+24h+var_24]
mov     eax, [eax+50h]
mov     byte ptr [eax+9], 0
mov     eax, [esp+24h+var_24]
mov     eax, [eax+54h]
mov     byte ptr [eax+9], 0

loc_4501D8:
and     byte ptr [ebp+0Fh], 0FEh

loc_4501DC:
xor     edx, edx
mov     word ptr [esp+24h+var_1C], dx

loc_4501E3:
mov     edi, offset unk_559E60
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, offset unk_559E68
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
mov     ax, [ebp+56h]
mov     [esp+24h+var_20], eax
mov     eax, [esp+24h+var_24]
mov     ax, [eax+46h]
add     eax, [esp+24h+var_20]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     esi, [esp+24h+var_20+2]
sar     esi, 10h
mov     edx, ds:dword_515D12[esi*2]
sar     edx, 10h
xor     ecx, ecx
mov     ebx, 0FFFFF760h
mov     eax, ebp
call    sub_4DD43B
mov     eax, esi
shl     eax, 2
add     eax, [esp+24h+var_24]
mov     edx, [eax+50h]
mov     si, [ebp+14h]
mov     [edx+1Ch], si
mov     edx, [eax+50h]
mov     si, [ebp+16h]
mov     [edx+1Eh], si
mov     eax, [eax+50h]
mov     dx, [ebp+18h]
mov     [eax+20h], dx
lea     edi, [ebp+14h]
mov     esi, offset unk_559E60
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, offset unk_559E68
movsd
movsd
movsd
movsd
mov     eax, [esp+24h+var_20]
mov     [ebp+56h], ax
mov     ecx, [esp+24h+var_1C]
inc     ecx
mov     word ptr [esp+24h+var_1C], cx
cmp     cx, 2
jl      loc_4501E3

loc_45028D:
mov     eax, [esp+24h+var_24]
mov     dword ptr [eax+14h], 0

loc_450297:
add     esp, 0Ch

loc_45029A:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4500B0 endp




sub_4502A1 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
lea     ecx, [eax+3D8h]
test    byte ptr [eax+0Fh], 40h
jnz     loc_450433
xor     edx, edx
jmp     short loc_4502EE

loc_4502C0:
mov     byte ptr [ebx], 9
mov     ebx, [eax+50h]
mov     byte ptr [ebx+2], 0Fh
mov     ebx, [eax+50h]
mov     byte ptr [ebx+3], 1
xor     ebx, ebx
mov     bl, [ebp+3]
sar     ebx, 4
mov     [esp+24h+var_1C], ebx
mov     bl, byte ptr [esp+24h+var_1C]
mov     eax, [eax+50h]
mov     [eax+0Ch], bl
inc     edx
cmp     dx, 4
jge     short loc_45031F

loc_4502EE:
call    sub_4DE13B
mov     ebx, eax
movsx   eax, dx
shl     eax, 2
add     eax, ecx
mov     [eax+50h], ebx
test    ebx, ebx
jnz     short loc_4502C0
mov     eax, ebp
call    sub_4DE2F6

loc_45030B:
test    dx, dx
jnz     short loc_450297
dec     edx
movsx   eax, dx
mov     eax, [ecx+eax*4+50h]
call    sub_4DE3EA
jmp     short loc_45030B

loc_45031F:
mov     eax, [ecx+58h]
mov     al, [eax+1]
mov     [ebp+0Dh], al
mov     eax, [ecx+5Ch]
mov     al, [eax+1]
mov     [ebp+0Eh], al
call    sub_4DDF54
mov     [ecx+4Ch], eax
mov     edx, eax
test    eax, eax
jz      loc_45051D
mov     ebx, [ebp+9]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
add     ebx, eax
shl     ebx, 2
mov     eax, ds:dword_559E5C
add     eax, ebx
mov     bl, [eax]
mov     [edx], bl
mov     edx, [ecx+4Ch]
mov     bl, [eax+2]
mov     [edx+2], bl
mov     edx, [ecx+4Ch]
mov     bl, [eax+3]
mov     [edx+3], bl
mov     edx, [ecx+4Ch]
mov     bl, [eax+4]
mov     [edx+4], bl
mov     edx, [ecx+4Ch]
mov     bl, [eax+5]
mov     [edx+5], bl
mov     edx, [ecx+4Ch]
mov     ebx, [eax+8]
mov     [edx+0Ch], ebx
mov     ebx, [ecx+4Ch]
lea     edi, [ebx+2Ch]
lea     esi, [eax+0Ch]
movsd
movsd
mov     edi, esp
lea     esi, [ebx+2Ch]
movsd
movsd
mov     esi, [ecx+4Ch]
lea     edi, [esi+14h]
mov     esi, esp
movsd
movsd
mov     ebx, [ecx+4Ch]
mov     edx, [ebx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ebx+34h], edx
mov     ebx, edx
mov     edx, [ecx+4Ch]
mov     [edx+1Ch], ebx
mov     ebx, [ecx+4Ch]
mov     edx, [ebx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ebx+38h], edx
mov     ebx, edx
mov     edx, [ecx+4Ch]
mov     [edx+20h], ebx
mov     ebx, [ecx+4Ch]
mov     edx, [ebx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ebx+3Ch], edx
mov     ebx, edx
mov     edx, [ecx+4Ch]
mov     [edx+24h], ebx
mov     ebx, [ecx+4Ch]
mov     word ptr [ebx+5Ch], 0
mov     bx, [ebx+5Ch]
mov     edx, [ecx+4Ch]
mov     [edx+54h], bx
xor     edx, edx
mov     dl, [eax+7]
shl     edx, 4
mov     eax, [ecx+4Ch]
mov     [eax+5Eh], dx
mov     eax, [ecx+4Ch]
mov     [eax+56h], dx
mov     eax, [ecx+4Ch]
mov     word ptr [eax+60h], 0
mov     dx, [eax+60h]
mov     eax, [ecx+4Ch]
mov     [eax+58h], dx
mov     eax, [ecx+4Ch]
mov     dl, [ebp+1]
mov     [eax+0Dh], dl

loc_450433:
or      byte ptr [ebp+0], 2
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     dword ptr [ebp+64h], 0
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     dword ptr [ecx+34h], 0
mov     dword ptr [ecx+38h], 0
mov     dword ptr [ecx+3Ch], 0
mov     dword ptr [ecx+40h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     word ptr [ecx], 6
mov     dword ptr [ecx+4], 0
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx+14h], 0
mov     dword ptr [ecx+18h], 0
mov     dword ptr [ecx+28h], 0
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ebp+6Eh], ax
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], offset unk_515D08
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     byte ptr [ebp+8], 1
test    byte ptr [ebp+0Fh], 40h
jz      short loc_45053E
mov     byte ptr [ebp+9], 2
jmp     short loc_450542

loc_45051D:
mov     eax, ebp
call    sub_4DE2F6
xor     edx, edx

loc_450526:
movsx   eax, dx
mov     eax, [ecx+eax*4+50h]
call    sub_4DE3EA
inc     edx
cmp     dx, 4
jl      short loc_450526
jmp     loc_450297

loc_45053E:
mov     byte ptr [ebp+9], 0

loc_450542:
mov     word ptr [ebp+0Ah], 0
mov     word ptr [ebp+15Eh], 4210h
jmp     loc_450297
sub_4502A1 endp




sub_450556 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     edx, [eax+3D8h]
test    byte ptr [edx], 2
jz      short loc_45056E
mov     eax, esi
call    sub_45087D

loc_45056E:
xor     ecx, ecx
mov     cl, [esi+9]
mov     eax, esi
call    ds:funcs_450575[ecx*4]
mov     bx, [edx+0Ah]
test    bx, bx
jz      short loc_45058C
mov     ecx, ebx
dec     ecx
mov     [edx+0Ah], cx

loc_45058C:
test    byte ptr [edx], 8
jnz     short loc_4505A4
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
mov     eax, esi
call    sub_432697

loc_4505A4:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_450556 endp




sub_4505A9 proc near
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+3D8h]
call    sub_4DE2F6
test    byte ptr [ecx+0Fh], 40h
jnz     short loc_4505EC
mov     eax, [edx+50h]
call    sub_4DE3EA
mov     eax, [edx+54h]
call    sub_4DE3EA
test    byte ptr [ecx+0Fh], 2
jnz     short loc_4505EC
mov     eax, [edx+4Ch]
call    sub_4DE2F6
mov     eax, [edx+58h]
call    sub_4DE3EA
mov     eax, [edx+5Ch]
call    sub_4DE3EA

loc_4505EC:
pop     edx
pop     ecx
retn
sub_4505A9 endp




sub_4505EF proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 3D8h
mov     word ptr [eax+8], 0
mov     bx, [eax+46h]
add     ebx, 40h ; '@'
and     bh, 0Fh
mov     [eax+46h], bx
mov     eax, edx
call    sub_42C592
mov     [edx+16h], ax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
pop     edx
pop     ebx
retn
sub_4505EF endp




sub_450626 proc near

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
add     eax, 3D8h
mov     [esp+20h+var_20], eax
mov     word ptr [eax+8], 0
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_45064F
cmp     al, 1
jz      short loc_45068D
jmp     loc_45072E

loc_45064F:
mov     eax, [esp+20h+var_20]
mov     ax, [eax+46h]
add     eax, 40h ; '@'
and     ah, 0Fh
mov     edx, [esp+20h+var_20]
mov     [edx+46h], ax
mov     edx, [ebp+54h]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
mov     eax, [eax+44h]
sar     eax, 10h
add     eax, edx
test    ax, 3FFh
jnz     loc_45072E
mov     byte ptr [ebp+0Ah], 1
mov     eax, [esp+20h+var_20]
mov     word ptr [eax+4], 0Fh

loc_45068D:
mov     eax, [esp+20h+var_20]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     loc_45072E
xor     ecx, ecx
mov     [esp+20h+var_1C], ecx
jmp     short loc_4506EA

loc_4506AA:
mov     bx, [ebp+56h]
mov     esi, [esp+20h+var_20]
add     bx, [esi+46h]

loc_4506B5:
and     bh, 0Fh
mov     [eax+64h], bx
push    0
push    0FFFFF840h
mov     ebx, [edx+62h]
sar     ebx, 10h
lea     esi, [edx+1Ch]
lea     eax, [edx+14h]
mov     ecx, 600h
mov     edx, esi
call    sub_4DD4C5

loc_4506DB:
mov     esi, [esp+20h+var_1C]
inc     esi
mov     [esp+20h+var_1C], esi
cmp     si, 2
jge     short loc_45072A

loc_4506EA:
call    sub_4DE043
mov     edx, eax
test    eax, eax
jz      short loc_4506DB
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 9
mov     byte ptr [eax+3], 1
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
cmp     word ptr [esp+20h+var_1C], 0
jz      short loc_4506AA
mov     bx, [ebp+56h]
mov     esi, [esp+20h+var_20]
add     bx, [esi+46h]
add     bh, 8
jmp     short loc_4506B5

loc_45072A:
mov     byte ptr [ebp+0Ah], 0

loc_45072E:
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
add     esp, 8
jmp     loc_45029A
sub_450626 endp




sub_45074D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ebx, [eax+3D8h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_450771
jbe     short loc_4507C9
cmp     al, 2
jz      loc_450846
jmp     loc_45029A

loc_450771:
test    al, al
jnz     loc_45029A
mov     byte ptr [ebp+0Ah], 1
mov     word ptr [ebp+46h], 0FFE2h
mov     word ptr [ebp+4Eh], 3
call    sub_4DE13B
test    eax, eax
jz      short loc_4507A8
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ebp+190h]
movsd
movsd

loc_4507A8:
mov     byte ptr [ebp+0FBh], 0FFh
mov     word ptr [ebx+8], 0
mov     word ptr [ebx+4], 0Ah
mov     ah, [ebx]
and     ah, 0F3h
mov     [ebx], ah
mov     dl, ah
or      dl, 8
mov     [ebx], dl

loc_4507C9:
mov     dx, [ebx+4]
dec     edx
mov     [ebx+4], dx
test    dx, dx
jge     short loc_45081E
and     byte ptr [ebp+0], 0FDh
mov     byte ptr [ebp+0Ah], 2
or      byte ptr [ebp+0Fh], 4
call    sub_4DE13B
test    eax, eax
jz      short loc_450802
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
lea     edi, [eax+48h]
lea     esi, [ebp+198h]
movsd
movsd

loc_450802:
lea     edx, [ebp+190h]
mov     eax, ebp
call    sub_4AF9F8
test    byte ptr [ebp+0Fh], 42h
jnz     short loc_450846
mov     eax, [ebx+4Ch]
mov     byte ptr [eax+8], 4
jmp     short loc_450846

loc_45081E:
mov     ebx, [ebp+44h]
sar     ebx, 10h
shl     ebx, 4
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax
mov     eax, ebp
call    sub_42DE56
jmp     loc_45029A

loc_450846:
mov     al, [ebp+0Fh]
test    al, 40h
jnz     short loc_450871
test    al, 2
jz      loc_45029A
mov     eax, ebp
call    sub_4DE2F6
mov     eax, [ebx+50h]
call    sub_4DE3EA
mov     eax, [ebx+54h]
call    sub_4DE3EA
jmp     loc_45029A

loc_450871:
mov     eax, ebp
call    sub_4DE2F6
jmp     loc_45029A
sub_45074D endp




sub_45087D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
add     eax, 3D8h
mov     ebx, [eax+14h]
and     ebx, 0FFFFFFh
jz      short loc_4508E5
lea     edx, [ecx+14h]
test    byte ptr [eax+17h], 38h
jz      short loc_4508DB
mov     si, [ecx+6Eh]
mov     [ecx+0B2h], si
sub     esi, ebx
mov     [ecx+6Eh], si
test    si, si
jg      short loc_4508C6
and     byte ptr [eax], 0FDh
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
mov     eax, 0A2h
jmp     short loc_4508CB

loc_4508C6:
mov     eax, 0A0h

loc_4508CB:
call    sub_4D8BC3
mov     word ptr [ecx+15Eh], 7FFFh
jmp     short loc_4508E5

loc_4508DB:
mov     eax, 0A3h
call    sub_4D8BC3

loc_4508E5:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45087D endp




sub_4508EF proc near
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
mov     dl, [eax+3]
call    ds:funcs_450916[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_450936
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_450936:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_450946
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_45094D

loc_450946:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_45094D:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4508EF endp




sub_450954 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ecx, offset unk_77E5F4
mov     edi, offset byte_5F8364
cmp     byte ptr [eax+8], 14h
jbe     short loc_450994
call    sub_47EBCB
test    eax, eax
jz      short loc_450994
mov     eax, 618h
call    sub_47E8B8
mov     eax, 20h ; ' '
call    sub_47E8B8
xor     eax, eax
call    sub_4A0E75
mov     byte ptr [esi+8], 1Dh

loc_450994:
mov     al, [esi+8]
lea     ebp, [esi+14h]
cmp     al, 17h
jb      short loc_4509D3
jbe     loc_450AF5
cmp     al, 1Ah
jb      short loc_4509C6
jbe     loc_450B70
cmp     al, 1Ch
jb      loc_450B9C
jbe     loc_450BE9
cmp     al, 1Dh
jz      loc_450BFC
jmp     short loc_45094D

loc_4509C6:
cmp     al, 18h
jbe     loc_450B0E
jmp     loc_450B25

loc_4509D3:
cmp     al, 14h
jb      short loc_4509E6
jbe     short loc_450A38
cmp     al, 15h
jbe     loc_450A9F
jmp     loc_450AD9

loc_4509E6:
test    al, al
jbe     short loc_4509F3
cmp     al, 1
jz      short loc_450A02
jmp     loc_45094D

loc_4509F3:
mov     eax, esi
call    sub_450C2B

loc_4509FA:
inc     byte ptr [esi+8]
jmp     loc_45094D

loc_450A02:
mov     eax, 60Fh
call    sub_47E888
test    eax, eax
jz      loc_45094D
mov     word ptr [esi+0C4h], 0F348h
mov     word ptr [esi+0C6h], 0FFFFh
mov     word ptr [esi+0C8h], 111Dh
mov     byte ptr [esi+8], 14h
jmp     loc_45094D

loc_450A38:
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+10h], 0F2180000h
mov     dword ptr [ecx+14h], 0FF380000h
mov     dword ptr [ecx+18h], 0BDB0000h
mov     dword ptr [ecx+40h], 0
mov     dword ptr [ecx+44h], 1800000h
mov     dword ptr [ecx+48h], 2000000h
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     ecx, 800h
mov     edx, ebp
call    sub_4DE552
add     ax, [edi+542h]
and     ah, 0Fh
mov     [edi+542h], ax
mov     byte ptr [edi+548h], 30h ; '0'
jmp     loc_4509FA

loc_450A9F:
call    sub_42ABA2
test    eax, eax
jnz     loc_45094D
mov     ecx, 48h ; 'H'

loc_450AB1:
xor     ebx, ebx
mov     edx, 2
mov     eax, ebp
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 1
jmp     loc_45094D

loc_450AD9:
cmp     byte ptr ds:dword_77E760, 0
jnz     loc_45094D
mov     eax, 611h
call    sub_47E8B8
jmp     loc_4509FA

loc_450AF5:
mov     eax, 615h
call    sub_47E888
test    eax, eax
jz      loc_45094D
mov     ecx, 4Dh ; 'M'
jmp     short loc_450AB1

loc_450B0E:
cmp     byte ptr ds:dword_77E760, 0
jnz     loc_45094D
inc     al
mov     [esi+8], al
jmp     loc_45094D

loc_450B25:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [esi+0C4h]
mov     eax, ebp
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     loc_45094D
mov     word ptr [esi+44h], 140h
inc     byte ptr [esi+8]
mov     byte ptr [esi+0Ah], 14h
mov     eax, 20h ; ' '
call    sub_47E8B8
jmp     loc_45094D

loc_450B70:
mov     bh, [esi+0Ah]
dec     bh
mov     [esi+0Ah], bh
jnz     loc_45094D
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 3Ch ; '<'
jmp     loc_45094D

loc_450B9C:
mov     ch, [esi+0Ah]
dec     ch
mov     [esi+0Ah], ch
jnz     short loc_450BB2
and     byte ptr [esi], 0FDh
mov     byte ptr [esi+0Ah], 1Eh
jmp     loc_4509FA

loc_450BB2:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     ah, [esi+0A4h]
cmp     ah, 3
jz      short loc_450BD7
cmp     ah, 0Ah
jnz     loc_45094D

loc_450BD7:
lea     edx, [esi+14h]
mov     eax, 10Ch
call    sub_4D8BC3
jmp     loc_45094D

loc_450BE9:
mov     bl, [esi+0Ah]
dec     bl
mov     [esi+0Ah], bl
jnz     loc_45094D
jmp     loc_4509FA

loc_450BFC:
call    sub_42ABA2
test    eax, eax
jnz     loc_45094D
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, edi
call    sub_4B565A
or      byte ptr [edi], 2
mov     eax, esi
call    sub_4DE2F6
jmp     loc_45094D
sub_450954 endp




sub_450C2B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 80h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_450C2B endp




sub_450CAD proc near

; FUNCTION CHUNK AT 00450CF4 SIZE 00000001 BYTES

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
mov     dl, [eax+3]
call    ds:funcs_450CD4[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_450CF4
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 0Ch
mov     eax, ebp
call    sub_4ED88B
sub_450CAD endp

; START OF FUNCTION CHUNK FOR sub_451324
;   ADDITIONAL PARENT FUNCTION sub_450CAD

loc_450CF4:
pop     ebp
; END OF FUNCTION CHUNK FOR sub_451324
; START OF FUNCTION CHUNK FOR sub_450DF5

loc_450CF5:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_450DF5



sub_450CFB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 40h ; '@'
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], offset unk_515D30
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], 0
mov     word ptr [ebx+18h], 0Ah
mov     word ptr [ebx+1Ah], 0
mov     word ptr [ebx+1Ch], 0
mov     byte ptr [ecx+74h], 0
mov     dword ptr [ebx], 0
mov     dword ptr [ebx+4], 0
mov     word ptr [ecx+44h], 80h
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     dword ptr [ebx+8], 0
mov     dword ptr [ebx+0Ch], 80h
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ch], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_450CFB endp

jpt_450E15 dd offset loc_450E1C ; jump table for switch statement
dd offset loc_450E58
dd offset loc_450EE3
dd offset loc_450F0F
dd offset loc_450F88
dd offset loc_45101F
dd offset loc_451077
dd offset def_450E15
dd offset loc_4510F4



sub_450DF5 proc near

var_18= dword ptr -18h

; FUNCTION CHUNK AT 00450CF5 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+8]
cmp     al, 8           ; switch 9 cases
ja      def_450E15      ; jumptable 00450E15 default case, case 7
and     eax, 0FFh
jmp     jpt_450E15[eax*4] ; switch jump

loc_450E1C:             ; jumptable 00450E15 case 0
mov     eax, esi
call    sub_450CFB
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
xor     edx, edx
mov     eax, esi
call    sub_451302
mov     edx, 1
mov     eax, esi
call    sub_4512EE
mov     byte ptr [esi+8], 1

def_450E15:             ; jumptable 00450E15 default case, case 7
mov     dword ptr [edi], 0

loc_450E50:
add     esp, 4
jmp     loc_450CF5

loc_450E58:             ; jumptable 00450E15 case 1
mov     ax, [esi+54h]
add     ax, [edi+18h]
and     ah, 0Fh
mov     [esi+54h], ax
mov     ax, [esi+56h]
add     ax, [edi+1Ah]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ax, [esi+58h]
add     ax, [edi+1Ch]
and     ah, 0Fh
mov     [esi+58h], ax
mov     edx, esp
mov     eax, esi
call    sub_45144D
test    al, al
jnz     short loc_450E50
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     ebx, [esp+18h+var_18]
test    ebx, ebx
jz      short loc_450EB9
mov     edx, ebx
mov     eax, esi
call    sub_451220

loc_450EB9:
mov     eax, esi
call    sub_451276
mov     eax, esi
call    sub_4DEADD
mov     dl, [esi+9]
test    dl, dl
jnz     short loc_450ED7
mov     byte ptr [esi+8], 2
jmp     def_450E15      ; jumptable 00450E15 default case, case 7

loc_450ED7:
mov     dh, dl
dec     dh
mov     [esi+9], dh
jmp     def_450E15      ; jumptable 00450E15 default case, case 7

loc_450EE3:             ; jumptable 00450E15 case 2
cmp     byte ptr [esi+9], 0Ah
jnz     short loc_450F00
xor     edx, edx
mov     eax, esi
call    sub_451220
mov     byte ptr [esi+8], 1
call    rand_
and     al, 3Fh
mov     [esi+9], al

loc_450F00:
mov     eax, esi
call    sub_451276
inc     byte ptr [esi+9]
jmp     def_450E15      ; jumptable 00450E15 default case, case 7

loc_450F0F:             ; jumptable 00450E15 case 3
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [esi+14h]
mov     eax, offset byte_5F8364
add     eax, 14h
call    sub_4DE552
cwde
mov     [esp+18h+var_18], eax
mov     ax, [esi+56h]
add     eax, [esp+18h+var_18]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, esp
mov     eax, esi
call    sub_45144D
test    al, al
jnz     loc_450E50
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     ecx, [esp+18h+var_18]
test    ecx, ecx
jz      short loc_450F75
mov     edx, ecx
mov     eax, esi
call    sub_451220

loc_450F75:
mov     eax, esi
call    sub_451276

loc_450F7C:
mov     eax, esi
call    sub_4DEADD
jmp     def_450E15      ; jumptable 00450E15 default case, case 7

loc_450F88:             ; jumptable 00450E15 case 4
mov     bh, [esi+0A4h]
test    bh, bh
jz      short loc_450F97
cmp     bh, 8
jnz     short loc_450FD9

loc_450F97:
lea     edx, [esi+14h]
mov     eax, 109h
call    sub_4D8BC3
xor     ebx, ebx
mov     edx, 4
mov     eax, esi
call    sub_4DE96B
mov     edx, 1
mov     eax, esi
call    sub_451302
mov     edx, 1
mov     eax, esi
call    sub_4512EE
mov     word ptr [esi+46h], 0FF00h
mov     byte ptr [esi+74h], 1
inc     byte ptr [esi+8]
jmp     short loc_450FE0

loc_450FD9:
mov     eax, esi
call    sub_4DEADD

loc_450FE0:
mov     edx, esp
mov     eax, esi
call    sub_45144D
test    al, al
jnz     loc_450E50
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     edx, [esp+18h+var_18]
test    edx, edx
jz      def_450E15      ; jumptable 00450E15 default case, case 7

loc_451013:
mov     eax, esi
call    sub_451220
jmp     def_450E15      ; jumptable 00450E15 default case, case 7

loc_45101F:             ; jumptable 00450E15 case 5
cmp     byte ptr [esi+0A7h], 0
jge     short loc_451050
xor     ebx, ebx
mov     edx, 3
mov     eax, esi
call    sub_4DE96B
mov     edx, 1
mov     eax, esi
call    sub_451302
xor     edx, edx
mov     eax, esi
call    sub_4512EE
inc     byte ptr [esi+8]
jmp     short loc_451057

loc_451050:
mov     eax, esi
call    sub_4DEADD

loc_451057:
mov     edx, esp
mov     eax, esi
call    sub_45144D
test    al, al
jnz     loc_450E50
mov     eax, [esp+18h+var_18]
test    eax, eax
jz      def_450E15      ; jumptable 00450E15 default case, case 7
mov     edx, eax
jmp     short loc_451013

loc_451077:             ; jumptable 00450E15 case 6
mov     ax, [esi+56h]
add     ax, [edi+1Ah]
and     ah, 0Fh
mov     [esi+56h], ax
mov     eax, esi
call    sub_42C592
cwde
sub     eax, 258h
mov     [esp+18h+var_18], eax
mov     eax, [esi+14h]
sar     eax, 10h
mov     ecx, [esp+18h+var_18]
cmp     eax, ecx
jbe     short loc_4510AB
mov     word ptr [esi+46h], 0FF00h
jmp     short loc_4510BB

loc_4510AB:
jnb     short loc_4510B5
mov     word ptr [esi+46h], 40h ; '@'
jmp     short loc_4510BB

loc_4510B5:
mov     word ptr [esi+46h], 0

loc_4510BB:
mov     edx, esp
mov     eax, esi
call    sub_45144D
test    al, al
jnz     loc_450E50
cmp     [esp+18h+var_18], 0
jnz     short loc_4510D8
test    byte ptr [esi+9], 3Fh
jnz     short loc_4510E2

loc_4510D8:
mov     edx, [esp+18h+var_18]
mov     eax, esi
call    sub_451220

loc_4510E2:
mov     edx, [esp+18h+var_18]
mov     eax, esi
call    sub_451413
inc     byte ptr [esi+9]
jmp     loc_450F7C

loc_4510F4:             ; jumptable 00450E15 case 8
mov     ebx, [esi+62h]
sar     ebx, 10h
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [esi+64h]
sar     eax, 10h
call    sub_4DE5F4
mov     [esp+18h+var_18], eax
mov     ax, [esi+56h]
add     eax, [esp+18h+var_18]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     [esp+18h+var_18], 0
jnz     loc_450F7C
mov     byte ptr [esi+8], 6
jmp     loc_450F7C
sub_450DF5 endp

db 8Bh, 0C0h
jpt_45115B dd offset loc_451162 ; jump table for switch statement
dd offset loc_451171
dd offset loc_451182
dd offset loc_4511DA
dd offset loc_4511ED



sub_451145 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_45115B      ; jumptable 0045115B default case
and     eax, 0FFh
jmp     jpt_45115B[eax*4] ; switch jump

loc_451162:             ; jumptable 0045115B case 0
mov     eax, esi
call    sub_450CFB

loc_451169:
inc     byte ptr [esi+8]
jmp     def_45115B      ; jumptable 0045115B default case

loc_451171:             ; jumptable 0045115B case 1
mov     eax, esi
call    sub_451324
test    eax, eax
jz      def_45115B      ; jumptable 0045115B default case
jmp     short loc_451169

loc_451182:             ; jumptable 0045115B case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short def_45115B ; jumptable 0045115B default case
call    sub_42ABA2
test    eax, eax
jnz     short def_45115B ; jumptable 0045115B default case
mov     edx, 2Ah ; '*'
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     short def_45115B ; jumptable 0045115B default case

loc_4511DA:             ; jumptable 0045115B case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_45115B ; jumptable 0045115B default case
call    sub_42A98E
jmp     loc_451169

loc_4511ED:             ; jumptable 0045115B case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_45115B ; jumptable 0045115B default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1

def_45115B:             ; jumptable 0045115B default case
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
sub_451145 endp




sub_451220 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     eax, edx
lea     edx, [ecx+408h]
mov     bx, [edx+1Ah]
test    eax, eax
jnz     short loc_451250
call    rand_
mov     bx, ds:word_77EAB6
imul    ebx, eax
xor     bh, bh
and     bl, 0Fh
sub     ebx, 8
shl     ebx, 2
jmp     short loc_451263

loc_451250:
sar     eax, 0Ch
test    al, 1
jz      short loc_45125C
mov     ebx, 10h

loc_45125C:
test    al, 2
jz      short loc_451263
imul    ebx, -1

loc_451263:
mov     word ptr [edx+18h], 0
mov     [edx+1Ah], bx
mov     word ptr [edx+1Ch], 0
pop     ecx
pop     ebx
retn
sub_451220 endp




sub_451276 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4DD64B
cmp     eax, 258h
jnb     short loc_4512B6
cmp     eax, 190h
jnb     short loc_4512A3
cmp     byte ptr [ecx+8], 4
jz      short loc_4512EA
mov     byte ptr [ecx+8], 4
pop     edx
pop     ecx
pop     ebx
retn

loc_4512A3:
cmp     byte ptr [ecx+8], 3
jz      short loc_4512EA
mov     byte ptr [ecx+8], 3
xor     ebx, ebx
mov     edx, 2
jmp     short loc_4512CE

loc_4512B6:
mov     ah, [ecx+8]
cmp     ah, 1
jz      short loc_4512EA
cmp     ah, 2
jz      short loc_4512EA
mov     byte ptr [ecx+8], 1
xor     ebx, ebx
mov     edx, 1

loc_4512CE:
mov     eax, ecx
call    sub_4DE96B
xor     edx, edx
mov     eax, ecx
call    sub_451302
mov     edx, 1
mov     eax, ecx
call    sub_4512EE

loc_4512EA:
pop     edx
pop     ecx
pop     ebx
retn
sub_451276 endp




sub_4512EE proc near
test    dl, dl
jz      short loc_4512FA
mov     byte ptr [eax+107h], 0
retn

loc_4512FA:
mov     byte ptr [eax+107h], 0FFh
retn
sub_4512EE endp




sub_451302 proc near
test    dl, dl
jz      short loc_451315
mov     byte ptr [eax+0FFh], 0
mov     byte ptr [eax+103h], 0
retn

loc_451315:
mov     byte ptr [eax+0FFh], 0FFh
mov     byte ptr [eax+103h], 0FFh
retn
sub_451302 endp




sub_451324 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 00450CF4 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     edi, offset byte_5F8364
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     loc_451409
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_45137E
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_451394

loc_45137E:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_451394:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 40h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_559E78, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_559E7C, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_559E80, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_559E78
call    sub_42AAA8
mov     eax, 1
jmp     short loc_45140B

loc_451409:
xor     eax, eax

loc_45140B:
add     esp, 4
jmp     loc_450CF4
sub_451324 endp ; sp-analysis failed




sub_451413 proc near
push    ecx
mov     ecx, eax
test    edx, edx
jz      short loc_45144B
mov     ah, [eax+0Ch]
inc     ah
mov     [ecx+0Ch], ah
cmp     ah, 3Ch ; '<'
jle     short loc_45144B
mov     byte ptr [ecx+0Ch], 0
mov     dx, [ecx+56h]
add     edx, 7D0h
call    rand_
xor     ah, ah
and     al, 3Fh
add     eax, edx
and     ah, 0Fh
mov     [ecx+66h], ax
mov     byte ptr [ecx+8], 8

loc_45144B:
pop     ecx
retn
sub_451413 endp




sub_45144D proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     edi, edx
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
call    sub_4DD43B
lea     eax, [esi+14h]
call    sub_42C517
test    eax, eax
jz      short loc_451482
mov     eax, esi
call    sub_4DE2F6
mov     al, 1
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_451482:
mov     eax, esi
call    sub_42DE56
mov     [edi], eax
xor     al, al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_45144D endp

push    ecx
push    edx
mov     edx, eax
add     word ptr [eax+46h], 4
mov     cx, [eax+54h]
add     ecx, 20h ; ' '
mov     [eax+54h], cx
cmp     cx, 400h
jle     short loc_4514B3
mov     word ptr [eax+54h], 400h

loc_4514B3:
mov     eax, edx
call    sub_4DEB53
mov     eax, edx
call    sub_4DF7CB
pop     edx
pop     ecx
retn



sub_4514C4 proc near
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
call    ds:funcs_4514E6[edx*4]
pop     edi
pop     esi
pop     edx
retn
sub_4514C4 endp




sub_4514F1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
call    sub_450CFB
call    rand_
mov     ebx, eax
and     ebx, 3
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     edx, 1
mov     eax, ecx
call    sub_451302
xor     edx, edx
mov     eax, ecx
call    sub_4512EE
sub     word ptr [ecx+16h], 50h ; 'P'
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+46h], 0FFF0h
mov     byte ptr [ecx+74h], 1
inc     byte ptr [ecx+8]
lea     edx, [ecx+14h]
mov     eax, 109h
call    sub_4D8BC3
pop     edx
pop     ecx
pop     ebx
retn
sub_4514F1 endp




sub_451555 proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
call    sub_42C592
movsx   edx, ax
sub     edx, 7D0h
mov     [esp+0Ch+var_C], edx
mov     edx, [ecx+14h]
sar     edx, 10h
cmp     edx, [esp+0Ch+var_C]
jnb     short loc_45157F
mov     eax, ecx
call    sub_4DE2F6

loc_45157F:
sub     word ptr [ecx+46h], 10h
mov     edx, esp
mov     eax, ecx
call    sub_45144D
test    al, al
jnz     short loc_451598
mov     eax, ecx
call    sub_4DEADD

loc_451598:
add     esp, 4
pop     edx
pop     ecx
retn
sub_451555 endp




sub_45159E proc near
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
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
mov     al, [ebp+8]
test    al, al
jbe     short loc_4515E2
cmp     al, 1
jz      short loc_4515F0
jmp     loc_45169E

loc_4515E2:
mov     edx, ecx
mov     eax, ebp
call    sub_4516EC
jmp     loc_45169E

loc_4515F0:
mov     ah, ds:byte_560BE5
cmp     ah, 0Eh
jnz     loc_451694
mov     eax, ds:dword_560BEC
cmp     eax, 0B9h
jb      short loc_451659
jbe     loc_45168C
cmp     eax, 2B2h
jb      short loc_451642
jbe     loc_45168C
cmp     eax, 334h
jb      short loc_45163B
jbe     loc_45168C
cmp     eax, 382h

loc_451630:
jz      loc_451684
jmp     loc_45169E

loc_45163B:
cmp     eax, 320h
jmp     short loc_451630

loc_451642:
cmp     eax, 186h
jb      short loc_451652
jbe     short loc_45168C
cmp     eax, 288h
jmp     short loc_451630

loc_451652:
cmp     eax, 163h
jmp     short loc_451630

loc_451659:
cmp     eax, 50h ; 'P'
jb      short loc_451673
jbe     short loc_45168C
cmp     eax, 7Dh ; '}'
jb      short loc_45166E
jbe     short loc_45168C
cmp     eax, 0A8h
jmp     short loc_451630

loc_45166E:
cmp     eax, 6Eh ; 'n'
jmp     short loc_451630

loc_451673:
cmp     eax, 3Ch ; '<'
jb      short loc_45167F
jbe     short loc_45168C
cmp     eax, 46h ; 'F'
jmp     short loc_451630

loc_45167F:
cmp     eax, 1Eh
jnz     short loc_45169E

loc_451684:
mov     word ptr [ecx+2], 0
jmp     short loc_45169E

loc_45168C:
mov     word ptr [ecx+2], 1
jmp     short loc_45169E

loc_451694:
cmp     ah, 0Fh
jnz     short loc_45169E
add     al, al
mov     [ebp+8], al

loc_45169E:
mov     edx, ecx
mov     eax, ebp
call    sub_451749
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_4516C5
movsx   ebx, word ptr [ecx]
xor     edx, edx
mov     dl, al
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_4516CC

loc_4516C5:
mov     eax, ebp
call    sub_4DEADD

loc_4516CC:
test    byte ptr [ebp+0], 2
jz      short loc_4516E5
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 24h ; '$'
mov     eax, ebp
call    sub_4ED88B

loc_4516E5:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45159E endp




sub_4516EC proc near
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
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx], 0
mov     word ptr [ebx+2], 1
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     ecx
pop     ebx
retn
sub_4516EC endp




sub_451749 proc near
cmp     word ptr [edx+2], 0
jnz     short loc_451758
mov     byte ptr [eax+114h], 7
retn

loc_451758:
test    byte ptr [eax+0Eh], 3
jnz     short loc_451779
cmp     byte ptr [eax+114h], 7
jnz     short loc_45176E
mov     edx, 8
jmp     short loc_451773

loc_45176E:
mov     edx, 7

loc_451773:
mov     [eax+114h], dl

loc_451779:
inc     byte ptr [eax+0Eh]
retn
sub_451749 endp




sub_45177D proc near
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
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_45177D endp




sub_4517B8 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_4517D5
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4517D5:
pop     edx
pop     ecx
pop     ebx
retn
sub_4517B8 endp




sub_4517D9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4517ED
cmp     al, 1
jz      short loc_451802
pop     edx
pop     ecx
pop     ebx
retn

loc_4517ED:
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_451802:
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 12h
jnz     short loc_451811
mov     byte ptr [ecx+0Ah], 0

loc_451811:
pop     edx
pop     ecx
pop     ebx
retn
sub_4517D9 endp




sub_451815 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_45181E[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_45183D
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_45183D:
pop     edx
pop     ecx
retn
sub_451815 endp




sub_451840 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_451850
mov     eax, edx
call    sub_45177D

loc_451850:
mov     eax, edx
call    sub_451815
pop     edx
retn
sub_451840 endp




sub_451859 proc near

var_10= byte ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 4
mov     ecx, eax
mov     [esp+10h+var_10], dl
mov     esi, ebx
call    sub_4DDF54
mov     edi, eax
test    eax, eax
jz      loc_45191E
test    dl, dl
jz      short loc_45187E
cmp     dl, 6
jbe     short loc_45188C

loc_45187E:
mov     eax, edi
call    sub_4DE2F6
xor     eax, eax
jmp     loc_45191E

loc_45188C:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 12h
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 2
or      byte ptr [eax+6], 20h
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+10h], 0
lea     ebx, [eax+88h]
mov     byte ptr [ebx], 3
mov     byte ptr [ebx+1], 3Fh ; '?'
mov     al, [ecx+1]
mov     [ebx+2], al
mov     [ebx+3], dl
mov     byte ptr [ebx+0Bh], 0
mov     dword ptr [ebx+10h], 2E808080h
mov     dword ptr [ebx+0Ch], 0
xor     dh, dh

loc_4518D7:
cmp     dh, [esp+10h+var_10]
jnb     short loc_45191C
xor     eax, eax
mov     al, dh
mov     byte ptr [ebx+eax+4], 7
xor     dl, dl

loc_4518E7:
xor     eax, eax
mov     al, dh
shl     eax, 7
lea     ecx, [ebx+14h]
add     ecx, eax
xor     eax, eax
mov     al, dl
shl     eax, 4
mov     [ecx+eax], esi
mov     byte ptr [ecx+eax+4], 0
mov     byte ptr [ecx+eax+5], 0
mov     word ptr [ecx+eax+6], 0
inc     dl
cmp     dl, 8
jb      short loc_4518E7
inc     dh
add     esi, 8
jmp     short loc_4518D7

loc_45191C:
mov     eax, edi

loc_45191E:
add     esp, 4
pop     edi
pop     esi
pop     ecx
retn
sub_451859 endp




sub_451925 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, ebx
call    sub_4DDF54
mov     edi, eax
test    eax, eax
jz      loc_451A03
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 12h
mov     byte ptr [eax+4], 0
mov     [eax+3], dl
mov     dword ptr [eax+0Ch], 0
lea     ebx, [eax+88h]
cmp     dl, 1
jb      short loc_451964
jbe     short loc_45197B
cmp     dl, 3
jz      short loc_45198F
jmp     short loc_45199C

loc_451964:
test    dl, dl
jnz     short loc_45199C
mov     [ebx], dl
mov     byte ptr [ebx+3], 3
mov     byte ptr [ebx+0Bh], 1
mov     dword ptr [ebx+10h], 2E808080h
jmp     short loc_4519A9

loc_45197B:
mov     byte ptr [ebx], 1
mov     byte ptr [ebx+3], 6
mov     byte ptr [ebx+0Bh], 1

loc_451986:
mov     dword ptr [ebx+10h], 2E404040h
jmp     short loc_4519A9

loc_45198F:
mov     byte ptr [ebx], 4
mov     byte ptr [ebx+3], 6
mov     byte ptr [ebx+0Bh], 2
jmp     short loc_451986

loc_45199C:
mov     eax, edi
call    sub_4DE2F6
xor     eax, eax
pop     edi
pop     esi
pop     ecx
retn

loc_4519A9:
mov     byte ptr [ebx+1], 3Fh ; '?'
mov     al, [ecx+1]
mov     [ebx+2], al
mov     dword ptr [ebx+0Ch], 0
xor     dh, dh

loc_4519BC:
cmp     dh, [ebx+3]
jnb     short loc_451A01
xor     eax, eax
mov     al, dh
mov     byte ptr [ebx+eax+4], 7
xor     dl, dl

loc_4519CC:
xor     eax, eax
mov     al, dh
shl     eax, 7
lea     ecx, [ebx+14h]
add     ecx, eax
xor     eax, eax
mov     al, dl
shl     eax, 4
mov     [ecx+eax], esi
mov     byte ptr [ecx+eax+4], 0
mov     byte ptr [ecx+eax+5], 0
mov     word ptr [ecx+eax+6], 0
inc     dl
cmp     dl, 8
jb      short loc_4519CC
inc     dh
add     esi, 8
jmp     short loc_4519BC

loc_451A01:
mov     eax, edi

loc_451A03:
pop     edi
pop     esi
pop     ecx
retn
sub_451925 endp

and     dl, 3Fh
mov     [eax+89h], dl
retn



sub_451A11 proc near
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+3]
lea     edx, [eax+88h]
call    ds:funcs_451A1E[ecx*4]
pop     edx
pop     ecx
retn
sub_451A11 endp




sub_451A28 proc near

var_18= byte ptr -18h
var_14= byte ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 8
mov     esi, edx
mov     ebx, ds:dword_77E7E0
sar     ebx, 10h
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
mov     edi, eax
mov     ecx, ds:dword_77E7DC+2
sar     ecx, 10h
cmp     ecx, eax
jg      short loc_451A5E
mov     [esp+18h+var_18], 3
jmp     short loc_451A89

loc_451A5E:
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
cmp     ecx, eax
jg      short loc_451A73
mov     [esp+18h+var_18], 2
jmp     short loc_451A89

loc_451A73:
mov     edx, edi
shl     edx, 2
sub     edx, edi
cmp     ecx, edx
jg      short loc_451A84
mov     [esp+18h+var_18], 1
jmp     short loc_451A89

loc_451A84:
xor     ah, ah
mov     [esp+18h+var_18], ah

loc_451A89:
xor     ch, ch

loc_451A8B:
cmp     ch, [esp+18h+var_18]
jnb     short loc_451AD9
xor     edx, edx
mov     dl, ch
mov     dl, [edx+esi+4]
and     edx, 0FFh
sar     edx, 3
mov     [esp+18h+var_14], dl
xor     cl, cl

loc_451AA7:
cmp     cl, [esp+18h+var_14]
jnb     short loc_451AC0
xor     ebx, ebx
mov     bl, cl
xor     edx, edx
mov     dl, ch
mov     eax, esi
call    sub_451D6C
inc     cl
jmp     short loc_451AA7

loc_451AC0:
xor     edx, edx
mov     dl, ch
add     edx, esi
mov     ah, [edx+4]
cmp     ah, 40h ; '@'
jnb     short loc_451AD5
mov     bl, ah
inc     bl
mov     [edx+4], bl

loc_451AD5:
inc     ch
jmp     short loc_451A8B

loc_451AD9:
add     esp, 8
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_451A28 endp

jpt_451B21 dd offset loc_451B28 ; jump table for switch statement
dd offset loc_451B32
dd offset loc_451B38
dd offset loc_451B3E
dd offset loc_451B44
dd offset loc_451B4A



sub_451AF9 proc near

var_18= byte ptr -18h
var_14= byte ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 8
mov     edi, eax
mov     esi, edx
xor     ah, ah
mov     [esp+18h+var_14], ah
xor     ch, ch
jmp     loc_451BF9

loc_451B11:
mov     eax, 2

loc_451B16:
mov     [esi], al
cmp     ch, 5           ; switch 6 cases
ja      short def_451B21 ; jumptable 00451B21 default case
xor     eax, eax
mov     al, ch
jmp     jpt_451B21[eax*4] ; switch jump

loc_451B28:             ; jumptable 00451B21 case 0
test    byte ptr [edi+0Ch], 1

loc_451B2C:
jnz     short loc_451B50
xor     eax, eax
jmp     short loc_451B59

loc_451B32:             ; jumptable 00451B21 case 1
test    byte ptr [edi+0Ch], 2
jmp     short loc_451B2C

loc_451B38:             ; jumptable 00451B21 case 2
test    byte ptr [edi+0Ch], 4
jmp     short loc_451B2C

loc_451B3E:             ; jumptable 00451B21 case 3
test    byte ptr [edi+0Dh], 1
jmp     short loc_451B2C

loc_451B44:             ; jumptable 00451B21 case 4
test    byte ptr [edi+0Dh], 2
jmp     short loc_451B2C

loc_451B4A:             ; jumptable 00451B21 case 5
test    byte ptr [edi+0Dh], 4
jz      short loc_451B57

loc_451B50:
mov     eax, 1
jmp     short loc_451B59

loc_451B57:
xor     eax, eax

loc_451B59:
mov     [esp+18h+var_14], al

def_451B21:             ; jumptable 00451B21 default case
cmp     [esp+18h+var_14], 0
jz      short loc_451BA8
xor     eax, eax
mov     al, ch
mov     al, [esi+eax+4]
and     eax, 0FFh
sar     eax, 3
mov     [esp+18h+var_18], al
xor     cl, cl

loc_451B79:
cmp     cl, [esp+18h+var_18]
jnb     short loc_451B91
xor     ebx, ebx
mov     bl, cl
xor     edx, edx
mov     dl, ch
mov     eax, esi
call    sub_451D6C
inc     cl
jmp     short loc_451B79

loc_451B91:
xor     eax, eax
mov     al, ch
add     eax, esi
mov     bl, [eax+4]
cmp     bl, 40h ; '@'
jnb     short loc_451BE5
mov     bh, bl
inc     bh
mov     [eax+4], bh
jmp     short loc_451BE5

loc_451BA8:
xor     eax, eax
mov     al, ch
add     eax, esi
cmp     byte ptr [eax+4], 7
jbe     short loc_451BE5
mov     byte ptr [eax+4], 7
xor     cl, cl

loc_451BBA:
xor     eax, eax
mov     al, ch
shl     eax, 7
lea     edx, [esi+14h]
add     edx, eax
xor     eax, eax
mov     al, cl
shl     eax, 4
mov     byte ptr [edx+eax+4], 0
mov     byte ptr [edx+eax+5], 0
mov     word ptr [edx+eax+6], 0
inc     cl
cmp     cl, 8
jb      short loc_451BBA

loc_451BE5:
inc     ch
cmp     ch, 6
jnb     loc_451AD9
cmp     ch, 3
jnb     loc_451B11

loc_451BF9:
mov     eax, 1
jmp     loc_451B16
sub_451AF9 endp

db 8Bh, 0C0h
jpt_451C41 dd offset loc_451C48 ; jump table for switch statement
dd offset loc_451C52
dd offset loc_451C58
dd offset loc_451C5E
dd offset loc_451C64
dd offset loc_451C6A



sub_451C1D proc near

var_18= byte ptr -18h
var_14= byte ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 8
mov     edi, eax
mov     esi, edx
xor     ah, ah
mov     [esp+18h+var_18], ah
xor     ch, ch

loc_451C2F:
cmp     ch, [esi+3]
jnb     loc_451AD9
cmp     ch, 5           ; switch 6 cases
ja      short def_451C41 ; jumptable 00451C41 default case
xor     eax, eax
mov     al, ch
jmp     jpt_451C41[eax*4] ; switch jump

loc_451C48:             ; jumptable 00451C41 case 0
test    byte ptr [edi+0Ch], 1

loc_451C4C:
jnz     short loc_451C70
xor     eax, eax
jmp     short loc_451C79

loc_451C52:             ; jumptable 00451C41 case 1
test    byte ptr [edi+0Ch], 2
jmp     short loc_451C4C

loc_451C58:             ; jumptable 00451C41 case 2
test    byte ptr [edi+0Ch], 4
jmp     short loc_451C4C

loc_451C5E:             ; jumptable 00451C41 case 3
test    byte ptr [edi+0Ch], 8
jmp     short loc_451C4C

loc_451C64:             ; jumptable 00451C41 case 4
test    byte ptr [edi+0Ch], 10h
jmp     short loc_451C4C

loc_451C6A:             ; jumptable 00451C41 case 5
test    byte ptr [edi+0Ch], 20h
jz      short loc_451C77

loc_451C70:
mov     eax, 1
jmp     short loc_451C79

loc_451C77:
xor     eax, eax

loc_451C79:
mov     [esp+18h+var_18], al

def_451C41:             ; jumptable 00451C41 default case
cmp     [esp+18h+var_18], 0
jz      short loc_451CC8
xor     eax, eax
mov     al, ch
mov     al, [esi+eax+4]
and     eax, 0FFh
sar     eax, 3
mov     [esp+18h+var_14], al
xor     cl, cl

loc_451C98:
cmp     cl, [esp+18h+var_14]
jnb     short loc_451CB1
xor     ebx, ebx
mov     bl, cl
xor     edx, edx
mov     dl, ch
mov     eax, esi
call    sub_451D6C
inc     cl
jmp     short loc_451C98

loc_451CB1:
xor     eax, eax
mov     al, ch
add     eax, esi
mov     bh, [eax+4]
cmp     bh, 40h ; '@'
jnb     short loc_451D05
mov     cl, bh
inc     cl
mov     [eax+4], cl
jmp     short loc_451D05

loc_451CC8:
xor     eax, eax
mov     al, ch
add     eax, esi
cmp     byte ptr [eax+4], 7
jbe     short loc_451D05
mov     byte ptr [eax+4], 7
xor     cl, cl

loc_451CDA:
xor     eax, eax
mov     al, ch
shl     eax, 7
lea     edx, [esi+14h]
add     edx, eax
xor     eax, eax
mov     al, cl
shl     eax, 4
mov     byte ptr [edx+eax+4], 0
mov     byte ptr [edx+eax+5], 0
mov     word ptr [edx+eax+6], 0
inc     cl
cmp     cl, 8
jb      short loc_451CDA

loc_451D05:
inc     ch
jmp     loc_451C2F
sub_451C1D endp




sub_451D0C proc near

var_10= byte ptr -10h

push    ebx
push    ecx
push    esi
sub     esp, 4
mov     esi, edx
xor     ch, ch
jmp     short loc_451D34

loc_451D18:
xor     edx, edx
mov     dl, ch
add     edx, esi
mov     bl, [edx+4]
cmp     bl, 40h ; '@'
jnb     short loc_451D2D
mov     bh, bl
inc     bh
mov     [edx+4], bh

loc_451D2D:
inc     ch
cmp     ch, 6
jnb     short loc_451D62

loc_451D34:
xor     cl, cl
xor     edx, edx
mov     dl, ch
mov     dl, [edx+esi+4]
and     edx, 0FFh
sar     edx, 3
mov     [esp+10h+var_10], dl

loc_451D4A:
cmp     cl, [esp+10h+var_10]
jnb     short loc_451D18
xor     ebx, ebx
mov     bl, cl
xor     edx, edx
mov     dl, ch
mov     eax, esi
call    sub_451D6C
inc     cl
jmp     short loc_451D4A

loc_451D62:
inc     dword ptr [esi+0Ch]
add     esp, 4
pop     esi
pop     ecx
pop     ebx
retn
sub_451D0C endp




sub_451D6C proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     cl, dl
xor     edx, edx
mov     dl, cl
shl     edx, 7
lea     edi, [eax+14h]
add     edi, edx
xor     edx, edx
mov     dl, bl
shl     edx, 4
lea     ebx, [edi+edx]
movsx   edi, byte ptr [eax]
mov     edx, ebx
call    ds:funcs_451D8E[edi*4]
movzx   edi, byte ptr [esi+1]
and     ecx, 0FFh
mov     edx, 1
shl     edx, cl
test    edi, edx
jz      short loc_451DBC
mov     ecx, [esi+8]
sar     ecx, 18h
mov     edx, [esi+10h]
mov     eax, ebx
call    ds:funcs_451DB5[ecx*4]

loc_451DBC:
pop     edi
pop     esi
pop     ecx
retn
sub_451D6C endp




sub_451DC0 proc near
push    ebx
push    ecx
call    rand_
mov     ecx, eax
xor     ch, ah
and     cl, 7
mov     bl, [edx+4]
test    bl, bl
jnz     short loc_451E31
inc     bl
mov     [edx+4], bl
mov     byte ptr [edx+5], 0
mov     ebx, 40h ; '@'
sub     ebx, ecx
mov     [edx+6], bx
cwde
mov     ecx, eax
sar     ecx, 2
and     ecx, 7
mov     ebx, 40h ; '@'
sub     ebx, ecx
mov     [edx+8], bx
mov     ebx, eax
sar     ebx, 4
and     ebx, 1Fh
mov     ecx, [edx]
movsx   ecx, word ptr [ecx]
sub     ecx, ebx
mov     [edx+0Ah], cx
mov     ecx, [edx]
mov     bx, [ecx+2]
mov     [edx+0Ch], bx
mov     ecx, [edx]
mov     ecx, [ecx+2]
sar     ecx, 10h
sar     eax, 6
and     eax, 1Fh
sub     ecx, eax
mov     [edx+0Eh], cx
pop     ecx
pop     ebx
retn

loc_451E31:
add     byte ptr [edx+5], 2
dec     word ptr [edx+6]
add     word ptr [edx+8], 2
add     ecx, 8
sub     [edx+0Ch], cx
cwde
mov     ecx, eax
sar     ecx, 2
and     ecx, 7
mov     eax, [edx+0Ch]
sar     eax, 10h
add     ecx, 10h
add     eax, ecx
mov     [edx+0Eh], ax
cmp     word ptr [edx+6], 0
jnz     short loc_451E68
mov     byte ptr [edx+4], 0

loc_451E68:
pop     ecx
pop     ebx
retn
sub_451DC0 endp




sub_451E6B proc near
push    ebx
push    ecx
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 7
mov     cl, [edx+4]
test    cl, cl
jnz     short loc_451EDB
inc     cl
mov     [edx+4], cl
mov     byte ptr [edx+5], 0
mov     ecx, 40h ; '@'
sub     ecx, ebx
mov     [edx+6], cx
cwde
mov     ecx, eax
sar     ecx, 1
and     ecx, 7
mov     ebx, 0C4h
sub     ebx, ecx
mov     [edx+8], bx
mov     ebx, eax
sar     ebx, 2
and     ebx, 3Fh
mov     ecx, [edx]
movsx   ecx, word ptr [ecx]
sub     ecx, ebx
mov     [edx+0Ah], cx
mov     ecx, [edx]
mov     bx, [ecx+2]
mov     [edx+0Ch], bx
mov     ecx, [edx]
mov     ecx, [ecx+2]
sar     ecx, 10h
sar     eax, 4
and     eax, 3Fh
sub     ecx, eax
mov     [edx+0Eh], cx
pop     ecx
pop     ebx
retn

loc_451EDB:
inc     byte ptr [edx+5]
dec     word ptr [edx+6]
add     word ptr [edx+8], 3
add     ebx, 0Ch
sub     [edx+0Ah], bx
movsx   ecx, ax
mov     ebx, ecx
sar     ebx, 2
and     ebx, 7
mov     eax, [edx+0Ah]
sar     eax, 10h
add     ebx, 0Ch
sub     eax, ebx
mov     [edx+0Ch], ax
sar     ecx, 4
and     ecx, 7
mov     eax, [edx+0Ch]
sar     eax, 10h
add     ecx, 10h
add     eax, ecx
mov     [edx+0Eh], ax
cmp     word ptr [edx+6], 0
jnz     short loc_451F28
mov     byte ptr [edx+4], 0

loc_451F28:
pop     ecx
pop     ebx
retn
sub_451E6B endp




sub_451F2B proc near
push    ebx
push    ecx
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 7
mov     cl, [edx+4]
test    cl, cl
jnz     short loc_451F9C
inc     cl
mov     [edx+4], cl
mov     byte ptr [edx+5], 0
mov     ecx, 40h ; '@'
sub     ecx, ebx
mov     [edx+6], cx
cwde
mov     ecx, eax
sar     ecx, 2
and     ecx, 7
mov     ebx, 0C4h
sub     ebx, ecx
mov     [edx+8], bx
mov     ebx, eax
sar     ebx, 4
and     ebx, 3Fh
mov     ecx, [edx]
movsx   ecx, word ptr [ecx]
add     ecx, ebx
mov     [edx+0Ah], cx
mov     ecx, [edx]
mov     bx, [ecx+2]
mov     [edx+0Ch], bx
mov     ecx, [edx]
mov     ecx, [ecx+2]
sar     ecx, 10h
sar     eax, 6
and     eax, 3Fh
sub     ecx, eax
mov     [edx+0Eh], cx
pop     ecx
pop     ebx
retn

loc_451F9C:
inc     byte ptr [edx+5]
dec     word ptr [edx+6]
add     word ptr [edx+8], 3
add     ebx, 0Ch
add     [edx+0Ah], bx
movsx   ecx, ax
mov     ebx, ecx
sar     ebx, 2
and     ebx, 7
mov     eax, [edx+0Ah]
sar     eax, 10h
add     ebx, 0Ch
sub     eax, ebx
mov     [edx+0Ch], ax
sar     ecx, 4
and     ecx, 7
mov     eax, [edx+0Ch]
sar     eax, 10h
add     ecx, 10h
add     eax, ecx
mov     [edx+0Eh], ax
cmp     word ptr [edx+6], 0
jnz     short loc_451FE9
mov     byte ptr [edx+4], 0

loc_451FE9:
pop     ecx
pop     ebx
retn
sub_451F2B endp




sub_451FEC proc near
push    ebx
push    ecx
call    rand_
mov     ecx, eax
xor     ch, ah
and     cl, 7
mov     bl, [edx+4]
test    bl, bl
jnz     short loc_45205D
inc     bl
mov     [edx+4], bl
mov     byte ptr [edx+5], 0
mov     ebx, 40h ; '@'
sub     ebx, ecx
mov     [edx+6], bx
cwde
mov     ecx, eax
sar     ecx, 2
and     ecx, 7
mov     ebx, 40h ; '@'
sub     ebx, ecx
mov     [edx+8], bx
mov     ebx, eax
sar     ebx, 4
and     ebx, 1Fh
mov     ecx, [edx]
movsx   ecx, word ptr [ecx]
sub     ecx, ebx
mov     [edx+0Ah], cx
mov     ecx, [edx]
mov     bx, [ecx+2]
mov     [edx+0Ch], bx
mov     ecx, [edx]
mov     ecx, [ecx+2]
sar     ecx, 10h
sar     eax, 6
and     eax, 1Fh
sub     ecx, eax
mov     [edx+0Eh], cx
pop     ecx
pop     ebx
retn

loc_45205D:
add     byte ptr [edx+5], 2
dec     word ptr [edx+6]
add     word ptr [edx+8], 2
add     ecx, 8
sub     [edx+0Ch], cx
cmp     word ptr [edx+6], 0
jnz     short loc_45207C
mov     byte ptr [edx+4], 0

loc_45207C:
pop     ecx
pop     ebx
retn
sub_451FEC endp




sub_45207F proc near
push    ebx
push    ecx
mov     ecx, eax
call    rand_
mov     bl, [edx+4]
test    bl, bl
jnz     short loc_4520FD
inc     bl
mov     [edx+4], bl
mov     byte ptr [edx+5], 0
mov     ebx, eax
xor     bh, ah
and     bl, 3
mov     ecx, 40h ; '@'
sub     ecx, ebx
mov     [edx+6], cx
cwde
mov     ecx, eax
sar     ecx, 2
and     ecx, 1
mov     ebx, 7
sub     ebx, ecx
mov     [edx+8], bx
mov     ebx, eax
sar     ebx, 4
and     ebx, 3
mov     ecx, [edx]
movsx   ecx, word ptr [ecx]
sub     ecx, ebx
mov     [edx+0Ah], cx
mov     ecx, [edx]
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, eax
sar     ebx, 6
and     ebx, 3
sub     ecx, ebx
mov     [edx+0Ch], cx
mov     ecx, [edx]
mov     ecx, [ecx+2]
sar     ecx, 10h
sar     eax, 8
and     eax, 3
sub     ecx, eax
mov     [edx+0Eh], cx
pop     ecx
pop     ebx
retn

loc_4520FD:
cmp     bl, 1
jnz     short loc_452128
add     [edx+5], bl
dec     word ptr [edx+6]
dec     word ptr [edx+0Ch]
cmp     word ptr [edx+6], 0
jnz     short loc_452128
cmp     dword ptr [ecx+0Ch], 12Ch
jle     short loc_452124
mov     byte ptr [edx+4], 2
pop     ecx
pop     ebx
retn

loc_452124:
mov     byte ptr [edx+4], 0

loc_452128:
pop     ecx
pop     ebx
retn
sub_45207F endp




sub_45212B proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
call    sub_4EE133
xor     ebx, ebx
mov     bl, [ecx+5]
mov     edx, ebx
shl     edx, 8
add     edx, ebx
shl     edx, 8
add     edx, ebx
sub     esi, edx
mov     [eax+4], esi
mov     ebx, [ecx+8]
sar     ebx, 10h
and     ebx, 0FFFFh
mov     edx, [ecx+0Ah]
sar     edx, 10h
shl     edx, 10h
or      ebx, edx
mov     [eax+8], ebx
mov     edx, [ecx+0Ch]
sar     edx, 10h
mov     [eax+10h], edx
mov     dword ptr [eax+0Ch], 3D480040h
mov     dword ptr [eax+14h], 4E005Fh
mov     dword ptr [eax+1Ch], 1F40h
mov     dword ptr [eax+24h], 1F5Fh
xor     edx, edx
mov     dx, [ecx+8]
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 8
pop     esi
pop     ecx
pop     ebx
retn
sub_45212B endp




sub_4521A0 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     edi, edx
mov     ebx, [eax+4]
sar     ebx, 10h
sar     ebx, 2
mov     bl, ds:byte_515D74[ebx]
and     ebx, 0FFh
call    sub_4EE133
movzx   esi, byte ptr [ecx+5]
mov     edx, esi
shl     edx, 8
add     edx, esi
shl     edx, 8
add     edx, esi
sub     edi, edx
mov     [eax+4], edi
mov     esi, [ecx+8]
sar     esi, 10h
and     esi, 0FFFFh
mov     edx, [ecx+0Ah]
sar     edx, 10h
shl     edx, 10h
or      esi, edx
mov     [eax+8], esi
mov     edx, [ecx+0Ch]
sar     edx, 10h
mov     [eax+10h], edx
mov     edx, ebx
or      edx, 3D480000h
mov     [eax+0Ch], edx
lea     edx, [ebx+1Fh]
mov     esi, edx
or      esi, 4E0000h
mov     [eax+14h], esi
or      bh, 1Fh
mov     [eax+1Ch], ebx
or      dh, 1Fh
mov     [eax+24h], edx
xor     edx, edx
mov     dx, [ecx+8]
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 8
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4521A0 endp




sub_452234 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     edi, edx
cmp     byte ptr [eax+4], 2
jnb     loc_4522CD
mov     ebx, [ecx+4]
sar     ebx, 10h
sar     ebx, 2
mov     bl, ds:byte_515D74[ebx]
and     ebx, 0FFh
call    sub_4EE133
movzx   esi, byte ptr [ecx+5]
mov     edx, esi
shl     edx, 8
add     edx, esi
shl     edx, 8
add     edx, esi
sub     edi, edx
mov     [eax+4], edi
mov     esi, [ecx+8]
sar     esi, 10h
and     esi, 0FFFFh
mov     edx, [ecx+0Ah]
sar     edx, 10h
shl     edx, 10h
or      esi, edx
mov     [eax+8], esi
mov     edx, [ecx+0Ch]
sar     edx, 10h
mov     [eax+10h], edx
mov     edx, ebx
or      edx, 3D480000h
mov     [eax+0Ch], edx
lea     edx, [ebx+1Fh]
mov     esi, edx
or      esi, 2E0000h
mov     [eax+14h], esi
or      bh, 1Fh
mov     [eax+1Ch], ebx
or      dh, 1Fh
mov     [eax+24h], edx
xor     edx, edx
mov     dx, [ecx+8]
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 8

loc_4522CD:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_452234 endp




sub_4522D2 proc near
push    ecx
push    edx
lea     edx, [eax+408h]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4522DF[ecx*4]
mov     dword ptr [edx+14h], 0
pop     edx
pop     ecx
retn
sub_4522D2 endp




sub_4522F0 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
cmp     byte ptr [ecx+3], 0
jz      short loc_45230D
lea     edx, [ecx+3]
jmp     short loc_45230F

loc_45230D:
xor     edx, edx

loc_45230F:
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
or      byte ptr [ebx], 2
mov     dword ptr [ebx+4], 0
mov     dword ptr [ebx+8], 0
mov     dword ptr [ebx+14h], 0
mov     dword ptr [ebx+18h], 0
mov     word ptr [ebx+34h], 5905h
mov     word ptr [ebx+36h], 0
mov     word ptr [ebx+38h], 26A2h
mov     word ptr [ecx+6Eh], 80h
mov     dx, [ecx+6Eh]
mov     [ecx+0B0h], dx
mov     [ecx+0B2h], dx
mov     dword ptr [ecx+78h], offset unk_515DA0
mov     dword ptr [ecx+10h], offset unk_515DAC
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_4523C3
pop     edx
pop     ecx
pop     ebx
retn
sub_4522F0 endp




sub_4523C3 proc near

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
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_452418[edx*4]
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_452465
mov     al, [ebp+9]
cmp     al, 1
jb      short loc_452436
jbe     short loc_45244F
cmp     al, 2
jz      short loc_45243C
jmp     short loc_452459

loc_452436:
test    al, al
jz      short loc_452455
jmp     short loc_452459

loc_45243C:
mov     eax, ebp
call    sub_4DE2F6
mov     eax, 0Ch
call    sub_47E8B8
jmp     short loc_452459

loc_45244F:
mov     byte ptr [ebp+9], 2
jmp     short loc_452459

loc_452455:
mov     byte ptr [ebp+9], 1

loc_452459:
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0FEh

loc_452465:
mov     al, [ebp+0ADh]
mov     bl, [ebp+0ACh]
cmp     al, bl
jz      short loc_452484
xor     edx, edx
mov     dl, bl
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_45248B

loc_452484:
mov     eax, ebp
call    sub_4DEADD

loc_45248B:
test    byte ptr [ebp+0], 2
jz      short loc_4524A4
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4524A4:
test    byte ptr [ebp+0], 1
jz      short loc_4524BD
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
mov     eax, ebp
call    sub_432697

loc_4524BD:
test    byte ptr [ebp+0], 1
jz      short loc_45250B
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_45250B
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    offset unk_800000
push    4000000h
sub     word ptr [eax+0Eh], 50h ; 'P'
add     eax, 14h
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 0Ch
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 50h ; 'P'
call    sub_4E01FC

loc_45250B:
add     esp, 4

loc_45250E:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4523C3 endp



; Attributes: thunk

sub_452515 proc near
jmp     sub_4DE2F6
sub_452515 endp




sub_45251A proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
lea     ebx, [eax+408h]
mov     ebp, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_45253B
jbe     short loc_452551
jmp     short loc_45250B

loc_45253B:
test    al, al
jnz     short loc_45250B
inc     al
mov     [edi+0Ah], al
mov     byte ptr [edi+0ACh], 14h
mov     word ptr [ebx+4], 3Ch ; '<'

loc_452551:
xor     edx, edx
mov     eax, offset byte_6DD9CC
jmp     short loc_452566

loc_45255A:
add     eax, 4A0h
inc     edx
cmp     dx, 10h
jge     short loc_4525C4

loc_452566:
movsx   ecx, dx
mov     esi, 80000000h
shr     esi, cl
mov     ecx, esi
test    ds:dword_77E778, ecx
jz      short loc_45255A
cmp     byte ptr [eax+2], 13h
jz      short loc_45255A
mov     esi, [eax+12h]
sar     esi, 10h
sar     esi, 9
mov     ecx, ds:dword_515DB5
sar     ecx, 18h
sub     esi, ecx
mov     [esp+1Ch+var_1C], esi
mov     cl, byte ptr [esp+1Ch+var_1C]
cmp     cl, byte ptr ds:dword_515DBA
jnb     short loc_45255A
mov     ecx, [eax+16h]
sar     ecx, 10h
sar     ecx, 9
mov     esi, ds:dword_515DB5+1
sar     esi, 18h
sub     ecx, esi
mov     [esp+1Ch+var_1C], ecx
mov     cl, byte ptr [esp+1Ch+var_1C]
cmp     cl, byte ptr ds:dword_515DBA+1
jnb     short loc_45255A

loc_4525C4:
cmp     dx, 10h
jnz     short loc_4525CF
or      byte ptr [ebx], 8
jmp     short loc_4525D2

loc_4525CF:
and     byte ptr [ebx], 0F7h

loc_4525D2:
mov     dx, [ebx+4]
test    dx, dx
jz      short loc_4525E2
mov     ecx, edx
dec     ecx
mov     [ebx+4], cx

loc_4525E2:
mov     ecx, [ebp+12h]
sar     ecx, 10h
sar     ecx, 9
mov     edx, ds:dword_515DB5
sar     edx, 18h
sub     ecx, edx
mov     edx, [ebp+16h]
sar     edx, 10h
sar     edx, 9
mov     eax, ds:dword_515DB5+1
sar     eax, 18h
sub     edx, eax
mov     eax, edx
mov     esi, [ebp+184h]
cmp     edi, esi
jnz     short loc_452667
mov     dword ptr [ebp+184h], 0
test    byte ptr [ebx], 8
jz      short loc_452646
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_45250B
mov     eax, 60Ch
call    sub_47E8B8
mov     word ptr [esi+56h], 5D4h
jmp     loc_45250B

loc_452646:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_45250B
mov     word ptr [ebx+4], 1C2h
mov     edx, [esi+9]
sar     edx, 18h
add     edx, 4
jmp     loc_4526EE

loc_452667:
test    dword ptr [ebx+14h], 0FFFFFFh
jz      short loc_45268E
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_45250B
mov     word ptr [ebx+4], 1C2h
mov     edx, [edi+9]
sar     edx, 18h
add     edx, 5
jmp     short loc_4526EE

loc_45268E:
xor     edx, edx
mov     dl, byte ptr ds:dword_515DBA
cmp     ecx, edx
jnb     short loc_4526A6
xor     edx, edx
mov     dl, byte ptr ds:dword_515DBA+1
cmp     eax, edx
jb      short loc_4526C2

loc_4526A6:
cmp     word ptr [ebx+4], 0
jnz     loc_45250B
and     byte ptr [ebx], 0FBh
mov     word ptr [ebx+4], 1C2h
mov     edx, [edi+9]
sar     edx, 18h
jmp     short loc_4526EE

loc_4526C2:
mov     dh, [ebx]
test    dh, 4
jnz     loc_45250B
mov     cl, dh
or      cl, 4
mov     [ebx], cl
mov     eax, 60Ah
call    sub_47EA91
mov     eax, 60Bh
call    sub_47EA91
mov     edx, [edi+9]
sar     edx, 18h

loc_4526EE:
mov     eax, 4
call    sub_4A0E24
jmp     loc_45250B
sub_45251A endp




sub_4526FD proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
mov     bl, [eax+0Ah]
test    bl, bl
jbe     short loc_452716
cmp     bl, 1
jz      short loc_45274C
pop     edx
pop     ecx
pop     ebx
retn

loc_452716:
mov     bh, [eax+0A4h]
cmp     bh, 0Fh
jz      short loc_452726
cmp     bh, 23h ; '#'
jnz     short loc_452758

loc_452726:
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 15h
mov     ecx, [eax+9]
sar     ecx, 18h
add     ecx, 6
add     eax, 14h
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
pop     edx
pop     ecx
pop     ebx
retn

loc_45274C:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short loc_452758
or      byte ptr [edx], 1

loc_452758:
pop     edx
pop     ecx
pop     ebx
retn
sub_4526FD endp




sub_45275C proc near

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
sub     esp, 10h
mov     ebp, eax
add     eax, 408h
mov     [esp+28h+var_24], eax
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_452780
cmp     al, 1
jz      short loc_4527B2
jmp     loc_452953

loc_452780:
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 2
mov     word ptr [ebp+44h], 180h
mov     word ptr [ebp+46h], 180h
mov     word ptr [ebp+4Eh], 0C0h
mov     eax, [esp+28h+var_24]
mov     word ptr [eax+4], 8
mov     eax, 60Dh
call    sub_47E8B8

loc_4527B2:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+28h+var_24]
add     edx, 34h ; '4'
lea     eax, [ebp+14h]
mov     ecx, 60h ; '`'
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     ecx, eax
mov     edx, [ebp+14h]
sar     edx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
cmp     edx, eax
jz      short loc_45280D
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax

loc_45280D:
test    ch, 10h
jz      short loc_45282E
cmp     word ptr [ebp+46h], 180h
jz      short loc_452828
xor     ebx, ebx
xor     edx, edx
mov     eax, 117h
call    sub_4D89E4

loc_452828:
mov     word ptr [ebp+46h], 180h

loc_45282E:
mov     eax, [ebp+12h]
sar     eax, 10h
mov     edx, [esp+28h+var_24]
mov     edx, [edx+32h]
sar     edx, 10h
sub     eax, edx
mov     [esp+28h+var_28], eax
mov     edx, [ebp+16h]
sar     edx, 10h
mov     eax, [esp+28h+var_24]
mov     eax, [eax+36h]
sar     eax, 10h
sub     edx, eax
mov     [esp+28h+var_20], edx
mov     eax, [esp+28h+var_24]
mov     si, [eax+4]
test    si, si
jz      short loc_45286D
mov     edi, esi
dec     edi
mov     [eax+4], di

loc_45286D:
mov     eax, [esp+28h+var_24]
cmp     word ptr [eax+4], 0
jnz     loc_452936
call    sub_4DE13B
mov     [esp+28h+var_1C], eax
test    eax, eax
jz      loc_452936
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
mov     edi, offset word_559E88
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, offset unk_559E90
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
mov     eax, [esp+28h+var_24]
mov     ax, [eax+2]
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_515DBE[eax*8]
sar     eax, 10h
push    eax
call    rand_
and     eax, 1Fh
shl     eax, 4
neg     eax
push    eax
mov     eax, [esp+30h+var_24]
mov     ax, [eax+2]
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     ecx, ds:dword_515DBA[eax*8]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
add     ebx, 800h
and     ebx, 0FFFh
mov     edx, offset unk_559E90
mov     eax, offset word_559E88
call    sub_4DD4C5
mov     ax, ds:word_559E88
mov     edx, [esp+28h+var_1C]
mov     [edx+1Ch], ax
mov     ax, ds:word_559E8A
mov     [edx+1Eh], ax
mov     ax, ds:word_559E8C
mov     [edx+20h], ax

loc_452936:
mov     edx, [esp+28h+var_28]
imul    edx, edx
mov     eax, [esp+28h+var_20]
imul    eax, eax
add     eax, edx
cmp     eax, 800h
jge     short loc_452953
mov     eax, [esp+28h+var_24]
or      byte ptr [eax], 1

loc_452953:
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_45296A
xor     ebx, ebx
xor     edx, edx
mov     eax, 116h
call    sub_4D89E4

loc_45296A:
add     esp, 10h
jmp     loc_45250E
sub_45275C endp




sub_452972 proc near
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
call    ds:funcs_452999[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_4529B9
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4529B9:
mov     dl, [ebp+0Ah]
test    dl, dl
jz      short loc_4529C9
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_4529D0

loc_4529C9:
mov     dh, dl
inc     dh
mov     [ebp+0Ah], dh

loc_4529D0:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_452972 endp




sub_4529D7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_4529EF
jbe     short loc_452A02
cmp     al, 2
jz      short loc_452A1B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4529EF:
test    al, al
jnz     short loc_452A2B
mov     eax, esi
call    sub_452A30
inc     byte ptr [esi+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_452A02:
cmp     ds:word_6E23D6, 0
jnz     short loc_452A1B
mov     edx, 3
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [esi+9]

loc_452A1B:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 90h
mov     eax, esi
call    sub_4DD43B

loc_452A2B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4529D7 endp




sub_452A30 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 80h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_452A30 endp




sub_452AC1 proc near

; FUNCTION CHUNK AT 00452B1F SIZE 00000001 BYTES

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
call    ds:funcs_452AE8[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_452B08
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_452B08:
mov     dl, [ebp+0Ah]
test    dl, dl
jz      short loc_452B18
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_452B1F

loc_452B18:
mov     dh, dl
inc     dh
mov     [ebp+0Ah], dh
sub_452AC1 endp

; START OF FUNCTION CHUNK FOR sub_452CF8
;   ADDITIONAL PARENT FUNCTION sub_452AC1

loc_452B1F:
pop     ebp
; END OF FUNCTION CHUNK FOR sub_452CF8
; START OF FUNCTION CHUNK FOR sub_452B3D

loc_452B20:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_452B3D
db 8Dh, 40h, 0
jpt_452B5A dd offset loc_452B61 ; jump table for switch statement
dd offset loc_452B70
dd offset loc_452B81
dd offset loc_452BEE
dd offset loc_452C01



sub_452B3D proc near

; FUNCTION CHUNK AT 00452B20 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_452B5A      ; jumptable 00452B5A default case
and     eax, 0FFh
jmp     jpt_452B5A[eax*4] ; switch jump

loc_452B61:             ; jumptable 00452B5A case 0
mov     eax, esi
call    sub_452C5A

loc_452B68:
inc     byte ptr [esi+9]
jmp     def_452B5A      ; jumptable 00452B5A default case

loc_452B70:             ; jumptable 00452B5A case 1
mov     eax, esi
call    sub_452CF8
test    eax, eax
jz      def_452B5A      ; jumptable 00452B5A default case
jmp     short loc_452B68

loc_452B81:             ; jumptable 00452B5A case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     edi, [esi+14h]
mov     eax, edi
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_452B5A      ; jumptable 00452B5A default case
call    sub_42ABA2
test    eax, eax
jnz     def_452B5A      ; jumptable 00452B5A default case
call    sub_452DE7
mov     ecx, eax
xor     ebx, ebx
mov     edx, 3
mov     eax, edi
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]
mov     byte ptr [esi+0Ah], 0
jmp     short def_452B5A ; jumptable 00452B5A default case

loc_452BEE:             ; jumptable 00452B5A case 3
cmp     byte ptr ds:dword_77E760, 0
jnz     short def_452B5A ; jumptable 00452B5A default case
call    sub_42A98E
jmp     loc_452B68

loc_452C01:             ; jumptable 00452B5A case 4
mov     ebx, [esi+62h]
sar     ebx, 10h
mov     edx, [esi+54h]
sar     edx, 10h
movsx   eax, word ptr [ecx]
call    sub_4DE5F4
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short def_452B5A ; jumptable 00452B5A default case
call    sub_42ABA2
test    eax, eax
jnz     short def_452B5A ; jumptable 00452B5A default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+9], 1

def_452B5A:             ; jumptable 00452B5A default case
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
jmp     loc_452B20
sub_452B3D endp




sub_452C5A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     eax, 408h
or      byte ptr [ecx], 2
mov     word ptr [ecx+64h], 80h
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+58h]
mov     [ecx+54h], dx
mov     dx, [ecx+56h]
mov     [eax], dx
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_515DE4
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_452C5A endp




sub_452CF8 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 00452B1F SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     edi, offset byte_5F8364
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     loc_452DDD
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_452D52
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_452D68

loc_452D52:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_452D68:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 40h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_559EA0, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_559EA4, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_559EA8, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_559EA0
call    sub_42AAA8
mov     eax, 1
jmp     short loc_452DDF

loc_452DDD:
xor     eax, eax

loc_452DDF:
add     esp, 4
jmp     loc_452B1F
sub_452CF8 endp ; sp-analysis failed




sub_452DE7 proc near
push    edx
mov     eax, 211h
call    sub_47E888
test    eax, eax
jz      short loc_452DFF
mov     edx, 0Ah
mov     eax, edx
pop     edx
retn

loc_452DFF:
mov     eax, 545h
call    sub_47E888
test    eax, eax
jz      short loc_452E16
mov     edx, 8
mov     eax, edx
pop     edx
retn

loc_452E16:
mov     eax, 209h
call    sub_47E888
test    eax, eax
jz      short loc_452E37
mov     edx, 7
mov     eax, 20Ah
call    sub_47E8B8
mov     eax, edx
pop     edx
retn

loc_452E37:
mov     edx, 5
mov     eax, edx
pop     edx
retn
sub_452DE7 endp




sub_452E40 proc near
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
mov     dl, [eax+3]
call    ds:funcs_452E67[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_452E87
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_452E87:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_452E97
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_452E9E

loc_452E97:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_452E9E:
pop     ebp

def_452F46:             ; jumptable 00452F46 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_452E40 endp

align 4
jpt_452F46 dd offset loc_452F4D ; jump table for switch statement
dd offset loc_452F5C
dd offset loc_452F6B
dd offset loc_452FAC
dd offset loc_452FBB
dd offset loc_452FAC
dd offset loc_452FE1
dd offset loc_452FE8
dd offset loc_453002
dd offset loc_452FAC
dd offset loc_453046
dd offset loc_453050
dd offset loc_453092
dd offset loc_452FE8
dd offset loc_4530D9
dd offset loc_4530ED
dd offset loc_452FAC
dd offset loc_453139
dd offset loc_452FAC
dd offset loc_45314A
dd offset loc_452FAC
dd offset loc_453154
dd offset loc_452FAC
dd offset loc_45315E
dd offset loc_452FAC
dd offset loc_453168
dd offset loc_452FE8
dd offset loc_453172



sub_452F18 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edi, offset byte_5F8364
mov     eax, offset dword_560BDC
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_452F36
mov     byte ptr [esi+8], 1Bh

loc_452F36:
mov     dl, [esi+8]
cmp     dl, 1Bh         ; switch 28 cases
ja      def_452F46      ; jumptable 00452F46 default case
xor     ecx, ecx
mov     cl, dl
jmp     jpt_452F46[ecx*4] ; switch jump

loc_452F4D:             ; jumptable 00452F46 case 0
mov     eax, esi
call    sub_453283

loc_452F54:
inc     byte ptr [esi+8]
jmp     def_452F46      ; jumptable 00452F46 default case

loc_452F5C:             ; jumptable 00452F46 case 1
cmp     byte ptr [eax+9], 2
jnz     def_452F46      ; jumptable 00452F46 default case
and     byte ptr [edi], 0FDh
jmp     short loc_452F54

loc_452F6B:             ; jumptable 00452F46 case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+14h]
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_452F46      ; jumptable 00452F46 default case
call    sub_42ABA2
test    eax, eax
jnz     def_452F46      ; jumptable 00452F46 default case
mov     edx, 2Ah ; '*'
jmp     short loc_452FC2

loc_452FAC:             ; jumptable 00452F46 cases 3,5,9,16,18,20,22,24
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_452F46      ; jumptable 00452F46 default case
jmp     short loc_452F54

loc_452FBB:             ; jumptable 00452F46 case 4
mov     edx, 2Bh ; '+'

loc_452FC0:
xor     eax, eax

loc_452FC2:
call    sub_4A0E24

loc_452FC7:
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     def_452F46      ; jumptable 00452F46 default case

loc_452FE1:             ; jumptable 00452F46 case 6
mov     edx, 2Ch ; ','
jmp     short loc_452FC0

loc_452FE8:             ; jumptable 00452F46 cases 7,13,26
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_452F46      ; jumptable 00452F46 default case
call    sub_49DF64
or      byte ptr [edi], 2
jmp     loc_452F54

loc_453002:             ; jumptable 00452F46 case 8
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+14h]
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_452F46      ; jumptable 00452F46 default case
call    sub_42ABA2
test    eax, eax
jnz     def_452F46      ; jumptable 00452F46 default case
mov     edx, 2Dh ; '-'
jmp     loc_452FC2

loc_453046:             ; jumptable 00452F46 case 10
mov     edx, 2Eh ; '.'
jmp     loc_452FC0

loc_453050:             ; jumptable 00452F46 case 11
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_452F46      ; jumptable 00452F46 default case
mov     ecx, [eax+1Ch]
cmp     ecx, 102h
jle     short loc_45307A
inc     dl
mov     [esi+8], dl
call    sub_49DF64
or      byte ptr [edi], 2
jmp     def_452F46      ; jumptable 00452F46 default case

loc_45307A:
cmp     ecx, 100h
jge     def_452F46      ; jumptable 00452F46 default case
mov     dword ptr [eax+1Ch], 100h
jmp     def_452F46      ; jumptable 00452F46 default case

loc_453092:             ; jumptable 00452F46 case 12
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+14h]
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_452F46      ; jumptable 00452F46 default case
call    sub_42ABA2
test    eax, eax
jnz     def_452F46      ; jumptable 00452F46 default case
and     byte ptr [edi], 0FDh
mov     edx, 2Fh ; '/'
jmp     loc_452FC2

loc_4530D9:             ; jumptable 00452F46 case 14
cmp     byte ptr [eax+9], 6
jnz     def_452F46      ; jumptable 00452F46 default case
inc     dl
mov     [esi+8], dl
jmp     def_452F46      ; jumptable 00452F46 default case

loc_4530ED:             ; jumptable 00452F46 case 15
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+14h]
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_452F46      ; jumptable 00452F46 default case
call    sub_42ABA2
test    eax, eax
jnz     def_452F46      ; jumptable 00452F46 default case
mov     edx, 32h ; '2'
call    sub_4A0E24
and     byte ptr [edi], 0FDh
jmp     loc_452FC7

loc_453139:             ; jumptable 00452F46 case 17
mov     edx, 59h ; 'Y'
xor     eax, eax
call    sub_4A0E24
jmp     loc_452F54

loc_45314A:             ; jumptable 00452F46 case 19
mov     edx, 33h ; '3'
jmp     loc_452FC0

loc_453154:             ; jumptable 00452F46 case 21
mov     edx, 34h ; '4'
jmp     loc_452FC0

loc_45315E:             ; jumptable 00452F46 case 23
mov     edx, 35h ; '5'
jmp     loc_452FC0

loc_453168:             ; jumptable 00452F46 case 25
mov     edx, 36h ; '6'
jmp     loc_452FC0

loc_453172:             ; jumptable 00452F46 case 27
mov     byte ptr [esi+2], 14h
mov     byte ptr [esi+4], 2
mov     byte ptr [esi+3], 80h
mov     dword ptr [esi+0Ch], 0
mov     dword ptr [esi+8], 0
jmp     def_452F46      ; jumptable 00452F46 default case
sub_452F18 endp

align 4
jpt_4531BE dd offset loc_4531C5 ; jump table for switch statement
dd offset loc_4531D4
dd offset loc_4531E5
dd offset loc_45323D
dd offset loc_453250



sub_4531A8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_4531BE      ; jumptable 004531BE default case
and     eax, 0FFh
jmp     jpt_4531BE[eax*4] ; switch jump

loc_4531C5:             ; jumptable 004531BE case 0
mov     eax, esi
call    sub_453283

loc_4531CC:
inc     byte ptr [esi+8]
jmp     def_4531BE      ; jumptable 004531BE default case

loc_4531D4:             ; jumptable 004531BE case 1
mov     eax, esi
call    sub_45332F
test    eax, eax
jz      def_4531BE      ; jumptable 004531BE default case
jmp     short loc_4531CC

loc_4531E5:             ; jumptable 004531BE case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short def_4531BE ; jumptable 004531BE default case
call    sub_42ABA2
test    eax, eax
jnz     short def_4531BE ; jumptable 004531BE default case
mov     edx, 48h ; 'H'
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     short def_4531BE ; jumptable 004531BE default case

loc_45323D:             ; jumptable 004531BE case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4531BE ; jumptable 004531BE default case
call    sub_42A98E
jmp     loc_4531CC

loc_453250:             ; jumptable 004531BE case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_4531BE ; jumptable 004531BE default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1

def_4531BE:             ; jumptable 004531BE default case
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
sub_4531A8 endp




sub_453283 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 0FF38h
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 80h
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_515E20
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_453283 endp




sub_45332F proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     edi, offset byte_5F8364
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     loc_453414
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_453389
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_45339F

loc_453389:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_45339F:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 40h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_559EB0, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_559EB4, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_559EB8, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_559EB0
call    sub_42AAA8
mov     eax, 1
jmp     short loc_453416

loc_453414:
xor     eax, eax

loc_453416:
add     esp, 4
jmp     loc_452E9E
sub_45332F endp




sub_45341E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     word ptr [eax+15Eh], 4210h
test    byte ptr [eax], 2
jz      short loc_453445
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B

loc_453445:
xor     edx, edx
mov     dl, [esi+3]
mov     eax, esi
call    ds:funcs_45344C[edx*4]
cmp     byte ptr [esi+9], 0
jz      short loc_453467
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
jmp     short loc_453473

loc_453467:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1

loc_453473:
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45341E endp




sub_45347F proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_453485[edx*4]
pop     edx
retn
sub_45347F endp




sub_45348E proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_453494[edx*4]
pop     edx
retn
sub_45348E endp




sub_45349D proc near
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
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
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
mov     edx, [ecx+1Ch]
mov     [ecx+34h], edx
mov     edx, [ecx+20h]
mov     [ecx+38h], edx
mov     edx, [ecx+24h]
mov     [ecx+3Ch], edx
mov     dx, [ecx+14h]
mov     [ecx+2Ch], dx
mov     dx, [ecx+16h]
mov     [ecx+2Eh], dx
mov     dx, [ecx+18h]
mov     [ecx+30h], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+54h]
mov     [ecx+5Ch], dx
mov     dx, [ecx+56h]
mov     [ecx+5Eh], dx
mov     dx, [ecx+58h]
mov     [ecx+60h], dx
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     byte ptr [ecx+9], 0

loc_453577:
mov     word ptr [ecx+64h], 80h
mov     edx, [ecx+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_45349D endp




sub_453597 proc near

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
mov     esi, eax
cmp     eax, ds:dword_5F84E8
jnz     loc_45363C
and     ds:byte_5F8364, 0FDh
or      ds:byte_5F8421, 80h
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     [esp+28h+var_28], eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     [esp+28h+var_24], eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     [esp+28h+var_20], eax
mov     ecx, ds:dword_77E964
lea     ebp, [esi+14h]
mov     edi, offset byte_5F8364
add     edi, 14h
mov     edx, ebp
mov     eax, edi
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, esp
call    sub_42AAA8
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
mov     edx, edi
mov     eax, ebp
call    sub_4DDDB4
mov     ds:word_559EC0, ax
mov     byte ptr [esi+8], 2
jmp     short loc_45365E

loc_45363C:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_45364B
mov     eax, esi
call    sub_4DEADD
jmp     short loc_45365E

loc_45364B:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0

loc_45365E:
add     esp, 10h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_453597 endp




sub_453668 proc near
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
cmp     byte ptr [esi+0Dh], 0
jnz     short loc_45368F
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45368F:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_453668 endp




sub_4536A7 proc near
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
mov     dword ptr [ecx+10h], offset unk_515E54
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
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
mov     edx, [ecx+1Ch]
mov     [ecx+34h], edx
mov     edx, [ecx+20h]
mov     [ecx+38h], edx
mov     edx, [ecx+24h]
mov     [ecx+3Ch], edx
mov     dx, [ecx+14h]
mov     [ecx+2Ch], dx
mov     dx, [ecx+16h]
mov     [ecx+2Eh], dx
mov     dx, [ecx+18h]
mov     [ecx+30h], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+54h]
mov     [ecx+5Ch], dx
mov     dx, [ecx+56h]
mov     [ecx+5Eh], dx
mov     dx, [ecx+58h]
mov     [ecx+60h], dx
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
jmp     loc_453577
sub_4536A7 endp




sub_453782 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, dword ptr ds:unk_559EBE
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short loc_4537EB
call    sub_42ABA2
test    eax, eax
jnz     short loc_4537EB
mov     ecx, [esi+9]
sar     ecx, 18h
lea     eax, [esi+14h]
xor     ebx, ebx
mov     edx, 3
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+9], 1
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4537EB:
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_453782 endp




sub_4537F7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr ds:dword_77E760, 0
jnz     short loc_45381F
call    sub_42A98E
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_45381F:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_4537F7 endp




sub_45382A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+5Ch]
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [ecx+56h]
add     edx, eax
and     dh, 0Fh
mov     [ecx+56h], dx
test    ax, ax
jnz     short loc_453886
call    sub_42ABA2
test    eax, eax
jnz     short loc_453886
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
and     ds:byte_5F8421, 7Fh
or      ds:byte_5F8364, 2
mov     byte ptr [ecx+8], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_453886:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_45382A endp




sub_453891 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     word ptr [eax+15Eh], 4210h
test    byte ptr [eax], 2
jz      short loc_4538B8
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B

loc_4538B8:
mov     dl, [esi+3]
and     dl, 0Fh
and     edx, 0FFh
mov     eax, esi
call    ds:off_515E74[edx*4]
cmp     byte ptr [esi+0Bh], 0
jz      short loc_4538E1
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
jmp     short loc_4538ED

loc_4538E1:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1

loc_4538ED:
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_453891 endp




sub_4538F9 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4538FF[edx*4]
pop     edx
retn
sub_4538F9 endp




sub_453908 proc near

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
mov     esi, eax
cmp     eax, ds:dword_5F84E8
jnz     loc_4539AD
and     ds:byte_5F8364, 0FDh
or      ds:byte_5F8421, 80h
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     [esp+28h+var_28], eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     [esp+28h+var_24], eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     [esp+28h+var_20], eax
mov     ecx, ds:dword_77E964
lea     ebp, [esi+14h]
mov     edi, offset byte_5F8364
add     edi, 14h
mov     edx, ebp
mov     eax, edi
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, esp
call    sub_42AAA8
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
mov     edx, edi
mov     eax, ebp
call    sub_4DDDB4
mov     ds:word_559EC4, ax
mov     byte ptr [esi+8], 2
jmp     short loc_4539CF

loc_4539AD:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_4539BC
mov     eax, esi
call    sub_4DEADD
jmp     short loc_4539CF

loc_4539BC:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0

loc_4539CF:
add     esp, 10h

loc_4539D2:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_453908 endp




sub_4539D9 proc near
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
mov     dword ptr [ecx+10h], offset unk_515E78
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
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
mov     edx, [ecx+1Ch]
mov     [ecx+34h], edx
mov     edx, [ecx+20h]
mov     [ecx+38h], edx
mov     edx, [ecx+24h]
mov     [ecx+3Ch], edx
mov     dx, [ecx+14h]
mov     [ecx+2Ch], dx
mov     dx, [ecx+16h]
mov     [ecx+2Eh], dx
mov     dx, [ecx+18h]
mov     [ecx+30h], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+54h]
mov     [ecx+5Ch], dx
mov     dx, [ecx+56h]
mov     [ecx+5Eh], dx
mov     dx, [ecx+58h]
mov     [ecx+60h], dx
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     word ptr [ecx+64h], 80h
mov     edx, [ecx+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_4539D9 endp




sub_453ACF proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, dword ptr ds:unk_559EC2
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [ecx+56h]
add     edx, eax
and     dh, 0Fh
mov     [ecx+56h], dx
test    ax, ax
jnz     loc_453BDD
call    sub_42ABA2
test    eax, eax
jnz     loc_453BDD
test    byte ptr [ecx+3], 80h
jz      short loc_453B4A
call    sub_4540B7
test    ax, ax
jz      short loc_453B35
mov     edx, 48h ; 'H'
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+9], 0Ah
jmp     loc_453BBC

loc_453B35:
mov     edx, 7Ch ; '|'
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+9], 0FFh
jmp     loc_453BBC

loc_453B4A:
call    sub_4540B7
test    ax, ax
jz      short loc_453B89
mov     eax, 232h
call    sub_47E888
test    eax, eax
jz      short loc_453B77
mov     eax, 233h
call    sub_47E888
test    eax, eax
jnz     short loc_453B77
mov     edx, 66h ; 'f'
jmp     short loc_453B7E

loc_453B77:
mov     edx, 65h ; 'e'
xor     eax, eax

loc_453B7E:
call    sub_4A0E24
mov     byte ptr [ecx+9], 0
jmp     short loc_453BBC

loc_453B89:
mov     eax, 232h
call    sub_47E888
test    eax, eax
jz      short loc_453BAC
mov     eax, 233h
call    sub_47E888
test    eax, eax
jnz     short loc_453BAC
mov     edx, 61h ; 'a'
jmp     short loc_453BB3

loc_453BAC:
mov     edx, 60h ; '`'
xor     eax, eax

loc_453BB3:
call    sub_4A0E24
mov     byte ptr [ecx+9], 8

loc_453BBC:
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Eh], 8
mov     byte ptr [ecx+0Dh], 1
mov     byte ptr [ecx+0Bh], 1
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_453BDD:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_453ACF endp

db 90h
jpt_453D48 dd offset loc_453D4F ; jump table for switch statement
dd offset loc_453D8C
dd offset loc_453D99
dd offset loc_453DA6
dd offset loc_453DB3
dd offset loc_453DD4
dd offset loc_453DF7



sub_453C05 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 5
jb      short loc_453C5A
jbe     loc_453E9C
cmp     al, 8
jb      short loc_453C4D
mov     edx, ds:dword_55BD7C
and     edx, 0FFh
cmp     al, 8
jbe     loc_453F10
cmp     al, 0Ah
jb      loc_453F48
jbe     loc_453FAF
cmp     al, 0FFh
jz      loc_453FE5
jmp     loc_453FFE

loc_453C4D:
cmp     al, 6
jbe     loc_453EC0
jmp     loc_453EE8

loc_453C5A:
cmp     al, 2
jb      short loc_453C71
jbe     loc_453E00
cmp     al, 3
jbe     loc_453E5A
jmp     loc_453E7B

loc_453C71:
test    al, al
ja      loc_453D28
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 1
jnz     short loc_453C9C

loc_453C95:
mov     edx, 63h ; 'c'
jmp     short loc_453CB9

loc_453C9C:
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_453CEE
mov     eax, 0FFFFFFFFh
call    sub_4B6204
cmp     eax, 0FFFFFFFFh
jnz     short loc_453CD1

loc_453CB4:
mov     edx, 68h ; 'h'

loc_453CB9:
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Eh], 8
mov     byte ptr [ecx+0Dh], 1

loc_453CC8:
mov     byte ptr [ecx+9], 0FFh
jmp     loc_453FFE

loc_453CD1:
mov     edx, 58h ; 'X'
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Eh], 8
mov     byte ptr [ecx+0Dh], 1
mov     byte ptr [ecx+9], 1
jmp     loc_453FFE

loc_453CEE:
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 2
jnz     loc_453FFE

loc_453D01:
mov     eax, 5DCh
call    sub_4A62A5
mov     edx, 67h ; 'g'
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Eh], 8
mov     byte ptr [ecx+0Dh], 1
mov     byte ptr [ecx+9], 9
jmp     loc_453FFE

loc_453D28:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 6          ; switch 7 cases
ja      def_453D48      ; jumptable 00453D48 default case
jmp     jpt_453D48[eax*4] ; switch jump

loc_453D4F:             ; jumptable 00453D48 case 0
mov     eax, 1F4h
sub     eax, ds:dword_77E7AC

loc_453D5A:
call    sub_4A62A5

def_453D48:             ; jumptable 00453D48 default case
mov     edx, ds:dword_55BD7C
and     edx, 0FFh
add     edx, 6Ch ; 'l'
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Eh], 8
mov     byte ptr [ecx+0Dh], 1
mov     al, byte ptr ds:dword_55BD7C
inc     al
add     [ecx+9], al
jmp     loc_453FFE

loc_453D8C:             ; jumptable 00453D48 case 1
mov     eax, 0C8h
sub     eax, ds:dword_77E7B0
jmp     short loc_453D5A

loc_453D99:             ; jumptable 00453D48 case 2
mov     eax, 0FAh
sub     eax, ds:dword_77E7B4
jmp     short loc_453D5A

loc_453DA6:             ; jumptable 00453D48 case 3
mov     eax, 0C8h
sub     eax, ds:dword_77E7B8
jmp     short loc_453D5A

loc_453DB3:             ; jumptable 00453D48 case 4
xor     edx, edx
mov     dl, byte ptr ds:dword_77E7E8+3
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, eax
shl     eax, 4
sub     eax, edx
sub     eax, ds:dword_77E7C0
jmp     short loc_453D5A

loc_453DD4:             ; jumptable 00453D48 case 5
xor     edx, edx
mov     dl, byte ptr ds:dword_77E7E8+2
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
mov     edx, eax
shl     eax, 4
sub     eax, edx
sub     eax, ds:dword_77E7BC
jmp     loc_453D5A

loc_453DF7:             ; jumptable 00453D48 case 6
mov     byte ptr [ecx+9], 0FFh
jmp     loc_4539D2

loc_453E00:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
mov     eax, ds:dword_55B994
test    eax, eax
jz      short loc_453E36
add     ds:dword_77E7AC, eax

loc_453E1C:
mov     ebx, 1
xor     edx, edx
neg     eax
call    sub_4B6217
mov     edx, 73h ; 's'
xor     eax, eax
call    sub_4A0E24

loc_453E36:
mov     byte ptr [ecx+9], 0FFh
mov     byte ptr [ecx+0Eh], 8
mov     byte ptr [ecx+0Dh], 1

loc_453E42:
mov     edx, [ecx+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
jmp     loc_4539D2

loc_453E5A:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
mov     edi, ds:dword_55B994
test    edi, edi
jz      short loc_453E36
mov     eax, edi
add     ds:dword_77E7B0, edi
jmp     short loc_453E1C

loc_453E7B:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
mov     ebx, ds:dword_55B994
test    ebx, ebx
jz      short loc_453E36
mov     eax, ebx
add     ds:dword_77E7B4, ebx
jmp     short loc_453E1C

loc_453E9C:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
mov     ebp, ds:dword_55B994
test    ebp, ebp
jz      short loc_453E36
mov     eax, ebp
add     ds:dword_77E7B8, ebp
jmp     loc_453E1C

loc_453EC0:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
mov     esi, ds:dword_55B994
test    esi, esi
jz      loc_453E36
mov     eax, esi
add     ds:dword_77E7C0, esi
jmp     loc_453E1C

loc_453EE8:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
mov     edx, ds:dword_55B994
test    edx, edx
jz      loc_453E36
mov     eax, edx
add     ds:dword_77E7BC, edx
jmp     loc_453E1C

loc_453F10:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
cmp     edx, 1
jb      short loc_453F36
jbe     loc_453C95
cmp     edx, 2
jz      loc_453D01
jmp     loc_453FFE

loc_453F36:
test    edx, edx
jnz     loc_453FFE
mov     edx, 62h ; 'b'
jmp     loc_453CB9

loc_453F48:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
test    byte ptr ds:dword_55BD7C, 0FFh
jz      short loc_453F68
mov     edx, 6Ah ; 'j'
jmp     loc_453CB9

loc_453F68:
mov     eax, 0FFFFFA24h
call    sub_4B6204
cmp     eax, 0FFFFFFFFh
jz      loc_453CB4
mov     edx, 69h ; 'i'
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Eh], 8
mov     byte ptr [ecx+0Dh], 1
mov     ebx, 1
xor     edx, edx
mov     eax, 0FFFFFA24h
call    sub_4B6217
mov     eax, 233h
call    sub_47E8B8
jmp     loc_453CC8

loc_453FAF:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short loc_453FFE
test    edx, edx
jbe     short loc_453FC3
cmp     edx, 1
jz      short loc_453FDB
jmp     short loc_453FFE

loc_453FC3:
mov     eax, 0FFFFFFFFh
call    sub_4B6204
cmp     eax, 0FFFFFFFFh
jz      loc_453CB4
jmp     loc_453CD1

loc_453FDB:
mov     edx, 57h ; 'W'
jmp     loc_453CB9

loc_453FE5:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short loc_453FFE
call    sub_42A98E
mov     byte ptr [ecx+0Eh], 1
mov     byte ptr [ecx+0Dh], 1
inc     byte ptr [ecx+8]

loc_453FFE:
cmp     byte ptr [ecx+0Dh], 0
jnz     loc_453E42
mov     eax, ecx
call    sub_4DEADD
jmp     loc_4539D2
sub_453C05 endp




sub_454014 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+5Ch]
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [ecx+56h]
add     edx, eax
and     dh, 0Fh
mov     [ecx+56h], dx
test    ax, ax
jnz     short loc_4540AC
call    sub_42ABA2
test    eax, eax
jnz     short loc_4540AC
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Bh], 0
and     ds:byte_5F8421, 7Fh
or      ds:byte_5F8364, 2
mov     eax, 23Dh
call    sub_47EA91
mov     eax, 23Eh
call    sub_47EA91
mov     eax, 23Fh
call    sub_47EA91
mov     eax, 240h
call    sub_47EA91
mov     eax, 241h
call    sub_47EA91
mov     eax, 242h
call    sub_47EA91
mov     byte ptr [ecx+8], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4540AC:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_454014 endp




sub_4540B7 proc near
push    ebx
push    edx
xor     ebx, ebx
mov     edx, 205h
mov     eax, 6
call    sub_4A7EE1
cmp     eax, 3
jz      short loc_4540EA
cmp     ds:dword_77E7AC, 1F4h
jz      short loc_4540EA
mov     ebx, 1
mov     eax, 23Dh
call    sub_47E8B8

loc_4540EA:
mov     edx, 0FCh
mov     eax, 6
call    sub_4A7EE1
cmp     eax, 3
jz      short loc_454119
cmp     ds:dword_77E7B0, 0C8h
jz      short loc_454119
mov     ebx, 1
mov     eax, 23Eh
call    sub_47E8B8

loc_454119:
mov     edx, 120h
mov     eax, 6
call    sub_4A7EE1
cmp     eax, 3
jz      short loc_454148
cmp     ds:dword_77E7B4, 0FAh
jz      short loc_454148
mov     ebx, 1
mov     eax, 23Fh
call    sub_47E8B8

loc_454148:
mov     edx, 26h ; '&'
mov     eax, 5
call    sub_4A7EE1
cmp     eax, 3
jz      short loc_454177
cmp     ds:dword_77E7B8, 0C8h
jz      short loc_454177
mov     ebx, 1
mov     eax, 240h
call    sub_47E8B8

loc_454177:
xor     edx, edx
mov     dl, byte ptr ds:dword_77E7E8+3
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, eax
shl     eax, 4
sub     eax, edx
cmp     eax, ds:dword_77E7C0
jz      short loc_4541A7
mov     ebx, 1
mov     eax, 241h
call    sub_47E8B8

loc_4541A7:
xor     edx, edx
mov     dl, byte ptr ds:dword_77E7E8+2
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
mov     edx, eax
shl     eax, 4
sub     eax, edx
cmp     eax, ds:dword_77E7BC
jz      short loc_4541D6
mov     ebx, 1
mov     eax, 242h
call    sub_47E8B8

loc_4541D6:
mov     eax, ebx
pop     edx
pop     ebx
retn
sub_4540B7 endp




sub_4541DB proc near
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
mov     dl, [eax+3]
call    ds:funcs_454202[edx*4]
mov     dl, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     dl, ah
jz      short loc_454228
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_45422F

loc_454228:
mov     eax, ebp
call    sub_4DEADD

loc_45422F:
test    byte ptr [ebp+0], 2
jz      short loc_454248
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_454248:
mov     dl, [ebp+0ACh]
mov     [ebp+0ADh], dl

loc_454254:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4541DB endp




sub_45425B proc near
push    edx
mov     edx, eax
mov     al, [eax+8]
test    al, al
jnz     short loc_45426F
mov     eax, edx
call    sub_454351
inc     byte ptr [edx+8]

loc_45426F:
pop     edx
retn
sub_45425B endp

db 8Bh, 0C0h
jpt_45429D dd offset loc_4542A4 ; jump table for switch statement
dd offset loc_4542B3
dd offset loc_4542C4
dd offset loc_45430E
dd offset loc_45431E



sub_454287 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_45429D      ; jumptable 0045429D default case
and     eax, 0FFh
jmp     jpt_45429D[eax*4] ; switch jump

loc_4542A4:             ; jumptable 0045429D case 0
mov     eax, esi
call    sub_454351

loc_4542AB:
inc     byte ptr [esi+8]
jmp     def_45429D      ; jumptable 0045429D default case

loc_4542B3:             ; jumptable 0045429D case 1
mov     eax, esi
call    sub_4543D0
test    eax, eax
jz      def_45429D      ; jumptable 0045429D default case
jmp     short loc_4542AB

loc_4542C4:             ; jumptable 0045429D case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short def_45429D ; jumptable 0045429D default case
call    sub_42ABA2
test    eax, eax
jnz     short def_45429D ; jumptable 0045429D default case
mov     edx, 14h
call    sub_4A0E24
mov     byte ptr [esi+0ACh], 8
jmp     short loc_4542AB

loc_45430E:             ; jumptable 0045429D case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_45429D ; jumptable 0045429D default case
call    sub_42A98E
jmp     short loc_4542AB

loc_45431E:             ; jumptable 0045429D case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_45429D ; jumptable 0045429D default case
and     ds:byte_5F8421, 7Fh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1

def_45429D:             ; jumptable 0045429D default case
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
sub_454287 endp




sub_454351 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_515E8C
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
pop     edx
pop     ecx
retn
sub_454351 endp




sub_4543D0 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     edi, offset byte_5F8364
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     loc_4544B5
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_45442A
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_454440

loc_45442A:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_454440:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 80h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_559EC8, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_559ECC, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_559ED0, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_559EC8
call    sub_42AAA8
mov     eax, 1
jmp     short loc_4544B7

loc_4544B5:
xor     eax, eax

loc_4544B7:
add     esp, 4
jmp     loc_454254
sub_4543D0 endp




sub_4544BF proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4544BF endp




sub_4544ED proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_454509
xor     ebx, ebx
mov     edx, 15h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_454509:
pop     edx
pop     ecx
pop     ebx
retn
sub_4544ED endp




sub_45450D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_454529
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_454529:
pop     edx
pop     ecx
pop     ebx
retn
sub_45450D endp




sub_45452D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_454549
xor     ebx, ebx
mov     edx, 17h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_454549:
pop     edx
pop     ecx
pop     ebx
retn
sub_45452D endp




sub_45454D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_454569
xor     ebx, ebx
mov     edx, 18h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_454569:
pop     edx
pop     ecx
pop     ebx
retn
sub_45454D endp




sub_45456D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_454589
xor     ebx, ebx
mov     edx, 19h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_454589:
pop     edx
pop     ecx
pop     ebx
retn
sub_45456D endp




sub_45458D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4545A9
xor     ebx, ebx
mov     edx, 1Dh
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4545A9:
pop     edx
pop     ecx
pop     ebx
retn
sub_45458D endp




sub_4545AD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4545C9
xor     ebx, ebx
mov     edx, 1Ah
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4545C9:
pop     edx
pop     ecx
pop     ebx
retn
sub_4545AD endp




sub_4545CD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4545E9
xor     ebx, ebx
mov     edx, 1Bh
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4545E9:
pop     edx
pop     ecx
pop     ebx
retn
sub_4545CD endp




sub_4545ED proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4545F7[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_454616
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_454616:
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_454644
mov     dh, [ecx+0Fh]
inc     dh
mov     [ecx+0Fh], dh
mov     bl, dh
and     bl, 1Fh
mov     [ecx+0Fh], bl
mov     edx, [ecx+0Bh]
sar     edx, 18h
shl     edx, 5
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_515E98[edx+eax]
jmp     short loc_454650

loc_454644:
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     al, ds:byte_515ED8[eax]

loc_454650:
mov     [ecx+0FCh], al
pop     edx
pop     ecx
pop     ebx
retn
sub_4545ED endp




sub_45465A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_45466D
mov     eax, esi
call    sub_4544BF

loc_45466D:
mov     eax, esi
call    sub_4545ED
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45465A endp




sub_45468C proc near

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
call    ds:funcs_4546E1[edx*4]
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_454707
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_45470E

loc_454707:
mov     eax, ebp
call    sub_4DEB53

loc_45470E:
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+3Eh]
mov     ds:word_560E16, ax
mov     eax, ebp
call    sub_4DF795
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 8
jz      short loc_45476F
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+190h]
movsd
movsd
push    80h
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
mov     edx, 20h ; ' '
call    sub_4E01FC

loc_45476F:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+14h], 0

loc_45479F:
add     esp, 4

loc_4547A2:
pop     ebp

def_454CD4:             ; jumptable 00454CD4 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45468C endp




sub_4547A9 proc near
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
mov     al, [ecx+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [esi], 1Eh
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+14h], 0
lea     eax, [esi+24h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     word ptr [esi+3Ch], 0
mov     word ptr [esi+3Eh], 0
xor     eax, eax
mov     al, [ecx+2]
mov     esi, ds:dword_55A10C
mov     esi, [esi+eax*4]
xor     eax, eax
mov     al, [esi+8]
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_515F2C
mov     dword ptr [ecx+10h], offset unk_515F38
mov     al, [ecx+3]
cmp     al, 1
jb      short loc_454875
jbe     short loc_454890
cmp     al, 2
jz      short loc_4548A4
jmp     short loc_4548BD

loc_454875:
test    al, al
jnz     short loc_4548BD
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 1
jmp     short loc_4548B6

loc_454890:
mov     byte ptr [ecx+8], 5
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
jmp     short loc_4548B6

loc_4548A4:
mov     byte ptr [ecx+8], 4
mov     byte ptr [ecx+9], 3
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx

loc_4548B6:
mov     eax, ecx
call    sub_4DE96B

loc_4548BD:
mov     word ptr [ecx+15Eh], 4210h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4547A9 endp

align 4
jpt_454929 dd offset loc_45493C ; jump table for switch statement
dd offset loc_454930
dd offset loc_454936
dd offset def_454929
dd offset loc_454936



sub_4548E0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
lea     ecx, [eax+408h]
test    byte ptr [ecx], 10h
jz      short loc_4548F8
mov     eax, edx
call    sub_455287

loc_4548F8:
xor     ebx, ebx
mov     bl, [edx+9]
mov     eax, edx
call    ds:funcs_4548FF[ebx*4]
mov     bx, [ecx+0Ah]
test    bx, bx
jz      short loc_454916
mov     esi, ebx
dec     esi
mov     [ecx+0Ah], si

loc_454916:
test    byte ptr [ecx], 1
jz      short loc_454949
mov     bl, [edx+9]
cmp     bl, 4           ; switch 5 cases
ja      short def_454929 ; jumptable 00454929 default case, case 3
and     ebx, 0FFh
jmp     jpt_454929[ebx*4] ; switch jump

loc_454930:             ; jumptable 00454929 case 1
mov     byte ptr [edx+9], 4
jmp     short def_454929 ; jumptable 00454929 default case, case 3

loc_454936:             ; jumptable 00454929 cases 2,4
mov     byte ptr [edx+9], 2
jmp     short def_454929 ; jumptable 00454929 default case, case 3

loc_45493C:             ; jumptable 00454929 case 0
mov     byte ptr [edx+9], 0

def_454929:             ; jumptable 00454929 default case, case 3
mov     word ptr [edx+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_454949:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4548E0 endp

align 10h
jpt_4549B1 dd offset loc_4549CD ; jump table for switch statement
dd offset loc_4549C7
dd offset def_4549B1
dd offset loc_4549BE
dd offset loc_4549BE
dd offset loc_4549B8



sub_454968 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
lea     ecx, [eax+408h]
test    byte ptr [ecx], 10h
jz      short loc_454980
mov     eax, edx
call    sub_455287

loc_454980:
xor     ebx, ebx
mov     bl, [edx+9]
mov     eax, edx
call    ds:funcs_4548FF[ebx*4]
mov     bx, [ecx+0Ah]
test    bx, bx
jz      short loc_45499E
mov     esi, ebx
dec     esi
mov     [ecx+0Ah], si

loc_45499E:
test    byte ptr [ecx], 1
jz      short loc_4549DA
mov     bl, [edx+9]
cmp     bl, 5           ; switch 6 cases
ja      short def_4549B1 ; jumptable 004549B1 default case, case 2
and     ebx, 0FFh
jmp     jpt_4549B1[ebx*4] ; switch jump

loc_4549B8:             ; jumptable 004549B1 case 5
mov     byte ptr [edx+9], 3
jmp     short def_4549B1 ; jumptable 004549B1 default case, case 2

loc_4549BE:             ; jumptable 004549B1 cases 3,4
mov     eax, edx
call    sub_4551B7
jmp     short def_4549B1 ; jumptable 004549B1 default case, case 2

loc_4549C7:             ; jumptable 004549B1 case 1
mov     byte ptr [edx+9], 4
jmp     short def_4549B1 ; jumptable 004549B1 default case, case 2

loc_4549CD:             ; jumptable 004549B1 case 0
mov     byte ptr [edx+9], 0

def_4549B1:             ; jumptable 004549B1 default case, case 2
mov     word ptr [edx+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_4549DA:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_454968 endp




sub_4549DF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+408h]
test    byte ptr [edx], 10h
jz      short loc_4549F7
mov     eax, ecx
call    sub_455287

loc_4549F7:
xor     ebx, ebx
mov     bl, [ecx+9]
mov     eax, ecx
call    ds:funcs_4548FF[ebx*4]
mov     bx, [edx+0Ah]
test    bx, bx
jz      short loc_454A15
mov     esi, ebx
dec     esi
mov     [edx+0Ah], si

loc_454A15:
test    byte ptr [edx], 1
jz      short loc_454A27
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
and     byte ptr [edx], 0FEh

loc_454A27:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4549DF endp



; Attributes: thunk

sub_454A2C proc near
jmp     sub_4DE2F6
sub_454A2C endp




sub_454A31 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_454A49
cmp     bl, 1
jz      short loc_454A60
pop     edx
pop     ebx
retn

loc_454A49:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0
mov     word ptr [eax+4], 1Eh
mov     word ptr [eax+8], 0

loc_454A60:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_454A71
or      byte ptr [eax], 1

loc_454A71:
pop     edx
pop     ebx
retn
sub_454A31 endp




sub_454A74 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_454A91
cmp     al, 1
jz      short loc_454AF2
jmp     def_454CD4      ; jumptable 00454CD4 default case

loc_454A91:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1
mov     word ptr [esi+44h], 31h ; '1'
xor     eax, eax
mov     ax, [edi+3Ch]
mov     edx, ds:dword_515F46[eax*8]
sar     edx, 10h
sar     edx, 1
mov     eax, ds:dword_515F42[eax*8]
sar     eax, 10h
add     eax, edx
mov     [edi+34h], ax
mov     word ptr [edi+36h], 0
xor     eax, eax
mov     ax, [edi+3Ch]
mov     edx, ds:(dword_515F46+2)[eax*8]
sar     edx, 10h
sar     edx, 1
mov     eax, ds:(dword_515F42+2)[eax*8]
sar     eax, 10h
add     eax, edx
mov     [edi+38h], ax
mov     word ptr [edi+8], 0

loc_454AF2:
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+34h]
lea     eax, [esi+14h]
mov     ecx, 8
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
mov     eax, esi
call    sub_42DE56
mov     edx, eax
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+14h]
sar     eax, 10h
mov     ebx, [esi+2Ch]
sar     ebx, 10h
sub     eax, ebx
test    eax, eax
jge     short loc_454B58
neg     eax

loc_454B58:
cmp     eax, 20h ; ' '
jle     short loc_454B7E
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+56h], ax
mov     ax, [esi+2Eh]
mov     [esi+16h], ax
mov     eax, [esi+38h]
mov     [esi+20h], eax
jmp     def_454CD4      ; jumptable 00454CD4 default case

loc_454B7E:
test    dh, 0Fh
jz      short loc_454B91
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+56h], ax

loc_454B91:
xor     eax, eax
mov     ax, [edi+3Ch]
shl     eax, 3
mov     edx, ds:dword_515F42[eax]
sar     edx, 10h
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     ebx, edx
mov     edx, ebx
mov     ebx, ds:(dword_515F42+2)[eax]
sar     ebx, 10h
mov     esi, [esi+16h]
sar     esi, 10h
sub     esi, ebx
mov     ebx, ds:dword_515F46[eax]
sar     ebx, 10h
cmp     edx, ebx
jnb     def_454CD4      ; jumptable 00454CD4 default case
mov     eax, ds:(dword_515F46+2)[eax]
sar     eax, 10h
cmp     esi, eax
jnb     def_454CD4      ; jumptable 00454CD4 default case
mov     bx, [edi+3Ch]
inc     ebx
mov     [edi+3Ch], bx
cmp     bx, 3
jbe     short loc_454BF5
mov     word ptr [edi+3Ch], 0

loc_454BF5:
or      byte ptr [edi], 1
jmp     def_454CD4      ; jumptable 00454CD4 default case
sub_454A74 endp

align 10h
jpt_454C2C dd offset loc_454C33 ; jump table for switch statement
dd offset loc_454C4A
dd offset loc_454C72
dd offset loc_454C91



sub_454C10 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
lea     edx, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_454C2C      ; jumptable 00454C2C default case
and     eax, 0FFh
jmp     jpt_454C2C[eax*4] ; switch jump

loc_454C33:             ; jumptable 00454C2C case 0
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [ecx+0ACh], 10h
mov     word ptr [edx+4], 14h
mov     word ptr [edx+8], 0

loc_454C4A:             ; jumptable 00454C2C case 1
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     short def_454C2C ; jumptable 00454C2C default case
mov     byte ptr [ecx+0Ah], 2
mov     byte ptr [ecx+0ACh], 11h
mov     ax, [edx+2]
xor     ah, ah
and     al, 3
imul    eax, 17h
mov     [edx+4], ax

loc_454C72:             ; jumptable 00454C2C case 2
mov     di, [edx+4]
dec     edi
mov     [edx+4], di
test    di, di
jge     short def_454C2C ; jumptable 00454C2C default case
mov     byte ptr [ecx+0Ah], 3
mov     byte ptr [ecx+0ACh], 17h
mov     word ptr [edx+4], 14h

loc_454C91:             ; jumptable 00454C2C case 3
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     short def_454C2C ; jumptable 00454C2C default case
or      byte ptr [edx], 1

def_454C2C:             ; jumptable 00454C2C default case
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_454C10 endp

align 4
jpt_454CD4 dd offset loc_454CDB ; jump table for switch statement
dd offset loc_454D12
dd offset loc_454D8C
dd offset loc_454E10



sub_454CB8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_454CD4      ; jumptable 00454CD4 default case
xor     edx, edx
mov     dl, al
jmp     jpt_454CD4[edx*4] ; switch jump

loc_454CDB:             ; jumptable 00454CD4 case 0
mov     byte ptr [edi+0Ah], 1
mov     ax, [edi+56h]
add     eax, 10h
xor     al, al
and     ah, 0Fh
mov     [edi+56h], ax
test    byte ptr [esi], 40h
jz      short loc_454CFF
mov     byte ptr [edi+0ACh], 12h
jmp     short loc_454D06

loc_454CFF:
mov     byte ptr [edi+0ACh], 13h

loc_454D06:
mov     word ptr [esi+4], 27h ; '''
mov     word ptr [esi+8], 0

loc_454D12:             ; jumptable 00454CD4 case 1
mov     ax, [esi+4]
dec     eax
mov     [esi+4], ax
test    ax, ax
jge     short loc_454D54
test    byte ptr [esi], 40h
jz      short loc_454D3B
mov     ax, [edi+56h]
add     ah, 4
and     ah, 0Fh
mov     [edi+56h], ax
mov     word ptr [esi+3Eh], 0E53h
jmp     short loc_454D67

loc_454D3B:
mov     ax, [edi+56h]
sub     eax, 400h
and     ah, 0Fh
mov     [edi+56h], ax
mov     word ptr [esi+3Eh], 1ADh
jmp     short loc_454D67

loc_454D54:
test    byte ptr [esi], 40h
jnz     loc_454E5B

loc_454D5D:
add     word ptr [esi+3Eh], 0Bh
jmp     def_454CD4      ; jumptable 00454CD4 default case

loc_454D67:
mov     byte ptr [edi+0Ah], 2
mov     byte ptr [edi+0ACh], 14h
mov     word ptr [edi+44h], 26h ; '&'
mov     ax, [esi+2]
xor     ah, ah
and     al, 3
inc     eax
shl     eax, 5
mov     [esi+6], ax
mov     [esi+4], ax

loc_454D8C:             ; jumptable 00454CD4 case 2
mov     edx, [edi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
mov     eax, edi
call    sub_42DE56
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     short loc_454DD7
mov     byte ptr [edi+0Ah], 3
test    byte ptr [esi], 40h
jz      short loc_454DC4
mov     byte ptr [edi+0ACh], 13h
jmp     short loc_454DCB

loc_454DC4:
mov     byte ptr [edi+0ACh], 12h

loc_454DCB:
mov     word ptr [esi+3Ch], 0
mov     word ptr [esi+4], 27h ; '''

loc_454DD7:
test    ah, 0Fh
jz      def_454CD4      ; jumptable 00454CD4 default case
mov     byte ptr [edi+0Ah], 3
test    byte ptr [esi], 40h
jz      short loc_454DF8
mov     byte ptr [edi+0ACh], 13h
mov     word ptr [esi+3Ch], 1
jmp     short loc_454E05

loc_454DF8:
mov     byte ptr [edi+0ACh], 12h
mov     word ptr [esi+3Ch], 2

loc_454E05:
mov     word ptr [esi+4], 27h ; '''
jmp     def_454CD4      ; jumptable 00454CD4 default case

loc_454E10:             ; jumptable 00454CD4 case 3
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     short loc_454E52
mov     byte ptr [edi+0ACh], 0
test    byte ptr [esi], 40h
jz      short loc_454E36
mov     ax, [edi+56h]
sub     eax, 400h
jmp     short loc_454E3D

loc_454E36:
mov     ax, [edi+56h]
add     ah, 4

loc_454E3D:
and     ah, 0Fh
mov     [edi+56h], ax
mov     word ptr [esi+3Eh], 0
or      byte ptr [esi], 1
jmp     def_454CD4      ; jumptable 00454CD4 default case

loc_454E52:
test    byte ptr [esi], 40h
jnz     loc_454D5D

loc_454E5B:
sub     word ptr [esi+3Eh], 0Bh
jmp     def_454CD4      ; jumptable 00454CD4 default case
sub_454CB8 endp

align 4
jpt_454EA2 dd offset loc_454EA9 ; jump table for switch statement
dd offset loc_454F95
dd offset loc_455009
dd offset loc_455033



sub_454E78 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     esi, eax
lea     edi, [eax+408h]
mov     edx, offset byte_5F8364
mov     [esp+20h+var_1C], edx
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_454EA2      ; jumptable 00454EA2 default case
and     eax, 0FFh
jmp     jpt_454EA2[eax*4] ; switch jump

loc_454EA9:             ; jumptable 00454EA2 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [edx+14h]
mov     [esp+20h+var_20], eax
lea     ebp, [esi+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_454EEE
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+20h+var_20]
mov     eax, ebp
call    sub_4DE552
neg     eax
jmp     short loc_454F03

loc_454EEE:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+20h+var_20]
mov     eax, ebp
call    sub_4DE552

loc_454F03:
sar     eax, 3
mov     [esi+64h], ax
mov     word ptr [edi+3Eh], 0
mov     eax, [esp+20h+var_1C]
and     byte ptr [eax], 0FDh
mov     al, ds:byte_77E952
mov     ds:byte_559ED8, al
mov     al, ds:byte_77E953
mov     ds:byte_559ED9, al
mov     ds:byte_77E952, 10h
mov     ds:byte_77E953, 0F0h
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_77E9C8, eax
mov     eax, [esi+190h]
sar     eax, 10h
mov     ds:dword_77E9CC, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_77E9D0, eax
mov     ds:dword_77E980, 100h
lea     edx, [esi+14h]
mov     eax, [esp+20h+var_1C]
add     eax, 14h
call    sub_4DDDB4
add     eax, 800h
mov     ds:dword_77E984, eax
mov     eax, ds:dword_77E964
mov     ds:dword_77E988, eax
jmp     def_454EA2      ; jumptable 00454EA2 default case

loc_454F95:             ; jumptable 00454EA2 case 1
mov     ch, ds:byte_77E952
test    ch, ch
jz      short loc_454FA8
mov     al, ch
dec     al
mov     ds:byte_77E952, al

loc_454FA8:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [esp+20h+var_1C]
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_454EA2      ; jumptable 00454EA2 default case
cmp     ds:byte_77E952, 1
jnz     def_454EA2      ; jumptable 00454EA2 default case
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 8
mov     edx, [esi+0Ah]
sar     edx, 18h
xor     eax, eax
call    sub_4A0E24
mov     word ptr [edi+4], 78h ; 'x'
jmp     def_454EA2      ; jumptable 00454EA2 default case

loc_455009:             ; jumptable 00454EA2 case 2
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     short loc_455024
mov     byte ptr [esi+0ADh], 0FFh
mov     word ptr [edi+4], 78h ; 'x'

loc_455024:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_454EA2 ; jumptable 00454EA2 default case
mov     byte ptr [esi+0Ah], 3
jmp     short def_454EA2 ; jumptable 00454EA2 default case

loc_455033:             ; jumptable 00454EA2 case 3
mov     ah, ds:byte_77E952
cmp     ah, 10h
jb      short loc_455077
mov     al, ds:byte_559ED8
mov     ds:byte_77E952, al
mov     al, ds:byte_559ED9
mov     ds:byte_77E953, al
mov     eax, ds:dword_77E95C
mov     ds:dword_77E980, eax
and     ds:byte_5F8421, 7Fh
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
or      ds:byte_5F8364, 2
or      byte ptr [edi], 11h
jmp     short def_454EA2 ; jumptable 00454EA2 default case

loc_455077:
mov     dl, ah
inc     dl
mov     ds:byte_77E952, dl

def_454EA2:             ; jumptable 00454EA2 default case
add     esp, 8
jmp     loc_4547A2
sub_454E78 endp




sub_455089 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
lea     esi, [eax+408h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4550AE
cmp     al, 1
jz      loc_45517F
jmp     loc_45479F

loc_4550AE:
mov     byte ptr [edi+0Ah], 1
mov     byte ptr [edi+0ACh], 1
cmp     byte ptr [edi+3], 0
jnz     short loc_455103
movzx   ebp, word ptr [esi+3Ch]
mov     eax, ds:dword_515F46[ebp*8]
sar     eax, 10h
sar     eax, 1
mov     edx, ds:dword_515F42[ebp*8]
sar     edx, 10h
add     eax, edx
mov     [esi+34h], ax
mov     word ptr [esi+36h], 0
movzx   ebp, word ptr [esi+3Ch]
mov     eax, ds:(dword_515F46+2)[ebp*8]
sar     eax, 10h
sar     eax, 1
mov     edx, ds:(dword_515F42+2)[ebp*8]
sar     edx, 10h
add     eax, edx
jmp     short loc_45511B

loc_455103:
mov     ax, [edi+14h]
mov     [esi+34h], ax
mov     word ptr [esi+36h], 0
mov     ax, [edi+18h]
sub     eax, 100h

loc_45511B:
mov     [esi+38h], ax
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     ebp, [esi+34h]
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
mov     ecx, 800h
mov     edx, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_455157
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
neg     eax
jmp     short loc_45516C

loc_455157:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552

loc_45516C:
sar     eax, 3
mov     [edi+64h], ax
mov     word ptr [esi+4], 8
mov     word ptr [esi+8], 0

loc_45517F:
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jg      short loc_455190
or      byte ptr [esi], 1

loc_455190:
mov     ecx, [edi+62h]
sar     ecx, 10h
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+34h]
lea     eax, [edi+14h]
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
jmp     loc_45479F
sub_455089 endp




sub_4551B7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     edx, [eax+408h]
xor     ecx, ecx
xor     ebx, ebx
jmp     short loc_4551D1

loc_4551CA:
inc     ebx
cmp     bx, 3
jge     short loc_455202

loc_4551D1:
xor     esi, esi
mov     si, [edx+3Ch]
mov     eax, esi
shl     eax, 2
sub     eax, esi
mov     esi, eax
movsx   eax, bx
mov     al, ds:byte_515F64[esi+eax]
xor     ah, ah
add     ecx, eax
mov     ax, [edx+2]
xor     ah, ah
and     al, 0Fh
and     eax, 0FFFFh
movsx   esi, cx
cmp     eax, esi
jge     short loc_4551CA

loc_455202:
cmp     bx, 1
jb      short loc_455212
jbe     short loc_45521D
cmp     bx, 2
jz      short loc_455226
jmp     short loc_45522D

loc_455212:
test    bx, bx
jnz     short loc_45522D
mov     byte ptr [edi+9], 3
jmp     short loc_45522D

loc_45521D:
mov     byte ptr [edi+9], 5
or      byte ptr [edx], 40h
jmp     short loc_45522D

loc_455226:
mov     byte ptr [edi+9], 5
and     byte ptr [edx], 0BFh

loc_45522D:
mov     eax, 1
jmp     def_454CD4      ; jumptable 00454CD4 default case
sub_4551B7 endp




sub_455237 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
mov     ecx, [edx+14h]
and     ecx, 0FFFFFFh
jz      short loc_45527E
test    byte ptr [edx+17h], 18h
jz      short loc_45527E
mov     bx, [eax+6Eh]
mov     [eax+0B2h], bx
sub     ebx, ecx
mov     [eax+6Eh], bx
test    bx, bx
jg      short loc_455275
mov     bh, [edx]
and     bh, 0F9h
mov     [edx], bh
mov     cl, bh
or      cl, 4
mov     [edx], cl

loc_455275:
mov     word ptr [eax+15Eh], 7FFFh

loc_45527E:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn
sub_455237 endp




sub_455287 proc near
push    ecx
push    edx
lea     edx, [eax+408h]
mov     ecx, ds:dword_5F84E8
cmp     eax, ecx
jnz     short loc_4552AD
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
or      ds:byte_5F8421, 80h
and     byte ptr [edx], 0EFh

loc_4552AD:
mov     eax, 1
pop     edx
pop     ecx
retn
sub_455287 endp




sub_4552B5 proc near
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
mov     dl, [eax+3]
call    ds:funcs_4552DC[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_4552FC
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4552FC:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_45530C
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_455313

loc_45530C:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_455313:
pop     ebp

loc_455314:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4552B5 endp




sub_45531A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edx, offset byte_5F8364
mov     eax, 618h
call    sub_47E888
test    eax, eax
jz      short loc_455338
mov     byte ptr [esi+8], 1Ah

loc_455338:
mov     al, [esi+8]
lea     edi, [esi+14h]
cmp     al, 16h
jb      short loc_455368
jbe     loc_455472
cmp     al, 18h
jb      loc_45548B
jbe     loc_45549F
cmp     al, 19h
jbe     loc_455504
cmp     al, 1Ah
jz      loc_455549
jmp     short loc_455314

loc_455368:
cmp     al, 1
jb      short loc_45537D
jbe     short loc_45538D
cmp     al, 14h
jb      short loc_455314
jbe     loc_455414
jmp     loc_455453

loc_45537D:
test    al, al
jnz     short loc_455314
mov     eax, esi
call    sub_455555
jmp     loc_45546A

loc_45538D:
mov     eax, 60Fh
call    sub_47E888
test    eax, eax
jz      loc_455314
mov     word ptr [edx+538h], 0F1F0h
mov     word ptr [edx+53Ah], 0FFFFh
mov     word ptr [edx+53Ch], 0E10h
mov     eax, [edx+536h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+528h], eax
mov     eax, [edx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+52Ch], eax
mov     eax, [edx+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [edx+530h], eax
mov     word ptr [esi+0C4h], 0F280h
mov     word ptr [esi+0C6h], 0FFFFh
mov     word ptr [esi+0C8h], 111Dh
mov     byte ptr [esi+8], 14h
jmp     loc_455314

loc_455414:
mov     eax, 611h
call    sub_47E888
test    eax, eax
jz      loc_455314
mov     ecx, 49h ; 'I'

loc_45542B:
xor     ebx, ebx
mov     edx, 2
mov     eax, edi
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 1
jmp     loc_455314

loc_455453:
cmp     byte ptr ds:dword_77E760, 0
jnz     loc_455314
mov     eax, 612h

loc_455465:
call    sub_47E8B8

loc_45546A:
inc     byte ptr [esi+8]
jmp     loc_455314

loc_455472:
mov     eax, 613h
call    sub_47E888
test    eax, eax
jz      loc_455314
mov     ecx, 4Bh ; 'K'
jmp     short loc_45542B

loc_45548B:
cmp     byte ptr ds:dword_77E760, 0
jnz     loc_455314
mov     eax, 614h
jmp     short loc_455465

loc_45549F:
mov     eax, 20h ; ' '
call    sub_47E888
test    eax, eax
jz      loc_455314
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [esi+0C4h]
mov     eax, edi
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     loc_455314
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
mov     word ptr [esi+44h], 140h
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 1
mov     byte ptr [esi+0Ah], 28h ; '('
jmp     loc_455314

loc_455504:
mov     ah, [esi+0Ah]
dec     ah
mov     [esi+0Ah], ah
jz      loc_45546A
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     dh, [esi+0A4h]
cmp     dh, 3
jz      short loc_455537
cmp     dh, 0Ah
jnz     loc_455314

loc_455537:
lea     edx, [esi+14h]
mov     eax, 10Ch
call    sub_4D8BC3
jmp     loc_455314

loc_455549:
mov     eax, esi
call    sub_4DE2F6
jmp     loc_455314
sub_45531A endp




sub_455555 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 80h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_455555 endp

byte_4555D7 db 0
dd 0
dword_4555DC dd 53000000h, 57565251h, 4EC8355h, 805C589h
dd 89000004h, 858A2404h, 0ACh, 0AD8588h
dd 7D8D0000h, 14758D2Ch, 7D8DA5A5h, 1C758D34h
dd 0A5A5A5A5h, 8D5C7D8Dh, 0A5A55475h, 5E85C766h
dd 10000001h, 9823E842h, 148B0009h, 42896624h
dd 8AD23102h, 0E8890855h
call    ds:funcs_455634[edx*4]
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_45565A
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_455661

loc_45565A:
mov     eax, ebp
call    sub_4DEADD

loc_455661:
test    byte ptr [ebp+0], 2
jz      short loc_45567A
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45567A:
test    byte ptr [ebp+0], 1
jz      short loc_4556CA
mov     eax, [esp]
test    byte ptr [eax], 4
jz      short loc_4556CA
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+190h]
movsd
movsd
push    0
push    offset unk_800000
xor     eax, eax
mov     edx, [esp+8]
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

loc_4556CA:
mov     eax, [esp]
mov     dword ptr [eax+14h], 0
jmp     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case



sub_4556D9 proc near
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
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [esi], 0Eh
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
mov     ax, [ecx+1Ah]
mov     [esi+34h], ax
mov     word ptr [ecx+1Ah], 0
mov     word ptr [esi+36h], 4
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_515F98
mov     dword ptr [ecx+10h], 0
mov     al, [ecx+3]
test    al, al
jbe     short loc_4557B5
cmp     al, 1
jz      short loc_4557E7
jmp     short loc_455824

loc_4557B5:
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_45585A

loc_4557E7:
xor     eax, eax
mov     ax, [esi+34h]
call    sub_47E888
test    eax, eax
jnz     short loc_455824
and     byte ptr [ecx], 0FDh
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 4
mov     byte ptr [ecx+0Ah], 0FFh
mov     byte ptr [ecx+0Bh], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     dh, [esi]
or      dh, 40h
mov     [esi], dh
mov     bl, dh
and     bl, 0F9h
mov     [esi], bl
jmp     short loc_45585A

loc_455824:
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+66h], 0

loc_45585A:
mov     word ptr [ecx+15Eh], 4210h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4556D9 endp




sub_455868 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     ecx, [eax+408h]
test    byte ptr [ecx], 20h
jz      short loc_455890
lea     eax, [ecx+24h]
mov     edx, ebx
call    sub_4E19CA
test    eax, eax
jz      short loc_45588D
or      byte ptr [ecx], 10h
jmp     short loc_455890

loc_45588D:
and     byte ptr [ecx], 0EFh

loc_455890:
test    byte ptr [ecx], 2
jz      short loc_45589C
mov     eax, ebx
call    sub_456392

loc_45589C:
xor     edx, edx
mov     dl, [ebx+9]
mov     eax, ebx
call    ds:funcs_4558A3[edx*4]
mov     ah, [ecx]
test    ah, 1
jz      short loc_4558E7
mov     al, [ebx+9]
cmp     al, 4
jb      short loc_4558C0
jbe     short loc_4558C6
cmp     al, 5
jz      short loc_4558C6
jmp     short loc_4558D7

loc_4558C0:
cmp     al, 3
jz      short loc_4558CC
jmp     short loc_4558D7

loc_4558C6:
mov     byte ptr [ebx+9], 3
jmp     short loc_4558DE

loc_4558CC:
test    ah, 10h
jz      short loc_4558D7
mov     byte ptr [ebx+9], 2
jmp     short loc_4558DE

loc_4558D7:
mov     eax, ebx
call    sub_45631B

loc_4558DE:
mov     word ptr [ebx+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_4558E7:
mov     dx, [ecx+0Ah]
test    dx, dx
jz      short loc_4558F7
mov     esi, edx
dec     esi
mov     [ecx+0Ah], si

loc_4558F7:
test    byte ptr [ecx], 80h
jz      loc_455AF0
mov     di, [ecx+36h]
dec     edi
mov     [ecx+36h], di
test    di, di
jge     loc_455AF0
call    sub_4DE13B
test    eax, eax
jz      short loc_45592E
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ebx+14h]
movsd
movsd

loc_45592E:
mov     eax, ebx
call    sub_4DE2F6
lea     ecx, [ebx+190h]
mov     edx, ecx
mov     eax, ebx
call    sub_4AF9F8
mov     edx, ecx
mov     eax, 0A1h
call    sub_4D8BC3
jmp     loc_455AF0
sub_455868 endp



; Attributes: thunk

sub_455955 proc near
jmp     sub_4DE2F6
sub_455955 endp




sub_45595A proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_455972
cmp     bl, 1
jz      short loc_45598C
pop     edx
pop     ebx
retn

loc_455972:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0
mov     word ptr [eax+4], 3Ch ; '<'
mov     word ptr [eax+8], 0
and     byte ptr [eax], 0DFh

loc_45598C:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_45599D
or      byte ptr [eax], 1

loc_45599D:
pop     edx
pop     ebx
retn
sub_45595A endp




sub_4559A0 proc near

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
jbe     short loc_4559C3
cmp     al, 1
jz      short loc_4559F2
jmp     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case

loc_4559C3:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     word ptr [ebp+44h], 30h ; '0'
mov     word ptr [ebp+4Ch], 4
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 32h ; '2'
mov     word ptr [eax+6], 19h
mov     word ptr [eax+8], 0
and     byte ptr [eax], 0DFh

loc_4559F2:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+6]
dec     edx
mov     [eax+6], dx
test    dx, dx
jge     short loc_455A0F
mov     word ptr [eax+6], 19h
mov     word ptr [ebp+44h], 30h ; '0'

loc_455A0F:
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     ax, [ebp+4Ch]
add     [ebp+44h], ax
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
jz      short loc_455A7C
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

loc_455A7C:
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
cmp     eax, 20h ; ' '
jle     short loc_455AAD
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
mov     byte ptr [ebp+9], 4
mov     word ptr [ebp+0Ah], 0
jmp     short def_455D03 ; jumptable 00455D03 default case
; jumptable 004560CE default case

loc_455AAD:
test    eax, eax
jge     short loc_455AB3
neg     eax

loc_455AB3:
cmp     eax, 20h ; ' '
jle     short loc_455AD8
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

loc_455AD8:
mov     eax, [esp+1Ch+var_1C]
mov     di, [eax+4]
dec     edi
mov     [eax+4], di
test    di, di

loc_455AE7:             ; jumptable 00455D03 default case
jge     short def_455D03 ; jumptable 004560CE default case

loc_455AE9:
or      byte ptr [eax], 1

def_455D03:             ; jumptable 00455D03 default case
add     esp, 4          ; jumptable 004560CE default case

loc_455AEF:
pop     ebp

loc_455AF0:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4559A0 endp




sub_455AF6 proc near

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
mov     [esp+20h+var_1C], eax
mov     [esp+20h+var_20], offset byte_5F8364
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_455B21
cmp     al, 1
jz      short loc_455B48
jmp     loc_455CBD

loc_455B21:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 2
mov     word ptr [ebp+44h], 100h
mov     word ptr [ebp+4Ch], 10h
mov     eax, [esp+20h+var_1C]
mov     word ptr [eax+4], 0Ch
mov     word ptr [eax+8], 0

loc_455B48:
mov     eax, [esp+20h+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_455B66
mov     word ptr [ebp+44h], 100h
mov     word ptr [eax+4], 0Ch

loc_455B66:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+20h+var_20]
add     edx, 14h
lea     eax, [ebp+14h]
mov     ecx, 30h ; '0'
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     edx, edx
mov     dl, [ebp+0A6h]
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     ax, [ebp+4Ch]
add     [ebp+44h], ax
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
jz      short loc_455BEA
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

loc_455BEA:
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
cmp     eax, 20h ; ' '
jle     short loc_455C2A
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
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 4

loc_455C1F:
mov     word ptr [ebp+0Ah], 0
jmp     loc_455CBD

loc_455C2A:
test    eax, eax
jge     short loc_455C30
neg     eax

loc_455C30:
cmp     eax, 20h ; ' '
jle     short loc_455C55
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

loc_455C55:
cmp     dword ptr [ebp+80h], 1E848h
jnb     short loc_455CA4
push    400h
mov     eax, [esp+24h+var_20]
mov     eax, [eax+54h]
sar     eax, 10h
push    eax
mov     ecx, [esp+28h+var_20]
add     ecx, 1Ch
mov     edx, [ebp+54h]
sar     edx, 10h
lea     eax, [ebp+1Ch]
mov     ebx, 40h ; '@'
call    sub_4DE639
test    eax, eax
jz      short loc_455CA4
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 5
jmp     loc_455C1F

loc_455CA4:
mov     eax, [esp+20h+var_1C]
mov     dl, [eax]
test    dl, 10h
jnz     short loc_455CBD
mov     dh, dl
or      dh, 1
mov     [eax], dh
mov     bl, dh
and     bl, 0DFh
mov     [eax], bl

loc_455CBD:
add     esp, 8
jmp     loc_455AEF
sub_455AF6 endp

db 8Bh, 0C0h
jpt_455D03 dd offset loc_455D0A ; jump table for switch statement
dd offset loc_455D2C
dd offset loc_455DC6
dd offset loc_455E45
dd offset loc_455EA9



sub_455CDB proc near

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
mov     esi, offset byte_5F8364
mov     al, [ebp+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
and     eax, 0FFh
jmp     jpt_455D03[eax*4] ; switch jump

loc_455D0A:             ; jumptable 00455D03 case 0
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 7
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0Ch
mov     word ptr [eax+8], 0
add     eax, 24h ; '$'
call    sub_4E19B4

loc_455D2C:             ; jumptable 00455D03 case 1
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      short loc_455DA9
cmp     dx, 2
jle     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFB0h
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
jge     short loc_455D89
neg     eax

loc_455D89:
cmp     eax, 20h ; ' '
jle     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
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
jmp     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case

loc_455DA9:
mov     byte ptr [ebp+0Ah], 2
mov     al, [eax+2]
and     al, 1
add     al, 0Ch
mov     [ebp+0ACh], al
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 6
or      byte ptr [eax], 20h

loc_455DC6:             ; jumptable 00455D03 case 2
mov     eax, [esp+1Ch+var_1C]
mov     di, [eax+4]
dec     edi
mov     [eax+4], di
test    di, di
jge     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
mov     byte ptr [ebp+0Ah], 3
add     byte ptr [ebp+0ACh], 2
mov     ax, [eax+2]
xor     ah, ah
and     al, 7
add     eax, 8
mov     edx, [esp+1Ch+var_1C]
mov     [edx+4], ax
push    800h
mov     eax, [esi+54h]
sar     eax, 10h
push    eax
lea     ecx, [esi+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
lea     eax, [ebp+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      short loc_455E2E
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+2]
xor     ah, ah
and     al, 3
inc     eax
jmp     short loc_455E3E

loc_455E2E:
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+2]
xor     ah, ah
and     al, 7
add     eax, 3

loc_455E3E:
mov     edx, [esp+1Ch+var_1C]
mov     [edx+6], ax

loc_455E45:             ; jumptable 00455D03 case 3
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short loc_455E84
mov     si, [eax+6]
dec     esi
mov     [eax+6], si
test    si, si
jl      short loc_455E98
xor     byte ptr [ebp+0ACh], 1
mov     ax, [eax+2]
xor     ah, ah
and     al, 7
add     eax, 7
mov     edx, [esp+1Ch+var_1C]
mov     [edx+4], ax
jmp     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case

loc_455E84:
test    byte ptr [eax], 10h
jz      def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
mov     word ptr [eax+6], 0
jmp     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case

loc_455E98:
mov     byte ptr [ebp+0Ah], 4
add     byte ptr [ebp+0ACh], 2
mov     word ptr [eax+4], 0Dh

loc_455EA9:             ; jumptable 00455D03 case 4
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 33h ; '3'
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
jge     short loc_455EEB
neg     eax

loc_455EEB:
cmp     eax, 20h ; ' '
jle     short loc_455F02
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

loc_455F02:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jmp     loc_455AE7
sub_455CDB endp




sub_455F16 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_455F41
jbe     loc_456010
cmp     al, 2
jbe     loc_455FEC
cmp     al, 0FFh
jz      short loc_455F4A
jmp     loc_455AF0

loc_455F41:
test    al, al
jz      short loc_455F63
jmp     loc_455AF0

loc_455F4A:
xor     eax, eax
mov     ax, [edi+34h]
call    sub_47E888
test    eax, eax
jz      loc_455AF0
or      byte ptr [esi], 2
or      byte ptr [edi], 6

loc_455F63:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 4
test    byte ptr [edi], 40h
jz      short loc_455FB8
mov     ax, [edi+2]
xor     ah, ah
and     al, 3
shl     eax, 7
mov     [esi+44h], ax
xor     eax, eax
mov     ax, [edi+2]
sar     eax, 4
and     eax, 3
shl     eax, 4
neg     eax
shl     eax, 4
add     eax, 10h
mov     [esi+46h], ax
xor     eax, eax
mov     ax, [edi+2]
sar     eax, 4
and     eax, 3
shl     eax, 5
add     eax, 10h
mov     [esi+4Eh], ax
and     byte ptr [edi], 0BFh
jmp     short loc_455FD7

loc_455FB8:
mov     word ptr [esi+44h], 200h
mov     word ptr [esi+46h], 0FF00h
mov     eax, [esi+44h]
sar     eax, 10h
neg     eax
sar     eax, 2
mov     [esi+4Eh], ax
and     byte ptr [esi+57h], 0Fh

loc_455FD7:
mov     word ptr [edi+4], 10h
mov     word ptr [edi+6], 0
mov     word ptr [edi+8], 0
and     byte ptr [edi], 0D7h

loc_455FEC:
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     short loc_456010
mov     byte ptr [esi+0Ah], 1
mov     word ptr [esi+44h], 88h
mov     word ptr [esi+46h], 0FF10h
mov     word ptr [esi+4Eh], 30h ; '0'

loc_456010:
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
mov     edx, eax
test    ah, 0Fh
jz      short loc_456041
mov     word ptr [esi+44h], 0

loc_456041:
test    dh, 10h
jz      loc_455AF0
mov     ax, [edi+6]
inc     eax
mov     [edi+6], ax
cmp     ax, 1
jnz     short loc_456081
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 5
mov     word ptr [esi+44h], 0F0h
mov     word ptr [esi+46h], 0
mov     word ptr [esi+4Eh], 0
mov     word ptr [edi+4], 2
jmp     loc_455AF0

loc_456081:
or      byte ptr [edi], 9
jmp     loc_455AF0
sub_455F16 endp

db 8Bh, 0C0h
jpt_4560CE dd offset loc_4560D5 ; jump table for switch statement
dd offset loc_45610A
dd offset loc_45618E
dd offset loc_4561E0
dd offset loc_456297



sub_45609F proc near

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
test    byte ptr [eax+17h], 2
jz      short loc_4560BE
mov     word ptr [eax+8], 0

loc_4560BE:
mov     al, [ebp+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
and     eax, 0FFh
jmp     jpt_4560CE[eax*4] ; switch jump

loc_4560D5:             ; jumptable 004560CE case 0
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 7
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 9
xor     eax, eax
mov     al, [ebp+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
mov     al, [eax+0Ah]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
and     byte ptr [edx], 0DFh

loc_45610A:             ; jumptable 004560CE case 1
mov     eax, [esp+1Ch+var_1C]
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jl      short loc_45617D
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFB0h
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
jge     short loc_45615D
neg     eax

loc_45615D:
cmp     eax, 20h ; ' '
jle     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
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
jmp     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case

loc_45617D:
mov     byte ptr [ebp+0Ah], 2
mov     byte ptr [ebp+0ACh], 8
mov     word ptr [eax+4], 0Bh

loc_45618E:             ; jumptable 004560CE case 2
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
mov     byte ptr [ebp+0Ah], 3
mov     byte ptr [ebp+0ACh], 9
mov     word ptr [eax+4], 0FFFDh
xor     ecx, ecx
mov     ebx, 0FFFFFA60h
mov     edx, 640h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
lea     edx, [ebp+14h]
mov     eax, 0BAh
call    sub_4D8BC3
jmp     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case

loc_4561E0:             ; jumptable 004560CE case 3
mov     eax, [esp+1Ch+var_1C]
mov     cx, [eax+4]
inc     ecx
mov     [eax+4], cx
test    cx, cx
jge     short loc_456204
mov     eax, ecx
mov     edx, [esp+1Ch+var_1C]
imul    ax, [edx+4]
shl     eax, 2
sub     [ebp+16h], ax
jmp     short loc_456215

loc_456204:
mov     eax, ecx
mov     edx, [esp+1Ch+var_1C]
imul    ax, [edx+4]
shl     eax, 2
add     [ebp+16h], ax

loc_456215:
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 370h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
test    ah, 0Fh
jz      short loc_456245
mov     word ptr [ebp+44h], 0

loc_456245:
test    dh, 10h
jz      short loc_456264
mov     byte ptr [ebp+0Ah], 4
mov     byte ptr [ebp+0ACh], 0Ah
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0Ah
mov     word ptr [eax+8], 0

loc_456264:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+17h], 2
jz      def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax
mov     byte ptr [ebp+9], 4
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+8], 0
jmp     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case

loc_456297:             ; jumptable 004560CE case 4
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0A0h
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
jge     short loc_4562D9
neg     eax

loc_4562D9:
cmp     eax, 20h ; ' '
jle     short loc_4562F0
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

loc_4562F0:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jg      def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
jmp     loc_455AE9
sub_45609F endp

db 90h
jpt_456367 dd offset loc_45636E ; jump table for switch statement
dd offset loc_456374
dd offset loc_45637A
dd offset loc_456382



sub_45631B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     ebx, [eax+408h]
xor     edx, edx
xor     eax, eax
jmp     short loc_456335

loc_45632E:
inc     eax
cmp     ax, 4
jge     short loc_456358

loc_456335:
movsx   ecx, ax
mov     cl, ds:byte_515FA4[ecx]
xor     ch, ch
add     edx, ecx
mov     cx, [ebx+2]
xor     ch, ch
and     cl, 0Fh
and     ecx, 0FFFFh
movsx   esi, dx
cmp     ecx, esi
jge     short loc_45632E

loc_456358:
mov     byte ptr [edi+9], 1
cmp     ax, 3           ; switch 4 cases
ja      short def_456367 ; jumptable 00456367 default case
xor     ecx, ecx
mov     cx, ax
jmp     jpt_456367[ecx*4] ; switch jump

loc_45636E:             ; jumptable 00456367 case 0
mov     byte ptr [edi+9], 3
jmp     short def_456367 ; jumptable 00456367 default case

loc_456374:             ; jumptable 00456367 case 1
mov     word ptr [edi+66h], 0

loc_45637A:             ; jumptable 00456367 case 2
mov     word ptr [edi+66h], 10h
jmp     short def_456367 ; jumptable 00456367 default case

loc_456382:             ; jumptable 00456367 case 3
mov     word ptr [edi+66h], 0FFF0h

def_456367:             ; jumptable 00456367 default case
mov     eax, 1
jmp     loc_455AF0
sub_45631B endp




sub_456392 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
mov     edi, esp
mov     esi, offset byte_4555D7
movsd
movsd
lea     ebx, [eax+408h]
mov     eax, [ebx+14h]
and     eax, 0FFFFFFh
jz      loc_4564F2
test    byte ptr [ebx+17h], 38h
jz      loc_4564E5
mov     dx, [ecx+6Eh]
mov     [ecx+0B2h], dx
sub     edx, eax
mov     [ecx+6Eh], dx
test    dx, dx
jg      short loc_4563FC
mov     dh, [ebx]
and     dh, 75h
mov     [ebx], dh
mov     al, dh
or      al, 88h
mov     [ebx], al
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh

loc_4563FC:
lea     edx, [ecx+14h]
test    byte ptr [ebx], 8
jz      loc_45649C
add     [ebx+0Ah], ax
test    byte ptr [ebx+17h], 20h
jnz     short loc_456432
xor     eax, eax
mov     al, [ecx+2]
mov     esi, ds:dword_55A10C
mov     eax, [esi+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
mov     esi, [ebx+8]
sar     esi, 10h
cmp     esi, eax
jl      short loc_456495

loc_456432:
lea     esi, [ecx+14h]
mov     edx, esi
mov     eax, 0A2h
call    sub_4D8BC3
lea     edx, [ebx+1Ch]
test    byte ptr [ebx+22h], 1
jz      short loc_456478
mov     eax, esi
call    sub_4DDDB4
mov     esi, [ecx+54h]
sar     esi, 10h
movsx   edx, ax
sub     esi, edx
lea     edx, [esi+400h]
and     edx, 0FFFh
cmp     edx, 800h
jl      short loc_45647F
add     ah, 8
and     ah, 0Fh
jmp     short loc_45647F

loc_456478:
mov     eax, esp
call    sub_4DDDB4

loc_45647F:
mov     [ecx+56h], ax
mov     byte ptr [ecx+9], 4
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ebx+0Ah], 0
jmp     short loc_4564DA

loc_456495:
mov     eax, 0A0h
jmp     short loc_4564D5

loc_45649C:
test    byte ptr [ebx+17h], 20h
jnz     short loc_4564C6
xor     eax, eax
mov     al, [ecx+2]
mov     esi, eax
shl     esi, 2
mov     eax, ds:dword_55A10C
mov     eax, [esi+eax]
mov     al, [eax+9]
and     eax, 0FFh
mov     ebx, [ebx+8]
sar     ebx, 10h
cmp     ebx, eax
jl      short loc_4564D0

loc_4564C6:
lea     edx, [ecx+14h]
mov     eax, 0A2h
jmp     short loc_4564D5

loc_4564D0:
mov     eax, 0A0h

loc_4564D5:
call    sub_4D8BC3

loc_4564DA:
mov     word ptr [ecx+15Eh], 7FFFh
jmp     short loc_4564F2

loc_4564E5:
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_4564F2:
mov     eax, 1
add     esp, 8
jmp     loc_455AF0
sub_456392 endp




sub_4564FF proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
cmp     byte ptr [eax+8], 0
jnz     short loc_456518
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_456511[edx*4]

loc_456518:
mov     ebp, [esp+1Ch+var_1C]
add     ebp, 3D8h
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+0ACh]
mov     edx, [esp+1Ch+var_1C]
mov     [edx+0ADh], al
mov     edi, edx
lea     edi, [edi+2Ch]
mov     esi, edx
lea     esi, [esi+14h]
movsd
movsd
mov     edi, edx
lea     edi, [edi+34h]
mov     esi, edx
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     edi, edx
lea     edi, [edi+5Ch]
mov     esi, edx
lea     esi, [esi+54h]
movsd
movsd
test    byte ptr [edx+0Fh], 2
jz      short loc_456571
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+15Eh], 7FFFh
and     byte ptr [eax+0Fh], 0FDh
jmp     short loc_45657D

loc_456571:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+15Eh], 4210h

loc_45657D:
call    rand_
mov     [ebp+2], ax
test    byte ptr [ebp+0], 20h
jz      short loc_4565DD
mov     esi, [ebp+34h]
mov     edi, [esp+1Ch+var_1C]
lea     edi, [edi+14h]
lea     esi, [esi+190h]
movsd
movsd
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+12h]
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+1Ch+var_1C]
mov     [edx+1Ch], eax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
mov     eax, [ebp+34h]
mov     dx, [eax+56h]
sub     dx, [eax+5Eh]
mov     eax, [esp+1Ch+var_1C]
add     [eax+56h], dx
and     byte ptr [eax+57h], 0Fh

loc_4565DD:
xor     edx, edx
mov     eax, [esp+1Ch+var_1C]
mov     dl, [eax+8]
call    ds:funcs_456511[edx*4]
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+0ADh]
mov     edx, [esp+1Ch+var_1C]
cmp     al, [edx+0ACh]
jz      short loc_456614
xor     edx, edx
mov     eax, [esp+1Ch+var_1C]
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE9BA
jmp     short loc_45661B

loc_456614:
mov     eax, edx
call    sub_4DEB53

loc_45661B:
test    byte ptr [ebp+0], 4
jz      loc_4566FE
mov     dword ptr [ebp+48h], 3

loc_45662C:
mov     eax, [ebp+48h]
sar     eax, 2
add     eax, eax
lea     edx, [eax+ebp]
mov     eax, [ebp+48h]
mov     dx, [edx+40h]
mov     ds:word_560E04[eax*8], dx
mov     eax, [ebp+48h]
xor     esi, esi
mov     ds:word_560E06[eax*8], si
mov     eax, [ebp+48h]
mov     ds:word_560E08[eax*8], si
mov     edx, offset unk_559EDC
mov     eax, offset word_560E04
call    sub_4EF5F7
mov     edx, offset unk_559F0C
mov     eax, offset unk_559EDC
call    sub_4EF70C
mov     eax, [ebp+48h]
shl     eax, 3
add     eax, offset word_560E04
mov     edx, offset unk_559F3C
call    sub_4EF5F7
mov     ebx, offset unk_559F6C
mov     edx, offset unk_559F3C
mov     eax, offset unk_559EDC
call    sub_4EF388
mov     edx, [ebp+48h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     ecx, [esp+1Ch+var_1C]
add     ecx, 1F8h
lea     edx, [ecx+eax]
mov     ebx, offset unk_559F9C
mov     eax, offset unk_559F0C
call    sub_4EF388
mov     edx, [ebp+48h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
lea     ebx, [ecx+eax]
mov     edx, offset unk_559F9C
mov     eax, offset unk_559F6C
call    sub_4EF388
mov     edx, [ebp+48h]
add     edx, 2
mov     [ebp+48h], edx
cmp     edx, 7
jl      loc_45662C

loc_4566FE:
mov     eax, [esp+1Ch+var_1C]
call    sub_4DF795
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_456722
mov     ecx, 1
mov     ebx, 200h
mov     edx, 80h
call    sub_4ED88B

loc_456722:
test    byte ptr [ebp+0], 40h
jnz     short loc_45673F
mov     ecx, 1000008h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, [esp+1Ch+var_1C]
call    sub_432697

loc_45673F:
test    byte ptr [ebp+0], 80h
jz      short loc_45677D
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+18Eh]
sar     edx, 10h
shl     edx, 10h
mov     eax, [ebp+44h]
mov     [eax+1Ch], edx
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+192h]
sar     edx, 10h
shl     edx, 10h
mov     eax, [ebp+44h]
mov     [eax+24h], edx
mov     eax, [ebp+44h]
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B

loc_45677D:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_4567D2
test    byte ptr [ebp+0], 8
jz      short loc_4567D2
lea     edi, [ebp+0Ch]
mov     esi, eax
lea     esi, [esi+190h]
movsd
movsd
push    0
push    offset unk_800000
add     word ptr [ebp+0Eh], 38h ; '8'
xor     eax, eax
mov     ax, [ebp+8]
or      eax, 4880000h
push    eax
lea     eax, [ebp+14h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+0Ch]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 100h
call    sub_4E01FC

loc_4567D2:
mov     dword ptr [ebp+14h], 0
jmp     def_456E53      ; jumptable 00456E53 default case
sub_4564FF endp         ; jumptable 004576B2 default case




sub_4567DE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+3D8h]
test    byte ptr [eax+3], 40h
jz      short loc_4567F8
mov     word ptr [ecx], 200h
jmp     short loc_4567FD

loc_4567F8:
mov     word ptr [ecx], 0

loc_4567FD:
or      byte ptr [esi], 2
and     byte ptr [esi+3], 1Fh
mov     word ptr [esi+54h], 0
mov     al, [esi+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [esi+56h], ax
mov     word ptr [esi+58h], 0
mov     dword ptr [esi+64h], 0
mov     dword ptr [esi+44h], 0
mov     dword ptr [esi+48h], 0
and     byte ptr [esi+0Ch], 0F0h
lea     edx, [esi+3]
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
or      byte ptr [ecx], 0B2h
mov     dword ptr [ecx+4], 0
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx+14h], 0
mov     dword ptr [ecx+18h], 0
mov     eax, [esi+0Ah]
sar     eax, 18h
call    sub_4E1877
mov     [ecx+34h], eax
mov     al, [eax+2]
mov     edx, eax
and     edx, 0FFh
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     edx, [edx+eax]
mov     dl, [edx+0Fh]
and     edx, 0FFh
lea     eax, [ecx+24h]
mov     ebx, 0FFFFFFA0h
call    sub_4E19B9
lea     eax, [ecx+40h]
mov     [ecx+3Ch], eax
mov     word ptr [ecx+40h], 0
mov     word ptr [ecx+42h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+4Ch], 0
mov     dword ptr [ecx+50h], 0
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+5Ch], 0
mov     word ptr [ecx+38h], 0
mov     word ptr [esi+6Eh], 0
mov     ax, [esi+6Eh]
mov     [esi+0B0h], ax
mov     [esi+0B2h], ax
mov     dword ptr [esi+78h], offset unk_515FE4
mov     dword ptr [esi+10h], 0
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [ecx+34h]
test    byte ptr [eax+0Fh], 4
jz      short loc_456943
mov     byte ptr [esi+8], 5
mov     byte ptr [esi+9], 4
jmp     short loc_456961

loc_456943:
mov     byte ptr [esi+8], 1
cmp     byte ptr [esi+3], 2
jnz     short loc_45695D
mov     byte ptr [esi+9], 3
mov     ds:dword_559FF8, 2
jmp     short loc_456961

loc_45695D:
mov     byte ptr [esi+9], 1

loc_456961:
mov     word ptr [esi+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
mov     word ptr [esi+15Eh], 4210h
call    sub_4DDF54
mov     [ecx+44h], eax
test    eax, eax
jz      def_457579      ; jumptable 00457579 default case
mov     byte ptr [eax], 1
mov     eax, [ecx+44h]
mov     byte ptr [eax+2], 0
mov     eax, [ecx+44h]
mov     byte ptr [eax+3], 40h ; '@'
mov     eax, [ecx+44h]
mov     dword ptr [eax+8], 0
mov     eax, [ecx+44h]
mov     dword ptr [eax+0Ch], 0
mov     edx, [esi+18Eh]
sar     edx, 10h
shl     edx, 10h
mov     eax, [ecx+44h]
mov     [eax+1Ch], edx
mov     edx, [esi+190h]
sar     edx, 10h
sub     edx, 180h
shl     edx, 10h
mov     eax, [ecx+44h]
mov     [eax+20h], edx
mov     edx, [esi+192h]
sar     edx, 10h
shl     edx, 10h
mov     eax, [ecx+44h]
mov     [eax+24h], edx
mov     eax, [ecx+44h]
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
mov     edi, [ecx+44h]
lea     edi, [edi+54h]
lea     esi, [esi+54h]
movsd
movsd
jmp     def_457579      ; jumptable 00457579 default case
sub_4567DE endp

db 90h
jpt_456A7F dd offset loc_456A98 ; jump table for switch statement
dd offset loc_456AB6
dd offset def_456A7F
dd offset loc_456AB6
dd offset def_456A7F
dd offset def_456A7F
dd offset loc_456A98
dd offset loc_456A86
dd offset loc_456A98



sub_456A2F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+3D8h]
mov     ebx, [eax+54h]
sar     ebx, 10h
add     eax, 3FCh
mov     edx, ecx
call    sub_4E19D8
test    eax, eax
jz      short loc_456A58
or      byte ptr [esi+1], 1
jmp     short loc_456A5C

loc_456A58:
and     byte ptr [esi+1], 0FEh

loc_456A5C:
xor     ebx, ebx
mov     bl, [ecx+9]
mov     eax, ecx
call    ds:funcs_456A63[ebx*4]
test    byte ptr [esi], 1
jz      loc_456ADF
mov     al, [ecx+9]
cmp     al, 8           ; switch 9 cases
ja      short def_456A7F ; jumptable 00456A7F default case, cases 2,4,5
and     eax, 0FFh
jmp     jpt_456A7F[eax*4] ; switch jump

loc_456A86:             ; jumptable 00456A7F case 7
xor     edx, edx
mov     ds:dword_559FE4, edx
mov     ds:dword_559FFC, 0F0h

loc_456A98:             ; jumptable 00456A7F cases 0,6,8
test    byte ptr [ecx+0Eh], 1
jnz     short loc_456AAA
test    byte ptr [esi+1], 1
jnz     short loc_456AAA
test    byte ptr [ecx+0Fh], 1
jz      short loc_456AB0

loc_456AAA:
mov     byte ptr [ecx+9], 6
jmp     short loc_456AD2

loc_456AB0:
mov     byte ptr [ecx+9], 0
jmp     short def_456A7F ; jumptable 00456A7F default case, cases 2,4,5

loc_456AB6:             ; jumptable 00456A7F cases 1,3
test    byte ptr [ecx+0Eh], 1
jnz     short loc_456AC8
test    byte ptr [esi+1], 1
jnz     short loc_456AC8
test    byte ptr [ecx+0Fh], 1
jz      short loc_456ACE

loc_456AC8:
mov     byte ptr [ecx+9], 3
jmp     short loc_456AD2

loc_456ACE:
mov     byte ptr [ecx+9], 1

loc_456AD2:
and     byte ptr [ecx+0Fh], 0FEh

def_456A7F:             ; jumptable 00456A7F default case, cases 2,4,5
mov     word ptr [ecx+0Ah], 0
and     byte ptr [esi], 0FEh

loc_456ADF:
mov     dx, [esi+0Ah]
test    dx, dx
jz      short loc_456AEF
mov     ebx, edx
dec     ebx
mov     [esi+0Ah], bx

loc_456AEF:
mov     cx, [esi+38h]
test    cx, cx
jz      def_457579      ; jumptable 00457579 default case
mov     edi, ecx
dec     edi
mov     [esi+38h], di
jmp     def_457579      ; jumptable 00457579 default case
sub_456A2F endp




sub_456B08 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+3D8h]
mov     ebx, [eax+54h]
sar     ebx, 10h
add     eax, 3FCh
mov     edx, esi
call    sub_4E19D8
test    eax, eax
jz      short loc_456B31
or      byte ptr [ecx+1], 1
jmp     short loc_456B35

loc_456B31:
and     byte ptr [ecx+1], 0FEh

loc_456B35:
xor     edx, edx
mov     dl, [esi+9]
mov     eax, esi
call    ds:funcs_456A63[edx*4]
test    byte ptr [ecx], 1
jz      short loc_456B55
mov     byte ptr [esi+9], 1
mov     word ptr [esi+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_456B55:
mov     dx, [ecx+0Ah]
test    dx, dx
jz      short loc_456B65
mov     ebx, edx
dec     ebx
mov     [ecx+0Ah], bx

loc_456B65:
mov     si, [ecx+38h]
test    si, si
jz      def_457579      ; jumptable 00457579 default case
mov     edi, esi
dec     edi
mov     [ecx+38h], di
jmp     def_457579      ; jumptable 00457579 default case
sub_456B08 endp




sub_456B7E proc near
push    edx
lea     edx, [eax+3D8h]
call    sub_4DE2F6
mov     eax, [edx+44h]
call    sub_4DE2F6
pop     edx
retn
sub_456B7E endp




sub_456B94 proc near

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
mov     al, [ebp+0Ah]
cmp     al, 1
jb      short loc_456BC1
jbe     loc_456C40
cmp     al, 2
jz      loc_456C6F
jmp     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_456BC1:
test    al, al
jnz     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+8], 0
mov     word ptr [eax+4], 20h ; ' '
mov     esi, [eax+34h]
mov     edi, offset unk_559FCC
lea     esi, [esi+14h]
movsd
movsd
mov     esi, [eax+34h]
mov     edi, offset unk_559FD4
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0
mov     ebx, [eax+34h]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     ecx, 100h
mov     edx, offset unk_559FD4
mov     eax, offset unk_559FCC
call    sub_4DD4C5
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     ecx, 800h
mov     edx, offset unk_559FCC
call    sub_4DE552
sar     eax, 5
mov     [ebp+66h], ax

loc_456C40:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_456C60
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+34h]
mov     ax, [eax+56h]
jmp     short loc_456C6B

loc_456C60:
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh

loc_456C6B:
mov     [ebp+56h], ax

loc_456C6F:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+1], 1
jnz     short loc_456C84
test    byte ptr [ebp+0Fh], 1
jnz     short loc_456C84
test    byte ptr [ebp+0Eh], 1
jz      short def_456E53 ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_456C84:
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 1

def_456E53:             ; jumptable 00456E53 default case
add     esp, 4          ; jumptable 004576B2 default case
pop     ebp

def_457579:             ; jumptable 00457579 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_456B94 endp




sub_456C94 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+3D8h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_456CAE
cmp     al, 1
jz      short loc_456CE8
jmp     short def_456E53 ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_456CAE:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 0Ah
mov     eax, [ebp+34h]
mov     ax, [eax+56h]
mov     edx, [esp+1Ch+var_1C]
mov     [edx+56h], ax
mov     word ptr [ebp+4], 3Ch ; '<'
mov     word ptr [ebp+8], 0
or      byte ptr [ebp+0], 40h
mov     eax, edx
call    sub_432EAB
mov     eax, [ebp+44h]
mov     byte ptr [eax+9], 0Fh

loc_456CE8:
cmp     word ptr [ebp+4], 2Bh ; '+'
jnz     loc_456D7C
and     byte ptr [ebp+0], 7Fh
mov     eax, [ebp+44h]
mov     byte ptr [eax+8], 0
mov     eax, [ebp+44h]
mov     byte ptr [eax+3], 1
mov     eax, [ebp+44h]
mov     byte ptr [eax+4], 1
mov     eax, [ebp+34h]
mov     edx, [ebp+44h]
mov     ax, [eax+56h]
mov     [edx+56h], ax
mov     esi, [ebp+44h]
lea     edi, [esi+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+198h]
movsd
movsd
mov     eax, [ebp+44h]
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     eax, [ebp+44h]
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     eax, [ebp+44h]
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
mov     eax, [ebp+44h]
xor     ecx, ecx
mov     ebx, 0FFFFFC00h
mov     edx, 0FFFFFD00h
call    sub_4DD43B
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 0E4h
call    sub_4D8BC3

loc_456D7C:
mov     bx, [ebp+4]
dec     ebx
mov     [ebp+4], bx
test    bx, bx
jge     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+0Fh], 40h
jz      short loc_456DCF
mov     eax, ds:dword_55A00C
mov     byte ptr [eax+9], 3
mov     eax, ds:dword_55A00C
mov     word ptr [eax+0Ah], 0
mov     esi, ds:dword_55A00C
lea     edi, [esi+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+14h]
movsd
movsd
mov     esi, ds:dword_55A00C
lea     edi, [esi+1Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd

loc_456DCF:
call    sub_4DE13B
mov     [ebp+4Ch], eax
test    eax, eax
jz      short loc_456DFD
mov     byte ptr [eax], 5
mov     eax, [ebp+4Ch]
mov     byte ptr [eax+2], 80h
mov     eax, [ebp+4Ch]
mov     byte ptr [eax+3], 42h ; 'B'
mov     esi, [ebp+4Ch]
lea     edi, [esi+48h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+190h]
movsd
movsd

loc_456DFD:
test    byte ptr [ebp+1], 2
jz      short loc_456E0B
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE2F6

loc_456E0B:
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0FCh
mov     byte ptr [eax+0Fh], 0
jmp     def_456E53      ; jumptable 00456E53 default case
sub_456C94 endp         ; jumptable 004576B2 default case

db 90h
jpt_456E53 dd offset loc_456E5A ; jump table for switch statement
dd offset loc_456E97
dd offset loc_456ED8
dd offset loc_456FAA
dd offset loc_4570FA



sub_456E2F proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+3D8h]
mov     dword ptr [ebp+54h], offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
and     eax, 0FFh
jmp     jpt_456E53[eax*4] ; switch jump

loc_456E5A:             ; jumptable 00456E53 case 0
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Ah], 1
mov     word ptr [ebp+8], 0
or      byte ptr [ebp+0], 4
lea     eax, [ebp+24h]
call    sub_4E19B4
mov     word ptr [ebp+6], 5Ah ; 'Z'
mov     esi, ds:dword_559FEC
or      byte ptr [esi+0Fh], 1
mov     esi, ds:dword_559FF0
or      byte ptr [esi+0Fh], 1
mov     edx, ds:dword_559FF4
or      byte ptr [edx+0Fh], 1

loc_456E97:             ; jumptable 00456E53 case 1
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, [ebp+54h]
add     edx, 14h
mov     eax, [esp+1Ch+var_1C]
add     eax, 14h
mov     ecx, 800h
call    sub_4DE552
test    eax, eax
jge     short loc_456EC5
mov     word ptr [ebp+3Ah], 3
lea     eax, [ebp+40h]
jmp     short loc_456ECE

loc_456EC5:
mov     word ptr [ebp+3Ah], 5
lea     eax, [ebp+42h]

loc_456ECE:
mov     [ebp+3Ch], eax
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Ah], 2

loc_456ED8:             ; jumptable 00456E53 case 2
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, [ebp+54h]
add     edx, 4E8h
mov     eax, [ebp+38h]
sar     eax, 10h
shl     eax, 3
mov     edi, [esp+1Ch+var_1C]
add     edi, 190h
add     eax, edi
mov     ecx, 20h ; ' '
call    sub_4DE552
mov     esi, eax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+56h]
add     eax, esi
and     ah, 0Fh
mov     edx, [esp+1Ch+var_1C]
mov     [edx+56h], ax
mov     eax, [ebp+3Ch]
movsx   ebx, word ptr [eax]
mov     edx, [ebp+54h]
add     edx, 4E8h
mov     eax, [ebp+38h]
sar     eax, 10h
shl     eax, 3
add     eax, edi
mov     ecx, 10h
call    sub_4DE5A3
mov     ebx, eax
mov     edx, [ebp+3Ch]
add     ax, [edx]
and     ah, 0Fh
mov     [edx], ax
cmp     word ptr [ebp+38h], 0
jnz     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
test    si, si
jge     short loc_456F66
movsx   eax, si
neg     eax
jmp     short loc_456F69

loc_456F66:
movsx   eax, si

loc_456F69:
cmp     eax, 20h ; ' '
jge     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
test    bx, bx
jge     short loc_456F7E
movsx   eax, bx
neg     eax
jmp     short loc_456F81

loc_456F7E:
movsx   eax, bx

loc_456F81:
cmp     eax, 10h
jge     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Ah], 3
xor     eax, eax
mov     edx, [esp+1Ch+var_1C]
mov     al, [edx+3]
mov     al, ds:byte_515FFC[eax]
xor     ah, ah
mov     [ebp+4], ax
jmp     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_456FAA:             ; jumptable 00456E53 case 3
mov     ebx, [ebp+3Ch]
movsx   ebx, word ptr [ebx]
mov     edx, [ebp+54h]
add     edx, 4E8h
mov     eax, [ebp+38h]
sar     eax, 10h
shl     eax, 3
mov     esi, [esp+1Ch+var_1C]
add     esi, 190h
add     eax, esi
mov     ecx, 10h
call    sub_4DE5A3
mov     edx, [ebp+3Ch]
add     ax, [edx]
and     ah, 0Fh
mov     [edx], ax
xor     eax, eax
mov     edx, [esp+1Ch+var_1C]
mov     al, [edx+3]
cmp     eax, ds:dword_559FF8
jnz     loc_4570C7
cmp     word ptr [ebp+38h], 0
jnz     loc_4570C7
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+80h], 0C80000h
jnb     loc_4570C7
call    sub_4DE043
mov     [ebp+50h], eax
mov     edx, eax
test    eax, eax
jz      loc_4570C7
mov     byte ptr [eax], 1
mov     eax, [ebp+50h]
mov     byte ptr [eax+2], 2Eh ; '.'
cmp     word ptr [ebp+3Ah], 3
jnz     short loc_457041
mov     eax, [ebp+50h]
mov     byte ptr [eax+3], 40h ; '@'
jmp     short loc_457048

loc_457041:
mov     eax, [ebp+50h]
mov     byte ptr [eax+3], 41h ; 'A'

loc_457048:
mov     eax, [ebp+50h]
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+56h]
mov     [eax+64h], dx
mov     eax, [ebp+3Ch]
mov     ax, [eax]
add     ah, 4
and     ah, 0Fh
mov     edx, eax
mov     eax, [ebp+50h]
mov     [eax+66h], dx
mov     esi, [ebp+38h]
sar     esi, 10h
shl     esi, 3
mov     ebx, [esp+1Ch+var_1C]
add     esi, ebx
mov     edi, [ebp+50h]
lea     edi, [edi+14h]
lea     esi, [esi+190h]
movsd
movsd
mov     esi, [ebp+50h]
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     edx, [ebp+50h]
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     esi, [ebp+50h]
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     word ptr [ebp+38h], 5
lea     edx, [ebx+14h]
mov     eax, 0E3h
call    sub_4D8BC3

loc_4570C7:
mov     ax, [ebp+4]
test    ax, ax
jz      short loc_4570DC
mov     edx, eax
dec     edx
mov     [ebp+4], dx
jmp     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_4570DC:
xor     eax, eax
mov     edx, [esp+1Ch+var_1C]
mov     al, [edx+3]
cmp     eax, ds:dword_559FF8
jnz     short loc_457125
inc     byte ptr [edx+0Ah]
mov     word ptr [ebp+4], 1Eh
jmp     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_4570FA:             ; jumptable 00456E53 case 4
mov     dx, [ebp+4]
dec     edx
mov     [ebp+4], dx
test    dx, dx
jge     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
mov     edx, ds:dword_559FF8
inc     edx
mov     ebx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     ds:dword_559FF8, edx

loc_457125:
or      byte ptr [ebp+0], 1
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax+0Fh], 0FEh
jmp     def_456E53      ; jumptable 00456E53 default case
sub_456E2F endp         ; jumptable 004576B2 default case

db 8Bh, 0C0h
jpt_45717F dd offset loc_457186 ; jump table for switch statement
dd offset loc_4571A5
dd offset loc_4571E6
dd offset loc_4572BA
jpt_457420 dd offset loc_457427 ; jump table for switch statement
dd offset loc_4574A9
dd offset loc_4574C8
dd offset loc_4574EB
dd offset loc_457508



sub_45715B proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+3D8h]
mov     dword ptr [ebp+54h], offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_45717F      ; jumptable 0045717F default case
and     eax, 0FFh
jmp     jpt_45717F[eax*4] ; switch jump

loc_457186:             ; jumptable 0045717F case 0
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Ah], 1
mov     word ptr [ebp+8], 0
or      byte ptr [ebp+0], 4
lea     eax, [ebp+24h]
call    sub_4E19B4
mov     word ptr [ebp+6], 5Ah ; 'Z'

loc_4571A5:             ; jumptable 0045717F case 1
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, [ebp+54h]
add     edx, 14h
mov     eax, [esp+1Ch+var_1C]
add     eax, 14h
mov     ecx, 800h
call    sub_4DE552
test    eax, eax
jge     short loc_4571D3
mov     word ptr [ebp+3Ah], 3
lea     eax, [ebp+40h]
jmp     short loc_4571DC

loc_4571D3:
mov     word ptr [ebp+3Ah], 5
lea     eax, [ebp+42h]

loc_4571DC:
mov     [ebp+3Ch], eax
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Ah], 2

loc_4571E6:             ; jumptable 0045717F case 2
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, [ebp+54h]
add     edx, 4E8h
mov     eax, [ebp+38h]
sar     eax, 10h
shl     eax, 3
mov     edi, [esp+1Ch+var_1C]
add     edi, 190h
add     eax, edi
mov     ecx, 20h ; ' '
call    sub_4DE552
mov     esi, eax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+56h]
add     eax, esi
and     ah, 0Fh
mov     edx, [esp+1Ch+var_1C]
mov     [edx+56h], ax
mov     eax, [ebp+3Ch]
movsx   ebx, word ptr [eax]
mov     edx, [ebp+54h]
add     edx, 4E8h
mov     eax, [ebp+38h]
sar     eax, 10h
shl     eax, 3
add     eax, edi
mov     ecx, 10h
call    sub_4DE5A3
mov     ecx, eax
mov     edx, eax
mov     eax, [ebp+3Ch]
add     cx, [eax]
and     ch, 0Fh
mov     [eax], cx
cmp     word ptr [ebp+38h], 0
jnz     def_45717F      ; jumptable 0045717F default case
test    si, si
jge     short loc_457276
movsx   eax, si
neg     eax
jmp     short loc_457279

loc_457276:
movsx   eax, si

loc_457279:
cmp     eax, 20h ; ' '
jge     def_45717F      ; jumptable 0045717F default case
test    dx, dx
jge     short loc_45728E
movsx   eax, dx
neg     eax
jmp     short loc_457291

loc_45728E:
movsx   eax, dx

loc_457291:
cmp     eax, 10h
jge     def_45717F      ; jumptable 0045717F default case
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Ah], 3
xor     eax, eax
mov     edx, [esp+1Ch+var_1C]
mov     al, [edx+3]
mov     al, ds:byte_515FFF[eax]
xor     ah, ah
mov     [ebp+4], ax
jmp     def_45717F      ; jumptable 0045717F default case

loc_4572BA:             ; jumptable 0045717F case 3
mov     eax, [ebp+3Ch]
movsx   ebx, word ptr [eax]
mov     edx, [ebp+54h]
add     edx, 4E8h
mov     eax, [ebp+38h]
sar     eax, 10h
shl     eax, 3
mov     ecx, [esp+1Ch+var_1C]
add     ecx, 190h
add     eax, ecx
mov     ecx, 10h
call    sub_4DE5A3
mov     esi, [ebp+3Ch]
add     ax, [esi]
and     ah, 0Fh
mov     [esi], ax
cmp     word ptr [ebp+38h], 0
jnz     loc_4573C9
xor     eax, eax
mov     edx, [esp+1Ch+var_1C]
mov     al, [edx+3]
mov     edx, [edx+80h]
cmp     edx, ds:dword_515FF0[eax*4]
jnb     loc_4573C9
call    sub_4DE043
mov     [ebp+50h], eax
test    eax, eax
jz      loc_4573C9
mov     byte ptr [eax], 1
mov     eax, [ebp+50h]
mov     byte ptr [eax+2], 2Eh ; '.'
cmp     word ptr [ebp+3Ah], 3
jnz     short loc_457343
mov     eax, [ebp+50h]
mov     byte ptr [eax+3], 40h ; '@'
jmp     short loc_45734A

loc_457343:
mov     eax, [ebp+50h]
mov     byte ptr [eax+3], 41h ; 'A'

loc_45734A:
mov     eax, [ebp+50h]
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+56h]
mov     [eax+64h], dx
mov     eax, [ebp+3Ch]
mov     ax, [eax]
add     ah, 4
and     ah, 0Fh
mov     edx, eax
mov     eax, [ebp+50h]
mov     [eax+66h], dx
mov     eax, [ebp+38h]
sar     eax, 10h
shl     eax, 3
mov     ebx, [esp+1Ch+var_1C]
add     eax, ebx
mov     esi, [ebp+50h]
lea     edi, [esi+14h]
lea     esi, [eax+190h]
movsd
movsd
mov     esi, [ebp+50h]
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [ebp+50h]
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     esi, [ebp+50h]
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     word ptr [ebp+38h], 5
lea     edx, [ebx+14h]
mov     eax, 0E3h
call    sub_4D8BC3

loc_4573C9:
mov     si, [ebp+4]
dec     esi
mov     [ebp+4], si
test    si, si
jge     short def_45717F ; jumptable 0045717F default case
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Ah], 1
mov     word ptr [ebp+38h], 2Dh ; '-'
test    byte ptr [ebp+1], 1
jnz     short def_45717F ; jumptable 0045717F default case
or      byte ptr [ebp+0], 1

def_45717F:             ; jumptable 0045717F default case
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+0Fh], 40h
jnz     def_457420      ; jumptable 00457420 default case
test    byte ptr [ebp+1], 2
jnz     def_457420      ; jumptable 00457420 default case
cmp     word ptr [ebp+6], 0
jnz     def_457420      ; jumptable 00457420 default case
mov     al, [eax+0Bh]
cmp     al, 4           ; switch 5 cases
ja      def_457420      ; jumptable 00457420 default case
and     eax, 0FFh
jmp     jpt_457420[eax*4] ; switch jump

loc_457427:             ; jumptable 00457420 case 0
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+80h], 200000h
ja      def_457420      ; jumptable 00457420 default case
push    800h
mov     eax, [ebp+54h]
mov     edx, [eax+54h]
sar     edx, 10h
push    edx
lea     ecx, [eax+1Ch]
mov     eax, [ebp+34h]
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [esp+24h+var_1C]
add     eax, 1Ch
mov     ebx, 600h
call    sub_4DE639
test    eax, eax
jnz     def_457420      ; jumptable 00457420 default case
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Bh], 1
or      byte ptr [eax+0Eh], 88h
mov     esi, [ebp+44h]
lea     edi, [esi+54h]
mov     esi, eax
lea     esi, [esi+54h]
movsd
movsd
mov     dx, [eax+192h]
sub     edx, 0D0h
mov     eax, [ebp+44h]
mov     [eax+16h], dx
mov     esi, [ebp+44h]
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax

loc_4574A9:             ; jumptable 00457420 case 1
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Bh], 2
mov     byte ptr [eax+0Ch], 8
mov     byte ptr [eax+0ACh], 1
lea     edx, [eax+14h]
mov     eax, 0DFh
call    sub_4D8BC3

loc_4574C8:             ; jumptable 00457420 case 2
mov     eax, [esp+1Ch+var_1C]
mov     cl, [eax+0Ch]
dec     cl
mov     [eax+0Ch], cl
jnz     short def_457420 ; jumptable 00457420 default case
mov     byte ptr [eax+0Bh], 3
mov     eax, [ebp+44h]
mov     byte ptr [eax+9], 11h
mov     eax, [ebp+44h]
mov     word ptr [eax+0Ah], 0
jmp     short def_457420 ; jumptable 00457420 default case

loc_4574EB:             ; jumptable 00457420 case 3
mov     eax, [ebp+44h]
cmp     byte ptr [eax+0Dh], 1
jnz     short def_457420 ; jumptable 00457420 default case
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Bh], 4
mov     byte ptr [eax+0Ch], 8
mov     byte ptr [eax+0ACh], 2
jmp     short def_457420 ; jumptable 00457420 default case

loc_457508:             ; jumptable 00457420 case 4
mov     eax, [esp+1Ch+var_1C]
mov     cl, [eax+0Ch]
dec     cl
mov     [eax+0Ch], cl
jnz     short def_457420 ; jumptable 00457420 default case
and     byte ptr [eax+0Eh], 7Fh
mov     [eax+0Bh], cl
mov     [eax+0ACh], cl
mov     word ptr [ebp+6], 5Ah ; 'Z'
and     byte ptr [eax+0Eh], 0F7h

def_457420:             ; jumptable 00457420 default case
mov     di, [ebp+6]
test    di, di
jz      def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
mov     eax, edi
dec     eax
mov     [ebp+6], ax
jmp     def_456E53      ; jumptable 00456E53 default case
sub_45715B endp         ; jumptable 004576B2 default case

db 8Bh, 0C0h
jpt_457579 dd offset loc_457580 ; jump table for switch statement
dd offset loc_457591
dd offset loc_4575DC
dd offset loc_457612
dd offset loc_457659



sub_45755B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
add     eax, 3D8h
mov     dl, [esi+0Ah]
cmp     dl, 4           ; switch 5 cases
ja      def_457579      ; jumptable 00457579 default case
and     edx, 0FFh
jmp     jpt_457579[edx*4] ; switch jump

loc_457580:             ; jumptable 00457579 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1
mov     word ptr [eax+8], 0

loc_457591:             ; jumptable 00457579 case 1
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     eax, [esi+0Ah]
sar     eax, 18h
mov     edx, ds:dword_559FEC[eax*4]
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 20h ; ' '
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jge     short loc_4575CB
cwde
neg     eax
jmp     short loc_4575CC

loc_4575CB:
cwde

loc_4575CC:
test    eax, eax
jnz     def_457579      ; jumptable 00457579 default case
mov     byte ptr [esi+0Ah], 2
or      byte ptr [esi+0Eh], 10h

loc_4575DC:             ; jumptable 00457579 case 2
mov     eax, [esi+0Ah]
sar     eax, 18h
mov     eax, ds:dword_559FEC[eax*4]
test    byte ptr [eax+0Eh], 10h
jz      short loc_4575F3
mov     byte ptr [esi+0Ah], 3

loc_4575F3:
mov     ax, [esi+0CAh]
test    ax, ax
jz      def_457579      ; jumptable 00457579 default case
mov     edx, eax
dec     edx
mov     [esi+0CAh], dx
jmp     def_457579      ; jumptable 00457579 default case

loc_457612:             ; jumptable 00457579 case 3
mov     cx, [esi+0CAh]
test    cx, cx
jnz     short loc_45764A
mov     byte ptr [esi+0Ah], 4
mov     byte ptr [esi+0ACh], 2
or      byte ptr [esi+0Fh], 40h
mov     word ptr [eax+4], 8
mov     eax, ds:dword_55A00C
mov     byte ptr [eax+9], 1
mov     eax, ds:dword_55A00C
mov     [eax+0Ah], cx
jmp     def_457579      ; jumptable 00457579 default case

loc_45764A:
mov     edi, ecx
dec     edi
mov     [esi+0CAh], di
jmp     def_457579      ; jumptable 00457579 default case

loc_457659:             ; jumptable 00457579 case 4
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_457579      ; jumptable 00457579 default case
mov     byte ptr [esi+0ACh], 0
and     byte ptr [esi+0Eh], 0EDh
or      byte ptr [eax], 1
jmp     def_457579      ; jumptable 00457579 default case
sub_45755B endp

db 90h
jpt_4576B2 dd offset loc_4576B9 ; jump table for switch statement
dd offset loc_4576D7
dd offset loc_4577AF
dd offset loc_4577DC



sub_45768F proc near

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
mov     al, [ebp+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
and     eax, 0FFh
jmp     jpt_4576B2[eax*4] ; switch jump

loc_4576B9:             ; jumptable 004576B2 case 0
mov     byte ptr [ebp+0Ah], 1
or      byte ptr [ebp+0Eh], 80h
mov     byte ptr [ebp+0ACh], 1
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+8], 0
mov     word ptr [eax+4], 8

loc_4576D7:             ; jumptable 004576B2 case 1
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, ds:dword_559FEC[eax*4]
add     edx, 14h
lea     eax, [ebp+14h]
mov     ecx, 20h ; ' '
call    sub_4DE552
mov     dx, [ebp+56h]
add     edx, eax
and     dh, 0Fh
mov     [ebp+56h], dx
mov     edx, [esp+1Ch+var_1C]
mov     cx, [edx+4]
test    cx, cx
jnz     loc_4577A3
test    ax, ax
jge     short loc_457721
cwde
neg     eax
jmp     short loc_457722

loc_457721:
cwde

loc_457722:
test    eax, eax
jnz     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     eax, ds:dword_559FEC[eax*4]
test    byte ptr [eax+0Eh], 50h
jz      def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
mov     byte ptr [ebp+0Ah], 2
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
mov     dl, [ebp+0Dh]
mov     [eax+0Eh], dl
mov     esi, [esp+1Ch+var_1C]
mov     esi, [esi+44h]
lea     edi, [esi+54h]
lea     esi, [ebp+54h]
movsd
movsd
mov     dx, [ebp+192h]
sub     edx, 0D0h
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
mov     [eax+16h], dx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
mov     byte ptr [eax+9], 12h
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
mov     word ptr [eax+0Ah], 0
jmp     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_4577A3:
mov     esi, ecx
dec     esi
mov     [edx+4], si
jmp     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_4577AF:             ; jumptable 004576B2 case 2
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
cmp     byte ptr [eax+0Dh], 1
jnz     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
mov     byte ptr [ebp+0Ah], 3
or      byte ptr [ebp+0Eh], 10h
mov     byte ptr [ebp+0ACh], 2
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 8
jmp     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_4577DC:             ; jumptable 004576B2 case 3
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
and     byte ptr [ebp+0Eh], 6Dh
mov     byte ptr [ebp+0ACh], 0
jmp     loc_456C84
sub_45768F endp




sub_457801 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     edi, eax
lea     esi, [eax+3D8h]
mov     dword ptr [esi+54h], offset byte_5F8364
mov     cl, [eax+0Ah]
cmp     cl, 1
jb      short loc_45782C
jbe     short loc_457841
cmp     cl, 2
jz      short loc_45786E
jmp     loc_457916

loc_45782C:
test    cl, cl
jnz     loc_457916
mov     eax, [esi+34h]
test    byte ptr [eax+0Fh], 8
jz      loc_457916

loc_457841:
inc     byte ptr [edi+0Ah]
mov     word ptr [esi+38h], 7
mov     word ptr [esi+8], 0
or      byte ptr [esi], 4
lea     ecx, [edi+14h]
mov     edx, ecx
mov     eax, 0E1h
call    sub_4D8BC3
mov     edx, ecx
mov     eax, 0E2h
call    sub_4D8BC3

loc_45786E:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+54h]
add     edx, 4E8h
lea     eax, [edi+14h]
mov     ecx, 80h
call    sub_4DE552
mov     [esp+1Ch+var_1C], eax
mov     ax, [edi+56h]
add     eax, [esp+1Ch+var_1C]
and     ah, 0Fh
mov     [edi+56h], ax
mov     ebx, [esi+3Eh]
sar     ebx, 10h
mov     edx, [esi+54h]
add     edx, 4E8h
lea     eax, [edi+1A8h]
mov     ecx, 80h
call    sub_4DE5A3
mov     [esp+1Ch+var_18], eax
mov     ax, [esi+40h]
add     eax, [esp+1Ch+var_18]
and     ah, 0Fh
mov     [esi+40h], ax
mov     ebx, [esi+40h]
sar     ebx, 10h
mov     edx, [esi+54h]
add     edx, 4E8h
lea     eax, [edi+1B8h]
mov     ecx, 80h
call    sub_4DE5A3
mov     dx, [esi+42h]
add     edx, eax
and     dh, 0Fh
mov     [esi+42h], dx
mov     ecx, [esp+1Ch+var_1C]
test    cx, cx
jnz     short loc_457916
cmp     word ptr [esp+1Ch+var_18], 0
jnz     short loc_457916
test    ax, ax
jnz     short loc_457916
mov     byte ptr [edi+9], 5
mov     [edi+0Ah], cx

loc_457916:
add     esp, 8
jmp     def_457579      ; jumptable 00457579 default case
sub_457801 endp

db 90h
jpt_45794E dd offset loc_457955 ; jump table for switch statement
dd offset loc_45797B
dd offset loc_4579A5
dd offset loc_4579B8
dd offset loc_4579DC



sub_457933 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+3D8h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_45794E      ; jumptable 0045794E default case
and     eax, 0FFh
jmp     jpt_45794E[eax*4] ; switch jump

loc_457955:             ; jumptable 0045794E case 0
mov     eax, [ebx+34h]
mov     dl, [eax+0Fh]
test    dl, 20h
jz      short loc_457972
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 3
mov     word ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_457972:
test    dl, 10h
jz      def_45794E      ; jumptable 0045794E default case

loc_45797B:             ; jumptable 0045794E case 1
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0ACh], 1
mov     word ptr [ebx+4], 8
mov     word ptr [ebx+8], 0
mov     eax, [ebx+34h]
and     byte ptr [eax+0Fh], 0EFh
lea     edx, [ecx+14h]
mov     eax, 0DFh
call    sub_4D8BC3

loc_4579A5:             ; jumptable 0045794E case 2
mov     eax, [ebx+34h]
mov     dh, [eax+0Fh]
test    dh, 10h
jz      short def_45794E ; jumptable 0045794E default case
mov     dl, dh
and     dl, 0EFh
mov     [eax+0Fh], dl

loc_4579B8:             ; jumptable 0045794E case 3
mov     byte ptr [ecx+0Ah], 4
mov     byte ptr [ecx+0ACh], 2
mov     word ptr [ebx+4], 8
mov     word ptr [ebx+8], 0
lea     edx, [ecx+14h]
mov     eax, 0E0h
call    sub_4D8BC3

loc_4579DC:             ; jumptable 0045794E case 4
mov     dx, [ebx+4]
dec     edx
mov     [ebx+4], dx
test    dx, dx
jge     short def_45794E ; jumptable 0045794E default case
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0Ah], 0

def_45794E:             ; jumptable 0045794E default case
pop     edx
pop     ecx
pop     ebx
retn
sub_457933 endp




sub_4579F9 proc near
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
call    ds:funcs_457A20[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_457A40
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_457A40:
mov     dl, [ebp+0Ah]
test    dl, dl
jz      short loc_457A50
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_457A57

loc_457A50:
mov     dh, dl
inc     dh
mov     [ebp+0Ah], dh

loc_457A57:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4579F9 endp

db 8Dh, 40h, 0
jpt_457A9C dd offset loc_457AA3 ; jump table for switch statement
dd offset loc_457AF9
dd offset loc_457B24
dd offset loc_457B70
dd offset loc_457B98
dd offset loc_457C31
dd offset loc_457C65
dd offset loc_457CCE



sub_457A81 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     al, [eax+9]
cmp     al, 7           ; switch 8 cases
ja      def_457A9C      ; jumptable 00457A9C default case
and     eax, 0FFh
jmp     jpt_457A9C[eax*4] ; switch jump

loc_457AA3:             ; jumptable 00457A9C case 0
mov     eax, esi
call    sub_457D34
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881

unknown_libname_40:     ; Watcom v9-*1.5  32bit NT runtime
mov     ds:dword_77E604, 0FF6D0000h ; Watcom v9-*1.5  32bit common runtime
mov     dword ptr ds:unk_77E608, 0FF200000h
mov     ds:dword_77E60C, 18A0000h
mov     ds:dword_77E634, 6F20000h
mov     ds:dword_77E638, 0B60000h
mov     ds:dword_77E63C, 2000000h

loc_457AF1:
inc     byte ptr [esi+9]
jmp     def_457A9C      ; jumptable 00457A9C default case

loc_457AF9:             ; jumptable 00457A9C case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_457A9C      ; jumptable 00457A9C default case
mov     byte ptr ds:dword_5F836C, 3
xor     ch, ch
mov     byte ptr ds:dword_5F836C+1, ch
xor     edi, edi
mov     ds:dword_5F8370, edi
jmp     short loc_457AF1

loc_457B24:             ; jumptable 00457A9C case 2
mov     ds:byte_5F88AC, 30h ; '0'
mov     word ptr ds:dword_5F889A+2, 64h ; 'd'
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 0FF22h
mov     ds:dword_5F888C, offset unk_640000
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 0FF220000h
mov     word ptr ds:dword_5F88A4+2, 800h
inc     byte ptr [esi+9]

loc_457B70:             ; jumptable 00457A9C case 3
cmp     ds:word_6E23D6, 0
jnz     def_457A9C      ; jumptable 00457A9C default case
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B

loc_457B8C:
inc     byte ptr [esi+9]
mov     byte ptr [esi+0Ah], 0
jmp     def_457A9C      ; jumptable 00457A9C default case

loc_457B98:             ; jumptable 00457A9C case 4
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ebp, offset byte_5F8364
add     ebp, 14h
lea     edi, [esi+14h]
mov     edx, ebp
mov     eax, edi
call    sub_4DE552
mov     [esp+1Ch+var_1C], eax
mov     ax, [esi+56h]
add     eax, [esp+1Ch+var_1C]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, ds:dword_5F83B8
sar     ebx, 10h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552
mov     bx, word ptr ds:dword_5F83B8+2
add     ebx, eax
and     bh, 0Fh
mov     word ptr ds:dword_5F88A4+2, bx
xor     ecx, ecx
mov     cx, word ptr [esp+1Ch+var_1C]
and     eax, 0FFFFh
add     ecx, eax
jnz     def_457A9C      ; jumptable 00457A9C default case
mov     edx, 2Ah ; '*'
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Ch], 28h ; '('
jmp     def_457A9C      ; jumptable 00457A9C default case

loc_457C31:             ; jumptable 00457A9C case 5
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
mov     eax, esi
call    sub_4DD43B
mov     ch, [esi+0Ch]
dec     ch
mov     [esi+0Ch], ch
jnz     def_457A9C      ; jumptable 00457A9C default case
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]
mov     [esi+0Ah], ch
jmp     def_457A9C      ; jumptable 00457A9C default case

loc_457C65:             ; jumptable 00457A9C case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_457A9C      ; jumptable 00457A9C default case
mov     edx, 2Bh ; '+'
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
and     ds:byte_5F8364, 0FDh
xor     edx, edx
mov     ds:dword_77E604, edx
mov     dword ptr ds:unk_77E608, 0FF9C0000h
mov     ds:dword_77E60C, edx
mov     ds:dword_77E634, 0EEE0000h
mov     ds:dword_77E638, 300000h
mov     ds:dword_77E63C, 0FA0000h
jmp     loc_457B8C

loc_457CCE:             ; jumptable 00457A9C case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_457A9C ; jumptable 00457A9C default case
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
mov     byte ptr [esi+4], 0
mov     byte ptr [esi+0Ch], 2Ch ; ','
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+0Eh], 0
mov     byte ptr [esi+0Fh], 0
mov     byte ptr [esi+8], 0
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Bh], 0
mov     eax, 234h
call    sub_47E8B8
mov     eax, 2E9h
call    sub_47EE82

def_457A9C:             ; jumptable 00457A9C default case
add     esp, 4
jmp     loc_457A57
sub_457A81 endp




sub_457D34 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 80h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_457D34 endp

dword_457DC1 dd 0
dword_457DC5 dd 0



sub_457DC9 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_457DE8
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_457DE1[edx*4]

loc_457DE8:
lea     eax, [ebp+3A8h]
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
call    ds:funcs_457DE1[edx*4]
mov     al, [ebp+0ADh]
cmp     al, [ebp+0ACh]
jz      short loc_457E62
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+45h]
sar     ebx, 18h
xor     edx, edx
mov     dl, [ebp+0ACh]
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_457E69

loc_457E62:
mov     eax, ebp
call    sub_4DEB53

loc_457E69:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+48h], 0
test    byte ptr [eax+1], 1
jz      short loc_457E80
mov     eax, [ebp+42h]
sar     eax, 10h
neg     eax
jmp     short loc_457E86

loc_457E80:
mov     eax, [ebp+42h]
sar     eax, 10h

loc_457E86:
sar     eax, 2
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+4Ch]
sar     edx, 10h
add     eax, edx
and     eax, 0FFFh
mov     edx, [esp+1Ch+var_1C]
mov     [edx+4Eh], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+4Eh]
mov     ds:word_560E1C, ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+4Eh]
add     eax, eax
mov     ds:word_560E2C, ax
mov     eax, ebp
call    sub_4DF795
test    byte ptr [ebp+0], 2
jz      short loc_457EDF
mov     ecx, 1
mov     ebx, 200h
mov     edx, 80h
mov     eax, ebp
call    sub_4ED88B

loc_457EDF:
test    byte ptr [ebp+0], 1
jz      short loc_457F34
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 8
jz      short loc_457F34
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+190h]
movsd
movsd
push    0
push    offset unk_800000
sub     word ptr [eax+0Eh], 40h ; '@'
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
mov     edx, 0C8h
call    sub_4E01FC

loc_457F34:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+14h], 0
add     esp, 4
jmp     loc_45859E
sub_457DC9 endp




sub_457F46 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+3A8h]
test    byte ptr [eax+3], 20h
jz      short loc_457F6A
mov     byte ptr [ecx+8], 6
mov     byte ptr [ecx+9], 0

loc_457F62:
mov     word ptr [ebp+0], 8
jmp     short loc_457F9F

loc_457F6A:
mov     dl, [ecx+3]
test    dl, 40h
jz      short loc_457F82
mov     byte ptr [ecx+8], 4
mov     byte ptr [ecx+9], 0
mov     word ptr [ebp+0], 208h
jmp     short loc_457F9F

loc_457F82:
test    dl, 80h
jnz     short loc_457F91
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 5
jmp     short loc_457F62

loc_457F91:
mov     byte ptr [ecx+8], 5
mov     byte ptr [ecx+9], 0
mov     word ptr [ebp+0], 0

loc_457F9F:
mov     word ptr [ecx+0Ah], 0
call    sub_4DDF54
mov     [ebp+34h], eax
test    eax, eax
jnz     short loc_457FBD
mov     eax, ecx
call    sub_4DE2F6
jmp     loc_45859E

loc_457FBD:
mov     byte ptr [eax], 1
mov     eax, [ebp+34h]
mov     byte ptr [eax+2], 1Ah
mov     eax, [ebp+34h]
mov     dl, [ecx+3]
mov     [eax+3], dl
mov     eax, [ebp+34h]
mov     dword ptr [eax+8], 0
mov     eax, [ebp+34h]
mov     edx, [ecx+0Ch]
mov     [eax+0Ch], edx
mov     edx, [ecx+18Eh]
sar     edx, 10h
shl     edx, 10h
mov     eax, [ebp+34h]
mov     [eax+1Ch], edx
mov     edx, [ecx+190h]
sar     edx, 10h
shl     edx, 10h
mov     eax, [ebp+34h]
mov     [eax+20h], edx
mov     edx, [ecx+192h]
sar     edx, 10h
shl     edx, 10h
mov     eax, [ebp+34h]
mov     [eax+24h], edx
mov     esi, [ebp+34h]
lea     edi, [esi+14h]
lea     esi, [ecx+190h]
movsd
movsd
mov     eax, [ebp+34h]
mov     dl, [ecx+1]
mov     [eax+0Dh], dl
or      byte ptr [ecx], 2
and     byte ptr [ecx+3], 1Fh
mov     word ptr [ecx+54h], 0
mov     al, [ecx+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
test    byte ptr [ebp+1], 2
jnz     short loc_458094
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_5163C8[eax*2]
mov     [ecx+44h], ax
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_5163CE[eax*2]
mov     [ecx+4Ch], ax
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_5163D4[eax*2]
mov     [ecx+66h], ax

loc_458094:
and     byte ptr [ecx+0Ch], 0F0h
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     edx, [edx+eax*4]
xor     eax, eax
mov     al, [ecx+3]
mov     al, [edx+eax+0Ah]
xor     ah, ah
shl     eax, 5
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_516068
mov     dword ptr [ecx+10h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+15Eh], 4210h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
or      byte ptr [ebp+0], 6
mov     dword ptr [ebp+4], 0
mov     dword ptr [ebp+8], 0
mov     dword ptr [ebp+14h], 0
mov     dword ptr [ebp+18h], 0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
xor     edx, edx
mov     dl, [eax+0Fh]
lea     eax, [ebp+24h]
mov     ebx, 0FFFFFE00h
call    sub_4E19B9
test    byte ptr [ebp+1], 2
jnz     loc_458231
xor     edx, edx
mov     dl, [ecx+3]
xor     ebx, ebx
mov     bl, ds:byte_5163DA[edx]
mov     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 2
mov     edx, ds:off_5163BC[edx*4]
add     edx, eax
mov     [ebp+38h], edx
xor     edx, edx
mov     dl, [ecx+3]
xor     ebx, ebx
mov     bl, ds:byte_5163E0[edx]
mov     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 2
mov     edx, ds:off_5163BC[edx*4]
add     edx, eax
mov     [ebp+3Ch], edx
mov     byte ptr [ebp+49h], 3
mov     eax, [ebp+38h]
mov     ax, [eax+4]
mov     [ebp+40h], ax
mov     word ptr [ebp+42h], 0
mov     eax, [ebp+38h]
mov     ax, [eax+6]
mov     [ebp+44h], ax
xor     eax, eax
mov     al, [ecx+3]
mov     al, ds:byte_5163DD[eax]
mov     [ebp+4Ah], al
xor     eax, eax
mov     al, [ecx+3]
mov     edx, [ebp+34h]
mov     ds:dword_559FEC[eax*4], edx
xor     eax, eax
mov     al, [ecx+3]
mov     ds:dword_55A000[eax*4], ecx
xor     eax, eax
mov     al, ds:byte_77EAC6
mov     ds:dword_559FE8, eax
xor     edx, edx
mov     ds:dword_559FFC, edx
cmp     byte ptr [ecx+3], 2
jnz     short loc_458231
call    sub_4DE043
mov     ds:dword_55A00C, eax
test    eax, eax
jz      short loc_458231
mov     byte ptr [eax], 1
mov     eax, ds:dword_55A00C
mov     byte ptr [eax+2], 0Dh
mov     eax, ds:dword_55A00C
mov     byte ptr [eax+3], 0
mov     eax, ds:dword_559FF0
or      byte ptr [eax+0Fh], 40h

loc_458231:
mov     word ptr [ebp+4Ch], 0
mov     word ptr [ebp+4Eh], 0
mov     byte ptr [ebp+48h], 0
mov     word ptr [ebp+52h], 0
mov     dword ptr [ebp+54h], 140h
mov     word ptr [ebp+50h], 0
mov     byte ptr [ebp+4Bh], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
jmp     loc_45859E
sub_457F46 endp

db 90h
jpt_458502 dd offset loc_458509 ; jump table for switch statement
dd offset def_458502
dd offset loc_458560
dd offset loc_458555
dd offset loc_45855B
dd offset loc_45854F
dd offset loc_45854F
dd offset def_458502
dd offset loc_458519
dd offset loc_458566



sub_458291 proc near

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
lea     esi, [eax+3A8h]
cmp     ds:dword_559FE4, 0
jnz     loc_4584B5
xor     eax, eax
mov     al, ds:byte_77EAC6
cmp     eax, ds:dword_559FE8
jz      loc_4584B5
mov     ebx, ds:dword_559FFC
test    ebx, ebx
jz      short loc_4582DA
lea     ebp, [ebx-1]
mov     ds:dword_559FFC, ebp
jmp     loc_4584A9

loc_4582DA:
xor     eax, eax

loc_4582DC:
xor     ecx, ecx
mov     cl, ds:byte_5163E3[eax*2]
mov     ecx, ds:dword_559FEC[ecx*4]
mov     ds:dword_55A01C, ecx
mov     dl, ds:byte_5163E4[eax*2]
and     edx, 0FFh
mov     edx, ds:dword_559FEC[edx*4]
mov     ds:dword_55A020, edx
mov     edx, ecx
mov     ebx, [ecx+12h]
sar     ebx, 10h
mov     ecx, ds:dword_55A020
mov     ebp, [ecx+12h]
sar     ebp, 10h
sub     ebx, ebp
mov     edx, [edx+16h]
sar     edx, 10h
mov     [esp+20h+var_20], edx
mov     edx, [ecx+16h]
sar     edx, 10h
mov     ecx, [esp+20h+var_20]
sub     ecx, edx
mov     edx, ecx
imul    ebx, ebx
imul    edx, ecx
add     ebx, edx
mov     ds:dword_55A010[eax*4], ebx
inc     eax
cmp     eax, 3
jl      short loc_4582DC
xor     eax, eax
jmp     short loc_45835B

loc_458351:
inc     eax
cmp     eax, 3
jge     loc_4584A9

loc_45835B:
cmp     ds:dword_55A010[eax*4], offset unk_800000
jnb     short loc_458351
lea     edx, [eax+eax]
xor     ebx, ebx
mov     bl, ds:byte_5163E3[edx]
mov     ecx, ds:dword_559FEC[ebx*4]
mov     ds:dword_55A01C, ecx
xor     ecx, ecx
mov     cl, ds:byte_5163E4[edx]
mov     ebp, ds:dword_559FEC[ecx*4]
mov     ds:dword_55A020, ebp
mov     ebx, ds:dword_55A000[ebx*4]
mov     ds:dword_55A024, ebx
mov     ecx, ds:dword_55A000[ecx*4]
mov     ds:dword_55A028, ecx
mov     ecx, ds:dword_55A01C
mov     ebx, [ecx+0Ch]
sar     ebx, 18h
mov     [esp+20h+var_20], ebx
mov     ebx, ebp
mov     ebp, [ebp+0Ch]
sar     ebp, 18h
mov     [esp+20h+var_1C], ebp
mov     ebp, [esp+20h+var_20]
or      ebp, [esp+20h+var_1C]
mov     [esp+20h+var_1C], ebp
test    byte ptr [esp+20h+var_1C], 40h
jz      loc_458351
test    byte ptr [ecx+0Eh], 4Ch
jnz     loc_458351
test    byte ptr [ebx+0Eh], 4Ch
jnz     loc_458351
mov     dl, ds:byte_5163E4[edx]
mov     [ecx+0Dh], dl
mov     edx, ds:dword_55A01C
or      byte ptr [edx+0Eh], 2
mov     edx, ds:dword_55A01C
test    byte ptr [edx+0Fh], 40h
jz      short loc_458423
or      byte ptr [edx+0Eh], 80h
mov     edx, ds:dword_55A01C
mov     byte ptr [edx+9], 8
jmp     short loc_458427

loc_458423:
mov     byte ptr [edx+9], 7

loc_458427:
mov     edx, ds:dword_55A024
mov     byte ptr [edx+9], 0Ah
mov     edx, ds:dword_55A01C
mov     word ptr [edx+0Ah], 0
mov     edx, ds:dword_55A024
mov     word ptr [edx+0Ah], 0
mov     edx, ds:dword_55A020
mov     al, ds:byte_5163E3[eax*2]
mov     [edx+0Dh], al
mov     eax, ds:dword_55A020
or      byte ptr [eax+0Eh], 2
mov     eax, ds:dword_55A020
test    byte ptr [eax+0Fh], 40h
jz      short loc_45847C
or      byte ptr [eax+0Eh], 80h
mov     eax, ds:dword_55A020
mov     byte ptr [eax+9], 8
jmp     short loc_458480

loc_45847C:
mov     byte ptr [eax+9], 7

loc_458480:
mov     eax, ds:dword_55A028
mov     byte ptr [eax+9], 0Ah
mov     eax, ds:dword_55A020
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A028
mov     word ptr [eax+0Ah], 0
mov     ds:dword_559FE4, 1

loc_4584A9:
xor     eax, eax
mov     al, ds:byte_77EAC6
mov     ds:dword_559FE8, eax

loc_4584B5:
lea     eax, [esi+24h]
mov     edx, edi
call    sub_4E19CA
test    eax, eax
jz      short loc_4584C8
or      byte ptr [esi], 10h
jmp     short loc_4584CB

loc_4584C8:
and     byte ptr [esi], 0EFh

loc_4584CB:
test    byte ptr [esi], 2
jz      short loc_4584D7
mov     eax, edi
call    sub_4597A5

loc_4584D7:
xor     edx, edx
mov     dl, [edi+9]
mov     eax, edi
call    ds:funcs_4584DE[edx*4]
mov     ch, [esi]
test    ch, 1
jz      loc_45857B
mov     al, [edi+9]
dec     al              ; switch 10 cases
cmp     al, 9
ja      def_458502      ; jumptable 00458502 default case, cases 2,8
and     eax, 0FFh
jmp     jpt_458502[eax*4] ; switch jump

loc_458509:             ; jumptable 00458502 case 1
xor     eax, eax
mov     al, [edi+3]
mov     al, ds:byte_5163E9[eax]
mov     [edi+9], al
jmp     short loc_458572

loc_458519:             ; jumptable 00458502 case 9
push    800h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
mov     edx, [edi+54h]
sar     edx, 10h
lea     eax, [edi+1Ch]
mov     ecx, offset dword_5F8380
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      short loc_45854C
mov     eax, edi
call    sub_459987
jmp     short loc_45854F ; jumptable 00458502 cases 6,7

loc_45854C:
and     byte ptr [esi], 0DFh

loc_45854F:             ; jumptable 00458502 cases 6,7
mov     byte ptr [edi+9], 5
jmp     short loc_458572

loc_458555:             ; jumptable 00458502 case 4
mov     byte ptr [edi+9], 2
jmp     short loc_458572

loc_45855B:             ; jumptable 00458502 case 5
test    ch, 20h
jnz     short loc_458555 ; jumptable 00458502 case 4

loc_458560:             ; jumptable 00458502 case 3
mov     byte ptr [edi+9], 1
jmp     short loc_458572

loc_458566:             ; jumptable 00458502 case 10
mov     al, ch
and     al, 7Fh
mov     [esi], al
jmp     short loc_45854F ; jumptable 00458502 cases 6,7

def_458502:             ; jumptable 00458502 default case, cases 2,8
mov     byte ptr [edi+9], 0

loc_458572:
mov     word ptr [edi+0Ah], 0
and     byte ptr [esi], 0FEh

loc_45857B:
mov     dx, [esi+0Ah]
test    dx, dx
jz      short loc_45858B
mov     ebx, edx
dec     ebx
mov     [esi+0Ah], bx

loc_45858B:
mov     cx, [esi+52h]
test    cx, cx
jz      short loc_45859B
mov     edi, ecx
dec     edi
mov     [esi+52h], di

loc_45859B:
add     esp, 8

loc_45859E:
pop     ebp
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
sub_458291 endp         ; jumptable 004591F6 default case, case 1




sub_4585A4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     ecx, [eax+3A8h]
add     eax, 3CCh
mov     edx, ebx
call    sub_4E19CA
test    eax, eax
jz      short loc_4585C6
or      byte ptr [ecx], 10h
jmp     short loc_4585C9

loc_4585C6:
and     byte ptr [ecx], 0EFh

loc_4585C9:
test    byte ptr [ecx], 2
jz      short loc_4585D5
mov     eax, ebx
call    sub_4597A5

loc_4585D5:
xor     edx, edx
mov     dl, [ebx+9]
mov     eax, ebx
call    ds:funcs_4584DE[edx*4]
test    byte ptr [ecx], 1
jz      short loc_4585F5
mov     byte ptr [ebx+9], 0
mov     word ptr [ebx+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_4585F5:
mov     dx, [ecx+0Ah]
test    dx, dx
jz      short loc_458605
mov     ebx, edx
dec     ebx
mov     [ecx+0Ah], bx

loc_458605:
mov     si, [ecx+52h]
test    si, si
jz      def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
mov     edi, esi
dec     edi
mov     [ecx+52h], di
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
sub_4585A4 endp         ; jumptable 004591F6 default case, case 1




sub_45861E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     ecx, [eax+3A8h]
add     eax, 3CCh
mov     edx, ebx
call    sub_4E19CA
test    eax, eax
jz      short loc_458640
or      byte ptr [ecx], 10h
jmp     short loc_458643

loc_458640:
and     byte ptr [ecx], 0EFh

loc_458643:
test    byte ptr [ecx], 2
jz      short loc_4585D5
mov     eax, ebx
call    sub_459863
jmp     short loc_4585D5
sub_45861E endp




sub_458651 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+3A8h]
call    sub_4DE2F6
mov     eax, [edx+34h]
mov     byte ptr [eax+8], 2
mov     eax, [edx+34h]
xor     ecx, ecx
mov     cl, [eax+2]
shl     ecx, 2
mov     ebx, ds:dword_77E6F0
add     ecx, ebx
xor     ebx, ebx
mov     bl, [eax+4]
mov     ecx, [ecx]
call    dword ptr [ecx+ebx*4]
mov     eax, [edx+34h]
test    byte ptr [eax+0Fh], 40h
jz      short loc_458696
mov     eax, ds:dword_55A00C
call    sub_4DE371

loc_458696:
pop     edx
pop     ecx
pop     ebx
retn
sub_458651 endp




sub_45869A proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 3A8h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_4586B2
cmp     bl, 1
jz      short loc_4586D3
pop     edx
pop     ebx
retn

loc_4586B2:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0
mov     word ptr [edx+44h], 0
mov     word ptr [eax+4], 3Ch ; '<'
mov     word ptr [eax+8], 0
and     byte ptr [eax+1], 0FEh

loc_4586D3:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4586E4
or      byte ptr [eax], 1

loc_4586E4:
pop     edx
pop     ebx
retn
sub_45869A endp




sub_4586E7 proc near
push    edx
mov     dl, [eax+3]
mov     [eax+0Ah], dl
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4586F3[edx*4]
pop     edx
retn
sub_4586E7 endp




sub_4586FC proc near
push    edx
mov     dl, [eax+3]
mov     [eax+0Ah], dl
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_458708[edx*4]
pop     edx
retn
sub_4586FC endp

jpt_458741 dd offset loc_458748 ; jump table for switch statement
dd offset loc_458756
dd offset loc_4587D5
dd offset loc_458801



sub_458721 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
lea     edi, [eax+3A8h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_458741      ; jumptable 00458741 default case
and     eax, 0FFh
jmp     jpt_458741[eax*4] ; switch jump

loc_458748:             ; jumptable 00458741 case 0
mov     byte ptr [esi+0Ah], 1
mov     word ptr [edi+8], 0
and     byte ptr [edi+1], 0FEh

loc_458756:             ; jumptable 00458741 case 1
mov     eax, [edi+3Ch]
mov     edx, [eax+6]
sar     edx, 10h
sar     edx, 1
mov     ecx, [eax+2]
sar     ecx, 10h
sub     ecx, edx
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     ebx, ecx
mov     edx, [eax+8]
sar     edx, 10h
sar     edx, 1
mov     ecx, [eax+4]
sar     ecx, 10h
sub     ecx, edx
mov     edx, [esi+16h]
sar     edx, 10h
sub     edx, ecx
mov     ecx, edx
mov     edx, [eax+6]
sar     edx, 10h
cmp     ebx, edx
jnb     short loc_45879F
mov     eax, [eax+8]
sar     eax, 10h
cmp     ecx, eax
jb      short loc_4587D1

loc_45879F:
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, ds:off_5163C4+2
sar     eax, 10h
sar     eax, 1
cmp     eax, edx
jge     short loc_4587BB
mov     ax, [esi+4Ch]
sub     [esi+44h], ax

loc_4587BB:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
jmp     def_458741      ; jumptable 00458741 default case

loc_4587D1:
mov     byte ptr [esi+0Ah], 2

loc_4587D5:             ; jumptable 00458741 case 2
lea     edx, [edi+40h]
lea     eax, [esi+14h]
call    sub_4DDDB4
mov     edx, [esi+54h]
sar     edx, 10h
cwde
sub     edx, eax
add     edx, 200h
and     edx, 0FFFh
cmp     edx, 400h
jge     short loc_458801 ; jumptable 00458741 case 3
mov     byte ptr [esi+0Ah], 3

loc_458801:             ; jumptable 00458741 case 3
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+40h]
lea     eax, [esi+14h]
call    sub_4DE552
mov     [esp+18h+var_18], eax
mov     ax, [esi+56h]
add     eax, [esp+18h+var_18]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esi+42h]
sar     edx, 10h

loc_45882F:
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
cmp     word ptr [esp+18h+var_18], 0
jnz     short def_458741 ; jumptable 00458741 default case
or      byte ptr [edi], 1
mov     eax, [edi+34h]
and     byte ptr [eax+0Eh], 0FBh

def_458741:             ; jumptable 00458741 default case
add     esp, 4
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
sub_458721 endp         ; jumptable 004591F6 default case, case 1




sub_458853 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
lea     edi, [eax+3A8h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_458876
jbe     short loc_458888
cmp     al, 2
jz      loc_45890A
jmp     short def_458741 ; jumptable 00458741 default case

loc_458876:
test    al, al
jnz     short def_458741 ; jumptable 00458741 default case
mov     byte ptr [esi+0Ah], 1
mov     word ptr [edi+8], 0
or      byte ptr [edi+1], 1

loc_458888:
mov     eax, [edi+3Ch]
mov     edx, [eax+6]
sar     edx, 10h
sar     edx, 1
mov     ecx, [eax+2]
sar     ecx, 10h
sub     ecx, edx
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     ebx, ecx
mov     edx, [eax+8]
sar     edx, 10h
sar     edx, 1
mov     ecx, [eax+4]
sar     ecx, 10h
sub     ecx, edx
mov     edx, [esi+16h]
sar     edx, 10h
sub     edx, ecx
mov     ecx, edx
mov     edx, [eax+6]
sar     edx, 10h
cmp     ebx, edx
jnb     short loc_4588D1
mov     eax, [eax+8]
sar     eax, 10h
cmp     ecx, eax
jb      short loc_458906

loc_4588D1:
mov     eax, [esi+42h]
sar     eax, 10h
mov     edx, ds:off_5163C4+2
sar     edx, 10h
sar     edx, 1
cmp     edx, eax
jge     short loc_4588EE
mov     ax, [esi+4Ch]
sub     [esi+44h], ax

loc_4588EE:
mov     edx, [esi+42h]
sar     edx, 10h
neg     edx
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
jmp     def_458741      ; jumptable 00458741 default case

loc_458906:
mov     byte ptr [esi+0Ah], 2

loc_45890A:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
add     ebx, 800h
and     ebx, 0FFFh
lea     edx, [edi+40h]
lea     eax, [esi+14h]
call    sub_4DE552
mov     [esp+18h+var_18], eax
mov     ax, [esi+56h]
add     eax, [esp+18h+var_18]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esi+42h]
sar     edx, 10h
neg     edx
jmp     loc_45882F
sub_458853 endp




sub_45894B proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
add     eax, 3A8h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_458965
cmp     bl, 1
jz      short loc_458995
pop     edx
pop     ecx
pop     ebx
retn

loc_458965:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 3
xor     ecx, ecx
mov     cl, [edx+3]
mov     ecx, ds:(off_5163C4+2)[ecx*2]
sar     ecx, 10h
sar     ecx, 1
mov     [edx+44h], cx
mov     word ptr [eax+4], 5
mov     word ptr [eax+8], 0
and     byte ptr [eax+1], 0FEh

loc_458995:
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short loc_4589AD
or      byte ptr [eax], 1
mov     byte ptr [edx+0ACh], 4

loc_4589AD:
pop     edx
pop     ecx
pop     ebx
retn
sub_45894B endp




sub_4589B1 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+3A8h]
mov     bl, [eax+0Ah]
cmp     bl, 1
jb      short loc_4589CD
jbe     short loc_4589E6
cmp     bl, 2
jz      short loc_458A33
pop     edx
pop     ecx
pop     ebx
retn

loc_4589CD:
test    bl, bl
jnz     short loc_458A44
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 5
mov     word ptr [edx+8], 0
and     byte ptr [edx+1], 0FEh

loc_4589E6:
xor     ecx, ecx
mov     cl, [eax+3]
mov     ecx, ds:(off_5163C4+2)[ecx*2]
sar     ecx, 10h
sar     ecx, 1
mov     ebx, [eax+42h]
sar     ebx, 10h
cmp     ecx, ebx
jge     short loc_458A1C
mov     dx, [eax+4Ch]
sub     [eax+44h], dx
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
pop     edx
pop     ecx
pop     ebx
retn

loc_458A1C:
mov     byte ptr [eax+0Ah], 2
mov     byte ptr [eax+0ACh], 6
mov     word ptr [eax+44h], 0
mov     word ptr [edx+4], 0Ah

loc_458A33:
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     short loc_458A44
or      byte ptr [edx], 1

loc_458A44:
pop     edx
pop     ecx
pop     ebx
retn
sub_4589B1 endp




sub_458A48 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+3A8h]
mov     bl, [eax+0Ah]
cmp     bl, 1
jb      short loc_458A64
jbe     short loc_458A7D
cmp     bl, 2
jz      short loc_458ACC
pop     edx
pop     ecx
pop     ebx
retn

loc_458A64:
test    bl, bl
jnz     short loc_458ADD
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 5
mov     word ptr [edx+8], 0
or      byte ptr [edx+1], 1

loc_458A7D:
xor     ecx, ecx
mov     cl, [eax+3]
mov     ecx, ds:(off_5163C4+2)[ecx*2]
sar     ecx, 10h
sar     ecx, 1
mov     ebx, [eax+42h]
sar     ebx, 10h
cmp     ecx, ebx
jge     short loc_458AB5
mov     dx, [eax+4Ch]
sub     [eax+44h], dx
mov     edx, [eax+42h]
sar     edx, 10h
neg     edx
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
pop     edx
pop     ecx
pop     ebx
retn

loc_458AB5:
mov     byte ptr [eax+0Ah], 2
mov     byte ptr [eax+0ACh], 6
mov     word ptr [eax+44h], 0
mov     word ptr [edx+4], 0Ah

loc_458ACC:
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     short loc_458ADD
or      byte ptr [edx], 1

loc_458ADD:
pop     edx
pop     ecx
pop     ebx
retn
sub_458A48 endp




sub_458AE1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+3A8h]
mov     al, [eax+0Bh]
test    al, al
jbe     short loc_458AFE
cmp     al, 1
jz      short loc_458B2A
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1

loc_458AFE:
mov     byte ptr [edi+0Bh], 1
xor     eax, eax
mov     al, [edi+3]
mov     eax, dword ptr ds:unk_5163CC[eax*2]
sar     eax, 10h
sar     eax, 1
mov     [edi+4Ch], ax
mov     word ptr [esi+8], 0
lea     eax, [esi+24h]
call    sub_4E19B4
and     word ptr [esi], 0FEEFh

loc_458B2A:
mov     eax, [esi+38h]
mov     ebx, [eax+2]
sar     ebx, 10h
mov     edx, [edi+12h]
sar     edx, 10h
sub     edx, ebx
mov     eax, [eax+4]
sar     eax, 10h
mov     ebx, [edi+16h]
sar     ebx, 10h
sub     ebx, eax
mov     eax, ebx
imul    edx, edx
imul    eax, ebx
add     eax, edx
cmp     eax, 200000h
jge     loc_458BE2
mov     eax, edi
call    sub_459592
mov     edx, eax
mov     eax, [esi+38h]
mov     al, [eax]
mov     [esi+49h], al
mov     eax, [esi+38h]
mov     [esi+3Ch], eax
mov     ebx, eax
movsx   eax, dx
mov     ebx, [ebx+eax+9]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
add     ebx, eax
shl     ebx, 2
xor     eax, eax
mov     al, [edi+3]
mov     eax, ds:off_5163BC[eax*4]
add     eax, ebx
mov     [esi+38h], eax
mov     ax, [eax+4]
mov     [esi+40h], ax
mov     word ptr [esi+42h], 0
mov     eax, [esi+38h]
mov     ax, [eax+6]
mov     [esi+44h], ax
mov     ebx, edx
xor     bh, bh
and     bl, 3
mov     eax, [esi+47h]
sar     eax, 18h
movsx   edx, bx
cmp     eax, edx
jz      short loc_458BDA
mov     byte ptr [edi+9], 3
mov     word ptr [edi+0Ah], 0
mov     eax, [esi+34h]
or      byte ptr [eax+0Eh], 4

loc_458BDA:
mov     [esi+4Ah], bl
and     byte ptr [esi], 0EFh
jmp     short loc_458C03

loc_458BE2:
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+40h]
lea     eax, [edi+14h]
mov     ecx, 800h
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax

loc_458C03:
xor     eax, eax
mov     al, [edi+3]
mov     edx, ds:(off_5163C4+2)[eax*2]
sar     edx, 10h
mov     eax, [edi+42h]
sar     eax, 10h
cmp     edx, eax
jle     short loc_458C24
mov     ax, [edi+4Ch]
add     [edi+44h], ax

loc_458C24:
mov     edx, [edi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
cmp     word ptr [esi+52h], 0
jnz     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
mov     bl, [esi]
test    bl, 10h
jz      def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
mov     bh, bl
or      bh, 21h
mov     [esi], bh
mov     eax, edi
call    sub_459987
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
sub_458AE1 endp         ; jumptable 004591F6 default case, case 1




sub_458C5E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     edx, [eax+3A8h]
mov     al, [eax+0Bh]
test    al, al
jbe     short loc_458C7A
cmp     al, 1
jz      short loc_458C9D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_458C7A:
mov     byte ptr [esi+0Bh], 1
xor     eax, eax
mov     al, [esi+3]
mov     eax, dword ptr ds:unk_5163CC[eax*2]
sar     eax, 10h
sar     eax, 1
mov     [esi+4Ch], ax
mov     word ptr [edx+8], 0
and     byte ptr [edx+1], 0FEh

loc_458C9D:
mov     eax, [edx+38h]
mov     ebx, [eax+2]
sar     ebx, 10h
mov     ecx, [esi+12h]
sar     ecx, 10h
sub     ecx, ebx
mov     eax, [eax+4]
sar     eax, 10h
mov     ebx, [esi+16h]
sar     ebx, 10h
sub     ebx, eax
mov     eax, ebx
imul    ecx, ecx
imul    eax, ebx
add     eax, ecx
cmp     eax, 200000h
jge     loc_458D52
mov     eax, esi
call    sub_459592
mov     ecx, eax
mov     eax, [edx+38h]
mov     al, [eax]
mov     [edx+49h], al
mov     eax, [edx+38h]
mov     [edx+3Ch], eax
mov     ebx, eax
movsx   eax, cx
mov     ebx, [ebx+eax+9]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
add     ebx, eax
shl     ebx, 2
xor     eax, eax
mov     al, [esi+3]
mov     eax, ds:off_5163BC[eax*4]
add     eax, ebx
mov     [edx+38h], eax
mov     ax, [eax+4]
mov     [edx+40h], ax
mov     word ptr [edx+42h], 0
mov     eax, [edx+38h]
mov     ax, [eax+6]
mov     [edx+44h], ax
mov     ebx, ecx
xor     bh, bh
and     bl, 3
mov     ecx, [edx+47h]
sar     ecx, 18h
movsx   eax, bx
cmp     ecx, eax
jz      short loc_458D4D
mov     byte ptr [esi+9], 3
mov     word ptr [esi+0Ah], 0
mov     eax, [edx+34h]
or      byte ptr [eax+0Eh], 4

loc_458D4D:
mov     [edx+4Ah], bl
jmp     short loc_458D73

loc_458D52:
mov     ebx, [esi+54h]
sar     ebx, 10h
add     edx, 40h ; '@'
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

loc_458D73:
xor     eax, eax
mov     al, [esi+3]
mov     edx, ds:(off_5163C4+2)[eax*2]
sar     edx, 10h
mov     eax, [esi+42h]
sar     eax, 10h
cmp     edx, eax
jle     short loc_458D94
mov     ax, [esi+4Ch]
add     [esi+44h], ax

loc_458D94:
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
sub_458C5E endp




sub_458DAA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+3A8h]
mov     al, [eax+0Bh]
test    al, al
jbe     short loc_458DC7
cmp     al, 1
jz      short loc_458DF2
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1

loc_458DC7:
mov     byte ptr [edi+0Bh], 1
xor     eax, eax
mov     al, [edi+3]
mov     eax, dword ptr ds:unk_5163CC[eax*2]
sar     eax, 10h
sar     eax, 1
mov     [edi+4Ch], ax
mov     word ptr [esi+8], 0
lea     eax, [esi+24h]
call    sub_4E19B4
and     byte ptr [esi+1], 0FEh

loc_458DF2:
mov     eax, [esi+38h]
mov     ebx, [eax+2]
sar     ebx, 10h
mov     edx, [edi+12h]
sar     edx, 10h
sub     edx, ebx
mov     eax, [eax+4]
sar     eax, 10h
mov     ebx, [edi+16h]
sar     ebx, 10h
sub     ebx, eax
mov     eax, ebx
imul    edx, edx
imul    eax, ebx
add     eax, edx
cmp     eax, 200000h
jge     loc_458EAA
mov     eax, edi
call    sub_459592
mov     edx, eax
mov     eax, [esi+38h]
mov     al, [eax]
mov     [esi+49h], al
mov     eax, [esi+38h]
mov     [esi+3Ch], eax
mov     ebx, eax
movsx   eax, dx
mov     ebx, [ebx+eax+9]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
add     ebx, eax
shl     ebx, 2
xor     eax, eax
mov     al, [edi+3]
mov     eax, ds:off_5163BC[eax*4]
add     eax, ebx
mov     [esi+38h], eax
mov     ax, [eax+4]
mov     [esi+40h], ax
mov     word ptr [esi+42h], 0
mov     eax, [esi+38h]
mov     ax, [eax+6]
mov     [esi+44h], ax
mov     ebx, edx
xor     bh, bh
and     bl, 3
mov     eax, [esi+47h]
sar     eax, 18h
movsx   edx, bx
cmp     eax, edx
jz      short loc_458EA2
mov     byte ptr [edi+9], 3
mov     word ptr [edi+0Ah], 0
mov     eax, [esi+34h]
or      byte ptr [eax+0Eh], 4

loc_458EA2:
mov     [esi+4Ah], bl
and     byte ptr [esi], 0EFh
jmp     short loc_458ECB

loc_458EAA:
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+40h]
lea     eax, [edi+14h]
mov     ecx, 800h
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax

loc_458ECB:
xor     eax, eax
mov     al, [edi+3]
mov     edx, ds:(off_5163C4+2)[eax*2]
sar     edx, 10h
mov     eax, [edi+42h]
sar     eax, 10h
cmp     edx, eax
jle     short loc_458EEC
mov     ax, [edi+4Ch]
add     [edi+44h], ax

loc_458EEC:
mov     edx, [edi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
cmp     word ptr [esi+52h], 0
jnz     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
mov     bl, [esi]
test    bl, 10h
jz      def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
cmp     dword ptr [edi+80h], 120000h
ja      def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
mov     bh, bl
or      bh, 21h
mov     [esi], bh
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
sub_458DAA endp         ; jumptable 004591F6 default case, case 1

db 8Bh, 0C0h
jpt_458F62 dd offset loc_458F69 ; jump table for switch statement
dd offset def_458F62
dd offset loc_458FD3
dd offset loc_459109
dd offset loc_459167



sub_458F45 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edx, [eax+3A8h]
mov     al, [eax+0Bh]
cmp     al, 4           ; switch 5 cases
ja      def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
and     eax, 0FFh
jmp     jpt_458F62[eax*4] ; switch jump

loc_458F69:             ; jumptable 00458F62 case 0
mov     byte ptr [esi+0Bh], 2
xor     eax, eax
mov     al, [esi+3]
mov     eax, dword ptr ds:unk_5163CC[eax*2]
sar     eax, 10h
sar     eax, 1
mov     [esi+4Ch], ax
or      byte ptr [edx+1], 1
test    byte ptr [edx], 40h
jz      short loc_458FD0
mov     eax, [edx+47h]
sar     eax, 18h
add     eax, 2
and     eax, 3
mov     ecx, [edx+3Ch]
mov     eax, [ecx+eax+9]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_458FD0
mov     byte ptr [esi+0Bh], 3
mov     ecx, [edx+48h]
sar     ecx, 18h
add     ecx, 2
and     ecx, 3
mov     eax, 8000h
sar     eax, cl
mov     ecx, eax
xor     eax, eax
mov     ax, [edx+50h]
or      eax, ecx
mov     [edx+50h], ax
jmp     loc_459109      ; jumptable 00458F62 case 3

loc_458FD0:
and     byte ptr [edx], 0BFh

loc_458FD3:             ; jumptable 00458F62 case 2
mov     eax, [edx+38h]
mov     ecx, [eax+2]
sar     ecx, 10h
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     ebx, ecx
mov     eax, [eax+4]
sar     eax, 10h
mov     ecx, [esi+16h]
sar     ecx, 10h
sub     ecx, eax
mov     eax, ecx
imul    ebx, ebx
imul    eax, ecx
add     eax, ebx
cmp     eax, 200000h
jge     loc_4590A3
mov     eax, esi
call    sub_4596E2
cmp     ax, 4
jz      short loc_45901F
mov     byte ptr [esi+0Bh], 3
movsx   bx, byte ptr [edx+4Ah]
jmp     short loc_459047

loc_45901F:
mov     eax, esi
call    sub_459592
mov     ebx, eax
mov     ecx, [edx+47h]
sar     ecx, 18h
cwde
cmp     ecx, eax
jz      short loc_459047
mov     byte ptr [esi+9], 4
mov     word ptr [esi+0Ah], 0
or      byte ptr [edx], 40h
mov     eax, [edx+34h]
or      byte ptr [eax+0Eh], 4

loc_459047:
mov     eax, [edx+38h]
mov     al, [eax]
mov     [edx+49h], al
mov     eax, [edx+38h]
mov     [edx+3Ch], eax
mov     ecx, eax
movsx   eax, bx
mov     ecx, [ecx+eax+9]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
add     ecx, eax
shl     ecx, 2
xor     eax, eax
mov     al, [esi+3]
mov     eax, ds:off_5163BC[eax*4]
add     eax, ecx
mov     [edx+38h], eax
mov     ax, [eax+4]
mov     [edx+40h], ax
mov     word ptr [edx+42h], 0
mov     eax, [edx+38h]
mov     ax, [eax+6]
mov     [edx+44h], ax
and     bl, 3
mov     al, [edx+4Ah]
mov     [edx+4Bh], al
mov     [edx+4Ah], bl
jmp     short loc_4590D0

loc_4590A3:
mov     ebx, [esi+54h]
sar     ebx, 10h
add     ebx, 800h
and     ebx, 0FFFh
add     edx, 40h ; '@'
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

loc_4590D0:
xor     eax, eax
mov     al, [esi+3]
mov     eax, ds:(off_5163C4+2)[eax*2]
sar     eax, 10h
mov     edx, [esi+42h]
sar     edx, 10h
cmp     eax, edx

loc_4590E7:
jle     short loc_4590F1
mov     ax, [esi+4Ch]
add     [esi+44h], ax

loc_4590F1:
mov     edx, [esi+42h]
sar     edx, 10h
neg     edx
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1

loc_459109:             ; jumptable 00458F62 case 3
mov     eax, [edx+3Ch]
mov     ecx, [eax+2]
sar     ecx, 10h
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     ebx, ecx
mov     ecx, [eax+4]
sar     ecx, 10h
mov     eax, [esi+16h]
sar     eax, 10h
sub     eax, ecx
imul    ebx, ebx
imul    eax, eax
add     eax, ebx
cmp     eax, 200000h
jg      short loc_459150
xor     eax, eax
mov     al, [esi+3]
mov     edx, ds:(off_5163C4+2)[eax*2]
sar     edx, 10h
mov     eax, [esi+42h]
sar     eax, 10h
cmp     edx, eax
jmp     short loc_4590E7

loc_459150:
mov     byte ptr [esi+0Bh], 4
mov     byte ptr [esi+0ACh], 6
mov     word ptr [esi+44h], 0
mov     word ptr [edx+4], 0Ah

loc_459167:             ; jumptable 00458F62 case 4
mov     di, [edx+4]     ; jumptable 004591F6 case 4
dec     edi
mov     [edx+4], di
test    di, di
jge     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
mov     byte ptr [esi+9], 5
mov     word ptr [esi+0Ah], 0
mov     al, [edx]
and     al, 0DFh
mov     [edx], al
test    al, 40h
jnz     short loc_4591AE
mov     ecx, [edx+47h]
sar     ecx, 18h
add     ecx, 2
and     ecx, 3
mov     eax, 8000h
sar     eax, cl
mov     ecx, eax
xor     eax, eax
mov     ax, [edx+50h]
or      eax, ecx
mov     [edx+50h], ax

loc_4591AE:
mov     eax, esi
call    sub_459987
and     byte ptr [edx], 0BFh
mov     word ptr [edx+52h], 78h ; 'x'
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
sub_458F45 endp         ; jumptable 004591F6 default case, case 1

db 8Bh, 0C0h
jpt_4591F6 dd offset loc_4591FD ; jump table for switch statement
dd offset def_458F62
dd offset loc_459267
dd offset loc_45939D
dd offset loc_459167



sub_4591D9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edx, [eax+3A8h]
mov     al, [eax+0Bh]
cmp     al, 4           ; switch 5 cases
ja      def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
and     eax, 0FFh
jmp     jpt_4591F6[eax*4] ; switch jump

loc_4591FD:             ; jumptable 004591F6 case 0
mov     byte ptr [esi+0Bh], 2
xor     eax, eax
mov     al, [esi+3]
mov     eax, dword ptr ds:unk_5163CC[eax*2]
sar     eax, 10h
sar     eax, 1
mov     [esi+4Ch], ax
or      byte ptr [edx+1], 1
test    byte ptr [edx], 40h
jz      short loc_459264
mov     eax, [edx+47h]
sar     eax, 18h
add     eax, 2
and     eax, 3
mov     ecx, [edx+3Ch]
mov     eax, [ecx+eax+9]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_459264
mov     byte ptr [esi+0Bh], 3
mov     ecx, [edx+48h]
sar     ecx, 18h
add     ecx, 2
and     ecx, 3
mov     eax, 8000h
sar     eax, cl
mov     ecx, eax
xor     eax, eax
mov     ax, [edx+50h]
or      eax, ecx
mov     [edx+50h], ax
jmp     loc_45939D      ; jumptable 004591F6 case 3

loc_459264:
and     byte ptr [edx], 0BFh

loc_459267:             ; jumptable 004591F6 case 2
mov     eax, [edx+38h]
mov     ecx, [eax+2]
sar     ecx, 10h
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     ebx, ecx
mov     eax, [eax+4]
sar     eax, 10h
mov     ecx, [esi+16h]
sar     ecx, 10h
sub     ecx, eax
mov     eax, ecx
imul    ebx, ebx
imul    eax, ecx
add     eax, ebx
cmp     eax, 200000h
jge     loc_459337
mov     eax, esi
call    sub_4596E2
cmp     ax, 4
jz      short loc_4592B3
mov     byte ptr [esi+0Bh], 3
movsx   bx, byte ptr [edx+4Ah]
jmp     short loc_4592DB

loc_4592B3:
mov     eax, esi
call    sub_459592
mov     ebx, eax
mov     ecx, [edx+47h]
sar     ecx, 18h
cwde
cmp     ecx, eax
jz      short loc_4592DB
mov     byte ptr [esi+9], 4
mov     word ptr [esi+0Ah], 0
or      byte ptr [edx], 40h
mov     eax, [edx+34h]
or      byte ptr [eax+0Eh], 4

loc_4592DB:
mov     eax, [edx+38h]
mov     al, [eax]
mov     [edx+49h], al
mov     eax, [edx+38h]
mov     [edx+3Ch], eax
mov     ecx, eax
movsx   eax, bx
mov     ecx, [ecx+eax+9]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
add     ecx, eax
shl     ecx, 2
xor     eax, eax
mov     al, [esi+3]
mov     eax, ds:off_5163BC[eax*4]
add     eax, ecx
mov     [edx+38h], eax
mov     ax, [eax+4]
mov     [edx+40h], ax
mov     word ptr [edx+42h], 0
mov     eax, [edx+38h]
mov     ax, [eax+6]
mov     [edx+44h], ax
and     bl, 3
mov     al, [edx+4Ah]
mov     [edx+4Bh], al
mov     [edx+4Ah], bl
jmp     short loc_459364

loc_459337:
mov     ebx, [esi+54h]
sar     ebx, 10h
add     ebx, 800h
and     ebx, 0FFFh
add     edx, 40h ; '@'
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

loc_459364:
xor     eax, eax
mov     al, [esi+3]
mov     eax, ds:(off_5163C4+2)[eax*2]
sar     eax, 10h
mov     edx, [esi+42h]
sar     edx, 10h
cmp     eax, edx

loc_45937B:
jle     short loc_459385
mov     ax, [esi+4Ch]
add     [esi+44h], ax

loc_459385:
mov     edx, [esi+42h]
sar     edx, 10h
neg     edx
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1

loc_45939D:             ; jumptable 004591F6 case 3
mov     eax, [edx+3Ch]
mov     ecx, [eax+2]
sar     ecx, 10h
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     ebx, ecx
mov     ecx, [eax+4]
sar     ecx, 10h
mov     eax, [esi+16h]
sar     eax, 10h
sub     eax, ecx
imul    ebx, ebx
imul    eax, eax
add     eax, ebx
cmp     eax, 200000h
jg      loc_459150
xor     eax, eax
mov     al, [esi+3]
mov     edx, ds:(off_5163C4+2)[eax*2]
sar     edx, 10h
mov     eax, [esi+42h]
sar     eax, 10h
cmp     edx, eax
jmp     short loc_45937B
sub_4591D9 endp

db 90h
jpt_459416 dd offset loc_45941D ; jump table for switch statement
dd offset loc_459445
dd offset loc_45945D
dd offset loc_45946F



sub_4593F9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
add     eax, 3A8h
mov     cl, [edx+0Ah]
cmp     cl, 3           ; switch 4 cases
ja      def_459416      ; jumptable 00459416 default case
and     ecx, 0FFh
jmp     jpt_459416[ecx*4] ; switch jump

loc_45941D:             ; jumptable 00459416 case 0
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 6
mov     word ptr [edx+44h], 0
mov     word ptr [eax+4], 0Ah
mov     word ptr [eax+8], 0
mov     ecx, [eax+34h]
or      byte ptr [ecx+0Eh], 5
and     byte ptr [eax+1], 0FEh

loc_459445:             ; jumptable 00459416 case 1
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short def_459416 ; jumptable 00459416 default case
mov     byte ptr [edx+0Ah], 2
mov     word ptr [eax+4], 78h ; 'x'

loc_45945D:             ; jumptable 00459416 case 2
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     short def_459416 ; jumptable 00459416 default case
mov     byte ptr [edx+0Ah], 3

loc_45946F:             ; jumptable 00459416 case 3
cmp     dword ptr [edx+80h], 120000h
jbe     short def_459416 ; jumptable 00459416 default case
or      byte ptr [eax], 1
mov     eax, [eax+34h]
and     byte ptr [eax+0Eh], 0FAh

def_459416:             ; jumptable 00459416 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4593F9 endp




sub_45948A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edx, [eax+3A8h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4594A7
cmp     al, 1
jz      short loc_4594D2
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1

loc_4594A7:
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [ecx+0ACh], 0Dh
mov     word ptr [edx+4], 3Ch ; '<'
mov     word ptr [edx+8], 0
mov     eax, [edx+34h]
mov     byte ptr [eax+9], 2
mov     eax, [edx+34h]
mov     word ptr [eax+0Ah], 0
and     byte ptr [edx+1], 0FEh

loc_4594D2:
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
call    sub_4DE13B
test    eax, eax
jz      short loc_459503
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
lea     edi, [eax+48h]
lea     esi, [ecx+190h]
movsd
movsd

loc_459503:
test    byte ptr [edx+1], 2
jz      short loc_459510
mov     eax, ecx
call    sub_4DE2F6

loc_459510:
and     byte ptr [ecx], 0FCh
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0
lea     edx, [ecx+14h]
mov     eax, ecx
call    sub_4AF9F8
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
sub_45948A endp         ; jumptable 004591F6 default case, case 1




sub_45952A proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 3A8h
mov     bl, [edx+0Ah]
cmp     bl, 1
jb      short loc_459545
jbe     short loc_45956A
cmp     bl, 2
jz      short loc_45957C
pop     edx
pop     ebx
retn

loc_459545:
test    bl, bl
jnz     short loc_45958F
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 6
mov     word ptr [edx+44h], 0
mov     word ptr [eax+4], 0Ah
mov     word ptr [eax+8], 0
and     byte ptr [eax+1], 0FEh

loc_45956A:
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short loc_45958F
mov     byte ptr [edx+0Ah], 2

loc_45957C:
mov     edx, [eax+34h]
mov     bh, [edx+0Eh]
test    bh, 2
jz      short loc_45958C
test    bh, 40h
jz      short loc_45958F

loc_45958C:
or      byte ptr [eax], 1

loc_45958F:
pop     edx
pop     ebx
retn
sub_45952A endp




sub_459592 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
push    eax
mov     eax, dword_457DC1
mov     [esp+20h+var_1C], eax
mov     ebx, [esp+20h+var_20]
add     ebx, 3A8h
mov     eax, [esp+20h+var_20]
cmp     byte ptr [eax+3], 1
jnz     short loc_45960F
add     eax, 14h
mov     edx, (offset dword_5F8376+2)
call    sub_4DDDB4
add     eax, 200h
and     eax, 0FFFh
sar     eax, 0Ah
mov     edx, [ebx+38h]
movsx   esi, ax
add     edx, esi
mov     ecx, [edx+9]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jz      short loc_45960F
mov     cl, [ebx+49h]
cmp     cl, [edx+0Ch]
jz      short loc_45960F
xor     edx, edx
mov     dx, [ebx+50h]
movsx   ecx, ax
mov     eax, 8000h
sar     eax, cl
test    edx, eax
jnz     short loc_45960F
mov     byte ptr [esp+esi+20h+var_1C], 1
mov     esi, 1
jmp     loc_45968B

loc_45960F:
xor     esi, esi
xor     eax, eax
jmp     short loc_45961C

loc_459615:
inc     eax
cmp     ax, 4
jge     short loc_459653

loc_45961C:
mov     edx, [ebx+38h]
movsx   edi, ax
add     edx, edi
mov     ecx, [edx+9]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jz      short loc_459615
mov     cl, [ebx+49h]
cmp     cl, [edx+0Ch]
jz      short loc_459615
xor     edx, edx
mov     dx, [ebx+50h]
movsx   ecx, ax
mov     ebp, 8000h
sar     ebp, cl
test    edx, ebp
jnz     short loc_459615
mov     byte ptr [esp+edi+20h+var_1C], 1
inc     esi
jmp     short loc_459615

loc_459653:
mov     eax, [esp+20h+var_20]
cmp     byte ptr [eax+3], 0
jnz     short loc_45968B
add     eax, 14h
mov     edx, (offset dword_5F8376+2)
call    sub_4DDDB4
add     eax, 200h
and     eax, 0FFFh
sar     eax, 0Ah
cwde
cmp     byte ptr [esp+eax+20h+var_1C], 0
jz      short loc_45968B
cmp     si, 1
jle     short loc_45968B
xor     ch, ch
mov     byte ptr [esp+eax+20h+var_1C], ch
dec     esi

loc_45968B:
mov     word ptr [ebx+50h], 0
test    si, si
jnz     short loc_45969D
mov     edx, 4
jmp     short loc_4596DB

loc_45969D:
mov     ax, [ebx+2]
xor     ah, ah
and     al, 3
xor     edx, edx
mov     dx, ax
movsx   ecx, si
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     ebx, edx
xor     esi, esi
xor     eax, eax
jmp     short loc_4596C3

loc_4596BC:
inc     eax
cmp     ax, 4
jge     short loc_4596D8

loc_4596C3:
movsx   edx, ax
mov     dl, byte ptr [esp+edx+20h+var_1C]
xor     dh, dh
add     esi, edx
movsx   edx, bx
movsx   ecx, si
cmp     edx, ecx
jge     short loc_4596BC

loc_4596D8:
movsx   edx, ax

loc_4596DB:
mov     eax, edx
jmp     loc_45859B
sub_459592 endp




sub_4596E2 proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     ecx, eax
mov     eax, dword_457DC5
mov     [esp+14h+var_14], eax
lea     eax, [ecx+3A8h]
xor     edx, edx
mov     ecx, [eax+47h]
sar     ecx, 18h
dec     ecx
and     ecx, 3
mov     ebx, [eax+38h]
mov     ebx, [ecx+ebx+9]
sar     ebx, 18h
cmp     ebx, 0FFFFFFFFh
jz      short loc_45971D
mov     byte ptr [esp+ecx+14h+var_14], 1
mov     edx, 1

loc_45971D:
mov     ecx, [eax+47h]
sar     ecx, 18h
inc     ecx
and     ecx, 3
mov     ebx, [eax+38h]
mov     ebx, [ecx+ebx+9]
sar     ebx, 18h
cmp     ebx, 0FFFFFFFFh
jz      short loc_45973B
mov     byte ptr [esp+ecx+14h+var_14], 1
inc     edx

loc_45973B:
mov     ecx, [eax+38h]
mov     ebx, [eax+47h]
sar     ebx, 18h
mov     ecx, [ecx+ebx+9]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jz      short loc_459755
test    dx, dx
jnz     short loc_45975C

loc_459755:
mov     ecx, 4
jmp     short loc_45979B

loc_45975C:
mov     ax, [eax+2]
xor     ah, ah
and     al, 3
xor     ecx, ecx
mov     cx, ax
movsx   ebx, dx
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
idiv    ebx
mov     esi, edx
xor     edx, edx
xor     eax, eax
jmp     short loc_459784

loc_45977D:
inc     eax
cmp     ax, 4
jge     short loc_459798

loc_459784:
movsx   ecx, ax
mov     cl, byte ptr [esp+ecx+14h+var_14]
xor     ch, ch
add     edx, ecx
movsx   ecx, si
movsx   ebx, dx
cmp     ecx, ebx
jge     short loc_45977D

loc_459798:
movsx   ecx, ax

loc_45979B:
mov     eax, ecx
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4596E2 endp




sub_4597A5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+3A8h]
mov     edx, [ebx+14h]
and     edx, 0FFFFFFh
jz      loc_459858
test    byte ptr [ebx+17h], 38h
jz      loc_45984B
mov     eax, [ebx+34h]
or      byte ptr [eax+0Fh], 1
mov     si, [ecx+6Eh]
test    si, si
jle     short loc_4597EA
mov     [ecx+0B2h], si
mov     edi, esi
sub     edi, edx
mov     [ecx+6Eh], di

loc_4597EA:
cmp     word ptr [ecx+6Eh], 0
jg      short loc_45982C
mov     eax, [ebx+34h]
mov     eax, [eax+0Bh]
sar     eax, 18h
test    al, 80h
jnz     short loc_45982C
lea     edx, [ecx+14h]
mov     eax, 0A2h
call    sub_4D8BC3
mov     dl, [ebx]
and     dl, 0F9h
mov     [ebx], dl
mov     dh, dl
or      dh, 4
mov     [ebx], dh
mov     byte ptr [ecx+9], 8
mov     word ptr [ecx+0Ah], 0
mov     eax, [ebx+34h]
mov     byte ptr [eax+0Eh], 40h ; '@'
jmp     short loc_459839

loc_45982C:
lea     edx, [ecx+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_459839:
mov     word ptr [ecx+15Eh], 7FFFh
mov     ecx, [ebx+34h]
or      byte ptr [ecx+0Fh], 2
jmp     short loc_459858

loc_45984B:
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_459858:
mov     eax, 1

def_458F62:             ; jumptable 00458F62 default case, case 1
pop     edi             ; jumptable 004591F6 default case, case 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4597A5 endp




sub_459863 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+3A8h]
mov     ebx, [ecx+14h]
and     ebx, 0FFFFFFh
jz      loc_45992D
lea     edx, [eax+14h]
test    byte ptr [ecx+17h], 38h
jz      loc_459923
mov     eax, [ecx+34h]
or      byte ptr [eax+0Fh], 1
mov     edi, [ecx+54h]
sub     edi, ebx
mov     [ecx+54h], edi
test    edi, edi
jg      short loc_459904
mov     eax, [ecx+34h]
mov     eax, [eax+0Bh]
sar     eax, 18h
test    al, 80h
jnz     short loc_459904
mov     eax, 0A2h
call    sub_4D8BC3
mov     eax, 605h
call    sub_47E8B8
mov     eax, 610h
call    sub_47E888
test    eax, eax
jnz     short loc_459911
mov     edx, 5
mov     eax, 4
call    sub_4A0E24
mov     eax, 610h
call    sub_47E8B8
xor     eax, eax
mov     ds:dword_559FE4, eax
mov     ds:dword_559FFC, 8
mov     al, ds:byte_77EAC6
mov     ds:dword_559FE8, eax
jmp     short loc_459911

loc_459904:
lea     edx, [esi+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_459911:
mov     word ptr [esi+15Eh], 7FFFh
mov     eax, [ecx+34h]
or      byte ptr [eax+0Fh], 2
jmp     short loc_45992D

loc_459923:
mov     eax, 0A3h
call    sub_4D8BC3

loc_45992D:
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      loc_459858
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 5
mov     word ptr [esi+0Ah], 0
mov     eax, [ecx+34h]
mov     byte ptr [eax+9], 0
mov     eax, [ecx+34h]
mov     word ptr [eax+0Ah], 0
xor     eax, eax
mov     al, [esi+3]
mov     edx, eax
mov     ecx, ds:off_5163EF[eax*4]
push    ecx
xor     ebx, ebx
mov     bl, ds:byte_5163EC[eax]
mov     ecx, 60h ; '`'
xor     edx, eax
mov     eax, esi
call    sub_436785
jmp     loc_459858
sub_459863 endp




sub_459987 proc near
push    ecx
push    edx
mov     edx, [eax+3E0h]
mov     dl, [edx]
mov     [eax+3F1h], dl
mov     edx, [eax+3E4h]
mov     dx, [edx+4]
mov     [eax+3E8h], dx
mov     word ptr [eax+3EAh], 0
mov     edx, [eax+3E4h]
mov     dx, [edx+6]
mov     [eax+3ECh], dx
mov     edx, [eax+3E0h]
mov     ecx, [eax+3E4h]
mov     [eax+3E0h], ecx
mov     [eax+3E4h], edx
mov     dl, [eax+3F2h]
add     dl, 2
and     dl, 3
mov     [eax+3F2h], dl
pop     edx
pop     ecx
retn
sub_459987 endp




sub_4599EF proc near
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
add     eax, 408h
cmp     byte ptr [ecx+8], 0
jnz     short loc_459A34
mov     edx, eax
mov     eax, ecx
call    sub_459A4A
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
jmp     short loc_459A44

loc_459A34:
mov     edx, eax
mov     eax, ecx
call    sub_459AC1
mov     eax, ecx
call    sub_4DEADD

loc_459A44:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4599EF endp




sub_459A4A proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
movsx   ax, byte ptr [ecx+0Ch]
imul    eax, 0Ah
mov     [ebx], ax
movsx   ax, byte ptr [ecx+0Dh]
imul    eax, 0Ah
mov     [ebx+2], ax
movsx   ax, byte ptr [ecx+0Eh]
imul    eax, 0Ah
mov     [ebx+4], ax
movsx   ax, byte ptr [ecx+0Fh]
mov     [ebx+6], ax
mov     word ptr [ebx+8], 0
mov     ax, [ecx+16h]
mov     [ebx+0Ah], ax
pop     ecx
pop     ebx
retn
sub_459A4A endp




sub_459AC1 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
movsx   edx, word ptr [edx]
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
mov     ax, [esi+6]
add     [edi+56h], ax
and     byte ptr [edi+57h], 0Fh
cmp     word ptr [esi+4], 0
jle     short loc_459B46
mov     edx, [esi+6]
sar     edx, 10h
shl     edx, 6
mov     ecx, [esi+2]
sar     ecx, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
mov     edx, [esi]
sar     edx, 10h
imul    edx, eax
sar     edx, 0Ch
mov     eax, [esi+8]
sar     eax, 10h
add     eax, edx
mov     [edi+16h], ax
mov     eax, [edi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+20h], eax
inc     word ptr [esi+8]
mov     edx, [esi+6]
sar     edx, 10h
mov     ecx, [esi+2]
sar     ecx, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     [esi+8], dx

loc_459B46:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_459AC1 endp




sub_459B4B proc near
cmp     byte ptr [eax+8], 0
jnz     loc_459CAF
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
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     eax, ds:dword_5163FA[eax]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     eax, ds:(dword_5163FA+2)[eax]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     eax, ds:dword_5163FE[eax]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     ax, ds:word_516404[eax]
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     ax, ds:word_516402[eax]
mov     [ecx+56h], ax
mov     byte ptr [ecx+0ACh], 0
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+15Ch], 200h
mov     ax, [ecx+15Ch]
mov     [ecx+15Ah], ax
mov     [ecx+158h], ax
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+1F0h], 0
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     ax, ds:word_51640A[eax]
mov     [ecx+1F2h], ax
mov     ebx, [ecx+1F0h]
sar     ebx, 10h
mov     eax, 1000h
mov     edx, eax
sar     edx, 1Fh
idiv    ebx
mov     [ecx+1F4h], ax
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     ax, ds:word_516408[eax]
mov     [ecx+1F6h], ax
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     ax, ds:word_516406[eax]
mov     [ecx+1E8h], ax
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     ax, word ptr ds:dword_5163FE[eax]
mov     [ecx+1EAh], ax
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_459CAF:
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
mov     ax, [esi+1E8h]
add     [esi+56h], ax
and     byte ptr [esi+57h], 0Fh
mov     ecx, [esi+1F4h]
sar     ecx, 10h
mov     edx, [esi+1F2h]
sar     edx, 10h
mov     eax, [esi+1EEh]
sar     eax, 10h
imul    eax, edx
call    sub_4EF008
imul    eax, ecx
sar     eax, 0Ch
cwde
mov     edx, [esi+1E8h]
sar     edx, 10h
add     eax, edx
mov     [esi+16h], ax
inc     word ptr [esi+1F0h]
mov     bx, [esi+1F2h]
mov     ax, [esi+1F0h]
cwd
idiv    bx
mov     [esi+1F0h], dx
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_459B4B endp




sub_459D39 proc near
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
add     eax, 408h
cmp     byte ptr [ecx+8], 0
jnz     short loc_459D7E
mov     edx, eax
mov     eax, ecx
call    sub_459D94
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
jmp     short loc_459D8E

loc_459D7E:
mov     edx, eax
mov     eax, ecx
call    sub_459E2B
mov     eax, ecx
call    sub_4DEADD

loc_459D8E:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_459D39 endp




sub_459D94 proc near
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
mov     dword ptr [ecx+158h], 1000100h
mov     dword ptr [ecx+15Ch], 100h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0Dh], 5
mov     byte ptr [ecx+0Eh], 14h
cmp     byte ptr [ecx+3], 0
jz      short loc_459DE6
mov     byte ptr [ecx+0Ch], 1Ch
mov     byte ptr [ecx+0Fh], 0F0h
jmp     short loc_459DEE

loc_459DE6:
mov     byte ptr [ecx+0Ch], 20h ; ' '
mov     byte ptr [ecx+0Fh], 10h

loc_459DEE:
movsx   ax, byte ptr [ecx+0Ch]
imul    eax, 0Ah
mov     [ebx], ax
movsx   ax, byte ptr [ecx+0Dh]
imul    eax, 0Ah
mov     [ebx+2], ax
movsx   ax, byte ptr [ecx+0Eh]
imul    eax, 0Ah
mov     [ebx+4], ax
movsx   ax, byte ptr [ecx+0Fh]
mov     [ebx+6], ax
mov     word ptr [ebx+8], 0
mov     ax, [ecx+16h]
mov     [ebx+0Ah], ax
pop     ecx
pop     ebx
retn
sub_459D94 endp




sub_459E2B proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
movsx   edx, word ptr [edx]
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
mov     ax, [esi+6]
add     [edi+56h], ax
and     byte ptr [edi+57h], 0Fh
cmp     word ptr [esi+4], 0
jle     short loc_459EB0
mov     edx, [esi+6]
sar     edx, 10h
shl     edx, 6
mov     ecx, [esi+2]
sar     ecx, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
mov     edx, [esi]
sar     edx, 10h
imul    edx, eax
sar     edx, 0Ch
mov     eax, [esi+8]
sar     eax, 10h
add     eax, edx
mov     [edi+16h], ax
mov     eax, [edi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+20h], eax
inc     word ptr [esi+8]
mov     edx, [esi+6]
sar     edx, 10h
mov     ecx, [esi+2]
sar     ecx, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     [esi+8], dx

loc_459EB0:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_459E2B endp




sub_459EB5 proc near

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
call    ds:funcs_459F0A[edx*4]
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_459F30
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_459F37

loc_459F30:
mov     eax, ebp
call    sub_4DEADD

loc_459F37:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 20h
jz      short loc_459F4D
lea     edx, [eax+34h]
lea     eax, [ebp+228h]
call    sub_4EF689

loc_459F4D:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 8
jz      short loc_459FAD
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+190h]
movsd
movsd
push    80h
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
mov     edx, 50h ; 'P'
call    sub_4E01FC

loc_459FAD:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+14h], 0
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_459EB5 endp




sub_459FC1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     dword ptr [ebx+34h], 1000h
mov     dword ptr [ebx+38h], 1000h
mov     dword ptr [ebx+3Ch], 0
mov     word ptr [ebx], 2Ch ; ','
mov     dword ptr [ebx+4], 0
mov     dword ptr [ebx+8], 0
mov     dword ptr [ebx+14h], 0
mov     dword ptr [ebx+18h], 0
lea     eax, [ebx+24h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, ds:dword_55A10C
mov     eax, [ebx+eax*4]
mov     al, [eax+8]
xor     ah, ah
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_5164B0
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     [ecx+9], ah
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+15Eh], 4210h
mov     byte ptr [ecx+0FFh], 0FFh
pop     edx
pop     ecx
pop     ebx
retn
sub_459FC1 endp




sub_45A0A7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
lea     ecx, [eax+408h]
test    byte ptr [ecx], 40h
jz      short loc_45A0CB
lea     eax, [ecx+24h]
mov     edx, ebx
call    sub_4E19CA
test    eax, eax
jz      short loc_45A0CB
or      byte ptr [ecx], 10h
jmp     short loc_45A0CE

loc_45A0CB:
and     byte ptr [ecx], 0EFh

loc_45A0CE:
test    byte ptr [ecx], 2
jz      short loc_45A0DA
mov     eax, ebx
call    sub_45A1EA

loc_45A0DA:
xor     edx, edx
mov     dl, [ebx+9]
mov     eax, ebx
call    ds:funcs_45A0E1[edx*4]
mov     dx, [ecx+0Ah]
test    dx, dx
jz      short loc_45A0F8
mov     esi, edx
dec     esi
mov     [ecx+0Ah], si

loc_45A0F8:
test    byte ptr [ecx], 1
jz      short loc_45A128
mov     al, [ebx+9]
test    al, al
jbe     short loc_45A10A
cmp     al, 1
jz      short loc_45A110
jmp     short loc_45A11F

loc_45A10A:
mov     byte ptr [ebx+9], 1
jmp     short loc_45A11F

loc_45A110:
mov     byte ptr [ebx+2], 3
mov     byte ptr [ebx+3], 40h ; '@'
mov     dword ptr [ebx+8], 0

loc_45A11F:
mov     word ptr [ebx+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_45A128:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45A0A7 endp



; Attributes: thunk

sub_45A12D proc near
jmp     sub_4DE2F6
sub_45A12D endp




sub_45A132 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
mov     bl, [eax+0Ah]
test    bl, bl
jbe     short loc_45A149
cmp     bl, 1
jz      short loc_45A15A
pop     edx
pop     ebx
retn

loc_45A149:
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 0
mov     word ptr [edx+8], 0

loc_45A15A:
cmp     dword ptr [eax+80h], 4E200h
ja      short loc_45A169
or      byte ptr [edx], 1

loc_45A169:
pop     edx
pop     ebx
retn
sub_45A132 endp




sub_45A16C proc near
push    ebx
push    ecx
push    edx
push    esi
lea     esi, [eax+408h]
mov     dl, [eax+0Ah]
test    dl, dl
jbe     short loc_45A187
cmp     dl, 1
jz      short loc_45A1A5
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45A187:
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 0
mov     byte ptr [eax+0FFh], 0
mov     word ptr [esi+4], 8
mov     word ptr [esi+8], 0

loc_45A1A5:
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jl      short loc_45A1CD
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'
call    sub_4DD43B
add     dword ptr [esi+3Ch], 100h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45A1CD:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
call    sub_4DD43B
add     dword ptr [esi+3Ch], 800h
or      byte ptr [esi], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45A16C endp




sub_45A1EA proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+408h]
mov     esi, [ebx+14h]
and     esi, 0FFFFFFh
jz      short loc_45A257
lea     edx, [eax+14h]
test    byte ptr [ebx+17h], 18h
jz      short loc_45A24D
mov     eax, 0A3h
call    sub_4D8BC3
mov     dx, [ecx+6Eh]
mov     [ecx+0B2h], dx
sub     edx, esi
mov     [ecx+6Eh], dx
test    dx, dx
jg      short loc_45A242
mov     dl, [ebx]
and     dl, 0F9h
mov     [ebx], dl
mov     dh, dl
or      dh, 4
mov     [ebx], dh
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0

loc_45A242:
mov     word ptr [ecx+15Eh], 7FFFh
jmp     short loc_45A257

loc_45A24D:
mov     eax, 0A3h
call    sub_4D8BC3

loc_45A257:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45A1EA endp




sub_45A261 proc near
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
mov     [ebp+6], ax
xor     edx, edx
mov     dl, [ecx+8]
mov     eax, ecx
call    ds:funcs_45A2AE[edx*4]
test    byte ptr [ebp+4], 10h
jz      loc_45A36A
mov     al, [ecx+0ADh]
cmp     al, [ecx+0ACh]
jz      short loc_45A2E0
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
jmp     short loc_45A2E7

loc_45A2E0:
mov     eax, ecx
call    sub_4DEB53

loc_45A2E7:
cmp     byte ptr [ecx+8], 4
jz      short loc_45A361
test    byte ptr [ebp+5], 1
jz      short loc_45A31B
movsx   ax, byte ptr [ebp+3Dh]
imul    eax, 28h ; '('
add     ax, [ebp+38h]
and     ah, 0Fh
mov     [ebp+38h], ax
movsx   ax, byte ptr [ebp+3Dh]
imul    eax, 28h ; '('
mov     dx, [ebp+3Ah]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
jmp     short loc_45A349

loc_45A31B:
mov     eax, [ecx+42h]
sar     eax, 10h
sar     eax, 1
mov     edx, [ebp+36h]
sar     edx, 10h
add     eax, edx
and     eax, 0FFFh
mov     [ebp+38h], ax
mov     eax, [ecx+42h]
sar     eax, 10h
sar     eax, 1
mov     edx, [ebp+38h]
sar     edx, 10h
add     eax, edx
and     eax, 0FFFh

loc_45A349:
mov     [ebp+3Ah], ax
mov     ax, [ebp+38h]
mov     ds:word_560E34, ax
mov     ax, [ebp+3Ah]
mov     ds:word_560E3C, ax

loc_45A361:
mov     eax, ecx
call    sub_4DF795
jmp     short loc_45A381

loc_45A36A:
xor     ebx, ebx
mov     bl, [ecx+0A4h]
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B

loc_45A381:
test    byte ptr [ebp+4], 8
jz      short loc_45A38E
mov     eax, ecx
call    sub_45B24C

loc_45A38E:
lea     eax, [ecx+190h]
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 0C0h
call    sub_4ED95E

loc_45A3A5:
pop     ebp

loc_45A3A6:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45A261 endp




sub_45A3AC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+3D8h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ebx+4], 5Eh ; '^'
mov     dword ptr [ebx+8], 0
mov     dword ptr [ebx+0Ch], 0
mov     dword ptr [ebx+18h], 0
mov     dword ptr [ebx+1Ch], 0
mov     dword ptr [ebx+2Ch], 0
mov     word ptr [ebx+3Ah], 0
mov     dx, [ebx+3Ah]
mov     [ebx+38h], dx
cmp     byte ptr [ecx+3], 0
jnz     short loc_45A444
xor     edx, edx
mov     dl, [ecx+2]
mov     ebx, ds:dword_55A10C
mov     ebx, [ebx+edx*4]
xor     edx, edx
mov     dl, [ebx+8]
shl     edx, 4
jmp     short loc_45A45A

loc_45A444:
xor     ebx, ebx
mov     bl, [ecx+2]
mov     edx, ds:dword_55A10C
mov     edx, [edx+ebx*4]
mov     dl, [edx+8]
xor     dh, dh
shl     edx, 3

loc_45A45A:
mov     [ecx+6Eh], dx
mov     dx, [ecx+6Eh]
mov     [ecx+0B0h], dx
mov     [ecx+0B2h], dx
mov     dword ptr [ecx+78h], offset unk_5164F8
mov     dh, [ecx+0Ch]
test    dh, 2
jz      short loc_45A485
mov     byte ptr [ecx+8], 4
jmp     short loc_45A494

loc_45A485:
test    dh, 10h
jz      short loc_45A490
mov     byte ptr [ecx+8], 3
jmp     short loc_45A494

loc_45A490:
mov     byte ptr [ecx+8], 1

loc_45A494:
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+15Eh], 4210h
pop     edx
pop     ecx
pop     ebx
retn
sub_45A3AC endp




sub_45A4B6 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
test    byte ptr [edi+4], 2
jz      short loc_45A4D0
mov     eax, esi
call    sub_45B2B8

loc_45A4D0:
xor     edx, edx
mov     dl, [esi+9]
mov     eax, esi
call    ds:funcs_45A4D7[edx*4]
test    byte ptr [edi+4], 1
jz      short loc_45A4F5
mov     eax, esi
call    sub_45B09D
mov     word ptr [esi+0Ah], 0
and     byte ptr [edi+4], 0FEh

loc_45A4F5:
mov     ecx, 1000008h
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_432697
mov     dword ptr [edi+18h], 0
jmp     loc_45A3A6
sub_45A4B6 endp




sub_45A514 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+3D8h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_45A52C
jbe     short loc_45A545
pop     edx
pop     ecx
pop     ebx
retn

loc_45A52C:
test    al, al
jnz     short loc_45A58A
mov     word ptr [edx+8], 0Fh
cmp     byte ptr [ecx+9], 0
jz      short loc_45A587
mov     byte ptr [ecx+0ACh], 0Bh
jmp     short loc_45A587

loc_45A545:
dec     word ptr [edx+8]
test    byte ptr [edx+8], 3
jnz     short loc_45A568
mov     eax, [edx+6]
sar     eax, 10h
sar     eax, 2
shl     eax, 3
lea     ebx, [ecx+190h]
add     eax, ebx
call    sub_45B04E

loc_45A568:
cmp     word ptr [edx+8], 0
jnz     short loc_45A58A
mov     eax, ecx
call    sub_432EAB
lea     edx, [ecx+190h]
mov     eax, ecx
call    sub_4AF9F8
or      byte ptr [ecx+0Ch], 1

loc_45A587:
inc     byte ptr [ecx+0Ah]

loc_45A58A:
pop     edx
pop     ecx
pop     ebx
retn
sub_45A514 endp

db 8Dh, 40h, 0
jpt_45A5BD dd offset loc_45A5C4 ; jump table for switch statement
dd offset loc_45A5D0
dd offset loc_45A663
dd offset loc_45A657



sub_45A5A1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     al, [eax+0Dh]
cmp     al, 3           ; switch 4 cases
ja      def_45A5BD      ; jumptable 0045A5BD default case
xor     edx, edx
mov     dl, al
jmp     jpt_45A5BD[edx*4] ; switch jump

loc_45A5C4:             ; jumptable 0045A5BD case 0
mov     byte ptr [esi+0ACh], 1
jmp     def_45A5BD      ; jumptable 0045A5BD default case

loc_45A5D0:             ; jumptable 0045A5BD case 1
mov     byte ptr [esi+0ACh], 1
mov     al, [esi+0Ah]
cmp     al, 1
jb      short loc_45A5E6
jbe     short loc_45A613
cmp     al, 2
jz      short loc_45A638
jmp     short loc_45A64F

loc_45A5E6:
test    al, al
jnz     short loc_45A64F
mov     word ptr [esi+44h], 80h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
cmp     word ptr [esi+14h], 0
jge     short loc_45A64F
inc     byte ptr [esi+0Ah]
mov     word ptr [edi+8], 80h
jmp     short loc_45A64F

loc_45A613:
mov     byte ptr [edi+3Dh], 1
movsx   dx, byte ptr [edi+3Dh]
shl     edx, 4
add     [esi+56h], dx
and     byte ptr [esi+57h], 0Fh
mov     dx, [edi+8]
dec     dx
mov     [edi+8], dx
jnz     short loc_45A64F
inc     byte ptr [esi+0Ah]
jmp     short loc_45A64F

loc_45A638:
mov     word ptr [esi+44h], 80h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B

loc_45A64F:
cmp     word ptr [edi+0Ah], 3E8h
jnz     short def_45A5BD ; jumptable 0045A5BD default case

loc_45A657:             ; jumptable 0045A5BD case 3
and     byte ptr [esi], 0FDh

def_45A5BD:             ; jumptable 0045A5BD default case
inc     word ptr [edi+0Ah]
jmp     loc_45A3A6

loc_45A663:             ; jumptable 0045A5BD case 2
mov     eax, esi
call    sub_45AE61
mov     dx, [edi+0Ah]
test    dx, dx
jz      short loc_45A67A
cmp     dx, 578h
jnz     short loc_45A67D

loc_45A67A:
and     byte ptr [esi], 0FDh

loc_45A67D:
cmp     word ptr [edi+0Ah], 3E8h
jnz     short def_45A5BD ; jumptable 0045A5BD default case
or      byte ptr [esi], 2
jmp     short def_45A5BD ; jumptable 0045A5BD default case
sub_45A5A1 endp




sub_45A68A proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+3D8h]
test    byte ptr [ecx+4], 2
jz      short loc_45A6A2
mov     eax, edx
call    sub_45B2B8

loc_45A6A2:
xor     ebx, ebx
mov     bl, [edx+9]
mov     eax, edx
call    ds:funcs_45A6A9[ebx*4]
mov     dword ptr [ecx+18h], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_45A68A endp




sub_45A6BB proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
lea     ecx, [eax+3D8h]
mov     byte ptr [eax+0ACh], 0
mov     bx, [ecx+8]
test    bx, bx
jz      short loc_45A6E3
mov     esi, ebx
dec     esi
mov     [ecx+8], si
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45A6E3:
call    sub_42C592
mov     [edx+16h], ax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
or      byte ptr [ecx+4], 81h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45A6BB endp




sub_45A701 proc near

var_2C= word ptr -2Ch
var_28= word ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     ebp, eax
add     eax, 3D8h
mov     [esp+2Ch+var_24], eax
xor     ah, ah
mov     [esp+2Ch+var_1C], ah
mov     byte ptr [ebp+0ACh], 1
mov     eax, [esp+2Ch+var_24]
mov     dx, [eax+0Ah]
test    dx, dx
jnz     short loc_45A748
lea     edx, [ebp+14h]
mov     eax, 0EAh
call    sub_4D8BC3
mov     eax, [esp+2Ch+var_24]
mov     word ptr [eax+0Ah], 9
jmp     short loc_45A74F

loc_45A748:
mov     ebx, edx
dec     ebx
mov     [eax+0Ah], bx

loc_45A74F:
mov     eax, [esp+2Ch+var_24]
mov     cx, [eax+8]
test    cx, cx
jz      loc_45A906
mov     esi, ecx
dec     esi
mov     [eax+8], si
movsx   ax, byte ptr [eax+3Dh]
shl     eax, 2
add     [ebp+56h], ax
and     byte ptr [ebp+57h], 0Fh
cmp     byte ptr [ebp+3], 0
jnz     short loc_45A785
mov     word ptr [ebp+44h], 100h
jmp     short loc_45A78B

loc_45A785:
mov     word ptr [ebp+44h], 200h

loc_45A78B:
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42CE47
test    eax, eax
jz      short loc_45A7CF
call    sub_4EE9F8
test    eax, eax
jle     short loc_45A7BD
mov     eax, [esp+2Ch+var_24]
or      byte ptr [eax+5], 2
jmp     loc_45A915

loc_45A7BD:
cmp     eax, 0FFFFFFFFh
jnz     short loc_45A7CF

loc_45A7C2:
mov     eax, [esp+2Ch+var_24]
or      byte ptr [eax+5], 10h
jmp     loc_45A915

loc_45A7CF:
mov     eax, [ebp+12h]
sar     eax, 10h
cmp     eax, 0FFFFD8A0h
jle     short loc_45A7C2
cmp     word ptr [ebp+14h], 2B60h
jg      short loc_45A7C2
cmp     eax, 0FFFFF400h
jg      short loc_45A7FA
cmp     eax, 0FFFFE400h
jle     short loc_45A7FA
cmp     word ptr [ebp+18h], 0F60h
jg      short loc_45A7C2

loc_45A7FA:
mov     eax, [ebp+12h]
sar     eax, 10h
cmp     eax, 0FFFFE400h
jg      short loc_45A826
cmp     eax, 0FFFFD8A0h
jle     short loc_45A826
cmp     word ptr [ebp+18h], 400h
jle     short loc_45A826
mov     edx, [ebp+16h]
sar     edx, 10h
sub     edx, eax
cmp     edx, 2B60h
jg      short loc_45A7C2

loc_45A826:
mov     eax, [esp+2Ch+var_24]
test    byte ptr [eax+4], 80h
jz      loc_45A90E
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
mov     si, [ebp+56h]
cmp     si, 0C00h
jge     short loc_45A84D
cmp     si, 400h
jge     short loc_45A855

loc_45A84D:
sub     [esp+2Ch+var_28], 6Ch ; 'l'
jmp     short loc_45A85B

loc_45A855:
add     [esp+2Ch+var_28], 6Ch ; 'l'

loc_45A85B:
xor     ecx, ecx
mov     cl, [ebp+1]
mov     ebx, [ebp+44h]
sar     ebx, 10h
xor     edx, edx
mov     eax, esp
call    sub_42C5B7
mov     word ptr [esp+2Ch+var_20], ax
mov     edx, [ebp+2Ch]
sar     edx, 10h
cwde
sub     eax, edx
test    eax, eax
jge     short loc_45A883
neg     eax

loc_45A883:
test    eax, eax
jg      loc_45A7C2
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
mov     bx, [ebp+56h]
test    bx, bx
jl      short loc_45A8A9
cmp     bx, 800h
jge     short loc_45A8A9
sub     [esp+2Ch+var_2C], 6Ch ; 'l'
jmp     short loc_45A8AE

loc_45A8A9:
add     [esp+2Ch+var_2C], 6Ch ; 'l'

loc_45A8AE:
xor     ecx, ecx
mov     cl, [ebp+1]
mov     ebx, [ebp+44h]
sar     ebx, 10h
xor     edx, edx
mov     eax, esp
call    sub_42C5B7
mov     ecx, eax
mov     edx, [ebp+2Ch]
sar     edx, 10h
cwde
sub     eax, edx
test    eax, eax
jge     short loc_45A8D3
neg     eax

loc_45A8D3:
test    eax, eax
jg      loc_45A7C2
cmp     [esp+2Ch+var_1C], 0
jnz     short loc_45A90E
mov     edx, [esp+2Ch+var_24+2]
sar     edx, 10h
movsx   eax, cx
cmp     edx, eax
jge     short loc_45A8F4
mov     ecx, [esp+2Ch+var_20]

loc_45A8F4:
mov     [ebp+16h], cx
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
jmp     short loc_45A90E

loc_45A906:
mov     [ebp+44h], cx
or      byte ptr [eax+4], 1

loc_45A90E:
cmp     [esp+2Ch+var_1C], 0
jz      short loc_45A94F

loc_45A915:
mov     eax, [esp+2Ch+var_24]
mov     word ptr [eax+0Ah], 0
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
mov     word ptr [ebp+44h], 0
mov     byte ptr [ebp+0ACh], 0
mov     dh, [eax+4]
and     dh, 0BEh
mov     [eax+4], dh
mov     bl, dh
or      bl, 1
mov     [eax+4], bl

loc_45A94F:
add     esp, 14h
jmp     loc_45A3A5
sub_45A701 endp




sub_45A957 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+3D8h]
mov     byte ptr [eax+0ACh], 0
mov     bx, [edx+8]
test    bx, bx
jz      short loc_45A991
mov     ecx, ebx
dec     ecx
mov     [edx+8], cx
mov     word ptr [eax+44h], 0
movsx   dx, byte ptr [edx+3Dh]
shl     edx, 4
add     [eax+56h], dx
and     byte ptr [eax+57h], 0Fh
pop     edx
pop     ecx
pop     ebx
retn

loc_45A991:
or      byte ptr [edx+4], 41h
pop     edx
pop     ecx
pop     ebx
retn
sub_45A957 endp




sub_45A999 proc near

var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
lea     esi, [eax+3D8h]
xor     ah, ah
mov     [esp+1Ch+var_1C], ah
cmp     byte ptr [ebp+0Bh], 0
jnz     short loc_45A9FF
mov     byte ptr [ebp+0Bh], 1
mov     bl, [ebp+0Ah]
test    bl, bl
jbe     short loc_45A9CA
cmp     bl, 1
jz      short loc_45A9E2
jmp     loc_45AB1A

loc_45A9CA:
mov     byte ptr [ebp+0ACh], 4
mov     word ptr [esi+8], 8Dh
mov     word ptr [esi+0Ah], 0
jmp     loc_45AB1A

loc_45A9E2:
test    [esi+0Ah], bl
jz      short loc_45A9F3
mov     byte ptr [ebp+0ACh], 5
jmp     loc_45AB1A

loc_45A9F3:
mov     byte ptr [ebp+0ACh], 6
jmp     loc_45AB1A

loc_45A9FF:
mov     bl, [ebp+0Ah]
test    bl, bl
jbe     short loc_45AA14
cmp     bl, 1
jz      loc_45AAF2
jmp     loc_45AB1A

loc_45AA14:
mov     bx, [esi+8]
dec     bx
mov     [esi+8], bx
jz      loc_45AAE9
cmp     byte ptr [ebp+0A6h], 1
jnz     loc_45AAE3
inc     word ptr [esi+0Ah]
cmp     byte ptr [ebp+3], 0
jnz     short loc_45AA43
mov     word ptr [ebp+44h], 100h
jmp     short loc_45AA49

loc_45AA43:
mov     word ptr [ebp+44h], 200h

loc_45AA49:
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42CE47
mov     ecx, eax
test    eax, eax
jz      short loc_45AAC7
call    sub_4EE9F8
mov     ebx, eax
mov     edi, eax
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_45AACB
mov     edx, 5
mov     eax, ecx
call    sub_4EE6C2
test    ebx, ebx
jz      short loc_45AAC7
test    byte ptr [esi+0Ah], 1
jz      short loc_45AA97
lea     eax, [ebp+1A0h]
jmp     short loc_45AA9D

loc_45AA97:
lea     eax, [ebp+1B0h]

loc_45AA9D:
call    sub_45B04E
cmp     edi, 5
jle     short loc_45AAB4
cmp     word ptr [esi+0Ah], 9
jnz     short loc_45AAB8
or      byte ptr [esi+5], 4
jmp     short loc_45AAB8

loc_45AAB4:
mov     [esp+1Ch+var_1C], 1

loc_45AAB8:
lea     edx, [ebp+14h]
mov     eax, 0ECh
call    sub_4D8BC3
jmp     short loc_45AACB

loc_45AAC7:
mov     [esp+1Ch+var_1C], 1

loc_45AACB:
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
mov     word ptr [ebp+44h], 0

loc_45AAE3:
cmp     [esp+1Ch+var_1C], 0
jz      short loc_45AB1A

loc_45AAE9:
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0Bh], 0
jmp     short loc_45AB1A

loc_45AAF2:
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_45AB1A
mov     word ptr [ebp+0Ah], 0
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
or      word ptr [esi+4], 801h

loc_45AB1A:
add     esp, 4
jmp     loc_45A3A5
sub_45A999 endp

db 8Dh, 40h, 0
jpt_45AB79 dd offset loc_45AB80 ; jump table for switch statement
dd offset loc_45AB92
dd offset def_45AB79
dd offset loc_45ABB1
dd offset loc_45ABC3
jpt_45ABE9 dd offset loc_45ABF0 ; jump table for switch statement
dd offset loc_45AC46
dd offset loc_45AC61
dd offset loc_45AD55
dd offset loc_45ADA6



sub_45AB4D proc near

var_22= dword ptr -22h
var_1E= dword ptr -1Eh

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
add     eax, 3D8h
cmp     byte ptr [ebp+0Bh], 0
jnz     short loc_45ABD5
mov     byte ptr [ebp+0Bh], 1
mov     dl, [ebp+0Ah]
cmp     dl, 4           ; switch 5 cases
ja      def_45AB79      ; jumptable 0045AB79 default case, case 2
; jumptable 0045ABE9 default case
and     edx, 0FFh
jmp     jpt_45AB79[edx*4] ; switch jump

loc_45AB80:             ; jumptable 0045AB79 case 0
mov     byte ptr [ebp+0ACh], 7
mov     word ptr [eax+8], 44h ; 'D'
jmp     def_45AB79      ; jumptable 0045AB79 default case, case 2
; jumptable 0045ABE9 default case

loc_45AB92:             ; jumptable 0045AB79 case 1
mov     byte ptr [ebp+0ACh], 8
mov     word ptr [eax+8], 0Eh
lea     edx, [ebp+14h]
mov     eax, 0EDh

loc_45ABA7:
call    sub_4D8BC3
jmp     def_45AB79      ; jumptable 0045AB79 default case, case 2
; jumptable 0045ABE9 default case

loc_45ABB1:             ; jumptable 0045AB79 case 3
mov     byte ptr [ebp+0ACh], 9
mov     word ptr [eax+8], 1Eh
jmp     def_45AB79      ; jumptable 0045AB79 default case, case 2
; jumptable 0045ABE9 default case

loc_45ABC3:             ; jumptable 0045AB79 case 4
mov     byte ptr [ebp+0ACh], 0Ah
mov     word ptr [eax+8], 14h
jmp     def_45AB79      ; jumptable 0045AB79 default case, case 2
; jumptable 0045ABE9 default case

loc_45ABD5:
dec     word ptr [eax+8]
mov     cl, [ebp+0Ah]
cmp     cl, 4           ; switch 5 cases
ja      def_45AB79      ; jumptable 0045AB79 default case, case 2
; jumptable 0045ABE9 default case
xor     edx, edx
mov     dl, cl
jmp     jpt_45ABE9[edx*4] ; switch jump

loc_45ABF0:             ; jumptable 0045ABE9 case 0
mov     cx, [eax+8]
test    cx, cx
jnz     short loc_45AC09
mov     [ebp+44h], cx
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0Bh], 0
jmp     def_45AB79      ; jumptable 0045AB79 default case, case 2
; jumptable 0045ABE9 default case

loc_45AC09:
mov     word ptr [ebp+44h], 0FF70h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42CE47
test    eax, eax
jz      def_45AB79      ; jumptable 0045AB79 default case, case 2
; jumptable 0045ABE9 default case
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
jmp     def_45AB79      ; jumptable 0045AB79 default case, case 2
; jumptable 0045ABE9 default case

loc_45AC46:             ; jumptable 0045ABE9 case 1
cmp     word ptr [eax+8], 0
jnz     def_45AB79      ; jumptable 0045AB79 default case, case 2
; jumptable 0045ABE9 default case
inc     cl
mov     [ebp+0Ah], cl
mov     word ptr [eax+8], 0Fh
jmp     def_45AB79      ; jumptable 0045AB79 default case, case 2
; jumptable 0045ABE9 default case

loc_45AC61:             ; jumptable 0045ABE9 case 2
mov     dx, [eax+8]
test    dx, dx
jnz     short loc_45AC7D
add     cl, 2
mov     [ebp+0Ah], cl
mov     byte ptr [ebp+0Bh], 0
mov     [ebp+44h], dx
jmp     def_45AB79      ; jumptable 0045AB79 default case, case 2
; jumptable 0045ABE9 default case

loc_45AC7D:
mov     word ptr [ebp+44h], 400h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42CE47
mov     ecx, eax
test    eax, eax
jz      def_45AB79      ; jumptable 0045AB79 default case, case 2
; jumptable 0045ABE9 default case
call    sub_4EE9F8
mov     ebx, eax
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_45AD11
mov     edx, 0Fh
mov     eax, ecx
call    sub_4EE6C2
test    ebx, ebx
jz      short loc_45AD11
mov     edi, esp
lea     esi, [ebp+190h]
movsd
movsd
mov     eax, [ebp+54h]
sar     eax, 10h
call    sub_4EF008
mov     edx, eax
sar     edx, 5
mov     eax, [esp+20h+var_22]
sar     eax, 10h
sub     eax, edx
mov     word ptr [esp+20h+var_22+2], ax
mov     eax, [ebp+54h]
sar     eax, 10h
call    sub_4EF003
mov     edx, eax
sar     edx, 5
mov     eax, [esp+20h+var_1E]
sar     eax, 10h
sub     eax, edx
mov     word ptr [esp+20h+var_1E+2], ax
mov     eax, esp
call    sub_45B04E

loc_45AD11:
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
mov     word ptr [ebp+44h], 0FF80h
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0Bh], 0
add     ebp, 14h
mov     ecx, ebp
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B
mov     edx, ebp
mov     eax, 0EEh
jmp     loc_45ABA7

loc_45AD55:             ; jumptable 0045ABE9 case 3
cmp     word ptr [eax+8], 0
jnz     short loc_45AD65
inc     cl
mov     [ebp+0Ah], cl
mov     byte ptr [ebp+0Bh], 0

loc_45AD65:
mov     di, [ebp+44h]
test    di, di
jge     short loc_45AD7B
mov     eax, edi
add     eax, 10h
mov     [ebp+44h], ax
jmp     short loc_45AD93

loc_45AD7B:
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
mov     word ptr [ebp+44h], 0

loc_45AD93:
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
jmp     short def_45AB79 ; jumptable 0045AB79 default case, case 2
; jumptable 0045ABE9 default case

loc_45ADA6:             ; jumptable 0045ABE9 case 4
mov     bx, [eax+8]
test    bx, bx
jnz     short def_45AB79 ; jumptable 0045AB79 default case, case 2
; jumptable 0045ABE9 default case
mov     [ebp+0Ah], bx
or      word ptr [eax+4], 801h

def_45AB79:             ; jumptable 0045AB79 default case, case 2
add     esp, 8          ; jumptable 0045ABE9 default case
jmp     loc_45A3A5
sub_45AB4D endp




sub_45ADC1 proc near
push    ebx
push    edx
push    esi
mov     edx, eax
add     eax, 3D8h
mov     byte ptr [edx+0ACh], 0
mov     bx, [eax+8]
test    bx, bx
jz      short loc_45ADF2
mov     esi, ebx
dec     esi
mov     [eax+8], si
movsx   ax, byte ptr [eax+3Dh]
shl     eax, 4
add     [edx+56h], ax
pop     esi
pop     edx
pop     ebx
retn

loc_45ADF2:
or      word ptr [eax+4], 801h
pop     esi
pop     edx
pop     ebx
retn
sub_45ADC1 endp




sub_45ADFC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45AE31
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1
mov     word ptr [edi+3Eh], 200h
mov     word ptr [edi+40h], 0FCFFh
mov     word ptr [edi+42h], 1400h
jmp     loc_45A3A6

loc_45AE31:
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+3Eh]
lea     eax, [esi+14h]
mov     ecx, 10h
call    sub_4DE552
add     [esi+56h], ax
and     byte ptr [esi+57h], 0Fh
test    ax, ax
jnz     loc_45A3A6
or      byte ptr [edi+4], 1
jmp     loc_45A3A6
sub_45ADFC endp




sub_45AE61 proc near
push    ebx
push    ecx
push    edx
lea     ecx, [eax+3D8h]
mov     edx, [ecx]
mov     bx, [edx+14h]
mov     [eax+14h], bx
mov     bx, [edx+16h]
mov     [eax+16h], bx
mov     bx, [edx+18h]
mov     [eax+18h], bx
mov     ebx, [edx+1Ch]
mov     [eax+1Ch], ebx
mov     ebx, [edx+20h]
mov     [eax+20h], ebx
mov     ebx, [edx+24h]
mov     [eax+24h], ebx
mov     bx, [edx+56h]
mov     [eax+56h], bx
mov     dx, [edx+44h]
mov     [eax+44h], dx
mov     word ptr [eax+46h], 0
mov     byte ptr [eax+0ACh], 0
and     byte ptr [ecx+4], 0F7h
pop     edx
pop     ecx
pop     ebx
retn
sub_45AE61 endp




sub_45AEBB proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 3D8h
mov     dl, [esi+0Bh]
cmp     dl, 1
jb      short loc_45AEDE
jbe     short loc_45AF05
cmp     dl, 2
jz      loc_45AFA2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45AEDE:
test    dl, dl
jnz     loc_45AFDB
mov     byte ptr [esi+0ACh], 2
mov     word ptr [esi+46h], 0
mov     word ptr [eax+8], 5
or      byte ptr [eax+4], 8
inc     byte ptr [esi+0Bh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45AF05:
mov     byte ptr [esi+0ACh], 2
mov     dx, [eax+8]
test    dx, dx
jz      short loc_45AF1E
mov     ecx, edx
dec     ecx
mov     [eax+8], cx
jmp     short loc_45AF23

loc_45AF1E:
add     word ptr [esi+46h], 30h ; '0'

loc_45AF23:
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42C592
mov     ebx, [esi+14h]
sar     ebx, 10h
movsx   edx, ax
cmp     edx, ebx
jge     loc_45AFDB
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     byte ptr [esi+0ACh], 3
mov     word ptr [esi+46h], 0
mov     ax, [esi+46h]
mov     [esi+44h], ax
inc     byte ptr [esi+0Bh]
add     esi, 14h
mov     ecx, esi
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B
mov     edx, esi
mov     eax, 0EFh
call    sub_4D8BC3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45AFA2:
mov     byte ptr [esi+0ACh], 3
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_45AFDB
test    byte ptr [esi+0Ch], 10h
jz      short loc_45AFC7
mov     byte ptr [esi+8], 3
mov     byte ptr [esi+9], 0
jmp     short loc_45AFD5

loc_45AFC7:
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0
mov     word ptr [eax+8], 0Fh

loc_45AFD5:
mov     word ptr [esi+0Ah], 0

loc_45AFDB:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45AEBB endp




sub_45AFE0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     byte ptr [eax+0ACh], 0Ch
add     word ptr [eax+46h], 30h ; '0'
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
call    sub_4DD43B
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, esi
call    sub_42C592
cmp     eax, edx
jge     short loc_45B049
mov     word ptr [esi+46h], 0
mov     ax, [esi+46h]
mov     [esi+44h], ax
mov     byte ptr [esi+8], 2
mov     byte ptr [esi+9], 0
mov     word ptr [esi+0Ah], 0
lea     ecx, [esi+14h]
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B

loc_45B049:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45AFE0 endp




sub_45B04E proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_45B07D
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     bx, [edx]
mov     [eax+48h], bx
mov     bx, [edx+2]
mov     [eax+4Ah], bx
mov     dx, [edx+4]
mov     [eax+4Ch], dx

loc_45B07D:
pop     edx
pop     ebx
retn
sub_45B04E endp

db 90h
jpt_45B0C1 dd offset loc_45B0E7 ; jump table for switch statement
dd offset loc_45B0E7
dd offset loc_45B20E
dd offset loc_45B0C8
dd offset loc_45B0E7
dd offset loc_45B0E7
dd offset loc_45B0E7



sub_45B09D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
lea     ecx, [eax+3D8h]
mov     word ptr [ecx+8], 0
mov     dl, [eax+9]
cmp     dl, 6           ; switch 7 cases
ja      def_45B0C1      ; jumptable 0045B0C1 default case
and     edx, 0FFh
jmp     jpt_45B0C1[edx*4] ; switch jump

loc_45B0C8:             ; jumptable 0045B0C1 case 3
mov     ah, [ecx+5]
test    ah, 4
jz      short loc_45B0E7 ; jumptable 0045B0C1 cases 0,1,4-6
mov     dl, ah
and     dl, 0FBh
mov     [ecx+5], dl
mov     byte ptr [ebx+9], 4

loc_45B0DC:
mov     word ptr [ebx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45B0E7:             ; jumptable 0045B0C1 cases 0,1,4-6
mov     dl, [ecx+5]
test    dl, 2
jz      short loc_45B0FD
mov     dh, dl
and     dh, 0FDh
mov     [ecx+5], dh
mov     byte ptr [ebx+9], 3
jmp     short loc_45B0DC

loc_45B0FD:
test    dl, 10h
jz      short loc_45B13C
mov     ah, dl
and     ah, 0EEh
mov     [ecx+5], ah
mov     dl, ah
or      dl, 1
mov     [ecx+5], dl
mov     byte ptr [ecx+3Dh], 0FFh
mov     byte ptr [ebx+9], 5
mov     byte ptr [ebx+3], 0
xor     edx, edx
mov     dx, [ecx+6]
mov     ebx, 70h ; 'p'
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     edx, 10h
mov     [ecx+8], dx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45B13C:
mov     al, [ebx+3]
test    al, al
jnz     loc_45B1D4
test    dl, 8
jz      short loc_45B162
mov     al, dl
and     al, 0F6h
mov     [ecx+5], al
mov     byte ptr [ebx+9], 1
mov     word ptr [ecx+8], 78h ; 'x'
jmp     loc_45B243

loc_45B162:
mov     dl, [ecx+6]
and     dl, 7
mov     [ebx+0Ah], dl
cmp     dl, 5
ja      short loc_45B1AB
test    byte ptr [ecx+4], 40h
jz      short loc_45B1AB
and     byte ptr [ecx+5], 0FEh
mov     byte ptr [ebx+9], 1
mov     word ptr [ecx+8], 78h ; 'x'
mov     dl, [ebx+0Ah]
test    dl, 2
jz      short loc_45B195

loc_45B18C:
mov     byte ptr [ecx+3Dh], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45B195:
test    dl, 4
jz      short loc_45B1A3

loc_45B19A:
mov     byte ptr [ecx+3Dh], 0FFh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45B1A3:
mov     [ecx+3Dh], al
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45B1AB:
or      byte ptr [ecx+5], 1
mov     byte ptr [ebx+9], 2
xor     edx, edx
mov     dx, [ecx+6]
mov     esi, 3Fh ; '?'
mov     eax, edx
sar     edx, 1Fh
idiv    esi
add     edx, 10h
mov     [ecx+8], dx
test    byte ptr [ebx+0Ah], 1
jnz     short loc_45B18C
jmp     short loc_45B19A

loc_45B1D4:
cmp     byte ptr [ebx+9], 0
jnz     short loc_45B1F1
mov     byte ptr [ebx+9], 6
mov     word ptr [ebx+0Ah], 0
mov     byte ptr [ecx+3Dh], 1
or      byte ptr [ecx+5], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45B1F1:
mov     byte ptr [ebx+9], 1
mov     word ptr [ebx+0Ah], 0
mov     word ptr [ecx+8], 4000h
mov     byte ptr [ecx+3Dh], 0
and     byte ptr [ecx+5], 0FEh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45B20E:             ; jumptable 0045B0C1 case 2
xor     edx, edx
mov     dl, [ecx+6]
mov     esi, 6
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     [ebx+0Ah], dl
and     byte ptr [ecx+5], 0FEh
mov     byte ptr [ebx+9], 1
mov     word ptr [ecx+8], 78h ; 'x'
mov     al, [ebx+0Ah]
test    al, 2
jnz     loc_45B18C
test    al, 4
jnz     loc_45B19A

loc_45B243:
mov     byte ptr [ecx+3Dh], 0

def_45B0C1:             ; jumptable 0045B0C1 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45B09D endp




sub_45B24C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+3D8h]
xor     ecx, ecx
mov     cl, [eax+2]
mov     ebx, ds:dword_55A10C
mov     ecx, [ebx+ecx*4]
xor     bh, bh
mov     bl, [ecx+0Ah]
mov     [edx+0Ch], bx
lea     edi, [edx+10h]
lea     esi, [eax+190h]
movsd
movsd
push    0
push    offset unk_800000
xor     ecx, ecx
mov     cx, [edx+0Ch]
or      ecx, 4880000h
push    ecx
lea     ecx, [edx+18h]
push    ecx
mov     al, [eax+1]
and     eax, 0FFh
push    eax
lea     eax, [edx+10h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 80h
call    sub_4E01FC
mov     eax, 1
jmp     loc_45A3A6
sub_45B24C endp




sub_45B2B8 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+3D8h]
mov     ax, [eax+6Eh]
mov     [ecx+0B2h], ax
mov     eax, [ebx+18h]
and     eax, 0FFFFFFh
jz      short loc_45B2F8
test    byte ptr [ebx+1Bh], 18h
jz      short loc_45B2F8
sub     [ecx+6Eh], ax
mov     word ptr [ecx+15Eh], 7FFFh
lea     edx, [ecx+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_45B2F8:
cmp     word ptr [ecx+6Eh], 0
jg      short loc_45B31D
mov     dh, [ebx+4]
and     dh, 0F9h
mov     [ebx+4], dh
mov     al, dh
or      al, 4
mov     [ebx+4], al
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0

loc_45B31D:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn
sub_45B2B8 endp




sub_45B326 proc near
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
mov     [ebp+6], ax
mov     eax, [ecx+80h]
call    sub_4EF075
mov     [ebp+38h], eax
xor     edx, edx
mov     dl, [ecx+8]
mov     eax, ecx
call    ds:funcs_45B381[edx*4]
mov     al, [ecx+0ADh]
mov     ah, [ecx+0ACh]
cmp     al, ah
jz      short loc_45B3A0
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
jmp     short loc_45B3BB

loc_45B3A0:
test    byte ptr [ebp+4], 10h
jz      short loc_45B3AF
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_45B3C2

loc_45B3AF:
xor     ebx, ebx
mov     bl, [ecx+0A4h]
xor     edx, edx
mov     dl, ah

loc_45B3BB:
mov     eax, ecx
call    sub_4DE96B

loc_45B3C2:
test    byte ptr [ebp+4], 8
jz      short loc_45B3CF
mov     eax, ecx
call    sub_45BE63

loc_45B3CF:
lea     eax, [ecx+14h]
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 100h
call    sub_4ED95E

loc_45B3E3:
pop     ebp
jmp     loc_45BCF9
sub_45B326 endp




sub_45B3E9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+3D8h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ebx+4], 5Eh ; '^'
mov     dword ptr [ebx+8], 0
mov     dword ptr [ebx+0Ch], 0
mov     dword ptr [ebx+18h], 0
mov     dword ptr [ebx+1Ch], 0
mov     dword ptr [ebx+2Ch], 0
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
mov     edx, offset unk_516530
add     edx, eax
mov     [ebx+3Ch], edx
mov     al, [ebx+6]
and     al, 1
mov     [ebx+42h], al
mov     byte ptr [ebx+44h], 0
mov     al, [ebx+44h]
mov     [ebx+43h], al
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
mov     dword ptr [ecx+78h], offset unk_516524
test    byte ptr [ecx+0Ch], 10h
jz      short loc_45B4BB
mov     byte ptr [ecx+8], 3
jmp     short loc_45B4BF

loc_45B4BB:
mov     byte ptr [ecx+8], 1

loc_45B4BF:
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+15Eh], 4210h
pop     edx
pop     ecx
pop     ebx
retn
sub_45B3E9 endp




sub_45B4E6 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+3D8h]
test    byte ptr [ecx+4], 2
jz      short loc_45B4FE
mov     eax, edx
call    sub_45BECF

loc_45B4FE:
xor     ebx, ebx
mov     bl, [edx+9]
mov     eax, edx
call    ds:funcs_45B505[ebx*4]
test    byte ptr [ecx+5], 2
jnz     short loc_45B537
cmp     byte ptr [edx+9], 3
jz      short loc_45B537
test    byte ptr [ecx+4], 80h
jz      short loc_45B530
cmp     dword ptr [ecx+38h], 800h
jnb     short loc_45B530
mov     eax, edx
call    sub_45BC9B
jmp     short loc_45B537

loc_45B530:
mov     eax, edx
call    sub_45BCFF

loc_45B537:
test    byte ptr [ecx+4], 1
jz      short loc_45B54C
mov     eax, edx
call    sub_45BE16
mov     byte ptr [edx+0Bh], 0
and     byte ptr [ecx+4], 0FEh

loc_45B54C:
mov     dword ptr [ecx+18h], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_45B4E6 endp




sub_45B557 proc near

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
lea     edx, [eax+3D8h]
mov     al, [eax+9]
lea     esi, [ecx+190h]
cmp     al, 1
jb      short loc_45B57F
jbe     short loc_45B59C
cmp     al, 2
jz      short loc_45B5DF
jmp     loc_45B697

loc_45B57F:
test    al, al
jnz     loc_45B697
mov     word ptr [edx+8], 3
mov     eax, esi
call    sub_45BD61

loc_45B594:
inc     byte ptr [ecx+9]
jmp     loc_45B697

loc_45B59C:
dec     word ptr [edx+8]
mov     eax, [edx+6]
sar     eax, 10h
mov     ebx, 3
sub     ebx, eax
mov     eax, ebx
shl     eax, 3
add     eax, esi
call    sub_45BD61
mov     eax, [edx+6]
sar     eax, 10h
mov     ebx, 6
sub     ebx, eax
mov     eax, ebx
shl     eax, 3
add     eax, esi
call    sub_45BD61
cmp     word ptr [edx+8], 0
jnz     loc_45B697
jmp     short loc_45B594

loc_45B5DF:
call    sub_4DDF54
test    eax, eax
jz      short loc_45B661
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+4], 1
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
mov     dx, [ecx+190h]
mov     [eax+14h], dx
mov     dx, [ecx+192h]
sub     edx, 0C0h
mov     [eax+16h], dx
mov     dx, [ecx+194h]
mov     [eax+18h], dx
mov     edx, [ecx+18Eh]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     edx, [ecx+190h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [ecx+192h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
lea     edi, [eax+54h]
lea     esi, [ecx+54h]
movsd
movsd

loc_45B661:
mov     ax, [ecx+190h]
mov     [esp+1Ch+var_1C], ax
mov     ax, [ecx+192h]
sub     eax, 80h
mov     [esp+1Ch+var_1A], ax
mov     ax, [ecx+194h]
mov     [esp+1Ch+var_18], ax
mov     edx, esp
mov     eax, ecx
call    sub_4AF9F8
or      byte ptr [ecx+0Ch], 1

loc_45B697:
add     esp, 8
jmp     loc_45BCF9
sub_45B557 endp




sub_45B69F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     al, [eax+0Dh]
cmp     al, 1
jb      short loc_45B6C2
jbe     short loc_45B705
cmp     al, 2
jz      loc_45B743
jmp     loc_45B76C

loc_45B6C2:
test    al, al
jnz     loc_45B76C
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_45B6DC
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0Ah
jmp     short loc_45B6F7

loc_45B6DC:
mov     word ptr [esi+44h], 100h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
inc     word ptr [esi+56h]

loc_45B6F7:
cmp     word ptr [edi+0Ah], 258h
jnz     loc_45B76C
jmp     short loc_45B769

loc_45B705:
mov     byte ptr [esi+0ACh], 0
mov     word ptr [esi+44h], 0C0h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     bx, [edi+0Ah]
test    bx, bx
jz      short loc_45B733
cmp     bx, 578h
jnz     short loc_45B736

loc_45B733:
and     byte ptr [esi], 0FDh

loc_45B736:
cmp     word ptr [edi+0Ah], 3E8h
jnz     short loc_45B76C
or      byte ptr [esi], 2
jmp     short loc_45B76C

loc_45B743:
mov     byte ptr [esi+0ACh], 0Ah
mov     word ptr [esi+44h], 0C0h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
cmp     word ptr [edi+0Ah], 44Ch
jnz     short loc_45B76C

loc_45B769:
and     byte ptr [esi], 0FDh

loc_45B76C:
inc     word ptr [edi+0Ah]
jmp     loc_45BCF9
sub_45B69F endp




sub_45B775 proc near
or      byte ptr [eax+3DCh], 1
retn
sub_45B775 endp




sub_45B77D proc near

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
sub     esp, 1Ch
mov     ebp, eax
add     eax, 3D8h
mov     [esp+34h+var_1C], eax
mov     al, [ebp+0Bh]
test    al, al
jbe     short loc_45B7A1
cmp     al, 1
jz      short loc_45B7E5
jmp     loc_45B8C5

loc_45B7A1:
cmp     byte ptr [ebp+0ACh], 5
jz      short loc_45B7C3
mov     byte ptr [ebp+0ACh], 5
lea     edx, [ebp+14h]
mov     eax, 0E9h
call    sub_4D8BC3
jmp     loc_45B8C5

loc_45B7C3:
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     loc_45B8C5
mov     byte ptr [ebp+0ACh], 0Ah
mov     byte ptr [ebp+0Bh], 1
jmp     loc_45B8C5

loc_45B7E5:
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
test    al, 1
jz      short loc_45B83D
movsx   ax, byte ptr [ebp+0Dh]
shl     eax, 2
add     eax, 10h
sub     [ebp+56h], ax
jmp     short loc_45B852

loc_45B83D:
test    al, 2
jnz     short loc_45B852
movsx   ax, byte ptr [ebp+0Dh]
shl     eax, 2
add     eax, 10h
add     [ebp+56h], ax

loc_45B852:
and     byte ptr [ebp+57h], 0Fh
mov     word ptr [ebp+44h], 200h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, [esp+34h+var_1C]
mov     dx, [eax+8]
test    dx, dx
jz      short loc_45B883
mov     ebx, edx
dec     ebx
mov     [eax+8], bx
jmp     short loc_45B8B7

loc_45B883:
mov     ax, [eax+6]
xor     ah, ah
and     al, 0Fh
add     eax, 18h
mov     edx, [esp+34h+var_1C]
mov     [edx+8], ax
cmp     dword ptr [edx+38h], 400h
jnb     short loc_45B8B7
cmp     byte ptr [ebp+0Ah], 0
jnz     short loc_45B8B7
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_45B8B7
mov     eax, ebp
call    sub_45BD93

loc_45B8B7:
mov     eax, [esp+34h+var_1C]
test    byte ptr [eax+5], 1
jz      short loc_45B8C5
or      byte ptr [eax+4], 1

loc_45B8C5:
add     esp, 1Ch
jmp     loc_45B3E3
sub_45B77D endp

align 2
jpt_45B93A dd offset loc_45B941 ; jump table for switch statement
dd offset loc_45B9B1
dd offset loc_45BA29
dd offset loc_45BA62
dd offset loc_45BAA8
dd offset loc_45BAD4
dd offset loc_45BAFD
dd offset loc_45BB4E
dd offset loc_45BB93
dd offset loc_45BBA3



sub_45B8F6 proc near

var_28= dword ptr -28h
var_20= byte ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
lea     ecx, [eax+3D8h]
mov     word ptr [eax+44h], 0
mov     word ptr [eax+46h], 0
cmp     byte ptr [ecx+42h], 0
jnz     short loc_45B923
mov     esi, [ecx+3Ch]
mov     edi, esp
lea     esi, [esi+8]
jmp     short loc_45B928

loc_45B923:
mov     esi, [ecx+3Ch]
mov     edi, esp

loc_45B928:
movsd
movsd
mov     al, [ebp+0Bh]
cmp     al, 9           ; switch 10 cases
ja      def_45B93A      ; jumptable 0045B93A default case
and     eax, 0FFh
jmp     jpt_45B93A[eax*4] ; switch jump

loc_45B941:             ; jumptable 0045B93A case 0
lea     eax, [ebp+14h]
mov     edx, esp
call    sub_4DDDB4
mov     [ebp+56h], ax
mov     word ptr [ebp+44h], 180h
cmp     dword ptr [ecx], 0
jnz     short loc_45B97F
mov     dl, [ebp+0ACh]
cmp     dl, 4
jz      short loc_45B971
cmp     dl, 3
jz      short loc_45B971
mov     byte ptr [ebp+0ACh], 0Ch

loc_45B971:
mov     byte ptr [ebp+0Bh], 6
mov     al, [ecx+6]
and     al, 7
mov     [ecx+43h], al
jmp     short loc_45B9A0

loc_45B97F:
mov     byte ptr [ebp+0ACh], 0
mov     byte ptr [ebp+0Bh], 1
cmp     byte ptr [ecx+42h], 0
jnz     short loc_45B997
mov     eax, 7
jmp     short loc_45B999

loc_45B997:
xor     eax, eax

loc_45B999:
mov     [ecx+43h], al
or      byte ptr [ecx+5], 2

loc_45B9A0:
or      byte ptr [ecx+5], 4
lea     edx, [ebp+14h]
mov     eax, 0E6h
jmp     loc_45BA58

loc_45B9B1:             ; jumptable 0045B93A case 1
mov     word ptr [ebp+44h], 180h
cmp     dword ptr [ecx], 0
jnz     short loc_45B9CC
mov     byte ptr [ebp+0ACh], 1
mov     byte ptr [ebp+0Bh], 5
jmp     def_45B93A      ; jumptable 0045B93A default case

loc_45B9CC:
xor     eax, eax
mov     al, [ecx+43h]
mov     esi, [ecx+3Ch]
lea     edi, [esp+28h+var_20]
lea     esi, [esi+eax*8+10h]
movsd
movsd
cmp     byte ptr [ecx+42h], 0
jnz     short loc_45BA12
mov     edx, [ebp+12h]
sar     edx, 10h
mov     eax, [esp+6]
sar     eax, 10h
cmp     edx, eax
jl      def_45B93A      ; jumptable 0045B93A default case

loc_45B9F9:
mov     eax, [esp+28h+var_28]
mov     [ebp+14h], ax
mov     word ptr [ebp+44h], 0
mov     byte ptr [ebp+0ACh], 1
jmp     loc_45BB2F

loc_45BA12:
mov     eax, [ebp+12h]
sar     eax, 10h
mov     edx, [esp+6]
sar     edx, 10h
cmp     eax, edx
jg      def_45B93A      ; jumptable 0045B93A default case
jmp     short loc_45B9F9

loc_45BA29:             ; jumptable 0045B93A case 2
mov     byte ptr [ebp+0ACh], 1
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_45B93A      ; jumptable 0045B93A default case
mov     byte ptr [ebp+0Ch], 8
mov     byte ptr [ebp+0ACh], 2
inc     byte ptr [ebp+0Bh]

loc_45BA50:
lea     edx, [ebp+14h]
mov     eax, 0E5h

loc_45BA58:
call    sub_4D8BC3
jmp     def_45B93A      ; jumptable 0045B93A default case

loc_45BA62:             ; jumptable 0045B93A case 3
and     byte ptr [ecx+5], 0FBh
mov     byte ptr [ebp+0ACh], 2
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_45B93A      ; jumptable 0045B93A default case
mov     al, [ecx+6]
and     al, 7
mov     [ecx+43h], al
cmp     al, [ecx+44h]
jnz     short loc_45BA96
mov     al, 7
mov     dl, [ecx+43h]
sub     al, dl
mov     [ecx+43h], al

loc_45BA96:
mov     al, [ecx+43h]
mov     [ecx+44h], al
mov     byte ptr [ebp+0ACh], 3
jmp     loc_45BB2F

loc_45BAA8:             ; jumptable 0045B93A case 4
mov     byte ptr [ebp+0ACh], 3
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_45B93A      ; jumptable 0045B93A default case
and     word ptr [ecx+4], 0FDFEh
or      byte ptr [ecx+4], 1
add     byte ptr [ebp+0Bh], 2
jmp     def_45B93A      ; jumptable 0045B93A default case

loc_45BAD4:             ; jumptable 0045B93A case 5
mov     byte ptr [ebp+0ACh], 1
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_45B93A      ; jumptable 0045B93A default case
mov     byte ptr [ebp+0ACh], 2
mov     byte ptr [ebp+0Bh], 3
jmp     loc_45BA50

loc_45BAFD:             ; jumptable 0045B93A case 6
or      byte ptr [ecx+5], 4
mov     word ptr [ebp+44h], 300h
cmp     byte ptr [ecx+42h], 0
jnz     short loc_45BB37
mov     eax, [ebp+12h]
sar     eax, 10h
mov     edx, [esp-2]
sar     edx, 10h
cmp     eax, edx
jl      def_45B93A      ; jumptable 0045B93A default case

loc_45BB22:
mov     eax, [esp+28h+var_28]
mov     [ebp+14h], ax
mov     word ptr [ebp+44h], 0

loc_45BB2F:
inc     byte ptr [ebp+0Bh]
jmp     def_45B93A      ; jumptable 0045B93A default case

loc_45BB37:
mov     edx, [ebp+12h]
sar     edx, 10h
mov     eax, [esp-2]
sar     eax, 10h
cmp     edx, eax
jg      def_45B93A      ; jumptable 0045B93A default case
jmp     short loc_45BB22

loc_45BB4E:             ; jumptable 0045B93A case 7
or      byte ptr [ecx+5], 2
mov     word ptr [ebp+46h], 100h
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [esp+28h+var_28]
sar     edx, 10h
cmp     eax, edx
jl      short def_45B93A ; jumptable 0045B93A default case
mov     eax, [esp+28h+var_28+2]
mov     [ebp+16h], ax
xor     byte ptr [ecx+42h], 1
cmp     dword ptr [ecx], 0
jnz     short loc_45BB2F
mov     byte ptr [ebp+0ACh], 0
or      byte ptr [ebp+0Ch], 2
lea     edx, [ebp+14h]
mov     eax, 0E7h
call    sub_4D8BC3
jmp     short loc_45BB2F

loc_45BB93:             ; jumptable 0045B93A case 8
lea     eax, [ebp+14h]
mov     edx, esp
call    sub_4DDDB4
mov     [ebp+56h], ax
jmp     short loc_45BB2F

loc_45BBA3:             ; jumptable 0045B93A case 9
mov     word ptr [ebp+46h], 0FF00h
mov     eax, [ebp+14h]
sar     eax, 10h
cmp     eax, 0FFFFF9C0h
jg      short def_45B93A ; jumptable 0045B93A default case
mov     word ptr [ebp+16h], 0F9C0h
mov     byte ptr [ebp+0Bh], 1

def_45B93A:             ; jumptable 0045B93A default case
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
add     esp, 10h
jmp     loc_45B3E3
sub_45B8F6 endp




sub_45BBDD proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0Bh], 0
jnz     short loc_45BC32
mov     byte ptr [esi+0Bh], 1
mov     byte ptr [esi+0ACh], 9
call    sub_4DE13B
test    eax, eax
jz      loc_45BC96
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     dx, [esi+190h]
mov     [eax+48h], dx
mov     dx, [esi+192h]
mov     [eax+4Ah], dx
mov     dx, [esi+194h]
mov     [eax+4Ch], dx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45BC32:
add     word ptr [esi+46h], 18h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, esi
call    sub_42C592
sub     edx, 140h
cmp     eax, edx
jge     short loc_45BC96
mov     word ptr [esi+46h], 0
mov     ax, [esi+46h]
mov     [esi+44h], ax
mov     byte ptr [esi+8], 2
mov     byte ptr [esi+9], 0
mov     word ptr [esi+0Ah], 0
lea     ecx, [esi+14h]
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B

loc_45BC96:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45BBDD endp




sub_45BC9B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_42C592
mov     bx, [edx+16h]
cwde
movsx   ecx, bx
sub     eax, ecx
cmp     eax, 0FFFFFFF0h
jge     short loc_45BCD5
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
mov     word ptr [edx+44h], 0
sub     word ptr [edx+16h], 10h
jmp     short loc_45BCED

loc_45BCD5:
cmp     eax, 10h
jle     short loc_45BCED
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
cmp     eax, ecx
jle     short loc_45BCED
add     ebx, 10h
mov     [edx+16h], bx

loc_45BCED:
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax

loc_45BCF9:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45BC9B endp




sub_45BCFF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_42C592
mov     esi, eax
mov     bx, [edx+16h]
xor     eax, eax
movsx   ecx, bx
cmp     ecx, 0FFFFF9D0h
jle     short loc_45BD25
mov     eax, 0FFFFFFF0h
jmp     short loc_45BD32

loc_45BD25:
cmp     ecx, 0FFFFF9B0h
jge     short loc_45BD32
mov     eax, 10h

loc_45BD32:
movsx   ecx, si
movsx   ebx, bx
cmp     ecx, ebx
jge     short loc_45BD5B
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
mov     word ptr [edx+44h], 0
sub     word ptr [edx+16h], 10h
jmp     short loc_45BCED

loc_45BD5B:
add     [edx+16h], ax
jmp     short loc_45BCED
sub_45BCFF endp




sub_45BD61 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_45BD90
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     bx, [edx]
mov     [eax+48h], bx
mov     bx, [edx+2]
mov     [eax+4Ah], bx
mov     dx, [edx+4]
mov     [eax+4Ch], dx

loc_45BD90:
pop     edx
pop     ebx
retn
sub_45BD61 endp




sub_45BD93 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE043
test    eax, eax
jz      short loc_45BE11
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+3], 80h
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
lea     edi, [eax+14h]
lea     esi, [edx+190h]
movsd
movsd
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
mov     word ptr [eax+64h], 0
mov     dword ptr [eax+9Ch], 0
mov     dword ptr [eax+0A0h], 0
add     edx, 14h
mov     eax, 0E8h
call    sub_4D8BC3

loc_45BE11:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_45BD93 endp




sub_45BE16 proc near
push    ebx
push    edx
lea     edx, [eax+3D8h]
mov     bl, [eax+9]
cmp     bl, 1
jb      short loc_45BE30
jbe     short loc_45BE34
cmp     bl, 2
jz      short loc_45BE34
pop     edx
pop     ebx
retn

loc_45BE30:
test    bl, bl
jnz     short loc_45BE60

loc_45BE34:
test    byte ptr [edx+4], 80h
jz      short loc_45BE4A
and     byte ptr [edx+5], 0FDh
mov     word ptr [edx+8], 0
mov     byte ptr [eax+9], 1
jmp     short loc_45BE5A

loc_45BE4A:
test    byte ptr [edx+5], 1
jz      short loc_45BE60
mov     word ptr [edx+8], 0
mov     byte ptr [eax+9], 2

loc_45BE5A:
mov     word ptr [eax+0Ah], 0

loc_45BE60:
pop     edx
pop     ebx
retn
sub_45BE16 endp




sub_45BE63 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+3D8h]
xor     ecx, ecx
mov     cl, [eax+2]
mov     ebx, ds:dword_55A10C
mov     ecx, [ebx+ecx*4]
xor     bh, bh
mov     bl, [ecx+0Ah]
mov     [edx+0Ch], bx
lea     edi, [edx+10h]
lea     esi, [eax+190h]
movsd
movsd
push    0
push    offset unk_800000
xor     ecx, ecx
mov     cx, [edx+0Ch]
or      ecx, 4880000h
push    ecx
lea     ecx, [edx+18h]
push    ecx
mov     al, [eax+1]
and     eax, 0FFh
push    eax
lea     eax, [edx+10h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 80h
call    sub_4E01FC
mov     eax, 1
jmp     loc_45BCF9
sub_45BE63 endp




sub_45BECF proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+3D8h]
mov     ax, [eax+6Eh]
mov     [ecx+0B2h], ax
mov     eax, [ebx+18h]
and     eax, 0FFFFFFh
jz      short loc_45BF0F
test    byte ptr [ebx+1Bh], 18h
jz      short loc_45BF0F
sub     [ecx+6Eh], ax
mov     word ptr [ecx+15Eh], 7FFFh
lea     edx, [ecx+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_45BF0F:
cmp     word ptr [ecx+6Eh], 0
jg      short loc_45BF34
mov     dh, [ebx+4]
and     dh, 0F9h
mov     [ebx+4], dh
mov     al, dh
or      al, 4
mov     [ebx+4], al
mov     byte ptr [ecx+9], 3
mov     word ptr [ecx+0Ah], 0
or      byte ptr [ecx+0Ch], 4

loc_45BF34:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn
sub_45BECF endp




sub_45BF3D proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45BF43[edx*4]
pop     edx
retn
sub_45BF3D endp




sub_45BF4C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ebp+0], ah
cmp     byte ptr [ebp+3], 0
jz      short loc_45BF6D
lea     edx, [ebp+3]
jmp     short loc_45BF6F

loc_45BF6D:
xor     edx, edx

loc_45BF6F:
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 21A021Ah
mov     dword ptr [ebp+15Ch], 21Ah
mov     word ptr [ebp+15Eh], 4210h
mov     word ptr [ecx], 0
mov     dword ptr [ecx+4], 0
mov     edi, offset unk_55A02C
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
mov     edx, offset unk_55A02C
call    sub_4DD4C5
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], offset unk_516638
mov     dword ptr [ebp+10h], 0
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_45C036

loc_45C02F:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45BF4C endp




sub_45C036 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+408h]
mov     al, [eax+0ACh]
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
mov     [edx+2], ax
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_45C083[ecx*4]
test    byte ptr [edx], 1
jz      short loc_45C09C
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_45C09C:
mov     al, [ebp+0ADh]
mov     bh, [ebp+0ACh]
cmp     al, bh
jz      short loc_45C0BB
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_45C0C2

loc_45C0BB:
mov     eax, ebp
call    sub_4DEADD

loc_45C0C2:
test    byte ptr [ebp+0], 2
jz      short loc_45C0DB
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45C0DB:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
mov     eax, ebp
call    sub_432697
jmp     loc_45C02F
sub_45C036 endp



; Attributes: thunk

sub_45C0F3 proc near
jmp     sub_4DE2F6
sub_45C0F3 endp




sub_45C0F8 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_45C10C
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45C10C:
pop     edx
retn
sub_45C0F8 endp




sub_45C10E proc near

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
jb      short loc_45C12F
jbe     short loc_45C165
jmp     loc_45C205

loc_45C12F:
test    al, al
jnz     loc_45C205
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 1
mov     word ptr [ebp+44h], 2Ch ; ','
mov     word ptr [ebp+64h], 20h ; ' '
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     edi, [esp+1Ch+var_1C]
lea     edi, [edi+0Ch]
lea     esi, [eax+14h]
movsd
movsd

loc_45C165:
mov     ecx, [ebp+62h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
add     edx, 0Ch
lea     eax, [ebp+14h]
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
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_45C1B2
xor     ebx, ebx
xor     edx, edx
mov     eax, 10Ah
call    sub_4D89E4

loc_45C1B2:
mov     eax, [ebp+12h]
sar     eax, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0Ah]
sar     edx, 10h
sub     eax, edx
mov     ecx, [ebp+16h]
sar     ecx, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0Eh]
sar     edx, 10h
sub     ecx, edx
mov     edx, ecx
imul    eax, eax
imul    edx, ecx
add     eax, edx
cmp     eax, 800h
jge     short loc_45C205
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 0
mov     word ptr [ebp+44h], 0
mov     word ptr [ebp+64h], 0
mov     eax, 606h
call    sub_47E8B8

loc_45C205:
add     esp, 4
jmp     loc_45C02F
sub_45C10E endp




sub_45C20D proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_45C21F
jbe     short loc_45C22F
cmp     dl, 2
jz      short loc_45C244
pop     edx
retn

loc_45C21F:
test    dl, dl
jnz     short loc_45C259
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45C22F:
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_45C259
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 8
pop     edx
retn

loc_45C244:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_45C259
dec     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45C259:
pop     edx
retn
sub_45C20D endp




sub_45C25B proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45C261[edx*4]
pop     edx
retn
sub_45C25B endp




sub_45C26A proc near

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
or      byte ptr [ebp+0], 2
cmp     byte ptr [ebp+3], 0
jz      short loc_45C28C
lea     edx, [ebp+3]
jmp     short loc_45C28E

loc_45C28C:
xor     edx, edx

loc_45C28E:
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 21A021Ah
mov     dword ptr [ebp+15Ch], 21Ah
mov     word ptr [ebp+15Eh], 4210h
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax], 0
mov     dword ptr [eax+4], 0
mov     edi, offset unk_55A03C
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    0
mov     ebx, [ebp+54h]
sar     ebx, 10h
add     eax, 0Ch
mov     ecx, 100h
mov     edx, offset unk_55A03C
call    sub_4DD4C5
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+0Ah], 0
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], offset unk_51665C
mov     dword ptr [ebp+10h], 0
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_45C366
add     esp, 4

loc_45C35F:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45C26A endp




sub_45C366 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
mov     al, [eax+0ACh]
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
mov     [ecx+2], ax
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_45C3B3[edx*4]
test    byte ptr [ecx], 1
jz      short loc_45C3CC
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_45C3CC:
mov     al, [ebp+0ADh]
cmp     al, [ebp+0ACh]
jz      short loc_45C3ED
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_45C3F4

loc_45C3ED:
mov     eax, ebp
call    sub_4DEB53

loc_45C3F4:
mov     ax, [ecx+0Ah]
mov     ds:word_560E16, ax
mov     eax, ebp
call    sub_4DF795
test    byte ptr [ebp+0], 2
jz      short loc_45C41E
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45C41E:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
mov     eax, ebp
call    sub_432697
jmp     loc_45C35F
sub_45C366 endp



; Attributes: thunk

sub_45C436 proc near
jmp     sub_4DE2F6
sub_45C436 endp




sub_45C43B proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_45C44F
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45C44F:
pop     edx
retn
sub_45C43B endp




sub_45C451 proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_45C463
jbe     short loc_45C473
cmp     dl, 2
jz      short loc_45C488
pop     edx
retn

loc_45C463:
test    dl, dl
jnz     short loc_45C49D
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45C473:
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_45C49D
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 8
pop     edx
retn

loc_45C488:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_45C49D
dec     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45C49D:
pop     edx
retn
sub_45C451 endp




sub_45C49F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+408h]
mov     ebp, offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_45C4BF
cmp     al, 1
jz      short loc_45C4D3
jmp     short loc_45C503

loc_45C4BF:
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0
mov     ax, [esi+0Ch]
mov     [esi+64h], ax

loc_45C4D3:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [edi+8]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
lea     edx, [ebp+14h]
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [edi+0Ah]
and     ah, 0Fh
mov     [edi+0Ah], ax

loc_45C503:
test    byte ptr [esi+0Fh], 2
jz      loc_45C35F
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_45C522
mov     byte ptr [esi+0ACh], 8
jmp     loc_45C35F

loc_45C522:
cmp     byte ptr [esi+0A7h], 0
jge     loc_45C35F
mov     byte ptr [esi+0ACh], 0
jmp     loc_45C35F
sub_45C49F endp




sub_45C53B proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45C541[edx*4]
pop     edx
retn
sub_45C53B endp




sub_45C54A proc near

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
or      byte ptr [ebp+0], 2
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 21A021Ah
mov     dword ptr [ebp+15Ch], 21Ah
mov     word ptr [ebp+15Eh], 4210h
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax], 2
mov     dword ptr [eax+4], 0
mov     edi, offset unk_55A04C
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    0
mov     ebx, [ebp+54h]
sar     ebx, 10h
add     eax, 0Ch
mov     ecx, 100h
mov     edx, offset unk_55A04C
call    sub_4DD4C5
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+0Ah], 0
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], offset unk_516684
mov     dword ptr [ebp+10h], offset unk_516690
mov     dl, [ebp+3]
test    dl, dl
jz      short loc_45C61E
mov     byte ptr [ebp+9], 1
jmp     short loc_45C621

loc_45C61E:
mov     [ebp+9], dl

loc_45C621:
mov     byte ptr [ebp+8], 1
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_45C647
add     esp, 4

loc_45C640:
pop     ebp

loc_45C641:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45C54A endp




sub_45C647 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
mov     al, [eax+0ACh]
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
mov     [ecx+2], ax
test    byte ptr [ecx], 2
jz      short loc_45C699
mov     eax, ebp
call    sub_45C920

loc_45C699:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_45C6A0[edx*4]
test    byte ptr [ecx], 1
jz      short loc_45C6B9
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_45C6B9:
mov     al, [ebp+0ADh]
mov     bl, [ebp+0ACh]
cmp     al, bl
jz      short loc_45C6D8
xor     edx, edx
mov     dl, bl
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_45C6DF

loc_45C6D8:
mov     eax, ebp
call    sub_4DEB53

loc_45C6DF:
mov     ax, [ecx+0Ah]
mov     ds:word_560E16, ax
mov     eax, ebp
call    sub_4DF795
test    byte ptr [ebp+0], 1
jz      short loc_45C709
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
mov     eax, ebp
call    sub_432697

loc_45C709:
test    byte ptr [ebp+0], 2
jz      loc_45C640
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
jmp     loc_45C640
sub_45C647 endp



; Attributes: thunk

sub_45C72B proc near
jmp     sub_4DE2F6
sub_45C72B endp




sub_45C730 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_45C744
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45C744:
pop     edx
retn
sub_45C730 endp




sub_45C746 proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_45C758
jbe     short loc_45C768
cmp     dl, 2
jz      short loc_45C77D
pop     edx
retn

loc_45C758:
test    dl, dl
jnz     short loc_45C792
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45C768:
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_45C792
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 8
pop     edx
retn

loc_45C77D:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_45C792
dec     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45C792:
pop     edx
retn
sub_45C746 endp




sub_45C794 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_45C7AF
jbe     short loc_45C7C9
jmp     loc_45C641

loc_45C7AF:
test    al, al
jnz     loc_45C641
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0
mov     word ptr [esi+64h], 20h ; ' '

loc_45C7C9:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     eax, [esi+54h]
sar     eax, 10h
mov     ebx, [edi+8]
sar     ebx, 10h
add     ebx, eax
and     ebx, 0FFFh
lea     eax, [esi+14h]
mov     edx, offset unk_5166AC
call    sub_4DE552
mov     bx, [edi+0Ah]
add     ebx, eax
and     bh, 0Fh
mov     [edi+0Ah], bx
test    ax, ax
jnz     loc_45C641
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0
mov     eax, 609h
call    sub_47E8B8
jmp     loc_45C641
sub_45C794 endp




sub_45C81F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_45C833
jbe     short loc_45C864
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45C833:
test    al, al
jnz     loc_45C91B
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 1
mov     word ptr [esi+44h], 2Ch ; ','
mov     eax, [esi+0Ah]
sar     eax, 18h
mov     ax, ds:word_5166A2[eax*8]
mov     [esi+64h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45C864:
cmp     byte ptr [esi+0A6h], 0
jz      short loc_45C87B
xor     ebx, ebx
xor     edx, edx
mov     eax, 0D7h
call    sub_4D89E4

loc_45C87B:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [esi+0Ah]
sar     edx, 18h
shl     edx, 3
add     edx, (offset dword_51669A+2)
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     ecx, [esi+0Ah]
sar     ecx, 18h
mov     edx, ds:dword_51669A[ecx*8]
sar     edx, 10h
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     ebx, edx
mov     edx, ebx
mov     eax, ds:dword_51669E[ecx*8]
sar     eax, 10h
mov     ebx, [esi+16h]
sar     ebx, 10h
sub     ebx, eax
mov     eax, ebx
imul    edx, edx
imul    eax, ebx
add     edx, eax
cmp     edx, ds:dword_5166B4[ecx*4]
jnb     short loc_45C91B
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0
mov     word ptr [esi+44h], 0
mov     eax, 608h
call    sub_47E8B8

loc_45C91B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45C81F endp




sub_45C920 proc near
push    ecx
cmp     eax, ds:dword_5F84E8
jnz     short loc_45C93B
mov     eax, 605h
call    sub_47E8B8
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx

loc_45C93B:
mov     eax, 1
pop     ecx
retn
sub_45C920 endp




sub_45C942 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_45C958
cmp     al, 1
jz      short loc_45C9CE
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45C958:
or      byte ptr [esi], 2
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+78h], 0
mov     dword ptr [esi+10h], 0
mov     dword ptr [esi+158h], 21A021Ah
mov     dword ptr [esi+15Ch], 21Ah
mov     word ptr [esi+15Eh], 4210h
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0
mov     word ptr [esi+48h], 0
mov     word ptr [esi+4Ch], 0
mov     word ptr [esi+4Eh], 0
mov     word ptr [esi+50h], 0
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45C9CE:
cmp     word ptr [esi+44h], 0
jz      short loc_45C9FC
test    byte ptr ds:word_77EAB6, 7
jnz     short loc_45C9EB
lea     edx, [esi+14h]
mov     eax, 10Bh
call    sub_4D8BC3

loc_45C9EB:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B

loc_45C9FC:
cmp     byte ptr [esi+0Dh], 0
jnz     short loc_45CA0B
mov     eax, esi
call    sub_4DEADD
jmp     short loc_45CA1E

loc_45CA0B:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0

loc_45CA1E:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45C942 endp




sub_45CA36 proc near
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
call    sub_45CAC2
test    byte ptr [ebp+0], 2
jz      short loc_45CA76
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45CA76:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_45CA86
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_45CA8D

loc_45CA86:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_45CA8D:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45CA36 endp

db 8Bh, 0C0h
jpt_45CAD8 dd offset loc_45CADF ; jump table for switch statement
dd offset loc_45CB04
dd offset loc_45CB4F
dd offset loc_45CB71
dd offset loc_45CB8B
dd offset loc_45CB71
dd offset loc_45CBAD
dd offset loc_45CBD2
dd offset loc_45CBFA
dd offset loc_45CC25
dd offset loc_45CC51



sub_45CAC2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 0Ah         ; switch 11 cases
ja      def_45CAD8      ; jumptable 0045CAD8 default case
and     eax, 0FFh
jmp     jpt_45CAD8[eax*4] ; switch jump

loc_45CADF:             ; jumptable 0045CAD8 case 0
mov     eax, esi
call    sub_45CC70
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 46h ; 'F'
jmp     def_45CAD8      ; jumptable 0045CAD8 default case

loc_45CB04:             ; jumptable 0045CAD8 case 1
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_45CCF2
mov     al, [esi+0Ah]
dec     al
mov     [esi+0Ah], al
jnz     def_45CAD8      ; jumptable 0045CAD8 default case
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     edx, 0B1h

loc_45CB3C:
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     def_45CAD8      ; jumptable 0045CAD8 default case

loc_45CB4F:             ; jumptable 0045CAD8 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_45CAD8      ; jumptable 0045CAD8 default case
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     edx, 0B2h
jmp     short loc_45CB3C

loc_45CB71:             ; jumptable 0045CAD8 cases 3,5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_45CAD8      ; jumptable 0045CAD8 default case
call    sub_49DF64
inc     byte ptr [esi+8]
jmp     def_45CAD8      ; jumptable 0045CAD8 default case

loc_45CB8B:             ; jumptable 0045CAD8 case 4
cmp     ds:byte_560BE5, 2
jnz     def_45CAD8      ; jumptable 0045CAD8 default case
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     edx, 0B4h
jmp     short loc_45CB3C

loc_45CBAD:             ; jumptable 0045CAD8 case 6
cmp     ds:byte_560BE5, 4
jnz     def_45CAD8      ; jumptable 0045CAD8 default case
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     edx, 0B6h
jmp     loc_45CB3C

loc_45CBD2:             ; jumptable 0045CAD8 case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_45CAD8      ; jumptable 0045CAD8 default case
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 3Ch ; '<'
jmp     short def_45CAD8 ; jumptable 0045CAD8 default case

loc_45CBFA:             ; jumptable 0045CAD8 case 8
mov     ebx, [esi+62h]
sar     ebx, 10h
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, 834h
call    sub_4DE5F4
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short loc_45CC25 ; jumptable 0045CAD8 case 9
inc     byte ptr [esi+8]

loc_45CC25:             ; jumptable 0045CAD8 case 9
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_45CCF2
mov     dl, [esi+0Ah]
dec     dl
mov     [esi+0Ah], dl
jnz     short def_45CAD8 ; jumptable 0045CAD8 default case
call    sub_49DF64
mov     byte ptr [esi+8], 0Ah
jmp     short def_45CAD8 ; jumptable 0045CAD8 default case

loc_45CC51:             ; jumptable 0045CAD8 case 10
mov     eax, esi
call    sub_4DE2F6

def_45CAD8:             ; jumptable 0045CAD8 default case
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
sub_45CAC2 endp




sub_45CC70 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 40h ; '@'
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 21A021Ah
mov     dword ptr [ecx+15Ch], 21Ah
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_45CC70 endp




sub_45CCF2 proc near
push    edx
mov     dl, [eax+0A4h]
cmp     dl, 7
jz      short loc_45CD03
cmp     dl, 17h
jnz     short loc_45CD10

loc_45CD03:
lea     edx, [eax+14h]
mov     eax, 10Ch
call    sub_4D8BC3

loc_45CD10:
pop     edx
retn
sub_45CCF2 endp




sub_45CD12 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45CD18[edx*4]
pop     edx
retn
sub_45CD12 endp




sub_45CD21 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ebp+0], ah
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     word ptr [ecx], 0
mov     dword ptr [ecx+4], 0
mov     edi, offset unk_55A05C
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
mov     edx, offset unk_55A05C
call    sub_4DD4C5
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], offset unk_5166E0
mov     dword ptr [ebp+10h], offset unk_5166EC
mov     dl, [ebp+3]
test    dl, dl
jnz     short loc_45CDE9
mov     byte ptr [ebp+8], 1
mov     [ebp+9], dl
jmp     short loc_45CDF1

loc_45CDE9:
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 5

loc_45CDF1:
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_45CE10

def_45CF88:             ; jumptable 0045CF88 default case
pop     ebp             ; jumptable 0045D192 default case, case 3
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45CD21 endp




sub_45CE10 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+408h]
mov     al, [eax+0ACh]
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
mov     [edx+2], ax
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_45CE5D[ecx*4]
test    byte ptr [edx], 1
jz      short loc_45CE77
mov     al, [ebp+9]
test    al, al
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_45CE77:
mov     al, [ebp+0ADh]
mov     bh, [ebp+0ACh]
cmp     al, bh
jz      short loc_45CE96
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_45CE9D

loc_45CE96:
mov     eax, ebp
call    sub_4DEADD

loc_45CE9D:
test    byte ptr [ebp+0], 2
jz      short loc_45CEB6
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45CEB6:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
mov     eax, ebp
call    sub_432697
jmp     def_45CF88      ; jumptable 0045CF88 default case
sub_45CE10 endp         ; jumptable 0045D192 default case, case 3



; Attributes: thunk

sub_45CECE proc near
jmp     sub_4DE2F6
sub_45CECE endp




sub_45CED3 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_45CEE7
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45CEE7:
pop     edx
retn
sub_45CED3 endp




sub_45CEE9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+408h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_45CF07
cmp     al, 1
jz      short loc_45CF19
jmp     def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3

loc_45CF07:
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0
mov     word ptr [ebp+64h], 20h ; ' '

loc_45CF19:
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
lea     edi, [edx+0Ch]
lea     esi, [eax+14h]
movsd
movsd
mov     ecx, [ebp+62h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
add     edx, 0Ch
lea     eax, [ebp+14h]
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
jmp     def_45CF88      ; jumptable 0045CF88 default case
sub_45CEE9 endp         ; jumptable 0045D192 default case, case 3

db 8Dh, 40h, 0
jpt_45CF88 dd offset loc_45CF8F ; jump table for switch statement
dd offset loc_45CFA1
dd offset loc_45CFE0
dd offset loc_45CFFC



sub_45CF66 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+408h]
mov     esi, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3
xor     ecx, ecx
mov     cl, al
jmp     jpt_45CF88[ecx*4] ; switch jump

loc_45CF8F:             ; jumptable 0045CF88 case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0
mov     word ptr [ebp+64h], 20h ; ' '

loc_45CFA1:             ; jumptable 0045CF88 case 1
lea     edi, [edx+0Ch]
lea     esi, [esi+14h]
movsd
movsd
mov     ecx, [ebp+62h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
add     edx, 0Ch
lea     eax, [ebp+14h]
call    sub_4DE552
mov     dx, [ebp+56h]
add     edx, eax
and     dh, 0Fh
mov     [ebp+56h], dx
test    ax, ax
jnz     def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 0

loc_45CFE0:             ; jumptable 0045CF88 case 2
test    byte ptr ds:dword_55BD7C+2, 20h
jz      def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 8
jmp     def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3

loc_45CFFC:             ; jumptable 0045CF88 case 3
cmp     byte ptr [ebp+0A7h], 0
jge     def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3
dec     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0
jmp     def_45CF88      ; jumptable 0045CF88 default case
sub_45CF66 endp         ; jumptable 0045D192 default case, case 3




sub_45D01A proc near

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
jb      short loc_45D03B
jbe     short loc_45D071
jmp     loc_45D111

loc_45D03B:
test    al, al
jnz     loc_45D111
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 1
mov     word ptr [ebp+44h], 30h ; '0'
mov     word ptr [ebp+64h], 20h ; ' '
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     edi, [esp+1Ch+var_1C]
lea     edi, [edi+0Ch]
lea     esi, [eax+14h]
movsd
movsd

loc_45D071:
mov     ecx, [ebp+62h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
add     edx, 0Ch
lea     eax, [ebp+14h]
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
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_45D0BE
xor     ebx, ebx
xor     edx, edx
mov     eax, 10Dh
call    sub_4D89E4

loc_45D0BE:
mov     eax, [ebp+12h]
sar     eax, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0Ah]
sar     edx, 10h
sub     eax, edx
mov     ecx, [ebp+16h]
sar     ecx, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0Eh]
sar     edx, 10h
sub     ecx, edx
mov     edx, ecx
imul    eax, eax
imul    edx, ecx
add     eax, edx
cmp     eax, 800h
jge     short loc_45D111
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 0
mov     word ptr [ebp+44h], 0
mov     word ptr [ebp+64h], 0
mov     eax, 606h
call    sub_47E8B8

loc_45D111:
add     esp, 4
jmp     def_45CF88      ; jumptable 0045CF88 default case
sub_45D01A endp         ; jumptable 0045D192 default case, case 3




sub_45D119 proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_45D12B
jbe     short loc_45D13B
cmp     dl, 2
jz      short loc_45D150
pop     edx
retn

loc_45D12B:
test    dl, dl
jnz     short loc_45D165
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45D13B:
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_45D165
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 8
pop     edx
retn

loc_45D150:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_45D165
dec     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45D165:
pop     edx
retn
sub_45D119 endp

db 8Dh, 40h, 0
jpt_45D192 dd offset loc_45D199 ; jump table for switch statement
dd offset loc_45D234
dd offset loc_45D277
dd offset def_45CF88



sub_45D17A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3
and     eax, 0FFh
jmp     jpt_45D192[eax*4] ; switch jump

loc_45D199:             ; jumptable 0045D192 case 0
mov     edx, ds:dword_5F84E8
cmp     esi, edx
jnz     def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3
mov     eax, 604h
call    sub_47E8B8
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
inc     byte ptr [edx+0Ah]
mov     byte ptr [edx+0Bh], 10h
mov     byte ptr [edx+0ACh], 0
mov     ebx, [edx+54h]
sar     ebx, 10h
mov     edi, offset byte_5F8364
add     edi, 14h
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_45D202
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552
neg     eax
jmp     short loc_45D216

loc_45D202:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552

loc_45D216:
sar     eax, 3
mov     [esi+64h], ax
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0
mov     word ptr [esi+48h], 0
jmp     def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3

loc_45D234:             ; jumptable 0045D192 case 1
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
test    byte ptr ds:dword_55BD7C+2, 20h
jz      def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3
mov     byte ptr [esi+0ACh], 8
inc     byte ptr [esi+0Ah]
jmp     def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3

loc_45D277:             ; jumptable 0045D192 case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jge     def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3
mov     byte ptr [esi+0ACh], 0
dec     byte ptr [esi+0Ah]
jmp     def_45CF88      ; jumptable 0045CF88 default case
sub_45D17A endp         ; jumptable 0045D192 default case, case 3




sub_45D2BA proc near
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
mov     dl, [eax+3]
call    ds:funcs_45D2E1[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_45D301
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45D301:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_45D311
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_45D318

loc_45D311:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_45D318:
pop     ebp

def_45D378:             ; jumptable 0045D378 default case, case 9
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45D2BA endp

db 8Dh, 40h, 0
jpt_45D378 dd offset loc_45D37F ; jump table for switch statement
dd offset loc_45D38B
dd offset loc_45D3B0
dd offset loc_45D3C4
dd offset loc_45D3FF
dd offset loc_45D420
dd offset loc_45D42C
dd offset loc_45D480
dd offset loc_45D4FF
dd offset def_45D378
dd offset loc_45D515



sub_45D34E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     ecx, offset byte_5F8364
mov     eax, offset dword_560BDC
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_45D36C
mov     byte ptr [esi+8], 0Ah

loc_45D36C:
mov     dl, [esi+8]
cmp     dl, 0Ah         ; switch 11 cases
ja      short def_45D378 ; jumptable 0045D378 default case, case 9
xor     ebx, ebx
mov     bl, dl
jmp     jpt_45D378[ebx*4] ; switch jump

loc_45D37F:             ; jumptable 0045D378 case 0
mov     eax, esi
call    sub_45D611

loc_45D386:
inc     byte ptr [esi+8]
jmp     short def_45D378 ; jumptable 0045D378 default case, case 9

loc_45D38B:             ; jumptable 0045D378 case 1
cmp     byte ptr ds:dword_77E784+1, 2
jnz     short def_45D378 ; jumptable 0045D378 default case, case 9
mov     edx, 29h ; ')'
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
jmp     short loc_45D386

loc_45D3B0:             ; jumptable 0045D378 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
call    sub_49DF64
jmp     short loc_45D386

loc_45D3C4:             ; jumptable 0045D378 case 3
cmp     byte ptr [eax+9], 1
jnz     short loc_45D3F5
mov     eax, [esi+62h]
sar     eax, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ecx+14h]
lea     edi, [esi+14h]
mov     ecx, eax
mov     eax, edi
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     def_45D378      ; jumptable 0045D378 default case, case 9

loc_45D3F5:
inc     dl
mov     [esi+8], dl
jmp     def_45D378      ; jumptable 0045D378 default case, case 9

loc_45D3FF:             ; jumptable 0045D378 case 4
cmp     byte ptr [eax+9], 3
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
mov     word ptr [esi+14h], 0A0h
mov     word ptr [esi+18h], 0FED4h
mov     word ptr [esi+56h], 700h
jmp     loc_45D386

loc_45D420:             ; jumptable 0045D378 case 5
cmp     byte ptr [eax+9], 5
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
jmp     short loc_45D3F5

loc_45D42C:             ; jumptable 0045D378 case 6
mov     eax, [esi+62h]
sar     eax, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ecx+14h]
lea     edi, [esi+14h]
mov     ecx, eax
mov     eax, edi
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
call    sub_42ABA2
test    eax, eax
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
mov     edx, 30h ; '0'
call    sub_4A0E24

loc_45D474:
inc     byte ptr [esi+8]

loc_45D477:
mov     byte ptr [esi+9], 0
jmp     def_45D378      ; jumptable 0045D378 default case, case 9

loc_45D480:             ; jumptable 0045D378 case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_45D4A4
call    sub_49DF64
mov     byte ptr [esi+8], 0Ah
jmp     def_45D378      ; jumptable 0045D378 default case, case 9

loc_45D4A4:
mov     eax, [esi+62h]
sar     eax, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ecx+14h]
lea     edi, [esi+14h]
mov     ecx, eax
mov     eax, edi
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
call    sub_42ABA2
test    eax, eax
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
mov     edx, 31h ; '1'
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
jmp     loc_45D474

loc_45D4FF:             ; jumptable 0045D378 case 8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
mov     byte ptr [esi+8], 6
jmp     def_45D378      ; jumptable 0045D378 default case, case 9

loc_45D515:             ; jumptable 0045D378 case 10
mov     byte ptr [esi+3], 1
mov     byte ptr [esi+8], 1
jmp     loc_45D477
sub_45D34E endp

jpt_45D54C dd offset loc_45D553 ; jump table for switch statement
dd offset loc_45D562
dd offset loc_45D573
dd offset loc_45D5CB
dd offset loc_45D5DE



sub_45D536 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_45D54C      ; jumptable 0045D54C default case
and     eax, 0FFh
jmp     jpt_45D54C[eax*4] ; switch jump

loc_45D553:             ; jumptable 0045D54C case 0
mov     eax, esi
call    sub_45D611

loc_45D55A:
inc     byte ptr [esi+8]
jmp     def_45D54C      ; jumptable 0045D54C default case

loc_45D562:             ; jumptable 0045D54C case 1
mov     eax, esi
call    sub_45D6BD
test    eax, eax
jz      def_45D54C      ; jumptable 0045D54C default case
jmp     short loc_45D55A

loc_45D573:             ; jumptable 0045D54C case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short def_45D54C ; jumptable 0045D54C default case
call    sub_42ABA2
test    eax, eax
jnz     short def_45D54C ; jumptable 0045D54C default case
mov     edx, 49h ; 'I'
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     short def_45D54C ; jumptable 0045D54C default case

loc_45D5CB:             ; jumptable 0045D54C case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_45D54C ; jumptable 0045D54C default case
call    sub_42A98E
jmp     loc_45D55A

loc_45D5DE:             ; jumptable 0045D54C case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_45D54C ; jumptable 0045D54C default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1

def_45D54C:             ; jumptable 0045D54C default case
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
sub_45D536 endp




sub_45D611 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 12Ch
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 80h
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_516700
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_45D611 endp




sub_45D6BD proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     edi, offset byte_5F8364
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     loc_45D7A2
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_45D717
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_45D72D

loc_45D717:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_45D72D:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 40h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_55A06C, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_55A070, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_55A074, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_55A06C
call    sub_42AAA8
mov     eax, 1
jmp     short loc_45D7A4

loc_45D7A2:
xor     eax, eax

loc_45D7A4:
add     esp, 4
jmp     loc_45D318
sub_45D6BD endp




sub_45D7AC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     word ptr [eax+15Eh], 4210h
test    byte ptr [eax], 2
jz      short loc_45D7D3
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B

loc_45D7D3:
xor     edx, edx
mov     dl, [esi+3]
mov     eax, esi
call    ds:funcs_45D7DA[edx*4]
cmp     byte ptr [esi+9], 0
jz      short loc_45D7F5
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
jmp     short loc_45D801

loc_45D7F5:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1

loc_45D801:
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45D7AC endp




sub_45D80D proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45D813[edx*4]
pop     edx
retn
sub_45D80D endp




sub_45D81C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45D822[edx*4]
pop     edx
retn
sub_45D81C endp




sub_45D82B proc near
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
mov     dword ptr [ecx+10h], offset unk_516734
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
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
mov     edx, [ecx+1Ch]
mov     [ecx+34h], edx
mov     edx, [ecx+20h]
mov     [ecx+38h], edx
mov     edx, [ecx+24h]
mov     [ecx+3Ch], edx
mov     dx, [ecx+14h]
mov     [ecx+2Ch], dx
mov     dx, [ecx+16h]
mov     [ecx+2Eh], dx
mov     dx, [ecx+18h]
mov     [ecx+30h], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+54h]
mov     [ecx+5Ch], dx
mov     dx, [ecx+56h]
mov     [ecx+5Eh], dx
mov     dx, [ecx+58h]
mov     [ecx+60h], dx
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     byte ptr [ecx+9], 0

loc_45D905:
mov     word ptr [ecx+64h], 80h
mov     edx, [ecx+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_45D82B endp




sub_45D925 proc near

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
mov     esi, eax
cmp     eax, ds:dword_5F84E8
jnz     loc_45D9CA
and     ds:byte_5F8364, 0FDh
or      ds:byte_5F8421, 80h
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     [esp+28h+var_28], eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     [esp+28h+var_24], eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     [esp+28h+var_20], eax
mov     ecx, ds:dword_77E964
lea     ebp, [esi+14h]
mov     edi, offset byte_5F8364
add     edi, 14h
mov     edx, ebp
mov     eax, edi
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, esp
call    sub_42AAA8
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
mov     edx, edi
mov     eax, ebp
call    sub_4DDDB4
mov     ds:word_55A07C, ax
mov     byte ptr [esi+8], 2
jmp     short loc_45D9EC

loc_45D9CA:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_45D9D9
mov     eax, esi
call    sub_4DEADD
jmp     short loc_45D9EC

loc_45D9D9:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0

loc_45D9EC:
add     esp, 10h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45D925 endp




sub_45D9F6 proc near
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
cmp     byte ptr [esi+0Dh], 0
jnz     short loc_45DA1D
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45DA1D:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45D9F6 endp




sub_45DA35 proc near
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
mov     dword ptr [ecx+10h], offset unk_516734
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
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
mov     edx, [ecx+1Ch]
mov     [ecx+34h], edx
mov     edx, [ecx+20h]
mov     [ecx+38h], edx
mov     edx, [ecx+24h]
mov     [ecx+3Ch], edx
mov     dx, [ecx+14h]
mov     [ecx+2Ch], dx
mov     dx, [ecx+16h]
mov     [ecx+2Eh], dx
mov     dx, [ecx+18h]
mov     [ecx+30h], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+54h]
mov     [ecx+5Ch], dx
mov     dx, [ecx+56h]
mov     [ecx+5Eh], dx
mov     dx, [ecx+58h]
mov     [ecx+60h], dx
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
jmp     loc_45D905
sub_45DA35 endp




sub_45DB10 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, dword ptr ds:unk_55A07A
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short loc_45DB79
call    sub_42ABA2
test    eax, eax
jnz     short loc_45DB79
mov     ecx, [esi+9]
sar     ecx, 18h
lea     eax, [esi+14h]
xor     ebx, ebx
mov     edx, 3
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+9], 1
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45DB79:
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45DB10 endp




sub_45DB85 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr ds:dword_77E760, 0
jnz     short loc_45DBAD
call    sub_42A98E
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_45DBAD:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_45DB85 endp




sub_45DBB8 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+5Ch]
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [ecx+56h]
add     edx, eax
and     dh, 0Fh
mov     [ecx+56h], dx
test    ax, ax
jnz     short loc_45DC14
call    sub_42ABA2
test    eax, eax
jnz     short loc_45DC14
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
and     ds:byte_5F8421, 7Fh
or      ds:byte_5F8364, 2
mov     byte ptr [ecx+8], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_45DC14:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_45DBB8 endp




sub_45DC1F proc near
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
call    ds:funcs_45DC46[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_45DC66
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45DC66:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_45DC76
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_45DC7D

loc_45DC76:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_45DC7D:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45DC1F endp




sub_45DC84 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ah, [eax]
or      ah, 2
mov     [esi], ah
mov     word ptr [esi+54h], 0
mov     word ptr [esi+58h], 0
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ebp, offset byte_5F8364
add     ebp, 14h
lea     edi, [esi+14h]
mov     ecx, 800h
mov     edx, ebp
mov     eax, edi
call    sub_4DE552
test    ax, ax
jge     short loc_45DCDE
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, edi
call    sub_4DE552
movsx   ebx, ax
neg     ebx
jmp     short loc_45DCF5

loc_45DCDE:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, edi
call    sub_4DE552
movsx   ebx, ax

loc_45DCF5:
sar     ebx, 3
mov     [esi+64h], bx
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     word ptr [esi+15Eh], 4210h
mov     dword ptr [esi+78h], 0
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     ebx, [esi+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [esi+20h], ebx
mov     word ptr [esi+6Eh], 0
mov     ax, [esi+6Eh]
mov     [esi+0B0h], ax
mov     [esi+0B2h], ax
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0
jmp     loc_45DC7D
sub_45DC84 endp

db 8Dh, 40h, 0
jpt_45DDA2 dd offset loc_45DDA9 ; jump table for switch statement
dd offset loc_45DDDA
dd offset loc_45DE49
dd offset loc_45DEE6
dd offset loc_45DEF9



sub_45DD87 proc near

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
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_45DDA2      ; jumptable 0045DDA2 default case
and     eax, 0FFh
jmp     jpt_45DDA2[eax*4] ; switch jump

loc_45DDA9:             ; jumptable 0045DDA2 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_45DDA2      ; jumptable 0045DDA2 default case
mov     byte ptr ds:dword_5F836C, 3
xor     ah, ah
mov     byte ptr ds:dword_5F836C+1, ah
xor     edx, edx
mov     ds:dword_5F8370, edx

loc_45DDD2:
inc     byte ptr [esi+0Ah]
jmp     def_45DDA2      ; jumptable 0045DDA2 default case

loc_45DDDA:             ; jumptable 0045DDA2 case 1
cmp     ds:word_6E23D6, 0
jnz     def_45DDA2      ; jumptable 0045DDA2 default case
mov     ds:byte_5F88AC, 30h ; '0'
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     [esp+2Ch+var_2C], eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     [esp+2Ch+var_28], eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     [esp+2Ch+var_24], eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
mov     eax, offset byte_5F8364
add     eax, 14h
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, esp
call    sub_42AAA8
and     ds:byte_5F8364, 0FDh
jmp     short loc_45DDD2

loc_45DE49:             ; jumptable 0045DDA2 case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ebp, offset byte_5F8364
add     ebp, 14h
lea     edi, [esi+14h]
mov     edx, ebp
mov     eax, edi
call    sub_4DE552
mov     word ptr [esp+2Ch+var_1C], ax
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, ds:dword_5F83B8
sar     ebx, 10h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, [esp+2Ch+var_1C]
and     dh, 0Fh
mov     [esi+56h], dx
mov     dx, word ptr ds:dword_5F88A4+2
add     edx, eax
and     dh, 0Fh
mov     word ptr ds:dword_5F88A4+2, dx
mov     edx, [esp+0Eh]
sar     edx, 10h
cwde
add     eax, edx
jnz     def_45DDA2      ; jumptable 0045DDA2 default case
call    sub_42ABA2
test    eax, eax
jnz     def_45DDA2      ; jumptable 0045DDA2 default case
mov     edx, 35h ; '5'
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+9], 0
jmp     short def_45DDA2 ; jumptable 0045DDA2 default case

loc_45DEE6:             ; jumptable 0045DDA2 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_45DDA2 ; jumptable 0045DDA2 default case
call    sub_42A98E
jmp     loc_45DDD2

loc_45DEF9:             ; jumptable 0045DDA2 case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_45DDA2 ; jumptable 0045DDA2 default case
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
mov     byte ptr [esi+0Bh], 0
mov     al, [esi+0Bh]
mov     [esi+0Ah], al
mov     [esi+9], al
mov     [esi+8], al
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Fh], 0
mov     al, [esi+0Fh]
mov     [esi+0Eh], al
mov     [esi+0Dh], al
mov     byte ptr [esi+4], 1

def_45DDA2:             ; jumptable 0045DDA2 default case
add     esp, 14h
jmp     loc_45DC7D
sub_45DD87 endp



; Attributes: thunk

sub_45DF40 proc near
jmp     sub_4DE2F6
sub_45DF40 endp




sub_45DF45 proc near
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
mov     dl, [eax+3]
call    ds:funcs_45DF6C[edx*4]
mov     dl, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     dl, ah
jz      short loc_45DF92
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_45DF99

loc_45DF92:
mov     eax, ebp
call    sub_4DEADD

loc_45DF99:
test    byte ptr [ebp+0], 2
jz      short loc_45DFB2
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 50h ; 'P'
mov     eax, ebp
call    sub_4ED88B

loc_45DFB2:
mov     dl, [ebp+0ACh]
mov     [ebp+0ADh], dl
sub_45DF45 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_45E13A

loc_45DFBE:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_45E13A



sub_45DFC5 proc near
push    edx
mov     edx, eax
mov     al, [eax+8]
test    al, al
jnz     short loc_45DFD9
mov     eax, edx
call    sub_45E0BB
inc     byte ptr [edx+8]

loc_45DFD9:
pop     edx
retn
sub_45DFC5 endp

db 8Bh, 0C0h
jpt_45E007 dd offset loc_45E00E ; jump table for switch statement
dd offset loc_45E01D
dd offset loc_45E02E
dd offset loc_45E078
dd offset loc_45E088



sub_45DFF1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_45E007      ; jumptable 0045E007 default case
and     eax, 0FFh
jmp     jpt_45E007[eax*4] ; switch jump

loc_45E00E:             ; jumptable 0045E007 case 0
mov     eax, esi
call    sub_45E0BB

loc_45E015:
inc     byte ptr [esi+8]
jmp     def_45E007      ; jumptable 0045E007 default case

loc_45E01D:             ; jumptable 0045E007 case 1
mov     eax, esi
call    sub_45E13A
test    eax, eax
jz      def_45E007      ; jumptable 0045E007 default case
jmp     short loc_45E015

loc_45E02E:             ; jumptable 0045E007 case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short def_45E007 ; jumptable 0045E007 default case
call    sub_42ABA2
test    eax, eax
jnz     short def_45E007 ; jumptable 0045E007 default case
mov     edx, 13h
call    sub_4A0E24
mov     byte ptr [esi+0ACh], 8
jmp     short loc_45E015

loc_45E078:             ; jumptable 0045E007 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_45E007 ; jumptable 0045E007 default case
call    sub_42A98E
jmp     short loc_45E015

loc_45E088:             ; jumptable 0045E007 case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_45E007 ; jumptable 0045E007 default case
and     ds:byte_5F8421, 7Fh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1

def_45E007:             ; jumptable 0045E007 default case
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
sub_45DFF1 endp




sub_45E0BB proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_516754
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
pop     edx
pop     ecx
retn
sub_45E0BB endp




sub_45E13A proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 0045DFBE SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     edi, offset byte_5F8364
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     loc_45E21F
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_45E194
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_45E1AA

loc_45E194:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_45E1AA:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 80h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_55A080, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_55A084, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_55A088, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_55A080
call    sub_42AAA8
mov     eax, 1
jmp     short loc_45E221

loc_45E21F:
xor     eax, eax

loc_45E221:
add     esp, 4
jmp     loc_45DFBE
sub_45E13A endp




sub_45E229 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_45E229 endp




sub_45E257 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45E273
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45E273:
pop     edx
pop     ecx
pop     ebx
retn
sub_45E257 endp




sub_45E277 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45E293
xor     ebx, ebx
mov     edx, 15h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45E293:
pop     edx
pop     ecx
pop     ebx
retn
sub_45E277 endp




sub_45E297 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45E2B3
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45E2B3:
pop     edx
pop     ecx
pop     ebx
retn
sub_45E297 endp




sub_45E2B7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45E2D3
xor     ebx, ebx
mov     edx, 17h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45E2D3:
pop     edx
pop     ecx
pop     ebx
retn
sub_45E2B7 endp




sub_45E2D7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45E2F3
xor     ebx, ebx
mov     edx, 1Ah
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45E2F3:
pop     edx
pop     ecx
pop     ebx
retn
sub_45E2D7 endp




sub_45E2F7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_45E30F
jbe     short loc_45E329
cmp     al, 2
jz      short loc_45E358
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45E30F:
test    al, al
jnz     short loc_45E368
xor     ebx, ebx
mov     edx, 18h

loc_45E31A:
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45E329:
mov     eax, [esi+98h]
cmp     byte ptr [eax], 31h ; '1'
jb      short loc_45E344
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFC0h
mov     eax, esi
call    sub_4DD43B

loc_45E344:
mov     eax, [esi+98h]
cmp     byte ptr [eax], 45h ; 'E'
jnz     short loc_45E368
xor     ebx, ebx
mov     edx, 19h
jmp     short loc_45E31A

loc_45E358:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFC0h
mov     eax, esi
call    sub_4DD43B

loc_45E368:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45E2F7 endp




sub_45E36D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45E389
xor     ebx, ebx
mov     edx, 19h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45E389:
pop     edx
pop     ecx
pop     ebx
retn
sub_45E36D endp




sub_45E38D proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_45E396[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_45E3B5
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_45E3B5:
pop     edx
pop     ecx
retn
sub_45E38D endp




sub_45E3B8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_45E3CB
mov     eax, esi
call    sub_45E229

loc_45E3CB:
mov     eax, esi
call    sub_45E38D
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45E3B8 endp




sub_45E3EA proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45E3F0[edx*4]
pop     edx
retn
sub_45E3EA endp




sub_45E3F9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ebp+0], ah
cmp     byte ptr [ebp+3], 0
jz      short loc_45E41A
lea     edx, [ebp+3]
jmp     short loc_45E41C

loc_45E41A:
xor     edx, edx

loc_45E41C:
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 1D701D7h
mov     dword ptr [ebp+15Ch], 1D7h
mov     word ptr [ebp+15Eh], 4210h
mov     word ptr [ecx], 0
mov     dword ptr [ecx+4], 0
mov     edi, offset unk_55A090
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
mov     edx, offset unk_55A090
call    sub_4DD4C5
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], offset unk_516798
mov     dword ptr [ebp+10h], 0
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 3
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_45E4E3

loc_45E4DC:
pop     ebp

def_45E5EA:             ; jumptable 0045E5EA default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45E3F9 endp




sub_45E4E3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+408h]
mov     al, [eax+0ACh]
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
mov     [edx+2], ax
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_45E530[ecx*4]
test    byte ptr [edx], 1
jz      short loc_45E549
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_45E549:
mov     al, [ebp+0ADh]
mov     bh, [ebp+0ACh]
cmp     al, bh
jz      short loc_45E568
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_45E56F

loc_45E568:
mov     eax, ebp
call    sub_4DEADD

loc_45E56F:
test    byte ptr [ebp+0], 2
jz      short loc_45E588
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45E588:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
mov     eax, ebp
call    sub_432697
jmp     loc_45E4DC
sub_45E4E3 endp



; Attributes: thunk

sub_45E5A0 proc near
jmp     sub_4DE2F6
sub_45E5A0 endp




sub_45E5A5 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_45E5B9
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45E5B9:
pop     edx
retn
sub_45E5A5 endp

db 8Dh, 40h, 0
jpt_45E5EA dd offset loc_45E5F1 ; jump table for switch statement
dd offset loc_45E61B
dd offset loc_45E6BC
dd offset loc_45E6DA



sub_45E5CE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_45E5EA      ; jumptable 0045E5EA default case
xor     edx, edx
mov     dl, al
jmp     jpt_45E5EA[edx*4] ; switch jump

loc_45E5F1:             ; jumptable 0045E5EA case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 1
mov     word ptr [esi+44h], 3Ch ; '<'
mov     word ptr [esi+64h], 20h ; ' '
mov     word ptr [edi+0Ch], 0F445h
mov     word ptr [edi+0Eh], 0FFFFh
mov     word ptr [edi+10h], 53Bh

loc_45E61B:             ; jumptable 0045E5EA case 1
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+0Ch]
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
cmp     byte ptr [esi+0A6h], 1
jnz     short loc_45E665
xor     ebx, ebx
xor     edx, edx
mov     eax, 10Ch
call    sub_4D89E4

loc_45E665:
mov     edx, [esi+12h]
sar     edx, 10h
mov     eax, [edi+0Ah]
sar     eax, 10h
sub     edx, eax
mov     eax, [esi+16h]
sar     eax, 10h
mov     edi, [edi+0Eh]
sar     edi, 10h
sub     eax, edi
mov     edi, eax
imul    edx, edx
imul    edi, eax
add     edx, edi
cmp     edx, 800h
jge     def_45E5EA      ; jumptable 0045E5EA default case
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0
mov     word ptr [esi+44h], 0
mov     word ptr [esi+64h], 0
mov     eax, 606h
call    sub_47E8B8
jmp     def_45E5EA      ; jumptable 0045E5EA default case

loc_45E6BC:             ; jumptable 0045E5EA case 2
test    byte ptr ds:dword_55BD7C+2, 20h
jz      def_45E5EA      ; jumptable 0045E5EA default case
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 8
jmp     def_45E5EA      ; jumptable 0045E5EA default case

loc_45E6DA:             ; jumptable 0045E5EA case 3
cmp     byte ptr [esi+0A7h], 0
jge     def_45E5EA      ; jumptable 0045E5EA default case
dec     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0
jmp     def_45E5EA      ; jumptable 0045E5EA default case
sub_45E5CE endp

db 8Bh, 0C0h
jpt_45E730 dd offset loc_45E737 ; jump table for switch statement
dd offset loc_45E765
dd offset loc_45E7BE
dd offset loc_45E7D9
dd offset def_45E730



sub_45E70E proc near

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
cmp     al, 4           ; switch 5 cases
ja      def_45E730      ; jumptable 0045E730 default case, case 4
xor     edx, edx
mov     dl, al
jmp     jpt_45E730[edx*4] ; switch jump

loc_45E737:             ; jumptable 0045E730 case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 1
mov     word ptr [ebp+44h], 3Ch ; '<'
mov     word ptr [ebp+64h], 20h ; ' '
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     edi, [esp+1Ch+var_1C]
lea     edi, [edi+0Ch]
lea     esi, [eax+14h]
movsd
movsd

loc_45E765:             ; jumptable 0045E730 case 1
mov     ecx, [ebp+62h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
add     edx, 0Ch
lea     eax, [ebp+14h]
call    sub_4DE552
mov     ecx, eax
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_45E7A3
xor     ebx, ebx
xor     edx, edx
mov     eax, 10Ch
call    sub_4D89E4

loc_45E7A3:
test    cx, cx
jnz     def_45E730      ; jumptable 0045E730 default case, case 4
mov     eax, 606h
call    sub_47E8B8
inc     byte ptr [ebp+0Ah]
jmp     def_45E730      ; jumptable 0045E730 default case, case 4

loc_45E7BE:             ; jumptable 0045E730 case 2
inc     al
mov     [ebp+0Ah], al
mov     eax, [ebp+0Ah]
sar     eax, 18h
call    sub_4E1877
mov     edi, [esp+1Ch+var_1C]
lea     edi, [edi+0Ch]
lea     esi, [eax+14h]
movsd
movsd

loc_45E7D9:             ; jumptable 0045E730 case 3
mov     ecx, [ebp+62h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
add     edx, 0Ch
lea     eax, [ebp+14h]
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
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_45E826
xor     ebx, ebx
xor     edx, edx
mov     eax, 10Ch
call    sub_4D89E4

loc_45E826:
mov     edx, [ebp+12h]
sar     edx, 10h
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0Ah]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
mov     ecx, [ebp+16h]
sar     ecx, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0Eh]
sar     edx, 10h
sub     ecx, edx
mov     edx, ecx
mov     ecx, eax
imul    ecx, ecx
mov     eax, edx
imul    eax, eax
add     eax, ecx
cmp     eax, 800h
jge     short def_45E730 ; jumptable 0045E730 default case, case 4
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 0
mov     word ptr [ebp+44h], 0
mov     word ptr [ebp+64h], 0
mov     eax, 606h
call    sub_47E8B8

def_45E730:             ; jumptable 0045E730 default case, case 4
add     esp, 4
jmp     loc_45E4DC
sub_45E70E endp




sub_45E887 proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_45E899
jbe     short loc_45E8A9
cmp     dl, 2
jz      short loc_45E8BE
pop     edx
retn

loc_45E899:
test    dl, dl
jnz     short loc_45E8D3
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45E8A9:
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_45E8D3
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 8
pop     edx
retn

loc_45E8BE:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_45E8D3
dec     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45E8D3:
pop     edx
retn
sub_45E887 endp




sub_45E8D5 proc near
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
mov     dl, [eax+3]
call    ds:funcs_45E8FC[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_45E91C
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45E91C:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_45E92C
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_45E933

loc_45E92C:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_45E933:
pop     ebp

loc_45E934:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45E8D5 endp

db 8Dh, 40h, 0
jpt_45E968 dd offset loc_45E96F ; jump table for switch statement
dd offset loc_45E97E
dd offset loc_45E98F
dd offset loc_45E9F4
dd offset loc_45EA07



sub_45E951 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_45E968      ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
and     eax, 0FFh
jmp     jpt_45E968[eax*4] ; switch jump

loc_45E96F:             ; jumptable 0045E968 case 0
mov     eax, esi
call    sub_45EC49

loc_45E976:
inc     byte ptr [esi+8]
jmp     def_45E968      ; jumptable 0045E968 default case
; jumptable 0045EA64 default case

loc_45E97E:             ; jumptable 0045E968 case 1
mov     eax, esi
call    sub_45ECFF
test    eax, eax
jz      def_45E968      ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
jmp     short loc_45E976

loc_45E98F:             ; jumptable 0045E968 case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     edi, [esi+14h]
mov     eax, edi
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short def_45E968 ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
call    sub_42ABA2
test    eax, eax
jnz     short def_45E968 ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
call    sub_45EDEE
mov     ecx, eax
xor     ebx, ebx
mov     edx, 3
mov     eax, edi
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     short def_45E968 ; jumptable 0045E968 default case
; jumptable 0045EA64 default case

loc_45E9F4:             ; jumptable 0045E968 case 3
cmp     byte ptr ds:dword_77E760, 0
jnz     short def_45E968 ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
call    sub_42A98E
jmp     loc_45E976

loc_45EA07:             ; jumptable 0045E968 case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_45E968 ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1

def_45E968:             ; jumptable 0045E968 default case
xor     ecx, ecx        ; jumptable 0045EA64 default case
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
jmp     loc_45E934
sub_45E951 endp

db 8Dh, 40h, 0
jpt_45EA64 dd offset loc_45EA6B ; jump table for switch statement
dd offset loc_45EA77
dd offset loc_45EA84
dd offset loc_45EAF2
dd offset loc_45EB09



sub_45EA51 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      short def_45E968 ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
and     eax, 0FFh
jmp     jpt_45EA64[eax*4] ; switch jump

loc_45EA6B:             ; jumptable 0045EA64 case 0
mov     eax, esi
call    sub_45EC49

loc_45EA72:
inc     byte ptr [esi+8]
jmp     short def_45E968 ; jumptable 0045E968 default case
; jumptable 0045EA64 default case

loc_45EA77:             ; jumptable 0045EA64 case 1
mov     eax, esi
call    sub_45ECFF
test    eax, eax
jz      short def_45E968 ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
jmp     short loc_45EA72

loc_45EA84:             ; jumptable 0045EA64 case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     edi, [esi+14h]
mov     eax, edi
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_45E968      ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
call    sub_42ABA2
test    eax, eax
jnz     def_45E968      ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
mov     ecx, 1
xor     ebx, ebx
mov     edx, 3
mov     eax, edi
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     def_45E968      ; jumptable 0045E968 default case
; jumptable 0045EA64 default case

loc_45EAF2:             ; jumptable 0045EA64 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_45E968      ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
call    sub_42A98E
jmp     loc_45EA72

loc_45EB09:             ; jumptable 0045EA64 case 4
call    sub_42ABA2
test    eax, eax
jnz     def_45E968      ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+3], 0
mov     eax, 204h
call    sub_47E8B8
jmp     def_45E968      ; jumptable 0045E968 default case
sub_45EA51 endp         ; jumptable 0045EA64 default case

db 8Bh, 0C0h
jpt_45EB66 dd offset loc_45EB6D ; jump table for switch statement
dd offset loc_45EB7C
dd offset loc_45EB94
dd offset loc_45EBC9
dd offset loc_45EBD9



sub_45EB51 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_45EB66      ; jumptable 0045EB66 default case
xor     edx, edx
mov     dl, al
jmp     jpt_45EB66[edx*4] ; switch jump

loc_45EB6D:             ; jumptable 0045EB66 case 0
mov     eax, esi
call    sub_45EC49

loc_45EB74:
inc     byte ptr [esi+8]
jmp     def_45EB66      ; jumptable 0045EB66 default case

loc_45EB7C:             ; jumptable 0045EB66 case 1
cmp     ds:word_6E23D6, 0
jnz     def_45EB66      ; jumptable 0045EB66 default case
inc     al
mov     [esi+8], al
jmp     def_45EB66      ; jumptable 0045EB66 default case

loc_45EB94:             ; jumptable 0045EB66 case 2
mov     eax, 7D0h
call    sub_4A62A5
lea     eax, [esi+14h]
mov     ecx, 21h ; '!'
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     short def_45EB66 ; jumptable 0045EB66 default case

loc_45EBC9:             ; jumptable 0045EB66 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_45EB66 ; jumptable 0045EB66 default case
call    sub_42A98E
jmp     short loc_45EB74

loc_45EBD9:             ; jumptable 0045EB66 case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_45EB66 ; jumptable 0045EB66 default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     eax, 223h
call    sub_47E8B8
mov     eax, 214h
call    sub_47E8B8
mov     eax, 24Ch
call    sub_47E8B8
mov     eax, 2E3h
call    sub_47EE82
mov     dh, 1
mov     byte ptr ds:word_77E7FC, dh
mov     eax, 0Ah
call    sub_47EEAE
mov     [esi+8], dh
mov     byte ptr [esi+3], 0

def_45EB66:             ; jumptable 0045EB66 default case
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
sub_45EB51 endp




sub_45EC49 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 0C00h
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 80h
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 1D701D7h
mov     dword ptr [ecx+15Ch], 1D7h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_5167B0
mov     eax, 223h
call    sub_47EA91
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_45EC49 endp




sub_45ECFF proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     edi, offset byte_5F8364
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     loc_45EDE4
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_45ED59
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_45ED6F

loc_45ED59:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_45ED6F:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 40h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_55A0A0, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_55A0A4, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_55A0A8, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_55A0A0
call    sub_42AAA8
mov     eax, 1
jmp     short loc_45EDE6

loc_45EDE4:
xor     eax, eax

loc_45EDE6:
add     esp, 4
jmp     loc_45E933
sub_45ECFF endp




sub_45EDEE proc near
push    edx
mov     edx, 23h ; '#'
mov     eax, 222h
call    sub_47E888
test    eax, eax
jnz     short loc_45EE13
mov     eax, 222h
call    sub_47E8B8
mov     eax, 22h ; '"'
pop     edx
retn

loc_45EE13:
call    sub_45EFB6
test    al, al
jz      loc_45EFB2
mov     eax, 207h
call    sub_47E888
test    eax, eax
jz      short loc_45EE47
mov     eax, 223h
call    sub_47E888
test    eax, eax
jz      loc_45EEC9
mov     eax, 24h ; '$'
pop     edx
retn

loc_45EE47:
mov     eax, 206h
call    sub_47E888
test    eax, eax
jz      short loc_45EE91
mov     eax, 205h
call    sub_47E888
test    eax, eax
jz      short loc_45EE6A
mov     edx, 4
jmp     short loc_45EE79

loc_45EE6A:
mov     edx, 3
mov     eax, 24Bh
call    sub_47E8B8

loc_45EE79:
mov     eax, 207h
call    sub_47E8B8
mov     eax, 223h
call    sub_47E8B8
mov     eax, edx
pop     edx
retn

loc_45EE91:
mov     eax, 204h
call    sub_47E888
test    eax, eax
jz      short loc_45EEA6
mov     eax, 2
pop     edx
retn

loc_45EEA6:
mov     eax, 204h
call    sub_47E8B8
mov     eax, 236h
call    sub_47E8B8
xor     ah, ah
mov     byte ptr ds:word_77E7FC, ah
mov     eax, 1
pop     edx
retn

loc_45EEC9:
call    sub_45EFE1
test    al, al
jz      loc_45EFB2
mov     eax, 211h
call    sub_47E888
test    eax, eax
jz      short loc_45EEFD
mov     eax, 223h
call    sub_47E888
test    eax, eax
jz      loc_45EF91
mov     eax, 0Bh
pop     edx
retn

