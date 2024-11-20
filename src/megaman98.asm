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

loc_4F62A9:
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
mov     edx, ds:dword_887770
mov     dx, [edx]
and     edx, 0FFFFh
jmp     loc_4F449A
sub_4F608A endp




sub_4F62DF proc near

var_24= dword ptr -24h
var_20= byte ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004F3508 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     esi, eax
lea     eax, [esp+24h+var_20]
push    eax
lea     eax, [esp+28h+var_24]
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
fmul    ds:flt_50A97C
fstp    ds:flt_8876C4
fild    word ptr [esi+0Ah]
fmul    ds:flt_50A97C
fstp    ds:flt_8876C8
mov     edx, 3F7D70A4h
mov     ds:dword_8876CC, edx
mov     ecx, 3DCCCCCDh
mov     ds:flt_8876D0, ecx
mov     eax, [esp+24h+var_24]
mov     ds:dword_8876D4, eax
xor     ebx, ebx
mov     ds:dword_8876D8, ebx
xor     edi, edi
mov     ds:flt_8876DC, ebx
mov     ds:flt_8876E0, ebx
mov     eax, [esi+6]
sar     eax, 10h
add     eax, 0Eh
mov     [esp+24h+var_1C], eax
fild    [esp+24h+var_1C]
fmul    ds:flt_50A97C
fstp    ds:flt_8876E4
mov     eax, ds:flt_8876C8
mov     ds:flt_8876E8, eax
mov     ds:dword_8876EC, edx
mov     ds:flt_8876F0, ecx
mov     eax, [esp+24h+var_24]
mov     ds:dword_8876F4, eax
mov     ds:dword_8876F8, ebx
mov     ebx, 3F600000h
mov     ds:flt_8876FC, ebx
mov     ds:flt_887700, edi
mov     eax, ds:flt_8876C4
mov     ds:flt_887704, eax
mov     eax, [esi+8]
sar     eax, 10h
add     eax, 0Eh
mov     [esp+24h+var_1C], eax
fild    [esp+24h+var_1C]
fmul    ds:flt_50A97C
fstp    ds:flt_887708
mov     ds:dword_88770C, edx
mov     ds:flt_887710, ecx
mov     eax, [esp+24h+var_24]
mov     ds:dword_887714, eax
mov     ds:dword_887718, edi
mov     ds:flt_88771C, edi
mov     ds:flt_887720, ebx
mov     ebp, ds:flt_8876E4
mov     ds:flt_887724, ebp
mov     ebp, ds:flt_887708
mov     ds:flt_887728, ebp
mov     ds:dword_88772C, edx
mov     ds:flt_887730, ecx
mov     ds:dword_887734, eax
xor     eax, eax
mov     ds:dword_887738, eax
mov     edx, ebx
mov     ds:flt_88773C, ebx
mov     ds:flt_887740, ebx
xor     edx, ebx
mov     dx, [esi+0Eh]
mov     ax, [esi+0Ch]
call    sub_4F2A03
mov     eax, ds:dword_551D10
mov     esi, [eax]
push    edi
push    1Dh
push    eax
call    dword ptr [esi+58h]
mov     eax, 1
call    sub_4F2F6B
mov     eax, 1
call    sub_4F16F3
mov     eax, ds:dword_551D10
mov     esi, [eax]
push    1
push    11h
push    edi
push    eax
call    dword ptr [esi+0A0h]
mov     eax, ds:dword_551D10
mov     esi, [eax]
push    1
push    10h
push    edi
push    eax
call    dword ptr [esi+0A0h]
mov     eax, ds:dword_551D10
mov     esi, [eax]
push    edi
push    1Bh
push    eax
call    dword ptr [esi+58h]
mov     eax, ds:dword_551D10
mov     esi, [eax]
push    edi
push    4
push    offset flt_8876C4
push    1C4h
push    5
push    eax
call    dword ptr [esi+70h]
mov     eax, ds:dword_551D10
mov     esi, [eax]
push    2
push    11h
push    edi
push    eax
call    dword ptr [esi+0A0h]
mov     eax, ds:dword_551D10
mov     esi, [eax]
push    2
push    10h
push    edi
push    eax
call    dword ptr [esi+0A0h]
add     esp, 0Ch
jmp     loc_4F3508
sub_4F62DF endp ; sp-analysis failed




sub_4F64F7 proc near
push    edx
mov     edx, [eax+4]
mov     ds:dword_887744, edx
test    byte ptr [eax+7], 2
jz      short loc_4F651C
xor     edx, edx
mov     dx, [eax+16h]
sar     edx, 5
and     edx, 3
inc     edx
mov     byte ptr ds:dword_887744+3, dl
jmp     short loc_4F6524

loc_4F651C:
xor     dh, dh
mov     byte ptr ds:dword_887744+3, dh

loc_4F6524:
mov     dx, [eax+8]
add     edx, edx
mov     ds:word_887756, dx
mov     dx, [eax+0Ah]
add     edx, edx
mov     ds:word_887754, dx
mov     dx, [eax+10h]
add     edx, edx
mov     ds:word_88775A, dx
mov     dx, [eax+12h]
add     edx, edx
mov     ds:word_887758, dx
mov     dx, [eax+18h]
add     edx, edx
mov     ds:word_88775E, dx
mov     dx, [eax+1Ah]
add     edx, edx
mov     ds:word_88775C, dx
mov     dx, [eax+0Ch]
mov     ds:word_887764, dx
mov     dx, [eax+14h]
mov     ds:word_887766, dx
mov     dx, [eax+1Ch]
mov     ds:word_887768, dx

loc_4F6593:
xor     edx, edx
mov     dx, [eax+0Eh]
mov     ax, [eax+16h]
jmp     loc_4F6DED
sub_4F64F7 endp




sub_4F65A2 proc near

var_8= dword ptr -8

push    edx
sub     esp, 4
mov     edx, [eax+4]
mov     ds:dword_887744, edx
test    byte ptr [eax+7], 2
jz      short loc_4F65CA
xor     edx, edx
mov     dx, [eax+16h]
sar     edx, 5
and     edx, 3
inc     edx
mov     byte ptr ds:dword_887744+3, dl
jmp     short loc_4F65D2

loc_4F65CA:
xor     dh, dh
mov     byte ptr ds:dword_887744+3, dh

loc_4F65D2:
fld     dword ptr [eax+20h]
fmul    ds:flt_50A980
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_887756, dx
fld     dword ptr [eax+24h]
fmul    ds:flt_50A980
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_887754, dx
fld     dword ptr [eax+28h]
fmul    ds:flt_50A980
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_88775A, dx
fld     dword ptr [eax+2Ch]
fmul    ds:flt_50A980
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_887758, dx
fld     dword ptr [eax+30h]
fmul    ds:flt_50A980
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_88775E, dx
fld     dword ptr [eax+34h]
fmul    ds:flt_50A980
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_88775C, dx
mov     dx, [eax+0Ch]
mov     ds:word_887764, dx
mov     dx, [eax+14h]
mov     ds:word_887766, dx
mov     dx, [eax+1Ch]
mov     ds:word_887768, dx

loc_4F6695:
xor     edx, edx
mov     dx, [eax+0Eh]
mov     ax, [eax+16h]
jmp     loc_4F6EF6
sub_4F65A2 endp




sub_4F66A4 proc near

var_84= dword ptr -84h
var_58= dword ptr -58h

push    ecx
push    edx
sub     esp, 7Ch
mov     edx, [eax+4]
mov     ds:dword_887744, edx
test    byte ptr [eax+7], 2
jz      short loc_4F66D9
mov     edx, ds:dword_887770
mov     dx, [edx]
and     edx, 0FFFFh
sar     edx, 5
and     edx, 3
inc     edx
or      dl, 80h
mov     byte ptr ds:dword_887744+3, dl
jmp     short loc_4F66E0

loc_4F66D9:
mov     byte ptr ds:dword_887744+3, 80h

loc_4F66E0:
mov     dx, [eax+8]
add     edx, edx
mov     ds:word_887756, dx
mov     dx, [eax+0Ah]
add     edx, edx
mov     ds:word_887754, dx
mov     dx, [eax+0Ch]
add     edx, edx
mov     ds:word_88775A, dx
mov     dx, [eax+0Eh]
add     edx, edx
mov     ds:word_887758, dx
mov     dx, [eax+14h]
add     edx, edx
mov     ds:word_88775E, dx
mov     dx, [eax+16h]
add     edx, edx
mov     ds:word_88775C, dx
mov     dx, [eax+10h]
add     edx, edx
mov     ds:word_887762, dx
mov     ax, [eax+12h]
add     eax, eax
mov     ds:word_887760, ax

loc_4F6747:
mov     [esp+84h+var_84], 7Ch ; '|'
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+8Ch+var_84]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
mov     edx, offset dword_887744
mov     eax, [esp+7Ch+var_58]
call    sub_4FBF87

loc_4F6772:
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]
add     esp, 7Ch
pop     edx
pop     ecx
retn
sub_4F66A4 endp




sub_4F6788 proc near

var_88= dword ptr -88h
var_C= dword ptr -0Ch
arg_20= dword ptr  24h

push    ecx
push    edx
sub     esp, 80h
mov     edx, [eax+4]
mov     ds:dword_887744, edx
test    byte ptr [eax+7], 2
jz      short loc_4F67C0
mov     edx, ds:dword_887770
mov     dx, [edx]
and     edx, 0FFFFh
sar     edx, 5
and     edx, 3
inc     edx
or      dl, 80h
mov     byte ptr ds:dword_887744+3, dl
jmp     short loc_4F67C7

loc_4F67C0:
mov     byte ptr ds:dword_887744+3, 80h

loc_4F67C7:
fld     dword ptr [eax+18h]
fmul    ds:flt_50A984
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_887756, dx
fld     dword ptr [eax+1Ch]
fmul    ds:flt_50A984
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_887754, dx
fld     dword ptr [eax+20h]
fmul    ds:flt_50A984
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_88775A, dx
fld     dword ptr [eax+24h]
fmul    ds:flt_50A984
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_887758, dx
fld     dword ptr [eax+30h]
fmul    ds:flt_50A984
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_88775E, dx
fld     dword ptr [eax+34h]
fmul    ds:flt_50A984
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_88775C, dx
fld     dword ptr [eax+28h]
fmul    ds:flt_50A984
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_887762, dx
fld     dword ptr [eax+2Ch]
fmul    ds:flt_50A984
call    __CHP
fistp   [esp+88h+var_C]
mov     eax, [esp+88h+var_C]
mov     ds:word_887760, ax
mov     [esp+88h+var_88], 7Ch ; '|'
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+90h+var_88]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
mov     edx, offset dword_887744
mov     eax, [esp+arg_20]
call    sub_4FBF87
jmp     loc_4F6D2E
sub_4F6788 endp




sub_4F68DE proc near
push    edx
mov     edx, [eax+4]
mov     ds:dword_887744, edx
test    byte ptr [eax+7], 2
jz      short loc_4F6906
xor     edx, edx
mov     dx, [eax+16h]
sar     edx, 5
and     edx, 3
inc     edx
or      dl, 80h
mov     byte ptr ds:dword_887744+3, dl
jmp     short loc_4F690D

loc_4F6906:
mov     byte ptr ds:dword_887744+3, 80h

loc_4F690D:
test    byte ptr [eax+17h], 10h
jz      short loc_4F6966
mov     dx, [eax+8]
mov     ds:word_887756, dx
mov     dx, [eax+0Ah]
mov     ds:word_887754, dx
mov     dx, [eax+10h]
mov     ds:word_88775A, dx
mov     dx, [eax+12h]
mov     ds:word_887758, dx
mov     dx, [eax+20h]
mov     ds:word_88775E, dx
mov     dx, [eax+22h]
mov     ds:word_88775C, dx
mov     dx, [eax+18h]
mov     ds:word_887762, dx
mov     dx, [eax+1Ah]
jmp     short loc_4F69C7

loc_4F6966:
mov     dx, [eax+8]
add     edx, edx
mov     ds:word_887756, dx
mov     dx, [eax+0Ah]
add     edx, edx
mov     ds:word_887754, dx
mov     dx, [eax+10h]
add     edx, edx
mov     ds:word_88775A, dx
mov     dx, [eax+12h]
add     edx, edx
mov     ds:word_887758, dx
mov     dx, [eax+20h]
add     edx, edx
mov     ds:word_88775E, dx
mov     dx, [eax+22h]
add     edx, edx
mov     ds:word_88775C, dx
mov     dx, [eax+18h]
add     edx, edx
mov     ds:word_887762, dx
mov     dx, [eax+1Ah]
add     edx, edx

loc_4F69C7:
mov     ds:word_887760, dx
mov     dx, [eax+0Ch]
mov     ds:word_887764, dx
mov     dx, [eax+14h]
mov     ds:word_887766, dx
mov     dx, [eax+24h]
mov     ds:word_887768, dx
mov     dx, [eax+1Ch]
mov     ds:word_88776A, dx
jmp     loc_4F6593
sub_4F68DE endp




sub_4F69FF proc near

var_8= dword ptr -8

push    edx
sub     esp, 4
mov     edx, [eax+4]
mov     ds:dword_887744, edx
test    byte ptr [eax+7], 2
jz      short loc_4F6A2A
xor     edx, edx
mov     dx, [eax+16h]
sar     edx, 5
and     edx, 3
inc     edx
or      dl, 80h
mov     byte ptr ds:dword_887744+3, dl
jmp     short loc_4F6A31

loc_4F6A2A:
mov     byte ptr ds:dword_887744+3, 80h

loc_4F6A31:
fld     dword ptr [eax+28h]
fmul    ds:flt_50A988
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_887756, dx
fld     dword ptr [eax+2Ch]
fmul    ds:flt_50A988
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_887754, dx
fld     dword ptr [eax+30h]
fmul    ds:flt_50A988
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_88775A, dx
fld     dword ptr [eax+34h]
fmul    ds:flt_50A988
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_887758, dx
fld     dword ptr [eax+40h]
fmul    ds:flt_50A988
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_88775E, dx
fld     dword ptr [eax+44h]
fmul    ds:flt_50A988
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_88775C, dx
fld     dword ptr [eax+38h]
fmul    ds:flt_50A988
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_887762, dx
fld     dword ptr [eax+3Ch]
fmul    ds:flt_50A988
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_887760, dx
mov     dx, [eax+0Ch]
mov     ds:word_887764, dx
mov     dx, [eax+14h]
mov     ds:word_887766, dx
mov     dx, [eax+24h]
mov     ds:word_887768, dx
mov     dx, [eax+1Ch]
mov     ds:word_88776A, dx
jmp     loc_4F6695
sub_4F69FF endp




sub_4F6B3A proc near

var_84= dword ptr -84h
arg_20= dword ptr  24h

push    ecx
push    edx
sub     esp, 7Ch
mov     edx, [eax+4]
mov     ds:dword_887744, edx
mov     edx, [eax+0Ch]
mov     ds:dword_887748, edx
mov     edx, [eax+14h]
mov     ds:dword_88774C, edx
test    byte ptr [eax+7], 2
jz      short loc_4F6B81
mov     edx, ds:dword_887770
mov     dx, [edx]
and     edx, 0FFFFh
sar     edx, 5
and     edx, 3
inc     edx
or      dl, 80h
mov     byte ptr ds:dword_887744+3, dl
jmp     short loc_4F6B88

loc_4F6B81:
mov     byte ptr ds:dword_887744+3, 80h

loc_4F6B88:
mov     dx, [eax+8]
add     edx, edx
mov     ds:word_887756, dx
mov     dx, [eax+0Ah]
add     edx, edx
mov     ds:word_887754, dx
mov     dx, [eax+10h]
add     edx, edx
mov     ds:word_88775A, dx
mov     dx, [eax+12h]
add     edx, edx
mov     ds:word_887758, dx
mov     dx, [eax+18h]
add     edx, edx
mov     ds:word_88775E, dx
mov     ax, [eax+1Ah]
add     eax, eax
mov     ds:word_88775C, ax

loc_4F6BD5:
mov     [esp+84h+var_84], 7Ch ; '|'
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+8Ch+var_84]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
mov     edx, offset dword_887744
mov     eax, [esp+arg_20]
call    sub_4FC0CB
jmp     loc_4F6772
sub_4F6B3A endp




sub_4F6C05 proc near

var_88= dword ptr -88h
var_5C= dword ptr -5Ch
var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 80h
mov     edx, [eax+4]
mov     ds:dword_887744, edx
mov     edx, [eax+0Ch]
mov     ds:dword_887748, edx
mov     edx, [eax+14h]
mov     ds:dword_88774C, edx
test    byte ptr [eax+7], 2
jz      short loc_4F6C4F
mov     edx, ds:dword_887770
mov     dx, [edx]
and     edx, 0FFFFh
sar     edx, 5
and     edx, 3
inc     edx
or      dl, 80h
mov     byte ptr ds:dword_887744+3, dl
jmp     short loc_4F6C56

loc_4F6C4F:
mov     byte ptr ds:dword_887744+3, 80h

loc_4F6C56:
fld     dword ptr [eax+1Ch]
fmul    ds:flt_50A98C
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_887756, dx
fld     dword ptr [eax+20h]
fmul    ds:flt_50A98C
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_887754, dx
fld     dword ptr [eax+24h]
fmul    ds:flt_50A98C
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_88775A, dx
fld     dword ptr [eax+28h]
fmul    ds:flt_50A98C
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_887758, dx
fld     dword ptr [eax+2Ch]
fmul    ds:flt_50A98C
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_88775E, dx
fld     dword ptr [eax+30h]
fmul    ds:flt_50A98C
call    __CHP
fistp   [esp+88h+var_C]
mov     eax, [esp+88h+var_C]
mov     ds:word_88775C, ax

loc_4F6D03:
mov     [esp+88h+var_88], 7Ch ; '|'
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+90h+var_88]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
mov     edx, offset dword_887744
mov     eax, [esp+80h+var_5C]
call    sub_4FC0CB

loc_4F6D2E:
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]
add     esp, 80h
pop     edx
pop     ecx
retn
sub_4F6C05 endp




sub_4F6D47 proc near
push    edx
mov     edx, [eax+4]
mov     ds:dword_887744, edx
test    byte ptr [eax+7], 2
jz      short loc_4F6D6C
xor     edx, edx
mov     dx, [eax+1Ah]
sar     edx, 5
and     edx, 3
inc     edx
mov     byte ptr ds:dword_887744+3, dl
jmp     short loc_4F6D74

loc_4F6D6C:
xor     dh, dh
mov     byte ptr ds:dword_887744+3, dh

loc_4F6D74:
mov     dx, [eax+8]
add     edx, edx
mov     ds:word_887756, dx
mov     dx, [eax+0Ah]
add     edx, edx
mov     ds:word_887754, dx
mov     dx, [eax+14h]
add     edx, edx
mov     ds:word_88775A, dx
mov     dx, [eax+16h]
add     edx, edx
mov     ds:word_887758, dx
mov     dx, [eax+20h]
add     edx, edx
mov     ds:word_88775E, dx
mov     dx, [eax+22h]
add     edx, edx
mov     ds:word_88775C, dx
mov     dx, [eax+0Ch]
mov     ds:word_887764, dx
mov     dx, [eax+18h]
mov     ds:word_887766, dx
mov     dx, [eax+24h]
mov     ds:word_887768, dx

loc_4F6DE3:
xor     edx, edx
mov     dx, [eax+0Eh]
mov     ax, [eax+1Ah]

loc_4F6DED:
and     eax, 0FFFFh
call    sub_4F33FE
pop     edx
retn
sub_4F6D47 endp




sub_4F6DF9 proc near

var_8= dword ptr -8

push    edx
sub     esp, 4
mov     edx, [eax+4]
mov     ds:dword_887744, edx
test    byte ptr [eax+7], 2
jz      short loc_4F6E21
xor     edx, edx
mov     dx, [eax+1Ah]
sar     edx, 5
and     edx, 3
inc     edx
mov     byte ptr ds:dword_887744+3, dl
jmp     short loc_4F6E29

loc_4F6E21:
xor     dh, dh
mov     byte ptr ds:dword_887744+3, dh

loc_4F6E29:
fld     dword ptr [eax+28h]
fmul    ds:flt_50A990
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_887756, dx
fld     dword ptr [eax+2Ch]
fmul    ds:flt_50A990
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_887754, dx
fld     dword ptr [eax+30h]
fmul    ds:flt_50A990
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_88775A, dx
fld     dword ptr [eax+34h]
fmul    ds:flt_50A990
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_887758, dx
fld     dword ptr [eax+38h]
fmul    ds:flt_50A990
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_88775E, dx
fld     dword ptr [eax+3Ch]
fmul    ds:flt_50A990
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_88775C, dx
mov     dx, [eax+0Ch]
mov     ds:word_887764, dx
mov     dx, [eax+18h]
mov     ds:word_887766, dx
mov     dx, [eax+24h]
mov     ds:word_887768, dx

loc_4F6EEC:
xor     edx, edx
mov     dx, [eax+0Eh]
mov     ax, [eax+1Ah]

loc_4F6EF6:
and     eax, 0FFFFh
call    sub_4F33FE
add     esp, 4
pop     edx
retn
sub_4F6DF9 endp




sub_4F6F05 proc near
push    ecx
push    edx
sub     esp, 7Ch
mov     edx, [eax+4]
mov     ds:dword_887744, edx
mov     edx, [eax+0Ch]
mov     ds:dword_887748, edx
mov     edx, [eax+14h]
mov     ds:dword_88774C, edx
mov     edx, [eax+1Ch]
mov     ds:dword_887750, edx
test    byte ptr [eax+7], 2
jz      short loc_4F6F55
mov     edx, ds:dword_887770
mov     dx, [edx]
and     edx, 0FFFFh
sar     edx, 5
and     edx, 3
inc     edx
or      dl, 80h
mov     byte ptr ds:dword_887744+3, dl
jmp     short loc_4F6F5C

loc_4F6F55:
mov     byte ptr ds:dword_887744+3, 80h

loc_4F6F5C:
mov     dx, [eax+8]
add     edx, edx
mov     ds:word_887756, dx
mov     dx, [eax+0Ah]
add     edx, edx
mov     ds:word_887754, dx
mov     dx, [eax+10h]
add     edx, edx
mov     ds:word_88775A, dx
mov     dx, [eax+12h]
add     edx, edx
mov     ds:word_887758, dx
mov     dx, [eax+20h]
add     edx, edx
mov     ds:word_88775E, dx
mov     dx, [eax+22h]
add     edx, edx
mov     ds:word_88775C, dx
mov     dx, [eax+18h]
add     edx, edx
mov     ds:word_887762, dx
mov     ax, [eax+1Ah]
add     eax, eax
mov     ds:word_887760, ax
jmp     loc_4F6BD5
sub_4F6F05 endp




sub_4F6FC8 proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 80h
mov     edx, [eax+4]
mov     ds:dword_887744, edx
mov     edx, [eax+0Ch]
mov     ds:dword_887748, edx
mov     edx, [eax+14h]
mov     ds:dword_88774C, edx
mov     edx, [eax+1Ch]
mov     ds:dword_887750, edx
test    byte ptr [eax+7], 2
jz      short loc_4F701B
mov     edx, ds:dword_887770
mov     dx, [edx]
and     edx, 0FFFFh
sar     edx, 5
and     edx, 3
inc     edx
or      dl, 80h
mov     byte ptr ds:dword_887744+3, dl
jmp     short loc_4F7022

loc_4F701B:
mov     byte ptr ds:dword_887744+3, 80h

loc_4F7022:
fld     dword ptr [eax+24h]
fmul    ds:flt_50A994
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_887756, dx
fld     dword ptr [eax+28h]
fmul    ds:flt_50A994
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_887754, dx
fld     dword ptr [eax+2Ch]
fmul    ds:flt_50A994
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_88775A, dx
fld     dword ptr [eax+30h]
fmul    ds:flt_50A994
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_887758, dx
fld     dword ptr [eax+3Ch]
fmul    ds:flt_50A994
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_88775E, dx
fld     dword ptr [eax+40h]
fmul    ds:flt_50A994
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_88775C, dx
fld     dword ptr [eax+34h]
fmul    ds:flt_50A994
call    __CHP
fistp   [esp+88h+var_C]
mov     edx, [esp+88h+var_C]
mov     ds:word_887762, dx
fld     dword ptr [eax+38h]
fmul    ds:flt_50A994
call    __CHP
fistp   [esp+88h+var_C]
mov     eax, [esp+88h+var_C]
mov     ds:word_887760, ax
jmp     loc_4F6D03
sub_4F6FC8 endp




sub_4F710E proc near
push    edx
mov     edx, [eax+4]
mov     ds:dword_887744, edx
test    byte ptr [eax+7], 2
jz      short loc_4F7136
xor     edx, edx
mov     dx, [eax+1Ah]
sar     edx, 5
and     edx, 3
inc     edx
or      dl, 80h
mov     byte ptr ds:dword_887744+3, dl
jmp     short loc_4F713D

loc_4F7136:
mov     byte ptr ds:dword_887744+3, 80h

loc_4F713D:
mov     dx, [eax+8]
add     edx, edx
mov     ds:word_887756, dx
mov     dx, [eax+0Ah]
add     edx, edx
mov     ds:word_887754, dx
mov     dx, [eax+14h]
add     edx, edx
mov     ds:word_88775A, dx
mov     dx, [eax+16h]
add     edx, edx
mov     ds:word_887758, dx
mov     dx, [eax+2Ch]
add     edx, edx
mov     ds:word_88775E, dx
mov     dx, [eax+2Eh]
add     edx, edx
mov     ds:word_88775C, dx
mov     dx, [eax+20h]
add     edx, edx
mov     ds:word_887762, dx
mov     dx, [eax+22h]
add     edx, edx
mov     ds:word_887760, dx
mov     dx, [eax+0Ch]
mov     ds:word_887764, dx
mov     dx, [eax+18h]
mov     ds:word_887766, dx
mov     dx, [eax+30h]
mov     ds:word_887768, dx
mov     dx, [eax+24h]
mov     ds:word_88776A, dx
jmp     loc_4F6DE3
sub_4F710E endp




sub_4F71D6 proc near

var_8= dword ptr -8

push    edx
sub     esp, 4
mov     edx, [eax+4]
mov     ds:dword_887744, edx
test    byte ptr [eax+7], 2
jz      short loc_4F7201
xor     edx, edx
mov     dx, [eax+1Ah]
sar     edx, 5
and     edx, 3
inc     edx
or      dl, 80h
mov     byte ptr ds:dword_887744+3, dl
jmp     short loc_4F7208

loc_4F7201:
mov     byte ptr ds:dword_887744+3, 80h

loc_4F7208:
fld     dword ptr [eax+34h]
fmul    ds:flt_50A998
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_887756, dx
fld     dword ptr [eax+38h]
fmul    ds:flt_50A998
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_887754, dx
fld     dword ptr [eax+3Ch]
fmul    ds:flt_50A998
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_88775A, dx
fld     dword ptr [eax+40h]
fmul    ds:flt_50A998
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_887758, dx
fld     dword ptr [eax+4Ch]
fmul    ds:flt_50A998
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_88775E, dx
fld     dword ptr [eax+50h]
fmul    ds:flt_50A998
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_88775C, dx
fld     dword ptr [eax+44h]
fmul    ds:flt_50A998
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_887762, dx
fld     dword ptr [eax+48h]
fmul    ds:flt_50A998
call    __CHP
fistp   [esp+8+var_8]
mov     edx, [esp+8+var_8]
mov     ds:word_887760, dx
mov     dx, [eax+0Ch]
mov     ds:word_887764, dx
mov     dx, [eax+18h]
mov     ds:word_887766, dx
mov     dx, [eax+30h]
mov     ds:word_887768, dx
mov     dx, [eax+24h]
mov     ds:word_88776A, dx
jmp     loc_4F6EEC
sub_4F71D6 endp




sub_4F7311 proc near
push    ecx
push    edx
sub     esp, 7Ch
mov     edx, [eax+4]
mov     ds:dword_887744, edx
test    byte ptr [eax+7], 2
jz      short loc_4F7346
mov     edx, ds:dword_887770
mov     dx, [edx]
and     edx, 0FFFFh
sar     edx, 5
and     edx, 3
inc     edx
or      dl, 80h
mov     byte ptr ds:dword_887744+3, dl
jmp     short loc_4F734D

loc_4F7346:
mov     byte ptr ds:dword_887744+3, 80h

loc_4F734D:
mov     dx, [eax+8]
add     edx, edx
mov     ds:word_887756, dx
mov     dx, [eax+0Ah]
add     edx, edx
mov     ds:word_887754, dx
mov     dx, [eax+8]
add     dx, [eax+0Ch]
add     edx, edx
mov     ds:word_88775A, dx
mov     dx, ds:word_887754
mov     ds:word_887758, dx
mov     dx, ds:word_88775A
mov     ds:word_88775E, dx
mov     dx, [eax+0Ah]
add     dx, [eax+0Eh]
add     edx, edx
mov     ds:word_88775C, dx
mov     ax, ds:word_887756
mov     ds:word_887762, ax
mov     ds:word_887760, dx
jmp     loc_4F6747
sub_4F7311 endp




sub_4F73BD proc near
push    edx
mov     edx, [eax+4]
mov     ds:dword_887744, edx
test    byte ptr [eax+7], 2
jz      short loc_4F73EE
mov     edx, ds:dword_887770
mov     dx, [edx]
and     edx, 0FFFFh
sar     edx, 5
and     edx, 3
inc     edx
or      dl, 80h
mov     byte ptr ds:dword_887744+3, dl
jmp     short loc_4F73F5

loc_4F73EE:
mov     byte ptr ds:dword_887744+3, 80h

loc_4F73F5:
mov     dx, [eax+8]
add     edx, edx
mov     ds:word_887756, dx
mov     dx, [eax+0Ah]
add     edx, edx
mov     ds:word_887754, dx
mov     dx, [eax+8]
add     dx, [eax+10h]
add     edx, edx
mov     ds:word_88775A, dx
mov     dx, ds:word_887754
mov     ds:word_887758, dx
mov     dx, ds:word_88775A
mov     ds:word_88775E, dx
mov     dx, [eax+0Ah]
add     dx, [eax+12h]
add     edx, edx
mov     ds:word_88775C, dx
mov     dx, ds:word_887756
mov     ds:word_887762, dx
mov     dx, ds:word_88775C
mov     ds:word_887760, dx
mov     dx, [eax+0Ch]
mov     ds:word_887764, dx
mov     dl, [eax+0Ch]
add     dl, [eax+10h]
dec     dl
mov     byte ptr ds:word_887766, dl
mov     dl, byte ptr ds:word_887764+1
mov     byte ptr ds:word_887766+1, dl
mov     dl, byte ptr ds:word_887766
mov     byte ptr ds:word_887768, dl
mov     dl, [eax+0Dh]
add     dl, [eax+12h]
dec     dl
mov     byte ptr ds:word_887768+1, dl
mov     dl, byte ptr ds:word_887764
mov     byte ptr ds:word_88776A, dl
mov     dl, byte ptr ds:word_887768+1
mov     byte ptr ds:word_88776A+1, dl
xor     edx, edx
mov     dx, [eax+0Eh]
mov     eax, ds:dword_887770
mov     ax, [eax]
jmp     loc_4F6DED
sub_4F73BD endp




sub_4F74D3 proc near

var_8C= dword ptr -8Ch
var_58= dword ptr -58h

push    ebx
push    ecx
push    edx
sub     esp, 80h
mov     ebx, eax
mov     eax, [eax+4]
mov     ds:dword_887744, eax
test    byte ptr [ebx+7], 2
jz      short loc_4F7507
mov     eax, ds:dword_887770
mov     ax, [eax]
and     eax, 0FFFFh
sar     eax, 5
and     eax, 3
inc     eax
mov     byte ptr ds:dword_887744+3, al
jmp     short loc_4F750F

loc_4F7507:
xor     dl, dl
mov     byte ptr ds:dword_887744+3, dl

loc_4F750F:
mov     ax, [ebx+8]
add     eax, eax
mov     ds:word_887756, ax
mov     ax, [ebx+0Ah]
add     eax, eax
mov     ds:word_887754, ax
mov     [esp+8Ch+var_8C], 7Ch ; '|'
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+94h+var_8C]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
xor     edx, edx
mov     dx, [ebx+0Eh]
xor     eax, eax
mov     ax, [ebx+0Ch]
lea     ebx, [esp+7Ch]
call    sub_4F2B63
mov     ebx, offset dword_887744
mov     edx, eax
mov     eax, [esp+7Ch+var_58]
call    sub_4FC26D
mov     eax, [esp+7Ch]
mov     eax, [eax]
push    0
mov     ecx, [esp+80h]
push    ecx
call    dword ptr [eax+80h]
mov     ebx, ds:dword_551CF8
mov     eax, [ebx]
push    0
push    ebx
call    dword ptr [eax+80h]
add     esp, 80h
pop     edx
pop     ecx
pop     ebx
retn
sub_4F74D3 endp

word_4F759A dw 0E8ECh
dd 0B8BCE0E4h, 0A8ACB0B4h, 60646CA4h, 34383C50h
dd 24282C30h
jpt_4F7744 dd offset loc_4F78D2 ; jump table for switch statement
dd offset loc_4F774B
dd offset loc_4F7767
dd offset loc_4F7783
dd offset loc_4F779F
dd offset loc_4F77BB
dd offset loc_4F77D7
dd offset loc_4F77F3
dd offset loc_4F780F
dd offset loc_4F7818
dd offset loc_4F7826
dd offset loc_4F7834
dd offset loc_4F7759
dd offset loc_4F7775
dd offset loc_4F7791
dd offset loc_4F77AD
dd offset loc_4F77C9
dd offset loc_4F77E5
dd offset loc_4F7801
dd offset loc_4F7842
dd offset loc_4F78D2
dd offset loc_4F7842
dd offset loc_4F7868
db 8Bh, 0C0h
word_4F760E dw 0E8ECh
dd 0B8BCE0E4h, 0A8ACB0B4h, 60646CA4h, 34383C50h
dd 24282C30h
jpt_4F7923 dd offset loc_4F7AC5 ; jump table for switch statement
dd offset loc_4F792A
dd offset loc_4F7946
dd offset loc_4F7962
dd offset loc_4F798F
dd offset loc_4F79AB
dd offset loc_4F79C7
dd offset loc_4F79E3
dd offset loc_4F79FF
dd offset loc_4F7A0D
dd offset loc_4F7A1B
dd offset loc_4F7A29
dd offset loc_4F7938
dd offset loc_4F7954
dd offset loc_4F7970
dd offset loc_4F799D
dd offset loc_4F79B9
dd offset loc_4F79D5
dd offset loc_4F79F1
dd offset loc_4F7A37
dd offset loc_4F7AC5
dd offset loc_4F7A37
dd offset loc_4F7A5D



sub_4F7680 proc near

var_80= dword ptr -80h
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h

; FUNCTION CHUNK AT 004F3508 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 68h
mov     esi, eax
xor     ebp, ebp
test    byte ptr ds:dword_88787C, 1
jz      short loc_4F76D0
cmp     ds:byte_8878C8, 0
jz      short loc_4F76F8
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, esp
call    memset_
mov     [esp+80h+var_80], 64h ; 'd'
mov     [esp+80h+var_30], ebp
mov     eax, ds:dword_551CF8
mov     edx, [eax]
mov     ecx, esp
push    ecx
push    1000400h
push    ebp
push    ebp
push    ebp
push    eax
call    dword ptr [edx+14h]
jmp     short loc_4F76F8

loc_4F76D0:
cmp     ds:byte_8878C8, 0
jz      short loc_4F76E4
mov     eax, ds:dword_551D14
mov     edx, [eax]
push    3
jmp     short loc_4F76ED

loc_4F76E4:
mov     eax, ds:dword_551D14
mov     edx, [eax]
push    2

loc_4F76ED:
push    offset unk_551D24
push    1
push    eax
call    dword ptr [edx+30h]

loc_4F76F8:
mov     ds:dword_887770, offset unk_8878C4
test    byte ptr ds:dword_88787C, 1
jz      loc_4F78DB

loc_4F770F:
mov     eax, [esi]
cmp     eax, 0FFFFFFFFh
jz      loc_4F7B03
mov     [esp+98h+var_34], eax
test    eax, eax
jz      loc_4F7B03
mov     ch, byte ptr [esp+98h+var_34]
test    ch, 1
jnz     loc_4F78CA
mov     al, [eax+7]
and     al, 0FCh
mov     ecx, 17h
mov     edi, offset word_4F759A
repne scasb
jmp     jpt_4F7744[ecx*4] ; switch 23 cases

loc_4F774B:             ; jumptable 004F7744 case 1
mov     eax, [esp+98h+var_34]
call    sub_4F64F7
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F7759:             ; jumptable 004F7744 case 12
mov     eax, [esp+98h+var_34]
call    sub_4F65A2
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F7767:             ; jumptable 004F7744 case 2
mov     eax, [esp+98h+var_34]
call    sub_4F66A4
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F7775:             ; jumptable 004F7744 case 13
mov     eax, [esp+98h+var_34]
call    sub_4F6788
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F7783:             ; jumptable 004F7744 case 3
mov     eax, [esp+98h+var_34]
call    sub_4F68DE
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F7791:             ; jumptable 004F7744 case 14
mov     eax, [esp+98h+var_34]
call    sub_4F69FF
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F779F:             ; jumptable 004F7744 case 4
mov     eax, [esp+98h+var_34]
call    sub_4F6B3A
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F77AD:             ; jumptable 004F7744 case 15
mov     eax, [esp+98h+var_34]
call    sub_4F6C05
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F77BB:             ; jumptable 004F7744 case 5
mov     eax, [esp+98h+var_34]
call    sub_4F6D47
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F77C9:             ; jumptable 004F7744 case 16
mov     eax, [esp+98h+var_34]
call    sub_4F6DF9
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F77D7:             ; jumptable 004F7744 case 6
mov     eax, [esp+98h+var_34]
call    sub_4F6F05
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F77E5:             ; jumptable 004F7744 case 17
mov     eax, [esp+98h+var_34]
call    sub_4F6FC8
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F77F3:             ; jumptable 004F7744 case 7
mov     eax, [esp+98h+var_34]
call    sub_4F710E
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F7801:             ; jumptable 004F7744 case 18
mov     eax, [esp+98h+var_34]
call    sub_4F71D6
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F780F:             ; jumptable 004F7744 case 8
mov     eax, [esp+98h+var_34]
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F7818:             ; jumptable 004F7744 case 9
mov     eax, [esp+98h+var_34]
call    sub_4F7311
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F7826:             ; jumptable 004F7744 case 10
mov     eax, [esp+98h+var_34]
call    sub_4F73BD
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F7834:             ; jumptable 004F7744 case 11
mov     eax, [esp+98h+var_34]
call    sub_4F74D3
jmp     loc_4F78D2      ; jumptable 004F7744 cases 0,20

loc_4F7842:             ; jumptable 004F7744 cases 19,21
mov     eax, [esp+98h+var_34]
mov     al, [eax+6]
and     al, 1
movzx   ebp, al
mov     eax, [esp+98h+var_34]
mov     ax, [eax+4]
mov     ds:word_887894, ax
mov     ds:dword_887770, offset word_887894
jmp     short loc_4F78D2 ; jumptable 004F7744 cases 0,20

loc_4F7868:             ; jumptable 004F7744 case 22
mov     edx, [esp+98h+var_34]
add     edx, 8
mov     eax, offset byte_7876C4
call    sub_4FBBD0
mov     ecx, [esp+98h+var_34]
mov     ecx, [ecx+14h]
mov     ebx, [esp+98h+var_34]
mov     ebx, [ebx+10h]
xor     edx, edx
xor     eax, eax
call    sub_4F892F
mov     ebx, eax
xor     ecx, ecx
mov     edx, 2
jmp     short loc_4F78A1

loc_4F789B:
inc     ecx
cmp     ecx, 20h ; ' '
jge     short loc_4F78D2 ; jumptable 004F7744 cases 0,20

loc_4F78A1:
mov     esi, ebx
shl     esi, 2
sub     esi, ebx
shl     esi, 7
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, esi
cmp     ds:word_783ED4[eax], 0
jz      short loc_4F789B
mov     ds:word_783ED4[eax], dx
jmp     short loc_4F789B

loc_4F78CA:
mov     al, ch
and     al, 0FEh
mov     byte ptr [esp+98h+var_34], al

loc_4F78D2:             ; jumptable 004F7744 cases 0,20
mov     esi, [esp+98h+var_34]
jmp     loc_4F770F

loc_4F78DB:
xor     edi, edi
mov     ds:dword_88777C, edi
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    eax
call    dword ptr [edx+24h]

loc_4F78EE:
mov     eax, [esi]
cmp     eax, 0FFFFFFFFh
jz      loc_4F7ACE
mov     [esp+9Ch+var_38], eax
test    eax, eax
jz      loc_4F7ACE
mov     bh, byte ptr [esp+9Ch+var_38]
test    bh, 1
jnz     loc_4F7ABC
mov     al, [eax+7]
and     al, 0FCh
mov     ecx, 17h
mov     edi, offset word_4F760E
repne scasb
jmp     jpt_4F7923[ecx*4] ; switch 23 cases

loc_4F792A:             ; jumptable 004F7923 case 1
mov     eax, [esp+9Ch+var_38]
call    sub_4F39C4
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F7938:             ; jumptable 004F7923 case 12
mov     eax, [esp+9Ch+var_38]
call    sub_4F3BDD
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F7946:             ; jumptable 004F7923 case 2
mov     eax, [esp+9Ch+var_38]
call    sub_4F3E53
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F7954:             ; jumptable 004F7923 case 13
mov     eax, [esp+9Ch+var_38]
call    sub_4F4025
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F7962:             ; jumptable 004F7923 case 3
mov     eax, [esp+9Ch+var_38]
call    sub_4F41BA
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F7970:             ; jumptable 004F7923 case 14
mov     eax, [esp+9Ch+var_38]
call    sub_4F2F35
test    eax, eax
jnz     loc_4F7AC5      ; jumptable 004F7923 cases 0,20
mov     eax, [esp+9Ch+var_38]
call    sub_4F44C7
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F798F:             ; jumptable 004F7923 case 4
mov     eax, [esp+9Ch+var_38]
call    sub_4F498E
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F799D:             ; jumptable 004F7923 case 15
mov     eax, [esp+9Ch+var_38]
call    sub_4F4BB5
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F79AB:             ; jumptable 004F7923 case 5
mov     eax, [esp+9Ch+var_38]
call    sub_4F4D7C
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F79B9:             ; jumptable 004F7923 case 16
mov     eax, [esp+9Ch+var_38]
call    sub_4F500F
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F79C7:             ; jumptable 004F7923 case 6
mov     eax, [esp+9Ch+var_38]
call    sub_4F524B
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F79D5:             ; jumptable 004F7923 case 17
mov     eax, [esp+9Ch+var_38]
call    sub_4F54E3
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F79E3:             ; jumptable 004F7923 case 7
mov     eax, [esp+9Ch+var_38]
call    sub_4F5720
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F79F1:             ; jumptable 004F7923 case 18
mov     eax, [esp+9Ch+var_38]
call    sub_4F5A57
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F79FF:             ; jumptable 004F7923 case 8
mov     eax, [esp+9Ch+var_38]
call    sub_4F5D37
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F7A0D:             ; jumptable 004F7923 case 9
mov     eax, [esp+9Ch+var_38]
call    sub_4F5ECC
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F7A1B:             ; jumptable 004F7923 case 10
mov     eax, [esp+9Ch+var_38]
call    sub_4F608A
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F7A29:             ; jumptable 004F7923 case 11
mov     eax, [esp+9Ch+var_38]
call    sub_4F62DF
jmp     loc_4F7AC5      ; jumptable 004F7923 cases 0,20

loc_4F7A37:             ; jumptable 004F7923 cases 19,21
mov     eax, [esp+9Ch+var_38]
mov     al, [eax+6]
and     al, 1
movzx   ebp, al
mov     eax, [esp+9Ch+var_38]
mov     ax, [eax+4]
mov     ds:word_887894, ax
mov     ds:dword_887770, offset word_887894
jmp     short loc_4F7AC5 ; jumptable 004F7923 cases 0,20

loc_4F7A5D:             ; jumptable 004F7923 case 22
mov     edx, [esp+9Ch+var_38]
add     edx, 8
mov     eax, offset byte_7876C4
call    sub_4FBBD0
mov     ecx, [esp+9Ch+var_38]
mov     ecx, [ecx+14h]
mov     ebx, [esp+9Ch+var_38]
mov     ebx, [ebx+10h]
xor     edx, edx
xor     eax, eax
call    sub_4F892F
mov     ebx, eax
xor     ecx, ecx
jmp     short loc_4F7A91

loc_4F7A8B:
inc     ecx
cmp     ecx, 20h ; ' '
jge     short loc_4F7AC5 ; jumptable 004F7923 cases 0,20

loc_4F7A91:
mov     esi, ebx
shl     esi, 2
sub     esi, ebx
shl     esi, 7
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, esi
cmp     ds:word_783ED4[eax], 0
jz      short loc_4F7A8B
mov     ds:word_783ED4[eax], 2
jmp     short loc_4F7A8B

loc_4F7ABC:
mov     cl, bh
and     cl, 0FEh
mov     byte ptr [esp+9Ch+var_38], cl

loc_4F7AC5:             ; jumptable 004F7923 cases 0,20
mov     esi, [esp+9Ch+var_38]
jmp     loc_4F78EE

loc_4F7ACE:
cmp     ds:dword_88777C, 0
jz      short loc_4F7AF8
xor     ecx, ecx

loc_4F7AD9:
cmp     ecx, ds:dword_88777C
jge     short loc_4F7AF0
mov     eax, ds:dword_77EBE4[ecx*4]
call    sub_4F44C7
inc     ecx
jmp     short loc_4F7AD9

loc_4F7AF0:
xor     edi, edi
mov     ds:dword_88777C, edi

loc_4F7AF8:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    eax
call    dword ptr [edx+28h]

loc_4F7B03:
test    ebp, ebp
jz      short loc_4F7B2A
mov     eax, ds:dword_551CF4
mov     edx, [eax]
push    0
push    1000000h
push    offset unk_551D24
mov     ebx, ds:dword_551CF8
push    ebx
push    offset dword_782BE4
push    eax
call    dword ptr [edx+14h]

loc_4F7B2A:
