loc_439F63:
mov     dword ptr [eax+18h], 2E808080h
mov     word ptr [eax+26h], 0
lea     edx, [eax+28h]
mov     dword ptr [edx+0Ch], 0
mov     dword ptr [edx+10h], 0A0000h
mov     dword ptr [edx+14h], 0FFFF0000h
inc     byte ptr [eax+8]
pop     edx
retn
sub_439F42 endp




sub_439F8D proc near

var_28= dword ptr -28h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 44h
mov     ecx, eax
lea     esi, [eax+28h]
mov     edi, [esi]
mov     ax, [edi+56h]
mov     word ptr [esp+58h+var_18], ax
mov     ax, [esi+4]
mov     [esp+58h+var_20], ax
mov     ax, [esi+6]
mov     [esp+58h+var_1E], ax
mov     ax, [esi+8]
mov     [esp+58h+var_1C], ax
mov     eax, esp
call    sub_4EF184
mov     eax, [esp+3Eh]
sar     eax, 10h
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+58h+var_28]
lea     edx, [esp+58h+var_20]
mov     eax, esp
call    sub_4EF2DC
mov     eax, [edi+1Ch]
sar     eax, 10h
mov     edx, [esp+2Eh]
sar     edx, 10h
add     eax, edx
mov     [ecx+1Ch], ax
mov     edx, [edi+20h]
sar     edx, 10h
mov     eax, [esp+58h+var_28]
sar     eax, 10h
add     eax, edx
mov     [ecx+1Eh], ax
mov     eax, [edi+24h]
sar     eax, 10h
mov     edx, [esp+58h+var_28+2]
sar     edx, 10h
add     eax, edx
mov     [ecx+20h], ax
mov     edx, [esi+0Ch]
cmp     edx, 900000h
jge     short loc_43A03F
lea     ebx, [edx+170A3h]
mov     [esi+0Ch], ebx
add     dword ptr [esi+10h], 8000h
sub     dword ptr [esi+14h], 147Ah

loc_43A03F:
mov     dx, [ecx+26h]
inc     edx
mov     [ecx+26h], dx
mov     ebx, edx
xor     bh, dh
and     bl, 3
mov     [ecx+26h], bx
mov     eax, [esi+0Ch]
sar     eax, 10h
mov     [ecx+24h], ax
xor     eax, eax
mov     ax, [ecx+26h]
mov     al, ds:byte_51378C[eax*4]
mov     [ecx+22h], al
xor     eax, eax
mov     ax, [ecx+26h]
mov     al, ds:byte_51378D[eax*4]
mov     [ecx+23h], al
mov     ah, [ecx+0Eh]
inc     ah
mov     [ecx+0Eh], ah
cmp     ah, 4
jnz     short loc_43A0FF
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_43A0FB
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 6
mov     byte ptr [eax+0Dh], 1
call    rand_
and     ah, 0Fh
mov     ebx, eax
call    rand_
xor     ah, ah
and     al, 1Fh
add     eax, 64h ; 'd'
mov     dword ptr [edx+14h], 3C48002Eh
mov     word ptr [edx+24h], 12h
mov     dword ptr [edx+18h], 2E202020h
mov     byte ptr [edx+22h], 80h
mov     byte ptr [edx+23h], 0A0h
mov     [edx+28h], ecx
mov     [edx+2Ch], bx
mov     [edx+2Eh], ax
mov     eax, [esp+58h+var_18]
mov     [edx+30h], ax
mov     eax, [esi+10h]
mov     [edx+34h], eax
mov     eax, [esi+14h]
mov     [edx+38h], eax

loc_43A0FB:
mov     byte ptr [ecx+0Eh], 0

loc_43A0FF:
add     esp, 44h
jmp     loc_439F27
sub_439F8D endp




sub_43A107 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_43A126
cmp     byte ptr [edx+8], 0
jnz     short loc_43A11D
mov     eax, edx
call    sub_439F42

loc_43A11D:
mov     eax, edx
call    sub_439F8D
pop     edx
retn

loc_43A126:
mov     eax, edx
call    sub_439F2D
pop     edx
retn
sub_43A107 endp




sub_43A12F proc near
or      byte ptr [eax], 2
cmp     ds:byte_77E7D4, 16h
jnz     short loc_43A144
mov     dword ptr [eax+14h], 3CC80027h
jmp     short loc_43A14B

loc_43A144:
mov     dword ptr [eax+14h], 3C880026h

loc_43A14B:
mov     dword ptr [eax+18h], 2E808080h
mov     word ptr [eax+26h], 0

loc_43A158:
inc     byte ptr [eax+8]
retn
sub_43A12F endp




sub_43A15C proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 40h
mov     ecx, eax
lea     edx, [eax+28h]
mov     esi, [edx]
mov     bx, [esi+56h]
mov     ax, [edx+4]
mov     word ptr [esp+50h+var_20], ax ; float
mov     ax, [edx+6]
mov     word ptr [esp+50h+var_20+2], ax
mov     ax, [edx+8]
mov     word ptr [esp+50h+var_1C], ax ; int
mov     eax, esp
call    sub_4EF184
movsx   eax, bx
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+50h+var_18]
lea     edx, [esp+50h+var_20]
mov     eax, esp
call    sub_4EF2DC
mov     eax, [esi+1Ch]
sar     eax, 10h
mov     edx, [esp+36h]
sar     edx, 10h
add     eax, edx
mov     [ecx+1Ch], ax
mov     eax, [esi+20h]
sar     eax, 10h
mov     edx, [esp+50h+var_18]
sar     edx, 10h
add     eax, edx
mov     [ecx+1Eh], ax
mov     eax, [esi+24h]
sar     eax, 10h
mov     edx, [esp+50h+var_18+2]
sar     edx, 10h
add     eax, edx
mov     [ecx+20h], ax
mov     dx, [ecx+26h]
inc     edx
mov     [ecx+26h], dx
cmp     dx, 4
jnz     short loc_43A1F7
mov     word ptr [ecx+26h], 0

loc_43A1F7:
xor     edx, edx
mov     dx, [ecx+26h]
mov     al, ds:byte_51379C[edx*4]
mov     [ecx+22h], al
xor     eax, eax
mov     ax, [ecx+26h]
mov     al, ds:byte_51379D[eax*4]
mov     [ecx+23h], al
xor     eax, eax
mov     ax, [ecx+26h]
mov     ax, ds:word_51379E[eax*4]
mov     [ecx+24h], ax
add     esp, 40h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43A15C endp




sub_43A231 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_43A24E
cmp     byte ptr [edx+8], 0
jnz     short loc_43A247
mov     eax, edx
call    sub_43A12F

loc_43A247:
mov     eax, edx
call    sub_43A15C

loc_43A24E:
pop     edx
retn
sub_43A231 endp

; START OF FUNCTION CHUNK FOR sub_43A27A

loc_43A250:
mov     edx, [eax+0Ch]
sar     edx, 18h
mov     edx, ds:dword_5137AC[edx*4]
mov     [eax+18h], edx
mov     dx, [eax+24h]
add     edx, 10h
mov     [eax+24h], dx
cmp     dx, 120h
jbe     short loc_43A278
mov     word ptr [eax+24h], 120h

loc_43A278:
pop     edx
retn
; END OF FUNCTION CHUNK FOR sub_43A27A



sub_43A27A proc near

; FUNCTION CHUNK AT 0043A250 SIZE 0000002A BYTES

cmp     byte ptr [eax+8], 0
jnz     short loc_43A286
or      byte ptr [eax], 2
inc     byte ptr [eax+8]

loc_43A286:
push    edx
mov     dl, [eax+0Fh]
inc     dl
mov     [eax+0Fh], dl
cmp     dl, 8
jnz     short loc_43A250
call    sub_4DE3EA
pop     edx
retn
sub_43A27A endp




sub_43A29B proc near

var_1C= dword ptr -1Ch
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 40h
lea     edx, [eax+28h]
mov     ecx, [edx]
mov     bx, [ecx+56h]
mov     ax, [edx+4]
mov     [esp+4Ch+var_14], ax
mov     ax, [edx+6]
mov     [esp+4Ch+var_12], ax
mov     ax, [edx+8]
mov     [esp+4Ch+var_10], ax
mov     eax, esp
call    sub_4EF184
movsx   eax, bx
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+4Ch+var_1C]
lea     edx, [esp+4Ch+var_14]
mov     eax, esp
call    sub_4EF2DC
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_43A376
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Ch], 6
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
cmp     ds:byte_77E7D4, 16h
jnz     short loc_43A321
mov     dword ptr [eax+14h], 3CC80027h
jmp     short loc_43A328

loc_43A321:
mov     dword ptr [eax+14h], 3C880026h

loc_43A328:
mov     word ptr [eax+24h], 90h
mov     byte ptr [eax+22h], 0A0h
mov     byte ptr [eax+23h], 20h ; ' '
mov     edx, [ecx+1Ch]
sar     edx, 10h
mov     ebx, [esp+2Eh]
sar     ebx, 10h
add     edx, ebx
mov     [eax+1Ch], dx
mov     edx, [ecx+20h]
sar     edx, 10h
mov     ebx, [esp+4Ch+var_1C]
sar     ebx, 10h
add     edx, ebx
mov     [eax+1Eh], dx
mov     ebx, [ecx+24h]
sar     ebx, 10h
mov     edx, [esp+4Ch+var_1C+2]
sar     edx, 10h
add     edx, ebx
mov     [eax+20h], dx
mov     dword ptr [eax+18h], 2E808080h

loc_43A376:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_43A407
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Ch], 6
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 1
mov     byte ptr [eax+0Fh], 0
cmp     ds:byte_77E7D4, 16h
jnz     short loc_43A3B2
mov     dword ptr [eax+14h], 3CC80027h
jmp     short loc_43A3B9

loc_43A3B2:
mov     dword ptr [eax+14h], 3C880026h

loc_43A3B9:
mov     word ptr [eax+24h], 24h ; '$'
mov     byte ptr [eax+22h], 0A0h
mov     byte ptr [eax+23h], 20h ; ' '
mov     ebx, [ecx+1Ch]
sar     ebx, 10h
mov     edx, [esp+2Eh]
sar     edx, 10h
add     edx, ebx
mov     [eax+1Ch], dx
mov     edx, [ecx+20h]
sar     edx, 10h
mov     ebx, [esp+4Ch+var_1C]
sar     ebx, 10h
add     edx, ebx
mov     [eax+1Eh], dx
mov     edx, [ecx+24h]
sar     edx, 10h
mov     ecx, [esp+4Ch+var_1C+2]
sar     ecx, 10h
add     edx, ecx
mov     [eax+20h], dx
mov     dword ptr [eax+18h], 2E808080h

loc_43A407:
add     esp, 40h
pop     edx
pop     ecx
pop     ebx
retn
sub_43A29B endp




sub_43A40E proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_43A42D
cmp     byte ptr [edx+8], 0
jnz     short loc_43A424
mov     eax, edx
call    loc_43A158

loc_43A424:
mov     eax, edx
call    sub_43A29B
pop     edx
retn

loc_43A42D:
mov     eax, edx
call    sub_43A27A
pop     edx
retn
sub_43A40E endp




sub_43A436 proc near
cmp     byte ptr [eax+0Dh], 0
jnz     sub_43A27A
retn
sub_43A436 endp




sub_43A441 proc near
push    edx
cmp     byte ptr [eax+8], 2
jnz     short loc_43A44F
call    sub_4DE3EA
pop     edx
retn

loc_43A44F:
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43A454[edx*4]
pop     edx
retn
sub_43A441 endp




sub_43A45D proc near

arg_0= byte ptr  4

push    esi
push    edi
mov     esi, eax
mov     edi, edx
call    sub_4DE13B
test    eax, eax
jz      short loc_43A48F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     dl, [esp+8+arg_0]
mov     [eax+3], dl
mov     byte ptr [eax+0Dh], 0
lea     edx, [eax+28h]
mov     [edx], esi
mov     [edx+4], di
mov     [edx+6], bx
mov     [edx+8], cx

loc_43A48F:
pop     edi
pop     esi
retn    4
sub_43A45D endp




sub_43A494 proc near
push    ecx
push    edx
mov     edx, eax
mov     ah, [eax+8]
test    ah, ah
jnz     short loc_43A4D4
or      byte ptr [edx], 2
mov     dword ptr [edx+14h], 3D08002Eh
mov     byte ptr [edx+22h], 40h ; '@'
mov     [edx+23h], ah
mov     word ptr [edx+24h], 40h ; '@'
call    rand_
xor     ah, ah
and     al, 0Fh
add     eax, 30h ; '0'
shl     eax, 8
mov     [edx+26h], ax
mov     word ptr [edx+1Eh], 0
inc     byte ptr [edx+8]

loc_43A4D4:
mov     ax, [edx+26h]
sub     ax, 80h
jnz     short loc_43A4E9
mov     eax, edx
call    sub_4DE3EA
pop     edx
pop     ecx
retn

loc_43A4E9:
mov     [edx+26h], ax
movsx   ecx, ax
sar     ecx, 8
mov     eax, ecx
shl     eax, 8
add     eax, ecx
shl     eax, 8
add     eax, ecx
or      eax, 2E000000h
mov     [edx+18h], eax
dec     word ptr [edx+1Eh]
add     word ptr [edx+24h], 6
pop     edx
pop     ecx
retn
sub_43A494 endp




sub_43A513 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_43A558
or      byte ptr [edx], 2
mov     dword ptr [edx+14h], 3D48004Eh
call    rand_
and     al, 3
shl     al, 5
add     al, 20h ; ' '
mov     [edx+22h], al
mov     byte ptr [edx+23h], 0
mov     word ptr [edx+24h], 10h
call    rand_
xor     ah, ah
and     al, 0Fh
add     eax, 20h ; ' '
shl     eax, 8
mov     [edx+26h], ax
inc     byte ptr [edx+8]

loc_43A558:
add     word ptr [edx+24h], 8
sub     word ptr [edx+1Eh], 8
mov     ax, [edx+26h]
sub     ax, 80h
jnz     short loc_43A577
mov     eax, edx
call    sub_4DE3EA
pop     edx
pop     ecx
retn

loc_43A577:
mov     [edx+26h], ax
cwde
sar     eax, 8
mov     ecx, eax
shl     eax, 8
add     eax, ecx
shl     eax, 8
add     eax, ecx
or      eax, 2E000000h
mov     [edx+18h], eax
pop     edx
pop     ecx
retn
sub_43A513 endp




sub_43A596 proc near
push    ecx
push    edx
mov     dl, [eax+8]
test    dl, dl
jnz     short loc_43A5C0
or      byte ptr [eax], 2
mov     word ptr [eax+24h], 64h ; 'd'
mov     dword ptr [eax+14h], 3C80000Fh
mov     [eax+22h], dl
mov     byte ptr [eax+23h], 0A0h
mov     dword ptr [eax+18h], 2E808080h
inc     byte ptr [eax+8]

loc_43A5C0:
cmp     byte ptr [eax+8], 2
jnz     short loc_43A5CE
call    sub_4DE3EA
pop     edx
pop     ecx
retn

loc_43A5CE:
mov     edx, [eax+28h]
mov     ecx, [edx+1Ch]
sar     ecx, 10h
add     ecx, [eax+2Ch]
mov     [eax+1Ch], cx
mov     ecx, [edx+20h]
sar     ecx, 10h
add     ecx, [eax+30h]
mov     [eax+1Eh], cx
mov     edx, [edx+24h]
sar     edx, 10h
add     edx, [eax+34h]
mov     [eax+20h], dx
pop     edx
pop     ecx
retn
sub_43A596 endp




sub_43A5FB proc near

var_20= byte ptr -20h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h
var_16= word ptr -16h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 0Ch
mov     ecx, eax
mov     dx, [eax+1Eh]
dec     edx
mov     [eax+1Eh], dx
test    dx, dx
jg      short loc_43A61A
call    sub_4DE3EA
jmp     short loc_43A666

loc_43A61A:
mov     edx, offset unk_5137DC
xor     ebx, ebx

loc_43A621:
mov     al, [edx]
mov     [esp+20h+var_20], al
mov     ax, [ecx+1Ch]
mov     si, [edx+4]
add     eax, esi
mov     [esp+20h+var_1C], ax
mov     ax, [ecx+1Eh]
mov     di, [edx+6]
add     eax, edi
mov     [esp+20h+var_1A], ax
mov     ax, [edx+8]
mov     [esp+20h+var_18], ax
mov     ax, [edx+0Ah]
mov     [esp+20h+var_16], ax
mov     eax, esp
call    sub_43A7A8
add     edx, 0Ch
inc     ebx
cmp     ebx, 4
jl      short loc_43A621

loc_43A666:
add     esp, 0Ch
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43A5FB endp




sub_43A66F proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43A675[edx*4]
pop     edx
retn
sub_43A66F endp




sub_43A67E proc near

var_20= dword ptr -20h
var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h
var_10= dword ptr -10h
arg_0= byte ptr  4

push    esi
push    edi
push    ebp
sub     esp, 44h
mov     esi, eax
mov     edi, edx
mov     edx, ecx
call    sub_4DE13B
mov     ecx, eax
mov     ebp, eax
test    eax, eax
jz      loc_43A754
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 7
mov     al, [esp+50h+arg_0]
mov     [ecx+3], al
mov     byte ptr [ecx+0Ch], 7
mov     byte ptr [ecx+0Dh], 0
test    esi, esi
jz      loc_43A744
call    rand_
mov     [esp+50h+var_10], eax
mov     eax, [esp+50h+var_10]
xor     ah, ah
and     al, 7Fh
add     eax, edi
mov     [esp+50h+var_18], ax
mov     [esp+50h+var_16], bx
call    rand_
xor     ah, ah
and     al, 7Fh
add     edx, eax
mov     [esp+50h+var_14], dx
mov     eax, esp
call    sub_4EF184
mov     eax, [esi+54h]
sar     eax, 10h
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+50h+var_20]
lea     edx, [esp+50h+var_18]
mov     eax, esp
call    sub_4EF2DC
mov     eax, [esi+1Ch]
sar     eax, 10h
mov     edx, [esp+2Eh]
sar     edx, 10h
add     eax, edx
mov     [ecx+1Ch], ax
mov     edx, [esi+20h]
sar     edx, 10h
mov     eax, [esp+50h+var_20]
sar     eax, 10h
add     eax, edx
mov     [ecx+1Eh], ax
mov     eax, [esi+24h]
sar     eax, 10h
mov     edx, [esp+50h+var_20+2]
sar     edx, 10h
add     eax, edx
mov     [ecx+20h], ax
jmp     short loc_43A750

loc_43A744:
mov     [ecx+1Ch], di
mov     [ecx+1Eh], bx
mov     [ecx+20h], dx

loc_43A750:
mov     edx, ebp
jmp     short loc_43A756

loc_43A754:
xor     edx, edx

loc_43A756:
mov     eax, edx
add     esp, 44h
pop     ebp
pop     edi
pop     esi
retn    4
sub_43A67E endp




sub_43A761 proc near
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     esi, edx
call    sub_4DE13B
mov     edx, eax
mov     edi, eax
test    eax, eax
jz      short loc_43A7A2
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 7
mov     byte ptr [eax+3], 2
mov     ah, [eax+6]
or      ah, 20h
mov     [edx+6], ah
mov     byte ptr [edx+0Ch], 7
mov     [edx+28h], ebp
movsx   eax, si
mov     [edx+2Ch], eax
movsx   eax, bx
mov     [edx+30h], eax
movsx   eax, cx
mov     [edx+34h], eax

loc_43A7A2:
mov     eax, edi
pop     ebp
pop     edi
pop     esi
retn
sub_43A761 endp




sub_43A7A8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
or      byte ptr [edx+7], 2
mov     byte ptr [edx+6], 20h ; ' '
mov     al, [edx+6]
mov     [edx+5], al
mov     [edx+4], al
mov     eax, [ecx+8]
sar     eax, 10h
sar     eax, 1
mov     ebx, [ecx+2]
sar     ebx, 10h
sub     ebx, eax
mov     eax, ebx
mov     [edx+18h], bx
mov     [edx+8], bx
mov     bx, [ecx+0Ah]
add     eax, ebx
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     eax, [ecx+6]
sar     eax, 10h
sar     eax, 1
mov     ebx, [ecx+4]
sar     ebx, 10h
sub     ebx, eax
mov     [edx+12h], bx
mov     eax, ebx
mov     [edx+0Ah], bx
mov     si, [ecx+8]
add     eax, esi
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     al, [ecx]
shl     al, 5
add     al, 20h ; ' '
mov     [edx+1Ch], al
mov     [edx+0Ch], al
add     al, 1Fh
mov     [edx+24h], al
mov     [edx+14h], al
mov     byte ptr [edx+15h], 0
mov     al, [edx+15h]
mov     [edx+0Dh], al
mov     byte ptr [edx+25h], 1Fh
mov     al, [edx+25h]
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 3C48h
mov     word ptr [edx+16h], 2Eh ; '.'
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43A7A8 endp

push    ecx
mov     ecx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_43A892
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 7
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 7
mov     [eax+1Ch], cx
mov     [eax+1Eh], dx
mov     [eax+26h], bx

loc_43A892:
pop     ecx
retn



sub_43A894 proc near
push    edx
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_43A8A9
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43A8A0[edx*4]
pop     edx
retn

loc_43A8A9:
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43A8AE[edx*4]
pop     edx
retn
sub_43A894 endp




sub_43A8B7 proc near
push    ecx
push    edx
mov     ecx, eax
test    byte ptr [eax+9], 7
jnz     short loc_43A923
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_43A923
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 8
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 14h
mov     ax, [ecx+20h]
mov     [edx+20h], ax
mov     ax, [ecx+1Ch]
mov     [edx+1Ch], ax
mov     ax, [ecx+1Eh]
mov     [edx+1Eh], ax
mov     dword ptr [edx+14h], 3D48000Eh
mov     dword ptr [edx+18h], 2E808080h
mov     byte ptr [edx+22h], 20h ; ' '
mov     byte ptr [edx+23h], 0
call    rand_
xor     ah, ah
and     al, 7
add     eax, 10h
mov     [edx+24h], ax

loc_43A923:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
retn
sub_43A8B7 endp




sub_43A929 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     ds:byte_560BE4, 1
jnz     short loc_43A93C
or      byte ptr [ecx], 2
jmp     short loc_43A93F

loc_43A93C:
and     byte ptr [ecx], 0FDh

loc_43A93F:
mov     bl, [ecx+0Eh]
test    bl, bl
jle     short loc_43A9A6
mov     dl, bl
cmp     bl, 0Ah
jb      short loc_43A956
jbe     short loc_43A95B
cmp     bl, 0Fh
jz      short loc_43A95B
jmp     short loc_43A95F

loc_43A956:
cmp     bl, 5
jnz     short loc_43A95F

loc_43A95B:
add     byte ptr [ecx+22h], 20h ; ' '

loc_43A95F:
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
cwde
mov     edx, [ecx+1Ch]
sar     edx, 10h
inc     eax
sub     edx, eax
mov     [ecx+1Eh], dx
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 6
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
cwde
xor     edx, edx
mov     dx, [ecx+24h]
inc     eax
add     edx, eax
mov     [ecx+24h], dx
dec     byte ptr [ecx+0Eh]
pop     edx
pop     ecx
pop     ebx
retn

loc_43A9A6:
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_43A929 endp




sub_43A9B1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
mov     ebx, 8
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     loc_43AA4D
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_43AA4D
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 8
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 20h ; ' '
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3
mov     ax, [ecx+20h]
add     eax, ebx
mov     [edx+20h], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3
mov     ax, [ecx+1Ch]
add     eax, ebx
mov     [edx+1Ch], ax
mov     ax, [ecx+1Eh]
mov     [edx+1Eh], ax
mov     dword ptr [edx+14h], 3D4E002Eh
mov     dword ptr [edx+18h], 2E404040h
mov     byte ptr [edx+22h], 20h ; ' '
mov     byte ptr [edx+23h], 0
call    rand_
xor     ah, ah
and     al, 3
add     eax, 12h
mov     [edx+24h], ax

loc_43AA4D:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn
sub_43A9B1 endp




sub_43AA54 proc near
cmp     ds:byte_560BE4, 3
jnz     short loc_43AA6B
cmp     ds:dword_560BEC, 0
jle     short loc_43AA6B
or      byte ptr [eax], 2
jmp     short loc_43AA6E

loc_43AA6B:
and     byte ptr [eax], 0FDh

loc_43AA6E:
cmp     byte ptr [eax+0Eh], 0
jle     sub_4DE3EA
sub     dword ptr [eax+18h], 20202h
cmp     byte ptr [eax+0Eh], 10h
jle     short loc_43AA8D
dec     word ptr [eax+1Eh]
dec     byte ptr [eax+0Eh]
retn

loc_43AA8D:
sub     word ptr [eax+1Eh], 2
dec     byte ptr [eax+0Eh]
retn
sub_43AA54 endp




sub_43AA96 proc near

var_C= dword ptr -0Ch
var_8= dword ptr -8
arg_0= byte ptr  4

push    esi
sub     esp, 8
mov     esi, eax
mov     [esp+0Ch+var_8], edx
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_43AB4B
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 9
mov     al, [esp+0Ch+arg_0]
mov     [edx+3], al
mov     byte ptr [edx+0Ch], 9
mov     byte ptr [edx+0Dh], 1
mov     byte ptr [edx+0Eh], 1Eh
mov     dword ptr [edx+14h], 3D48002Eh
call    rand_
mov     [esp+0Ch+var_C], eax
mov     al, byte ptr [esp+0Ch+var_C]
and     al, 3
shl     al, 5
add     al, 20h ; ' '
mov     [edx+22h], al
mov     byte ptr [edx+23h], 0
mov     dword ptr [edx+18h], 2E202020h
mov     word ptr [edx+24h], 6
call    rand_
xor     ah, ah
and     al, 3
add     [esi], ax
call    rand_
xor     ah, ah
and     al, 3
add     [esi+2], ax
call    rand_
xor     ah, ah
and     al, 3
add     [esi+4], ax
movsx   eax, word ptr [esi]
shl     eax, 10h
mov     [edx+28h], eax
mov     eax, [esi]
sar     eax, 10h
shl     eax, 10h
mov     [edx+2Ch], eax
mov     eax, [esi+2]
sar     eax, 10h
shl     eax, 10h
mov     [edx+30h], eax
mov     eax, [esp+0Ch+var_8]
mov     [edx+38h], ax
mov     [edx+3Ah], bx
mov     [edx+3Ch], ecx

loc_43AB4B:
add     esp, 8
pop     esi
retn    4
sub_43AA96 endp




sub_43AB52 proc near
push    ecx
push    esi
mov     ecx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_43AB9A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 9
mov     byte ptr [eax+0Ch], 9
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
movsx   esi, word ptr [ecx]
shl     esi, 10h
mov     [eax+28h], esi
mov     esi, [ecx]
sar     esi, 10h
shl     esi, 10h
mov     [eax+2Ch], esi
mov     ecx, [ecx+2]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+30h], ecx
mov     [eax+38h], dx
mov     [eax+3Ah], bx

loc_43AB9A:
pop     esi
pop     ecx
retn
sub_43AB52 endp

; START OF FUNCTION CHUNK FOR sub_43ACEE

loc_43AB9D:
sub     dword ptr [ecx+18h], 10101h
inc     word ptr [ecx+24h]
cmp     byte ptr [ecx+3], 0
jz      short loc_43AC06
xor     ebx, ebx
mov     [esp+60h+var_30], ebx ; float
mov     [esp+60h+var_2C], ebx ; int
mov     eax, [esi+14h]
mov     eax, [eax+34h]
mov     [esp+60h+var_28], eax
mov     eax, esp
call    sub_4EF184
mov     eax, [esi+0Eh]
sar     eax, 10h
mov     edx, esp
call    sub_4EF486
mov     eax, [esi+10h]
sar     eax, 10h
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+60h+var_20]
lea     edx, [esp+60h+var_30]
mov     eax, esp
call    sub_4EF371
mov     eax, [esp+60h+var_20]
add     [esi], eax
mov     eax, [esp+60h+var_1C]
add     [esi+4], eax
mov     eax, [esp+60h+var_18]
add     [esi+8], eax

loc_43AC06:
mov     eax, [esi]
sar     eax, 10h
mov     [ecx+1Ch], ax
mov     eax, [esi+4]
sar     eax, 10h
mov     [ecx+1Eh], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     [ecx+20h], ax

loc_43AC23:
add     esp, 50h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_43ACEE



sub_43AC2B proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     esi, eax
lea     edi, [eax+28h]
cmp     byte ptr [eax+8], 0
jnz     short loc_43AC48
mov     dword ptr [edi+0Ch], 10000h
inc     byte ptr [esi+8]

loc_43AC48:
mov     eax, [edi]
sar     eax, 10h
mov     [esp+1Ch+var_1C], ax
mov     eax, [edi+4]
sar     eax, 10h
mov     [esp+1Ch+var_1A], ax
mov     eax, [edi+8]
sar     eax, 10h
mov     [esp+1Ch+var_18], ax
mov     al, [esi+9]
test    al, al
jbe     short loc_43AC74
cmp     al, 1
jz      short loc_43AC9F
jmp     short loc_43ACE5

loc_43AC74:
mov     bh, [esi+0Eh]
inc     bh
mov     [esi+0Eh], bh
cmp     bh, 0Fh
jnz     short loc_43AC84
inc     byte ptr [esi+9]

loc_43AC84:
push    0
mov     ebx, [edi+10h]
sar     ebx, 10h
mov     edx, [edi+0Eh]
sar     edx, 10h
mov     ecx, esi
lea     eax, [esp+20h+var_1C]
call    sub_43AA96
jmp     short loc_43ACE5

loc_43AC9F:
push    1
mov     ebx, [edi+10h]
sar     ebx, 10h
mov     edx, [edi+0Eh]
sar     edx, 10h
mov     ecx, esi
lea     eax, [esp+20h+var_1C]
call    sub_43AA96
push    1
mov     ebx, [edi+10h]
sar     ebx, 10h
mov     edx, [edi+0Eh]
sar     edx, 10h
mov     ecx, esi
lea     eax, [esp+20h+var_1C]
call    sub_43AA96
inc     byte ptr [esi+0Eh]
inc     word ptr [edi+0Eh]
cmp     byte ptr [esi+0Eh], 1Eh
jnz     short loc_43ACE5
mov     eax, esi
call    sub_4DE3EA

loc_43ACE5:
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43AC2B endp




sub_43ACEE proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

; FUNCTION CHUNK AT 0043AB9D SIZE 0000008E BYTES

cmp     byte ptr [eax+0Dh], 0
jz      sub_43AC2B
push    ebx
push    ecx
push    edx
push    esi
sub     esp, 50h
mov     ecx, eax
lea     esi, [eax+28h]
cmp     byte ptr [eax+8], 0
jnz     short loc_43AD0D
or      byte ptr [ecx], 2

loc_43AD0D:
mov     dh, [ecx+0Eh]
dec     dh
mov     [ecx+0Eh], dh
jnz     loc_43AB9D
mov     eax, ecx
call    sub_4DE3EA
jmp     loc_43AC23
sub_43ACEE endp




sub_43AD27 proc near
push    edx
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_43AD3C
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43AD33[edx*4]
pop     edx
retn

loc_43AD3C:
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43AD41[edx*4]
pop     edx
retn
sub_43AD27 endp




sub_43AD4A proc near
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 7
jnb     loc_43ADCF
test    byte ptr [ecx+9], 3
jnz     short loc_43ADC2
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_43ADC2
mov     byte ptr [eax], 3
mov     al, [ecx+2]
mov     [edx+2], al
mov     al, [ecx+3]
mov     [edx+3], al
mov     al, [ecx+0Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 1
mov     byte ptr [edx+0Eh], 8
mov     ax, [ecx+20h]
mov     [edx+20h], ax
mov     ax, [ecx+1Ch]
mov     [edx+1Ch], ax
mov     ax, [ecx+1Eh]
mov     [edx+1Eh], ax
mov     dword ptr [edx+14h], 3D48004Eh
mov     dword ptr [edx+18h], 2E404040h
mov     byte ptr [edx+22h], 20h ; ' '
mov     byte ptr [edx+23h], 0
call    rand_
xor     ah, ah
and     al, 1
inc     eax
mov     [edx+24h], ax

loc_43ADC2:
call    rand_
and     al, 1
add     [ecx+9], al
pop     edx
pop     ecx
retn

loc_43ADCF:
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
retn
sub_43AD4A endp




sub_43ADD9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Eh], 0
jle     loc_43AE84
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_43AE0E
mov     dl, [ecx+22h]
cmp     dl, 80h
jnb     short loc_43AE0E
mov     dh, dl
add     dh, 20h ; ' '
mov     [ecx+22h], dh

loc_43AE0E:
call    rand_
xor     ah, ah
and     al, 1
add     [ecx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 1
add     [ecx+20h], ax
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 2
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_43AE4E
call    rand_
xor     ah, ah
and     al, 1
add     eax, 2
jmp     short loc_43AE58

loc_43AE4E:
call    rand_
xor     ah, ah
and     al, 1
inc     eax

loc_43AE58:
sub     [ecx+1Eh], ax
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 2
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_43AE76
inc     word ptr [ecx+24h]

loc_43AE76:
sub     dword ptr [ecx+18h], 20202h
dec     byte ptr [ecx+0Eh]
pop     edx
pop     ecx
pop     ebx
retn

loc_43AE84:
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_43ADD9 endp




sub_43AE8F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 30h ; '0'
jnb     loc_43AF4C
test    byte ptr [ecx+9], 0Fh
jnz     loc_43AF3E
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_43AF3E
mov     byte ptr [eax], 3
mov     al, [ecx+2]
mov     [edx+2], al
mov     al, [ecx+3]
mov     [edx+3], al
mov     al, [ecx+0Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 1
mov     byte ptr [edx+0Eh], 10h
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3
mov     ax, [ecx+20h]
add     eax, ebx
mov     [edx+20h], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3
mov     ax, [ecx+1Ch]
add     eax, ebx
mov     [edx+1Ch], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3
mov     ax, [ecx+1Eh]
add     eax, ebx
mov     [edx+1Eh], ax
mov     dword ptr [edx+14h], 3D48004Eh
mov     dword ptr [edx+18h], 2E404040h
mov     byte ptr [edx+22h], 20h ; ' '
mov     byte ptr [edx+23h], 0
call    rand_
xor     ah, ah
and     al, 1
add     eax, 2
mov     [edx+24h], ax

loc_43AF3E:
call    rand_
and     al, 3
add     [ecx+9], al
pop     edx
pop     ecx
pop     ebx
retn

loc_43AF4C:
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_43AE8F endp




sub_43AF57 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Eh], 0
jle     loc_43B002
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 6
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_43AF8C
mov     dl, [ecx+22h]
cmp     dl, 80h
jnb     short loc_43AF8C
mov     dh, dl
add     dh, 20h ; ' '
mov     [ecx+22h], dh

loc_43AF8C:
call    rand_
xor     ah, ah
and     al, 1
add     [ecx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 1
add     [ecx+20h], ax
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 2
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_43AFCC
call    rand_
xor     ah, ah
and     al, 1
add     eax, 2
jmp     short loc_43AFD6

loc_43AFCC:
call    rand_
xor     ah, ah
and     al, 1
inc     eax

loc_43AFD6:
sub     [ecx+1Eh], ax
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 2
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_43AFF4
inc     word ptr [ecx+24h]

loc_43AFF4:
sub     dword ptr [ecx+18h], 20202h
dec     byte ptr [ecx+0Eh]
pop     edx
pop     ecx
pop     ebx
retn

loc_43B002:
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_43AF57 endp




sub_43B00D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Fh], 1
jnz     loc_43B0C8
test    byte ptr [ecx+9], 7
jnz     loc_43B0BE
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_43B0BE
mov     byte ptr [eax], 3
mov     al, [ecx+2]
mov     [edx+2], al
mov     al, [ecx+3]
mov     [edx+3], al
mov     al, [ecx+0Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 1
call    rand_
and     al, 0Fh
mov     ah, 40h ; '@'
sub     ah, al
mov     [edx+0Eh], ah
mov     al, [ecx+0Fh]
mov     [edx+0Fh], al
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 7Fh
mov     ax, [ecx+1Ch]
sub     eax, ebx
mov     [edx+1Ch], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 7Fh
mov     ax, [ecx+20h]
sub     eax, ebx
mov     [edx+20h], ax
mov     ax, [ecx+1Eh]
mov     [edx+1Eh], ax
mov     dword ptr [edx+14h], 3D48004Eh
mov     dword ptr [edx+18h], 2E404040h
mov     byte ptr [edx+22h], 20h ; ' '
mov     byte ptr [edx+23h], 0
call    rand_
xor     ah, ah
and     al, 3Fh
add     eax, 0DCh
mov     [edx+24h], ax

loc_43B0BE:
call    rand_
and     al, 3
add     [ecx+9], al

loc_43B0C8:
pop     edx
pop     ecx
pop     ebx
retn
sub_43B00D endp




sub_43B0CC proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Eh], 0
jle     short loc_43B112
call    rand_
xor     ah, ah
and     al, 7
sub     [edx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 7
sub     [edx+20h], ax
call    rand_
xor     ah, ah
and     al, 7
add     eax, 0Ah
sub     [edx+1Eh], ax
add     word ptr [edx+24h], 2
sub     dword ptr [edx+18h], 10101h
dec     byte ptr [edx+0Eh]
pop     edx
retn

loc_43B112:
mov     eax, edx
call    sub_4DE3EA
pop     edx
retn
sub_43B0CC endp




sub_43B11B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 7
jnb     loc_43B1DE
test    byte ptr [ecx+9], 3
jnz     loc_43B1D0
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_43B1D0
mov     byte ptr [eax], 3
mov     al, [ecx+2]
mov     [edx+2], al
mov     al, [ecx+3]
mov     [edx+3], al
mov     al, [ecx+0Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 1
call    rand_
mov     ah, al
and     ah, 0Fh
mov     al, [ecx+0Eh]
sub     al, ah
mov     [edx+0Eh], al
mov     al, [ecx+0Fh]
mov     [edx+0Fh], al
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3Fh
mov     ax, [ecx+1Ch]
sub     eax, ebx
mov     [edx+1Ch], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3Fh
mov     ax, [ecx+20h]
sub     eax, ebx
mov     [edx+20h], ax
mov     ax, [ecx+1Eh]
mov     [edx+1Eh], ax
mov     dword ptr [edx+14h], 3D48004Eh
mov     dword ptr [edx+18h], 2E404040h
mov     byte ptr [edx+22h], 20h ; ' '
mov     byte ptr [edx+23h], 0
call    rand_
xor     ah, ah
and     al, 1Fh
add     eax, 0A0h
mov     [edx+24h], ax

loc_43B1D0:
call    rand_
and     al, 1
add     [ecx+9], al
pop     edx
pop     ecx
pop     ebx
retn

loc_43B1DE:
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_43B11B endp




sub_43B1E9 proc near
push    ebx
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Eh], 0
jle     short loc_43B233
call    rand_
xor     ah, ah
and     al, 3
sub     [edx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 3
sub     [edx+20h], ax
movsx   bx, byte ptr [edx+0Fh]
call    rand_
xor     ah, ah
and     al, 3
add     ebx, eax
sub     [edx+1Eh], bx
add     word ptr [edx+24h], 2
sub     dword ptr [edx+18h], 10101h
dec     byte ptr [edx+0Eh]
pop     edx
pop     ebx
retn

loc_43B233:
mov     eax, edx
call    sub_4DE3EA
pop     edx
pop     ebx
retn
sub_43B1E9 endp




sub_43B23D proc near
push    edx
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_43B252
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43B249[edx*4]
pop     edx
retn

loc_43B252:
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43B257[edx*4]
pop     edx
retn
sub_43B23D endp




sub_43B260 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
cmp     byte ptr [eax+0Fh], 1
jnz     loc_43B2FC
xor     bl, bl

loc_43B273:
mov     ecx, [edx+0Bh]
sar     ecx, 18h
call    rand_
xor     ah, ah
and     al, 7Fh
mov     si, ds:word_513854[ecx*8]
sub     esi, eax
mov     eax, [edx+0Bh]
sar     eax, 18h
shl     eax, 7
xor     ecx, ecx
mov     cl, bl
mov     word ptr ds:(dword_559AFE+2)[eax+ecx*8], si
mov     eax, [edx+0Bh]
sar     eax, 18h
movzx   di, bl
imul    edi, 28h ; '('
mov     si, ds:word_513856[eax*8]
sub     esi, edi
shl     eax, 7
mov     word ptr ds:dword_559B02[eax+ecx*8], si
mov     esi, [edx+0Bh]
sar     esi, 18h
call    rand_
xor     ah, ah
and     al, 7Fh
mov     si, ds:word_513858[esi*8]
sub     esi, eax
mov     eax, [edx+0Bh]
sar     eax, 18h
shl     eax, 7
mov     word ptr ds:(dword_559B02+2)[eax+ecx*8], si
inc     bl
cmp     bl, 10h
jb      loc_43B273
mov     byte ptr [edx+0Dh], 1

loc_43B2FC:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43B260 endp




sub_43B302 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= byte ptr -2Ch
var_28= byte ptr -28h
var_24= byte ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ecx, eax
cmp     byte ptr [eax+0Fh], 1
jnz     loc_43B5CC
mov     al, [ecx+9]
and     al, 0F0h
xor     edx, edx
mov     dl, al
sar     edx, 4
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [esp+34h+var_28], al
mov     al, 10h
mov     dl, [esp+34h+var_28]
sub     al, dl
mov     [esp+34h+var_1C], al
mov     dh, [ecx+0Ah]
test    dh, dh
jz      short loc_43B34B
sub     al, 8
mov     [esp+34h+var_1C], al
jmp     short loc_43B353

loc_43B34B:
cmp     al, 10h
jnz     short loc_43B353
mov     [esp+34h+var_1C], dh

loc_43B353:
mov     al, [esp+34h+var_28]
shl     al, 5
mov     ah, [ecx+9]
sub     ah, al
mov     [esp+34h+var_24], ah
xor     ah, ah
mov     [esp+34h+var_2C], ah
jmp     loc_43B598

loc_43B36E:
mov     al, [ecx+0Ah]
shl     al, 3
mov     ah, [esp+34h+var_2C]
add     ah, [esp+34h+var_28]
add     ah, al
mov     [esp+34h+var_20], ah

loc_43B382:
call    sub_4EE133
mov     ebx, eax
test    byte ptr [ecx+9], 1
jnz     short loc_43B3CF
mov     esi, [ecx+0Bh]
sar     esi, 18h
shl     esi, 7
mov     edx, [esp+5]
sar     edx, 18h
shl     edx, 3
call    rand_
xor     ah, ah
and     al, 7
sub     word ptr ds:(dword_559AFE+2)[edx+esi], ax
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 7
lea     esi, [eax+edx]
call    rand_
xor     ah, ah
and     al, 3
sub     word ptr ds:(dword_559B02+2)[esi], ax

loc_43B3CF:
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 7
mov     edx, [esp+5]
sar     edx, 18h
mov     [esp+34h+var_30], edx
mov     edi, edx
shl     edi, 3
lea     esi, [eax+edi]
call    rand_
xor     ah, ah
and     al, 7
sub     word ptr ds:dword_559B02[esi], ax
movzx   ebp, [esp+34h+var_20]
mov     eax, ebp
shl     eax, 8
add     eax, ebp
shl     eax, 8
add     eax, ebp
shl     eax, 2
mov     edx, 2E404040h
sub     edx, eax
mov     [esp+34h+var_34], edx
mov     esi, [esp+0Dh]
sar     esi, 18h
mov     eax, esi
mov     edx, esi
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     edx, eax
shl     eax, 8
add     eax, edx
shl     eax, 8
add     eax, edx
mov     edx, [esp+34h+var_34]
sub     edx, eax
mov     [ebx+4], edx
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 7
mov     edx, ds:(dword_559AFE+2)[edi+eax]
sar     edx, 10h
shl     edx, 10h
mov     eax, ds:dword_559AFE[edi+eax]
sar     eax, 10h
and     eax, 0FFFFh
or      edx, eax
mov     [ebx+8], edx
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 7
mov     eax, ds:dword_559B02[edi+eax]
sar     eax, 10h
mov     [ebx+10h], eax
shl     ebp, 4
mov     eax, esi
mov     edx, esi
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
lea     edx, [ebp+100h]
add     edx, eax
mov     [ebx+18h], edx
mov     dword ptr [ebx+0Ch], 3D48001Fh
mov     dword ptr [ebx+14h], offset loc_4E003F
mov     dword ptr [ebx+1Ch], 201Fh
mov     dword ptr [ebx+24h], 203Fh
mov     dword ptr [ebx+20h], 0
cmp     [esp+34h+var_24], 1Fh
jnz     loc_43B589
mov     eax, [esp+15h]
sar     eax, 18h
dec     eax
cmp     eax, [esp+34h+var_30]
jz      short loc_43B4EE
cmp     [esp+34h+var_1C], 0
jnz     loc_43B589
cmp     [esp+34h+var_2C], 0Fh
jnz     loc_43B589

loc_43B4EE:
mov     edx, [ecx+0Bh]
sar     edx, 18h
call    rand_
xor     ah, ah
and     al, 7Fh
mov     dx, ds:word_513854[edx*8]
sub     edx, eax
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 7
mov     ebx, [esp+34h+var_30+1]
sar     ebx, 18h
shl     ebx, 3
mov     word ptr ds:(dword_559AFE+2)[ebx+eax], dx
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     edx, eax
shl     eax, 7
mov     dx, ds:word_513856[edx*8]
mov     word ptr ds:dword_559B02[ebx+eax], dx
mov     edx, [ecx+0Bh]
sar     edx, 18h
call    rand_
xor     ah, ah
and     al, 7Fh
mov     dx, ds:word_513858[edx*8]
sub     edx, eax
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 7
mov     word ptr ds:(dword_559B02+2)[ebx+eax], dx
cmp     word ptr [ecx+26h], 1
jnz     short loc_43B589
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     eax, edx
shl     edx, 7
mov     ax, ds:word_513884[eax*2]
mov     word ptr ds:dword_559B02[edx+ebx], ax

loc_43B589:
mov     bl, [esp+34h+var_2C]
inc     bl
mov     [esp+34h+var_2C], bl
cmp     bl, 10h
jge     short loc_43B5B3

loc_43B598:
mov     al, [esp+34h+var_2C]
mov     dl, [esp+34h+var_1C]
cmp     al, dl
jl      loc_43B36E
sub     al, dl
mov     [esp+34h+var_20], al
jmp     loc_43B382

loc_43B5B3:
mov     al, [ecx+9]
inc     al
mov     [ecx+9], al
jnz     short loc_43B5CC
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_43B5C8
mov     [ecx+0Ah], al
jmp     short loc_43B5CC

loc_43B5C8:
mov     byte ptr [ecx+0Ah], 1

loc_43B5CC:
add     esp, 1Ch
pop     ebp
jmp     loc_43B2FC
sub_43B302 endp




sub_43B5D5 proc near
push    ebx
push    edx
mov     edx, eax
mov     ah, [eax]
or      ah, 22h
mov     [edx], ah
mov     byte ptr [edx+0Dh], 0
mov     dword ptr [edx+14h], 3D48002Eh
call    rand_
and     al, 3
shl     al, 5
add     al, 20h ; ' '
mov     [edx+22h], al
mov     byte ptr [edx+23h], 0
mov     word ptr [edx+26h], 0
inc     byte ptr [edx+8]
lea     eax, [edx+28h]
mov     dword ptr [eax+10h], 80000h
mov     word ptr [eax+16h], 0
mov     bx, [eax+16h]
mov     [eax+14h], bx
mov     eax, edx
call    sub_43B629
pop     edx
pop     ebx
retn
sub_43B5D5 endp




sub_43B629 proc near

var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 4
mov     edx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_43B649
mov     ch, [edx+0Dh]
inc     ch
mov     [edx+0Dh], ch
cmp     ch, 20h ; ' '
jnz     short loc_43B656
inc     byte ptr [edx+9]
jmp     short loc_43B656

loc_43B649:
mov     bl, [edx+0Dh]
dec     bl
mov     [edx+0Dh], bl
jnz     short loc_43B656
inc     byte ptr [edx+8]

loc_43B656:
lea     ecx, [edx+28h]
fild    dword ptr [ecx+8]
fadd    ds:dbl_50A264
call    __CHP
fistp   dword ptr [ecx+8]
fild    dword ptr [ecx+10h]
fadd    ds:dbl_50A26C
call    __CHP
fistp   dword ptr [ecx+10h]
fild    word ptr [ecx+14h]
fadd    ds:dbl_50A274
call    __CHP
fistp   [esp+10h+var_10]
mov     eax, [esp+10h+var_10]
mov     [ecx+14h], ax
add     word ptr [ecx+16h], 89h
mov     eax, [ecx+14h]
sar     eax, 10h
call    sub_4EF008
shl     eax, 4
add     eax, [ecx+4]
sar     eax, 10h
mov     [edx+1Ch], ax
mov     eax, [ecx+8]
sar     eax, 10h
mov     [edx+1Eh], ax
mov     eax, [ecx+0Ch]
sar     eax, 10h
mov     [edx+20h], ax
mov     eax, [ecx+10h]
sar     eax, 10h
mov     [edx+24h], ax
mov     ebx, [edx+0Ah]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 8
add     eax, ebx
shl     eax, 8
add     eax, ebx
add     eax, 2E000000h
mov     [edx+18h], eax
mov     eax, [ecx+12h]
sar     eax, 10h
sar     eax, 8
mov     [edx+26h], ax
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_43B629 endp



; Attributes: thunk

sub_43B6FD proc near
jmp     sub_4DE3EA
sub_43B6FD endp




sub_43B702 proc near
push    edx
mov     edx, eax
call    rand_
and     al, 7
add     al, 1Eh
mov     [edx+0Dh], al
inc     byte ptr [edx+8]
pop     edx
retn
sub_43B702 endp




sub_43B716 proc near
push    ecx
push    edx
mov     edx, eax
mov     ah, [eax+0Dh]
dec     ah
mov     [edx+0Dh], ah
jnz     short loc_43B773
call    sub_4DE13B
test    eax, eax
jz      short loc_43B767
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Dh
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0Dh
or      byte ptr [eax+6], 20h
mov     [eax+28h], edx
mov     ecx, [edx+1Ah]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+2Ch], ecx
mov     ecx, [edx+1Ch]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+30h], ecx
mov     ecx, [edx+1Eh]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+34h], ecx

loc_43B767:
call    rand_
and     al, 7
add     al, 1Eh
mov     [edx+0Dh], al

loc_43B773:
pop     edx
pop     ecx
retn
sub_43B716 endp




sub_43B776 proc near
push    edx
cmp     byte ptr [eax+3], 0
jnz     short loc_43B78B
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43B782[edx*4]
pop     edx
retn

loc_43B78B:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43B790[edx*4]
pop     edx
retn
sub_43B776 endp




sub_43B799 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_43B7D0
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Dh
mov     byte ptr [eax+0Ch], 0Dh
mov     bx, [edx]
mov     [eax+1Ch], bx
mov     bx, [edx+2]
mov     [eax+1Eh], bx
mov     dx, [edx+4]
mov     [eax+20h], dx
mov     byte ptr [eax+3], 0
or      byte ptr [eax+6], 20h

loc_43B7D0:
pop     edx
pop     ebx
retn
sub_43B799 endp




sub_43B7D3 proc near
push    edx
mov     edx, eax
mov     ah, [eax]
or      ah, 22h
mov     [edx], ah
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Dh], al
call    rand_
and     al, 3
mov     [edx+0Fh], al
mov     dword ptr [edx+14h], 3CC00028h
mov     word ptr [edx+24h], 20h ; ' '
mov     word ptr [edx+26h], 0
mov     dword ptr [edx+18h], 2C808080h
inc     byte ptr [edx+8]
lea     eax, [edx+28h]
mov     word ptr [eax+14h], 0
mov     eax, edx
call    sub_43B917
pop     edx
retn
sub_43B7D3 endp




sub_43B820 proc near

var_30= dword ptr -30h
var_28= dword ptr -28h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 54h
lea     ecx, [eax+28h]
mov     dl, [eax+0Ah]
test    dl, dl
jbe     short loc_43B83E
cmp     dl, 1
jz      loc_43B8EF
jmp     loc_43B910

loc_43B83E:
mov     bh, [eax+0Dh]
inc     bh
mov     [eax+0Dh], bh
cmp     bh, 10h
jnz     short loc_43B84E
inc     byte ptr [eax+0Ah]

loc_43B84E:
fild    word ptr [ecx+14h]
fadd    ds:dbl_50A284
call    __CHP
fistp   [esp+60h+var_10]
mov     edx, [esp+60h+var_10]
mov     [ecx+14h], dx
mov     eax, [eax+0Ah]
sar     eax, 18h
shl     eax, 6
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 4
mov     edx, [ecx+18h]
add     edx, eax
mov     [esp+60h+var_18], edx
xor     edx, edx
mov     [esp+60h+var_1C], edx
mov     [esp+60h+var_20], edx
mov     eax, esp
call    sub_4EF184
mov     eax, [ecx+14h]
sar     eax, 10h
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+60h+var_30]
lea     edx, [esp+60h+var_20]
mov     eax, esp
call    sub_4EF371
mov     eax, [ecx]
mov     eax, [eax+1Ah]
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+60h+var_30]
add     edx, eax
mov     [ecx+4], edx
mov     eax, [ecx]
mov     eax, [eax+1Eh]
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+60h+var_28]
add     edx, eax
mov     [ecx+0Ch], edx
jmp     short loc_43B8FF

loc_43B8EF:
mov     dl, [eax+0Dh]
inc     dl
mov     [eax+0Dh], dl
cmp     dl, 20h ; ' '
jnz     short loc_43B8FF
inc     byte ptr [eax+8]

loc_43B8FF:
fild    dword ptr [ecx+8]
fadd    ds:dbl_50A27C
call    __CHP
fistp   dword ptr [ecx+8]

loc_43B910:
add     esp, 54h
pop     edx
pop     ecx
pop     ebx
retn
sub_43B820 endp




sub_43B917 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_43B920[ecx*4]
lea     eax, [edx+28h]
mov     ecx, [eax+4]
sar     ecx, 10h
mov     [edx+1Ch], cx
mov     ecx, [eax+8]
sar     ecx, 10h
mov     [edx+1Eh], cx
mov     ecx, [eax+0Ch]
sar     ecx, 10h
mov     [edx+20h], cx
mov     eax, [eax+12h]
sar     eax, 10h
sar     eax, 8
mov     [edx+26h], ax
inc     byte ptr [edx+0Eh]
mov     eax, [edx+0Ch]
sar     eax, 18h
mov     cl, [edx+0Eh]
cmp     cl, ds:byte_5138F4[eax]
jb      short loc_43B96D
mov     byte ptr [edx+0Eh], 0

loc_43B96D:
mov     eax, [edx+0Ch]
sar     eax, 18h
mov     ecx, ds:off_5138E4[eax*4]
mov     eax, [edx+0Bh]
sar     eax, 18h
mov     al, [ecx+eax*2]
mov     [edx+22h], al
mov     eax, [edx+0Bh]
sar     eax, 18h
mov     al, [ecx+eax*2+1]
mov     [edx+23h], al
pop     edx
pop     ecx
retn
sub_43B917 endp



; Attributes: thunk

sub_43B996 proc near
jmp     sub_4DE3EA
sub_43B996 endp




sub_43B99B proc near
mov     byte ptr [eax+0Dh], 5
inc     byte ptr [eax+8]
retn
sub_43B99B endp




sub_43B9A3 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ah, [eax+0Dh]
dec     ah
mov     [edx+0Dh], ah
jnz     short loc_43B9FD
call    sub_4DE13B
test    eax, eax
jz      short loc_43B9F9
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Eh
mov     bl, [edx+3]
mov     [eax+3], bl
mov     byte ptr [eax+0Ch], 1
or      byte ptr [eax+6], 20h
lea     ecx, [eax+28h]
lea     ebx, [edx+28h]
mov     [ecx], edx
call    rand_
and     ah, 0Fh
mov     [ecx+16h], ax
movsx   eax, word ptr [ebx]
shl     eax, 10h
mov     [ecx+18h], eax
mov     eax, [edx+1Ch]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+8], eax

loc_43B9F9:
mov     byte ptr [edx+0Dh], 5

loc_43B9FD:
pop     edx
pop     ecx
pop     ebx
retn
sub_43B9A3 endp




sub_43BA01 proc near
push    edx
cmp     byte ptr [eax+0Ch], 0
jnz     short loc_43BA16
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43BA0D[edx*4]
pop     edx
retn

loc_43BA16:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43BA1B[edx*4]
pop     edx
retn
sub_43BA01 endp




sub_43BA24 proc near
push    ecx
push    esi
mov     ecx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_43BA60
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Eh
mov     si, [ecx]
mov     [eax+1Ch], si
mov     si, [ecx+2]
mov     [eax+1Eh], si
mov     cx, [ecx+4]
mov     [eax+20h], cx
mov     byte ptr [eax+0Ch], 0
mov     [eax+3], bl
or      byte ptr [eax+6], 20h
lea     ecx, [eax+28h]
mov     [ecx], dx

loc_43BA60:
pop     esi
pop     ecx
retn
sub_43BA24 endp

byte_43BA63 db 20h
db 20h, 8
word_43BA66 dw 808h
dword_43BA68 dd 0D2315202h, 0FF08508Ah
db 14h, 95h
dd offset unk_513910
pop     edx
retn
db 8Dh, 40h, 0
jpt_43BAAA dd offset loc_43BAB1 ; jump table for switch statement
dd offset loc_43BADA
dd offset loc_43BB4F
dd offset loc_43BB80
dd offset loc_43BBE1



sub_43BA8F proc near

var_14= byte ptr -14h
var_10= byte ptr -10h

push    edx
push    esi
push    edi
sub     esp, 8
or      byte ptr [eax], 2
mov     dl, [eax+3]
cmp     dl, 4           ; switch 5 cases
ja      def_43BAAA      ; jumptable 0043BAAA default case
and     edx, 0FFh
jmp     jpt_43BAAA[edx*4] ; switch jump

loc_43BAB1:             ; jumptable 0043BAAA case 0
mov     dword ptr [eax+14h], 3D48000Eh
mov     byte ptr [eax+22h], 40h ; '@'
mov     byte ptr [eax+23h], 20h ; ' '
mov     dword ptr [eax+18h], 2E808080h
mov     word ptr [eax+24h], 30h ; '0'
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+0Bh], 3
jmp     def_43BAAA      ; jumptable 0043BAAA default case

loc_43BADA:             ; jumptable 0043BAAA case 1
mov     word ptr [eax+24h], 1
mov     byte ptr [eax+8], 2
mov     byte ptr [eax+9], 1
mov     word ptr [eax+0Ah], 0
mov     dword ptr [eax+14h], 3D48000Eh
mov     byte ptr [eax+22h], 40h ; '@'
mov     byte ptr [eax+23h], 20h ; ' '
mov     dl, [eax+0Ch]
cmp     dl, 1
jb      short loc_43BB11
jbe     short loc_43BB2B
cmp     dl, 2
jz      short loc_43BB3D
jmp     def_43BAAA      ; jumptable 0043BAAA default case

loc_43BB11:
test    dl, dl
jnz     def_43BAAA      ; jumptable 0043BAAA default case
mov     dword ptr [eax+18h], 2E000080h
mov     word ptr [eax+26h], 8
jmp     def_43BAAA      ; jumptable 0043BAAA default case

loc_43BB2B:
mov     dword ptr [eax+18h], 2E008000h
mov     word ptr [eax+26h], 800h
jmp     def_43BAAA      ; jumptable 0043BAAA default case

loc_43BB3D:
mov     dword ptr [eax+18h], 2E008080h
mov     word ptr [eax+26h], 808h
jmp     def_43BAAA      ; jumptable 0043BAAA default case

loc_43BB4F:             ; jumptable 0043BAAA case 2
mov     dword ptr [eax+14h], 3D48000Eh
mov     byte ptr [eax+22h], 40h ; '@'
mov     byte ptr [eax+23h], 20h ; ' '
mov     byte ptr [eax+8], 3
mov     dl, [eax+3]
mov     [eax+9], dl
mov     word ptr [eax+0Ah], 0
mov     dword ptr [eax+18h], 2E000080h
mov     word ptr [eax+26h], 10h
jmp     loc_43BC0E

loc_43BB80:             ; jumptable 0043BAAA case 3
mov     dword ptr [eax+14h], 3D48002Eh
mov     byte ptr [eax+22h], 0E0h
mov     byte ptr [eax+23h], 60h ; '`'
mov     byte ptr [eax+8], 4
mov     byte ptr [eax+9], 0Ch
mov     word ptr [eax+0Ah], 0
mov     dword ptr [eax+18h], 2E808080h
mov     word ptr [eax+26h], 0
lea     edi, [esp+14h+var_10]
mov     esi, offset byte_43BA63
movsw
movsb
mov     edi, esp
mov     esi, offset word_43BA66
movsw
movsb
mov     edx, [eax+9]
sar     edx, 18h
mov     dl, [esp+edx+14h+var_10]
xor     dh, dh
mov     [eax+24h], dx
mov     edx, [eax+9]
sar     edx, 18h
mov     dl, [esp+edx+14h+var_14]
mov     [eax+0Ch], dl
or      byte ptr [eax], 20h
jmp     short def_43BAAA ; jumptable 0043BAAA default case

loc_43BBE1:             ; jumptable 0043BAAA case 4
or      byte ptr [eax], 20h
mov     dword ptr [eax+14h], 3D08000Eh
mov     byte ptr [eax+22h], 0E0h
mov     byte ptr [eax+23h], 20h ; ' '
mov     byte ptr [eax+8], 3
mov     byte ptr [eax+9], 0
mov     word ptr [eax+0Ah], 0
mov     dword ptr [eax+18h], 2E000080h
mov     word ptr [eax+26h], 0

loc_43BC0E:
mov     word ptr [eax+24h], 28h ; '('

def_43BAAA:             ; jumptable 0043BAAA default case
add     esp, 8
pop     edi
pop     esi
pop     edx
retn
sub_43BA8F endp




sub_43BC1B proc near
push    edx
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_43BC2D
call    sub_4DE3EA
pop     edx
retn

loc_43BC2D:
sub     dword ptr [eax+18h], 202020h
add     word ptr [eax+24h], 8
pop     edx
retn
sub_43BC1B endp




sub_43BC3B proc near
push    ebx
push    edx
mov     dl, [eax+9]
test    dl, dl
jbe     short loc_43BC4C
cmp     dl, 1
jz      short loc_43BC90
pop     edx
pop     ebx
retn

loc_43BC4C:
mov     byte ptr [eax+9], 1
mov     dl, [eax+0Ch]
cmp     dl, 1
jb      short loc_43BC61
jbe     short loc_43BC74
cmp     dl, 2
jz      short loc_43BC83
jmp     short loc_43BC90

loc_43BC61:
test    dl, dl
jnz     short loc_43BC90
mov     dword ptr [eax+18h], 2E000080h
mov     word ptr [eax+26h], 8
jmp     short loc_43BC90

loc_43BC74:
mov     dword ptr [eax+18h], 2E008000h
mov     word ptr [eax+26h], 800h
jmp     short loc_43BC90

loc_43BC83:
mov     dword ptr [eax+18h], 2E008080h
mov     word ptr [eax+26h], 808h

loc_43BC90:
mov     dx, [eax+24h]
cmp     dx, 1Fh
jg      short loc_43BCAF
mov     ebx, edx
add     ebx, 6
mov     [eax+24h], bx
xor     edx, edx
mov     dx, [eax+26h]
add     [eax+18h], edx
pop     edx
pop     ebx
retn

loc_43BCAF:
mov     byte ptr [eax+9], 2
mov     word ptr [eax+24h], 0
pop     edx
pop     ebx
retn
sub_43BC3B endp




sub_43BCBC proc near
push    ebx
push    edx
mov     dx, [eax+24h]
test    dx, dx
jg      short loc_43BCCF
call    sub_4DE3EA
pop     edx
pop     ebx
retn

loc_43BCCF:
mov     ebx, edx
sub     ebx, 8
mov     [eax+24h], bx
xor     edx, edx
mov     dx, [eax+26h]
sub     [eax+18h], edx
pop     edx
pop     ebx
retn
sub_43BCBC endp




sub_43BCE4 proc near
push    edx
cmp     byte ptr [eax+9], 0
jnz     short loc_43BCF2
call    sub_4DE3EA
pop     edx
retn

loc_43BCF2:
sub     dword ptr [eax+18h], 0A0A0Ah
movsx   dx, byte ptr [eax+0Ch]
add     [eax+24h], dx
dec     byte ptr [eax+9]
pop     edx
retn
sub_43BCE4 endp




sub_43BD07 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43BD0D[edx*4]
pop     edx
retn
sub_43BD07 endp

db 90h
jpt_43BD4E dd offset loc_43BD55 ; jump table for switch statement
dd offset loc_43BD55
dd offset loc_43BD5C
dd offset loc_43BD65



sub_43BD27 proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
cmp     byte ptr [ecx+3], 2
jb      short loc_43BD9E
mov     byte ptr [ecx+8], 3
xor     eax, eax
mov     al, [ecx+3]
sub     eax, 2          ; switch 4 cases
cmp     eax, 3
ja      short def_43BD4E ; jumptable 0043BD4E default case
jmp     jpt_43BD4E[eax*4] ; switch jump

loc_43BD55:             ; jumptable 0043BD4E cases 2,3
xor     esi, esi
mov     [esp+14h+var_14], esi
jmp     short def_43BD4E ; jumptable 0043BD4E default case

loc_43BD5C:             ; jumptable 0043BD4E case 4
mov     [esp+14h+var_14], 1
jmp     short def_43BD4E ; jumptable 0043BD4E default case

loc_43BD65:             ; jumptable 0043BD4E case 5
xor     edx, edx
mov     [esp+14h+var_14], edx
mov     byte ptr [ecx+8], 4

def_43BD4E:             ; jumptable 0043BD4E default case
mov     edx, esp
mov     eax, ecx
call    sub_4DD0F8
lea     eax, [ecx+18h]
call    sub_4EF1AB
mov     dword ptr [ecx+38h], 0
mov     eax, [ecx+38h]
mov     [ecx+28h], eax
mov     eax, [ecx+28h]
mov     [ecx+18h], eax
mov     dword ptr [ecx+50h], 2808080h
jmp     loc_43BE67

loc_43BD9E:
lea     eax, [ecx+3Ch]
mov     word ptr [eax+4], 0
xor     edx, edx
mov     dl, [ecx+3]
mov     ebx, edx
shl     ebx, 3
mov     edx, [ecx+9]
sar     edx, 18h
mov     dx, ds:word_513924[ebx+edx*2]
mov     [eax], dx
xor     edx, edx
mov     dl, [ecx+3]
mov     ebx, edx
shl     ebx, 3
mov     edx, [ecx+9]
sar     edx, 18h
mov     dx, ds:word_51393C[ebx+edx*2]
mov     [eax+2], dx
cmp     byte ptr [ecx+3], 0
jnz     short loc_43BE2C
xor     edx, edx
mov     dl, [ecx+3]
mov     ebx, edx
shl     ebx, 3
mov     edx, [ecx+9]
sar     edx, 18h
mov     dx, ds:word_513954[ebx+edx*2]
mov     [eax+6], dx
xor     ebx, ebx
mov     bl, [ecx+3]
mov     edx, [ecx+9]
sar     edx, 18h
add     edx, edx
mov     dx, ds:word_51396C[edx+ebx*8]
mov     [eax+8], dx
mov     word ptr [eax+0Ah], 0
lea     edx, [ecx+48h]
mov     eax, 14Fh
call    sub_4D8BC3

loc_43BE2C:
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     eax, [ecx+18h]
call    sub_4EF1AB
mov     dword ptr [ecx+38h], 0
mov     eax, [ecx+38h]
mov     [ecx+28h], eax
mov     eax, [ecx+28h]
mov     [ecx+18h], eax
mov     dword ptr [ecx+50h], 2808080h
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 20h ; ' '

loc_43BE67:
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43BD27 endp




; int __fastcall sub_43BE6F(int, int)
sub_43BE6F proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
push    edi             ; int
mov     ecx, eax
lea     edx, [eax+3Ch]
mov     ax, [edx+2]
mov     bx, [edx]
add     ebx, eax
mov     [edx], bx
add     [edx+4], bx
cmp     byte ptr [ecx+3], 0
jnz     short loc_43BEA3
mov     ax, [edx+8]
mov     di, [edx+6]
add     edi, eax
mov     [edx+6], di
add     [edx+0Ah], di
jmp     short loc_43BED0

loc_43BEA3:
xor     ebx, ebx
mov     bl, [ecx+0Bh]
shl     ebx, 2
mov     al, [ecx+0Bh]
test    al, al
jz      short loc_43BEB9
mov     ah, al
dec     ah
mov     [ecx+0Bh], ah

loc_43BEB9:
mov     esi, ebx
shl     esi, 10h
or      esi, 2000000h
mov     eax, ebx
shl     eax, 8
or      eax, esi
or      eax, ebx
mov     [ecx+50h], eax

loc_43BED0:
cmp     word ptr [edx+0Ah], 0
jl      short loc_43BEDD
cmp     word ptr [edx], 0
jge     short loc_43BEE6

loc_43BEDD:
mov     eax, ecx
call    sub_4DE3EA
jmp     short loc_43BF21

loc_43BEE6:
lea     ebx, [ecx+18h]
mov     eax, ebx
call    sub_4EF1AB
fild    word ptr [edx+4]
fmul    ds:dbl_50A28C
fst     dword ptr [ecx+38h]
fstp    dword ptr [ecx+18h]
fild    word ptr [edx+0Ah]
fmul    ds:dbl_50A28C
fstp    dword ptr [ecx+28h]
mov     dl, [ecx+9]
inc     dl
mov     [ecx+9], dl
xor     eax, eax
mov     al, dl
shl     eax, 7
mov     edx, ebx
call    sub_4EF50D

loc_43BF21:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43BE6F endp



; Attributes: thunk

sub_43BF27 proc near
jmp     sub_4DE3EA
sub_43BF27 endp




; int __fastcall sub_43BF2C(int, int)
sub_43BF2C proc near

var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
add     eax, 18h
call    sub_4EF1AB
cmp     byte ptr [ecx+0Ah], 80h
jnz     short loc_43BF49
mov     ebx, 80h
jmp     short loc_43BF6E

loc_43BF49:
xor     ebx, ebx
mov     bl, [ecx+9]
mov     eax, 10h
sub     eax, ebx
mov     ebx, eax
xor     eax, eax
mov     al, [ecx+0Ah]
add     ebx, eax
cmp     ebx, 80h
jl      short loc_43BF6B
mov     ebx, 80h

loc_43BF6B:
mov     [ecx+0Ah], bl

loc_43BF6E:
inc     byte ptr [ecx+9]
xor     edx, edx
mov     dl, [ecx+9]
shl     edx, 7
xor     eax, eax
mov     al, [ecx+3]
sub     eax, 2
cmp     eax, 1
jb      short loc_43BF92
jbe     short loc_43BFD6
cmp     eax, 2
jz      short loc_43BFFE
jmp     loc_43C00B

loc_43BF92:
test    eax, eax
jnz     short loc_43C00B
mov     dword ptr [ecx+38h], 3E400000h
mov     eax, [ecx+38h]
mov     [ecx+18h], eax
mov     eax, edx
call    sub_4EF008
mov     edx, eax
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     edx, eax
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 2
add     eax, edx

loc_43BFC5:
mov     [esp+10h+var_10], eax
fild    [esp+10h+var_10]
fmul    ds:dbl_50A294
fstp    dword ptr [ecx+28h]
jmp     short loc_43C00B

loc_43BFD6:
mov     dword ptr [ecx+38h], 3E000000h
mov     eax, [ecx+38h]
mov     [ecx+18h], eax
mov     eax, edx
call    sub_4EF003
mov     edx, eax
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
shl     ebx, 4
add     eax, ebx
jmp     short loc_43BFC5

loc_43BFFE:
mov     dword ptr [ecx+38h], 3E400000h
mov     eax, [ecx+38h]
mov     [ecx+18h], eax

loc_43C00B:
lea     edx, [ecx+18h]
xor     eax, eax
mov     al, [ecx+9]
shl     eax, 7
call    sub_4EF50D

loc_43C01B:
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_43BF2C endp

db 90h
jpt_43C05B dd offset loc_43C062 ; jump table for switch statement
dd offset loc_43C07E
dd offset loc_43C093
dd offset loc_43C0A2



; int __fastcall sub_43C033(int, int)
sub_43C033 proc near

var_C= dword ptr -0Ch

push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     edx, eax
add     eax, 18h
call    sub_4EF1AB
xor     ecx, ecx
mov     cl, [edx+0Ah]
inc     byte ptr [edx+9]
xor     eax, eax
mov     al, [edx+3]
sub     eax, 2          ; switch 4 cases
cmp     eax, 3
ja      def_43C05B      ; jumptable 0043C05B default case
jmp     jpt_43C05B[eax*4] ; switch jump

loc_43C062:             ; jumptable 0043C05B case 2
mov     dword ptr [edx+38h], 3E400000h
mov     eax, [edx+38h]
mov     [edx+18h], eax
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     [esp+0Ch+var_C], eax
jmp     short loc_43C0D4

loc_43C07E:             ; jumptable 0043C05B case 3
mov     dword ptr [edx+38h], 3E000000h
mov     eax, [edx+38h]
mov     [edx+18h], eax
shl     ecx, 4
mov     [esp+0Ch+var_C], ecx
jmp     short loc_43C0D4

loc_43C093:             ; jumptable 0043C05B case 4
mov     dword ptr [edx+38h], 3E400000h
mov     eax, [edx+38h]
mov     [edx+18h], eax
jmp     short def_43C05B ; jumptable 0043C05B default case

loc_43C0A2:             ; jumptable 0043C05B case 5
cmp     byte ptr [edx+9], 1Fh
jbe     short loc_43C0B1
mov     eax, edx
call    sub_4DE3EA
jmp     short loc_43C0F4

loc_43C0B1:
mov     dword ptr [edx+38h], 3E400000h
mov     eax, [edx+38h]
mov     [edx+18h], eax
xor     eax, eax
mov     al, [edx+9]
mov     al, ds:byte_513984[eax]
and     eax, 0FFh
shl     eax, 4
mov     [esp+0Ch+var_C], eax ; int

loc_43C0D4:
fild    [esp+0Ch+var_C]
fmul    ds:dbl_50A29C
fstp    dword ptr [edx+28h]

def_43C05B:             ; jumptable 0043C05B default case
lea     eax, [edx+18h]
xor     ecx, ecx
mov     cl, [edx+9]
shl     ecx, 7
mov     edx, eax
mov     eax, ecx
call    sub_4EF50D

loc_43C0F4:
add     esp, 4
pop     edx
pop     ecx
retn
sub_43C033 endp




sub_43C0FA proc near

var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 4
inc     byte ptr [eax+9]
mov     dh, [eax+0Ah]
dec     dh
mov     [eax+0Ah], dh
jnz     short loc_43C117
call    sub_4DE3EA
jmp     loc_43C01B

loc_43C117:
xor     edx, edx
mov     dl, [eax+0Ah]
shl     edx, 3
cmp     byte ptr [eax+3], 4
jnz     short loc_43C145
xor     ecx, ecx
mov     cl, [eax+9]
shl     ecx, 6
add     ecx, 300h
mov     [esp+10h+var_10], ecx
fild    [esp+10h+var_10]
fmul    ds:dbl_50A2A4
fst     dword ptr [eax+38h]
fstp    dword ptr [eax+18h]

loc_43C145:
mov     ecx, edx
shl     ecx, 10h
or      ecx, 2000000h
mov     ebx, edx
shl     ebx, 8
or      ecx, ebx
or      ecx, edx
mov     [eax+50h], ecx
jmp     loc_43C01B
sub_43C0FA endp




sub_43C161 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_43C16B[ecx*4]
cmp     byte ptr [edx+3], 0
jz      short loc_43C1BC
call    sub_4EE133
mov     ecx, [edx+18h]
mov     [eax+4], ecx
mov     ecx, [edx+1Ch]
mov     [eax+8], ecx
mov     ecx, [edx+20h]
mov     [eax+10h], ecx
mov     ecx, [edx+34h]
mov     [eax+0Ch], ecx
mov     ecx, [edx+38h]
mov     [eax+14h], ecx
mov     ecx, [edx+3Ch]
mov     ebx, ecx
and     ebx, 0FFFFh
mov     [eax+1Ch], ebx
shr     ecx, 10h
mov     [eax+24h], ecx
mov     dx, [edx+24h]
and     edx, 0FFFFh
mov     [eax+18h], edx

loc_43C1BC:
pop     edx
pop     ecx
pop     ebx
retn
sub_43C161 endp




sub_43C1C0 proc near
cmp     byte ptr [eax+3], 0
jnz     short loc_43C1C9
or      byte ptr [eax], 2

loc_43C1C9:
inc     byte ptr [eax+8]
mov     word ptr [eax+30h], 10h
retn
sub_43C1C0 endp




sub_43C1D3 proc near
push    ecx
push    edx
mov     dx, [eax+28h]
add     [eax+1Ch], dx
mov     dx, [eax+2Eh]
mov     cx, [eax+2Ah]
add     ecx, edx
mov     [eax+2Ah], cx
add     [eax+1Eh], cx
mov     dx, [eax+2Ch]
add     [eax+20h], dx
cmp     word ptr [eax+2Ah], 0
jl      short loc_43C201
inc     byte ptr [eax+8]

loc_43C201:
pop     edx
pop     ecx
retn
sub_43C1D3 endp




sub_43C204 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     dx, [eax+30h]
dec     dx
mov     [eax+30h], dx
jnz     short loc_43C217
inc     byte ptr [eax+8]

loc_43C217:
mov     edx, [eax+2Eh]
sar     edx, 10h
mov     ebx, edx
shl     ebx, 3
mov     ecx, edx
shl     ecx, 13h
or      ecx, 2E000000h
shl     edx, 0Bh
or      edx, ecx
or      edx, ebx
mov     [eax+18h], edx
mov     dx, [eax+28h]
add     [eax+1Ch], dx
mov     dx, [eax+2Eh]
mov     si, [eax+2Ah]
add     esi, edx
mov     [eax+2Ah], si
add     [eax+1Eh], si
mov     dx, [eax+2Ch]
add     [eax+20h], dx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43C204 endp



; Attributes: thunk

sub_43C25E proc near
jmp     sub_4DE3EA
sub_43C25E endp




sub_43C263 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
push    edx
push    ebx
mov     esi, ecx
call    rand_
mov     edi, eax
and     edi, 0FFFh
mov     eax, 1000h
mov     edx, eax
sar     edx, 1Fh
idiv    ebx
mov     [esp+20h+var_10], eax
xor     ebp, ebp

loc_43C28D:
cmp     ebp, [esp+20h+var_20]
jge     loc_43C37E
call    sub_4DE13B
mov     ecx, eax
test    eax, eax
jz      loc_43C36A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 11h
mov     dl, byte ptr [esp+20h+var_18]
mov     [eax+3], dl
mov     dl, byte ptr [esp+20h+var_1C]
mov     [eax+0Ch], dl
mov     dword ptr [eax+18h], 2E808080h
mov     dx, [esi]
mov     [eax+1Ch], dx
mov     dx, [esi+2]
mov     [eax+1Eh], dx
mov     dx, [esi+4]
mov     [eax+20h], dx
cmp     [esp+20h+var_18], 0
jz      short loc_43C30B
mov     edx, [esp+20h+var_1C]
mov     [esp+20h+var_14], edx
shl     edx, 2
add     edx, [esp+20h+var_14]
shl     edx, 2
add     edx, offset unk_513A60
mov     ebx, [edx+8]
mov     [eax+34h], ebx
mov     ebx, [edx+0Ch]
mov     [eax+38h], ebx
mov     ebx, [edx+10h]
mov     [eax+3Ch], ebx
jmp     short loc_43C32A

