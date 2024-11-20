xor     ebx, ebx
mov     bl, ds:byte_53868C[edx*2]
movzx   edi, ds:byte_53868D[edx*2]
call    sub_4EE133
mov     dword ptr [eax+4], 2E808080h
mov     ecx, edx
shl     ecx, 3
add     ecx, [esp+18h+var_18]
mov     esi, [ecx+0E4h]
mov     [eax+8], esi
mov     ecx, [ecx+0E8h]
mov     [eax+10h], ecx
mov     ecx, edi
shl     ecx, 8
mov     esi, ecx
or      esi, 3D480000h
or      esi, ebx
mov     [eax+0Ch], esi
mov     edi, ecx
or      edi, 2E0000h
lea     esi, [ebx+1Fh]
or      edi, esi
mov     [eax+14h], edi
add     ecx, 1F00h
mov     edi, ecx
or      edi, ebx
mov     [eax+1Ch], edi
or      ecx, esi
mov     [eax+24h], ecx
mov     dword ptr [eax+18h], 14h
inc     edx
cmp     edx, 4
jl      short loc_4CA0B2
add     esp, 4
jmp     loc_4C9C7D
sub_4CA0AA endp




sub_4CA132 proc near
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
call    ds:funcs_4CA154[edx*4]
pop     edi
pop     esi
pop     edx
retn
sub_4CA132 endp




sub_4CA15F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ah, [eax]
or      ah, 22h
mov     [esi], ah
mov     word ptr [esi+9Ah], 0
mov     dl, [esi+0Fh]
test    dl, 1
jnz     short loc_4CA1B3
mov     byte ptr [esi+96h], 40h ; '@'
mov     byte ptr [esi+97h], 80h
test    byte ptr [esi+0Fh], 10h
jnz     short loc_4CA19D
mov     dword ptr [esi+8Ch], 2C808080h
jmp     short loc_4CA1A7

loc_4CA19D:
mov     dword ptr [esi+8Ch], 2C6060C0h

loc_4CA1A7:
mov     dword ptr [esi+88h], 3D08000Eh
jmp     short loc_4CA1F4

loc_4CA1B3:
test    dl, 8
jnz     short loc_4CA1CA
mov     al, ds:byte_5386A0
mov     [esi+96h], al
mov     al, ds:byte_5386A1
jmp     short loc_4CA1DA

loc_4CA1CA:
mov     al, ds:byte_5386AC
mov     [esi+96h], al
mov     al, ds:byte_5386AD

loc_4CA1DA:
mov     [esi+97h], al
mov     dword ptr [esi+8Ch], 2C808080h
mov     dword ptr [esi+88h], 3D48000Eh

loc_4CA1F4:
mov     ax, [esi+14h]
mov     [esi+90h], ax
mov     ax, [esi+16h]
mov     [esi+92h], ax
mov     ax, [esi+18h]
mov     [esi+94h], ax
test    byte ptr [esi+0Fh], 2
jnz     short loc_4CA236
mov     word ptr [esi+98h], 20h ; ' '
test    byte ptr [esi+0Fh], 10h
jnz     short loc_4CA230
mov     byte ptr [esi+0Eh], 4
jmp     short loc_4CA243

loc_4CA230:
mov     byte ptr [esi+0Eh], 20h ; ' '
jmp     short loc_4CA243

loc_4CA236:
mov     word ptr [esi+98h], 10h
mov     byte ptr [esi+0Eh], 8

loc_4CA243:
test    byte ptr [esi+0Fh], 20h
jz      short loc_4CA24F
mov     byte ptr [esi+0Bh], 4Bh ; 'K'
jmp     short loc_4CA253

loc_4CA24F:
mov     byte ptr [esi+0Bh], 0F0h

loc_4CA253:
mov     dword ptr [esi+10h], 0
mov     dword ptr [esi+78h], 0
mov     dword ptr [esi+0CCh], 0
push    80h
push    0
mov     eax, [esi+0Bh]
sar     eax, 18h
or      eax, 8000000h
push    eax
lea     eax, [esi+0CCh]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
xor     edx, edx
mov     dx, [esi+98h]
lea     eax, [esi+14h]
mov     ecx, 0A000h
xor     ebx, ebx
call    sub_4E01FC
mov     eax, esi
call    sub_42CE47
test    eax, eax
jz      short loc_4CA2B7
mov     byte ptr [esi+8], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4CA2B7:
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CA15F endp




sub_4CA2BF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ah, [eax+0Bh]
dec     ah
mov     [esi+0Bh], ah
test    byte ptr [esi+0Fh], 1
jnz     short loc_4CA2F4
mov     dx, [esi+9Ah]
add     edx, 8
mov     [esi+9Ah], dx
mov     ebx, edx
xor     bh, dh
and     bl, 3Fh
mov     [esi+9Ah], bx
jmp     short loc_4CA35E

loc_4CA2F4:
xor     edx, edx
mov     dl, ah
mov     eax, 0F0h
sub     eax, edx
mov     edx, eax
mov     ecx, 6
sar     edx, 1Fh
idiv    ecx
lea     eax, [edx+edx]
test    byte ptr [esi+0Fh], 8
jnz     short loc_4CA328
mov     dl, ds:byte_5386A0[eax]
mov     [esi+96h], dl
mov     al, ds:byte_5386A1[eax]
jmp     short loc_4CA33A

loc_4CA328:
mov     dl, ds:byte_5386AC[eax]
mov     [esi+96h], dl
mov     al, ds:byte_5386AD[eax]

loc_4CA33A:
mov     [esi+97h], al
mov     dword ptr [esi+8Ch], 2C808080h
lea     eax, [esi+14h]
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
call    sub_4ED95E

loc_4CA35E:
cmp     byte ptr [esi+0Bh], 0
jz      short loc_4CA3D5
cmp     word ptr [esi+16h], 0
jge     short loc_4CA3D5
mov     ax, [esi+4Ch]
add     [esi+44h], ax
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     ax, [esi+50h]
add     [esi+48h], ax
mov     eax, [esi+42h]
sar     eax, 10h
shl     eax, 8
add     [esi+1Ch], eax
mov     eax, [esi+44h]
sar     eax, 10h
shl     eax, 8
add     [esi+20h], eax
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 8
add     [esi+24h], eax
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     ax, [esi+14h]
mov     [esi+90h], ax
mov     ax, [esi+16h]
mov     [esi+92h], ax
mov     ax, [esi+18h]
mov     [esi+94h], ax
jmp     short loc_4CA3DF

loc_4CA3D5:
mov     byte ptr [esi], 0
mov     eax, esi
call    sub_4DE371

loc_4CA3DF:
test    byte ptr [esi+0CFh], 2
jz      short loc_4CA3FA
mov     dword ptr [esi+0CCh], 0
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4CA3FA:
push    80h
push    0
mov     eax, [esi+0Bh]
sar     eax, 18h
or      eax, 8000000h
push    eax
lea     eax, [esi+0CCh]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
xor     edx, edx
mov     dx, [esi+98h]
lea     eax, [esi+14h]
mov     ecx, 0A000h
xor     ebx, ebx
call    sub_4E01FC
mov     dword ptr [esi+0CCh], 0
mov     eax, esi
call    sub_42CE47
test    eax, eax
jz      short loc_4CA44A
inc     byte ptr [esi+8]

loc_4CA44A:
test    byte ptr [esi+0Fh], 4
jnz     short loc_4CA45A
mov     edx, 28h ; '('
call    sub_4EE6C2

loc_4CA45A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CA2BF endp




sub_4CA45F proc near
push    ecx
push    edx
mov     ecx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4CA486
test    byte ptr [ecx+0Fh], 1
jz      short loc_4CA47D
mov     edx, eax
mov     eax, ecx
call    sub_4CA493
jmp     short loc_4CA486

loc_4CA47D:
mov     edx, eax
mov     eax, ecx
call    sub_4CA4AB

loc_4CA486:
mov     byte ptr [ecx], 0
mov     eax, ecx
call    sub_4DE371
pop     edx
pop     ecx
retn
sub_4CA45F endp




sub_4CA493 proc near
push    esi
push    edi
mov     byte ptr [edx], 7
mov     byte ptr [edx+2], 80h
mov     byte ptr [edx+3], 42h ; 'B'
lea     edi, [edx+48h]
lea     esi, [eax+14h]
movsd
movsd
pop     edi
pop     esi
retn
sub_4CA493 endp




sub_4CA4AB proc near
push    ebx
mov     byte ptr [edx], 3
mov     byte ptr [edx+2], 83h
mov     byte ptr [edx+3], 0
mov     bx, [eax+14h]
mov     [edx+1Ch], bx
mov     word ptr [edx+1Eh], 0FFFFh
mov     ax, [eax+18h]
mov     [edx+20h], ax
pop     ebx
retn
sub_4CA4AB endp




sub_4CA4CF proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4CA4D5[edx*4]
pop     edx
retn
sub_4CA4CF endp




sub_4CA4DE proc near
push    edx
push    esi
push    edi
or      byte ptr [eax], 2
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 18h
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     dword ptr [eax+0DCh], 0
mov     dword ptr [eax+88h], 3D48002Eh
mov     dword ptr [eax+8Ch], 2E40E040h
mov     byte ptr [eax+96h], 60h ; '`'
mov     byte ptr [eax+97h], 20h ; ' '
mov     word ptr [eax+98h], 8
mov     edx, [eax+1Ch]
sar     edx, 10h
mov     [eax+14h], dx
mov     [eax+90h], dx
mov     edx, [eax+20h]
sar     edx, 10h
mov     [eax+16h], dx
mov     [eax+92h], dx
mov     edx, [eax+24h]
sar     edx, 10h
mov     [eax+18h], dx
mov     [eax+94h], dx
lea     edi, [eax+34h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+2Ch]
lea     esi, [eax+14h]
movsd
movsd
mov     dword ptr [eax+9Ch], 0
lea     edx, [eax+14h]
mov     eax, 0F0h
call    sub_4D8BC3
pop     edi
pop     esi
pop     edx
retn
sub_4CA4DE endp




sub_4CA595 proc near
push    edx
push    esi
push    edi
sub     esp, 8
mov     edx, eax
inc     dword ptr [eax+0DCh]
mov     si, [eax+14h]
mov     [eax+90h], si
mov     si, [eax+16h]
mov     [eax+92h], si
mov     si, [eax+18h]
mov     [eax+94h], si
cmp     byte ptr [eax+0Bh], 0
ja      short loc_4CA5F3
mov     byte ptr [edx+0Ch], 1
inc     byte ptr [edx+8]
mov     eax, edx
mov     esi, esp
call    sub_4CA955
lea     edi, [edx+0A4h]
mov     esi, esp
movsd
movsd
add     edx, 14h
mov     eax, 0F1h
call    sub_4D8BC3
jmp     short loc_4CA5FA

loc_4CA5F3:
mov     eax, edx
call    sub_4CAA65

loc_4CA5FA:
add     esp, 8
pop     edi
pop     esi
pop     edx
retn
sub_4CA595 endp




sub_4CA601 proc near

var_36= dword ptr -36h
var_32= dword ptr -32h
var_2C= byte ptr -2Ch
var_24= byte ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
call    sub_42CE47
mov     edx, ebp
add     edx, 14h
mov     [esp+34h+var_1C], edx
test    eax, eax
jz      short loc_4CA654
mov     edx, [ebp+0Ah]
sar     edx, 18h
mov     edx, ds:dword_5386D0[edx*4]
call    sub_4EE6C2
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+0Bh], 18h
mov     dword ptr [ebp+0DCh], 0
mov     edx, [esp+34h+var_1C]

loc_4CA645:
mov     eax, 0F2h
call    sub_4D8BC3
jmp     loc_4CA8C5

loc_4CA654:
test    byte ptr [ebp+9Fh], 2
jz      short loc_4CA670
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+0Bh], 18h
mov     dword ptr [ebp+0DCh], 0
jmp     short loc_4CA645

loc_4CA670:
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
cmp     byte ptr [ebp+0Ch], 0
jl      loc_4CA735
mov     ax, [ebp+14h]
mov     [ebp+90h], ax
mov     ax, [ebp+16h]
mov     [ebp+92h], ax
mov     ax, [ebp+18h]
mov     [ebp+94h], ax
lea     edi, [ebp+0E4h]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [esp+34h+var_24]
lea     esi, [ebp+0E4h]
movsd
movsd
lea     edi, [ebp+0ECh]
lea     esi, [esp+34h+var_24]
movsd
movsd
lea     edi, [esp+34h+var_24]
lea     esi, [ebp+0ECh]
movsd
movsd
lea     edi, [ebp+0F4h]
lea     esi, [esp+34h+var_24]
movsd
movsd
lea     edi, [esp+34h+var_24]
lea     esi, [ebp+0F4h]
movsd
movsd
lea     edi, [ebp+0FCh]
lea     esi, [esp+34h+var_24]
movsd
movsd
lea     edi, [esp+34h+var_24]
lea     esi, [ebp+0FCh]
movsd
movsd
lea     edi, [ebp+104h]
lea     esi, [esp+34h+var_24]
movsd
movsd
lea     edi, [esp+34h+var_24]
lea     esi, [ebp+104h]
movsd
movsd
lea     edi, [ebp+10Ch]
lea     esi, [esp+34h+var_24]
movsd
movsd
jmp     loc_4CA8C5

loc_4CA735:
mov     dh, [ebp+0Bh]
dec     dh
mov     [ebp+0Bh], dh
jnz     short loc_4CA74B
mov     eax, ebp
call    sub_4DE371
jmp     loc_4CA87A

loc_4CA74B:
mov     eax, ebp
lea     esi, [esp+34h+var_2C]
call    sub_4CA955
lea     edx, [ebp+0A4h]
mov     ecx, 0FFFB10Bh
mov     ebx, 32h ; '2'
lea     eax, [esp+34h+var_2C]
mov     esi, esp
call    sub_4DFFB5
lea     edi, [ebp+0A4h]
mov     esi, esp
movsd
movsd
mov     edx, [esp+34h+var_36]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [ebp+44h], ax
mov     edx, [esp+34h+var_36+2]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [ebp+46h], ax
mov     edx, [esp+34h+var_32]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [ebp+48h], ax
mov     eax, [ebp+42h]
sar     eax, 10h
shl     eax, 8
add     [ebp+1Ch], eax
mov     eax, [ebp+46h]
sar     eax, 10h
shl     eax, 8
add     [ebp+24h], eax
mov     eax, [ebp+44h]
sar     eax, 10h
shl     eax, 8
add     [ebp+20h], eax
lea     eax, [ebp+1Ch]
mov     edx, [esp+34h+var_1C]
call    sub_4DD57B
mov     eax, ebp
call    sub_4CA9F3
lea     edi, [ebp+10Ch]
lea     esi, [ebp+104h]
movsd
movsd
lea     edi, [ebp+104h]
lea     esi, [ebp+0FCh]
movsd
movsd
lea     edi, [ebp+0FCh]
lea     esi, [ebp+0F4h]
movsd
movsd
lea     edi, [ebp+0F4h]
lea     esi, [ebp+0ECh]
movsd
movsd
lea     edi, [ebp+0ECh]
lea     esi, [ebp+0E4h]
movsd
movsd
lea     edi, [ebp+0E4h]
lea     esi, [ebp+14h]
movsd
movsd
mov     ax, [ebp+14h]
mov     [ebp+90h], ax
mov     ax, [ebp+16h]
mov     [ebp+92h], ax
mov     ax, [ebp+18h]
mov     [ebp+94h], ax

loc_4CA87A:
test    byte ptr [ebp+0], 1
jz      short loc_4CA8BB
push    80h
push    0
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     eax, ds:dword_5386C4[eax*4]
or      eax, 49000000h
push    eax
lea     eax, [ebp+9Ch]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [ebp+14h]
mov     ecx, 0A000h
xor     ebx, ebx
mov     edx, 0C0h
call    sub_4E01FC

loc_4CA8BB:
mov     dword ptr [ebp+9Ch], 0

loc_4CA8C5:
add     esp, 1Ch

loc_4CA8C8:
pop     ebp

loc_4CA8C9:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CA601 endp




sub_4CA8CF proc near

var_10= byte ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 4
mov     edx, eax
cmp     dword ptr [eax+0DCh], 4
jnb     short loc_4CA921
mov     al, [eax+0DCh]
shl     al, 4
mov     bl, 40h ; '@'
sub     bl, al
mov     al, [edx+0DCh]
mov     ah, 38h ; '8'
mul     ah
mov     ah, 0E0h
sub     ah, al
mov     [esp+10h+var_10], ah
xor     eax, eax
mov     al, bl
mov     ebx, eax
shl     ebx, 10h
or      ebx, 2E000000h
xor     ecx, ecx
mov     cl, [esp+10h+var_10]
shl     ecx, 8
or      ecx, ebx
or      ecx, eax
mov     [edx+8Ch], ecx
jmp     short loc_4CA932

loc_4CA921:
mov     ah, [eax]
and     ah, 0FDh
mov     [edx], ah
mov     dword ptr [edx+8Ch], 2E000000h

loc_4CA932:
inc     dword ptr [edx+0DCh]
cmp     byte ptr [edx+0Bh], 0
ja      short loc_4CA947
mov     eax, edx
call    sub_4DE371
jmp     short loc_4CA94E

loc_4CA947:
mov     eax, edx
call    sub_4CAC42

loc_4CA94E:
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_4CA8CF endp




sub_4CA955 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= byte ptr -18h

push    ebx
push    ecx
push    edx
push    edi
sub     esp, 18h
mov     ecx, esi
mov     ebx, ds:dword_5F8376
sar     ebx, 10h
mov     edx, [eax+12h]
sar     edx, 10h
sub     ebx, edx
mov     [esp+28h+var_28], ebx
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
mov     ebx, [eax+14h]
sar     ebx, 10h
sub     edx, ebx
mov     [esp+28h+var_24], edx
mov     edx, ds:dword_5F837A
sar     edx, 10h
mov     eax, [eax+16h]
sar     eax, 10h
sub     edx, eax
mov     [esp+28h+var_20], edx
mov     eax, [esp+28h+var_28]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4CA9C8
mov     eax, [esp+28h+var_24]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4CA9C8
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
jbe     short loc_4CA9D6

loc_4CA9C8:
sar     [esp+28h+var_28], 2
sar     [esp+28h+var_24], 2
sar     [esp+28h+var_20], 2

loc_4CA9D6:
lea     edx, [esp+28h+var_18]
mov     eax, esp
call    sub_4EF932
mov     edi, ecx
lea     esi, [esp+28h+var_18]
movsd
movsd
mov     eax, ecx
add     esp, 18h
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CA955 endp




sub_4CA9F3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
xor     bl, bl

loc_4CA9FC:
call    sub_4EE133
mov     dword ptr [eax+4], 2E80C080h
xor     ecx, ecx
mov     cl, bl
mov     edx, ecx
mov     esi, [edi+edx*8+0E4h]
mov     [eax+8], esi
mov     edx, [edi+edx*8+0E8h]
mov     [eax+10h], edx
mov     dword ptr [eax+0Ch], 3D482080h
mov     dword ptr [eax+14h], 2E209Fh
mov     dword ptr [eax+1Ch], 3F80h
mov     dword ptr [eax+24h], 3F9Fh
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 3
mov     ecx, 0C0h
sub     ecx, edx
mov     [eax+18h], ecx
mov     dword ptr [eax+20h], 0
inc     bl
cmp     bl, 6
jb      short loc_4CA9FC
jmp     loc_4CA8C9
sub_4CA9F3 endp




sub_4CAA65 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= word ptr -2Ch
var_2A= dword ptr -2Ah
var_26= dword ptr -26h
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
xor     ah, ah
mov     [esp+38h+var_20], ah
jmp     loc_4CAB6C

loc_4CAA7B:
mov     dl, 60h ; '`'
mov     dh, 0E0h

loc_4CAA7F:
mov     [esp+38h+var_1C], dl
mov     esi, [esp+38h+var_2A]
sar     esi, 10h
mov     eax, esi
call    sub_4EF008
mov     ebp, [esp+38h+var_26]
sar     ebp, 10h
imul    eax, ebp
sar     eax, 0Ch
mov     edi, [ebx+12h]
sar     edi, 10h
add     edi, eax
mov     [esp+38h+var_38], edi
mov     eax, esi
call    sub_4EF003
mov     esi, eax
imul    esi, ebp
sar     esi, 0Ch
mov     eax, [ebx+16h]
sar     eax, 10h
add     eax, esi
mov     di, [ebx+16h]
add     edi, [esp+38h+var_30]
movzx   esi, [esp+38h+var_1C]
shl     esi, 10h
or      esi, 2E000000h
mov     [esp+38h+var_34], esi
movzx   esi, dh
shl     esi, 8
mov     ebp, [esp+38h+var_34]
or      ebp, esi
movzx   esi, dl
mov     edx, ebp
or      edx, esi
mov     [ecx+4], edx
movsx   ebp, di
shl     ebp, 10h
mov     esi, [esp-2]
sar     esi, 10h
add     ebp, esi
mov     [ecx+8], ebp
cwde
mov     [ecx+10h], eax
mov     dword ptr [ecx+0Ch], 3D482040h
mov     dword ptr [ecx+14h], 2E205Fh
mov     dword ptr [ecx+1Ch], 3F40h
mov     dword ptr [ecx+24h], 3F5Fh
mov     dword ptr [ecx+18h], 40h ; '@'
mov     dword ptr [ecx+20h], 0

loc_4CAB30:
xor     eax, eax
mov     al, [esp+38h+var_20]
mov     eax, ds:(off_5386E8+2)[eax*8]
sar     eax, 10h
mov     ecx, [esp+38h+var_30+2]
sar     ecx, 10h
add     eax, 10h
cmp     ecx, eax
jnz     short loc_4CAB59
dec     byte ptr [ebx+0Bh]
add     word ptr [ebx+98h], 8

loc_4CAB59:
mov     dl, [esp+38h+var_20]
inc     dl
mov     [esp+38h+var_20], dl
cmp     dl, 18h
jnb     loc_4CAC3A

loc_4CAB6C:
mov     ax, [ebx+0DCh]
mov     [esp+38h+var_2C], ax
movzx   esi, [esp+38h+var_20]
shl     esi, 3
mov     eax, ds:(off_5386E8+2)[esi]
sar     eax, 10h
mov     ecx, [esp+38h+var_30+2]
sar     ecx, 10h
cmp     eax, ecx
jge     short loc_4CAB30
add     eax, 10h
cmp     ecx, eax
jge     short loc_4CAB30
call    sub_4EE133
mov     ecx, eax
mov     di, [ebx+0DCh]
mov     dx, word ptr ds:dword_5386EC[esi]
sub     edi, edx
mov     [esp+38h+var_2C], di
imul    eax, edi, 18h
add     ax, word ptr ds:dword_5386F0[esi]
and     ah, 0Fh
mov     word ptr [esp+38h+var_2A+2], ax
mov     ebp, ds:dword_5386F0[esi]
sar     ebp, 10h
mov     eax, ebp
mov     edx, ebp
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
movsx   edx, di
mov     [esp+38h+var_38], edx
imul    eax, edx
sub     ebp, eax
mov     eax, ebp
mov     [esp+38h+var_30], eax
mov     esi, ds:dword_5386EC[esi]
sar     esi, 10h
mov     eax, esi
mov     edx, esi
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
imul    eax, [esp+38h+var_38]
sub     esi, eax
mov     word ptr [esp+38h+var_26+2], si
cmp     di, 8
jge     loc_4CAA7B
mov     dh, byte ptr [esp+38h+var_2C]
inc     dh
mov     al, dh
mov     ah, 0Ch
mul     ah
mov     dl, al
mov     al, dh
mov     ah, 1Ch
mul     ah
mov     dh, al
jmp     loc_4CAA7F

loc_4CAC3A:
add     esp, 20h
jmp     loc_4CA8C8
sub_4CAA65 endp




sub_4CAC42 proc near

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
sub     esp, 20h
mov     ecx, eax
xor     ah, ah
mov     [esp+38h+var_28], ah
jmp     loc_4CAE02

loc_4CAC58:
mov     ax, [ecx+0DCh]
mov     word ptr [esp+38h+var_30], ax
mov     ax, word ptr ds:dword_5386EC[ebx]
mov     edx, [esp+38h+var_30]
sub     edx, eax
mov     word ptr [esp+38h+var_30], dx
mov     al, dl
mov     ah, 6
mul     ah
mov     ah, 60h ; '`'
sub     ah, al
mov     [esp+38h+var_24], ah
mov     al, dl
mov     ah, 0Eh
mul     ah
mov     ah, 0E0h
sub     ah, al
mov     [esp+38h+var_20], ah
mov     al, [esp+38h+var_24]
mov     [esp+38h+var_1C], al
mov     ax, word ptr ds:dword_5386F0[ebx]
mov     [esp+38h+var_2C], ax
mov     edi, ds:dword_5386F0[ebx]
sar     edi, 10h
mov     eax, edi
mov     edx, edi
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     ebp, ds:(off_5386E8+2)[ebx]
sar     ebp, 10h
imul    eax, ebp
mov     [esp+38h+var_38], eax
mov     ebx, ds:dword_5386EC[ebx]
sar     ebx, 10h
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
imul    eax, ebp
mov     [esp+38h+var_34], eax
mov     eax, edi
mov     edx, edi
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     ebp, [esp+38h+var_34+2]
sar     ebp, 10h
mov     edx, eax
imul    edx, ebp
mov     eax, [esp-2]
sar     eax, 10h
add     eax, edx
mov     edi, eax
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
imul    ebp, eax
mov     eax, [esp+38h+var_38+2]
sar     eax, 10h
add     eax, ebp

loc_4CAD2D:
mov     ebx, eax
mov     edx, [esp+38h+var_30+2]
sar     edx, 10h
mov     eax, edx
call    sub_4EF008
movsx   ebx, bx
imul    eax, ebx
sar     eax, 0Ch
mov     ebp, [ecx+12h]
sar     ebp, 10h
add     ebp, eax
mov     [esp+38h+var_38], ebp
mov     eax, edx
call    sub_4EF003
mov     edx, eax
imul    edx, ebx
sar     edx, 0Ch
mov     eax, [ecx+16h]
sar     eax, 10h
add     eax, edx
add     di, [ecx+16h]
xor     edx, edx
mov     dl, [esp+38h+var_1C]
shl     edx, 10h
or      edx, 2E000000h
xor     ebx, ebx
mov     bl, [esp+38h+var_20]
shl     ebx, 8
or      ebx, edx
xor     edx, edx
mov     dl, [esp+38h+var_24]
or      ebx, edx
mov     [esi+4], ebx
movsx   ebx, di
shl     ebx, 10h
mov     edx, [esp-2]
sar     edx, 10h
add     ebx, edx
mov     [esi+8], ebx
cwde
mov     [esi+10h], eax
mov     dword ptr [esi+0Ch], 3D482040h
mov     dword ptr [esi+14h], 2E205Fh
mov     dword ptr [esi+1Ch], 3F40h
mov     dword ptr [esi+24h], 3F5Fh
mov     dword ptr [esi+18h], 30h ; '0'
mov     dword ptr [esi+20h], 0

loc_4CADD1:
xor     eax, eax
mov     al, [esp+38h+var_28]
mov     eax, ds:(off_5386E8+2)[eax*8]
sar     eax, 10h
add     eax, 10h
cmp     eax, [ecx+0DCh]
jnz     short loc_4CADEF
dec     byte ptr [ecx+0Bh]

loc_4CADEF:
mov     dl, [esp+38h+var_28]
inc     dl
mov     [esp+38h+var_28], dl
cmp     dl, 18h
jnb     loc_4CAC3A

loc_4CAE02:
xor     ebx, ebx
mov     bl, [esp+38h+var_28]
shl     ebx, 3
mov     eax, ds:(off_5386E8+2)[ebx]
sar     eax, 10h
add     eax, 10h
cmp     eax, [ecx+0DCh]
jbe     short loc_4CADD1
call    sub_4EE133
mov     esi, eax
mov     eax, ds:(off_5386E8+2)[ebx]
sar     eax, 10h
mov     edi, [ecx+0DCh]
cmp     eax, edi
jbe     loc_4CAC58
mov     dl, 60h ; '`'
mov     [esp+38h+var_24], dl
mov     [esp+38h+var_20], 0E0h
mov     [esp+38h+var_1C], dl
mov     ax, word ptr ds:dword_5386F0[ebx]
mov     [esp+38h+var_2C], ax
mov     edx, ds:dword_5386F0[ebx]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     ebp, edi
imul    eax, edi
mov     edi, eax
mov     edx, ds:dword_5386EC[ebx]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
imul    eax, ebp
jmp     loc_4CAD2D
sub_4CAC42 endp




sub_4CAE93 proc near

var_6= word ptr -6

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     esi, eax
cmp     byte ptr [eax+8], 0
jz      short loc_4CAEAA
mov     eax, esi
call    sub_4CB356

loc_4CAEAA:
xor     edx, edx
mov     dl, [esi+8]
mov     eax, esi
call    ds:funcs_4CAEB1[edx*4]
mov     eax, esi
call    sub_4CB3D2
xor     eax, eax
mov     al, [esi+0Ah]
mov     eax, [esi+eax*4+0DCh]
mov     [esi+88h], eax
mov     edi, esp
lea     esi, [esi+14h]
movsd
movsd
add     [esp+8+var_6], 320h
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 20h ; ' '
mov     eax, esp
call    sub_4ED95E
add     esp, 8
jmp     loc_4CB180
sub_4CAE93 endp




sub_4CAEFA proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= byte ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 14h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_5387AC
lea     ebx, [ecx+88h]
xor     dl, dl
mov     [esp+28h+var_18], dl

loc_4CAF32:
mov     al, [esp+28h+var_18]
mov     [ecx+3], al
lea     edx, [esp+28h+var_18]
mov     eax, ecx
call    sub_4DD0F8
xor     edx, edx
mov     dl, [esp+28h+var_18]
mov     eax, [ebx]
mov     [ecx+edx*4+0DCh], eax
mov     dh, [esp+28h+var_18]
inc     dh
mov     [esp+28h+var_18], dh
cmp     dh, 4
jb      short loc_4CAF32
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
mov     word ptr [ecx+1Ah], 0
lea     edi, [ebx+34h]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ebx+3Ch], offset unk_808080
lea     edx, [ebx+4]
lea     eax, [ecx+54h]
call    sub_4EF638
mov     edx, 200h
mov     [esp+28h+var_20], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_28], edx
lea     eax, [ecx+8Ch]
mov     edx, esp
call    sub_4EF689
mov     eax, [ecx+54h]
sar     eax, 10h
call    sub_4EF008
neg     eax
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 0
mov     eax, [ecx+54h]
sar     eax, 10h
call    sub_4EF003
neg     eax
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [ecx+48h], ax
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0FE80h
mov     word ptr [ecx+50h], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Ah], 0
call    rand_
and     al, 7
add     al, 14h
mov     [ecx+0Bh], al
call    rand_
and     al, 1Fh
add     al, 0Ah
mov     [ecx+0Ch], al
mov     word ptr [ecx+7Ch], 0
mov     eax, ecx
call    sub_4CB3D2
lea     edx, [ecx+14h]
mov     eax, 0F9h
call    sub_4D8BC3
add     esp, 14h
jmp     loc_4CB180
sub_4CAEFA endp




sub_4CB058 proc near
push    ecx
push    edx
mov     edx, eax
add     eax, 88h
mov     ecx, [edx+42h]
sar     ecx, 10h
shl     ecx, 8
add     [edx+1Ch], ecx
mov     ecx, [edx+44h]
sar     ecx, 10h
shl     ecx, 8
add     [edx+20h], ecx
mov     ecx, [edx+46h]
sar     ecx, 10h
shl     ecx, 8
add     [edx+24h], ecx
mov     ecx, [edx+1Ch]
sar     ecx, 10h
mov     [edx+14h], cx
mov     [eax+34h], cx
mov     ecx, [edx+20h]
sar     ecx, 10h
mov     [edx+16h], cx
mov     [eax+36h], cx
mov     ecx, [edx+24h]
sar     ecx, 10h
mov     [edx+18h], cx
mov     [eax+38h], cx
mov     ax, [edx+4Ch]
add     [edx+44h], ax
mov     ax, [edx+4Eh]
add     [edx+46h], ax
mov     ax, [edx+50h]
add     [edx+48h], ax
mov     ah, [edx+0Bh]
dec     ah
mov     [edx+0Bh], ah
jnz     short loc_4CB0E0
inc     byte ptr [edx+8]
call    rand_
and     al, 0Fh
add     al, 28h ; '('
mov     [edx+0Bh], al

loc_4CB0E0:
mov     cl, [edx+0Ah]
inc     cl
mov     [edx+0Ah], cl
cmp     cl, 2
jbe     short loc_4CB0F1
mov     byte ptr [edx+0Ah], 0

loc_4CB0F1:
pop     edx
pop     ecx
retn
sub_4CB058 endp




sub_4CB0F4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     ebx, [eax+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     edi, [eax+14h]
mov     ecx, 40h ; '@'
mov     edx, (offset dword_5F880A+2)
mov     eax, edi
call    sub_4DE552
add     [esi+56h], ax
mov     ah, [esi+0Bh]
dec     ah
mov     [esi+0Bh], ah
jnz     short loc_4CB159
inc     byte ptr [esi+8]
call    rand_
and     al, 1Fh
add     al, 64h ; 'd'
mov     [esi+0Bh], al
mov     ebx, [esi+54h]
sar     ebx, 10h
and     ebx, 0FFFh
mov     ecx, 800h
mov     edx, (offset dword_5F880A+2)
mov     eax, edi
call    sub_4DE552
add     [esi+56h], ax

loc_4CB159:
mov     bl, [esi+0Ah]
inc     bl
mov     [esi+0Ah], bl
cmp     bl, 2

loc_4CB164:
jbe     short loc_4CB16A
mov     byte ptr [esi+0Ah], 0

loc_4CB16A:
test    byte ptr ds:word_77EAB6, 2
jz      short loc_4CB180
lea     edx, [esi+14h]
mov     eax, 0FAh
call    sub_4D8BC3

loc_4CB180:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CB0F4 endp




sub_4CB186 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+88h]
mov     ebx, [eax+54h]
sar     ebx, 10h
and     ebx, 0FFFh
add     eax, 14h
mov     ecx, 20h ; ' '
mov     edx, (offset dword_5F880A+2)
call    sub_4DE552
add     [esi+56h], ax
mov     eax, [esi+54h]
sar     eax, 10h
call    sub_4EF008
neg     eax
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [esi+44h], ax
mov     word ptr [esi+46h], 0
mov     eax, [esi+54h]
sar     eax, 10h
call    sub_4EF003
neg     eax
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [esi+48h], ax
mov     eax, [esi+42h]
sar     eax, 10h
shl     eax, 8
add     [esi+1Ch], eax
mov     eax, [esi+44h]
sar     eax, 10h
shl     eax, 8
add     [esi+20h], eax
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 8
add     [esi+24h], eax
mov     eax, [esi+1Ch]
sar     eax, 10h
mov     [esi+14h], ax
mov     [edi+34h], ax
mov     eax, [esi+20h]
sar     eax, 10h
mov     [esi+16h], ax
mov     [edi+36h], ax
mov     eax, [esi+24h]
sar     eax, 10h
mov     [esi+18h], ax
mov     [edi+38h], ax
mov     eax, [esi+9]
sar     eax, 18h
shl     eax, 2
mov     dl, [esi+0Bh]
dec     dl
mov     [esi+0Bh], dl
jz      short loc_4CB263
imul    eax, eax
cmp     eax, [esi+80h]
jbe     short loc_4CB29B

loc_4CB263:
inc     byte ptr [esi+8]
mov     byte ptr [esi+0Bh], 0F0h
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0
mov     word ptr [esi+48h], 0
mov     word ptr [esi+4Ch], 0
mov     word ptr [esi+4Eh], 180h
mov     word ptr [esi+50h], 0
lea     edx, [esi+14h]
mov     eax, 0FBh
call    sub_4D8BC3

loc_4CB29B:
mov     bh, [esi+0Ah]
inc     bh
mov     [esi+0Ah], bh
cmp     bh, 2
jmp     loc_4CB164
sub_4CB186 endp




sub_4CB2AB proc near
push    ecx
push    edx
mov     edx, eax
add     eax, 88h
mov     ecx, [edx+42h]
sar     ecx, 10h
shl     ecx, 8
add     [edx+1Ch], ecx
mov     ecx, [edx+44h]
sar     ecx, 10h
shl     ecx, 8
add     [edx+20h], ecx
mov     ecx, [edx+46h]
sar     ecx, 10h
shl     ecx, 8
add     [edx+24h], ecx
mov     ecx, [edx+1Ch]
sar     ecx, 10h
mov     [edx+14h], cx
mov     [eax+34h], cx
mov     ecx, [edx+20h]
sar     ecx, 10h
mov     [edx+16h], cx
mov     [eax+36h], cx
mov     ecx, [edx+24h]
sar     ecx, 10h
mov     [edx+18h], cx
mov     [eax+38h], cx
mov     ax, [edx+4Ch]
add     [edx+44h], ax
mov     ax, [edx+4Eh]
add     [edx+46h], ax
mov     ax, [edx+50h]
add     [edx+48h], ax
mov     ecx, 3200h
mov     eax, [edx+44h]
sar     eax, 10h
cmp     eax, ecx
jle     short loc_4CB32D
mov     [edx+46h], cx

loc_4CB32D:
mov     ah, [edx+0Bh]
dec     ah
mov     [edx+0Bh], ah
jnz     short loc_4CB348
mov     eax, edx
call    sub_4CB403
mov     eax, edx
call    sub_4DE371
pop     edx
pop     ecx
retn

loc_4CB348:
mov     byte ptr [edx+0Ah], 3
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4CB2AB endp




sub_4CB356 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     edx, [eax+88h]
test    byte ptr [eax+0D7h], 1Ah
jnz     short loc_4CB380
mov     eax, ecx
call    sub_42CE47
test    eax, eax
jnz     short loc_4CB380
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4CB390

loc_4CB380:
mov     eax, ecx
call    sub_4CB403
mov     eax, ecx
call    sub_4DE371
jmp     short loc_4CB3CA

loc_4CB390:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
add     edx, 4
lea     eax, [ecx+54h]
call    sub_4EF638
mov     edx, 200h
mov     [esp+20h+var_18], edx
mov     [esp+20h+var_1C], edx
mov     [esp+20h+var_20], edx
lea     eax, [ecx+8Ch]
mov     edx, esp
call    sub_4EF689

loc_4CB3CA:
add     esp, 10h
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4CB356 endp




sub_4CB3D2 proc near
push    ebx
push    ecx
push    edx
push    0
push    0
push    4000005h
lea     edx, [eax+0D4h]
push    edx
xor     edx, edx
mov     dl, [eax+1]
push    edx
add     eax, 14h
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 20h ; ' '
call    sub_4E01FC
pop     edx
pop     ecx
pop     ebx
retn
sub_4CB3D2 endp




sub_4CB403 proc near
push    esi
push    edi
mov     esi, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4CB423
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
lea     edi, [eax+48h]
lea     esi, [esi+14h]
movsd
movsd

loc_4CB423:
pop     edi
pop     esi
retn
sub_4CB403 endp




sub_4CB426 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4CB42C[edx*4]
pop     edx
retn
sub_4CB426 endp




sub_4CB435 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+0DCh]
mov     eax, [eax+9]
sar     eax, 18h
mov     eax, ds:off_538B84[eax*4]
mov     [ebx], eax
mov     eax, [ecx+9]
sar     eax, 18h
mov     eax, ds:off_538BB0[eax*4]
mov     [ebx+4], eax
mov     eax, [ecx+9]
sar     eax, 18h
mov     eax, ds:off_538BDC[eax*4]
mov     [ebx+8], eax
or      byte ptr [ecx], 2
lea     ebp, [ecx+88h]
mov     esi, [ecx+0Ah]
sar     esi, 18h
shl     esi, 3
mov     eax, [ebx+4]
add     esi, eax
xor     eax, eax
mov     al, [esi]
sub     eax, 40h ; '@'
shl     eax, 9
mov     [ecx+14h], ax
mov     word ptr [ecx+16h], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     eax, [ebx+4]
mov     al, [eax+edx*8+1]
xor     ah, ah
sub     eax, 40h ; '@'
shl     eax, 9
mov     [ecx+18h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
mov     word ptr [ecx+54h], 0
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     edx, [ebx+4]
mov     al, [edx+eax*8+3]
and     al, 30h
xor     ah, ah
shl     eax, 6
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     eax, [ebx+4]
mov     al, [eax+edx*8+3]
and     al, 30h
and     eax, 0FFh
sar     eax, 4
mov     [ebx+0Dh], al
mov     [ebx+0Ch], al
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+4Ch], 0
mov     dword ptr [ecx+50h], 0
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     edx, [ebx+4]
mov     al, [edx+eax*8+2]
xor     ah, ah
shl     eax, 4
mov     [ebx+10h], ax
mov     byte ptr [ebx+0Fh], 0
mov     dword ptr [ecx+78h], 0
lea     eax, [ecx+14h]
call    sub_42C7E7
mov     [ecx+16h], ax
mov     edx, 100h
mov     eax, ecx
call    sub_4CBCA0
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
lea     edi, [ebp+34h]
lea     esi, [ecx+14h]
movsd
movsd
lea     esi, [ebp+4]
lea     eax, [ecx+54h]
mov     edx, esi
call    sub_4EF5F7
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     edx, [ecx+0Ah]
sar     edx, 18h
shl     edx, 3
mov     eax, [ebx+4]
mov     al, [edx+eax+4]
mov     [ecx+3], al
mov     dword ptr [ebp+3Ch], offset unk_808080
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ebx+1Ch], 0
mov     ax, [ebx+1Ch]
mov     [ebx+1Ah], ax
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

loc_4CB600:
add     esp, 10h

loc_4CB603:
pop     ebp

loc_4CB604:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4CB435 endp ; sp-analysis failed

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_104]



sub_4CB60A proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
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
lea     ecx, [eax+88h]
mov     word ptr [eax+58h], 0
mov     ax, [eax+58h]
mov     [ebp+54h], ax
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4CB64A[edx*4]
lea     eax, [ebp+14h]
call    sub_42C7E7
mov     [ebp+16h], ax
mov     edx, 100h
mov     eax, ebp
call    sub_4CBCA0
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
lea     edi, [ecx+34h]
lea     esi, [ebp+14h]
movsd
movsd
add     ecx, 4          ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 200h
mov     [esp+0], edx
mov     [esp+arg_0], edx
mov     [esp+arg_4], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     ecx, 1000008h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
jmp     loc_4CB600
sub_4CB60A endp



; Attributes: thunk

sub_4CB6BE proc near
jmp     sub_4DE371
sub_4CB6BE endp




sub_4CB6C3 proc near
push    edx
mov     edx, eax
call    sub_4CBD74
inc     byte ptr [edx+9]
pop     edx
retn
sub_4CB6C3 endp




sub_4CB6D0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     edx, [eax+0DCh]
call    sub_4CBA83
mov     eax, esi
call    sub_4CB852
test    ax, ax
jnz     short loc_4CB703
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4CB703:
mov     byte ptr [esi+9], 2
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, eax
sar     ecx, 5
mov     eax, [edx+10h]
sar     eax, 10h
add     eax, ecx
mov     [edx+12h], ax
mov     eax, esi
call    sub_4CB9A7
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CB6D0 endp




sub_4CB731 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
lea     ecx, [eax+0DCh]
call    sub_4CBA83
mov     word ptr [ecx+14h], 7FFFh
mov     ebx, [edx+42h]
sar     ebx, 10h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
mov     ebx, eax
sar     ebx, 5
mov     eax, [ecx+10h]
sar     eax, 10h
add     eax, ebx
mov     [ecx+12h], ax
cmp     ax, 400h
jle     loc_4CB846
mov     esi, eax
sub     esi, 400h
mov     [ecx+12h], si
xor     eax, eax
mov     al, [ecx+0Eh]
mov     ebx, [ecx]
test    byte ptr [ebx+eax*8+2], 10h
jz      short loc_4CB799
mov     al, 0FFh
xor     ebx, ebx
mov     bl, [ecx+0Ch]
shl     ebx, 0Ah
add     bh, 0Ch
jmp     short loc_4CB7A6

loc_4CB799:
mov     al, 1
xor     ebx, ebx
mov     bl, [ecx+0Ch]
shl     ebx, 0Ah
add     bh, 4

loc_4CB7A6:
and     bh, 0Fh
mov     [edx+56h], bx
mov     bx, [ecx+16h]
mov     [edx+14h], bx
mov     bx, [ecx+18h]
mov     [edx+18h], bx
mov     ah, [ecx+0Ch]
test    ah, ah
jnz     short loc_4CB7D7
cbw
imul    ax, [ecx+12h]
sub     [edx+14h], ax
sub     word ptr [edx+18h], 200h
jmp     short loc_4CB814

loc_4CB7D7:
cmp     ah, 1
jnz     short loc_4CB7EF
cbw
sub     word ptr [edx+14h], 200h
imul    ax, [ecx+12h]
add     [edx+18h], ax
jmp     short loc_4CB814

loc_4CB7EF:
cmp     ah, 2
jnz     short loc_4CB805
cbw
imul    ax, [ecx+12h]
add     [edx+14h], ax
add     byte ptr [edx+19h], 2
jmp     short loc_4CB814

loc_4CB805:
cbw
add     byte ptr [edx+15h], 2
imul    ax, [ecx+12h]
sub     [edx+18h], ax

loc_4CB814:
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+1Ch], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
mov     eax, edx
call    sub_4CBD74
and     byte ptr [ecx+0Fh], 0FEh
mov     word ptr [ecx+12h], 0
mov     byte ptr [edx+9], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4CB846:
mov     eax, edx
call    sub_4CB9A7
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CB731 endp




sub_4CB852 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
lea     edx, [eax+0DCh]
mov     bl, [edx+0Fh]
and     bl, 0E0h
cmp     bl, 40h ; '@'
jnz     short loc_4CB87C
call    sub_4CBD74
and     byte ptr [edx+0Fh], 0BFh
xor     eax, eax
jmp     loc_4CB99F

loc_4CB87C:
xor     ebx, ebx
mov     [esp+1Ch+var_1C], ebx
mov     ecx, [eax+54h]
sar     ecx, 10h
sar     ecx, 0Ah
mov     [edx+0Ch], cl
mov     ecx, [eax+12h]
sar     ecx, 10h
sar     ecx, 9
add     ecx, 40h ; '@'
mov     edi, ecx
mov     ecx, [eax+16h]
sar     ecx, 10h
sar     ecx, 9
add     ecx, 40h ; '@'
mov     esi, ecx
mov     bl, [edx+0Ch]
test    bl, bl
jnz     short loc_4CB8B3
inc     esi
jmp     short loc_4CB8B9

loc_4CB8B3:
cmp     bl, 1
jnz     short loc_4CB8B9
inc     edi

loc_4CB8B9:
xor     ecx, ecx
mov     cl, [edx+0Eh]
shl     ecx, 3
mov     ebx, [edx]
add     ecx, ebx
xor     ebx, ebx
mov     bl, [ecx]
movsx   ebp, di
cmp     ebx, ebp
jnz     loc_4CB99C
xor     ebx, ebp
mov     bl, [ecx+1]
movsx   ebp, si
cmp     ebx, ebp
jnz     loc_4CB99C
mov     bl, [ecx+2]
and     bl, 10h
xor     ecx, ecx
mov     cl, bl
sar     ecx, 4
mov     bx, [eax+14h]
and     bh, 1
mov     ax, [eax+18h]
and     ah, 1
add     ebx, eax
mov     [edx+12h], bx
cmp     byte ptr [edx+0Ch], 1
ja      short loc_4CB916
mov     eax, 200h
sub     eax, ebx
mov     [edx+12h], ax

loc_4CB916:
sub     edi, 40h ; '@'
mov     [edx+16h], di
sub     esi, 40h ; '@'
mov     [edx+18h], si
mov     al, [edx+0Ch]
test    al, 1
jz      short loc_4CB952
and     al, 2
mov     ebx, eax
and     ebx, 0FFh
sar     ebx, 1
xor     eax, eax
mov     al, cl
add     ebx, eax
inc     ebx
and     ebx, 1
add     ebx, ebx
mov     eax, [edx+16h]
sar     eax, 10h
dec     ebx
add     eax, ebx
mov     [edx+18h], ax
jmp     short loc_4CB976

loc_4CB952:
and     al, 2
mov     ebx, eax
and     ebx, 0FFh
sar     ebx, 1
xor     eax, eax
mov     al, cl
add     ebx, eax
and     ebx, 1
add     ebx, ebx
mov     eax, [edx+14h]
sar     eax, 10h
dec     ebx
add     eax, ebx
mov     [edx+16h], ax

loc_4CB976:
shl     word ptr [edx+16h], 9
shl     word ptr [edx+18h], 9
test    cl, cl
jz      short loc_4CB98B
mov     al, [edx+0Ch]
add     al, 3
jmp     short loc_4CB990

loc_4CB98B:
mov     al, [edx+0Ch]
inc     al

loc_4CB990:
and     al, 3
mov     [edx+0Dh], al
mov     [esp+1Ch+var_1C], 1

loc_4CB99C:
mov     eax, [esp+1Ch+var_1C]

loc_4CB99F:
add     esp, 4
jmp     loc_4CB603
sub_4CB852 endp




sub_4CB9A7 proc near

var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     ecx, eax
lea     ebx, [eax+0DCh]
xor     eax, eax
mov     al, [ebx+0Eh]
mov     edx, [ebx]
test    byte ptr [edx+eax*8+2], 10h
jz      short loc_4CB9CA
mov     [esp+14h+var_14], 0FFh
jmp     short loc_4CB9CE

loc_4CB9CA:
mov     [esp+14h+var_14], 1

loc_4CB9CE:
mov     eax, [ebx+10h]
sar     eax, 10h
call    sub_4EF003
mov     edx, eax
shl     edx, 0Dh
mov     eax, [ebx+10h]
sar     eax, 10h
call    sub_4EF008
shl     eax, 0Dh
mov     esi, [ebx+14h]
sar     esi, 10h
shl     esi, 10h
mov     [ecx+1Ch], esi
mov     esi, [ebx+16h]
sar     esi, 10h
shl     esi, 10h
mov     [ecx+24h], esi
cmp     byte ptr [ebx+0Ch], 0
jnz     short loc_4CBA1C
mov     esi, [esp-3]
sar     esi, 18h
imul    edx, esi
add     [ecx+1Ch], edx

loc_4CBA17:
sub     [ecx+24h], eax
jmp     short loc_4CBA56

loc_4CBA1C:
cmp     byte ptr [ebx+0Ch], 1
jnz     short loc_4CBA31
sub     [ecx+1Ch], eax
mov     eax, [esp-3]
sar     eax, 18h
imul    eax, edx
jmp     short loc_4CBA17

loc_4CBA31:
cmp     byte ptr [ebx+0Ch], 2
jnz     short loc_4CBA46
mov     esi, [esp-3]
sar     esi, 18h
imul    edx, esi
sub     [ecx+1Ch], edx
jmp     short loc_4CBA53

loc_4CBA46:
add     [ecx+1Ch], eax
mov     eax, [esp-3]
sar     eax, 18h
imul    eax, edx

loc_4CBA53:
add     [ecx+24h], eax

loc_4CBA56:
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
movsx   ax, [esp+14h+var_14]
mov     dx, [ebx+12h]
imul    edx, eax
xor     eax, eax
mov     al, [ebx+0Ch]
shl     eax, 0Ah
add     eax, edx
mov     [ecx+56h], ax
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CB9A7 endp




sub_4CBA83 proc near

var_1C= word ptr -1Ch
var_18= byte ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     edx, eax
lea     ecx, [eax+0DCh]
mov     bx, [ecx+10h]
xor     eax, eax
mov     al, [ecx+0Eh]
shl     eax, 3
mov     esi, [ecx]
add     esi, eax
mov     al, [esi+2]
and     al, 0F0h
mov     [esp+1Ch+var_18], al
xor     eax, eax
mov     al, [esi]
lea     esi, [eax-40h]
shl     esi, 9
mov     eax, [edx+12h]
sar     eax, 10h
sub     esi, eax
mov     eax, esi
call    abs_
mov     esi, eax
xor     eax, eax
mov     al, [ecx+0Eh]
mov     edi, eax
shl     edi, 3
mov     eax, [ecx]
mov     al, [edi+eax+1]
mov     edi, eax
and     edi, 0FFh
sub     edi, 40h ; '@'
shl     edi, 9
mov     eax, [edx+16h]
sar     eax, 10h
sub     edi, eax
mov     eax, edi
call    abs_
mov     edi, esi
add     edi, eax
mov     eax, edi
add     eax, 1FFh
mov     [ecx+14h], ax
test    byte ptr [ecx+0Fh], 4
jz      short loc_4CBB11
mov     [esp+1Ch+var_1C], 20h ; ' '
jmp     short loc_4CBB17

loc_4CBB11:
mov     [esp+1Ch+var_1C], 8

loc_4CBB17:
test    byte ptr [ecx+0Fh], 11h
jnz     loc_4CBB9F
test    [esp+1Ch+var_18], 0E0h
jz      short loc_4CBB6B
mov     eax, [edx+42h]
sar     eax, 10h
mov     esi, eax
sar     esi, 4
add     esi, 6
imul    eax, esi
sar     eax, 4
lea     esi, [eax+180h]
mov     al, [esp+1Ch+var_18]
and     al, 0E0h
cmp     al, 40h ; '@'
jnz     short loc_4CBB54
add     esi, 200h
jmp     short loc_4CBB5E

loc_4CBB54:
cmp     al, 60h ; '`'
jnz     short loc_4CBB5E
add     esi, 400h

loc_4CBB5E:
movsx   eax, di
cmp     eax, esi
jg      short loc_4CBB9F
or      byte ptr [ecx+0Fh], 10h
jmp     short loc_4CBB99

loc_4CBB6B:
mov     esi, [edx+42h]
sar     esi, 10h
sub     esi, 140h
mov     eax, esi
imul    eax, esi
sar     eax, 7
sub     eax, esi
lea     esi, [eax+400h]
movsx   eax, di
cmp     eax, esi
jg      short loc_4CBB9F
or      byte ptr [ecx+0Fh], 1
cmp     word ptr [edx+4Ch], 0
jle     short loc_4CBB9F

loc_4CBB99:
mov     word ptr [edx+4Ch], 0

loc_4CBB9F:
mov     ecx, [edx+42h]
sar     ecx, 10h
movsx   eax, bx
cmp     ecx, eax
jge     loc_4CBC21
cmp     word ptr [edx+4Ch], 0
jge     short loc_4CBBBD
mov     word ptr [edx+4Ch], 0

loc_4CBBBD:
mov     ecx, [edx+42h]
sar     ecx, 10h
movsx   eax, bx
sub     eax, 0Dh
cmp     ecx, eax
jge     short loc_4CBBE4
mov     eax, [edx+4Ah]
sar     eax, 10h
mov     ecx, [esp-2]
sar     ecx, 10h
cmp     eax, ecx
jge     short loc_4CBC03
inc     word ptr [edx+4Ch]
jmp     short loc_4CBC03

loc_4CBBE4:
mov     di, [edx+4Ch]
cmp     di, 2
jle     short loc_4CBBF9
mov     eax, edi
sub     eax, 2
mov     [edx+4Ch], ax
jmp     short loc_4CBC03

loc_4CBBF9:
mov     [edx+44h], bx
mov     word ptr [edx+4Ch], 0

loc_4CBC03:
mov     ax, [edx+4Ch]
add     [edx+44h], ax
mov     ecx, [edx+42h]
sar     ecx, 10h
movsx   eax, bx
cmp     ecx, eax
jle     loc_4CBC98
jmp     loc_4CBC8E

loc_4CBC21:
jle     loc_4CBC98
cmp     word ptr [edx+4Ch], 0
jle     short loc_4CBC34
mov     word ptr [edx+4Ch], 0

loc_4CBC34:
mov     ecx, [edx+42h]
sar     ecx, 10h
movsx   eax, bx
add     eax, 0Dh
cmp     ecx, eax
jle     short loc_4CBC5D
mov     eax, [edx+4Ah]
sar     eax, 10h
mov     ecx, [esp-2]
sar     ecx, 10h
neg     ecx
cmp     eax, ecx
jle     short loc_4CBC79
dec     word ptr [edx+4Ch]
jmp     short loc_4CBC79

loc_4CBC5D:
mov     eax, [edx+4Ah]
sar     eax, 10h
cmp     eax, 0FFFFFFFEh
jge     short loc_4CBC6F
add     word ptr [edx+4Ch], 2
jmp     short loc_4CBC79

loc_4CBC6F:
mov     [edx+44h], bx
mov     word ptr [edx+4Ch], 0

loc_4CBC79:
mov     ax, [edx+4Ch]
add     [edx+44h], ax
mov     ecx, [edx+42h]
sar     ecx, 10h
movsx   eax, bx
cmp     ecx, eax
jge     short loc_4CBC98

loc_4CBC8E:
mov     [edx+44h], bx
mov     word ptr [edx+4Ch], 0

loc_4CBC98:
add     esp, 8
jmp     loc_4CB604
sub_4CBA83 endp




sub_4CBCA0 proc near

var_14= word ptr -14h
var_12= dword ptr -12h

push    ebx
push    ecx
push    esi
sub     esp, 8
mov     ecx, eax
test    dx, dx
jz      loc_4CBD6D
mov     eax, [eax+54h]
sar     eax, 10h
sar     eax, 0Ah
mov     ebx, eax
mov     ax, [ecx+14h]
mov     [esp+14h+var_14], ax
mov     ax, [ecx+16h]
sub     eax, 80h
mov     word ptr [esp+14h+var_12], ax
mov     ax, [ecx+18h]
mov     word ptr [esp+14h+var_12+2], ax
test    bl, 1
jz      short loc_4CBD02
movsx   esi, dx
sar     esi, 1
mov     eax, [esp-2]
sar     eax, 10h
sub     eax, esi
mov     [esp+14h+var_14], ax
mov     eax, esp
call    sub_42C7E7
mov     esi, eax
add     [esp+14h+var_14], dx
jmp     short loc_4CBD23

loc_4CBD02:
movsx   esi, dx
sar     esi, 1
mov     eax, [esp+14h+var_12]
sar     eax, 10h
sub     eax, esi
mov     word ptr [esp+14h+var_12+2], ax
mov     eax, esp
call    sub_42C7E7
mov     esi, eax
add     word ptr [esp+14h+var_12+2], dx

loc_4CBD23:
mov     eax, esp
call    sub_42C7E7
xor     bh, bh
and     bl, 2
dec     ebx
sub     eax, esi
imul    eax, ebx
imul    eax, 3
mov     dx, [ecx+54h]
add     edx, eax
mov     [ecx+54h], dx
mov     bx, [ecx+4Ch]
test    bx, bx
jle     short loc_4CBD61
mov     edx, [ecx+4Ah]
sar     edx, 10h
sar     edx, 1
mov     eax, [ecx+52h]
sar     eax, 10h
sub     eax, edx
mov     [ecx+54h], ax
jmp     short loc_4CBD6D

loc_4CBD61:
mov     eax, ebx
add     eax, ebx
mov     esi, edx
sub     esi, eax
mov     [ecx+54h], si

loc_4CBD6D:
add     esp, 8
pop     esi
pop     ecx
pop     ebx
retn
sub_4CBCA0 endp




sub_4CBD74 proc near

var_20= dword ptr -20h
var_1C= word ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 0Ch
mov     esi, eax
lea     ebx, [eax+0DCh]
mov     eax, [eax+0Ah]
sar     eax, 18h
shl     eax, 3
mov     edx, [ebx+4]
add     edx, eax
cmp     byte ptr [edx+4], 6
jnz     short loc_4CBDDD
cmp     byte ptr [esi+9], 0
jnz     short loc_4CBDA7
xor     eax, eax
mov     al, [edx+5]
mov     [ebx+1Ah], ax

loc_4CBDA7:
mov     eax, [ebx+18h]
sar     eax, 10h
mov     edx, [ebx+8]
mov     al, [edx+eax]
mov     [ebx+0Eh], al
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, ds:dword_5387CE[eax*8]
sar     ecx, 10h
mov     edx, [ebx+18h]
sar     edx, 10h
inc     edx
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     [ebx+1Ah], dx
jmp     loc_4CBE77

loc_4CBDDD:
xor     edx, edx
jmp     short loc_4CBDEC

loc_4CBDE1:
inc     edx
cmp     dx, 4
jge     loc_4CBE74

loc_4CBDEC:
cmp     byte ptr [esi+9], 0
jnz     short loc_4CBE0D
mov     eax, [esi+0Ah]
sar     eax, 18h
shl     eax, 3
mov     ecx, [ebx+4]
add     eax, ecx
movsx   ecx, dx
mov     ch, [ecx+eax+5]
cmp     dx, 2
jmp     short loc_4CBE24

loc_4CBE0D:
xor     ecx, ecx
mov     cl, [ebx+0Eh]
shl     ecx, 3
mov     eax, [ebx]
add     eax, ecx
movsx   ecx, dx
mov     ch, [ecx+eax+4]
cmp     dx, 3

loc_4CBE24:
jz      short loc_4CBE74
movsx   eax, dx
shl     eax, 2
mov     [esp+20h+var_20], eax
call    rand_
mov     cl, byte ptr [esp+20h+var_20]
sar     eax, cl
and     eax, 0Fh
mov     [esp+20h+var_1C], ax
xor     eax, eax
mov     al, ch
mov     edi, eax
shl     edi, 3
mov     eax, [ebx]
mov     al, [edi+eax+2]
and     al, 0Fh
movzx   di, al
mov     [esp+20h+var_18], edi
movzx   edi, al
mov     eax, [esp+20h+var_20+2]
sar     eax, 10h
cmp     edi, eax
jg      short loc_4CBE74
cmp     word ptr [esp+20h+var_18], 0
jnz     loc_4CBDE1

loc_4CBE74:
mov     [ebx+0Eh], ch

loc_4CBE77:
add     esp, 0Ch
jmp     loc_4CB604
sub_4CBD74 endp




sub_4CBE7F proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
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
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4CBEA9[edx*4]
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     ecx, 1000008h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
add     esp, 10h
pop     ebp
sub_4CBE7F endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4CBEF9

loc_4CBEF3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
; END OF FUNCTION CHUNK FOR sub_4CBEF9
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_105]



sub_4CBEF9 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004CBEF3 SIZE 00000005 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     word ptr [ecx+54h], 0
mov     al, [ecx+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
mov     byte ptr [ecx+2], 4
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 2Fh ; '/'
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_24], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     word ptr [ecx+6Eh], 400h
mov     dword ptr [ecx+78h], offset unk_538C30
mov     dword ptr [ecx+10h], 0
inc     byte ptr [ecx+8]
mov     dword ptr [ecx+0C4h], offset unk_808080
add     esp, 10h
jmp     loc_4CBEF3
sub_4CBEF9 endp



; Attributes: thunk

sub_4CBFC7 proc near
jmp     sub_4DE371
sub_4CBFC7 endp




sub_4CBFCC proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4CBFD2[edx*4]
pop     edx
retn
sub_4CBFCC endp




sub_4CBFDB proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 18h
mov     eax, [eax+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+90h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+92h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+94h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     edx, ds:dword_5F837A
sar     edx, 10h
mov     eax, [ecx+16h]
sar     eax, 10h
sub     edx, eax
mov     ebx, ds:dword_5F8376
sar     ebx, 10h
mov     eax, [ecx+12h]
sar     eax, 10h
sub     ebx, eax
mov     eax, ebx
call    sub_4EF04B
mov     [ecx+0DCh], eax
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CBFDB endp




sub_4CC078 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+0Ch]
sar     eax, 18h
call    sub_4E1877
mov     ecx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4CC0E4
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 13h
mov     byte ptr [eax+3], 0
mov     bl, [edx+1]
mov     [eax+0Ch], bl
mov     bl, [edx+0Dh]
mov     [eax+0Dh], bl
mov     ebx, [edx+0DCh]
mov     [eax+28h], ebx
mov     bx, [ecx+198h]
mov     [eax+1Ch], bx
mov     bx, [ecx+19Ah]
mov     [eax+1Eh], bx
mov     cx, [ecx+19Ch]
mov     [eax+20h], cx
inc     byte ptr [edx+0Ch]
mov     bl, [edx+0Eh]
dec     bl
mov     [edx+0Eh], bl
jnz     short loc_4CC0E4
inc     byte ptr [edx+8]

loc_4CC0E4:
inc     byte ptr [edx+0Dh]
pop     edx
pop     ecx
pop     ebx

locret_4CC0EA:
retn
sub_4CC078 endp




sub_4CC0EB proc near
cmp     byte ptr [eax+0Ch], 0
jnz     short locret_4CC0EA
jmp     sub_4DE371
sub_4CC0EB endp




sub_4CC0F6 proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4CC104[edx*4]
test    byte ptr [esi+3], 1
jnz     short loc_4CC114
inc     byte ptr [esi+0Fh]

loc_4CC114:
cmp     byte ptr [esi+0Fh], 6
jnz     short loc_4CC11E
mov     byte ptr [esi+0Fh], 0

loc_4CC11E:
mov     ax, [esi+90h]
mov     [esp+18h+var_18], ax
mov     ax, [esi+92h]
mov     [esp+18h+var_16], ax
mov     ax, [esi+94h]
mov     [esp+18h+var_14], ax
test    byte ptr [esi+3], 1
jnz     short loc_4CC19C
lea     eax, [esi+9Ch]
cmp     byte ptr [esi+0Ah], 0
jz      short loc_4CC16D
push    80h
push    0
push    8000000h
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     ecx, 4000h
jmp     short loc_4CC185

loc_4CC16D:
push    80h
push    0
push    8000000h
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     ecx, 8000h

loc_4CC185:
xor     ebx, ebx
mov     edx, 20h ; ' '
lea     eax, [esp+2Ch+var_18]
call    sub_4E01FC
mov     eax, esi
call    sub_4326CA

loc_4CC19C:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 3Ch ; '<'
mov     eax, esi
call    sub_4ED88B
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CC0F6 endp




sub_4CC1B7 proc near
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0Bh], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     word ptr [eax+7Ch], 0
mov     eax, [eax+62h]
sar     eax, 10h
call    sub_4EF008
neg     eax
imul    eax, [ecx+9Ch]
shr     eax, 4
mov     [ecx+44h], ax
mov     ax, [ecx+0A0h]
neg     eax
shl     eax, 8
mov     [ecx+46h], ax
mov     eax, [ecx+62h]
sar     eax, 10h
call    sub_4EF003
neg     eax
imul    eax, [ecx+9Ch]
shr     eax, 4
mov     [ecx+48h], ax
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 200h
mov     word ptr [ecx+50h], 0
mov     dword ptr [ecx+9Ch], 0
mov     dword ptr [ecx+88h], 3D48000Eh
mov     dword ptr [ecx+8Ch], 2C808080h
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     edx, [ecx+42h]
sar     edx, 10h
shl     edx, 0Ah
mov     eax, [ecx+1Ch]
sub     eax, edx
mov     [ecx+34h], eax
mov     eax, [ecx+20h]
mov     [ecx+38h], eax
mov     edx, [ecx+46h]
sar     edx, 10h
shl     edx, 0Ah
mov     eax, [ecx+24h]
sub     eax, edx
mov     [ecx+3Ch], eax
lea     edx, [ecx+2Ch]
lea     eax, [ecx+34h]
call    sub_4DD57B
mov     dword ptr [ecx+78h], 0
test    byte ptr [ecx+3], 80h
jz      short loc_4CC2B8
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C60[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C62[eax*4]
jmp     short loc_4CC2D8

loc_4CC2B8:
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C48[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C4A[eax*4]

loc_4CC2D8:
mov     [ecx+97h], al
mov     word ptr [ecx+98h], 20h ; ' '
or      byte ptr [ecx], 2
mov     byte ptr [ecx+74h], 1
mov     eax, ecx
call    sub_4CC833
test    ax, ax
jz      short loc_4CC302
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+0Dh], 0

loc_4CC302:
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
sub     eax, 10h
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
and     byte ptr [ecx+0Eh], 0FBh
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4CC1B7 endp




sub_4CC330 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
test    byte ptr [eax+9Fh], 20h
jz      short loc_4CC387
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF008
neg     eax
shl     eax, 5
sar     eax, 4
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 0F000h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF003
neg     eax
shl     eax, 5
sar     eax, 4
mov     [ecx+48h], ax
mov     byte ptr [ecx+0Ah], 1
mov     dword ptr [ecx+9Ch], 0
jmp     short loc_4CC3CA

loc_4CC387:
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_4CC3C1
test    byte ptr [ecx+9Fh], 1Ch

loc_4CC394:
jz      short loc_4CC3CA

loc_4CC396:
mov     dword ptr [ecx+9Ch], 0
call    sub_4DE13B
test    eax, eax
jz      short loc_4CC3B2
mov     edx, eax
mov     eax, ecx
call    sub_4CCA46

loc_4CC3B2:
mov     byte ptr [ecx], 0
mov     eax, ecx
call    sub_4DE371
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4CC3C1:
test    byte ptr [ecx+9Fh], 1Ah
jmp     short loc_4CC394

loc_4CC3CA:
mov     dword ptr [ecx+9Ch], 0
test    byte ptr [ecx+3], 1
jnz     short loc_4CC3E3
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4CC3E9
jmp     short loc_4CC396

loc_4CC3E3:
mov     word ptr [ecx+7Ch], 0

loc_4CC3E9:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ecx+8Ch], 2C808080h
test    byte ptr [ecx+3], 80h
jz      short loc_4CC42D
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C60[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C62[eax*4]
jmp     short loc_4CC44D

loc_4CC42D:
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C48[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C4A[eax*4]

loc_4CC44D:
mov     [ecx+97h], al
mov     eax, ecx
call    sub_4CC99B
lea     edx, [ecx+2Ch]
lea     eax, [ecx+34h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4CC833
test    ax, ax
jz      short loc_4CC484
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+0Dh], 0

loc_4CC484:
mov     ah, [ecx+0Ch]
cmp     ah, 96h
jb      short loc_4CC496
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+0Dh], 0
jmp     short loc_4CC49D

loc_4CC496:
mov     dl, ah
inc     dl
mov     [ecx+0Ch], dl

loc_4CC49D:
mov     byte ptr [ecx+76h], 0
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
sub     eax, 10h
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4CC330 endp




sub_4CC4CA proc near
push    ecx
push    edx
mov     ecx, eax
mov     dword ptr [eax+88h], 3D48000Eh
mov     dword ptr [eax+8Ch], 2C808080h
mov     eax, [eax+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+90h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+92h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+94h], ax
test    byte ptr [ecx+3], 80h
jz      short loc_4CC53D
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C60[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C62[eax*4]
jmp     short loc_4CC55D

loc_4CC53D:
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C48[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C4A[eax*4]

loc_4CC55D:
mov     [ecx+97h], al
mov     word ptr [ecx+98h], 20h ; ' '
call    sub_4DE13B
test    eax, eax
jz      short loc_4CC57E
mov     edx, eax
mov     eax, ecx
call    sub_4CCA46

loc_4CC57E:
mov     byte ptr [ecx], 0
mov     eax, ecx
call    sub_4DE371
pop     edx
pop     ecx
retn
sub_4CC4CA endp




sub_4CC58B proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
test    byte ptr [eax+9Fh], 20h
jz      short loc_4CC5F8
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF008
neg     eax
shl     eax, 5
sar     eax, 4
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 0F000h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF003
neg     eax
shl     eax, 5
sar     eax, 4
mov     [ecx+48h], ax
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [ecx+8], 1
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 200h
mov     word ptr [ecx+50h], 0
mov     dword ptr [ecx+9Ch], 0
jmp     short loc_4CC635

loc_4CC5F8:
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_4CC62C
test    byte ptr [ecx+9Fh], 1Ch

loc_4CC605:
jz      short loc_4CC635
mov     dword ptr [ecx+9Ch], 0
call    sub_4DE13B
test    eax, eax
jz      loc_4CC760
mov     edx, eax
mov     eax, ecx
call    sub_4CCA46
jmp     loc_4CC760

loc_4CC62C:
test    byte ptr [ecx+9Fh], 1Ah
jmp     short loc_4CC605

loc_4CC635:
mov     dword ptr [ecx+9Ch], 0
cmp     word ptr [ecx+44h], 0
jnz     short loc_4CC654
cmp     word ptr [ecx+46h], 0
jnz     short loc_4CC654
cmp     word ptr [ecx+48h], 0
jz      short loc_4CC6A2

loc_4CC654:
test    byte ptr [ecx+3], 80h
jz      short loc_4CC67C
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C60[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C62[eax*4]
jmp     short loc_4CC69C

loc_4CC67C:
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C48[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C4A[eax*4]

loc_4CC69C:
mov     [ecx+97h], al

loc_4CC6A2:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, ecx
call    sub_4CC99B
lea     edx, [ecx+2Ch]
lea     eax, [ecx+34h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4CC833
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
sub     eax, 10h
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
mov     al, [ecx+0Dh]
cmp     al, 1Eh
jge     short loc_4CC74E
cmp     al, 0Fh
jge     short loc_4CC70E
mov     eax, 1
jmp     short loc_4CC713

loc_4CC70E:
mov     eax, 0FFFFFFFFh

loc_4CC713:
mov     edx, [ecx+0Ah]
sar     edx, 18h
cwde
test    edx, eax
jz      short loc_4CC746
mov     eax, [ecx+8Ch]
and     eax, 0FFh
cmp     eax, 0FFh
jnz     short loc_4CC73C
mov     dword ptr [ecx+8Ch], 2C808080h
jmp     short loc_4CC746

loc_4CC73C:
mov     dword ptr [ecx+8Ch], 2CFFFFFFh

loc_4CC746:
inc     byte ptr [ecx+0Dh]
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4CC74E:
call    sub_4DE13B
test    eax, eax
jz      short loc_4CC760
mov     edx, eax
mov     eax, ecx
call    sub_4CCA46

loc_4CC760:
mov     byte ptr [ecx], 0
mov     eax, ecx
call    sub_4DE371
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4CC58B endp




sub_4CC76F proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     dword ptr [eax+88h], 3D48000Eh
mov     dword ptr [eax+8Ch], 2C808080h
mov     word ptr [eax+7Ch], 0
mov     byte ptr [eax+76h], 0
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
sub     eax, 10h
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
test    byte ptr [ecx+3], 80h
jz      short loc_4CC7FC
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C60[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C62[eax*4]
jmp     short loc_4CC81C

loc_4CC7FC:
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C48[eax*4]
mov     [ecx+96h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_538C4A[eax*4]

loc_4CC81C:
mov     [ecx+97h], al
mov     word ptr [ecx+98h], 20h ; ' '
or      byte ptr [ecx], 2
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4CC76F endp




sub_4CC833 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebx, eax
xor     edx, edx
mov     [esp+1Ch+var_1C], edx
call    sub_42DE56
mov     ebp, eax
test    eax, eax
jz      loc_4CC98E
test    ah, 10h
jz      loc_4CC93F
cmp     word ptr [ebx+46h], 0
jge     short loc_4CC86C
mov     eax, [ebx+44h]
sar     eax, 10h
neg     eax
jmp     short loc_4CC872

loc_4CC86C:
mov     eax, [ebx+44h]
sar     eax, 10h

loc_4CC872:
cmp     eax, 0A00h
jg      short loc_4CC8A6
mov     word ptr [ebx+44h], 0
mov     word ptr [ebx+46h], 0
mov     word ptr [ebx+48h], 0
mov     word ptr [ebx+4Ch], 0
mov     word ptr [ebx+4Eh], 0
mov     word ptr [ebx+50h], 0
mov     [esp+1Ch+var_1C], 1
jmp     short loc_4CC8DB

loc_4CC8A6:
mov     edx, [ebx+44h]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 5
test    eax, eax
jge     short loc_4CC8BC
neg     eax

loc_4CC8BC:
sar     eax, 8
mov     [ebx+46h], ax
mov     eax, [ebx+42h]
sar     eax, 10h
sar     eax, 1
mov     [ebx+44h], ax
mov     eax, [ebx+46h]
sar     eax, 10h
sar     eax, 1
mov     [ebx+48h], ax

loc_4CC8DB:
cmp     ds:byte_77E7D4, 0Bh
jnz     short loc_4CC927
mov     eax, [ebx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4CC927
mov     eax, ebx
call    sub_4DE3AC
lea     edx, [ebx+14h]
mov     eax, 102h
call    sub_4D8BC3
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4CC91E
mov     ecx, 11h
lea     edi, [eax+14h]
lea     esi, [ebx+88h]
rep movsd

loc_4CC91E:
mov     eax, ebx
call    sub_4CCA6A
jmp     short loc_4CC984

loc_4CC927:
lea     edx, [ebx+14h]
mov     eax, 0B3h
call    sub_4D8BC3
call    sub_4DE13B
test    eax, eax
jz      short loc_4CC984
jmp     short loc_4CC969

loc_4CC93F:
cmp     ds:byte_77E7D4, 0Bh
jnz     short loc_4CC953
mov     eax, [ebx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jz      short loc_4CC960

loc_4CC953:
lea     edx, [ebx+14h]
mov     eax, 0B3h
call    sub_4D8BC3

loc_4CC960:
call    sub_4DE13B
test    eax, eax
jz      short loc_4CC984

loc_4CC969:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
mov     ecx, 11h
lea     edi, [eax+14h]
lea     esi, [ebx+88h]
rep movsd

loc_4CC984:
