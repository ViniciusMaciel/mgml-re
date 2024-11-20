loc_4350DC:
mov     eax, [esp+48h+var_40]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     edx, eax
mov     ds:dword_559918, edx

loc_4350F4:
mov     eax, [esp+48h+var_48]
shl     eax, 18h
cmp     eax, 80000000h
jnb     short loc_435157
mov     eax, [esp+48h+var_48]
shl     eax, 10h
cmp     eax, 80000000h
jnb     short loc_435120
mov     [esp+48h+var_38], 1F0000h
mov     [esp+48h+var_34], 1F1F1F00h
jmp     short loc_43514E

loc_435120:
mov     eax, [ebp+0]
mov     [esp+48h+var_38], eax
mov     eax, [ebp+4]
mov     [esp+48h+var_34], eax
mov     ecx, [esp+48h+var_20]
cmp     ecx, 3
jbe     short loc_43514E
mov     eax, 7
sub     eax, ecx
mov     al, byte ptr ds:dword_559948[eax]
and     eax, 0FFh
jmp     loc_435258

loc_43514E:
mov     eax, [esp+48h+var_28]
jmp     loc_435258

loc_435157:
mov     eax, [ebp+0]
mov     [esp+48h+var_38], eax
mov     ds:dword_559948, eax
mov     eax, [ebp+4]
mov     [esp+48h+var_34], eax
mov     ds:dword_55994C, eax
call    sub_43530E
test    byte ptr [esp+48h+var_18+3], 10h
jnz     short loc_43517F

loc_43517B:
mov     [esp+48h+var_1C], eax

loc_43517F:
add     esi, 10h
add     ebp, 8

loc_435185:
mov     ebx, [esp+48h+var_20]
test    ebx, ebx
jbe     loc_434FA9
mov     eax, [esp+48h+var_24]
mov     word ptr ds:unk_5598F6, ax
mov     word ptr ds:unk_5598FE, ax
mov     word ptr ds:dword_559906, ax
lea     edi, [ebx-1]
mov     [esp+48h+var_20], edi
test    byte ptr [esp+48h+var_48], 1
jz      loc_434DF0
movsx   ax, byte ptr [esi]
mov     cl, byte ptr [esp+48h+var_14]
shl     eax, cl
mov     ds:word_5598F8, ax
mov     edx, eax
neg     edx
mov     ds:word_5598F8, dx
movsx   ax, byte ptr [esi+2]
shl     eax, cl
mov     word ptr ds:dword_5598F2+2, ax
movsx   ax, byte ptr [esi+3]
shl     eax, cl
mov     ds:word_559900, ax
mov     ebx, eax
neg     ebx
mov     ds:word_559900, bx
movsx   ax, byte ptr [esi+5]
shl     eax, cl
mov     word ptr ds:dword_5598FA+2, ax
movsx   ax, byte ptr [esi+6]
shl     eax, cl
mov     word ptr ds:dword_559906+2, ax
mov     ecx, eax
neg     ecx
mov     word ptr ds:dword_559906+2, cx
movsx   ax, byte ptr [esi+8]
mov     cl, byte ptr [esp+48h+var_14]
shl     eax, cl
mov     word ptr ds:dword_559902+2, ax
movsx   ax, byte ptr [esi+9]
shl     eax, cl
mov     word ptr ds:dword_55990E+2, ax
mov     edi, eax
neg     edi
mov     word ptr ds:dword_55990E+2, di
movsx   ax, byte ptr [esi+0Bh]
shl     eax, cl
mov     word ptr ds:dword_55990A+2, ax
jmp     loc_434E5B

loc_435258:
mov     edx, eax
and     edx, 7
shl     edx, 5
shr     eax, 3
mov     ecx, eax
shl     ecx, 0Dh
or      ecx, edx
shl     edx, 10h
or      ecx, edx
shl     eax, 1Dh
or      eax, ecx
mov     ecx, [esp+48h+var_38]
add     ecx, eax
mov     [esp+48h+var_38], ecx
add     [esp+48h+var_34], eax
mov     edx, ecx
and     edx, 0FFFFh
mov     eax, ds:dword_55991C
or      edx, eax
mov     [edi+0Ch], edx
mov     edx, [esp+48h+var_38]
shr     edx, 10h
mov     eax, ds:dword_559914
or      edx, eax
mov     [edi+14h], edx
mov     eax, [esp+48h+var_34]
and     eax, 0FFFFh
mov     [edi+1Ch], eax
test    byte ptr [esp+48h+var_18+3], 20h
jnz     short loc_4352C2
mov     eax, [esp+48h+var_34]
shr     eax, 10h
mov     [edi+24h], eax

loc_4352C2:
test    byte ptr [esp+48h+var_18+3], 10h
jz      short loc_4352D9
mov     eax, [esp+48h+var_1C]
mov     eax, [eax]
mov     [edi], eax
mov     eax, [esp+48h+var_1C]
mov     [eax], edi
jmp     short loc_4352E8

loc_4352D9:
mov     eax, ds:dword_559918
mov     edx, [eax]
mov     [edi], edx
mov     [eax], edi
mov     [esp+48h+var_1C], edi

loc_4352E8:
lea     eax, [edi+4]
call    sub_4EFFF8
add     ds:dword_77E6DC, 48h ; 'H'
jmp     loc_43517F

loc_4352FC:
test    byte ptr [esp+48h+var_18+3], 10h
jnz     loc_43517F
xor     eax, eax
jmp     loc_43517B
sub_434D25 endp




sub_43530E proc near

var_64= word ptr -64h
var_62= word ptr -62h
var_60= word ptr -60h
var_5C= dword ptr -5Ch
var_58= word ptr -58h
var_54= dword ptr -54h
var_50= word ptr -50h
var_4C= dword ptr -4Ch
var_48= byte ptr -48h
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
sub     esp, 4Ch
mov     [esp+64h+var_28], offset dword_559948
mov     eax, ds:dword_559944
and     eax, 0F7FFFFFFh
mov     [esp+64h+var_40], eax
mov     ebp, ds:dword_5598FA
sar     ebp, 10h
mov     ecx, ds:dword_5598F2
sar     ecx, 10h
lea     eax, [ecx+ebp]
sar     eax, 1
mov     [esp+64h+var_64], ax
mov     esi, ds:dword_5598F2+2
sar     esi, 10h
mov     edx, ds:dword_5598FA+2
sar     edx, 10h
lea     eax, [esi+edx]
sar     eax, 1
mov     [esp+64h+var_62], ax
mov     ebx, dword ptr ds:unk_5598F6
sar     ebx, 10h
mov     eax, dword ptr ds:unk_5598FE
sar     eax, 10h
lea     edi, [ebx+eax]
sar     edi, 1
mov     [esp+64h+var_44], edi
mov     edi, [esp+64h+var_44]
mov     [esp+64h+var_60], di
mov     edi, ds:dword_559902
sar     edi, 10h
add     ecx, edi
sar     ecx, 1
mov     word ptr [esp+64h+var_5C], cx
mov     ecx, ds:dword_559902+2
sar     ecx, 10h
add     esi, ecx
sar     esi, 1
mov     word ptr [esp+64h+var_5C+2], si
mov     ecx, ds:dword_559906
sar     ecx, 10h
add     ecx, ebx
sar     ecx, 1
mov     [esp+64h+var_58], cx
mov     ecx, ds:dword_55990A
sar     ecx, 10h
add     ecx, ebp
sar     ecx, 1
mov     word ptr [esp+64h+var_54], cx
mov     ecx, ds:dword_55990A+2
sar     ecx, 10h
add     edx, ecx
sar     edx, 1
mov     word ptr [esp+64h+var_54+2], dx
mov     edx, ds:dword_55990E
sar     edx, 10h
add     eax, edx
sar     eax, 1
mov     [esp+64h+var_50], ax
mov     eax, esp
call    sub_4EFD0C
call    sub_4EFE75
mov     edx, [esp+6]
sar     edx, 10h
mov     eax, [esp+0Eh]
sar     eax, 10h
add     eax, edx
sar     eax, 1
mov     [esp+64h+var_64], ax
mov     edx, [esp+64h+var_5C]
sar     edx, 10h
mov     eax, [esp+64h+var_54]
sar     eax, 10h
add     eax, edx
sar     eax, 1
mov     [esp+64h+var_62], ax
mov     eax, [esp+64h+var_5C+2]
sar     eax, 10h
mov     edx, [esp+64h+var_54+2]
sar     edx, 10h
add     eax, edx
sar     eax, 1
mov     [esp+64h+var_60], ax
mov     eax, ds:dword_55990A
sar     eax, 10h
mov     edx, ds:dword_559902
sar     edx, 10h
add     eax, edx
sar     eax, 1
mov     word ptr [esp+64h+var_5C], ax
mov     eax, ds:dword_55990A+2
sar     eax, 10h
mov     edx, ds:dword_559902+2
sar     edx, 10h
add     eax, edx
sar     eax, 1
mov     word ptr [esp+64h+var_5C+2], ax
mov     edx, ds:dword_55990E
sar     edx, 10h
mov     eax, ds:dword_559906
sar     eax, 10h
add     eax, edx
sar     eax, 1
mov     [esp+64h+var_58], ax
mov     ebx, offset unk_5598E4
mov     edx, offset unk_5598D4
mov     eax, offset unk_5598CC
call    sub_4F0028
mov     ebx, offset unk_55993C
mov     edx, offset unk_559934
mov     eax, offset unk_559930
call    sub_4F00E9
mov     eax, esp
call    sub_4EFD0C
call    sub_4EFE75
xor     ebx, ebx
mov     bl, byte ptr ds:dword_559948+2
xor     edx, edx
mov     dl, byte ptr ds:dword_559948
lea     eax, [edx+ebx]
sar     eax, 1
mov     ds:byte_559950, al
xor     eax, eax
mov     al, byte ptr ds:dword_559948+1
movzx   ebp, byte ptr ds:dword_559948+3
lea     ecx, [eax+ebp]
sar     ecx, 1
mov     [esp+64h+var_44], ecx
mov     cl, byte ptr [esp+64h+var_44]
mov     ds:byte_559951, cl
xor     ecx, ecx
mov     cl, byte ptr ds:dword_55994C
add     edx, ecx
sar     edx, 1
mov     [esp+64h+var_44], edx
mov     dl, byte ptr [esp+64h+var_44]
mov     ds:byte_559952, dl
xor     edx, edx
mov     dl, byte ptr ds:dword_55994C+1
add     eax, edx
sar     eax, 1
mov     [esp+64h+var_44], eax
mov     al, byte ptr [esp+64h+var_44]
mov     ds:byte_559953, al
movzx   esi, byte ptr ds:dword_55994C+2
add     ebx, esi
sar     ebx, 1
mov     ds:byte_559956, bl
xor     eax, eax
mov     al, byte ptr ds:dword_55994C+3
add     ebp, eax
sar     ebp, 1
mov     [esp+64h+var_44], ebp
mov     bl, byte ptr [esp+64h+var_44]
mov     ds:byte_559957, bl
add     ecx, esi
sar     ecx, 1
mov     ds:byte_559958, cl
add     eax, edx
sar     eax, 1
mov     ds:byte_559959, al
xor     eax, eax
mov     al, ds:byte_559950
xor     edx, edx
mov     dl, cl
add     eax, edx
sar     eax, 1
mov     ds:byte_559954, al
xor     edx, edx
mov     dl, ds:byte_559953
xor     eax, eax
mov     al, bl
add     eax, edx
sar     eax, 1
mov     ds:byte_559955, al
mov     eax, offset unk_5598DC
call    sub_4F000C
mov     eax, offset unk_5598EC
call    sub_4F001A
lea     ebx, [esp+64h+var_48]
mov     edx, offset unk_559940
mov     eax, offset unk_559938
call    sub_4F00E9
mov     eax, ds:dword_55991C
mov     [esp+64h+var_34], eax
xor     ebp, ebp
mov     [esp+64h+var_1C], ebp

loc_4355CF:
xor     eax, eax
mov     edx, [esp+64h+var_1C]
mov     al, ds:byte_511744[edx]
xor     edx, edx
mov     ecx, [esp+64h+var_1C]
mov     dl, ds:byte_511745[ecx]
mov     [esp+64h+var_24], edx
xor     edx, edx
mov     dl, ds:byte_511746[ecx]
mov     [esp+64h+var_20], edx
xor     ecx, ecx
mov     edx, [esp+64h+var_1C]
mov     cl, ds:byte_511747[edx]
mov     ebp, ds:dword_77E6DC
mov     [esp+64h+var_38], ebp
mov     esi, eax
add     edx, 4
mov     [esp+64h+var_1C], edx
lea     edx, [ebp+48h]
mov     [esp+64h+var_44], edx
mov     ds:dword_77E6DC, edx
lea     edi, [ebp+28h]
lea     esi, unk_5598AC[esi*8]
movsd
movsd
mov     esi, [esp+64h+var_24]
lea     edi, [ebp+30h]
lea     esi, unk_5598AC[esi*8]
movsd
movsd
mov     esi, [esp+64h+var_20]
lea     edi, [ebp+38h]
lea     esi, unk_5598AC[esi*8]
movsd
movsd
mov     esi, ecx
lea     edi, [ebp+40h]
lea     esi, unk_5598AC[esi*8]
movsd
movsd
mov     edx, ds:dword_559944
mov     [ebp+4], edx
lea     edx, [eax+eax]
add     edx, [esp+64h+var_28]
mov     dx, [edx]
and     edx, 0FFFFh
mov     ebx, [esp+64h+var_34]
or      ebx, edx
mov     [ebp+0Ch], ebx
mov     edx, [esp+64h+var_24]
add     edx, edx
add     edx, [esp+64h+var_28]
xor     ebx, ebx
mov     bx, [edx]
mov     edx, ds:dword_559914
or      ebx, edx
mov     [ebp+14h], ebx
mov     esi, [esp+64h+var_20]
add     esi, esi
mov     edi, [esp+64h+var_28]
add     esi, edi
xor     edx, edx
mov     dx, [esi]
mov     [ebp+1Ch], edx
lea     edx, [ecx+ecx]
add     edx, edi
mov     dx, [edx]
and     edx, 0FFFFh
mov     [ebp+24h], edx
mov     ecx, ds:dword_559920[ecx*4]
mov     edx, [esp+64h+var_20]
mov     ebx, ds:dword_559920[edx*4]
mov     edx, [esp+64h+var_24]
mov     edx, ds:dword_559920[edx*4]
mov     eax, ds:dword_559920[eax*4]
call    sub_4EFCCB
mov     eax, ebp
call    sub_4F0242
mov     eax, [esp+64h+var_44]
mov     [ebp+0], eax
cmp     [esp+64h+var_1C], 10h
jl      loc_4355CF
mov     [esp+64h+var_3C], ebp
mov     [esp+64h+var_1C], 10h

loc_43570C:
xor     eax, eax
mov     edx, [esp+64h+var_1C]
mov     al, ds:byte_511744[edx]
mov     [esp+64h+var_24], eax
xor     eax, eax
mov     al, ds:byte_511745[edx]
mov     [esp+64h+var_20], eax
xor     ecx, ecx
mov     cl, ds:byte_511746[edx]
mov     eax, ecx
shl     eax, 3
mov     [esp+64h+var_2C], eax
lea     ebp, [edx+3]
mov     [esp+64h+var_1C], ebp
mov     ebx, offset unk_5598AC
add     ebx, eax
mov     eax, [esp+64h+var_20]
shl     eax, 3
mov     [esp+64h+var_30], eax
mov     edx, offset unk_5598AC
add     edx, eax
mov     esi, [esp+64h+var_24]
shl     esi, 3
mov     eax, offset unk_5598AC
add     eax, esi
call    sub_4EFC99
call    sub_4EFD2E
lea     eax, [esp+64h+var_4C]
call    sub_4EFFE2
cmp     [esp+64h+var_4C], 0
jle     loc_435841
mov     ebp, ds:dword_77E6DC
mov     [esp+64h+var_3C], ebp
lea     eax, [ebp+38h]
mov     [esp+64h+var_44], eax
mov     ds:dword_77E6DC, eax
lea     edi, [ebp+20h]
lea     esi, unk_5598AC[esi]
movsd
movsd
lea     edi, [ebp+28h]
mov     esi, [esp+64h+var_30]
lea     esi, unk_5598AC[esi]
movsd
movsd
lea     edi, [ebp+30h]
mov     esi, [esp+64h+var_2C]
lea     esi, unk_5598AC[esi]
movsd
movsd
mov     eax, [esp+64h+var_40]
mov     [ebp+4], eax
mov     eax, [esp+64h+var_24]
add     eax, eax
add     eax, [esp+64h+var_28]
mov     ax, [eax]
and     eax, 0FFFFh
mov     edx, [esp+64h+var_34]
or      edx, eax
mov     [ebp+0Ch], edx
mov     eax, [esp+64h+var_20]
add     eax, eax
mov     ebx, [esp+64h+var_28]
add     eax, ebx
xor     edx, edx
mov     dx, [eax]
mov     eax, ds:dword_559914
or      edx, eax
mov     [ebp+14h], edx
lea     eax, [ecx+ecx]
add     eax, ebx
mov     ax, [eax]
and     eax, 0FFFFh
mov     [ebp+1Ch], eax
mov     ebx, ds:dword_559920[ecx*4]
mov     edx, [esp+64h+var_20]
mov     edx, ds:dword_559920[edx*4]
mov     eax, [esp+64h+var_24]
mov     eax, ds:dword_559920[eax*4]
call    sub_4EFCB9
mov     eax, ebp
call    sub_4F0165
mov     eax, [esp+64h+var_44]
mov     [ebp+0], eax

loc_435841:
cmp     [esp+64h+var_1C], 1Ch
jl      loc_43570C
mov     edx, [esp+64h+var_38]
sub     edx, 0D8h
mov     eax, ds:dword_559918
mov     ebx, [esp+64h+var_3C]
call    sub_4F87AF
mov     eax, [esp+64h+var_38]
add     esp, 4Ch
jmp     loc_433C29
sub_43530E endp

dword_435870 dd 0FF0100FFh, 0FF0100h
db 1
byte_435879 db 3 dup(0FFh)
dd 1000000h
add     [ecx], eax



sub_435882 proc near
push    ebx
push    edx
push    esi
mov     edx, offset unk_559A30
mov     eax, offset dword_55995C
call    sub_4EECF9
mov     ah, 3
mov     byte ptr ds:dword_55995C, ah
mov     ds:byte_559980, ah
xor     edx, edx
mov     ds:dword_559A44, edx
mov     ds:dword_511D98, 5
xor     dh, dh
mov     byte ptr ds:dword_560BDC, dh
xor     ebx, ebx
mov     ds:dword_511D94, ebx
xor     esi, esi
mov     ds:dword_511DA8, esi
pop     esi
pop     edx
pop     ebx
retn
sub_435882 endp

jpt_435969 dd offset def_435969 ; jump table for switch statement
dd offset loc_435A37
dd offset loc_43607A
dd offset loc_435ABF
dd offset loc_435B8A
dd offset loc_435BF9



sub_4358E8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     eax, offset byte_559980
call    sub_435D7E
mov     dx, word ptr ds:dword_559978
test    dx, dx
jle     short loc_43590E
mov     ebx, edx
dec     ebx
mov     word ptr ds:dword_559978, bx

loc_43590E:
mov     cx, word ptr ds:dword_559978+2
test    cx, cx
jle     short loc_435924
mov     esi, ecx
dec     esi
mov     word ptr ds:dword_559978+2, si

loc_435924:
xor     edx, edx
mov     ds:dword_559A40, edx
xor     eax, eax
mov     al, byte ptr ds:dword_560BDC
mov     ecx, ds:dword_511D94
cmp     eax, ecx
jz      short loc_435953
test    ecx, ecx
jz      short loc_43594D
mov     ds:dword_511D98, 3
jmp     short loc_435953

loc_43594D:
mov     ds:dword_511D98, edx

loc_435953:
xor     eax, eax
mov     al, byte ptr ds:dword_560BDC
mov     ds:dword_511D94, eax
mov     eax, ds:dword_511D98
cmp     eax, 5          ; switch 6 cases
ja      short def_435969 ; jumptable 00435969 default case, case 0
jmp     jpt_435969[eax*4] ; switch jump

def_435969:             ; jumptable 00435969 default case, case 0
mov     ds:dword_511D9C, 0Ah
mov     ds:dword_511D98, 1
mov     bh, 1
mov     byte ptr ds:dword_559968+2, bh
mov     ds:byte_55998E, bh
mov     ds:byte_5599B2, bh
mov     ds:byte_5599D6, bh
mov     ds:byte_5599FA, bh
mov     byte ptr ds:dword_559A1C+2, bh
mov     word ptr ds:dword_559970, 8
mov     word ptr ds:dword_559970+2, 88h
mov     ds:word_559994, 118h
mov     ds:word_559996, 0BEh
mov     edx, 120h
mov     ds:word_5599B8, dx
mov     ebx, 10h
mov     ds:word_5599BA, bx
mov     ds:word_5599DC, dx
mov     ds:word_5599DE, bx
mov     ds:word_559A00, dx
mov     ds:word_559A02, bx
xor     edx, edx
mov     word ptr ds:dword_559A24, dx
mov     word ptr ds:dword_559A24+2, 18h
mov     ds:dword_511DA0, 8
mov     ds:dword_511DA4, 60h ; '`'
mov     ds:dword_511DA8, 1
jmp     loc_435C27

loc_435A37:             ; jumptable 00435969 case 1
mov     ebp, ds:dword_511D9C
dec     ebp
mov     ds:dword_511D9C, ebp
cmp     ebp, 0FFFFFFFFh
jz      short loc_435AB0
mov     eax, 0Ah
sub     eax, ebp
shl     eax, 3
mov     edx, 8
sub     edx, eax
mov     word ptr ds:dword_559970, dx
mov     edx, eax
add     edx, 118h
mov     ds:word_559994, dx
mov     edx, eax
add     edx, 120h
mov     ds:word_5599B8, dx
mov     ds:word_5599DC, dx
mov     ds:word_559A00, dx
mov     word ptr ds:dword_559A24, ax
mov     ebx, eax
neg     ebx
mov     word ptr ds:dword_559A24, bx

loc_435A9E:
mov     edx, 8
sub     edx, eax
mov     ds:dword_511DA0, edx
jmp     loc_435C27

loc_435AB0:
mov     ds:dword_511D98, 2
jmp     loc_435C27

loc_435ABF:             ; jumptable 00435969 case 3
mov     ds:dword_511D9C, 0Ah
mov     ds:dword_511D98, 4
mov     ch, 1
mov     byte ptr ds:dword_559968+2, ch
mov     ds:byte_55998E, ch
mov     ds:byte_5599B2, ch
mov     ds:byte_5599D6, ch
mov     ds:byte_5599FA, ch
mov     byte ptr ds:dword_559A1C+2, ch
mov     eax, 50h ; 'P'
mov     edx, 8
sub     edx, eax
mov     word ptr ds:dword_559970, dx
mov     word ptr ds:dword_559970+2, 88h
mov     edx, eax
add     edx, 118h
mov     ds:word_559994, dx
mov     ds:word_559996, 0BEh
mov     edx, eax
add     edx, 120h
mov     ds:word_5599B8, dx
mov     ecx, 10h
mov     ds:word_5599BA, cx
mov     ds:word_5599DC, dx
mov     ds:word_5599DE, cx
mov     ds:word_559A00, dx
mov     ds:word_559A02, cx
mov     word ptr ds:dword_559A24, ax
neg     eax
mov     word ptr ds:dword_559A24, ax
mov     word ptr ds:dword_559A24+2, 18h
mov     ds:dword_511DA0, 0FFFFFFB8h
jmp     loc_435C27

loc_435B8A:             ; jumptable 00435969 case 4
mov     eax, ds:dword_511D9C
dec     eax
mov     ds:dword_511D9C, eax
cmp     eax, 0FFFFFFFFh
jz      short loc_435BED
shl     eax, 3
mov     edx, 8
sub     edx, eax
mov     word ptr ds:dword_559970, dx
mov     edx, eax
add     edx, 118h
mov     ds:word_559994, dx
mov     edx, eax
add     edx, 120h
mov     ds:word_5599B8, dx
mov     ds:word_5599DC, dx
mov     ds:word_559A00, dx
mov     word ptr ds:dword_559A24, ax
mov     edi, eax
neg     edi
mov     word ptr ds:dword_559A24, di
jmp     loc_435A9E

loc_435BED:
mov     ds:dword_511D98, 5
jmp     short loc_435C27

loc_435BF9:             ; jumptable 00435969 case 5
xor     ah, ah
mov     byte ptr ds:dword_559968+2, ah
mov     ds:byte_55998E, ah
mov     ds:byte_5599B2, ah
mov     ds:byte_5599D6, ah
mov     ds:byte_5599FA, ah
mov     byte ptr ds:dword_559A1C+2, ah
xor     ebp, ebp
mov     ds:dword_511DA8, ebp

loc_435C27:
test    byte ptr ds:dword_55995C, 1
jz      short loc_435C3A
mov     eax, offset dword_55995C
call    sub_435CD1

loc_435C3A:
test    byte ptr ds:dword_55995C, 2
jz      short loc_435C4D
mov     eax, offset dword_55995C
call    sub_435E34

loc_435C4D:
cmp     ds:byte_5F84D5, 0
jz      short loc_435C69
test    ds:byte_559980, 2
jz      short loc_435C69
mov     eax, offset byte_559980
call    sub_436081

loc_435C69:
xor     edx, edx
jmp     short loc_435C73

loc_435C6D:
inc     edx
cmp     edx, 3
jnb     short loc_435CB5

loc_435C73:
lea     ecx, [edx+2]
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 2
test    byte ptr ds:dword_55995C[eax], 1
jz      short loc_435C93
add     eax, offset dword_55995C
call    sub_435E15

loc_435C93:
lea     ecx, [edx+2]
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 2
test    byte ptr ds:dword_55995C[eax], 2
jz      short loc_435C6D
add     eax, offset dword_55995C
call    sub_436210
jmp     short loc_435C6D

loc_435CB5:
test    byte ptr ds:dword_559A10, 2
jz      loc_43607A      ; jumptable 00435969 case 2
mov     eax, offset dword_559A10
call    sub_4363B5
jmp     loc_43607A      ; jumptable 00435969 case 2
sub_4358E8 endp




sub_435CD1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_435CD7[edx*4]
pop     edx
retn
sub_435CD1 endp




sub_435CE0 proc near
push    ebx
push    ecx
push    edx
cmp     byte ptr [eax+0Fh], 0
jnz     loc_435D7A
mov     edx, offset byte_5F8364
mov     bl, [eax+0Dh]
cmp     bl, 1
jz      short loc_435CFF
cmp     bl, 2
jnz     short loc_435D4B

loc_435CFF:
inc     word ptr [eax+18h]
mov     cl, [eax+0Ch]
test    cl, cl
jz      short loc_435D0F
inc     byte ptr [eax+0Ah]
jmp     short loc_435D12

loc_435D0F:
mov     [eax+0Ah], cl

loc_435D12:
mov     ebx, [edx+12h]
sar     ebx, 10h
mov     ecx, [edx+2Ah]
sar     ecx, 10h
cmp     ebx, ecx
jnz     short loc_435D47
mov     ebx, [edx+14h]
sar     ebx, 10h
mov     ecx, [edx+2Ch]
sar     ecx, 10h
cmp     ebx, ecx
jnz     short loc_435D47
mov     ecx, [edx+16h]
sar     ecx, 10h
mov     edx, [edx+2Eh]
sar     edx, 10h
cmp     ecx, edx
jnz     short loc_435D47
inc     byte ptr [eax+0Bh]
jmp     short loc_435D4B

loc_435D47:
mov     byte ptr [eax+0Bh], 0

loc_435D4B:
mov     cx, [eax+18h]
cmp     cx, 96h
jge     short loc_435D75
cmp     byte ptr [eax+0Bh], 5Ah ; 'Z'
jge     short loc_435D75
cmp     byte ptr [eax+0Ah], 5Ah ; 'Z'
jl      short loc_435D69
cmp     cx, 96h
jge     short loc_435D75

loc_435D69:
cmp     byte ptr [eax+0Ah], 3Ch ; '<'
jl      short loc_435D7A
cmp     byte ptr [eax+0Bh], 3Ch ; '<'
jl      short loc_435D7A

loc_435D75:
call    sub_4369C1

loc_435D7A:
pop     edx
pop     ecx
pop     ebx
sub_435CE0 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_11]



sub_435D7E proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_435D84[edx*4]
pop     edx
retn
sub_435D7E endp




sub_435D8D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     edx, 1
mov     eax, ebx
call    sub_4EE60F
mov     esi, eax
mov     eax, dword ptr ds:unk_5F84D2
sar     eax, 18h
shl     eax, 3
add     eax, ebx
cmp     byte ptr [eax+5F5h], 7
jnz     short loc_435DC0
xor     eax, eax
jmp     short loc_435DC5

loc_435DC0:
mov     eax, 11h

loc_435DC5:
cmp     byte ptr [ebx+171h], 1
jnz     short loc_435E10
mov     edx, [ebx+16Eh]
sar     edx, 18h
cmp     word ptr [ebx+edx*8+5FAh], 0
jnz     short loc_435DE9
mov     edx, 1
jmp     short loc_435DEB

loc_435DE9:
xor     edx, edx

loc_435DEB:
cmp     edx, esi
jge     short loc_435E10
inc     byte ptr [ecx+0Fh]
xor     edx, edx
mov     dl, [ecx+0Fh]
cmp     edx, eax
jl      short loc_435E10
mov     byte ptr [ecx+0Fh], 0
mov     eax, [ebx+16Eh]
sar     eax, 18h
mov     [ebx+eax*8+5FAh], si

loc_435E10:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_435D8D endp




sub_435E15 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_435E1B[edx*4]
pop     edx
sub_435E15 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_12]
jpt_435ECC dd offset def_435ECC ; jump table for switch statement
dd offset loc_435EDB
dd offset loc_435EE5
dd offset loc_435F07



sub_435E34 proc near

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
sub     esp, 1Ch
mov     esi, eax
or      byte ptr ds:dword_559A40, 1
cmp     byte ptr [esi+0Eh], 0
jz      short loc_435E5E
mov     eax, [esi+12h]
sar     eax, 10h
mov     [esp+34h+var_20], eax
mov     edi, [esi+14h]
sar     edi, 10h
jmp     short loc_435E6B

loc_435E5E:
mov     [esp+34h+var_20], 8
mov     edi, 88h

loc_435E6B:
mov     dh, [esi+8]
inc     dh
mov     [esi+8], dh
cmp     dh, 0Ch
jl      short loc_435E7C
mov     byte ptr [esi+8], 0

loc_435E7C:
cmp     byte ptr [esi+0Ch], 0
jz      short loc_435EB6
movsx   ebx, di
mov     eax, [esp+12h]
sar     eax, 10h
mov     edx, [esi+5]
sar     edx, 18h
xor     ecx, ecx
mov     cl, ds:byte_511DC0[edx]
mov     edx, ecx
shl     edx, 2
add     edx, ecx
shl     edx, 2
mov     ebp, offset unk_511B4C
add     ebp, edx
xor     ecx, ecx
mov     edx, eax
mov     eax, ebp
call    sub_4364F0

loc_435EB6:
cmp     byte ptr [esi+0Ch], 1
jnz     short loc_435EC0
mov     byte ptr [esi+0Ch], 0

loc_435EC0:
mov     al, [esi+0Dh]
cmp     al, 3           ; switch 4 cases
ja      short def_435ECC ; jumptable 00435ECC default case, case 0
and     eax, 0FFh
jmp     jpt_435ECC[eax*4] ; switch jump

def_435ECC:             ; jumptable 00435ECC default case, case 0
xor     ebx, ebx
mov     [esp+34h+var_28], ebx
jmp     short loc_435F26

loc_435EDB:             ; jumptable 00435ECC case 1
mov     [esp+34h+var_28], 4
jmp     short loc_435F26

loc_435EE5:             ; jumptable 00435ECC case 2
mov     edx, [esi+6]
sar     edx, 18h
xor     eax, eax
mov     al, ds:byte_511DCC[edx]
mov     [esp+34h+var_28], eax
mov     ah, [esi+9]
dec     ah
mov     [esi+9], ah
jnz     short loc_435F26
mov     byte ptr [esi+0Dh], 1
jmp     short loc_435F26

loc_435F07:             ; jumptable 00435ECC case 3
mov     edx, [esi+6]
sar     edx, 18h
xor     eax, eax
mov     al, ds:byte_511DE9[edx]
mov     [esp+34h+var_28], eax
mov     ch, [esi+9]
dec     ch
mov     [esi+9], ch
jnz     short loc_435F26
mov     [esi+0Dh], ch

loc_435F26:
mov     eax, ds:dword_5F8412
sar     eax, 10h
sar     eax, 4
mov     edx, eax
shl     edx, 2
add     edx, eax
sub     edx, 0Ah
mov     [esp+34h+var_24], edx
mov     eax, edi
sub     eax, [esp+34h+var_24]
cwde
mov     [esp+34h+var_30], eax
mov     esi, [esp+34h+var_24+2]
sar     esi, 10h
mov     ebx, [esp+34h+var_28]
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
shl     edx, 3
add     edx, ebx
shl     edx, 2
mov     [esp+34h+var_34], edx
mov     ebp, offset unk_511958
add     ebp, edx
xor     ecx, ecx
mov     ebx, eax
mov     edx, esi
mov     eax, ebp
call    sub_4364F0
movsx   eax, di
mov     [esp+34h+var_2C], eax
lea     eax, [ebp+28h]
xor     ecx, ecx
mov     ebx, [esp+34h+var_2C]
mov     edx, esi
call    sub_4364F0
mov     eax, [esp+34h+var_24]
shl     eax, 8
mov     edx, [esp+34h+var_34]
or      ax, ds:word_511974[edx]
xor     ecx, ecx
mov     cx, ax
lea     eax, [ebp+14h]
mov     ebx, [esp+34h+var_30]
mov     edx, esi
call    sub_4364F0
lea     eax, [ebp+3Ch]
xor     ecx, ecx
mov     ebx, [esp+34h+var_2C]
mov     edx, esi
call    sub_4364F0
mov     edx, dword ptr ds:unk_5F83D0
sar     edx, 10h
test    edx, edx
jle     short loc_436030
mov     eax, edx
sar     eax, 4
mov     [esp+34h+var_1C], eax
mov     ebp, eax
shl     ebp, 4
sub     edx, ebp
mov     ebp, edx
xor     esi, esi

loc_435FE7:
cmp     esi, [esp+34h+var_1C]
jnb     short loc_43600D
imul    edx, esi, 5
mov     eax, edi
sub     eax, edx
movsx   ebx, ax
mov     edx, [esp+34h+var_24+2]
sar     edx, 10h
xor     ecx, ecx
mov     eax, offset unk_511BC4
call    sub_4364F0
inc     esi
jmp     short loc_435FE7

loc_43600D:
test    ebp, ebp
jz      short loc_436030
imul    eax, [esp+34h+var_1C], 5
mov     edx, edi
sub     edx, eax
movsx   ebx, dx
mov     edx, [esp+34h+var_24+2]
sar     edx, 10h
xor     ecx, ecx
mov     eax, offset unk_511BD8
call    sub_4364F0

loc_436030:
mov     eax, [esp+34h+var_24]
add     eax, 10h
shl     eax, 8
or      al, 10h
xor     ecx, ecx
mov     cx, ax
sub     edi, [esp+34h+var_24]
movsx   edi, di
mov     esi, [esp+34h+var_24+2]
sar     esi, 10h
mov     ebx, [esp+34h+var_28]
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
shl     edx, 3
add     edx, ebx
shl     edx, 2
mov     eax, offset unk_511958
add     eax, edx
add     eax, 50h ; 'P'
mov     ebx, edi
mov     edx, esi

loc_436072:
call    sub_4364F0
add     esp, 1Ch

loc_43607A:             ; jumptable 00435969 case 2
pop     ebp

loc_43607B:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_435E34 endp




sub_436081 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
or      byte ptr ds:dword_559A40, 2
mov     edi, offset byte_5F8364
cmp     byte ptr [eax+0Eh], 0
jz      short loc_4360AE
mov     esi, [eax+12h]
sar     esi, 10h
mov     edx, [eax+14h]
sar     edx, 10h
mov     [esp+24h+var_20], edx
jmp     short loc_4360BB

loc_4360AE:
mov     esi, 118h
mov     [esp+24h+var_20], 0BEh

loc_4360BB:
cmp     byte ptr [eax+0Dh], 0
jz      short loc_4360CC
mov     eax, [eax+18h]
sar     eax, 10h
mov     [esp+24h+var_24], eax
jmp     short loc_4360D1

loc_4360CC:
xor     ecx, ecx
mov     [esp+24h+var_24], ecx

loc_4360D1:
mov     ebx, [esp+24h+var_24+2]
sar     ebx, 10h
movsx   edx, si
xor     ecx, ecx
mov     eax, offset unk_511BEC
call    sub_4364F0
mov     eax, [edi+16Eh]
sar     eax, 18h
mov     eax, ds:off_5513A0[eax*4]
mov     eax, [eax]
sar     eax, 10h
cmp     eax, 7FFFh
mov     ebp, [edi+16Dh]
sar     ebp, 18h
mov     edx, ebp
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
mov     al, ds:byte_550F80[eax*4]
and     eax, 0FFh
shl     edx, 3
add     edi, edx
mov     ebx, [edi+5F8h]
sar     ebx, 10h
mov     cl, al
mov     edx, 1
shl     edx, cl
sar     edx, 10h
dec     edx
add     edx, ebx
shl     edx, 10h
sar     edx, cl
mov     ecx, [edi+5F2h]
sar     ecx, 18h
mov     edi, ds:off_5513A0[ebp*4]
mov     edi, [edi+ecx*8]
sar     edi, 10h
mov     ebx, [esp+24h+var_20]
add     ebx, [esp+24h+var_24]
cmp     edi, 7FFFh
jnz     short loc_436175
movsx   ebx, bx
movsx   edx, si
xor     ecx, ecx
mov     eax, offset unk_511C50
jmp     short loc_4361E8

loc_436175:
shl     edi, 10h
mov     cl, al
sar     edi, cl
test    edx, edx
jz      short loc_4361C3
mov     eax, edx
dec     eax
shl     eax, 8
or      ax, ds:word_511C1C
xor     ecx, ecx
mov     cx, ax
sub     ebx, edx
mov     [esp+24h+var_1C], bx
mov     eax, ebx
inc     eax
movsx   ebx, ax
movsx   ebp, si
mov     edx, ebp
mov     eax, offset unk_511C14
call    sub_4364F0
mov     ebx, [esp+24h+var_20+2]
sar     ebx, 10h
xor     ecx, ecx
mov     edx, ebp
mov     eax, offset unk_511C28
call    sub_4364F0

loc_4361C3:
mov     eax, edi
shl     eax, 8
or      ax, ds:word_511C44
xor     ecx, ecx
mov     cx, ax
mov     eax, [esp+24h+var_20]
add     eax, [esp+24h+var_24]
sub     eax, edi
movsx   ebx, ax
movsx   edx, si
mov     eax, offset unk_511C3C

loc_4361E8:
call    sub_4364F0
mov     eax, [esp+24h+var_20]
add     eax, [esp+24h+var_24]
sub     eax, edi
movsx   ebx, ax
movsx   edx, si
xor     ecx, ecx
mov     eax, offset unk_511C00
call    sub_4364F0
add     esp, 0Ch
jmp     loc_43607A      ; jumptable 00435969 case 2
sub_436081 endp




sub_436210 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     esi, eax
or      byte ptr ds:dword_559A40, 4
xor     eax, eax
mov     al, [esi+0Ch]
sar     eax, 4
mov     cl, al
mov     edx, 1
shl     edx, cl
dec     edx
mov     edi, [esi+20h]
cmp     word ptr [edi+6Eh], 0
jle     short loc_43624C
mov     ecx, [edi+6Ch]
sar     ecx, 10h
add     edx, ecx
mov     cl, al
shr     edx, cl
jmp     short loc_43624E

loc_43624C:
xor     edx, edx

loc_43624E:
mov     [esp+34h+var_30], edx
mov     edx, [esi+20h]
mov     edx, [edx+0AEh]
sar     edx, 10h
mov     cl, al
sar     edx, cl
mov     [esp+34h+var_28], edx
mov     al, [esi+0Ch]
and     al, 0Fh
and     eax, 0FFh
mov     [esp+34h+var_34], eax
cmp     byte ptr [esi+0Eh], 0
jz      short loc_43628F
mov     eax, [esi+12h]
sar     eax, 10h
mov     [esp+34h+var_24], eax
mov     eax, [esi+14h]
sar     eax, 10h
mov     [esp+34h+var_2C], eax
jmp     short loc_43629F

loc_43628F:
mov     [esp+34h+var_24], 120h
mov     [esp+34h+var_2C], 10h

loc_43629F:
cmp     byte ptr [esi+0Dh], 0
jz      short loc_4362B9
mov     eax, [esi+16h]
sar     eax, 10h
add     [esp+34h+var_24], eax
mov     eax, [esi+18h]
sar     eax, 10h
add     [esp+34h+var_2C], eax

loc_4362B9:
mov     edi, [esp+34h+var_30+2]
sar     edi, 10h
mov     edx, [esp+34h+var_28+2]
sar     edx, 10h
mov     ebp, [esp+34h+var_34]
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
shl     eax, 3
add     ebp, eax
shl     ebp, 2
mov     eax, offset unk_511C64
add     eax, ebp
mov     [esp+34h+var_20], eax
xor     ecx, ecx
mov     ebx, edi
call    sub_4364F0
mov     eax, [esp+34h+var_24]
sub     eax, [esp+34h+var_28]
movsx   edx, ax
mov     eax, [esp+34h+var_20]
add     eax, 14h
xor     ecx, ecx
mov     ebx, edi
call    sub_4364F0
cmp     [esp+34h+var_30], 0
jle     short loc_43636F
mov     edx, [esi+10h]
push    edx
mov     ax, ss:word_511CAA[ebp]
shl     eax, 8
mov     edx, [esp+38h+var_30]
or      eax, edx
xor     ecx, ecx
mov     cx, ax
mov     eax, [esp+38h+var_24]
sub     eax, edx
mov     [esp+38h+var_1C], ax
inc     eax
movsx   edx, ax
mov     eax, [esp+38h+var_20]
add     eax, 3Ch ; '<'
mov     ebx, edi
call    sub_4365ED
mov     ecx, [esi+10h]
push    ecx
mov     ax, ss:word_511CBE[ebp]
shl     eax, 8
or      al, 1
xor     ecx, ecx
mov     cx, ax
mov     edx, [esp+38h+var_20+2]
sar     edx, 10h
mov     eax, [esp+38h+var_20]
add     eax, 50h ; 'P'
mov     ebx, edi
call    sub_4365ED

loc_43636F:
mov     eax, [esp+34h+var_34]
mov     esi, eax
shl     esi, 2
sub     esi, eax
shl     esi, 3
add     esi, eax
shl     esi, 2
mov     ax, ds:word_511C96[esi]
shl     eax, 8
or      eax, [esp+34h+var_28]
xor     ecx, ecx
mov     cx, ax
mov     ebx, [esp+34h+var_30+2]
sar     ebx, 10h
mov     eax, [esp+34h+var_24]
sub     eax, [esp+34h+var_28]
movsx   edx, ax
mov     eax, offset unk_511C64
add     eax, esi
add     eax, 28h ; '('
jmp     loc_436072
sub_436210 endp




sub_4363B5 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 0Ch
or      byte ptr ds:dword_559A40, 4
xor     edx, edx
mov     dl, [eax+0Ch]
mov     cl, dl
mov     ebx, 1
shl     ebx, cl
lea     ecx, [ebx-1]
cmp     word ptr ds:dword_77E7E0, 0
jle     short loc_4363F4
mov     ebx, ds:dword_77E7DC+2
sar     ebx, 10h
add     ebx, ecx
mov     cl, dl
shr     ebx, cl
mov     [esp+20h+var_18], ebx
jmp     short loc_4363FA

loc_4363F4:
xor     ecx, ecx
mov     [esp+20h+var_18], ecx

loc_4363FA:
mov     ebx, ds:dword_77E7E0
sar     ebx, 10h
mov     cl, dl
sar     ebx, cl
mov     [esp+20h+var_1C], ebx
cmp     byte ptr [eax+0Eh], 0
jz      short loc_436422
mov     edi, [eax+12h]
sar     edi, 10h
mov     edx, [eax+14h]
sar     edx, 10h
mov     [esp+20h+var_20], edx
jmp     short loc_43642B

loc_436422:
xor     edi, edi
mov     [esp+20h+var_20], 18h

loc_43642B:
cmp     byte ptr [eax+0Dh], 0
jz      short loc_436442
mov     edx, [eax+16h]
sar     edx, 10h
add     edi, edx
mov     eax, [eax+18h]
sar     eax, 10h
add     [esp+20h+var_20], eax

loc_436442:
mov     esi, [esp-2]
sar     esi, 10h
movsx   edx, di
xor     ecx, ecx
mov     ebx, esi
mov     eax, offset unk_511D2C
call    sub_4364F0
mov     eax, [esp+20h+var_1C]
add     eax, edi
movsx   edx, ax
xor     ecx, ecx
mov     ebx, esi
mov     eax, offset unk_511D40
call    sub_4364F0
cmp     [esp+20h+var_18], 0
jle     short loc_4364C2
mov     ax, ds:word_511D72
shl     eax, 8
or      eax, [esp+20h+var_18]
xor     ecx, ecx
mov     cx, ax
mov     eax, edi
dec     eax
movsx   edx, ax
mov     ebx, esi
mov     eax, offset unk_511D68
call    sub_4364F0
mov     ax, ds:word_511D86
shl     eax, 8
or      al, 1
xor     ecx, ecx
mov     cx, ax
mov     eax, [esp+20h+var_18]
add     eax, edi
dec     eax
movsx   edx, ax
mov     ebx, esi
mov     eax, offset unk_511D7C
call    sub_4364F0

loc_4364C2:
mov     ax, ds:word_511D5E
shl     eax, 8
or      eax, [esp+20h+var_1C]
xor     ecx, ecx
mov     cx, ax
mov     ebx, [esp-2]
sar     ebx, 10h
movsx   edx, di
mov     eax, offset unk_511D54
call    sub_4364F0
add     esp, 0Ch
jmp     loc_43607B
sub_4363B5 endp




sub_4364F0 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    esi
push    edi
sub     esp, 20h
mov     esi, eax
mov     [esp+28h+var_C], edx
mov     [esp+28h+var_10], ebx
mov     eax, [eax+2]
sar     eax, 10h
mov     [esp+28h+var_1C], eax
mov     eax, [esi+4]
sar     eax, 10h
mov     [esp+28h+var_14], eax
mov     eax, [esi+6]
sar     eax, 10h
mov     [esp+28h+var_24], eax
mov     eax, [esi+8]
sar     eax, 10h
mov     [esp+28h+var_20], eax
test    cx, cx
jz      short loc_43653F
mov     eax, ecx
xor     ah, ch
xor     edi, edi
mov     di, ax
xor     eax, eax
mov     ax, cx
sar     eax, 8
jmp     short loc_436543

loc_43653F:
mov     edi, [esp+28h+var_24]

loc_436543:
mov     [esp+28h+var_18], eax
xor     eax, eax
mov     al, [esi+0Ch]
mov     [esp+28h+var_28], eax
mov     bl, [esi+0Dh]
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     eax, [esi]
mov     [edx+4], eax
mov     eax, [esi+0Ch]
mov     [edx+0Ch], eax
mov     ax, [esi+12h]
mov     [edx+16h], ax
mov     esi, [esp+28h+var_C]
mov     ecx, [esp+28h+var_1C]
add     esi, ecx
mov     [edx+8], si
mov     ecx, [esp+28h+var_10]
mov     eax, [esp+28h+var_14]
add     ecx, eax
mov     [edx+0Ah], cx
add     edi, esi
mov     [edx+10h], di
mov     [edx+12h], cx
mov     [edx+18h], si
mov     esi, [esp+28h+var_18]
add     ecx, esi
mov     [edx+1Ah], cx
mov     [edx+20h], di
mov     [edx+22h], cx
mov     al, byte ptr [esp+28h+var_28]
mov     ah, byte ptr [esp+28h+var_24]
add     al, ah
mov     [edx+14h], al
mov     [edx+15h], bl
mov     ah, byte ptr [esp+28h+var_28]
mov     [edx+1Ch], ah
mov     ah, byte ptr [esp+28h+var_20]
add     ah, bl
mov     [edx+1Dh], ah
mov     [edx+24h], al
mov     [edx+25h], ah
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
add     esp, 20h
pop     edi
pop     esi
retn
sub_4364F0 endp




sub_4365ED proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch
arg_0= dword ptr  4

push    esi
push    edi
sub     esp, 20h
mov     esi, eax
mov     [esp+28h+var_10], edx
mov     [esp+28h+var_C], ebx
mov     eax, [eax+2]
sar     eax, 10h
mov     [esp+28h+var_20], eax
mov     eax, [esi+4]
sar     eax, 10h
mov     [esp+28h+var_1C], eax
mov     eax, [esi+6]
sar     eax, 10h
mov     [esp+28h+var_24], eax
mov     eax, [esi+8]
sar     eax, 10h
mov     [esp+28h+var_18], eax
test    cx, cx
jz      short loc_436640
mov     eax, ecx
xor     ah, ch
and     eax, 0FFFFh
mov     [esp+28h+var_14], eax
xor     edi, edi
mov     di, cx
sar     edi, 8
jmp     short loc_43664C

loc_436640:
mov     eax, [esp+28h+var_24]
mov     [esp+28h+var_14], eax
mov     edi, [esp+28h+var_18]

loc_43664C:
xor     eax, eax
mov     al, [esi+0Ch]
mov     [esp+28h+var_28], eax
mov     bl, [esi+0Dh]
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     eax, [esp+28h+arg_0]
and     eax, 0FFFFFFh
or      eax, 2C000000h
mov     [edx+4], eax
mov     eax, [esi+0Ch]
mov     [edx+0Ch], eax
mov     ax, [esi+12h]
mov     [edx+16h], ax
mov     esi, [esp+28h+var_10]
mov     ecx, [esp+28h+var_20]
add     esi, ecx
mov     [edx+8], si
mov     ecx, [esp+28h+var_C]
mov     eax, [esp+28h+var_1C]
add     ecx, eax
mov     [edx+0Ah], cx
mov     eax, [esp+28h+var_14]
add     eax, esi
mov     [edx+10h], ax
mov     [edx+12h], cx
mov     [edx+18h], si
add     ecx, edi
mov     [edx+1Ah], cx
mov     [edx+20h], ax
mov     [edx+22h], cx
mov     al, byte ptr [esp+28h+var_28]
mov     ah, byte ptr [esp+28h+var_24]
add     al, ah
mov     [edx+14h], al
mov     [edx+15h], bl
mov     ah, byte ptr [esp+28h+var_28]
mov     [edx+1Ch], ah
mov     ah, byte ptr [esp+28h+var_18]
add     ah, bl
mov     [edx+1Dh], ah
mov     [edx+24h], al
mov     [edx+25h], ah
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
add     esp, 20h
pop     edi
pop     esi
retn    4
sub_4365ED endp




sub_436700 proc near
mov     byte ptr ds:dword_559968, 1
retn
sub_436700 endp




sub_436708 proc near
mov     byte ptr ds:dword_559968, 2
retn
sub_436708 endp




sub_436710 proc near
xor     ah, ah
mov     byte ptr ds:dword_559968, ah
retn
sub_436710 endp




sub_436719 proc near

var_C= dword ptr -0Ch

push    esi
push    edi
sub     esp, 4
mov     esi, eax
mov     edi, edx
mov     [esp+0Ch+var_C], ecx
cmp     ds:dword_559A44, 3
jnb     short loc_43677F
xor     edx, edx
jmp     short loc_436738

loc_436732:
inc     edx
cmp     edx, 3
jnb     short loc_43677F

loc_436738:
lea     ecx, [edx+2]
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 2
cmp     byte ptr ds:dword_55995C[eax], 0
jnz     short loc_436732
inc     ds:dword_559A44
mov     byte ptr ds:dword_55995C[eax], 3
mov     word ptr ds:dword_559974[eax], di
mov     word ptr ds:(dword_559974+2)[eax], bx
mov     dl, byte ptr [esp+0Ch+var_C]
mov     byte ptr ds:dword_559968[eax], dl
mov     byte ptr ds:(dword_559968+1)[eax], 1
mov     ds:dword_55997C[eax], esi

loc_43677F:
add     esp, 4
pop     edi
pop     esi
retn
sub_436719 endp




sub_436785 proc near

var_C= dword ptr -0Ch
arg_0= dword ptr  4

push    esi
push    edi
sub     esp, 4
mov     esi, eax
mov     edi, edx
mov     [esp+0Ch+var_C], ecx
cmp     ds:dword_559A44, 3
jnb     short loc_4367F5
xor     edx, edx
jmp     short loc_4367A4

loc_43679E:
inc     edx
cmp     edx, 3
jnb     short loc_4367F5

loc_4367A4:
lea     ecx, [edx+2]
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 2
cmp     byte ptr ds:dword_55995C[eax], 0
jnz     short loc_43679E
inc     ds:dword_559A44
mov     byte ptr ds:dword_55995C[eax], 3
mov     word ptr ds:dword_559974[eax], di
mov     word ptr ds:(dword_559974+2)[eax], bx
mov     dl, byte ptr [esp+0Ch+var_C]
mov     byte ptr ds:dword_559968[eax], dl
mov     byte ptr ds:(dword_559968+1)[eax], 1
mov     edx, [esp+0Ch+arg_0]
mov     ds:dword_55996C[eax], edx
mov     ds:dword_55997C[eax], esi

loc_4367F5:
add     esp, 4
pop     edi
pop     esi
retn    4
sub_436785 endp




sub_4367FD proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
xor     edx, edx
jmp     short loc_43680D

loc_436807:
inc     edx
cmp     edx, 3
jnb     short loc_436863

loc_43680D:
lea     ecx, [edx+2]
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 2
cmp     byte ptr ds:dword_55995C[eax], 0
jz      short loc_436807
cmp     ebx, ds:dword_55997C[eax]
jnz     short loc_436807
dec     ds:dword_559A44
xor     esi, esi
mov     ds:dword_55995C[eax], esi
mov     ds:dword_559960[eax], esi
mov     ds:dword_559964[eax], esi
mov     ds:dword_559968[eax], esi
mov     ds:dword_55996C[eax], esi
mov     ds:dword_559970[eax], esi
mov     ds:dword_559974[eax], esi
mov     ds:dword_559978[eax], esi

loc_436863:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4367FD endp




sub_436868 proc near
push    ecx
push    edx
xor     edx, edx
mov     ds:dword_559A44, edx

loc_436872:
lea     ecx, [edx+2]
mov     eax, ecx
shl     eax, 3
add     eax, ecx
xor     ecx, ecx
mov     ds:dword_55995C[eax*4], ecx
mov     ds:dword_559960[eax*4], ecx
mov     ds:dword_559964[eax*4], ecx
mov     ds:dword_559968[eax*4], ecx
mov     ds:dword_55996C[eax*4], ecx
mov     ds:dword_559970[eax*4], ecx
mov     ds:dword_559974[eax*4], ecx
mov     ds:dword_559978[eax*4], ecx
inc     edx
cmp     edx, 3
jb      short loc_436872
pop     edx
pop     ecx
retn
sub_436868 endp




sub_4368BF proc near
mov     byte ptr ds:dword_559A10, 3
mov     word ptr ds:dword_559A28, ax
mov     word ptr ds:dword_559A28+2, dx
mov     byte ptr ds:dword_559A1C, bl
mov     byte ptr ds:dword_559A1C+1, 1
retn
sub_4368BF endp




sub_4368E1 proc near
push    edx
xor     edx, edx
mov     ds:dword_559A10, edx
mov     ds:dword_559A14, edx
mov     ds:dword_559A18, edx
mov     ds:dword_559A1C, edx
mov     ds:dword_559A20, edx
mov     ds:dword_559A24, edx
mov     ds:dword_559A28, edx
mov     ds:dword_559A2C, edx
pop     edx
retn
sub_4368E1 endp




sub_436916 proc near
push    ebx
push    edx
cmp     word ptr ds:dword_559978, 0
jle     short loc_436927
xor     eax, eax
pop     edx
pop     ebx
retn

loc_436927:
mov     dl, byte ptr ds:dword_559968+1
test    dl, dl
jz      short loc_436936
cmp     dl, 3
jnz     short loc_43695E

loc_436936:
test    eax, eax
jz      short loc_436963
call    sub_436995
xor     bl, bl
mov     byte ptr ds:dword_559964+2, bl
xor     bh, bh
mov     byte ptr ds:dword_559964+3, bl
mov     word ptr ds:dword_559974, bx
mov     eax, 1
pop     edx
pop     ebx
retn

loc_43695E:
mov     eax, 1

loc_436963:
pop     edx
pop     ebx
retn
sub_436916 endp




sub_436966 proc near
cmp     word ptr ds:dword_559978, 0
jle     short sub_436973
xor     eax, eax
retn
sub_436966 endp




sub_436973 proc near
xor     eax, eax
mov     al, byte ptr ds:dword_559968+3
retn
sub_436973 endp




sub_43697B proc near
xor     ah, ah
mov     ds:byte_55998F, ah
sub_43697B endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_21]



sub_436984 proc near
cmp     word ptr ds:dword_559978, 0
jg      short nullsub_21
mov     byte ptr ds:dword_559968+3, 1
sub_436984 endp




sub_436995 proc near
cmp     byte ptr ds:dword_559968+1, 0
jnz     short locret_4369AC
mov     byte ptr ds:dword_559968+1, 2
mov     byte ptr ds:dword_559964+1, 1Ch

locret_4369AC:
retn
sub_436995 endp




sub_4369AD proc near
mov     ax, word ptr ds:dword_5F8412+2
mov     ds:word_5F83D2, ax
sub_4369AD endp




sub_4369B9 proc near
xor     ah, ah
mov     byte ptr ds:dword_559968+3, ah
sub_4369B9 endp




sub_4369C1 proc near
push    edx
cmp     byte ptr ds:dword_559968+3, 1
jz      short loc_4369E9
mov     dl, byte ptr ds:dword_559968+1
cmp     dl, 1
jz      short loc_4369DB
cmp     dl, 2
jnz     short loc_4369E9

loc_4369DB:
mov     byte ptr ds:dword_559968+1, 3
mov     byte ptr ds:dword_559964+1, 6

loc_4369E9:
pop     edx
retn
sub_4369C1 endp




sub_4369EB proc near
push    edx
test    eax, eax
jz      short loc_436A13
cmp     byte ptr ds:dword_559968+3, 0
jz      short loc_436A13
xor     dh, dh
mov     byte ptr ds:dword_559968+3, dh
mov     byte ptr ds:dword_559968+1, 3
mov     byte ptr ds:dword_559964+1, 6

loc_436A0F:
xor     eax, eax
pop     edx
retn

loc_436A13:
cmp     byte ptr ds:dword_559968+3, 0
jnz     short loc_436A0F
mov     eax, 1
pop     edx
retn
sub_4369EB endp




sub_436A23 proc near
push    edx
test    eax, eax
jz      short loc_436A5F
mov     eax, dword ptr ds:unk_5F83D0
sar     eax, 10h
mov     edx, ds:dword_5F8412
sar     edx, 10h
add     eax, 2
cmp     eax, edx
jl      short loc_436A53
mov     ax, word ptr ds:dword_5F8412+2
mov     ds:word_5F83D2, ax

loc_436A4C:
mov     eax, 1
pop     edx
retn

loc_436A53:
xor     eax, eax
add     ds:word_5F83D2, 2
pop     edx
retn

loc_436A5F:
mov     edx, dword ptr ds:unk_5F83D0
sar     edx, 10h
mov     eax, ds:dword_5F8412
sar     eax, 10h
cmp     edx, eax
jz      short loc_436A4C
xor     eax, eax
pop     edx
retn
sub_436A23 endp




sub_436A78 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, dword ptr ds:unk_5F84D3
sar     edx, 18h
mov     eax, offset byte_5F8364
call    sub_4EE60F
mov     edx, eax
mov     ebx, eax
cmp     eax, 7FFFh
jnz     short loc_436AA2

loc_436A9B:
mov     edx, 1
jmp     short loc_436AFA

loc_436AA2:
test    ecx, ecx
jz      short loc_436ADB
mov     eax, dword ptr ds:unk_5F84D3
sar     eax, 18h
shl     eax, 3
add     eax, offset byte_5F8364
mov     ecx, [eax+5F8h]
sar     ecx, 10h
add     ecx, 10h
cmp     ecx, edx
jl      short loc_436ACF
mov     [eax+5FAh], dx
jmp     short loc_436A9B

loc_436ACF:
xor     edx, edx
add     word ptr [eax+5FAh], 10h
jmp     short loc_436AFA

loc_436ADB:
mov     eax, dword ptr ds:unk_5F84D3
sar     eax, 18h
shl     eax, 3
add     eax, offset byte_5F8364
mov     eax, [eax+5F8h]
sar     eax, 10h
cmp     eax, edx
jz      short loc_436A9B
xor     edx, edx

loc_436AFA:
mov     eax, edx
pop     edx
pop     ecx
pop     ebx
retn
sub_436A78 endp




sub_436B00 proc near
push    ebx
push    ecx
push    edx
test    eax, eax
jnz     short loc_436B1F
mov     ecx, 0FFFFFFFFh

loc_436B0C:
mov     ds:dword_763F64[eax*4], ecx
inc     eax
cmp     eax, 280h
jl      short loc_436B0C
pop     edx
pop     ecx
pop     ebx
retn

loc_436B1F:
mov     ebx, 50h ; 'P'
mov     edx, offset dword_763F64
mov     eax, offset unk_7528CC
call    sub_4EECEF
pop     edx
pop     ecx
pop     ebx
retn
sub_436B00 endp




sub_436B37 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
xor     edx, edx
mov     ds:dword_511D90, edx
test    eax, eax
jz      short loc_436B9C
jmp     short loc_436B50

loc_436B4A:
inc     edx
cmp     edx, 40h ; '@'
jge     short loc_436B9C

loc_436B50:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     cl, ds:byte_511778[eax]
cmp     cl, 0FFh
jz      short loc_436B9C
cmp     cl, ds:byte_77E7D4
jnz     short loc_436B4A
mov     cl, ds:byte_511779[eax]
cmp     cl, byte ptr ds:dword_77E7D5
jnz     short loc_436B4A
mov     ds:dword_511D90, 3
mov     ds:dword_559A3C, ebx
mov     ds:dword_559A34, edx
mov     eax, ds:off_51177C[eax]
mov     ds:dword_559A38, eax

loc_436B9C:
pop     edx
pop     ecx
pop     ebx
retn
sub_436B37 endp




sub_436BA0 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h
var_12= word ptr -12h

call    sub_436D13
push    ebx
push    ecx
push    edx
push    esi
sub     esp, 24h
cmp     byte ptr ds:dword_77E7DC+1, 0
jnz     loc_436D0B
test    byte ptr ds:dword_511D90, 2
jz      loc_436D0B
cmp     ds:dword_511DA8, 0
jnz     short loc_436BE3
mov     ds:dword_511DA0, 8
mov     ds:dword_511DA4, 60h ; '`'

loc_436BE3:
mov     ds:dword_511DF1, 6
mov     edx, ds:dword_559A34
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, ds:(off_51177C+2)[eax*4]
sar     edx, 10h
mov     ebx, ds:dword_511780[eax*4]
sar     ebx, 10h
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     ecx, ds:dword_5F837A
sar     ecx, 10h
mov     esi, eax
sub     esi, edx
mov     edx, esi
sar     edx, 9
sub     edx, 5
mov     [esp+34h+var_18], dx
mov     edx, ecx
sub     edx, ebx
sar     edx, 9
sub     edx, 5
mov     [esp+34h+var_16], dx
and     eax, 1FFh
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
shr     eax, 9
mov     edx, ds:dword_511DA0
add     edx, 3
sub     edx, eax
mov     [esp+34h+var_14], dx
mov     edx, ecx
and     edx, 1FFh
mov     eax, edx
shl     eax, 2
sub     eax, edx
add     eax, eax
shr     eax, 9
mov     edx, ds:dword_511DA4
sub     edx, 3
add     eax, edx
mov     [esp+34h+var_12], ax
mov     edx, 0Bh
mov     [esp+34h+var_1C], dx
mov     [esp+34h+var_1A], dx
mov     cx, word ptr ds:dword_511DF1
imul    eax, ecx, 9
mov     [esp+14h], ax
mov     [esp+16h], ax
mov     ax, word ptr ds:dword_511DA0
add     eax, ecx
mov     word ptr [esp+34h+var_24], ax
mov     ax, word ptr ds:dword_511DA4
sub     eax, ecx
mov     edx, [esp+14h]
sub     eax, edx
mov     word ptr [esp+34h+var_24+2], ax
mov     eax, [esp+34h+var_28+2]
sar     eax, 10h
mov     [esp+34h+var_34], eax
mov     edx, [esp+34h+var_24+2]
sar     edx, 10h
add     eax, edx
mov     [esp+34h+var_2C], eax
mov     eax, [esp+34h+var_24]
sar     eax, 10h
mov     [esp+34h+var_30], eax
add     eax, edx
mov     [esp+34h+var_28], eax
mov     ecx, esp
lea     ebx, [esp+34h+var_18]
lea     edx, [esp+34h+var_1C]
lea     eax, [esp+34h+var_14]
call    sub_436FD0
lea     eax, [esp+34h+var_24]
call    sub_43765F

loc_436D0B:
add     esp, 24h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_436BA0 endp




sub_436D13 proc near

var_37= dword ptr -37h
var_28= byte ptr -28h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 20h
mov     edi, esp
mov     esi, offset dword_435870
movsd
movsd
movsb
lea     edi, [esp+34h+var_28]
mov     esi, offset byte_435879
movsd
movsd
movsb
test    byte ptr ds:dword_511D90, 1
jz      loc_436DE1
mov     edx, ds:dword_559A34
mov     eax, edx
shl     eax, 2
sub     eax, edx
xor     ebx, ebx
mov     bl, ds:byte_51177A[eax*4]
movzx   edi, ds:byte_51177B[eax*4]
mov     edx, ds:(off_51177C+2)[eax*4]
sar     edx, 10h
mov     ecx, ds:dword_511780[eax*4]
sar     ecx, 10h
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     esi, ds:dword_5F837A
sar     esi, 10h
sub     eax, edx
sar     eax, 9
mov     [esp+34h+var_18], eax
sub     esi, ecx
sar     esi, 9
mov     [esp+34h+var_1C], esi
xor     eax, eax
jmp     short loc_436D9D

loc_436D97:
inc     eax
cmp     eax, 9
jge     short loc_436DE1

loc_436D9D:
mov     ecx, [esp+eax+34h+var_37]
sar     ecx, 18h
add     ecx, [esp+34h+var_18]
mov     edx, [esp+eax+9]
sar     edx, 18h
add     edx, [esp+34h+var_1C]
cmp     ecx, ebx
jnb     short loc_436D97
cmp     edx, edi
jnb     short loc_436D97
imul    edx, ebx
add     edx, ecx
sar     edx, 3
mov     esi, ds:dword_559A38
add     edx, esi
and     ecx, 7
mov     esi, 80h
sar     esi, cl
not     esi
xor     ecx, ecx
mov     cl, [edx]
and     ecx, esi
mov     [edx], cl
jmp     short loc_436D97

loc_436DE1:
add     esp, 20h
jmp     loc_43607B
sub_436D13 endp




sub_436DE9 proc near
push    edx
xor     edx, edx
mov     word ptr ds:dword_559A48+2, dx
mov     word ptr ds:dword_559A48, dx
pop     edx
retn
sub_436DE9 endp




sub_436DFC proc near

var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h
var_12= word ptr -12h

push    ebx
push    ecx
push    edx
push    edi
sub     esp, 14h
test    byte ptr ds:dword_511D90, 2
jz      loc_436F78
test    byte ptr ds:word_5708DA, 10h
jz      short loc_436E21
sub     word ptr ds:dword_559A48, 2

loc_436E21:
test    byte ptr ds:word_5708DA, 40h
jz      short loc_436E32
add     word ptr ds:dword_559A48, 2

loc_436E32:
test    byte ptr ds:word_5708DA, 80h
jz      short loc_436E43
sub     word ptr ds:dword_559A48+2, 2

loc_436E43:
test    byte ptr ds:word_5708DA, 20h
jz      short loc_436E54
add     word ptr ds:dword_559A48+2, 2

loc_436E54:
mov     eax, ds:dword_559A48
sar     eax, 10h
cmp     eax, 0FFFFFFE0h
jge     short loc_436E6C
mov     word ptr ds:dword_559A48+2, 0FFE0h
jmp     short loc_436E7F

loc_436E6C:
cmp     word ptr ds:dword_559A48+2, 20h ; ' '
jle     short loc_436E7F
mov     word ptr ds:dword_559A48+2, 20h ; ' '

loc_436E7F:
mov     eax, ds:dword_559A44+2
sar     eax, 10h
cmp     eax, 0FFFFFFE0h
jge     short loc_436E97
mov     word ptr ds:dword_559A48, 0FFE0h
jmp     short loc_436EAA

loc_436E97:
cmp     word ptr ds:dword_559A48, 20h ; ' '
jle     short loc_436EAA
mov     word ptr ds:dword_559A48, 20h ; ' '

loc_436EAA:
mov     ds:dword_511DF1, 6
mov     eax, ds:dword_559A34
mov     edx, eax
shl     edx, 2
sub     edx, eax
xor     eax, eax
mov     al, ds:byte_51177A[edx*4]
mov     [esp+24h+var_14], ax
xor     eax, eax
mov     al, ds:byte_51177B[edx*4]
mov     [esp+24h+var_12], ax
xor     edi, edi
mov     [esp+24h+var_18], di
mov     [esp+24h+var_16], di
mov     [esp+24h+var_24], di
mov     [esp+24h+var_22], di
mov     [esp+24h+var_20], 140h
mov     [esp+24h+var_1E], 0F0h
xor     eax, eax
mov     al, ds:byte_51177A[edx*4]
mov     ebx, 35h ; '5'
sub     ebx, eax
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
add     eax, eax
shr     eax, 1
mov     ebx, ds:dword_559A48
sar     ebx, 10h
inc     eax
add     eax, ebx
mov     [esp+24h+var_1C], ax
xor     eax, eax
mov     al, ds:byte_51177B[edx*4]
mov     edx, 28h ; '('
sub     edx, eax
mov     eax, edx
shl     edx, 2
sub     edx, eax
add     edx, edx
shr     edx, 1
mov     eax, 0F0h
sub     eax, edx
mov     edx, eax
mov     eax, ds:dword_559A44+2
sar     eax, 10h
add     eax, edx
mov     [esp+24h+var_1A], ax
xor     ecx, ecx
lea     ebx, [esp+24h+var_18]
lea     edx, [esp+24h+var_14]
lea     eax, [esp+24h+var_1C]
call    sub_436FD0
mov     eax, esp
call    sub_43770B

loc_436F78:
add     esp, 14h
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_436DFC endp

jpt_4373AA dd offset def_4373AA ; jump table for switch statement
dd offset loc_4373D2
dd offset loc_4373F3
dd offset loc_437414
dd offset loc_437435
dd offset loc_437456
dd offset loc_437477
dd offset loc_437498
dd offset loc_4374B9
dd offset loc_4374DA
dd offset loc_4374FB
dd offset loc_43751C
dd offset loc_43753D
dd offset loc_43755E
dd offset loc_43757F
dd offset loc_4375A0
dd offset loc_4375C1
dd offset loc_4375DF
dd offset loc_4375FD
dd offset loc_43761B



sub_436FD0 proc near

rcDst= tagRECT ptr -5Ch
rcSrc2= RECT ptr -4Ch
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
lprcSrc1= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 50h
mov     ebp, eax
mov     [esp+5Ch+var_2C], edx
mov     edi, ebx
mov     [esp+5Ch+lprcSrc1], ecx
mov     edx, ds:dword_559A34
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, eax
shl     edx, 2
xor     eax, eax
mov     al, ds:byte_51177A[edx]
mov     [esp+5Ch+var_18], eax
xor     eax, eax
mov     al, ds:byte_51177B[edx]
mov     [esp+5Ch+var_30], eax
mov     edx, ds:dword_77E6DC
lea     eax, [edx+34h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F8817
mov     dword ptr [edx], 8000000h
mov     dword ptr [edx+4], 3800FFFFh
mov     dword ptr [edx+0Ch], 0FFFFh
mov     dword ptr [edx+14h], 0FFh
mov     dword ptr [edx+1Ch], 0FFh
mov     eax, ds:dword_5F83B8
sar     eax, 10h
mov     [esp+5Ch+var_24], eax
mov     ecx, ds:dword_559A34
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, eax
shl     ecx, 2
mov     eax, ds:(off_51177C+2)[ecx]
sar     eax, 10h
mov     ebx, ds:dword_5F8376
sar     ebx, 10h
sub     ebx, eax
sar     ebx, 9
movsx   eax, word ptr [edi]
sub     ebx, eax
mov     esi, ds:dword_511DF1
imul    ebx, esi
movsx   eax, word ptr [ebp+0]
add     ebx, eax
mov     eax, esi
shr     eax, 1
add     ebx, eax
mov     ecx, ds:dword_511780[ecx]
sar     ecx, 10h
mov     [esp+5Ch+var_3C], ecx
mov     ecx, ds:dword_5F837A
sar     ecx, 10h
sub     ecx, [esp+5Ch+var_3C]
sar     ecx, 9
mov     [esp+5Ch+var_3C], ecx
mov     ecx, [edi]
sar     ecx, 10h
mov     esi, [esp+5Ch+var_3C]
sub     esi, ecx
mov     ecx, esi
imul    ecx, ds:dword_511DF1
mov     esi, [ebp+0]
sar     esi, 10h
sub     esi, ecx
mov     ecx, esi
sub     ecx, eax
mov     [esp+5Ch+var_34], ecx
mov     ecx, [esp+5Ch+var_24]
neg     ecx
lea     eax, [ecx-40h]
mov     [esp+5Ch+var_3C], eax
call    sub_4EF008
mov     [esp+5Ch+var_28], eax
shl     eax, 2
sub     eax, [esp+5Ch+var_28]
add     eax, eax
add     eax, 800h
sar     eax, 0Ch
add     eax, ebx
mov     [edx+8], ax
mov     eax, [esp+5Ch+var_3C]
call    sub_4EF003
mov     [esp+5Ch+var_28], eax
shl     eax, 2
sub     eax, [esp+5Ch+var_28]
add     eax, eax
add     eax, 800h
sar     eax, 0Ch
add     eax, [esp+5Ch+var_34]
mov     [edx+0Ah], ax
lea     eax, [ecx+40h]
mov     [esp+5Ch+var_20], eax
call    sub_4EF008
mov     [esp+5Ch+var_28], eax
shl     eax, 2
sub     eax, [esp+5Ch+var_28]
add     eax, eax
add     eax, 800h
sar     eax, 0Ch
add     eax, ebx
mov     [edx+10h], ax
mov     eax, [esp+5Ch+var_20]
call    sub_4EF003
mov     [esp+5Ch+var_28], eax
shl     eax, 2
sub     eax, [esp+5Ch+var_28]
add     eax, eax
add     eax, 800h
sar     eax, 0Ch
add     eax, [esp+5Ch+var_34]
mov     [edx+12h], ax
lea     esi, [ecx+600h]
mov     eax, esi
call    sub_4EF008
shl     eax, 2
add     eax, 800h
sar     eax, 0Ch
add     eax, ebx
mov     [esp+5Ch+var_28], eax
mov     eax, [esp+5Ch+var_28]
mov     [edx+18h], ax
mov     eax, esi
call    sub_4EF003
shl     eax, 2
add     eax, 800h
sar     eax, 0Ch
mov     esi, [esp+5Ch+var_34]
add     eax, esi
mov     [edx+1Ah], ax
sub     ecx, 600h
mov     eax, ecx
call    sub_4EF008
shl     eax, 2
add     eax, 800h
sar     eax, 0Ch
add     eax, ebx
mov     [edx+20h], ax
mov     eax, ecx
call    sub_4EF003
shl     eax, 2
add     eax, 800h
sar     eax, 0Ch
add     eax, esi
mov     [edx+22h], ax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
xor     ebx, ebx
mov     [esp+5Ch+var_14], ebx

loc_437202:
mov     eax, [esp+5Ch+var_2C]
mov     eax, [eax]
sar     eax, 10h
mov     esi, [esp+5Ch+var_14]
cmp     eax, esi
jle     loc_437658
mov     eax, [edi]
sar     eax, 10h
add     eax, esi
cmp     eax, [esp+5Ch+var_30]
jnb     loc_43764F
xor     ebx, ebx
mov     [esp+5Ch+var_38], ebx

loc_43722E:
mov     eax, [esp+5Ch+var_2C]
movsx   eax, word ptr [eax]
mov     esi, [esp+5Ch+var_38]
cmp     eax, esi
jle     loc_43764F
movsx   eax, word ptr [edi]
add     eax, esi
mov     ecx, [esp+5Ch+var_18]
cmp     eax, ecx
jnb     loc_437646
mov     edx, [edi]
sar     edx, 10h
add     edx, [esp+5Ch+var_14]
imul    edx, ecx
add     edx, eax
sar     edx, 3
mov     eax, ds:dword_559A38
add     eax, edx
mov     cl, [edi]
add     cl, byte ptr [esp+5Ch+var_38]
and     cl, 7
mov     al, [eax]
shl     al, cl
test    al, al
jl      loc_437646
mov     esi, ds:dword_77E6DC
mov     ebx, esi
lea     eax, [esi+38h]
mov     ds:dword_77E6DC, eax
mov     eax, esi
call    sub_4F87F0
mov     dword ptr [esi], 9000000h
mov     dword ptr [esi+4], 2EC0C0C0h
mov     eax, [esp+5Ch+var_38]
imul    eax, ds:dword_511DF1
movsx   edx, word ptr [ebp+0]
add     eax, edx
mov     edx, [ebp+0]
sar     edx, 10h
mov     [esp+5Ch+var_28], edx
mov     edx, [esp+5Ch+var_14]
imul    edx, ds:dword_511DF1
mov     ecx, [esp+5Ch+var_28]
sub     ecx, edx
mov     edx, ecx
cmp     [esp+5Ch+lprcSrc1], 0
jz      short loc_437345
mov     [esp+5Ch+rcSrc2.left], eax
mov     ecx, ds:dword_511DF1
add     ecx, eax
mov     [esp+5Ch+rcSrc2.right], ecx
mov     eax, edx
mov     ecx, ds:dword_511DF1
sub     eax, ecx
mov     [esp+5Ch+rcSrc2.top], eax
mov     [esp+5Ch+rcSrc2.bottom], edx
lea     eax, [esp+5Ch+rcSrc2]
push    eax             ; lprcSrc2
mov     eax, [esp+60h+lprcSrc1]
push    eax             ; lprcSrc1
lea     eax, [esp+64h+rcDst]
push    eax             ; lprcDst
call    cs:__imp_IntersectRect
test    eax, eax
jz      loc_437646
mov     eax, [esp+5Ch+rcDst.left]
mov     [esi+18h], ax
mov     [esi+8], ax
mov     eax, [esp+5Ch+rcDst.top]
mov     [esi+12h], ax
mov     [esi+0Ah], ax
mov     eax, [esp+5Ch+rcDst.right]
mov     [esi+20h], ax
mov     [esi+10h], ax
mov     eax, [esp+5Ch+rcDst.bottom]
mov     [esi+22h], ax
jmp     short loc_43737D

loc_437345:
mov     [esi+18h], ax
mov     [esi+8], ax
mov     cx, word ptr ds:dword_511DF1
mov     [esp+5Ch+var_10], ecx
mov     ecx, edx
sub     ecx, [esp+5Ch+var_10]
mov     [esi+12h], cx
mov     [esi+0Ah], cx
mov     cx, word ptr ds:dword_511DF1
add     ecx, eax
mov     [esi+20h], cx
mov     [esi+10h], cx
mov     [esi+22h], dx
mov     eax, edx

loc_43737D:
mov     [esi+1Ah], ax
mov     eax, [edi]
sar     eax, 10h
add     eax, [esp+5Ch+var_14]
imul    eax, [esp+5Ch+var_18]
mov     edx, ds:dword_559A3C
add     edx, eax
movsx   eax, word ptr [edi]
add     eax, [esp+5Ch+var_38]
mov     al, [edx+eax]
cmp     al, 13h         ; switch 20 cases
ja      short def_4373AA ; jumptable 004373AA default case, case 0
and     eax, 0FFh
jmp     jpt_4373AA[eax*4] ; switch jump

def_4373AA:             ; jumptable 004373AA default case, case 0
mov     dword ptr [ebx+0Ch], 3E748109h
mov     dword ptr [ebx+14h], 0D810Fh
mov     dword ptr [ebx+1Ch], 8709h
mov     dword ptr [ebx+24h], 870Fh
jmp     loc_437637

loc_4373D2:             ; jumptable 004373AA case 1
mov     dword ptr [ebx+0Ch], 3E748101h
mov     dword ptr [ebx+14h], 0D8107h
mov     dword ptr [ebx+1Ch], 8701h
mov     dword ptr [ebx+24h], 8707h
jmp     loc_437637

loc_4373F3:             ; jumptable 004373AA case 2
mov     dword ptr [ebx+0Ch], 3E748111h
mov     dword ptr [ebx+14h], 0D8117h
mov     dword ptr [ebx+1Ch], 8711h
mov     dword ptr [ebx+24h], 8717h
jmp     loc_437637

loc_437414:             ; jumptable 004373AA case 3
mov     dword ptr [ebx+0Ch], 3E748119h
mov     dword ptr [ebx+14h], 0D811Fh
mov     dword ptr [ebx+1Ch], 8719h
mov     dword ptr [ebx+24h], 871Fh
jmp     loc_437637

loc_437435:             ; jumptable 004373AA case 4
mov     dword ptr [ebx+0Ch], 3E748121h
mov     dword ptr [ebx+14h], 0D8127h
mov     dword ptr [ebx+1Ch], 8721h
mov     dword ptr [ebx+24h], 8727h
jmp     loc_437637

loc_437456:             ; jumptable 004373AA case 5
mov     dword ptr [ebx+0Ch], 3E748129h
mov     dword ptr [ebx+14h], 0D812Fh
mov     dword ptr [ebx+1Ch], 8729h
mov     dword ptr [ebx+24h], 872Fh
jmp     loc_437637

loc_437477:             ; jumptable 004373AA case 6
mov     dword ptr [ebx+0Ch], 3E748131h
mov     dword ptr [ebx+14h], 0D8137h
mov     dword ptr [ebx+1Ch], 8731h
mov     dword ptr [ebx+24h], 8737h
jmp     loc_437637

loc_437498:             ; jumptable 004373AA case 7
mov     dword ptr [ebx+0Ch], 3E748139h
mov     dword ptr [ebx+14h], 0D813Fh
mov     dword ptr [ebx+1Ch], 8739h
mov     dword ptr [ebx+24h], 873Fh
jmp     loc_437637

loc_4374B9:             ; jumptable 004373AA case 8
mov     dword ptr [ebx+0Ch], 3E748141h
mov     dword ptr [ebx+14h], 0D8147h
mov     dword ptr [ebx+1Ch], 8741h
mov     dword ptr [ebx+24h], 8747h
jmp     loc_437637

loc_4374DA:             ; jumptable 004373AA case 9
mov     dword ptr [ebx+0Ch], 3E748149h
mov     dword ptr [ebx+14h], 0D814Fh
mov     dword ptr [ebx+1Ch], 8749h
mov     dword ptr [ebx+24h], 874Fh
jmp     loc_437637

loc_4374FB:             ; jumptable 004373AA case 10
mov     dword ptr [ebx+0Ch], 3E748909h
mov     dword ptr [ebx+14h], 0D890Fh
mov     dword ptr [ebx+1Ch], 8F09h
mov     dword ptr [ebx+24h], 8F0Fh
jmp     loc_437637

loc_43751C:             ; jumptable 004373AA case 11
mov     dword ptr [ebx+0Ch], 3E748901h
mov     dword ptr [ebx+14h], 0D8907h
mov     dword ptr [ebx+1Ch], 8F01h
mov     dword ptr [ebx+24h], 8F07h
jmp     loc_437637

loc_43753D:             ; jumptable 004373AA case 12
mov     dword ptr [ebx+0Ch], 3E748911h
mov     dword ptr [ebx+14h], 0D8917h
mov     dword ptr [ebx+1Ch], 8F11h
mov     dword ptr [ebx+24h], 8F17h
jmp     loc_437637

loc_43755E:             ; jumptable 004373AA case 13
mov     dword ptr [ebx+0Ch], 3E748919h
mov     dword ptr [ebx+14h], 0D891Fh
mov     dword ptr [ebx+1Ch], 8F19h
mov     dword ptr [ebx+24h], 8F1Fh
jmp     loc_437637

loc_43757F:             ; jumptable 004373AA case 14
mov     dword ptr [ebx+0Ch], 3E748921h
mov     dword ptr [ebx+14h], 0D8927h
mov     dword ptr [ebx+1Ch], 8F21h
mov     dword ptr [ebx+24h], 8F27h
jmp     loc_437637

loc_4375A0:             ; jumptable 004373AA case 15
mov     dword ptr [ebx+0Ch], 3E748929h
mov     dword ptr [ebx+14h], 0D892Fh
mov     dword ptr [ebx+1Ch], 8F29h
mov     dword ptr [ebx+24h], 8F2Fh
jmp     loc_437637

loc_4375C1:             ; jumptable 004373AA case 16
mov     dword ptr [ebx+0Ch], 3E748931h
mov     dword ptr [ebx+14h], 0D8937h
mov     dword ptr [ebx+1Ch], 8F31h
mov     dword ptr [ebx+24h], 8F37h
jmp     short loc_437637

loc_4375DF:             ; jumptable 004373AA case 17
mov     dword ptr [ebx+0Ch], 3E748939h
mov     dword ptr [ebx+14h], 0D893Fh
mov     dword ptr [ebx+1Ch], 8F39h
mov     dword ptr [ebx+24h], 8F3Fh
jmp     short loc_437637

loc_4375FD:             ; jumptable 004373AA case 18
mov     dword ptr [ebx+0Ch], 3E748941h
mov     dword ptr [ebx+14h], 0D8947h
mov     dword ptr [ebx+1Ch], 8F41h
mov     dword ptr [ebx+24h], 8F47h
jmp     short loc_437637

loc_43761B:             ; jumptable 004373AA case 19
mov     dword ptr [ebx+0Ch], 3E748949h
mov     dword ptr [ebx+14h], 0D894Fh
mov     dword ptr [ebx+1Ch], 8F49h
mov     dword ptr [ebx+24h], 8F4Fh

loc_437637:
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
mov     edx, ebx
call    sub_4F87A6

loc_437646:
inc     [esp+5Ch+var_38]
jmp     loc_43722E

loc_43764F:
inc     [esp+5Ch+var_14]
jmp     loc_437202

loc_437658:
add     esp, 50h
pop     ebp
pop     edi
pop     esi
retn
sub_436FD0 endp




sub_43765F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, ds:dword_77E6DC
lea     eax, [edx+28h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87CF
mov     dword ptr [edx], 5000000h
mov     dword ptr [edx+4], 2A808080h
mov     ax, [ecx]
mov     [edx+10h], ax
mov     [edx+8], ax
mov     esi, eax
mov     bx, [ecx+4]
add     esi, ebx
mov     [edx+14h], si
mov     [edx+0Ch], si
mov     ax, [ecx+2]
mov     [edx+0Eh], ax
mov     [edx+0Ah], ax
mov     esi, eax
mov     di, [ecx+6]
add     esi, edi
mov     [edx+16h], si
mov     [edx+12h], si
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     esi, ds:dword_77E6DC
push    0
lea     eax, [esi+0Ch]
mov     ds:dword_77E6DC, eax
mov     ebx, 0Fh
xor     edx, edx
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
jmp     loc_43607B
sub_43765F endp




sub_43770B proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx

loc_437710:
mov     edx, ds:dword_77E6DC
lea     eax, [edx+34h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F8817
mov     dword ptr [edx], 8000000h
mov     eax, ecx
shl     eax, 4
mov     ebx, ds:dword_511E01[eax]
or      ebx, 38000000h
mov     [edx+4], ebx
mov     ebx, ds:dword_511E05[eax]
mov     [edx+0Ch], ebx
mov     ebx, ds:dword_511E09[eax]
mov     [edx+14h], ebx
mov     eax, ds:dword_511E0D[eax]
mov     [edx+1Ch], eax
mov     word ptr [edx+18h], 0
mov     ax, [edx+18h]
mov     [edx+8], ax
mov     word ptr [edx+20h], 140h
mov     ax, [edx+20h]
mov     [edx+10h], ax
imul    eax, ecx, 78h ; 'x'
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     eax, ecx
inc     eax
imul    eax, 78h ; 'x'
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
inc     ecx
cmp     ecx, 2
jl      loc_437710
pop     edx
pop     ecx
pop     ebx
retn
sub_43770B endp




sub_4377AA proc near
mov     word ptr ds:dword_559978, ax
retn
sub_4377AA endp




sub_4377B1 proc near
mov     word ptr ds:dword_559978+2, ax
retn
sub_4377B1 endp




sub_4377B8 proc near
mov     eax, ds:dword_559974+2
sar     eax, 10h
retn
sub_4377B8 endp




sub_4377C1 proc near
mov     eax, ds:dword_559978
sar     eax, 10h
retn
sub_4377C1 endp




sub_4377CA proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, ds:dword_77E7E0+2
sar     ebp, 10h
xor     edi, edi
jmp     short loc_4377EA

loc_4377E0:
inc     edi
cmp     edi, 2
jnb     loc_4378B6

loc_4377EA:
xor     esi, esi
jmp     short loc_437847

loc_4377EE:
sub     edx, 12h
sub     ecx, 12h
sub     eax, 12h

loc_4377F7:
test    edx, edx
jge     short loc_4377FD
xor     edx, edx

loc_4377FD:
test    ecx, ecx
jge     short loc_437803
xor     ecx, ecx

loc_437803:
test    eax, eax
jge     short loc_437809
xor     eax, eax

loc_437809:
shl     eax, 0Ah
mov     ebx, [esp+1Ch+var_1C]
or      ebx, eax
shl     ecx, 5
or      ebx, ecx
or      ebx, edx

loc_437818:
xor     edx, edx
mov     dx, ds:word_511E26[edi*4]
shl     edx, 8
mov     ax, ds:word_511E24[edi*4]
and     eax, 0FFFFh
add     eax, esi
add     eax, edx
mov     ds:word_7534A4[eax*2], bx
inc     esi
cmp     esi, 80h
jnb     short loc_4377E0

loc_437847:
xor     edx, edx
mov     dx, ds:word_511E26[edi*4]
shl     edx, 8
mov     ax, ds:word_511E24[edi*4]
mov     ebx, eax
and     ebx, 0FFFFh
add     ebx, esi
add     ebx, edx
add     ebx, ebx
mov     bx, ds:word_74F4A4[ebx]
and     ebx, 0FFFFh
mov     eax, ebx
and     eax, 8000h
mov     [esp+1Ch+var_1C], eax
mov     edx, ebx
and     edx, 1Fh
mov     ecx, ebx
shr     ecx, 5
and     ecx, 1Fh
mov     eax, ebx
shr     eax, 0Ah
and     eax, 1Fh
cmp     ebp, 41h ; 'A'
jnb     loc_437818
cmp     ebp, 21h ; '!'
jb      loc_4377EE
sub     edx, 8
sub     ecx, 8
sub     eax, 8
jmp     loc_4377F7

loc_4378B6:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4377CA endp



; Attributes: noreturn

sub_4378C0 proc near
push    ebx
push    ecx
push    edx
mov     ecx, offset dword_6DD9BC
mov     ds:byte_77EAC1, 2
xor     edx, edx
mov     ds:dword_6DD9C8, edx
mov     ds:byte_511E30, 1
xor     dh, dh
mov     byte ptr ds:dword_77E7D5+1, dh
mov     byte ptr ds:dword_77E7D5+2, dh
mov     ds:byte_77E806, dh
call    sub_435882
mov     eax, 1
call    sub_42BEB2
mov     eax, 1
call    sub_4A6495
call    sub_4D8F07
call    sub_4A0E35
call    sub_4A62BD
call    sub_4A056E

loc_43791F:
cmp     byte ptr [ecx], 2
jnz     short loc_437965
test    ds:word_5708DE, 4008h
jz      short loc_437965
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
mov     bx, ds:word_6E23D6
test    bx, bx
jg      short loc_437958
jnz     short loc_43795E
cmp     ds:word_6E23D4, 0
jnz     short loc_43795E

loc_437958:
mov     byte ptr [ecx+1], 1
jmp     short loc_437962

loc_43795E:
mov     byte ptr [ecx+1], 0

loc_437962:
mov     byte ptr [ecx], 4

loc_437965:
movsx   edx, byte ptr [ecx]
mov     eax, ecx
call    ds:funcs_43796A[edx*4]
call    sub_4DE4B5
mov     eax, 1
call    sub_4EEDA4
jmp     short loc_43791F
sub_4378C0 endp




sub_437982 proc near
push    ecx
push    edx
mov     dl, [eax+3]
xor     dl, 1
mov     [eax+3], dl
jz      short loc_4379A0
mov     ds:byte_77E7D4, 1
xor     ch, ch
mov     byte ptr ds:dword_77E7D5, ch
jmp     short loc_4379AD

loc_4379A0:
mov     ds:byte_77E7D4, 7
mov     byte ptr ds:dword_77E7D5, dl

loc_4379AD:
mov     ds:byte_77E806, 80h
mov     eax, offset sub_49F4F7
call    sub_4EEDCA
pop     edx
pop     ecx
retn
sub_437982 endp




sub_4379C1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     al, [eax+1]
test    al, al
jbe     short loc_4379D7
cmp     al, 1
jz      short loc_437A26
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

