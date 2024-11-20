pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4AC4D9 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_13]



sub_4AC63E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     si, [eax+11Ch]
xor     eax, eax
mov     ax, [ecx+124h]
xor     edx, edx
mov     dx, [ecx+126h]
or      edx, eax
xor     eax, eax
mov     ax, [ecx+12Ch]
xor     ebx, ebx
mov     bx, [ecx+12Eh]
or      eax, ebx
mov     ebx, edx
or      ebx, eax
xor     eax, eax
mov     ax, [ecx+138h]
or      ebx, eax
xor     edx, edx
mov     dx, [ecx+13Ah]
xor     eax, eax
mov     ax, [ecx+13Ch]
or      eax, edx
or      ebx, eax
xor     edx, edx
mov     dx, [ecx+130h]
xor     eax, eax
mov     ax, [ecx+132h]
or      eax, edx
or      eax, ebx
xor     ebx, ebx
mov     bx, si
test    ebx, eax
jz      loc_4AC71F
xor     edx, edx
mov     eax, ecx
call    sub_4ACF9D
test    eax, eax
jnz     short loc_4AC71F
mov     eax, ecx
call    sub_4ACBC7
test    eax, eax
jnz     short loc_4AC729
mov     eax, ecx
call    sub_4AC87D
test    eax, eax
jnz     short loc_4AC729
xor     edx, edx
mov     eax, ecx
call    sub_4AC8BD
test    eax, eax
jnz     short loc_4AC729
xor     edx, edx
mov     eax, ecx
call    sub_4ACA61
test    eax, eax
jnz     short loc_4AC729
xor     edx, edx
mov     dx, [ecx+130h]
mov     ax, [ecx+132h]
or      eax, edx
mov     edx, ebx
and     edx, eax
cmp     edx, eax
jz      short loc_4AC71F
xor     eax, eax
mov     ax, [ecx+134h]
test    ebx, eax
jnz     short loc_4AC729

loc_4AC71F:
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0

loc_4AC729:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AC63E endp




sub_4AC72E proc near
push    ecx
push    edx
mov     ecx, eax
call    sub_4ACD0C
test    eax, eax
jnz     short loc_4AC767
cmp     byte ptr [ecx+74h], 0
jnz     short loc_4AC752
cmp     byte ptr [ecx+0Ah], 1
jnz     short loc_4AC752
mov     eax, ecx
call    sub_4ACC2D
test    eax, eax
jnz     short loc_4AC767

loc_4AC752:
cmp     byte ptr [ecx+112h], 2
jz      short loc_4AC767
mov     edx, 2
mov     eax, ecx
call    sub_4ACF9D

loc_4AC767:
pop     edx
pop     ecx
sub_4AC72E endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_14]



sub_4AC76A proc near

; FUNCTION CHUNK AT 004ACC85 SIZE 00000087 BYTES

cmp     byte ptr [eax+0Ah], 2
jnz     short nullsub_14
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
mov     ax, [eax+11Ch]
mov     bx, [edx+11Eh]
xor     ecx, ecx
mov     cx, [edx+138h]
and     ebx, 0FFFFh
test    ebx, ecx
jz      loc_4ACD05
xor     ebx, ebx
mov     bx, [edx+12Ah]
xor     ecx, ecx
mov     cx, [edx+12Eh]
or      ecx, ebx
xor     ebx, ebx
mov     bx, ax
test    ebx, ecx
jnz     loc_4ACC85
mov     ecx, 1
jmp     loc_4ACC87
sub_4AC76A endp




sub_4AC7C6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0Ah], 1
jnz     short loc_4AC831
mov     eax, [esi+78h]
mov     edx, [eax+8]
sar     edx, 10h
mov     eax, esi
call    sub_42C592
add     edx, 20h ; ' '
sub     eax, edx
mov     edx, [esi+14h]
sar     edx, 10h
cmp     edx, eax
jle     short loc_4AC831
mov     byte ptr [esi+9], 7
mov     word ptr [esi+0Ah], 4
mov     byte ptr [esi+75h], 1
mov     al, [esi+75h]
mov     [esi+74h], al
mov     word ptr [esi+44h], 0FFD6h
mov     word ptr [esi+46h], 0
mov     word ptr [esi+48h], 0
mov     eax, esi
call    sub_4B570A
mov     ecx, 1
xor     ebx, ebx
mov     edx, 12h
mov     eax, esi
call    sub_4B520D

loc_4AC831:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AC7C6 endp




sub_4AC836 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     bx, [eax+11Ch]
xor     edx, edx
call    sub_4ACF9D
cmp     ds:byte_77E807, 1
jz      short loc_4AC879
xor     eax, eax
mov     ax, [ecx+140h]
test    ebx, eax
jnz     short loc_4AC879
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
call    sub_42A43B
mov     word ptr [ecx+108h], 0

loc_4AC879:
pop     edx
pop     ecx
pop     ebx
sub_4AC836 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_15]



sub_4AC87D proc near
push    ecx
push    edx
mov     dx, [eax+11Ch]
xor     ecx, ecx
mov     cx, [eax+124h]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4AC8B8
xor     ecx, ecx
mov     cx, [eax+134h]
test    edx, ecx
jz      short loc_4AC8B8
mov     byte ptr [eax+9], 1
mov     word ptr [eax+0Ah], 0
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4AC8B8:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4AC87D endp




sub_4AC8BD proc near
push    ecx
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_4AC8CB
test    edx, edx
jnz     short loc_4AC8D4

loc_4AC8CB:
mov     dx, [eax+11Ch]
jmp     short loc_4AC8DB

loc_4AC8D4:
mov     dx, [eax+11Eh]

loc_4AC8DB:
xor     ecx, ecx
mov     cx, [eax+126h]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4AC90C
xor     ecx, ecx
mov     cx, [eax+134h]
test    edx, ecx
jz      short loc_4AC90C
mov     byte ptr [eax+9], 1
mov     word ptr [eax+0Ah], 100h
mov     eax, 1
pop     ecx
retn

loc_4AC90C:
xor     eax, eax
pop     ecx
retn
sub_4AC8BD endp




sub_4AC910 proc near
push    ecx
push    edx
mov     dx, [eax+11Ch]
xor     ecx, ecx
mov     cx, [eax+124h]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4AC95E
xor     ecx, ecx
mov     cx, [eax+134h]
test    edx, ecx
jnz     short loc_4AC95E
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     dl, [eax+112h]
mov     [eax+113h], dl
mov     byte ptr [eax+112h], 0
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4AC95E:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4AC910 endp




sub_4AC963 proc near
push    ebx
push    ecx
push    esi
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_4AC973
test    edx, edx
jnz     short loc_4AC97C

loc_4AC973:
mov     dx, [eax+11Ch]
jmp     short loc_4AC983

loc_4AC97C:
mov     dx, [eax+11Eh]

loc_4AC983:
xor     ebx, ebx
mov     bx, [eax+12Ch]
xor     ecx, ecx
mov     cx, [eax+12Eh]
or      ecx, ebx
and     edx, 0FFFFh
mov     esi, edx
and     esi, ecx
cmp     esi, ecx
jz      short loc_4AC9DC
test    edx, ebx
jz      short loc_4AC9DC
xor     ecx, ecx
mov     cx, [eax+134h]
test    edx, ecx
jnz     short loc_4AC9DC
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     dl, [eax+112h]
mov     [eax+113h], dl
mov     byte ptr [eax+112h], 1
mov     eax, 1
pop     esi
pop     ecx
pop     ebx
retn

loc_4AC9DC:
xor     eax, eax
pop     esi
pop     ecx
pop     ebx
retn
sub_4AC963 endp




sub_4AC9E2 proc near
push    ebx
push    ecx
push    esi
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_4AC9F2
test    edx, edx
jnz     short loc_4AC9FB

loc_4AC9F2:
mov     dx, [eax+11Ch]
jmp     short loc_4ACA02

loc_4AC9FB:
mov     dx, [eax+11Eh]

loc_4ACA02:
xor     ecx, ecx
mov     cx, [eax+12Ch]
xor     ebx, ebx
mov     bx, [eax+12Eh]
or      ecx, ebx
and     edx, 0FFFFh
mov     esi, edx
and     esi, ecx
cmp     esi, ecx
jz      short loc_4ACA5B
test    edx, ebx
jz      short loc_4ACA5B
xor     ecx, ecx
mov     cx, [eax+134h]
test    edx, ecx
jnz     short loc_4ACA5B
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     dl, [eax+112h]
mov     [eax+113h], dl
mov     byte ptr [eax+112h], 3
mov     eax, 1
pop     esi
pop     ecx
pop     ebx
retn

loc_4ACA5B:
xor     eax, eax
pop     esi
pop     ecx
pop     ebx
retn
sub_4AC9E2 endp




sub_4ACA61 proc near
push    ecx
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_4ACA6F
test    edx, edx
jnz     short loc_4ACA78

loc_4ACA6F:
mov     dx, [eax+11Ch]
jmp     short loc_4ACA7F

loc_4ACA78:
mov     dx, [eax+11Eh]

loc_4ACA7F:
xor     ecx, ecx
mov     cx, [eax+126h]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4ACAC3
xor     ecx, ecx
mov     cx, [eax+134h]
test    edx, ecx
jnz     short loc_4ACAC3
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     dl, [eax+112h]
mov     [eax+113h], dl
mov     byte ptr [eax+112h], 2
mov     eax, 1
pop     ecx
retn

loc_4ACAC3:
xor     eax, eax
pop     ecx
retn
sub_4ACA61 endp




sub_4ACAC7 proc near
push    ecx
push    edx
mov     dx, [eax+11Ch]
xor     ecx, ecx
mov     cx, [eax+134h]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4ACB1A
test    byte ptr [eax+16Bh], 2
jz      short loc_4ACB1A
mov     dh, [eax+54Ah]
inc     dh
mov     [eax+54Ah], dh
cmp     dh, 8
jbe     short loc_4ACB21
cmp     byte ptr [eax+54Bh], 0
jnz     short loc_4ACB21
mov     byte ptr [eax+9], 3
mov     word ptr [eax+0Ah], 0
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4ACB1A:
mov     byte ptr [eax+54Ah], 0

loc_4ACB21:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4ACAC7 endp




sub_4ACB26 proc near
push    ebx
push    ecx
push    edx
mov     bx, [eax+11Ch]
xor     edx, edx
mov     dx, [eax+128h]
xor     ecx, ecx
mov     cx, [eax+12Ah]
or      ecx, edx
xor     edx, edx
mov     dx, bx
test    edx, ecx
jz      short loc_4ACB60
mov     byte ptr [eax+9], 4
mov     word ptr [eax+0Ah], 0
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4ACB60:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4ACB26 endp




sub_4ACB66 proc near
push    ebx
push    ecx
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_4ACB75
test    edx, edx
jnz     short loc_4ACB7E

loc_4ACB75:
mov     dx, [eax+11Ch]
jmp     short loc_4ACB85

loc_4ACB7E:
mov     dx, [eax+11Eh]

loc_4ACB85:
xor     ecx, ecx
mov     cx, [eax+134h]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4ACBC2
xor     ecx, ecx
mov     cx, [eax+130h]
xor     ebx, ebx
mov     bx, [eax+132h]
or      ecx, ebx
test    edx, ecx
jz      short loc_4ACBC2
mov     byte ptr [eax+9], 6
mov     word ptr [eax+0Ah], 0
mov     eax, 1
pop     ecx
pop     ebx
retn

loc_4ACBC2:
xor     eax, eax
pop     ecx
pop     ebx
retn
sub_4ACB66 endp




sub_4ACBC7 proc near
push    ecx
push    edx
mov     dx, [eax+11Eh]
xor     ecx, ecx
mov     cx, [eax+138h]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4ACBF5
mov     byte ptr [eax+9], 7
mov     word ptr [eax+0Ah], 0
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4ACBF5:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4ACBC7 endp




sub_4ACBFA proc near
push    ecx
push    edx
mov     dx, [eax+11Eh]
xor     ecx, ecx
mov     cx, [eax+138h]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4ACC28
mov     byte ptr [eax+9], 8
mov     word ptr [eax+0Ah], 0
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4ACC28:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4ACBFA endp




sub_4ACC2D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     cx, [eax+11Ch]
xor     edx, edx
mov     dx, [eax+128h]
xor     ebx, ebx
mov     bx, [eax+12Ah]
mov     esi, edx
or      esi, ebx
and     ecx, 0FFFFh
and     ecx, esi
cmp     ecx, edx
jnz     short loc_4ACC6E
mov     byte ptr [eax+9], 9
mov     word ptr [eax+0Ah], 0

loc_4ACC64:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4ACC6E:
cmp     ecx, ebx
jnz     short loc_4ACC7E
mov     byte ptr [eax+9], 9
mov     word ptr [eax+0Ah], 100h
jmp     short loc_4ACC64

loc_4ACC7E:
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ACC2D endp

; START OF FUNCTION CHUNK FOR sub_4AC76A

loc_4ACC85:
xor     ecx, ecx

loc_4ACC87:
xor     esi, esi
mov     si, [edx+128h]
xor     ebx, ebx
mov     bx, [edx+12Ch]
or      ebx, esi
xor     esi, esi
mov     si, ax
test    esi, ebx
jnz     short loc_4ACCAB
mov     ebx, 1
jmp     short loc_4ACCAD

loc_4ACCAB:
xor     ebx, ebx

loc_4ACCAD:
cmp     ecx, ebx
jz      short loc_4ACCDA
xor     ecx, ecx
mov     cx, [edx+128h]
xor     ebx, ebx
mov     bx, [edx+12Ch]
or      ecx, ebx
and     eax, 0FFFFh
test    eax, ecx
jz      short loc_4ACCE3

loc_4ACCCE:
mov     byte ptr [edx+9], 9
mov     word ptr [edx+0Ah], 0
jmp     short loc_4ACCED

loc_4ACCDA:
call    rand_
test    al, 1
jnz     short loc_4ACCCE

loc_4ACCE3:
mov     byte ptr [edx+9], 9
mov     word ptr [edx+0Ah], 100h

loc_4ACCED:
mov     byte ptr [edx+168h], 0
mov     byte ptr [edx+169h], 0
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4ACD05:
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4AC76A



sub_4ACD0C proc near

var_34= word ptr -34h
var_32= word ptr -32h
var_30= word ptr -30h
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
mov     ebp, eax
lea     edi, [esp+34h+var_2C]
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, esp
lea     esi, [esp+34h+var_2C]
movsd
movsd
cmp     byte ptr [eax+74h], 0
jz      loc_4ACF24
cmp     word ptr [ebp+46h], 0
jle     loc_4ACF24
mov     eax, [ebp+78h]
mov     edx, [eax+8]
sar     edx, 10h
mov     eax, ebp
call    sub_42C592
add     edx, 30h ; '0'
sub     eax, edx
mov     edx, [ebp+14h]
sar     edx, 10h
cmp     edx, eax
jg      loc_4ACF24
mov     eax, ebp
call    sub_42CB2A
mov     ecx, [ebp+54h]
sar     ecx, 10h
mov     edx, [ebp+114h]
sar     edx, 10h
sub     ecx, edx
lea     edx, [ecx+200h]
sar     edx, 0Ah
and     edx, 3
mov     [esp+34h+var_20], edx
test    byte ptr [esp+34h+var_20], 1
jz      short loc_4ACDFB
mov     edx, ds:dword_564A5A
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     eax, [ebp+78h]
mov     ax, [eax+4]
add     [esp+34h+var_30], ax
mov     eax, [ebp+78h]
mov     ax, [eax+6]
add     word ptr [esp+34h+var_28], ax
mov     edi, edx
xor     eax, eax
mov     [esp+34h+var_1C], eax
test    byte ptr [esp+34h+var_20], 2
jz      short loc_4ACDE1
mov     eax, [ebp+78h]
mov     ax, [eax+2]
add     eax, edx
inc     eax
mov     ecx, [esp+34h+var_2C]
add     ecx, eax
mov     word ptr [esp+34h+var_2C], cx
mov     [esp+34h+var_34], cx
jmp     loc_4ACE61

loc_4ACDE1:
mov     eax, [ebp+78h]
mov     ax, [eax]
add     eax, edx
dec     eax
mov     ebx, [esp+34h+var_2C]
add     ebx, eax
mov     word ptr [esp+34h+var_2C], bx
mov     [esp+34h+var_34], bx
jmp     short loc_4ACE61

loc_4ACDFB:
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     eax, [ebp+78h]
mov     ax, [eax]
add     [esp+34h+var_34], ax
mov     eax, [ebp+78h]
mov     ax, [eax+2]
add     word ptr [esp+34h+var_2C], ax
xor     edi, edi
mov     [esp+34h+var_1C], edx
test    byte ptr [esp+34h+var_20], 2
jz      short loc_4ACE47
mov     eax, [ebp+78h]
mov     ax, [eax+6]
add     eax, edx
inc     eax
mov     ebx, [esp+34h+var_28]
add     ebx, eax
mov     word ptr [esp+34h+var_28], bx
mov     [esp+34h+var_30], bx
jmp     short loc_4ACE61

loc_4ACE47:
mov     eax, [ebp+78h]
mov     ax, [eax+4]
add     eax, edx
dec     eax
mov     esi, [esp+34h+var_28]
add     esi, eax
mov     word ptr [esp+34h+var_28], si
mov     [esp+34h+var_30], si

loc_4ACE61:
test    edx, edx
jge     short loc_4ACE67
neg     edx

loc_4ACE67:
cmp     edx, 40h ; '@'
jg      loc_4ACF24
sub     [esp+34h+var_32], 98h
sub     word ptr [esp+34h+var_2C+2], 98h
xor     ecx, ecx
mov     cl, [ebp+1]
xor     ebx, ebx
xor     edx, edx
mov     eax, esp
call    sub_42C5B7
mov     esi, eax
mov     [esp+34h+var_24], eax
xor     ecx, ecx
mov     cl, [ebp+1]
xor     ebx, ebx
xor     edx, edx
lea     eax, [esp+34h+var_2C]
call    sub_42C5B7
cmp     esi, eax
jnz     loc_4ACF24
mov     eax, [ebp+14h]
sar     eax, 10h
lea     edx, [eax-68h]
cmp     esi, edx
jge     short loc_4ACF24
sub     eax, 98h
cmp     esi, eax
jle     short loc_4ACF24
add     [ebp+14h], di
mov     eax, [esp+34h+var_1C]
add     [ebp+18h], ax
mov     eax, [esp+34h+var_24]
add     eax, 98h
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [esp+34h+var_20]
shl     eax, 0Ah
mov     [ebp+56h], ax
mov     word ptr [ebp+116h], 0
mov     byte ptr [ebp+112h], 0
mov     eax, offset unk_530558
call    sub_42A7B1
mov     byte ptr [ebp+9], 0Dh
mov     eax, [esp+34h+var_20]
shl     eax, 8
mov     [ebp+0Ah], ax
mov     eax, 1
jmp     short loc_4ACF26

loc_4ACF24:
xor     eax, eax

loc_4ACF26:
add     esp, 1Ch
jmp     loc_4A9BA6
sub_4ACD0C endp




sub_4ACF2E proc near
push    ecx
push    edx
mov     cx, [eax+11Ch]
cmp     ds:byte_77E807, 1
jz      short loc_4ACF53
xor     edx, edx
mov     dx, [eax+140h]
and     ecx, 0FFFFh
test    ecx, edx
jz      short loc_4ACF65

loc_4ACF53:
mov     byte ptr [eax+9], 0Eh
mov     word ptr [eax+0Ah], 0
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4ACF65:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4ACF2E endp

push    ecx
push    edx
mov     dx, [eax+11Ch]
xor     ecx, ecx
mov     cx, [eax+13Eh]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4ACF98
mov     byte ptr [eax+9], 5
mov     word ptr [eax+0Ah], 0
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4ACF98:
xor     eax, eax
pop     edx
pop     ecx
retn



sub_4ACF9D proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 0Ch
mov     esi, eax
mov     edi, edx
mov     ax, [eax+11Ch]
mov     [esp+1Ch+var_14], eax
mov     ecx, [esi+16Dh]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     al, ds:byte_550F7C[eax*4]
and     eax, 0FFh
mov     [esp+1Ch+var_18], eax
mov     ecx, [esi+16Eh]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     al, ds:byte_550F7C[eax*4]
and     eax, 0FFh
mov     [esp+1Ch+var_1C], eax
mov     eax, [esi+171h]
sar     eax, 18h
test    al, 0C0h
jnz     loc_4AD18B
cmp     byte ptr [esi+177h], 1
jnz     short loc_4AD070
xor     eax, eax
mov     ax, [esi+13Ah]
xor     ecx, ecx
mov     cx, word ptr [esp+1Ch+var_14]
test    ecx, eax
jnz     short loc_4AD02C
mov     al, [esi+176h]
and     al, 3
cmp     al, 2
jnz     short loc_4AD070

loc_4AD02C:
mov     al, [esi+175h]
and     al, 5
cmp     al, 5
jnz     short loc_4AD070
mov     ecx, [esp-2]
sar     ecx, 10h
movsx   ebx, di
xor     edx, edx
mov     eax, esi
call    sub_4AD19C
test    eax, eax
jz      short loc_4AD070

loc_4AD04F:
mov     word ptr [esi+178h], 1
mov     byte ptr [esi+177h], 0
mov     byte ptr [esi+176h], 0
mov     eax, 1
jmp     loc_4AD194

loc_4AD070:
cmp     byte ptr [esi+177h], 2
jnz     short loc_4AD0C8
xor     eax, eax
mov     ax, [esi+13Ch]
xor     ecx, ecx
mov     cx, word ptr [esp+1Ch+var_14]
test    ecx, eax
jnz     short loc_4AD099
mov     al, [esi+176h]
and     al, 3
cmp     al, 1
jnz     short loc_4AD0C8

loc_4AD099:
mov     al, [esi+175h]
and     al, 3
cmp     al, 3
jnz     short loc_4AD0C8
call    sub_4E2440
test    eax, eax
jz      short loc_4AD0C8
mov     ecx, [esp+1Ch+var_1C+2]
sar     ecx, 10h
movsx   ebx, di
mov     edx, 2
mov     eax, esi
call    sub_4AD19C
test    eax, eax
jnz     short loc_4AD04F

loc_4AD0C8:
xor     eax, eax
mov     ax, [esi+13Ah]
xor     ecx, ecx
mov     cx, word ptr [esp+1Ch+var_14]
test    ecx, eax
jnz     short loc_4AD0E8
mov     al, [esi+176h]
and     al, 3
cmp     al, 2
jnz     short loc_4AD12A

loc_4AD0E8:
mov     eax, [esi+16Eh]
sar     eax, 18h
cmp     word ptr [esi+eax*8+5FAh], 0
jle     short loc_4AD12A
mov     al, [esi+175h]
and     al, 5
cmp     al, 5
jnz     short loc_4AD12A
mov     byte ptr [esi+176h], 0
mov     ecx, [esp-2]
sar     ecx, 10h
movsx   ebx, di
mov     edx, 4

loc_4AD11E:
mov     eax, esi
call    sub_4AD19C
jmp     loc_4AD194

loc_4AD12A:
xor     eax, eax
mov     ax, [esi+13Ch]
xor     ecx, ecx
mov     cx, word ptr [esp+1Ch+var_14]
test    ecx, eax
jnz     short loc_4AD14A
mov     al, [esi+176h]
and     al, 3
cmp     al, 1
jnz     short loc_4AD18B

loc_4AD14A:
mov     eax, [esi+16Dh]
sar     eax, 18h
cmp     word ptr [esi+eax*8+5FAh], 0
jle     short loc_4AD18B
mov     al, [esi+175h]
and     al, 3
cmp     al, 3
jnz     short loc_4AD18B
call    sub_4E2440
test    eax, eax
jz      short loc_4AD18B
mov     byte ptr [esi+176h], 0
mov     ecx, [esp+1Ch+var_1C+2]
sar     ecx, 10h
movsx   ebx, di
mov     edx, 6
jmp     short loc_4AD11E

loc_4AD18B:
mov     byte ptr [esi+176h], 0
xor     eax, eax

loc_4AD194:
add     esp, 0Ch
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4ACF9D endp




sub_4AD19C proc near
push    esi
mov     esi, edx
mov     edx, ebx
cmp     bx, 1
jb      short loc_4AD1B1
jbe     short loc_4AD1B9
cmp     bx, 2
jz      short loc_4AD1CA
jmp     short loc_4AD1D7

loc_4AD1B1:
test    bx, bx
jnz     short loc_4AD1D7
inc     esi
jmp     short loc_4AD1CF

loc_4AD1B9:
test    cx, cx
jnz     short loc_4AD1CF
mov     byte ptr [eax+9], 0
mov     [eax+0Ah], cx

loc_4AD1C6:
xor     eax, eax
pop     esi
retn

loc_4AD1CA:
test    cx, cx
jz      short loc_4AD1C6

loc_4AD1CF:
movsx   edx, si
call    sub_4AD1FE

loc_4AD1D7:
mov     eax, 1
pop     esi
retn
sub_4AD19C endp

jpt_4AD212 dd offset loc_4AD219 ; jump table for switch statement
dd offset loc_4AD224
dd offset loc_4AD22F
dd offset loc_4AD23A
dd offset loc_4AD245
dd offset loc_4AD255
dd offset loc_4AD25E
dd offset loc_4AD26E



sub_4AD1FE proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
cmp     dx, 7           ; switch 8 cases
ja      def_4AD212      ; jumptable 004AD212 default case
xor     eax, eax
mov     ax, dx
jmp     jpt_4AD212[eax*4] ; switch jump

loc_4AD219:             ; jumptable 004AD212 case 0
mov     byte ptr [esi+174h], 86h
pop     esi
pop     ecx
pop     ebx
retn

loc_4AD224:             ; jumptable 004AD212 case 1
mov     byte ptr [esi+174h], 82h
pop     esi
pop     ecx
pop     ebx
retn

loc_4AD22F:             ; jumptable 004AD212 case 2
mov     byte ptr [esi+174h], 45h ; 'E'
pop     esi
pop     ecx
pop     ebx
retn

loc_4AD23A:             ; jumptable 004AD212 case 3
mov     byte ptr [esi+174h], 41h ; 'A'
pop     esi
pop     ecx
pop     ebx
retn

loc_4AD245:             ; jumptable 004AD212 case 4
mov     byte ptr [esi+174h], 86h

loc_4AD24C:
mov     eax, esi
call    sub_4B5741
jmp     short loc_4AD27C

loc_4AD255:             ; jumptable 004AD212 case 5
mov     byte ptr [esi+174h], 82h
jmp     short loc_4AD24C

loc_4AD25E:             ; jumptable 004AD212 case 6
mov     byte ptr [esi+174h], 45h ; 'E'
mov     eax, esi
call    sub_4B57B5
jmp     short loc_4AD27C

loc_4AD26E:             ; jumptable 004AD212 case 7
mov     byte ptr [esi+174h], 41h ; 'A'
mov     eax, esi
call    sub_4B57B5

loc_4AD27C:
mov     [esi+104h], al

def_4AD212:             ; jumptable 004AD212 default case
mov     word ptr [esi+178h], 0
mov     byte ptr [esi+105h], 0
mov     byte ptr [esi+100h], 0
test    byte ptr [esi+174h], 4
jnz     short loc_4AD2C6
mov     al, [esi+0ACh]
cmp     al, [esi+0ADh]
jnz     short loc_4AD2C6
xor     edx, edx
mov     dl, [esi+104h]
mov     ecx, 1
xor     ebx, ebx
mov     eax, esi
call    sub_4B520D

loc_4AD2C6:
pop     esi
pop     ecx
pop     ebx
retn
sub_4AD1FE endp




sub_4AD2CA proc near
push    ebx
push    ecx
push    edx
mov     ecx, [eax+171h]
sar     ecx, 18h
and     ecx, 0C0h
jz      short loc_4AD329
cmp     ecx, 40h ; '@'
jnz     short loc_4AD302
mov     ebx, [eax+16Dh]
sar     ebx, 18h
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     bl, [eax+100h]
cmp     bl, ds:byte_550F78[edx*4]
ja      short loc_4AD329

loc_4AD302:
cmp     ecx, 80h
jnz     short loc_4AD332
mov     ecx, [eax+16Eh]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     al, [eax+100h]
cmp     al, ds:byte_550F78[edx*4]
jbe     short loc_4AD332

loc_4AD329:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4AD332:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4AD2CA endp




sub_4AD338 proc near
push    ecx
push    edx
xor     ecx, ecx
mov     cx, [eax+11Ch]
xor     edx, edx
mov     dx, [eax+13Ch]
test    ecx, edx
jz      short loc_4AD36A
mov     ecx, [eax+16Dh]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
cmp     ds:byte_550F7C[edx*4], 0
jz      short loc_4AD39A

loc_4AD36A:
xor     ecx, ecx
mov     cx, [eax+11Ch]
xor     edx, edx
mov     dx, [eax+13Ah]
test    ecx, edx
jz      short loc_4AD3A2
mov     edx, [eax+16Eh]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
cmp     ds:byte_550F7C[eax*4], 0
jnz     short loc_4AD3A2

loc_4AD39A:
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4AD3A2:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4AD338 endp




sub_4AD3A7 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ebx, [eax+171h]
sar     ebx, 18h
and     ebx, 0C0h
cmp     ebx, 40h ; '@'
jnz     short loc_4AD3DA
mov     ecx, [eax+16Dh]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
cmp     ds:byte_550F7D[eax*4], 0
jz      short loc_4AD3FC

loc_4AD3DA:
cmp     ebx, 80h
jnz     short loc_4AD405
mov     edx, [edx+16Eh]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
cmp     ds:byte_550F7D[eax*4], 0
jnz     short loc_4AD405

loc_4AD3FC:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4AD405:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4AD3A7 endp




sub_4AD40B proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ebx, [eax+171h]
sar     ebx, 18h
and     ebx, 0C0h
cmp     ebx, 40h ; '@'
jnz     short loc_4AD43E
mov     ecx, [eax+16Dh]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
cmp     ds:byte_550F7E[eax*4], 0
jz      short loc_4AD460

loc_4AD43E:
cmp     ebx, 80h
jnz     short loc_4AD469
mov     edx, [edx+16Eh]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
cmp     ds:byte_550F7E[eax*4], 0
jnz     short loc_4AD469

loc_4AD460:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4AD469:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4AD40B endp




sub_4AD46F proc near

var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch
var_28= word ptr -28h
var_26= word ptr -26h
var_24= word ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebp, eax
xor     edx, edx
mov     [esp+30h+var_1C], edx
call    sub_42ABA2
test    eax, eax
jnz     loc_4AD690
mov     eax, [ebp+171h]
sar     eax, 18h
test    al, 0C0h
jnz     loc_4AD690
cmp     byte ptr [ebp+177h], 0
jnz     loc_4AD690
mov     [esp+30h+var_20], 7FFFh
mov     dx, [ebp+11Ch]
xor     ebx, ebx
mov     [esp+30h+var_2C], bx
mov     [esp+30h+var_2E], bx
mov     [esp+30h+var_30], bx
mov     eax, [ebp+54h]
sar     eax, 10h
call    sub_4EF008
mov     word ptr ds:dword_77EA82+2, ax
mov     eax, [ebp+54h]
sar     eax, 10h
call    sub_4EF003
mov     word ptr ds:dword_77EA82, ax
xor     eax, eax
mov     ax, [ebp+136h]
and     edx, 0FFFFh
test    edx, eax
jz      loc_4AD686
cmp     byte ptr [ebp+74h], 0
jnz     loc_4AD686
mov     esi, offset byte_6DD9CC
xor     edi, edi
jmp     short loc_4AD522

loc_4AD516:
inc     edi
add     esi, 4A0h
cmp     edi, 10h
jge     short loc_4AD554

loc_4AD522:
mov     al, [esi]
and     al, 3
cmp     al, 3
jnz     short loc_4AD516
mov     ebx, [esi+10h]
test    ebx, ebx
jz      short loc_4AD516
mov     ecx, ebx
lea     ebx, [esi+54h]
lea     edx, [esi+14h]
mov     eax, ebp
call    sub_4AD69A
test    eax, eax
jz      short loc_4AD516
cmp     eax, [esp+30h+var_20]
jnb     short loc_4AD516
mov     [esp+30h+var_20], eax
mov     [esp+30h+var_1C], esi
jmp     short loc_4AD516

loc_4AD554:
mov     esi, offset unk_6E23DC
xor     edi, edi
jmp     short loc_4AD569

loc_4AD55D:
inc     edi
add     esi, 734h
cmp     edi, 4
jge     short loc_4AD599

loc_4AD569:
mov     al, [esi]
and     al, 3
cmp     al, 3
jnz     short loc_4AD55D
mov     ecx, [esi+10h]
test    ecx, ecx
jz      short loc_4AD55D
lea     ebx, [esi+54h]
lea     edx, [esi+14h]
mov     eax, ebp
call    sub_4AD69A
test    eax, eax
jz      short loc_4AD55D
cmp     eax, [esp+30h+var_20]
jnb     short loc_4AD55D
mov     [esp+30h+var_20], eax
mov     [esp+30h+var_1C], esi
jmp     short loc_4AD55D

loc_4AD599:
mov     esi, offset byte_57098C
xor     edi, edi
jmp     short loc_4AD5AE

loc_4AD5A2:
inc     edi
add     esi, 11Ch
cmp     edi, 20h ; ' '
jge     short loc_4AD5E6

loc_4AD5AE:
mov     al, [esi]
and     al, 3
cmp     al, 3
jnz     short loc_4AD5A2
cmp     byte ptr [esi+2], 80h
jnb     short loc_4AD5A2
mov     eax, [esi+10h]
test    eax, eax
jz      short loc_4AD5A2
mov     ecx, eax
lea     ebx, [esi+54h]
lea     edx, [esi+14h]
mov     eax, ebp
call    sub_4AD69A
test    eax, eax
jz      short loc_4AD5A2
cmp     eax, [esp+30h+var_20]
jnb     short loc_4AD5A2
mov     [esp+30h+var_20], eax
mov     [esp+30h+var_1C], esi
jmp     short loc_4AD5A2

loc_4AD5E6:
mov     esi, offset unk_56FCB4
xor     edi, edi
jmp     short loc_4AD635

loc_4AD5EF:
mov     ax, [esi+1Ch]
mov     [esp+30h+var_28], ax
mov     ax, [esi+1Eh]
mov     [esp+30h+var_26], ax
mov     ax, [esi+20h]

loc_4AD605:
mov     [esp+30h+var_24], ax
mov     ecx, [esi+10h]
mov     ebx, esp
lea     edx, [esp+30h+var_28]
mov     eax, ebp
call    sub_4AD69A
test    eax, eax
jz      short loc_4AD62C
cmp     eax, [esp+30h+var_20]
jnb     short loc_4AD62C
mov     [esp+30h+var_20], eax
mov     [esp+30h+var_1C], esi

loc_4AD62C:
inc     edi
add     esi, 60h ; '`'
cmp     edi, 20h ; ' '
jge     short loc_4AD660

loc_4AD635:
mov     al, [esi]
and     al, 3
cmp     al, 3
jnz     short loc_4AD62C
cmp     dword ptr [esi+10h], 0
jz      short loc_4AD62C
test    byte ptr [esi], 4
jz      short loc_4AD5EF
mov     ax, [esi+48h]
mov     [esp+30h+var_28], ax
mov     ax, [esi+4Ah]
mov     [esp+30h+var_26], ax
mov     ax, [esi+4Ch]
jmp     short loc_4AD605

loc_4AD660:
cmp     [esp+30h+var_20], 0D0h
jnb     short loc_4AD686
mov     eax, [esp+30h+var_20]
mov     [ebp+182h], ax
mov     eax, [esp+30h+var_1C]
mov     [ebp+184h], eax
mov     eax, 1
jmp     short loc_4AD692

loc_4AD686:
mov     dword ptr [ebp+184h], 0

loc_4AD690:
xor     eax, eax

loc_4AD692:
add     esp, 18h
jmp     loc_4A9BA6
sub_4AD46F endp




sub_4AD69A proc near

var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= dword ptr -50h
var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_38= word ptr -38h
var_36= word ptr -36h
var_34= word ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= word ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 7Ch
mov     esi, eax
mov     edi, ecx
mov     eax, [ecx]
sar     eax, 10h
movsx   ecx, word ptr [ecx]
add     ecx, eax
shl     ecx, 0Fh
movsx   eax, word ptr [edx]
shl     eax, 10h
mov     [esp+88h+var_58], eax
add     eax, ecx
mov     [esp+88h+var_48], eax
mov     ecx, [edi+2]
sar     ecx, 10h
mov     eax, [edi+4]
sar     eax, 10h
add     ecx, eax
shl     ecx, 0Fh
mov     eax, [edx+2]
sar     eax, 10h
shl     eax, 10h
mov     [esp+88h+var_50], eax
add     eax, ecx
mov     [esp+88h+var_40], eax
mov     eax, [edx]
sar     eax, 10h
shl     eax, 10h
mov     [esp+88h+var_54], eax
mov     [esp+88h+var_44], eax
mov     ecx, [edi]
sar     ecx, 10h
movsx   ebp, word ptr [edi]
lea     edx, [ecx+ebp]
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
sub     ebp, eax
mov     [esp+88h+var_20], ebp
sub     ecx, eax
mov     [esp+88h+var_24], ecx
mov     ebp, [edi+2]
sar     ebp, 10h
mov     ecx, [edi+4]
sar     ecx, 10h
lea     edx, [ecx+ebp]
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
sub     ebp, eax
mov     [esp+88h+var_28], ebp
sub     ecx, eax        ; int
mov     [esp+88h+var_2C], ecx
mov     edx, esp
mov     eax, ebx
call    sub_4EF638
lea     ebx, [esp+88h+var_58]
lea     edx, [esp+88h+var_48]
mov     eax, esp
call    sub_4DD5E6
xor     ecx, ecx
jmp     short loc_4AD75F

loc_4AD755:
inc     ecx
cmp     ecx, 3
jge     loc_4AD892

loc_4AD75F:
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 4
mov     edx, ds:dword_77EA82
sar     edx, 10h
lea     ebx, [eax+50h]
imul    edx, ebx
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ch
sbb     eax, edx
sar     eax, 0Ch
mov     edx, [esi+12h]
sar     edx, 10h
sub     edx, eax
mov     [esp+88h+var_30], edx
mov     edx, dword ptr ds:word_77EA80
sar     edx, 10h
imul    edx, ebx
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ch
sbb     eax, edx
sar     eax, 0Ch
mov     edx, [esi+16h]
sar     edx, 10h
sub     edx, eax
mov     [esp+88h+var_1C], edx
mov     ax, [esi+16h]
mov     [esp+88h+var_10], ax
mov     ebx, [esp+88h+var_48]
sar     ebx, 10h
mov     [esp+88h+var_38], bx
mov     edx, [esp+88h+var_44]
sar     edx, 10h
mov     [esp+88h+var_36], dx
mov     eax, [esp+88h+var_40]
sar     eax, 10h
mov     [esp+88h+var_14], eax
mov     eax, [esp+88h+var_14]
mov     [esp+88h+var_34], ax
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, 0Ch
mov     ebp, [esp+56h]
sar     ebp, 10h
mov     [esp+88h+var_18], ebp
sub     ebp, eax
sub     ebp, [esp+88h+var_24]
movsx   ebx, bx
cmp     ebx, ebp
jl      loc_4AD755
mov     ebp, [esp+88h+var_18]
add     ebp, eax
sub     ebp, [esp+88h+var_20]
cmp     ebx, ebp
jg      loc_4AD755
mov     ebx, [esp+88h+var_20+2]
sar     ebx, 10h
mov     ebp, ebx
sub     ebp, eax
sub     ebp, [esp+88h+var_2C]
mov     [esp+88h+var_30], ebp
mov     ebp, [esp+88h+var_18+2]
sar     ebp, 10h
cmp     ebp, [esp+88h+var_30]
jl      loc_4AD755
add     eax, ebx
sub     eax, [esp+88h+var_28]
cmp     eax, ebp
jl      loc_4AD755
mov     ebx, [edi+8]
sar     ebx, 10h
mov     eax, [esp+88h+var_14+2]
sar     eax, 10h
mov     ebp, eax
sub     ebp, ebx
movsx   edx, dx
cmp     edx, ebp
jl      loc_4AD755
mov     ebx, [edi+6]
sar     ebx, 10h
sub     eax, ebx
cmp     edx, eax
jg      loc_4AD755
lea     eax, [esi+14h]
lea     edx, [esp+88h+var_38]
call    sub_4DD69F
jmp     short loc_4AD894

loc_4AD892:
xor     eax, eax

loc_4AD894:
add     esp, 7Ch
pop     ebp
pop     edi
pop     esi
retn
sub_4AD69A endp




sub_4AD89B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr ds:dword_560BDC, 0
jnz     loc_4A9BA7
mov     esi, [ecx+188h]
lea     eax, [ecx+190h]
mov     ebx, esi
and     ebx, 0FFFFFFh
jnz     short loc_4AD8D1
test    esi, 1000000h
jz      loc_4ADA76

loc_4AD8D1:
test    ebx, ebx
jz      short loc_4AD8ED
mov     edx, [ecx+169h]
sar     edx, 18h
imul    edx, ebx
sar     edx, 2
sub     ebx, edx
jnz     short loc_4AD8ED
mov     ebx, 1

loc_4AD8ED:
mov     dl, [ecx+71h]
test    dl, dl
jg      loc_4AD99B
jnz     short loc_4AD949
cmp     word ptr [eax+6], 0
jz      short loc_4AD90B
lea     edx, [ecx+14h]
call    sub_4DDDB4
jmp     short loc_4AD91E

loc_4AD90B:
mov     edx, [eax+2]
sar     edx, 10h
movsx   eax, word ptr [eax]
call    sub_4EF04B
add     eax, 800h

loc_4AD91E:
mov     edx, [ecx+54h]
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     eax, [ecx+114h]
sar     eax, 10h
add     eax, edx
add     eax, 200h
and     eax, 0FFFh
sar     eax, 0Ah
and     eax, 3
inc     eax
mov     [ecx+71h], al
jmp     short loc_4AD958

loc_4AD949:
mov     al, dl
and     al, 7Fh
cmp     al, 1
jnz     short loc_4AD958
add     byte ptr [ecx+117h], 8

loc_4AD958:
mov     al, [ecx+71h]
and     al, 7Fh
cmp     al, 2
jb      short loc_4AD99B
jbe     short loc_4AD969
cmp     al, 4
jz      short loc_4AD982
jmp     short loc_4AD99B

loc_4AD969:
mov     al, [ecx+112h]
inc     al
and     al, 3
mov     [ecx+112h], al
add     byte ptr [ecx+117h], 4
jmp     short loc_4AD99B

loc_4AD982:
mov     al, [ecx+112h]
dec     al
and     al, 3
mov     [ecx+112h], al
sub     word ptr [ecx+116h], 400h

loc_4AD99B:
mov     byte ptr [ecx+174h], 0
mov     byte ptr [ecx+177h], 0
test    esi, 1000000h
jz      short loc_4AD9B8
mov     eax, ebx
call    sub_436916

loc_4AD9B8:
test    esi, 40000000h
jz      short loc_4AD9C5
call    sub_436984

loc_4AD9C5:
xor     eax, eax
call    sub_436916
test    eax, eax
jnz     short loc_4AD9D9
call    sub_436966
test    eax, eax
jz      short loc_4ADA2A

loc_4AD9D9:
mov     dx, [ecx+6Eh]
test    dx, dx
jle     short loc_4AD9FC
mov     eax, edx
sub     eax, ebx
mov     [ecx+6Eh], ax
test    ax, ax
jg      short loc_4ADA04
mov     word ptr [ecx+6Eh], 0
call    sub_436984
jmp     short loc_4ADA04

loc_4AD9FC:
mov     edi, edx
sub     edi, ebx
mov     [ecx+6Eh], di

loc_4ADA04:
mov     eax, [ecx+167h]
sar     eax, 18h
shl     eax, 4
add     [ecx+73h], bl
mov     edx, [ecx+70h]
sar     edx, 18h
add     eax, 10h
cmp     edx, eax
jle     short loc_4ADA3F
mov     byte ptr [ecx+9], 0Ch
mov     byte ptr [ecx+0Ah], 1
jmp     short loc_4ADA48

loc_4ADA2A:
cmp     word ptr [ecx+6Eh], 0
jle     short loc_4ADA3A
mov     eax, ebx
call    sub_436916
jmp     short loc_4ADA3F

loc_4ADA3A:
call    sub_436984

loc_4ADA3F:
mov     edx, esi
mov     eax, ecx
call    sub_4ADAA5

loc_4ADA48:
call    rand_
xor     al, al
and     ah, 1
sub     eax, 80h
add     [ecx+56h], ax
mov     al, [ecx+71h]
and     al, 7Fh
cmp     al, 1
jnz     short loc_4ADA6D
mov     [ecx+0Bh], al
jmp     loc_4A9BA7

loc_4ADA6D:
mov     byte ptr [ecx+0Bh], 0
jmp     loc_4A9BA7

loc_4ADA76:
mov     dl, [ecx+9]
cmp     dl, 0Bh
jz      loc_4A9BA7
cmp     dl, 0Ch
jz      loc_4A9BA7
mov     bl, [ecx+73h]
sub     bl, 4
mov     [ecx+73h], bl
test    bl, bl
jge     loc_4A9BA7
mov     byte ptr [ecx+73h], 0
jmp     loc_4A9BA7
sub_4AD89B endp




sub_4ADAA5 proc near
cmp     byte ptr [eax+74h], 0
jnz     short loc_4ADABA
test    edx, 41000000h
jnz     short loc_4ADABA
cmp     word ptr [eax+6Eh], 0
jg      short loc_4ADAC3

loc_4ADABA:
mov     byte ptr [eax+9], 0Ch
mov     byte ptr [eax+0Ah], 0
retn

loc_4ADAC3:
cmp     byte ptr [eax+9], 0Bh
jnz     short loc_4ADACF
cmp     byte ptr [eax+0Ah], 2
jb      short locret_4ADAD7

loc_4ADACF:
mov     byte ptr [eax+9], 0Bh
mov     byte ptr [eax+0Ah], 0

locret_4ADAD7:
retn
sub_4ADAA5 endp




sub_4ADAD8 proc near
push    ebx
push    edx
push    esi
push    edi
mov     edx, eax
lea     edi, [edx+5Ch]
lea     esi, [edx+54h]
movsd
movsd
mov     al, [eax+0ACh]
mov     [edx+0ADh], al
mov     ax, [edx+6Eh]
mov     [edx+0B2h], ax
mov     al, [edx+74h]
mov     [edx+75h], al
mov     al, [edx+76h]
mov     [edx+77h], al
mov     eax, edx
call    sub_42DE56
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
mov     al, [edx+9]
test    al, al
ja      short loc_4ADB3B
mov     byte ptr ds:dword_77E784, 9
xor     bl, bl
mov     byte ptr ds:dword_77E784+1, bl
inc     byte ptr [edx+9]

loc_4ADB3B:
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4ADAD8 endp

db 8Bh, 0C0h
jpt_4ADB6C dd offset loc_4ADB73 ; jump table for switch statement
dd offset loc_4ADB9D
dd offset loc_4ADBAF
dd offset loc_4ADC66



sub_4ADB52 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     dl, [eax+9]
cmp     dl, 3           ; switch 4 cases
ja      def_4ADB6C      ; jumptable 004ADB6C default case
and     edx, 0FFh
jmp     jpt_4ADB6C[edx*4] ; switch jump

loc_4ADB73:             ; jumptable 004ADB6C case 0
lea     edi, [ebp+538h]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+528h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+540h]
lea     esi, [ebp+54h]
movsd
movsd
mov     byte ptr [eax+548h], 0FFh

loc_4ADB9D:             ; jumptable 004ADB6C case 1
mov     eax, ebp
call    sub_4B56DA
mov     byte ptr [ebp+0BDh], 40h ; '@'
mov     byte ptr [ebp+9], 2

loc_4ADBAF:             ; jumptable 004ADB6C case 2
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
mov     dl, [ebp+0ACh]
mov     [ebp+0ADh], dl
lea     edi, [ebp+14h]
lea     esi, [ebp+538h]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+528h]
movsd
movsd
movsd
movsd
lea     edi, [ebp+54h]
lea     esi, [ebp+540h]
movsd
movsd
and     byte ptr [ebp+0BDh], 0F7h
cmp     byte ptr [ebp+548h], 0FFh
jz      short loc_4ADC41
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+548h]
jnz     short loc_4ADC24
mov     edx, [ebp+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4ADC41

loc_4ADC24:
xor     edx, edx
mov     dl, [ebp+548h]
mov     ecx, 1
xor     ebx, ebx
mov     eax, ebp
call    sub_4B520D
mov     byte ptr [ebp+548h], 0FFh

loc_4ADC41:
mov     edx, [ebp+0A3h]
sar     edx, 18h
test    dl, 80h
jz      def_4ADB6C      ; jumptable 004ADB6C default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 90h
call    sub_4D89E4
jmp     def_4ADB6C      ; jumptable 004ADB6C default case

loc_4ADC66:             ; jumptable 004ADB6C case 3
call    sub_4B570A
mov     dword ptr [ebp+8], 1
mov     byte ptr [ebp+0BDh], 8
jmp     def_4ADB6C      ; jumptable 004ADB6C default case
sub_4ADB52 endp




sub_4ADC7E proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4ADC84[edx*4]
pop     edx
retn
sub_4ADC7E endp




sub_4ADC8D proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     ecx, eax
cmp     byte ptr [eax+3], 0FEh
jnz     short loc_4ADCA7
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+3], 0C2h
jmp     short loc_4ADCAB

loc_4ADCA7:
mov     byte ptr [ecx+0Ch], 1

loc_4ADCAB:
cmp     byte ptr [ecx+0Eh], 0
jz      short loc_4ADCB6
or      byte ptr [ecx], 82h
jmp     short loc_4ADCB9

loc_4ADCB6:
or      byte ptr [ecx], 2

loc_4ADCB9:
lea     edx, [ecx+54h]
mov     al, [ecx+3]
and     al, 0Fh
and     eax, 0FFh
mov     [esp+18h+var_18], eax
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     ebx, [esp+18h+var_18]
shl     ebx, 4
mov     ax, ds:word_53066C[ebx+eax*4]
mov     [edx], ax
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
shl     ebx, 2
mov     eax, [esp+18h+var_18]
shl     eax, 4
mov     ax, ds:word_53066E[ebx+eax]
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
mov     bh, [ecx+3]
test    bh, 80h
jz      short loc_4ADD39
xor     ebx, ebx
mov     [esp+18h+var_18], ebx
jmp     loc_4ADDDA

loc_4ADD39:
test    bh, 20h
jz      short loc_4ADD9A
lea     edx, [ecx+48h]
mov     eax, 0A4h
call    sub_4D8BC3
mov     byte ptr [ecx+0Ch], 0
mov     [esp+18h+var_18], 2
mov     eax, 1Eh
call    sub_42A701
call    sub_4DE13B
test    eax, eax
jz      short loc_4ADD7C
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 5
lea     edi, [eax+48h]
lea     esi, [ecx+48h]
movsd
movsd

loc_4ADD7C:
call    sub_4DE13B
test    eax, eax
jz      short loc_4ADDDA
mov     byte ptr [eax], 45h ; 'E'
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 6
lea     edi, [eax+48h]
lea     esi, [ecx+48h]
movsd
movsd
jmp     short loc_4ADDDA

loc_4ADD9A:
mov     al, bh
and     al, 0Fh
and     eax, 0FFh
mov     [esp+18h+var_18], eax
cmp     eax, 5
jb      short loc_4ADDB2
jbe     short loc_4ADDDA
cmp     eax, 6
jmp     short loc_4ADDB5

loc_4ADDB2:
cmp     eax, 4

loc_4ADDB5:
jz      short loc_4ADDDA
mov     edx, [ecx+48h]
sar     edx, 10h
lea     eax, [ecx+48h]
call    sub_42C7E7
sub     eax, edx
cmp     eax, 1Eh
jge     short loc_4ADDD3
xor     eax, eax
mov     [esp+18h+var_18], eax
jmp     short loc_4ADDDA

loc_4ADDD3:
mov     [esp+18h+var_18], 1

loc_4ADDDA:
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     al, ds:byte_530740[eax]
mov     [ecx+2], al
mov     edx, esp
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 80h
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 0
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4ADE10
lea     edx, [ecx+48h]
mov     eax, 0A1h
call    sub_4D8BC3

loc_4ADE10:
add     esp, 4
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ADC8D endp




sub_4ADE19 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax        ; int
xor     edx, edx
mov     dl, [eax+9]     ; int
call    ds:funcs_4ADE24[edx*4]
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     al, ds:byte_53073C[eax]
and     eax, 0FFh
mov     dl, [ecx+0Eh]
lea     esi, [ecx+48h]
or      eax, 10000000h
cmp     dl, 1
jb      short loc_4ADE57
jbe     loc_4ADF99
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4ADE57:
test    dl, dl
jnz     loc_4ADFCB
mov     dl, [ecx+3]
test    dl, 40h
jz      short loc_4ADE93
push    80h
push    0
push    eax
push    offset unk_55CD08
xor     eax, eax
mov     al, [ecx+1]
push    eax
mov     edx, [ecx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     ecx, 0A000h
jmp     loc_4ADFC0

loc_4ADE93:
cmp     dl, 6
jnz     loc_4ADF8F
cmp     byte ptr [ecx+0Fh], 0
jz      loc_4ADF62
mov     edx, [ecx+46h]
sar     edx, 10h
mov     eax, ds:dword_5F8376
sar     eax, 10h
sub     eax, edx
mov     edx, [ecx+48h]
sar     edx, 10h
mov     esi, ds:dword_5F8376+2
sar     esi, 10h
sub     esi, edx
mov     edx, esi
mov     esi, [ecx+4Ah]
sar     esi, 10h
mov     ebx, ds:dword_5F837A
sar     ebx, 10h
sub     ebx, esi
mov     esi, ebx
imul    eax, eax
imul    edx, edx
add     eax, edx
imul    esi, ebx
add     esi, eax
mov     edx, [ecx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, eax
imul    edx, eax
cmp     esi, edx
ja      loc_4ADFCB
cmp     ds:byte_5F83D8, 0
jnz     loc_4ADFCB
or      ds:byte_5F84EF, 10h
mov     al, [ecx+0Fh]
cmp     al, 2
jb      short loc_4ADF26
jbe     short loc_4ADF2D
cmp     al, 3
jz      short loc_4ADF34

loc_4ADF26:
mov     eax, 20h ; ' '
jmp     short loc_4ADF39

loc_4ADF2D:
mov     eax, 30h ; '0'
jmp     short loc_4ADF39

loc_4ADF34:
mov     eax, 40h ; '@'

loc_4ADF39:
mov     edx, dword ptr ds:unk_5F84EC
and     edx, 0FFFFFFh
add     edx, eax
mov     eax, dword ptr ds:unk_5F84EC
and     eax, 0FF000000h
or      eax, edx
or      eax, 1000000h
mov     dword ptr ds:unk_5F84EC, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4ADF62:
push    80h
push    0
push    31000000h

loc_4ADF6E:
push    offset unk_55CD08
xor     eax, eax
mov     al, [ecx+1]
push    eax
mov     edx, [ecx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     ecx, 0C000h
jmp     short loc_4ADFC0

loc_4ADF8F:
push    80h
push    0
push    eax
jmp     short loc_4ADF6E

loc_4ADF99:
push    80h
push    0
push    eax
push    offset unk_55CD08
xor     eax, eax
mov     al, [ecx+1]
push    eax
mov     edx, [ecx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     ecx, 4000h

loc_4ADFC0:
xor     ebx, ebx
mov     edx, eax
mov     eax, esi
call    sub_4E01FC

loc_4ADFCB:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ADE19 endp

db 8Bh, 0C0h
jpt_4AE008 dd offset def_4AE008 ; jump table for switch statement
dd offset loc_4AE0B5
dd offset loc_4AE139
dd offset def_4AE008
dd offset loc_4AE195
dd offset loc_4AE1E9
dd offset loc_4AE226



; int __fastcall sub_4ADFEE(int, int)
sub_4ADFEE proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
mov     ecx, eax
add     eax, 54h ; 'T'
mov     dl, [ecx+3]
and     dl, 0Fh
cmp     dl, 6           ; switch 7 cases
ja      short def_4AE008 ; jumptable 004AE008 default case, cases 0,3
and     edx, 0FFh
jmp     jpt_4AE008[edx*4] ; switch jump

def_4AE008:             ; jumptable 004AE008 default case, cases 0,3
mov     dx, [eax+2]
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
add     [ecx+4Eh], bx
cmp     word ptr [eax], 0
jg      short loc_4AE07E
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
mov     ebx, ds:dword_5306DA[ebx*8]
sar     ebx, 10h
mov     edx, [ecx+4Ch]
sar     edx, 10h
cmp     edx, ebx
jge     short loc_4AE04D

loc_4AE03F:
mov     word ptr [ecx+4Eh], 0
inc     byte ptr [ecx+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AE04D:
mov     word ptr [eax+2], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     dx, word ptr ds:dword_5306DE[edx*8]
mov     [eax], dx
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     eax, ds:dword_5306DE[eax*8]
sar     eax, 10h
mov     esi, [ecx+4Ch]
sar     esi, 10h
cmp     esi, eax
jle     short loc_4AE085

loc_4AE07E:
mov     eax, 80h
jmp     short loc_4AE099

loc_4AE085:
mov     edx, esi
sub     edx, ebx
shl     edx, 7
mov     eax, edx
sar     edx, 1Fh
idiv    esi
test    eax, eax
jge     short loc_4AE099
xor     eax, eax

loc_4AE099:
mov     edx, eax

loc_4AE09B:
or      edx, 2000000h
mov     ebx, eax
shl     ebx, 8

loc_4AE0A6:
or      edx, ebx
shl     eax, 10h
or      edx, eax
mov     [ecx+50h], edx
jmp     loc_4AE290

loc_4AE0B5:             ; jumptable 004AE008 case 1
mov     dx, [eax+2]
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
mov     si, [ecx+4Eh]
add     esi, ebx
mov     [ecx+4Eh], si
test    si, si
jle     loc_4AE03F
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
mov     ebx, ds:dword_5306FA[ebx*8]
sar     ebx, 10h
cmp     word ptr [eax], 0
jg      short loc_4AE0F4
mov     eax, [ecx+4Ch]
sar     eax, 10h
cmp     eax, ebx
jle     short loc_4AE0FB

loc_4AE0F4:
mov     eax, 80h
jmp     short loc_4AE127

loc_4AE0FB:
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
jle     short loc_4AE121
mov     eax, 0FFh
jmp     short loc_4AE127

loc_4AE121:
test    edx, edx
jge     short loc_4AE127
xor     eax, edx

loc_4AE127:
mov     ebx, eax
or      ebx, 2000000h
mov     edx, eax
shl     edx, 8
jmp     loc_4AE0A6

loc_4AE139:             ; jumptable 004AE008 case 2
mov     dx, [eax+2]
mov     si, [eax]
add     esi, edx
mov     [eax], si
add     [ecx+4Eh], si
cmp     word ptr [eax], 0
jle     loc_4AE03F
mov     eax, [ecx+0Ah]
sar     eax, 18h
shl     eax, 3
mov     edx, ds:dword_53071A[eax]
sar     edx, 10h
mov     ebx, [ecx+4Ch]
sar     ebx, 10h
cmp     ebx, edx
jle     short loc_4AE0F4
mov     al, ds:byte_53071E[eax]
mov     dh, [ecx+0Ah]
add     dh, al
mov     [ecx+0Ah], dh
cmp     dh, 80h
ja      short loc_4AE191
xor     eax, eax
mov     al, dh
mov     edx, 80h
sub     edx, eax
mov     eax, edx
jmp     short loc_4AE127

loc_4AE191:
xor     eax, eax
jmp     short loc_4AE127

loc_4AE195:             ; jumptable 004AE008 case 4
mov     dx, [eax+2]
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
mov     si, [ecx+4Eh]
add     esi, ebx
mov     [ecx+4Eh], si
cmp     word ptr [eax], 0
jg      loc_4AE07E
cmp     si, 64h ; 'd'
jge     short loc_4AE1C4
mov     word ptr [ecx+4Eh], 0
inc     byte ptr [ecx+8]

loc_4AE1C4:
mov     word ptr [eax+2], 0
mov     word ptr [eax], 0FFECh
cmp     word ptr [ecx+4Eh], 400h
jg      loc_4AE07E
mov     eax, [ecx+4Ch]
sar     eax, 10h
sar     eax, 3
jmp     loc_4AE099

loc_4AE1E9:             ; jumptable 004AE008 case 5
mov     dx, [eax+2]
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
add     [ecx+4Eh], bx
cmp     word ptr [eax], 82h
jge     short loc_4AE203
inc     byte ptr [ecx+0Ah]

loc_4AE203:
cmp     byte ptr [ecx+0Ah], 8
jb      short loc_4AE210
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Ah], 8

loc_4AE210:
xor     eax, eax
mov     al, [ecx+0Ah]
mov     edx, 8
sub     edx, eax
shl     edx, 4
mov     eax, edx
jmp     loc_4AE09B

loc_4AE226:             ; jumptable 004AE008 case 6
mov     dx, [eax+2]
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
mov     si, [ecx+4Eh]
add     esi, ebx
mov     [ecx+4Eh], si
cmp     si, 800h
jle     short loc_4AE265
mov     ah, [ecx+0Ah]
add     ah, 0Ah
mov     [ecx+0Ah], ah
cmp     ah, 80h
ja      short loc_4AE261
xor     eax, eax
mov     al, [ecx+0Ah]
mov     edx, 80h
sub     edx, eax
mov     eax, edx
jmp     short loc_4AE26A

loc_4AE261:
xor     eax, eax
jmp     short loc_4AE26A

loc_4AE265:
mov     eax, 80h

loc_4AE26A:
mov     ebx, eax
or      ebx, 2000000h
mov     edx, eax
shl     edx, 8
or      ebx, edx
mov     edx, eax
shl     edx, 10h
or      ebx, edx
mov     [ecx+50h], ebx
test    eax, eax
jnz     short loc_4AE290
mov     word ptr [ecx+4Eh], 0
inc     byte ptr [ecx+8]

loc_4AE290:
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF184
fild    word ptr [ecx+4Eh]
fmul    ds:dbl_50A3B0
fst     dword ptr [ecx+38h]
fst     dword ptr [ecx+28h]
fstp    dword ptr [ecx+18h]
inc     byte ptr [ecx+0Bh]
xor     eax, eax
mov     al, [ecx+0Bh]
shl     eax, 7
call    sub_4EF50D
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4ADFEE endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_76]


; Attributes: thunk

sub_4AE2C1 proc near
jmp     sub_4DE3EA
sub_4AE2C1 endp




sub_4AE2C6 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE2CC[edx*4]
pop     edx
retn
sub_4AE2C6 endp




sub_4AE2D5 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
lea     eax, [ecx+14h]
mov     dword ptr [eax+3Ch], 2808080h
mov     edx, [eax]
mov     edx, [edx+70h]
mov     edx, [edx+10h]
mov     [eax+40h], edx
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h
pop     edx
pop     ecx
retn
sub_4AE2D5 endp




sub_4AE308 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ecx
push    edx
sub     esp, 10h
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AE31A
inc     byte ptr [eax+8]

loc_4AE31A:
lea     ecx, [eax+14h]
mov     edx, 1115h
mov     [esp+18h+var_10], edx
mov     [esp+18h+var_14], edx
mov     [esp+18h+var_18], edx
add     eax, 18h
mov     edx, esp
call    sub_4EF689
sub     dword ptr [ecx+3Ch], 80808h
add     esp, 10h
pop     edx
pop     ecx
sub_4AE308 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_77]



sub_4AE344 proc near
mov     byte ptr [eax], 0
jmp     sub_4DE3EA
sub_4AE344 endp




sub_4AE34C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE352[edx*4]
pop     edx
retn
sub_4AE34C endp




sub_4AE35B proc near
push    edx
mov     edx, eax
mov     ah, [eax]
or      ah, 22h
mov     [edx], ah
mov     dword ptr [edx+14h], 3D48002Eh
mov     dword ptr [edx+18h], 2E808080h
mov     al, ds:byte_530770
mov     [edx+22h], al
mov     al, ds:byte_530771
mov     [edx+23h], al
xor     ah, ah
mov     al, ds:byte_530782
mov     [edx+24h], ax
call    rand_
xor     ah, ah
and     al, 3Fh
mov     [edx+26h], ax
mov     al, ds:byte_53077C
mov     [edx+0Bh], al
mov     [edx+0Ah], ah
mov     [edx+9], ah
inc     byte ptr [edx+8]
cmp     byte ptr [edx+0Ch], 0
jz      short loc_4AE3BF
add     edx, 1Ch
mov     eax, 9Bh
call    sub_4D8BC3

loc_4AE3BF:
pop     edx
retn
sub_4AE35B endp




sub_4AE3C1 proc near
push    ebx
push    edx
inc     byte ptr [eax+9]
mov     dh, [eax+0Bh]
dec     dh
mov     [eax+0Bh], dh
jnz     short loc_4AE417
mov     bh, [eax+0Ah]
inc     bh
mov     [eax+0Ah], bh
cmp     bh, 6
jb      short loc_4AE3E5
call    sub_4DE3EA
pop     edx
pop     ebx
retn

loc_4AE3E5:
xor     edx, edx
mov     dl, bh
mov     bl, ds:byte_53077C[edx]
mov     [eax+0Bh], bl
mov     bl, ds:byte_530770[edx*2]
mov     [eax+22h], bl
mov     dl, ds:byte_530771[edx*2]
mov     [eax+23h], dl
xor     edx, edx
mov     dl, [eax+9]
mov     dl, ds:byte_530782[edx]
xor     dh, dh
mov     [eax+24h], dx

loc_4AE417:
pop     edx
pop     ebx
retn
sub_4AE3C1 endp




sub_4AE41A proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE420[edx*4]
pop     edx
retn
sub_4AE41A endp

align 2
jpt_4AE466 dd offset def_4AE466 ; jump table for switch statement
dd offset loc_4AE475
dd offset loc_4AE48A
dd offset loc_4AE49F



sub_4AE43A proc near
push    edx
or      byte ptr [eax], 2
or      byte ptr [eax+6], 20h
mov     dword ptr [eax+14h], 3D48002Eh
mov     dword ptr [eax+18h], 2E404040h
mov     byte ptr [eax+22h], 20h ; ' '
mov     byte ptr [eax+23h], 0
mov     dl, [eax+3]
cmp     dl, 3           ; switch 4 cases
ja      short def_4AE466 ; jumptable 004AE466 default case, case 0
and     edx, 0FFh
jmp     jpt_4AE466[edx*4] ; switch jump

def_4AE466:             ; jumptable 004AE466 default case, case 0
mov     word ptr [eax+24h], 0Dh
jmp     short loc_4AE4A5

loc_4AE475:             ; jumptable 004AE466 case 1
mov     word ptr [eax+24h], 20h ; ' '
mov     dl, ds:byte_530798
mov     [eax+0Bh], dl
mov     byte ptr [eax+3], 1
jmp     short loc_4AE4B2

loc_4AE48A:             ; jumptable 004AE466 case 2
mov     word ptr [eax+24h], 40h ; '@'
mov     dl, ds:byte_53079C
mov     [eax+0Bh], dl
mov     byte ptr [eax+3], 2
jmp     short loc_4AE4B2

loc_4AE49F:             ; jumptable 004AE466 case 3
mov     word ptr [eax+24h], 80h

loc_4AE4A5:
mov     dl, ds:byte_530794
mov     [eax+0Bh], dl
mov     byte ptr [eax+3], 0

loc_4AE4B2:
mov     byte ptr [eax+0Ah], 0
inc     byte ptr [eax+8]
pop     edx
retn
sub_4AE43A endp




sub_4AE4BB proc near
push    edx
mov     dl, [eax+3]
cmp     dl, 1
jb      short loc_4AE4C8
jbe     short loc_4AE4DD
jmp     short loc_4AE4E3

loc_4AE4C8:
test    dl, dl
jnz     short loc_4AE4E3
dec     word ptr [eax+1Eh]
inc     word ptr [eax+24h]

loc_4AE4D4:
sub     dword ptr [eax+18h], 40404h
jmp     short loc_4AE4F4

loc_4AE4DD:
dec     word ptr [eax+24h]
jmp     short loc_4AE4D4

loc_4AE4E3:
sub     word ptr [eax+1Eh], 5
add     word ptr [eax+24h], 6
add     dword ptr [eax+18h], 40404h

loc_4AE4F4:
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AE514
xor     edx, edx
mov     dl, [eax+3]
mov     dl, ds:byte_530795[edx*4]
mov     [eax+0Bh], dl
inc     byte ptr [eax+8]
mov     byte ptr [eax+22h], 40h ; '@'

loc_4AE514:
pop     edx
retn
sub_4AE4BB endp




sub_4AE516 proc near
push    edx
mov     dl, [eax+3]
cmp     dl, 1
jb      short loc_4AE523
jbe     short loc_4AE531
jmp     short loc_4AE537

loc_4AE523:
test    dl, dl
jnz     short loc_4AE537
dec     word ptr [eax+1Eh]
inc     word ptr [eax+24h]
jmp     short loc_4AE541

loc_4AE531:
dec     word ptr [eax+24h]
jmp     short loc_4AE541

loc_4AE537:
sub     word ptr [eax+1Eh], 5
sub     word ptr [eax+24h], 2

loc_4AE541:
sub     dword ptr [eax+18h], 40404h
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AE568
xor     edx, edx
mov     dl, [eax+3]
mov     dl, ds:byte_530796[edx*4]
mov     [eax+0Bh], dl
inc     byte ptr [eax+8]
mov     byte ptr [eax+22h], 60h ; '`'

loc_4AE568:
pop     edx
retn
sub_4AE516 endp




sub_4AE56A proc near
push    edx
mov     dl, [eax+3]
cmp     dl, 1
jb      short loc_4AE577
jbe     short loc_4AE586
jmp     short loc_4AE58C

loc_4AE577:
test    dl, dl
jnz     short loc_4AE58C
sub     word ptr [eax+1Eh], 2
inc     word ptr [eax+24h]
jmp     short loc_4AE596

loc_4AE586:
dec     word ptr [eax+24h]
jmp     short loc_4AE596

loc_4AE58C:
sub     word ptr [eax+1Eh], 5
sub     word ptr [eax+24h], 2

loc_4AE596:
sub     dword ptr [eax+18h], 40404h
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AE5BD
xor     edx, edx
mov     dl, [eax+3]
mov     dl, ds:byte_530797[edx*4]
mov     [eax+0Bh], dl
inc     byte ptr [eax+8]
mov     byte ptr [eax+22h], 80h

loc_4AE5BD:
pop     edx
retn
sub_4AE56A endp




sub_4AE5BF proc near
push    edx
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AE5D1
mov     [eax], dl
call    sub_4DE3EA

loc_4AE5D1:
pop     edx
retn
sub_4AE5BF endp




sub_4AE5D3 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE5D9[edx*4]
pop     edx
retn
sub_4AE5D3 endp




sub_4AE5E2 proc near
push    ecx
push    edx
mov     edx, eax
mov     ah, [eax]
or      ah, 22h
mov     [edx], ah
mov     dword ptr [edx+14h], 3D48002Eh
mov     dword ptr [edx+18h], 2E208080h
mov     al, ds:byte_5307B4
mov     [edx+22h], al
mov     al, ds:byte_5307B5
mov     [edx+23h], al
cmp     byte ptr [edx+3], 0
jnz     short loc_4AE615
mov     byte ptr [edx+0Ch], 0Ch

loc_4AE615:
mov     eax, [edx+9]
sar     eax, 18h
xor     ecx, ecx
mov     cl, ds:byte_5307C6
imul    eax, ecx
sar     eax, 4
mov     [edx+24h], ax
call    rand_
xor     ah, ah
and     al, 3Fh
mov     [edx+26h], ax
mov     al, ds:byte_5307C0
mov     [edx+0Bh], al
mov     [edx+0Ah], ah
mov     [edx+9], ah
inc     byte ptr [edx+8]
pop     edx
pop     ecx
retn
sub_4AE5E2 endp




sub_4AE64E proc near
push    ebx
push    ecx
push    edx
inc     byte ptr [eax+9]
mov     dh, [eax+0Bh]
dec     dh
mov     [eax+0Bh], dh
jnz     short loc_4AE6B2
mov     bh, [eax+0Ah]
inc     bh
mov     [eax+0Ah], bh
cmp     bh, 6
jb      short loc_4AE674
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn

loc_4AE674:
xor     edx, edx
mov     dl, bh
mov     bl, ds:byte_5307C0[edx]
mov     [eax+0Bh], bl
mov     bl, ds:byte_5307B4[edx*2]
mov     [eax+22h], bl
mov     dl, ds:byte_5307B5[edx*2]
mov     [eax+23h], dl
xor     edx, edx
mov     dl, [eax+9]
xor     ecx, ecx
mov     cl, ds:byte_5307C6[edx]
mov     edx, [eax+9]
sar     edx, 18h
imul    edx, ecx
sar     edx, 4
mov     [eax+24h], dx

loc_4AE6B2:
pop     edx
pop     ecx
pop     ebx
retn
sub_4AE64E endp




sub_4AE6B6 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE6BC[edx*4]
pop     edx
retn
sub_4AE6B6 endp




sub_4AE6C5 proc near
push    ebx
push    ecx
push    edx
or      byte ptr [eax], 22h
xor     ecx, ecx
mov     cl, [eax+3]
cmp     ecx, 10h
jb      short loc_4AE6EA
mov     word ptr [eax+24h], 40h ; '@'
mov     dh, [eax+3]
sub     dh, 10h
mov     [eax+3], dh
xor     ecx, ecx
mov     cl, dh
jmp     short loc_4AE6FE

loc_4AE6EA:
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_5307E2[edx*4]
xor     dh, dh
mov     [eax+24h], dx

loc_4AE6FE:
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     ecx, ds:dword_5307D8[edx*4]
mov     [eax+14h], ecx
mov     ecx, ds:dword_5307DC[edx*4]
mov     [eax+18h], ecx
mov     bl, ds:byte_5307E0[edx*4]
mov     [eax+22h], bl
mov     bl, ds:byte_5307E1[edx*4]
mov     [eax+23h], bl
mov     byte ptr [eax+0Ah], 0
mov     dl, ds:byte_5307E3[edx*4]
mov     [eax+8], dl
pop     edx
pop     ecx
pop     ebx
retn
sub_4AE6C5 endp




sub_4AE73F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+28h]
cmp     dword ptr [eax+40h], 0FFFFh
jnz     short loc_4AE759
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn

loc_4AE759:
mov     byte ptr [eax+22h], 0A0h
mov     byte ptr [eax+23h], 40h ; '@'
mov     ah, [eax+8]
inc     ah
mov     [ecx+8], ah
cmp     word ptr [ecx+24h], 40h ; '@'
jb      short loc_4AE7CD
mov     edx, [ebx+6]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 8
sbb     eax, edx
sar     eax, 8
mov     edx, [ecx+1Ah]
sar     edx, 10h
sub     edx, eax
mov     [ecx+1Ch], dx
mov     edx, [ebx+8]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 8
sbb     eax, edx
sar     eax, 8
mov     edx, [ecx+1Ch]
sar     edx, 10h
sub     edx, eax
mov     [ecx+1Eh], dx
mov     edx, [ebx+0Ah]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 8
sbb     eax, edx
sar     eax, 8
mov     edx, [ecx+1Eh]
sar     edx, 10h
sub     edx, eax
mov     [ecx+20h], dx

loc_4AE7CD:
shr     word ptr [ecx+24h], 1
pop     edx
pop     ecx
pop     ebx
retn
sub_4AE73F endp




sub_4AE7D5 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+28h]
call    rand_
xor     ah, ah
and     al, 3Fh
mov     [edx+26h], ax
inc     byte ptr [edx+8]
mov     byte ptr [edx+0Ah], 10h
mov     eax, [edx+40h]
call    sub_4EF008
neg     eax
shl     eax, 3
sar     eax, 0Ch
mov     [ecx+8], ax
call    rand_
xor     ah, ah
and     al, 3
sub     eax, 14h
mov     [ecx+0Ah], ax
mov     eax, [edx+40h]
call    sub_4EF003
neg     eax
shl     eax, 3
sar     eax, 0Ch
mov     [ecx+0Ch], ax
mov     word ptr [ecx+4], 0
mov     ax, [ecx+4]
mov     [ecx], ax
mov     word ptr [ecx+2], 5
pop     edx
pop     ecx
retn
sub_4AE7D5 endp




sub_4AE83E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
xor     ecx, ecx
mov     cl, [eax+1]
add     eax, 1Ch
xor     ebx, ebx
mov     edx, eax
call    sub_42CE61
test    eax, eax
jnz     short loc_4AE8CB
mov     dword ptr [esi+14h], 3D48002Eh
mov     al, [esi+0Ah]
shl     eax, 3
mov     edx, eax
or      edx, 2E000000h
mov     ecx, eax
shl     ecx, 8
or      ecx, edx
shl     eax, 10h
or      ecx, eax
mov     [esi+18h], ecx
lea     eax, [esi+28h]
mov     cl, [esi+0Ah]
mov     dl, cl
dec     dl
mov     [esi+0Ah], dl
test    cl, cl
jz      short loc_4AE8CB
mov     cx, [eax]
mov     dx, [eax+8]
add     edx, ecx
mov     [eax+8], dx
add     [esi+1Ch], dx
mov     cx, [eax+2]
mov     di, [eax+0Ah]
add     edi, ecx
mov     [eax+0Ah], di
add     [esi+1Eh], di
mov     cx, [eax+4]
mov     bx, [eax+0Ch]
add     ebx, ecx
mov     [eax+0Ch], bx
add     [esi+20h], bx
add     word ptr [esi+26h], 8
jmp     short loc_4AE8CE

loc_4AE8CB:
inc     byte ptr [esi+8]

loc_4AE8CE:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AE83E endp



; Attributes: thunk

sub_4AE8D4 proc near
jmp     sub_4DE3EA
sub_4AE8D4 endp




sub_4AE8D9 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:dword_5307DC[edx*4]
mov     [eax+22h], dl
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:(dword_5307DC+2)[edx*4]
mov     [eax+23h], dl
inc     byte ptr [eax+8]
lea     edx, [eax+1Ch]
mov     eax, 121h
call    sub_4D8BC3
pop     edx
retn
sub_4AE8D9 endp




sub_4AE90A proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:dword_5307DC[edx*4]
mov     [eax+22h], dl
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:(dword_5307DC+2)[edx*4]
mov     [eax+23h], dl
inc     byte ptr [eax+8]
pop     edx
retn
sub_4AE90A endp




sub_4AE92E proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:dword_5307DC[edx*4]
mov     [eax+22h], dl
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:(dword_5307DC+2)[edx*4]
mov     [eax+23h], dl
mov     byte ptr [eax+8], 4
pop     edx
retn
sub_4AE92E endp




sub_4AE953 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE959[edx*4]
pop     edx
retn
sub_4AE953 endp




sub_4AE962 proc near
push    ecx
push    edx
mov     ecx, eax
call    rand_
test    al, 1
jz      short loc_4AE972
or      byte ptr [ecx], 2

loc_4AE972:
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
inc     byte ptr [ecx+8]
lea     edx, [ecx+48h]
mov     eax, 9Bh
call    sub_4D8BC3
mov     eax, ecx
call    sub_4AEBBB
mov     eax, ecx
call    sub_4AEC4A
pop     edx
pop     ecx
retn
sub_4AE962 endp




; int __fastcall sub_4AE99D(int, int)
sub_4AE99D proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= byte ptr -20h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
push    edi             ; float
push    ebp             ; int
sub     esp, 10h
mov     ebp, eax
lea     edi, [esp+28h+var_20]
lea     esi, [ebp+48h]
movsd
movsd
mov     ax, [eax+42h]
mov     dx, [ebp+3Ch]
add     edx, eax
mov     [ebp+3Ch], dx
add     [ebp+48h], dx
mov     ax, [ebp+44h]
mov     cx, [ebp+3Eh]
add     ecx, eax
mov     [ebp+3Eh], cx
add     [ebp+4Ah], cx
mov     ax, [ebp+46h]
mov     di, [ebp+40h]
add     edi, eax
mov     [ebp+40h], di
add     [ebp+4Ch], di
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
mov     eax, ebp
call    sub_4AEBBB
xor     edx, edx
mov     dl, [ebp+0Ah]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_5308D8
add     ecx, eax
mov     ebx, 1
lea     edx, [esp+28h+var_20]
mov     eax, esp
call    sub_42DF6E
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      loc_4AEAB4
mov     eax, [esp+28h+var_28]
mov     [ebp+48h], ax
mov     eax, [esp+28h+var_28+2]
mov     [ebp+4Ah], ax
mov     eax, [esp+28h+var_24]
mov     [ebp+4Ch], ax
test    dh, 10h
jz      short loc_4AEAAA
mov     eax, [ebp+3Ch]
sar     eax, 10h
sar     eax, 1
sar     word ptr [ebp+4Eh], 1
cmp     eax, 1
jg      short loc_4AEAA6
mov     word ptr [ebp+3Eh], 0
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+0Bh], 1
mov     dword ptr [ebp+34h], 0
mov     eax, [ebp+34h]
mov     [ebp+30h], eax
mov     eax, [ebp+30h]
mov     [ebp+2Ch], eax
mov     eax, [ebp+2Ch]
mov     [ebp+24h], eax
mov     eax, [ebp+24h]
mov     [ebp+20h], eax
mov     eax, [ebp+20h]
mov     [ebp+1Ch], eax
fild    word ptr [ebp+4Eh]
fmul    ds:dbl_50A3B8
fst     dword ptr [ebp+38h]
fst     dword ptr [ebp+28h]
fstp    dword ptr [ebp+18h]
lea     edx, [ebp+18h]
mov     eax, [ebp+0Ah]
sar     eax, 10h
call    sub_4EF50D

loc_4AEAA6:
sar     word ptr [ebp+3Eh], 1

loc_4AEAAA:
lea     eax, [ebp+3Ch]
mov     edx, ecx
call    sub_42D90F

loc_4AEAB4:
mov     eax, ebp
call    sub_4AEC4A
add     esp, 10h
pop     ebp

loc_4AEABF:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AE99D endp




sub_4AEAC5 proc near
push    edx
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AEAD4
add     byte ptr [eax+8], 2

loc_4AEAD4:
pop     edx
retn
sub_4AEAC5 endp




sub_4AEAD6 proc near
push    edx
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AEAE4
inc     byte ptr [eax+8]

loc_4AEAE4:
