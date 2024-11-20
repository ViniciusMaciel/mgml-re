loc_4F0A55:
mov     edx, offset aWb ; "wb"
mov     eax, ebx
call    sub_4F93C1
mov     ebx, eax
mov     eax, ecx
mov     ds:dword_551C40[ecx*4], ebx
pop     edx
pop     ecx
pop     ebx
retn
sub_4F0A2E endp




sub_4F0A70 proc near
push    ecx
mov     ecx, eax
mov     eax, edx
mov     edx, ecx
mov     ecx, ds:dword_551C40[edx*4]
mov     edx, 1
call    fread_
pop     ecx
retn
sub_4F0A70 endp




sub_4F0A8A proc near
push    ebx
push    ecx
push    esi
mov     esi, edx
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_551C40[edx]
mov     eax, [eax+10h]
call    sub_4FAF1A
mov     ecx, ds:dword_551C40[edx]
mov     ebx, eax
mov     edx, 1
mov     eax, esi
call    fread_
pop     esi
pop     ecx
pop     ebx
retn
sub_4F0A8A endp




sub_4F0ABA proc near
push    ecx
mov     ecx, eax
mov     eax, edx
mov     edx, ecx
mov     ecx, ds:dword_551C40[edx*4]
mov     edx, 1
call    fwrite_
pop     ecx
retn
sub_4F0ABA endp




sub_4F0AD4 proc near
mov     eax, ds:dword_551C40[eax*4]
mov     eax, [eax+10h]
jmp     sub_4FAF1A
sub_4F0AD4 endp




sub_4F0AE3 proc near
push    ebx
mov     eax, ds:dword_551C40[eax*4]
xor     ebx, ebx
call    sub_4FB1EB
pop     ebx
retn
sub_4F0AE3 endp




sub_4F0AF4 proc near
push    ecx
push    edx
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_551C40[edx]
call    fclose_
xor     ecx, ecx
mov     ds:dword_551C40[edx], ecx
pop     edx
pop     ecx
retn
sub_4F0AF4 endp

; [000000ED BYTES: COLLAPSED FUNCTION _nmalloc_]
dw 0EE0h
dd 4340D7B7h, 63B011CFh, 0C2AF2000h, 17A035CDh
dd 7DB35938h, 0DEA211CFh, 0B900AA00h, 0DB805633h
dd 0A7336C14h, 21A511CEh, 0BAF2000h, 0F3E060E5h
dd 2B43B3A6h, 0DEA211CFh, 0B900AA00h
db 33h, 56h
dw 509Ah
dd 39BD9C59h, 4A8C11D1h, 0D94FC000h, 0DB81C530h
dd 0A7336C14h, 21A511CEh, 0BAF2000h, 588560E5h
dd 6EEC5780h, 419411CFh, 0C10323A8h, 4E00270Eh
dd 69B2DA04h, 0D5A111D0h, 0B800AA00h, 8630BBDFh
dd 0AD350B2Bh, 0A68E11D0h, 97976000h, 0DB845BEAh
dd 0A7336C14h, 21A511CEh, 0BAF2000h, 0DB8560E5h
dd 0A7336C14h, 21A511CEh, 0BAF2000h, 0EE060E5h
dd 0D7E4B9Fh, 69B11D0h, 3C9A000h, 1C3EB8A3h
dd 0B46B69C1h, 7AAD11D1h, 0C24FC000h, 804E9Bh
dd 24213BBAh, 1AA311CFh, 0B900AA00h, 1EC15633h
dd 662A6AAEh, 9D8811D0h, 0BB00AA00h
db 0B7h, 6Ah
word_4F0CEE dw 3240h
dd 0E72BBB22h, 0B4A911D0h, 0C000AA00h, 6B203E99h
dd 259FF208h, 1AA311CFh, 0B900AA00h, 5C605633h
dd 2673A466h, 1AA311CFh, 0B900AA00h
db 33h, 56h
dw 3DE0h
dd 46AA84E6h, 6F8111CFh, 20C00000h, 49A16E15h
dd 0D6F38819h, 0AB8911D0h, 5C9A000h, 66432941h
dd 13E95093h, 0AA8911D1h, 5C9A000h
db 41h, 29h
dw 0DF22h
dd 0BACC8767h, 698911D1h, 6C9A000h, 8800A829h
dd 957D6410h, 0AB8911D0h, 5C9A000h, 15012941h
dd 8CF89328h, 0AB8911D0h, 5C9A000h, 3B602941h
dd 33D7B0ABh, 81A911D1h, 0D74FC000h, 0D9E074B1h
dd 25A02CDCh, 1AA311CFh, 0B900AA00h
db 33h, 56h
dw 1502h
dd 8CF89328h, 0AB8911D0h, 5C9A000h, 0C1422941h
dd 33AD4417h, 6F8111CFh, 20C00000h, 0C1446E15h
dd 33AD4417h, 6F8111CFh, 20C00000h, 15036E15h
dd 8CF89328h, 0AB8911D0h, 5C9A000h, 46F42941h
dd 0D3C5CA9Ch, 5AB711D1h, 52086000h, 0C14512B3h
dd 33AD4417h, 6F8111CFh, 20C00000h, 0C1466E15h
dd 33AD4417h, 6F8111CFh, 20C00000h, 15006E15h
dd 8CF89328h, 0AB8911D0h, 5C9A000h, 3B612941h
dd 33D7B0ABh, 81A911D1h, 0D74FC000h, 355574B1h
dd 4A837A50h, 0DBA511D1h, 3C9A000h, 0D946F867h
dd 62E847D4h, 0BC9311CFh, 54534544h, 7800000h
dd 89CDB021h, 8AF11D0h, 25C9A000h, 0FA8316CDh
dd 4981279Ah, 21A511CEh, 0BAF2000h, 0FA8560E5h
dd 4981279Ah, 21A511CEh, 0BAF2000h, 0FA8460E5h
dd 4981279Ah, 21A511CEh, 0BAF2000h, 0FA8660E5h
dd 4981279Ah, 21A511CEh, 0BAF2000h, 78160E5h
dd 89CDB021h, 8AF11D0h, 25C9A000h, 78216CDh
dd 89CDB021h, 8AF11D0h, 25C9A000h
db 0CDh, 16h
word_4F0EBE dw 783h
dd 89CDB021h, 8AF11D0h, 25C9A000h, 0AC3016CDh
dd 515C31EFh, 0AAA911D0h, 6100AA00h
db 0BEh, 93h



sub_4F0EDE proc near

arg_0= dword ptr  4
arg_C= dword ptr  10h
arg_14= dword ptr  18h

push    ebx
push    esi
mov     esi, [esp+8+arg_0]
mov     ecx, [esp+8+arg_C]
mov     ebx, 10h
mov     edx, offset word_4F0D4E
mov     eax, esi
call    memcmp_
test    eax, eax
jz      short loc_4F0F39
cmp     dword ptr [ecx], 0
jz      short loc_4F0F39
mov     ebx, 10h
mov     edx, offset word_4F0D1E
mov     eax, esi
call    memcmp_
test    eax, eax
jnz     short loc_4F0F39
mov     ebx, 0FCh
mov     edx, ecx
mov     eax, offset unk_887780
call    memcpy_
mov     eax, [esp+8+arg_14]
mov     dword ptr [eax], 1
xor     eax, eax
pop     esi
pop     ebx
retn    18h

loc_4F0F39:
mov     eax, 1
pop     esi
pop     ebx
retn    18h
sub_4F0EDE endp




; BOOL __stdcall Callback(GUID *, LPSTR, LPSTR, LPVOID)
Callback proc near

var_19C= dword ptr -19Ch
var_198= byte ptr -198h
lpDD= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
lpGUID= dword ptr  4
arg_4= dword ptr  8

push    ebx
push    esi
push    edi
push    ebp
sub     esp, 18Ch
mov     edi, [esp+19Ch+lpGUID]
xor     edx, edx
mov     [esp+19Ch+var_14], edx
xor     esi, esi
push    edx             ; pUnkOuter
lea     eax, [esp+1A0h+lpDD]
push    eax             ; lplpDD
push    edi             ; lpGUID
call    DirectDrawCreate
test    eax, eax
jnz     loc_4F11D8
mov     ebx, 17Ch
xor     edx, edx
mov     eax, esp
call    memset_
mov     [esp+19Ch+var_19C], 17Ch
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
push    esi
lea     edx, [esp+1A0h+var_19C]
push    edx
mov     ebx, [esp+1A4h+lpDD]
push    ebx
call    dword ptr [eax+2Ch]
test    [esp+19Ch+var_198], 1
jz      loc_4F11C4
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
lea     edx, [esp+19Ch+var_1C]
push    edx
push    offset word_4F0C3E
mov     ebp, [esp+1A4h+lpDD]
push    ebp
call    dword ptr [eax]
test    eax, eax
jz      short loc_4F0FED
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
mov     edi, [esp+19Ch+lpDD]
push    edi

loc_4F0FE5:
call    dword ptr [eax+8]
jmp     loc_4F11D8

loc_4F0FED:
mov     eax, [esp+19Ch+var_1C]
mov     eax, [eax]
lea     edx, [esp+19Ch+var_18]
push    edx
push    offset word_4F0CEE
mov     edx, [esp+1A4h+var_1C]
push    edx
call    dword ptr [eax]
test    eax, eax
jz      short loc_4F1038
mov     eax, [esp+19Ch+var_1C]
mov     eax, [eax]
mov     ebx, [esp+19Ch+var_1C]
push    ebx
call    dword ptr [eax+8]
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
mov     esi, [esp+19Ch+lpDD]
push    esi
jmp     short loc_4F0FE5

loc_4F1038:
mov     eax, [esp+19Ch+var_18]
mov     eax, [eax]
lea     edx, [esp+19Ch+var_14]
push    edx
push    offset sub_4F0EDE
mov     ecx, [esp+1A4h+var_18]
push    ecx
call    dword ptr [eax+0Ch]
cmp     [esp+19Ch+var_14], 0
jz      short loc_4F1075
cmp     ds:dword_887834, 0
jz      short loc_4F1075
cmp     ds:dword_887820, 0
jnz     short loc_4F10B3

loc_4F1075:
mov     eax, [esp+19Ch+var_18]
mov     eax, [eax]
mov     ebp, [esp+19Ch+var_18]
push    ebp
call    dword ptr [eax+8]
mov     eax, [esp+19Ch+var_1C]
mov     eax, [eax]
mov     edx, [esp+19Ch+var_1C]
push    edx
call    dword ptr [eax+8]
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
mov     ecx, [esp+19Ch+lpDD]
push    ecx
jmp     loc_4F0FE5

loc_4F10B3:
test    edi, edi
jnz     short loc_4F10E6
mov     eax, ds:dword_887888
call    sub_4F18B0
test    ds:dword_88781C, eax
jz      short loc_4F10E6
cmp     ds:dword_88788C, 280h
jle     short loc_4F10E6
cmp     ds:dword_887884, 1E0h
jle     short loc_4F10E6
mov     esi, 1

loc_4F10E6:
mov     ebp, ds:dword_551D1C
inc     ebp
mov     ds:dword_551D1C, ebp
mov     eax, ebp
shl     eax, 2
add     eax, ebp
shl     eax, 4
sub     eax, ebp
shl     eax, 2
test    edi, edi
jz      short loc_4F1137
add     eax, offset dword_786ED4
add     eax, 8
mov     ebx, 10h
mov     edx, edi
call    memcpy_
mov     edx, ds:dword_551D1C
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
xor     ecx, ecx
mov     ds:dword_786ED4[eax*4], ecx
jmp     short loc_4F1141

loc_4F1137:
mov     ds:dword_786ED4[eax], 1

loc_4F1141:
mov     edx, ds:dword_551D1C
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
mov     ds:dword_786ED8[eax], esi
add     eax, offset dword_786ED4
add     eax, 18h
mov     edx, [esp+19Ch+arg_4]
call    strcpy_
mov     edx, ds:dword_551D1C
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
add     eax, offset dword_786ED4
add     eax, 40h ; '@'
mov     ebx, 0FCh
mov     edx, offset unk_887780
call    memcpy_
mov     eax, [esp+19Ch+var_18]
mov     eax, [eax]
mov     ebx, [esp+19Ch+var_18]
push    ebx
call    dword ptr [eax+8]
mov     eax, [esp+19Ch+var_1C]
mov     eax, [eax]
mov     esi, [esp+19Ch+var_1C]
push    esi
call    dword ptr [eax+8]

loc_4F11C4:
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
mov     edi, [esp+19Ch+lpDD]
push    edi
call    dword ptr [eax+8]

loc_4F11D8:
mov     eax, 1
add     esp, 18Ch
pop     ebp
pop     edi
pop     esi
pop     ebx
retn    10h
Callback endp




sub_4F11EA proc near

arg_0= dword ptr  4

push    esi
push    edi
mov     edx, [esp+8+arg_0]
xor     eax, eax
test    byte ptr [edx+4], 40h
jz      loc_4F12B9
test    byte ptr ds:dword_88787C+1, 1
jz      loc_4F126F
cmp     dword ptr [edx+0Ch], 10h
jnz     loc_4F12B9
test    byte ptr [edx+4], 1
jz      short loc_4F1244
mov     ecx, [edx+1Ch]
cmp     ecx, 8000h
jnz     short loc_4F122E
mov     eax, 5
jmp     loc_4F12B4

loc_4F122E:
cmp     ecx, 0F000h
jnz     loc_4F12B4
mov     eax, 4
jmp     loc_4F12B4

loc_4F1244:
mov     esi, [edx+10h]
cmp     esi, 1Fh
jnz     short loc_4F1256
mov     eax, 1
jmp     loc_4F12B4

loc_4F1256:
cmp     esi, 0F800h
jnz     short loc_4F1265
mov     eax, 2
jmp     short loc_4F12B4

loc_4F1265:
cmp     esi, 7C00h
jnz     short loc_4F12B4
jmp     short loc_4F1299

loc_4F126F:
mov     ecx, [edx+0Ch]
cmp     ecx, ds:dword_887888
jnz     short loc_4F12B9
cmp     dword ptr [edx+0Ch], 10h
jb      short loc_4F12B9
test    byte ptr [edx+4], 1
jz      short loc_4F12AF
mov     edi, [edx+1Ch]
cmp     edi, 8000h
jz      short loc_4F1299
cmp     edi, 0FF000000h
jnz     short loc_4F12A0

loc_4F1299:
mov     eax, 3
jmp     short loc_4F12B4

loc_4F12A0:
cmp     edi, 0F000h
jnz     short loc_4F12B4
mov     eax, 2
jmp     short loc_4F12B4

loc_4F12AF:
mov     eax, 1

loc_4F12B4:
call    sub_4F13D0

loc_4F12B9:
mov     eax, 1
pop     edi
pop     esi
retn    8
sub_4F11EA endp




sub_4F12C3 proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push    ebx
mov     ecx, [esp+4+arg_0]
mov     eax, [esp+4+arg_4]
test    ecx, ecx
jz      short loc_4F12D4
test    eax, eax
jnz     short loc_4F12DA

loc_4F12D4:
xor     eax, eax
pop     ebx
retn    8

loc_4F12DA:
cmp     dword ptr [ecx+4], 400h
jnz     short loc_4F12F5
mov     ebx, 20h ; ' '
mov     edx, ecx
call    memcpy_
cmp     dword ptr [ecx+0Ch], 10h
jz      short loc_4F12D4

loc_4F12F5:
mov     eax, 1
pop     ebx
retn    8
sub_4F12C3 endp




sub_4F12FE proc near
push    ebx
push    ecx
mov     ecx, edx
mov     ebx, 1
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
mov     edx, ds:dword_786ED4[eax]
test    edx, edx
jz      short loc_4F1330
push    0               ; pUnkOuter
push    ecx             ; lplpDD
push    0               ; lpGUID
call    DirectDrawCreate
test    eax, eax
jz      short loc_4F1346
jmp     short loc_4F1344

loc_4F1330:             ; pUnkOuter
push    edx
push    ecx             ; lplpDD
add     eax, offset dword_786ED4
add     eax, 8
push    eax             ; lpGUID
call    DirectDrawCreate
test    eax, eax
jz      short loc_4F1346

loc_4F1344:
xor     ebx, ebx

loc_4F1346:
mov     eax, ebx
pop     ecx
pop     ebx
retn
sub_4F12FE endp




sub_4F134B proc near

var_84= byte ptr -84h
var_80= dword ptr -80h
var_7C= dword ptr -7Ch
var_78= dword ptr -78h
var_3C= byte ptr -3Ch
var_1C= dword ptr -1Ch

push    ecx
push    edi
sub     esp, 7Ch
mov     ecx, eax
mov     eax, esp
call    sub_4F188E
mov     [esp+84h+var_80], 1007h
mov     [esp+84h+var_1C], 24000h
mov     [esp+84h+var_78], ecx
mov     [esp+84h+var_7C], edx
mov     eax, ds:dword_551D0C
mov     ecx, [eax]
lea     edx, [esp+84h+var_3C]
push    edx
push    offset sub_4F12C3
push    offset word_4F0D1E
push    eax
call    dword ptr [ecx+28h]
mov     eax, ds:dword_551CF0
mov     ecx, [eax]
push    0
push    offset dword_551CFC
lea     edx, [esp+8Ch+var_84]
push    edx
push    eax
call    dword ptr [ecx+18h]
test    eax, eax
jz      short loc_4F13AA

loc_4F13A6:
xor     eax, eax
jmp     short loc_4F13CA

loc_4F13AA:
mov     eax, ds:dword_551CF8
mov     ecx, [eax]
mov     edi, ds:dword_551CFC
push    edi
push    eax
call    dword ptr [ecx+0Ch]
test    eax, eax
jnz     short loc_4F13A6
mov     ds:dword_887774, eax
mov     eax, 1

loc_4F13CA:
add     esp, 7Ch
pop     edi
pop     ecx
retn
sub_4F134B endp




sub_4F13D0 proc near
push    ebx
push    ecx
mov     ecx, edx
xor     edx, edx
mov     dl, ds:byte_782BF4
cmp     eax, edx
jle     loc_4F1496
mov     ds:byte_782BF4, al
mov     al, [ecx+0Ch]
mov     ds:byte_782BF6, al
cmp     al, 10h
jnz     short loc_4F13FE
mov     ds:byte_782BF7, 2
jmp     short loc_4F1405

loc_4F13FE:
mov     ds:byte_782BF7, 4

loc_4F1405:
xor     edx, edx
mov     eax, [ecx+10h]
mov     ds:dword_782C04, eax

loc_4F140F:
test    eax, offset unk_800000
jnz     short loc_4F141B
add     eax, eax
inc     edx
jmp     short loc_4F140F

loc_4F141B:
mov     ds:dword_782BF8, edx
xor     edx, edx
mov     eax, [ecx+14h]
mov     ds:dword_782C08, eax

loc_4F142B:
test    eax, offset unk_800000
jnz     short loc_4F1437
add     eax, eax
inc     edx
jmp     short loc_4F142B

loc_4F1437:
mov     ds:dword_782BFC, edx
xor     edx, edx
mov     eax, [ecx+18h]
mov     ds:dword_782C0C, eax

loc_4F1447:
test    eax, offset unk_800000
jnz     short loc_4F1453
add     eax, eax
inc     edx
jmp     short loc_4F1447

loc_4F1453:
mov     ds:dword_782C00, edx
mov     eax, [ecx+1Ch]
mov     ds:dword_782C10, eax
mov     edx, ds:dword_782C04
cmp     edx, 1Fh
jz      short loc_4F1474
cmp     edx, 0FFh
jnz     short loc_4F147D

loc_4F1474:
mov     ds:byte_782BF5, 1
jmp     short loc_4F1485

loc_4F147D:
xor     bl, bl
mov     ds:byte_782BF5, bl

loc_4F1485:
mov     ebx, 20h ; ' '
mov     edx, ecx
mov     eax, offset unk_782C14
call    memcpy_

loc_4F1496:
pop     ecx
pop     ebx
retn
sub_4F13D0 endp




sub_4F1499 proc near

var_98= byte ptr -98h
var_74= dword ptr -74h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    edi
push    ebp
sub     esp, 84h
mov     [esp+98h+var_18], 3F800000h
mov     [esp+98h+var_1C], 40A00000h
test    ds:byte_8877EE, 10h
jz      loc_4F16B3
test    ds:byte_8877ED, 1
jz      loc_4F16B3
xor     ebp, ebp
mov     ds:flt_8876C4, ebp
mov     ds:flt_8876C8, ebp
mov     edx, 3F333333h
mov     ds:dword_8876CC, edx
mov     ecx, 3E124925h
mov     ds:flt_8876D0, ecx
mov     ebx, 0FFFFFFFFh
mov     ds:dword_8876D4, ebx
mov     ds:dword_8876D8, ebp
mov     edi, 41800000h
mov     ds:flt_8876E4, edi
mov     ds:flt_8876E8, ebp
mov     eax, edx
mov     ds:dword_8876EC, edx
mov     edx, ecx
mov     ds:flt_8876F0, ecx
mov     ecx, ebx
mov     ds:dword_8876F4, ebx
mov     ds:dword_8876F8, ebp
mov     ds:flt_887704, ebp
mov     ds:flt_887708, edi
mov     ebp, eax
mov     ds:dword_88770C, ebp
mov     eax, edx
mov     ds:flt_887710, eax
mov     edx, ebx
mov     ds:dword_887714, ebx
xor     ecx, ebx
mov     ds:dword_887718, ecx
mov     ds:flt_887724, edi
mov     ds:flt_887728, edi
mov     ds:dword_88772C, ebp
mov     ds:flt_887730, eax
mov     ds:dword_887734, ebx
xor     edx, ebx
mov     ds:dword_887738, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    eax
call    dword ptr [edx+24h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    0
push    eax
call    dword ptr [edx+98h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Ch
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    22h ; '"'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    3
push    23h ; '#'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ecx, [esp+98h+var_18]
push    ecx
push    24h ; '$'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ebx, [esp+98h+var_1C]
push    ebx
push    25h ; '%'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    8
push    17h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    4
push    offset flt_8876C4
push    1C4h
push    5
push    eax
call    dword ptr [edx+70h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Ch
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
push    eax
call    dword ptr [edx+28h]
mov     eax, esp
call    sub_4F188E
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+0A0h+var_98]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
test    eax, eax
jnz     loc_4F16E7
mov     edx, ds:dword_782C10
not     edx
mov     eax, [esp+98h+var_74]
test    [eax], edx
jnz     short loc_4F1697
xor     ebp, ebp
mov     ds:dword_551D3C, ebp
jmp     short loc_4F16A1

loc_4F1697:
mov     ds:dword_551D3C, 1

loc_4F16A1:
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]
jmp     short loc_4F16E7

loc_4F16B3:
test    ds:byte_8877ED, 1
jz      short loc_4F16C8
mov     ds:dword_551D3C, 1
jmp     short loc_4F16E7

loc_4F16C8:
test    ds:byte_8877EC, 80h
jz      short loc_4F16DD
mov     ds:dword_551D3C, 2
jmp     short loc_4F16E7

loc_4F16DD:
mov     ds:dword_551D3C, 3

loc_4F16E7:
add     esp, 84h
pop     ebp
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F1499 endp




sub_4F16F3 proc near

var_1C= qword ptr -1Ch
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 0Ch
test    eax, eax
jnz     loc_4F17C2
cmp     ds:dword_551D38, 0
jz      loc_4F17C2
cmp     ds:dword_551D40, 0
jnz     short loc_4F1731
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Ch
push    eax
call    dword ptr [edx+58h]
mov     ds:dword_551D40, 1

loc_4F1731:
cmp     ds:dword_551D3C, 2
jnz     loc_4F3BD5
xor     edx, edx
jmp     short loc_4F1780

loc_4F1742:
fld     [esp+1Ch+var_14]
fcomp   ds:flt_50A870
fnstsw  ax
sahf
jbe     short loc_4F1759
mov     [esp+1Ch+var_14], 437F0000h

loc_4F1759:
fld     [esp+1Ch+var_14]
call    __CHP
fistp   [esp+1Ch+var_1C]
mov     ecx, dword ptr [esp+1Ch+var_1C]
mov     eax, edx
shl     eax, 5
shl     ecx, 18h
or      ds:dword_8876D8[eax], ecx
inc     edx
cmp     edx, 4
jge     loc_4F3BD5

loc_4F1780:
mov     eax, edx
shl     eax, 5
fld     ds:dword_8876CC[eax]
fmul    ds:flt_50A86C
fsubr   ds:flt_551D48
fld     ds:flt_551D48
fsub    ds:flt_551D44
fdivp   st(1), st
fmul    ds:flt_50A870
fstp    [esp+1Ch+var_14]
fldz
fcomp   [esp+1Ch+var_14]
fnstsw  ax
sahf
jbe     short loc_4F1742
xor     ebx, ebx
mov     [esp+1Ch+var_14], ebx
jmp     short loc_4F1759

loc_4F17C2:
test    eax, eax
jnz     short loc_4F17D3
cmp     ds:dword_551D38, 0
jnz     loc_4F3BD5

loc_4F17D3:
cmp     ds:dword_551D40, 1
jnz     loc_4F3BD5
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Ch
push    eax
call    dword ptr [edx+58h]
xor     esi, esi
mov     ds:dword_551D40, esi
jmp     loc_4F3BD5
sub_4F16F3 endp




sub_4F17FC proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     ecx, edx
and     eax, 3Fh
shl     eax, 4
mov     edx, esi
sar     edx, 6
and     edx, 1FFh
mov     edi, ecx
and     edi, 0Fh
shl     edi, 7
mov     esi, ebx
and     esi, 0FFh
sar     esi, 1
add     edi, esi
and     ecx, 10h
shl     ecx, 4
mov     esi, ebx
sar     esi, 8
add     esi, ecx
and     ebx, 1
xor     bl, 1
mov     ecx, ebx
shl     ecx, 2
mov     ebx, esi
shl     ebx, 0Bh
mov     bl, ds:byte_7876C4[edi+ebx]
and     ebx, 0FFh
sar     ebx, cl
mov     ecx, ebx
and     ecx, 0Fh
cmp     ds:byte_782BF7, 2
jnz     short loc_4F187B
call    sub_4F1D5C
mov     eax, ds:dword_782C38[eax*8]
mov     ax, [eax+ecx*2]
and     eax, 0FFFFh
pop     edi
pop     esi
pop     ecx
retn

loc_4F187B:
call    sub_4F1D5C
mov     eax, ds:dword_782C38[eax*8]
mov     eax, [eax+ecx*4]
pop     edi
pop     esi
pop     ecx
retn
sub_4F17FC endp




sub_4F188E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, 7Ch ; '|'
xor     edx, edx
call    memset_
mov     dword ptr [ecx], 7Ch ; '|'
mov     dword ptr [ecx+48h], 20h ; ' '
pop     edx
pop     ecx
pop     ebx
retn
sub_4F188E endp




sub_4F18B0 proc near
cmp     eax, 8
jb      short loc_4F18CE
jbe     short loc_4F18F4
cmp     eax, 18h
jb      short loc_4F18C6
jbe     short loc_4F1900
cmp     eax, 20h ; ' '
jz      short loc_4F1906
xor     eax, eax
retn

loc_4F18C6:
cmp     eax, 10h
jz      short loc_4F18FA
xor     eax, eax
retn

loc_4F18CE:
cmp     eax, 2
jb      short loc_4F18DD
jbe     short loc_4F18E8
cmp     eax, 4
jz      short loc_4F18EE
xor     eax, eax
retn

loc_4F18DD:
cmp     eax, 1
jnz     short loc_4F190C
mov     eax, 4000h
retn

loc_4F18E8:
mov     eax, 2000h
retn

loc_4F18EE:
mov     eax, 1000h
retn

loc_4F18F4:
mov     eax, 800h
retn

loc_4F18FA:
mov     eax, 400h
retn

loc_4F1900:
mov     eax, 200h
retn

loc_4F1906:
mov     eax, 100h
retn

loc_4F190C:
xor     eax, eax
retn
sub_4F18B0 endp




sub_4F190F proc near

var_70= dword ptr -70h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
sub     esp, 64h
mov     ecx, eax
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, esp
call    memset_
mov     [esp+70h+var_70], 64h ; 'd'
xor     ebx, ebx
mov     [esp+70h+var_20], ebx
mov     eax, [ecx]
mov     edx, esp
push    edx
push    1000400h
push    ebx
push    ebx
push    ebx
push    ecx
call    dword ptr [eax+14h]
add     esp, 64h
pop     edx
pop     ecx
pop     ebx
retn
sub_4F190F endp

jpt_4F19EF dd offset loc_4F19F5 ; jump table for switch statement
dd offset loc_4F1A03
dd offset loc_4F1A03
dd offset loc_4F19FC



sub_4F195A proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     edi, edx
mov     edx, ebx
mov     [esp+18h+var_14], ecx
xor     ebx, ebx
xor     ebp, ebp
mov     [esp+18h+var_10], ebx
mov     [esp+18h+var_18], ebx
test    byte ptr [esp+18h+var_14], 4
jz      short loc_4F19D2
lea     ecx, [eax+eax]
mov     eax, edi
add     eax, eax
add     edx, edx
cmp     ecx, 100h
jb      short loc_4F199B
lea     ebp, [ecx-100h]
mov     ecx, 0FFh
mov     ebx, 1

loc_4F199B:
cmp     eax, 100h
jb      short loc_4F19B5
sub     eax, 100h
mov     [esp+18h+var_10], eax
mov     eax, 0FFh
mov     ebx, 1

loc_4F19B5:
cmp     edx, 100h
jb      short loc_4F19D6
sub     edx, 100h
mov     [esp+18h+var_18], edx
mov     edx, 0FFh
mov     ebx, 1
jmp     short loc_4F19D6

loc_4F19D2:
mov     ecx, eax
mov     eax, edi

loc_4F19D6:
test    byte ptr [esp+18h+var_14], 2
jz      short loc_4F1A03 ; jumptable 004F19EF cases 1,2
mov     edi, [esp+18h+arg_0]
shr     edi, 5
and     edi, 3
cmp     edi, 3          ; switch 4 cases
ja      short def_4F19EF ; jumptable 004F19EF default case
shl     edi, 2
jmp     jpt_4F19EF[edi] ; switch jump

loc_4F19F5:             ; jumptable 004F19EF case 0
mov     esi, 80h
jmp     short def_4F19EF ; jumptable 004F19EF default case

loc_4F19FC:             ; jumptable 004F19EF case 3
mov     esi, 40h ; '@'
jmp     short def_4F19EF ; jumptable 004F19EF default case

loc_4F1A03:             ; jumptable 004F19EF cases 1,2
mov     esi, 0FFh

def_4F19EF:             ; jumptable 004F19EF default case
shl     esi, 18h
shl     ecx, 10h
or      ecx, esi
shl     eax, 8
or      ecx, eax
or      ecx, edx
mov     eax, [esp+18h+arg_4]
mov     [eax], ecx
test    ebx, ebx
jz      short loc_4F1A3A
shl     ebp, 10h
mov     eax, [esp+18h+var_10]
shl     eax, 8
or      eax, ebp
mov     edx, [esp+18h+var_18]
or      edx, eax
mov     eax, [esp+18h+arg_8]
mov     [eax], edx
jmp     short loc_4F1A40

loc_4F1A3A:
mov     eax, [esp+18h+arg_8]
mov     [eax], ebx

loc_4F1A40:
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
retn    0Ch
sub_4F195A endp

align 2
jpt_4F1A74 dd offset loc_4F1A7B ; jump table for switch statement
dd offset loc_4F1AA4
dd offset loc_4F1AD3
dd offset loc_4F1AFC



sub_4F1A5A proc near
push    ecx
test    al, 2
jz      loc_4F1B16
mov     eax, edx
shr     eax, 5
and     eax, 3
cmp     eax, 3          ; switch 4 cases
ja      def_4F1A74      ; jumptable 004F1A74 default case
jmp     jpt_4F1A74[eax*4] ; switch jump

loc_4F1A7B:             ; jumptable 004F1A74 case 0
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    5
push    13h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    6
jmp     short loc_4F1ACB

loc_4F1AA4:             ; jumptable 004F1A74 case 1
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2

loc_4F1ABC:
push    13h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2

loc_4F1ACB:
push    14h
push    eax
call    dword ptr [edx+58h]
pop     ecx
retn

loc_4F1AD3:             ; jumptable 004F1A74 case 2
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    13h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    4
jmp     short loc_4F1ACB

loc_4F1AFC:             ; jumptable 004F1A74 case 3
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    5
jmp     short loc_4F1ABC

loc_4F1B16:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    5
push    13h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    6
push    14h
push    eax
call    dword ptr [edx+58h]

def_4F1A74:             ; jumptable 004F1A74 default case
pop     ecx
retn
sub_4F1A5A endp




sub_4F1B45 proc near

var_75= byte ptr -75h
var_74= byte ptr -74h
var_70= dword ptr -70h
var_6C= dword ptr -6Ch
var_68= dword ptr -68h
var_64= dword ptr -64h
var_60= dword ptr -60h
var_38= dword ptr -38h
var_18= dword ptr -18h

; FUNCTION CHUNK AT 004F3509 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 64h
xor     ebx, ebx
cmp     ds:byte_782BF4, 0
jz      short loc_4F1B76
mov     ebx, 40h ; '@'
mov     edx, offset byte_782BF4
mov     eax, esp
call    memcpy_
xor     dl, dl
mov     ds:byte_782BF4, dl
mov     ebx, 1

loc_4F1B76:
test    byte ptr ds:dword_88787C, 1
jz      short loc_4F1BAC
mov     [esp+78h+var_38], 20h ; ' '
mov     eax, ds:dword_551CF4
mov     edx, [eax]
lea     ecx, [esp+78h+var_38]
push    ecx
push    eax
call    dword ptr [edx+54h]
lea     edx, [esp+78h+var_38]
mov     eax, 1
call    sub_4F13D0
call    sub_4FBC14
jmp     short loc_4F1BCE

loc_4F1BAC:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    offset sub_4F11EA
push    eax
call    dword ptr [edx+20h]
cmp     ds:byte_782BF4, 0
jnz     short loc_4F1BCE
xor     eax, eax
jmp     loc_4F1D54

loc_4F1BCE:
test    ebx, ebx
jz      loc_4F1D4F
xor     ecx, ecx
mov     [esp+78h+var_18], ecx
jmp     loc_4F1CAE

loc_4F1BE1:
lea     eax, [edi+ebx]
mov     eax, [eax]
jmp     short loc_4F1C07

loc_4F1BE8:
cmp     [esp+78h+var_75], 2
jnz     short loc_4F1BFE
mov     eax, ds:dword_782C38[eax]
mov     ax, [ecx+eax]
jmp     loc_4F1D45

loc_4F1BFE:
mov     eax, ds:dword_782C38[eax]
mov     eax, [ebx+eax]

loc_4F1C07:
mov     ebx, [esp+78h+var_68]
and     ebx, eax
mov     cl, [esp+78h+var_74]
shl     ebx, cl
mov     esi, [esp+78h+var_64]
and     esi, eax
mov     cl, byte ptr [esp+78h+var_70]
shl     esi, cl
and     eax, [esp+78h+var_60]
mov     cl, byte ptr [esp+78h+var_6C]
shl     eax, cl
mov     cl, byte ptr ds:dword_782BF8
shr     ebx, cl
and     ebx, ds:dword_782C04
mov     cl, byte ptr ds:dword_782BFC
shr     esi, cl
and     esi, ds:dword_782C08
mov     cl, byte ptr ds:dword_782C00
shr     eax, cl
and     eax, ds:dword_782C0C
or      ebx, esi
or      eax, ebx
jz      short loc_4F1C5F
or      eax, ds:dword_782C10

loc_4F1C5F:
mov     ecx, [esp+78h+var_18]
shl     ecx, 3
cmp     ds:byte_782BF7, 2
jnz     short loc_4F1C7D
mov     ebx, edx
mov     ecx, ds:dword_782C38[ecx]
mov     [ecx+ebx*2], ax
jmp     short loc_4F1C88

loc_4F1C7D:
mov     ebx, edx
mov     ecx, ds:dword_782C38[ecx]
mov     [ecx+ebx*4], eax

loc_4F1C88:
inc     edx
jmp     loc_4F1D0C

loc_4F1C8E:
test    edi, edi
jz      short loc_4F1C99
mov     eax, edi
call    _nfree_

loc_4F1C99:
mov     esi, [esp+78h+var_18]
inc     esi
mov     [esp+78h+var_18], esi
cmp     esi, 254h
jge     loc_4F1D4F

loc_4F1CAE:
mov     edx, [esp+78h+var_18]
shl     edx, 3
cmp     ds:byte_782C34[edx], 0
jz      short loc_4F1C99
xor     edi, edi
xor     eax, eax
mov     ax, ds:word_782C36[edx]
xor     ecx, ecx
mov     cl, ds:byte_782C35[edx]
imul    ecx, eax
xor     ebx, ebx
mov     bl, ds:byte_782BF7
imul    eax, ebx
cmp     ecx, eax
jz      short loc_4F1D0A
mov     edi, ds:dword_782C38[edx]
mov     ds:byte_782C35[edx], bl
xor     ecx, ecx
mov     cx, ds:word_782C36[edx]
xor     eax, eax
mov     al, bl
imul    eax, ecx
call    _nmalloc_
mov     ds:dword_782C38[edx], eax

loc_4F1D0A:
xor     edx, edx

loc_4F1D0C:
mov     eax, [esp+78h+var_18]
shl     eax, 3
xor     ecx, ecx
mov     cx, ds:word_782C36[eax]
cmp     edx, ecx
jge     loc_4F1C8E
lea     ecx, [edx+edx]
mov     ebx, edx
shl     ebx, 2
test    edi, edi
jz      loc_4F1BE8
cmp     [esp+78h+var_75], 2
jnz     loc_4F1BE1
lea     eax, [edi+ecx]
mov     ax, [eax]

loc_4F1D45:
and     eax, 0FFFFh
jmp     loc_4F1C07

loc_4F1D4F:
mov     eax, 1

loc_4F1D54:
add     esp, 64h
jmp     loc_4F3509
sub_4F1B45 endp




sub_4F1D5C proc near
push    ecx
xor     ecx, ecx
test    eax, eax
jl      short loc_4F1DA5
cmp     eax, 100h
jge     short loc_4F1DA5
cmp     edx, 0F0h
jl      short loc_4F1D8D
cmp     edx, 100h
jge     short loc_4F1D8D
shl     edx, 4
sar     eax, 4
sub     edx, 0F00h
lea     ecx, [edx+eax]
mov     eax, ecx
pop     ecx
retn

loc_4F1D8D:
shl     edx, 4
sar     eax, 4
sub     edx, 1F00h
add     eax, edx
lea     ecx, [eax+100h]
mov     eax, ecx
pop     ecx
retn

loc_4F1DA5:
cmp     eax, 100h
jl      short loc_4F1DE0
cmp     eax, 140h
jge     short loc_4F1DE0
cmp     edx, 0F0h
jl      short loc_4F1DE0
cmp     edx, 0F4h
jge     short loc_4F1DE0
shl     edx, 2
sub     eax, 100h
sar     eax, 4
sub     edx, 3C0h
add     eax, edx
lea     ecx, [eax+200h]
mov     eax, ecx
pop     ecx
retn

loc_4F1DE0:
cmp     eax, 140h
jl      short loc_4F1E1C
cmp     eax, 170h
jg      short loc_4F1E1C
cmp     edx, 1F8h
jl      short loc_4F1E1C
cmp     edx, 200h
jge     short loc_4F1E1C
shl     edx, 2
lea     ecx, [eax-140h]
sar     ecx, 4
lea     eax, [edx-7E0h]
add     eax, ecx
lea     ecx, [eax+210h]
mov     eax, ecx
pop     ecx
retn

loc_4F1E1C:
cmp     eax, 340h
jl      short loc_4F1E57
cmp     eax, 380h
jge     short loc_4F1E57
cmp     edx, 0F8h
jl      short loc_4F1E57
cmp     edx, 0FCh
jge     short loc_4F1E57
shl     edx, 2
sub     eax, 340h
sar     eax, 4
sub     edx, 3E0h
add     eax, edx
lea     ecx, [eax+230h]
mov     eax, ecx
pop     ecx
retn

loc_4F1E57:
cmp     eax, 340h
jnz     short loc_4F1E78
cmp     edx, 0FCh
jl      short loc_4F1E78
cmp     edx, 100h
jge     short loc_4F1E78
lea     ecx, [edx+144h]
mov     eax, ecx
pop     ecx
retn

loc_4F1E78:
cmp     eax, 3C0h
jl      short loc_4F1E98
shl     edx, 2
sub     eax, 3C0h
sar     eax, 4
sub     edx, 7F0h
add     eax, edx
lea     ecx, [eax+244h]

loc_4F1E98:
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

