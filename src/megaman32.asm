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
