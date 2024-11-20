xor     ebx, ebx
mov     bl, ds:byte_77EAC6
mov     eax, ebx
shl     eax, 3
add     eax, ebx
shl     eax, 4
mov     edx, offset unk_77E4C4
add     edx, eax
mov     ds:dword_77EA74, edx
shl     ebx, 0Eh
mov     eax, offset unk_7764A4
add     eax, ebx
mov     ds:dword_77E6FC, eax
lea     eax, [edx+70h]
mov     edx, 8
call    sub_4F88FC
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Eh
add     eax, offset unk_7764A4
mov     edx, 1000h
call    sub_4F88FC
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Bh
add     eax, offset unk_7754A4
mov     edx, 200h
call    sub_4F88FC
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Bh
add     eax, offset unk_76C464
mov     edx, 200h
call    sub_4F88FC
mov     eax, ds:dword_77E720
xor     edx, edx
mov     dl, ds:byte_77EAC6
shl     edx, 2
mov     eax, ds:off_5303E0[edx+eax*8]
mov     ds:dword_77E6DC, eax
cmp     ds:byte_530419, 0
jnz     short loc_4A7281
call    sub_4EED08

loc_4A7281:
call    sub_4D8F96
call    sub_4A0EF8
call    sub_4A065A
call    sub_49E00B
inc     ds:word_77EAB6
jmp     loc_4A702C

loc_4A72A1:
mov     eax, ds:hWnd
call    sub_4F84A5
call    sub_4D89AF
call    sub_4F8D91
call    sub_4F383A
call    sub_4A65EB

loc_4A72BF:
mov     eax, 1

loc_4A72C4:
add     esp, 0B4h
jmp     loc_4A6D5F
_WinMain@16 endp

push    ecx
cmp     ds:dword_530414, 0
jz      short loc_4A7317
cmp     ds:byte_77E807, 0
jnz     short loc_4A7317
mov     eax, ds:dword_53041F
test    eax, eax
jbe     short loc_4A72F2
cmp     eax, 1
jz      short loc_4A7304
pop     ecx
retn

loc_4A72F2:
mov     eax, 1
call    sub_4A86B8
add     ds:dword_53041F, eax
pop     ecx
retn

loc_4A7304:
call    sub_4A0E35
xor     ecx, ecx
mov     ds:dword_53041F, ecx
mov     ds:dword_530414, ecx

loc_4A7317:
pop     ecx
retn



sub_4A7319 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
xor     esi, esi
jmp     short loc_4A7366

loc_4A7322:
inc     ecx
cmp     ecx, 200h
jge     short loc_4A735D

loc_4A732B:
mov     edx, ecx
shl     edx, 3
mov     ebx, ds:dword_70E1B0[edx]
test    ebx, ebx
jz      short loc_4A735D
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
mov     edi, ds:dword_6E40B4[eax]
cmp     ebx, edi
jnz     short loc_4A7322
mov     edx, [edi+18h]
mov     edx, [edx]
shr     edx, 10h
mov     ds:word_6E40B2[eax], dx

loc_4A735D:
inc     esi
cmp     esi, 800h
jge     short loc_4A737B

loc_4A7366:
mov     eax, esi
shl     eax, 2
sub     eax, esi
cmp     ds:dword_6E40B4[eax*4], 0
jz      short loc_4A735D
xor     ecx, ecx
jmp     short loc_4A732B

loc_4A737B:
call    sub_4A738A
call    sub_4A742C
jmp     loc_4A7AA6
sub_4A7319 endp




sub_4A738A proc near
push    ebx
push    ecx
push    edx
mov     edx, 93Ch
mov     ds:word_55BDB8, dx
mov     ds:word_55BDBA, dx
mov     ds:word_55BDBC, dx
mov     ds:word_55BDC0, dx
mov     ds:word_55BDC2, dx
mov     ds:word_55BDC4, 0F6C4h
xor     edx, edx
mov     ds:word_55BDC8, dx
mov     ds:word_55BDCA, dx
mov     ds:word_55BDCC, dx
mov     ah, 0A0h
mov     ds:byte_55BDE4, ah
mov     ds:byte_55BDE5, ah
mov     ds:byte_55BDE6, ah
mov     bl, 60h ; '`'
mov     ds:byte_55BDE8, bl
mov     ds:byte_55BDE9, bl
mov     ds:byte_55BDEA, bl
xor     ch, ch
mov     ds:byte_55BDEC, ch
mov     ds:byte_55BDED, ch
mov     ds:byte_55BDEE, ch
mov     edx, 0A0h
mov     ds:dword_55BDD0, edx
mov     ds:dword_55BDD4, edx
mov     ds:dword_55BDD8, edx
pop     edx
pop     ecx
pop     ebx
retn
sub_4A738A endp




sub_4A742C proc near

var_4C= dword ptr -4Ch
var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 38h
mov     ebx, ds:dword_55BDD8
mov     edx, ds:dword_55BDD4
mov     eax, ds:dword_55BDD0
call    sub_4EF166
fild    ds:word_55BDB8
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_4C]
fild    ds:word_55BDBA
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_48]
fild    ds:word_55BDBC
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_44]
fild    ds:word_55BDC0
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_40]
fild    ds:word_55BDC2
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_3C]
fild    ds:word_55BDC4
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_38]
fild    ds:word_55BDC8
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_34]
fild    ds:word_55BDCA
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_30]
fild    ds:word_55BDCC
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_2C]
mov     eax, esp
call    sub_4EFB0F
xor     eax, eax
mov     al, ds:byte_55BDE4
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_4C]
xor     eax, eax
mov     al, ds:byte_55BDE5
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_40]
xor     eax, eax
mov     al, ds:byte_55BDE6
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_34]
xor     eax, eax
mov     al, ds:byte_55BDE8
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_48]
xor     eax, eax
mov     al, ds:byte_55BDE9
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_3C]
xor     eax, eax
mov     al, ds:byte_55BDEA
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_30]
xor     eax, eax
mov     al, ds:byte_55BDEC
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_44]
xor     eax, eax
mov     al, ds:byte_55BDED
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_38]
xor     eax, eax
mov     al, ds:byte_55BDEE
shl     eax, 4
mov     [esp+4Ch+var_18], eax
fild    [esp+4Ch+var_18]
fmul    ds:dbl_50A3A0
fstp    [esp+4Ch+var_2C]
mov     eax, esp
call    sub_4EFB24
xor     edx, edx
mov     [esp+4Ch+var_1C], edx

loc_4A75E8:
mov     edi, [esp+4Ch+var_1C]
shl     edi, 3
mov     ecx, ds:dword_70E1B0[edi]
test    ecx, ecx
jz      short loc_4A7644
mov     edi, ecx
mov     esi, 6
jmp     short loc_4A7608

loc_4A7602:
inc     esi
cmp     esi, 0Ch
jnb     short loc_4A763E

loc_4A7608:
mov     ecx, esi
mov     ecx, [edi+ecx*4]
mov     eax, [ecx]
mov     ebx, eax
and     ebx, 3F00h
shr     ebx, 7
and     eax, 0FFh
shl     eax, 2
add     eax, 4
add     ecx, eax
xor     edx, edx

loc_4A7629:
cmp     edx, ebx
jnb     short loc_4A7602
mov     eax, edx
shl     eax, 2
add     eax, ecx
call    sub_4A7852
add     edx, 2
jmp     short loc_4A7629

loc_4A763E:
inc     [esp+4Ch+var_1C]
jmp     short loc_4A75E8

loc_4A7644:
add     esp, 38h
jmp     loc_4A7AA6
sub_4A742C endp




sub_4A764C proc near

var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 34h
mov     ebx, ds:dword_55BDD8
mov     edx, ds:dword_55BDD4
mov     eax, ds:dword_55BDD0
call    sub_4EF166
fild    ds:word_55BDB8
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_48]
fild    ds:word_55BDBA
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_44]
fild    ds:word_55BDBC
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_40]
fild    ds:word_55BDC0
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_3C]
fild    ds:word_55BDC2
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_38]
fild    ds:word_55BDC4
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_34]
fild    ds:word_55BDC8
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_30]
fild    ds:word_55BDCA
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_2C]
fild    ds:word_55BDCC
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_28]
mov     eax, esp
call    sub_4EFB0F
xor     eax, eax
mov     al, ds:byte_55BDE4
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_48]
xor     eax, eax
mov     al, ds:byte_55BDE5
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_3C]
xor     eax, eax
mov     al, ds:byte_55BDE6
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_30]
xor     eax, eax
mov     al, ds:byte_55BDE8
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_44]
xor     eax, eax
mov     al, ds:byte_55BDE9
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_38]
xor     eax, eax
mov     al, ds:byte_55BDEA
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_2C]
xor     eax, eax
mov     al, ds:byte_55BDEC
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_40]
xor     eax, eax
mov     al, ds:byte_55BDED
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_34]
xor     eax, eax
mov     al, ds:byte_55BDEE
shl     eax, 4
mov     [esp+48h+var_18], eax
fild    [esp+48h+var_18]
fmul    ds:dbl_50A3A8
fstp    [esp+48h+var_28]
mov     eax, esp
call    sub_4EFB24
mov     edi, offset unk_6DB7FC
mov     esi, 6
jmp     short loc_4A7814

loc_4A780E:
inc     esi
cmp     esi, 0Ch
jnb     short loc_4A784A

loc_4A7814:
mov     ecx, esi
mov     ecx, [edi+ecx*4]
mov     eax, [ecx]
mov     ebx, eax
and     ebx, 3F00h
shr     ebx, 7
and     eax, 0FFh
shl     eax, 2
add     eax, 4
add     ecx, eax
xor     edx, edx

loc_4A7835:
cmp     edx, ebx
jnb     short loc_4A780E
mov     eax, edx
shl     eax, 2
add     eax, ecx
call    sub_4A7852
add     edx, 2
jmp     short loc_4A7835

loc_4A784A:
add     esp, 34h
jmp     loc_4A7AA6
sub_4A764C endp




sub_4A7852 proc near

var_78= dword ptr -78h
var_74= dword ptr -74h
var_70= dword ptr -70h
var_68= dword ptr -68h
var_64= dword ptr -64h
var_60= dword ptr -60h
var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= dword ptr -50h
var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_38= dword ptr -38h
var_34= word ptr -34h
var_30= dword ptr -30h
var_2C= word ptr -2Ch
var_28= dword ptr -28h
var_24= word ptr -24h
var_20= byte ptr -20h
var_1F= byte ptr -1Fh
var_1E= byte ptr -1Eh
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 60h
mov     eax, [eax+4]
mov     edi, eax
shr     edi, 18h
and     eax, 0FFFFFFh
mov     esi, offset unk_6B87CC
add     esi, eax
mov     ah, 80h
mov     [esp+78h+var_20], ah
mov     [esp+78h+var_1F], ah
mov     [esp+78h+var_1E], ah

loc_4A787D:
dec     edi
cmp     edi, 0FFFFFFFFh
jz      loc_4A7AA2
mov     eax, [esi]
mov     edx, eax
shl     edx, 5
test    edx, edx
jge     short loc_4A789D
shl     eax, 7
test    eax, eax
jge     loc_4A7A9A

loc_4A789D:
movsx   ax, byte ptr [esi+4]
mov     word ptr [esp+78h+var_38], ax
movsx   ax, byte ptr [esi+5]
mov     word ptr [esp+78h+var_38+2], ax
mov     edx, eax
neg     edx
mov     word ptr [esp+78h+var_38+2], dx
movsx   ax, byte ptr [esi+6]
mov     [esp+78h+var_34], ax
movsx   ax, byte ptr [esi+7]
mov     word ptr [esp+78h+var_30], ax
movsx   ax, byte ptr [esi+8]
mov     word ptr [esp+78h+var_30+2], ax
mov     ebx, eax
neg     ebx
mov     word ptr [esp+78h+var_30+2], bx
movsx   ax, byte ptr [esi+9]
mov     [esp+78h+var_2C], ax
movsx   ax, byte ptr [esi+0Ah]
mov     word ptr [esp+78h+var_28], ax
movsx   ax, byte ptr [esi+0Bh]
mov     word ptr [esp+78h+var_28+2], ax
mov     ecx, eax
neg     ecx
mov     word ptr [esp+78h+var_28+2], cx
movsx   ax, byte ptr [esi+0Ch]
mov     [esp+78h+var_24], ax
mov     edx, [esp+46h]
sar     edx, 10h
mov     eax, [esp+3Eh]
sar     eax, 10h
sub     edx, eax
mov     [esp+78h+var_78], edx
mov     ecx, [esp+78h+var_30]
sar     ecx, 10h
mov     edx, [esp+78h+var_38]
sar     edx, 10h
sub     ecx, edx
mov     [esp+78h+var_74], ecx
mov     ecx, [esp+78h+var_30+2]
sar     ecx, 10h
mov     ebx, [esp+78h+var_38+2]
sar     ebx, 10h
sub     ecx, ebx
mov     [esp+78h+var_70], ecx
mov     ecx, [esp+4Eh]
sar     ecx, 10h
sub     ecx, eax
mov     [esp+78h+var_68], ecx
mov     eax, [esp+78h+var_28]
sar     eax, 10h
sub     eax, edx
mov     [esp+78h+var_64], eax
mov     eax, [esp+78h+var_28+2]
sar     eax, 10h
sub     eax, ebx
mov     [esp+78h+var_60], eax
lea     ebx, [esp+78h+var_58]
lea     edx, [esp+78h+var_68]
mov     eax, esp
call    sub_4EF749
mov     edx, [esp+78h+var_58]
test    edx, edx
jge     short loc_4A798D
neg     edx

loc_4A798D:
mov     ecx, [esp+78h+var_54]
test    ecx, ecx
jge     short loc_4A799B
mov     eax, ecx
neg     eax
jmp     short loc_4A799D

loc_4A799B:
mov     eax, ecx

loc_4A799D:
cmp     edx, eax
jle     short loc_4A79B5
mov     ebp, [esp+78h+var_58]
test    ebp, ebp
jge     short loc_4A79AF
mov     eax, ebp
neg     eax
jmp     short loc_4A79B1

loc_4A79AF:
mov     eax, ebp

loc_4A79B1:
mov     edx, eax
jmp     short loc_4A79C5

loc_4A79B5:
mov     ebx, [esp+78h+var_54]
test    ebx, ebx
jge     short loc_4A79C3
mov     edx, ebx
neg     edx
jmp     short loc_4A79C5

loc_4A79C3:
mov     edx, ebx

loc_4A79C5:
mov     eax, [esp+78h+var_50]
test    eax, eax
jge     short loc_4A79CF
neg     eax

loc_4A79CF:
cmp     edx, eax
jle     short loc_4A7A13
mov     ecx, [esp+78h+var_58]
test    ecx, ecx
jge     short loc_4A79E1
mov     eax, ecx
neg     eax
jmp     short loc_4A79E3

loc_4A79E1:
mov     eax, ecx

loc_4A79E3:
mov     ebx, [esp+78h+var_54]
test    ebx, ebx
jge     short loc_4A79F1
mov     edx, ebx
neg     edx
jmp     short loc_4A79F3

loc_4A79F1:
mov     edx, ebx

loc_4A79F3:
cmp     eax, edx
jle     short loc_4A7A03
mov     eax, [esp+78h+var_58]
test    eax, eax
jge     short loc_4A7A21

loc_4A79FF:
neg     eax
jmp     short loc_4A7A21

loc_4A7A03:
mov     ebp, [esp+78h+var_54]
test    ebp, ebp
jge     short loc_4A7A0F
mov     eax, ebp
jmp     short loc_4A79FF

loc_4A7A0F:
mov     eax, ebp
jmp     short loc_4A7A21

loc_4A7A13:
mov     edx, [esp+78h+var_50]
test    edx, edx
jge     short loc_4A7A1F
mov     eax, edx
jmp     short loc_4A79FF

loc_4A7A1F:
mov     eax, edx

loc_4A7A21:
xor     edx, edx

loc_4A7A23:
cmp     eax, 6882h
jle     short loc_4A7A2F
sar     eax, 1
inc     edx
jmp     short loc_4A7A23

loc_4A7A2F:
mov     cl, dl
mov     eax, [esp+78h+var_58]
sar     eax, cl
mov     [esp+78h+var_48], eax
mov     eax, [esp+78h+var_54]
sar     eax, cl
mov     [esp+78h+var_44], eax
mov     eax, [esp+78h+var_50]
sar     eax, cl
mov     [esp+78h+var_40], eax
mov     edx, esp
lea     eax, [esp+78h+var_48]
call    sub_4EF886
mov     eax, [esp+78h+var_78]
mov     word ptr [esp+78h+var_38], ax
mov     eax, [esp+78h+var_74]
mov     word ptr [esp+78h+var_38+2], ax
mov     eax, [esp+78h+var_70]
mov     [esp+78h+var_34], ax
lea     ebx, [esp+78h+var_1C]
lea     edx, [esp+78h+var_20]
lea     eax, [esp+78h+var_38]
call    sub_4EF9ED
mov     eax, [esi]
and     eax, 0FF000000h
mov     edx, [esp+78h+var_1C]
and     edx, 0FFFFFFh
or      edx, eax
mov     [esi], edx

loc_4A7A9A:
add     esi, 10h
jmp     loc_4A787D

loc_4A7AA2:
add     esp, 60h
sub_4A7852 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4A7DD4
;   ADDITIONAL PARENT FUNCTION sub_4A7B2D

loc_4A7AA5:
pop     ebp

loc_4A7AA6:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4A7DD4



sub_4A7AAC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx

loc_4A7AB3:
mov     eax, edx
shl     eax, 3
mov     ebx, ds:dword_70E1B0[eax]
test    ebx, ebx
jz      short loc_4A7ADB
cmp     edx, 800h
jnb     short loc_4A7ADB
cmp     ecx, ds:dword_70E1AC[eax]
jnz     short loc_4A7AD8
mov     eax, ebx
pop     edx
pop     ecx
pop     ebx
retn

loc_4A7AD8:
inc     edx
jmp     short loc_4A7AB3

loc_4A7ADB:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4A7AAC endp




sub_4A7AE1 proc near
push    ebx
push    ecx
mov     ecx, edx
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     edx, eax
shl     edx, 2
mov     ebx, ds:dword_6E40B4[edx]
mov     eax, ecx
call    sub_4A7AAC
mov     ds:dword_6E40B4[edx], eax
mov     eax, ebx
pop     ecx
pop     ebx
retn
sub_4A7AE1 endp

push    ecx
mov     ecx, edx
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     ds:dword_6E40B4[eax*4], ecx
pop     ecx
retn
db 90h
jpt_4A7D51 dd offset loc_4A7C9C ; jump table for switch statement
dd offset loc_4A7CAA
dd offset loc_4A7D58
dd offset def_4A7D51



sub_4A7B2D proc near

var_60= dword ptr -60h
var_50= dword ptr -50h
var_40= dword ptr -40h
var_30= dword ptr -30h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004A7AA5 SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 48h
cmp     byte ptr ds:dword_77E7E8, 0
jnz     short loc_4A7B48
cmp     byte ptr ds:dword_77E7E8+1, 0
jz      short loc_4A7B4D

loc_4A7B48:
call    sub_4A8141

loc_4A7B4D:
mov     edi, ds:dword_77E7D0+1
sar     edi, 18h
mov     eax, ds:(dword_53041F+2)[edi]
sar     eax, 18h
mov     [esp+60h+var_20], eax
test    eax, eax
jl      loc_4A7DCC
mov     ds:dword_6E40B4, 1
xor     ecx, ecx
jmp     short loc_4A7B7F

loc_4A7B79:
inc     ecx
cmp     ecx, 2
jge     short loc_4A7BB4

loc_4A7B7F:
xor     esi, esi
jmp     short loc_4A7B89

loc_4A7B83:
inc     esi
cmp     esi, 2
jge     short loc_4A7B79

loc_4A7B89:
xor     ebx, ebx

loc_4A7B8B:
mov     eax, ecx
shl     eax, 5
mov     edx, esi
shl     edx, 4
add     eax, edx
mov     edx, ebx
shl     edx, 2
add     edx, eax
mov     eax, ds:dword_530444[edx]
call    sub_4A7AAC
mov     [esp+edx+60h+var_60], eax
inc     ebx
cmp     ebx, 4
jl      short loc_4A7B8B
jmp     short loc_4A7B83

loc_4A7BB4:
cmp     ds:byte_77E7D4, 6
jnz     loc_4A7C63
mov     edx, 1C7h
mov     eax, 6
call    sub_4A7EE1
cmp     eax, 1
jz      short loc_4A7BDA
cmp     eax, 2
jnz     short loc_4A7BF7

loc_4A7BDA:
mov     ds:word_6E5600, 0EE00h
mov     ds:word_6E5602, 0FD00h
mov     ds:word_6E5604, 0A00h
jmp     short loc_4A7C12

loc_4A7BF7:
mov     ds:word_6E5600, 0EE10h
mov     ds:word_6E5602, 0FD00h
mov     ds:word_6E5604, 0A10h

loc_4A7C12:
mov     edx, 1F8h
mov     eax, 6
call    sub_4A7EE1
cmp     eax, 1
jz      short loc_4A7C2B
cmp     eax, 2
jnz     short loc_4A7C48

loc_4A7C2B:
mov     ds:word_6E584C, 2000h
mov     ds:word_6E584E, 0FD00h
mov     ds:word_6E5850, 0E00h
jmp     short loc_4A7C63

loc_4A7C48:
mov     ds:word_6E584C, 2010h
mov     ds:word_6E584E, 0FD00h
mov     ds:word_6E5850, 0E10h

loc_4A7C63:
mov     eax, [esp+60h+var_20]
shl     eax, 9
mov     edx, offset unk_764964
add     edx, eax
mov     [esp+60h+var_1C], edx
xor     ebx, ebx
jmp     short loc_4A7C88

loc_4A7C79:
add     ebx, 10h
cmp     ebx, 800h
jge     loc_4A7DC4

loc_4A7C88:
mov     eax, ebx
sar     eax, 4
mov     ebp, [esp+60h+var_1C]
mov     ebp, [ebp+eax*4+0]
xor     esi, esi
jmp     loc_4A7D24

loc_4A7C9C:             ; jumptable 004A7D51 case 0
xor     ecx, ecx
mov     ds:word_6E40B2[eax], cx
jmp     def_4A7D51      ; jumptable 004A7D51 default case, case 3

loc_4A7CAA:             ; jumptable 004A7D51 case 1
mov     ds:word_6E40B2[eax], 64h ; 'd'
cmp     edi, 5
jz      short loc_4A7CBD
cmp     edi, 6
jnz     short loc_4A7CF3

loc_4A7CBD:
lea     edx, [ebx+esi]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, ds:dword_6E40B4[eax]
mov     ecx, [edx]
xor     cx, cx
cmp     ecx, 81000000h
jnz     short loc_4A7CF3
mov     edx, [edx+18h]
mov     edx, [edx]
shr     edx, 0Eh
and     edx, 3
mov     edx, [esp+edx*4+60h+var_60]

loc_4A7CEB:
mov     ds:dword_6E40B4[eax], edx
jmp     short def_4A7D51 ; jumptable 004A7D51 default case, case 3

loc_4A7CF3:
lea     edx, [ebx+esi]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, ds:dword_6E40B4[eax*4]
mov     edx, [edx+18h]
mov     edx, [edx]
shr     edx, 0Eh
and     edx, 3
mov     edx, [esp+edx*4+60h+var_40]

loc_4A7D13:
mov     ds:dword_6E40B4[eax*4], edx

def_4A7D51:             ; jumptable 004A7D51 default case, case 3
inc     esi
cmp     esi, 10h
jge     loc_4A7C79

loc_4A7D24:
lea     ecx, [ebx+esi]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
cmp     ds:dword_6E40B4[eax], 0
jz      loc_4A7DCC
test    ecx, ecx
jz      short def_4A7D51 ; jumptable 004A7D51 default case, case 3
lea     ecx, [esi+esi]
mov     edx, ebp
shr     edx, cl
and     edx, 3
cmp     edx, 3          ; switch 4 cases
ja      short def_4A7D51 ; jumptable 004A7D51 default case, case 3
jmp     jpt_4A7D51[edx*4] ; switch jump

loc_4A7D58:             ; jumptable 004A7D51 case 2
mov     ds:word_6E40B2[eax], 0C8h
cmp     edi, 5
jz      short loc_4A7D6B
cmp     edi, 6
jnz     short loc_4A7D9F

loc_4A7D6B:
lea     edx, [ebx+esi]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, ds:dword_6E40B4[eax]
mov     ecx, [edx]
xor     cx, cx
cmp     ecx, 81000000h
jnz     short loc_4A7D9F
mov     edx, [edx+18h]
mov     edx, [edx]
shr     edx, 0Eh
and     edx, 3
mov     edx, [esp+edx*4+60h+var_50]
jmp     loc_4A7CEB

loc_4A7D9F:
lea     edx, [ebx+esi]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, ds:dword_6E40B4[eax*4]
mov     edx, [edx+18h]
mov     edx, [edx]
shr     edx, 0Eh
and     edx, 3
mov     edx, [esp+edx*4+60h+var_30]
jmp     loc_4A7D13

loc_4A7DC4:
xor     ecx, ecx
mov     ds:dword_6E40B4, ecx

loc_4A7DCC:
add     esp, 48h
jmp     loc_4A7AA5
sub_4A7B2D endp ; sp-analysis failed




sub_4A7DD4 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004A7AA5 SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
call    sub_4A8561
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
mov     eax, ds:(dword_53041F+2)[eax]
sar     eax, 18h
test    eax, eax
jl      loc_4A7E8F
mov     ds:dword_6E40B4, 1
shl     eax, 9
mov     edx, offset unk_764964
add     edx, eax
mov     [esp+1Ch+var_1C], edx
xor     edi, edi
jmp     short loc_4A7E2E

loc_4A7E16:
mov     eax, edi
sar     eax, 4
shl     eax, 2
add     eax, [esp+1Ch+var_1C]
mov     [eax], ebx
add     edi, 10h
cmp     edi, 800h
jge     short loc_4A7E88

loc_4A7E2E:
mov     ebx, edi
sar     ebx, 4
shl     ebx, 2
add     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx]
xor     edx, edx
jmp     short loc_4A7E54

loc_4A7E3F:
test    ds:word_6E40B2[eax], 0FFFh
jnz     short loc_4A7E4E
not     ecx
and     ebx, ecx

loc_4A7E4E:
inc     edx
cmp     edx, 10h
jge     short loc_4A7E16

loc_4A7E54:
lea     ecx, [edi+edx]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     esi, ds:dword_6E40B4[eax]
test    esi, esi
jz      short loc_4A7E8F
test    ecx, ecx
jz      short loc_4A7E4E
mov     esi, [esi+18h]
lea     ecx, [edx+edx]
mov     ebp, 3
shl     ebp, cl
mov     ecx, ebp
test    byte ptr [esi+3], 0F0h
jnz     short loc_4A7E3F
or      ebx, ebp
jmp     short loc_4A7E4E

loc_4A7E88:
xor     eax, eax
mov     ds:dword_6E40B4, eax

loc_4A7E8F:
add     esp, 4
jmp     loc_4A7AA5
sub_4A7DD4 endp




sub_4A7E97 proc near
push    ebx
push    ecx
push    edx
test    eax, eax
jnz     short loc_4A7EB8
mov     ecx, offset unk_764964

loc_4A7EA3:
mov     edx, eax
mov     dword ptr [ecx+edx*4], 0FFFFFFFFh
inc     eax
cmp     eax, 380h
jl      short loc_4A7EA3
pop     edx
pop     ecx
pop     ebx
retn

loc_4A7EB8:
mov     ebx, 70h ; 'p'
mov     edx, offset unk_764964
mov     eax, offset unk_751ACC
call    sub_4EECEF
pop     edx
pop     ecx
pop     ebx
retn
sub_4A7E97 endp

db 90h
jpt_4A7F16 dd offset loc_4A7F1D ; jump table for switch statement
dd offset loc_4A7F21
dd offset loc_4A7F28
dd offset loc_4A7F2F



sub_4A7EE1 proc near
push    ecx
test    edx, edx
jl      short def_4A7F16 ; jumptable 004A7F16 default case
mov     eax, ds:(dword_53041F+2)[eax]
sar     eax, 18h
test    eax, eax
jl      short def_4A7F16 ; jumptable 004A7F16 default case
shl     eax, 9
mov     ecx, offset unk_764964
add     ecx, eax
mov     eax, edx
sar     eax, 4
mov     eax, [ecx+eax*4]
mov     ecx, edx
and     ecx, 0Fh
add     ecx, ecx
shr     eax, cl
and     eax, 3
cmp     eax, 3          ; switch 4 cases
ja      short def_4A7F16 ; jumptable 004A7F16 default case
jmp     jpt_4A7F16[eax*4] ; switch jump

loc_4A7F1D:             ; jumptable 004A7F16 case 0
xor     eax, eax
pop     ecx
retn

loc_4A7F21:             ; jumptable 004A7F16 case 1
mov     eax, 1
pop     ecx
retn

loc_4A7F28:             ; jumptable 004A7F16 case 2
mov     eax, 2
pop     ecx
retn

loc_4A7F2F:             ; jumptable 004A7F16 case 3
mov     eax, 3
pop     ecx
retn

def_4A7F16:             ; jumptable 004A7F16 default case
mov     eax, 0FFFFFFFFh
pop     ecx
retn
sub_4A7EE1 endp

jpt_4A7FAB dd offset loc_4A7FCD ; jump table for switch statement
dd offset loc_4A7FB2
dd offset loc_4A7FBB
dd offset loc_4A7FC4



sub_4A7F4D proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
test    eax, eax
jge     short loc_4A7F5F

def_4A7FAB:             ; jumptable 004A7FAB default case
mov     eax, 0FFFFFFFFh
pop     edx
pop     ecx
pop     ebx
retn

loc_4A7F5F:
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
mov     ebx, ds:(dword_53041F+2)[eax]
sar     ebx, 18h
test    ebx, ebx
jl      short def_4A7FAB ; jumptable 004A7FAB default case
mov     ecx, edx
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
test    ds:word_6E40B2[eax*4], 0FFFh
jz      short loc_4A7FCD ; jumptable 004A7FAB case 0
shl     ebx, 9
add     ebx, offset unk_764964
mov     eax, edx
sar     eax, 4
mov     eax, [ebx+eax*4]
mov     ecx, edx
and     ecx, 0Fh
add     ecx, ecx
shr     eax, cl
and     eax, 3
cmp     eax, 3          ; switch 4 cases
ja      short def_4A7FAB ; jumptable 004A7FAB default case
jmp     jpt_4A7FAB[eax*4] ; switch jump

loc_4A7FB2:             ; jumptable 004A7FAB case 1
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4A7FBB:             ; jumptable 004A7FAB case 2
mov     eax, 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4A7FC4:             ; jumptable 004A7FAB case 3
mov     eax, 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4A7FCD:             ; jumptable 004A7FAB case 0
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4A7F4D endp

db 8Bh, 0C0h
jpt_4A8026 dd offset loc_4A802D ; jump table for switch statement
dd offset loc_4A8032
dd offset loc_4A803A
dd offset loc_4A8042



sub_4A7FE5 proc near
push    ecx
push    edx
test    eax, eax
jl      short def_4A8026 ; jumptable 004A8026 default case
mov     edx, ds:dword_77E7D0+1
sar     edx, 18h
mov     edx, ds:(dword_53041F+2)[edx]
sar     edx, 18h
test    edx, edx
jl      short def_4A8026 ; jumptable 004A8026 default case
shl     edx, 9
mov     ecx, offset unk_764964
add     ecx, edx
mov     edx, eax
sar     edx, 4
mov     edx, [ecx+edx*4]
mov     ecx, eax
and     ecx, 0Fh
add     ecx, ecx
mov     eax, edx
shr     eax, cl
and     eax, 3
cmp     eax, 3          ; switch 4 cases
ja      short def_4A8026 ; jumptable 004A8026 default case
jmp     jpt_4A8026[eax*4] ; switch jump

loc_4A802D:             ; jumptable 004A8026 case 0
xor     eax, eax
pop     edx
pop     ecx
retn

loc_4A8032:             ; jumptable 004A8026 case 1
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4A803A:             ; jumptable 004A8026 case 2
mov     eax, 2
pop     edx
pop     ecx
retn

loc_4A8042:             ; jumptable 004A8026 case 3
mov     eax, 3
pop     edx
pop     ecx
retn

def_4A8026:             ; jumptable 004A8026 default case
mov     eax, 0FFFFFFFFh
pop     edx
pop     ecx
retn
sub_4A7FE5 endp




sub_4A8052 proc near
push    ebx
push    ecx
push    esi
push    edi
test    edx, edx
jge     short loc_4A8064

loc_4A805A:
mov     eax, 0FFFFFFFFh
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4A8064:
mov     eax, ds:(dword_53041F+2)[eax]
sar     eax, 18h
test    eax, eax
jl      short loc_4A805A
shl     eax, 9
add     eax, offset unk_764964
mov     ecx, edx
sar     ecx, 4
shl     ecx, 2
add     eax, ecx
and     edx, 0Fh
add     edx, edx
mov     cl, dl
mov     ebx, [eax]
shr     ebx, cl
and     ebx, 3
cmp     ebx, 3
jnz     short loc_4A809D
xor     eax, eax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4A809D:
inc     ebx
mov     esi, 3
shl     esi, cl
mov     ecx, esi
not     ecx
mov     esi, [eax]
and     esi, ecx
mov     [eax], esi
mov     cl, dl
shl     ebx, cl
mov     edi, esi
or      edi, ebx
mov     [eax], edi
mov     eax, 1
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4A8052 endp




sub_4A80C3 proc near
push    ecx
push    esi
push    edi
test    edx, edx
jge     short loc_4A80D3

loc_4A80CA:
mov     eax, 0FFFFFFFFh
pop     edi
pop     esi
pop     ecx
retn

loc_4A80D3:
mov     eax, ds:(dword_53041F+2)[eax]
sar     eax, 18h
test    eax, eax
jl      short loc_4A80CA
shl     eax, 9
mov     ecx, offset unk_764964
add     ecx, eax
mov     eax, edx
sar     eax, 4
shl     eax, 2
add     eax, ecx
and     edx, 0Fh
add     edx, edx
mov     cl, dl
mov     esi, 3
shl     esi, cl
mov     ecx, esi
not     ecx
mov     esi, [eax]
and     esi, ecx
mov     [eax], esi
mov     cl, dl
shl     ebx, cl
mov     edi, esi
or      edi, ebx
mov     [eax], edi
mov     eax, 1
sub_4A80C3 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4A8649

loc_4A811B:
pop     edi
pop     esi
pop     ecx
retn
; END OF FUNCTION CHUNK FOR sub_4A8649
db 8Bh, 0C0h
jpt_4A8221 dd offset def_4A8221 ; jump table for switch statement
dd offset loc_4A81D5
dd offset loc_4A81DC
dd offset loc_4A81DC
jpt_4A8330 dd offset def_4A8330 ; jump table for switch statement
dd offset loc_4A82DC
dd offset loc_4A82E3
dd offset loc_4A82E3



sub_4A8141 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ah, ds:byte_77E7D4
cmp     ah, 5
jz      short loc_4A815A
cmp     ah, 6
jnz     loc_4A7AA6

loc_4A815A:
cmp     ds:byte_77E7D4, 5
jnz     loc_4A8228
cmp     byte ptr ds:dword_77E7E8, 0
jz      loc_4A8228
xor     bh, bh
mov     byte ptr ds:dword_77E7E8, bh
push    240h
mov     ebx, ds:dword_530484
mov     ecx, 5
mov     edx, 0C8h
mov     eax, offset dword_77E7B8
call    sub_4A8349
mov     ecx, 96h
xor     edx, edx
mov     eax, ds:dword_77E7BC
div     ecx
mov     esi, eax
mov     ecx, 1
mov     edi, ds:dword_530488
jmp     short loc_4A81F6

def_4A8221:             ; jumptable 004A8221 default case, case 0
test    esi, esi
jz      short loc_4A81E1
mov     ebx, 1
sub     esi, ebx
dec     byte ptr ds:dword_77E7E8+2
sub     ds:dword_77E7BC, 96h
jmp     short loc_4A81E1

loc_4A81D5:             ; jumptable 004A8221 case 1
mov     ebx, 2
jmp     short loc_4A81E1

loc_4A81DC:             ; jumptable 004A8221 cases 2,3
mov     ebx, 3

loc_4A81E1:
mov     edx, ecx
mov     eax, 5
call    sub_4A80C3

loc_4A81ED:
inc     ecx
cmp     ecx, 800h
jnb     short loc_4A8228

loc_4A81F6:
mov     ebx, ecx
shl     ebx, 2
sub     ebx, ecx
shl     ebx, 2
mov     edx, ds:dword_6E40B4[ebx]
test    edx, edx
jz      short loc_4A8228
mov     eax, [edx]
xor     ax, ax
cmp     eax, edi
jnz     short loc_4A81ED
xor     ebx, ebx
mov     eax, ecx
call    sub_4A7F4D
cmp     eax, 3          ; switch 4 cases
ja      short def_4A8221 ; jumptable 004A8221 default case, case 0
jmp     jpt_4A8221[eax*4] ; switch jump

loc_4A8228:
cmp     ds:byte_77E7D4, 6
jnz     loc_4A7AA6
cmp     byte ptr ds:dword_77E7E8+1, 0
jz      loc_4A7AA6
xor     dh, dh
mov     byte ptr ds:dword_77E7E8+1, dh
mov     ebx, ds:dword_53048C
mov     ecx, 6
mov     edx, 1F4h
mov     eax, offset dword_77E7AC
call    sub_4A844D
push    23Eh
mov     ebx, ds:dword_530490
mov     ecx, 6
mov     edx, 0C8h
mov     eax, offset dword_77E7B0
call    sub_4A8349
push    23Fh
mov     ebx, ds:dword_530494
mov     ecx, 6
mov     edx, 0FAh
mov     eax, offset dword_77E7B4
call    sub_4A8349
mov     ecx, 0B4h
xor     edx, edx
mov     eax, ds:dword_77E7C0
div     ecx
mov     esi, eax
mov     ecx, 1
mov     edi, ds:dword_530498
jmp     short loc_4A8301

def_4A8330:             ; jumptable 004A8330 default case, case 0
test    esi, esi
jz      short loc_4A82E8
mov     ebx, 1
sub     esi, ebx
dec     byte ptr ds:dword_77E7E8+3
sub     ds:dword_77E7C0, 0B4h
jmp     short loc_4A82E8

loc_4A82DC:             ; jumptable 004A8330 case 1
mov     ebx, 2
jmp     short loc_4A82E8

loc_4A82E3:             ; jumptable 004A8330 cases 2,3
mov     ebx, 3

loc_4A82E8:
mov     edx, ecx
mov     eax, 6
call    sub_4A80C3

loc_4A82F4:
inc     ecx
cmp     ecx, 800h
jnb     loc_4A7AA6

loc_4A8301:
mov     ebx, ecx
shl     ebx, 2
sub     ebx, ecx
shl     ebx, 2
mov     eax, ds:dword_6E40B4[ebx]
test    eax, eax
jz      loc_4A7AA6
mov     eax, [eax]
xor     ax, ax
cmp     eax, edi
jnz     short loc_4A82F4
xor     ebx, ebx
mov     eax, ecx
call    sub_4A7F4D
cmp     eax, 3          ; switch 4 cases
ja      short def_4A8330 ; jumptable 004A8330 default case, case 0
jmp     jpt_4A8330[eax*4] ; switch jump
sub_4A8141 endp

db 8Bh, 0C0h
jpt_4A8411 dd offset def_4A8411 ; jump table for switch statement
dd offset loc_4A839E
dd offset loc_4A83AA
dd offset loc_4A8431



sub_4A8349 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4

push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     edi, eax
mov     [esp+18h+var_14], edx
mov     [esp+18h+var_18], ebx
mov     ebp, ecx
cmp     dword ptr [eax], 0
jnz     short loc_4A8363
xor     ecx, ecx
jmp     short loc_4A8388

loc_4A8363:
mov     eax, [esp+18h+var_14]
shr     eax, 1
mov     ecx, [edi]
cmp     eax, ecx
jb      short loc_4A8376
mov     ecx, 1
jmp     short loc_4A8388

loc_4A8376:
cmp     ecx, [esp+18h+var_14]
jnb     short loc_4A8383
mov     ecx, 2
jmp     short loc_4A8388

loc_4A8383:
mov     ecx, 3

loc_4A8388:
mov     esi, 1
mov     [esp+18h+var_10], esi
jmp     short loc_4A83DA

def_4A8411:             ; jumptable 004A8411 default case, case 0
test    ecx, ecx
jbe     short loc_4A83C6
mov     ecx, 1
jmp     short loc_4A83C6

loc_4A839E:             ; jumptable 004A8411 case 1
cmp     ecx, 1
jbe     short loc_4A83C6
mov     ecx, 2
jmp     short loc_4A83C6

loc_4A83AA:             ; jumptable 004A8411 case 2
cmp     ecx, 2
jbe     short loc_4A83C6
mov     ecx, 3
mov     eax, [esp+18h+var_14]
sub     [edi], eax
mov     eax, [esp+18h+arg_0]
add     eax, 6
call    sub_47E8B8

loc_4A83C6:
mov     ebx, ecx
mov     edx, esi
mov     eax, ebp
call    sub_4A80C3

loc_4A83D1:
inc     esi
cmp     esi, 800h
jnb     short loc_4A8418

loc_4A83DA:
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
mov     edx, ds:dword_6E40B4[eax]
test    edx, edx
jz      short loc_4A8431 ; jumptable 004A8411 case 3
mov     eax, [edx]
xor     ax, ax
cmp     eax, [esp+18h+var_18]
jnz     short loc_4A83D1
cmp     [esp+18h+var_10], 0
jz      short loc_4A83C6
xor     edx, edx
mov     [esp+18h+var_10], edx
mov     eax, esi
call    sub_4A7F4D
cmp     eax, 3          ; switch 4 cases
ja      short def_4A8411 ; jumptable 004A8411 default case, case 0
jmp     jpt_4A8411[eax*4] ; switch jump

loc_4A8418:
cmp     ecx, 3
jnb     short loc_4A8428
mov     eax, [esp+18h+arg_0]
call    sub_47E8B8
jmp     short loc_4A8431 ; jumptable 004A8411 case 3

loc_4A8428:
mov     eax, [esp+18h+arg_0]
call    sub_47EA91

loc_4A8431:             ; jumptable 004A8411 case 3
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
retn    4
sub_4A8349 endp

db 8Dh, 40h, 0
jpt_4A850D dd offset def_4A850D ; jump table for switch statement
dd offset loc_4A8499
dd offset loc_4A84A5
dd offset loc_4A855A



sub_4A844D proc near

var_2C= dword ptr -2Ch
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 20h
mov     edi, eax
mov     ebp, edx
mov     [esp+2Ch+var_10], ebx
cmp     dword ptr [eax], 0
jnz     short loc_4A8464
xor     esi, esi
jmp     short loc_4A8485

loc_4A8464:
mov     eax, ebp
shr     eax, 1
mov     ecx, [edi]
cmp     eax, ecx
jb      short loc_4A8475
mov     esi, 1
jmp     short loc_4A8485

loc_4A8475:
cmp     ebp, ecx
jbe     short loc_4A8480
mov     esi, 2
jmp     short loc_4A8485

loc_4A8480:
mov     esi, 3

loc_4A8485:
mov     ecx, 1
mov     edx, ecx
jmp     short loc_4A84C4

def_4A850D:             ; jumptable 004A850D default case, case 0
test    esi, esi
jbe     short loc_4A84BB
mov     esi, 1
jmp     short loc_4A84BB

loc_4A8499:             ; jumptable 004A850D case 1
cmp     esi, 1
jbe     short loc_4A84BB
mov     esi, 2
jmp     short loc_4A84BB

loc_4A84A5:             ; jumptable 004A850D case 2
cmp     esi, 2
jbe     short loc_4A84BB
mov     esi, 3
sub     [edi], ebp
mov     eax, 243h
call    sub_47E8B8

loc_4A84BB:
inc     ecx
cmp     ecx, 800h
jnb     short loc_4A8514

loc_4A84C4:
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     ebx, ds:dword_6E40B4[eax]
test    ebx, ebx
jz      short loc_4A8514
mov     eax, ebx
mov     ebx, [ebx]
xor     bx, bx
cmp     ebx, [esp+2Ch+var_10]
jnz     short loc_4A84BB
mov     ebx, [eax]
and     ebx, 0FFFFh
shr     ebx, 8
mov     [esp+ebx*4+2Ch+var_2C], ecx
cmp     dword ptr [eax], 40400h
jnz     short loc_4A84BB
test    edx, edx
jz      short loc_4A84BB
xor     edx, edx
mov     eax, ecx
call    sub_4A7F4D
cmp     eax, 3          ; switch 4 cases
ja      short def_4A850D ; jumptable 004A850D default case, case 0
jmp     jpt_4A850D[eax*4] ; switch jump

loc_4A8514:
xor     ecx, ecx

loc_4A8516:
mov     eax, esi
shl     eax, 3
sub     eax, esi
lea     ebx, [eax+ecx]
mov     bl, ds:byte_53049C[ebx]
and     ebx, 0FFh
mov     edx, [esp+ecx*4+2Ch+var_2C]
mov     eax, 6
call    sub_4A80C3
inc     ecx
cmp     ecx, 7
jb      short loc_4A8516
cmp     esi, 3
jnb     short loc_4A8550
mov     eax, 23Dh
call    sub_47E8B8
jmp     short loc_4A855A ; jumptable 004A850D case 3

loc_4A8550:
mov     eax, 23Dh
call    sub_47EA91

loc_4A855A:             ; jumptable 004A850D case 3
add     esp, 20h
pop     ebp
pop     edi
pop     esi
retn
sub_4A844D endp




sub_4A8561 proc near
push    ebx
push    edx
mov     ah, ds:byte_77E7D4
cmp     ah, 5
jz      short loc_4A8577
cmp     ah, 6
jnz     loc_4A85F3

loc_4A8577:
cmp     ds:byte_77E7D4, 5
jnz     short loc_4A85A5
mov     edx, ds:dword_5304B8
mov     eax, offset dword_77E7B8
call    sub_4A85F6
mov     edx, ds:dword_5304BC
mov     ebx, 8FFF0000h
mov     eax, (offset dword_77E7E8+2)
call    sub_4A8649

loc_4A85A5:
cmp     ds:byte_77E7D4, 6
jnz     short loc_4A85F3
mov     edx, ds:dword_5304C0
mov     eax, offset dword_77E7AC
call    sub_4A85F6
mov     edx, ds:dword_5304C4
mov     eax, offset dword_77E7B0
call    sub_4A85F6
mov     edx, ds:dword_5304C8
mov     eax, offset dword_77E7B4
call    sub_4A85F6
mov     edx, ds:dword_5304CC
mov     ebx, 8FFF0000h
mov     eax, (offset dword_77E7E8+3)
call    sub_4A8649

loc_4A85F3:
pop     edx
pop     ebx
retn
sub_4A8561 endp




sub_4A85F6 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ebx, edx
mov     edx, 1
jmp     short loc_4A860D

loc_4A8604:
inc     edx
cmp     edx, 800h
jnb     short loc_4A8645

loc_4A860D:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, ds:dword_6E40B4[eax]
test    ecx, ecx
jz      short loc_4A8645
mov     ecx, [ecx]
xor     cx, cx
cmp     ecx, ebx
jnz     short loc_4A8604
cmp     ds:word_6E40B2[eax], 0
jnz     short loc_4A8604
mov     eax, edx
call    sub_4A7FE5
test    eax, eax
jle     short loc_4A8604
mov     dword ptr [esi], 0

loc_4A8645:
pop     esi
pop     ecx
pop     ebx
retn
sub_4A85F6 endp




sub_4A8649 proc near

; FUNCTION CHUNK AT 004A811B SIZE 00000004 BYTES

push    ecx
push    esi
push    edi
mov     ecx, eax
mov     edi, edx
mov     esi, ebx
mov     byte ptr [eax], 0
mov     edx, 1
jmp     short loc_4A8669

loc_4A865C:
inc     edx
cmp     edx, 800h
jnb     loc_4A811B

loc_4A8669:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ebx, ds:dword_6E40B4[eax]
test    ebx, ebx
jz      loc_4A811B
mov     eax, [ebx]
xor     ax, ax
cmp     eax, edi
jz      short loc_4A868E
cmp     eax, esi
jnz     short loc_4A865C

loc_4A868E:
mov     eax, edx
shl     eax, 2
sub     eax, edx
cmp     ds:word_6E40B2[eax*4], 0
jnz     short loc_4A865C
inc     byte ptr [ecx]
jmp     short loc_4A865C
sub_4A8649 endp




sub_4A86A4 proc near
push    edx
xor     edx, edx
mov     ds:word_55CCF0, dx
xor     edx, edx
mov     ds:dword_55CCF4, edx
pop     edx
retn
sub_4A86A4 endp




sub_4A86B8 proc near
push    edx
mov     ds:word_55CCF2, ax
mov     ax, ds:word_5708DE
mov     ds:word_55CCFA, ax
mov     ax, ds:word_5708DA
mov     ds:word_55CCF8, ax
mov     edx, dword ptr ds:word_55CCF0+1
sar     edx, 18h
mov     eax, offset word_55CCF0
call    ds:funcs_4A86E5[edx*4]
pop     edx
retn
sub_4A86B8 endp




sub_4A86EE proc near
push    ebx
push    edx
mov     edx, eax
mov     word ptr [eax], 1
mov     bx, [eax+2]
test    bx, bx
jz      short loc_4A871D
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+5], 0
mov     word ptr [eax+6], 0
call    sub_4A8C93
mov     eax, edx
call    sub_4A8738
pop     edx
pop     ebx
retn

loc_4A871D:
mov     byte ptr [eax+4], 2
mov     byte ptr [eax+5], 0
mov     [eax+6], bx
call    sub_4A8C93
mov     eax, edx
call    sub_4A8738
pop     edx
pop     ebx
retn
sub_4A86EE endp




sub_4A8738 proc near
push    edx
mov     edx, [eax+2]
sar     edx, 18h
call    ds:funcs_4A873F[edx*4]
xor     eax, eax
pop     edx
retn
sub_4A8738 endp




sub_4A874A proc near
mov     word ptr [eax], 0
mov     dword ptr [eax+4], 0
mov     byte ptr [eax+4], 0
mov     eax, 1
retn
sub_4A874A endp




sub_4A8760 proc near

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
mov     al, [eax+6]
cmp     al, 3
jb      short loc_4A879B
jbe     loc_4A8AA5
cmp     al, 0Ah
jb      short loc_4A878E
jbe     loc_4A8B79
cmp     al, 0Bh
jz      loc_4A8C00
jmp     loc_4A8C17

loc_4A878E:
cmp     al, 4
jz      loc_4A8B67
jmp     loc_4A8C17

loc_4A879B:
cmp     al, 1
jb      short loc_4A87AA
jbe     loc_4A88F5
jmp     loc_4A8A16

loc_4A87AA:
test    al, al
jnz     loc_4A8C17
call    sub_4A0E35
mov     eax, [esp+24h+var_24]
cmp     byte ptr [eax+4], 1
jnz     short loc_4A87CD
mov     ebx, 0FFFFFFFFh
mov     edx, ds:off_52FCDD
jmp     short loc_4A87D8

loc_4A87CD:
mov     ebx, 0FFFFFFFFh
mov     edx, ds:off_52FD31

loc_4A87D8:
xor     eax, eax
call    sub_4A0CDD
call    sub_4A8C93
xor     ebp, ebp
mov     [esp+24h+var_20], ebp
jmp     short loc_4A87FE

loc_4A87EC:
mov     edx, [esp+24h+var_20]
inc     edx
mov     [esp+24h+var_20], edx
cmp     edx, 2
jge     loc_4A88B7

loc_4A87FE:
xor     esi, esi
mov     [esp+24h+var_1C], esi
jmp     short loc_4A881C

loc_4A8806:
mov     byte ptr [ecx+109h], 1
inc     ebp

loc_4A880E:
mov     edi, [esp+24h+var_1C]
inc     edi
mov     [esp+24h+var_1C], edi
cmp     edi, 5
jge     short loc_4A87EC

loc_4A881C:
mov     ecx, [esp+24h+var_20]
mov     eax, ecx
shl     eax, 2
add     eax, ecx
mov     edi, [esp+24h+var_1C]
add     edi, eax
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 7
mov     ecx, offset unk_55BDF0
add     ecx, eax
mov     al, byte ptr [esp+24h+var_20]
add     al, 30h ; '0'
mov     ds:byte_53052A, al
mov     al, byte ptr [esp+24h+var_1C]
add     al, 30h ; '0'
mov     ds:byte_53052B, al
mov     ebx, 180h
mov     edx, ecx
mov     eax, offset unk_530525
call    sub_42C39B
test    eax, eax
jnz     short loc_4A8806
movzx   esi, byte ptr [ecx+100h]
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, esi
mov     edx, offset unk_530085
add     edx, eax
mov     eax, ds:off_530383[edi*4]
mov     ebx, 0Dh
call    memcpy_
lea     edx, [ecx+101h]
mov     eax, ds:off_5303B3[edi*4]
mov     ebx, 8
call    memcpy_
mov     byte ptr [ecx+109h], 0
jmp     loc_4A880E

loc_4A88B7:
mov     eax, [esp+24h+var_24]
cmp     byte ptr [eax+4], 2
jnz     short loc_4A88CE
cmp     ebp, 0Ah
jnz     short loc_4A88CE
mov     byte ptr [eax+5], 1
jmp     loc_4A8A81

loc_4A88CE:
mov     edx, ds:off_52FD11
mov     ebx, 0FFFFFFFFh
mov     eax, 1
call    sub_4A0CDD
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+6]

loc_4A88E9:
mov     dword ptr [eax+10h], 1Eh
jmp     loc_4A8C17

loc_4A88F5:
test    byte ptr ds:dword_55BD7C+3, 60h
jz      loc_4A89FD
mov     al, byte ptr ds:dword_55BD7C
mov     ds:byte_55CD04, al
cmp     al, 0Ah
jnz     short loc_4A8933
mov     eax, [esp+24h+var_24]
mov     byte ptr [eax+4], 3
mov     word ptr [eax+6], 0

loc_4A891D:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h

loc_4A8929:
call    sub_4D89E4
jmp     loc_4A8C17

loc_4A8933:
xor     edx, edx
mov     dl, al
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 7
mov     ecx, offset unk_55BDF0
add     ecx, eax
mov     eax, [esp+24h+var_24]
cmp     byte ptr [eax+4], 2
jnz     short loc_4A895A
cmp     byte ptr [ecx+109h], 0
jz      short loc_4A896C

loc_4A895A:
mov     eax, [esp+24h+var_24]
cmp     byte ptr [eax+4], 1
jnz     short loc_4A891D
cmp     byte ptr [ecx+109h], 3
jnb     short loc_4A891D

loc_4A896C:
xor     edx, edx
mov     dl, [ecx+100h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
mov     edx, offset unk_530085
add     edx, eax
mov     eax, ds:off_5303AB
mov     ebx, 0Dh
call    memcpy_
lea     edx, [ecx+101h]
mov     eax, ds:off_5303DB
mov     ebx, 8
call    memcpy_
mov     edx, ds:off_52FD15
mov     ebx, 0FFFFFFFFh
mov     eax, 1
call    sub_4A0CDD
mov     eax, [esp+24h+var_24]
cmp     byte ptr [eax+4], 1
jnz     short loc_4A89D1
mov     edx, ds:off_52FD19
jmp     short loc_4A89D7

loc_4A89D1:
mov     edx, ds:off_52FD3D

loc_4A89D7:
mov     ebx, 0FFFFFFFFh
mov     eax, 2
call    sub_4A0CDD
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+6]
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
jmp     loc_4A8929

loc_4A89FD:
mov     eax, [esp+24h+var_24]
mov     edx, [eax+10h]
test    edx, edx
jz      loc_4A88E9
lea     ecx, [edx-1]
mov     [eax+10h], ecx
jmp     loc_4A8C17

loc_4A8A16:
test    byte ptr ds:dword_55BD7C+3, 40h
jz      short loc_4A8A8C
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
jnz     short loc_4A8A7E
mov     eax, [esp+24h+var_24]
mov     ch, [eax+4]
cmp     ch, 1
jnz     short loc_4A8A53
mov     edx, ds:off_52FD1D
mov     ebx, 0FFFFFFFFh
mov     eax, 2
call    sub_4A0CDD
mov     eax, [esp+24h+var_24]
add     [eax+6], ch
jmp     short loc_4A8A6F

loc_4A8A53:
mov     edx, ds:off_52FD41
mov     ebx, 0FFFFFFFFh
mov     eax, 2
call    sub_4A0CDD
mov     eax, [esp+24h+var_24]
mov     byte ptr [eax+6], 0Ah

loc_4A8A6F:
mov     eax, [esp+24h+var_24]
mov     dword ptr [eax+0Ch], 0Fh
jmp     loc_4A8C17

loc_4A8A7E:
mov     eax, [esp+24h+var_24]

loc_4A8A81:
mov     word ptr [eax+6], 0
jmp     loc_4A8C17

loc_4A8A8C:
mov     eax, [esp+24h+var_24]
mov     edi, [eax+10h]
test    edi, edi
jz      loc_4A88E9
lea     ebp, [edi-1]
mov     [eax+10h], ebp
jmp     loc_4A8C17

loc_4A8AA5:
mov     eax, [esp+24h+var_24]
mov     ebx, [eax+0Ch]
dec     ebx
mov     [eax+0Ch], ebx
jnz     loc_4A8C17
call    sub_42AE02
call    sub_42B162
xor     ecx, ecx
mov     cl, ds:byte_55CD04
mov     ebx, 5
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
idiv    ebx
add     eax, 30h ; '0'
mov     ds:byte_53052A, al
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
idiv    ebx
add     edx, 30h ; '0'
mov     ds:byte_53052B, dl
mov     ebx, 1F00h
mov     edx, offset unk_75164C
mov     eax, offset unk_530525
call    sub_42C3C8
xor     edx, edx
mov     dl, ds:byte_75174C
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
mov     edx, offset unk_530085
add     edx, eax
mov     eax, ds:off_5303AB
mov     ebx, 0Dh
call    memcpy_
mov     edx, offset unk_75164C
add     edx, 101h
mov     eax, ds:off_5303DB
mov     ebx, 8
call    memcpy_
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+6]
mov     edx, ds:off_52FD21

loc_4A8B53:
mov     ebx, 0FFFFFFFFh
mov     eax, 2
call    sub_4A0CDD
jmp     loc_4A8C17

loc_4A8B67:
test    byte ptr ds:dword_55BD7C+2, 8
jz      loc_4A8C17
jmp     loc_4A8A7E

loc_4A8B79:
mov     eax, [esp+24h+var_24]
mov     edx, [eax+0Ch]
dec     edx
mov     [eax+0Ch], edx
jnz     loc_4A8C17
xor     ecx, ecx
mov     cl, ds:byte_55CD04
mov     ebx, 5
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
idiv    ebx
add     eax, 30h ; '0'
mov     ds:byte_53052A, al
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
idiv    ebx
add     edx, 30h ; '0'
mov     ds:byte_53052B, dl
mov     ebx, 1F00h
mov     edx, offset unk_75164C
mov     eax, offset unk_530525
call    sub_42C39B
test    eax, eax
jnz     short loc_4A8BE2
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+6]
mov     edx, ds:off_52FD45
jmp     loc_4A8B53

loc_4A8BE2:
mov     edx, ds:off_52FD49
mov     ebx, 0FFFFFFFFh
mov     eax, 2
call    sub_4A0CDD
mov     eax, [esp+24h+var_24]
mov     byte ptr [eax+6], 4
jmp     short loc_4A8C17

loc_4A8C00:
test    byte ptr ds:dword_55BD7C+3, 80h
jz      short loc_4A8C17
mov     eax, [esp+24h+var_24]
mov     byte ptr [eax+4], 3
or      ds:byte_77E806, 1

loc_4A8C17:
mov     eax, 1
add     esp, 0Ch
pop     ebp

loc_4A8C20:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A8760 endp




sub_4A8C26 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
test    al, al
jbe     short loc_4A8C38
cmp     al, 1
jz      short loc_4A8C77
jmp     short loc_4A8C8A

loc_4A8C38:
call    sub_4A0E35
cmp     byte ptr [ecx+4], 1
jnz     short loc_4A8C4B
mov     edx, ds:off_52FCDD
jmp     short loc_4A8C51

loc_4A8C4B:
mov     edx, ds:off_52FD31

loc_4A8C51:
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
mov     edx, ds:off_52FCC9
mov     ebx, 0FFFFFFFFh
mov     eax, 1
call    sub_4A0CDD
inc     byte ptr [ecx+6]
jmp     short loc_4A8C8A

loc_4A8C77:
test    byte ptr ds:dword_55BD7C+2, 8
jz      short loc_4A8C8A
mov     byte ptr [ecx+4], 3
mov     word ptr [ecx+6], 0

loc_4A8C8A:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn
sub_4A8C26 endp




sub_4A8C93 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
xor     esi, esi

loc_4A8C9A:
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 7
mov     ecx, offset unk_55BDF0
add     ecx, eax
mov     edx, offset unk_5304D0
mov     eax, ecx
call    sub_42AD96
mov     byte ptr [ecx+109h], 0
mov     byte ptr [ecx+100h], 0
movzx   edi, byte ptr [ecx+100h]
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 2
add     eax, edi
mov     edx, offset unk_530085
add     edx, eax
mov     eax, ds:off_530383[esi*4]
mov     ebx, 0Dh
call    memcpy_
add     ecx, 101h
mov     ebx, 8
mov     edx, offset unk_5302E7
mov     eax, ecx
call    memcpy_
mov     eax, ds:off_5303B3[esi*4]
mov     ebx, 8
mov     edx, ecx
call    memcpy_
inc     esi
cmp     esi, 0Ah
jl      loc_4A8C9A
jmp     loc_4A8C20
sub_4A8C93 endp




sub_4A8D29 proc near
push    ebx
push    ecx
push    edx
mov     ecx, 1Eh
xor     edx, edx
mov     eax, ds:dword_77E790
div     ecx
mov     ebx, eax
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     al, ds:byte_530220[edx]
mov     ds:byte_53021F, al
mov     ds:byte_55BD85, dl
mov     ecx, 3Ch ; '<'
xor     edx, edx
mov     eax, ebx
div     ecx
mov     eax, edx
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     ecx, eax
mov     al, ds:byte_530220[eax]
mov     ds:byte_53021E, al
mov     ds:byte_55BD84, cl
mov     ecx, 708h
xor     edx, edx
mov     eax, ds:dword_77E790
div     ecx
mov     ebx, eax
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     al, ds:byte_530220[edx]
mov     ds:byte_53021C, al
mov     ds:byte_55BD83, dl
mov     ecx, 3Ch ; '<'
xor     edx, edx
mov     eax, ebx
div     ecx
mov     eax, edx
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     ecx, eax
mov     al, ds:byte_530220[eax]
mov     ds:byte_53021B, al
mov     ds:byte_55BD82, cl
mov     ecx, 1A5E0h
xor     edx, edx
mov     eax, ds:dword_77E790
div     ecx
mov     ebx, eax
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     al, ds:byte_530220[edx]
mov     ds:byte_530219, al
mov     ds:byte_55BD81, dl
mov     ecx, 64h ; 'd'
xor     edx, edx
mov     eax, ebx
div     ecx
mov     eax, edx
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     ecx, eax
mov     al, ds:byte_530220[eax]
mov     ds:byte_530218, al
mov     ds:byte_55BD80, cl
pop     edx
pop     ecx
pop     ebx
retn
sub_4A8D29 endp




sub_4A8E29 proc near
push    ebx
push    ecx
push    edx
mov     ecx, 1Eh
xor     edx, edx
mov     eax, ds:dword_77E798
div     ecx
mov     ecx, eax
mov     ebx, 0Ah
xor     edx, edx
div     ebx
mov     al, ds:byte_530220[edx]
mov     ds:byte_5302E6, al
mov     ebx, 3Ch ; '<'
xor     edx, edx
mov     eax, ecx
div     ebx
mov     eax, edx
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     al, ds:byte_530220[eax]
mov     ds:byte_5302E5, al
mov     ecx, 708h
xor     edx, edx
mov     eax, ds:dword_77E798
div     ecx
mov     ecx, eax
mov     ebx, 0Ah
xor     edx, edx
div     ebx
mov     al, ds:byte_530220[edx]
mov     ds:byte_5302E3, al
mov     ebx, 3Ch ; '<'
xor     edx, edx
mov     eax, ecx
div     ebx
mov     eax, edx
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     al, ds:byte_530220[eax]
mov     ds:byte_5302E2, al
mov     ecx, 1A5E0h
xor     edx, edx
mov     eax, ds:dword_77E798
div     ecx
mov     ecx, eax
mov     ebx, 0Ah
xor     edx, edx
div     ebx
mov     al, ds:byte_530220[edx]
mov     ds:byte_5302E0, al
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, ecx
div     ebx
mov     eax, edx
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     al, ds:byte_530220[eax]
mov     ds:byte_5302DF, al
pop     edx
pop     ecx
pop     ebx
retn
sub_4A8E29 endp




sub_4A8EFF proc near
xor     eax, eax
mov     al, ds:byte_55CD04
mov     ax, ds:word_530512[eax*2]
mov     ds:word_5304F0, ax
xor     eax, eax
mov     al, ds:byte_55BD85
mov     ax, ds:word_530510[eax*2]
mov     ds:word_530502, ax
xor     eax, eax
mov     al, ds:byte_55BD84
mov     ax, ds:word_530510[eax*2]
mov     ds:word_530500, ax
xor     eax, eax
mov     al, ds:byte_55BD83
mov     ax, ds:word_530510[eax*2]
mov     ds:word_5304FC, ax
xor     eax, eax
mov     al, ds:byte_55BD82
mov     ax, ds:word_530510[eax*2]
mov     ds:word_5304FA, ax
xor     eax, eax
mov     al, ds:byte_55BD81
mov     ax, ds:word_530510[eax*2]
mov     ds:word_5304F6, ax
xor     eax, eax
mov     al, ds:byte_55BD80
mov     ax, ds:word_530510[eax*2]
mov     ds:word_5304F4, ax
retn
sub_4A8EFF endp




sub_4A8F93 proc near
push    ecx
push    edx
mov     ds:dword_77E754, offset byte_6DD9CC

loc_4A8F9F:
mov     ecx, ds:dword_77E754
cmp     ecx, (offset dword_6E23C9+3)
jnb     short loc_4A8FE6
mov     eax, ecx
xor     edx, edx
mov     dl, [ecx+6]
movsx   ecx, byte ptr [ecx]
and     edx, ecx
test    dl, 1
jz      short loc_4A8FDA
xor     edx, edx
mov     dl, [eax+2]
mov     ecx, edx
shl     ecx, 2
mov     edx, ds:dword_77E6F0
add     edx, ecx
xor     ecx, ecx
mov     cl, [eax+4]
mov     edx, [edx]
call    dword ptr [edx+ecx*4]

loc_4A8FDA:
add     ds:dword_77E754, 4A0h
jmp     short loc_4A8F9F

loc_4A8FE6:
pop     edx
pop     ecx
retn
sub_4A8F93 endp




sub_4A8FE9 proc near
push    ecx
push    edx
mov     ds:dword_77E750, offset unk_6E23DC

loc_4A8FF5:
mov     ecx, ds:dword_77E750
cmp     ecx, (offset dword_6E40AA+2)
jnb     short loc_4A8FE6
mov     eax, ecx
xor     edx, edx
mov     dl, [ecx+6]
movsx   ecx, byte ptr [ecx]
and     edx, ecx
test    dl, 1
jz      short loc_4A9030
xor     edx, edx
mov     dl, [eax+2]
mov     ecx, edx
shl     ecx, 2
mov     edx, ds:dword_77E6D4
add     edx, ecx
xor     ecx, ecx
mov     cl, [eax+4]
mov     edx, [edx]
call    dword ptr [edx+ecx*4]

loc_4A9030:
add     ds:dword_77E750, 734h
jmp     short loc_4A8FF5
sub_4A8FE9 endp




sub_4A903C proc near
push    ecx
push    edx
mov     ds:dword_77E734, offset byte_6DC7FC

loc_4A9048:
mov     ecx, ds:dword_77E734
cmp     ecx, offset dword_6DD9BC
jnb     short loc_4A8FE6
mov     eax, ecx
xor     ecx, ecx
mov     cl, [eax+6]
movsx   edx, byte ptr [eax]
and     edx, ecx
test    dl, 1
jz      short loc_4A9073
xor     edx, edx
mov     dl, [eax+2]
call    ds:funcs_4A90CA[edx*4]

loc_4A9073:
add     ds:dword_77E734, 11Ch
jmp     short loc_4A9048
sub_4A903C endp




sub_4A907F proc near
push    ecx
push    edx
mov     ds:dword_77E734, offset byte_57098C

loc_4A908B:
mov     ecx, ds:dword_77E734
cmp     ecx, offset unk_572D0C
jnb     loc_4A8FE6
mov     eax, ecx
xor     edx, edx
mov     dl, [ecx+6]
movsx   ecx, byte ptr [ecx]
and     edx, ecx
test    dl, 1
jz      short loc_4A90D1
mov     dl, [eax+2]
cmp     dl, 80h
jnb     short loc_4A90C5
xor     ecx, ecx
mov     cl, dl
mov     edx, ds:dword_77E6E0
call    dword ptr [edx+ecx*4]
jmp     short loc_4A90D1

loc_4A90C5:
xor     edx, edx
mov     dl, [eax+2]
call    ds:funcs_4A90CA[edx*4]

loc_4A90D1:
add     ds:dword_77E734, 11Ch
jmp     short loc_4A908B
sub_4A907F endp




sub_4A90DD proc near
push    ecx
push    edx
mov     ds:dword_77E724, offset unk_572D5C

loc_4A90E9:
mov     ecx, ds:dword_77E724
cmp     ecx, offset dword_57435C
jnb     loc_4A8FE6
mov     eax, ecx
xor     ecx, ecx
mov     cl, [eax+6]
movsx   edx, byte ptr [eax]
and     edx, ecx
test    dl, 1
jz      short loc_4A9125
cmp     byte ptr [eax+2], 80h
jnb     short loc_4A9125
xor     edx, edx
mov     dl, [eax+2]
mov     ecx, edx
shl     ecx, 2
mov     edx, ds:dword_77E6EC
call    dword ptr [ecx+edx]

loc_4A9125:
add     ds:dword_77E724, 58h ; 'X'
jmp     short loc_4A90E9
sub_4A90DD endp




sub_4A912E proc near
push    ecx
push    edx
mov     ds:dword_77E724, offset unk_572D5C

loc_4A913A:
mov     ecx, ds:dword_77E724
cmp     ecx, offset dword_57435C
jnb     loc_4A8FE6
mov     eax, ecx
xor     ecx, ecx
mov     cl, [eax+6]
movsx   edx, byte ptr [eax]
and     edx, ecx
test    dl, 1
jz      short loc_4A916F
cmp     byte ptr [eax+2], 80h
jb      short loc_4A916F
xor     edx, edx
mov     dl, [eax+2]
call    ds:dword_550D4C[edx*4]

loc_4A916F:
add     ds:dword_77E724, 58h ; 'X'
jmp     short loc_4A913A
sub_4A912E endp




sub_4A9178 proc near
push    ecx
push    edx
mov     ds:dword_77E748, offset unk_56FA74

loc_4A9184:
mov     ecx, ds:dword_77E748
cmp     ecx, offset unk_56FCB4
jnb     loc_4A8FE6
mov     eax, ecx
xor     ecx, ecx
mov     cl, [eax+6]
movsx   edx, byte ptr [eax]
and     edx, ecx
test    dl, 1
jz      short loc_4A91BA
xor     edx, edx
mov     dl, [eax+2]
mov     ecx, edx
shl     ecx, 2
mov     edx, ds:dword_77E6F4
call    dword ptr [ecx+edx]

loc_4A91BA:
add     ds:dword_77E748, 24h ; '$'
jmp     short loc_4A9184
sub_4A9178 endp




sub_4A91C3 proc near
push    ecx
push    edx
mov     ds:dword_77E74C, offset unk_56FCB4

loc_4A91CF:
mov     ecx, ds:dword_77E74C
cmp     ecx, offset unk_5708B4
jnb     loc_4A8FE6
mov     eax, ecx
xor     ecx, ecx
mov     cl, [eax+6]
movsx   edx, byte ptr [eax]
and     edx, ecx
test    dl, 1
jz      short loc_4A9205
xor     edx, edx
mov     dl, [eax+2]
mov     ecx, edx
shl     ecx, 2
mov     edx, ds:dword_77E6D8
call    dword ptr [ecx+edx]

loc_4A9205:
add     ds:dword_77E74C, 60h ; '`'
jmp     short loc_4A91CF
sub_4A91C3 endp




sub_4A920E proc near
push    edx
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4A921D
pop     edx
retn
sub_4A920E endp




sub_4A921D proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     ebx, edx
mov     esi, offset unk_75164C
mov     ds:dword_77E76C, 80000000h
mov     eax, dword ptr ds:unk_77E803
sar     eax, 18h
test    al, 80h
jz      short loc_4A924A
mov     byte ptr [ecx], 0
mov     byte ptr [ecx+6], 0
jmp     short loc_4A926B

loc_4A924A:
mov     byte ptr [ecx], 3
mov     byte ptr [ecx+6], 3
mov     word ptr [ecx+2], 0
mov     word ptr [ecx+4], 0
mov     dword ptr [ecx+0Ch], 0
mov     dword ptr [ecx+8], 0

loc_4A926B:
mov     byte ptr [ecx+0BDh], 0
mov     byte ptr [ecx+75h], 0
mov     al, [ecx+75h]
mov     [ecx+74h], al
mov     byte ptr [ecx+77h], 0
mov     al, [ecx+77h]
mov     [ecx+76h], al
mov     dword ptr [ecx+78h], offset unk_53054C
mov     dword ptr [ecx+184h], 0
mov     byte ptr [ecx+110h], 0
mov     byte ptr [ecx+111h], 0
mov     byte ptr [ecx+549h], 0
cmp     ecx, offset byte_5F8364
jnz     short loc_4A92BA
mov     byte ptr [ecx+2], 0
jmp     short loc_4A92BE

loc_4A92BA:
mov     byte ptr [ecx+2], 1

loc_4A92BE:
mov     edx, ds:dword_77E7D5
sar     edx, 18h
mov     eax, ecx
call    sub_4B58B2
lea     edi, [ecx+574h]
lea     eax, [ecx+554h]
test    ebx, ebx
jnz     short loc_4A935B
mov     word ptr [ecx+0B0h], 50h ; 'P'
mov     dx, [ecx+0B0h]
mov     [ecx+6Eh], dx
mov     byte ptr [ecx+16Ah], 0
mov     byte ptr [ecx+16Bh], 0
mov     byte ptr [ecx+16Ch], 0
mov     byte ptr [ecx+170h], 0
mov     byte ptr [ecx+172h], 0
mov     byte ptr [ecx+171h], 0
mov     byte ptr [ecx+173h], 1
mov     byte ptr [ecx+54Ch], 0
mov     byte ptr [ecx+54Eh], 0
mov     [ecx+550h], ebx
lea     edx, [ecx+558h]
call    sub_4EECF9
lea     edx, [ecx+5B0h]
mov     eax, edi
call    sub_4EECF9
mov     eax, ecx
call    sub_4EE57D
jmp     loc_4A9432

loc_4A935B:
mov     dx, [esi+1CEh]
mov     [ecx+0B0h], dx
mov     [ecx+6Eh], dx
mov     dl, [esi+1D4h]
mov     [ecx+16Ah], dl
mov     dl, [esi+1D5h]
mov     [ecx+16Bh], dl
mov     dl, [esi+1D6h]
mov     [ecx+16Ch], dl
mov     dl, [esi+1D8h]
mov     [ecx+170h], dl
mov     dl, [esi+1D9h]
mov     [ecx+171h], dl
mov     dl, [esi+1DAh]
mov     [ecx+172h], dl
mov     dl, [esi+1DBh]
mov     [ecx+173h], dl
mov     dl, [esi+1DCh]
mov     [ecx+54Ch], dl
mov     dl, [esi+1DEh]
mov     [ecx+54Eh], dl
mov     dl, [esi+1DFh]
mov     [ecx+54Fh], dl
mov     edx, [esi+208h]
mov     [ecx+550h], edx
lea     ebp, [esi+20Ch]
mov     ebx, 1
mov     edx, eax
mov     eax, ebp
call    sub_4EECEF
lea     eax, [esi+1C80h]
mov     ebx, 4
mov     edx, edi
call    sub_4EECEF
lea     edx, [ecx+5F4h]
lea     eax, [esi+22Ch]
mov     ebx, 8
call    sub_4EECEF
call    sub_4EE5BE

loc_4A9432:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4A921D endp




sub_4A9438 proc near
push    ebx
push    edx
push    esi
push    edi
xor     eax, eax
mov     al, ds:byte_5F836A
mov     edx, dword ptr ds:unk_5F8361
sar     edx, 18h
and     eax, edx
test    al, 1
jz      loc_4A952D
mov     al, ds:byte_5F8421
and     al, 0EFh
mov     ah, ds:byte_5F8421
test    ah, 40h
jnz     loc_4A94E5
test    ah, 20h
jnz     short loc_4A94A6
mov     ax, ds:word_5708DA
mov     word ptr ds:dword_5F8480, ax
mov     ax, ds:word_5708DE
mov     word ptr ds:dword_5F8480+2, ax
mov     ax, ds:word_5708E0
mov     word ptr ds:dword_5F8484, ax
mov     ax, ds:word_5708E2
mov     word ptr ds:dword_5F8484+2, ax
jmp     loc_4A9523

loc_4A94A6:
mov     dx, ds:word_57096A
mov     word ptr ds:dword_5F8480, dx
mov     dx, ds:word_57096E
mov     word ptr ds:dword_5F8480+2, dx
mov     dx, ds:word_570970
mov     word ptr ds:dword_5F8484, dx
mov     dx, ds:word_570972
mov     word ptr ds:dword_5F8484+2, dx
test    ah, 10h
jz      short loc_4A9523
jmp     short loc_4A94F8

loc_4A94E5:
xor     edx, edx
mov     ds:dword_5F8480, edx
mov     ds:dword_5F8484, edx
test    ah, 10h
jz      short loc_4A9523

loc_4A94F8:
mov     edi, (offset dword_5F8376+2)
mov     esi, (offset dword_5F889A+2)
movsd
movsd
mov     edi, offset dword_5F8380
mov     esi, offset dword_5F888C
movsd
movsd
movsd
movsd
mov     edi, offset dword_5F83B8
mov     esi, offset dword_5F88A4
movsd
movsd
mov     ds:byte_5F8421, al

loc_4A9523:
mov     eax, offset byte_5F8364
call    sub_4A9661

loc_4A952D:
mov     edx, ds:dword_5F8A55
sar     edx, 18h
xor     eax, eax
mov     al, ds:byte_5F8A5E
and     eax, edx
test    al, 1
jz      short loc_4A9596
test    ds:byte_5F8B15, 40h
jnz     short loc_4A957E
mov     ax, ds:word_572D32
mov     word ptr ds:dword_5F8B74, ax
mov     ax, ds:word_572D36
mov     word ptr ds:dword_5F8B74+2, ax
mov     ax, ds:word_572D38
mov     word ptr ds:dword_5F8B78, ax
mov     ax, ds:word_572D3A
mov     word ptr ds:dword_5F8B78+2, ax
jmp     short loc_4A958C

loc_4A957E:
xor     ebx, ebx
mov     ds:dword_5F8B74, ebx
mov     ds:dword_5F8B78, ebx

loc_4A958C:
mov     eax, (offset dword_5F8A55+3)
call    sub_4A9661

loc_4A9596:
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4A9438 endp




sub_4A959B proc near
push    ebx
push    ecx
push    edx
xor     eax, eax
mov     al, ds:byte_5F836A
mov     edx, dword ptr ds:unk_5F8361
sar     edx, 18h
and     eax, edx
test    al, 1
jz      short loc_4A95FC
mov     eax, offset byte_5F8364
call    sub_4A9714
cmp     ds:byte_5F88AD, 0
jnz     short loc_4A95FC
cmp     ds:byte_5F8474, 0
jnz     short loc_4A95FC
push    0
push    offset unk_800000
push    2000000h
push    offset unk_5F84EC
xor     eax, eax
mov     al, ds:byte_5F8365
push    eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 20h ; ' '
mov     eax, offset unk_5F884C
call    sub_4E01FC

loc_4A95FC:
mov     edx, ds:dword_5F8A55
sar     edx, 18h
xor     eax, eax
mov     al, ds:byte_5F8A5E
and     eax, edx
test    al, 1
jz      short loc_4A965D
mov     eax, (offset dword_5F8A55+3)
call    sub_4A9714
cmp     ds:byte_5F8FA1, 0
jnz     short loc_4A965D
cmp     ds:byte_5F8B68, 0
jnz     short loc_4A965D
push    0
push    offset unk_800000
push    2000000h
push    offset unk_5F8BE0
xor     eax, eax
mov     al, ds:byte_5F8A59
push    eax
mov     ecx, 2000h
xor     ebx, ebx
mov     edx, 20h ; ' '
mov     eax, offset unk_5F8F40
call    sub_4E01FC

loc_4A965D:
pop     edx
pop     ecx
pop     ebx
retn
sub_4A959B endp




sub_4A9661 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4A966C[edx*4]
mov     eax, esi
call    sub_4B61E1
test    eax, eax
jnz     short loc_4A9696
mov     al, [esi+0ACh]
mov     [esi+104h], al
mov     al, [esi+0A4h]
mov     [esi+100h], al

loc_4A9696:
mov     al, [esi+104h]
cmp     al, [esi+105h]
jz      short loc_4A96D0
xor     ecx, ecx
mov     cl, [esi+100h]
xor     ebx, ebx
mov     bl, al
mov     al, [esi+174h]
and     al, 3
movsx   edx, al
mov     eax, esi
call    sub_4DE8EE
mov     al, [esi+104h]
mov     [esi+105h], al
jmp     short loc_4A96E2

loc_4A96D0:
mov     al, [esi+174h]
and     al, 3
movsx   edx, al
mov     eax, esi
call    sub_4DEA6D

loc_4A96E2:
mov     al, [esi+0ACh]
cmp     al, [esi+0ADh]
jz      short loc_4A9708
xor     ebx, ebx
mov     bl, [esi+0A4h]
xor     edx, edx
mov     dl, al
mov     eax, esi
call    sub_4DE83A
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A9708:
mov     eax, esi
call    sub_4DE9F7
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A9661 endp




sub_4A9714 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+74h], 1
jnz     short loc_4A975C
test    byte ptr [esi+7Dh], 20h
jz      short loc_4A975C
mov     dh, [esi+9]
cmp     dh, 7
jz      short loc_4A9733
cmp     dh, 8
jnz     short loc_4A975C

loc_4A9733:
cmp     byte ptr [esi+0Ah], 4
jnb     short loc_4A975C
mov     ecx, 1
xor     ebx, ebx
mov     edx, 15h
mov     eax, esi
call    sub_4B520D
mov     byte ptr [esi+0Ah], 4
mov     word ptr [esi+46h], 0
mov     word ptr [esi+4Eh], 0

loc_4A975C:
mov     cl, [esi+8]
cmp     cl, 1
jz      short loc_4A9769
cmp     cl, 2
jnz     short loc_4A977C

loc_4A9769:
cmp     byte ptr [esi+76h], 0
jz      short loc_4A977C
mov     edx, [esi+0C0h]
mov     eax, esi
call    sub_43375C

loc_4A977C:
cmp     byte ptr [esi+8], 3
jnz     short loc_4A9795
cmp     byte ptr [esi+76h], 0
jz      short loc_4A9795
mov     edx, [esi+0C0h]
mov     eax, esi
call    sub_43387D

loc_4A9795:
mov     eax, 200h
call    sub_47E888
test    eax, eax
jnz     short loc_4A97AA
mov     eax, esi
call    sub_431C8C

loc_4A97AA:
mov     dh, [esi+8]
cmp     dh, 1
jz      short loc_4A97BB
cmp     dh, 2
jnz     loc_4A9874

loc_4A97BB:
cmp     byte ptr [esi+76h], 0
jnz     loc_4A9874
cmp     byte ptr [esi+74h], 0
jnz     loc_4A9874
mov     eax, [esi+78h]
mov     edx, [eax+8]
sar     edx, 10h
mov     eax, esi
call    sub_42C592
sub     eax, edx
mov     edx, [esi+14h]
sar     edx, 10h
lea     ebx, [eax-20h]
cmp     edx, ebx
jge     loc_4A9866
cmp     byte ptr [esi+75h], 0
jnz     short loc_4A9860
cmp     byte ptr [esi+9], 0Eh
jnz     short loc_4A980C
call    sub_42A43B
mov     word ptr [esi+108h], 0

loc_4A980C:
cmp     byte ptr [esi+9], 3
jnz     short loc_4A9834
cmp     byte ptr [esi+0Ah], 5
jnb     short loc_4A9834
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Eh
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Fh
call    sub_4D89E4

loc_4A9834:
mov     byte ptr [esi+9], 7
mov     word ptr [esi+0Ah], 4
mov     word ptr [esi+46h], 0
mov     byte ptr [esi+168h], 0
mov     byte ptr [esi+169h], 0
mov     byte ptr [esi+110h], 1
mov     byte ptr [esi+111h], 0

loc_4A9860:
mov     byte ptr [esi+74h], 1
jmp     short loc_4A9874

loc_4A9866:
cmp     edx, eax
jge     short loc_4A9874
mov     [esi+16h], ax
shl     eax, 10h
mov     [esi+20h], eax

loc_4A9874:
mov     eax, esi
call    sub_42DE56
test    eax, eax
jge     short loc_4A98C7
mov     ax, [esi+2Ch]
mov     [esi+14h], ax
mov     ax, [esi+30h]
mov     [esi+18h], ax
mov     eax, [esi+34h]
mov     [esi+1Ch], eax
mov     eax, [esi+3Ch]
mov     [esi+24h], eax
mov     word ptr [esi+48h], 0
mov     ax, [esi+48h]
mov     [esi+44h], ax
cmp     byte ptr [esi+74h], 0
jz      short loc_4A98C7
mov     byte ptr [esi+74h], 0
mov     ax, [esi+2Eh]
mov     [esi+16h], ax
mov     eax, [esi+38h]
mov     [esi+20h], eax
mov     word ptr [esi+46h], 0

loc_4A98C7:
mov     ebx, [esi+166h]
sar     ebx, 18h
mov     edx, [esi+165h]
sar     edx, 18h
mov     eax, esi
call    sub_4EDDAA
mov     eax, esi
call    sub_4DEF3E
mov     eax, esi
call    sub_4DEBDA
test    byte ptr [esi], 2
jz      short loc_4A9906
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED7D2

loc_4A9906:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A9714 endp




sub_4A990B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     dword ptr [eax+8], 1
mov     ah, [eax+6]
or      ah, 3
mov     [esi+6], ah
mov     word ptr [esi+6Ch], 3Ch ; '<'
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0
mov     word ptr [esi+48h], 0
mov     word ptr [esi+114h], 0
mov     word ptr [esi+116h], 0
mov     word ptr [esi+118h], 0
mov     byte ptr [esi+112h], 0
mov     byte ptr [esi+113h], 0
mov     byte ptr [esi+110h], 0
mov     byte ptr [esi+71h], 0
mov     byte ptr [esi+73h], 0
mov     dword ptr [esi+188h], 0
mov     dword ptr [esi+18Ch], 0
mov     dword ptr [esi+190h], 0
mov     dword ptr [esi+194h], 0
mov     byte ptr [esi+168h], 0
mov     byte ptr [esi+169h], 0
mov     byte ptr [esi+104h], 0
mov     al, [esi+104h]
mov     [esi+0ACh], al
mov     byte ptr [esi+105h], 0
mov     al, [esi+105h]
mov     [esi+0ADh], al
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 0
mov     byte ptr [esi+175h], 7
mov     word ptr [esi+108h], 0
mov     word ptr [esi+10Ah], 0
mov     byte ptr [esi+54Bh], 0
mov     byte ptr [esi+54Ah], 0
mov     dword ptr [esi+184h], 0
mov     ecx, 1
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4B520D
xor     ecx, ecx
mov     ebx, 5
xor     edx, edx
mov     eax, esi
call    sub_4DE8EE
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A990B endp




sub_4A9A31 proc near
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
mov     ax, [ebp+6Eh]
mov     [ebp+0B2h], ax
mov     al, [ebp+74h]
mov     [ebp+75h], al
mov     al, [ebp+76h]
mov     [ebp+77h], al
and     byte ptr [ebp+0BDh], 0F7h
lea     eax, [ebp+14h]
call    sub_42DB45
mov     edx, eax
test    eax, eax
jz      short loc_4A9A98
mov     byte ptr [ebp+9], 0Ah
mov     byte ptr [ebp+0Ah], 0
mov     [ebp+0Bh], al
jmp     short loc_4A9AA8

loc_4A9A98:
cmp     byte ptr [ebp+9], 0Ah
jnz     short loc_4A9AA8
cmp     byte ptr [ebp+0Ah], 0
jnz     short loc_4A9AA8
mov     byte ptr [ebp+0Ah], 1

loc_4A9AA8:
mov     bl, [ebp+549h]
test    bl, bl
jnz     short loc_4A9AF7
mov     cl, [ebp+110h]
test    cl, cl
jnz     short loc_4A9AC9
or      byte ptr [ebp+6], 3
mov     eax, ebp
call    sub_4AD89B
jmp     short loc_4A9AFB

loc_4A9AC9:
jle     short loc_4A9AF7
mov     ah, [ebp+111h]
dec     ah
mov     [ebp+111h], ah
test    ah, ah
jge     short loc_4A9AEC
or      byte ptr [ebp+6], 3
mov     [ebp+71h], bl
mov     [ebp+110h], bl
jmp     short loc_4A9AFB

loc_4A9AEC:
test    ah, 2
jz      short loc_4A9AF7
and     byte ptr [ebp+6], 0FDh
jmp     short loc_4A9AFB

loc_4A9AF7:
or      byte ptr [ebp+6], 3

loc_4A9AFB:
mov     dword ptr [ebp+188h], 0
mov     eax, [ebp+171h]
sar     eax, 18h
test    al, 0C0h
jz      short loc_4A9B2E
and     eax, 0C0h
cmp     eax, 80h
jnz     short loc_4A9B27
mov     eax, ebp
call    sub_4B5A09
jmp     short loc_4A9B2E

loc_4A9B27:
mov     eax, ebp
call    sub_4B59F6

loc_4A9B2E:
mov     eax, [ebp+0BAh]
sar     eax, 18h
test    al, 80h
jnz     short loc_4A9B57
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4A9B42[edx*4]
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4A9B50[edx*4]

loc_4A9B57:
mov     eax, ebp
call    sub_42DE56
cmp     byte ptr [ebp+74h], 1
jnz     short def_4ADB6C ; jumptable 004ADB6C default case
test    ah, 20h
jz      short def_4ADB6C ; jumptable 004ADB6C default case
mov     dh, [ebp+9]
cmp     dh, 7
jz      short loc_4A9B76
cmp     dh, 8
jnz     short def_4ADB6C ; jumptable 004ADB6C default case

loc_4A9B76:
cmp     byte ptr [ebp+0Ah], 4
jnb     short def_4ADB6C ; jumptable 004ADB6C default case
mov     ecx, 1
xor     ebx, ebx
mov     edx, 15h
mov     eax, ebp
call    sub_4B520D
mov     byte ptr [ebp+0Ah], 4
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+4Eh], 0

def_4ADB6C:             ; jumptable 004ADB6C default case
mov     eax, ebp
call    sub_4326CA

loc_4A9BA6:
pop     ebp

loc_4A9BA7:
