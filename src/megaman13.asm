loc_41D873:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41D809 endp




sub_41D87E proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_41D884[edx*4]
pop     edx
retn
sub_41D87E endp




sub_41D88D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+158h], 200h
mov     word ptr [ecx+15Ah], 200h
mov     word ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 400h
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+50h]
mov     [ecx+4Eh], ax
mov     [ecx+4Ch], ax
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
call    sub_436708
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0Ch], 0
xor     edx, edx
mov     dl, [ecx+2]
mov     eax, ds:dword_55A108
mov     eax, [eax+edx*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+0B0h], ax
mov     [ecx+6Eh], ax
mov     word ptr [ecx+0B2h], 0
mov     byte ptr [ecx+74h], 1
mov     word ptr [ebx+8], 0
mov     word ptr [ebx+0Ah], 0
mov     word ptr [ebx+0Ch], 0
lea     edi, [ebx+10h]
lea     esi, [ebx+8]
movsd
movsd
mov     ax, [ecx+56h]
add     ah, 4
mov     [ebx], ax
mov     ax, [ebx+8]
mov     [ecx+14h], ax
mov     ax, [ebx+0Ch]
sub     eax, 0E00h
mov     [ecx+18h], ax
mov     ax, [ebx+0Ah]
sub     eax, 800h
mov     [ecx+16h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
xor     edx, edx

loc_41D9AF:
xor     esi, esi
mov     ds:dword_559198[edx*8], esi
mov     ds:dword_55919C[edx*8], esi
inc     edx
cmp     edx, 8
jb      short loc_41D9AF
mov     word ptr [ebx+2], 80h
mov     word ptr [ebx+4], 3Ch ; '<'
mov     word ptr [ebx+6], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
jmp     loc_41DDDD
sub_41D88D endp




sub_41D9F7 proc near
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
mov     word ptr [eax+15Eh], 4210h
call    sub_41DA88
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_41DA39[edx*4]
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_41DA61
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_41DA68

loc_41DA61:
mov     eax, ecx
call    sub_4DEADD

loc_41DA68:
cmp     byte ptr [ecx+8], 2
jz      loc_41DDDD
cmp     byte ptr [ecx+9], 3
jz      loc_41DDDD
mov     eax, ecx
call    sub_41DADD
jmp     loc_41DDDD
sub_41D9F7 endp




sub_41DA88 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 3
jz      short loc_41DAD9
xor     eax, eax
jmp     short loc_41DA9D

loc_41DA97:
inc     eax
cmp     eax, 8
jge     short loc_41DAAC

loc_41DA9D:
mov     edx, ds:dword_559198[eax*8]
and     edx, 0FFFFFFh
jz      short loc_41DA97

loc_41DAAC:
test    edx, edx
jz      short loc_41DAD9
sub     [ecx+6Eh], dx
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A0h
call    sub_4D89E4
mov     word ptr [ecx+15Eh], 7FFFh
cmp     word ptr [ecx+6Eh], 0
jg      short loc_41DAD9
mov     eax, ecx
call    sub_41E39B

loc_41DAD9:
pop     edx
pop     ecx
pop     ebx
retn
sub_41DA88 endp




sub_41DADD proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
xor     ebp, ebp
jmp     short loc_41DAEE

loc_41DAE8:
inc     ebp
cmp     ebp, 8
jnb     short loc_41DB5E

loc_41DAEE:
mov     eax, ebp
shl     eax, 3
xor     edx, edx
mov     ds:dword_559198[eax], edx
mov     edx, ss:(off_5106DA+1)[ebp]
sar     edx, 18h
mov     esi, [esp+1Ch+var_1C]
lea     edi, unk_5591D8[eax]
lea     esi, [esi+edx*8+190h]
movsd
movsd
lea     edx, [ebp+ebp+0]
mov     esi, offset unk_5591D8
add     esi, eax
add     eax, offset dword_559198
test    ebp, ebp
jnz     short loc_41DB55
push    ebp
push    ebp

loc_41DB2C:
push    4080000h
push    eax
xor     eax, eax
mov     ecx, [esp+2Ch+var_1C]
mov     al, [ecx+1]
push    eax
mov     edx, ds:dword_5106E4[edx]
sar     edx, 10h
mov     ecx, 8000h
xor     ebx, ebx
mov     eax, esi
call    sub_4E01FC
jmp     short loc_41DAE8

loc_41DB55:
push    80h
push    0
jmp     short loc_41DB2C

loc_41DB5E:
add     esp, 4
jmp     loc_41DDDC
sub_41DADD endp




sub_41DB66 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ax, [eax+56h]
sub     eax, 0Ch
and     ah, 0Fh
mov     [ecx+56h], ax
sub     eax, 400h
and     ah, 0Fh
mov     [esi], ax
cwde
call    sub_4EF008
shl     eax, 9
mov     edx, eax
shl     eax, 3
sub     eax, edx
sar     eax, 0Ch
mov     [ecx+14h], ax
mov     ax, [esi+0Ah]
sub     eax, 800h
mov     [ecx+16h], ax
movsx   eax, word ptr [esi]
call    sub_4EF003
shl     eax, 9
mov     edx, eax
shl     eax, 3
sub     eax, edx
sar     eax, 0Ch
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
mov     dx, [esi+4]
test    dx, dx
jnz     short loc_41DC2B
cmp     word ptr [esi+6], 2
jnz     short loc_41DC0A
mov     word ptr [esi+4], 0C8h
mov     [esi+6], dx
jmp     short loc_41DC14

loc_41DC0A:
mov     word ptr [esi+4], 0Fh
inc     word ptr [esi+6]

loc_41DC14:
mov     eax, ecx
call    sub_41E8A6
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A3h
call    sub_4D89E4
jmp     short loc_41DC32

loc_41DC2B:
mov     ebx, edx
dec     ebx
mov     [esi+4], bx

loc_41DC32:
mov     dx, [esi+2]
test    dx, dx
jnz     short loc_41DC65
call    rand_
test    al, 3Fh
jnz     short loc_41DC6C
call    rand_
test    al, 1
jz      short loc_41DC59
mov     eax, ecx
call    sub_41E305
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41DC59:
mov     eax, ecx
call    sub_41E2C6
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41DC65:
mov     ebx, edx
dec     ebx
mov     [esi+2], bx

loc_41DC6C:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41DB66 endp




sub_41DC71 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_41DC77[edx*4]
pop     edx
retn
sub_41DC71 endp




sub_41DC80 proc near

var_2C= dword ptr -2Ch
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
push    eax
lea     ebp, [eax+640h]
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
mov     dx, [ebp+2]
test    dx, dx
jnz     loc_41DD3D
mov     eax, [esp+2Ch+var_2C]
mov     byte ptr [eax+0ACh], 1
lea     edi, [ebp+1Ah]
mov     esi, eax
lea     esi, [esi+14h]
movsd
movsd
mov     ax, [eax+56h]
sub     eax, 400h
and     ah, 0Fh
mov     [ebp+22h], ax
mov     eax, [ebp+18h]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_28], eax
mov     eax, [ebp+1Ah]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_24], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_20], eax
push    0
push    0
mov     ebx, [ebp+20h]
sar     ebx, 10h
lea     eax, [ebp+1Ah]
mov     ecx, 7000h
lea     edx, [esp+34h+var_28]
call    sub_4DD4C5
mov     ax, [ebp+22h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+22h], ax
mov     word ptr [ebp+2], 40h ; '@'
mov     word ptr [ebp+4], 0
mov     eax, [esp+2Ch+var_2C]
inc     byte ptr [eax+0Ah]
jmp     short loc_41DD44

loc_41DD3D:
mov     ebx, edx
dec     ebx
mov     [ebp+2], bx

loc_41DD44:
add     esp, 14h
jmp     loc_41DDDC
sub_41DC80 endp




sub_41DD4C proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
add     eax, 640h
mov     [esp+34h+var_1C], eax
cmp     byte ptr [ebp+0ACh], 1
jnz     short loc_41DD79
cmp     byte ptr [ebp+0A7h], 0
jz      short loc_41DD79
mov     byte ptr [ebp+0ACh], 3

loc_41DD79:
mov     eax, [esp+34h+var_1C]
cmp     word ptr [eax+2], 14h
jnz     short loc_41DD8D
mov     byte ptr [ebp+0ACh], 2
jmp     short loc_41DD96

loc_41DD8D:
cmp     byte ptr [ebp+0ACh], 2
jnz     short loc_41DDA6

loc_41DD96:
cmp     byte ptr [ebp+0A7h], 0
jz      short loc_41DDA6
mov     byte ptr [ebp+0ACh], 0

loc_41DDA6:
mov     eax, [esp+34h+var_1C]
cmp     word ptr [eax+2], 0
jnz     short loc_41DDE3
mov     byte ptr [ebp+0ACh], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A4h
call    sub_4D89E4
mov     eax, [esp+34h+var_1C]
mov     word ptr [eax+2], 58h ; 'X'
mov     word ptr [eax+4], 0

loc_41DDD6:
inc     byte ptr [ebp+0Ah]

loc_41DDD9:
add     esp, 1Ch

loc_41DDDC:
pop     ebp

loc_41DDDD:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41DDE3:
lea     edi, [esp+34h+var_24]
mov     esi, eax
lea     esi, [esi+1Ah]
movsd
movsd
mov     eax, [esp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [esp+34h+var_34], eax
mov     eax, [esp+34h+var_24]
sar     eax, 10h
shl     eax, 10h
mov     [esp+34h+var_30], eax
mov     eax, [esp+34h+var_24+2]
sar     eax, 10h
shl     eax, 10h
mov     [esp+34h+var_2C], eax
push    0
push    0
mov     ebx, [esp+3Ch+var_1C]
mov     ebx, [ebx+20h]
sar     ebx, 10h
mov     ecx, 7000h
lea     edx, [esp+3Ch+var_34]
lea     eax, [esp+3Ch+var_24]
call    sub_4DD4C5
mov     eax, [esp+34h+var_1C]
mov     ax, [eax+22h]
sub     eax, 20h ; ' '
and     ah, 0Fh
mov     edx, [esp+34h+var_1C]
mov     [edx+22h], ax
lea     edi, [ebp+14h]
lea     esi, [esp+34h+var_24]
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, esp
movsd
movsd
movsd
movsd
mov     ax, [ebp+56h]
sub     eax, 20h ; ' '
and     ah, 0Fh
mov     [ebp+56h], ax
dec     word ptr [edx+2]
jmp     loc_41DDD9
sub_41DD4C endp




sub_41DE76 proc near

var_2C= dword ptr -2Ch
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
push    eax
lea     ebp, [eax+640h]
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
cmp     word ptr [ebp+2], 0
jnz     loc_41DF2E
mov     eax, [esp+2Ch+var_2C]
mov     byte ptr [eax+0ACh], 1
lea     edi, [ebp+1Ah]
mov     esi, eax
lea     esi, [esi+14h]
movsd
movsd
mov     ax, [eax+56h]
sub     eax, 400h
and     ah, 0Fh
mov     [ebp+22h], ax
mov     eax, [ebp+18h]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_28], eax
mov     eax, [ebp+1Ah]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_24], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_20], eax
push    0
push    0
mov     ebx, [ebp+20h]
sar     ebx, 10h
lea     eax, [ebp+1Ah]
mov     ecx, 7000h
lea     edx, [esp+34h+var_28]
call    sub_4DD4C5
mov     ax, [ebp+22h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+22h], ax
mov     word ptr [ebp+2], 40h ; '@'
mov     eax, [esp+2Ch+var_2C]
inc     byte ptr [eax+0Ah]
jmp     loc_41DD44

loc_41DF2E:
mov     eax, [esp+2Ch+var_2C]
call    sub_41E551
dec     word ptr [ebp+2]
jmp     loc_41DD44
sub_41DE76 endp




sub_41DF3F proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
add     eax, 640h
mov     [esp+34h+var_1C], eax
cmp     byte ptr [ebp+0ACh], 1
jnz     short loc_41DF6C
cmp     byte ptr [ebp+0A7h], 0
jz      short loc_41DF6C
mov     byte ptr [ebp+0ACh], 3

loc_41DF6C:
mov     eax, [esp+34h+var_1C]
cmp     word ptr [eax+2], 14h
jnz     short loc_41DF80
mov     byte ptr [ebp+0ACh], 2
jmp     short loc_41DF89

loc_41DF80:
cmp     byte ptr [ebp+0ACh], 2
jnz     short loc_41DF99

loc_41DF89:
cmp     byte ptr [ebp+0A7h], 0
jz      short loc_41DF99
mov     byte ptr [ebp+0ACh], 0

loc_41DF99:
mov     eax, [esp+34h+var_1C]
cmp     word ptr [eax+2], 0
jnz     loc_41DDE3
mov     byte ptr [ebp+0ACh], 0
mov     word ptr [eax+2], 18h
jmp     loc_41DDD6
sub_41DF3F endp




sub_41DFBA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
mov     dx, [edi+2]
test    dx, dx
jnz     short loc_41DFF3
mov     eax, esi
call    sub_41E268
jmp     loc_41DDDD

loc_41DFF3:
mov     ebx, edx
dec     ebx
mov     [edi+2], bx
jmp     loc_41DDDD
sub_41DFBA endp




sub_41DFFF proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_41E005[edx*4]
pop     edx
retn
sub_41DFFF endp




sub_41E00E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
cmp     byte ptr [esi+0A7h], 0
jz      loc_41DDDD
mov     byte ptr [esi+0ACh], 4
mov     word ptr [edi+2], 22h ; '"'
inc     byte ptr [esi+0Ah]
jmp     loc_41DDDD
sub_41E00E endp




sub_41E054 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
cmp     word ptr [edi+2], 0
jnz     short loc_41E07C
mov     byte ptr [eax+0ACh], 7
mov     ah, [eax+0Ah]
inc     ah
mov     [esi+0Ah], ah
jmp     loc_41DDDD

loc_41E07C:
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
cmp     word ptr [edi+2], 2
jle     short loc_41E0A8
mov     dx, [esi+56h]
sub     edx, 20h ; ' '
and     dh, 0Fh
mov     [esi+56h], dx

loc_41E0A8:
dec     word ptr [edi+2]
jmp     loc_41DDDD
sub_41E054 endp




sub_41E0B1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     eax, 640h
cmp     byte ptr [ecx+0A7h], 0
jz      short loc_41E0ED
mov     word ptr [ecx+44h], 400h
mov     word ptr [ecx+46h], 900h
mov     word ptr [ecx+48h], 0
mov     word ptr [eax+2], 20h ; ' '
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A7h
call    sub_4D89E4
inc     byte ptr [ecx+0Ah]

loc_41E0ED:
pop     edx
pop     ecx
pop     ebx
retn
sub_41E0B1 endp




sub_41E0F1 proc near
push    ebx
push    ecx
push    edx
push    esi
lea     esi, [eax+640h]
mov     dx, [esi+2]
test    dx, dx
jnz     short loc_41E116
mov     word ptr [esi+2], 5Ah ; 'Z'
mov     [esi+4], dx
inc     byte ptr [eax+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41E116:
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
dec     word ptr [esi+2]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41E0F1 endp




sub_41E136 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
mov     bx, [edx+2]
test    bx, bx
jnz     short loc_41E171
mov     word ptr [eax+44h], 500h
mov     word ptr [eax+46h], 180h
mov     word ptr [edx+2], 40h ; '@'
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A8h
call    sub_4D89E4
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_41E171:
mov     eax, ebx
xor     ah, bh
and     al, 0Fh
cwde
movsx   ax, ds:byte_510726[eax]
add     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     eax, ecx
call    sub_41E71F
dec     word ptr [edx+2]
pop     edx
pop     ecx
pop     ebx
retn
sub_41E136 endp




sub_41E19F proc near
push    ebx
push    ecx
push    edx
push    esi
lea     esi, [eax+640h]
cmp     word ptr [esi+2], 0
jnz     short loc_41E1BF
mov     byte ptr [eax+0ACh], 8
inc     byte ptr [eax+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41E1BF:
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
dec     word ptr [esi+2]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41E19F endp




sub_41E1DF proc near
push    edx
mov     dx, [eax+56h]
sub     edx, 20h ; ' '
and     dh, 0Fh
mov     [eax+56h], dx
cmp     byte ptr [eax+0A7h], 0
jz      short loc_41E1FC
call    sub_41E268

loc_41E1FC:
pop     edx
retn
sub_41E1DF endp




sub_41E1FE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
lea     ecx, [eax+640h]
call    sub_41E45D
cmp     byte ptr [edx+0Ah], 0
jnz     short loc_41E230
cmp     ds:byte_77EAB8, 0
jnz     short loc_41E230
mov     eax, 10h
call    sub_4D9040
call    sub_436710
inc     byte ptr [edx+0Ah]

loc_41E230:
mov     bx, [ecx+2]
test    bx, bx
jnz     short loc_41E25C
cmp     byte ptr [edx+0Ah], 0
jz      short loc_41E263
mov     ch, ds:byte_77EAB8
test    ch, ch
jnz     short loc_41E263
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+8], 2
mov     [edx+9], ch
mov     [edx+0Ah], ch
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41E25C:
mov     esi, ebx
dec     esi
mov     [ecx+2], si

loc_41E263:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41E1FE endp




sub_41E268 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+640h]
lea     edi, [eax+14h]
lea     esi, [edx+10h]
movsd
movsd
mov     bx, [edx+18h]
mov     [eax+56h], bx
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
mov     word ptr [edx+2], 80h
mov     word ptr [edx+4], 1Eh
mov     word ptr [edx+6], 0
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
jmp     loc_41DDDD
sub_41E268 endp




sub_41E2C6 proc near
push    ebx
push    edx
push    esi
push    edi
lea     edx, [eax+640h]
lea     edi, [edx+10h]
lea     esi, [eax+14h]
movsd
movsd
mov     bx, [eax+56h]
mov     [edx+18h], bx
mov     word ptr [edx+2], 40h ; '@'
mov     word ptr [eax+44h], 600h
mov     word ptr [eax+46h], 0
mov     word ptr [eax+48h], 0
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_41E2C6 endp




sub_41E305 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
mov     ax, [eax+56h]
add     ah, 8
and     ah, 0Fh
mov     [edx+18h], ax
sub     eax, 400h
and     ah, 0Fh
mov     [edx], ax
cwde
call    sub_4EF008
shl     eax, 9
mov     ebx, eax
shl     eax, 3
sub     eax, ebx
sar     eax, 0Ch
mov     [edx+10h], ax
mov     ax, [edx+0Ah]
sub     eax, 800h
mov     [edx+12h], ax
movsx   eax, word ptr [edx]
call    sub_4EF003
shl     eax, 9
mov     ebx, eax
shl     eax, 3
sub     eax, ebx
sar     eax, 0Ch
mov     [edx+14h], ax
mov     byte ptr [ecx+0ACh], 5
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A6h
call    sub_4D89E4
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0FA00h
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+9], 2
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_41E305 endp




sub_41E39B proc near

var_28= dword ptr -28h
var_24= byte ptr -24h
var_22= word ptr -22h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
push    eax
add     eax, 640h
mov     [esp+28h+var_1C], eax
xor     ebx, ebx
mov     edx, 9
mov     eax, [esp+28h+var_28]
call    sub_4DE96B
mov     eax, [esp+28h+var_1C]
mov     word ptr [eax+2], 96h
mov     word ptr [eax+4], 0
mov     eax, [esp+28h+var_28]
mov     word ptr [eax+44h], 280h
mov     word ptr [eax+46h], 1
mov     eax, 11h
call    sub_4D8E2B
mov     eax, 13h
call    sub_4D8E2B
xor     ebp, ebp

loc_41E3F2:
movzx   esi, ds:byte_5106B8[ebp*2]
shl     esi, 3
add     esi, [esp+28h+var_28]
lea     edi, [esp+28h+var_24]
lea     esi, [esi+190h]
movsd
movsd
mov     al, ds:byte_5106B9[ebp*2]
xor     ah, ah
sub     [esp+28h+var_22], ax
push    0
push    0FFFFFFF8h
mov     ecx, 10h
mov     ebx, 1
mov     edx, 80h
lea     eax, [esp+30h+var_24]
call    sub_43954B
mov     esi, eax
mov     eax, ebp
shl     eax, 2
add     eax, [esp+28h+var_1C]
mov     [eax+24h], esi
inc     ebp
cmp     ebp, 4
jb      short loc_41E3F2
mov     eax, [esp+28h+var_28]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
add     esp, 10h
jmp     loc_41DDDC
sub_41E39B endp




sub_41E45D proc near

var_22= dword ptr -22h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
add     eax, 640h
mov     [esp+24h+var_1C], eax
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
mov     eax, ebp
call    sub_4DD43B
mov     eax, [esp+24h+var_1C]
mov     dx, [eax+4]
test    dx, dx
jnz     short loc_41E4EE
call    rand_
and     eax, 7
movsx   ax, ds:byte_510736[eax]
mov     edx, [esp+24h+var_1C]
mov     [edx+4], ax
xor     edx, edx
jmp     short loc_41E4B9

loc_41E4B3:
inc     edx
cmp     edx, 3
jnb     short loc_41E4F5

loc_41E4B9:
call    rand_
and     eax, 0Fh
movzx   esi, ds:byte_51073E[eax]
call    sub_4DE13B
test    eax, eax
jz      short loc_41E4B3
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
lea     edi, [eax+48h]
lea     esi, [ebp+esi*8+190h]
movsd
movsd
mov     byte ptr [eax+0Dh], 2
jmp     short loc_41E4B3

loc_41E4EE:
mov     ebx, edx
dec     ebx
mov     [eax+4], bx

loc_41E4F5:
xor     edx, edx
mov     ebx, [esp+24h+var_1C]

loc_41E4FB:
movzx   esi, ds:byte_5106B8[edx*2]
mov     edi, esp
lea     esi, [ebp+esi*8+190h]
movsd
movsd
mov     al, ds:byte_5106B9[edx*2]
xor     ah, ah
sub     word ptr [esp+24h+var_22], ax
mov     ecx, edx
shl     ecx, 2
add     ecx, ebx
mov     esi, [ecx+24h]
mov     eax, [esp]
mov     [esi+1Ch], ax
mov     esi, [ecx+24h]
mov     eax, [esp+24h+var_22]
mov     [esi+1Eh], ax
mov     ecx, [ecx+24h]
mov     eax, [esp+24h+var_22+2]
mov     [ecx+20h], ax
inc     edx
cmp     edx, 4
jb      short loc_41E4FB
add     esp, 0Ch
jmp     loc_41DDDC
sub_41E45D endp




sub_41E551 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
add     eax, 640h
cmp     dword ptr [ecx+80h], 0F42400h
ja      loc_41E5E3
mov     dx, [eax+4]
test    dx, dx
jnz     short loc_41E5DC
mov     word ptr [eax+4], 2
xor     esi, esi
cmp     dword ptr [ecx+80h], offset unk_53EC60
ja      short loc_41E58E
mov     esi, 1

loc_41E58E:
cmp     dword ptr [ecx+80h], offset unk_557300
ja      short loc_41E59F
mov     esi, 2

loc_41E59F:
cmp     dword ptr [ecx+80h], 225510h
ja      short loc_41E5B0
mov     esi, 3

loc_41E5B0:
mov     ebx, esi
xor     edx, edx
mov     eax, ecx
call    sub_41E5E8
mov     ebx, esi
mov     edx, 1
mov     eax, ecx
call    sub_41E5E8
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A5h
call    sub_4D89E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41E5DC:
mov     ebx, edx
dec     ebx
mov     [eax+4], bx

loc_41E5E3:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41E551 endp




sub_41E5E8 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     edi, eax
mov     ebp, edx
lea     eax, [ebx+ebx]
test    edx, edx
jnz     short loc_41E60F
mov     eax, ds:off_51074E[eax]
sar     eax, 10h
mov     edx, [edi+54h]
sar     edx, 10h
sub     edx, eax
mov     eax, edx
jmp     short loc_41E620

loc_41E60F:
mov     eax, ds:off_51074E[eax]
sar     eax, 10h
mov     edx, [edi+54h]
sar     edx, 10h
add     eax, edx

loc_41E620:
and     eax, 0FFFh
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 400h
mov     esi, esp
call    sub_4DD510
lea     edx, [esp+28h+var_18]
mov     eax, esp
call    sub_4DD57B
call    sub_4DE043
mov     esi, eax
test    eax, eax
jz      loc_41E717
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 4
xor     eax, eax
mov     al, byte ptr ss:off_51074E[ebp]
mov     ax, [edi+eax*8+190h]
mov     [esi+14h], ax
xor     eax, eax
mov     al, byte ptr ss:off_51074E[ebp]
mov     ax, [edi+eax*8+192h]
sub     eax, 8
mov     [esi+16h], ax
xor     eax, eax
mov     al, byte ptr ss:off_51074E[ebp]
mov     ax, [edi+eax*8+194h]
mov     [esi+18h], ax
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     eax, ds:(dword_510756+2)[ebp*4]
sar     eax, 10h
push    eax
push    0
mov     ecx, ds:dword_510756[ebp*4]
sar     ecx, 10h
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+1Ch]
lea     eax, [esi+14h]
call    sub_4DD4C5
mov     eax, [esp+28h+var_18]
shl     eax, 8
mov     [esi+44h], ax
mov     word ptr [esi+46h], 3000h
mov     eax, [esp+28h+var_14]
shl     eax, 8
mov     [esi+48h], ax
mov     word ptr [esi+4Ch], 0
mov     word ptr [esi+4Eh], 0
mov     word ptr [esi+50h], 0

loc_41E717:
add     esp, 18h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_41E5E8 endp




sub_41E71F proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
lea     ecx, [eax+640h]
mov     dx, [ecx+4]
test    dx, dx
jnz     short loc_41E774
mov     word ptr [ecx+4], 2
mov     edx, [ecx+4]
sar     edx, 10h
call    sub_41E77F
mov     edx, [ecx+4]
sar     edx, 10h
add     edx, 4
mov     eax, ebx
call    sub_41E77F
mov     dx, [ecx+6]
inc     edx
xor     dh, dh
and     dl, 3
mov     [ecx+6], dx
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A9h
call    sub_4D89E4
pop     edx
pop     ecx
pop     ebx
retn

loc_41E774:
mov     ebx, edx
dec     ebx
mov     [ecx+4], bx
pop     edx
pop     ecx
pop     ebx
retn
sub_41E71F endp




sub_41E77F proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     edi, eax
mov     ebp, edx
call    rand_
and     eax, 7
mov     edx, ds:dword_510786[eax*2]
sar     edx, 10h
mov     eax, [edi+54h]
sar     eax, 10h
add     eax, edx
and     eax, 0FFFh
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 400h
mov     esi, esp
call    sub_4DD510
lea     edx, [esp+2Ch+var_1C]
mov     eax, esp
call    sub_4DD57B
call    sub_4DE043
mov     esi, eax
test    eax, eax
jz      loc_41E89D
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 4
mov     ax, [edi+1B8h]
mov     [esi+14h], ax
mov     ecx, ebp
and     ecx, 3
mov     ax, [edi+1BAh]
mov     dx, ds:word_510780[ecx*2]
sub     eax, edx
mov     [esi+16h], ax
mov     ax, [edi+1BCh]
mov     [esi+18h], ax
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     eax, ebp
mov     edx, ds:(dword_51075E+2)[eax*4]
sar     edx, 10h
push    edx
push    0
mov     ecx, ds:dword_51075E[eax*4]
sar     ecx, 10h
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+1Ch]
lea     eax, [esi+14h]
call    sub_4DD4C5
mov     eax, [esp+2Ch+var_1C]
shl     eax, 8
mov     [esi+44h], ax
call    rand_
and     eax, 7
mov     ax, ds:word_510798[eax*2]
mov     [esi+46h], ax
mov     eax, [esp+2Ch+var_18]
shl     eax, 8
mov     [esi+48h], ax
mov     word ptr [esi+4Ch], 0
mov     word ptr [esi+4Eh], 0
mov     word ptr [esi+50h], 0

loc_41E89D:
add     esp, 18h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41E77F endp




sub_41E8A6 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 18h
mov     ecx, eax
call    sub_4DE043
mov     edx, eax
test    eax, eax
jz      loc_41E971
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 6
mov     dword ptr [eax+0C8h], (offset dword_5F880A+2)
mov     ax, [ecx+1E0h]
mov     [edx+14h], ax
mov     ax, [ecx+1E2h]
sub     eax, 100h
mov     [edx+16h], ax
mov     ax, [ecx+1E4h]
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
xor     ebx, ebx
mov     [esp+24h+var_10], bx
call    rand_
and     ah, 3
mov     [esp+24h+var_14], ax
mov     ecx, eax
neg     ecx
mov     [esp+24h+var_14], cx
call    rand_
and     ah, 0Fh
mov     [esp+24h+var_12], ax
lea     ecx, [edx+8Ch]  ; int
mov     edx, ecx
lea     eax, [esp+24h+var_14]
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_1C], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_24], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689

loc_41E971:
add     esp, 18h
pop     edx
pop     ecx
pop     ebx
retn
sub_41E8A6 endp




sub_41E978 proc near
push    edx
mov     edx, eax
call    sub_41E45D
mov     eax, edx
call    sub_4DEADD
pop     edx
retn
sub_41E978 endp




sub_41E989 proc near
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
movzx   esi, byte ptr [eax+8]
lea     ebx, [eax+550h]
mov     edx, offset dword_560BDC
call    ds:funcs_41E9C5[esi*4]
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_41E9F1
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_41E9F8

loc_41E9F1:
mov     eax, ecx
call    sub_4DEADD

loc_41E9F8:
lea     edx, [ecx+550h]
mov     eax, ecx
call    sub_41EB97
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41E989 endp




sub_41EA0B proc near
push    ecx
push    esi
mov     ecx, eax
mov     esi, ebx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ecx+44h], 300h
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
add     ebx, 4
mov     edx, 2
mov     eax, ecx
call    sub_40769E
mov     [esi], eax
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
retn
sub_41EA0B endp




sub_41EA88 proc near
push    ecx
push    esi
mov     esi, eax
mov     eax, edx
mov     dl, [esi+9]
cmp     dl, 1
jb      short loc_41EAA0
jbe     short loc_41EAD5
cmp     dl, 2
jz      short loc_41EADE
pop     esi
pop     ecx
retn

loc_41EAA0:
test    dl, dl
jnz     short loc_41EAEB
cmp     byte ptr [eax+9], 0
jnz     short loc_41EAC3
cmp     dword ptr [eax+10h], 3Ch ; '<'
jl      short loc_41EAC3
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     ecx
retn

loc_41EAC3:
cmp     byte ptr [eax+9], 1
jnz     short loc_41EAEB
cmp     dword ptr [eax+10h], 1
jnz     short loc_41EAEB

loc_41EACF:
inc     byte ptr [esi+9]
pop     esi
pop     ecx
retn

loc_41EAD5:
mov     eax, [ebx]
call    sub_4DE336
jmp     short loc_41EACF

loc_41EADE:
cmp     byte ptr [eax+9], 5
jnz     short loc_41EAEB
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0

loc_41EAEB:
pop     esi
pop     ecx
retn
sub_41EA88 endp

db 8Dh, 40h, 0
jpt_41EB14 dd offset loc_41EB1B ; jump table for switch statement
dd offset loc_41EB35
dd offset loc_41EB57
dd offset loc_41EB6B



sub_41EB01 proc near
push    ecx
mov     bl, [eax+9]
cmp     bl, 3           ; switch 4 cases
ja      def_41EB14      ; jumptable 0041EB14 default case
and     ebx, 0FFh
jmp     jpt_41EB14[ebx*4] ; switch jump

loc_41EB1B:             ; jumptable 0041EB14 case 0
mov     ch, [eax+0Ch]
cmp     ch, 20h ; ' '
jge     short loc_41EB2C
mov     dh, ch
inc     dh
mov     [eax+0Ch], dh
jmp     short loc_41EB82

loc_41EB2C:
mov     byte ptr [eax+0Ch], 0

loc_41EB30:
inc     byte ptr [eax+9]
jmp     short loc_41EB82

loc_41EB35:             ; jumptable 0041EB14 case 1
cmp     byte ptr [eax+0Ch], 10h
jle     short loc_41EB42
mov     byte ptr [eax+0ACh], 5

loc_41EB42:
cmp     byte ptr [eax+0Ch], 40h ; '@'
jge     short loc_41EB30
sub     word ptr [eax+44h], 0Ch
sub     word ptr [eax+46h], 0Ch
inc     byte ptr [eax+0Ch]
jmp     short loc_41EB82

loc_41EB57:             ; jumptable 0041EB14 case 2
mov     byte ptr [eax+0ACh], 4
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
inc     byte ptr [eax+9]
pop     ecx
retn

loc_41EB6B:             ; jumptable 0041EB14 case 3
cmp     dword ptr [edx+10h], 97h
jge     short loc_41EB7C
mov     word ptr [eax+46h], 0
jmp     short loc_41EB82

loc_41EB7C:
mov     word ptr [eax+46h], 0FC00h

loc_41EB82:
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
call    sub_4DD43B

def_41EB14:             ; jumptable 0041EB14 default case
pop     ecx
retn
sub_41EB01 endp




sub_41EB97 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
xor     al, al

loc_41EBA1:
movsx   edx, al
shl     edx, 3
lea     esi, [ebx+edx]
lea     edi, [ecx+edx+4]
lea     esi, [esi+198h]
movsd
movsd
inc     al
cmp     al, 9
jl      short loc_41EBA1
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41EB97 endp

jpt_41EC12 dd offset loc_41EC19 ; jump table for switch statement
dd offset loc_41EC93
dd offset def_41EC12
dd offset loc_41EC9F
dd offset loc_41ECBB
dd offset loc_41ECFD



sub_41EBD9 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 38h
mov     ecx, eax
mov     edx, offset dword_560BDC
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
mov     al, [eax+8]
cmp     al, 5           ; switch 6 cases
ja      def_41EC12      ; jumptable 0041EC12 default case, case 2
and     eax, 0FFh
jmp     jpt_41EC12[eax*4] ; switch jump

loc_41EC19:             ; jumptable 0041EC12 case 0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
mov     ebx, offset word_559218
mov     edx, 3
mov     eax, ecx
call    sub_40769E
mov     ds:dword_560C7C, eax
or      byte ptr [eax+6], 20h
jmp     def_41EC12      ; jumptable 0041EC12 default case, case 2

loc_41EC93:             ; jumptable 0041EC12 case 1
mov     eax, ecx
call    sub_4DEADD
jmp     def_41EC12      ; jumptable 0041EC12 default case, case 2

loc_41EC9F:             ; jumptable 0041EC12 case 3
mov     word ptr [ecx+58h], 28h ; '('
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
inc     byte ptr [ecx+8]
jmp     def_41EC12      ; jumptable 0041EC12 default case, case 2

loc_41ECBB:             ; jumptable 0041EC12 case 4
test    byte ptr ds:dword_560BEC, 8
jz      short loc_41ECCB
add     word ptr [ecx+58h], 0Ah
jmp     short loc_41ECD0

loc_41ECCB:
sub     word ptr [ecx+58h], 0Ah

loc_41ECD0:
cmp     dword ptr [edx+10h], 5Ah ; 'Z'
jnz     loc_41ED68
mov     word ptr [ecx+44h], 0FFECh
mov     word ptr [ecx+46h], 40h ; '@'
mov     word ptr [ecx+4Eh], 4
mov     word ptr [ecx+48h], 0FEC0h
mov     word ptr [ecx+50h], 0FFFCh
inc     byte ptr [ecx+8]
jmp     short loc_41ED68

loc_41ECFD:             ; jumptable 0041EC12 case 5
mov     ax, [ecx+50h]
add     [ecx+48h], ax
mov     edx, [ecx+46h]
sar     edx, 10h
sar     edx, 4
mov     eax, [ecx+56h]
sar     eax, 10h
add     eax, edx
mov     [ecx+58h], ax
mov     ax, [ecx+44h]
add     [ecx+14h], ax
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     edx, [ecx+44h]
sar     edx, 10h
sar     edx, 4
mov     eax, [ecx+14h]
sar     eax, 10h
add     eax, edx
mov     [ecx+16h], ax
add     word ptr [ecx+18h], 0Fh
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

loc_41ED68:
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB

def_41EC12:             ; jumptable 0041EC12 default case, case 2
xor     edi, edi

loc_41ED78:
lea     eax, [ecx+54h]
mov     edx, esp
call    sub_4EF638
mov     esi, edi
shl     esi, 3
mov     edx, offset unk_5107B4
add     edx, esi
lea     ebx, [esp+4Ch+var_1C]
mov     eax, esp
call    sub_4EF2DC
mov     ax, [ecx+14h]
mov     edx, [esp+4Ch+var_1C]
add     eax, edx
mov     ds:word_559218[esi], ax
mov     ax, [ecx+16h]
mov     ebx, [esp+4Ch+var_1C+2]
add     eax, ebx
mov     ds:word_55921A[esi], ax
mov     ax, [ecx+18h]
mov     edx, [esp+4Ch+var_18]
add     eax, edx
mov     ds:word_55921C[esi], ax
inc     edi
cmp     edi, 7
jl      short loc_41ED78
add     esp, 38h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41EBD9 endp




sub_41EDDB proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_41EDE1[edx*4]
pop     edx
retn
sub_41EDDB endp




sub_41EDEA proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+158h], 200h
mov     word ptr [ecx+15Ah], 200h
mov     word ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+48h], 0
mov     dx, [ecx+48h]
mov     [ecx+46h], dx
mov     [ecx+44h], dx
mov     word ptr [ecx+50h], 0
mov     dx, [ecx+50h]
mov     [ecx+4Eh], dx
mov     [ecx+4Ch], dx
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     ebx, 0FFFFFFA0h
mov     edx, 7
mov     eax, esi
call    sub_4E19B9
mov     dword ptr [ecx+78h], offset unk_5107F8
xor     edx, edx
mov     dl, [ecx+2]
mov     eax, ds:dword_55A108
mov     edx, [eax+edx*4]
mov     dl, [edx+8]
xor     dh, dh
shl     edx, 4
mov     [ecx+0B0h], dx
mov     [ecx+6Eh], dx
mov     word ptr [ecx+0B2h], 0
mov     byte ptr [ecx+74h], 0
mov     dword ptr [esi+10h], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+20h], 0
mov     dword ptr [esi+24h], 0
mov     dword ptr [esi+30h], 0
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41EDEA endp




sub_41EEE6 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+640h]
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
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
mov     al, [ebp+74h]
mov     [ebp+75h], al
mov     word ptr [ebp+15Eh], 4210h
mov     eax, ebp
call    sub_41EF8D
cmp     byte ptr [ebp+0Ch], 0
jnz     short loc_41EF3F
mov     dword ptr [ecx+10h], 1
jmp     short loc_41EF4B

loc_41EF3F:
mov     edx, ebp
mov     eax, ecx
call    sub_4E19CA
mov     [ecx+10h], eax

loc_41EF4B:
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_41EF52[ecx*4]
cmp     byte ptr [ebp+8], 2
jz      short loc_41EF86
mov     eax, ebp
call    sub_41F133
mov     eax, ebp
call    sub_41F0D0
test    byte ptr [ebp+0], 2
jz      short loc_41EF86
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 118h
mov     eax, ebp
call    sub_4ED88B

loc_41EF86:
pop     ebp

loc_41EF87:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41EEE6 endp




sub_41EF8D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+640h]
cmp     byte ptr [eax+0Dh], 0
jz      loc_41F0CB
test    byte ptr ds:word_77EAB6, 3
jnz     short loc_41EFC2
mov     dx, [esi+0B2h]
test    dx, dx
jz      short loc_41EFC2
mov     ebx, edx
dec     ebx
mov     [esi+0B2h], bx

loc_41EFC2:
mov     edx, [ecx+20h]
and     edx, 0FFFFFFh
jz      loc_41F0CB
lea     eax, [esi+14h]
cmp     byte ptr [esi+9], 6
jnz     short loc_41EFEB
mov     edx, eax
mov     eax, 0A3h
call    sub_4D8BC3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41EFEB:
sub     [esi+6Eh], dx
add     [esi+0B2h], dx
mov     edx, eax
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [esi+15Eh], 7FFFh
cmp     word ptr [esi+6Eh], 0
jg      short loc_41F01A
mov     word ptr [esi+6Eh], 0
jmp     short loc_41F046

loc_41F01A:
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+9]
xor     ah, ah
shl     eax, 4
mov     edx, [esi+0B0h]
sar     edx, 10h
cwde
cmp     edx, eax
jl      loc_41F0CB

loc_41F046:
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, esi
call    sub_4DE96B
mov     word ptr [esi+0B2h], 0
mov     dword ptr [ecx+30h], 0
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ecx+28h]
lea     eax, [esi+14h]
xor     ecx, ecx
call    sub_4DE726
mov     edx, eax
test    eax, 0FFFF0000h
jnz     short loc_41F088
add     dh, 8
mov     eax, edx
and     ah, 0Fh

loc_41F088:
mov     [esi+56h], ax
mov     word ptr [esi+44h], 0FC00h
mov     word ptr [esi+46h], 0FF00h
mov     word ptr [esi+4Eh], 40h ; '@'
mov     byte ptr [esi+74h], 1
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     byte ptr [esi+9], 6
mov     byte ptr [esi+0Ah], 0

loc_41F0CB:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41EF8D endp




sub_41F0D0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
add     eax, 640h
cmp     byte ptr [edx+0Dh], 0
jz      loc_41EF87
mov     dword ptr [eax+20h], 0
lea     edi, [eax+18h]
lea     esi, [edx+14h]
movsd
movsd
push    0
push    offset unk_800000
sub     word ptr [eax+1Ah], 80h
mov     ecx, [eax+30h]
or      ecx, 4080000h
push    ecx
lea     ecx, [eax+20h]
push    ecx
mov     dl, [edx+1]
and     edx, 0FFh
push    edx
add     eax, 18h
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 80h
call    sub_4E01FC
jmp     loc_41EF87
sub_41F0D0 endp




sub_41F133 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+640h]
mov     dword ptr [ecx+14h], 0
call    sub_42DE56
test    ah, 0Fh
jz      short loc_41F155
or      byte ptr [ecx+14h], 1

loc_41F155:
cmp     byte ptr [edx+74h], 0
jnz     loc_41EF87
mov     eax, edx
call    sub_42C592
mov     esi, eax
mov     ebx, [edx+2Ch]
sar     ebx, 10h
cmp     eax, ebx
jz      short loc_41F190
cmp     byte ptr [edx+75h], 0
jnz     short loc_41F19A
lea     edi, [edx+14h]
lea     esi, [edx+2Ch]
movsd
movsd
lea     edi, [edx+1Ch]
lea     esi, [edx+34h]
movsd
movsd
movsd
movsd
or      byte ptr [ecx+14h], 4
jmp     short loc_41F19A

loc_41F190:
mov     [edx+16h], bx
shl     eax, 10h
mov     [edx+38h], eax

loc_41F19A:
or      byte ptr [ecx+14h], 2
jmp     loc_41EF87
sub_41F133 endp




sub_41F1A3 proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short sub_41F1FE
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
xor     eax, eax
cmp     byte ptr [ecx+0Dh], 0
jz      short loc_41F1C7
cmp     dword ptr [edx+10h], 0
jz      short loc_41F1C7
mov     eax, 1

loc_41F1C7:
mov     edx, [ecx+6Ch]
sar     edx, 10h
mov     ebx, [ecx+0AEh]
sar     ebx, 10h
cmp     edx, ebx
jnz     short loc_41F1DE
test    eax, eax
jz      short loc_41F1F3

loc_41F1DE:
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_41F1F3:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_41F1A3 endp




sub_41F1FE proc near
cmp     byte ptr [eax+0A7h], 0
jz      sub_4DEADD
sub_41F1FE endp




sub_41F20B proc near
push    edx
lea     edx, [eax+640h]
mov     word ptr [edx+36h], 0
call    sub_41F79F
pop     edx
retn
sub_41F20B endp




sub_41F21F proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short sub_41F26F
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0A7h], 0
jz      short loc_41F24A
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41F24A:
mov     eax, esi
call    sub_4DEADD
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_41F21F endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_45]



sub_41F26F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
mov     ecx, 20h ; ' '
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
push    800h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
mov     ecx, offset byte_5F8364
add     ecx, 1Ch
mov     edx, [esi+54h]
sar     edx, 10h
lea     eax, [esi+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    byte ptr [esi+6], 80h
jz      short loc_41F2E4
mov     bx, [edi+38h]
cmp     bx, 1Eh
jnb     short loc_41F2EA
mov     ecx, ebx
inc     ecx
mov     [edi+38h], cx
jmp     short loc_41F2EA

loc_41F2E4:
mov     word ptr [edi+38h], 0

loc_41F2EA:
mov     dx, [edi+36h]
test    dx, dx
jz      short loc_41F2FC
mov     ecx, edx
dec     ecx
mov     [edi+36h], cx
jmp     short loc_41F338

loc_41F2FC:
cmp     word ptr [edi+38h], 1Eh
jb      short loc_41F338
cmp     dword ptr [esi+80h], 9C400h
ja      short loc_41F338
test    eax, eax
jz      short loc_41F338
call    rand_
and     eax, 0Fh
cmp     eax, 6
jg      short loc_41F32C
mov     eax, esi
call    sub_41F812
jmp     loc_41EF87

loc_41F32C:
mov     eax, esi
call    sub_41F841
jmp     loc_41EF87

loc_41F338:
mov     ax, [edi+34h]
dec     ax
mov     [edi+34h], ax
jnz     short loc_41F375
cmp     dword ptr [edi+10h], 0
jnz     short loc_41F36F
mov     eax, esi
call    sub_41F7DC
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
jmp     loc_41EF87

loc_41F36F:
mov     word ptr [edi+34h], 3Ch ; '<'

loc_41F375:
mov     di, [esi+56h]
sub     di, [esi+5Eh]
test    di, di
jge     short loc_41F384
neg     edi

loc_41F384:
cmp     di, 10h
jg      short loc_41F391
mov     edx, 2
jmp     short loc_41F3AD

loc_41F391:
mov     eax, [esi+54h]
sar     eax, 10h
mov     edx, [esi+5Ch]
sar     edx, 10h
cmp     eax, edx
jle     short loc_41F3A8
mov     edx, 7
jmp     short loc_41F3AD

loc_41F3A8:
mov     edx, 8

loc_41F3AD:
mov     eax, esi
call    sub_41F774
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
cmp     byte ptr [esi+0A4h], 2
jnz     loc_41EF87
lea     edx, [esi+14h]
mov     eax, 1B8h

loc_41F3E2:
call    sub_4D8BC3
jmp     loc_41EF87
sub_41F26F endp




sub_41F3EC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
mov     ecx, 40h ; '@'
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     dword ptr [edi+10h], 0
jz      short loc_41F465
test    byte ptr [esi+6], 80h
jz      short loc_41F465
call    rand_
test    al, 1
jz      short loc_41F440
mov     eax, esi
call    sub_41F812
jmp     loc_41EF87

loc_41F440:
mov     eax, esi
call    sub_41F20B
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
jmp     loc_41EF87

loc_41F465:
mov     eax, esi
call    sub_4DEADD
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
xor     eax, eax
cmp     byte ptr [esi+0A4h], 5
jnz     short loc_41F495
mov     eax, 1

loc_41F495:
cmp     byte ptr [esi+0A4h], 13h
jz      short loc_41F4A6
test    eax, eax
jz      loc_41EF87

loc_41F4A6:
lea     edx, [esi+14h]
mov     eax, 1B7h
jmp     loc_41F3E2
sub_41F3EC endp




sub_41F4B3 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_41F4C4
jbe     short loc_41F4D4
jmp     short loc_41F532

loc_41F4C4:
test    al, al
jnz     short loc_41F532
mov     eax, ecx
call    sub_41F53E
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_41F4D4:
call    sub_4DE043
test    eax, eax
jz      short loc_41F51D
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+3], 0
mov     dl, [ecx+1]
mov     [eax+0Fh], dl
lea     edi, [eax+14h]
lea     esi, [ecx+198h]
movsd
movsd
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx

loc_41F51D:
lea     edx, [ecx+14h]
mov     eax, 1BAh
call    sub_4D8BC3
inc     byte ptr [ecx+0Ah]
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_41F532:
mov     eax, ecx
call    sub_41F1FE
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_41F4B3 endp




sub_41F53E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
mov     ecx, 80h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jz      short loc_41F589
xor     ebx, ebx
mov     edx, 5
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41F589:
cmp     byte ptr [esi+0A4h], 3
jnz     short loc_41F598
mov     word ptr [esi+44h], 0FA00h

loc_41F598:
cmp     byte ptr [esi+0A4h], 9
jnz     short loc_41F5A7
mov     word ptr [esi+44h], 0FC00h

loc_41F5A7:
cmp     byte ptr [esi+0A4h], 0Bh
jnz     short loc_41F5B6
mov     word ptr [esi+44h], 0

loc_41F5B6:
mov     eax, esi
call    sub_4DEADD
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41F53E endp




sub_41F5DB proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41F64F
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+640h]
cmp     byte ptr [eax+0A7h], 0
jz      short loc_41F62A
xor     ebx, ebx
mov     edx, 0Ah
mov     eax, esi
call    sub_4DE96B
mov     dword ptr [ecx+30h], 0
call    rand_
test    al, 1
jz      short loc_41F61C
mov     word ptr [ecx+3Ah], 20h ; ' '
jmp     short loc_41F622

loc_41F61C:
mov     word ptr [ecx+3Ah], 0FFE0h

loc_41F622:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41F62A:
mov     eax, esi
call    sub_4DEADD
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41F64F:
push    ecx
push    edx
lea     ecx, [eax+640h]
cmp     byte ptr [eax+0A7h], 0
jz      short loc_41F668
call    sub_41F79F
pop     edx
pop     ecx
retn

loc_41F668:
mov     dx, [eax+56h]
add     dx, [ecx+3Ah]
and     dh, 0Fh
mov     [eax+56h], dx
call    sub_4DEADD
pop     edx
pop     ecx
retn
sub_41F5DB endp




sub_41F67F proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_41F685[edx*4]
pop     edx
retn
sub_41F67F endp




sub_41F68E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
cmp     byte ptr [eax+74h], 0
jnz     short loc_41F6FD
lea     edx, [ebp+14h]
mov     eax, 1BCh
call    sub_4D8BC3
cmp     word ptr [ebp+6Eh], 0
jnz     short loc_41F6E7
call    sub_4DE13B
test    eax, eax
jz      short loc_41F6CC
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_41F6CC:
lea     edx, [ebp+14h]
mov     eax, ebp
call    sub_4AF9F8
mov     byte ptr [ebp+8], 2
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 0
jmp     loc_41EF86

loc_41F6E7:
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+0Ah]
jmp     loc_41EF86

loc_41F6FD:
mov     byte ptr [ebp+74h], 1
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
mov     eax, ebp
call    sub_4DD43B
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax
mov     eax, ebp
call    sub_4DEADD
jmp     loc_41EF86
sub_41F68E endp




sub_41F72E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0A7h], 0
jz      short loc_41F751
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_41F751:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_41F72E endp




sub_41F75C proc near
cmp     byte ptr [eax+0A7h], 0
jz      sub_4DEADD
sub     word ptr [eax+56h], 400h
jmp     sub_41F20B
sub_41F75C endp




sub_41F774 proc near
push    ebx
push    ecx
mov     ecx, eax
xor     ebx, ebx
mov     bl, [eax+0ADh]
cmp     ebx, edx
jz      short loc_41F797
xor     ebx, ebx
mov     bl, [eax+0A4h]
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     ecx
pop     ebx
retn

loc_41F797:
call    sub_4DEADD
pop     ecx
pop     ebx
retn
sub_41F774 endp




sub_41F79F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
xor     ebx, ebx
mov     edx, 0Fh
call    sub_4DE96B
mov     word ptr [esi+34h], 3Ch ; '<'
mov     word ptr [ecx+44h], 200h
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+4Eh], 0
mov     byte ptr [ecx+9], 1

loc_41F7D3:
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41F79F endp




sub_41F7DC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
xor     ebx, ebx
mov     edx, 1
call    sub_4DE96B
mov     word ptr [esi+34h], 78h ; 'x'
mov     word ptr [ecx+44h], 100h
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+4Eh], 0
mov     byte ptr [ecx+9], 2
jmp     short loc_41F7D3
sub_41F7DC endp




sub_41F812 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 6
call    sub_4DE96B
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+4Eh], 0
mov     byte ptr [ecx+9], 4
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_41F812 endp




sub_41F841 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
xor     ebx, ebx
mov     edx, 9
call    sub_4DE96B
xor     edx, edx
mov     dl, [ecx+2]
mov     eax, ds:dword_55A108
mov     eax, [eax+edx*4]
mov     al, [eax+0Ah]
and     eax, 0FFh
or      eax, 1000000h
mov     [esi+30h], eax
mov     word ptr [esi+36h], 3Ch ; '<'
mov     word ptr [ecx+44h], 400h
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+4Eh], 0
lea     edx, [ecx+14h]
mov     eax, 1B9h
call    sub_4D8BC3
mov     byte ptr [ecx+9], 5
jmp     loc_41F7D3
sub_41F841 endp



; Attributes: thunk

sub_41F8A4 proc near
jmp     sub_4DE336
sub_41F8A4 endp




sub_41F8A9 proc near
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+3]
lea     edx, [eax+490h]
call    ds:funcs_41F8B6[ecx*4]
pop     edx
pop     ecx
retn
sub_41F8A9 endp




sub_41F8C0 proc near
push    ebx
push    ecx
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
cmp     byte ptr [ecx+8], 0
jnz     short loc_41F93D
or      byte ptr [ecx], 42h
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
mov     dword ptr [ecx+158h], 0C000C00h
mov     dword ptr [ecx+15Ch], 0C00h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ecx+48h], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

loc_41F93D:
mov     bl, [ecx+0Ch]
cmp     bl, 5
jge     short loc_41F9A4
mov     edx, [ecx+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 6
mov     edx, [ecx+16h]
sar     edx, 10h
add     eax, 1E00h
cmp     edx, eax
jle     short loc_41F987
movsx   ax, bl
mov     edx, 5
sub     edx, eax
mov     eax, edx
shl     eax, 2
mov     [ecx+48h], ax
mov     edi, eax
neg     edi
mov     [ecx+48h], di
jmp     short loc_41F9A4

loc_41F987:
mov     dx, [ecx+48h]
test    dx, dx
jge     short loc_41F9A4
mov     ebx, edx
add     ebx, 8
mov     [ecx+48h], bx
test    bx, bx
jle     short loc_41F9A4
mov     word ptr [ecx+48h], 0

loc_41F9A4:
mov     ax, [ecx+48h]
add     [ecx+18h], ax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_41F9D8
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_41F9D8:
mov     eax, ecx
call    sub_4DEADD
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41F8C0 endp




sub_41F9E4 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     [esp+18h+var_18], edx
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
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
call    rand_
mov     [edx+16h], ax
mov     ecx, 4210h
mov     ebx, 0Ch
mov     eax, ebp
call    sub_4211B3
xor     ecx, ecx
mov     cl, [ebp+8]
mov     edx, [esp+18h+var_18]
mov     eax, ebp
call    ds:funcs_41FA3B[ecx*4]
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_41FA5F
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_41FA66

loc_41FA5F:
mov     eax, ebp
call    sub_4DEADD

loc_41FA66:
mov     eax, [esp+18h+var_18]
inc     word ptr [eax+142h]
add     esp, 4

loc_41FA73:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41F9E4 endp




sub_41FA79 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     edi, edx
mov     ah, [eax]
or      ah, 42h
mov     [ebp+0], ah
xor     edx, edx
mov     eax, ebp
call    sub_4DD107
mov     dword ptr [ebp+158h], 0C000C00h
mov     dword ptr [ebp+15Ch], 0C00h
xor     eax, eax
mov     al, [ebp+2]
mov     esi, ds:dword_55A108
mov     esi, [esi+eax*4]
xor     eax, eax

loc_41FABA:
xor     ebx, ebx
mov     bl, [esi+0Ah]
jmp     short loc_41FADD

loc_41FAC1:
cmp     ax, 9
jz      short loc_41FAD6
jmp     loc_41FB4C

loc_41FACC:
test    ax, ax
jbe     short loc_41FABA
jmp     loc_41FB3E

loc_41FAD6:
xor     edx, ecx
mov     dl, [esi+8]

loc_41FADB:
mov     ebx, edx

loc_41FADD:
shl     ebx, 4
movsx   edx, ax
mov     [edi+edx*2+0A0h], bx
movsx   ecx, ax
mov     edx, ecx
mov     bx, [edi+edx*2+0A0h]
mov     [edi+edx*2+0B8h], bx
mov     dword ptr [edi+edx*8+0D4h], 0
mov     ebx, [edi+edx*8+0D4h]
mov     [edi+edx*8+0D0h], ebx
mov     byte ptr [ecx+edi+130h], 0FFh
inc     eax
cmp     ax, 0Ch
jge     short loc_41FB53
cmp     ax, 2
jb      short loc_41FACC
jbe     short loc_41FB45
cmp     ax, 0Ah
jb      short loc_41FAC1
jbe     short loc_41FABA
cmp     ax, 0Bh
jnz     short loc_41FB4C

loc_41FB3E:
xor     edx, edx
mov     dl, [esi+0Bh]
jmp     short loc_41FADB

loc_41FB45:
xor     ebx, ebx
mov     bl, [esi+0Ch]
jmp     short loc_41FADD

loc_41FB4C:
xor     edx, edx
mov     dl, [esi+0Dh]
jmp     short loc_41FADB

loc_41FB53:
mov     ax, [edi+0CAh]
add     ax, [edi+0B8h]
mov     dx, [edi+0BAh]
add     edx, eax
mov     ax, [edi+0BCh]
add     edx, eax
mov     [ebp+0B0h], dx
mov     [ebp+0B2h], dx
mov     [ebp+6Eh], dx
mov     ecx, 4210h
mov     ebx, 0Ch
mov     edx, edi
mov     eax, ebp
call    sub_4211B3
xor     eax, eax

loc_41FB9A:
movsx   edx, ax
shl     edx, 3
lea     ecx, [edi+20h]
mov     [esp+1Ch+var_1C], ecx
add     ecx, edx
mov     bx, ds:word_51086C[edx]
mov     [esp+1Ch+var_18], ebx
mov     bx, [ebp+14h]
add     [esp+1Ch+var_18], ebx
mov     ebx, [esp+1Ch+var_18]
mov     [ecx], bx
mov     bx, ds:word_51086E[edx]
mov     [esp+1Ch+var_18], ebx
mov     bx, [ebp+16h]
add     [esp+1Ch+var_18], ebx
mov     ebx, [esp+1Ch+var_18]
mov     [ecx+2], bx
mov     dx, word ptr ds:dword_510870[edx]
mov     bx, [ebp+18h]
add     edx, ebx
mov     [ecx+4], dx
inc     eax
cmp     ax, 10h
jl      short loc_41FB9A
mov     al, [esi+9]
mov     [edi+1Eh], al
mov     ebx, [esp+1Ch+var_1C]
xor     edx, edx
mov     eax, ebp
call    sub_40769E
mov     [edi+0Ch], eax
lea     ebx, [edi+38h]
mov     edx, 1
mov     eax, ebp
call    sub_451925
mov     [edi+10h], eax
mov     word ptr [edi+14h], 2
mov     word ptr [edi+18h], 0
mov     word ptr [edi+1Ah], 0
mov     dword ptr [edi+4], 0
mov     dword ptr [edi+8], 0
mov     byte ptr [edi+1Fh], 0
mov     byte ptr [edi+13Ch], 0
mov     byte ptr [edi+13Dh], 0
mov     byte ptr [edi+13Eh], 0
mov     byte ptr [edi+13Fh], 0
mov     al, [edi+13Fh]
mov     [edi+141h], al
mov     [edi+140h], al
mov     word ptr [edi+142h], 0
mov     dword ptr [edi+144h], 0
lea     eax, [edi+148h]
xor     ebx, ebx
xor     edx, edx
call    sub_4E19B9
mov     byte ptr [ebp+0Ch], 0
mov     word ptr [ebp+48h], 0
mov     ax, [ebp+48h]
mov     [ebp+46h], ax
mov     [ebp+44h], ax
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
mov     dword ptr [ebp+78h], 0
mov     byte ptr [ebp+0ACh], 0
mov     byte ptr [ebp+0ADh], 0FFh
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0

loc_41FCDD:
add     esp, 8
jmp     loc_41FA73
sub_41FA79 endp

jpt_41FD59 dd offset loc_41FD60 ; jump table for switch statement
dd offset loc_41FD83
dd offset loc_41FD97
dd offset loc_41FD69
dd offset loc_41FD97
dd offset loc_41FD69
dd offset loc_41FD83
dd offset loc_41FDAB
dd offset loc_41FDCE
dd offset loc_41FDEB
dd offset loc_41FE0C



sub_41FD11 proc near
push    ebx
push    ecx
push    esi
mov     ebx, eax
mov     ecx, edx
test    byte ptr [edx+14h], 2
jz      short loc_41FD25
mov     eax, ebx
call    sub_4207DD

loc_41FD25:
mov     edx, ecx
mov     eax, ebx
call    sub_420B41
movzx   esi, byte ptr [ebx+9]
mov     edx, ecx
mov     eax, ebx
call    ds:funcs_41FD36[esi*4]
mov     dl, [ecx+14h]
test    dl, 1
jz      loc_41FE1C
mov     al, [ebx+9]
cmp     al, 0Ah         ; switch 11 cases
ja      def_41FD59      ; jumptable 0041FD59 default case
and     eax, 0FFh
jmp     jpt_41FD59[eax*4] ; switch jump

loc_41FD60:             ; jumptable 0041FD59 case 0
mov     byte ptr [ebx+9], 9
jmp     def_41FD59      ; jumptable 0041FD59 default case

loc_41FD69:             ; jumptable 0041FD59 cases 3,5
test    byte ptr [ecx+14h], 40h
jz      short loc_41FD76
mov     eax, 2
jmp     short loc_41FD7B

loc_41FD76:
mov     eax, 7

loc_41FD7B:
mov     [ebx+9], al
jmp     def_41FD59      ; jumptable 0041FD59 default case

loc_41FD83:             ; jumptable 0041FD59 cases 1,6
test    byte ptr [ecx+14h], 40h
jz      short loc_41FD90
mov     eax, 4
jmp     short loc_41FD7B

loc_41FD90:
mov     eax, 8
jmp     short loc_41FD7B

loc_41FD97:             ; jumptable 0041FD59 cases 2,4
test    byte ptr [ecx+14h], 40h
jz      short loc_41FDA4
mov     eax, 0Ah
jmp     short loc_41FD7B

loc_41FDA4:
mov     eax, 9
jmp     short loc_41FD7B

loc_41FDAB:             ; jumptable 0041FD59 case 7
test    dl, 40h
jz      short loc_41FDB9

loc_41FDB0:
mov     byte ptr [ebx+9], 2
jmp     def_41FD59      ; jumptable 0041FD59 default case

loc_41FDB9:
test    dl, 10h
jz      short loc_41FDC7
mov     byte ptr [ebx+9], 1
jmp     def_41FD59      ; jumptable 0041FD59 default case

loc_41FDC7:
test    dl, 20h
jz      short def_41FD59 ; jumptable 0041FD59 default case
jmp     short loc_41FDB0

loc_41FDCE:             ; jumptable 0041FD59 case 8
test    dl, 40h
jz      short loc_41FDD9

loc_41FDD3:
mov     byte ptr [ebx+9], 4
jmp     short def_41FD59 ; jumptable 0041FD59 default case

loc_41FDD9:
test    dl, 8
jz      short loc_41FDE4
mov     byte ptr [ebx+9], 3
jmp     short def_41FD59 ; jumptable 0041FD59 default case

loc_41FDE4:
test    dl, 20h
jz      short def_41FD59 ; jumptable 0041FD59 default case
jmp     short loc_41FDD3

loc_41FDEB:             ; jumptable 0041FD59 case 9
test    dl, 40h
jz      short loc_41FDF6
mov     byte ptr [ebx+9], 0Ah
jmp     short def_41FD59 ; jumptable 0041FD59 default case

loc_41FDF6:
test    dl, 8
jz      short loc_41FE01
mov     byte ptr [ebx+9], 5
jmp     short def_41FD59 ; jumptable 0041FD59 default case

loc_41FE01:
test    dl, 10h
jz      short def_41FD59 ; jumptable 0041FD59 default case
mov     byte ptr [ebx+9], 6
jmp     short def_41FD59 ; jumptable 0041FD59 default case

loc_41FE0C:             ; jumptable 0041FD59 case 10
mov     byte ptr [ebx+8], 2
mov     byte ptr [ebx+9], 0

def_41FD59:             ; jumptable 0041FD59 default case
mov     byte ptr [ebx+0Ah], 0
and     byte ptr [ecx+14h], 0C6h

loc_41FE1C:
test    byte ptr [ecx+14h], 2
jz      short loc_41FE2B
mov     edx, ecx
mov     eax, ebx
call    sub_420D2F

loc_41FE2B:
mov     edx, ecx
mov     eax, ebx
call    sub_420E01
mov     ah, [ecx+1Fh]
add     ah, 2
mov     [ecx+1Fh], ah
mov     dl, ah
and     dl, 1Fh
mov     [ecx+1Fh], dl
pop     esi
pop     ecx
pop     ebx
retn
sub_41FD11 endp




sub_41FE49 proc near
push    ebx
mov     bl, [eax+9]
test    bl, bl
jbe     short loc_41FE5B
cmp     bl, 1
jz      short loc_41FE76
jmp     loc_41FF02

loc_41FE5B:
mov     word ptr [edx+18h], 0
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
inc     byte ptr [eax+9]

loc_41FE76:
mov     bx, [edx+18h]
cmp     bx, 1FCh
jge     loc_41FEE7
cmp     bx, 30h ; '0'
jb      short loc_41FE9E
jbe     short loc_41FECB
cmp     bx, 40h ; '@'
jb      short loc_41FEE1
jbe     short loc_41FED3
cmp     bx, 88h
jz      short loc_41FEDB
jmp     short loc_41FEE1

loc_41FE9E:
test    bx, bx
jbe     short loc_41FEAB
cmp     bx, 10h
jz      short loc_41FEB9
jmp     short loc_41FEE1

loc_41FEAB:
mov     word ptr [eax+4Ch], 0FFFFh
mov     word ptr [eax+4Eh], 0FFFFh
jmp     short loc_41FEE1

loc_41FEB9:
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     byte ptr [eax+0Ch], 1
jmp     short loc_41FEE1

loc_41FECB:
mov     word ptr [eax+4Eh], 1
jmp     short loc_41FEE1

loc_41FED3:
mov     word ptr [eax+4Eh], 0
jmp     short loc_41FEE1

loc_41FEDB:
mov     word ptr [eax+50h], 0FFFFh

loc_41FEE1:
inc     word ptr [edx+18h]
jmp     short loc_41FF02

loc_41FEE7:
mov     word ptr [edx+18h], 0
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
inc     byte ptr [eax+9]

loc_41FF02:
mov     bx, [eax+4Ch]
add     [eax+44h], bx
mov     bx, [eax+4Eh]
add     [eax+46h], bx
mov     bx, [eax+50h]
add     [eax+48h], bx
mov     bx, [eax+44h]
add     [eax+14h], bx
mov     bx, [eax+46h]
add     [eax+16h], bx
mov     bx, [eax+48h]
add     [eax+18h], bx
test    byte ptr [edx+14h], 4
jz      short loc_41FF4E
mov     word ptr [eax+14h], 0F000h
mov     word ptr [eax+16h], 0FC00h
mov     word ptr [eax+18h], 400h
and     byte ptr [edx+14h], 0FBh

loc_41FF4E:
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx

