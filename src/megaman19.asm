mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+34h+var_30]
sub     edx, eax
mov     eax, edx
mov     edx, [esp+34h+var_24]
sub     edx, [esp+34h+var_20]
imul    edx, eax
mov     edi, [esp+34h+var_30]
sub     edi, [esp+34h+var_2C]
mov     eax, edx
sar     edx, 1Fh
idiv    edi
add     eax, [esp+34h+var_20]
mov     edx, ds:dword_564A5A
sar     edx, 10h
cmp     edx, eax
jge     short loc_42D5D5
or      cl, 1

loc_42D5D5:             ; switch 4 cases
cmp     ecx, 3
ja      def_42D5DE      ; jumptable 0042D1F4 case 0
; jumptable 0042D5DE default case
jmp     jpt_42D5DE[ecx*4] ; switch jump

loc_42D5E5:             ; jumptable 0042D5DE case 0
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edi, [esp+34h+var_20]
sub     eax, edi
mov     edx, ebp
sub     edx, [esp+34h+var_1C]
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, [esp+34h+var_1C]
mov     [ebx+8], ax
sub     ebp, esi
cmp     ebp, ecx
jmp     loc_42D351

loc_42D61A:             ; jumptable 0042D5DE case 1
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+34h+var_30]
sub     edx, eax
mov     eax, ebp
mov     edi, [esp+34h+var_1C]
sub     eax, edi
imul    edx, eax
mov     ecx, [esp+34h+var_30]
sub     ecx, [esp+34h+var_2C]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, edi
mov     [ebx+8], ax
sub     ebp, esi
cmp     ebp, ecx
jmp     loc_42D262

loc_42D651:             ; jumptable 0042D5DE case 2
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edi, [esp+34h+var_2C]
sub     eax, edi
mov     edx, ebp
sub     edx, [esp+34h+var_1C]
imul    edx, eax
mov     ecx, [esp+34h+var_30]
sub     ecx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, [esp+34h+var_1C]
mov     [ebx+8], ax
sub     ebp, esi
cmp     ebp, ecx
jmp     loc_42D2DB

loc_42D686:             ; jumptable 0042D5DE case 3
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edx, [esp+34h+var_24]
sub     edx, eax
mov     eax, edx
mov     edx, ebp
sub     edx, [esp+34h+var_1C]
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, [esp+34h+var_1C]
mov     [ebx+8], ax
sub     ebp, esi
cmp     ebp, ecx
jmp     loc_42D3CD

loc_42D6BF:             ; jumptable 0042D1F4 cases 12,16
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+34h+var_30]
sub     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, [esp+34h+var_20]
add     eax, edx
mov     edx, ebp
sub     edx, esi
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, esi
jmp     loc_42D8AE

loc_42D6F8:             ; jumptable 0042D1F4 case 17
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+34h+var_30]
sub     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, [esp+34h+var_20]
add     edx, eax
mov     eax, ebp
sub     eax, esi
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
sub     ebp, eax
mov     eax, ebp

loc_42D72E:
mov     [ebx+8], ax
mov     [esp+34h+var_28], 6
jmp     def_42D5DE      ; jumptable 0042D1F4 case 0
; jumptable 0042D5DE default case

loc_42D73F:             ; jumptable 0042D1F4 cases 13,18
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+34h+var_30]
sub     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     ecx, [esp+34h+var_24]
sub     ecx, eax
add     edx, ecx
sub     ebp, esi
imul    edx, ebp
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, esi

loc_42D773:
mov     [ebx+8], ax
mov     [esp+34h+var_28], 7
jmp     def_42D5DE      ; jumptable 0042D1F4 case 0
; jumptable 0042D5DE default case

loc_42D784:             ; jumptable 0042D1F4 case 19
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+34h+var_30]
sub     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     ecx, [esp+34h+var_24]
sub     ecx, eax
add     edx, ecx
mov     eax, ebp
sub     eax, esi
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
sub     ebp, eax
mov     eax, ebp

loc_42D7BC:
mov     [ebx+8], ax
mov     [esp+34h+var_28], 8
jmp     def_42D5DE      ; jumptable 0042D1F4 case 0
; jumptable 0042D5DE default case

loc_42D7CD:             ; jumptable 0042D1F4 cases 14,20
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+34h+var_2C]
sub     eax, edx
mov     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, [esp+34h+var_20]
add     edx, eax
sub     ebp, esi
imul    edx, ebp
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, esi
jmp     short loc_42D7BC

loc_42D803:             ; jumptable 0042D1F4 case 21
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     edx, [esp+34h+var_2C]
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edi, [esp+34h+var_20]
sub     eax, edi
add     edx, eax
mov     eax, ebp
sub     eax, esi
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
sub     ebp, eax
mov     eax, ebp
jmp     loc_42D773

loc_42D83D:             ; jumptable 0042D1F4 cases 15,22
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, [esp+34h+var_2C]
mov     edx, ds:dword_564A5A
sar     edx, 10h
mov     ecx, [esp+34h+var_24]
sub     ecx, edx
add     eax, ecx
mov     edx, ebp
sub     edx, esi
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, esi
jmp     loc_42D72E

loc_42D877:             ; jumptable 0042D1F4 case 23
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     edx, [esp+34h+var_2C]
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     ecx, [esp+34h+var_24]
sub     ecx, eax
add     edx, ecx
mov     eax, ebp
sub     eax, esi
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
sub     ebp, eax
mov     eax, ebp

loc_42D8AE:
mov     [ebx+8], ax
mov     [esp+34h+var_28], 5

def_42D5DE:             ; jumptable 0042D1F4 case 0
mov     edx, [esp+34h+var_18] ; jumptable 0042D5DE default case
cmp     dx, 7
jbe     short loc_42D8D2
cmp     dx, 0Ch
jnb     short loc_42D8D2
mov     eax, [esp+34h+var_1C]
mov     [ebx+8], ax

loc_42D8D2:
mov     esi, [esp+34h+var_18]
cmp     si, 0Fh
jbe     short loc_42D8EA
cmp     si, 14h
jnb     short loc_42D8EA
mov     eax, [esp+34h+var_1C]
mov     [ebx+0Ah], ax

loc_42D8EA:
mov     ax, ds:word_77E6CE
sub     [ebx+8], ax
mov     ax, word ptr ds:dword_77E6CA+2
sub     [ebx+0Ah], ax
mov     al, byte ptr [esp+34h+var_28]
mov     byte ptr ds:dword_77EABA+3, al

loc_42D907:
add     esp, 20h
jmp     loc_43003D
sub_42D185 endp




sub_42D90F proc near

var_18= word ptr -18h
var_14= word ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 8
xor     ecx, ecx
test    dh, 3
jz      loc_42DA07
test    dh, 0Ch
jz      loc_42DA07
mov     ecx, 1
mov     edi, esp
mov     esi, eax
movsd
movsd
test    dh, 1
jz      loc_42D9BD
test    dh, 4
jz      short loc_42D97D
cmp     [esp+18h+var_14], 0
jge     short loc_42D956
mov     ebx, [esp+2]
sar     ebx, 10h
neg     ebx
jmp     short loc_42D95D

loc_42D956:
mov     ebx, [esp+2]
sar     ebx, 10h

loc_42D95D:
neg     ebx

loc_42D95F:
mov     [eax], bx
cmp     [esp+18h+var_18], 0
jge     short loc_42D974
mov     ebx, [esp-2]
sar     ebx, 10h
neg     ebx
jmp     short loc_42D9AA

loc_42D974:
mov     ebx, [esp-2]

loc_42D978:
sar     ebx, 10h
jmp     short loc_42D9AA

loc_42D97D:
cmp     [esp+18h+var_14], 0
jge     short loc_42D990
mov     ebx, [esp+2]
sar     ebx, 10h
neg     ebx
jmp     short loc_42D997

loc_42D990:
mov     ebx, [esp+2]
sar     ebx, 10h

loc_42D997:
neg     ebx
mov     [eax], bx
cmp     [esp+18h+var_18], 0
jge     short loc_42D9B1
mov     ebx, [esp-2]
sar     ebx, 10h

loc_42D9AA:
neg     ebx
jmp     loc_42DA81

loc_42D9B1:
mov     ebx, [esp-2]
sar     ebx, 10h
jmp     loc_42DA81

loc_42D9BD:
test    dh, 4
jz      short loc_42D9DE
cmp     [esp+18h+var_14], 0
jge     short loc_42D9D5
mov     ebx, [esp+2]
sar     ebx, 10h
neg     ebx
jmp     short loc_42D95F

loc_42D9D5:
mov     ebx, [esp+2]
sar     ebx, 10h
jmp     short loc_42D95F

loc_42D9DE:
cmp     [esp+18h+var_14], 0
jge     short loc_42D9F1
mov     ebx, [esp+2]
sar     ebx, 10h
neg     ebx
jmp     short loc_42D9F8

loc_42D9F1:
mov     ebx, [esp+2]
sar     ebx, 10h

loc_42D9F8:
mov     [eax], bx
cmp     [esp+18h+var_18], 0
jge     short loc_42D9B1
jmp     loc_42D974

loc_42DA07:
test    dh, 3
jz      short loc_42DA3F
mov     ecx, 1
test    dh, 1
jz      short loc_42DA2A
mov     si, [eax]
test    si, si
jge     short loc_42DA25
movsx   ebx, si
neg     ebx
jmp     short loc_42DA35

loc_42DA25:
movsx   ebx, si
jmp     short loc_42DA35

loc_42DA2A:
mov     bx, [eax]
test    bx, bx
jge     short loc_42DA39
movsx   ebx, bx

loc_42DA35:
neg     ebx
jmp     short loc_42DA3C

loc_42DA39:
movsx   ebx, bx

loc_42DA3C:
mov     [eax], bx

loc_42DA3F:
test    dh, 0Ch
jz      short loc_42DA85
mov     ecx, 1
test    dh, 4
jz      short loc_42DA6A
cmp     word ptr [eax+4], 0
jge     short loc_42DA62
mov     ebx, [eax+2]
sar     ebx, 10h
neg     ebx
jmp     loc_42D9AA

loc_42DA62:
mov     ebx, [eax+2]
jmp     loc_42D978

loc_42DA6A:
cmp     word ptr [eax+4], 0
jge     short loc_42DA7B
mov     ebx, [eax+2]
sar     ebx, 10h
neg     ebx
jmp     short loc_42DA81

loc_42DA7B:
mov     ebx, [eax+2]
sar     ebx, 10h

loc_42DA81:
mov     [eax+4], bx

loc_42DA85:
test    dh, 30h
jz      short loc_42DAC4
mov     ecx, 1
test    dh, 10h
jz      short loc_42DAAB
cmp     word ptr [eax+2], 0
jge     short loc_42DAA4
mov     edx, [eax]
sar     edx, 10h
neg     edx
jmp     short loc_42DAB7

loc_42DAA4:
mov     edx, [eax]
sar     edx, 10h
jmp     short loc_42DAB7

loc_42DAAB:
cmp     word ptr [eax+2], 0
jge     short loc_42DABB
mov     edx, [eax]
sar     edx, 10h

loc_42DAB7:
neg     edx
jmp     short loc_42DAC0

loc_42DABB:
mov     edx, [eax]
sar     edx, 10h

loc_42DAC0:
mov     [eax+2], dx

loc_42DAC4:
mov     eax, ecx
jmp     loc_431385
sub_42D90F endp




sub_42DACB proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ax, [eax]
and     ah, 0Fh
cwde
xor     ebx, ebx
test    dh, 3
jz      short loc_42DB0F
mov     ebx, 1
test    dh, 1
jz      short loc_42DAF8
cmp     eax, 400h
jle     short loc_42DB0F
cmp     eax, 0C00h
jge     short loc_42DB0F
jmp     short loc_42DB06

loc_42DAF8:
cmp     eax, 400h
jl      short loc_42DB06
cmp     eax, 0C00h
jle     short loc_42DB0F

loc_42DB06:
mov     esi, 1000h
sub     esi, eax
mov     eax, esi

loc_42DB0F:
test    dh, 0Ch
jz      short loc_42DB3C
mov     ebx, 1
test    dh, 4
jz      short loc_42DB2C
cmp     eax, 800h
jle     short loc_42DB3C
mov     edx, 1800h
jmp     short loc_42DB38

loc_42DB2C:
cmp     eax, 800h
jge     short loc_42DB3C
mov     edx, 800h

loc_42DB38:
sub     edx, eax
mov     eax, edx

loc_42DB3C:
mov     [ecx], ax
mov     eax, ebx
pop     esi
pop     ecx
pop     ebx
retn
sub_42DACB endp




sub_42DB45 proc near

var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_26= word ptr -26h
var_24= word ptr -24h
var_22= word ptr -22h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 0042C92E SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     edi, (offset dword_564A5A+2)
mov     esi, eax
movsd
movsd
xor     edx, edx
mov     eax, (offset dword_564A5A+2)
call    sub_42DCD6
mov     ebp, eax
xor     edx, edx
mov     ds:dword_77E6C2+2, edx
mov     ds:dword_77E6C6+2, edx
mov     ds:dword_77E6CA+2, edx

loc_42DB79:
dec     ebp
cmp     ebp, 0FFFFFFFFh
jz      loc_42DCCC
lea     ebx, [ebp+ebp+0]
mov     eax, ds:dword_564A52[ebx]
sar     eax, 10h
call    sub_42C4AB
mov     edi, eax
test    eax, eax
jg      short loc_42DBDD
mov     edx, ds:dword_564A52[ebx]
sar     edx, 10h
mov     eax, (offset dword_564A5A+2)
call    sub_42C3E5
cmp     edx, eax
jnz     short loc_42DB79
mov     edx, edi
and     edx, 1F00h
sar     edx, 1
neg     edx
mov     eax, ds:dword_77E6CA+2
sar     eax, 10h
inc     eax
sub     edx, eax
mov     eax, edx
mov     edx, ds:dword_564A5A+2
sar     edx, 10h
cmp     edx, eax
jnz     short loc_42DB79
jmp     loc_42DCCC

loc_42DBDD:
shl     eax, 2
sub     eax, edi
shl     eax, 2
add     eax, (offset dword_6E40AA+2)
mov     ebx, [eax+8]
test    word ptr [eax+6], 0FFFh
jz      short loc_42DBFA
mov     ebx, [ebx+4]
jmp     short loc_42DBFD

loc_42DBFA:
mov     ebx, [ebx+8]

loc_42DBFD:
mov     dx, [eax]
mov     [esp+2Ch+var_20], edx
mov     di, [eax+2]
mov     ax, [eax+4]
mov     [esp+2Ch+var_1C], eax

loc_42DC10:
cmp     dword ptr [ebx+8], 0
jz      loc_42DB79
mov     eax, [esp+2Ch+var_20]
mov     cx, [ebx]
add     eax, ecx
mov     [esp+2Ch+var_2C], ax
mov     eax, [esp+2Ch+var_20]
mov     si, [ebx+2]
add     eax, esi
mov     [esp+2Ch+var_2A], ax
mov     eax, [esp+2Ch+var_1C]
mov     dx, [ebx+4]
add     eax, edx
mov     [esp+2Ch+var_28], ax
mov     eax, [esp+2Ch+var_1C]
mov     cx, [ebx+6]
add     eax, ecx
mov     [esp+2Ch+var_26], ax
mov     ecx, [ebx+8]
xor     edx, edx
mov     dx, [ecx+4]
mov     eax, edx
xor     ah, dh
and     al, 0F0h
xor     esi, esi
mov     si, ax
sar     esi, 4
mov     eax, esp
call    ds:funcs_42C6FC[esi*4]
test    eax, eax
jnz     short loc_42DC7D

loc_42DC78:
add     ebx, 10h
jmp     short loc_42DC10

loc_42DC7D:
mov     esi, [ebx+0Ch]

loc_42DC80:
mov     ax, [ecx]
add     eax, edi
mov     [esp+2Ch+var_24], ax
mov     ax, [ecx+2]
add     eax, edi
mov     [esp+2Ch+var_22], ax
xor     edx, edx
mov     dx, [ecx+4]
mov     eax, esp
call    sub_42D185
test    byte ptr [ecx+7], 40h
jz      short loc_42DCC4
cmp     ds:byte_5F83D8, 0
jnz     short loc_42DCC4
cmp     byte ptr ds:dword_77EABA+3, 0
jz      short loc_42DCC4
mov     eax, ds:dword_77EABA
sar     eax, 18h
jmp     short loc_42DCCE

loc_42DCC4:
add     ecx, 8
dec     esi
jnz     short loc_42DC80
jmp     short loc_42DC78

loc_42DCCC:
xor     eax, eax

loc_42DCCE:
add     esp, 14h
jmp     loc_42C92E
sub_42DB45 endp ; sp-analysis failed




sub_42DCD6 proc near

var_34= word ptr -34h
var_32= word ptr -32h
var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_26= word ptr -26h
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
mov     [esp+34h+var_24], edx
mov     edx, 8000h
mov     [esp+34h+var_2C], dx
mov     [esp+34h+var_34], dx
mov     [esp+34h+var_2E], dx
mov     [esp+34h+var_32], dx
mov     ax, [eax]
and     ah, 1
cmp     ax, 100h
jle     short loc_42DD19
mov     ebx, 8200h
mov     [esp+34h+var_28], bx
mov     [esp+34h+var_30], bx
jmp     short loc_42DD28

loc_42DD19:
mov     eax, 7E00h
mov     [esp+34h+var_28], ax
mov     [esp+34h+var_30], ax

loc_42DD28:
mov     ax, [esi+4]
and     ah, 1
cmp     ax, 100h
jle     short loc_42DD46
mov     edx, 8200h
mov     [esp+34h+var_26], dx
mov     [esp+34h+var_2A], dx
jmp     short loc_42DD55

loc_42DD46:
mov     edi, 7E00h
mov     [esp+34h+var_26], di
mov     [esp+34h+var_2A], di

loc_42DD55:
xor     ebx, ebx
xor     edi, edi
jmp     short loc_42DD79

loc_42DD5B:
cmp     [esp+34h+var_18], 0
jnz     short loc_42DD6F
mov     edx, [esp+34h+var_20]
mov     word ptr ds:(dword_564A52+2)[ebx*2], dx
inc     ebx

loc_42DD6F:
inc     edi
cmp     edi, 4
jge     loc_42DE23

loc_42DD79:
mov     eax, edi
shl     eax, 2
xor     edx, edx
mov     dx, [esp+eax+34h+var_34]
movsx   ecx, word ptr [esi]
add     edx, ecx
sar     edx, 9
xor     ecx, ecx
mov     cl, ds:byte_77EAC5
sub     edx, ecx
xor     ecx, ecx
mov     cx, ds:word_77EAAE
cmp     edx, ecx
jnb     loc_42DE23
mov     ax, [esp+eax+34h+var_32]
and     eax, 0FFFFh
mov     [esp+34h+var_1C], eax
mov     eax, [esi+2]
sar     eax, 10h
add     eax, [esp+34h+var_1C]
sar     eax, 9
movzx   ebp, ds:byte_77EAC3
sub     eax, ebp
movzx   ebp, ds:word_77EAB0
cmp     eax, ebp
jnb     short loc_42DE23
imul    eax, ecx
add     edx, eax
mov     [esp+34h+var_20], edx
mov     eax, edx
call    sub_42C4AB
mov     ecx, eax
test    eax, eax
jnz     short loc_42DDF7
cmp     [esp+34h+var_24], 0
jz      loc_42DD6F

loc_42DDF7:
xor     edx, edx
mov     [esp+34h+var_18], edx

loc_42DDFD:
cmp     edx, ebx
jge     loc_42DD5B
test    ecx, ecx
jle     short loc_42DE20
mov     eax, ds:dword_564A52[edx*2]
sar     eax, 10h
call    sub_42C4AB
cmp     ecx, eax
jz      loc_42DD6F

loc_42DE20:
inc     edx
jmp     short loc_42DDFD

loc_42DE23:
mov     eax, ebx
jmp     loc_42D907
sub_42DCD6 endp




sub_42DE2A proc near
push    edx
test    eax, eax
jz      short loc_42DE45
mov     edx, [eax]
mov     ds:dword_77E6C2+2, edx
mov     edx, [eax+4]
mov     ds:dword_77E6C6+2, edx
mov     eax, [eax+8]
jmp     short loc_42DE4F

loc_42DE45:
mov     ds:dword_77E6C2+2, eax
mov     ds:dword_77E6C6+2, eax

loc_42DE4F:
mov     ds:dword_77E6CA+2, eax
pop     edx
retn
sub_42DE2A endp




sub_42DE56 proc near

; FUNCTION CHUNK AT 0042C92E SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     eax, [eax+78h]
call    sub_42DE2A
xor     eax, eax
mov     al, [ebp+1]
call    sub_4DD420
test    eax, eax
jz      short loc_42DE78
xor     esi, esi
jmp     short loc_42DE7D

loc_42DE78:
mov     esi, 8000h

loc_42DE7D:
mov     ebx, [ebp+71h]
sar     ebx, 18h
lea     edx, [ebp+2Ch]
lea     eax, [ebp+14h]
mov     ecx, esi
call    sub_42DFC4
mov     edx, eax
test    eax, eax
jz      loc_42DF67
jle     short loc_42DF03
test    ah, 3
jz      short loc_42DEB9
mov     ax, word ptr ds:dword_564A5A+2
mov     [ebp+14h], ax
mov     eax, ds:dword_564A5A
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax

loc_42DEB9:
test    dh, 0Ch
jz      short loc_42DED6
mov     ax, word ptr ds:dword_564A5E+2
mov     [ebp+18h], ax
mov     eax, ds:dword_564A5E
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax

loc_42DED6:
test    dh, 30h
jz      short loc_42DEF3
mov     ax, word ptr ds:dword_564A5E
mov     [ebp+16h], ax
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax

loc_42DEF3:
cmp     byte ptr [ebp+74h], 2
jz      short loc_42DF67
mov     al, byte ptr ds:dword_77EABA
mov     [ebp+74h], al
jmp     short loc_42DF67

loc_42DF03:
cmp     esi, 8000h
jnz     short loc_42DF55
mov     ax, [ebp+2Ch]
mov     [ebp+14h], ax
mov     ax, [ebp+30h]
mov     [ebp+18h], ax
mov     eax, [ebp+34h]
mov     [ebp+1Ch], eax
mov     eax, [ebp+3Ch]
mov     [ebp+24h], eax
mov     word ptr [ebp+48h], 0
mov     ax, [ebp+48h]
mov     [ebp+44h], ax
cmp     byte ptr [ebp+74h], 0
jz      short loc_42DF67
mov     byte ptr [ebp+74h], 0
mov     ax, [ebp+2Eh]
mov     [ebp+16h], ax
mov     eax, [ebp+38h]
mov     [ebp+20h], eax
mov     word ptr [ebp+46h], 0
jmp     short loc_42DF67

loc_42DF55:
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

loc_42DF67:
mov     eax, edx
jmp     loc_42C92E
sub_42DE56 endp




sub_42DF6E proc near
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, ecx
call    sub_42DE2A
xor     ecx, ecx
mov     eax, edi
call    sub_42DFC4
mov     edx, eax
test    eax, eax
jz      short loc_42DFBF
jle     short loc_42DFBD
test    ah, 3
jz      short loc_42DF9A
mov     ax, word ptr ds:dword_564A5A+2
mov     [edi], ax

loc_42DF9A:
test    dh, 0Ch
jz      short loc_42DFA9
mov     ax, word ptr ds:dword_564A5E+2
mov     [edi+4], ax

loc_42DFA9:
test    dh, 30h
jz      short loc_42DFBF
mov     ax, word ptr ds:dword_564A5E
mov     [edi+2], ax
mov     eax, edx
pop     edi
pop     esi
retn

loc_42DFBD:
movsd
movsd

loc_42DFBF:
mov     eax, edx
pop     edi
pop     esi
retn
sub_42DF6E endp




sub_42DFC4 proc near

var_38= dword ptr -38h
var_34= word ptr -34h
var_32= word ptr -32h
var_30= word ptr -30h
var_2E= word ptr -2Eh
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
sub     esp, 28h
push    eax
mov     eax, ebx
mov     [esp+38h+var_20], ecx
xor     ah, bh
mov     byte ptr ds:dword_77EABA+2, ah
xor     ebx, ebx
mov     [esp+38h+var_1C], ebx
mov     edi, (offset dword_564B2A+2)
mov     esi, edx
movsd
movsd
mov     edi, (offset dword_564A5A+2)
mov     esi, [esp+38h+var_38]
movsd
movsd
mov     dx, word ptr ds:dword_564A5A+2
mov     cx, word ptr ds:dword_564B2A+2
sub     edx, ecx
mov     ds:word_564A44, dx
mov     dx, word ptr ds:dword_564A5E
mov     si, word ptr ds:dword_564B2E
sub     edx, esi
mov     word ptr ds:dword_564A46, dx
mov     dx, word ptr ds:dword_564A5E+2
mov     di, word ptr ds:dword_564B2E+2
sub     edx, edi
mov     word ptr ds:dword_564A46+2, dx
mov     byte ptr ds:dword_77EABA, al
xor     eax, eax
mov     ds:word_77EA94, ax
xor     edx, edx
mov     ds:word_77EA98, dx
xor     ecx, ecx
mov     ds:word_77EA9A, cx
xor     esi, esi
mov     ds:word_77EA96, si
xor     edi, edi
mov     ds:word_77EA92, di
mov     ds:word_77EA9C, ax
mov     ds:word_77EA8C, dx
mov     ds:word_77EA90, cx
mov     ds:word_77EA86, si
mov     ds:word_77EA8E, di
mov     ds:word_77EA8A, ax
mov     ds:word_77EA88, dx
xor     edx, edx
mov     eax, (offset dword_564A5A+2)
call    sub_42DCD6
mov     [esp+38h+var_24], eax

loc_42E0A7:
mov     eax, [esp+38h+var_24]
mov     [esp+38h+var_28], eax

loc_42E0AF:
mov     esi, [esp+38h+var_28]
dec     esi
mov     [esp+38h+var_28], esi
cmp     esi, 0FFFFFFFFh
jz      loc_42E2F3
mov     ax, word ptr ds:dword_564A5A+2
mov     cx, word ptr ds:dword_564B2A+2
sub     eax, ecx
mov     word ptr ds:dword_564A62+2, ax
mov     ax, word ptr ds:dword_564A5E
mov     si, word ptr ds:dword_564B2E
sub     eax, esi
mov     ds:word_564A66, ax
mov     ax, word ptr ds:dword_564A5E+2
mov     di, word ptr ds:dword_564B2E+2
sub     eax, edi
mov     ds:word_564A68, ax
mov     ecx, [esp+38h+var_28]
mov     ecx, ds:dword_564A52[ecx*2]
sar     ecx, 10h
mov     eax, ecx
call    sub_42C4AB
mov     edx, eax
test    eax, eax
jg      loc_42E1EE
xor     ebx, ebx
mov     eax, (offset dword_564A5A+2)
call    sub_42C3E5
cmp     ecx, eax
jnz     short loc_42E0AF
mov     edi, edx
and     edi, 1F00h
sar     edi, 1
neg     edi
mov     eax, ds:dword_77E6CA+2
sar     eax, 10h
inc     eax
mov     ecx, edi
sub     ecx, eax
mov     esi, ds:dword_564A5A+2
sar     esi, 10h
cmp     esi, ecx
jle     short loc_42E193
mov     ebx, 1
xor     edx, edx
mov     ds:word_77EA96, dx
mov     ds:word_77EA92, dx
mov     ds:word_77EA9C, dx
mov     word ptr ds:dword_564A5E, cx
cmp     ds:word_564A66, 0
jle     loc_42E2F3
xor     dl, dl
mov     byte ptr ds:dword_77EABA, dl
jmp     loc_42E2F3

loc_42E193:
test    dh, 60h
jz      loc_42E0AF
and     edx, 6000h
sar     edx, 0Dh
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 7
mov     ecx, edi
sub     ecx, eax
mov     eax, ds:dword_77E6CA
sar     eax, 10h
dec     eax
sub     ecx, eax
cmp     esi, ecx
jge     loc_42E0AF
mov     ebx, 1
xor     esi, esi
mov     ds:word_77EA96, si
mov     ds:word_77EA92, si
mov     ds:word_77EA9C, si
mov     word ptr ds:dword_564A5E, cx
jmp     loc_42E2FB

loc_42E1EE:
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, (offset dword_6E40AA+2)
mov     ecx, [eax+8]
test    word ptr [eax+6], 0FFFh
jz      short loc_42E20B
mov     ecx, [ecx+4]
jmp     short loc_42E20E

loc_42E20B:
mov     ecx, [ecx+8]

loc_42E20E:
mov     dx, [eax]
mov     [esp+38h+var_14], edx
mov     dx, [eax+2]
mov     [esp+38h+var_10], edx
mov     ax, [eax+4]
mov     [esp+38h+var_18], eax

loc_42E225:
cmp     dword ptr [ecx+8], 0
jz      loc_42E0AF
mov     eax, [esp+38h+var_14]
mov     dx, [ecx]
add     eax, edx
mov     [esp+38h+var_34], ax
mov     eax, [esp+38h+var_14]
mov     si, [ecx+2]
add     eax, esi
mov     [esp+38h+var_32], ax
mov     eax, [esp+38h+var_18]
mov     di, [ecx+4]
add     eax, edi
mov     [esp+38h+var_30], ax
mov     eax, [esp+38h+var_18]
mov     dx, [ecx+6]
add     eax, edx
mov     [esp+38h+var_2E], ax
mov     esi, [ecx+8]
xor     edx, edx
mov     dx, [esi+4]
cmp     edx, 100h
jnb     short loc_42E299
mov     edi, edx
and     edi, 0F0h
shr     edi, 4
shl     edi, 2
lea     eax, [esp+38h+var_34]
call    ds:funcs_42C6FC[edi]
mov     ebp, eax
test    eax, eax
jnz     short loc_42E2A0

loc_42E299:
xor     ebx, ebx

loc_42E29B:
add     ecx, 10h
jmp     short loc_42E225

loc_42E2A0:
mov     edi, [ecx+0Ch]

loc_42E2A3:
xor     eax, eax
mov     ax, [esi+6]
mov     edx, [esp+38h+var_20]
xor     dh, 80h
and     eax, edx
test    ah, 80h
jnz     short loc_42E2EB
mov     eax, [esp+38h+var_10]
mov     bx, [esi]
add     eax, ebx
mov     [esp+38h+var_2C], ax
mov     eax, [esp+38h+var_10]
mov     dx, [esi+2]
add     eax, edx
mov     [esp+38h+var_2A], ax
xor     edx, edx
mov     dx, [esi+4]
mov     ebx, ebp
lea     eax, [esp+38h+var_34]
call    sub_42E629
mov     ebx, eax
test    eax, eax
jnz     short loc_42E2F3

loc_42E2EB:
add     esi, 8
dec     edi
jnz     short loc_42E2A3
jmp     short loc_42E29B

loc_42E2F3:
test    ebx, ebx
jz      loc_42E3AE

loc_42E2FB:
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
xor     eax, eax
mov     ds:word_77EA94, ax
mov     ds:word_77EA98, ax
mov     ds:word_77EA9A, ax
mov     ds:word_77EA8C, ax
mov     ds:word_77EA90, ax
mov     ds:word_77EA86, ax
mov     eax, [esp+38h+var_1C]
lea     ecx, [eax+1]
mov     [esp+38h+var_1C], ecx
cmp     eax, 8
jl      loc_42E0A7
mov     eax, 80000000h
jmp     loc_42CE40

loc_42E3AE:
mov     eax, [esp+38h+var_38]
movsx   eax, word ptr [eax]
mov     ecx, ds:dword_564A5A
sar     ecx, 10h
sub     eax, ecx
mov     ecx, eax
mov     eax, [esp+38h+var_38]
mov     eax, [eax+2]
sar     eax, 10h
mov     ebx, ds:dword_564A5E
sar     ebx, 10h
sub     eax, ebx
mov     ebx, eax
mov     edx, [esp+38h+var_38]
mov     edx, [edx]
sar     edx, 10h
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     edx, eax
test    ecx, ecx
jnz     short loc_42E3FC
test    ebx, ebx
jnz     short loc_42E3FC
test    edx, edx
jnz     short loc_42E3FC
xor     eax, eax
jmp     loc_42CE40

loc_42E3FC:
test    ecx, ecx
jge     short loc_42E406
mov     eax, ecx
neg     eax
jmp     short loc_42E408

loc_42E406:
mov     eax, ecx

loc_42E408:
test    ebx, ebx
jge     short loc_42E412
mov     esi, ebx
neg     esi
jmp     short loc_42E414

loc_42E412:
mov     esi, ebx

loc_42E414:
cmp     eax, esi
jle     short loc_42E451
test    ecx, ecx
jge     short loc_42E422
mov     esi, ecx
neg     esi
jmp     short loc_42E424

loc_42E422:
mov     esi, ecx

loc_42E424:
test    edx, edx
jge     short loc_42E42E
mov     eax, edx
neg     eax
jmp     short loc_42E430

loc_42E42E:
mov     eax, edx

loc_42E430:
cmp     esi, eax
jle     short loc_42E446
test    ecx, ecx
jle     short loc_42E43F
mov     eax, 1
jmp     short loc_42E488

loc_42E43F:
mov     eax, 2
jmp     short loc_42E488

loc_42E446:
test    edx, edx
jle     short loc_42E483

loc_42E44A:
mov     eax, 5
jmp     short loc_42E488

loc_42E451:
test    ebx, ebx
jge     short loc_42E45B
mov     esi, ebx
neg     esi
jmp     short loc_42E45D

loc_42E45B:
mov     esi, ebx

loc_42E45D:
test    edx, edx
jge     short loc_42E467
mov     eax, edx
neg     eax
jmp     short loc_42E469

loc_42E467:
mov     eax, edx

loc_42E469:
cmp     esi, eax
jle     short loc_42E47F
test    ebx, ebx
jle     short loc_42E478
mov     eax, 3
jmp     short loc_42E488

loc_42E478:
mov     eax, 4
jmp     short loc_42E488

loc_42E47F:
test    edx, edx
jg      short loc_42E44A

loc_42E483:
mov     eax, 6

loc_42E488:
test    ecx, ecx
jz      short loc_42E496
jle     short loc_42E493
or      ah, 1
jmp     short loc_42E496

loc_42E493:
or      ah, 2

loc_42E496:
test    ebx, ebx
jz      short loc_42E4A4
jle     short loc_42E4A1
or      ah, 4
jmp     short loc_42E4A4

loc_42E4A1:
or      ah, 8

loc_42E4A4:
test    edx, edx
jz      loc_42CE40
jle     short loc_42E4B6
or      ah, 10h
jmp     loc_42CE40

loc_42E4B6:
or      ah, 20h
jmp     loc_42CE40
sub_42DFC4 endp

db 8Dh, 40h, 0
jpt_42E6AB dd offset loc_42E6B2, offset loc_42E6D7 ; jump table for switch statement
dd offset loc_42E7B7, offset loc_42E83C
dd offset loc_42E92C, offset loc_42E92C
dd offset loc_42E969, offset loc_42E969
dd offset loc_42EE4B, offset loc_42EF09
dd offset loc_42EFC1, offset loc_42F080
dd offset loc_42F142, offset loc_42F2EC
dd offset loc_42F43F, offset loc_42E8E1
dd offset loc_42F628, offset loc_42F671
dd offset loc_42F6AC, offset loc_42F751
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset loc_42F794, offset loc_42F95E
dd offset loc_42FAFA, offset loc_42FC85
dd offset loc_42E9A6, offset loc_42E9A6
dd offset loc_42E9A6, offset loc_42E9A6
dd offset loc_42E6B2, offset loc_42EA1B
dd offset loc_42EA1B, offset loc_42EDED
dd offset loc_42F794, offset loc_42F872
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset loc_42E6B2, offset loc_42EAF9
dd offset loc_42EAF9, offset loc_42EDED
dd offset loc_42F95E, offset loc_42FA34
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset loc_42E6B2, offset loc_42EC12
dd offset loc_42EC12, offset loc_42EDED
dd offset loc_42FAFA, offset loc_42FBC6
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset loc_42E6B2, offset loc_42ED24
dd offset loc_42ED24, offset loc_42EDED
dd offset loc_42FC85, offset loc_42FD7F
jpt_42F4CF dd offset loc_42F4D6 ; jump table for switch statement
dd offset loc_42F539
dd offset loc_42F57F
dd offset loc_42F5E5



sub_42E629 proc near

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
sub     esp, 38h
mov     word ptr [esp+48h+var_14], dx
movsx   esi, word ptr [eax]
mov     edx, [eax]
sar     edx, 10h
mov     [esp+48h+var_24], edx
mov     ebp, [eax+2]
sar     ebp, 10h
mov     edx, [eax+4]
sar     edx, 10h
mov     [esp+48h+var_20], edx
mov     edx, [eax+6]
sar     edx, 10h
mov     ecx, ds:dword_77E6CA+2
sar     ecx, 10h
mov     ebx, edx
sub     ebx, ecx
mov     [esp+48h+var_1C], ebx
mov     ebx, [eax+8]
sar     ebx, 10h
mov     eax, ds:dword_77E6CA
sar     eax, 10h
mov     ecx, ebx
sub     ecx, eax
mov     [esp+48h+var_28], ecx
mov     ecx, edx
xor     edi, edi
mov     [esp+48h+var_34], edx
xor     edx, edx
mov     [esp+48h+var_30], edi
xor     eax, eax
mov     [esp+48h+var_2C], edi
xor     ah, dh
mov     byte ptr [esp+48h+var_14+1], ah
mov     edx, [esp+48h+var_14]
cmp     dx, 55h         ; switch 86 cases
ja      def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
xor     eax, eax
mov     ax, dx
jmp     jpt_42E6AB[eax*4] ; switch jump

loc_42E6B2:             ; jumptable 0042E6AB cases 0,32,48,64,80
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     short loc_42E6D0
cmp     eax, [esp+48h+var_28]
jge     short loc_42E6D0
mov     eax, 1
jmp     loc_42F749

loc_42E6D0:
xor     eax, eax
jmp     loc_42F749

loc_42E6D7:             ; jumptable 0042E6AB case 1
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, [esp+48h+var_1C]
cmp     eax, edx
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42E76C
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, edx
cmp     eax, 8
jge     short loc_42E76C
mov     cl, byte ptr ds:dword_77EABA+2
test    cl, cl
jnz     short loc_42E76C
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A5E, ax
mov     word ptr ds:dword_77EABA, 100h
xor     ch, ch

loc_42E750:
mov     ds:word_77EA96, cx
xor     esi, esi

loc_42E759:
mov     ds:word_77EA92, si
mov     ds:word_77EA9C, si
jmp     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79

loc_42E76C:
mov     ebx, 1
mov     edx, (offset dword_564B2A+2)
mov     eax, (offset dword_564A5A+2)
call    sub_430A01
test    eax, eax
jz      def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     ds:word_564A66, 0
jl      short loc_42E79B
mov     word ptr ds:dword_77EABA, 100h

loc_42E79B:
xor     edi, edi
mov     ds:word_77EA96, di
mov     ds:word_77EA92, di
mov     ds:word_77EA9C, di
jmp     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79

loc_42E7B7:             ; jumptable 0042E6AB case 2
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
xor     ebx, ebx
mov     edx, (offset dword_564B2A+2)
mov     eax, (offset dword_564A5A+2)
call    sub_430A01
test    eax, eax
jz      def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     ds:word_564A66, 0
jl      short loc_42E823
mov     word ptr ds:dword_77EABA, 100h

loc_42E823:
xor     eax, eax
mov     ds:word_77EA96, ax
mov     ds:word_77EA92, ax

loc_42E831:
mov     ds:word_77EA9C, ax
jmp     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79

loc_42E83C:             ; jumptable 0042E6AB case 3
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
cmp     ds:word_564A66, 0
jge     short loc_42E88F
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42E8BE

loc_42E88F:
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A5E, ax
mov     word ptr ds:dword_77EABA, 100h
xor     edx, edx
mov     ds:word_77EA96, dx
mov     ds:word_77EA92, dx

loc_42E8B2:
mov     ds:word_77EA9C, dx
jmp     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79

loc_42E8BE:
mov     ebx, 3
mov     edx, (offset dword_564B2A+2)
mov     eax, (offset dword_564A5A+2)
call    sub_430A01
test    eax, eax
jz      def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
xor     ecx, ecx
jmp     loc_42E750

loc_42E8E1:             ; jumptable 0042E6AB case 15
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
mov     word ptr ds:dword_564A5E, ax
jmp     loc_42E823

loc_42E92C:             ; jumptable 0042E6AB cases 4,5
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
jmp     loc_42ECC8

loc_42E969:             ; jumptable 0042E6AB cases 6,7
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
jmp     loc_42EBCC

loc_42E9A6:             ; jumptable 0042E6AB cases 28-31
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
xor     edx, edx
mov     dx, word ptr [esp+48h+var_14]
sub     edx, 1Ch
mov     eax, (offset dword_564A5A+2)
call    sub_43139D
test    eax, eax
jz      def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     ds:word_564A66, 0
jl      short loc_42EA0D
mov     word ptr ds:dword_77EABA, 100h

loc_42EA0D:
xor     esi, esi
mov     ds:word_77EA96, si
jmp     loc_42E759

loc_42EA1B:             ; jumptable 0042E6AB cases 33,34
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
cmp     ds:word_564A44, 0
jge     short loc_42EA69
mov     eax, dword ptr ds:unk_564A42
sar     eax, 10h
neg     eax
jmp     short loc_42EA71

loc_42EA69:
mov     eax, dword ptr ds:unk_564A42
sar     eax, 10h

loc_42EA71:
mov     edx, ds:dword_77E6C2+2
sar     edx, 10h
add     edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
imul    edx, eax
mov     [esp+48h+var_18], edx
cmp     word ptr ds:dword_564A46+2, 0
jge     short loc_42EA9F
mov     eax, ds:dword_564A46
sar     eax, 10h
neg     eax
jmp     short loc_42EAA7

loc_42EA9F:
mov     eax, ds:dword_564A46
sar     eax, 10h

loc_42EAA7:
mov     edx, ds:dword_77E6C6
sar     edx, 10h
sub     eax, edx
mov     esi, [esp+48h+var_20]
sub     esi, ebp
imul    esi, eax
cmp     esi, [esp+48h+var_18]
jge     short loc_42EAD6
test    byte ptr ds:dword_77EABA+2, 1
jz      short loc_42EAD6

loc_42EACA:
mov     word ptr [esp+48h+var_14], 4
jmp     loc_42ECC8

loc_42EAD6:
cmp     esi, [esp+48h+var_18]
jle     loc_42FE8A
test    byte ptr ds:dword_77EABA+2, 8

loc_42EAE7:
jz      loc_42FE8A
mov     word ptr [esp+48h+var_14], 6
jmp     loc_42EBCC

loc_42EAF9:             ; jumptable 0042E6AB cases 49,50
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
cmp     ds:word_564A44, 0
jge     short loc_42EB47
mov     eax, dword ptr ds:unk_564A42
sar     eax, 10h
neg     eax
jmp     short loc_42EB4F

loc_42EB47:
mov     eax, dword ptr ds:unk_564A42
sar     eax, 10h

loc_42EB4F:
mov     edx, ds:dword_77E6C2
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
imul    edx, eax
mov     [esp+48h+var_18], edx
cmp     word ptr ds:dword_564A46+2, 0
jge     short loc_42EB7F
mov     eax, ds:dword_564A46
sar     eax, 10h
neg     eax
jmp     short loc_42EB87

loc_42EB7F:
mov     eax, ds:dword_564A46
sar     eax, 10h

loc_42EB87:
mov     edx, ds:dword_77E6C6
sar     edx, 10h
sub     eax, edx
mov     esi, [esp+48h+var_20]
sub     esi, ebp
imul    esi, eax
cmp     esi, [esp+48h+var_18]
jge     short loc_42EBAE
test    byte ptr ds:dword_77EABA+2, 2
jnz     loc_42EACA

loc_42EBAE:
cmp     esi, [esp+48h+var_18]
jle     loc_42FE8A
test    byte ptr ds:dword_77EABA+2, 8

loc_42EBBF:
jz      loc_42FE8A
mov     word ptr [esp+48h+var_14], 7

loc_42EBCC:
xor     ebx, ebx
mov     bx, word ptr [esp+48h+var_14]
sub     ebx, 6
mov     edx, (offset dword_564B2A+2)
mov     eax, (offset dword_564A5A+2)
call    sub_430F84
test    eax, eax
jz      short loc_42EC04
cmp     ds:word_564A66, 0
jl      short loc_42EBFC
mov     word ptr ds:dword_77EABA, 100h

loc_42EBFC:
xor     eax, eax
mov     ds:word_77EA92, ax

loc_42EC04:
xor     edx, edx
mov     ds:word_77EA96, dx
jmp     loc_42E8B2

loc_42EC12:             ; jumptable 0042E6AB cases 65,66
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
cmp     ds:word_564A44, 0
jge     short loc_42EC60
mov     eax, dword ptr ds:unk_564A42
sar     eax, 10h
neg     eax
jmp     short loc_42EC68

loc_42EC60:
mov     eax, dword ptr ds:unk_564A42
sar     eax, 10h

loc_42EC68:
mov     edx, ds:dword_77E6C2+2
sar     edx, 10h
add     eax, edx
mov     edx, [esp+48h+var_24]
sub     edx, esi
imul    eax, edx
mov     [esp+48h+var_18], eax
cmp     word ptr ds:dword_564A46+2, 0
jge     short loc_42EC96
mov     eax, ds:dword_564A46
sar     eax, 10h
neg     eax
jmp     short loc_42EC9E

loc_42EC96:
mov     eax, ds:dword_564A46
sar     eax, 10h

loc_42EC9E:
mov     edx, ds:dword_77E6C6+2
sar     edx, 10h
add     eax, edx
mov     esi, [esp+48h+var_20]
sub     esi, ebp
imul    esi, eax
cmp     esi, [esp+48h+var_18]
jge     short loc_42ED0E
test    byte ptr ds:dword_77EABA+2, 1
jz      short loc_42ED0E

loc_42ECC1:
mov     word ptr [esp+48h+var_14], 5

loc_42ECC8:
xor     ebx, ebx
mov     bx, word ptr [esp+48h+var_14]
sub     ebx, 4
mov     edx, (offset dword_564B2A+2)
mov     eax, (offset dword_564A5A+2)
call    sub_430D5F
test    eax, eax
jz      short loc_42ED01
cmp     ds:word_564A66, 0
jl      short loc_42ECF8
mov     word ptr ds:dword_77EABA, 100h

loc_42ECF8:
xor     edi, edi
mov     ds:word_77EA92, di

loc_42ED01:
xor     eax, eax
mov     ds:word_77EA96, ax
jmp     loc_42E831

loc_42ED0E:
cmp     esi, [esp+48h+var_18]
jle     loc_42FE8A
test    byte ptr ds:dword_77EABA+2, 4
jmp     loc_42EAE7

loc_42ED24:             ; jumptable 0042E6AB cases 81,82
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
cmp     ds:word_564A44, 0
jge     short loc_42ED72
mov     eax, dword ptr ds:unk_564A42
sar     eax, 10h
neg     eax
jmp     short loc_42ED7A

loc_42ED72:
mov     eax, dword ptr ds:unk_564A42
sar     eax, 10h

loc_42ED7A:
mov     edx, ds:dword_77E6C2+2
sar     edx, 10h
add     edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
imul    edx, eax
mov     [esp+48h+var_18], edx
cmp     word ptr ds:dword_564A46+2, 0
jge     short loc_42EDA8
mov     eax, ds:dword_564A46
sar     eax, 10h
neg     eax
jmp     short loc_42EDB0

loc_42EDA8:
mov     eax, ds:dword_564A46
sar     eax, 10h

loc_42EDB0:
mov     edx, ds:dword_77E6C6
sar     edx, 10h
sub     eax, edx
mov     esi, [esp+48h+var_20]
sub     esi, ebp
imul    esi, eax
cmp     esi, [esp+48h+var_18]
jge     short loc_42EDD7
test    byte ptr ds:dword_77EABA+2, 2
jnz     loc_42ECC1

loc_42EDD7:
cmp     esi, [esp+48h+var_18]
jle     loc_42FE8A
test    byte ptr ds:dword_77EABA+2, 4
jmp     loc_42EBBF

loc_42EDED:             ; jumptable 0042E6AB cases 35,51,67,83
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
cmp     ds:word_564A66, 0
jl      loc_42FE8A
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A5E, ax

loc_42EE3D:
mov     word ptr ds:dword_77EABA, 100h
jmp     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79

loc_42EE4B:             ; jumptable 0042E6AB case 8
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42EE72
test    byte ptr ds:dword_77EABA+2, 8
jz      short loc_42EE72
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42EE72:
mov     esi, ds:dword_564A5E
sar     esi, 10h
mov     eax, ds:dword_564A2E
sar     eax, 10h
mov     edx, esi
sub     edx, eax
mov     [esp+48h+var_18], edx
mov     eax, ds:dword_77E6C6+2
sar     eax, 10h
mov     edx, ds:dword_77E6C6
sar     edx, 10h
sub     eax, edx
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     edi, [esp+48h+var_20]
sub     edi, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    edi
sub     ecx, eax
mov     edx, [esp+48h+var_20]
sub     edx, esi
mov     eax, ebx
sub     eax, ecx
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    edi
lea     edi, [ecx+eax]
mov     esi, [esp+48h+var_34]
cmp     edi, esi
jge     short loc_42EED5
mov     edi, esi

loc_42EED5:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, [esp+48h+var_20]
sub     eax, ebp
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     esi, eax
test    eax, eax
jle     loc_42F20C
add     word ptr ds:dword_564A2E+2, ax
jmp     loc_42F20C

loc_42EF09:             ; jumptable 0042E6AB case 9
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42EF30
test    byte ptr ds:dword_77EABA+2, 4
jz      short loc_42EF30
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42EF30:
mov     eax, ds:dword_564A36
sar     eax, 10h
mov     edi, ds:dword_564A5E
sar     edi, 10h
sub     eax, edi
mov     [esp+48h+var_18], eax
mov     eax, ds:dword_77E6C6+2
sar     eax, 10h
mov     edx, ds:dword_77E6C6
sar     edx, 10h
sub     eax, edx
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     esi, [esp+48h+var_20]
sub     esi, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    esi
sub     ecx, eax
sub     edi, ebp
mov     edx, ebx
sub     edx, ecx
imul    edx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
mov     esi, [esp+48h+var_34]
cmp     edi, esi
jge     short loc_42EF8D
mov     edi, esi

loc_42EF8D:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, [esp+48h+var_20]
sub     eax, ebp
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     esi, eax
test    eax, eax
jle     loc_42F20C
sub     word ptr ds:dword_564A36+2, ax
jmp     loc_42F20C

loc_42EFC1:             ; jumptable 0042E6AB case 10
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42EFE8
test    byte ptr ds:dword_77EABA+2, 1
jz      short loc_42EFE8
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42EFE8:
mov     eax, ds:dword_564A32
sar     eax, 10h
mov     edi, ds:dword_564A5A
sar     edi, 10h
sub     eax, edi
mov     [esp+48h+var_18], eax
mov     edx, ds:dword_77E6C2+2
sar     edx, 10h
mov     eax, ds:dword_77E6C2
sar     eax, 10h
sub     edx, eax
mov     eax, edx
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     ebp, [esp+48h+var_24]
sub     ebp, esi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
sub     ecx, eax
mov     edx, edi
sub     edx, esi
mov     eax, ebx
sub     eax, ecx
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
lea     edi, [ecx+eax]
mov     ebp, [esp+48h+var_34]
cmp     edi, ebp
jge     short loc_42F049
mov     edi, ebp

loc_42F049:
mov     edx, ds:dword_564A5A+2
sar     edx, 10h
mov     eax, ebx
sub     eax, edx
mov     edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     esi, eax
test    eax, eax
jle     loc_42F432
sub     word ptr ds:dword_564A32+2, si
jmp     loc_42F432

loc_42F080:             ; jumptable 0042E6AB case 11
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42F0A7
test    byte ptr ds:dword_77EABA+2, 2
jz      short loc_42F0A7
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42F0A7:
mov     edi, ds:dword_564A5A
sar     edi, 10h
mov     eax, ds:dword_564A2A
sar     eax, 10h
mov     edx, edi
sub     edx, eax
mov     [esp+48h+var_18], edx
mov     edx, ds:dword_77E6C2+2
sar     edx, 10h
mov     eax, ds:dword_77E6C2
sar     eax, 10h
sub     edx, eax
mov     eax, edx
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     ebp, [esp+48h+var_24]
sub     ebp, esi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
sub     ecx, eax
mov     edx, [esp+48h+var_24]
sub     edx, edi
mov     eax, ebx
sub     eax, ecx
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
lea     edi, [ecx+eax]
mov     ebp, [esp+48h+var_34]
cmp     edi, ebp
jge     short loc_42F10C
mov     edi, ebp

loc_42F10C:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, [esp+48h+var_24]
sub     edx, esi
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     esi, eax
test    eax, eax
jle     loc_42F432
add     word ptr ds:dword_564A2A+2, ax
jmp     loc_42F432

loc_42F142:             ; jumptable 0042E6AB case 12
mov     edx, ds:dword_77E6C6+2
sar     edx, 10h
mov     eax, ds:dword_77E6C6
sar     eax, 10h
sub     edx, eax
mov     eax, edx
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     esi, [esp+48h+var_20]
sub     esi, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     edx, ecx
sub     edx, ebx
sub     edx, eax
add     ecx, edx
mov     edx, [esp+48h+var_20]
sub     edx, ebp
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
lea     edx, [eax+ebp]
mov     eax, ds:dword_564A5E
sar     eax, 10h
cmp     eax, edx
jge     loc_42F27D
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+48h+var_20]
sub     edx, eax
mov     eax, ebx
sub     eax, ecx
imul    edx, eax
mov     esi, [esp+48h+var_20]
sub     esi, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
mov     eax, [esp+48h+var_34]
cmp     edi, eax
jge     short loc_42F1C4
mov     edi, eax

loc_42F1C4:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, [esp+48h+var_20]
sub     eax, ebp
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx

loc_42F1E2:
mov     [esp+48h+var_18], eax
test    eax, eax
jle     short loc_42F1F5
mov     eax, [esp+48h+var_18]
add     word ptr ds:dword_564A2E+2, ax

loc_42F1F5:
mov     edx, ds:dword_564A5E
sar     edx, 10h
mov     eax, ds:dword_564A2E

loc_42F203:
sar     eax, 10h
sub     edx, eax

loc_42F208:
mov     [esp+48h+var_18], edx

loc_42F20C:
mov     [esp+48h+var_30], 20h ; ' '

def_42F4CF:             ; jumptable 0042F4CF default case
mov     eax, ds:dword_77E6CA+2
sar     eax, 10h
sub     edi, eax
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, edi
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
cmp     byte ptr ds:dword_77EABA, 0
jnz     loc_42FEDE
mov     edx, eax
sub     edx, edi
cmp     edx, 20h ; ' '
jge     loc_42FEDE
sub     eax, [esp+48h+var_1C]
cmp     eax, [esp+48h+var_18]
jge     loc_42FEDE
mov     word ptr ds:dword_564A5E, di
xor     ebx, ebx
mov     ds:word_77EA92, bx
jmp     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79

loc_42F27D:
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, ebp
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     esi, [esp+48h+var_20]
sub     esi, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
mov     esi, [esp+48h+var_34]
cmp     edi, esi
jge     short loc_42F2A8
mov     edi, esi

loc_42F2A8:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, [esp+48h+var_20]
sub     eax, ebp
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     [esp+48h+var_18], eax
test    eax, eax
jle     short loc_42F2D9
mov     eax, [esp+48h+var_18]
sub     word ptr ds:dword_564A36+2, ax

loc_42F2D9:
mov     edx, ds:dword_564A36
sar     edx, 10h
mov     eax, ds:dword_564A5E
jmp     loc_42F203

loc_42F2EC:             ; jumptable 0042E6AB case 13
mov     eax, ds:dword_77E6C2+2
sar     eax, 10h
mov     edx, ds:dword_77E6C2
sar     edx, 10h
sub     eax, edx
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     edi, [esp+48h+var_24]
sub     edi, esi
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     edx, ecx
sub     edx, ebx
sub     edx, eax
add     ecx, edx
mov     edx, [esp+48h+var_24]
sub     edx, esi
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
lea     edx, [esi+eax]
mov     eax, ds:dword_564A5A
sar     eax, 10h
cmp     eax, edx
jle     loc_42F3B5
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, esi
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     edi, [esp+48h+var_24]
sub     edi, esi
mov     eax, edx
sar     edx, 1Fh
idiv    edi
lea     edi, [ecx+eax]
mov     edx, [esp+48h+var_34]
cmp     edi, edx
jge     short loc_42F368
mov     edi, edx

loc_42F368:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     [esp+48h+var_18], eax
test    eax, eax
jle     short loc_42F399
mov     eax, [esp+48h+var_18]
sub     word ptr ds:dword_564A32+2, ax

loc_42F399:
mov     eax, ds:dword_564A32
sar     eax, 10h
mov     edx, ds:dword_564A5A
sar     edx, 10h

loc_42F3AA:
sub     eax, edx
mov     [esp+48h+var_18], eax
jmp     loc_42F432

loc_42F3B5:
mov     edx, ds:dword_564A5A
sar     edx, 10h
mov     eax, [esp+48h+var_24]
sub     eax, edx
mov     edx, eax
mov     eax, ebx
sub     eax, ecx
imul    edx, eax
mov     edi, [esp+48h+var_24]
sub     edi, esi
mov     eax, edx
sar     edx, 1Fh
idiv    edi
lea     edi, [ecx+eax]
mov     ebp, [esp+48h+var_34]
cmp     edi, ebp
jge     short loc_42F3E7
mov     edi, ebp

loc_42F3E7:
mov     edx, ds:dword_564A5A+2
sar     edx, 10h
mov     eax, ebx
sub     eax, edx
mov     edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx

loc_42F408:
mov     [esp+48h+var_18], eax
test    eax, eax
jle     short loc_42F41B
mov     eax, [esp+48h+var_18]
add     word ptr ds:dword_564A2A+2, ax

loc_42F41B:
mov     edx, ds:dword_564A5A
sar     edx, 10h
mov     eax, ds:dword_564A2A
sar     eax, 10h
sub     edx, eax
mov     [esp+48h+var_18], edx

loc_42F432:
mov     [esp+48h+var_30], 10h
jmp     def_42F4CF      ; jumptable 0042F4CF default case

loc_42F43F:             ; jumptable 0042E6AB case 14
mov     eax, ecx
sub     eax, ebx
add     ecx, eax
mov     [esp+48h+var_18], edi
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     edx, ebp
mov     eax, [esp+48h+var_24]
sub     eax, esi
imul    edx, eax
mov     eax, [esp+48h+var_20]
sub     eax, ebp
mov     [esp+48h+var_48], eax
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+48h+var_48]
add     eax, esi
mov     edx, ds:dword_564A5A
sar     edx, 10h
cmp     eax, edx
jle     short loc_42F482
or      byte ptr [esp+48h+var_18], 2

loc_42F482:
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+48h+var_20]
sub     edx, eax
mov     [esp+48h+var_48], edx
mov     edx, [esp+48h+var_24]
sub     edx, esi
imul    edx, [esp+48h+var_48]
mov     eax, [esp+48h+var_20]
sub     eax, ebp
mov     [esp+48h+var_48], eax
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+48h+var_48]
lea     edx, [esi+eax]
mov     eax, ds:dword_564A5A
sar     eax, 10h
cmp     eax, edx
jge     short loc_42F4C2
or      byte ptr [esp+48h+var_18], 1

loc_42F4C2:
mov     eax, [esp+48h+var_18]
cmp     eax, 3          ; switch 4 cases
ja      def_42F4CF      ; jumptable 0042F4CF default case
jmp     jpt_42F4CF[eax*4] ; switch jump

loc_42F4D6:             ; jumptable 0042F4CF case 0
mov     edx, ds:dword_564A5A
sar     edx, 10h
sub     edx, esi
mov     ebp, ebx
sub     ebp, ecx
imul    edx, ebp
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
imul    edx, esi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
mov     [esp+48h+var_18], eax
test    eax, eax
jle     short loc_42F523
mov     eax, [esp+48h+var_18]
sub     word ptr ds:dword_564A32+2, ax

loc_42F523:
mov     edx, ds:dword_564A5E
sar     edx, 10h
mov     eax, ds:dword_564A32
sar     eax, 10h
jmp     loc_42F3AA

loc_42F539:             ; jumptable 0042F4CF case 1
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+48h+var_20]
sub     edx, eax
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_48], eax
imul    edx, eax
mov     esi, [esp+48h+var_20]
sub     esi, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
imul    edx, esi
mov     eax, edx
sar     edx, 1Fh
mov     ebp, [esp+48h+var_48]
idiv    ebp
jmp     loc_42F1E2

loc_42F57F:             ; jumptable 0042F4CF case 2
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, ebp
mov     esi, ebx
sub     esi, ecx
mov     edx, esi
imul    edx, eax
mov     eax, [esp+48h+var_20]
sub     eax, ebp
mov     ebp, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
lea     edi, [ecx+eax]
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
imul    edx, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     [esp+48h+var_18], eax
test    eax, eax
jle     short loc_42F5CD
mov     eax, [esp+48h+var_18]
sub     word ptr ds:dword_564A36+2, ax

loc_42F5CD:
mov     edx, ds:dword_564A5E
sar     edx, 10h
mov     eax, ds:dword_564A36
sar     eax, 10h
add     edx, eax
jmp     loc_42F208

loc_42F5E5:             ; jumptable 0042F4CF case 3
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edx, [esp+48h+var_24]
sub     edx, eax
mov     ebp, ebx
sub     ebp, ecx
imul    edx, ebp
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
mov     edx, ds:dword_564A5A+2
sar     edx, 10h
sub     ebx, edx
mov     edx, ebx
imul    edx, esi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
jmp     loc_42F408

loc_42F628:             ; jumptable 0042E6AB case 16
mov     edx, ds:dword_77E6C6+2
sar     edx, 10h
mov     eax, ds:dword_77E6C6
sar     eax, 10h
sub     edx, eax
mov     eax, ebx
sub     eax, ecx
imul    edx, eax
mov     esi, [esp+48h+var_20]
sub     esi, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    esi
add     ecx, eax
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+48h+var_20]
sub     edx, eax
mov     eax, ebx
sub     eax, ecx

loc_42F663:
imul    edx, eax
mov     esi, [esp+48h+var_20]
sub     esi, ebp
jmp     loc_42F6EE

loc_42F671:             ; jumptable 0042E6AB case 17
mov     edx, ds:dword_77E6C6+2
sar     edx, 10h
mov     eax, ds:dword_77E6C6
sar     eax, 10h
sub     edx, eax
mov     eax, edx
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     esi, [esp+48h+var_20]
sub     esi, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    esi
add     ecx, eax
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, ebp
mov     edx, ebx
sub     edx, ecx
jmp     short loc_42F663

loc_42F6AC:             ; jumptable 0042E6AB case 18
mov     edx, ds:dword_77E6C2+2
sar     edx, 10h
mov     eax, ds:dword_77E6C2
sar     eax, 10h
sub     edx, eax
mov     eax, ebx
sub     eax, ecx
imul    edx, eax
mov     edi, [esp+48h+var_24]
sub     edi, esi
mov     eax, edx
sar     edx, 1Fh
idiv    edi
add     ecx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, esi
mov     edx, ebx
sub     edx, ecx

loc_42F6E3:
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax

loc_42F6EE:
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
cmp     edi, ebx
jle     loc_42F702
mov     edi, ebx

loc_42F702:
mov     eax, ds:dword_77E6CA
sar     eax, 10h
sub     edi, eax
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     short def_42E6AB ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, edi
jge     short def_42E6AB ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
inc     edi
mov     word ptr ds:dword_564A5E, di
xor     ecx, ecx
mov     ds:word_77EA96, cx
mov     ds:word_77EA92, cx
mov     ds:word_77EA9C, cx

def_42E6AB:             ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     eax, [esp+48h+var_2C]

loc_42F749:
add     esp, 38h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_42F751:             ; jumptable 0042E6AB case 19
mov     edx, ds:dword_77E6C2+2
sar     edx, 10h
mov     eax, ds:dword_77E6C2
sar     eax, 10h
sub     edx, eax
mov     eax, ebx
sub     eax, ecx
imul    edx, eax
mov     edi, [esp+48h+var_24]
sub     edi, esi
mov     eax, edx
sar     edx, 1Fh
idiv    edi
add     ecx, eax
mov     edx, ds:dword_564A5A
sar     edx, 10h
mov     eax, [esp+48h+var_24]
sub     eax, edx
mov     edx, eax
mov     eax, ebx
sub     eax, ecx
jmp     loc_42F6E3

loc_42F794:             ; jumptable 0042E6AB cases 24,36
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42F7BB
test    byte ptr ds:dword_77EABA+2, 9
jz      short loc_42F7BB
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42F7BB:
mov     edx, ds:dword_564A5E
sar     edx, 10h
mov     eax, ds:dword_564A2E
sar     eax, 10h
sub     edx, eax
mov     eax, ds:dword_564A32
sar     eax, 10h
mov     edi, ds:dword_564A5A
sar     edi, 10h
sub     eax, edi
cmp     eax, edx
jl      short loc_42F7E7
mov     eax, edx

loc_42F7E7:
mov     [esp+48h+var_18], eax
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+48h+var_20]
sub     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, esi
add     edx, eax
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_3C], eax
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
cmp     word ptr [esp+48h+var_14], 18h
jz      loc_42FD72
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
mov     esi, [esp+48h+var_3C]
idiv    esi
mov     esi, eax
test    eax, eax
jle     short loc_42F859
sub     word ptr ds:dword_564A32+2, ax

loc_42F859:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, [esp+48h+var_20]
sub     edx, ebp
jmp     loc_42F93C

loc_42F872:             ; jumptable 0042E6AB case 37
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42F899
test    byte ptr ds:dword_77EABA+2, 6
jz      short loc_42F899
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42F899:
mov     edx, ds:dword_564A5E
sar     edx, 10h
mov     eax, ds:dword_564A2E
sar     eax, 10h
sub     edx, eax
mov     eax, ds:dword_564A32
sar     eax, 10h
mov     edi, ds:dword_564A5A
sar     edi, 10h
sub     eax, edi
cmp     eax, edx
jl      short loc_42F8C5
mov     eax, edx

loc_42F8C5:
mov     [esp+48h+var_18], eax
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+48h+var_20]
sub     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, esi
add     edx, eax
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_48], eax
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     edi, ebx
sub     edi, eax
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
mov     esi, [esp+48h+var_48]
idiv    esi
mov     esi, eax
test    eax, eax
jle     short loc_42F92A
sub     word ptr ds:dword_564A32+2, si

loc_42F92A:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, [esp+48h+var_20]
sub     eax, ebp

loc_42F93C:
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     esi, eax
test    eax, eax
jle     loc_42FD72
add     word ptr ds:dword_564A2E+2, ax
jmp     loc_42FD72

loc_42F95E:             ; jumptable 0042E6AB cases 25,52
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42F985
test    byte ptr ds:dword_77EABA+2, 0Ah
jz      short loc_42F985
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42F985:
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, ds:dword_564A2E
sar     edx, 10h
sub     eax, edx
mov     edx, ds:dword_564A5A
sar     edx, 10h
mov     edi, ds:dword_564A2A
sar     edi, 10h
sub     edx, edi
cmp     edx, eax
jge     short loc_42F9B2
mov     eax, edx

loc_42F9B2:
mov     [esp+48h+var_18], eax
mov     edx, ds:dword_564A5E
sar     edx, 10h
mov     eax, [esp+48h+var_20]
sub     eax, edx
mov     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edi, [esp+48h+var_24]
sub     edi, eax
add     edx, edi
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_38], eax
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
cmp     word ptr [esp+48h+var_14], 19h
jz      loc_42FD72
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
mov     esi, [esp+48h+var_38]
idiv    esi
mov     esi, eax
test    eax, eax
jle     loc_42F859
add     word ptr ds:dword_564A2A+2, ax
jmp     loc_42F859

loc_42FA34:             ; jumptable 0042E6AB case 53
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42FA5B
test    byte ptr ds:dword_77EABA+2, 5
jz      short loc_42FA5B
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42FA5B:
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, ds:dword_564A2E
sar     edx, 10h
sub     eax, edx
mov     edx, ds:dword_564A5A
sar     edx, 10h
mov     edi, ds:dword_564A2A
sar     edi, 10h
sub     edx, edi
cmp     edx, eax
jge     short loc_42FA88
mov     eax, edx

loc_42FA88:
mov     [esp+48h+var_18], eax
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+48h+var_20]
sub     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edi, [esp+48h+var_24]
sub     edi, eax
add     edx, edi
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_48], eax
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     edi, ebx
sub     edi, eax
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
mov     esi, [esp+48h+var_48]
idiv    esi
mov     esi, eax
test    eax, eax
jle     loc_42F92A
add     word ptr ds:dword_564A2A+2, si
jmp     loc_42F92A

loc_42FAFA:             ; jumptable 0042E6AB cases 26,68
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42FB21
test    byte ptr ds:dword_77EABA+2, 5
jz      short loc_42FB21
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42FB21:
mov     eax, ds:dword_564A36
sar     eax, 10h
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     eax, edx
mov     edx, ds:dword_564A32
sar     edx, 10h
mov     edi, ds:dword_564A5A
sar     edi, 10h
sub     edx, edi
cmp     edx, eax
jge     short loc_42FB4E
mov     eax, edx

loc_42FB4E:
mov     [esp+48h+var_18], eax
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     edx, ebp
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, esi
add     edx, eax
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_44], eax
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
cmp     word ptr [esp+48h+var_14], 1Ah
jz      loc_42FD72
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
mov     esi, [esp+48h+var_44]
idiv    esi
mov     esi, eax
test    eax, eax
jle     loc_42FD47
sub     word ptr ds:dword_564A32+2, ax
jmp     loc_42FD47

loc_42FBC6:             ; jumptable 0042E6AB case 69
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42FBED
test    byte ptr ds:dword_77EABA+2, 0Ah
jz      short loc_42FBED
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42FBED:
mov     eax, ds:dword_564A36
sar     eax, 10h
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     eax, edx
mov     edx, ds:dword_564A32
sar     edx, 10h
mov     edi, ds:dword_564A5A
sar     edi, 10h
sub     edx, edi
cmp     edx, eax
jge     short loc_42FC1A
mov     eax, edx

loc_42FC1A:
mov     [esp+48h+var_18], eax
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     edx, ebp
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, esi
add     edx, eax
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_48], eax
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     edi, ebx
sub     edi, eax
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
mov     esi, [esp+48h+var_48]
idiv    esi
mov     esi, eax
test    eax, eax
jle     loc_42FD47
sub     word ptr ds:dword_564A32+2, si
jmp     loc_42FD47

loc_42FC85:             ; jumptable 0042E6AB cases 27,84
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42FCAC
test    byte ptr ds:dword_77EABA+2, 6
jz      short loc_42FCAC
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42FCAC:
mov     edx, ds:dword_564A36
sar     edx, 10h
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edi, ds:dword_564A2A
sar     edi, 10h
sub     eax, edi
cmp     eax, edx
jl      short loc_42FCD8
mov     eax, edx

loc_42FCD8:
mov     [esp+48h+var_18], eax
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     edx, ebp
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edi, [esp+48h+var_24]
sub     edi, eax
add     edx, edi
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_40], eax
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
cmp     word ptr [esp+48h+var_14], 1Bh
jz      short loc_42FD72
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
mov     esi, [esp+48h+var_40]

loc_42FD38:
idiv    esi
mov     esi, eax
test    eax, eax
jle     short loc_42FD47
add     word ptr ds:dword_564A2A+2, si

loc_42FD47:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, [esp+48h+var_20]
sub     eax, ebp
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     esi, eax
test    eax, eax
jle     short loc_42FD72
sub     word ptr ds:dword_564A36+2, ax

loc_42FD72:
mov     [esp+48h+var_30], 30h ; '0'
jmp     def_42F4CF      ; jumptable 0042F4CF default case

loc_42FD7F:             ; jumptable 0042E6AB case 85
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42FDA6
test    byte ptr ds:dword_77EABA+2, 9
jz      short loc_42FDA6
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42FDA6:
mov     eax, ds:dword_564A36
sar     eax, 10h
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     eax, edx
mov     edx, ds:dword_564A5A
sar     edx, 10h
mov     edi, ds:dword_564A2A
sar     edi, 10h
sub     edx, edi
cmp     edx, eax
jge     short loc_42FDD3
mov     eax, edx

loc_42FDD3:
mov     [esp+48h+var_18], eax
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     edx, ebp
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edi, [esp+48h+var_24]
sub     edi, eax
add     edx, edi
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_48], eax
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     edi, ebx
sub     edi, eax
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
mov     esi, [esp+48h+var_48]
jmp     loc_42FD38

loc_42FE2F:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A5E, ax
mov     ax, ds:word_77EA8E
mov     ds:word_77EA96, ax
xor     ecx, ecx
mov     ds:word_77EA92, cx
mov     ax, ds:word_77EA88
mov     ds:word_77EA9C, ax
mov     byte ptr ds:dword_77EABA+2, 20h ; ' '
jmp     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79

loc_42FE8A:
mov     eax, [esp+48h+var_14]
xor     ah, ah
and     al, 0F0h
and     eax, 0FFFFh
sar     eax, 4
lea     edx, [eax-2]
mov     eax, (offset dword_564A5A+2)
call    sub_4311B9
test    eax, eax
jz      def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     ds:word_564A66, 0
jl      short loc_42FEC2
mov     word ptr ds:dword_77EABA, 100h

loc_42FEC2:
xor     ecx, ecx
mov     ds:word_77EA96, cx
mov     ds:word_77EA92, cx
mov     ds:word_77EA9C, cx
jmp     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79

loc_42FEDE:
mov     word ptr ds:dword_564A2E, di
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
mov     ebx, [esp+48h+var_30]
or      bl, 43h
mov     edx, (offset dword_564B2A+2)
mov     eax, (offset dword_564A5A+2)
call    sub_430A01
test    eax, eax
jz      short loc_42FF20
xor     ecx, ecx
mov     ds:word_77EA96, cx
mov     ds:word_77EA92, cx
mov     ds:word_77EA9C, cx

loc_42FF20:
cmp     ds:word_564A66, 0
jl      def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
jmp     loc_42EE3D
sub_42E629 endp




sub_42FF33 proc near

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
movsx   ecx, bx
mov     dx, word ptr ds:dword_77E6C2+2
sub     [eax+2], dx
mov     edi, [eax]
sar     edi, 10h
mov     dx, word ptr ds:dword_77E6CA
sub     [eax+4], dx
mov     esi, [eax+2]
sar     esi, 10h
mov     dx, word ptr ds:dword_77E6C6+2
sub     [eax+6], dx
mov     ebx, [eax+4]
sar     ebx, 10h
mov     ebp, ds:dword_564A5A
sar     ebp, 10h
cmp     ebp, ecx
jle     loc_430036
cmp     ebp, edi
jge     loc_430036
mov     edx, ds:dword_564A5E
sar     edx, 10h
cmp     edx, esi
jle     loc_430036
cmp     edx, ebx
jge     loc_430036
mov     word ptr ds:dword_564A2A+2, cx
mov     word ptr ds:dword_564A32+2, di
mov     word ptr ds:dword_564A2E+2, si
mov     word ptr ds:dword_564A36+2, bx
xor     eax, eax
mov     [esp+1Ch+var_18], eax
sub     edx, esi
mov     [esp+1Ch+var_1C], edx
mov     edx, edi
sub     edx, ecx
imul    edx, [esp+1Ch+var_1C]
mov     eax, ebx
sub     eax, esi
mov     [esp+1Ch+var_1C], eax
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+1Ch+var_1C]
add     eax, ecx
cmp     ebp, eax
jge     short loc_42FFFD
mov     [esp+1Ch+var_18], 2

loc_42FFFD:
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, edi
sub     edx, ecx
imul    edx, eax
sub     ebx, esi
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     eax, ecx
mov     edx, ds:dword_564A5A
sar     edx, 10h
cmp     edx, eax
jge     short loc_43002F
or      byte ptr [esp+1Ch+var_18], 1

loc_43002F:
mov     edx, [esp+1Ch+var_18]
inc     edx
jmp     short loc_430038

loc_430036:
xor     edx, edx

loc_430038:
mov     eax, edx

loc_43003A:
add     esp, 8

loc_43003D:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_42FF33 endp

xor     eax, eax
retn



sub_430046 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
cmp     edx, 25h ; '%'
jz      short loc_430093
mov     dx, word ptr ds:dword_77E6C6
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
movsx   ecx, bx
mov     dx, word ptr ds:dword_77E6C2+2
sub     [eax+2], dx
mov     esi, [eax]
sar     esi, 10h
mov     dx, word ptr ds:dword_77E6CA
sub     [eax+4], dx
mov     ebx, [eax+2]
sar     ebx, 10h
mov     dx, word ptr ds:dword_77E6C6+2
add     [eax+6], dx
jmp     short loc_4300D1

loc_430093:
mov     dx, word ptr ds:dword_77E6C6
mov     bx, [eax]
sub     ebx, edx
mov     [eax], bx
movsx   ecx, bx
mov     dx, word ptr ds:dword_77E6C2+2
add     [eax+2], dx
mov     esi, [eax]
sar     esi, 10h
mov     dx, word ptr ds:dword_77E6CA
add     [eax+4], dx
mov     ebx, [eax+2]
sar     ebx, 10h
mov     dx, word ptr ds:dword_77E6C6+2
sub     [eax+6], dx

loc_4300D1:
mov     edi, [eax+4]
sar     edi, 10h
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, ebx
mov     edx, esi
sub     edx, ecx
imul    edx, eax
mov     ebp, edi
sub     ebp, ebx
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
add     eax, ecx
add     eax, 4
mov     [esp+20h+var_18], eax
cmp     esi, eax
jge     short loc_430104
mov     [esp+20h+var_18], esi

loc_430104:
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, ecx
mov     edx, edi
sub     edx, ebx
imul    edx, eax
mov     ebp, esi
sub     ebp, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
add     eax, ebx
sub     eax, 4
mov     [esp+20h+var_1C], eax
cmp     ebx, eax
jle     short loc_430131
mov     [esp+20h+var_1C], ebx

loc_430131:
mov     eax, ds:dword_564A5A
sar     eax, 10h
cmp     eax, ecx
jle     loc_4301EA
cmp     eax, [esp+20h+var_18]
jge     loc_4301EA
mov     eax, ds:dword_564A5E
sar     eax, 10h
cmp     eax, [esp+20h+var_1C]
jle     loc_4301EA
cmp     eax, edi
jge     loc_4301EA
mov     word ptr ds:dword_564A2A+2, cx
mov     eax, [esp+20h+var_18]
mov     word ptr ds:dword_564A32+2, ax
mov     eax, [esp+20h+var_1C]
mov     word ptr ds:dword_564A2E+2, ax
mov     word ptr ds:dword_564A36+2, di
mov     ebp, ds:dword_564B2E
sar     ebp, 10h
mov     edx, ebp
sub     edx, ebx
sub     esi, ecx
mov     [esp+20h+var_20], esi
imul    edx, esi
sub     edi, ebx
mov     eax, edx
sar     edx, 1Fh
idiv    edi
lea     edx, [ecx+eax]
mov     [esp+20h+var_18], edx
mov     esi, ds:dword_564B2A
sar     esi, 10h
mov     edx, esi
sub     edx, ecx
imul    edx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+20h+var_20]
add     ebx, eax
mov     [esp+20h+var_1C], ebx
cmp     esi, [esp+20h+var_18]
jl      short loc_4301D6
cmp     ebp, [esp+20h+var_1C]

loc_4301D4:
jle     short loc_4301E3

loc_4301D6:
mov     eax, 1

loc_4301DB:
add     esp, 0Ch
jmp     loc_43003D

loc_4301E3:
mov     eax, 2
jmp     short loc_4301DB

loc_4301EA:
xor     eax, eax
jmp     short loc_4301DB
sub_430046 endp




sub_4301EE proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
cmp     edx, 35h ; '5'
jz      short loc_43023B
mov     dx, word ptr ds:dword_77E6C6
mov     si, [eax]
sub     esi, edx
mov     [eax], si
movsx   ebx, si
mov     dx, word ptr ds:dword_77E6C2+2
add     [eax+2], dx
mov     edi, [eax]
sar     edi, 10h
mov     dx, word ptr ds:dword_77E6CA
sub     [eax+4], dx
mov     esi, [eax+2]
sar     esi, 10h
mov     dx, word ptr ds:dword_77E6C6+2
add     [eax+6], dx
jmp     short loc_430279

loc_43023B:
