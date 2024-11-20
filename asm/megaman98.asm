loc_4E8A6C:
mov     eax, [edi]
movsx   dx, al
mov     cl, byte ptr [esp+44h+var_20]
shl     edx, cl
mov     ebx, [esp+44h+var_34]
add     ebx, edx
mov     ds:word_55FE08, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
and     edx, 0FFh
shl     edx, cl
mov     ecx, [esp+44h+var_30]
sub     ecx, edx
mov     ds:word_55FE0A, cx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
movsx   edx, dl
mov     cl, byte ptr [esp+44h+var_20]
shl     edx, cl
add     edx, [esp+44h+var_38]
mov     ds:word_55FE0C, dx
sar     eax, 18h
and     eax, 0FFh
movsx   eax, al
mov     cl, byte ptr [esp+44h+var_20]
shl     eax, cl
add     eax, [esp+44h+var_34]
mov     ds:word_55FE10, ax
mov     eax, [edi+4]
mov     dl, al
xor     dh, dh
shl     edx, cl
mov     ebx, [esp+44h+var_30]
sub     ebx, edx
mov     ds:word_55FE12, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
movsx   edx, dl
shl     edx, cl
mov     ebp, [esp+44h+var_38]
add     edx, ebp
mov     ds:word_55FE14, dx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
movsx   edx, dl
shl     edx, cl
add     edx, [esp+44h+var_34]
mov     ds:word_55FE18, dx
sar     eax, 18h
and     eax, 0FFh
and     eax, 0FFh
mov     cl, byte ptr [esp+44h+var_20]
shl     eax, cl
mov     edx, [esp+44h+var_30]
sub     edx, eax
mov     ds:word_55FE1A, dx
mov     eax, [edi+8]
movsx   dx, al
shl     edx, cl
mov     ecx, [esp+44h+var_38]
add     ecx, edx
mov     ds:word_55FE1C, cx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
movsx   edx, dl
mov     cl, byte ptr [esp+44h+var_20]
shl     edx, cl
add     edx, [esp+44h+var_34]
mov     ds:word_55FE20, dx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
and     edx, 0FFh
shl     edx, cl
mov     ecx, [esp+44h+var_30]
sub     ecx, edx
mov     ds:word_55FE22, cx
sar     eax, 18h
and     eax, 0FFh
movsx   eax, al
mov     cl, byte ptr [esp+44h+var_20]
shl     eax, cl
add     eax, ebp
mov     ds:word_55FE24, ax
push    4
lea     ecx, [esp+48h+var_40]
mov     ebx, offset dword_55FE28
mov     edx, [esp+48h+var_28]
mov     eax, offset word_55FE08
call    sub_4F04FB
mov     edx, eax
test    eax, eax
jz      loc_4E8A3F
cmp     eax, 3
jnz     loc_4E85D1
lea     eax, [esp+44h+var_1C]
push    eax             ; int
lea     eax, [esp+48h+var_44]
push    eax             ; int
push    ds:flt_55FE50   ; float
push    ds:flt_55FE40   ; float
push    ds:dword_55FE30 ; int
mov     eax, esi
call    sub_4E8234
jmp     loc_4E85FA

loc_4E8C0F:
test    esi, 10000000h
jnz     loc_4E8A3F
xor     ebx, ebx
mov     [esp+44h+var_24], ebx
jmp     loc_4E8A3F

loc_4E8C26:
add     esp, 2Ch
jmp     loc_4E8111
sub_4E8521 endp




sub_4E8C2E proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     edi, edx
mov     esi, [eax]
and     esi, 0FFh
xor     eax, eax

loc_4E8C40:
cmp     eax, esi
jnb     short loc_4E8C58
mov     edx, eax
shl     edx, 2
lea     ecx, [ebx+edx]
mov     ecx, [ecx+4]
mov     ds:dword_55FDC8[edx], ecx
inc     eax
jmp     short loc_4E8C40

loc_4E8C58:
shl     esi, 2
add     esi, 4
add     ebx, esi
mov     eax, ds:dword_56F182
sar     eax, 10h
mov     ecx, ds:dword_55FE76
sar     ecx, 10h
lea     edx, [ebx+10h]
cmp     eax, ecx
jge     short loc_4E8C9F
mov     esi, ds:dword_56F186
sar     esi, 10h
mov     eax, ds:dword_55FE7A
sar     eax, 10h
lea     ecx, [ebx+18h]
cmp     esi, eax
jge     short loc_4E8C9B

loc_4E8C90:
mov     eax, ebx

loc_4E8C92:
call    sub_4E8D3B
mov     eax, ecx
jmp     short loc_4E8CC0

loc_4E8C9B:
mov     eax, edx
jmp     short loc_4E8C92

loc_4E8C9F:
mov     esi, ds:dword_56F186
sar     esi, 10h
mov     eax, ds:dword_55FE7A
sar     eax, 10h
lea     ecx, [ebx+8]
cmp     esi, eax
jl      short loc_4E8C90
mov     eax, ecx
call    sub_4E8D3B
mov     eax, edx

loc_4E8CC0:
call    sub_4E8D3B
lea     eax, [ebx+20h]
call    sub_4E8D3B
cmp     edi, ds:dword_55FDBC
jg      short loc_4E8CDD
lea     eax, [ebx+28h]
call    sub_4E8D3B

loc_4E8CDD:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4E8C2E endp




sub_4E8CE2 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     edx, [eax]
mov     edi, edx
and     edi, 3F00h
shr     edi, 7
mov     esi, edx
and     esi, 0FFh
xor     edx, edx

loc_4E8CFF:
cmp     edx, esi
jnb     short loc_4E8D17
mov     eax, edx
shl     eax, 2
lea     ecx, [ebx+eax]
mov     ecx, [ecx+4]
mov     ds:dword_55FDC8[eax], ecx
inc     edx
jmp     short loc_4E8CFF

loc_4E8D17:
mov     eax, esi
shl     eax, 2
add     eax, 4
add     ebx, eax
xor     edx, edx

loc_4E8D23:
mov     eax, edx
shl     eax, 2
add     eax, ebx
call    sub_4E8D3B
add     edx, 2
cmp     edx, edi
jb      short loc_4E8D23
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4E8CE2 endp




sub_4E8D3B proc near

var_48= dword ptr -48h
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

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 30h
mov     ecx, [eax]
mov     edx, [eax+4]
mov     eax, edx
shr     eax, 18h
mov     [esp+48h+var_3C], eax
mov     ebx, ecx
shr     ebx, 1Ch
xor     eax, eax
mov     al, ds:byte_77EABF
add     ebx, eax
mov     [esp+48h+var_20], ebx
and     edx, 0FFFFFFh
lea     ebp, [edx+4]
add     ebp, offset unk_6B87CC
mov     edx, ecx
and     edx, 0FFFFFFh
mov     ebx, offset unk_6B87CC
add     ebx, edx
mov     [esp+48h+var_28], ebx
mov     edx, ecx
and     edx, 0F000000h
shr     edx, 18h
mov     edx, ds:dword_55FDC8[edx*4]
mov     ecx, edx
shr     ecx, 10h
mov     ds:dword_55FE88, ecx
and     edx, 0FFFFh
mov     ds:dword_55FE80, edx
mov     edi, 1
mov     edx, ds:dword_55FE76
sar     edx, 10h
mov     cl, al
shl     edx, cl
mov     [esp+48h+var_30], edx
mov     edx, ds:dword_55FE76+2
sar     edx, 10h
shl     edx, cl
mov     [esp+48h+var_38], edx
mov     edx, ds:dword_55FE7A
sar     edx, 10h
shl     edx, cl
mov     [esp+48h+var_34], edx
jmp     loc_4E93B2

loc_4E8DE8:
lea     eax, [esp+48h+var_1C]
push    eax             ; int
lea     eax, [esp+4Ch+var_48]
push    eax             ; int
push    ds:flt_55FE60   ; float
push    ds:flt_55FE50   ; float
push    ds:flt_55FE40   ; float
push    ds:dword_55FE30 ; int
mov     eax, esi
call    sub_4E82C1

loc_4E8E11:
mov     [esp+48h+var_2C], eax
fld     [esp+48h+var_48]
call    __CHP
fistp   [esp+48h+var_40]
mov     eax, esi
and     eax, 2FFFFFFh
or      eax, 0AC000000h
mov     ds:dword_55FE84, eax
mov     eax, [esp+48h+var_44]
test    eax, eax
jg      short loc_4E8E4E
test    esi, 40000000h
jz      loc_4E9574
mov     ecx, eax
neg     ecx
mov     [esp+48h+var_44], ecx

loc_4E8E4E:
test    esi, esi
jle     loc_4E8F67
mov     eax, [esp+48h+var_40]
cmp     eax, ds:dword_55FDC0
jge     loc_4E8F67
cmp     edx, 3
jnz     short loc_4E8EE8
lea     eax, [esp+48h+var_1C]
push    eax             ; int
lea     eax, [esp+4Ch+var_48]
push    eax             ; int
push    ds:flt_55FE48   ; float
push    ds:flt_55FE38   ; float
push    ds:dword_55FE28 ; int
call    sub_4E8118
cmp     [esp+48h+var_48], 43160000h
jle     loc_4E8F67
cmp     [esp+48h+var_1C], 432A0000h
jge     loc_4E8F67
lea     eax, [esp+48h+var_1C]
push    eax             ; int
lea     eax, [esp+4Ch+var_48]
push    eax             ; int
push    ds:flt_55FE4C   ; float
push    ds:flt_55FE3C   ; float
push    ds:dword_55FE2C ; int
call    sub_4E8118
cmp     [esp+48h+var_48], 42F00000h
jle     loc_4E8F67
cmp     [esp+48h+var_1C], 43200000h
jge     loc_4E8F67
jmp     loc_4E8F5C

loc_4E8EE8:
lea     eax, [esp+48h+var_1C]
push    eax             ; int
lea     eax, [esp+4Ch+var_48]
push    eax             ; int
push    ds:flt_55FE58   ; float
push    ds:flt_55FE48   ; float
push    ds:flt_55FE38   ; float
push    ds:dword_55FE28 ; int
call    sub_4E8192
cmp     [esp+48h+var_48], 43160000h
jle     short loc_4E8F67
cmp     [esp+48h+var_1C], 432A0000h
jge     short loc_4E8F67
lea     eax, [esp+48h+var_1C]
push    eax             ; int
lea     eax, [esp+4Ch+var_48]
push    eax             ; int
push    ds:flt_55FE5C   ; float
push    ds:flt_55FE4C   ; float
push    ds:flt_55FE3C   ; float
push    ds:dword_55FE2C ; int
call    sub_4E8192
cmp     [esp+48h+var_48], 42F00000h
jle     short loc_4E8F67
cmp     [esp+48h+var_1C], 43200000h
jge     short loc_4E8F67

loc_4E8F5C:
mov     eax, ds:dword_77E6F8
or      ds:dword_55FE84, eax

loc_4E8F67:
cmp     edx, 4
jb      short loc_4E8F80
jbe     loc_4E9092
cmp     edx, 5
jz      loc_4E91BE
jmp     loc_4E93AA

loc_4E8F80:
cmp     edx, 3
jnz     loc_4E93AA
mov     eax, ds:dword_77E6DC
mov     ebx, eax
lea     edx, [eax+38h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+20h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+24h], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+28h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+2Ch], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+10h]
mov     edx, ds:flt_55FE48
mov     [eax+30h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+34h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+18h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE54
mov     [eax+1Ch], dx
mov     edx, ds:dword_55FE84
and     edx, 0F7FFFFFFh
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
test    esi, 90000000h
jz      short loc_4E904E
or      byte ptr [eax+17h], 4

loc_4E904E:
test    esi, 10000000h
jz      short loc_4E9064
mov     edx, ebx

loc_4E9058:
mov     eax, edi
call    sub_4F87A6
jmp     loc_4E93AA

loc_4E9064:
mov     eax, [esp+48h+var_2C]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ebx], edx
test    esi, 1000000h
jz      short loc_4E9089

loc_4E9082:
mov     edi, eax
jmp     loc_4E93AA

loc_4E9089:
mov     [eax], ebx
mov     edi, ebx
jmp     loc_4E93AA

loc_4E9092:
mov     eax, ds:dword_77E6DC
mov     [esp+48h+var_24], eax
lea     edx, [eax+48h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+28h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+2Ch], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+30h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+34h], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+10h]
mov     edx, ds:flt_55FE58
mov     [eax+38h], edx
mov     edx, ds:flt_55FE5C
mov     [eax+3Ch], edx
fld     ds:flt_55FE60
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+18h]
mov     edx, ds:flt_55FE48
mov     [eax+40h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+44h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+20h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE64
mov     [eax+1Ch], dx
mov     dx, ds:word_55FE54
mov     [eax+24h], dx
mov     edx, ds:dword_55FE84
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
test    esi, 90000000h
jz      short loc_4E917F
or      byte ptr [eax+17h], 4

loc_4E917F:
test    esi, 10000000h
jz      short loc_4E9190
mov     edx, [esp+48h+var_24]
jmp     loc_4E9058

loc_4E9190:
mov     edx, [esp+48h+var_2C]
sar     edx, 3
shl     edx, 2
mov     eax, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     ecx, [esp+48h+var_24]
mov     [ecx], edx
test    esi, 1000000h
jnz     loc_4E9082
mov     [eax], ecx
mov     edi, ecx
jmp     loc_4E93AA

loc_4E91BE:
mov     eax, ds:dword_77E6DC
mov     [esp+48h+var_24], eax
lea     edx, [eax+48h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+28h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+2Ch], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+30h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+34h], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+10h]
mov     edx, ds:dword_55FE68
mov     [eax+38h], edx
mov     edx, ds:dword_55FE6C
mov     [eax+3Ch], edx
fld     ds:flt_55FE70
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+18h]
mov     edx, ds:flt_55FE48
mov     [eax+40h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+44h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+20h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE74
mov     [eax+1Ch], dx
mov     dx, ds:word_55FE54
mov     [eax+24h], dx
mov     edx, ds:dword_55FE84
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
mov     edx, ds:dword_77E6DC
mov     ebx, edx
lea     ecx, [edx+38h]
mov     ds:dword_77E6DC, ecx
mov     [eax], edx
mov     ecx, ds:flt_55FE48
mov     [edx+20h], ecx
mov     ecx, ds:flt_55FE4C
mov     [edx+24h], ecx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A4
fstp    dword ptr [edx+8]
mov     ecx, ds:flt_55FE58
mov     [edx+28h], ecx
mov     ecx, ds:flt_55FE5C
mov     [edx+2Ch], ecx
fld     ds:flt_55FE60
fmul    ds:flt_50A4A4
fstp    dword ptr [edx+10h]
mov     ecx, ds:dword_55FE68
mov     [edx+30h], ecx
mov     ecx, ds:dword_55FE6C
mov     [edx+34h], ecx
fld     ds:flt_55FE70
fmul    ds:flt_50A4A4
fstp    dword ptr [edx+18h]
mov     cx, ds:word_55FE54
mov     [edx+0Ch], cx
mov     cx, ds:word_55FE64
mov     [edx+14h], cx
mov     cx, ds:word_55FE74
mov     [edx+1Ch], cx
mov     ecx, ds:dword_55FE84
and     ecx, 0F7FFFFFFh
mov     [edx+4], ecx
mov     cx, word ptr ds:dword_55FE88
mov     [edx+0Eh], cx
mov     cx, word ptr ds:dword_55FE80
mov     [edx+16h], cx
test    esi, 90000000h
jz      short loc_4E936B
or      byte ptr [eax+17h], 4
or      byte ptr [edx+17h], 4

loc_4E936B:
test    esi, 10000000h
jz      short loc_4E9380
mov     edx, [esp+48h+var_24]
mov     eax, edi
call    sub_4F87AF
jmp     short loc_4E93AA

loc_4E9380:
mov     eax, [esp+48h+var_2C]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ebx], edx
test    esi, 1000000h
jnz     loc_4E9082
mov     edx, [esp+48h+var_24]
mov     [eax], edx
mov     edi, edx

loc_4E93AA:
add     ebp, 10h
add     [esp+48h+var_28], 8

loc_4E93B2:
mov     edx, [esp+48h+var_3C]
test    edx, edx
jbe     loc_4E9587
mov     esi, [ebp-4]
lea     ecx, [edx-1]
mov     [esp+48h+var_3C], ecx
test    esi, 10000000h
jz      short loc_4E93D4
test    edi, edi
jz      short loc_4E93AA

loc_4E93D4:
mov     eax, [ebp+0]
movsx   dx, al
mov     cl, byte ptr [esp+48h+var_20]
shl     edx, cl
mov     ebx, [esp+48h+var_30]
add     ebx, edx
mov     ds:word_55FE08, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
and     edx, 0FFh
shl     edx, cl
mov     ecx, [esp+48h+var_38]
sub     ecx, edx
mov     ds:word_55FE0A, cx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
movsx   edx, dl
mov     cl, byte ptr [esp+48h+var_20]
shl     edx, cl
add     edx, [esp+48h+var_34]
mov     ds:word_55FE0C, dx
sar     eax, 18h
and     eax, 0FFh
movsx   eax, al
shl     eax, cl
add     eax, [esp+48h+var_30]
mov     ds:word_55FE10, ax
mov     eax, [ebp+4]
mov     dl, al
xor     dh, dh
shl     edx, cl
mov     ebx, [esp+48h+var_38]
sub     ebx, edx
mov     ds:word_55FE12, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
movsx   edx, dl
shl     edx, cl
add     edx, [esp+48h+var_34]
mov     ds:word_55FE14, dx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
movsx   edx, dl
mov     cl, byte ptr [esp+48h+var_20]
shl     edx, cl
add     edx, [esp+48h+var_30]
mov     ds:word_55FE18, dx
sar     eax, 18h
and     eax, 0FFh
and     eax, 0FFh
shl     eax, cl
mov     edx, [esp+48h+var_38]
sub     edx, eax
mov     ds:word_55FE1A, dx
mov     eax, [ebp+8]
movsx   dx, al
shl     edx, cl
mov     ebx, [esp+48h+var_34]
add     ebx, edx
mov     ds:word_55FE1C, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
movsx   edx, dl
shl     edx, cl
add     edx, [esp+48h+var_30]
mov     ds:word_55FE20, dx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
and     edx, 0FFh
mov     cl, byte ptr [esp+48h+var_20]
shl     edx, cl
mov     ecx, [esp+48h+var_38]
sub     ecx, edx
mov     ds:word_55FE22, cx
sar     eax, 18h
and     eax, 0FFh
movsx   eax, al
mov     cl, byte ptr [esp+48h+var_20]
shl     eax, cl
add     eax, [esp+48h+var_34]
mov     ds:word_55FE24, ax
push    4
lea     ecx, [esp+4Ch+var_44]
mov     ebx, offset dword_55FE28
mov     edx, [esp+4Ch+var_28]
mov     eax, offset word_55FE08
call    sub_4F04FB
mov     edx, eax
test    eax, eax
jz      loc_4E93AA
cmp     eax, 3
jnz     loc_4E8DE8
lea     eax, [esp+48h+var_1C]
push    eax             ; int
lea     eax, [esp+4Ch+var_48]
push    eax             ; int
push    ds:flt_55FE50   ; float
push    ds:flt_55FE40   ; float
push    ds:dword_55FE30 ; int
mov     eax, esi
call    sub_4E8234
jmp     loc_4E8E11

loc_4E9574:
test    esi, 10000000h
jnz     loc_4E93AA
xor     edi, edi
jmp     loc_4E93AA

loc_4E9587:
add     esp, 30h
jmp     loc_4E8111
sub_4E8D3B endp




sub_4E958F proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, edx
mov     edx, [eax]
and     edx, 0FFh
mov     eax, [eax+4]
mov     ds:dword_55FDC8, eax
mov     eax, [ecx+8]
mov     ds:dword_55FDCC, eax
mov     eax, [ecx+0Ch]
mov     ds:dword_55FDD0, eax
mov     eax, edx
shl     eax, 2
add     eax, 4
add     ecx, eax
mov     ebx, ds:dword_56F182
sar     ebx, 10h
mov     eax, ds:dword_55FE76
sar     eax, 10h
lea     edx, [ecx+10h]
cmp     ebx, eax
jge     short loc_4E9600
mov     edi, ds:dword_56F186
sar     edi, 10h
mov     eax, ds:dword_55FE7A
sar     eax, 10h
lea     ebx, [ecx+18h]
cmp     edi, eax
jge     short loc_4E95FC

loc_4E95F1:
mov     eax, ecx

loc_4E95F3:
call    sub_4E9693
mov     eax, ebx
jmp     short loc_4E9621

loc_4E95FC:
mov     eax, edx
jmp     short loc_4E95F3

loc_4E9600:
mov     edi, ds:dword_56F186
sar     edi, 10h
mov     eax, ds:dword_55FE7A
sar     eax, 10h
lea     ebx, [ecx+8]
cmp     edi, eax
jl      short loc_4E95F1
mov     eax, ebx
call    sub_4E9693
mov     eax, edx

loc_4E9621:
call    sub_4E9693
lea     eax, [ecx+20h]
call    sub_4E9693
cmp     esi, ds:dword_55FDBC
jg      short loc_4E963E
lea     eax, [ecx+28h]
call    sub_4E9693

loc_4E963E:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4E958F endp




sub_4E9643 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     edx, [eax]
mov     ebx, edx
and     ebx, 3F00h
shr     ebx, 7
mov     eax, [eax+4]
mov     ds:dword_55FDC8, eax
mov     eax, [ecx+8]
mov     ds:dword_55FDCC, eax
mov     eax, [ecx+0Ch]
mov     ds:dword_55FDD0, eax
mov     eax, edx
and     eax, 0FFh
shl     eax, 2
add     eax, 4
add     ecx, eax
xor     edx, edx

loc_4E967D:
mov     eax, edx
shl     eax, 2
add     eax, ecx
call    sub_4E9693
add     edx, 2
cmp     edx, ebx
jb      short loc_4E967D
pop     ecx
pop     ebx
retn
sub_4E9643 endp




sub_4E9693 proc near

var_4C= dword ptr -4Ch
var_48= dword ptr -48h
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

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 34h
mov     ecx, [eax]
mov     edx, [eax+4]
mov     eax, edx
shr     eax, 18h
mov     [esp+4Ch+var_38], eax
mov     esi, ecx
shr     esi, 1Ch
xor     eax, eax
mov     al, ds:byte_77EABF
add     esi, eax
mov     [esp+4Ch+var_20], esi
and     edx, 0FFFFFFh
add     edx, 4
mov     edi, offset unk_6B87CC
add     edi, edx
mov     edx, ecx
and     edx, 0FFFFFFh
mov     esi, offset unk_6B87CC
add     esi, edx
mov     [esp+4Ch+var_28], esi
mov     edx, ecx
and     edx, 0F000000h
shr     edx, 18h
mov     edx, ds:dword_55FDC8[edx*4]
mov     ecx, edx
shr     ecx, 10h
mov     ds:dword_55FE88, ecx
and     edx, 0FFFFh
mov     ds:dword_55FE80, edx
mov     [esp+4Ch+var_48], 1
mov     edx, ds:dword_55FE76
sar     edx, 10h
mov     cl, al
shl     edx, cl
mov     [esp+4Ch+var_30], edx
mov     edx, ds:dword_55FE76+2
sar     edx, 10h
shl     edx, cl
mov     [esp+4Ch+var_2C], edx
mov     edx, ds:dword_55FE7A
sar     edx, 10h
shl     edx, cl
mov     [esp+4Ch+var_34], edx
jmp     loc_4E9D1D

loc_4E9744:
lea     eax, [esp+4Ch+var_1C]
push    eax             ; int
lea     eax, [esp+50h+var_4C]
push    eax             ; int
push    ds:flt_55FE60   ; float
push    ds:flt_55FE50   ; float
push    ds:flt_55FE40   ; float
push    ds:dword_55FE30 ; int
mov     eax, esi
call    sub_4E82C1

loc_4E976D:
mov     [esp+4Ch+var_24], eax
fld     [esp+4Ch+var_4C]
call    __CHP
fistp   [esp+4Ch+var_3C]
fld     [esp+4Ch+var_1C]
call    __CHP
fistp   [esp+4Ch+var_40]
mov     eax, esi
and     eax, 2FFFFFFh
or      eax, 0AC000000h
mov     ds:dword_55FE84, eax
mov     eax, [esp+4Ch+var_44]
test    eax, eax
jg      short loc_4E97E7
jz      loc_4E9EE5
mov     ebx, eax
neg     ebx
mov     [esp+4Ch+var_44], ebx
test    esi, 40000000h
jnz     short loc_4E97E7
mov     eax, [esp+4Ch+var_40]
cmp     eax, ds:dword_55FDC0
jle     loc_4E9EE5
test    esi, 1000000h
jnz     loc_4E9EE5
mov     ds:dword_55FE84, 0AC010101h
mov     eax, [esp+4Ch+var_3C]
mov     [esp+4Ch+var_24], eax

loc_4E97E7:
test    esi, esi
jle     loc_4E9900
mov     eax, [esp+4Ch+var_3C]
cmp     eax, ds:dword_55FDC0
jge     loc_4E9900
cmp     edx, 3
jnz     short loc_4E9881
lea     eax, [esp+4Ch+var_1C]
push    eax             ; int
lea     eax, [esp+50h+var_4C]
push    eax             ; int
push    ds:flt_55FE48   ; float
push    ds:flt_55FE38   ; float
push    ds:dword_55FE28 ; int
call    sub_4E8118
cmp     [esp+4Ch+var_4C], 43160000h
jle     loc_4E9900
cmp     [esp+4Ch+var_1C], 432A0000h
jge     loc_4E9900
lea     eax, [esp+4Ch+var_1C]
push    eax             ; int
lea     eax, [esp+50h+var_4C]
push    eax             ; int
push    ds:flt_55FE4C   ; float
push    ds:flt_55FE3C   ; float
push    ds:dword_55FE2C ; int
call    sub_4E8118
cmp     [esp+4Ch+var_4C], 42F00000h
jle     loc_4E9900
cmp     [esp+4Ch+var_1C], 43200000h
jge     loc_4E9900
jmp     loc_4E98F5

loc_4E9881:
lea     eax, [esp+4Ch+var_1C]
push    eax             ; int
lea     eax, [esp+50h+var_4C]
push    eax             ; int
push    ds:flt_55FE58   ; float
push    ds:flt_55FE48   ; float
push    ds:flt_55FE38   ; float
push    ds:dword_55FE28 ; int
call    sub_4E8192
cmp     [esp+4Ch+var_4C], 43160000h
jle     short loc_4E9900
cmp     [esp+4Ch+var_1C], 432A0000h
jge     short loc_4E9900
lea     eax, [esp+4Ch+var_1C]
push    eax             ; int
lea     eax, [esp+50h+var_4C]
push    eax             ; int
push    ds:flt_55FE5C   ; float
push    ds:flt_55FE4C   ; float
push    ds:flt_55FE3C   ; float
push    ds:dword_55FE2C ; int
call    sub_4E8192
cmp     [esp+4Ch+var_4C], 42F00000h
jle     short loc_4E9900
cmp     [esp+4Ch+var_1C], 43200000h
jge     short loc_4E9900

loc_4E98F5:
mov     eax, ds:dword_77E6F8
or      ds:dword_55FE84, eax

loc_4E9900:
cmp     edx, 4
jb      short loc_4E9919
jbe     loc_4E9A21
cmp     edx, 5
jz      loc_4E9B36
jmp     loc_4E9D15

loc_4E9919:
cmp     edx, 3
jnz     loc_4E9D15
mov     eax, ds:dword_77E6DC
mov     ebp, eax
lea     edx, [eax+38h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+20h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+24h], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+28h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+2Ch], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+10h]
mov     edx, ds:flt_55FE48
mov     [eax+30h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+34h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+18h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE54
mov     [eax+1Ch], dx
mov     edx, ds:dword_55FE84
and     edx, 0F7FFFFFFh
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
test    esi, 90000000h
jz      short loc_4E99E7
or      byte ptr [eax+17h], 4

loc_4E99E7:
test    esi, 10000000h
jz      short loc_4E99FF
mov     edx, ebp

loc_4E99F1:
mov     eax, [esp+4Ch+var_48]
call    sub_4F87A6
jmp     loc_4E9D15

loc_4E99FF:
mov     eax, [esp+4Ch+var_24]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ebp+0], edx
mov     [eax], ebp
mov     [esp+4Ch+var_48], ebp
jmp     loc_4E9D15

loc_4E9A21:
mov     eax, ds:dword_77E6DC
mov     ecx, eax
lea     edx, [eax+48h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+28h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+2Ch], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+30h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+34h], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+10h]
mov     edx, ds:flt_55FE58
mov     [eax+38h], edx
mov     edx, ds:flt_55FE5C
mov     [eax+3Ch], edx
fld     ds:flt_55FE60
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+18h]
mov     edx, ds:flt_55FE48
mov     [eax+40h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+44h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+20h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE64
mov     [eax+1Ch], dx
mov     dx, ds:word_55FE54
mov     [eax+24h], dx
mov     edx, ds:dword_55FE84
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
test    esi, 90000000h
jz      short loc_4E9B0C
or      byte ptr [eax+17h], 4

loc_4E9B0C:
test    esi, 10000000h
jz      short loc_4E9B1B
mov     edx, ecx
jmp     loc_4E99F1

loc_4E9B1B:
mov     eax, [esp+4Ch+var_24]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ecx], edx
jmp     loc_4E9D0F

loc_4E9B36:
mov     eax, ds:dword_77E6DC
mov     ecx, eax
lea     edx, [eax+48h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+28h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+2Ch], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+30h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+34h], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+10h]
mov     edx, ds:dword_55FE68
mov     [eax+38h], edx
mov     edx, ds:dword_55FE6C
mov     [eax+3Ch], edx
fld     ds:flt_55FE70
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+18h]
mov     edx, ds:flt_55FE48
mov     [eax+40h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+44h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+20h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE74
mov     [eax+1Ch], dx
mov     dx, ds:word_55FE54
mov     [eax+24h], dx
mov     edx, ds:dword_55FE84
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
mov     edx, ds:dword_77E6DC
mov     ebp, edx
lea     ebx, [edx+38h]
mov     ds:dword_77E6DC, ebx
mov     [eax], edx
mov     ebx, ds:flt_55FE48
mov     [edx+20h], ebx
mov     ebx, ds:flt_55FE4C
mov     [edx+24h], ebx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A8
fstp    dword ptr [edx+8]
mov     ebx, ds:flt_55FE58
mov     [edx+28h], ebx
mov     ebx, ds:flt_55FE5C
mov     [edx+2Ch], ebx
fld     ds:flt_55FE60
fmul    ds:flt_50A4A8
fstp    dword ptr [edx+10h]
mov     ebx, ds:dword_55FE68
mov     [edx+30h], ebx
mov     ebx, ds:dword_55FE6C
mov     [edx+34h], ebx
fld     ds:flt_55FE70
fmul    ds:flt_50A4A8
fstp    dword ptr [edx+18h]
mov     bx, ds:word_55FE54
mov     [edx+0Ch], bx
mov     bx, ds:word_55FE64
mov     [edx+14h], bx
mov     bx, ds:word_55FE74
mov     [edx+1Ch], bx
mov     ebx, ds:dword_55FE84
and     ebx, 0F7FFFFFFh
mov     [edx+4], ebx
mov     bx, word ptr ds:dword_55FE88
mov     [edx+0Eh], bx
mov     bx, word ptr ds:dword_55FE80
mov     [edx+16h], bx
test    esi, 90000000h
jz      short loc_4E9CE1
or      byte ptr [eax+17h], 4
or      byte ptr [edx+17h], 4

loc_4E9CE1:
test    esi, 10000000h
jz      short loc_4E9CF8
mov     ebx, ebp
mov     edx, ecx
mov     eax, [esp+4Ch+var_48]
call    sub_4F87AF
jmp     short loc_4E9D15

loc_4E9CF8:
mov     eax, [esp+4Ch+var_24]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ebp+0], edx

loc_4E9D0F:
mov     [eax], ecx
mov     [esp+4Ch+var_48], ecx

loc_4E9D15:
add     edi, 10h
add     [esp+4Ch+var_28], 8

loc_4E9D1D:
mov     ecx, [esp+4Ch+var_38]
test    ecx, ecx
jbe     loc_4E9EFC
mov     esi, [edi-4]
lea     ebx, [ecx-1]
mov     [esp+4Ch+var_38], ebx
test    esi, 10000000h
jz      short loc_4E9D42
cmp     [esp+4Ch+var_48], 0
jz      short loc_4E9D15

loc_4E9D42:
mov     eax, [edi]
movsx   dx, al
mov     cl, byte ptr [esp+4Ch+var_20]
shl     edx, cl
mov     ebx, [esp+4Ch+var_30]
add     ebx, edx
mov     ds:word_55FE08, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
and     edx, 0FFh
shl     edx, cl
mov     ecx, [esp+4Ch+var_2C]
sub     ecx, edx
mov     ds:word_55FE0A, cx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
movsx   edx, dl
mov     cl, byte ptr [esp+4Ch+var_20]
shl     edx, cl
add     edx, [esp+4Ch+var_34]
mov     ds:word_55FE0C, dx
sar     eax, 18h
and     eax, 0FFh
movsx   eax, al
mov     cl, byte ptr [esp+4Ch+var_20]
shl     eax, cl
add     eax, [esp+4Ch+var_30]
mov     ds:word_55FE10, ax
mov     eax, [edi+4]
mov     dl, al
xor     dh, dh
shl     edx, cl
mov     ebx, [esp+4Ch+var_2C]
sub     ebx, edx
mov     ds:word_55FE12, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
movsx   edx, dl
shl     edx, cl
mov     ebp, [esp+4Ch+var_34]
add     edx, ebp
mov     ds:word_55FE14, dx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
movsx   edx, dl
shl     edx, cl
add     edx, [esp+4Ch+var_30]
mov     ds:word_55FE18, dx
sar     eax, 18h
and     eax, 0FFh
and     eax, 0FFh
mov     cl, byte ptr [esp+4Ch+var_20]
shl     eax, cl
mov     edx, [esp+4Ch+var_2C]
sub     edx, eax
mov     ds:word_55FE1A, dx
mov     eax, [edi+8]
movsx   dx, al
shl     edx, cl
mov     ecx, [esp+4Ch+var_34]
add     ecx, edx
mov     ds:word_55FE1C, cx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
movsx   edx, dl
mov     cl, byte ptr [esp+4Ch+var_20]
shl     edx, cl
add     edx, [esp+4Ch+var_30]
mov     ds:word_55FE20, dx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
and     edx, 0FFh
shl     edx, cl
mov     ecx, [esp+4Ch+var_2C]
sub     ecx, edx
mov     ds:word_55FE22, cx
sar     eax, 18h
and     eax, 0FFh
movsx   eax, al
mov     cl, byte ptr [esp+4Ch+var_20]
shl     eax, cl
add     eax, ebp
mov     ds:word_55FE24, ax
push    4
lea     ecx, [esp+50h+var_44]
mov     ebx, offset dword_55FE28
mov     edx, [esp+50h+var_28]
mov     eax, offset word_55FE08
call    sub_4F04FB
mov     edx, eax
test    eax, eax
jz      loc_4E9D15
cmp     eax, 3
jnz     loc_4E9744
lea     eax, [esp+4Ch+var_1C]
push    eax             ; int
lea     eax, [esp+50h+var_4C]
push    eax             ; int
push    ds:flt_55FE50   ; float
push    ds:flt_55FE40   ; float
push    ds:dword_55FE30 ; int
mov     eax, esi
call    sub_4E8234
jmp     loc_4E976D

loc_4E9EE5:
test    esi, 10000000h
jnz     loc_4E9D15
xor     eax, eax
mov     [esp+4Ch+var_48], eax
jmp     loc_4E9D15

loc_4E9EFC:
add     esp, 34h
jmp     loc_4E8111
sub_4E9693 endp




sub_4E9F04 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, edx
mov     edx, [eax]
and     edx, 0FFh
mov     eax, [eax+4]
mov     ds:dword_55FDC8, eax
mov     eax, [ecx+8]
mov     ds:dword_55FDCC, eax
mov     eax, [ecx+0Ch]
mov     ds:dword_55FDD0, eax
mov     eax, edx
shl     eax, 2
add     eax, 4
add     ecx, eax
mov     ebx, ds:dword_56F182
sar     ebx, 10h
mov     eax, ds:dword_55FE76
sar     eax, 10h
lea     edx, [ecx+10h]
cmp     ebx, eax
jge     short loc_4E9F75
mov     edi, ds:dword_56F186
sar     edi, 10h
mov     eax, ds:dword_55FE7A
sar     eax, 10h
lea     ebx, [ecx+18h]
cmp     edi, eax
jge     short loc_4E9F71

loc_4E9F66:
mov     eax, ecx

loc_4E9F68:
call    sub_4EA008
mov     eax, ebx
jmp     short loc_4E9F96

loc_4E9F71:
mov     eax, edx
jmp     short loc_4E9F68

loc_4E9F75:
mov     edi, ds:dword_56F186
sar     edi, 10h
mov     eax, ds:dword_55FE7A
sar     eax, 10h
lea     ebx, [ecx+8]
cmp     edi, eax
jl      short loc_4E9F66
mov     eax, ebx
call    sub_4EA008
mov     eax, edx

loc_4E9F96:
call    sub_4EA008
lea     eax, [ecx+20h]
call    sub_4EA008
cmp     esi, ds:dword_55FDBC
jg      short loc_4E9FB3
lea     eax, [ecx+28h]
call    sub_4EA008

loc_4E9FB3:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4E9F04 endp




sub_4E9FB8 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     edx, [eax]
mov     ebx, edx
and     ebx, 3F00h
shr     ebx, 7
mov     eax, [eax+4]
mov     ds:dword_55FDC8, eax
mov     eax, [ecx+8]
mov     ds:dword_55FDCC, eax
mov     eax, [ecx+0Ch]
mov     ds:dword_55FDD0, eax
mov     eax, edx
and     eax, 0FFh
shl     eax, 2
add     eax, 4
add     ecx, eax
xor     edx, edx

loc_4E9FF2:
mov     eax, edx
shl     eax, 2
add     eax, ecx
call    sub_4EA008
add     edx, 2
cmp     edx, ebx
jb      short loc_4E9FF2
pop     ecx
pop     ebx
retn
sub_4E9FB8 endp




sub_4EA008 proc near

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

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 2Ch
mov     ecx, [eax]
mov     edx, [eax+4]
mov     eax, edx
shr     eax, 18h
mov     [esp+44h+var_3C], eax
mov     esi, ecx
shr     esi, 1Ch
xor     eax, eax
mov     al, ds:byte_77EABF
add     esi, eax
mov     [esp+44h+var_20], esi
and     edx, 0FFFFFFh
lea     edi, [edx+4]
add     edi, offset unk_6B87CC
mov     edx, ecx
and     edx, 0FFFFFFh
mov     esi, offset unk_6B87CC
add     esi, edx
mov     [esp+44h+var_28], esi
mov     edx, ecx
and     edx, 0F000000h
shr     edx, 18h
mov     edx, ds:dword_55FDC8[edx*4]
mov     ecx, edx
shr     ecx, 10h
mov     ds:dword_55FE88, ecx
and     edx, 0FFFFh
mov     ds:dword_55FE80, edx
mov     [esp+44h+var_24], 1
mov     edx, ds:dword_55FE76
sar     edx, 10h
mov     cl, al
shl     edx, cl
mov     [esp+44h+var_34], edx
mov     edx, ds:dword_55FE76+2
sar     edx, 10h
shl     edx, cl
mov     [esp+44h+var_30], edx
mov     edx, ds:dword_55FE7A
sar     edx, 10h
shl     edx, cl
mov     [esp+44h+var_38], edx
jmp     loc_4EA52E

loc_4EA0B8:
lea     eax, [esp+44h+var_1C]
push    eax             ; int
lea     eax, [esp+48h+var_44]
push    eax             ; int
push    ds:flt_55FE60   ; float
push    ds:flt_55FE50   ; float
push    ds:flt_55FE40   ; float
push    ds:dword_55FE30 ; int
mov     eax, esi
call    sub_4E82C1

loc_4EA0E1:
mov     [esp+44h+var_2C], eax
mov     eax, esi
and     eax, 2FFFFFFh
or      eax, 0AC000000h
mov     ds:dword_55FE84, eax
mov     eax, [esp+44h+var_40]
test    eax, eax
jg      short loc_4EA112
test    esi, 40000000h
jz      loc_4EA6F6
mov     ecx, eax
neg     ecx
mov     [esp+44h+var_40], ecx

loc_4EA112:
cmp     edx, 4
jb      short loc_4EA12B
jbe     loc_4EA233
cmp     edx, 5
jz      loc_4EA347
jmp     loc_4EA526

loc_4EA12B:
cmp     edx, 3
jnz     loc_4EA526
mov     eax, ds:dword_77E6DC
mov     ebp, eax
lea     edx, [eax+38h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+20h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+24h], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+28h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+2Ch], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+10h]
mov     edx, ds:flt_55FE48
mov     [eax+30h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+34h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+18h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE54
mov     [eax+1Ch], dx
mov     edx, ds:dword_55FE84
and     edx, 0F7FFFFFFh
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
test    esi, 90000000h
jz      short loc_4EA1F9
or      byte ptr [eax+17h], 4

loc_4EA1F9:
test    esi, 10000000h
jz      short loc_4EA211
mov     edx, ebp

loc_4EA203:
mov     eax, [esp+44h+var_24]
call    sub_4F87A6
jmp     loc_4EA526

loc_4EA211:
mov     eax, [esp+44h+var_2C]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ebp+0], edx
mov     [eax], ebp
mov     [esp+44h+var_24], ebp
jmp     loc_4EA526

loc_4EA233:
mov     eax, ds:dword_77E6DC
mov     ecx, eax
lea     edx, [eax+48h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+28h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+2Ch], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+30h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+34h], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+10h]
mov     edx, ds:flt_55FE58
mov     [eax+38h], edx
mov     edx, ds:flt_55FE5C
mov     [eax+3Ch], edx
fld     ds:flt_55FE60
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+18h]
mov     edx, ds:flt_55FE48
mov     [eax+40h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+44h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+20h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE64
mov     [eax+1Ch], dx
mov     dx, ds:word_55FE54
mov     [eax+24h], dx
mov     edx, ds:dword_55FE84
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
test    esi, 90000000h
jz      short loc_4EA31E
or      byte ptr [eax+17h], 4

loc_4EA31E:
test    esi, 10000000h
jz      short loc_4EA32D
mov     edx, ecx
jmp     loc_4EA203

loc_4EA32D:
mov     edx, [esp+44h+var_2C]
sar     edx, 3
shl     edx, 2
mov     eax, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ecx], edx
jmp     loc_4EA520

loc_4EA347:
mov     eax, ds:dword_77E6DC
mov     ecx, eax
lea     edx, [eax+48h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+28h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+2Ch], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+30h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+34h], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+10h]
mov     edx, ds:dword_55FE68
mov     [eax+38h], edx
mov     edx, ds:dword_55FE6C
mov     [eax+3Ch], edx
fld     ds:flt_55FE70
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+18h]
mov     edx, ds:flt_55FE48
mov     [eax+40h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+44h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+20h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE74
mov     [eax+1Ch], dx
mov     dx, ds:word_55FE54
mov     [eax+24h], dx
mov     edx, ds:dword_55FE84
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
mov     edx, ds:dword_77E6DC
mov     ebp, edx
lea     ebx, [edx+38h]
mov     ds:dword_77E6DC, ebx
mov     [eax], edx
mov     ebx, ds:flt_55FE48
mov     [edx+20h], ebx
mov     ebx, ds:flt_55FE4C
mov     [edx+24h], ebx
fld     ds:flt_55FE50
fmul    ds:flt_50A4AC
fstp    dword ptr [edx+8]
mov     ebx, ds:flt_55FE58
mov     [edx+28h], ebx
mov     ebx, ds:flt_55FE5C
mov     [edx+2Ch], ebx
fld     ds:flt_55FE60
fmul    ds:flt_50A4AC
fstp    dword ptr [edx+10h]
mov     ebx, ds:dword_55FE68
mov     [edx+30h], ebx
mov     ebx, ds:dword_55FE6C
mov     [edx+34h], ebx
fld     ds:flt_55FE70
fmul    ds:flt_50A4AC
fstp    dword ptr [edx+18h]
mov     bx, ds:word_55FE54
mov     [edx+0Ch], bx
mov     bx, ds:word_55FE64
mov     [edx+14h], bx
mov     bx, ds:word_55FE74
mov     [edx+1Ch], bx
mov     ebx, ds:dword_55FE84
and     ebx, 0F7FFFFFFh
mov     [edx+4], ebx
mov     bx, word ptr ds:dword_55FE88
mov     [edx+0Eh], bx
mov     bx, word ptr ds:dword_55FE80
mov     [edx+16h], bx
test    esi, 90000000h
jz      short loc_4EA4F2
or      byte ptr [eax+17h], 4
or      byte ptr [edx+17h], 4

loc_4EA4F2:
test    esi, 10000000h
jz      short loc_4EA509
mov     ebx, ebp
mov     edx, ecx
mov     eax, [esp+44h+var_24]
call    sub_4F87AF
jmp     short loc_4EA526

loc_4EA509:
mov     eax, [esp+44h+var_2C]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ebp+0], edx

loc_4EA520:
mov     [eax], ecx
mov     [esp+44h+var_24], ecx

loc_4EA526:
add     edi, 10h
add     [esp+44h+var_28], 8

loc_4EA52E:
mov     ecx, [esp+44h+var_3C]
test    ecx, ecx
jbe     loc_4E8C26
mov     esi, [edi-4]
lea     ebx, [ecx-1]
mov     [esp+44h+var_3C], ebx
test    esi, 10000000h
jz      short loc_4EA553
cmp     [esp+44h+var_24], 0
jz      short loc_4EA526

loc_4EA553:
mov     eax, [edi]
movsx   dx, al
mov     cl, byte ptr [esp+44h+var_20]
shl     edx, cl
mov     ebx, [esp+44h+var_34]
add     ebx, edx
mov     ds:word_55FE08, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
and     edx, 0FFh
shl     edx, cl
mov     ecx, [esp+44h+var_30]
sub     ecx, edx
mov     ds:word_55FE0A, cx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
movsx   edx, dl
mov     cl, byte ptr [esp+44h+var_20]
shl     edx, cl
add     edx, [esp+44h+var_38]
mov     ds:word_55FE0C, dx
sar     eax, 18h
and     eax, 0FFh
movsx   eax, al
mov     cl, byte ptr [esp+44h+var_20]
shl     eax, cl
add     eax, [esp+44h+var_34]
mov     ds:word_55FE10, ax
mov     eax, [edi+4]
mov     dl, al
xor     dh, dh
shl     edx, cl
mov     ebx, [esp+44h+var_30]
sub     ebx, edx
mov     ds:word_55FE12, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
movsx   edx, dl
shl     edx, cl
mov     ebp, [esp+44h+var_38]
add     edx, ebp
mov     ds:word_55FE14, dx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
movsx   edx, dl
shl     edx, cl
add     edx, [esp+44h+var_34]
mov     ds:word_55FE18, dx
sar     eax, 18h
and     eax, 0FFh
and     eax, 0FFh
mov     cl, byte ptr [esp+44h+var_20]
shl     eax, cl
mov     edx, [esp+44h+var_30]
sub     edx, eax
mov     ds:word_55FE1A, dx
mov     eax, [edi+8]
movsx   dx, al
shl     edx, cl
mov     ecx, [esp+44h+var_38]
add     ecx, edx
mov     ds:word_55FE1C, cx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
movsx   edx, dl
mov     cl, byte ptr [esp+44h+var_20]
shl     edx, cl
add     edx, [esp+44h+var_34]
mov     ds:word_55FE20, dx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
and     edx, 0FFh
shl     edx, cl
mov     ecx, [esp+44h+var_30]
sub     ecx, edx
mov     ds:word_55FE22, cx
sar     eax, 18h
and     eax, 0FFh
movsx   eax, al
mov     cl, byte ptr [esp+44h+var_20]
shl     eax, cl
add     eax, ebp
mov     ds:word_55FE24, ax
push    4
lea     ecx, [esp+48h+var_40]
mov     ebx, offset dword_55FE28
mov     edx, [esp+48h+var_28]
mov     eax, offset word_55FE08
call    sub_4F04FB
mov     edx, eax
test    eax, eax
jz      loc_4EA526
cmp     eax, 3
jnz     loc_4EA0B8
lea     eax, [esp+44h+var_1C]
push    eax             ; int
lea     eax, [esp+48h+var_44]
push    eax             ; int
push    ds:flt_55FE50   ; float
push    ds:flt_55FE40   ; float
push    ds:dword_55FE30 ; int
mov     eax, esi
call    sub_4E8234
jmp     loc_4EA0E1

loc_4EA6F6:
test    esi, 10000000h
jnz     loc_4EA526
xor     ebx, ebx
mov     [esp+44h+var_24], ebx
jmp     loc_4EA526
sub_4EA008 endp




; int __stdcall sub_4EA70D(float, float, int, int)
sub_4EA70D proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebp, 1000h
xor     edi, edi
mov     [esp+30h+var_24], edi
xor     ecx, ecx
mov     eax, [esp+30h+arg_C]
mov     ebx, [esp+30h+arg_8]
sub     eax, ebx
mov     [esp+30h+var_28], eax
mov     [esp+30h+var_20], edi
jmp     short loc_4EA758

loc_4EA737:
mov     ebx, [esp+30h+var_24]
add     ebx, 10h
mov     [esp+30h+var_24], ebx
mov     esi, [esp+30h+var_20]
add     esi, ebx
mov     [esp+30h+var_20], esi
cmp     esi, 400h
jge     loc_4EA91A

loc_4EA758:
mov     esi, ecx
mov     eax, [esp+30h+var_20]
add     eax, [esp+30h+var_24]
call    sub_4EF008
imul    eax, [esp+30h+var_28]
sar     eax, 0Ch
mov     ecx, [esp+30h+arg_8]
add     ecx, eax
xor     ebx, ebx

loc_4EA777:
mov     edx, ds:dword_77E6DC
lea     eax, [edx+28h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87CF
mov     byte ptr [edx+4], 20h ; ' '
mov     byte ptr [edx+5], 0
mov     byte ptr [edx+6], 0
or      byte ptr [edx+7], 2
mov     [esp+30h+var_30], ebp
mov     [esp+30h+var_2C], edi
mov     ebp, ds:dword_56F792[ebx*8]
sar     ebp, 10h
mov     edi, ds:dword_564C3A[ebx*8]
sar     edi, 10h
mov     eax, [esp+30h+var_30]
imul    eax, esi
sar     eax, 0Ch
mov     [esp+30h+var_1C], eax
fild    [esp+30h+var_1C]
fadd    [esp+30h+arg_0]
call    __CHP
fistp   [esp+30h+var_1C]
mov     eax, [esp+30h+var_1C]
mov     [edx+8], ax
mov     eax, [esp+30h+var_2C]
imul    eax, esi
sar     eax, 0Ch
mov     [esp+30h+var_1C], eax
fild    [esp+30h+var_1C]
fadd    [esp+30h+arg_4]
call    __CHP
fistp   [esp+30h+var_1C]
mov     eax, [esp+30h+var_1C]
mov     [edx+0Ah], ax
mov     eax, ebp
imul    eax, esi
sar     eax, 0Ch
mov     [esp+30h+var_1C], eax
fild    [esp+30h+var_1C]
fadd    [esp+30h+arg_0]
call    __CHP
fistp   [esp+30h+var_1C]
mov     eax, [esp+30h+var_1C]
mov     [edx+0Ch], ax
mov     eax, edi
imul    eax, esi
sar     eax, 0Ch
mov     [esp+30h+var_1C], eax
fild    [esp+30h+var_1C]
fadd    [esp+30h+arg_4]
call    __CHP
fistp   [esp+30h+var_1C]
mov     eax, [esp+30h+var_1C]
mov     [edx+0Eh], ax
mov     eax, [esp+30h+var_30]
imul    eax, ecx
sar     eax, 0Ch
mov     [esp+30h+var_1C], eax
fild    [esp+30h+var_1C]
fadd    [esp+30h+arg_0]
call    __CHP
fistp   [esp+30h+var_1C]
mov     eax, [esp+30h+var_1C]
mov     [edx+10h], ax
mov     eax, [esp+30h+var_2C]
imul    eax, ecx
sar     eax, 0Ch
mov     [esp+30h+var_1C], eax
fild    [esp+30h+var_1C]
fadd    [esp+30h+arg_4]
call    __CHP
fistp   [esp+30h+var_1C]
mov     eax, [esp+30h+var_1C]
mov     [edx+12h], ax
mov     eax, ebp
imul    eax, ecx
sar     eax, 0Ch
mov     [esp+30h+var_1C], eax
fild    [esp+30h+var_1C]
fadd    [esp+30h+arg_0]
call    __CHP
fistp   [esp+30h+var_1C]
mov     eax, [esp+30h+var_1C]
mov     [edx+14h], ax
mov     eax, edi
imul    eax, ecx
sar     eax, 0Ch
mov     [esp+30h+var_1C], eax
fild    [esp+30h+var_1C]
fadd    [esp+30h+arg_4]
call    __CHP
fistp   [esp+30h+var_1C]
mov     eax, [esp+30h+var_1C]
mov     [edx+16h], ax
mov     dword ptr [edx+24h], 3DCCCCCDh
mov     eax, [edx+24h]
mov     [edx+20h], eax
mov     eax, [edx+20h]
mov     [edx+1Ch], eax
mov     eax, [edx+1Ch]
mov     [edx+18h], eax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
inc     ebx
cmp     ebx, 10h
jb      loc_4EA777
jmp     loc_4EA737

loc_4EA91A:
mov     esi, ds:dword_77E6DC
push    0
lea     eax, [esi+0Ch]
mov     ds:dword_77E6DC, eax
xor     ebx, ebx
mov     edx, 1
xor     eax, eax
call    sub_4F892F
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
mov     edx, esi
call    sub_4F87A6
add     esp, 18h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn    10h
sub_4EA70D endp




sub_4EA960 proc near
push    edx
cmp     ds:dword_77E710, 0
jnz     loc_4EAA27
xor     eax, eax
mov     al, ds:byte_5F836A
mov     edx, dword ptr ds:unk_5F8361
sar     edx, 18h
and     eax, edx
test    al, 2
jz      short loc_4EA9BE
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Bh
mov     edx, offset unk_7754A4
add     edx, eax
mov     eax, offset byte_5F8364
call    sub_4EAD88
test    eax, eax
jz      short loc_4EA9BE
xor     edx, edx
mov     dl, ds:byte_77EAC6
shl     edx, 0Bh
add     edx, offset unk_7754A4
mov     eax, offset byte_5F8364
call    sub_4EAA29

loc_4EA9BE:
mov     edx, ds:dword_5F8A55
sar     edx, 18h
xor     eax, eax
mov     al, ds:byte_5F8A5E
and     eax, edx
test    al, 2
jz      short loc_4EAA0E
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Bh
mov     edx, offset unk_76C464
add     edx, eax
mov     eax, (offset dword_5F8A55+3)
call    sub_4EAD88
test    eax, eax
jz      short loc_4EAA0E
xor     edx, edx
mov     dl, ds:byte_77EAC6
shl     edx, 0Bh
add     edx, offset unk_76C464
mov     eax, (offset dword_5F8A55+3)
call    sub_4EAA29

loc_4EAA0E:
call    sub_4EBB84
call    sub_4EBC11
call    sub_4EBC59
call    sub_4ED9F4
call    sub_4EE1A3

loc_4EAA27:
pop     edx
retn
sub_4EA960 endp




sub_4EAA29 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
mov     esi, edx
cmp     byte ptr [eax+171h], 0
jnz     short loc_4EAA46
xor     ebx, ebx
mov     [esp+30h+var_20], ebx
jmp     short loc_4EAA61

loc_4EAA46:
cmp     byte ptr [ebp+170h], 0
jnz     short loc_4EAA59
mov     [esp+30h+var_20], 2
jmp     short loc_4EAA61

loc_4EAA59:
mov     [esp+30h+var_20], 1

loc_4EAA61:
xor     edi, edi
mov     [esp+30h+var_1C], edi
xor     ecx, ecx
jmp     short loc_4EAA7D

loc_4EAA6B:
mov     edi, [esp+30h+var_1C]
inc     edi
mov     [esp+30h+var_1C], edi
cmp     edi, 5
jge     loc_4EAB78

loc_4EAA7D:
mov     edx, [esp+30h+var_20]
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, [esp+30h+var_1C]
mov     al, ds:byte_550EF0[eax]
and     eax, 0FFh
mov     [esp+30h+var_18], eax
mov     edx, [esp+30h+var_20]
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     edx, [esp+30h+var_1C]
shl     edx, 2
mov     eax, ds:off_550EB4[edx+eax*4]
mov     ds:dword_560AD0, eax
xor     edi, edi

loc_4EAABB:
cmp     edi, [esp+30h+var_18]
jge     short loc_4EAA6B
xor     edx, edx
mov     dl, ds:byte_550EFF[ecx]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
lea     edx, [ebp+1D8h]
add     edx, eax
mov     ebx, offset unk_564A6C
mov     eax, offset unk_564CB4
call    sub_4EF388
xor     edx, edx
mov     dl, ds:byte_550EFF[ecx]
shl     edx, 3
lea     eax, [ebp+4A8h]
add     edx, eax
mov     ebx, esp
mov     eax, offset unk_564CB4
call    sub_4EF1FB
mov     eax, ds:dword_564CD8
mov     edx, [esp+30h+var_30]
add     eax, edx
mov     ds:dword_564A90, eax
mov     eax, ds:dword_564CDC
mov     ebx, [esp+30h+var_2C]
add     eax, ebx
mov     ds:dword_564A94, eax
mov     eax, ds:dword_564CE0
mov     edx, [esp+30h+var_28]
add     eax, edx
mov     ds:dword_564A98, eax
mov     eax, offset unk_564A6C
call    sub_4EFB33
mov     eax, offset unk_564A6C
call    sub_4EFB43
mov     eax, ds:dword_560AD0
lea     ebx, [eax+0Ch]
mov     edx, esi
call    sub_4EAB81
mov     eax, ds:dword_560AD0
lea     ebx, [eax+0Ch]
mov     edx, esi
call    sub_4EAC76
add     ds:dword_560AD0, 10h
inc     ecx
inc     edi
jmp     loc_4EAABB

loc_4EAB78:
add     esp, 1Ch

loc_4EAB7B:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4EAA29 endp




sub_4EAB81 proc near

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
mov     ecx, eax
mov     [esp+24h+var_14], edx
mov     edi, ebx
mov     ebp, [eax]
and     ebp, 0FFh
jz      loc_4EAC6E
mov     esi, [eax+4]
add     esi, 70h ; 'p'
xor     edx, edx
mov     dl, ds:byte_77EAC6
add     edx, edx
mov     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
mov     ecx, [ecx+4]
add     ecx, eax
mov     edi, [ebx]
mov     eax, ds:dword_77E6E4
mov     [esp+24h+var_18], eax

loc_4EABC8:
test    ebp, ebp
jbe     loc_4EAC6E
mov     eax, [esi]
mov     [esp+24h+var_1C], eax
xor     eax, eax
mov     al, byte ptr [esp+24h+var_1C+2]
shl     eax, 3
lea     ebx, [edi+eax]
xor     edx, edx
mov     dl, byte ptr [esp+24h+var_1C+1]
shl     edx, 3
add     edx, edi
xor     eax, eax
mov     al, byte ptr [esp+24h+var_1C]
shl     eax, 3
add     eax, edi
call    sub_4EFCF1
call    sub_4EFE75
call    sub_4EFD2E
dec     ebp
lea     eax, [esp+24h+var_20]
call    sub_4EFFE2
cmp     [esp+24h+var_20], 0
jle     short loc_4EAC63
mov     eax, ecx
call    loc_4F005A
mov     eax, ecx
call    sub_4F0165
call    sub_4EFB65
and     byte ptr [ecx+0Eh], 0F8h
mov     eax, esp
call    sub_4EFFED
mov     eax, [esp+24h+var_24]
sub     eax, ds:dword_560AC8
shl     eax, 2
mov     edx, [esp+24h+var_14]
add     eax, edx
mov     eax, [eax]
mov     [ecx], eax
mov     eax, [esp+24h+var_24]
sub     eax, ds:dword_560AC8
shl     eax, 2
add     eax, edx
mov     [eax], ecx
mov     eax, [esp+24h+var_18]
mov     [ecx+4], eax

loc_4EAC63:
add     esi, 74h ; 't'
add     ecx, 74h ; 't'
jmp     loc_4EABC8

loc_4EAC6E:
add     esp, 14h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4EAB81 endp




sub_4EAC76 proc near

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
mov     ecx, eax
mov     [esp+24h+var_18], edx
mov     esi, ebx
mov     ebp, [eax]
and     ebp, 0FF00h
shr     ebp, 8
test    ebp, ebp
jz      short loc_4EAC6E
mov     edi, [eax+8]
add     edi, 90h
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 3
add     eax, edx
add     eax, eax
shl     eax, 2
mov     ecx, [ecx+8]
add     ecx, eax
mov     esi, [ebx]
mov     eax, ds:dword_77E6E4
or      eax, 8000000h
mov     [esp+24h+var_1C], eax

loc_4EACC6:
test    ebp, ebp
jbe     short loc_4EAC6E
mov     eax, [edi]
mov     [esp+24h+var_14], eax
xor     ebx, ebx
mov     bl, byte ptr [esp+24h+var_14+2]
shl     ebx, 3
add     ebx, esi
xor     edx, edx
mov     dl, byte ptr [esp+24h+var_14+1]
shl     edx, 3
add     edx, esi
xor     eax, eax
mov     al, byte ptr [esp+24h+var_14]
shl     eax, 3
add     eax, esi
call    sub_4EFCF1
call    sub_4EFE75
call    sub_4EFD2E
dec     ebp
lea     eax, [esp+24h+var_20]
call    sub_4EFFE2
cmp     [esp+24h+var_20], 0
jle     short loc_4EAD77
mov     eax, ecx
call    loc_4F0075
xor     eax, eax
mov     al, byte ptr [esp+24h+var_14+3]
shl     eax, 3
add     eax, esi
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [ecx+40h]
call    sub_4F0003
mov     eax, ecx
call    sub_4F0242
call    sub_4EFB8D
and     byte ptr [ecx+0Eh], 0F8h
mov     eax, esp
call    sub_4EFFED
mov     eax, [esp+24h+var_24]
sub     eax, ds:dword_560AC8
shl     eax, 2
mov     edx, [esp+24h+var_18]
add     eax, edx
mov     eax, [eax]
mov     [ecx], eax
mov     eax, [esp+24h+var_24]
sub     eax, ds:dword_560AC8
mov     ebx, edx
mov     [ebx+eax*4], ecx
mov     eax, [esp+24h+var_1C]
mov     [ecx+4], eax

loc_4EAD77:
add     edi, 94h
add     ecx, 94h
jmp     loc_4EACC6
sub_4EAC76 endp




sub_4EAD88 proc near

var_28= word ptr -28h
var_26= word ptr -26h
var_24= word ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     ecx, eax
mov     esi, edx
xor     edx, edx
mov     ds:dword_560ACC, edx
mov     ax, [eax+4A8h]
mov     [esp+28h+var_28], ax
mov     ax, [ecx+4AAh]
mov     [esp+28h+var_26], ax
mov     ax, [ecx+4ACh]
mov     [esp+28h+var_24], ax
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     eax, esp
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+28h+var_20]
call    sub_4F04DB
mov     ds:dword_77E6E4, 0A4808080h
cmp     byte ptr ds:dword_560BDC, 0
jnz     loc_4EAE6C
call    sub_4377B8
mov     edx, eax
mov     ecx, eax
call    sub_4377C1
mov     ebx, eax
cmp     edx, 5Ah ; 'Z'
jge     short loc_4EAE22
cmp     eax, 5Ah ; 'Z'
jge     short loc_4EAE22
test    byte ptr ds:word_77EAB6, 1
jnz     short loc_4EAE6C

loc_4EAE22:
test    ecx, ecx
jz      short loc_4EAE61
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 1Fh
and     eax, 0FFFFh
mov     eax, dword ptr ds:unk_564C32[eax*4]
sar     eax, 10h
sar     eax, 6
add     eax, 0BFh
mov     ecx, eax
or      ecx, 0A4000000h
mov     edx, eax
shl     edx, 8
or      edx, ecx
shl     eax, 10h
or      edx, eax
mov     ds:dword_77E6E4, edx

loc_4EAE61:
test    ebx, ebx
jz      short loc_4EAE6C
or      byte ptr ds:dword_77E6E4+3, 2

loc_4EAE6C:
xor     eax, eax
mov     ax, ds:word_77EAB2
mov     ebx, [esp+28h+var_20]
cmp     eax, ebx
jge     short loc_4EAE83
xor     eax, eax
jmp     loc_4EAF6E

loc_4EAE83:
lea     edi, [ebx-100h]
mov     [esp+28h+var_20], edi
mov     eax, edi
mov     ds:dword_560AC8, edi
sar     eax, 1
add     eax, eax
lea     ecx, [eax+2]
lea     eax, [edi+1FFh]
sar     eax, 1
add     eax, eax
mov     [esp+28h+var_18], eax
add     eax, 2
mov     [esp+28h+var_1C], eax
test    ecx, ecx
jl      short loc_4EAEE8
mov     eax, ecx
shl     eax, 2
lea     edx, [esi+eax]
mov     eax, edi
shl     eax, 2
sub     edx, eax
sub     edx, 4
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Eh
mov     ebx, offset unk_7764A4
add     ebx, eax
mov     eax, ecx
sar     eax, 1
shl     eax, 2
add     eax, ebx
mov     ebx, esi
call    sub_4F87AF

loc_4EAEE8:
mov     ebp, [esp+28h+var_18]

loc_4EAEEC:
cmp     ecx, ebp
jge     short loc_4EAF29
test    ecx, ecx
jl      short loc_4EAF24
mov     eax, ecx
sub     eax, [esp+28h+var_20]
shl     eax, 2
lea     ebx, [esi+eax]
add     eax, 4
lea     edx, [esi+eax]
movzx   edi, ds:byte_77EAC6
shl     edi, 0Eh
add     edi, offset unk_7764A4
mov     eax, ecx
sar     eax, 1
shl     eax, 2
add     eax, edi
call    sub_4F87AF

loc_4EAF24:
add     ecx, 2
jmp     short loc_4EAEEC

loc_4EAF29:
cmp     [esp+28h+var_1C], 0
jl      short loc_4EAF69
mov     eax, ebp
shl     eax, 2
add     eax, esi
mov     ebx, [esp+28h+var_20]
shl     ebx, 2
sub     eax, ebx
mov     ebx, eax
lea     edx, [esi+7FCh]
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Eh
mov     ecx, offset unk_7764A4
add     ecx, eax
mov     eax, [esp+28h+var_1C]
sar     eax, 1
shl     eax, 2
add     eax, ecx
call    sub_4F87AF

loc_4EAF69:
mov     eax, 1

loc_4EAF6E:
add     esp, 14h
jmp     loc_4EAB7B
sub_4EAD88 endp




sub_4EAF76 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
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
sub     esp, 20h
mov     esi, eax
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset dword_56F174
call    sub_4EFB5A
lea     eax, [esi+14h]
call    sub_4EFCE3
call    sub_4EFDC9
mov     eax, offset dword_560AD4
call    sub_4EFFAD
lea     eax, [esp+38h+var_28]
call    sub_4F0003
lea     eax, [esp+38h+var_20]
call    sub_4F04DB
and     byte ptr [esi+6], 7Fh
test    byte ptr [esi], 40h
jz      short loc_4EAFD5
xor     eax, eax
mov     ax, ds:word_77EAB2
cmp     eax, [esp+38h+var_20]
jg      short loc_4EB040

loc_4EAFD5:
xor     eax, eax
mov     ax, ds:word_77EAB2
cmp     eax, [esp+38h+var_20]
jl      loc_4EB1ED
mov     cl, ds:byte_77EABF
mov     eax, 30h ; '0'
sar     eax, cl
cmp     eax, [esp+38h+var_20]
jg      loc_4EB1ED
fld     [esp+38h+var_28]
fadd    ds:flt_50A4B0
call    __CHP
fistp   [esp+38h+var_1C]
mov     eax, [esp+38h+var_1C]
cmp     ax, 400h
ja      loc_4EB1ED
fld     [esp+38h+var_24]
fadd    ds:flt_50A4B4
call    __CHP
fistp   [esp+38h+var_1C]
mov     eax, [esp+38h+var_1C]
cmp     ax, 400h
ja      loc_4EB1ED

loc_4EB040:
or      byte ptr [esi+6], 80h
mov     edi, [esp+38h+var_20]
cmp     edi, 708h
jle     short loc_4EB05B

loc_4EB050:
mov     eax, [esi+88h]
mov     eax, [eax+78h]
jmp     short loc_4EB080

loc_4EB05B:
cmp     edi, 2BCh
jle     short loc_4EB077
test    ds:byte_77EAC0, 8
jnz     short loc_4EB050
mov     eax, [esi+88h]
mov     eax, [eax+74h]
jmp     short loc_4EB080

loc_4EB077:
mov     eax, [esi+88h]
mov     eax, [eax+70h]

loc_4EB080:
add     eax, 14h
mov     ds:dword_560AD0, eax
mov     eax, [esi+0F6h]
sar     eax, 18h
mov     [esp+38h+var_20], eax
mov     ebp, [esi+15Ch]
sar     ebp, 10h
mov     edx, ebp
and     edx, 1Fh
shl     edx, 3
mov     eax, ebp
and     eax, 3E0h
shl     eax, 6
or      edx, eax
mov     eax, ebp
and     eax, 7C00h
shl     eax, 9
or      eax, edx
mov     edx, ebp
and     edx, 8000h
shl     edx, 0Ah
or      eax, edx
mov     ds:dword_77E6E4, eax
xor     ecx, ecx

loc_4EB0D2:
cmp     ecx, [esp+38h+var_20]
jge     loc_4EB1ED
mov     eax, ecx
cmp     byte ptr [esi+eax*4+0FBh], 0
jl      loc_4EB1E7
mov     bl, [esi+1]
and     bl, 0E0h
shl     eax, 2
sub     eax, ecx
shl     eax, 4
cmp     bl, 40h ; '@'
jnz     short loc_4EB107
lea     edx, [esi+250h]
jmp     short loc_4EB10D

loc_4EB107:
lea     edx, [esi+1F8h]

loc_4EB10D:
add     edx, eax
mov     ebx, offset unk_564A6C
mov     eax, offset unk_564CB4
call    sub_4EF388
mov     edi, ecx
shl     edi, 3
lea     edx, [esi+190h]
add     edx, edi
mov     ebx, esp
mov     eax, offset unk_564CB4
call    sub_4EF1FB
mov     eax, ds:dword_564CD8
mov     edx, [esp+38h+var_38]
add     eax, edx
mov     ds:dword_564A90, eax
mov     eax, ds:dword_564CDC
mov     ebx, [esp+38h+var_34]
add     eax, ebx
mov     ds:dword_564A94, eax
mov     eax, ds:dword_564CE0
mov     edx, [esp+38h+var_30]
add     eax, edx
mov     ds:dword_564A98, eax
mov     eax, offset unk_564A6C
call    sub_4EFB33
mov     eax, offset unk_564A6C
call    sub_4EFB43
test    ebp, ebp
jnz     short loc_4EB1C6
lea     eax, [esi+edi]
mov     eax, [eax+194h]
sar     eax, 10h
mov     ebx, eax
and     ebx, 1Fh
shl     ebx, 3
mov     edx, eax
and     edx, 3E0h
shl     edx, 6
or      edx, ebx
mov     ebx, eax
and     ebx, 7C00h
shl     ebx, 9
or      edx, ebx
and     eax, 8000h
shl     eax, 0Ah
or      edx, eax
mov     ds:dword_77E6E4, edx
mov     eax, ds:dword_560AD4
call    sub_4EFC77

loc_4EB1C6:
mov     eax, ecx
xor     edx, edx
mov     dl, [esi+eax*4+0F8h]
mov     eax, edx
shl     eax, 2
add     edx, eax
shl     edx, 2
mov     eax, ds:dword_560AD0
add     eax, edx
call    sub_4EB1F7

loc_4EB1E7:
inc     ecx
jmp     loc_4EB0D2

loc_4EB1ED:
add     esp, 20h

loc_4EB1F0:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4EAF76 endp




sub_4EB1F7 proc near

var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
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
sub     esp, 24h
mov     esi, eax
mov     ebx, [eax]
shr     ebx, 10h
and     ebx, 0FFh
mov     eax, [eax+0Ch]
mov     [esp+3Ch+var_30], eax
mov     ecx, [esi+10h]
xor     ebp, ebp

loc_4EB219:
cmp     ebp, ebx
jnb     short loc_4EB24F
mov     edx, ebp
shl     edx, 3
lea     eax, [ecx+edx]
call    sub_4EFD0C
call    sub_4EFE75
mov     eax, offset unk_55FE98
add     eax, edx
call    sub_4F0040
mov     eax, ebp
shl     eax, 2
add     eax, offset dword_560698
call    sub_4F0102
add     ebp, 3
jmp     short loc_4EB219

loc_4EB24F:
mov     eax, [esi]
and     eax, 0FFh
mov     [esp+3Ch+var_20], eax
mov     ebp, [esi+4]
mov     eax, ds:dword_77E6E4
or      eax, 0A4000000h
mov     [esp+3Ch+var_34], eax

loc_4EB26B:
cmp     [esp+3Ch+var_20], 0
jbe     loc_4EB393
mov     eax, [ebp+8]
mov     edx, eax
and     edx, 0FFh
mov     [esp+3Ch+var_2C], edx
mov     edx, eax
shr     edx, 8
and     edx, 0FFh
mov     [esp+3Ch+var_24], edx
shr     eax, 10h
and     eax, 0FFh
mov     [esp+3Ch+var_28], eax
mov     ebx, eax
shl     ebx, 3
add     ebx, offset unk_55FE98
shl     edx, 3
add     edx, offset unk_55FE98
mov     eax, [esp+3Ch+var_2C]
shl     eax, 3
add     eax, offset unk_55FE98
call    sub_4EFC99
call    sub_4EFD2E
dec     [esp+3Ch+var_20]
lea     eax, [esp+3Ch+var_38]
call    sub_4EFFE2
cmp     [esp+3Ch+var_38], 0
jle     loc_4EB38B
mov     ecx, ds:dword_77E6DC
lea     eax, [ecx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, ecx
call    loc_4F005A
mov     ebx, [esp+3Ch+var_28]
mov     ebx, ds:dword_560698[ebx*4]
mov     edx, [esp+3Ch+var_24]
mov     edx, ds:dword_560698[edx*4]
mov     eax, [esp+3Ch+var_2C]
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
mov     ebx, eax
sub     ebx, edx
cmp     ebx, 2000h
jnb     short loc_4EB38B
mov     edx, [eax]
mov     [ecx], edx
mov     [eax], ecx
mov     eax, [esp+3Ch+var_34]
mov     [ecx+4], eax
mov     eax, [esp+3Ch+var_30]
xor     ax, ax
xor     edx, edx
mov     dx, [ebp+0]
or      eax, edx
mov     [ecx+0Ch], eax
xor     eax, eax
mov     ax, [ebp+2]
mov     edx, [esp+3Ch+var_30]
shl     edx, 10h
or      eax, edx
or      eax, 200000h
mov     [ecx+14h], eax
xor     eax, eax
mov     ax, [ebp+4]
mov     [ecx+1Ch], eax

loc_4EB38B:
add     ebp, 0Ch
jmp     loc_4EB26B

loc_4EB393:
mov     eax, [esi]
and     eax, 0FF00h
shr     eax, 8
mov     [esp+3Ch+var_20], eax
mov     ebp, [esi+8]
mov     eax, ds:dword_77E6E4
or      eax, 0AC000000h
mov     [esp+3Ch+var_34], eax

loc_4EB3B2:
mov     esi, [esp+3Ch+var_20]
test    esi, esi
jbe     loc_4EB51F
mov     eax, [ebp+8]
mov     edx, eax
and     edx, 0FFh
mov     [esp+3Ch+var_2C], edx
mov     edx, eax
shr     edx, 8
and     edx, 0FFh
mov     [esp+3Ch+var_24], edx
mov     edx, eax
shr     edx, 10h
and     edx, 0FFh
mov     [esp+3Ch+var_28], edx
mov     ecx, eax
shr     ecx, 18h
and     ecx, 0FFh
mov     ebx, edx
shl     ebx, 3
add     ebx, offset unk_55FE98
mov     edx, [esp+3Ch+var_24]
shl     edx, 3
add     edx, offset unk_55FE98
mov     eax, [esp+3Ch+var_2C]
shl     eax, 3
add     eax, offset unk_55FE98
call    sub_4EFC99
call    sub_4EFD2E
lea     edi, [esi-1]
mov     [esp+3Ch+var_20], edi
lea     eax, [esp+3Ch+var_38]
call    sub_4EFFE2
cmp     [esp+3Ch+var_38], 0
jle     loc_4EB517
mov     eax, ds:dword_77E6DC
mov     [esp+3Ch+var_1C], eax
add     eax, 48h ; 'H'
mov     ds:dword_77E6DC, eax
mov     eax, [esp+3Ch+var_1C]
call    loc_4F0075
mov     esi, ecx
mov     edi, [esp+3Ch+var_1C]
lea     edi, [edi+40h]
lea     esi, unk_55FE98[esi*8]
movsd
movsd
mov     ecx, ds:dword_560698[ecx*4]
mov     ebx, [esp+3Ch+var_28]
mov     ebx, ds:dword_560698[ebx*4]
mov     eax, [esp+3Ch+var_24]
mov     edx, ds:dword_560698[eax*4]
mov     eax, [esp+3Ch+var_2C]
mov     eax, ds:dword_560698[eax*4]
call    sub_4EFCCB
call    sub_4EFB8D
mov     eax, esp
call    sub_4EFFED
mov     eax, [esp+3Ch+var_1C]
call    sub_4F0242
mov     eax, [esp+3Ch+var_3C]
shr     eax, 1
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     ecx, eax
sub     ecx, edx
cmp     ecx, 2000h
jnb     short loc_4EB517
mov     edx, [eax]
mov     ecx, [esp+3Ch+var_1C]
mov     [ecx], edx
mov     edx, ecx
mov     [eax], ecx
mov     eax, [esp+3Ch+var_34]
mov     [ecx+4], eax
mov     eax, [esp+3Ch+var_30]
xor     ax, ax
xor     edx, ecx
mov     dx, [ebp+0]
or      eax, edx
mov     [ecx+0Ch], eax
xor     eax, eax
mov     ax, [ebp+2]
mov     edx, [esp+3Ch+var_30]
shl     edx, 10h
or      eax, edx
or      eax, 200000h
mov     [ecx+14h], eax
xor     eax, eax
mov     ax, [ebp+4]
mov     [ecx+1Ch], eax
xor     eax, eax
mov     ax, [ebp+6]
mov     [ecx+24h], eax

loc_4EB517:
add     ebp, 0Ch
jmp     loc_4EB3B2

loc_4EB51F:
add     esp, 24h
jmp     loc_4EB1F0
sub_4EB1F7 endp




sub_4EB527 proc near
push    ebx
push    ecx
push    edx
cmp     ds:dword_77E710, 0
jnz     loc_4EB5D0
mov     edx, 4

loc_4EB53C:
dec     edx
imul    eax, edx, 734h
add     eax, offset unk_6E23DC
cmp     ds:byte_77E7D4, 17h
jnz     short loc_4EB567
xor     ebx, ebx
mov     bl, [eax+6]
movsx   ecx, byte ptr [eax]
and     ecx, ebx
test    cl, 2
jz      short loc_4EB57B
call    sub_4EAF76
jmp     short loc_4EB57B

loc_4EB567:
xor     ecx, ecx
mov     cl, [eax+6]
movsx   ebx, byte ptr [eax]
and     ecx, ebx
test    cl, 2
jz      short loc_4EB57B
call    sub_4EB5D4

loc_4EB57B:
test    edx, edx
jnz     short loc_4EB53C
mov     edx, 10h

loc_4EB584:
dec     edx
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 5
add     eax, offset byte_6DD9CC
cmp     ds:byte_77E7D4, 17h
jnz     short loc_4EB5B8
xor     ecx, ecx
mov     cl, [eax+6]
movsx   ebx, byte ptr [eax]
and     ecx, ebx
test    cl, 2
jz      short loc_4EB5CC
call    sub_4EAF76
jmp     short loc_4EB5CC

loc_4EB5B8:
xor     ebx, ebx
mov     bl, [eax+6]
movsx   ecx, byte ptr [eax]
and     ecx, ebx
test    cl, 2
jz      short loc_4EB5CC
call    sub_4EB5D4

loc_4EB5CC:
test    edx, edx
jnz     short loc_4EB584

loc_4EB5D0:
pop     edx
pop     ecx
pop     ebx
retn
sub_4EB527 endp




sub_4EB5D4 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
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
sub     esp, 20h
mov     esi, eax
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset dword_56F174
call    sub_4EFB5A
lea     eax, [esi+14h]
call    sub_4EFCE3
call    sub_4EFDC9
mov     eax, offset dword_560AD4
call    sub_4EFFAD
lea     eax, [esp+38h+var_28]
call    sub_4F0003
lea     eax, [esp+38h+var_20]
call    sub_4F04DB
and     byte ptr [esi+6], 7Fh
test    byte ptr [esi], 40h
jz      short loc_4EB637
xor     eax, eax
mov     ax, ds:word_77EAB2
cmp     eax, [esp+38h+var_20]
jg      loc_4EB6CE

loc_4EB637:
xor     eax, eax
mov     ax, ds:word_77EAB2
cmp     eax, [esp+38h+var_20]
jl      loc_4EB1ED
mov     cl, ds:byte_77EABF
mov     eax, 30h ; '0'
sar     eax, cl
cmp     eax, [esp+38h+var_20]
jg      loc_4EB1ED
test    ds:byte_77EAC0, 8
jz      short loc_4EB68C
fld     [esp+38h+var_28]
fadd    ds:flt_50A4B8
call    __CHP
fistp   [esp+38h+var_1C]
mov     eax, [esp+38h+var_1C]
cmp     ax, 400h
ja      loc_4EB1ED
jmp     short loc_4EB6AD

loc_4EB68C:
fld     [esp+38h+var_28]
fadd    ds:flt_50A4B8
call    __CHP
fistp   [esp+38h+var_1C]
mov     eax, [esp+38h+var_1C]
cmp     ax, 400h
ja      loc_4EB1ED

loc_4EB6AD:
fld     [esp+38h+var_24]
fadd    ds:flt_50A4BC
call    __CHP
fistp   [esp+38h+var_1C]
mov     eax, [esp+38h+var_1C]
cmp     ax, 400h
ja      loc_4EB1ED

loc_4EB6CE:
or      byte ptr [esi+6], 80h
mov     edi, [esp+38h+var_20]
cmp     edi, 708h
jle     short loc_4EB6E9

loc_4EB6DE:
mov     eax, [esi+88h]
mov     eax, [eax+78h]
jmp     short loc_4EB70E

loc_4EB6E9:
cmp     edi, 2BCh
jle     short loc_4EB705
test    ds:byte_77EAC0, 8
jnz     short loc_4EB6DE
mov     eax, [esi+88h]
mov     eax, [eax+74h]
jmp     short loc_4EB70E

loc_4EB705:
mov     eax, [esi+88h]
mov     eax, [eax+70h]

loc_4EB70E:
add     eax, 14h
mov     ds:dword_560AD0, eax
mov     eax, [esi+0F6h]
sar     eax, 18h
mov     [esp+38h+var_20], eax
mov     ebp, [esi+15Ch]
sar     ebp, 10h
mov     edx, ebp
and     edx, 1Fh
shl     edx, 3
mov     eax, ebp
and     eax, 3E0h
shl     eax, 6
or      edx, eax
mov     eax, ebp
and     eax, 7C00h
shl     eax, 9
or      edx, eax
mov     eax, ebp
and     eax, 8000h
shl     eax, 0Ah
or      edx, eax
mov     ds:dword_77E6E4, edx
xor     ecx, ecx

loc_4EB760:
cmp     ecx, [esp+38h+var_20]
jge     loc_4EB1ED
mov     eax, ecx
cmp     byte ptr [esi+eax*4+0FBh], 0
jl      loc_4EB86C
mov     bl, [esi+1]
and     bl, 0E0h
shl     eax, 2
sub     eax, ecx
shl     eax, 4
cmp     bl, 40h ; '@'
jnz     short loc_4EB795
lea     edx, [esi+250h]
jmp     short loc_4EB79B

loc_4EB795:
lea     edx, [esi+1F8h]

loc_4EB79B:
add     edx, eax
mov     ebx, offset unk_564A6C
mov     eax, offset unk_564CB4
call    sub_4EF388
mov     edi, ecx
shl     edi, 3
lea     edx, [esi+190h]
add     edx, edi
mov     ebx, esp
mov     eax, offset unk_564CB4
call    sub_4EF1FB
mov     eax, ds:dword_564CD8
mov     edx, [esp+38h+var_38]
add     eax, edx
mov     ds:dword_564A90, eax
mov     eax, ds:dword_564CDC
mov     ebx, [esp+38h+var_34]
add     eax, ebx
mov     ds:dword_564A94, eax
mov     eax, ds:dword_564CE0
mov     edx, [esp+38h+var_30]
add     eax, edx
mov     ds:dword_564A98, eax
mov     eax, offset unk_564A6C
call    sub_4EFB33
mov     eax, offset unk_564A6C
call    sub_4EFB43
test    ebp, ebp
jnz     short loc_4EB84A
lea     eax, [esi+edi]
mov     eax, [eax+194h]
sar     eax, 10h
mov     edx, eax
and     edx, 1Fh
shl     edx, 3
mov     ebx, eax
and     ebx, 3E0h
shl     ebx, 6
or      ebx, edx
mov     edx, eax
and     edx, 7C00h
shl     edx, 9
or      edx, ebx
and     eax, 8000h
shl     eax, 0Ah
or      edx, eax
mov     ds:dword_77E6E4, edx

loc_4EB84A:
mov     eax, ecx
xor     edx, edx
mov     dl, [esi+eax*4+0F8h]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
mov     edx, ds:dword_560AD0
add     eax, edx
call    sub_4EB872

loc_4EB86C:
inc     ecx
jmp     loc_4EB760
sub_4EB5D4 endp




sub_4EB872 proc near

var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
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
sub     esp, 24h
mov     esi, eax
mov     edx, [eax]
shr     edx, 10h
and     edx, 0FFh
mov     eax, [eax+0Ch]
mov     [esp+3Ch+var_2C], eax
mov     ebx, [esi+10h]
xor     ebp, ebp

loc_4EB894:
cmp     ebp, edx
jnb     short loc_4EB8CA
mov     ecx, ebp
shl     ecx, 3
lea     eax, [ebx+ecx]
call    sub_4EFD0C
call    sub_4EFE75
mov     eax, offset unk_55FE98
add     eax, ecx
call    sub_4F0040
mov     eax, ebp
shl     eax, 2
add     eax, offset dword_560698
call    sub_4F0102
add     ebp, 3
jmp     short loc_4EB894

loc_4EB8CA:
mov     eax, [esi]
and     eax, 0FFh
mov     [esp+3Ch+var_1C], eax
mov     ebp, [esi+4]
mov     eax, ds:dword_77E6E4
or      eax, 0A4000000h
mov     [esp+3Ch+var_30], eax

