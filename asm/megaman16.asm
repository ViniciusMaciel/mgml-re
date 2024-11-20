loc_42382F:
or      byte ptr [edi], 1
jmp     def_4235B5      ; jumptable 004235B5 default case
sub_423599 endp         ; jumptable 004240AD default case

db 8Bh, 0C0h
jpt_423877 dd offset loc_42387E ; jump table for switch statement
dd offset loc_4238C1
dd offset loc_42398A
dd offset loc_423A6E
dd offset loc_423BAA
dd offset loc_423D09
dd offset loc_423D46



sub_423855 proc near

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
cmp     al, 6           ; switch 7 cases
ja      def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
xor     edx, edx
mov     dl, al
jmp     jpt_423877[edx*4] ; switch jump

loc_42387E:             ; jumptable 00423877 case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 20h
mov     word ptr [eax+4], 10h
mov     word ptr [eax+50h], 0FE80h
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Eh]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     [edx+53h], ah
mov     [edx+52h], ah
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_4238C1:             ; jumptable 00423877 case 1
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+50h]
add     edx, eax
mov     ax, [ebp+16h]
sub     eax, edx
mov     [ebp+4Eh], ax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
mov     edx, ds:dword_564C72[eax*2]
sar     edx, 10h
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
imul    ebx, edx
sar     ebx, 0Ch
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 0Dh
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     ecx, 800h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     [ebp+66h], ax
test    ax, ax
jge     short loc_42394C
mov     eax, 0FFFFFFC0h
jmp     short loc_423951

loc_42394C:
mov     eax, 40h ; '@'

loc_423951:
mov     [ebp+66h], ax
mov     eax, [ebp+64h]
sar     eax, 10h
sar     eax, 2
mov     [ebp+64h], ax
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+53h], 2
mov     word ptr [eax+4], 10h
mov     word ptr [eax+50h], 60h ; '`'
and     byte ptr [eax], 0FDh
lea     edx, [ebp+14h]
mov     eax, 1DCh

loc_423980:
call    sub_4D8BC3
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_42398A:             ; jumptable 00423877 case 2
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ax, [ebp+64h]
add     [ebp+66h], ax
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+50h]
add     edx, eax
mov     ax, [ebp+16h]
sub     edx, eax
mov     [ebp+4Eh], dx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
mov     ebx, dword ptr ds:unk_564C32[eax*2]
sar     ebx, 10h
shl     ebx, 4
sar     ebx, 0Ch
mov     eax, [ebp+4Ch]
sar     eax, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
xor     eax, eax

loc_4239E9:
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+4]
xor     dh, dh
and     dl, 1Fh
mov     ebx, edx
shl     ebx, 5
or      ebx, edx
shl     edx, 0Ah
or      ebx, edx
or      bh, 80h
mov     edx, eax
mov     [ebp+edx*8+196h], bx
inc     eax
cmp     eax, 10h
jl      short loc_4239E9
or      byte ptr [ebp+0Fh], 2
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
and     byte ptr [ebp+0], 0FDh
inc     byte ptr [ebp+0Ah]
mov     word ptr [eax+4], 40h ; '@'
mov     word ptr [eax+6], 0
mov     dword ptr [ebp+1Ch], 0
mov     dword ptr [ebp+20h], 0FFBF0000h
mov     dword ptr [ebp+24h], 4000000h
lea     esi, [ebp+14h]
lea     eax, [ebp+1Ch]
mov     edx, esi
call    sub_4DD57B
mov     edx, esi
mov     eax, 1DDh
jmp     loc_423980

loc_423A6E:             ; jumptable 00423877 case 3
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+2]
sar     edx, 10h
mov     ecx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
test    edx, edx
jnz     short loc_423AA6
mov     eax, [esp+1Ch+var_1C]
inc     word ptr [eax+6]
lea     ecx, [ebp+14h]
mov     eax, [eax+4]
sar     eax, 10h
mov     ebx, 0C00h
mov     edx, 800h
call    sub_42A70B

loc_423AA6:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+6], 1
jnz     short loc_423B06
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_423B06
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 0
lea     edi, [edx+48h]
lea     esi, [ebp+14h]
movsd
movsd
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+48h], ax
mov     eax, ebp
call    sub_42C592
mov     [edx+4Ah], ax
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+4Ch], ax

loc_423B06:
mov     eax, [esp+1Ch+var_1C]
mov     di, [eax+4]
dec     edi
mov     [eax+4], di
test    di, di
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
or      byte ptr [ebp+0], 2
mov     byte ptr [ebp+0ACh], 0Bh
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 10h
mov     word ptr [eax+50h], 0FF00h
lea     esi, [ebp+14h]
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DDDB4
and     ah, 0Fh
mov     [ebp+56h], ax
or      byte ptr [ebp+0Fh], 4
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DE552
mov     [ebp+66h], ax
test    ax, ax
jge     short loc_423B79
mov     eax, 0FFFFFF80h
jmp     short loc_423B7E

loc_423B79:
mov     eax, 80h

loc_423B7E:
mov     [ebp+66h], ax
mov     eax, [ebp+64h]
sar     eax, 10h
sar     eax, 3
mov     [ebp+64h], ax
lea     esi, [ebp+14h]
mov     edx, esi
mov     eax, 20Ah
call    sub_4D8BC3
mov     edx, esi
mov     eax, 1DEh
call    sub_4D8BC3

loc_423BAA:             ; jumptable 00423877 case 4
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+2]
sar     edx, 10h
mov     ecx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
test    edx, edx
jnz     short loc_423BE2
mov     eax, [esp+1Ch+var_1C]
inc     word ptr [eax+6]
lea     ecx, [ebp+14h]
mov     eax, [eax+4]
sar     eax, 10h
mov     ebx, 0C00h
mov     edx, 800h
call    sub_42A70B

loc_423BE2:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+6], 3
jnz     short loc_423C42
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_423C42
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 0
lea     edi, [edx+48h]
lea     esi, [ebp+14h]
movsd
movsd
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+48h], ax
mov     eax, ebp
call    sub_42C592
mov     [edx+4Ah], ax
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+4Ch], ax

loc_423C42:
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ax, [ebp+64h]
sub     [ebp+66h], ax
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+1Ch+var_1C]
add     ax, [edx+50h]
mov     dx, [ebp+16h]
sub     eax, edx
mov     [ebp+4Eh], ax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
xor     eax, eax
mov     ecx, [esp+1Ch+var_1C]

loc_423CA2:
mov     edx, 10h
sub     dx, [ecx+4]
xor     dh, dh
and     dl, 1Fh
mov     ebx, edx
shl     ebx, 5
or      ebx, edx
shl     edx, 0Ah
or      edx, ebx
or      dh, 80h
mov     ebx, edx
mov     edx, eax
mov     [ebp+edx*8+196h], bx
inc     eax
cmp     eax, 10h
jl      short loc_423CA2
mov     di, [ecx+4]
dec     edi
mov     [ecx+4], di
test    di, di
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 2
mov     al, [ebp+0Fh]
or      al, 8
mov     [ebp+0Fh], al
mov     ah, al
and     ah, 0EFh
mov     [ebp+0Fh], ah
lea     edx, [ebp+14h]
mov     eax, 1DFh
jmp     loc_423980

loc_423D09:             ; jumptable 00423877 case 5
mov     dh, [ebp+0Fh]
test    dh, 10h
jz      short def_4232E3 ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     bl, dh
and     bl, 0EFh
mov     [ebp+0Fh], bl
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 0Ch
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+7Ah], 1
jge     short def_4232E3 ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     word ptr [eax+7Ah], 1
mov     word ptr [eax+78h], 3Ch ; '<'
lea     edx, [ebp+14h]
mov     eax, 1E8h
jmp     loc_423980

loc_423D46:             ; jumptable 00423877 case 6
cmp     byte ptr [ebp+0A7h], 0
jge     short def_4232E3 ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     eax, [esp+1Ch+var_1C]

loc_423D52:
or      byte ptr [eax], 1

def_4232E3:             ; jumptable 004232E3 default case
add     esp, 4          ; jumptable 00423877 default case
; jumptable 00423D8F default case

def_423012:             ; jumptable 00423012 default case
pop     ebp

def_4235B5:             ; jumptable 004235B5 default case
pop     edi             ; jumptable 004240AD default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_423855 endp

db 8Bh, 0C0h
jpt_423D8F dd offset loc_423D96 ; jump table for switch statement
dd offset loc_423EA3
dd offset loc_423FB7
dd offset loc_424052



sub_423D71 proc near

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
cmp     al, 3           ; switch 4 cases
ja      short def_4232E3 ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
xor     edx, edx
mov     dl, al
jmp     jpt_423D8F[edx*4] ; switch jump

loc_423D96:             ; jumptable 00423D8F case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 1
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 20h
mov     word ptr [eax+50h], 0FFA0h
mov     word ptr [eax+4], 1Eh
xor     eax, eax
mov     al, [ebp+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Ah]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     [edx+53h], ah
mov     [edx+52h], ah
mov     eax, (offset dword_5F8376+2)
call    sub_4282E5
test    eax, eax
jz      short loc_423DF4
mov     edi, edx
lea     edi, [edi+38h]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     short loc_423E4A

loc_423DF4:
mov     [edx+40h], eax
mov     dword ptr [edx+44h], 0FF3F0000h
mov     dword ptr [edx+48h], 4000000h
lea     esi, [edx+38h]
lea     edi, [edx+40h]
mov     edx, esi
mov     eax, edi
call    sub_4DD57B
push    0
push    0
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DD69F
shl     eax, 4
lea     ecx, [eax-1000h]
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DDDB4
mov     ebx, eax
and     ebx, 0FFFh
mov     edx, edi
mov     eax, esi
call    sub_4DD4C5

loc_423E4A:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edi, [esp+1Ch+var_1C]
add     edi, 38h ; '8'
lea     esi, [ebp+14h]
mov     ecx, 800h
mov     edx, edi
mov     eax, esi
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ecx, [esp+1Ch+var_1C]
mov     ecx, [ecx+2]
sar     ecx, 10h
mov     edx, edi
mov     eax, esi
call    sub_4DD69F
mov     edx, eax
add     ecx, 2
sar     edx, 1Fh
idiv    ecx
mov     [ebp+4Ch], ax
mov     edx, esi
mov     eax, 1D5h

loc_423E99:
call    sub_4D8BC3
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_423EA3:             ; jumptable 00423D8F case 1
mov     eax, 10h
mov     edx, [esp+1Ch+var_1C]
sub     ax, [edx+4]
shl     eax, 2
mov     [ebp+4Eh], ax
dec     word ptr [edx+4]
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [ebp+4Ah]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
cmp     byte ptr [ebp+0A7h], 0
jge     short loc_423F19
mov     ch, [ebp+0ACh]
cmp     ch, 4
jz      short loc_423F19
mov     al, ch
inc     al
mov     [ebp+0ACh], al
cmp     al, 4
jnz     short loc_423F19
xor     eax, eax
mov     al, [ebp+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Ch]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     byte ptr [edx+52h], 1

loc_423F19:
mov     eax, ebp
call    sub_42C592
movsx   edx, ax
mov     ecx, [ebp+14h]
sar     ecx, 10h
cmp     edx, ecx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     [ebp+16h], ax
shl     edx, 10h
mov     [ebp+20h], edx
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 5
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     [edx+52h], ah
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 6
mov     byte ptr [eax+0Fh], 2
lea     edi, [edx+48h]
lea     esi, [ebp+14h]
movsd
movsd
mov     eax, ebp
call    sub_42C592
mov     [edx+4Ah], ax
add     ebp, 14h
mov     edx, ebp
mov     eax, 1E0h
call    sub_4D8BC3
mov     edx, ebp
mov     eax, 1D6h
jmp     loc_423E99

loc_423FB7:             ; jumptable 00423D8F case 2
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+4], 3
jnz     short loc_424030
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_424030
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 2
mov     byte ptr [eax+0Eh], 0
lea     edi, [edx+48h]
lea     esi, [ebp+14h]
movsd
movsd
call    rand_
and     ah, 1
sub     eax, 100h
add     [edx+48h], ax
mov     eax, ebp
call    sub_42C592
mov     [edx+4Ah], ax
call    rand_
and     ah, 1
sub     eax, 100h
add     [edx+4Ch], ax
lea     ecx, [edx+48h]
mov     ebx, 0C00h
mov     edx, 800h
mov     eax, 1Eh
call    sub_42A70B

loc_424030:
mov     eax, [esp+1Ch+var_1C]
inc     word ptr [eax+4]
cmp     byte ptr [ebp+0A7h], 0
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
inc     byte ptr [ebp+0Ah]
mov     word ptr [eax+4], 0Ah
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_424052:             ; jumptable 00423D8F case 3
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
jmp     loc_423D52
sub_423D71 endp

db 90h
jpt_4240AD dd offset loc_4240B4 ; jump table for switch statement
dd offset loc_42411D
dd offset loc_4241AE
dd offset loc_424235
dd offset loc_4242C9
dd offset loc_424300
dd offset loc_42437B
dd offset loc_424408
dd offset loc_42443A



sub_424091 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 8           ; switch 9 cases
ja      def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
xor     edx, edx
mov     dl, al
jmp     jpt_4240AD[edx*4] ; switch jump

loc_4240B4:             ; jumptable 004240AD case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0
or      byte ptr [edi], 20h
mov     word ptr [edi+50h], 0FE80h
mov     word ptr [edi+4], 0
mov     word ptr [edi+6], 10h
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Dh]
xor     ah, ah
mov     [edi+8], ax
mov     [edi+53h], ah
mov     [edi+52h], ah
mov     [esi+0Ch], ah
cmp     word ptr [edi+7Ah], 1
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
mov     word ptr [edi+7Ah], 1
mov     word ptr [edi+78h], 3Ch ; '<'
lea     edx, [esi+14h]
mov     eax, 1E2h
jmp     loc_4242BF

loc_42411D:             ; jumptable 004240AD case 1
mov     ax, word ptr ds:dword_5F880E
mov     dx, [edi+50h]
add     edx, eax
mov     ax, [esi+16h]
sub     edx, eax
mov     [esi+4Eh], dx
mov     eax, [edi+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 6
sar     eax, 0Ch
mov     ebx, [esi+4Ch]
sar     ebx, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     ax, [edi+4]
add     eax, 2
xor     ah, ah
and     al, 3Fh
mov     [edi+4], ax
mov     bx, [edi+6]
dec     ebx
mov     [edi+6], bx
test    bx, bx
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 9
mov     word ptr [edi+4], 15h
mov     word ptr [edi+6], 7
mov     [edi+72h], ah
mov     [edi+73h], ah
mov     word ptr [esi+66h], 0
lea     edx, [esi+14h]
mov     eax, 1D9h
jmp     loc_4242BF

loc_4241AE:             ; jumptable 004240AD case 2
mov     dx, [esi+66h]
cmp     dx, 80h
jge     short loc_4241C2
mov     ebx, edx
add     ebx, 10h
mov     [esi+66h], bx

loc_4241C2:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+1B8h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ax, [edi+6]
test    ax, ax
jnz     short loc_424229
xor     edx, edx
mov     eax, esi
call    sub_424670
inc     byte ptr [edi+72h]
mov     bx, [edi+4]
test    bx, bx
jnz     short loc_42421D
inc     byte ptr [esi+0Ah]
mov     word ptr [edi+4], 6
mov     al, [edi+72h]
and     al, 1
add     [edi+72h], al
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_42421D:
mov     ecx, ebx
dec     ecx
mov     [edi+4], cx
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_424229:
mov     edx, eax
dec     edx
mov     [edi+6], dx
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_424235:             ; jumptable 004240AD case 3
mov     ax, [esi+66h]
cmp     ax, 80h
jge     short loc_424248
mov     edx, eax
add     edx, 10h
mov     [esi+66h], dx

loc_424248:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+1B8h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [edi+72h], 0
jge     short loc_424282
xor     edx, edx
mov     eax, esi
call    sub_424670
sub     byte ptr [edi+72h], 4

loc_424282:
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
inc     byte ptr [esi+0Ah]
or      byte ptr [esi+0Eh], 2
and     byte ptr [edi], 7Fh
xor     edx, edx
mov     eax, esi
call    sub_4245FA
test    eax, eax
jz      short loc_4242AE
or      byte ptr [edi], 80h

loc_4242AE:
test    byte ptr [edi], 80h

loc_4242B1:             ; jumptable 004235B5 default case
jz      def_4235B5      ; jumptable 004240AD default case
lea     edx, [esi+14h]
mov     eax, 1D8h

loc_4242BF:
call    sub_4D8BC3
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_4242C9:             ; jumptable 004240AD case 4
cmp     byte ptr [esi+0Ch], 2
jnz     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
lea     edx, [esi+14h]
mov     eax, 1D9h
call    sub_4D8BC3
inc     byte ptr [esi+0Ah]
test    byte ptr [edi], 80h
jz      short loc_4242EF
mov     eax, [edi+68h]
mov     byte ptr [eax+0Eh], 1

loc_4242EF:
mov     word ptr [edi+4], 15h
mov     word ptr [esi+66h], 0
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_424300:             ; jumptable 004240AD case 5
mov     ax, [esi+66h]
cmp     ax, 80h
jge     short loc_424313
mov     edx, eax
add     edx, 10h
mov     [esi+66h], dx

loc_424313:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+1E0h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, 1
mov     eax, esi
call    sub_424670
inc     byte ptr [edi+73h]
mov     cx, [edi+4]
test    cx, cx
jnz     short loc_42436F
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0Ah
mov     word ptr [edi+4], 6
mov     al, [edi+73h]
and     al, 1
add     [edi+73h], al
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_42436F:
mov     esi, ecx
dec     esi
mov     [edi+4], si
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_42437B:             ; jumptable 004240AD case 6
mov     cx, [esi+66h]
cmp     cx, 80h
jge     short loc_424391
mov     eax, ecx
add     eax, 10h
mov     [esi+66h], ax

loc_424391:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+1E0h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [edi+73h], 0
jge     short loc_4243CE
mov     edx, 1
mov     eax, esi
call    sub_424670
sub     byte ptr [edi+73h], 4

loc_4243CE:
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
inc     byte ptr [esi+0Ah]
or      byte ptr [esi+0Eh], 1
and     byte ptr [edi+1], 0FEh
mov     edx, 1
mov     eax, esi
call    sub_4245FA
test    eax, eax
jz      short loc_4243FF
or      byte ptr [edi+1], 1

loc_4243FF:
test    byte ptr [edi+1], 1
jmp     loc_4242B1

loc_424408:             ; jumptable 004240AD case 7
cmp     byte ptr [esi+0Ch], 4
jnz     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
inc     al
mov     [esi+0Ah], al
test    byte ptr [edi+1], 1
jz      short loc_424424
mov     eax, [edi+6Ch]
mov     byte ptr [eax+0Eh], 1

loc_424424:
mov     byte ptr [esi+0ACh], 0
or      byte ptr [esi+0Eh], 4
mov     word ptr [edi+4], 8
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_42443A:             ; jumptable 004240AD case 8
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
and     byte ptr [esi+0Fh], 0EFh
jmp     loc_42382F
sub_424091 endp




sub_424455 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+550h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_424476
cmp     al, 1
jz      loc_424504
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_424476:
inc     al
mov     [edi+0Ah], al
mov     byte ptr [edi+0ACh], 0
or      byte ptr [esi], 20h
mov     word ptr [esi+50h], 0FFA0h
mov     word ptr [esi+4], 0
xor     eax, eax
mov     al, [edi+2]
mov     ebx, ds:dword_55A108
mov     eax, [ebx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [esi+8], ax
mov     [esi+53h], ah
mov     [esi+52h], ah
call    sub_4DE043
test    eax, eax
jz      short loc_4244FA
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FDh
mov     word ptr [eax+14h], 0C8h
mov     word ptr [eax+16h], 0C8h
mov     word ptr [eax+18h], 0C8h
mov     word ptr [eax+1Ah], 700h
mov     word ptr [eax+2Ch], 0
mov     word ptr [eax+2Eh], 10h
mov     word ptr [eax+30h], 10h
mov     word ptr [eax+32h], 500h
mov     byte ptr [eax+0Bh], 3Ch ; '<'
mov     byte ptr [eax+0Ah], 0

loc_4244FA:
mov     eax, 10h
call    sub_4D9040

loc_424504:
mov     eax, edi
call    sub_42C592
mov     bx, [esi+50h]
add     ebx, eax
mov     ax, [edi+16h]
sub     ebx, eax
mov     [edi+4Eh], bx
mov     eax, [esi+2]
sar     eax, 10h
mov     ebx, dword ptr ds:unk_564C32[eax*2]
sar     ebx, 10h
shl     ebx, 4
sar     ebx, 0Ch
mov     eax, [edi+4Ch]
sar     eax, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, edi
call    sub_4DD43B
cmp     word ptr [esi+4], 3Fh ; '?'
jnz     loc_422FCE
test    byte ptr [esi], 80h
jz      short loc_42455B
mov     eax, [esi+68h]
mov     byte ptr [eax+0Eh], 1

loc_42455B:
test    byte ptr [esi+1], 1
jz      short loc_424568
mov     eax, [esi+6Ch]
mov     byte ptr [eax+0Eh], 1

loc_424568:
and     word ptr [esi], 0FE7Fh
mov     eax, edi
call    sub_4DE336
mov     eax, [esi+58h]
call    sub_4DE371
mov     eax, [esi+5Ch]
call    sub_4DE371
mov     eax, [esi+60h]
call    sub_4DE371
mov     eax, [esi+64h]
call    sub_4DE371
mov     eax, 58h ; 'X'
call    sub_47E8B8
jmp     loc_422FCE
sub_424455 endp




sub_4245A3 proc near
push    ecx
push    edx
call    sub_4DDFD0
mov     ecx, eax
test    eax, eax
jz      short loc_4245F2
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 13h
mov     byte ptr [eax+4], 2
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Fh], 1
mov     dword ptr [eax+1Ch], 0
mov     dword ptr [eax+20h], 0FF3F0000h
mov     dword ptr [eax+24h], 8FC0000h
mov     word ptr [eax+56h], 0
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
or      byte ptr [ecx+6], 20h
xor     eax, eax
pop     edx
pop     ecx
retn

loc_4245F2:
mov     eax, 1
pop     edx
pop     ecx
retn
sub_4245A3 endp




sub_4245FA proc near
push    ebx
push    ecx
push    esi
mov     ecx, edx
lea     esi, [eax+550h]
call    sub_4DE043
mov     edx, eax
mov     eax, ecx
shl     eax, 2
add     eax, esi
mov     [eax+68h], edx
test    edx, edx
jz      short loc_42466A
mov     byte ptr [edx], 1
mov     edx, [eax+68h]
mov     byte ptr [edx+2], 30h ; '0'
mov     edx, [eax+68h]
mov     byte ptr [edx+4], 0
mov     edx, [eax+68h]
mov     byte ptr [edx+3], 0
mov     ebx, ecx
mov     edx, ebx
shl     edx, 3
add     edx, ebx
shl     edx, 3
sub     edx, ebx
shl     edx, 2
mov     ebx, [esi+60h]
add     ebx, edx
mov     edx, [eax+68h]
mov     bl, [ebx+1]
mov     [edx+0Ch], bl
mov     edx, [eax+68h]
mov     [edx+0Dh], cl
mov     edx, [eax+68h]
mov     byte ptr [edx+0Eh], 0
mov     eax, [eax+68h]
mov     byte ptr [eax+0Fh], 0
mov     edx, 1

loc_42466A:
mov     eax, edx
pop     esi
pop     ecx
pop     ebx
retn
sub_4245FA endp




sub_424670 proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_36= dword ptr -36h
var_32= dword ptr -32h
var_2E= dword ptr -2Eh
var_28= word ptr -28h
var_24= dword ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch
var_18= byte ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 2Ch
mov     [esp+40h+var_20], dl
lea     esi, [eax+550h]
xor     ah, ah
mov     [esp+40h+var_1C], ah
jmp     loc_424790

loc_42468D:
mov     bl, 80h

loc_42468F:
mov     bh, bl
mov     [esp+40h+var_18], bl
xor     eax, eax
mov     al, [esp+40h+var_20]
mov     edx, eax
shl     edx, 3
add     edx, eax
shl     edx, 3
sub     edx, eax
mov     eax, [esi+60h]
mov     eax, [eax+edx*4+12h]
sar     eax, 10h
mov     [esp+40h+var_3C], eax
mov     edi, [esp+40h+var_36]
sar     edi, 10h
mov     eax, edi
call    sub_4EF008
mov     ebp, [esp+40h+var_2E]
sar     ebp, 10h
mov     [esp+40h+var_40], ebp
imul    eax, ebp
sar     eax, 0Ch
mov     ebp, [esp+40h+var_3C]
add     ebp, eax
mov     [esp+8], ebp
mov     eax, [esi+60h]
mov     eax, [eax+edx*4+16h]
sar     eax, 10h
mov     [esp+40h+var_3C], eax
mov     eax, edi
call    sub_4EF003
imul    eax, [esp+40h+var_40]
sar     eax, 0Ch
add     eax, [esp+40h+var_3C]
mov     edi, [esi+60h]
mov     dx, [edi+edx*4+16h]
mov     edi, [esp+40h+var_24]
add     edx, edi
mov     [esp+40h+var_28], dx
xor     edx, edx
mov     dl, [esp+40h+var_18]
mov     edi, edx
shl     edi, 10h
or      edi, 2E000000h
xor     edx, edx
mov     dl, bh
shl     edx, 8
or      edi, edx
xor     edx, edx
mov     dl, bl
or      edi, edx
mov     [ecx+4], edi
mov     ebx, [esp+16h]
sar     ebx, 10h
shl     ebx, 10h
mov     edx, [esp+40h+var_3C+2]
sar     edx, 10h
add     ebx, edx
mov     [ecx+8], ebx
cwde
mov     [ecx+10h], eax
mov     dword ptr [ecx+0Ch], 3D482040h
mov     dword ptr [ecx+14h], 2E205Fh
mov     dword ptr [ecx+1Ch], 3F40h
mov     dword ptr [ecx+24h], 3F5Fh
mov     eax, [esp+40h+var_32]
sar     eax, 10h
add     eax, 8
mov     [ecx+18h], eax
mov     dword ptr [ecx+20h], 0

loc_42477D:
mov     dh, [esp+40h+var_1C]
inc     dh
mov     [esp+40h+var_1C], dh
cmp     dh, 18h
jnb     loc_42485C

loc_424790:
xor     edx, edx
mov     dl, [esp+40h+var_20]
add     edx, esi
movsx   ax, byte ptr [edx+72h]
mov     word ptr [esp+40h+var_32+2], ax
xor     ebx, ebx
mov     bl, [esp+40h+var_1C]
shl     ebx, 3
mov     eax, ds:dword_510C56[ebx]
sar     eax, 10h
mov     ecx, [edx+6Fh]
sar     ecx, 18h
cmp     eax, ecx
jge     short loc_42477D
mov     ecx, [esp+40h+var_32]
sar     ecx, 10h
add     eax, 10h
cmp     ecx, eax
jge     short loc_42477D
call    sub_4EE133
mov     ecx, eax
movsx   ax, byte ptr [edx+72h]
mov     dx, word ptr ds:(dword_510C56+2)[ebx]
sub     eax, edx
mov     word ptr [esp+40h+var_32+2], ax
imul    eax, 18h
add     ax, word ptr ds:dword_510C5C[ebx]
and     ah, 0Fh
mov     word ptr [esp+40h+var_36+2], ax
mov     edi, ds:dword_510C5C[ebx]
sar     edi, 10h
mov     eax, edi
mov     edx, edi
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     ebp, [esp+40h+var_32]
sar     ebp, 10h
imul    eax, ebp
sub     edi, eax
mov     [esp+40h+var_24], edi
mov     ebx, ds:(dword_510C56+2)[ebx]
sar     ebx, 10h
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
imul    eax, ebp
sub     ebx, eax
mov     word ptr [esp+40h+var_2E+2], bx
cmp     word ptr [esp+40h+var_32+2], 10h
jge     loc_42468D
mov     bl, byte ptr [esp+40h+var_32+2]
inc     bl
shl     bl, 3
jmp     loc_42468F

loc_42485C:
add     esp, 2Ch
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_424670 endp




sub_424865 proc near

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
lea     ecx, [eax+550h]
mov     ah, [ecx]
test    ah, 40h
jnz     short loc_42488A
mov     bl, ah
or      bl, 40h
mov     [ecx], bl
mov     ebp, offset unk_510D18
jmp     short loc_4248BF

loc_42488A:
mov     edx, [esp+20h+var_20]
mov     edx, [edx+0AEh]
sar     edx, 10h
sar     edx, 1
mov     esi, [esp+20h+var_20]
mov     esi, [esi+6Ch]
sar     esi, 10h
cmp     esi, edx
jl      short loc_4248B3
mov     ebp, offset unk_510D1D
mov     dh, ah
and     dh, 0BFh
mov     [ecx], dh
jmp     short loc_4248BF

loc_4248B3:
mov     ebp, offset unk_510D22
mov     dl, ah
and     dl, 0BFh
mov     [ecx], dl

loc_4248BF:
xor     edi, edi
xor     ebx, ebx
jmp     short loc_4248DE

loc_4248C5:
movsx   esi, bx
lea     edx, [esi+ebp]
xor     eax, eax
mov     al, [edx]
add     edi, eax
mov     ds:byte_510D27[esi], al

loc_4248D7:
inc     ebx
cmp     bx, 5
jge     short loc_4248FC

loc_4248DE:
movsx   edx, bx
mov     al, [ecx+7Ch]
cmp     al, ds:byte_510D2C[edx]
jnz     short loc_4248C5
cmp     byte ptr [ecx+7Dh], 2
jb      short loc_4248C5
xor     ah, ah
mov     ds:byte_510D27[edx], ah
jmp     short loc_4248D7

loc_4248FC:
xor     esi, esi
xor     ebx, ebx
jmp     short loc_424909

loc_424902:
inc     ebx
cmp     bx, 5
jge     short loc_424930

loc_424909:
movsx   edx, bx
mov     dl, [edx+ebp]
xor     dh, dh
add     esi, edx
xor     edx, edx
mov     dx, [ecx+2]
movsx   eax, di
mov     [esp+20h+var_1C], eax
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+20h+var_1C]
movsx   eax, si
cmp     edx, eax
jge     short loc_424902

loc_424930:
movsx   edx, bx
mov     al, ds:byte_510D2C[edx]
mov     edx, [esp+20h+var_20]
mov     [edx+9], al
mov     word ptr [edx+0Ah], 0
cmp     byte ptr [edx+9], 5
jnz     short loc_424951
mov     word ptr [ecx+70h], 1

loc_424951:
mov     al, [ecx+7Ch]
mov     edx, [esp+20h+var_20]
cmp     al, [edx+9]
jnz     short loc_424961
inc     byte ptr [ecx+7Dh]
jmp     short loc_424965

loc_424961:
mov     byte ptr [ecx+7Dh], 0

loc_424965:
mov     eax, [esp+20h+var_20]
mov     al, [eax+9]
mov     [ecx+7Ch], al
mov     eax, 1
add     esp, 8
jmp     def_423012      ; jumptable 00423012 default case
sub_424865 endp




sub_42497B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     ecx, [eax+550h]
mov     esi, [ecx+18h]
and     esi, 0FFFFFFh
jz      loc_424B7B
test    byte ptr [ecx+1Bh], 38h
jz      loc_424B6E
mov     ax, [ebx+6Eh]
mov     [ebx+0B2h], ax
mov     edx, eax
sub     edx, esi
mov     [ebx+6Eh], dx
test    dx, dx
jg      short loc_4249F3
call    sub_4B55BB
test    eax, eax
jz      short loc_4249ED
mov     word ptr [ebx+0B2h], 0
mov     ax, [ebx+0B2h]
mov     [ebx+6Eh], ax
and     byte ptr [ecx], 0F3h
xor     eax, eax
mov     al, [ebx+2]
mov     edx, ds:dword_55A108
mov     esi, [edx+eax*4]
movzx   esi, byte ptr [esi+9]
jmp     short loc_4249F3

loc_4249ED:
mov     word ptr [ebx+6Eh], 1

loc_4249F3:
cmp     word ptr [ecx+7Ah], 0
jge     short loc_424A24
mov     eax, [ecx+74h]
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, [eax]
jge     short loc_424A24
mov     word ptr [ecx+7Ah], 0
mov     word ptr [ecx+78h], 3Ch ; '<'
add     dword ptr [ecx+74h], 4
lea     edx, [ebx+14h]
mov     eax, 1E1h
call    sub_4D8BC3

loc_424A24:
cmp     word ptr [ecx+7Ah], 3
jge     loc_424B02
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     edi, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     edx, eax
shl     eax, 3
sub     eax, edx
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jge     short loc_424A78
test    byte ptr [ecx+1], 8
jnz     short loc_424A78
mov     word ptr [ecx+7Ah], 3
mov     word ptr [ecx+78h], 3Ch ; '<'
or      byte ptr [ecx+1], 8
lea     edx, [ebx+14h]
mov     eax, 1E5h
jmp     loc_424AFD

loc_424A78:
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     edi, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     edx, eax
shl     eax, 2
add     eax, edx
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jge     short loc_424ABE
test    byte ptr [ecx+1], 10h
jnz     short loc_424ABE
mov     word ptr [ecx+7Ah], 3
mov     word ptr [ecx+78h], 3Ch ; '<'
or      byte ptr [ecx+1], 10h
lea     edx, [ebx+14h]
mov     eax, 1E6h
jmp     short loc_424AFD

loc_424ABE:
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     edi, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    edi
add     eax, eax
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jge     short loc_424B02
test    byte ptr [ecx+1], 20h
jnz     short loc_424B02
mov     word ptr [ecx+7Ah], 3
mov     word ptr [ecx+78h], 3Ch ; '<'
or      byte ptr [ecx+1], 20h
lea     edx, [ebx+14h]
mov     eax, 1E7h

loc_424AFD:
call    sub_4D8BC3

loc_424B02:
test    byte ptr [ecx], 8
jz      short loc_424B47
add     [ecx+0Ah], si
test    byte ptr [ecx+1Bh], 20h
jnz     short loc_424B32
xor     eax, eax
mov     al, [ebx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
xor     edx, edx
mov     dl, [eax+9]
mov     eax, [ecx+8]
sar     eax, 10h
cmp     eax, edx
jl      short loc_424B54

loc_424B32:
lea     edx, [ebx+14h]
mov     eax, 0A2h
call    sub_4D8BC3
mov     word ptr [ecx+0Ah], 0
jmp     short loc_424B54

loc_424B47:
lea     edx, [ebx+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_424B54:
xor     ecx, ecx

loc_424B56:
mov     eax, ecx
mov     word ptr [ebx+eax*8+196h], 7FFFh
inc     ecx
cmp     ecx, 10h
jl      short loc_424B56
or      byte ptr [ebx+0Fh], 2
jmp     short loc_424B7B

loc_424B6E:
lea     edx, [ebx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_424B7B:
mov     eax, 1
jmp     def_4235B5      ; jumptable 004235B5 default case
sub_42497B endp         ; jumptable 004240AD default case




sub_424B85 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+4C0h]
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
mov     word ptr [eax+15Eh], 4210h
call    rand_
mov     [ecx+52h], ax
xor     ecx, ecx
mov     cl, [edx+8]
mov     eax, edx
call    ds:funcs_424BBC[ecx*4]
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_424B85 endp




sub_424BC8 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 4C0h
mov     [esp+1Ch+var_1C], eax
or      byte ptr [ebp+0], 2
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+0ACh], 0
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
mov     word ptr [ebp+15Eh], 4210h
mov     dword ptr [ebp+78h], 0
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
xor     edx, edx
mov     dl, [eax+8]
shl     edx, 6
mov     eax, ds:dword_55A10C
mov     eax, [eax+120h]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 7
add     edx, eax
mov     [ebp+6Eh], dx
mov     [ebp+0B0h], dx
mov     [ebp+0B2h], dx
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
mov     [ebp+73h], al
or      byte ptr [ebp+0Ch], 2
mov     byte ptr [ebp+0Dh], 0FFh
mov     byte ptr [ebp+0Eh], 0FFh
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 3Ch ; '<'
mov     byte ptr [eax+5Ah], 0FFh
mov     byte ptr [eax+5Bh], 0
mov     word ptr [eax+42h], 0
mov     byte ptr [eax+5Ch], 7
mov     byte ptr [eax+58h], 0
mov     word ptr [ebp+44h], 0Ch
mov     word ptr [eax+4Ah], 0A00h
mov     byte ptr [eax+58h], 0
mov     word ptr [ebp+64h], 0
call    sub_4DDF54
test    eax, eax
jz      short loc_424D37
mov     dl, [eax+1]
mov     ecx, [esp+1Ch+var_1C]
mov     [ecx+59h], dl
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 59h ; 'Y'
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+5], 0
mov     dx, [ebp+56h]
mov     [eax+56h], dx
mov     dl, [ebp+1]
mov     [eax+0Ch], dl
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
lea     edi, [eax+14h]
lea     esi, [ebp+14h]
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

loc_424D37:
push    2C580048h
mov     ecx, 51h ; 'Q'
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_436785
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+18h], 0
mov     dword ptr [eax+20h], 0
mov     dword ptr [eax+28h], 0
mov     dword ptr [eax+30h], 0

loc_424D6B:
add     esp, 4

loc_424D6E:
pop     ebp

def_426449:             ; jumptable 00426449 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_424BC8 endp




sub_424D75 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+4C0h]
add     eax, 14h
mov     edx, [esp+1Ch+var_1C]
mov     bl, [edx+0Ch]
test    bl, 2
jnz     loc_424E6B
mov     dx, [ebp+20h]
test    dx, dx
jz      loc_424E2B
mov     ebx, [esp+1Ch+var_1C]
mov     bx, [ebx+6Eh]
mov     esi, [esp+1Ch+var_1C]
mov     [esi+0B2h], bx
mov     cx, [esi+6Eh]
sub     ecx, edx
mov     [esi+6Eh], cx
test    cx, cx
jge     short loc_424DD1
mov     byte ptr [ebp+5Bh], 2
mov     byte ptr [esi+0Ah], 0
mov     word ptr [ebp+4Ch], 3Ch ; '<'
jmp     short loc_424E1A

loc_424DD1:
mov     di, [ebp+54h]
add     edi, edx
mov     [ebp+54h], di
xor     edx, edx
mov     dl, [esi+2]
mov     ebx, ds:dword_55A108
mov     edx, [ebx+edx*4]
mov     dl, [edx+9]
and     edx, 0FFh
xor     ebx, ebx
mov     bx, di
cmp     ebx, edx
jl      short loc_424E0E
mov     word ptr [ebp+54h], 0
or      byte ptr [esi+0Ch], 40h
mov     edx, eax
mov     eax, 0A2h
jmp     short loc_424E15

loc_424E0E:
mov     edx, eax
mov     eax, 0A0h

loc_424E15:
call    sub_4D8BC3

loc_424E1A:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+15Eh], 7FFFh
jmp     loc_424EE4

loc_424E2B:
test    dword ptr [ebp+18h], 0FFFFFFh
jz      short loc_424E40
mov     edx, eax
mov     eax, 0A3h
call    sub_4D8BC3

loc_424E40:
test    dword ptr [ebp+28h], 0FFFFFFh
jz      short loc_424E59
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 0A3h
call    sub_4D8BC3

loc_424E59:
test    dword ptr [ebp+30h], 0FFFFFFh
jz      loc_424EE4
jmp     loc_424ED4

loc_424E6B:
cmp     byte ptr [edx+0Fh], 0
jz      short loc_424E7F
mov     word ptr [edx+15Eh], 7FFFh
dec     byte ptr [edx+0Fh]
jmp     short loc_424EE4

loc_424E7F:
test    bl, 2
jz      short loc_424E99
test    dword ptr [ebp+20h], 0FFFFFFh
jz      short loc_424E99
mov     edx, eax
mov     eax, 0A3h
call    sub_4D8BC3

loc_424E99:
test    dword ptr [ebp+18h], 0FFFFFFh
jz      short loc_424EB2
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 0A3h
call    sub_4D8BC3

loc_424EB2:
test    dword ptr [ebp+28h], 0FFFFFFh
jz      short loc_424ECB
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 0A3h
call    sub_4D8BC3

loc_424ECB:
test    dword ptr [ebp+30h], 0FFFFFFh
jz      short loc_424EE4

loc_424ED4:
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 0A3h
call    sub_4D8BC3

loc_424EE4:
cmp     byte ptr [ebp+5Bh], 2
jz      short loc_424EF7
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+0Ch], 40h
jz      short loc_424EF7
mov     byte ptr [ebp+5Bh], 1

loc_424EF7:
xor     edx, edx
mov     dl, [ebp+5Bh]
mov     eax, [esp+1Ch+var_1C]
call    ds:funcs_424EFF[edx*4]
cmp     byte ptr [ebp+5Bh], 2
jz      loc_425201
xor     eax, eax
mov     al, [ebp+59h]
call    sub_4E1877
lea     edi, [eax+54h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+54h]
movsd
movsd
lea     edi, [eax+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+190h]
mov     [ebp+10h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+192h]
add     eax, 28h ; '('
mov     [ebp+12h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+194h]
mov     [ebp+14h], ax
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+0], eax
mov     eax, [ebp+10h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4], eax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+8], eax
push    0
push    0
mov     eax, [esp+24h+var_1C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     esi, [ebp+10h]
mov     ecx, 0FFFFFCE0h
mov     edx, ebp
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+24h+var_1C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [ebp+18h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0C8h
mov     eax, esi
call    sub_4E01FC
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F0h]
mov     [ebp+10h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F2h]
add     eax, 78h ; 'x'
mov     [ebp+12h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F4h]
mov     [ebp+14h], ax
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+0], eax
mov     eax, [ebp+10h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4], eax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+8], eax
push    820h
push    0
mov     eax, [esp+24h+var_1C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0FFFFF4C0h
mov     edx, ebp
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+24h+var_1C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [ebp+28h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 46h ; 'F'
mov     eax, esi
call    sub_4E01FC
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F0h]
mov     [ebp+10h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F2h]
add     eax, 78h ; 'x'
mov     [ebp+12h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F4h]
mov     [ebp+14h], ax
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+0], eax
mov     eax, [ebp+10h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4], eax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+8], eax
push    0FFFFF7E0h
push    0
mov     eax, [esp+24h+var_1C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0FFFFF4C0h
mov     edx, ebp
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+24h+var_1C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [ebp+30h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 46h ; 'F'
mov     eax, esi
call    sub_4E01FC
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F0h]
mov     [ebp+10h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F2h]
add     eax, 78h ; 'x'
mov     [ebp+12h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F4h]
mov     [ebp+14h], ax
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+0], eax
mov     eax, [ebp+10h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4], eax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+8], eax
push    0
push    0
mov     eax, [esp+24h+var_1C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0FFFFF4C0h
mov     edx, ebp
mov     eax, esi
call    sub_4DD4C5
push    0
push    0
mov     eax, [esp+24h+var_1C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [ebp+20h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 46h ; 'F'
mov     eax, esi
call    sub_4E01FC
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+0Ch], 1
jnz     short loc_425201
test    byte ptr [eax+0A6h], 2
jz      short loc_425201
lea     edx, [eax+14h]
mov     eax, 1C3h
call    sub_4D8BC3

loc_425201:
mov     eax, [esp+1Ch+var_1C]
call    sub_4DEADD
mov     dword ptr [ebp+18h], 0
mov     dword ptr [ebp+20h], 0
mov     dword ptr [ebp+28h], 0
mov     dword ptr [ebp+30h], 0
jmp     loc_424D6B
sub_424D75 endp



; Attributes: thunk

sub_42522A proc near
jmp     sub_4DE336
sub_42522A endp




sub_42522F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+4C0h]
xor     bl, bl
xor     dh, dh
xor     dl, dl
jmp     short loc_42524B

loc_425244:
inc     dl
cmp     dl, 10h
jge     short loc_425290

loc_42524B:
movsx   ecx, dl
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 5
cmp     ds:byte_6DD9CC[eax], 0
jz      short loc_425244
cmp     ds:byte_6DD9CE[eax], 37h ; '7'
jnz     short loc_425271
inc     bl

loc_425271:
movsx   ecx, dl
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 5
cmp     ds:byte_6DD9CE[eax], 3
jnz     short loc_425244
inc     dh
jmp     short loc_425244

loc_425290:
cmp     word ptr [edi+4Eh], 3Ch ; '<'
jnz     short loc_4252AE
or      byte ptr [esi+0Ch], 1
xor     ecx, ecx
mov     cl, [esi+0Ah]
mov     eax, esi
call    ds:funcs_4252A2[ecx*4]
jmp     def_426449      ; jumptable 00426449 default case

loc_4252AE:
xor     ecx, ecx
mov     cl, [esi+9]
mov     eax, esi
call    ds:funcs_4252B5[ecx*4]
cmp     byte ptr [esi+0Dh], 0
jge     short loc_4252C8
mov     byte ptr [edi+5Ch], 9
jmp     short loc_4252D2

loc_4252C8:
cmp     byte ptr [esi+0Eh], 0
jge     short loc_4252D2
mov     byte ptr [edi+5Ch], 8

loc_4252D2:
movsx   ecx, bl
movsx   eax, dh
add     eax, ecx
xor     ecx, ecx
mov     cl, [edi+5Ch]
cmp     eax, ecx
jge     def_426449      ; jumptable 00426449 default case
inc     word ptr [edi+4Eh]
jmp     def_426449      ; jumptable 00426449 default case
sub_42522F endp




sub_4252F0 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Bh]
call    ds:funcs_4252F6[edx*4]
pop     edx
retn
sub_4252F0 endp




sub_4252FF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edi, eax
lea     esi, [eax+4C0h]
test    byte ptr [eax+0Ch], 1
jnz     loc_424D6E
xor     eax, eax
mov     al, [esi+59h]
call    sub_4E1877
mov     ebp, eax
mov     edx, [edi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
mov     dx, [esi+4Ch]
cmp     dx, 140h
jnz     short loc_425362
mov     word ptr [esi+4Ch], 0
mov     eax, ebp
mov     byte ptr [eax+0ACh], 0
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
jmp     short loc_425377

loc_425362:
cmp     dx, 100h
jl      short loc_425377
cmp     dx, 140h
jge     short loc_425377
mov     eax, edx
inc     eax
mov     [esi+4Ch], ax

loc_425377:
cmp     word ptr [edi+64h], 0
jnz     loc_425648
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 2
jnz     short loc_425403
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     eax, ds:dword_510D7C[eax*2]
sar     eax, 10h
mov     edx, [edi+16h]
sar     edx, 10h
cmp     edx, eax
jl      loc_424D6E
test    byte ptr [esi+52h], 1
jz      short loc_4253EB
mov     byte ptr [esi+58h], 8
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]
mov     word ptr [edi+64h], 1
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 400h
mov     byte ptr [ebp+0ACh], 4
jmp     loc_4254A5

loc_4253EB:
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 0C00h
jmp     loc_42549E

loc_425403:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 0
jnz     short loc_425451
xor     ebx, ebx
mov     bl, dl
mov     eax, ebx
shl     eax, 2
add     eax, ebx
mov     edx, ds:(off_510D78+2)[eax*2]
sar     edx, 10h
mov     eax, [edi+12h]
sar     eax, 10h
cmp     eax, edx
jl      loc_424D6E
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 0
jmp     short loc_42549E

loc_425451:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 3
jnz     short loc_4254B4
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     edx, ds:dword_510D7C[eax*2]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
cmp     eax, edx
jg      loc_424D6E
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]

loc_425495:
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 400h

loc_42549E:
mov     byte ptr [ebp+0ACh], 1

loc_4254A5:
xor     ebx, ebx
xor     edx, edx
mov     dl, [ebp+0ACh]
jmp     loc_425847

loc_4254B4:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     ch, ds:byte_510D84[eax*2]
cmp     ch, 1
jnz     short loc_42551E
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     eax, ds:(off_510D78+2)[eax*2]
sar     eax, 10h
mov     edx, [edi+12h]
sar     edx, 10h
cmp     edx, eax
jg      short loc_42551E
test    [esi+52h], ch
jz      short loc_4254FA
mov     byte ptr [esi+58h], 0Dh
jmp     loc_424D6E

loc_4254FA:
mov     eax, edi
call    sub_42654C
add     [esi+58h], ch
add     [edi+9], ch
mov     word ptr [esi+48h], 800h
mov     [ebp+0ACh], ch
xor     ebx, ebx
xor     edx, edx
mov     dl, ch
jmp     loc_425847

loc_42551E:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
mov     dl, ds:byte_510D84[eax]
cmp     dl, 7
jnz     short loc_425563
mov     eax, ds:(off_510D78+2)[eax]
sar     eax, 10h
mov     edx, [edi+12h]
sar     edx, 10h
cmp     edx, eax
jg      loc_424D6E
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 800h
jmp     short loc_425592

loc_425563:
cmp     dl, 4
jnz     short loc_4255A8
mov     edx, ds:dword_510D7C[eax]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
cmp     eax, edx
jl      loc_424D6E
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]

loc_425589:
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 0C00h

loc_425592:
mov     byte ptr [ebp+0ACh], 1

loc_425599:
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
jmp     loc_425847

loc_4255A8:
cmp     dl, 6
jnz     short loc_4255E8
mov     eax, ds:(off_510D78+2)[eax]
sar     eax, 10h
mov     edx, [edi+12h]
sar     edx, 10h
cmp     edx, eax
jl      loc_424D6E
test    byte ptr [esi+52h], 1
jz      short loc_4255DF
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 0
jmp     short loc_425592

loc_4255DF:
mov     byte ptr [esi+58h], 2
jmp     loc_424D6E

loc_4255E8:
cmp     dl, 5
jnz     loc_424D6E
mov     eax, ds:dword_510D7C[eax]
sar     eax, 10h
mov     edx, [edi+16h]
sar     edx, 10h
cmp     edx, eax
jg      loc_424D6E
test    byte ptr [esi+52h], 1
jz      short loc_425630
mov     byte ptr [esi+58h], 7
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]
mov     word ptr [edi+64h], 1

loc_425622:
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 0C00h
jmp     loc_4256DB

loc_425630:
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 400h
jmp     loc_425592

loc_425648:
mov     word ptr [esi+46h], 0FFF1h
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
mov     dl, ds:byte_510D84[eax]
cmp     dl, 1
jnz     short loc_4256AC
mov     eax, ds:dword_510D7C[eax]
sar     eax, 10h
mov     edx, [edi+16h]
sar     edx, 10h
cmp     edx, eax
jg      loc_424D6E
test    byte ptr [esi+52h], 1
jz      short loc_42569D
mov     byte ptr [esi+58h], 0Fh
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]
mov     word ptr [edi+64h], 0
jmp     loc_425495

loc_42569D:
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]
jmp     loc_425622

loc_4256AC:
cmp     dl, 3
jnz     short loc_4256E7
mov     edx, ds:(off_510D78+2)[eax]
sar     edx, 10h
mov     eax, [edi+12h]
sar     eax, 10h
cmp     eax, edx
jl      loc_424D6E
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]

loc_4256D2:
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 800h

loc_4256DB:
mov     byte ptr [ebp+0ACh], 4
jmp     loc_425599

loc_4256E7:
test    dl, dl
jnz     short loc_425717
mov     eax, ds:dword_510D7C[eax]
sar     eax, 10h
mov     edx, [edi+16h]
sar     edx, 10h
cmp     edx, eax
jl      loc_424D6E
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 400h
jmp     short loc_4256DB

loc_425717:
cmp     dl, 2
jnz     short loc_425757
mov     eax, ds:(off_510D78+2)[eax]
sar     eax, 10h
mov     edx, [edi+12h]
sar     edx, 10h
cmp     edx, eax
jg      loc_424D6E
test    byte ptr [esi+52h], 1
jz      short loc_42574E
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]

loc_425743:
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 0
jmp     short loc_4256DB

loc_42574E:
mov     byte ptr [esi+58h], 0Ah
jmp     loc_424D6E

loc_425757:
cmp     dl, 4
jnz     short loc_42577F
mov     edx, ds:(off_510D78+2)[eax]
sar     edx, 10h
mov     eax, [edi+12h]
sar     eax, 10h
cmp     eax, edx
jg      loc_424D6E
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]
jmp     short loc_425743

loc_42577F:
cmp     dl, 7
jnz     short loc_4257AA
mov     eax, ds:dword_510D7C[eax]
sar     eax, 10h
mov     edx, [edi+16h]
sar     edx, 10h
cmp     edx, eax
jg      loc_424D6E
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]
jmp     loc_425622

loc_4257AA:
cmp     dl, 5
jnz     short loc_4257E4
mov     eax, ds:(off_510D78+2)[eax]
sar     eax, 10h
mov     edx, [edi+12h]
sar     edx, 10h
cmp     edx, eax
jl      loc_424D6E
test    byte ptr [esi+52h], 1
jz      short loc_4257DB
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]
jmp     loc_4256D2

loc_4257DB:
mov     byte ptr [esi+58h], 5
jmp     loc_424D6E

loc_4257E4:
cmp     dl, 6
jnz     loc_424D6E
mov     eax, ds:dword_510D7C[eax]
sar     eax, 10h
mov     edx, [edi+16h]
sar     edx, 10h
cmp     edx, eax
jl      loc_424D6E
test    byte ptr [esi+52h], 1
jz      short loc_425823
mov     byte ptr [esi+58h], 0
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]
mov     word ptr [edi+64h], 0
jmp     loc_425589

loc_425823:
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 400h
mov     byte ptr [ebp+0ACh], 4
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx

loc_425847:
mov     eax, ebp
call    sub_4DE96B
jmp     loc_424D6E
sub_4252FF endp




sub_425853 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+4C0h]
test    byte ptr [eax+0Ch], 1
jnz     def_426449      ; jumptable 00426449 default case
xor     eax, eax
mov     al, [esi+59h]
call    sub_4E1877
cmp     word ptr [ecx+64h], 0
jnz     short loc_425883
mov     word ptr [esi+46h], 4
jmp     short loc_425889

loc_425883:
mov     word ptr [esi+46h], 0FFFCh

loc_425889:
mov     dx, [esi+48h]
add     dx, [esi+46h]
and     dh, 0Fh
mov     [esi+48h], dx
mov     di, [esi+4Ch]
inc     edi
mov     [esi+4Ch], di
cmp     di, 40h ; '@'
jnz     short loc_4258C0
cmp     word ptr [ecx+64h], 0
jnz     short loc_4258B7
mov     byte ptr [eax+0ACh], 2
jmp     short loc_4258DE

loc_4258B7:
mov     byte ptr [eax+0ACh], 5
jmp     short loc_4258DE

loc_4258C0:
cmp     di, 100h
jnz     short loc_4258ED
cmp     word ptr [ecx+64h], 0
jnz     short loc_4258D7
mov     byte ptr [eax+0ACh], 3
jmp     short loc_4258DE

loc_4258D7:
mov     byte ptr [eax+0ACh], 6

loc_4258DE:
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B

loc_4258ED:
cmp     word ptr [ecx+64h], 0
jnz     loc_425AA3
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 2
jnz     short loc_42593A
cmp     word ptr [esi+48h], 0C00h
jl      short loc_425922

loc_425916:
mov     eax, ecx
call    sub_4265E1
jmp     def_426449      ; jumptable 00426449 default case

loc_425922:
mov     eax, ecx
call    sub_42666B
inc     byte ptr [esi+58h]

loc_42592C:
dec     byte ptr [ecx+9]

loc_42592F:
mov     word ptr [ecx+56h], 0C00h
jmp     def_426449      ; jumptable 00426449 default case

loc_42593A:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 0
jnz     short loc_425970
cmp     word ptr [esi+48h], 400h
jl      short loc_425916

loc_425958:
mov     eax, ecx
call    sub_42666B
inc     byte ptr [esi+58h]

loc_425962:
dec     byte ptr [ecx+9]
mov     word ptr [ecx+56h], 0
jmp     def_426449      ; jumptable 00426449 default case

loc_425970:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 3
jnz     short loc_42599D
cmp     word ptr [esi+48h], 800h
jl      short loc_425916
mov     eax, ecx
call    sub_42666B
inc     byte ptr [esi+58h]
jmp     loc_425B89

loc_42599D:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     bh, ds:byte_510D84[eax*2]
cmp     bh, 1
jnz     short loc_4259D1
cmp     word ptr [esi+48h], 0C00h
jle     loc_425916
mov     eax, ecx
call    sub_42666B
mov     byte ptr [esi+58h], 0
sub     [ecx+9], bh
jmp     short loc_425A00

loc_4259D1:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 7
jnz     short loc_425A0B
cmp     word ptr [esi+48h], 0C00h
jle     loc_425916

loc_4259F3:
mov     eax, ecx
call    sub_42666B
dec     byte ptr [esi+58h]

loc_4259FD:
dec     byte ptr [ecx+9]

loc_425A00:
mov     word ptr [ecx+56h], 800h
jmp     def_426449      ; jumptable 00426449 default case

loc_425A0B:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 4
jnz     short loc_425A3C
cmp     word ptr [esi+48h], 0C00h
jge     loc_425916
mov     eax, ecx
call    sub_42666B
dec     byte ptr [esi+58h]
jmp     loc_42592C

loc_425A3C:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 6
jnz     short loc_425A6E
cmp     word ptr [esi+48h], 400h
jle     loc_425916
mov     eax, ecx
call    sub_42666B
mov     byte ptr [esi+58h], 0Fh
jmp     loc_425962

loc_425A6E:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 5
jnz     def_426449      ; jumptable 00426449 default case
cmp     word ptr [esi+48h], 800h

loc_425A8E:
jle     loc_425916
mov     eax, ecx
call    sub_42666B
dec     byte ptr [esi+58h]
jmp     loc_425B89

loc_425AA3:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
mov     dl, ds:byte_510D84[eax]
cmp     dl, 1
jnz     short loc_425ADA
cmp     word ptr [esi+48h], 800h
jge     loc_425916
mov     eax, ecx
call    sub_42666B
sub     [esi+58h], dl
sub     [ecx+9], dl
jmp     loc_42592F

loc_425ADA:
cmp     dl, 3
jnz     short loc_425AF0
cmp     word ptr [esi+48h], 400h
jge     loc_425916
jmp     loc_4259F3

loc_425AF0:
test    dl, dl
jnz     short loc_425AFC
cmp     word ptr [esi+48h], 400h
jmp     short loc_425A8E

loc_425AFC:
cmp     dl, 2
jnz     short loc_425B1D
cmp     word ptr [esi+48h], 0C00h
jge     loc_425916
mov     eax, ecx
call    sub_42666B
mov     byte ptr [esi+58h], 7
jmp     loc_425962

loc_425B1D:
cmp     dl, 4
jnz     short loc_425B33
cmp     word ptr [esi+48h], 0C00h
jge     loc_425916
jmp     loc_425958

loc_425B33:
cmp     dl, 7
jnz     short loc_425B49
cmp     word ptr [esi+48h], 800h
jge     loc_425916
jmp     loc_425922

loc_425B49:
cmp     dl, 5
jnz     short loc_425B6A
cmp     word ptr [esi+48h], 400h
jge     loc_425916
mov     eax, ecx
call    sub_42666B
mov     byte ptr [esi+58h], 8
jmp     loc_4259FD

loc_425B6A:
cmp     dl, 6
jnz     def_426449      ; jumptable 00426449 default case
cmp     word ptr [esi+48h], 400h
jle     loc_425916
mov     eax, ecx
call    sub_42666B
inc     byte ptr [esi+58h]

loc_425B89:
dec     byte ptr [ecx+9]
mov     word ptr [ecx+56h], 400h
jmp     def_426449      ; jumptable 00426449 default case
sub_425853 endp




sub_425B97 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+4C0h]
cmp     byte ptr [eax+0Dh], 0
jge     short loc_425BCD
cmp     byte ptr [ecx+0Eh], 0
jge     short loc_425BCD
mov     byte ptr [ecx+0ACh], 5
mov     byte ptr [esi+5Ah], 0FFh
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_425C24

loc_425BCD:
mov     byte ptr [ecx+0ACh], 0
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     dh, [ecx+0Eh]
test    dh, dh
jle     short loc_425C0F
mov     [esi+5Ah], dh
mov     eax, [ecx+0Bh]
sar     eax, 18h
call    sub_4E1877
or      byte ptr [eax+0Eh], 8
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E1877
or      byte ptr [eax+0Eh], 4
jmp     short loc_425C24

loc_425C0F:
mov     al, [ecx+0Dh]
mov     [esi+5Ah], al
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E1877
or      byte ptr [eax+0Eh], 8

loc_425C24:
inc     byte ptr [ecx+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_425B97 endp




sub_425C2C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+4C0h]
mov     ah, [ebx+5Ah]
cmp     ah, 0FFh
jnz     short loc_425C93
test    byte ptr [ecx+0A6h], 4
jz      short loc_425C55
lea     edx, [ecx+14h]
mov     eax, 1C4h
call    sub_4D8BC3

loc_425C55:
test    byte ptr [ecx+0A6h], 1
jz      short loc_425C62
and     byte ptr [ecx+0Ch], 0FDh

loc_425C62:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     loc_425CF5
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0ACh], 6
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
pop     edx
pop     ecx
pop     ebx
retn

loc_425C93:
cmp     ah, [ecx+0Eh]
jz      short loc_425C9D
cmp     ah, [ecx+0Dh]
jnz     short loc_425CF2

loc_425C9D:
xor     eax, eax
mov     al, [ebx+5Ah]
call    sub_4E1877
mov     ebx, eax
test    byte ptr [eax+0A6h], 4
jz      short loc_425CBF
lea     edx, [eax+14h]
mov     eax, 1C4h
call    sub_4D8BC3

loc_425CBF:
test    byte ptr [ebx+0A6h], 1
jz      short loc_425CCC
and     byte ptr [ebx+0Eh], 0FDh

loc_425CCC:
mov     eax, [ebx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_425CF5
inc     byte ptr [ecx+0Ah]
mov     dl, [ebx+0Eh]
and     dl, 0E7h
mov     [ebx+0Eh], dl
mov     dh, dl
or      dh, 10h
mov     [ebx+0Eh], dh
pop     edx
pop     ecx
pop     ebx
retn

loc_425CF2:
inc     byte ptr [ecx+0Ah]

loc_425CF5:
pop     edx
pop     ecx
pop     ebx
retn
sub_425C2C endp




sub_425CF9 proc near

var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     edx, eax
lea     esi, [eax+4C0h]
xor     ch, ch
mov     [esp+14h+var_14], ch
mov     bl, [esi+5Ah]
cmp     bl, 0FFh
jnz     short loc_425D28

loc_425D15:
mov     eax, [eax+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_425D4C
inc     byte ptr [edx+0Ah]
jmp     short loc_425D4C

loc_425D28:
cmp     bl, [eax+0Eh]
jz      short loc_425D32
cmp     bl, [edx+0Dh]
jnz     short loc_425D3E

loc_425D32:
xor     eax, eax
mov     al, [esi+5Ah]
call    sub_4E1877
jmp     short loc_425D15

loc_425D3E:
inc     byte ptr [edx+0Ah]
mov     word ptr [esi+50h], 3Ch ; '<'
jmp     loc_426006

loc_425D4C:
cmp     byte ptr [edx+0Ah], 3
jnz     loc_426000
xor     cl, cl
jmp     short loc_425D61

loc_425D5A:
inc     cl
cmp     cl, 10h
jge     short loc_425DA7

loc_425D61:
movsx   ebx, cl
mov     eax, ebx
shl     eax, 3
add     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 5
cmp     ds:byte_6DD9CC[eax], 0
jz      short loc_425D5A
cmp     ds:byte_6DD9CE[eax], 37h ; '7'
jnz     short loc_425D87
inc     ch

loc_425D87:
movsx   ebx, cl
mov     eax, ebx
shl     eax, 3
add     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 5
cmp     ds:byte_6DD9CE[eax], 3
jnz     short loc_425D5A
inc     [esp+14h+var_14]
jmp     short loc_425D5A

loc_425DA7:
mov     eax, [esp-3]
sar     eax, 18h
movsx   ebx, ch
add     eax, ebx
xor     ebx, ebx
mov     bl, [esi+5Ch]
cmp     eax, ebx
jge     loc_426000
cmp     byte ptr [esi+5Ah], 0FFh
jz      short loc_425DD0
xor     eax, eax
mov     al, [esi+5Ah]
call    sub_4E1877

loc_425DD0:
mov     bl, [esp+14h+var_14]
cmp     ch, bl
jnz     loc_425F32
test    byte ptr [esi+52h], 1
jz      loc_425E95

loc_425DE5:
call    sub_4DDF54
mov     ebx, eax
mov     ecx, eax
test    eax, eax
jz      loc_426000
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 37h ; '7'
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+5], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
cmp     byte ptr [esi+5Ah], 0FFh
jz      short loc_425E63
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
add     edx, 0C0h
mov     [ebx+16h], dx
mov     ax, [eax+1CCh]

loc_425E5A:
mov     [ebx+18h], ax
jmp     loc_425FDC

loc_425E63:
mov     ax, [edx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebx+56h], ax
mov     ax, [edx+1F0h]
mov     [ebx+14h], ax
mov     ax, [edx+1F2h]
add     eax, 0C0h

loc_425E88:
mov     [ebx+16h], ax
mov     ax, [edx+1F4h]
jmp     short loc_425E5A

