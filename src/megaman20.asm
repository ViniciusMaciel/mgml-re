loc_43023B:
mov     dx, word ptr ds:dword_77E6C6
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
movsx   ebx, bx
mov     dx, word ptr ds:dword_77E6C2+2
sub     [eax+2], dx
mov     edi, [eax]
sar     edi, 10h
mov     dx, word ptr ds:dword_77E6CA
add     [eax+4], dx
mov     esi, [eax+2]
sar     esi, 10h
mov     dx, word ptr ds:dword_77E6C6+2
sub     [eax+6], dx

loc_430279:
mov     ecx, [eax+4]
sar     ecx, 10h
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, esi
mov     edx, edi
sub     edx, ebx
imul    edx, eax
mov     ebp, ecx
sub     ebp, esi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
mov     edx, edi
sub     edx, eax
lea     eax, [edx-4]
mov     [esp+20h+var_18], eax
cmp     ebx, eax
jle     short loc_4302AE
mov     [esp+20h+var_18], ebx

loc_4302AE:
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, ebx
mov     edx, ecx
sub     edx, esi
imul    edx, eax
mov     ebp, edi
sub     ebp, ebx
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
mov     edx, ecx
sub     edx, eax
lea     eax, [edx-4]
mov     [esp+20h+var_1C], eax
cmp     esi, eax
jle     short loc_4302DD
mov     [esp+20h+var_1C], esi

loc_4302DD:
mov     eax, ds:dword_564A5A
sar     eax, 10h
cmp     eax, [esp+20h+var_18]
jle     loc_4301EA
cmp     eax, edi
jge     loc_4301EA
mov     eax, ds:dword_564A5E
sar     eax, 10h
cmp     eax, [esp+20h+var_1C]
jle     loc_4301EA
cmp     eax, ecx
jge     loc_4301EA
mov     eax, [esp+20h+var_18]
mov     word ptr ds:dword_564A2A+2, ax
mov     word ptr ds:dword_564A32+2, di
mov     eax, [esp+20h+var_1C]
mov     word ptr ds:dword_564A2E+2, ax
mov     word ptr ds:dword_564A36+2, cx
mov     ebp, ds:dword_564B2E
sar     ebp, 10h
mov     edx, ebp
sub     edx, esi
mov     eax, edi
sub     eax, ebx
mov     [esp+20h+var_20], eax
imul    edx, eax
mov     eax, ecx
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
sub     edi, eax
mov     [esp+20h+var_18], edi
mov     edi, ds:dword_564B2A
sar     edi, 10h
mov     edx, edi
sub     edx, ebx
imul    edx, esi
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+20h+var_20]
sub     ecx, eax
mov     [esp+20h+var_1C], ecx
cmp     edi, [esp+20h+var_18]
jg      loc_4301D6
cmp     ebp, ecx
jmp     loc_4301D4
sub_4301EE endp




sub_43038C proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
cmp     edx, 45h ; 'E'
jz      short loc_4303D9
mov     dx, word ptr ds:dword_77E6C6
mov     di, [eax]
add     edi, edx
mov     [eax], di
movsx   ecx, di
mov     dx, word ptr ds:dword_77E6C2+2
sub     [eax+2], dx
mov     ebx, [eax]
sar     ebx, 10h
mov     dx, word ptr ds:dword_77E6CA
add     [eax+4], dx
mov     edi, [eax+2]
sar     edi, 10h
mov     dx, word ptr ds:dword_77E6C6+2
sub     [eax+6], dx
jmp     short loc_430417

loc_4303D9:
mov     dx, word ptr ds:dword_77E6C6
mov     bx, [eax]
sub     ebx, edx
mov     [eax], bx
movsx   ecx, bx
mov     dx, word ptr ds:dword_77E6C2+2
add     [eax+2], dx
mov     ebx, [eax]
sar     ebx, 10h
mov     dx, word ptr ds:dword_77E6CA
sub     [eax+4], dx
mov     edi, [eax+2]
sar     edi, 10h
mov     dx, word ptr ds:dword_77E6C6+2
add     [eax+6], dx

loc_430417:
mov     esi, [eax+4]
sar     esi, 10h
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, edi
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     ebp, esi
sub     ebp, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
mov     edx, ebx
sub     edx, eax
lea     eax, [edx+4]
mov     [esp+20h+var_18], eax
cmp     ebx, eax
jge     short loc_43044C
mov     [esp+20h+var_18], ebx

loc_43044C:
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, ecx
mov     edx, esi
sub     edx, edi
imul    edx, eax
mov     ebp, ebx
sub     ebp, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
mov     edx, esi
sub     edx, eax
lea     eax, [edx+4]
mov     [esp+20h+var_1C], eax
cmp     esi, eax
jge     short loc_43047B
mov     [esp+20h+var_1C], esi

loc_43047B:
mov     eax, ds:dword_564A5A
sar     eax, 10h
cmp     eax, ecx
jle     loc_4301EA
cmp     eax, [esp+20h+var_18]
jge     loc_4301EA
mov     eax, ds:dword_564A5E
sar     eax, 10h
cmp     eax, edi
jle     loc_4301EA
cmp     eax, [esp+20h+var_1C]
jge     loc_4301EA
mov     word ptr ds:dword_564A2A+2, cx
mov     eax, [esp+20h+var_18]
mov     word ptr ds:dword_564A32+2, ax
mov     word ptr ds:dword_564A2E+2, di
mov     eax, [esp+20h+var_1C]
mov     word ptr ds:dword_564A36+2, ax
mov     ebp, ds:dword_564B2E
sar     ebp, 10h
mov     edx, ebp
sub     edx, edi
mov     eax, ebx
sub     eax, ecx
mov     [esp+20h+var_20], eax
imul    edx, eax
mov     eax, esi
sub     eax, edi
mov     edi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    edi
sub     ebx, eax
mov     [esp+20h+var_18], ebx
mov     ebx, ds:dword_564B2A
sar     ebx, 10h
mov     edx, ebx
sub     edx, ecx
imul    edx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+20h+var_20]
sub     esi, eax
mov     [esp+20h+var_1C], esi
cmp     ebx, [esp+20h+var_18]
jl      loc_4301D6
cmp     ebp, [esp+20h+var_1C]
jge     loc_4301E3
jmp     loc_4301D6
sub_43038C endp




sub_430532 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
cmp     edx, 55h ; 'U'
jz      short loc_430583
mov     dx, word ptr ds:dword_77E6C6
mov     di, [eax]
sub     edi, edx
mov     [eax], di
movsx   ecx, di
mov     dx, word ptr ds:dword_77E6C2+2
add     [eax+2], dx
mov     edx, [eax]
sar     edx, 10h
mov     [esp+20h+var_18], edx
mov     dx, word ptr ds:dword_77E6CA
add     [eax+4], dx
mov     ebx, [eax+2]
sar     ebx, 10h
mov     dx, word ptr ds:dword_77E6C6+2
sub     [eax+6], dx
jmp     short loc_4305C5

loc_430583:
mov     dx, word ptr ds:dword_77E6C6
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
movsx   ecx, bx
mov     dx, word ptr ds:dword_77E6C2+2
sub     [eax+2], dx
mov     edx, [eax]
sar     edx, 10h
mov     [esp+20h+var_18], edx
mov     dx, word ptr ds:dword_77E6CA
sub     [eax+4], dx
mov     ebx, [eax+2]
sar     ebx, 10h
mov     dx, word ptr ds:dword_77E6C6+2
add     [eax+6], dx

loc_4305C5:
mov     ebp, [eax+4]
sar     ebp, 10h
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, ebx
mov     edx, [esp+20h+var_18]
sub     edx, ecx
imul    edx, eax
mov     esi, ebp
sub     esi, ebx
mov     eax, edx
sar     edx, 1Fh
idiv    esi
add     eax, ecx
lea     esi, [eax-4]
cmp     esi, ecx
jge     short loc_4305F4
mov     esi, ecx

loc_4305F4:
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, ecx
mov     edx, ebp
sub     edx, ebx
imul    edx, eax
mov     edi, [esp+20h+var_18]
sub     edi, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    edi
add     eax, ebx
lea     edi, [eax+4]
cmp     edi, ebp
jle     short loc_43061D
mov     edi, ebp

loc_43061D:
mov     eax, ds:dword_564A5A
sar     eax, 10h
cmp     eax, esi
jle     loc_4301EA
cmp     eax, [esp+20h+var_18]
jge     loc_4301EA
mov     eax, ds:dword_564A5E
sar     eax, 10h
cmp     eax, ebx
jle     loc_4301EA
cmp     eax, edi
jge     loc_4301EA
mov     word ptr ds:dword_564A2A+2, si
mov     eax, [esp+20h+var_18]
mov     word ptr ds:dword_564A32+2, ax
mov     word ptr ds:dword_564A2E+2, bx
mov     word ptr ds:dword_564A36+2, di
mov     eax, ds:dword_564B2E
sar     eax, 10h
mov     [esp+20h+var_1C], eax
mov     edx, eax
sub     edx, ebx
mov     edi, [esp+20h+var_18]
sub     edi, ecx
imul    edx, edi
sub     ebp, ebx
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
lea     esi, [ecx+eax]
mov     eax, ds:dword_564B2A
sar     eax, 10h
mov     [esp+20h+var_20], eax
mov     edx, eax
sub     edx, ecx
imul    edx, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    edi
lea     edi, [ebx+eax]
cmp     esi, [esp+20h+var_20]
jl      loc_4301D6
cmp     edi, [esp+20h+var_1C]
jmp     loc_4301D4
sub_430532 endp




sub_4306C1 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     dx, word ptr ds:dword_77E6C6
mov     bx, [eax]
sub     ebx, edx
mov     [eax], bx
movsx   edx, bx
mov     [esp+1Ch+var_18], edx
mov     dx, word ptr ds:dword_77E6C2+2
sub     [eax+2], dx
mov     edx, [eax]
sar     edx, 10h
mov     [esp+1Ch+var_1C], edx
mov     dx, word ptr ds:dword_77E6CA
sub     [eax+4], dx
mov     ecx, [eax+2]
sar     ecx, 10h
mov     dx, word ptr ds:dword_77E6C6+2
sub     [eax+6], dx
mov     esi, [eax+4]
sar     esi, 10h
mov     edx, esi
sub     edx, ecx
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
add     eax, ecx
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_430734
neg     eax

loc_430734:
mov     ebx, [esp+1Ch+var_1C]
sub     ebx, [esp+1Ch+var_18]
mov     edx, eax
imul    edx, ebx
mov     edi, esi
sub     edi, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     edi, eax
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
add     eax, [esp+1Ch+var_18]
mov     edx, ds:dword_564A5A
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_43076D
neg     eax

loc_43076D:
mov     edx, esi
sub     edx, ecx
imul    edx, eax
mov     ebx, [esp+1Ch+var_1C]
mov     ebp, [esp+1Ch+var_18]
sub     ebx, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
lea     ebx, [edi+ebp]
mov     edx, ds:dword_564A5A
sar     edx, 10h
cmp     edx, ebx
jle     short loc_4307EA
mov     ebx, [esp+1Ch+var_1C]
sub     ebx, edi
cmp     edx, ebx
jge     short loc_4307EA
mov     edx, ds:dword_564A5E
sar     edx, 10h
lea     ebx, [ecx+eax]
cmp     edx, ebx
jle     short loc_4307EA
mov     ebx, esi
sub     ebx, eax
cmp     edx, ebx
jge     short loc_4307EA
mov     edx, [esp+1Ch+var_18]
add     edx, edi
mov     word ptr ds:dword_564A2A+2, dx
mov     edx, [esp+1Ch+var_1C]
sub     edx, edi
mov     word ptr ds:dword_564A32+2, dx
add     ecx, eax
mov     word ptr ds:dword_564A2E+2, cx
sub     esi, eax
mov     word ptr ds:dword_564A36+2, si
mov     eax, 1
jmp     loc_43003A

loc_4307EA:
xor     eax, eax
jmp     loc_43003A
sub_4306C1 endp




sub_4307F1 proc near

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
mov     dx, word ptr ds:dword_77E6C6
mov     bx, [eax]
sub     ebx, edx
mov     [eax], bx
movsx   esi, bx
mov     dx, word ptr ds:dword_77E6C2+2
sub     [eax+2], dx
mov     edi, [eax]
sar     edi, 10h
mov     dx, word ptr ds:dword_77E6CA
sub     [eax+4], dx
mov     ecx, [eax+2]
sar     ecx, 10h
mov     dx, word ptr ds:dword_77E6C6+2
sub     [eax+6], dx
mov     ebx, [eax+4]
sar     ebx, 10h
mov     eax, ds:dword_564A5A
sar     eax, 10h
cmp     eax, esi
jle     loc_4309F7
cmp     eax, edi
jge     loc_4309F7
mov     ebp, ds:dword_564A5E
sar     ebp, 10h
cmp     ebp, ecx
jle     loc_4309F7
cmp     ebp, ebx
jge     loc_4309F7
mov     edx, ebx
sub     edx, ecx
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
add     eax, ecx
sub     eax, ebp
test    eax, eax
jge     short loc_430885
neg     eax

loc_430885:
mov     ebp, edi
sub     ebp, esi
mov     edx, eax
imul    edx, ebp
mov     eax, ebx
sub     eax, ecx
mov     [esp+24h+var_24], eax
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+24h+var_24]
imul    eax, 16A1h
sar     eax, 0Ch
mov     [esp+24h+var_18], eax
mov     eax, ebp
mov     edx, ebp
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
add     eax, esi
mov     edx, ds:dword_564A5A
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_4308C8
neg     eax

loc_4308C8:
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     eax, edi
sub     eax, esi
mov     [esp+24h+var_1C], eax
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+24h+var_1C]
imul    eax, 16A1h
sar     eax, 0Ch
mov     edx, [esp+24h+var_18]
add     edx, esi
mov     [esp+24h+var_20], edx
mov     edx, ds:dword_564A5A
sar     edx, 10h
cmp     edx, [esp+24h+var_20]
jle     loc_4309F7
mov     ebp, edi
sub     ebp, [esp+24h+var_18]
cmp     edx, ebp
jge     loc_4309F7
mov     edx, ds:dword_564A5E
sar     edx, 10h
lea     ebp, [ecx+eax]
cmp     edx, ebp
jle     loc_4309F7
mov     ebp, ebx
sub     ebp, eax
cmp     edx, ebp
jge     loc_4309F7
imul    edx, [esp+24h+var_1C], 350h
sar     edx, 0Ch
mov     ebp, [esp+24h+var_20]
sub     ebp, edx
mov     [esp+24h+var_24], ebp
mov     edx, [esp+24h+var_24]
mov     word ptr ds:dword_564A2A+2, dx
mov     edx, ds:dword_564A2A
sar     edx, 10h
cmp     edx, esi
jge     short loc_430966
mov     word ptr ds:dword_564A2A+2, si

loc_430966:
mov     edx, edi
sub     edx, esi
imul    edx, 350h
sar     edx, 0Ch
mov     esi, edi
sub     esi, [esp+24h+var_18]
add     edx, esi
mov     word ptr ds:dword_564A32+2, dx
mov     edx, ds:dword_564A32
sar     edx, 10h
cmp     edx, edi
jle     short loc_430996
mov     word ptr ds:dword_564A32+2, di

loc_430996:
mov     edx, ebx
sub     edx, ecx
imul    edx, 350h
sar     edx, 0Ch
lea     esi, [ecx+eax]
sub     esi, edx
mov     word ptr ds:dword_564A2E+2, si
mov     edx, ds:dword_564A2E
sar     edx, 10h
cmp     edx, ecx
jle     short loc_4309C3
mov     word ptr ds:dword_564A2E+2, cx

loc_4309C3:
mov     edx, ebx
sub     edx, ecx
imul    edx, 350h
sar     edx, 0Ch
mov     ecx, ebx
sub     ecx, eax
lea     eax, [ecx+edx]
mov     word ptr ds:dword_564A36+2, ax
mov     eax, ds:dword_564A36
sar     eax, 10h
cmp     eax, ebx
jle     short loc_4309F0
mov     word ptr ds:dword_564A36+2, bx

loc_4309F0:
mov     eax, 1
jmp     short loc_4309F9

loc_4309F7:
xor     eax, eax

loc_4309F9:
add     esp, 10h
jmp     loc_43003D
sub_4307F1 endp




sub_430A01 proc near

var_14= dword ptr -14h
var_10= dword ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
mov     edi, edx
cmp     word ptr ds:dword_564A62+2, 0
jl      short loc_430A26
mov     ax, word ptr ds:dword_564A2A+2
mov     dx, word ptr ds:dword_564A5A+2
sub     eax, edx
jmp     short loc_430A35

loc_430A26:
mov     ax, word ptr ds:dword_564A32+2
mov     si, word ptr ds:dword_564A5A+2
sub     eax, esi

loc_430A35:
mov     word ptr [esp+14h+var_14], ax
cmp     ds:word_564A68, 0
jl      short loc_430A54
mov     ax, word ptr ds:dword_564A2E+2
mov     si, word ptr ds:dword_564A5E+2
sub     eax, esi
jmp     short loc_430A63

loc_430A54:
mov     ax, word ptr ds:dword_564A36+2
mov     dx, word ptr ds:dword_564A5E+2
sub     eax, edx

loc_430A63:
mov     word ptr [esp+14h+var_10], ax
cmp     ds:word_564A66, 0
jge     short loc_430A77
test    bl, 2
jz      short loc_430A88

loc_430A77:
mov     ax, word ptr ds:dword_564A2E
mov     si, word ptr ds:dword_564A5E
sub     eax, esi
jmp     short loc_430A97

loc_430A88:
mov     ax, word ptr ds:dword_564A36
mov     dx, word ptr ds:dword_564A5E
sub     eax, edx

loc_430A97:
mov     word ptr [esp+14h+var_14+2], ax
test    bl, 10h
jz      short loc_430AAA
mov     eax, esp
call    sub_43197F
jmp     short loc_430AB1

loc_430AAA:
mov     eax, esp
call    sub_4317E4

loc_430AB1:
mov     edx, eax
test    bl, 20h
jz      short loc_430AC1
mov     eax, esp
call    sub_4319D1
jmp     short loc_430AC8

loc_430AC1:
mov     eax, esp
call    sub_43186B

loc_430AC8:
mov     esi, eax
test    bl, 40h
jz      short loc_430AD8
mov     eax, esp
call    sub_431A77
jmp     short loc_430AE1

loc_430AD8:
mov     eax, esp
call    sub_4318F6
and     eax, ebx

loc_430AE1:
test    edx, edx
jnz     short loc_430AFB
test    esi, esi
jnz     short loc_430AFB
test    eax, eax
jnz     short loc_430AFB
mov     edx, edi
mov     eax, ecx
call    sub_43152D
jmp     loc_4311A2

loc_430AFB:
test    edx, edx
jnz     short loc_430B2C
test    esi, esi
jnz     short loc_430B2C
mov     eax, [esp+14h+var_14+2]
add     [ecx+2], ax
mov     eax, [esp+14h+var_14+2]
mov     ds:word_77EA98, ax
mov     ebx, eax
neg     ebx
mov     ds:word_77EA98, bx

loc_430B20:
mov     eax, esp
call    sub_431ADE
jmp     loc_4311A2

loc_430B2C:
test    edx, edx
jnz     loc_430BB9
test    eax, eax
jz      short loc_430B6E
cmp     word ptr [esp+14h+var_14+2], 0
jge     short loc_430B4A
mov     eax, [esp+14h+var_14]
sar     eax, 10h
neg     eax
jmp     short loc_430B50

loc_430B4A:
mov     eax, [esp+14h+var_14]
sar     eax, 10h

loc_430B50:
cmp     word ptr [esp+14h+var_10], 0
jge     short loc_430B63
mov     edx, [esp+14h+var_14+2]
sar     edx, 10h
neg     edx
jmp     short loc_430B6A

loc_430B63:
mov     edx, [esp+14h+var_14+2]
sar     edx, 10h

loc_430B6A:
cmp     eax, edx
jle     short loc_430B97

loc_430B6E:
mov     eax, [esp+14h+var_10]
add     [ecx+4], ax
mov     eax, [esp+14h+var_10]
mov     ds:word_77EA86, ax
mov     edi, eax
neg     edi
mov     ds:word_77EA86, di
mov     eax, esp
call    sub_431AB2
jmp     loc_4311A0

loc_430B97:
mov     eax, [esp+14h+var_14+2]
add     [ecx+2], ax
mov     eax, [esp+14h+var_14+2]
mov     ds:word_77EA98, ax
mov     ecx, eax
neg     ecx
mov     ds:word_77EA98, cx
jmp     loc_430B20

loc_430BB9:
test    esi, esi
jnz     short loc_430C15
test    eax, eax
jz      short loc_430BF6
cmp     word ptr [esp+14h+var_14+2], 0
jge     short loc_430BD3
mov     eax, [esp+14h+var_14]
sar     eax, 10h
neg     eax
jmp     short loc_430BD9

loc_430BD3:
mov     eax, [esp+14h+var_14]
sar     eax, 10h

loc_430BD9:
cmp     word ptr [esp+14h+var_14], 0
jge     short loc_430BEB
mov     edx, [esp-2]
sar     edx, 10h
neg     edx
jmp     short loc_430BF2

loc_430BEB:
mov     edx, [esp-2]
sar     edx, 10h

loc_430BF2:
cmp     eax, edx
jle     short loc_430B97

loc_430BF6:
mov     eax, [esp+14h+var_14]
add     [ecx], ax
mov     eax, [esp+14h+var_14]
mov     ds:word_77EA8C, ax
mov     edi, eax
neg     edi
mov     ds:word_77EA8C, di
jmp     loc_431199

loc_430C15:
test    eax, eax
jz      loc_430CCB
cmp     word ptr [esp+14h+var_10], 0
jge     short loc_430C30
mov     edx, [esp+14h+var_14+2]
sar     edx, 10h
neg     edx
jmp     short loc_430C37

loc_430C30:
mov     edx, [esp+14h+var_14+2]
sar     edx, 10h

loc_430C37:
cmp     word ptr [esp+14h+var_14], 0
jge     short loc_430C49
mov     eax, [esp-2]
sar     eax, 10h
neg     eax
jmp     short loc_430C50

loc_430C49:
mov     eax, [esp-2]
sar     eax, 10h

loc_430C50:
cmp     eax, edx
jge     short loc_430C6F
cmp     word ptr [esp+14h+var_14], 0
jge     short loc_430C66
mov     eax, [esp-2]

loc_430C5F:
sar     eax, 10h
neg     eax
jmp     short loc_430C84

loc_430C66:
mov     eax, [esp-2]
sar     eax, 10h
jmp     short loc_430C84

loc_430C6F:
cmp     word ptr [esp+14h+var_10], 0
jge     short loc_430C7D
mov     eax, [esp+14h+var_14+2]
jmp     short loc_430C5F

loc_430C7D:
mov     eax, [esp+14h+var_14+2]
sar     eax, 10h

loc_430C84:
cmp     word ptr [esp+14h+var_14+2], 0
jge     short loc_430C96
mov     edx, [esp+14h+var_14]
sar     edx, 10h
neg     edx
jmp     short loc_430C9C

loc_430C96:
mov     edx, [esp+14h+var_14]
sar     edx, 10h

loc_430C9C:
cmp     edx, eax
jge     short loc_430CCB
mov     eax, [esp+14h+var_14+2]
add     [ecx+2], ax
test    bl, 2
jnz     loc_430B20
mov     eax, [esp+14h+var_14+2]
mov     ds:word_77EA98, ax
mov     edi, eax
neg     edi
mov     ds:word_77EA98, di
jmp     loc_430B20

loc_430CCB:
cmp     word ptr [esp+14h+var_10], 0
jge     short loc_430CDE
mov     edx, [esp+14h+var_14+2]
sar     edx, 10h
neg     edx
jmp     short loc_430CE5

loc_430CDE:
mov     edx, [esp+14h+var_14+2]
sar     edx, 10h

loc_430CE5:
cmp     word ptr [esp+14h+var_14], 0
jge     short loc_430CF7
mov     eax, [esp-2]
sar     eax, 10h
neg     eax
jmp     short loc_430CFE

loc_430CF7:
mov     eax, [esp-2]
sar     eax, 10h

loc_430CFE:
cmp     eax, edx
jge     short loc_430D2F
mov     eax, [esp+14h+var_14]
add     [ecx], ax
mov     eax, [esp+14h+var_14]
mov     ds:word_77EA94, ax
mov     ebx, eax
neg     ebx
mov     ds:word_77EA94, bx
mov     ds:word_77EA8C, bx
mov     eax, esp
call    sub_431A87
jmp     loc_4311A0

loc_430D2F:
mov     eax, [esp+14h+var_10]
add     [ecx+4], ax
mov     eax, [esp+14h+var_10]
mov     ds:word_77EA9A, ax
mov     edi, eax
neg     edi
mov     ds:word_77EA9A, di
mov     ds:word_77EA86, di

loc_430D53:
mov     eax, esp
call    sub_431AB2
jmp     loc_4311A0
sub_430A01 endp




sub_430D5F proc near

var_12= dword ptr -12h

push    ecx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
test    ebx, ebx
jnz     short loc_430D7C
mov     ax, word ptr ds:dword_564A2E+2
mov     si, word ptr ds:dword_564A5E+2
sub     eax, esi
jmp     short loc_430D8B

loc_430D7C:
mov     ax, word ptr ds:dword_564A36+2
mov     bx, word ptr ds:dword_564A5E+2
sub     eax, ebx

loc_430D8B:
mov     word ptr [esp+14h+var_12+2], ax
cmp     ds:word_564A66, 0
jl      short loc_430DAB
mov     ax, word ptr ds:dword_564A2E
mov     si, word ptr ds:dword_564A5E
sub     eax, esi
jmp     short loc_430DBA

loc_430DAB:
mov     ax, word ptr ds:dword_564A36
mov     bx, word ptr ds:dword_564A5E
sub     eax, ebx

loc_430DBA:
mov     word ptr [esp+14h+var_12], ax
mov     eax, esp
call    sub_4319D1
mov     ebx, eax
mov     eax, esp
call    sub_431A24
mov     esi, eax
test    ebx, ebx
jnz     short loc_430DDD
test    eax, eax
jz      loc_430E62

loc_430DDD:
test    esi, esi
jz      short loc_430E40
cmp     word ptr [esp+14h+var_12], 0
jge     short loc_430DF3
mov     eax, [esp]
sar     eax, 10h
neg     eax
jmp     short loc_430DF9

loc_430DF3:
mov     eax, [esp]
sar     eax, 10h

loc_430DF9:
cmp     word ptr [esp+14h+var_12+2], 0
jge     short loc_430E0C
mov     edx, [esp+14h+var_12]
sar     edx, 10h
neg     edx
jmp     short loc_430E13

loc_430E0C:
mov     edx, [esp+14h+var_12]
sar     edx, 10h

loc_430E13:
cmp     eax, edx
jge     short loc_430E40
mov     eax, [esp+14h+var_12]
add     [ecx+2], ax
mov     eax, [esp+14h+var_12]
mov     ds:word_77EA98, ax
mov     edi, eax
neg     edi
mov     ds:word_77EA98, di

loc_430E34:
mov     eax, esp
call    sub_431ADE
jmp     loc_4311A2

loc_430E40:
mov     eax, [esp+14h+var_12+2]
add     [ecx+4], ax
mov     eax, [esp+14h+var_12+2]
mov     ds:word_77EA9A, ax
mov     ebx, eax
neg     ebx
mov     ds:word_77EA9A, bx
jmp     loc_430D53

loc_430E62:
mov     eax, ds:dword_564A2A+2
sar     eax, 10h
mov     ebx, ds:dword_564A5A+2
sar     ebx, 10h
sub     eax, ebx
test    eax, eax
jge     short loc_430E7F
mov     ebx, eax
neg     ebx
jmp     short loc_430E81

loc_430E7F:
mov     ebx, eax

loc_430E81:
mov     eax, ds:dword_564A32+2
sar     eax, 10h
mov     esi, ds:dword_564A5A+2
sar     esi, 10h
sub     eax, esi
test    eax, eax
jge     short loc_430E9A
neg     eax

loc_430E9A:
cmp     ebx, eax
jge     short loc_430EAF
mov     ax, word ptr ds:dword_564A2E
mov     bx, word ptr ds:dword_564A5E
sub     eax, ebx
jmp     short loc_430EBE

loc_430EAF:
mov     ax, word ptr ds:dword_564A36
mov     di, word ptr ds:dword_564A5E
sub     eax, edi

loc_430EBE:
mov     word ptr [esp+14h+var_12], ax
mov     eax, ds:dword_564A2E
sar     eax, 10h
mov     ebx, ds:dword_564A5E
sar     ebx, 10h
sub     eax, ebx
test    eax, eax
jge     short loc_430EE0
mov     ebx, eax
neg     ebx
jmp     short loc_430EE2

loc_430EE0:
mov     ebx, eax

loc_430EE2:
mov     eax, ds:dword_564A36
sar     eax, 10h
mov     esi, ds:dword_564A5E
sar     esi, 10h
sub     eax, esi
test    eax, eax
jge     short loc_430EFB
neg     eax

loc_430EFB:
cmp     ebx, eax
jge     short loc_430F10
mov     ax, word ptr ds:dword_564A2E+2
mov     di, word ptr ds:dword_564A5E+2
sub     eax, edi
jmp     short loc_430F1F

loc_430F10:
mov     ax, word ptr ds:dword_564A36+2
mov     si, word ptr ds:dword_564A5E+2
sub     eax, esi

loc_430F1F:
mov     word ptr [esp+14h+var_12+2], ax
cmp     word ptr [esp+14h+var_12], 0
jge     short loc_430F36
mov     eax, [esp]
sar     eax, 10h
neg     eax
jmp     short loc_430F3C

loc_430F36:
mov     eax, [esp]
sar     eax, 10h

loc_430F3C:
cmp     word ptr [esp+14h+var_12+2], 0
jge     short loc_430F4F
mov     ebx, [esp+14h+var_12]
sar     ebx, 10h
neg     ebx
jmp     short loc_430F56

loc_430F4F:
mov     ebx, [esp+14h+var_12]
sar     ebx, 10h

loc_430F56:
cmp     eax, ebx
jge     short loc_430F6F
mov     eax, [esp+14h+var_12]
add     [ecx+2], ax
mov     eax, [esp+14h+var_12]
add     [edx+2], ax
jmp     loc_430E34

loc_430F6F:
mov     eax, [esp+14h+var_12+2]
add     [ecx+4], ax
mov     eax, [esp+14h+var_12+2]
add     [edx+4], ax
jmp     loc_430D53
sub_430D5F endp




sub_430F84 proc near

var_14= dword ptr -14h

push    ecx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
test    ebx, ebx
jz      short loc_430FA1
mov     ax, word ptr ds:dword_564A2A+2
mov     si, word ptr ds:dword_564A5A+2
sub     eax, esi
jmp     short loc_430FB0

loc_430FA1:
mov     ax, word ptr ds:dword_564A32+2
mov     bx, word ptr ds:dword_564A5A+2
sub     eax, ebx

loc_430FB0:
mov     word ptr [esp+14h+var_14], ax
cmp     ds:word_564A66, 0
jl      short loc_430FCF
mov     ax, word ptr ds:dword_564A2E
mov     si, word ptr ds:dword_564A5E
sub     eax, esi
jmp     short loc_430FDE

loc_430FCF:
mov     ax, word ptr ds:dword_564A36
mov     bx, word ptr ds:dword_564A5E
sub     eax, ebx

loc_430FDE:
mov     word ptr [esp+14h+var_14+2], ax
mov     eax, esp
call    sub_43197F
mov     ebx, eax
mov     eax, esp
call    sub_431A24
mov     esi, eax
test    ebx, ebx
jnz     short loc_431001
test    eax, eax
jz      loc_431082

loc_431001:
test    esi, esi
jz      short loc_431063
cmp     word ptr [esp+14h+var_14+2], 0
jge     short loc_431017
mov     eax, [esp+14h+var_14]
sar     eax, 10h
neg     eax
jmp     short loc_43101D

loc_431017:
mov     eax, [esp+14h+var_14]
sar     eax, 10h

loc_43101D:
cmp     word ptr [esp+14h+var_14], 0
jge     short loc_43102F
mov     edx, [esp-2]
sar     edx, 10h
neg     edx
jmp     short loc_431036

loc_43102F:
mov     edx, [esp-2]
sar     edx, 10h

loc_431036:
cmp     eax, edx
jge     short loc_431063
mov     eax, [esp+14h+var_14+2]
add     [ecx+2], ax
mov     eax, [esp+14h+var_14+2]
mov     ds:word_77EA98, ax
mov     edi, eax
neg     edi
mov     ds:word_77EA98, di

loc_431057:
mov     eax, esp
call    sub_431ADE
jmp     loc_4311A2

loc_431063:
mov     eax, [esp+14h+var_14]
add     [ecx], ax
mov     eax, [esp+14h+var_14]
mov     ds:word_77EA94, ax
mov     ebx, eax
neg     ebx
mov     ds:word_77EA94, bx
jmp     loc_431199

loc_431082:
mov     eax, ds:dword_564A2A
sar     eax, 10h
mov     ebx, ds:dword_564A5A
sar     ebx, 10h
sub     eax, ebx
test    eax, eax
jge     short loc_43109F
mov     ebx, eax
neg     ebx
jmp     short loc_4310A1

loc_43109F:
mov     ebx, eax

loc_4310A1:
mov     eax, ds:dword_564A32
sar     eax, 10h
mov     esi, ds:dword_564A5A
sar     esi, 10h
sub     eax, esi
test    eax, eax
jge     short loc_4310BA
neg     eax

loc_4310BA:
cmp     ebx, eax
jge     short loc_4310CF
mov     ax, word ptr ds:dword_564A2A+2
mov     bx, word ptr ds:dword_564A5A+2
sub     eax, ebx
jmp     short loc_4310DE

loc_4310CF:
mov     ax, word ptr ds:dword_564A32+2
mov     di, word ptr ds:dword_564A5A+2
sub     eax, edi

loc_4310DE:
mov     word ptr [esp+14h+var_14], ax
mov     eax, ds:dword_564A2A+2
sar     eax, 10h
mov     ebx, ds:dword_564A5A+2
sar     ebx, 10h
sub     eax, ebx
test    eax, eax
jge     short loc_4310FF
mov     ebx, eax
neg     ebx
jmp     short loc_431101

loc_4310FF:
mov     ebx, eax

loc_431101:
mov     eax, ds:dword_564A32+2
sar     eax, 10h
mov     esi, ds:dword_564A5A+2
sar     esi, 10h
sub     eax, esi
test    eax, eax
jge     short loc_43111A
neg     eax

loc_43111A:
cmp     ebx, eax
jge     short loc_43112F
mov     ax, word ptr ds:dword_564A2E
mov     di, word ptr ds:dword_564A5E
sub     eax, edi
jmp     short loc_43113E

loc_43112F:
mov     ax, word ptr ds:dword_564A36
mov     si, word ptr ds:dword_564A5E
sub     eax, esi

loc_43113E:
mov     word ptr [esp+14h+var_14+2], ax
cmp     word ptr [esp+14h+var_14+2], 0
jge     short loc_431155
mov     eax, [esp+14h+var_14]
sar     eax, 10h
neg     eax
jmp     short loc_43115B

loc_431155:
mov     eax, [esp+14h+var_14]
sar     eax, 10h

loc_43115B:
cmp     word ptr [esp+14h+var_14], 0
jge     short loc_43116D
mov     ebx, [esp-2]
sar     ebx, 10h
neg     ebx
jmp     short loc_431174

loc_43116D:
mov     ebx, [esp-2]
sar     ebx, 10h

loc_431174:
cmp     eax, ebx
jge     short loc_43118D
mov     eax, [esp+14h+var_14+2]
add     [ecx+2], ax
mov     eax, [esp+14h+var_14+2]
add     [edx+2], ax
jmp     loc_431057

loc_43118D:
mov     eax, [esp+14h+var_14]
add     [ecx], ax
mov     eax, [esp+14h+var_14]
add     [edx], ax

loc_431199:
mov     eax, esp
call    sub_431A87

loc_4311A0:
xor     eax, eax

loc_4311A2:
add     esp, 8
pop     edi
pop     esi
pop     ecx
retn
sub_430F84 endp

jpt_4311CB dd offset loc_4311D2 ; jump table for switch statement
dd offset loc_4311F7
dd offset loc_431207
dd offset loc_431279



sub_4311B9 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
cmp     edx, 3          ; switch 4 cases
ja      def_4311CB      ; jumptable 004311CB default case
jmp     jpt_4311CB[edx*4] ; switch jump

loc_4311D2:             ; jumptable 004311CB case 0
mov     eax, ds:dword_564A32
sar     eax, 10h
movsx   ebx, word ptr [ecx]
add     eax, 4

loc_4311E0:
sub     eax, ebx
mov     ebx, eax
mov     eax, ds:dword_564A2E
sar     eax, 10h
mov     edx, [ecx+2]
sar     edx, 10h
sub     eax, 4
jmp     short loc_43122A

loc_4311F7:             ; jumptable 004311CB case 1
mov     eax, ds:dword_564A2A
sar     eax, 10h
movsx   ebx, word ptr [ecx]
sub     eax, 4
jmp     short loc_4311E0

loc_431207:             ; jumptable 004311CB case 2
mov     eax, ds:dword_564A32
sar     eax, 10h
movsx   ebx, word ptr [ecx]
add     eax, 4

loc_431215:
sub     eax, ebx
mov     ebx, eax
mov     eax, ds:dword_564A36
sar     eax, 10h
mov     edx, [ecx+2]
sar     edx, 10h
add     eax, 4

loc_43122A:
sub     eax, edx
mov     edi, ebx
imul    edi, ebx
mov     edx, eax
imul    edx, eax
add     edi, edx
mov     esi, ebx
imul    esi, eax
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     word ptr [esp+18h+var_18], ax
mov     edx, esi
imul    edx, ebx
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     word ptr [esp+18h+var_14], ax
cmp     ds:word_564A66, 0
jle     short loc_431289
mov     ax, word ptr ds:dword_564A2E
mov     si, word ptr ds:dword_564A5E
sub     eax, esi
jmp     short loc_431298

loc_431279:             ; jumptable 004311CB case 3
mov     eax, ds:dword_564A2A
sar     eax, 10h
movsx   ebx, word ptr [ecx]
sub     eax, 4
jmp     short loc_431215

loc_431289:
mov     ax, word ptr ds:dword_564A36
mov     bx, word ptr ds:dword_564A5E
sub     eax, ebx

loc_431298:
mov     word ptr [esp+18h+var_18+2], ax
cmp     ds:word_564A66, 0
jz      loc_431316
cmp     word ptr [esp+18h+var_18+2], 0
jge     short loc_4312BD
mov     edx, [esp+18h+var_18]
sar     edx, 10h
neg     edx
jmp     short loc_4312C3

loc_4312BD:
mov     edx, [esp+18h+var_18]
sar     edx, 10h

loc_4312C3:
cmp     word ptr [esp+18h+var_18], 0
jge     short loc_4312D5
mov     eax, [esp-2]
sar     eax, 10h
neg     eax
jmp     short loc_4312DC

loc_4312D5:
mov     eax, [esp-2]
sar     eax, 10h

loc_4312DC:
cmp     eax, edx
jl      short loc_431316
cmp     word ptr [esp+18h+var_14], 0
jge     short loc_4312F3
mov     eax, [esp+18h+var_18+2]
sar     eax, 10h
neg     eax
jmp     short loc_4312FA

loc_4312F3:
mov     eax, [esp+18h+var_18+2]
sar     eax, 10h

loc_4312FA:
cmp     word ptr [esp+18h+var_18+2], 0
jge     short loc_43130C
mov     edx, [esp+18h+var_18]
sar     edx, 10h
neg     edx
jmp     short loc_431312

loc_43130C:
mov     edx, [esp+18h+var_18]
sar     edx, 10h

loc_431312:
cmp     eax, edx
jge     short loc_43135C

loc_431316:
mov     eax, [esp+18h+var_18]
add     [ecx], ax
mov     eax, [esp+18h+var_14]
add     [ecx+4], ax
mov     eax, [esp+18h+var_18]
mov     ds:word_77EA8C, ax
neg     eax
mov     ds:word_77EA8C, ax
mov     eax, [esp+18h+var_14]
mov     ds:word_77EA86, ax
mov     edx, eax
neg     edx
mov     ds:word_77EA86, dx
mov     eax, esp
call    sub_431A87
mov     eax, esp
call    sub_431AB2

def_4311CB:             ; jumptable 004311CB default case
xor     eax, eax
jmp     short loc_431385

loc_43135C:
mov     eax, [esp+18h+var_18+2]
add     [ecx+2], ax
mov     eax, [esp+18h+var_18+2]
mov     ds:word_77EA98, ax
mov     ebx, eax
neg     ebx
mov     ds:word_77EA98, bx

loc_431379:
mov     byte ptr ds:dword_77EABA+2, 20h ; ' '
mov     eax, 1

loc_431385:
add     esp, 8
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4311B9 endp

jpt_4313AF dd offset loc_4313B6 ; jump table for switch statement
dd offset loc_4313DF
dd offset loc_4313FC
dd offset loc_431420



sub_43139D proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
cmp     edx, 3          ; switch 4 cases
ja      def_4313AF      ; jumptable 004313AF default case
jmp     jpt_4313AF[edx*4] ; switch jump

loc_4313B6:             ; jumptable 004313AF case 0
movsx   edx, word ptr [eax]
mov     eax, ds:dword_564A32
sar     eax, 10h
sub     eax, edx
mov     edx, eax
mov     ebx, [ecx+2]
sar     ebx, 10h
mov     eax, ds:dword_564A2E
sar     eax, 10h
sub     eax, ebx

loc_4313D5:
test    edx, edx
jge     short loc_43142A
mov     ebx, edx
neg     ebx
jmp     short loc_43142C

loc_4313DF:             ; jumptable 004313AF case 1
movsx   edx, word ptr [eax]
mov     eax, ds:dword_564A2A
sar     eax, 10h
sub     eax, edx
mov     edx, eax
mov     eax, [ecx+2]
sar     eax, 10h
mov     ebx, ds:dword_564A2E
jmp     short loc_431417

loc_4313FC:             ; jumptable 004313AF case 2
movsx   edx, word ptr [eax]
mov     eax, ds:dword_564A32

loc_431404:
sar     eax, 10h
sub     eax, edx
mov     edx, eax
mov     eax, [ecx+2]
sar     eax, 10h
mov     ebx, ds:dword_564A36

loc_431417:
sar     ebx, 10h
sub     ebx, eax
mov     eax, ebx
jmp     short loc_4313D5

loc_431420:             ; jumptable 004313AF case 3
movsx   edx, word ptr [eax]
mov     eax, ds:dword_564A2A
jmp     short loc_431404

loc_43142A:
mov     ebx, edx

loc_43142C:
mov     esi, ebx
test    eax, eax
jge     short loc_431438
mov     ebx, eax
neg     ebx
jmp     short loc_43143A

loc_431438:
mov     ebx, eax

loc_43143A:
mov     edi, ebx
cmp     esi, ebx
jle     short loc_43145E
test    edx, edx
jle     short loc_43144B
mov     edx, 1
jmp     short loc_43144D

loc_43144B:
xor     edx, edx

loc_43144D:
add     edx, edx
dec     edx
imul    edi, edx
mov     word ptr [esp+18h+var_18], di
mov     word ptr [esp+18h+var_14], ax
jmp     short loc_43147A

loc_43145E:
mov     word ptr [esp+18h+var_18], dx
test    eax, eax
jle     short loc_43146D
mov     eax, 1
jmp     short loc_43146F

loc_43146D:
xor     eax, eax

loc_43146F:
add     eax, eax
dec     eax
imul    esi, eax
mov     word ptr [esp+18h+var_14], si

loc_43147A:
cmp     ds:word_564A66, 0
jle     short loc_431495
mov     ax, word ptr ds:dword_564A2E
mov     si, word ptr ds:dword_564A5E
sub     eax, esi
jmp     short loc_4314A4

loc_431495:
mov     ax, word ptr ds:dword_564A36
mov     bx, word ptr ds:dword_564A5E
sub     eax, ebx

loc_4314A4:
mov     word ptr [esp+18h+var_18+2], ax
cmp     ds:word_564A66, 0
jz      short loc_4314E8
cmp     word ptr [esp+18h+var_18+2], 0
jge     short loc_4314C5
mov     eax, [esp+18h+var_18]
sar     eax, 10h
neg     eax
jmp     short loc_4314CB

loc_4314C5:
mov     eax, [esp+18h+var_18]
sar     eax, 10h

loc_4314CB:
cmp     word ptr [esp+18h+var_18], 0
jge     short loc_4314DD
mov     edx, [esp-2]
sar     edx, 10h
neg     edx
jmp     short loc_4314E4

loc_4314DD:
mov     edx, [esp-2]
sar     edx, 10h

loc_4314E4:
cmp     edx, eax
jge     short loc_43150B

loc_4314E8:
mov     eax, [esp+18h+var_18]
add     [ecx], ax
mov     eax, [esp+18h+var_14]
add     [ecx+4], ax
mov     eax, esp
call    sub_431A87
mov     eax, esp
call    sub_431AB2

def_4313AF:             ; jumptable 004313AF default case
xor     eax, eax
jmp     loc_431385

loc_43150B:
mov     eax, [esp+18h+var_18+2]
add     [ecx+2], ax
mov     eax, [esp+18h+var_18+2]
mov     ds:word_77EA98, ax
mov     ecx, eax
neg     ecx
mov     ds:word_77EA98, cx
jmp     loc_431379
sub_43139D endp




sub_43152D proc near

var_14= dword ptr -14h
var_10= dword ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
movsx   esi, word ptr [eax]
mov     eax, ds:dword_564A2A
sar     eax, 10h
sub     eax, esi
test    eax, eax
jge     short loc_43154C
mov     esi, eax
neg     esi
jmp     short loc_43154E

loc_43154C:
mov     esi, eax

loc_43154E:
movsx   eax, word ptr [ecx]
mov     edi, ds:dword_564A32
sar     edi, 10h
sub     edi, eax
mov     eax, edi
test    edi, edi
jge     short loc_431564
neg     eax

loc_431564:
cmp     esi, eax
jge     short loc_431575
mov     ax, word ptr ds:dword_564A2A+2
mov     di, [ecx]
sub     eax, edi
jmp     short loc_431580

loc_431575:
mov     ax, word ptr ds:dword_564A32+2
mov     si, [ecx]
sub     eax, esi

loc_431580:
mov     word ptr [esp+14h+var_14], ax
mov     esi, [ecx+2]
sar     esi, 10h
mov     eax, ds:dword_564A2E
sar     eax, 10h
sub     eax, esi
test    eax, eax
jge     short loc_43159E
mov     esi, eax
neg     esi
jmp     short loc_4315A0

loc_43159E:
mov     esi, eax

loc_4315A0:
mov     edi, [ecx+2]
sar     edi, 10h
mov     eax, ds:dword_564A36
sar     eax, 10h
sub     eax, edi
test    eax, eax
jge     short loc_4315B6
neg     eax

loc_4315B6:
cmp     esi, eax
jge     short loc_4315C8
mov     ax, word ptr ds:dword_564A2E+2
mov     di, [ecx+4]
sub     eax, edi
jmp     short loc_4315D4

loc_4315C8:
mov     ax, word ptr ds:dword_564A36+2
mov     si, [ecx+4]
sub     eax, esi

loc_4315D4:
mov     word ptr [esp+14h+var_10], ax
test    bl, 2
jz      short loc_4315EC
mov     ax, word ptr ds:dword_564A2E
mov     si, [ecx+2]
sub     eax, esi
jmp     short loc_43163D

loc_4315EC:
mov     esi, [ecx]
sar     esi, 10h
mov     eax, ds:dword_564A2A+2
sar     eax, 10h
sub     eax, esi
test    eax, eax
jge     short loc_431605
mov     esi, eax
neg     esi
jmp     short loc_431607

loc_431605:
mov     esi, eax

loc_431607:
mov     eax, [ecx]
sar     eax, 10h
mov     edi, ds:dword_564A32+2
sar     edi, 10h
sub     edi, eax
mov     eax, edi
test    edi, edi
jge     short loc_43161F
neg     eax

loc_43161F:
cmp     esi, eax
jge     short loc_431631
mov     ax, word ptr ds:dword_564A2E
mov     di, [ecx+2]
sub     eax, edi
jmp     short loc_43163D

loc_431631:
mov     ax, word ptr ds:dword_564A36
mov     si, [ecx+2]
sub     eax, esi

loc_43163D:
mov     word ptr [esp+14h+var_14+2], ax
test    bl, 1
jz      loc_431708
cmp     word ptr [esp+14h+var_10], 0
jge     short loc_43165E
mov     eax, [esp+14h+var_14+2]
sar     eax, 10h
neg     eax
jmp     short loc_431665

loc_43165E:
mov     eax, [esp+14h+var_14+2]
sar     eax, 10h

loc_431665:
cmp     word ptr [esp+14h+var_14], 0
jge     short loc_431677
mov     ebx, [esp-2]
sar     ebx, 10h
neg     ebx
jmp     short loc_43167E

loc_431677:
mov     ebx, [esp-2]
sar     ebx, 10h

loc_43167E:
cmp     ebx, eax
jge     short loc_43169D
cmp     word ptr [esp+14h+var_14], 0
jge     short loc_431694
mov     eax, [esp-2]

loc_43168D:
sar     eax, 10h
neg     eax
jmp     short loc_4316B2

loc_431694:
mov     eax, [esp-2]
sar     eax, 10h
jmp     short loc_4316B2

loc_43169D:
cmp     word ptr [esp+14h+var_10], 0
jge     short loc_4316AB
mov     eax, [esp+14h+var_14+2]
jmp     short loc_43168D

loc_4316AB:
mov     eax, [esp+14h+var_14+2]
sar     eax, 10h

loc_4316B2:
cmp     word ptr [esp+14h+var_14+2], 0
jge     short loc_4316C4
mov     ebx, [esp+14h+var_14]
sar     ebx, 10h
neg     ebx
jmp     short loc_4316CA

loc_4316C4:
mov     ebx, [esp+14h+var_14]
sar     ebx, 10h

loc_4316CA:
cmp     ebx, eax
jge     short loc_431708
test    byte ptr ds:dword_77EABA+2, 30h
jnz     short loc_431708
mov     eax, [esp+14h+var_14+2]
add     [ecx+2], ax
mov     eax, [esp+14h+var_14+2]
add     [edx+2], ax
mov     eax, [esp+14h+var_14+2]
mov     ds:word_77EA98, ax
mov     esi, eax
neg     esi
mov     ds:word_77EA98, si
mov     eax, esp
call    sub_431ADE
jmp     loc_4311A2

loc_431708:
cmp     word ptr [esp+14h+var_10], 0
jge     short loc_43171B
mov     eax, [esp+14h+var_14+2]
sar     eax, 10h
neg     eax
jmp     short loc_431722

loc_43171B:
mov     eax, [esp+14h+var_14+2]
sar     eax, 10h

loc_431722:
cmp     word ptr [esp+14h+var_14], 0
jge     short loc_431734
mov     ebx, [esp-2]
sar     ebx, 10h
neg     ebx
jmp     short loc_43173B

loc_431734:
mov     ebx, [esp-2]
sar     ebx, 10h

loc_43173B:
cmp     ebx, eax
jg      short loc_43174C
test    byte ptr ds:dword_77EABA+2, 3
jz      loc_43118D

loc_43174C:
cmp     word ptr [esp+14h+var_10], 0
jge     short loc_43175F
mov     eax, [esp+14h+var_14+2]
sar     eax, 10h
neg     eax
jmp     short loc_431766

loc_43175F:
mov     eax, [esp+14h+var_14+2]
sar     eax, 10h

loc_431766:
cmp     word ptr [esp+14h+var_14], 0
jge     short loc_431778
mov     ebx, [esp-2]
sar     ebx, 10h
neg     ebx
jmp     short loc_43177F

loc_431778:
mov     ebx, [esp-2]
sar     ebx, 10h

loc_43177F:
cmp     ebx, eax
jl      short loc_4317A8
test    byte ptr ds:dword_77EABA+2, 0Ch
jnz     short loc_4317A8

loc_43178C:
mov     eax, [esp+14h+var_10]
add     [ecx+4], ax
mov     eax, [esp+14h+var_10]
add     [edx+4], ax
mov     eax, esp
call    sub_431AB2
jmp     loc_4311A0

loc_4317A8:
cmp     word ptr [esp+14h+var_10], 0
jge     short loc_4317BB
mov     eax, [esp+14h+var_14+2]
sar     eax, 10h
neg     eax
jmp     short loc_4317C2

loc_4317BB:
mov     eax, [esp+14h+var_14+2]
sar     eax, 10h

loc_4317C2:
cmp     word ptr [esp+14h+var_14], 0
jge     short loc_4317D4
mov     ebx, [esp-2]
sar     ebx, 10h
neg     ebx
jmp     short loc_4317DB

loc_4317D4:
mov     ebx, [esp-2]
sar     ebx, 10h

loc_4317DB:
cmp     ebx, eax
jge     short loc_43178C
jmp     loc_43118D
sub_43152D endp




sub_4317E4 proc near
push    ebx
push    ecx
push    edx
cmp     word ptr ds:dword_564A62+2, 0
jz      short loc_431827
mov     bx, [eax]
test    bx, bx
jge     short loc_431800
movsx   ecx, bx
neg     ecx
jmp     short loc_431803

loc_431800:
movsx   ecx, bx

loc_431803:
cmp     word ptr ds:dword_564A62+2, 0
jge     short loc_43181A
mov     edx, ds:dword_564A62
sar     edx, 10h
neg     edx
jmp     short loc_431823

loc_43181A:
mov     edx, ds:dword_564A62
sar     edx, 10h

loc_431823:
cmp     edx, ecx
jge     short loc_43182E

loc_431827:
mov     edx, 1
jmp     short loc_431830

loc_43182E:
xor     edx, edx

loc_431830:
xor     dl, 1
test    edx, edx
jz      short loc_431865
cmp     word ptr [eax], 0
jle     short loc_431851
test    byte ptr ds:dword_77EABA+2, 2
jnz     short loc_43184D
mov     eax, 1
jmp     short loc_431863

loc_43184D:
xor     eax, eax
jmp     short loc_431863

loc_431851:
test    byte ptr ds:dword_77EABA+2, 1
jnz     short loc_431861
mov     eax, 1
jmp     short loc_431863

loc_431861:
xor     eax, eax

loc_431863:
and     edx, eax

loc_431865:
mov     eax, edx
pop     edx
pop     ecx
pop     ebx
retn
sub_4317E4 endp




sub_43186B proc near
push    ecx
push    edx
cmp     ds:word_564A68, 0
jz      short loc_4318B2
cmp     word ptr [eax+4], 0
jge     short loc_431888
mov     ecx, [eax+2]
sar     ecx, 10h
neg     ecx
jmp     short loc_43188E

loc_431888:
mov     ecx, [eax+2]
sar     ecx, 10h

loc_43188E:
cmp     ds:word_564A68, 0
jge     short loc_4318A5
mov     edx, dword ptr ds:word_564A66
sar     edx, 10h
neg     edx
jmp     short loc_4318AE

loc_4318A5:
mov     edx, dword ptr ds:word_564A66
sar     edx, 10h

loc_4318AE:
cmp     edx, ecx
jge     short loc_4318B9

loc_4318B2:
mov     edx, 1
jmp     short loc_4318BB

loc_4318B9:
xor     edx, edx

loc_4318BB:
xor     dl, 1
test    edx, edx
jz      short loc_4318F1
cmp     word ptr [eax+4], 0
jle     short loc_4318DD
test    byte ptr ds:dword_77EABA+2, 8
jnz     short loc_4318D9
mov     eax, 1
jmp     short loc_4318EF

loc_4318D9:
xor     eax, eax
jmp     short loc_4318EF

loc_4318DD:
test    byte ptr ds:dword_77EABA+2, 4
jnz     short loc_4318ED
mov     eax, 1
jmp     short loc_4318EF

loc_4318ED:
xor     eax, eax

loc_4318EF:
and     edx, eax

loc_4318F1:
mov     eax, edx
pop     edx
pop     ecx
retn
sub_43186B endp




sub_4318F6 proc near
push    ecx
push    edx
cmp     ds:word_564A66, 0
jz      short loc_43193B
cmp     word ptr [eax+2], 0
jge     short loc_431912
mov     ecx, [eax]
sar     ecx, 10h
neg     ecx
jmp     short loc_431917

loc_431912:
mov     ecx, [eax]
sar     ecx, 10h

loc_431917:
cmp     ds:word_564A66, 0
jge     short loc_43192E
mov     edx, ds:dword_564A62+2
sar     edx, 10h
neg     edx
jmp     short loc_431937

loc_43192E:
mov     edx, ds:dword_564A62+2
sar     edx, 10h

loc_431937:
cmp     edx, ecx
jge     short loc_431942

loc_43193B:
mov     edx, 1
jmp     short loc_431944

loc_431942:
xor     edx, edx

loc_431944:
xor     dl, 1
test    edx, edx
jz      short loc_43197A
cmp     word ptr [eax+2], 0
jle     short loc_431966
test    byte ptr ds:dword_77EABA+2, 20h
jnz     short loc_431962
mov     eax, 1
jmp     short loc_431978

loc_431962:
xor     eax, eax
jmp     short loc_431978

loc_431966:
test    byte ptr ds:dword_77EABA+2, 10h
jnz     short loc_431976
mov     eax, 1
jmp     short loc_431978

loc_431976:
xor     eax, eax

loc_431978:
and     edx, eax

loc_43197A:
mov     eax, edx
pop     edx
pop     ecx
retn
sub_4318F6 endp




sub_43197F proc near
push    edx
mov     edx, eax
cmp     word ptr ds:dword_564A62+2, 0
jnz     short loc_431993
mov     eax, 1
jmp     short loc_431995

loc_431993:
xor     eax, eax

loc_431995:
xor     al, 1
test    eax, eax
jz      short loc_4319CF
cmp     word ptr [edx], 0
jle     short loc_4319B9
test    byte ptr ds:dword_77EABA+2, 2
jnz     short loc_4319B3
mov     edx, 1
and     eax, edx
pop     edx
retn

loc_4319B3:
xor     edx, edx
and     eax, edx
pop     edx
retn

loc_4319B9:
test    byte ptr ds:dword_77EABA+2, 1
jnz     short loc_4319CB
mov     edx, 1
and     eax, edx
pop     edx
retn

loc_4319CB:
xor     edx, edx
and     eax, edx

loc_4319CF:
pop     edx
retn
sub_43197F endp




sub_4319D1 proc near
push    edx
mov     edx, eax
cmp     ds:word_564A68, 0
jnz     short loc_4319E5
mov     eax, 1
jmp     short loc_4319E7

loc_4319E5:
xor     eax, eax

loc_4319E7:
xor     al, 1
test    eax, eax
jz      short loc_431A22
cmp     word ptr [edx+4], 0
jle     short loc_431A0C
test    byte ptr ds:dword_77EABA+2, 8
jnz     short loc_431A06
mov     edx, 1
and     eax, edx
pop     edx
retn

loc_431A06:
xor     edx, edx
and     eax, edx
pop     edx
retn

loc_431A0C:
test    byte ptr ds:dword_77EABA+2, 4
jnz     short loc_431A1E
mov     edx, 1
and     eax, edx
pop     edx
retn

loc_431A1E:
xor     edx, edx
and     eax, edx

loc_431A22:
pop     edx
retn
sub_4319D1 endp




sub_431A24 proc near
push    edx
mov     edx, eax
cmp     ds:word_564A66, 0
jnz     short loc_431A38
mov     eax, 1
jmp     short loc_431A3A

loc_431A38:
xor     eax, eax

loc_431A3A:
xor     al, 1
test    eax, eax
jz      short loc_431A75
cmp     word ptr [edx+2], 0
jle     short loc_431A5F
test    byte ptr ds:dword_77EABA+2, 20h
jnz     short loc_431A59
mov     edx, 1
and     eax, edx
pop     edx
retn

loc_431A59:
xor     edx, edx
and     eax, edx
pop     edx
retn

loc_431A5F:
test    byte ptr ds:dword_77EABA+2, 10h
jnz     short loc_431A71
mov     edx, 1
and     eax, edx
pop     edx
retn

loc_431A71:
xor     edx, edx
and     eax, edx

loc_431A75:
pop     edx
retn
sub_431A24 endp




sub_431A77 proc near
cmp     word ptr [eax+2], 0
jz      short loc_431A84
mov     eax, 1
retn

loc_431A84:
xor     eax, eax
retn
sub_431A77 endp




sub_431A87 proc near
push    edx
test    byte ptr ds:dword_77EABA+2, 3
jz      short loc_431A9A
xor     edx, edx
mov     ds:word_77EA96, dx

loc_431A9A:
cmp     word ptr [eax], 0
jle     short loc_431AA9
mov     byte ptr ds:dword_77EABA+2, 1
pop     edx
retn

loc_431AA9:
mov     byte ptr ds:dword_77EABA+2, 2
pop     edx
retn
sub_431A87 endp




sub_431AB2 proc near
push    edx
test    byte ptr ds:dword_77EABA+2, 0Ch
jz      short loc_431AC5
xor     edx, edx
mov     ds:word_77EA9C, dx

loc_431AC5:
cmp     word ptr [eax+4], 0
jle     short loc_431AD5
mov     byte ptr ds:dword_77EABA+2, 4
pop     edx
retn

loc_431AD5:
mov     byte ptr ds:dword_77EABA+2, 8
pop     edx
retn
sub_431AB2 endp




sub_431ADE proc near
cmp     word ptr [eax+2], 0
jle     short loc_431AEF
mov     byte ptr ds:dword_77EABA+2, 10h
xor     eax, eax
retn

loc_431AEF:
mov     byte ptr ds:dword_77EABA+2, 20h ; ' '
mov     eax, 1
retn
sub_431ADE endp

jpt_431CDB dd offset loc_431CE2, offset loc_431D9D ; jump table for switch statement
dd offset loc_431E78, offset loc_431D9D
dd offset loc_431D9D, offset loc_431D9D
dd offset def_431CDB, offset loc_431FD9
dd offset def_431CDB, offset def_431CDB
dd offset def_431CDB, offset def_431CDB
dd offset def_431CDB, offset def_431CDB
dd offset def_431CDB, offset loc_43203B
dd offset def_431CDB, offset def_431CDB
dd offset def_431CDB, offset def_431CDB
dd offset def_431CDB, offset def_431CDB
dd offset def_431CDB, offset def_431CDB
dd offset def_431CDB, offset def_431CDB
dd offset def_431CDB, offset def_431CDB
dd offset def_431CDB, offset def_431CDB
dd offset def_431CDB, offset loc_432066
dd offset loc_432066, offset loc_432066
dd offset loc_432066, offset loc_432066
dd offset loc_432066, offset loc_432066
dd offset loc_432066, offset def_431CDB
dd offset def_431CDB, offset loc_432066
dd offset loc_432066, offset loc_4320A5
dd offset loc_4320A5, offset def_431CDB
dd offset loc_4320D1, offset loc_432066
dd offset loc_432066, offset loc_432066
dd offset loc_432066, offset loc_432066
dd offset loc_432066, offset loc_432066
dd offset loc_432066, offset loc_4320E9
dd offset loc_432066, offset loc_432066
dd offset loc_432101, offset loc_432066
dd offset loc_432066, offset loc_432066
dd offset loc_432066, offset loc_432066
dd offset loc_432066, offset loc_432066
dd offset loc_432066, offset loc_432119
dd offset loc_432066, offset loc_432066
dd offset loc_432066, offset loc_432066
dd offset loc_432066, offset def_431CDB
dd offset def_431CDB, offset def_431CDB
dd offset def_431CDB, offset def_431CDB
dd offset def_431CDB, offset loc_432131
dd offset def_431CDB, offset loc_43218E
dd offset loc_4321D9, offset loc_432210
dd offset loc_432066, offset loc_43222E
dd offset def_431CDB, offset def_431CDB
dd offset def_431CDB, offset def_431CDB
dd offset def_431CDB, offset def_431CDB
dd offset def_431CDB, offset def_431CDB
dd offset def_431CDB, offset loc_432246
dd offset loc_432082, offset loc_432082
dd offset loc_432082, offset loc_432082



sub_431C8C proc near

var_26= dword ptr -26h
var_22= dword ptr -22h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     esi, eax
mov     edx, [eax+78h]
mov     ebx, esp
call    sub_432278
test    eax, eax
jz      loc_43226E
test    byte ptr [esi+1], 0F0h
jnz     short loc_431CC1
mov     eax, esi
cmp     byte ptr [esi+0BDh], 0
jz      short loc_431CC3
xor     eax, eax
jmp     loc_43226E

loc_431CC1:
xor     eax, eax

loc_431CC3:
movzx   ebp, [esp+24h+var_1C]
xor     ecx, ecx
mov     cx, [esp+24h+var_1A]
lea     edx, [ebp-1]    ; switch 100 cases
cmp     edx, 63h
ja      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
jmp     jpt_431CDB[edx*4] ; switch jump

loc_431CE2:             ; jumptable 00431CDB case 1
test    eax, eax
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     ecx, ds:dword_77E708

loc_431CF0:
movsx   edx, word ptr [ecx]
cmp     edx, 0FFFFFFFFh
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     edx, [ecx+6]
sar     edx, 10h
mov     ebx, [esp+24h+var_26]
sar     ebx, 10h
cmp     ebx, edx
jnz     loc_431D95
mov     edx, [ecx+8]
sar     edx, 10h
mov     ebx, [esp+24h+var_26+2]
sar     ebx, 10h
cmp     ebx, edx
jnz     short loc_431D95
mov     edx, [ecx+0Ah]
sar     edx, 10h
mov     ebx, [esp+24h+var_22]
sar     ebx, 10h
cmp     ebx, edx
jnz     short loc_431D95
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     dx, [ecx+10h]
add     dx, [eax+14h]
mov     bx, [ecx+8]
sub     edx, ebx
mov     word ptr ds:dword_77EA4E+2, dx
mov     dx, [eax+16h]
mov     word ptr ds:dword_77EA52, dx
mov     dx, [ecx+14h]
add     dx, [eax+18h]
mov     bx, [ecx+0Ch]
sub     edx, ebx
mov     word ptr ds:dword_77EA52+2, dx
mov     ax, [eax+56h]
mov     word ptr ds:dword_77EA5A, ax
mov     al, [ecx+6]
mov     ds:byte_77EA5E, al
mov     al, [ecx+7]
mov     ds:byte_77EA5F, al
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
jmp     def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95

loc_431D95:
add     ecx, 18h
jmp     loc_431CF0

loc_431D9D:             ; jumptable 00431CDB cases 2,4-6
call    sub_43253D
test    eax, eax
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     ecx, ds:dword_77E708

loc_431DB0:
movsx   eax, word ptr [ecx]
cmp     eax, 0FFFFFFFFh
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     eax, [ecx+6]
sar     eax, 10h
mov     edx, [esp+24h+var_26]
sar     edx, 10h
cmp     edx, eax
jnz     short loc_431E0F
mov     edx, [ecx+8]
sar     edx, 10h
mov     eax, [esp+24h+var_26+2]
sar     eax, 10h
cmp     eax, edx
jnz     short loc_431E0F
mov     edx, [ecx+0Ah]
sar     edx, 10h
mov     eax, [esp+24h+var_22]
sar     eax, 10h
cmp     eax, edx
jnz     short loc_431E0F
mov     eax, [ecx+0Ch]
sar     eax, 10h
mov     edx, [esp+24h+var_22+2]
sar     edx, 10h
sub     edx, eax
lea     eax, [edx+200h]
and     eax, 0FFFh
cmp     eax, 400h
jle     short loc_431E14

loc_431E0F:
add     ecx, 18h
jmp     short loc_431DB0

loc_431E14:
mov     eax, ecx
call    sub_43258B
test    eax, eax
jnz     def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     eax, ecx
call    sub_432600

loc_431E2A:
test    eax, eax
jnz     def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     byte ptr ds:dword_77EA5A+2, 2
mov     edi, (offset dword_77EA4E+2)
lea     esi, [ecx+10h]
movsd
movsd
mov     ax, [ecx+16h]
mov     word ptr ds:dword_77EA5A, ax
mov     al, [ecx+6]
mov     ds:byte_77EA5E, al
mov     al, [ecx+7]
mov     ds:byte_77EA5F, al
xor     ah, ah
mov     byte ptr ds:dword_77EA5A+3, ah
mov     ds:byte_77EA61, 15h
mov     ds:byte_77EA60, 2
jmp     def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95

loc_431E78:             ; jumptable 00431CDB case 3
call    sub_43253D
test    eax, eax
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     ecx, ds:dword_77E708

loc_431E8B:
movsx   eax, word ptr [ecx]
cmp     eax, 0FFFFFFFFh
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     eax, [ecx+6]
sar     eax, 10h
mov     edx, [esp+24h+var_26]
sar     edx, 10h
cmp     edx, eax
jnz     short loc_431EE5
mov     eax, [ecx+8]
sar     eax, 10h
mov     edx, [esp+24h+var_26+2]
sar     edx, 10h
cmp     edx, eax
jnz     short loc_431EE5
mov     eax, [ecx+0Ah]
sar     eax, 10h
mov     ebx, [esp+24h+var_22]
sar     ebx, 10h
cmp     ebx, eax
jnz     short loc_431EE5
mov     eax, [ecx+0Ch]
sar     eax, 10h
mov     edx, [esp+24h+var_22+2]
sar     edx, 10h
mov     edi, edx
sub     edi, eax
lea     eax, [edi+200h]
test    ah, 4
jz      short loc_431EEA

loc_431EE5:
add     ecx, 18h
jmp     short loc_431E8B

loc_431EEA:
add     edx, 200h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ah
sbb     eax, edx
sar     eax, 0Ah
mov     edx, eax
and     edx, 3
jnz     short loc_431F0E
mov     eax, [esi+16h]
sar     eax, 10h
cmp     eax, ebx
jl      short loc_431EE5

loc_431F0E:
cmp     edx, 1
jnz     short loc_431F24
mov     ebx, [esi+12h]
sar     ebx, 10h
mov     eax, [esp+24h+var_26]
sar     eax, 10h
cmp     ebx, eax
jl      short loc_431EE5

loc_431F24:
cmp     edx, 2
jnz     short loc_431F3A
mov     ebx, [esi+16h]
sar     ebx, 10h
mov     eax, [esp+24h+var_22]
sar     eax, 10h
cmp     ebx, eax
jg      short loc_431EE5

loc_431F3A:
cmp     edx, 3
jnz     short loc_431F50
mov     edx, [esi+12h]
sar     edx, 10h
mov     eax, [esp+24h+var_26]
sar     eax, 10h
cmp     edx, eax
jg      short loc_431EE5

loc_431F50:
mov     eax, ecx
call    sub_43258B
test    eax, eax
jnz     def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
movsx   eax, word ptr [ecx]
test    ah, 80h
jz      short loc_431FD2
mov     edi, offset dword_77EA48
mov     esi, esp
movsd
movsd
mov     edi, (offset dword_77EA4E+2)
lea     esi, [ecx+10h]
movsd
movsd
mov     ax, [ecx+0Eh]
mov     word ptr ds:dword_77EA56+2, ax
mov     ax, [ecx+16h]
mov     word ptr ds:dword_77EA5A, ax
mov     al, [ecx+6]
mov     ds:byte_77EA5E, al
mov     al, [ecx+7]
mov     ds:byte_77EA5F, al
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 2
mov     edx, 5
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, 7B0h

loc_431FC8:
call    sub_47E8B8
jmp     def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95

loc_431FD2:
mov     eax, 7B1h
jmp     short loc_431FC8

loc_431FD9:             ; jumptable 00431CDB case 8
call    sub_43253D
test    eax, eax
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     ecx, ds:dword_77E708

loc_431FEC:
movsx   eax, word ptr [ecx]
cmp     eax, 0FFFFFFFFh
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     edx, [ecx+6]
sar     edx, 10h
mov     eax, [esp+24h+var_26]
sar     eax, 10h
cmp     eax, edx
jnz     short loc_432036
mov     edx, [ecx+8]
sar     edx, 10h
mov     eax, [esp+24h+var_26+2]
sar     eax, 10h
cmp     eax, edx
jnz     short loc_432036
mov     eax, [ecx+0Ah]
sar     eax, 10h
mov     edx, [esp+24h+var_22]
sar     edx, 10h
cmp     edx, eax
jnz     short loc_432036
mov     eax, ecx
call    sub_43258B
jmp     loc_431E2A

loc_432036:
add     ecx, 18h
jmp     short loc_431FEC

loc_43203B:             ; jumptable 00431CDB case 16
cmp     byte ptr [esi+74h], 0
jnz     def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     eax, 60Fh
call    sub_47E888
test    eax, eax
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
add     word ptr [esi+14h], 8
add     word ptr [esi+1Eh], 8
jmp     def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95

loc_432066:             ; jumptable 00431CDB cases 32-39,42,43,48-55,57,58,60-67,69-73,85
call    sub_43253D
test    eax, eax
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
xor     eax, eax
mov     al, ss:byte_5116DD[ebp]
and     ecx, 0Fh
add     ecx, eax
jmp     short loc_4320C1

loc_432082:             ; jumptable 00431CDB cases 97-100
call    sub_43253D
test    eax, eax
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
xor     eax, eax
mov     al, ss:byte_5116DD[ebp]
and     ecx, 0Fh
add     ecx, eax
xor     ebx, ebx
mov     edx, 10h
jmp     short loc_4320C5

loc_4320A5:             ; jumptable 00431CDB cases 44,45
call    sub_43253D
test    eax, eax
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
and     ecx, 0Fh
mov     cl, ds:byte_5116F5[ecx]

loc_4320BB:
and     ecx, 0FFh

loc_4320C1:
xor     ebx, ebx
xor     edx, edx

loc_4320C5:
xor     eax, eax

loc_4320C7:
call    sub_4A62D4
jmp     def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95

loc_4320D1:             ; jumptable 00431CDB case 47
call    sub_43253D
test    eax, eax
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
and     ecx, 0Fh
mov     cl, ds:byte_5116D0[ecx]
jmp     short loc_4320BB

loc_4320E9:             ; jumptable 00431CDB case 56
call    sub_43253D
test    eax, eax
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
and     ecx, 0Fh
mov     cl, ds:byte_5116EB[ecx]
jmp     short loc_4320BB

loc_432101:             ; jumptable 00431CDB case 59
call    sub_43253D
test    eax, eax
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
and     ecx, 0Fh
mov     cl, ds:byte_5116F1[ecx]
jmp     short loc_4320BB

loc_432119:             ; jumptable 00431CDB case 68
call    sub_43253D
test    eax, eax
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
and     ecx, 0Fh
mov     cl, ds:byte_5116DB[ecx]
jmp     short loc_4320BB

loc_432131:             ; jumptable 00431CDB case 80
call    sub_43253D
test    eax, eax
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
test    cl, 0FFh
jnz     short loc_43214D
mov     ecx, 6
jmp     loc_4320C1

loc_43214D:
cmp     ds:byte_77E7D4, 0Eh
jnz     short loc_432172
mov     eax, 1Eh
call    sub_47E888
test    eax, eax
jnz     def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     eax, 608h
jmp     loc_431FC8

loc_432172:
mov     eax, 27h ; '''
call    sub_47E888
test    eax, eax
jnz     def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     eax, 605h
jmp     loc_431FC8

loc_43218E:             ; jumptable 00431CDB case 82
call    sub_43253D
test    eax, eax
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
test    cl, 0FFh
jnz     short loc_4321C0
mov     eax, 44h ; 'D'
call    sub_47E888
test    eax, eax
jnz     def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     ecx, 0Ch

loc_4321B7:
xor     ebx, ebx
xor     edx, edx
jmp     loc_4320C7

loc_4321C0:
mov     eax, 49h ; 'I'
call    sub_47E888
test    eax, eax
jnz     def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     ecx, 11h
jmp     short loc_4321B7

loc_4321D9:             ; jumptable 00431CDB case 83
call    sub_43253D
test    eax, eax
jz      def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
test    cl, 0FFh
jnz     def_431CDB      ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     eax, 56h ; 'V'
call    sub_47E888
test    eax, eax
jnz     short loc_432206
or      ds:byte_77E8FE, 40h
jmp     short def_431CDB ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95

loc_432206:
mov     ecx, 1
jmp     loc_4320C1

loc_432210:             ; jumptable 00431CDB case 84
call    sub_43253D
test    eax, eax
jz      short def_431CDB ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
and     ecx, 0FFh
mov     eax, 1
shl     eax, cl
or      ds:dword_77E8F8, eax
jmp     short def_431CDB ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95

loc_43222E:             ; jumptable 00431CDB case 86
call    sub_43253D
test    eax, eax
jz      short def_431CDB ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
test    cl, 0FFh
jnz     short def_431CDB ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     ecx, 1Ch
jmp     loc_4320C1

loc_432246:             ; jumptable 00431CDB case 96
call    sub_43253D
test    eax, eax
jz      short def_431CDB ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
and     ecx, 0Fh
mov     cl, ds:byte_5116F8[ecx]
and     ecx, 0FFh
xor     ebx, ebx
mov     edx, 10h
xor     eax, eax
call    sub_4A62D4

def_431CDB:             ; jumptable 00431CDB default case, cases 7,9-15,17-31,40,41,46,74-79,81,87-95
mov     eax, ebp

loc_43226E:
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_431C8C endp




sub_432278 proc near

var_80= dword ptr -80h
var_7C= byte ptr -7Ch
var_4C= word ptr -4Ch
var_4A= word ptr -4Ah
var_48= word ptr -48h
var_46= dword ptr -46h
var_42= word ptr -42h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= word ptr -38h
var_34= word ptr -34h
var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch
var_28= byte ptr -28h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 6Ch
push    eax             ; int
mov     ecx, edx
mov     [esp+80h+var_20], ebx
lea     edi, [esp+80h+var_38]
mov     esi, eax
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [esp+80h+var_28]
lea     esi, [esp+80h+var_38]
movsd
movsd
xor     edx, edx
lea     eax, [esp+80h+var_28]
call    sub_42DCD6
mov     ebp, eax
lea     eax, [esp+80h+var_7C]
call    sub_4EF184
mov     eax, [esp+80h+var_80]
mov     eax, [eax+54h]
sar     eax, 10h
lea     edx, [esp+80h+var_7C]
call    sub_4EF50D
xor     edx, edx
mov     [esp+80h+var_30], dx
mov     [esp+80h+var_2E], dx
mov     [esp+80h+var_2C], 0FFC0h
lea     ebx, [esp+80h+var_40]
lea     edx, [esp+80h+var_30]
lea     eax, [esp+80h+var_7C]
call    sub_4EF2DC
mov     eax, [esp+80h+var_40]
add     [esp+80h+var_38], ax
mov     eax, [esp+80h+var_3C]
add     [esp+80h+var_34], ax
test    ecx, ecx
jz      short loc_432316
mov     eax, [ecx]
mov     ds:dword_77E6C2+2, eax
mov     eax, [ecx+4]
mov     ds:dword_77E6C6+2, eax
mov     eax, [ecx+8]
mov     ds:dword_77E6CA+2, eax
jmp     short loc_43232A

loc_432316:
xor     edx, edx
mov     ds:dword_77E6C2+2, edx
mov     ds:dword_77E6C6+2, ecx
mov     ds:dword_77E6CA+2, edx

loc_43232A:
dec     ebp
cmp     ebp, 0FFFFFFFFh
jz      loc_432523
mov     eax, ds:dword_564A52[ebp*2]
sar     eax, 10h
call    sub_42C4AB
test    eax, eax
jle     short loc_43232A
mov     edx, eax
shl     edx, 2
sub     edx, eax
shl     edx, 2
mov     eax, (offset dword_6E40AA+2)
add     eax, edx
mov     ecx, [eax+8]
test    word ptr [eax+6], 0FFFh
jz      short loc_432368
mov     ecx, [ecx+4]
jmp     short loc_43236B

loc_432368:
mov     ecx, [ecx+8]

loc_43236B:
mov     dx, [eax]
mov     word ptr [esp+80h+var_18], dx
mov     dx, [eax+2]
mov     word ptr [esp+80h+var_1C], dx
mov     ax, [eax+4]
mov     word ptr [esp+80h+var_14], ax

loc_432385:
cmp     dword ptr [ecx+8], 0
jz      short loc_43232A
mov     eax, [esp+80h+var_18]
mov     si, [ecx]
add     eax, esi
mov     [esp+80h+var_4C], ax
mov     eax, [esp+80h+var_18]
mov     di, [ecx+2]
add     eax, edi
mov     [esp+80h+var_4A], ax
mov     eax, [esp+80h+var_14]
mov     dx, [ecx+4]
add     eax, edx
mov     [esp+80h+var_48], ax
mov     eax, [esp+80h+var_14]
mov     bx, [ecx+6]
add     eax, ebx
mov     word ptr [esp+80h+var_46], ax
mov     ebx, [ecx+8]
cmp     word ptr [ebx+4], 100h
jnb     short loc_4323D6

loc_4323D1:
add     ecx, 10h
jmp     short loc_432385

loc_4323D6:
test    byte ptr [ebx+7], 80h
jz      short loc_4323E7
mov     edi, (offset dword_564A5A+2)
lea     esi, [esp+80h+var_38]
jmp     short loc_4323F0

loc_4323E7:
mov     edi, (offset dword_564A5A+2)
lea     esi, [esp+80h+var_28]

loc_4323F0:
movsd
movsd
mov     ax, [ebx+4]
xor     ah, ah
and     al, 0F0h
mov     esi, eax
and     esi, 0FFFFh
sar     esi, 4
shl     esi, 2
lea     eax, [esp+80h+var_4C]
call    ds:funcs_42C6FC[esi]
test    eax, eax
jz      short loc_4323D1
mov     esi, [ecx+0Ch]

loc_432419:
mov     eax, [esp+80h+var_1C]
add     ax, [ebx]
mov     dx, ds:word_77E6CE
sub     eax, edx
mov     word ptr [esp+80h+var_46+2], ax
mov     eax, [esp+80h+var_1C]
add     ax, [ebx+2]
mov     dx, word ptr ds:dword_77E6CA+2
sub     eax, edx
mov     [esp+80h+var_42], ax
mov     ax, [ebx+4]
xor     ah, ah
xor     edx, edx
mov     dx, ax
lea     eax, [esp+80h+var_4C]
call    sub_42D185
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, [esp+80h+var_46]
sar     edx, 10h
cmp     eax, edx
jle     loc_432514
mov     edx, [esp+80h+var_46+2]
sar     edx, 10h
cmp     eax, edx
jge     loc_432514
mov     eax, [ecx]
sar     eax, 10h
movsx   edx, word ptr [ecx]
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, [esp+80h+var_1C+2]
sar     edx, 10h
add     eax, edx
mov     edx, [esp+80h+var_20]
mov     [edx], ax
mov     edx, [ebx]
sar     edx, 10h
movsx   eax, word ptr [ebx]
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, [esp+80h+var_20+2]
sar     edx, 10h
add     eax, edx
mov     edx, [esp+80h+var_20]
mov     [edx+2], ax
mov     eax, [ecx+2]
sar     eax, 10h
mov     edx, [ecx+4]
sar     edx, 10h
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, [esp+80h+var_18+2]
sar     edx, 10h
add     eax, edx
mov     edx, [esp+80h+var_20]
mov     [edx+4], ax
mov     eax, [esp+80h+var_80]
mov     ax, [eax+56h]
mov     [edx+6], ax
xor     eax, eax
mov     ax, [ebx+4]
sar     eax, 8
mov     [edx+8], ax
mov     ax, [ebx+6]
mov     [edx+0Ah], ax
mov     eax, 1
jmp     short loc_432535

loc_432514:
add     ebx, 8
dec     esi
jnz     loc_432419
jmp     loc_4323D1

loc_432523:
mov     eax, [esp+80h+var_20]
mov     word ptr [eax+8], 0
mov     word ptr [eax+0Ah], 0
xor     eax, eax

loc_432535:
add     esp, 70h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_432278 endp




sub_43253D proc near
push    ecx
push    edx
test    eax, eax
jz      short loc_432588
xor     edx, edx
mov     dl, [eax+9]
xor     ecx, ecx
mov     cx, [eax+11Eh]
cmp     dword ptr [eax+184h], 0
jnz     short loc_432586
test    edx, edx
jz      short loc_432568
cmp     edx, 1
jz      short loc_432568
cmp     edx, 4
jnz     short loc_432586

loc_432568:
xor     edx, edx
mov     dx, [eax+136h]
test    ecx, edx
jz      short loc_432586
call    sub_4B61E1
test    eax, eax
jnz     short loc_432586
mov     eax, 1
pop     edx
pop     ecx
retn

loc_432586:
xor     eax, eax

loc_432588:
pop     edx
pop     ecx
retn
sub_43253D endp




sub_43258B proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, 7E0h
call    sub_47E888
test    eax, eax
jnz     short loc_4325B4
mov     ax, [edx]
xor     ah, ah
and     al, 1Fh
cwde
add     eax, 7E0h
call    sub_47E888
test    eax, eax
jz      short loc_4325EC

loc_4325B4:
mov     eax, 7C0h
call    sub_47E888
test    eax, eax
jnz     short loc_4325E7
mov     ax, [edx]
xor     ah, ah
and     al, 1Fh
cwde
add     eax, 7C0h
call    sub_47E888
test    eax, eax
jnz     short loc_4325E7
mov     ecx, [edx+2]
sar     ecx, 10h
xor     ebx, ebx
xor     edx, edx
call    sub_4A62D4

loc_4325E7:
mov     eax, 1

loc_4325EC:
pop     edx
pop     ecx
pop     ebx
retn
sub_43258B endp

jpt_432613 dd offset def_432613 ; jump table for switch statement
dd offset loc_43261A
dd offset loc_432641
dd offset loc_432660



sub_432600 proc near
mov     ax, [eax+2]
cmp     ax, 3           ; switch 4 cases
ja      def_432613      ; jumptable 00432613 default case, case 0
and     eax, 0FFFFh
jmp     jpt_432613[eax*4] ; switch jump

loc_43261A:             ; jumptable 00432613 case 1
cmp     byte ptr ds:dword_77E7D5+1, 0
jnz     short def_432613 ; jumptable 00432613 default case, case 0
mov     eax, 2Ch ; ','
call    sub_47E888
test    eax, eax
jz      short def_432613 ; jumptable 00432613 default case, case 0
mov     eax, 1Bh

loc_432636:
call    sub_47EB4B
mov     eax, 1
retn

loc_432641:             ; jumptable 00432613 case 2
mov     eax, 28h ; '('
call    sub_47E888
test    eax, eax
jnz     short def_432613 ; jumptable 00432613 default case, case 0
mov     eax, 28h ; '('
call    sub_47E8B8
mov     eax, 18h
jmp     short loc_432636

loc_432660:             ; jumptable 00432613 case 3
mov     eax, 29h ; ')'
call    sub_47E888
test    eax, eax
jnz     short def_432613 ; jumptable 00432613 default case, case 0
mov     eax, 29h ; ')'
call    sub_47E8B8
mov     eax, 27h ; '''
jmp     short loc_432636

def_432613:             ; jumptable 00432613 default case, case 0
xor     eax, eax
retn
sub_432600 endp




sub_432682 proc near
mov     ds:dword_77E948, offset unk_75122C
mov     ds:dword_77E944, offset unk_75152C
retn
sub_432682 endp




sub_432697 proc near
push    esi
mov     esi, edx
test    byte ptr [eax], 3
jz      short loc_4326C8
mov     edx, ds:dword_77E948
mov     [edx], eax
mov     eax, ds:dword_77E948
mov     [eax+4], si
mov     eax, ds:dword_77E948
mov     [eax+6], bx
mov     eax, ds:dword_77E948
mov     [eax+8], ecx
add     ds:dword_77E948, 0Ch

loc_4326C8:
pop     esi
retn
sub_432697 endp




sub_4326CA proc near
push    edx
test    byte ptr [eax], 3
jz      short loc_4326DF
mov     edx, ds:dword_77E944
mov     [edx], eax
add     ds:dword_77E944, 4

loc_4326DF:
mov     word ptr [eax+7Ch], 0
pop     edx
retn
sub_4326CA endp

db 8Dh, 40h, 0
jpt_43273A dd offset loc_432741 ; jump table for switch statement
dd offset loc_432752
dd offset loc_4327CF
dd offset loc_4327DD
dd offset loc_4327E4
dd offset loc_4328AF
dd offset loc_4327E4
dd offset loc_4328AF



sub_43270A proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
xor     edx, edx
mov     [esp+20h+var_20], edx
mov     edi, offset unk_75152C
jmp     loc_43279B

loc_432722:
mov     ebp, [esi+2]
sar     ebp, 10h
mov     eax, [esi+4]
sar     eax, 10h
mov     edx, [esi+8]
cmp     ebp, 7          ; switch 8 cases
ja      def_43273A      ; jumptable 0043273A default case
jmp     jpt_43273A[ebp*4] ; switch jump

loc_432741:             ; jumptable 0043273A case 0
mov     edx, [edi]
mov     ebp, [esi]
xor     ecx, ecx

loc_432747:
mov     ebx, eax
mov     eax, ebp

loc_43274B:
call    sub_43319B
jmp     short loc_432764

loc_432752:             ; jumptable 0043273A case 1
push    0

loc_432754:
push    edx
mov     ebp, [esi]
mov     edx, [edi]
mov     ecx, eax
mov     ebx, ebp
mov     eax, ebp

loc_43275F:
call    sub_4329AB

loc_432764:
mov     [esp+20h+var_1C], eax
cmp     [esp+20h+var_1C], 0
jz      short loc_4327CA

loc_43276F:
lea     edx, [edi+4]
mov     esi, [esp+20h+var_1C]
test    esi, esi
jz      loc_432985
mov     eax, [edi]
mov     ebx, [esp+20h+var_1C]
mov     [eax+7Ch], bx
mov     ebp, [esp+20h+var_20]
inc     ebp
mov     [esp+20h+var_20], ebp
cmp     ebp, 8
jle     short loc_43279B
xor     ecx, ecx
mov     [esp+20h+var_20], ecx

loc_432799:
mov     edi, edx

loc_43279B:
cmp     edi, ds:dword_77E944
jz      loc_43298D
xor     ebx, ebx
mov     [esp+20h+var_1C], ebx
mov     esi, offset unk_75122C

loc_4327B2:
cmp     esi, ds:dword_77E948
jz      short loc_43276F
xor     eax, eax
mov     [esp+20h+var_1C], eax
mov     eax, [esi]
cmp     eax, [edi]
jnz     loc_432722

loc_4327CA:
add     esi, 0Ch
jmp     short loc_4327B2

loc_4327CF:             ; jumptable 0043273A case 2
mov     edx, [edi]
mov     ebp, [esi]
mov     ecx, 1
jmp     loc_432747

loc_4327DD:             ; jumptable 0043273A case 3
push    1
jmp     loc_432754

loc_4327E4:             ; jumptable 0043273A cases 4,6
mov     eax, [esi]
mov     ax, [eax+48h]
mov     ds:word_559438, ax
mov     word ptr ds:dword_55941E+2, ax
mov     eax, [esi]
mov     ax, [eax+4Ah]
mov     ds:word_55943A, ax
mov     word ptr ds:dword_559422, ax
mov     eax, [esi]
mov     ax, [eax+4Ch]
mov     ds:word_55943C, ax
mov     word ptr ds:dword_559422+2, ax
mov     eax, ds:dword_55941E
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_559440, eax
mov     ds:dword_559428, eax
mov     eax, ds:dword_55941E+2
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_559444, eax
mov     ds:dword_55942C, eax
mov     eax, ds:dword_559422
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_559448, eax
mov     ds:dword_559430, eax
xor     edx, edx
mov     ds:word_559460, dx
mov     ds:word_559462, dx
mov     ds:word_559464, dx
mov     ds:word_559450, dx
mov     ds:word_559452, dx
mov     ds:word_559454, dx
mov     eax, [esi]
mov     eax, [eax+14h]
mov     ds:dword_559494, eax
mov     eax, [esi]
mov     eax, [eax+54h]
mov     ds:dword_559484, eax
mov     edx, [edi]
mov     ecx, 1
mov     ebx, 0FFFFFFFFh
mov     eax, offset unk_55940C
jmp     loc_43274B

loc_4328AF:             ; jumptable 0043273A cases 5,7
mov     eax, [esi]
mov     ax, [eax+48h]
mov     ds:word_559438, ax
mov     word ptr ds:dword_55941E+2, ax
mov     eax, [esi]
mov     ax, [eax+4Ah]
mov     ds:word_55943A, ax
mov     word ptr ds:dword_559422, ax
mov     eax, [esi]
mov     ax, [eax+4Ch]
mov     ds:word_55943C, ax
mov     word ptr ds:dword_559422+2, ax
mov     eax, ds:dword_55941E
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_559440, eax
mov     ds:dword_559428, eax
mov     eax, ds:dword_55941E+2
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_559444, eax
mov     ds:dword_55942C, eax
mov     eax, ds:dword_559422
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_559448, eax
mov     ds:dword_559430, eax
xor     ebx, ebx
mov     ds:word_559460, bx
mov     ds:word_559462, bx
mov     ds:word_559464, bx
mov     ds:word_559450, bx
mov     ds:word_559452, bx
mov     ds:word_559454, bx
mov     eax, [esi]
mov     eax, [eax+14h]
mov     ds:dword_559494, eax
mov     eax, [esi]
mov     eax, [eax+54h]
mov     ds:dword_559484, eax
push    1
push    edx
mov     ebx, [esi]
mov     edx, [edi]
mov     ecx, 0FFFFFFFFh
mov     eax, offset unk_55940C
jmp     loc_43275F

def_43273A:             ; jumptable 0043273A default case
xor     ecx, ecx
mov     [esp+20h+var_1C], ecx
jmp     loc_4327CA

loc_432985:
mov     [esp+20h+var_20], esi
jmp     loc_432799

loc_43298D:
mov     ds:dword_77E948, offset unk_75122C
mov     ds:dword_77E944, offset unk_75152C
add     esp, 8
sub_43270A endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_432EAB

