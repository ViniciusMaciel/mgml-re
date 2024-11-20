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

