loc_4EB8E6:
cmp     [esp+3Ch+var_1C], 0
jbe     loc_4EBA02
mov     eax, [ebp+8]
mov     edx, eax
and     edx, 0FFh
mov     [esp+3Ch+var_20], edx
mov     edx, eax
shr     edx, 8
and     edx, 0FFh
mov     [esp+3Ch+var_28], edx
shr     eax, 10h
and     eax, 0FFh
mov     [esp+3Ch+var_24], eax
mov     ebx, eax
shl     ebx, 3
add     ebx, offset unk_55FE98
shl     edx, 3
add     edx, offset unk_55FE98
mov     eax, [esp+3Ch+var_20]
shl     eax, 3
add     eax, offset unk_55FE98
call    sub_4EFC99
call    sub_4EFD2E
dec     [esp+3Ch+var_1C]
lea     eax, [esp+3Ch+var_38]
call    sub_4EFFE2
cmp     [esp+3Ch+var_38], 0
jle     loc_4EB9FA
mov     ecx, ds:dword_77E6DC
lea     eax, [ecx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, ecx
call    loc_4F005A
mov     eax, [esp+3Ch+var_24]
mov     ebx, ds:dword_560698[eax*4]
mov     eax, [esp+3Ch+var_28]
mov     edx, ds:dword_560698[eax*4]
mov     eax, [esp+3Ch+var_20]
mov     eax, ds:dword_560698[eax*4]
call    sub_4EFCB9
call    sub_4EFB65
mov     eax, esp
call    sub_4EFFED
mov     eax, ecx
call    sub_4F0165
mov     eax, [esp+3Ch+var_3C]
shr     eax, 1
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ecx], edx
mov     [eax], ecx
mov     eax, [esp+3Ch+var_30]
mov     [ecx+4], eax
mov     eax, [esp+3Ch+var_2C]
xor     ax, ax
xor     edx, edx
mov     dx, [ebp+0]
or      eax, edx
mov     [ecx+0Ch], eax
xor     eax, eax
mov     ax, [ebp+2]
mov     edx, [esp+3Ch+var_2C]
shl     edx, 10h
or      eax, edx
or      eax, 200000h
mov     [ecx+14h], eax
xor     eax, eax
mov     ax, [ebp+4]
mov     [ecx+1Ch], eax

loc_4EB9FA:
add     ebp, 0Ch
jmp     loc_4EB8E6

loc_4EBA02:
mov     eax, [esi]
and     eax, 0FF00h
shr     eax, 8
mov     [esp+3Ch+var_1C], eax
mov     ebp, [esi+8]
mov     eax, ds:dword_77E6E4
or      eax, 0AC000000h
mov     [esp+3Ch+var_30], eax

loc_4EBA21:
mov     esi, [esp+3Ch+var_1C]
test    esi, esi
jbe     loc_4EB51F
mov     eax, [ebp+8]
mov     edx, eax
and     edx, 0FFh
mov     [esp+3Ch+var_20], edx
mov     edx, eax
shr     edx, 8
and     edx, 0FFh
mov     [esp+3Ch+var_28], edx
mov     edx, eax
shr     edx, 10h
and     edx, 0FFh
mov     [esp+3Ch+var_24], edx
mov     ecx, eax
shr     ecx, 18h
and     ecx, 0FFh
mov     ebx, edx
shl     ebx, 3
add     ebx, offset unk_55FE98
mov     edx, [esp+3Ch+var_28]
shl     edx, 3
add     edx, offset unk_55FE98
mov     eax, [esp+3Ch+var_20]
shl     eax, 3
add     eax, offset unk_55FE98
call    sub_4EFC99
call    sub_4EFD2E
lea     edi, [esi-1]
mov     [esp+3Ch+var_1C], edi
lea     eax, [esp+3Ch+var_38]
call    sub_4EFFE2
cmp     [esp+3Ch+var_38], 0
jle     loc_4EBB7C
mov     eax, ds:dword_77E6DC
mov     [esp+3Ch+var_34], eax
add     eax, 48h ; 'H'
mov     ds:dword_77E6DC, eax
mov     eax, [esp+3Ch+var_34]
call    loc_4F0075
mov     esi, ecx
mov     edi, [esp+3Ch+var_34]
lea     edi, [edi+40h]
lea     esi, unk_55FE98[esi*8]
movsd
movsd
mov     ecx, ds:dword_560698[ecx*4]
mov     eax, [esp+3Ch+var_24]
mov     ebx, ds:dword_560698[eax*4]
mov     eax, [esp+3Ch+var_28]
mov     edx, ds:dword_560698[eax*4]
mov     eax, [esp+3Ch+var_20]
mov     eax, ds:dword_560698[eax*4]
call    sub_4EFCCB
call    sub_4EFB8D
mov     eax, esp
call    sub_4EFFED
mov     eax, [esp+3Ch+var_34]
call    sub_4F0242
mov     eax, [esp+3Ch+var_3C]
shr     eax, 1
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     ecx, [esp+3Ch+var_34]
mov     [ecx], edx
mov     edx, ecx
mov     [eax], ecx
mov     eax, [esp+3Ch+var_30]
mov     [ecx+4], eax
mov     eax, [esp+3Ch+var_2C]
xor     ax, ax
xor     edx, ecx
mov     dx, [ebp+0]
or      eax, edx
mov     edx, ecx
mov     [ecx+0Ch], eax
xor     edx, ecx
mov     dx, [ebp+2]
mov     eax, [esp+3Ch+var_2C]
shl     eax, 10h
or      eax, edx
or      eax, 200000h
mov     [ecx+14h], eax
xor     eax, eax
mov     ax, [ebp+4]
mov     [ecx+1Ch], eax
xor     eax, eax
mov     ax, [ebp+6]
mov     [ecx+24h], eax

loc_4EBB7C:
add     ebp, 0Ch
jmp     loc_4EBA21
sub_4EB872 endp




sub_4EBB84 proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
jmp     short loc_4EBB91

loc_4EBB8B:
inc     ecx
cmp     ecx, 10h
jnb     short loc_4EBBCA

loc_4EBB91:
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 3
sub     eax, ecx
shl     eax, 2
add     eax, offset byte_6DC7FC
movsx   edx, byte ptr [eax]
xor     ebx, ebx
mov     bl, [eax+6]
and     ebx, edx
test    bl, 2
jz      short loc_4EBB8B
mov     ebx, edx
and     ebx, 1Ch
shr     ebx, 2
add     eax, 88h
call    ds:funcs_4EBBC1[ebx*4]
jmp     short loc_4EBB8B

loc_4EBBCA:
xor     ecx, ecx
jmp     short loc_4EBBD8

loc_4EBBCE:
inc     ecx
cmp     ecx, 20h ; ' '
jnb     loc_4EB5D0

loc_4EBBD8:
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 3
sub     eax, ecx
shl     eax, 2
add     eax, offset byte_57098C
movsx   edx, byte ptr [eax]
xor     ebx, ebx
mov     bl, [eax+6]
and     ebx, edx
test    bl, 2
jz      short loc_4EBBCE
mov     ebx, edx
and     ebx, 1Ch
shr     ebx, 2
add     eax, 88h
call    ds:funcs_4EBBC1[ebx*4]
jmp     short loc_4EBBCE
sub_4EBB84 endp




sub_4EBC11 proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
jmp     short loc_4EBC22

loc_4EBC18:
inc     ecx
cmp     ecx, 40h ; '@'
jnb     loc_4EB5D0

loc_4EBC22:
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 3
add     eax, offset unk_572D5C
movsx   edx, byte ptr [eax]
xor     ebx, ebx
mov     bl, [eax+6]
and     ebx, edx
test    bl, 2
jz      short loc_4EBC18
mov     ebx, edx
and     ebx, 1Ch
shr     ebx, 2
add     eax, 14h
call    ds:funcs_4EBBC1[ebx*4]
jmp     short loc_4EBC18
sub_4EBC11 endp




sub_4EBC59 proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
jmp     short loc_4EBC6A

loc_4EBC60:
inc     ecx
cmp     ecx, 20h ; ' '
jnb     loc_4EB5D0

loc_4EBC6A:
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 5
add     eax, offset unk_56FCB4
movsx   edx, byte ptr [eax]
xor     ebx, ebx
mov     bl, [eax+6]
and     ebx, edx
test    bl, 2
jz      short loc_4EBC60
mov     ebx, edx
and     ebx, 1Ch
shr     ebx, 2
add     eax, 14h
call    ds:funcs_4EBBC1[ebx*4]
jmp     short loc_4EBC60
sub_4EBC59 endp



; Attributes: bp-based frame fuzzy-sp

sub_4EBC9C proc near

var_48= word ptr -48h
var_46= dword ptr -46h
var_40= word ptr -40h
var_3E= word ptr -3Eh
var_3C= word ptr -3Ch
var_38= word ptr -38h
var_36= word ptr -36h
var_34= word ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_8= dword ptr -8
var_4= dword ptr -4

push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebp, esp
sub     esp, 78h
and     esp, 0FFFFFFF8h
mov     ebx, eax
mov     [esp+78h+var_8], edx
lea     ecx, [eax+8]
cmp     ds:byte_77EABF, 0
jnz     short loc_4EBD12
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset dword_56F174
call    sub_4EFB5A
mov     eax, ecx
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+78h+var_18]
call    sub_4EFFB8
xor     eax, eax
mov     ax, ds:word_77EAB2
shl     eax, 2
mov     edi, [esp+78h+var_10]
cmp     eax, edi
jl      loc_4EBFF9
cmp     edi, 0C0h
jl      loc_4EBFF9
xor     ecx, ecx
mov     cx, [ebx+10h]
jmp     loc_4EBDCA

loc_4EBD12:
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset dword_56F174
call    sub_4EFB5A
mov     eax, ecx
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+78h+var_18]
call    sub_4EFFB8
xor     eax, eax
mov     ax, ds:word_77EAB2
shl     eax, 2
mov     edx, [esp+78h+var_10]
cmp     eax, edx
jl      loc_4EBFF9
mov     cl, ds:byte_77EABF
mov     eax, 0C0h
sar     eax, cl
cmp     eax, edx
jg      loc_4EBFF9
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     cl, ds:byte_77EABF
mov     dx, [ebx+8]
shl     edx, cl
mov     [esp+78h+var_48], dx
mov     dx, [ebx+0Ah]
shl     edx, cl
mov     word ptr [esp+78h+var_46], dx
mov     ax, [ebx+0Ch]
shl     eax, cl
mov     word ptr [esp+78h+var_46+2], ax
lea     eax, [esp+78h+var_48]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+78h+var_18]
call    sub_4EFFB8
cmp     [esp+78h+var_10], 0
jl      loc_4EBFF9
xor     eax, eax
mov     ax, [ebx+10h]
mov     cl, ds:byte_77EABF
shl     eax, cl
mov     ecx, eax

loc_4EBDCA:
mov     eax, esp
call    sub_4EF184
mov     eax, esp
call    sub_4EFB33
mov     eax, esp
call    sub_4EFB43
mov     eax, ds:dword_77E6DC
mov     edx, eax
add     eax, 38h ; '8'
mov     ds:dword_77E6DC, eax
test    byte ptr [esp+78h+var_8], 20h
jz      short loc_4EBE52
mov     ax, [ebx+12h]
xor     ah, ah
and     al, 3Fh
and     eax, 0FFFFh
mov     esi, dword ptr ds:unk_564C32[eax*2]
sar     esi, 10h
imul    esi, ecx
shr     esi, 0Ch
mov     eax, dword ptr ds:unk_56F78A[eax*2]
sar     eax, 10h
imul    eax, ecx
shr     eax, 0Ch
mov     ecx, [esp+78h+var_18]
sub     ecx, eax
add     ecx, esi
mov     [esp+78h+var_48], cx
mov     ecx, [esp+78h+var_14]
sub     ecx, eax
mov     edi, ecx
sub     edi, esi
mov     word ptr [esp+78h+var_46], di
add     eax, [esp+78h+var_18]
add     eax, esi
mov     [esp+78h+var_40], ax
add     ecx, esi
mov     [esp+78h+var_3E], cx
jmp     short loc_4EBE7C

loc_4EBE52:
mov     eax, [esp+78h+var_18]
sub     eax, ecx
mov     [esp+78h+var_48], ax
mov     eax, [esp+78h+var_14]
sub     eax, ecx
mov     word ptr [esp+78h+var_46], ax
mov     eax, [esp+78h+var_18]
add     eax, ecx
mov     [esp+78h+var_40], ax
mov     eax, [esp+78h+var_46]
mov     [esp+78h+var_3E], ax

loc_4EBE7C:
mov     eax, [esp+78h+var_18]
mov     [esp+78h+var_38], ax
mov     eax, [esp+78h+var_14]
mov     [esp+78h+var_36], ax
mov     eax, [esp+78h+var_10]
mov     [esp+78h+var_34], ax
mov     [esp+78h+var_3C], ax
mov     word ptr [esp+78h+var_46+2], ax
lea     eax, [esp+78h+var_48]
call    sub_4EFD0C
call    sub_4EFE75
mov     cx, [ebx+0Eh]
mov     esi, [esp+78h+var_10]
sar     esi, 3
shl     esi, 2
mov     eax, ds:dword_77E6FC
add     eax, esi
mov     esi, [eax]
mov     [edx], esi
mov     [eax], edx
mov     eax, [ebx+4]
or      eax, 2C000000h
mov     [edx+4], eax
mov     esi, [ebx]
xor     si, si
xor     eax, eax
mov     ax, cx
or      esi, eax
mov     [edx+0Ch], esi
xor     eax, eax
mov     ax, cx
mov     ebx, [ebx]
shl     ebx, 10h
lea     ecx, [eax+1Fh]
or      ebx, ecx
mov     [edx+14h], ebx
lea     ecx, [eax+1F00h]
mov     [edx+1Ch], ecx
add     eax, 1F1Fh
mov     [edx+24h], eax
lea     eax, [esp+78h+var_30]
call    sub_4F0040
fld     [esp+78h+var_30]
call    __CHP
fistp   [esp+78h+var_4]
mov     eax, [esp+78h+var_4]
mov     [edx+8], ax
fld     [esp+78h+var_2C]
call    __CHP
fistp   [esp+78h+var_4]
mov     eax, [esp+78h+var_4]
mov     [edx+0Ah], ax
fld     [esp+78h+var_28]
call    __CHP
fistp   [esp+78h+var_4]
mov     eax, [esp+78h+var_4]
mov     [edx+10h], ax
fld     [esp+78h+var_24]
call    __CHP
fistp   [esp+78h+var_4]
mov     eax, [esp+78h+var_4]
mov     [edx+12h], ax
fld     [esp+78h+var_20]
fmul    ds:dbl_50A4C0
fsub    [esp+78h+var_28]
call    __CHP
fistp   [esp+78h+var_4]
mov     eax, [esp+78h+var_4]
mov     [edx+18h], ax
fld     [esp+78h+var_1C]
fmul    ds:dbl_50A4C0
fsub    [esp+78h+var_24]
call    __CHP
fistp   [esp+78h+var_4]
mov     eax, [esp+78h+var_4]
mov     [edx+1Ah], ax
fld     [esp+78h+var_20]
fmul    ds:dbl_50A4C0
fsub    [esp+78h+var_30]
call    __CHP
fistp   [esp+78h+var_4]
mov     eax, [esp+78h+var_4]
mov     [edx+20h], ax
fld     [esp+78h+var_1C]
fmul    ds:dbl_50A4C0
fsub    [esp+78h+var_2C]
call    __CHP
fistp   [esp+78h+var_4]
mov     eax, [esp+78h+var_4]
mov     [edx+22h], ax
mov     dword ptr [edx+34h], 3DCCCCCDh
mov     eax, [edx+34h]
mov     [edx+30h], eax
mov     eax, [edx+30h]
mov     [edx+2Ch], eax
mov     eax, [edx+2Ch]
mov     [edx+28h], eax

loc_4EBFF9:
mov     esp, ebp
jmp     loc_4EAB7B
sub_4EBC9C endp




sub_4EC000 proc near

var_70= dword ptr -70h
var_6C= dword ptr -6Ch
var_68= dword ptr -68h
var_64= dword ptr -64h
var_60= dword ptr -60h
var_5C= dword ptr -5Ch
var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= dword ptr -50h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 5Ch
mov     ebp, eax
mov     [esp+70h+var_1C], edx
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset dword_56F174
call    sub_4EFB5A
lea     eax, [ebp+34h]
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+70h+var_28]
call    sub_4F0003
lea     eax, [esp+70h+var_20]
call    sub_4F04DB
test    byte ptr [esp+70h+var_1C], 40h
jz      short loc_4EC056
xor     eax, eax
mov     ax, ds:word_77EAB2
cmp     eax, [esp+70h+var_20]
jg      short loc_4EC0C1

loc_4EC056:
xor     eax, eax
mov     ax, ds:word_77EAB2
cmp     eax, [esp+70h+var_20]
jl      loc_4EC259
mov     cl, ds:byte_77EABF
mov     eax, 30h ; '0'
sar     eax, cl
cmp     eax, [esp+70h+var_20]
jg      loc_4EC259
fld     [esp+70h+var_28]
fadd    ds:flt_50A4C8
call    __CHP
fistp   [esp+70h+var_18]
mov     eax, [esp+70h+var_18]
cmp     ax, 400h
ja      loc_4EC259
fld     [esp+70h+var_24]
fadd    ds:flt_50A4CC
call    __CHP
fistp   [esp+70h+var_18]
mov     eax, [esp+70h+var_18]
cmp     ax, 400h
ja      loc_4EC259

loc_4EC0C1:
lea     edi, [esp+70h+var_30]
lea     esi, [ebp+34h]
movsd
movsd
mov     ecx, 0Ch
mov     edi, esp
lea     esi, [ebp+4]
rep movsd
xor     eax, eax
mov     al, ds:byte_77EABF
test    eax, eax
jz      loc_4EC180
jnz     short loc_4EC0EE
mov     edx, 1
jmp     short loc_4EC0F8

loc_4EC0EE:
lea     ecx, [eax-1]
mov     edx, 2
shl     edx, cl

loc_4EC0F8:
cwde
mov     cl, al
shl     [esp+70h+var_30], cl
shl     [esp+70h+var_2E], cl
shl     [esp+70h+var_2C], cl
mov     [esp+70h+var_18], edx
fild    [esp+70h+var_18]
fstp    [esp+70h+var_18]
fld     [esp+70h+var_70]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_70]
fld     [esp+70h+var_6C]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_6C]
fld     [esp+70h+var_68]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_68]
fld     [esp+70h+var_64]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_64]
fld     [esp+70h+var_60]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_60]
fld     [esp+70h+var_5C]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_5C]
fld     [esp+70h+var_58]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_58]
fld     [esp+70h+var_54]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_54]
fld     [esp+70h+var_50]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_50]

loc_4EC180:
mov     esi, [esp+70h+var_20]
cmp     esi, 708h
jle     short loc_4EC194
mov     eax, [ebp+0]
mov     eax, [eax+78h]
jmp     short loc_4EC1AA

loc_4EC194:
cmp     esi, 2BCh
jle     short loc_4EC1A4
mov     eax, [ebp+0]
mov     eax, [eax+74h]
jmp     short loc_4EC1AA

loc_4EC1A4:
mov     eax, [ebp+0]
mov     eax, [eax+70h]

loc_4EC1AA:
add     eax, 14h
mov     ds:dword_560AD0, eax
mov     ebx, offset unk_564A6C
mov     edx, esp
mov     eax, offset unk_564CB4
call    sub_4EF388
lea     ebx, [esp+70h+var_40]
lea     edx, [esp+70h+var_30]
mov     eax, offset unk_564CB4
call    sub_4EF1FB
mov     eax, ds:dword_564CD8
mov     edx, [esp+70h+var_40]
add     eax, edx
mov     ds:dword_564A90, eax
mov     eax, ds:dword_564CDC
mov     ecx, [esp+70h+var_3C]
add     eax, ecx
mov     ds:dword_564A94, eax
mov     eax, ds:dword_564CE0
mov     ebx, [esp+70h+var_38]
add     eax, ebx
mov     ds:dword_564A98, eax
mov     eax, offset unk_564A6C
call    sub_4EFB33
mov     eax, offset unk_564A6C
call    sub_4EFB43
test    byte ptr [esp+70h+var_1C], 20h
jz      short loc_4EC242
mov     edx, [ebp+3Ch]
and     edx, 2FFFFFFh
mov     eax, [ebp+38h]
sar     eax, 10h
mov     ebp, eax
shl     ebp, 2
add     ebp, eax
shl     ebp, 2
mov     eax, ds:dword_560AD0
add     eax, ebp
jmp     short loc_4EC250

loc_4EC242:
mov     edx, [ebp+3Ch]
and     edx, 2FFFFFFh
mov     eax, ds:dword_560AD0

loc_4EC250:
mov     ebx, [esp+70h+var_1C]
call    sub_4EC261

loc_4EC259:
add     esp, 5Ch
jmp     loc_4EAB7B
sub_4EC000 endp




sub_4EC261 proc near

var_88= dword ptr -88h
var_84= dword ptr -84h
var_80= dword ptr -80h
var_7C= dword ptr -7Ch
var_78= dword ptr -78h
var_74= dword ptr -74h
var_70= dword ptr -70h
var_6C= dword ptr -6Ch
var_68= dword ptr -68h
var_64= dword ptr -64h
var_60= dword ptr -60h
var_5C= dword ptr -5Ch
var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= dword ptr -50h
var_4C= dword ptr -4Ch
var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= qword ptr -30h
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= byte ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 70h
push    eax
push    edx
test    bl, 40h
jnz     short loc_4EC279
lea     eax, [esp+88h+var_14]
mov     [esp+88h+var_24], eax
jmp     short loc_4EC27F

loc_4EC279:
xor     edx, edx
mov     [esp+88h+var_24], edx

loc_4EC27F:
mov     eax, [esp+88h+var_84]
mov     eax, [eax]
and     eax, 0FFh
mov     [esp+88h+var_20], eax
mov     eax, [esp+88h+var_84]
mov     eax, [eax+10h]
mov     [esp+88h+var_18], eax
mov     eax, [esp+88h+var_84]
mov     eax, [eax+0Ch]
mov     [esp+88h+var_1C], eax
mov     ebp, [esp+88h+var_84]
mov     ebp, [ebp+4]
mov     eax, [esp+88h+var_88]
or      eax, 0A4000000h
mov     [esp+88h+var_28], eax
lea     eax, [esp+88h+var_28]
call    sub_4EFC91

loc_4EC2C0:
mov     ecx, [esp+88h+var_20]
test    ecx, ecx
jbe     loc_4EC4E1
xor     eax, eax
mov     al, [ebp+8]
shl     eax, 3
lea     ebx, [ecx-1]
mov     [esp+88h+var_20], ebx
mov     esi, [esp+88h+var_18]
add     esi, eax
mov     edi, offset unk_560A98
movsd
movsd
xor     eax, eax
mov     al, [ebp+9]
shl     eax, 3
mov     esi, [esp+88h+var_18]
add     esi, eax
mov     edi, offset unk_560AA0
movsd
movsd
xor     eax, eax
mov     al, [ebp+0Ah]
shl     eax, 3
mov     esi, [esp+88h+var_18]
add     esi, eax
mov     edi, offset unk_560AA8
movsd
movsd
push    3
mov     ecx, [esp+8Ch+var_24]
lea     ebx, [esp+8Ch+var_80]
mov     edx, ebp
mov     eax, offset unk_560A98
call    sub_4F04FB
test    eax, eax
jz      loc_4EC4D9
mov     esi, [esp+88h+var_24]
test    esi, esi
jz      short loc_4EC341
cmp     dword ptr [esi], 0
jle     loc_4EC4D9

loc_4EC341:
mov     ecx, [esp+88h+var_1C]
shr     ecx, 10h
cmp     eax, 3
jnz     loc_4EC3F2
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, [esp+88h+var_80]
mov     [edx+20h], eax
mov     eax, [esp+88h+var_7C]
mov     [edx+24h], eax
fld     [esp+88h+var_78]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+8]
mov     eax, [esp+88h+var_70]
mov     [edx+28h], eax
mov     eax, [esp+88h+var_6C]
mov     [edx+2Ch], eax
fld     [esp+88h+var_68]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+10h]
mov     eax, [esp+88h+var_60]
mov     [edx+30h], eax
mov     eax, [esp+88h+var_5C]
mov     [edx+34h], eax
fld     [esp+88h+var_58]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+18h]
mov     eax, [esp+88h+var_74]
mov     [edx+0Ch], ax
mov     eax, [esp+88h+var_64]
mov     [edx+14h], ax
mov     eax, [esp+88h+var_54]
mov     [edx+1Ch], ax
mov     eax, [esp+88h+var_28]
mov     [edx+4], eax
mov     [edx+0Eh], cx
mov     eax, [esp+88h+var_1C]
mov     [edx+16h], ax
fld     [esp+88h+var_78]
fadd    [esp+88h+var_68]
fadd    [esp+88h+var_58]
fdiv    ds:flt_50A4D8
jmp     loc_4EC4BA

loc_4EC3F2:
mov     edx, ds:dword_77E6DC
lea     eax, [edx+48h]
mov     ds:dword_77E6DC, eax
mov     eax, [esp+88h+var_80]
mov     [edx+28h], eax
mov     eax, [esp+88h+var_7C]
mov     [edx+2Ch], eax
fld     [esp+88h+var_78]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+8]
mov     eax, [esp+88h+var_70]
mov     [edx+30h], eax
mov     eax, [esp+88h+var_6C]
mov     [edx+34h], eax
fld     [esp+88h+var_68]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+10h]
mov     eax, [esp+88h+var_50]
mov     [edx+38h], eax
mov     eax, [esp+88h+var_4C]
mov     [edx+3Ch], eax
fld     [esp+88h+var_48]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+18h]
mov     eax, [esp+88h+var_60]
mov     [edx+40h], eax
mov     eax, [esp+88h+var_5C]
mov     [edx+44h], eax
fld     [esp+88h+var_58]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+20h]
mov     eax, [esp+88h+var_74]
mov     [edx+0Ch], ax
mov     eax, [esp+88h+var_64]
mov     [edx+14h], ax
mov     eax, [esp+88h+var_44]
mov     [edx+1Ch], ax
mov     eax, [esp+88h+var_54]
mov     [edx+24h], ax
mov     eax, [esp+88h+var_28]
or      eax, 8000000h
mov     [edx+4], eax
mov     [edx+0Eh], cx
mov     eax, [esp+88h+var_1C]
mov     [edx+16h], ax
fld     [esp+88h+var_78]
fadd    [esp+88h+var_68]
fadd    [esp+88h+var_58]
fadd    [esp+88h+var_48]
fmul    ds:flt_50A4D4

loc_4EC4BA:
call    __CHP
fistp   [esp+88h+var_30]
mov     ecx, dword ptr [esp+88h+var_30]
shr     ecx, 1
shl     ecx, 2
mov     eax, ds:dword_77E6FC
add     eax, ecx
mov     ecx, [eax]
mov     [edx], ecx
mov     [eax], edx

loc_4EC4D9:
add     ebp, 0Ch
jmp     loc_4EC2C0

loc_4EC4E1:
mov     eax, [esp+88h+var_84]
mov     eax, [eax]
and     eax, 0FF00h
shr     eax, 8
mov     [esp+88h+var_20], eax
mov     ebp, [esp+88h+var_84]
mov     ebp, [ebp+8]
mov     eax, [esp+88h+var_88]
or      eax, 0AC000000h
mov     [esp+88h+var_28], eax
lea     eax, [esp+88h+var_28]
call    sub_4EFC91

loc_4EC50F:
cmp     [esp+88h+var_20], 0
jbe     loc_4EC8E3
xor     eax, eax
mov     al, [ebp+8]
shl     eax, 3
dec     [esp+88h+var_20]
mov     esi, [esp+88h+var_18]
add     esi, eax
mov     edi, offset unk_560A98
movsd
movsd
xor     eax, eax
mov     al, [ebp+9]
shl     eax, 3
mov     esi, [esp+88h+var_18]
add     esi, eax
mov     edi, offset unk_560AA0
movsd
movsd
movzx   esi, byte ptr [ebp+0Ah]
shl     esi, 3
mov     ecx, [esp+88h+var_18]
add     esi, ecx
mov     edi, offset unk_560AA8
movsd
movsd
xor     eax, eax
mov     al, [ebp+0Bh]
shl     eax, 3
lea     esi, [ecx+eax]
mov     edi, offset unk_560AB0
movsd
movsd
push    4
mov     ecx, [esp+8Ch+var_24]
lea     ebx, [esp+8Ch+var_80]
mov     edx, ebp
mov     eax, offset unk_560A98
call    sub_4F04FB
test    eax, eax
jz      loc_4EC8DB
mov     ebx, [esp+88h+var_24]
test    ebx, ebx
jz      short loc_4EC59D
cmp     dword ptr [ebx], 0
jle     loc_4EC8DB

loc_4EC59D:
mov     ecx, [esp+88h+var_1C]
shr     ecx, 10h
cmp     eax, 4
jb      short loc_4EC5BD
jbe     loc_4EC68A
cmp     eax, 5
jz      loc_4EC769
jmp     loc_4EC8DB

loc_4EC5BD:
cmp     eax, 3
jnz     loc_4EC8DB
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, [esp+88h+var_80]
mov     [edx+20h], eax
mov     eax, [esp+88h+var_7C]
mov     [edx+24h], eax
fld     [esp+88h+var_78]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+8]
mov     eax, [esp+88h+var_70]
mov     [edx+28h], eax
mov     eax, [esp+88h+var_6C]
mov     [edx+2Ch], eax
fld     [esp+88h+var_68]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+10h]
mov     eax, [esp+88h+var_60]
mov     [edx+30h], eax
mov     eax, [esp+88h+var_5C]
mov     [edx+34h], eax
fld     [esp+88h+var_58]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+18h]
mov     eax, [esp+88h+var_74]
mov     [edx+0Ch], ax
mov     eax, [esp+88h+var_64]
mov     [edx+14h], ax
mov     eax, [esp+88h+var_54]
mov     [edx+1Ch], ax
mov     eax, [esp+88h+var_28]
and     eax, 0F7FFFFFFh
mov     [edx+4], eax
mov     [edx+0Eh], cx
mov     eax, [esp+88h+var_1C]
mov     [edx+16h], ax
fld     [esp+88h+var_78]
fadd    [esp+88h+var_68]
fadd    [esp+88h+var_58]
fdiv    ds:flt_50A4D8
call    __CHP
fistp   [esp+88h+var_30]
mov     eax, dword ptr [esp+88h+var_30]
shr     eax, 1
shl     eax, 2
mov     ecx, ds:dword_77E6FC

loc_4EC67F:
add     eax, ecx
mov     ecx, [eax]
mov     [edx], ecx
jmp     loc_4EC8D9

loc_4EC68A:
mov     edx, ds:dword_77E6DC
lea     eax, [edx+48h]
mov     ds:dword_77E6DC, eax
mov     eax, [esp+88h+var_80]
mov     [edx+28h], eax
mov     eax, [esp+88h+var_7C]
mov     [edx+2Ch], eax
fld     [esp+88h+var_78]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+8]
mov     eax, [esp+88h+var_70]
mov     [edx+30h], eax
mov     eax, [esp+88h+var_6C]
mov     [edx+34h], eax
fld     [esp+88h+var_68]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+10h]
mov     eax, [esp+88h+var_50]
mov     [edx+38h], eax
mov     eax, [esp+88h+var_4C]
mov     [edx+3Ch], eax
fld     [esp+88h+var_48]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+18h]
mov     eax, [esp+88h+var_60]
mov     [edx+40h], eax
mov     eax, [esp+88h+var_5C]
mov     [edx+44h], eax
fld     [esp+88h+var_58]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+20h]
mov     eax, [esp+88h+var_74]
mov     [edx+0Ch], ax
mov     eax, [esp+88h+var_64]
mov     [edx+14h], ax
mov     eax, [esp+88h+var_44]
mov     [edx+1Ch], ax
mov     eax, [esp+88h+var_54]
mov     [edx+24h], ax
mov     eax, [esp+88h+var_28]
mov     [edx+4], eax
mov     [edx+0Eh], cx
mov     eax, [esp+88h+var_1C]
mov     [edx+16h], ax
fld     [esp+88h+var_78]
fadd    [esp+88h+var_68]
fadd    [esp+88h+var_58]
fadd    [esp+88h+var_48]
fmul    ds:flt_50A4D4
call    __CHP
fistp   [esp+88h+var_30]
mov     ecx, dword ptr [esp+88h+var_30]
shr     ecx, 1
shl     ecx, 2
mov     eax, ds:dword_77E6FC
jmp     loc_4EC67F

loc_4EC769:
mov     edx, ds:dword_77E6DC
lea     eax, [edx+48h]
mov     ds:dword_77E6DC, eax
mov     eax, [esp+88h+var_80]
mov     [edx+28h], eax
mov     eax, [esp+88h+var_7C]
mov     [edx+2Ch], eax
fld     [esp+88h+var_78]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+8]
mov     eax, [esp+88h+var_70]
mov     [edx+30h], eax
mov     eax, [esp+88h+var_6C]
mov     [edx+34h], eax
fld     [esp+88h+var_68]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+10h]
mov     eax, [esp+88h+var_40]
mov     [edx+38h], eax
mov     eax, [esp+88h+var_3C]
mov     [edx+3Ch], eax
fld     [esp+88h+var_38]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+18h]
mov     eax, [esp+88h+var_60]
mov     [edx+40h], eax
mov     eax, [esp+88h+var_5C]
mov     [edx+44h], eax
fld     [esp+88h+var_58]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+20h]
mov     eax, [esp+88h+var_74]
mov     [edx+0Ch], ax
mov     eax, [esp+88h+var_64]
mov     [edx+14h], ax
mov     eax, [esp+88h+var_34]
mov     [edx+1Ch], ax
mov     eax, [esp+88h+var_54]
mov     [edx+24h], ax
mov     eax, [esp+88h+var_28]
mov     [edx+4], eax
mov     ebx, ecx
mov     [edx+0Eh], cx
mov     esi, [esp+88h+var_1C]
mov     [edx+16h], si
mov     ecx, ds:dword_77E6DC
lea     eax, [ecx+38h]
mov     ds:dword_77E6DC, eax
mov     [edx], ecx
mov     eax, [esp+88h+var_60]
mov     [ecx+20h], eax
mov     eax, [esp+88h+var_5C]
mov     [ecx+24h], eax
fld     [esp+88h+var_58]
fmul    ds:flt_50A4D0
fstp    dword ptr [ecx+8]
mov     eax, [esp+88h+var_50]
mov     [ecx+28h], eax
mov     eax, [esp+88h+var_4C]
mov     [ecx+2Ch], eax
fld     [esp+88h+var_48]
fmul    ds:flt_50A4D0
fstp    dword ptr [ecx+10h]
mov     eax, [esp+88h+var_40]
mov     [ecx+30h], eax
mov     eax, [esp+88h+var_3C]
mov     [ecx+34h], eax
fld     [esp+88h+var_38]
fmul    ds:flt_50A4D0
fstp    dword ptr [ecx+18h]
mov     eax, [esp+88h+var_54]
mov     [ecx+0Ch], ax
mov     eax, [esp+88h+var_44]
mov     [ecx+14h], ax
mov     eax, [esp+88h+var_34]
mov     [ecx+1Ch], ax
mov     eax, [esp+88h+var_28]
and     eax, 0F7FFFFFFh
mov     [ecx+4], eax
mov     [ecx+0Eh], bx
mov     [ecx+16h], si
fld     [esp+88h+var_78]
fadd    [esp+88h+var_68]
fadd    [esp+88h+var_58]
fadd    [esp+88h+var_38]
fmul    ds:flt_50A4D4
call    __CHP
fistp   [esp+88h+var_30]
mov     eax, dword ptr [esp+88h+var_30]
shr     eax, 1
shl     eax, 2
mov     ebx, ds:dword_77E6FC
add     eax, ebx
mov     ebx, [eax]
mov     [ecx], ebx

loc_4EC8D9:
mov     [eax], edx

loc_4EC8DB:
add     ebp, 0Ch
jmp     loc_4EC50F

loc_4EC8E3:
add     esp, 78h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4EC261 endp




sub_4EC8EB proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx
push    ecx
push    ebp
sub     esp, 18h
mov     ecx, eax
mov     [esp+24h+var_10], edx
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
lea     eax, [ecx+34h]
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+24h+var_14]
call    sub_4F04DB
xor     eax, eax
mov     ax, ds:word_77EAB2
mov     edx, [esp+24h+var_14]
cmp     eax, edx
jl      loc_4EC9FD
cmp     edx, 30h ; '0'
jl      loc_4EC9FD
cmp     edx, 708h
jle     short loc_4EC94D
mov     eax, [ecx]
mov     eax, [eax+78h]
jmp     short loc_4EC961

loc_4EC94D:
cmp     edx, 2BCh
jle     short loc_4EC95C
mov     eax, [ecx]
mov     eax, [eax+74h]
jmp     short loc_4EC961

loc_4EC95C:
mov     eax, [ecx]
mov     eax, [eax+70h]

loc_4EC961:
add     eax, 14h
mov     ds:dword_560AD0, eax
lea     edx, [ecx+4]
mov     ebx, offset unk_564A6C
mov     eax, offset unk_564CB4
call    sub_4EF388
lea     edx, [ecx+34h]
mov     ebx, esp
mov     eax, offset unk_564CB4
call    sub_4EF1FB
mov     eax, ds:dword_564CD8
mov     ebp, [esp+24h+var_24]
add     eax, ebp
mov     ds:dword_564A90, eax
mov     eax, ds:dword_564CDC
mov     edx, [esp+24h+var_20]
add     eax, edx
mov     ds:dword_564A94, eax
mov     eax, ds:dword_564CE0
mov     ebx, [esp+24h+var_1C]
add     eax, ebx
mov     ds:dword_564A98, eax
mov     eax, offset unk_564A6C
call    sub_4EFB33
mov     eax, offset unk_564A6C
call    sub_4EFB43
test    byte ptr [esp+24h+var_10], 20h
jz      short loc_4EC9F0
mov     edx, [ecx+40h]
mov     eax, [ecx+38h]
sar     eax, 10h
mov     ecx, eax
shl     ecx, 2
add     ecx, eax
shl     ecx, 2
mov     eax, ds:dword_560AD0
add     eax, ecx
jmp     short loc_4EC9F8

loc_4EC9F0:
mov     edx, [ecx+40h]
mov     eax, ds:dword_560AD0

loc_4EC9F8:
call    sub_4ECA04

loc_4EC9FD:
add     esp, 18h
pop     ebp
pop     ecx
pop     ebx
retn
sub_4EC8EB endp




sub_4ECA04 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 10h
push    eax
mov     ecx, edx
mov     eax, [eax]
and     eax, 0FFh
mov     [esp+28h+var_18], eax
mov     ebp, [esp+28h+var_28]
mov     ebp, [ebp+10h]
mov     edx, [esp+28h+var_28]
mov     edx, [edx+4]
mov     [esp+28h+var_1C], 0B0000000h
lea     eax, [esp+28h+var_1C]
call    sub_4EFC91

loc_4ECA37:
cmp     [esp+28h+var_18], 0
jbe     loc_4ECB03
xor     eax, eax
mov     al, [edx+8]
shl     eax, 3
lea     esi, [eax+ebp]
mov     edi, offset unk_560A98
movsd
movsd
xor     eax, eax
mov     al, [edx+9]
shl     eax, 3
lea     esi, [eax+ebp]
mov     edi, offset unk_560AA0
movsd
movsd
xor     eax, eax
mov     al, [edx+0Ah]
shl     eax, 3
lea     esi, [eax+ebp]
mov     edi, offset unk_560AA8
movsd
movsd
mov     eax, offset unk_560A98
call    sub_4EFD0C
call    sub_4EFE75
call    sub_4EFD2E
dec     [esp+28h+var_18]
lea     eax, [esp+28h+var_20]
call    sub_4EFFE2
cmp     [esp+28h+var_20], 0
jle     short loc_4ECAF8
mov     ebx, ds:dword_77E6DC
lea     eax, [ebx+34h]
mov     ds:dword_77E6DC, eax
mov     eax, ebx
call    sub_4F0098
call    sub_4EFB65
lea     eax, [esp+28h+var_24]
call    sub_4EFFED
mov     eax, ebx
call    sub_4F02E1
mov     eax, [esp+28h+var_24]
shr     eax, 1
shl     eax, 2
mov     esi, ds:dword_77E6FC
add     eax, esi
mov     esi, [eax]
mov     [ebx], esi
mov     [eax], ebx
mov     eax, [ecx]
mov     esi, [esp+28h+var_1C]
or      esi, eax
mov     [ebx+4], esi
mov     eax, [ecx+4]
mov     [ebx+0Ch], eax
mov     eax, [ecx+8]
mov     [ebx+14h], eax

loc_4ECAF8:
add     ecx, 0Ch
add     edx, 0Ch
jmp     loc_4ECA37

loc_4ECB03:
mov     eax, [esp+28h+var_28]
mov     eax, [eax]
and     eax, 0FF00h
shr     eax, 8
mov     [esp+28h+var_18], eax
mov     edx, [esp+28h+var_28]
mov     edx, [edx+8]
mov     [esp+28h+var_1C], 0B8000000h
lea     eax, [esp+28h+var_1C]
call    sub_4EFC91

loc_4ECB2B:
cmp     [esp+28h+var_18], 0
jbe     loc_4EAF6E
xor     eax, eax
mov     al, [edx+8]
shl     eax, 3
lea     esi, [eax+ebp]
mov     edi, offset unk_560A98
movsd
movsd
xor     eax, eax
mov     al, [edx+9]
shl     eax, 3
lea     esi, [eax+ebp]
mov     edi, offset unk_560AA0
movsd
movsd
xor     eax, eax
mov     al, [edx+0Ah]
shl     eax, 3
lea     esi, [eax+ebp]
mov     edi, offset unk_560AA8
movsd
movsd
movzx   esi, byte ptr [edx+0Bh]
shl     esi, 3
add     esi, ebp
mov     edi, offset unk_560AB0
movsd
movsd
mov     eax, offset unk_560A98
call    sub_4EFD0C
call    sub_4EFE75
call    sub_4EFD2E
dec     [esp+28h+var_18]
lea     eax, [esp+28h+var_20]
call    sub_4EFFE2
cmp     [esp+28h+var_20], 0
jle     short loc_4ECC18
mov     ebx, ds:dword_77E6DC
lea     eax, [ebx+44h]
mov     ds:dword_77E6DC, eax
mov     eax, ebx
call    sub_4F00B3
mov     eax, offset unk_560AB0
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [ebx+3Ch]
call    sub_4F0003
call    sub_4EFB8D
lea     eax, [esp+28h+var_24]
call    sub_4EFFED
mov     eax, ebx
call    sub_4F0340
mov     esi, [esp+28h+var_24]
shr     esi, 1
shl     esi, 2
mov     eax, ds:dword_77E6FC
add     eax, esi
mov     esi, [eax]
mov     [ebx], esi
mov     [eax], ebx
mov     eax, [ecx]
mov     esi, [esp+28h+var_1C]
or      esi, eax
mov     [ebx+4], esi
mov     eax, [ecx+4]
mov     [ebx+0Ch], eax
mov     eax, [ecx+8]
mov     [ebx+14h], eax
mov     eax, [ecx+0Ch]
mov     [ebx+1Ch], eax

loc_4ECC18:
add     ecx, 10h
add     edx, 0Ch
jmp     loc_4ECB2B
sub_4ECA04 endp




sub_4ECC23 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx
push    ecx
push    ebp
sub     esp, 18h
mov     ecx, eax
mov     [esp+24h+var_10], edx
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
lea     eax, [ecx+34h]
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+24h+var_14]
call    sub_4F04DB
xor     eax, eax
mov     ax, ds:word_77EAB2
mov     edx, [esp+24h+var_14]
cmp     eax, edx
jl      loc_4EC9FD
cmp     edx, 30h ; '0'
jl      loc_4EC9FD
cmp     edx, 708h
jle     short loc_4ECC85
mov     eax, [ecx]
mov     eax, [eax+78h]
jmp     short loc_4ECC99

loc_4ECC85:
cmp     edx, 2BCh
jle     short loc_4ECC94
mov     eax, [ecx]
mov     eax, [eax+74h]
jmp     short loc_4ECC99

loc_4ECC94:
mov     eax, [ecx]
mov     eax, [eax+70h]

loc_4ECC99:
add     eax, 14h
mov     ds:dword_560AD0, eax
lea     edx, [ecx+4]
mov     ebx, offset unk_564A6C
mov     eax, offset unk_564CB4
call    sub_4EF388
lea     edx, [ecx+34h]
mov     ebx, esp
mov     eax, offset unk_564CB4
call    sub_4EF1FB
mov     eax, ds:dword_564CD8
mov     ebp, [esp+24h+var_24]
add     eax, ebp
mov     ds:dword_564A90, eax
mov     eax, ds:dword_564CDC
mov     edx, [esp+24h+var_20]
add     eax, edx
mov     ds:dword_564A94, eax
mov     eax, ds:dword_564CE0
mov     ebx, [esp+24h+var_1C]
add     eax, ebx
mov     ds:dword_564A98, eax
mov     eax, offset unk_564A6C
call    sub_4EFB33
mov     eax, offset unk_564A6C
call    sub_4EFB43
test    byte ptr [esp+24h+var_10], 20h
jz      short loc_4ECD2B
mov     ebx, [ecx+3Ch]
mov     edx, [ecx+40h]
mov     eax, [ecx+38h]
sar     eax, 10h
mov     ecx, eax
shl     ecx, 2
add     ecx, eax
shl     ecx, 2
mov     eax, ds:dword_560AD0
add     eax, ecx
jmp     short loc_4ECD36

loc_4ECD2B:
mov     ebx, [ecx+3Ch]
mov     edx, [ecx+40h]
mov     eax, ds:dword_560AD0

loc_4ECD36:
call    sub_4ECD40
jmp     loc_4EC9FD
sub_4ECC23 endp




sub_4ECD40 proc near

var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 30h
push    eax
mov     ebp, edx
mov     esi, ebx
mov     eax, [eax]
and     eax, 0FFh
mov     [esp+44h+var_20], eax
mov     eax, [esp+44h+var_44]
mov     eax, [eax+10h]
mov     [esp+44h+var_1C], eax
mov     eax, [esp+44h+var_44]
mov     eax, [eax+0Ch]
and     al, 9Fh
mov     [esp+44h+var_28], eax
mov     edx, [esp+44h+var_44]
mov     edx, [edx+4]
mov     eax, ebx
and     eax, 0FF000000h
or      eax, 0B4000000h
mov     [esp+44h+var_3C], eax
mov     eax, ebx
and     eax, 0FFh
mov     [esp+44h+var_18], eax
and     ebx, 0FF00h
shr     ebx, 8
mov     eax, esi
and     eax, 0FF0000h
shr     eax, 10h
mov     [esp+44h+var_14], eax
lea     eax, [esp+44h+var_3C]
call    sub_4EFC91

loc_4ECDAE:
cmp     [esp+44h+var_20], 0
jbe     loc_4ECF88
xor     eax, eax
mov     al, [edx+8]
mov     [esp+44h+var_38], eax
xor     eax, eax
mov     al, [edx+9]
mov     [esp+44h+var_34], eax
xor     eax, eax
mov     al, [edx+0Ah]
mov     [esp+44h+var_24], eax
mov     esi, [esp+44h+var_38]
shl     esi, 3
add     esi, [esp+44h+var_1C]
mov     edi, offset unk_560A98
movsd
movsd
mov     esi, [esp+44h+var_34]
shl     esi, 3
mov     eax, [esp+44h+var_1C]
add     esi, eax
mov     edi, offset unk_560AA0
movsd
movsd
mov     esi, [esp+44h+var_24]
shl     esi, 3
add     esi, eax
mov     edi, offset unk_560AA8
movsd
movsd
mov     eax, offset unk_560A98
call    sub_4EFD0C
call    sub_4EFE75
mov     ecx, ds:dword_77E6DC
dec     [esp+44h+var_20]
lea     eax, [ecx+40h]
mov     ds:dword_77E6DC, eax
mov     eax, ecx
call    loc_4F0075
call    sub_4EFB65
lea     eax, [esp+44h+var_40]
call    sub_4EFFED
mov     eax, ecx
call    sub_4F03BE
mov     esi, [esp+44h+var_40]
shr     esi, 1
shl     esi, 2
mov     eax, ds:dword_77E6FC
add     eax, esi
mov     esi, [eax]
mov     [ecx], esi
mov     [eax], ecx
mov     esi, [esp+44h+var_38]
mov     esi, [ebp+esi*4+0]
mov     eax, esi
and     eax, 0FFh
imul    eax, [esp+44h+var_18]
shr     eax, 7
and     eax, 0FFh
mov     edi, esi
and     edi, 0FF00h
imul    edi, ebx
shr     edi, 7
and     edi, 0FF00h
or      eax, edi
and     esi, 0FF0000h
imul    esi, [esp+44h+var_14]
shr     esi, 7
and     esi, 0FF0000h
or      esi, eax
mov     eax, [esp+44h+var_3C]
or      eax, esi
mov     [ecx+4], eax
mov     esi, [esp+44h+var_34]
mov     esi, [ebp+esi*4+0]
mov     eax, esi
and     eax, 0FFh
imul    eax, [esp+44h+var_18]
shr     eax, 7
and     eax, 0FFh
mov     [esp+44h+var_30], eax
mov     eax, esi
and     eax, 0FF00h
imul    eax, ebx
shr     eax, 7
and     eax, 0FF00h
or      eax, [esp+44h+var_30]
and     esi, 0FF0000h
imul    esi, [esp+44h+var_14]
shr     esi, 7
and     esi, 0FF0000h
or      esi, eax
mov     [ecx+10h], esi
mov     esi, [esp+44h+var_24]
mov     esi, [ebp+esi*4+0]
mov     eax, esi
and     eax, 0FFh
imul    eax, [esp+44h+var_18]
shr     eax, 7
and     eax, 0FFh
mov     [esp+44h+var_30], eax
mov     eax, esi
and     eax, 0FF00h
imul    eax, ebx
shr     eax, 7
and     eax, 0FF00h
or      eax, [esp+44h+var_30]
and     esi, 0FF0000h
imul    esi, [esp+44h+var_14]
shr     esi, 7
and     esi, 0FF0000h
or      esi, eax
mov     [ecx+1Ch], esi
mov     eax, [esp+44h+var_28]
xor     ax, ax
mov     [esp+44h+var_30], eax
xor     eax, eax
mov     ax, [edx]
mov     edi, [esp+44h+var_30]
or      edi, eax
mov     [ecx+0Ch], edi
xor     eax, eax
mov     ax, [edx+2]
mov     edi, [esp+44h+var_28]
shl     edi, 10h
or      edi, eax
mov     [ecx+18h], edi
xor     eax, eax
mov     ax, [edx+4]
mov     [ecx+24h], eax
add     edx, 0Ch
jmp     loc_4ECDAE

loc_4ECF88:
mov     eax, [esp+44h+var_44]
mov     eax, [eax]
and     eax, 0FF00h
shr     eax, 8
mov     [esp+44h+var_20], eax
mov     edx, [esp+44h+var_44]
mov     edx, [edx+8]
and     esi, 0FF000000h
or      esi, 0BC000000h
mov     [esp+44h+var_3C], esi
lea     eax, [esp+44h+var_3C]
call    sub_4EFC91

loc_4ECFB8:
cmp     [esp+44h+var_20], 0
jbe     loc_4ED214
xor     eax, eax
mov     al, [edx+8]
mov     [esp+44h+var_38], eax
xor     eax, eax
mov     al, [edx+9]
mov     [esp+44h+var_34], eax
xor     eax, eax
mov     al, [edx+0Ah]
mov     [esp+44h+var_24], eax
xor     eax, eax
mov     al, [edx+0Bh]
mov     [esp+44h+var_2C], eax
mov     esi, [esp+44h+var_38]
shl     esi, 3
mov     ecx, [esp+44h+var_1C]
add     esi, ecx
mov     edi, offset unk_560A98
movsd
movsd
mov     esi, [esp+44h+var_34]
shl     esi, 3
add     esi, ecx
mov     edi, offset unk_560AA0
movsd
movsd
mov     esi, [esp+44h+var_24]
shl     esi, 3
add     esi, ecx
mov     edi, offset unk_560AA8
movsd
movsd
mov     esi, eax
shl     esi, 3
add     esi, ecx
mov     edi, offset unk_560AB0
movsd
movsd
mov     eax, offset unk_560A98
call    sub_4EFD0C
call    sub_4EFE75
mov     ecx, ds:dword_77E6DC
dec     [esp+44h+var_20]
lea     eax, [ecx+54h]
mov     ds:dword_77E6DC, eax
mov     eax, ecx
call    sub_4F00CE
mov     eax, offset unk_560AB0
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [ecx+4Ch]
call    sub_4F0003
call    sub_4EFB8D
lea     eax, [esp+44h+var_40]
call    sub_4EFFED
mov     eax, ecx
call    sub_4F041D
mov     eax, [esp+44h+var_40]
shr     eax, 1
shl     eax, 2
mov     esi, ds:dword_77E6FC
add     eax, esi
mov     esi, [eax]
mov     [ecx], esi
mov     [eax], ecx
mov     esi, [esp+44h+var_38]
mov     esi, [ebp+esi*4+0]
mov     eax, esi
and     eax, 0FFh
imul    eax, [esp+44h+var_18]
shr     eax, 7
and     eax, 0FFh
mov     [esp+44h+var_30], eax
mov     eax, esi
and     eax, 0FF00h
imul    eax, ebx
shr     eax, 7
and     eax, 0FF00h
or      eax, [esp+44h+var_30]
and     esi, 0FF0000h
imul    esi, [esp+44h+var_14]
shr     esi, 7
and     esi, 0FF0000h
or      esi, eax
mov     eax, [esp+44h+var_3C]
or      eax, esi
mov     [ecx+4], eax
mov     esi, [esp+44h+var_34]
mov     esi, [ebp+esi*4+0]
mov     eax, esi
and     eax, 0FFh
imul    eax, [esp+44h+var_18]
shr     eax, 7
and     eax, 0FFh
mov     [esp+44h+var_30], eax
mov     eax, esi
and     eax, 0FF00h
imul    eax, ebx
shr     eax, 7
and     eax, 0FF00h
or      eax, [esp+44h+var_30]
and     esi, 0FF0000h
imul    esi, [esp+44h+var_14]
shr     esi, 7
and     esi, 0FF0000h
or      esi, eax
mov     [ecx+10h], esi
mov     esi, [esp+44h+var_24]
mov     esi, [ebp+esi*4+0]
mov     eax, esi
and     eax, 0FFh
imul    eax, [esp+44h+var_18]
shr     eax, 7
and     eax, 0FFh
mov     edi, esi
and     edi, 0FF00h
imul    edi, ebx
shr     edi, 7
and     edi, 0FF00h
or      eax, edi
and     esi, 0FF0000h
imul    esi, [esp+44h+var_14]
shr     esi, 7
and     esi, 0FF0000h
or      esi, eax
mov     [ecx+1Ch], esi
mov     esi, [esp+44h+var_2C]
mov     esi, [ebp+esi*4+0]
mov     eax, esi
and     eax, 0FFh
imul    eax, [esp+44h+var_18]
shr     eax, 7
and     eax, 0FFh
mov     [esp+44h+var_30], eax
mov     eax, esi
and     eax, 0FF00h
imul    eax, ebx
shr     eax, 7
and     eax, 0FF00h
mov     edi, [esp+44h+var_30]
or      edi, eax
and     esi, 0FF0000h
mov     eax, [esp+44h+var_14]
imul    eax, esi
shr     eax, 7
and     eax, 0FF0000h
mov     esi, edi
or      esi, eax
mov     [ecx+28h], esi
mov     esi, [esp+44h+var_28]
xor     si, si
xor     eax, eax
mov     ax, [edx]
or      esi, eax
mov     [ecx+0Ch], esi
xor     eax, eax
mov     ax, [edx+2]
mov     esi, [esp+44h+var_28]
shl     esi, 10h
or      esi, eax
mov     [ecx+18h], esi
xor     eax, eax
mov     ax, [edx+4]
mov     [ecx+24h], eax
xor     eax, eax
mov     ax, [edx+6]
mov     [ecx+30h], eax
add     edx, 0Ch
jmp     loc_4ECFB8

loc_4ED214:
add     esp, 34h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4ECD40 endp




sub_4ED21C proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx
push    ecx
push    ebp
sub     esp, 18h
mov     ecx, eax
mov     [esp+24h+var_10], edx
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
lea     eax, [ecx+34h]
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+24h+var_14]
call    sub_4F04DB
xor     eax, eax
mov     ax, ds:word_77EAB2
mov     edx, [esp+24h+var_14]
cmp     eax, edx
jl      loc_4EC9FD
cmp     edx, 30h ; '0'
jl      loc_4EC9FD
cmp     edx, 708h
jle     short loc_4ED27E
mov     eax, [ecx]
mov     eax, [eax+78h]
jmp     short loc_4ED292

loc_4ED27E:
cmp     edx, 2BCh
jle     short loc_4ED28D
mov     eax, [ecx]
mov     eax, [eax+74h]
jmp     short loc_4ED292

loc_4ED28D:
mov     eax, [ecx]
mov     eax, [eax+70h]

loc_4ED292:
add     eax, 14h
mov     ds:dword_560AD0, eax
lea     edx, [ecx+4]
mov     ebx, offset unk_564A6C
mov     eax, offset unk_564CB4
call    sub_4EF388
lea     edx, [ecx+34h]
mov     ebx, esp
mov     eax, offset unk_564CB4
call    sub_4EF1FB
mov     eax, ds:dword_564CD8
mov     ebp, [esp+24h+var_24]
add     eax, ebp
mov     ds:dword_564A90, eax
mov     eax, ds:dword_564CDC
mov     edx, [esp+24h+var_20]
add     eax, edx
mov     ds:dword_564A94, eax
mov     eax, ds:dword_564CE0
mov     ebx, [esp+24h+var_1C]
add     eax, ebx
mov     ds:dword_564A98, eax
mov     eax, offset unk_564A6C
call    sub_4EFB33
mov     eax, offset unk_564A6C
call    sub_4EFB43
test    byte ptr [esp+24h+var_10], 20h
jz      short loc_4ED324
mov     ebx, [ecx+3Ch]
mov     edx, [ecx+40h]
mov     eax, [ecx+38h]
sar     eax, 10h
mov     ecx, eax
shl     ecx, 2
add     ecx, eax
shl     ecx, 2
mov     eax, ds:dword_560AD0
add     eax, ecx
jmp     short loc_4ED32F

loc_4ED324:
mov     ebx, [ecx+3Ch]
mov     edx, [ecx+40h]
mov     eax, ds:dword_560AD0

loc_4ED32F:
call    sub_4ED339
jmp     loc_4EC9FD
sub_4ED21C endp




sub_4ED339 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 24h
push    eax
mov     ebp, edx
mov     eax, ebx
mov     edx, [esp+38h+var_38]
mov     edx, [edx]
and     edx, 0FFh
mov     [esp+38h+var_20], edx
mov     edx, [esp+38h+var_38]
mov     edx, [edx+10h]
mov     [esp+38h+var_14], edx
mov     edx, [esp+38h+var_38]
mov     edx, [edx+0Ch]
mov     [esp+38h+var_24], edx
mov     edx, [esp+38h+var_38]
mov     edx, [edx+4]
mov     [esp+38h+var_30], 0B6000000h
mov     ecx, ebx
and     ecx, 0FFh
mov     [esp+38h+var_1C], ecx
and     ebx, 0FF00h
shr     ebx, 8
and     eax, 0FF0000h
shr     eax, 10h
mov     [esp+38h+var_18], eax
lea     eax, [esp+38h+var_30]
call    sub_4EFC91

loc_4ED3A0:
cmp     [esp+38h+var_20], 0
jbe     loc_4ED55B
movzx   esi, byte ptr [edx+8]
xor     eax, eax
mov     al, [edx+9]
xor     ecx, ecx
mov     cl, [edx+0Ah]
shl     esi, 3
add     esi, [esp+38h+var_14]
mov     edi, offset unk_560A98
movsd
movsd
shl     eax, 3
mov     esi, [esp+38h+var_14]
add     esi, eax
mov     edi, offset unk_560AA0
movsd
movsd
shl     ecx, 3
mov     esi, [esp+38h+var_14]
add     esi, ecx
mov     edi, offset unk_560AA8
movsd
movsd
mov     eax, offset unk_560A98
call    sub_4EFD0C
call    sub_4EFE75
mov     ecx, ds:dword_77E6DC
dec     [esp+38h+var_20]
lea     eax, [ecx+40h]
mov     ds:dword_77E6DC, eax
mov     eax, ecx
call    loc_4F0075
call    sub_4EFB65
lea     eax, [esp+38h+var_34]
call    sub_4EFFED
mov     eax, ecx
call    sub_4F03BE
mov     eax, [esp+38h+var_34]
shr     eax, 1
shl     eax, 2
mov     esi, ds:dword_77E6FC
add     eax, esi
mov     esi, [eax]
mov     [ecx], esi
mov     [eax], ecx
mov     eax, [ebp+0]
mov     esi, eax
and     esi, 0FFh
imul    esi, [esp+38h+var_1C]
shr     esi, 7
and     esi, 0FFh
mov     edi, eax
and     edi, 0FF00h
imul    edi, ebx
shr     edi, 7
and     edi, 0FF00h
or      esi, edi
and     eax, 0FF0000h
imul    eax, [esp+38h+var_18]
shr     eax, 7
and     eax, 0FF0000h
or      eax, esi
mov     esi, [esp+38h+var_30]
or      esi, eax
mov     [ecx+4], esi
mov     eax, [ebp+4]
mov     esi, eax
and     esi, 0FFh
imul    esi, [esp+38h+var_1C]
shr     esi, 7
and     esi, 0FFh
mov     [esp+38h+var_28], esi
mov     esi, eax
and     esi, 0FF00h
imul    esi, ebx
shr     esi, 7
and     esi, 0FF00h
or      esi, [esp+38h+var_28]
and     eax, 0FF0000h
imul    eax, [esp+38h+var_18]
shr     eax, 7
and     eax, 0FF0000h
or      eax, esi
mov     [ecx+10h], eax
mov     eax, [ebp+8]
mov     esi, eax
and     esi, 0FFh
imul    esi, [esp+38h+var_1C]
shr     esi, 7
and     esi, 0FFh
mov     [esp+38h+var_28], esi
mov     esi, eax
and     esi, 0FF00h
imul    esi, ebx
shr     esi, 7
and     esi, 0FF00h
or      esi, [esp+38h+var_28]
and     eax, 0FF0000h
imul    eax, [esp+38h+var_18]
shr     eax, 7
and     eax, 0FF0000h
or      eax, esi
mov     [ecx+1Ch], eax
mov     eax, [esp+38h+var_24]
xor     ax, ax
xor     esi, esi
mov     si, [edx]
or      eax, esi
mov     [ecx+0Ch], eax
xor     eax, eax
mov     ax, [edx+2]
mov     esi, [esp+38h+var_24]
shl     esi, 10h
or      eax, esi
or      eax, 200000h
mov     [ecx+18h], eax
xor     eax, eax
mov     ax, [edx+4]
mov     [ecx+24h], eax
add     ebp, 0Ch
add     edx, 0Ch
jmp     loc_4ED3A0

loc_4ED55B:
mov     eax, [esp+38h+var_38]
mov     eax, [eax]
and     eax, 0FF00h
shr     eax, 8
mov     [esp+38h+var_20], eax
mov     edx, [esp+38h+var_38]
mov     edx, [edx+8]
mov     [esp+38h+var_30], 0BE000000h
lea     eax, [esp+38h+var_30]
call    sub_4EFC91

loc_4ED583:
cmp     [esp+38h+var_20], 0
jbe     loc_4ED7CA
movzx   esi, byte ptr [edx+8]
xor     eax, eax
mov     al, [edx+9]
xor     ecx, ecx
mov     cl, [edx+0Ah]
movzx   edi, byte ptr [edx+0Bh]
mov     [esp+38h+var_2C], edi
shl     esi, 3
add     esi, [esp+38h+var_14]
mov     edi, offset unk_560A98
movsd
movsd
shl     eax, 3
mov     esi, [esp+38h+var_14]
add     esi, eax
mov     edi, offset unk_560AA0
movsd
movsd
shl     ecx, 3
mov     esi, [esp+38h+var_14]
add     esi, ecx
mov     edi, offset unk_560AA8
movsd
movsd
mov     esi, [esp+38h+var_2C]
shl     esi, 3
add     esi, [esp+38h+var_14]
mov     edi, offset unk_560AB0
movsd
movsd
mov     eax, offset unk_560A98
call    sub_4EFD0C
call    sub_4EFE75
mov     ecx, ds:dword_77E6DC
dec     [esp+38h+var_20]
lea     eax, [ecx+54h]
mov     ds:dword_77E6DC, eax
mov     eax, ecx
call    sub_4F00CE
mov     eax, offset unk_560AB0
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [ecx+4Ch]
call    sub_4F0003
call    sub_4EFB8D
lea     eax, [esp+38h+var_34]
call    sub_4EFFED
mov     eax, ecx
call    sub_4F041D
mov     eax, [esp+38h+var_34]
shr     eax, 1
shl     eax, 2
mov     esi, ds:dword_77E6FC
add     eax, esi
mov     esi, [eax]
mov     [ecx], esi
mov     [eax], ecx
mov     eax, [ebp+0]
mov     esi, eax
and     esi, 0FFh
imul    esi, [esp+38h+var_1C]
shr     esi, 7
and     esi, 0FFh
mov     [esp+38h+var_28], esi
mov     esi, eax
and     esi, 0FF00h
imul    esi, ebx
shr     esi, 7
and     esi, 0FF00h
or      esi, [esp+38h+var_28]
and     eax, 0FF0000h
imul    eax, [esp+38h+var_18]
shr     eax, 7
and     eax, 0FF0000h
or      eax, esi
mov     esi, [esp+38h+var_30]
or      esi, eax
mov     [ecx+4], esi
mov     eax, [ebp+4]
mov     esi, eax
and     esi, 0FFh
imul    esi, [esp+38h+var_1C]
shr     esi, 7
and     esi, 0FFh
mov     [esp+38h+var_28], esi
mov     esi, eax
and     esi, 0FF00h
imul    esi, ebx
shr     esi, 7
and     esi, 0FF00h
or      esi, [esp+38h+var_28]
and     eax, 0FF0000h
imul    eax, [esp+38h+var_18]
shr     eax, 7
and     eax, 0FF0000h
or      eax, esi
mov     [ecx+10h], eax
mov     eax, [ebp+8]
mov     esi, eax
and     esi, 0FFh
imul    esi, [esp+38h+var_1C]
shr     esi, 7
and     esi, 0FFh
mov     [esp+38h+var_28], esi
mov     esi, eax
and     esi, 0FF00h
imul    esi, ebx
shr     esi, 7
and     esi, 0FF00h
or      esi, [esp+38h+var_28]
and     eax, 0FF0000h
imul    eax, [esp+38h+var_18]
shr     eax, 7
and     eax, 0FF0000h
or      eax, esi
mov     [ecx+1Ch], eax
mov     eax, [ebp+0Ch]
mov     esi, eax
and     esi, 0FFh
imul    esi, [esp+38h+var_1C]
shr     esi, 7
and     esi, 0FFh
mov     [esp+38h+var_28], esi
mov     esi, eax
and     esi, 0FF00h
imul    esi, ebx
shr     esi, 7
and     esi, 0FF00h
or      esi, [esp+38h+var_28]
and     eax, 0FF0000h
imul    eax, [esp+38h+var_18]
shr     eax, 7
and     eax, 0FF0000h
or      eax, esi
mov     [ecx+28h], eax
mov     esi, [esp+38h+var_24]
xor     si, si
xor     eax, eax
mov     ax, [edx]
or      esi, eax
mov     [ecx+0Ch], esi
xor     eax, eax
mov     ax, [edx+2]
mov     esi, [esp+38h+var_24]
shl     esi, 10h
or      eax, esi
or      eax, 200000h
mov     [ecx+18h], eax
xor     eax, eax
mov     ax, [edx+4]
mov     [ecx+24h], eax
xor     eax, eax
mov     ax, [edx+6]
mov     [ecx+30h], eax
add     ebp, 10h
add     edx, 0Ch
jmp     loc_4ED583

loc_4ED7CA:
add     esp, 28h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4ED339 endp




sub_4ED7D2 proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    esi
push    edi
sub     esp, 8
mov     esi, eax
mov     [esp+10h+var_C], edx
mov     [esp+10h+var_10], ecx
mov     ecx, ds:dword_77EA44
cmp     ecx, 40h ; '@'
jnb     loc_4ED885
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
mov     ax, [eax+14h]
mov     ds:word_750AAC[edx], ax
cmp     byte ptr [esi+76h], 0
jz      short loc_4ED816
mov     edi, [esi+14h]
sar     edi, 10h
mov     ax, [esi+16h]
jmp     short loc_4ED81F

loc_4ED816:
mov     eax, esi
call    sub_42C592
mov     edi, eax

loc_4ED81F:
mov     ds:word_750AAE[edx], ax
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     dx, [esi+18h]
mov     word ptr ds:dword_750AB0[eax*4], dx
mov     dx, [esi+56h]
sub     dx, [esi+116h]
and     dh, 0Fh
and     edx, 0FFFFh
sar     ebx, 6
shl     ebx, 0Ch
or      edx, ebx
mov     word ptr ds:(dword_750AB0+2)[eax*4], dx
mov     edx, [esp+10h+var_10]
shl     edx, 0Eh
mov     ebx, [esp+10h+var_C]
or      edx, ebx
mov     word ptr ds:dword_750AB4[eax*4], dx
mov     cx, [esi+16h]
sub     edi, ecx
mov     word ptr ds:(dword_750AB4+2)[eax*4], di
inc     ds:dword_77EA44

loc_4ED885:
add     esp, 8
pop     edi
pop     esi
retn
sub_4ED7D2 endp




sub_4ED88B proc near

var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 8
mov     esi, eax
mov     edi, edx
mov     ebp, ebx
mov     [esp+14h+var_10], ecx
mov     edx, ds:dword_77EA44
cmp     edx, 40h ; '@'
jnb     loc_4ED957
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     bx, [esi+14h]
mov     ds:word_750AAC[eax], bx
cmp     byte ptr [esi+76h], 0
jz      short loc_4ED8D8
mov     ecx, [esi+14h]
sar     ecx, 10h
mov     bx, [esi+16h]
mov     ds:word_750AAE[eax], bx
jmp     short loc_4ED8FC

loc_4ED8D8:
mov     eax, esi
call    sub_42C592
mov     ecx, eax
mov     ebx, [esi+14h]
sar     ebx, 10h
cmp     eax, ebx
jge     short loc_4ED8ED
mov     ecx, ebx

loc_4ED8ED:
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ds:word_750AAE[eax*4], cx

loc_4ED8FC:
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     dx, [esi+18h]
mov     word ptr ds:dword_750AB0[eax*4], dx
mov     dx, [esi+56h]
and     dh, 0Fh
and     edx, 0FFFFh
mov     [esp+14h+var_14], edx
mov     edx, ebp
sar     edx, 6
shl     edx, 0Ch
or      edx, [esp+14h+var_14]
mov     word ptr ds:(dword_750AB0+2)[eax*4], dx
mov     edx, [esp+14h+var_10]
shl     edx, 0Eh
or      edx, edi
mov     word ptr ds:dword_750AB4[eax*4], dx
mov     dx, [esi+16h]
sub     ecx, edx
mov     word ptr ds:(dword_750AB4+2)[eax*4], cx

loc_4ED951:
inc     ds:dword_77EA44

loc_4ED957:
add     esp, 8
pop     ebp
pop     edi
pop     esi
retn
sub_4ED88B endp




sub_4ED95E proc near

var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 8
mov     edi, eax
mov     [esp+14h+var_14], edx
mov     ebp, ebx
mov     [esp+14h+var_10], ecx
mov     eax, ds:dword_77EA44
cmp     eax, 40h ; '@'
jnb     short loc_4ED957
mov     esi, eax
shl     esi, 2
sub     esi, eax
mov     ax, [edi]
mov     ds:word_750AAC[esi*4], ax
mov     ecx, 0FFFFh
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_42C5B7
mov     edx, eax
mov     ds:word_750AAE[esi*4], ax
mov     ax, [edi+4]
mov     word ptr ds:dword_750AB0[esi*4], ax
sar     ebp, 6
shl     ebp, 0Ch
mov     eax, [esp+14h+var_10]
and     ah, 0Fh
and     eax, 0FFFFh
or      eax, ebp
mov     word ptr ds:(dword_750AB0+2)[esi*4], ax
mov     ax, [edi+6]
shl     eax, 0Eh
mov     ebx, [esp+14h+var_14]
or      eax, ebx
mov     word ptr ds:dword_750AB4[esi*4], ax
mov     cx, [edi+2]
sub     edx, ecx
mov     word ptr ds:(dword_750AB4+2)[esi*4], dx
jmp     loc_4ED951
sub_4ED95E endp




sub_4ED9F4 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
xor     esi, esi
mov     ebp, ds:dword_77EA44

loc_4EDA05:
cmp     esi, ebp
jge     short loc_4EDA67
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
mov     edx, ds:dword_750AB0[eax]
sar     edx, 10h
mov     ebx, edx
and     ebx, 0F000h
shr     ebx, 6
mov     ecx, edx
and     ecx, 0FFFh
xor     edx, edx
mov     dx, word ptr ds:dword_750AB4[eax]
mov     edi, edx
shr     edi, 0Eh
mov     [esp+1Ch+var_1C], edi
mov     edi, [esp+1Ch+var_1C]
mov     word ptr ds:(dword_750AB0+2)[eax], di
mov     edi, ds:dword_750AB4[eax]
sar     edi, 10h
push    edi
and     edx, 3FFFh
add     eax, offset word_750AAC
call    sub_4EDA77
inc     esi
jmp     short loc_4EDA05

loc_4EDA67:
xor     edx, edx
mov     ds:dword_77EA44, edx
add     esp, 4
jmp     loc_4EB1F0
sub_4ED9F4 endp




sub_4EDA77 proc near

var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= word ptr -38h
var_36= word ptr -36h
var_34= word ptr -34h
var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4

push    esi
push    edi
push    ebp
sub     esp, 3Ch
mov     esi, eax
mov     edi, edx
mov     [esp+48h+var_28], ebx
mov     ebp, ecx
mov     ebx, [esp+48h+arg_0]
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset dword_56F174
call    sub_4EFB5A
mov     eax, esi
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+48h+var_24]
call    sub_4F04DB
xor     eax, eax
mov     ax, ds:word_77EAB2
mov     edx, [esp+48h+var_24]
cmp     eax, edx
jl      loc_4EDD2A
cmp     edx, 30h ; '0'
jl      loc_4EDD2A
mov     eax, ds:dword_77E6DC
mov     edx, eax
lea     ecx, [eax+48h]
mov     ds:dword_77E6DC, ecx
cmp     ebx, 240h
jg      loc_4EDD2A
cmp     ebx, 40h ; '@'
jge     short loc_4EDAFB
mov     dword ptr [eax+4], 0AE808080h
jmp     short loc_4EDB2A

loc_4EDAFB:
mov     ecx, 240h
sub     ecx, ebx
sar     ecx, 2
mov     ebx, ecx
shl     ecx, 10h
or      ecx, 0AE000000h
mov     [esp+48h+var_14], ecx
mov     ecx, ebx
shl     ecx, 8
mov     [esp+48h+var_10], ecx
mov     ecx, [esp+48h+var_14]
or      ecx, [esp+48h+var_10]
or      ecx, ebx
mov     [eax+4], ecx

loc_4EDB2A:
movsx   eax, word ptr [esi]
mov     [esp+48h+var_10], eax
mov     al, ds:byte_77EABF
mov     cl, al
mov     ebx, [esp+48h+var_10]
shl     ebx, cl
mov     [esp+48h+var_20], ebx
mov     ecx, [esi]
sar     ecx, 10h
mov     [esp+48h+var_10], ecx
mov     cl, al
mov     ebx, [esp+48h+var_10]
shl     ebx, cl
mov     [esp+48h+var_1C], ebx
mov     ebx, [esi+2]
sar     ebx, 10h
shl     ebx, cl
mov     [esp+48h+var_18], ebx
mov     ebx, ebp
mov     eax, [esp+48h+var_28]
sub     ebx, eax
mov     eax, ebx
call    sub_4EF008
imul    eax, edi
mov     [esp+48h+var_10], eax
xor     ecx, ecx
mov     cl, ds:byte_77EABF
mov     eax, 0Ch
sub     eax, ecx
mov     ecx, eax
mov     eax, [esp+48h+var_10]
sar     eax, cl
mov     ecx, eax
add     ecx, [esp+48h+var_20]
mov     word ptr [esp+48h+var_48], cx
mov     eax, [esp+48h+var_1C]
mov     word ptr [esp+48h+var_48+2], ax
mov     eax, ebx
call    sub_4EF003
imul    eax, edi
xor     ecx, ecx
mov     cl, ds:byte_77EABF
mov     ebx, 0Ch
sub     ebx, ecx
mov     ecx, ebx
sar     eax, cl
add     eax, [esp+48h+var_18]
mov     word ptr [esp+48h+var_44], ax
mov     ebx, [esp+48h+var_28]
add     ebx, ebp
mov     eax, ebx
call    sub_4EF008
imul    eax, edi
xor     ecx, ecx
mov     cl, ds:byte_77EABF
mov     ebp, 0Ch
sub     ebp, ecx
mov     ecx, ebp
sar     eax, cl
add     eax, [esp+48h+var_20]
mov     word ptr [esp+48h+var_40], ax
mov     eax, [esp+48h+var_1C]
mov     word ptr [esp+48h+var_40+2], ax
mov     eax, ebx
call    sub_4EF003
imul    eax, edi
xor     ecx, ecx
mov     cl, ds:byte_77EABF
mov     ebx, 0Ch
sub     ebx, ecx
mov     ecx, ebx
sar     eax, cl
add     eax, [esp+48h+var_18]
mov     word ptr [esp+48h+var_3C], ax
mov     ecx, [esp+48h+var_20]
add     ecx, ecx
mov     eax, ecx
mov     ebx, [esp+48h+var_40]
sub     eax, ebx
mov     [esp+48h+var_38], ax
mov     ebx, [esp+48h+var_1C]
add     ebx, ebx
mov     eax, ebx
mov     edi, [esp+48h+var_40+2]
sub     eax, edi
mov     [esp+48h+var_36], ax
mov     eax, [esp+48h+var_18]
add     eax, eax
mov     edi, eax
sub     edi, [esp+48h+var_3C]
mov     [esp+48h+var_34], di
mov     edi, [esp+48h+var_48]
sub     ecx, edi
mov     [esp+48h+var_30], cx
mov     ecx, [esp+48h+var_48+2]
sub     ebx, ecx
mov     [esp+48h+var_2E], bx
mov     edi, [esp+48h+var_44]
sub     eax, edi
mov     [esp+48h+var_2C], ax
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     eax, esp
call    sub_4EFD0C
call    sub_4EFE75
mov     word ptr [edx+0Eh], 3EF4h
mov     word ptr [edx+16h], 45h ; 'E'
cmp     word ptr [esi+6], 0
jz      short loc_4EDCC2
mov     byte ptr [edx+0Ch], 0C0h
mov     byte ptr [edx+0Dh], 0E0h
mov     byte ptr [edx+14h], 0DFh
mov     byte ptr [edx+15h], 0E0h
mov     byte ptr [edx+1Ch], 0C0h
mov     byte ptr [edx+1Dh], 0FFh
mov     byte ptr [edx+24h], 0DFh
jmp     short loc_4EDCDE

loc_4EDCC2:
mov     byte ptr [edx+0Ch], 0E0h
mov     byte ptr [edx+0Dh], 0E0h
mov     byte ptr [edx+14h], 0FFh
mov     byte ptr [edx+15h], 0E0h
mov     byte ptr [edx+1Ch], 0E0h
mov     byte ptr [edx+1Dh], 0FFh
mov     byte ptr [edx+24h], 0FFh

loc_4EDCDE:
mov     byte ptr [edx+25h], 0FFh
mov     eax, edx
call    loc_4F0075
lea     eax, [esp+48h+var_30]
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [edx+40h]
call    sub_4F0003
call    sub_4EFB8D
lea     eax, [esp+48h+var_24]
call    sub_4EFFED
mov     eax, edx
call    sub_4F0242
mov     ecx, [esp+48h+var_24]
sar     ecx, 1
shl     ecx, 2
mov     eax, ds:dword_77E6FC
add     eax, ecx
mov     ecx, [eax]
mov     [edx], ecx
mov     [eax], edx

loc_4EDD2A:
add     esp, 3Ch
pop     ebp
pop     edi
pop     esi
retn    4
sub_4EDA77 endp




sub_4EDD33 proc near
push    ebx
push    ecx
push    edx
mov     ebx, 100h
xor     edx, edx
mov     eax, offset dword_70E0AC
call    memset_
mov     ebx, 100h
xor     edx, edx
mov     eax, offset dword_7055AC
call    memset_
mov     ebx, 100h
xor     edx, edx
mov     eax, offset unk_7056AC
call    memset_
mov     ebx, 100h
xor     edx, edx
mov     eax, offset unk_7014AC
call    memset_
xor     edx, edx
mov     ds:dword_77EA44, edx
xor     edx, edx
mov     ds:word_77EAB4, dx
mov     ebx, 0E00h
mov     ds:word_77EAB2, bx
xor     ecx, ecx
mov     ds:dword_77E704, ecx
mov     word ptr ds:dword_77EAA8, bx
pop     edx
pop     ecx
pop     ebx
retn
sub_4EDD33 endp




sub_4EDDAA proc near
push    ecx
push    esi
mov     ecx, edx
mov     esi, 6
xor     edx, edx
mov     eax, ecx
div     esi
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
sub     ecx, eax
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, ecx
add     eax, eax
mov     ecx, edx
shl     edx, 2
sub     edx, ecx
mov     ecx, edx
shl     edx, 4
add     edx, ecx
shl     edx, 8
or      edx, eax
mov     eax, offset unk_6FA1AC
add     eax, 20h ; ' '
call    sub_4EDE36
xor     edx, edx
mov     eax, ebx
div     esi
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
mov     ecx, ebx
sub     ecx, eax
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, ecx
add     eax, eax
mov     ecx, edx
shl     edx, 2
sub     edx, ecx
mov     ecx, edx
shl     edx, 4
add     edx, ecx
shl     edx, 8
or      edx, eax
mov     eax, offset unk_6FA1AC
add     eax, 30h ; '0'
call    sub_4EDE36
pop     esi
pop     ecx
retn
sub_4EDDAA endp




sub_4EDE36 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebp, eax
mov     ebx, edx
mov     ecx, [eax]
mov     eax, ecx
and     eax, 0FFh
mov     [esp+2Ch+var_28], eax
shr     ecx, 8
and     ecx, 0FFh
mov     [esp+2Ch+var_2C], ecx
mov     eax, ebp
mov     eax, [eax+4]
mov     [esp+2Ch+var_1C], eax
mov     edx, [esp+2Ch+var_28]
mov     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
mov     ecx, [esp+2Ch+var_1C]
add     ecx, eax
mov     edx, [esp+2Ch+var_2C]
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     ecx, eax
mov     [esp+2Ch+var_20], ecx
xor     esi, esi

loc_4EDE97:
mov     edx, [esp+2Ch+var_28]
cmp     esi, edx
jnb     short loc_4EDEE7
xor     ecx, ecx

loc_4EDEA1:
mov     edi, esi
shl     edi, 3
sub     edi, esi
shl     edi, 2
add     edi, esi
lea     eax, [ecx+ecx]
mov     edx, eax
shl     eax, 3
sub     eax, edx
add     eax, edi
shl     eax, 2
mov     edx, [esp+2Ch+var_20]
add     edx, eax
mov     edi, [edx+0Ch]
add     edi, ebx
add     eax, [esp+2Ch+var_1C]
mov     [eax+0Ch], edi
mov     edi, [edx+14h]
add     edi, ebx
mov     [eax+14h], edi
mov     edx, [edx+1Ch]
add     edx, ebx
mov     [eax+1Ch], edx
inc     ecx
cmp     ecx, 2
jb      short loc_4EDEA1
inc     esi
jmp     short loc_4EDE97

loc_4EDEE7:
mov     eax, [ebp+8]
mov     [esp+2Ch+var_18], eax
mov     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
mov     ecx, [esp+2Ch+var_18]
add     ecx, eax
mov     edx, [esp+2Ch+var_2C]
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     ecx, eax
mov     [esp+2Ch+var_24], ecx
xor     esi, esi
mov     ebp, [esp+2Ch+var_18]

loc_4EDF21:
cmp     esi, [esp+2Ch+var_2C]
jnb     short loc_4EDF74
xor     ecx, ecx

loc_4EDF28:
mov     edi, esi
shl     edi, 3
add     edi, esi
shl     edi, 2
add     edi, esi
mov     eax, ecx
shl     eax, 3
add     eax, ecx
add     eax, eax
lea     edx, [edi+eax]
shl     edx, 2
mov     eax, [esp+2Ch+var_24]
add     eax, edx
mov     edi, [eax+0Ch]
add     edi, ebx
add     edx, ebp
mov     [edx+0Ch], edi
mov     edi, [eax+14h]
add     edi, ebx
mov     [edx+14h], edi
mov     edi, [eax+1Ch]
add     edi, ebx
mov     [edx+1Ch], edi
mov     eax, [eax+24h]
add     eax, ebx
mov     [edx+24h], eax
inc     ecx
cmp     ecx, 2
jb      short loc_4EDF28
inc     esi
jmp     short loc_4EDF21

loc_4EDF74:
add     esp, 18h
jmp     loc_4EAB7B
sub_4EDE36 endp




sub_4EDF7C proc near
push    ebx
push    ecx
mov     ecx, edx
shr     ecx, 18h
mov     ebx, [eax+ecx*4+70h]
mov     ecx, edx
shr     ecx, 8
and     ecx, 0FFh
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
lea     ecx, [ebx+eax]
mov     eax, edx
shr     eax, 10h
and     eax, 0FFh
mov     ecx, [ecx+eax*4+18h]
and     edx, 0FFh
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, ecx
pop     ecx
pop     ebx
retn
sub_4EDF7C endp




sub_4EDFC2 proc near
push    ecx
push    esi
mov     ecx, edx
shr     ecx, 18h
mov     esi, [eax+ecx*4+70h]
mov     ecx, edx
shr     ecx, 8
and     ecx, 0FFh
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
lea     ecx, [esi+eax]
mov     eax, edx
shr     eax, 10h
and     eax, 0FFh
shl     eax, 2
add     ecx, eax
and     edx, 0FFh
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, [ecx+18h]
mov     edx, [ebx]
mov     [eax], edx
mov     edx, [ebx+4]
mov     [eax+4], edx
pop     esi
pop     ecx
retn
sub_4EDFC2 endp




sub_4EE014 proc near
push    ebx
push    ecx
mov     ecx, edx
shr     ecx, 18h
mov     ebx, [eax+ecx*4+70h]
mov     ecx, edx
shr     ecx, 8
and     ecx, 0FFh
mov     eax, ecx
shl     eax, 2
add     eax, ecx
mov     ecx, [ebx+eax*4+24h]
mov     eax, edx
and     eax, 0FFh
shl     eax, 3
add     eax, ecx
pop     ecx
pop     ebx
retn
sub_4EE014 endp




sub_4EE044 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     ebp, edx
shr     ebp, 10h
and     edx, 0FFFFh
mov     esi, [eax+70h]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
lea     edi, [esi+eax]
mov     eax, [edi+14h]
mov     ecx, eax
and     ecx, 0FFh
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     [esp+24h+var_24], edx
mov     edx, eax
shr     edx, 8
and     edx, 0FFh
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     [esp+24h+var_18], eax
mov     eax, [edi+18h]
mov     [esp+24h+var_14], eax
mov     eax, ebp
shl     eax, 2
add     eax, ebp
mov     edx, [esi+eax*4+18h]
mov     [esp+24h+var_20], edx
mov     edi, [edi+1Ch]
mov     eax, [esi+eax*4+1Ch]
mov     [esp+24h+var_1C], eax
xor     eax, eax
mov     ebp, [esp+24h+var_14]

loc_4EE0B8:
cmp     eax, [esp+24h+var_24]
jnb     short loc_4EE0DD
mov     edx, eax
shl     edx, 2
mov     ecx, [esp+24h+var_20]
add     ecx, edx
mov     esi, [ecx]
add     esi, ebx
add     edx, ebp
mov     [edx], esi
mov     ecx, [ecx+4]
add     ecx, ebx
mov     [edx+4], ecx
add     eax, 3
jmp     short loc_4EE0B8

loc_4EE0DD:
xor     eax, eax

loc_4EE0DF:
cmp     eax, [esp+24h+var_18]
jnb     loc_4EAC6E
mov     ecx, eax
mov     edx, [esp+24h+var_1C]
mov     esi, [edx+ecx*4]
add     esi, ebx
mov     [edi+ecx*4], esi
mov     edx, [edx+ecx*4+4]
add     edx, ebx
mov     [edi+ecx*4+4], edx
add     eax, 3
jmp     short loc_4EE0DF
sub_4EE044 endp




sub_4EE106 proc near
push    esi
push    edi
mov     esi, eax
mov     edi, edx
xor     edx, edx
div     ecx
imul    ecx, eax
sub     esi, ecx
mov     ecx, esi
imul    ecx, edi
imul    eax, ebx
mov     esi, eax
shl     esi, 18h
mov     ebx, ecx
shl     ebx, 10h
or      ebx, esi
shl     eax, 8
or      eax, ebx
or      eax, ecx
pop     edi
pop     esi
retn
sub_4EE106 endp




sub_4EE133 proc near
push    ecx
push    edx
mov     edx, ds:dword_77E704
cmp     edx, 100h
jb      short loc_4EE148
xor     eax, eax
pop     edx
pop     ecx
retn

loc_4EE148:
mov     eax, edx
mov     edx, ds:dword_77E6DC
mov     ds:dword_56F18C[eax*4], edx
mov     eax, edx
lea     ecx, [edx+38h]
mov     ds:dword_77E6DC, ecx
inc     ds:dword_77E704
pop     edx
pop     ecx
retn
sub_4EE133 endp




sub_4EE16B proc near
push    ecx
push    edx
mov     edx, ds:dword_77E704
cmp     edx, 100h
jb      short loc_4EE180
xor     eax, eax
pop     edx
pop     ecx
retn

loc_4EE180:
mov     eax, edx
mov     edx, ds:dword_77E6DC
mov     ds:dword_56F18C[eax*4], edx
mov     eax, edx
lea     ecx, [edx+30h]
mov     ds:dword_77E6DC, ecx
inc     ds:dword_77E704
pop     edx
pop     ecx
retn
sub_4EE16B endp




sub_4EE1A3 proc near

var_5C= dword ptr -5Ch
var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= word ptr -50h
var_4C= word ptr -4Ch
var_4A= word ptr -4Ah
var_48= word ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= byte ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 74h
mov     eax, esp
call    sub_4EF184
mov     ebp, ds:dword_77E704
xor     edx, edx
mov     ds:dword_77E704, edx
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
xor     edi, edi

loc_4EE1D7:
cmp     edi, ebp
jnb     loc_4EE485
mov     esi, ds:dword_56F18C[edi*4]
xor     eax, eax
mov     al, [esi+7]
sar     eax, 5
cmp     al, 1
jnz     loc_4EE3F1
mov     eax, [esi+8]
mov     [esp+8Ch+var_5C], eax
mov     eax, [esi+10h]
mov     [esp+8Ch+var_58], eax
lea     eax, [esp+8Ch+var_5C]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+8Ch+var_44]
call    sub_4EFFB8
xor     eax, eax
mov     ax, ds:word_77EAB2
shl     eax, 2
mov     ecx, [esp+8Ch+var_3C]
cmp     eax, ecx
jl      loc_4EE47F
cmp     ecx, 0C0h
jl      loc_4EE47F
call    sub_4EFDC9
lea     eax, [esp+8Ch+var_2C]
call    sub_4F0003
fld     [esp+8Ch+var_2C]
fadd    ds:flt_50A4DC
call    __CHP
fistp   [esp+8Ch+var_1C]
mov     eax, [esp+8Ch+var_1C]
cmp     ax, 400h
ja      loc_4EE47F
fld     [esp+8Ch+var_28]
fadd    ds:flt_50A4E0
call    __CHP
fistp   [esp+8Ch+var_1C]
mov     eax, [esp+8Ch+var_1C]
cmp     ax, 400h
ja      loc_4EE47F
mov     eax, esp
call    sub_4EFB33
mov     eax, esp
call    sub_4EFB43
mov     eax, [esi+18h]
mov     edx, [esp+8Ch+var_44]
sub     edx, eax
mov     word ptr [esp+8Ch+var_5C], dx
mov     edx, [esp+8Ch+var_40]
sub     edx, eax
mov     word ptr [esp+8Ch+var_5C+2], dx
mov     edx, [esp+8Ch+var_44]
add     edx, eax
mov     word ptr [esp+8Ch+var_54], dx
mov     edx, [esp+8Ch+var_40]
add     edx, eax
mov     word ptr [esp+8Ch+var_54+2], dx
mov     eax, [esp+8Ch+var_44]
mov     [esp+8Ch+var_4C], ax
mov     eax, [esp+8Ch+var_40]
mov     [esp+8Ch+var_4A], ax
mov     eax, [esp+8Ch+var_3C]
mov     [esp+8Ch+var_48], ax
mov     [esp+8Ch+var_50], ax
mov     word ptr [esp+8Ch+var_58], ax
lea     eax, [esp+8Ch+var_5C]
call    sub_4EFD0C
call    sub_4EFE75
mov     edx, [esp+8Ch+var_3C]
sar     edx, 3
shl     edx, 2
mov     eax, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [esi], edx
mov     [eax], esi
test    byte ptr [esi+20h], 8
jz      short loc_4EE31F
or      byte ptr [esi+17h], 8

loc_4EE31F:
lea     eax, [esp+8Ch+var_2C]
call    sub_4F000C
lea     eax, [esp+8Ch+var_34]
call    sub_4F001A
fld     [esp+8Ch+var_2C]
call    __CHP
fistp   [esp+8Ch+var_1C]
mov     eax, [esp+8Ch+var_1C]
mov     [esi+8], ax
fld     [esp+8Ch+var_28]
call    __CHP
fistp   [esp+8Ch+var_1C]
mov     eax, [esp+8Ch+var_1C]
mov     [esi+0Ah], ax
fld     [esp+8Ch+var_34]
call    __CHP
fistp   [esp+8Ch+var_1C]
mov     eax, [esp+8Ch+var_1C]
mov     [esi+20h], ax
fld     [esp+8Ch+var_30]
call    __CHP
fistp   [esp+8Ch+var_1C]
mov     eax, [esp+8Ch+var_1C]
mov     [esi+22h], ax
mov     ax, [esi+20h]
mov     [esi+10h], ax
mov     ax, [esi+0Ah]
mov     [esi+12h], ax
mov     ax, [esi+8]
mov     [esi+18h], ax
mov     ax, [esi+22h]
mov     [esi+1Ah], ax
lea     ecx, [esp+8Ch+var_20]
lea     ebx, [esp+8Ch+var_20]
lea     edx, [esp+8Ch+var_20]
lea     eax, [esp+8Ch+var_24]
call    sub_4F011F
mov     eax, [esp+8Ch+var_24]
mov     [esp+8Ch+var_1C], eax
fild    [esp+8Ch+var_1C]
fmul    ds:flt_50A4E4
fst     dword ptr [esi+34h]
fst     dword ptr [esi+30h]
fst     dword ptr [esi+2Ch]
fstp    dword ptr [esi+28h]
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
jmp     loc_4EE47F

