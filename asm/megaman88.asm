loc_4CF1D5:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CF150 endp




sub_4CF1DB proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+0CCh]
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax]
or      ah, 4
mov     [ecx], ah
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     word ptr [ecx+54h], 0
mov     al, [ecx+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ebx], 0
mov     dword ptr [ebx+4], 0
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_24], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     word ptr [ecx+6Eh], 400h
mov     dword ptr [ecx+78h], offset unk_538DDC
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
mov     dword ptr [ecx+0C4h], offset unk_808080
add     esp, 10h
jmp     loc_4CF1D5
sub_4CF1DB endp




sub_4CF2BD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+0CCh]
mov     eax, 4
call    sub_47E888
test    eax, eax
jz      short loc_4CF2DB
or      byte ptr [edx], 2

loc_4CF2DB:
xor     ebx, ebx
mov     bl, [edx+9]
mov     eax, edx
call    ds:funcs_4CF2E2[ebx*4]
lea     edi, [edx+0BCh]
lea     esi, [edx+14h]
movsd
movsd
test    byte ptr [ecx], 1
jz      loc_4CF1D5
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
and     byte ptr [ecx], 0FEh
jmp     loc_4CF1D5
sub_4CF2BD endp



; Attributes: thunk

sub_4CF30F proc near
jmp     sub_4DE371
sub_4CF30F endp




sub_4CF314 proc near
push    ebx
push    edx
lea     edx, [eax+0CCh]
mov     bl, [eax+0Ah]
test    bl, bl
jbe     short loc_4CF32B
cmp     bl, 1
jz      short loc_4CF347
pop     edx
pop     ebx
retn

loc_4CF32B:
mov     byte ptr [eax+0Ah], 1
mov     word ptr [edx+4], 1Eh
mov     word ptr [eax+44h], 0
mov     word ptr [eax+46h], 0
mov     word ptr [eax+48h], 0

loc_4CF347:
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     short loc_4CF358
or      byte ptr [edx], 1

loc_4CF358:
pop     edx
pop     ebx
retn
sub_4CF314 endp




sub_4CF35B proc near

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
add     eax, 0CCh
mov     [esp+24h+var_20], eax
mov     eax, [esp+24h+var_24]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4CF381
cmp     al, 1
jz      short loc_4CF3D3
jmp     loc_4CF576

loc_4CF381:
mov     eax, [esp+24h+var_24]
or      byte ptr [eax], 2
mov     byte ptr [eax+0Ah], 1
mov     eax, [esp+24h+var_20]
mov     word ptr [eax+4], 1Eh
mov     eax, [esp+24h+var_24]
test    byte ptr [eax+0Fh], 40h
jz      short loc_4CF3AD
mov     word ptr [eax+44h], 0
mov     ds:byte_55D428, 4
jmp     short loc_4CF3BA

loc_4CF3AD:
mov     word ptr [eax+44h], 240h
mov     ds:byte_55D428, 5

loc_4CF3BA:
mov     eax, [esp+24h+var_24]
mov     word ptr [eax+48h], 0
mov     word ptr [eax+4Ch], 16h
mov     eax, [esp+24h+var_20]
mov     word ptr [eax+8], 1

loc_4CF3D3:
mov     eax, [esp+24h+var_24]
test    byte ptr [eax+0Fh], 40h
jz      short loc_4CF3F0
mov     eax, [esp+24h+var_20]
mov     eax, [eax+6]
sar     eax, 10h
shl     eax, 3
mov     ebp, offset unk_538E18
jmp     short loc_4CF402

loc_4CF3F0:
mov     eax, [esp+24h+var_20]
mov     eax, [eax+6]
sar     eax, 10h
shl     eax, 3
mov     ebp, offset unk_538DE8

loc_4CF402:
add     ebp, eax
mov     ax, [ebp+0]
mov     ds:word_55D418, ax
xor     edx, edx
mov     word ptr ds:dword_55D41A, dx
mov     ax, [ebp+2]
mov     word ptr ds:dword_55D41A+2, ax
mov     ebx, [esp+24h+var_24]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     eax, [esp+24h+var_24]
add     eax, 14h
mov     ecx, 20h ; ' '
mov     edx, offset word_55D418
call    sub_4DE552
mov     edx, [esp+24h+var_24]
mov     dx, [edx+56h]
add     edx, eax
and     dh, 0Fh
mov     ecx, [esp+24h+var_24]
mov     [ecx+56h], dx
mov     edx, eax
shl     edx, 2
mov     [ecx+48h], dx
cwde
sar     eax, 1
and     eax, 0FFFh
mov     edx, ecx
mov     [ecx+58h], ax
mov     ecx, [ecx+46h]
sar     ecx, 10h
mov     edx, [edx+42h]
sar     edx, 10h
xor     ebx, ebx
mov     eax, [esp+24h+var_24]
call    sub_4DD43B
mov     eax, [ebp+2]
sar     eax, 10h
sar     eax, 1
movsx   edx, word ptr [ebp+0]
sub     edx, eax
mov     ecx, [esp+24h+var_24]
mov     ecx, [ecx+12h]
sar     ecx, 10h
sub     ecx, edx
mov     edx, [ebp+4]
sar     edx, 10h
sar     edx, 1
mov     eax, [ebp+0]
sar     eax, 10h
sub     eax, edx
mov     edx, [esp+24h+var_24]
mov     edx, [edx+16h]
sar     edx, 10h
sub     edx, eax
mov     eax, [ebp+2]
sar     eax, 10h
cmp     ecx, eax
jnb     short loc_4CF50C
mov     eax, [ebp+4]
sar     eax, 10h
cmp     edx, eax
jnb     short loc_4CF50C
mov     edx, [esp+24h+var_20]
mov     edx, [edx+6]
sar     edx, 10h
xor     eax, eax
mov     al, ds:byte_55D428
cmp     edx, eax
jnz     short loc_4CF504
mov     eax, [esp+24h+var_20]
or      byte ptr [eax], 1
mov     eax, [esp+24h+var_24]
mov     word ptr [eax+44h], 0
mov     word ptr [eax+46h], 0
mov     word ptr [eax+48h], 0
mov     word ptr [eax+54h], 0
mov     word ptr [eax+58h], 0

loc_4CF504:
mov     eax, [esp+24h+var_20]
inc     word ptr [eax+8]

loc_4CF50C:
mov     eax, [esp+24h+var_24]
mov     ax, [eax+14h]
sub     ds:word_55D418, ax
mov     eax, [esp+24h+var_24]
mov     ax, [eax+18h]
sub     word ptr ds:dword_55D41A+2, ax
mov     edx, ds:dword_55D41A
sar     edx, 10h
imul    edx, edx
mov     eax, dword ptr ds:unk_55D416
sar     eax, 10h
imul    eax, eax
add     eax, edx
cmp     eax, 4000h
jle     short loc_4CF560
mov     eax, [esp+24h+var_24]
cmp     word ptr [eax+44h], 320h
jge     short loc_4CF576
mov     ax, [eax+4Ch]
mov     edx, [esp+24h+var_24]
add     [edx+44h], ax
jmp     short loc_4CF576

loc_4CF560:
mov     eax, [esp+24h+var_24]
cmp     word ptr [eax+44h], 160h
jle     short loc_4CF576
mov     ax, [eax+4Ch]
mov     edx, [esp+24h+var_24]
sub     [edx+44h], ax

loc_4CF576:
test    byte ptr ds:word_77EAB6, 3
jnz     loc_4CF647
xor     edi, edi
mov     word ptr [esp+24h+var_1C], di
jmp     loc_4CF638

loc_4CF58F:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 1
mov     edi, offset word_55D420
mov     esi, [esp+24h+var_24]
lea     esi, [esi+14h]
movsd
movsd
mov     edi, offset unk_55D408
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     eax, [esp+24h+var_20]
mov     ax, [eax+2]
xor     ah, ah
and     al, 3
cwde
mov     ecx, eax
shl     ecx, 5
mov     eax, [esp+24h+var_20+2]
sar     eax, 10h
shl     eax, 3
add     eax, ecx
mov     ecx, ds:dword_538E42[eax]
sar     ecx, 10h
push    ecx
mov     ecx, ds:(dword_538E3E+2)[eax]
sar     ecx, 10h
push    ecx
mov     ecx, ds:dword_538E3E[eax]
sar     ecx, 10h
mov     ebx, [esp+2Ch+var_24]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, offset unk_55D408
mov     eax, offset word_55D420
call    sub_4DD4C5
mov     ax, ds:word_55D420
mov     [ebp+1Ch], ax
mov     ax, ds:word_55D422
mov     [ebp+1Eh], ax
mov     ax, ds:word_55D424
mov     [ebp+20h], ax
mov     eax, [esp+24h+var_1C]
inc     eax
mov     word ptr [esp+24h+var_1C], ax
cmp     ax, 4
jge     short loc_4CF647

loc_4CF638:
call    sub_4DE13B
mov     ebp, eax
test    eax, eax
jnz     loc_4CF58F

loc_4CF647:
add     esp, 0Ch
jmp     loc_4CF1D4
sub_4CF35B endp

unk_4CF64F db    0
dword_4CF650 dd 3 dup(2), 53000000h, 89565251h, 0DCB08DC1h
dd 0C7000000h, 0C480h, 80808000h, 8ADB3100h
dd 0F2890858h
call    ds:funcs_4CF67C[ebx*4]
push    80h
push    0
push    4880000h
lea     eax, [esi+10h]
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
lea     eax, [ecx+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 200h
call    sub_4E01FC
mov     dword ptr [esi+10h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn



sub_4CF6B9 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     ecx, edx        ; int
mov     al, [eax+9]
test    al, al
jbe     short loc_4CF6D6
cmp     al, 1
jz      loc_4CF74E
jmp     loc_4CF7A7

loc_4CF6D6:
or      byte ptr [ebp+0], 6
mov     word ptr [ebp+14h], 870h
mov     word ptr [ebp+16h], 0F9F0h
mov     word ptr [ebp+18h], 0FCD8h
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+56h], 400h
mov     word ptr [ebp+58h], 0
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+0C4h], offset unk_808080
mov     dword ptr [ebp+78h], offset unk_538ECC
mov     byte ptr [ebp+0Dh], 0
mov     al, [ebp+0Dh]
mov     [ebp+0Ch], al
mov     word ptr [ecx], 1
mov     word ptr [ecx+4], 0
mov     dword ptr [ecx+0Ch], 180h
mov     eax, [ecx+0Ch]
mov     [ecx+8], eax
inc     byte ptr [ebp+9]
mov     byte ptr [ebp+0Ah], 0
jmp     short loc_4CF7A7

loc_4CF74E:
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
mov     eax, [edx+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
sub     eax, 610h
mov     [ebp+16h], ax
mov     ax, [edx+4]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     [edx+4], ax
mov     ah, byte ptr ds:dword_560BDC
test    ah, ah
jnz     short loc_4CF7A7
inc     byte ptr [ebp+8]
mov     [ebp+9], ah
mov     [ebp+0Ah], ah

loc_4CF7A7:
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
mov     eax, ebp
call    sub_4CFCAB
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 12Ch
mov     eax, ebp
call    sub_4ED88B

loc_4CF7F0:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4CF6B9 endp

db 90h
jpt_4CF83E dd offset loc_4CF845 ; jump table for switch statement
dd offset loc_4CF853
dd offset loc_4CF89D
dd offset loc_4CF93C



sub_4CF807 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ebx, edx
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
call    sub_4CFA9F
mov     al, [ecx+9]
cmp     al, 3           ; switch 4 cases
ja      def_4CF83E      ; jumptable 004CF83E default case
and     eax, 0FFh
jmp     jpt_4CF83E[eax*4] ; switch jump

loc_4CF845:             ; jumptable 004CF83E case 0
mov     word ptr [ecx+16h], 0F400h

loc_4CF84B:
inc     byte ptr [ecx+9]
jmp     def_4CF83E      ; jumptable 004CF83E default case

loc_4CF853:             ; jumptable 004CF83E case 1
sub     word ptr [ecx+14h], 0Ch
mov     eax, [ebx+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
sub     eax, 0C00h
mov     [ecx+16h], ax
mov     ax, [ebx+4]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     [ebx+4], ax
cmp     word ptr [ecx+14h], 0
jge     def_4CF83E      ; jumptable 004CF83E default case
mov     word ptr [ecx+14h], 0
mov     word ptr [ebx+2], 800h
jmp     short loc_4CF84B

loc_4CF89D:             ; jumptable 004CF83E case 2
mov     ax, [ebx+2]
add     eax, 2
and     ah, 0Fh
mov     [ebx+2], ax
mov     ax, [ecx+56h]
add     eax, 2
and     ah, 0Fh
mov     [ecx+56h], ax
mov     eax, [ebx]
sar     eax, 10h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 8
sar     eax, 0Ch
mov     [ecx+14h], ax
mov     eax, [ebx]
sar     eax, 10h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 8
sar     eax, 0Ch
cwde
add     eax, 7D8h
mov     [ecx+18h], ax
mov     eax, [ebx+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
sub     eax, 0C00h
mov     [ecx+16h], ax
mov     ax, [ebx+4]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     [ebx+4], ax
cmp     word ptr [ecx+56h], 800h
jnz     short def_4CF83E ; jumptable 004CF83E default case
jmp     loc_4CF84B

loc_4CF93C:             ; jumptable 004CF83E case 3
add     word ptr [ecx+18h], 0Ch
mov     eax, [ebx+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
sub     eax, 0C00h
mov     [ecx+16h], ax
mov     ax, [ebx+4]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     [ebx+4], ax
cmp     word ptr [ecx+18h], 1000h
jle     short def_4CF83E ; jumptable 004CF83E default case
mov     word ptr [ecx+14h], 0F500h
mov     word ptr [ecx+16h], 0F400h
mov     word ptr [ecx+18h], 1000h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 800h
mov     word ptr [ecx+58h], 0
mov     word ptr [ebx+2], 0C00h
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

def_4CF83E:             ; jumptable 004CF83E default case
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
mov     eax, ecx
call    sub_4CFCAB
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4CF807 endp




sub_4CF9E1 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ebx, edx
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
call    sub_4CFA9F
mov     ax, [ebx+2]
add     eax, 2
and     ah, 0Fh
mov     [ebx+2], ax
mov     ax, [ecx+56h]
add     eax, 2
and     ah, 0Fh
mov     [ecx+56h], ax
mov     eax, [ebx]
sar     eax, 10h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 8
sar     eax, 0Ch
mov     [ecx+14h], ax
mov     eax, [ebx]
sar     eax, 10h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 8
sar     eax, 0Ch
cwde
add     eax, 1000h
mov     [ecx+18h], ax
mov     eax, [ebx+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
sub     eax, 0C00h
mov     [ecx+16h], ax
mov     ax, [ebx+4]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     [ebx+4], ax
jmp     def_4CF83E      ; jumptable 004CF83E default case
sub_4CF9E1 endp




sub_4CFA9F proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= word ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     edi, eax
mov     eax, [edx+10h]
and     eax, 0FFFFFFh
jz      short loc_4CFB0A
test    byte ptr [edx+13h], 38h
jz      short loc_4CFB0A
test    byte ptr [edx], 1
jz      short loc_4CFAFD
mov     esi, [edx+8]
mov     [edx+0Ch], esi
mov     ecx, esi
sub     ecx, eax
mov     [edx+8], ecx
test    ecx, ecx
jg      short loc_4CFAE4
and     byte ptr [edx], 0FEh
mov     byte ptr [edi+0Ch], 0
mov     byte ptr [edi+0Ah], 1
mov     eax, 1Bh
call    sub_47EEAE

loc_4CFAE4:
lea     edx, [edi+14h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     dword ptr [edi+0C4h], 0FFFFFFh
jmp     short loc_4CFB0A

loc_4CFAFD:
lea     edx, [edi+14h]
mov     eax, 9Bh
call    sub_4D8BC3

loc_4CFB0A:
mov     dl, [edi+0Ah]
cmp     dl, 1
jb      loc_4CFCA3
jbe     short loc_4CFB26
cmp     dl, 2
jz      loc_4CFC2E
jmp     loc_4CFCA3

loc_4CFB26:
mov     edx, [edi+9]
sar     edx, 18h
mov     esi, 5
mov     eax, edx
sar     edx, 1Fh
idiv    esi
test    edx, edx
jnz     loc_4CFC18
call    sub_4DE13B
mov     edx, eax
mov     ebp, eax
test    eax, eax
jz      loc_4CFC18
call    rand_
mov     [esp+34h+var_1C], eax
mov     eax, [esp+34h+var_1C]
mov     [esp+34h+var_18], ax
mov     byte ptr [edx], 5
mov     byte ptr [edx+2], 80h
mov     byte ptr [edx+3], 41h ; 'A'
mov     byte ptr [edx+0Dh], 1
mov     eax, [edi+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFE000h
mov     esi, esp
call    sub_4DD510
lea     edx, [esp+34h+var_24]
mov     eax, esp
call    sub_4DD57B
mov     edx, [esp+16h]
sar     edx, 10h
mov     eax, edx
sar     eax, 2
and     eax, 0Fh
test    dl, 1
jnz     short loc_4CFBB2
mov     edx, [esp+0Eh]
sar     edx, 10h
add     edx, eax
jmp     short loc_4CFBBB

loc_4CFBB2:
mov     edx, [esp+0Eh]
sar     edx, 10h
sub     edx, eax

loc_4CFBBB:
mov     word ptr [esp+34h+var_24], dx
mov     eax, [esp+34h+var_1C+2]
sar     eax, 10h
mov     edx, eax
sar     edx, 4
sar     eax, 6
and     eax, 0Fh
test    dl, 1
mov     edx, [esp+34h+var_24+2]
sar     edx, 10h
add     edx, eax
mov     word ptr [esp+34h+var_20], dx
mov     dx, [edi+14h]
mov     esi, [esp+34h+var_24]
add     edx, esi
mov     [ebp+48h], dx
mov     dx, [edi+18h]
mov     eax, [esp+34h+var_20]
add     edx, eax
mov     [ebp+4Ch], dx
mov     edx, [esp+34h+var_1C+2]
sar     edx, 10h
sar     edx, 8
and     edx, 0Fh
mov     eax, [edi+14h]
sar     eax, 10h
add     eax, edx
mov     [ebp+4Ah], ax

loc_4CFC18:
mov     ch, [edi+0Ch]
inc     ch
mov     [edi+0Ch], ch
cmp     ch, 15h
jnz     loc_4CFCA3
inc     byte ptr [edi+0Ah]
jmp     short loc_4CFCA3

loc_4CFC2E:
call    sub_4DE13B
mov     ebp, eax
test    eax, eax
jz      short loc_4CFCA3
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 28h ; '('
mov     byte ptr [eax+0Fh], 0Ch
mov     eax, [edi+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFE000h
mov     esi, esp
call    sub_4DD510
lea     edx, [esp+34h+var_24]
mov     eax, esp
call    sub_4DD57B
mov     dx, [edi+14h]
mov     ebx, [esp+34h+var_24]
add     edx, ebx
mov     [ebp+1Ch], dx
mov     ax, [edi+16h]
mov     [ebp+1Eh], ax
mov     dx, [edi+18h]
mov     ecx, [esp+34h+var_20]
add     edx, ecx
mov     [ebp+20h], dx
call    rand_
and     al, 0Fh
mov     [ebp+9], al

loc_4CFCA3:
add     esp, 20h
jmp     loc_4CF7F0
sub_4CFA9F endp




; int __fastcall sub_4CFCAB(int, int)
sub_4CFCAB proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
push    edi             ; int
sub     esp, 10h
mov     ecx, eax
mov     edi, esp
mov     esi, offset unk_4CF64F
movsd
movsd
movsd
movsd
cmp     byte ptr [eax+0Ah], 0
jz      short loc_4CFCE6
xor     edx, edx
mov     dl, [ecx+0Dh]
mov     ebx, 24h ; '$'
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     ax, ds:word_538ED8[edx*2]
mov     [ecx+58h], ax
inc     byte ptr [ecx+0Dh]

loc_4CFCE6:
lea     ebx, [ecx+8Ch]
mov     eax, ebx
call    sub_4EF184
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, [ecx+54h]
sar     eax, 10h
mov     edx, ebx
call    sub_4EF50D
mov     eax, [ecx+56h]
sar     eax, 10h
mov     edx, ebx
call    sub_4EF57E
add     esp, 10h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CFCAB endp




sub_4CFD1F proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4CFD25[edx*4]
pop     edx
retn
sub_4CFD1F endp




sub_4CFD2E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     eax, ds:dword_560C00
lea     edi, [ecx+14h]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [ecx+1Ch]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
or      byte ptr [ecx], 6
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+78h], 0
inc     byte ptr [ecx+8]
lea     ebx, [ecx+8Ch]
mov     eax, ebx
call    sub_4EF184
mov     edx, offset unk_538F2C
mov     eax, ebx
call    sub_4EF689
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CFD2E endp




sub_4CFD96 proc near
push    edx
push    esi
push    edi
mov     edx, ds:dword_560C00
lea     edi, [eax+14h]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [eax+1Ch]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
mov     word ptr [eax+58h], 0
lea     edi, [eax+0BCh]
lea     esi, [eax+14h]
movsd
movsd
pop     edi
pop     esi
pop     edx
retn
sub_4CFD96 endp




sub_4CFDC6 proc near
push    edx
push    esi
push    edi
mov     edx, ds:dword_560C00
lea     edi, [eax+14h]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [eax+1Ch]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
xor     byte ptr [eax+0Ch], 1
lea     edi, [eax+0BCh]
lea     esi, [eax+14h]
movsd
movsd
test    byte ptr [eax+0Ch], 1
jz      short loc_4CFE02
add     word ptr [eax+0BCh], 8
pop     edi
pop     esi
pop     edx
retn

loc_4CFE02:
sub     word ptr [eax+0BCh], 8
pop     edi
pop     esi
pop     edx
retn
sub_4CFDC6 endp




sub_4CFE0E proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4CFE14[edx*4]
pop     edx
retn
sub_4CFE0E endp




sub_4CFE1D proc near

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
call    ds:funcs_4CFE47[edx*4]
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
test    byte ptr [ebp+0], 1
jz      short loc_4CFE9E
mov     ecx, 1000008h

loc_4CFE8D:
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697

loc_4CFE9E:
test    byte ptr [ebp+0], 2
jz      short loc_4CFEBA
mov     ecx, 1
mov     ebx, 200h
mov     edx, 104h
mov     eax, ebp
call    sub_4ED88B

loc_4CFEBA:
add     esp, 10h

loc_4CFEBD:
pop     ebp

loc_4CFEBE:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CFE1D endp




sub_4CFEC4 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+0DCh]
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     word ptr [eax+54h], 0
mov     word ptr [eax+56h], 0
mov     word ptr [eax+58h], 0
mov     dword ptr [eax+44h], 0
mov     dword ptr [eax+48h], 0
mov     dword ptr [eax+64h], 0
mov     dword ptr [eax+70h], 0
mov     dword ptr [eax+74h], 0
mov     word ptr [eax+4Ch], 2
xor     edx, edx
call    sub_4DD0F8
mov     byte ptr [ebx+20h], 1
mov     word ptr [ebx+1Eh], 140h
lea     esi, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, esi
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_24], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     word ptr [ecx+6Eh], 400h
mov     dword ptr [ecx+78h], offset unk_538FEB
mov     dword ptr [ecx+10h], offset unk_538FF7
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     byte ptr [ebx+22h], 0Fh
mov     byte ptr [ebx+23h], 0
mov     byte ptr [ebx+24h], 0
mov     byte ptr [ebx+25h], 0
mov     byte ptr [ebx+26h], 0
mov     eax, ecx
call    sub_4CFF9D
add     esp, 10h
jmp     loc_4CFEBE
sub_4CFEC4 endp




sub_4CFF9D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
lea     ecx, [eax+0DCh]
mov     esi, offset byte_5F8364
cmp     byte ptr [eax+0Ch], 0
jnz     loc_4D0098
mov     eax, ebx
call    sub_4D07D8
xor     edx, edx
mov     dl, [ebx+9]
mov     eax, ebx
call    ds:funcs_4CFFC6[edx*4]
cmp     byte ptr [ecx+24h], 0
jnz     short loc_4D000B
mov     edx, ds:dword_5F8412
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, dword ptr ds:unk_5F83D0
sar     edx, 10h
cmp     eax, edx
jle     short loc_4D000B
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4D000B
mov     edx, 15h
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+24h], 1

loc_4D000B:
cmp     byte ptr [ecx+25h], 0
jz      short loc_4D001B
cmp     byte ptr [esi+71h], 0
jl      short loc_4D001B
mov     byte ptr [ecx+25h], 0

loc_4D001B:
cmp     byte ptr [esi+71h], 0
jge     short loc_4D005B
cmp     byte ptr [ecx+25h], 0
jnz     short loc_4D005B
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4D005B
xor     edx, edx
mov     dl, [ecx+26h]
mov     dl, ds:byte_538FE8[edx]
and     edx, 0FFh
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+25h], 1
mov     ah, [ecx+26h]
cmp     ah, 2
jz      short loc_4D005B
mov     dl, ah
inc     dl
mov     [ecx+26h], dl

loc_4D005B:
cmp     ebx, [esi+184h]
jnz     short loc_4D0098
mov     dword ptr [esi+184h], 0
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4D0098
or      byte ptr [esi+0BDh], 40h
mov     eax, esi
call    sub_4B55D5
mov     edx, 13h
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ebx+8], 3
mov     byte ptr [ebx+9], 0

loc_4D0098:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CFF9D endp



; Attributes: thunk

sub_4D009D proc near
jmp     sub_4DE371
sub_4D009D endp




sub_4D00A2 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4D015D
mov     bl, [edx+9]
test    bl, bl
jnz     short loc_4D00CC
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4D00CC:
cmp     bl, 1
jnz     short loc_4D0134
mov     byte ptr ds:dword_77EA5A+2, bl
mov     ah, 3
mov     ds:byte_77EA5E, ah
mov     ds:byte_77EA5F, bl
mov     word ptr ds:dword_77EA4E+2, 0F360h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 600h
mov     word ptr ds:dword_77EA5A, 0C00h
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
mov     byte ptr ds:word_77E7FC+1, ah
mov     ah, 1
mov     ds:byte_77E7FE, ah
add     [edx+9], ah
pop     edx
pop     ecx
pop     ebx
retn

loc_4D0134:
mov     cl, byte ptr ds:dword_77EA5A+2
cmp     cl, 2
jnz     short loc_4D015D
cmp     ds:word_6E23D6, 0
jnz     short loc_4D015D
mov     ch, cl
inc     ch
mov     byte ptr ds:dword_77EA5A+2, ch
mov     eax, offset byte_5F8364
call    sub_4B565A

loc_4D015D:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D00A2 endp




sub_4D0161 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
lea     ecx, [eax+0DCh]
xor     eax, eax
mov     al, [ecx+20h]
shl     eax, 3
mov     edx, offset unk_538F78
add     edx, eax
lea     eax, [ebx+14h]
call    sub_4DDDB4
and     ah, 0Fh
mov     [ebx+56h], ax
mov     byte ptr [ebx+9], 1
xor     eax, eax
mov     al, [ecx+20h]
shl     eax, 3
mov     edx, offset unk_538F78
add     edx, eax
sub     eax, 8
add     eax, offset unk_538F78
call    sub_4DD685
mov     [ecx+10h], eax
mov     [ecx+14h], eax
cmp     byte ptr [ecx+20h], 5
jb      short loc_4D01BC
mov     word ptr [ebx+44h], 0A0h

loc_4D01BC:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D0161 endp




sub_4D01C0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+0DCh]
mov     edx, [eax+42h]
sar     edx, 10h
mov     eax, [esi+1Ch]
sar     eax, 10h
cmp     edx, eax
jz      short loc_4D01E5
mov     ax, [edi+4Ch]
add     [edi+44h], ax

loc_4D01E5:
mov     edx, [edi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
mov     eax, edi
call    sub_4D0790
mov     eax, [esi+10h]
mov     [esi+14h], eax
xor     eax, eax
mov     al, [esi+20h]
shl     eax, 3
mov     edx, offset unk_538F78
add     edx, eax
lea     ecx, [edi+14h]
mov     eax, ecx
call    sub_4DD685
mov     [esi+10h], eax
mov     eax, [esi+14h]
cmp     eax, [esi+10h]
jge     loc_4CFEBE
mov     ah, [esi+20h]
inc     ah
mov     [esi+20h], ah
cmp     ah, 0Dh
jnz     short loc_4D0253
mov     byte ptr [edi+9], 3
mov     word ptr [edi+4Ch], 200h
mov     edx, ecx
mov     eax, 180h
call    sub_4D8BC3
jmp     loc_4CFEBE

loc_4D0253:
mov     byte ptr [edi+9], 2
xor     eax, eax
mov     al, [esi+20h]
shl     eax, 3
mov     edx, offset unk_538F78
add     edx, eax
mov     eax, ecx
call    sub_4DDDB4
and     ah, 0Fh
mov     [esi+18h], ax
mov     edx, [edi+54h]
sar     edx, 10h
mov     eax, [esi+16h]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
call    abs_
and     ah, 0Fh
mov     [esi+1Ah], ax
cmp     ax, 800h
jl      short loc_4D02A5
mov     eax, 1000h
mov     cx, [esi+1Ah]
sub     eax, ecx
mov     [esi+1Ah], ax

loc_4D02A5:
mov     edx, [esi+18h]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [esi+1Ch], ax
jmp     loc_4CFEBE
sub_4D01C0 endp




sub_4D02BD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+0DCh]
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
call    abs_
cmp     eax, 800h
jl      loc_4D0381
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
cmp     edx, eax
jle     short loc_4D0343
mov     ax, [esi+56h]
add     eax, 14h
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
call    abs_
cmp     eax, 800h
jge     loc_4D03E2
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
cmp     edx, eax
jl      loc_4D03E2
jmp     loc_4D03CF

loc_4D0343:
mov     ax, [esi+56h]
sub     eax, 14h
and     ah, 0Fh
mov     [esi+56h], ax
mov     eax, [esi+54h]
sar     eax, 10h
mov     edx, [edi+16h]
sar     edx, 10h
sub     eax, edx
call    abs_
cmp     eax, 800h
jge     loc_4D03E2
mov     eax, [esi+54h]
sar     eax, 10h
mov     edx, [edi+16h]
sar     edx, 10h
cmp     eax, edx

loc_4D037D:
jg      short loc_4D03E2
jmp     short loc_4D03CF

loc_4D0381:
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
cmp     edx, eax
jle     short loc_4D03AF
mov     ax, [esi+56h]
sub     eax, 14h
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
cmp     edx, eax
jmp     short loc_4D037D

loc_4D03AF:
mov     ax, [esi+56h]
add     eax, 14h
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
cmp     edx, eax
jl      short loc_4D03E2

loc_4D03CF:
mov     ax, [edi+18h]
mov     [esi+56h], ax
mov     byte ptr [esi+9], 3
mov     eax, esi
call    sub_4D043F

loc_4D03E2:
mov     eax, [edi+18h]
sar     eax, 10h
mov     edx, [edi+1Ah]
sar     edx, 10h
cmp     eax, edx
jle     short loc_4D03FC
mov     ax, [esi+4Ch]
sub     [esi+44h], ax
jmp     short loc_4D0404

loc_4D03FC:
mov     ax, [esi+4Ch]
add     [esi+44h], ax

loc_4D0404:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_4D0790
xor     eax, eax
mov     al, [edi+20h]
shl     eax, 3
mov     edx, offset unk_538F78
add     edx, eax
lea     eax, [esi+14h]
call    sub_4DDDB4
and     ah, 0Fh
mov     [edi+18h], ax
jmp     loc_4CFEBE
sub_4D02BD endp




sub_4D043F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+0DCh]
mov     dl, [ecx+20h]
cmp     dl, 7
jb      short loc_4D0486
add     eax, 14h
cmp     dl, 7
jbe     loc_4D0550
cmp     dl, 0Ch
jb      short loc_4D0478
jbe     loc_4D05B3
cmp     dl, 0Dh
jz      loc_4D066D
jmp     loc_4D06BC

loc_4D0478:
cmp     dl, 0Ah
jz      loc_4D05AD
jmp     loc_4D06BC

loc_4D0486:
cmp     dl, 2
jb      loc_4D06BC
jbe     short loc_4D049F
cmp     dl, 5
jz      loc_4D053A
jmp     loc_4D06BC

loc_4D049F:
mov     bl, [eax+0Ah]
test    bl, bl
jnz     short loc_4D04CD
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4D06C7
mov     edx, 17h
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [esi+0Ah]

loc_4D04C2:
mov     word ptr [esi+44h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D04CD:
cmp     bl, 1
jnz     short loc_4D04F2
test    [ecx+22h], bl
jnz     loc_4D06C7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4D06C7
add     bl, bl
mov     [eax+0Ah], bl
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D04F2:
cmp     bl, 2
jnz     short loc_4D050B
mov     edx, 16h
xor     eax, eax
call    sub_4A0E24

loc_4D0503:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D050B:
cmp     bl, 3
jnz     loc_4D06C7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4D06C7
mov     byte ptr [esi+9], 0
lea     edx, [esi+14h]
mov     eax, 17Ch
call    sub_4D8BC3
mov     word ptr [esi+44h], 0
jmp     short loc_4D057F

loc_4D053A:
test    byte ptr [ecx+22h], 2
jnz     short loc_4D0545
inc     byte ptr [esi+0Ah]
jmp     short loc_4D0559

loc_4D0545:
cmp     byte ptr [ecx+23h], 0
jnz     short loc_4D05A5
lea     edx, [esi+14h]
jmp     short loc_4D0597

loc_4D0550:
test    byte ptr [ecx+22h], 4

loc_4D0554:
jnz     short loc_4D058F
inc     byte ptr [esi+0Ah]

loc_4D0559:
cmp     byte ptr [esi+0Ah], 0
jz      loc_4D06C7
mov     byte ptr [esi+9], 0
cmp     word ptr [esi+44h], 0
jnz     short loc_4D057B
lea     edx, [esi+14h]
mov     eax, 17Ch
call    sub_4D8BC3

loc_4D057B:
mov     byte ptr [ecx+23h], 0

loc_4D057F:
mov     eax, esi
call    sub_4D0161
mov     byte ptr [esi+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D058F:
cmp     byte ptr [ecx+23h], 0
jnz     short loc_4D05A5
mov     edx, eax

loc_4D0597:
mov     eax, 17Dh
call    sub_4D8BC3
mov     byte ptr [ecx+23h], 1

loc_4D05A5:
mov     word ptr [esi+44h], 0
jmp     short loc_4D0559

loc_4D05AD:
test    byte ptr [ecx+22h], 8
jmp     short loc_4D0554

loc_4D05B3:
mov     dh, [esi+0Ah]
test    dh, dh
jnz     short loc_4D0615
cmp     byte ptr [ecx+23h], 0
jnz     short loc_4D05D0
mov     edx, eax
mov     eax, 17Dh
call    sub_4D8BC3
mov     byte ptr [ecx+23h], 1

loc_4D05D0:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4D06C7
inc     byte ptr [esi+0Ah]
mov     edx, 18h
xor     eax, eax
call    sub_4A0E24
xor     eax, eax
mov     al, [ecx+20h]
shl     eax, 3
lea     edx, [eax+8]
add     edx, offset unk_538F78
sub     eax, 8
add     eax, offset unk_538F78
call    sub_4DD685
mov     [ecx+10h], eax
mov     [ecx+14h], eax
jmp     loc_4D04C2

loc_4D0615:
cmp     dh, 1
jnz     short loc_4D063C
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4D06C7
mov     byte ptr [esi+9], 4
mov     edx, eax
mov     eax, 17Bh
call    sub_4D8BC3
jmp     loc_4D0503

loc_4D063C:
mov     bh, [ecx+21h]
test    bh, bh
jz      short loc_4D064F
mov     al, bh
dec     al
mov     [ecx+21h], al
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D064F:
mov     byte ptr [esi+9], 1
mov     word ptr [esi+4Ch], 0Fh
mov     edx, eax
mov     eax, 17Eh
call    sub_4D8BC3
mov     [esi+0Ah], bh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D066D:
cmp     word ptr [esi+44h], 0
jle     short loc_4D0692
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Ch]
sub     [esi+44h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D0692:
mov     word ptr [esi+44h], 0
mov     byte ptr [esi+3], 1
mov     byte ptr [esi+8], 0
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     byte ptr ds:word_77E7FC+1, 0Ch
xor     dl, dl
mov     ds:byte_77E7FE, dl
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D06BC:
mov     byte ptr [esi+9], 0
mov     eax, esi
call    sub_4D0161

loc_4D06C7:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D043F endp




sub_4D06CC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+0DCh]
cmp     word ptr [eax+44h], 140h
jz      short loc_4D06EA
mov     ax, [eax+4Ch]
add     [esi+44h], ax

loc_4D06EA:
mov     cx, [esi+56h]
cmp     cx, 800h
jz      short loc_4D070A
mov     eax, ecx
sub     eax, 0Ah
mov     [esi+56h], ax
cmp     ax, 800h
jge     short loc_4D070A
mov     word ptr [esi+56h], 800h

loc_4D070A:
push    0
push    0
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
add     ebx, 800h
lea     edx, [esi+1Ch]
lea     ebp, [esi+14h]
mov     eax, ebp
call    sub_4DD4C5
mov     eax, esi
call    sub_4D0790
xor     eax, eax
mov     al, [edi+20h]
shl     eax, 3
add     eax, 8
mov     edx, offset unk_538F78
add     edx, eax
mov     eax, ebp
call    sub_4DD685
mov     [edi+10h], eax
cmp     eax, 25Dh
jge     loc_4CFEBD
xor     eax, eax
mov     al, [edi+20h]
shl     eax, 3
mov     edx, offset unk_538F78
add     edx, eax
mov     eax, ebp
call    sub_4DD685
mov     [edi+10h], eax
mov     [edi+14h], eax
mov     byte ptr [esi+9], 3
mov     byte ptr [edi+21h], 3Ch ; '<'
mov     word ptr [edi+1Eh], 400h
mov     word ptr [esi+44h], 0
jmp     loc_4CFEBD
sub_4D06CC endp




sub_4D0790 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
call    sub_42CE47
mov     ebx, eax
test    eax, eax
jz      short loc_4D07D4
mov     eax, ecx
call    sub_4EE9F8
mov     edx, 8000h
mov     eax, ebx
call    sub_4EE6C2
mov     eax, 30h ; '0'
call    sub_47E8B8
mov     eax, 31Ch
call    sub_47E8B8
lea     edx, [ecx+14h]
mov     eax, 17Fh
call    sub_4D8BC3

loc_4D07D4:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D0790 endp




sub_4D07D8 proc near
push    edx
add     eax, 0DCh
mov     edx, [eax]
cmp     byte ptr [edx+2], 33h ; '3'
jz      short loc_4D07EA
and     byte ptr [eax+22h], 0FEh

loc_4D07EA:
mov     edx, [eax+4]
cmp     byte ptr [edx+2], 33h ; '3'
jz      short loc_4D07F7
and     byte ptr [eax+22h], 0FDh

loc_4D07F7:
mov     edx, [eax+8]
cmp     byte ptr [edx+2], 33h ; '3'
jz      short loc_4D0804
and     byte ptr [eax+22h], 0FBh

loc_4D0804:
mov     edx, [eax+0Ch]
cmp     byte ptr [edx+2], 33h ; '3'
jz      short loc_4D0811
and     byte ptr [eax+22h], 0F7h

loc_4D0811:
pop     edx
retn
sub_4D07D8 endp




sub_4D0813 proc near

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
call    ds:funcs_4D083D[edx*4]
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
test    byte ptr [ebp+0], 1
jz      loc_4CFE9E
mov     ecx, 20000008h
jmp     loc_4CFE8D
sub_4D0813 endp




sub_4D088C proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+78h], offset unk_538FEB
mov     dword ptr [ecx+10h], offset unk_538FF7
cmp     byte ptr [ecx+0Dh], 0
jz      short loc_4D08F6
mov     byte ptr [ecx+8], 3
jmp     short loc_4D08FA

loc_4D08F6:
mov     byte ptr [ecx+8], 1

loc_4D08FA:
mov     byte ptr [ecx+0Ah], 0
mov     dword ptr [ecx+0C4h], offset unk_808080
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D088C endp




sub_4D090D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
cmp     ds:byte_77E7D4, 1Bh
jnz     loc_4D09CD
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_4D0992
mov     ebx, ds:dword_5F84E8
cmp     esi, ebx
jnz     loc_4CFEBE
xor     edi, edi
mov     ds:dword_5F84E8, edi
movsx   edx, ax
mov     ax, [ebx+56h]
and     ah, 0Fh
cwde
sub     edx, eax
lea     eax, [edx+180h]
and     eax, 0FFFh
cmp     eax, 300h
jge     loc_4CFEBE
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4CFEBE
mov     ecx, 0D2h
xor     ebx, ebx
xor     edx, edx
mov     eax, offset byte_5F8364
call    sub_4A62D4
mov     byte ptr [esi+0Ah], 1
jmp     loc_4CFEBE

loc_4D0992:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4CFEBE
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4D09B8
mov     ds:byte_77E805, 1

loc_4D09AF:
mov     byte ptr [esi+0Ah], 0
jmp     loc_4CFEBE

loc_4D09B8:
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 1
jnz     loc_4CFEBE
jmp     short loc_4D09AF

loc_4D09CD:
cmp     esi, ds:dword_5F84E8
jnz     loc_4CFEBE
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
movsx   edx, ax
mov     ax, [esi+56h]
and     ah, 0Fh
cwde
sub     edx, eax
add     edx, 180h
and     edx, 0FFFh
cmp     edx, 300h
jge     loc_4CFEBE
mov     ds:byte_77E805, 1
jmp     loc_4CFEBE
sub_4D090D endp




sub_4D0A12 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4D0A2F
jbe     short loc_4D0A46
cmp     al, 2
jz      short loc_4D0A6A
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D0A2F:
test    al, al
jnz     short loc_4D0A77
inc     al
mov     [esi+0Ah], al
mov     dword ptr [esi+44h], 0
mov     dword ptr [esi+48h], 0

loc_4D0A46:
mov     ecx, [edx+184h]
cmp     esi, ecx
jnz     short loc_4D0A77
mov     ecx, [ecx+9]
sar     ecx, 18h
lea     eax, [esi+14h]
xor     ebx, ebx
xor     edx, edx
call    sub_4A62D4
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D0A6A:
cmp     byte ptr ds:dword_77E760, 0
jnz     short loc_4D0A77
mov     byte ptr [esi+0Ah], 1

loc_4D0A77:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D0A12 endp

dword_4D0A7C dd 3 dup(200h), 0
dword_4D0A8C dd 3 dup(200h), 0
dword_4D0A9C dd 3 dup(200h), 0
dword_4D0AAC dd 3 dup(200h), 0

loc_4D0ABC:
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+3]
lea     edx, [eax+0DCh]
call    ds:funcs_4D0AC9[ecx*4]
pop     edx
pop     ecx
retn



sub_4D0AD3 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
mov     edi, esp
mov     esi, offset dword_4D0A7C
movsd
movsd
movsd
movsd
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
call    ds:funcs_4D0B07[ecx*4]

loc_4D0B0E:             ; int
lea     ecx, [ebp+8Ch]
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
add     esp, 10h

loc_4D0B48:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4D0AD3 endp




sub_4D0B4E proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
cmp     ds:byte_77E7D4, 0Dh
jnz     short loc_4D0B6F
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
jmp     short loc_4D0B78

loc_4D0B6F:
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8

loc_4D0B78:
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+10h], 0
mov     word ptr [ebx], 0
mov     ax, [ecx+16h]
mov     [ebx+2], ax
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
call    sub_4DE13B
test    eax, eax
jz      short loc_4D0BCA
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 15h
mov     byte ptr [eax+3], 0
mov     bl, [ecx+1]
mov     [eax+0Ch], bl
mov     byte ptr [eax+0Dh], 0
or      byte ptr [eax+6], 20h

loc_4D0BCA:
call    sub_4DE13B
test    eax, eax
jz      short loc_4D0BE8
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 15h
mov     byte ptr [eax+3], 1
mov     bl, [ecx+1]
mov     [eax+0Ch], bl
or      byte ptr [eax+6], 20h

loc_4D0BE8:
inc     byte ptr [ecx+8]
pop     ecx
pop     ebx
retn
sub_4D0B4E endp

align 10h
jpt_4D0C1B dd offset loc_4D0C22 ; jump table for switch statement
dd offset loc_4D0C5A
dd offset loc_4D0C75
dd offset loc_4D0CA8



sub_4D0C00 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     eax, offset dword_560BDC
mov     bl, [esi+9]
cmp     bl, 3           ; switch 4 cases
ja      def_4D0C1B      ; jumptable 004D0C1B default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_4D0C1B[ecx*4] ; switch jump

loc_4D0C22:             ; jumptable 004D0C1B case 0
mov     ax, [edx]
xor     ah, ah
and     al, 3Fh
cwde
mov     ecx, dword ptr ds:unk_564C32[eax*2]
sar     ecx, 10h
mov     eax, ecx
shl     eax, 2
add     ecx, eax
sar     ecx, 0Ch
mov     eax, [edx]
sar     eax, 10h
add     eax, ecx
mov     [esi+16h], ax
inc     word ptr [edx]
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
jmp     short def_4D0C1B ; jumptable 004D0C1B default case

loc_4D0C5A:             ; jumptable 004D0C1B case 1
mov     byte ptr [esi+0Ch], 1
mov     dx, [edx+2]
mov     [esi+16h], dx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
inc     byte ptr [esi+9]

loc_4D0C75:             ; jumptable 004D0C1B case 2
mov     cx, [esi+44h]
cmp     cx, 190h
jge     short loc_4D0C89
mov     edi, ecx
add     edi, 8
mov     [esi+44h], di

loc_4D0C89:
mov     edx, [eax+10h]
cmp     edx, 14h
jl      short loc_4D0C9D
cmp     edx, 78h ; 'x'
jge     short loc_4D0C9D
add     word ptr [esi+56h], 8
jmp     short def_4D0C1B ; jumptable 004D0C1B default case

loc_4D0C9D:
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short def_4D0C1B ; jumptable 004D0C1B default case
inc     byte ptr [esi+9]
jmp     short def_4D0C1B ; jumptable 004D0C1B default case

loc_4D0CA8:             ; jumptable 004D0C1B case 3
mov     dx, [esi+44h]
cmp     dx, 300h
jge     short def_4D0C1B ; jumptable 004D0C1B default case
mov     ebx, edx
add     ebx, 10h
mov     [esi+44h], bx

def_4D0C1B:             ; jumptable 004D0C1B default case
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4D0C00 endp




sub_4D0CDD proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     ebp, eax
mov     edi, esp
mov     esi, offset dword_4D0A8C
movsd
movsd
movsd
movsd
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
add     eax, 0DCh
mov     [esp+28h+var_18], eax
mov     edx, eax
mov     eax, ebp
call    ds:funcs_4D0D1E[ecx*4]
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
mov     edx, [esp+28h+var_18]
mov     eax, ebp
call    sub_4D119E
mov     dword ptr [ebp+0CCh], 0
mov     dword ptr [ebp+0D4h], 0
add     esp, 14h
jmp     loc_4D0B48
sub_4D0CDD endp




sub_4D0D83 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+10h], 0
mov     word ptr [ecx+44h], 100h
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+10h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+14h], eax
mov     eax, [ecx+54h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
cmp     byte ptr [ecx+3], 1
jnz     short loc_4D0DF0
mov     dword ptr [esi+2Ch], offset unk_539004
jmp     short loc_4D0DF7

loc_4D0DF0:
mov     dword ptr [esi+2Ch], offset unk_539268

loc_4D0DF7:
mov     edx, esi
mov     eax, ecx
call    sub_4D10E2
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
call    sub_4DE13B
test    eax, eax
jz      short loc_4D0E4A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 15h
mov     byte ptr [eax+3], 0
mov     bl, [ecx+1]
mov     [eax+0Ch], bl
mov     byte ptr [eax+0Dh], 0
or      byte ptr [eax+6], 20h

loc_4D0E4A:
call    sub_4DE13B
test    eax, eax
jz      short loc_4D0E68
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 15h
mov     byte ptr [eax+3], 1
mov     bl, [ecx+1]
mov     [eax+0Ch], bl
or      byte ptr [eax+6], 20h

loc_4D0E68:
lea     ebx, [ecx+14h]
mov     edx, 2
mov     eax, ecx
call    sub_451859
mov     [esi+28h], eax
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
pop     ebx
retn
sub_4D0D83 endp




sub_4D0E85 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
mov     esi, edx
xor     edx, edx
mov     [esp+18h+var_18], edx
xor     ebp, ebp
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jg      loc_4D0F96
jnz     short loc_4D0F07
mov     eax, [esi+4]
sar     eax, 10h
shl     eax, 10h
mov     [esi+10h], eax
mov     eax, [esi+6]
sar     eax, 10h
shl     eax, 10h
mov     [esi+14h], eax
mov     eax, [esi+8]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
cmp     word ptr [esi+0Ch], 0
jge     short loc_4D0F03
mov     eax, [esi+0Ah]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jz      short loc_4D0F07
mov     ax, [esi+0Ch]
xor     ah, ah
and     al, 7Fh
movsx   edx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, offset unk_5393C4
add     edx, eax
mov     [esi+2Ch], edx
jmp     short loc_4D0F07

loc_4D0F03:
add     dword ptr [esi+2Ch], 0Ch

loc_4D0F07:
mov     eax, [esi+2Ch]
cmp     word ptr [eax], 0
jz      short loc_4D0F8D
mov     ebx, [eax]
sar     ebx, 10h
mov     edx, [edi+12h]
sar     edx, 10h
sub     ebx, edx
shl     ebx, 10h
mov     ecx, [eax+2]
sar     ecx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
sub     ecx, eax
shl     ecx, 10h
add     [edi+1Ch], ebx
add     [edi+24h], ecx
add     [edi+34h], ebx
add     [edi+3Ch], ecx
lea     edx, [edi+14h]
lea     eax, [edi+1Ch]
call    sub_4DD57B
lea     edx, [edi+2Ch]
lea     eax, [edi+34h]
call    sub_4DD57B
add     ds:dword_5F8380, ebx
add     ds:dword_5F8388, ecx
add     ds:dword_5F8398, ebx
add     ds:dword_5F83A0, ecx
mov     edx, (offset dword_5F8376+2)
mov     eax, offset dword_5F8380
call    sub_4DD57B
mov     edx, (offset dword_5F838E+2)
mov     eax, offset dword_5F8398
call    sub_4DD57B
add     dword ptr [esi+2Ch], 0Ch

loc_4D0F8D:
mov     edx, esi
mov     eax, edi
call    sub_4D10E2

loc_4D0F96:
mov     eax, [esi+18h]
mov     ebx, [esi+10h]
add     ebx, eax
mov     [esi+10h], ebx
mov     eax, ebx
sar     eax, 10h
mov     [edi+44h], ax
mov     eax, [esi+1Ch]
mov     edx, [esi+14h]
add     edx, eax
mov     [esi+14h], edx
mov     eax, edx
sar     eax, 10h
mov     [edi+48h], ax
mov     eax, [esi+24h]
mov     ecx, [esi+20h]
add     ecx, eax
mov     [esi+20h], ecx
mov     eax, ecx
sar     eax, 10h
mov     [edi+56h], ax
mov     ecx, [edi+46h]
sar     ecx, 10h
mov     edx, [edi+42h]
sar     edx, 10h
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
cmp     byte ptr [edi+9], 0
jnz     short loc_4D1025
lea     eax, [edi+14h]
mov     edx, offset unk_539434
call    sub_4DD69F
cmp     eax, 40h ; '@'
jnb     short loc_4D1025
mov     dword ptr [esi+2Ch], offset unk_5393C4
mov     eax, [esi+2Ch]
cmp     word ptr [eax], 0
jz      short loc_4D1019
mov     ax, [eax+8]
mov     [esi+4], ax
jmp     short loc_4D1022

loc_4D1019:
mov     edx, esi
mov     eax, edi
call    sub_4D10E2

loc_4D1022:
inc     byte ptr [edi+9]

loc_4D1025:
mov     ebx, [edi+0CCh]
test    ebx, 0FFFFFFh
jz      short loc_4D1046
test    byte ptr [edi+0CFh], 1Ch
jz      short loc_4D1046
mov     eax, ebx
and     eax, 0FFFFFFh
mov     [esp+18h+var_18], eax

loc_4D1046:
mov     eax, [edi+0D4h]
test    eax, 0FFFFFFh
jz      short loc_4D1064
test    byte ptr [edi+0D7h], 1Ch
jz      short loc_4D1064
mov     ebp, eax
and     ebp, 0FFFFFFh

loc_4D1064:
cmp     ebp, [esp+18h+var_18]
jle     short loc_4D106C
mov     [esp+18h+var_18], ebp

loc_4D106C:
cmp     [esp+18h+var_18], 0
jz      short loc_4D10DA
cmp     word ptr ds:dword_77E8F8, 0
jnz     short loc_4D10DA
lea     ecx, [edi+14h]
mov     ebx, 2800h
mov     edx, 400h
mov     eax, 1Eh
call    sub_42A70B
mov     eax, [esp+18h+var_18]
mov     di, word ptr ds:dword_77E7E0
sub     edi, eax
mov     word ptr ds:dword_77E7E0, di
test    di, di
jge     short loc_4D10B4
xor     edx, edx
mov     word ptr ds:dword_77E7E0, dx

loc_4D10B4:
mov     edx, ds:dword_77E7E0
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, ds:dword_77E7DC+2
sar     edx, 10h
cmp     edx, eax
jg      short loc_4D10DA
mov     eax, [esi+28h]
or      byte ptr [eax+0Ch], 1

loc_4D10DA:
add     esp, 4
jmp     loc_4D0B48
sub_4D0E85 endp




sub_4D10E2 proc near
push    ebx
push    ecx
push    esi
mov     ebx, eax
mov     ecx, edx
mov     eax, [edx+2Ch]
mov     dx, [eax+8]
mov     [ecx+4], dx
mov     dx, [eax+2]
mov     [ecx+6], dx
mov     dx, [eax+4]
mov     [ecx+8], dx
mov     dx, [eax+6]
mov     [ecx+0Ah], dx
mov     ax, [eax+0Ah]
mov     [ecx+0Ch], ax
mov     edx, [ecx+4]
sar     edx, 10h
mov     eax, [ebx+42h]
sar     eax, 10h
sub     edx, eax
shl     edx, 10h
mov     esi, [ecx+2]
sar     esi, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     [ecx+18h], eax
mov     edx, [ecx+6]
sar     edx, 10h
mov     eax, [ebx+46h]
sar     eax, 10h
sub     edx, eax
shl     edx, 10h
mov     esi, [ecx+2]
sar     esi, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     [ecx+1Ch], eax
mov     edx, [ecx+8]
sar     edx, 10h
mov     eax, [ebx+54h]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
and     eax, 0FFFh
cmp     eax, 800h
jle     short loc_4D1177
sub     eax, 1000h

loc_4D1177:
cmp     eax, 0FFFFF800h
jge     short loc_4D1187
mov     edx, 1000h
sub     edx, eax
mov     eax, edx

loc_4D1187:
mov     ebx, [ecx+2]
sar     ebx, 10h
shl     eax, 10h
mov     edx, eax
sar     edx, 1Fh
idiv    ebx
mov     [ecx+24h], eax
pop     esi
pop     ecx
pop     ebx
retn
sub_4D10E2 endp




sub_4D119E proc near

var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
mov     ebp, edx
test    byte ptr [eax], 1
jz      short loc_4D1228
lea     edi, [ebp+38h]
mov     esi, eax
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [esp+20h+var_1C]
lea     esi, [ebp+38h]
movsd
movsd
lea     edi, [ebp+30h]
lea     esi, [esp+20h+var_1C]
movsd
movsd
push    0
push    0
push    2000000h
sub     word ptr [ebp+3Ah], 280h
add     eax, 0CCh
push    eax
xor     eax, eax
mov     edx, [esp+30h+var_20]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+30h]
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
call    sub_4E01FC
push    0
push    0
push    2000000h
mov     eax, [esp+2Ch+var_20]
add     eax, 0D4h
push    eax
xor     eax, eax
mov     edx, [esp+30h+var_20]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+38h]
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 60h ; '`'
call    sub_4E01FC

loc_4D1228:
add     esp, 0Ch
jmp     loc_4D0B48
sub_4D119E endp




sub_4D1230 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
mov     ecx, edx
mov     edi, esp
mov     esi, offset dword_4D0A9C
movsd
movsd
movsd
movsd
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
xor     ebx, ebx
mov     bl, [eax+8]
call    ds:funcs_4D1266[ebx*4]
mov     ax, [ecx]
xor     ah, ah
and     al, 3Fh
cwde
mov     edx, dword ptr ds:unk_564C32[eax*2]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
add     edx, eax
sar     edx, 0Ch
mov     eax, [ecx]
sar     eax, 10h
add     eax, edx
mov     [ebp+16h], ax
inc     word ptr [ecx]
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
jmp     loc_4D0B0E
sub_4D1230 endp




sub_4D12C0 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
cmp     ds:byte_77E7D4, 0Dh
jnz     short loc_4D12E1
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
jmp     short loc_4D12EA

loc_4D12E1:
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8

loc_4D12EA:
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+10h], offset unk_53943C
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Eh], 1
mov     word ptr [ebx], 0
mov     ax, [ecx+16h]
mov     [ebx+2], ax
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     ecx
pop     ebx
retn
sub_4D12C0 endp

jpt_4D1374 dd offset loc_4D137B ; jump table for switch statement
dd offset loc_4D13A0
dd offset loc_4D13B9
dd offset loc_4D140D
dd offset loc_4D1425
dd offset loc_4D142E



sub_4D1344 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     eax, [eax+0Ah]
sar     eax, 18h
mov     esi, ds:dword_539448[eax*4]
mov     edx, ds:dword_53945C[eax*4]
mov     eax, ds:dword_5394A8[eax*4]
mov     bl, [ecx+9]
cmp     bl, 5           ; switch 6 cases
ja      def_4D1374      ; jumptable 004D1374 default case
movzx   edi, bl
jmp     jpt_4D1374[edi*4] ; switch jump

loc_4D137B:             ; jumptable 004D1374 case 0
mov     edx, ds:dword_5F84E8
cmp     ecx, edx
jnz     def_4D1374      ; jumptable 004D1374 default case
or      ds:byte_5F8421, 40h
xor     ebx, ebx
mov     ds:dword_5F84E8, ebx
inc     byte ptr [edx+9]
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4D13A0:             ; jumptable 004D1374 case 1
cmp     esi, 7FFFFFFFh
jz      short loc_4D13B1
mov     edx, esi
xor     eax, eax
call    sub_4A0E24

loc_4D13B1:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4D13B9:             ; jumptable 004D1374 case 2
cmp     esi, 7FFFFFFFh
jz      short loc_4D13FE
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4D1374      ; jumptable 004D1374 default case
cmp     eax, 7FFFFFFFh
jz      short loc_4D13F5
call    sub_47E888
test    eax, eax
jz      short loc_4D13F1

loc_4D13DE:
mov     eax, 0Ah
call    sub_49E0D7
mov     byte ptr [ecx+9], 3
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4D13F1:
mov     byte ptr [ecx+0Eh], 0

loc_4D13F5:
mov     byte ptr [ecx+9], 4
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4D13FE:
cmp     eax, esi
jz      short loc_4D13F5
call    sub_47E888
test    eax, eax
jnz     short loc_4D13DE
jmp     short loc_4D13F1

loc_4D140D:             ; jumptable 004D1374 case 3
cmp     ds:word_6E23D6, 0
jnz     def_4D1374      ; jumptable 004D1374 default case
inc     bl
mov     [ecx+9], bl
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4D1425:             ; jumptable 004D1374 case 4
and     ds:byte_5F8421, 0BFh
jmp     short loc_4D13B1

loc_4D142E:             ; jumptable 004D1374 case 5
cmp     edx, 7FFFFFFFh
jz      short loc_4D144D
cmp     eax, 7FFFFFFFh
jz      short loc_4D1446
call    sub_47E888
test    eax, eax
jz      short loc_4D144D

loc_4D1446:
mov     eax, edx
call    sub_47E8B8

loc_4D144D:
cmp     byte ptr [ecx+0Eh], 1
jnz     loc_4D14E8
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     eax, ds:dword_539494[eax*4]
cmp     eax, 7FFFFFFFh
jz      short loc_4D14D5
mov     dl, [eax+8]
mov     byte ptr ds:dword_77EA5A+2, dl
mov     dl, [eax+9]
mov     ds:byte_77EA5E, dl
mov     dl, [eax+0Ah]
mov     ds:byte_77EA5F, dl
mov     dx, [eax]
mov     word ptr ds:dword_77EA4E+2, dx
mov     dx, [eax+2]
mov     word ptr ds:dword_77EA52, dx
mov     dx, [eax+4]
mov     word ptr ds:dword_77EA52+2, dx
mov     ax, [eax+6]
mov     word ptr ds:dword_77EA5A, ax
xor     dl, dl
mov     byte ptr ds:dword_77EA5A+3, dl
mov     dh, 0FFh
mov     ds:byte_77EA61, dh
cmp     byte ptr [ecx+0Dh], 4
jnz     short loc_4D14CE
mov     ds:byte_77EA60, dh
jmp     short loc_4D14D5

loc_4D14CE:
mov     ds:byte_77EA60, 2

loc_4D14D5:
mov     eax, ecx
call    sub_432EAB
mov     eax, ecx
call    sub_4DE371
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4D14E8:
mov     byte ptr [ecx+0Eh], 1
mov     byte ptr [ecx+9], 0

def_4D1374:             ; jumptable 004D1374 default case
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4D1344 endp




sub_4D14F5 proc near
push    ebx
push    ecx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
mov     edi, esp
mov     esi, offset dword_4D0AAC
movsd
movsd
movsd
movsd
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
xor     ebx, ebx
mov     bl, [eax+8]
call    ds:funcs_4D1528[ebx*4]
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
add     esp, 10h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4D14F5 endp




sub_4D155B proc near
push    ebx
push    ecx
cmp     byte ptr [eax+0Ch], 0
jnz     short loc_4D1592
mov     bx, [edx]
xor     bh, bh
and     bl, 3Fh
movsx   ecx, bx
mov     ebx, dword ptr ds:unk_564C32[ecx*2]
sar     ebx, 10h
mov     ecx, ebx
shl     ecx, 2
add     ecx, ebx
sar     ecx, 0Ch
mov     ebx, [edx]
sar     ebx, 10h
add     ecx, ebx
mov     [eax+16h], cx
inc     word ptr [edx]
jmp     short loc_4D159A

loc_4D1592:
mov     dx, [edx+2]
mov     [eax+16h], dx

loc_4D159A:
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
pop     ecx
pop     ebx
retn
sub_4D155B endp




sub_4D15C1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D15C7[edx*4]
pop     edx
retn
sub_4D15C1 endp




sub_4D15D0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+0DCh]
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+50h]
mov     [ecx+4Eh], ax
mov     [ecx+4Ch], ax
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
lea     eax, [ecx+0E8h]
mov     ebx, 0FFFFFFA0h
mov     edx, 9
call    sub_4E19B9
mov     dword ptr [ecx+78h], offset unk_5394C8
mov     byte ptr [ecx+74h], 0
mov     byte ptr [esi], 0
mov     dword ptr [esi+1Ch], 0
mov     dword ptr [esi+20h], 0
mov     dword ptr [esi+2Ch], 0
mov     dword ptr [esi+30h], 0
mov     word ptr [esi+3Ch], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     eax, ecx
call    sub_4D176E
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D15D0 endp




sub_4D167D proc near

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
mov     ebp, eax
lea     ecx, [eax+0DCh]
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
mov     al, [eax+74h]
mov     [ebp+75h], al
mov     dword ptr [ebp+0C4h], offset unk_808080
mov     eax, ebp
call    sub_4D181C
lea     eax, [ebp+0E8h]
mov     edx, ebp
call    sub_4E19CA
mov     [ecx+1Ch], eax
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4D16D6[edx*4]
cmp     byte ptr [ebp+8], 2
jz      loc_4D1764
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
mov     al, [ecx]
xor     edx, edx
mov     dl, al
inc     al
mov     [ecx], al
mov     ax, ds:word_5394F0[edx*2]
add     [ebp+0BEh], ax
and     byte ptr [ecx], 1Fh
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     eax, ebp
call    sub_4D18B9
cmp     byte ptr [ebp+9], 6
jz      short loc_4D174B
mov     eax, ebp
call    sub_4D1933

loc_4D174B:
test    byte ptr [ebp+0], 2
jz      short loc_4D1764
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 28h ; '('
mov     eax, ebp
call    sub_4ED88B

loc_4D1764:
add     esp, 10h

loc_4D1767:
pop     ebp

loc_4D1768:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D167D endp




sub_4D176E proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+0DCh]
call    rand_
and     eax, 0Fh
cmp     eax, 0Eh
jge     short loc_4D17BB
call    rand_
and     al, 1
mov     [ecx+1], al
mov     word ptr [edx+44h], 64h ; 'd'
mov     word ptr [edx+46h], 0
mov     word ptr [edx+4Eh], 0
call    rand_
and     eax, 7
mov     ax, ds:word_539530[eax*2]
mov     [ecx+2], ax
mov     byte ptr [edx+9], 0
jmp     short loc_4D17D3

loc_4D17BB:
call    rand_
and     eax, 7
mov     ax, ds:word_539530[eax*2]
mov     [ecx+4], ax
mov     byte ptr [edx+9], 2

loc_4D17D3:
mov     byte ptr [edx+0Ah], 0
mov     eax, edx
call    sub_4D167D
pop     edx
pop     ecx
retn
sub_4D176E endp




sub_4D17E1 proc near
push    edx
lea     edx, [eax+0DCh]
cmp     dword ptr [edx+1Ch], 0
jz      short loc_4D181A
mov     word ptr [eax+54h], 40h ; '@'
mov     word ptr [eax+44h], 0C8h
mov     word ptr [eax+46h], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [edx+3Eh], 20h ; ' '
mov     word ptr [edx+6], 5Ah ; 'Z'
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

loc_4D181A:
pop     edx
retn
sub_4D17E1 endp




sub_4D181C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+0DCh]
cmp     byte ptr [eax+9], 6
jz      loc_4D1768
test    byte ptr [edi+2Fh], 38h
jz      loc_4D1768
mov     word ptr [edi+3Ch], 0
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+34h]
lea     eax, [esi+14h]
xor     ecx, ecx
call    sub_4DE726
mov     edx, eax
test    eax, 0FFFF0000h
jz      short loc_4D186B
add     dh, 8
and     dh, 0Fh
mov     [esi+56h], dx
jmp     short loc_4D186F

loc_4D186B:
mov     [esi+56h], ax

loc_4D186F:
mov     word ptr [esi+44h], 80h
mov     word ptr [esi+46h], 0FD00h
mov     word ptr [esi+4Eh], 80h
mov     word ptr [edi+8], 8
mov     byte ptr [esi+74h], 1
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     byte ptr [esi+9], 6
mov     byte ptr [esi+0Ah], 0
jmp     loc_4D1768
sub_4D181C endp




sub_4D18B9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+0DCh]
mov     bx, [eax+54h]
mov     word ptr [eax+54h], 0
mov     dword ptr [ecx+20h], 0
call    sub_42DE56
test    ah, 0Fh
jz      short loc_4D18E5
or      byte ptr [ecx+20h], 1

loc_4D18E5:
cmp     byte ptr [edx+74h], 0
jnz     short loc_4D192A
mov     eax, edx
call    sub_42C592
mov     edi, eax
mov     esi, [edx+2Ch]
sar     esi, 10h
cmp     eax, esi
jz      short loc_4D191C
cmp     byte ptr [edx+75h], 0
jnz     short loc_4D1926
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
or      byte ptr [ecx+20h], 4
jmp     short loc_4D1926

