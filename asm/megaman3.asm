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

loc_4329A4:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_432EAB



sub_4329AB proc near

var_C8= dword ptr -0C8h
var_C4= byte ptr -0C4h
var_94= dword ptr -94h
var_90= dword ptr -90h
var_8C= dword ptr -8Ch
var_84= dword ptr -84h
var_80= dword ptr -80h
var_7C= dword ptr -7Ch
var_74= dword ptr -74h
var_70= dword ptr -70h
var_6C= dword ptr -6Ch
var_64= dword ptr -64h
var_60= dword ptr -60h
var_5C= dword ptr -5Ch
var_54= dword ptr -54h
var_50= dword ptr -50h
var_4C= dword ptr -4Ch
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_34= word ptr -34h
var_32= word ptr -32h
var_30= word ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4
arg_4= dword ptr  8

push    esi
push    edi
push    ebp
sub     esp, 0B8h
push    eax
mov     ebp, edx
mov     [esp+0C8h+var_14], ebx
mov     eax, [edx+71h]
sar     eax, 18h
mov     [esp+0C8h+var_2C], eax
lea     ebx, [esp+0C8h+var_54]
lea     edx, [esp+0C8h+var_74]
mov     eax, [esp+0C8h+var_C8]
call    sub_433AD9
mov     eax, [ebp+78h]
call    sub_42DE2A
xor     eax, eax
mov     al, [ebp+1]
call    sub_4DD420
test    eax, eax
jz      short loc_4329FC
xor     ecx, ecx
mov     [esp+0C8h+var_24], ecx
jmp     short loc_432A07

loc_4329FC:
mov     [esp+0C8h+var_24], 8000h

loc_432A07:
mov     ebx, [esp+0C8h+var_24]
push    ebx
mov     ecx, [esp+0CCh+arg_4]
lea     ebx, [esp+0CCh+var_74]
mov     edx, [esp+0CCh+var_C8]
mov     eax, ebp
call    sub_432F94
test    eax, eax
jnz     loc_432BC2
cmp     byte ptr [ebp+76h], 0
jz      loc_432BBB
mov     eax, [esp+0C8h+var_14]
cmp     eax, [ebp+0C0h]
jnz     loc_432BBB
mov     eax, [esp+0C8h+var_C8]
mov     eax, [eax+42h]
sar     eax, 10h
mov     [esp+0C8h+var_94], eax
mov     eax, [esp+0C8h+var_C8]
mov     eax, [eax+44h]
sar     eax, 10h
mov     [esp+0C8h+var_90], eax
mov     eax, [esp+0C8h+var_C8]
mov     eax, [eax+46h]
sar     eax, 10h
mov     [esp+0C8h+var_8C], eax
cmp     [esp+0C8h+arg_4], 0
jnz     loc_432B17
mov     edx, [esp+0C8h+var_C8]
mov     dx, [edx+54h]
mov     bx, [ebp+54h]
sub     edx, ebx
mov     [esp+0C8h+var_34], dx
mov     edi, [esp+0C8h+var_C8]
mov     di, [edi+56h]
mov     cx, [ebp+56h]   ; int
sub     edi, ecx
mov     [esp+0C8h+var_32], di
mov     esi, [esp+0C8h+var_C8]
mov     si, [esi+58h]
mov     ax, [ebp+58h]
sub     esi, eax
mov     [esp+0C8h+var_30], si
cmp     byte ptr [ebp+1], 0
jnz     short loc_432AF7
mov     ax, [ebp+114h]
add     edx, eax
mov     [esp+0C8h+var_34], dx
mov     ax, [ebp+116h]
add     edi, eax
mov     [esp+0C8h+var_32], di
mov     ax, [ebp+118h]
add     esi, eax
mov     [esp+0C8h+var_30], si

loc_432AF7:
lea     edx, [esp+0C8h+var_C4]
lea     eax, [esp+0C8h+var_34]
call    sub_4EF638
xor     ecx, ecx
mov     [esp+0C8h+var_84], ecx
mov     [esp+0C8h+var_80], ecx
mov     [esp+0C8h+var_7C], ecx
jmp     short loc_432B68

loc_432B17:
cmp     byte ptr [ebp+1], 0
jnz     short loc_432B79
mov     ax, [ebp+114h]
mov     [esp+0C8h+var_34], ax
mov     ax, [ebp+116h]
mov     [esp+0C8h+var_32], ax
mov     ax, [ebp+118h]
mov     [esp+0C8h+var_30], ax
lea     edx, [esp+0C8h+var_C4]
lea     eax, [esp+0C8h+var_34]
call    sub_4EF638
xor     edi, edi
mov     [esp+0C8h+var_84], edi
mov     [esp+0C8h+var_80], edi
mov     [esp+0C8h+var_7C], edi

loc_432B68:
lea     ebx, [esp+0C8h+var_84]
lea     edx, [esp+0C8h+var_94]
lea     eax, [esp+0C8h+var_C4]
call    sub_4DD5E6

loc_432B79:
mov     eax, [esp+0C8h+var_94]
add     [ebp+44h], ax
mov     eax, [esp+0C8h+var_8C]
add     [ebp+48h], ax
cmp     byte ptr [ebp+74h], 0
jz      short loc_432B95
mov     eax, [esp+0C8h+var_90]
jmp     short loc_432B9F

loc_432B95:
mov     eax, [esp+0C8h+var_90]
sub     eax, 200h

loc_432B9F:
add     [ebp+46h], ax
mov     byte ptr [ebp+76h], 0
mov     dword ptr [ebp+0C0h], 0
mov     eax, 4000h
jmp     loc_432E9F

loc_432BBB:
xor     eax, eax
jmp     loc_432E9F

loc_432BC2:
lea     edi, [esp+0C8h+var_64]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [esp+0C8h+var_44]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
mov     eax, [esp+0C8h+var_64]
mov     esi, [esp+0C8h+var_44]
sub     eax, esi
mov     [esp+0C8h+var_10], eax
mov     esi, [esp+0C8h+var_60]
sub     esi, [esp+0C8h+var_40]
mov     edi, [esp+0C8h+var_5C]
sub     edi, [esp+0C8h+var_3C]
mov     eax, [esp+0C8h+var_74]
mov     edx, [esp+0C8h+var_54]
sub     eax, edx
mov     [esp+0C8h+var_20], eax
mov     eax, [esp+0C8h+var_70]
mov     ecx, [esp+0C8h+var_50]
sub     eax, ecx
mov     [esp+0C8h+var_18], eax
mov     eax, [esp+0C8h+var_6C]
mov     ebx, [esp+0C8h+var_4C]
sub     eax, ebx
mov     [esp+0C8h+var_1C], eax
mov     al, [ebp+74h]
mov     byte ptr ds:dword_77EABA, al
mov     al, [ebp+76h]
mov     byte ptr ds:dword_77EABA+1, al
lea     eax, [esp+0C8h+var_44]
push    eax
lea     eax, [esp+0CCh+var_64]
push    eax
lea     ecx, [esp+0D0h+var_54]
lea     ebx, [esp+0D0h+var_74]
mov     edx, ebp
mov     eax, [esp+0D0h+var_C8]
call    sub_4339AB
mov     eax, [esp+0C8h+var_24]
push    eax
mov     edx, [esp+0CCh+arg_4]
push    edx
lea     ecx, [esp+0D0h+var_44]
lea     ebx, [esp+0D0h+var_64]
lea     edx, [esp+0D0h+var_74]
mov     eax, [esp+0D0h+var_C8]
call    sub_43329B
mov     [esp+0C8h+var_28], eax
test    eax, eax
jle     loc_432DE9
mov     ecx, [esp+0C8h+var_10]
test    ecx, ecx
jz      short loc_432CB7
mov     eax, [esp+0C8h+var_20]
xor     eax, ecx
test    eax, eax
jge     short loc_432CEC

loc_432CB7:
mov     eax, [esp+0C8h+var_20]
sub     eax, [esp+0C8h+var_10]
test    eax, eax
jge     short loc_432CCB
neg     eax

loc_432CCB:
lea     edx, [eax-80000h]
mov     ecx, [esp+0C8h+var_10]
test    ecx, ecx
jge     short loc_432CE2
mov     eax, ecx
neg     eax
jmp     short loc_432CE4

loc_432CE2:
mov     eax, ecx

loc_432CE4:
cmp     edx, eax
jg      loc_432D4E

loc_432CEC:
test    esi, esi
jz      short loc_432CFD
mov     eax, [esp+0C8h+var_18]
xor     eax, esi
test    eax, eax
jge     short loc_432D1B

loc_432CFD:
mov     eax, [esp+0C8h+var_18]
sub     eax, esi
test    eax, eax
jge     short loc_432D0C
neg     eax

loc_432D0C:
sub     eax, 80000h
test    esi, esi
jge     short loc_432D17
neg     esi

loc_432D17:
cmp     eax, esi
jg      short loc_432D4E

loc_432D1B:
test    edi, edi
jz      short loc_432D30
mov     eax, [esp+0C8h+var_1C]
xor     eax, edi
test    eax, eax
jge     loc_432DBC

loc_432D30:
mov     eax, [esp+0C8h+var_1C]
sub     eax, edi
test    eax, eax
jge     short loc_432D3F
neg     eax

loc_432D3F:
sub     eax, 80000h
test    edi, edi
jge     short loc_432D4A
neg     edi

loc_432D4A:
cmp     eax, edi
jle     short loc_432DBC

loc_432D4E:
cmp     byte ptr [ebp+1], 0
jnz     short loc_432DBC
cmp     byte ptr ds:dword_77EABA+1, 0
jnz     short loc_432DBC
mov     eax, [esp+0C8h+arg_0]
and     eax, 0FFh
mov     ebx, [ebp+188h]
add     ebx, eax
mov     [ebp+188h], ebx
mov     eax, [esp+0C8h+arg_0]
xor     al, al
mov     esi, ebx
or      esi, eax
mov     [ebp+188h], esi
mov     edx, [esp+0C8h+var_C8]
mov     edx, [edx+54h]
sar     edx, 10h
mov     eax, [ebp+54h]
sar     eax, 10h
sub     edx, eax
mov     eax, [ebp+114h]
sar     eax, 10h
add     eax, edx
and     eax, 0FFFh
add     eax, 200h
sar     eax, 0Ah
and     eax, 3
inc     eax
or      al, 80h
mov     [ebp+71h], al

loc_432DBC:
mov     dh, byte ptr ds:dword_77EABA
test    dh, dh
jnz     short loc_432DEF
cmp     byte ptr ds:dword_77EABA+1, 0
jz      short loc_432DEF
mov     [ebp+74h], dh
mov     al, byte ptr ds:dword_77EABA+1
mov     [ebp+76h], al
mov     eax, [esp+0C8h+var_14]
mov     [ebp+0C0h], eax
jmp     short loc_432DEF

loc_432DE9:
jl      loc_432BBB

loc_432DEF:
mov     eax, [esp+0C8h+var_64]
mov     [ebp+1Ch], eax
mov     eax, [esp+0C8h+var_5C]
mov     [ebp+24h], eax
mov     edi, [esp+0C8h+var_24]
push    edi
mov     ecx, [esp+0CCh+arg_4]
lea     ebx, [esp+0CCh+var_74]
mov     edx, [esp+0CCh+var_C8]
mov     eax, ebp
call    sub_432F94
test    eax, eax
jz      short loc_432E68
mov     eax, ds:dword_559400
sub     eax, 40000h
mov     edx, [ebp+20h]
cmp     eax, edx
jge     short loc_432E5F
mov     eax, ds:dword_559400
add     eax, 200000h
cmp     eax, edx
jle     short loc_432E5F
cmp     byte ptr [ebp+74h], 0
jnz     short loc_432E5F
mov     eax, ds:dword_559400
mov     [ebp+20h], eax
mov     byte ptr [ebp+76h], 1
mov     eax, [esp+0C8h+var_14]
mov     [ebp+0C0h], eax
jmp     short loc_432E8D

loc_432E5F:
mov     eax, [esp+0C8h+var_60]
mov     [ebp+20h], eax
jmp     short loc_432E8D

loc_432E68:
mov     eax, [esp+0C8h+var_60]
mov     [ebp+20h], eax
cmp     byte ptr [ebp+76h], 0
jz      short loc_432E8D
mov     al, byte ptr [esp+0C8h+var_2C]
mov     [ebp+74h], al
mov     byte ptr [ebp+76h], 0
mov     dword ptr [ebp+0C0h], 0

loc_432E8D:
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B
mov     eax, [esp+0C8h+var_28]

loc_432E9F:
add     esp, 0BCh

loc_432EA5:
pop     ebp
pop     edi
pop     esi
retn    8
sub_4329AB endp ; sp-analysis failed




sub_432EAB proc near

; FUNCTION CHUNK AT 004329A4 SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ebp, offset byte_5F8364
mov     edi, ds:dword_77E76C
xor     ebx, ebx
jmp     short loc_432ECE

loc_432EC2:
inc     ebx
add     ebp, 6F4h
cmp     ebx, 2
jge     short loc_432EE3

loc_432ECE:
mov     cl, bl
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_432EC2
mov     edx, ebp
mov     eax, esi
call    sub_432F77
jmp     short loc_432EC2

loc_432EE3:
mov     ebp, offset byte_6DD9CC
mov     edi, ds:dword_77E778
xor     ebx, ebx
jmp     short loc_432EFE

loc_432EF2:
inc     ebx
add     ebp, 4A0h
cmp     ebx, 10h
jge     short loc_432F13

loc_432EFE:
mov     cl, bl
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_432EF2
mov     edx, ebp
mov     eax, esi
call    sub_432F77
jmp     short loc_432EF2

loc_432F13:
mov     ebp, offset unk_6E23DC
mov     edi, ds:dword_77E758
xor     ebx, ebx
jmp     short loc_432F2E

loc_432F22:
inc     ebx
add     ebp, 734h
cmp     ebx, 4
jge     short loc_432F43

loc_432F2E:
mov     cl, bl
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_432F22
mov     edx, ebp
mov     eax, esi
call    sub_432F77
jmp     short loc_432F22

loc_432F43:
mov     ebp, offset byte_57098C
mov     edi, ds:dword_77E73C
xor     ebx, ebx
jmp     short loc_432F62

loc_432F52:
inc     ebx
add     ebp, 11Ch
cmp     ebx, 20h ; ' '
jge     loc_4329A4

loc_432F62:
mov     cl, bl
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_432F52
mov     edx, ebp
mov     eax, esi
call    sub_432F77
jmp     short loc_432F52
sub_432EAB endp




sub_432F77 proc near
cmp     byte ptr [edx+76h], 0
jz      short locret_432F93
cmp     eax, [edx+0C0h]
jnz     short locret_432F93
mov     byte ptr [edx+76h], 0
mov     dword ptr [edx+0C0h], 0

locret_432F93:
retn
sub_432F77 endp




sub_432F94 proc near

var_5C= dword ptr -5Ch
var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= byte ptr -50h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch
var_1A= dword ptr -1Ah
var_16= word ptr -16h
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 44h
push    edx
push    ebx
push    ecx
mov     ebp, 7FFFh
test    ecx, ecx
jnz     loc_433036
mov     edx, [eax+1Ch]
mov     ds:dword_5593FC, edx
mov     edx, [eax+20h]
mov     ds:dword_559400, edx
mov     eax, [eax+24h]
mov     ds:dword_559404, eax
mov     eax, [esp+5Ch+var_54]
mov     ax, [eax+54h]
mov     [esp+5Ch+var_14], ax
mov     edx, eax
neg     edx
mov     [esp+5Ch+var_14], dx
mov     eax, [esp+5Ch+var_54]
mov     ax, [eax+56h]
mov     [esp+5Ch+var_12], ax
mov     ebx, eax
neg     ebx
mov     [esp+5Ch+var_12], bx
mov     eax, [esp+5Ch+var_54]
mov     ax, [eax+58h]
mov     [esp+5Ch+var_10], ax
mov     ecx, eax
neg     ecx             ; int
mov     [esp+5Ch+var_10], cx
lea     edx, [esp+5Ch+var_50]
lea     eax, [esp+5Ch+var_14]
call    sub_4EF5F7
mov     ebx, [esp+5Ch+var_58]
mov     edx, offset dword_5593FC
lea     eax, [esp+5Ch+var_50]
call    sub_4DD5E6
mov     edx, (offset dword_564A5A+2)
mov     eax, offset dword_5593FC
call    sub_4DD57B
jmp     short loc_433040

loc_433036:
mov     edi, (offset dword_564A5A+2)
lea     esi, [eax+14h]
movsd
movsd

loc_433040:
mov     edx, offset word_564A4C
mov     eax, [esp+5Ch+var_58]
call    sub_4DD57B
mov     ebx, [esp+5Ch+var_54]
mov     ebx, [ebx+88h]
mov     ebx, [ebx]

loc_43305A:
cmp     dword ptr [ebx+8], 0
jz      loc_433135
mov     ax, ds:word_564A4C
mov     dx, [ebx]
add     eax, edx
mov     [esp+5Ch+var_20], ax
mov     ax, ds:word_564A4C
mov     cx, [ebx+2]
add     eax, ecx
mov     [esp+5Ch+var_1E], ax
mov     ax, ds:word_564A50
mov     si, [ebx+4]
add     eax, esi
mov     [esp+5Ch+var_1C], ax
mov     ax, ds:word_564A50
mov     di, [ebx+6]
add     eax, edi
mov     word ptr [esp+5Ch+var_1A], ax
mov     ecx, [ebx+8]
mov     ax, [ecx+4]
xor     ah, ah
and     al, 0F0h
mov     esi, eax
and     esi, 0FFFFh
sar     esi, 4
shl     esi, 2
xor     edx, edx
mov     dx, [ecx+4]
lea     eax, [esp+5Ch+var_20]
call    ds:funcs_42C6FC[esi]
test    eax, eax
jnz     short loc_4330D9

loc_4330D4:
add     ebx, 10h
jmp     short loc_43305A

loc_4330D9:
mov     esi, [ebx+0Ch]

loc_4330DC:
mov     ax, ds:word_564A4E
mov     dx, [ecx]
add     eax, edx
mov     word ptr [esp+5Ch+var_1A+2], ax
mov     ax, ds:word_564A4E
mov     di, [ecx+2]
add     eax, edi
mov     [esp+5Ch+var_16], ax
xor     edx, edx
mov     dx, [ecx+4]
lea     eax, [esp+5Ch+var_20]
call    sub_42D185
mov     eax, [esp+5Ch+var_1A]
sar     eax, 10h
cmp     ebp, eax
jle     short loc_43312D
mov     edi, ds:dword_564A5A+2
sar     edi, 10h
mov     edx, [esp+5Ch+var_1A+2]
sar     edx, 10h
cmp     edi, edx
jg      short loc_43312D
mov     ebp, eax

loc_43312D:
add     ecx, 8
dec     esi
jnz     short loc_4330DC
jmp     short loc_4330D4

loc_433135:
cmp     ebp, 7FFFh
jz      short loc_43314C
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
lea     edx, [ebp-20h]
cmp     eax, edx
jge     short loc_433150

loc_43314C:
xor     eax, eax
jmp     short loc_433192

loc_433150:
shl     ebp, 10h
mov     ds:dword_559400, ebp
cmp     [esp+5Ch+var_5C], 0
jnz     short loc_43318D
neg     [esp+5Ch+var_14]
neg     [esp+5Ch+var_12]
neg     [esp+5Ch+var_10]
lea     edx, [esp+5Ch+var_50]
lea     eax, [esp+5Ch+var_14]
call    sub_4EF638
mov     ebx, [esp+5Ch+var_58]
mov     edx, offset dword_5593FC
lea     eax, [esp+5Ch+var_50]
call    sub_4DD5E6

loc_43318D:
mov     eax, 1

loc_433192:
add     esp, 50h
pop     ebp
pop     edi
pop     esi
retn    4
sub_432F94 endp




sub_43319B proc near

var_5C= dword ptr -5Ch
var_58= byte ptr -58h
var_48= byte ptr -48h
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= byte ptr -28h
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 4Ch
push    eax
mov     ebp, edx
mov     [esp+5Ch+var_18], ecx
xor     edx, edx
mov     [esp+5Ch+var_10], edx
mov     ecx, ebx
lea     ebx, [esp+5Ch+var_48]
lea     edx, [esp+5Ch+var_58]
call    sub_433AD9
mov     eax, [ebp+78h]
call    sub_42DE2A
xor     eax, eax
mov     al, [ebp+1]
call    sub_4DD420
test    eax, eax
jz      short loc_4331DB
xor     ebx, ebx
mov     [esp+5Ch+var_14], ebx
jmp     short loc_4331E3

loc_4331DB:
mov     [esp+5Ch+var_14], 8000h

loc_4331E3:
mov     esi, [esp+5Ch+var_14]
push    esi
mov     ecx, [esp+60h+var_18]
lea     ebx, [esp+60h+var_58]
mov     edx, [esp+60h+var_5C]
mov     eax, ebp
call    sub_432F94
test    eax, eax
jz      loc_433290
lea     edi, [esp+5Ch+var_38]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [esp+5Ch+var_28]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
lea     eax, [esp+5Ch+var_28]
push    eax
lea     eax, [esp+60h+var_38]
push    eax
lea     ecx, [esp+64h+var_48]
lea     ebx, [esp+64h+var_58]
mov     edx, ebp
mov     eax, [esp+64h+var_5C]
call    sub_4339AB
mov     edi, [esp+5Ch+var_14]
push    edi
mov     eax, [esp+60h+var_18]
push    eax
lea     ecx, [esp+64h+var_28]
lea     ebx, [esp+64h+var_38]
lea     edx, [esp+64h+var_58]
mov     eax, [esp+64h+var_5C]
call    sub_43329B
mov     [esp+5Ch+var_10], eax
test    eax, eax
jz      short loc_433290
test    ah, 3
jz      short loc_433269
mov     eax, [esp+5Ch+var_38]
mov     [ebp+1Ch], eax

loc_433269:
test    byte ptr [esp+5Ch+var_10+1], 0Ch
jz      short loc_433277
mov     eax, [esp+5Ch+var_30]
mov     [ebp+24h], eax

loc_433277:
test    byte ptr [esp+5Ch+var_10+1], 30h
jz      short loc_433285
mov     eax, [esp+5Ch+var_34]
mov     [ebp+20h], eax

loc_433285:
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B

loc_433290:
mov     eax, [esp+5Ch+var_10]
add     esp, 50h
pop     ebp
pop     edi
pop     esi
retn
sub_43319B endp




sub_43329B proc near

var_6C= dword ptr -6Ch
var_68= dword ptr -68h
var_64= dword ptr -64h
var_60= byte ptr -60h
var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_26= dword ptr -26h
var_22= dword ptr -22h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4
arg_4= dword ptr  8

push    esi
push    edi
push    ebp
sub     esp, 54h
push    eax
push    edx
push    ebx
xor     ah, ah
mov     byte ptr ds:dword_77EABA+2, ah
xor     edx, edx
mov     [esp+6Ch+var_10], edx
mov     [esp+6Ch+var_14], edx
cmp     [esp+6Ch+arg_0], 0
jnz     short loc_43332B
mov     eax, [esp+6Ch+var_64]
mov     ax, [eax+54h]
mov     [esp+6Ch+var_1C], ax
mov     edx, eax
neg     edx
mov     [esp+6Ch+var_1C], dx
mov     eax, [esp+6Ch+var_64]
mov     ax, [eax+56h]
mov     [esp+6Ch+var_1A], ax
mov     ebx, eax
neg     ebx
mov     [esp+6Ch+var_1A], bx
mov     eax, [esp+6Ch+var_64]
mov     ax, [eax+58h]
mov     [esp+6Ch+var_18], ax
mov     esi, eax
neg     esi
mov     [esp+6Ch+var_18], si
lea     edx, [esp+6Ch+var_60]
lea     eax, [esp+6Ch+var_1C]
call    sub_4EF5F7
mov     ebx, [esp+6Ch+var_68]
mov     edx, ecx
lea     eax, [esp+6Ch+var_60]
call    sub_4DD5E6
mov     ebx, [esp+6Ch+var_68]
mov     edx, [esp+6Ch+var_6C]
lea     eax, [esp+6Ch+var_60]
call    sub_4DD5E6

loc_43332B:
mov     edx, offset word_564A4C
mov     eax, [esp+6Ch+var_68]
call    sub_4DD57B
mov     edx, (offset dword_564B2A+2)
mov     eax, ecx
call    sub_4DD57B
mov     edx, (offset dword_564A5A+2)
mov     eax, [esp+6Ch+var_6C]
call    sub_4DD57B
lea     edi, [esp+6Ch+var_26+2]
mov     esi, (offset dword_564A5A+2)
movsd
movsd
xor     edi, edi
mov     ds:word_77EA94, di
mov     ds:word_77EA98, di
mov     ds:word_77EA9A, di
mov     ds:word_77EA96, di
mov     ds:word_77EA92, di
mov     ds:word_77EA9C, di
mov     ds:word_77EA8C, di
mov     ds:word_77EA90, di
mov     ds:word_77EA86, di
mov     ds:word_77EA8E, di
mov     ds:word_77EA8A, di
mov     ds:word_77EA88, di

loc_4333B3:
mov     eax, [esp+6Ch+var_64]
mov     eax, [eax+88h]
mov     esi, [eax]
mov     ax, word ptr ds:dword_564A5A+2
mov     di, word ptr ds:dword_564B2A+2
sub     eax, edi
mov     word ptr ds:dword_564A62+2, ax
mov     ax, word ptr ds:dword_564A5E
mov     dx, word ptr ds:dword_564B2E
sub     eax, edx
mov     ds:word_564A66, ax
mov     ax, word ptr ds:dword_564A5E+2
mov     bx, word ptr ds:dword_564B2E+2
sub     eax, ebx
mov     ds:word_564A68, ax

loc_4333FE:
cmp     dword ptr [esi+8], 0
jz      loc_4334DF
mov     ax, ds:word_564A4C
mov     cx, [esi]
add     eax, ecx
mov     [esp+6Ch+var_30], ax
mov     ax, ds:word_564A4C
mov     di, [esi+2]
add     eax, edi
mov     [esp+6Ch+var_2E], ax
mov     ax, ds:word_564A50
mov     dx, [esi+4]
add     eax, edx
mov     [esp+6Ch+var_2C], ax
mov     ax, ds:word_564A50
mov     bx, [esi+6]
add     eax, ebx
mov     [esp+6Ch+var_2A], ax
mov     ecx, [esi+8]
mov     ax, [ecx+4]
xor     ah, ah
and     al, 0F0h
mov     edi, eax
and     edi, 0FFFFh
sar     edi, 4
shl     edi, 2
xor     edx, edx
mov     dx, [ecx+4]
lea     eax, [esp+6Ch+var_30]
call    ds:funcs_42C6FC[edi]
mov     ebp, eax
test    eax, eax
jnz     short loc_433486
mov     [esp+6Ch+var_10], eax

loc_43347E:
add     esi, 10h
jmp     loc_4333FE

loc_433486:
mov     edi, [esi+0Ch]

loc_433489:
xor     edx, edx
mov     dx, [ecx+6]
mov     eax, [esp+6Ch+arg_4]
xor     ah, 80h
and     eax, edx
test    ah, 80h
jnz     short loc_4334D7
mov     ax, ds:word_564A4E
mov     dx, [ecx]
add     eax, edx
mov     [esp+6Ch+var_28], ax
mov     ax, ds:word_564A4E
mov     bx, [ecx+2]
add     eax, ebx
mov     word ptr [esp+6Ch+var_26], ax
xor     edx, edx
mov     dx, [ecx+4]
mov     ebx, ebp
lea     eax, [esp+6Ch+var_30]
call    sub_42E629
mov     [esp+6Ch+var_10], eax
test    eax, eax
jnz     short loc_4334DF

loc_4334D7:
add     ecx, 8
dec     edi
jnz     short loc_433489
jmp     short loc_43347E

loc_4334DF:
cmp     [esp+6Ch+var_10], 0
jz      loc_4335A3
mov     ax, ds:word_77EA96
add     word ptr ds:dword_564A5A+2, ax
mov     ax, ds:word_77EA9C
add     word ptr ds:dword_564A5E+2, ax
mov     ax, ds:word_77EA92
add     word ptr ds:dword_564A5E, ax
mov     ax, ds:word_77EA94
mov     ds:word_77EA96, ax
mov     ax, ds:word_77EA98
mov     ds:word_77EA92, ax
mov     ax, ds:word_77EA9A
mov     ds:word_77EA9C, ax
mov     ax, ds:word_77EA8C
mov     ds:word_77EA8E, ax
mov     ax, ds:word_77EA90
mov     ds:word_77EA8A, ax
mov     ax, ds:word_77EA86
mov     ds:word_77EA88, ax
xor     esi, esi
mov     ds:word_77EA94, si
mov     ds:word_77EA98, si
mov     ds:word_77EA9A, si
mov     ds:word_77EA8C, si
mov     ds:word_77EA90, si
mov     ds:word_77EA86, si
mov     eax, [esp+6Ch+var_14]
lea     ecx, [eax+1]
mov     [esp+6Ch+var_14], ecx
cmp     eax, 8
jl      loc_4333B3
mov     eax, 80000000h
jmp     loc_433754

loc_4335A3:
mov     eax, [esp+6Ch+var_26]
sar     eax, 10h
mov     esi, ds:dword_564A5A
sar     esi, 10h
sub     eax, esi
mov     esi, eax
mov     eax, [esp+6Ch+var_22]
sar     eax, 10h
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     ecx, [esp+6Ch+var_26+2]
sar     ecx, 10h
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     ecx, eax
mov     eax, ecx
test    esi, esi
jnz     short loc_4335EE
test    edx, edx
jnz     short loc_4335EE
test    ecx, ecx
jz      loc_43371F

loc_4335EE:
test    esi, esi
jge     short loc_4335F8
mov     ecx, esi
neg     ecx
jmp     short loc_4335FA

loc_4335F8:
mov     ecx, esi

loc_4335FA:
test    edx, edx
jge     short loc_433604
mov     edi, edx
neg     edi
jmp     short loc_433606

loc_433604:
mov     edi, edx

loc_433606:
cmp     ecx, edi
jle     short loc_433643
test    esi, esi
jge     short loc_433614
mov     ecx, esi
neg     ecx
jmp     short loc_433616

loc_433614:
mov     ecx, esi

loc_433616:
test    eax, eax
jge     short loc_433620
mov     edi, eax
neg     edi
jmp     short loc_433622

loc_433620:
mov     edi, eax

loc_433622:
cmp     ecx, edi
jle     short loc_433638
test    esi, esi
jle     short loc_433631
mov     ecx, 1
jmp     short loc_43367A

loc_433631:
mov     ecx, 2
jmp     short loc_43367A

loc_433638:
test    eax, eax
jle     short loc_433675

loc_43363C:
mov     ecx, 5
jmp     short loc_43367A

loc_433643:
test    edx, edx
jge     short loc_43364D
mov     edi, edx
neg     edi
jmp     short loc_43364F

loc_43364D:
mov     edi, edx

loc_43364F:
test    eax, eax
jge     short loc_433659
mov     ecx, eax
neg     ecx
jmp     short loc_43365B

loc_433659:
mov     ecx, eax

loc_43365B:
cmp     edi, ecx
jle     short loc_433671
test    edx, edx
jle     short loc_43366A
mov     ecx, 3
jmp     short loc_43367A

loc_43366A:
mov     ecx, 4
jmp     short loc_43367A

loc_433671:
test    eax, eax
jg      short loc_43363C

loc_433675:
mov     ecx, 6

loc_43367A:
test    esi, esi
jz      short loc_4336B1
jle     short loc_433687
mov     edi, 1
jmp     short loc_433689

loc_433687:
xor     edi, edi

loc_433689:
neg     edi
shl     edi, 2
mov     ebp, ds:dword_564A5A
sar     ebp, 10h
add     edi, 2
add     edi, ebp
shl     edi, 10h
mov     ebp, [esp+6Ch+var_6C]
mov     [ebp+0], edi
test    esi, esi
jle     short loc_4336AE
or      ch, 1
jmp     short loc_4336B1

loc_4336AE:
or      ch, 2

loc_4336B1:
test    edx, edx
jz      short loc_4336E8
jle     short loc_4336BE
mov     esi, 1
jmp     short loc_4336C0

loc_4336BE:
xor     esi, esi

loc_4336C0:
neg     esi
shl     esi, 2
mov     edi, ds:dword_564A5E
sar     edi, 10h
add     esi, 2
add     esi, edi
shl     esi, 10h
mov     edi, [esp+6Ch+var_6C]
mov     [edi+8], esi
test    edx, edx
jle     short loc_4336E5
or      ch, 4
jmp     short loc_4336E8

loc_4336E5:
or      ch, 8

loc_4336E8:
test    eax, eax
jz      short loc_43371F
jle     short loc_4336F5
mov     edx, 1
jmp     short loc_4336F7

loc_4336F5:
xor     edx, edx

loc_4336F7:
neg     edx
shl     edx, 2
mov     esi, ds:dword_564A5A+2
sar     esi, 10h
add     edx, 2
add     edx, esi
shl     edx, 10h
mov     esi, [esp+6Ch+var_6C]
mov     [esi+4], edx
test    eax, eax
jle     short loc_43371C
or      ch, 10h
jmp     short loc_43371F

loc_43371C:             ; int
or      ch, 20h

loc_43371F:
cmp     [esp+6Ch+arg_0], 0
jnz     short loc_433752
neg     [esp+6Ch+var_1C]
neg     [esp+6Ch+var_1A]
neg     [esp+6Ch+var_18]
lea     edx, [esp+6Ch+var_60]
lea     eax, [esp+6Ch+var_1C]
call    sub_4EF638
mov     ebx, [esp+6Ch+var_68]
mov     edx, [esp+6Ch+var_6C]
lea     eax, [esp+6Ch+var_60]
call    sub_4DD5E6

loc_433752:
mov     eax, ecx

loc_433754:
add     esp, 60h
jmp     loc_432EA5
sub_43329B endp




sub_43375C proc near

var_54= dword ptr -54h
var_50= dword ptr -50h
var_4C= dword ptr -4Ch
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 70h
mov     ebp, eax
mov     ecx, edx        ; int
cmp     byte ptr [edx+1], 80h
jnb     loc_433874
lea     edi, [esp+84h+var_54]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [esp+84h+var_44]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [esp+84h+var_34]
lea     esi, [ecx+34h]
movsd
movsd
movsd
movsd
test    word ptr [edx+54h], 0FFFh
jnz     short loc_4337A7
test    word ptr [ecx+56h], 0FFFh
jz      loc_43382A

loc_4337A7:
mov     ax, [ecx+5Ch]
mov     [esp+84h+var_1C], ax
mov     esi, eax
neg     esi
mov     [esp+84h+var_1C], si
mov     ax, [ecx+5Eh]
mov     [esp+84h+var_1A], ax
mov     edi, eax
neg     edi
mov     [esp+84h+var_1A], di
mov     ax, [ecx+60h]
mov     [esp+84h+var_18], ax
neg     eax
mov     [esp+84h+var_18], ax
mov     edx, esp
lea     eax, [esp+84h+var_1C]
call    sub_4EF5F7
lea     ebx, [esp+84h+var_34]
lea     edx, [esp+84h+var_54]
mov     eax, esp
call    sub_4DD5E6
mov     ax, [ecx+54h]
mov     [esp+84h+var_24], ax
mov     ax, [ecx+56h]
mov     [esp+84h+var_22], ax
mov     ax, [ecx+58h]
mov     [esp+84h+var_20], ax
mov     edx, esp
lea     eax, [esp+84h+var_24]
call    sub_4EF638
lea     ebx, [esp+84h+var_34]
lea     edx, [esp+84h+var_54]
mov     eax, esp
call    sub_4DD5E6

loc_43382A:
mov     eax, [esp+84h+var_54]
add     eax, [esp+84h+var_44]
mov     ebx, [esp+84h+var_34]
sub     eax, ebx
mov     [ebp+1Ch], eax
mov     eax, [esp+84h+var_50]
add     eax, [esp+84h+var_40]
mov     edi, [esp+84h+var_30]
sub     eax, edi
mov     [ebp+20h], eax
mov     eax, [esp+84h+var_4C]
add     eax, [esp+84h+var_3C]
mov     ebx, [esp+84h+var_2C]
sub     eax, ebx
mov     [ebp+24h], eax
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B
mov     ax, [ecx+56h]
sub     ax, [ecx+5Eh]
add     [ebp+56h], ax

loc_433874:
add     esp, 70h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_43375C endp




sub_43387D proc near

var_54= dword ptr -54h
var_50= dword ptr -50h
var_4C= dword ptr -4Ch
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 70h
mov     ebp, eax
mov     ecx, edx        ; int
cmp     byte ptr [edx+1], 80h
jnb     short loc_433874
lea     edi, [esp+84h+var_54]
lea     esi, [ebp+528h]
movsd
movsd
movsd
movsd
lea     edi, [esp+84h+var_44]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [esp+84h+var_34]
lea     esi, [ecx+34h]
movsd
movsd
movsd
movsd
test    word ptr [edx+54h], 0FFFh
jnz     short loc_4338C7
test    word ptr [ecx+56h], 0FFFh
jz      loc_43394A

loc_4338C7:
mov     ax, [ecx+5Ch]
mov     [esp+84h+var_1C], ax
mov     esi, eax
neg     esi
mov     [esp+84h+var_1C], si
mov     ax, [ecx+5Eh]
mov     [esp+84h+var_1A], ax
mov     edi, eax
neg     edi
mov     [esp+84h+var_1A], di
mov     ax, [ecx+60h]
mov     [esp+84h+var_18], ax
neg     eax
mov     [esp+84h+var_18], ax
mov     edx, esp
lea     eax, [esp+84h+var_1C]
call    sub_4EF5F7
lea     ebx, [esp+84h+var_34]
lea     edx, [esp+84h+var_54]
mov     eax, esp
call    sub_4DD5E6
mov     ax, [ecx+54h]
mov     [esp+84h+var_24], ax
mov     ax, [ecx+56h]
mov     [esp+84h+var_22], ax
mov     ax, [ecx+58h]
mov     [esp+84h+var_20], ax
mov     edx, esp
lea     eax, [esp+84h+var_24]
call    sub_4EF638
lea     ebx, [esp+84h+var_34]
lea     edx, [esp+84h+var_54]
mov     eax, esp
call    sub_4DD5E6

loc_43394A:
mov     eax, [esp+84h+var_54]
add     eax, [esp+84h+var_44]
mov     ebx, [esp+84h+var_34]
sub     eax, ebx
mov     [ebp+528h], eax
mov     eax, [esp+84h+var_50]
add     eax, [esp+84h+var_40]
mov     edi, [esp+84h+var_30]
sub     eax, edi
mov     [ebp+52Ch], eax
mov     eax, [esp+84h+var_4C]
add     eax, [esp+84h+var_3C]
mov     ebx, [esp+84h+var_2C]
sub     eax, ebx
mov     [ebp+530h], eax
lea     edx, [ebp+538h]
lea     eax, [ebp+528h]
call    sub_4DD57B
mov     ax, [ecx+56h]
sub     ax, [ecx+5Eh]
add     [ebp+542h], ax
jmp     loc_433874
sub_43387D endp




sub_4339AB proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= dword ptr -1Ch
var_18= word ptr -18h
var_14= dword ptr -14h
var_10= word ptr -10h
arg_0= dword ptr  4
arg_4= dword ptr  8

push    esi
push    edi
push    ebp
sub     esp, 50h
mov     esi, eax
mov     ebp, ebx
mov     eax, ecx
mov     ecx, [esp+5Ch+arg_4] ; int
mov     edx, [ebx]
sub     edx, [eax]
add     [ecx], edx
mov     edx, [ebp+4]
sub     edx, [eax+4]
add     [ecx+4], edx
mov     edx, [ebp+8]
sub     edx, [eax+8]
add     [ecx+8], edx
test    word ptr [esi+54h], 0FFFh
jnz     short loc_4339E7
test    word ptr [esi+56h], 0FFFh
jz      loc_433AD1

loc_4339E7:
mov     ax, [esi+5Ch]
neg     eax
and     ah, 0Fh
mov     word ptr [esp+5Ch+var_1C], ax
mov     ax, [esi+5Eh]
neg     eax
and     ah, 0Fh
mov     word ptr [esp+5Ch+var_1C+2], ax
mov     ax, [esi+60h]
neg     eax
and     ah, 0Fh
mov     [esp+5Ch+var_18], ax
mov     ax, [esi+54h]
and     ah, 0Fh
mov     word ptr [esp+5Ch+var_14], ax
mov     ax, [esi+56h]
and     ah, 0Fh
mov     word ptr [esp+5Ch+var_14+2], ax
mov     ax, [esi+58h]
and     ah, 0Fh
mov     [esp+5Ch+var_10], ax
mov     eax, [esp+46h]
sar     eax, 10h
neg     eax
mov     edx, [esp+3Eh]
sar     edx, 10h
cmp     edx, eax
jnz     short loc_433A71
mov     eax, [esp+5Ch+var_14]
sar     eax, 10h
neg     eax
mov     edx, [esp+5Ch+var_1C]
sar     edx, 10h
cmp     edx, eax
jnz     short loc_433A71
mov     eax, [esp+5Ch+var_14+2]
sar     eax, 10h
neg     eax
mov     edx, [esp+5Ch+var_1C+2]
sar     edx, 10h
cmp     edx, eax
jz      short loc_433AD1

loc_433A71:
lea     edi, [esp+5Ch+var_2C]
mov     esi, [esp+5Ch+arg_0]
movsd
movsd
movsd
movsd
mov     edx, esp
lea     eax, [esp+5Ch+var_1C]
call    sub_4EF5F7
mov     ebx, ebp
lea     edx, [esp+5Ch+var_2C]
mov     eax, esp
call    sub_4DD5E6
mov     edx, esp
lea     eax, [esp+5Ch+var_14]
call    sub_4EF638
mov     ebx, ebp
lea     edx, [esp+5Ch+var_2C]
mov     eax, esp
call    sub_4DD5E6
mov     eax, [esp+5Ch+var_2C]
mov     edx, [esp+5Ch+arg_0]
sub     eax, [edx]
add     [ecx], eax
mov     eax, [esp+5Ch+var_28]
mov     edx, [esp+5Ch+arg_0]
sub     eax, [edx+4]
add     [ecx+4], eax
mov     eax, [esp+5Ch+var_24]
sub     eax, [edx+8]
add     [ecx+8], eax

loc_433AD1:
add     esp, 50h
jmp     loc_432EA5
sub_4339AB endp




sub_433AD9 proc near
push    esi
push    edi
test    ecx, ecx
jge     short loc_433AF4
mov     edi, edx
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
mov     edi, ebx
lea     esi, [eax+34h]
movsd
movsd
movsd
movsd
pop     edi
pop     esi
retn

loc_433AF4:
mov     esi, [eax+ecx*8+18Eh]
sar     esi, 10h
shl     esi, 10h
mov     [edx], esi
mov     esi, [eax+ecx*8+190h]
sar     esi, 10h
shl     esi, 10h
mov     [edx+4], esi
mov     ecx, [eax+ecx*8+192h]
sar     ecx, 10h
shl     ecx, 10h
mov     [edx+8], ecx
mov     ecx, [edx]
mov     esi, [eax+1Ch]
sub     ecx, esi
mov     esi, ecx
mov     ecx, [eax+34h]
add     ecx, esi
mov     [ebx], ecx
mov     esi, [edx+4]
sub     esi, [eax+20h]
mov     ecx, [eax+38h]
add     ecx, esi
mov     [ebx+4], ecx
mov     edx, [edx+8]
sub     edx, [eax+24h]
mov     eax, [eax+3Ch]
add     eax, edx
mov     [ebx+8], eax
pop     edi
pop     esi
retn
sub_433AD9 endp




sub_433B52 proc near

var_28= word ptr -28h
var_24= word ptr -24h
var_22= word ptr -22h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
xor     edx, edx
mov     ds:dword_77E70C, edx
mov     eax, offset dword_56F174
call    sub_4EFB5A
xor     eax, eax
mov     al, ds:byte_77EAC5
mov     [esp+28h+var_1C], eax
movzx   ebp, ds:byte_77EAC4
movzx   edi, ds:byte_77EAC3
xor     eax, eax
mov     al, ds:byte_77EAC2
mov     [esp+28h+var_20], eax
mov     [esp+28h+var_22], 320h

loc_433B98:
cmp     edi, [esp+28h+var_20]
jge     loc_433C12
mov     eax, edi
shl     eax, 9
sub     eax, 7F00h
mov     [esp+28h+var_24], ax
mov     esi, [esp+28h+var_1C]

loc_433BB6:
cmp     esi, ebp
jge     short loc_433C0F
mov     eax, esi
shl     eax, 9
sub     eax, 7F00h
mov     [esp+28h+var_28], ax
xor     ecx, ecx
mov     cl, ds:byte_77EAC5
mov     eax, esi
sub     eax, ecx
add     eax, eax
add     eax, ds:dword_77E700
xor     ecx, ecx
mov     cl, ds:byte_77EAC3
mov     ebx, edi
sub     ebx, ecx
xor     ecx, ecx
mov     cx, ds:word_77EAAE
imul    ecx, ebx
add     ecx, ecx
lea     ebx, [eax+ecx]
movsx   ebx, word ptr [ebx]
test    ebx, ebx
jz      short loc_433C0C
mov     ecx, esp
mov     edx, edi
mov     eax, esi
call    sub_4344F0

loc_433C0C:
inc     esi
jmp     short loc_433BB6

loc_433C0F:
inc     edi
jmp     short loc_433B98

loc_433C12:
mov     edx, offset dword_7055AC
mov     eax, offset dword_70E0AC
call    sub_4EEE1C
call    sub_434C5D
add     esp, 10h

loc_433C29:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_433B52 endp




sub_433C30 proc near

var_2C= word ptr -2Ch
var_28= word ptr -28h
var_26= word ptr -26h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
xor     edx, edx
mov     ds:dword_77E70C, edx
mov     eax, offset dword_56F174
call    sub_4EFB5A
test    ds:byte_77EAC0, 4
jz      short loc_433C6D
mov     dl, ds:byte_77EABF
cmp     dl, 3
jnb     short loc_433C6D
xor     eax, eax
mov     al, dl
mov     ax, ds:word_51176C[eax*4]
jmp     short loc_433C7C

loc_433C6D:
xor     eax, eax
mov     al, ds:byte_77EABF
mov     ax, ds:word_511760[eax*4]

loc_433C7C:
mov     word ptr ds:dword_77EAA8, ax
mov     eax, ds:dword_77EA06+2
sar     eax, 10h
call    sub_4EF008
mov     ebx, eax
mov     ecx, eax
mov     eax, ds:dword_77EA06+2
sar     eax, 10h
call    sub_4EF003
mov     esi, eax
cmp     ebx, 1000h
jnz     short loc_433CAF
lea     ecx, [ebx-1]
jmp     short loc_433CBA

loc_433CAF:
cmp     ebx, 0FFFFF000h
jnz     short loc_433CBA
lea     ecx, [ebx+1]

loc_433CBA:
cmp     esi, 1000h
jnz     short loc_433CC5
dec     esi
jmp     short loc_433CCE

loc_433CC5:
cmp     esi, 0FFFFF000h
jnz     short loc_433CCE
inc     esi

loc_433CCE:
mov     eax, ds:dword_77EA06
sar     eax, 10h
call    sub_4EF003
test    eax, eax
jge     short loc_433CF0
mov     eax, ds:dword_77EA06
sar     eax, 10h
call    sub_4EF003
neg     eax
jmp     short loc_433CFD

loc_433CF0:
mov     eax, ds:dword_77EA06
sar     eax, 10h
call    sub_4EF003

loc_433CFD:
lea     ebx, [eax+eax]
mov     edx, ecx
imul    edx, ebx
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ch
sbb     eax, edx
sar     eax, 0Ch
mov     edx, ds:dword_56F182
sar     edx, 10h
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 9
sbb     eax, edx
sar     eax, 9
lea     ecx, [eax+40h]
mov     edx, esi
imul    edx, ebx
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ch
sbb     eax, edx
sar     eax, 0Ch
mov     edx, ds:dword_56F186
sar     edx, 10h
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 9
sbb     eax, edx
sar     eax, 9
lea     esi, [eax+40h]
mov     eax, ds:dword_77EA06
sar     eax, 10h
call    sub_4EF003
test    eax, eax
jge     short loc_433D7C
mov     eax, ds:dword_77EA06
sar     eax, 10h
call    sub_4EF003
neg     eax
jmp     short loc_433D89

loc_433D7C:
mov     eax, ds:dword_77EA06
sar     eax, 10h
call    sub_4EF003

loc_433D89:
shl     eax, 4
mov     edx, eax
sar     edx, 1Fh
shl     edx, 0Ch
sbb     eax, edx
sar     eax, 0Ch
mov     ebx, eax
mov     eax, ecx
sub     eax, ebx
mov     [esp+2Ch+var_1C], eax
xor     eax, eax
mov     al, ds:byte_77EAC5
cmp     eax, [esp+2Ch+var_1C]
jle     short loc_433DB4
mov     [esp+2Ch+var_1C], eax

loc_433DB4:
lea     ebp, [ecx+ebx]
xor     eax, eax
mov     al, ds:byte_77EAC4
cmp     ebp, eax
jle     short loc_433DC4
mov     ebp, eax

loc_433DC4:
mov     edi, esi
sub     edi, ebx
xor     eax, eax
mov     al, ds:byte_77EAC3
cmp     edi, eax
jge     short loc_433DD5
mov     edi, eax

loc_433DD5:
add     esi, ebx
mov     [esp+2Ch+var_24], esi
xor     eax, eax
mov     al, ds:byte_77EAC2
cmp     eax, esi
jge     short loc_433DEA
mov     [esp+2Ch+var_24], eax

loc_433DEA:
mov     eax, ds:dword_77EA06
sar     eax, 10h
call    sub_4EF008
mov     edx, eax
shl     edx, 4
mov     ecx, 1600h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
test    eax, eax
jge     short loc_433E27
mov     eax, ds:dword_77EA06
sar     eax, 10h
call    sub_4EF008
shl     eax, 4
mov     edx, eax
sar     edx, 1Fh
idiv    ecx
neg     eax
jmp     short loc_433E3E

loc_433E27:
mov     eax, ds:dword_77EA06
sar     eax, 10h
call    sub_4EF008
shl     eax, 4
mov     edx, eax
sar     edx, 1Fh
idiv    ecx

loc_433E3E:
mov     ecx, eax
mov     edx, ds:dword_77E998
add     edx, 100h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 9
sbb     eax, edx
sar     eax, 9
mov     ebx, eax
sub     eax, ecx
add     eax, 3Dh ; '='
mov     word ptr ds:dword_77EA9E+2, ax
mov     edx, ds:dword_77EA9E
sar     edx, 10h
xor     eax, eax
mov     al, ds:byte_77EAC5
cmp     edx, eax
jge     short loc_433E89
xor     eax, eax
mov     al, ds:byte_77EAC5
mov     word ptr ds:dword_77EA9E+2, ax

loc_433E89:
add     ebx, ecx
add     ebx, 43h ; 'C'
mov     word ptr ds:dword_77EAA2, bx
mov     edx, ds:dword_77EA9E+2
sar     edx, 10h
xor     eax, eax
mov     al, ds:byte_77EAC4
cmp     edx, eax
jle     short loc_433EB6
xor     eax, eax
mov     al, ds:byte_77EAC4
mov     word ptr ds:dword_77EAA2, ax

loc_433EB6:
mov     edx, ds:dword_77E9A0
add     edx, 100h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 9
sbb     eax, edx
sar     eax, 9
mov     ebx, eax
sub     eax, ecx
add     eax, 3Dh ; '='
mov     word ptr ds:dword_77EAA2+2, ax
mov     edx, ds:dword_77EAA2
sar     edx, 10h
xor     eax, eax
mov     al, ds:byte_77EAC3
cmp     edx, eax
jge     short loc_433EFF
xor     eax, eax
mov     al, ds:byte_77EAC3
mov     word ptr ds:dword_77EAA2+2, ax

loc_433EFF:
add     ebx, ecx
add     ebx, 43h ; 'C'
mov     ds:word_77EAA6, bx
mov     edx, ds:dword_77EAA2+2
sar     edx, 10h
xor     eax, eax
mov     al, ds:byte_77EAC2
cmp     edx, eax
jle     short loc_433F2C
xor     eax, eax
mov     al, ds:byte_77EAC2
mov     ds:word_77EAA6, ax

loc_433F2C:
mov     eax, ds:dword_77EA06+2
sar     eax, 10h
lea     edx, [eax-100h]
and     edx, 0FFFh
lea     ecx, [eax+100h]
and     ecx, 0FFFh
mov     eax, edx
call    sub_4EF008
lea     esi, [eax+1]
mov     eax, ecx
call    sub_4EF008
lea     ebx, [eax+1]
mov     eax, edx
call    sub_4EF003
inc     eax
mov     [esp+2Ch+var_20], eax
mov     eax, ecx
call    sub_4EF003
lea     ecx, [eax+1]
mov     eax, ds:dword_77EA06+2
sar     eax, 10h
sub     eax, 200h
test    ah, 4
jnz     short loc_433FC5
mov     edx, [esp+2Ch+var_20]
shl     edx, 0Ch
neg     esi
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     ds:word_77EAAC, ax
mov     edx, ecx
shl     edx, 0Ch
neg     ebx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     word ptr ds:dword_77EAA8+2, ax
mov     ecx, [esp+2Ch+var_24]
mov     ebx, edi
mov     edx, ebp
mov     eax, [esp+2Ch+var_1C]
call    sub_4340C4
jmp     short loc_434002

loc_433FC5:
mov     edx, esi
shl     edx, 0Ch
mov     esi, [esp+2Ch+var_20]
neg     esi
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     ds:word_77EAAC, ax
mov     edx, ebx
shl     edx, 0Ch
neg     ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     word ptr ds:dword_77EAA8+2, ax
mov     ecx, [esp+2Ch+var_24]
mov     ebx, edi
mov     edx, ebp
mov     eax, [esp+2Ch+var_1C]
call    sub_4342E7

loc_434002:
mov     eax, ds:dword_77EA9E
sar     eax, 10h
mov     [esp+2Ch+var_1C], eax
mov     ebp, ds:dword_77EA9E+2
sar     ebp, 10h
mov     edi, ds:dword_77EAA2
sar     edi, 10h
mov     eax, ds:dword_77EAA2+2
sar     eax, 10h
mov     [esp+2Ch+var_24], eax
mov     [esp+2Ch+var_26], 258h

loc_434033:
cmp     edi, [esp+2Ch+var_24]
jge     short loc_4340A8
mov     eax, edi
shl     eax, 9
sub     eax, 7F00h
mov     [esp+2Ch+var_28], ax
mov     esi, [esp+2Ch+var_1C]

loc_43404D:
cmp     esi, ebp
jge     short loc_4340A5
mov     ebx, esi
shl     ebx, 9
sub     ebx, 7F00h
mov     [esp+2Ch+var_2C], bx
xor     ecx, ecx
mov     cl, ds:byte_77EAC5
mov     eax, esi
sub     eax, ecx
lea     ecx, [eax+eax]
mov     ebx, ds:dword_77E700
add     ebx, ecx
xor     ecx, ecx
mov     cl, ds:byte_77EAC3
mov     eax, edi
sub     eax, ecx
xor     ecx, ecx
mov     cx, ds:word_77EAAE
imul    ecx, eax
movsx   ebx, word ptr [ebx+ecx*2]
test    ebx, ebx
jz      short loc_4340A2
mov     ecx, esp
mov     edx, edi
mov     eax, esi
call    sub_4344F0

loc_4340A2:
inc     esi
jmp     short loc_43404D

loc_4340A5:
inc     edi
jmp     short loc_434033

loc_4340A8:
mov     edx, offset dword_7055AC
mov     eax, offset dword_70E0AC
call    sub_4EEE1C
call    sub_434C5D
add     esp, 14h
jmp     loc_433C29
sub_433C30 endp




sub_4340C4 proc near

var_3C= word ptr -3Ch
var_38= word ptr -38h
var_36= word ptr -36h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 30h
mov     esi, eax
mov     [esp+3Ch+var_2C], edx
mov     [esp+3Ch+var_18], ebx
mov     [esp+3Ch+var_1C], ecx
mov     eax, ds:dword_77EA06+2
sar     eax, 10h
sub     eax, 200h
test    ah, 8
jz      short loc_434125
mov     eax, ds:dword_77EAA8+2
sar     eax, 10h
mov     [esp+3Ch+var_28], eax
mov     eax, ds:dword_77EAA8
sar     eax, 10h
mov     [esp+3Ch+var_24], eax
mov     edx, ds:dword_56F182
sar     edx, 10h
add     edx, 100h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 9
sbb     eax, edx
sar     eax, 9
sub     eax, esi
add     eax, 41h ; 'A'
jmp     short loc_43415E

loc_434125:
mov     eax, ds:dword_77EAA8
sar     eax, 10h
mov     [esp+3Ch+var_28], eax
mov     eax, ds:dword_77EAA8+2
sar     eax, 10h
mov     [esp+3Ch+var_24], eax
mov     edx, ds:dword_56F182
sar     edx, 10h
add     edx, 100h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 9
sbb     eax, edx
sar     eax, 9
sub     eax, esi
add     eax, 3Eh ; '>'

loc_43415E:
mov     [esp+3Ch+var_34], eax
mov     edx, ds:dword_56F186
sar     edx, 10h
add     edx, 100h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 9
sbb     eax, edx
sar     eax, 9
mov     [esp+3Ch+var_20], eax
mov     [esp+3Ch+var_36], 190h
mov     [esp+3Ch+var_10], esi

loc_43418D:
mov     eax, [esp+3Ch+var_10]
cmp     eax, [esp+3Ch+var_2C]
jge     loc_4342E0
mov     edx, [esp+3Ch+var_34]
mov     ecx, [esp+3Ch+var_28]
imul    edx, ecx
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ch
sbb     eax, edx
sar     eax, 0Ch
mov     ebx, [esp+3Ch+var_20]
add     eax, ebx
lea     esi, [eax+3Dh]
mov     edx, [esp+3Ch+var_34]
mov     edi, [esp+3Ch+var_24]
imul    edx, edi
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ch
sbb     eax, edx
sar     eax, 0Ch
add     eax, ebx
lea     ebp, [eax+42h]
mov     eax, [esp+3Ch+var_18]
cmp     esi, eax
jge     short loc_4341E5
mov     esi, eax
jmp     short loc_4341EF

loc_4341E5:
mov     edx, [esp+3Ch+var_1C]
cmp     esi, edx
jle     short loc_4341EF
mov     esi, edx

loc_4341EF:
mov     ecx, [esp+3Ch+var_18]
cmp     ebp, ecx
jge     short loc_4341FB
mov     ebp, ecx
jmp     short loc_434205

loc_4341FB:
mov     ebx, [esp+3Ch+var_1C]
cmp     ebp, ebx
jle     short loc_434205
mov     ebp, ebx

loc_434205:
mov     eax, ds:dword_77EA9E
sar     eax, 10h
mov     edi, [esp+3Ch+var_10]
cmp     eax, edi
jg      short loc_43422B
mov     eax, ds:dword_77EA9E+2
sar     eax, 10h
cmp     eax, edi
jle     short loc_43422B
mov     [esp+3Ch+var_14], 1
jmp     short loc_434231

loc_43422B:
xor     ecx, ecx
mov     [esp+3Ch+var_14], ecx

loc_434231:
mov     eax, [esp+3Ch+var_10]
shl     eax, 9
sub     eax, 7F00h
mov     [esp+3Ch+var_3C], ax
movzx   edi, ds:byte_77EAC5
mov     eax, [esp+3Ch+var_10]
sub     eax, edi
mov     edi, eax
xor     eax, eax
mov     al, ds:byte_77EAC3
mov     edx, esi
sub     edx, eax
mov     eax, edx
xor     edx, edx
mov     dx, ds:word_77EAAE
imul    eax, edx
mov     [esp+3Ch+var_30], eax

loc_43426E:
cmp     esi, ebp
jge     short loc_4342D3
cmp     [esp+3Ch+var_14], 0
jz      short loc_434293
mov     ecx, ds:dword_77EAA2
sar     ecx, 10h
cmp     esi, ecx
jl      short loc_434293
mov     ecx, ds:dword_77EAA2+2
sar     ecx, 10h
cmp     esi, ecx
jl      short loc_4342C5

loc_434293:
mov     ebx, esi
shl     ebx, 9
sub     ebx, 7F00h
mov     [esp+3Ch+var_38], bx
lea     ecx, [edi+edi]
add     ecx, ds:dword_77E700
mov     ebx, [esp+3Ch+var_30]
movsx   ebx, word ptr [ecx+ebx*2]
test    ebx, ebx
jz      short loc_4342C5
mov     ecx, esp
mov     edx, esi
mov     eax, [esp+3Ch+var_10]
call    sub_4344F0

loc_4342C5:
xor     ecx, ecx
mov     cx, ds:word_77EAAE
inc     esi
add     edi, ecx
jmp     short loc_43426E

loc_4342D3:
inc     [esp+3Ch+var_10]
dec     [esp+3Ch+var_34]
jmp     loc_43418D

loc_4342E0:
add     esp, 30h
pop     ebp
pop     edi
pop     esi
retn
sub_4340C4 endp




sub_4342E7 proc near

var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= word ptr -30h
var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 24h
push    eax
push    edx
push    ecx
mov     eax, ds:dword_77EA06+2
sar     eax, 10h
sub     eax, 200h
test    ah, 8
jz      short loc_43433D
mov     eax, ds:dword_77EAA8+2
sar     eax, 10h
mov     [esp+3Ch+var_24], eax
mov     eax, ds:dword_77EAA8
sar     eax, 10h
mov     [esp+3Ch+var_20], eax
mov     edx, ds:dword_56F186
sar     edx, 10h
add     edx, 100h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 9
sbb     eax, edx
sar     eax, 9
sub     eax, ebx
add     eax, 3Eh ; '>'
jmp     short loc_434376

loc_43433D:
mov     eax, ds:dword_77EAA8
sar     eax, 10h
mov     [esp+3Ch+var_24], eax
mov     eax, ds:dword_77EAA8+2
sar     eax, 10h
mov     [esp+3Ch+var_20], eax
mov     edx, ds:dword_56F186
sar     edx, 10h
add     edx, 100h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 9
sbb     eax, edx
sar     eax, 9
sub     eax, ebx
add     eax, 41h ; 'A'

loc_434376:
mov     [esp+3Ch+var_18], eax
mov     edx, ds:dword_56F182
sar     edx, 10h
add     edx, 100h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 9
sbb     eax, edx
sar     eax, 9
mov     [esp+3Ch+var_1C], eax
mov     [esp+3Ch+var_2A], 190h
mov     [esp+3Ch+var_10], ebx

loc_4343A5:
mov     eax, [esp+3Ch+var_10]
cmp     eax, [esp+3Ch+var_3C]
jge     loc_4342E0
mov     edx, [esp+3Ch+var_18]
mov     ecx, [esp+3Ch+var_24]
imul    edx, ecx
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ch
sbb     eax, edx
sar     eax, 0Ch
mov     ebx, [esp+3Ch+var_1C]
add     eax, ebx
lea     esi, [eax+3Dh]
mov     edx, [esp+3Ch+var_18]
mov     edi, [esp+3Ch+var_20]
imul    edx, edi
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ch
sbb     eax, edx
sar     eax, 0Ch
add     eax, ebx
lea     ebp, [eax+42h]
mov     eax, [esp+3Ch+var_34]
cmp     esi, eax
jge     short loc_4343FC
mov     esi, eax
jmp     short loc_434406

loc_4343FC:
mov     edx, [esp+3Ch+var_38]
cmp     esi, edx
jle     short loc_434406
mov     esi, edx

loc_434406:
mov     ecx, [esp+3Ch+var_34]
cmp     ebp, ecx
jge     short loc_434412
mov     ebp, ecx
jmp     short loc_43441C

loc_434412:
mov     ebx, [esp+3Ch+var_38]
cmp     ebp, ebx
jle     short loc_43441C
mov     ebp, ebx

loc_43441C:
mov     eax, ds:dword_77EAA2
sar     eax, 10h
mov     edi, [esp+3Ch+var_10]
cmp     eax, edi
jg      short loc_434442
mov     eax, ds:dword_77EAA2+2
sar     eax, 10h
cmp     eax, edi
jle     short loc_434442
mov     [esp+3Ch+var_14], 1
jmp     short loc_434448

loc_434442:
xor     ecx, ecx
mov     [esp+3Ch+var_14], ecx

loc_434448:
mov     eax, [esp+3Ch+var_10]
shl     eax, 9
sub     eax, 7F00h
mov     [esp+3Ch+var_2C], ax
movzx   edi, ds:byte_77EAC5
mov     eax, esi
sub     eax, edi
mov     edi, eax
xor     eax, eax
mov     al, ds:byte_77EAC3
mov     edx, [esp+3Ch+var_10]
sub     edx, eax
mov     eax, edx
xor     edx, edx
mov     dx, ds:word_77EAAE
imul    eax, edx
mov     [esp+3Ch+var_28], eax

loc_434486:
cmp     esi, ebp
jge     short loc_4344E3
cmp     [esp+3Ch+var_14], 0
jz      short loc_4344AB
mov     ecx, ds:dword_77EA9E
sar     ecx, 10h
cmp     esi, ecx
jl      short loc_4344AB
mov     ecx, ds:dword_77EA9E+2
sar     ecx, 10h
cmp     esi, ecx
jl      short loc_4344DF

loc_4344AB:
mov     ebx, esi
shl     ebx, 9
sub     ebx, 7F00h
mov     [esp+3Ch+var_30], bx
lea     ecx, [edi+edi]
add     ecx, ds:dword_77E700
mov     ebx, [esp+3Ch+var_28]
movsx   ebx, word ptr [ecx+ebx*2]
test    ebx, ebx
jz      short loc_4344DF
lea     ecx, [esp+3Ch+var_30]
mov     edx, [esp+3Ch+var_10]
mov     eax, esi
call    sub_4344F0

loc_4344DF:
inc     esi
inc     edi
jmp     short loc_434486

loc_4344E3:
inc     [esp+3Ch+var_10]
dec     [esp+3Ch+var_18]
jmp     loc_4343A5
sub_4342E7 endp




sub_4344F0 proc near

var_18= dword ptr -18h
var_10= dword ptr -10h

push    esi
push    edi
sub     esp, 10h
mov     esi, eax
test    ebx, ebx
jle     short loc_43450C
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
mov     ax, word ptr ds:dword_6E40AE[eax*4]
jmp     short loc_434517

loc_43450C:
mov     eax, ebx
and     eax, 1F00h
shr     eax, 1
neg     eax

loc_434517:
mov     [ecx+2], ax
mov     eax, ecx
call    sub_4EFCE3
call    sub_4EFD7A
mov     eax, esp
call    sub_4EFFB8
mov     eax, [esp+18h+var_10]
sar     eax, 2
xor     edi, edi
mov     di, word ptr ds:dword_77EAA8
cmp     eax, edi
jge     loc_4345AD
test    eax, eax
jge     short loc_43454C
xor     eax, eax

loc_43454C:
imul    eax, 6Ah ; 'j'
sar     eax, 6
mov     ecx, [ecx+4]
sar     ecx, 10h
add     eax, ecx
mov     ecx, eax
neg     ecx
mov     edi, [esp+18h+var_18]
cmp     ecx, edi
jg      short loc_4345AD
cmp     eax, edi
jl      short loc_4345AD
test    ebx, ebx
jge     short loc_43457C
and     ebx, 0FFFFh
mov     eax, esi
call    sub_4345B3
jmp     short loc_4345AD

loc_43457C:
xor     edx, edx
mov     dx, ds:word_77EAB4
mov     ecx, ebx
and     ecx, 1Fh
sar     ebx, 5
mov     eax, 80000000h
shr     eax, cl
mov     ecx, ebx
shl     ecx, 2
cmp     edx, [esp+18h+var_10]
jg      short loc_4345A7
or      ds:dword_70E0AC[ecx], eax
jmp     short loc_4345AD

loc_4345A7:
or      ds:dword_7055AC[ecx], eax

loc_4345AD:
add     esp, 10h
pop     edi
pop     esi
retn
sub_4344F0 endp




sub_4345B3 proc near

var_1C= dword ptr -1Ch
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax
mov     esi, edx
shl     eax, 9
sub     eax, 7F00h
mov     [esp+24h+var_14], ax
mov     eax, edx
shl     eax, 9
sub     eax, 7F00h
mov     [esp+24h+var_10], ax
mov     eax, ebx
xor     al, bl
and     ah, 1Fh
and     eax, 0FFFFh
sar     eax, 1
neg     eax
mov     [esp+24h+var_12], ax
lea     eax, [esp+24h+var_14]
call    sub_4EFCE3
call    sub_4EFD7A
xor     eax, eax
mov     ax, bx
shl     eax, 18h
cmp     eax, 80000000h
jb      short loc_434629
mov     eax, ebx
xor     ah, bh
and     al, 7Fh
mov     edx, eax
and     edx, 0FFFFh
sar     edx, 2
shl     edx, 3
mov     edx, ds:dword_6F20B0[edx]
jmp     short loc_43462E

loc_434629:
mov     edx, offset unk_6B87CC

loc_43462E:
mov     eax, esp
call    sub_4EFFB8
mov     eax, ebx
and     ah, 7Fh
mov     edi, [esp+24h+var_1C]
cmp     edi, 1C20h
jle     short loc_43464D
mov     edx, [edx+20h]

loc_434649:
mov     ebx, eax
jmp     short loc_434699

loc_43464D:
cmp     edi, 0AF0h
jle     short loc_43465A
mov     edx, [edx+1Ch]
jmp     short loc_434649

loc_43465A:
cmp     edi, 400h
jg      short loc_434696
cmp     ds:dword_77E70C, 80h
jnb     short loc_4346BF
mov     edx, ecx
shl     edx, 18h
shl     esi, 10h
or      edx, esi
xor     eax, eax
mov     ax, bx
or      edx, eax
mov     eax, ds:dword_77E70C
mov     ds:dword_56F58C[eax*4], edx
lea     ecx, [eax+1]
mov     ds:dword_77E70C, ecx
jmp     short loc_4346BF

loc_434696:
mov     edx, [edx+18h]

loc_434699:
mov     eax, offset dword_564CD8
call    sub_4EFB5A
and     ebx, 0FFFFh
lea     eax, [edx+8]
lea     edx, [esp+24h+var_14]
call    sub_4346C6
mov     eax, offset dword_56F174
call    sub_4EFB5A

loc_4346BF:
add     esp, 18h
pop     edi
pop     esi
pop     ecx
retn
sub_4345B3 endp




sub_4346C6 proc near

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
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 34h
push    ebx
mov     ebx, [eax]
mov     ecx, [eax+4]
mov     esi, ecx
shr     esi, 18h
mov     [esp+48h+var_1C], esi
mov     edi, ebx
shr     edi, 1Ch
movzx   esi, ds:byte_77EABF
add     edi, esi
mov     [esp+48h+var_14], edi
and     ecx, 0FFFFFFh
lea     esi, [ecx+4]
add     esi, offset unk_6B87CC
and     ebx, 0FFFFFFh
mov     ebp, offset unk_6B87CC
add     ebp, ebx
mov     ecx, [esp+48h+var_48]
shl     ecx, 18h
cmp     ecx, 80000000h
jb      short loc_43471D
mov     eax, [eax-4]
jmp     short loc_43474E

loc_43471D:
mov     eax, [esp+48h+var_48]
shr     eax, 2
and     eax, 1Fh
mov     ecx, ds:dword_564B34[eax*8]
mov     [esp+48h+var_28], ecx
mov     eax, ds:dword_564B38[eax*8]
mov     ds:dword_559948, eax
mov     eax, ecx
xor     ax, cx
or      al, 1Dh
and     ecx, 0FFh
mov     [esp+48h+var_28], ecx

loc_43474E:
mov     ecx, eax
xor     cx, ax
mov     ds:dword_55991C, ecx
shl     eax, 10h
or      eax, 4000000h
mov     ds:dword_559914, eax
movsx   ebx, word ptr [edx]
mov     cl, ds:byte_77EABF
shl     ebx, cl
mov     [esp+48h+var_30], ebx
mov     ebx, [edx]
sar     ebx, 10h
shl     ebx, cl
mov     [esp+48h+var_20], ebx
mov     edx, [edx+2]
sar     edx, 10h
shl     edx, cl
mov     [esp+48h+var_2C], edx
jmp     loc_434B74

loc_434791:
movsx   ax, byte ptr [esi]
mov     cl, byte ptr [esp+48h+var_14]
shl     eax, cl
mov     word ptr ds:dword_5598F2+2, ax
movsx   ax, byte ptr [esi+2]
shl     eax, cl
mov     ds:word_5598F8, ax
movsx   ax, byte ptr [esi+3]
shl     eax, cl
mov     word ptr ds:dword_5598FA+2, ax
movsx   ax, byte ptr [esi+5]
shl     eax, cl
mov     ds:word_559900, ax
movsx   ax, byte ptr [esi+6]
shl     eax, cl
mov     word ptr ds:dword_559902+2, ax
movsx   ax, byte ptr [esi+8]
shl     eax, cl
mov     word ptr ds:dword_559906+2, ax
movsx   ax, byte ptr [esi+9]
shl     eax, cl
mov     word ptr ds:dword_55990A+2, ax
movsx   ax, byte ptr [esi+0Bh]
shl     eax, cl
mov     word ptr ds:dword_55990E+2, ax

loc_4347FC:
test    byte ptr [esp+48h+var_48], 2
jz      short loc_434876
mov     eax, [esp+48h+var_30]
mov     cx, word ptr ds:dword_5598F2+2
sub     eax, ecx
mov     word ptr ds:dword_5598F2+2, ax
mov     eax, [esp+48h+var_2C]
mov     di, ds:word_5598F8
sub     eax, edi
mov     ds:word_5598F8, ax
mov     eax, [esp+48h+var_30]
mov     dx, word ptr ds:dword_5598FA+2
sub     eax, edx
mov     word ptr ds:dword_5598FA+2, ax
mov     eax, [esp+48h+var_2C]
mov     bx, ds:word_559900
sub     eax, ebx
mov     ds:word_559900, ax
mov     eax, [esp+48h+var_30]
mov     cx, word ptr ds:dword_559902+2
sub     eax, ecx
mov     word ptr ds:dword_559902+2, ax
mov     eax, [esp+48h+var_2C]
mov     di, word ptr ds:dword_559906+2
sub     eax, edi
mov     word ptr ds:dword_559906+2, ax
jmp     short loc_4348B8

loc_434876:
mov     eax, [esp+48h+var_30]
add     word ptr ds:dword_5598F2+2, ax
mov     eax, [esp+48h+var_2C]
add     ds:word_5598F8, ax
mov     eax, [esp+48h+var_30]
add     word ptr ds:dword_5598FA+2, ax
mov     eax, [esp+48h+var_2C]
add     ds:word_559900, ax
mov     eax, [esp+48h+var_30]
add     word ptr ds:dword_559902+2, ax
mov     eax, [esp+48h+var_2C]
add     word ptr ds:dword_559906+2, ax

loc_4348B8:
mov     eax, (offset dword_5598F2+2)
call    sub_4EFD0C
mov     eax, [esp+48h+var_20]
mov     word ptr ds:dword_55990E, ax
call    sub_4EFE75
test    byte ptr [esp+48h+var_48], 2
jz      short loc_4348FF
mov     eax, [esp+48h+var_30]
mov     cx, word ptr ds:dword_55990A+2
sub     eax, ecx
mov     word ptr ds:dword_55990A+2, ax
mov     eax, [esp+48h+var_2C]
mov     di, word ptr ds:dword_55990E+2
sub     eax, edi
mov     word ptr ds:dword_55990E+2, ax
jmp     short loc_434915

loc_4348FF:
mov     eax, [esp+48h+var_30]
add     word ptr ds:dword_55990A+2, ax
mov     eax, [esp+48h+var_2C]
add     word ptr ds:dword_55990E+2, ax

loc_434915:
mov     eax, [esi-4]
mov     [esp+48h+var_18], eax
call    sub_4EFD2E
lea     eax, [esp+48h+var_44]
call    sub_4EFFE2
cmp     [esp+48h+var_44], 0
jg      short loc_434943
mov     eax, [esp+48h+var_18]
add     eax, eax
test    eax, eax
jge     loc_434C47
neg     [esp+48h+var_44]

loc_434943:
mov     edi, ds:dword_77E6DC
mov     edx, [esp+48h+var_18]
and     edx, 3FFFFFFh
test    byte ptr [esp+48h+var_18+3], 20h
jz      short loc_43498F
mov     eax, edi
call    loc_4F005A
or      edx, 0A4000000h
mov     ds:dword_559944, edx
lea     ebx, [esp+48h+var_38]
lea     edx, [esp+48h+var_3C]
lea     eax, [esp+48h+var_40]
call    sub_4F00E9
mov     eax, [esp+48h+var_38]
mov     [esp+48h+var_34], eax
mov     eax, edi
call    sub_4F0165
jmp     short loc_4349D5

loc_43498F:
mov     eax, edi
call    loc_4F0075
mov     eax, (offset dword_55990A+2)
call    sub_4EFCE3
call    sub_4EFDC9
or      edx, 0AC000000h
mov     ds:dword_559944, edx
lea     eax, [edi+40h]
call    sub_4F0003
lea     ecx, [esp+48h+var_34]
lea     ebx, [esp+48h+var_38]
lea     edx, [esp+48h+var_3C]
lea     eax, [esp+48h+var_40]
call    sub_4F011F
mov     eax, edi
call    sub_4F0242

loc_4349D5:
mov     eax, offset dword_559944
call    sub_4EFC91
test    byte ptr [esp+48h+var_18+3], 10h
jz      short loc_4349F4
mov     eax, [esp+48h+var_24]

loc_4349EA:
mov     ds:dword_559918, eax
jmp     loc_434A5A

loc_4349F4:
mov     eax, [esp+48h+var_40]
mov     ecx, [esp+48h+var_3C]
cmp     eax, ecx
jge     short loc_434A04
mov     edx, ecx
jmp     short loc_434A06

loc_434A04:
mov     edx, eax

loc_434A06:
mov     eax, [esp+48h+var_38]
mov     ebx, [esp+48h+var_34]
cmp     eax, ebx
jge     short loc_434A18
mov     [esp+48h+var_40], ebx
jmp     short loc_434A1C

loc_434A18:
mov     [esp+48h+var_40], eax

loc_434A1C:
cmp     edx, [esp+48h+var_40]
jle     short loc_434A26
mov     [esp+48h+var_40], edx

loc_434A26:
test    ds:byte_77EAC0, 1
jz      short loc_434A42
cmp     [esp+48h+var_20], 0
jl      short loc_434A42
mov     eax, ds:dword_77E6FC
add     eax, 1F40h
jmp     short loc_4349EA

loc_434A42:
mov     eax, [esp+48h+var_40]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     edx, eax
mov     ds:dword_559918, edx

loc_434A5A:
mov     eax, [esp+48h+var_48]
shl     eax, 18h
cmp     eax, 80000000h
jnb     loc_434ADF
mov     eax, [esp+48h+var_48]
shl     eax, 10h
cmp     eax, 80000000h
jnb     short loc_434A8A
mov     [esp+48h+var_38], 1F0000h
mov     [esp+48h+var_34], 1F1F1F00h
jmp     short loc_434AB5

loc_434A8A:
mov     eax, [ebp+0]
mov     [esp+48h+var_38], eax
mov     eax, [ebp+4]
mov     [esp+48h+var_34], eax
mov     ecx, [esp+48h+var_1C]
cmp     ecx, 3
jbe     short loc_434AB5
mov     eax, 7
sub     eax, ecx
mov     al, byte ptr ds:dword_559948[eax]
and     eax, 0FFh
jmp     short loc_434AB9

loc_434AB5:
mov     eax, [esp+48h+var_28]

loc_434AB9:
mov     edx, eax
and     edx, 7
shl     edx, 5
shr     eax, 3
mov     ecx, eax
shl     ecx, 0Dh
or      ecx, edx
shl     edx, 10h
or      edx, ecx
shl     eax, 1Dh
or      eax, edx
add     [esp+48h+var_38], eax
add     [esp+48h+var_34], eax
jmp     short loc_434AF7

loc_434ADF:
mov     eax, [ebp+0]
mov     [esp+48h+var_38], eax
mov     ds:dword_559948, eax
mov     eax, [ebp+4]
mov     [esp+48h+var_34], eax
mov     ds:dword_55994C, eax

loc_434AF7:
mov     edx, [esp+48h+var_38]
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
jnz     short loc_434B39
mov     eax, [esp+48h+var_34]
shr     eax, 10h
mov     [edi+24h], eax

loc_434B39:
test    byte ptr [esp+48h+var_18+3], 10h
jz      short loc_434B50
mov     eax, [esp+48h+var_24]
mov     eax, [eax]
mov     [edi], eax
mov     eax, [esp+48h+var_24]
mov     [eax], edi
jmp     short loc_434B5F

loc_434B50:
mov     eax, ds:dword_559918
mov     edx, [eax]
mov     [edi], edx
mov     [eax], edi
mov     [esp+48h+var_24], edi

loc_434B5F:
lea     eax, [edi+4]
call    sub_4EFFF8
add     ds:dword_77E6DC, 48h ; 'H'

loc_434B6E:
add     esi, 10h
add     ebp, 8

loc_434B74:
mov     ebx, [esp+48h+var_1C]
test    ebx, ebx
jbe     loc_434FA9
mov     eax, [esp+48h+var_20]
mov     word ptr ds:unk_5598F6, ax
mov     word ptr ds:unk_5598FE, ax
mov     word ptr ds:dword_559906, ax
lea     edi, [ebx-1]
mov     [esp+48h+var_1C], edi
test    byte ptr [esp+48h+var_48], 1
jz      loc_434791
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
jmp     loc_4347FC

loc_434C47:
test    byte ptr [esp+48h+var_18+3], 10h
jnz     loc_434B6E
xor     eax, eax
mov     [esp+48h+var_24], eax
jmp     loc_434B6E
sub_4346C6 endp




sub_434C5D proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 18h
mov     esi, ds:dword_77E70C
xor     ecx, ecx

loc_434C6C:
cmp     ecx, esi
jnb     loc_434D1D
mov     eax, ds:dword_56F58C[ecx*4]
mov     ebx, eax
and     ebx, 0FFFFh
mov     edx, eax
shr     edx, 18h
shl     edx, 9
sub     edx, 7F00h
mov     [esp+28h+var_18], dx
mov     edx, eax
shr     edx, 10h
and     edx, 0FFh
shl     edx, 9
sub     edx, 7F00h
mov     [esp+28h+var_14], dx
and     eax, 1F00h
shr     eax, 1
neg     eax
mov     [esp+28h+var_16], ax
lea     eax, [esp+28h+var_18]
call    sub_4EFCE3
call    sub_4EFD7A
mov     eax, ebx
shl     eax, 18h
cmp     eax, 80000000h
jb      short loc_434CE8
mov     eax, ebx
and     eax, 7Fh
shr     eax, 2
mov     eax, ds:dword_6F20B0[eax*8]
jmp     short loc_434CED

loc_434CE8:
mov     eax, offset unk_6B87CC

loc_434CED:
mov     edx, [eax+18h]
mov     eax, esp
call    sub_4EFFB8
mov     eax, offset dword_564CD8
call    sub_4EFB5A
lea     eax, [edx+8]
lea     edx, [esp+28h+var_18]
call    sub_434D25
mov     eax, offset dword_56F174
call    sub_4EFB5A
inc     ecx
jmp     loc_434C6C

loc_434D1D:
add     esp, 18h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_434C5D endp




sub_434D25 proc near

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
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 34h
push    ebx
mov     ebx, [eax]
mov     ecx, [eax+4]
mov     esi, ecx
shr     esi, 18h
mov     [esp+48h+var_20], esi
mov     edi, ebx
shr     edi, 1Ch
movzx   esi, ds:byte_77EABF
add     edi, esi
mov     [esp+48h+var_14], edi
and     ecx, 0FFFFFFh
lea     esi, [ecx+4]
add     esi, offset unk_6B87CC
and     ebx, 0FFFFFFh
mov     ebp, offset unk_6B87CC
add     ebp, ebx
mov     ecx, [esp+48h+var_48]
shl     ecx, 18h
cmp     ecx, 80000000h
jb      short loc_434D7C
mov     eax, [eax-4]
jmp     short loc_434DAD

loc_434D7C:
mov     eax, [esp+48h+var_48]
shr     eax, 2
and     eax, 1Fh
mov     ecx, ds:dword_564B34[eax*8]
mov     [esp+48h+var_28], ecx
mov     eax, ds:dword_564B38[eax*8]
mov     ds:dword_559948, eax
mov     eax, ecx
xor     ax, cx
or      al, 1Dh
and     ecx, 0FFh
mov     [esp+48h+var_28], ecx

loc_434DAD:
mov     ecx, eax
xor     cx, ax
mov     ds:dword_55991C, ecx
shl     eax, 10h
or      eax, 4000000h
mov     ds:dword_559914, eax
movsx   ebx, word ptr [edx]
mov     cl, ds:byte_77EABF
shl     ebx, cl
mov     [esp+48h+var_30], ebx
mov     ebx, [edx]
sar     ebx, 10h
shl     ebx, cl
mov     [esp+48h+var_24], ebx
mov     edx, [edx+2]
sar     edx, 10h
shl     edx, cl
mov     [esp+48h+var_2C], edx
jmp     loc_435185

loc_434DF0:
movsx   ax, byte ptr [esi]
mov     cl, byte ptr [esp+48h+var_14]
shl     eax, cl
mov     word ptr ds:dword_5598F2+2, ax
movsx   ax, byte ptr [esi+2]
shl     eax, cl
mov     ds:word_5598F8, ax
movsx   ax, byte ptr [esi+3]
shl     eax, cl
mov     word ptr ds:dword_5598FA+2, ax
movsx   ax, byte ptr [esi+5]
shl     eax, cl
mov     ds:word_559900, ax
movsx   ax, byte ptr [esi+6]
shl     eax, cl
mov     word ptr ds:dword_559902+2, ax
movsx   ax, byte ptr [esi+8]
shl     eax, cl
mov     word ptr ds:dword_559906+2, ax
movsx   ax, byte ptr [esi+9]
shl     eax, cl
mov     word ptr ds:dword_55990A+2, ax
movsx   ax, byte ptr [esi+0Bh]
shl     eax, cl
mov     word ptr ds:dword_55990E+2, ax

loc_434E5B:
test    byte ptr [esp+48h+var_48], 2
jz      short loc_434ED5
mov     eax, [esp+48h+var_30]
mov     cx, word ptr ds:dword_5598F2+2
sub     eax, ecx
mov     word ptr ds:dword_5598F2+2, ax
mov     eax, [esp+48h+var_2C]
mov     di, ds:word_5598F8
sub     eax, edi
mov     ds:word_5598F8, ax
mov     eax, [esp+48h+var_30]
mov     dx, word ptr ds:dword_5598FA+2
sub     eax, edx
mov     word ptr ds:dword_5598FA+2, ax
mov     eax, [esp+48h+var_2C]
mov     bx, ds:word_559900
sub     eax, ebx
mov     ds:word_559900, ax
mov     eax, [esp+48h+var_30]
mov     cx, word ptr ds:dword_559902+2
sub     eax, ecx
mov     word ptr ds:dword_559902+2, ax
mov     eax, [esp+48h+var_2C]
mov     di, word ptr ds:dword_559906+2
sub     eax, edi
mov     word ptr ds:dword_559906+2, ax
jmp     short loc_434F17

loc_434ED5:
mov     eax, [esp+48h+var_30]
add     word ptr ds:dword_5598F2+2, ax
mov     eax, [esp+48h+var_2C]
add     ds:word_5598F8, ax
mov     eax, [esp+48h+var_30]
add     word ptr ds:dword_5598FA+2, ax
mov     eax, [esp+48h+var_2C]
add     ds:word_559900, ax
mov     eax, [esp+48h+var_30]
add     word ptr ds:dword_559902+2, ax
mov     eax, [esp+48h+var_2C]
add     word ptr ds:dword_559906+2, ax

loc_434F17:
mov     eax, (offset dword_5598F2+2)
call    sub_4EFD0C
mov     eax, [esp+48h+var_24]
mov     word ptr ds:dword_55990E, ax
call    sub_4EFE75
test    byte ptr [esp+48h+var_48], 2
jz      short loc_434F5E
mov     eax, [esp+48h+var_30]
mov     cx, word ptr ds:dword_55990A+2
sub     eax, ecx
mov     word ptr ds:dword_55990A+2, ax
mov     eax, [esp+48h+var_2C]
mov     di, word ptr ds:dword_55990E+2
sub     eax, edi
mov     word ptr ds:dword_55990E+2, ax
jmp     short loc_434F74

loc_434F5E:
mov     eax, [esp+48h+var_30]
add     word ptr ds:dword_55990A+2, ax
mov     eax, [esp+48h+var_2C]
add     word ptr ds:dword_55990E+2, ax

loc_434F74:
mov     eax, [esi-4]
mov     [esp+48h+var_18], eax
call    sub_4EFD2E
lea     eax, [esp+48h+var_44]
call    sub_4EFFE2
cmp     [esp+48h+var_44], 0
jg      short loc_434FB5
mov     eax, [esp+48h+var_18]
add     eax, eax
test    eax, eax
jl      short loc_434FB1
mov     eax, [esp+48h+var_18]
shl     eax, 2
test    eax, eax
jl      loc_4352FC

loc_434FA9:
add     esp, 38h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_434FB1:
neg     [esp+48h+var_44]

loc_434FB5:
mov     edi, ds:dword_77E6DC
mov     eax, offset unk_5598AC
call    sub_4F0040
mov     eax, offset dword_559920
call    sub_4F0102
mov     edx, [esp+48h+var_18]
and     edx, 3FFFFFFh
test    byte ptr [esp+48h+var_18+3], 20h
jz      short loc_435015
mov     eax, edi
call    loc_4F005A
or      edx, 0A4000000h
mov     ds:dword_559944, edx
lea     ebx, [esp+48h+var_38]
lea     edx, [esp+48h+var_3C]
lea     eax, [esp+48h+var_40]
call    sub_4F00E9
mov     eax, [esp+48h+var_38]
mov     [esp+48h+var_34], eax
mov     eax, edi
call    sub_4F0165
jmp     short loc_43506F

loc_435015:
mov     eax, edi
call    loc_4F0075
mov     eax, (offset dword_55990A+2)
call    sub_4EFCE3
call    sub_4EFDC9
or      edx, 0AC000000h
mov     ds:dword_559944, edx
lea     eax, [edi+40h]
call    sub_4F0003
mov     eax, offset unk_5598C4
call    sub_4F0003
mov     eax, offset dword_559920
call    sub_4F013F
lea     ecx, [esp+48h+var_34]
lea     ebx, [esp+48h+var_38]
lea     edx, [esp+48h+var_3C]
lea     eax, [esp+48h+var_40]
call    sub_4F011F
mov     eax, edi
call    sub_4F0242

loc_43506F:
mov     eax, offset dword_559944
call    sub_4EFC91
test    byte ptr [esp+48h+var_18+3], 10h
jz      short loc_43508E
mov     eax, [esp+48h+var_1C]

loc_435084:
mov     ds:dword_559918, eax
jmp     loc_4350F4

loc_43508E:
mov     eax, [esp+48h+var_40]
mov     ecx, [esp+48h+var_3C]
cmp     eax, ecx
jge     short loc_43509E
mov     edx, ecx
jmp     short loc_4350A0

loc_43509E:
mov     edx, eax

loc_4350A0:
mov     eax, [esp+48h+var_38]
mov     ebx, [esp+48h+var_34]
cmp     eax, ebx
jge     short loc_4350B2
mov     [esp+48h+var_40], ebx
jmp     short loc_4350B6

loc_4350B2:
mov     [esp+48h+var_40], eax

loc_4350B6:
cmp     edx, [esp+48h+var_40]
jle     short loc_4350C0
mov     [esp+48h+var_40], edx

loc_4350C0:
test    ds:byte_77EAC0, 1
jz      short loc_4350DC
cmp     [esp+48h+var_24], 0
jl      short loc_4350DC
mov     eax, ds:dword_77E6FC
add     eax, 1F40h
jmp     short loc_435084

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

loc_4379D7:
cmp     ds:word_6E23D6, 0
jnz     short loc_437A4C
mov     ebx, 1
mov     ds:dword_77E738, ebx
xor     esi, esi
mov     ds:dword_77E720, esi
mov     eax, ebx
call    sub_4DC4A7
call    sub_4E1D8A
call    sub_4EDD33
mov     edx, offset unk_511E59
mov     eax, offset unk_511E65
call    sub_4E22FB
mov     ds:dword_77E6F0, offset off_511E35
inc     byte ptr [ecx+1]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_437A26:
xor     edx, edx
mov     ds:dword_77E738, edx
mov     word ptr [ecx+0Ah], 0
mov     eax, ecx
call    sub_43930F
mov     eax, 2
call    sub_49E0D7
mov     byte ptr [ecx], 2
mov     byte ptr [ecx+1], 1

loc_437A4C:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4379C1 endp

align 4
jpt_437A7C dd offset loc_437A83 ; jump table for switch statement
dd offset loc_437A9A
dd offset loc_437AB0
dd offset loc_437ABF
dd offset loc_437AE5



sub_437A68 proc near
push    ebx
push    edx
mov     edx, eax
mov     al, [eax+1]
cmp     al, 4           ; switch 5 cases
ja      def_437A7C      ; jumptable 00437A7C default case
and     eax, 0FFh
jmp     jpt_437A7C[eax*4] ; switch jump

loc_437A83:             ; jumptable 00437A7C case 0
cmp     ds:word_6E23D6, 0
jnz     short def_437A7C ; jumptable 00437A7C default case
mov     eax, 2
call    sub_49E0D7
inc     byte ptr [edx+1]

loc_437A9A:             ; jumptable 00437A7C case 1
call    sub_4A0E35
inc     byte ptr [edx+1]
mov     word ptr [edx+4], 258h
call    sub_4382E2
pop     edx
pop     ebx
retn

loc_437AB0:             ; jumptable 00437A7C case 2
call    sub_4382E2
mov     eax, edx
call    sub_4382C3
pop     edx
pop     ebx
retn

loc_437ABF:             ; jumptable 00437A7C case 3
call    sub_4382E2
call    sub_438AB1
mov     bx, [edx+4]
dec     bx
mov     [edx+4], bx
jnz     short def_437A7C ; jumptable 00437A7C default case
inc     byte ptr [edx+1]
mov     eax, 0Ah
call    sub_49E0D7
pop     edx
pop     ebx
retn

loc_437AE5:             ; jumptable 00437A7C case 4
call    sub_4A0E35
call    sub_4382E2
mov     eax, edx
call    sub_4382D1

def_437A7C:             ; jumptable 00437A7C default case
pop     edx
pop     ebx
retn
sub_437A68 endp




sub_437AF9 proc near
push    ebx
push    edx
mov     eax, offset dword_6DD9BC
call    sub_43930F
call    sub_4A8F93
mov     edx, offset unk_511E49
mov     eax, offset unk_511E39
call    sub_429863
call    sub_4EB527
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Eh
mov     ebx, offset unk_7764A4
add     ebx, eax
lea     edx, [ebx+3FFCh]
mov     eax, ds:dword_77EA74
add     eax, 80h
call    sub_4F87AF
pop     edx
pop     ebx
retn
sub_437AF9 endp




sub_437B47 proc near
mov     byte ptr [eax], 0
mov     byte ptr [eax+1], 0
retn
sub_437B47 endp

align 10h
jpt_437B93 dd offset loc_437B9A ; jump table for switch statement
dd offset loc_437BB5
dd offset loc_437BE0
dd offset loc_437BFC
dd offset def_437B93
dd offset loc_437DC9
jpt_437D11 dd offset loc_437D18 ; jump table for switch statement
dd offset loc_437D39
dd offset loc_437D55
dd offset loc_437D71



sub_437B78 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_77E784
mov     al, [eax+1]
cmp     al, 5           ; switch 6 cases
ja      def_437B93      ; jumptable 00437B93 default case, case 4
; jumptable 00437D11 default case
and     eax, 0FFh
jmp     jpt_437B93[eax*4] ; switch jump

loc_437B9A:             ; jumptable 00437B93 case 0
cmp     ds:word_6E23D6, 0
jnz     def_437B93      ; jumptable 00437B93 default case, case 4
; jumptable 00437D11 default case
mov     eax, 1
call    sub_49E0D7
inc     byte ptr [ecx+1]

loc_437BB5:             ; jumptable 00437B93 case 1
call    sub_4A0E35
inc     byte ptr [ecx+1]
mov     word ptr [ecx+4], 258h
mov     byte ptr [esi+50h], 0
mov     byte ptr [esi+51h], 0
call    sub_4382E2
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_43864B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_437BE0:             ; jumptable 00437B93 case 2
call    sub_4382E2
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_43864B
mov     eax, ecx
call    sub_4382C3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_437BFC:             ; jumptable 00437B93 case 3
call    sub_4382E2
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_43864B
test    byte ptr ds:word_5708DE, 10h
jz      short loc_437C34
cmp     byte ptr [ecx+0Ch], 0
jle     short loc_437C34
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
call    sub_4D89E4
dec     byte ptr [ecx+0Ch]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_437C34:
test    byte ptr ds:word_5708DE, 40h
jz      short loc_437C73
cmp     word ptr [esi+18h], 0
jbe     short loc_437C4B
mov     eax, 1
jmp     short loc_437C4D

loc_437C4B:
xor     eax, eax

loc_437C4D:
mov     edx, [ecx+9]
sar     edx, 18h
add     eax, 2
cmp     edx, eax
jge     short loc_437C73
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
call    sub_4D89E4
inc     byte ptr [ecx+0Ch]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_437C73:
test    byte ptr ds:word_5708DE, 80h
jz      short loc_437CB4
cmp     byte ptr [ecx+0Ch], 3
jnz     short loc_437CB4
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
call    sub_4D89E4
dec     byte ptr [esi+5Bh]
mov     edx, [esi+58h]
sar     edx, 18h
cmp     word ptr [esi+1Ah], 0
jnz     short loc_437CAA
mov     eax, 1
jmp     short loc_437CAC

loc_437CAA:
xor     eax, eax

loc_437CAC:
cmp     edx, eax
jge     short loc_437CB4
mov     byte ptr [esi+5Bh], 2

loc_437CB4:
test    byte ptr ds:word_5708DE, 20h
jz      short loc_437CF2
cmp     byte ptr [ecx+0Ch], 3
jnz     short loc_437CF2
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
call    sub_4D89E4
mov     bh, [esi+5Bh]
inc     bh
mov     [esi+5Bh], bh
cmp     bh, 2
jle     short loc_437CF2
cmp     word ptr [esi+1Ah], 0
jz      short loc_437CEE
mov     byte ptr [esi+5Bh], 0
jmp     short loc_437CF2

loc_437CEE:
mov     byte ptr [esi+5Bh], 1

loc_437CF2:
test    ds:word_5708DE, 4008h
jz      loc_437D9D
mov     al, [ecx+0Ch]
cmp     al, 3           ; switch 4 cases
ja      def_437B93      ; jumptable 00437B93 default case, case 4
; jumptable 00437D11 default case
and     eax, 0FFh
jmp     jpt_437D11[eax*4] ; switch jump

loc_437D18:             ; jumptable 00437D11 case 0
add     byte ptr [ecx+1], 2
mov     eax, 16h
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A6h

loc_437D2F:
call    sub_4D89E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_437D39:             ; jumptable 00437D11 case 1
mov     byte ptr [ecx], 5
mov     byte ptr [ecx+1], 0
mov     eax, 9
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A7h
jmp     short loc_437D2F

loc_437D55:             ; jumptable 00437D11 case 2
mov     byte ptr [ecx], 6
mov     byte ptr [ecx+1], 0
mov     eax, 9
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A8h
jmp     short loc_437D2F

loc_437D71:             ; jumptable 00437D11 case 3
mov     dl, [esi+5Bh]
inc     dl
mov     [esi+5Bh], dl
cmp     dl, 2
jle     short loc_437D8F
cmp     word ptr [esi+1Ah], 0
jz      short loc_437D8B
mov     byte ptr [esi+5Bh], 0
jmp     short loc_437D8F

loc_437D8B:
mov     byte ptr [esi+5Bh], 1

loc_437D8F:
xor     ebx, ebx
mov     edx, 1
mov     eax, 81h
jmp     short loc_437D2F

loc_437D9D:
test    byte ptr ds:word_5708DE+1, 10h
jz      short def_437B93 ; jumptable 00437B93 default case, case 4
; jumptable 00437D11 default case
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
mov     word ptr [ecx+0Eh], 1
mov     byte ptr [ecx], 2
mov     byte ptr [ecx+1], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_437DC9:             ; jumptable 00437B93 case 5
call    sub_4382E2
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_43864B
call    sub_4A0E35
xor     ah, ah
mov     ds:byte_511E30, ah
mov     ds:byte_77E806, ah
mov     eax, offset sub_49F4F7
call    sub_4EEDCA

def_437B93:             ; jumptable 00437B93 default case, case 4
pop     esi             ; jumptable 00437D11 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_437B78 endp

align 4
jpt_437E24 dd offset loc_437E2B ; jump table for switch statement
dd offset loc_437E57
dd offset loc_437E6A
dd offset loc_437E8F
dd offset loc_437EA0



sub_437E10 proc near
push    ebx
push    edx
mov     edx, eax
mov     al, [eax+1]
cmp     al, 4           ; switch 5 cases
ja      def_437E24      ; jumptable 00437E24 default case
and     eax, 0FFh
jmp     jpt_437E24[eax*4] ; switch jump

loc_437E2B:             ; jumptable 00437E24 case 0
cmp     ds:word_6E23D6, 0
jz      short loc_437E4A
call    sub_4382E2
mov     eax, [edx+9]
sar     eax, 18h
call    sub_43864B
jmp     def_437E24      ; jumptable 00437E24 default case

loc_437E4A:
mov     eax, 1
call    sub_49E0D7
inc     byte ptr [edx+1]

loc_437E57:             ; jumptable 00437E24 case 1
call    sub_4A0E35
inc     byte ptr [edx+1]
mov     word ptr [edx+4], 258h
jmp     def_437E24      ; jumptable 00437E24 default case

loc_437E6A:             ; jumptable 00437E24 case 2
xor     ebx, ebx
mov     ds:word_5708DE, bx
mov     ds:word_5708DA, bx
xor     eax, eax
call    sub_4A86B8
call    sub_437AF9
mov     eax, edx
call    sub_4382C3
jmp     short def_437E24 ; jumptable 00437E24 default case

loc_437E8F:             ; jumptable 00437E24 case 3
xor     eax, eax
call    sub_4A86B8
add     [edx+1], al
call    sub_437AF9
jmp     short def_437E24 ; jumptable 00437E24 default case

loc_437EA0:             ; jumptable 00437E24 case 4
cmp     ds:byte_77E806, 1
jnz     short loc_437ECC
mov     eax, 16h
call    sub_49E0D7
call    sub_4E4BA7
xor     dl, dl
mov     ds:byte_511E30, dl
mov     eax, offset sub_49F4F7
call    sub_4EEDCA
jmp     short def_437E24 ; jumptable 00437E24 default case

loc_437ECC:
mov     eax, 9
call    sub_49E0D7
call    sub_437AF9
mov     byte ptr [edx], 4
mov     byte ptr [edx+1], 0

def_437E24:             ; jumptable 00437E24 default case
call    sub_4E4BA7
pop     edx
pop     ebx
retn
sub_437E10 endp




sub_437EEA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+1]
cmp     al, 1
jb      short loc_437F01
jbe     short loc_437F35
cmp     al, 2
jz      short loc_437F57
jmp     loc_437FB6

loc_437F01:
test    al, al
jnz     loc_437FB6
cmp     ds:word_6E23D6, 0
jz      short loc_437F28
call    sub_4382E2
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_43864B
jmp     loc_437FB6

loc_437F28:
mov     eax, 1
call    sub_49E0D7
inc     byte ptr [ecx+1]

loc_437F35:
call    sub_4A0E35
mov     edx, ds:off_52FD55
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
inc     byte ptr [ecx+1]
mov     word ptr [ecx+4], 258h
jmp     short loc_437FB1

loc_437F57:
test    byte ptr ds:dword_55BD7C+3, 40h
jz      short loc_437F74
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 4
jnz     short loc_437F74
mov     byte ptr [ecx], 7
jmp     short loc_437FAD

loc_437F74:
test    byte ptr ds:dword_55BD7C+3, 40h
jnz     short loc_437F86
test    byte ptr ds:word_5708DE, 8
jz      short loc_437FB1

loc_437F86:
test    byte ptr ds:word_5708DE, 8
jz      short loc_437FA0
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4

loc_437FA0:
mov     eax, 9
call    sub_49E0D7
mov     byte ptr [ecx], 4

loc_437FAD:
mov     byte ptr [ecx+1], 0

loc_437FB1:
call    sub_437AF9

loc_437FB6:
call    sub_4E4BA7
pop     edx
pop     ecx
pop     ebx
retn
sub_437EEA endp




sub_437FBF proc near
push    ebx
push    ecx
push    edx
push    esi
xor     ecx, ecx
jmp     loc_438046

loc_437FCA:
add     eax, eax
mov     bh, ds:byte_559A4C[eax]
test    bh, bh
jz      short loc_437FF7
mov     al, bh
and     eax, 0FFh
call    sub_4F8FAD
mov     esi, ds:dword_559A88[ecx*4]
mov     ebx, 7
mov     edx, eax
mov     eax, esi
call    memcpy_

loc_437FF7:
xor     eax, eax

loc_437FF9:
lea     edx, [eax+eax]
cmp     ds:byte_559A75[edx], 0
jz      short loc_438019
xor     ebx, ebx
mov     bl, ds:byte_559A75[edx]
cmp     ebx, ds:dword_511F05[ecx*4]
jz      short loc_438019
inc     eax
jmp     short loc_437FF9

loc_438019:
add     eax, eax
cmp     ds:byte_559A75[eax], 0
jz      short loc_43803C
xor     edx, edx
mov     dl, ds:byte_559A74[eax]
mov     eax, ds:dword_559A88[ecx*4]
mov     dl, ds:byte_530220[edx]
mov     [eax-6], dl

loc_43803C:
inc     ecx
cmp     ecx, 9
jge     def_437B93      ; jumptable 00437B93 default case, case 4
; jumptable 00437D11 default case

loc_438046:
xor     eax, eax

loc_438048:
lea     edx, [eax+eax]
cmp     ds:byte_559A4C[edx], 0
jz      loc_437FCA
xor     ebx, ebx
mov     bl, ds:byte_559A4D[edx]
cmp     ebx, ds:dword_511F05[ecx*4]
jz      loc_437FCA
inc     eax
jmp     short loc_438048
sub_437FBF endp




sub_438070 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     edi, eax
mov     al, [eax+1]
test    al, al
jbe     short loc_43808F
cmp     al, 1
jz      loc_438108
jmp     loc_4382B4

loc_43808F:
mov     eax, offset byte_559A4C
call    sub_4F90BD
mov     eax, offset byte_559A74
call    sub_4F90F7
mov     esi, ds:off_52FCE5
xor     eax, eax
xor     edx, edx
jmp     short loc_4380BF

loc_4380AF:
sub     ecx, 7
mov     ds:dword_559A88[eax*4], ecx
inc     eax
cmp     eax, 9
jge     short loc_4380CA

loc_4380BF:
lea     ecx, [esi+edx]
inc     edx
cmp     byte ptr [ecx], 82h
jz      short loc_4380AF
jmp     short loc_4380BF

loc_4380CA:
call    sub_437FBF
call    sub_4A0E35
mov     edx, ds:off_52FCE1
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
mov     edx, ds:off_52FCE5
mov     ebx, 0FFFFFFFFh
mov     eax, 1
call    sub_4A0CDD
call    sub_4F904F
mov     ds:dword_559AAC, eax
inc     byte ptr [edi+1]

loc_438108:
mov     esi, ds:dword_55BD7C
and     esi, 0FFh
cmp     esi, 9
jge     loc_438262
call    sub_4F8FEF
mov     [esp+20h+var_1C], eax
test    eax, eax
jz      loc_4381BF
xor     edx, edx

loc_438130:
lea     eax, [edx+edx]
mov     ch, ds:byte_559A4C[eax]
test    ch, ch
jz      short loc_43814D
mov     al, ch
and     eax, 0FFh
cmp     eax, [esp+20h+var_1C]
jz      short loc_43814D
inc     edx
jmp     short loc_438130

loc_43814D:
cmp     ds:byte_559A4C[edx*2], 0
jnz     loc_4382AF
mov     eax, [esp+20h+var_1C]
call    sub_4F8FAD
test    eax, eax
jz      loc_4382AF
mov     ecx, ds:dword_559A88[esi*4]
mov     ebx, 7
mov     edx, eax
mov     eax, ecx
call    memcpy_
xor     eax, eax
jmp     short loc_43818F

loc_438185:
inc     eax
cmp     eax, 14h
jge     loc_4382AF

loc_43818F:
lea     edx, [eax+eax]
cmp     ds:byte_559A4C[edx], 0
jz      loc_4382AF
xor     ebx, ebx
mov     bl, ds:byte_559A4D[edx]
cmp     ebx, ds:dword_511F05[esi*4]
jnz     short loc_438185
mov     al, byte ptr [esp+20h+var_1C]
mov     ds:byte_559A4C[edx], al
jmp     loc_4382AF

loc_4381BF:
call    sub_4F904F
mov     [esp+20h+var_1C], eax
cmp     eax, 0FFFFFFFFh
jz      loc_438245
cmp     eax, ds:dword_559AAC
jz      loc_438245
xor     eax, eax
jmp     short loc_4381E7

loc_4381E1:
inc     eax
cmp     eax, 0Ah
jge     short loc_43823B

loc_4381E7:
lea     edx, [eax+eax]
xor     ebx, ebx
mov     bl, ds:byte_559A75[edx]
cmp     ebx, ds:dword_511F05[esi*4]
jnz     short loc_4381E1
mov     dl, ds:byte_559A74[edx]
and     edx, 0FFh
mov     [esp+20h+var_20], edx
xor     edx, edx
mov     ebp, [esp+20h+var_1C]
jmp     short loc_438218

loc_438212:
inc     edx
cmp     edx, 0Ah
jge     short loc_438230

loc_438218:
lea     ecx, [edx+edx]
xor     ebx, ebx
mov     bl, ds:byte_559A74[ecx]
cmp     ebx, ebp
jnz     short loc_438212
mov     dl, byte ptr [esp+20h+var_20]
mov     ds:byte_559A74[ecx], dl

loc_438230:
mov     dl, byte ptr [esp+20h+var_1C]
mov     ds:byte_559A74[eax*2], dl

loc_43823B:
call    sub_437FBF
jmp     loc_4382AF

loc_438245:
mov     ecx, [esp+20h+var_1C]
cmp     ecx, 0FFFFFFFFh
jnz     loc_4382AF
cmp     ecx, ds:dword_559AAC
jz      short loc_4382AF
mov     ds:dword_559AAC, ecx
jmp     short loc_4382AF

loc_438262:
test    byte ptr ds:dword_55BD7C+3, 40h
jz      short loc_4382AF
cmp     esi, 0Ah
jb      short loc_438279
jbe     short loc_4382A8
cmp     esi, 0Bh
jz      short loc_438294
jmp     short loc_4382AF

loc_438279:
cmp     esi, 9
jnz     short loc_4382AF
mov     eax, offset byte_559A4C
call    sub_4F90CB
mov     eax, offset byte_559A74
call    sub_4F9105
jmp     short loc_43823B

loc_438294:
mov     eax, offset byte_559A4C
call    sub_4F90D9
mov     eax, offset byte_559A74
call    sub_4F9113

loc_4382A8:
mov     byte ptr [edi], 6
mov     byte ptr [edi+1], 1

loc_4382AF:
call    sub_437AF9

loc_4382B4:
call    sub_4E4BA7
add     esp, 8

loc_4382BC:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_438070 endp




sub_4382C3 proc near
cmp     ds:word_6E23D6, 0
jnz     short locret_4382D0
inc     byte ptr [eax+1]

locret_4382D0:
retn
sub_4382C3 endp




sub_4382D1 proc near
cmp     ds:word_6E23D6, 0
jnz     short locret_4382E1
inc     byte ptr [eax]
mov     byte ptr [eax+1], 0

locret_4382E1:
retn
sub_4382D1 endp




sub_4382E2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87F0
mov     ecx, 100h
mov     ebx, 140h
xor     edx, edx
mov     eax, 1
call    sub_4F892F
mov     [esi+16h], ax
mov     edx, 1F0h
xor     eax, eax
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 20h ; ' '
mov     word ptr [esi+0Ah], 8
mov     word ptr [esi+10h], 11Fh
mov     word ptr [esi+12h], 8
mov     word ptr [esi+18h], 20h ; ' '
mov     word ptr [esi+1Ah], 0A8h
mov     word ptr [esi+20h], 11Fh
mov     word ptr [esi+22h], 0A8h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+14h], 0FFh
mov     byte ptr [esi+15h], 0
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 0A0h
mov     byte ptr [esi+24h], 0FFh
mov     byte ptr [esi+25h], 0A0h
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Eh
add     esi, 38h ; '8'
add     eax, offset unk_7764A4
add     eax, 210h
call    sub_4F87A6
mov     eax, esi
call    sub_4F87F0
mov     ecx, 100h
mov     ebx, 240h
mov     edx, 2
mov     eax, 1
call    sub_4F892F
mov     [esi+16h], ax
mov     edx, 1F2h
xor     eax, eax
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 0
mov     word ptr [esi+0Ah], 0
mov     word ptr [esi+10h], 0A0h
mov     word ptr [esi+12h], 0
mov     word ptr [esi+18h], 0
mov     word ptr [esi+1Ah], 0A0h
mov     word ptr [esi+20h], 0A0h
mov     word ptr [esi+22h], 0A0h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+14h], 0A0h
mov     byte ptr [esi+15h], 0
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 0A0h
mov     byte ptr [esi+24h], 0A0h
mov     byte ptr [esi+25h], 0A0h
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 8Ch
call    sub_4F87A6
mov     eax, esi
call    sub_4F87F0
mov     ecx, 100h
mov     ebx, 240h
mov     edx, 2
mov     eax, 1
call    sub_4F892F
mov     [esi+16h], ax
mov     edx, 1F2h
xor     eax, eax
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 0A0h
mov     word ptr [esi+0Ah], 0
mov     word ptr [esi+10h], 140h
mov     word ptr [esi+12h], 0
mov     word ptr [esi+18h], 0A0h
mov     word ptr [esi+1Ah], 0A0h
mov     word ptr [esi+20h], 140h
mov     word ptr [esi+22h], 0A0h
mov     byte ptr [esi+0Ch], 0A0h
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+14h], 0
mov     byte ptr [esi+15h], 0
mov     byte ptr [esi+1Ch], 0A0h
mov     byte ptr [esi+1Dh], 0A0h
mov     byte ptr [esi+24h], 0
mov     byte ptr [esi+25h], 0A0h
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 8Ch
call    sub_4F87A6
mov     eax, esi
call    sub_4F8817
mov     word ptr [esi+8], 0
mov     word ptr [esi+0Ah], 90h
mov     word ptr [esi+10h], 140h
mov     word ptr [esi+12h], 90h
mov     word ptr [esi+18h], 0
mov     word ptr [esi+1Ah], 0A0h
mov     word ptr [esi+20h], 140h
mov     word ptr [esi+22h], 0A0h
mov     byte ptr [esi+4], 0
mov     byte ptr [esi+5], 0
mov     byte ptr [esi+6], 0
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+0Eh], 0
mov     byte ptr [esi+14h], 0FFh
mov     byte ptr [esi+15h], 0FFh
mov     byte ptr [esi+16h], 0FFh
mov     byte ptr [esi+1Ch], 0FFh
mov     byte ptr [esi+1Dh], 0FFh
mov     byte ptr [esi+1Eh], 0FFh
mov     edx, 1
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 88h
call    sub_4F87A6
push    0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2
mov     eax, 1
call    sub_4F892F
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4F8864
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 88h
call    sub_4F87A6
mov     eax, esi
call    sub_4F8817
mov     word ptr [esi+8], 0
mov     word ptr [esi+0Ah], 0A2h
mov     word ptr [esi+10h], 140h
mov     word ptr [esi+12h], 0A2h
mov     word ptr [esi+18h], 0
mov     word ptr [esi+1Ah], 0F0h
mov     word ptr [esi+20h], 140h
mov     word ptr [esi+22h], 0F0h
mov     byte ptr [esi+4], 0
mov     byte ptr [esi+5], 0
mov     byte ptr [esi+6], 0
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+0Eh], 0
mov     byte ptr [esi+14h], 0C0h
mov     byte ptr [esi+15h], 0FFh
mov     byte ptr [esi+16h], 0E0h
mov     byte ptr [esi+1Ch], 0C0h
mov     byte ptr [esi+1Dh], 0FFh
mov     byte ptr [esi+1Eh], 0E0h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 8Ch
call    sub_4F87A6
mov     ds:dword_77E6DC, esi
call    sub_437AF9
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4382E2 endp




sub_43864B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     edi, offset dword_77E784
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87F0
xor     ecx, ecx
mov     ebx, 100h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
or      ah, 10h
mov     [esi+16h], ax
mov     edx, 1F1h
test    ebp, ebp
jnz     short loc_43868C
mov     eax, 1
jmp     short loc_43868E

loc_43868C:
xor     eax, eax

loc_43868E:
shl     eax, 4
add     eax, 10h
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 0DDh
mov     word ptr [esi+0Ah], 128h
mov     word ptr [esi+10h], 1A3h
mov     word ptr [esi+12h], 128h
mov     word ptr [esi+18h], 0DDh
mov     word ptr [esi+1Ah], 148h
mov     word ptr [esi+20h], 1A3h
mov     word ptr [esi+22h], 148h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 70h ; 'p'
mov     byte ptr [esi+14h], 0C6h
mov     byte ptr [esi+15h], 70h ; 'p'
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 90h
mov     byte ptr [esi+24h], 0C6h
mov     byte ptr [esi+25h], 90h
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     eax, esi
call    sub_4F87F0
xor     ecx, ecx
mov     ebx, 100h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
or      ah, 10h
mov     [esi+16h], ax
mov     edx, 1F1h
cmp     ebp, 1
jnz     short loc_438740
mov     eax, ebp
jmp     short loc_438742

loc_438740:
xor     eax, eax

loc_438742:
shl     eax, 4
add     eax, 10h
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 0E2h
mov     word ptr [esi+0Ah], 148h
mov     word ptr [esi+10h], 19Eh
mov     word ptr [esi+12h], 148h
mov     word ptr [esi+18h], 0E2h
mov     word ptr [esi+1Ah], 168h
mov     word ptr [esi+20h], 19Eh
mov     word ptr [esi+22h], 168h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 90h
mov     byte ptr [esi+14h], 0BCh
mov     byte ptr [esi+15h], 90h
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 0B0h
mov     byte ptr [esi+24h], 0BCh
mov     byte ptr [esi+25h], 0B0h
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     eax, esi
call    sub_4F87F0
xor     ecx, ecx
mov     ebx, 100h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
or      ah, 10h
mov     [esi+16h], ax
mov     edx, 1F1h
cmp     ebp, 2
jnz     short loc_4387F7
mov     eax, 1
jmp     short loc_4387F9

loc_4387F7:
xor     eax, eax

loc_4387F9:
shl     eax, 4
add     eax, 10h
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 0F6h
mov     word ptr [esi+0Ah], 168h
mov     word ptr [esi+10h], 18Ah
mov     word ptr [esi+12h], 168h
mov     word ptr [esi+18h], 0F6h
mov     word ptr [esi+1Ah], 188h
mov     word ptr [esi+20h], 18Ah
mov     word ptr [esi+22h], 188h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0B0h
mov     byte ptr [esi+14h], 94h
mov     byte ptr [esi+15h], 0B0h
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 0D0h
mov     byte ptr [esi+24h], 94h
mov     byte ptr [esi+25h], 0D0h
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6
cmp     word ptr [edi+18h], 0
jz      loc_438A0C
mov     eax, esi
call    sub_4F87F0
xor     ecx, ecx
mov     ebx, 100h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
or      ah, 10h
mov     [esi+16h], ax
mov     edx, 1F1h
mov     eax, [edi+58h]
sar     eax, 18h
add     eax, eax
lea     ecx, [eax+3]
cmp     ebp, 3
jz      short loc_4388C4
mov     eax, 1
jmp     short loc_4388C6

loc_4388C4:
xor     eax, eax

loc_4388C6:
add     eax, ecx
shl     eax, 4
call    sub_4F8961
mov     [esi+0Eh], ax
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     al, [edi+5Bh]
cmp     al, 1
jb      short loc_4388FF
jbe     short loc_43895C
cmp     al, 2
jz      loc_4389AA
jmp     loc_4389FA

loc_4388FF:
test    al, al
jnz     loc_4389FA
mov     word ptr [esi+8], 111h
mov     word ptr [esi+0Ah], 188h
mov     word ptr [esi+10h], 16Fh
mov     word ptr [esi+12h], 188h
mov     word ptr [esi+18h], 111h
mov     word ptr [esi+1Ah], 1A8h
mov     word ptr [esi+20h], 16Fh
mov     word ptr [esi+22h], 1A8h
mov     byte ptr [esi+0Ch], 0A2h
mov     byte ptr [esi+0Dh], 0D0h
mov     byte ptr [esi+14h], 0FFh
mov     byte ptr [esi+15h], 0D0h
mov     byte ptr [esi+1Ch], 0A2h
mov     byte ptr [esi+1Dh], 0F0h
mov     byte ptr [esi+24h], 0FFh

loc_438953:
mov     byte ptr [esi+25h], 0F0h
jmp     loc_4389FA

loc_43895C:
mov     word ptr [esi+8], 0EEh
mov     word ptr [esi+0Ah], 188h
mov     word ptr [esi+10h], 192h
mov     word ptr [esi+12h], 188h
mov     word ptr [esi+18h], 0EEh
mov     word ptr [esi+1Ah], 1A8h
mov     word ptr [esi+20h], 192h
mov     word ptr [esi+22h], 1A8h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0D0h
mov     byte ptr [esi+14h], 0A4h
mov     byte ptr [esi+15h], 0D0h
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 0F0h
mov     byte ptr [esi+24h], 0A4h
jmp     short loc_438953

loc_4389AA:
mov     word ptr [esi+8], 10Ah
mov     word ptr [esi+0Ah], 188h
mov     word ptr [esi+10h], 176h
mov     word ptr [esi+12h], 188h
mov     word ptr [esi+18h], 10Ah
mov     word ptr [esi+1Ah], 1A8h
mov     word ptr [esi+20h], 176h
mov     word ptr [esi+22h], 1A8h
mov     byte ptr [esi+0Ch], 94h
mov     byte ptr [esi+0Dh], 0B0h
mov     byte ptr [esi+14h], 0FFh
mov     byte ptr [esi+15h], 0B0h
mov     byte ptr [esi+1Ch], 94h
mov     byte ptr [esi+1Dh], 0D0h
mov     byte ptr [esi+24h], 0FFh
mov     byte ptr [esi+25h], 0D0h

loc_4389FA:
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6

loc_438A0C:
mov     eax, esi
call    sub_4F87CF
mov     byte ptr [esi+4], 0
mov     byte ptr [esi+5], 0
mov     byte ptr [esi+6], 0
mov     edx, 1
mov     eax, esi
call    sub_4F884E
cmp     word ptr [edi+18h], 0
jz      short loc_438A64
mov     word ptr [esi+8], 60h ; '`'
mov     word ptr [esi+0Ah], 90h
mov     word ptr [esi+0Ch], 0E0h
mov     word ptr [esi+0Eh], 90h
mov     word ptr [esi+10h], 60h ; '`'
mov     word ptr [esi+12h], 0D8h
mov     word ptr [esi+14h], 0E0h
mov     word ptr [esi+16h], 0D8h
jmp     short loc_438A94

loc_438A64:
mov     word ptr [esi+8], 60h ; '`'
mov     word ptr [esi+0Ah], 90h
mov     word ptr [esi+0Ch], 0E0h
mov     word ptr [esi+0Eh], 90h
mov     word ptr [esi+10h], 60h ; '`'
mov     word ptr [esi+12h], 0C8h
mov     word ptr [esi+14h], 0E0h
mov     word ptr [esi+16h], 0C8h

loc_438A94:
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     ds:dword_77E6DC, esi
jmp     loc_4382BC
sub_43864B endp




sub_438AB1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87F0
xor     ecx, ecx
mov     ebx, 100h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
or      ah, 10h
mov     [esi+16h], ax
mov     edx, 1F1h
xor     eax, eax
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 50h ; 'P'
mov     word ptr [esi+0Ah], 160h
mov     word ptr [esi+10h], 150h
mov     word ptr [esi+12h], 160h
mov     word ptr [esi+18h], 50h ; 'P'
mov     word ptr [esi+1Ah], 180h
mov     word ptr [esi+20h], 150h
mov     word ptr [esi+22h], 180h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+14h], 0FFh
mov     byte ptr [esi+15h], 0
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 20h ; ' '
mov     byte ptr [esi+24h], 0FFh
mov     byte ptr [esi+25h], 20h ; ' '
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     eax, esi
call    sub_4F87F0
xor     ecx, ecx
mov     ebx, 100h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
or      ah, 10h
mov     [esi+16h], ax
mov     edx, 1F1h
xor     eax, eax
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 150h
mov     word ptr [esi+0Ah], 160h
mov     word ptr [esi+10h], 230h
mov     word ptr [esi+12h], 160h
mov     word ptr [esi+18h], 150h
mov     word ptr [esi+1Ah], 180h
mov     word ptr [esi+20h], 230h
mov     word ptr [esi+22h], 180h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 20h ; ' '
mov     byte ptr [esi+14h], 0E0h
mov     byte ptr [esi+15h], 20h ; ' '
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 40h ; '@'
mov     byte ptr [esi+24h], 0E0h
mov     byte ptr [esi+25h], 40h ; '@'
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     eax, esi
call    sub_4F87F0
xor     ecx, ecx
mov     ebx, 100h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
or      ah, 10h
mov     [esi+16h], ax
mov     edx, 1F1h
xor     eax, eax
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 40h ; '@'
mov     word ptr [esi+0Ah], 1A0h
mov     word ptr [esi+10h], 140h
mov     word ptr [esi+12h], 1A0h
mov     word ptr [esi+18h], 40h ; '@'
mov     word ptr [esi+1Ah], 1B8h
mov     word ptr [esi+20h], 140h
mov     word ptr [esi+22h], 1B8h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 40h ; '@'
mov     byte ptr [esi+14h], 0FFh
mov     byte ptr [esi+15h], 40h ; '@'
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 58h ; 'X'
mov     byte ptr [esi+24h], 0FFh
mov     byte ptr [esi+25h], 58h ; 'X'
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     eax, esi
call    sub_4F87F0
xor     ecx, ecx
mov     ebx, 100h
xor     edx, edx
xor     eax, eax
call    sub_4F892F
or      ah, 10h
mov     [esi+16h], ax
mov     edx, 1F1h
xor     eax, eax
call    sub_4F8961
mov     [esi+0Eh], ax
mov     word ptr [esi+8], 140h
mov     word ptr [esi+0Ah], 1A0h
mov     word ptr [esi+10h], 240h
mov     word ptr [esi+12h], 1A0h
mov     word ptr [esi+18h], 140h
mov     word ptr [esi+1Ah], 1B8h
mov     word ptr [esi+20h], 240h
mov     word ptr [esi+22h], 1B8h
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 58h ; 'X'
mov     byte ptr [esi+14h], 0FFh
mov     byte ptr [esi+15h], 58h ; 'X'
mov     byte ptr [esi+1Ch], 0
mov     byte ptr [esi+1Dh], 70h ; 'p'
mov     byte ptr [esi+24h], 0FFh
mov     byte ptr [esi+25h], 70h ; 'p'
mov     byte ptr [esi+4], 80h
mov     byte ptr [esi+5], 80h
mov     byte ptr [esi+6], 80h
xor     edx, edx
mov     eax, esi
call    sub_4F884E
mov     edx, esi
mov     eax, ds:dword_77EA74
add     esi, 38h ; '8'
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     ds:dword_77E6DC, esi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_438AB1 endp




sub_438D5A proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 4000400h
mov     dword ptr [ecx+15Ch], 42100400h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+4Ch], 0
mov     dword ptr [ecx+50h], 0
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+78h], offset unk_511F2C
mov     dword ptr [ecx+10h], 0
mov     eax, [ecx+9]
sar     eax, 18h
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, ds:off_51369E[eax*4]
mov     eax, [eax+edx*4]
mov     [ebx], eax
test    eax, eax
jnz     short loc_438DF1
mov     byte ptr [ecx+8], 2
pop     ecx
pop     ebx
retn

loc_438DF1:
mov     word ptr [ebx+4], 0
mov     word ptr [ebx+6], 0
mov     word ptr [ebx+8], 0
mov     byte ptr [ebx+12h], 0
mov     byte ptr [ecx+0ACh], 0FFh
mov     byte ptr [ebx+13h], 0FFh
mov     word ptr [ebx+0Ah], 0
mov     word ptr [ebx+0Ch], 0
mov     word ptr [ebx+0Eh], 0
inc     byte ptr [ecx+8]
mov     edx, ebx
mov     eax, ecx
call    sub_4390E2
pop     ecx
pop     ebx
retn
sub_438D5A endp

db 8Dh, 40h, 0
jpt_438F39 dd offset loc_438EA6 ; jump table for switch statement
dd offset loc_438EFB
dd offset loc_438F40
dd offset loc_438F56
dd offset loc_438F6C
dd offset loc_438F77
dd offset loc_438F81
dd offset loc_438F8B
dd offset loc_438F98
dd offset loc_438FA5
dd offset loc_438FB2
dd offset loc_438FBF
dd offset loc_438FCC
dd offset loc_438FD9
dd offset loc_438FE4
dd offset loc_438FF1
dd offset loc_438FF7
dd offset loc_439013
dd offset loc_439019
dd offset loc_439051
dd offset loc_439061
dd offset loc_439071
dd offset loc_439081
dd offset loc_43908E
dd offset loc_43909B
dd offset loc_4390AF
dd offset loc_4390A8



sub_438EA2 proc near
push    ebx
push    ecx
jmp     short def_438F39 ; jumptable 00438F39 default case

loc_438EA6:             ; jumptable 00438F39 case 1
mov     bx, [ecx+2]
mov     [eax+14h], bx
xor     ecx, ecx
mov     cx, [edx+4]
mov     ebx, [edx]
mov     bx, [ebx+ecx*2+4]
mov     [eax+16h], bx
xor     ecx, ecx
mov     cx, [edx+4]
mov     ebx, [edx]
mov     bx, [ebx+ecx*2+6]
mov     [eax+18h], bx
mov     ecx, [eax+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+1Ch], ecx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
mov     ecx, [eax+16h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+24h], ecx

loc_438EF4:
add     word ptr [edx+4], 4
jmp     short def_438F39 ; jumptable 00438F39 default case

loc_438EFB:             ; jumptable 00438F39 case 2
mov     bx, [ecx+2]
mov     [eax+14h], bx
mov     ecx, [eax+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+1Ch], ecx

loc_438F0F:
add     word ptr [edx+4], 2

def_438F39:             ; jumptable 00438F39 default case
xor     ecx, ecx
mov     cx, [edx+4]
add     ecx, ecx
mov     ebx, [edx]
add     ecx, ebx
mov     bx, [ecx]
test    bx, bx
jz      loc_4390BC
dec     ebx             ; switch 27 cases
cmp     bx, 1Ah
ja      short def_438F39 ; jumptable 00438F39 default case
and     ebx, 0FFFFh
jmp     jpt_438F39[ebx*4] ; switch jump

loc_438F40:             ; jumptable 00438F39 case 3
mov     bx, [ecx+2]
mov     [eax+16h], bx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
jmp     short loc_438F0F

loc_438F56:             ; jumptable 00438F39 case 4
mov     bx, [ecx+2]
mov     [eax+18h], bx
mov     ecx, [eax+16h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+24h], ecx
jmp     short loc_438F0F

loc_438F6C:             ; jumptable 00438F39 case 5
mov     bl, [ecx+2]
mov     [eax+0ACh], bl
jmp     short loc_438F0F

loc_438F77:             ; jumptable 00438F39 case 6
mov     bx, [ecx+2]
mov     [eax+44h], bx
jmp     short loc_438F0F

loc_438F81:             ; jumptable 00438F39 case 7
mov     bx, [ecx+2]
mov     [eax+4Ch], bx
jmp     short loc_438F0F

loc_438F8B:             ; jumptable 00438F39 case 8
mov     bx, [ecx+2]
mov     [eax+46h], bx
jmp     loc_438F0F

loc_438F98:             ; jumptable 00438F39 case 9
mov     bx, [ecx+2]
mov     [eax+4Eh], bx
jmp     loc_438F0F

loc_438FA5:             ; jumptable 00438F39 case 10
mov     bx, [ecx+2]
mov     [eax+48h], bx
jmp     loc_438F0F

loc_438FB2:             ; jumptable 00438F39 case 11
mov     bx, [ecx+2]
mov     [eax+50h], bx
jmp     loc_438F0F

loc_438FBF:             ; jumptable 00438F39 case 12
mov     bx, [ecx+2]
mov     [eax+56h], bx
jmp     loc_438F0F

loc_438FCC:             ; jumptable 00438F39 case 13
mov     bx, [ecx+2]
mov     [edx+8], bx
jmp     loc_438F0F

loc_438FD9:             ; jumptable 00438F39 case 14
mov     bl, [ecx+2]
mov     [edx+13h], bl
jmp     loc_438F0F

loc_438FE4:             ; jumptable 00438F39 case 15
mov     byte ptr [edx+12h], 0

loc_438FE8:
inc     word ptr [edx+4]
jmp     def_438F39      ; jumptable 00438F39 default case

loc_438FF1:             ; jumptable 00438F39 case 16
mov     byte ptr [edx+12h], 1
jmp     short loc_438FE8

loc_438FF7:             ; jumptable 00438F39 case 17
mov     byte ptr [eax+0Dh], 1
xor     ecx, ecx
mov     cx, [edx+4]
mov     ebx, [edx]
mov     bl, [ebx+ecx*2+2]
mov     [eax+0Eh], bl
mov     byte ptr [eax+0Fh], 0
jmp     loc_438F0F

loc_439013:             ; jumptable 00438F39 case 18
mov     byte ptr [eax+0Dh], 0
jmp     short loc_438FE8

loc_439019:             ; jumptable 00438F39 case 19
mov     bx, [ecx+2]
mov     [eax+158h], bx
xor     ecx, ecx
mov     cx, [edx+4]
mov     ebx, [edx]
mov     bx, [ebx+ecx*2+4]
mov     [eax+15Ah], bx
xor     ecx, ecx
mov     cx, [edx+4]
mov     ebx, [edx]
mov     bx, [ebx+ecx*2+6]
mov     [eax+15Ch], bx
jmp     loc_438EF4

loc_439051:             ; jumptable 00438F39 case 20
mov     bx, [ecx+2]
mov     [eax+158h], bx
jmp     loc_438F0F

loc_439061:             ; jumptable 00438F39 case 21
mov     bx, [ecx+2]
mov     [eax+15Ah], bx
jmp     loc_438F0F

loc_439071:             ; jumptable 00438F39 case 22
mov     bx, [ecx+2]
mov     [eax+15Ch], bx
jmp     loc_438F0F

loc_439081:             ; jumptable 00438F39 case 23
mov     bx, [ecx+2]
mov     [edx+0Ah], bx
jmp     loc_438F0F

loc_43908E:             ; jumptable 00438F39 case 24
mov     bx, [ecx+2]
mov     [edx+0Ch], bx
jmp     loc_438F0F

loc_43909B:             ; jumptable 00438F39 case 25
mov     bx, [ecx+2]
mov     [edx+0Eh], bx
jmp     loc_438F0F

loc_4390A8:             ; jumptable 00438F39 case 27
mov     byte ptr [eax+8], 2
pop     ecx
pop     ebx
retn

loc_4390AF:             ; jumptable 00438F39 case 26
mov     bx, [ecx+2]
mov     [edx+4], bx
jmp     def_438F39      ; jumptable 00438F39 default case

loc_4390BC:
mov     ax, [ecx+2]
dec     eax
mov     [edx+6], ax
add     word ptr [edx+4], 2
pop     ecx
pop     ebx
retn
sub_438EA2 endp

align 2
jpt_43920B dd offset loc_439212 ; jump table for switch statement
dd offset loc_439276
dd offset loc_43929A
dd offset loc_4392C1
dd offset loc_4392D8



sub_4390E2 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     [esp+18h+var_18], edx
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
mov     edx, [esp+18h+var_18]
mov     dl, [edx+13h]
mov     ecx, [esp+18h+var_18]
mov     [ecx+14h], dl
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+5Ch]
lea     esi, [ebp+54h]
movsd
movsd
mov     bx, [ecx+6]
test    bx, bx
jnz     short loc_439133
mov     edx, ecx
call    sub_438EA2
jmp     short loc_43913C

loc_439133:
mov     edx, ecx
mov     ecx, ebx
dec     ecx
mov     [edx+6], cx

loc_43913C:
mov     dx, [ebp+4Ch]
add     [ebp+44h], dx
mov     dx, [ebp+4Eh]
add     [ebp+46h], dx
mov     dx, [ebp+50h]
add     [ebp+48h], dx
mov     edx, [esp+18h+var_18]
cmp     byte ptr [edx+12h], 0
jz      short loc_4391A1
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 0Ch
add     [ebp+1Ch], edx
mov     edx, [ebp+44h]
sar     edx, 10h
shl     edx, 0Ch
add     [ebp+20h], edx
mov     edx, [ebp+46h]
sar     edx, 10h
shl     edx, 0Ch
add     [ebp+24h], edx
mov     edx, [ebp+1Ch]
sar     edx, 10h
mov     [ebp+14h], dx
mov     edx, [ebp+20h]
sar     edx, 10h
mov     [ebp+16h], dx
mov     edx, [ebp+24h]
sar     edx, 10h
mov     [ebp+18h], dx
jmp     short loc_4391BA

loc_4391A1:
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
mov     eax, ebp
call    sub_4DD43B

loc_4391BA:
mov     edx, [esp+18h+var_18]
mov     dx, [edx+8]
add     [ebp+56h], dx
mov     edx, [esp+18h+var_18]
mov     dx, [edx+0Ah]
add     [ebp+158h], dx
mov     edx, [esp+18h+var_18]
mov     dx, [edx+0Ch]
add     [ebp+15Ah], dx
mov     edx, [esp+18h+var_18]
mov     dx, [edx+0Eh]
add     [ebp+15Ch], dx
cmp     byte ptr [ebp+0Dh], 0
jz      def_43920B      ; jumptable 0043920B default case
mov     dl, [ebp+0Eh]
cmp     dl, 4           ; switch 5 cases
ja      def_43920B      ; jumptable 0043920B default case
and     edx, 0FFh
jmp     jpt_43920B[edx*4] ; switch jump

loc_439212:             ; jumptable 0043920B case 0
mov     ch, [ebp+0Fh]
test    ch, ch
jnz     short loc_439230
xor     ebx, ebx
xor     edx, edx
mov     eax, 0D6h
call    sub_4D89E4
mov     byte ptr [ebp+0Fh], 12h
jmp     def_43920B      ; jumptable 0043920B default case

loc_439230:
mov     al, ch
dec     al
mov     [ebp+0Fh], al

def_43920B:             ; jumptable 0043920B default case
mov     edx, [esp+18h+var_18]
mov     dl, [edx+13h]
mov     ecx, [esp+18h+var_18]
cmp     dl, [ecx+14h]
jz      short loc_43924E
mov     dl, [ecx+13h]
mov     [ebp+110h], dl

loc_43924E:
mov     dl, [ebp+0ADh]
cmp     dl, [ebp+0ACh]
jz      loc_4392E3
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     loc_4392EA

loc_439276:             ; jumptable 0043920B case 1
mov     bh, [ebp+0Fh]
test    bh, bh
jnz     short loc_439291
xor     ebx, ebx
xor     edx, edx
mov     eax, 0D7h
call    sub_4D89E4
mov     byte ptr [ebp+0Fh], 0Ah
jmp     short def_43920B ; jumptable 0043920B default case

loc_439291:
mov     cl, bh
dec     cl
mov     [ebp+0Fh], cl
jmp     short def_43920B ; jumptable 0043920B default case

loc_43929A:             ; jumptable 0043920B case 2
mov     dh, [ebp+0Fh]
test    dh, dh
jnz     short loc_4392B5
xor     ebx, ebx
xor     edx, edx
mov     eax, 0D7h
call    sub_4D89E4
mov     byte ptr [ebp+0Fh], 8
jmp     short def_43920B ; jumptable 0043920B default case

loc_4392B5:
mov     bl, dh
dec     bl
mov     [ebp+0Fh], bl
jmp     def_43920B      ; jumptable 0043920B default case

loc_4392C1:             ; jumptable 0043920B case 3
xor     ebx, ebx
xor     edx, edx
mov     eax, 0DAh

loc_4392CA:
call    sub_4D89E4
mov     byte ptr [ebp+0Dh], 0
jmp     def_43920B      ; jumptable 0043920B default case

loc_4392D8:             ; jumptable 0043920B case 4
xor     ebx, ebx
xor     edx, edx
mov     eax, 0D9h
jmp     short loc_4392CA

loc_4392E3:
mov     eax, ebp
call    sub_4DEADD

loc_4392EA:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4390E2 endp



; Attributes: thunk

sub_4392F3 proc near
jmp     sub_4DE2F6
sub_4392F3 endp


loc_4392F8:
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+8]
lea     edx, [eax+408h]
call    ds:funcs_439305[ecx*4]
pop     edx
pop     ecx
retn



sub_43930F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ax, [eax+0Ah]
cmp     ax, 1
jb      short loc_439331
jbe     short loc_439386
cmp     ax, 2
jz      loc_4393BC
jmp     loc_4393DD

loc_439331:
test    ax, ax
jnz     loc_4393DD
cmp     ds:word_6E23D6, 0
jnz     loc_4393DD
xor     edx, edx
jmp     short loc_439352

loc_43934C:
inc     edx
cmp     edx, 10h
jge     short loc_43937A

loc_439352:
call    sub_4DDF54
test    eax, eax
jz      short loc_43934C
mov     byte ptr [eax], 1
mov     [eax+3], dl
mov     byte ptr [eax+2], 0
mov     word ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     bl, [ecx+8]
mov     [eax+0Ch], bl
jmp     short loc_43934C

loc_43937A:
mov     word ptr [ecx+6], 12Ch

loc_439380:
inc     word ptr [ecx+0Ah]
jmp     short loc_4393DD

loc_439386:
mov     bx, [ecx+6]
test    bx, bx
jnz     short loc_4393B3
mov     edx, 80h
mov     eax, 2
call    sub_4DC979
mov     di, [ecx+8]
inc     edi
mov     [ecx+8], di
cmp     di, 8
jle     short loc_439380
mov     [ecx+8], bx
jmp     short loc_439380

loc_4393B3:
mov     esi, ebx
dec     esi
mov     [ecx+6], si
jmp     short loc_4393DD

loc_4393BC:
cmp     ds:word_6E23D6, 0
jnz     short loc_4393DD
mov     ah, [ecx]
cmp     ah, 4
jz      short loc_4393D7
cmp     ah, 5
jz      short loc_4393D7
cmp     ah, 6
jnz     short loc_4393DD

loc_4393D7:
mov     word ptr [ecx+0Ah], 0

loc_4393DD:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43930F endp




sub_4393E3 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+2Ch]
mov     bl, [eax+0Dh]
dec     bl
mov     [eax+0Dh], bl
jz      short loc_4393F9
cmp     byte ptr [edx+8], 2
jnz     short loc_439400

loc_4393F9:
mov     byte ptr [eax+0Dh], 0
inc     byte ptr [eax+8]

loc_439400:
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     ecx, edx
shl     ecx, 8
add     ecx, edx
shl     edx, 10h
add     edx, ecx
add     edx, 2E000000h
mov     [eax+18h], edx
movsx   dx, byte ptr [eax+0Fh]
add     [eax+24h], dx
mov     dx, [eax+28h]
add     [eax+1Eh], dx
pop     edx
pop     ecx
pop     ebx
retn
sub_4393E3 endp




sub_439430 proc near
or      byte ptr [eax], 2
inc     byte ptr [eax+8]
jmp     short sub_4393E3
sub_439430 endp



; Attributes: thunk

sub_439438 proc near
jmp     sub_4DE3EA
sub_439438 endp




sub_43943D proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_439443[edx*4]
pop     edx
retn
sub_43943D endp




sub_43944C proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     edx, eax
mov     ah, [eax+0Bh]
inc     ah
mov     [edx+0Bh], ah
cmp     ah, 8
jnz     loc_43952A
call    sub_4DE13B
mov     ecx, eax
mov     ebx, eax
test    eax, eax
jz      loc_43952A
mov     byte ptr [eax], 1
mov     byte ptr [eax+3], 1
mov     al, [edx+6]
mov     [ecx+6], al
mov     byte ptr [ecx+0Ch], 0
call    rand_
mov     [esp+14h+var_14], eax
mov     al, byte ptr [esp+14h+var_14]
and     al, 7
add     al, al
add     al, 40h ; '@'
mov     [ecx+0Dh], al
call    rand_
mov     esi, eax
and     esi, 0Fh
mov     ax, [edx+1Ch]
add     eax, esi
mov     [ecx+1Ch], ax
mov     ax, [edx+1Eh]
mov     [ecx+1Eh], ax
call    rand_
mov     esi, eax
and     esi, 0Fh
mov     ax, [edx+20h]
add     eax, esi
mov     [ecx+20h], ax
mov     dword ptr [ecx+14h], 3D48004Eh
call    rand_
mov     [esp+14h+var_14], eax
mov     al, byte ptr [esp+14h+var_14]
and     al, 3
shl     al, 5
add     al, 20h ; ' '
mov     [ecx+22h], al
mov     byte ptr [ecx+23h], 0
movsx   ax, byte ptr [edx+0Eh]
mov     [ecx+24h], ax
mov     al, [edx+0Fh]
mov     [ecx+0Fh], al
mov     eax, [edx+28h]
mov     [ecx+28h], eax
mov     [ecx+2Ch], edx
xor     ecx, ecx

loc_439506:
xor     eax, eax
mov     ax, [edx+26h]
cmp     ecx, eax
jge     short loc_43951A
mov     eax, ebx
call    sub_43943D
inc     ecx
jmp     short loc_439506

loc_43951A:
mov     word ptr [edx+26h], 0
call    rand_
and     al, 3
mov     [edx+0Bh], al

loc_43952A:
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43944C endp




sub_439532 proc near
cmp     byte ptr [eax+3], 1
jz      sub_43943D
cmp     byte ptr [eax+8], 2
jnz     sub_43944C
jmp     sub_4DE3EA
sub_439532 endp




sub_43954B proc near

arg_0= dword ptr  4
arg_4= byte ptr  8

push    esi
mov     esi, eax
mov     dh, dl
mov     dl, bl
mov     ebx, ecx
call    sub_4DE13B
mov     ecx, eax
test    eax, eax
jz      short loc_4395BA
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
mov     [eax+0Eh], dh
mov     [eax+0Fh], dl
mov     dx, [esi]
mov     [eax+1Ch], dx
mov     dx, [esi+2]
mov     [eax+1Eh], dx
mov     dx, [esi+4]
mov     [eax+20h], dx
mov     [eax+26h], bx
cmp     [esp+4+arg_4], 0
jz      short loc_43959C
or      byte ptr [eax+6], 20h
jmp     short loc_4395A0

loc_43959C:
and     byte ptr [eax+6], 0DFh

loc_4395A0:
mov     eax, [esp+4+arg_0]
mov     [ecx+28h], eax
xor     edx, edx

loc_4395A9:
movsx   eax, bx
cmp     edx, eax
jge     short loc_4395BA
mov     eax, ecx
call    sub_43944C
inc     edx
jmp     short loc_4395A9

loc_4395BA:
mov     eax, ecx
pop     esi
retn    8
sub_43954B endp




sub_4395C0 proc near
push    ebx
push    ecx
mov     ecx, eax
xor     eax, eax

loc_4395C6:
xor     bl, bl
mov     byte ptr ds:dword_559AB0[eax*8], bl
inc     eax
cmp     eax, 0Ah
jl      short loc_4395C6

unknown_libname_38:     ; Watcom v9-*1.5  32bit NT runtime
mov     ds:dword_559AB0, offset sub_500201 ; Watcom v9-*1.5  32bit common runtime
mov     ds:dword_559AB4, 20204028h
mov     ds:dword_559AB8, 1E0101h
mov     ds:dword_559ABC, 28283808h
mov     ds:dword_559AC0, 0FFEC0101h
mov     ds:dword_559AC4, 10101004h

unknown_libname_39:     ; Watcom v9-*1.5  32bit NT runtime
mov     ds:dword_559AC8, 0FFE20201h ; Watcom v9-*1.5  32bit common runtime
mov     ds:dword_559ACC, 38383808h
mov     ds:dword_559AD0, 0FFCE0101h
mov     ds:dword_559AD4, 4040400Ah
mov     ds:dword_559AD8, 0FF9C0201h
mov     ds:dword_559ADC, 20203012h
mov     ds:dword_559AE0, 0FF7E0101h
mov     ds:dword_559AE4, 1010101Ah
mov     ds:dword_559AE8, 0FF6A0201h
mov     ds:dword_559AEC, 28282824h
inc     byte ptr [ecx+8]
pop     ecx
pop     ebx
retn
sub_4395C0 endp

; START OF FUNCTION CHUNK FOR sub_43979C

loc_43967B:
add     ecx, 8
inc     esi
cmp     esi, 0Ah
jge     loc_439792

loc_439688:
cmp     byte ptr [ecx], 0
jz      short loc_43967B
mov     edx, [ebx+1Ah]
sar     edx, 10h
mov     edi, [ecx]
sar     edi, 10h
sub     edx, 0A0h
imul    edx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
add     eax, 0A0h
mov     [esp+24h+var_20], eax
mov     edx, [ebx+1Ch]
sar     edx, 10h
sub     edx, 78h ; 'x'
imul    edx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
add     eax, 78h ; 'x'
mov     [esp+24h+var_1C], eax
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
or      byte ptr [edx+7], 2
mov     al, [ecx+5]
mov     [edx+4], al
mov     al, [ecx+6]
mov     [edx+5], al
mov     al, [ecx+7]
mov     [edx+6], al
xor     eax, eax
mov     al, [ecx+4]
mov     edi, [esp+24h+var_20]
sub     edi, eax
mov     [edx+18h], di
mov     eax, edi
mov     [edx+8], di
xor     eax, edi
mov     al, [ecx+4]
add     eax, eax
mov     [esp+24h+var_24], eax
mov     eax, edi
mov     edi, [esp+24h+var_24]
add     eax, edi
mov     [edx+20h], ax
mov     [edx+10h], ax
xor     eax, eax
mov     al, [ecx+4]
mov     edi, [esp+24h+var_1C]
sub     edi, eax
mov     [edx+12h], di
mov     eax, edi
mov     [edx+0Ah], di
xor     eax, edi
mov     al, [ecx+4]
add     eax, eax
add     edi, eax
mov     [edx+22h], di
mov     [edx+1Ah], di
mov     al, [ecx+1]
shl     al, 6
add     al, 40h ; '@'
mov     [edx+1Ch], al
mov     [edx+0Ch], al
add     al, 3Fh ; '?'
mov     [edx+24h], al
mov     [edx+14h], al
mov     byte ptr [edx+15h], 0C0h
mov     al, [edx+15h]
mov     [edx+0Dh], al
mov     byte ptr [edx+25h], 0FFh
mov     al, [edx+25h]
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 7F48h
mov     word ptr [edx+16h], 3Bh ; ';'
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
jmp     loc_43967B

loc_439792:
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx

locret_43979B:
retn
; END OF FUNCTION CHUNK FOR sub_43979C



sub_43979C proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 0043967B SIZE 00000121 BYTES

cmp     byte ptr [eax+0Dh], 0
jz      short locret_43979B
cmp     byte ptr [eax+8], 0
jz      sub_4395C0
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebx, eax
cmp     byte ptr [eax+0Dh], 0
jz      short loc_439792
xor     esi, esi
mov     ecx, offset dword_559AB0
mov     ebp, 64h ; 'd'
jmp     loc_439688
sub_43979C endp


loc_4397CE:
push    edx
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_4397E3
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4397DA[edx*4]
pop     edx
retn

loc_4397E3:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4397E8[edx*4]
pop     edx
retn



sub_4397F1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
test    byte ptr [eax+0Bh], 3
jnz     loc_4398DB
call    sub_4DE13B
mov     ecx, eax
mov     esi, eax
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 2
mov     byte ptr [eax+0Dh], 1
mov     al, [ebx+0Eh]
mov     [ecx+0Eh], al
mov     ax, [ebx+1Ch]
mov     [ecx+1Ch], ax
mov     ax, [ebx+1Eh]
mov     [ecx+1Eh], ax
mov     ax, [ebx+20h]
mov     [ecx+20h], ax
call    rand_
mov     edx, eax
mov     edi, 14h
sar     edx, 1Fh
idiv    edi
mov     eax, edx
mov     edx, [ecx+1Ah]
sar     edx, 10h
sub     eax, 0Ah
add     edx, eax
mov     [ecx+1Ch], dx
call    rand_
mov     edx, eax
sar     edx, 8
mov     edi, 26h ; '&'
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     eax, edx
mov     edx, [ecx+1Ch]
sar     edx, 10h
sub     eax, 13h
add     edx, eax
mov     [ecx+1Eh], dx
call    rand_
mov     edx, eax
sar     edx, 4
mov     edi, 14h
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     eax, edx
mov     edx, [ecx+1Eh]
sar     edx, 10h
sub     eax, 0Ah
add     edx, eax
mov     [ecx+20h], dx
cmp     byte ptr [ecx+0Eh], 7
jnz     short loc_4398BB
mov     dword ptr [ecx+14h], 3D48000Eh
jmp     short loc_4398C2

loc_4398BB:
mov     dword ptr [ecx+14h], 3D48002Eh

loc_4398C2:
mov     dword ptr [esi+18h], 2E000000h
mov     byte ptr [esi+22h], 0A0h
mov     byte ptr [esi+23h], 60h ; '`'
mov     word ptr [esi+24h], 3
mov     byte ptr [esi+0Bh], 18h

loc_4398DB:
inc     byte ptr [ebx+0Bh]
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4397F1 endp




sub_4398E4 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
test    byte ptr [eax+0Bh], 7
jnz     loc_43997E
call    sub_4DE13B
mov     ecx, eax
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 2
mov     byte ptr [eax+0Dh], 1
mov     bl, [edx+0Eh]
mov     [eax+0Eh], bl
mov     bx, [edx+1Ch]
mov     [eax+1Ch], bx
mov     bx, [edx+20h]
mov     [eax+20h], bx
mov     bx, [edx+1Eh]
mov     [eax+1Eh], bx
cmp     byte ptr [eax+0Eh], 7
jnz     short loc_43993A
mov     dword ptr [eax+14h], 3C880006h
jmp     short loc_439941

loc_43993A:
mov     dword ptr [eax+14h], 3C880026h

loc_439941:
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     eax, ds:dword_5136F0[eax*4]
shl     eax, 7
or      eax, 2E000000h
mov     [ecx+18h], eax
mov     byte ptr [ecx+22h], 80h
mov     byte ptr [ecx+23h], 0
mov     word ptr [ecx+24h], 1
mov     byte ptr [ecx+0Bh], 20h ; ' '
mov     dword ptr [ecx+28h], 100h
xor     eax, eax
mov     ax, [ecx+24h]
shl     eax, 8
mov     [ecx+2Ch], eax

loc_43997E:
mov     bh, [edx+0Bh]
inc     bh
mov     [edx+0Bh], bh
cmp     bh, 10h
jbe     short loc_439992
mov     eax, edx
call    sub_4DE3EA

loc_439992:
pop     edx
pop     ecx
pop     ebx
sub_4398E4 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_22]



sub_439996 proc near
push    edx
mov     dl, [eax+3]
cmp     dl, 1
jb      short loc_4399A3
jbe     short loc_4399D7
jmp     short loc_4399FE

loc_4399A3:
test    dl, dl
jnz     short loc_4399FE
cmp     byte ptr [eax+0Bh], 8
jbe     short loc_4399C2
mov     edx, [eax+0Bh]
sar     edx, 18h
mov     edx, ds:dword_5136F0[edx*4]
shl     edx, 3
add     [eax+18h], edx
jmp     short loc_4399FE

loc_4399C2:
mov     edx, [eax+0Bh]
sar     edx, 18h
mov     edx, ds:dword_5136F0[edx*4]
shl     edx, 4
sub     [eax+18h], edx
jmp     short loc_4399FE

loc_4399D7:
mov     edx, [eax+0Bh]
sar     edx, 18h
mov     edx, ds:dword_5136F0[edx*4]
shl     edx, 2
sub     [eax+18h], edx
mov     edx, [eax+28h]
add     [eax+2Ch], edx
sub     dword ptr [eax+28h], 8
mov     edx, [eax+2Ch]
shr     edx, 8
mov     [eax+24h], dx

loc_4399FE:
mov     dh, [eax+0Bh]
dec     dh
mov     [eax+0Bh], dh
jnz     short loc_439A0B
inc     byte ptr [eax+8]

loc_439A0B:
pop     edx
retn
sub_439996 endp



; Attributes: thunk

sub_439A0D proc near
jmp     sub_4DE3EA
sub_439A0D endp




sub_439A12 proc near
push    edx
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_439A27
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_439A1E[edx*4]
pop     edx
retn

loc_439A27:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_439A2C[edx*4]
pop     edx
retn
sub_439A12 endp




sub_439A35 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
test    byte ptr [eax+9], 3
jnz     loc_439AE8
call    sub_4DE13B
mov     ecx, eax
mov     ebx, eax
test    eax, eax
jz      loc_439AF7
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 3
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 3
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 0
call    rand_
xor     ah, ah
and     al, 7
add     ax, [edx+1Ch]
sub     eax, 3
mov     [ecx+1Ch], ax
cmp     byte ptr [edx+0Fh], 0
jnz     short loc_439A91
mov     ax, [edx+1Eh]
add     eax, 30h ; '0'
jmp     short loc_439A9A

loc_439A91:
mov     ax, [edx+1Eh]
add     eax, 18h

loc_439A9A:
mov     [ecx+1Eh], ax
call    rand_
xor     ah, ah
and     al, 7
add     ax, [edx+20h]
sub     eax, 3
mov     [ebx+20h], ax
mov     dword ptr [ebx+14h], 3D080026h
mov     dword ptr [ebx+18h], 2C804040h
mov     al, ds:byte_513724
mov     [ebx+22h], al
mov     byte ptr [ebx+23h], 0
cmp     byte ptr [edx+0Fh], 0
jnz     short loc_439ADA
mov     word ptr [ebx+24h], 30h ; '0'
jmp     short loc_439AE0

loc_439ADA:
mov     word ptr [ebx+24h], 18h

loc_439AE0:
mov     byte ptr [ebx+8], 0
mov     byte ptr [ebx+0Ah], 1

loc_439AE8:
cmp     byte ptr [edx+9], 4
jb      short loc_439AF4
inc     byte ptr [edx+8]
inc     byte ptr [edx+0Dh]

loc_439AF4:
inc     byte ptr [edx+9]

loc_439AF7:
pop     edx
pop     ecx
pop     ebx
sub_439A35 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_48]



sub_439AFB proc near
push    edx
add     word ptr [eax+1Eh], 6
xor     edx, edx
mov     dl, [eax+0Ah]
mov     dl, ds:byte_513724[edx*2]
mov     [eax+22h], dl
inc     byte ptr [eax+0Ah]
xor     edx, edx
mov     dl, [eax+0Ah]
mov     edx, ds:(off_513720+2)[edx*2]
sar     edx, 10h
cmp     edx, 0FFFFFFFFh
jnz     short loc_439B2A
inc     byte ptr [eax+8]

loc_439B2A:
pop     edx
retn
sub_439AFB endp



; Attributes: thunk

sub_439B2C proc near
jmp     sub_4DE3EA
sub_439B2C endp




sub_439B31 proc near
push    edx
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_439B46
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_439B3D[edx*4]
pop     edx
retn

loc_439B46:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_439B4B[edx*4]
pop     edx
retn
sub_439B31 endp




sub_439B54 proc near
push    edx
mov     edx, eax
test    byte ptr [eax+9], 3
jnz     short loc_439B64
mov     eax, edx
call    sub_439BE2

loc_439B64:
cmp     byte ptr [edx+9], 4
jb      short loc_439B70
inc     byte ptr [edx+8]
inc     byte ptr [edx+0Dh]

loc_439B70:
inc     byte ptr [edx+9]
pop     edx
retn
sub_439B54 endp




sub_439B75 proc near
push    ebx
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
movsx   dx, ds:byte_513749[edx*4]
add     [eax+1Eh], dx
movsx   dx, byte ptr [eax+0Eh]
add     [eax+20h], dx
xor     edx, edx
mov     dl, [eax+0Ah]
mov     dl, ds:byte_513748[edx*4]
mov     [eax+22h], dl
xor     edx, edx
mov     dl, [eax+0Ah]
movsx   dx, ds:byte_51374B[edx*4]
add     [eax+24h], dx
mov     dl, [eax+9]
dec     dl
mov     [eax+9], dl
jnz     short loc_439BDA
mov     bl, [eax+0Ah]
inc     bl
mov     [eax+0Ah], bl
xor     edx, edx
mov     dl, bl
mov     dl, ds:byte_51374A[edx*4]
mov     [eax+9], dl
test    dl, dl
jnz     short loc_439BDA
inc     byte ptr [eax+8]

loc_439BDA:
pop     edx
pop     ebx
retn
sub_439B75 endp



; Attributes: thunk

sub_439BDD proc near
jmp     sub_4DE3EA
sub_439BDD endp




sub_439BE2 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebx, eax
xor     esi, esi
jmp     loc_439CB0

loc_439BF4:
mov     ax, [ebx+20h]
add     eax, 40h ; '@'
mov     [esp+20h+var_1C], eax
call    rand_
xor     ah, ah
and     al, 0Fh
add     eax, [esp+20h+var_1C]
sub     eax, 7
mov     [edx+20h], ax
call    rand_
mov     [esp+20h+var_20], eax
mov     al, byte ptr [esp+20h+var_20]
and     al, 7
add     al, 8

loc_439C24:
mov     [edx+0Eh], al
mov     ebp, [ebx+1Ah]
sar     ebp, 10h
movsx   edx, si
mov     edi, 0Ch
mov     eax, edx
sar     edx, 1Fh
idiv    edi
shl     edx, 6
add     ebp, 40h ; '@'
add     edx, ebp
call    rand_
and     eax, 3Fh
sub     edx, 180h
add     eax, edx
sub     eax, 1Fh
mov     [ecx+1Ch], ax
mov     ax, [ebx+1Eh]
mov     [ecx+1Eh], ax
mov     dword ptr [ecx+14h], 3D48002Eh
mov     dword ptr [ecx+18h], 2E403028h
mov     al, ds:byte_513748
mov     [ecx+22h], al
mov     byte ptr [ecx+23h], 0
call    rand_
xor     ah, ah
and     al, 7
add     eax, 1Dh
mov     [ecx+24h], ax
mov     byte ptr [ecx+8], 0
call    rand_
and     al, 3
mov     dl, ds:byte_51374A
add     dl, al
mov     [ecx+9], dl
mov     byte ptr [ecx+0Ah], 0

loc_439CA9:
inc     esi
cmp     si, 18h
jge     short loc_439D0F

loc_439CB0:
call    sub_4DE13B
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      short loc_439CA9
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 4
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 4
mov     byte ptr [eax+0Dh], 1
cmp     si, 0Ch
jge     loc_439BF4
mov     ax, [ebx+20h]
sub     eax, 40h ; '@'
mov     [esp+20h+var_1C], eax
call    rand_
xor     ah, ah
and     al, 0Fh
add     eax, [esp+20h+var_1C]
sub     eax, 7
mov     [edx+20h], ax
call    rand_
mov     [esp+20h+var_20], eax
mov     al, byte ptr [esp+20h+var_20]
and     al, 0Fh
neg     al
add     al, 7
jmp     loc_439C24

loc_439D0F:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_439BE2 endp




sub_439D19 proc near
push    edx
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_439D2E
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_439D25[edx*4]
pop     edx
retn

loc_439D2E:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_439D33[edx*4]
pop     edx
retn
sub_439D19 endp




sub_439D3C proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
test    byte ptr [eax+0Bh], 0Fh
jnz     loc_439DC4
call    sub_4DE13B
mov     ecx, eax
mov     byte ptr [eax], 3
mov     bl, [edx+0Ch]
mov     [eax+2], bl
mov     bl, [edx+3]
mov     [eax+3], bl
mov     bl, [edx+0Ch]
mov     [eax+0Ch], bl
mov     byte ptr [eax+0Dh], 1
mov     bl, [edx+0Eh]
mov     [eax+0Eh], bl
mov     bx, [edx+1Ch]
mov     [eax+1Ch], bx
mov     bx, [edx+1Eh]
mov     [eax+1Eh], bx
mov     bx, [edx+20h]
mov     [eax+20h], bx
cmp     byte ptr [eax+0Eh], 7
jnz     short loc_439D98
mov     dword ptr [eax+14h], 3D48000Eh
jmp     short loc_439D9F

loc_439D98:
mov     dword ptr [eax+14h], 3D48002Eh

loc_439D9F:
mov     dword ptr [ecx+18h], 2E000000h
mov     byte ptr [ecx+22h], 0A0h
mov     byte ptr [ecx+23h], 60h ; '`'
mov     word ptr [ecx+24h], 10h
cmp     byte ptr [ecx+3], 0
jnz     short loc_439DC0
mov     byte ptr [ecx+0Bh], 4Eh ; 'N'
jmp     short loc_439DC4

loc_439DC0:
mov     byte ptr [ecx+0Bh], 0F0h

loc_439DC4:
cmp     byte ptr [edx+0Bh], 10h
jb      short loc_439DD1
mov     eax, edx
call    sub_4DE3EA

loc_439DD1:
inc     byte ptr [edx+0Bh]
pop     edx
pop     ecx
pop     ebx
retn
sub_439D3C endp




sub_439DD8 proc near
push    ebx
push    edx
mov     dl, [eax+3]
test    dl, dl
jbe     short loc_439DE8
cmp     dl, 1
jz      short loc_439E0A
jmp     short loc_439E23

loc_439DE8:
mov     dh, [eax+0Bh]
cmp     dh, 3Eh ; '>'
ja      short loc_439E10
cmp     dh, 20h ; ' '
ja      short loc_439E23
mov     edx, [eax+0Bh]
sar     edx, 18h
mov     edx, ds:dword_51376C[edx*4]
shl     edx, 2
sub     [eax+18h], edx
jmp     short loc_439E23

loc_439E0A:
cmp     byte ptr [eax+0Bh], 0E0h
jbe     short loc_439E23

loc_439E10:
mov     edx, [eax+0Bh]
sar     edx, 18h
mov     edx, ds:dword_51376C[edx*4]
shl     edx, 3
add     [eax+18h], edx

loc_439E23:
mov     bh, [eax+0Bh]
dec     bh
mov     [eax+0Bh], bh
jnz     short loc_439E30
inc     byte ptr [eax+8]

loc_439E30:
pop     edx
pop     ebx
retn
sub_439DD8 endp



; Attributes: thunk

sub_439E33 proc near
jmp     sub_4DE3EA
sub_439E33 endp




sub_439E38 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 40h
mov     esi, eax
lea     ecx, [eax+28h]
add     dword ptr [ecx+0Ch], 8000h
mov     ebx, [ecx+10h]
sub     ebx, 147Ah
mov     [ecx+10h], ebx
mov     edx, ebx
sar     edx, 10h
mov     eax, [ecx+4]
sar     eax, 10h
add     eax, edx
mov     [ecx+6], ax
mov     edx, [ecx+0Ch]
sar     edx, 10h
mov     eax, [ecx+2]
sar     eax, 10h
add     eax, edx
mov     [ecx+4], ax
and     byte ptr [ecx+5], 0Fh
cmp     word ptr [ecx+6], 0
jge     short loc_439E92
mov     eax, esi
call    sub_4DE3EA
jmp     loc_439F24

loc_439E92:
mov     edx, [ecx+4]
sar     edx, 10h
mov     eax, [ecx+2]
sar     eax, 10h
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
mov     [esp+54h+var_1C], ax
mov     edx, [ecx+4]
sar     edx, 10h
mov     eax, [ecx+2]
sar     eax, 10h
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
mov     [esp+54h+var_1A], ax
xor     ebx, ebx
mov     [esp+54h+var_18], bx
mov     eax, esp
call    sub_4EF184
mov     eax, [ecx+6]
sar     eax, 10h
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+54h+var_24]
lea     edx, [esp+54h+var_1C]
mov     eax, esp
call    sub_4EF2DC
mov     eax, [ecx]
mov     ax, [eax+1Ch]
mov     edi, [esp+54h+var_24]
add     eax, edi
mov     [esi+1Ch], ax
mov     eax, [ecx]
mov     ax, [eax+1Eh]
mov     edx, [esp+54h+var_24+2]
add     eax, edx
mov     [esi+1Eh], ax
mov     eax, [ecx]
mov     ax, [eax+20h]
mov     ebx, [esp+54h+var_20]
add     eax, ebx
mov     [esi+20h], ax

loc_439F24:
add     esp, 40h

loc_439F27:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_439E38 endp




sub_439F2D proc near
cmp     byte ptr [eax+8], 0
jnz     sub_439E38
or      byte ptr [eax], 2
inc     byte ptr [eax+8]
jmp     sub_439E38
sub_439F2D endp




sub_439F42 proc near
push    edx
or      byte ptr [eax], 2
mov     byte ptr [eax+0Eh], 0
cmp     ds:byte_77E7D4, 16h
jnz     short loc_439F5C
mov     dword ptr [eax+14h], 3CC80027h
jmp     short loc_439F63

loc_439F5C:
mov     dword ptr [eax+14h], 3C880026h

loc_439F63:
mov     dword ptr [eax+18h], 2E808080h
mov     word ptr [eax+26h], 0
lea     edx, [eax+28h]
mov     dword ptr [edx+0Ch], 0
mov     dword ptr [edx+10h], 0A0000h
mov     dword ptr [edx+14h], 0FFFF0000h
inc     byte ptr [eax+8]
pop     edx
retn
sub_439F42 endp




sub_439F8D proc near

var_28= dword ptr -28h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 44h
mov     ecx, eax
lea     esi, [eax+28h]
mov     edi, [esi]
mov     ax, [edi+56h]
mov     word ptr [esp+58h+var_18], ax
mov     ax, [esi+4]
mov     [esp+58h+var_20], ax
mov     ax, [esi+6]
mov     [esp+58h+var_1E], ax
mov     ax, [esi+8]
mov     [esp+58h+var_1C], ax
mov     eax, esp
call    sub_4EF184
mov     eax, [esp+3Eh]
sar     eax, 10h
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+58h+var_28]
lea     edx, [esp+58h+var_20]
mov     eax, esp
call    sub_4EF2DC
mov     eax, [edi+1Ch]
sar     eax, 10h
mov     edx, [esp+2Eh]
sar     edx, 10h
add     eax, edx
mov     [ecx+1Ch], ax
mov     edx, [edi+20h]
sar     edx, 10h
mov     eax, [esp+58h+var_28]
sar     eax, 10h
add     eax, edx
mov     [ecx+1Eh], ax
mov     eax, [edi+24h]
sar     eax, 10h
mov     edx, [esp+58h+var_28+2]
sar     edx, 10h
add     eax, edx
mov     [ecx+20h], ax
mov     edx, [esi+0Ch]
cmp     edx, 900000h
jge     short loc_43A03F
lea     ebx, [edx+170A3h]
mov     [esi+0Ch], ebx
add     dword ptr [esi+10h], 8000h
sub     dword ptr [esi+14h], 147Ah

loc_43A03F:
mov     dx, [ecx+26h]
inc     edx
mov     [ecx+26h], dx
mov     ebx, edx
xor     bh, dh
and     bl, 3
mov     [ecx+26h], bx
mov     eax, [esi+0Ch]
sar     eax, 10h
mov     [ecx+24h], ax
xor     eax, eax
mov     ax, [ecx+26h]
mov     al, ds:byte_51378C[eax*4]
mov     [ecx+22h], al
xor     eax, eax
mov     ax, [ecx+26h]
mov     al, ds:byte_51378D[eax*4]
mov     [ecx+23h], al
mov     ah, [ecx+0Eh]
inc     ah
mov     [ecx+0Eh], ah
cmp     ah, 4
jnz     short loc_43A0FF
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_43A0FB
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 6
mov     byte ptr [eax+0Dh], 1
call    rand_
and     ah, 0Fh
mov     ebx, eax
call    rand_
xor     ah, ah
and     al, 1Fh
add     eax, 64h ; 'd'
mov     dword ptr [edx+14h], 3C48002Eh
mov     word ptr [edx+24h], 12h
mov     dword ptr [edx+18h], 2E202020h
mov     byte ptr [edx+22h], 80h
mov     byte ptr [edx+23h], 0A0h
mov     [edx+28h], ecx
mov     [edx+2Ch], bx
mov     [edx+2Eh], ax
mov     eax, [esp+58h+var_18]
mov     [edx+30h], ax
mov     eax, [esi+10h]
mov     [edx+34h], eax
mov     eax, [esi+14h]
mov     [edx+38h], eax

loc_43A0FB:
mov     byte ptr [ecx+0Eh], 0

loc_43A0FF:
add     esp, 44h
jmp     loc_439F27
sub_439F8D endp




sub_43A107 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_43A126
cmp     byte ptr [edx+8], 0
jnz     short loc_43A11D
mov     eax, edx
call    sub_439F42

loc_43A11D:
mov     eax, edx
call    sub_439F8D
pop     edx
retn

loc_43A126:
mov     eax, edx
call    sub_439F2D
pop     edx
retn
sub_43A107 endp




sub_43A12F proc near
or      byte ptr [eax], 2
cmp     ds:byte_77E7D4, 16h
jnz     short loc_43A144
mov     dword ptr [eax+14h], 3CC80027h
jmp     short loc_43A14B

loc_43A144:
mov     dword ptr [eax+14h], 3C880026h

loc_43A14B:
mov     dword ptr [eax+18h], 2E808080h
mov     word ptr [eax+26h], 0

loc_43A158:
inc     byte ptr [eax+8]
retn
sub_43A12F endp




sub_43A15C proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 40h
mov     ecx, eax
lea     edx, [eax+28h]
mov     esi, [edx]
mov     bx, [esi+56h]
mov     ax, [edx+4]
mov     word ptr [esp+50h+var_20], ax ; float
mov     ax, [edx+6]
mov     word ptr [esp+50h+var_20+2], ax
mov     ax, [edx+8]
mov     word ptr [esp+50h+var_1C], ax ; int
mov     eax, esp
call    sub_4EF184
movsx   eax, bx
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+50h+var_18]
lea     edx, [esp+50h+var_20]
mov     eax, esp
call    sub_4EF2DC
mov     eax, [esi+1Ch]
sar     eax, 10h
mov     edx, [esp+36h]
sar     edx, 10h
add     eax, edx
mov     [ecx+1Ch], ax
mov     eax, [esi+20h]
sar     eax, 10h
mov     edx, [esp+50h+var_18]
sar     edx, 10h
add     eax, edx
mov     [ecx+1Eh], ax
mov     eax, [esi+24h]
sar     eax, 10h
mov     edx, [esp+50h+var_18+2]
sar     edx, 10h
add     eax, edx
mov     [ecx+20h], ax
mov     dx, [ecx+26h]
inc     edx
mov     [ecx+26h], dx
cmp     dx, 4
jnz     short loc_43A1F7
mov     word ptr [ecx+26h], 0

loc_43A1F7:
xor     edx, edx
mov     dx, [ecx+26h]
mov     al, ds:byte_51379C[edx*4]
mov     [ecx+22h], al
xor     eax, eax
mov     ax, [ecx+26h]
mov     al, ds:byte_51379D[eax*4]
mov     [ecx+23h], al
xor     eax, eax
mov     ax, [ecx+26h]
mov     ax, ds:word_51379E[eax*4]
mov     [ecx+24h], ax
add     esp, 40h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43A15C endp




sub_43A231 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_43A24E
cmp     byte ptr [edx+8], 0
jnz     short loc_43A247
mov     eax, edx
call    sub_43A12F

loc_43A247:
mov     eax, edx
call    sub_43A15C

loc_43A24E:
pop     edx
retn
sub_43A231 endp

; START OF FUNCTION CHUNK FOR sub_43A27A

loc_43A250:
mov     edx, [eax+0Ch]
sar     edx, 18h
mov     edx, ds:dword_5137AC[edx*4]
mov     [eax+18h], edx
mov     dx, [eax+24h]
add     edx, 10h
mov     [eax+24h], dx
cmp     dx, 120h
jbe     short loc_43A278
mov     word ptr [eax+24h], 120h

loc_43A278:
pop     edx
retn
; END OF FUNCTION CHUNK FOR sub_43A27A



sub_43A27A proc near

; FUNCTION CHUNK AT 0043A250 SIZE 0000002A BYTES

cmp     byte ptr [eax+8], 0
jnz     short loc_43A286
or      byte ptr [eax], 2
inc     byte ptr [eax+8]

loc_43A286:
push    edx
mov     dl, [eax+0Fh]
inc     dl
mov     [eax+0Fh], dl
cmp     dl, 8
jnz     short loc_43A250
call    sub_4DE3EA
pop     edx
retn
sub_43A27A endp




sub_43A29B proc near

var_1C= dword ptr -1Ch
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 40h
lea     edx, [eax+28h]
mov     ecx, [edx]
mov     bx, [ecx+56h]
mov     ax, [edx+4]
mov     [esp+4Ch+var_14], ax
mov     ax, [edx+6]
mov     [esp+4Ch+var_12], ax
mov     ax, [edx+8]
mov     [esp+4Ch+var_10], ax
mov     eax, esp
call    sub_4EF184
movsx   eax, bx
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+4Ch+var_1C]
lea     edx, [esp+4Ch+var_14]
mov     eax, esp
call    sub_4EF2DC
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_43A376
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Ch], 6
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
cmp     ds:byte_77E7D4, 16h
jnz     short loc_43A321
mov     dword ptr [eax+14h], 3CC80027h
jmp     short loc_43A328

loc_43A321:
mov     dword ptr [eax+14h], 3C880026h

loc_43A328:
mov     word ptr [eax+24h], 90h
mov     byte ptr [eax+22h], 0A0h
mov     byte ptr [eax+23h], 20h ; ' '
mov     edx, [ecx+1Ch]
sar     edx, 10h
mov     ebx, [esp+2Eh]
sar     ebx, 10h
add     edx, ebx
mov     [eax+1Ch], dx
mov     edx, [ecx+20h]
sar     edx, 10h
mov     ebx, [esp+4Ch+var_1C]
sar     ebx, 10h
add     edx, ebx
mov     [eax+1Eh], dx
mov     ebx, [ecx+24h]
sar     ebx, 10h
mov     edx, [esp+4Ch+var_1C+2]
sar     edx, 10h
add     edx, ebx
mov     [eax+20h], dx
mov     dword ptr [eax+18h], 2E808080h

loc_43A376:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_43A407
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Ch], 6
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 1
mov     byte ptr [eax+0Fh], 0
cmp     ds:byte_77E7D4, 16h
jnz     short loc_43A3B2
mov     dword ptr [eax+14h], 3CC80027h
jmp     short loc_43A3B9

loc_43A3B2:
mov     dword ptr [eax+14h], 3C880026h

loc_43A3B9:
mov     word ptr [eax+24h], 24h ; '$'
mov     byte ptr [eax+22h], 0A0h
mov     byte ptr [eax+23h], 20h ; ' '
mov     ebx, [ecx+1Ch]
sar     ebx, 10h
mov     edx, [esp+2Eh]
sar     edx, 10h
add     edx, ebx
mov     [eax+1Ch], dx
mov     edx, [ecx+20h]
sar     edx, 10h
mov     ebx, [esp+4Ch+var_1C]
sar     ebx, 10h
add     edx, ebx
mov     [eax+1Eh], dx
mov     edx, [ecx+24h]
sar     edx, 10h
mov     ecx, [esp+4Ch+var_1C+2]
sar     ecx, 10h
add     edx, ecx
mov     [eax+20h], dx
mov     dword ptr [eax+18h], 2E808080h

loc_43A407:
add     esp, 40h
pop     edx
pop     ecx
pop     ebx
retn
sub_43A29B endp




sub_43A40E proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_43A42D
cmp     byte ptr [edx+8], 0
jnz     short loc_43A424
mov     eax, edx
call    loc_43A158

loc_43A424:
mov     eax, edx
call    sub_43A29B
pop     edx
retn

loc_43A42D:
mov     eax, edx
call    sub_43A27A
pop     edx
retn
sub_43A40E endp




sub_43A436 proc near
cmp     byte ptr [eax+0Dh], 0
jnz     sub_43A27A
retn
sub_43A436 endp




sub_43A441 proc near
push    edx
cmp     byte ptr [eax+8], 2
jnz     short loc_43A44F
call    sub_4DE3EA
pop     edx
retn

loc_43A44F:
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43A454[edx*4]
pop     edx
retn
sub_43A441 endp




sub_43A45D proc near

arg_0= byte ptr  4

push    esi
push    edi
mov     esi, eax
mov     edi, edx
call    sub_4DE13B
test    eax, eax
jz      short loc_43A48F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     dl, [esp+8+arg_0]
mov     [eax+3], dl
mov     byte ptr [eax+0Dh], 0
lea     edx, [eax+28h]
mov     [edx], esi
mov     [edx+4], di
mov     [edx+6], bx
mov     [edx+8], cx

loc_43A48F:
pop     edi
pop     esi
retn    4
sub_43A45D endp




sub_43A494 proc near
push    ecx
push    edx
mov     edx, eax
mov     ah, [eax+8]
test    ah, ah
jnz     short loc_43A4D4
or      byte ptr [edx], 2
mov     dword ptr [edx+14h], 3D08002Eh
mov     byte ptr [edx+22h], 40h ; '@'
mov     [edx+23h], ah
mov     word ptr [edx+24h], 40h ; '@'
call    rand_
xor     ah, ah
and     al, 0Fh
add     eax, 30h ; '0'
shl     eax, 8
mov     [edx+26h], ax
mov     word ptr [edx+1Eh], 0
inc     byte ptr [edx+8]

loc_43A4D4:
mov     ax, [edx+26h]
sub     ax, 80h
jnz     short loc_43A4E9
mov     eax, edx
call    sub_4DE3EA
pop     edx
pop     ecx
retn

loc_43A4E9:
mov     [edx+26h], ax
movsx   ecx, ax
sar     ecx, 8
mov     eax, ecx
shl     eax, 8
add     eax, ecx
shl     eax, 8
add     eax, ecx
or      eax, 2E000000h
mov     [edx+18h], eax
dec     word ptr [edx+1Eh]
add     word ptr [edx+24h], 6
pop     edx
pop     ecx
retn
sub_43A494 endp




sub_43A513 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_43A558
or      byte ptr [edx], 2
mov     dword ptr [edx+14h], 3D48004Eh
call    rand_
and     al, 3
shl     al, 5
add     al, 20h ; ' '
mov     [edx+22h], al
mov     byte ptr [edx+23h], 0
mov     word ptr [edx+24h], 10h
call    rand_
xor     ah, ah
and     al, 0Fh
add     eax, 20h ; ' '
shl     eax, 8
mov     [edx+26h], ax
inc     byte ptr [edx+8]

loc_43A558:
add     word ptr [edx+24h], 8
sub     word ptr [edx+1Eh], 8
mov     ax, [edx+26h]
sub     ax, 80h
jnz     short loc_43A577
mov     eax, edx
call    sub_4DE3EA
pop     edx
pop     ecx
retn

loc_43A577:
mov     [edx+26h], ax
cwde
sar     eax, 8
mov     ecx, eax
shl     eax, 8
add     eax, ecx
shl     eax, 8
add     eax, ecx
or      eax, 2E000000h
mov     [edx+18h], eax
pop     edx
pop     ecx
retn
sub_43A513 endp




sub_43A596 proc near
push    ecx
push    edx
mov     dl, [eax+8]
test    dl, dl
jnz     short loc_43A5C0
or      byte ptr [eax], 2
mov     word ptr [eax+24h], 64h ; 'd'
mov     dword ptr [eax+14h], 3C80000Fh
mov     [eax+22h], dl
mov     byte ptr [eax+23h], 0A0h
mov     dword ptr [eax+18h], 2E808080h
inc     byte ptr [eax+8]

loc_43A5C0:
cmp     byte ptr [eax+8], 2
jnz     short loc_43A5CE
call    sub_4DE3EA
pop     edx
pop     ecx
retn

loc_43A5CE:
mov     edx, [eax+28h]
mov     ecx, [edx+1Ch]
sar     ecx, 10h
add     ecx, [eax+2Ch]
mov     [eax+1Ch], cx
mov     ecx, [edx+20h]
sar     ecx, 10h
add     ecx, [eax+30h]
mov     [eax+1Eh], cx
mov     edx, [edx+24h]
sar     edx, 10h
add     edx, [eax+34h]
mov     [eax+20h], dx
pop     edx
pop     ecx
retn
sub_43A596 endp




sub_43A5FB proc near

var_20= byte ptr -20h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h
var_16= word ptr -16h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 0Ch
mov     ecx, eax
mov     dx, [eax+1Eh]
dec     edx
mov     [eax+1Eh], dx
test    dx, dx
jg      short loc_43A61A
call    sub_4DE3EA
jmp     short loc_43A666

loc_43A61A:
mov     edx, offset unk_5137DC
xor     ebx, ebx

loc_43A621:
mov     al, [edx]
mov     [esp+20h+var_20], al
mov     ax, [ecx+1Ch]
mov     si, [edx+4]
add     eax, esi
mov     [esp+20h+var_1C], ax
mov     ax, [ecx+1Eh]
mov     di, [edx+6]
add     eax, edi
mov     [esp+20h+var_1A], ax
mov     ax, [edx+8]
mov     [esp+20h+var_18], ax
mov     ax, [edx+0Ah]
mov     [esp+20h+var_16], ax
mov     eax, esp
call    sub_43A7A8
add     edx, 0Ch
inc     ebx
cmp     ebx, 4
jl      short loc_43A621

loc_43A666:
add     esp, 0Ch
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43A5FB endp




sub_43A66F proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43A675[edx*4]
pop     edx
retn
sub_43A66F endp




sub_43A67E proc near

var_20= dword ptr -20h
var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h
var_10= dword ptr -10h
arg_0= byte ptr  4

push    esi
push    edi
push    ebp
sub     esp, 44h
mov     esi, eax
mov     edi, edx
mov     edx, ecx
call    sub_4DE13B
mov     ecx, eax
mov     ebp, eax
test    eax, eax
jz      loc_43A754
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 7
mov     al, [esp+50h+arg_0]
mov     [ecx+3], al
mov     byte ptr [ecx+0Ch], 7
mov     byte ptr [ecx+0Dh], 0
test    esi, esi
jz      loc_43A744
call    rand_
mov     [esp+50h+var_10], eax
mov     eax, [esp+50h+var_10]
xor     ah, ah
and     al, 7Fh
add     eax, edi
mov     [esp+50h+var_18], ax
mov     [esp+50h+var_16], bx
call    rand_
xor     ah, ah
and     al, 7Fh
add     edx, eax
mov     [esp+50h+var_14], dx
mov     eax, esp
call    sub_4EF184
mov     eax, [esi+54h]
sar     eax, 10h
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+50h+var_20]
lea     edx, [esp+50h+var_18]
mov     eax, esp
call    sub_4EF2DC
mov     eax, [esi+1Ch]
sar     eax, 10h
mov     edx, [esp+2Eh]
sar     edx, 10h
add     eax, edx
mov     [ecx+1Ch], ax
mov     edx, [esi+20h]
sar     edx, 10h
mov     eax, [esp+50h+var_20]
sar     eax, 10h
add     eax, edx
mov     [ecx+1Eh], ax
mov     eax, [esi+24h]
sar     eax, 10h
mov     edx, [esp+50h+var_20+2]
sar     edx, 10h
add     eax, edx
mov     [ecx+20h], ax
jmp     short loc_43A750

loc_43A744:
mov     [ecx+1Ch], di
mov     [ecx+1Eh], bx
mov     [ecx+20h], dx

loc_43A750:
mov     edx, ebp
jmp     short loc_43A756

loc_43A754:
xor     edx, edx

loc_43A756:
mov     eax, edx
add     esp, 44h
pop     ebp
pop     edi
pop     esi
retn    4
sub_43A67E endp




sub_43A761 proc near
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     esi, edx
call    sub_4DE13B
mov     edx, eax
mov     edi, eax
test    eax, eax
jz      short loc_43A7A2
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 7
mov     byte ptr [eax+3], 2
mov     ah, [eax+6]
or      ah, 20h
mov     [edx+6], ah
mov     byte ptr [edx+0Ch], 7
mov     [edx+28h], ebp
movsx   eax, si
mov     [edx+2Ch], eax
movsx   eax, bx
mov     [edx+30h], eax
movsx   eax, cx
mov     [edx+34h], eax

loc_43A7A2:
mov     eax, edi
pop     ebp
pop     edi
pop     esi
retn
sub_43A761 endp




sub_43A7A8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
or      byte ptr [edx+7], 2
mov     byte ptr [edx+6], 20h ; ' '
mov     al, [edx+6]
mov     [edx+5], al
mov     [edx+4], al
mov     eax, [ecx+8]
sar     eax, 10h
sar     eax, 1
mov     ebx, [ecx+2]
sar     ebx, 10h
sub     ebx, eax
mov     eax, ebx
mov     [edx+18h], bx
mov     [edx+8], bx
mov     bx, [ecx+0Ah]
add     eax, ebx
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     eax, [ecx+6]
sar     eax, 10h
sar     eax, 1
mov     ebx, [ecx+4]
sar     ebx, 10h
sub     ebx, eax
mov     [edx+12h], bx
mov     eax, ebx
mov     [edx+0Ah], bx
mov     si, [ecx+8]
add     eax, esi
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     al, [ecx]
shl     al, 5
add     al, 20h ; ' '
mov     [edx+1Ch], al
mov     [edx+0Ch], al
add     al, 1Fh
mov     [edx+24h], al
mov     [edx+14h], al
mov     byte ptr [edx+15h], 0
mov     al, [edx+15h]
mov     [edx+0Dh], al
mov     byte ptr [edx+25h], 1Fh
mov     al, [edx+25h]
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 3C48h
mov     word ptr [edx+16h], 2Eh ; '.'
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43A7A8 endp

push    ecx
mov     ecx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_43A892
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 7
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 7
mov     [eax+1Ch], cx
mov     [eax+1Eh], dx
mov     [eax+26h], bx

loc_43A892:
pop     ecx
retn



sub_43A894 proc near
push    edx
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_43A8A9
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43A8A0[edx*4]
pop     edx
retn

loc_43A8A9:
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43A8AE[edx*4]
pop     edx
retn
sub_43A894 endp




sub_43A8B7 proc near
push    ecx
push    edx
mov     ecx, eax
test    byte ptr [eax+9], 7
jnz     short loc_43A923
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_43A923
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 8
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 14h
mov     ax, [ecx+20h]
mov     [edx+20h], ax
mov     ax, [ecx+1Ch]
mov     [edx+1Ch], ax
mov     ax, [ecx+1Eh]
mov     [edx+1Eh], ax
mov     dword ptr [edx+14h], 3D48000Eh
mov     dword ptr [edx+18h], 2E808080h
mov     byte ptr [edx+22h], 20h ; ' '
mov     byte ptr [edx+23h], 0
call    rand_
xor     ah, ah
and     al, 7
add     eax, 10h
mov     [edx+24h], ax

loc_43A923:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
retn
sub_43A8B7 endp




sub_43A929 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     ds:byte_560BE4, 1
jnz     short loc_43A93C
or      byte ptr [ecx], 2
jmp     short loc_43A93F

loc_43A93C:
and     byte ptr [ecx], 0FDh

loc_43A93F:
mov     bl, [ecx+0Eh]
test    bl, bl
jle     short loc_43A9A6
mov     dl, bl
cmp     bl, 0Ah
jb      short loc_43A956
jbe     short loc_43A95B
cmp     bl, 0Fh
jz      short loc_43A95B
jmp     short loc_43A95F

loc_43A956:
cmp     bl, 5
jnz     short loc_43A95F

loc_43A95B:
add     byte ptr [ecx+22h], 20h ; ' '

loc_43A95F:
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
cwde
mov     edx, [ecx+1Ch]
sar     edx, 10h
inc     eax
sub     edx, eax
mov     [ecx+1Eh], dx
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 6
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
cwde
xor     edx, edx
mov     dx, [ecx+24h]
inc     eax
add     edx, eax
mov     [ecx+24h], dx
dec     byte ptr [ecx+0Eh]
pop     edx
pop     ecx
pop     ebx
retn

loc_43A9A6:
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_43A929 endp




sub_43A9B1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
mov     ebx, 8
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     loc_43AA4D
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_43AA4D
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 8
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 20h ; ' '
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3
mov     ax, [ecx+20h]
add     eax, ebx
mov     [edx+20h], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3
mov     ax, [ecx+1Ch]
add     eax, ebx
mov     [edx+1Ch], ax
mov     ax, [ecx+1Eh]
mov     [edx+1Eh], ax
mov     dword ptr [edx+14h], 3D4E002Eh
mov     dword ptr [edx+18h], 2E404040h
mov     byte ptr [edx+22h], 20h ; ' '
mov     byte ptr [edx+23h], 0
call    rand_
xor     ah, ah
and     al, 3
add     eax, 12h
mov     [edx+24h], ax

loc_43AA4D:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn
sub_43A9B1 endp




sub_43AA54 proc near
cmp     ds:byte_560BE4, 3
jnz     short loc_43AA6B
cmp     ds:dword_560BEC, 0
jle     short loc_43AA6B
or      byte ptr [eax], 2
jmp     short loc_43AA6E

loc_43AA6B:
and     byte ptr [eax], 0FDh

loc_43AA6E:
cmp     byte ptr [eax+0Eh], 0
jle     sub_4DE3EA
sub     dword ptr [eax+18h], 20202h
cmp     byte ptr [eax+0Eh], 10h
jle     short loc_43AA8D
dec     word ptr [eax+1Eh]
dec     byte ptr [eax+0Eh]
retn

loc_43AA8D:
sub     word ptr [eax+1Eh], 2
dec     byte ptr [eax+0Eh]
retn
sub_43AA54 endp




sub_43AA96 proc near

var_C= dword ptr -0Ch
var_8= dword ptr -8
arg_0= byte ptr  4

push    esi
sub     esp, 8
mov     esi, eax
mov     [esp+0Ch+var_8], edx
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_43AB4B
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 9
mov     al, [esp+0Ch+arg_0]
mov     [edx+3], al
mov     byte ptr [edx+0Ch], 9
mov     byte ptr [edx+0Dh], 1
mov     byte ptr [edx+0Eh], 1Eh
mov     dword ptr [edx+14h], 3D48002Eh
call    rand_
mov     [esp+0Ch+var_C], eax
mov     al, byte ptr [esp+0Ch+var_C]
and     al, 3
shl     al, 5
add     al, 20h ; ' '
mov     [edx+22h], al
mov     byte ptr [edx+23h], 0
mov     dword ptr [edx+18h], 2E202020h
mov     word ptr [edx+24h], 6
call    rand_
xor     ah, ah
and     al, 3
add     [esi], ax
call    rand_
xor     ah, ah
and     al, 3
add     [esi+2], ax
call    rand_
xor     ah, ah
and     al, 3
add     [esi+4], ax
movsx   eax, word ptr [esi]
shl     eax, 10h
mov     [edx+28h], eax
mov     eax, [esi]
sar     eax, 10h
shl     eax, 10h
mov     [edx+2Ch], eax
mov     eax, [esi+2]
sar     eax, 10h
shl     eax, 10h
mov     [edx+30h], eax
mov     eax, [esp+0Ch+var_8]
mov     [edx+38h], ax
mov     [edx+3Ah], bx
mov     [edx+3Ch], ecx

loc_43AB4B:
add     esp, 8
pop     esi
retn    4
sub_43AA96 endp




sub_43AB52 proc near
push    ecx
push    esi
mov     ecx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_43AB9A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 9
mov     byte ptr [eax+0Ch], 9
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
movsx   esi, word ptr [ecx]
shl     esi, 10h
mov     [eax+28h], esi
mov     esi, [ecx]
sar     esi, 10h
shl     esi, 10h
mov     [eax+2Ch], esi
mov     ecx, [ecx+2]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+30h], ecx
mov     [eax+38h], dx
mov     [eax+3Ah], bx

loc_43AB9A:
pop     esi
pop     ecx
retn
sub_43AB52 endp

; START OF FUNCTION CHUNK FOR sub_43ACEE

loc_43AB9D:
sub     dword ptr [ecx+18h], 10101h
inc     word ptr [ecx+24h]
cmp     byte ptr [ecx+3], 0
jz      short loc_43AC06
xor     ebx, ebx
mov     [esp+60h+var_30], ebx ; float
mov     [esp+60h+var_2C], ebx ; int
mov     eax, [esi+14h]
mov     eax, [eax+34h]
mov     [esp+60h+var_28], eax
mov     eax, esp
call    sub_4EF184
mov     eax, [esi+0Eh]
sar     eax, 10h
mov     edx, esp
call    sub_4EF486
mov     eax, [esi+10h]
sar     eax, 10h
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+60h+var_20]
lea     edx, [esp+60h+var_30]
mov     eax, esp
call    sub_4EF371
mov     eax, [esp+60h+var_20]
add     [esi], eax
mov     eax, [esp+60h+var_1C]
add     [esi+4], eax
mov     eax, [esp+60h+var_18]
add     [esi+8], eax

loc_43AC06:
mov     eax, [esi]
sar     eax, 10h
mov     [ecx+1Ch], ax
mov     eax, [esi+4]
sar     eax, 10h
mov     [ecx+1Eh], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     [ecx+20h], ax

loc_43AC23:
add     esp, 50h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_43ACEE



sub_43AC2B proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     esi, eax
lea     edi, [eax+28h]
cmp     byte ptr [eax+8], 0
jnz     short loc_43AC48
mov     dword ptr [edi+0Ch], 10000h
inc     byte ptr [esi+8]

loc_43AC48:
mov     eax, [edi]
sar     eax, 10h
mov     [esp+1Ch+var_1C], ax
mov     eax, [edi+4]
sar     eax, 10h
mov     [esp+1Ch+var_1A], ax
mov     eax, [edi+8]
sar     eax, 10h
mov     [esp+1Ch+var_18], ax
mov     al, [esi+9]
test    al, al
jbe     short loc_43AC74
cmp     al, 1
jz      short loc_43AC9F
jmp     short loc_43ACE5

loc_43AC74:
mov     bh, [esi+0Eh]
inc     bh
mov     [esi+0Eh], bh
cmp     bh, 0Fh
jnz     short loc_43AC84
inc     byte ptr [esi+9]

loc_43AC84:
push    0
mov     ebx, [edi+10h]
sar     ebx, 10h
mov     edx, [edi+0Eh]
sar     edx, 10h
mov     ecx, esi
lea     eax, [esp+20h+var_1C]
call    sub_43AA96
jmp     short loc_43ACE5

loc_43AC9F:
push    1
mov     ebx, [edi+10h]
sar     ebx, 10h
mov     edx, [edi+0Eh]
sar     edx, 10h
mov     ecx, esi
lea     eax, [esp+20h+var_1C]
call    sub_43AA96
push    1
mov     ebx, [edi+10h]
sar     ebx, 10h
mov     edx, [edi+0Eh]
sar     edx, 10h
mov     ecx, esi
lea     eax, [esp+20h+var_1C]
call    sub_43AA96
inc     byte ptr [esi+0Eh]
inc     word ptr [edi+0Eh]
cmp     byte ptr [esi+0Eh], 1Eh
jnz     short loc_43ACE5
mov     eax, esi
call    sub_4DE3EA

loc_43ACE5:
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43AC2B endp




sub_43ACEE proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

; FUNCTION CHUNK AT 0043AB9D SIZE 0000008E BYTES

cmp     byte ptr [eax+0Dh], 0
jz      sub_43AC2B
push    ebx
push    ecx
push    edx
push    esi
sub     esp, 50h
mov     ecx, eax
lea     esi, [eax+28h]
cmp     byte ptr [eax+8], 0
jnz     short loc_43AD0D
or      byte ptr [ecx], 2

loc_43AD0D:
mov     dh, [ecx+0Eh]
dec     dh
mov     [ecx+0Eh], dh
jnz     loc_43AB9D
mov     eax, ecx
call    sub_4DE3EA
jmp     loc_43AC23
sub_43ACEE endp




sub_43AD27 proc near
push    edx
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_43AD3C
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43AD33[edx*4]
pop     edx
retn

loc_43AD3C:
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43AD41[edx*4]
pop     edx
retn
sub_43AD27 endp




sub_43AD4A proc near
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 7
jnb     loc_43ADCF
test    byte ptr [ecx+9], 3
jnz     short loc_43ADC2
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_43ADC2
mov     byte ptr [eax], 3
mov     al, [ecx+2]
mov     [edx+2], al
mov     al, [ecx+3]
mov     [edx+3], al
mov     al, [ecx+0Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 1
mov     byte ptr [edx+0Eh], 8
mov     ax, [ecx+20h]
mov     [edx+20h], ax
mov     ax, [ecx+1Ch]
mov     [edx+1Ch], ax
mov     ax, [ecx+1Eh]
mov     [edx+1Eh], ax
mov     dword ptr [edx+14h], 3D48004Eh
mov     dword ptr [edx+18h], 2E404040h
mov     byte ptr [edx+22h], 20h ; ' '
mov     byte ptr [edx+23h], 0
call    rand_
xor     ah, ah
and     al, 1
inc     eax
mov     [edx+24h], ax

loc_43ADC2:
call    rand_
and     al, 1
add     [ecx+9], al
pop     edx
pop     ecx
retn

loc_43ADCF:
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
retn
sub_43AD4A endp




sub_43ADD9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Eh], 0
jle     loc_43AE84
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_43AE0E
mov     dl, [ecx+22h]
cmp     dl, 80h
jnb     short loc_43AE0E
mov     dh, dl
add     dh, 20h ; ' '
mov     [ecx+22h], dh

loc_43AE0E:
call    rand_
xor     ah, ah
and     al, 1
add     [ecx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 1
add     [ecx+20h], ax
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 2
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_43AE4E
call    rand_
xor     ah, ah
and     al, 1
add     eax, 2
jmp     short loc_43AE58

loc_43AE4E:
call    rand_
xor     ah, ah
and     al, 1
inc     eax

loc_43AE58:
sub     [ecx+1Eh], ax
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 2
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_43AE76
inc     word ptr [ecx+24h]

loc_43AE76:
sub     dword ptr [ecx+18h], 20202h
dec     byte ptr [ecx+0Eh]
pop     edx
pop     ecx
pop     ebx
retn

loc_43AE84:
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_43ADD9 endp




sub_43AE8F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 30h ; '0'
jnb     loc_43AF4C
test    byte ptr [ecx+9], 0Fh
jnz     loc_43AF3E
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_43AF3E
mov     byte ptr [eax], 3
mov     al, [ecx+2]
mov     [edx+2], al
mov     al, [ecx+3]
mov     [edx+3], al
mov     al, [ecx+0Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 1
mov     byte ptr [edx+0Eh], 10h
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3
mov     ax, [ecx+20h]
add     eax, ebx
mov     [edx+20h], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3
mov     ax, [ecx+1Ch]
add     eax, ebx
mov     [edx+1Ch], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3
mov     ax, [ecx+1Eh]
add     eax, ebx
mov     [edx+1Eh], ax
mov     dword ptr [edx+14h], 3D48004Eh
mov     dword ptr [edx+18h], 2E404040h
mov     byte ptr [edx+22h], 20h ; ' '
mov     byte ptr [edx+23h], 0
call    rand_
xor     ah, ah
and     al, 1
add     eax, 2
mov     [edx+24h], ax

loc_43AF3E:
call    rand_
and     al, 3
add     [ecx+9], al
pop     edx
pop     ecx
pop     ebx
retn

loc_43AF4C:
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_43AE8F endp




sub_43AF57 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Eh], 0
jle     loc_43B002
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 6
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_43AF8C
mov     dl, [ecx+22h]
cmp     dl, 80h
jnb     short loc_43AF8C
mov     dh, dl
add     dh, 20h ; ' '
mov     [ecx+22h], dh

loc_43AF8C:
call    rand_
xor     ah, ah
and     al, 1
add     [ecx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 1
add     [ecx+20h], ax
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 2
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_43AFCC
call    rand_
xor     ah, ah
and     al, 1
add     eax, 2
jmp     short loc_43AFD6

loc_43AFCC:
call    rand_
xor     ah, ah
and     al, 1
inc     eax

loc_43AFD6:
sub     [ecx+1Eh], ax
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 2
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_43AFF4
inc     word ptr [ecx+24h]

loc_43AFF4:
sub     dword ptr [ecx+18h], 20202h
dec     byte ptr [ecx+0Eh]
pop     edx
pop     ecx
pop     ebx
retn

loc_43B002:
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_43AF57 endp




sub_43B00D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Fh], 1
jnz     loc_43B0C8
test    byte ptr [ecx+9], 7
jnz     loc_43B0BE
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_43B0BE
mov     byte ptr [eax], 3
mov     al, [ecx+2]
mov     [edx+2], al
mov     al, [ecx+3]
mov     [edx+3], al
mov     al, [ecx+0Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 1
call    rand_
and     al, 0Fh
mov     ah, 40h ; '@'
sub     ah, al
mov     [edx+0Eh], ah
mov     al, [ecx+0Fh]
mov     [edx+0Fh], al
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 7Fh
mov     ax, [ecx+1Ch]
sub     eax, ebx
mov     [edx+1Ch], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 7Fh
mov     ax, [ecx+20h]
sub     eax, ebx
mov     [edx+20h], ax
mov     ax, [ecx+1Eh]
mov     [edx+1Eh], ax
mov     dword ptr [edx+14h], 3D48004Eh
mov     dword ptr [edx+18h], 2E404040h
mov     byte ptr [edx+22h], 20h ; ' '
mov     byte ptr [edx+23h], 0
call    rand_
xor     ah, ah
and     al, 3Fh
add     eax, 0DCh
mov     [edx+24h], ax

loc_43B0BE:
call    rand_
and     al, 3
add     [ecx+9], al

loc_43B0C8:
pop     edx
pop     ecx
pop     ebx
retn
sub_43B00D endp




sub_43B0CC proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Eh], 0
jle     short loc_43B112
call    rand_
xor     ah, ah
and     al, 7
sub     [edx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 7
sub     [edx+20h], ax
call    rand_
xor     ah, ah
and     al, 7
add     eax, 0Ah
sub     [edx+1Eh], ax
add     word ptr [edx+24h], 2
sub     dword ptr [edx+18h], 10101h
dec     byte ptr [edx+0Eh]
pop     edx
retn

loc_43B112:
mov     eax, edx
call    sub_4DE3EA
pop     edx
retn
sub_43B0CC endp




sub_43B11B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 7
jnb     loc_43B1DE
test    byte ptr [ecx+9], 3
jnz     loc_43B1D0
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_43B1D0
mov     byte ptr [eax], 3
mov     al, [ecx+2]
mov     [edx+2], al
mov     al, [ecx+3]
mov     [edx+3], al
mov     al, [ecx+0Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 1
call    rand_
mov     ah, al
and     ah, 0Fh
mov     al, [ecx+0Eh]
sub     al, ah
mov     [edx+0Eh], al
mov     al, [ecx+0Fh]
mov     [edx+0Fh], al
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3Fh
mov     ax, [ecx+1Ch]
sub     eax, ebx
mov     [edx+1Ch], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3Fh
mov     ax, [ecx+20h]
sub     eax, ebx
mov     [edx+20h], ax
mov     ax, [ecx+1Eh]
mov     [edx+1Eh], ax
mov     dword ptr [edx+14h], 3D48004Eh
mov     dword ptr [edx+18h], 2E404040h
mov     byte ptr [edx+22h], 20h ; ' '
mov     byte ptr [edx+23h], 0
call    rand_
xor     ah, ah
and     al, 1Fh
add     eax, 0A0h
mov     [edx+24h], ax

loc_43B1D0:
call    rand_
and     al, 1
add     [ecx+9], al
pop     edx
pop     ecx
pop     ebx
retn

loc_43B1DE:
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_43B11B endp




sub_43B1E9 proc near
push    ebx
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Eh], 0
jle     short loc_43B233
call    rand_
xor     ah, ah
and     al, 3
sub     [edx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 3
sub     [edx+20h], ax
movsx   bx, byte ptr [edx+0Fh]
call    rand_
xor     ah, ah
and     al, 3
add     ebx, eax
sub     [edx+1Eh], bx
add     word ptr [edx+24h], 2
sub     dword ptr [edx+18h], 10101h
dec     byte ptr [edx+0Eh]
pop     edx
pop     ebx
retn

loc_43B233:
mov     eax, edx
call    sub_4DE3EA
pop     edx
pop     ebx
retn
sub_43B1E9 endp




sub_43B23D proc near
push    edx
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_43B252
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43B249[edx*4]
pop     edx
retn

loc_43B252:
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43B257[edx*4]
pop     edx
retn
sub_43B23D endp




sub_43B260 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
cmp     byte ptr [eax+0Fh], 1
jnz     loc_43B2FC
xor     bl, bl

loc_43B273:
mov     ecx, [edx+0Bh]
sar     ecx, 18h
call    rand_
xor     ah, ah
and     al, 7Fh
mov     si, ds:word_513854[ecx*8]
sub     esi, eax
mov     eax, [edx+0Bh]
sar     eax, 18h
shl     eax, 7
xor     ecx, ecx
mov     cl, bl
mov     word ptr ds:(dword_559AFE+2)[eax+ecx*8], si
mov     eax, [edx+0Bh]
sar     eax, 18h
movzx   di, bl
imul    edi, 28h ; '('
mov     si, ds:word_513856[eax*8]
sub     esi, edi
shl     eax, 7
mov     word ptr ds:dword_559B02[eax+ecx*8], si
mov     esi, [edx+0Bh]
sar     esi, 18h
call    rand_
xor     ah, ah
and     al, 7Fh
mov     si, ds:word_513858[esi*8]
sub     esi, eax
mov     eax, [edx+0Bh]
sar     eax, 18h
shl     eax, 7
mov     word ptr ds:(dword_559B02+2)[eax+ecx*8], si
inc     bl
cmp     bl, 10h
jb      loc_43B273
mov     byte ptr [edx+0Dh], 1

loc_43B2FC:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43B260 endp




sub_43B302 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= byte ptr -2Ch
var_28= byte ptr -28h
var_24= byte ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ecx, eax
cmp     byte ptr [eax+0Fh], 1
jnz     loc_43B5CC
mov     al, [ecx+9]
and     al, 0F0h
xor     edx, edx
mov     dl, al
sar     edx, 4
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [esp+34h+var_28], al
mov     al, 10h
mov     dl, [esp+34h+var_28]
sub     al, dl
mov     [esp+34h+var_1C], al
mov     dh, [ecx+0Ah]
test    dh, dh
jz      short loc_43B34B
sub     al, 8
mov     [esp+34h+var_1C], al
jmp     short loc_43B353

loc_43B34B:
cmp     al, 10h
jnz     short loc_43B353
mov     [esp+34h+var_1C], dh

loc_43B353:
mov     al, [esp+34h+var_28]
shl     al, 5
mov     ah, [ecx+9]
sub     ah, al
mov     [esp+34h+var_24], ah
xor     ah, ah
mov     [esp+34h+var_2C], ah
jmp     loc_43B598

loc_43B36E:
mov     al, [ecx+0Ah]
shl     al, 3
mov     ah, [esp+34h+var_2C]
add     ah, [esp+34h+var_28]
add     ah, al
mov     [esp+34h+var_20], ah

loc_43B382:
call    sub_4EE133
mov     ebx, eax
test    byte ptr [ecx+9], 1
jnz     short loc_43B3CF
mov     esi, [ecx+0Bh]
sar     esi, 18h
shl     esi, 7
mov     edx, [esp+5]
sar     edx, 18h
shl     edx, 3
call    rand_
xor     ah, ah
and     al, 7
sub     word ptr ds:(dword_559AFE+2)[edx+esi], ax
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 7
lea     esi, [eax+edx]
call    rand_
xor     ah, ah
and     al, 3
sub     word ptr ds:(dword_559B02+2)[esi], ax

loc_43B3CF:
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 7
mov     edx, [esp+5]
sar     edx, 18h
mov     [esp+34h+var_30], edx
mov     edi, edx
shl     edi, 3
lea     esi, [eax+edi]
call    rand_
xor     ah, ah
and     al, 7
sub     word ptr ds:dword_559B02[esi], ax
movzx   ebp, [esp+34h+var_20]
mov     eax, ebp
shl     eax, 8
add     eax, ebp
shl     eax, 8
add     eax, ebp
shl     eax, 2
mov     edx, 2E404040h
sub     edx, eax
mov     [esp+34h+var_34], edx
mov     esi, [esp+0Dh]
sar     esi, 18h
mov     eax, esi
mov     edx, esi
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     edx, eax
shl     eax, 8
add     eax, edx
shl     eax, 8
add     eax, edx
mov     edx, [esp+34h+var_34]
sub     edx, eax
mov     [ebx+4], edx
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 7
mov     edx, ds:(dword_559AFE+2)[edi+eax]
sar     edx, 10h
shl     edx, 10h
mov     eax, ds:dword_559AFE[edi+eax]
sar     eax, 10h
and     eax, 0FFFFh
or      edx, eax
mov     [ebx+8], edx
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 7
mov     eax, ds:dword_559B02[edi+eax]
sar     eax, 10h
mov     [ebx+10h], eax
shl     ebp, 4
mov     eax, esi
mov     edx, esi
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
lea     edx, [ebp+100h]
add     edx, eax
mov     [ebx+18h], edx
mov     dword ptr [ebx+0Ch], 3D48001Fh
mov     dword ptr [ebx+14h], offset loc_4E003F
mov     dword ptr [ebx+1Ch], 201Fh
mov     dword ptr [ebx+24h], 203Fh
mov     dword ptr [ebx+20h], 0
cmp     [esp+34h+var_24], 1Fh
jnz     loc_43B589
mov     eax, [esp+15h]
sar     eax, 18h
dec     eax
cmp     eax, [esp+34h+var_30]
jz      short loc_43B4EE
cmp     [esp+34h+var_1C], 0
jnz     loc_43B589
cmp     [esp+34h+var_2C], 0Fh
jnz     loc_43B589

loc_43B4EE:
mov     edx, [ecx+0Bh]
sar     edx, 18h
call    rand_
xor     ah, ah
and     al, 7Fh
mov     dx, ds:word_513854[edx*8]
sub     edx, eax
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 7
mov     ebx, [esp+34h+var_30+1]
sar     ebx, 18h
shl     ebx, 3
mov     word ptr ds:(dword_559AFE+2)[ebx+eax], dx
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     edx, eax
shl     eax, 7
mov     dx, ds:word_513856[edx*8]
mov     word ptr ds:dword_559B02[ebx+eax], dx
mov     edx, [ecx+0Bh]
sar     edx, 18h
call    rand_
xor     ah, ah
and     al, 7Fh
mov     dx, ds:word_513858[edx*8]
sub     edx, eax
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 7
mov     word ptr ds:(dword_559B02+2)[ebx+eax], dx
cmp     word ptr [ecx+26h], 1
jnz     short loc_43B589
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     eax, edx
shl     edx, 7
mov     ax, ds:word_513884[eax*2]
mov     word ptr ds:dword_559B02[edx+ebx], ax

loc_43B589:
mov     bl, [esp+34h+var_2C]
inc     bl
mov     [esp+34h+var_2C], bl
cmp     bl, 10h
jge     short loc_43B5B3

loc_43B598:
mov     al, [esp+34h+var_2C]
mov     dl, [esp+34h+var_1C]
cmp     al, dl
jl      loc_43B36E
sub     al, dl
mov     [esp+34h+var_20], al
jmp     loc_43B382

loc_43B5B3:
mov     al, [ecx+9]
inc     al
mov     [ecx+9], al
jnz     short loc_43B5CC
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_43B5C8
mov     [ecx+0Ah], al
jmp     short loc_43B5CC

loc_43B5C8:
mov     byte ptr [ecx+0Ah], 1

loc_43B5CC:
add     esp, 1Ch
pop     ebp
jmp     loc_43B2FC
sub_43B302 endp




sub_43B5D5 proc near
push    ebx
push    edx
mov     edx, eax
mov     ah, [eax]
or      ah, 22h
mov     [edx], ah
mov     byte ptr [edx+0Dh], 0
mov     dword ptr [edx+14h], 3D48002Eh
call    rand_
and     al, 3
shl     al, 5
add     al, 20h ; ' '
mov     [edx+22h], al
mov     byte ptr [edx+23h], 0
mov     word ptr [edx+26h], 0
inc     byte ptr [edx+8]
lea     eax, [edx+28h]
mov     dword ptr [eax+10h], 80000h
mov     word ptr [eax+16h], 0
mov     bx, [eax+16h]
mov     [eax+14h], bx
mov     eax, edx
call    sub_43B629
pop     edx
pop     ebx
retn
sub_43B5D5 endp




sub_43B629 proc near

var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 4
mov     edx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_43B649
mov     ch, [edx+0Dh]
inc     ch
mov     [edx+0Dh], ch
cmp     ch, 20h ; ' '
jnz     short loc_43B656
inc     byte ptr [edx+9]
jmp     short loc_43B656

loc_43B649:
mov     bl, [edx+0Dh]
dec     bl
mov     [edx+0Dh], bl
jnz     short loc_43B656
inc     byte ptr [edx+8]

loc_43B656:
lea     ecx, [edx+28h]
fild    dword ptr [ecx+8]
fadd    ds:dbl_50A264
call    __CHP
fistp   dword ptr [ecx+8]
fild    dword ptr [ecx+10h]
fadd    ds:dbl_50A26C
call    __CHP
fistp   dword ptr [ecx+10h]
fild    word ptr [ecx+14h]
fadd    ds:dbl_50A274
call    __CHP
fistp   [esp+10h+var_10]
mov     eax, [esp+10h+var_10]
mov     [ecx+14h], ax
add     word ptr [ecx+16h], 89h
mov     eax, [ecx+14h]
sar     eax, 10h
call    sub_4EF008
shl     eax, 4
add     eax, [ecx+4]
sar     eax, 10h
mov     [edx+1Ch], ax
mov     eax, [ecx+8]
sar     eax, 10h
mov     [edx+1Eh], ax
mov     eax, [ecx+0Ch]
sar     eax, 10h
mov     [edx+20h], ax
mov     eax, [ecx+10h]
sar     eax, 10h
mov     [edx+24h], ax
mov     ebx, [edx+0Ah]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 8
add     eax, ebx
shl     eax, 8
add     eax, ebx
add     eax, 2E000000h
mov     [edx+18h], eax
mov     eax, [ecx+12h]
sar     eax, 10h
sar     eax, 8
mov     [edx+26h], ax
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_43B629 endp



; Attributes: thunk

sub_43B6FD proc near
jmp     sub_4DE3EA
sub_43B6FD endp




sub_43B702 proc near
push    edx
mov     edx, eax
call    rand_
and     al, 7
add     al, 1Eh
mov     [edx+0Dh], al
inc     byte ptr [edx+8]
pop     edx
retn
sub_43B702 endp




sub_43B716 proc near
push    ecx
push    edx
mov     edx, eax
mov     ah, [eax+0Dh]
dec     ah
mov     [edx+0Dh], ah
jnz     short loc_43B773
call    sub_4DE13B
test    eax, eax
jz      short loc_43B767
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Dh
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0Dh
or      byte ptr [eax+6], 20h
mov     [eax+28h], edx
mov     ecx, [edx+1Ah]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+2Ch], ecx
mov     ecx, [edx+1Ch]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+30h], ecx
mov     ecx, [edx+1Eh]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+34h], ecx

loc_43B767:
call    rand_
and     al, 7
add     al, 1Eh
mov     [edx+0Dh], al

loc_43B773:
pop     edx
pop     ecx
retn
sub_43B716 endp




sub_43B776 proc near
push    edx
cmp     byte ptr [eax+3], 0
jnz     short loc_43B78B
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43B782[edx*4]
pop     edx
retn

loc_43B78B:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43B790[edx*4]
pop     edx
retn
sub_43B776 endp




sub_43B799 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_43B7D0
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Dh
mov     byte ptr [eax+0Ch], 0Dh
mov     bx, [edx]
mov     [eax+1Ch], bx
mov     bx, [edx+2]
mov     [eax+1Eh], bx
mov     dx, [edx+4]
mov     [eax+20h], dx
mov     byte ptr [eax+3], 0
or      byte ptr [eax+6], 20h

loc_43B7D0:
pop     edx
pop     ebx
retn
sub_43B799 endp




sub_43B7D3 proc near
push    edx
mov     edx, eax
mov     ah, [eax]
or      ah, 22h
mov     [edx], ah
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Dh], al
call    rand_
and     al, 3
mov     [edx+0Fh], al
mov     dword ptr [edx+14h], 3CC00028h
mov     word ptr [edx+24h], 20h ; ' '
mov     word ptr [edx+26h], 0
mov     dword ptr [edx+18h], 2C808080h
inc     byte ptr [edx+8]
lea     eax, [edx+28h]
mov     word ptr [eax+14h], 0
mov     eax, edx
call    sub_43B917
pop     edx
retn
sub_43B7D3 endp




sub_43B820 proc near

var_30= dword ptr -30h
var_28= dword ptr -28h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 54h
lea     ecx, [eax+28h]
mov     dl, [eax+0Ah]
test    dl, dl
jbe     short loc_43B83E
cmp     dl, 1
jz      loc_43B8EF
jmp     loc_43B910

loc_43B83E:
mov     bh, [eax+0Dh]
inc     bh
mov     [eax+0Dh], bh
cmp     bh, 10h
jnz     short loc_43B84E
inc     byte ptr [eax+0Ah]

loc_43B84E:
fild    word ptr [ecx+14h]
fadd    ds:dbl_50A284
call    __CHP
fistp   [esp+60h+var_10]
mov     edx, [esp+60h+var_10]
mov     [ecx+14h], dx
mov     eax, [eax+0Ah]
sar     eax, 18h
shl     eax, 6
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 4
mov     edx, [ecx+18h]
add     edx, eax
mov     [esp+60h+var_18], edx
xor     edx, edx
mov     [esp+60h+var_1C], edx
mov     [esp+60h+var_20], edx
mov     eax, esp
call    sub_4EF184
mov     eax, [ecx+14h]
sar     eax, 10h
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+60h+var_30]
lea     edx, [esp+60h+var_20]
mov     eax, esp
call    sub_4EF371
mov     eax, [ecx]
mov     eax, [eax+1Ah]
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+60h+var_30]
add     edx, eax
mov     [ecx+4], edx
mov     eax, [ecx]
mov     eax, [eax+1Eh]
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+60h+var_28]
add     edx, eax
mov     [ecx+0Ch], edx
jmp     short loc_43B8FF

loc_43B8EF:
mov     dl, [eax+0Dh]
inc     dl
mov     [eax+0Dh], dl
cmp     dl, 20h ; ' '
jnz     short loc_43B8FF
inc     byte ptr [eax+8]

loc_43B8FF:
fild    dword ptr [ecx+8]
fadd    ds:dbl_50A27C
call    __CHP
fistp   dword ptr [ecx+8]

loc_43B910:
add     esp, 54h
pop     edx
pop     ecx
pop     ebx
retn
sub_43B820 endp




sub_43B917 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_43B920[ecx*4]
lea     eax, [edx+28h]
mov     ecx, [eax+4]
sar     ecx, 10h
mov     [edx+1Ch], cx
mov     ecx, [eax+8]
sar     ecx, 10h
mov     [edx+1Eh], cx
mov     ecx, [eax+0Ch]
sar     ecx, 10h
mov     [edx+20h], cx
mov     eax, [eax+12h]
sar     eax, 10h
sar     eax, 8
mov     [edx+26h], ax
inc     byte ptr [edx+0Eh]
mov     eax, [edx+0Ch]
sar     eax, 18h
mov     cl, [edx+0Eh]
cmp     cl, ds:byte_5138F4[eax]
jb      short loc_43B96D
mov     byte ptr [edx+0Eh], 0

loc_43B96D:
mov     eax, [edx+0Ch]
sar     eax, 18h
mov     ecx, ds:off_5138E4[eax*4]
mov     eax, [edx+0Bh]
sar     eax, 18h
mov     al, [ecx+eax*2]
mov     [edx+22h], al
mov     eax, [edx+0Bh]
sar     eax, 18h
mov     al, [ecx+eax*2+1]
mov     [edx+23h], al
pop     edx
pop     ecx
retn
sub_43B917 endp



; Attributes: thunk

sub_43B996 proc near
jmp     sub_4DE3EA
sub_43B996 endp




sub_43B99B proc near
mov     byte ptr [eax+0Dh], 5
inc     byte ptr [eax+8]
retn
sub_43B99B endp




sub_43B9A3 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ah, [eax+0Dh]
dec     ah
mov     [edx+0Dh], ah
jnz     short loc_43B9FD
call    sub_4DE13B
test    eax, eax
jz      short loc_43B9F9
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Eh
mov     bl, [edx+3]
mov     [eax+3], bl
mov     byte ptr [eax+0Ch], 1
or      byte ptr [eax+6], 20h
lea     ecx, [eax+28h]
lea     ebx, [edx+28h]
mov     [ecx], edx
call    rand_
and     ah, 0Fh
mov     [ecx+16h], ax
movsx   eax, word ptr [ebx]
shl     eax, 10h
mov     [ecx+18h], eax
mov     eax, [edx+1Ch]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+8], eax

loc_43B9F9:
mov     byte ptr [edx+0Dh], 5

loc_43B9FD:
pop     edx
pop     ecx
pop     ebx
retn
sub_43B9A3 endp




sub_43BA01 proc near
push    edx
cmp     byte ptr [eax+0Ch], 0
jnz     short loc_43BA16
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43BA0D[edx*4]
pop     edx
retn

loc_43BA16:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43BA1B[edx*4]
pop     edx
retn
sub_43BA01 endp




sub_43BA24 proc near
push    ecx
push    esi
mov     ecx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_43BA60
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Eh
mov     si, [ecx]
mov     [eax+1Ch], si
mov     si, [ecx+2]
mov     [eax+1Eh], si
mov     cx, [ecx+4]
mov     [eax+20h], cx
mov     byte ptr [eax+0Ch], 0
mov     [eax+3], bl
or      byte ptr [eax+6], 20h
lea     ecx, [eax+28h]
mov     [ecx], dx

loc_43BA60:
pop     esi
pop     ecx
retn
sub_43BA24 endp

byte_43BA63 db 20h
db 20h, 8
word_43BA66 dw 808h
dword_43BA68 dd 0D2315202h, 0FF08508Ah
db 14h, 95h
dd offset unk_513910
pop     edx
retn
db 8Dh, 40h, 0
jpt_43BAAA dd offset loc_43BAB1 ; jump table for switch statement
dd offset loc_43BADA
dd offset loc_43BB4F
dd offset loc_43BB80
dd offset loc_43BBE1



sub_43BA8F proc near

var_14= byte ptr -14h
var_10= byte ptr -10h

push    edx
push    esi
push    edi
sub     esp, 8
or      byte ptr [eax], 2
mov     dl, [eax+3]
cmp     dl, 4           ; switch 5 cases
ja      def_43BAAA      ; jumptable 0043BAAA default case
and     edx, 0FFh
jmp     jpt_43BAAA[edx*4] ; switch jump

loc_43BAB1:             ; jumptable 0043BAAA case 0
mov     dword ptr [eax+14h], 3D48000Eh
mov     byte ptr [eax+22h], 40h ; '@'
mov     byte ptr [eax+23h], 20h ; ' '
mov     dword ptr [eax+18h], 2E808080h
mov     word ptr [eax+24h], 30h ; '0'
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+0Bh], 3
jmp     def_43BAAA      ; jumptable 0043BAAA default case

loc_43BADA:             ; jumptable 0043BAAA case 1
mov     word ptr [eax+24h], 1
mov     byte ptr [eax+8], 2
mov     byte ptr [eax+9], 1
mov     word ptr [eax+0Ah], 0
mov     dword ptr [eax+14h], 3D48000Eh
mov     byte ptr [eax+22h], 40h ; '@'
mov     byte ptr [eax+23h], 20h ; ' '
mov     dl, [eax+0Ch]
cmp     dl, 1
jb      short loc_43BB11
jbe     short loc_43BB2B
cmp     dl, 2
jz      short loc_43BB3D
jmp     def_43BAAA      ; jumptable 0043BAAA default case

loc_43BB11:
test    dl, dl
jnz     def_43BAAA      ; jumptable 0043BAAA default case
mov     dword ptr [eax+18h], 2E000080h
mov     word ptr [eax+26h], 8
jmp     def_43BAAA      ; jumptable 0043BAAA default case

loc_43BB2B:
mov     dword ptr [eax+18h], 2E008000h
mov     word ptr [eax+26h], 800h
jmp     def_43BAAA      ; jumptable 0043BAAA default case

loc_43BB3D:
mov     dword ptr [eax+18h], 2E008080h
mov     word ptr [eax+26h], 808h
jmp     def_43BAAA      ; jumptable 0043BAAA default case

loc_43BB4F:             ; jumptable 0043BAAA case 2
mov     dword ptr [eax+14h], 3D48000Eh
mov     byte ptr [eax+22h], 40h ; '@'
mov     byte ptr [eax+23h], 20h ; ' '
mov     byte ptr [eax+8], 3
mov     dl, [eax+3]
mov     [eax+9], dl
mov     word ptr [eax+0Ah], 0
mov     dword ptr [eax+18h], 2E000080h
mov     word ptr [eax+26h], 10h
jmp     loc_43BC0E

loc_43BB80:             ; jumptable 0043BAAA case 3
mov     dword ptr [eax+14h], 3D48002Eh
mov     byte ptr [eax+22h], 0E0h
mov     byte ptr [eax+23h], 60h ; '`'
mov     byte ptr [eax+8], 4
mov     byte ptr [eax+9], 0Ch
mov     word ptr [eax+0Ah], 0
mov     dword ptr [eax+18h], 2E808080h
mov     word ptr [eax+26h], 0
lea     edi, [esp+14h+var_10]
mov     esi, offset byte_43BA63
movsw
movsb
mov     edi, esp
mov     esi, offset word_43BA66
movsw
movsb
mov     edx, [eax+9]
sar     edx, 18h
mov     dl, [esp+edx+14h+var_10]
xor     dh, dh
mov     [eax+24h], dx
mov     edx, [eax+9]
sar     edx, 18h
mov     dl, [esp+edx+14h+var_14]
mov     [eax+0Ch], dl
or      byte ptr [eax], 20h
jmp     short def_43BAAA ; jumptable 0043BAAA default case

loc_43BBE1:             ; jumptable 0043BAAA case 4
or      byte ptr [eax], 20h
mov     dword ptr [eax+14h], 3D08000Eh
mov     byte ptr [eax+22h], 0E0h
mov     byte ptr [eax+23h], 20h ; ' '
mov     byte ptr [eax+8], 3
mov     byte ptr [eax+9], 0
mov     word ptr [eax+0Ah], 0
mov     dword ptr [eax+18h], 2E000080h
mov     word ptr [eax+26h], 0

loc_43BC0E:
mov     word ptr [eax+24h], 28h ; '('

def_43BAAA:             ; jumptable 0043BAAA default case
add     esp, 8
pop     edi
pop     esi
pop     edx
retn
sub_43BA8F endp




sub_43BC1B proc near
push    edx
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_43BC2D
call    sub_4DE3EA
pop     edx
retn

loc_43BC2D:
sub     dword ptr [eax+18h], 202020h
add     word ptr [eax+24h], 8
pop     edx
retn
sub_43BC1B endp




sub_43BC3B proc near
push    ebx
push    edx
mov     dl, [eax+9]
test    dl, dl
jbe     short loc_43BC4C
cmp     dl, 1
jz      short loc_43BC90
pop     edx
pop     ebx
retn

loc_43BC4C:
mov     byte ptr [eax+9], 1
mov     dl, [eax+0Ch]
cmp     dl, 1
jb      short loc_43BC61
jbe     short loc_43BC74
cmp     dl, 2
jz      short loc_43BC83
jmp     short loc_43BC90

loc_43BC61:
test    dl, dl
jnz     short loc_43BC90
mov     dword ptr [eax+18h], 2E000080h
mov     word ptr [eax+26h], 8
jmp     short loc_43BC90

loc_43BC74:
mov     dword ptr [eax+18h], 2E008000h
mov     word ptr [eax+26h], 800h
jmp     short loc_43BC90

loc_43BC83:
mov     dword ptr [eax+18h], 2E008080h
mov     word ptr [eax+26h], 808h

loc_43BC90:
mov     dx, [eax+24h]
cmp     dx, 1Fh
jg      short loc_43BCAF
mov     ebx, edx
add     ebx, 6
mov     [eax+24h], bx
xor     edx, edx
mov     dx, [eax+26h]
add     [eax+18h], edx
pop     edx
pop     ebx
retn

loc_43BCAF:
mov     byte ptr [eax+9], 2
mov     word ptr [eax+24h], 0
pop     edx
pop     ebx
retn
sub_43BC3B endp




sub_43BCBC proc near
push    ebx
push    edx
mov     dx, [eax+24h]
test    dx, dx
jg      short loc_43BCCF
call    sub_4DE3EA
pop     edx
pop     ebx
retn

loc_43BCCF:
mov     ebx, edx
sub     ebx, 8
mov     [eax+24h], bx
xor     edx, edx
mov     dx, [eax+26h]
sub     [eax+18h], edx
pop     edx
pop     ebx
retn
sub_43BCBC endp




sub_43BCE4 proc near
push    edx
cmp     byte ptr [eax+9], 0
jnz     short loc_43BCF2
call    sub_4DE3EA
pop     edx
retn

loc_43BCF2:
sub     dword ptr [eax+18h], 0A0A0Ah
movsx   dx, byte ptr [eax+0Ch]
add     [eax+24h], dx
dec     byte ptr [eax+9]
pop     edx
retn
sub_43BCE4 endp




sub_43BD07 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43BD0D[edx*4]
pop     edx
retn
sub_43BD07 endp

db 90h
jpt_43BD4E dd offset loc_43BD55 ; jump table for switch statement
dd offset loc_43BD55
dd offset loc_43BD5C
dd offset loc_43BD65



sub_43BD27 proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
cmp     byte ptr [ecx+3], 2
jb      short loc_43BD9E
mov     byte ptr [ecx+8], 3
xor     eax, eax
mov     al, [ecx+3]
sub     eax, 2          ; switch 4 cases
cmp     eax, 3
ja      short def_43BD4E ; jumptable 0043BD4E default case
jmp     jpt_43BD4E[eax*4] ; switch jump

loc_43BD55:             ; jumptable 0043BD4E cases 2,3
xor     esi, esi
mov     [esp+14h+var_14], esi
jmp     short def_43BD4E ; jumptable 0043BD4E default case

loc_43BD5C:             ; jumptable 0043BD4E case 4
mov     [esp+14h+var_14], 1
jmp     short def_43BD4E ; jumptable 0043BD4E default case

loc_43BD65:             ; jumptable 0043BD4E case 5
xor     edx, edx
mov     [esp+14h+var_14], edx
mov     byte ptr [ecx+8], 4

def_43BD4E:             ; jumptable 0043BD4E default case
mov     edx, esp
mov     eax, ecx
call    sub_4DD0F8
lea     eax, [ecx+18h]
call    sub_4EF1AB
mov     dword ptr [ecx+38h], 0
mov     eax, [ecx+38h]
mov     [ecx+28h], eax
mov     eax, [ecx+28h]
mov     [ecx+18h], eax
mov     dword ptr [ecx+50h], 2808080h
jmp     loc_43BE67

loc_43BD9E:
lea     eax, [ecx+3Ch]
mov     word ptr [eax+4], 0
xor     edx, edx
mov     dl, [ecx+3]
mov     ebx, edx
shl     ebx, 3
mov     edx, [ecx+9]
sar     edx, 18h
mov     dx, ds:word_513924[ebx+edx*2]
mov     [eax], dx
xor     edx, edx
mov     dl, [ecx+3]
mov     ebx, edx
shl     ebx, 3
mov     edx, [ecx+9]
sar     edx, 18h
mov     dx, ds:word_51393C[ebx+edx*2]
mov     [eax+2], dx
cmp     byte ptr [ecx+3], 0
jnz     short loc_43BE2C
xor     edx, edx
mov     dl, [ecx+3]
mov     ebx, edx
shl     ebx, 3
mov     edx, [ecx+9]
sar     edx, 18h
mov     dx, ds:word_513954[ebx+edx*2]
mov     [eax+6], dx
xor     ebx, ebx
mov     bl, [ecx+3]
mov     edx, [ecx+9]
sar     edx, 18h
add     edx, edx
mov     dx, ds:word_51396C[edx+ebx*8]
mov     [eax+8], dx
mov     word ptr [eax+0Ah], 0
lea     edx, [ecx+48h]
mov     eax, 14Fh
call    sub_4D8BC3

loc_43BE2C:
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     eax, [ecx+18h]
call    sub_4EF1AB
mov     dword ptr [ecx+38h], 0
mov     eax, [ecx+38h]
mov     [ecx+28h], eax
mov     eax, [ecx+28h]
mov     [ecx+18h], eax
mov     dword ptr [ecx+50h], 2808080h
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 20h ; ' '

loc_43BE67:
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43BD27 endp




; int __fastcall sub_43BE6F(int, int)
sub_43BE6F proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
push    edi             ; int
mov     ecx, eax
lea     edx, [eax+3Ch]
mov     ax, [edx+2]
mov     bx, [edx]
add     ebx, eax
mov     [edx], bx
add     [edx+4], bx
cmp     byte ptr [ecx+3], 0
jnz     short loc_43BEA3
mov     ax, [edx+8]
mov     di, [edx+6]
add     edi, eax
mov     [edx+6], di
add     [edx+0Ah], di
jmp     short loc_43BED0

loc_43BEA3:
xor     ebx, ebx
mov     bl, [ecx+0Bh]
shl     ebx, 2
mov     al, [ecx+0Bh]
test    al, al
jz      short loc_43BEB9
mov     ah, al
dec     ah
mov     [ecx+0Bh], ah

loc_43BEB9:
mov     esi, ebx
shl     esi, 10h
or      esi, 2000000h
mov     eax, ebx
shl     eax, 8
or      eax, esi
or      eax, ebx
mov     [ecx+50h], eax

loc_43BED0:
cmp     word ptr [edx+0Ah], 0
jl      short loc_43BEDD
cmp     word ptr [edx], 0
jge     short loc_43BEE6

loc_43BEDD:
mov     eax, ecx
call    sub_4DE3EA
jmp     short loc_43BF21

loc_43BEE6:
lea     ebx, [ecx+18h]
mov     eax, ebx
call    sub_4EF1AB
fild    word ptr [edx+4]
fmul    ds:dbl_50A28C
fst     dword ptr [ecx+38h]
fstp    dword ptr [ecx+18h]
fild    word ptr [edx+0Ah]
fmul    ds:dbl_50A28C
fstp    dword ptr [ecx+28h]
mov     dl, [ecx+9]
inc     dl
mov     [ecx+9], dl
xor     eax, eax
mov     al, dl
shl     eax, 7
mov     edx, ebx
call    sub_4EF50D

loc_43BF21:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43BE6F endp



; Attributes: thunk

sub_43BF27 proc near
jmp     sub_4DE3EA
sub_43BF27 endp




; int __fastcall sub_43BF2C(int, int)
sub_43BF2C proc near

var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
add     eax, 18h
call    sub_4EF1AB
cmp     byte ptr [ecx+0Ah], 80h
jnz     short loc_43BF49
mov     ebx, 80h
jmp     short loc_43BF6E

loc_43BF49:
xor     ebx, ebx
mov     bl, [ecx+9]
mov     eax, 10h
sub     eax, ebx
mov     ebx, eax
xor     eax, eax
mov     al, [ecx+0Ah]
add     ebx, eax
cmp     ebx, 80h
jl      short loc_43BF6B
mov     ebx, 80h

loc_43BF6B:
mov     [ecx+0Ah], bl

loc_43BF6E:
inc     byte ptr [ecx+9]
xor     edx, edx
mov     dl, [ecx+9]
shl     edx, 7
xor     eax, eax
mov     al, [ecx+3]
sub     eax, 2
cmp     eax, 1
jb      short loc_43BF92
jbe     short loc_43BFD6
cmp     eax, 2
jz      short loc_43BFFE
jmp     loc_43C00B

loc_43BF92:
test    eax, eax
jnz     short loc_43C00B
mov     dword ptr [ecx+38h], 3E400000h
mov     eax, [ecx+38h]
mov     [ecx+18h], eax
mov     eax, edx
call    sub_4EF008
mov     edx, eax
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     edx, eax
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 2
add     eax, edx

loc_43BFC5:
mov     [esp+10h+var_10], eax
fild    [esp+10h+var_10]
fmul    ds:dbl_50A294
fstp    dword ptr [ecx+28h]
jmp     short loc_43C00B

loc_43BFD6:
mov     dword ptr [ecx+38h], 3E000000h
mov     eax, [ecx+38h]
mov     [ecx+18h], eax
mov     eax, edx
call    sub_4EF003
mov     edx, eax
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
shl     ebx, 4
add     eax, ebx
jmp     short loc_43BFC5

loc_43BFFE:
mov     dword ptr [ecx+38h], 3E400000h
mov     eax, [ecx+38h]
mov     [ecx+18h], eax

loc_43C00B:
lea     edx, [ecx+18h]
xor     eax, eax
mov     al, [ecx+9]
shl     eax, 7
call    sub_4EF50D

loc_43C01B:
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_43BF2C endp

db 90h
jpt_43C05B dd offset loc_43C062 ; jump table for switch statement
dd offset loc_43C07E
dd offset loc_43C093
dd offset loc_43C0A2



; int __fastcall sub_43C033(int, int)
sub_43C033 proc near

var_C= dword ptr -0Ch

push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     edx, eax
add     eax, 18h
call    sub_4EF1AB
xor     ecx, ecx
mov     cl, [edx+0Ah]
inc     byte ptr [edx+9]
xor     eax, eax
mov     al, [edx+3]
sub     eax, 2          ; switch 4 cases
cmp     eax, 3
ja      def_43C05B      ; jumptable 0043C05B default case
jmp     jpt_43C05B[eax*4] ; switch jump

loc_43C062:             ; jumptable 0043C05B case 2
mov     dword ptr [edx+38h], 3E400000h
mov     eax, [edx+38h]
mov     [edx+18h], eax
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     [esp+0Ch+var_C], eax
jmp     short loc_43C0D4

loc_43C07E:             ; jumptable 0043C05B case 3
mov     dword ptr [edx+38h], 3E000000h
mov     eax, [edx+38h]
mov     [edx+18h], eax
shl     ecx, 4
mov     [esp+0Ch+var_C], ecx
jmp     short loc_43C0D4

loc_43C093:             ; jumptable 0043C05B case 4
mov     dword ptr [edx+38h], 3E400000h
mov     eax, [edx+38h]
mov     [edx+18h], eax
jmp     short def_43C05B ; jumptable 0043C05B default case

loc_43C0A2:             ; jumptable 0043C05B case 5
cmp     byte ptr [edx+9], 1Fh
jbe     short loc_43C0B1
mov     eax, edx
call    sub_4DE3EA
jmp     short loc_43C0F4

loc_43C0B1:
mov     dword ptr [edx+38h], 3E400000h
mov     eax, [edx+38h]
mov     [edx+18h], eax
xor     eax, eax
mov     al, [edx+9]
mov     al, ds:byte_513984[eax]
and     eax, 0FFh
shl     eax, 4
mov     [esp+0Ch+var_C], eax ; int

loc_43C0D4:
fild    [esp+0Ch+var_C]
fmul    ds:dbl_50A29C
fstp    dword ptr [edx+28h]

def_43C05B:             ; jumptable 0043C05B default case
lea     eax, [edx+18h]
xor     ecx, ecx
mov     cl, [edx+9]
shl     ecx, 7
mov     edx, eax
mov     eax, ecx
call    sub_4EF50D

loc_43C0F4:
add     esp, 4
pop     edx
pop     ecx
retn
sub_43C033 endp




sub_43C0FA proc near

var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 4
inc     byte ptr [eax+9]
mov     dh, [eax+0Ah]
dec     dh
mov     [eax+0Ah], dh
jnz     short loc_43C117
call    sub_4DE3EA
jmp     loc_43C01B

loc_43C117:
xor     edx, edx
mov     dl, [eax+0Ah]
shl     edx, 3
cmp     byte ptr [eax+3], 4
jnz     short loc_43C145
xor     ecx, ecx
mov     cl, [eax+9]
shl     ecx, 6
add     ecx, 300h
mov     [esp+10h+var_10], ecx
fild    [esp+10h+var_10]
fmul    ds:dbl_50A2A4
fst     dword ptr [eax+38h]
fstp    dword ptr [eax+18h]

loc_43C145:
mov     ecx, edx
shl     ecx, 10h
or      ecx, 2000000h
mov     ebx, edx
shl     ebx, 8
or      ecx, ebx
or      ecx, edx
mov     [eax+50h], ecx
jmp     loc_43C01B
sub_43C0FA endp




sub_43C161 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_43C16B[ecx*4]
cmp     byte ptr [edx+3], 0
jz      short loc_43C1BC
call    sub_4EE133
mov     ecx, [edx+18h]
mov     [eax+4], ecx
mov     ecx, [edx+1Ch]
mov     [eax+8], ecx
mov     ecx, [edx+20h]
mov     [eax+10h], ecx
mov     ecx, [edx+34h]
mov     [eax+0Ch], ecx
mov     ecx, [edx+38h]
mov     [eax+14h], ecx
mov     ecx, [edx+3Ch]
mov     ebx, ecx
and     ebx, 0FFFFh
mov     [eax+1Ch], ebx
shr     ecx, 10h
mov     [eax+24h], ecx
mov     dx, [edx+24h]
and     edx, 0FFFFh
mov     [eax+18h], edx

loc_43C1BC:
pop     edx
pop     ecx
pop     ebx
retn
sub_43C161 endp




sub_43C1C0 proc near
cmp     byte ptr [eax+3], 0
jnz     short loc_43C1C9
or      byte ptr [eax], 2

loc_43C1C9:
inc     byte ptr [eax+8]
mov     word ptr [eax+30h], 10h
retn
sub_43C1C0 endp




sub_43C1D3 proc near
push    ecx
push    edx
mov     dx, [eax+28h]
add     [eax+1Ch], dx
mov     dx, [eax+2Eh]
mov     cx, [eax+2Ah]
add     ecx, edx
mov     [eax+2Ah], cx
add     [eax+1Eh], cx
mov     dx, [eax+2Ch]
add     [eax+20h], dx
cmp     word ptr [eax+2Ah], 0
jl      short loc_43C201
inc     byte ptr [eax+8]

loc_43C201:
pop     edx
pop     ecx
retn
sub_43C1D3 endp




sub_43C204 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     dx, [eax+30h]
dec     dx
mov     [eax+30h], dx
jnz     short loc_43C217
inc     byte ptr [eax+8]

loc_43C217:
mov     edx, [eax+2Eh]
sar     edx, 10h
mov     ebx, edx
shl     ebx, 3
mov     ecx, edx
shl     ecx, 13h
or      ecx, 2E000000h
shl     edx, 0Bh
or      edx, ecx
or      edx, ebx
mov     [eax+18h], edx
mov     dx, [eax+28h]
add     [eax+1Ch], dx
mov     dx, [eax+2Eh]
mov     si, [eax+2Ah]
add     esi, edx
mov     [eax+2Ah], si
add     [eax+1Eh], si
mov     dx, [eax+2Ch]
add     [eax+20h], dx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43C204 endp



; Attributes: thunk

sub_43C25E proc near
jmp     sub_4DE3EA
sub_43C25E endp




sub_43C263 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
push    edx
push    ebx
mov     esi, ecx
call    rand_
mov     edi, eax
and     edi, 0FFFh
mov     eax, 1000h
mov     edx, eax
sar     edx, 1Fh
idiv    ebx
mov     [esp+20h+var_10], eax
xor     ebp, ebp

loc_43C28D:
cmp     ebp, [esp+20h+var_20]
jge     loc_43C37E
call    sub_4DE13B
mov     ecx, eax
test    eax, eax
jz      loc_43C36A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 11h
mov     dl, byte ptr [esp+20h+var_18]
mov     [eax+3], dl
mov     dl, byte ptr [esp+20h+var_1C]
mov     [eax+0Ch], dl
mov     dword ptr [eax+18h], 2E808080h
mov     dx, [esi]
mov     [eax+1Ch], dx
mov     dx, [esi+2]
mov     [eax+1Eh], dx
mov     dx, [esi+4]
mov     [eax+20h], dx
cmp     [esp+20h+var_18], 0
jz      short loc_43C30B
mov     edx, [esp+20h+var_1C]
mov     [esp+20h+var_14], edx
shl     edx, 2
add     edx, [esp+20h+var_14]
shl     edx, 2
add     edx, offset unk_513A60
mov     ebx, [edx+8]
mov     [eax+34h], ebx
mov     ebx, [edx+0Ch]
mov     [eax+38h], ebx
mov     ebx, [edx+10h]
mov     [eax+3Ch], ebx
jmp     short loc_43C32A

loc_43C30B:
mov     edx, [esp+20h+var_1C]
shl     edx, 4
add     edx, offset unk_5139C0
mov     ebx, [edx+8]
mov     [eax+14h], ebx
mov     bl, [edx+0Ch]
mov     [eax+22h], bl
mov     bl, [edx+0Dh]
mov     [eax+23h], bl

loc_43C32A:
mov     eax, edi
call    sub_4EF008
movsx   ebx, word ptr [edx]
imul    eax, ebx
sar     eax, 0Ch
mov     [ecx+28h], ax
mov     eax, edi
call    sub_4EF003
movsx   ebx, word ptr [edx]
imul    eax, ebx
sar     eax, 0Ch
mov     [ecx+2Ch], ax
mov     ax, [edx+2]
mov     [ecx+2Ah], ax
mov     ax, [edx+4]
mov     [ecx+2Eh], ax
mov     ax, [edx+6]
mov     [ecx+24h], ax

loc_43C36A:
call    rand_
and     eax, 3Fh
add     eax, [esp+20h+var_10]
add     edi, eax
inc     ebp
jmp     loc_43C28D

loc_43C37E:
add     esp, 14h
pop     ebp
pop     edi
pop     esi
retn
sub_43C263 endp




sub_43C385 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4
arg_4= dword ptr  8

push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
push    edx
push    ebx
mov     esi, ecx
mov     edi, [esp+20h+arg_0]
mov     edx, [esp+20h+arg_4]
sub     edx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     [esp+20h+var_10], eax
xor     ebp, ebp

loc_43C3A7:
cmp     ebp, [esp+20h+var_20]
jge     loc_43C498
call    sub_4DE13B
mov     ecx, eax
test    eax, eax
jz      loc_43C484
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 11h
mov     dl, byte ptr [esp+20h+var_18]
mov     [eax+3], dl
mov     dl, byte ptr [esp+20h+var_1C]
mov     [eax+0Ch], dl
mov     dword ptr [eax+18h], 2E808080h
mov     dx, [esi]
mov     [eax+1Ch], dx
mov     dx, [esi+2]
mov     [eax+1Eh], dx
mov     dx, [esi+4]
mov     [eax+20h], dx
cmp     [esp+20h+var_18], 0
jz      short loc_43C425
mov     edx, [esp+20h+var_1C]
mov     [esp+20h+var_14], edx
shl     edx, 2
add     edx, [esp+20h+var_14]
shl     edx, 2
add     edx, offset unk_513A60
mov     ebx, [edx+8]
mov     [eax+34h], ebx
mov     ebx, [edx+0Ch]
mov     [eax+38h], ebx
mov     ebx, [edx+10h]
mov     [eax+3Ch], ebx
jmp     short loc_43C444

loc_43C425:
mov     edx, [esp+20h+var_1C]
shl     edx, 4
add     edx, offset unk_5139C0
mov     ebx, [edx+8]
mov     [eax+14h], ebx
mov     bl, [edx+0Ch]
mov     [eax+22h], bl
mov     bl, [edx+0Dh]
mov     [eax+23h], bl

loc_43C444:
mov     eax, edi
call    sub_4EF008
movsx   ebx, word ptr [edx]
imul    eax, ebx
sar     eax, 0Ch
mov     [ecx+28h], ax
mov     eax, edi
call    sub_4EF003
movsx   ebx, word ptr [edx]
imul    eax, ebx
sar     eax, 0Ch
mov     [ecx+2Ch], ax
mov     ax, [edx+2]
mov     [ecx+2Ah], ax
mov     ax, [edx+4]
mov     [ecx+2Eh], ax
mov     ax, [edx+6]
mov     [ecx+24h], ax

loc_43C484:
call    rand_
and     eax, 3Fh
add     eax, [esp+20h+var_10]
add     edi, eax
inc     ebp
jmp     loc_43C3A7

loc_43C498:
add     esp, 14h
pop     ebp
pop     edi
pop     esi
retn    8
sub_43C385 endp




sub_43C4A1 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ebx, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_43C4BB
cmp     al, 1
jz      short loc_43C4C5
jmp     loc_43C5F4

loc_43C4BB:
mov     dword ptr [ebx+28h], 0
inc     byte ptr [ebx+8]

loc_43C4C5:
xor     esi, esi
inc     dword ptr [ebx+28h]
jmp     short loc_43C4D6

loc_43C4CC:
inc     esi
cmp     esi, 20h ; ' '
jge     loc_43C5F4

loc_43C4D6:
mov     edx, esi
shl     edx, 2
sub     edx, esi
shl     edx, 3
add     edx, offset unk_513A84
mov     eax, [edx+6]
sar     eax, 10h
imul    eax, [ebx+28h]
movsx   ecx, word ptr [edx]
add     eax, ecx
shr     eax, 4
mov     [esp+24h+var_24], eax
mov     eax, [edx+8]
sar     eax, 10h
mov     edi, [ebx+28h]
imul    eax, edi
mov     ecx, [edx]
sar     ecx, 10h
add     eax, ecx
shr     eax, 4
sub     eax, 1B1Ch
mov     [esp+24h+var_18], eax
mov     eax, [edx+0Ah]
sar     eax, 10h
imul    eax, edi
mov     ecx, [edx+2]
sar     ecx, 10h
add     eax, ecx
shr     eax, 4
mov     [esp+24h+var_20], eax
mov     eax, [edx+0Ch]
sar     eax, 10h
imul    eax, edi
mov     ecx, [edx+4]
sar     ecx, 10h
add     eax, ecx
shr     eax, 4
mov     [esp+24h+var_1C], eax
mov     eax, [edx+10h]
sar     eax, 10h
imul    edi, eax
xor     ecx, ecx
mov     cx, [edx+10h]
add     edi, ecx
shr     edi, 4
cmp     edi, 80h
jnb     loc_43C4CC
call    sub_4EE133
mov     ecx, eax
mov     eax, edi
shl     eax, 8
add     eax, edi
shl     eax, 8
add     eax, edi
mov     edi, 2E808080h
sub     edi, eax
mov     [ecx+4], edi
mov     edi, [esp+24h+var_1C+2]
sar     edi, 10h
shl     edi, 10h
mov     eax, [esp-2]
sar     eax, 10h
and     eax, 0FFFFh
or      eax, edi
mov     [ecx+8], eax
mov     eax, [esp+24h+var_24+2]
sar     eax, 10h
mov     [ecx+10h], eax
mov     al, [edx+14h]
shl     al, 5
add     al, 20h ; ' '
and     eax, 0FFh
mov     edx, eax
or      edx, 3D480000h
mov     [ecx+0Ch], edx
lea     edx, [eax+1Fh]
mov     edi, edx
or      edi, 4E0000h
mov     [ecx+14h], edi
or      ah, 1Fh
mov     [ecx+1Ch], eax
mov     dword ptr [ecx+20h], 0
or      dh, 1Fh
mov     [ecx+24h], edx
mov     eax, [esp+24h+var_20+2]
sar     eax, 10h
mov     [ecx+18h], eax
jmp     loc_43C4CC

loc_43C5F4:
add     esp, 10h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43C4A1 endp




sub_43C5FD proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43C603[edx*4]
pop     edx
retn
sub_43C5FD endp




sub_43C60C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43C612[edx*4]
pop     edx
retn
sub_43C60C endp




sub_43C61B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
lea     ecx, [eax+28h]
mov     ah, [eax]
or      ah, 2
mov     [edx], ah
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0
mov     byte ptr [ecx+18h], 80h
mov     word ptr [ecx+4], 0
mov     word ptr [ecx+6], 24h ; '$'
movsx   ax, byte ptr [edx+0Dh]
mov     [ecx+1Ah], ax
call    rand_
and     al, 3
mov     [ecx+19h], al
mov     ax, [edx+1Ch]
mov     [ecx+10h], ax
mov     ax, [edx+1Eh]
mov     [ecx+12h], ax
mov     ax, [edx+20h]
mov     [ecx+14h], ax
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx+0Ch], 0
xor     eax, eax
mov     al, [ecx+18h]
mov     ebx, eax
shl     ebx, 10h
or      ebx, 2E000000h
mov     esi, eax
shl     esi, 8
or      esi, ebx
or      esi, eax
mov     [edx+18h], esi
mov     dword ptr [edx+14h], 3D08002Eh
xor     eax, eax
mov     al, [ecx+19h]
mov     al, ds:byte_513D84[eax*2]
mov     [edx+22h], al
xor     eax, eax
mov     al, [ecx+19h]
mov     al, ds:byte_513D85[eax*2]
mov     [edx+23h], al
mov     word ptr [edx+24h], 20h ; ' '
push    80h
push    0
push    68000010h
add     ecx, 8
push    ecx
xor     eax, eax
mov     al, [edx+1]
push    eax
xor     esi, esi
mov     si, [edx+24h]
lea     eax, [edx+1Ch]
mov     ecx, 0A000h
xor     ebx, ebx
mov     edx, esi
call    sub_4E01FC
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43C61B endp




sub_43C6FD proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     esi, eax
lea     edi, [eax+28h]
xor     ecx, ecx
mov     cl, [eax+1]
add     eax, 1Ch
mov     ebx, offset unk_513D92
mov     edx, eax
call    sub_42CE61
test    eax, eax
jnz     loc_43C8BA
test    byte ptr [edi+0Bh], 2
jnz     loc_43C8BA
cmp     word ptr [edi+6], 6
jge     short loc_43C742
mov     al, [edi+6]
shl     al, 4
mov     [edi+18h], al
jmp     short loc_43C746

loc_43C742:
mov     byte ptr [edi+18h], 80h

loc_43C746:
xor     eax, eax
mov     al, [edi+18h]
mov     ecx, eax
shl     ecx, 10h
or      ecx, 2E000000h
mov     edx, eax
shl     edx, 8
or      edx, ecx
or      edx, eax
mov     [esi+18h], edx
mov     dl, [edi+19h]
inc     dl
mov     [edi+19h], dl
cmp     dl, 6
jbe     short loc_43C773
mov     byte ptr [edi+19h], 0

loc_43C773:
xor     eax, eax
mov     al, [edi+19h]
mov     al, ds:byte_513D84[eax*2]
mov     [esi+22h], al
xor     eax, eax
mov     al, [edi+19h]
mov     al, ds:byte_513D85[eax*2]
mov     [esi+23h], al
add     word ptr [esi+24h], 2
mov     cx, [edi+1Ah]
inc     ecx
mov     [edi+1Ah], cx
mov     eax, ecx
xor     ah, ch
and     al, 3Fh
cwde
shl     eax, 6
and     eax, 0FFFFh
call    sub_4EF008
shl     eax, 8
sar     eax, 0Ch
add     eax, [edi]
and     eax, 0FFFh
xor     edx, edx
mov     dx, ax
mov     eax, edx
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
add     ecx, eax
shl     ecx, 3
sar     ecx, 0Ch
mov     eax, [esi+1Ah]
sar     eax, 10h
add     eax, ecx
mov     [esi+1Ch], ax
mov     eax, edx
call    sub_4EF003
mov     edx, eax
shl     eax, 2
add     edx, eax
shl     edx, 3
sar     edx, 0Ch
mov     eax, [esi+1Eh]
sar     eax, 10h
add     eax, edx
mov     [esi+20h], ax
mov     ax, [edi+4]
add     eax, 20h ; ' '
and     ah, 0Fh
mov     [edi+4], ax
mov     eax, [edi+2]
sar     eax, 10h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 4
sar     eax, 0Ch
mov     edx, [edi+10h]
sar     edx, 10h
add     eax, edx
mov     [esi+1Eh], ax
mov     ax, [esi+1Ch]
mov     [esp+1Ch+var_1C], ax
mov     ax, [esi+1Eh]
mov     [esp+1Ch+var_1A], ax
mov     ax, [esi+20h]
mov     [esp+1Ch+var_18], ax
xor     ecx, ecx
mov     cl, [esi+1]
xor     ebx, ebx
mov     edx, offset unk_513D92
mov     eax, esp
call    sub_42C5B7
mov     [esp+1Ch+var_1A], ax
mov     edx, [esi+1Ch]
sar     edx, 10h
movsx   ecx, ax
cmp     ecx, edx
jge     short loc_43C87C
mov     [esi+1Eh], ax

loc_43C87C:
push    80h
push    0
push    68000010h
lea     eax, [edi+8]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
xor     edx, edx
mov     dx, [esi+24h]
lea     eax, [esi+1Ch]
mov     ecx, 0A000h
xor     ebx, ebx
call    sub_4E01FC
mov     dword ptr [edi+8], 0
mov     ax, [edi+6]
dec     ax
mov     [edi+6], ax
jnz     short loc_43C8BD

loc_43C8BA:
inc     byte ptr [esi+8]

loc_43C8BD:
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43C6FD endp




sub_43C8C6 proc near
push    edx
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
dec     byte ptr [eax+0Ch]
mov     eax, edx
call    sub_4DE3EA
pop     edx
retn
sub_43C8C6 endp




sub_43C8E0 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43C8E6[edx*4]
pop     edx
retn
sub_43C8E0 endp




sub_43C8EF proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax+8]
test    ah, ah
jnz     short loc_43C92B
or      byte ptr [ecx], 2
mov     dword ptr [ecx+14h], 3D48000Eh
mov     dword ptr [ecx+18h], 2E808080h
mov     al, ds:byte_513DC4
mov     [ecx+22h], al
mov     al, ds:byte_513DC5
mov     [ecx+23h], al
mov     word ptr [ecx+24h], 60h ; '`'
mov     [ecx+0Ch], ah
mov     [ecx+0Dh], ah
inc     byte ptr [ecx+8]

loc_43C92B:
cmp     byte ptr [ecx+0Ch], 0Ch
jge     short loc_43C99F
mov     edx, [ecx+9]
sar     edx, 18h
sar     edx, 1
mov     ebx, 6
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     [ecx+0Dh], dl
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     al, ds:byte_513DC4[eax*2]
mov     [ecx+22h], al
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     al, ds:byte_513DC5[edx*2]
mov     [ecx+23h], al
call    rand_
xor     ah, ah
and     al, 7
add     eax, 6
sub     [ecx+1Eh], ax
call    rand_
xor     ah, ah
and     al, 7
add     eax, 0Ch
add     [ecx+20h], ax
add     word ptr [ecx+24h], 2
sub     dword ptr [ecx+18h], 80808h
inc     byte ptr [ecx+0Ch]
pop     edx
pop     ecx
pop     ebx
retn

loc_43C99F:
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_43C8EF endp




sub_43C9AA proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
mov     edx, [eax+0Bh]
sar     edx, 18h
mov     esi, 5
mov     eax, edx
sar     edx, 1Fh
idiv    esi
test    edx, edx
jnz     loc_43CA55
call    sub_4DE13B
test    eax, eax
jz      loc_43CA55
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+0Dh], 2
mov     esi, [ecx+54h]
lea     edi, [eax+48h]
movsd
movsd
lea     edx, [eax+48h]
call    rand_
mov     ebx, eax
cwde
mov     [esp+1Ch+var_1C], eax
sar     eax, 2
and     eax, 1FFh
test    byte ptr [esp+1Ch+var_1C], 1
jnz     short loc_43CA10
neg     eax

loc_43CA10:
mov     esi, eax
movsx   eax, bx
mov     edi, eax
sar     edi, 4
mov     [esp+1Ch+var_18], edi
sar     eax, 6
and     eax, 1FFh
test    byte ptr [esp+1Ch+var_18], 1
jnz     short loc_43CA2F
neg     eax

loc_43CA2F:
mov     edi, eax
add     [edx], si
movsx   eax, bx
sar     eax, 8
and     eax, 0FFh
mov     esi, 400h
sub     esi, eax
mov     eax, [edx]
sar     eax, 10h
add     eax, esi
mov     [edx+2], ax
add     [edx+4], di

loc_43CA55:
mov     ah, [ecx+0Eh]
inc     ah
mov     [ecx+0Eh], ah
cmp     ah, 29h ; ')'
jnz     short loc_43CA69
mov     eax, ecx
call    sub_4DE3EA

loc_43CA69:
add     esp, 8
jmp     loc_43CB4D
sub_43C9AA endp




sub_43CA71 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     ecx, eax
mov     edx, [eax+0Bh]
sar     edx, 18h
mov     ebx, 5
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     loc_43CB36
call    sub_4DE13B
test    eax, eax
jz      loc_43CB36
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+0Dh], 2
mov     esi, [ecx+54h]
lea     edi, [eax+48h]
movsd
movsd
lea     edx, [eax+48h]
call    rand_
mov     esi, eax
cwde
mov     ebx, eax
sar     ebx, 2
test    al, 1
jz      short loc_43CADB
mov     eax, ebx
and     eax, 0FFh
sub     eax, 300h
jmp     short loc_43CAEB

loc_43CADB:
mov     eax, ebx
and     eax, 1FFh
mov     ebx, 0FFFFFD00h
sub     ebx, eax
mov     eax, ebx

loc_43CAEB:
mov     edi, eax
movsx   eax, si
mov     ebx, eax
sar     ebx, 4
sar     eax, 6
and     eax, 0FFh
test    bl, 1
jz      short loc_43CB53
mov     ebx, 180h
sub     ebx, eax

loc_43CB09:
mov     [esp+18h+var_18], ebx
movsx   eax, si
mov     ebx, eax
sar     ebx, 8
sar     eax, 0Ah
and     eax, 0FFh
test    bl, 1
jz      short loc_43CB5B
mov     esi, 100h
sub     esi, eax

loc_43CB28:
add     [edx], di
mov     eax, [esp+18h+var_18]
add     [edx+2], ax
add     [edx+4], si

loc_43CB36:
mov     ah, [ecx+0Eh]
inc     ah
mov     [ecx+0Eh], ah
cmp     ah, 29h ; ')'

loc_43CB41:
jnz     short loc_43CB4A
mov     eax, ecx
call    sub_4DE3EA

loc_43CB4A:
add     esp, 4

loc_43CB4D:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_43CB53:
lea     ebx, [eax-180h]
jmp     short loc_43CB09

loc_43CB5B:
lea     esi, [eax-100h]
jmp     short loc_43CB28
sub_43CA71 endp




sub_43CB63 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     ecx, eax
mov     edx, [eax+0Bh]
sar     edx, 18h
mov     ebx, 5
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_43CB36
call    sub_4DE13B
test    eax, eax
jz      short loc_43CB36
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+0Dh], 2
mov     esi, [ecx+54h]
lea     edi, [eax+48h]
movsd
movsd
lea     edx, [eax+48h]
call    rand_
mov     esi, eax
cwde
mov     ebx, eax
sar     ebx, 2
test    al, 1
jz      short loc_43CBCC
mov     eax, ebx
and     eax, 0FFh
mov     ebx, 300h
sub     ebx, eax
mov     eax, ebx
jmp     loc_43CAEB

loc_43CBCC:
mov     eax, ebx
and     eax, 1FFh
add     eax, 300h
jmp     loc_43CAEB
sub_43CB63 endp




sub_43CBDD proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     ecx, eax
mov     edx, [eax+0Bh]
sar     edx, 18h
mov     esi, 5
mov     eax, edx
sar     edx, 1Fh
idiv    esi
test    edx, edx
jnz     loc_43CC7D
call    sub_4DE13B
test    eax, eax
jz      short loc_43CC7D
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+0Dh], 2
mov     esi, [ecx+54h]
lea     edi, [eax+48h]
movsd
movsd
lea     edx, [eax+48h]
call    rand_
mov     ebx, eax
cwde
mov     esi, eax
sar     esi, 2
and     esi, 1FFh
test    al, 1
jnz     short loc_43CC3D
neg     esi

loc_43CC3D:
movsx   eax, bx
mov     edi, eax
sar     edi, 4
mov     [esp+18h+var_18], edi
sar     eax, 6
and     eax, 1FFh
test    byte ptr [esp+18h+var_18], 1
jnz     short loc_43CC58
neg     eax

loc_43CC58:
add     [edx], si
add     [edx+2], ax
movsx   eax, bx
sar     eax, 8
and     eax, 0FFh
mov     esi, 280h
sub     esi, eax
mov     eax, [edx+2]
sar     eax, 10h
sub     eax, esi
mov     [edx+4], ax

loc_43CC7D:
mov     ah, [ecx+0Eh]
inc     ah
mov     [ecx+0Eh], ah
cmp     ah, 33h ; '3'
jmp     loc_43CB41
sub_43CBDD endp




sub_43CC8D proc near
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
cmp     ds:byte_77E7D4, 0Dh
jnz     short loc_43CCAB
cmp     byte ptr [eax+0Ch], 0
jz      short loc_43CCB9

loc_43CCAB:
xor     ecx, ecx
mov     cl, [edx+3]
mov     eax, edx
call    ds:funcs_43CCB2[ecx*4]

loc_43CCB9:
pop     edx
pop     ecx
retn
sub_43CC8D endp




sub_43CCBC proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43CCC2[edx*4]
pop     edx
retn
sub_43CCBC endp




sub_43CCCB proc near
push    ecx
push    edx
lea     ecx, [eax+28h]
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
mov     byte ptr [eax+0Fh], 0
xor     edx, edx

loc_43CCE6:
mov     eax, edx
mov     byte ptr [ecx+eax*2], 0
mov     byte ptr [ecx+eax*2+1], 0
inc     edx
cmp     edx, 10h
jb      short loc_43CCE6
pop     edx
pop     ecx
retn
sub_43CCCB endp




sub_43CCFA proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
add     eax, 28h ; '('
mov     [esp+1Ch+var_1C], eax
mov     eax, [esi+9]
sar     eax, 18h
call    sub_4E1877
mov     ebp, eax
mov     dl, [esi+0Dh]
test    dl, dl
jnz     short loc_43CD2C
test    byte ptr [eax], 1

loc_43CD22:
jnz     short loc_43CD38
inc     byte ptr [esi+8]
jmp     loc_43CE24

loc_43CD2C:
cmp     dl, 1
jnz     short loc_43CD38
cmp     word ptr [eax+44h], 0
jmp     short loc_43CD22

loc_43CD38:
mov     cl, [esi+0Fh]
cmp     cl, 40h ; '@'
jge     short loc_43CD47
mov     ch, cl
inc     ch
mov     [esi+0Fh], ch

loc_43CD47:
mov     ax, [ebp+14h]
mov     [esi+1Ch], ax
mov     ax, [ebp+16h]
mov     [esi+1Eh], ax
mov     ax, [ebp+18h]
mov     [esi+20h], ax
mov     edx, [esi+0Ah]
sar     edx, 18h
mov     edx, ds:dword_513DD0[edx*4]
mov     eax, [ebp+54h]
sar     eax, 10h
add     eax, 800h
and     eax, 0FFFh
call    sub_4EF008
mov     ecx, eax
imul    ecx, edx
shr     ecx, 0Ch
mov     eax, [esi+1Ah]
sar     eax, 10h
add     eax, ecx
mov     [esi+1Ch], ax
mov     eax, [ebp+54h]
sar     eax, 10h
add     eax, 800h
and     eax, 0FFFh
call    sub_4EF003
imul    edx, eax
shr     edx, 0Ch
mov     eax, [esi+1Eh]
sar     eax, 10h
add     eax, edx
mov     [esi+20h], ax
mov     eax, [esi+0Ah]
sar     eax, 18h
mov     ax, ds:word_513DE0[eax*4]
sub     [esi+1Eh], ax
xor     edi, edi
jmp     short loc_43CDEC

loc_43CDD2:
mov     edx, [esi+0Ch]
sar     edx, 18h
sar     edx, 2
cmp     edi, edx
jnb     short loc_43CDE6
mov     dl, ah
or      dl, 1
mov     [ecx], dl

loc_43CDE6:
inc     edi
cmp     edi, 6
jnb     short loc_43CE24

loc_43CDEC:
lea     ecx, [edi+edi]
add     ecx, [esp+1Ch+var_1C]
mov     ah, [ecx]
test    ah, 1
jz      short loc_43CDD2
movsx   ebx, byte ptr [ecx+1]
mov     dx, [ebp+56h]
add     dh, 8
and     dh, 0Fh
movsx   edx, dx
mov     eax, esi
call    sub_43CE33
mov     dh, [ecx+1]
inc     dh
mov     [ecx+1], dh
cmp     dh, 18h
jle     short loc_43CDE6
mov     byte ptr [ecx+1], 0
jmp     short loc_43CDE6

loc_43CE24:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43CCFA endp



; Attributes: thunk

sub_43CE2E proc near
jmp     sub_4DE3EA
sub_43CE2E endp




sub_43CE33 proc near

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
var_28= word ptr -28h
var_24= word ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch
var_18= byte ptr -18h
var_14= byte ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 48h
mov     ecx, eax
mov     [esp+58h+var_14], 80h
mov     [esp+58h+var_20], 40h ; '@'
mov     [esp+58h+var_1C], 0F0h
mov     ah, 0A0h
mov     [esp+58h+var_18], ah
mov     bh, ah
add     dh, 4
mov     esi, edx
movsx   ax, bl
mov     edx, eax
shl     edx, 4
add     edx, esi
and     dh, 0Fh
mov     esi, eax
shl     esi, 7
and     esi, 0FFFh
mov     [esp+58h+var_28], si
imul    eax, 0Fh
mov     [esp+58h+var_24], ax
movsx   esi, dx
mov     eax, esi
call    sub_4EF008
mov     ebp, [esp+32h]
sar     ebp, 10h
imul    eax, ebp
sar     eax, 0Ch
mov     [esp+58h+var_48], eax
mov     eax, [ecx+1Ah]
sar     eax, 10h
add     eax, [esp+58h+var_48]
mov     [esp+58h+var_48], eax
mov     eax, [esp+58h+var_48]
mov     word ptr [esp+58h+var_44], ax
mov     eax, esi
call    sub_4EF003
imul    eax, ebp
sar     eax, 0Ch
mov     esi, [ecx+1Eh]
sar     esi, 10h
add     eax, esi
mov     di, ax
cmp     bl, 11h
jge     short loc_43CEF5
mov     eax, [esp+2Eh]
sar     eax, 10h
call    sub_4EF008
mov     esi, eax
shl     eax, 2
add     eax, esi
shl     eax, 3
sar     eax, 0Ch
mov     esi, [ecx+1Ch]
sar     esi, 10h
sub     esi, eax
mov     word ptr [esp+58h+var_44+2], si
jmp     short loc_43CEFE

loc_43CEF5:
mov     ax, [ecx+1Eh]
mov     word ptr [esp+58h+var_44+2], ax

loc_43CEFE:
call    sub_4EE133
movzx   esi, [esp+58h+var_1C]
shl     esi, 10h
or      esi, 2E000000h
mov     [esp+58h+var_48], esi
movzx   esi, [esp+58h+var_18]
shl     esi, 8
or      esi, [esp+58h+var_48]
movzx   ebp, bh
or      ebp, esi
mov     [esp+58h+var_48], ebp
mov     [eax+4], ebp
mov     esi, [esp+58h+var_44]
mov     [eax+8], esi
mov     [eax+10h], edi
movzx   esi, [esp+58h+var_20]
shl     esi, 8
mov     [esp+58h+var_58], esi
or      esi, 3D480000h
mov     [esp+58h+var_50], esi
movzx   esi, [esp+58h+var_14]
mov     ebp, [esp+58h+var_50]
or      ebp, esi
mov     [esp+58h+var_34], ebp
mov     [eax+0Ch], ebp
mov     ebp, [esp+58h+var_58]
or      ebp, 0E0000h
mov     [esp+58h+var_40], ebp
lea     ebp, [esi+1Fh]
mov     [esp+58h+var_30], ebp
mov     ebp, [esp+58h+var_40]
or      ebp, [esp+58h+var_30]
mov     [esp+58h+var_4C], ebp
mov     [eax+14h], ebp
mov     ebp, [esp+58h+var_58]
add     ebp, 1F00h
mov     [esp+58h+var_54], ebp
or      ebp, esi
mov     [esp+58h+var_38], ebp
mov     [eax+1Ch], ebp
mov     esi, [esp+58h+var_54]
mov     ebp, [esp+58h+var_30]
or      esi, ebp
mov     [esp+58h+var_3C], esi
mov     [eax+24h], esi
mov     esi, [ecx+0Ah]
sar     esi, 18h
movsx   ebp, bl
add     ebp, ebp
mov     [esp+58h+var_2C], ebp
mov     esi, ds:dword_513DD8[esi*4]
sub     esi, ebp
mov     [eax+18h], esi
mov     dword ptr [eax+20h], 0
movsx   ax, bl
shl     eax, 5
add     ah, 8
sub     edx, eax
and     dh, 0Fh
movsx   edx, dx
mov     eax, edx
call    sub_4EF008
mov     esi, [esp+32h]
sar     esi, 10h
imul    eax, esi
sar     eax, 0Ch
mov     ebp, [ecx+1Ah]
sar     ebp, 10h
add     eax, ebp
mov     word ptr [esp+58h+var_44], ax
mov     eax, edx
call    sub_4EF003
imul    eax, esi
sar     eax, 0Ch
mov     edx, [ecx+1Eh]
sar     edx, 10h
add     eax, edx
mov     di, ax
call    sub_4EE133
mov     edx, [esp+58h+var_48]
mov     [eax+4], edx
mov     edx, [esp+58h+var_44]
mov     [eax+8], edx
mov     [eax+10h], edi
mov     edx, [esp+58h+var_34]
mov     [eax+0Ch], edx
mov     edx, [esp+58h+var_4C]
mov     [eax+14h], edx
mov     edx, [esp+58h+var_38]
mov     [eax+1Ch], edx
mov     edx, [esp+58h+var_3C]
mov     [eax+24h], edx
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_513DD8[edx*4]
mov     ecx, [esp+58h+var_2C]
sub     edx, ecx
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 0
add     esp, 48h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_43CE33 endp




sub_43D06C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43D072[edx*4]
pop     edx
retn
sub_43D06C endp




sub_43D07B proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
add     eax, 28h ; '('
mov     [esp+1Ch+var_1C], eax
mov     eax, [esi+9]
sar     eax, 18h
call    sub_4E1877
mov     ebp, eax
test    byte ptr [eax], 1
jnz     short loc_43D0A6
inc     byte ptr [esi+8]
jmp     loc_43CE24

loc_43D0A6:
mov     dh, [esi+0Fh]
cmp     dh, 40h ; '@'
jge     short loc_43D0B5
mov     bl, dh
inc     bl
mov     [esi+0Fh], bl

loc_43D0B5:
mov     ax, [ebp+14h]
mov     [esi+1Ch], ax
mov     ax, [ebp+16h]
mov     [esi+1Eh], ax
mov     ax, [ebp+18h]
mov     [esi+20h], ax
mov     ax, [ebp+56h]
and     ah, 0Fh
cwde
call    sub_4EF008
mov     edx, eax
shl     edx, 2
sub     edx, eax
shl     edx, 3
add     edx, eax
shl     edx, 2
mov     ecx, edx
shl     edx, 2
add     edx, ecx
sar     edx, 0Ch
mov     eax, [esi+1Ah]
sar     eax, 10h
add     eax, edx
mov     [esi+1Ch], ax
mov     ax, [ebp+56h]
and     ah, 0Fh
cwde
call    sub_4EF003
mov     edx, eax
shl     edx, 2
sub     edx, eax
shl     edx, 3
add     edx, eax
shl     edx, 2
mov     ecx, edx
shl     edx, 2
add     edx, ecx
sar     edx, 0Ch
mov     eax, [esi+1Eh]
sar     eax, 10h
add     eax, edx
mov     [esi+20h], ax
xor     edi, edi
sub     word ptr [esi+1Eh], 60h ; '`'
jmp     short loc_43D157

loc_43D13A:
mov     edx, [esi+0Ch]
sar     edx, 18h
sar     edx, 1
cmp     edi, edx
jnb     short loc_43D14D
mov     ah, al
or      ah, 1
mov     [ecx], ah

loc_43D14D:
inc     edi
cmp     edi, 6
jnb     loc_43CE24

loc_43D157:
lea     ecx, [edi+edi]
add     ecx, [esp+1Ch+var_1C]
mov     al, [ecx]
test    al, 1
jz      short loc_43D13A
movsx   ebx, byte ptr [ecx+1]
mov     dx, [ebp+56h]
and     dh, 0Fh
movsx   edx, dx
mov     eax, esi
call    sub_43D18B
mov     dl, [ecx+1]
inc     dl
mov     [ecx+1], dl
cmp     dl, 0Ch
jle     short loc_43D14D
mov     byte ptr [ecx+1], 0
jmp     short loc_43D14D
sub_43D07B endp




sub_43D18B proc near

var_2C= dword ptr -2Ch
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
sub     esp, 1Ch
mov     ecx, eax
mov     edi, edx
mov     [esp+2Ch+var_14], bl
mov     eax, [esp+2Ch+var_18+1]
sar     eax, 18h
mov     [esp+2Ch+var_24], eax
lea     edx, [eax+eax]
mov     eax, edx
shl     edx, 4
sub     edx, eax
movsx   ebx, di
mov     eax, ebx
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
mov     ebp, [ecx+1Ah]
sar     ebp, 10h
add     ebp, eax
mov     [esp+2Ch+var_2C], ebp
mov     eax, [esp+2Ch+var_2C]
mov     word ptr [esp+2Ch+var_18], ax
mov     eax, ebx
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
mov     ebp, [ecx+1Eh]
sar     ebp, 10h
add     ebp, eax
mov     [esp+2Ch+var_28], ebp
movsx   ax, [esp+2Ch+var_14]
shl     eax, 2
mov     si, [ecx+1Eh]
add     si, ax
mov     word ptr [esp+2Ch+var_18+2], si
add     edi, 400h
and     edi, 0FFFh
movsx   eax, di
mov     [esp+2Ch+var_1C], eax
call    sub_4EF008
mov     [esp+2Ch+var_20], eax
shl     eax, 2
mov     ebp, [esp+2Ch+var_20]
sub     eax, ebp
shl     eax, 3
add     eax, ebp
shl     eax, 2
sar     eax, 0Ch
mov     [esp+2Ch+var_20], eax
mov     eax, [esp-2]
sar     eax, 10h
add     eax, [esp+2Ch+var_20]
mov     word ptr [esp+2Ch+var_18], ax
mov     eax, [esp+2Ch+var_1C]
call    sub_4EF003
mov     [esp+2Ch+var_20], eax
shl     eax, 2
mov     ebp, [esp+2Ch+var_20]
sub     eax, ebp
shl     eax, 3
add     eax, ebp
shl     eax, 2
sar     eax, 0Ch
mov     [esp+2Ch+var_20], eax
mov     eax, [esp+2Ch+var_2C+2]
sar     eax, 10h
add     eax, [esp+2Ch+var_20]
mov     si, ax
call    sub_4EE133
mov     dword ptr [eax+4], 2EF0A0A0h
mov     ebp, [esp+2Ch+var_18]
mov     [eax+8], ebp
mov     [eax+10h], esi
mov     dword ptr [eax+0Ch], 3D484080h
mov     dword ptr [eax+14h], 0E409Fh
mov     dword ptr [eax+1Ch], 5F80h
mov     dword ptr [eax+24h], 5F9Fh
mov     ebp, [esp+2Ch+var_24]
shl     ebp, 2
mov     [esp+2Ch+var_20], ebp
mov     ebp, 80h
sub     ebp, [esp+2Ch+var_20]
mov     [esp+2Ch+var_1C], ebp
mov     [eax+18h], ebp
mov     dword ptr [eax+20h], 0
mov     eax, ebx
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
mov     [esp+2Ch+var_20], eax
mov     eax, [ecx+1Ah]
sar     eax, 10h
mov     ebp, [esp+2Ch+var_20]
add     ebp, eax
mov     [esp+2Ch+var_20], ebp
mov     eax, [esp+2Ch+var_20]
mov     word ptr [esp+2Ch+var_18], ax
mov     eax, ebx
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
mov     ebx, [ecx+1Eh]
sar     ebx, 10h
add     ebx, eax
sub     edi, 800h
and     edi, 0FFFh
movsx   edx, di
mov     eax, edx
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
sub     eax, ecx
shl     eax, 3
add     ecx, eax
shl     ecx, 2
sar     ecx, 0Ch
mov     eax, [esp+2Ch+var_24+2]
sar     eax, 10h
add     eax, ecx
mov     word ptr [esp+2Ch+var_18], ax
mov     eax, edx
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     edx, eax
shl     edx, 2
sar     edx, 0Ch
movsx   eax, bx
add     eax, edx
mov     si, ax
call    sub_4EE133
mov     dword ptr [eax+4], 2EF0A0A0h
mov     edx, [esp+2Ch+var_18]
mov     [eax+8], edx
mov     [eax+10h], esi
mov     dword ptr [eax+0Ch], 3D484080h
mov     dword ptr [eax+14h], 0E409Fh
mov     dword ptr [eax+1Ch], 5F80h
mov     dword ptr [eax+24h], 5F9Fh
mov     edx, [esp+2Ch+var_1C]
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 0
add     esp, 1Ch
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_43D18B endp




sub_43D3A9 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43D3AF[edx*4]
pop     edx
retn
sub_43D3A9 endp




sub_43D3B8 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
add     eax, 28h ; '('
mov     [esp+1Ch+var_1C], eax
mov     eax, [esi+9]
sar     eax, 18h
call    sub_4E1877
mov     ebp, eax
cmp     word ptr [eax+44h], 0
jnz     short loc_43D3E5
inc     byte ptr [esi+8]
jmp     loc_43CE24

loc_43D3E5:
mov     ah, [esi+0Fh]
cmp     ah, 40h ; '@'
jge     short loc_43D3F4
mov     dl, ah
inc     dl
mov     [esi+0Fh], dl

loc_43D3F4:
mov     ax, [ebp+14h]
mov     [esi+1Ch], ax
mov     ax, [ebp+16h]
mov     [esi+1Eh], ax
mov     ax, [ebp+18h]
mov     [esi+20h], ax
mov     ax, [ebp+56h]
and     ah, 0Fh
cwde
call    sub_4EF008
mov     edx, eax
shl     edx, 2
add     edx, eax
shl     edx, 6
sar     edx, 0Ch
mov     eax, [esi+1Ah]
sar     eax, 10h
add     eax, edx
mov     [esi+1Ch], ax
mov     ax, [ebp+56h]
and     ah, 0Fh
cwde
call    sub_4EF003
mov     edx, eax
shl     edx, 2
add     edx, eax
shl     edx, 6
sar     edx, 0Ch
mov     eax, [esi+1Eh]
sar     eax, 10h
add     eax, edx
mov     [esi+20h], ax
xor     edi, edi
sub     word ptr [esi+1Eh], 10h
jmp     short loc_43D47E

loc_43D461:
mov     edx, [esi+0Ch]
sar     edx, 18h
sar     edx, 1
cmp     edi, edx
jnb     short loc_43D474
mov     bh, bl
or      bh, 1
mov     [ecx], bh

loc_43D474:
inc     edi
cmp     edi, 4
jnb     loc_43CE24

loc_43D47E:
lea     ecx, [edi+edi]
add     ecx, [esp+1Ch+var_1C]
mov     bl, [ecx]
test    bl, 1
jz      short loc_43D461
movsx   ebx, byte ptr [ecx+1]
mov     dx, [ebp+56h]
and     dh, 0Fh
movsx   edx, dx
mov     eax, esi
call    sub_43D4B2
mov     al, [ecx+1]
inc     al
mov     [ecx+1], al
cmp     al, 8
jle     short loc_43D474
mov     byte ptr [ecx+1], 0
jmp     short loc_43D474
sub_43D3B8 endp




sub_43D4B2 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= byte ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 0Ch
mov     ecx, eax
mov     eax, edx
mov     [esp+18h+var_10], bl
mov     esi, [esp+5]
sar     esi, 18h
lea     edx, [esi+esi]
mov     ebx, edx
shl     edx, 4
sub     edx, ebx
movsx   ebx, ax
mov     eax, ebx
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
mov     edi, [ecx+1Ah]
sar     edi, 10h
add     eax, edi
mov     word ptr [esp+18h+var_18], ax
mov     eax, ebx
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
mov     edx, [ecx+1Eh]
sar     edx, 10h
add     eax, edx
mov     word ptr [esp+18h+var_14], ax
movsx   ax, [esp+18h+var_10]
shl     eax, 2
mov     dx, [ecx+1Eh]
add     edx, eax
mov     word ptr [esp+18h+var_18+2], dx
call    sub_4EE133
mov     dword ptr [eax+4], 2EF0A0A0h
mov     edx, [esp+18h+var_18]
mov     [eax+8], edx
mov     edx, [esp+18h+var_14]
mov     [eax+10h], edx
mov     dword ptr [eax+0Ch], 3D484080h
mov     dword ptr [eax+14h], 0E409Fh
mov     dword ptr [eax+1Ch], 5F80h
mov     dword ptr [eax+24h], 5F9Fh
shl     esi, 2
mov     edx, 40h ; '@'
sub     edx, esi
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 0
add     esp, 0Ch
pop     edi
pop     esi
pop     ecx
retn
sub_43D4B2 endp




sub_43D56B proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax
mov     edx, [eax+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
mov     ebx, offset unk_513E18
add     ebx, eax
mov     al, [ecx+8]
test    al, al
jbe     short loc_43D59C
cmp     al, 1
jz      short loc_43D5C3
jmp     loc_43D697

loc_43D59C:
or      byte ptr [ecx], 6
mov     al, [ebx+20h]
mov     [ecx+3], al
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
mov     word ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+8]

loc_43D5C3:
mov     dx, [ecx+0Eh]
inc     edx
mov     [ecx+0Eh], dx
mov     eax, edx
mov     edx, [ebx+6]
sar     edx, 10h
xor     esi, esi
mov     si, ax
imul    edx, esi
movsx   edi, word ptr [ebx]
add     edx, edi
sar     edx, 4
mov     [ecx+48h], dx
mov     edi, [ebx+8]
sar     edi, 10h
imul    edi, esi
mov     edx, [ebx]
sar     edx, 10h
add     edx, edi
sar     edx, 4
sub     edx, 1B1Ch
mov     [ecx+4Ah], dx
mov     edx, [ebx+0Ah]
sar     edx, 10h
imul    edx, esi
mov     edi, [ebx+2]
sar     edi, 10h
add     edx, edi
sar     edx, 4
mov     [ecx+4Ch], dx
mov     dx, [ebx+18h]
imul    edx, eax
shl     edx, 7
mov     di, [ebx+10h]
add     edi, edx
mov     [esp+2Ch+var_1C], di
mov     dx, [ebx+1Ah]
imul    edx, eax
shl     edx, 7
mov     di, [ebx+12h]
add     edi, edx
mov     [esp+2Ch+var_1A], di
imul    ax, [ebx+1Ch]
shl     eax, 7
mov     dx, [ebx+14h]
add     edx, eax
mov     [esp+2Ch+var_18], dx
lea     edx, [ecx+18h]
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     eax, [ebx+0Ch]
sar     eax, 10h
imul    eax, esi
mov     edx, [ebx+4]
sar     edx, 10h
add     eax, edx
sar     eax, 4
test    ax, ax
jge     short loc_43D681
xor     eax, eax

loc_43D681:
cwde
mov     [esp+2Ch+var_2C], eax
mov     [esp+2Ch+var_28], eax
mov     [esp+2Ch+var_24], eax
lea     eax, [ecx+18h]
mov     edx, esp
call    sub_4EF689

loc_43D697:
add     esp, 18h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43D56B endp




sub_43D6A0 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43D6A6[edx*4]
pop     edx
retn
sub_43D6A0 endp




sub_43D6AF proc near

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
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
lea     ebx, [ecx+3Ch]
mov     word ptr [ebx+4], 0
test    byte ptr [ecx+0Ch], 1
jz      short loc_43D6DD
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_513F5E[eax*8]
jmp     short loc_43D6EA

loc_43D6DD:
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_513F5C[eax*8]

loc_43D6EA:
mov     [ebx], ax
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_513F74[eax*8]
mov     [ebx+2], ax
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_513F8C[eax*8]
mov     [ebx+6], ax
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_513FA4[eax*8]
mov     [ebx+8], ax
mov     word ptr [ebx+0Ah], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     edx, edx
mov     [esp+28h+var_18], dx
mov     al, [ecx+0Ch]
and     al, 2
movsx   eax, al
sar     eax, 1
shl     eax, 0Bh
sub     eax, 400h
mov     [esp+28h+var_16], ax
mov     [esp+28h+var_14], dx
lea     esi, [ecx+18h]
mov     edx, esi
lea     eax, [esp+28h+var_18]
call    sub_4EF638
mov     eax, [ebx+2]
sar     eax, 10h
mov     [esp+28h+var_20], eax
mov     [esp+28h+var_24], eax
mov     [esp+28h+var_28], eax
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     dword ptr [ecx+50h], 2808080h
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 80h
xor     eax, eax
mov     al, [ecx+3]
mov     al, ds:byte_513FBC[eax*2]
mov     [ecx+0Bh], al
add     esp, 18h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43D6AF endp




sub_43D7A4 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ebx, eax
lea     ecx, [eax+3Ch]
mov     ax, [ecx+2]
mov     dx, [ecx]
add     edx, eax
mov     [ecx], dx
add     [ecx+4], dx
cmp     byte ptr [ebx+3], 0
jz      short loc_43D81C
xor     eax, eax
mov     al, [ebx+0Bh]
shl     eax, 2
mov     dl, [ebx+0Bh]
test    dl, dl
jz      short loc_43D7DD
mov     dh, dl
dec     dh
mov     [ebx+0Bh], dh

loc_43D7DD:
mov     esi, eax
shl     esi, 10h
or      esi, 2000000h
mov     edx, eax
shl     edx, 8
or      edx, esi
or      edx, eax
mov     [ebx+50h], edx
cmp     word ptr [ecx], 0
jge     short loc_43D806

loc_43D7FA:
mov     eax, ebx
call    sub_4DE3EA
jmp     loc_43D966

loc_43D806:
mov     eax, [ecx+2]
sar     eax, 10h
mov     [esp+2Ch+var_24], eax
mov     [esp+2Ch+var_28], eax
mov     [esp+2Ch+var_2C], eax
jmp     loc_43D92C

loc_43D81C:
mov     di, [ecx+6]
test    di, di
jle     short loc_43D893
mov     ax, [ecx+8]
mov     edx, edi
add     edx, eax
mov     [ecx+6], dx
add     [ecx+0Ah], dx
cmp     word ptr [ecx+6], 0
jnz     short loc_43D893
test    byte ptr [ebx+0Ch], 1
jz      short loc_43D85E
mov     edx, [ecx+8]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
jmp     short loc_43D86D

loc_43D85E:
mov     edx, [ecx+8]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1

loc_43D86D:
mov     [ecx+2], ax
call    sub_4DE13B
test    eax, eax
jz      short loc_43D893
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 17h
mov     byte ptr [eax+3], 1
mov     dl, [ebx+0Ch]
mov     [eax+0Ch], dl
lea     edi, [eax+48h]
lea     esi, [ebx+48h]
movsd
movsd

loc_43D893:
cmp     word ptr [ecx+6], 0
jg      short loc_43D8D3
xor     eax, eax
mov     al, [ebx+0Ah]
test    al, al
jz      short loc_43D8AB
mov     dh, al
sub     dh, 10h
mov     [ebx+0Ah], dh

loc_43D8AB:
mov     edx, eax
shl     edx, 10h
or      edx, 2000000h
mov     esi, eax
shl     esi, 8
or      edx, esi
or      edx, eax
mov     [ebx+50h], edx
sub     word ptr [ecx+0Ah], 32h ; '2'
add     word ptr [ecx+2], 14h
mov     eax, [ecx]
sar     eax, 10h
jmp     short loc_43D904

loc_43D8D3:
test    byte ptr [ebx+0Ch], 1
jz      short loc_43D8F5
mov     edx, [ecx+8]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
jmp     short loc_43D904

loc_43D8F5:
mov     edx, [ecx+8]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1

loc_43D904:
mov     [esp+2Ch+var_28], eax
mov     [esp+2Ch+var_2C], eax
mov     eax, [ecx+8]
sar     eax, 10h
add     eax, eax
mov     [esp+2Ch+var_24], eax
cmp     word ptr [ecx+0Ah], 0
jl      loc_43D7FA
cmp     byte ptr [ebx+0Ah], 0
jz      loc_43D7FA

loc_43D92C:
xor     edx, edx
mov     [esp+2Ch+var_1C], dx
mov     al, [ebx+0Ch]
and     al, 2
movsx   eax, al
sar     eax, 1
shl     eax, 0Bh
sub     eax, 400h
mov     [esp+2Ch+var_1A], ax
mov     [esp+2Ch+var_18], dx
add     ebx, 18h
mov     edx, ebx
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     edx, esp
mov     eax, ebx
call    sub_4EF689

loc_43D966:
add     esp, 18h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43D7A4 endp



; Attributes: thunk

sub_43D96F proc near
jmp     sub_4DE3EA
sub_43D96F endp




sub_43D974 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43D97A[edx*4]
pop     edx
retn
sub_43D974 endp




sub_43D983 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+28h]
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
xor     bl, bl

loc_43D9AC:
call    rand_
mov     bh, al
and     bh, 1Fh
xor     eax, eax
mov     al, bl
shl     eax, 3
lea     edx, [eax+ebp]
mov     [edx], bh
call    rand_
and     al, 0Fh
mov     [edx+1], al
call    rand_
and     al, 3Fh
inc     al
mov     [edx+2], al
movzx   esi, byte ptr [ecx+3]
call    rand_
and     al, 1Fh
mov     ah, ds:byte_513FCC[esi*8]
add     al, ah
mov     [edx+3], al
xor     eax, eax
mov     al, [ecx+3]
mov     al, ds:byte_513FCE[eax*8]
mov     [edx+4], al
movzx   esi, byte ptr [ecx+3]
call    rand_
xor     ah, ah
and     al, 3Fh
mov     di, ds:word_513FD0[esi*8]
add     eax, edi
mov     [edx+6], ax
inc     bl
cmp     bl, 4
jb      short loc_43D9AC

loc_43DA20:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43D983 endp




sub_43DA27 proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= word ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 28h
mov     edi, eax
lea     ebp, [eax+28h]
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     ecx, eax
xor     ah, ah
mov     [esp+40h+var_1C], ah
jmp     loc_43DB31

loc_43DA4D:
mov     al, 10h

loc_43DA4F:
and     eax, 0FFh
push    eax
mov     esi, [esp+44h+var_3C]
push    esi
mov     eax, [esp+48h+var_40]
push    eax
mov     edx, [esp+4Ch+var_34]
push    edx
mov     ebx, [esp+50h+var_38]
push    ebx
call    sub_43DCF8
test    byte ptr ds:word_77EAB6, 1
jz      short loc_43DA92
xor     eax, eax
mov     al, [esp+40h+var_1C]
shl     eax, 3
lea     edx, [eax+ebp]
mov     ah, [edx+4]
cmp     ah, 2
jz      short loc_43DA92
mov     bl, ah
dec     bl
mov     [edx+4], bl

loc_43DA92:
xor     eax, eax
mov     al, [esp+40h+var_1C]
shl     eax, 3
lea     edx, [eax+ebp]
xor     eax, eax
mov     al, [edx+4]
mov     bx, [edx+6]
sub     ebx, eax
mov     [edx+6], bx
cmp     bx, 8
jge     short loc_43DB1E
call    rand_
and     al, 1Fh
mov     [edx], al
call    rand_
and     al, 0Fh
mov     [edx+1], al
call    rand_
and     al, 3Fh
inc     al
mov     [edx+2], al
xor     ebx, ebx
mov     bl, [edi+3]
call    rand_
and     al, 1Fh
mov     ah, ds:byte_513FCC[ebx*8]
add     al, ah
mov     [edx+3], al
xor     eax, eax
mov     al, [edi+3]
mov     al, ds:byte_513FCE[eax*8]
mov     [edx+4], al
xor     ebx, ebx
mov     bl, [edi+3]
call    rand_
xor     ah, ah
and     al, 3Fh
mov     si, ds:word_513FD0[ebx*8]
add     eax, esi
mov     [edx+6], ax
jmp     short loc_43DB1E

loc_43DB17:
mov     bh, bl
dec     bh
mov     [edx+2], bh

loc_43DB1E:
mov     dl, [esp+40h+var_1C]
inc     dl
mov     [esp+40h+var_1C], dl
cmp     dl, 4
jnb     loc_43DCEB

loc_43DB31:
xor     eax, eax
mov     al, [esp+40h+var_1C]
shl     eax, 3
lea     edx, [eax+ebp]
mov     bl, [edx+2]
test    bl, bl
jnz     short loc_43DB17
xor     bh, bh
mov     bl, [edx]
shl     ebx, 7
xor     eax, eax
mov     al, [edx+1]
shl     eax, 8
mov     esi, [edx+4]
sar     esi, 10h
mov     [esp+40h+var_30], esi
movsx   esi, ax
mov     eax, esi
call    sub_4EF008
imul    eax, [esp+40h+var_30]
sar     eax, 0Ch
mov     [esp+40h+var_28], eax
mov     eax, [esp+40h+var_28]
mov     [esp+40h+var_20], ax
mov     eax, [edx+4]
sar     eax, 10h
mov     [esp+40h+var_30], eax
mov     eax, esi
call    sub_4EF003
imul    eax, [esp+40h+var_30]
sar     eax, 0Ch
mov     [esp+40h+var_30], eax
mov     eax, [esp+40h+var_30]
mov     [esp+40h+var_24], eax
movsx   ebx, bx
mov     eax, ebx
call    sub_4EF008
mov     [esp+40h+var_2C], eax
mov     eax, [esp+40h+var_24+2]
sar     eax, 10h
mov     [esp+40h+var_30], eax
mov     eax, [esp+40h+var_2C]
imul    eax, [esp+40h+var_30]
sar     eax, 0Ch
mov     [esp+40h+var_2C], eax
mov     eax, [ecx+46h]
sar     eax, 10h
add     eax, [esp+40h+var_2C]
mov     [esp+40h+var_28], eax
mov     eax, [esp+40h+var_28]
mov     word ptr [esp+40h+var_38], ax
mov     eax, ebx
call    sub_4EF003
imul    eax, [esp+40h+var_30]
sar     eax, 0Ch
mov     [esp+40h+var_2C], eax
mov     eax, [ecx+4Ah]
sar     eax, 10h
add     eax, [esp+40h+var_2C]
mov     [esp+40h+var_2C], eax
mov     eax, [esp+40h+var_2C]
mov     word ptr [esp+40h+var_34], ax
mov     ax, [ecx+4Ah]
add     eax, [esp+40h+var_24]
mov     word ptr [esp+40h+var_38+2], ax
mov     eax, [edx+4]
sar     eax, 10h
mov     [esp+40h+var_28], eax
xor     eax, eax
mov     al, [edx+3]
mov     [esp+40h+var_2C], eax
mov     eax, [esp+40h+var_28]
add     eax, [esp+40h+var_2C]
mov     [esp+40h+var_2C], eax
mov     eax, esi
call    sub_4EF008
imul    eax, [esp+40h+var_2C]
sar     eax, 0Ch
mov     [esp+40h+var_2C], eax
mov     eax, [esp+40h+var_2C]
mov     [esp+40h+var_20], ax
mov     eax, [edx+4]
sar     eax, 10h
mov     [esp+40h+var_2C], eax
xor     eax, eax
mov     al, [edx+3]
mov     [esp+40h+var_28], eax
mov     eax, [esp+40h+var_2C]
add     eax, [esp+40h+var_28]
mov     [esp+40h+var_28], eax
mov     eax, esi
call    sub_4EF003
imul    eax, [esp+40h+var_28]
sar     eax, 0Ch
mov     [esp+40h+var_24], eax
mov     eax, ebx
call    sub_4EF008
mov     esi, [esp+40h+var_24+2]
sar     esi, 10h
mov     [esp+40h+var_28], esi
imul    eax, esi
sar     eax, 0Ch
mov     esi, [ecx+46h]
sar     esi, 10h
add     eax, esi
mov     word ptr [esp+40h+var_40], ax
mov     eax, ebx
call    sub_4EF003
mov     ebx, [esp+40h+var_28]
imul    ebx, eax
sar     ebx, 0Ch
mov     eax, [ecx+4Ah]
sar     eax, 10h
add     eax, ebx
mov     word ptr [esp+40h+var_3C], ax
mov     ax, [ecx+4Ah]
mov     ebx, [esp+40h+var_24]
add     eax, ebx
mov     word ptr [esp+40h+var_40+2], ax
cmp     word ptr [edx+6], 18h
jge     loc_43DA4D
mov     al, [edx+6]
sub     al, 8
jmp     loc_43DA4F

loc_43DCEB:
add     esp, 28h
jmp     loc_43DA20
sub_43DA27 endp



; Attributes: thunk

sub_43DCF3 proc near
jmp     sub_4DE3EA
sub_43DCF3 endp




sub_43DCF8 proc near

arg_0= dword ptr  4
arg_8= dword ptr  0Ch
arg_10= byte ptr  14h

push    ebx
push    ecx
push    edx
push    esi
mov     dl, [esp+10h+arg_10]
call    rand_
and     al, 7
add     al, 6
mul     dl
mov     bl, al
call    rand_
and     al, 7
add     al, 6
mul     dl
mov     cl, al
call    rand_
and     al, 7
add     al, 6
mul     dl
mov     bh, al
call    sub_4EE16B
mov     edx, eax
mov     eax, [esp+10h+arg_8]
mov     [edx], eax
xor     eax, eax
mov     al, bl
mov     esi, eax
shl     esi, 10h
or      esi, 52000000h
xor     eax, eax
mov     al, cl
shl     eax, 8
or      esi, eax
xor     eax, eax
mov     al, bh
or      esi, eax
mov     [edx+4], esi
mov     eax, [esp+10h+arg_0]
mov     [edx+8], eax
mov     dword ptr [edx+0Ch], 10101h
mov     esi, [esp+10h+arg_8+2]
sar     esi, 10h
shl     esi, 10h
mov     eax, [esp+10h+arg_0+2]
sar     eax, 10h
and     eax, 0FFFFh
add     esi, eax
mov     [edx+10h], esi
mov     dword ptr [edx+28h], 0E1000020h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn    14h
sub_43DCF8 endp




sub_43DD8C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43DD92[edx*4]
pop     edx
retn
sub_43DD8C endp




sub_43DD9B proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+14h], 3DC8000Ah
mov     dword ptr [ecx+18h], 2E808080h
mov     dl, ds:byte_513FE8
mov     [ecx+22h], dl
mov     dl, ds:byte_513FE9
mov     [ecx+23h], dl
xor     dh, dh
mov     dl, ds:byte_513FFA
mov     [ecx+24h], dx
mov     dl, ds:byte_513FF4
mov     [ecx+0Bh], dl
mov     [ecx+0Ah], dh
mov     [ecx+9], dh
inc     byte ptr [ecx+8]
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_43DDF7
lea     edx, [ecx+1Ch]
mov     eax, 9Bh
call    sub_4D8BC3

loc_43DDF7:
mov     dl, [ecx+1Eh]
mov     [ecx+0Dh], dl
pop     edx
pop     ecx
retn
sub_43DD9B endp




sub_43DE00 proc near
push    ebx
push    ecx
push    edx
inc     byte ptr [eax+9]
mov     dh, [eax+0Bh]
dec     dh
mov     [eax+0Bh], dh
jnz     short loc_43DE77
mov     bh, [eax+0Ah]
inc     bh
mov     [eax+0Ah], bh
cmp     bh, 6
jb      short loc_43DE26
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn

loc_43DE26:
xor     edx, edx
mov     dl, bh
mov     bl, ds:byte_513FF4[edx]
mov     [eax+0Bh], bl
mov     bl, ds:byte_513FE8[edx*2]
mov     [eax+22h], bl
mov     dl, ds:byte_513FE9[edx*2]
mov     [eax+23h], dl
xor     edx, edx
mov     dl, [eax+9]
mov     dl, ds:byte_513FFA[edx]
xor     dh, dh
mov     [eax+24h], dx
xor     edx, edx
mov     dl, [eax+9]
mov     dl, ds:byte_513FFA[edx]
and     edx, 0FFh
sar     edx, 1
mov     ecx, [eax+0Ah]
sar     ecx, 18h
sub     ecx, edx
mov     [eax+1Eh], cx

loc_43DE77:
pop     edx
pop     ecx
pop     ebx
retn
sub_43DE00 endp




sub_43DE7B proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43DE81[edx*4]
pop     edx
retn
sub_43DE7B endp




sub_43DE8A proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43DE90[edx*4]
pop     edx
retn
sub_43DE8A endp




sub_43DE99 proc near

var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_24= dword ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 54h
mov     ebp, eax
mov     ah, [eax+6]
or      ah, 20h
mov     [ebp+6], ah
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0
mov     byte ptr [ebp+0Eh], 2
mov     byte ptr [ebp+0Fh], 0
mov     dword ptr [ebp+18h], 2E404040h
mov     dword ptr [ebp+14h], 3D080029h
mov     eax, [ebp+0Ch]
sar     eax, 18h
mov     al, ds:byte_51400C[eax*2]
mov     [ebp+22h], al
mov     eax, [ebp+0Ch]
sar     eax, 18h
mov     al, ds:byte_51400D[eax*2]
mov     [ebp+23h], al
mov     word ptr [ebp+24h], 30h ; '0'
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     [esp+6Ch+var_1C], eax
mov     edx, [ebp+0Ah]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     esi, [esp+6Ch+var_1C]
mov     ecx, 0Ch
mov     edi, esp
lea     esi, [esi+eax+1F8h]
rep movsd
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     ax, word ptr ds:off_51403C[eax*4]
mov     [esp+6Ch+var_2C], ax
xor     edx, edx
mov     [esp+6Ch+var_2A], dx
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     ax, word ptr ds:(off_51403C+2)[eax*4]
mov     [esp+6Ch+var_28], ax
lea     ebx, [esp+6Ch+var_3C]
lea     edx, [esp+6Ch+var_2C]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     esi, [esp+6Ch+var_1C]
lea     edi, [esp+6Ch+var_24]
lea     esi, [esi+eax*8+190h]
movsd
movsd
mov     eax, [esp+46h]
sar     eax, 10h
add     [esp+6Ch+var_3C], eax
mov     eax, [esp+6Ch+var_24]
sar     eax, 10h
add     [esp+6Ch+var_38], eax
mov     eax, [esp+6Ch+var_24+2]
sar     eax, 10h
add     [esp+6Ch+var_34], eax
mov     eax, [esp+6Ch+var_3C]
mov     [ebp+1Ch], ax
mov     eax, [esp+6Ch+var_38]
mov     [ebp+1Eh], ax
mov     eax, [esp+6Ch+var_34]
mov     [ebp+20h], ax
mov     edx, [ebp+0Ah]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
add     eax, 0A0h
mov     [ebp+28h], eax
add     esp, 54h

loc_43DFD2:
pop     ebp

loc_43DFD3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43DE99 endp




sub_43DFD9 proc near
push    edx
mov     edx, [eax+28h]
dec     edx
mov     [eax+28h], edx
jnz     short loc_43DFEE
mov     byte ptr [eax+8], 2
mov     dword ptr [eax+28h], 4

loc_43DFEE:
pop     edx
retn
sub_43DFD9 endp




sub_43DFF0 proc near
push    ecx
push    edx
mov     edx, eax
xor     eax, eax
mov     al, [edx+28h]
call    sub_43E511
mov     ecx, [edx+28h]
dec     ecx
mov     [edx+28h], ecx
jnz     short loc_43E00E
or      byte ptr [edx], 2
mov     byte ptr [edx+8], 3

loc_43E00E:
pop     edx
pop     ecx
retn
sub_43DFF0 endp




sub_43E011 proc near
push    edx
mov     dl, [eax+0Eh]
dec     dl
mov     [eax+0Eh], dl
jnz     short loc_43E057
mov     byte ptr [eax+0Eh], 2
inc     byte ptr [eax+0Fh]
mov     edx, [eax+0Ch]
sar     edx, 18h
mov     dl, ds:byte_51400C[edx*2]
mov     [eax+22h], dl
mov     edx, [eax+0Ch]
sar     edx, 18h
mov     dl, ds:byte_51400D[edx*2]
mov     [eax+23h], dl
cmp     byte ptr [eax+0Fh], 2
jnz     short loc_43E050
mov     dword ptr [eax+18h], 2E808080h

loc_43E050:
mov     dword ptr [eax+14h], 3D480009h

loc_43E057:
inc     word ptr [eax+24h]
cmp     byte ptr [eax+0Fh], 0Bh
jnz     short loc_43E065
mov     byte ptr [eax+8], 4

loc_43E065:
pop     edx
retn
sub_43E011 endp




sub_43E067 proc near
push    edx
mov     dl, [eax+0Eh]
dec     dl
mov     [eax+0Eh], dl
jnz     short loc_43E077
call    sub_4DE3EA

loc_43E077:
pop     edx
retn
sub_43E067 endp




sub_43E079 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43E07F[edx*4]
pop     edx
retn
sub_43E079 endp




sub_43E088 proc near
push    edx
mov     edx, eax
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     al, [eax+0Dh]
mov     [edx+0Bh], al
mov     al, [edx+0Dh]
mov     ah, 6
imul    ah
add     al, 8
mov     [edx+0Dh], al
mov     byte ptr [edx+0Eh], 10h
mov     byte ptr [edx+0Fh], 0
mov     dword ptr [edx+18h], 2EC0C0C0h
mov     dword ptr [edx+14h], 3D08002Eh
mov     byte ptr [edx+22h], 0E0h
mov     byte ptr [edx+23h], 60h ; '`'
pop     edx
retn
sub_43E088 endp




sub_43E0C9 proc near

var_24= dword ptr -24h
var_20= word ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebx, eax
lea     esi, [eax+28h]
mov     ah, [eax+0Dh]
dec     ah
mov     [ebx+0Dh], ah
jnz     loc_43E286
or      byte ptr [ebx], 2
mov     byte ptr [ebx+8], 2
mov     al, ds:byte_560BE4
cmp     al, 5
jb      short loc_43E0FB
jbe     short loc_43E0FB
cmp     al, 7
jz      short loc_43E169

loc_43E0FB:
call    rand_
xor     ah, ah
and     al, 0Fh
add     eax, 10h
shl     eax, 6
mov     [esp+24h+var_20], ax
call    rand_
xor     ah, ah
and     al, 7
add     eax, 0Dh
shl     eax, 7
movsx   ecx, ax
mov     eax, ecx
call    sub_4EF008
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 4
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 0Ch
mov     [esp+24h+var_1C], eax
mov     eax, ecx
call    sub_4EF003
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 4
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 0Ch
mov     edi, eax
mov     word ptr [ebx+24h], 32h ; '2'
jmp     short loc_43E1CC

loc_43E169:
call    rand_
xor     ah, ah
and     al, 1Fh
shl     eax, 6
mov     [esp+24h+var_20], ax
call    rand_
xor     ah, ah
and     al, 7
add     eax, 0Ch
shl     eax, 7
movsx   edx, ax
mov     eax, edx
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
sub     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 6
sar     eax, 0Ch
mov     [esp+24h+var_1C], eax
mov     eax, edx
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 6
sar     eax, 0Ch
mov     edi, eax
mov     word ptr [ebx+24h], 64h ; 'd'

loc_43E1CC:
mov     eax, [ebx+9]
sar     eax, 18h
call    sub_4E1877
mov     edx, eax
mov     ecx, [esp+2]
sar     ecx, 10h
mov     eax, ecx
call    sub_4EF003
movsx   edi, di
imul    eax, edi
sar     eax, 0Ch
mov     ebp, [edx+12h]
sar     ebp, 10h
add     ebp, eax
mov     [esp+24h+var_24], ebp
mov     eax, [esp+24h+var_24]
mov     [ebx+1Ch], ax
mov     eax, ecx
call    sub_4EF008
imul    eax, edi
sar     eax, 0Ch
mov     ecx, [edx+16h]
sar     ecx, 10h
add     eax, ecx
mov     [ebx+20h], ax
mov     ax, [edx+16h]
mov     edx, [esp+24h+var_1C]
add     eax, edx
mov     [ebx+1Eh], ax
xor     ecx, ecx

loc_43E22B:
call    rand_
and     al, 1Fh
mov     edx, ecx
mov     [esi+edx*2], al
call    rand_
and     al, 7
add     al, 0Ch
mov     [esi+edx*2+1], al
inc     ecx
cmp     ecx, 0Ch
jb      short loc_43E22B
test    byte ptr [ebx+0Bh], 1
jz      short loc_43E26F
call    rand_
test    al, 1
jz      short loc_43E264
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A4h
jmp     short loc_43E281

loc_43E264:
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A5h
jmp     short loc_43E281

loc_43E26F:
call    rand_
test    al, 0Fh
jnz     short loc_43E286
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A4h

loc_43E281:
call    sub_4D89E4

loc_43E286:
add     esp, 0Ch
jmp     loc_43DFD2
sub_43E0C9 endp




sub_43E28E proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     eax, eax
call    sub_4EF003
mov     ecx, eax
shl     eax, 2
add     ecx, eax
add     ecx, ecx
sar     ecx, 0Ch
mov     eax, [edx+1Ah]
sar     eax, 10h
add     eax, ecx
mov     [edx+1Ch], ax
xor     eax, eax
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
add     ecx, eax
add     ecx, ecx
sar     ecx, 0Ch
mov     eax, [edx+1Eh]
sar     eax, 10h
add     eax, ecx
mov     [edx+20h], ax
dec     byte ptr [edx+0Eh]
mov     ecx, [edx+0Bh]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     ecx, eax
shl     ecx, 10h
mov     ebx, eax
shl     ebx, 8
add     ecx, 2E000000h
add     ecx, ebx
add     ecx, eax
mov     [edx+18h], ecx
add     word ptr [edx+24h], 8
inc     byte ptr [edx+0Dh]
inc     byte ptr [edx+0Fh]
mov     eax, edx
call    sub_43E37D
cmp     byte ptr [edx+0Eh], 0
jnz     short loc_43E31A
and     byte ptr [edx], 0FDh
mov     byte ptr [edx+8], 3

loc_43E31A:
pop     edx
pop     ecx
pop     ebx
retn
sub_43E28E endp




sub_43E31E proc near
push    ecx
push    edx
mov     edx, eax
xor     eax, eax
call    sub_4EF003
mov     ecx, eax
shl     eax, 2
add     ecx, eax
add     ecx, ecx
sar     ecx, 0Ch
mov     eax, [edx+1Ah]
sar     eax, 10h
add     eax, ecx
mov     [edx+1Ch], ax
xor     eax, eax
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
add     ecx, eax
add     ecx, ecx
sar     ecx, 0Ch
mov     eax, [edx+1Eh]
sar     eax, 10h
add     eax, ecx
mov     [edx+20h], ax
inc     byte ptr [edx+0Dh]
dec     byte ptr [edx+0Fh]
mov     eax, edx
call    sub_43E37D
cmp     byte ptr [edx+0Fh], 0
jnz     short loc_43E37A
mov     eax, edx
call    sub_4DE3EA

loc_43E37A:
pop     edx
pop     ecx
retn
sub_43E31E endp




sub_43E37D proc near

var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= word ptr -2Ch
var_28= byte ptr -28h
var_24= byte ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 24h
mov     edx, eax
add     eax, 28h ; '('
mov     [esp+3Ch+var_34], eax
mov     [esp+3Ch+var_1C], 40h ; '@'
xor     bl, bl
mov     [esp+3Ch+var_20], bl
mov     al, [edx+0Fh]
mov     ah, 6
mul     ah
mov     [esp+3Ch+var_24], al
movsx   ax, byte ptr [edx+0Dh]
add     eax, eax
add     eax, 64h ; 'd'
mov     [esp+3Ch+var_2C], ax
mov     [esp+3Ch+var_28], bl
jmp     short loc_43E3E5

loc_43E3BC:
mov     ebx, [edx+0Ah]
sar     ebx, 18h
add     ebx, 82h
mov     [eax+18h], ebx

loc_43E3CB:
mov     dword ptr [ecx+20h], 0
mov     cl, [esp+3Ch+var_28]
inc     cl
mov     [esp+3Ch+var_28], cl
cmp     cl, 0Ch
jnb     loc_43E509

loc_43E3E5:
xor     ecx, ecx
mov     cl, [esp+3Ch+var_28]
add     ecx, ecx
add     ecx, [esp+3Ch+var_34]
xor     eax, eax
mov     al, [ecx+1]
shl     eax, 7
movsx   ebx, ax
mov     eax, ebx
call    sub_4EF008
mov     esi, [esp+0Eh]
sar     esi, 10h
mov     edi, eax
imul    edi, esi
sar     edi, 0Ch
mov     eax, ebx
call    sub_4EF003
mov     ebx, eax
imul    ebx, esi
sar     ebx, 0Ch
xor     eax, eax
mov     al, [ecx]
shl     eax, 7
movsx   ecx, ax
mov     eax, ecx
call    sub_4EF003
movsx   ebx, bx
imul    eax, ebx
sar     eax, 0Ch
mov     esi, [edx+1Ah]
sar     esi, 10h
add     eax, esi
mov     word ptr [esp+3Ch+var_30], ax
mov     eax, ecx
call    sub_4EF008
imul    eax, ebx
sar     eax, 0Ch
mov     ecx, [edx+1Eh]
sar     ecx, 10h
add     eax, ecx
mov     word ptr [esp+3Ch+var_38], ax
mov     ax, [edx+1Eh]
add     eax, edi
mov     word ptr [esp+3Ch+var_30+2], ax
call    sub_4EE133
mov     ecx, eax
xor     ebx, ebx
mov     bl, [esp+3Ch+var_24]
mov     esi, ebx
shl     esi, 10h
or      esi, 2E000000h
mov     edi, ebx
shl     edi, 8
or      esi, edi
or      esi, ebx
mov     [eax+4], esi
mov     ebx, [esp+3Ch+var_30]
mov     [eax+8], ebx
mov     ebx, [esp+3Ch+var_38]
mov     [eax+10h], ebx
xor     ebx, ebx
mov     bl, [esp+3Ch+var_20]
shl     ebx, 8
mov     edi, ebx
or      edi, 3D480000h
movzx   esi, [esp+3Ch+var_1C]
or      edi, esi
mov     [eax+0Ch], edi
mov     edi, ebx
or      edi, 4E0000h
mov     [esp+3Ch+var_3C], edi
lea     edi, [esi+1Fh]
mov     ebp, [esp+3Ch+var_3C]
or      ebp, edi
mov     [eax+14h], ebp
add     ebx, 1F00h
mov     ebp, ebx
or      ebp, esi
mov     [eax+1Ch], ebp
or      ebx, edi
mov     [eax+24h], ebx
mov     bl, ds:byte_560BE4
cmp     bl, 5
jb      short loc_43E4F8
jbe     short loc_43E4F8
cmp     bl, 7
jz      loc_43E3BC

loc_43E4F8:
mov     eax, [edx+0Ah]
sar     eax, 18h
add     eax, 50h ; 'P'
mov     [ecx+18h], eax
jmp     loc_43E3CB

loc_43E509:
add     esp, 24h
jmp     loc_43DFD2
sub_43E37D endp




sub_43E511 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, ds:dword_77E6DC
mov     dl, al
shl     dl, 5
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
mov     [esi+4], dl
mov     [esi+5], dl
mov     [esi+6], dl
or      byte ptr [esi+7], 2
mov     edx, ds:dword_77E6DC
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
mov     edi, edx
push    0
mov     ecx, 2Fh ; '/'
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 38h ; '8'
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, edi
call    sub_4F87A6
jmp     loc_43DFD3
sub_43E511 endp




sub_43E59C proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43E5A2[edx*4]
pop     edx
retn
sub_43E59C endp




sub_43E5AB proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43E5B1[edx*4]
pop     edx
retn
sub_43E5AB endp




sub_43E5BA proc near
push    ebx
push    ecx
push    edx
lea     ecx, [eax+28h]
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
mov     byte ptr [eax+0Dh], 1
mov     dl, [eax+0Ch]
shl     dl, 2
mov     [eax+0Eh], dl
mov     byte ptr [eax+0Fh], 0
mov     ebx, [eax+9]
sar     ebx, 18h
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     dx, ds:word_514086[edx*2]
mov     [eax+1Ch], dx
mov     ebx, [eax+9]
sar     ebx, 18h
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     dx, ds:word_514088[edx*2]
mov     [eax+1Eh], dx
mov     ebx, [eax+9]
sar     ebx, 18h
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     dx, ds:word_51408A[edx*2]
mov     [eax+20h], dx
mov     word ptr [eax+24h], 8
xor     eax, eax

loc_43E634:
mov     bl, al
shl     bl, 3
mov     edx, eax
mov     [ecx+edx*2], bl
inc     eax
cmp     eax, 10h
jb      short loc_43E634
pop     edx
pop     ecx
pop     ebx
retn
sub_43E5BA endp




sub_43E648 proc near
push    edx
test    byte ptr ds:word_77EAB6, 1
jz      short loc_43E655
inc     byte ptr [eax+0Eh]

loc_43E655:
mov     edx, [eax+9]
sar     edx, 18h
mov     dl, ds:byte_51405C[edx*2]
cmp     dl, ds:byte_560BE4
ja      short loc_43E66E
mov     byte ptr [eax+8], 2

loc_43E66E:
pop     edx
retn
sub_43E648 endp




sub_43E670 proc near
push    ebx
push    edx
mov     edx, eax
test    byte ptr ds:word_77EAB6, 1
jz      short loc_43E680
inc     byte ptr [edx+0Eh]

loc_43E680:
mov     eax, edx
call    sub_43E6A6
mov     eax, [edx+9]
sar     eax, 18h
mov     bl, ds:byte_560BE4
cmp     bl, ds:byte_51405D[eax*2]
jnz     short loc_43E6A3
mov     eax, edx
call    sub_4DE3EA

loc_43E6A3:
pop     edx
pop     ebx
retn
sub_43E670 endp




sub_43E6A6 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ecx, eax
add     eax, 28h ; '('
mov     [esp+30h+var_28], eax
mov     bh, 40h ; '@'
xor     ah, ah
mov     [esp+30h+var_1C], ah
xor     bl, bl
jmp     loc_43E7ED

loc_43E6C7:
mov     byte ptr [eax], 0

loc_43E6CA:
xor     eax, eax
mov     al, bl
add     eax, eax
mov     edx, [esp+30h+var_28]
add     edx, eax
xor     eax, eax
mov     al, [edx]
sar     eax, 3
shl     eax, 2
mov     esi, 40h ; '@'
sub     esi, eax
mov     [esp+30h+var_24], esi
mov     al, [ecx+0Eh]
and     al, 7Fh
cbw
shl     eax, 5
and     eax, 0FFFFh
call    sub_4EF008
shl     eax, 2
mov     esi, eax
shl     eax, 4
sub     eax, esi
sar     eax, 0Ch
lea     edi, [eax+50h]
xor     ah, ah
mov     al, [edx]
and     ah, 1
shl     eax, 3
movzx   esi, byte ptr [edx]
sar     esi, 1
add     esi, 14h
mov     [esp+30h+var_2C], esi
and     eax, 0FFFFh
call    sub_4EF008
xor     esi, esi
mov     si, di
imul    eax, esi
sar     eax, 0Ch
mov     esi, [ecx+1Ah]
sar     esi, 10h
add     eax, esi
mov     word ptr [esp+30h+var_30], ax
mov     ax, [ecx+20h]
mov     word ptr [esp+30h+var_20], ax
xor     eax, eax
mov     al, [edx]
shl     eax, 2
mov     dx, [ecx+1Eh]
sub     edx, eax
mov     word ptr [esp+30h+var_30+2], dx
call    sub_4EE133
mov     edx, eax
xor     eax, eax
mov     al, byte ptr [esp+30h+var_24]
mov     esi, eax
shl     esi, 10h
or      esi, 2E000000h
mov     edi, eax
shl     edi, 8
or      esi, edi
or      esi, eax
mov     [edx+4], esi
mov     eax, [esp+30h+var_30]
mov     [edx+8], eax
mov     eax, [esp+30h+var_20]
mov     [edx+10h], eax
movzx   esi, [esp+30h+var_1C]
shl     esi, 8
mov     edi, esi
or      edi, 3D480000h
xor     eax, eax
mov     al, bh
or      edi, eax
mov     [edx+0Ch], edi
mov     edi, esi
or      edi, 2E0000h
mov     [esp+30h+var_24], edi
lea     edi, [eax+1Fh]
mov     ebp, [esp+30h+var_24]
or      ebp, edi
mov     [edx+14h], ebp
add     esi, 1F00h
mov     ebp, esi
or      ebp, eax
mov     [edx+1Ch], ebp
or      esi, edi
mov     [edx+24h], esi
xor     eax, eax
mov     ax, word ptr [esp+30h+var_2C]
mov     [edx+18h], eax
mov     dword ptr [edx+20h], 0
inc     bl
cmp     bl, 10h
jnb     short loc_43E80D

loc_43E7ED:
xor     eax, eax
mov     al, bl
add     eax, eax
add     eax, [esp+30h+var_28]
mov     dl, [eax]
cmp     dl, 80h
jnb     loc_43E6C7
mov     dh, dl
inc     dh
mov     [eax], dh
jmp     loc_43E6CA

loc_43E80D:
add     esp, 18h
pop     ebp

loc_43E811:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43E6A6 endp




sub_43E817 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43E81D[edx*4]
pop     edx
retn
sub_43E817 endp




sub_43E826 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax        ; int
lea     esi, [eax+14h]
mov     eax, [eax+9]
sar     eax, 18h
shl     eax, 4
mov     ebx, offset unk_5140BC
add     ebx, eax
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0
mov     ax, [ebx+8]
mov     [esp+2Ch+var_1C], ax
mov     ax, [ebx+0Ah]
mov     [esp+2Ch+var_1A], ax
mov     ax, [ebx+0Ch]
mov     [esp+2Ch+var_18], ax
lea     edi, [ecx+18h]
mov     edx, edi
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     eax, [ebx+4]
sar     eax, 10h
mov     [esp+2Ch+var_28], eax
mov     [esp+2Ch+var_24], eax
mov     [esp+2Ch+var_2C], eax
mov     edx, esp
mov     eax, edi
call    sub_4EF689
mov     ax, [ebx]
mov     [esi+34h], ax
mov     ax, [ebx+2]
mov     [esi+36h], ax
mov     ax, [ebx+4]
mov     [esi+38h], ax
mov     dword ptr [esi+3Ch], offset unk_808080
mov     byte ptr [ecx+2], 16h
lea     edx, [ebx+0Eh]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 1Bh
add     esp, 18h
jmp     loc_43E811
sub_43E826 endp




sub_43E8DA proc near
push    edx
mov     edx, [eax+9]
sar     edx, 18h
mov     dl, ds:byte_51406E[edx*2]
cmp     dl, ds:byte_560BE4
ja      short loc_43E8F7
or      byte ptr [eax], 6
mov     byte ptr [eax+8], 2

loc_43E8F7:
pop     edx
retn
sub_43E8DA endp




sub_43E8F9 proc near
push    ebx
push    edx
mov     edx, [eax+9]
sar     edx, 18h
mov     bl, ds:byte_560BE4
cmp     bl, ds:byte_51406F[edx*2]
jnz     short loc_43E915
call    sub_4DE3EA

loc_43E915:
pop     edx
pop     ebx
retn
sub_43E8F9 endp




sub_43E918 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43E91E[edx*4]
pop     edx
retn
sub_43E918 endp




sub_43E927 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43E92D[edx*4]
pop     edx
retn
sub_43E927 endp




sub_43E936 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     ah, [eax]
or      ah, 2
mov     [edx], ah
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0
sub     byte ptr [edx+0Dh], 3
mov     byte ptr [edx+0Eh], 0
mov     byte ptr [edx+0Fh], 0
mov     eax, [edx+9]
sar     eax, 18h
call    sub_4E1877
mov     ecx, eax
mov     ebx, [edx+0Ah]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
lea     ebx, [eax+eax]
mov     ax, [ecx+48h]
mov     si, ds:word_51419C[ebx]
add     eax, esi
mov     [edx+1Ch], ax
mov     ebx, [edx+0Ah]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
lea     ebx, [eax+eax]
mov     ax, [ecx+4Ah]
mov     di, ds:word_51419E[ebx]
add     eax, edi
mov     [edx+1Eh], ax
mov     ebx, [edx+0Ah]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
lea     ebx, [eax+eax]
mov     ax, [ecx+4Ch]
mov     cx, ds:word_5141A0[ebx]
add     eax, ecx
mov     [edx+20h], ax
mov     eax, [edx+0Ch]
sar     eax, 18h
mov     al, ds:byte_5141D4[eax*2]
mov     [edx+22h], al
mov     eax, [edx+0Ch]
sar     eax, 18h
mov     al, ds:byte_5141D5[eax*2]
mov     [edx+23h], al
mov     dword ptr [edx+18h], 2E808080h
mov     dword ptr [edx+14h], 3D080029h
mov     word ptr [edx+24h], 10h

loc_43EA04:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43E936 endp




sub_43EA0A proc near
push    edx
mov     edx, [eax+0Ch]
sar     edx, 18h
mov     dl, ds:byte_5141D4[edx*2]
mov     [eax+22h], dl
mov     edx, [eax+0Ch]
sar     edx, 18h
mov     dl, ds:byte_5141D5[edx*2]
mov     [eax+23h], dl
mov     dl, [eax+0Fh]
inc     dl
mov     [eax+0Fh], dl
cmp     dl, 8
jl      short loc_43EA3C
mov     byte ptr [eax+8], 2

loc_43EA3C:
pop     edx
retn
sub_43EA0A endp



; Attributes: thunk

sub_43EA3E proc near
jmp     sub_4DE3EA
sub_43EA3E endp




sub_43EA43 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43EA49[edx*4]
pop     edx
retn
sub_43EA43 endp




sub_43EA52 proc near
push    ebx
push    edx
lea     edx, [eax+28h]
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
movsx   bx, byte ptr [eax+0Dh]
imul    ebx, 0Ch
add     ebx, 0Fh
mov     [edx], bx
mov     word ptr [eax+1Ch], 0
mov     word ptr [eax+20h], 188h
mov     word ptr [eax+1Eh], 0FF2Ch
pop     edx
pop     ebx
retn
sub_43EA52 endp




sub_43EA92 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 28h ; '('
mov     bx, [eax]
dec     bx
mov     [eax], bx
jnz     short loc_43EAA7
mov     byte ptr [edx+8], 2

loc_43EAA7:
pop     edx
pop     ebx
retn
sub_43EA92 endp




sub_43EAAA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+28h]
movsx   eax, word ptr [edx]
shl     eax, 4
call    sub_4EF003
mov     ebx, eax
shl     eax, 2
sub     eax, ebx
shl     eax, 3
add     eax, ebx
shl     eax, 3
sar     eax, 0Ch
mov     ebx, 0FFFFFF38h
sub     ebx, eax
mov     [ecx+1Eh], bx
mov     eax, ecx
call    sub_43EAF7
mov     bx, [edx]
inc     ebx
mov     [edx], bx
cmp     bx, 80h
jle     short loc_43EAF3
mov     byte ptr [ecx+8], 3

loc_43EAF3:
pop     edx
pop     ecx
pop     ebx
retn
sub_43EAAA endp




sub_43EAF7 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     edi, eax
mov     [esp+28h+var_1C], 40h ; '@'
xor     dh, dh
xor     dl, dl

loc_43EB0B:
xor     eax, eax
mov     al, dl
imul    eax, 32h ; '2'
sub     eax, 0C8h
mov     word ptr [esp+28h+var_20], ax
mov     word ptr [esp+28h+var_24], 200h
mov     ax, [edi+1Eh]
mov     word ptr [esp+28h+var_20+2], ax
call    sub_4EE133
mov     dword ptr [eax+4], 2E202020h
mov     ecx, [esp+28h+var_20]
mov     [eax+8], ecx
mov     ecx, [esp+28h+var_24]
mov     [eax+10h], ecx
xor     ebx, ebx
mov     bl, dh
shl     ebx, 8
mov     esi, ebx
or      esi, 3D480000h
xor     ecx, ecx
mov     cl, [esp+28h+var_1C]
or      esi, ecx
mov     [eax+0Ch], esi
mov     esi, ebx
or      esi, 2E0000h
mov     [esp+28h+var_28], esi
lea     esi, [ecx+1Fh]
mov     ebp, [esp+28h+var_28]
or      ebp, esi
mov     [eax+14h], ebp
add     ebx, 1F00h
mov     ebp, ebx
or      ebp, ecx
mov     [eax+1Ch], ebp
or      ebx, esi
mov     [eax+24h], ebx
mov     dword ptr [eax+18h], 40h ; '@'
mov     dword ptr [eax+20h], 0
inc     dl
cmp     dl, 9
jb      loc_43EB0B
add     esp, 10h
pop     ebp
jmp     loc_43EA04
sub_43EAF7 endp




sub_43EBAB proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43EBB1[edx*4]
pop     edx
retn
sub_43EBAB endp




sub_43EBBA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     ah, [eax]
or      ah, 2
mov     [edx], ah
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0
mov     eax, [edx+0Ah]
sar     eax, 18h
mov     al, ds:byte_5141CE[eax*4]
mov     [edx+0Eh], al
mov     byte ptr [edx+0Fh], 0
mov     eax, [edx+9]
sar     eax, 18h
call    sub_4E1877
mov     ecx, eax
mov     ebx, [edx+0Ah]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
lea     ebx, [eax+eax]
mov     ax, [ecx+14h]
mov     si, ds:word_5141C0[ebx]
add     eax, esi
mov     [edx+1Ch], ax
mov     ebx, [edx+0Ah]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
lea     ebx, [eax+eax]
mov     ax, [ecx+16h]
mov     di, ds:word_5141C2[ebx]
add     eax, edi
mov     [edx+1Eh], ax
mov     ebx, [edx+0Ah]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
lea     ebx, [eax+eax]
mov     ax, [ecx+18h]
mov     cx, ds:word_5141C4[ebx]
add     eax, ecx
mov     [edx+20h], ax
mov     eax, [edx+0Ch]
sar     eax, 18h
mov     al, ds:byte_5141D4[eax*2]
mov     [edx+22h], al
mov     eax, [edx+0Ch]
sar     eax, 18h
mov     al, ds:byte_5141D5[eax*2]
mov     [edx+23h], al
mov     dword ptr [edx+18h], 2E808080h
mov     dword ptr [edx+14h], 3DC00029h
mov     eax, [edx+0Ah]
sar     eax, 18h
mov     ax, ds:word_5141CC[eax*4]
mov     [edx+24h], ax
jmp     loc_43EA04
sub_43EBBA endp




sub_43ECA1 proc near
push    edx
mov     edx, [eax+0Ch]
sar     edx, 18h
mov     dl, ds:byte_5141D4[edx*2]
mov     [eax+22h], dl
mov     edx, [eax+0Ch]
sar     edx, 18h
mov     dl, ds:byte_5141D5[edx*2]
mov     [eax+23h], dl
mov     dl, [eax+0Fh]
inc     dl
mov     [eax+0Fh], dl
cmp     dl, 8
jl      short loc_43ECD3
mov     byte ptr [eax+0Fh], 0

loc_43ECD3:
mov     dl, [eax+0Eh]
cmp     dl, ds:byte_560BE5
jz      short loc_43ECE2
mov     byte ptr [eax+8], 2

loc_43ECE2:
pop     edx
retn
sub_43ECA1 endp




sub_43ECE4 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43ECEA[edx*4]
pop     edx
retn
sub_43ECE4 endp




sub_43ECF3 proc near
push    edx
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
or      byte ptr [edx], 2
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 10h
mov     byte ptr [edx+0Eh], 0
call    rand_
and     al, 7
mov     [edx+0Fh], al
mov     dword ptr [edx+14h], 3DC00029h
mov     word ptr [edx+24h], 40h ; '@'
mov     eax, edx
call    sub_43EDA4
pop     edx
retn
sub_43ECF3 endp




sub_43ED38 proc near
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     ecx, eax
mov     eax, edx
call    sub_43EDA4
mov     ah, [edx+0Fh]
inc     ah
mov     [edx+0Fh], ah
cmp     ah, 8
jl      short loc_43ED61
mov     byte ptr [edx+0Fh], 0

loc_43ED61:
test    byte ptr [ecx], 1
jnz     short loc_43ED6D
mov     eax, edx
call    sub_4DE3EA

loc_43ED6D:
cmp     word ptr [ecx+4Ah], 0
jz      short loc_43ED78
mov     byte ptr [edx+8], 2

loc_43ED78:
pop     edx
pop     ecx
retn
sub_43ED38 endp




sub_43ED7B proc near
push    edx
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     eax, edx
call    sub_43EDA4
mov     ah, [edx+0Bh]
sub     ah, 2
mov     [edx+0Bh], ah
jnz     short loc_43EDA2
mov     eax, edx
call    sub_4DE3EA

loc_43EDA2:
pop     edx
retn
sub_43ED7B endp




sub_43EDA4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     dx, [eax+48h]
mov     [ecx+1Ch], dx
mov     dx, [eax+4Ah]
mov     [ecx+1Eh], dx
mov     ax, [eax+4Ch]
mov     [ecx+20h], ax
mov     bx, word ptr ds:dword_77E9E8
mov     dx, word ptr ds:dword_77E9F0
mov     eax, [ecx+1Eh]
sar     eax, 10h
movsx   edx, dx
sub     edx, eax
mov     eax, [ecx+1Ah]
sar     eax, 10h
movsx   ebx, bx
sub     ebx, eax
mov     eax, ebx
call    sub_4EF04B
and     eax, 0FFFh
mov     edx, eax
call    sub_4EF008
shl     eax, 2
mov     ebx, eax
shl     eax, 4
sub     eax, ebx
mov     ebx, eax
sar     ebx, 0Ch
mov     eax, [ecx+1Ah]
sar     eax, 10h
add     eax, ebx
mov     [ecx+1Ch], ax
sub     word ptr [ecx+1Eh], 0E6h
mov     eax, edx
call    sub_4EF003
shl     eax, 2
mov     edx, eax
shl     eax, 4
sub     eax, edx
mov     edx, eax
sar     edx, 0Ch
mov     eax, [ecx+1Eh]
sar     eax, 10h
add     eax, edx
mov     [ecx+20h], ax
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_5141D4[eax*2]
mov     [ecx+22h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_5141D5[eax*2]
mov     [ecx+23h], al
xor     eax, eax
mov     al, [ecx+0Bh]
mov     ebx, eax
shl     ebx, 3
mov     edx, eax
shl     edx, 13h
or      edx, 2E000000h
shl     eax, 0Bh
or      eax, edx
or      eax, ebx
mov     [ecx+18h], eax
pop     edx
pop     ecx
pop     ebx
retn
sub_43EDA4 endp




sub_43EE89 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43EE8F[edx*4]
pop     edx
retn
sub_43EE89 endp




sub_43EE98 proc near
push    edx
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
or      byte ptr [edx], 22h
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 10h
call    rand_
and     al, 1
mov     [edx+0Fh], al
mov     eax, edx
call    sub_43EF38
pop     edx
retn
sub_43EE98 endp




sub_43EECC proc near
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     ecx, eax
mov     eax, edx
call    sub_43EF38
mov     ah, [edx+0Fh]
inc     ah
mov     [edx+0Fh], ah
cmp     ah, 3
jl      short loc_43EEF5
mov     byte ptr [edx+0Fh], 0

loc_43EEF5:
test    byte ptr [ecx], 1
jnz     short loc_43EF01
mov     eax, edx
call    sub_4DE3EA

loc_43EF01:
cmp     word ptr [ecx+4Ah], 0
jz      short loc_43EF0C
mov     byte ptr [edx+8], 2

loc_43EF0C:
pop     edx
pop     ecx
retn
sub_43EECC endp




sub_43EF0F proc near
push    edx
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     eax, edx
call    sub_43EF38
mov     ah, [edx+0Bh]
sub     ah, 2
mov     [edx+0Bh], ah
jnz     short loc_43EF36
mov     eax, edx
call    sub_4DE3EA

loc_43EF36:
pop     edx
retn
sub_43EF0F endp




sub_43EF38 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     edx, ds:dword_560C00
mov     bx, [eax+48h]
mov     [ecx+1Ch], bx
mov     bx, [eax+4Ah]
mov     [ecx+1Eh], bx
mov     ax, [eax+4Ch]
mov     [ecx+20h], ax
mov     eax, [edx+16h]
sar     eax, 10h
mov     ebx, [ecx+1Eh]
sar     ebx, 10h
sub     eax, ebx
mov     ebx, eax
mov     edx, [edx+12h]
sar     edx, 10h
mov     eax, [ecx+1Ah]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
mov     edx, ebx
call    sub_4EF04B
mov     edx, eax
and     edx, 0FFFh
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     ebx, ds:dword_51425E[eax*8]
sar     ebx, 10h
mov     eax, edx
call    sub_4EF008
imul    ebx, eax
sar     ebx, 0Ch
mov     eax, [ecx+1Ah]
sar     eax, 10h
add     eax, ebx
mov     [ecx+1Ch], ax
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     ax, ds:word_514262[eax*8]
sub     [ecx+1Eh], ax
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     ebx, ds:dword_51425E[eax*8]
sar     ebx, 10h
mov     eax, edx
call    sub_4EF003
mov     edx, eax
imul    edx, ebx
sar     edx, 0Ch
mov     eax, [ecx+1Eh]
sar     eax, 10h
add     eax, edx
mov     [ecx+20h], ax
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_5141E4[eax*2]
mov     [ecx+22h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_5141E5[eax*2]
mov     [ecx+23h], al
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     ax, word ptr ds:dword_51425E[eax*8]
mov     [ecx+24h], ax
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     ax, ds:word_51423E[eax*4]
mov     [ecx+26h], ax
xor     edx, edx
mov     dl, [ecx+0Bh]
mov     eax, edx
shl     eax, 2
sub     eax, edx
add     eax, eax
mov     ebx, eax
shl     ebx, 10h
or      ebx, 2E000000h
mov     edx, eax
shl     edx, 8
or      edx, ebx
or      edx, eax
mov     [ecx+18h], edx
mov     dword ptr [ecx+14h], 3DC0002Eh
cmp     ds:byte_560BE4, 0
jnz     short loc_43F08F
cmp     ds:byte_560BE5, 1Bh
jnz     short loc_43F08F
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     ax, ds:word_51424E[eax*4]
mov     [ecx+26h], ax

loc_43F08F:
cmp     ds:byte_560BE4, 0
jnz     short loc_43F0B3
cmp     ds:byte_560BE5, 1Ch
jnz     short loc_43F0B3
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     ax, ds:word_51424E[eax*4]
mov     [ecx+26h], ax

loc_43F0B3:
pop     edx
pop     ecx
pop     ebx
retn
sub_43EF38 endp




sub_43F0B7 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43F0BD[edx*4]
pop     edx
retn
sub_43F0B7 endp




sub_43F0C6 proc near

var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
lea     edx, [ecx+54h]
mov     al, [ecx+3]
and     al, 0Fh
and     eax, 0FFh
mov     [esp+10h+var_10], eax
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
shl     ebx, 2
shl     eax, 4
mov     ax, ds:word_514288[ebx+eax]
mov     [edx], ax
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     ebx, [esp+10h+var_10]
shl     ebx, 4
mov     ax, ds:word_51428A[ebx+eax*4]
mov     [edx+2], ax
mov     dword ptr [ecx+50h], 2808080h
mov     byte ptr [ecx+0Ah], 0
mov     word ptr [ecx+4Eh], 0
lea     eax, [ecx+18h]
call    sub_4EF184
mov     dword ptr [ecx+38h], 0
mov     eax, [ecx+38h]
mov     [ecx+28h], eax
mov     eax, [ecx+28h]
mov     [ecx+18h], eax
mov     dl, [ecx+3]
test    dl, 80h
jz      short loc_43F151

loc_43F148:
mov     [esp+10h+var_10], 4
jmp     short loc_43F187

loc_43F151:
mov     al, dl
and     al, 0Fh
and     eax, 0FFh
mov     [esp+10h+var_10], eax
cmp     eax, 5
jb      short loc_43F169
jbe     short loc_43F187
cmp     eax, 6
jmp     short loc_43F16C

loc_43F169:
cmp     eax, 4

loc_43F16C:
jz      short loc_43F187
mov     eax, [ecx+48h]
sar     eax, 10h
mov     edx, 0FFFFFFFFh
sub     edx, eax
cmp     edx, 1Eh
jl      short loc_43F148
mov     [esp+10h+var_10], 5

loc_43F187:
cmp     byte ptr [ecx+0Eh], 0
jnz     short loc_43F191
add     [esp+10h+var_10], 2

loc_43F191:
mov     edx, esp
mov     eax, ecx
call    sub_4DD0F8
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 0
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_43F1B4
lea     edx, [ecx+48h]
mov     eax, 0A1h
call    sub_4D8BC3

loc_43F1B4:
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_43F0C6 endp




sub_43F1BB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax        ; int
xor     edx, edx
mov     dl, [eax+9]     ; int
call    ds:funcs_43F1C5[edx*4]
cmp     byte ptr ds:dword_77E7DC+3, 1
jle     short loc_43F1EF
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     al, ds:byte_514358[edx+eax*4]
and     eax, 0FFh
jmp     short loc_43F20D

loc_43F1EF:
mov     edx, [ecx+0Bh]
sar     edx, 18h
shl     edx, 2
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     al, ds:byte_514358[edx+eax]
and     eax, 0FFh
add     eax, 20h ; ' '

loc_43F20D:
push    80h
push    0
or      eax, 10000000h
push    eax
push    offset unk_559E00
xor     eax, eax
mov     al, [ecx+1]
push    eax
mov     edx, [ecx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, eax
lea     eax, [ecx+48h]
mov     ecx, 0A000h
xor     ebx, ebx
call    sub_4E01FC
pop     edx
pop     ecx
pop     ebx
retn
sub_43F1BB endp

db 8Bh, 0C0h
jpt_43F275 dd offset def_43F275 ; jump table for switch statement
dd offset loc_43F318
dd offset loc_43F39C
dd offset loc_43F3F8



; int __fastcall sub_43F25B(int, int)
sub_43F25B proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
mov     ecx, eax
add     eax, 54h ; 'T'
mov     dl, [ecx+3]
and     dl, 0Fh
cmp     dl, 3           ; switch 4 cases
ja      short def_43F275 ; jumptable 0043F275 default case, case 0
and     edx, 0FFh
jmp     jpt_43F275[edx*4] ; switch jump

def_43F275:             ; jumptable 0043F275 default case, case 0
mov     dx, [eax+2]
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
add     [ecx+4Eh], bx
cmp     word ptr [eax], 0
jg      short loc_43F2EB
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
mov     ebx, ds:dword_5142F6[ebx*8]
sar     ebx, 10h
mov     edx, [ecx+4Ch]
sar     edx, 10h
cmp     edx, ebx
jge     short loc_43F2BA

loc_43F2AC:
mov     word ptr [ecx+4Eh], 0
inc     byte ptr [ecx+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_43F2BA:
mov     word ptr [eax+2], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     dx, word ptr ds:dword_5142FA[edx*8]
mov     [eax], dx
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     eax, ds:dword_5142FA[eax*8]
sar     eax, 10h
mov     esi, [ecx+4Ch]
sar     esi, 10h
cmp     esi, eax
jle     short loc_43F2F2

loc_43F2EB:
mov     eax, 80h
jmp     short loc_43F306

loc_43F2F2:
mov     edx, esi
sub     edx, ebx
shl     edx, 7
mov     eax, edx
sar     edx, 1Fh
idiv    esi
test    eax, eax
jge     short loc_43F306
xor     eax, eax

loc_43F306:
mov     edx, eax
or      edx, 2000000h
mov     ebx, eax
shl     ebx, 8
jmp     loc_43F41F

loc_43F318:             ; jumptable 0043F275 case 1
mov     dx, [eax+2]
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
mov     si, [ecx+4Eh]
add     esi, ebx
mov     [ecx+4Eh], si
test    si, si
jle     loc_43F2AC
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
mov     ebx, ds:dword_514316[ebx*8]
sar     ebx, 10h
cmp     word ptr [eax], 0
jg      short loc_43F357
mov     eax, [ecx+4Ch]
sar     eax, 10h
cmp     eax, ebx
jle     short loc_43F35E

loc_43F357:
mov     eax, 80h
jmp     short loc_43F38A

loc_43F35E:
mov     edx, ebx
sub     edx, eax
shl     edx, 7
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     edx, 60h ; '`'
sub     edx, eax
mov     eax, edx
cmp     edx, 0FFh
jle     short loc_43F384
mov     eax, 0FFh
jmp     short loc_43F38A

loc_43F384:
test    edx, edx
jge     short loc_43F38A
xor     eax, edx

loc_43F38A:
mov     ebx, eax
or      ebx, 2000000h
mov     edx, eax
shl     edx, 8
jmp     loc_43F41F

loc_43F39C:             ; jumptable 0043F275 case 2
mov     dx, [eax+2]
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
add     [ecx+4Eh], bx
cmp     word ptr [eax], 0
jle     loc_43F2AC
mov     eax, [ecx+0Ah]
sar     eax, 18h
shl     eax, 3
mov     edx, ds:dword_514336[eax]
sar     edx, 10h
mov     ebx, [ecx+4Ch]
sar     ebx, 10h
cmp     ebx, edx
jle     short loc_43F357
mov     al, ds:byte_51433A[eax]
mov     dh, [ecx+0Ah]
add     dh, al
mov     [ecx+0Ah], dh
cmp     dh, 80h
ja      short loc_43F3F4
xor     eax, eax
mov     al, dh
mov     edx, 80h
sub     edx, eax
mov     eax, edx
jmp     short loc_43F38A

loc_43F3F4:
xor     eax, eax
jmp     short loc_43F38A

loc_43F3F8:             ; jumptable 0043F275 case 3
xor     eax, eax
mov     al, [ecx+0Fh]
add     eax, eax
mov     [ecx+4Eh], ax
cmp     byte ptr [ecx+0Fh], 0
jz      loc_43F2AC
xor     eax, eax
mov     al, [ecx+0Dh]
mov     ebx, eax
or      ebx, 2000000h
mov     edx, eax
shl     edx, 8

loc_43F41F:
or      edx, ebx
shl     eax, 10h
or      edx, eax
mov     [ecx+50h], edx
test    byte ptr [ecx+3], 20h
jz      short loc_43F434
sub     word ptr [ecx+4Ah], 28h ; '('

loc_43F434:
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF184
fild    word ptr [ecx+4Eh]
fmul    ds:dbl_50A2AC
fst     dword ptr [ecx+38h]
fst     dword ptr [ecx+28h]
fstp    dword ptr [ecx+18h]
mov     bl, [ecx+0Bh]
inc     bl
mov     [ecx+0Bh], bl
xor     eax, eax
mov     al, bl
shl     eax, 7
call    sub_4EF50D
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_43F25B endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_49]


; Attributes: thunk

sub_43F469 proc near
jmp     sub_4DE3EA
sub_43F469 endp




sub_43F46E proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43F474[edx*4]
pop     edx
retn
sub_43F46E endp




sub_43F47D proc near
push    ecx
push    edx
or      byte ptr [eax], 22h
mov     word ptr [eax+24h], 20h ; ' '
mov     dword ptr [eax+14h], 3D48002Ch
mov     dword ptr [eax+18h], 2EC06060h
mov     byte ptr [eax+0Ch], 80h
mov     byte ptr [eax+0Dh], 0
cmp     byte ptr [eax+3], 0
jz      short loc_43F4E8
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_514394[edx*2]
mov     [eax+0Eh], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_514390[edx*2]
mov     [eax+22h], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_514392[edx*2]
jmp     short loc_43F52A

loc_43F4E8:
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_51437C[edx*2]
mov     [eax+0Eh], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_514378[edx*2]
mov     [eax+22h], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_51437A[edx*2]

loc_43F52A:
mov     [eax+23h], dl
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+0Bh], 0
pop     edx
pop     ecx
retn
sub_43F47D endp




sub_43F538 proc near
push    ecx
push    edx
mov     dl, [eax+0Eh]
dec     dl
mov     [eax+0Eh], dl
jnz     loc_43F5E2
cmp     byte ptr [eax+3], 0
jz      short loc_43F59A
add     word ptr [eax+24h], 8
inc     byte ptr [eax+0Dh]
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_514394[edx*2]
mov     [eax+0Eh], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_514390[edx*2]
mov     [eax+22h], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_514392[edx*2]
jmp     short loc_43F5DF

loc_43F59A:
inc     byte ptr [eax+0Dh]
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_51437C[edx*2]
mov     [eax+0Eh], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_514378[edx*2]
mov     [eax+22h], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_51437A[edx*2]

loc_43F5DF:
mov     [eax+23h], dl

loc_43F5E2:
cmp     byte ptr [eax+0Eh], 80h
jnz     short loc_43F5EC
mov     byte ptr [eax+8], 2

loc_43F5EC:
pop     edx
pop     ecx
retn
sub_43F538 endp



; Attributes: thunk

sub_43F5EF proc near
jmp     sub_4DE3EA
sub_43F5EF endp




sub_43F5F4 proc near
push    edx
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_43F609
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43F600[edx*4]
pop     edx
retn

loc_43F609:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43F60E[edx*4]
pop     edx
retn
sub_43F5F4 endp




sub_43F617 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
cmp     byte ptr [eax+0Fh], 1
jnz     loc_43F6D1
test    byte ptr [ecx+9], 7
jnz     loc_43F6CE
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_43F6CE
mov     al, [ecx+3]
add     al, al
mov     ah, [ecx+0Ch]
add     ah, al
mov     byte ptr [edx], 3
mov     al, [ecx+2]
mov     [edx+2], al
mov     al, [ecx+3]
mov     [edx+3], al
mov     al, [ecx+0Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 1
mov     byte ptr [edx+0Eh], 40h ; '@'
mov     al, [ecx+0Fh]
mov     [edx+0Fh], al
movsx   ebx, ah
shl     ebx, 4
call    rand_
mov     esi, eax
and     esi, 7Fh
mov     ax, ds:word_5143D0[ebx]
sub     eax, esi
mov     [edx+1Ch], ax
call    rand_
mov     esi, eax
and     esi, 7Fh
mov     ax, ds:word_5143D4[ebx]
sub     eax, esi
mov     [edx+20h], ax
mov     ax, ds:word_5143D2[ebx]
mov     [edx+1Eh], ax
mov     dword ptr [edx+14h], 3D48000Eh
mov     dword ptr [edx+18h], 2E808080h
mov     byte ptr [edx+22h], 40h ; '@'
mov     byte ptr [edx+23h], 0
movsx   ax, ds:byte_5143D8[ebx]
mov     [edx+24h], ax

loc_43F6CE:
inc     byte ptr [ecx+9]

loc_43F6D1:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43F617 endp



; Attributes: thunk

sub_43F6D6 proc near
jmp     sub_4DE3EA
sub_43F6D6 endp




sub_43F6DB proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Eh], 0
jle     loc_43F769
mov     al, [edx+3]
add     al, al
add     al, [edx+0Ch]
movsx   ecx, al
shl     ecx, 4
movsx   bx, ds:byte_5143DD[ecx]
call    rand_
and     ebx, eax
movsx   ax, ds:byte_5143D9[ecx]
add     eax, ebx
add     [edx+1Ch], ax
movsx   bx, ds:byte_5143DE[ecx]
call    rand_
and     ebx, eax
movsx   ax, ds:byte_5143DA[ecx]
add     eax, ebx
sub     [edx+1Eh], ax
movsx   bx, ds:byte_5143DF[ecx]
call    rand_
and     eax, ebx
movsx   bx, ds:byte_5143DB[ecx]
add     eax, ebx
add     [edx+20h], ax
movsx   ax, ds:byte_5143DC[ecx]
add     [edx+24h], ax
sub     dword ptr [edx+18h], 10101h
dec     byte ptr [edx+0Eh]
pop     edx
pop     ecx
pop     ebx
retn

loc_43F769:
mov     eax, edx
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_43F6DB endp




sub_43F774 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= byte ptr -28h
var_24= byte ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ebx, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_43F78F
cmp     al, 1
jz      short loc_43F799
jmp     loc_43F8F6

loc_43F78F:
mov     dword ptr [ebx+28h], 0
inc     byte ptr [ebx+8]

loc_43F799:
inc     dword ptr [ebx+28h]
xor     edx, edx
mov     dl, [ebx+3]
mov     edx, ds:off_514888[edx*8]
xor     edi, edi

loc_43F7AA:
xor     eax, eax
mov     al, [ebx+3]
cmp     edi, ds:dword_51488C[eax*8]
jge     loc_43F8F6
mov     ecx, [edx+6]
sar     ecx, 10h
mov     esi, [ebx+28h]
imul    ecx, esi
movsx   eax, word ptr [edx]
add     eax, ecx
shr     eax, 4
mov     [esp+38h+var_38], eax
mov     eax, [edx+8]
sar     eax, 10h
imul    eax, esi
mov     ecx, [edx]
sar     ecx, 10h
add     eax, ecx
shr     eax, 4
mov     [esp+38h+var_34], eax
mov     ecx, [edx+0Ah]
sar     ecx, 10h
imul    ecx, esi
mov     eax, [edx+2]
sar     eax, 10h
add     eax, ecx
shr     eax, 4
mov     [esp+38h+var_2C], eax
mov     eax, [edx+0Ch]
sar     eax, 10h
imul    eax, esi
mov     ecx, [edx+4]
sar     ecx, 10h
add     eax, ecx
shr     eax, 4
mov     [esp+38h+var_30], eax
xor     eax, eax
mov     al, [edx+10h]
mov     cl, ds:byte_514430[eax*4]
mov     [esp+38h+var_28], cl
mov     ch, ds:byte_514432[eax*4]
add     cl, ch
mov     [esp+38h+var_24], cl
mov     cl, ds:byte_514431[eax*4]
mov     [esp+38h+var_20], cl
mov     ch, ds:byte_514433[eax*4]
add     cl, ch
mov     [esp+38h+var_1C], cl
call    sub_4EE133
mov     ecx, eax
movzx   esi, byte ptr [edx+11h]
mov     eax, esi
shl     eax, 8
add     eax, esi
shl     eax, 8
add     eax, esi
shl     eax, 3
mov     esi, 2C808080h
sub     esi, eax
mov     [ecx+4], esi
mov     eax, [esp+38h+var_38+2]
sar     eax, 10h
shl     eax, 10h
mov     esi, [esp-2]
sar     esi, 10h
and     esi, 0FFFFh
or      esi, eax
mov     [ecx+8], esi
mov     eax, [esp+38h+var_30+2]
sar     eax, 10h
mov     [ecx+10h], eax
movzx   esi, [esp+38h+var_20]
shl     esi, 8
xor     eax, eax
mov     al, [esp+38h+var_28]
mov     [esp+38h+var_2C], eax
or      eax, esi
or      eax, 3E400000h
mov     [ecx+0Ch], eax
xor     eax, eax
mov     al, [esp+38h+var_24]
or      esi, eax
or      esi, 70000h
mov     [ecx+14h], esi
movzx   esi, [esp+38h+var_1C]
shl     esi, 8
mov     ebp, [esp+38h+var_2C]
or      ebp, esi
mov     [ecx+1Ch], ebp
mov     dword ptr [ecx+20h], 0
or      esi, eax
mov     [ecx+24h], esi
mov     eax, [esp+38h+var_34+2]
sar     eax, 10h
mov     [ecx+18h], eax
inc     edi
add     edx, 14h
jmp     loc_43F7AA

loc_43F8F6:
add     esp, 20h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43F774 endp




sub_43F900 proc near
push    ebx
push    ecx
push    edx
mov     dl, [eax+8]
cmp     dl, 1
jb      short loc_43F916
jbe     short loc_43F920
cmp     dl, 2
jz      short loc_43F975
pop     edx
pop     ecx
pop     ebx
retn

loc_43F916:
test    dl, dl
jnz     short loc_43F97A
or      byte ptr [eax], 2
inc     byte ptr [eax+8]

loc_43F920:
mov     edx, [eax+2Ch]
cmp     dword ptr [edx+18h], 0
jz      short loc_43F92E
sub     word ptr [eax+1Ch], 2

loc_43F92E:
mov     bl, [eax+0Dh]
dec     bl
mov     [eax+0Dh], bl
jz      short loc_43F93E
cmp     byte ptr [eax+8], 2
jnz     short loc_43F945

loc_43F93E:
mov     byte ptr [eax+0Dh], 0
inc     byte ptr [eax+8]

loc_43F945:
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     ecx, edx
shl     ecx, 8
add     ecx, edx
shl     edx, 10h
add     edx, ecx
add     edx, 2E000000h
mov     [eax+18h], edx
movsx   dx, byte ptr [eax+0Fh]
add     [eax+24h], dx
mov     dx, [eax+28h]
add     [eax+1Eh], dx
pop     edx
pop     ecx
pop     ebx
retn

loc_43F975:
call    sub_4DE3EA

loc_43F97A:
pop     edx
pop     ecx
pop     ebx
retn
sub_43F900 endp




sub_43F97E proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     edx, eax
mov     ah, [eax+0Bh]
inc     ah
mov     [edx+0Bh], ah
cmp     ah, 8
jnz     loc_43FA65
call    sub_4DE13B
mov     ecx, eax
mov     ebx, eax
test    eax, eax
jz      loc_43FA65
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 21h ; '!'
mov     byte ptr [eax+3], 1
mov     al, [edx+6]
mov     [ecx+6], al
mov     byte ptr [ecx+0Ch], 0
call    rand_
mov     [esp+14h+var_14], eax
mov     al, byte ptr [esp+14h+var_14]
and     al, 7
add     al, al
add     al, 40h ; '@'
mov     ah, [edx+0Dh]
sub     al, ah
mov     [ecx+0Dh], al
call    rand_
mov     esi, eax
and     esi, 0Fh
mov     ax, [edx+1Ch]
add     eax, esi
mov     [ecx+1Ch], ax
mov     ax, [edx+1Eh]
mov     [ecx+1Eh], ax
call    rand_
mov     esi, eax
and     esi, 0Fh
mov     ax, [edx+20h]
add     eax, esi
mov     [ecx+20h], ax
mov     dword ptr [ecx+14h], 3D48004Eh
call    rand_
mov     [esp+14h+var_14], eax
mov     al, byte ptr [esp+14h+var_14]
and     al, 3
shl     al, 5
add     al, 20h ; ' '
mov     [ecx+22h], al
mov     byte ptr [ecx+23h], 0
movsx   ax, byte ptr [edx+0Eh]
mov     [ecx+24h], ax
mov     al, [edx+0Fh]
mov     [ecx+0Fh], al
mov     eax, [edx+28h]
mov     [ecx+28h], eax
mov     [ecx+2Ch], edx
xor     ecx, ecx

loc_43FA41:
xor     eax, eax
mov     ax, [edx+26h]
cmp     ecx, eax
jge     short loc_43FA55
mov     eax, ebx
call    sub_43F900
inc     ecx
jmp     short loc_43FA41

loc_43FA55:
mov     word ptr [edx+26h], 0
call    rand_
and     al, 3
mov     [edx+0Bh], al

loc_43FA65:
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43F97E endp




sub_43FA6D proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     cl, [eax+8]
test    cl, cl
jbe     short loc_43FA86
cmp     cl, 1
jz      loc_43FD02
pop     edx
pop     ecx
pop     ebx
retn

loc_43FA86:
mov     ecx, ds:dword_77E6DC
mov     ax, [eax+28h]
add     [edx+1Ch], ax
mov     eax, [edx+30h]
mov     ebx, [edx+2Ch]
add     ebx, eax
mov     [edx+2Ch], ebx
shr     ebx, 4
mov     eax, [edx+1Ch]
sar     eax, 10h
add     eax, ebx
mov     [edx+1Eh], ax
add     word ptr [edx+26h], 80h
cmp     word ptr [edx+1Eh], 110h
jg      short loc_43FAC4
cmp     word ptr [edx+1Ch], 160h
jle     short loc_43FACB

loc_43FAC4:
inc     byte ptr [edx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_43FACB:
mov     eax, ecx
call    sub_4F87F0
mov     eax, [edx+9]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_5148AA[eax*4]
xor     eax, eax
mov     ax, [edx+26h]
call    sub_4EF003
imul    eax, ebx
sar     eax, 0Dh
mov     ebx, [edx+1Ah]
sar     ebx, 10h
add     eax, ebx
mov     [ecx+8], ax
mov     eax, [edx+9]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_5148AB[eax*4]
xor     eax, eax
mov     ax, [edx+26h]
call    sub_4EF008
imul    eax, ebx
sar     eax, 0Dh
mov     ebx, [edx+1Ch]
sar     ebx, 10h
add     eax, ebx
mov     [ecx+0Ah], ax
mov     eax, [edx+9]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_5148AA[eax*4]
xor     eax, eax
mov     ax, [edx+26h]
add     eax, 400h
call    sub_4EF003
imul    ebx, eax
sar     ebx, 0Dh
mov     eax, [edx+1Ah]
sar     eax, 10h
add     eax, ebx
mov     [ecx+10h], ax
mov     eax, [edx+9]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_5148AB[eax*4]
xor     eax, eax
mov     ax, [edx+26h]
add     eax, 400h
call    sub_4EF008
imul    ebx, eax
sar     ebx, 0Dh
mov     eax, [edx+1Ch]
sar     eax, 10h
add     eax, ebx
mov     [ecx+12h], ax
mov     eax, [edx+9]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_5148AA[eax*4]
xor     eax, eax
mov     ax, [edx+26h]
add     eax, 0C00h
call    sub_4EF003
imul    eax, ebx
sar     eax, 0Dh
mov     ebx, [edx+1Ah]
sar     ebx, 10h
add     eax, ebx
mov     [ecx+18h], ax
mov     eax, [edx+9]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_5148AB[eax*4]
xor     eax, eax
mov     ax, [edx+26h]
add     eax, 0C00h
call    sub_4EF008
imul    eax, ebx
sar     eax, 0Dh
mov     ebx, [edx+1Ch]
sar     ebx, 10h
add     eax, ebx
mov     [ecx+1Ah], ax
mov     eax, [edx+9]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_5148AA[eax*4]
xor     eax, eax
mov     ax, [edx+26h]
add     eax, 800h
call    sub_4EF003
imul    ebx, eax
sar     ebx, 0Dh
mov     eax, [edx+1Ah]
sar     eax, 10h
add     eax, ebx
mov     [ecx+20h], ax
mov     eax, [edx+9]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_5148AB[eax*4]
xor     eax, eax
mov     ax, [edx+26h]
add     eax, 800h
call    sub_4EF008
imul    ebx, eax
sar     ebx, 0Dh
mov     eax, [edx+1Ch]
sar     eax, 10h
add     eax, ebx
mov     [ecx+22h], ax
mov     eax, [edx+9]
sar     eax, 18h
mov     al, ds:byte_5148A8[eax*4]
mov     [ecx+0Ch], al
mov     eax, [edx+9]
sar     eax, 18h
mov     al, ds:byte_5148A9[eax*4]
mov     [ecx+0Dh], al
mov     eax, [edx+9]
sar     eax, 18h
mov     bl, [ecx+0Ch]
mov     bh, ds:byte_5148AA[eax*4]
add     bl, bh
mov     [ecx+14h], bl
mov     al, [ecx+0Dh]
mov     [ecx+15h], al
mov     al, [ecx+0Ch]
mov     [ecx+1Ch], al
mov     eax, [edx+9]
sar     eax, 18h
mov     bl, [ecx+0Dh]
mov     bh, ds:byte_5148AB[eax*4]
add     bl, bh
mov     [ecx+1Dh], bl
mov     eax, [edx+9]
sar     eax, 18h
mov     bl, [ecx+0Ch]
mov     bh, ds:byte_5148AA[eax*4]
add     bl, bh
mov     [ecx+24h], bl
mov     eax, [edx+9]
sar     eax, 18h
mov     dl, [ecx+0Dh]
mov     dh, ds:byte_5148AB[eax*4]
add     dl, dh
mov     [ecx+25h], dl
mov     word ptr [ecx+0Eh], 3E40h
mov     word ptr [ecx+16h], 7
mov     byte ptr [ecx+4], 80h
mov     byte ptr [ecx+5], 80h
mov     byte ptr [ecx+6], 80h
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, ecx
call    sub_4F87A6
add     ds:dword_77E6DC, 38h ; '8'
pop     edx
pop     ecx
pop     ebx
retn

loc_43FD02:
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_43FA6D endp




sub_43FD0B proc near
push    edx
mov     dl, [eax+3]
cmp     dl, 1
jb      short loc_43FD1D
jbe     short loc_43FD35
cmp     dl, 2
jz      short loc_43FD3C
pop     edx
retn

loc_43FD1D:
test    dl, dl
jnz     short loc_43FD41
cmp     byte ptr [eax+8], 2
jz      short loc_43FD2E
call    sub_43F97E
pop     edx
retn

loc_43FD2E:
call    sub_4DE3EA
pop     edx
retn

loc_43FD35:
call    sub_43F900
pop     edx
retn

loc_43FD3C:
call    sub_43FA6D

loc_43FD41:
pop     edx
retn
sub_43FD0B endp




sub_43FD43 proc near

var_C= byte ptr -0Ch
var_8= byte ptr -8
arg_0= dword ptr  4
arg_4= byte ptr  8
arg_8= byte ptr  0Ch

push    esi
sub     esp, 8
mov     esi, eax
mov     [esp+0Ch+var_C], dl
mov     [esp+0Ch+var_8], bl
mov     ebx, ecx
call    sub_4DE13B
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      short loc_43FDCE
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 21h ; '!'
mov     byte ptr [eax+3], 0
xor     eax, eax
mov     al, [esp+0Ch+arg_8]
mov     [edx+18h], eax
mov     byte ptr [edx+0Ch], 0
mov     byte ptr [edx+0Dh], 0
mov     al, [esp+0Ch+var_C]
mov     [edx+0Eh], al
mov     al, [esp+0Ch+var_8]
mov     [edx+0Fh], al
mov     ax, [esi]
mov     [edx+1Ch], ax
mov     ax, [esi+2]
mov     [edx+1Eh], ax
mov     ax, [esi+4]
mov     [edx+20h], ax
mov     [edx+26h], bx
cmp     [esp+0Ch+arg_4], 0
jz      short loc_43FDB0
or      byte ptr [edx+6], 20h
jmp     short loc_43FDB4

loc_43FDB0:
and     byte ptr [edx+6], 0DFh

loc_43FDB4:
mov     eax, [esp+0Ch+arg_0]
mov     [ecx+28h], eax
xor     edx, edx

loc_43FDBD:
movsx   eax, bx
cmp     edx, eax
jge     short loc_43FDCE
mov     eax, ecx
call    sub_43F97E
inc     edx
jmp     short loc_43FDBD

loc_43FDCE:
mov     eax, ecx
add     esp, 8
pop     esi
retn    0Ch
sub_43FD43 endp




sub_43FDD7 proc near

var_C= byte ptr -0Ch
arg_2= dword ptr  6

push    esi
push    edi
sub     esp, 4
mov     edi, eax
mov     esi, edx
mov     [esp+0Ch+var_C], bl
call    sub_4DE13B
mov     edx, eax
mov     ebx, eax
test    eax, eax
jz      short loc_43FE29
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 21h ; '!'
mov     byte ptr [eax+3], 2
mov     al, [esp+0Ch+var_C]
mov     [edx+0Ch], al
mov     [edx+1Ch], di
mov     [edx+1Eh], si
mov     word ptr [edx+26h], 0
movsx   eax, cx
mov     [edx+28h], eax
mov     eax, [esp+0Eh]
sar     eax, 10h
mov     [edx+2Ch], eax
mov     eax, [esp+0Ch+arg_2]
sar     eax, 10h
mov     [edx+30h], eax

loc_43FE29:
mov     eax, ebx
add     esp, 4
pop     edi
pop     esi
retn    8
sub_43FDD7 endp




sub_43FE33 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43FE39[edx*4]
pop     edx
retn
sub_43FE33 endp




sub_43FE42 proc near
push    edx
lea     edx, [eax+28h]
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     dword ptr [edx], 0
mov     word ptr [edx+4], 0
mov     word ptr [edx+6], 0
pop     edx
retn
sub_43FE42 endp




sub_43FE7A proc near

var_20= dword ptr -20h
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
push    eax
lea     ebp, [eax+28h]
mov     ecx, 12h
mov     eax, [ebp+0]
mov     edx, eax
sar     edx, 1Fh
idiv    ecx
mov     edi, 102h
sub     edi, edx
mov     dx, [ebp+6]
mov     cx, [ebp+4]
mov     [esp+20h+var_1C], cx

loc_43FEAA:
cmp     [esp+20h+var_1C], 0
jl      short loc_43FF18
movsx   ecx, di
cmp     ecx, 0FFFFFFEEh
jle     short loc_43FF18
imul    edx, 12h
sub     edi, edx
movsx   esi, di
mov     ecx, [esp+20h+var_20+2]
sar     ecx, 10h
xor     edx, edx
mov     dl, ds:byte_514BE8[ecx*4]
mov     ebx, esi
xor     eax, eax
call    sub_43FF87
xor     edx, edx
mov     dl, ds:byte_514BE9[ecx*4]
mov     ebx, esi
mov     eax, 1
call    sub_43FF87
xor     edx, edx
mov     dl, ds:byte_514BEA[ecx*4]
mov     ebx, esi
mov     eax, 2
call    sub_43FF87
xor     edx, edx
mov     dl, ds:byte_514BE7[ecx*4]
sub     edi, 12h
dec     [esp+20h+var_1C]
jmp     short loc_43FEAA

loc_43FF18:
mov     edx, [ebp+0]
inc     edx
mov     [ebp+0], edx
mov     ecx, 12h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
test    edx, edx
jnz     short loc_43FF63
mov     edx, [ebp+2]
sar     edx, 10h
shl     edx, 2
mov     ah, ds:byte_514BEB[edx]
test    ah, ah
jz      short loc_43FF59
mov     dl, ah
and     edx, 0FFh
inc     word ptr [ebp+6]
mov     ecx, [ebp+4]
sar     ecx, 10h
inc     edx
cmp     ecx, edx
jnz     short loc_43FF63

loc_43FF59:
inc     word ptr [ebp+4]
mov     word ptr [ebp+6], 0

loc_43FF63:
cmp     word ptr [ebp+4], 0A4h
jle     short loc_43FF72
mov     edx, [esp+20h+var_20]
mov     byte ptr [edx+8], 2

loc_43FF72:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43FE7A endp




sub_43FF7C proc near
inc     byte ptr ds:dword_560BE0+1
jmp     sub_4DE3EA
sub_43FF7C endp




sub_43FF87 proc near

var_1C= byte ptr -1Ch
var_18= byte ptr -18h
var_14= byte ptr -14h
var_10= byte ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 10h
mov     [esp+1Ch+var_14], al
test    dl, dl
jz      loc_4400D5
movzx   esi, dl
mov     al, ds:byte_5148DC[esi*4]
mov     [esp+1Ch+var_18], al
mov     al, ds:byte_5148DD[esi*4]
mov     [esp+1Ch+var_1C], al
mov     al, ds:byte_5148DE[esi*4]
mov     [esp+1Ch+var_10], al
mov     edx, ds:dword_77E6DC
mov     ecx, edx
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx], 9000000h
mov     dword ptr [edx+4], 2C808080h
mov     word ptr [edx+0Eh], 7C00h
xor     ah, ah
mov     al, ds:byte_5148DF[esi*4]
mov     [edx+16h], ax
mov     al, [esp+1Ch+var_18]
mov     [edx+0Ch], al
mov     al, [esp+1Ch+var_1C]
mov     [edx+0Dh], al
mov     al, [esp+1Ch+var_10]
mov     [edx+14h], al
mov     al, [esp+1Ch+var_1C]
mov     [edx+15h], al
mov     al, [esp+1Ch+var_18]
mov     [edx+1Ch], al
mov     al, [esp+1Ch+var_1C]
add     al, 0Fh
mov     [edx+1Dh], al
mov     ah, [esp+1Ch+var_10]
mov     [edx+24h], ah
mov     [edx+25h], al
mov     esi, ebx
add     esi, 10h
mov     ah, [esp+1Ch+var_14]
cmp     ah, 1
jb      short loc_440038
jbe     short loc_440075
jmp     short loc_44009B

loc_440038:
test    ah, ah
jnz     short loc_44009B
mov     al, [esp+1Ch+var_10]
movzx   di, [esp+1Ch+var_18]
sub     eax, edi
mov     edi, 90h
sub     edi, eax
mov     [edx+8], di
mov     [edx+0Ah], bx
mov     word ptr [edx+10h], 90h
mov     [edx+12h], bx
mov     [edx+18h], di
mov     [edx+1Ah], si
mov     word ptr [edx+20h], 90h

loc_44006F:
mov     [edx+22h], si
jmp     short loc_4400C6

loc_440075:
mov     word ptr [edx+8], 20h ; ' '
mov     [edx+0Ah], bx
mov     word ptr [edx+10h], 11Fh
mov     [edx+12h], bx
mov     word ptr [edx+18h], 20h ; ' '
mov     [edx+1Ah], si
mov     word ptr [edx+20h], 11Fh
jmp     short loc_44006F

loc_44009B:
mov     word ptr [ecx+8], 0B0h
mov     [ecx+0Ah], bx
mov     word ptr [ecx+10h], 12Fh
mov     [ecx+12h], bx
mov     word ptr [ecx+18h], 0B0h
add     ebx, 10h
mov     [ecx+1Ah], bx
mov     word ptr [ecx+20h], 12Fh
mov     [ecx+22h], bx

loc_4400C6:
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
mov     edx, ecx
call    sub_4F87A6

loc_4400D5:
add     esp, 10h
pop     edi
pop     esi
pop     ecx
retn
sub_43FF87 endp

dword_4400DC dd 2 dup(0)



sub_4400E4 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
cmp     ds:byte_77E7D4, 5
jnz     short loc_44010D
cmp     byte ptr ds:dword_77E7D5, 0
jnz     short loc_44010D
mov     eax, ebp
call    sub_448ED4
jmp     loc_440207

loc_44010D:
lea     eax, [ebp+408h]
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+5Ch]
lea     esi, [ebp+54h]
movsd
movsd
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     edx, [esp+1Ch+var_1C]
mov     [edx+2], ax
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_440158[edx*4]
mov     al, [ebp+0ADh]
cmp     al, [ebp+0ACh]
jz      short loc_440180
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_440187

loc_440180:
mov     eax, ebp
call    sub_4DEADD

loc_440187:
test    byte ptr [ebp+0], 2
jz      short loc_4401A8
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 20h
jnz     short loc_4401A8
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4401A8:
test    byte ptr [ebp+0], 1
jz      short loc_4401FD
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_4401FD
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    offset unk_800000
sub     word ptr [eax+0Eh], 28h ; '('
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     ax, [edx+8]
or      eax, 4000000h
push    eax
lea     eax, [edx+14h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [edx+0Ch]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC

loc_4401FD:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+14h], 0

loc_440207:
add     esp, 4

def_440D56:             ; jumptable 00440D56 default case
pop     ebp

def_440601:             ; jumptable 00440601 default case
pop     edi             ; jumptable 004412B9 default case
; jumptable 004415E9 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4400E4 endp




sub_440211 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     al, [ecx+3]
and     al, 0F0h
cmp     al, 50h ; 'P'
jz      short loc_44024A
mov     word ptr [ecx+54h], 0
mov     al, [ecx+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0

loc_44024A:
mov     dword ptr [ecx+64h], 0
and     byte ptr [ecx+0Ch], 0F0h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [esi], 0Eh
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+18h], 0
lea     eax, [esi+24h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     dword ptr [esi+34h], 7FFFFFFFh
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], 0
mov     al, [ecx+3]
and     al, 0F0h
cmp     al, 50h ; 'P'
jz      short loc_4402F5
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax

loc_4402F5:
mov     byte ptr [ecx+8], 1
mov     al, [ecx+3]
and     al, 0F0h
cmp     al, 20h ; ' '
jb      short loc_440320
jbe     short loc_440344
cmp     al, 40h ; '@'
jb      short loc_440317
jbe     short loc_44036F
cmp     al, 50h ; 'P'
jz      loc_44038A
jmp     loc_44039C

loc_440317:
cmp     al, 30h ; '0'
jz      short loc_440351
jmp     loc_44039C

loc_440320:
test    al, al
jbe     short loc_44032D
cmp     al, 10h
jz      short loc_440337
jmp     loc_44039C

loc_44032D:
mov     byte ptr [ecx+9], 0

loc_440331:
xor     ebx, ebx
xor     edx, edx
jmp     short loc_440395

loc_440337:
mov     byte ptr [ecx+9], 0Eh
xor     ebx, ebx
mov     edx, 1
jmp     short loc_440395

loc_440344:
mov     byte ptr [ecx+9], 0Dh
xor     ebx, ebx
mov     edx, 0Ch
jmp     short loc_440395

loc_440351:
and     byte ptr [ecx], 0FDh
mov     byte ptr [ecx+9], 10h
mov     ah, [esi]
and     ah, 0D9h
mov     [esi], ah
mov     dl, ah
or      dl, 20h
mov     [esi], dl
xor     ebx, ebx
mov     edx, 0Ah
jmp     short loc_440395

loc_44036F:
and     byte ptr [ecx], 0FDh
mov     byte ptr [ecx+9], 0Fh
mov     byte ptr [ecx+0Dh], 0
mov     bl, [esi]
and     bl, 0D9h
mov     [esi], bl
mov     bh, bl
or      bh, 20h
mov     [esi], bh
jmp     short loc_440331

loc_44038A:
mov     byte ptr [ecx+9], 0Bh
xor     ebx, ebx
mov     edx, 25h ; '%'

loc_440395:
mov     eax, ecx
call    sub_4DE96B

loc_44039C:
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ecx+3], 0Fh
cmp     byte ptr [ecx+0Ch], 0
jz      loc_440443
call    sub_4DE043
mov     [esi+38h], eax
test    eax, eax
jz      loc_440443
mov     byte ptr [eax], 1
mov     eax, [esi+38h]
mov     byte ptr [eax+2], 6
mov     eax, [esi+38h]
mov     byte ptr [eax+3], 80h
mov     eax, [esi+38h]
mov     dx, [ecx+14h]
mov     [eax+14h], dx
mov     dx, [ecx+16h]
sub     edx, 64h ; 'd'
mov     eax, [esi+38h]
mov     [eax+16h], dx
mov     eax, [esi+38h]
mov     dx, [ecx+18h]
mov     [eax+18h], dx
mov     eax, [esi+38h]
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     eax, [esi+38h]
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     eax, [esi+38h]
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
mov     eax, [esi+38h]
mov     byte ptr [eax+8], 4
mov     eax, [esi+38h]
mov     dword ptr [eax+9Ch], 20h ; ' '
mov     eax, [esi+38h]
mov     dword ptr [eax+0A0h], 10h

loc_440443:
mov     word ptr [ecx+15Eh], 4210h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_440211 endp

align 4
jpt_4404BA dd offset loc_4404CD ; jump table for switch statement
dd offset loc_4404CD
dd offset loc_4404CD
dd offset loc_4404C1
dd offset loc_4404E8
dd offset loc_4404E8
dd offset loc_4404E8
dd offset def_4404BA
dd offset loc_440504
dd offset loc_440504



sub_44047C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+408h]
test    byte ptr [ecx], 4
jz      short loc_440495
mov     eax, edx
call    sub_441A5A

loc_440495:
xor     ebx, ebx
mov     bl, [edx+9]
mov     eax, edx
call    ds:funcs_44049C[ebx*4]
test    byte ptr [ecx], 1
jz      loc_440547
mov     al, [edx+9]
sub     al, 5           ; switch 10 cases
cmp     al, 9
ja      short def_4404BA ; jumptable 004404BA default case, case 12
and     eax, 0FFh
jmp     jpt_4404BA[eax*4] ; switch jump

loc_4404C1:             ; jumptable 004404BA case 8
mov     eax, edx
call    sub_4DE2F6
jmp     loc_44053E

loc_4404CD:             ; jumptable 004404BA cases 5-7
cmp     byte ptr [edx+3], 2
jnb     short loc_4404E2
cmp     byte ptr [edx+0Ch], 0
jnz     short loc_4404E2

loc_4404D9:
mov     byte ptr [edx+9], 3
jmp     loc_44053E

loc_4404E2:
mov     byte ptr [edx+9], 2
jmp     short loc_44053E

loc_4404E8:             ; jumptable 004404BA cases 9-11
cmp     word ptr [edx+6Eh], 0
jle     short loc_4404FB
mov     word ptr [edx+66h], 80h
mov     byte ptr [edx+9], 5
jmp     short loc_44053E

loc_4404FB:
and     byte ptr [ecx], 0FBh
mov     byte ptr [edx+9], 8
jmp     short loc_44053E

loc_440504:             ; jumptable 004404BA cases 13,14
mov     bh, [edx+0Dh]
test    bh, bh
jz      short def_4404BA ; jumptable 004404BA default case, case 12
mov     al, bh
dec     al
mov     [edx+0Dh], al
jmp     short loc_44053E

def_4404BA:             ; jumptable 004404BA default case, case 12
test    byte ptr [ecx], 10h
jz      short loc_440527
cmp     byte ptr [edx+3], 2
jnb     short loc_4404E2
cmp     byte ptr [edx+0Ch], 0
jz      short loc_4404D9
jmp     short loc_4404E2

loc_440527:
test    byte ptr [edx+3], 1
jz      short loc_440533
mov     byte ptr [edx+9], 0
jmp     short loc_44053E

loc_440533:
mov     byte ptr [edx+9], 1
mov     eax, edx
call    sub_4419A4

loc_44053E:
mov     word ptr [edx+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_440547:
cmp     byte ptr [edx+0Ch], 0
jz      short loc_44059E
mov     eax, [ecx+38h]
mov     bx, [edx+14h]
mov     [eax+14h], bx
mov     bx, [edx+16h]
sub     ebx, 64h ; 'd'
mov     eax, [ecx+38h]
mov     [eax+16h], bx
mov     eax, [ecx+38h]
mov     dx, [edx+18h]
mov     [eax+18h], dx
mov     edx, [ecx+38h]
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+1Ch], eax
mov     edx, [ecx+38h]
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     edx, [ecx+38h]
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax

loc_44059E:
mov     si, [ecx+0Ah]
test    si, si
jz      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
mov     edi, esi
dec     edi
mov     [ecx+0Ah], di
jmp     def_440601      ; jumptable 00440601 default case
sub_44047C endp         ; jumptable 004412B9 default case
; jumptable 004415E9 default case



sub_4405B7 proc near
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0Ch], 0
jz      short loc_4405CB
mov     edx, [edx+38h]
mov     byte ptr [edx+8], 0

loc_4405CB:
call    sub_4DE2F6
pop     edx
retn
sub_4405B7 endp

align 4
jpt_440601 dd offset loc_440608 ; jump table for switch statement
dd offset loc_4406A6
dd offset loc_4406C6
dd offset loc_44075E



sub_4405E4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
and     eax, 0FFh
jmp     jpt_440601[eax*4] ; switch jump

loc_440608:             ; jumptable 00440601 case 0
and     byte ptr [edi], 0FDh
mov     word ptr [edi+6], 0
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 0
mov     word ptr [edi+4], 40h ; '@'
mov     ax, [edi+4]
mov     [esi+4Eh], ax
mov     word ptr [esi+4Ch], 30h ; '0'
xor     ebx, ebx
jmp     short loc_44066D

loc_440638:
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 83h
movsx   edx, bx
mov     cx, [esi+edx*8+190h]
mov     [eax+1Ch], cx
mov     cx, [esi+edx*8+192h]
mov     [eax+1Eh], cx
mov     dx, [esi+edx*8+194h]
mov     [eax+20h], dx
inc     ebx
cmp     bx, 6
jge     short loc_440676

loc_44066D:
call    sub_4DE13B
test    eax, eax
jnz     short loc_440638

loc_440676:
mov     byte ptr [esi+0FBh], 0FFh
mov     byte ptr [esi+103h], 0FFh
mov     byte ptr [esi+107h], 0FFh
mov     byte ptr [esi+10Bh], 0FFh
mov     byte ptr [esi+10Fh], 0FFh
lea     edx, [esi+190h]
mov     eax, esi
call    sub_4AF9F8

loc_4406A6:             ; jumptable 00440601 case 1
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jg      short loc_4406BA
mov     byte ptr [esi+0Ah], 2
jmp     short loc_4406C6 ; jumptable 00440601 case 2

loc_4406BA:
mov     ax, [esi+4Ch]
sub     eax, ecx
add     eax, eax
mov     [esi+46h], ax

loc_4406C6:             ; jumptable 00440601 case 2
or      byte ptr [esi], 2
mov     ax, [edi+6]
inc     eax
xor     ah, ah
and     al, 3
mov     [edi+6], ax
cmp     word ptr [esi+6Eh], 0
jg      short loc_4406E5
test    ax, ax
jnz     short loc_4406E5
and     byte ptr [esi], 0FDh

loc_4406E5:
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
sub     word ptr [esi+16h], 34h ; '4'
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, esi
call    sub_42DE56
test    ah, 10h
jz      short loc_440748
mov     cl, [esi+0Bh]
inc     cl
mov     [esi+0Bh], cl
cmp     cl, 3
jnz     short loc_44072E
mov     word ptr [edi+4], 16h
mov     [esi+0Ah], cl
jmp     short loc_440748

loc_44072E:
or      byte ptr [esi], 2
mov     byte ptr [esi+0Ah], 1
sar     word ptr [esi+4Ch], 1
mov     bx, [esi+4Eh]
sar     bx, 1
mov     [esi+4Eh], bx
mov     [edi+4], bx

loc_440748:
add     word ptr [esi+16h], 34h ; '4'
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_44075E:             ; jumptable 00440601 case 3
xor     byte ptr [esi], 2
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
or      byte ptr [edi], 1
jmp     def_440601      ; jumptable 00440601 default case
sub_4405E4 endp         ; jumptable 004412B9 default case
; jumptable 004415E9 default case



sub_44077B proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_440793
cmp     bl, 1
jz      short loc_4407A4
pop     edx
pop     ebx
retn

loc_440793:
mov     word ptr [eax+4], 78h ; 'x'
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0

loc_4407A4:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4407B5
or      byte ptr [eax], 1

loc_4407B5:
pop     edx
pop     ebx
retn
sub_44077B endp




sub_4407B8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
add     eax, 408h
mov     dl, [ebp+0Ah]
test    dl, dl
jbe     short loc_4407D6
cmp     dl, 1
jz      short loc_4407E7
jmp     def_440D56      ; jumptable 00440D56 default case

loc_4407D6:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     word ptr [eax+4], 5Ah ; 'Z'

loc_4407E7:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4407FD
or      byte ptr [eax], 1
jmp     def_440D56      ; jumptable 00440D56 default case

loc_4407FD:
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 30h ; '0'

loc_440815:
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
mov     ecx, [ebp+2Ch]
sar     ecx, 10h
sub     eax, ecx
cmp     eax, 10h

loc_44084D:
jle     short loc_440870
mov     byte ptr [ebp+9], 0Ch
mov     word ptr [ebp+0Ah], 0
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440870:
test    dh, 0Fh
jz      def_440D56      ; jumptable 00440D56 default case
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax
jmp     def_440D56      ; jumptable 00440D56 default case
sub_4407B8 endp




sub_44088C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
add     eax, 408h
mov     dl, [ebp+0Ah]
test    dl, dl
jbe     short loc_4408AA
cmp     dl, 1
jz      short loc_4408BB
jmp     def_440D56      ; jumptable 00440D56 default case

loc_4408AA:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 0Ah
mov     word ptr [eax+4], 0Fh

loc_4408BB:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4408D1
or      byte ptr [eax], 1
jmp     def_440D56      ; jumptable 00440D56 default case

loc_4408D1:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     ecx, [ebp+14h]
sar     ecx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     ecx, eax
cmp     ecx, 10h
jmp     loc_44084D
sub_44088C endp




sub_440917 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+408h]
mov     edi, offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_44093A
cmp     al, 1
jz      short loc_44096E
jmp     def_440D56      ; jumptable 00440D56 default case

loc_44093A:
mov     byte ptr [ebp+0Ah], 1
mov     word ptr [ebp+44h], 8
mov     word ptr [ebp+66h], 10h
cmp     byte ptr [ebp+0Ch], 0
jz      short loc_440960
mov     dword ptr [esi+34h], 80000h
mov     byte ptr [ebp+0ACh], 9
jmp     short loc_44096E

loc_440960:
mov     dword ptr [esi+34h], 8000h
mov     byte ptr [ebp+0ACh], 2

loc_44096E:
mov     dl, [esi]
test    dl, 10h
jnz     short loc_440981
mov     bl, dl
or      bl, 1
mov     [esi], bl
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440981:
push    400h
mov     eax, [ebp+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     edx, [edi+54h]
sar     edx, 10h
lea     eax, [edi+1Ch]
mov     ebx, 800h
call    sub_4DE689
test    eax, eax
jz      short loc_4409C8
mov     word ptr [ebp+66h], 80h
mov     byte ptr [ebp+9], 5

loc_4409B1:
mov     word ptr [ebp+0Ah], 0
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
jmp     def_440D56      ; jumptable 00440D56 default case

loc_4409C8:
mov     ecx, [ebp+64h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [edi+14h]
lea     eax, [ebp+14h]
call    sub_4DE552
mov     edx, eax
test    ax, ax
jge     short loc_4409EB
cwde
neg     eax
jmp     short loc_4409EC

loc_4409EB:
cwde

loc_4409EC:
cmp     eax, 10h
jge     short loc_440A0E
mov     eax, [ebp+80h]
cmp     eax, [esi+34h]
jnb     short loc_440A0E
cmp     byte ptr [ebp+0Ch], 0
jz      short loc_440A08
mov     byte ptr [ebp+9], 6
jmp     short loc_4409B1

loc_440A08:
mov     byte ptr [ebp+9], 7
jmp     short loc_4409B1

loc_440A0E:
mov     ax, [ebp+56h]
add     eax, edx
and     ah, 0Fh
mov     [ebp+56h], ax
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
xor     ebx, ebx
jmp     loc_440815
sub_440917 endp




sub_440A2D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+408h]
mov     edi, offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_440A50
cmp     al, 1
jz      short loc_440A7D
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440A50:
mov     byte ptr [ebp+0Ah], 1
mov     word ptr [ebp+44h], 0Ch
mov     word ptr [ebp+66h], 18h
mov     byte ptr [ebp+0ACh], 9
cmp     byte ptr [ebp+0Ch], 0
jz      short loc_440A76
mov     dword ptr [esi+34h], 80000h
jmp     short loc_440A7D

loc_440A76:
mov     dword ptr [esi+34h], 8000h

loc_440A7D:
mov     dl, [esi]
test    dl, 10h
jnz     short loc_440A90
mov     bl, dl
or      bl, 1
mov     [esi], bl
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440A90:
mov     ecx, [ebp+64h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [edi+14h]
lea     eax, [ebp+14h]
call    sub_4DE552
test    ax, ax
jge     short loc_440AB3
movsx   ecx, ax
neg     ecx
jmp     short loc_440AB6

loc_440AB3:
movsx   ecx, ax

loc_440AB6:
cmp     cx, 10h
jge     short loc_440AEE
mov     eax, [ebp+80h]
cmp     eax, [esi+34h]
jnb     short loc_440AEE
cmp     byte ptr [ebp+0Ch], 0
jz      short loc_440AD3
mov     byte ptr [ebp+9], 6
jmp     short loc_440AD7

loc_440AD3:
mov     byte ptr [ebp+9], 7

loc_440AD7:
mov     word ptr [ebp+0Ah], 0
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440AEE:
mov     ecx, [ebp+64h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [edi+14h]
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     ecx, [ebp+14h]
sar     ecx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     ecx, eax
cmp     ecx, 10h
jle     short loc_440B78
mov     byte ptr [ebp+9], 0Ch
mov     word ptr [ebp+0Ah], 0
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440B78:
test    dh, 0Fh
jz      short loc_440B90
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440B90:
test    word ptr [esi+2], 1FFh
jnz     def_440D56      ; jumptable 00440D56 default case
mov     byte ptr [ebp+9], 0Ah
mov     word ptr [ebp+0Ah], 0
jmp     def_440D56      ; jumptable 00440D56 default case
sub_440A2D endp




sub_440BAB proc near
push    ebx
push    edx
lea     edx, [eax+408h]
mov     bl, [eax+0Ah]
test    bl, bl
jbe     short loc_440BC2
cmp     bl, 1
jz      short loc_440BD3
pop     edx
pop     ebx
retn

loc_440BC2:
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 1
mov     word ptr [edx+8], 0

loc_440BD3:
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     short loc_440BE7
or      byte ptr [edx], 1
pop     edx
pop     ebx
retn

loc_440BE7:
mov     dx, [eax+56h]
add     dx, [eax+66h]
and     dh, 0Fh
mov     [eax+56h], dx
pop     edx
pop     ebx
retn
sub_440BAB endp




sub_440BF9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_440C16
cmp     al, 1
jz      short loc_440C27
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_440C16:
mov     byte ptr [esi+0ACh], 1
mov     byte ptr [esi+0Ah], 1
mov     word ptr [edi+8], 0

loc_440C27:
cmp     byte ptr [esi+3], 2
jnb     short loc_440C49
cmp     byte ptr [esi+0Ch], 0
jnz     short loc_440C49
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [esi+14h]
mov     eax, (offset dword_5F8376+2)
jmp     short loc_440C5D

loc_440C49:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5F8376+2)

loc_440C5D:
call    sub_4DE552
test    ax, ax
jnz     short loc_440C6F

loc_440C67:
or      byte ptr [edi], 1
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_440C6F:
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     def_440601      ; jumptable 00440601 default case
sub_440BF9 endp         ; jumptable 004412B9 default case
; jumptable 004415E9 default case



sub_440C7F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
add     eax, 408h
mov     bl, [edx+0Ah]
cmp     bl, 1
jb      short loc_440C9E
jbe     short loc_440CB9
cmp     bl, 2
jz      short loc_440D01
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_440C9E:
test    bl, bl
jnz     short loc_440D12
mov     word ptr [eax+4], 0Fh
mov     byte ptr [edx+0ACh], 30h ; '0'
mov     byte ptr [edx+0Ah], 1
mov     word ptr [eax+8], 0

loc_440CB9:
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short loc_440D12
mov     ecx, [eax+38h]
mov     byte ptr [ecx+8], 0
mov     ecx, [eax+38h]
mov     bx, [edx+56h]
mov     [ecx+64h], bx
mov     ecx, [eax+38h]
mov     dword ptr [ecx+9Ch], 20h ; ' '
mov     ecx, [eax+38h]
mov     dword ptr [ecx+0A0h], 10h
mov     byte ptr [edx+0Ch], 0
mov     word ptr [eax+4], 8
mov     byte ptr [edx+0Ah], 2

loc_440D01:
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     short loc_440D12
or      byte ptr [eax], 1

loc_440D12:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_440C7F endp

align 4
jpt_440D56 dd offset loc_440D5D ; jump table for switch statement
dd offset loc_440D6E
dd offset loc_440DAE
dd offset loc_440E2A
dd offset loc_440EBB



sub_440D2C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+408h]
test    byte ptr [esi+17h], 2
jz      short loc_440D46
mov     word ptr [esi+8], 0

loc_440D46:
mov     al, [ebp+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_440D56      ; jumptable 00440D56 default case
and     eax, 0FFh
jmp     jpt_440D56[eax*4] ; switch jump

loc_440D5D:             ; jumptable 00440D56 case 0
mov     word ptr [esi+4], 0Fh
mov     byte ptr [ebp+0ACh], 15h
mov     byte ptr [ebp+0Ah], 1

loc_440D6E:             ; jumptable 00440D56 case 1
mov     bx, [esi+4]
dec     ebx
mov     [esi+4], bx
test    bx, bx
jge     def_440D56      ; jumptable 00440D56 default case
mov     byte ptr [ebp+0Ah], 2
mov     byte ptr [ebp+0ACh], 18h
mov     word ptr [ebp+44h], 0Fh
mov     word ptr [esi+4], 0Fh
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [esi+8], ax

loc_440DAE:             ; jumptable 00440D56 case 2
dec     word ptr [esi+4]
test    byte ptr [esi+17h], 2
jz      short loc_440DBE
mov     word ptr [ebp+44h], 0

loc_440DBE:
mov     eax, 8
sub     ax, [esi+4]
shl     eax, 2
mov     [ebp+46h], ax
mov     ebx, [ebp+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_440D56      ; jumptable 00440D56 default case
test    ah, 0Fh
jz      short loc_440E05
mov     word ptr [ebp+44h], 0

loc_440E05:
test    dh, 10h
jz      def_440D56      ; jumptable 00440D56 default case
mov     word ptr [esi+4], 0Fh
mov     word ptr [esi+8], 0
mov     byte ptr [ebp+0ACh], 17h
mov     byte ptr [ebp+0Ah], 3
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440E2A:             ; jumptable 00440D56 case 3
mov     cx, [esi+4]
dec     ecx
mov     [esi+4], cx
test    cx, cx
jge     short loc_440E4B
mov     byte ptr [ebp+0Ah], 4
mov     word ptr [esi+4], 12h
mov     byte ptr [ebp+0ACh], 23h ; '#'
jmp     short loc_440E5B

loc_440E4B:
mov     ax, [ebp+44h]
test    ax, ax
jz      short loc_440E5B
mov     edx, eax
dec     edx
mov     [ebp+44h], dx

loc_440E5B:
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     edx, [ebp+14h]
sar     edx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     edx, eax
cmp     edx, 10h
jle     def_440D56      ; jumptable 00440D56 default case
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440EBB:             ; jumptable 00440D56 case 4
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     def_440D56      ; jumptable 00440D56 default case
or      byte ptr [esi], 1
jmp     def_440D56      ; jumptable 00440D56 default case
sub_440D2C endp




sub_440ED5 proc near
push    ebx
push    edx
push    esi
mov     edx, eax
add     eax, 408h
mov     bl, [edx+0Ah]
cmp     bl, 1
jb      short loc_440EF2
jbe     short loc_440F17
cmp     bl, 2
jz      short loc_440F39
pop     esi
pop     edx
pop     ebx
retn

loc_440EF2:
test    bl, bl
jnz     short loc_440F4A
and     byte ptr [eax], 0F7h
mov     word ptr [eax+4], 0Ah
mov     word ptr [eax+8], 0
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 20h ; ' '
mov     byte ptr [edx+110h], 7

loc_440F17:
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short loc_440F39
mov     word ptr [eax+4], 0Ah
mov     byte ptr [edx+0ACh], 8
mov     byte ptr [edx+110h], 6

loc_440F39:
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     short loc_440F4A
or      byte ptr [eax], 9

loc_440F4A:
pop     esi
pop     edx
pop     ebx
retn
sub_440ED5 endp

align 10h
jpt_440F7D dd offset loc_440F84 ; jump table for switch statement
dd offset loc_440FEB
dd offset loc_441035
dd offset loc_44109E



sub_440F60 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
and     eax, 0FFh
jmp     jpt_440F7D[eax*4] ; switch jump

loc_440F84:             ; jumptable 00440F7D case 0
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0
and     byte ptr [esi+57h], 0Fh
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 21h ; '!'
mov     word ptr [esi+44h], 0Dh
mov     word ptr [esi+46h], 0FFE8h
mov     byte ptr [esi+110h], 7
cmp     byte ptr [esi+0Ch], 0
jz      short loc_440FEB ; jumptable 00440F7D case 1
mov     eax, [edi+38h]
mov     byte ptr [eax+8], 0
mov     eax, [edi+38h]
mov     dx, [esi+56h]
mov     [eax+64h], dx
mov     eax, [edi+38h]
mov     dword ptr [eax+9Ch], 20h ; ' '
mov     eax, [edi+38h]
mov     dword ptr [eax+0A0h], 10h
mov     byte ptr [esi+0Ch], 0

loc_440FEB:             ; jumptable 00440F7D case 1
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jl      short loc_441024
cmp     cx, 2
jge     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case

loc_441024:
mov     word ptr [edi+4], 7
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 22h ; '"'

loc_441035:             ; jumptable 00440F7D case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
mov     eax, 4
sub     eax, ebx
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      short def_440F7D ; jumptable 00440F7D default case
; jumptable 00441115 default case
test    ah, 0Fh
jz      short loc_44107F
mov     word ptr [esi+44h], 0

loc_44107F:
test    dh, 10h
jz      short def_440F7D ; jumptable 00440F7D default case
; jumptable 00441115 default case
cmp     word ptr [edi+4], 0
jg      short def_440F7D ; jumptable 00440F7D default case
; jumptable 00441115 default case
mov     word ptr [edi+4], 12h
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 23h ; '#'
jmp     short def_440F7D ; jumptable 00440F7D default case
; jumptable 00441115 default case

loc_44109E:             ; jumptable 00440F7D case 3
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx

loc_4410AA:             ; jumptable 00440F7D default case
jge     short def_440F7D ; jumptable 00441115 default case
or      byte ptr [edi], 1
mov     byte ptr [esi+110h], 6
or      byte ptr [edi], 8

def_440F7D:             ; jumptable 00440F7D default case
or      byte ptr [esi], 2 ; jumptable 00441115 default case
mov     ax, [edi+6]
inc     eax
xor     ah, ah
and     al, 3
mov     [edi+6], ax
cmp     word ptr [esi+6Eh], 0
jg      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
test    ax, ax
jnz     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
and     byte ptr [esi], 0FDh
jmp     def_440601      ; jumptable 00440601 default case
sub_440F60 endp         ; jumptable 004412B9 default case
; jumptable 004415E9 default case
align 4
jpt_441115 dd offset loc_44111C ; jump table for switch statement
dd offset loc_441191
dd offset loc_4411DB
dd offset loc_441250
dd offset loc_441273



sub_4410FC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      short def_440F7D ; jumptable 00440F7D default case
; jumptable 00441115 default case
and     eax, 0FFh
jmp     jpt_441115[eax*4] ; switch jump

loc_44111C:             ; jumptable 00441115 case 0
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+6], 0
mov     word ptr [edi+8], 0
and     byte ptr [esi+57h], 0Fh
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 25h ; '%'
mov     word ptr [esi+44h], 0FFF5h
mov     word ptr [esi+46h], 0FFE8h
mov     byte ptr [esi+110h], 7
cmp     byte ptr [esi+0Ch], 0
jz      short loc_441191 ; jumptable 00441115 case 1
mov     eax, [edi+38h]
mov     byte ptr [eax+8], 0
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     edx, eax
mov     eax, [edi+38h]
mov     [eax+64h], dx
mov     eax, [edi+38h]
mov     dword ptr [eax+9Ch], 20h ; ' '
mov     eax, [edi+38h]
mov     dword ptr [eax+0A0h], 10h
mov     byte ptr [esi+0Ch], 0

loc_441191:             ; jumptable 00441115 case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jl      short loc_4411CA
cmp     dx, 2
jge     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case

loc_4411CA:
mov     word ptr [edi+4], 0Bh
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 26h ; '&'

loc_4411DB:             ; jumptable 00441115 case 2
dec     word ptr [edi+4]
mov     eax, 8
sub     ax, [edi+4]
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
test    ah, 0Fh
jz      short loc_441226
mov     word ptr [esi+44h], 0

loc_441226:
test    dh, 10h
jz      def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
cmp     word ptr [edi+4], 0
jg      def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
mov     word ptr [edi+4], 26h ; '&'
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 27h ; '''
jmp     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case

loc_441250:             ; jumptable 00441115 case 3
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
mov     word ptr [edi+4], 11h
mov     byte ptr [esi+0Ah], 4
mov     byte ptr [esi+0ACh], 28h ; '('

loc_441273:             ; jumptable 00441115 case 4
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jmp     loc_4410AA
sub_4410FC endp

jpt_4412B9 dd offset loc_4412C0 ; jump table for switch statement
dd offset loc_4412E3
dd offset loc_441306
dd offset loc_44132D
dd offset loc_4413FE
dd offset loc_441428



sub_44129C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
and     eax, 0FFh
jmp     jpt_4412B9[eax*4] ; switch jump

loc_4412C0:             ; jumptable 004412B9 case 0
mov     word ptr [edi+4], 5
mov     word ptr [edi+8], 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 10h
mov     word ptr [esi+44h], 8
mov     word ptr [esi+46h], 0FFF2h

loc_4412E3:             ; jumptable 004412B9 case 1
mov     ax, [edi+4]
dec     eax
mov     [edi+4], ax
test    ax, ax
jge     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
mov     word ptr [edi+4], 0Eh
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 11h

loc_441306:             ; jumptable 004412B9 case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jge     short loc_441320
mov     byte ptr [esi+0Ah], 3
mov     word ptr [esi+44h], 0
jmp     short loc_44132D ; jumptable 004412B9 case 3

loc_441320:
mov     eax, 7
sub     eax, ebx
add     eax, eax
mov     [esi+46h], ax

loc_44132D:             ; jumptable 004412B9 case 3
cmp     byte ptr [esi+0Ah], 3
jnz     short loc_441349
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
mov     eax, 7
sub     eax, ebx
add     eax, eax
mov     [esi+46h], ax

loc_441349:
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
test    ah, 0Fh
jz      short loc_441380
mov     word ptr [esi+44h], 0

loc_441380:
test    dh, 10h
jz      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
test    byte ptr [edi+2], 0Fh
jnz     short loc_4413E8
mov     word ptr [edi+4], 0Eh
mov     byte ptr [esi+0Ah], 4
add     byte ptr [esi+0ACh], 3
cmp     byte ptr [esi+0Ch], 0
jz      short loc_4413DC
mov     eax, [edi+38h]
mov     byte ptr [eax+8], 0
mov     dx, [esi+56h]
add     dh, 8
and     dh, 0Fh
mov     eax, [edi+38h]
mov     [eax+64h], dx
mov     eax, [edi+38h]
mov     dword ptr [eax+9Ch], 20h ; ' '
mov     eax, [edi+38h]
mov     dword ptr [eax+0A0h], 10h
mov     byte ptr [esi+0Ch], 0

loc_4413DC:
mov     byte ptr [esi+110h], 7
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_4413E8:
mov     word ptr [edi+4], 7
mov     byte ptr [esi+0Ah], 5
add     byte ptr [esi+0ACh], 2
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_4413FE:             ; jumptable 004412B9 case 4
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
mov     byte ptr [esi+110h], 6
mov     word ptr [edi+4], 26h ; '&'
mov     byte ptr [esi+0Ah], 5
mov     byte ptr [esi+0ACh], 28h ; '('

loc_441428:             ; jumptable 004412B9 case 5
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
jmp     loc_440C67
sub_44129C endp

align 10h
jpt_44146D dd offset loc_441474 ; jump table for switch statement
dd offset loc_44148B
dd offset loc_4414B4
dd offset loc_4414D3



sub_441450 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
add     eax, 408h
mov     cl, [edx+0Ah]
cmp     cl, 3           ; switch 4 cases
ja      def_44146D      ; jumptable 0044146D default case
and     ecx, 0FFh
jmp     jpt_44146D[ecx*4] ; switch jump

loc_441474:             ; jumptable 0044146D case 0
mov     word ptr [eax+4], 0Eh
mov     word ptr [eax+8], 0
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0Ch

loc_44148B:             ; jumptable 0044146D case 1
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short def_44146D ; jumptable 0044146D default case
mov     cx, [eax+2]
xor     ch, ch
and     cl, 1Fh
add     ecx, 8
mov     [eax+4], cx
mov     byte ptr [edx+0Ah], 2
mov     byte ptr [edx+0ACh], 0Dh

loc_4414B4:             ; jumptable 0044146D case 2
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     short def_44146D ; jumptable 0044146D default case
mov     word ptr [eax+4], 7
mov     byte ptr [edx+0Ah], 3
mov     byte ptr [edx+0ACh], 0Eh

loc_4414D3:             ; jumptable 0044146D case 3
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short def_44146D ; jumptable 0044146D default case
or      byte ptr [eax], 1

def_44146D:             ; jumptable 0044146D default case
test    byte ptr [eax], 10h
jz      short loc_4414F0
mov     byte ptr [edx+0Dh], 0
or      byte ptr [eax], 1

loc_4414F0:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_441450 endp




sub_4414F5 proc near
and     byte ptr [eax], 0FDh
retn
sub_4414F5 endp

align 4
jpt_44152E dd offset def_44152E ; jump table for switch statement
dd offset loc_441535
dd offset loc_44155D
dd offset def_44152E
dd offset loc_441585
dd offset loc_441596



sub_441514 proc near
push    ebx
push    ecx
push    edx
push    edi
lea     edx, [eax+408h]
mov     bl, [eax+0Ah]
cmp     bl, 5           ; switch 6 cases
ja      def_44152E      ; jumptable 0044152E default case, cases 0,3
xor     ecx, ecx
mov     cl, bl
jmp     jpt_44152E[ecx*4] ; switch jump

loc_441535:             ; jumptable 0044152E case 1
or      byte ptr [eax], 2
mov     byte ptr [eax+0Ah], 2
mov     byte ptr [eax+0ACh], 11h
mov     word ptr [edx+4], 8
mov     word ptr [edx+8], 0
mov     byte ptr [eax+10Bh], 0FFh
mov     byte ptr [eax+10Fh], 0FFh

loc_44155D:             ; jumptable 0044152E case 2
mov     di, [edx+4]
dec     edi
mov     [edx+4], di
test    di, di
jge     short loc_44157B
mov     byte ptr [eax+0Ah], 3
mov     byte ptr [eax+0ACh], 0Ah
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_44157B:
sub     word ptr [eax+16h], 4
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_441585:             ; jumptable 0044152E case 4
mov     byte ptr [eax+0Ah], 5
mov     byte ptr [eax+0ACh], 11h
mov     word ptr [edx+4], 8

loc_441596:             ; jumptable 0044152E case 5
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jl      short loc_4415AE
add     word ptr [eax+16h], 8
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4415AE:
mov     byte ptr [eax+0Ah], 6
and     byte ptr [eax], 0FDh

def_44152E:             ; jumptable 0044152E default case, cases 0,3
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_441514 endp

align 4
jpt_4415E9 dd offset loc_4415F0 ; jump table for switch statement
dd offset loc_44164F
dd offset loc_441725
dd offset loc_441748



sub_4415CC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
and     eax, 0FFh
jmp     jpt_4415E9[eax*4] ; switch jump

loc_4415F0:             ; jumptable 004415E9 case 0
mov     byte ptr [esi+0Dh], 0
call    sub_4DE043
mov     [edi+38h], eax
test    eax, eax
jnz     short loc_44160F
mov     byte ptr [esi+9], 0Fh
mov     word ptr [esi+0Ah], 0
jmp     loc_441779

loc_44160F:
mov     byte ptr [eax], 1
mov     eax, [edi+38h]
mov     byte ptr [eax+8], 4
mov     eax, [edi+38h]
mov     byte ptr [eax+2], 6
mov     eax, [edi+38h]
mov     byte ptr [eax+3], 80h
or      byte ptr [esi], 2
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 30h ; '0'
mov     word ptr [edi+4], 0Fh
mov     word ptr [edi+8], 0
mov     byte ptr [esi+10Bh], 0FFh
mov     byte ptr [esi+10Fh], 0FFh

loc_44164F:             ; jumptable 004415E9 case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jl      loc_4416EB
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 40h ; '@'
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
sub     word ptr [esi+16h], 4
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [edi+38h]
mov     bx, [esi+14h]
mov     [eax+14h], bx
mov     bx, [esi+16h]
sub     ebx, 64h ; 'd'
mov     eax, [edi+38h]
mov     [eax+16h], bx
mov     eax, [edi+38h]
mov     bx, [esi+18h]
mov     [eax+18h], bx
mov     esi, [edi+38h]
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     esi, [edi+38h]
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     esi, [edi+38h]
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_4416EB:
mov     eax, [edi+38h]
mov     byte ptr [eax+8], 0
mov     eax, [edi+38h]
mov     bx, [esi+56h]
mov     [eax+64h], bx
mov     eax, [edi+38h]
mov     dword ptr [eax+9Ch], 18h
mov     eax, [edi+38h]
mov     dword ptr [eax+0A0h], 8
mov     byte ptr [esi+0Ch], 0
mov     word ptr [edi+4], 8
mov     byte ptr [esi+0Ah], 2

loc_441725:             ; jumptable 004415E9 case 2
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 11h
mov     word ptr [edi+4], 8

loc_441748:             ; jumptable 004415E9 case 3
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jl      short loc_44176C
add     word ptr [esi+16h], 8
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_44176C:
mov     byte ptr [esi+9], 0Fh
mov     word ptr [esi+0Ah], 0
and     byte ptr [esi], 0FDh

loc_441779:
mov     byte ptr [esi+0Dh], 1
jmp     def_440601      ; jumptable 00440601 default case
sub_4415CC endp         ; jumptable 004412B9 default case
; jumptable 004415E9 default case
align 4
jpt_4417C0 dd offset loc_4417C7 ; jump table for switch statement
dd offset loc_441805
dd offset loc_44192D
dd offset loc_44194F



sub_441794 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
add     eax, 408h
mov     [esp+20h+var_20], eax
mov     eax, ds:dword_55A00C
mov     [esp+20h+var_1C], eax
mov     al, [ebp+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_4417C0      ; jumptable 004417C0 default case
and     eax, 0FFh
jmp     jpt_4417C0[eax*4] ; switch jump

loc_4417C7:             ; jumptable 004417C0 case 0
or      byte ptr [ebp+0], 2
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0Dh], 0
mov     byte ptr [ebp+0ACh], 30h ; '0'
mov     byte ptr [ebp+10Bh], 0FFh
mov     byte ptr [ebp+10Fh], 0FFh
mov     eax, [esp+20h+var_20]
mov     word ptr [eax+4], 0Fh
mov     word ptr [eax+8], 0
mov     eax, [esp+20h+var_1C]
mov     byte ptr [eax+9], 5
mov     word ptr [eax+0Ah], 0

loc_441805:             ; jumptable 004417C0 case 1
mov     eax, [esp+20h+var_20]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      loc_4418A9
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [ebp+0Bh]
sar     edx, 18h
mov     edx, ds:dword_559FEC[edx*4]
add     edx, 14h
lea     eax, [ebp+14h]
mov     ecx, 40h ; '@'
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
sub     word ptr [ebp+16h], 4
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     ax, [ebp+14h]
mov     edx, [esp+20h+var_1C]
mov     [edx+14h], ax
mov     si, [ebp+16h]
sub     esi, 50h ; 'P'
mov     [edx+16h], si
mov     ax, [ebp+18h]
mov     [edx+18h], ax
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+1Ch], eax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
mov     ax, [ebp+56h]
mov     [edx+56h], ax
jmp     def_4417C0      ; jumptable 004417C0 default case

loc_4418A9:
mov     byte ptr [ebp+0Ah], 2
mov     byte ptr [ebp+0Ch], 0
mov     word ptr [eax+4], 8
mov     eax, [esp+20h+var_1C]
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     esi, [ebp+0Bh]
sar     esi, 18h
mov     esi, ds:dword_559FEC[esi*4]
lea     edi, [esi+0C4h]
lea     esi, [esi+190h]
movsd
movsd
mov     esi, [ebp+0Bh]
sar     esi, 18h
mov     esi, ds:dword_559FEC[esi*4]
sub     word ptr [esi+0C6h], 140h
mov     edx, [ebp+0Bh]
sar     edx, 18h
mov     edx, ds:dword_559FEC[edx*4]
xor     ecx, ecx
mov     ebx, 18h
call    sub_4DD9FD
mov     eax, [ebp+0Bh]
sar     eax, 18h
mov     eax, ds:dword_559FEC[eax*4]
mov     esi, [eax+0Ah]
sar     esi, 18h
mov     esi, ds:dword_559FEC[esi*4]
and     byte ptr [esi+0Fh], 0BFh

loc_44192D:             ; jumptable 004417C0 case 2
mov     eax, [esp+20h+var_20]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short def_4417C0 ; jumptable 004417C0 default case
mov     byte ptr [ebp+0Ah], 3
mov     byte ptr [ebp+0ACh], 11h
mov     word ptr [eax+4], 8

loc_44194F:             ; jumptable 004417C0 case 3
mov     eax, [esp+20h+var_20]
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jl      short loc_441973
add     word ptr [ebp+16h], 8
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
jmp     short def_4417C0 ; jumptable 004417C0 default case

loc_441973:
mov     byte ptr [ebp+9], 0Fh
mov     word ptr [ebp+0Ah], 0
and     byte ptr [ebp+0], 0FDh
mov     byte ptr [ebp+0Dh], 1

def_4417C0:             ; jumptable 004417C0 default case
add     esp, 8
jmp     def_440D56      ; jumptable 00440D56 default case
sub_441794 endp

align 10h
jpt_4419FD dd offset loc_441A04 ; jump table for switch statement
dd offset loc_441A0C
dd offset loc_441A14
dd offset loc_441A1C
dd offset loc_441A34



sub_4419A4 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
lea     esi, [eax+408h]
test    byte ptr [eax+3], 1
jz      short loc_4419C2
mov     eax, offset unk_514EEC
jmp     short loc_4419C7

loc_4419C2:
mov     eax, offset unk_514EF2

loc_4419C7:
xor     ebx, ebx
xor     edx, edx
jmp     short loc_4419D5

loc_4419CD:
inc     edx
inc     eax
cmp     dx, 6
jge     short loc_4419F2

loc_4419D5:
movzx   di, byte ptr [eax]
add     ebx, edi
mov     di, [esi+2]
and     edi, 0Fh
mov     [esp+1Ch+var_1C], edi
xor     edi, edi
mov     di, word ptr [esp+1Ch+var_1C]
movsx   ebp, bx
cmp     edi, ebp
jge     short loc_4419CD

loc_4419F2:             ; switch 5 cases
cmp     dx, 4
ja      short def_4419FD ; jumptable 004419FD default case
xor     eax, eax
mov     ax, dx
jmp     jpt_4419FD[eax*4] ; switch jump

loc_441A04:             ; jumptable 004419FD case 0
mov     word ptr [ecx+66h], 0
jmp     short loc_441A50

loc_441A0C:             ; jumptable 004419FD case 1
mov     word ptr [ecx+66h], 6
jmp     short loc_441A50

loc_441A14:             ; jumptable 004419FD case 2
mov     word ptr [ecx+66h], 0FFFAh
jmp     short loc_441A50

loc_441A1C:             ; jumptable 004419FD case 3
mov     byte ptr [ecx+9], 4
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ecx+66h], 10h

loc_441A2C:
mov     word ptr [esi+4], 40h ; '@'
jmp     short loc_441A50

loc_441A34:             ; jumptable 004419FD case 4
mov     byte ptr [ecx+9], 4
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ecx+66h], 0FFF0h
jmp     short loc_441A2C

def_4419FD:             ; jumptable 004419FD default case
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0

loc_441A50:
mov     eax, 1
jmp     loc_440207
sub_4419A4 endp




sub_441A5A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
mov     edi, esp
mov     esi, offset dword_4400DC
movsd
movsd
lea     ebx, [eax+408h]
mov     eax, [ebx+14h]
and     eax, 0FFFFFFh
jz      loc_441B94
test    byte ptr [ebx+17h], 38h
jz      loc_441B94
cmp     word ptr [ecx+6Eh], 0
jg      short loc_441AB5
mov     dh, [ebx]
and     dh, 0F3h
mov     [ebx], dh
mov     al, dh
or      al, 8
mov     [ebx], al
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh

loc_441AB5:
test    byte ptr [ebx], 8
jz      loc_441B8B
add     [ebx+0Ah], ax
test    byte ptr [ebx+17h], 20h
jnz     short loc_441AFD
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
mov     edx, [ebx+8]
sar     edx, 10h
cmp     edx, eax
jge     short loc_441AFD
mov     edx, [ecx+14h]
sar     edx, 10h
mov     eax, ecx
call    sub_42C592
cmp     edx, eax
jz      loc_441B81

loc_441AFD:
lea     edx, [ebx+1Ch]
test    byte ptr [ebx+22h], 1
jz      short loc_441B3F
lea     eax, [ecx+14h]
call    sub_4DDDB4
mov     esi, [ecx+54h]
sar     esi, 10h
movsx   edx, ax
sub     esi, edx
lea     edx, [esi+400h]
and     edx, 0FFFh
cmp     edx, 800h
jge     short loc_441B33
mov     byte ptr [ecx+9], 0Bh
jmp     short loc_441B75

loc_441B33:
mov     byte ptr [ecx+9], 0Ah
add     ah, 8
and     ah, 0Fh
jmp     short loc_441B75

loc_441B3F:
mov     eax, esp
call    sub_4DDDB4
mov     edx, [ecx+54h]
sar     edx, 10h
movsx   esi, ax
sub     esi, edx
add     esi, 400h
and     esi, 0FFFh
cmp     esi, 800h
jge     short loc_441B6B
mov     byte ptr [ecx+9], 0Ah
jmp     short loc_441B75

loc_441B6B:
mov     byte ptr [ecx+9], 0Bh
add     ah, 8
and     ah, 0Fh

loc_441B75:
mov     [ecx+56h], ax
mov     word ptr [ebx+0Ah], 0
jmp     short loc_441B85

loc_441B81:
mov     byte ptr [ecx+9], 9

loc_441B85:
mov     word ptr [ecx+0Ah], 0

loc_441B8B:
mov     word ptr [ecx+15Eh], 7FFFh

loc_441B94:
mov     eax, 1
add     esp, 8
jmp     def_440601      ; jumptable 00440601 default case
sub_441A5A endp         ; jumptable 004412B9 default case
; jumptable 004415E9 default case



sub_441BA1 proc near
push    ecx
push    edx
lea     edx, [eax+408h]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_441BAE[ecx*4]
mov     dword ptr [edx+14h], 0
pop     edx
pop     ecx
retn
sub_441BA1 endp




sub_441BBF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     word ptr [esi], 10Eh
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+18h], 0
mov     word ptr [esi+34h], 0
lea     eax, [esi+24h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     word ptr [esi+36h], 12Ch
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+18h]
xor     ah, ah
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_514F18
mov     dword ptr [ecx+10h], 0
mov     al, [ecx+3]
cmp     al, 1
jb      short loc_441C97
jbe     short loc_441CA4
cmp     al, 2
jz      short loc_441CC3
jmp     short loc_441CDC

loc_441C97:
test    al, al
jnz     short loc_441CDC
mov     byte ptr [ecx+8], 1
mov     [ecx+9], ah
jmp     short loc_441CCB

loc_441CA4:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
and     byte ptr [esi+1], 0FEh
jmp     short loc_441CDC

loc_441CC3:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 3

loc_441CCB:
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B

loc_441CDC:
mov     eax, ecx
call    sub_441CFD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_441BBF endp

db 90h
jpt_441D82 dd offset loc_441D89 ; jump table for switch statement
dd offset loc_441D89
dd offset loc_441D89
dd offset def_441D82
dd offset loc_441D89



sub_441CFD proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+5Ch]
lea     esi, [ebp+54h]
movsd
movsd
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     edx, [esp+1Ch+var_1C]
mov     [edx+2], ax
mov     ax, [edx]
and     eax, 104h
cmp     ax, 104h
jnz     short loc_441D60
mov     eax, ebp
call    sub_4424B8

loc_441D60:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_441D67[edx*4]
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_441D99
mov     al, [ebp+9]
cmp     al, 4           ; switch 5 cases
ja      short def_441D82 ; jumptable 00441D82 default case, case 3
and     eax, 0FFh
jmp     jpt_441D82[eax*4] ; switch jump

loc_441D89:             ; jumptable 00441D82 cases 0-2,4
mov     byte ptr [ebp+9], 4

def_441D82:             ; jumptable 00441D82 default case, case 3
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0FEh

loc_441D99:
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+36h], 0
jnz     short loc_441DBC
cmp     dword ptr [ebp+80h], offset unk_800000
jbe     short loc_441DBC
test    byte ptr [ebp+6], 80h
jnz     short loc_441DBC
mov     eax, ebp
call    sub_4DE2F6

loc_441DBC:
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+0Ah]
test    bx, bx
jz      short loc_441DCF
mov     ecx, ebx
dec     ecx
mov     [eax+0Ah], cx

loc_441DCF:
mov     eax, [esp+1Ch+var_1C]
mov     si, [eax+36h]
test    si, si
jz      short loc_441DE2
mov     edi, esi
dec     edi
mov     [eax+36h], di

loc_441DE2:
mov     al, [ebp+0ADh]
mov     bh, [ebp+0ACh]
cmp     al, bh
jz      short loc_441E01
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_441E08

loc_441E01:
mov     eax, ebp
call    sub_4DEADD

loc_441E08:
test    byte ptr [ebp+0], 2
jz      short loc_441E21
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_441E21:
test    byte ptr [ebp+0], 1
jz      short loc_441E74
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_441E74
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
sub     word ptr [eax+0Eh], 28h ; '('
add     eax, 0Ch
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     ecx, [esp+1Ch+var_1C]
test    byte ptr [ecx], 20h
push    80h
push    offset unk_800000
push    4000000h
push    edx
xor     edx, edx
mov     dl, [ebp+1]
push    edx
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC

loc_441E74:
add     esp, 4
pop     ebp

def_441EE5:             ; jumptable 00441EE5 default case
pop     edi             ; jumptable 0044202D default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_441CFD endp



; Attributes: thunk

sub_441E7E proc near
jmp     sub_4DE2F6
sub_441E7E endp




sub_441E83 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
mov     bl, [eax+0Ah]
test    bl, bl
jbe     short loc_441E9A
cmp     bl, 1
jz      short loc_441EA6
pop     edx
pop     ebx
retn

loc_441E9A:
inc     bl
mov     [eax+0Ah], bl
mov     byte ptr [eax+0ACh], 0

loc_441EA6:
test    byte ptr [edx], 10h
jnz     short loc_441EB4
test    dword ptr [edx+14h], 0FFFFFFh
jz      short loc_441EB7

loc_441EB4:
or      byte ptr [edx], 1

loc_441EB7:
pop     edx
pop     ebx
retn
sub_441E83 endp

db 8Dh, 40h, 0
jpt_441EE5 dd offset loc_441EEC ; jump table for switch statement
dd offset loc_441F1A
dd offset loc_441F63
dd offset loc_441FDA



sub_441ECD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      short def_441EE5 ; jumptable 00441EE5 default case
; jumptable 0044202D default case
xor     edx, edx
mov     dl, al
jmp     jpt_441EE5[edx*4] ; switch jump

loc_441EEC:             ; jumptable 00441EE5 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 21h ; '!'
mov     word ptr [esi+44h], 0Dh
mov     word ptr [esi+46h], 0FFE8h
mov     byte ptr [esi+110h], 7
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0

loc_441F1A:             ; jumptable 00441EE5 case 1
mov     ax, [edi+4]
dec     eax
mov     [edi+4], ax
test    ax, ax
jl      short loc_441F53
cmp     ax, 2
jge     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case

loc_441F53:
mov     word ptr [edi+4], 7
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 22h ; '"'

loc_441F63:             ; jumptable 00441EE5 case 2
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
mov     eax, 4
sub     eax, ecx
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
test    ah, 0Fh
jz      short loc_441FB1
mov     word ptr [esi+44h], 0

loc_441FB1:
test    dh, 10h
jz      def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
cmp     word ptr [edi+4], 0
jg      def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
mov     word ptr [edi+4], 12h
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 23h ; '#'
jmp     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case

loc_441FDA:             ; jumptable 00441EE5 case 3
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
mov     byte ptr [esi+110h], 6
or      word ptr [edi], 109h
jmp     def_441EE5      ; jumptable 00441EE5 default case
sub_441ECD endp         ; jumptable 0044202D default case

jpt_44202D dd offset loc_442034 ; jump table for switch statement
dd offset loc_442062
dd offset loc_4420AB
dd offset loc_442122
dd offset loc_442144



sub_442011 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
xor     edx, edx
mov     dl, al
jmp     jpt_44202D[edx*4] ; switch jump

loc_442034:             ; jumptable 0044202D case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 25h ; '%'
mov     word ptr [esi+44h], 0FFF5h
mov     word ptr [esi+46h], 0FFE8h
mov     byte ptr [esi+110h], 7
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0

loc_442062:             ; jumptable 0044202D case 1
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jl      short loc_44209B
cmp     bx, 2
jge     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case

loc_44209B:
mov     word ptr [edi+4], 0Bh
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 26h ; '&'

loc_4420AB:             ; jumptable 0044202D case 2
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
mov     eax, 8
sub     eax, edx
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
test    ah, 0Fh
jz      short loc_4420F9
mov     word ptr [esi+44h], 0

loc_4420F9:
test    dh, 10h
jz      def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
cmp     word ptr [edi+4], 0
jg      def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
mov     word ptr [edi+4], 26h ; '&'
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 27h ; '''
jmp     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case

loc_442122:             ; jumptable 0044202D case 3
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
mov     word ptr [edi+4], 11h
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 28h ; '('

loc_442144:             ; jumptable 0044202D case 4
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     def_441EE5      ; jumptable 00441EE5 default case
; jumptable 0044202D default case
or      word ptr [edi], 109h
mov     byte ptr [esi+110h], 6
jmp     def_441EE5      ; jumptable 00441EE5 default case
sub_442011 endp         ; jumptable 0044202D default case

db 8Bh, 0C0h
jpt_44219C dd offset loc_4422A6 ; jump table for switch statement
dd offset loc_442300
dd offset loc_442300
dd offset loc_44239F
dd offset loc_4421A3



sub_44217D proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_44219C      ; jumptable 0044219C default case
xor     edx, edx
mov     dl, al
jmp     jpt_44219C[edx*4] ; switch jump

loc_4421A3:             ; jumptable 0044219C case 4
test    byte ptr [edi+17h], 20h
jnz     loc_442276
xor     eax, eax
mov     al, [esi+0Bh]
mov     al, ds:byte_514F24[eax]
and     eax, 0FFh
mov     edx, [edi+2]
sar     edx, 10h
cmp     edx, eax
jnz     loc_44225D
cmp     word ptr [edi+34h], 3
jge     loc_44225D
xor     edx, edx
jmp     short loc_44224A

loc_4421DA:
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
xor     ebx, ebx
mov     bl, [esi+0Bh]
mov     bl, ds:byte_514F28[edx+ebx*4]
and     ebx, 0FFh
mov     bx, [esi+ebx*8+190h]
mov     [eax+1Ch], bx
xor     ebx, ebx
mov     bl, [esi+0Bh]
mov     bl, ds:byte_514F28[edx+ebx*4]
and     ebx, 0FFh
imul    ecx, edx, 0Ch
mov     bx, [esi+ebx*8+192h]
sub     ebx, ecx
mov     [eax+1Eh], bx
xor     ebx, ebx
mov     bl, [esi+0Bh]
mov     bl, ds:byte_514F28[edx+ebx*4]
and     ebx, 0FFh
mov     bx, [esi+ebx*8+194h]
mov     [eax+20h], bx
inc     edx
cmp     edx, 4
jge     short loc_442253

loc_44224A:
call    sub_4DE13B
test    eax, eax
jnz     short loc_4421DA

loc_442253:
mov     al, [esi+0Bh]
inc     al
and     al, 3
mov     [esi+0Bh], al

loc_44225D:
mov     ax, [edi+4]
inc     eax
mov     [edi+4], ax
mov     edx, eax
xor     dh, ah
and     dl, 3Fh
mov     [edi+4], dx
jmp     def_44219C      ; jumptable 0044219C default case

loc_442276:
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+1Ch]
lea     eax, [esi+14h]
xor     ecx, ecx
call    sub_4DE726
mov     [esp+18h+var_18], eax
mov     edx, [esp+18h+var_18]
test    eax, 0FFFF0000h
jz      short loc_44229C
add     dh, 8
and     dh, 0Fh

loc_44229C:
mov     [esi+56h], dx
mov     word ptr [esi+0Ah], 0

loc_4422A6:             ; jumptable 0044219C case 0
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Bh], 0
mov     byte ptr [esi+0ACh], 4
mov     word ptr [esi+44h], 0FF00h
mov     word ptr [esi+46h], 300h
mov     byte ptr [esi+110h], 7
mov     bl, [edi]
or      bl, 20h
mov     [edi], bl
mov     bh, bl
and     bh, 0B3h
mov     [edi], bh
mov     word ptr [edi+8], 0
mov     word ptr [edi+4], 0
mov     word ptr [esi+44h], 100h
mov     word ptr [esi+46h], 0FD00h
mov     word ptr [esi+4Eh], 80h
lea     edx, [esi+14h]
mov     eax, 0A2h
call    sub_4D8BC3

loc_442300:             ; jumptable 0044219C cases 1,2
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     eax, esi
call    sub_42DE56
mov     [esp+18h+var_18], eax
test    eax, eax
jz      def_44219C      ; jumptable 0044219C default case
test    ah, 0Fh
jz      short loc_442342
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+56h], ax

loc_442342:
test    byte ptr [esp+18h+var_18+1], 10h
jz      def_44219C      ; jumptable 0044219C default case
mov     ch, [edi]
test    ch, 40h
jnz     short loc_442381
mov     al, ch
or      al, 40h
mov     [edi], al
test    al, 80h
jz      short loc_44237E
mov     cx, [edi+34h]
cmp     cx, 3
jge     short loc_44237E
mov     eax, ecx
inc     eax
mov     [edi+34h], ax
lea     edx, [esi+14h]
mov     ebx, 1
mov     eax, esi
call    sub_4AFA70

loc_44237E:
or      byte ptr [edi], 80h

loc_442381:
lea     edx, [esi+14h]
mov     eax, 0DAh
call    sub_4D8BC3
inc     byte ptr [esi+0Ah]
mov     word ptr [esi+44h], 60h ; '`'
mov     word ptr [esi+46h], 0FE00h
jmp     short def_44219C ; jumptable 0044219C default case

loc_44239F:             ; jumptable 0044219C case 3
mov     dl, [esi+0A4h]
test    dl, dl
jnz     short def_44219C ; jumptable 0044219C default case
inc     al
mov     [esi+0Ah], al
mov     [esi+0Bh], dl
mov     byte ptr [esi+0ACh], 5

def_44219C:             ; jumptable 0044219C default case
mov     word ptr [esi+15Eh], 190Ch
add     esp, 4
jmp     def_441EE5      ; jumptable 00441EE5 default case
sub_44217D endp         ; jumptable 0044202D default case




sub_4423C9 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
mov     ecx, offset byte_5F8364
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_4423F1
cmp     al, 1
jz      short loc_442408
jmp     loc_441E74

loc_4423F1:
mov     byte ptr [ebp+0Ah], 1
mov     word ptr [ebp+44h], 0C0h
mov     word ptr [ebp+66h], 18h
mov     byte ptr [ebp+0ACh], 9

loc_442408:
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [ecx+14h]
mov     ecx, 18h
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
test    dh, 0Fh
jnz     short loc_44247A
mov     edx, [ebp+14h]
sar     edx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
test    edx, edx
jge     short loc_442475
neg     eax

loc_442475:
cmp     eax, 10h
jle     short loc_44249A

loc_44247A:
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax

loc_44249A:
mov     eax, [esp+1Ch+var_1C]
test    word ptr [eax+2], 1FFh
jnz     loc_441E74
mov     byte ptr [ebp+9], 1
mov     word ptr [ebp+0Ah], 0
jmp     loc_441E74
sub_4423C9 endp




sub_4424B8 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     ebp, [eax+408h]
mov     eax, [ebp+14h]
and     eax, 0FFFFFFh
mov     [esp+1Ch+var_1C], eax
jz      loc_442650
test    byte ptr [ebp+17h], 38h
jz      loc_442643
mov     ax, [esi+6Eh]
mov     [esi+0B2h], ax
mov     eax, [esp+1Ch+var_1C]
mov     dx, [esi+6Eh]
sub     edx, eax
mov     [esi+6Eh], dx
test    dx, dx
jg      loc_4425A7
mov     word ptr [esi+0B2h], 0FFFFh
mov     ax, [esi+0B2h]
mov     [esi+6Eh], ax
and     byte ptr [ebp+0], 0F3h
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+19h]
and     eax, 0FFh
mov     [esp+1Ch+var_1C], eax
xor     ebx, ebx
jmp     short loc_442594

loc_44253A:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 3
movsx   edx, bx
xor     ecx, ecx
mov     cl, ds:byte_514F38[edx]
mov     cx, [esi+ecx*8+190h]
mov     [eax+1Ch], cx
xor     ecx, ecx
mov     cl, ds:byte_514F38[edx]
imul    edi, ebx, 0Ch
mov     cx, [esi+ecx*8+192h]
sub     ecx, edi
mov     [eax+1Eh], cx
mov     dl, ds:byte_514F38[edx]
and     edx, 0FFh
mov     dx, [esi+edx*8+194h]
mov     [eax+20h], dx
inc     ebx
cmp     bx, 4
jge     short loc_44259D

loc_442594:
call    sub_4DE13B
test    eax, eax
jnz     short loc_44253A

loc_44259D:
mov     byte ptr [esi+9], 3
mov     word ptr [esi+0Ah], 0

loc_4425A7:
test    byte ptr [ebp+0], 8
jz      loc_44262B
mov     eax, [esp+1Ch+var_1C]
add     [ebp+0Ah], ax
test    byte ptr [ebp+17h], 20h
jnz     short loc_4425E2
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
mov     al, [eax+19h]
and     eax, 0FFh
mov     edx, [ebp+8]
sar     edx, 10h
cmp     edx, eax
jl      short loc_442623

loc_4425E2:
lea     edi, [esi+14h]
mov     edx, edi
mov     eax, 0A2h
call    sub_4D8BC3
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ebp+1Ch]
xor     ecx, ecx
mov     eax, edi
call    sub_4DE726
mov     edx, eax
add     dh, 8
mov     [esi+56h], dx
test    eax, 0FFFF0000h
jz      short loc_442619
mov     byte ptr [esi+9], 1
jmp     short loc_44261D

loc_442619:
mov     byte ptr [esi+9], 2

loc_44261D:
mov     word ptr [ebp+0Ah], 0

loc_442623:
mov     word ptr [esi+0Ah], 0
jmp     short loc_442638

loc_44262B:
lea     edx, [esi+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_442638:
mov     word ptr [esi+15Eh], 7FFFh
jmp     short loc_442650

loc_442643:
lea     edx, [esi+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_442650:
mov     eax, 1
jmp     loc_441E74
sub_4424B8 endp




sub_44265A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
movzx   esi, byte ptr [eax+3]
lea     ebx, [eax+408h]
mov     edx, offset dword_560BDC
call    ds:funcs_442696[esi*4]
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_4426BE
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4426C5

loc_4426BE:
mov     eax, ecx
call    sub_4DEADD

loc_4426C5:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44265A endp




sub_4426CB proc near
push    ecx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 1
jb      short loc_4426DA
jbe     short loc_44271E
jmp     short loc_44272E

loc_4426DA:
test    al, al
jnz     short loc_44272E
or      byte ptr [esi], 2
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     word ptr [esi+15Eh], 4210h
mov     dword ptr [esi+78h], 0
mov     byte ptr [esi+0ACh], 19h
mov     byte ptr [esi+0ADh], 0FFh
jmp     short loc_44272B

loc_44271E:
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [edx+9], 5
jnz     short loc_44272E

loc_44272B:
inc     byte ptr [esi+8]

loc_44272E:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 28h ; '('
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     ecx
retn
sub_4426CB endp




sub_442744 proc near
push    ecx
push    esi
mov     esi, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_442755
cmp     al, 1
jz      short loc_442798
jmp     short loc_44272E

loc_442755:
or      byte ptr [esi], 2
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     word ptr [esi+15Eh], 4210h
mov     dword ptr [esi+78h], 0
mov     byte ptr [esi+0ACh], 9
mov     byte ptr [esi+0ADh], 0FFh
inc     byte ptr [esi+8]
jmp     short loc_44272E

loc_442798:
cmp     byte ptr [edx+9], 5
jnz     short loc_44272E
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
mov     eax, esi
call    sub_4DD43B
jmp     loc_44272E
sub_442744 endp




sub_4427B3 proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     ecx, ebx
movzx   edi, byte ptr [eax+8]
call    ds:funcs_4427BE[edi*4]
cmp     word ptr [ecx+2], 0
jz      short loc_4427DF
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 28h ; '('
mov     eax, esi
call    sub_4ED88B

loc_4427DF:
pop     edi
pop     esi
pop     ecx
retn
sub_4427B3 endp




sub_4427E3 proc near
push    ecx
mov     ecx, eax
mov     al, [eax+9]
test    al, al
jbe     short loc_4427F3
cmp     al, 1
jz      short loc_44283C
pop     ecx
retn

loc_4427F3:
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 10h
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0
inc     byte ptr [ecx+9]
pop     ecx
retn

loc_44283C:
cmp     byte ptr [edx+6], 4
jnz     short loc_442849
add     [ecx+8], al
mov     byte ptr [ecx+9], 0

loc_442849:
pop     ecx
retn
sub_4427E3 endp

db 8Dh, 40h, 0
jpt_44288C dd offset loc_442893 ; jump table for switch statement
dd offset loc_4428A2
dd offset loc_4428C6
dd offset loc_4428D5
dd offset loc_4428F8
dd offset loc_442925
dd offset loc_442934
dd offset loc_442945
dd offset loc_442954
dd offset loc_44296C



sub_442876 proc near
push    ecx
push    esi
mov     esi, ebx
mov     dl, [eax+9]
cmp     dl, 9           ; switch 10 cases
ja      def_44288C      ; jumptable 0044288C default case
and     edx, 0FFh
jmp     jpt_44288C[edx*4] ; switch jump

loc_442893:             ; jumptable 0044288C case 0
mov     byte ptr [eax+0ACh], 2
mov     word ptr [ebx], 0
inc     byte ptr [eax+9]

loc_4428A2:             ; jumptable 0044288C case 1
cmp     word ptr [esi], 6
jge     short loc_4428B2
add     word ptr [eax+56h], 20h ; ' '
inc     word ptr [esi]
jmp     short loc_4428B5

loc_4428B2:
inc     byte ptr [eax+9]

loc_4428B5:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
call    sub_4DD43B
pop     esi
pop     ecx
retn

loc_4428C6:             ; jumptable 0044288C case 2
mov     byte ptr [eax+0ACh], 7
mov     word ptr [ebx], 0
inc     byte ptr [eax+9]

loc_4428D5:             ; jumptable 0044288C case 3
cmp     word ptr [esi], 8
jge     short loc_4428F2

loc_4428DB:
xor     ecx, ecx
mov     ebx, 40h ; '@'
mov     edx, 30h ; '0'

loc_4428E7:
call    sub_4DD43B
inc     word ptr [esi]
pop     esi
pop     ecx
retn

loc_4428F2:
inc     byte ptr [eax+9]
pop     esi
pop     ecx
retn

loc_4428F8:             ; jumptable 0044288C case 4
mov     byte ptr [eax+0ACh], 8
mov     word ptr [eax+16h], 0FFCCh
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     def_44288C      ; jumptable 0044288C default case
jmp     short loc_4428F2

loc_442925:             ; jumptable 0044288C case 5
mov     byte ptr [eax+0ACh], 2
mov     word ptr [ebx], 0
inc     byte ptr [eax+9]

loc_442934:             ; jumptable 0044288C case 6
cmp     word ptr [esi], 14h
jge     short loc_4428F2
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
jmp     short loc_4428E7

loc_442945:             ; jumptable 0044288C case 7
mov     byte ptr [eax+0ACh], 7
mov     word ptr [ebx], 0
inc     byte ptr [eax+9]

loc_442954:             ; jumptable 0044288C case 8
cmp     word ptr [esi], 5
jnz     short loc_442960
mov     word ptr [esi+2], 1

loc_442960:
cmp     word ptr [esi], 0Dh
jl      loc_4428DB
jmp     short loc_4428F2

loc_44296C:             ; jumptable 0044288C case 9
mov     byte ptr [eax+0ACh], 8
mov     word ptr [eax+16h], 0FFFFh
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_44288C ; jumptable 0044288C default case
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0

def_44288C:             ; jumptable 0044288C default case
pop     esi
pop     ecx
retn
sub_442876 endp

align 2
jpt_4429C2 dd offset loc_4429C9 ; jump table for switch statement
dd offset loc_4429D8
dd offset loc_4429F8
dd offset loc_442A07



sub_4429AE proc near
push    ecx
push    esi
mov     esi, ebx
mov     bl, [eax+9]
cmp     bl, 3           ; switch 4 cases
ja      def_4429C2      ; jumptable 004429C2 default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_4429C2[ecx*4] ; switch jump

loc_4429C9:             ; jumptable 004429C2 case 0
mov     byte ptr [eax+0ACh], 2
mov     word ptr [esi], 0
inc     byte ptr [eax+9]

loc_4429D8:             ; jumptable 004429C2 case 1
cmp     word ptr [esi], 0Ch
jge     short loc_4429F2
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h

loc_4429E7:
call    sub_4DD43B
inc     word ptr [esi]
pop     esi
pop     ecx
retn

loc_4429F2:
inc     byte ptr [eax+9]
pop     esi
pop     ecx
retn

loc_4429F8:             ; jumptable 004429C2 case 2
mov     byte ptr [eax+0ACh], 1
mov     word ptr [esi], 0
inc     byte ptr [eax+9]

loc_442A07:             ; jumptable 004429C2 case 3
cmp     word ptr [esi], 6
jge     short loc_442A1E
sub     word ptr [eax+56h], 80h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'
jmp     short loc_4429E7

loc_442A1E:
mov     byte ptr [edx+7], 1
mov     word ptr [esi], 0
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0

def_4429C2:             ; jumptable 004429C2 default case
pop     esi
pop     ecx
retn
sub_4429AE endp




sub_442A31 proc near
push    ecx
mov     dl, [eax+9]
test    dl, dl
jbe     short loc_442A40
cmp     dl, 1
jz      short loc_442A51
pop     ecx
retn

loc_442A40:
mov     byte ptr [eax+0ACh], 12h
mov     byte ptr [eax+110h], 8
inc     byte ptr [eax+9]

loc_442A51:
mov     dx, [ebx]
cmp     dx, 39h ; '9'
jge     short loc_442A62
mov     ecx, edx
inc     ecx
mov     [ebx], cx
pop     ecx
retn

loc_442A62:
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0
pop     ecx
retn
sub_442A31 endp




sub_442A6B proc near
push    ecx
push    esi
mov     esi, ebx
mov     bl, [eax+9]
cmp     bl, 1
jb      short loc_442A81
jbe     short loc_442A94
cmp     bl, 2
jz      short loc_442ABE
pop     esi
pop     ecx
retn

loc_442A81:
test    bl, bl
jnz     short loc_442ADC
mov     word ptr [esi], 0
mov     byte ptr [eax+0ACh], 13h
inc     byte ptr [eax+9]

loc_442A94:
cmp     word ptr [esi], 3
jge     short loc_442AB4
add     word ptr [eax+56h], 0C0h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFD0h
call    sub_4DD43B
inc     word ptr [esi]
pop     esi
pop     ecx
retn

loc_442AB4:
mov     byte ptr [edx+7], 2
inc     byte ptr [eax+9]
pop     esi
pop     ecx
retn

loc_442ABE:
cmp     byte ptr [edx+7], 3
jnz     short loc_442ACE
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0
pop     esi
pop     ecx
retn

loc_442ACE:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFC9h
call    sub_4DD43B

loc_442ADC:
pop     esi
pop     ecx
retn
sub_442A6B endp

db 8Dh, 40h, 0
jpt_442B24 dd offset loc_442B2B ; jump table for switch statement
dd offset loc_442B3A
dd offset loc_442B63
dd offset loc_442B88
dd offset loc_442BA2
dd offset loc_442BB0
dd offset loc_442C12
dd offset loc_442C21
dd offset loc_442C3E
dd offset loc_442C4D
dd offset loc_442C62



sub_442B0E proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     edi, ebx
mov     al, [eax+9]
cmp     al, 0Ah         ; switch 11 cases
ja      def_442B24      ; jumptable 00442B24 default case
xor     edx, edx
mov     dl, al
jmp     jpt_442B24[edx*4] ; switch jump

loc_442B2B:             ; jumptable 00442B24 case 0
mov     word ptr [ebx], 0
mov     byte ptr [esi+0ACh], 1
inc     byte ptr [esi+9]

loc_442B3A:             ; jumptable 00442B24 case 1
cmp     word ptr [edi], 0Fh
jge     short loc_442B57
mov     ecx, 0FFFFFFD0h
xor     ebx, ebx
mov     edx, ecx

loc_442B49:
mov     eax, esi
call    sub_4DD43B

loc_442B50:
inc     word ptr [edi]
pop     edi
pop     esi
pop     ecx
retn

loc_442B57:
mov     word ptr [edi], 0

loc_442B5C:
inc     byte ptr [esi+9]
pop     edi
pop     esi
pop     ecx
retn

loc_442B63:             ; jumptable 00442B24 case 2
cmp     word ptr [ebx], 0Ch
jge     short loc_442B7A
sub     word ptr [esi+56h], 80h
mov     bx, [ebx]
inc     ebx
mov     [edi], bx
pop     edi
pop     esi
pop     ecx
retn

loc_442B7A:
mov     word ptr [ebx], 0
mov     byte ptr [esi+110h], 6
jmp     short loc_442B5C

loc_442B88:             ; jumptable 00442B24 case 3
cmp     word ptr [ebx], 4
jge     short loc_442B99
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'
jmp     short loc_442B49

loc_442B99:
inc     al
mov     [esi+9], al
pop     edi
pop     esi
pop     ecx
retn

loc_442BA2:             ; jumptable 00442B24 case 4
mov     word ptr [ebx], 0
mov     byte ptr [esi+0ACh], 15h
jmp     short loc_442B5C

loc_442BB0:             ; jumptable 00442B24 case 5
cmp     byte ptr [esi+0A4h], 12h
jnz     short loc_442BBF
mov     word ptr [edi+2], 0

loc_442BBF:
mov     cl, [esi+0A4h]
cmp     cl, 0Ah
jb      short loc_442BE4
cmp     cl, 1Bh
jnb     short loc_442BE4
xor     ecx, ecx
mov     ebx, 0FFFFFFD0h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4DD43B
jmp     short loc_442BFF

loc_442BE4:
cmp     byte ptr [esi+0A4h], 1Bh
jnz     short loc_442BFF
mov     word ptr [esi+16h], 0FFCCh
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx

loc_442BFF:
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_442B24 ; jumptable 00442B24 default case
jmp     loc_442B5C

loc_442C12:             ; jumptable 00442B24 case 6
mov     word ptr [ebx], 0
mov     byte ptr [esi+0ACh], 1
inc     byte ptr [esi+9]

loc_442C21:             ; jumptable 00442B24 case 7
cmp     word ptr [edi], 20h ; ' '
jge     loc_442B5C
sub     word ptr [esi+56h], 20h ; ' '
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 38h ; '8'
jmp     loc_442B49

loc_442C3E:             ; jumptable 00442B24 case 8
mov     word ptr [ebx], 0
mov     byte ptr [esi+0ACh], 1
inc     byte ptr [esi+9]

loc_442C4D:             ; jumptable 00442B24 case 9
cmp     word ptr [edi], 4
jge     loc_442B5C
sub     word ptr [esi+56h], 100h
jmp     loc_442B50

loc_442C62:             ; jumptable 00442B24 case 10
mov     byte ptr [esi+0ACh], 16h

def_442B24:             ; jumptable 00442B24 default case
pop     edi
pop     esi
pop     ecx
retn
sub_442B0E endp




sub_442C6D proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     ecx, ebx
movzx   edi, byte ptr [eax+8]
call    ds:funcs_442C78[edi*4]
cmp     word ptr [ecx+2], 0
jz      short loc_442C99
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 28h ; '('
mov     eax, esi
call    sub_4ED88B

loc_442C99:
pop     edi
pop     esi
pop     ecx
retn
sub_442C6D endp

align 2
jpt_442CC1 dd offset loc_442CC8 ; jump table for switch statement
dd offset loc_442D18
dd offset loc_442D26
dd offset loc_442D47



sub_442CAE proc near
push    ecx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_442CC1      ; jumptable 00442CC1 default case
and     eax, 0FFh
jmp     jpt_442CC1[eax*4] ; switch jump

loc_442CC8:             ; jumptable 00442CC1 case 0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 9
mov     byte ptr [ecx+0ADh], 0FFh
mov     byte ptr [ecx+110h], 7
mov     word ptr [ebx+2], 0

loc_442D13:
inc     byte ptr [ecx+9]
pop     ecx
retn

loc_442D18:             ; jumptable 00442CC1 case 1
add     word ptr [ecx+56h], 80h
cmp     byte ptr [edx+6], 3
jnz     short def_442CC1 ; jumptable 00442CC1 default case
jmp     short loc_442D13

loc_442D26:             ; jumptable 00442CC1 case 2
mov     dx, [ecx+56h]
add     edx, 80h
mov     [ecx+56h], dx
mov     eax, edx
and     ah, 0Fh
cmp     ax, 0C00h
jle     short def_442CC1 ; jumptable 00442CC1 default case
mov     word ptr [ecx+56h], 0C00h
jmp     short loc_442D13

loc_442D47:             ; jumptable 00442CC1 case 3
cmp     byte ptr [edx+6], 4
jnz     short def_442CC1 ; jumptable 00442CC1 default case
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

def_442CC1:             ; jumptable 00442CC1 default case
pop     ecx
retn
sub_442CAE endp

jpt_442D94 dd offset loc_442D9B ; jump table for switch statement
dd offset loc_442DAA
dd offset loc_442DCF
dd offset loc_442DDE
dd offset loc_442E01
dd offset loc_442E2E
dd offset loc_442E3D
dd offset loc_442E54
dd offset loc_442E63
dd offset loc_442E7B



sub_442D7E proc near
push    ecx
push    esi
mov     esi, ebx
mov     dl, [eax+9]
cmp     dl, 9           ; switch 10 cases
ja      def_442D94      ; jumptable 00442D94 default case
and     edx, 0FFh
jmp     jpt_442D94[edx*4] ; switch jump

loc_442D9B:             ; jumptable 00442D94 case 0
mov     word ptr [ebx], 0
mov     byte ptr [eax+0ACh], 9
inc     byte ptr [eax+9]

loc_442DAA:             ; jumptable 00442D94 case 1
mov     dx, [esi]
cmp     dx, 0Ch
jge     short loc_442DBB
mov     ebx, edx
inc     ebx
mov     [esi], bx
jmp     short loc_442DBE

loc_442DBB:
inc     byte ptr [eax+9]

loc_442DBE:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
call    sub_4DD43B
pop     esi
pop     ecx
retn

loc_442DCF:             ; jumptable 00442D94 case 2
mov     byte ptr [eax+0ACh], 7
mov     word ptr [ebx], 0
inc     byte ptr [eax+9]

loc_442DDE:             ; jumptable 00442D94 case 3
cmp     word ptr [esi], 8
jge     short loc_442DFB

loc_442DE4:
xor     ecx, ecx
mov     ebx, 40h ; '@'
mov     edx, 30h ; '0'
call    sub_4DD43B
inc     word ptr [esi]
pop     esi
pop     ecx
retn

loc_442DFB:
inc     byte ptr [eax+9]
pop     esi
pop     ecx
retn

loc_442E01:             ; jumptable 00442D94 case 4
mov     byte ptr [eax+0ACh], 8
mov     word ptr [eax+16h], 0FFCCh
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     def_442D94      ; jumptable 00442D94 default case
jmp     short loc_442DFB

loc_442E2E:             ; jumptable 00442D94 case 5
mov     byte ptr [eax+0ACh], 9
mov     word ptr [ebx], 0
inc     byte ptr [eax+9]

loc_442E3D:             ; jumptable 00442D94 case 6
cmp     word ptr [esi], 18h
jge     loc_442DBB
add     word ptr [eax+56h], 8
inc     word ptr [esi]
jmp     loc_442DBE

loc_442E54:             ; jumptable 00442D94 case 7
mov     byte ptr [eax+0ACh], 7
mov     word ptr [ebx], 0
inc     byte ptr [eax+9]

loc_442E63:             ; jumptable 00442D94 case 8
cmp     word ptr [esi], 5
jnz     short loc_442E6F
mov     word ptr [esi+2], 1

loc_442E6F:
cmp     word ptr [esi], 0Dh
jl      loc_442DE4
jmp     short loc_442DFB

loc_442E7B:             ; jumptable 00442D94 case 9
mov     byte ptr [eax+0ACh], 8
mov     word ptr [eax+16h], 0FFFFh
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_442D94 ; jumptable 00442D94 default case
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0

def_442D94:             ; jumptable 00442D94 default case
pop     esi
pop     ecx
retn
sub_442D7E endp

db 8Bh, 0C0h
jpt_442EEA dd offset loc_442EF1 ; jump table for switch statement
dd offset loc_442F00
dd offset loc_442F21
dd offset loc_442F33
dd offset loc_442F57
dd offset loc_442F69
dd offset loc_442F79
dd offset loc_442F89
dd offset loc_442F98
dd offset loc_442FA9



sub_442ED6 proc near
push    ecx
push    esi
mov     edx, ebx
mov     bl, [eax+9]
cmp     bl, 9           ; switch 10 cases
ja      def_442EEA      ; jumptable 00442EEA default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_442EEA[ecx*4] ; switch jump

loc_442EF1:             ; jumptable 00442EEA case 0
mov     byte ptr [eax+0ACh], 9
mov     word ptr [edx], 0
inc     byte ptr [eax+9]

loc_442F00:             ; jumptable 00442EEA case 1
cmp     word ptr [edx], 4
jge     short loc_442F10
add     word ptr [eax+56h], 8
inc     word ptr [edx]
jmp     short loc_442F13

loc_442F10:
inc     byte ptr [eax+9]

loc_442F13:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
jmp     loc_442FCA

loc_442F21:             ; jumptable 00442EEA case 2
mov     byte ptr [eax+0ACh], 5

loc_442F28:
mov     word ptr [edx], 0
inc     byte ptr [eax+9]
pop     esi
pop     ecx
retn

loc_442F33:             ; jumptable 00442EEA case 3
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jz      short loc_442F4F
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'
jmp     loc_442FCA

loc_442F4F:
inc     bl
mov     [eax+9], bl
pop     esi
pop     ecx
retn

loc_442F57:             ; jumptable 00442EEA case 4
mov     cx, [edx]
cmp     cx, 32h ; '2'
jge     short loc_442F4F
mov     esi, ecx
inc     esi
mov     [edx], si
pop     esi
pop     ecx
retn

loc_442F69:             ; jumptable 00442EEA case 5
mov     byte ptr [eax+0ACh], 23h ; '#'
mov     byte ptr [eax+110h], 8
jmp     short loc_442F28

loc_442F79:             ; jumptable 00442EEA case 6
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_442EEA ; jumptable 00442EEA default case
jmp     short loc_442F4F

loc_442F89:             ; jumptable 00442EEA case 7
mov     byte ptr [eax+0ACh], 14h
mov     word ptr [edx], 0
inc     byte ptr [eax+9]

loc_442F98:             ; jumptable 00442EEA case 8
cmp     word ptr [edx], 10h
jge     short loc_442F28
add     word ptr [eax+56h], 72h ; 'r'
inc     word ptr [edx]
pop     esi
pop     ecx
retn

loc_442FA9:             ; jumptable 00442EEA case 9
mov     bx, [edx]
cmp     bx, 2Eh ; '.'
jge     short loc_442FBA
mov     ecx, ebx
inc     ecx
mov     [edx], cx
jmp     short loc_442FC1

loc_442FBA:
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0

loc_442FC1:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 30h ; '0'

loc_442FCA:
call    sub_4DD43B

def_442EEA:             ; jumptable 00442EEA default case
pop     esi
pop     ecx
retn
sub_442ED6 endp

jpt_443003 dd offset loc_44300A ; jump table for switch statement
dd offset loc_44301D
dd offset loc_443080
dd offset loc_44308F
dd offset loc_4430C1
dd offset loc_4430E5



sub_442FEA proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     eax, ebx
mov     dl, [esi+9]
cmp     dl, 5           ; switch 6 cases
ja      def_443003      ; jumptable 00443003 default case
and     edx, 0FFh
jmp     jpt_443003[edx*4] ; switch jump

loc_44300A:             ; jumptable 00443003 case 0
mov     word ptr [ebx], 0
mov     byte ptr [esi+0ACh], 15h

loc_443016:
inc     byte ptr [esi+9]
pop     edi
pop     esi
pop     ecx
retn

loc_44301D:             ; jumptable 00443003 case 1
cmp     byte ptr [esi+0A4h], 12h
jnz     short loc_44302C
mov     word ptr [eax+2], 0

loc_44302C:
mov     bh, [esi+0A4h]
cmp     bh, 0Ah
jb      short loc_443051
cmp     bh, 1Bh
jnb     short loc_443051
xor     ecx, ecx
mov     ebx, 0FFFFFFD0h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4DD43B
jmp     short loc_44306C

loc_443051:
cmp     byte ptr [esi+0A4h], 1Bh
jnz     short loc_44306C
mov     word ptr [esi+16h], 0FFCCh
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax

loc_44306C:
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_443003      ; jumptable 00443003 default case
jmp     short loc_443016

loc_443080:             ; jumptable 00443003 case 2
mov     byte ptr [esi+0ACh], 14h
mov     word ptr [ebx], 0
inc     byte ptr [esi+9]

loc_44308F:             ; jumptable 00443003 case 3
mov     cx, [eax]
cmp     cx, 10h
jge     short loc_4430A0
mov     edi, ecx
inc     edi
mov     [eax], di
jmp     short loc_4430A8

loc_4430A0:
mov     word ptr [eax], 0
inc     byte ptr [esi+9]

loc_4430A8:
sub     word ptr [esi+56h], 38h ; '8'
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 10h

loc_4430B6:
mov     eax, esi
call    sub_4DD43B
pop     edi
pop     esi
pop     ecx
retn

loc_4430C1:             ; jumptable 00443003 case 4
mov     dx, [ebx]
cmp     dx, 0Ah
jge     short loc_4430D2
mov     ebx, edx
inc     ebx
mov     [eax], bx
jmp     short loc_4430DA

loc_4430D2:
mov     word ptr [ebx], 0
inc     byte ptr [esi+9]

loc_4430DA:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'
jmp     short loc_4430B6

loc_4430E5:             ; jumptable 00443003 case 5
mov     word ptr [esi+56h], 0C00h
mov     byte ptr [esi+0ACh], 17h

def_443003:             ; jumptable 00443003 default case
pop     edi
pop     esi
pop     ecx
retn
sub_442FEA endp




sub_4430F6 proc near
push    edx
push    esi
push    edi
lea     edi, [eax+2Ch]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [eax+34h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+5Ch]
lea     esi, [eax+54h]
movsd
movsd
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_443118[edx*4]
pop     edi
pop     esi
pop     edx
retn
sub_4430F6 endp




sub_443123 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_4431A8
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+0Ch], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
add     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
jmp     short loc_4431C4

loc_4431A8:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4431BD
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

loc_4431BD:
mov     eax, ecx
call    sub_4DEADD

loc_4431C4:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_443123 endp

jpt_4431EA dd offset loc_4431F1 ; jump table for switch statement
dd offset loc_443206
dd offset loc_44321B
dd offset loc_443224



sub_4431DA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      short def_4431EA ; jumptable 004431EA default case
xor     edx, edx
mov     dl, al
jmp     jpt_4431EA[edx*4] ; switch jump

loc_4431F1:             ; jumptable 004431EA case 0
xor     ebx, ebx
mov     edx, 0Dh

loc_4431F8:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_443206:             ; jumptable 004431EA case 1
mov     edx, [ecx+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_44323C
inc     al
mov     [ecx+9], al
jmp     short loc_44323C

loc_44321B:             ; jumptable 004431EA case 2
xor     ebx, ebx
mov     edx, 2Ah ; '*'
jmp     short loc_4431F8

loc_443224:             ; jumptable 004431EA case 3
mov     ah, [ecx+0Ch]
inc     ah
mov     [ecx+0Ch], ah
cmp     ah, 20h ; ' '
jnz     short loc_44323C
mov     byte ptr [ecx+0Ch], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

loc_44323C:
mov     eax, ecx
call    sub_4DEADD

def_4431EA:             ; jumptable 004431EA default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4431DA endp




sub_443247 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_44325D
jbe     short loc_443292
cmp     al, 2
jz      short loc_4432A2
pop     edx
pop     ecx
pop     ebx
retn

loc_44325D:
test    al, al
jnz     short loc_4432BE
mov     ebx, 7
mov     edx, 2Ah ; '*'
mov     eax, ecx
call    sub_4DE96B
mov     dl, [ecx+0Ch]
inc     dl
mov     [ecx+0Ch], dl
cmp     dl, 3
jnz     short loc_443285
mov     byte ptr ds:dword_560BE0+3, dl

loc_443285:
cmp     byte ptr [ecx+0Ch], 0Fh
jnz     short loc_4432BE

loc_44328B:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_443292:
xor     ebx, ebx
mov     edx, 0Eh
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_44328B

loc_4432A2:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4432B7
mov     eax, ecx
call    sub_4DE2F6

loc_4432B7:
mov     eax, ecx
call    sub_4DEADD

loc_4432BE:
pop     edx
pop     ecx
pop     ebx
retn
sub_443247 endp




sub_4432C2 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_4432D8
mov     eax, edx
call    sub_443306
inc     byte ptr [edx+8]

loc_4432D8:
lea     edi, [edx+2Ch]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [edx+34h]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [edx+5Ch]
lea     esi, [edx+54h]
movsd
movsd
mov     ecx, [edx+9]
sar     ecx, 18h
mov     eax, edx
call    ds:funcs_4432FA[ecx*4]
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4432C2 endp




sub_443306 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
cmp     byte ptr [ecx+0Eh], 1
jnz     short loc_443342
mov     dword ptr [ecx+158h], 4000400h
mov     dword ptr [ecx+15Ch], 400h
jmp     short loc_443356

loc_443342:
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h

loc_443356:
cmp     byte ptr [ecx+0Fh], 1
jnz     short loc_443367
mov     word ptr [ecx+15Eh], 318Ch
jmp     short loc_443370

loc_443367:
mov     word ptr [ecx+15Eh], 4210h

loc_443370:
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
add     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
retn
sub_443306 endp




sub_443395 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_4433B6
mov     edx, [ecx+0Ah]
sar     edx, 18h
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4433B6:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_443395 endp




sub_4433C1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_4433E1
mov     edx, [esi+0Ah]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]
jmp     short loc_4433E8

loc_4433E1:
mov     eax, esi
call    sub_4DEADD

loc_4433E8:
xor     ecx, ecx
mov     ebx, 200h
cmp     word ptr [esi+158h], 400h
jnz     loc_443476
jmp     loc_4434E1
sub_4433C1 endp




sub_443403 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, ds:dword_560BEC
cmp     edx, 14h
jge     short loc_443422
sub     word ptr [eax+18h], 3
sub     dword ptr [eax+24h], 39581h
jmp     short loc_443453

loc_443422:
cmp     edx, 28h ; '('
jge     short loc_443453
inc     word ptr [eax+14h]
dec     word ptr [eax+18h]
add     dword ptr [eax+1Ch], 19581h
sub     dword ptr [eax+24h], 19581h
jmp     short loc_443453
sub_443403 endp




sub_44343F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h

loc_44344E:
call    sub_4DD43B

loc_443453:
cmp     byte ptr [esi+9], 0
jnz     loc_443553
mov     edx, [esi+0Ah]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]

loc_44346F:
xor     ecx, ecx
mov     ebx, 200h

loc_443476:
mov     edx, 28h ; '('

loc_44347B:
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44343F endp




sub_443487 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, ds:dword_560BEC
cmp     edx, 14h
jge     short loc_4434B2
sub     word ptr [eax+18h], 3
sub     dword ptr [eax+24h], 39581h
sub     word ptr [eax+14h], 3
sub     dword ptr [eax+1Ch], 39581h
jmp     short loc_4434C2

loc_4434B2:
cmp     edx, 28h ; '('
jge     short loc_4434C2
dec     word ptr [eax+18h]
sub     dword ptr [eax+24h], 19581h

loc_4434C2:
cmp     byte ptr [esi+9], 0
jnz     short loc_4434E8
mov     edx, [esi+0Ah]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]

loc_4434DA:
xor     ecx, ecx
mov     ebx, 200h

loc_4434E1:
mov     edx, 50h ; 'P'
jmp     short loc_44347B

loc_4434E8:
mov     eax, esi
call    sub_4DEADD
jmp     short loc_4434DA
sub_443487 endp




sub_4434F1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     ds:dword_560BEC, 4Bh ; 'K'
jle     short loc_4434C2
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
call    sub_4DD43B
jmp     short loc_4434C2
sub_4434F1 endp




sub_443510 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_443533
mov     edx, [esi+0Ah]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]
jmp     loc_44346F

loc_443533:
mov     edx, ds:dword_560BEC
cmp     edx, 50h ; 'P'
jle     short loc_443553
cmp     edx, 7Dh ; '}'
jge     short loc_44355F
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
mov     eax, esi
call    sub_4DD43B

loc_443553:
mov     eax, esi
call    sub_4DEADD
jmp     loc_44346F

loc_44355F:
cmp     edx, 8Bh
jge     short loc_443553
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
mov     eax, esi
call    sub_4DD43B
cmp     ds:dword_560BEC, 7Dh ; '}'
jnz     short loc_443553
xor     ebx, ebx
mov     edx, 13h
mov     eax, esi
call    sub_4DE96B
jmp     loc_44346F
sub_443510 endp




sub_443593 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'
jmp     loc_44344E
sub_443593 endp




sub_4435A7 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4435AD[edx*4]
pop     edx
retn
sub_4435A7 endp




sub_4435B6 proc near

var_28= byte ptr -28h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
lea     ecx, [eax+438h]
mov     ah, [eax]
or      ah, 2
mov     [ebp+0], ah
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     word ptr [ecx], 0
mov     dword ptr [ecx+4], 0
mov     edi, esp
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    0
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ecx+0Ch]
mov     ecx, 100h
lea     edx, [esp+30h+var_28]
call    sub_4DD4C5
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], offset unk_515000
mov     dword ptr [ebp+10h], 0
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_443697
add     esp, 10h

loc_443690:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4435B6 endp




sub_443697 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+438h]
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+5Ch]
lea     esi, [ebp+54h]
movsd
movsd
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     [edx+2], ax
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4436E4[ecx*4]
test    byte ptr [edx], 1
jz      short loc_4436FD
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_4436FD:
mov     al, [ebp+0ADh]
mov     bh, [ebp+0ACh]
cmp     al, bh
jz      short loc_44371C
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_443723

loc_44371C:
mov     eax, ebp
call    sub_4DEADD

loc_443723:
test    byte ptr [ebp+0], 2
jz      loc_443690
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
jmp     loc_443690
sub_443697 endp



; Attributes: thunk

sub_443745 proc near
jmp     sub_4DE2F6
sub_443745 endp




sub_44374A proc near
push    ebx
push    edx
push    esi
lea     edx, [eax+438h]
mov     bl, [eax+0Ah]
cmp     bl, 1
jb      short loc_443766
jbe     short loc_443787
cmp     bl, 2
jz      short loc_4437A9
pop     esi
pop     edx
pop     ebx
retn

loc_443766:
test    bl, bl
jnz     short loc_4437D1
inc     bl
mov     [eax+0Ah], bl
mov     byte ptr [eax+0ACh], 0
mov     byte ptr [eax+110h], 9
mov     word ptr [edx+4], 0Ah
pop     esi
pop     edx
pop     ebx
retn

loc_443787:
mov     si, [edx+4]
dec     esi
mov     [edx+4], si
test    si, si
jge     short loc_4437D1
mov     byte ptr [eax+110h], 0Ah
mov     word ptr [edx+4], 5
inc     byte ptr [eax+0Ah]
pop     esi
pop     edx
pop     ebx
retn

loc_4437A9:
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     short loc_4437D1
mov     byte ptr [eax+110h], 9
mov     bx, [edx+2]
xor     bh, bh
and     bl, 3Fh
add     ebx, 10h
mov     [edx+4], bx
dec     byte ptr [eax+0Ah]

loc_4437D1:
pop     esi
pop     edx
pop     ebx
retn
sub_44374A endp




sub_4437D5 proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_4437E2
jbe     short loc_4437FB
pop     edx
retn

loc_4437E2:
test    dl, dl
jnz     short loc_443815
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 13h
mov     byte ptr [eax+110h], 0Ah
pop     edx
retn

loc_4437FB:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_443815
mov     byte ptr [eax+0ACh], 0
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+110h], 9

loc_443815:
pop     edx
retn
sub_4437D5 endp




sub_443817 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_443842
inc     al
mov     [ecx+0Ah], al
mov     byte ptr [ecx+0ACh], 21h ; '!'
lea     edx, [ecx+14h]
mov     eax, 0DAh
call    sub_4D8BC3
mov     byte ptr [ecx+110h], 7

loc_443842:
pop     edx
pop     ecx
retn
sub_443817 endp




sub_443845 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 438h
mov     dl, [esi+0Ah]
cmp     dl, 1
jb      short loc_44385F
jbe     short loc_44389C
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44385F:
test    dl, dl
jnz     loc_443991
inc     dl
mov     [esi+0Ah], dl
mov     byte ptr [esi+0ACh], 2
mov     word ptr [esi+44h], 80h
xor     edx, edx
mov     dl, [esi+3]
mov     dx, ds:word_515012[edx*8]
mov     [esi+64h], dx
mov     byte ptr [esi+110h], 9
mov     word ptr [eax+4], 0Ah
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44389C:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4438D9
cmp     byte ptr [esi+110h], 9
jnz     short loc_4438C2
mov     byte ptr [esi+110h], 0Ah
mov     word ptr [eax+4], 5
jmp     short loc_4438D9

loc_4438C2:
mov     byte ptr [esi+110h], 9
mov     dx, [eax+2]
xor     dh, dh
and     dl, 1Fh
add     edx, 10h
mov     [eax+4], dx

loc_4438D9:
cmp     byte ptr [esi+0A6h], 0
jz      short loc_4438EF
lea     edx, [esi+14h]
mov     eax, 0D7h
call    sub_4D8BC3

loc_4438EF:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
xor     eax, eax
mov     al, [esi+3]
shl     eax, 3
mov     edx, (offset dword_51500A+2)
add     edx, eax
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
xor     eax, eax
mov     al, [esi+3]
mov     edx, ds:dword_51500A[eax*8]
sar     edx, 10h
mov     ecx, [esi+12h]
sar     ecx, 10h
sub     ecx, edx
mov     edx, ecx
mov     eax, ds:dword_51500E[eax*8]
sar     eax, 10h
mov     ecx, [esi+16h]
sar     ecx, 10h
sub     ecx, eax
mov     eax, ecx
imul    edx, edx
imul    eax, ecx
add     eax, edx
cmp     eax, 800h
jge     short loc_443991
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0
mov     word ptr [esi+44h], 0
xor     eax, eax
mov     al, [esi+3]
add     eax, 61Ah
call    sub_47E8B8

loc_443991:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_443845 endp




sub_443996 proc near
push    ecx
push    edx
lea     edx, [eax+3D8h]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4439A3[ecx*4]
mov     dword ptr [edx+14h], 0
pop     edx
pop     ecx
retn
sub_443996 endp




sub_4439B4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+3D8h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     word ptr [ebp+0], 0Eh
mov     dword ptr [ebp+4], 0
mov     dword ptr [ebp+8], 0
mov     dword ptr [ebp+14h], 0
mov     dword ptr [ebp+18h], 0
lea     eax, [ebp+24h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
lea     edi, [ebp+34h]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ebp+3Ch], 0
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_4E1877
mov     [ebp+40h], eax
xor     eax, eax
mov     al, [ecx+2]
mov     ebp, ds:dword_55A10C
mov     eax, [ebp+eax*4+0]
mov     al, [eax+28h]
xor     ah, ah
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_51503C
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_443AB7
jmp     loc_443C0E
sub_4439B4 endp




sub_443AB7 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 3D8h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+5Ch]
lea     esi, [ebp+54h]
movsd
movsd
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     edx, [esp+1Ch+var_1C]
mov     [edx+2], ax
lea     eax, [edx+24h]
mov     edx, ebp
call    sub_4E19CA
test    eax, eax
jz      short loc_443B1B
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 10h
jmp     short loc_443B21

loc_443B1B:
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0EFh

loc_443B21:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 4
jz      short loc_443B30
mov     eax, ebp
call    sub_443F91

loc_443B30:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_443B37[edx*4]
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_443B6E
mov     al, [ebp+9]
cmp     al, 1
jb      short loc_443B55
jbe     short loc_443B5B
cmp     al, 2
jz      short loc_443B5B
jmp     short loc_443B62

loc_443B55:
test    al, al
jnz     short loc_443B62
jmp     short loc_443B62

loc_443B5B:
mov     eax, ebp
call    sub_4DE2F6

loc_443B62:
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0FEh

loc_443B6E:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+0Ah]
test    dx, dx
jz      short loc_443B81
mov     ebx, edx
dec     ebx
mov     [eax+0Ah], bx

loc_443B81:
mov     al, [ebp+0ADh]
mov     ch, [ebp+0ACh]
cmp     al, ch
jz      short loc_443BA0
xor     edx, edx
mov     dl, ch
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_443BA7

loc_443BA0:
mov     eax, ebp
call    sub_4DEADD

loc_443BA7:
test    byte ptr [ebp+0], 2
jz      short loc_443BC0
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_443BC0:
test    byte ptr [ebp+0], 1
jz      short loc_443C0B
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_443C0B
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    offset unk_800000
push    4000000h
sub     word ptr [eax+0Eh], 28h ; '('
add     eax, 14h
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 0Ch
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC

loc_443C0B:
add     esp, 4

loc_443C0E:
pop     ebp

def_443EA6:             ; jumptable 00443EA6 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_443AB7 endp



; Attributes: thunk

sub_443C15 proc near
jmp     sub_4DE2F6
sub_443C15 endp




sub_443C1A proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
jnz     short loc_443C2E
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_443C2E:
pop     edx
retn
sub_443C1A endp

db 8Bh, 0C0h
jpt_443C6A dd offset loc_443C71 ; jump table for switch statement
dd offset loc_443CB4
dd offset loc_443D15
dd offset loc_443D77
dd offset loc_443DD9
dd offset loc_443E1F
dd offset loc_443E4A



sub_443C4E proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+3D8h]
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_443C6A      ; jumptable 00443C6A default case
xor     edx, edx
mov     dl, al
jmp     jpt_443C6A[edx*4] ; switch jump

loc_443C71:             ; jumptable 00443C6A case 0
inc     al
mov     edx, [esp+1Ch+var_1C]
mov     [edx+0Ah], al
mov     byte ptr [edx+0ACh], 9
mov     word ptr [ebp+4], 0Ah
mov     word ptr [ebp+6], 0
call    sub_4DE043
mov     [ebp+3Ch], eax
test    eax, eax
jz      short loc_443CB4 ; jumptable 00443C6A case 1
mov     byte ptr [eax], 1
mov     eax, [ebp+3Ch]
mov     byte ptr [eax+2], 6
mov     eax, [ebp+3Ch]
mov     byte ptr [eax+3], 81h
mov     eax, [ebp+3Ch]
mov     byte ptr [eax+8], 4
or      byte ptr [ebp+0], 20h

loc_443CB4:             ; jumptable 00443C6A case 1
mov     ax, [ebp+4]
dec     eax
mov     [ebp+4], ax
test    ax, ax
jge     short loc_443CC8
mov     eax, [esp+1Ch+var_1C]
inc     byte ptr [eax+0Ah]

loc_443CC8:
inc     word ptr [ebp+6]
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0C0h
mov     eax, [esp+1Ch+var_1C]
call    sub_4DD43B
mov     esi, [ebp+3Ch]
lea     edi, [esi+1Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+14h]
sar     edx, 10h
sub     edx, 64h ; 'd'
shl     edx, 10h
mov     eax, [ebp+3Ch]
mov     [eax+20h], edx
mov     eax, [ebp+3Ch]
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
jmp     def_443C6A      ; jumptable 00443C6A default case

loc_443D15:             ; jumptable 00443C6A case 2
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
mov     eax, [esp+1Ch+var_1C]
add     eax, 14h
mov     ecx, 80h
call    sub_4DE552
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+56h]
add     edx, eax
and     dh, 0Fh
mov     ebx, [esp+1Ch+var_1C]
mov     [ebx+56h], dx
test    ax, ax
jge     short loc_443D53
cwde
neg     eax
jmp     short loc_443D54

loc_443D53:
cwde

loc_443D54:
cmp     eax, 80h
jge     def_443C6A      ; jumptable 00443C6A default case
mov     eax, [esp+1Ch+var_1C]
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 30h ; '0'
mov     word ptr [ebp+4], 0Fh
jmp     def_443C6A      ; jumptable 00443C6A default case

loc_443D77:             ; jumptable 00443C6A case 3
mov     si, [ebp+4]
dec     si
mov     [ebp+4], si
jnz     def_443C6A      ; jumptable 00443C6A default case
test    byte ptr [ebp+0], 20h
jz      short loc_443DC7
mov     eax, [ebp+3Ch]
mov     byte ptr [eax+3], 80h
mov     eax, [ebp+3Ch]
mov     byte ptr [eax+8], 0
mov     eax, [ebp+3Ch]
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+56h]
mov     [eax+64h], dx
mov     eax, [ebp+3Ch]
mov     dword ptr [eax+9Ch], 20h ; ' '
mov     eax, [ebp+3Ch]
mov     dword ptr [eax+0A0h], 0Ch
and     byte ptr [ebp+0], 0DFh

loc_443DC7:
mov     eax, [esp+1Ch+var_1C]
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 9
jmp     def_443C6A      ; jumptable 00443C6A default case

loc_443DD9:             ; jumptable 00443C6A case 4
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
lea     edx, [ebp+34h]
mov     eax, [esp+1Ch+var_1C]
add     eax, 14h
mov     ecx, 80h
call    sub_4DE552
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+56h]
add     edx, eax
and     dh, 0Fh
mov     ebx, [esp+1Ch+var_1C]
mov     [ebx+56h], dx
test    ax, ax
jnz     short def_443C6A ; jumptable 00443C6A default case
mov     eax, ebx
mov     bl, [ebx+0Ah]
inc     bl
mov     [eax+0Ah], bl
mov     word ptr [ebp+4], 0Ah
jmp     short def_443C6A ; jumptable 00443C6A default case

loc_443E1F:             ; jumptable 00443C6A case 5
dec     word ptr [ebp+6]
mov     bx, [ebp+4]
dec     ebx
mov     [ebp+4], bx
test    bx, bx
jge     short loc_443E37
mov     eax, [esp+1Ch+var_1C]
inc     byte ptr [eax+0Ah]

loc_443E37:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0C0h
mov     eax, [esp+1Ch+var_1C]
call    sub_4DD43B
jmp     short def_443C6A ; jumptable 00443C6A default case

loc_443E4A:             ; jumptable 00443C6A case 6
or      byte ptr [ebp+0], 1
mov     eax, [ebp+40h]
or      byte ptr [eax+0Fh], 2

def_443C6A:             ; jumptable 00443C6A default case
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0A6h], 0
jz      loc_443C0B
lea     edx, [eax+14h]
mov     eax, 0D7h
call    sub_4D8BC3
jmp     loc_443C0B
sub_443C4E endp

db 8Dh, 40h, 0
jpt_443EA6 dd offset loc_443EAD ; jump table for switch statement
dd offset loc_443EEC
dd offset loc_443F45
dd offset loc_443F82



sub_443E8A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edx, [eax+3D8h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_443EA6      ; jumptable 00443EA6 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_443EA6[ecx*4] ; switch jump

loc_443EAD:             ; jumptable 00443EA6 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 25h ; '%'
mov     eax, [edx+40h]
mov     ax, [eax+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+56h], ax
mov     byte ptr [esi+110h], 7
and     byte ptr [edx], 0F7h
mov     word ptr [edx+4], 4
lea     edx, [esi+14h]
mov     eax, 0DAh
call    sub_4D8BC3
jmp     def_443EA6      ; jumptable 00443EA6 default case

loc_443EEC:             ; jumptable 00443EA6 case 1
mov     di, [edx+4]
dec     edi
mov     [edx+4], di
test    di, di
jge     def_443EA6      ; jumptable 00443EA6 default case
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 26h ; '&'
test    byte ptr [edx], 20h
jz      def_443EA6      ; jumptable 00443EA6 default case
mov     esi, [edx+3Ch]
mov     byte ptr [esi+8], 0
mov     eax, [edx+40h]
mov     esi, [edx+3Ch]
mov     ax, [eax+56h]
mov     [esi+64h], ax
mov     eax, [edx+3Ch]
mov     dword ptr [eax+9Ch], 20h ; ' '
mov     eax, [edx+3Ch]
mov     dword ptr [eax+0A0h], 4
jmp     def_443EA6      ; jumptable 00443EA6 default case

loc_443F45:             ; jumptable 00443EA6 case 2
mov     bx, [edx+6]
dec     ebx
mov     [edx+6], bx
test    bx, bx
jge     short loc_443F6D
inc     byte ptr [esi+0Ah]
test    byte ptr [edx], 20h
jz      short loc_443F6D
mov     eax, [edx+3Ch]
call    sub_4DE371
and     byte ptr [edx], 0DFh
mov     edx, [edx+40h]
or      byte ptr [edx+0Fh], 4

loc_443F6D:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFF50h
mov     eax, esi
call    sub_4DD43B
jmp     def_443EA6      ; jumptable 00443EA6 default case

loc_443F82:             ; jumptable 00443EA6 case 3
or      byte ptr [edx], 9
mov     edx, [edx+40h]
or      byte ptr [edx+0Fh], 2
jmp     def_443EA6      ; jumptable 00443EA6 default case
sub_443E8A endp




sub_443F91 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
lea     ecx, [eax+3D8h]
mov     eax, [ecx+14h]
and     eax, 0FFFFFFh
jz      loc_444036
lea     edx, [ebx+14h]
test    byte ptr [ecx+17h], 38h
jz      loc_44402C
test    byte ptr [ecx], 8
jz      short loc_444017
add     [ecx+0Ah], ax
test    byte ptr [ecx+17h], 20h
jnz     short loc_443FE7
xor     eax, eax
mov     al, [ebx+2]
mov     esi, ds:dword_55A10C
mov     eax, [esi+eax*4]
mov     al, [eax+29h]
and     eax, 0FFh
mov     esi, [ecx+8]
sar     esi, 10h
cmp     esi, eax
jl      short loc_444017

loc_443FE7:
lea     edx, [ebx+14h]
mov     eax, 0A2h
call    sub_4D8BC3
mov     edx, [ecx+40h]
mov     ax, [edx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebx+56h], ax
mov     byte ptr [ebx+9], 1
mov     word ptr [ebx+0Ah], 0
mov     word ptr [ecx+0Ah], 0
jmp     short loc_444021

loc_444017:
mov     eax, 0A0h
call    sub_4D8BC3

loc_444021:
mov     word ptr [ebx+15Eh], 7FFFh
jmp     short loc_444036

loc_44402C:
mov     eax, 0A3h
call    sub_4D8BC3

loc_444036:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_443F91 endp




sub_444040 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
cmp     byte ptr [eax+8], 0
jnz     short loc_4440B4
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
inc     byte ptr [ecx+8]

loc_4440B4:
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_4440D5
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4440DC

loc_4440D5:
mov     eax, ecx
call    sub_4DEADD

loc_4440DC:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_444040 endp




sub_4440E2 proc near
push    ecx
push    edx
lea     edx, [eax+408h]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4440EF[ecx*4]
mov     dword ptr [edx+14h], 0
pop     edx
pop     ecx
retn
sub_4440E2 endp

db 8Bh, 0C0h
jpt_4441DE dd offset loc_4441E5 ; jump table for switch statement
dd offset loc_4441F8
dd offset loc_444202
dd offset loc_44420C



sub_444112 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     word ptr [ebx], 0Eh
mov     dword ptr [ebx+4], 0
mov     dword ptr [ebx+8], 0
mov     dword ptr [ebx+14h], 0
mov     dword ptr [ebx+18h], 0
mov     word ptr [ebx+34h], 0
lea     eax, [ebx+24h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
xor     ebx, ebx
mov     bl, [ecx+2]
mov     eax, ds:dword_55A10C
mov     eax, [eax+ebx*4]
mov     al, [eax+18h]
xor     ah, ah
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_51506C
mov     dword ptr [ecx+10h], 0
mov     al, [ecx+3]
cmp     al, 3           ; switch 4 cases
ja      short def_4441DE ; jumptable 004441DE default case
xor     ebx, ebx
mov     bl, al
jmp     jpt_4441DE[ebx*4] ; switch jump

loc_4441E5:             ; jumptable 004441DE case 0
mov     byte ptr [ecx+8], 1
mov     [ecx+9], ah

loc_4441EC:
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
jmp     short loc_444221

loc_4441F8:             ; jumptable 004441DE case 1
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 2
jmp     short loc_4441EC

loc_444202:             ; jumptable 004441DE case 2
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 3
jmp     short loc_4441EC

loc_44420C:             ; jumptable 004441DE case 3
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 5
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 21h ; '!'

loc_444221:
mov     eax, ecx
call    sub_4DE96B

def_4441DE:             ; jumptable 004441DE default case
mov     eax, ecx
call    sub_44424E
pop     edx
pop     ecx
pop     ebx
retn
sub_444112 endp

db 8Dh, 40h, 0
jpt_4442F1 dd offset loc_4442F8 ; jump table for switch statement
dd offset loc_4442F8
dd offset loc_4442F8
dd offset def_4442F1
dd offset loc_4442F8
dd offset loc_4442F8



sub_44424E proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+5Ch]
lea     esi, [ebp+54h]
movsd
movsd
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     edx, [esp+1Ch+var_1C]
mov     [edx+2], ax
test    byte ptr [edx], 20h
jnz     short loc_4442BA
mov     eax, [esp+1Ch+var_1C]
add     eax, 24h ; '$'
mov     edx, ebp
call    sub_4E19CA
test    eax, eax
jz      short loc_4442BA
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 10h
jmp     short loc_4442C0

loc_4442BA:
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0EFh

loc_4442C0:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 4
jz      short loc_4442CF
mov     eax, ebp
call    sub_444B50

loc_4442CF:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4442D6[edx*4]
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_444308
mov     al, [ebp+9]
cmp     al, 5           ; switch 6 cases
ja      short def_4442F1 ; jumptable 004442F1 default case, case 3
and     eax, 0FFh
jmp     jpt_4442F1[eax*4] ; switch jump

loc_4442F8:             ; jumptable 004442F1 cases 0-2,4,5
mov     byte ptr [ebp+9], 4

def_4442F1:             ; jumptable 004442F1 default case, case 3
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0FEh

loc_444308:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+0Ah]
test    dx, dx
jz      short loc_44431B
mov     ebx, edx
dec     ebx
mov     [eax+0Ah], bx

loc_44431B:
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_44433A
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_444341

loc_44433A:
mov     eax, ebp
call    sub_4DEADD

loc_444341:
test    byte ptr [ebp+0], 2
jz      short loc_44435A
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44435A:
test    byte ptr [ebp+0], 1
jz      short loc_4443B3
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_4443B3
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
sub     word ptr [eax+0Eh], 28h ; '('
add     eax, 0Ch
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     ecx, [esp+1Ch+var_1C]
test    byte ptr [ecx], 20h
jz      short loc_44438F
push    80h
jmp     short loc_444391

loc_44438F:
push    0

loc_444391:
push    offset unk_800000
push    4000000h
push    edx
xor     edx, edx
mov     dl, [ebp+1]
push    edx
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC

loc_4443B3:
add     esp, 4
pop     ebp

def_444422:             ; jumptable 00444422 default case
pop     edi             ; jumptable 0044456A default case
; jumptable 00444A4F default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44424E endp



; Attributes: thunk

sub_4443BD proc near
jmp     sub_4DE2F6
sub_4443BD endp




sub_4443C2 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
mov     bl, [eax+0Ah]
test    bl, bl
jbe     short loc_4443D9
cmp     bl, 1
jz      short loc_4443E5
pop     edx
pop     ebx
retn

loc_4443D9:
inc     bl
mov     [eax+0Ah], bl
mov     byte ptr [eax+0ACh], 0

loc_4443E5:
test    byte ptr [edx], 10h
jnz     short loc_4443F3
test    dword ptr [edx+14h], 0FFFFFFh
jz      short loc_4443F6

loc_4443F3:
or      byte ptr [edx], 1

loc_4443F6:
pop     edx
pop     ebx
retn
sub_4443C2 endp

align 2
jpt_444422 dd offset loc_444429 ; jump table for switch statement
dd offset loc_444457
dd offset loc_4444A0
dd offset loc_444517



sub_44440A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      short def_444422 ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
xor     edx, edx
mov     dl, al
jmp     jpt_444422[edx*4] ; switch jump

loc_444429:             ; jumptable 00444422 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 21h ; '!'
mov     word ptr [esi+44h], 0Dh
mov     word ptr [esi+46h], 0FFE8h
mov     byte ptr [esi+110h], 7
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0

loc_444457:             ; jumptable 00444422 case 1
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jl      short loc_444490
cmp     cx, 2
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case

loc_444490:
mov     word ptr [edi+4], 7
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 22h ; '"'

loc_4444A0:             ; jumptable 00444422 case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
mov     eax, 4
sub     eax, ebx
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
test    ah, 0Fh
jz      short loc_4444EE
mov     word ptr [esi+44h], 0

loc_4444EE:
test    dh, 10h
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
cmp     word ptr [edi+4], 0
jg      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     word ptr [edi+4], 12h
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 23h ; '#'
jmp     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case

loc_444517:             ; jumptable 00444422 case 3
mov     dx, [edi+4]     ; jumptable 00444A4F case 3
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     byte ptr [esi+110h], 6
or      byte ptr [edi], 9
jmp     def_444422      ; jumptable 00444422 default case
sub_44440A endp         ; jumptable 0044456A default case
; jumptable 00444A4F default case
db 8Bh, 0C0h
jpt_44456A dd offset loc_444571 ; jump table for switch statement
dd offset loc_44459F
dd offset loc_4445E8
dd offset loc_44465C
dd offset loc_44467E



sub_44454E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
xor     edx, edx
mov     dl, al
jmp     jpt_44456A[edx*4] ; switch jump

loc_444571:             ; jumptable 0044456A case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 25h ; '%'
mov     word ptr [esi+44h], 0FFF5h
mov     word ptr [esi+46h], 0FFE8h
mov     byte ptr [esi+110h], 7
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0

loc_44459F:             ; jumptable 0044456A case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jl      short loc_4445D8
cmp     dx, 2
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case

loc_4445D8:
mov     word ptr [edi+4], 0Bh
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 26h ; '&'

loc_4445E8:             ; jumptable 0044456A case 2
dec     word ptr [edi+4]
mov     eax, 8
sub     ax, [edi+4]
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
test    ah, 0Fh
jz      short loc_444633
mov     word ptr [esi+44h], 0

loc_444633:
test    dh, 10h
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
cmp     word ptr [edi+4], 0
jg      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     word ptr [edi+4], 26h ; '&'
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 27h ; '''
jmp     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case

loc_44465C:             ; jumptable 0044456A case 3
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     word ptr [edi+4], 11h
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 28h ; '('

loc_44467E:             ; jumptable 0044456A case 4
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
or      byte ptr [edi], 9
mov     byte ptr [esi+110h], 6
jmp     def_444422      ; jumptable 00444422 default case
sub_44454E endp         ; jumptable 0044456A default case
; jumptable 00444A4F default case
db 8Dh, 40h, 0
jpt_4446D5 dd offset loc_4447DF ; jump table for switch statement
dd offset loc_444839
dd offset loc_444839
dd offset loc_4448D8
dd offset loc_4446DC



sub_4446B6 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_4446D5      ; jumptable 004446D5 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4446D5[edx*4] ; switch jump

loc_4446DC:             ; jumptable 004446D5 case 4
test    byte ptr [edi+17h], 20h
jnz     loc_4447AF
xor     eax, eax
mov     al, [esi+0Bh]
mov     al, ds:byte_515078[eax]
and     eax, 0FFh
mov     edx, [edi+2]
sar     edx, 10h
cmp     edx, eax
jnz     loc_444796
cmp     word ptr [edi+34h], 3
jge     loc_444796
xor     edx, edx
jmp     short loc_444783

loc_444713:
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
xor     ebx, ebx
mov     bl, [esi+0Bh]
mov     bl, ds:byte_51507C[edx+ebx*4]
and     ebx, 0FFh
mov     bx, [esi+ebx*8+190h]
mov     [eax+1Ch], bx
xor     ebx, ebx
mov     bl, [esi+0Bh]
mov     bl, ds:byte_51507C[edx+ebx*4]
and     ebx, 0FFh
imul    ecx, edx, 0Ch
mov     bx, [esi+ebx*8+192h]
sub     ebx, ecx
mov     [eax+1Eh], bx
xor     ebx, ebx
mov     bl, [esi+0Bh]
mov     bl, ds:byte_51507C[edx+ebx*4]
and     ebx, 0FFh
mov     bx, [esi+ebx*8+194h]
mov     [eax+20h], bx
inc     edx
cmp     edx, 4
jge     short loc_44478C

loc_444783:
call    sub_4DE13B
test    eax, eax
jnz     short loc_444713

loc_44478C:
mov     al, [esi+0Bh]
inc     al
and     al, 3
mov     [esi+0Bh], al

loc_444796:
mov     ax, [edi+4]
inc     eax
mov     [edi+4], ax
mov     edx, eax
xor     dh, ah
and     dl, 3Fh
mov     [edi+4], dx
jmp     def_4446D5      ; jumptable 004446D5 default case

loc_4447AF:
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+1Ch]
lea     eax, [esi+14h]
xor     ecx, ecx
call    sub_4DE726
mov     [esp+18h+var_18], eax
mov     edx, [esp+18h+var_18]
test    eax, 0FFFF0000h
jz      short loc_4447D5
add     dh, 8
and     dh, 0Fh

loc_4447D5:
mov     [esi+56h], dx
mov     word ptr [esi+0Ah], 0

loc_4447DF:             ; jumptable 004446D5 case 0
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Bh], 0
mov     byte ptr [esi+0ACh], 4
mov     word ptr [esi+44h], 0FF00h
mov     word ptr [esi+46h], 300h
mov     byte ptr [esi+110h], 7
mov     bl, [edi]
or      bl, 20h
mov     [edi], bl
mov     bh, bl
and     bh, 0B3h
mov     [edi], bh
mov     word ptr [edi+8], 0
mov     word ptr [edi+4], 0
mov     word ptr [esi+44h], 100h
mov     word ptr [esi+46h], 0FD00h
mov     word ptr [esi+4Eh], 80h
lea     edx, [esi+14h]
mov     eax, 0A2h
call    sub_4D8BC3

loc_444839:             ; jumptable 004446D5 cases 1,2
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     eax, esi
call    sub_42DE56
mov     [esp+18h+var_18], eax
test    eax, eax
jz      def_4446D5      ; jumptable 004446D5 default case
test    ah, 0Fh
jz      short loc_44487B
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+56h], ax

loc_44487B:
test    byte ptr [esp+18h+var_18+1], 10h
jz      def_4446D5      ; jumptable 004446D5 default case
mov     ch, [edi]
test    ch, 40h
jnz     short loc_4448BA
mov     al, ch
or      al, 40h
mov     [edi], al
test    al, 80h
jz      short loc_4448B7
mov     cx, [edi+34h]
cmp     cx, 3
jge     short loc_4448B7
mov     eax, ecx
inc     eax
mov     [edi+34h], ax
lea     edx, [esi+14h]
mov     ebx, 1
mov     eax, esi
call    sub_4AFA70

loc_4448B7:
or      byte ptr [edi], 80h

loc_4448BA:
lea     edx, [esi+14h]
mov     eax, 0DAh
call    sub_4D8BC3
inc     byte ptr [esi+0Ah]
mov     word ptr [esi+44h], 60h ; '`'
mov     word ptr [esi+46h], 0FE00h
jmp     short def_4446D5 ; jumptable 004446D5 default case

loc_4448D8:             ; jumptable 004446D5 case 3
mov     dl, [esi+0A4h]
test    dl, dl
jnz     short def_4446D5 ; jumptable 004446D5 default case
inc     al
mov     [esi+0Ah], al
mov     [esi+0Bh], dl
mov     byte ptr [esi+0ACh], 5

def_4446D5:             ; jumptable 004446D5 default case
mov     word ptr [esi+15Eh], 190Ch
cmp     dword ptr [esi+80h], offset unk_800000
jbe     short loc_444913
test    byte ptr [esi+6], 80h
jnz     short loc_444913
mov     eax, esi
call    sub_4DE2F6

loc_444913:
add     esp, 4
jmp     def_444422      ; jumptable 00444422 default case
sub_4446B6 endp         ; jumptable 0044456A default case
; jumptable 00444A4F default case



sub_44491B proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
mov     ecx, offset byte_5F8364
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_444943
cmp     al, 1
jz      short loc_44495A
jmp     loc_4449F9

loc_444943:
mov     byte ptr [ebp+0Ah], 1
mov     word ptr [ebp+44h], 0C0h
mov     word ptr [ebp+66h], 18h
mov     byte ptr [ebp+0ACh], 9

loc_44495A:
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [ecx+14h]
mov     ecx, 18h
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
test    dh, 0Fh
jnz     short loc_4449C4
mov     edx, [ebp+14h]
sar     edx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     edx, eax
cmp     edx, 10h
jle     short loc_4449E4

loc_4449C4:
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax

loc_4449E4:
mov     eax, [esp+1Ch+var_1C]
test    word ptr [eax+2], 1FFh
jnz     short loc_4449F9
mov     byte ptr [ebp+9], 1
mov     word ptr [ebp+0Ah], 0

loc_4449F9:
mov     ah, [ebp+0A4h]
test    ah, ah
jz      short loc_444A0C
cmp     ah, 8
jnz     loc_4443B3

loc_444A0C:
lea     edx, [ebp+14h]
mov     eax, 0D7h
call    sub_4D8BC3
jmp     loc_4443B3
sub_44491B endp

jpt_444A4F dd offset loc_444A56 ; jump table for switch statement
dd offset loc_444A84
dd offset loc_444ACB
dd offset loc_444517



sub_444A2E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     ebx, 0Ch
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
xor     edx, edx
mov     dl, al
jmp     jpt_444A4F[edx*4] ; switch jump

loc_444A56:             ; jumptable 00444A4F case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 21h ; '!'
mov     word ptr [esi+44h], 12h
mov     word ptr [esi+46h], 0FFC0h
mov     byte ptr [esi+110h], 7
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0

loc_444A84:             ; jumptable 00444A4F case 1
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jl      short loc_444ABD
cmp     cx, 2
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case

loc_444ABD:
mov     [edi+4], bx
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 22h ; '"'

loc_444ACB:             ; jumptable 00444A4F case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
mov     eax, 4
sub     eax, ebx
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
test    ah, 0Fh
jz      short loc_444B19
mov     word ptr [esi+44h], 0

loc_444B19:
test    dh, 10h
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
cmp     word ptr [edi+4], 0
jg      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     word ptr [edi+4], 12h
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 23h ; '#'
xor     ebx, ebx
xor     edx, edx
mov     eax, 0D8h
call    sub_4D89E4
jmp     def_444422      ; jumptable 00444422 default case
sub_444A2E endp         ; jumptable 0044456A default case
; jumptable 00444A4F default case



sub_444B50 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     ebp, [eax+408h]
mov     eax, [ebp+14h]
and     eax, 0FFFFFFh
mov     [esp+1Ch+var_1C], eax
jz      loc_444CE8
test    byte ptr [ebp+17h], 38h
jz      loc_444CDB
mov     ax, [esi+6Eh]
mov     [esi+0B2h], ax
mov     eax, [esp+1Ch+var_1C]
mov     dx, [esi+6Eh]
sub     edx, eax
mov     [esi+6Eh], dx
test    dx, dx
jg      loc_444C3F
mov     word ptr [esi+0B2h], 0FFFFh
mov     ax, [esi+0B2h]
mov     [esi+6Eh], ax
and     byte ptr [ebp+0], 0F3h
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+19h]
and     eax, 0FFh
mov     [esp+1Ch+var_1C], eax
xor     ebx, ebx
jmp     short loc_444C2C

loc_444BD2:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 3
movsx   edx, bx
xor     ecx, ecx
mov     cl, ds:byte_515094[edx]
mov     cx, [esi+ecx*8+190h]
mov     [eax+1Ch], cx
xor     ecx, ecx
mov     cl, ds:byte_515094[edx]
imul    edi, ebx, 0Ch
mov     cx, [esi+ecx*8+192h]
sub     ecx, edi
mov     [eax+1Eh], cx
mov     dl, ds:byte_515094[edx]
and     edx, 0FFh
mov     dx, [esi+edx*8+194h]
mov     [eax+20h], dx
inc     ebx
cmp     bx, 4
jge     short loc_444C35

loc_444C2C:
call    sub_4DE13B
test    eax, eax
jnz     short loc_444BD2

loc_444C35:
mov     byte ptr [esi+9], 3
mov     word ptr [esi+0Ah], 0

loc_444C3F:
test    byte ptr [ebp+0], 8
jz      loc_444CC3
mov     eax, [esp+1Ch+var_1C]
add     [ebp+0Ah], ax
test    byte ptr [ebp+17h], 20h
jnz     short loc_444C7A
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
mov     al, [eax+19h]
and     eax, 0FFh
mov     edx, [ebp+8]
sar     edx, 10h
cmp     edx, eax
jl      short loc_444CBB

loc_444C7A:
lea     edi, [esi+14h]
mov     edx, edi
mov     eax, 0A2h
call    sub_4D8BC3
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ebp+1Ch]
xor     ecx, ecx
mov     eax, edi
call    sub_4DE726
mov     edx, eax
add     dh, 8
mov     [esi+56h], dx
test    eax, 0FFFF0000h
jz      short loc_444CB1
mov     byte ptr [esi+9], 1
jmp     short loc_444CB5

loc_444CB1:
mov     byte ptr [esi+9], 2

loc_444CB5:
mov     word ptr [ebp+0Ah], 0

loc_444CBB:
mov     word ptr [esi+0Ah], 0
jmp     short loc_444CD0

loc_444CC3:
lea     edx, [esi+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_444CD0:
mov     word ptr [esi+15Eh], 7FFFh
jmp     short loc_444CE8

loc_444CDB:
lea     edx, [esi+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_444CE8:
mov     eax, 1
jmp     loc_4443B3
sub_444B50 endp




sub_444CF2 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_444CF8[edx*4]
pop     edx
retn
sub_444CF2 endp




sub_444D01 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444D3F
or      byte ptr [ecx], 2
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     edx, edx
mov     dl, [ecx+3]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444D3F:
mov     al, [ecx+0Ch]
cmp     al, 2
jb      short loc_444D4E
jbe     short loc_444D58
cmp     al, 3
jz      short loc_444D5F
jmp     short loc_444D64

loc_444D4E:
cmp     al, 1
jnz     short loc_444D64
inc     word ptr [ecx+14h]
jmp     short loc_444D64

loc_444D58:
sub     word ptr [ecx+18h], 6
jmp     short loc_444D64

loc_444D5F:
add     word ptr [ecx+18h], 2

loc_444D64:
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     eax, ecx
call    sub_4DEADD
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_444D01 endp




sub_444D8B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
mov     eax, ecx
call    sub_444EF6
pop     edx
pop     ecx
pop     ebx
retn
sub_444D8B endp




sub_444DC4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444DDD
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444DDD:
pop     edx
pop     ecx
pop     ebx
retn
sub_444DC4 endp




sub_444DE1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444DFD
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444DFD:
pop     edx
pop     ecx
pop     ebx
retn
sub_444DE1 endp




sub_444E01 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444E2B
mov     byte ptr [ecx+110h], 9
mov     byte ptr [ecx+100h], 0Ch
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444E2B:
pop     edx
pop     ecx
pop     ebx
retn
sub_444E01 endp




sub_444E2F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444E52
mov     byte ptr [ecx+110h], 9
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444E52:
pop     edx
pop     ecx
pop     ebx
retn
sub_444E2F endp




sub_444E56 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444E72
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444E72:
pop     edx
pop     ecx
pop     ebx
retn
sub_444E56 endp




sub_444E76 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444E92
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444E92:
pop     edx
pop     ecx
pop     ebx
retn
sub_444E76 endp




sub_444E96 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444EB2
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444EB2:
pop     edx
pop     ecx
pop     ebx
retn
sub_444E96 endp




sub_444EB6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444ED2
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444ED2:
pop     edx
pop     ecx
pop     ebx
retn
sub_444EB6 endp




sub_444ED6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444EF2
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444EF2:
pop     edx
pop     ecx
pop     ebx
retn
sub_444ED6 endp




sub_444EF6 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_444EFF[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_444F1E
mov     eax, ecx
call    sub_4DEADD

loc_444F1E:
pop     edx
pop     ecx
retn
sub_444EF6 endp



; Attributes: thunk

sub_444F21 proc near
jmp     sub_4DE2F6
sub_444F21 endp




sub_444F26 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_444F2C[edx*4]
pop     edx
retn
sub_444F26 endp




sub_444F35 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_444F35 endp




sub_444F5A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444F76
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444F76:
pop     edx
pop     ecx
pop     ebx
retn
sub_444F5A endp




sub_444F7A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444F93
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444F93:
pop     edx
pop     ecx
pop     ebx
retn
sub_444F7A endp




sub_444F97 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_444FA0[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_444FBF
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_444FBF:
pop     edx
pop     ecx
retn
sub_444F97 endp


loc_444FC2:
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_444FD2
mov     eax, edx
call    sub_444F35

loc_444FD2:
mov     eax, edx
call    sub_444F97
pop     edx
retn



sub_444FDB proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 3D8h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+5Ch]
lea     esi, [ebp+54h]
movsd
movsd
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     edx, [esp+1Ch+var_1C]
mov     [edx+2], ax
xor     ecx, ecx
mov     cl, [ebp+8]
mov     eax, ebp
call    ds:funcs_445030[ecx*4]
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_445056
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_44505D

loc_445056:
mov     eax, ebp
call    sub_4DEB53

loc_44505D:
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+3Ch]
mov     ds:word_560E1E, ax
mov     eax, ebp
call    sub_4DF795
test    byte ptr [ebp+0], 2
jz      short loc_44508A
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44508A:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+4Ch], 0

loc_445094:
mov     edi, offset unk_559E08
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, offset unk_559E10
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
mov     ax, [ebp+56h]
mov     [ebp+64h], ax
lea     edi, [ebp+14h]
lea     esi, [ebp+1A0h]
movsd
movsd
mov     ecx, [ebp+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [ebp+1Ch], ecx
mov     ecx, [ebp+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [ebp+20h], ecx
mov     ecx, [ebp+16h]
sar     ecx, 10h
shl     ecx, 10h
mov     [ebp+24h], ecx
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+3Ch]
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ecx, [esp+1Ch+var_1C]
mov     ecx, [ecx+4Ch]
mov     ecx, ds:dword_51512A[ecx*2]
sar     ecx, 10h
mov     ebx, 0FFFFFE00h
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
mov     ecx, [esp+1Ch+var_1C]
mov     ecx, [ecx+4Ch]
shl     ecx, 2
mov     edx, [esp+1Ch+var_1C]
add     ecx, edx
mov     ecx, [ecx+44h]
mov     ax, [ebp+14h]
mov     [ecx+1Ch], ax
mov     ecx, [edx+4Ch]
shl     ecx, 2
add     ecx, edx
mov     ecx, [ecx+44h]
mov     ax, [ebp+16h]
mov     [ecx+1Eh], ax
mov     ecx, [edx+4Ch]
shl     ecx, 2
add     ecx, edx
mov     ecx, [ecx+44h]
mov     ax, [ebp+18h]
mov     [ecx+20h], ax
lea     edi, [ebp+14h]
mov     esi, offset unk_559E08
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, offset unk_559E10
movsd
movsd
movsd
movsd
mov     ax, [ebp+64h]
mov     [ebp+56h], ax
mov     edi, [edx+4Ch]
inc     edi
mov     [edx+4Ch], edi
cmp     edi, 2
jl      loc_445094
test    byte ptr [ebp+0], 2
jz      short loc_4451D3
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 4
jz      short loc_4451D3
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+190h]
movsd
movsd
push    0
push    offset unk_800000
add     word ptr [eax+0Eh], 1Eh
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     ax, [edx+8]
or      eax, 4880000h
push    eax
lea     eax, [edx+14h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [edx+0Ch]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 50h ; 'P'
call    sub_4E01FC

loc_4451D3:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+14h], 0
sub_444FDB endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_445357
;   ADDITIONAL PARENT FUNCTION sub_44569A
;   ADDITIONAL PARENT FUNCTION sub_446357

def_446381:             ; jumptable 00446381 default case
add     esp, 4

loc_4451E0:
pop     ebp
jmp     def_445C30      ; jumptable 00445C30 default case
; END OF FUNCTION CHUNK FOR sub_445357 ; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case



sub_4451E6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+3D8h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [esi], 26h ; '&'
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+18h], 0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
xor     edx, edx
mov     dl, [eax+0Fh]
lea     eax, [esi+24h]
mov     ebx, 0FFFFFFA0h
call    sub_4E19B9
mov     word ptr [esi+34h], 0
mov     word ptr [esi+36h], 0
mov     word ptr [esi+3Ch], 0
mov     word ptr [esi+38h], 4
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E1877
mov     [esi+40h], eax
mov     eax, [eax+0Ah]
sar     eax, 18h
call    sub_4E1877
mov     [esi+44h], eax
mov     eax, [esi+40h]
mov     eax, [eax+0Bh]
sar     eax, 18h
call    sub_4E1877
mov     [esi+48h], eax
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_515120
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+15Eh], 4210h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4451E6 endp

db 90h
jpt_445426 dd offset loc_44545A ; jump table for switch statement
dd offset def_445426
dd offset def_445426
dd offset loc_44545A
dd offset loc_445448
dd offset def_445426
dd offset loc_44542D
dd offset loc_445436
dd offset loc_44543F
dd offset loc_44543F
dd offset def_445426
dd offset loc_44545A
dd offset loc_445451
dd offset loc_44545A



sub_445357 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004451DD SIZE 00000009 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+3D8h]
mov     ebx, [eax+54h]
sar     ebx, 10h
xor     edx, edx
mov     dx, [ebp+3Ch]
add     ebx, edx
and     ebx, 0FFFh
lea     eax, [ebp+24h]
mov     edx, [esp+1Ch+var_1C]
call    sub_4E19D8
test    eax, eax
jz      short loc_44538D
or      byte ptr [ebp+1], 1
jmp     short loc_445391

loc_44538D:
and     byte ptr [ebp+1], 0FEh

loc_445391:
test    byte ptr [ebp+0], 2
jz      short loc_44539F
mov     eax, [esp+1Ch+var_1C]
call    sub_446779

loc_44539F:
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+54h]
sar     edx, 10h
xor     eax, eax
mov     ax, [ebp+3Ch]
lea     ebx, [eax+edx]
and     ebx, 0FFFh
mov     eax, [esp+1Ch+var_1C]
add     eax, 14h
mov     ecx, 40h ; '@'
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     edx, [esp+1Ch+var_1C]
mov     [edx+64h], ax
xor     edx, edx
mov     dx, [ebp+3Ch]
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+62h]
sar     eax, 10h
add     eax, edx
add     eax, 500h
and     eax, 0FFFh
cmp     eax, 0A00h
jge     short loc_445402
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+64h]
add     edx, eax
mov     [ebp+3Ch], dx

loc_445402:
xor     edx, edx
mov     eax, [esp+1Ch+var_1C]
mov     dl, [eax+9]
call    ds:funcs_44540A[edx*4]
test    byte ptr [ebp+0], 1
jz      short loc_445474
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+9]
cmp     al, 0Dh         ; switch 14 cases
ja      short def_445426 ; jumptable 00445426 default case, cases 1,2,5,10
and     eax, 0FFh
jmp     jpt_445426[eax*4] ; switch jump

loc_44542D:             ; jumptable 00445426 case 6
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 8
jmp     short loc_445467

loc_445436:             ; jumptable 00445426 case 7
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 9
jmp     short loc_445467

loc_44543F:             ; jumptable 00445426 cases 8,9
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 4
jmp     short loc_445467

loc_445448:             ; jumptable 00445426 case 4
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 1
jmp     short loc_445467

loc_445451:             ; jumptable 00445426 case 12
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 3
jmp     short loc_445467

loc_44545A:             ; jumptable 00445426 cases 0,3,11,13
test    byte ptr [ebp+1], 1
jnz     short loc_44543F ; jumptable 00445426 cases 8,9

def_445426:             ; jumptable 00445426 default case, cases 1,2,5,10
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 0

loc_445467:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+0Ah], 0
and     byte ptr [ebp+0], 0FEh

loc_445474:
mov     bx, [ebp+34h]
test    bx, bx
jz      short loc_445484
mov     ecx, ebx
dec     ecx
mov     [ebp+34h], cx

loc_445484:
mov     si, [ebp+0Ah]
test    si, si
jz      short loc_445494
mov     edi, esi
dec     edi
mov     [ebp+0Ah], di

loc_445494:
mov     ax, [ebp+36h]
test    ax, ax
jz      short loc_4454A4
mov     edx, eax
dec     edx
mov     [ebp+36h], dx

loc_4454A4:
test    byte ptr [ebp+1], 8
jz      def_446381      ; jumptable 00446381 default case
mov     bx, [ebp+38h]
dec     ebx
mov     [ebp+38h], bx
test    bx, bx
jge     def_446381      ; jumptable 00446381 default case
call    sub_4DE13B
mov     [ebp+50h], eax
test    eax, eax
jz      short loc_4454EB
mov     byte ptr [eax], 5
mov     eax, [ebp+50h]
mov     byte ptr [eax+2], 80h
mov     eax, [ebp+50h]
mov     byte ptr [eax+3], 41h ; 'A'
mov     esi, [ebp+50h]
lea     edi, [esi+48h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+14h]
movsd
movsd

loc_4454EB:
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE2F6
mov     eax, [ebp+44h]
call    sub_4DE3EA
mov     eax, [ebp+48h]
call    sub_4DE3EA
mov     ebp, [ebp+40h]
or      byte ptr [ebp+0Fh], 2
mov     ebp, [esp+1Ch+var_1C]
add     ebp, 190h
xor     ebx, ebx
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4AFA70
mov     edx, ebp
mov     eax, 0A1h
call    sub_4D8BC3
jmp     def_446381      ; jumptable 00446381 default case
sub_445357 endp




sub_445530 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edx, [eax+3D8h]
test    byte ptr [edx], 2
jz      short loc_445549
mov     eax, ecx
call    sub_446779

loc_445549:
mov     ax, [edx+3Ch]
sub     eax, 80h
mov     si, [edx+2]
and     esi, 0FFh
sub     eax, esi
and     ah, 0Fh
mov     [edx+3Ch], ax
movzx   esi, byte ptr [ecx+9]
mov     eax, ecx
call    ds:funcs_44540A[esi*4]
test    byte ptr [edx], 1
jz      short loc_4455A0
mov     al, [ecx+9]
cmp     al, 6
jb      short loc_445593
jbe     short loc_445587
cmp     al, 7
jz      short loc_44558D
jmp     short loc_445593

loc_445587:
mov     byte ptr [ecx+9], 8
jmp     short loc_445597

loc_44558D:
mov     byte ptr [ecx+9], 9
jmp     short loc_445597

loc_445593:
mov     byte ptr [ecx+9], 2

loc_445597:
mov     word ptr [ecx+0Ah], 0
and     byte ptr [edx], 0FEh

loc_4455A0:
mov     bx, [edx+0Ah]
test    bx, bx
jz      short loc_4455B0
mov     esi, ebx
dec     esi
mov     [edx+0Ah], si

loc_4455B0:
test    byte ptr [edx+1], 8
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     di, [edx+36h]
dec     edi
mov     [edx+36h], di
test    di, di
jge     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
call    sub_4DE13B
mov     [edx+50h], eax
mov     esi, eax
test    eax, eax
jz      short loc_4455F6
mov     byte ptr [eax], 5
mov     esi, [edx+50h]
mov     byte ptr [esi+2], 80h
mov     eax, [edx+50h]
mov     byte ptr [eax+3], 41h ; 'A'
mov     esi, [edx+50h]
lea     edi, [esi+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4455F6:
mov     eax, ecx
call    sub_4DE2F6
mov     eax, [edx+44h]
call    sub_4DE3EA
mov     eax, [edx+48h]
call    sub_4DE3EA
mov     edx, [edx+40h]
or      byte ptr [edx+0Fh], 2
lea     esi, [ecx+190h]
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_4AFA70
mov     edx, esi
mov     eax, 0A1h
call    sub_4D8BC3
jmp     def_445C30      ; jumptable 00445C30 default case
sub_445530 endp         ; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case



sub_445639 proc near
push    edx
lea     edx, [eax+3D8h]
call    sub_4DE2F6
mov     eax, [edx+44h]
call    sub_4DE3EA
mov     eax, [edx+48h]
call    sub_4DE3EA
pop     edx
retn
sub_445639 endp




sub_445657 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 3D8h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_44566F
cmp     bl, 1
jz      short loc_445686
pop     edx
pop     ebx
retn

loc_44566F:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0
mov     word ptr [eax+4], 1Eh
mov     word ptr [eax+8], 0

loc_445686:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_445697
or      byte ptr [eax], 1

loc_445697:
pop     edx
pop     ebx
retn
sub_445657 endp




sub_44569A proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004451DD SIZE 00000009 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 3D8h
mov     [esp+1Ch+var_1C], eax
mov     dword ptr [eax+58h], offset byte_5F8364
test    byte ptr [eax+17h], 2
jz      short loc_4456C0
mov     word ptr [eax+8], 0

loc_4456C0:
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_4456D0
cmp     al, 1
jz      short loc_445707
jmp     def_446381      ; jumptable 00446381 default case

loc_4456D0:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+8], 0
mov     ax, [eax+2]
xor     ah, ah
and     al, 1Fh
add     eax, 10h
mov     edx, [esp+1Ch+var_1C]
mov     [edx+36h], ax
cmp     byte ptr [ebp+3], 0
jnz     short loc_445707
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+34h], 12Ch

loc_445707:
cmp     byte ptr [ebp+0A6h], 2
jnz     short loc_44571D
lea     edx, [ebp+14h]
mov     eax, 0B6h
call    sub_4D8BC3

loc_44571D:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+58h]
add     edx, 14h
lea     eax, [ebp+14h]
mov     ecx, 10h
call    sub_4DE552
mov     [ebp+64h], ax
mov     ax, [ebp+56h]
add     ax, [ebp+64h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, [esp+1Ch+var_1C]
mov     [edx+5Ch], eax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     edx, [ebp+14h]
sar     edx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
test    edx, edx
jge     short loc_445796
neg     eax

loc_445796:
cmp     eax, 20h ; ' '
jle     short loc_4457B8
mov     ax, [ebp+2Eh]
mov     [ebp+16h], ax
mov     eax, [ebp+38h]
mov     [ebp+20h], eax
mov     byte ptr [ebp+9], 0Ah

loc_4457AD:
mov     word ptr [ebp+0Ah], 0
jmp     def_446381      ; jumptable 00446381 default case

loc_4457B8:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+5Dh], 0Fh
jz      short loc_4457D9
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
mov     byte ptr [ebp+9], 0Bh
jmp     short loc_4457AD

loc_4457D9:
cmp     byte ptr [ebp+3], 0
jnz     short loc_4457F5
mov     bx, [eax+34h]
test    bx, bx
jnz     short loc_4457F5
mov     byte ptr [ebp+9], 4
mov     [ebp+0Ah], bx
jmp     def_446381      ; jumptable 00446381 default case

loc_4457F5:
cmp     dword ptr [ebp+80h], 20000h
jnb     short loc_44582A
mov     byte ptr [ebp+9], 0Ch
mov     word ptr [ebp+0Ah], 0
cmp     byte ptr [ebp+0A4h], 0Fh
jnb     short loc_44581F
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 8
jmp     def_446381      ; jumptable 00446381 default case

loc_44581F:
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0F7h
jmp     def_446381      ; jumptable 00446381 default case

loc_44582A:
cmp     byte ptr [ebp+3], 0
jnz     loc_4458A1
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+36h], 0
jnz     short loc_4458A1
push    100h
mov     eax, [eax+58h]
mov     edx, [eax+54h]
sar     edx, 10h
push    edx
lea     ecx, [eax+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
lea     eax, [ebp+1Ch]
mov     ebx, 100h
call    sub_4DE639
test    eax, eax
jz      short loc_4458A1
mov     eax, ebp
call    sub_446729
test    eax, eax
jbe     short loc_445879
cmp     eax, 1
jz      short loc_44587F
jmp     short loc_4458A1

loc_445879:
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 40h

loc_44587F:
mov     byte ptr [ebp+9], 0Ch
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax+1], 2
cmp     byte ptr [ebp+0A4h], 0Fh
jnb     short loc_44589E
or      byte ptr [eax], 8
jmp     short loc_4458A1

loc_44589E:
and     byte ptr [eax], 0F7h

loc_4458A1:
cmp     byte ptr [ebp+3], 1
jnz     def_446381      ; jumptable 00446381 default case
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+34h], 0
jnz     def_446381      ; jumptable 00446381 default case
push    300h
mov     eax, [eax+58h]
mov     edx, [eax+54h]
sar     edx, 10h
push    edx
lea     ecx, [eax+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
xor     eax, eax
mov     ebx, [esp+24h+var_1C]
mov     ax, [ebx+3Ch]
add     edx, eax
and     edx, 0FFFh
lea     eax, [ebp+1Ch]
mov     ebx, 18h
call    sub_4DE639
test    eax, eax
jz      def_446381      ; jumptable 00446381 default case
call    sub_4DE043
mov     edx, [esp+1Ch+var_1C]
mov     [edx+54h], eax
test    eax, eax
jz      def_446381      ; jumptable 00446381 default case
mov     byte ptr [eax], 1
mov     eax, [edx+54h]
mov     byte ptr [eax+2], 9
mov     eax, [edx+54h]
mov     byte ptr [eax+3], 0
mov     esi, [edx+54h]
lea     edi, [esi+14h]
lea     esi, [ebp+14h]
movsd
movsd
mov     esi, [edx+54h]
lea     edi, [esi+1Ch]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0FFFFF300h
mov     edx, [ebp+54h]
sar     edx, 10h
xor     eax, eax
mov     ecx, [esp+24h+var_1C]
mov     ax, [ecx+3Ch]
lea     ebx, [eax+edx]
and     ebx, 0FFFh
mov     eax, [ecx+54h]
lea     edx, [eax+1Ch]
add     eax, 14h
mov     ecx, 6E0h
call    sub_4DD4C5
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+54h]
mov     dx, [ebp+56h]
mov     [eax+64h], dx
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+34h], 3Ch ; '<'
mov     eax, [eax+40h]
or      byte ptr [eax+0Fh], 1
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
mov     byte ptr [eax+9], 0
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+48h]
mov     byte ptr [eax+9], 0
jmp     def_446381      ; jumptable 00446381 default case
sub_44569A endp




sub_44599E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+3D8h]
mov     dword ptr [esi+58h], offset byte_5F8364
test    byte ptr [esi+17h], 2
jz      short loc_4459BF
mov     word ptr [esi+8], 0

loc_4459BF:
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_4459CF
cmp     al, 1
jz      short loc_4459F1
jmp     loc_4451E0

loc_4459CF:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 2
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [esi+8], ax

loc_4459F1:
cmp     byte ptr [ebp+0A6h], 2
jnz     short loc_445A07
lea     edx, [ebp+14h]
mov     eax, 0B6h
call    sub_4D8BC3

loc_445A07:
test    byte ptr [esi+1], 1
jnz     short loc_445A15
or      byte ptr [esi], 1
jmp     loc_4451E0

loc_445A15:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     [esi+5Ch], eax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_445A5A
neg     eax

loc_445A5A:
cmp     eax, 20h ; ' '
jle     short loc_445A7C
mov     ax, [ebp+2Eh]
mov     [ebp+16h], ax
mov     eax, [ebp+38h]
mov     [ebp+20h], eax
mov     byte ptr [ebp+9], 0Ah

loc_445A71:
mov     word ptr [ebp+0Ah], 0
jmp     loc_4451E0

loc_445A7C:
test    byte ptr [esi+5Dh], 0Fh
jnz     short loc_445A88
test    byte ptr [esi+17h], 2
jz      short loc_445AA0

loc_445A88:
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
mov     byte ptr [ebp+9], 0Bh
jmp     short loc_445A71

loc_445AA0:
cmp     dword ptr [ebp+80h], offset loc_480000
jbe     loc_4451E0
push    400h
mov     eax, [ebp+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     eax, [esi+58h]
mov     edx, [eax+54h]
sar     edx, 10h
add     eax, 1Ch
mov     ebx, 800h
call    sub_4DE689
test    eax, eax
jz      loc_4451E0
mov     byte ptr [ebp+9], 0Dh
mov     word ptr [ebp+0Ah], 0
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_445AF8
or      byte ptr [esi], 8
jmp     loc_4451E0

loc_445AF8:
and     byte ptr [esi], 0F7h
jmp     loc_4451E0
sub_44599E endp




sub_445B00 proc near
push    ebx
push    edx
lea     edx, [eax+3D8h]
mov     bl, [eax+0Ah]
test    bl, bl
ja      short loc_445B20
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 0
mov     word ptr [edx+8], 0

loc_445B20:
pop     edx
pop     ebx
retn
sub_445B00 endp




sub_445B23 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dword ptr [edi+58h], offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_445B4B
cmp     al, 1
jz      loc_44621C      ; jumptable 00446167 case 4
; jumptable 0044664F case 3
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_445B4B:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 5
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [edi+58h]
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
sar     eax, 2
mov     [esi+66h], ax
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0
mov     eax, [edi+40h]
or      byte ptr [eax+0Fh], 1
mov     eax, [edi+44h]
mov     byte ptr [eax+9], 0
mov     eax, [edi+48h]
mov     byte ptr [eax+9], 0
jmp     loc_44621C      ; jumptable 00446167 case 4
sub_445B23 endp         ; jumptable 0044664F case 3

; START OF FUNCTION CHUNK FOR sub_446143

loc_445B9C:
mov     ecx, [esi+64h]
sar     ecx, 10h
jmp     loc_446240
; END OF FUNCTION CHUNK FOR sub_446143



sub_445BA7 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 3D8h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_445BBF
cmp     bl, 1
jz      short loc_445BD6
pop     edx
pop     ebx
retn

loc_445BBF:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 5
mov     word ptr [eax+4], 10h
mov     word ptr [eax+8], 0

loc_445BD6:
mov     bx, [edx+56h]
add     ebx, 80h
and     bh, 0Fh
mov     [edx+56h], bx
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jg      short loc_445BF8
or      byte ptr [eax], 1

loc_445BF8:
pop     edx
pop     ebx
retn
sub_445BA7 endp

jpt_445C30 dd offset loc_445C37 ; jump table for switch statement
dd offset loc_445C75
dd offset loc_445C9A
dd offset loc_445CB2
dd offset loc_445D10
dd offset loc_445D7E



sub_445C13 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dl, [eax+0Ah]
cmp     dl, 5           ; switch 6 cases
ja      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
xor     eax, eax
mov     al, dl
jmp     jpt_445C30[eax*4] ; switch jump

loc_445C37:             ; jumptable 00445C30 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 20h ; ' '
mov     word ptr [edi+8], 0
and     byte ptr [edi], 0DFh
and     byte ptr [esi+57h], 0Fh
cmp     word ptr [esi+6Eh], 0
jg      short loc_445C59
and     byte ptr [edi], 0FBh

loc_445C59:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFBA0h

loc_445C62:
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_445C75:             ; jumptable 00445C30 case 1
mov     byte ptr [esi+0Ah], 2
mov     word ptr [esi+44h], 0FE70h
mov     word ptr [esi+46h], 0
mov     word ptr [edi+4], 3
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     ebx, 0FFFFF6A0h
jmp     short loc_445C62

loc_445C9A:             ; jumptable 00445C30 case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jge     short loc_445CB2 ; jumptable 00445C30 case 3
mov     byte ptr [esi+0Ah], 3
mov     word ptr [esi+46h], 158h

loc_445CB2:             ; jumptable 00445C30 case 3
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     [edi+5Ch], eax
test    eax, eax
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
test    ah, 0Fh
jz      short loc_445CE4
mov     word ptr [esi+44h], 0

loc_445CE4:
test    byte ptr [edi+5Dh], 10h
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0ACh], 21h ; '!'
mov     byte ptr [esi+0Ah], 4
mov     word ptr [esi+44h], 0FF60h

loc_445CFF:
mov     word ptr [esi+46h], 0
mov     word ptr [edi+4], 6
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_445D10:             ; jumptable 00445C30 case 4
mov     cx, [edi+4]     ; jumptable 00445DD0 case 4
test    cx, cx
jz      short loc_445D20
mov     eax, ecx
dec     eax
mov     [edi+4], ax

loc_445D20:
mov     eax, 3
sub     ax, [edi+4]
shl     eax, 4
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     [edi+5Ch], eax
test    eax, eax
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
test    ah, 0Fh
jz      short loc_445D65
mov     word ptr [esi+44h], 0

loc_445D65:
test    byte ptr [edi+5Dh], 10h
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0Ah], 5
mov     word ptr [edi+4], 0Ah
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_445D7E:             ; jumptable 00445C30 case 5
mov     dx, [edi+4]     ; jumptable 00445DD0 case 5
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
or      byte ptr [edi], 1
jmp     def_445C30      ; jumptable 00445C30 default case
sub_445C13 endp         ; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
db 8Dh, 40h, 0
jpt_445DD0 dd offset loc_445DD7 ; jump table for switch statement
dd offset loc_445E15
dd offset loc_445E3A
dd offset loc_445E52
dd offset loc_445D10
dd offset loc_445D7E



sub_445DB3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dl, [eax+0Ah]
cmp     dl, 5           ; switch 6 cases
ja      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
xor     eax, eax
mov     al, dl
jmp     jpt_445DD0[eax*4] ; switch jump

loc_445DD7:             ; jumptable 00445DD0 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1Eh
mov     word ptr [edi+8], 0
and     byte ptr [edi], 0DFh
and     byte ptr [esi+57h], 0Fh
cmp     word ptr [esi+6Eh], 0
jg      short loc_445DF9
and     byte ptr [edi], 0FBh

loc_445DF9:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 460h

loc_445E02:
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_445E15:             ; jumptable 00445DD0 case 1
mov     byte ptr [esi+0Ah], 2
mov     word ptr [esi+44h], 190h
mov     word ptr [esi+46h], 0
mov     word ptr [edi+4], 3
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     ebx, 0FFFFF6A0h
jmp     short loc_445E02

loc_445E3A:             ; jumptable 00445DD0 case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jge     short loc_445E52 ; jumptable 00445DD0 case 3
mov     byte ptr [esi+0Ah], 3
mov     word ptr [esi+46h], 158h

loc_445E52:             ; jumptable 00445DD0 case 3
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     [edi+5Ch], eax
test    eax, eax
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
test    ah, 0Fh
jz      short loc_445E84
mov     word ptr [esi+44h], 0

loc_445E84:
test    byte ptr [edi+5Dh], 10h
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0ACh], 1Fh
mov     byte ptr [esi+0Ah], 4
mov     word ptr [esi+44h], 0A0h
jmp     loc_445CFF
sub_445DB3 endp

db 8Dh, 40h, 0
jpt_445ED8 dd offset loc_445EDF ; jump table for switch statement
dd offset loc_445EF6
dd offset loc_445F12
dd offset loc_445F2E
dd offset loc_445FAA



sub_445EBB proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 3D8h
mov     dl, [esi+0Ah]
cmp     dl, 4           ; switch 5 cases
ja      def_445ED8      ; jumptable 00445ED8 default case
and     edx, 0FFh
jmp     jpt_445ED8[edx*4] ; switch jump

loc_445EDF:             ; jumptable 00445ED8 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1Ch
mov     word ptr [eax+4], 7
mov     word ptr [eax+8], 0

loc_445EF6:             ; jumptable 00445ED8 case 1
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_445ED8      ; jumptable 00445ED8 default case
mov     byte ptr [esi+0Ah], 2
mov     word ptr [eax+4], 6

loc_445F12:             ; jumptable 00445ED8 case 2
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     def_445ED8      ; jumptable 00445ED8 default case
mov     byte ptr [esi+0Ah], 3
mov     word ptr [eax+4], 0Ah

loc_445F2E:             ; jumptable 00445ED8 case 3
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      short loc_445FA0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0F0h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+14h]
sar     eax, 10h
mov     edx, [esi+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_445F7E
neg     eax

loc_445F7E:
cmp     eax, 20h ; ' '
jle     short def_445ED8 ; jumptable 00445ED8 default case
mov     ax, [esi+2Eh]
mov     [esi+16h], ax
mov     eax, [esi+38h]
mov     [esi+20h], eax
mov     byte ptr [esi+9], 0Ah
mov     word ptr [esi+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_445FA0:
mov     byte ptr [esi+0Ah], 4
mov     word ptr [eax+4], 7

loc_445FAA:             ; jumptable 00445ED8 case 4
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     short def_445ED8 ; jumptable 00445ED8 default case
or      byte ptr [eax], 21h

def_445ED8:             ; jumptable 00445ED8 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_445EBB endp

db 8Dh, 40h, 0
jpt_445FF4 dd offset loc_445FFB ; jump table for switch statement
dd offset loc_446012
dd offset loc_44607C
dd offset loc_446098
dd offset loc_4460B9



sub_445FD7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 3D8h
mov     dl, [esi+0Ah]
cmp     dl, 4           ; switch 5 cases
ja      def_445FF4      ; jumptable 00445FF4 default case
and     edx, 0FFh
jmp     jpt_445FF4[edx*4] ; switch jump

loc_445FFB:             ; jumptable 00445FF4 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1Dh
mov     word ptr [eax+4], 0Dh
mov     word ptr [eax+8], 0

loc_446012:             ; jumptable 00445FF4 case 1
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jl      short loc_446072
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFB0h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, [esi+2Ch]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
test    edx, edx
jge     short loc_446064
neg     eax

loc_446064:
cmp     eax, 20h ; ' '
jle     def_445FF4      ; jumptable 00445FF4 default case
jmp     loc_446111

loc_446072:
mov     byte ptr [esi+0Ah], 2
mov     word ptr [eax+4], 3

loc_44607C:             ; jumptable 00445FF4 case 2
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_445FF4      ; jumptable 00445FF4 default case
mov     byte ptr [esi+0Ah], 3
mov     word ptr [eax+4], 8

loc_446098:             ; jumptable 00445FF4 case 3
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     def_445FF4      ; jumptable 00445FF4 default case
mov     byte ptr [esi+0Ah], 4
mov     word ptr [eax+4], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4460B9:             ; jumptable 00445FF4 case 4
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4460CA
or      byte ptr [eax], 21h

loc_4460CA:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFF80h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+14h]
sar     eax, 10h
mov     edx, [esi+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_44610C
neg     eax

loc_44610C:
cmp     eax, 20h ; ' '
jle     short def_445FF4 ; jumptable 00445FF4 default case

loc_446111:
mov     ax, [esi+2Eh]
mov     [esi+16h], ax
mov     eax, [esi+38h]
mov     [esi+20h], eax
mov     byte ptr [esi+9], 0Ah
mov     word ptr [esi+0Ah], 0

def_445FF4:             ; jumptable 00445FF4 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_445FD7 endp

db 90h
jpt_446167 dd offset loc_44616E ; jump table for switch statement
dd offset loc_446185
dd offset loc_4461A6
dd offset loc_4461DB
dd offset loc_44621C



sub_446143 proc near

; FUNCTION CHUNK AT 00445B9C SIZE 0000000B BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dword ptr [edi+58h], offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
and     eax, 0FFh
jmp     jpt_446167[eax*4] ; switch jump

loc_44616E:             ; jumptable 00446167 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 11h
mov     word ptr [edi+4], 0Ah
mov     word ptr [edi+8], 0

loc_446185:             ; jumptable 00446167 case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     short loc_446199
mov     byte ptr [esi+0Ah], 2
jmp     short loc_4461A6 ; jumptable 00446167 case 2

loc_446199:
mov     eax, edx
mov     edx, 0Ah
sub     edx, eax
mov     [esi+46h], dx

loc_4461A6:             ; jumptable 00446167 case 2
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 7
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
test    ah, 10h
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 12h
mov     word ptr [edi+4], 3

loc_4461DB:             ; jumptable 00446167 case 3
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     short def_445C30 ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0Ah], 4

loc_4461ED:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [edi+58h]
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
mov     edx, eax
mov     ecx, 3
sar     edx, 1Fh
idiv    ecx
mov     [esi+66h], ax
mov     word ptr [edi+4], 3

loc_44621C:             ; jumptable 00446167 case 4
mov     dx, [edi+4]     ; jumptable 0044664F case 3
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     short loc_44622D
or      byte ptr [edi], 1

loc_44622D:
cmp     word ptr [esi+66h], 0
jge     loc_445B9C
mov     ecx, [esi+64h]
sar     ecx, 10h
neg     ecx

loc_446240:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [edi+58h]
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

def_445C30:             ; jumptable 00445C30 default case
pop     edi             ; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_446143 endp




sub_446265 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 3D8h
mov     dl, [esi+0Ah]
cmp     dl, 1
jb      short loc_446288
jbe     short loc_4462A7
cmp     dl, 2
jz      loc_44632A
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_446288:
test    dl, dl
jnz     loc_44633B
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 13h
mov     word ptr [eax+4], 0Dh
mov     word ptr [eax+8], 0

loc_4462A7:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      short loc_446319
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFF10h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+14h]
sar     eax, 10h
mov     edx, [esi+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_4462F7
neg     eax

loc_4462F7:
cmp     eax, 20h ; ' '
jle     short loc_44633B
mov     ax, [esi+2Eh]
mov     [esi+16h], ax
mov     eax, [esi+38h]
mov     [esi+20h], eax
mov     byte ptr [esi+9], 0Ah
mov     word ptr [esi+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_446319:
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 0
mov     word ptr [eax+4], 6

loc_44632A:
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     short loc_44633B
or      byte ptr [eax], 1

loc_44633B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_446265 endp

db 8Dh, 40h, 0
jpt_446381 dd offset loc_446388 ; jump table for switch statement
dd offset loc_4463BF
dd offset loc_44645D
dd offset loc_4465B7
dd offset loc_4465D7



sub_446357 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004451DD SIZE 00000009 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 3D8h
mov     [esp+1Ch+var_1C], eax
mov     dword ptr [eax+58h], offset byte_5F8364
mov     al, [ebp+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_446381      ; jumptable 00446381 default case
and     eax, 0FFh
jmp     jpt_446381[eax*4] ; switch jump

loc_446388:             ; jumptable 00446381 case 0
mov     byte ptr [ebp+0Ah], 1
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 8
jz      short loc_4463A3
mov     byte ptr [ebp+0ACh], 18h
mov     word ptr [ebp+48h], 0FFE4h
jmp     short loc_4463B0

loc_4463A3:
mov     byte ptr [ebp+0ACh], 14h
mov     word ptr [ebp+48h], 1Ch

loc_4463B0:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 5
mov     word ptr [eax+8], 0

loc_4463BF:             ; jumptable 00446381 case 1
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short loc_4463F5
mov     byte ptr [ebp+0Ah], 2
inc     byte ptr [ebp+0ACh]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0Ah
lea     edx, [ebp+14h]
mov     eax, 0B7h
call    sub_4D8BC3
jmp     def_446381      ; jumptable 00446381 default case

loc_4463F5:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_446437
neg     eax

loc_446437:
cmp     eax, 20h ; ' '
jle     def_446381      ; jumptable 00446381 default case
mov     ax, [ebp+2Eh]
mov     [ebp+16h], ax
mov     eax, [ebp+38h]
mov     [ebp+20h], eax
mov     byte ptr [ebp+9], 0Ah
mov     word ptr [ebp+0Ah], 0
jmp     def_446381      ; jumptable 00446381 default case

loc_44645D:             ; jumptable 00446381 case 2
mov     eax, [esp+1Ch+var_1C]
dec     word ptr [eax+4]
mov     eax, [eax+2]
sar     eax, 10h
mov     edx, 5
sub     edx, eax
mov     eax, edx
shl     eax, 2
mov     [ebp+46h], ax
mov     ecx, [ebp+46h]
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [ebp+44h]
sar     ebx, 10h
shl     ebx, 4
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
test    ah, 10h
jz      def_446381      ; jumptable 00446381 default case
lea     edx, [ebp+14h]
mov     eax, 0B8h
call    sub_4D8BC3
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+1], 2
jz      loc_44659F
push    300h
mov     eax, [eax+58h]
mov     edx, [eax+54h]
sar     edx, 10h
push    edx
lea     ecx, [eax+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
xor     eax, eax
mov     ebx, [esp+24h+var_1C]
mov     ax, [ebx+3Ch]
add     edx, eax
and     edx, 0FFFh
lea     eax, [ebp+1Ch]
mov     ebx, 18h
call    sub_4DE639
test    eax, eax
jz      loc_44659F
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax+1], 0FDh
call    sub_4DE043
mov     edx, [esp+1Ch+var_1C]
mov     [edx+54h], eax
test    eax, eax
jz      loc_44659F
mov     byte ptr [eax], 1
mov     eax, [edx+54h]
mov     byte ptr [eax+2], 9
mov     eax, [edx+54h]
mov     byte ptr [eax+3], 0
mov     esi, [edx+54h]
lea     edi, [esi+14h]
lea     esi, [ebp+14h]
movsd
movsd
mov     esi, [edx+54h]
lea     edi, [esi+1Ch]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0FFFFF300h
mov     ebx, [ebp+54h]
sar     ebx, 10h
xor     edx, edx
mov     ecx, [esp+24h+var_1C]
mov     dx, [ecx+3Ch]
add     ebx, edx
and     ebx, 0FFFh
mov     eax, [ecx+54h]
lea     edx, [eax+1Ch]
add     eax, 14h
mov     ecx, 6E0h
call    sub_4DD4C5
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+54h]
mov     dx, [ebp+56h]
mov     [eax+64h], dx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+40h]
or      byte ptr [eax+0Fh], 1
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
mov     byte ptr [eax+9], 0
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+48h]
mov     byte ptr [eax+9], 0

loc_44659F:
mov     byte ptr [ebp+0Ah], 3
inc     byte ptr [ebp+0ACh]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 4
jmp     def_446381      ; jumptable 00446381 default case

loc_4465B7:             ; jumptable 00446381 case 3
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4465D7 ; jumptable 00446381 case 4
test    byte ptr [eax], 40h
jz      short loc_4465D7 ; jumptable 00446381 case 4
mov     byte ptr [ebp+0Ah], 4
mov     word ptr [eax+4], 0Fh

loc_4465D7:             ; jumptable 00446381 case 4
mov     eax, [esp+1Ch+var_1C]
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     def_446381      ; jumptable 00446381 default case
mov     dh, [eax]
or      dh, 1
mov     [eax], dh
test    dh, 40h
jz      short loc_44660D
test    dh, 8
jz      short loc_446603
add     byte ptr [ebp+57h], 4
jmp     short loc_446609

loc_446603:
sub     word ptr [ebp+56h], 400h

loc_446609:
and     byte ptr [ebp+57h], 0Fh

loc_44660D:
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0BFh
jmp     def_446381      ; jumptable 00446381 default case
sub_446357 endp

db 8Dh, 40h, 0
jpt_44664F dd offset loc_446656 ; jump table for switch statement
dd offset loc_44667B
dd offset loc_44670E
dd offset loc_44621C



sub_44662B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dword ptr [edi+58h], offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
and     eax, 0FFh
jmp     jpt_44664F[eax*4] ; switch jump

loc_446656:             ; jumptable 0044664F case 0
mov     byte ptr [esi+0Ah], 1
test    byte ptr [edi], 8
jz      short loc_446668
mov     byte ptr [esi+0ACh], 1Bh
jmp     short loc_44666F

loc_446668:
mov     byte ptr [esi+0ACh], 17h

loc_44666F:
mov     word ptr [edi+4], 6
mov     word ptr [edi+8], 0

loc_44667B:             ; jumptable 0044664F case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jl      loc_446704
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 180h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     [edi+5Ch], eax
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, [esi+2Ch]
sar     eax, 10h
sub     edx, eax
test    edx, edx
jge     short loc_4466D2
neg     edx

loc_4466D2:
cmp     edx, 20h ; ' '
jle     short loc_4466F4
mov     ax, [esi+2Eh]
mov     [esi+16h], ax
mov     eax, [esi+38h]
mov     [esi+20h], eax
mov     byte ptr [esi+9], 0Ah

loc_4466E9:
mov     word ptr [esi+0Ah], 0
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_4466F4:
test    byte ptr [edi+5Dh], 0Fh
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+9], 0Bh
jmp     short loc_4466E9

loc_446704:
mov     byte ptr [esi+0Ah], 2
mov     word ptr [edi+4], 4

loc_44670E:             ; jumptable 0044664F case 2
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0Ah], 3
jmp     loc_4461ED
sub_44662B endp




sub_446729 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+3D8h]
mov     word ptr [eax+64h], 0
mov     ax, [eax+64h]
cwde
mov     [edx+4Ch], eax

loc_446742:
mov     ebx, [edx+4Ch]
cmp     ebx, 2
jge     short loc_446772
mov     al, ds:byte_515130[ebx]
xor     ah, ah
add     [ecx+64h], ax
mov     ax, [edx+2]
xor     ah, ah
and     al, 0Fh
xor     ebx, ebx
mov     bx, ax
mov     eax, [ecx+62h]
sar     eax, 10h
cmp     ebx, eax
jl      short loc_446772
inc     dword ptr [edx+4Ch]
jmp     short loc_446742

loc_446772:
mov     eax, [edx+4Ch]
pop     edx
pop     ecx
pop     ebx
retn
sub_446729 endp




sub_446779 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+3D8h]
mov     edx, [ebx+14h]
and     edx, 0FFFFFFh
mov     [ebx+4Ch], edx
jz      loc_446936
test    byte ptr [ebx+17h], 38h
jz      loc_446929
mov     ax, [ecx+6Eh]
mov     [ecx+0B2h], ax
mov     ax, [ebx+4Ch]
mov     dx, [ecx+6Eh]
sub     edx, eax
mov     [ecx+6Eh], dx
test    dx, dx
jg      short loc_4467EF
mov     di, [ebx]
and     edi, 0FFFFF7DDh
mov     [ebx], di
mov     eax, edi
or      eax, 820h
mov     [ebx], ax
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
mov     [ebx+4Ch], eax

loc_4467EF:
lea     edx, [ecx+14h]
test    byte ptr [ebx], 20h
jz      loc_4468E4
mov     ax, [ebx+4Ch]
add     [ebx+0Ah], ax
test    byte ptr [ebx+17h], 20h
jnz     short loc_44682A
xor     eax, eax
mov     al, [ecx+2]
mov     esi, ds:dword_55A10C
mov     esi, [esi+eax*4]
xor     eax, eax
mov     al, [esi+9]
mov     esi, [ebx+8]
sar     esi, 10h
cmp     esi, eax
jl      loc_4468DD

loc_44682A:
lea     esi, [ecx+14h]
mov     edx, esi
mov     eax, 0A2h
call    sub_4D8BC3
lea     edx, [ebx+1Ch]
test    byte ptr [ebx+22h], 1
jz      short loc_446887
mov     eax, esi
call    sub_4DDDB4
mov     [ecx+64h], ax
mov     edx, [ecx+54h]
sar     edx, 10h
mov     eax, [ecx+62h]
sar     eax, 10h
sub     edx, eax
lea     eax, [edx+400h]
and     eax, 0FFFh
cmp     eax, 800h
jge     short loc_446877
mov     byte ptr [ecx+9], 6

loc_446871:
mov     ax, [ecx+64h]
jmp     short loc_4468CB

loc_446877:
mov     byte ptr [ecx+9], 7
mov     ax, [ecx+64h]
add     ah, 8
and     ah, 0Fh
jmp     short loc_4468CB

loc_446887:
mov     eax, offset unk_515132
call    sub_4DDDB4
mov     [ecx+64h], ax
mov     edx, [ecx+62h]
sar     edx, 10h
mov     eax, [ecx+54h]
sar     eax, 10h
sub     edx, eax
add     edx, 400h
and     edx, 0FFFh
cmp     edx, 800h
jge     short loc_4468BD
mov     byte ptr [ecx+9], 7
jmp     short loc_446871

loc_4468BD:
mov     byte ptr [ecx+9], 6
mov     ax, [ecx+64h]
add     ah, 8
and     ah, 0Fh

loc_4468CB:
mov     [ecx+56h], ax
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ebx+0Ah], 0
jmp     short loc_44691E

loc_4468DD:
mov     eax, 0A0h
jmp     short loc_446919

loc_4468E4:
test    byte ptr [ebx+17h], 20h
jnz     short loc_44690A
xor     eax, eax
mov     al, [ecx+2]
mov     esi, ds:dword_55A10C
mov     eax, [esi+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
mov     ebx, [ebx+8]
sar     ebx, 10h
cmp     ebx, eax
jl      short loc_446914

loc_44690A:
lea     edx, [ecx+14h]
mov     eax, 0A2h
jmp     short loc_446919

loc_446914:
mov     eax, 0A0h

loc_446919:
call    sub_4D8BC3

loc_44691E:
mov     word ptr [ecx+15Eh], 7FFFh
jmp     short loc_446936

loc_446929:
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_446936:
mov     eax, 1
jmp     def_445C30      ; jumptable 00445C30 default case
sub_446779 endp         ; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case



sub_446940 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 3D8h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+5Ch]
lea     esi, [ebp+54h]
movsd
movsd
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     edx, [esp+1Ch+var_1C]
mov     [edx+2], ax
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_446995[edx*4]
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_4469BB
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_4469C2

loc_4469BB:
mov     eax, ebp
call    sub_4DEADD

loc_4469C2:
test    byte ptr [ebp+0], 2
jz      short loc_4469DB
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4469DB:
test    byte ptr [ebp+0], 1
jz      short loc_446A2B
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 4
jz      short loc_446A2B
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+190h]
movsd
movsd
push    0
push    offset unk_800000
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     ax, [edx+8]
or      eax, 4880000h
push    eax
lea     eax, [edx+14h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [edx+0Ch]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 50h ; 'P'
call    sub_4E01FC

loc_446A2B:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+14h], 0

def_446FDF:             ; jumptable 00446FDF default case
add     esp, 4
jmp     def_44720A      ; jumptable 0044720A default case
sub_446940 endp




sub_446A3D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+3D8h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
test    byte ptr [ecx+3], 20h
jz      short loc_446A9B
mov     word ptr [esi], 0
jmp     short loc_446AA0

loc_446A9B:
mov     word ptr [esi], 0Eh

loc_446AA0:
mov     dword ptr [esi+4], 0
test    byte ptr [ecx+0Ch], 10h
jz      short loc_446AB3
mov     word ptr [esi+6], 1

loc_446AB3:
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+18h], 0
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     edx, [esi+4]
sar     edx, 10h
shl     edx, 4
mov     eax, [eax]
mov     dl, [edx+eax+0Fh]
and     edx, 0FFh
lea     eax, [esi+24h]
mov     ebx, 0FFFFFFA0h
call    sub_4E19B9
mov     word ptr [esi+34h], 0
mov     word ptr [esi+36h], 0
mov     word ptr [esi+38h], 4
mov     ax, [ecx+1Ah]
mov     [esi+3Ah], ax
mov     dword ptr [esi+40h], 0
mov     word ptr [esi+44h], 0
mov     dword ptr [esi+48h], 0
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     edx, [esi+4]
sar     edx, 10h
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+8]
xor     ah, ah
mov     edx, eax
shl     edx, 4
mov     al, [ecx+0Fh]
and     al, 7Fh
cbw
inc     eax
imul    edx, eax
mov     [ecx+6Eh], dx
mov     [ecx+0B0h], dx
mov     [ecx+0B2h], dx
mov     dword ptr [ecx+78h], offset unk_515174
mov     dword ptr [ecx+10h], 0
test    byte ptr [ecx+3], 40h
jz      short loc_446BA7
add     word ptr [ecx+16h], 20h ; ' '
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 8
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 0Ch
jmp     short loc_446BD0

loc_446BA7:
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx

loc_446BD0:
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+15Eh], 4210h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_446A3D endp




sub_446BE5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+3D8h]
test    byte ptr [eax+3], 20h
jnz     short loc_446C0C
lea     eax, [ecx+24h]
mov     edx, ebp
call    sub_4E19CA
test    eax, eax
jz      short loc_446C0C
or      byte ptr [ecx], 10h
jmp     short loc_446C0F

loc_446C0C:
and     byte ptr [ecx], 0EFh

loc_446C0F:
test    byte ptr [ecx], 2
jz      short loc_446C1B
mov     eax, ebp
call    sub_447CDC

loc_446C1B:
xor     ebx, ebx
mov     bl, [ebp+9]
mov     eax, ebp
call    ds:funcs_446C22[ebx*4]
mov     bh, [ecx]
test    bh, 1
jz      short loc_446C78
mov     al, [ebp+9]
cmp     al, 1
jb      short loc_446C5F
jbe     short loc_446C3F
cmp     al, 6
jz      short loc_446C47
jmp     short loc_446C5F

loc_446C3F:
mov     al, [ebp+0Eh]
mov     [ebp+9], al
jmp     short loc_446C6B

loc_446C47:
cmp     word ptr [ebp+6Eh], 32h ; '2'
jg      short loc_446C54
mov     byte ptr [ebp+9], 5
jmp     short loc_446C6B

loc_446C54:
test    bh, 10h
jz      short loc_446C64

loc_446C59:
mov     byte ptr [ebp+9], 9
jmp     short loc_446C6B

loc_446C5F:
test    byte ptr [ecx], 10h
jnz     short loc_446C59

loc_446C64:
mov     eax, ebp
call    sub_447B88

loc_446C6B:
and     byte ptr [ebp+3], 0BFh
mov     word ptr [ebp+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_446C78:
mov     bx, [ecx+34h]
test    bx, bx
jz      short loc_446C88
mov     esi, ebx
dec     esi
mov     [ecx+34h], si

loc_446C88:
mov     di, [ecx+36h]
test    di, di
jz      short loc_446C98
mov     eax, edi
dec     eax
mov     [ecx+36h], ax

loc_446C98:
mov     dx, [ecx+0Ah]
test    dx, dx
jz      short loc_446CA8
mov     ebx, edx
dec     ebx
mov     [ecx+0Ah], bx

loc_446CA8:
test    byte ptr [ecx], 40h
jz      def_44720A      ; jumptable 0044720A default case
mov     si, [ecx+38h]
dec     esi
mov     [ecx+38h], si
test    si, si
jge     def_44720A      ; jumptable 0044720A default case
call    sub_4DE13B
mov     [ecx+40h], eax
test    eax, eax
jz      short loc_446CEB
mov     byte ptr [eax], 5
mov     eax, [ecx+40h]
mov     byte ptr [eax+2], 80h
mov     eax, [ecx+40h]
mov     byte ptr [eax+3], 41h ; 'A'
mov     esi, [ecx+40h]
lea     edi, [esi+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_446CEB:
mov     eax, ebp
call    sub_4DE2F6
mov     ebx, [ecx+4]
sar     ebx, 10h
lea     ecx, [ebp+190h]
mov     edx, ecx
mov     eax, ebp
call    sub_4AFA70
mov     edx, ecx
mov     eax, 0A1h
call    sub_4D8BC3
jmp     def_44720A      ; jumptable 0044720A default case
sub_446BE5 endp



; Attributes: thunk

sub_446D18 proc near
jmp     sub_4DE2F6
sub_446D18 endp




sub_446D1D proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 3D8h
mov     bl, [edx+0Ah]
cmp     bl, 1
jb      short loc_446D38
jbe     short loc_446D64
cmp     bl, 2
jz      short loc_446D78
pop     edx
pop     ebx
retn

loc_446D38:
test    bl, bl
jnz     loc_446DB4
mov     byte ptr [edx+0Ah], 1
test    byte ptr [edx+3], 80h
jz      short loc_446D4D
inc     byte ptr [edx+0Ah]

loc_446D4D:
and     byte ptr [edx+3], 7Fh
mov     byte ptr [edx+0ACh], 0
mov     word ptr [eax+4], 1Eh
mov     word ptr [eax+8], 0

loc_446D64:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_446DB4
or      byte ptr [eax], 1
pop     edx
pop     ebx
retn

loc_446D78:
or      byte ptr [eax], 20h
test    byte ptr [edx+3], 20h
jz      short loc_446D95
mov     ax, [eax+3Ah]
and     eax, 0FFFFh
call    sub_47E888
test    eax, eax
jz      short loc_446DB4
jmp     short loc_446DAA

loc_446D95:
cmp     dword ptr [edx+80h], 320000h
jb      short loc_446DAA
test    dword ptr [eax+14h], 0FFFFFFh
jz      short loc_446DB4

loc_446DAA:
mov     byte ptr [edx+9], 3
mov     word ptr [edx+0Ah], 0

loc_446DB4:
pop     edx
pop     ebx
retn
sub_446D1D endp




sub_446DB7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+3D8h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_446DD5
cmp     al, 1
jz      short loc_446E43
jmp     def_44720A      ; jumptable 0044720A default case

loc_446DD5:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     ebp, [esi+14h]
mov     ecx, 800h
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_446E19
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
neg     eax
jmp     short loc_446E30

loc_446E19:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552

loc_446E30:
sar     eax, 3
mov     [esi+66h], ax
mov     word ptr [edi+4], 8
mov     word ptr [edi+8], 0

loc_446E43:
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     short loc_446E54
or      byte ptr [edi], 1

loc_446E54:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     [edi+44h], ax
mov     ax, [esi+56h]
add     ax, [edi+44h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     def_44720A      ; jumptable 0044720A default case
sub_446DB7 endp




sub_446E85 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 3D8h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_446EA8
cmp     al, 1
jz      short loc_446EBC
jmp     def_446FDF      ; jumptable 00446FDF default case

loc_446EA8:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+8], 0

loc_446EBC:
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_446ED2
lea     edx, [ebp+14h]
mov     eax, 0B0h
call    sub_4D8BC3

loc_446ED2:
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 34h ; '4'
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, [esp+1Ch+var_1C]
mov     [edx+48h], eax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_446F29
neg     eax

loc_446F29:
cmp     eax, 20h ; ' '
jle     short loc_446F64
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
mov     byte ptr [ebp+9], 1
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 10h
jz      short loc_446F5B

loc_446F52:
mov     byte ptr [ebp+0Eh], 4
jmp     def_446FDF      ; jumptable 00446FDF default case

loc_446F5B:
mov     byte ptr [ebp+0Eh], 2
jmp     def_446FDF      ; jumptable 00446FDF default case

loc_446F64:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+49h], 0Fh
jz      short loc_446F7E
mov     byte ptr [ebp+9], 1
mov     word ptr [ebp+0Ah], 0
test    byte ptr [eax], 10h
jnz     short loc_446F52
jmp     short loc_446F5B

loc_446F7E:
mov     dh, [eax]
test    dh, 10h
jz      def_446FDF      ; jumptable 00446FDF default case
mov     bl, dh
or      bl, 1
mov     [eax], bl
jmp     def_446FDF      ; jumptable 00446FDF default case
sub_446E85 endp

align 4
jpt_446FDF dd offset loc_446FE6 ; jump table for switch statement
dd offset loc_44702B
dd offset loc_44704A
dd offset loc_447097
dd offset loc_4470AB
dd offset loc_4471A8



sub_446FB0 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 3D8h
mov     [esp+1Ch+var_1C], eax
test    byte ptr [eax+17h], 2
jz      short loc_446FCF
mov     word ptr [eax+8], 0

loc_446FCF:
mov     al, [ebp+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_446FDF      ; jumptable 00446FDF default case
and     eax, 0FFh
jmp     jpt_446FDF[eax*4] ; switch jump

loc_446FE6:             ; jumptable 00446FDF case 0
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 2
mov     word ptr [ebp+64h], 0
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 5
xor     eax, eax
mov     al, [ebp+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+4]
sar     edx, 10h
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+0Ah]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax

loc_44702B:             ; jumptable 00446FDF case 1
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     def_446FDF      ; jumptable 00446FDF default case
mov     byte ptr [ebp+0Ah], 2
mov     word ptr [eax+4], 5

loc_44704A:             ; jumptable 00446FDF case 2
mov     eax, [esp+1Ch+var_1C]
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jg      def_446FDF      ; jumptable 00446FDF default case
mov     byte ptr [ebp+0Ah], 3
lea     edx, [ebp+14h]
mov     eax, 0B4h
call    sub_4D8BC3
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 20h
jz      short loc_44708C
movsx   ax, byte ptr [ebp+0Dh]
mov     edx, [esp+1Ch+var_1C]
mov     [edx+4], ax
and     byte ptr [edx], 0DFh
jmp     def_446FDF      ; jumptable 00446FDF default case

loc_44708C:
mov     word ptr [eax+4], 2Dh ; '-'
jmp     def_446FDF      ; jumptable 00446FDF default case

loc_447097:             ; jumptable 00446FDF case 3
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+4], 4
jge     short loc_4470AB ; jumptable 00446FDF case 4
mov     byte ptr [ebp+0Ah], 4
mov     word ptr [ebp+64h], 100h

loc_4470AB:             ; jumptable 00446FDF case 4
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jl      loc_447192
test    byte ptr [eax+17h], 2
jz      short loc_4470D5
mov     byte ptr [ebp+9], 6
mov     word ptr [ebp+0Ah], 0
jmp     def_446FDF      ; jumptable 00446FDF default case

loc_4470D5:
mov     ecx, [ebp+62h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     edx, [esp+1Ch+var_1C]
mov     [edx+44h], ax
mov     ax, [ebp+56h]
add     ax, [edx+44h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 300h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, [esp+1Ch+var_1C]
mov     [edx+48h], eax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_44714C
neg     eax

loc_44714C:
cmp     eax, 20h ; ' '
jle     short loc_44717A
or      byte ptr [ebp+3], 40h
mov     byte ptr [ebp+9], 8
mov     word ptr [ebp+0Ah], 0
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0FFFFh

loc_44717A:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+49h], 0Fh
jz      def_446FDF      ; jumptable 00446FDF default case
mov     word ptr [eax+4], 0FFFFh
jmp     def_446FDF      ; jumptable 00446FDF default case

loc_447192:
mov     byte ptr [ebp+0Ah], 5
inc     byte ptr [ebp+0ACh]
mov     word ptr [eax+4], 0Ah
mov     word ptr [eax+8], 0

loc_4471A8:             ; jumptable 00446FDF case 5
test    byte ptr [ebp+3], 20h
jz      short loc_4471B5
mov     eax, ebp
call    sub_4DE2F6

loc_4471B5:
mov     eax, [esp+1Ch+var_1C]
mov     di, [eax+4]
dec     edi
mov     [eax+4], di
test    di, di
jge     def_446FDF      ; jumptable 00446FDF default case
or      byte ptr [eax], 1
mov     word ptr [eax+34h], 1Eh
jmp     def_446FDF      ; jumptable 00446FDF default case
sub_446FB0 endp

jpt_44720A dd offset loc_447211 ; jump table for switch statement
dd offset loc_447235
dd offset loc_4472BE
dd offset loc_4472E5
dd offset loc_447311



sub_4471EC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+3D8h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_44720A      ; jumptable 0044720A default case
and     eax, 0FFh
jmp     jpt_44720A[eax*4] ; switch jump

loc_447211:             ; jumptable 0044720A case 0
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 15h
mov     word ptr [esi+4], 0Dh
mov     word ptr [esi+8], 0
lea     edx, [ebp+14h]
mov     eax, 0B1h
call    sub_4D8BC3

loc_447235:             ; jumptable 0044720A case 1
mov     ax, [esi+4]
dec     eax
mov     [esi+4], ax
test    ax, ax
jge     short loc_44725E
mov     byte ptr [ebp+0Ah], 2
cmp     word ptr [esi+6], 0
jz      short loc_447256
mov     word ptr [esi+4], 0
jmp     short loc_4472BE ; jumptable 0044720A case 2

loc_447256:
mov     word ptr [esi+4], 10h
jmp     short loc_4472BE ; jumptable 0044720A case 2

loc_44725E:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFF90h

loc_447267:
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56

loc_447275:
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     esi, [ebp+14h]
sar     esi, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     esi, eax
test    esi, esi
jge     short loc_4472A0
neg     esi

loc_4472A0:
cmp     esi, 20h ; ' '
jle     short def_44720A ; jumptable 0044720A default case
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd

def_44720A:             ; jumptable 0044720A default case
pop     ebp

def_447641:             ; jumptable 00447641 default case
pop     edi             ; jumptable 004477C9 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4472BE:             ; jumptable 0044720A case 2
mov     cx, [esi+4]
dec     ecx
mov     [esi+4], cx
test    cx, cx
jg      short def_44720A ; jumptable 0044720A default case
mov     byte ptr [ebp+0Ah], 3
inc     byte ptr [ebp+0ACh]
mov     word ptr [esi+4], 0Bh
mov     eax, ebp
call    sub_447C08
jmp     short def_44720A ; jumptable 0044720A default case

loc_4472E5:             ; jumptable 0044720A case 3
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jl      short loc_447307
mov     edx, [esi+2]
sar     edx, 10h
neg     edx
shl     edx, 5
xor     ecx, ecx
xor     ebx, ebx
jmp     loc_447267

loc_447307:
mov     byte ptr [ebp+0Ah], 4
mov     word ptr [esi+4], 6

loc_447311:             ; jumptable 0044720A case 4
mov     cx, [esi+4]
dec     ecx
mov     [esi+4], cx
test    cx, cx
jl      short loc_44732D
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0E0h
jmp     loc_447267

loc_44732D:
xor     eax, eax
mov     al, [ebp+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     edx, [esi+4]
sar     edx, 10h
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+0Ch]
xor     ah, ah
mov     [esi+34h], ax
or      byte ptr [esi], 1
jmp     def_44720A      ; jumptable 0044720A default case
sub_4471EC endp




sub_44735A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+3D8h]
test    byte ptr [ebx+17h], 2
jz      short loc_447372
mov     word ptr [ebx+8], 0

loc_447372:
mov     al, [ecx+0Ah]
cmp     al, 1
jb      short loc_44738C
jbe     loc_447407
cmp     al, 2
jz      loc_44755B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44738C:
test    al, al
jnz     loc_447578
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [ecx+0ACh], 4
mov     eax, [ecx+54h]
sar     eax, 10h
call    sub_4EF008
neg     eax
shl     eax, 5
sar     eax, 0Ch
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 20h ; ' '
mov     word ptr [ecx+4Eh], 10h
mov     eax, [ecx+54h]
sar     eax, 10h
call    sub_4EF003
neg     eax
shl     eax, 5
sar     eax, 0Ch
mov     [ecx+48h], ax
mov     word ptr [ebx+4], 73h ; 's'
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     edx, [ebx+4]
sar     edx, 10h
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+0Ah]
xor     ah, ah
mov     [ebx+8], ax
and     byte ptr [ebx], 0F7h

loc_447407:
cmp     byte ptr [ecx+0A6h], 1
jnz     short loc_44741D
lea     edx, [ecx+14h]
mov     eax, 0B5h
call    sub_4D8BC3

loc_44741D:
mov     dx, [ebx+4]
dec     edx
mov     [ebx+4], dx
test    dx, dx
jl      loc_44754B
test    byte ptr [ebx+17h], 2
jnz     loc_44754B
cmp     word ptr [ecx+6Eh], 0
jg      short loc_447448
or      byte ptr [ebx], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_447448:
cmp     dx, 64h ; 'd'
jge     short loc_44749E
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 10h
add     [ecx+1Ch], eax
mov     edx, [ecx+14h]
sar     edx, 10h
mov     eax, ecx
call    sub_42C592
cmp     edx, eax
jz      short loc_447481
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 10h
add     [ecx+20h], eax
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
jmp     short loc_447487

loc_447481:
mov     word ptr [ecx+46h], 20h ; ' '

loc_447487:
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 10h
add     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B

loc_44749E:
mov     eax, ecx
call    sub_42DE56
mov     [ebx+48h], eax
test    eax, eax
jz      loc_447578
test    ah, 0Fh
jz      short loc_4474C2
lea     edx, [ecx+14h]
mov     eax, 0DEh
call    sub_4D8BC3

loc_4474C2:
mov     ah, [ebx+49h]
test    ah, 1
jz      short loc_4474E3
cmp     word ptr [ecx+44h], 0
jge     short loc_4474DB
mov     eax, [ecx+42h]
sar     eax, 10h
neg     eax
jmp     short loc_4474F5

loc_4474DB:
mov     eax, [ecx+42h]
sar     eax, 10h
jmp     short loc_4474F5

loc_4474E3:
test    ah, 2
jz      short loc_447503
cmp     word ptr [ecx+44h], 0
jge     short loc_4474F9
mov     eax, [ecx+42h]
sar     eax, 10h

loc_4474F5:
neg     eax
jmp     short loc_4474FF

loc_4474F9:
mov     eax, [ecx+42h]
sar     eax, 10h

loc_4474FF:
mov     [ecx+44h], ax

loc_447503:
mov     dh, [ebx+49h]
test    dh, 4
jz      short loc_44752D
cmp     word ptr [ecx+48h], 0
jge     short loc_44751C
mov     eax, [ecx+46h]
sar     eax, 10h
neg     eax
jmp     short loc_447522

loc_44751C:
mov     eax, [ecx+46h]
sar     eax, 10h

loc_447522:
neg     eax

loc_447524:
mov     [ecx+48h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44752D:
test    dh, 8
jz      short loc_447578
cmp     word ptr [ecx+48h], 0
jge     short loc_447543
mov     eax, [ecx+46h]
sar     eax, 10h
neg     eax
jmp     short loc_447524

loc_447543:
mov     eax, [ecx+46h]
sar     eax, 10h
jmp     short loc_447524

loc_44754B:
mov     word ptr [ebx+8], 0
mov     byte ptr [ecx+0Ah], 2
mov     word ptr [ebx+4], 2

loc_44755B:
mov     si, [ebx+4]
dec     esi
mov     [ebx+4], si
test    si, si
jge     short loc_447578
mov     word ptr [ecx+6Eh], 0
or      byte ptr [ebx], 41h
mov     word ptr [ebx+38h], 0

loc_447578:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44735A endp




sub_44757D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+3D8h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_44759C
jbe     short loc_4475BB
cmp     al, 2
jz      short loc_4475DA
jmp     def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case

loc_44759C:
test    al, al
jnz     def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case
mov     byte ptr [edi+0Ah], 1
mov     byte ptr [edi+0ACh], 6
mov     word ptr [esi+4], 0Ah
mov     word ptr [esi+8], 0

loc_4475BB:
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     short loc_4475CF
mov     byte ptr [edi+0Ah], 2
jmp     short loc_4475DA

loc_4475CF:
mov     ebx, 0Ah
sub     ebx, edx
mov     [edi+46h], bx

loc_4475DA:
mov     ebx, [edi+44h]
sar     ebx, 10h
shl     ebx, 7
xor     ecx, ecx
xor     edx, edx
mov     eax, edi
call    sub_4DD43B
mov     eax, edi
call    sub_42DE56
test    ah, 10h
jz      def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case
cmp     word ptr [esi+4], 0
jge     def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case
or      byte ptr [esi], 1
jmp     def_447641      ; jumptable 00447641 default case
sub_44757D endp         ; jumptable 004477C9 default case

align 4
jpt_447641 dd offset loc_447648 ; jump table for switch statement
dd offset loc_44767F
dd offset loc_44768A
dd offset loc_447754



sub_447624 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case
and     eax, 0FFh
jmp     jpt_447641[eax*4] ; switch jump

loc_447648:             ; jumptable 00447641 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 7
mov     word ptr [esi+44h], 0FFF0h
xor     eax, eax
mov     al, ds:byte_515180
mov     [edi+4], ax
mov     word ptr [edi+8], 0
mov     dl, [edi]
and     dl, 0F7h
mov     [edi], dl
cmp     word ptr [esi+6Eh], 0
jg      short loc_44767F ; jumptable 00447641 case 1
mov     dh, dl
and     dh, 0FBh
mov     [edi], dh

loc_44767F:             ; jumptable 00447641 case 1
cmp     word ptr [edi+4], 0
jge     short loc_44768A ; jumptable 00447641 case 2
mov     byte ptr [esi+0Ah], 2

loc_44768A:             ; jumptable 00447641 case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
xor     eax, eax
mov     al, [esi+0Bh]
mov     al, ds:byte_515181[eax]
xor     ah, ah
sub     eax, ebx
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     [edi+48h], eax
test    eax, eax
jz      def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case
test    ah, 0Fh
jz      short loc_4476E1
mov     word ptr [esi+44h], 0

loc_4476E1:
test    byte ptr [edi+49h], 10h
jz      def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case
lea     edx, [esi+14h]
mov     eax, 0DEh
call    sub_4D8BC3
mov     bh, [esi+0Bh]
add     bh, 2
mov     [esi+0Bh], bh
cmp     bh, 0Ah
jnb     short loc_44772F
mov     byte ptr [esi+0Ah], 1
inc     byte ptr [esi+0ACh]
mov     word ptr [esi+44h], 0FFF0h
xor     eax, eax
mov     al, [esi+0Bh]
mov     al, ds:byte_515180[eax]
xor     ah, ah

loc_447723:
mov     [edi+4], ax
or      byte ptr [edi], 8
jmp     def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case

loc_44772F:
cmp     word ptr [esi+6Eh], 0
jg      short loc_44773E
or      byte ptr [edi], 1
jmp     def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case

loc_44773E:
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 11h
mov     word ptr [edi+4], 12h
jmp     def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case

loc_447754:             ; jumptable 00447641 case 3
mov     dx, [edi+4]     ; jumptable 004477C9 case 3
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     short loc_44776A
or      byte ptr [edi], 9
jmp     def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case

loc_44776A:
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     [edi+44h], ax
mov     ax, [esi+56h]
add     ax, [edi+44h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     def_447641      ; jumptable 00447641 default case
sub_447624 endp         ; jumptable 004477C9 default case

align 4
jpt_4477C9 dd offset loc_4477D0 ; jump table for switch statement
dd offset loc_447850
dd offset loc_44785B
dd offset loc_447754



sub_4477AC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_447641      ; jumptable 00447641 default case
; jumptable 004477C9 default case
and     eax, 0FFh
jmp     jpt_4477C9[eax*4] ; switch jump

loc_4477D0:             ; jumptable 004477C9 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 0Ch
mov     word ptr [edi+8], 0
and     byte ptr [edi], 0F7h
test    byte ptr [esi+3], 40h
jz      short loc_44782E
mov     word ptr [esi+44h], 8
mov     dword ptr [edi+3Ch], offset byte_515194
xor     eax, eax
mov     al, ds:byte_515194
mov     [edi+4], ax
mov     word ptr [edi+2], 7
xor     edx, edx
mov     dl, [esi+2]
shl     edx, 2
mov     eax, ds:dword_55A10C
add     eax, edx
mov     edx, [edi+4]
sar     edx, 10h
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+0Bh]
xor     ah, ah
mov     [edi+8], ax
jmp     short loc_447846

