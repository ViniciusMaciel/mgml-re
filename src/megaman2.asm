lea     edi, [ebp+0Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [ebp+0Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+70h], eax
mov     eax, [ebp+0Ch]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+74h], eax
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+78h], eax
mov     eax, [esp+1Ch+var_18]
mov     edx, ds:dword_50B2AE[eax*8]
sar     edx, 10h
shl     edx, 4
push    edx
mov     edx, ds:(off_50B2AA+2)[eax*8]
sar     edx, 10h
shl     edx, 4
push    edx
mov     ecx, ds:off_50B2AA[eax*8]
sar     ecx, 10h
shl     ecx, 4
mov     edx, [esp+24h+var_1C]
mov     edx, [edx+54h]
sar     edx, 10h
xor     eax, eax
mov     ax, [ebp+42h]
lea     ebx, [eax+edx]
and     ebx, 0FFFh
lea     edx, [ebp+70h]
lea     esi, [ebp+0Ch]
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     al, [edx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Dh]
and     eax, 0FFh
or      eax, 4080000h
push    eax
mov     eax, [esp+28h+var_18]
shl     eax, 4
lea     edx, [ebp+88h]
add     eax, edx
add     eax, 8
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 40h ; '@'
mov     eax, esi
call    sub_4E01FC
test    byte ptr [ebp+1], 10h
jnz     loc_403977
cmp     [esp+1Ch+var_18], 2
jge     loc_403977
mov     al, [ebp+1]
test    al, 80h
jz      short loc_403AAA
mov     ah, al
and     ah, 7Fh
mov     [ebp+1], ah
call    sub_4DE13B
test    eax, eax
jz      short loc_403AAA
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 0
lea     edi, [eax+48h]
lea     esi, [ebp+0Ch]
movsd
movsd

loc_403AAA:
mov     eax, [esp+1Ch+var_18]
mov     esi, [ebp+eax*4+0E8h]
mov     dx, [ebp+0Ch]
mov     [esi+1Ch], dx
mov     ecx, [ebp+eax*4+0E8h]
mov     dx, [ebp+0Eh]
mov     [ecx+1Eh], dx
mov     eax, [ebp+eax*4+0E8h]
mov     dx, [ebp+10h]
mov     [eax+20h], dx
jmp     loc_403977

loc_403AE0:
test    byte ptr [ebp+0], 20h
jz      short loc_403B3D
lea     edi, [ebp+58h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1D0h]
movsd
movsd
push    80h
push    0
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     al, [edx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
and     eax, 0FFh
or      eax, 4000000h
push    eax
lea     eax, [ebp+60h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+58h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 100h
call    sub_4E01FC

loc_403B3D:
test    byte ptr [ebp+0], 40h
jz      short loc_403B9A
lea     edi, [ebp+48h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1A8h]
movsd
movsd
push    80h
push    0
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     al, [edx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
and     eax, 0FFh
or      eax, 4000000h
push    eax
lea     eax, [ebp+50h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+48h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 100h
call    sub_4E01FC

loc_403B9A:
test    byte ptr [ebp+1], 2
jnz     loc_403D2A
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_403D2A
mov     cl, [ebp+0F2h]
test    cl, 40h
jnz     short loc_403BFC
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0AEh]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
mov     edx, [ebp+0F6h]
sar     edx, 10h
cmp     eax, edx
jle     short loc_403BFC
mov     ch, cl
or      ch, 70h
mov     [ebp+0F2h], ch
mov     edx, 6
mov     eax, 4
call    sub_4A0E24

loc_403BFC:
test    byte ptr [ebp+0F2h], 20h
jnz     short loc_403C3D
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0AEh]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, [ebp+0F6h]
sar     edx, 10h
cmp     eax, edx
jle     short loc_403C3D
or      byte ptr [ebp+0F2h], 30h
mov     edx, 5
mov     eax, 4
call    sub_4A0E24

loc_403C3D:
test    byte ptr [ebp+0F2h], 10h
jnz     short loc_403C72
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0AEh]
sar     edx, 10h
mov     eax, [ebp+0F6h]
sar     eax, 10h
cmp     edx, eax
jz      short loc_403C72
or      byte ptr [ebp+0F2h], 10h
mov     edx, 4
mov     eax, edx
call    sub_4A0E24

loc_403C72:
mov     bl, [ebp+0F2h]
test    bl, 8
jnz     short loc_403CB7
mov     edx, [ebp+0F2h]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
mov     edx, [ebp+44h]
sar     edx, 10h
cmp     eax, edx
jle     short loc_403CB7
mov     bh, bl
or      bh, 0Eh
mov     [ebp+0F2h], bh
mov     edx, 3
mov     eax, 4
call    sub_4A0E24

loc_403CB7:
mov     cl, [ebp+0F2h]
test    cl, 4
jnz     short loc_403CF8
mov     edx, [ebp+0F2h]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, [ebp+44h]
sar     edx, 10h
cmp     eax, edx
jle     short loc_403CF8
mov     ch, cl
or      ch, 6
mov     [ebp+0F2h], ch
mov     edx, 2
mov     eax, 4
call    sub_4A0E24

loc_403CF8:
test    byte ptr [ebp+0F2h], 2
jnz     short loc_403D2A
mov     edx, [ebp+0F2h]
sar     edx, 10h
mov     eax, [ebp+44h]
sar     eax, 10h
cmp     edx, eax
jz      short loc_403D2A
or      byte ptr [ebp+0F2h], 2
mov     edx, 1
mov     eax, 4
call    sub_4A0E24

loc_403D2A:
add     esp, 8
jmp     loc_40427B
sub_40355E endp




sub_403D32 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebx, eax
lea     ecx, [eax+550h]
xor     edx, edx
jmp     short loc_403D4A

loc_403D44:
inc     edx
cmp     edx, 2
jge     short loc_403D61

loc_403D4A:
mov     eax, edx
shl     eax, 2
add     eax, ecx
mov     esi, [eax+0E8h]
test    esi, esi
jz      short loc_403D44
mov     byte ptr [esi+0Ah], 2
jmp     short loc_403D44

loc_403D61:
mov     edi, [ecx+80h]
test    edi, edi
jz      short loc_403D72
mov     eax, edi
call    sub_4DE371

loc_403D72:
mov     ebp, [ecx+84h]
test    ebp, ebp
jz      short loc_403D83
mov     eax, ebp
call    sub_4DE371

loc_403D83:
mov     eax, ebx
call    sub_4DE336
jmp     loc_40427B
sub_403D32 endp




sub_403D8F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edi, eax
lea     esi, [eax+550h]
mov     eax, offset byte_5F8364
mov     dl, [edi+0Ah]
test    dl, dl
jbe     short loc_403DB3
cmp     dl, 1
jz      short loc_403DC5
jmp     loc_40427B

loc_403DB3:
inc     dl
mov     [edi+0Ah], dl
mov     byte ptr [edi+0ACh], 0
mov     word ptr [esi+4], 3Ch ; '<'

loc_403DC5:
cmp     byte ptr [eax+76h], 0
jz      short loc_403DFA
mov     edx, [eax+0C0h]
cmp     edi, edx
jnz     short loc_403DFA
mov     ax, [esi+4]
dec     eax
mov     [esi+4], ax
test    ax, ax
jge     loc_40427B
mov     eax, edx
call    sub_405251
mov     [edx+0Dh], al
mov     ax, [edx+56h]
jmp     loc_403EF0

loc_403DFA:
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     short loc_403E1B
mov     eax, edi
call    sub_405251
mov     [edi+0Dh], al

loc_403E12:
mov     ax, [edi+56h]
jmp     loc_403EF0

loc_403E1B:
cmp     word ptr [esi+40h], 0
jnz     loc_40427B
mov     ebp, [edi+14h]
sar     ebp, 10h
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
sub     edx, ebp
mov     ebp, edx
test    edx, edx
jge     short loc_403E3F
neg     edx

loc_403E3F:
lea     ebp, [edi+14h]
add     eax, 14h
cmp     edx, 200h
jge     loc_403EBE
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     ecx, 80h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
mov     edx, eax
test    ax, ax
jge     short loc_403E71
cwde
neg     eax
jmp     short loc_403E72

loc_403E71:
cwde

loc_403E72:
cmp     eax, 80h
jge     short loc_403E8B
cmp     dword ptr [edi+80h], 200000h
jnb     short loc_403E8B
mov     byte ptr [edi+0Dh], 2
jmp     short loc_403E12

loc_403E8B:
test    dx, dx
jge     short loc_403E97
movsx   eax, dx
neg     eax
jmp     short loc_403E9A

loc_403E97:
movsx   eax, dx

loc_403E9A:
cmp     eax, 80h
jge     loc_40427B
cmp     dword ptr [edi+80h], 1200000h
jnb     loc_40427B
mov     byte ptr [edi+0Dh], 0Bh
jmp     loc_403E12

loc_403EBE:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     ecx, 600h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_403EDC
cwde
neg     eax
jmp     short loc_403EDD

loc_403EDC:
cwde

loc_403EDD:
cmp     eax, 600h
jge     loc_40427B
mov     byte ptr [edi+0Dh], 1
mov     ax, [edi+56h]

loc_403EF0:
add     ax, [esi+42h]
and     ah, 0Fh
mov     [esi+44h], ax
or      byte ptr [esi], 1
jmp     loc_40427B
sub_403D8F endp

db 8Bh, 0C0h
jpt_403F35 dd offset loc_403F3C ; jump table for switch statement
dd offset loc_403F4D
dd offset loc_403FAC
dd offset loc_40401C
dd offset loc_404048



sub_403F19 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
xor     edx, edx
mov     dl, al
jmp     jpt_403F35[edx*4] ; switch jump

loc_403F3C:             ; jumptable 00403F35 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 2
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_403F4D:             ; jumptable 00403F35 case 1
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 10h
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
mov     dx, [edi+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [edi+42h], ax
cmp     byte ptr [esi+0A7h], 0
jge     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 3
mov     edx, 3
mov     eax, esi
call    sub_405585
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_403FAC:             ; jumptable 00403F35 case 2
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 10h
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
mov     dx, [edi+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [edi+42h], ax
mov     edx, [edi+80h]
test    edx, edx
jnz     short loc_403FFD
add     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 4
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_403FFD:
cmp     byte ptr [edx+0Ch], 0
jz      def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 4
mov     word ptr [edi+4], 0Eh
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_40401C:             ; jumptable 00403F35 case 3
mov     dx, [edi+4]
dec     dx
mov     [edi+4], dx
jnz     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
inc     byte ptr [esi+0Ah]
mov     esi, [edi+80h]
add     byte ptr [esi+0Ch], 80h
mov     dword ptr [edi+80h], 0
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_404048:             ; jumptable 00403F35 case 4
cmp     byte ptr [esi+0A7h], 0 ; jumptable 00404FD1 case 6
jge     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
mov     word ptr [edi+40h], 78h ; 'x'
or      byte ptr [edi], 1
jmp     def_403F35      ; jumptable 00403F35 default case
sub_403F19 endp         ; jumptable 00404FD1 default case

db 8Bh, 0C0h
jpt_404123 dd offset loc_40412A ; jump table for switch statement
dd offset loc_404163
dd offset loc_404184
dd offset loc_4041E3
dd offset loc_404224
dd offset loc_404255



sub_40407D proc near

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
lea     ebp, [eax+550h]
lea     edi, [ebp+68h]
mov     esi, offset unk_50B294
movsd
movsd
lea     edi, [ebp+70h]
mov     esi, offset unk_50B29C
movsd
movsd
movsd
movsd
add     eax, 14h
mov     [esp+24h+var_20], eax
mov     edx, eax
mov     eax, offset unk_50B294
call    sub_4DDDB4
mov     edx, [esp+24h+var_24]
mov     dx, [edx+64h]
add     edx, eax
mov     [esp+24h+var_1C], edx
push    0
push    0
mov     eax, edx
and     ah, 0Fh
movsx   ebx, ax
lea     edx, [ebp+70h]
lea     eax, [ebp+68h]
mov     ecx, 5000h
call    sub_4DD4C5
mov     edi, [esp+24h+var_24]
lea     edi, [edi+14h]
lea     esi, [ebp+68h]
movsd
movsd
mov     edi, [esp+24h+var_24]
lea     edi, [edi+1Ch]
lea     esi, [ebp+70h]
movsd
movsd
movsd
movsd
mov     eax, [esp+24h+var_1C]
mov     edx, [esp+24h+var_24]
add     ax, [edx+66h]
sub     ax, [edx+56h]
and     ah, 0Fh
mov     [ebp+42h], ax
or      byte ptr [ebp+0F2h], 1
mov     al, [edx+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case
xor     edx, edx
mov     dl, al
jmp     jpt_404123[edx*4] ; switch jump

loc_40412A:             ; jumptable 00404123 case 0
inc     al
mov     edx, [esp+24h+var_24]
mov     [edx+0Ah], al
mov     byte ptr [edx+0ACh], 5
mov     dh, [ebp+0]
or      dh, 20h
mov     [ebp+0], dh
mov     bl, dh
and     bl, 0BFh
mov     [ebp+0], bl
mov     word ptr [ebp+4], 7
mov     edx, [esp+24h+var_20]
mov     eax, 0FCh
call    sub_4D8BC3
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_404163:             ; jumptable 00404123 case 1
mov     ax, [ebp+4]
dec     ax
mov     [ebp+4], ax
jnz     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Eh
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_404184:             ; jumptable 00404123 case 2
mov     si, [ebp+4]
dec     si
mov     [ebp+4], si
jnz     short loc_4041BA
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 10h
mov     al, [ebp+0]
or      al, 40h
mov     [ebp+0], al
mov     ah, al
and     ah, 0DFh
mov     [ebp+0], ah
mov     edx, [esp+24h+var_20]
mov     eax, 0FCh
call    sub_4D8BC3

loc_4041BA:
mov     eax, [esp+24h+var_24]
mov     ax, [eax+56h]
add     eax, 1Eh
and     ah, 0Fh
mov     edx, [esp+24h+var_24]
mov     [edx+56h], ax
mov     ax, [ebp+42h]
sub     eax, 1Eh

loc_4041D7:
and     ah, 0Fh
mov     [ebp+42h], ax
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_4041E3:             ; jumptable 00404123 case 3
mov     ax, [ebp+4]
dec     ax
mov     [ebp+4], ax
jnz     short loc_404205
mov     eax, [esp+24h+var_24]
sub     word ptr [eax+56h], 2
add     word ptr [ebp+42h], 2
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Ah

loc_404205:
mov     eax, [esp+24h+var_24]
mov     ax, [eax+56h]
sub     eax, 35h ; '5'
and     ah, 0Fh
mov     edx, [esp+24h+var_24]
mov     [edx+56h], ax
mov     ax, [ebp+42h]
add     eax, 35h ; '5'
jmp     short loc_4041D7

loc_404224:             ; jumptable 00404123 case 4
mov     si, [ebp+4]
dec     si
mov     [ebp+4], si
jnz     short loc_404236
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+0Ah]

loc_404236:
mov     eax, [esp+24h+var_24]
mov     ax, [eax+56h]
add     eax, 2Bh ; '+'
and     ah, 0Fh
mov     edx, [esp+24h+var_24]
mov     [edx+56h], ax
mov     ax, [ebp+42h]
sub     eax, 2Bh ; '+'
jmp     short loc_4041D7

loc_404255:             ; jumptable 00404123 case 5
mov     eax, [esp+24h+var_24]
cmp     byte ptr [eax+0A7h], 0
jge     short def_404123 ; jumptable 00404123 default case
; jumptable 004042C4 default case
mov     word ptr [ebp+40h], 5Ah ; 'Z'
mov     dh, [ebp+0]
and     dh, 9Eh
mov     [ebp+0], dh
mov     bl, dh
or      bl, 1
mov     [ebp+0], bl

def_404123:             ; jumptable 00404123 default case
add     esp, 0Ch        ; jumptable 004042C4 default case

loc_40427B:
pop     ebp

def_403F35:             ; jumptable 00403F35 default case
pop     edi             ; jumptable 00404FD1 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_40407D endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_28]
db 8Dh, 40h, 0
jpt_4042C4 dd offset loc_4042CB ; jump table for switch statement
dd offset loc_404345
dd offset loc_4043E1
dd offset loc_40440A
dd offset loc_4044C3
dd offset loc_4044F8
dd offset loc_404524



sub_4042A1 proc near

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
lea     ebp, [eax+550h]
mov     [esp+24h+var_20], offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      short def_404123 ; jumptable 00404123 default case
; jumptable 004042C4 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4042C4[edx*4] ; switch jump

loc_4042CB:             ; jumptable 004042C4 case 0
inc     al
mov     edx, [esp+24h+var_24]
mov     [edx+0Ah], al
mov     byte ptr [edx+0ACh], 0
mov     word ptr [ebp+4], 0Fh
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     esi, [edx+14h]
mov     edi, offset byte_5F8364
add     edi, 14h
mov     ecx, 200h
mov     edx, esi
mov     eax, edi
call    sub_4DE552
test    eax, eax
jge     short loc_40431E
mov     ebx, [esp+24h+var_24]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     ecx, 200h
mov     edx, esi
mov     eax, edi
call    sub_4DE552
neg     eax
jmp     short loc_404335

loc_40431E:
mov     ebx, [esp+24h+var_24]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     ecx, 200h
mov     edx, esi
mov     eax, edi
call    sub_4DE552

loc_404335:
sar     eax, 4
mov     [ebp+6Eh], ax
or      byte ptr [ebp+1], 20h
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_404345:             ; jumptable 004042C4 case 1
mov     di, [ebp+4]
dec     edi
mov     [ebp+4], di
test    di, di
jge     short loc_404363
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Bh
or      byte ptr [ebp+0], 2

loc_404363:
mov     eax, [esp+24h+var_20]
cmp     byte ptr [eax+76h], 0
jz      short loc_40437A
mov     eax, [eax+0C0h]
mov     ebx, [esp+24h+var_24]
cmp     eax, ebx
jz      short loc_4043C2

loc_40437A:
mov     ecx, [ebp+6Ch]
sar     ecx, 10h
mov     ebx, [esp+24h+var_24]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, [esp+24h+var_24]
add     edx, 14h
mov     eax, [esp+24h+var_20]
add     eax, 14h
call    sub_4DE552
mov     edx, [esp+24h+var_24]
mov     dx, [edx+56h]
add     edx, eax
and     dh, 0Fh
mov     ecx, [esp+24h+var_24]
mov     [ecx+56h], dx
mov     dx, [ebp+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [ebp+42h], ax
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_4043C2:
inc     byte ptr [ebx+0Ah]
mov     word ptr [ebp+4], 0Bh
or      byte ptr [ebp+0], 2
lea     edx, [ebx+14h]
mov     eax, 0F7h

loc_4043D7:
call    sub_4D8BC3
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_4043E1:             ; jumptable 004042C4 case 2
mov     cx, [ebp+4]
dec     ecx
mov     [ebp+4], cx
test    cx, cx
jge     short loc_4043FB
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Ah

loc_4043FB:
xor     edx, edx

loc_4043FD:
mov     eax, [esp+24h+var_24]
call    sub_405294
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_40440A:             ; jumptable 004042C4 case 3
mov     dx, [ebp+4]
dec     edx
mov     [ebp+4], dx
test    dx, dx
jge     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case
call    sub_4DDF54
mov     [esp+24h+var_1C], eax
test    eax, eax
jz      short loc_40449D
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+4], 6
mov     byte ptr [eax+3], 0
mov     eax, [esp+24h+var_24]
mov     al, [eax+1]
mov     edx, [esp+24h+var_1C]
mov     [edx+0Ch], al
mov     eax, edx
mov     byte ptr [edx+0Fh], 1
mov     edi, edx
lea     edi, [edi+14h]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+14h]
movsd
movsd
mov     edi, edx
lea     edi, [edi+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0FFFFD1E0h
mov     ebx, [esp+2Ch+var_24]
mov     ebx, [ebx+54h]
sar     ebx, 10h
add     edx, 1Ch
add     eax, 14h
mov     ecx, 0D00h
call    sub_4DD4C5
mov     eax, [esp+24h+var_24]
mov     ax, [eax+56h]
add     ah, 8
and     ah, 0Fh
mov     edx, [esp+24h+var_1C]
mov     [edx+56h], ax

loc_40449D:
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+0Ah]
mov     eax, [esp+24h+var_20]
cmp     byte ptr [eax+76h], 0
jnz     short loc_4044B8
mov     word ptr [ebp+4], 69h ; 'i'
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_4044B8:
mov     word ptr [ebp+4], 2Dh ; '-'
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_4044C3:             ; jumptable 004042C4 case 4
mov     eax, [esp+24h+var_24]
test    byte ptr [eax+0Fh], 2
jz      def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case
mov     di, [ebp+4]
dec     edi
mov     [ebp+4], di
test    di, di
jge     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Bh
lea     edx, [eax+14h]
mov     eax, 0F8h
jmp     loc_4043D7

loc_4044F8:             ; jumptable 004042C4 case 5
mov     cx, [ebp+4]
dec     ecx
mov     [ebp+4], cx
test    cx, cx
jge     short loc_40451A
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+0Ah]
and     byte ptr [eax+0Fh], 0FDh
mov     word ptr [ebp+4], 0Fh
and     byte ptr [ebp+0], 0FDh

loc_40451A:
mov     edx, 1
jmp     loc_4043FD

loc_404524:             ; jumptable 004042C4 case 6
mov     dx, [ebp+4]
dec     edx
mov     [ebp+4], dx
test    dx, dx
jge     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case
or      byte ptr [ebp+0], 1
and     byte ptr [ebp+1], 0DFh
jmp     def_404123      ; jumptable 00404123 default case
sub_4042A1 endp         ; jumptable 004042C4 default case

db 8Bh, 0C0h
jpt_404588 dd offset loc_40458F ; jump table for switch statement
dd offset loc_404609
dd offset loc_4046A7
dd offset loc_4046D0
dd offset loc_4047BE
dd offset loc_4047E5
dd offset loc_40480D



sub_404561 proc near

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
sub     esp, 0Ch
push    eax
lea     ebp, [eax+550h]
mov     [esp+28h+var_24], offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_404588      ; jumptable 00404588 default case
xor     edx, edx
mov     dl, al
jmp     jpt_404588[edx*4] ; switch jump

loc_40458F:             ; jumptable 00404588 case 0
inc     al
mov     edx, [esp+28h+var_28]
mov     [edx+0Ah], al
mov     byte ptr [edx+0ACh], 0
mov     word ptr [ebp+4], 0Fh
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     esi, [edx+14h]
mov     edi, offset byte_5F8364
add     edi, 14h
mov     ecx, 200h
mov     edx, esi
mov     eax, edi
call    sub_4DE552
test    eax, eax
jge     short loc_4045E2
mov     ebx, [esp+28h+var_28]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     ecx, 200h
mov     edx, esi
mov     eax, edi
call    sub_4DE552
neg     eax
jmp     short loc_4045F9

loc_4045E2:
mov     ebx, [esp+28h+var_28]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     ecx, 200h
mov     edx, esi
mov     eax, edi
call    sub_4DE552

loc_4045F9:
sar     eax, 4
mov     [ebp+6Eh], ax
or      byte ptr [ebp+1], 20h
jmp     def_404588      ; jumptable 00404588 default case

loc_404609:             ; jumptable 00404588 case 1
mov     di, [ebp+4]
dec     edi
mov     [ebp+4], di
test    di, di
jge     short loc_404627
mov     eax, [esp+28h+var_28]
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Bh
or      byte ptr [ebp+0], 2

loc_404627:
mov     eax, [esp+28h+var_24]
cmp     byte ptr [eax+76h], 0
jz      short loc_40463E
mov     eax, [eax+0C0h]
mov     ebx, [esp+28h+var_28]
cmp     eax, ebx
jz      short loc_404686

loc_40463E:
mov     ecx, [ebp+6Ch]
sar     ecx, 10h
mov     ebx, [esp+28h+var_28]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, [esp+28h+var_28]
add     edx, 14h
mov     eax, [esp+28h+var_24]
add     eax, 14h
call    sub_4DE552
mov     edx, [esp+28h+var_28]
mov     dx, [edx+56h]
add     edx, eax
and     dh, 0Fh
mov     ecx, [esp+28h+var_28]
mov     [ecx+56h], dx
mov     dx, [ebp+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [ebp+42h], ax
jmp     def_404588      ; jumptable 00404588 default case

loc_404686:
inc     byte ptr [ebx+0Ah]
mov     word ptr [ebp+4], 0Bh
or      byte ptr [ebp+0], 2
mov     edx, eax
add     edx, 14h
mov     eax, 0F7h

loc_40469D:
call    sub_4D8BC3
jmp     def_404588      ; jumptable 00404588 default case

loc_4046A7:             ; jumptable 00404588 case 2
mov     cx, [ebp+4]
dec     ecx
mov     [ebp+4], cx
test    cx, cx
jge     short loc_4046C1
mov     eax, [esp+28h+var_28]
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Ah

loc_4046C1:
xor     edx, edx

loc_4046C3:
mov     eax, [esp+28h+var_28]
call    sub_405294
jmp     def_404588      ; jumptable 00404588 default case

loc_4046D0:             ; jumptable 00404588 case 3
mov     dx, [ebp+4]
dec     edx
mov     [ebp+4], dx
test    dx, dx
jge     def_404588      ; jumptable 00404588 default case
xor     ecx, ecx
mov     [esp+28h+var_20], ecx
jmp     short loc_4046FC

loc_4046EA:
mov     edi, [esp+28h+var_20]
inc     edi
mov     [esp+28h+var_20], edi
cmp     edi, 4
jge     loc_40479E

loc_4046FC:
call    sub_4DE043
mov     [esp+28h+var_1C], eax
test    eax, eax
jz      short loc_4046EA
lea     edi, [ebp+68h]
mov     esi, [esp+28h+var_28]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [esp+28h+var_28]
mov     eax, [eax+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+70h], eax
mov     eax, [esp+28h+var_28]
mov     eax, [eax+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+74h], eax
mov     eax, [esp+28h+var_28]
mov     eax, [eax+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+78h], eax
push    0
push    0FFFFCE00h
mov     ebx, [esp+30h+var_28]
mov     ebx, [ebx+54h]
sar     ebx, 10h
lea     edx, [ebp+70h]
lea     eax, [ebp+68h]
mov     ecx, 0D00h
call    sub_4DD4C5
mov     eax, [esp+28h+var_1C]
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 3
mov     edi, eax
lea     edi, [edi+14h]
lea     esi, [ebp+68h]
movsd
movsd
mov     edx, [esp+28h+var_28]
mov     dx, [edx+56h]
add     dh, 8
call    rand_
and     ah, 3
add     edx, eax
sub     edx, 200h
mov     eax, [esp+28h+var_1C]
mov     [eax+56h], dx
jmp     loc_4046EA

loc_40479E:
mov     eax, [esp+28h+var_28]
inc     byte ptr [eax+0Ah]
mov     eax, [esp+28h+var_24]
cmp     byte ptr [eax+76h], 0
jnz     short loc_4047B6
mov     word ptr [ebp+4], 69h ; 'i'
jmp     short def_404588 ; jumptable 00404588 default case

loc_4047B6:
mov     word ptr [ebp+4], 2Dh ; '-'
jmp     short def_404588 ; jumptable 00404588 default case

loc_4047BE:             ; jumptable 00404588 case 4
mov     di, [ebp+4]
dec     edi
mov     [ebp+4], di
test    di, di
jge     short def_404588 ; jumptable 00404588 default case
mov     eax, [esp+28h+var_28]
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Bh
lea     edx, [eax+14h]
mov     eax, 0F8h
jmp     loc_40469D

loc_4047E5:             ; jumptable 00404588 case 5
mov     cx, [ebp+4]
dec     ecx
mov     [ebp+4], cx
test    cx, cx
jge     short loc_404803
mov     eax, [esp+28h+var_28]
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Fh
and     byte ptr [ebp+0], 0FDh

loc_404803:
mov     edx, 1
jmp     loc_4046C3

loc_40480D:             ; jumptable 00404588 case 6
mov     dx, [ebp+4]
dec     edx
mov     [ebp+4], dx
test    dx, dx
jge     short def_404588 ; jumptable 00404588 default case
or      byte ptr [ebp+0], 1
and     byte ptr [ebp+1], 0DFh

def_404588:             ; jumptable 00404588 default case
add     esp, 10h
jmp     loc_40427B
sub_404561 endp

db 8Bh, 0C0h
jpt_404858 dd offset loc_40485F ; jump table for switch statement
dd offset loc_404870
dd offset loc_4048AD
dd offset loc_404905



sub_40483D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_404858      ; jumptable 00404858 default case
xor     edx, edx
mov     dl, al
jmp     jpt_404858[edx*4] ; switch jump

loc_40485F:             ; jumptable 00404858 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0Ch
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_404870:             ; jumptable 00404858 case 1
cmp     byte ptr [esi+0A7h], 0
jge     def_404858      ; jumptable 00404858 default case
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 8
add     esi, 14h
mov     edx, esi
mov     eax, 0A1h
call    sub_4D8BC3
mov     edx, esi
mov     eax, 0A2h
call    sub_4D8BC3
or      byte ptr [ecx+1], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4048AD:             ; jumptable 00404858 case 2
cmp     byte ptr [esi+0A6h], 0
jz      short loc_4048D9
lea     ecx, [esi+14h]
mov     edx, ecx
mov     eax, 151h
call    sub_4D8BC3
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B

loc_4048D9:
cmp     byte ptr [esi+0A7h], 0
jge     short loc_4048EC
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0Bh

loc_4048EC:
xor     eax, eax

loc_4048EE:
mov     edx, eax
mov     word ptr [esi+edx*8+196h], 7FFFh
inc     eax
cmp     eax, 0Fh
jl      short loc_4048EE
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_404905:             ; jumptable 00404858 case 3
cmp     byte ptr [esi+0A7h], 0
jge     short def_404858 ; jumptable 00404858 default case
or      byte ptr [ecx], 1
mov     word ptr [ecx+40h], 78h ; 'x'

def_404858:             ; jumptable 00404858 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40483D endp

db 90h
jpt_404948 dd offset loc_40494F ; jump table for switch statement
dd offset loc_404960
dd offset loc_40497A
dd offset loc_4049BE



sub_40492D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 550h
mov     dl, [esi+0Ah]
cmp     dl, 3           ; switch 4 cases
ja      def_404948      ; jumptable 00404948 default case
xor     ecx, ecx
mov     cl, dl
jmp     jpt_404948[ecx*4] ; switch jump

loc_40494F:             ; jumptable 00404948 case 0
inc     dl
mov     [esi+0Ah], dl
mov     byte ptr [esi+0ACh], 0Ch
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_404960:             ; jumptable 00404948 case 1
cmp     byte ptr [esi+0A7h], 0
jge     short def_404948 ; jumptable 00404948 default case
inc     dl
mov     [esi+0Ah], dl
mov     byte ptr [esi+0ACh], 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40497A:             ; jumptable 00404948 case 2
cmp     byte ptr [esi+0A6h], 0
jz      short loc_4049A6
lea     ecx, [esi+14h]
mov     edx, ecx
mov     eax, 151h
call    sub_4D8BC3
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B

loc_4049A6:
cmp     byte ptr [esi+0A7h], 0
jge     short def_404948 ; jumptable 00404948 default case
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0Bh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4049BE:             ; jumptable 00404948 case 3
cmp     byte ptr [esi+0A7h], 0
jge     short def_404948 ; jumptable 00404948 default case
or      byte ptr [eax], 1

def_404948:             ; jumptable 00404948 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40492D endp




sub_4049CF proc near

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
sub     esp, 10h
push    eax
lea     ebp, [eax+550h]
mov     [esp+2Ch+var_1C], offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4049F7
cmp     al, 1
jz      short loc_404A22
jmp     loc_404C7F

loc_4049F7:
inc     al
mov     edx, [esp+2Ch+var_2C]
mov     [edx+0Ah], al
mov     byte ptr [edx+0ACh], 1
test    byte ptr [ebp+0], 80h
jz      short loc_404A1C
mov     eax, edx
mov     dx, [edx+64h]
neg     edx
mov     [eax+64h], dx
neg     word ptr [eax+66h]

loc_404A1C:
mov     word ptr [ebp+4], 78h ; 'x'

loc_404A22:
lea     edi, [ebp+68h]
mov     esi, [esp+2Ch+var_2C]
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [ebp+70h]
mov     esi, [esp+2Ch+var_2C]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0
mov     edx, [esp+34h+var_2C]
mov     edx, [edx+54h]
sar     edx, 10h
xor     eax, eax
mov     ax, [ebp+42h]
lea     ebx, [eax+edx]
and     ebx, 0FFFh
lea     eax, [ebp+70h]
mov     [esp+34h+var_28], eax
lea     eax, [ebp+68h]
mov     [esp+34h+var_24], eax
mov     ecx, 800h
mov     edx, [esp+34h+var_28]
call    sub_4DD4C5
mov     ebx, [esp+2Ch+var_2C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     eax, [esp+2Ch+var_2C]
add     eax, 14h
mov     [esp+2Ch+var_20], eax
mov     ecx, 20h ; ' '
mov     edx, [esp+2Ch+var_24]
call    sub_4DE552
mov     edx, [esp+2Ch+var_2C]
mov     dx, [edx+56h]
add     edx, eax
and     dh, 0Fh
mov     ebx, [esp+2Ch+var_2C]
mov     [ebx+56h], dx
mov     dx, [ebp+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [ebp+42h], ax
lea     edi, [ebp+68h]
mov     esi, offset unk_50B294
movsd
movsd
lea     edi, [ebp+70h]
mov     esi, offset unk_50B29C
movsd
movsd
movsd
movsd
mov     edx, [esp+2Ch+var_20]
mov     eax, offset unk_50B294
call    sub_4DDDB4
mov     si, [ebx+64h]
add     esi, eax
push    0
push    0
mov     eax, esi
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 5000h
mov     edx, [esp+34h+var_28]
mov     eax, [esp+34h+var_24]
call    sub_4DD4C5
or      byte ptr [ebp+0F2h], 1
mov     eax, [esp+2Ch+var_2C]
add     si, [eax+66h]
sub     si, [eax+56h]
and     esi, 0FFFh
mov     [ebp+42h], si
mov     edi, eax
lea     edi, [edi+14h]
lea     esi, [ebp+68h]
movsd
movsd
mov     edi, eax
lea     edi, [edi+1Ch]
lea     esi, [ebp+70h]
movsd
movsd
movsd
movsd
mov     eax, [esp+2Ch+var_1C]
cmp     byte ptr [eax+76h], 0
jz      short loc_404B6A
mov     eax, [eax+0C0h]
mov     ecx, [esp+2Ch+var_2C]
cmp     eax, ecx
jnz     short loc_404B6A
mov     bx, [ebp+4]
dec     ebx
mov     [ebp+4], bx
test    bx, bx
jge     loc_404C7F
call    sub_405251
mov     [ecx+0Dh], al
mov     ax, [ecx+56h]
jmp     loc_404C70

loc_404B6A:
mov     ax, [ebp+4]
dec     eax
mov     [ebp+4], ax
test    ax, ax
jge     short loc_404B8F
mov     eax, [esp+2Ch+var_2C]
call    sub_405251
mov     edx, [esp+2Ch+var_2C]
mov     [edx+0Dh], al
mov     ax, [edx+56h]
jmp     loc_404C70

loc_404B8F:
cmp     word ptr [ebp+40h], 0
jnz     loc_404C7F
mov     eax, [esp+2Ch+var_2C]
mov     eax, [eax+14h]
sar     eax, 10h
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
sub     edx, eax
mov     eax, edx
test    edx, edx
jge     short loc_404BBA
mov     ebx, edx
neg     ebx
jmp     short loc_404BBC

loc_404BBA:
mov     ebx, edx

loc_404BBC:
mov     eax, [esp+2Ch+var_2C]
add     eax, 14h
mov     edx, [esp+2Ch+var_1C]
add     edx, 14h
cmp     ebx, 200h
jge     loc_404C40
mov     ebx, [esp+2Ch+var_2C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     ecx, 80h
call    sub_4DE552
mov     esi, eax
test    ax, ax
jge     short loc_404BF4
cwde
neg     eax
jmp     short loc_404BF5

loc_404BF4:
cwde

loc_404BF5:
cmp     eax, 80h
jge     short loc_404C15
mov     eax, [esp+2Ch+var_2C]
cmp     dword ptr [eax+80h], 200000h
jnb     short loc_404C15
mov     byte ptr [eax+0Dh], 2

loc_404C0F:
mov     ax, [eax+56h]
jmp     short loc_404C70

loc_404C15:
test    si, si
jge     short loc_404C21
movsx   eax, si
neg     eax
jmp     short loc_404C24

loc_404C21:
movsx   eax, si

loc_404C24:
cmp     eax, 80h
jge     short loc_404C7F
mov     eax, [esp+2Ch+var_2C]
cmp     dword ptr [eax+80h], 1200000h
jnb     short loc_404C7F
mov     byte ptr [eax+0Dh], 0Bh
jmp     short loc_404C0F

loc_404C40:
mov     ebx, [esp+2Ch+var_2C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     ecx, 600h
call    sub_4DE552
test    ax, ax
jge     short loc_404C5D
cwde
neg     eax
jmp     short loc_404C5E

loc_404C5D:
cwde

loc_404C5E:
cmp     eax, 600h
jge     short loc_404C7F
mov     eax, [esp+2Ch+var_2C]
mov     byte ptr [eax+0Dh], 1
mov     ax, [eax+56h]

loc_404C70:
add     ax, [ebp+42h]
and     ah, 0Fh
mov     [ebp+44h], ax
or      byte ptr [ebp+0], 1

loc_404C7F:
mov     eax, [esp+2Ch+var_2C]
cmp     byte ptr [eax+0A6h], 0
jz      short loc_404C98
lea     edx, [eax+14h]
mov     eax, 0F6h
call    sub_4D8BC3

loc_404C98:
add     esp, 14h
jmp     loc_40427B
sub_4049CF endp




sub_404CA0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+550h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_404CC1
cmp     al, 1
jz      loc_404D3D
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_404CC1:
push    800h
inc     al
mov     [edi+0Ah], al
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
mov     ecx, offset byte_5F8364
add     ecx, 1Ch
mov     edx, [edi+54h]
sar     edx, 10h
add     edx, 400h
and     edx, 0FFFh
lea     eax, [edi+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      short loc_404D16
mov     byte ptr [edi+0ACh], 6
mov     bh, [esi]
or      bh, 40h
mov     [esi], bh
mov     cl, bh
and     cl, 0DFh
mov     [esi], cl
jmp     short loc_404D2B

loc_404D16:
mov     byte ptr [edi+0ACh], 7
mov     dh, [esi]
or      dh, 20h
mov     [esi], dh
mov     bl, dh
and     bl, 0BFh
mov     [esi], bl

loc_404D2B:
lea     edx, [edi+14h]
mov     eax, 0FCh
call    sub_4D8BC3
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_404D3D:
cmp     byte ptr [edi+0A7h], 0
jge     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
or      [esi], al
and     word ptr [esi], 0FE9Fh
jmp     def_403F35      ; jumptable 00403F35 default case
sub_404CA0 endp         ; jumptable 00404FD1 default case

db 8Dh, 40h, 0
jpt_404D8B dd offset loc_404D92 ; jump table for switch statement
dd offset loc_404DCC
dd offset loc_404ECB
dd offset loc_404F0C



sub_404D69 proc near

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
ja      def_404D8B      ; jumptable 00404D8B default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_404D8B[ecx*4] ; switch jump

loc_404D92:             ; jumptable 00404D8B case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0Ch
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 5
mov     word ptr [eax+6], 0
mov     byte ptr [ebp+0Bh], 0
mov     edx, 8
xor     eax, eax
call    sub_4A0E24
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax+0F2h], 7Eh
jmp     def_404D8B      ; jumptable 00404D8B default case

loc_404DCC:             ; jumptable 00404D8B case 1
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_404D8B      ; jumptable 00404D8B default case
mov     edi, eax
lea     edi, [edi+68h]
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, eax
lea     edi, [edi+70h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
push    0
mov     eax, [eax+4]
sar     eax, 10h
shl     eax, 5
neg     eax
shl     eax, 4
push    eax
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edi, [esp+24h+var_1C]
add     edi, 70h ; 'p'
mov     esi, [esp+24h+var_1C]
add     esi, 68h ; 'h'
mov     ecx, 0D00h
mov     edx, edi
mov     eax, esi
call    sub_4DD4C5
push    0
xor     eax, eax
mov     al, [ebp+0Bh]
mov     ecx, ds:(dword_50B2DA+2)[eax*8]
sar     ecx, 10h
push    ecx
mov     ecx, ds:dword_50B2DA[eax*8]
sar     ecx, 10h
mov     ebx, [esp+24h+var_1C]
mov     ebx, [ebx+4]
sar     ebx, 10h
shl     ebx, 9
mov     edx, edi
mov     eax, esi
call    sub_4DD4C5
call    sub_4DE13B
test    eax, eax
jz      short loc_404E83
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 0
lea     edi, [eax+48h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+68h]
movsd
movsd

loc_404E83:
mov     eax, [esp+1Ch+var_1C]
mov     cx, [eax+6]
inc     ecx
mov     [eax+6], cx
cmp     cx, 8
jl      short loc_404EBD
mov     ch, [ebp+0Bh]
inc     ch
mov     [ebp+0Bh], ch
cmp     ch, 4
jb      short loc_404EB4
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 8
mov     eax, [esp+1Ch+var_1C]
and     word ptr [eax], 0F7FDh

loc_404EB4:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+6], 0

loc_404EBD:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 2
jmp     def_404D8B      ; jumptable 00404D8B default case

loc_404ECB:             ; jumptable 00404D8B case 2
cmp     byte ptr [ebp+0A6h], 0
jz      short loc_404EF7
lea     ecx, [ebp+14h]
mov     edx, ecx
mov     eax, 151h
call    sub_4D8BC3
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B

loc_404EF7:
cmp     byte ptr [ebp+0A7h], 0
jge     short def_404D8B ; jumptable 00404D8B default case
mov     byte ptr [ebp+0ACh], 9
inc     byte ptr [ebp+0Ah]
jmp     short def_404D8B ; jumptable 00404D8B default case

loc_404F0C:             ; jumptable 00404D8B case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_404F3B
mov     byte ptr [ebp+9], 9
mov     eax, 604h
call    sub_47E8B8
mov     eax, ebp
call    sub_432EAB
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax], 200h
mov     eax, ebp
call    sub_4367FD
jmp     short def_404D8B ; jumptable 00404D8B default case

loc_404F3B:
cmp     byte ptr [ebp+0A7h], 0
jge     short def_404D8B ; jumptable 00404D8B default case
mov     byte ptr [ebp+0ACh], 8
dec     byte ptr [ebp+0Ah]

def_404D8B:             ; jumptable 00404D8B default case
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+0F6h], 8
jge     short loc_404F66
mov     word ptr [ebp+15Eh], 4210h
jmp     short loc_404F6F

loc_404F66:
mov     word ptr [ebp+15Eh], 7FFFh

loc_404F6F:
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+0F6h]
inc     eax
xor     ah, ah
and     al, 0Fh
mov     ecx, [esp+1Ch+var_1C]
mov     [ecx+0F6h], ax
add     esp, 4
jmp     loc_40427B
sub_404D69 endp




sub_404F90 proc near
mov     byte ptr [eax+0ACh], 0Ah
retn
sub_404F90 endp

db 90h
jpt_404FD1 dd offset loc_404FD8 ; jump table for switch statement
dd offset loc_404FE9
dd offset loc_405096
dd offset loc_4050FD
dd offset loc_40514A
dd offset loc_405199
dd offset loc_404048



sub_404FB5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
xor     edx, edx
mov     dl, al
jmp     jpt_404FD1[edx*4] ; switch jump

loc_404FD8:             ; jumptable 00404FD1 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0Dh
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_404FE9:             ; jumptable 00404FD1 case 1
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 10h
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
mov     dx, [edi+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [edi+42h], ax
cmp     byte ptr [esi+0A7h], 0
jge     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
inc     byte ptr [esi+0Ah]
mov     edx, 3
mov     eax, esi
call    sub_405585
mov     edx, 8
mov     eax, esi
call    sub_405585
cmp     dword ptr [edi+80h], 0
jz      short loc_405062
cmp     dword ptr [edi+84h], 0
jz      short loc_405062
inc     byte ptr [esi+0Ah]
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_405062:
cmp     dword ptr [edi+80h], 0
jz      short loc_405074
add     byte ptr [esi+0Ah], 2
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_405074:
cmp     dword ptr [edi+84h], 0
jz      short loc_405086
add     byte ptr [esi+0Ah], 3
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_405086:
add     byte ptr [esi+0Ah], 5
mov     byte ptr [esi+0ACh], 0Fh
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_405096:             ; jumptable 00404FD1 case 2
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 10h
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
mov     dx, [edi+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [edi+42h], ax
mov     eax, [edi+80h]
cmp     byte ptr [eax+0Ch], 0
jz      def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
mov     eax, [edi+84h]
cmp     byte ptr [eax+0Ch], 0
jz      def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
add     byte ptr [esi+0Ah], 3

loc_4050F1:
mov     byte ptr [esi+0ACh], 0Eh
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_4050FD:             ; jumptable 00404FD1 case 3
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 10h
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
mov     dx, [edi+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [edi+42h], ax
mov     eax, [edi+80h]
cmp     byte ptr [eax+0Ch], 0
jz      def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
add     byte ptr [esi+0Ah], 2
jmp     short loc_4050F1

loc_40514A:             ; jumptable 00404FD1 case 4
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 10h
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
mov     dx, [edi+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [edi+42h], ax
mov     eax, [edi+84h]
cmp     byte ptr [eax+0Ch], 0
jz      def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
inc     byte ptr [esi+0Ah]
jmp     loc_4050F1

loc_405199:             ; jumptable 00404FD1 case 5
cmp     byte ptr [esi+0A7h], 0
jge     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0Fh
mov     edx, [edi+80h]
test    edx, edx
jz      short loc_4051CA
add     byte ptr [edx+0Ch], 80h
mov     dword ptr [edi+80h], 0

loc_4051CA:
mov     ecx, [edi+84h]
test    ecx, ecx
jz      def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
add     byte ptr [ecx+0Ch], 80h
mov     dword ptr [edi+84h], 0
jmp     def_403F35      ; jumptable 00403F35 default case
sub_404FB5 endp         ; jumptable 00404FD1 default case




sub_4051EB proc near
push    ebx
push    ecx
push    edx
push    esi
lea     esi, [eax+550h]
mov     edx, offset byte_5F8364
cmp     ds:byte_5F83DA, 0
jz      short loc_40520B
cmp     eax, ds:dword_5F8424
jz      short loc_405231

loc_40520B:
push    800h
mov     ecx, [edx+54h]
sar     ecx, 10h
push    ecx
lea     ecx, [edx+1Ch]
xor     edx, edx
mov     dx, [esi+44h]
add     eax, 1Ch
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      short loc_405236

loc_405231:
and     byte ptr [esi], 7Fh
jmp     short loc_405247

loc_405236:
or      byte ptr [esi], 80h
mov     ax, [esi+42h]
add     ah, 8
and     ah, 0Fh
mov     [esi+42h], ax

loc_405247:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4051EB endp




sub_405251 proc near
push    edx
mov     edx, eax
add     eax, 550h
cmp     ds:byte_5F83DA, 0
jz      short loc_40527F
cmp     edx, ds:dword_5F8424
jnz     short loc_40527F
mov     ax, [eax+2]
xor     ah, ah
and     al, 0Fh
cmp     ax, 6
jnb     short loc_40528D

loc_405278:
mov     eax, 4
pop     edx
retn

loc_40527F:
mov     ax, [eax+2]
xor     ah, ah
and     al, 0Fh
cmp     ax, 9
jb      short loc_405278

loc_40528D:
mov     eax, 3
pop     edx
retn
sub_405251 endp




sub_405294 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebx, eax
mov     ebp, edx
lea     ecx, [eax+550h]
xor     esi, esi
jmp     short loc_4052CC

loc_4052A7:
mov     eax, [ecx+38h]
add     word ptr [eax+2], 58h ; 'X'
mov     eax, [ecx+3Ch]
add     word ptr [eax+2], 58h ; 'X'
mov     eax, [ecx+34h]
sub     byte ptr [eax+5], 4
mov     eax, [ecx+34h]
sub     byte ptr [eax+7], 4

loc_4052C5:
inc     esi
cmp     si, 3
jge     short loc_405338

loc_4052CC:
movsx   edi, si
shl     edi, 18h
mov     edx, edi
or      edx, 10E01h
mov     eax, [ebx+88h]
call    sub_4EDF7C
mov     [ecx+34h], eax
mov     edx, edi
or      edx, 10E04h
mov     eax, [ebx+88h]
call    sub_4EE014
mov     [ecx+38h], eax
mov     edx, edi
or      edx, 10E05h
mov     eax, [ebx+88h]
call    sub_4EE014
mov     [ecx+3Ch], eax
test    ebp, ebp
jnz     short loc_4052A7
mov     eax, [ecx+38h]
sub     word ptr [eax+2], 58h ; 'X'
mov     eax, [ecx+3Ch]
sub     word ptr [eax+2], 58h ; 'X'
mov     eax, [ecx+34h]
add     byte ptr [eax+5], 4
mov     eax, [ecx+34h]
add     byte ptr [eax+7], 4
jmp     short loc_4052C5

loc_405338:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_405294 endp




sub_40533E proc near
push    ebx
push    ecx
push    edx
push    esi
call    sub_4DDFD0
mov     esi, eax
test    eax, eax
jz      short loc_4053BC
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 1
mov     dword ptr [eax+1Ch], 0EB000000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 1A000000h
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
mov     word ptr [esi+0B0h], 0
mov     ax, [esi+0B0h]
mov     [esi+6Eh], ax
push    208080h
mov     ecx, 50h ; 'P'
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_436785
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4053BC:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40533E endp




sub_4053C6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+550h]
mov     edx, [ebx+14h]
and     edx, 0FFFFFFh
jz      short loc_4053BC
mov     ah, [ebx+17h]
test    ah, 20h
jnz     short loc_4053BC
test    ah, 18h
jz      loc_4054C6
mov     ah, [ebx+1]
or      ah, 1
mov     [ebx+1], ah
mov     al, ah
and     al, 0BBh
mov     [ebx+1], al
mov     ax, [ecx+6Eh]
mov     [ecx+0B2h], ax
mov     esi, eax
sub     esi, edx
mov     [ecx+6Eh], si
test    si, si
jg      short loc_405451
call    sub_4B55BB
test    eax, eax
jz      short loc_40544B
mov     word ptr [ecx+6Eh], 0
and     byte ptr [ebx], 0F3h
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
mov     edx, [edx+eax*4]
mov     dl, [edx+9]
and     edx, 0FFh
mov     byte ptr [ecx+9], 8
mov     word ptr [ecx+0Ah], 0
jmp     short loc_405451

loc_40544B:
mov     word ptr [ecx+6Eh], 1

loc_405451:
test    byte ptr [ebx], 8
jz      short loc_405495
add     [ebx+0Ah], dx
test    byte ptr [ebx+17h], 20h
jnz     short loc_405480
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
mov     edx, [ebx+8]
sar     edx, 10h
cmp     edx, eax
jl      short loc_4054A2

loc_405480:
lea     edx, [ecx+14h]
mov     eax, 0A2h
call    sub_4D8BC3
mov     word ptr [ebx+0Ah], 0
jmp     short loc_4054A2

loc_405495:
lea     edx, [ecx+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_4054A2:
xor     eax, eax

loc_4054A4:
mov     edx, eax
mov     word ptr [ecx+edx*8+196h], 7FFFh
inc     eax
cmp     eax, 0Fh
jl      short loc_4054A4
mov     ax, [ecx+6Eh]
mov     [ebx+0F8h], ax
jmp     loc_4053BC

loc_4054C6:
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3
jmp     loc_4053BC
sub_4053C6 endp




sub_4054D8 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     edi, eax
mov     esi, edx
lea     ecx, [eax+550h]
mov     eax, edx
sar     eax, 3
mov     ecx, [ecx+eax*4+80h]
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+16h], 7D0h
mov     word ptr [ecx+18h], 0
lea     ebx, [ecx+1Ch]
lea     edx, [ecx+14h]
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 4
mov     ebp, edi
add     ebp, 250h
add     eax, ebp
call    sub_4EF1FB
mov     eax, esi
mov     si, [ecx+1Ch]
mov     dx, [edi+eax*8+190h]
add     esi, edx
mov     [ecx+14h], si
mov     si, [ecx+20h]
mov     bx, [edi+eax*8+192h]
add     esi, ebx
mov     [ecx+16h], si
mov     si, [ecx+24h]
mov     dx, [edi+eax*8+194h]
add     esi, edx
mov     [ecx+18h], si
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
jmp     loc_405338
sub_4054D8 endp




sub_405585 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
lea     edx, [eax+550h]
call    sub_4DE043
mov     esi, ecx
sar     esi, 3
shl     esi, 2
add     edx, esi
test    eax, eax
jz      short loc_4055F9
mov     [edx+80h], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Dh], 0
lea     edi, [eax+14h]
lea     esi, [ebx+ecx*8+190h]
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
mov     eax, 1
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4055F9:
mov     [edx+80h], eax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_405585 endp




sub_405604 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edi, [eax+550h]
xor     ecx, ecx
xor     edx, edx
xor     esi, esi

loc_405618:
mov     eax, esi
shl     eax, 4
mov     ebx, [edi+eax+90h]
and     ebx, 0FFFFFFh
add     edx, ebx
mov     eax, [edi+eax+90h]
and     eax, 38000000h
or      ecx, eax
inc     esi
cmp     esi, 6
jl      short loc_405618
test    edx, edx
jz      loc_405713
test    ecx, 38000000h
jz      loc_405706
mov     bx, [edi+46h]
sub     ebx, edx
mov     [edi+46h], bx
test    bx, bx
jg      loc_4056EE
test    byte ptr [edi+1], 20h
jz      short loc_405675
mov     word ptr [edi+46h], 1
jmp     short loc_4056EE

loc_405675:
mov     word ptr [edi+46h], 0
mov     dl, [edi+1]
or      dl, 80h
mov     [edi+1], dl
mov     dh, dl
and     dh, 0EFh
mov     [edi+1], dh
sar     word ptr [ebp+64h], 1
xor     esi, esi

loc_405692:
mov     eax, esi
shl     eax, 3
add     eax, offset unk_50B244
push    0
mov     edx, [eax+4]
push    edx
mov     ecx, [eax]
sar     ecx, 10h
xor     ebx, ebx
mov     bl, [eax+1]
xor     edx, edx
mov     dl, [eax]
lea     eax, [ebp+1E8h]
call    sub_43954B
mov     edx, esi
mov     [edi+edx*4+0E8h], eax
inc     esi
cmp     esi, 2
jl      short loc_405692
mov     byte ptr [ebp+9], 0Ah
mov     word ptr [ebp+0Ah], 0
mov     edx, 7
mov     eax, 4
call    sub_4A0E24
or      byte ptr [edi+0F2h], 0Eh
or      byte ptr [edi+1], 40h

loc_4056EE:
lea     edx, [ebp+14h]
mov     eax, 0A2h
call    sub_4D8BC3
mov     word ptr [ebp+1EEh], 7FFFh
jmp     short loc_405713

loc_405706:
lea     edx, [ebp+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_405713:
mov     eax, 1
jmp     loc_40427B
sub_405604 endp




sub_40571D proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 640h
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
call    ds:funcs_405772[edx*4]
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 10h
jz      short loc_4057AB
mov     al, [ebp+0ADh]
cmp     al, [ebp+0ACh]
jz      short loc_4057A2
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_4057B9

loc_4057A2:
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_4057B9

loc_4057AB:
mov     eax, ebp
call    sub_4DFC52
mov     eax, ebp
call    sub_4DF795

loc_4057B9:
test    byte ptr [ebp+0], 2
jz      short loc_4057D2
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 100h
mov     eax, ebp
call    sub_4ED88B

loc_4057D2:
test    byte ptr [ebp+0], 1
jz      short loc_405822
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 8
jz      short loc_405822
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
or      eax, 4880008h
push    eax
lea     eax, [edx+14h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [edx+0Ch]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0D0h
call    sub_4E01FC

loc_405822:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+14h], 0
jmp     def_406C32      ; jumptable 00406C32 default case
sub_40571D endp         ; jumptable 00406DEA default case




sub_405831 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+640h]
call    sub_4DE043
mov     [ecx+34h], eax
test    eax, eax
jz      short loc_40587A
mov     byte ptr [eax], 25h ; '%'
mov     eax, [ecx+34h]
mov     byte ptr [eax+2], 0Ah
mov     eax, [ecx+34h]
mov     byte ptr [eax+3], 0
mov     eax, [ecx+34h]
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     eax, [ecx+34h]
mov     byte ptr [eax+0Dh], 2
mov     eax, [ecx+34h]
mov     byte ptr [eax+0Eh], 40h ; '@'
mov     eax, [ecx+34h]
mov     byte ptr [eax+0Fh], 1
jmp     short loc_405881

loc_40587A:
mov     eax, esi
call    sub_4DE336

loc_405881:
call    sub_4DE043
mov     [ecx+38h], eax
test    eax, eax
jz      short loc_4058C6
mov     byte ptr [eax], 25h ; '%'
mov     eax, [ecx+38h]
mov     byte ptr [eax+2], 0Ah
mov     eax, [ecx+38h]
mov     byte ptr [eax+3], 1
mov     eax, [ecx+38h]
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     eax, [ecx+38h]
mov     byte ptr [eax+0Dh], 4
cmp     byte ptr [esi+3], 0
jz      short loc_4058BD
mov     eax, [ecx+38h]
mov     byte ptr [eax+0Eh], 1
jmp     short loc_4058D5

loc_4058BD:
mov     eax, [ecx+38h]
mov     byte ptr [eax+0Eh], 0
jmp     short loc_4058D5

loc_4058C6:
mov     eax, esi
call    sub_4DE336
mov     eax, [ecx+34h]
call    sub_4DE371

loc_4058D5:
or      byte ptr [esi], 2
mov     word ptr [esi+54h], 0
mov     word ptr [esi+58h], 0
mov     dword ptr [esi+64h], 0
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     word ptr [ecx], 1Eh
mov     dword ptr [ecx+4], 0
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx+14h], 0
mov     dword ptr [ecx+18h], 0
xor     eax, eax
mov     al, [esi+2]
shl     eax, 2
mov     edx, ds:dword_55A108
add     eax, edx
xor     edx, edx
mov     dl, [esi+3]
shl     edx, 4
mov     eax, [eax]
add     eax, edx
xor     edx, edx
mov     dl, [eax+0Fh]
lea     eax, [ecx+24h]
mov     ebx, 0FFFFFFA0h
call    sub_4E19B9
xor     eax, eax
mov     al, [esi+2]
shl     eax, 2
mov     edx, ds:dword_55A108
add     eax, edx
xor     edx, edx
mov     dl, [esi+3]
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+8]
xor     ah, ah
shl     eax, 5
mov     [esi+6Eh], ax
mov     [esi+0B0h], ax
mov     [esi+0B2h], ax
mov     dword ptr [esi+78h], offset unk_50B34C
mov     dword ptr [esi+10h], 0
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
cmp     byte ptr [esi+3], 0
jz      short loc_4059EE
mov     byte ptr [esi+107h], 0FFh
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0
mov     word ptr [esi+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
push    203050h
mov     ecx, 51h ; 'Q'
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_436785
jmp     short loc_405A0A

loc_4059EE:
mov     byte ptr [esi+8], 4
mov     byte ptr [esi+9], 0Eh
mov     word ptr [esi+0Ah], 0
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B

loc_405A0A:
mov     word ptr [esi+15Eh], 4210h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_405831 endp

db 90h
jpt_405ABC dd offset loc_405AE1 ; jump table for switch statement
dd offset def_405ABC
dd offset loc_405AEB
dd offset loc_405AC3
dd offset loc_405ACB



sub_405A2D proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
lea     ebx, [eax+640h]
add     eax, 664h
mov     edx, ecx
call    sub_4E19CA
test    eax, eax
jz      short loc_405A4E
or      byte ptr [ebx], 20h
jmp     short loc_405A51

loc_405A4E:
and     byte ptr [ebx], 0DFh

loc_405A51:
test    byte ptr [ebx], 2
jz      short loc_405A5D
mov     eax, ecx
call    sub_4074CC

loc_405A5D:
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_405A64[edx*4]
test    byte ptr [ebx], 1
jz      loc_405B03
cmp     word ptr [ecx+6Eh], 0
jg      short loc_405AB0
mov     byte ptr [ecx+9], 0
cmp     ds:byte_77E7D4, 0
jnz     loc_405AFA
mov     al, [ebx]
test    al, 40h
jnz     loc_405AFA
mov     ah, al
or      ah, 40h
mov     [ebx], ah
mov     eax, 606h
call    sub_47E8B8
mov     eax, ecx
call    sub_4367FD
jmp     short loc_405AFA

loc_405AB0:
mov     al, [ecx+9]
cmp     al, 4           ; switch 5 cases
ja      short def_405ABC ; jumptable 00405ABC default case, case 1
and     eax, 0FFh
jmp     jpt_405ABC[eax*4] ; switch jump

loc_405AC3:             ; jumptable 00405ABC case 3
mov     al, [ecx+0Dh]
mov     [ecx+9], al
jmp     short loc_405AFA

loc_405ACB:             ; jumptable 00405ABC case 4
cmp     ds:byte_77E7D4, 9
jnz     short loc_405AE1 ; jumptable 00405ABC case 0
cmp     word ptr [ecx+6Eh], 0
jg      short loc_405AE1 ; jumptable 00405ABC case 0
mov     byte ptr [ecx+9], 5
jmp     short loc_405AFA

loc_405AE1:             ; jumptable 00405ABC case 0
mov     byte ptr [ecx+9], 3
mov     byte ptr [ecx+0Dh], 1
jmp     short loc_405AFA

loc_405AEB:             ; jumptable 00405ABC case 2
mov     byte ptr [ecx+9], 1
jmp     short loc_405AFA

def_405ABC:             ; jumptable 00405ABC default case, case 1
test    byte ptr [ebx], 20h
jnz     short loc_405AEB ; jumptable 00405ABC case 2
mov     byte ptr [ecx+9], 0

loc_405AFA:
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ebx], 0FEh

loc_405B03:
mov     di, [ebx+0Ah]
test    di, di
jz      short loc_405B13
mov     eax, edi
dec     eax
mov     [ebx+0Ah], ax

loc_405B13:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_405A2D endp




sub_405B18 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+640h]
add     eax, 664h
mov     edx, [esp+1Ch+var_1C]
call    sub_4E19CA
test    eax, eax
jz      short loc_405B3C
or      byte ptr [ebp+0], 20h
jmp     short loc_405B40

loc_405B3C:
and     byte ptr [ebp+0], 0DFh

loc_405B40:
test    byte ptr [ebp+0], 2
jz      short loc_405B4E
mov     eax, [esp+1Ch+var_1C]
call    sub_4074CC

loc_405B4E:
xor     edx, edx
mov     eax, [esp+1Ch+var_1C]
mov     dl, [eax+9]
call    ds:funcs_405A64[edx*4]
test    byte ptr [ebp+0], 1
jz      short loc_405BAB
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+9]
cmp     al, 4
jb      short loc_405B75
jbe     short loc_405B87
cmp     al, 0Ah
jz      short loc_405B79
jmp     short loc_405B97

loc_405B75:
cmp     al, 3
jnz     short loc_405B97

loc_405B79:
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+0Dh]
mov     edx, [esp+1Ch+var_1C]
mov     [edx+9], al
jmp     short loc_405B9E

loc_405B87:
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+6Eh], 0
jg      short loc_405B97
mov     byte ptr [eax+9], 5
jmp     short loc_405B9E

loc_405B97:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 8

loc_405B9E:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+0Ah], 0
and     byte ptr [ebp+0], 0FEh

loc_405BAB:
mov     bx, [ebp+0Ah]
test    bx, bx
jz      short loc_405BBB
mov     ecx, ebx
dec     ecx
mov     [ebp+0Ah], cx

loc_405BBB:
mov     si, [ebp+3Ch]
test    si, si
jz      short loc_405BCB
mov     edi, esi
dec     edi
mov     [ebp+3Ch], di

loc_405BCB:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_405BE4
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 100h
call    sub_4ED88B

loc_405BE4:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_405C35
test    byte ptr [ebp+0], 8
jz      short loc_405C35
lea     edi, [ebp+0Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+190h]
movsd
movsd
push    0
push    offset unk_800000
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
mov     edx, 0D0h
call    sub_4E01FC

loc_405C35:
mov     dword ptr [ebp+14h], 0
jmp     def_406C32      ; jumptable 00406C32 default case
sub_405B18 endp         ; jumptable 00406DEA default case




sub_405C41 proc near
push    edx
lea     edx, [eax+640h]
call    sub_4DE336
mov     eax, [edx+34h]
call    sub_4DE371
mov     eax, [edx+38h]
call    sub_4DE371
pop     edx
retn
sub_405C41 endp




sub_405C5F proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 640h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_405C77
cmp     bl, 1
jz      short loc_405C88
pop     edx
pop     ebx
retn

loc_405C77:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0
mov     word ptr [eax+8], 0

loc_405C88:
test    byte ptr [eax], 20h
jnz     short loc_405C96
test    dword ptr [eax+14h], 0FFFFFFh
jz      short loc_405C99

loc_405C96:
or      byte ptr [eax], 1

loc_405C99:
pop     edx
pop     ebx
retn
sub_405C5F endp




sub_405C9C proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
lea     esi, [eax+640h]
mov     edi, offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_405CC2
cmp     al, 1
jz      short loc_405CD9
jmp     def_406C32      ; jumptable 00406C32 default case
; jumptable 00406DEA default case

loc_405CC2:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     word ptr [esi+4], 50h ; 'P'
mov     word ptr [esi+8], 0

loc_405CD9:
lea     eax, [ebp+1Ch]
mov     [esp+1Ch+var_1C], eax
lea     eax, [edi+1Ch]
cmp     dword ptr [ebp+80h], 0C8000h
jnb     short loc_405D36
mov     dl, [ebp+0ADh]
mov     [ebp+0ACh], dl
push    800h
mov     edx, [edi+54h]
sar     edx, 10h
push    edx
mov     edx, [ebp+54h]
sar     edx, 10h
mov     ecx, eax
mov     ebx, 80h
mov     eax, [esp+24h+var_1C]
call    sub_4DE639
test    eax, eax
jz      short loc_405D29
mov     byte ptr [ebp+9], 6
jmp     loc_405E4E

loc_405D29:
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 6
jmp     loc_405E4E

loc_405D36:
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     short loc_405D84
push    800h
mov     edx, [edi+54h]
sar     edx, 10h
push    edx
mov     edx, [ebp+54h]
sar     edx, 10h
mov     ecx, eax
mov     ebx, 80h
mov     eax, [esp+24h+var_1C]
call    sub_4DE639
test    eax, eax
jz      short loc_405D70
mov     byte ptr [ebp+9], 2
jmp     short loc_405D78

loc_405D70:
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 2

loc_405D78:
mov     word ptr [ebp+0Ah], 0
mov     word ptr [esi+6], 3Ch ; '<'

loc_405D84:
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [edi+14h]
lea     esi, [ebp+14h]
mov     ecx, 20h ; ' '
mov     eax, esi
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     ebx, eax
test    byte ptr [ebp+0A4h], 3
jnz     short loc_405DD5
mov     edx, esi
mov     eax, 0C8h
call    sub_4D8BC3

loc_405DD5:
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
jge     short loc_405E02
neg     eax

loc_405E02:
cmp     eax, 20h ; ' '
jle     short loc_405E35
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 1
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
jmp     short def_406C32 ; jumptable 00406C32 default case
; jumptable 00406DEA default case

loc_405E35:
test    bh, 0Fh
jz      short def_406C32 ; jumptable 00406C32 default case
; jumptable 00406DEA default case
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 1

loc_405E4E:
mov     word ptr [ebp+0Ah], 0

def_406C32:             ; jumptable 00406C32 default case
add     esp, 4          ; jumptable 00406DEA default case

loc_405E57:
pop     ebp

def_406FDB:             ; jumptable 00406FDB default case
pop     edi             ; jumptable 004071EF default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_405C9C endp




sub_405E5E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+640h]
mov     eax, offset byte_5F8364
mov     dl, [ebp+0Ah]
test    dl, dl
jbe     short loc_405E7F
cmp     dl, 1
jz      short loc_405E90
jmp     short loc_405E57

loc_405E7F:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     word ptr [ecx+8], 0

loc_405E90:
mov     edx, [eax+12h]
sar     edx, 10h
mov     esi, ds:dword_50B35A
sar     esi, 10h
sub     edx, esi
mov     esi, edx
mov     ebx, [eax+16h]
sar     ebx, 10h
mov     edx, ds:dword_50B35A+2
sar     edx, 10h
sub     ebx, edx
mov     edx, ebx
mov     ebx, ds:dword_50B35E
sar     ebx, 10h
cmp     esi, ebx
jnb     short loc_405EDD
mov     ebx, ds:dword_50B35E+2
sar     ebx, 10h
cmp     edx, ebx
jnb     short loc_405EDD
mov     byte ptr [ebp+9], 0Ah
mov     byte ptr [ebp+0Dh], 9
jmp     loc_406079

loc_405EDD:
mov     edx, ds:dword_5F8376
sar     edx, 10h
mov     ebx, ds:dword_50B3D2
sar     ebx, 10h
sub     edx, ebx
mov     ebx, edx
mov     edx, ds:dword_5F837A
sar     edx, 10h
mov     esi, ds:dword_50B3D2+2
sar     esi, 10h
sub     edx, esi
mov     esi, ds:dword_50B3D6
sar     esi, 10h
cmp     ebx, esi
ja      short loc_405F21
mov     ebx, ds:dword_50B3D6+2
sar     ebx, 10h
cmp     edx, ebx
jbe     short loc_405F36

loc_405F21:
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 0
jmp     loc_406079

loc_405F36:
lea     esi, [ebp+1Ch]
lea     edx, [eax+1Ch]
cmp     dword ptr [ebp+80h], 0C8000h
jnb     short loc_405F90
mov     cl, [ebp+0ADh]
mov     [ebp+0ACh], cl
push    800h
mov     eax, [eax+54h]
sar     eax, 10h
push    eax
mov     eax, [ebp+54h]
sar     eax, 10h
mov     ecx, edx
mov     ebx, 80h
mov     edx, eax
mov     eax, esi
call    sub_4DE639
test    eax, eax
jz      short loc_405F83
mov     byte ptr [ebp+9], 0Dh
jmp     loc_406079

loc_405F83:
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 0Dh
jmp     loc_406079

loc_405F90:
cmp     word ptr [ecx+3Ch], 0
jnz     short loc_405FDF
cmp     dword ptr [ebp+80h], 200000h
jbe     short loc_405FDF
push    800h
mov     eax, [eax+54h]
sar     eax, 10h
push    eax
mov     eax, [ebp+54h]
sar     eax, 10h
mov     ecx, edx
mov     ebx, 400h
mov     edx, eax
mov     eax, esi
call    sub_4DE639
test    eax, eax
jz      short loc_405FD2
mov     byte ptr [ebp+9], 0Ch
jmp     loc_406079

loc_405FD2:
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 0Ch
jmp     loc_406079

loc_405FDF:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
test    byte ptr [ebp+0A4h], 3
jnz     short loc_40600C
lea     edx, [ebp+14h]
mov     eax, 0C8h
call    sub_4D8BC3

loc_40600C:
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     ecx, [ebp+12h]
sar     ecx, 10h
mov     edx, ds:dword_50B366
sar     edx, 10h
sub     ecx, edx
mov     eax, [ebp+16h]
sar     eax, 10h
mov     edx, ds:dword_50B366+2
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     eax, ds:dword_50B36A
sar     eax, 10h
cmp     ecx, eax
ja      short loc_406063
mov     eax, ds:dword_50B36A+2
sar     eax, 10h
cmp     edx, eax
jbe     loc_405E57

loc_406063:
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

loc_406079:
mov     word ptr [ebp+0Ah], 0
jmp     loc_405E57
sub_405E5E endp




sub_406084 proc near

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
add     eax, 640h
mov     [esp+24h+var_24], eax
mov     esi, offset byte_5F8364
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_4060AC
cmp     al, 1
jz      short loc_4060CB
jmp     loc_406284

loc_4060AC:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 2
mov     eax, [esp+24h+var_24]
mov     word ptr [eax+8], 0
mov     ax, [eax+6]
mov     edx, [esp+24h+var_24]
mov     [edx+4], ax

loc_4060CB:
mov     eax, [esp+24h+var_24]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      short loc_4060EE
test    byte ptr [eax+17h], 2
jnz     short loc_4060EE
cmp     dword ptr [ebp+80h], 48000h
jnb     short loc_4060F9

loc_4060EE:
mov     eax, [esp+24h+var_24]
or      byte ptr [eax], 1
jmp     loc_406284

loc_4060F9:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
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
mov     eax, [ebp+14h]
sar     eax, 10h
mov     ecx, [ebp+2Ch]
sar     ecx, 10h
sub     eax, ecx
test    eax, eax
jge     short loc_40613D
neg     eax

loc_40613D:
cmp     eax, 20h ; ' '
jle     short loc_406170
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 2
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
jmp     short loc_40618F

loc_406170:
test    dh, 0Fh
jz      short loc_4061A2
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 2

loc_406189:
mov     word ptr [ebp+0Ah], 0

loc_40618F:
mov     eax, [esp+24h+var_24]
mov     ax, [eax+4]
mov     edx, [esp+24h+var_24]
mov     [edx+6], ax
jmp     loc_406284

loc_4061A2:
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
jz      short loc_4061DE
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 1
jmp     short loc_406189

loc_4061DE:
cmp     byte ptr [ebp+0A6h], 1
jnz     loc_406284
mov     [esp+24h+var_20], eax
jmp     short loc_4061FF

loc_4061F1:
mov     esi, [esp+24h+var_20]
inc     esi
mov     [esp+24h+var_20], esi
cmp     esi, 3
jge     short loc_40625F

loc_4061FF:
call    sub_4DE13B
mov     [esp+24h+var_1C], eax
test    eax, eax
jz      short loc_4061F1
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     eax, [esp+24h+var_20]
mov     edx, ds:dword_50B3F2[eax*2]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     edi, [esp+24h+var_1C]
lea     edi, [edi+48h]
lea     esi, [ebp+14h]
movsd
movsd
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+24h+var_1C]
mov     [edx+4Ah], ax
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
jmp     short loc_4061F1

loc_40625F:
add     ebp, 14h
mov     ecx, ebp
mov     ebx, 1388h
mov     edx, 7D0h
mov     eax, 1Eh
call    sub_42A70B
mov     edx, ebp
mov     eax, 0C2h
call    sub_4D8BC3

loc_406284:
add     esp, 0Ch
jmp     loc_405E57
sub_406084 endp




sub_40628C proc near

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
add     eax, 640h
mov     [esp+24h+var_24], eax
mov     al, [ebp+0Ah]
cmp     al, 1
jb      short loc_4062B2
jbe     short loc_4062F1
cmp     al, 2
jz      loc_406498
jmp     short loc_406284

loc_4062B2:
test    al, al
jnz     short loc_406284
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 2
mov     eax, [esp+24h+var_24]
mov     word ptr [eax+4], 20h ; ' '
mov     word ptr [eax+8], 0
and     byte ptr [eax], 0FBh
mov     word ptr [eax+3Eh], 0
cmp     word ptr [ebp+56h], 800h
jle     short loc_4062EA
mov     dword ptr [eax+40h], offset unk_50B370
jmp     short loc_4062F1

loc_4062EA:
mov     dword ptr [eax+40h], offset unk_50B3A0

loc_4062F1:
