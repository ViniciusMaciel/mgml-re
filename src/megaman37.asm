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
