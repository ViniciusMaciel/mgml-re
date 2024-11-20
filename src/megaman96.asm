loc_4EF4FA:
mov     ebx, ecx
mov     edx, ecx
mov     eax, esp
call    sub_4EF388
mov     eax, ecx
add     esp, 3Ch
pop     ecx
pop     ebx
retn
sub_4EF486 endp




; int __cdecl sub_4EF50D(int, int, int, int, int, float, int, int, int, int, int, float, float, int)
sub_4EF50D proc near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10= dword ptr  14h
arg_14= dword ptr  18h
arg_18= dword ptr  1Ch
arg_2C= dword ptr  30h
arg_30= dword ptr  34h
arg_34= dword ptr  38h

push    ebx
push    ecx
sub     esp, 3Ch
mov     ebx, eax
mov     ecx, edx
call    sub_4EF003
mov     [esp+arg_34], eax
fild    [esp+arg_34]
fmul    ds:dbl_50A530
fstp    [esp+arg_2C]
mov     eax, ebx
call    sub_4EF008
mov     [esp+arg_34], eax
fild    [esp+arg_34]
fmul    ds:dbl_50A530
fstp    [esp+arg_30]
mov     eax, [esp+arg_2C]
mov     [esp+0], eax
xor     edx, edx
mov     [esp+arg_0], edx
mov     eax, [esp+arg_30]
mov     [esp+arg_4], eax
mov     [esp+arg_8], edx
mov     [esp+arg_C], 3F800000h
mov     [esp+arg_10], edx
fld     [esp+arg_30]
fchs
fstp    [esp+arg_14]
mov     [esp+arg_18], edx
jmp     loc_4EF4F2
sub_4EF50D endp




; int __cdecl sub_4EF57E(float, int, int, int, int, int, int, int, int, int, int, float, float, int)
sub_4EF57E proc near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10= dword ptr  14h
arg_14= dword ptr  18h
arg_18= dword ptr  1Ch
arg_1C= dword ptr  20h
arg_2C= dword ptr  30h
arg_30= dword ptr  34h
arg_34= dword ptr  38h

push    ebx
push    ecx
sub     esp, 3Ch
mov     ebx, eax
mov     ecx, edx
call    sub_4EF003
mov     [esp+arg_34], eax
fild    [esp+arg_34]
fmul    ds:dbl_50A538
fstp    [esp+arg_2C]
mov     eax, ebx
call    sub_4EF008
mov     [esp+arg_34], eax
fild    [esp+arg_34]
fmul    ds:dbl_50A538
fstp    [esp+arg_30]
mov     eax, [esp+arg_2C]
mov     [esp+0], eax
fld     [esp+arg_30]
fchs
fstp    [esp+arg_0]
xor     edx, edx
mov     [esp+arg_4], edx
mov     eax, [esp+arg_30]
mov     [esp+arg_8], eax
mov     eax, [esp+arg_2C]
mov     [esp+arg_C], eax
mov     [esp+arg_10], edx
mov     [esp+arg_14], edx
mov     [esp+arg_18], edx
mov     [esp+arg_1C], 3F800000h
jmp     loc_4EF4FA
sub_4EF57E endp




; int __thiscall sub_4EF5F7(int)
sub_4EF5F7 proc near
push    ebx             ; int
push    ecx             ; int
push    esi             ; int
mov     esi, eax
mov     ecx, edx
mov     ebx, 24h ; '$'
mov     edx, offset unk_551418
mov     eax, ecx
call    memcpy_
mov     eax, [esi+2]
sar     eax, 10h
mov     edx, ecx
call    sub_4EF57E
mov     eax, [esi]
sar     eax, 10h
mov     edx, ecx
call    sub_4EF50D
movsx   eax, word ptr [esi]
mov     edx, ecx
call    sub_4EF486
sub_4EF5F7 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4EF638

loc_4EF632:
mov     eax, ecx
pop     esi
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4EF638



; int __thiscall sub_4EF638(int)
sub_4EF638 proc near

; FUNCTION CHUNK AT 004EF632 SIZE 00000006 BYTES

push    ebx             ; int
push    ecx             ; int
push    esi             ; int
mov     esi, eax
mov     ecx, edx
mov     ebx, 24h ; '$'
mov     edx, offset unk_551418
mov     eax, ecx
call    memcpy_
mov     eax, [esi+2]
sar     eax, 10h
mov     edx, ecx
call    sub_4EF57E
movsx   eax, word ptr [esi]
mov     edx, ecx
call    sub_4EF486
mov     eax, [esi]
sar     eax, 10h
mov     edx, ecx
call    sub_4EF50D
jmp     short loc_4EF632
sub_4EF638 endp




sub_4EF675 proc near
push    ecx
mov     ecx, [edx]
mov     [eax+24h], ecx
mov     ecx, [edx+4]
mov     [eax+28h], ecx
mov     edx, [edx+8]
mov     [eax+2Ch], edx
pop     ecx
retn
sub_4EF675 endp




sub_4EF689 proc near
fild    dword ptr [edx]
fmul    dword ptr [eax]
fmul    ds:dbl_50A540
fstp    dword ptr [eax]
fild    dword ptr [edx+4]
fmul    dword ptr [eax+4]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+4]
fild    dword ptr [edx+8]
fmul    dword ptr [eax+8]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+8]
fild    dword ptr [edx]
fmul    dword ptr [eax+0Ch]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+0Ch]
fild    dword ptr [edx+4]
fmul    dword ptr [eax+10h]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+10h]
fild    dword ptr [edx+8]
fmul    dword ptr [eax+14h]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+14h]
fild    dword ptr [edx]
fmul    dword ptr [eax+18h]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+18h]
fild    dword ptr [edx+4]
fmul    dword ptr [eax+1Ch]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+1Ch]
fild    dword ptr [edx+8]
fmul    dword ptr [eax+20h]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+20h]
retn
sub_4EF689 endp




sub_4EF70C proc near
push    ebx
push    ecx
mov     ecx, eax
mov     eax, edx
mov     ebx, [ecx]
mov     [edx], ebx
mov     ebx, [ecx+0Ch]
mov     [edx+4], ebx
mov     ebx, [ecx+18h]
mov     [edx+8], ebx
mov     ebx, [ecx+4]
mov     [edx+0Ch], ebx
mov     ebx, [ecx+10h]
mov     [edx+10h], ebx
mov     ebx, [ecx+1Ch]
mov     [edx+14h], ebx
mov     ebx, [ecx+8]
mov     [edx+18h], ebx
mov     ebx, [ecx+14h]
mov     [edx+1Ch], ebx
mov     ebx, [ecx+20h]
mov     [edx+20h], ebx
pop     ecx
pop     ebx
retn
sub_4EF70C endp




sub_4EF749 proc near
push    ecx
push    esi
mov     ecx, [eax+4]
mov     esi, [edx+8]
imul    esi, ecx
mov     ecx, [eax+8]
imul    ecx, [edx+4]
sub     esi, ecx
mov     [ebx], esi
mov     esi, [eax+8]
imul    esi, [edx]
mov     ecx, [eax]
imul    ecx, [edx+8]
sub     esi, ecx
mov     [ebx+4], esi
mov     ecx, [eax]
imul    ecx, [edx+4]
mov     eax, [eax+4]
imul    eax, [edx]
sub     ecx, eax
mov     [ebx+8], ecx
pop     esi
pop     ecx
retn
sub_4EF749 endp




sub_4EF784 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 24h
fild    dword ptr [eax]
fmul    ds:flt_50A548
fstp    [esp+24h+var_24]
fild    dword ptr [eax+4]
fmul    ds:flt_50A548
fstp    [esp+24h+var_20]
fild    dword ptr [eax+8]
fmul    ds:flt_50A548
fstp    [esp+24h+var_1C]
fild    dword ptr [edx]
fmul    ds:flt_50A548
fstp    [esp+24h+var_18]
fild    dword ptr [edx+4]
fmul    ds:flt_50A548
fstp    [esp+24h+var_14]
fild    dword ptr [edx+8]
fmul    ds:flt_50A548
fstp    [esp+24h+var_10]
fld     [esp+24h+var_20]
fmul    [esp+24h+var_10]
fld     [esp+24h+var_1C]
fmul    [esp+24h+var_14]
fsubp   st(1), st
fstp    [esp+24h+var_C]
fld     [esp+24h+var_1C]
fmul    [esp+24h+var_18]
fld     [esp+24h+var_24]
fmul    [esp+24h+var_10]
fsubp   st(1), st
fstp    [esp+24h+var_8]
fld     [esp+24h+var_24]
fmul    [esp+24h+var_14]
fld     [esp+24h+var_20]
fmul    [esp+24h+var_18]
fsubp   st(1), st
fstp    [esp+24h+var_4]
fld     [esp+24h+var_C]
fmul    ds:flt_50A54C
call    __CHP
fistp   dword ptr [ebx]
fld     [esp+24h+var_8]
fmul    ds:flt_50A54C
call    __CHP
fistp   dword ptr [ebx+4]
fld     [esp+24h+var_4]
fmul    ds:flt_50A54C
call    __CHP
fistp   dword ptr [ebx+8]
add     esp, 24h
retn
sub_4EF784 endp




sub_4EF84B proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
sub     esp, 10h
mov     edi, edx
mov     ebx, esp
mov     edx, eax
mov     eax, offset unk_77EAF8
call    sub_4EF1FB
mov     eax, ds:dword_77EB1C
add     [esp+18h+var_18], eax
mov     eax, ds:dword_77EB20
add     [esp+18h+var_14], eax
mov     eax, ds:dword_77EB24
add     [esp+18h+var_10], eax
mov     esi, esp
movsd
movsd
movsd
movsd
add     esp, 10h
pop     edi
pop     esi
retn
sub_4EF84B endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF886 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= qword ptr -0Ch
var_4= dword ptr -4

push    ebp
mov     ebp, esp
sub     esp, 20h
and     esp, 0FFFFFFF8h
fild    dword ptr [eax]
fstp    [esp+20h+var_1C]
fild    dword ptr [eax+4]
fstp    [esp+20h+var_14]
fild    dword ptr [eax+8]
fstp    [esp+20h+var_10]
fld     [esp+20h+var_1C]
fmul    st, st
fld     [esp+20h+var_14]
fmul    st, st
faddp   st(1), st
fld     [esp+20h+var_10]
fmul    st, st
faddp   st(1), st
fst     [esp+20h+var_18]
call    IF@SQRT
fstp    [esp+20h+var_20]
test    [esp+20h+var_20], 7FFFFFFFh
jnz     short loc_4EF8D5
mov     [esp+20h+var_20], 3F800000h

loc_4EF8D5:
fld     [esp+20h+var_1C]
fmul    ds:dbl_50A550
fld     [esp+20h+var_20]
fstp    [esp+20h+var_C]
fdiv    [esp+20h+var_C]
call    __CHP
fistp   dword ptr [edx]
fld     [esp+20h+var_14]
fmul    ds:dbl_50A550
fdiv    [esp+20h+var_C]
call    __CHP
fistp   dword ptr [edx+4]
fld     [esp+20h+var_10]
fmul    ds:dbl_50A550
fdiv    [esp+20h+var_C]
call    __CHP
fistp   dword ptr [edx+8]
fld     [esp+20h+var_18]

loc_4EF921:
call    __CHP
fistp   [esp+20h+var_4]
mov     eax, [esp+20h+var_4]
mov     esp, ebp
pop     ebp
retn
sub_4EF886 endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF932 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= qword ptr -0Ch
var_4= dword ptr -4

push    ebp
mov     ebp, esp
sub     esp, 20h
and     esp, 0FFFFFFF8h
fild    dword ptr [eax]
fstp    [esp+20h+var_1C]
fild    dword ptr [eax+4]
fstp    [esp+20h+var_10]
fild    dword ptr [eax+8]
fstp    [esp+20h+var_18]
fld     [esp+20h+var_1C]
fmul    st, st
fld     [esp+20h+var_10]
fmul    st, st
faddp   st(1), st
fld     [esp+20h+var_18]
fmul    st, st
faddp   st(1), st
fst     [esp+20h+var_14]
call    IF@SQRT
fstp    [esp+20h+var_20]
test    [esp+20h+var_20], 7FFFFFFFh
jnz     short loc_4EF981
mov     [esp+20h+var_20], 3F800000h

loc_4EF981:
fld     [esp+20h+var_1C]
fmul    ds:dbl_50A558
fld     [esp+20h+var_20]
fstp    [esp+20h+var_C]
fdiv    [esp+20h+var_C]
call    __CHP
fistp   [esp+20h+var_4]
mov     eax, [esp+20h+var_4]
mov     [edx], ax
fld     [esp+20h+var_10]
fmul    ds:dbl_50A558
fdiv    [esp+20h+var_C]
call    __CHP
fistp   [esp+20h+var_4]
mov     eax, [esp+20h+var_4]
mov     [edx+2], ax
fld     [esp+20h+var_18]
fmul    ds:dbl_50A558
fdiv    [esp+20h+var_C]
call    __CHP
fistp   [esp+20h+var_4]
mov     eax, [esp+20h+var_4]
mov     [edx+4], ax
fld     [esp+20h+var_14]
jmp     loc_4EF921
sub_4EF932 endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF9ED proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

push    ecx
push    esi
push    edi
push    ebp
mov     ebp, esp
sub     esp, 24h
and     esp, 0FFFFFFF8h
mov     ecx, edx
mov     esi, ebx
mov     ebx, esp
mov     edx, eax
mov     eax, offset unk_77EB38
call    sub_4EF1FB
mov     edx, esp
mov     eax, esp
call    sub_4EF886
mov     ebx, esp
mov     edx, esp
mov     eax, offset unk_77EAC8
call    sub_4EF371
mov     edx, esp
mov     eax, esp
call    sub_4EF886
mov     eax, ds:dword_77EB66
sar     eax, 10h
mov     edx, [esp+24h+var_24]
add     edx, eax
mov     [esp+24h+var_24], edx
mov     eax, ds:dword_77EB66+2
sar     eax, 10h
mov     ebx, [esp+24h+var_20]
add     ebx, eax
mov     [esp+24h+var_20], ebx
mov     eax, ds:dword_77EB6A
sar     eax, 10h
mov     edi, [esp+24h+var_1C]
add     edi, eax
mov     [esp+24h+var_1C], edi
mov     [esp+24h+var_8], edx
fild    [esp+24h+var_8]
fmul    ds:dbl_50A560
fstp    [esp+24h+var_14]
mov     [esp+24h+var_8], ebx
fild    [esp+24h+var_8]
fmul    ds:dbl_50A560
fstp    [esp+24h+var_10]
mov     eax, edi
mov     [esp+24h+var_8], edi
fild    [esp+24h+var_8]
fmul    ds:dbl_50A560
fstp    [esp+24h+var_C]
xor     eax, edi
mov     al, [ecx]
mov     [esp+24h+var_4], eax
fild    word ptr [esp+24h+var_4]
fmul    [esp+24h+var_14]
call    __CHP
fistp   [esp+24h+var_8]
mov     al, byte ptr [esp+24h+var_8]
mov     [esi], al
xor     eax, eax
mov     al, [ecx+1]
mov     [esp+24h+var_4], eax
fild    word ptr [esp+24h+var_4]
fmul    [esp+24h+var_10]
call    __CHP
fistp   [esp+24h+var_8]
mov     al, byte ptr [esp+24h+var_8]
mov     [esi+1], al
xor     eax, eax
mov     al, [ecx+2]
mov     [esp+24h+var_4], eax
fild    word ptr [esp+24h+var_4]
fmul    [esp+24h+var_C]
call    __CHP
fistp   [esp+24h+var_8]
mov     al, byte ptr [esp+24h+var_8]
mov     [esi+2], al
mov     al, [ecx]
mov     [esi], al
mov     al, [ecx+1]
mov     [esi+1], al
mov     al, [ecx+2]
mov     [esi+2], al
mov     esp, ebp
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4EF9ED endp




sub_4EFB0F proc near
push    ecx
push    esi
push    edi
mov     ecx, 0Ch
mov     edi, offset unk_77EB38

loc_4EFB1C:
mov     esi, eax
rep movsd
pop     edi
pop     esi
pop     ecx
retn
sub_4EFB0F endp




sub_4EFB24 proc near
push    ecx
push    esi
push    edi
mov     ecx, 0Ch
mov     edi, offset unk_77EAC8
jmp     short loc_4EFB1C
sub_4EFB24 endp




sub_4EFB33 proc near
push    ebx
push    edx
mov     ebx, 24h ; '$'
mov     edx, eax
mov     eax, offset unk_77EAF8
jmp     short loc_4EFB52
sub_4EFB33 endp




sub_4EFB43 proc near
push    ebx
push    edx
lea     edx, [eax+24h]
mov     ebx, 0Ch

loc_4EFB4D:
mov     eax, offset dword_77EB1C

loc_4EFB52:
call    memcpy_
pop     edx
pop     ebx
retn
sub_4EFB43 endp




sub_4EFB5A proc near
push    ebx
push    edx
mov     ebx, 0Ch
mov     edx, eax
jmp     short loc_4EFB4D
sub_4EFB5A endp




sub_4EFB65 proc near
push    ecx
push    edx
mov     edx, ds:dword_77EBA8
add     edx, ds:dword_77EBA4
add     edx, ds:dword_77EBA0
mov     ecx, 0Ch
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     ds:dword_77EBB8, eax
pop     edx
pop     ecx
retn
sub_4EFB65 endp




sub_4EFB8D proc near
mov     eax, ds:dword_77EBAC
add     eax, ds:dword_77EBA8
add     eax, ds:dword_77EBA4
add     eax, ds:dword_77EBA0
sar     eax, 4
mov     ds:dword_77EBB8, eax
retn
sub_4EFB8D endp




sub_4EFBAD proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 10h
fild    ds:dword_77EBB4
fmul    ds:dbl_50A568
fstp    [esp+10h+var_10]
fld1
fsub    [esp+10h+var_10]
fstp    [esp+10h+var_C]
xor     eax, eax
mov     al, byte ptr ds:dword_77EBC8
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_C]
xor     eax, eax
mov     al, ds:byte_77EBB0
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_10]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_8]
mov     al, byte ptr [esp+10h+var_8]
mov     byte ptr ds:dword_77EBC8, al
xor     eax, eax
mov     al, byte ptr ds:dword_77EBC8+1
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_C]
xor     eax, eax
mov     al, ds:byte_77EBB1
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_10]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_8]
mov     al, byte ptr [esp+10h+var_8]
mov     byte ptr ds:dword_77EBC8+1, al
xor     eax, eax
mov     al, byte ptr ds:dword_77EBC8+2
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_C]
xor     eax, eax
mov     al, ds:byte_77EBB2
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_10]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_8]
mov     al, byte ptr [esp+10h+var_8]
mov     byte ptr ds:dword_77EBC8+2, al
add     esp, 10h
retn
sub_4EFBAD endp




sub_4EFC77 proc near
test    eax, eax
jge     short loc_4EFC7F
xor     eax, eax
jmp     short loc_4EFC8B

loc_4EFC7F:
cmp     eax, 1000h
jle     short loc_4EFC8B
mov     eax, 1000h

loc_4EFC8B:
mov     ds:dword_77EBB4, eax
retn
sub_4EFC77 endp




sub_4EFC91 proc near
mov     eax, [eax]
mov     ds:dword_77EBC8, eax
retn
sub_4EFC91 endp




sub_4EFC99 proc near
push    esi
push    edi
mov     edi, offset flt_77EB88
mov     esi, eax
movsd
movsd
mov     edi, offset flt_77EB90
mov     esi, edx
movsd
movsd
mov     edi, offset flt_77EB98

loc_4EFCB2:
mov     esi, ebx
movsd
movsd
pop     edi
pop     esi
retn
sub_4EFC99 endp




sub_4EFCB9 proc near
mov     ds:dword_77EBA8, eax
mov     ds:dword_77EBA4, edx
mov     ds:dword_77EBA0, ebx
retn
sub_4EFCB9 endp




sub_4EFCCB proc near
mov     ds:dword_77EBAC, eax
mov     ds:dword_77EBA8, edx
mov     ds:dword_77EBA4, ebx
mov     ds:dword_77EBA0, ecx
retn
sub_4EFCCB endp




sub_4EFCE3 proc near
push    esi
push    edi
mov     edi, offset unk_77EB80
mov     esi, eax
movsd
movsd
pop     edi
pop     esi
retn
sub_4EFCE3 endp




sub_4EFCF1 proc near
push    esi
push    edi
mov     edi, offset unk_77EB80
mov     esi, eax
movsd
movsd
mov     edi, offset unk_77EB78
mov     esi, edx
movsd
movsd
mov     edi, offset unk_77EB70
jmp     short loc_4EFCB2
sub_4EFCF1 endp




sub_4EFD0C proc near
push    esi
push    edi
mov     edi, offset unk_77EB80
mov     esi, eax
movsd
movsd
mov     edi, offset unk_77EB78
lea     esi, [eax+8]
movsd
movsd
mov     edi, offset unk_77EB70
lea     esi, [eax+10h]
movsd
movsd
pop     edi
pop     esi
retn
sub_4EFD0C endp




sub_4EFD2E proc near

var_4= dword ptr -4

sub     esp, 4
fld     ds:flt_77EB94
fsub    ds:flt_77EB8C
fld     ds:flt_77EB98
fsub    ds:flt_77EB88
fmulp   st(1), st
fstp    [esp+4+var_4]
fld     ds:flt_77EB9C
fsub    ds:flt_77EB8C
fld     ds:flt_77EB90
fsub    ds:flt_77EB88
fmulp   st(1), st
fsub    [esp+4+var_4]
call    __CHP
fistp   ds:dword_77EBBC
add     esp, 4
retn
sub_4EFD2E endp




sub_4EFD7A proc near
push    ebx
push    edx
mov     ebx, offset flt_77EB28
mov     edx, offset unk_77EB80
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    ds:flt_77EB28
fstp    ds:flt_77EB28
fild    ds:dword_77EB20
fadd    ds:flt_77EB2C
fstp    ds:flt_77EB2C
fild    ds:dword_77EB24
fadd    ds:flt_77EB30
fstp    ds:flt_77EB30
pop     edx
pop     ebx
retn
sub_4EFD7A endp




sub_4EFDC9 proc near
push    ebx
push    edx
push    esi
push    edi
mov     ebx, offset flt_77EB28
mov     edx, offset unk_77EB80
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    ds:flt_77EB28
fstp    ds:flt_77EB28
fild    ds:dword_77EB20
fadd    ds:flt_77EB2C
fstp    ds:flt_77EB2C
fild    ds:dword_77EB24
fadd    ds:flt_77EB30
fstp    ds:flt_77EB30
mov     eax, ds:dword_77EBA8
mov     ds:dword_77EBAC, eax
mov     eax, ds:dword_77EBA4
mov     ds:dword_77EBA8, eax
mov     eax, ds:dword_77EBA0
mov     ds:dword_77EBA4, eax
mov     edi, offset flt_77EB88
mov     esi, offset flt_77EB90
movsd
movsd
mov     edi, offset flt_77EB90
mov     esi, offset flt_77EB98
movsd
movsd
mov     ebx, offset dword_77EBA0
mov     edx, offset flt_77EB9C
mov     eax, offset flt_77EB98
call    sub_4EEED0
mov     eax, ds:dword_77EBA0
call    sub_4EEE7D
mov     ds:dword_77EBB4, eax
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4EFDC9 endp




sub_4EFE75 proc near
push    ebx
push    edx
mov     eax, ds:dword_77EBA0
mov     ds:dword_77EBAC, eax
mov     ebx, offset flt_77EB28
mov     edx, offset unk_77EB80
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    ds:flt_77EB28
fstp    ds:flt_77EB28
fild    ds:dword_77EB20
fadd    ds:flt_77EB2C
fstp    ds:flt_77EB2C
fild    ds:dword_77EB24
fadd    ds:flt_77EB30
fstp    ds:flt_77EB30
mov     ebx, offset dword_77EBA8
mov     edx, offset flt_77EB8C
mov     eax, offset flt_77EB88
call    sub_4EEED0
mov     ebx, offset flt_77EB28
mov     edx, offset unk_77EB78
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    ds:flt_77EB28
fstp    ds:flt_77EB28
fild    ds:dword_77EB20
fadd    ds:flt_77EB2C
fstp    ds:flt_77EB2C
fild    ds:dword_77EB24
fadd    ds:flt_77EB30
fstp    ds:flt_77EB30
mov     ebx, offset dword_77EBA4
mov     edx, offset flt_77EB94
mov     eax, offset flt_77EB90
call    sub_4EEED0
mov     ebx, offset flt_77EB28
mov     edx, offset unk_77EB70
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    ds:flt_77EB28
fstp    ds:flt_77EB28
fild    ds:dword_77EB20
fadd    ds:flt_77EB2C
fstp    ds:flt_77EB2C
fild    ds:dword_77EB24
fadd    ds:flt_77EB30
fstp    ds:flt_77EB30
mov     ebx, offset dword_77EBA0
mov     edx, offset flt_77EB9C
mov     eax, offset flt_77EB98
call    sub_4EEED0
mov     eax, ds:dword_77EBA0
call    sub_4EEE7D
mov     ds:dword_77EBB4, eax
pop     edx
pop     ebx
retn
sub_4EFE75 endp




sub_4EFFAD proc near
push    edx
mov     edx, ds:dword_77EBB4
mov     [eax], edx
pop     edx
retn
sub_4EFFAD endp




sub_4EFFB8 proc near
fld     ds:flt_77EB28
call    __CHP
fistp   dword ptr [eax]
fld     ds:flt_77EB2C
call    __CHP
fistp   dword ptr [eax+4]
fld     ds:flt_77EB30
call    __CHP
fistp   dword ptr [eax+8]
retn
sub_4EFFB8 endp




sub_4EFFE2 proc near
push    edx
mov     edx, ds:dword_77EBBC
mov     [eax], edx
pop     edx
retn
sub_4EFFE2 endp




sub_4EFFED proc near
push    edx
mov     edx, ds:dword_77EBB8
mov     [eax], edx
pop     edx
retn
sub_4EFFED endp




sub_4EFFF8 proc near
push    edx
mov     edx, ds:dword_77EBC8
mov     [eax], edx
pop     edx
retn
sub_4EFFF8 endp




sub_4F0003 proc near
push    esi
push    edi
mov     edi, eax
jmp     loc_4F008E
sub_4F0003 endp




sub_4F000C proc near
push    esi
push    edi
mov     edi, eax
mov     esi, offset flt_77EB88
movsd
movsd
pop     edi
pop     esi
retn
sub_4F000C endp




sub_4F001A proc near
push    esi
push    edi
mov     edi, eax
mov     esi, offset flt_77EB90
movsd
movsd
pop     edi
pop     esi
retn
sub_4F001A endp




sub_4F0028 proc near
push    esi
push    edi
mov     edi, eax
mov     esi, offset flt_77EB88
movsd
movsd
mov     edi, edx
mov     esi, offset flt_77EB90
movsd
movsd
mov     edi, ebx
jmp     short loc_4F008E
sub_4F0028 endp




sub_4F0040 proc near
push    esi
push    edi
mov     edi, eax
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+8]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+10h]
jmp     short loc_4F008E

loc_4F005A:
push    esi
push    edi
lea     edi, [eax+20h]
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+28h]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+30h]
jmp     short loc_4F008E

loc_4F0075:
push    esi
push    edi
lea     edi, [eax+28h]
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+30h]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+38h]

loc_4F008E:
mov     esi, offset flt_77EB98
movsd
movsd
pop     edi
pop     esi
retn
sub_4F0040 endp




sub_4F0098 proc near
push    esi
push    edi
lea     edi, [eax+1Ch]
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+24h]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+2Ch]
jmp     short loc_4F008E
sub_4F0098 endp




sub_4F00B3 proc near
push    esi
push    edi
lea     edi, [eax+24h]
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+2Ch]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+34h]
jmp     short loc_4F008E
sub_4F00B3 endp




sub_4F00CE proc near
push    esi
push    edi
lea     edi, [eax+34h]
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+3Ch]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+44h]
jmp     short loc_4F008E
sub_4F00CE endp




sub_4F00E9 proc near
push    ecx
mov     ecx, ds:dword_77EBA8
mov     [eax], ecx
mov     eax, ds:dword_77EBA4
mov     [edx], eax
mov     eax, ds:dword_77EBA0
mov     [ebx], eax
pop     ecx
retn
sub_4F00E9 endp




sub_4F0102 proc near
push    edx
mov     edx, ds:dword_77EBA8
mov     [eax], edx
mov     edx, ds:dword_77EBA4
mov     [eax+4], edx
mov     edx, ds:dword_77EBA0
mov     [eax+8], edx
pop     edx
retn
sub_4F0102 endp




sub_4F011F proc near
push    esi
mov     esi, ds:dword_77EBAC
mov     [eax], esi
mov     eax, ds:dword_77EBA8
mov     [edx], eax
mov     eax, ds:dword_77EBA4
mov     [ebx], eax
mov     eax, ds:dword_77EBA0
mov     [ecx], eax
pop     esi
retn
sub_4F011F endp




sub_4F013F proc near
push    edx
mov     edx, ds:dword_77EBAC
mov     [eax], edx
mov     edx, ds:dword_77EBA8
mov     [eax+4], edx
mov     edx, ds:dword_77EBA4
mov     [eax+8], edx
mov     edx, ds:dword_77EBA0
mov     [eax+0Ch], edx
pop     edx
retn
sub_4F013F endp




sub_4F0165 proc near
cmp     ds:dword_77EBA8, 0
jz      short loc_4F0180
cmp     ds:dword_77EBA4, 0
jz      short loc_4F0180
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F0196

loc_4F0180:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
mov     dword ptr [eax+18h], 3F800000h
retn

loc_4F0196:
fild    ds:dword_77EBA8
fmul    ds:flt_50A570
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA4
fmul    ds:flt_50A570
fstp    dword ptr [eax+10h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A570
fstp    dword ptr [eax+18h]
retn
sub_4F0165 endp

cmp     ds:dword_77EBAC, 0
jz      short loc_4F01E8
cmp     ds:dword_77EBA8, 0
jz      short loc_4F01E8
cmp     ds:dword_77EBA4, 0
jz      short loc_4F01E8
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F0205

loc_4F01E8:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+0Ch], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
mov     dword ptr [eax+14h], 3F800000h
retn

loc_4F0205:
fild    ds:dword_77EBAC
fmul    ds:flt_50A574
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA8
fmul    ds:flt_50A574
fstp    dword ptr [eax+0Ch]
fild    ds:dword_77EBA4
fmul    ds:flt_50A574
fstp    dword ptr [eax+10h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A574
fstp    dword ptr [eax+14h]
retn



sub_4F0242 proc near
cmp     ds:dword_77EBAC, 0
jz      short loc_4F0266
cmp     ds:dword_77EBA8, 0
jz      short loc_4F0266
cmp     ds:dword_77EBA4, 0
jz      short loc_4F0266
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F0283

loc_4F0266:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
mov     dword ptr [eax+18h], 3F800000h
mov     dword ptr [eax+20h], 3F800000h
retn

loc_4F0283:
fild    ds:dword_77EBAC
fmul    ds:flt_50A578
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA8
fmul    ds:flt_50A578
fstp    dword ptr [eax+10h]
fild    ds:dword_77EBA4
fmul    ds:flt_50A578
fstp    dword ptr [eax+18h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A578
fstp    dword ptr [eax+20h]
retn
sub_4F0242 endp

push    edx
fild    ds:dword_77EBAC
fmul    ds:flt_50A57C
fst     dword ptr [eax+8]
fstp    dword ptr [eax+10h]
mov     edx, [eax+8]
mov     [eax+18h], edx
mov     edx, [eax+8]
mov     [eax+20h], edx
pop     edx
retn



sub_4F02E1 proc near
cmp     ds:dword_77EBA8, 0
jz      short loc_4F02FC
cmp     ds:dword_77EBA4, 0
jz      short loc_4F02FC
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F0312

loc_4F02FC:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
mov     dword ptr [eax+18h], 3F800000h
retn

loc_4F0312:
fild    ds:dword_77EBA8
fmul    ds:flt_50A580
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA4
fmul    ds:flt_50A580
fstp    dword ptr [eax+10h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A580
fstp    dword ptr [eax+18h]
retn
sub_4F02E1 endp




sub_4F0340 proc near
cmp     ds:dword_77EBAC, 0
jz      short loc_4F0364
cmp     ds:dword_77EBA8, 0
jz      short loc_4F0364
cmp     ds:dword_77EBA4, 0
jz      short loc_4F0364
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F0381

loc_4F0364:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
mov     dword ptr [eax+18h], 3F800000h
mov     dword ptr [eax+20h], 3F800000h
retn

loc_4F0381:
fild    ds:dword_77EBAC
fmul    ds:flt_50A584
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA8
fmul    ds:flt_50A584
fstp    dword ptr [eax+10h]
fild    ds:dword_77EBA4
fmul    ds:flt_50A584
fstp    dword ptr [eax+18h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A584
fstp    dword ptr [eax+20h]
retn
sub_4F0340 endp




sub_4F03BE proc near
cmp     ds:dword_77EBA8, 0
jz      short loc_4F03D9
cmp     ds:dword_77EBA4, 0
jz      short loc_4F03D9
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F03EF

loc_4F03D9:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+14h], 3F800000h
mov     dword ptr [eax+20h], 3F800000h
retn

loc_4F03EF:
fild    ds:dword_77EBA8
fmul    ds:flt_50A588
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA4
fmul    ds:flt_50A588
fstp    dword ptr [eax+14h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A588
fstp    dword ptr [eax+20h]
retn
sub_4F03BE endp




sub_4F041D proc near
cmp     ds:dword_77EBAC, 0
jz      short loc_4F0441
cmp     ds:dword_77EBA8, 0
jz      short loc_4F0441
cmp     ds:dword_77EBA4, 0
jz      short loc_4F0441
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F045E

loc_4F0441:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+14h], 3F800000h
mov     dword ptr [eax+20h], 3F800000h
mov     dword ptr [eax+2Ch], 3F800000h
retn

loc_4F045E:
fild    ds:dword_77EBAC
fmul    ds:flt_50A58C
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA8
fmul    ds:flt_50A58C
fstp    dword ptr [eax+14h]
fild    ds:dword_77EBA4
fmul    ds:flt_50A58C
fstp    dword ptr [eax+20h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A58C
fstp    dword ptr [eax+2Ch]
retn
sub_4F041D endp




sub_4F049B proc near
cmp     ds:dword_77EBA8, 0
jz      short loc_4F04AD
cmp     ds:dword_77EBA4, 0
jnz     short loc_4F04BC

loc_4F04AD:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
retn

loc_4F04BC:
fild    ds:dword_77EBA8
fmul    ds:flt_50A590
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA4
fmul    ds:flt_50A590
fstp    dword ptr [eax+10h]
retn
sub_4F049B endp




sub_4F04DB proc near
push    edx
mov     edx, eax
mov     eax, ds:dword_77EBA0
sar     eax, 2
mov     [edx], eax
pop     edx
retn
sub_4F04DB endp




sub_4F04EA proc near
push    ebx
push    edx
mov     ebx, 30h ; '0'
mov     edx, offset unk_77EAF8
jmp     loc_4EFB52
sub_4F04EA endp



; Attributes: bp-based frame fuzzy-sp

sub_4F04FB proc near

var_84= dword ptr -84h
var_80= dword ptr -80h
var_7C= dword ptr -7Ch
var_78= dword ptr -78h
var_74= dword ptr -74h
var_70= dword ptr -70h
var_6C= dword ptr -6Ch
var_68= dword ptr -68h
var_64= dword ptr -64h
var_5C= byte ptr -5Ch
var_4C= dword ptr -4Ch
var_48= dword ptr -48h
var_44= dword ptr -44h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= byte ptr -18h
var_14= byte ptr -14h
var_10= byte ptr -10h
var_C= byte ptr -0Ch
var_8= byte ptr -8
var_4= byte ptr -4
arg_0= dword ptr  10h

push    esi
push    edi
push    ebp
mov     ebp, esp
sub     esp, 74h
and     esp, 0FFFFFFF8h
push    eax
push    edx
push    ebx
push    ecx
xor     edx, edx
mov     [esp+84h+var_24], edx
cmp     [ebp+arg_0], 4
jnz     short loc_4F0520
mov     [esp+84h+var_3C], 20301h
jmp     short loc_4F0528

loc_4F0520:
mov     [esp+84h+var_3C], 201h

loc_4F0528:
lea     ebx, [esp+84h+var_4C]
mov     edx, [esp+84h+var_78]
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    [esp+84h+var_4C]
fstp    [esp+84h+var_4C]
fild    ds:dword_77EB20
fadd    [esp+84h+var_48]
fstp    [esp+84h+var_48]
fild    ds:dword_77EB24
fadd    [esp+84h+var_44]
fstp    [esp+84h+var_44]
lea     edi, [esp+84h+var_5C]
lea     esi, [esp+84h+var_4C]
movsd
movsd
movsd
movsd
mov     eax, [esp+84h+var_7C]
mov     al, [eax]
mov     [esp+84h+var_18], al
mov     [esp+84h+var_14], al
mov     eax, [esp+84h+var_7C]
mov     al, [eax+1]
mov     [esp+84h+var_C], al
mov     [esp+84h+var_10], al
fld     [esp+84h+var_44]
fcomp   ds:dword_77EBC0
fnstsw  ax
sahf
jnb     short loc_4F05A3
mov     eax, 1
jmp     short loc_4F05A5

loc_4F05A3:
xor     eax, eax

loc_4F05A5:
mov     [esp+84h+var_2C], eax
mov     [esp+84h+var_38], eax
xor     ecx, ecx

loc_4F05AF:
cmp     ecx, [ebp+arg_0]
jge     loc_4F08C6
cmp     ecx, 3
jnz     short loc_4F05E5
lea     edi, [esp+84h+var_6C]
lea     esi, [esp+84h+var_5C]
movsd
movsd
movsd
movsd
mov     al, [esp+84h+var_14]
mov     [esp+84h+var_8], al
mov     al, [esp+84h+var_10]
mov     [esp+84h+var_4], al
mov     esi, [esp+84h+var_38]
jmp     loc_4F0660

loc_4F05E5:
xor     eax, eax
mov     al, byte ptr [esp+ecx+84h+var_3C]
shl     eax, 3
mov     edx, [esp+84h+var_78]
add     edx, eax
lea     ebx, [esp+84h+var_6C]
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    [esp+84h+var_6C]
fstp    [esp+84h+var_6C]
fild    ds:dword_77EB20
fadd    [esp+84h+var_68]
fstp    [esp+84h+var_68]
fild    ds:dword_77EB24
fadd    [esp+84h+var_64]
fstp    [esp+84h+var_64]
xor     eax, eax
mov     al, byte ptr [esp+ecx+84h+var_3C]
add     eax, eax
add     eax, [esp+84h+var_7C]
mov     dl, [eax]
mov     [esp+84h+var_8], dl
mov     al, [eax+1]
mov     [esp+84h+var_4], al
fld     [esp+84h+var_64]
fcomp   ds:dword_77EBC0
fnstsw  ax
sahf
jnb     short loc_4F065E
mov     esi, 1
jmp     short loc_4F0660

loc_4F065E:
xor     esi, esi

loc_4F0660:
mov     eax, [esp+84h+var_2C]
add     eax, esi
mov     ebx, [esp+84h+var_24]
inc     ebx
mov     edx, [esp+84h+var_24]
shl     edx, 4
add     edx, [esp+84h+var_80]
test    eax, eax
jnz     short loc_4F06C5
mov     eax, [esp+84h+var_44]
mov     [edx+8], eax
fld     [esp+84h+var_4C]
fmul    ds:dword_77EBDC
fdiv    [esp+84h+var_44]
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [edx]
fld     [esp+84h+var_48]
fmul    ds:dword_77EBDC
fdiv    [esp+84h+var_44]
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [edx+4]
mov     al, [esp+84h+var_18]
mov     [edx+0Ch], al
mov     al, [esp+84h+var_C]

loc_4F06BD:
mov     [edx+0Dh], al
jmp     loc_4F088D

loc_4F06C5:
cmp     eax, 1
jnz     loc_4F0891
fld     [esp+84h+var_44]
fsub    [esp+84h+var_64]
fld     [esp+84h+var_44]
fsub    ds:dword_77EBC0
fdivrp  st(1), st
fstp    [esp+84h+var_28]
fld     [esp+84h+var_4C]
fsub    [esp+84h+var_6C]
fmul    [esp+84h+var_28]
fsubr   [esp+84h+var_4C]
fstp    [esp+84h+var_74]
fld     [esp+84h+var_48]
fsub    [esp+84h+var_68]
fmul    [esp+84h+var_28]
fsubr   [esp+84h+var_48]
fstp    [esp+84h+var_70]
xor     eax, eax
mov     al, [esp+84h+var_18]
mov     [esp+84h+var_20], eax
xor     eax, eax
mov     al, [esp+84h+var_8]
mov     edi, [esp+84h+var_20]
sub     edi, eax
mov     eax, edi
mov     [esp+84h+var_20], edi
fild    [esp+84h+var_20]
fmul    [esp+84h+var_28]
xor     eax, edi
mov     al, [esp+84h+var_18]
mov     [esp+84h+var_1C], eax
fild    word ptr [esp+84h+var_1C]
fsubrp  st(1), st
fstp    [esp+84h+var_34]
xor     eax, eax
mov     al, [esp+84h+var_C]
mov     [esp+84h+var_20], eax
xor     eax, eax
mov     al, [esp+84h+var_4]
mov     edi, [esp+84h+var_20]
sub     edi, eax
mov     eax, edi
mov     [esp+84h+var_20], edi
fild    [esp+84h+var_20]
fmul    [esp+84h+var_28]
xor     eax, edi
mov     al, [esp+84h+var_C]
mov     [esp+84h+var_1C], eax
fild    word ptr [esp+84h+var_1C]
fsubrp  st(1), st
fstp    [esp+84h+var_30]
cmp     [esp+84h+var_2C], 0
jz      short loc_4F07E3
mov     eax, ds:dword_77EBC0
mov     [edx+8], eax
fld     [esp+84h+var_74]
fmul    ds:dbl_50A598
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [edx]
fld     [esp+84h+var_70]
fmul    ds:dbl_50A598
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [edx+4]
fld     [esp+84h+var_34]
call    __CHP
fistp   [esp+84h+var_20]
mov     al, byte ptr [esp+84h+var_20]
mov     [edx+0Ch], al
fld     [esp+84h+var_30]
call    __CHP
fistp   [esp+84h+var_20]
mov     al, byte ptr [esp+84h+var_20]
jmp     loc_4F06BD

loc_4F07E3:
mov     eax, [esp+84h+var_44]
mov     [edx+8], eax
fld     [esp+84h+var_4C]
fmul    ds:dword_77EBDC
fdiv    [esp+84h+var_44]
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [edx]
fld     [esp+84h+var_48]
fmul    ds:dword_77EBDC
fdiv    [esp+84h+var_44]
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [edx+4]
mov     al, [esp+84h+var_18]
mov     [edx+0Ch], al
mov     al, [esp+84h+var_C]
mov     [edx+0Dh], al
mov     eax, ebx
shl     eax, 4
add     eax, [esp+84h+var_80]
mov     edx, ds:dword_77EBC0
mov     [eax+8], edx
fld     [esp+84h+var_74]
fmul    ds:dbl_50A598
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [eax]
fld     [esp+84h+var_70]
fmul    ds:dbl_50A598
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [eax+4]
fld     [esp+84h+var_34]
call    __CHP
fistp   [esp+84h+var_20]
mov     dl, byte ptr [esp+84h+var_20]
mov     [eax+0Ch], dl
fld     [esp+84h+var_30]
call    __CHP
fistp   [esp+84h+var_20]
mov     dl, byte ptr [esp+84h+var_20]
mov     [eax+0Dh], dl
inc     ebx

loc_4F088D:
mov     [esp+84h+var_24], ebx

loc_4F0891:
mov     eax, [esp+84h+var_6C]
mov     [esp+84h+var_4C], eax
mov     eax, [esp+84h+var_68]
mov     [esp+84h+var_48], eax
mov     eax, [esp+84h+var_64]
mov     [esp+84h+var_44], eax
mov     al, [esp+84h+var_8]
mov     [esp+84h+var_18], al
mov     al, [esp+84h+var_4]
mov     [esp+84h+var_C], al
mov     [esp+84h+var_2C], esi
inc     ecx
jmp     loc_4F05AF

loc_4F08C6:
cmp     [esp+84h+var_84], 0
jz      short loc_4F0914
mov     edx, [esp+84h+var_24]
cmp     edx, 3
jl      short loc_4F0914
mov     eax, edx
shl     eax, 4
mov     ecx, [esp+84h+var_80]
add     eax, ecx
fld     dword ptr [eax-10h]
mov     edx, ecx
fsub    dword ptr [ecx]
fld     dword ptr [edx+14h]
fsub    dword ptr [ecx+4]
fmulp   st(1), st
fstp    [esp+84h+var_74]
fld     dword ptr [eax-0Ch]
mov     eax, ecx
fsub    dword ptr [ecx+4]
fld     dword ptr [eax+10h]
fsub    dword ptr [ecx]
fmulp   st(1), st
fst     [esp+84h+var_70]
fsub    [esp+84h+var_74]
mov     eax, [esp+84h+var_84]
call    __CHP
fistp   dword ptr [eax]

loc_4F0914:
mov     eax, [esp+84h+var_24]
mov     esp, ebp
pop     ebp
pop     edi
pop     esi
retn    4
sub_4F04FB endp

; [00000007 BYTES: COLLAPSED FUNCTION abs_]



sub_4F0927 proc near

var_60= byte ptr -60h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 50h
mov     esi, edx
xor     edi, edi
mov     edx, offset unk_50A5A0
call    sub_4F93C1
test    eax, eax
jnz     short loc_4F0993
xor     ebx, ebx
jmp     short loc_4F094A

loc_4F0944:
inc     ebx
cmp     ebx, 0Ah
jge     short loc_4F09A5

loc_4F094A:
mov     al, bl
add     al, 43h ; 'C'
mov     ds:RootPathName, al
push    offset RootPathName ; lpRootPathName
call    cs:__imp_GetDriveTypeA
cmp     eax, 5
jnz     short loc_4F0944
push    esi
push    offset RootPathName
push    offset aSS      ; "%s%s"
lea     eax, [esp+6Ch+var_60]
push    eax
call    sprintf_
add     esp, 10h
mov     edx, offset unk_50A5A0
mov     eax, esp
call    sub_4F93C1
test    eax, eax
jz      short loc_4F0944
call    fclose_
jmp     short loc_4F09A0

loc_4F0993:
call    fclose_
xor     ah, ah
mov     ds:RootPathName, ah

loc_4F09A0:
mov     edi, 1

loc_4F09A5:
mov     eax, edi
add     esp, 50h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4F0927 endp




sub_4F09AF proc near
mov     eax, offset RootPathName
retn
sub_4F09AF endp




sub_4F09B5 proc near

var_58= byte ptr -58h

push    ecx
push    esi
sub     esp, 50h
mov     esi, eax
xor     ecx, ecx

loc_4F09BE:
cmp     ds:dword_551C40[ecx*4], 0
jz      short loc_4F09D0
cmp     ecx, 10h
jge     short loc_4F09D0
inc     ecx
jmp     short loc_4F09BE

loc_4F09D0:
cmp     ecx, 10h
jnz     short loc_4F09DC
mov     eax, 0FFFFFFFFh
jmp     short loc_4F0A28

loc_4F09DC:
mov     edx, offset unk_50A5A0
mov     eax, esi
call    sub_4F93C1
mov     ebx, ecx
shl     ebx, 2
test    eax, eax
jz      short loc_4F09F9

loc_4F09F1:
mov     ds:dword_551C40[ebx], eax
jmp     short loc_4F0A26

loc_4F09F9:
push    esi
push    offset RootPathName
push    offset aSS      ; "%s%s"
lea     eax, [esp+64h+var_58]
push    eax
call    sprintf_
add     esp, 10h
mov     edx, offset unk_50A5A0
mov     eax, esp
call    sub_4F93C1
test    eax, eax
jnz     short loc_4F09F1
mov     ecx, 0FFFFFFFFh

loc_4F0A26:
mov     eax, ecx

loc_4F0A28:
add     esp, 50h
pop     esi
pop     ecx
retn
sub_4F09B5 endp




sub_4F0A2E proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
xor     ecx, ecx

loc_4F0A35:
cmp     ds:dword_551C40[ecx*4], 0
jz      short loc_4F0A47
cmp     ecx, 10h
jge     short loc_4F0A47
inc     ecx
jmp     short loc_4F0A35

loc_4F0A47:
cmp     ecx, 10h
jnz     short loc_4F0A55
mov     eax, 0FFFFFFFFh
pop     edx
pop     ecx
pop     ebx
retn

loc_4F0A55:
mov     edx, offset aWb ; "wb"
mov     eax, ebx
call    sub_4F93C1
mov     ebx, eax
mov     eax, ecx
mov     ds:dword_551C40[ecx*4], ebx
pop     edx
pop     ecx
pop     ebx
retn
sub_4F0A2E endp




sub_4F0A70 proc near
push    ecx
mov     ecx, eax
mov     eax, edx
mov     edx, ecx
mov     ecx, ds:dword_551C40[edx*4]
mov     edx, 1
call    fread_
pop     ecx
retn
sub_4F0A70 endp




sub_4F0A8A proc near
push    ebx
push    ecx
push    esi
mov     esi, edx
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_551C40[edx]
mov     eax, [eax+10h]
call    sub_4FAF1A
mov     ecx, ds:dword_551C40[edx]
mov     ebx, eax
mov     edx, 1
mov     eax, esi
call    fread_
pop     esi
pop     ecx
pop     ebx
retn
sub_4F0A8A endp




sub_4F0ABA proc near
push    ecx
mov     ecx, eax
mov     eax, edx
mov     edx, ecx
mov     ecx, ds:dword_551C40[edx*4]
mov     edx, 1
call    fwrite_
pop     ecx
retn
sub_4F0ABA endp




sub_4F0AD4 proc near
mov     eax, ds:dword_551C40[eax*4]
mov     eax, [eax+10h]
jmp     sub_4FAF1A
sub_4F0AD4 endp




sub_4F0AE3 proc near
push    ebx
mov     eax, ds:dword_551C40[eax*4]
xor     ebx, ebx
call    sub_4FB1EB
pop     ebx
retn
sub_4F0AE3 endp




sub_4F0AF4 proc near
push    ecx
push    edx
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_551C40[edx]
call    fclose_
xor     ecx, ecx
mov     ds:dword_551C40[edx], ecx
pop     edx
pop     ecx
retn
sub_4F0AF4 endp

; [000000ED BYTES: COLLAPSED FUNCTION _nmalloc_]
dw 0EE0h
dd 4340D7B7h, 63B011CFh, 0C2AF2000h, 17A035CDh
dd 7DB35938h, 0DEA211CFh, 0B900AA00h, 0DB805633h
dd 0A7336C14h, 21A511CEh, 0BAF2000h, 0F3E060E5h
dd 2B43B3A6h, 0DEA211CFh, 0B900AA00h
db 33h, 56h
dw 509Ah
dd 39BD9C59h, 4A8C11D1h, 0D94FC000h, 0DB81C530h
dd 0A7336C14h, 21A511CEh, 0BAF2000h, 588560E5h
dd 6EEC5780h, 419411CFh, 0C10323A8h, 4E00270Eh
dd 69B2DA04h, 0D5A111D0h, 0B800AA00h, 8630BBDFh
dd 0AD350B2Bh, 0A68E11D0h, 97976000h, 0DB845BEAh
dd 0A7336C14h, 21A511CEh, 0BAF2000h, 0DB8560E5h
dd 0A7336C14h, 21A511CEh, 0BAF2000h, 0EE060E5h
dd 0D7E4B9Fh, 69B11D0h, 3C9A000h, 1C3EB8A3h
dd 0B46B69C1h, 7AAD11D1h, 0C24FC000h, 804E9Bh
dd 24213BBAh, 1AA311CFh, 0B900AA00h, 1EC15633h
dd 662A6AAEh, 9D8811D0h, 0BB00AA00h
db 0B7h, 6Ah
word_4F0CEE dw 3240h
dd 0E72BBB22h, 0B4A911D0h, 0C000AA00h, 6B203E99h
dd 259FF208h, 1AA311CFh, 0B900AA00h, 5C605633h
dd 2673A466h, 1AA311CFh, 0B900AA00h
db 33h, 56h
dw 3DE0h
dd 46AA84E6h, 6F8111CFh, 20C00000h, 49A16E15h
dd 0D6F38819h, 0AB8911D0h, 5C9A000h, 66432941h
dd 13E95093h, 0AA8911D1h, 5C9A000h
db 41h, 29h
dw 0DF22h
dd 0BACC8767h, 698911D1h, 6C9A000h, 8800A829h
dd 957D6410h, 0AB8911D0h, 5C9A000h, 15012941h
dd 8CF89328h, 0AB8911D0h, 5C9A000h, 3B602941h
dd 33D7B0ABh, 81A911D1h, 0D74FC000h, 0D9E074B1h
dd 25A02CDCh, 1AA311CFh, 0B900AA00h
db 33h, 56h
dw 1502h
dd 8CF89328h, 0AB8911D0h, 5C9A000h, 0C1422941h
dd 33AD4417h, 6F8111CFh, 20C00000h, 0C1446E15h
dd 33AD4417h, 6F8111CFh, 20C00000h, 15036E15h
dd 8CF89328h, 0AB8911D0h, 5C9A000h, 46F42941h
dd 0D3C5CA9Ch, 5AB711D1h, 52086000h, 0C14512B3h
dd 33AD4417h, 6F8111CFh, 20C00000h, 0C1466E15h
dd 33AD4417h, 6F8111CFh, 20C00000h, 15006E15h
dd 8CF89328h, 0AB8911D0h, 5C9A000h, 3B612941h
dd 33D7B0ABh, 81A911D1h, 0D74FC000h, 355574B1h
dd 4A837A50h, 0DBA511D1h, 3C9A000h, 0D946F867h
dd 62E847D4h, 0BC9311CFh, 54534544h, 7800000h
dd 89CDB021h, 8AF11D0h, 25C9A000h, 0FA8316CDh
dd 4981279Ah, 21A511CEh, 0BAF2000h, 0FA8560E5h
dd 4981279Ah, 21A511CEh, 0BAF2000h, 0FA8460E5h
dd 4981279Ah, 21A511CEh, 0BAF2000h, 0FA8660E5h
dd 4981279Ah, 21A511CEh, 0BAF2000h, 78160E5h
dd 89CDB021h, 8AF11D0h, 25C9A000h, 78216CDh
dd 89CDB021h, 8AF11D0h, 25C9A000h
db 0CDh, 16h
word_4F0EBE dw 783h
dd 89CDB021h, 8AF11D0h, 25C9A000h, 0AC3016CDh
dd 515C31EFh, 0AAA911D0h, 6100AA00h
db 0BEh, 93h



sub_4F0EDE proc near

arg_0= dword ptr  4
arg_C= dword ptr  10h
arg_14= dword ptr  18h

push    ebx
push    esi
mov     esi, [esp+8+arg_0]
mov     ecx, [esp+8+arg_C]
mov     ebx, 10h
mov     edx, offset word_4F0D4E
mov     eax, esi
call    memcmp_
test    eax, eax
jz      short loc_4F0F39
cmp     dword ptr [ecx], 0
jz      short loc_4F0F39
mov     ebx, 10h
mov     edx, offset word_4F0D1E
mov     eax, esi
call    memcmp_
test    eax, eax
jnz     short loc_4F0F39
mov     ebx, 0FCh
mov     edx, ecx
mov     eax, offset unk_887780
call    memcpy_
mov     eax, [esp+8+arg_14]
mov     dword ptr [eax], 1
xor     eax, eax
pop     esi
pop     ebx
retn    18h

loc_4F0F39:
mov     eax, 1
pop     esi
pop     ebx
retn    18h
sub_4F0EDE endp




; BOOL __stdcall Callback(GUID *, LPSTR, LPSTR, LPVOID)
Callback proc near

var_19C= dword ptr -19Ch
var_198= byte ptr -198h
lpDD= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
lpGUID= dword ptr  4
arg_4= dword ptr  8

push    ebx
push    esi
push    edi
push    ebp
sub     esp, 18Ch
mov     edi, [esp+19Ch+lpGUID]
xor     edx, edx
mov     [esp+19Ch+var_14], edx
xor     esi, esi
push    edx             ; pUnkOuter
lea     eax, [esp+1A0h+lpDD]
push    eax             ; lplpDD
push    edi             ; lpGUID
call    DirectDrawCreate
test    eax, eax
jnz     loc_4F11D8
mov     ebx, 17Ch
xor     edx, edx
mov     eax, esp
call    memset_
mov     [esp+19Ch+var_19C], 17Ch
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
push    esi
lea     edx, [esp+1A0h+var_19C]
push    edx
mov     ebx, [esp+1A4h+lpDD]
push    ebx
call    dword ptr [eax+2Ch]
test    [esp+19Ch+var_198], 1
jz      loc_4F11C4
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
lea     edx, [esp+19Ch+var_1C]
push    edx
push    offset word_4F0C3E
mov     ebp, [esp+1A4h+lpDD]
push    ebp
call    dword ptr [eax]
test    eax, eax
jz      short loc_4F0FED
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
mov     edi, [esp+19Ch+lpDD]
push    edi

loc_4F0FE5:
call    dword ptr [eax+8]
jmp     loc_4F11D8

loc_4F0FED:
mov     eax, [esp+19Ch+var_1C]
mov     eax, [eax]
lea     edx, [esp+19Ch+var_18]
push    edx
push    offset word_4F0CEE
mov     edx, [esp+1A4h+var_1C]
push    edx
call    dword ptr [eax]
test    eax, eax
jz      short loc_4F1038
mov     eax, [esp+19Ch+var_1C]
mov     eax, [eax]
mov     ebx, [esp+19Ch+var_1C]
push    ebx
call    dword ptr [eax+8]
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
mov     esi, [esp+19Ch+lpDD]
push    esi
jmp     short loc_4F0FE5

loc_4F1038:
mov     eax, [esp+19Ch+var_18]
mov     eax, [eax]
lea     edx, [esp+19Ch+var_14]
push    edx
push    offset sub_4F0EDE
mov     ecx, [esp+1A4h+var_18]
push    ecx
call    dword ptr [eax+0Ch]
cmp     [esp+19Ch+var_14], 0
jz      short loc_4F1075
cmp     ds:dword_887834, 0
jz      short loc_4F1075
cmp     ds:dword_887820, 0
jnz     short loc_4F10B3

loc_4F1075:
mov     eax, [esp+19Ch+var_18]
mov     eax, [eax]
mov     ebp, [esp+19Ch+var_18]
push    ebp
call    dword ptr [eax+8]
mov     eax, [esp+19Ch+var_1C]
mov     eax, [eax]
mov     edx, [esp+19Ch+var_1C]
push    edx
call    dword ptr [eax+8]
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
mov     ecx, [esp+19Ch+lpDD]
push    ecx
jmp     loc_4F0FE5

loc_4F10B3:
test    edi, edi
jnz     short loc_4F10E6
mov     eax, ds:dword_887888
call    sub_4F18B0
test    ds:dword_88781C, eax
jz      short loc_4F10E6
cmp     ds:dword_88788C, 280h
jle     short loc_4F10E6
cmp     ds:dword_887884, 1E0h
jle     short loc_4F10E6
mov     esi, 1

loc_4F10E6:
mov     ebp, ds:dword_551D1C
inc     ebp
mov     ds:dword_551D1C, ebp
mov     eax, ebp
shl     eax, 2
add     eax, ebp
shl     eax, 4
sub     eax, ebp
shl     eax, 2
test    edi, edi
jz      short loc_4F1137
add     eax, offset dword_786ED4
add     eax, 8
mov     ebx, 10h
mov     edx, edi
call    memcpy_
mov     edx, ds:dword_551D1C
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
xor     ecx, ecx
mov     ds:dword_786ED4[eax*4], ecx
jmp     short loc_4F1141

loc_4F1137:
mov     ds:dword_786ED4[eax], 1

loc_4F1141:
mov     edx, ds:dword_551D1C
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
mov     ds:dword_786ED8[eax], esi
add     eax, offset dword_786ED4
add     eax, 18h
mov     edx, [esp+19Ch+arg_4]
call    strcpy_
mov     edx, ds:dword_551D1C
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
add     eax, offset dword_786ED4
add     eax, 40h ; '@'
mov     ebx, 0FCh
mov     edx, offset unk_887780
call    memcpy_
mov     eax, [esp+19Ch+var_18]
mov     eax, [eax]
mov     ebx, [esp+19Ch+var_18]
push    ebx
call    dword ptr [eax+8]
mov     eax, [esp+19Ch+var_1C]
mov     eax, [eax]
mov     esi, [esp+19Ch+var_1C]
push    esi
call    dword ptr [eax+8]

loc_4F11C4:
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
mov     edi, [esp+19Ch+lpDD]
push    edi
call    dword ptr [eax+8]

loc_4F11D8:
mov     eax, 1
add     esp, 18Ch
pop     ebp
pop     edi
pop     esi
pop     ebx
retn    10h
Callback endp




sub_4F11EA proc near

arg_0= dword ptr  4

push    esi
push    edi
mov     edx, [esp+8+arg_0]
xor     eax, eax
test    byte ptr [edx+4], 40h
jz      loc_4F12B9
test    byte ptr ds:dword_88787C+1, 1
jz      loc_4F126F
cmp     dword ptr [edx+0Ch], 10h
jnz     loc_4F12B9
test    byte ptr [edx+4], 1
jz      short loc_4F1244
mov     ecx, [edx+1Ch]
cmp     ecx, 8000h
jnz     short loc_4F122E
mov     eax, 5
jmp     loc_4F12B4

loc_4F122E:
cmp     ecx, 0F000h
jnz     loc_4F12B4
mov     eax, 4
jmp     loc_4F12B4

loc_4F1244:
mov     esi, [edx+10h]
cmp     esi, 1Fh
jnz     short loc_4F1256
mov     eax, 1
jmp     loc_4F12B4

loc_4F1256:
cmp     esi, 0F800h
jnz     short loc_4F1265
mov     eax, 2
jmp     short loc_4F12B4

loc_4F1265:
cmp     esi, 7C00h
jnz     short loc_4F12B4
jmp     short loc_4F1299

loc_4F126F:
mov     ecx, [edx+0Ch]
cmp     ecx, ds:dword_887888
jnz     short loc_4F12B9
cmp     dword ptr [edx+0Ch], 10h
jb      short loc_4F12B9
test    byte ptr [edx+4], 1
jz      short loc_4F12AF
mov     edi, [edx+1Ch]
cmp     edi, 8000h
jz      short loc_4F1299
cmp     edi, 0FF000000h
jnz     short loc_4F12A0

loc_4F1299:
mov     eax, 3
jmp     short loc_4F12B4

loc_4F12A0:
cmp     edi, 0F000h
jnz     short loc_4F12B4
mov     eax, 2
jmp     short loc_4F12B4

loc_4F12AF:
mov     eax, 1

loc_4F12B4:
call    sub_4F13D0

loc_4F12B9:
mov     eax, 1
pop     edi
pop     esi
retn    8
sub_4F11EA endp




sub_4F12C3 proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push    ebx
mov     ecx, [esp+4+arg_0]
mov     eax, [esp+4+arg_4]
test    ecx, ecx
jz      short loc_4F12D4
test    eax, eax
jnz     short loc_4F12DA

loc_4F12D4:
xor     eax, eax
pop     ebx
retn    8

loc_4F12DA:
cmp     dword ptr [ecx+4], 400h
jnz     short loc_4F12F5
mov     ebx, 20h ; ' '
mov     edx, ecx
call    memcpy_
cmp     dword ptr [ecx+0Ch], 10h
jz      short loc_4F12D4

loc_4F12F5:
mov     eax, 1
pop     ebx
retn    8
sub_4F12C3 endp




sub_4F12FE proc near
push    ebx
push    ecx
mov     ecx, edx
mov     ebx, 1
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
mov     edx, ds:dword_786ED4[eax]
test    edx, edx
jz      short loc_4F1330
push    0               ; pUnkOuter
push    ecx             ; lplpDD
push    0               ; lpGUID
call    DirectDrawCreate
test    eax, eax
jz      short loc_4F1346
jmp     short loc_4F1344

loc_4F1330:             ; pUnkOuter
push    edx
push    ecx             ; lplpDD
add     eax, offset dword_786ED4
add     eax, 8
push    eax             ; lpGUID
call    DirectDrawCreate
test    eax, eax
jz      short loc_4F1346

loc_4F1344:
xor     ebx, ebx

loc_4F1346:
mov     eax, ebx
pop     ecx
pop     ebx
retn
sub_4F12FE endp




sub_4F134B proc near

var_84= byte ptr -84h
var_80= dword ptr -80h
var_7C= dword ptr -7Ch
var_78= dword ptr -78h
var_3C= byte ptr -3Ch
var_1C= dword ptr -1Ch

push    ecx
push    edi
sub     esp, 7Ch
mov     ecx, eax
mov     eax, esp
call    sub_4F188E
mov     [esp+84h+var_80], 1007h
mov     [esp+84h+var_1C], 24000h
mov     [esp+84h+var_78], ecx
mov     [esp+84h+var_7C], edx
mov     eax, ds:dword_551D0C
mov     ecx, [eax]
lea     edx, [esp+84h+var_3C]
push    edx
push    offset sub_4F12C3
push    offset word_4F0D1E
push    eax
call    dword ptr [ecx+28h]
mov     eax, ds:dword_551CF0
mov     ecx, [eax]
push    0
push    offset dword_551CFC
lea     edx, [esp+8Ch+var_84]
push    edx
push    eax
call    dword ptr [ecx+18h]
test    eax, eax
jz      short loc_4F13AA

loc_4F13A6:
xor     eax, eax
jmp     short loc_4F13CA

loc_4F13AA:
mov     eax, ds:dword_551CF8
mov     ecx, [eax]
mov     edi, ds:dword_551CFC
push    edi
push    eax
call    dword ptr [ecx+0Ch]
test    eax, eax
jnz     short loc_4F13A6
mov     ds:dword_887774, eax
mov     eax, 1

loc_4F13CA:
add     esp, 7Ch
pop     edi
pop     ecx
retn
sub_4F134B endp




sub_4F13D0 proc near
push    ebx
push    ecx
mov     ecx, edx
xor     edx, edx
mov     dl, ds:byte_782BF4
cmp     eax, edx
jle     loc_4F1496
mov     ds:byte_782BF4, al
mov     al, [ecx+0Ch]
mov     ds:byte_782BF6, al
cmp     al, 10h
jnz     short loc_4F13FE
mov     ds:byte_782BF7, 2
jmp     short loc_4F1405

loc_4F13FE:
mov     ds:byte_782BF7, 4

loc_4F1405:
xor     edx, edx
mov     eax, [ecx+10h]
mov     ds:dword_782C04, eax

loc_4F140F:
test    eax, offset unk_800000
jnz     short loc_4F141B
add     eax, eax
inc     edx
jmp     short loc_4F140F

loc_4F141B:
mov     ds:dword_782BF8, edx
xor     edx, edx
mov     eax, [ecx+14h]
mov     ds:dword_782C08, eax

loc_4F142B:
test    eax, offset unk_800000
jnz     short loc_4F1437
add     eax, eax
inc     edx
jmp     short loc_4F142B

loc_4F1437:
mov     ds:dword_782BFC, edx
xor     edx, edx
mov     eax, [ecx+18h]
mov     ds:dword_782C0C, eax

loc_4F1447:
test    eax, offset unk_800000
jnz     short loc_4F1453
add     eax, eax
inc     edx
jmp     short loc_4F1447

loc_4F1453:
mov     ds:dword_782C00, edx
mov     eax, [ecx+1Ch]
mov     ds:dword_782C10, eax
mov     edx, ds:dword_782C04
cmp     edx, 1Fh
jz      short loc_4F1474
cmp     edx, 0FFh
jnz     short loc_4F147D

loc_4F1474:
mov     ds:byte_782BF5, 1
jmp     short loc_4F1485

loc_4F147D:
xor     bl, bl
mov     ds:byte_782BF5, bl

loc_4F1485:
mov     ebx, 20h ; ' '
mov     edx, ecx
mov     eax, offset unk_782C14
call    memcpy_

loc_4F1496:
pop     ecx
pop     ebx
retn
sub_4F13D0 endp




sub_4F1499 proc near

var_98= byte ptr -98h
var_74= dword ptr -74h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    edi
push    ebp
sub     esp, 84h
mov     [esp+98h+var_18], 3F800000h
mov     [esp+98h+var_1C], 40A00000h
test    ds:byte_8877EE, 10h
jz      loc_4F16B3
test    ds:byte_8877ED, 1
jz      loc_4F16B3
xor     ebp, ebp
mov     ds:flt_8876C4, ebp
mov     ds:flt_8876C8, ebp
mov     edx, 3F333333h
mov     ds:dword_8876CC, edx
mov     ecx, 3E124925h
mov     ds:flt_8876D0, ecx
mov     ebx, 0FFFFFFFFh
mov     ds:dword_8876D4, ebx
mov     ds:dword_8876D8, ebp
mov     edi, 41800000h
mov     ds:flt_8876E4, edi
mov     ds:flt_8876E8, ebp
mov     eax, edx
mov     ds:dword_8876EC, edx
mov     edx, ecx
mov     ds:flt_8876F0, ecx
mov     ecx, ebx
mov     ds:dword_8876F4, ebx
mov     ds:dword_8876F8, ebp
mov     ds:flt_887704, ebp
mov     ds:flt_887708, edi
mov     ebp, eax
mov     ds:dword_88770C, ebp
mov     eax, edx
mov     ds:flt_887710, eax
mov     edx, ebx
mov     ds:dword_887714, ebx
xor     ecx, ebx
mov     ds:dword_887718, ecx
mov     ds:flt_887724, edi
mov     ds:flt_887728, edi
mov     ds:dword_88772C, ebp
mov     ds:flt_887730, eax
mov     ds:dword_887734, ebx
xor     edx, ebx
mov     ds:dword_887738, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    eax
call    dword ptr [edx+24h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    0
push    eax
call    dword ptr [edx+98h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Ch
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    22h ; '"'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    3
push    23h ; '#'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ecx, [esp+98h+var_18]
push    ecx
push    24h ; '$'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ebx, [esp+98h+var_1C]
push    ebx
push    25h ; '%'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    8
push    17h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    4
push    offset flt_8876C4
push    1C4h
push    5
push    eax
call    dword ptr [edx+70h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Ch
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    4
push    17h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    eax
call    dword ptr [edx+28h]
mov     eax, esp
call    sub_4F188E
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+0A0h+var_98]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
test    eax, eax
jnz     loc_4F16E7
mov     edx, ds:dword_782C10
not     edx
mov     eax, [esp+98h+var_74]
test    [eax], edx
jnz     short loc_4F1697
xor     ebp, ebp
mov     ds:dword_551D3C, ebp
jmp     short loc_4F16A1

loc_4F1697:
mov     ds:dword_551D3C, 1

loc_4F16A1:
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]
jmp     short loc_4F16E7

loc_4F16B3:
test    ds:byte_8877ED, 1
jz      short loc_4F16C8
mov     ds:dword_551D3C, 1
jmp     short loc_4F16E7

loc_4F16C8:
test    ds:byte_8877EC, 80h
jz      short loc_4F16DD
mov     ds:dword_551D3C, 2
jmp     short loc_4F16E7

loc_4F16DD:
mov     ds:dword_551D3C, 3

loc_4F16E7:
add     esp, 84h
pop     ebp
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F1499 endp




sub_4F16F3 proc near

var_1C= qword ptr -1Ch
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 0Ch
test    eax, eax
jnz     loc_4F17C2
cmp     ds:dword_551D38, 0
jz      loc_4F17C2
cmp     ds:dword_551D40, 0
jnz     short loc_4F1731
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Ch
push    eax
call    dword ptr [edx+58h]
mov     ds:dword_551D40, 1

loc_4F1731:
cmp     ds:dword_551D3C, 2
jnz     loc_4F3BD5
xor     edx, edx
jmp     short loc_4F1780

loc_4F1742:
fld     [esp+1Ch+var_14]
fcomp   ds:flt_50A870
fnstsw  ax
sahf
jbe     short loc_4F1759
mov     [esp+1Ch+var_14], 437F0000h

loc_4F1759:
fld     [esp+1Ch+var_14]
call    __CHP
fistp   [esp+1Ch+var_1C]
mov     ecx, dword ptr [esp+1Ch+var_1C]
mov     eax, edx
shl     eax, 5
shl     ecx, 18h
or      ds:dword_8876D8[eax], ecx
inc     edx
cmp     edx, 4
jge     loc_4F3BD5

loc_4F1780:
mov     eax, edx
shl     eax, 5
fld     ds:dword_8876CC[eax]
fmul    ds:flt_50A86C
fsubr   ds:flt_551D48
fld     ds:flt_551D48
fsub    ds:flt_551D44
fdivp   st(1), st
fmul    ds:flt_50A870
fstp    [esp+1Ch+var_14]
fldz
fcomp   [esp+1Ch+var_14]
fnstsw  ax
sahf
jbe     short loc_4F1742
xor     ebx, ebx
mov     [esp+1Ch+var_14], ebx
jmp     short loc_4F1759

loc_4F17C2:
test    eax, eax
jnz     short loc_4F17D3
cmp     ds:dword_551D38, 0
jnz     loc_4F3BD5

loc_4F17D3:
cmp     ds:dword_551D40, 1
jnz     loc_4F3BD5
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Ch
push    eax
call    dword ptr [edx+58h]
xor     esi, esi
mov     ds:dword_551D40, esi
jmp     loc_4F3BD5
sub_4F16F3 endp




sub_4F17FC proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     ecx, edx
and     eax, 3Fh
shl     eax, 4
mov     edx, esi
sar     edx, 6
and     edx, 1FFh
mov     edi, ecx
and     edi, 0Fh
shl     edi, 7
mov     esi, ebx
and     esi, 0FFh
sar     esi, 1
add     edi, esi
and     ecx, 10h
shl     ecx, 4
mov     esi, ebx
sar     esi, 8
add     esi, ecx
and     ebx, 1
xor     bl, 1
mov     ecx, ebx
shl     ecx, 2
mov     ebx, esi
shl     ebx, 0Bh
mov     bl, ds:byte_7876C4[edi+ebx]
and     ebx, 0FFh
sar     ebx, cl
mov     ecx, ebx
and     ecx, 0Fh
cmp     ds:byte_782BF7, 2
jnz     short loc_4F187B
call    sub_4F1D5C
mov     eax, ds:dword_782C38[eax*8]
mov     ax, [eax+ecx*2]
and     eax, 0FFFFh
pop     edi
pop     esi
pop     ecx
retn

loc_4F187B:
call    sub_4F1D5C
mov     eax, ds:dword_782C38[eax*8]
mov     eax, [eax+ecx*4]
pop     edi
pop     esi
pop     ecx
retn
sub_4F17FC endp




sub_4F188E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, 7Ch ; '|'
xor     edx, edx
call    memset_
mov     dword ptr [ecx], 7Ch ; '|'
mov     dword ptr [ecx+48h], 20h ; ' '
pop     edx
pop     ecx
pop     ebx
retn
sub_4F188E endp




sub_4F18B0 proc near
cmp     eax, 8
jb      short loc_4F18CE
jbe     short loc_4F18F4
cmp     eax, 18h
jb      short loc_4F18C6
jbe     short loc_4F1900
cmp     eax, 20h ; ' '
jz      short loc_4F1906
xor     eax, eax
retn

loc_4F18C6:
cmp     eax, 10h
jz      short loc_4F18FA
xor     eax, eax
retn

loc_4F18CE:
cmp     eax, 2
jb      short loc_4F18DD
jbe     short loc_4F18E8
cmp     eax, 4
jz      short loc_4F18EE
xor     eax, eax
retn

loc_4F18DD:
cmp     eax, 1
jnz     short loc_4F190C
mov     eax, 4000h
retn

loc_4F18E8:
mov     eax, 2000h
retn

loc_4F18EE:
mov     eax, 1000h
retn

loc_4F18F4:
mov     eax, 800h
retn

loc_4F18FA:
mov     eax, 400h
retn

loc_4F1900:
mov     eax, 200h
retn

loc_4F1906:
mov     eax, 100h
retn

loc_4F190C:
xor     eax, eax
retn
sub_4F18B0 endp




sub_4F190F proc near

var_70= dword ptr -70h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
sub     esp, 64h
mov     ecx, eax
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, esp
call    memset_
mov     [esp+70h+var_70], 64h ; 'd'
xor     ebx, ebx
mov     [esp+70h+var_20], ebx
mov     eax, [ecx]
mov     edx, esp
push    edx
push    1000400h
push    ebx
push    ebx
push    ebx
push    ecx
call    dword ptr [eax+14h]
add     esp, 64h
pop     edx
pop     ecx
pop     ebx
retn
sub_4F190F endp

jpt_4F19EF dd offset loc_4F19F5 ; jump table for switch statement
dd offset loc_4F1A03
dd offset loc_4F1A03
dd offset loc_4F19FC



sub_4F195A proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     edi, edx
mov     edx, ebx
mov     [esp+18h+var_14], ecx
xor     ebx, ebx
xor     ebp, ebp
mov     [esp+18h+var_10], ebx
mov     [esp+18h+var_18], ebx
test    byte ptr [esp+18h+var_14], 4
jz      short loc_4F19D2
lea     ecx, [eax+eax]
mov     eax, edi
add     eax, eax
add     edx, edx
cmp     ecx, 100h
jb      short loc_4F199B
lea     ebp, [ecx-100h]
mov     ecx, 0FFh
mov     ebx, 1

loc_4F199B:
cmp     eax, 100h
jb      short loc_4F19B5
sub     eax, 100h
mov     [esp+18h+var_10], eax
mov     eax, 0FFh
mov     ebx, 1

loc_4F19B5:
cmp     edx, 100h
jb      short loc_4F19D6
sub     edx, 100h
mov     [esp+18h+var_18], edx
mov     edx, 0FFh
mov     ebx, 1
jmp     short loc_4F19D6

loc_4F19D2:
mov     ecx, eax
mov     eax, edi

loc_4F19D6:
test    byte ptr [esp+18h+var_14], 2
jz      short loc_4F1A03 ; jumptable 004F19EF cases 1,2
mov     edi, [esp+18h+arg_0]
shr     edi, 5
and     edi, 3
cmp     edi, 3          ; switch 4 cases
ja      short def_4F19EF ; jumptable 004F19EF default case
shl     edi, 2
jmp     jpt_4F19EF[edi] ; switch jump

loc_4F19F5:             ; jumptable 004F19EF case 0
mov     esi, 80h
jmp     short def_4F19EF ; jumptable 004F19EF default case

loc_4F19FC:             ; jumptable 004F19EF case 3
mov     esi, 40h ; '@'
jmp     short def_4F19EF ; jumptable 004F19EF default case

loc_4F1A03:             ; jumptable 004F19EF cases 1,2
mov     esi, 0FFh

def_4F19EF:             ; jumptable 004F19EF default case
shl     esi, 18h
shl     ecx, 10h
or      ecx, esi
shl     eax, 8
or      ecx, eax
or      ecx, edx
mov     eax, [esp+18h+arg_4]
mov     [eax], ecx
test    ebx, ebx
jz      short loc_4F1A3A
shl     ebp, 10h
mov     eax, [esp+18h+var_10]
shl     eax, 8
or      eax, ebp
mov     edx, [esp+18h+var_18]
or      edx, eax
mov     eax, [esp+18h+arg_8]
mov     [eax], edx
jmp     short loc_4F1A40

loc_4F1A3A:
mov     eax, [esp+18h+arg_8]
mov     [eax], ebx

loc_4F1A40:
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
retn    0Ch
sub_4F195A endp

align 2
jpt_4F1A74 dd offset loc_4F1A7B ; jump table for switch statement
dd offset loc_4F1AA4
dd offset loc_4F1AD3
dd offset loc_4F1AFC



sub_4F1A5A proc near
push    ecx
test    al, 2
jz      loc_4F1B16
mov     eax, edx
shr     eax, 5
and     eax, 3
cmp     eax, 3          ; switch 4 cases
ja      def_4F1A74      ; jumptable 004F1A74 default case
jmp     jpt_4F1A74[eax*4] ; switch jump

loc_4F1A7B:             ; jumptable 004F1A74 case 0
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    5
push    13h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    6
jmp     short loc_4F1ACB

loc_4F1AA4:             ; jumptable 004F1A74 case 1
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2

loc_4F1ABC:
push    13h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2

loc_4F1ACB:
push    14h
push    eax
call    dword ptr [edx+58h]
pop     ecx
retn

loc_4F1AD3:             ; jumptable 004F1A74 case 2
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    13h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    4
jmp     short loc_4F1ACB

loc_4F1AFC:             ; jumptable 004F1A74 case 3
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    5
jmp     short loc_4F1ABC

loc_4F1B16:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    5
push    13h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    6
push    14h
push    eax
call    dword ptr [edx+58h]

def_4F1A74:             ; jumptable 004F1A74 default case
pop     ecx
retn
sub_4F1A5A endp




sub_4F1B45 proc near

var_75= byte ptr -75h
var_74= byte ptr -74h
var_70= dword ptr -70h
var_6C= dword ptr -6Ch
var_68= dword ptr -68h
var_64= dword ptr -64h
var_60= dword ptr -60h
var_38= dword ptr -38h
var_18= dword ptr -18h

; FUNCTION CHUNK AT 004F3509 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 64h
xor     ebx, ebx
cmp     ds:byte_782BF4, 0
jz      short loc_4F1B76
mov     ebx, 40h ; '@'
mov     edx, offset byte_782BF4
mov     eax, esp
call    memcpy_
xor     dl, dl
mov     ds:byte_782BF4, dl
mov     ebx, 1

loc_4F1B76:
test    byte ptr ds:dword_88787C, 1
jz      short loc_4F1BAC
mov     [esp+78h+var_38], 20h ; ' '
mov     eax, ds:dword_551CF4
mov     edx, [eax]
lea     ecx, [esp+78h+var_38]
push    ecx
push    eax
call    dword ptr [edx+54h]
lea     edx, [esp+78h+var_38]
mov     eax, 1
call    sub_4F13D0
call    sub_4FBC14
jmp     short loc_4F1BCE

loc_4F1BAC:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    offset sub_4F11EA
push    eax
call    dword ptr [edx+20h]
cmp     ds:byte_782BF4, 0
jnz     short loc_4F1BCE
xor     eax, eax
jmp     loc_4F1D54

loc_4F1BCE:
test    ebx, ebx
jz      loc_4F1D4F
xor     ecx, ecx
mov     [esp+78h+var_18], ecx
jmp     loc_4F1CAE

loc_4F1BE1:
lea     eax, [edi+ebx]
mov     eax, [eax]
jmp     short loc_4F1C07

loc_4F1BE8:
cmp     [esp+78h+var_75], 2
jnz     short loc_4F1BFE
mov     eax, ds:dword_782C38[eax]
mov     ax, [ecx+eax]
jmp     loc_4F1D45

loc_4F1BFE:
mov     eax, ds:dword_782C38[eax]
mov     eax, [ebx+eax]

loc_4F1C07:
mov     ebx, [esp+78h+var_68]
and     ebx, eax
mov     cl, [esp+78h+var_74]
shl     ebx, cl
mov     esi, [esp+78h+var_64]
and     esi, eax
mov     cl, byte ptr [esp+78h+var_70]
shl     esi, cl
and     eax, [esp+78h+var_60]
mov     cl, byte ptr [esp+78h+var_6C]
shl     eax, cl
mov     cl, byte ptr ds:dword_782BF8
shr     ebx, cl
and     ebx, ds:dword_782C04
mov     cl, byte ptr ds:dword_782BFC
shr     esi, cl
and     esi, ds:dword_782C08
mov     cl, byte ptr ds:dword_782C00
shr     eax, cl
and     eax, ds:dword_782C0C
or      ebx, esi
or      eax, ebx
jz      short loc_4F1C5F
or      eax, ds:dword_782C10

loc_4F1C5F:
mov     ecx, [esp+78h+var_18]
shl     ecx, 3
cmp     ds:byte_782BF7, 2
jnz     short loc_4F1C7D
mov     ebx, edx
mov     ecx, ds:dword_782C38[ecx]
mov     [ecx+ebx*2], ax
jmp     short loc_4F1C88

loc_4F1C7D:
mov     ebx, edx
mov     ecx, ds:dword_782C38[ecx]
mov     [ecx+ebx*4], eax

loc_4F1C88:
inc     edx
jmp     loc_4F1D0C

loc_4F1C8E:
test    edi, edi
jz      short loc_4F1C99
mov     eax, edi
call    _nfree_

loc_4F1C99:
mov     esi, [esp+78h+var_18]
inc     esi
mov     [esp+78h+var_18], esi
cmp     esi, 254h
jge     loc_4F1D4F

loc_4F1CAE:
mov     edx, [esp+78h+var_18]
shl     edx, 3
cmp     ds:byte_782C34[edx], 0
jz      short loc_4F1C99
xor     edi, edi
xor     eax, eax
mov     ax, ds:word_782C36[edx]
xor     ecx, ecx
mov     cl, ds:byte_782C35[edx]
imul    ecx, eax
xor     ebx, ebx
mov     bl, ds:byte_782BF7
imul    eax, ebx
cmp     ecx, eax
jz      short loc_4F1D0A
mov     edi, ds:dword_782C38[edx]
mov     ds:byte_782C35[edx], bl
xor     ecx, ecx
mov     cx, ds:word_782C36[edx]
xor     eax, eax
mov     al, bl
imul    eax, ecx
call    _nmalloc_
mov     ds:dword_782C38[edx], eax

loc_4F1D0A:
xor     edx, edx

loc_4F1D0C:
mov     eax, [esp+78h+var_18]
shl     eax, 3
xor     ecx, ecx
mov     cx, ds:word_782C36[eax]
cmp     edx, ecx
jge     loc_4F1C8E
lea     ecx, [edx+edx]
mov     ebx, edx
shl     ebx, 2
test    edi, edi
jz      loc_4F1BE8
cmp     [esp+78h+var_75], 2
jnz     loc_4F1BE1
lea     eax, [edi+ecx]
mov     ax, [eax]

loc_4F1D45:
and     eax, 0FFFFh
jmp     loc_4F1C07

loc_4F1D4F:
mov     eax, 1

loc_4F1D54:
add     esp, 64h
jmp     loc_4F3509
sub_4F1B45 endp




sub_4F1D5C proc near
push    ecx
xor     ecx, ecx
test    eax, eax
jl      short loc_4F1DA5
cmp     eax, 100h
jge     short loc_4F1DA5
cmp     edx, 0F0h
jl      short loc_4F1D8D
cmp     edx, 100h
jge     short loc_4F1D8D
shl     edx, 4
sar     eax, 4
sub     edx, 0F00h
lea     ecx, [edx+eax]
mov     eax, ecx
pop     ecx
retn

loc_4F1D8D:
shl     edx, 4
sar     eax, 4
sub     edx, 1F00h
add     eax, edx
lea     ecx, [eax+100h]
mov     eax, ecx
pop     ecx
retn

loc_4F1DA5:
cmp     eax, 100h
jl      short loc_4F1DE0
cmp     eax, 140h
jge     short loc_4F1DE0
cmp     edx, 0F0h
jl      short loc_4F1DE0
cmp     edx, 0F4h
jge     short loc_4F1DE0
shl     edx, 2
sub     eax, 100h
sar     eax, 4
sub     edx, 3C0h
add     eax, edx
lea     ecx, [eax+200h]
mov     eax, ecx
pop     ecx
retn

loc_4F1DE0:
cmp     eax, 140h
jl      short loc_4F1E1C
cmp     eax, 170h
jg      short loc_4F1E1C
cmp     edx, 1F8h
jl      short loc_4F1E1C
cmp     edx, 200h
jge     short loc_4F1E1C
shl     edx, 2
lea     ecx, [eax-140h]
sar     ecx, 4
lea     eax, [edx-7E0h]
add     eax, ecx
lea     ecx, [eax+210h]
mov     eax, ecx
pop     ecx
retn

loc_4F1E1C:
cmp     eax, 340h
jl      short loc_4F1E57
cmp     eax, 380h
jge     short loc_4F1E57
cmp     edx, 0F8h
jl      short loc_4F1E57
cmp     edx, 0FCh
jge     short loc_4F1E57
shl     edx, 2
sub     eax, 340h
sar     eax, 4
sub     edx, 3E0h
add     eax, edx
lea     ecx, [eax+230h]
mov     eax, ecx
pop     ecx
retn

loc_4F1E57:
cmp     eax, 340h
jnz     short loc_4F1E78
cmp     edx, 0FCh
jl      short loc_4F1E78
cmp     edx, 100h
jge     short loc_4F1E78
lea     ecx, [edx+144h]
mov     eax, ecx
pop     ecx
retn

loc_4F1E78:
cmp     eax, 3C0h
jl      short loc_4F1E98
shl     edx, 2
sub     eax, 3C0h
sar     eax, 4
sub     edx, 7F0h
add     eax, edx
lea     ecx, [eax+244h]

