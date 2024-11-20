push    200h
mov     ecx, 20h ; ' '
mov     edx, ecx
lea     eax, [esp+38h+var_1C]
call    sub_4E02CB
add     esp, 8
jmp     loc_4B10CA
sub_4B11AD endp




sub_4B1284 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
call    sub_4DE13B
test    eax, eax
jz      loc_4B132D
lea     edx, [eax+28h]
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 85h
mov     si, [ecx+14h]
mov     [eax+1Ch], si
mov     si, [ecx+16h]
mov     [eax+1Eh], si
mov     si, [ecx+18h]
mov     [eax+20h], si
mov     si, [ecx+44h]
mov     [edx+8], si
mov     si, [ecx+46h]
mov     [edx+0Ah], si
mov     si, [ecx+48h]
mov     [edx+0Ch], si
mov     dl, [ecx+3]
cmp     dl, 40h ; '@'
jnz     short loc_4B12F4
mov     edx, [ecx+62h]
sar     edx, 10h
add     edx, 400h

loc_4B12E6:
and     edx, 0FFFh
mov     [eax+40h], edx

loc_4B12EF:
add     bl, 10h
jmp     short loc_4B132A

loc_4B12F4:
cmp     dl, 41h ; 'A'
jnz     short loc_4B1307
mov     edx, [ecx+62h]
sar     edx, 10h
sub     edx, 400h
jmp     short loc_4B12E6

loc_4B1307:
cmp     dl, 42h ; 'B'
jnz     short loc_4B1315
mov     dword ptr [eax+40h], 0FFFFh
jmp     short loc_4B12EF

loc_4B1315:
mov     edx, [ecx+62h]
sar     edx, 10h
add     edx, 400h
and     edx, 0FFFh
mov     [eax+40h], edx

loc_4B132A:
mov     [eax+3], bl

loc_4B132D:
pop     esi
pop     ecx
pop     ebx
retn
sub_4B1284 endp




sub_4B1331 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4B133A[ecx*4]
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4B1331 endp




sub_4B134B proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 50h
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_530E64
call    sub_42A85C
mov     [esp+64h+var_24], ax
mov     ax, [ecx+64h]
and     ah, 0Fh
mov     [esp+64h+var_22], ax
xor     edx, edx
mov     [esp+64h+var_20], dx
mov     edx, esp
lea     eax, [esp+64h+var_24]
call    sub_4EF638
xor     ebx, ebx
mov     word ptr [esp+64h+var_1C], bx
xor     esi, esi
mov     word ptr [esp+64h+var_1C+2], bx
mov     [esp+64h+var_18], 0F000h
lea     ebx, [esp+64h+var_34]
lea     edx, [esp+64h+var_1C]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [esp+64h+var_34]
mov     word ptr [esp+64h+var_1C], ax
mov     eax, [esp+64h+var_30]
mov     word ptr [esp+64h+var_1C+2], ax
mov     eax, [esp+64h+var_2C]
mov     [esp+64h+var_18], ax
mov     [ecx+44h], si
mov     [ecx+46h], si
mov     [ecx+48h], si
lea     edi, [ecx+0A4h]
lea     esi, [esp+64h+var_1C]
movsd
movsd
mov     edx, [esp+46h]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [ecx+4Ch], ax
mov     edx, [esp+64h+var_1C]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [ecx+4Eh], ax
mov     edx, [esp+64h+var_1C+2]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [ecx+50h], ax
mov     dword ptr [ecx+88h], 3D08000Eh
mov     dword ptr [ecx+8Ch], 2C808080h
mov     eax, [ecx+1Ch]
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
mov     byte ptr [ecx+96h], 80h
mov     byte ptr [ecx+97h], 80h
mov     eax, ds:dword_5F896D
sar     eax, 18h
mov     al, ds:byte_530E70[eax]
xor     ah, ah
mov     [ecx+98h], ax
mov     word ptr [ecx+7Ch], 0
mov     [ecx+0Bh], ah
inc     byte ptr [ecx+8]
mov     [ecx+9], ah
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_4B14E2
mov     word ptr [ecx+1Ah], 6208h
mov     word ptr [ecx+32h], 6208h
jmp     short loc_4B14EE

loc_4B14E2:
mov     word ptr [ecx+1Ah], 4208h
mov     word ptr [ecx+32h], 4208h

loc_4B14EE:
mov     eax, ecx
call    sub_4B16AE
lea     edx, [ecx+14h]
mov     eax, 122h
call    sub_4D8BC3
add     esp, 50h

loc_4B1505:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B134B endp




sub_4B150B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     edx, 20h ; ' '
call    sub_4EE66E
test    eax, eax
jnz     short loc_4B1528
cmp     word ptr [ebp+7Ch], 0
jz      short loc_4B1552

loc_4B1528:
mov     eax, ebp
call    sub_4B1640
lea     ecx, [ebp+14h]
mov     ebx, 0FA0h
mov     edx, 64h ; 'd'
mov     eax, 14h
call    sub_42A70B

loc_4B1546:
mov     eax, ebp
call    sub_4DE3AC
jmp     loc_4B163A

loc_4B1552:
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
cmp     byte ptr [ebp+0Bh], 0Fh
jnb     short loc_4B1582
mov     ax, [ebp+4Ch]
add     [ebp+44h], ax
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax
mov     ax, [ebp+50h]
add     [ebp+48h], ax

loc_4B1582:
mov     al, [ebp+0Bh]
xor     ecx, ecx
mov     cl, al
inc     al
mov     [ebp+0Bh], al
mov     edx, 3
mov     eax, offset byte_5F8364
call    sub_4EE62E
cmp     ecx, eax
jge     short loc_4B1546
test    byte ptr [ebp+0Bh], 1
jz      short loc_4B15B7
mov     byte ptr [ebp+96h], 0A0h
mov     byte ptr [ebp+97h], 60h ; '`'
jmp     short loc_4B15C5

loc_4B15B7:
mov     byte ptr [ebp+96h], 80h
mov     byte ptr [ebp+97h], 80h

loc_4B15C5:
mov     dword ptr [ebp+8Ch], 2C808080h
mov     eax, [ebp+42h]
sar     eax, 10h
shl     eax, 8
add     [ebp+1Ch], eax
mov     eax, [ebp+44h]
sar     eax, 10h
shl     eax, 8
add     [ebp+20h], eax
mov     eax, [ebp+46h]
sar     eax, 10h
shl     eax, 8
add     [ebp+24h], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
mov     [ebp+14h], ax
mov     [ebp+90h], ax
mov     eax, [ebp+20h]
sar     eax, 10h
mov     [ebp+16h], ax
mov     [ebp+92h], ax
mov     eax, [ebp+24h]
sar     eax, 10h
mov     [ebp+18h], ax
mov     [ebp+94h], ax
mov     eax, ebp
call    sub_4B16AE
test    byte ptr [ebp+0Bh], 1
jz      short loc_4B163A
mov     eax, ebp
call    sub_4B167B

loc_4B163A:
pop     ebp
jmp     loc_4B1505
sub_4B150B endp




sub_4B1640 proc near
push    edx
push    esi
push    edi
mov     esi, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4B1677
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     edx, ds:dword_5F896D
sar     edx, 18h
mov     dl, ds:byte_530E78[edx]
mov     [eax+0Dh], dl
mov     byte ptr [eax+0Eh], 1
lea     edi, [eax+48h]
lea     esi, [esi+14h]
movsd
movsd

loc_4B1677:
pop     edi
pop     esi
pop     edx
retn
sub_4B1640 endp




sub_4B167B proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4B16AB
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 1
mov     bx, [edx+14h]
mov     [eax+1Ch], bx
mov     bx, [edx+16h]
mov     [eax+1Eh], bx
mov     dx, [edx+18h]
mov     [eax+20h], dx

loc_4B16AB:
pop     edx
pop     ebx
retn
sub_4B167B endp




sub_4B16AE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     esi, esi
mov     si, [eax+98h]
mov     edx, 3
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     edx, eax
lea     eax, [ecx+14h]
lea     ebx, [ecx+2Ch]
lea     edi, [ecx+0D4h]
or      edx, 88000000h
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4B16FD
push    80h
push    0
push    edx
push    edi
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    6000h
jmp     short loc_4B1711

loc_4B16FD:
push    80h
push    0
push    edx
push    edi
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    4000h

loc_4B1711:
push    200h
mov     ecx, esi
mov     edx, esi
call    sub_4E02CB
jmp     loc_4B1505
sub_4B16AE endp




sub_4B1724 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B172A[edx*4]
pop     edx
retn
sub_4B1724 endp




sub_4B1733 proc near
push    edx
mov     edx, eax
mov     eax, [eax+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     byte ptr [edx+0Bh], 0
inc     byte ptr [edx+8]
mov     eax, edx
call    sub_4B1884
add     edx, 14h
mov     eax, 123h
call    sub_4D8BC3
pop     edx
retn
sub_4B1733 endp




sub_4B175E proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     esi, eax
mov     dx, [eax+4C8h]
mov     bx, [eax+4C0h]
sub     edx, ebx
mov     ebx, edx
shl     ebx, 2
mov     dx, [eax+4C8h]
add     ebx, edx
mov     [ecx+14h], bx
mov     bx, [eax+4CAh]
sub     bx, [eax+4C2h]
shl     ebx, 2
mov     dx, [eax+4CAh]
add     ebx, edx
mov     [ecx+16h], bx
mov     dx, [eax+4CCh]
sub     dx, [eax+4C4h]
shl     edx, 2
mov     ax, [eax+4CCh]
add     edx, eax
mov     [ecx+18h], dx
mov     edx, 80h
mov     eax, ecx
call    sub_4EE66E
test    eax, eax
jz      short loc_4B17F8
mov     edx, 1
mov     eax, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, 125h
call    sub_4D89E4

loc_4B17F8:
cmp     byte ptr [esi+170h], 4
jnz     short loc_4B182E
mov     di, [esi+61Ah]
test    di, di
jz      short loc_4B1820
cmp     di, 7FFFh
jz      short loc_4B1837
mov     edx, edi
dec     edx
mov     [esi+61Ah], dx
jmp     short loc_4B1837

loc_4B1820:
xor     ebx, ebx
xor     edx, edx
mov     eax, 124h
call    sub_4D89E4

loc_4B182E:
mov     eax, ecx
call    sub_4DE3AC
jmp     short loc_4B187B

loc_4B1837:
mov     al, [esi+100h]
cmp     al, ds:byte_550FAA
ja      short loc_4B1820
cmp     byte ptr [esi+174h], 0
jz      short loc_4B1820
xor     ebx, ebx
mov     [esp+1Ch+var_1C], bx
mov     al, [ecx+0Bh]
and     al, 7
xor     ah, ah
shl     eax, 9
mov     [esp+1Ch+var_1A], ax
mov     [esp+1Ch+var_18], bx
mov     edx, esp
mov     eax, esi
call    sub_4B195E
dec     byte ptr [ecx+0Bh]
mov     eax, ecx
call    sub_4B1884

loc_4B187B:
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B175E endp




sub_4B1884 proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
mov     edx, 4
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     ebx, eax
mov     eax, [esi+9]
sar     eax, 18h
call    sub_4E1877
mov     dx, [eax+4C8h]
sub     dx, [eax+4C0h]
shl     edx, 2
mov     cx, [eax+4C8h]
add     ecx, edx
mov     [esp+18h+var_18], cx
mov     dx, [eax+4CAh]
sub     dx, [eax+4C2h]
shl     edx, 2
mov     cx, [eax+4CAh]
add     ecx, edx
mov     [esp+18h+var_16], cx
mov     dx, [eax+4CCh]
sub     dx, [eax+4C4h]
shl     edx, 2
mov     cx, [eax+4CCh]
add     ecx, edx
mov     [esp+18h+var_14], cx
push    80h
push    0
or      ebx, 88000000h
push    ebx
lea     ebx, [esi+0D4h]
push    ebx
xor     ebx, ebx
mov     bl, [esi+1]
push    ebx
push    4000h
push    200h
add     eax, 4C8h
mov     ecx, 8
lea     ebx, [esp+34h+var_18]
mov     edx, 14h
call    sub_4E02CB
mov     dword ptr [esi+0D4h], 0
mov     dword ptr [esi+0D8h], 0
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B1884 endp




sub_4B195E proc near

var_6C= dword ptr -6Ch
var_68= dword ptr -68h
var_64= dword ptr -64h
var_60= byte ptr -60h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 7Ch
mov     ebp, eax
mov     [esp+90h+var_18], edx
mov     edx, ds:dword_7441AC
mov     ax, [edx+20h]
mov     [esp+90h+var_20], ax
mov     ax, [edx+22h]
mov     [esp+90h+var_1E], ax
mov     ax, [edx+24h]
mov     [esp+90h+var_1C], ax
mov     ecx, 0Ch
mov     edi, esp
lea     esi, [ebp+268h]
rep movsd
lea     ebx, [esp+90h+var_30]
lea     edx, [esp+90h+var_20]
mov     eax, esp
call    sub_4EF1FB
lea     edx, [esp+90h+var_60]
mov     eax, [esp+90h+var_18]
call    sub_4EF5F7
mov     ebx, esp
lea     edx, [esp+90h+var_60]
mov     eax, esp
call    sub_4EF388
mov     eax, [ebp+4BEh]
sar     eax, 10h
mov     edx, [esp+90h+var_30]
add     edx, eax
mov     [esp+90h+var_6C], edx
mov     eax, [ebp+4C0h]
sar     eax, 10h
mov     edx, [esp+90h+var_2C]
add     edx, eax
mov     [esp+90h+var_68], edx
mov     eax, [ebp+4C2h]
sar     eax, 10h
mov     edx, [esp+90h+var_28]
add     edx, eax
mov     [esp+90h+var_64], edx
mov     eax, [esp+90h+var_6C]
mov     [ebp+4C8h], ax
mov     eax, [esp+90h+var_68]
mov     [ebp+4CAh], ax
mov     eax, [esp+90h+var_64]
mov     [ebp+4CCh], ax
mov     ecx, 0Ch
lea     edi, [ebp+298h]
mov     esi, esp
rep movsd
add     esp, 7Ch
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4B195E endp




sub_4B1A37 proc near

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
call    ds:funcs_4B1A45[edx*4]
mov     ax, [esi+90h]
mov     [esp+18h+var_18], ax
mov     ax, [esi+92h]
mov     [esp+18h+var_16], ax
mov     ax, [esi+94h]
mov     [esp+18h+var_14], ax
lea     edx, [esi+0D4h]
cmp     byte ptr [esi+0Ch], 0
jz      short loc_4B1AA8
push    80h
push    0
mov     eax, ds:dword_5F897D
sar     eax, 18h
mov     eax, ds:dword_55115E[eax*8]
sar     eax, 10h
or      eax, 8000000h
push    eax
push    edx
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     ecx, 6000h
jmp     short loc_4B1AD3

loc_4B1AA8:
push    80h
push    0
mov     eax, ds:dword_5F897D
sar     eax, 18h
mov     eax, ds:dword_55115E[eax*8]
sar     eax, 10h
or      eax, 8000000h
push    eax
push    edx
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     ecx, 4000h

loc_4B1AD3:
xor     ebx, ebx
mov     edx, 8
lea     eax, [esp+2Ch+var_18]
call    sub_4E01FC
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 18h
mov     eax, esi
call    sub_4ED88B
mov     eax, esi
call    sub_4326CA
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B1A37 endp




sub_4B1B05 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch
var_18= dword ptr -18h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 50h
mov     ecx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E0F14
or      byte ptr [ecx+6], 20h
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Eh], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
call    sub_42A85C
mov     [esp+60h+var_20], ax
mov     ax, [ecx+64h]
and     ah, 0Fh
mov     [esp+60h+var_1E], ax
xor     edx, edx
mov     [esp+60h+var_1C], dx
mov     edx, esp
lea     eax, [esp+60h+var_20]
call    sub_4EF638
xor     ebx, ebx
mov     word ptr [esp+60h+var_18], bx
xor     esi, esi
mov     word ptr [esp+60h+var_18+2], bx
mov     [esp+60h+var_14], 0F000h
lea     ebx, [esp+60h+var_30]
lea     edx, [esp+60h+var_18]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [esp+60h+var_30]
mov     word ptr [esp+60h+var_18], ax
mov     eax, [esp+60h+var_2C]
mov     word ptr [esp+60h+var_18+2], ax
mov     eax, [esp+60h+var_28]
mov     [esp+60h+var_14], ax
mov     eax, ds:dword_5F897D+2
sar     eax, 18h
mov     edx, ds:dword_551162[eax*8]
sar     edx, 10h
mov     eax, [esp+2Eh]
sar     eax, 10h
imul    eax, edx
sar     eax, 4
mov     [ecx+44h], ax
mov     eax, ds:dword_5F897D+2
sar     eax, 18h
mov     eax, ds:dword_551162[eax*8]
sar     eax, 10h
mov     edx, [esp+60h+var_18]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ecx+46h], ax
mov     eax, ds:dword_5F897D+2
sar     eax, 18h
mov     eax, ds:dword_551162[eax*8]
sar     eax, 10h
mov     edx, [esp+60h+var_18+2]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ecx+48h], ax
mov     [ecx+4Ch], si
mov     word ptr [ecx+4Eh], 200h
mov     [ecx+50h], si
mov     [ecx+7Ch], si
mov     dword ptr [ecx+88h], 3D48000Eh
mov     dword ptr [ecx+8Ch], 2C808080h
lea     ebx, [ecx+14h]
lea     eax, [ecx+1Ch]
mov     edx, ebx
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
mov     dword ptr [ecx+78h], offset unk_530E90
mov     al, ds:byte_530E9C
mov     [ecx+96h], al
mov     al, ds:byte_530EA0
mov     [ecx+97h], al
mov     word ptr [ecx+98h], 18h
or      byte ptr [ecx], 2
mov     byte ptr [ecx+74h], 1
mov     eax, ecx
call    sub_4B22C2
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
sub     eax, 8
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
and     byte ptr [ecx+0Eh], 0FBh
inc     byte ptr [ecx+8]
mov     edx, ebx
mov     eax, 127h
call    sub_4D8BC3
mov     eax, ecx
call    sub_4B2076
test    ax, ax
jz      short loc_4B1CF6
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+0Dh], 0

loc_4B1CF6:
add     esp, 50h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B1B05 endp




sub_4B1CFE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
call    sub_4B22C2
xor     edx, edx
mov     eax, ecx
call    sub_4EE66E
test    eax, eax
jnz     short loc_4B1D1E
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4B1D4A

loc_4B1D1E:
mov     dword ptr [ecx+9Ch], 0

loc_4B1D28:
call    sub_4DE13B
test    eax, eax
jz      short loc_4B1D3A
mov     edx, eax
mov     eax, ecx
call    sub_4B2293

loc_4B1D3A:
mov     byte ptr [ecx], 0
mov     eax, ecx
call    sub_4DE3AC

loc_4B1D44:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B1D4A:
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
mov     eax, ecx
call    sub_4B21E8
lea     edx, [ecx+2Ch]
lea     eax, [ecx+34h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     ah, ds:byte_77E7D4
cmp     ah, 10h
jz      short loc_4B1D93
cmp     ah, 11h
jnz     short loc_4B1D9E

loc_4B1D93:
mov     eax, [ecx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jge     short loc_4B1D3A

loc_4B1D9E:
mov     eax, ecx
call    sub_4B2076
test    ax, ax
jz      short loc_4B1DB2
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+0Dh], 0

loc_4B1DB2:
mov     dh, [ecx+0Ah]
cmp     dh, 96h
jb      short loc_4B1DC4
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+0Dh], 0
jmp     short loc_4B1DDC

loc_4B1DC4:
mov     bl, dh
inc     bl
mov     [ecx+0Ah], bl
mov     bh, [ecx+9]
inc     bh
mov     [ecx+9], bh
cmp     bh, 5
jbe     short loc_4B1DDC
mov     byte ptr [ecx+9], 0

loc_4B1DDC:
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
sub     eax, 8
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
xor     eax, eax
mov     al, [ecx+9]
mov     al, ds:byte_530E9C[eax*8]
mov     [ecx+96h], al
xor     eax, eax
mov     al, [ecx+9]
mov     al, ds:byte_530EA0[eax*8]
mov     [ecx+97h], al
jmp     loc_4B1D44
sub_4B1CFE endp




sub_4B1E29 proc near
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
mov     byte ptr [ecx+96h], 0D8h
mov     byte ptr [ecx+97h], 0D8h
mov     word ptr [ecx+98h], 20h ; ' '
call    sub_4DE13B
test    eax, eax
jz      short loc_4B1E9D
mov     edx, eax
mov     eax, ecx
call    sub_4B2293

loc_4B1E9D:
mov     byte ptr [ecx], 0
mov     eax, ecx
call    sub_4DE3AC
pop     edx
pop     ecx
retn
sub_4B1E29 endp




sub_4B1EAA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     edx, edx
call    sub_4EE66E
test    eax, eax
jnz     short loc_4B1EC3
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4B1EE8

loc_4B1EC3:
mov     dword ptr [ecx+9Ch], 0
call    sub_4DE13B
test    eax, eax
jz      loc_4B1D3A
mov     edx, eax
mov     eax, ecx
call    sub_4B2293
jmp     loc_4B1D3A

loc_4B1EE8:
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
call    sub_4B21E8
lea     edx, [ecx+2Ch]
lea     eax, [ecx+34h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     ah, ds:byte_77E7D4
cmp     ah, 10h
jz      short loc_4B1F27
cmp     ah, 11h
jnz     short loc_4B1F36

loc_4B1F27:
mov     eax, [ecx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jge     loc_4B1D3A

loc_4B1F36:
mov     eax, ecx
call    sub_4B2076
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
sub     eax, 8
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
xor     eax, eax
mov     al, [ecx+9]
mov     al, ds:byte_530E9C[eax*8]
mov     [ecx+96h], al
xor     eax, eax
mov     al, [ecx+9]
mov     al, ds:byte_530EA0[eax*8]
mov     [ecx+97h], al
cmp     word ptr [ecx+44h], 0
jz      short loc_4B1F9D
mov     dh, [ecx+9]
inc     dh
mov     [ecx+9], dh
cmp     dh, 5
jbe     short loc_4B1F9D
mov     byte ptr [ecx+9], 0

loc_4B1F9D:
mov     eax, ecx
call    sub_4B22C2
mov     bh, [ecx+0Dh]
cmp     bh, 1Eh
jge     loc_4B1D28
cmp     bh, 0Fh
jge     short loc_4B1FBC
mov     eax, 1
jmp     short loc_4B1FC1

loc_4B1FBC:
mov     eax, 0FFFFFFFFh

loc_4B1FC1:
mov     edx, [ecx+0Ah]
sar     edx, 18h
cwde
test    edx, eax
jz      short loc_4B1FF4
mov     eax, [ecx+8Ch]
and     eax, 0FFh
cmp     eax, 0FFh
jnz     short loc_4B1FEA
mov     dword ptr [ecx+8Ch], 2C808080h
jmp     short loc_4B1FF4

loc_4B1FEA:
mov     dword ptr [ecx+8Ch], 2CFFFFFFh

loc_4B1FF4:
inc     byte ptr [ecx+0Dh]
jmp     loc_4B1D44
sub_4B1EAA endp




sub_4B1FFC proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     dword ptr [eax+88h], 3D48000Eh
mov     dword ptr [eax+8Ch], 2C808080h
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
mov     byte ptr [ecx+96h], 0D8h
mov     byte ptr [ecx+97h], 0D8h
mov     word ptr [ecx+98h], 20h ; ' '
or      byte ptr [ecx], 2
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B1FFC endp




sub_4B2076 proc near

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
mov     byte ptr [eax+74h], 1
call    sub_4B22C2
mov     eax, ebx
call    sub_42DE56
mov     ebp, eax
test    eax, eax
jz      loc_4B21DC
test    ah, 10h
jz      loc_4B218D
cmp     word ptr [ebx+46h], 0
jge     short loc_4B20BA
mov     eax, [ebx+44h]
sar     eax, 10h
neg     eax
jmp     short loc_4B20C0

loc_4B20BA:
mov     eax, [ebx+44h]
sar     eax, 10h

loc_4B20C0:
cmp     eax, 1000h
jg      short loc_4B20F4
mov     word ptr [ebx+44h], 0
mov     word ptr [ebx+46h], 0
mov     word ptr [ebx+48h], 0
mov     word ptr [ebx+4Ch], 0
mov     word ptr [ebx+4Eh], 0
mov     word ptr [ebx+50h], 0
mov     [esp+1Ch+var_1C], 1
jmp     short loc_4B2129

loc_4B20F4:
mov     edx, [ebx+44h]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 5
test    eax, eax
jge     short loc_4B210A
neg     eax

loc_4B210A:
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

loc_4B2129:
cmp     ds:byte_77E7D4, 0Bh
jnz     short loc_4B2175
mov     eax, [ebx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4B2175
mov     eax, ebx
call    sub_4DE3AC
lea     edx, [ebx+14h]
mov     eax, 102h
call    sub_4D8BC3
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4B216C
mov     ecx, 11h
lea     edi, [eax+14h]
lea     esi, [ebx+88h]
rep movsd

loc_4B216C:
mov     eax, ebx
call    sub_4B232C
jmp     short loc_4B21D2

loc_4B2175:
lea     edx, [ebx+14h]
mov     eax, 129h
call    sub_4D8BC3
call    sub_4DE13B
test    eax, eax
jz      short loc_4B21D2
jmp     short loc_4B21B7

loc_4B218D:
cmp     ds:byte_77E7D4, 0Bh
jnz     short loc_4B21A1
mov     eax, [ebx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jz      short loc_4B21AE

loc_4B21A1:
lea     edx, [ebx+14h]
mov     eax, 129h
call    sub_4D8BC3

loc_4B21AE:
call    sub_4DE13B
test    eax, eax
jz      short loc_4B21D2

loc_4B21B7:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
mov     ecx, 11h
lea     edi, [eax+14h]
lea     esi, [ebx+88h]
rep movsd

loc_4B21D2:
lea     eax, [ebx+44h]
mov     edx, ebp
call    sub_42D90F

loc_4B21DC:
mov     eax, [esp+1Ch+var_1C]
add     esp, 4
pop     ebp
jmp     loc_4B1D44
sub_4B2076 endp




sub_4B21E8 proc near
push    edx
mov     dx, [eax+4Ch]
add     [eax+44h], dx
mov     dx, [eax+4Eh]
add     [eax+46h], dx
mov     dx, [eax+50h]
add     [eax+48h], dx
mov     edx, [eax+42h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4B2217
mov     word ptr [eax+44h], 0A000h
jmp     short loc_4B2225

loc_4B2217:
cmp     word ptr [eax+44h], 6000h
jle     short loc_4B2225
mov     word ptr [eax+44h], 6000h

loc_4B2225:
mov     edx, [eax+44h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4B223B
mov     word ptr [eax+46h], 0A000h
jmp     short loc_4B2249

loc_4B223B:
cmp     word ptr [eax+46h], 6000h
jle     short loc_4B2249
mov     word ptr [eax+46h], 6000h

loc_4B2249:
mov     edx, [eax+46h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4B225F
mov     word ptr [eax+48h], 0A000h
jmp     short loc_4B226D

loc_4B225F:
cmp     word ptr [eax+48h], 6000h
jle     short loc_4B226D
mov     word ptr [eax+48h], 6000h

loc_4B226D:
mov     edx, [eax+42h]
sar     edx, 10h
shl     edx, 8
add     [eax+1Ch], edx
mov     edx, [eax+44h]
sar     edx, 10h
shl     edx, 8
add     [eax+20h], edx
mov     edx, [eax+46h]
sar     edx, 10h
shl     edx, 8
add     [eax+24h], edx
pop     edx
retn
sub_4B21E8 endp




sub_4B2293 proc near
push    esi
push    edi
mov     byte ptr [edx], 5
mov     byte ptr [edx+2], 80h
mov     byte ptr [edx+3], 2
mov     byte ptr [edx+0Eh], 1
cmp     byte ptr ds:dword_5F897D+3, 0
jnz     short loc_4B22B3
mov     byte ptr [edx+0Dh], 1
jmp     short loc_4B22B7

loc_4B22B3:
mov     byte ptr [edx+0Dh], 2

loc_4B22B7:
lea     edi, [edx+48h]
lea     esi, [eax+14h]
movsd
movsd
pop     edi
pop     esi
retn
sub_4B2293 endp




sub_4B22C2 proc near
push    edx
lea     edx, [eax+14h]
mov     eax, (offset dword_5F8376+2)
call    sub_4B22ED
cmp     eax, 1C00h
jb      short loc_4B22E3
mov     ds:dword_55CEF0, 80h
pop     edx
retn

loc_4B22E3:
shr     eax, 6
mov     ds:dword_55CEF0, eax
pop     edx
retn
sub_4B22C2 endp




sub_4B22ED proc near
push    ebx
push    ecx
push    esi
movsx   ecx, word ptr [eax]
movsx   ebx, word ptr [edx]
sub     ecx, ebx
mov     ebx, [eax]
sar     ebx, 10h
mov     esi, [edx]
sar     esi, 10h
sub     ebx, esi
mov     esi, [eax+2]
sar     esi, 10h
mov     eax, [edx+2]
sar     eax, 10h
sub     esi, eax
mov     eax, esi
mov     edx, ecx
imul    edx, ecx
imul    ebx, ebx
add     edx, ebx
imul    eax, esi
add     eax, edx
call    sub_4EF075
pop     esi
pop     ecx
pop     ebx
retn
sub_4B22ED endp




sub_4B232C proc near
push    esi
push    edi
mov     byte ptr [edx], 1
mov     byte ptr [edx+2], 19h
mov     byte ptr [edx+3], 0
jmp     loc_4B22B7
sub_4B232C endp




sub_4B233E proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4B2347[ecx*4]
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4B233E endp




sub_4B2358 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     eax, [eax+0Ah]
sar     eax, 18h
call    sub_4E0F14
call    sub_42A85C
mov     edi, eax
mov     ebx, [ecx+62h]
sar     ebx, 10h
movsx   ebp, ax
mov     edx, ebp
mov     eax, ecx
call    sub_4B270B
call    sub_4DE0BF
mov     esi, eax
test    eax, eax
jz      short loc_4B23B8
mov     edx, eax
mov     eax, ecx
call    sub_4B26DB
mov     edx, [ecx+62h]
sar     edx, 10h
call    rand_
and     eax, 1Fh
add     edx, 80h
lea     ebx, [edx+eax]
mov     edx, ebp
mov     eax, esi
call    sub_4B270B

loc_4B23B8:
call    sub_4DE0BF
mov     esi, eax
test    eax, eax
jz      short loc_4B23ED
mov     edx, eax
mov     eax, ecx
call    sub_4B26DB
mov     edx, [ecx+62h]
sar     edx, 10h
call    rand_
and     eax, 1Fh
sub     edx, 80h
lea     ebx, [edx+eax]
movsx   edx, di
mov     eax, esi
call    sub_4B270B

loc_4B23ED:
cmp     ds:byte_5F898C, 0
jle     loc_4B24D7
call    sub_4DE0BF
mov     esi, eax
test    eax, eax
jz      short loc_4B242F
mov     edx, eax
mov     eax, ecx
call    sub_4B26DB
mov     edx, [ecx+62h]
sar     edx, 10h
call    rand_
and     eax, 1Fh
add     edx, 100h
lea     ebx, [edx+eax]
movsx   edx, di
mov     eax, esi
call    sub_4B270B

loc_4B242F:
call    sub_4DE0BF
mov     esi, eax
test    eax, eax
jz      short loc_4B2464
mov     edx, eax
mov     eax, ecx
call    sub_4B26DB
mov     edx, [ecx+62h]
sar     edx, 10h
call    rand_
and     eax, 1Fh
sub     edx, 100h
lea     ebx, [edx+eax]
movsx   edx, di
mov     eax, esi
call    sub_4B270B

loc_4B2464:
cmp     ds:byte_5F898C, 1
jle     short loc_4B24D7
call    sub_4DE0BF
mov     esi, eax
test    eax, eax
jz      short loc_4B24A2
mov     edx, eax
mov     eax, ecx
call    sub_4B26DB
mov     edx, [ecx+62h]
sar     edx, 10h
call    rand_
and     eax, 1Fh
add     edx, 180h
lea     ebx, [edx+eax]
movsx   edx, di
mov     eax, esi
call    sub_4B270B

loc_4B24A2:
call    sub_4DE0BF
mov     esi, eax
test    eax, eax
jz      short loc_4B24D7
mov     edx, eax
mov     eax, ecx
call    sub_4B26DB
mov     edx, [ecx+62h]
sar     edx, 10h
call    rand_
and     eax, 1Fh
sub     edx, 180h
lea     ebx, [edx+eax]
movsx   edx, di
mov     eax, esi
call    sub_4B270B

loc_4B24D7:
lea     edx, [ecx+14h]
mov     eax, 12Ah
call    sub_4D8BC3
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B2358 endp




sub_4B24EB proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, 20h ; ' '
call    sub_4EE66E
test    eax, eax
jnz     short loc_4B2508
mov     dx, [ecx+7Ch]
test    dx, dx
jz      short loc_4B251B

loc_4B2508:
mov     eax, ecx
call    sub_4B25F9

loc_4B250F:
mov     eax, ecx
call    sub_4DE3AC
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4B251B:
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
mov     ax, [ecx+4Ch]
add     [ecx+44h], ax
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     ax, [ecx+50h]
add     [ecx+48h], ax
mov     [ecx+7Ch], dx
mov     al, [ecx+0Bh]
mov     ah, al
inc     ah
mov     [ecx+0Bh], ah
cmp     al, 5Ah ; 'Z'
jnb     short loc_4B250F
mov     dword ptr [ecx+8Ch], 2C808080h
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 8
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 8
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
add     [ecx+24h], eax
mov     eax, [ecx+1Ch]
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
mov     eax, ecx
call    sub_4B266C
mov     ah, [ecx+9]
inc     ah
mov     [ecx+9], ah
cmp     ah, 5
jbe     short loc_4B25D0
mov     byte ptr [ecx+9], 0

loc_4B25D0:
xor     eax, eax
mov     al, [ecx+9]
mov     al, ds:byte_530EEC[eax*8]
mov     [ecx+96h], al
xor     eax, eax
mov     al, [ecx+9]
mov     al, ds:byte_530EF0[eax*8]
mov     [ecx+97h], al
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B24EB endp




sub_4B25F9 proc near
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
mov     esi, eax
test    eax, eax
jz      short loc_4B2635
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     eax, ds:dword_5F8985
sar     eax, 18h
cmp     eax, 2
jle     short loc_4B2626
mov     eax, 2

loc_4B2626:
mov     [esi+0Dh], al
mov     byte ptr [esi+0Eh], 1
lea     edi, [esi+48h]
lea     esi, [edx+14h]
movsd
movsd

loc_4B2635:
pop     edi
pop     esi
pop     edx
retn
sub_4B25F9 endp




sub_4B2639 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4B2669
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 1
mov     bx, [edx+14h]
mov     [eax+1Ch], bx
mov     bx, [edx+16h]
mov     [eax+1Eh], bx
mov     dx, [edx+18h]
mov     [eax+20h], dx

loc_4B2669:
pop     edx
pop     ebx
retn
sub_4B2639 endp




sub_4B266C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     edx, 6
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     edx, eax
lea     eax, [ecx+14h]
lea     ebx, [ecx+2Ch]
lea     esi, [ecx+0D4h]
or      edx, 88000000h
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4B26B1
push    80h
push    0
push    edx
push    esi
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    6000h
jmp     short loc_4B26C5

loc_4B26B1:
push    80h
push    0
push    edx
push    esi
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    4000h

loc_4B26C5:
push    200h
mov     ecx, 20h ; ' '
mov     edx, ecx
call    sub_4E02CB
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B266C endp




sub_4B26DB proc near
push    ebx
push    esi
push    edi
mov     byte ptr [edx], 1
mov     bl, [eax+2]
mov     [edx+2], bl
mov     bl, [eax+0Ch]
mov     [edx+0Ch], bl
lea     edi, [edx+14h]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [edx+1Ch]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
mov     ax, [eax+64h]
mov     [edx+64h], ax
pop     edi
pop     esi
pop     ebx
retn
sub_4B26DB endp




sub_4B270B proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= dword ptr -1Ch
var_18= word ptr -18h
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 50h
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_530EE0
call    rand_
xor     ah, ah
and     al, 0Fh
sub     edx, 10h
sub     edx, eax
mov     [esp+5Ch+var_14], dx
and     bh, 0Fh
mov     [esp+5Ch+var_12], bx
xor     edx, edx
mov     [esp+5Ch+var_10], dx
mov     edx, esp
lea     eax, [esp+5Ch+var_14]
call    sub_4EF638
xor     ebx, ebx
mov     word ptr [esp+5Ch+var_1C], bx
mov     word ptr [esp+5Ch+var_1C+2], bx
mov     [esp+5Ch+var_18], 0F000h
lea     ebx, [esp+5Ch+var_2C]
lea     edx, [esp+5Ch+var_1C]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [esp+5Ch+var_2C]
mov     word ptr [esp+5Ch+var_1C], ax
mov     eax, [esp+5Ch+var_28]
mov     word ptr [esp+5Ch+var_1C+2], ax
mov     eax, [esp+5Ch+var_24]
mov     [esp+5Ch+var_18], ax
call    rand_
mov     ebx, eax
and     ebx, 1Fh
mov     edx, 6
mov     eax, offset byte_5F8364
call    sub_4EE62E
add     eax, ebx
mov     edx, [esp+3Eh]
sar     edx, 10h
imul    edx, eax
shr     edx, 4
mov     [ecx+44h], dx
mov     edx, [esp+5Ch+var_1C]
sar     edx, 10h
imul    edx, eax
shr     edx, 4
mov     [ecx+46h], dx
mov     edx, [esp+5Ch+var_1C+2]
sar     edx, 10h
imul    eax, edx
shr     eax, 4
mov     [ecx+48h], ax
lea     edi, [ecx+0A4h]
lea     esi, [esp+5Ch+var_1C]
movsd
movsd
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 200h
mov     word ptr [ecx+50h], 0
mov     dword ptr [ecx+88h], 3D48000Eh
mov     dword ptr [ecx+8Ch], 2C808080h
mov     eax, [ecx+1Ch]
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
mov     al, ds:byte_530EEC
mov     [ecx+96h], al
mov     al, ds:byte_530EF0
mov     [ecx+97h], al
mov     word ptr [ecx+98h], 18h
mov     byte ptr [ecx+0Bh], 0
mov     edx, esp
mov     eax, ecx
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_4B28AA
mov     word ptr [ecx+1Ah], 6208h
mov     word ptr [ecx+32h], 6208h
jmp     short loc_4B28B6

loc_4B28AA:
mov     word ptr [ecx+1Ah], 4208h
mov     word ptr [ecx+32h], 4208h

loc_4B28B6:
mov     eax, ecx
call    sub_4B266C
add     esp, 50h
pop     edi
pop     esi
pop     ecx
retn
sub_4B270B endp




sub_4B28C4 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B28CA[edx*4]
pop     edx
retn
sub_4B28C4 endp




sub_4B28D3 proc near
push    edx
mov     edx, eax
mov     eax, [eax+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     byte ptr [edx+0Bh], 0
inc     byte ptr [edx+8]
add     edx, 14h
mov     eax, 12Bh
call    sub_4D8BC3
pop     edx
retn
sub_4B28D3 endp




sub_4B28F7 proc near

var_5C= dword ptr -5Ch
var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= dword ptr -50h
var_4A= dword ptr -4Ah
var_46= dword ptr -46h
var_40= byte ptr -40h
var_38= dword ptr -38h
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
sub     esp, 40h
push    eax
inc     byte ptr [eax+0Bh]
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     [esp+5Ch+var_28], eax
lea     edi, [esp+5Ch+var_38]
lea     esi, [eax+14h]
movsd
movsd
mov     edx, 7
mov     eax, offset byte_5F8364
call    sub_4EE62E
mov     [esp+5Ch+var_1C], eax
mov     eax, ds:dword_5F8991
sar     eax, 18h
mov     eax, ds:(off_530F28+2)[eax*2]
sar     eax, 10h
mov     [esp+5Ch+var_24], eax
xor     edx, edx
mov     [esp+5Ch+var_20], edx
jmp     loc_4B29DF

loc_4B2950:
mov     eax, [esp+5Ch+var_4A]
sar     eax, 10h
mov     edx, edi
imul    edx, eax
sar     edx, 0Ch
mov     eax, [ebp+46h]
sar     eax, 10h
add     eax, edx
mov     [ebp+48h], ax
mov     edx, [esp+5Ch+var_46]
sar     edx, 10h
imul    edx, edi
sar     edx, 0Ch
mov     eax, [ebp+4Ah]
sar     eax, 10h
add     eax, edx
mov     [ebp+4Ch], ax
lea     edi, [esp+5Ch+var_30]
lea     esi, [ebp+48h]
movsd
movsd
xor     edx, edx
mov     dl, [ebp+0Ah]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_5308D8
add     ecx, eax
mov     ebx, 1
lea     edx, [esp+5Ch+var_40]
lea     eax, [esp+5Ch+var_30]
call    sub_42DF6E
mov     eax, [esp+5Ch+var_30]
mov     [ebp+48h], ax
mov     eax, [esp+5Ch+var_30+2]
mov     [ebp+4Ah], ax
mov     eax, [esp+5Ch+var_2C]
mov     [ebp+4Ch], ax

loc_4B29CD:
mov     ebx, [esp+5Ch+var_20]
inc     ebx
mov     [esp+5Ch+var_20], ebx
cmp     ebx, 40h ; '@'
jnb     loc_4B2B0D

loc_4B29DF:
mov     eax, [esp+5Ch+var_20]
mov     ebp, eax
shl     ebp, 2
sub     ebp, eax
shl     ebp, 2
sub     ebp, eax
shl     ebp, 3
add     ebp, offset unk_572D5C
cmp     byte ptr [ebp+0], 0
jz      short loc_4B29CD
cmp     byte ptr [ebp+2], 87h
jnz     short loc_4B29CD
cmp     byte ptr [ebp+8], 5
jnb     short loc_4B29CD
lea     edi, [esp+5Ch+var_4A+2]
lea     esi, [ebp+48h]
movsd
movsd
mov     ebx, [esp+22h]
sar     ebx, 10h
mov     eax, [esp+5Ch+var_4A]
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     [esp+5Ch+var_58], edx
mov     ecx, [esp+5Ch+var_1C]
add     edx, ecx
lea     eax, [ecx+ecx]
cmp     edx, eax
ja      short loc_4B29CD
mov     edx, [esp+5Ch+var_38]
sar     edx, 10h
mov     ecx, [esp+5Ch+var_4A+2]
sar     ecx, 10h
sub     edx, ecx
mov     [esp+5Ch+var_54], edx
add     edx, [esp+5Ch+var_1C]
cmp     edx, eax
ja      loc_4B29CD
mov     ecx, [esp+5Ch+var_38+2]
sar     ecx, 10h
mov     edx, [esp+5Ch+var_46]
sar     edx, 10h
mov     esi, ecx
sub     esi, edx
mov     [esp+5Ch+var_50], esi
mov     edi, [esp+5Ch+var_1C]
lea     edx, [esi+edi]
cmp     edx, eax
ja      loc_4B29CD
mov     edx, [esp+5Ch+var_54]
imul    edx, edx
mov     eax, [esp+5Ch+var_58]
imul    eax, eax
add     edx, eax
mov     eax, esi
imul    eax, esi
add     edx, eax
mov     eax, edi
imul    eax, edi
cmp     edx, eax
jnb     loc_4B29CD
lea     edx, [esp+5Ch+var_4A+2]
lea     eax, [esp+5Ch+var_58]
call    sub_4EF932
lea     edi, [esp+5Ch+var_40]
lea     esi, [ebp+48h]
movsd
movsd
mov     edi, [esp+5Ch+var_24]
test    edi, edi
jg      loc_4B2950
call    rand_
mov     edx, eax
and     edx, 1Fh
mov     eax, [esp+5Ch+var_4A]
sar     eax, 10h
sub     edx, 10h
imul    eax, edx
sar     eax, 0Ch
sub     ebx, eax
mov     [ebp+48h], bx
mov     eax, [esp+5Ch+var_38+2]
sub     eax, 8Ch
mov     [ebp+4Ah], ax
call    rand_
and     eax, 1Fh
mov     edx, [esp+5Ch+var_46]
sar     edx, 10h
sub     eax, 10h
imul    eax, edx
sar     eax, 0Ch
sub     ecx, eax
mov     [ebp+4Ch], cx

loc_4B2B0D:
mov     eax, [esp+5Ch+var_28]
cmp     byte ptr [eax+170h], 7
jnz     short loc_4B2B5D
mov     dx, [eax+632h]
test    dx, dx
jz      short loc_4B2B39
cmp     dx, 7FFFh
jz      short loc_4B2B49
mov     ecx, edx
dec     ecx
mov     [eax+632h], cx
jmp     short loc_4B2B49

loc_4B2B39:
xor     ebx, ebx
xor     edx, edx
mov     eax, 12Ch
call    sub_4D89E4
jmp     short loc_4B2B5D

loc_4B2B49:
mov     eax, [esp+5Ch+var_28]
mov     al, [eax+100h]
cmp     al, ds:byte_550FCE
jbe     short loc_4B2B65
jmp     short loc_4B2B39

loc_4B2B5D:
mov     eax, [esp+5Ch+var_5C]
call    sub_4DE3AC

loc_4B2B65:
add     esp, 44h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B28F7 endp




sub_4B2B6F proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4B2B78[ecx*4]
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4B2B6F endp




sub_4B2B89 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 20h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_530F3C
call    rand_
mov     edx, eax
xor     dh, ah
and     dl, 7
sub     edx, 4
add     edx, edx
call    sub_42A85C
add     eax, edx
mov     [esp+34h+var_24], ax
call    rand_
mov     edx, eax
xor     dh, ah
and     dl, 7
sub     edx, 4
add     edx, edx
mov     ax, [ecx+64h]
and     ah, 0Fh
add     eax, edx
mov     [esp+34h+var_22], ax
xor     edx, edx
mov     [esp+34h+var_20], dx
lea     esi, [ecx+8Ch]
mov     edx, esi
lea     eax, [esp+34h+var_24]
call    sub_4EF638
xor     ebx, ebx
mov     [esp+34h+var_24], bx
mov     [esp+34h+var_22], bx
mov     [esp+34h+var_20], 0F000h
mov     ebx, esp
lea     edx, [esp+34h+var_24]
mov     eax, esi
call    sub_4EF1FB
mov     eax, [esp+34h+var_34]
mov     [ecx+44h], ax
mov     eax, [esp+34h+var_30]
mov     [ecx+46h], ax
mov     eax, [esp+34h+var_2C]
mov     [ecx+48h], ax
mov     edx, 200h
mov     [esp+34h+var_30], edx
mov     [esp+34h+var_2C], edx
mov     [esp+34h+var_34], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     word ptr [ecx+7Ch], 0
lea     eax, [ecx+88h]
mov     edx, [ecx+1Ch]
sar     edx, 10h
mov     [ecx+14h], dx
mov     [eax+34h], dx
mov     edx, [ecx+20h]
sar     edx, 10h
mov     [ecx+16h], dx
mov     [eax+36h], dx
mov     edx, [ecx+24h]
sar     edx, 10h
mov     [ecx+18h], dx
mov     [eax+38h], dx
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
lea     edi, [ecx+0E4h]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [esp+34h+var_1C]
lea     esi, [ecx+0E4h]
movsd
movsd
lea     edi, [ecx+0ECh]
lea     esi, [esp+34h+var_1C]
movsd
movsd
lea     edi, [esp+34h+var_1C]
lea     esi, [ecx+0ECh]
movsd
movsd
lea     edi, [ecx+0F4h]
lea     esi, [esp+34h+var_1C]
movsd
movsd
lea     edi, [esp+34h+var_1C]
lea     esi, [ecx+0F4h]
movsd
movsd
lea     edi, [ecx+0FCh]
lea     esi, [esp+34h+var_1C]
movsd
movsd
mov     dword ptr [eax+3Ch], offset unk_808080
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
cmp     byte ptr [ecx+3], 80h
jb      short loc_4B2D3D
mov     eax, [ecx+0CCh]
or      eax, [ecx+0D0h]
jnz     short loc_4B2D3D
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     byte ptr [ecx+3], 0

loc_4B2D3D:
mov     edx, 8
mov     eax, offset byte_5F8364
call    sub_4EE62E
mov     [ecx+0Bh], al
inc     byte ptr [ecx+8]
mov     eax, ecx
call    sub_4B2F88
lea     edx, [ecx+14h]
mov     eax, 12Dh
call    sub_4D8BC3
add     esp, 20h

loc_4B2D69:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B2B89 endp




sub_4B2D6F proc near

var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_2C= byte ptr -2Ch
var_24= byte ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 24h
mov     ebp, eax
mov     edx, 20h ; ' '
call    sub_4EE66E
test    eax, eax
jnz     short loc_4B2D8F
cmp     word ptr [ebp+7Ch], 0
jz      short loc_4B2DAE

loc_4B2D8F:
mov     eax, ebp
call    sub_4DE3AC
cmp     byte ptr [ebp+3], 80h
jb      short loc_4B2DA7
mov     eax, [ebp+0Ah]
sar     eax, 18h
call    sub_4E0F14

loc_4B2DA7:
mov     eax, ebp
call    sub_4B3016

loc_4B2DAE:
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
lea     eax, [ebp+88h]
mov     [esp+3Ch+var_1C], eax
mov     al, [ebp+0Bh]
mov     ah, al
dec     ah
mov     [ebp+0Bh], ah
test    al, al
jbe     loc_4B2F6E
cmp     byte ptr [ebp+3], 80h
jb      loc_4B2ED3
mov     eax, [ebp+0CCh]
or      eax, [ebp+0D0h]
jz      loc_4B2F5A
mov     edx, [ebp+0CAh]
sar     edx, 10h
mov     eax, [ebp+12h]
sar     eax, 10h
sub     edx, eax
mov     [esp+3Ch+var_3C], edx
mov     eax, [ebp+0CCh]
sar     eax, 10h
mov     edx, [ebp+14h]
sar     edx, 10h
sub     eax, edx
mov     [esp+3Ch+var_38], eax
mov     edx, [ebp+0CEh]
sar     edx, 10h
mov     eax, [ebp+16h]
sar     eax, 10h
sub     edx, eax
mov     [esp+3Ch+var_34], edx
mov     eax, [esp+3Ch+var_3C]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4B2E97
mov     eax, [esp+3Ch+var_38]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4B2E97
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
jbe     short loc_4B2EA5

loc_4B2E97:
sar     [esp+3Ch+var_3C], 2
sar     [esp+3Ch+var_38], 2
sar     [esp+3Ch+var_34], 2

loc_4B2EA5:
lea     edx, [esp+3Ch+var_24]
mov     eax, esp
call    sub_4EF932
lea     edx, [ebp+44h]
mov     ecx, 0F746EA4h
mov     ebx, 424h
lea     eax, [esp+3Ch+var_24]
lea     esi, [esp+3Ch+var_2C]
call    sub_4DFFB5
lea     edi, [ebp+44h]
lea     esi, [esp+3Ch+var_2C]
movsd
movsd

loc_4B2ED3:
mov     eax, ds:dword_5F8995+2
sar     eax, 18h
mov     ax, ds:word_530F48[eax*2]
and     eax, 0FFFFh
mov     edx, [ebp+42h]
sar     edx, 10h
imul    edx, eax
shl     edx, 4
add     [ebp+1Ch], edx
mov     edx, [ebp+44h]
sar     edx, 10h
imul    edx, eax
shl     edx, 4
add     [ebp+20h], edx
mov     edx, [ebp+46h]
sar     edx, 10h
imul    eax, edx
shl     eax, 4
add     [ebp+24h], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
mov     [ebp+14h], ax
mov     edx, [esp+3Ch+var_1C]
mov     [edx+34h], ax
mov     eax, [ebp+20h]
sar     eax, 10h
mov     [ebp+16h], ax
mov     [edx+36h], ax
mov     eax, [ebp+24h]
sar     eax, 10h
mov     [ebp+18h], ax
mov     [edx+38h], ax
mov     eax, ebp
call    sub_4B2F88
mov     eax, ebp
call    sub_4B305F

loc_4B2F51:
add     esp, 24h
pop     ebp
jmp     loc_4B2D69

loc_4B2F5A:
mov     eax, [ebp+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     byte ptr [ebp+3], 0
jmp     loc_4B2ED3

loc_4B2F6E:
mov     eax, ebp
call    sub_4DE3AC
cmp     byte ptr [ebp+3], 80h
jb      short loc_4B2F51
mov     eax, [ebp+0Ah]
sar     eax, 18h
call    sub_4E0F14
jmp     short loc_4B2F51
sub_4B2D6F endp




sub_4B2F88 proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 8
mov     ecx, eax
mov     edx, 8
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     ebx, eax
mov     ax, [ecx+2Ch]
mov     [esp+14h+var_14], ax
mov     ax, [ecx+2Eh]
mov     [esp+14h+var_12], ax
mov     ax, [ecx+30h]
mov     [esp+14h+var_10], ax
lea     eax, [ecx+14h]
lea     edx, [ecx+0D4h]
or      ebx, 88000000h
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4B2FE6
push    80h
push    0
push    ebx
push    edx
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    6000h
jmp     short loc_4B2FFA

loc_4B2FE6:
push    80h
push    0
push    ebx
push    edx
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    4000h

loc_4B2FFA:
push    200h
mov     ecx, 30h ; '0'
lea     ebx, [esp+30h+var_14]
mov     edx, ecx
call    sub_4E02CB
add     esp, 8
pop     edx
pop     ecx
pop     ebx
retn
sub_4B2F88 endp




sub_4B3016 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4B305C
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     ecx, ds:dword_5F8995
sar     ecx, 18h
mov     cl, ds:byte_530F60[ecx]
mov     [eax+0Dh], cl
mov     byte ptr [eax+0Eh], 1
mov     cx, [edx+14h]
mov     [eax+48h], cx
mov     cx, [edx+16h]
mov     [eax+4Ah], cx
mov     dx, [edx+18h]
mov     [eax+4Ch], dx

loc_4B305C:
pop     edx
pop     ecx
retn
sub_4B3016 endp




sub_4B305F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
call    sub_4EE16B
test    eax, eax
jz      short loc_4B30B3
mov     edx, [edi+14h]
mov     [eax], edx
mov     edx, ds:dword_530F6C
or      edx, 52000000h
mov     [eax+4], edx
mov     edx, [edi+0E4h]
mov     [eax+8], edx
mov     edx, ds:dword_530F68
mov     [eax+0Ch], edx
mov     ecx, [edi+16h]
sar     ecx, 10h
shl     ecx, 10h
xor     edx, edx
mov     dx, [edi+0E8h]
or      ecx, edx
mov     [eax+10h], ecx
mov     dword ptr [eax+28h], 0E1000020h

loc_4B30B3:
xor     ecx, ecx
jmp     short loc_4B30C1

loc_4B30B7:
inc     ecx
cmp     ecx, 3
jge     loc_4B2D69

loc_4B30C1:
call    sub_4EE16B
test    eax, eax
jz      short loc_4B30B7
mov     edx, ecx
mov     ebx, [edi+edx*8+0E4h]
mov     [eax], ebx
mov     esi, ds:off_530F70[ecx*4]
or      esi, 52000000h
mov     [eax+4], esi
mov     esi, [edi+edx*8+0ECh]
mov     [eax+8], esi
mov     ebx, ds:dword_530F6C[ecx*4]
mov     [eax+0Ch], ebx
mov     ebx, [edi+edx*8+0E6h]
sar     ebx, 10h
shl     ebx, 10h
mov     dx, [edi+edx*8+0F0h]
and     edx, 0FFFFh
or      ebx, edx
mov     [eax+10h], ebx
mov     dword ptr [eax+28h], 0E1000020h
jmp     short loc_4B30B7
sub_4B305F endp




sub_4B3122 proc near
push    edx
and     byte ptr [eax+3], 7Fh
xor     edx, edx
mov     dl, [eax+3]
call    ds:off_530FDC[edx*4]
pop     edx
retn
sub_4B3122 endp




sub_4B3135 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B313B[edx*4]
pop     edx
retn
sub_4B3135 endp




sub_4B3144 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_530FA4
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     eax, ecx
call    sub_4B39B8
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
mov     dword ptr [ecx+0C4h], 2808080h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     eax, ecx
call    sub_4B3565
lea     edx, [ecx+14h]
mov     eax, 12Eh
call    sub_4D8BC3
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0Dh
mov     byte ptr [ecx+8], 1
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B3144 endp




sub_4B31E1 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     ah, [eax+0Fh]
dec     ah
mov     [edx+0Fh], ah
jnz     short loc_4B31FD
mov     eax, edx
call    sub_4DE3AC
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4B31FD:
cmp     ah, 9
jnz     short loc_4B3219
cmp     ds:byte_5F89A2, 0
jz      short loc_4B3212
mov     eax, edx
call    sub_4B38E8

loc_4B3212:
mov     eax, edx
call    sub_4B390B

loc_4B3219:
lea     edi, [edx+34h]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [edx+2Ch]
lea     esi, [edx+14h]
movsd
movsd
mov     eax, edx
call    sub_4B39B8
mov     eax, edx
call    sub_4B3565
mov     ch, [edx+0Fh]
cmp     ch, 0Bh
jge     short loc_4B324D
cmp     ch, 7
jle     short loc_4B324D
mov     eax, edx
call    sub_4B375F

loc_4B324D:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B31E1 endp




sub_4B3252 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B3258[edx*4]
pop     edx
retn
sub_4B3252 endp




sub_4B3261 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= byte ptr -28h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
lea     ebp, [ecx+88h]
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_530FA4
call    sub_42A85C
mov     [ecx+54h], ax
mov     [esp+38h+var_20], ax
mov     ax, word ptr ds:dword_5F83B8+2
mov     [ecx+56h], ax
mov     [esp+38h+var_1E], ax
mov     word ptr [ecx+58h], 680h
mov     ax, [ecx+58h]
mov     [esp+38h+var_1C], ax
lea     ebx, [ecx+8Ch]
mov     edx, ebx
lea     eax, [esp+38h+var_20]
call    sub_4EF638
mov     edx, 200h
mov     [esp+38h+var_30], edx
mov     [esp+38h+var_34], edx
mov     [esp+38h+var_38], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
lea     eax, [ecx+44h]
mov     edx, 32h ; '2'
call    sub_4B3A21
lea     edi, [ecx+14h]
mov     esi, offset unk_5F882C
movsd
movsd
lea     edi, [esp+38h+var_28]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ebp+34h]
lea     esi, [esp+38h+var_28]
movsd
movsd
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
mov     dword ptr [ebp+3Ch], 2808080h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     eax, ecx
call    sub_4B3881
mov     byte ptr [ecx+0Eh], 4
mov     edx, 9
mov     eax, offset byte_5F8364
call    sub_4EE62E
mov     edx, eax
mov     ebx, 32h ; '2'
sar     edx, 1Fh
idiv    ebx
mov     [ecx+0Fh], al
mov     byte ptr [ecx+8], 1
add     esp, 20h

loc_4B338E:
pop     ebp

loc_4B338F:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B3261 endp




sub_4B3395 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+88h]
mov     ah, [eax+0Fh]
dec     ah
mov     [ecx+0Fh], ah
jnz     short loc_4B33B2

loc_4B33AC:
mov     byte ptr [ecx+8], 2
jmp     short loc_4B338F

loc_4B33B2:
xor     edx, edx
mov     eax, ecx
call    sub_4EE66E
test    eax, eax
jnz     short loc_4B33AC
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
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 8
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 8
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
add     [ecx+24h], eax
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ebx+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ebx+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ebx+38h], ax
mov     eax, ecx
call    sub_4B3881
jmp     loc_4B338F
sub_4B3395 endp




sub_4B342B proc near

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
mov     ecx, eax        ; int
add     eax, 88h
mov     ebx, [ecx+0Bh]
sar     ebx, 18h
mov     esi, ebx
shl     esi, 5
mov     edx, ebx
shl     edx, 15h
or      edx, 2000000h
shl     ebx, 0Dh
or      edx, ebx
or      edx, esi
mov     [eax+3Ch], edx
mov     ax, [ecx+54h]
mov     [esp+28h+var_18], ax
mov     ax, [ecx+56h]
mov     [esp+28h+var_16], ax
mov     ax, [ecx+58h]
mov     [esp+28h+var_14], ax
lea     ebx, [ecx+8Ch]
mov     edx, ebx
lea     eax, [esp+28h+var_18]
call    sub_4EF638
mov     edx, 200h
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_28], edx
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 4
add     eax, 100h
mov     [esp+28h+var_20], eax
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     ah, [ecx+0Eh]
dec     ah
mov     [ecx+0Eh], ah
jnz     short loc_4B34BD
mov     eax, ecx
call    sub_4DE3AC

loc_4B34BD:
add     esp, 18h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B342B endp




sub_4B34C5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B34CB[edx*4]
pop     edx
retn
sub_4B34C5 endp




sub_4B34D4 proc near
push    edx
or      byte ptr [eax], 22h
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+0Dh], 0
mov     dword ptr [eax+88h], 3D48002Ch
mov     dword ptr [eax+8Ch], 2E808080h
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     dl, ds:byte_530FD0[edx*2]
mov     [eax+96h], dl
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     dl, ds:byte_530FD1[edx*2]
mov     [eax+97h], dl
mov     word ptr [eax+98h], 60h ; '`'
mov     word ptr [eax+9Ah], 0Bh
pop     edx
retn
sub_4B34D4 endp




sub_4B352E proc near
push    edx
inc     byte ptr [eax+0Dh]
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     dl, ds:byte_530FD0[edx*2]
mov     [eax+96h], dl
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     dl, ds:byte_530FD1[edx*2]
mov     [eax+97h], dl
cmp     byte ptr [eax+0Dh], 5
jle     short loc_4B3563
call    sub_4DE3AC

loc_4B3563:
pop     edx
retn
sub_4B352E endp




sub_4B3565 proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_30= dword ptr -30h
var_28= dword ptr -28h
var_24= word ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 58h
mov     ebp, eax
mov     eax, ds:dword_5F899D
sar     eax, 18h
mov     [esp+70h+var_1C], eax
mov     edx, 9
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     [esp+70h+var_20], eax
mov     ecx, 0Ch
mov     edi, esp
mov     esi, offset unk_5F85FC
rep movsd
lea     edi, [esp+70h+var_30]
mov     esi, offset unk_5F882C
movsd
movsd
lea     ecx, [ebp+8Ch]
mov     eax, ecx
call    sub_4EF184
mov     edx, 1000h
mov     [esp+70h+var_38], edx
mov     [esp+70h+var_3C], edx
mov     [esp+70h+var_40], edx
lea     edx, [esp+70h+var_40]
mov     eax, ecx
call    sub_4EF689
mov     ebx, ecx
mov     edx, ecx
mov     eax, esp
call    sub_4EF388
xor     edx, edx
mov     word ptr [esp+70h+var_28], dx
mov     word ptr [esp+70h+var_28+2], 1000h
mov     [esp+70h+var_24], dx
lea     ebx, [esp+70h+var_40]
lea     edx, [esp+70h+var_28]
mov     eax, ecx
call    sub_4EF1FB
mov     edx, [esp+70h+var_40]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sar     eax, 4
mov     word ptr [esp+70h+var_28], ax
mov     edx, [esp+70h+var_3C]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sar     eax, 4
mov     word ptr [esp+70h+var_28+2], ax
mov     edx, [esp+70h+var_38]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sar     eax, 4
mov     [esp+70h+var_24], ax
mov     ebx, [esp+70h+var_1C]
shl     ebx, 2
mov     eax, [esp+46h]
sar     eax, 10h
shl     eax, 8
mov     edx, ds:dword_531004[ebx]
imul    edx, eax
mov     eax, [esp+3Eh]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [esp+70h+var_40], eax
mov     eax, [esp+70h+var_28]
sar     eax, 10h
shl     eax, 8
mov     edx, ds:dword_531004[ebx]
imul    edx, eax
mov     eax, [esp+70h+var_30]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [esp+70h+var_3C], eax
mov     eax, [esp+70h+var_28+2]
sar     eax, 10h
shl     eax, 8
mov     edx, ds:dword_531004[ebx]
imul    edx, eax
mov     eax, [esp+70h+var_30+2]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [esp+70h+var_38], eax
mov     eax, [esp+70h+var_40]
sar     eax, 10h
mov     word ptr [esp+70h+var_28], ax
mov     eax, [esp+70h+var_3C]
sar     eax, 10h
mov     word ptr [esp+70h+var_28+2], ax
mov     eax, [esp+70h+var_38]
sar     eax, 10h
mov     [esp+70h+var_24], ax
mov     edx, [esp+70h+var_1C]
mov     eax, ds:dword_531048[edx*8]
add     eax, 1000h
mov     [esp+70h+var_40], eax
mov     [esp+70h+var_38], eax
mov     eax, ds:dword_531044[edx*8]
add     eax, 1000h
mov     [esp+70h+var_3C], eax
lea     edx, [esp+70h+var_40]
mov     eax, ecx
call    sub_4EF689
push    80h
push    0
mov     eax, [esp+78h+var_20]
or      eax, 28000000h
push    eax
lea     eax, [ebp+0CCh]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
push    4000h
push    200h
mov     edx, ds:dword_531024[ebx]
lea     ebx, [ebp+14h]
mov     ecx, edx
lea     eax, [esp+8Ch+var_28]
call    sub_4E02CB
mov     dword ptr [ebp+0CCh], 0
mov     dword ptr [ebp+0D0h], 0
add     esp, 58h
jmp     loc_4B338E
sub_4B3565 endp




sub_4B375F proc near

var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_34= word ptr -34h
var_32= word ptr -32h
var_30= word ptr -30h
var_2C= dword ptr -2Ch
var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 2Ch
mov     ebp, eax
mov     edi, esp
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
mov     esi, ds:dword_5F899D
sar     esi, 18h
mov     esi, ds:dword_531084[esi*4]
sub     [esp+44h+var_40], offset loc_500000
mov     edx, 9
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     ebx, eax
mov     edx, 3Ch ; '<'
lea     eax, [esp+44h+var_2C]
call    sub_4B3A21
mov     eax, [esp+16h]
sar     eax, 10h
mov     edx, eax
shl     edx, 9
add     edx, [esp+44h+var_44]
sar     edx, 10h
mov     [esp+44h+var_34], dx
mov     edx, [esp+44h+var_2C]
sar     edx, 10h
mov     ecx, edx
shl     ecx, 9
add     ecx, [esp+44h+var_40]
sar     ecx, 10h
mov     [esp+44h+var_32], cx
mov     ecx, [esp+44h+var_2C+2]
sar     ecx, 10h
mov     edi, ecx
shl     edi, 9
mov     [esp+44h+var_1C], edi
mov     edi, [esp+44h+var_3C]
add     edi, [esp+44h+var_1C]
sar     edi, 10h
mov     [esp+44h+var_1C], edi
mov     edi, [esp+44h+var_1C]
mov     [esp+44h+var_30], di
shl     eax, 8
add     eax, [esp+44h+var_44]
sar     eax, 10h
mov     [esp+44h+var_24], ax
shl     edx, 8
add     edx, [esp+44h+var_40]
sar     edx, 10h
mov     [esp+44h+var_22], dx
shl     ecx, 8
add     ecx, [esp+44h+var_3C]
sar     ecx, 10h
mov     [esp+44h+var_20], cx
push    80h
push    0
or      ebx, 28000000h
push    ebx
lea     eax, [ebp+0D4h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
push    4000h
push    200h
mov     ecx, esi
lea     ebx, [esp+60h+var_24]
mov     edx, esi
lea     eax, [esp+60h+var_34]
call    sub_4E02CB
mov     dword ptr [ebp+0D4h], 0
mov     dword ptr [ebp+0D8h], 0
add     esp, 2Ch
jmp     loc_4B338E
sub_4B375F endp




sub_4B3881 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, byte ptr ds:dword_5F899D+3
push    80h
push    0
movsx   eax, al
mov     eax, ds:dword_530FB0[eax*4]
or      eax, 8000000h
push    eax
lea     eax, [esi+0D4h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
push    4000h
push    200h
lea     ebx, [esi+2Ch]
lea     eax, [esi+14h]
mov     ecx, 5Ch ; '\'
mov     edx, 8
call    sub_4E02CB
mov     dword ptr [esi+0D4h], 0
mov     dword ptr [esi+0D8h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B3881 endp




sub_4B38E8 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE0BF
test    eax, eax
jz      short loc_4B3908
mov     byte ptr [eax], 1
mov     bl, [edx+2]
mov     [eax+2], bl
mov     byte ptr [eax+3], 1
mov     dl, [edx+1]
mov     [eax+0Ch], dl

loc_4B3908:
pop     edx
pop     ebx
retn
sub_4B38E8 endp




sub_4B390B proc near

var_26= dword ptr -26h
var_22= dword ptr -22h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     edi, [esp+24h+var_1C]
mov     esi, (offset dword_5F880A+2)
movsd
movsd
mov     edx, 64h ; 'd'
mov     eax, esp
call    sub_4B3A21
mov     edx, [esp+6]
sar     edx, 10h
shl     edx, 10h
mov     eax, [esp+24h+var_26]
sar     eax, 10h
shl     eax, 8
lea     ebx, [edx+eax]
mov     edx, [esp+24h+var_1C]
sar     edx, 10h
shl     edx, 10h
mov     eax, [esp+24h+var_26+2]
sar     eax, 10h
shl     eax, 8
lea     esi, [edx+eax]
mov     edx, [esp+24h+var_1C+2]
sar     edx, 10h
shl     edx, 10h
mov     eax, [esp+24h+var_22]
sar     eax, 10h
shl     eax, 8
lea     edi, [edx+eax]
call    sub_4DE0BF
test    eax, eax
jz      short loc_4B39B0
mov     byte ptr [eax], 1
mov     dl, [ecx+2]
mov     [eax+2], dl
mov     byte ptr [eax+3], 2
mov     cl, [ecx+1]
mov     [eax+0Ch], cl
mov     ecx, ebx
sar     ecx, 10h
mov     [eax+90h], cx
mov     ecx, esi
sar     ecx, 10h
mov     [eax+92h], cx
mov     ecx, edi
sar     ecx, 10h
mov     [eax+94h], cx

loc_4B39B0:
