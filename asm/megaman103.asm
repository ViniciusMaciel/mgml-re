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
add     esp, 68h
jmp     loc_4F3508
sub_4F7680 endp ; sp-analysis failed




sub_4F7B32 proc near
push    ebx
push    ecx
push    edx
test    byte ptr ds:dword_88787C+1, 2
jz      short loc_4F7B63
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
jmp     short loc_4F7B77

loc_4F7B63:
mov     eax, ds:dword_551CF4
mov     edx, [eax]
push    1
mov     ecx, ds:dword_551CF8
push    ecx
push    eax
call    dword ptr [edx+2Ch]

loc_4F7B77:
cmp     eax, 887601C2h
jnz     short loc_4F7B89
mov     eax, ds:dword_551CF4
mov     edx, [eax]
push    eax
call    dword ptr [edx+6Ch]

loc_4F7B89:
pop     edx
pop     ecx
pop     ebx
retn
sub_4F7B32 endp




sub_4F7B8D proc near
push    edx
mov     edx, [eax]
mov     ds:dword_782BE4, edx
mov     eax, [eax+4]
mov     ds:dword_782BE8, eax
lea     eax, [edx+280h]
mov     ds:dword_782BEC, eax
mov     eax, ds:dword_782BE8
add     eax, 1E0h
mov     ds:dword_782BF0, eax
pop     edx
retn
sub_4F7B8D endp




sub_4F7BBA proc near

var_120= dword ptr -120h
var_11C= dword ptr -11Ch
var_118= dword ptr -118h
var_114= dword ptr -114h
var_110= dword ptr -110h
var_10C= dword ptr -10Ch
var_B8= dword ptr -0B8h
var_A4= dword ptr -0A4h
var_A0= byte ptr -0A0h
var_90= dword ptr -90h
var_8C= dword ptr -8Ch
var_88= dword ptr -88h
var_84= dword ptr -84h
var_70= dword ptr -70h
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
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 114h
mov     ebp, eax
mov     esi, edx
mov     edi, ebx
mov     [esp+120h+var_10], ecx
xor     edx, edx
mov     ds:dword_88787C, edx
push    edx             ; hWnd
call    cs:__imp_GetDC
mov     ebx, eax
push    8               ; index
push    eax             ; hdc
call    cs:__imp_GetDeviceCaps
mov     ds:dword_88788C, eax
push    0Ah             ; index
push    ebx             ; hdc
call    cs:__imp_GetDeviceCaps
mov     ds:dword_887884, eax
push    0Eh             ; index
push    ebx             ; hdc
call    cs:__imp_GetDeviceCaps
mov     [esp+120h+var_14], eax
push    0Ch             ; index
push    ebx             ; hdc
call    cs:__imp_GetDeviceCaps
mov     edx, [esp+120h+var_14]
imul    edx, eax
mov     ds:dword_887888, edx
push    ebx             ; hDC
push    0               ; hWnd
call    cs:__imp_ReleaseDC
cmp     ds:dword_887888, 10h
jge     short loc_4F7C49
cmp     dword ptr [esi], 0
jnz     short loc_4F7C49
mov     dword ptr [esi], 1

loc_4F7C49:
mov     ebx, 3000h
xor     edx, edx
mov     eax, offset word_783ED4
call    memset_
mov     ebx, 300h
xor     edx, edx
mov     eax, offset word_7873C4
call    memset_
xor     eax, eax
mov     ds:dword_887880, eax

loc_4F7C72:
cmp     [esp+120h+var_10], 0
jz      short loc_4F7CBD
xor     ecx, ecx
mov     ds:dword_551D1C, ecx
mov     ebx, 1
mov     ds:dword_786ED4, ebx
mov     ds:dword_786ED8, ebx
mov     edx, offset aSoftwareRender ; "Software Render"
mov     eax, offset unk_786EEC
call    strcpy_
push    ecx             ; lpContext
push    offset Callback ; lpCallback
call    DirectDrawEnumerateA
mov     eax, ds:dword_551D1C
mov     edx, [esp+120h+var_10]
mov     [edx], eax

loc_4F7CBD:
mov     eax, [edi]
cmp     eax, ds:dword_551D1C
jle     short loc_4F7CCF
mov     dword ptr [edi], 0
jmp     short loc_4F7CD3

loc_4F7CCF:
test    eax, eax
jnz     short loc_4F7CDA

loc_4F7CD3:
or      byte ptr ds:dword_88787C, 1

loc_4F7CDA:
mov     eax, [edi]
lea     edx, [esp+120h+var_18]
call    sub_4F12FE
test    eax, eax
jnz     short loc_4F7CF6
mov     eax, 1
jmp     loc_4F849B

loc_4F7CF6:
mov     edx, [edi]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
cmp     ds:dword_786ED8[eax*4], 0
jz      short loc_4F7D15
or      byte ptr ds:dword_88787C, 2

loc_4F7D15:
mov     eax, [esp+120h+var_18]
mov     eax, [eax]
push    offset dword_551CF0
push    offset word_4F0C3E
mov     edx, [esp+128h+var_18]
push    edx
call    dword ptr [eax]
test    eax, eax
jz      short loc_4F7D40
mov     eax, 2
jmp     loc_4F849B

loc_4F7D40:
mov     eax, [esp+120h+var_18]
mov     eax, [eax]
mov     ecx, [esp+120h+var_18]
push    ecx
call    dword ptr [eax+8]
test    byte ptr ds:dword_88787C, 1
jnz     short loc_4F7D7F
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    offset dword_551D0C
push    offset word_4F0CEE
push    eax
call    dword ptr [edx]
test    eax, eax
jz      short loc_4F7D7F
mov     eax, 3
jmp     loc_4F849B

loc_4F7D7F:
test    byte ptr ds:dword_88787C, 2
jnz     short loc_4F7D93
cmp     dword ptr [esi], 0
jnz     short loc_4F7D93
mov     dword ptr [esi], 1

loc_4F7D93:
mov     edx, [edi]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
add     eax, offset dword_786ED4
lea     edx, [eax+40h]
mov     ebx, 0FCh
mov     eax, offset unk_887780
call    memcpy_
mov     eax, esp
call    sub_4F188E
cmp     dword ptr [esi], 0
jz      loc_4F7EAF
test    byte ptr ds:dword_88787C, 1
jz      loc_4F7EAF
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    813h
push    ebp
push    eax
call    dword ptr [edx+50h]
test    eax, eax
jz      short loc_4F7DF7

loc_4F7DED:
mov     eax, 5
jmp     loc_4F849B

loc_4F7DF7:
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    0
push    10h
push    1E0h
push    280h
push    eax
call    dword ptr [edx+54h]
mov     [esp+120h+var_11C], 1
mov     [esp+120h+var_B8], 200h
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551CF4
lea     ecx, [esp+128h+var_120]
push    ecx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jz      short loc_4F7E47

loc_4F7E3D:
mov     eax, 9
jmp     loc_4F849B

loc_4F7E47:
mov     eax, ds:dword_551CF4
call    sub_4F190F
mov     [esp+120h+var_11C], 7
mov     [esp+120h+var_114], 280h
mov     [esp+120h+var_118], 1E0h
mov     [esp+120h+var_B8], 840h
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551CF8
lea     ecx, [esp+128h+var_120]
push    ecx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jz      short loc_4F7E96

loc_4F7E8C:
mov     eax, 0Ah
jmp     loc_4F849B

loc_4F7E96:
mov     ebx, 10h
mov     edx, offset unk_551D24
mov     eax, offset dword_782BE4
call    memcpy_
jmp     loc_4F80B0

loc_4F7EAF:
cmp     dword ptr [esi], 0
jnz     short loc_4F7EC1
test    byte ptr ds:dword_88787C, 2
jnz     loc_4F7F9C

loc_4F7EC1:
or      byte ptr ds:dword_88787C+1, 1
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    813h
push    ebp
push    eax
call    dword ptr [edx+50h]
test    eax, eax
jnz     loc_4F7DED
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    0
push    10h
push    1E0h
push    280h
push    eax
call    dword ptr [edx+54h]
mov     [esp+120h+var_11C], 21h ; '!'
mov     [esp+120h+var_B8], 2218h
mov     [esp+120h+var_10C], 1
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551CF4
lea     ecx, [esp+128h+var_120]
push    ecx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jz      short loc_4F7F39
mov     eax, 6
jmp     loc_4F849B

loc_4F7F39:
mov     eax, ds:dword_551CF4
call    sub_4F190F
mov     [esp+120h+var_28], 4
mov     eax, ds:dword_551CF4
mov     edx, [eax]
push    offset dword_551CF8
lea     ecx, [esp+124h+var_28]
push    ecx
push    eax
call    dword ptr [edx+30h]
test    eax, eax
jz      short loc_4F7F74
mov     eax, 7
jmp     loc_4F849B

loc_4F7F74:
mov     ebx, 10h
mov     edx, offset unk_551D24
mov     eax, offset dword_782BE4
call    memcpy_
mov     edx, 1E0h
mov     eax, 280h
call    sub_4F134B
jmp     loc_4F80B7

loc_4F7F9C:
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    8
push    ebp
push    eax
call    dword ptr [edx+50h]
test    eax, eax
jz      short loc_4F7FB8
mov     eax, 8
jmp     loc_4F849B

loc_4F7FB8:
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    eax
call    dword ptr [edx+4Ch]
mov     [esp+120h+var_11C], 1
mov     [esp+120h+var_B8], 200h
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551CF4
lea     ecx, [esp+128h+var_120]
push    ecx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jnz     loc_4F7E3D
mov     [esp+120h+var_11C], 7
mov     [esp+120h+var_114], 280h
mov     [esp+120h+var_118], 1E0h
mov     [esp+120h+var_B8], 40h ; '@'
test    byte ptr ds:dword_88787C, 1
jnz     short loc_4F8025
mov     [esp+120h+var_B8], 2040h
jmp     short loc_4F802D

loc_4F8025:
mov     [esp+120h+var_B8], 840h

loc_4F802D:
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551CF8
lea     ecx, [esp+128h+var_120]
push    ecx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jnz     loc_4F7E8C
mov     eax, ds:dword_551CF8
call    sub_4F190F
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551D08
push    0
push    eax
call    dword ptr [edx+10h]
test    eax, eax
jz      short loc_4F8078
mov     eax, 0Bh
jmp     loc_4F849B

loc_4F8078:
mov     eax, ds:dword_551D08
mov     edx, [eax]
push    ebp
push    0
push    eax
call    dword ptr [edx+20h]
mov     eax, ds:dword_551CF4
mov     edx, [eax]
mov     ecx, ds:dword_551D08
push    ecx
push    eax
call    dword ptr [edx+70h]
test    byte ptr ds:dword_88787C, 1
jnz     short loc_4F80B0
mov     edx, 1E0h
mov     eax, 280h
call    sub_4F134B

loc_4F80B0:
or      byte ptr ds:dword_88787C+1, 2

loc_4F80B7:
test    byte ptr ds:dword_88787C, 1
jnz     short loc_4F8103
mov     eax, ds:dword_551D0C
mov     edx, [eax]
push    0
push    offset dword_551D10
mov     ecx, ds:dword_551CF8
push    ecx
push    offset word_4F0D1E
push    eax
call    dword ptr [edx+20h]
test    eax, eax
jz      short loc_4F8103
cmp     dword ptr [esi], 0
jnz     short loc_4F80F9
mov     dword ptr [esi], 1
mov     eax, ebp
call    sub_4F84A5
jmp     loc_4F7C72

loc_4F80F9:
mov     eax, 0Dh
jmp     loc_4F849B

loc_4F8103:
call    sub_4F1B45
test    eax, eax
jnz     short loc_4F8116
mov     eax, 0Eh
jmp     loc_4F849B

loc_4F8116:
test    byte ptr ds:dword_88787C, 1
jz      short loc_4F8153
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+128h+var_120]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
mov     eax, [esp+120h+var_110]
mov     ds:dword_88776C, eax
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]
jmp     loc_4F8499

loc_4F8153:
mov     eax, ds:dword_551D0C
mov     edx, [eax]
push    0
push    offset dword_551D14
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jz      short loc_4F8173
mov     eax, 0Fh
jmp     loc_4F849B

loc_4F8173:
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ebx, ds:dword_551D14
push    ebx
push    eax
call    dword ptr [edx+14h]
test    eax, eax
jz      short loc_4F8193
mov     eax, 10h
jmp     loc_4F849B

loc_4F8193:
mov     ebx, 2Ch ; ','
xor     edx, edx
lea     eax, [esp+120h+var_54]
call    memset_
mov     [esp+120h+var_54], 2Ch ; ','
xor     edi, edi
mov     [esp+120h+var_50], edi
mov     [esp+120h+var_4C], edi
mov     [esp+120h+var_48], 280h
mov     [esp+120h+var_44], 1E0h
mov     [esp+120h+var_40], 0BF800000h
mov     ebx, 3F800000h
mov     [esp+120h+var_3C], ebx
mov     esi, 40000000h
mov     [esp+120h+var_38], esi
mov     [esp+120h+var_34], esi
mov     [esp+120h+var_30], edi
mov     [esp+120h+var_2C], ebx
mov     edx, 100h
mov     eax, edx
call    sub_4F203B
mov     ds:dword_551D00, eax
mov     edx, 20h ; ' '
mov     eax, edx
call    sub_4F203B
mov     ds:dword_551D04, eax
mov     eax, ds:dword_551D14
mov     edx, [eax]
lea     ecx, [esp+120h+var_54]
push    ecx
push    eax
call    dword ptr [edx+44h]
test    eax, eax
jz      short loc_4F8252
mov     eax, 11h
jmp     loc_4F849B

loc_4F8252:
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ecx, ds:dword_551D14
push    ecx
push    eax
call    dword ptr [edx+30h]
mov     eax, ds:dword_551D0C
mov     edx, [eax]
push    edi
push    offset dword_551D18
push    eax
call    dword ptr [edx+14h]
test    eax, eax
jz      short loc_4F8283
mov     eax, 12h
jmp     loc_4F849B

loc_4F8283:
mov     ebx, 50h ; 'P'
xor     edx, edx
lea     eax, [esp+120h+var_A4]
call    memset_
mov     [esp+120h+var_A4], 50h ; 'P'
mov     [esp+120h+var_90], edi
mov     [esp+120h+var_8C], edi
xor     ebp, ebp
mov     [esp+120h+var_88], edi
mov     [esp+120h+var_84], 3F800000h
lea     edi, [esp+120h+var_A0]
lea     esi, [esp+120h+var_90]
movsd
movsd
movsd
movsd
xor     edx, edx
mov     [esp+120h+var_70], edx
mov     [esp+120h+var_58], 20h ; ' '
mov     eax, ds:dword_551D18
mov     edx, [eax]
lea     ecx, [esp+120h+var_A4]
push    ecx
push    eax
call    dword ptr [edx+0Ch]
mov     eax, ds:dword_551D18
mov     edx, [eax]
push    offset dword_887890
mov     ebx, ds:dword_551D10
push    ebx
push    eax
call    dword ptr [edx+14h]
mov     eax, ds:dword_551D14
mov     edx, [eax]
mov     esi, ds:dword_887890
push    esi
push    eax
call    dword ptr [edx+20h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2
push    2
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ebp
push    3
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    4
push    1
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2
push    5
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ebp
push    6
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    4
push    4
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1
push    1
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    4
push    1
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2
push    11h
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2
push    10h
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    0Fh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    8
push    18h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    5
push    19h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    4
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    16h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    29h ; ')'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    9
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    7
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    0Eh
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
push    1
push    1Fh
push    eax
call    dword ptr [edx+58h]
call    sub_4F1499
push    41200000h
push    3F800000h
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_4F387C

loc_4F8499:
xor     eax, eax

loc_4F849B:
add     esp, 114h
pop     ebp
pop     edi
pop     esi
retn
sub_4F7BBA endp




sub_4F84A5 proc near

; FUNCTION CHUNK AT 004F3508 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebx, eax
call    sub_4F1F39
call    sub_4F1FD4
mov     edx, ds:dword_551D18
test    edx, edx
jz      short loc_4F84D1
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:dword_551D18, ecx

loc_4F84D1:
mov     esi, ds:dword_551D14
test    esi, esi
jz      short loc_4F84E9
mov     edx, [esi]
push    esi
call    dword ptr [edx+8]
xor     edi, edi
mov     ds:dword_551D14, edi

loc_4F84E9:
mov     ebp, ds:dword_551D10
test    ebp, ebp
jz      short loc_4F8501
mov     edx, [ebp+0]
push    ebp
call    dword ptr [edx+8]
xor     eax, eax
mov     ds:dword_551D10, eax

loc_4F8501:
mov     edx, ds:dword_551D0C
test    edx, edx
jz      short loc_4F851B
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:dword_551D0C, ecx

loc_4F851B:
mov     esi, ds:dword_551D08
test    esi, esi
jz      short loc_4F8533
mov     edx, [esi]
push    esi
call    dword ptr [edx+8]
xor     edi, edi
mov     ds:dword_551D08, edi

loc_4F8533:
mov     ebp, ds:dword_551CFC
test    ebp, ebp
jz      short loc_4F854B
mov     edx, [ebp+0]
push    ebp
call    dword ptr [edx+8]
xor     eax, eax
mov     ds:dword_551CFC, eax

loc_4F854B:
mov     edx, ds:dword_551D04
test    edx, edx
jz      short loc_4F8565
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:dword_551D04, ecx

loc_4F8565:
mov     esi, ds:dword_551D00
test    esi, esi
jz      short loc_4F857D
mov     edx, [esi]
push    esi
call    dword ptr [edx+8]
xor     edi, edi
mov     ds:dword_551D00, edi

loc_4F857D:
mov     ebp, ds:dword_551CF8
test    ebp, ebp
jz      short loc_4F8595
mov     edx, [ebp+0]
push    ebp
call    dword ptr [edx+8]
xor     eax, eax
mov     ds:dword_551CF8, eax

loc_4F8595:
mov     edx, ds:dword_551CF4
test    edx, edx
jz      short loc_4F85AF
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:dword_551CF4, ecx

loc_4F85AF:
mov     esi, ds:dword_551CF0
test    esi, esi
jz      loc_4F3508
test    byte ptr ds:dword_88787C+1, 1
jz      short loc_4F85DA
mov     edx, [esi]
push    8
push    ebx
push    esi
call    dword ptr [edx+50h]
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    eax
call    dword ptr [edx+4Ch]

loc_4F85DA:
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
xor     edi, edi
mov     ds:dword_551CF0, edi
jmp     loc_4F3508
sub_4F84A5 endp ; sp-analysis failed




sub_4F85F2 proc near
push    edx
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
add     eax, offset dword_786ED4
add     eax, 18h
pop     edx
retn
sub_4F85F2 endp




sub_4F860C proc near

hdc= dword ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 4
mov     edi, eax
mov     esi, edx
mov     eax, ds:dword_551CF8
mov     edx, [eax]
mov     ecx, esp
push    ecx
push    eax
call    dword ptr [edx+44h]
test    eax, eax
jnz     short loc_4F866D
push    0FFFFFFh        ; color
mov     edx, [esp+14h+hdc]
push    edx             ; hdc
call    cs:__imp_SetTextColor
push    1               ; mode
mov     ecx, [esp+14h+hdc]
push    ecx             ; hdc
call    cs:__imp_SetBkMode
mov     eax, ebx
call    strlen_
push    eax             ; c
push    ebx             ; lpString
push    esi             ; y
push    edi             ; x
mov     ebx, [esp+20h+hdc]
push    ebx             ; hdc
call    cs:__imp_TextOutA
mov     eax, ds:dword_551CF8
mov     ebx, [eax]
mov     esi, [esp+10h+hdc]
push    esi
push    eax
call    dword ptr [ebx+68h]

loc_4F866D:
add     esp, 4
pop     edi
pop     esi
pop     ecx
retn
sub_4F860C endp




sub_4F8674 proc near
push    ecx
push    edx
mov     edx, eax
shl     eax, 2
cmp     edx, 64h ; 'd'
jge     short loc_4F8688
mov     eax, ds:dword_551C90[eax]
jmp     short loc_4F868E

loc_4F8688:
mov     eax, ds:dword_551B50[eax]

loc_4F868E:             ; uType
push    10h
push    offset aError_0 ; "ERROR"
push    eax             ; lpText
push    0               ; hWnd
call    cs:__imp_MessageBoxA
pop     edx
pop     ecx
retn
sub_4F8674 endp

; [00000104 BYTES: COLLAPSED FUNCTION _nfree_]



sub_4F87A6 proc near
push    ecx
mov     ecx, [eax]
mov     [edx], ecx
mov     [eax], edx
pop     ecx
retn
sub_4F87A6 endp




sub_4F87AF proc near
push    ecx
mov     ecx, [eax]
mov     [ebx], ecx
test    byte ptr [edx], 1
jz      short loc_4F87BC
or      dl, 1

loc_4F87BC:
mov     [eax], edx
pop     ecx
retn
sub_4F87AF endp




sub_4F87C0 proc near
mov     byte ptr [eax+7], 64h ; 'd'
retn
sub_4F87C0 endp




sub_4F87C5 proc near
mov     byte ptr [eax+7], 60h ; '`'
retn
sub_4F87C5 endp




sub_4F87CA proc near
mov     byte ptr [eax+7], 6Ch ; 'l'
retn
sub_4F87CA endp




sub_4F87CF proc near
mov     byte ptr [eax+7], 28h ; '('
mov     dword ptr [eax+18h], 3C23D70Ah

loc_4F87DA:
mov     dword ptr [eax+1Ch], 3C23D70Ah
mov     dword ptr [eax+20h], 3C23D70Ah
mov     dword ptr [eax+24h], 3C23D70Ah
retn
sub_4F87CF endp




sub_4F87F0 proc near
mov     byte ptr [eax+7], 2Ch ; ','
mov     dword ptr [eax+28h], 3C23D70Ah
mov     dword ptr [eax+2Ch], 3C23D70Ah
mov     dword ptr [eax+30h], 3C23D70Ah
mov     dword ptr [eax+34h], 3C23D70Ah
retn
sub_4F87F0 endp




sub_4F8811 proc near
mov     byte ptr [eax+7], 30h ; '0'
jmp     short loc_4F87DA
sub_4F8811 endp




sub_4F8817 proc near
mov     byte ptr [eax+7], 38h ; '8'
mov     dword ptr [eax+24h], 3C23D70Ah
mov     dword ptr [eax+28h], 3C23D70Ah
mov     dword ptr [eax+2Ch], 3C23D70Ah
mov     dword ptr [eax+30h], 3C23D70Ah
retn
sub_4F8817 endp




sub_4F8838 proc near

arg_0= dword ptr  4

mov     [eax], dx
mov     [eax+2], bx
mov     [eax+4], cx
mov     edx, [esp+arg_0]
mov     [eax+6], dx
retn    4
sub_4F8838 endp




sub_4F884E proc near
test    edx, edx
jz      short loc_4F8857
or      byte ptr [eax+7], 2
retn

loc_4F8857:
and     byte ptr [eax+7], 0FDh
retn
sub_4F884E endp




sub_4F885C proc near
mov     dword ptr [eax+4], 0E4000000h
retn
sub_4F885C endp




sub_4F8864 proc near
mov     [eax+4], ecx
test    edx, edx
jz      short loc_4F8870
mov     edx, 1

loc_4F8870:
mov     [eax+6], dl
mov     byte ptr [eax+7], 0E8h
retn    4
sub_4F8864 endp




sub_4F887A proc near
push    esi
mov     dword ptr [eax+4], 0EC000000h
mov     esi, [edx]
mov     [eax+8], esi
mov     edx, [edx+4]
mov     [eax+0Ch], edx
mov     [eax+10h], ebx
mov     [eax+14h], ecx
pop     esi
sub_4F887A endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_9]



sub_4F8895 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax]
sar     eax, 10h
mov     ecx, ds:dword_88789C
sar     ecx, 10h
cmp     ecx, eax
jz      short loc_4F88B1
call    sub_4F7B32

loc_4F88B1:
mov     ebx, 5Ch ; '\'
mov     eax, offset dword_88789C
call    memcpy_
pop     edx
pop     ecx
pop     ebx
retn
sub_4F8895 endp




sub_4F88C4 proc near
push    ebx
push    edx
mov     ebx, 5Ch ; '\'
mov     edx, eax
mov     eax, offset unk_8878B0
call    memcpy_
pop     edx
pop     ebx
retn
sub_4F88C4 endp




sub_4F88DA proc near

arg_0= dword ptr  4

mov     [eax], dx
mov     [eax+2], bx
mov     [eax+4], cx
mov     edx, [esp+arg_0]
mov     [eax+6], dx
mov     byte ptr [eax+16h], 1
mov     byte ptr [eax+17h], 1
mov     byte ptr [eax+18h], 0
retn    4
sub_4F88DA endp




sub_4F88FC proc near
push    ebx
push    ecx
push    esi
mov     ebx, edx
shl     edx, 2
sub     edx, 4
add     eax, edx
xor     edx, edx

loc_4F890B:
lea     ecx, [ebx-1]
cmp     edx, ecx
jge     short loc_4F8922
lea     ecx, [eax-4]
mov     esi, ecx
or      si, 1
mov     [eax], esi
mov     eax, ecx
inc     edx
jmp     short loc_4F890B

loc_4F8922:
mov     dword ptr [eax], offset unk_551D4C
or      byte ptr [eax], 1
pop     esi
pop     ecx
pop     ebx
retn
sub_4F88FC endp




sub_4F892F proc near
and     eax, 3
shl     eax, 7
and     edx, 3
shl     edx, 5
or      edx, eax
mov     eax, ecx
and     eax, 100h
sar     eax, 4
or      edx, eax
mov     eax, ebx
and     eax, 3FFh
sar     eax, 6
or      eax, edx
and     ecx, 200h
shl     ecx, 2
or      eax, ecx
retn
sub_4F892F endp




sub_4F8961 proc near
sar     eax, 4
and     eax, 3Fh
shl     edx, 6
or      eax, edx

locret_4F896C:
retn
sub_4F8961 endp

db 0E0h, 9, 0E6h
dword_4F8970 dd 0CFB25925h, 44C7BF11h, 545345h, 0E609E100h
dd 0CFB25925h, 44C7BF11h, 545345h, 52136000h
dd 0CFAA8A89h, 44C7BF11h, 545345h, 52136100h
dd 0CFAA8A89h, 44C7BF11h, 545345h, 44E66200h
dd 0CFAA8A59h, 44C7BF11h, 545345h, 44E66300h
dd 0CFAA8A59h, 44C7BF11h, 545345h, 44E68000h
dd 0CFC92E59h, 44C7BF11h, 545345h, 44E68100h
dd 0CFC92E59h, 44C7BF11h, 545345h, 44E68200h
dd 0CFC92E59h, 44C7BF11h, 545345h, 44E68300h
dd 0CFC92E59h, 44C7BF11h, 545345h, 0E1F7C000h
dd 0D088D2E7h, 0D09A11h, 6EA0C9A0h, 6D02E035h
dd 0CFC9F3A3h, 44C7BF11h, 545345h, 6D02E100h
dd 0CFC9F3A3h, 44C7BF11h, 545345h, 6D02E200h
dd 0CFC9F3A3h, 44C7BF11h, 545345h, 6D02F400h
dd 0CFC9F3A3h, 44C7BF11h, 545345h, 6D02F500h
dd 0CFC9F3A3h, 44C7BF11h, 545345h, 6D02E300h
dd 0CFC9F3A3h, 44C7BF11h, 545345h, 6D02E400h
dd 0CFC9F3A3h, 44C7BF11h, 545345h, 6D02F000h
dd 0CFC9F3A3h, 44C7BF11h, 545345h, 72822000h
dd 0CFD33C55h, 44C7BF11h, 545345h, 6D02F200h
dd 0CFC9F3A3h, 44C7BF11h, 545345h, 6D02F300h
dd 0CFC9F3A3h, 44C7BF11h, 545345h, 1D2B6000h
dd 0CFD5A06Fh, 44C7BF11h, 545345h
db 0
byte_4F8ADD db 61h, 2Bh, 1Dh
dd 0CFD5A06Fh, 44C7BF11h, 545345h, 1D2B7000h
dd 0CFD5A06Fh, 44C7BF11h, 545345h, 541C2000h
dd 0D08E3313h, 0D09A11h, 6EA0C9A0h, 541C2135h
dd 0D08E3313h, 0D09A11h, 6EA0C9A0h, 541C2235h
dd 0D08E3313h, 0D09A11h, 6EA0C9A0h, 541C2335h
dd 0D08E3313h, 0D09A11h, 6EA0C9A0h, 541C2435h
dd 0D08E3313h, 0D09A11h, 6EA0C9A0h, 541C2535h
dd 0D08E3313h, 0D09A11h, 6EA0C9A0h, 541C2635h
dd 0D08E3313h, 0D09A11h, 6EA0C9A0h, 541C2735h
dd 0D08E3313h, 0D09A11h, 6EA0C9A0h, 541C2835h
dd 0D08E3313h, 0D09A11h, 6EA0C9A0h, 541C2935h
dd 0D08E3313h, 0D09A11h, 6EA0C9A0h, 541C2A35h
dd 0D08E3313h, 0D09A11h, 6EA0C9A0h, 541C2B35h
dd 0D08E3313h, 0D09A11h, 6EA0C9A0h
db 35h

loc_4F8BBD:
mov     eax, ds:dword_551F38
mov     edx, [eax]
push    0
push    offset dword_551F40
mov     ecx, [esp+0Ch]
add     ecx, 4
push    ecx
push    eax
call    dword ptr [edx+0Ch]
test    eax, eax
jz      short loc_4F8BE3
mov     eax, 1
retn    8

loc_4F8BE3:
mov     eax, ds:dword_551F40
mov     edx, [eax]
push    offset dword_551F44
push    (offset dword_4F8970+7Dh)
push    eax
call    dword ptr [edx]
mov     eax, [esp+4]
add     eax, 12Ch
mov     edx, offset aMicrosoftSidew ; "Microsoft SideWinder game pad"
call    j_stricmp_
test    eax, eax
jnz     short loc_4F8C18
mov     ds:dword_551FA0, 1

loc_4F8C18:
xor     eax, eax
retn    8



sub_4F8C1D proc near
mov     ds:dword_887A48, eax
sub_4F8C1D endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_2]



sub_4F8C23 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx
push    ecx
push    esi
sub     esp, 18h
mov     ecx, eax
mov     esi, edx
mov     eax, ds:dword_887A48
mov     byte ptr [eax], 0
mov     eax, ds:dword_887A48
mov     byte ptr [eax+1], 40h ; '@'
mov     eax, ds:dword_887A48
mov     byte ptr [eax+2], 0FFh
mov     eax, ds:dword_887A48
mov     byte ptr [eax+3], 0FFh
mov     ebx, 100h
xor     edx, edx
mov     eax, offset byte_88790C
call    memset_
push    0
push    offset dword_551F38
push    500h
push    ecx
call    DirectInputCreateA
test    eax, eax
jnz     loc_4F8D8A
mov     eax, ds:dword_551F38
mov     edx, [eax]
push    1
push    0
push    offset loc_4F8BBD
push    4
push    eax
call    dword ptr [edx+10h]
mov     edx, ds:dword_551F40
test    edx, edx
jz      loc_4F8D4A
mov     eax, edx
mov     edx, [edx]
push    offset dword_506A90
push    eax
call    dword ptr [edx+2Ch]
mov     eax, ds:dword_551F40
mov     edx, [eax]
push    5
push    esi
push    eax
call    dword ptr [edx+34h]
mov     [esp+24h+var_24], 18h
mov     [esp+24h+var_20], 10h
mov     [esp+24h+var_18], 1
mov     [esp+24h+var_14], 0FFFFFC18h
mov     [esp+24h+var_10], 3E8h
xor     edx, edx
mov     [esp+24h+var_1C], edx
mov     eax, ds:dword_551F40
mov     edx, [eax]
mov     ecx, esp
push    ecx
push    4
push    eax
call    dword ptr [edx+18h]
mov     [esp+24h+var_1C], 4
mov     eax, ds:dword_551F40
mov     edx, [eax]
mov     ecx, esp
push    ecx
push    4
push    eax
call    dword ptr [edx+18h]
mov     [esp+24h+var_1C], 8
mov     eax, ds:dword_551F40
mov     edx, [eax]
mov     ecx, esp
push    ecx
push    4
push    eax
call    dword ptr [edx+18h]
mov     [esp+24h+var_1C], 14h
mov     eax, ds:dword_551F40
mov     edx, [eax]
mov     ecx, esp
push    ecx
push    4
push    eax
call    dword ptr [edx+18h]
mov     eax, ds:dword_551F40
mov     edx, [eax]
push    eax
call    dword ptr [edx+1Ch]

loc_4F8D4A:
mov     eax, ds:dword_551F38
mov     edx, [eax]
push    0
push    offset dword_551F3C
push    offset byte_4F8ADD
push    eax
call    dword ptr [edx+0Ch]
mov     eax, ds:dword_551F3C
mov     edx, [eax]
push    offset dword_507AB0
push    eax
call    dword ptr [edx+2Ch]
mov     eax, ds:dword_551F3C
mov     edx, [eax]
push    0Ah
push    esi
push    eax
call    dword ptr [edx+34h]
mov     eax, ds:dword_551F3C
mov     edx, [eax]
push    eax
call    dword ptr [edx+1Ch]

loc_4F8D8A:
add     esp, 18h
pop     esi
pop     ecx
pop     ebx
sub_4F8C23 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_3]



sub_4F8D91 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edx, ds:dword_551F40
test    edx, edx
jz      short loc_4F8DBC
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+20h]
mov     eax, ds:dword_551F40
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:dword_551F40, ecx

loc_4F8DBC:
mov     ebx, ds:dword_551F44
test    ebx, ebx
jz      short loc_4F8DD4
mov     edx, [ebx]
push    ebx
call    dword ptr [edx+8]
xor     esi, esi
mov     ds:dword_551F44, esi

loc_4F8DD4:
mov     edi, ds:dword_551F3C
test    edi, edi
jz      short loc_4F8DF7
mov     edx, [edi]
push    edi
call    dword ptr [edx+20h]
mov     eax, ds:dword_551F3C
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
xor     ebp, ebp
mov     ds:dword_551F3C, ebp

loc_4F8DF7:
mov     eax, ds:dword_551F38
test    eax, eax
jz      short loc_4F8E0E
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
xor     edx, edx
mov     ds:dword_551F38, edx

loc_4F8E0E:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F8D91 endp




sub_4F8E15 proc near

var_5C= dword ptr -5Ch
var_58= dword ptr -58h
var_2C= byte ptr -2Ch

push    ebx
push    ecx
push    edx
sub     esp, 50h
mov     eax, ds:dword_887A48
mov     word ptr [eax+2], 0FFF9h
cmp     ds:dword_551F40, 0
jz      loc_4F8F22
jmp     short loc_4F8E3D

loc_4F8E35:
cmp     ebx, 8007001Eh
jnz     short loc_4F8E6E

loc_4F8E3D:
mov     eax, ds:dword_551F44
mov     edx, [eax]
push    eax
call    dword ptr [edx+64h]
mov     eax, ds:dword_551F40
mov     edx, [eax]
mov     ecx, esp
push    ecx
push    50h ; 'P'
push    eax
call    dword ptr [edx+24h]
mov     ebx, eax
cmp     eax, 8007001Eh
jnz     short loc_4F8E35
mov     eax, ds:dword_551F40
mov     edx, [eax]
push    eax
call    dword ptr [edx+1Ch]
jmp     short loc_4F8E35

loc_4F8E6E:
test    ebx, ebx
jnz     loc_4F8F22
cmp     [esp+5Ch+var_5C], 1F4h
jle     short loc_4F8E91
mov     eax, ds:dword_887A48
mov     dx, ds:word_551F8A
not     edx
and     [eax+2], dx

loc_4F8E91:
cmp     [esp+5Ch+var_5C], 0FFFFFE0Ch
jge     short loc_4F8EAC
mov     eax, ds:dword_887A48
mov     dx, ds:word_551F88
not     edx
and     [eax+2], dx

loc_4F8EAC:
cmp     [esp+5Ch+var_58], 1F4h
jle     short loc_4F8EC8
mov     eax, ds:dword_887A48
mov     dx, ds:word_551F86
not     edx
and     [eax+2], dx

loc_4F8EC8:
cmp     [esp+5Ch+var_58], 0FFFFFE0Ch
jge     short loc_4F8EE4
mov     eax, ds:dword_887A48
mov     dx, ds:word_551F84
not     edx
and     [eax+2], dx

loc_4F8EE4:
xor     eax, eax
jmp     short loc_4F8EEE

loc_4F8EE8:
inc     eax
cmp     eax, 9
jge     short loc_4F8F22

loc_4F8EEE:
lea     edx, [eax+eax]
xor     ecx, ecx
mov     cl, ds:byte_887A34[edx]
test    [esp+ecx+5Ch+var_2C], 80h
jz      short loc_4F8EE8
mov     ecx, ds:dword_887A48
mov     dl, ds:byte_887A35[edx]
and     edx, 0FFh
mov     dx, ds:word_551F84[edx*2]
not     edx
and     [ecx+2], dx
jmp     short loc_4F8EE8

loc_4F8F22:
cmp     ds:dword_551F3C, 0
jz      short loc_4F8F60
jmp     short loc_4F8F35

loc_4F8F2D:
cmp     ebx, 8007001Eh
jnz     short loc_4F8F60

loc_4F8F35:
mov     eax, ds:dword_551F3C
mov     edx, [eax]
push    offset byte_88790C
push    100h
push    eax
call    dword ptr [edx+24h]
mov     ebx, eax
cmp     eax, 8007001Eh
jnz     short loc_4F8F2D
mov     eax, ds:dword_551F3C
mov     edx, [eax]
push    eax
call    dword ptr [edx+1Ch]
jmp     short loc_4F8F2D

loc_4F8F60:
xor     eax, eax
jmp     short loc_4F8F6A

loc_4F8F64:
inc     eax
cmp     eax, 14h
jge     short loc_4F8FA6

loc_4F8F6A:
lea     edx, [eax+eax]
mov     bh, ds:byte_887A0C[edx]
test    bh, bh
jz      short loc_4F8FA6
xor     ecx, ecx
mov     cl, bh
cmp     ds:byte_88790C[ecx], 0
jz      short loc_4F8F64
mov     ecx, ds:dword_887A48
mov     dl, ds:byte_887A0D[edx]
and     edx, 0FFh
mov     dx, ds:word_551F84[edx*2]
not     edx
and     [ecx+2], dx
jmp     short loc_4F8F64

loc_4F8FA6:
add     esp, 50h
pop     edx
pop     ecx
pop     ebx
retn
sub_4F8E15 endp




sub_4F8FAD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx

loc_4F8FB4:
mov     eax, edx
shl     eax, 3
mov     bl, ds:byte_551D50[eax]
test    bl, bl
jz      short loc_4F8FD1
mov     al, bl
and     eax, 0FFh
cmp     eax, ecx
jz      short loc_4F8FD1
inc     edx
jmp     short loc_4F8FB4

loc_4F8FD1:
mov     eax, edx
shl     eax, 3
cmp     ds:byte_551D50[eax], 0
jz      short loc_4F8FE9
add     eax, offset byte_551D50
inc     eax
pop     edx
pop     ecx
pop     ebx
retn

loc_4F8FE9:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4F8FAD endp




sub_4F8FEF proc near
push    ebx
push    ecx
push    edx
cmp     ds:dword_551F3C, 0
jz      short loc_4F9049
jmp     short loc_4F9005

loc_4F8FFD:
cmp     ebx, 8007001Eh
jnz     short loc_4F9030

loc_4F9005:
mov     eax, ds:dword_551F3C
mov     edx, [eax]
push    offset byte_88790C
push    100h
push    eax
call    dword ptr [edx+24h]
mov     ebx, eax
cmp     eax, 8007001Eh
jnz     short loc_4F8FFD
mov     eax, ds:dword_551F3C
mov     edx, [eax]
push    eax
call    dword ptr [edx+1Ch]
jmp     short loc_4F8FFD

loc_4F9030:
xor     eax, eax
jmp     short loc_4F903C

loc_4F9034:
inc     eax
cmp     eax, 100h
jge     short loc_4F9049

loc_4F903C:
cmp     ds:byte_88790C[eax], 0
jz      short loc_4F9034
pop     edx
pop     ecx
pop     ebx
retn

loc_4F9049:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4F8FEF endp




sub_4F904F proc near

var_2C= byte ptr -2Ch

push    ebx
push    ecx
push    edx
sub     esp, 50h
cmp     ds:dword_551F40, 0
jz      short loc_4F90B3
jmp     short loc_4F9068

loc_4F9060:
cmp     ebx, 8007001Eh
jnz     short loc_4F9099

loc_4F9068:
mov     eax, ds:dword_551F44
mov     edx, [eax]
push    eax
call    dword ptr [edx+64h]
mov     eax, ds:dword_551F40
mov     edx, [eax]
mov     ebx, esp
push    ebx
push    50h ; 'P'
push    eax
call    dword ptr [edx+24h]
mov     ebx, eax
cmp     eax, 8007001Eh
jnz     short loc_4F9060
mov     eax, ds:dword_551F40
mov     edx, [eax]
push    eax
call    dword ptr [edx+1Ch]
jmp     short loc_4F9060

loc_4F9099:
test    ebx, ebx
jnz     short loc_4F90B3
xor     eax, eax
jmp     short loc_4F90A7

