loc_4F350A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4F1B45



sub_4F350F proc near

var_34= word ptr -34h
var_32= word ptr -32h
var_30= dword ptr -30h
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
sub     esp, 20h
mov     esi, eax
mov     edi, edx
lea     edx, [eax+0Ch]
mov     ebx, 8
mov     eax, esp
call    memcpy_
mov     eax, esi
add     eax, 14h
mov     [esp+34h+var_2C], eax
test    byte ptr [esi+4], 1
jz      loc_4F3674
xor     edx, edx
mov     dx, [esp+34h+var_32]
xor     eax, eax
mov     ax, [esp+34h+var_34]
call    sub_4F1D5C
mov     ebp, eax
xor     edx, edx
mov     dl, ds:byte_782BF7
shl     edx, 8
mov     [esp+34h+var_1C], edx
mov     edx, eax
shl     edx, 3
cmp     ds:byte_782C34[edx], 0
jz      short loc_4F3599
xor     eax, eax
mov     ax, ds:word_782C36[edx]
xor     ebx, ebx
mov     bl, ds:byte_782C35[edx]
imul    eax, ebx
mov     ecx, [esp+34h+var_1C]
cmp     eax, ecx
jz      short loc_4F35A8
mov     eax, ds:dword_782C38[edx]
call    _nfree_
mov     eax, ecx
jmp     short loc_4F359D

loc_4F3599:
mov     eax, [esp+34h+var_1C]

loc_4F359D:
call    _nmalloc_
mov     ds:dword_782C38[edx], eax

loc_4F35A8:
mov     ds:byte_782C34[ebp*8], 1
mov     dl, ds:byte_782BF7
mov     ds:byte_782C35[ebp*8], dl
mov     ds:word_782C36[ebp*8], 100h
xor     edx, edx
jmp     short loc_4F35E3

loc_4F35CB:
mov     esi, edx
mov     eax, ds:dword_782C38[eax]
mov     [eax+esi*4], ebx

loc_4F35D6:
inc     edx
cmp     edx, 100h
jge     loc_4F3832

loc_4F35E3:
lea     eax, [edx+edx]
add     eax, [esp+34h+var_2C]
mov     bx, [eax]
xor     bh, bh
and     bl, 1Fh
xor     edi, edi
mov     di, bx
shl     edi, 13h
mov     bx, [eax]
and     ebx, 3E0h
xor     esi, esi
mov     si, bx
shl     esi, 0Eh
mov     ax, [eax]
xor     al, al
and     ah, 7Ch
xor     ebx, ebx
mov     bx, ax
shl     ebx, 9
mov     cl, byte ptr ds:dword_782BF8
shr     edi, cl
and     edi, ds:dword_782C04
mov     cl, byte ptr ds:dword_782BFC
shr     esi, cl
and     esi, ds:dword_782C08
mov     cl, byte ptr ds:dword_782C00
shr     ebx, cl
and     ebx, ds:dword_782C0C
or      esi, edi
or      ebx, esi
jz      short loc_4F3651
or      ebx, ds:dword_782C10

loc_4F3651:
mov     eax, ebp
shl     eax, 3
cmp     ds:byte_782C35[eax], 2
jnz     loc_4F35CB
mov     esi, edx
mov     eax, ds:dword_782C38[eax]
mov     [eax+esi*2], bx
jmp     loc_4F35D6

loc_4F3674:
test    edi, edi
jnz     short loc_4F368F
mov     eax, [esp+34h+var_30]
mov     edx, [esp+34h+var_30+2]
imul    eax, edx
mov     word ptr [esp+34h+var_30], ax
mov     word ptr [esp+34h+var_30+2], 1

loc_4F368F:
xor     edx, edx
mov     dx, word ptr [esp+34h+var_30]
xor     eax, eax
mov     ax, word ptr [esp+34h+var_30+2]
imul    eax, edx
sar     eax, 4
mov     [esp+34h+var_28], eax
xor     eax, eax
mov     ax, [esp+34h+var_34]
mov     [esp+34h+var_18], eax
xor     eax, eax
mov     ax, [esp+34h+var_32]
mov     [esp+34h+var_20], eax
xor     eax, eax
mov     al, ds:byte_782BF7
shl     eax, 4
mov     [esp+34h+var_1C], eax
xor     edx, edx
mov     [esp+34h+var_24], edx

loc_4F36D0:
mov     eax, [esp+34h+var_24]
cmp     eax, [esp+34h+var_28]
jge     loc_4F3832
mov     edx, [esp+34h+var_20]
mov     eax, [esp+34h+var_18]
call    sub_4F1D5C
mov     ebp, eax
mov     edx, eax
shl     edx, 3
cmp     ds:byte_782C34[edx], 0
jz      short loc_4F3726
xor     eax, eax
mov     ax, ds:word_782C36[edx]
xor     ebx, ebx
mov     bl, ds:byte_782C35[edx]
imul    eax, ebx
mov     esi, [esp+34h+var_1C]
cmp     eax, esi
jz      short loc_4F3735
mov     eax, ds:dword_782C38[edx]
call    _nfree_
mov     eax, esi
jmp     short loc_4F372A

loc_4F3726:
mov     eax, [esp+34h+var_1C]

loc_4F372A:
call    _nmalloc_
mov     ds:dword_782C38[edx], eax

loc_4F3735:
mov     ds:byte_782C34[ebp*8], 1
mov     dl, ds:byte_782BF7
mov     ds:byte_782C35[ebp*8], dl
mov     ds:word_782C36[ebp*8], 10h
xor     edx, edx
jmp     short loc_4F376D

loc_4F3758:
mov     esi, edx
mov     eax, ds:dword_782C38[eax]
mov     [eax+esi*4], ebx

loc_4F3763:
inc     edx
cmp     edx, 10h
jge     loc_4F37FE

loc_4F376D:
lea     eax, [edx+edx]
add     eax, [esp+34h+var_2C]
mov     bx, [eax]
xor     bh, bh
and     bl, 1Fh
xor     edi, edi
mov     di, bx
shl     edi, 13h
mov     bx, [eax]
and     ebx, 3E0h
xor     esi, esi
mov     si, bx
shl     esi, 0Eh
mov     ax, [eax]
xor     al, al
and     ah, 7Ch
xor     ebx, ebx
mov     bx, ax
shl     ebx, 9
mov     cl, byte ptr ds:dword_782BF8
shr     edi, cl
and     edi, ds:dword_782C04
mov     cl, byte ptr ds:dword_782BFC
shr     esi, cl
and     esi, ds:dword_782C08
mov     cl, byte ptr ds:dword_782C00
shr     ebx, cl
and     ebx, ds:dword_782C0C
or      esi, edi
or      ebx, esi
jz      short loc_4F37DB
or      ebx, ds:dword_782C10

loc_4F37DB:
mov     eax, ebp
shl     eax, 3
cmp     ds:byte_782C35[eax], 2
jnz     loc_4F3758
mov     esi, edx
mov     eax, ds:dword_782C38[eax]
mov     [eax+esi*2], bx
jmp     loc_4F3763

loc_4F37FE:
xor     edx, edx
mov     dx, word ptr [esp+34h+var_30]
xor     eax, eax
mov     ax, [esp+34h+var_34]
mov     ebx, [esp+34h+var_18]
add     ebx, 10h
mov     [esp+34h+var_18], ebx
add     [esp+34h+var_2C], 20h ; ' '
add     edx, eax
cmp     edx, ebx
jg      short loc_4F3829
mov     [esp+34h+var_18], eax
inc     [esp+34h+var_20]

loc_4F3829:
inc     [esp+34h+var_24]
jmp     loc_4F36D0

loc_4F3832:
add     esp, 20h
jmp     loc_4F249A
sub_4F350F endp




sub_4F383A proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
jmp     short loc_4F384E

loc_4F3841:
inc     ecx
cmp     ecx, 254h
jge     loc_4F2FDA

loc_4F384E:
mov     edx, ecx
shl     edx, 3
cmp     ds:byte_782C34[edx], 0
jz      short loc_4F3841
mov     eax, ds:dword_782C38[edx]
call    _nfree_
mov     eax, offset byte_782C34
add     eax, edx
mov     ebx, 8
xor     edx, edx
call    memset_
jmp     short loc_4F3841
sub_4F383A endp




sub_4F387C proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
arg_0= dword ptr  4
arg_4= dword ptr  8

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
test    byte ptr ds:dword_88787C, 1
jnz     loc_4F3983
cmp     eax, 1
jnz     short loc_4F38BC
cmp     ds:dword_551D34, 0
jz      short loc_4F38A4
mov     ds:dword_551D38, edx

loc_4F38A4:
mov     ds:dword_887778, ebx
mov     eax, [esp+18h+arg_0]
mov     ds:flt_551D44, eax
mov     eax, [esp+18h+arg_4]
mov     ds:flt_551D48, eax

loc_4F38BC:
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ebx, ds:dword_887778
push    ebx
push    22h ; '"'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D3C
cmp     eax, 1
jb      short loc_4F38EA
jbe     short loc_4F3927
cmp     eax, 2
jz      loc_4F3974
jmp     loc_4F3983

loc_4F38EA:
test    eax, eax
jnz     loc_4F3983
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    3
push    23h ; '#'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ebp, ds:flt_551D44
push    ebp
push    24h ; '$'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ecx, ds:flt_551D48
push    ecx

loc_4F3923:
push    25h ; '%'
jmp     short loc_4F397F

loc_4F3927:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    3
push    23h ; '#'
push    eax
call    dword ptr [edx+58h]
fld     ds:flt_551D44
fdiv    ds:flt_50A89C
fstp    [esp+18h+var_18]
fld     ds:flt_551D48
fdiv    ds:flt_50A89C
fstp    [esp+18h+var_14]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     esi, [esp+18h+var_18]
push    esi
push    24h ; '$'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     edi, [esp+18h+var_14]
push    edi
jmp     short loc_4F3923

loc_4F3974:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    23h ; '#'

loc_4F397F:
push    eax
call    dword ptr [edx+58h]

loc_4F3983:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     ecx
retn    8
sub_4F387C endp

push    edx
test    byte ptr ds:dword_88787C, 1
jnz     short loc_4F39C2
cmp     eax, 1
jnz     short loc_4F39AA
mov     ds:dword_551D34, eax
mov     ds:dword_551D38, eax
xor     eax, eax
jmp     short loc_4F39BD

loc_4F39AA:
xor     edx, edx
mov     ds:dword_551D34, edx
mov     ds:dword_551D38, edx
mov     eax, 1

loc_4F39BD:
call    sub_4F16F3

loc_4F39C2:
pop     edx
retn



sub_4F39C4 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 0Ch
mov     esi, eax
lea     eax, [esp+1Ch+var_18]
push    eax
lea     eax, [esp+20h+var_1C]
push    eax
xor     eax, eax
mov     ax, [esi+16h]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
fild    word ptr [esi+8]
fmul    ds:flt_50A8A0
fstp    ds:flt_8876C4
fild    word ptr [esi+0Ah]
fmul    ds:flt_50A8A0
fstp    ds:flt_8876C8
mov     eax, [esi+20h]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+20h]
fdivr   ds:flt_50A8A4
fstp    ds:flt_8876D0
mov     eax, [esp+1Ch+var_1C]
mov     ds:dword_8876D4, eax
mov     eax, [esp+1Ch+var_18]
mov     ds:dword_8876D8, eax
xor     eax, eax
mov     al, [esi+0Ch]
mov     [esp+1Ch+var_14], eax
fild    word ptr [esp+1Ch+var_14]
fmul    ds:flt_50A8A8
fstp    ds:flt_8876DC
xor     eax, eax
mov     al, [esi+0Dh]
mov     [esp+1Ch+var_14], eax
fild    word ptr [esp+1Ch+var_14]
fmul    ds:flt_50A8A8
fstp    ds:flt_8876E0
fild    word ptr [esi+10h]
fmul    ds:flt_50A8A0
fstp    ds:flt_8876E4
fild    word ptr [esi+12h]
fmul    ds:flt_50A8A0
fstp    ds:flt_8876E8
mov     eax, [esi+24h]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+24h]
fdivr   ds:flt_50A8A4
fstp    ds:flt_8876F0
mov     eax, [esp+1Ch+var_1C]
mov     ds:dword_8876F4, eax
mov     eax, [esp+1Ch+var_18]
mov     ds:dword_8876F8, eax
xor     eax, eax
mov     al, [esi+14h]
mov     [esp+1Ch+var_14], eax
fild    word ptr [esp+1Ch+var_14]
fmul    ds:flt_50A8A8
fstp    ds:flt_8876FC
xor     eax, eax
mov     al, [esi+15h]
mov     [esp+1Ch+var_14], eax
fild    word ptr [esp+1Ch+var_14]
fmul    ds:flt_50A8A8
fstp    ds:flt_887700
fild    word ptr [esi+18h]
fmul    ds:flt_50A8A0
fstp    ds:flt_887704
fild    word ptr [esi+1Ah]
fmul    ds:flt_50A8A0
fstp    ds:flt_887708
mov     eax, [esi+28h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+28h]
fdivr   ds:flt_50A8A4
fstp    ds:flt_887710
mov     eax, [esp+1Ch+var_1C]
mov     ds:dword_887714, eax
mov     eax, [esp+1Ch+var_18]
mov     ds:dword_887718, eax
xor     eax, eax
mov     al, [esi+1Ch]
mov     [esp+1Ch+var_14], eax
fild    word ptr [esp+1Ch+var_14]
fmul    ds:flt_50A8A8
fstp    ds:flt_88771C
xor     eax, eax
mov     al, [esi+1Dh]
mov     [esp+1Ch+var_14], eax
fild    word ptr [esp+1Ch+var_14]
fmul    ds:flt_50A8A8
fstp    ds:flt_887720
xor     edx, edx
mov     ds:dword_88772C, edx
call    sub_4F2BEA
mov     dx, [esi+0Eh]
xor     eax, eax
mov     ax, [esi+16h]
call    sub_4F2941
mov     ecx, [esp+1Ch+var_18]
test    ecx, ecx
jz      short loc_4F3B88
mov     ecx, 1

loc_4F3B88:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
mov     eax, 1
call    sub_4F2F6B
mov     eax, 1
call    sub_4F16F3
xor     edx, edx
mov     dx, [esi+16h]
xor     eax, eax
mov     al, [esi+7]
call    sub_4F1A5A
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    3
push    offset flt_8876C4
push    1C4h
push    4

loc_4F3BD1:
push    eax
call    dword ptr [edx+70h]

loc_4F3BD5:
add     esp, 0Ch
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F39C4 endp




sub_4F3BDD proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

; FUNCTION CHUNK AT 004F3509 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 0Ch
mov     esi, eax
xor     edi, edi
xor     edx, edx
mov     dx, [eax+0Ch]
xor     eax, eax
mov     ax, [esi+14h]
cmp     edx, eax
jnz     short loc_4F3C0F
xor     eax, eax
mov     ax, [esi+1Ch]
cmp     edx, eax
jnz     short loc_4F3C0F
mov     eax, esi
call    sub_4F2FDE
mov     edi, 1

loc_4F3C0F:
mov     eax, esp
push    eax
lea     eax, [esp+24h+var_1C]
push    eax
xor     eax, eax
mov     ax, [esi+16h]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
fld     dword ptr [esi+20h]
fmul    ds:dbl_50A8AC
fstp    ds:flt_8876C4
fld     dword ptr [esi+24h]
fmul    ds:dbl_50A8AC
fstp    ds:flt_8876C8
mov     eax, [esi+8]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+8]
fdivr   ds:flt_50A8B4
fstp    ds:flt_8876D0
mov     eax, [esp+20h+var_1C]
mov     ds:dword_8876D4, eax
mov     eax, [esp+20h+var_20]
mov     ds:dword_8876D8, eax
fld     dword ptr [esi+28h]
fmul    ds:dbl_50A8AC
fstp    ds:flt_8876E4
fld     dword ptr [esi+2Ch]
fmul    ds:dbl_50A8AC
fstp    ds:flt_8876E8
mov     eax, [esi+10h]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+10h]
fdivr   ds:flt_50A8B4
fstp    ds:flt_8876F0
mov     eax, [esp+20h+var_1C]
mov     ds:dword_8876F4, eax
mov     eax, [esp+20h+var_20]
mov     ds:dword_8876F8, eax
fld     dword ptr [esi+30h]
fmul    ds:dbl_50A8AC
fstp    ds:flt_887704
fld     dword ptr [esi+34h]
fmul    ds:dbl_50A8AC
fstp    ds:flt_887708
mov     eax, [esi+18h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+18h]
fdivr   ds:flt_50A8B4
fstp    ds:flt_887710
mov     eax, [esp+20h+var_1C]
mov     ds:dword_887714, eax
mov     eax, [esp+20h+var_20]
mov     ds:dword_887718, eax
xor     edx, edx
mov     ds:dword_88772C, edx
test    edi, edi
jnz     loc_4F3DC5
xor     eax, eax
mov     al, [esi+0Ch]
mov     [esp+20h+var_18], eax
fild    word ptr [esp+20h+var_18]
fmul    ds:flt_50A8B8
fstp    ds:flt_8876DC
xor     eax, eax
mov     al, [esi+0Dh]
mov     [esp+20h+var_18], eax
fild    word ptr [esp+20h+var_18]
fmul    ds:flt_50A8B8
fstp    ds:flt_8876E0
xor     eax, eax
mov     al, [esi+14h]
mov     [esp+20h+var_18], eax
fild    word ptr [esp+20h+var_18]
fmul    ds:flt_50A8B8
fstp    ds:flt_8876FC
xor     eax, eax
mov     al, [esi+15h]
mov     [esp+20h+var_18], eax
fild    word ptr [esp+20h+var_18]
fmul    ds:flt_50A8B8
fstp    ds:flt_887700
xor     eax, eax
mov     al, [esi+1Ch]
mov     [esp+20h+var_18], eax
fild    word ptr [esp+20h+var_18]
fmul    ds:flt_50A8B8
fstp    ds:flt_88771C
xor     eax, eax
mov     al, [esi+1Dh]
mov     [esp+20h+var_18], eax
fild    word ptr [esp+20h+var_18]
fmul    ds:flt_50A8B8
fstp    ds:flt_887720
call    sub_4F2BEA
mov     dx, [esi+0Eh]
xor     eax, eax
mov     ax, [esi+16h]
call    sub_4F2941
jmp     short loc_4F3DDD

loc_4F3DC5:
xor     ecx, ecx
mov     ds:dword_551D20, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    ecx
push    eax
call    dword ptr [edx+98h]

loc_4F3DDD:
cmp     [esp+20h+var_20], 0
jz      short loc_4F3DEA
mov     ecx, 1
jmp     short loc_4F3DEC

loc_4F3DEA:
xor     ecx, ecx

loc_4F3DEC:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
mov     ax, [esi+16h]
xor     al, al
and     ah, 4
and     eax, 0FFFFh
call    sub_4F2F6B
mov     ax, [esi+16h]
xor     al, al
and     ah, 8
and     eax, 0FFFFh
call    sub_4F16F3
xor     edx, edx
mov     dx, [esi+16h]
xor     eax, eax
mov     al, [esi+7]
call    sub_4F1A5A
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    3
push    offset flt_8876C4
push    1C4h
push    4
push    eax
call    dword ptr [edx+70h]
add     esp, 0Ch
jmp     loc_4F3509
sub_4F3BDD endp




sub_4F3E53 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
lea     eax, [esp+18h+var_14]
push    eax
lea     eax, [esp+1Ch+var_18]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
fild    word ptr [esi+8]
fmul    ds:flt_50A8BC
fstp    ds:flt_8876C4
fild    word ptr [esi+0Ah]
fmul    ds:flt_50A8BC
fstp    ds:flt_8876C8
mov     eax, [esi+18h]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+18h]
fdivr   ds:flt_50A8C0
fstp    ds:flt_8876D0
mov     eax, [esp+18h+var_18]
mov     ds:dword_8876D4, eax
mov     eax, [esp+18h+var_14]
mov     ds:dword_8876D8, eax
fild    word ptr [esi+0Ch]
fmul    ds:flt_50A8BC
fstp    ds:flt_8876E4
fild    word ptr [esi+0Eh]
fmul    ds:flt_50A8BC
fstp    ds:flt_8876E8
mov     eax, [esi+1Ch]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+1Ch]
fdivr   ds:flt_50A8C0
fstp    ds:flt_8876F0
mov     eax, [esp+18h+var_18]
mov     ds:dword_8876F4, eax
mov     eax, [esp+18h+var_14]
mov     ds:dword_8876F8, eax
fild    word ptr [esi+10h]
fmul    ds:flt_50A8BC
fstp    ds:flt_887704
fild    word ptr [esi+12h]
fmul    ds:flt_50A8BC
fstp    ds:flt_887708
mov     eax, [esi+20h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+20h]
fdivr   ds:flt_50A8C0
fstp    ds:flt_887710
mov     eax, [esp+18h+var_18]
mov     ds:dword_887714, eax
mov     eax, [esp+18h+var_14]
mov     ds:dword_887718, eax
fild    word ptr [esi+14h]
fmul    ds:flt_50A8BC
fstp    ds:flt_887724
fild    word ptr [esi+16h]
fmul    ds:flt_50A8BC
fstp    ds:flt_887728
mov     eax, [esi+24h]
mov     ds:dword_88772C, eax
fld     dword ptr [esi+24h]
fdivr   ds:flt_50A8C0
fstp    ds:flt_887730
mov     eax, [esp+18h+var_18]
mov     ds:dword_887734, eax
mov     eax, [esp+18h+var_14]
mov     ds:dword_887738, eax
xor     edx, edx
mov     ds:dword_551D20, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    0
push    eax
call    dword ptr [edx+98h]
mov     ecx, [esp+4]
test    ecx, ecx
jz      short loc_4F3FCC
mov     ecx, 1

loc_4F3FCC:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
mov     eax, 1
call    sub_4F2F6B
mov     eax, 1

loc_4F3FE9:
call    sub_4F16F3
mov     eax, ds:dword_887770
xor     edx, edx
mov     dx, [eax]
xor     eax, eax
mov     al, [esi+7]
call    sub_4F1A5A
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    4
push    offset flt_8876C4
push    1C4h
push    5
push    eax
call    dword ptr [edx+70h]
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F3E53 endp




sub_4F4025 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
lea     eax, [esp+18h+var_14]
push    eax
lea     eax, [esp+1Ch+var_18]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
fld     dword ptr [esi+18h]
fmul    ds:dbl_50A8C4
fstp    ds:flt_8876C4
fld     dword ptr [esi+1Ch]
fmul    ds:dbl_50A8C4
fstp    ds:flt_8876C8
mov     eax, [esi+8]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+8]
fdivr   ds:flt_50A8CC
fstp    ds:flt_8876D0
mov     eax, [esp+18h+var_18]
mov     ds:dword_8876D4, eax
mov     eax, [esp+18h+var_14]
mov     ds:dword_8876D8, eax
fld     dword ptr [esi+20h]
fmul    ds:dbl_50A8C4
fstp    ds:flt_8876E4
fld     dword ptr [esi+24h]
fmul    ds:dbl_50A8C4
fstp    ds:flt_8876E8
mov     eax, [esi+0Ch]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+0Ch]
fdivr   ds:flt_50A8CC
fstp    ds:flt_8876F0
mov     eax, [esp+18h+var_18]
mov     ds:dword_8876F4, eax
mov     eax, [esp+18h+var_14]
mov     ds:dword_8876F8, eax
fld     dword ptr [esi+28h]
fmul    ds:dbl_50A8C4
fstp    ds:flt_887704
fld     dword ptr [esi+2Ch]
fmul    ds:dbl_50A8C4
fstp    ds:flt_887708
mov     eax, [esi+10h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+10h]
fdivr   ds:flt_50A8CC
fstp    ds:flt_887710
mov     eax, [esp+18h+var_18]
mov     ds:dword_887714, eax
mov     eax, [esp+18h+var_14]
mov     ds:dword_887718, eax
fld     dword ptr [esi+30h]
fmul    ds:dbl_50A8C4
fstp    ds:flt_887724
fld     dword ptr [esi+34h]
fmul    ds:dbl_50A8C4
fstp    ds:flt_887728
mov     eax, [esi+14h]
mov     ds:dword_88772C, eax
fld     dword ptr [esi+14h]
fdivr   ds:flt_50A8CC
fstp    ds:flt_887730
mov     eax, [esp+18h+var_18]
mov     ds:dword_887734, eax
mov     eax, [esp+18h+var_14]
mov     ds:dword_887738, eax
xor     edx, edx
mov     ds:dword_551D20, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    0
push    eax
call    dword ptr [edx+98h]
mov     ecx, [esp+4]
test    ecx, ecx
jz      short loc_4F419E
mov     ecx, 1

loc_4F419E:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
xor     eax, eax
call    sub_4F2F6B
xor     eax, eax
jmp     loc_4F3FE9
sub_4F4025 endp




sub_4F41BA proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 10h
mov     esi, eax
lea     eax, [esp+20h+var_1C]
push    eax
lea     eax, [esp+24h+var_20]
push    eax
xor     eax, eax
mov     ax, [esi+16h]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
test    byte ptr [esi+17h], 10h
jz      short loc_4F423A
fild    word ptr [esi+8]
fstp    ds:flt_8876C4
fild    word ptr [esi+0Ah]
fstp    ds:flt_8876C8
fild    word ptr [esi+10h]
fstp    ds:flt_8876E4
fild    word ptr [esi+12h]
fstp    ds:flt_8876E8
fild    word ptr [esi+18h]
fstp    ds:flt_887704
fild    word ptr [esi+1Ah]
fstp    ds:flt_887708
fild    word ptr [esi+20h]
fstp    ds:flt_887724
fild    word ptr [esi+22h]
jmp     loc_4F42E4

loc_4F423A:
mov     eax, [esi+6]
sar     eax, 10h
add     eax, eax
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fstp    ds:flt_8876C4
mov     eax, [esi+8]
sar     eax, 10h
add     eax, eax
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fstp    ds:flt_8876C8
mov     eax, [esi+0Eh]
sar     eax, 10h
add     eax, eax
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fstp    ds:flt_8876E4
mov     eax, [esi+10h]
sar     eax, 10h
add     eax, eax
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fstp    ds:flt_8876E8
mov     eax, [esi+16h]
sar     eax, 10h
add     eax, eax
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fstp    ds:flt_887704
mov     eax, [esi+18h]
sar     eax, 10h
add     eax, eax
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fstp    ds:flt_887708
mov     eax, [esi+1Eh]
sar     eax, 10h
add     eax, eax
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fstp    ds:flt_887724
mov     eax, [esi+20h]
sar     eax, 10h
add     eax, eax
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]

loc_4F42E4:
fstp    ds:flt_887728
mov     eax, [esi+28h]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+28h]
fdivr   ds:flt_50A8D0
fstp    ds:flt_8876D0
mov     eax, [esp+20h+var_20]
mov     ds:dword_8876D4, eax
mov     eax, [esp+20h+var_1C]
mov     ds:dword_8876D8, eax
xor     eax, eax
mov     al, [esi+0Ch]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A8D4
fstp    ds:flt_8876DC
xor     eax, eax
mov     al, [esi+0Dh]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A8D4
fstp    ds:flt_8876E0
mov     eax, [esi+2Ch]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+2Ch]
fdivr   ds:flt_50A8D0
fstp    ds:flt_8876F0
mov     eax, [esp+20h+var_20]
mov     ds:dword_8876F4, eax
mov     eax, [esp+20h+var_1C]
mov     ds:dword_8876F8, eax
xor     eax, eax
mov     al, [esi+14h]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A8D4
fstp    ds:flt_8876FC
xor     eax, eax
mov     al, [esi+15h]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A8D4
fstp    ds:flt_887700
mov     eax, [esi+30h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+30h]
fdivr   ds:flt_50A8D0
fstp    ds:flt_887710
mov     eax, [esp+20h+var_20]
mov     ds:dword_887714, eax
mov     eax, [esp+20h+var_1C]
mov     ds:dword_887718, eax
xor     eax, eax
mov     al, [esi+1Ch]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A8D4
fstp    ds:flt_88771C
xor     eax, eax
mov     al, [esi+1Dh]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A8D4
fstp    ds:flt_887720
mov     eax, [esi+34h]
mov     ds:dword_88772C, eax
fld     dword ptr [esi+34h]
fdivr   ds:flt_50A8D0
fstp    ds:flt_887730
mov     eax, [esp+20h+var_20]
mov     ds:dword_887734, eax
mov     eax, [esp+20h+var_1C]
mov     ds:dword_887738, eax
xor     eax, eax
mov     al, [esi+24h]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A8D4
fstp    ds:flt_88773C
xor     eax, eax
mov     al, [esi+25h]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A8D4
fstp    ds:flt_887740
call    sub_4F2D57
xor     edx, edx
mov     dx, [esi+0Eh]
xor     eax, eax
mov     ax, [esi+16h]
call    sub_4F2941
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Dh
push    eax
call    dword ptr [edx+58h]
mov     eax, 1
call    sub_4F2F6B
mov     ax, [esi+16h]
xor     al, al
and     ah, 8
and     eax, 0FFFFh
call    sub_4F16F3
xor     edx, edx
mov     dx, [esi+16h]

loc_4F449A:
xor     eax, eax
mov     al, [esi+7]
call    sub_4F1A5A
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    4
push    offset flt_8876C4
push    1C4h
push    5
push    eax
call    dword ptr [edx+70h]

loc_4F44BF:
add     esp, 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F41BA endp




sub_4F44C7 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004F3508 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     esi, eax
xor     ebp, ebp
mov     di, [eax+0Ch]
mov     ax, [eax+14h]
mov     [esp+30h+var_28], eax
mov     ax, [esi+1Ch]
mov     [esp+30h+var_24], eax
mov     ax, [esi+24h]
mov     [esp+30h+var_20], eax
xor     edx, edx
mov     dx, di
xor     eax, eax
mov     ax, word ptr [esp+30h+var_28]
cmp     edx, eax
jnz     short loc_4F4524
xor     eax, eax
mov     ax, word ptr [esp+30h+var_24]
cmp     edx, eax
jnz     short loc_4F4524
xor     eax, eax
mov     ax, word ptr [esp+30h+var_20]
cmp     edx, eax
jnz     short loc_4F4524
mov     eax, esi
call    sub_4F2FDE
mov     ebp, 1
jmp     short loc_4F454D

loc_4F4524:
xor     eax, eax
mov     ax, word ptr [esp+30h+var_20]
push    eax
xor     ecx, ecx
mov     cx, word ptr [esp+34h+var_24]
xor     ebx, ebx
mov     bx, word ptr [esp+34h+var_28]
xor     edx, edx
mov     dx, di
mov     eax, esi
call    sub_4F310F
cmp     eax, 1
jnz     short loc_4F454D
mov     ebp, eax

loc_4F454D:
lea     eax, [esp+30h+var_2C]
push    eax
lea     eax, [esp+34h+var_30]
push    eax
xor     eax, eax
mov     ax, [esi+16h]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
fld     dword ptr [esi+28h]
fmul    ds:dbl_50A8DC
fstp    ds:flt_8876C4
fld     dword ptr [esi+2Ch]
fmul    ds:dbl_50A8DC
fstp    ds:flt_8876C8
mov     eax, [esi+8]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+8]
fdivr   ds:flt_50A8E4
fstp    ds:flt_8876D0
mov     eax, [esp+30h+var_30]
mov     ds:dword_8876D4, eax
mov     eax, [esp+30h+var_2C]
mov     ds:dword_8876D8, eax
fld     dword ptr [esi+30h]
fmul    ds:dbl_50A8DC
fstp    ds:flt_8876E4
fld     dword ptr [esi+34h]
fmul    ds:dbl_50A8DC
fstp    ds:flt_8876E8
mov     eax, [esi+10h]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+10h]
fdivr   ds:flt_50A8E4
fstp    ds:flt_8876F0
mov     eax, [esp+30h+var_30]
mov     ds:dword_8876F4, eax
mov     eax, [esp+30h+var_2C]
mov     ds:dword_8876F8, eax
fld     dword ptr [esi+38h]
fmul    ds:dbl_50A8DC
fstp    ds:flt_887704
fld     dword ptr [esi+3Ch]
fmul    ds:dbl_50A8DC
fstp    ds:flt_887708
mov     eax, [esi+18h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+18h]
fdivr   ds:flt_50A8E4
fstp    ds:flt_887710
mov     eax, [esp+30h+var_30]
mov     ds:dword_887714, eax
mov     eax, [esp+30h+var_2C]
mov     ds:dword_887718, eax
fld     dword ptr [esi+40h]
fmul    ds:dbl_50A8DC
fstp    ds:flt_887724
fld     dword ptr [esi+44h]
fmul    ds:dbl_50A8DC
fstp    ds:flt_887728
mov     eax, [esi+20h]
mov     ds:dword_88772C, eax
fld     dword ptr [esi+20h]
fdivr   ds:flt_50A8E4
fstp    ds:flt_887730
mov     eax, [esp+30h+var_30]
mov     ds:dword_887734, eax
mov     eax, [esp+30h+var_2C]
mov     ds:dword_887738, eax
test    ebp, ebp
jnz     loc_4F48EB
xor     eax, eax
mov     al, [esi+0Ch]
mov     [esp+30h+var_1C], eax
fild    word ptr [esp+30h+var_1C]
fmul    ds:flt_50A8E8
fstp    ds:flt_8876DC
xor     eax, eax
mov     al, [esi+0Dh]
mov     [esp+30h+var_1C], eax
fild    word ptr [esp+30h+var_1C]
fmul    ds:flt_50A8E8
fstp    ds:flt_8876E0
xor     eax, eax
mov     al, [esi+14h]
mov     [esp+30h+var_1C], eax
fild    word ptr [esp+30h+var_1C]
fmul    ds:flt_50A8E8
fstp    ds:flt_8876FC
xor     eax, eax
mov     al, [esi+15h]
mov     [esp+30h+var_1C], eax
fild    word ptr [esp+30h+var_1C]
fmul    ds:flt_50A8E8
fstp    ds:flt_887700
xor     eax, eax
mov     al, [esi+1Ch]
mov     [esp+30h+var_1C], eax
fild    word ptr [esp+30h+var_1C]
fmul    ds:flt_50A8E8
fstp    ds:flt_88771C
xor     eax, eax
mov     al, [esi+1Dh]
mov     [esp+30h+var_1C], eax
fild    word ptr [esp+30h+var_1C]
fmul    ds:flt_50A8E8
fstp    ds:flt_887720
xor     eax, eax
mov     al, [esi+24h]
mov     [esp+30h+var_1C], eax
fild    word ptr [esp+30h+var_1C]
fmul    ds:flt_50A8E8
fstp    ds:flt_88773C
xor     eax, eax
mov     al, [esi+25h]
mov     [esp+30h+var_1C], eax
fild    word ptr [esp+30h+var_1C]
fmul    ds:flt_50A8E8
fstp    ds:flt_887740
xor     eax, eax
mov     ax, di
xor     edx, edx
mov     dx, word ptr [esp+30h+var_24]
cmp     eax, edx
jnz     loc_4F482B
xor     eax, edx
mov     ax, word ptr [esp+30h+var_28]
xor     edx, edx
mov     dx, word ptr [esp+30h+var_20]
cmp     eax, edx
jnz     loc_4F482B
mov     al, [esi+0Ch]
cmp     al, [esi+14h]
jnz     short loc_4F47DE
fld     ds:flt_8876DC
fadd    ds:dbl_50A8EC
fstp    ds:flt_8876DC
fld     ds:flt_88771C
fadd    ds:dbl_50A8F4
fstp    ds:flt_88771C
fld     ds:flt_8876FC
fadd    ds:dbl_50A8EC
fstp    ds:flt_8876FC

loc_4F47C7:
fld     ds:flt_88773C
fadd    ds:dbl_50A8F4
fstp    ds:flt_88773C
jmp     loc_4F48D8

loc_4F47DE:
fld     ds:flt_8876E0
fadd    ds:dbl_50A8EC
fstp    ds:flt_8876E0
fld     ds:flt_887720
fadd    ds:dbl_50A8F4
fstp    ds:flt_887720
fld     ds:flt_887700
fadd    ds:dbl_50A8EC
fstp    ds:flt_887700

loc_4F4814:
fld     ds:flt_887740
fadd    ds:dbl_50A8F4
fstp    ds:flt_887740
jmp     loc_4F48D8

loc_4F482B:
xor     edx, edx
mov     dx, di
xor     eax, eax
mov     ax, word ptr [esp+30h+var_28]
cmp     edx, eax
jnz     loc_4F48D3
xor     eax, eax
mov     ax, word ptr [esp+30h+var_24]
xor     edx, edx
mov     dx, word ptr [esp+30h+var_20]
cmp     eax, edx
jnz     loc_4F48D3
mov     al, [esi+0Ch]
cmp     al, [esi+1Ch]
jnz     short loc_4F4898
fld     ds:flt_8876DC
fadd    ds:dbl_50A8EC
fstp    ds:flt_8876DC
fld     ds:flt_8876FC
fadd    ds:dbl_50A8F4
fstp    ds:flt_8876FC
fld     ds:flt_88771C
fadd    ds:dbl_50A8EC
fstp    ds:flt_88771C
jmp     loc_4F47C7

loc_4F4898:
fld     ds:flt_8876E0
fadd    ds:dbl_50A8EC
fstp    ds:flt_8876E0
fld     ds:flt_887700
fadd    ds:dbl_50A8F4
fstp    ds:flt_887700
fld     ds:flt_887720
fadd    ds:dbl_50A8EC
fstp    ds:flt_887720
jmp     loc_4F4814

loc_4F48D3:
call    sub_4F2D57

loc_4F48D8:
xor     edx, edx
mov     dx, [esi+0Eh]
xor     eax, eax
mov     ax, [esi+16h]
call    sub_4F2941
jmp     short loc_4F4905

loc_4F48EB:
xor     edx, edx
mov     ds:dword_551D20, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    0
push    eax
call    dword ptr [edx+98h]

loc_4F4905:
mov     ecx, [esp+30h+var_2C]
test    ecx, ecx
jz      short loc_4F4912
mov     ecx, 1

loc_4F4912:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
mov     ax, [esi+16h]
xor     al, al
and     ah, 4
and     eax, 0FFFFh
call    sub_4F2F6B
mov     ax, [esi+16h]
xor     al, al
and     ah, 8
and     eax, 0FFFFh
call    sub_4F16F3
test    ebp, ebp
jnz     short loc_4F495C
xor     edx, edx
mov     dx, [esi+16h]
xor     eax, eax
mov     al, [esi+7]
call    sub_4F1A5A
jmp     short loc_4F496B

loc_4F495C:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Bh
push    eax
call    dword ptr [edx+58h]

loc_4F496B:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    4
push    offset flt_8876C4
push    1C4h
push    5
push    eax
call    dword ptr [edx+70h]
add     esp, 18h
jmp     loc_4F3508
sub_4F44C7 endp ; sp-analysis failed




sub_4F498E proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_4= dword ptr -4
arg_0= dword ptr  4

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 18h
mov     esi, eax
mov     eax, esp
push    eax
lea     eax, [esp+2Ch+var_1C]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
lea     eax, [esp+28h+var_24]
push    eax
lea     eax, [esp+2Ch+var_18]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+0Eh]
xor     edx, edx
mov     dl, [esi+0Dh]
xor     eax, eax
mov     al, [esi+0Ch]
call    sub_4F195A
lea     eax, [esp+28h+var_20]
push    eax
lea     eax, [esp+2Ch+var_14]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+16h]
xor     edx, edx
mov     dl, [esi+15h]
xor     eax, eax
mov     al, [esi+14h]
call    sub_4F195A
fild    word ptr [esi+8]
fmul    ds:flt_50A8FC
fstp    ds:flt_8876C4
fild    word ptr [esi+0Ah]
fmul    ds:flt_50A8FC
fstp    ds:flt_8876C8
mov     eax, [esi+1Ch]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+1Ch]
fdivr   ds:flt_50A900
fstp    ds:flt_8876D0
mov     eax, [esp+28h+var_1C]
mov     ds:dword_8876D4, eax
mov     eax, [esp+28h+var_28]
mov     ds:dword_8876D8, eax
fild    word ptr [esi+10h]
fmul    ds:flt_50A8FC
fstp    ds:flt_8876E4
fild    word ptr [esi+12h]
fmul    ds:flt_50A8FC
fstp    ds:flt_8876E8
mov     eax, [esi+20h]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+20h]
fdivr   ds:flt_50A900
fstp    ds:flt_8876F0
mov     eax, [esp+28h+var_18]
mov     ds:dword_8876F4, eax
mov     eax, [esp+28h+var_24]
mov     ds:dword_8876F8, eax
fild    word ptr [esi+18h]
fmul    ds:flt_50A8FC
fstp    ds:flt_887704
fild    word ptr [esi+1Ah]
fmul    ds:flt_50A8FC
fstp    ds:flt_887708
mov     eax, [esi+24h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+24h]
fdivr   ds:flt_50A900
fstp    ds:flt_887710
mov     eax, [esp+28h+var_14]
mov     ds:dword_887714, eax
mov     eax, [esp+28h+var_20]
mov     ds:dword_887718, eax
xor     edx, edx
mov     ds:dword_88772C, edx
xor     ecx, ecx
mov     ds:dword_551D20, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    ecx
push    eax
call    dword ptr [edx+98h]
cmp     [esp+4+var_4], 0
jnz     short loc_4F4B30
cmp     dword ptr [esp+4], 0
jnz     short loc_4F4B30
cmp     [esp+4+arg_0], 0
jz      short loc_4F4B37

loc_4F4B30:
mov     ecx, 1
jmp     short loc_4F4B39

loc_4F4B37:
xor     ecx, ecx

loc_4F4B39:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
mov     eax, 1
call    sub_4F2F6B
mov     eax, 1

loc_4F4B56:
call    sub_4F16F3
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2
push    9
push    eax
call    dword ptr [edx+58h]
mov     edx, ds:dword_887770
mov     dx, [edx]
and     edx, 0FFFFh
xor     eax, eax
mov     al, [esi+7]
call    sub_4F1A5A
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    3
push    offset flt_8876C4
push    1C4h
push    4
push    eax
call    dword ptr [edx+70h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    9
push    eax
call    dword ptr [edx+58h]
add     esp, 18h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F498E endp




sub_4F4BB5 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_4= dword ptr -4
arg_0= dword ptr  4

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 18h
mov     esi, eax
mov     eax, esp
push    eax
lea     eax, [esp+2Ch+var_1C]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
lea     eax, [esp+28h+var_24]
push    eax
lea     eax, [esp+2Ch+var_18]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+0Eh]
xor     edx, edx
mov     dl, [esi+0Dh]
xor     eax, eax
mov     al, [esi+0Ch]
call    sub_4F195A
lea     eax, [esp+28h+var_20]
push    eax
lea     eax, [esp+2Ch+var_14]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+16h]
xor     edx, edx
mov     dl, [esi+15h]
xor     eax, eax
mov     al, [esi+14h]
call    sub_4F195A
fld     dword ptr [esi+1Ch]
fmul    ds:dbl_50A904
fstp    ds:flt_8876C4
fld     dword ptr [esi+20h]
fmul    ds:dbl_50A904
fstp    ds:flt_8876C8
mov     eax, [esi+8]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+8]
fdivr   ds:flt_50A90C
fstp    ds:flt_8876D0
mov     eax, [esp+28h+var_1C]
mov     ds:dword_8876D4, eax
mov     eax, [esp+28h+var_28]
mov     ds:dword_8876D8, eax
fld     dword ptr [esi+24h]
fmul    ds:dbl_50A904
fstp    ds:flt_8876E4
fld     dword ptr [esi+28h]
fmul    ds:dbl_50A904
fstp    ds:flt_8876E8
mov     eax, [esi+10h]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+10h]
fdivr   ds:flt_50A90C
fstp    ds:flt_8876F0
mov     eax, [esp+28h+var_18]
mov     ds:dword_8876F4, eax
mov     eax, [esp+28h+var_24]
mov     ds:dword_8876F8, eax
fld     dword ptr [esi+2Ch]
fmul    ds:dbl_50A904
fstp    ds:flt_887704
fld     dword ptr [esi+30h]
fmul    ds:dbl_50A904
fstp    ds:flt_887708
mov     eax, [esi+18h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+18h]
fdivr   ds:flt_50A90C
fstp    ds:flt_887710
mov     eax, [esp+28h+var_14]
mov     ds:dword_887714, eax
mov     eax, [esp+28h+var_20]
mov     ds:dword_887718, eax
xor     edx, edx
mov     ds:dword_88772C, edx
xor     ecx, ecx
mov     ds:dword_551D20, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    ecx
push    eax
call    dword ptr [edx+98h]
cmp     [esp+4+var_4], 0
jnz     short loc_4F4D57
cmp     dword ptr [esp+4], 0
jnz     short loc_4F4D57
cmp     [esp+4+arg_0], 0
jz      short loc_4F4D5E

loc_4F4D57:
mov     ecx, 1
jmp     short loc_4F4D60

loc_4F4D5E:
xor     ecx, ecx

loc_4F4D60:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
xor     eax, eax
call    sub_4F2F6B
xor     eax, eax
jmp     loc_4F4B56
sub_4F4BB5 endp




sub_4F4D7C proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 1Ch
mov     esi, eax
mov     eax, esp
push    eax
lea     eax, [esp+30h+var_20]
push    eax
xor     eax, eax
mov     ax, [esi+1Ah]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
lea     eax, [esp+2Ch+var_28]
push    eax
lea     eax, [esp+30h+var_1C]
push    eax
xor     eax, eax
mov     ax, [esi+1Ah]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+12h]
xor     edx, edx
mov     dl, [esi+11h]
xor     eax, eax
mov     al, [esi+10h]
call    sub_4F195A
lea     eax, [esp+2Ch+var_24]
push    eax
lea     eax, [esp+30h+var_18]
push    eax
xor     eax, eax
mov     ax, [esi+1Ah]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+1Eh]
xor     edx, edx
mov     dl, [esi+1Dh]
xor     eax, eax
mov     al, [esi+1Ch]
call    sub_4F195A
fild    word ptr [esi+8]
fmul    ds:flt_50A910
fstp    ds:flt_8876C4
fild    word ptr [esi+0Ah]
fmul    ds:flt_50A910
fstp    ds:flt_8876C8
mov     eax, [esi+28h]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+28h]
fdivr   ds:flt_50A914
fstp    ds:flt_8876D0
mov     eax, [esp+2Ch+var_20]
mov     ds:dword_8876D4, eax
mov     eax, [esp+2Ch+var_2C]
mov     ds:dword_8876D8, eax
xor     eax, eax
mov     al, [esi+0Ch]
mov     [esp+2Ch+var_14], eax
fild    word ptr [esp+2Ch+var_14]
fmul    ds:flt_50A918
fstp    ds:flt_8876DC
xor     eax, eax
mov     al, [esi+0Dh]
mov     [esp+2Ch+var_14], eax
fild    word ptr [esp+2Ch+var_14]
fmul    ds:flt_50A918
fstp    ds:flt_8876E0
fild    word ptr [esi+14h]
fmul    ds:flt_50A910
fstp    ds:flt_8876E4
fild    word ptr [esi+16h]
fmul    ds:flt_50A910
fstp    ds:flt_8876E8
mov     eax, [esi+2Ch]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+2Ch]
fdivr   ds:flt_50A914
fstp    ds:flt_8876F0
mov     eax, [esp+2Ch+var_1C]
mov     ds:dword_8876F4, eax
mov     eax, [esp+2Ch+var_28]
mov     ds:dword_8876F8, eax
xor     eax, eax
mov     al, [esi+18h]
mov     [esp+2Ch+var_14], eax
fild    word ptr [esp+2Ch+var_14]
fmul    ds:flt_50A918
fstp    ds:flt_8876FC
xor     eax, eax
mov     al, [esi+19h]
mov     [esp+2Ch+var_14], eax
fild    word ptr [esp+2Ch+var_14]
fmul    ds:flt_50A918
fstp    ds:flt_887700
fild    word ptr [esi+20h]
fmul    ds:flt_50A910
fstp    ds:flt_887704
fild    word ptr [esi+22h]
fmul    ds:flt_50A910
fstp    ds:flt_887708
mov     eax, [esi+30h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+30h]
fdivr   ds:flt_50A914
fstp    ds:flt_887710
mov     eax, [esp+2Ch+var_18]
mov     ds:dword_887714, eax
mov     eax, [esp+2Ch+var_24]
mov     ds:dword_887718, eax
xor     eax, eax
mov     al, [esi+24h]
mov     [esp+2Ch+var_14], eax
fild    word ptr [esp+2Ch+var_14]
fmul    ds:flt_50A918
fstp    ds:flt_88771C
xor     eax, eax
mov     al, [esi+25h]
mov     [esp+2Ch+var_14], eax
fild    word ptr [esp+2Ch+var_14]
fmul    ds:flt_50A918
fstp    ds:flt_887720
xor     edx, edx
mov     ds:dword_88772C, edx
mov     dx, [esi+0Eh]
xor     eax, eax
mov     ax, [esi+1Ah]
call    sub_4F2941
mov     ecx, [esp+2Ch+var_2C]
test    ecx, ecx
jnz     short loc_4F4F97
cmp     [esp+2Ch+var_28], 0
jnz     short loc_4F4F97
cmp     [esp+2Ch+var_24], 0
jz      short loc_4F4F9C

loc_4F4F97:
mov     ecx, 1

loc_4F4F9C:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
mov     eax, 1
call    sub_4F2F6B
mov     eax, 1

loc_4F4FB9:
call    sub_4F16F3
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2
push    9
push    eax
call    dword ptr [edx+58h]
xor     edx, edx
mov     dx, [esi+1Ah]
xor     eax, eax
mov     al, [esi+7]
call    sub_4F1A5A
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    3
push    offset flt_8876C4
push    1C4h
push    4
push    eax
call    dword ptr [edx+70h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    9
push    eax
call    dword ptr [edx+58h]
add     esp, 1Ch
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F4D7C endp




sub_4F500F proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 1Ch
mov     esi, eax
mov     eax, esp
push    eax
lea     eax, [esp+30h+var_20]
push    eax
xor     eax, eax
mov     ax, [esi+1Ah]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
lea     eax, [esp+2Ch+var_28]
push    eax
lea     eax, [esp+30h+var_1C]
push    eax
xor     eax, eax
mov     ax, [esi+1Ah]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+12h]
xor     edx, edx
mov     dl, [esi+11h]
xor     eax, eax
mov     al, [esi+10h]
call    sub_4F195A
lea     eax, [esp+2Ch+var_24]
push    eax
lea     eax, [esp+30h+var_18]
push    eax
xor     eax, eax
mov     ax, [esi+1Ah]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+1Eh]
xor     edx, edx
mov     dl, [esi+1Dh]
xor     eax, eax
mov     al, [esi+1Ch]
call    sub_4F195A
fld     dword ptr [esi+28h]
fmul    ds:dbl_50A91C
fstp    ds:flt_8876C4
fld     dword ptr [esi+2Ch]
fmul    ds:dbl_50A91C
fstp    ds:flt_8876C8
mov     eax, [esi+8]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+8]
fdivr   ds:flt_50A924
fstp    ds:flt_8876D0
mov     eax, [esp+2Ch+var_20]
mov     ds:dword_8876D4, eax
mov     eax, [esp+2Ch+var_2C]
mov     ds:dword_8876D8, eax
xor     eax, eax
mov     al, [esi+0Ch]
mov     [esp+2Ch+var_14], eax
fild    word ptr [esp+2Ch+var_14]
fmul    ds:flt_50A928
fstp    ds:flt_8876DC
xor     eax, eax
mov     al, [esi+0Dh]
mov     [esp+2Ch+var_14], eax
fild    word ptr [esp+2Ch+var_14]
fmul    ds:flt_50A928
fstp    ds:flt_8876E0
fld     dword ptr [esi+30h]
fmul    ds:dbl_50A91C
fstp    ds:flt_8876E4
fld     dword ptr [esi+34h]
fmul    ds:dbl_50A91C
fstp    ds:flt_8876E8
mov     eax, [esi+14h]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+14h]
fdivr   ds:flt_50A924
fstp    ds:flt_8876F0
mov     eax, [esp+2Ch+var_1C]
mov     ds:dword_8876F4, eax
mov     eax, [esp+2Ch+var_28]
mov     ds:dword_8876F8, eax
xor     eax, eax
mov     al, [esi+18h]
mov     [esp+2Ch+var_14], eax
fild    word ptr [esp+2Ch+var_14]
fmul    ds:flt_50A928
fstp    ds:flt_8876FC
xor     eax, eax
mov     al, [esi+19h]
mov     [esp+2Ch+var_14], eax
fild    word ptr [esp+2Ch+var_14]
fmul    ds:flt_50A928
fstp    ds:flt_887700
fld     dword ptr [esi+38h]
fmul    ds:dbl_50A91C
fstp    ds:flt_887704
fld     dword ptr [esi+3Ch]
fmul    ds:dbl_50A91C
fstp    ds:flt_887708
mov     eax, [esi+20h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+20h]
fdivr   ds:flt_50A924
fstp    ds:flt_887710
mov     eax, [esp+2Ch+var_18]
mov     ds:dword_887714, eax
mov     eax, [esp+2Ch+var_24]
mov     ds:dword_887718, eax
xor     eax, eax
mov     al, [esi+24h]
mov     [esp+2Ch+var_14], eax
fild    word ptr [esp+2Ch+var_14]
fmul    ds:flt_50A928
fstp    ds:flt_88771C
xor     eax, eax
mov     al, [esi+25h]
mov     [esp+2Ch+var_14], eax
fild    word ptr [esp+2Ch+var_14]
fmul    ds:flt_50A928
fstp    ds:flt_887720
xor     edx, edx
mov     ds:dword_88772C, edx
mov     dx, [esi+0Eh]
xor     eax, eax
mov     ax, [esi+1Ah]
call    sub_4F2941
mov     ecx, [esp+2Ch+var_2C]
test    ecx, ecx
jnz     short loc_4F522A
cmp     [esp+2Ch+var_28], 0
jnz     short loc_4F522A
cmp     [esp+2Ch+var_24], 0
jz      short loc_4F522F

loc_4F522A:
mov     ecx, 1

loc_4F522F:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
xor     eax, eax
call    sub_4F2F6B
xor     eax, eax
jmp     loc_4F4FB9
sub_4F500F endp




sub_4F524B proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_4= dword ptr -4
arg_0= dword ptr  4
arg_4= dword ptr  8

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 20h
mov     esi, eax
mov     eax, esp
push    eax
lea     eax, [esp+34h+var_20]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
lea     eax, [esp+30h+var_2C]
push    eax
lea     eax, [esp+34h+var_1C]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+0Eh]
xor     edx, edx
mov     dl, [esi+0Dh]
xor     eax, eax
mov     al, [esi+0Ch]
call    sub_4F195A
lea     eax, [esp+30h+var_28]
push    eax
lea     eax, [esp+34h+var_18]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+16h]
xor     edx, edx
mov     dl, [esi+15h]
xor     eax, eax
mov     al, [esi+14h]
call    sub_4F195A
lea     eax, [esp+30h+var_24]
push    eax
lea     eax, [esp+34h+var_14]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+1Eh]
xor     edx, edx
mov     dl, [esi+1Dh]
xor     eax, eax
mov     al, [esi+1Ch]
call    sub_4F195A
fild    word ptr [esi+8]
fmul    ds:flt_50A92C
fstp    ds:flt_8876C4
fild    word ptr [esi+0Ah]
fmul    ds:flt_50A92C
fstp    ds:flt_8876C8
mov     eax, [esi+24h]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+24h]
fdivr   ds:flt_50A930
fstp    ds:flt_8876D0
mov     eax, [esp+30h+var_20]
mov     ds:dword_8876D4, eax
mov     eax, [esp+30h+var_30]
mov     ds:dword_8876D8, eax
fild    word ptr [esi+10h]
fmul    ds:flt_50A92C
fstp    ds:flt_8876E4
fild    word ptr [esi+12h]
fmul    ds:flt_50A92C
fstp    ds:flt_8876E8
mov     eax, [esi+28h]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+28h]
fdivr   ds:flt_50A930
fstp    ds:flt_8876F0
mov     eax, [esp+30h+var_1C]
mov     ds:dword_8876F4, eax
mov     eax, [esp+30h+var_2C]
mov     ds:dword_8876F8, eax
fild    word ptr [esi+18h]
fmul    ds:flt_50A92C
fstp    ds:flt_887704
fild    word ptr [esi+1Ah]
fmul    ds:flt_50A92C
fstp    ds:flt_887708
mov     eax, [esi+2Ch]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+2Ch]
fdivr   ds:flt_50A930
fstp    ds:flt_887710
mov     eax, [esp+30h+var_18]
mov     ds:dword_887714, eax
mov     eax, [esp+30h+var_28]
mov     ds:dword_887718, eax
fild    word ptr [esi+20h]
fmul    ds:flt_50A92C
fstp    ds:flt_887724
fild    word ptr [esi+22h]
fmul    ds:flt_50A92C
fstp    ds:flt_887728
mov     eax, [esi+30h]
mov     ds:dword_88772C, eax
fld     dword ptr [esi+30h]
fdivr   ds:flt_50A930
fstp    ds:flt_887730
mov     eax, [esp+30h+var_14]
mov     ds:dword_887734, eax
mov     eax, [esp+30h+var_24]
mov     ds:dword_887738, eax
xor     edx, edx
mov     ds:dword_551D20, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    0
push    eax
call    dword ptr [edx+98h]
mov     ecx, [esp+4+var_4]
test    ecx, ecx
jnz     short loc_4F5467
cmp     dword ptr [esp+4], 0
jnz     short loc_4F5467
cmp     [esp+4+arg_0], 0
jnz     short loc_4F5467
cmp     [esp+4+arg_4], 0
jz      short loc_4F546C

loc_4F5467:
mov     ecx, 1

loc_4F546C:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
mov     eax, 1
call    sub_4F2F6B
mov     eax, 1

loc_4F5489:
call    sub_4F16F3
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2
push    9
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_887770
xor     edx, edx
mov     dx, [eax]
xor     eax, eax
mov     al, [esi+7]
call    sub_4F1A5A
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    4
push    offset flt_8876C4
push    1C4h
push    5
push    eax
call    dword ptr [edx+70h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    9
push    eax
call    dword ptr [edx+58h]
add     esp, 20h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F524B endp




sub_4F54E3 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_4= dword ptr -4
arg_0= dword ptr  4
arg_4= dword ptr  8

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 20h
mov     esi, eax
mov     eax, esp
push    eax
lea     eax, [esp+34h+var_20]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
lea     eax, [esp+30h+var_2C]
push    eax
lea     eax, [esp+34h+var_1C]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+0Eh]
xor     edx, edx
mov     dl, [esi+0Dh]
xor     eax, eax
mov     al, [esi+0Ch]
call    sub_4F195A
lea     eax, [esp+30h+var_28]
push    eax
lea     eax, [esp+34h+var_18]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+16h]
xor     edx, edx
mov     dl, [esi+15h]
xor     eax, eax
mov     al, [esi+14h]
call    sub_4F195A
lea     eax, [esp+30h+var_24]
push    eax
lea     eax, [esp+34h+var_14]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+1Eh]
xor     edx, edx
mov     dl, [esi+1Dh]
xor     eax, eax
mov     al, [esi+1Ch]
call    sub_4F195A
fld     dword ptr [esi+24h]
fmul    ds:dbl_50A934
fstp    ds:flt_8876C4
fld     dword ptr [esi+28h]
fmul    ds:dbl_50A934
fstp    ds:flt_8876C8
mov     eax, [esi+8]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+8]
fdivr   ds:flt_50A93C
fstp    ds:flt_8876D0
mov     eax, [esp+30h+var_20]
mov     ds:dword_8876D4, eax
mov     eax, [esp+30h+var_30]
mov     ds:dword_8876D8, eax
fld     dword ptr [esi+2Ch]
fmul    ds:dbl_50A934
fstp    ds:flt_8876E4
fld     dword ptr [esi+30h]
fmul    ds:dbl_50A934
fstp    ds:flt_8876E8
mov     eax, [esi+10h]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+10h]
fdivr   ds:flt_50A93C
fstp    ds:flt_8876F0
mov     eax, [esp+30h+var_1C]
mov     ds:dword_8876F4, eax
mov     eax, [esp+30h+var_2C]
mov     ds:dword_8876F8, eax
fld     dword ptr [esi+34h]
fmul    ds:dbl_50A934
fstp    ds:flt_887704
fld     dword ptr [esi+38h]
fmul    ds:dbl_50A934
fstp    ds:flt_887708
mov     eax, [esi+18h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+18h]
fdivr   ds:flt_50A93C
fstp    ds:flt_887710
mov     eax, [esp+30h+var_18]
mov     ds:dword_887714, eax
mov     eax, [esp+30h+var_28]
mov     ds:dword_887718, eax
fld     dword ptr [esi+3Ch]
fmul    ds:dbl_50A934
fstp    ds:flt_887724
fld     dword ptr [esi+40h]
fmul    ds:dbl_50A934
fstp    ds:flt_887728
mov     eax, [esi+20h]
mov     ds:dword_88772C, eax
fld     dword ptr [esi+20h]
fdivr   ds:flt_50A93C
fstp    ds:flt_887730
mov     eax, [esp+30h+var_14]
mov     ds:dword_887734, eax
mov     eax, [esp+30h+var_24]
mov     ds:dword_887738, eax
xor     edx, edx
mov     ds:dword_551D20, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    0
push    eax
call    dword ptr [edx+98h]
mov     ecx, [esp+4+var_4]
test    ecx, ecx
jnz     short loc_4F56FF
cmp     dword ptr [esp+4], 0
jnz     short loc_4F56FF
cmp     [esp+4+arg_0], 0
jnz     short loc_4F56FF
cmp     [esp+4+arg_4], 0
jz      short loc_4F5704

loc_4F56FF:
mov     ecx, 1

loc_4F5704:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
xor     eax, eax
call    sub_4F2F6B
xor     eax, eax
jmp     loc_4F5489
sub_4F54E3 endp




sub_4F5720 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 24h
mov     esi, eax
mov     eax, esp
push    eax
lea     eax, [esp+38h+var_24]
push    eax
xor     eax, eax
mov     ax, [esi+1Ah]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
lea     eax, [esp+34h+var_30]
push    eax
lea     eax, [esp+38h+var_20]
push    eax
xor     eax, eax
mov     ax, [esi+1Ah]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+12h]
xor     edx, edx
mov     dl, [esi+11h]
xor     eax, eax
mov     al, [esi+10h]
call    sub_4F195A
lea     eax, [esp+34h+var_2C]
push    eax
lea     eax, [esp+38h+var_1C]
push    eax
xor     eax, eax
mov     ax, [esi+1Ah]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+1Eh]
xor     edx, edx
mov     dl, [esi+1Dh]
xor     eax, eax
mov     al, [esi+1Ch]
call    sub_4F195A
lea     eax, [esp+34h+var_28]
push    eax
lea     eax, [esp+38h+var_18]
push    eax
xor     eax, eax
mov     ax, [esi+1Ah]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+2Ah]
xor     edx, edx
mov     dl, [esi+29h]
xor     eax, eax
mov     al, [esi+28h]
call    sub_4F195A
fild    word ptr [esi+8]
fmul    ds:flt_50A940
fstp    ds:flt_8876C4
fild    word ptr [esi+0Ah]
fmul    ds:flt_50A940
fstp    ds:flt_8876C8
mov     eax, [esi+34h]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+34h]
fdivr   ds:flt_50A944
fstp    ds:flt_8876D0
mov     eax, [esp+34h+var_24]
mov     ds:dword_8876D4, eax
mov     eax, [esp+34h+var_34]
mov     ds:dword_8876D8, eax
xor     eax, eax
mov     al, [esi+0Ch]
mov     [esp+34h+var_14], eax
fild    word ptr [esp+34h+var_14]
fmul    ds:flt_50A948
fstp    ds:flt_8876DC
xor     eax, eax
mov     al, [esi+0Dh]
mov     [esp+34h+var_14], eax
fild    word ptr [esp+34h+var_14]
fmul    ds:flt_50A948
fstp    ds:flt_8876E0
fild    word ptr [esi+14h]
fmul    ds:flt_50A940
fstp    ds:flt_8876E4
fild    word ptr [esi+16h]
fmul    ds:flt_50A940
fstp    ds:flt_8876E8
mov     eax, [esi+38h]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+38h]
fdivr   ds:flt_50A944
fstp    ds:flt_8876F0
mov     eax, [esp+34h+var_20]
mov     ds:dword_8876F4, eax
mov     eax, [esp+34h+var_30]
mov     ds:dword_8876F8, eax
xor     eax, eax
mov     al, [esi+18h]
mov     [esp+34h+var_14], eax
fild    word ptr [esp+34h+var_14]
fmul    ds:flt_50A948
fstp    ds:flt_8876FC
xor     eax, eax
mov     al, [esi+19h]
mov     [esp+34h+var_14], eax
fild    word ptr [esp+34h+var_14]
fmul    ds:flt_50A948
fstp    ds:flt_887700
fild    word ptr [esi+20h]
fmul    ds:flt_50A940
fstp    ds:flt_887704
fild    word ptr [esi+22h]
fmul    ds:flt_50A940
fstp    ds:flt_887708
mov     eax, [esi+3Ch]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+3Ch]
fdivr   ds:flt_50A944
fstp    ds:flt_887710
mov     eax, [esp+34h+var_1C]
mov     ds:dword_887714, eax
mov     eax, [esp+34h+var_2C]
mov     ds:dword_887718, eax
xor     eax, eax
mov     al, [esi+24h]
mov     [esp+34h+var_14], eax
fild    word ptr [esp+34h+var_14]
fmul    ds:flt_50A948
fstp    ds:flt_88771C
xor     eax, eax
mov     al, [esi+25h]
mov     [esp+34h+var_14], eax
fild    word ptr [esp+34h+var_14]
fmul    ds:flt_50A948
fstp    ds:flt_887720
fild    word ptr [esi+2Ch]
fmul    ds:flt_50A940
fstp    ds:flt_887724
fild    word ptr [esi+2Eh]
fmul    ds:flt_50A940
fstp    ds:flt_887728
mov     eax, [esi+40h]
mov     ds:dword_88772C, eax
fld     dword ptr [esi+40h]
fdivr   ds:flt_50A944
fstp    ds:flt_887730
mov     eax, [esp+34h+var_18]
mov     ds:dword_887734, eax
mov     eax, [esp+34h+var_28]
mov     ds:dword_887738, eax
xor     eax, eax
mov     al, [esi+30h]
mov     [esp+34h+var_14], eax
fild    word ptr [esp+34h+var_14]
fmul    ds:flt_50A948
fstp    ds:flt_88773C
xor     eax, eax
mov     al, [esi+31h]
mov     [esp+34h+var_14], eax
fild    word ptr [esp+34h+var_14]
fmul    ds:flt_50A948
fstp    ds:flt_887740
xor     edx, edx
mov     dx, [esi+0Eh]
xor     eax, eax
mov     ax, [esi+1Ah]
call    sub_4F2941
cmp     [esp+34h+var_34], 0
jnz     short loc_4F59DF
mov     ecx, [esp+34h+var_30]
test    ecx, ecx
jnz     short loc_4F59DF
cmp     [esp+34h+var_2C], 0
jnz     short loc_4F59DF
cmp     [esp+34h+var_28], 0
jz      short loc_4F59E4

loc_4F59DF:
mov     ecx, 1

loc_4F59E4:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
mov     eax, 1
call    sub_4F2F6B
mov     eax, 1

loc_4F5A01:
call    sub_4F16F3
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2
push    9
push    eax
call    dword ptr [edx+58h]
xor     edx, edx
mov     dx, [esi+1Ah]
xor     eax, eax
mov     al, [esi+7]
call    sub_4F1A5A
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    4
push    offset flt_8876C4
push    1C4h
push    5
push    eax
call    dword ptr [edx+70h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    9
push    eax
call    dword ptr [edx+58h]
add     esp, 24h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F5720 endp




sub_4F5A57 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 24h
mov     esi, eax
mov     eax, esp
push    eax
lea     eax, [esp+38h+var_24]
push    eax
xor     eax, eax
mov     ax, [esi+1Ah]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
lea     eax, [esp+34h+var_30]
push    eax
lea     eax, [esp+38h+var_20]
push    eax
xor     eax, eax
mov     ax, [esi+1Ah]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+12h]
xor     edx, edx
mov     dl, [esi+11h]
xor     eax, eax
mov     al, [esi+10h]
call    sub_4F195A
lea     eax, [esp+34h+var_2C]
push    eax
lea     eax, [esp+38h+var_1C]
push    eax
xor     eax, eax
mov     ax, [esi+1Ah]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+1Eh]
xor     edx, edx
mov     dl, [esi+1Dh]
xor     eax, eax
mov     al, [esi+1Ch]
call    sub_4F195A
lea     eax, [esp+34h+var_28]
push    eax
lea     eax, [esp+38h+var_18]
push    eax
xor     eax, eax
mov     ax, [esi+1Ah]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+2Ah]
xor     edx, edx
mov     dl, [esi+29h]
xor     eax, eax
mov     al, [esi+28h]
call    sub_4F195A
fld     dword ptr [esi+34h]
fmul    ds:dbl_50A94C
fstp    ds:flt_8876C4
fld     dword ptr [esi+38h]
fmul    ds:dbl_50A94C
fstp    ds:flt_8876C8
mov     eax, [esi+8]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+8]
fdivr   ds:flt_50A954
fstp    ds:flt_8876D0
mov     eax, [esp+34h+var_24]
mov     ds:dword_8876D4, eax
mov     eax, [esp+34h+var_34]
mov     ds:dword_8876D8, eax
xor     eax, eax
mov     al, [esi+0Ch]
mov     [esp+34h+var_14], eax
fild    word ptr [esp+34h+var_14]
fmul    ds:flt_50A958
fstp    ds:flt_8876DC
xor     eax, eax
mov     al, [esi+0Dh]
mov     [esp+34h+var_14], eax
fild    word ptr [esp+34h+var_14]
fmul    ds:flt_50A958
fstp    ds:flt_8876E0
fld     dword ptr [esi+3Ch]
fmul    ds:dbl_50A94C
fstp    ds:flt_8876E4
fld     dword ptr [esi+40h]
fmul    ds:dbl_50A94C
fstp    ds:flt_8876E8
mov     eax, [esi+14h]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+14h]
fdivr   ds:flt_50A954
fstp    ds:flt_8876F0
mov     eax, [esp+34h+var_20]
mov     ds:dword_8876F4, eax
mov     eax, [esp+34h+var_30]
mov     ds:dword_8876F8, eax
xor     eax, eax
mov     al, [esi+18h]
mov     [esp+34h+var_14], eax
fild    word ptr [esp+34h+var_14]
fmul    ds:flt_50A958
fstp    ds:flt_8876FC
xor     eax, eax
mov     al, [esi+19h]
mov     [esp+34h+var_14], eax
fild    word ptr [esp+34h+var_14]
fmul    ds:flt_50A958
fstp    ds:flt_887700
fld     dword ptr [esi+44h]
fmul    ds:dbl_50A94C
fstp    ds:flt_887704
fld     dword ptr [esi+48h]
fmul    ds:dbl_50A94C
fstp    ds:flt_887708
mov     eax, [esi+20h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+20h]
fdivr   ds:flt_50A954
fstp    ds:flt_887710
mov     eax, [esp+34h+var_1C]
mov     ds:dword_887714, eax
mov     eax, [esp+34h+var_2C]
mov     ds:dword_887718, eax
xor     eax, eax
mov     al, [esi+24h]
mov     [esp+34h+var_14], eax
fild    word ptr [esp+34h+var_14]
fmul    ds:flt_50A958
fstp    ds:flt_88771C
xor     eax, eax
mov     al, [esi+25h]
mov     [esp+34h+var_14], eax
fild    word ptr [esp+34h+var_14]
fmul    ds:flt_50A958
fstp    ds:flt_887720
fld     dword ptr [esi+4Ch]
fmul    ds:dbl_50A94C
fstp    ds:flt_887724
fld     dword ptr [esi+50h]
fmul    ds:dbl_50A94C
fstp    ds:flt_887728
mov     eax, [esi+2Ch]
mov     ds:dword_88772C, eax
fld     dword ptr [esi+2Ch]
fdivr   ds:flt_50A954
fstp    ds:flt_887730
mov     eax, [esp+34h+var_18]
mov     ds:dword_887734, eax
mov     eax, [esp+34h+var_28]
mov     ds:dword_887738, eax
xor     eax, eax
mov     al, [esi+30h]
mov     [esp+34h+var_14], eax
fild    word ptr [esp+34h+var_14]
fmul    ds:flt_50A958
fstp    ds:flt_88773C
xor     eax, eax
mov     al, [esi+31h]
mov     [esp+34h+var_14], eax
fild    word ptr [esp+34h+var_14]
fmul    ds:flt_50A958
fstp    ds:flt_887740
xor     edx, edx
mov     dx, [esi+0Eh]
xor     eax, eax
mov     ax, [esi+1Ah]
call    sub_4F2941
cmp     [esp+34h+var_34], 0
jnz     short loc_4F5D16
mov     ecx, [esp+34h+var_30]
test    ecx, ecx
jnz     short loc_4F5D16
cmp     [esp+34h+var_2C], 0
jnz     short loc_4F5D16
cmp     [esp+34h+var_28], 0
jz      short loc_4F5D1B

loc_4F5D16:
mov     ecx, 1

loc_4F5D1B:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
xor     eax, eax
call    sub_4F2F6B
xor     eax, eax
jmp     loc_4F5A01
sub_4F5A57 endp




sub_4F5D37 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
arg_0= dword ptr  4
arg_4= dword ptr  8

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 10h
mov     esi, eax
lea     eax, [esp+20h+var_18]
push    eax
lea     eax, [esp+24h+var_20]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
lea     eax, [esp+20h+var_14]
push    eax
lea     eax, [esp+24h+var_1C]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+0Eh]
xor     edx, edx
mov     dl, [esi+0Dh]
xor     eax, eax
mov     al, [esi+0Ch]
call    sub_4F195A
fld     dword ptr [esi+14h]
fmul    ds:dbl_50A95C
fstp    ds:flt_8876C4
fld     dword ptr [esi+18h]
fmul    ds:dbl_50A95C
fstp    ds:flt_8876C8
mov     eax, [esi+8]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+8]
fdivr   ds:flt_50A964
fstp    ds:flt_8876D0
mov     eax, [esp+20h+var_20]
mov     ds:dword_8876D4, eax
mov     eax, [esp+20h+var_18]
mov     ds:dword_8876D8, eax
fld     dword ptr [esi+1Ch]
fmul    ds:dbl_50A95C
fstp    ds:flt_8876E4
fld     dword ptr [esi+20h]
fmul    ds:dbl_50A95C
fstp    ds:flt_8876E8
mov     eax, [esi+10h]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+10h]
fdivr   ds:flt_50A964
fstp    ds:flt_8876F0
mov     eax, [esp+20h+var_1C]
mov     ds:dword_8876F4, eax
mov     eax, [esp+20h+var_14]
mov     ds:dword_8876F8, eax
xor     edx, edx
mov     ds:dword_551D20, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    0
push    eax
call    dword ptr [edx+98h]
cmp     [esp+4+arg_0], 0
jnz     short loc_4F5E57
cmp     [esp+4+arg_4], 0
jz      short loc_4F5E5E

loc_4F5E57:
mov     edx, 1
jmp     short loc_4F5E60

loc_4F5E5E:
xor     edx, edx

loc_4F5E60:
mov     eax, ds:dword_551D10
mov     esi, [eax]
push    edx
push    1Dh
push    eax
call    dword ptr [esi+58h]
xor     eax, eax
call    sub_4F2F6B
mov     eax, 1
call    sub_4F16F3
mov     eax, ds:dword_551D10
mov     esi, [eax]
push    2
push    9
push    eax
call    dword ptr [esi+58h]
mov     eax, ds:dword_551D10
mov     esi, [eax]
push    0
push    1Bh
push    eax
call    dword ptr [esi+58h]
mov     eax, ds:dword_551D10
mov     esi, [eax]
push    0
push    2
push    offset flt_8876C4
push    1C4h
push    3
push    eax
call    dword ptr [esi+70h]
mov     eax, ds:dword_551D10
mov     esi, [eax]
push    1
push    9
push    eax
call    dword ptr [esi+58h]
jmp     loc_4F44BF
sub_4F5D37 endp




sub_4F5ECC proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_4= dword ptr -4

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 0Ch
mov     esi, eax
mov     eax, esp
push    eax
lea     eax, [esp+20h+var_18]
push    eax
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
fild    word ptr [esi+8]
fmul    ds:flt_50A968
fstp    ds:flt_8876C4
fild    word ptr [esi+0Ah]
fmul    ds:flt_50A968
fstp    ds:flt_8876C8
mov     ds:dword_8876CC, 3F7D70A4h
mov     ecx, 3DCCCCCDh
mov     ds:flt_8876D0, ecx
mov     eax, [esp+1Ch+var_18]
mov     ds:dword_8876D4, eax
mov     eax, [esp+1Ch+var_1C]
mov     ds:dword_8876D8, eax
mov     edx, [esi+6]
sar     edx, 10h
mov     eax, [esi+0Ah]
sar     eax, 10h
add     eax, edx
mov     [esp+1Ch+var_14], eax
fild    [esp+1Ch+var_14]
fmul    ds:flt_50A968
fstp    ds:flt_8876E4
mov     eax, ds:flt_8876C8
mov     ds:flt_8876E8, eax
mov     ebx, 3F7D70A4h
mov     ds:dword_8876EC, ebx
mov     ds:flt_8876F0, ecx
mov     eax, [esp+1Ch+var_18]
mov     ds:dword_8876F4, eax
mov     eax, [esp+1Ch+var_1C]
mov     ds:dword_8876F8, eax
mov     eax, ds:flt_8876C4
mov     ds:flt_887704, eax
mov     edx, [esi+8]
sar     edx, 10h
mov     eax, [esi+0Ch]
sar     eax, 10h
add     eax, edx
mov     [esp+1Ch+var_14], eax
fild    [esp+1Ch+var_14]
fmul    ds:flt_50A968
fstp    ds:flt_887708
mov     ds:dword_88770C, ebx
mov     ds:flt_887710, ecx
mov     eax, [esp+1Ch+var_18]
mov     ds:dword_887714, eax
mov     eax, [esp+1Ch+var_1C]
mov     ds:dword_887718, eax
mov     eax, ds:flt_8876E4
mov     ds:flt_887724, eax
mov     eax, ds:flt_887708
mov     ds:flt_887728, eax
mov     ds:dword_88772C, ebx
mov     ds:flt_887730, ecx
mov     eax, [esp+1Ch+var_18]
mov     ds:dword_887734, eax
mov     eax, [esp+1Ch+var_1C]
mov     ds:dword_887738, eax
xor     ebx, ebx
mov     ds:dword_551D20, ebx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ebx
push    ebx
push    eax
call    dword ptr [edx+98h]
cmp     [esp+4+var_4], 0
jz      short loc_4F6033
mov     ebx, 1

loc_4F6033:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ebx
push    1Dh
push    eax
call    dword ptr [edx+58h]
mov     eax, 1
call    sub_4F2F6B
mov     eax, 1
call    sub_4F16F3
mov     edx, ds:dword_887770
mov     dx, [edx]
and     edx, 0FFFFh
xor     eax, eax
mov     al, [esi+7]
call    sub_4F1A5A
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    4
push    offset flt_8876C4
push    1C4h
push    5
jmp     loc_4F3BD1
sub_4F5ECC endp




sub_4F608A proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 10h
mov     esi, eax
mov     eax, esp
push    eax
lea     eax, [esp+24h+var_1C]
push    eax
mov     edx, ds:dword_887770
xor     eax, eax
mov     ax, [edx]
push    eax
xor     ecx, ecx
mov     cl, [esi+7]
xor     ebx, ebx
mov     bl, [esi+6]
xor     edx, edx
mov     dl, [esi+5]
xor     eax, eax
mov     al, [esi+4]
call    sub_4F195A
fild    word ptr [esi+8]
fmul    ds:flt_50A96C
fstp    ds:flt_8876C4
fild    word ptr [esi+0Ah]
fmul    ds:flt_50A96C
fstp    ds:flt_8876C8
mov     ds:dword_8876CC, 3F7D70A4h
mov     ecx, 3DCCCCCDh
mov     ds:flt_8876D0, ecx
mov     eax, [esp+20h+var_1C]
mov     ds:dword_8876D4, eax
mov     eax, [esp+20h+var_20]
mov     ds:dword_8876D8, eax
xor     eax, eax
mov     al, [esi+0Ch]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A970
fadd    ds:flt_50A974
fstp    ds:flt_8876DC
xor     eax, eax
mov     al, [esi+0Dh]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A970
fadd    ds:flt_50A974
fstp    ds:flt_8876E0
mov     eax, [esi+6]
sar     eax, 10h
mov     edx, [esi+0Eh]
sar     edx, 10h
add     eax, edx
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fmul    ds:flt_50A96C
fstp    ds:flt_8876E4
mov     eax, ds:flt_8876C8
mov     ds:flt_8876E8, eax
mov     ebx, 3F7D70A4h
mov     ds:dword_8876EC, ebx
mov     ds:flt_8876F0, ecx
mov     eax, [esp+20h+var_1C]
mov     ds:dword_8876F4, eax
mov     eax, [esp+20h+var_20]
mov     ds:dword_8876F8, eax
xor     edx, edx
mov     dl, [esi+0Ch]
mov     eax, [esi+0Eh]
sar     eax, 10h
add     eax, edx
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fmul    ds:flt_50A970
fadd    ds:flt_50A978
fstp    ds:flt_8876FC
mov     eax, ds:flt_8876E0
mov     ds:flt_887700, eax
mov     eax, ds:flt_8876C4
mov     ds:flt_887704, eax
mov     eax, [esi+8]
sar     eax, 10h
mov     edx, [esi+10h]
sar     edx, 10h
add     eax, edx
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fmul    ds:flt_50A96C
fstp    ds:flt_887708
mov     ds:dword_88770C, ebx
mov     ds:flt_887710, ecx
mov     eax, [esp+20h+var_1C]
mov     ds:dword_887714, eax
mov     eax, [esp+20h+var_20]
mov     ds:dword_887718, eax
mov     eax, ds:flt_8876DC
mov     ds:flt_88771C, eax
xor     edx, edx
mov     dl, [esi+0Dh]
mov     eax, [esi+10h]
sar     eax, 10h
add     eax, edx
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fmul    ds:flt_50A970
fadd    ds:flt_50A978
fstp    ds:flt_887720
mov     eax, ds:flt_8876E4
mov     ds:flt_887724, eax
mov     eax, ds:flt_887708
mov     ds:flt_887728, eax
mov     edx, ebx
mov     ds:dword_88772C, ebx
mov     ds:flt_887730, ecx
mov     eax, [esp+20h+var_1C]
mov     ds:dword_887734, eax
mov     eax, [esp+20h+var_20]
mov     ds:dword_887738, eax
mov     eax, ds:flt_8876FC
mov     ds:flt_88773C, eax
mov     eax, ds:flt_887720
mov     ds:flt_887740, eax
xor     edx, ebx
mov     dx, [esi+0Eh]
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
call    sub_4F2941
cmp     [esp+20h+var_20], 0
jz      short loc_4F62A7
mov     ecx, 1
jmp     short loc_4F62A9

loc_4F62A7:
xor     ecx, ecx

