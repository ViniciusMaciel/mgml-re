mov     eax, ecx
pop     ecx
retn
sub_4F1D5C endp




sub_4F1E9C proc near

; FUNCTION CHUNK AT 004F3509 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
xor     esi, esi
jmp     short loc_4F1EB1

loc_4F1EA7:
inc     esi
cmp     esi, 20h ; ' '
jge     loc_4F3509

loc_4F1EB1:
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
cmp     ds:word_783ED4[eax], 0
jz      short loc_4F1EA7
mov     edx, ds:dword_783EDC[eax]
test    edx, edx
jz      short loc_4F1EE3
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]

loc_4F1EE3:
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
mov     ecx, ds:dword_783ED8[eax]
test    ecx, ecx
jz      short loc_4F1F09
mov     edx, [ecx]
push    ecx
call    dword ptr [edx+8]

loc_4F1F09:
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 7
mov     ecx, offset word_783ED4
add     ecx, eax
mov     edx, esi
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
mov     ebx, 0Ch
xor     edx, esi
call    memset_
jmp     loc_4F1EA7
sub_4F1E9C endp




sub_4F1F39 proc near

; FUNCTION CHUNK AT 004F3509 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
xor     edi, edi
jmp     short loc_4F1F4C

loc_4F1F42:
inc     edi
cmp     edi, 20h ; ' '
jge     loc_4F3509

loc_4F1F4C:
xor     esi, esi
jmp     short loc_4F1F81

loc_4F1F50:
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 7
mov     ecx, offset word_783ED4
add     ecx, eax
mov     edx, esi
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
mov     ebx, 0Ch
xor     edx, esi
call    memset_
inc     esi
cmp     esi, 20h ; ' '
jge     short loc_4F1F42

loc_4F1F81:
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
mov     edx, ds:dword_783EDC[eax]
test    edx, edx
jz      short loc_4F1FA9
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]

loc_4F1FA9:
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
mov     ecx, ds:dword_783ED8[eax]
test    ecx, ecx
jz      short loc_4F1F50
mov     edx, [ecx]
push    ecx
call    dword ptr [edx+8]
jmp     loc_4F1F50
sub_4F1F39 endp




sub_4F1FD4 proc near
push    ebx
push    ecx
push    edx
push    esi
xor     esi, esi
jmp     short loc_4F2003

loc_4F1FDC:
mov     edx, esi
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, offset word_7873C4
mov     ebx, 0Ch
xor     edx, esi
call    memset_
inc     esi
cmp     esi, 40h ; '@'
jge     loc_4F350A

loc_4F2003:
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
mov     edx, ds:dword_7873CC[eax]
test    edx, edx
jz      short loc_4F201F
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]

loc_4F201F:
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
mov     ecx, ds:dword_7873C8[eax]
test    ecx, ecx
jz      short loc_4F1FDC
mov     edx, [ecx]
push    ecx
call    dword ptr [edx+8]
jmp     short loc_4F1FDC
sub_4F1FD4 endp




sub_4F203B proc near

var_8C= byte ptr -8Ch
var_88= dword ptr -88h
var_84= dword ptr -84h
var_80= dword ptr -80h
var_44= byte ptr -44h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_10= byte ptr -10h

push    ebx
push    ecx
push    edi
sub     esp, 80h
mov     ecx, eax
mov     eax, esp
call    sub_4F188E
mov     [esp+8Ch+var_88], 1007h
mov     [esp+8Ch+var_24], 1800h
xor     edi, edi
mov     [esp+8Ch+var_20], edi
mov     [esp+8Ch+var_80], ecx
mov     [esp+8Ch+var_84], edx
cmp     ds:dword_782C20, 18h
jnz     short loc_4F207E
mov     ds:dword_782C20, 20h ; ' '

loc_4F207E:
mov     ebx, 20h ; ' '
mov     edx, offset unk_782C14
lea     eax, [esp+8Ch+var_44]
call    memcpy_
mov     eax, ds:dword_551CF0
mov     ecx, [eax]
push    0
lea     edx, [esp+90h+var_10]
push    edx
lea     edx, [esp+94h+var_8C]
push    edx
push    eax
call    dword ptr [ecx+18h]
mov     eax, dword ptr [esp+8Ch+var_10]
add     esp, 80h
pop     edi
pop     ecx
pop     ebx
retn
sub_4F203B endp




sub_4F20B9 proc near

var_A8= dword ptr -0A8h
var_A4= dword ptr -0A4h
var_A0= dword ptr -0A0h
var_9C= dword ptr -9Ch
var_98= dword ptr -98h
var_84= dword ptr -84h
var_60= byte ptr -60h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
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
sub     esp, 94h
mov     edi, eax
mov     [esp+0A8h+var_18], edx
and     edi, 1Fh
xor     esi, esi
jmp     short loc_4F20DA

loc_4F20D4:
inc     esi
cmp     esi, 20h ; ' '
jge     short loc_4F20F6

loc_4F20DA:
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
cmp     ds:word_783ED4[ecx+eax*4], 0
jnz     short loc_4F20D4

loc_4F20F6:
cmp     esi, 20h ; ' '
jnz     short loc_4F2102

loc_4F20FB:
xor     eax, eax
jmp     loc_4F2494

loc_4F2102:
mov     eax, edi
and     eax, 0Fh
shl     eax, 7
mov     [esp+0A8h+var_20], eax
mov     eax, edi
and     eax, 10h
shl     eax, 4
mov     [esp+0A8h+var_1C], eax
mov     eax, esp
call    sub_4F188E
test    byte ptr ds:dword_88787C, 1
jz      loc_4F22CA
mov     [esp+0A8h+var_A4], 1007h
mov     [esp+0A8h+var_40], 840h
mov     eax, 100h
mov     [esp+0A8h+var_9C], eax
mov     [esp+0A8h+var_A0], eax
cmp     ds:dword_782C20, 18h
jnz     short loc_4F2164
mov     ds:dword_782C20, 20h ; ' '

loc_4F2164:
mov     ebx, 20h ; ' '
mov     edx, offset unk_782C14
lea     eax, [esp+0A8h+var_60]
call    memcpy_
mov     edx, ds:dword_551CF0
mov     ebx, [edx]
push    0
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 7
mov     [esp+0ACh+var_24], eax
mov     ebp, offset word_783ED4
add     ebp, eax
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
mov     [esp+0ACh+var_2C], eax
add     eax, ebp
add     eax, 4
push    eax
lea     eax, [esp+0B0h+var_A8]
push    eax
push    edx
call    dword ptr [ebx+18h]
test    eax, eax
jnz     loc_4F20FB
mov     eax, [esp+0A8h+var_1C]
shl     eax, 0Bh
add     eax, offset byte_7876C4
mov     ebp, [esp+0A8h+var_20]
add     ebp, eax
mov     eax, [esp+0A8h+var_18]
and     eax, 3Fh
shl     eax, 4
mov     [esp+0A8h+var_20], eax
mov     eax, [esp+0A8h+var_18]
sar     eax, 6
and     eax, 1FFh
mov     [esp+0A8h+var_1C], eax
mov     edx, eax
mov     eax, [esp+0A8h+var_20]
call    sub_4F1D5C
mov     ebx, ds:dword_782C38[eax*8]
test    ebx, ebx
jnz     short loc_4F222B
mov     eax, ds:dword_551D00
call    sub_4F190F
jmp     loc_4F22A9

loc_4F222B:
mov     eax, esp
call    sub_4F188E
mov     eax, [esp+0A8h+var_24]
add     eax, [esp+0A8h+var_2C]
mov     eax, ds:dword_783ED8[eax]
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+0B0h+var_A8]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
test    eax, eax
jnz     loc_4F20FB
test    byte ptr [esp+0A8h+var_18+1], 80h
jz      short loc_4F2277
mov     ecx, [esp+0A8h+var_98]
mov     edx, ebp
mov     eax, [esp+0A8h+var_84]
call    sub_4FB8EA
jmp     short loc_4F2286

loc_4F2277:
mov     ecx, [esp+0A8h+var_98]
mov     edx, ebp
mov     eax, [esp+0A8h+var_84]
call    sub_4FB766

loc_4F2286:
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
mov     eax, ds:dword_783ED8[ecx+eax*4]
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]

loc_4F22A9:
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     edx, esi
mov     eax, esi
shl     eax, 2
sub     eax, esi
xor     ebx, ebx
mov     ds:dword_783EDC[ecx+eax*4], ebx
jmp     loc_4F2465

loc_4F22CA:
mov     [esp+0A8h+var_A4], 1007h
mov     [esp+0A8h+var_40], 1000h
mov     [esp+0A8h+var_3C], 10h
mov     ebp, 100h
mov     [esp+0A8h+var_9C], ebp
mov     [esp+0A8h+var_A0], ebp
mov     ebx, 20h ; ' '
mov     edx, offset unk_782C14
lea     eax, [esp+0A8h+var_60]
call    memcpy_
mov     edx, ds:dword_551CF0
mov     ecx, [edx]
push    0
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 7
mov     [esp+0ACh+var_28], eax
mov     ebp, offset word_783ED4
add     ebp, eax
mov     ebx, esi
shl     ebx, 2
sub     ebx, esi
shl     ebx, 2
add     ebp, ebx
lea     eax, [ebp+4]
push    eax
lea     eax, [esp+0B0h+var_A8]
push    eax
push    edx
call    dword ptr [ecx+18h]
test    eax, eax
jnz     loc_4F20FB
mov     eax, [esp+0A8h+var_28]
mov     eax, ds:dword_783ED8[ebx+eax]
mov     edx, [eax]
add     ebp, 8
push    ebp
push    offset word_4F0D9E
push    eax
call    dword ptr [edx]
mov     eax, [esp+0A8h+var_1C]
shl     eax, 0Bh
add     eax, offset byte_7876C4
mov     ebp, [esp+0A8h+var_20]
add     ebp, eax
mov     eax, [esp+0A8h+var_18]
and     eax, 3Fh
shl     eax, 4
mov     [esp+0A8h+var_20], eax
mov     eax, [esp+0A8h+var_18]
sar     eax, 6
and     eax, 1FFh
mov     [esp+0A8h+var_1C], eax
mov     edx, eax
mov     eax, [esp+0A8h+var_20]
call    sub_4F1D5C
mov     ebx, eax
shl     ebx, 3
mov     ebx, ds:dword_782C38[ebx]
test    ebx, ebx
jnz     short loc_4F23CC
mov     eax, ds:dword_551D00
call    sub_4F190F
jmp     short loc_4F242B

loc_4F23CC:
mov     eax, esp
call    sub_4F188E
mov     eax, ds:dword_551D00
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+0B0h+var_A8]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
test    eax, eax
jnz     loc_4F20FB
test    byte ptr [esp+0A8h+var_18+1], 80h
jz      short loc_4F240C
mov     ecx, [esp+0A8h+var_98]
mov     edx, ebp
mov     eax, [esp+0A8h+var_84]
call    sub_4FB8EA
jmp     short loc_4F241B

loc_4F240C:
mov     ecx, [esp+0A8h+var_98]
mov     edx, ebp
mov     eax, [esp+0A8h+var_84]
call    sub_4FB766

loc_4F241B:
mov     eax, ds:dword_551D00
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]

loc_4F242B:
mov     ebx, edi
shl     ebx, 2
sub     ebx, edi
shl     ebx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     ebx, eax
mov     eax, ds:dword_783ED8[ebx]
mov     edx, [eax]
push    0
push    1000000h
push    0
mov     ecx, ds:dword_551D00
push    ecx
push    0
push    eax
call    dword ptr [edx+14h]
mov     edx, ds:dword_783EDC[ebx]

loc_4F2465:
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
mov     ds:word_783ED4[ecx+eax*4], 1
mov     ebx, [esp+0A8h+var_18]
and     bh, 7Fh
mov     ds:word_783ED6[ecx+eax*4], bx
mov     eax, edx

loc_4F2494:
add     esp, 94h

loc_4F249A:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4F20B9 endp




sub_4F24A0 proc near

var_8C= byte ptr -8Ch
var_7C= dword ptr -7Ch
var_68= dword ptr -68h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 7Ch
mov     ecx, eax
and     ecx, 0Fh
mov     ebx, eax
and     ebx, 10h
shl     ecx, 7
and     eax, 1Fh
shl     ebx, 0Fh
add     ebx, offset byte_7876C4
lea     edi, [ebx+ecx]
mov     esi, eax
shl     esi, 2
sub     esi, eax
mov     eax, esi
shl     eax, 7
mov     esi, edx
shl     esi, 2
sub     esi, edx
shl     esi, 2
add     esi, eax
mov     ds:word_783ED4[esi], 1
xor     eax, eax
mov     ax, ds:word_783ED6[esi]
mov     ecx, eax
and     ecx, 3Fh
shl     ecx, 4
mov     edx, eax
sar     edx, 6
and     edx, 1FFh
mov     eax, ecx
call    sub_4F1D5C
mov     ebx, eax
shl     ebx, 3
mov     ebx, ds:dword_782C38[ebx]
mov     eax, esp
call    sub_4F188E
test    byte ptr ds:dword_88787C, 1
jz      short loc_4F2563
mov     eax, ds:dword_783ED8[esi]
mov     ecx, [eax]
push    0
push    1
lea     edx, [esp+94h+var_8C]
push    edx
push    0
push    eax
call    dword ptr [ecx+64h]
test    eax, eax
jnz     loc_4F25BA
mov     ecx, [esp+8Ch+var_7C]
mov     edx, edi
mov     eax, [esp+8Ch+var_68]
call    sub_4FB766
mov     eax, ds:dword_783ED8[esi]
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]
jmp     short loc_4F25BA

loc_4F2563:
mov     eax, ds:dword_551D00
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+94h+var_8C]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
test    eax, eax
jnz     short loc_4F25BA
mov     ecx, [esp+8Ch+var_7C]
mov     edx, edi
mov     eax, [esp+8Ch+var_68]
call    sub_4FB766
mov     eax, ds:dword_551D00
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]
mov     eax, ds:dword_783ED8[esi]
mov     ecx, [eax]
push    0
push    1000000h
push    0
mov     edx, ds:dword_551D00
push    edx
push    0
push    eax
call    dword ptr [ecx+14h]

loc_4F25BA:
add     esp, 7Ch
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4F24A0 endp




sub_4F25C2 proc near

var_98= dword ptr -98h
var_94= dword ptr -94h
var_90= dword ptr -90h
var_8C= dword ptr -8Ch
var_84= dword ptr -84h
var_70= dword ptr -70h
var_50= byte ptr -50h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 84h
push    eax
mov     esi, edx
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
cmp     ds:dword_7873C8[eax], 0
jz      short loc_4F2636
mov     ecx, ds:dword_7873CC[eax]
test    ecx, ecx
jz      short loc_4F25F9
mov     edx, [ecx]
push    ecx
call    dword ptr [edx+8]

loc_4F25F9:
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ebx, ds:dword_7873C8[eax]
test    ebx, ebx
jz      short loc_4F2619
mov     edx, [ebx]
push    ebx
call    dword ptr [edx+8]

loc_4F2619:
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
xor     edi, edi
mov     ds:dword_7873CC[eax*4], edi
mov     ds:dword_7873C8[eax*4], edi

loc_4F2636:
lea     eax, [esp+9Ch+var_98]
call    sub_4F188E
test    byte ptr ds:dword_88787C, 1
jz      loc_4F278D
mov     [esp+9Ch+var_94], 1007h
mov     [esp+9Ch+var_30], 840h
mov     ebp, 20h ; ' '
mov     [esp+9Ch+var_8C], ebp
mov     [esp+9Ch+var_90], ebp
cmp     ds:dword_782C20, 18h
jnz     short loc_4F2678
mov     ds:dword_782C20, ebp

loc_4F2678:
mov     ebx, 20h ; ' '
mov     edx, offset unk_782C14
lea     eax, [esp+9Ch+var_50]
call    memcpy_
mov     ebx, ds:dword_551CF0
mov     edx, [ebx]
push    0
mov     edi, ds:dword_887880
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 2
add     eax, offset word_7873C4
add     eax, 4
push    eax
lea     eax, [esp+0A4h+var_98]
push    eax
push    ebx
call    dword ptr [edx+18h]
test    eax, eax
jz      short loc_4F26C2

loc_4F26BB:
xor     eax, eax
jmp     loc_4F2936

loc_4F26C2:
mov     ebx, [esp+98h+var_98]
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 4
add     eax, ebx
shl     eax, 3
mov     edi, offset unk_5F914C
add     edi, eax
mov     eax, esi
and     eax, 3Fh
shl     eax, 4
mov     edx, esi
sar     edx, 6
and     edx, 1FFh
call    sub_4F1D5C
mov     ebx, ds:dword_782C38[eax*8]
lea     eax, [esp+98h+var_94]
call    sub_4F188E
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_7873C8[eax*4]
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+0A0h+var_94]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
test    eax, eax
jnz     short loc_4F26BB
mov     ecx, [esp+98h+var_84]
mov     edx, edi
mov     eax, [esp+98h+var_70]
call    sub_4FB9D0
mov     ebx, ds:dword_887880
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
mov     eax, ds:dword_7873C8[eax*4]
mov     ebx, [eax]
push    0
push    eax
call    dword ptr [ebx+80h]
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [esp+98h+var_98]
mov     ds:word_7873C4[eax*4], dx
mov     ds:word_7873C6[eax*4], si
xor     ebx, ebx
mov     ds:dword_7873CC[eax*4], ebx
mov     eax, ds:dword_887880
jmp     loc_4F291C

loc_4F278D:
mov     [esp+9Ch+var_94], 1007h
mov     [esp+9Ch+var_30], 1000h
mov     [esp+9Ch+var_2C], 10h
mov     ebx, 20h ; ' '
mov     [esp+9Ch+var_8C], ebx
mov     [esp+9Ch+var_90], ebx
mov     edx, offset unk_782C14
lea     eax, [esp+9Ch+var_50]
call    memcpy_
mov     ebx, ds:dword_551CF0
mov     edi, [ebx]
push    0
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset word_7873C4
add     eax, 4
push    eax
lea     eax, [esp+0A4h+var_98]
push    eax
push    ebx
call    dword ptr [edi+18h]
test    eax, eax
jnz     loc_4F26BB
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ebx, ds:dword_7873C8[eax]
mov     edx, [ebx]
add     eax, offset word_7873C4
add     eax, 8
push    eax
push    offset word_4F0D9E
push    ebx
call    dword ptr [edx]
xor     ebp, ebp
mov     [esp+98h+var_18], ebp
mov     [esp+98h+var_14], ebp
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_7873C8[eax*4]
mov     edx, [eax]
lea     ebx, [esp+98h+var_18]
push    ebx
push    8
push    eax
call    dword ptr [edx+74h]
mov     ebx, [esp+98h+var_98]
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 4
add     eax, ebx
shl     eax, 3
mov     edi, offset unk_5F914C
add     edi, eax
mov     eax, esi
and     eax, 3Fh
shl     eax, 4
mov     edx, esi
sar     edx, 6
and     edx, 1FFh
call    sub_4F1D5C
mov     ebx, ds:dword_782C38[eax*8]
lea     eax, [esp+98h+var_94]
call    sub_4F188E
mov     eax, ds:dword_551D04
mov     edx, [eax]
push    ebp
push    1
lea     ecx, [esp+0A0h+var_94]
push    ecx
push    ebp
push    eax
call    dword ptr [edx+64h]
test    eax, eax
jnz     loc_4F26BB
mov     ecx, [esp+98h+var_84]
mov     edx, edi
mov     eax, [esp+98h+var_70]
call    sub_4FB9D0
mov     eax, ds:dword_551D04
mov     edx, [eax]
push    ebp
push    eax
call    dword ptr [edx+80h]
mov     ebx, ds:dword_887880
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
mov     eax, ds:dword_7873C8[eax*4]
mov     edx, [eax]
push    ebp
push    1000000h
push    ebp
mov     ecx, ds:dword_551D04
push    ecx
push    ebp
push    eax
call    dword ptr [edx+14h]
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [esp+98h+var_98]
mov     ds:word_7873C4[eax*4], dx
mov     ds:word_7873C6[eax*4], si
mov     eax, ds:dword_7873CC[eax*4]

loc_4F291C:
mov     esi, ds:dword_887880
inc     esi
mov     ds:dword_887880, esi
cmp     esi, 40h ; '@'
jnz     short loc_4F2936
xor     ebp, ebp
mov     ds:dword_887880, ebp

loc_4F2936:
add     esp, 88h
jmp     loc_4F249A
sub_4F25C2 endp




sub_4F2941 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebx, eax
mov     edi, edx
mov     ebp, eax
shr     ebp, 7
and     ebp, 3
and     ebx, 1Fh
xor     edx, edx
jmp     short loc_4F295F

loc_4F2959:
inc     edx
cmp     edx, 20h ; ' '
jge     short loc_4F2981

loc_4F295F:
mov     esi, ebx
shl     esi, 2
sub     esi, ebx
shl     esi, 7
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ax, ds:word_783ED6[esi+eax*4]
and     eax, 0FFFFh
cmp     eax, edi
jnz     short loc_4F2959

loc_4F2981:
cmp     edx, 20h ; ' '
jnz     short loc_4F29AE
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    eax
call    dword ptr [edx+28h]
mov     edx, ebp
shl     edx, 0Fh
or      edx, edi
mov     eax, ebx
call    sub_4F20B9
mov     esi, eax
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    eax
call    dword ptr [edx+24h]
jmp     short loc_4F29DB

loc_4F29AE:
mov     esi, ebx
shl     esi, 2
sub     esi, ebx
shl     esi, 7
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, esi
mov     esi, ds:dword_783EDC[eax]
cmp     ds:word_783ED4[eax], 2
jnz     short loc_4F29DB
mov     eax, ebx
call    sub_4F24A0

loc_4F29DB:
cmp     esi, ds:dword_551D20
jz      loc_4F249A
mov     ds:dword_551D20, esi
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    esi
push    0
push    eax
call    dword ptr [edx+98h]
jmp     loc_4F249A
sub_4F2941 endp




sub_4F2A03 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ebx, edx
xor     edx, edx
jmp     short loc_4F2A14

loc_4F2A0E:
inc     edx
cmp     edx, 40h ; '@'
jge     short loc_4F2A3D

loc_4F2A14:
mov     ecx, edx
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
xor     ecx, edx
mov     cx, ds:word_7873C4[eax]
cmp     ecx, esi
jnz     short loc_4F2A0E
mov     ax, ds:word_7873C6[eax]
and     eax, 0FFFFh
cmp     eax, ebx
jnz     short loc_4F2A0E

loc_4F2A3D:
cmp     edx, 40h ; '@'
jnz     short loc_4F2A65
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    eax
call    dword ptr [edx+28h]
mov     edx, ebx
mov     eax, esi
call    sub_4F25C2
mov     ebx, eax
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    eax
call    dword ptr [edx+24h]
jmp     short loc_4F2A73

loc_4F2A65:
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ebx, ds:dword_7873CC[eax*4]

loc_4F2A73:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ebx
push    0
push    eax
call    dword ptr [edx+98h]
xor     edx, edx
mov     ds:dword_551D20, edx
pop     esi
pop     ecx
pop     ebx
retn
sub_4F2A03 endp




sub_4F2A90 proc near

var_90= dword ptr -90h
var_6C= dword ptr -6Ch
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 80h
mov     esi, eax
mov     edi, edx
mov     ebp, ebx
shr     eax, 7
and     eax, 3
mov     [esp+90h+var_14], eax
and     esi, 1Fh
xor     ecx, ecx
jmp     short loc_4F2AB7

loc_4F2AB1:
inc     ecx
cmp     ecx, 20h ; ' '
jge     short loc_4F2AD9

loc_4F2AB7:
mov     ebx, esi
shl     ebx, 2
sub     ebx, esi
shl     ebx, 7
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ax, ds:word_783ED6[ebx+eax*4]
and     eax, 0FFFFh
cmp     eax, edi
jnz     short loc_4F2AB1

loc_4F2AD9:
cmp     ecx, 20h ; ' '
jnz     short loc_4F2AF2
mov     edx, [esp+90h+var_14]
shl     edx, 0Fh
or      edx, edi
mov     eax, esi
call    sub_4F20B9
mov     ecx, eax
jmp     short loc_4F2B17

loc_4F2AF2:
mov     ebx, esi
shl     ebx, 2
sub     ebx, esi
shl     ebx, 7
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
cmp     ds:word_783ED4[ebx+eax*4], 2
jnz     short loc_4F2B17
mov     edx, ecx
mov     eax, esi
call    sub_4F24A0

loc_4F2B17:
mov     edx, esi
shl     edx, 2
sub     edx, esi
shl     edx, 7
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, edx
mov     edx, ds:dword_783ED8[eax]
mov     [ebp+0], edx
mov     [esp+90h+var_90], 7Ch ; '|'
mov     eax, ds:dword_783ED8[eax]
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+98h+var_90]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
mov     eax, [esp+90h+var_6C]
add     esp, 80h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4F2A90 endp




sub_4F2B63 proc near

var_88= dword ptr -88h
var_64= dword ptr -64h

push    ecx
push    esi
push    edi
sub     esp, 7Ch
mov     esi, eax
mov     edi, edx
xor     edx, edx
jmp     short loc_4F2B77

loc_4F2B71:
inc     edx
cmp     edx, 40h ; '@'
jge     short loc_4F2BA0

loc_4F2B77:
mov     ecx, edx
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
xor     ecx, edx
mov     cx, ds:word_7873C4[eax]
cmp     ecx, esi
jnz     short loc_4F2B71
mov     ax, ds:word_7873C6[eax]
and     eax, 0FFFFh
cmp     eax, edi
jnz     short loc_4F2B71

loc_4F2BA0:
cmp     edx, 40h ; '@'
jnz     short loc_4F2BB0
mov     edx, edi
mov     eax, esi
call    sub_4F25C2
mov     edx, eax

loc_4F2BB0:
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, ds:dword_7873C8[eax*4]
mov     [ebx], edx
mov     [esp+88h+var_88], 7Ch ; '|'
mov     eax, ds:dword_7873C8[eax*4]
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+90h+var_88]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
mov     eax, [esp+88h+var_64]
add     esp, 7Ch
pop     edi
pop     esi
pop     ecx
retn
sub_4F2B63 endp




sub_4F2BEA proc near

var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 8
fld     ds:flt_8876DC
fadd    ds:flt_8876FC
fadd    ds:flt_88771C
fdiv    ds:dbl_50A874
fstp    [esp+8+var_8]
fld     ds:flt_8876E0
fadd    ds:flt_887700
fadd    ds:flt_887720
fdiv    ds:dbl_50A874
fstp    [esp+8+var_4]
fld     [esp+8+var_8]
fsub    ds:flt_8876DC
fldz
fcompp
fnstsw  ax
sahf
jbe     short loc_4F2C44
fld     ds:flt_8876DC
fadd    ds:flt_50A880
jmp     short loc_4F2C50

loc_4F2C44:
fld     ds:flt_8876DC
fadd    ds:flt_50A87C

loc_4F2C50:
fstp    ds:flt_8876DC
fld     [esp+8+var_8]
fsub    ds:flt_8876FC
fldz
fcompp
fnstsw  ax
sahf
jbe     short loc_4F2C76
fld     ds:flt_8876FC
fadd    ds:flt_50A880
jmp     short loc_4F2C82

loc_4F2C76:
fld     ds:flt_8876FC
fadd    ds:flt_50A87C

loc_4F2C82:
fstp    ds:flt_8876FC
fld     [esp+8+var_8]
fsub    ds:flt_88771C
fldz
fcompp
fnstsw  ax
sahf
jbe     short loc_4F2CA8
fld     ds:flt_88771C
fadd    ds:flt_50A880
jmp     short loc_4F2CB4

loc_4F2CA8:
fld     ds:flt_88771C
fadd    ds:flt_50A87C

loc_4F2CB4:
fstp    ds:flt_88771C
fld     [esp+8+var_4]
fsub    ds:flt_8876E0
fldz
fcompp
fnstsw  ax
sahf
jbe     short loc_4F2CDB
fld     ds:flt_8876E0
fadd    ds:flt_50A880
jmp     short loc_4F2CE7

loc_4F2CDB:
fld     ds:flt_8876E0
fadd    ds:flt_50A87C

loc_4F2CE7:
fstp    ds:flt_8876E0
fld     [esp+8+var_4]
fsub    ds:flt_887700
fldz
fcompp
fnstsw  ax
sahf
jbe     short loc_4F2D0E
fld     ds:flt_887700
fadd    ds:flt_50A880
jmp     short loc_4F2D1A

loc_4F2D0E:
fld     ds:flt_887700
fadd    ds:flt_50A87C

loc_4F2D1A:
fstp    ds:flt_887700
fld     [esp+8+var_4]
fsub    ds:flt_887720
fldz
fcompp
fnstsw  ax
sahf
jbe     short loc_4F2D41
fld     ds:flt_887720
fadd    ds:flt_50A880
jmp     short loc_4F2D4D

loc_4F2D41:
fld     ds:flt_887720
fadd    ds:flt_50A87C

loc_4F2D4D:
fstp    ds:flt_887720
add     esp, 8
retn
sub_4F2BEA endp




sub_4F2D57 proc near

var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 8
fld     ds:flt_8876DC
fadd    ds:flt_8876FC
fadd    ds:flt_88771C
fadd    ds:flt_88773C
fmul    ds:dbl_50A884
fstp    [esp+8+var_8]
fld     ds:flt_8876E0
fadd    ds:flt_887700
fadd    ds:flt_887720
fadd    ds:flt_887740
fmul    ds:dbl_50A884
fstp    [esp+8+var_4]
fld     [esp+8+var_8]
fsub    ds:flt_8876DC
fldz
fcompp
fnstsw  ax
sahf
jbe     short loc_4F2DBD
fld     ds:flt_8876DC
fadd    ds:flt_50A890
jmp     short loc_4F2DC9

loc_4F2DBD:
fld     ds:flt_8876DC
fadd    ds:flt_50A88C

loc_4F2DC9:
fstp    ds:flt_8876DC
fld     [esp+8+var_8]
fsub    ds:flt_8876FC
fldz
fcompp
fnstsw  ax
sahf
jbe     short loc_4F2DEF
fld     ds:flt_8876FC
fadd    ds:flt_50A890
jmp     short loc_4F2DFB

loc_4F2DEF:
fld     ds:flt_8876FC
fadd    ds:flt_50A88C

loc_4F2DFB:
fstp    ds:flt_8876FC
fld     [esp+8+var_8]
fsub    ds:flt_88771C
fldz
fcompp
fnstsw  ax
sahf
jbe     short loc_4F2E21
fld     ds:flt_88771C
fadd    ds:flt_50A890
jmp     short loc_4F2E2D

loc_4F2E21:
fld     ds:flt_88771C
fadd    ds:flt_50A88C

loc_4F2E2D:
fstp    ds:flt_88771C
fld     [esp+8+var_8]
fsub    ds:flt_88773C
fldz
fcompp
fnstsw  ax
sahf
jbe     short loc_4F2E53
fld     ds:flt_88773C
fadd    ds:flt_50A890
jmp     short loc_4F2E5F

loc_4F2E53:
fld     ds:flt_88773C
fadd    ds:flt_50A88C

loc_4F2E5F:
fstp    ds:flt_88773C
fld     [esp+8+var_4]
fsub    ds:flt_8876E0
fldz
fcompp
fnstsw  ax
sahf
jbe     short loc_4F2E86
fld     ds:flt_8876E0
fadd    ds:flt_50A890
jmp     short loc_4F2E92

loc_4F2E86:
fld     ds:flt_8876E0
fadd    ds:flt_50A88C

loc_4F2E92:
fstp    ds:flt_8876E0
fld     [esp+8+var_4]
fsub    ds:flt_887700
fldz
fcompp
fnstsw  ax
sahf
jbe     short loc_4F2EB9
fld     ds:flt_887700
fadd    ds:flt_50A890
jmp     short loc_4F2EC5

loc_4F2EB9:
fld     ds:flt_887700
fadd    ds:flt_50A88C

loc_4F2EC5:
fstp    ds:flt_887700
fld     [esp+8+var_4]
fsub    ds:flt_887720
fldz
fcompp
fnstsw  ax
sahf
jbe     short loc_4F2EEC
fld     ds:flt_887720
fadd    ds:flt_50A890
jmp     short loc_4F2EF8

loc_4F2EEC:
fld     ds:flt_887720
fadd    ds:flt_50A88C

loc_4F2EF8:
fstp    ds:flt_887720
fld     [esp+8+var_4]
fsub    ds:flt_887740
fldz
fcompp
fnstsw  ax
sahf
jbe     short loc_4F2F1F
fld     ds:flt_887740
fadd    ds:flt_50A890
jmp     short loc_4F2F2B

loc_4F2F1F:
fld     ds:flt_887740
fadd    ds:flt_50A88C

loc_4F2F2B:
fstp    ds:flt_887740
add     esp, 8
retn
sub_4F2D57 endp




sub_4F2F35 proc near
push    edx
test    byte ptr [eax+7], 2
jz      short loc_4F2F67
mov     dx, [eax+16h]
xor     dh, dh
and     dl, 60h
cmp     dx, 40h ; '@'
jnz     short loc_4F2F67
mov     edx, ds:dword_88777C
mov     ds:dword_77EBE4[edx*4], eax
mov     eax, 1
add     edx, eax
mov     ds:dword_88777C, edx
pop     edx
retn

loc_4F2F67:
xor     eax, eax
pop     edx
retn
sub_4F2F35 endp




sub_4F2F6B proc near
push    ebx
push    ecx
push    edx
test    eax, eax
jz      short loc_4F2FA7
cmp     ds:dword_887774, 0
jnz     short loc_4F2FA7
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    0Eh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    8
push    17h
push    eax
call    dword ptr [edx+58h]
mov     ds:dword_887774, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4F2FA7:
test    eax, eax
jnz     short loc_4F2FDA
cmp     ds:dword_887774, 0
jz      short loc_4F2FDA
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
xor     ebx, ebx
mov     ds:dword_887774, ebx

loc_4F2FDA:
pop     edx
pop     ecx
pop     ebx
retn
sub_4F2F6B endp




sub_4F2FDE proc near

var_24= qword ptr -24h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     esi, eax
mov     cx, [eax+0Eh]
mov     ax, [eax+16h]
xor     ebx, ebx
mov     bx, dx
xor     edx, edx
mov     dx, ax
xor     eax, eax
mov     ax, cx
call    sub_4F17FC
mov     edx, ds:dword_782C04
and     edx, eax
mov     cl, byte ptr ds:dword_782BF8
shl     edx, cl
shr     edx, 10h
mov     ebx, ds:dword_782C08
and     ebx, eax
mov     cl, byte ptr ds:dword_782BFC
shl     ebx, cl
shr     ebx, 10h
and     eax, ds:dword_782C0C
mov     cl, byte ptr ds:dword_782C00
shl     eax, cl
mov     ecx, eax
shr     ecx, 10h
xor     eax, eax
mov     al, [esi+4]
mov     [esp+24h+var_18], eax
fild    word ptr [esp+24h+var_18]
fmul    ds:flt_50A894
xor     edi, edi
mov     dword ptr [esp+24h+var_24+4], edi
mov     dword ptr [esp+24h+var_24], edx
fild    [esp+24h+var_24]
fstp    [esp+24h+var_1C]
fmul    [esp+24h+var_1C]
call    __CHP
fistp   [esp+24h+var_24]
mov     edx, dword ptr [esp+24h+var_24]
cmp     edx, 0FFh
jbe     short loc_4F307C
mov     edx, 0FFh

loc_4F307C:
mov     [esi+4], dl
xor     eax, eax
mov     al, [esi+5]
mov     [esp+24h+var_18], eax
fild    word ptr [esp+24h+var_18]
fmul    ds:flt_50A894
xor     ebp, ebp
mov     dword ptr [esp+24h+var_24+4], ebp
mov     dword ptr [esp+24h+var_24], ebx
fild    [esp+24h+var_24]
fstp    [esp+24h+var_1C]
fmul    [esp+24h+var_1C]
call    __CHP
fistp   [esp+24h+var_24]
mov     ebx, dword ptr [esp+24h+var_24]
cmp     ebx, 0FFh
jbe     short loc_4F30BE
mov     ebx, 0FFh

loc_4F30BE:
mov     [esi+5], bl
xor     eax, eax
mov     al, [esi+6]
mov     [esp+24h+var_18], eax
fild    word ptr [esp+24h+var_18]
fmul    ds:flt_50A894
xor     eax, eax
mov     dword ptr [esp+24h+var_24+4], eax
mov     dword ptr [esp+24h+var_24], ecx
fild    [esp+24h+var_24]
fstp    [esp+24h+var_1C]
fmul    [esp+24h+var_1C]
call    __CHP
fistp   [esp+24h+var_24]
mov     ecx, dword ptr [esp+24h+var_24]
cmp     ecx, 0FFh
jbe     short loc_4F3100
mov     ecx, 0FFh

loc_4F3100:
mov     [esi+6], cl
and     byte ptr [esi+7], 0FBh
add     esp, 10h
jmp     loc_4F249A
sub_4F2FDE endp




sub_4F310F proc near

var_4C= qword ptr -4Ch
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
var_10= dword ptr -10h
arg_0= word ptr  4

push    esi
push    edi
push    ebp
sub     esp, 40h
mov     esi, eax
mov     edi, edx
mov     [esp+4Ch+var_14], ebx
mov     [esp+4Ch+var_18], ecx
xor     eax, eax
mov     al, [esi+0Ch]
mov     [esp+4Ch+var_1C], eax
xor     eax, eax
mov     al, [esi+14h]
mov     [esp+4Ch+var_24], eax
xor     eax, eax
mov     al, [esi+1Ch]
mov     [esp+4Ch+var_2C], eax
xor     eax, eax
mov     al, [esi+24h]
mov     [esp+4Ch+var_38], eax
xor     eax, eax
mov     al, [esi+0Dh]
mov     [esp+4Ch+var_20], eax
xor     eax, eax
mov     al, [esi+15h]
mov     [esp+4Ch+var_34], eax
xor     eax, eax
mov     al, [esi+1Dh]
mov     [esp+4Ch+var_28], eax
xor     eax, eax
mov     al, [esi+25h]
mov     [esp+4Ch+var_30], eax
mov     edx, [esp+4Ch+var_1C]
mov     ecx, [esp+4Ch+var_24]
sub     edx, ecx
mov     eax, edx
call    abs_
mov     ebx, eax
mov     ecx, [esp+4Ch+var_1C]
mov     ebp, [esp+4Ch+var_2C]
sub     ecx, ebp
mov     eax, ecx
call    abs_
cmp     ebx, eax
jle     short loc_4F3195
mov     eax, edx
jmp     short loc_4F3197

loc_4F3195:
mov     eax, ecx

loc_4F3197:
call    abs_
mov     ecx, eax
mov     edx, [esp+4Ch+var_1C]
mov     eax, [esp+4Ch+var_38]
sub     edx, eax
mov     eax, edx
call    abs_
cmp     ecx, eax
jg      short loc_4F31BC
mov     eax, edx
call    abs_
mov     ecx, eax

loc_4F31BC:
mov     ebp, ecx
mov     ecx, [esp+4Ch+var_20]
mov     edx, [esp+4Ch+var_34]
sub     ecx, edx
mov     eax, ecx
call    abs_
mov     ebx, eax
mov     edx, [esp+4Ch+var_20]
mov     eax, [esp+4Ch+var_28]
sub     edx, eax
mov     eax, edx
call    abs_
cmp     ebx, eax
jle     short loc_4F31EA
mov     eax, ecx
jmp     short loc_4F31EC

loc_4F31EA:
mov     eax, edx

loc_4F31EC:
call    abs_
mov     ecx, eax
mov     edx, [esp+4Ch+var_20]
mov     ebx, [esp+4Ch+var_30]
sub     edx, ebx
mov     eax, edx
call    abs_
cmp     ecx, eax
jle     short loc_4F320C
mov     eax, ecx
jmp     short loc_4F3213

loc_4F320C:
mov     eax, edx
call    abs_

loc_4F3213:
cmp     ebp, 5
jge     loc_4F33F1
cmp     eax, 5
jge     loc_4F33F1
mov     dx, [esi+0Eh]
mov     ax, [esi+16h]
xor     ebx, ebx
mov     bx, di
xor     ecx, ecx
mov     cx, ax
xor     edi, edi
mov     di, dx
mov     edx, ecx
mov     eax, edi
call    sub_4F17FC
mov     ebp, eax
xor     ebx, ebx
mov     bx, word ptr [esp+4Ch+var_14]
mov     edx, ecx
mov     eax, edi
call    sub_4F17FC
mov     [esp+4Ch+var_40], eax
xor     ebx, ebx
mov     bx, word ptr [esp+4Ch+var_18]
mov     edx, ecx
mov     eax, edi
call    sub_4F17FC
mov     [esp+4Ch+var_3C], eax
xor     ebx, ebx
mov     bx, [esp+4Ch+arg_0]
mov     edx, ecx
mov     eax, edi
call    sub_4F17FC
test    ebp, ebp
jz      loc_4F33F1
mov     edx, [esp+4Ch+var_40]
cmp     ebp, edx
jnz     loc_4F33F1
mov     ebx, [esp+4Ch+var_3C]
cmp     edx, ebx
jnz     loc_4F33F1
cmp     ebx, eax
jnz     loc_4F33F1
mov     eax, [esp+4Ch+var_1C]
add     eax, [esp+4Ch+var_24]
add     eax, [esp+4Ch+var_2C]
mov     edx, [esp+4Ch+var_38]
add     edx, eax
shr     edx, 2
mov     eax, [esp+4Ch+var_20]
add     eax, [esp+4Ch+var_34]
add     eax, [esp+4Ch+var_28]
mov     ebx, [esp+4Ch+var_30]
add     ebx, eax
shr     ebx, 2
shl     ebx, 8
add     ebx, edx
mov     edx, ecx
mov     eax, edi
call    sub_4F17FC
cmp     ebp, eax
jnz     loc_4F33F1
mov     ebx, ds:dword_782C04
and     ebx, eax
mov     cl, byte ptr ds:dword_782BF8
shl     ebx, cl
shr     ebx, 10h
mov     edx, ds:dword_782C08
and     edx, eax
mov     cl, byte ptr ds:dword_782BFC
shl     edx, cl
shr     edx, 10h
and     ebp, ds:dword_782C0C
mov     cl, byte ptr ds:dword_782C00
shl     ebp, cl
mov     ecx, ebp
shr     ecx, 10h
xor     eax, eax
mov     al, [esi+4]
mov     [esp+4Ch+var_10], eax
fild    word ptr [esp+4Ch+var_10]
fmul    ds:flt_50A898
xor     ebp, ebp
mov     dword ptr [esp+4Ch+var_4C+4], ebp
mov     dword ptr [esp+4Ch+var_4C], ebx
fild    [esp+4Ch+var_4C]
fstp    [esp+4Ch+var_44]
fmul    [esp+4Ch+var_44]
call    __CHP
fistp   [esp+4Ch+var_4C]
mov     ebx, dword ptr [esp+4Ch+var_4C]
cmp     ebx, 0FFh
jbe     short loc_4F335F
mov     ebx, 0FFh

loc_4F335F:
mov     [esi+4], bl
xor     eax, eax
mov     al, [esi+5]
mov     [esp+4Ch+var_10], eax
fild    word ptr [esp+4Ch+var_10]
fmul    ds:flt_50A898
xor     eax, eax
mov     dword ptr [esp+4Ch+var_4C+4], eax
mov     dword ptr [esp+4Ch+var_4C], edx
fild    [esp+4Ch+var_4C]
fstp    [esp+4Ch+var_44]
fmul    [esp+4Ch+var_44]
call    __CHP
fistp   [esp+4Ch+var_4C]
mov     edx, dword ptr [esp+4Ch+var_4C]
cmp     edx, 0FFh
jbe     short loc_4F33A1
mov     edx, 0FFh

loc_4F33A1:
mov     [esi+5], dl
xor     eax, eax
mov     al, [esi+6]
mov     [esp+4Ch+var_10], eax
fild    word ptr [esp+4Ch+var_10]
fmul    ds:flt_50A898
xor     edx, edx
mov     dword ptr [esp+4Ch+var_4C+4], edx
mov     dword ptr [esp+4Ch+var_4C], ecx
fild    [esp+4Ch+var_4C]
fstp    [esp+4Ch+var_44]
fmul    [esp+4Ch+var_44]
call    __CHP
fistp   [esp+4Ch+var_4C]
mov     ecx, dword ptr [esp+4Ch+var_4C]
cmp     ecx, 0FFh
jbe     short loc_4F33E3
mov     ecx, 0FFh

loc_4F33E3:
mov     [esi+6], cl
and     byte ptr [esi+7], 0FBh
mov     ecx, 1
jmp     short loc_4F33F3

loc_4F33F1:
xor     ecx, ecx

loc_4F33F3:
mov     eax, ecx
add     esp, 40h
pop     ebp
pop     edi
pop     esi
retn    4
sub_4F310F endp




sub_4F33FE proc near

var_90= dword ptr -90h
var_6C= dword ptr -6Ch
var_14= dword ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 80h
mov     esi, eax
mov     edi, edx
mov     [esp+90h+var_90], 7Ch ; '|'
mov     eax, ds:dword_551CF8
mov     ecx, [eax]
push    0
push    1
lea     ebx, [esp+98h+var_90]
push    ebx
push    0
push    eax
call    dword ptr [ecx+64h]
mov     ecx, [esp+90h+var_6C]
lea     ebx, [esp+90h+var_14]
mov     edx, edi
mov     eax, esi
call    sub_4F2A90
mov     ebx, offset dword_887744
mov     edx, eax
mov     eax, ecx
call    sub_4FBDB2
mov     eax, [esp+90h+var_14]
mov     eax, [eax]
push    0
mov     ecx, [esp+94h+var_14]
push    ecx
call    dword ptr [eax+80h]
mov     eax, ds:dword_551CF8
mov     ecx, [eax]
push    0
push    eax
call    dword ptr [ecx+80h]
add     esp, 80h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4F33FE endp




sub_4F3479 proc near

var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     esi, [eax+8]
lea     ecx, [eax+esi]
lea     edx, [ecx+0Ch]
mov     ebx, 8
mov     eax, esp
call    memcpy_
xor     eax, eax
mov     ax, [esp+20h+var_1E]
mov     edx, eax
sar     edx, 4
and     edx, 10h
xor     eax, eax
mov     ax, [esp+20h+var_20]
sar     eax, 6
add     eax, edx
and     eax, 0FFFFh
call    sub_4F1E9C
add     ecx, 14h
xor     eax, eax
mov     ax, [esp+20h+var_1E]
mov     esi, eax
shl     esi, 0Bh
xor     eax, eax
mov     ax, [esp+20h+var_20]
add     eax, eax
add     esi, eax
xor     edi, edi
mov     di, [esp+20h+var_1C]
add     edi, edi
xor     ebp, ebp

loc_4F34DF:
xor     eax, eax
mov     ax, [esp+20h+var_1A]
cmp     ebp, eax
jge     short loc_4F3505
mov     eax, offset byte_7876C4
add     eax, esi
mov     ebx, edi
mov     edx, ecx
call    memcpy_
add     esi, 800h
add     ecx, edi
inc     ebp
jmp     short loc_4F34DF

loc_4F3505:
add     esp, 8
sub_4F3479 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4F44C7
;   ADDITIONAL PARENT FUNCTION sub_4F62DF
;   ADDITIONAL PARENT FUNCTION sub_4F7680
;   ADDITIONAL PARENT FUNCTION sub_4F84A5

loc_4F3508:
pop     ebp
; END OF FUNCTION CHUNK FOR sub_4F44C7
; START OF FUNCTION CHUNK FOR sub_4F1B45
;   ADDITIONAL PARENT FUNCTION sub_4F1E9C
;   ADDITIONAL PARENT FUNCTION sub_4F1F39
;   ADDITIONAL PARENT FUNCTION sub_4F3BDD

loc_4F3509:
pop     edi

loc_4F350A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4F1B45



sub_4F350F proc near

var_34= word ptr -34h
var_32= word ptr -32h
var_30= dword ptr -30h
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
sub     esp, 20h
mov     esi, eax
mov     edi, edx
lea     edx, [eax+0Ch]
mov     ebx, 8
mov     eax, esp
call    memcpy_
mov     eax, esi
add     eax, 14h
mov     [esp+34h+var_2C], eax
test    byte ptr [esi+4], 1
jz      loc_4F3674
xor     edx, edx
mov     dx, [esp+34h+var_32]
xor     eax, eax
mov     ax, [esp+34h+var_34]
call    sub_4F1D5C
mov     ebp, eax
xor     edx, edx
mov     dl, ds:byte_782BF7
shl     edx, 8
mov     [esp+34h+var_1C], edx
mov     edx, eax
shl     edx, 3
cmp     ds:byte_782C34[edx], 0
jz      short loc_4F3599
xor     eax, eax
mov     ax, ds:word_782C36[edx]
xor     ebx, ebx
mov     bl, ds:byte_782C35[edx]
imul    eax, ebx
mov     ecx, [esp+34h+var_1C]
cmp     eax, ecx
jz      short loc_4F35A8
mov     eax, ds:dword_782C38[edx]
call    _nfree_
mov     eax, ecx
jmp     short loc_4F359D

loc_4F3599:
mov     eax, [esp+34h+var_1C]

loc_4F359D:
call    _nmalloc_
mov     ds:dword_782C38[edx], eax

loc_4F35A8:
mov     ds:byte_782C34[ebp*8], 1
mov     dl, ds:byte_782BF7
mov     ds:byte_782C35[ebp*8], dl
mov     ds:word_782C36[ebp*8], 100h
xor     edx, edx
jmp     short loc_4F35E3

loc_4F35CB:
mov     esi, edx
mov     eax, ds:dword_782C38[eax]
mov     [eax+esi*4], ebx

loc_4F35D6:
inc     edx
cmp     edx, 100h
jge     loc_4F3832

loc_4F35E3:
lea     eax, [edx+edx]
add     eax, [esp+34h+var_2C]
mov     bx, [eax]
xor     bh, bh
and     bl, 1Fh
xor     edi, edi
mov     di, bx
shl     edi, 13h
mov     bx, [eax]
and     ebx, 3E0h
xor     esi, esi
mov     si, bx
shl     esi, 0Eh
mov     ax, [eax]
xor     al, al
and     ah, 7Ch
xor     ebx, ebx
mov     bx, ax
shl     ebx, 9
mov     cl, byte ptr ds:dword_782BF8
shr     edi, cl
and     edi, ds:dword_782C04
mov     cl, byte ptr ds:dword_782BFC
shr     esi, cl
and     esi, ds:dword_782C08
mov     cl, byte ptr ds:dword_782C00
shr     ebx, cl
and     ebx, ds:dword_782C0C
or      esi, edi
or      ebx, esi
jz      short loc_4F3651
or      ebx, ds:dword_782C10

loc_4F3651:
mov     eax, ebp
shl     eax, 3
cmp     ds:byte_782C35[eax], 2
jnz     loc_4F35CB
mov     esi, edx
mov     eax, ds:dword_782C38[eax]
mov     [eax+esi*2], bx
jmp     loc_4F35D6

loc_4F3674:
test    edi, edi
jnz     short loc_4F368F
mov     eax, [esp+34h+var_30]
mov     edx, [esp+34h+var_30+2]
imul    eax, edx
mov     word ptr [esp+34h+var_30], ax
mov     word ptr [esp+34h+var_30+2], 1

loc_4F368F:
xor     edx, edx
mov     dx, word ptr [esp+34h+var_30]
xor     eax, eax
mov     ax, word ptr [esp+34h+var_30+2]
imul    eax, edx
sar     eax, 4
mov     [esp+34h+var_28], eax
xor     eax, eax
mov     ax, [esp+34h+var_34]
mov     [esp+34h+var_18], eax
xor     eax, eax
mov     ax, [esp+34h+var_32]
mov     [esp+34h+var_20], eax
xor     eax, eax
mov     al, ds:byte_782BF7
shl     eax, 4
mov     [esp+34h+var_1C], eax
xor     edx, edx
mov     [esp+34h+var_24], edx

loc_4F36D0:
mov     eax, [esp+34h+var_24]
cmp     eax, [esp+34h+var_28]
jge     loc_4F3832
mov     edx, [esp+34h+var_20]
mov     eax, [esp+34h+var_18]
call    sub_4F1D5C
mov     ebp, eax
mov     edx, eax
shl     edx, 3
cmp     ds:byte_782C34[edx], 0
jz      short loc_4F3726
xor     eax, eax
mov     ax, ds:word_782C36[edx]
xor     ebx, ebx
mov     bl, ds:byte_782C35[edx]
imul    eax, ebx
mov     esi, [esp+34h+var_1C]
cmp     eax, esi
jz      short loc_4F3735
mov     eax, ds:dword_782C38[edx]
call    _nfree_
mov     eax, esi
jmp     short loc_4F372A

loc_4F3726:
mov     eax, [esp+34h+var_1C]

loc_4F372A:
call    _nmalloc_
mov     ds:dword_782C38[edx], eax

loc_4F3735:
mov     ds:byte_782C34[ebp*8], 1
mov     dl, ds:byte_782BF7
mov     ds:byte_782C35[ebp*8], dl
mov     ds:word_782C36[ebp*8], 10h
xor     edx, edx
jmp     short loc_4F376D

loc_4F3758:
mov     esi, edx
mov     eax, ds:dword_782C38[eax]
mov     [eax+esi*4], ebx

loc_4F3763:
inc     edx
cmp     edx, 10h
jge     loc_4F37FE

loc_4F376D:
lea     eax, [edx+edx]
add     eax, [esp+34h+var_2C]
mov     bx, [eax]
xor     bh, bh
and     bl, 1Fh
xor     edi, edi
mov     di, bx
shl     edi, 13h
mov     bx, [eax]
and     ebx, 3E0h
xor     esi, esi
mov     si, bx
shl     esi, 0Eh
mov     ax, [eax]
xor     al, al
and     ah, 7Ch
xor     ebx, ebx
mov     bx, ax
shl     ebx, 9
mov     cl, byte ptr ds:dword_782BF8
shr     edi, cl
and     edi, ds:dword_782C04
mov     cl, byte ptr ds:dword_782BFC
shr     esi, cl
and     esi, ds:dword_782C08
mov     cl, byte ptr ds:dword_782C00
shr     ebx, cl
and     ebx, ds:dword_782C0C
or      esi, edi
or      ebx, esi
jz      short loc_4F37DB
or      ebx, ds:dword_782C10

loc_4F37DB:
mov     eax, ebp
shl     eax, 3
cmp     ds:byte_782C35[eax], 2
jnz     loc_4F3758
mov     esi, edx
mov     eax, ds:dword_782C38[eax]
mov     [eax+esi*2], bx
jmp     loc_4F3763

loc_4F37FE:
xor     edx, edx
mov     dx, word ptr [esp+34h+var_30]
xor     eax, eax
mov     ax, [esp+34h+var_34]
mov     ebx, [esp+34h+var_18]
add     ebx, 10h
mov     [esp+34h+var_18], ebx
add     [esp+34h+var_2C], 20h ; ' '
add     edx, eax
cmp     edx, ebx
jg      short loc_4F3829
mov     [esp+34h+var_18], eax
inc     [esp+34h+var_20]

loc_4F3829:
inc     [esp+34h+var_24]
jmp     loc_4F36D0

loc_4F3832:
add     esp, 20h
jmp     loc_4F249A
sub_4F350F endp




sub_4F383A proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
jmp     short loc_4F384E

loc_4F3841:
inc     ecx
cmp     ecx, 254h
jge     loc_4F2FDA

loc_4F384E:
mov     edx, ecx
shl     edx, 3
cmp     ds:byte_782C34[edx], 0
jz      short loc_4F3841
mov     eax, ds:dword_782C38[edx]
call    _nfree_
mov     eax, offset byte_782C34
add     eax, edx
mov     ebx, 8
xor     edx, edx
call    memset_
jmp     short loc_4F3841
sub_4F383A endp




sub_4F387C proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
arg_0= dword ptr  4
arg_4= dword ptr  8

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
test    byte ptr ds:dword_88787C, 1
jnz     loc_4F3983
cmp     eax, 1
jnz     short loc_4F38BC
cmp     ds:dword_551D34, 0
jz      short loc_4F38A4
mov     ds:dword_551D38, edx

loc_4F38A4:
mov     ds:dword_887778, ebx
mov     eax, [esp+18h+arg_0]
mov     ds:flt_551D44, eax
mov     eax, [esp+18h+arg_4]
mov     ds:flt_551D48, eax

loc_4F38BC:
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ebx, ds:dword_887778
push    ebx
push    22h ; '"'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D3C
cmp     eax, 1
jb      short loc_4F38EA
jbe     short loc_4F3927
cmp     eax, 2
jz      loc_4F3974
jmp     loc_4F3983

loc_4F38EA:
test    eax, eax
jnz     loc_4F3983
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    3
push    23h ; '#'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ebp, ds:flt_551D44
push    ebp
push    24h ; '$'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ecx, ds:flt_551D48
push    ecx

loc_4F3923:
push    25h ; '%'
jmp     short loc_4F397F

loc_4F3927:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    3
push    23h ; '#'
push    eax
call    dword ptr [edx+58h]
fld     ds:flt_551D44
fdiv    ds:flt_50A89C
fstp    [esp+18h+var_18]
fld     ds:flt_551D48
fdiv    ds:flt_50A89C
fstp    [esp+18h+var_14]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     esi, [esp+18h+var_18]
push    esi
push    24h ; '$'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     edi, [esp+18h+var_14]
push    edi
jmp     short loc_4F3923

loc_4F3974:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    23h ; '#'

loc_4F397F:
push    eax
call    dword ptr [edx+58h]

loc_4F3983:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     ecx
retn    8
sub_4F387C endp

push    edx
test    byte ptr ds:dword_88787C, 1
jnz     short loc_4F39C2
cmp     eax, 1
jnz     short loc_4F39AA
mov     ds:dword_551D34, eax
mov     ds:dword_551D38, eax
xor     eax, eax
jmp     short loc_4F39BD

loc_4F39AA:
xor     edx, edx
mov     ds:dword_551D34, edx
mov     ds:dword_551D38, edx
mov     eax, 1

loc_4F39BD:
call    sub_4F16F3

loc_4F39C2:
pop     edx
retn



sub_4F39C4 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 0Ch
mov     esi, eax
lea     eax, [esp+1Ch+var_18]
push    eax
lea     eax, [esp+20h+var_1C]
push    eax
xor     eax, eax
mov     ax, [esi+16h]
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
fmul    ds:flt_50A8A0
fstp    ds:flt_8876C4
fild    word ptr [esi+0Ah]
fmul    ds:flt_50A8A0
fstp    ds:flt_8876C8
mov     eax, [esi+20h]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+20h]
fdivr   ds:flt_50A8A4
fstp    ds:flt_8876D0
mov     eax, [esp+1Ch+var_1C]
mov     ds:dword_8876D4, eax
mov     eax, [esp+1Ch+var_18]
mov     ds:dword_8876D8, eax
xor     eax, eax
mov     al, [esi+0Ch]
mov     [esp+1Ch+var_14], eax
fild    word ptr [esp+1Ch+var_14]
fmul    ds:flt_50A8A8
fstp    ds:flt_8876DC
xor     eax, eax
mov     al, [esi+0Dh]
mov     [esp+1Ch+var_14], eax
fild    word ptr [esp+1Ch+var_14]
fmul    ds:flt_50A8A8
fstp    ds:flt_8876E0
fild    word ptr [esi+10h]
fmul    ds:flt_50A8A0
fstp    ds:flt_8876E4
fild    word ptr [esi+12h]
fmul    ds:flt_50A8A0
fstp    ds:flt_8876E8
mov     eax, [esi+24h]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+24h]
fdivr   ds:flt_50A8A4
fstp    ds:flt_8876F0
mov     eax, [esp+1Ch+var_1C]
mov     ds:dword_8876F4, eax
mov     eax, [esp+1Ch+var_18]
mov     ds:dword_8876F8, eax
xor     eax, eax
mov     al, [esi+14h]
mov     [esp+1Ch+var_14], eax
fild    word ptr [esp+1Ch+var_14]
fmul    ds:flt_50A8A8
fstp    ds:flt_8876FC
xor     eax, eax
mov     al, [esi+15h]
mov     [esp+1Ch+var_14], eax
fild    word ptr [esp+1Ch+var_14]
fmul    ds:flt_50A8A8
fstp    ds:flt_887700
fild    word ptr [esi+18h]
fmul    ds:flt_50A8A0
fstp    ds:flt_887704
fild    word ptr [esi+1Ah]
fmul    ds:flt_50A8A0
fstp    ds:flt_887708
mov     eax, [esi+28h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+28h]
fdivr   ds:flt_50A8A4
fstp    ds:flt_887710
mov     eax, [esp+1Ch+var_1C]
mov     ds:dword_887714, eax
mov     eax, [esp+1Ch+var_18]
mov     ds:dword_887718, eax
xor     eax, eax
mov     al, [esi+1Ch]
mov     [esp+1Ch+var_14], eax
fild    word ptr [esp+1Ch+var_14]
fmul    ds:flt_50A8A8
fstp    ds:flt_88771C
xor     eax, eax
mov     al, [esi+1Dh]
mov     [esp+1Ch+var_14], eax
fild    word ptr [esp+1Ch+var_14]
fmul    ds:flt_50A8A8
fstp    ds:flt_887720
xor     edx, edx
mov     ds:dword_88772C, edx
call    sub_4F2BEA
mov     dx, [esi+0Eh]
xor     eax, eax
mov     ax, [esi+16h]
call    sub_4F2941
mov     ecx, [esp+1Ch+var_18]
test    ecx, ecx
jz      short loc_4F3B88
mov     ecx, 1

loc_4F3B88:
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
xor     edx, edx
mov     dx, [esi+16h]
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

loc_4F3BD1:
push    eax
call    dword ptr [edx+70h]

loc_4F3BD5:
add     esp, 0Ch
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F39C4 endp




sub_4F3BDD proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

; FUNCTION CHUNK AT 004F3509 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 0Ch
mov     esi, eax
xor     edi, edi
xor     edx, edx
mov     dx, [eax+0Ch]
xor     eax, eax
mov     ax, [esi+14h]
cmp     edx, eax
jnz     short loc_4F3C0F
xor     eax, eax
mov     ax, [esi+1Ch]
cmp     edx, eax
jnz     short loc_4F3C0F
mov     eax, esi
call    sub_4F2FDE
mov     edi, 1

loc_4F3C0F:
mov     eax, esp
push    eax
lea     eax, [esp+24h+var_1C]
push    eax
xor     eax, eax
mov     ax, [esi+16h]
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
fld     dword ptr [esi+20h]
fmul    ds:dbl_50A8AC
fstp    ds:flt_8876C4
fld     dword ptr [esi+24h]
fmul    ds:dbl_50A8AC
fstp    ds:flt_8876C8
mov     eax, [esi+8]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+8]
fdivr   ds:flt_50A8B4
fstp    ds:flt_8876D0
mov     eax, [esp+20h+var_1C]
mov     ds:dword_8876D4, eax
mov     eax, [esp+20h+var_20]
mov     ds:dword_8876D8, eax
fld     dword ptr [esi+28h]
fmul    ds:dbl_50A8AC
fstp    ds:flt_8876E4
fld     dword ptr [esi+2Ch]
fmul    ds:dbl_50A8AC
fstp    ds:flt_8876E8
mov     eax, [esi+10h]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+10h]
fdivr   ds:flt_50A8B4
fstp    ds:flt_8876F0
mov     eax, [esp+20h+var_1C]
mov     ds:dword_8876F4, eax
mov     eax, [esp+20h+var_20]
mov     ds:dword_8876F8, eax
fld     dword ptr [esi+30h]
fmul    ds:dbl_50A8AC
fstp    ds:flt_887704
fld     dword ptr [esi+34h]
fmul    ds:dbl_50A8AC
fstp    ds:flt_887708
mov     eax, [esi+18h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+18h]
fdivr   ds:flt_50A8B4
fstp    ds:flt_887710
mov     eax, [esp+20h+var_1C]
mov     ds:dword_887714, eax
mov     eax, [esp+20h+var_20]
mov     ds:dword_887718, eax
xor     edx, edx
mov     ds:dword_88772C, edx
test    edi, edi
jnz     loc_4F3DC5
xor     eax, eax
mov     al, [esi+0Ch]
mov     [esp+20h+var_18], eax
fild    word ptr [esp+20h+var_18]
fmul    ds:flt_50A8B8
fstp    ds:flt_8876DC
xor     eax, eax
mov     al, [esi+0Dh]
mov     [esp+20h+var_18], eax
fild    word ptr [esp+20h+var_18]
fmul    ds:flt_50A8B8
fstp    ds:flt_8876E0
xor     eax, eax
mov     al, [esi+14h]
mov     [esp+20h+var_18], eax
fild    word ptr [esp+20h+var_18]
fmul    ds:flt_50A8B8
fstp    ds:flt_8876FC
xor     eax, eax
mov     al, [esi+15h]
mov     [esp+20h+var_18], eax
fild    word ptr [esp+20h+var_18]
fmul    ds:flt_50A8B8
fstp    ds:flt_887700
xor     eax, eax
mov     al, [esi+1Ch]
mov     [esp+20h+var_18], eax
fild    word ptr [esp+20h+var_18]
fmul    ds:flt_50A8B8
fstp    ds:flt_88771C
xor     eax, eax
mov     al, [esi+1Dh]
mov     [esp+20h+var_18], eax
fild    word ptr [esp+20h+var_18]
fmul    ds:flt_50A8B8
fstp    ds:flt_887720
call    sub_4F2BEA
mov     dx, [esi+0Eh]
xor     eax, eax
mov     ax, [esi+16h]
call    sub_4F2941
jmp     short loc_4F3DDD

loc_4F3DC5:
xor     ecx, ecx
mov     ds:dword_551D20, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    ecx
push    eax
call    dword ptr [edx+98h]

loc_4F3DDD:
cmp     [esp+20h+var_20], 0
jz      short loc_4F3DEA
mov     ecx, 1
jmp     short loc_4F3DEC

loc_4F3DEA:
xor     ecx, ecx

loc_4F3DEC:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
mov     ax, [esi+16h]
xor     al, al
and     ah, 4
and     eax, 0FFFFh
call    sub_4F2F6B
mov     ax, [esi+16h]
xor     al, al
and     ah, 8
and     eax, 0FFFFh
call    sub_4F16F3
xor     edx, edx
mov     dx, [esi+16h]
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
add     esp, 0Ch
jmp     loc_4F3509
sub_4F3BDD endp




sub_4F3E53 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
lea     eax, [esp+18h+var_14]
push    eax
lea     eax, [esp+1Ch+var_18]
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
fmul    ds:flt_50A8BC
fstp    ds:flt_8876C4
fild    word ptr [esi+0Ah]
fmul    ds:flt_50A8BC
fstp    ds:flt_8876C8
mov     eax, [esi+18h]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+18h]
fdivr   ds:flt_50A8C0
fstp    ds:flt_8876D0
mov     eax, [esp+18h+var_18]
mov     ds:dword_8876D4, eax
mov     eax, [esp+18h+var_14]
mov     ds:dword_8876D8, eax
fild    word ptr [esi+0Ch]
fmul    ds:flt_50A8BC
fstp    ds:flt_8876E4
fild    word ptr [esi+0Eh]
fmul    ds:flt_50A8BC
fstp    ds:flt_8876E8
mov     eax, [esi+1Ch]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+1Ch]
fdivr   ds:flt_50A8C0
fstp    ds:flt_8876F0
mov     eax, [esp+18h+var_18]
mov     ds:dword_8876F4, eax
mov     eax, [esp+18h+var_14]
mov     ds:dword_8876F8, eax
fild    word ptr [esi+10h]
fmul    ds:flt_50A8BC
fstp    ds:flt_887704
fild    word ptr [esi+12h]
fmul    ds:flt_50A8BC
fstp    ds:flt_887708
mov     eax, [esi+20h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+20h]
fdivr   ds:flt_50A8C0
fstp    ds:flt_887710
mov     eax, [esp+18h+var_18]
mov     ds:dword_887714, eax
mov     eax, [esp+18h+var_14]
mov     ds:dword_887718, eax
fild    word ptr [esi+14h]
fmul    ds:flt_50A8BC
fstp    ds:flt_887724
fild    word ptr [esi+16h]
fmul    ds:flt_50A8BC
fstp    ds:flt_887728
mov     eax, [esi+24h]
mov     ds:dword_88772C, eax
fld     dword ptr [esi+24h]
fdivr   ds:flt_50A8C0
fstp    ds:flt_887730
mov     eax, [esp+18h+var_18]
mov     ds:dword_887734, eax
mov     eax, [esp+18h+var_14]
mov     ds:dword_887738, eax
xor     edx, edx
mov     ds:dword_551D20, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    0
push    eax
call    dword ptr [edx+98h]
mov     ecx, [esp+4]
test    ecx, ecx
jz      short loc_4F3FCC
mov     ecx, 1

loc_4F3FCC:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
mov     eax, 1
call    sub_4F2F6B
mov     eax, 1

loc_4F3FE9:
call    sub_4F16F3
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
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F3E53 endp




sub_4F4025 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
lea     eax, [esp+18h+var_14]
push    eax
lea     eax, [esp+1Ch+var_18]
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
fld     dword ptr [esi+18h]
fmul    ds:dbl_50A8C4
fstp    ds:flt_8876C4
fld     dword ptr [esi+1Ch]
fmul    ds:dbl_50A8C4
fstp    ds:flt_8876C8
mov     eax, [esi+8]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+8]
fdivr   ds:flt_50A8CC
fstp    ds:flt_8876D0
mov     eax, [esp+18h+var_18]
mov     ds:dword_8876D4, eax
mov     eax, [esp+18h+var_14]
mov     ds:dword_8876D8, eax
fld     dword ptr [esi+20h]
fmul    ds:dbl_50A8C4
fstp    ds:flt_8876E4
fld     dword ptr [esi+24h]
fmul    ds:dbl_50A8C4
fstp    ds:flt_8876E8
mov     eax, [esi+0Ch]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+0Ch]
fdivr   ds:flt_50A8CC
fstp    ds:flt_8876F0
mov     eax, [esp+18h+var_18]
mov     ds:dword_8876F4, eax
mov     eax, [esp+18h+var_14]
mov     ds:dword_8876F8, eax
fld     dword ptr [esi+28h]
fmul    ds:dbl_50A8C4
fstp    ds:flt_887704
fld     dword ptr [esi+2Ch]
fmul    ds:dbl_50A8C4
fstp    ds:flt_887708
mov     eax, [esi+10h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+10h]
fdivr   ds:flt_50A8CC
fstp    ds:flt_887710
mov     eax, [esp+18h+var_18]
mov     ds:dword_887714, eax
mov     eax, [esp+18h+var_14]
mov     ds:dword_887718, eax
fld     dword ptr [esi+30h]
fmul    ds:dbl_50A8C4
fstp    ds:flt_887724
fld     dword ptr [esi+34h]
fmul    ds:dbl_50A8C4
fstp    ds:flt_887728
mov     eax, [esi+14h]
mov     ds:dword_88772C, eax
fld     dword ptr [esi+14h]
fdivr   ds:flt_50A8CC
fstp    ds:flt_887730
mov     eax, [esp+18h+var_18]
mov     ds:dword_887734, eax
mov     eax, [esp+18h+var_14]
mov     ds:dword_887738, eax
xor     edx, edx
mov     ds:dword_551D20, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    0
push    eax
call    dword ptr [edx+98h]
mov     ecx, [esp+4]
test    ecx, ecx
jz      short loc_4F419E
mov     ecx, 1

loc_4F419E:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
xor     eax, eax
call    sub_4F2F6B
xor     eax, eax
jmp     loc_4F3FE9
sub_4F4025 endp




sub_4F41BA proc near

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
lea     eax, [esp+20h+var_1C]
push    eax
lea     eax, [esp+24h+var_20]
push    eax
xor     eax, eax
mov     ax, [esi+16h]
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
test    byte ptr [esi+17h], 10h
jz      short loc_4F423A
fild    word ptr [esi+8]
fstp    ds:flt_8876C4
fild    word ptr [esi+0Ah]
fstp    ds:flt_8876C8
fild    word ptr [esi+10h]
fstp    ds:flt_8876E4
fild    word ptr [esi+12h]
fstp    ds:flt_8876E8
fild    word ptr [esi+18h]
fstp    ds:flt_887704
fild    word ptr [esi+1Ah]
fstp    ds:flt_887708
fild    word ptr [esi+20h]
fstp    ds:flt_887724
fild    word ptr [esi+22h]
jmp     loc_4F42E4

loc_4F423A:
mov     eax, [esi+6]
sar     eax, 10h
add     eax, eax
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fstp    ds:flt_8876C4
mov     eax, [esi+8]
sar     eax, 10h
add     eax, eax
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fstp    ds:flt_8876C8
mov     eax, [esi+0Eh]
sar     eax, 10h
add     eax, eax
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fstp    ds:flt_8876E4
mov     eax, [esi+10h]
sar     eax, 10h
add     eax, eax
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fstp    ds:flt_8876E8
mov     eax, [esi+16h]
sar     eax, 10h
add     eax, eax
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fstp    ds:flt_887704
mov     eax, [esi+18h]
sar     eax, 10h
add     eax, eax
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fstp    ds:flt_887708
mov     eax, [esi+1Eh]
sar     eax, 10h
add     eax, eax
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]
fstp    ds:flt_887724
mov     eax, [esi+20h]
sar     eax, 10h
add     eax, eax
mov     [esp+20h+var_18], eax
fild    [esp+20h+var_18]

loc_4F42E4:
fstp    ds:flt_887728
mov     eax, [esi+28h]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+28h]
fdivr   ds:flt_50A8D0
fstp    ds:flt_8876D0
mov     eax, [esp+20h+var_20]
mov     ds:dword_8876D4, eax
mov     eax, [esp+20h+var_1C]
mov     ds:dword_8876D8, eax
xor     eax, eax
mov     al, [esi+0Ch]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A8D4
fstp    ds:flt_8876DC
xor     eax, eax
mov     al, [esi+0Dh]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A8D4
fstp    ds:flt_8876E0
mov     eax, [esi+2Ch]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+2Ch]
fdivr   ds:flt_50A8D0
fstp    ds:flt_8876F0
mov     eax, [esp+20h+var_20]
mov     ds:dword_8876F4, eax
mov     eax, [esp+20h+var_1C]
mov     ds:dword_8876F8, eax
xor     eax, eax
mov     al, [esi+14h]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A8D4
fstp    ds:flt_8876FC
xor     eax, eax
mov     al, [esi+15h]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A8D4
fstp    ds:flt_887700
mov     eax, [esi+30h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+30h]
fdivr   ds:flt_50A8D0
fstp    ds:flt_887710
mov     eax, [esp+20h+var_20]
mov     ds:dword_887714, eax
mov     eax, [esp+20h+var_1C]
mov     ds:dword_887718, eax
xor     eax, eax
mov     al, [esi+1Ch]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A8D4
fstp    ds:flt_88771C
xor     eax, eax
mov     al, [esi+1Dh]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A8D4
fstp    ds:flt_887720
mov     eax, [esi+34h]
mov     ds:dword_88772C, eax
fld     dword ptr [esi+34h]
fdivr   ds:flt_50A8D0
fstp    ds:flt_887730
mov     eax, [esp+20h+var_20]
mov     ds:dword_887734, eax
mov     eax, [esp+20h+var_1C]
mov     ds:dword_887738, eax
xor     eax, eax
mov     al, [esi+24h]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A8D4
fstp    ds:flt_88773C
xor     eax, eax
mov     al, [esi+25h]
mov     [esp+20h+var_14], eax
fild    word ptr [esp+20h+var_14]
fmul    ds:flt_50A8D4
fstp    ds:flt_887740
call    sub_4F2D57
xor     edx, edx
mov     dx, [esi+0Eh]
xor     eax, eax
mov     ax, [esi+16h]
call    sub_4F2941
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Dh
push    eax
call    dword ptr [edx+58h]
mov     eax, 1
call    sub_4F2F6B
mov     ax, [esi+16h]
xor     al, al
and     ah, 8
and     eax, 0FFFFh
call    sub_4F16F3
xor     edx, edx
mov     dx, [esi+16h]

loc_4F449A:
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

loc_4F44BF:
add     esp, 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F41BA endp




sub_4F44C7 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004F3508 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     esi, eax
xor     ebp, ebp
mov     di, [eax+0Ch]
mov     ax, [eax+14h]
mov     [esp+30h+var_28], eax
mov     ax, [esi+1Ch]
mov     [esp+30h+var_24], eax
mov     ax, [esi+24h]
mov     [esp+30h+var_20], eax
xor     edx, edx
mov     dx, di
xor     eax, eax
mov     ax, word ptr [esp+30h+var_28]
cmp     edx, eax
jnz     short loc_4F4524
xor     eax, eax
mov     ax, word ptr [esp+30h+var_24]
cmp     edx, eax
jnz     short loc_4F4524
xor     eax, eax
mov     ax, word ptr [esp+30h+var_20]
cmp     edx, eax
jnz     short loc_4F4524
mov     eax, esi
call    sub_4F2FDE
mov     ebp, 1
jmp     short loc_4F454D

loc_4F4524:
xor     eax, eax
mov     ax, word ptr [esp+30h+var_20]
push    eax
xor     ecx, ecx
mov     cx, word ptr [esp+34h+var_24]
xor     ebx, ebx
mov     bx, word ptr [esp+34h+var_28]
xor     edx, edx
mov     dx, di
mov     eax, esi
call    sub_4F310F
cmp     eax, 1
jnz     short loc_4F454D
mov     ebp, eax

loc_4F454D:
lea     eax, [esp+30h+var_2C]
push    eax
lea     eax, [esp+34h+var_30]
push    eax
xor     eax, eax
mov     ax, [esi+16h]
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
fld     dword ptr [esi+28h]
fmul    ds:dbl_50A8DC
fstp    ds:flt_8876C4
fld     dword ptr [esi+2Ch]
fmul    ds:dbl_50A8DC
fstp    ds:flt_8876C8
mov     eax, [esi+8]
mov     ds:dword_8876CC, eax
fld     dword ptr [esi+8]
fdivr   ds:flt_50A8E4
fstp    ds:flt_8876D0
mov     eax, [esp+30h+var_30]
mov     ds:dword_8876D4, eax
mov     eax, [esp+30h+var_2C]
mov     ds:dword_8876D8, eax
fld     dword ptr [esi+30h]
fmul    ds:dbl_50A8DC
fstp    ds:flt_8876E4
fld     dword ptr [esi+34h]
fmul    ds:dbl_50A8DC
fstp    ds:flt_8876E8
mov     eax, [esi+10h]
mov     ds:dword_8876EC, eax
fld     dword ptr [esi+10h]
fdivr   ds:flt_50A8E4
fstp    ds:flt_8876F0
mov     eax, [esp+30h+var_30]
mov     ds:dword_8876F4, eax
mov     eax, [esp+30h+var_2C]
mov     ds:dword_8876F8, eax
fld     dword ptr [esi+38h]
fmul    ds:dbl_50A8DC
fstp    ds:flt_887704
fld     dword ptr [esi+3Ch]
fmul    ds:dbl_50A8DC
fstp    ds:flt_887708
mov     eax, [esi+18h]
mov     ds:dword_88770C, eax
fld     dword ptr [esi+18h]
fdivr   ds:flt_50A8E4
fstp    ds:flt_887710
mov     eax, [esp+30h+var_30]
mov     ds:dword_887714, eax
mov     eax, [esp+30h+var_2C]
mov     ds:dword_887718, eax
fld     dword ptr [esi+40h]
fmul    ds:dbl_50A8DC
fstp    ds:flt_887724
fld     dword ptr [esi+44h]
fmul    ds:dbl_50A8DC
fstp    ds:flt_887728
mov     eax, [esi+20h]
mov     ds:dword_88772C, eax
fld     dword ptr [esi+20h]
fdivr   ds:flt_50A8E4
fstp    ds:flt_887730
mov     eax, [esp+30h+var_30]
mov     ds:dword_887734, eax
mov     eax, [esp+30h+var_2C]
mov     ds:dword_887738, eax
test    ebp, ebp
jnz     loc_4F48EB
xor     eax, eax
mov     al, [esi+0Ch]
mov     [esp+30h+var_1C], eax
fild    word ptr [esp+30h+var_1C]
fmul    ds:flt_50A8E8
fstp    ds:flt_8876DC
xor     eax, eax
mov     al, [esi+0Dh]
mov     [esp+30h+var_1C], eax
fild    word ptr [esp+30h+var_1C]
fmul    ds:flt_50A8E8
fstp    ds:flt_8876E0
xor     eax, eax
mov     al, [esi+14h]
mov     [esp+30h+var_1C], eax
fild    word ptr [esp+30h+var_1C]
fmul    ds:flt_50A8E8
fstp    ds:flt_8876FC
xor     eax, eax
mov     al, [esi+15h]
mov     [esp+30h+var_1C], eax
fild    word ptr [esp+30h+var_1C]
fmul    ds:flt_50A8E8
fstp    ds:flt_887700
xor     eax, eax
mov     al, [esi+1Ch]
mov     [esp+30h+var_1C], eax
fild    word ptr [esp+30h+var_1C]
fmul    ds:flt_50A8E8
fstp    ds:flt_88771C
xor     eax, eax
mov     al, [esi+1Dh]
mov     [esp+30h+var_1C], eax
fild    word ptr [esp+30h+var_1C]
fmul    ds:flt_50A8E8
fstp    ds:flt_887720
xor     eax, eax
mov     al, [esi+24h]
mov     [esp+30h+var_1C], eax
fild    word ptr [esp+30h+var_1C]
fmul    ds:flt_50A8E8
fstp    ds:flt_88773C
xor     eax, eax
mov     al, [esi+25h]
mov     [esp+30h+var_1C], eax
fild    word ptr [esp+30h+var_1C]
fmul    ds:flt_50A8E8
fstp    ds:flt_887740
xor     eax, eax
mov     ax, di
xor     edx, edx
mov     dx, word ptr [esp+30h+var_24]
cmp     eax, edx
jnz     loc_4F482B
xor     eax, edx
mov     ax, word ptr [esp+30h+var_28]
xor     edx, edx
mov     dx, word ptr [esp+30h+var_20]
cmp     eax, edx
jnz     loc_4F482B
mov     al, [esi+0Ch]
cmp     al, [esi+14h]
jnz     short loc_4F47DE
fld     ds:flt_8876DC
fadd    ds:dbl_50A8EC
fstp    ds:flt_8876DC
fld     ds:flt_88771C
fadd    ds:dbl_50A8F4
fstp    ds:flt_88771C
fld     ds:flt_8876FC
fadd    ds:dbl_50A8EC
fstp    ds:flt_8876FC

loc_4F47C7:
fld     ds:flt_88773C
fadd    ds:dbl_50A8F4
fstp    ds:flt_88773C
jmp     loc_4F48D8

loc_4F47DE:
fld     ds:flt_8876E0
fadd    ds:dbl_50A8EC
fstp    ds:flt_8876E0
fld     ds:flt_887720
fadd    ds:dbl_50A8F4
fstp    ds:flt_887720
fld     ds:flt_887700
fadd    ds:dbl_50A8EC
fstp    ds:flt_887700

loc_4F4814:
fld     ds:flt_887740
fadd    ds:dbl_50A8F4
fstp    ds:flt_887740
jmp     loc_4F48D8

loc_4F482B:
xor     edx, edx
mov     dx, di
xor     eax, eax
mov     ax, word ptr [esp+30h+var_28]
cmp     edx, eax
jnz     loc_4F48D3
xor     eax, eax
mov     ax, word ptr [esp+30h+var_24]
xor     edx, edx
mov     dx, word ptr [esp+30h+var_20]
cmp     eax, edx
jnz     loc_4F48D3
mov     al, [esi+0Ch]
cmp     al, [esi+1Ch]
jnz     short loc_4F4898
fld     ds:flt_8876DC
fadd    ds:dbl_50A8EC
fstp    ds:flt_8876DC
fld     ds:flt_8876FC
fadd    ds:dbl_50A8F4
fstp    ds:flt_8876FC
fld     ds:flt_88771C
fadd    ds:dbl_50A8EC
fstp    ds:flt_88771C
jmp     loc_4F47C7

loc_4F4898:
fld     ds:flt_8876E0
fadd    ds:dbl_50A8EC
fstp    ds:flt_8876E0
fld     ds:flt_887700
fadd    ds:dbl_50A8F4
fstp    ds:flt_887700
fld     ds:flt_887720
fadd    ds:dbl_50A8EC
fstp    ds:flt_887720
jmp     loc_4F4814

loc_4F48D3:
call    sub_4F2D57

loc_4F48D8:
xor     edx, edx
mov     dx, [esi+0Eh]
xor     eax, eax
mov     ax, [esi+16h]
call    sub_4F2941
jmp     short loc_4F4905

loc_4F48EB:
xor     edx, edx
mov     ds:dword_551D20, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    0
push    eax
call    dword ptr [edx+98h]

loc_4F4905:
mov     ecx, [esp+30h+var_2C]
test    ecx, ecx
jz      short loc_4F4912
mov     ecx, 1

loc_4F4912:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ecx
push    1Dh
push    eax
call    dword ptr [edx+58h]
mov     ax, [esi+16h]
xor     al, al
and     ah, 4
and     eax, 0FFFFh
call    sub_4F2F6B
mov     ax, [esi+16h]
xor     al, al
and     ah, 8
and     eax, 0FFFFh
call    sub_4F16F3
test    ebp, ebp
jnz     short loc_4F495C
xor     edx, edx
mov     dx, [esi+16h]
xor     eax, eax
mov     al, [esi+7]
call    sub_4F1A5A
jmp     short loc_4F496B

loc_4F495C:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Bh
push    eax
call    dword ptr [edx+58h]

loc_4F496B:
