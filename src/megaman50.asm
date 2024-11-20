mov     edx, 9
mov     eax, 4
call    sub_4A0E24
push    2C400040h
mov     eax, ds:dword_55A2A4
mov     ecx, 50h ; 'P'
xor     ebx, ebx
xor     edx, edx
call    sub_436785
mov     eax, ds:dword_55A2A4
mov     byte ptr [eax+0Eh], 1
inc     byte ptr [esi+0Ch]
mov     dword ptr [esi+1Ch], 0

loc_47A585:
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Bh], 0
jmp     def_47A4D2      ; jumptable 0047A4D2 default case

loc_47A591:             ; jumptable 0047A4D2 case 3
mov     eax, esi
call    sub_47AA5E
mov     eax, ds:dword_55A2A4
cmp     word ptr [eax+6Eh], 0
jg      def_47A4D2      ; jumptable 0047A4D2 default case
call    sub_47AA42
test    eax, eax
jz      short loc_47A5CB
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_47A585
mov     eax, 4
call    sub_4A0E75
call    sub_4D8EB1
jmp     short loc_47A585

loc_47A5CB:
mov     byte ptr [esi+9], 5

loc_47A5CF:
mov     byte ptr [esi+0Ah], 0
jmp     loc_47A4F3

loc_47A5D8:             ; jumptable 0047A4D2 case 4
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_47A4D2      ; jumptable 0047A4D2 default case
mov     edx, 1Fh
xor     eax, eax
call    sub_4A0E24
jmp     loc_47A4EA

loc_47A5FB:             ; jumptable 0047A4D2 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47A4D2      ; jumptable 0047A4D2 default case
mov     eax, 10h
call    sub_4D9040
xor     ebx, ebx
xor     edx, edx
mov     eax, 101h
call    sub_4D89E4
mov     eax, 0Ah
call    sub_49E0D7
jmp     loc_47A4EA

loc_47A62F:             ; jumptable 0047A4D2 case 6
cmp     ds:word_6E23D6, 0
jnz     def_47A4D2      ; jumptable 0047A4D2 default case
cmp     ds:byte_77EAB8, 0
jnz     def_47A4D2      ; jumptable 0047A4D2 default case
mov     eax, ds:dword_55A2A4
mov     byte ptr [eax+8], 2
call    sub_4368E1
mov     eax, ds:dword_55A2A4
call    sub_4367FD
jmp     loc_47A4EA

loc_47A667:             ; jumptable 0047A4D2 case 7
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_47A4D2      ; jumptable 0047A4D2 default case
mov     byte ptr ds:dword_5F836C, 3
xor     dl, dl
mov     byte ptr ds:dword_5F836C+1, dl
jmp     loc_47A4EA

loc_47A68D:             ; jumptable 0047A4D2 case 8
mov     eax, 1Dh
call    sub_47E8B8
mov     byte ptr [esi+8], 2
mov     byte ptr [esi+9], 0
jmp     loc_47A5CF
sub_47A4BC endp




sub_47A6A4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_47A6B8
cmp     al, 1
jz      short loc_47A703
pop     edx
pop     ecx
pop     ebx
retn

loc_47A6B8:
mov     eax, offset byte_5F8364
call    sub_4B56DA
mov     ds:byte_5F88AD, 1
xor     bh, bh
mov     ds:byte_5F84D9, bh
mov     eax, 10h
call    sub_4D9040
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_47A6F0
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1

loc_47A6F0:
mov     edx, 12h
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_47A703:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_47A733
xor     ebx, ebx
xor     edx, edx
mov     eax, 101h
call    sub_4D89E4
mov     byte ptr ds:dword_77E784, 0Ah
xor     dh, dh
mov     byte ptr ds:dword_77E784+1, dh
mov     byte ptr [ecx+8], 2
mov     [ecx+9], dh
mov     [ecx+0Ah], dh

loc_47A733:
pop     edx
pop     ecx
pop     ebx
retn
sub_47A6A4 endp




sub_47A737 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
call    sub_4DE043
mov     edx, eax
test    eax, eax
jz      loc_47A7F4
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 12h
cmp     byte ptr [ecx+3], 0
jnz     short loc_47A771
mov     byte ptr [eax+3], 1
mov     word ptr [eax+14h], 3200h
mov     word ptr [eax+18h], 400h
mov     word ptr [eax+56h], 400h
jmp     short loc_47A78B

loc_47A771:
mov     byte ptr [eax+3], 2
or      byte ptr [eax+6], 20h
mov     word ptr [eax+14h], 0A00h
mov     word ptr [eax+18h], 0E000h
mov     word ptr [eax+56h], 600h

loc_47A78B:
mov     word ptr [eax+16h], 0FFFFh
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
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+44h], 0
mov     word ptr [eax+46h], 0
mov     word ptr [eax+48h], 0
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
mov     ds:dword_55A2A8, eax

loc_47A7F4:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_47A737 endp




sub_47A7F9 proc near
push    edx
call    sub_4DDFD0
test    eax, eax
jz      short loc_47A863
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Ch
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+3], 0
mov     word ptr [eax+14h], 0FE00h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0EA00h
mov     word ptr [eax+56h], 0C00h
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
mov     edx, ds:dword_55A2A8
mov     dl, [edx+1]
mov     [eax+0Ch], dl
mov     byte ptr [eax+0Fh], 1
mov     ds:dword_55A2A4, eax

loc_47A863:
pop     edx
retn
sub_47A7F9 endp




sub_47A865 proc near
push    ebx
push    ecx
mov     ecx, edx
xor     edx, edx
test    ecx, ecx
jbe     short loc_47A876
cmp     ecx, 1
jz      short loc_47A88C
jmp     short loc_47A8A2

loc_47A876:
mov     ecx, [eax+9]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
add     eax, eax
add     eax, offset unk_518C18
jmp     short loc_47A8B6

loc_47A88C:
mov     ecx, [eax+9]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
add     eax, eax
add     eax, offset unk_518C6C
jmp     short loc_47A8B6

loc_47A8A2:
mov     ecx, [eax+9]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
add     eax, eax
add     eax, offset unk_518C78

loc_47A8B6:
mov     bl, [eax]
cmp     bl, 0FFh
jnz     short loc_47A8C2
xor     eax, eax
pop     ecx
pop     ebx
retn

loc_47A8C2:
cmp     bl, 1
jnz     short loc_47A8FE
cmp     byte ptr [eax+1], 3
jnz     short loc_47A8E9

loc_47A8CD:
mov     ecx, ds:dword_5F837A
sar     ecx, 10h
mov     eax, [eax+2]
sar     eax, 10h
cmp     ecx, eax
jle     loc_47A947
jmp     loc_47A942

loc_47A8E9:
mov     ecx, ds:dword_5F837A
sar     ecx, 10h
mov     eax, [eax+2]
sar     eax, 10h
cmp     ecx, eax
jge     short loc_47A947
jmp     short loc_47A942

loc_47A8FE:
test    bl, bl
jnz     short loc_47A923
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_5F8376
sar     ebx, 10h
cmp     ebx, ecx
jle     short loc_47A947
mov     bh, [eax+1]
cmp     bh, 3
jz      short loc_47A8CD
cmp     bh, 5
jz      short loc_47A8E9
jmp     short loc_47A942

loc_47A923:
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_5F8376
sar     ebx, 10h
cmp     ebx, ecx
jge     short loc_47A947
mov     ch, [eax+1]
cmp     ch, 3
jz      short loc_47A8CD
cmp     ch, 5
jz      short loc_47A8E9

loc_47A942:
mov     edx, 1

loc_47A947:
mov     eax, edx
pop     ecx
pop     ebx
retn
sub_47A865 endp




sub_47A94C proc near
push    esi
push    edi
push    ebp
mov     edi, eax
mov     ebp, edx
call    sub_4DDF54
mov     esi, eax
test    eax, eax
jz      loc_47AA2B
mov     byte ptr [eax], 1
mov     dx, [ecx]
mov     [eax+14h], dx
mov     dx, [ecx+2]
mov     [eax+16h], dx
mov     dx, [ecx+4]
mov     [eax+18h], dx
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
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     dx, [ecx+6]
mov     [eax+56h], dx
mov     edx, ebx
shl     edx, 2
cmp     ebp, 2Ch ; ','
jnz     short loc_47A9F8
mov     ds:dword_55A23C[edx], eax
mov     byte ptr [eax+2], 2Ch ; ','
mov     byte ptr [eax+4], 0
mov     edx, ebx
shl     edx, 3
add     edx, offset unk_518DBA
mov     bl, [edx]
mov     [eax+3], bl
mov     bl, [edx+4]
mov     [eax+0Ch], bl
mov     bl, [edx+5]
mov     [eax+0Dh], bl
mov     bl, [edx+6]
mov     [eax+0Eh], bl
mov     dl, [edx+7]
mov     [eax+0Fh], dl
jmp     short loc_47AA25

loc_47A9F8:
mov     ds:dword_55A21C[edx], eax
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+2], 32h ; '2'
mov     byte ptr [eax+4], 2
mov     bl, ds:byte_518D9A[edx]
mov     [eax+0Ch], bl
mov     bl, ds:byte_518D9B[edx]
mov     [eax+0Dh], bl
mov     dl, ds:byte_518D9C[edx]
mov     [eax+0Eh], dl

loc_47AA25:
mov     [esi+3A8h], edi

loc_47AA2B:
pop     ebp
pop     edi
pop     esi
retn
sub_47A94C endp




sub_47AA2F proc near
cmp     word ptr ds:dword_77E7E0, 0
jnz     short locret_47AA41
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0

locret_47AA41:
retn
sub_47AA2F endp




sub_47AA42 proc near
cmp     word ptr ds:dword_77E7E0, 0
jle     short loc_47AA5B
mov     word ptr ds:dword_77E8F8, 0FFFFh
mov     eax, 1
retn

loc_47AA5B:
xor     eax, eax
retn
sub_47AA42 endp




sub_47AA5E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
cmp     al, 1
jb      short loc_47AA70
jbe     short loc_47AA99
pop     edx
pop     ecx
pop     ebx
retn

loc_47AA70:
test    al, al
jnz     short loc_47AAB3
mov     edx, [ecx+1Ch]
cmp     edx, 3Ch ; '<'
jnb     short loc_47AA86
lea     ebx, [edx+1]
mov     [ecx+1Ch], ebx
pop     edx
pop     ecx
pop     ebx
retn

loc_47AA86:
mov     eax, 10h
call    sub_4D9040
mov     dword ptr [ecx+1Ch], 0
jmp     short loc_47AAB0

loc_47AA99:
cmp     ds:byte_77EAB8, 0
jnz     short loc_47AAB3
xor     ebx, ebx
xor     edx, edx
mov     eax, 8000002Ah
call    sub_4D89E4

loc_47AAB0:
inc     byte ptr [ecx+0Bh]

loc_47AAB3:
pop     edx
pop     ecx
pop     ebx
retn
sub_47AA5E endp




sub_47AAB7 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47AABD[edx*4]
pop     edx
retn
sub_47AAB7 endp




sub_47AAC6 proc near
push    edx
mov     dl, [eax+9]
test    dl, dl
jnz     short loc_47AB25
mov     dh, byte ptr ds:dword_560BDC
test    dh, dh
jnz     short loc_47AB31
mov     word ptr ds:dword_77E8F8, dx
or      byte ptr [eax+6], 20h
mov     dl, byte ptr ds:dword_77E5EC
cmp     dl, 2
jb      short loc_47AAF7
jbe     short loc_47AB01
cmp     dl, 3
jz      short loc_47AB07
jmp     short loc_47AB0D

loc_47AAF7:
cmp     dl, 1
jnz     short loc_47AB0D
mov     [eax+3], dh
jmp     short loc_47AB13

loc_47AB01:
mov     byte ptr [eax+3], 1
jmp     short loc_47AB13

loc_47AB07:
mov     byte ptr [eax+3], 2
jmp     short loc_47AB13

loc_47AB0D:
mov     byte ptr [eax+8], 3
pop     edx
retn

loc_47AB13:
mov     dword ptr [eax+1Ch], 0
inc     byte ptr [eax+9]
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0

loc_47AB25:
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_47AB2A[edx*4]

loc_47AB31:
pop     edx
retn
sub_47AAC6 endp




sub_47AB33 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_47AB39[edx*4]
pop     edx
retn
sub_47AB33 endp




sub_47AB42 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
test    al, al
jbe     short loc_47AB56
cmp     al, 1
jz      short loc_47ABA1
pop     edx
pop     ecx
pop     ebx
retn

loc_47AB56:
mov     eax, offset byte_5F8364
call    sub_4B56DA
mov     ds:byte_5F88AD, 1
xor     bh, bh
mov     ds:byte_5F84D9, bh
mov     eax, 10h
call    sub_4D9040
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_47AB8E
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1

loc_47AB8E:
mov     edx, 10h
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_47ABA1:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_47ABDE
xor     ebx, ebx
xor     edx, edx
mov     eax, 182h
call    sub_4D89E4
mov     eax, 10h
call    sub_4D8E2B
mov     byte ptr ds:dword_77E784, 0Ah
xor     dh, dh
mov     byte ptr ds:dword_77E784+1, dh
mov     byte ptr [ecx+8], 3
mov     [ecx+9], dh
mov     [ecx+0Ah], dh
mov     [ecx+0Bh], dh

loc_47ABDE:
pop     edx
pop     ecx
pop     ebx
retn
sub_47AB42 endp



; Attributes: thunk

sub_47ABE2 proc near
jmp     sub_4DE439
sub_47ABE2 endp

jpt_47AC0E dd offset loc_47AC15 ; jump table for switch statement
dd offset loc_47ACC3
dd offset loc_47ACEB
dd offset loc_47ACF3



sub_47ABF7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case
and     eax, 0FFh
jmp     jpt_47AC0E[eax*4] ; switch jump

loc_47AC15:             ; jumptable 0047AC0E case 0
mov     eax, edx
call    sub_47B2DE
or      ds:byte_5F8364, 3
or      ds:byte_5F8421, 40h
xor     ecx, ecx
mov     word ptr ds:dword_5F8376+2, cx
mov     word ptr ds:dword_5F837A, 0FA3Fh
mov     word ptr ds:dword_5F837A+2, 0FF00h
xor     ecx, ecx
mov     ds:dword_5F8380, ecx
mov     ds:dword_5F8384, 0FA3F0000h
mov     ds:dword_5F8388, 0FF000000h
xor     eax, eax
mov     ds:word_5F83BC, ax
xor     ebx, ebx
mov     word ptr ds:dword_5F83B8, bx
mov     word ptr ds:dword_5F83B8+2, 800h
mov     edi, (offset dword_5F838E+2)
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, offset dword_5F8398
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
mov     edi, offset unk_5F83C0
mov     esi, offset dword_5F83B8
movsd
movsd
mov     cl, 1
mov     ds:byte_5F83DA, cl
xor     ch, ch
mov     ds:byte_5F83D8, ch
mov     eax, ds:dword_55A2C4
mov     ds:dword_5F8424, eax
add     [edx+0Ah], cl
jmp     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case

loc_47ACC3:             ; jumptable 0047AC0E case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case
mov     byte ptr ds:dword_5F836C, 3
xor     al, al
mov     byte ptr ds:dword_5F836C+1, al

loc_47ACE3:
inc     byte ptr [edx+0Ah]
jmp     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case

loc_47ACEB:             ; jumptable 0047AC0E case 2
inc     byte ptr ds:dword_5F836C+1
jmp     short loc_47ACE3

loc_47ACF3:             ; jumptable 0047AC0E case 3
mov     ah, ds:byte_5F8421
and     ah, 9Fh
mov     ds:byte_5F8421, ah
mov     bl, ah
or      bl, 20h
mov     ds:byte_5F8421, bl
xor     ebx, ebx
mov     ds:word_57096A, bx
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0
jmp     def_47AC0E      ; jumptable 0047AC0E default case
sub_47ABF7 endp         ; jumptable 0047B78B default case




sub_47AD2B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_47B2DE
or      ds:byte_5F8364, 3
xor     ebx, ebx
mov     word ptr ds:dword_5F8376+2, bx
mov     word ptr ds:dword_5F837A, 0FA3Fh
mov     word ptr ds:dword_5F837A+2, 0FF00h
xor     ecx, ecx
mov     ds:dword_5F8380, ecx
mov     ds:dword_5F8384, 0FA3F0000h
mov     ds:dword_5F8388, 0FF000000h
xor     edi, edi
mov     ds:word_5F83BC, di
xor     eax, eax
mov     word ptr ds:dword_5F83B8, ax
mov     word ptr ds:dword_5F83B8+2, 800h
mov     edi, (offset dword_5F838E+2)
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, offset dword_5F8398
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
mov     edi, offset unk_5F83C0
mov     esi, offset dword_5F83B8
movsd
movsd
mov     bl, 1
mov     ds:byte_5F83DA, bl
xor     bh, bh
mov     ds:byte_5F83D8, bh
mov     eax, ds:dword_55A2C4
mov     ds:dword_5F8424, eax
mov     [edx+8], bl
mov     [edx+9], bh
mov     [edx+0Ah], bh
mov     [edx+0Bh], bh
jmp     def_47AC0E      ; jumptable 0047AC0E default case
sub_47AD2B endp         ; jumptable 0047B78B default case

db 8Dh, 40h, 0
jpt_47AE1D dd offset loc_47AE24 ; jump table for switch statement
dd offset loc_47AE54
dd offset loc_47AE79
dd offset loc_47AE84
dd offset loc_47AEC2
dd offset loc_47AEDE
dd offset loc_47AF13
dd offset loc_47AF47



sub_47AE03 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+9]
cmp     al, 7           ; switch 8 cases
ja      def_47AE1D      ; jumptable 0047AE1D default case
and     eax, 0FFh
jmp     jpt_47AE1D[eax*4] ; switch jump

loc_47AE24:             ; jumptable 0047AE1D case 0
mov     eax, 1
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
mov     eax, 181h
call    sub_4D89E4
mov     eax, ecx
call    sub_47B613
mov     byte ptr [ecx+0Dh], 0
mov     al, [ecx+0Dh]
mov     [ecx+0Ch], al

loc_47AE4D:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_47AE54:             ; jumptable 0047AE1D case 1
cmp     ds:word_6E23D6, 0
jnz     def_47AE1D      ; jumptable 0047AE1D default case
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 5
mov     dword ptr [ecx+1Ch], 0
inc     byte ptr [ecx+9]
jmp     loc_47AF7D

loc_47AE79:             ; jumptable 0047AE1D case 2
mov     eax, ecx
call    sub_47B70F
pop     edx
pop     ecx
pop     ebx
retn

loc_47AE84:             ; jumptable 0047AE1D case 3
mov     eax, ecx
call    sub_47B96F
mov     al, [ecx+0Ch]
cmp     al, [ecx+0Dh]
jz      short loc_47AEB8
mov     eax, ecx
call    sub_47BA86
test    eax, eax
jz      short loc_47AEB8
call    sub_47BBEE
test    eax, eax
jz      short loc_47AEAC
inc     byte ptr [ecx+9]
jmp     short loc_47AEB8

loc_47AEAC:
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0

loc_47AEB8:
mov     al, [ecx+0Ch]
mov     [ecx+0Dh], al
pop     edx
pop     ecx
pop     ebx
retn

loc_47AEC2:             ; jumptable 0047AE1D case 4
mov     edx, [ecx+1Ch]
inc     edx
mov     [ecx+1Ch], edx
cmp     edx, 78h ; 'x'
jnz     def_47AE1D      ; jumptable 0047AE1D default case
or      ds:byte_5F8421, 40h
jmp     loc_47AE4D

loc_47AEDE:             ; jumptable 0047AE1D case 5
mov     eax, 10h
call    sub_4D9040
mov     eax, 9
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
mov     eax, 182h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 184h
call    sub_4D89E4
jmp     loc_47AE4D

loc_47AF13:             ; jumptable 0047AE1D case 6
cmp     ds:word_6E23D6, 0
jnz     short def_47AE1D ; jumptable 0047AE1D default case
mov     bh, ds:byte_77EAB8
test    bh, bh
jnz     short def_47AE1D ; jumptable 0047AE1D default case
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short def_47AE1D ; jumptable 0047AE1D default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, bh
jmp     loc_47AE4D

loc_47AF47:             ; jumptable 0047AE1D case 7
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_47AF5F
mov     eax, 4
call    sub_4A0E75
call    sub_4D8EB1

loc_47AF5F:
call    sub_4368E1
and     byte ptr [edx], 0FEh
mov     byte ptr [edx+76h], 0
mov     eax, 605h
call    sub_47E8B8
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 0

loc_47AF7D:
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0

def_47AE1D:             ; jumptable 0047AE1D default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47AE03 endp

db 8Bh, 0C0h
jpt_47AFC1 dd offset loc_47AFC8 ; jump table for switch statement
dd offset loc_47B00A
dd offset loc_47B036
dd offset loc_47B06F
dd offset loc_47B0A4
dd offset loc_47B0CF
dd offset loc_47B11C



sub_47AFA7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+9]
cmp     al, 6           ; switch 7 cases
ja      def_47AFC1      ; jumptable 0047AFC1 default case
and     eax, 0FFh
jmp     jpt_47AFC1[eax*4] ; switch jump

loc_47AFC8:             ; jumptable 0047AFC1 case 0
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000013h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 181h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 183h
call    sub_4D89E4
mov     eax, 1
call    sub_49E0D7
mov     dword ptr [ecx+1Ch], 0

loc_47B003:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_47B00A:             ; jumptable 0047AFC1 case 1
cmp     ds:word_6E23D6, 0
jnz     def_47AFC1      ; jumptable 0047AFC1 default case
and     ds:byte_5F8421, 0BFh
mov     edx, 5
mov     eax, 4
call    sub_4A0E24
inc     byte ptr [ecx+9]
jmp     loc_47B160

loc_47B036:             ; jumptable 0047AFC1 case 2
mov     eax, ecx
call    sub_47B96F
mov     edx, ds:dword_55A2C8
mov     bh, [edx+0Ch]
cmp     bh, 1
jnz     def_47AFC1      ; jumptable 0047AFC1 default case
call    sub_47BBEE
test    eax, eax
jz      short loc_47B05F
add     [ecx+9], bh
pop     edx
pop     ecx
pop     ebx
retn

loc_47B05F:
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_47B06F:             ; jumptable 0047AFC1 case 3
mov     edx, [ecx+1Ch]
test    edx, edx
jnz     short loc_47B08E
mov     edx, 3
xor     eax, eax
call    sub_4A0E24
mov     eax, 10h
call    sub_4D9040
jmp     short loc_47B09D

loc_47B08E:
cmp     edx, 78h ; 'x'
jnz     short loc_47B09D
or      ds:byte_5F8421, 40h
inc     byte ptr [ecx+9]

loc_47B09D:
inc     dword ptr [ecx+1Ch]
pop     edx
pop     ecx
pop     ebx
retn

loc_47B0A4:             ; jumptable 0047AFC1 case 4
mov     eax, 9
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
mov     eax, 182h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 184h
call    sub_4D89E4
jmp     loc_47B003

loc_47B0CF:             ; jumptable 0047AFC1 case 5
cmp     ds:word_6E23D6, 0
jnz     def_47AFC1      ; jumptable 0047AFC1 default case
cmp     ds:byte_77EAB8, 0
jnz     def_47AFC1      ; jumptable 0047AFC1 default case
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      short def_47AFC1 ; jumptable 0047AFC1 default case
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_47B10F
xor     eax, eax
call    sub_4A0E75
mov     eax, 0FFFFFFFFh
call    sub_4A0595

loc_47B10F:
mov     byte ptr [edx+8], 3
mov     byte ptr [edx+9], 0
jmp     loc_47B003

loc_47B11C:             ; jumptable 0047AFC1 case 6
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_47B134
mov     eax, 4
call    sub_4A0E75
call    sub_4D8EB1

loc_47B134:
call    sub_4368E1
mov     eax, ds:dword_55A2C8
call    sub_4367FD
and     byte ptr [edx], 0FEh
mov     byte ptr [edx+76h], 0
mov     eax, 606h
call    sub_47E8B8
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0

loc_47B160:
mov     byte ptr [ecx+0Bh], 0

def_47AFC1:             ; jumptable 0047AFC1 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47AFA7 endp

db 8Dh, 40h, 0
jpt_47B19D dd offset loc_47B1A4 ; jump table for switch statement
dd offset loc_47B1D1
dd offset loc_47B1FD
dd offset loc_47B23D
dd offset loc_47B25A
dd offset loc_47B292



sub_47B183 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+9]
cmp     al, 5           ; switch 6 cases
ja      def_47B19D      ; jumptable 0047B19D default case
and     eax, 0FFh
jmp     jpt_47B19D[eax*4] ; switch jump

loc_47B1A4:             ; jumptable 0047B19D case 0
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000014h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 181h
call    sub_4D89E4
mov     eax, 1
call    sub_49E0D7

loc_47B1CA:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_47B1D1:             ; jumptable 0047B19D case 1
cmp     ds:word_6E23D6, 0
jnz     def_47B19D      ; jumptable 0047B19D default case
and     ds:byte_5F8421, 0BFh
mov     edx, 0Ch
mov     eax, 4
call    sub_4A0E24
inc     byte ptr [ecx+9]
jmp     loc_47B2D6

loc_47B1FD:             ; jumptable 0047B19D case 2
mov     eax, ecx
call    sub_47B96F
mov     edx, ds:dword_55A2C8
mov     bl, [edx+0Ch]
cmp     bl, 1
jnz     def_47B19D      ; jumptable 0047B19D default case
call    sub_47BBEE
test    eax, eax
jz      short loc_47B22D
or      ds:byte_5F8421, 40h
add     [ecx+9], bl
pop     edx
pop     ecx
pop     ebx
retn

loc_47B22D:
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_47B23D:             ; jumptable 0047B19D case 3
mov     eax, 9
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
mov     eax, 182h
call    sub_4D89E4
jmp     loc_47B1CA

loc_47B25A:             ; jumptable 0047B19D case 4
cmp     ds:word_6E23D6, 0
jnz     def_47B19D      ; jumptable 0047B19D default case
mov     bh, ds:byte_77EAB8
test    bh, bh
jnz     short def_47B19D ; jumptable 0047B19D default case
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short def_47B19D ; jumptable 0047B19D default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, bh
jmp     loc_47B1CA

loc_47B292:             ; jumptable 0047B19D case 5
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_47B2AA
mov     eax, 4
call    sub_4A0E75
call    sub_4D8EB1

loc_47B2AA:
call    sub_4368E1
mov     eax, ds:dword_55A2C8
call    sub_4367FD
and     byte ptr [edx], 0FEh
mov     byte ptr [edx+76h], 0
mov     eax, 607h
call    sub_47E8B8
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0

loc_47B2D6:
mov     byte ptr [ecx+0Bh], 0

def_47B19D:             ; jumptable 0047B19D default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47B183 endp




sub_47B2DE proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
mov     eax, ds:dword_55A10C
mov     eax, [eax+28h]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 5
mov     word ptr ds:dword_77E7E0+2, ax
call    sub_4DDF54
mov     ebp, eax
test    eax, eax
jz      loc_47B419
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Ah
mov     byte ptr [eax+4], 1
mov     ebx, [esp+1Ch+var_1C]
mov     bl, [ebx+3]
mov     [eax+3], bl
mov     word ptr [eax+14h], 0
cmp     byte ptr [eax+3], 1
mov     word ptr [eax+16h], 0FC00h
mov     word ptr [eax+18h], 0
mov     ebx, [eax+12h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+1Ch], ebx
mov     ebx, [eax+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+20h], ebx
mov     ebx, [eax+16h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+24h], ebx
mov     word ptr [eax+58h], 0
mov     bx, [eax+58h]
mov     [eax+56h], bx
mov     [eax+54h], bx
mov     word ptr [eax+48h], 0
mov     bx, [eax+48h]
mov     [eax+46h], bx
mov     [eax+44h], bx
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
mov     ebx, [esp+1Ch+var_1C]
mov     [eax+3D8h], ebx
mov     dh, [eax+3]
test    dh, dh
jnz     short loc_47B3C6
mov     bx, word ptr ds:dword_77E7E0+2
mov     word ptr ds:dword_77E7E0, bx
mov     [eax+0ACh], dh
mov     byte ptr [eax+0ADh], 0FFh
mov     [eax+0Ch], dh
jmp     short loc_47B414

loc_47B3C6:
mov     ebp, ds:dword_55A10C
mov     ebp, [ebp+28h]
xor     ebx, ebx
mov     bl, [ebp+0Bh]
shl     ebx, 5
add     word ptr ds:dword_77E7E0, bx
mov     ebp, ds:dword_77E7DC+2
sar     ebp, 10h
mov     ebx, ds:dword_77E7E0
sar     ebx, 10h
cmp     ebp, ebx
jle     short loc_47B402
mov     bx, word ptr ds:dword_77E7E0+2
mov     word ptr ds:dword_77E7E0, bx

loc_47B402:
mov     byte ptr [eax+0ACh], 1
mov     byte ptr [eax+0ADh], 0FFh
mov     byte ptr [eax+0Ch], 2Eh ; '.'

loc_47B414:
mov     ds:dword_55A2C4, eax

loc_47B419:
mov     eax, ds:dword_55A10C
mov     ebx, [eax+28h]
mov     bl, [ebx+0Ah]
and     ebx, 0FFh
xor     edx, edx
xor     eax, eax
call    sub_4368BF
mov     eax, [esp+1Ch+var_1C]
mov     bl, [eax+3]
test    bl, bl
jnz     loc_47B4DA
call    sub_4DDF54
test    eax, eax
jz      loc_47B5F4
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 66h ; 'f'
mov     [eax+3], bl
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0F400h
mov     word ptr [eax+18h], 3070h
mov     ebx, [eax+12h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+1Ch], ebx
mov     ebx, [eax+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+20h], ebx
mov     ebx, [eax+16h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+24h], ebx
mov     word ptr [eax+58h], 0
mov     bx, [eax+58h]
mov     [eax+56h], bx
mov     [eax+54h], bx
mov     word ptr [eax+48h], 0
mov     bx, [eax+48h]
mov     [eax+46h], bx
mov     [eax+44h], bx
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
mov     byte ptr [eax+0Ch], 5
mov     ds:dword_55A2AC, eax
jmp     loc_47B5F4

loc_47B4DA:
call    sub_4DDFD0
mov     ebp, eax
test    eax, eax
jz      loc_47B5F4
mov     byte ptr [eax], 1
mov     ebx, [esp+1Ch+var_1C]
mov     cl, [ebx+3]
cmp     cl, 1
jnz     short loc_47B536
mov     byte ptr [eax+2], 12h
mov     [eax+3], cl
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0E600h
mov     word ptr [eax+18h], 600h
mov     word ptr [eax+56h], 0
mov     word ptr [eax+0B0h], 0
mov     bx, [eax+0B0h]
mov     [eax+6Eh], bx
push    2C004000h
mov     ecx, 60h ; '`'
jmp     short loc_47B574

loc_47B536:
mov     byte ptr [eax+2], 0Fh
mov     byte ptr [eax+3], 0
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0F800h
mov     word ptr [eax+18h], 800h
mov     word ptr [eax+56h], 400h
mov     word ptr [eax+0B0h], 0
mov     bx, [eax+0B0h]
mov     [eax+6Eh], bx
push    2C004080h
mov     ecx, 50h ; 'P'

loc_47B574:
xor     ebx, ebx
xor     edx, edx
call    sub_436785
mov     byte ptr [ebp+4], 0
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
mov     word ptr [ebp+58h], 0
mov     ax, [ebp+58h]
mov     [ebp+54h], ax
mov     word ptr [ebp+48h], 0
mov     ax, [ebp+48h]
mov     [ebp+46h], ax
mov     [ebp+44h], ax
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
cmp     byte ptr [ebp+2], 12h
jnz     short loc_47B5EE
mov     eax, [esp+1Ch+var_1C]
mov     [ebp+490h], eax

loc_47B5EE:
mov     ds:dword_55A2C8, ebp

loc_47B5F4:
add     esp, 4

loc_47B5F7:
pop     ebp

def_47AC0E:             ; jumptable 0047AC0E default case
pop     edi             ; jumptable 0047B78B default case

loc_47B5F9:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47B2DE endp

db 90h
jpt_47B6E4 dd offset loc_47B636 ; jump table for switch statement
dd offset loc_47B628
dd offset loc_47B644
dd offset loc_47B620
dd offset loc_47B64C



sub_47B613 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     bl, bl
jmp     loc_47B6AF

loc_47B620:             ; jumptable 0047B6E4 case 3
mov     word ptr [eax+14h], 0FC00h
jmp     short loc_47B652

loc_47B628:             ; jumptable 0047B6E4 case 1
mov     word ptr [eax+14h], 0FE00h

loc_47B62E:
mov     word ptr [eax+18h], 2300h
jmp     short def_47B6E4 ; jumptable 0047B6E4 default case

loc_47B636:             ; jumptable 0047B6E4 case 0
mov     word ptr [eax+14h], 0
mov     word ptr [eax+18h], 2000h
jmp     short def_47B6E4 ; jumptable 0047B6E4 default case

loc_47B644:             ; jumptable 0047B6E4 case 2
mov     word ptr [eax+14h], 200h
jmp     short loc_47B62E

loc_47B64C:             ; jumptable 0047B6E4 case 4
mov     word ptr [eax+14h], 400h

loc_47B652:
mov     word ptr [eax+18h], 2600h

def_47B6E4:             ; jumptable 0047B6E4 default case
mov     word ptr [edx+16h], 0F780h
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
mov     word ptr [edx+58h], 0
mov     ax, [edx+58h]
mov     [edx+56h], ax
mov     [edx+54h], ax
mov     [edx+3A8h], esi
movsx   eax, bl
mov     ds:dword_55A2B0[eax*4], edx

loc_47B6A4:
inc     bl
cmp     bl, 5
jge     loc_47B5F9

loc_47B6AF:
call    sub_4DDF54
mov     edx, eax
test    eax, eax
jz      short loc_47B6A4
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 32h ; '2'
mov     byte ptr [eax+4], 3
mov     byte ptr [eax+3], 0
mov     [eax+0Ch], bl
mov     [eax+0Dh], bl
mov     byte ptr [eax+0Eh], 5
mov     byte ptr [eax+0Fh], 0
cmp     bl, 4           ; switch 5 cases
ja      def_47B6E4      ; jumptable 0047B6E4 default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_47B6E4[ecx*4] ; switch jump
sub_47B613 endp

jpt_47B78B dd offset loc_47B792 ; jump table for switch statement
dd offset loc_47B7E1
dd offset loc_47B80A
dd offset loc_47B872
dd offset loc_47B899
dd offset loc_47B8BF
dd offset loc_47B8D7
dd offset loc_47B908
dd offset loc_47B911



sub_47B70F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, offset byte_5F8364
cmp     byte ptr [eax+0Ah], 3
jnb     short loc_47B77C
call    sub_47EBCB
test    eax, eax
jz      short loc_47B77C
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_47B73F
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1

loc_47B73F:
mov     eax, 11h
call    sub_4D8E2B
mov     eax, ds:dword_55A2C4
mov     byte ptr [eax+0ACh], 1
mov     eax, ds:dword_55A2C4
mov     byte ptr [eax+0ADh], 0FFh
mov     eax, ds:dword_55A2C4
mov     byte ptr [eax+0Ch], 2Eh ; '.'
mov     eax, 9
call    sub_49E0D7
mov     byte ptr [ecx+0Eh], 1
mov     byte ptr [ecx+0Ah], 3

loc_47B77C:
mov     al, [ecx+0Ah]
cmp     al, 8           ; switch 9 cases
ja      def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case
xor     ebx, ebx
mov     bl, al
jmp     jpt_47B78B[ebx*4] ; switch jump

loc_47B792:             ; jumptable 0047B78B case 0
xor     esi, esi
mov     ds:word_57096A, si
mov     esi, [ecx+1Ch]
inc     esi
mov     [ecx+1Ch], esi
cmp     esi, 6
jnz     short loc_47B7B8
mov     edx, 1
xor     eax, eax
call    sub_4A0E24
jmp     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case

loc_47B7B8:
cmp     esi, 0Ah
jnz     short loc_47B7D0
xor     ebx, ebx
xor     edx, edx
mov     eax, 19Eh

loc_47B7C6:
call    sub_4D89E4
jmp     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case

loc_47B7D0:
cmp     esi, 28h ; '('

loc_47B7D3:             ; jumptable 0047AC0E default case
jnz     def_47AC0E      ; jumptable 0047B78B default case

loc_47B7D9:
inc     byte ptr [ecx+0Ah]
jmp     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case

loc_47B7E1:             ; jumptable 0047B78B case 1
mov     ax, [edx+126h]
or      ax, [edx+13Eh]
mov     dx, [edx+140h]
or      eax, edx
mov     ds:word_57096A, ax
mov     edx, [ecx+1Ch]
inc     edx
mov     [ecx+1Ch], edx
cmp     edx, 6Ch ; 'l'
jmp     short loc_47B7D3

loc_47B80A:             ; jumptable 0047B78B case 2
xor     edi, edi
mov     ds:word_57096A, di
mov     esi, [ecx+1Ch]
inc     esi
mov     [ecx+1Ch], esi
cmp     esi, 0A0h
jnz     short loc_47B82D
xor     ebx, ebx
xor     edx, edx
mov     eax, 19Fh
jmp     short loc_47B7C6

loc_47B82D:
cmp     esi, 0B4h
jnz     short loc_47B85D
mov     edx, ds:dword_55A2C4
mov     byte ptr [edx+0ACh], 1
mov     edx, ds:dword_55A2C4
mov     byte ptr [edx+0ADh], 0FFh
mov     eax, ds:dword_55A2C4
mov     byte ptr [eax+0Ch], 0
jmp     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case

loc_47B85D:
cmp     esi, 140h
jnz     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case
mov     byte ptr [ecx+0Ah], 6
jmp     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case

loc_47B872:             ; jumptable 0047B78B case 3
mov     bx, ds:word_6E23D6
test    bx, bx
jnz     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case
mov     ds:word_57096A, bx
mov     dword ptr [ecx+1Ch], 0
mov     byte ptr [ecx+0Eh], 2
jmp     loc_47B7D9

loc_47B899:             ; jumptable 0047B78B case 4
mov     edx, [ecx+1Ch]
inc     edx
mov     [ecx+1Ch], edx
cmp     edx, 0Fh
jnz     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case
mov     eax, 1
call    sub_49E0D7
mov     dword ptr [ecx+1Ch], 0
jmp     loc_47B7D9

loc_47B8BF:             ; jumptable 0047B78B case 5
cmp     ds:word_6E23D6, 0

loc_47B8C7:             ; jumptable 0047AC0E default case
jnz     def_47AC0E      ; jumptable 0047B78B default case
inc     al
mov     [ecx+0Ah], al
jmp     def_47AC0E      ; jumptable 0047AC0E default case
; jumptable 0047B78B default case

loc_47B8D7:             ; jumptable 0047B78B case 6
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_47B8EC
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1

loc_47B8EC:
xor     edx, edx
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
xor     edx, edx
mov     eax, 182h
call    sub_4D89E4
jmp     loc_47B7D9

loc_47B908:             ; jumptable 0047B78B case 7
test    byte ptr ds:dword_55BD7C+3, 8
jmp     short loc_47B8C7

loc_47B911:             ; jumptable 0047B78B case 8
mov     eax, edx
call    sub_4B565A
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000012h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 19Fh
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 181h
call    sub_4D89E4
mov     dword ptr [ecx+1Ch], 0
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Ah], 0
jmp     def_47AC0E      ; jumptable 0047AC0E default case
sub_47B70F endp         ; jumptable 0047B78B default case

db 8Bh, 0C0h
jpt_47B996 dd offset loc_47B99D ; jump table for switch statement
dd offset loc_47B9F4
dd offset loc_47BA27
dd offset loc_47BA41
dd offset loc_47BA5F
dd offset def_47B996



sub_47B96F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     si, word ptr ds:dword_77E7E0
mov     ax, word ptr ds:dword_77E7E0+2
mov     dl, [ecx+0Bh]
cmp     dl, 5           ; switch 6 cases
ja      def_47B996      ; jumptable 0047B996 default case, case 5
and     edx, 0FFh
jmp     jpt_47B996[edx*4] ; switch jump

loc_47B99D:             ; jumptable 0047B996 case 0
movsx   ebx, ax
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
mov     ebp, eax
shl     eax, 2
sub     eax, ebp
movsx   edi, si
cmp     edi, eax
jle     short loc_47B9C6
mov     byte ptr [ecx+0Bh], 1
jmp     def_47B996      ; jumptable 0047B996 default case, case 5

loc_47B9C6:
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
cmp     edi, eax
jle     short loc_47B9DE
mov     byte ptr [ecx+0Bh], 2
jmp     def_47B996      ; jumptable 0047B996 default case, case 5

loc_47B9DE:
cmp     edi, ebp
jle     short loc_47B9EB
mov     byte ptr [ecx+0Bh], 3
jmp     def_47B996      ; jumptable 0047B996 default case, case 5

loc_47B9EB:
mov     byte ptr [ecx+0Bh], 5
jmp     def_47B996      ; jumptable 0047B996 default case, case 5

loc_47B9F4:             ; jumptable 0047B996 case 1
movsx   edx, ax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
mov     edx, eax
shl     eax, 2
sub     eax, edx
movsx   edx, si
cmp     edx, eax
jg      short def_47B996 ; jumptable 0047B996 default case, case 5
mov     edx, 0Dh

loc_47BA17:
mov     eax, 4
call    sub_4A0E24
mov     byte ptr [ecx+0Bh], 4
jmp     short def_47B996 ; jumptable 0047B996 default case, case 5

loc_47BA27:             ; jumptable 0047B996 case 2
movsx   edx, ax
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
movsx   edx, si
cmp     edx, eax
jg      short def_47B996 ; jumptable 0047B996 default case, case 5
mov     edx, 0Eh
jmp     short loc_47BA17

loc_47BA41:             ; jumptable 0047B996 case 3
movsx   edx, ax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
movsx   edx, si
cmp     edx, eax
jg      short def_47B996 ; jumptable 0047B996 default case, case 5
mov     edx, 0Fh
jmp     short loc_47BA17

loc_47BA5F:             ; jumptable 0047B996 case 4
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short def_47B996 ; jumptable 0047B996 default case, case 5
mov     byte ptr [ecx+0Bh], 0

def_47B996:             ; jumptable 0047B996 default case, case 5
test    si, si
jnz     loc_47B5F7
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
jmp     loc_47B5F7
sub_47B96F endp




sub_47BA86 proc near

var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     edx, eax
xor     al, al
mov     [esp+14h+var_14], al
jmp     short loc_47BA9C

loc_47BA96:
inc     al
cmp     al, 5
jge     short loc_47BAB5

loc_47BA9C:
mov     ebx, [edx+9]
sar     ebx, 18h
movsx   ecx, al
mov     esi, 1
shl     esi, cl
test    ebx, esi
jnz     short loc_47BA96
inc     [esp+14h+var_14]
jmp     short loc_47BA96

loc_47BAB5:
mov     bh, [esp+14h+var_14]
cmp     bh, 1
jb      short loc_47BACD
jbe     short loc_47BAF7
cmp     bh, 2
jz      loc_47BB5D
jmp     loc_47BBB0

loc_47BACD:
test    bh, bh
jnz     loc_47BBB0
xor     ebx, ebx
xor     edx, edx
mov     eax, 183h
call    sub_4D89E4
mov     edx, ds:dword_55A2AC
mov     byte ptr [edx+0Ch], 0
mov     ecx, 1
jmp     loc_47BB53

loc_47BAF7:
xor     al, al
jmp     short loc_47BB01

loc_47BAFB:
inc     al
cmp     al, 5
jge     short loc_47BB41

loc_47BB01:
mov     ebx, [edx+9]
sar     ebx, 18h
movsx   ecx, al
mov     esi, 1
shl     esi, cl
test    ebx, esi
jnz     short loc_47BAFB
movsx   ecx, al
shl     ecx, 2
mov     ebx, ds:dword_55A2B0[ecx]
mov     ah, [ebx+0Fh]
test    ah, ah
jnz     short loc_47BAFB
mov     [ebx+0Dh], ah
mov     ebx, ds:dword_55A2B0[ecx]
mov     byte ptr [ebx+0Eh], 1
mov     ecx, ds:dword_55A2B0[ecx]
mov     byte ptr [ecx+0Fh], 1
jmp     short loc_47BAFB

loc_47BB41:
mov     byte ptr [edx+0Fh], 0

loc_47BB45:
mov     edx, ds:dword_55A2AC
mov     al, [esp+14h+var_14]
mov     [edx+0Ch], al
xor     ecx, ecx

loc_47BB53:
mov     eax, ecx
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47BB5D:
xor     al, al
xor     ah, ah
jmp     short loc_47BB69

loc_47BB63:
inc     al
cmp     al, 5
jge     short loc_47BBAA

loc_47BB69:
mov     ebx, [edx+9]
sar     ebx, 18h
movsx   ecx, al
mov     esi, 1
shl     esi, cl
test    ebx, esi
jnz     short loc_47BB63
movsx   ecx, al
shl     ecx, 2
mov     ebx, ds:dword_55A2B0[ecx]
cmp     byte ptr [ebx+0Fh], 0
jnz     short loc_47BB63
mov     [ebx+0Dh], ah
mov     ebx, ds:dword_55A2B0[ecx]
mov     byte ptr [ebx+0Eh], 2
mov     ecx, ds:dword_55A2B0[ecx]
mov     byte ptr [ecx+0Fh], 1
inc     ah
jmp     short loc_47BB63

loc_47BBAA:
mov     byte ptr [edx+0Fh], 2
jmp     short loc_47BB45

loc_47BBB0:
xor     al, al
xor     ah, ah
jmp     short loc_47BBBC

loc_47BBB6:
inc     al
cmp     al, 5
jge     short loc_47BB45

loc_47BBBC:
mov     ebx, [edx+9]
sar     ebx, 18h
movsx   ecx, al
mov     esi, 1
shl     esi, cl
test    ebx, esi
jnz     short loc_47BBB6
movsx   ecx, al
mov     ebx, ds:dword_55A2B0[ecx*4]
mov     [ebx+0Dh], ah
mov     ecx, ds:dword_55A2B0[ecx*4]
mov     bl, [esp+14h+var_14]
mov     [ecx+0Eh], bl
inc     ah
jmp     short loc_47BBB6
sub_47BA86 endp




sub_47BBEE proc near
cmp     word ptr ds:dword_77E7E0, 0
jle     short loc_47BC07
mov     word ptr ds:dword_77E8F8, 0FFFFh
mov     eax, 1
retn

loc_47BC07:
xor     eax, eax
retn
sub_47BBEE endp




sub_47BC0A proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 10h
mov     ecx, eax
mov     ah, [eax+0Ch]
inc     ah
mov     [ecx+0Ch], ah
cmp     ah, 4
jnz     short loc_47BC39
mov     byte ptr [ecx+0Ch], 0
mov     dh, [ecx+0Dh]
inc     dh
mov     [ecx+0Dh], dh
cmp     dh, ah
jnz     short loc_47BC39
mov     eax, ecx
call    sub_4DE439
jmp     short loc_47BC64

loc_47BC39:
mov     eax, [ecx+1Ch]
mov     ebx, 5
xor     edx, edx
mov     esi, esp
call    sub_4EE48D
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
shl     ebx, 3
add     ebx, offset unk_518EB4
xor     edx, edx
mov     eax, [esp+20h+var_18]
call    sub_4EE54C

loc_47BC64:
add     esp, 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47BC0A endp

; START OF FUNCTION CHUNK FOR sub_4907A4

loc_47BC6C:
push    edx
call    sub_4DE1BE
mov     edx, eax
test    eax, eax
jz      short loc_47BC96
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+0Dh], 0
mov     al, [eax+0Dh]
mov     [edx+0Ch], al
mov     eax, 0C0000h
call    sub_4A7AAC
mov     [edx+1Ch], eax

loc_47BC96:
pop     edx
retn
; END OF FUNCTION CHUNK FOR sub_4907A4



sub_47BC98 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47BC9E[edx*4]
pop     edx
retn
sub_47BC98 endp




sub_47BCA7 proc near
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
retn
sub_47BCA7 endp




sub_47BCBF proc near

var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     esi, eax
movzx   edi, byte ptr [eax+0Ah]
mov     ebp, ds:dword_77E6DC
mov     [esp+20h+var_20], 2D0h
lea     eax, [ebp+18h]
mov     ds:dword_77E6DC, eax
mov     eax, edi
add     eax, 140h
mov     [esp+20h+var_1E], ax
mov     [esp+20h+var_1C], 10h
mov     eax, 40h ; '@'
sub     eax, edi
mov     [esp+20h+var_1A], ax
mov     ecx, 100h
mov     ebx, 2D0h
mov     edx, esp
mov     eax, ebp
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, ebp
call    sub_4F87A6
test    edi, edi
jz      short loc_47BD69
mov     ebp, ds:dword_77E6DC
mov     [esp+20h+var_1E], 140h
mov     [esp+20h+var_1A], di
lea     eax, [ebp+18h]
mov     ds:dword_77E6DC, eax
mov     ecx, 140h
sub     ecx, edi
mov     ebx, 2D0h
mov     edx, esp
mov     eax, ebp
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, ebp
call    sub_4F87A6

loc_47BD69:
test    edi, edi
jnz     short loc_47BD73
mov     byte ptr [esi+0Ah], 3Eh ; '>'
jmp     short loc_47BD77

loc_47BD73:
sub     byte ptr [esi+0Ah], 2

loc_47BD77:
movzx   edi, byte ptr [esi+0Bh]
mov     ebp, ds:dword_77E6DC
mov     [esp+20h+var_20], 2C8h
lea     eax, [ebp+18h]
mov     ds:dword_77E6DC, eax
mov     eax, edi
add     eax, 120h
mov     [esp+20h+var_1E], ax
mov     [esp+20h+var_1C], 8
mov     eax, 20h ; ' '
sub     eax, edi
mov     [esp+20h+var_1A], ax
mov     ecx, 100h
mov     ebx, 2C8h
mov     edx, esp
mov     eax, ebp
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, ebp
call    sub_4F87A6
test    edi, edi
jz      short loc_47BE16
mov     ebp, ds:dword_77E6DC
mov     [esp+20h+var_1E], 120h
mov     [esp+20h+var_1A], di
lea     eax, [ebp+18h]
mov     ds:dword_77E6DC, eax
mov     ecx, 120h
sub     ecx, edi
mov     ebx, 2C8h
mov     edx, esp
mov     eax, ebp
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, ebp
call    sub_4F87A6

loc_47BE16:
test    edi, edi
jnz     short loc_47BE20
mov     byte ptr [esi+0Bh], 1Fh
jmp     short loc_47BE23

loc_47BE20:
dec     byte ptr [esi+0Bh]

loc_47BE23:
mov     edi, [esi+9]
sar     edi, 18h
mov     ebp, ds:dword_77E6DC
mov     [esp+20h+var_20], 370h
lea     eax, [ebp+18h]
mov     ds:dword_77E6DC, eax
mov     eax, edi
add     eax, 140h
mov     [esp+20h+var_1E], ax
mov     [esp+20h+var_1C], 10h
mov     eax, 40h ; '@'
sub     eax, edi
mov     [esp+20h+var_1A], ax
mov     ecx, 100h
mov     ebx, 370h
mov     edx, esp
mov     eax, ebp
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, ebp
call    sub_4F87A6
test    edi, edi
jz      short loc_47BEC4
mov     ebp, ds:dword_77E6DC
mov     [esp+20h+var_1E], 140h
mov     [esp+20h+var_1A], di
lea     eax, [ebp+18h]
mov     ds:dword_77E6DC, eax
mov     ecx, 140h
sub     ecx, edi
mov     ebx, 370h
mov     edx, esp
mov     eax, ebp
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, ebp
call    sub_4F87A6

loc_47BEC4:
test    edi, edi
jnz     short loc_47BECE
mov     byte ptr [esi+0Ch], 3Eh ; '>'
jmp     short loc_47BED2

loc_47BECE:
sub     byte ptr [esi+0Ch], 2

loc_47BED2:
mov     edi, [esi+0Ah]
sar     edi, 18h
mov     ebp, ds:dword_77E6DC
mov     [esp+20h+var_20], 368h
lea     eax, [ebp+18h]
mov     ds:dword_77E6DC, eax
mov     eax, edi
add     eax, 160h
mov     [esp+20h+var_1E], ax
mov     [esp+20h+var_1C], 8
mov     eax, 20h ; ' '
sub     eax, edi
mov     [esp+20h+var_1A], ax
mov     ecx, 140h
mov     ebx, 368h
mov     edx, esp
mov     eax, ebp
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, ebp
call    sub_4F87A6
test    edi, edi
jz      short loc_47BF73
mov     ebp, ds:dword_77E6DC
mov     [esp+20h+var_1E], 160h
mov     [esp+20h+var_1A], di
lea     eax, [ebp+18h]
mov     ds:dword_77E6DC, eax
mov     ecx, 160h
sub     ecx, edi
mov     ebx, 368h
mov     edx, esp
mov     eax, ebp
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, ebp
call    sub_4F87A6

loc_47BF73:
test    edi, edi
jnz     short loc_47BF7D
mov     byte ptr [esi+0Dh], 1Fh
jmp     short loc_47BF80

loc_47BF7D:
dec     byte ptr [esi+0Dh]

loc_47BF80:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47BCBF endp




sub_47BF8A proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_47BF90[edx*4]
pop     edx
retn
sub_47BF8A endp

align 2
jpt_47BFC7 dd offset loc_47BFCE ; jump table for switch statement
dd offset loc_47BFDC
dd offset loc_47C019
dd offset loc_47C039
dd offset loc_47C050
dd offset loc_47C07D



sub_47BFB2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+8]
cmp     al, 5           ; switch 6 cases
ja      def_47BFC7      ; jumptable 0047BFC7 default case
and     eax, 0FFh
jmp     jpt_47BFC7[eax*4] ; switch jump

loc_47BFCE:             ; jumptable 0047BFC7 case 0
mov     dword ptr [ecx+1Ch], 0

loc_47BFD5:
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_47BFDC:             ; jumptable 0047BFC7 case 1
mov     eax, ds:dword_5F8376
sar     eax, 10h
cmp     eax, 0FFFFF700h
jge     def_47BFC7      ; jumptable 0047BFC7 default case
call    sub_4B55BB
test    eax, eax
jz      loc_47C09A
or      ds:byte_5F8421, 40h
mov     eax, 10h
call    sub_4D9040
mov     eax, 26h ; '&'
call    sub_47E8B8
jmp     short loc_47BFD5

loc_47C019:             ; jumptable 0047BFC7 case 2
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      def_47BFC7      ; jumptable 0047BFC7 default case
or      ds:byte_5F8421, 40h
call    sub_4A0E35
jmp     short loc_47BFD5

loc_47C039:             ; jumptable 0047BFC7 case 3
mov     eax, 0Eh
call    sub_49E0D7
mov     eax, 10h
call    sub_4D9040
inc     byte ptr [ecx+8]

loc_47C050:             ; jumptable 0047BFC7 case 4
mov     ebx, 5
xor     edx, edx
mov     eax, [ecx+1Ch]
div     ebx
test    edx, edx
jnz     short loc_47C06C
xor     ebx, ebx
mov     eax, 0A1h
call    sub_4D89E4

loc_47C06C:
mov     edx, [ecx+1Ch]
inc     edx
mov     [ecx+1Ch], edx
cmp     edx, 2Eh ; '.'
jnz     short def_47BFC7 ; jumptable 0047BFC7 default case
jmp     loc_47BFD5

loc_47C07D:             ; jumptable 0047BFC7 case 5
cmp     ds:word_6E23D6, 0
jnz     short def_47BFC7 ; jumptable 0047BFC7 default case
cmp     ds:byte_77EAB8, 0
jnz     short def_47BFC7 ; jumptable 0047BFC7 default case
mov     eax, 10h
call    sub_47E8B8

loc_47C09A:
mov     eax, ecx
call    sub_4DE439

def_47BFC7:             ; jumptable 0047BFC7 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47BFB2 endp

align 2
jpt_47C0D2 dd offset loc_47C0D9 ; jump table for switch statement
dd offset loc_47C107
dd offset loc_47C12A
dd offset loc_47C138
dd offset loc_47C151
dd offset loc_47C164



sub_47C0BE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+8]
cmp     al, 5           ; switch 6 cases
ja      def_47C0D2      ; jumptable 0047C0D2 default case
xor     edx, edx
mov     dl, al
jmp     jpt_47C0D2[edx*4] ; switch jump

loc_47C0D9:             ; jumptable 0047C0D2 case 0
mov     eax, ds:dword_5F8376
sar     eax, 10h
cmp     eax, 0FFFFF830h
jle     def_47C0D2      ; jumptable 0047C0D2 default case
call    sub_4B55BB
test    eax, eax
jz      loc_47C1B9
or      ds:byte_5F8421, 40h

loc_47C100:
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_47C107:             ; jumptable 0047C0D2 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_47C0D2      ; jumptable 0047C0D2 default case
mov     byte ptr ds:dword_5F836C, 3
xor     bh, bh
mov     byte ptr ds:dword_5F836C+1, bh
jmp     short loc_47C100

loc_47C12A:             ; jumptable 0047C0D2 case 2
mov     edx, 0Bh
xor     eax, eax
call    sub_4A0E24
jmp     short loc_47C100

loc_47C138:             ; jumptable 0047C0D2 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_47C0D2      ; jumptable 0047C0D2 default case
mov     eax, 0Ah
call    sub_49E0D7
jmp     short loc_47C100

loc_47C151:             ; jumptable 0047C0D2 case 4
cmp     ds:word_6E23D6, 0
jnz     short def_47C0D2 ; jumptable 0047C0D2 default case
inc     al
mov     [ecx+8], al
pop     edx
pop     ecx
pop     ebx
retn

loc_47C164:             ; jumptable 0047C0D2 case 5
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 7
mov     ds:byte_77EA5F, 5
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
xor     ebx, ebx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     bl, dl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     bh, 0FFh
mov     ds:byte_77EA61, bh
mov     ds:byte_77EA60, bh

loc_47C1B9:
mov     eax, ecx
call    sub_4DE439

def_47C0D2:             ; jumptable 0047C0D2 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47C0BE endp




sub_47C1C4 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47C1CA[edx*4]
pop     edx
retn
sub_47C1C4 endp




sub_47C1D3 proc near
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
retn
sub_47C1D3 endp




sub_47C1E3 proc near

var_28= dword ptr -28h
var_24= word ptr -24h
var_22= word ptr -22h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     esi, eax
movzx   edi, byte ptr [eax+0Ah]
xor     eax, eax
mov     al, [esi+3]
mov     [esp+28h+var_1C], eax
mov     ebp, eax
shl     ebp, 2
sub     ebp, eax
shl     ebp, 2
xor     eax, eax
mov     ax, ss:word_518EEE[ebp]
call    sub_47E888
test    eax, eax
jz      loc_47C402
cmp     byte ptr [esi+0Ch], 2
jz      loc_47C2F0
mov     eax, ds:dword_77E6DC
mov     [esp+28h+var_20], eax
mov     ax, word ptr ss:dword_518EE4[ebp]
mov     word ptr [esp+28h+var_28], ax
mov     eax, [esp+28h+var_20]
add     eax, 18h
mov     ds:dword_77E6DC, eax
mov     ax, word ptr ss:(dword_518EE4+2)[ebp]
add     eax, edi
mov     word ptr [esp+28h+var_28+2], ax
mov     [esp+28h+var_24], 10h
mov     eax, 40h ; '@'
sub     eax, edi
mov     [esp+28h+var_22], ax
mov     ecx, ss:dword_518EE4[ebp]
sar     ecx, 10h
sub     ecx, 40h ; '@'
mov     ebx, [esp-2]
sar     ebx, 10h
mov     edx, esp
mov     eax, [esp+28h+var_20]
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, [esp+28h+var_20]
call    sub_4F87A6
test    edi, edi
jz      short loc_47C2F0
mov     eax, ds:dword_77E6DC
mov     [esp+28h+var_20], eax
mov     ax, word ptr ss:(dword_518EE4+2)[ebp]
mov     word ptr [esp+28h+var_28+2], ax
mov     [esp+28h+var_22], di
mov     ecx, [esp+28h+var_28]
sar     ecx, 10h
mov     eax, [esp+28h+var_20]
add     eax, 18h
mov     ds:dword_77E6DC, eax
sub     ecx, edi
mov     ebx, ss:(funcs_47BF90+6)[ebp]
sar     ebx, 10h
mov     edx, esp
mov     eax, [esp+28h+var_20]
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, [esp+28h+var_20]
call    sub_4F87A6

loc_47C2F0:
sar     edi, 1
cmp     byte ptr [esi+0Ch], 1
jz      loc_47C3D5
mov     eax, ds:dword_77E6DC
mov     [esp+28h+var_20], eax
mov     eax, [esp+28h+var_1C]
mov     ebp, eax
shl     ebp, 2
sub     ebp, eax
shl     ebp, 2
mov     ax, word ptr ss:dword_518EE8[ebp]
mov     word ptr [esp+28h+var_28], ax
mov     eax, [esp+28h+var_20]
add     eax, 18h
mov     ds:dword_77E6DC, eax
mov     ax, word ptr ss:(dword_518EE8+2)[ebp]
add     eax, edi
mov     word ptr [esp+28h+var_28+2], ax
mov     [esp+28h+var_24], 8
mov     eax, 20h ; ' '
sub     eax, edi
mov     [esp+28h+var_22], ax
mov     ecx, ss:dword_518EE8[ebp]
sar     ecx, 10h
sub     ecx, 20h ; ' '
mov     ebx, [esp-2]
sar     ebx, 10h
mov     edx, esp
mov     eax, [esp+28h+var_20]
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, [esp+28h+var_20]
call    sub_4F87A6
test    edi, edi
jz      short loc_47C3D5
mov     eax, ds:dword_77E6DC
mov     [esp+28h+var_20], eax
mov     ax, word ptr ss:(dword_518EE8+2)[ebp]
mov     word ptr [esp+28h+var_28+2], ax
mov     [esp+28h+var_22], di
mov     ecx, [esp+28h+var_28]
sar     ecx, 10h
mov     eax, [esp+28h+var_20]
add     eax, 18h
mov     ds:dword_77E6DC, eax
sub     ecx, edi
mov     ebx, ss:(dword_518EE4+2)[ebp]
sar     ebx, 10h
mov     edx, esp
mov     eax, [esp+28h+var_20]
call    sub_4F887A
mov     eax, ds:dword_77EA74
add     eax, 88h
mov     edx, [esp+28h+var_20]
call    sub_4F87A6

loc_47C3D5:
mov     eax, [esp+28h+var_1C]
mov     edi, eax
shl     edi, 2
sub     edi, eax
shl     edi, 2
cmp     byte ptr [esi+0Bh], 0
jz      short loc_47C3F4
mov     al, [esi+0Ah]
add     al, ds:byte_518EEC[edi]
jmp     short loc_47C3FD

loc_47C3F4:
mov     al, [esi+0Ah]
sub     al, ds:byte_518EEC[edi]

loc_47C3FD:
and     al, 3Fh
mov     [esi+0Ah], al

loc_47C402:
add     esp, 10h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47C1E3 endp




sub_47C40C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47C412[edx*4]
pop     edx
retn
sub_47C40C endp




sub_47C41B proc near
push    edx
mov     edx, eax
mov     eax, 40100h
call    sub_4A7AAC
mov     [edx+20h], eax
test    eax, eax
jnz     short loc_47C438
mov     eax, edx
call    sub_4DE439
pop     edx
retn

loc_47C438:
mov     byte ptr [edx+18h], 0
mov     al, [edx+18h]
mov     [edx+17h], al
mov     [edx+16h], al
mov     [edx+15h], al
mov     [edx+14h], al
xor     eax, eax
mov     al, [edx+14h]
mov     al, ds:byte_518F29[eax*2]
mov     [edx+19h], al
xor     eax, eax
mov     al, [edx+15h]
mov     al, ds:byte_518F63[eax*2]
mov     [edx+1Ah], al
xor     eax, eax
mov     al, [edx+16h]
mov     al, ds:byte_518F9D[eax*2]
mov     [edx+1Bh], al
xor     eax, eax
mov     al, [edx+17h]
mov     al, ds:byte_518FD7[eax*2]
mov     [edx+1Ch], al
xor     eax, eax
mov     al, [edx+18h]
mov     al, ds:byte_519011[eax*2]
mov     [edx+1Dh], al
inc     byte ptr [edx+8]
pop     edx
retn
sub_47C41B endp




sub_47C49B proc near

var_38= dword ptr -38h
var_34= byte ptr -34h
var_2C= dword ptr -2Ch
var_24= byte ptr -24h
var_22= byte ptr -22h
var_20= byte ptr -20h
var_1E= byte ptr -1Eh
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
push    eax
mov     eax, [eax+20h]
mov     ebx, 6
xor     edx, edx
lea     esi, [esp+38h+var_34]
call    sub_4EE48D
xor     edi, edi
jmp     short loc_47C4C7

loc_47C4BC:
inc     edi
cmp     di, 5
jge     loc_47C5D0

loc_47C4C7:
movsx   edx, di
mov     eax, [esp+38h+var_38]
add     eax, edx
mov     bl, [eax+19h]
dec     bl
mov     [eax+19h], bl
jnz     short loc_47C4BC
inc     byte ptr [eax+14h]
xor     ecx, ecx
mov     cl, [eax+14h]
lea     ebx, [ecx+ecx]
mov     ecx, edx
shl     ecx, 3
sub     ecx, edx
shl     ecx, 2
add     ecx, edx
add     ecx, ecx
lea     edx, [ecx+ebx]
cmp     ds:byte_518F28[edx], 0FFh
jnz     short loc_47C502
mov     byte ptr [eax+14h], 0

loc_47C502:
movsx   eax, di
mov     [esp+38h+var_1C], eax
mov     ecx, [esp+38h+var_38]
mov     edx, eax
add     ecx, eax
xor     eax, eax
mov     al, [ecx+14h]
lea     esi, [eax+eax]
mov     ebx, edx
shl     ebx, 3
sub     ebx, edx
shl     ebx, 2
add     ebx, edx
add     ebx, ebx
lea     eax, [ebx+esi]
mov     al, ds:byte_518F29[eax]
mov     [ecx+19h], al
movsx   ebp, di
mov     edx, ebp
mov     eax, [esp+38h+var_2C]
lea     esi, [esp+38h+var_24]
call    sub_4EE4F0
xor     eax, eax
mov     al, [ecx+14h]
mov     al, ds:byte_518F28[ebx+eax*2]
mov     ah, 30h ; '0'
mul     ah
mov     edx, [esp+38h+var_1C]
mov     ah, ds:byte_51904A[edx*4]
add     ah, al
mov     [esp+38h+var_24], ah
xor     eax, eax
mov     al, [ecx+14h]
mov     al, ds:byte_518F28[ebx+eax*2]
mov     ah, 30h ; '0'
mul     ah
mov     ah, ds:byte_51904B[edx*4]
add     ah, al
mov     [esp+38h+var_22], ah
xor     eax, eax
mov     al, [ecx+14h]
mov     al, ds:byte_518F28[ebx+eax*2]
mov     ah, 30h ; '0'
mul     ah
mov     ah, ds:byte_51904C[edx*4]
add     ah, al
mov     [esp+38h+var_20], ah
xor     eax, eax
mov     al, [ecx+14h]
mov     al, ds:byte_518F28[ebx+eax*2]
mov     ah, 30h ; '0'
mul     ah
mov     ah, ds:byte_51904D[edx*4]
add     ah, al
mov     [esp+38h+var_1E], ah
lea     ebx, [esp+38h+var_24]
mov     edx, ebp
mov     eax, [esp+38h+var_2C]
call    sub_4EE54C
jmp     loc_47C4BC

loc_47C5D0:
add     esp, 20h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47C49B endp




sub_47C5DA proc near
push    ecx
push    edx
xor     edx, edx
mov     dl, [eax+3]
xor     ecx, ecx
mov     cl, [eax+8]
mov     edx, ds:off_519140[edx*4]
call    dword ptr [edx+ecx*4]
pop     edx
pop     ecx
retn
sub_47C5DA endp




sub_47C5F3 proc near
push    edx
mov     edx, eax
xor     eax, eax
mov     al, [edx+3]
mov     eax, ds:dword_519068[eax*4]
call    sub_4A7AAC
mov     [edx+20h], eax
test    eax, eax
jnz     short loc_47C617
mov     eax, edx
call    sub_4DE439
pop     edx
retn

loc_47C617:
mov     ah, [edx+3]
test    ah, ah
jnz     short loc_47C623
mov     [edx+0Ch], ah
jmp     short loc_47C632

loc_47C623:
cmp     ah, 2
jnz     short loc_47C62E
mov     byte ptr [edx+0Ch], 3
jmp     short loc_47C632

loc_47C62E:
mov     byte ptr [edx+0Ch], 1

loc_47C632:
mov     byte ptr [edx+0Dh], 0
mov     eax, [edx+9]
sar     eax, 18h
mov     eax, ds:off_51911C[eax*4]
mov     al, [eax]
mov     [edx+0Eh], al
inc     byte ptr [edx+8]
pop     edx
retn
sub_47C5F3 endp




sub_47C64D proc near
push    edx
mov     edx, eax
mov     eax, 60Dh
call    sub_47E888
test    eax, eax
jz      short loc_47C665
inc     byte ptr [edx+8]
mov     byte ptr [edx+9], 0

loc_47C665:
pop     edx
retn
sub_47C64D endp

db 8Dh, 40h, 0
jpt_47C696 dd offset loc_47C69D ; jump table for switch statement
dd offset loc_47C6D3
dd offset loc_47C6E2
dd offset loc_47C6E9
dd offset loc_47C6D3
dd offset loc_47C70E



sub_47C682 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+9]
cmp     al, 5           ; switch 6 cases
ja      def_47C696      ; jumptable 0047C696 default case
and     eax, 0FFh
jmp     jpt_47C696[eax*4] ; switch jump

loc_47C69D:             ; jumptable 0047C696 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_47C696      ; jumptable 0047C696 default case
mov     byte ptr ds:dword_5F836C, 3
xor     cl, cl
mov     byte ptr ds:dword_5F836C+1, cl
mov     ds:byte_5F88AC, 30h ; '0'
xor     ecx, ecx
mov     ds:dword_5F8370, ecx

loc_47C6CD:
inc     byte ptr [edx+9]
pop     edx
pop     ecx
retn

loc_47C6D3:             ; jumptable 0047C696 cases 1,4
mov     eax, edx
call    sub_47C74A
cmp     byte ptr [edx+0Dh], 4
jnz     short def_47C696 ; jumptable 0047C696 default case
jmp     short loc_47C6CD

loc_47C6E2:             ; jumptable 0047C696 case 2
call    sub_47C873
jmp     short loc_47C6CD

loc_47C6E9:             ; jumptable 0047C696 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_47C696 ; jumptable 0047C696 default case
mov     byte ptr [edx+0Ch], 2
mov     byte ptr [edx+0Dh], 0
mov     eax, [edx+9]
sar     eax, 18h
mov     eax, ds:off_51911C[eax*4]
mov     al, [eax]
mov     [edx+0Eh], al
jmp     short loc_47C6CD

loc_47C70E:             ; jumptable 0047C696 case 5
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
mov     eax, 60Dh
call    sub_47EA91
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+0Dh], 0
mov     eax, [edx+9]
sar     eax, 18h
mov     eax, ds:off_51911C[eax*4]
mov     al, [eax]
mov     [edx+0Eh], al
mov     byte ptr [edx+8], 1

def_47C696:             ; jumptable 0047C696 default case
pop     edx
pop     ecx
retn
sub_47C682 endp




sub_47C74A proc near

var_24= dword ptr -24h
var_1C= byte ptr -1Ch
var_1B= byte ptr -1Bh
var_1A= byte ptr -1Ah
var_19= byte ptr -19h
var_18= byte ptr -18h
var_17= byte ptr -17h
var_16= byte ptr -16h
var_15= byte ptr -15h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax
mov     eax, [eax+9]
sar     eax, 18h
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
add     ebx, ebx
mov     edi, ds:off_51911C[eax*4]
add     edi, ebx
cmp     byte ptr [edi], 0
jz      loc_47C86A
xor     ebx, ebx
mov     bl, [ecx+3]
mov     bl, ds:byte_51916C[ebx]
and     ebx, 0FFh
mov     eax, [ecx+20h]
xor     edx, edx
mov     esi, esp
call    sub_4EE48D
mov     dl, [ecx+0Eh]
dec     dl
mov     [ecx+0Eh], dl
jnz     short loc_47C7D4
inc     byte ptr [ecx+0Dh]
add     edi, 2
mov     bh, [edi]
cmp     bh, 0FFh
jnz     short loc_47C7BA
mov     [ecx+0Dh], dl
mov     edi, [ecx+9]
sar     edi, 18h
mov     edi, ds:off_51911C[edi*4]
jmp     short loc_47C7C2

loc_47C7BA:
test    bh, bh
jz      loc_47C86A

loc_47C7C2:
mov     eax, [ecx+9]
sar     eax, 18h
mov     eax, ds:off_51911C[eax*4]
mov     al, [eax]
mov     [ecx+0Eh], al

loc_47C7D4:
xor     edx, edx
mov     eax, [esp+2Ch+var_24]
lea     esi, [esp+2Ch+var_1C]
call    sub_4EE4F0
movsx   eax, byte ptr [edi+1]
mov     al, ds:byte_519074[eax*8]
mov     [esp+2Ch+var_1C], al
movsx   eax, byte ptr [edi+1]
mov     al, ds:byte_519075[eax*8]
mov     [esp+2Ch+var_1B], al
movsx   eax, byte ptr [edi+1]
mov     al, ds:byte_519076[eax*8]
mov     [esp+2Ch+var_1A], al
movsx   eax, byte ptr [edi+1]
mov     al, ds:byte_519077[eax*8]
mov     [esp+2Ch+var_19], al
movsx   eax, byte ptr [edi+1]
mov     al, ds:byte_519078[eax*8]
mov     [esp+2Ch+var_18], al
movsx   eax, byte ptr [edi+1]
mov     al, ds:byte_519079[eax*8]
mov     [esp+2Ch+var_17], al
movsx   eax, byte ptr [edi+1]
mov     al, ds:byte_51907A[eax*8]
mov     [esp+2Ch+var_16], al
movsx   eax, byte ptr [edi+1]
mov     al, ds:byte_51907B[eax*8]
mov     [esp+2Ch+var_15], al
lea     ebx, [esp+2Ch+var_1C]
xor     edx, edx
mov     eax, [esp+2Ch+var_24]
call    sub_4EE54C

loc_47C86A:
add     esp, 18h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47C74A endp




sub_47C873 proc near
push    ebx
push    ecx
push    edx
call    sub_47C8FE
test    al, al
jz      short loc_47C8E7
mov     eax, 235h
call    sub_47E888
test    eax, eax
jnz     short loc_47C8DC
mov     ecx, 1
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
mov     eax, 7E5h
call    sub_47E8B8
mov     eax, 7E6h
call    sub_47E8B8
mov     eax, 7E7h
call    sub_47E8B8
mov     eax, 235h
call    sub_47E8B8
mov     eax, 212h
call    sub_47E8B8
xor     ah, ah
mov     byte ptr ds:word_77E7FC, ah
pop     edx
pop     ecx
pop     ebx
retn

loc_47C8DC:
mov     ecx, 2
xor     ebx, ebx
mov     edx, ecx
jmp     short loc_47C8F3

loc_47C8E7:
mov     ecx, 22h ; '"'
xor     ebx, ebx
mov     edx, 2

loc_47C8F3:
xor     eax, eax
call    sub_4A62D4
pop     edx
pop     ecx
pop     ebx
retn
sub_47C873 endp




sub_47C8FE proc near
push    edx
cmp     ds:byte_77E7D4, 13h
jnz     short loc_47C90C

loc_47C908:
xor     al, al
pop     edx
retn

loc_47C90C:
mov     eax, 214h
call    sub_47E888
test    eax, eax
jnz     short loc_47C908
mov     eax, 52h ; 'R'
call    sub_47E888
test    eax, eax
jz      short loc_47C908
mov     eax, 522h
call    sub_47E888
test    eax, eax
jz      short loc_47C908
mov     edx, 0FCh
mov     eax, 6
call    sub_4A7EE1
cmp     eax, 3
jnz     short loc_47C908
mov     edx, 120h
mov     eax, 6
call    sub_4A7EE1
cmp     eax, 3
jnz     short loc_47C908
mov     al, 1
pop     edx
retn
sub_47C8FE endp




sub_47C962 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47C968[edx*4]
pop     edx
retn
sub_47C962 endp




sub_47C971 proc near
push    edx
mov     edx, eax
mov     eax, 130000h
call    sub_4A7AAC
mov     [edx+1Ch], eax
test    eax, eax
jnz     short loc_47C98E

loc_47C985:
mov     eax, edx
call    sub_4DE439
pop     edx
retn

loc_47C98E:
mov     eax, 130200h
call    sub_4A7AAC
mov     [edx+20h], eax
test    eax, eax
jz      short loc_47C985
mov     byte ptr [edx+10h], 0
mov     al, [edx+10h]
mov     [edx+0Fh], al
mov     [edx+0Eh], al
mov     [edx+0Dh], al
mov     [edx+0Ch], al
xor     eax, eax
mov     al, [edx+0Ch]
mov     al, ds:byte_519171[eax*2]
mov     [edx+11h], al
xor     eax, eax
mov     al, [edx+0Dh]
mov     al, ds:byte_5191AB[eax*2]
mov     [edx+12h], al
xor     eax, eax
mov     al, [edx+0Eh]
mov     al, ds:byte_5191E5[eax*2]
mov     [edx+13h], al
xor     eax, eax
mov     al, [edx+0Fh]
mov     al, ds:byte_51921F[eax*2]
mov     [edx+14h], al
xor     eax, eax
mov     al, [edx+10h]
mov     al, ds:byte_519259[eax*2]
mov     [edx+15h], al
inc     byte ptr [edx+8]
pop     edx
retn
sub_47C971 endp




sub_47CA02 proc near

var_38= dword ptr -38h
var_34= byte ptr -34h
var_2C= dword ptr -2Ch
var_24= byte ptr -24h
var_22= byte ptr -22h
var_20= byte ptr -20h
var_1E= dword ptr -1Eh

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
push    eax
xor     edx, edx
mov     word ptr [esp+38h+var_1E+2], dx
jmp     short loc_47CA29

loc_47CA15:
mov     ebx, [esp+38h+var_1E+2]
inc     ebx
mov     word ptr [esp+38h+var_1E+2], bx
cmp     bx, 5
jge     loc_47CB62

loc_47CA29:
mov     edi, [esp+38h+var_1E]
sar     edi, 10h
mov     eax, [esp+38h+var_38]
add     eax, edi
mov     dl, [eax+11h]
dec     dl
mov     [eax+11h], dl
jnz     short loc_47CA15
mov     bl, [eax+0Ch]
inc     bl
mov     [eax+0Ch], bl
xor     edx, edx
mov     dl, bl
mov     ecx, edi
shl     ecx, 3
sub     ecx, edi
shl     ecx, 2
add     ecx, edi
add     ecx, ecx
cmp     ds:byte_519170[ecx+edx*2], 0FFh
jnz     short loc_47CA67
mov     byte ptr [eax+0Ch], 0

loc_47CA67:
mov     edi, [esp+38h+var_1E]
sar     edi, 10h
mov     ecx, [esp+38h+var_38]
xor     edx, edx
mov     dl, [ecx+edi+0Ch]
add     edx, edx
mov     eax, edi
shl     eax, 3
sub     eax, edi
shl     eax, 2
lea     ebp, [edi+eax]
add     ebp, ebp
lea     eax, [edx+ebp]
mov     al, ds:byte_519171[eax]
mov     [ecx+edi+11h], al
xor     eax, eax
mov     al, ds:byte_5192AB[edi]
shl     eax, 2
mov     edx, ecx
add     eax, ecx
mov     eax, [eax+1Ch]
mov     ebx, 2
xor     edx, ecx
lea     esi, [esp+38h+var_34]
call    sub_4EE48D
xor     edx, edx
mov     dl, ds:byte_5192A6[edi]
mov     eax, [esp+38h+var_2C]
lea     esi, [esp+38h+var_24]
call    sub_4EE4F0
xor     eax, eax
mov     al, [ecx+edi+0Ch]
mov     dl, ss:byte_519170[ebp+eax*2]
shl     dl, 6
mov     dh, ds:byte_519292[edi*4]
add     dh, dl
mov     [esp+38h+var_24], dh
xor     edx, edx
mov     dl, [ecx+edi+0Ch]
add     edx, edx
lea     ebx, [edx+ebp]
mov     dl, ds:byte_519170[ebx]
shl     dl, 6
mov     dh, ds:byte_519293[edi*4]
add     dh, dl
mov     [esp+38h+var_22], dh
xor     edx, edx
mov     dl, [ecx+edi+0Ch]
add     edx, edx
lea     esi, [edx+ebp]
mov     dl, ds:byte_519170[esi]
shl     dl, 6
mov     dh, ds:byte_519294[edi*4]
add     dh, dl
mov     [esp+38h+var_20], dh
xor     edx, edx
mov     dl, [ecx+edi+0Ch]
mov     dl, ss:byte_519170[ebp+edx*2]
shl     dl, 6
mov     al, ds:byte_519295[edi*4]
add     al, dl
mov     byte ptr [esp+38h+var_1E], al
xor     edx, edx
mov     dl, ds:byte_5192A6[edi]
lea     ebx, [esp+38h+var_24]
mov     eax, [esp+38h+var_2C]
call    sub_4EE54C
jmp     loc_47CA15

loc_47CB62:
add     esp, 20h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47CA02 endp




sub_47CB6C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47CB72[edx*4]
pop     edx
retn
sub_47CB6C endp




sub_47CB7B proc near
push    edx
mov     edx, eax
mov     eax, 30100h
call    sub_4A7AAC
mov     [edx+1Ch], eax
test    eax, eax
jnz     short loc_47CB98
mov     eax, edx
call    sub_4DE439
pop     edx
retn

loc_47CB98:
mov     byte ptr [edx+18h], 0
mov     al, [edx+18h]
mov     [edx+17h], al
mov     [edx+16h], al
mov     [edx+15h], al
mov     [edx+14h], al
xor     eax, eax
mov     al, [edx+14h]
mov     al, ds:byte_5192B9[eax*2]
mov     [edx+16h], al
xor     eax, eax
mov     al, [edx+15h]
mov     al, ds:byte_5192F3[eax*2]
mov     [edx+17h], al
xor     eax, eax
mov     al, [edx+16h]
mov     al, ds:byte_51932D[eax*2]
mov     [edx+18h], al
xor     eax, eax
mov     al, [edx+17h]
mov     al, byte ptr ds:(off_519364+3)[eax*2]
mov     [edx+19h], al
xor     eax, eax
mov     al, [edx+18h]
mov     al, ds:byte_5193A1[eax*2]
mov     [edx+1Ah], al
inc     byte ptr [edx+8]
pop     edx
retn
sub_47CB7B endp




sub_47CBFB proc near

var_3C= dword ptr -3Ch
var_38= byte ptr -38h
var_30= dword ptr -30h
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
sub     esp, 20h
push    eax
xor     edi, edi
jmp     short loc_47CC14

loc_47CC09:
inc     edi
cmp     di, 2
jge     loc_47CD5F

loc_47CC14:
movsx   ecx, di
mov     eax, [esp+3Ch+var_3C]
add     eax, ecx
mov     dl, [eax+16h]
dec     dl
mov     [eax+16h], dl
jnz     short loc_47CC09
mov     bl, [eax+14h]
inc     bl
mov     [eax+14h], bl
xor     edx, edx
mov     dl, bl
lea     ebx, [edx+edx]
mov     edx, ecx
shl     edx, 3
sub     edx, ecx
shl     edx, 2
add     edx, ecx
cmp     ds:byte_5192B8[ebx+edx*2], 0FFh
jnz     short loc_47CC4F
mov     byte ptr [eax+14h], 0

loc_47CC4F:
movsx   eax, di
mov     [esp+3Ch+var_20], eax
mov     ecx, [esp+3Ch+var_3C]
mov     edx, eax
add     ecx, eax
xor     eax, eax
mov     al, [ecx+14h]
lea     ebx, [eax+eax]
mov     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
mov     [esp+3Ch+var_1C], eax
mov     al, ds:byte_5192B9[ebx+eax]
mov     [ecx+16h], al
mov     eax, [esp+3Ch+var_3C]
mov     eax, [eax+1Ch]
mov     ebx, 5
xor     edx, edx
lea     esi, [esp+3Ch+var_38]
call    sub_4EE48D
movsx   ebp, di
mov     edx, ebp
mov     eax, [esp+3Ch+var_30]
lea     esi, [esp+3Ch+var_28]
call    sub_4EE4F0
xor     eax, eax
mov     al, [ecx+14h]
add     eax, eax
mov     ecx, [esp+3Ch+var_1C]
add     ecx, eax
mov     dl, ds:byte_5192B8[ecx]
mov     eax, [esp+3Ch+var_20]
shl     dl, 6
mov     dh, ds:byte_51932C[eax*4]
add     dh, dl
mov     [esp+3Ch+var_28], dh
mov     dh, ds:byte_51932D[eax*4]
add     dh, dl
mov     [esp+3Ch+var_26], dh
mov     dh, ds:byte_51932E[eax*4]
add     dh, dl
mov     [esp+3Ch+var_24], dh
mov     dh, ds:byte_51932F[eax*4]
add     dh, dl
mov     [esp+3Ch+var_22], dh
xor     ebx, ebx
mov     bl, ds:byte_519334[eax*4]
xor     edx, edx
mov     dl, ds:byte_5192B8[ecx]
sar     edx, 2
mov     ecx, edx
shl     edx, 2
sub     edx, ecx
shl     edx, 4
add     ebx, edx
mov     [esp+3Ch+var_27], bl
xor     ecx, ecx
mov     cl, ds:byte_519335[eax*4]
add     ecx, edx
mov     [esp+3Ch+var_25], cl
xor     ecx, ecx
mov     cl, ds:byte_519336[eax*4]
add     ecx, edx
mov     [esp+3Ch+var_23], cl
mov     al, ds:byte_519337[eax*4]
and     eax, 0FFh
add     eax, edx
mov     [esp+3Ch+var_21], al
lea     ebx, [esp+3Ch+var_28]
mov     edx, ebp
mov     eax, [esp+3Ch+var_30]
call    sub_4EE54C
jmp     loc_47CC09

loc_47CD5F:
add     esp, 24h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47CBFB endp




sub_47CD69 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47CD6F[edx*4]
pop     edx
retn
sub_47CD69 endp




sub_47CD78 proc near
cmp     byte ptr ds:dword_77E7D5+1, 3
jnz     short loc_47CD8B
cmp     word ptr ds:dword_77E8F8, 3Fh ; '?'
jnz     short loc_47CD90

loc_47CD8B:
mov     byte ptr [eax+8], 2
retn

loc_47CD90:
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
retn
sub_47CD78 endp




sub_47CDA1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_47CDA7[edx*4]
pop     edx
retn
sub_47CDA1 endp



; Attributes: thunk

sub_47CDB0 proc near
jmp     sub_4DE439
sub_47CDB0 endp




sub_47CDB5 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
xor     cl, cl
cmp     byte ptr ds:dword_77E7D5+1, 3
jnz     short loc_47CDCF
cmp     word ptr ds:dword_77E8F8, 3Fh ; '?'
jnz     short loc_47CDD7

loc_47CDCF:
mov     byte ptr [ebx+8], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_47CDD7:
mov     byte ptr [ebx+0Ch], 0FFh
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 9
mov     [ebx+14h], ax
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
mov     [ebx+18h], ax

loc_47CDF9:
cmp     cl, 6
jge     short loc_47CE1F
movsx   eax, cl
shl     eax, 2
mov     edx, offset unk_519374
add     edx, eax
mov     eax, ebx
call    sub_47CFFF
test    eax, eax
jz      short loc_47CE1B
mov     [ebx+0Ch], cl
jmp     short loc_47CE1F

loc_47CE1B:
inc     cl
jmp     short loc_47CDF9

loc_47CE1F:
