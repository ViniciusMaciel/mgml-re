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

loc_4F90A1:
inc     eax
cmp     eax, 0Ah
jge     short loc_4F90B3

loc_4F90A7:
test    [esp+eax+5Ch+var_2C], 80h
jz      short loc_4F90A1
jmp     loc_4F8FA6

loc_4F90B3:
mov     eax, 0FFFFFFFFh
jmp     loc_4F8FA6
sub_4F904F endp




sub_4F90BD proc near
push    ebx
push    edx
mov     ebx, 28h ; '('
mov     edx, offset byte_887A0C
jmp     short loc_4F9121
sub_4F90BD endp




sub_4F90CB proc near
push    ebx
push    edx
mov     ebx, 28h ; '('
mov     edx, offset unk_551F48
jmp     short loc_4F9121
sub_4F90CB endp




sub_4F90D9 proc near
push    ebx
push    edx
mov     ebx, 28h ; '('
mov     edx, eax

loc_4F90E2:
mov     eax, offset byte_887A0C
jmp     short loc_4F9121
sub_4F90D9 endp




sub_4F90E9 proc near
push    ebx
push    edx
mov     ebx, 28h ; '('
mov     edx, offset unk_551F48
jmp     short loc_4F90E2
sub_4F90E9 endp




sub_4F90F7 proc near
push    ebx
push    edx
mov     ebx, 14h
mov     edx, offset byte_887A34
jmp     short loc_4F9121
sub_4F90F7 endp




sub_4F9105 proc near
push    ebx
push    edx
mov     ebx, 14h
mov     edx, offset unk_551F70
jmp     short loc_4F9121
sub_4F9105 endp




sub_4F9113 proc near
push    ebx
push    edx
mov     ebx, 14h
mov     edx, eax

loc_4F911C:
mov     eax, offset byte_887A34

loc_4F9121:
call    memcpy_
pop     edx
pop     ebx
retn
sub_4F9113 endp




sub_4F9129 proc near
push    ebx
push    edx
mov     ebx, 14h
mov     edx, offset unk_551F70
jmp     short loc_4F911C
sub_4F9129 endp

; [00000025 BYTES: COLLAPSED FUNCTION memcpy_]
; [0000001D BYTES: COLLAPSED FUNCTION __CHP]
align 2
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_115]
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_116]



sub_4F917C proc near

Value= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebx, eax
mov     ecx, 1
xor     ebp, ebp
xor     esi, esi
xor     edi, edi
mov     [esp+18h+Value], ebp ; Value
test    edx, edx
jz      short loc_4F91A6
cmp     ecx, ds:dword_557C68
jnz     short loc_4F91A4
mov     [edx], ecx
jmp     short loc_4F91A6

loc_4F91A4:
mov     [edx], ebp

loc_4F91A6:
mov     al, [ebx]
cmp     al, 72h ; 'r'
jb      short loc_4F91B4
jbe     short loc_4F91BA
cmp     al, 77h ; 'w'
jz      short loc_4F91C0
jmp     short loc_4F91CC

loc_4F91B4:
cmp     al, 61h ; 'a'
jz      short loc_4F91C6
jmp     short loc_4F91CC

loc_4F91BA:
or      byte ptr [esp+18h+Value], 1
jmp     short loc_4F91DD

loc_4F91C0:
or      byte ptr [esp+18h+Value], 2
jmp     short loc_4F91DD

loc_4F91C6:
or      byte ptr [esp+18h+Value], 82h
jmp     short loc_4F91DD

loc_4F91CC:
mov     eax, 9
call    __set_errno_
xor     ecx, ecx
jmp     loc_4F928C

loc_4F91DD:
inc     ebx
mov     al, [ebx]
test    al, al
jz      loc_4F9275
test    ecx, ecx
jz      loc_4F9275
cmp     al, 63h ; 'c'
jb      short loc_4F920A
jbe     loc_4F924C
cmp     al, 6Eh ; 'n'
jb      short loc_4F91DD
jbe     loc_4F9261
cmp     al, 74h ; 't'
jz      short loc_4F922E
jmp     short loc_4F91DD

loc_4F920A:
cmp     al, 2Bh ; '+'
jb      short loc_4F91DD
jbe     short loc_4F9216
cmp     al, 62h ; 'b'
jz      short loc_4F9239
jmp     short loc_4F91DD

loc_4F9216:
test    ebp, ebp
jz      short loc_4F921E

loc_4F921A:
xor     ecx, ecx
jmp     short loc_4F91DD

loc_4F921E:
mov     ah, byte ptr [esp+18h+Value]
or      ah, 3
mov     ebp, 1
mov     byte ptr [esp+18h+Value], ah
jmp     short loc_4F91DD

loc_4F922E:
test    esi, esi
jnz     short loc_4F921A
mov     esi, 1
jmp     short loc_4F91DD

loc_4F9239:
test    esi, esi
jnz     short loc_4F921A
mov     al, byte ptr [esp+18h+Value]
or      al, 40h
mov     esi, 1
mov     byte ptr [esp+18h+Value], al
jmp     short loc_4F91DD

loc_4F924C:
test    edi, edi
jnz     short loc_4F921A
mov     ah, [edx]
or      ah, 1
mov     edi, 1
mov     [edx], ah
jmp     loc_4F91DD

loc_4F9261:
test    edi, edi
jnz     short loc_4F921A
mov     al, [edx]
and     al, 0FEh
mov     edi, 1
mov     [edx], al
jmp     loc_4F91DD

loc_4F9275:
test    esi, esi
jnz     short loc_4F9289
cmp     ds:dword_557E75, 200h
jnz     short loc_4F9289
or      byte ptr [esp+18h+Value], 40h

loc_4F9289:
mov     ecx, [esp+18h+Value]

loc_4F928C:
mov     eax, ecx
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4F917C endp




sub_4F9297 proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push    esi
push    edi
push    ebp
mov     esi, eax
mov     al, dl
mov     edx, ecx
mov     ecx, [esp+0Ch+arg_4]
and     byte ptr [ecx+0Ch], 0FCh
or      [ecx+0Ch], ebx
and     eax, 0FFh
call    tolower_
cmp     al, 72h ; 'r'
jnz     short loc_4F92DB
xor     eax, eax
test    bl, 2
jz      short loc_4F92C5
mov     eax, 2

loc_4F92C5:
test    bl, 40h
jz      short loc_4F92CF
or      ah, 2
jmp     short loc_4F92D2

loc_4F92CF:
or      ah, 1

loc_4F92D2:
push    0
mov     edi, [esp+10h+arg_0]
push    edi
jmp     short loc_4F930B

loc_4F92DB:
test    bl, 1
setnz   al
and     eax, 0FFh
add     eax, 21h ; '!'
test    bl, 80h
jz      short loc_4F92F2
or      al, 10h
jmp     short loc_4F92F4

loc_4F92F2:
or      al, 40h

loc_4F92F4:
test    bl, 40h
jz      short loc_4F92FE
or      ah, 2
jmp     short loc_4F9301

loc_4F92FE:
or      ah, 1

loc_4F9301:
push    180h
mov     ebp, [esp+10h+arg_0]
push    ebp

loc_4F930B:
push    eax
push    esi
call    sub_4FE251
add     esp, 10h
mov     [ecx+10h], eax
cmp     dword ptr [ecx+10h], 0FFFFFFFFh
jnz     short loc_4F9329
mov     eax, ecx
call    __freefp_
xor     eax, eax
jmp     short loc_4F9377

loc_4F9329:
mov     dword ptr [ecx+4], 0
mov     eax, [ecx+8]
mov     dword ptr [ecx+14h], 0
mov     dword ptr [eax+0Ch], 0
mov     eax, [ecx+8]
mov     [eax+10h], edx
mov     eax, [ecx+8]
mov     dword ptr [eax+15h], 0
mov     eax, [ecx+8]
mov     dword ptr [eax+8], 0
test    bl, 80h
jz      short loc_4F936E
mov     ebx, 2
mov     eax, ecx
xor     edx, edx
call    sub_4FB1EB

loc_4F936E:
mov     eax, ecx
call    __chktty_
mov     eax, ecx

loc_4F9377:
pop     ebp
pop     edi
pop     esi
retn    8
sub_4F9297 endp




sub_4F937D proc near

var_10= dword ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
mov     ecx, edx
mov     edi, ebx
mov     edx, esp
mov     eax, ecx
call    sub_4F917C
mov     ebx, eax
test    eax, eax
jz      short loc_4F93BA
xor     eax, eax
call    __allocfp_
mov     edx, eax
test    eax, eax
jz      short loc_4F93B8
push    eax
xor     edx, eax
push    edi
mov     eax, esi
mov     dl, [ecx]
mov     ecx, [esp+18h+var_10]
call    sub_4F9297
mov     edx, eax

loc_4F93B8:
mov     eax, edx

loc_4F93BA:
add     esp, 4
pop     edi
pop     esi
pop     ecx
retn
sub_4F937D endp




sub_4F93C1 proc near
push    ebx
xor     ebx, ebx
call    sub_4F937D
pop     ebx
retn
sub_4F93C1 endp




sub_4F93CB proc near
push    ebx
push    ecx
push    edx             ; Value
mov     ebx, eax
call    ds:off_551FD8
mov     eax, ds:dword_897BC4

loc_4F93DB:
test    eax, eax
jz      short loc_4F9408
mov     edx, [eax+4]
cmp     ebx, edx
jnz     short loc_4F9404
test    byte ptr [edx+0Ch], 3
jz      short loc_4F93F8
mov     edx, 1
mov     eax, ebx
call    __doclose_

loc_4F93F8:
call    ds:off_551FDC
mov     eax, ebx
pop     edx
pop     ecx
pop     ebx
retn

loc_4F9404:
mov     eax, [eax]
jmp     short loc_4F93DB

loc_4F9408:
mov     edx, offset dword_897BC8

loc_4F940D:
mov     eax, [edx]
test    eax, eax
jz      short loc_4F942F
cmp     ebx, [eax+4]
jnz     short loc_4F942B
mov     ecx, [eax]
mov     [edx], ecx
mov     edx, ds:dword_897BC4
mov     ds:dword_897BC4, eax
mov     [eax], edx
jmp     short loc_4F93F8

loc_4F942B:
mov     edx, eax
jmp     short loc_4F940D

loc_4F942F:
mov     eax, 4
call    __set_errno_
call    ds:off_551FDC
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4F93CB endp




sub_4F9445 proc near

var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
mov     ecx, edx
mov     edx, esp
mov     eax, ecx
call    sub_4F917C
mov     ebp, eax
test    eax, eax
jz      short loc_4F94B4
mov     esi, [ebx+10h]
mov     eax, esi
call    ds:off_551FC8
cmp     ds:dword_557E80, 0
jz      short loc_4F947B
mov     eax, esi
call    ds:dword_557E80

loc_4F947B:
mov     eax, ebx
call    sub_4F93CB
mov     ebx, eax
test    eax, eax
jz      short loc_4F94AA
push    eax
mov     ebx, [eax+0Ch]
xor     edx, edx
and     ebx, 4000h
push    0
mov     [eax+0Ch], ebx
mov     ebx, ebp
mov     eax, edi
mov     dl, [ecx]
mov     ecx, [esp+1Ch+var_14]
call    sub_4F9297
mov     ebx, eax

loc_4F94AA:
mov     eax, esi
call    ds:off_551FCC
mov     eax, ebx

loc_4F94B4:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4F9445 endp

; [00000075 BYTES: COLLAPSED FUNCTION fgets_]
; [00000057 BYTES: COLLAPSED FUNCTION unknown_libname_37]
; [00000029 BYTES: COLLAPSED FUNCTION cget_string_]
; [00000004 BYTES: COLLAPSED FUNCTION uncget_string_]
; [00000027 BYTES: COLLAPSED FUNCTION vsscanf_]
; [00000021 BYTES: COLLAPSED FUNCTION sscanf_]
; [0000003F BYTES: COLLAPSED FUNCTION fclose_]
; [00000015 BYTES: COLLAPSED FUNCTION __shutdown_stream_]
; [0000000C BYTES: COLLAPSED FUNCTION __hex_]
; [000000AA BYTES: COLLAPSED FUNCTION __MkTmpFile_]
; [000000BD BYTES: COLLAPSED FUNCTION __doclose_]



sub_4F97C4 proc near

var_C= dword ptr -0Ch
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= byte ptr  0Ch

push    ebx
push    edx
sub     esp, 4
lea     eax, [esp+0Ch+arg_8]
mov     ebx, esp
mov     edx, [esp+0Ch+arg_4]
mov     [esp+0Ch+var_C], eax
mov     eax, [esp+0Ch+arg_0]
call    sub_4FFA59
add     esp, 4
pop     edx
pop     ebx
retn
sub_4F97C4 endp




sub_4F97E5 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
push    80000000h       ; dwNewLong
push    0FFFFFFF0h      ; nIndex
push    eax             ; hWnd
call    cs:__imp_SetWindowLongA
mov     ds:dwNewLong, eax
push    0               ; pUnkOuter
push    offset lpDD     ; lplpDD
push    0               ; lpGUID
call    DirectDrawCreate
test    eax, eax
jz      short loc_4F9816

loc_4F9810:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn

loc_4F9816:
mov     eax, ds:lpDD
mov     edx, [eax]
push    11h
push    ebx
push    eax
call    dword ptr [edx+50h]
mov     eax, ds:lpDD
mov     edx, [eax]
push    10h
push    1E0h
push    280h
push    eax
call    dword ptr [edx+54h]
test    eax, eax
jnz     short loc_4F9810
push    40h ; '@'       ; uFlags
push    1E0h            ; cy
push    280h            ; cx
push    eax             ; Y
push    eax             ; X
push    eax             ; hWndInsertAfter
push    ebx             ; hWnd
call    cs:__imp_SetWindowPos
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn
sub_4F97E5 endp




; int __stdcall sub_4F985F(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam)
sub_4F985F proc near

hWnd= dword ptr  4
Msg= dword ptr  8
wParam= dword ptr  0Ch
lParam= dword ptr  10h

push    ebx
mov     eax, [esp+4+Msg]
mov     edx, [esp+4+wParam]
cmp     eax, 100h
jb      short loc_4F989A
jbe     loc_4F98EB
cmp     eax, 204h
jb      short loc_4F988E
jbe     loc_4F98EB
cmp     eax, 3B9h
jz      short loc_4F98DC
jmp     loc_4F991C

loc_4F988E:
cmp     eax, 201h
jz      short loc_4F98EB
jmp     loc_4F991C

loc_4F989A:
cmp     eax, 2
jb      loc_4F991C
jbe     short loc_4F98FE
cmp     eax, 1Ch
jnz     loc_4F991C
test    edx, edx
jz      short loc_4F98D2
mov     edx, [esp+4+hWnd]
push    edx             ; hWnd
call    cs:__imp_SetFocus
push    0               ; hwndCallback
push    0               ; uReturnLength
push    0               ; lpstrReturnString
push    offset strCommand ; "resume vfw"

loc_4F98C9:
call    cs:__imp_mciSendStringA
jmp     short loc_4F9916

loc_4F98D2:
push    edx
push    edx
push    edx
push    offset aPauseVfw ; "pause vfw"
jmp     short loc_4F98C9

loc_4F98DC:
cmp     edx, 1
jnz     short loc_4F9916
xor     ah, ah
mov     ds:byte_551FA8, ah
jmp     short loc_4F9916

loc_4F98EB:
cmp     ds:byte_551FA8, 0
jz      short loc_4F9916
xor     dh, dh
mov     ds:byte_551FA8, dh
jmp     short loc_4F9916

loc_4F98FE:
xor     bl, bl
mov     ds:byte_551FA8, bl
mov     ds:byte_530418, 1
push    0               ; nExitCode
call    cs:__imp_PostQuitMessage

loc_4F9916:
xor     eax, eax
pop     ebx
retn    10h

loc_4F991C:
mov     ecx, [esp+4+lParam]
push    ecx             ; lParam
push    edx             ; wParam
push    eax             ; Msg
mov     ebx, [esp+10h+hWnd]
push    ebx             ; hWnd
call    cs:__imp_DefWindowProcA
pop     ebx
retn    10h
sub_4F985F endp




sub_4F9933 proc near

strCommand= byte ptr -78h
Msg= MSG ptr -28h

push    ecx
push    esi
push    edi
sub     esp, 6Ch
mov     edi, eax
mov     esi, edx
xor     ah, ah
mov     ds:byte_551FA8, ah
push    edi
push    offset aOpenAvivideoSA ; "open avivideo!%s alias vfw"
lea     eax, [esp+80h+strCommand]
push    eax
call    sprintf_
add     esp, 0Ch
push    0               ; hwndCallback
push    0               ; uReturnLength
push    0               ; lpstrReturnString
lea     eax, [esp+84h+strCommand]
push    eax             ; lpstrCommand
call    cs:__imp_mciSendStringA
test    eax, eax
jz      short loc_4F99A1
call    sub_4F09AF
push    edi
push    eax
push    offset aOpenAvivideoSS ; "open avivideo!%s%s alias vfw"
lea     eax, [esp+84h+strCommand]
push    eax
call    sprintf_
add     esp, 10h
push    0               ; hwndCallback
push    0               ; uReturnLength
push    0               ; lpstrReturnString
lea     eax, [esp+84h+strCommand]
push    eax             ; lpstrCommand
call    cs:__imp_mciSendStringA
test    eax, eax
jnz     loc_4F9ACF

loc_4F99A1:
test    ebx, ebx
jz      short loc_4F99C8
mov     eax, esi
call    sub_4F97E5
cmp     eax, 1
jz      short loc_4F99C8
push    0               ; hwndCallback
push    0               ; uReturnLength
push    0               ; lpstrReturnString
push    offset aCloseVfwWait ; "close vfw wait"
call    cs:__imp_mciSendStringA
jmp     loc_4F9ACF

loc_4F99C8:             ; dwNewLong
push    offset sub_4F985F
push    0FFFFFFFCh      ; nIndex
push    esi             ; hWnd
call    cs:__imp_SetWindowLongA
mov     ebx, eax
push    esi
push    offset aWindowVfwHandl ; "window vfw handle %d"
lea     eax, [esp+80h+strCommand]
push    eax
call    sprintf_
add     esp, 0Ch
push    0               ; hwndCallback
push    0               ; uReturnLength
push    0               ; lpstrReturnString
lea     eax, [esp+84h+strCommand]
push    eax             ; lpstrCommand
call    cs:__imp_mciSendStringA
push    0               ; hwndCallback
push    0               ; uReturnLength
push    0               ; lpstrReturnString
push    offset aPutVfwDestinat ; "put vfw destination at 0 0 640 480"
call    cs:__imp_mciSendStringA
push    esi             ; hwndCallback
push    0               ; uReturnLength
push    0               ; lpstrReturnString
push    offset aPlayVfwWindowF ; "play vfw window from 0 notify"
call    cs:__imp_mciSendStringA
mov     ds:byte_551FA8, 1
jmp     short loc_4F9A4B

loc_4F9A2A:
lea     eax, [esp+78h+Msg]
push    eax             ; lpMsg
call    cs:__imp_TranslateMessage
lea     eax, [esp+78h+Msg]
push    eax             ; lpMsg
call    cs:__imp_DispatchMessageA
cmp     ds:byte_551FA8, 0
jz      short loc_4F9A61

loc_4F9A4B:             ; wMsgFilterMax
push    0
push    0               ; wMsgFilterMin
push    0               ; hWnd
lea     eax, [esp+84h+Msg]
push    eax             ; lpMsg
call    cs:__imp_GetMessageA
test    eax, eax
jnz     short loc_4F9A2A

loc_4F9A61:             ; hwndCallback
push    0
push    0               ; uReturnLength
push    0               ; lpstrReturnString
push    offset aStopVfwWait ; "stop vfw wait"
call    cs:__imp_mciSendStringA
push    0               ; hwndCallback
push    0               ; uReturnLength
push    0               ; lpstrReturnString
push    offset aCloseVfwWait ; "close vfw wait"
call    cs:__imp_mciSendStringA
push    ebx             ; dwNewLong
push    0FFFFFFFCh      ; nIndex
push    esi             ; hWnd
call    cs:__imp_SetWindowLongA
mov     edx, ds:lpDD
test    edx, edx
jz      short loc_4F9ACF
mov     edi, [edx]
push    edx
call    dword ptr [edi+8]
push    40h ; '@'       ; uFlags
mov     ecx, ds:cy
push    ecx             ; cy
mov     ebx, ds:nWidth
push    ebx             ; cx
push    0               ; Y
push    0               ; X
push    0               ; hWndInsertAfter
push    esi             ; hWnd
call    cs:__imp_SetWindowPos
mov     edi, ds:dwNewLong
push    edi             ; dwNewLong
push    0FFFFFFF0h      ; nIndex
push    esi             ; hWnd
call    cs:__imp_SetWindowLongA

loc_4F9ACF:
add     esp, 6Ch
pop     edi
pop     esi
pop     ecx
retn
sub_4F9933 endp




sub_4F9AD6 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 14h
mov     edi, eax
mov     esi, edx
mov     edx, [eax+8]
mov     ecx, [edx]
mov     eax, ds:nCount
mov     [esp+20h+var_10], eax
shl     eax, 2
sub     eax, [esp+20h+var_10]
shl     eax, 2
add     eax, offset dword_897A50
add     eax, 4
push    eax
push    offset word_4F0EBE
push    edx
call    dword ptr [ecx]
test    esi, esi
jz      loc_4F9B99
push    0               ; lpName
push    0               ; bInitialState
push    0               ; bManualReset
push    0               ; lpEventAttributes
call    cs:__imp_CreateEventA
mov     edx, ds:nCount
mov     ds:pHandles[edx*4], eax
push    0               ; lpName
push    0               ; bInitialState
push    0               ; bManualReset
push    0               ; lpEventAttributes
call    cs:__imp_CreateEventA
mov     ecx, ds:nCount
mov     ds:dword_897B54[ecx*4], eax
xor     eax, eax
mov     [esp+20h+var_20], eax
mov     eax, ds:pHandles[ecx*4]
mov     [esp+20h+var_1C], eax
mov     [esp+20h+var_18], ebx
mov     eax, ds:dword_897B54[ecx*4]
mov     [esp+20h+var_14], eax
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
mov     ds:dword_897A58[edx], edi
inc     ecx
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ds:dword_897A58[eax*4], edi
mov     ds:dword_897A50[edx], esi
mov     edx, esi
inc     edx
mov     ds:dword_897A50[eax*4], edx
jmp     short loc_4F9BD6

loc_4F9B99:             ; lpName
push    esi
push    esi             ; bInitialState
push    esi             ; bManualReset
push    esi             ; lpEventAttributes
call    cs:__imp_CreateEventA
mov     edx, eax
mov     eax, ds:nCount
mov     ds:pHandles[eax*4], edx
mov     [esp+20h+var_20], ebx
mov     eax, edx
mov     [esp+20h+var_1C], eax
mov     edx, ds:nCount
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ds:dword_897A58[eax*4], edi
mov     ds:dword_897A50[eax*4], esi

loc_4F9BD6:
mov     edx, ds:nCount
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_897A54[eax*4]
mov     edx, [eax]
mov     ecx, esp
push    ecx
inc     esi
push    esi
push    eax
call    dword ptr [edx+0Ch]
add     ds:nCount, esi
add     esp, 14h
pop     edi
pop     esi
pop     ecx
retn
sub_4F9AD6 endp




sub_4F9C02 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebx, eax
shl     eax, 2
sub     eax, ebx
shl     eax, 2
mov     edx, ds:dword_897A54[eax]
test    edx, edx
jz      short loc_4F9C27
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]

loc_4F9C27:
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 2
mov     esi, ebx
shl     esi, 2
mov     ebp, offset pHandles
add     ebp, esi
mov     edi, offset dword_897A50
add     edi, eax
cmp     ds:dword_897A50[eax], 0
jz      loc_4F9CFC
mov     eax, ds:pHandles[esi]
push    eax             ; hObject
call    cs:__imp_CloseHandle
mov     edx, ds:dword_897B54[esi]
push    edx             ; hObject
call    cs:__imp_CloseHandle
lea     ecx, [ebx+2]
mov     ebx, ds:nCount
cmp     ecx, ebx
jge     short loc_4F9CB9
sub     ebx, ecx
mov     edx, ebx
shl     ebx, 2
sub     ebx, edx
shl     ebx, 2
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset dword_897A50
add     edx, eax
mov     eax, edi
call    memcpy_
mov     ebx, ds:nCount
sub     ebx, ecx
shl     ebx, 2
lea     edx, [esi+8]
add     edx, offset pHandles
mov     eax, ebp
call    memcpy_

loc_4F9CB9:
mov     esi, ds:nCount
sub     esi, 2
mov     ds:nCount, esi
mov     edx, esi
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, offset dword_897A50
mov     ebx, 18h
xor     edx, esi
call    memset_
mov     eax, ds:nCount
shl     eax, 2
add     eax, offset pHandles
mov     ebx, 8
jmp     loc_4F9D98

loc_4F9CFC:
mov     eax, ds:pHandles[esi]
push    eax             ; hObject
call    cs:__imp_CloseHandle
lea     ecx, [ebx+1]
mov     edx, ds:nCount
cmp     ecx, edx
jge     short loc_4F9D5C
sub     edx, ecx
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     [esp+1Ch+var_1C], eax
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset dword_897A50
add     edx, eax
mov     ebx, [esp+1Ch+var_1C]
mov     eax, edi
call    memcpy_
mov     ebx, ds:nCount
sub     ebx, ecx
shl     ebx, 2
lea     edx, [esi+4]
add     edx, offset pHandles
mov     eax, ebp
call    memcpy_

loc_4F9D5C:
mov     ecx, ds:nCount
dec     ecx
mov     ds:nCount, ecx
mov     edx, ecx
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, offset dword_897A50
mov     ebx, 0Ch
xor     edx, ecx
call    memset_
mov     eax, ds:nCount
shl     eax, 2
add     eax, offset pHandles
mov     ebx, 4

loc_4F9D98:
xor     edx, edx
call    memset_
add     esp, 4

loc_4F9DA2:
pop     ebp

loc_4F9DA3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F9C02 endp




sub_4F9DA9 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     edx, [eax+10h]
add     edx, 14h

loc_4F9DB6:
lea     eax, [ecx+edx]
cmp     byte ptr [eax], 64h ; 'd'
jnz     short loc_4F9DD0
cmp     byte ptr [eax+1], 61h ; 'a'
jnz     short loc_4F9DD0
cmp     byte ptr [eax+2], 74h ; 't'
jnz     short loc_4F9DD0
cmp     byte ptr [eax+3], 61h ; 'a'
jz      short loc_4F9DDD

loc_4F9DD0:
lea     eax, [ecx+edx]
mov     ebx, [eax+4]
add     ebx, 8
add     edx, ebx
jmp     short loc_4F9DB6

loc_4F9DDD:
mov     ebx, [eax+4]
test    esi, esi
jz      short loc_4F9DE9
add     eax, 8
mov     [esi], eax

loc_4F9DE9:
mov     eax, ebx
pop     esi
pop     ecx
pop     ebx
retn
sub_4F9DA9 endp




sub_4F9DEF proc near

var_2C= byte ptr -2Ch
var_28= byte ptr -28h
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
mov     esi, eax
mov     ecx, edx
lea     edx, [eax+14h]
mov     ebx, 10h
mov     eax, offset word_897BA4
call    memcpy_
xor     edx, edx
mov     ds:word_897BB4, dx
lea     edx, [esp+2Ch+var_28]
mov     eax, esi
call    sub_4F9DA9
mov     edi, eax
mov     esi, eax
mov     ebx, 14h
xor     edx, edx
mov     eax, offset dword_897B90
call    memset_
mov     ds:dword_897B90, 14h
cmp     ecx, 1
jb      short loc_4F9E4E
jbe     short loc_4F9E64
cmp     ecx, 2
jz      short loc_4F9E70
jmp     short loc_4F9E89

loc_4F9E4E:
test    ecx, ecx
jnz     short loc_4F9E89
mov     ds:dword_897B94, 180E2h

loc_4F9E5C:
mov     ds:dword_897B98, edi
jmp     short loc_4F9E89

loc_4F9E64:
mov     ds:dword_897B94, 181E0h
jmp     short loc_4F9E5C

loc_4F9E70:
mov     ds:dword_897B94, 181E0h
mov     ds:dword_897B98, 20000h
mov     esi, 10000h

loc_4F9E89:
xor     edx, edx
mov     ds:dword_897B9C, edx
mov     ds:dword_897BA0, offset word_897BA4
mov     eax, ds:pUnkOuter
mov     edx, [eax]
push    0
lea     ecx, [esp+30h+var_2C]
push    ecx
push    offset dword_897B90
push    eax
call    dword ptr [edx+0Ch]
test    eax, eax
jz      short loc_4F9EBD

loc_4F9EB6:
xor     eax, eax
jmp     loc_4F9F74

loc_4F9EBD:
mov     eax, dword ptr [esp+2Ch+var_2C]
mov     eax, [eax]
push    0
lea     edx, [esp+30h+var_18]
push    edx
lea     edx, [esp+34h+var_20]
push    edx
lea     edx, [esp+38h+var_1C]
push    edx
lea     edx, [esp+3Ch+var_24]
push    edx
push    esi
push    0
mov     ebx, dword ptr [esp+48h+var_2C]
push    ebx
call    dword ptr [eax+2Ch]
mov     edx, eax
cmp     eax, 88780096h
jnz     short loc_4F9F20
mov     eax, dword ptr [esp+2Ch+var_2C]
mov     eax, [eax]
mov     edi, dword ptr [esp+2Ch+var_2C]
push    edi
call    dword ptr [eax+50h]
mov     eax, dword ptr [esp+2Ch+var_2C]
mov     eax, [eax]
push    0
lea     edx, [esp+30h+var_18]
push    edx
lea     edx, [esp+34h+var_20]
push    edx
lea     edx, [esp+38h+var_1C]
push    edx
lea     edx, [esp+3Ch+var_24]
push    edx
push    esi
push    0
mov     ebp, dword ptr [esp+48h+var_2C]
push    ebp
call    dword ptr [eax+2Ch]
mov     edx, eax

loc_4F9F20:
test    edx, edx
jnz     short loc_4F9EB6
mov     ebx, [esp+2Ch+var_1C]
mov     edx, dword ptr [esp+2Ch+var_28]
mov     eax, [esp+2Ch+var_24]
call    memcpy_
mov     eax, [esp+2Ch+var_1C]
cmp     esi, eax
jz      short loc_4F9F50
mov     edx, dword ptr [esp+2Ch+var_28]
add     edx, eax
mov     ebx, [esp+2Ch+var_18]
mov     eax, [esp+2Ch+var_20]
call    memcpy_

loc_4F9F50:
mov     eax, dword ptr [esp+2Ch+var_2C]
mov     eax, [eax]
mov     ebx, [esp+2Ch+var_18]
push    ebx
mov     esi, [esp+30h+var_20]
push    esi
mov     edi, [esp+34h+var_1C]
push    edi
mov     ebp, [esp+38h+var_24]
push    ebp
mov     edx, dword ptr [esp+3Ch+var_2C]
push    edx
call    dword ptr [eax+4Ch]
mov     eax, dword ptr [esp+2Ch+var_2C]

loc_4F9F74:
add     esp, 18h

loc_4F9F77:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4F9DEF endp




sub_4F9F7D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebx, eax
mov     edx, ds:pUnkOuter
test    edx, edx
jnz     loc_4FA0D8
push    edx             ; pUnkOuter
push    offset pUnkOuter ; ppDS
push    edx             ; pcGuidDevice
call    DirectSoundCreate
test    eax, eax
jz      short loc_4F9FB5
xor     ebp, ebp
mov     ds:pUnkOuter, ebp
mov     eax, 64h ; 'd'
jmp     loc_4F9DA2

loc_4F9FB5:
mov     eax, ds:pUnkOuter
mov     edx, [eax]
push    3
push    ebx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jz      short loc_4F9FE4
mov     eax, ds:pUnkOuter
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
xor     edi, edi
mov     ds:pUnkOuter, edi
mov     eax, 65h ; 'e'
jmp     loc_4F9DA2

loc_4F9FE4:
mov     ebx, 14h
xor     edx, edx
mov     eax, offset dword_897B90
call    memset_
mov     ds:dword_897B90, 14h
mov     ds:dword_897B94, 1
xor     esi, esi
mov     ds:dword_897B98, esi
mov     ds:dword_897B9C, esi
mov     ds:dword_897BA0, esi
mov     eax, ds:pUnkOuter
mov     edx, [eax]
push    esi
push    offset dword_551FB4
push    offset dword_897B90
push    eax
call    dword ptr [edx+0Ch]
test    eax, eax
jz      short loc_4FA052
mov     eax, ds:pUnkOuter
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
mov     ds:pUnkOuter, esi
mov     eax, 66h ; 'f'
jmp     loc_4F9DA2

loc_4FA052:
mov     ds:word_897BA4, 1
mov     ebx, 2
mov     ds:word_897BA6, bx
mov     ds:dword_897BA8, 5622h
mov     ds:dword_897BAC, 0AC44h
mov     ds:word_897BB0, bx
mov     ds:word_897BB2, 8
xor     edi, edi
mov     ds:word_897BB4, di
mov     eax, ds:dword_551FB4
mov     edx, [eax]
push    offset word_897BA4
push    eax
call    dword ptr [edx+38h]
test    eax, eax
jz      short loc_4FA0D8
mov     eax, ds:pUnkOuter
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:pUnkOuter, ecx
mov     eax, ds:dword_551FB4
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
xor     ebx, ebx
mov     ds:dword_551FB4, ebx
mov     eax, 67h ; 'g'
jmp     loc_4F9DA2

loc_4FA0D8:
mov     ebx, 40h ; '@'
xor     edx, edx
mov     eax, offset dword_897B10
call    memset_
xor     eax, eax
jmp     loc_4F9DA2
sub_4F9F7D endp




sub_4FA0F0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, ds:dword_551FB4
test    edx, edx
jz      short loc_4FA10E
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:dword_551FB4, ecx

loc_4FA10E:
mov     ebx, ds:pUnkOuter
test    ebx, ebx
jz      short loc_4FA126
mov     edx, [ebx]
push    ebx
call    dword ptr [edx+8]
xor     esi, esi
mov     ds:pUnkOuter, esi

loc_4FA126:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4FA0F0 endp




sub_4FA12B proc near

var_10= dword ptr -10h

push    ebx
push    ecx
push    esi
sub     esp, 4
mov     ecx, eax
cmp     ds:pUnkOuter, 0
jz      loc_4FA1E8
test    edx, edx
jnz     short loc_4FA198
mov     esi, [eax]
test    esi, esi
jz      short loc_4FA18B
cmp     dword ptr [eax+4], 0
jz      short loc_4FA17F
mov     eax, esi
mov     edx, 1
call    sub_4F9DEF
mov     [ecx+8], eax
mov     eax, [ecx+4]
xor     edx, edx
call    sub_4F9DEF
mov     [ecx+0Ch], eax
mov     eax, [ecx]
xor     edx, edx
call    sub_4F9DA9
lea     ebx, [eax-200h]
xor     edx, edx
jmp     short loc_4FA1E1

loc_4FA17F:
mov     eax, esi
call    sub_4F9DEF
mov     [ecx+8], eax
jmp     short loc_4FA1E8

loc_4FA18B:
mov     eax, [eax+4]
call    sub_4F9DEF
mov     [ecx+0Ch], eax
jmp     short loc_4FA1E8

loc_4FA198:
mov     eax, [eax]
mov     edx, 2
call    sub_4F9DEF
mov     [ecx+8], eax
mov     eax, [ecx]
mov     edx, esp
call    sub_4F9DA9
sub     eax, 10000h
mov     [ecx+4], eax
mov     ebx, 10000h
mov     edx, [esp+10h+var_10]
mov     eax, offset unk_887A50
call    memcpy_
mov     eax, [ecx]
call    _nfree_
mov     dword ptr [ecx], 0FFFFFFFFh
mov     ebx, 10000h
mov     edx, 1

loc_4FA1E1:
mov     eax, ecx
call    sub_4F9AD6

loc_4FA1E8:
add     esp, 4
pop     esi
pop     ecx
pop     ebx
retn
sub_4FA12B endp




sub_4FA1EF proc near

var_28= dword ptr -28h
var_24= byte ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     esi, eax
mov     eax, edx
cmp     ds:pUnkOuter, 0
jz      loc_4FA2C1
cmp     eax, 0FFFFFFFFh
jz      short loc_4FA218
mov     edx, esp
call    sub_4F9DA9
mov     edi, eax
jmp     short loc_4FA224

loc_4FA218:
mov     edi, 10000h
mov     [esp+28h+var_28], offset unk_887A50

loc_4FA224:
mov     eax, [esi]
push    esi
call    dword ptr [eax+50h]
mov     eax, [esi]
push    0
lea     edx, [esp+2Ch+var_18]
push    edx
lea     edx, [esp+30h+var_20]
push    edx
lea     edx, [esp+34h+var_1C]
push    edx
lea     edx, [esp+38h+var_24]
push    edx
push    edi
push    0
push    esi
call    dword ptr [eax+2Ch]
mov     edx, eax
cmp     eax, 88780096h
jnz     short loc_4FA279
mov     eax, [esi]
push    esi
call    dword ptr [eax+50h]
mov     eax, [esi]
push    0
lea     edx, [esp+2Ch+var_18]
push    edx
lea     edx, [esp+30h+var_20]
push    edx
lea     edx, [esp+34h+var_1C]
push    edx
lea     edx, [esp+38h+var_24]
push    edx
push    edi
push    0
push    esi
call    dword ptr [eax+2Ch]
mov     edx, eax

loc_4FA279:
test    edx, edx
jnz     short loc_4FA2C1
mov     ebx, dword ptr [esp+28h+var_1C]
mov     edx, [esp+28h+var_28]
mov     eax, dword ptr [esp+28h+var_24]
call    memcpy_
mov     ebx, dword ptr [esp+28h+var_1C]
cmp     edi, ebx
jz      short loc_4FA2A7
mov     edx, [esp+28h+var_28]
add     edx, ebx
mov     ebx, [esp+28h+var_18]
mov     eax, dword ptr [esp+28h+var_20]
call    memcpy_

loc_4FA2A7:
mov     eax, [esi]
mov     ebp, [esp+28h+var_18]
push    ebp
mov     edx, dword ptr [esp+2Ch+var_20]
push    edx
mov     ecx, dword ptr [esp+30h+var_1C]
push    ecx
mov     ebx, dword ptr [esp+34h+var_24]
push    ebx
push    esi
call    dword ptr [eax+4Ch]

loc_4FA2C1:
add     esp, 14h
jmp     loc_4F9F77
sub_4FA1EF endp




sub_4FA2C9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
xor     esi, esi
cmp     ds:pUnkOuter, 0
jz      loc_4FA366
mov     ecx, [eax+8]
test    ecx, ecx
jz      short loc_4FA328
mov     edx, [ecx]
push    esi
push    ecx
call    dword ptr [edx+34h]
cmp     dword ptr [ebx], 0FFFFFFFFh
jnz     short loc_4FA2F6
mov     esi, 1

loc_4FA2F6:
mov     eax, [ebx+8]
mov     edx, [eax]
push    esi
push    0
push    0
push    eax
call    dword ptr [edx+30h]
cmp     eax, 88780096h
jnz     short loc_4FA366
mov     edx, [ebx]
mov     eax, [ebx+8]
call    sub_4FA1EF
mov     eax, [ebx+8]
mov     edx, [eax]
push    esi
push    0
push    0
push    eax
call    dword ptr [edx+30h]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4FA328:
mov     esi, [eax+0Ch]
test    esi, esi
jz      short loc_4FA366
mov     edx, [esi]
push    ecx
push    esi
call    dword ptr [edx+34h]
mov     eax, [ebx+0Ch]
mov     edx, [eax]
push    1
push    0
push    0
push    eax
call    dword ptr [edx+30h]
cmp     eax, 88780096h
jnz     short loc_4FA366
mov     edx, [ebx+4]
mov     eax, [ebx+0Ch]
call    sub_4FA1EF
mov     ebx, [ebx+0Ch]
mov     eax, [ebx]
push    1
push    0
push    0
push    ebx
call    dword ptr [eax+30h]

loc_4FA366:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4FA2C9 endp




sub_4FA36B proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ebx, eax
cmp     ds:pUnkOuter, 0
jz      short loc_4FA399
mov     ecx, [eax+8]
test    ecx, ecx
jz      short loc_4FA387
mov     edx, [ecx]
push    ecx
call    dword ptr [edx+48h]

loc_4FA387:
cmp     dword ptr [ebx], 0FFFFFFFFh
jz      short loc_4FA399
mov     edi, [ebx+0Ch]
test    edi, edi
jz      short loc_4FA399
mov     eax, [edi]
push    edi
call    dword ptr [eax+48h]

loc_4FA399:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4FA36B endp




sub_4FA39E proc near
push    ebx
push    ecx
push    esi
push    ebp
mov     ebx, eax
xor     esi, esi
cmp     ds:pUnkOuter, 0
jz      loc_4FA431
cmp     dword ptr [eax+8], 0
jz      short loc_4FA3F7
cmp     edx, 1
jnz     short loc_4FA3F7
cmp     dword ptr [eax], 0FFFFFFFFh
jnz     short loc_4FA3C5
mov     esi, edx

loc_4FA3C5:
mov     eax, [ebx+8]
mov     edx, [eax]
push    esi
push    0
push    0
push    eax
call    dword ptr [edx+30h]
cmp     eax, 88780096h
jnz     short loc_4FA431
mov     edx, [ebx]
mov     eax, [ebx+8]
call    sub_4FA1EF
mov     ebx, [ebx+8]
mov     eax, [ebx]
push    esi
push    0
push    0
push    ebx
call    dword ptr [eax+30h]
pop     ebp
pop     esi
pop     ecx
pop     ebx
retn

loc_4FA3F7:
mov     ebp, [ebx+0Ch]
test    ebp, ebp
jz      short loc_4FA431
cmp     edx, 2
jnz     short loc_4FA431
mov     eax, [ebp+0]
push    1
push    0
push    0
push    ebp
call    dword ptr [eax+30h]
cmp     eax, 88780096h
jnz     short loc_4FA431
mov     edx, [ebx+4]
mov     eax, [ebx+0Ch]
call    sub_4FA1EF
mov     eax, [ebx+0Ch]
mov     edx, [eax]
push    1
push    0
push    0
push    eax
call    dword ptr [edx+30h]

loc_4FA431:
pop     ebp
pop     esi
pop     ecx
pop     ebx
retn
sub_4FA39E endp




sub_4FA436 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    esi
push    ebp
sub     esp, 8
mov     ebx, eax
mov     [esp+18h+var_14], edx
fild    [esp+18h+var_14]
fdiv    ds:flt_50AA94
fmul    ds:flt_50AA98
fadd    ds:flt_50AA9C
call    __CHP
fistp   [esp+18h+var_18]
cmp     ds:pUnkOuter, 0
jz      short loc_4FA492
mov     ecx, [eax+8]
test    ecx, ecx
jz      short loc_4FA47B
mov     edx, [ecx]
mov     esi, [esp+18h+var_18]
push    esi
push    ecx
call    dword ptr [edx+3Ch]

loc_4FA47B:
cmp     dword ptr [ebx], 0FFFFFFFFh
jz      short loc_4FA492
mov     ebp, [ebx+0Ch]
test    ebp, ebp
jz      short loc_4FA492
mov     eax, [ebp+0]
mov     edx, [esp+18h+var_18]
push    edx
push    ebp
call    dword ptr [eax+3Ch]

loc_4FA492:
add     esp, 8
pop     ebp
pop     esi
pop     ecx
pop     ebx
retn
sub_4FA436 endp




sub_4FA49A proc near
push    ebx
push    ecx
push    esi
push    ebp
mov     ebx, eax
mov     esi, edx
cmp     ds:pUnkOuter, 0
jz      short loc_4FA4CD
mov     ecx, [eax+8]
test    ecx, ecx
jz      short loc_4FA4B9
mov     edx, [ecx]
push    esi
push    ecx
call    dword ptr [edx+40h]

loc_4FA4B9:
cmp     dword ptr [ebx], 0FFFFFFFFh
jz      short loc_4FA4CD
mov     ebp, [ebx+0Ch]
test    ebp, ebp
jz      short loc_4FA4CD
mov     eax, [ebp+0]
push    esi
push    ebp
call    dword ptr [eax+40h]

loc_4FA4CD:
pop     ebp
pop     esi
pop     ecx
pop     ebx
retn
sub_4FA49A endp




sub_4FA4D2 proc near

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
mov     ebx, eax
xor     edi, edi
mov     [esp+24h+var_24], edi
mov     [esp+24h+var_20], edi
mov     [esp+24h+var_1C], edi
cmp     ds:pUnkOuter, 0
jnz     short loc_4FA4FA
xor     eax, eax
jmp     loc_4FA58C

loc_4FA4FA:
cmp     dword ptr [eax+8], 0
jz      short loc_4FA50C
mov     eax, [ebx+8]
mov     edx, [eax]
mov     ecx, esp
push    ecx
push    eax
call    dword ptr [edx+24h]

