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

loc_4EE3F1:
mov     eax, [esi+8]
mov     [esp+8Ch+var_5C], eax
mov     eax, [esi+10h]
mov     [esp+8Ch+var_58], eax
mov     eax, [esi]
mov     [esp+8Ch+var_54], eax
mov     eax, [esp+8Ch+var_58+2]
mov     [esp+8Ch+var_50], ax
lea     eax, [esp+8Ch+var_5C]
call    sub_4EFD0C
call    sub_4EFE75
mov     [esi+24h], esi
mov     dword ptr [esi+2Ch], 0
lea     eax, [esp+8Ch+var_44]
call    sub_4F0102
xor     eax, eax
mov     ax, ds:word_77EAB2
shl     eax, 2
mov     ecx, [esp+8Ch+var_44]
cmp     eax, ecx
jl      short loc_4EE47F
cmp     ecx, 0C0h
jl      short loc_4EE47F
mov     edx, [esp+8Ch+var_40]
lea     eax, [ecx+edx]
sar     eax, 4
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [esi], edx
lea     edx, [esi+24h]
mov     [eax], edx
lea     eax, [esi+14h]
call    sub_4F000C
lea     eax, [esi+1Ch]
call    sub_4F001A
mov     eax, esi
call    sub_4F049B

loc_4EE47F:
inc     edi
jmp     loc_4EE1D7

loc_4EE485:
add     esp, 74h
jmp     loc_4EB1F0
sub_4EE1A3 endp




sub_4EE48D proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ecx
push    edi
sub     esp, 10h
mov     ecx, esi
mov     eax, [eax+edx*4+18h]
mov     edx, [eax]
mov     [esp+18h+var_18], edx
and     edx, 0FFh
shl     edx, 2
add     eax, edx
shl     ebx, 3
add     eax, 4
add     eax, ebx
mov     edx, [eax]
and     edx, 0FFFFFFh
mov     ebx, offset unk_6B87CC
add     ebx, edx
mov     [esp+18h+var_10], ebx
mov     edx, [eax+4]
mov     eax, edx
shr     eax, 18h
mov     [esp+18h+var_14], eax
and     edx, 0FFFFFFh
mov     eax, offset unk_6B87CC
add     eax, edx
mov     [esp+18h+var_C], eax
mov     edi, esi
mov     esi, esp
movsd
movsd
movsd
movsd
mov     eax, ecx
add     esp, 10h
pop     edi
pop     ecx
retn
sub_4EE48D endp




sub_4EE4F0 proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ecx
push    edi
sub     esp, 8
mov     ecx, esi
shl     edx, 3
add     edx, eax
mov     eax, [edx]
mov     [esp+10h+var_10], eax
mov     eax, [edx+4]
mov     [esp+10h+var_C], eax
mov     edi, esi
mov     esi, esp
movsd
movsd
mov     eax, ecx
add     esp, 8
pop     edi
pop     ecx
retn
sub_4EE4F0 endp

shl     edx, 4
mov     eax, [edx+eax]
retn



sub_4EE51D proc near

var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ecx
push    edi
sub     esp, 0Ch
mov     ecx, esi
shl     edx, 4
add     edx, eax
mov     eax, [edx+4]
mov     [esp+14h+var_14], eax
mov     eax, [edx+8]
mov     [esp+14h+var_10], eax
mov     eax, [edx+0Ch]
mov     [esp+14h+var_C], eax
mov     edi, esi
mov     esi, esp
movsd
movsd
movsd
mov     eax, ecx
add     esp, 0Ch
pop     edi
pop     ecx
retn
sub_4EE51D endp




sub_4EE54C proc near
shl     edx, 3
add     eax, edx
mov     edx, [ebx]
mov     [eax], edx
mov     edx, [ebx+4]
mov     [eax+4], edx
retn
sub_4EE54C endp

shl     edx, 4
add     eax, edx
mov     edx, [ebx]
mov     [eax], edx
retn
shl     edx, 4
add     eax, edx
mov     edx, [ebx]
mov     [eax+4], edx
mov     edx, [ebx+4]
mov     [eax+8], edx
mov     edx, [ebx+8]
mov     [eax+0Ch], edx
retn



sub_4EE57D proc near
push    ebx
push    ecx
push    edx
add     eax, 5F4h
xor     edx, edx

loc_4EE587:
mov     byte ptr [eax], 0
mov     byte ptr [eax+1], 0
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+4], 0
movsx   ebx, byte ptr [eax+1]
shl     ebx, 3
mov     ecx, ds:off_5513A0[edx*4]
mov     cx, [ecx+ebx+2]
mov     [eax+6], cx
inc     edx
add     eax, 8
cmp     edx, 10h
jl      short loc_4EE587
pop     edx
pop     ecx
pop     ebx
retn
sub_4EE57D endp




sub_4EE5BE proc near
push    ecx
push    edx
mov     edx, dword ptr ds:unk_5F84D3
sar     edx, 18h
mov     eax, edx
shl     eax, 3
add     eax, offset byte_5F8364
mov     ecx, [eax+5F2h]
sar     ecx, 18h
mov     edx, ds:off_5513A0[edx*4]
mov     dx, [edx+ecx*8+2]
mov     [eax+5FAh], dx
pop     edx
pop     ecx
retn
sub_4EE5BE endp




sub_4EE5F2 proc near
push    ecx
mov     ecx, edx
mov     ecx, [eax+ecx*8+5F1h]
sar     ecx, 18h
shl     ecx, 3
mov     eax, ds:off_5513A0[edx*4]
movsx   eax, word ptr [ecx+eax]
pop     ecx
retn
sub_4EE5F2 endp




sub_4EE60F proc near
push    ecx
mov     ecx, edx
mov     ecx, [eax+ecx*8+5F2h]
sar     ecx, 18h
shl     ecx, 3
mov     eax, ds:off_5513A0[edx*4]
mov     eax, [ecx+eax]
sar     eax, 10h
pop     ecx
retn
sub_4EE60F endp




sub_4EE62E proc near
push    ecx
mov     ecx, edx
mov     ecx, [eax+ecx*8+5F3h]
sar     ecx, 18h
shl     ecx, 3
mov     eax, ds:off_5513A0[edx*4]
mov     eax, [ecx+eax+2]
sar     eax, 10h
pop     ecx
retn
sub_4EE62E endp




sub_4EE64E proc near
push    ecx
mov     ecx, edx
mov     ecx, [eax+ecx*8+5F4h]
sar     ecx, 18h
shl     ecx, 3
mov     eax, ds:off_5513A0[edx*4]
mov     eax, [ecx+eax+4]
sar     eax, 10h
pop     ecx
retn
sub_4EE64E endp




sub_4EE66E proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
test    byte ptr [eax+0D7h], 0FFh
jz      short loc_4EE685
mov     eax, 7FFFh
pop     esi
pop     ecx
pop     ebx
retn

loc_4EE685:
mov     eax, ecx
call    sub_42CE47
mov     ebx, eax
test    eax, eax
jz      short loc_4EE6BE
jle     short loc_4EE6B5
mov     esi, eax
and     esi, 0FFFFh
cmp     esi, 8000h
jge     short loc_4EE6B5
test    eax, 0F0000h
jz      short loc_4EE6B5
xor     eax, eax
mov     ax, bx
call    sub_4EE6EA

loc_4EE6B5:
mov     eax, ecx
call    sub_42DE56
mov     eax, ebx

loc_4EE6BE:
pop     esi
pop     ecx
pop     ebx
retn
sub_4EE66E endp




sub_4EE6C2 proc near
push    ecx
test    eax, eax
jle     short loc_4EE6E8
mov     ecx, eax
and     ecx, 0FFFFh
cmp     ecx, 8000h
jge     short loc_4EE6E8
test    eax, 0F0000h
jz      short loc_4EE6E8
and     eax, 0FFFFh
call    sub_4EE6EA

loc_4EE6E8:
pop     ecx
retn
sub_4EE6C2 endp




sub_4EE6EA proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, edx
xor     edx, edx
mov     dx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
xor     esi, esi
mov     si, ds:word_6E40B2[eax]
mov     ebx, esi
and     ebx, 0FFFh
mov     ecx, esi
shr     ecx, 0Ch
shr     edi, cl
sub     ebx, edi
test    ebx, ebx
jg      short loc_4EE741
mov     eax, ds:dword_6E40B4[eax]
test    byte ptr [eax+3], 80h
jz      short loc_4EE735
mov     eax, edx
call    sub_4EE755
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4EE735:
mov     eax, edx
call    sub_4EEA6B
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4EE741:
and     esi, 0F000h
or      ebx, esi
mov     ds:word_6E40B2[eax], bx
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4EE6EA endp




sub_4EE755 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
xor     ebx, ebx
mov     bx, ax
mov     ecx, ebx
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
xor     ecx, ebx
mov     cx, ds:word_6E40B2[eax*4]
sar     ecx, 0Ch
xor     esi, esi
mov     ds:word_6E40B2[eax*4], si
test    cx, cx
ja      short loc_4EE78E
mov     edx, 4
xor     eax, eax
jmp     short loc_4EE79A

loc_4EE78E:
xor     ebx, ebx
mov     bx, dx
mov     edx, 4
mov     eax, edx

loc_4EE79A:
call    sub_4EE7BD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4EE755 endp




sub_4EE7A4 proc near
push    edx
xor     edx, edx
mov     dx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     ds:word_6E40B2[eax*4], dx
pop     edx
retn
sub_4EE7A4 endp




sub_4EE7BD proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= word ptr -2Ch
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
sub     esp, 28h
push    eax
push    edx
xor     edx, edx
mov     dx, bx
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ebp, ds:dword_6E40B4[eax*4]
lea     edi, [esp+40h+var_38]
lea     esi, [ebp+0Ch]
movsd
movsd
mov     ebp, [ebp+14h]
mov     edx, ebp
and     edx, 0FFFFh
mov     [esp+40h+var_14], edx
shr     ebp, 11h
lea     edi, [esp+40h+var_30]
lea     esi, (dword_6E40AA+2)[eax*4]
movsd
movsd
mov     eax, [esp+40h+var_38]
add     word ptr [esp+40h+var_30], ax
mov     edx, [esp+40h+var_38]
sar     edx, 10h
sar     edx, 1
mov     eax, [esp+40h+var_30]
sar     eax, 10h
add     eax, edx
mov     word ptr [esp+40h+var_30+2], ax
mov     eax, [esp+40h+var_34]
add     [esp+40h+var_2C], ax
lea     ecx, [esp+40h+var_30]
mov     ebx, 1388h
mov     edx, 3E8h
mov     eax, 1Eh
call    sub_42A70B
mov     eax, [esp+40h+var_3C]
dec     eax
mov     cl, al
mov     edx, 1000h
sar     edx, cl
mov     [esp+40h+var_1C], edx
mov     eax, 1
shl     eax, cl
mov     [esp+40h+var_18], eax
mov     eax, [esp+40h+var_40]
dec     eax
mov     cl, al
mov     edx, 1000h
sar     edx, cl
mov     [esp+40h+var_20], edx
mov     eax, 1
shl     eax, cl
mov     [esp+40h+var_24], eax
cmp     [esp+40h+var_3C], 0
jz      loc_4EE93A
xor     ebx, ebx

loc_4EE888:
cmp     ebx, [esp+40h+var_18]
jnb     loc_4EE93A
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_4EE934
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
call    rand_
mov     esi, eax
mov     ecx, [esp+40h+var_1C]
imul    ecx, ebx
and     eax, 1Fh
sub     ecx, eax
cmp     [esp+40h+var_18], 1
jnz     short loc_4EE8C8
xor     ebp, ebp

loc_4EE8C8:
mov     eax, ecx
call    sub_4EF003
imul    eax, ebp
shr     eax, 0Ch
mov     [esp+40h+var_28], eax
mov     eax, [esp+40h+var_34+2]
sar     eax, 10h
add     eax, [esp+40h+var_28]
mov     [edx+48h], ax
mov     eax, esi
shr     eax, 7
and     eax, 0FFh
and     esi, 0FFh
add     eax, esi
mov     esi, [esp+40h+var_14]
shr     esi, 1
sub     eax, 100h
imul    esi, eax
shr     esi, 8
mov     eax, [esp+40h+var_30]
sar     eax, 10h
sub     eax, esi
mov     [edx+4Ah], ax
mov     eax, ecx
call    sub_4EF008
mov     ecx, eax
imul    ecx, ebp
shr     ecx, 0Ch
mov     eax, [esp+40h+var_30+2]
sar     eax, 10h
add     eax, ecx
mov     [edx+4Ch], ax

loc_4EE934:
inc     ebx
jmp     loc_4EE888

loc_4EE93A:
cmp     [esp+40h+var_40], 0
jz      loc_4EE9F0
xor     ebx, ebx

loc_4EE946:
cmp     ebx, [esp+40h+var_24]
jnb     loc_4EE9F0
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_4EE9EA
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 2
call    rand_
mov     esi, eax
mov     ecx, [esp+40h+var_20]
imul    ecx, ebx
and     eax, 1Fh
sub     ecx, eax
cmp     [esp+40h+var_24], 1
jnz     short loc_4EE986
xor     ebp, ebp

loc_4EE986:
mov     eax, ecx
call    sub_4EF003
imul    eax, ebp
shr     eax, 0Ch
mov     edi, [esp+40h+var_34+2]
sar     edi, 10h
add     eax, edi
mov     [edx+1Ch], ax
mov     eax, esi
shr     eax, 7
and     eax, 0FFh
and     esi, 0FFh
add     eax, esi
mov     esi, [esp+40h+var_14]
shr     esi, 1
sub     eax, 100h
imul    eax, esi
shr     eax, 8
mov     esi, [esp+40h+var_30]
sar     esi, 10h
sub     esi, eax
mov     [edx+1Eh], si
mov     eax, ecx
call    sub_4EF008
imul    eax, ebp
shr     eax, 0Ch
mov     ecx, [esp+40h+var_30+2]
sar     ecx, 10h
add     eax, ecx
mov     [edx+20h], ax

loc_4EE9EA:
inc     ebx
jmp     loc_4EE946

loc_4EE9F0:
add     esp, 30h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4EE7BD endp




sub_4EE9F8 proc near
push    ecx
push    edx
mov     edx, eax
test    eax, eax
jle     short loc_4EEA37
cmp     ax, 8000h
jnb     short loc_4EEA37
xor     ecx, ecx
mov     cx, ax
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ax, ds:word_6E40B2[eax*4]
and     ah, 0Fh
test    ax, ax
jnz     short loc_4EEA27
xor     eax, eax
pop     edx
pop     ecx
retn

loc_4EEA27:
test    edx, 0F0000h
jz      short loc_4EEA37
and     eax, 0FFFFh
pop     edx
pop     ecx
retn

loc_4EEA37:
mov     eax, 0FFFFFFFFh
pop     edx
pop     ecx
retn
sub_4EE9F8 endp




sub_4EEA3F proc near
push    edx
cmp     ax, 8000h
jnb     short loc_4EEA64
xor     edx, edx
mov     dx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ax, ds:word_6E40B2[eax*4]
and     ah, 0Fh
and     eax, 0FFFFh
pop     edx
retn

loc_4EEA64:
mov     eax, 0FFFFFFFFh
sub_4EEA3F endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4EECAA

loc_4EEA69:
pop     edx
retn
; END OF FUNCTION CHUNK FOR sub_4EECAA



sub_4EEA6B proc near
push    ecx
push    edx
cmp     ax, 800h
jnb     short loc_4EEADC
xor     edx, edx
mov     dx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ecx, ds:dword_6E40AE[eax*4]
sar     ecx, 10h
add     ecx, 8000h
sar     ecx, 9
xor     edx, edx
mov     dl, ds:byte_77EAC3
sub     ecx, edx
mov     edx, ecx
shl     edx, 8
mov     ecx, ds:dword_6E40AA[eax*4]
sar     ecx, 10h
add     ecx, 8000h
sar     ecx, 9
xor     eax, eax
mov     al, ds:byte_77EAC5
sub     ecx, eax
lea     eax, [ecx+edx]
mov     edx, eax
xor     eax, eax
mov     ax, ds:word_5513E0
mov     ds:word_560ADC[eax*2], dx
mov     edx, eax
inc     edx
mov     ds:word_5513E0, dx

loc_4EEADC:
pop     edx
pop     ecx
retn
sub_4EEA6B endp




sub_4EEADF proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     edx, eax
xor     dh, ah
and     edx, 0FFFFh
mov     [esp+24h+var_20], edx
movzx   ebp, ax
sar     ebp, 8
lea     eax, [edx+edx]
mov     edx, ds:dword_77E700
add     edx, eax
xor     eax, eax
mov     ax, ds:word_77EAAE
imul    eax, ebp
mov     ax, [edx+eax*2]
mov     [esp+24h+var_1C], eax
xor     edx, edx
mov     dx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
test    ds:word_6E40B2[eax*4], 0FFFh
jz      loc_4EEBDA
xor     eax, eax
mov     edi, ds:dword_77E700
jmp     short loc_4EEB4A

loc_4EEB40:
inc     eax
cmp     eax, 8
jnb     loc_4EEBC4

loc_4EEB4A:
mov     esi, ds:(off_5513DC+3)[eax]
sar     esi, 18h
add     esi, [esp+24h+var_20]
mov     ecx, ds:dword_5513E7[eax]
sar     ecx, 18h
add     ecx, ebp
xor     edx, edx
mov     dx, ds:word_77EAAE
cmp     esi, edx
jnb     short loc_4EEB40
xor     ebx, ebx
mov     bx, ds:word_77EAB0
cmp     ecx, ebx
jnb     short loc_4EEB40
lea     ebx, [esi+esi]
add     ebx, edi
imul    edx, ecx
movsx   edx, word ptr [ebx+edx*2]
cmp     edx, 800h
jge     short loc_4EEB40
test    edx, edx
jle     short loc_4EEB40
xor     ebx, ebx
mov     bx, word ptr [esp+24h+var_1C]
cmp     edx, ebx
jnz     short loc_4EEB40
shl     ecx, 8
add     ecx, esi
xor     edx, ebx
mov     dx, ds:word_5513E0
mov     ds:word_560ADC[edx*2], cx
mov     ebx, edx
inc     ebx
mov     ds:word_5513E0, bx
jmp     loc_4EEB40

loc_4EEBC4:
xor     eax, eax
mov     ax, word ptr [esp+24h+var_1C]
call    sub_4EE755

loc_4EEBD0:
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4EEBDA:
xor     eax, eax
dec     ds:word_5513E0
jmp     short loc_4EEBEB

loc_4EEBE5:
inc     eax
cmp     eax, 4
jnb     short loc_4EEBD0

loc_4EEBEB:
mov     esi, ds:dword_5513EF[eax]
sar     esi, 18h
add     esi, [esp+24h+var_20]
mov     ecx, ds:dword_5513F3[eax]
sar     ecx, 18h
add     ecx, ebp
xor     edx, edx
mov     dx, ds:word_77EAAE
cmp     esi, edx
jnb     short loc_4EEBE5
xor     ebx, ebx
mov     bx, ds:word_77EAB0
cmp     ecx, ebx
jnb     short loc_4EEBE5
lea     ebx, [esi+esi]
add     ebx, ds:dword_77E700
imul    edx, ecx
movsx   edx, word ptr [ebx+edx*2]
cmp     edx, 800h
jge     short loc_4EEBE5
test    edx, edx
jle     short loc_4EEBE5
xor     edi, edi
mov     di, word ptr [esp+24h+var_1C]
cmp     edx, edi
jz      short loc_4EEBE5
mov     ebx, edi
shl     ebx, 2
sub     ebx, edi
mov     ebx, ds:dword_6E40B4[ebx*4]
mov     ebx, [ebx]
shr     ebx, 10h
mov     [esp+24h+var_24], ebx
mov     ebx, edx
shl     edx, 2
sub     edx, ebx
shl     edx, 2
mov     ebx, ds:dword_6E40B4[edx]
mov     ebx, [ebx]
shr     ebx, 10h
cmp     ebx, [esp+24h+var_24]
jnz     loc_4EEBE5
test    ds:word_6E40B2[edx], 0FFFh
jz      loc_4EEBE5
shl     ecx, 8
add     ecx, esi
xor     edx, edx
mov     dx, ds:word_5513E0
mov     ds:word_560ADC[edx*2], cx
inc     edx
mov     ds:word_5513E0, dx
jmp     loc_4EEBE5
sub_4EEADF endp




sub_4EECAA proc near

; FUNCTION CHUNK AT 004EEA69 SIZE 00000002 BYTES

push    edx

loc_4EECAB:
mov     dx, ds:word_5513E0
test    dx, dx
jz      loc_4EEA69
xor     eax, eax
mov     ax, dx
mov     ax, ds:word_560ADA[eax*2]
and     eax, 0FFFFh
call    sub_4EEADF
jmp     short loc_4EECAB
sub_4EECAA endp




sub_4EECD4 proc near
push    ecx
mov     ecx, eax
mov     eax, edx
shl     ebx, 2
sub_4EECD4 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4EECE5
;   ADDITIONAL PARENT FUNCTION sub_4EECEF

loc_4EECDC:
mov     edx, ecx
call    memcpy_
pop     ecx
retn
; END OF FUNCTION CHUNK FOR sub_4EECE5



sub_4EECE5 proc near

; FUNCTION CHUNK AT 004EECDC SIZE 00000009 BYTES

push    ecx
mov     ecx, eax
mov     eax, edx
shl     ebx, 4
jmp     short loc_4EECDC
sub_4EECE5 endp




sub_4EECEF proc near

; FUNCTION CHUNK AT 004EECDC SIZE 00000009 BYTES

push    ecx
mov     ecx, eax
mov     eax, edx
shl     ebx, 5
jmp     short loc_4EECDC
sub_4EECEF endp




sub_4EECF9 proc near
push    ebx
sub     edx, eax
lea     ebx, [edx+4]
xor     edx, edx
call    memset_
pop     ebx
retn
sub_4EECF9 endp




sub_4EED08 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ds:dword_551410, esp
xor     edx, edx

loc_4EED15:
mov     ds:dword_55140C, edx
test    word ptr ds:dword_5513FC[edx], 0FFFFh
jz      short loc_4EED5E
cmp     word ptr ds:dword_5513FC[edx], 1
jnz     short loc_4EED4B
dec     word ptr ds:(dword_5513FC+2)[edx]
test    word ptr ds:(dword_5513FC+2)[edx], 0FFFFh
jnz     short loc_4EED5E
mov     word ptr ds:dword_5513FC[edx], 2

loc_4EED4B:
mov     esp, ds:dword_551400[edx]
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4EED58:
mov     esp, ds:dword_551410

loc_4EED5E:
add     edx, 8
cmp     edx, 10h
jb      short loc_4EED15
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4EED08 endp




sub_4EED6C proc near
mov     eax, esp
sub     eax, 8000h
mov     ds:dword_551414, eax
retn
sub_4EED6C endp




sub_4EED79 proc near
push    ebx
mov     ebx, eax
shl     ebx, 3
mov     word ptr ds:dword_5513FC[ebx], 2
imul    eax, 4000h
sub     eax, ds:dword_551414
neg     eax
sub     eax, 1Ch
mov     ds:dword_551400[ebx], eax
mov     [eax+18h], edx
pop     ebx
retn
sub_4EED79 endp




sub_4EEDA4 proc near
push    edx
mov     edx, ds:dword_55140C
mov     word ptr ds:dword_5513FC[edx], 1
mov     word ptr ds:(dword_5513FC+2)[edx], ax
pop     eax
push    ebx
push    ecx
push    eax
push    esi
push    edi
push    ebp
mov     ds:dword_551400[edx], esp
jmp     short loc_4EED58
sub_4EEDA4 endp




sub_4EEDCA proc near
mov     edx, ds:dword_55140C
mov     word ptr ds:dword_5513FC[edx], 2
mov     ebx, edx
shr     ebx, 3
imul    ebx, 4000h
sub     ebx, ds:dword_551414
neg     ebx
sub     ebx, 1Ch
mov     ds:dword_551400[edx], ebx
mov     [ebx+18h], eax
jmp     loc_4EED58
sub_4EEDCA endp




sub_4EEDFD proc near
mov     edx, ds:dword_55140C
mov     ds:dword_5513FC[edx], 0
mov     ds:dword_551400[edx], 0
jmp     loc_4EED58
sub_4EEDFD endp




sub_4EEE1C proc near
push    ecx
push    esi
push    edi
mov     ecx, 40h ; '@'
mov     esi, eax
mov     edi, edx

loc_4EEE28:
mov     eax, [esi]
mov     edx, [edi]
and     edx, eax
xor     edx, 0FFFFFFFFh
and     [edi], edx
add     esi, 4
add     edi, 4
loop    loc_4EEE28
pop     edi
pop     esi
pop     ecx
retn
sub_4EEE1C endp

; [0000000A BYTES: COLLAPSED FUNCTION initrandnext_]
; [00000024 BYTES: COLLAPSED FUNCTION rand_]

srand_:
push    edx
mov     edx, eax
call    initrandnext_
test    eax, eax
jz      short loc_4EEE7B
mov     [eax], edx

loc_4EEE7B:
pop     edx
retn



sub_4EEE7D proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 8
mov     edx, ds:dword_77EBE0
cmp     eax, edx
jge     short loc_4EEE90
xor     eax, eax
jmp     short loc_4EEECA

loc_4EEE90:
mov     ecx, ds:dword_77EBD4
cmp     eax, ecx
jle     short loc_4EEEA1
mov     eax, 1000h
jmp     short loc_4EEECA

loc_4EEEA1:
sub     eax, edx
mov     [esp+10h+var_C], eax
fild    [esp+10h+var_C]
mov     eax, ecx
sub     eax, edx
mov     [esp+10h+var_C], eax
fild    [esp+10h+var_C]
fdivp   st(1), st
fmul    ds:flt_50A4E8
call    __CHP
fistp   [esp+10h+var_10]
mov     eax, [esp+10h+var_10]

loc_4EEECA:
add     esp, 8
pop     edx
pop     ecx
retn
sub_4EEE7D endp




sub_4EEED0 proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8

push    ecx
sub     esp, 0Ch
mov     ecx, eax
fld     ds:flt_77EB30
fcomp   ds:dword_77EBC0
fnstsw  ax
sahf
jb      short loc_4EEF0E
fld     ds:flt_77EB28
fmul    ds:dword_77EBDC
fdiv    ds:flt_77EB30
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [ecx]
fld     ds:flt_77EB2C
jmp     loc_4EEFA6

loc_4EEF0E:
fldz
fcomp   ds:flt_77EB30
fnstsw  ax
sahf
jb      short loc_4EEF5E
fld     ds:flt_77EB28
fmul    ds:dword_77EBDC
fdiv    ds:dword_77EBC0
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [ecx]
fld     ds:flt_77EB2C
fmul    ds:dword_77EBDC
fdiv    ds:dword_77EBC0
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [edx]
mov     dword ptr [ebx], 0
add     esp, 0Ch
pop     ecx
retn

loc_4EEF5E:
fld     ds:flt_77EB30
fdiv    ds:dword_77EBC0
fstp    [esp+10h+var_C]
fld     ds:flt_77EB28
fmul    [esp+10h+var_C]
fstp    [esp+10h+var_8]
fld     ds:flt_77EB2C
fmul    [esp+10h+var_C]
fstp    [esp+10h+var_10]
fld     [esp+10h+var_8]
fmul    ds:dword_77EBDC
fdiv    ds:flt_77EB30
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [ecx]
fld     [esp+10h+var_10]

loc_4EEFA6:
fmul    ds:dword_77EBDC
fdiv    ds:flt_77EB30
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [edx]
fld     ds:flt_77EB30
call    __CHP
fistp   dword ptr [ebx]
add     esp, 0Ch
pop     ecx
retn
sub_4EEED0 endp

; START OF FUNCTION CHUNK FOR sub_4EF008

loc_4EEFCE:
mov     edx, 1

loc_4EEFD3:
and     eax, 7FFh
cmp     eax, 400h
jge     short loc_4EEFE9
mov     ax, ds:word_55143C[eax*2]
jmp     short loc_4EEFF8

loc_4EEFE9:
mov     ecx, 800h
sub     ecx, eax
mov     ax, ds:word_55143C[ecx*2]

loc_4EEFF8:
and     eax, 0FFFFh
imul    eax, edx
pop     edx
pop     ecx
retn
; END OF FUNCTION CHUNK FOR sub_4EF008



sub_4EF003 proc near
add     eax, 400h
sub_4EF003 endp




sub_4EF008 proc near

; FUNCTION CHUNK AT 004EEFCE SIZE 00000035 BYTES

push    ecx
push    edx
test    ah, 8
jz      short loc_4EEFCE
mov     edx, 0FFFFFFFFh
jmp     short loc_4EEFD3
sub_4EF008 endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF016 proc near

var_4= dword ptr -4

push    ebp
mov     ebp, esp
sub     esp, 4
and     esp, 0FFFFFFF8h
mov     [esp+4+var_4], eax
fild    [esp+4+var_4]
fmul    ds:dbl_50A4F0
call    IF@ATAN
fmul    ds:dbl_50A4F8
fdiv    ds:dbl_50A500

loc_4EF03C:
call    __CHP
fistp   [esp+4+var_4]
mov     eax, [esp+4+var_4]
mov     esp, ebp
pop     ebp
retn
sub_4EF016 endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF04B proc near

var_4= dword ptr -4

push    ebp
mov     ebp, esp
sub     esp, 4
and     esp, 0FFFFFFF8h
mov     [esp+4+var_4], eax
fild    [esp+4+var_4]
mov     [esp+4+var_4], edx
fild    [esp+4+var_4]
fxch    st(1)
call    IF@ATAN2
fmul    ds:dbl_50A508
fdiv    ds:dbl_50A510
jmp     short loc_4EF03C
sub_4EF04B endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF075 proc near

var_4= dword ptr -4

push    ebp
mov     ebp, esp
sub     esp, 4
and     esp, 0FFFFFFF8h
mov     [esp+4+var_4], eax
fild    [esp+4+var_4]
call    IF@SQRT
jmp     short loc_4EF03C
sub_4EF075 endp




sub_4EF08B proc near
push    ebx
push    esi
mov     ds:dword_77EBDC, 447A0000h
mov     ds:dword_77EBC0, 43FA0000h
mov     ebx, 3333h
mov     ds:dword_77EBC4, ebx
mov     esi, 10000h
mov     ds:dword_77EBD8, esi
mov     ds:dword_77EBE0, ebx
mov     ds:dword_77EBD4, esi
pop     esi
pop     ebx
retn
sub_4EF08B endp




sub_4EF0C6 proc near
mov     ds:dword_77EBCC, eax
mov     ds:dword_77EBD0, edx
retn
sub_4EF0C6 endp




sub_4EF0D2 proc near

var_4= dword ptr -4

sub     esp, 4
mov     [esp+4+var_4], eax
fild    [esp+4+var_4]
fst     ds:dword_77EBDC
fmul    ds:flt_50A518
fstp    ds:dword_77EBC0
fild    ds:dword_77EBC4
fmul    ds:dword_77EBDC
fdiv    ds:flt_50A51C
call    __CHP
fistp   ds:dword_77EBE0
fild    ds:dword_77EBD8
fmul    ds:dword_77EBDC
fdiv    ds:flt_50A51C
call    __CHP
fistp   ds:dword_77EBD4
add     esp, 4
retn
sub_4EF0D2 endp




sub_4EF12B proc near

var_4= dword ptr -4

sub     esp, 4
mov     ds:dword_77EBC4, eax
mov     [esp+4+var_4], eax
fild    [esp+4+var_4]
fmul    ds:dword_77EBDC
fdiv    ds:flt_50A520
call    __CHP
fistp   ds:dword_77EBE0
add     esp, 4
retn
sub_4EF12B endp




sub_4EF154 proc near
mov     ds:byte_77EBB0, al
mov     ds:byte_77EBB1, dl
mov     ds:byte_77EBB2, bl
retn
sub_4EF154 endp




sub_4EF166 proc near
shl     eax, 4
mov     word ptr ds:dword_77EB66+2, ax
shl     edx, 4
mov     word ptr ds:dword_77EB6A, dx
shl     ebx, 4
mov     word ptr ds:dword_77EB6A+2, bx
retn
sub_4EF166 endp




sub_4EF184 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, 24h ; '$'
mov     edx, offset unk_551418
call    memcpy_
lea     eax, [ecx+24h]
mov     ebx, 0Ch
xor     edx, edx
call    memset_
pop     edx
pop     ecx
pop     ebx
retn
sub_4EF184 endp




sub_4EF1AB proc near
push    ebx
push    edx
mov     ebx, 24h ; '$'
mov     edx, offset unk_551418
jmp     loc_4EFB52
sub_4EF1AB endp




sub_4EF1BC proc near
mov     dword ptr [eax], 3E000000h
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+10h], 3E000000h
mov     dword ptr [eax+14h], 0
mov     dword ptr [eax+18h], 0
mov     dword ptr [eax+1Ch], 0
mov     dword ptr [eax+20h], 3E000000h
retn
sub_4EF1BC endp




sub_4EF1FB proc near

var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 0Ch
fild    word ptr [edx]
fstp    [esp+0Ch+var_C]
fild    word ptr [edx+2]
fstp    [esp+0Ch+var_8]
fild    word ptr [edx+4]

loc_4EF20D:
fstp    [esp+0Ch+var_4]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+4]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+8]
faddp   st(1), st
call    __CHP
fistp   dword ptr [ebx]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax+0Ch]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+10h]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+14h]
faddp   st(1), st
call    __CHP
fistp   dword ptr [ebx+4]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax+18h]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+1Ch]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+20h]
faddp   st(1), st
call    __CHP
fistp   dword ptr [ebx+8]

loc_4EF26F:
mov     eax, ebx
add     esp, 0Ch
retn
sub_4EF1FB endp




sub_4EF275 proc near

var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 0Ch
fild    word ptr [edx]
fstp    [esp+0Ch+var_C]
fild    word ptr [edx+2]
fstp    [esp+0Ch+var_8]
fild    word ptr [edx+4]
fstp    [esp+0Ch+var_4]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+4]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+8]
faddp   st(1), st
fstp    dword ptr [ebx]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax+0Ch]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+10h]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+14h]
faddp   st(1), st
fstp    dword ptr [ebx+4]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax+18h]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+1Ch]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+20h]
faddp   st(1), st
fstp    dword ptr [ebx+8]
jmp     short loc_4EF26F
sub_4EF275 endp




sub_4EF2DC proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 10h
fild    word ptr [edx]
fstp    [esp+10h+var_10]
fild    word ptr [edx+2]
fstp    [esp+10h+var_C]
fild    word ptr [edx+4]
fstp    [esp+10h+var_8]
fld     [esp+10h+var_C]
fmul    dword ptr [eax+4]
fld     [esp+10h+var_10]
fmul    dword ptr [eax]
faddp   st(1), st
fld     [esp+10h+var_8]
fmul    dword ptr [eax+8]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_4]
mov     edx, [esp+10h+var_4]
mov     [ebx], dx
fld     [esp+10h+var_10]
fmul    dword ptr [eax+0Ch]
fld     [esp+10h+var_C]
fmul    dword ptr [eax+10h]
faddp   st(1), st
fld     [esp+10h+var_8]
fmul    dword ptr [eax+14h]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_4]
mov     edx, [esp+10h+var_4]
mov     [ebx+2], dx
fld     [esp+10h+var_10]
fmul    dword ptr [eax+18h]
fld     [esp+10h+var_C]
fmul    dword ptr [eax+1Ch]
faddp   st(1), st
fld     [esp+10h+var_8]
fmul    dword ptr [eax+20h]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_4]
mov     eax, [esp+10h+var_4]
mov     [ebx+4], ax
mov     eax, ebx
add     esp, 10h
retn
sub_4EF2DC endp




sub_4EF371 proc near

var_C= dword ptr -0Ch
var_8= dword ptr -8

sub     esp, 0Ch
fild    dword ptr [edx]
fstp    [esp+0Ch+var_C]
fild    dword ptr [edx+4]
fstp    [esp+0Ch+var_8]
fild    dword ptr [edx+8]
jmp     loc_4EF20D
sub_4EF371 endp




sub_4EF388 proc near

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
sub     esp, 30h
mov     ecx, ebx
fld     dword ptr [eax+4]
fmul    dword ptr [edx+0Ch]
fld     dword ptr [eax]
fmul    dword ptr [edx]
faddp   st(1), st
fld     dword ptr [eax+8]
fmul    dword ptr [edx+18h]
faddp   st(1), st
fstp    [esp+34h+var_34]
fld     dword ptr [eax+4]
fmul    dword ptr [edx+10h]
fld     dword ptr [eax]
fmul    dword ptr [edx+4]
faddp   st(1), st
fld     dword ptr [eax+8]
fmul    dword ptr [edx+1Ch]
faddp   st(1), st
fstp    [esp+34h+var_30]
fld     dword ptr [eax+4]
fmul    dword ptr [edx+14h]
fld     dword ptr [eax]
fmul    dword ptr [edx+8]
faddp   st(1), st
fld     dword ptr [eax+8]
fmul    dword ptr [edx+20h]
faddp   st(1), st
fstp    [esp+34h+var_2C]
fld     dword ptr [eax+10h]
fmul    dword ptr [edx+0Ch]
fld     dword ptr [eax+0Ch]
fmul    dword ptr [edx]
faddp   st(1), st
fld     dword ptr [eax+14h]
fmul    dword ptr [edx+18h]
faddp   st(1), st
fstp    [esp+34h+var_28]
fld     dword ptr [eax+0Ch]
fmul    dword ptr [edx+4]
fld     dword ptr [eax+10h]
fmul    dword ptr [edx+10h]
faddp   st(1), st
fld     dword ptr [eax+14h]
fmul    dword ptr [edx+1Ch]
faddp   st(1), st
fstp    [esp+34h+var_24]
fld     dword ptr [eax+0Ch]
fmul    dword ptr [edx+8]
fld     dword ptr [eax+10h]
fmul    dword ptr [edx+14h]
faddp   st(1), st
fld     dword ptr [eax+14h]
fmul    dword ptr [edx+20h]
faddp   st(1), st
fstp    [esp+34h+var_20]
fld     dword ptr [eax+1Ch]
fmul    dword ptr [edx+0Ch]
fld     dword ptr [eax+18h]
fmul    dword ptr [edx]
faddp   st(1), st
fld     dword ptr [eax+20h]
fmul    dword ptr [edx+18h]
faddp   st(1), st
fstp    [esp+34h+var_1C]
fld     dword ptr [eax+18h]
fmul    dword ptr [edx+4]
fld     dword ptr [eax+1Ch]
fmul    dword ptr [edx+10h]
faddp   st(1), st
fld     dword ptr [eax+20h]
fmul    dword ptr [edx+1Ch]
faddp   st(1), st
fstp    [esp+34h+var_18]
fld     dword ptr [eax+18h]
fmul    dword ptr [edx+8]
fld     dword ptr [eax+1Ch]
fmul    dword ptr [edx+14h]
faddp   st(1), st
fld     dword ptr [eax+20h]
fmul    dword ptr [edx+20h]
faddp   st(1), st
fstp    [esp+34h+var_14]
mov     ebx, 24h ; '$'
mov     edx, esp
mov     eax, ecx
call    memcpy_
mov     eax, ecx
add     esp, 30h
pop     ecx
retn
sub_4EF388 endp




sub_4EF486 proc near

var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ebx
push    ecx
sub     esp, 3Ch
mov     ebx, eax
mov     ecx, edx
call    sub_4EF003
mov     [esp+44h+var_C], eax
fild    [esp+44h+var_C]
fmul    ds:dbl_50A528
fstp    [esp+44h+var_14]
mov     eax, ebx
call    sub_4EF008
mov     [esp+44h+var_C], eax
fild    [esp+44h+var_C]
fmul    ds:dbl_50A528
fstp    [esp+44h+var_10]
mov     [esp+44h+var_44], 3F800000h
xor     ebx, ebx
mov     [esp+44h+var_40], ebx
mov     [esp+44h+var_3C], ebx
mov     [esp+44h+var_38], ebx
mov     eax, [esp+44h+var_14]
mov     [esp+44h+var_34], eax
fld     [esp+44h+var_10]
fchs
fstp    [esp+44h+var_30]
mov     [esp+44h+var_2C], ebx
mov     eax, [esp+44h+var_10]
mov     [esp+44h+var_28], eax

loc_4EF4F2:
mov     eax, [esp+44h+var_14]
mov     [esp+44h+var_24], eax

loc_4EF4FA:
