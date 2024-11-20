loc_4C3C0A:
lea     esi, [ecx+18h]
mov     eax, esi
call    sub_4EF184
mov     ax, [ecx+0Ch]
mov     [esp+4Ch+var_1C], ax
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_5375D4[eax*4]
mov     [esp+4Ch+var_1A], ax
xor     edx, edx
mov     [esp+4Ch+var_18], dx
mov     eax, esp
call    sub_4EF184
mov     edx, esp
lea     eax, [esp+4Ch+var_1C]
call    sub_4EF638
mov     ebx, esi
mov     edx, esp
mov     eax, esi
call    sub_4EF388
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_4C3C5A[edx*4]

loc_4C3C61:
add     esp, 3Ch
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C3BD1 endp




sub_4C3C69 proc near

var_78= dword ptr -78h
var_70= dword ptr -70h
var_68= dword ptr -68h
var_60= dword ptr -60h
var_58= dword ptr -58h
var_50= dword ptr -50h
var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_38= dword ptr -38h
var_30= dword ptr -30h
var_28= dword ptr -28h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 90h
mov     ecx, eax
cmp     byte ptr [eax+3], 0FFh
jnz     short loc_4C3C8E
call    sub_4C4066
mov     eax, ecx
call    sub_4DE477
jmp     loc_4C3E52

loc_4C3C8E:
xor     edx, edx
mov     dl, [ecx+8]
mov     eax, ecx
call    ds:funcs_4C3C95[edx*4]
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jnz     loc_4C3E4B
mov     [esp+0A8h+var_20], 100h
xor     ebx, ebx
mov     [esp+0A8h+var_1E], bx
xor     esi, esi
mov     [esp+0A8h+var_1C], si
mov     eax, esp
call    sub_4EF1AB
mov     edx, [ecx+9]
sar     edx, 18h
shl     edx, 0Ah
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 0Bh
add     edx, 800h
add     eax, edx
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+0A8h+var_48]
lea     edx, [esp+0A8h+var_20]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [ecx+46h]
sar     eax, 10h
add     [esp+0A8h+var_48], eax
mov     eax, [esp+0A8h+var_48]
mov     [esp+0A8h+var_20], ax
mov     eax, [ecx+48h]
sar     eax, 10h
add     [esp+0A8h+var_44], eax
mov     eax, [esp+0A8h+var_44]
mov     [esp+0A8h+var_1E], ax
mov     eax, [ecx+4Ah]
sar     eax, 10h
add     [esp+0A8h+var_40], eax
mov     eax, [esp+0A8h+var_40]
mov     [esp+0A8h+var_1C], ax
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     eax, (offset dword_5F8376+2)
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_68]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_28]
call    sub_4F0003
lea     eax, [esp+0A8h+var_20]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_58]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_30]
call    sub_4F0003
lea     eax, [ecx+48h]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_78]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_38]
call    sub_4F0003
mov     ebx, [esp+0A8h+var_78]
mov     edi, [esp+0A8h+var_58]
sub     ebx, edi
jz      loc_4C3E4B
mov     eax, [esp+0A8h+var_70]
mov     ebp, [esp+0A8h+var_50]
sub     eax, ebp
mov     edx, [esp+0A8h+var_68]
sub     edx, edi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     eax, ebp
cmp     eax, [esp+0A8h+var_60]
jge     short loc_4C3E4B
fld     [esp+0A8h+var_28]
fcomp   [esp+0A8h+var_30]
fnstsw  ax
sahf
jnb     short loc_4C3E22
fld     [esp+0A8h+var_28]
fcomp   [esp+0A8h+var_38]
fnstsw  ax
sahf
ja      short loc_4C3E42

loc_4C3E22:
fld     [esp+0A8h+var_28]
fcomp   [esp+0A8h+var_30]
fnstsw  ax
sahf
jbe     short loc_4C3E4B
fld     [esp+0A8h+var_28]
fcomp   [esp+0A8h+var_38]
fnstsw  ax
sahf
jnb     short loc_4C3E4B

loc_4C3E42:
mov     dword ptr [ecx+50h], 2404040h
jmp     short loc_4C3E52

loc_4C3E4B:
mov     dword ptr [ecx+50h], offset unk_808080

loc_4C3E52:
add     esp, 90h

loc_4C3E58:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C3C69 endp




sub_4C3E5F proc near
or      byte ptr [eax], 2
inc     byte ptr [eax+8]
retn
sub_4C3E5F endp




sub_4C3E66 proc near
push    edx
mov     edx, eax
mov     eax, 7B1h
call    sub_47E888
test    eax, eax
jz      short loc_4C3EA5
mov     eax, (offset dword_5F8376+2)
call    sub_42C443
cmp     eax, [edx+54h]
jnz     short loc_4C3EA5
mov     byte ptr [edx+8], 2
mov     byte ptr [edx+0Bh], 10h
mov     eax, 7B2h
call    sub_47E8B8
add     edx, 48h ; 'H'
mov     eax, 105h
call    sub_4D8BC3

loc_4C3EA5:
pop     edx
retn
sub_4C3E66 endp




; int __fastcall sub_4C3EA7(int, int)
sub_4C3EA7 proc near

var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
lea     edx, [eax+18h]
mov     eax, edx
call    sub_4EF1AB
xor     eax, eax
mov     al, [ecx+0Bh]
mov     [esp+10h+var_10], eax ; int
fild    word ptr [esp+10h+var_10]
fmul    ds:flt_50A410
fstp    dword ptr [ecx+18h]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     ah, [ecx+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4C3F17
inc     byte ptr [ecx+8]
and     byte ptr [ecx], 0FDh
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, 7B2h
call    sub_47EA91
mov     edx, [ecx+54h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [ecx+40h]
mov     ds:dword_6E40B4[eax*4], edx

loc_4C3F17:
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_4C3EA7 endp




; int __fastcall sub_4C3F1E(int, int)
sub_4C3F1E proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     eax, 7B0h
call    sub_47E888
lea     ebx, [ecx+48h]
lea     edx, [ecx+18h]
test    eax, eax
jz      short loc_4C3F89
mov     eax, 7B1h
call    sub_47E888
test    eax, eax
jnz     loc_4C3FDE
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h
mov     eax, edx
call    sub_4EF1AB
mov     dword ptr [ecx+18h], 0
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
or      byte ptr [ecx], 2
mov     eax, 7B2h
call    sub_47E8B8
mov     edx, ebx
mov     eax, 106h
call    sub_4D8BC3
pop     edx
pop     ecx
pop     ebx
retn

loc_4C3F89:
mov     eax, (offset dword_5F8376+2)
call    sub_42C443
cmp     eax, [ecx+54h]
jz      short loc_4C3FDE
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h
mov     eax, edx
call    sub_4EF1AB
mov     dword ptr [ecx+18h], 0
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
or      byte ptr [ecx], 2
mov     eax, 7B2h
call    sub_47E8B8
mov     edx, ebx
mov     eax, 106h
call    sub_4D8BC3
mov     eax, 7B1h
call    sub_47EA91

loc_4C3FDE:
pop     edx
pop     ecx
pop     ebx
retn
sub_4C3F1E endp




; int __fastcall sub_4C3FE2(int, int)
sub_4C3FE2 proc near

var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
mov     ah, [eax+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4C400F
inc     byte ptr [ecx+8]
xor     ebx, ebx
xor     edx, edx
mov     eax, 186h
call    sub_4D89E4
mov     eax, 7B2h
call    sub_47EA91

loc_4C400F:
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
xor     eax, eax
mov     al, [ecx+0Bh]
mov     ebx, 10h
sub     ebx, eax
mov     [esp+10h+var_10], ebx ; int
fild    [esp+10h+var_10]
fmul    ds:flt_50A414
fstp    dword ptr [ecx+18h]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
jmp     loc_4C3F17
sub_4C3FE2 endp




sub_4C4047 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+54h]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, [edx+3Ch]
mov     ds:dword_6E40B4[eax*4], ecx
mov     byte ptr [edx+8], 0
pop     edx
pop     ecx
retn
sub_4C4047 endp




sub_4C4066 proc near

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
mov     [esp+44h+var_24], 1
xor     ecx, ecx
mov     [esp+44h+var_20], ecx

loc_4C407D:
mov     eax, [esp+44h+var_20]
shl     eax, 3
cmp     ds:byte_537668[eax], 0FFh
jz      short loc_4C40BB
mov     dl, ds:byte_77E7D4
cmp     dl, ds:byte_537668[eax]
jnz     short loc_4C40B5
mov     dl, byte ptr ds:dword_77E7D5
cmp     dl, ds:byte_537669[eax]
jnz     short loc_4C40B5
mov     eax, ds:off_53766C[eax]
mov     [esp+44h+var_24], eax
jmp     short loc_4C40C3

loc_4C40B5:
inc     [esp+44h+var_20]
jmp     short loc_4C407D

loc_4C40BB:
test    ecx, ecx
jz      loc_4C42BB

loc_4C40C3:
xor     eax, eax
mov     al, ds:byte_77EAC5
mov     [esp+44h+var_38], eax
xor     eax, eax
mov     al, ds:byte_77EAC4
mov     [esp+44h+var_40], eax
xor     eax, eax
mov     al, ds:byte_77EAC3
mov     [esp+44h+var_3C], eax
xor     eax, eax
mov     al, ds:byte_77EAC2
mov     [esp+44h+var_44], eax
xor     eax, eax
mov     al, ds:byte_77E802
mov     [esp+44h+var_28], eax
mov     eax, [esp+44h+var_3C]
mov     [esp+44h+var_34], eax

loc_4C4101:
mov     eax, [esp+44h+var_34]
cmp     eax, [esp+44h+var_44]
jge     loc_4C42BB
mov     eax, [esp+44h+var_38]
mov     [esp+44h+var_30], eax

loc_4C4116:
mov     eax, [esp+44h+var_30]
cmp     eax, [esp+44h+var_40]
jge     loc_4C42B2
sub     eax, [esp+44h+var_38]
add     eax, eax
mov     edi, ds:dword_77E700
add     edi, eax
mov     edx, [esp+44h+var_34]
sub     edx, [esp+44h+var_3C]
xor     eax, eax
mov     ax, ds:word_77EAAE
imul    eax, edx
movsx   edi, word ptr [edi+eax*2]
test    edi, edi
jle     loc_4C42A9
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     eax, ds:dword_6E40B4[eax*4]
mov     eax, [eax]
mov     [esp+44h+var_2C], eax
xor     ebx, ebx
mov     [esp+44h+var_20], ebx

loc_4C416B:
mov     eax, [esp+44h+var_20]
shl     eax, 4
add     eax, [esp+44h+var_24]
mov     eax, [eax+4]
mov     ebp, [esp+44h+var_2C]
cmp     eax, ebp
jnz     loc_4C428E
xor     eax, ebp
mov     [esp+44h+var_1C], eax
jmp     short loc_4C419F

loc_4C418D:
mov     ecx, [esp+44h+var_1C]
inc     ecx
mov     [esp+44h+var_1C], ecx ; int
cmp     ecx, 2
jge     loc_4C4284

loc_4C419F:
call    sub_4DE227
mov     ecx, eax
test    eax, eax
jz      short loc_4C418D
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 21h ; '!'
mov     al, byte ptr [esp+44h+var_1C]
mov     [ecx+3], al
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     ebx, [esp+44h+var_20]
shl     ebx, 4
add     ebx, [esp+44h+var_24]
mov     eax, [esp+44h+var_1C]
mov     al, [ebx+eax+0Eh]
mov     [ecx+0Ch], al
mov     al, byte ptr [esp+44h+var_28]
mov     [ecx+0Dh], al
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 3
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 2
add     eax, edx
mov     esi, edi
shl     esi, 2
sub     esi, edi
mov     dx, word ptr ds:(dword_6E40AA+2)[esi*4]
add     dx, [ebx+8]
mov     ax, ds:word_5376B8[eax]
add     edx, eax
mov     [ecx+48h], dx
mov     edx, [ecx+9]
sar     edx, 18h
shl     edx, 3
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 2
add     eax, edx
mov     dx, word ptr ds:(dword_6E40AE+2)[esi*4]
add     dx, [ebx+0Ch]
mov     ax, ds:word_5376BA[eax]
add     edx, eax
mov     [ecx+4Ch], dx
mov     dx, word ptr ds:dword_6E40AE[esi*4]
mov     ax, [ebx+0Ah]
add     edx, eax
mov     [ecx+4Ah], dx
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     [ecx+54h], edi
mov     eax, ds:dword_6E40B4[esi*4]
mov     [ecx+3Ch], eax
mov     eax, [ebx]
call    sub_4A7AAC
mov     [ecx+40h], eax
jmp     loc_4C418D

loc_4C4284:
inc     [esp+44h+var_28]
inc     ds:byte_77E802

loc_4C428E:
mov     ebp, [esp+44h+var_20]
inc     ebp
mov     [esp+44h+var_20], ebp
mov     eax, ebp
shl     eax, 4
add     eax, [esp+44h+var_24]
cmp     dword ptr [eax], 0
jnz     loc_4C416B

loc_4C42A9:
inc     [esp+44h+var_30]
jmp     loc_4C4116

loc_4C42B2:
inc     [esp+44h+var_34]
jmp     loc_4C4101

loc_4C42BB:
add     esp, 2Ch
jmp     loc_4C3E58
sub_4C4066 endp




sub_4C42C3 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 18h
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+8]
test    al, al
jbe     short loc_4C42E5
cmp     al, 1
jz      loc_4C4357
jmp     loc_4C43BC

loc_4C42E5:
or      byte ptr [ecx], 6
mov     ebx, [ecx+9]
sar     ebx, 18h
mov     al, ds:byte_537730[ebx]
mov     [ecx+3], al
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
cmp     byte ptr [ecx+0Ch], 5
jz      short loc_4C4310
mov     dword ptr [ecx+50h], offset unk_808080
jmp     short loc_4C4317

loc_4C4310:
mov     dword ptr [ecx+50h], 2808080h

loc_4C4317:
mov     ebx, [ecx+9]
sar     ebx, 18h
mov     ax, ds:word_5376F0[ebx*8]
mov     [ecx+48h], ax
mov     ebx, [ecx+9]
sar     ebx, 18h
mov     ax, ds:word_5376F2[ebx*8]
mov     [ecx+4Ah], ax
mov     eax, [ecx+9]
sar     eax, 18h
mov     ax, ds:word_5376F4[eax*8]
mov     [ecx+4Ch], ax
mov     dword ptr [ecx+10h], offset unk_537738
inc     byte ptr [ecx+8]

loc_4C4357:
xor     edx, edx
mov     [esp+28h+var_18], dx
mov     eax, [ecx+9]
sar     eax, 18h
mov     ax, ds:word_5376F6[eax*8]
mov     [esp+28h+var_16], ax
mov     [esp+28h+var_14], dx
lea     ebx, [ecx+18h]
mov     edx, ebx
lea     eax, [esp+28h+var_18]
call    sub_4EF638
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, [esi+184h]
cmp     ecx, eax
jnz     short loc_4C43BC
mov     ecx, [eax+9]
sar     ecx, 18h
add     ecx, 3Ch ; '<'
add     eax, 48h ; 'H'
xor     ebx, ebx
xor     edx, edx
call    sub_4A62D4

loc_4C43BC:
add     esp, 18h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C42C3 endp




sub_4C43C4 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]     ; int
call    ds:funcs_4C43CA[edx*4]
pop     edx
retn
sub_4C43C4 endp




; int __fastcall sub_4C43D3(int, int)
sub_4C43D3 proc near
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF184
mov     eax, [ecx+0Ch]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     eax, ecx
call    sub_4C4612
mov     dword ptr [ecx+50h], offset unk_808080
mov     dword ptr [ecx+10h], offset unk_537754
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+5Ch], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
retn
sub_4C43D3 endp




; int __fastcall sub_4C4431(int, int)
sub_4C4431 proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
mov     ecx, eax
add     eax, 18h
call    sub_4EF184
mov     bl, [ecx+9]
test    bl, bl
jbe     short loc_4C4450
cmp     bl, 1
jz      short loc_4C4466
jmp     loc_4C44DF

loc_4C4450:
mov     eax, [ecx+48h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+58h], eax
mov     dword ptr [ecx+5Ch], 400000h
inc     byte ptr [ecx+9]

loc_4C4466:
lea     eax, [ecx+48h]
call    sub_42C7E7
mov     esi, eax
sub     esi, 14h
mov     eax, [ecx+5Ch]
sub     [ecx+58h], eax
sub     dword ptr [ecx+5Ch], 40000h
mov     eax, [ecx+58h]
shr     eax, 10h
mov     [ecx+4Ah], ax
mov     edx, [ecx+48h]
sar     edx, 10h
movsx   eax, si
lea     ebx, [ecx+18h]
cmp     edx, eax
jle     short loc_4C44B3
mov     edx, ebx
mov     eax, 400h
call    sub_4EF486
mov     [ecx+4Ah], si
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Ah], 0
jmp     short loc_4C44DF

loc_4C44B3:
xor     eax, eax
mov     al, [ecx+0Ah]
shl     eax, 4
and     eax, 0FFFh
mov     edx, ebx
call    sub_4EF486
xor     eax, eax
mov     al, [ecx+0Ah]
shl     eax, 4
and     eax, 0FFFh
mov     edx, ebx
call    sub_4EF50D
add     byte ptr [ecx+0Ah], 0Dh

loc_4C44DF:
mov     eax, ecx
call    sub_4C4612
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C4431 endp




sub_4C44EB proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     short loc_4C4502
inc     byte ptr [edx+8]
mov     byte ptr [edx+9], 0

loc_4C4502:
push    80h
push    0
push    4000000h
lea     eax, [esi+58h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
lea     eax, [esi+48h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC
mov     dword ptr [esi+58h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C44EB endp

jpt_4C4562 dd offset loc_4C4569 ; jump table for switch statement
dd offset loc_4C459E
dd offset loc_4C45A7
dd offset loc_4C45CA
dd offset loc_4C45F3



sub_4C454C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_4C4562      ; jumptable 004C4562 default case
and     eax, 0FFh
jmp     jpt_4C4562[eax*4] ; switch jump

loc_4C4569:             ; jumptable 004C4562 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4C4562      ; jumptable 004C4562 default case
mov     byte ptr ds:dword_5F836C, 3
xor     dh, dh
mov     byte ptr ds:dword_5F836C+1, dh
xor     edx, edx
mov     ds:dword_5F8370, edx

loc_4C4592:
inc     byte ptr [esi+9]
mov     byte ptr [esi+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C459E:             ; jumptable 004C4562 case 1
mov     ds:byte_5F88AC, 34h ; '4'
jmp     short loc_4C4592

loc_4C45A7:             ; jumptable 004C4562 case 2
mov     bl, [esi+0Ah]
cmp     bl, 10h
jbe     short loc_4C45BE
and     byte ptr [esi], 0FDh
mov     byte ptr [esi+0Ah], 0

loc_4C45B6:
inc     byte ptr [esi+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C45BE:
mov     bh, bl
inc     bh
mov     [esi+0Ah], bh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C45CA:             ; jumptable 004C4562 case 3
cmp     ds:byte_5F840B, 0
jge     short def_4C4562 ; jumptable 004C4562 default case
lea     eax, [esi+48h]
mov     ecx, 45h ; 'E'
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
mov     eax, 546h
call    sub_47E8B8
jmp     short loc_4C45B6

loc_4C45F3:             ; jumptable 004C4562 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C4562 ; jumptable 004C4562 default case
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, esi
call    sub_4DE477

def_4C4562:             ; jumptable 004C4562 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C454C endp




sub_4C4612 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    edx
push    esi
sub     esp, 10h
mov     edx, 200h
mov     [esp+18h+var_10], edx
mov     [esp+18h+var_14], edx
mov     [esp+18h+var_18], edx
xor     esi, esi
mov     [esp+18h+var_C], esi
add     eax, 18h
mov     edx, esp
call    sub_4EF689
add     esp, 10h
pop     esi
pop     edx
retn
sub_4C4612 endp




sub_4C463D proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4C4643[edx*4]
pop     edx
retn
sub_4C463D endp




sub_4C464C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C4652[edx*4]
pop     edx
retn
sub_4C464C endp




sub_4C465B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+3Ch]
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     eax, [ecx+18h]
call    sub_4EF184
mov     word ptr [ebx], 0
mov     word ptr [ebx+2], 0
mov     word ptr [ebx+4], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     dword ptr [ecx+50h], 2C808080h
mov     dl, [ecx+5]
test    dl, dl
jnz     short loc_4C46B2
mov     word ptr [ebx+8], 605h
jmp     short loc_4C46C5

loc_4C46B2:
cmp     dl, 1
jnz     short loc_4C46BF
mov     word ptr [ebx+8], 606h
jmp     short loc_4C46C5

loc_4C46BF:
mov     word ptr [ebx+8], 604h

loc_4C46C5:
mov     eax, ecx
call    sub_4C46D0
pop     edx
pop     ecx
pop     ebx
retn
sub_4C465B endp




sub_4C46D0 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
sub     esp, 10h
mov     edx, eax
lea     ebx, [eax+3Ch]
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_4C46E0[ecx*4]
lea     ecx, [edx+18h]  ; int
mov     edx, ecx
mov     eax, ebx
call    sub_4EF638
mov     edx, 200h
mov     [esp+1Ch+var_1C], edx
mov     [esp+1Ch+var_18], edx
mov     [esp+1Ch+var_14], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 10h
pop     edx
pop     ecx
pop     ebx
retn
sub_4C46D0 endp



; Attributes: thunk

sub_4C4713 proc near
jmp     sub_4DE477
sub_4C4713 endp




sub_4C4718 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
add     eax, 3Ch ; '<'
mov     ax, [eax+8]
and     eax, 0FFFFh
call    sub_47E888
test    eax, eax
jnz     loc_4C47A2
cmp     byte ptr [edx+0Ah], 0
jz      short loc_4C4760
mov     bl, [edx+0Bh]
test    bl, bl
jnz     short loc_4C4755
mov     dword ptr [edx+50h], 2C808080h
mov     [edx+0Ah], bl
mov     byte ptr [edx+0Bh], 80h
pop     edx
pop     ecx
pop     ebx
retn

loc_4C4755:
mov     bh, bl
dec     bh
mov     [edx+0Bh], bh
pop     edx
pop     ecx
pop     ebx
retn

loc_4C4760:
mov     cl, [edx+0Bh]
test    cl, cl
jnz     short loc_4C4797
mov     al, [edx+5]
test    al, al
jnz     short loc_4C4777
mov     dword ptr [edx+50h], 2C108010h
jmp     short loc_4C478B

loc_4C4777:
cmp     al, 1
jnz     short loc_4C4784
mov     dword ptr [edx+50h], 2C108080h
jmp     short loc_4C478B

loc_4C4784:
mov     dword ptr [edx+50h], 2C101080h

loc_4C478B:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0Bh], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4C4797:
mov     ch, cl
dec     ch
mov     [edx+0Bh], ch
pop     edx
pop     ecx
pop     ebx
retn

loc_4C47A2:
mov     byte ptr [edx+9], 1
mov     ah, [edx+5]
test    ah, ah
jnz     short loc_4C47B8
mov     dword ptr [edx+50h], 2C108010h
pop     edx
pop     ecx
pop     ebx
retn

loc_4C47B8:
cmp     ah, 1
jnz     short loc_4C47C8
mov     dword ptr [edx+50h], 2C108080h
pop     edx
pop     ecx
pop     ebx
retn

loc_4C47C8:
mov     dword ptr [edx+50h], 2C101080h
pop     edx
pop     ecx
pop     ebx
retn
sub_4C4718 endp




sub_4C47D3 proc near
push    edx
mov     edx, eax
add     eax, 3Ch ; '<'
mov     ax, [eax+8]
and     eax, 0FFFFh
call    sub_47E888
test    eax, eax
jnz     short loc_4C47F7
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0

loc_4C47F7:
pop     edx
retn
sub_4C47D3 endp




sub_4C47F9 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C47FF[edx*4]
pop     edx
retn
sub_4C47F9 endp




sub_4C4808 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     ah, [eax]
or      ah, 6
mov     [ebp+0], ah
mov     dword ptr [ebp+40h], 400h
mov     dword ptr [ebp+44h], 0
lea     edx, [ebp+3]
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+50h], 2808080h
mov     eax, 62Dh
call    sub_47E888
test    eax, eax
jz      short loc_4C4877
xor     ecx, ecx

loc_4C484A:
xor     eax, eax
mov     al, [ebp+3]
shl     eax, 7
mov     esi, ecx
mov     edi, esp
lea     esi, word_55D0A0[eax+esi*8]
movsd
movsd
mov     edx, ecx
or      edx, 10000h
mov     eax, [ebp+14h]
mov     ebx, esp
call    sub_4EDFC2
inc     ecx
cmp     ecx, 10h
jb      short loc_4C484A

loc_4C4877:
cmp     byte ptr [ebp+3], 3
jnz     short loc_4C4887
mov     eax, 62Dh
call    sub_47E8B8

loc_4C4887:
xor     ecx, ecx

loc_4C4889:
mov     edx, ecx
or      edx, 10000h
mov     eax, [ebp+14h]
call    sub_4EDF7C
movzx   esi, byte ptr [ebp+3]
shl     esi, 7
mov     edx, ecx
lea     edi, word_55D0A0[esi+edx*8]
mov     esi, eax
movsd
movsd
inc     ecx
cmp     ecx, 10h
jb      short loc_4C4889
mov     eax, [ebp+14h]
mov     ebx, [eax+70h]
mov     ebx, [ebx+24h]
xor     ecx, ecx

loc_4C48BE:
mov     esi, ecx
xor     edx, edx
mov     dl, [ebp+3]
dec     edx
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
add     eax, eax
lea     edx, [ecx+ecx]
add     eax, edx
mov     dx, [ebx+esi*8+2]
mov     ds:word_55D320[eax], dx
inc     ecx
cmp     ecx, 19h
jb      short loc_4C48BE
mov     al, [ebp+3]
dec     al
shl     al, 4
mov     [ebp+0Ah], al
lea     eax, [ebp+48h]
call    sub_42C443
mov     [ebp+54h], eax
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_6E40B4[eax*4]
mov     [ebp+0Ch], eax
mov     eax, ds:dword_537760
call    sub_4A7AAC
mov     [ebp+3Ch], eax
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Bh], 0
add     esp, 8

loc_4C492E:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C4808 endp




sub_4C4935 proc near

var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch
var_28= byte ptr -28h
var_27= byte ptr -27h
var_26= byte ptr -26h
var_25= byte ptr -25h
var_24= byte ptr -24h
var_23= byte ptr -23h
var_22= byte ptr -22h
var_21= byte ptr -21h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ecx, eax
mov     [esp+30h+var_20], offset byte_5F8364
lea     edx, [eax+48h]
cmp     byte ptr [eax+3], 1
jnz     short loc_4C4985
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      short loc_4C4968

loc_4C495F:
mov     byte ptr [ecx+0Bh], 0
jmp     loc_4C4BB8

loc_4C4968:
xor     bl, bl
mov     bh, [ecx+0Bh]
inc     bh
mov     [ecx+0Bh], bh
cmp     bh, 18h
jnz     loc_4C4A46
mov     eax, 11Dh
jmp     loc_4C4A3E

loc_4C4985:
cmp     byte ptr [ecx+3], 2
jnz     loc_4C4A18
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      short loc_4C49B9
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      short loc_4C49B9
mov     eax, 606h
call    sub_47E888
test    eax, eax
jnz     short loc_4C49ED

loc_4C49B9:
cmp     dword ptr [ecx+44h], 0
jz      short loc_4C49ED
mov     [esp+30h+var_30], 0DF00h
mov     [esp+30h+var_2E], 0F37Fh
mov     [esp+30h+var_2C], 1500h
mov     edx, esp
xor     eax, eax
call    sub_42C4B7
mov     edx, 71202h
call    sub_4A7AE1
mov     dword ptr [ecx+44h], 0

loc_4C49ED:
mov     eax, 606h
call    sub_47E888
test    eax, eax
jnz     loc_4C495F
xor     bl, bl
mov     ah, [ecx+0Bh]
inc     ah
mov     [ecx+0Bh], ah
cmp     ah, 18h
jnz     short loc_4C4A46
lea     edx, [ecx+48h]
mov     eax, 11Bh
jmp     short loc_4C4A3E

loc_4C4A18:
mov     eax, 605h
call    sub_47E888
test    eax, eax
jnz     loc_4C495F
xor     bl, bl
mov     bh, [ecx+0Bh]
inc     bh
mov     [ecx+0Bh], bh
cmp     bh, 18h
jnz     short loc_4C4A46
mov     eax, 11Ah

loc_4C4A3E:
call    sub_4D8BC3
mov     [ecx+0Bh], bl

loc_4C4A46:
test    bl, bl
jnz     loc_4C4BB8
mov     dword ptr [ecx+50h], 2808080h
mov     ah, [ecx+0Ah]
add     ah, 2
mov     [ecx+0Ah], ah
cmp     ah, 40h ; '@'
jb      short loc_4C4A66
mov     [ecx+0Ah], bl

loc_4C4A66:
xor     eax, eax
mov     al, [ecx+0Ah]
mov     [esp+30h+var_1C], eax
xor     ebp, ebp

loc_4C4A71:
mov     eax, ebp
shl     eax, 3
lea     edi, [esp+30h+var_28]
lea     esi, unk_55D2A0[eax]
movsd
movsd
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 7
mov     dl, byte ptr ds:word_55D0A0[edx+eax]
mov     bh, byte ptr [esp+30h+var_1C]
add     dl, bh
mov     [esp+30h+var_28], dl
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 7
mov     dl, ds:byte_55D0A2[edx+eax]
add     dl, bh
mov     [esp+30h+var_26], dl
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 7
mov     dl, byte ptr ds:dword_55D0A4[edx+eax]
add     dl, bh
mov     [esp+30h+var_24], dl
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 7
mov     dl, byte ptr ds:(dword_55D0A4+2)[edx+eax]
add     dl, bh
mov     [esp+30h+var_22], dl
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 7
mov     bl, [ecx+3]
dec     bl
shl     bl, 4
mov     dl, byte ptr ds:(word_55D0A0+1)[edx+eax]
sub     dl, bl
mov     [esp+30h+var_27], dl
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 7
mov     bl, [ecx+3]
dec     bl
shl     bl, 4
mov     dl, ds:byte_55D0A3[edx+eax]
sub     dl, bl
mov     [esp+30h+var_25], dl
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 7
mov     bl, [ecx+3]
dec     bl
shl     bl, 4
mov     dl, byte ptr ds:(dword_55D0A4+1)[edx+eax]
sub     dl, bl
mov     [esp+30h+var_23], dl
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 7
add     eax, edx
mov     dl, [ecx+3]
dec     dl
shl     dl, 4
mov     al, byte ptr ds:(dword_55D0A4+3)[eax]
sub     al, dl
mov     [esp+30h+var_21], al
mov     edx, ebp
or      edx, 10000h
mov     eax, [ecx+14h]
lea     ebx, [esp+30h+var_28]
call    sub_4EDFC2
inc     ebp
cmp     ebp, 10h
jb      loc_4C4A71
mov     eax, [ecx+14h]
mov     ebx, [eax+70h]
mov     ebx, [ebx+24h]
xor     ebp, ebp

loc_4C4B78:
xor     eax, eax
mov     al, [ecx+3]
lea     edx, [eax-1]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
lea     edx, [ebp+ebp+0]
mov     dx, ds:word_55D320[edx+eax*2]
add     edx, 4
call    rand_
xor     ah, ah
and     al, 7
sub     edx, eax
mov     eax, ebp
mov     [ebx+eax*8+2], dx
inc     ebp
cmp     ebp, 19h
jb      short loc_4C4B78
jmp     loc_4C4C2A

loc_4C4BB8:
mov     dword ptr [ecx+50h], 2000000h
mov     dh, [ecx+3]
cmp     dh, 2
jnz     short loc_4C4C2A
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      short loc_4C4C2A
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      short loc_4C4C2A
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      short loc_4C4C2A
cmp     dh, [ecx+3]
jnz     short loc_4C4C2A
cmp     dword ptr [ecx+44h], 0
jnz     short loc_4C4C2A
mov     dword ptr [ecx+44h], 1
mov     [esp+30h+var_30], 0DF00h
mov     [esp+30h+var_2E], 0F37Fh
mov     [esp+30h+var_2C], 1500h
mov     edx, esp
xor     eax, eax
call    sub_42C4B7
mov     edx, 70202h
call    sub_4A7AE1

loc_4C4C2A:
mov     eax, [esp+30h+var_20]
mov     eax, [eax+12h]
sar     eax, 10h
cmp     eax, 0FFFFDEE0h
jle     short loc_4C4C4F
xor     eax, eax
mov     [esp+30h+var_30], ax
mov     [esp+30h+var_2E], 800h
mov     [esp+30h+var_2C], ax
jmp     short loc_4C4C5F

loc_4C4C4F:
xor     ebx, ebx
mov     [esp+30h+var_30], bx
mov     [esp+30h+var_2E], bx
mov     [esp+30h+var_2C], bx

loc_4C4C5F:
lea     edx, [ecx+18h]
mov     eax, esp
call    sub_4EF638
add     esp, 18h
jmp     loc_4C492E
sub_4C4935 endp




sub_4C4C71 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
movzx   edi, byte ptr [eax+8]
lea     esi, [eax+58h]
mov     ebx, esi
mov     edx, offset dword_560BDC
call    ds:funcs_4C4C86[edi*4]
mov     edx, esi
mov     eax, ecx
call    sub_4C5194
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C4C71 endp




sub_4C4C9C proc near
push    ecx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
mov     word ptr [ebx], 0
mov     word ptr [ebx+2], 1000h
mov     word ptr [ebx+4], 0
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_5377C8[eax*2]
mov     [ebx+6], ax
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     ecx
retn
sub_4C4C9C endp




sub_4C4CE2 proc near
push    ecx
xor     ecx, ecx
mov     cl, [eax+3]
call    ds:funcs_4C4CE8[ecx*4]
pop     ecx
retn
sub_4C4CE2 endp

jpt_4C4D12 dd offset loc_4C4D19 ; jump table for switch statement
dd offset loc_4C4D2D
dd offset loc_4C4D45
dd offset loc_4C4D51
dd offset def_4C4D12



sub_4C4D05 proc near
push    ecx
push    esi
mov     cl, [eax+9]
cmp     cl, 4           ; switch 5 cases
ja      short def_4C4D12 ; jumptable 004C4D12 default case, case 4
; jumptable 004C4D82 default case, case 4
movzx   esi, cl
jmp     jpt_4C4D12[esi*4] ; switch jump

loc_4C4D19:             ; jumptable 004C4D12 case 0
cmp     byte ptr [edx+9], 6
jnz     short def_4C4D12 ; jumptable 004C4D12 default case, case 4
; jumptable 004C4D82 default case, case 4
cmp     dword ptr [edx+10h], 3Ch ; '<'

loc_4C4D23:             ; jumptable 004C4D12 default case, case 4
jnz     short def_4C4D12 ; jumptable 004C4D82 default case, case 4
inc     cl
mov     [eax+9], cl

def_4C4D12:             ; jumptable 004C4D12 default case, case 4
pop     esi             ; jumptable 004C4D82 default case, case 4
pop     ecx
retn

loc_4C4D2D:             ; jumptable 004C4D12 case 1
mov     si, [ebx+4]
add     esi, 0Ah
mov     [ebx+4], si
cmp     si, 500h

loc_4C4D3D:             ; jumptable 004C4D12 default case, case 4
jnz     short def_4C4D12 ; jumptable 004C4D82 default case, case 4
inc     byte ptr [eax+9]
pop     esi
pop     ecx
retn

loc_4C4D45:             ; jumptable 004C4D12 case 2
cmp     byte ptr [edx+9], 0Dh
jnz     short def_4C4D12 ; jumptable 004C4D12 default case, case 4
; jumptable 004C4D82 default case, case 4
cmp     dword ptr [edx+10h], 14h
jmp     short loc_4C4D23

loc_4C4D51:             ; jumptable 004C4D12 case 3
mov     dx, [ebx+4]
sub     dx, 0Ah
mov     [ebx+4], dx
jmp     short loc_4C4D3D
sub_4C4D05 endp

db 8Bh, 0C0h
jpt_4C4D82 dd offset loc_4C4D89 ; jump table for switch statement
dd offset loc_4C4D9D
dd offset loc_4C4DBA
dd offset loc_4C4DCA
dd offset def_4C4D12



sub_4C4D75 proc near
push    ecx
push    esi
mov     cl, [eax+9]
cmp     cl, 4           ; switch 5 cases
ja      short def_4C4D12 ; jumptable 004C4D12 default case, case 4
; jumptable 004C4D82 default case, case 4
movzx   esi, cl
jmp     jpt_4C4D82[esi*4] ; switch jump

loc_4C4D89:             ; jumptable 004C4D82 case 0
cmp     byte ptr [edx+9], 6
jnz     short def_4C4D12 ; jumptable 004C4D12 default case, case 4
; jumptable 004C4D82 default case, case 4
cmp     dword ptr [edx+10h], 3Ch ; '<'

loc_4C4D93:             ; jumptable 004C4D12 default case, case 4
jnz     short def_4C4D12 ; jumptable 004C4D82 default case, case 4
inc     cl
mov     [eax+9], cl
pop     esi
pop     ecx
retn

loc_4C4D9D:             ; jumptable 004C4D82 case 1
sub     word ptr [ebx+4], 0Ah
mov     edx, [ebx+2]
sar     edx, 10h
cmp     edx, 0FFFFFB00h

loc_4C4DAE:             ; jumptable 004C4D12 default case, case 4
jnz     def_4C4D12      ; jumptable 004C4D82 default case, case 4
inc     byte ptr [eax+9]
pop     esi
pop     ecx
retn

loc_4C4DBA:             ; jumptable 004C4D82 case 2
cmp     byte ptr [edx+9], 0Dh
jnz     def_4C4D12      ; jumptable 004C4D12 default case, case 4
; jumptable 004C4D82 default case, case 4
cmp     dword ptr [edx+10h], 14h
jmp     short loc_4C4D93

loc_4C4DCA:             ; jumptable 004C4D82 case 3
mov     dx, [ebx+4]
add     dx, 0Ah
mov     [ebx+4], dx
jmp     short loc_4C4DAE
sub_4C4D75 endp




sub_4C4DD8 proc near
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     al, [eax+9]
cmp     al, 1
jb      short loc_4C4DEA
jbe     short loc_4C4E12
pop     esi
pop     ecx
retn

loc_4C4DEA:
test    al, al
jnz     short loc_4C4E27
cmp     byte ptr [edx+9], 3
jnz     short loc_4C4E27
mov     edx, [esi+10h]
cmp     edx, 5
jl      short loc_4C4E0A
cmp     edx, 35h ; '5'
jg      short loc_4C4E0A
mov     edx, esi
mov     eax, ecx
call    sub_4C5206

loc_4C4E0A:
cmp     dword ptr [esi+10h], 3Fh ; '?'
jnz     short loc_4C4E27
jmp     short loc_4C4E24

loc_4C4E12:
mov     dx, [ebx+6]
add     edx, 10h
mov     [ebx+6], dx
cmp     dx, 400h
jnz     short loc_4C4E27

loc_4C4E24:
inc     byte ptr [ecx+9]

loc_4C4E27:
pop     esi
pop     ecx
retn
sub_4C4DD8 endp

db 8Dh, 40h, 0
jpt_4C4E50 dd offset loc_4C4E57 ; jump table for switch statement
dd offset loc_4C4E6C
dd offset loc_4C4E88
dd offset loc_4C4E9D
dd offset def_4C4E50



sub_4C4E41 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      short def_4C4E50 ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
movzx   esi, al
jmp     jpt_4C4E50[esi*4] ; switch jump

loc_4C4E57:             ; jumptable 004C4E50 case 0
cmp     byte ptr [edx+9], 6
jnz     short def_4C4E50 ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 0Eh
jnz     short def_4C4E50 ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
mov     eax, ecx
call    sub_4C529D
jmp     short loc_4C4E81

loc_4C4E6C:             ; jumptable 004C4E50 case 1
mov     di, [ebx+2]
sub     edi, 400h
mov     [ebx+2], di
cmp     di, 800h

loc_4C4E7F:             ; jumptable 004C4E50 default case, case 4
jnz     short def_4C4E50 ; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4

loc_4C4E81:
inc     byte ptr [ecx+9]

def_4C4E50:             ; jumptable 004C4E50 default case, case 4
pop     edi             ; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
pop     esi
pop     ecx
retn

loc_4C4E88:             ; jumptable 004C4E50 case 2
cmp     byte ptr [edx+9], 6
jnz     short def_4C4E50 ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 1Eh
jnz     short def_4C4E50 ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
inc     al
mov     [ecx+9], al
pop     edi
pop     esi
pop     ecx
retn

loc_4C4E9D:             ; jumptable 004C4E50 case 3
mov     dx, [ebx+2]
sub     dx, 80h
mov     [ebx+2], dx
jmp     short loc_4C4E7F
sub_4C4E41 endp

db 90h
jpt_4C4ED0 dd offset loc_4C4ED7 ; jump table for switch statement
dd offset loc_4C4EEC
dd offset loc_4C4F08
dd offset loc_4C4F25
dd offset def_4C4E50



sub_4C4EC1 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      short def_4C4E50 ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
movzx   esi, al
jmp     jpt_4C4ED0[esi*4] ; switch jump

loc_4C4ED7:             ; jumptable 004C4ED0 case 0
cmp     byte ptr [edx+9], 6
jnz     short def_4C4E50 ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 0Ah
jnz     short def_4C4E50 ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
mov     eax, ecx
call    sub_4C529D
jmp     short loc_4C4F01

loc_4C4EEC:             ; jumptable 004C4ED0 case 1
mov     di, [ebx+2]
sub     edi, 400h
mov     [ebx+2], di
cmp     di, 800h

loc_4C4EFF:             ; jumptable 004C4E50 default case, case 4
jnz     short def_4C4E50 ; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4

loc_4C4F01:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_4C4F08:             ; jumptable 004C4ED0 case 2
cmp     byte ptr [edx+9], 6
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 1Eh
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
inc     al
mov     [ecx+9], al
pop     edi
pop     esi
pop     ecx
retn

loc_4C4F25:             ; jumptable 004C4ED0 case 3
mov     dx, [ebx+2]
sub     dx, 80h
mov     [ebx+2], dx
jmp     short loc_4C4EFF
sub_4C4EC1 endp

db 90h
jpt_4C4F5C dd offset loc_4C4F63 ; jump table for switch statement
dd offset loc_4C4F80
dd offset loc_4C4FA0
dd offset loc_4C4FBD
dd offset def_4C4E50



sub_4C4F49 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
movzx   esi, al
jmp     jpt_4C4F5C[esi*4] ; switch jump

loc_4C4F63:             ; jumptable 004C4F5C case 0
cmp     byte ptr [edx+9], 5
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 8
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
mov     eax, ecx
call    sub_4C529D
jmp     short loc_4C4F99

loc_4C4F80:             ; jumptable 004C4F5C case 1
mov     di, [ebx+2]
sub     edi, 400h
mov     [ebx+2], di
cmp     di, 800h

loc_4C4F93:             ; jumptable 004C4E50 default case, case 4
jnz     def_4C4E50      ; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4

loc_4C4F99:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_4C4FA0:             ; jumptable 004C4F5C case 2
cmp     byte ptr [edx+9], 6
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 1Eh
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
inc     al
mov     [ecx+9], al
pop     edi
pop     esi
pop     ecx
retn

loc_4C4FBD:             ; jumptable 004C4F5C case 3
mov     dx, [ebx+2]
sub     dx, 80h
mov     [ebx+2], dx
jmp     short loc_4C4F93
sub_4C4F49 endp

db 90h
jpt_4C4FF4 dd offset loc_4C4FFB ; jump table for switch statement
dd offset loc_4C5018
dd offset loc_4C5038
dd offset loc_4C5055
dd offset def_4C4E50



sub_4C4FE1 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
movzx   esi, al
jmp     jpt_4C4FF4[esi*4] ; switch jump

loc_4C4FFB:             ; jumptable 004C4FF4 case 0
cmp     byte ptr [edx+9], 6
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 0Ch
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
mov     eax, ecx
call    sub_4C529D
jmp     short loc_4C5031

loc_4C5018:             ; jumptable 004C4FF4 case 1
mov     di, [ebx+2]
sub     edi, 400h
mov     [ebx+2], di
cmp     di, 800h

loc_4C502B:             ; jumptable 004C4E50 default case, case 4
jnz     def_4C4E50      ; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4

loc_4C5031:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_4C5038:             ; jumptable 004C4FF4 case 2
cmp     byte ptr [edx+9], 6
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 1Eh
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
inc     al
mov     [ecx+9], al
pop     edi
pop     esi
pop     ecx
retn

loc_4C5055:             ; jumptable 004C4FF4 case 3
mov     dx, [ebx+2]
sub     dx, 80h
mov     [ebx+2], dx
jmp     short loc_4C502B
sub_4C4FE1 endp

db 90h
jpt_4C508C dd offset loc_4C5093 ; jump table for switch statement
dd offset loc_4C50B0
dd offset loc_4C50D0
dd offset loc_4C50ED
dd offset def_4C4E50



sub_4C5079 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
movzx   esi, al
jmp     jpt_4C508C[esi*4] ; switch jump

loc_4C5093:             ; jumptable 004C508C case 0
cmp     byte ptr [edx+9], 6
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 8
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
mov     eax, ecx
call    sub_4C529D
jmp     short loc_4C50C9

loc_4C50B0:             ; jumptable 004C508C case 1
mov     di, [ebx+2]
sub     edi, 400h
mov     [ebx+2], di
cmp     di, 800h

loc_4C50C3:             ; jumptable 004C4E50 default case, case 4
jnz     def_4C4E50      ; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4

loc_4C50C9:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_4C50D0:             ; jumptable 004C508C case 2
cmp     byte ptr [edx+9], 6
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 1Eh
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
inc     al
mov     [ecx+9], al
pop     edi
pop     esi
pop     ecx
retn

loc_4C50ED:             ; jumptable 004C508C case 3
mov     dx, [ebx+2]
sub     dx, 80h
mov     [ebx+2], dx
jmp     short loc_4C50C3
sub_4C5079 endp

db 90h
jpt_4C5124 dd offset loc_4C512B ; jump table for switch statement
dd offset loc_4C5148
dd offset loc_4C5168
dd offset loc_4C5185
dd offset def_4C4E50



sub_4C5111 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
movzx   esi, al
jmp     jpt_4C5124[esi*4] ; switch jump

loc_4C512B:             ; jumptable 004C5124 case 0
cmp     byte ptr [edx+9], 4
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 8
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
mov     eax, ecx
call    sub_4C529D
jmp     short loc_4C5161

loc_4C5148:             ; jumptable 004C5124 case 1
mov     di, [ebx+2]
sub     edi, 400h
mov     [ebx+2], di
cmp     di, 800h

loc_4C515B:             ; jumptable 004C4E50 default case, case 4
jnz     def_4C4E50      ; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4

loc_4C5161:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_4C5168:             ; jumptable 004C5124 case 2
cmp     byte ptr [edx+9], 6
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
cmp     dword ptr [edx+10h], 1Eh
jnz     def_4C4E50      ; jumptable 004C4E50 default case, case 4
; jumptable 004C4ED0 default case, case 4
; jumptable 004C4F5C default case, case 4
; jumptable 004C4FF4 default case, case 4
; jumptable 004C508C default case, case 4
; jumptable 004C5124 default case, case 4
inc     al
mov     [ecx+9], al
pop     edi
pop     esi
pop     ecx
retn

loc_4C5185:             ; jumptable 004C5124 case 3
mov     dx, [ebx+2]
sub     dx, 80h
mov     [ebx+2], dx
jmp     short loc_4C515B
sub_4C5111 endp




; int __thiscall sub_4C5194(int)
sub_4C5194 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; int
push    edi             ; int
sub     esp, 10h
mov     ebx, eax
mov     ecx, edx
add     eax, 18h
call    sub_4EF184
cmp     byte ptr [ebx+3], 2
jnz     short loc_4C51BE
mov     edi, 11A0h
mov     [esp+1Ch+var_14], edi
mov     [esp+1Ch+var_18], edi
mov     [esp+1Ch+var_1C], edi
jmp     short loc_4C51D3

loc_4C51BE:
mov     edx, 1000h
mov     [esp+1Ch+var_14], edx ; int
mov     [esp+1Ch+var_1C], edx ; float
mov     eax, [ecx]
sar     eax, 10h
mov     [esp+1Ch+var_18], eax ; int

loc_4C51D3:
xor     edx, edx
mov     [esp+1Ch+var_10], edx ; int
add     ebx, 18h
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, [ecx+2]
sar     eax, 10h
mov     edx, ebx
call    sub_4EF50D
mov     eax, [ecx+4]
sar     eax, 10h
mov     edx, ebx
call    sub_4EF57E
add     esp, 10h
pop     edi
pop     ecx
pop     ebx
retn
sub_4C5194 endp




sub_4C5206 proc near
push    ebx
push    ecx
push    esi
mov     dl, [edx+10h]
sub     dl, 5
xor     ebx, ebx
mov     bl, dl
lea     ecx, [eax+48h]
call    sub_4EE133
mov     edx, eax
cmp     ebx, 10h
jnb     short loc_4C5230

loc_4C5222:
shl     ebx, 3
or      ebx, 2E000000h
mov     [eax+4], ebx
jmp     short loc_4C5247

loc_4C5230:
cmp     ebx, 20h ; ' '
jbe     short loc_4C5240
mov     esi, 30h ; '0'
sub     esi, ebx
mov     ebx, esi
jmp     short loc_4C5222

loc_4C5240:
mov     dword ptr [eax+4], 2E000080h

loc_4C5247:
mov     ebx, [ecx]
sar     ebx, 10h
add     ebx, 24h ; '$'
shl     ebx, 10h
movsx   edx, word ptr [ecx]
sub     edx, 18h
and     edx, 0FFFFh
or      edx, ebx
mov     [eax+8], edx
mov     edx, [ecx+2]
sar     edx, 10h
sub     edx, 10h
mov     [eax+10h], edx
mov     dword ptr [eax+0Ch], 3D4860A0h
mov     dword ptr [eax+14h], 2E60BFh
mov     dword ptr [eax+1Ch], 7FA0h
mov     dword ptr [eax+24h], 7FBFh
mov     dword ptr [eax+18h], 8
mov     dword ptr [eax+20h], 8
pop     esi
pop     ecx
pop     ebx
retn
sub_4C5206 endp




sub_4C529D proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4C52C1
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 0
mov     bl, [edx+1]
mov     [eax+0Ch], bl
mov     dl, [edx+3]
mov     [eax+0Dh], dl

loc_4C52C1:
pop     edx
pop     ebx
retn
sub_4C529D endp




sub_4C52C4 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4C52CD[ecx*4]
mov     dword ptr [edx+58h], 0
pop     edx
pop     ecx
retn
sub_4C52C4 endp




sub_4C52DE proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 10h
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
cmp     byte ptr [ecx+3], 0
jnz     short loc_4C5340
mov     dh, ah
or      dh, 4
mov     [ecx], dh
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     ebx, [ecx+18h]
mov     eax, ebx
call    sub_4EF184
mov     edx, 300h
mov     [esp+20h+var_18], edx
mov     [esp+20h+var_1C], edx
mov     [esp+20h+var_20], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     edx, ebx
mov     eax, 400h
call    sub_4EF486
mov     dword ptr [ecx+50h], offset unk_808080
jmp     loc_4C5463

loc_4C5340:
xor     dl, dl
mov     bl, ds:byte_77E7D4

loc_4C5348:
xor     eax, eax
mov     al, dl
shl     eax, 3
mov     dh, ds:byte_537854[eax]
cmp     dh, bl
jz      short loc_4C5370
test    dh, dh
jge     short loc_4C536C
mov     eax, ecx

loc_4C535F:
call    sub_4DE477

loc_4C5364:
add     esp, 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C536C:
inc     dl
jmp     short loc_4C5348

loc_4C5370:
or      byte ptr [ecx], 28h
xor     edx, edx
mov     dl, [ecx+3]
mov     dl, ds:byte_537874[edx*4]
mov     [ecx+22h], dl
xor     edx, edx
mov     dl, [ecx+3]
mov     dl, ds:byte_537875[edx*4]
mov     [ecx+23h], dl
xor     edx, edx
mov     dl, [ecx+3]
mov     dl, ds:byte_537876[edx*4]
xor     dh, dh
mov     [ecx+24h], dx
xor     edx, edx
mov     dl, [ecx+3]
mov     dl, ds:byte_537877[edx*4]
xor     dh, dh
mov     [ecx+26h], dx
mov     dword ptr [ecx+18h], offset unk_808080
mov     dx, [ecx+48h]
mov     [ecx+1Ch], dx
mov     dx, [ecx+4Ah]
mov     [ecx+1Eh], dx
mov     dx, [ecx+4Ch]
mov     [ecx+20h], dx
cmp     byte ptr [ecx+3], 3
jz      short loc_4C542C
xor     edx, edx
mov     dl, ds:byte_537855[eax]
mov     esi, edx
shl     esi, 7
xor     edx, edx
mov     dl, byte ptr ds:off_537856[eax]
shl     edx, 5
or      esi, edx
xor     edx, edx
mov     dl, byte ptr ds:(off_537856+1)[eax]
or      esi, edx
mov     ebx, ds:(off_537856+2)[eax]
sar     ebx, 10h
shl     ebx, 6
mov     edx, ds:off_537856[eax]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
or      eax, ebx
shl     eax, 10h
or      eax, esi
mov     [ecx+14h], eax
jmp     short loc_4C5463

loc_4C542C:
xor     edx, edx
mov     dl, ds:byte_537855[eax]
mov     ebx, edx
shl     ebx, 7
xor     edx, edx
mov     dl, byte ptr ds:off_537856[eax]
shl     edx, 5
or      edx, ebx
mov     al, byte ptr ds:(off_537856+1)[eax]
and     eax, 0FFh
or      eax, edx
or      eax, 3EC00000h
mov     [ecx+14h], eax
mov     ax, [ecx+24h]
sub     [ecx+1Eh], ax

loc_4C5463:
mov     dword ptr [ecx+10h], offset unk_5377E8
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+5Ch], 0
inc     byte ptr [ecx+8]
jmp     loc_4C5364
sub_4C52DE endp




sub_4C5480 proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h
var_16= word ptr -16h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     edx, eax
mov     ecx, ds:dword_5F84E8
cmp     eax, ecx
jnz     short loc_4C5497
inc     byte ptr [ecx+8]

loc_4C5497:
cmp     byte ptr [edx+3], 0
jnz     short loc_4C54A6
mov     edi, esp
lea     esi, [edx+48h]
movsd
movsd
jmp     short loc_4C54D4

loc_4C54A6:
mov     ax, [edx+1Ch]
mov     [esp+1Ch+var_1C], ax
mov     ax, [edx+1Eh]
mov     [esp+1Ch+var_1A], ax
mov     ax, [edx+20h]
mov     [esp+1Ch+var_18], ax
xor     ebx, ebx
mov     [esp+1Ch+var_16], bx
cmp     byte ptr [edx+3], 3
jz      short loc_4C54D4
mov     eax, edx
call    sub_4C56CE

loc_4C54D4:
push    80h
push    0
push    4000000h
lea     eax, [edx+58h]
push    eax
xor     eax, eax
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
lea     eax, [esp+30h+var_1C]
call    sub_4E01FC
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C5480 endp




; int __fastcall sub_4C5508(int, int)
sub_4C5508 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx             ; int
push    ecx             ; int
push    edx             ; float
push    esi             ; int
sub     esp, 10h
mov     esi, eax
mov     cl, [eax+9]
cmp     cl, 3
jb      short loc_4C553C
jbe     loc_4C55AE
cmp     cl, 5
jb      loc_4C5608
jbe     loc_4C5687
cmp     cl, 0Ah
jz      loc_4C569D
jmp     loc_4C5364

loc_4C553C:
cmp     cl, 1
jb      short loc_4C5545
jbe     short loc_4C557B
jmp     short loc_4C558E

loc_4C5545:
test    cl, cl
jnz     loc_4C5364
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_4C5364
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, cl
xor     eax, eax
mov     ds:dword_5F8370, eax

loc_4C5573:
inc     byte ptr [esi+9]
jmp     loc_4C5364

loc_4C557B:
mov     ds:byte_5F88AC, 34h ; '4'
inc     byte ptr [eax+9]
mov     byte ptr [eax+0Ah], 0
jmp     loc_4C5364

loc_4C558E:
mov     cl, [eax+0Ah]
cmp     cl, 10h
jbe     short loc_4C55A2
mov     al, [eax]
and     al, 0FDh
mov     [esi], al
mov     byte ptr [esi+0Ah], 0
jmp     short loc_4C5573

loc_4C55A2:
mov     ch, cl
inc     ch
mov     [eax+0Ah], ch
jmp     loc_4C5364

loc_4C55AE:
cmp     ds:byte_5F840B, 0
jge     loc_4C5364
xor     eax, eax
mov     al, [esi+3]
mov     ebx, ds:dword_537884[eax*4]
xor     ecx, ecx
xor     edx, edx
mov     eax, 2
call    sub_4A6227
cmp     byte ptr [esi+3], 0
jnz     short loc_4C5573
or      byte ptr [esi], 2
mov     ax, word ptr ds:dword_5F8376+2
mov     [esi+48h], ax
mov     cx, word ptr ds:dword_5F837A
sub     ecx, 0C8h
mov     [esi+4Ah], cx
mov     ax, word ptr ds:dword_5F837A+2
mov     [esi+4Ch], ax
jmp     loc_4C5573

loc_4C5608:
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_4C5669
cmp     byte ptr [eax+3], 0
jnz     short loc_4C5660
lea     ecx, [esi+18h]
mov     eax, ecx
call    sub_4EF184
mov     ebx, 400h
mov     [esp+20h+var_18], ebx ; int
mov     [esp+20h+var_1C], ebx ; int
mov     [esp+20h+var_20], ebx ; int
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     edx, ecx
xor     eax, eax
call    sub_4EF57E
xor     eax, eax
mov     al, [esi+0Ah]
shl     eax, 4
and     eax, 0FFFh
mov     edx, ecx
call    sub_4EF50D
mov     edx, ecx
xor     eax, eax
call    sub_4EF486

loc_4C5660:
add     byte ptr [esi+0Ah], 0Ah
jmp     loc_4C5364

loc_4C5669:
cmp     byte ptr [eax+3], 0
jnz     short loc_4C567B
mov     ds:byte_5F88AC, 35h ; '5'
inc     byte ptr [eax+9]
jmp     short loc_4C567F

loc_4C567B:
mov     byte ptr [eax+9], 0Ah

loc_4C567F:
and     byte ptr [esi], 0FDh
jmp     loc_4C5364

loc_4C5687:
cmp     ds:byte_5F840B, 0
jge     loc_4C5364
mov     byte ptr [eax+9], 0Ah
jmp     loc_4C5364

loc_4C569D:
xor     eax, eax
mov     al, [esi+3]
mov     eax, ds:dword_537844[eax*4]
call    sub_47E8B8
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
xor     edx, edx
mov     ds:dword_5F84E8, edx
mov     eax, esi
jmp     loc_4C535F
sub_4C5508 endp




sub_4C56CE proc near
push    edx
xor     edx, edx
mov     dx, ds:word_77EAB6
sar     edx, 2
and     edx, 3
shl     dl, 5
mov     [eax+22h], dl
pop     edx
retn
sub_4C56CE endp




sub_4C56E6 proc near

var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
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
mov     ebp, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_4C5701
cmp     al, 1
jz      short loc_4C5719
jmp     loc_4C58C3

loc_4C5701:
or      byte ptr [ebp+0], 6
lea     edx, [ebp+3]
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+50h], offset unk_808080
inc     byte ptr [ebp+8]

loc_4C5719:
mov     dh, [ebp+9]
test    dh, dh
jnz     loc_4C57B8
xor     eax, eax
mov     al, [ebp+0Ch]
call    sub_4E1877
mov     [esp+3Ch+var_1C], eax
mov     ecx, 0Ch
lea     edi, [ebp+18h]
mov     esi, eax
lea     esi, [esi+1F8h]
rep movsd
xor     edi, edi
mov     [esp+3Ch+var_2C], di
mov     ax, [ebp+58h]
add     eax, 5DCh
mov     [esp+3Ch+var_2A], ax
mov     [esp+3Ch+var_28], di
mov     eax, [esp+3Ch+var_1C]
add     eax, 1F8h
lea     ebx, [esp+3Ch+var_24]
lea     edx, [esp+3Ch+var_2C]
call    sub_4EF2DC
mov     eax, [esp+3Ch+var_1C]
mov     ax, [eax+190h]
mov     edx, [esp+3Ch+var_24]
add     edx, eax
mov     [ebp+48h], dx
mov     eax, [esp+3Ch+var_1C]
mov     ax, [eax+192h]
mov     edx, [esp+3Ch+var_24+2]
add     edx, eax
mov     [ebp+4Ah], dx
mov     eax, [esp+3Ch+var_1C]
mov     ax, [eax+194h]
mov     edx, [esp+3Ch+var_20]
add     edx, eax
mov     [ebp+4Ch], dx
jmp     loc_4C58C3

loc_4C57B8:             ; int
lea     ecx, [ebp+18h]
cmp     dh, 1
jnz     short loc_4C5836
xor     edi, edi
mov     [esp+3Ch+var_2C], di
mov     [esp+3Ch+var_2A], di
mov     [esp+3Ch+var_28], 200h
mov     edx, ecx
lea     eax, [esp+3Ch+var_2C]
call    sub_4EF638
mov     ebx, 200h
mov     [esp+3Ch+var_3C], ebx
mov     [esp+3Ch+var_38], ebx
mov     [esp+3Ch+var_34], ebx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     [esp+3Ch+var_2C], di
mov     ax, [ebp+58h]
mov     [esp+3Ch+var_2A], ax
mov     [esp+3Ch+var_28], di

loc_4C580A:
lea     ebx, [esp+3Ch+var_24]
lea     edx, [esp+3Ch+var_2C]
mov     eax, ecx
call    sub_4EF2DC
mov     eax, [esp+3Ch+var_24]
mov     [ebp+48h], ax
mov     eax, [esp+3Ch+var_24+2]
mov     [ebp+4Ah], ax
mov     eax, [esp+3Ch+var_20]
mov     [ebp+4Ch], ax
jmp     loc_4C58C3

loc_4C5836:
cmp     dh, 2
jnz     short loc_4C5889
xor     edi, edi
mov     [esp+3Ch+var_2C], di
mov     [esp+3Ch+var_2A], di
mov     [esp+3Ch+var_28], 200h
mov     edx, ecx
lea     eax, [esp+3Ch+var_2C]
call    sub_4EF638
mov     edi, 200h
mov     [esp+3Ch+var_3C], edi
mov     [esp+3Ch+var_38], edi
mov     [esp+3Ch+var_34], edi
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
xor     ebx, ebx
mov     [esp+3Ch+var_2C], bx
mov     ax, [ebp+58h]
mov     [esp+3Ch+var_2A], ax
mov     [esp+3Ch+var_28], bx
jmp     short loc_4C580A

loc_4C5889:
cmp     dh, 3
jnz     short loc_4C58C3
xor     edx, edx
mov     [esp+3Ch+var_2C], dx
mov     [esp+3Ch+var_2A], dx
mov     [esp+3Ch+var_28], dx
mov     edx, ecx
lea     eax, [esp+3Ch+var_2C]
call    sub_4EF638
mov     edx, 800h
mov     [esp+3Ch+var_3C], edx
mov     [esp+3Ch+var_38], edx
mov     [esp+3Ch+var_34], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689

loc_4C58C3:
add     esp, 24h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C56E6 endp




sub_4C58CD proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
add     eax, eax
add     eax, offset unk_537894
mov     dx, [eax]
mov     [ecx+48h], dx
mov     dx, [eax+2]
mov     [ecx+4Ah], dx
mov     ax, [eax+4]
mov     [ecx+4Ch], ax
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4C58CD endp




sub_4C5919 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
sub     esp, 10h
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_4C592E
mov     eax, ecx
call    sub_4C58CD

loc_4C592E:
lea     ebx, [ecx+18h]
mov     eax, ebx
call    sub_4EF184
mov     edx, 200h
mov     [esp+1Ch+var_14], edx
mov     [esp+1Ch+var_18], edx
mov     [esp+1Ch+var_1C], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
lea     eax, [ecx+48h]
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
call    sub_4ED95E
add     esp, 10h
pop     edx
pop     ecx
pop     ebx
retn
sub_4C5919 endp




sub_4C596C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_53791E[eax*4]
mov     edx, offset byte_5F8364
mov     bl, [ebp+9]
test    bl, bl
jbe     short loc_4C5999
cmp     bl, 1
jz      short loc_4C59AB
jmp     loc_4C59FE

loc_4C5999:
test    eax, eax
jnz     short loc_4C59A6
mov     eax, ebp
call    sub_4DE477
jmp     short loc_4C59FE

loc_4C59A6:
inc     bl
mov     [ebp+9], bl

loc_4C59AB:
xor     cl, cl

loc_4C59AD:
mov     ebx, [eax+6]
sar     ebx, 18h
cmp     ebx, 0FFFFFFFFh
jz      short loc_4C59FE
mov     bx, [edx+14h]
mov     si, [eax]
sub     ebx, esi
mov     esi, ebx
mov     bx, [edx+18h]
mov     di, [eax+2]
sub     ebx, edi
mov     edi, ebx
xor     ebx, ebx
mov     bx, [eax+4]
movsx   esi, si
cmp     esi, ebx
jnb     short loc_4C59F7
xor     ebx, ebx
mov     bx, [eax+6]
movsx   esi, di
cmp     esi, ebx
jnb     short loc_4C59F7
mov     [ebp+0Ch], cl
inc     byte ptr [ebp+8]
mov     al, [eax+9]
mov     [ebp+9], al
jmp     short loc_4C59FE

loc_4C59F7:
add     eax, 0Ah
inc     cl
jmp     short loc_4C59AD

loc_4C59FE:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C596C endp




sub_4C5A05 proc near
push    ecx
mov     ecx, eax
mov     eax, 4Ch ; 'L'
call    sub_47E888
test    eax, eax
jnz     short loc_4C5A3D
mov     eax, 644h
call    sub_47E888
test    eax, eax
jnz     short loc_4C5A3D
mov     eax, 644h
call    sub_47E8B8
mov     edx, 7
mov     eax, 4
call    sub_4A0E24

loc_4C5A3D:
mov     byte ptr [ecx+8], 0
pop     ecx
retn
sub_4C5A05 endp




sub_4C5A43 proc near
push    ecx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4C5A53
cmp     al, 1
jz      short loc_4C5A87
pop     ecx
retn

loc_4C5A53:
mov     eax, 4Ch ; 'L'
call    sub_47E888
test    eax, eax
jnz     short loc_4C5A78
mov     eax, 645h
call    sub_47E888
test    eax, eax
jnz     short loc_4C5A78
cmp     ds:byte_5F83D8, 0
jnz     short loc_4C5A82

loc_4C5A78:
mov     byte ptr [ecx+8], 0
mov     byte ptr [ecx+9], 0
pop     ecx
retn

loc_4C5A82:
inc     byte ptr [ecx+0Ah]
pop     ecx
retn

loc_4C5A87:
cmp     ds:byte_5F83D8, 0
jnz     short def_4C5AE3 ; jumptable 004C5AE3 default case
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
cmp     eax, 0FFFFFFDEh
jl      short loc_4C5AB6
mov     eax, 645h
call    sub_47E8B8
mov     edx, 9
mov     eax, 4
call    sub_4A0E24

