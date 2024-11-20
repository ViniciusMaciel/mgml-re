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

loc_41FF5A:
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
pop     ebx
retn
sub_41FE49 endp




sub_41FF74 proc near
push    ebx
push    esi
mov     bl, [eax+0Ah]
cmp     bl, 1
jb      short loc_41FF8E
jbe     short loc_41FFB6
cmp     bl, 2
jz      loc_420019
jmp     loc_4200A7

loc_41FF8E:
test    bl, bl
jnz     loc_4200A7
mov     word ptr [edx+18h], 0
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
inc     byte ptr [eax+0Ah]
jmp     loc_4200A7

loc_41FFB6:
mov     si, [edx+18h]
cmp     si, 0D0h
jge     short loc_41FFF8
mov     ebx, esi
cmp     si, 10h
jb      short loc_41FFD4
jbe     short loc_41FFE8
cmp     si, 0C0h
jz      short loc_41FFF0
jmp     short loc_41FFDF

loc_41FFD4:
test    si, si
jnz     short loc_41FFDF

loc_41FFD9:
mov     word ptr [eax+50h], 0FFFFh

loc_41FFDF:
inc     word ptr [edx+18h]
jmp     loc_4200A7

loc_41FFE8:
mov     word ptr [eax+50h], 0
jmp     short loc_41FFDF

loc_41FFF0:
mov     word ptr [eax+50h], 1
jmp     short loc_41FFDF

loc_41FFF8:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 4
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
jmp     loc_4200A7

loc_420019:
mov     bx, [edx+18h]
cmp     bx, 1F0h
jge     loc_420084
cmp     bx, 100h
jb      short loc_420043
jbe     short loc_420063
cmp     bx, 110h
jb      short loc_41FFDF
jbe     short loc_42006E
cmp     bx, 1E0h
jz      short loc_420079
jmp     short loc_41FFDF

loc_420043:
test    bx, bx
jbe     short loc_420050
cmp     bx, 10h
jz      short loc_420058
jmp     short loc_41FFDF

loc_420050:
mov     word ptr [eax+50h], 1
jmp     short loc_41FFDF

loc_420058:
mov     word ptr [eax+50h], 0
jmp     loc_41FFDF

loc_420063:
mov     word ptr [eax+4Eh], 1
jmp     loc_41FFDF

loc_42006E:
mov     word ptr [eax+4Eh], 0
jmp     loc_41FFDF

loc_420079:
mov     word ptr [eax+4Eh], 0FFFFh
jmp     loc_41FFD9

loc_420084:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 5
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
or      byte ptr [edx+140h], 1

loc_4200A7:
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
jz      short loc_420112
mov     bh, [eax+0Ah]
cmp     bh, 1
jnz     short loc_4200FC
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0E600h
mov     word ptr [eax+18h], 0FA00h
add     [eax+0Ah], bh
jmp     short loc_42010E

loc_4200FC:
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0F400h
mov     word ptr [eax+18h], 1800h

loc_42010E:
and     byte ptr [edx+14h], 0FBh

loc_420112:
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
pop     esi
pop     ebx
retn
sub_41FF74 endp




sub_420139 proc near
push    ebx
push    ecx
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_42015C
mov     word ptr [edx+18h], 0
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
inc     byte ptr [eax+0Ah]

loc_42015C:
mov     bx, [edx+18h]
cmp     bx, 2F8h
jge     loc_420235
cmp     bx, 16Ch
jb      short loc_4201C3
jbe     loc_420213
cmp     bx, 274h
jb      short loc_4201A6
jbe     loc_420221
cmp     bx, 284h
jb      loc_42022F
jbe     loc_42020B
cmp     bx, 2E8h
jz      loc_420229
jmp     loc_42022F

loc_4201A6:
cmp     bx, 17Ch
jb      loc_42022F
jbe     loc_42021B
cmp     bx, 18Ch
jz      short loc_4201EB
jmp     loc_42022F

loc_4201C3:
cmp     bx, 10h
jb      short loc_4201E0
jbe     short loc_4201EB
cmp     bx, 74h ; 't'
jb      loc_42022F
jbe     short loc_4201F3
cmp     bx, 84h
jz      short loc_42020B
jmp     short loc_42022F

loc_4201E0:
test    bx, bx
jnz     short loc_42022F
mov     [eax+4Ch], bx
jmp     short loc_420229

loc_4201EB:
mov     word ptr [eax+4Eh], 0
jmp     short loc_42022F

loc_4201F3:
cmp     byte ptr [eax+9], 1
jnz     short loc_420200

loc_4201F9:
mov     ecx, 1
jmp     short loc_420205

loc_420200:
mov     ecx, 0FFFFFFFFh

loc_420205:
mov     [eax+4Ch], cx
jmp     short loc_42022F

loc_42020B:
mov     word ptr [eax+4Ch], 0
jmp     short loc_42022F

loc_420213:
mov     word ptr [eax+4Eh], 1
jmp     short loc_42022F

loc_42021B:
or      byte ptr [edx+14h], 4
jmp     short loc_42022F

loc_420221:
cmp     byte ptr [eax+9], 1
jnz     short loc_4201F9
jmp     short loc_420200

loc_420229:
mov     word ptr [eax+4Eh], 0FFFFh

loc_42022F:
inc     word ptr [edx+18h]
jmp     short loc_42024B

loc_420235:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 5
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0

loc_42024B:
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
jz      short loc_4202BA
mov     ch, [eax+0Ah]
cmp     ch, 1
jnz     short loc_42029A
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0E600h
add     [eax+0Ah], ch
jmp     short loc_4202B6

loc_42029A:
cmp     byte ptr [eax+9], 1
jnz     short loc_4202A7
mov     ecx, 1000h
jmp     short loc_4202AC

loc_4202A7:
mov     ecx, 0FFFFF000h

loc_4202AC:
mov     [eax+14h], cx
mov     word ptr [eax+16h], 0FCC0h

loc_4202B6:
and     byte ptr [edx+14h], 0FBh

loc_4202BA:
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
pop     ecx
pop     ebx
retn
sub_420139 endp

jpt_420381 dd offset loc_4203A4 ; jump table for switch statement
dd offset def_420381
dd offset loc_4203A4
dd offset loc_420388
dd offset loc_42039C



sub_4202F5 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_42031C
mov     word ptr [edx+18h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
inc     byte ptr [ecx+0Ah]

loc_42031C:
mov     dh, [ecx+9]
cmp     dh, 2
jz      short loc_420329
cmp     dh, 4
jnz     short loc_420334

loc_420329:
mov     edx, ebx
mov     eax, ecx
call    sub_420EF8
jmp     short loc_42033D

loc_420334:
mov     edx, ebx
mov     eax, ecx
call    sub_420FE4

loc_42033D:
mov     ax, [ecx+4Ch]
add     [ecx+44h], ax
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     ax, [ecx+50h]
add     [ecx+48h], ax
mov     ax, [ecx+44h]
add     [ecx+14h], ax
mov     ax, [ecx+46h]
add     [ecx+16h], ax
mov     ax, [ecx+48h]
add     [ecx+18h], ax
test    byte ptr [ebx+14h], 4
jz      short loc_4203BA
mov     al, [ecx+9]
sub     al, 2           ; switch 5 cases
cmp     al, 4
ja      short def_420381 ; jumptable 00420381 default case, case 3
and     eax, 0FFh
jmp     jpt_420381[eax*4] ; switch jump

loc_420388:             ; jumptable 00420381 case 5
mov     word ptr [ecx+14h], 0F000h

loc_42038E:
mov     word ptr [ecx+16h], 0FCC0h
mov     word ptr [ecx+18h], 600h
jmp     short def_420381 ; jumptable 00420381 default case, case 3

loc_42039C:             ; jumptable 00420381 case 6
mov     word ptr [ecx+14h], 1000h
jmp     short loc_42038E

loc_4203A4:             ; jumptable 00420381 cases 2,4
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+16h], 0F400h
mov     word ptr [ecx+18h], 1800h

def_420381:             ; jumptable 00420381 default case, case 3
and     byte ptr [ebx+14h], 0FBh

loc_4203BA:
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
pop     ecx
pop     ebx
retn
sub_4202F5 endp




sub_4203E1 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ecx, edx
mov     ebx, 0FFFFFFFFh
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_420434
mov     dword ptr [edx+144h], 0
cmp     byte ptr [esi+9], 7
jnz     short loc_42040B
inc     byte ptr [ecx+13Ch]
jmp     short loc_420411

loc_42040B:
inc     byte ptr [ecx+13Dh]

loc_420411:
mov     ax, [esi+16h]
mov     [ecx+1Ch], ax
mov     word ptr [ecx+18h], 0
mov     ah, [ecx+14h]
test    ah, 40h
jz      short loc_420431
or      ah, 1
mov     [ecx+14h], ah
pop     esi
pop     ecx
pop     ebx
retn

loc_420431:
inc     byte ptr [esi+0Ah]

loc_420434:
mov     dx, [ecx+18h]
cmp     dx, 0C0h
jge     loc_42048D
mov     eax, edx
cmp     dx, 3Ch ; '<'
jb      short loc_420467
jbe     short loc_420482
cmp     dx, 88h
jb      short loc_42045F
jbe     short loc_42047B
cmp     dx, 9Ch
jz      short loc_420482
jmp     short loc_420487

loc_42045F:
cmp     dx, 74h ; 't'
jz      short loc_420477
jmp     short loc_420487

loc_420467:
cmp     dx, 14h
jb      short loc_420487
jbe     short loc_420477
cmp     dx, 28h ; '('
jz      short loc_42047B
jmp     short loc_420487

loc_420477:
xor     ebx, ebx
jmp     short loc_420487

loc_42047B:
mov     ebx, 1
jmp     short loc_420487

loc_420482:
mov     ebx, 2

loc_420487:
inc     word ptr [ecx+18h]
jmp     short loc_42049C

loc_42048D:
mov     word ptr [ecx+18h], 0
mov     edx, ecx
mov     eax, esi
call    sub_42127A

loc_42049C:
cmp     ebx, 0FFFFFFFFh
jz      short loc_4204AA
mov     edx, ecx
mov     eax, esi
call    sub_421305

loc_4204AA:
cmp     word ptr [ecx+18h], 0C0h
jnz     short loc_4204CB
test    byte ptr [ecx+140h], 4
jnz     short loc_4204CB
cmp     dword ptr [ecx+144h], 0
jbe     short loc_4204CB
or      byte ptr [ecx+140h], 4

loc_4204CB:
test    byte ptr [ecx+14h], 40h
jz      short loc_4204F1
mov     edx, [ecx+16h]
sar     edx, 10h
mov     ebx, 40h ; '@'
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_4204F1
mov     word ptr [ecx+18h], 0
or      byte ptr [ecx+14h], 1

loc_4204F1:
mov     ax, [ecx+18h]
xor     ah, ah
and     al, 3Fh
movsx   edx, ax
mov     edx, dword ptr ds:unk_564C32[edx*2]
sar     edx, 10h
shl     edx, 6
sar     edx, 0Ch
mov     ecx, [ecx+1Ah]
sar     ecx, 10h
add     edx, ecx
mov     [esi+16h], dx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
pop     esi
pop     ecx
pop     ebx
retn
sub_4203E1 endp




sub_420528 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ecx, edx
mov     edi, 0FFFFFFFFh
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_420568
mov     dx, [esi+16h]
mov     [ecx+1Ch], dx
mov     word ptr [ecx+18h], 0
inc     byte ptr [ecx+13Eh]
mov     dh, [ecx+14h]
test    dh, 40h
jz      short loc_420565
mov     ah, dh
or      ah, 1
mov     [ecx+14h], ah
jmp     loc_41FA73

loc_420565:
inc     byte ptr [esi+0Ah]

loc_420568:
mov     dx, [ecx+18h]
cmp     dx, 100h
jge     short loc_4205A3
cmp     dx, 0C0h
jge     short loc_42059D
mov     ebx, [ecx+16h]
sar     ebx, 10h
mov     ebp, 18h
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    ebp
test    edx, edx
jnz     short loc_42059D
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    ebp
mov     edi, eax

loc_42059D:
inc     word ptr [ecx+18h]
jmp     short loc_4205B2

loc_4205A3:
mov     word ptr [ecx+18h], 0
mov     edx, ecx
mov     eax, esi
call    sub_42127A

loc_4205B2:
cmp     edi, 0FFFFFFFFh
jz      short loc_4205C2
mov     ebx, edi
mov     edx, ecx
mov     eax, esi
call    sub_4213F7

loc_4205C2:
test    byte ptr [ecx+14h], 40h
jz      short loc_4205E8
mov     edx, [ecx+16h]
sar     edx, 10h
mov     ebx, 40h ; '@'
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_4205E8
mov     word ptr [ecx+18h], 0
or      byte ptr [ecx+14h], 1

loc_4205E8:
mov     dx, [ecx+18h]
xor     dh, dh
and     dl, 3Fh
movsx   edx, dx
mov     ebx, dword ptr ds:unk_564C32[edx*2]
sar     ebx, 10h
shl     ebx, 6
sar     ebx, 0Ch
mov     edx, [ecx+1Ah]
sar     edx, 10h
add     edx, ebx
mov     [esi+16h], dx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
jmp     loc_41FA73
sub_420528 endp

jpt_42064E dd offset loc_420655 ; jump table for switch statement
dd offset loc_420670
dd offset loc_420733
dd offset loc_420749
dd offset loc_420773



sub_420635 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebx, eax
mov     ecx, edx
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_42064E      ; jumptable 0042064E default case
and     eax, 0FFh
jmp     jpt_42064E[eax*4] ; switch jump

loc_420655:             ; jumptable 0042064E case 0
mov     word ptr [edx+18h], 0
mov     word ptr [edx+1Ah], 0
mov     word ptr [ebx+4Eh], 0
mov     word ptr [ebx+50h], 0
inc     byte ptr [ebx+0Ah]

loc_420670:             ; jumptable 0042064E case 1
mov     edx, ecx
mov     eax, ebx
call    sub_4210E0

def_42064E:             ; jumptable 0042064E default case
cmp     byte ptr [ebx+0Ah], 1
jbe     loc_41FA73

loc_420683:
mov     ax, [ecx+1Ah]
xor     ah, ah
and     al, 3Fh
cwde
mov     edx, dword ptr ds:unk_564C32[eax*2]
sar     edx, 10h
shl     edx, 6
sar     edx, 0Ch
mov     eax, [ecx+1Ah]
sar     eax, 10h
add     eax, edx
mov     [ebx+16h], ax
mov     eax, [ebx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+20h], eax
cmp     dword ptr [ecx+4], 0
jz      short loc_4206CE
mov     ax, [ebx+16h]
mov     dx, ds:word_5108F6
add     edx, eax
mov     eax, [ecx+4]
mov     [eax+16h], dx

loc_4206CE:
cmp     dword ptr [ecx+8], 0
jz      short loc_4206E6
mov     dx, [ebx+16h]
add     dx, ds:word_5108F6
mov     eax, [ecx+8]
mov     [eax+16h], dx

loc_4206E6:
inc     word ptr [ecx+1Ah]
test    byte ptr [ecx+15h], 1
jz      loc_41FA73
mov     edx, [ecx+18h]
sar     edx, 10h
mov     ebx, 40h ; '@'
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     loc_41FA73
mov     ebx, [ecx+4]
test    ebx, ebx
jz      short loc_42071C
mov     eax, ebx
call    sub_4DE371

loc_42071C:
mov     esi, [ecx+8]
test    esi, esi
jz      short loc_42072A
mov     eax, esi
call    sub_4DE371

loc_42072A:
or      byte ptr [ecx+14h], 1
jmp     loc_41FA73

loc_420733:             ; jumptable 0042064E case 2
or      byte ptr [edx+140h], 40h
mov     eax, ebx
call    sub_4214A8

loc_420741:
inc     byte ptr [ebx+0Ah]
jmp     def_42064E      ; jumptable 0042064E default case

loc_420749:             ; jumptable 0042064E case 3
mov     edi, [edx+4]
test    edi, edi
jz      short loc_420756
cmp     byte ptr [edi+0Ch], 0
jnz     short loc_42076B

loc_420756:
mov     ebp, [ecx+8]
test    ebp, ebp
jz      def_42064E      ; jumptable 0042064E default case
cmp     byte ptr [ebp+0Ch], 0
jz      def_42064E      ; jumptable 0042064E default case

loc_42076B:
mov     word ptr [ecx+18h], 0
jmp     short loc_420741

loc_420773:             ; jumptable 0042064E case 4
cmp     word ptr [edx+18h], 5Ah ; 'Z'
jge     short loc_4207B5
cmp     word ptr [ecx+18h], 0
jnz     short loc_4207AC
mov     edx, [ecx+4]
test    edx, edx
jz      short loc_42079A
mov     eax, edx
mov     dl, [edx+0Ch]
or      dl, 80h
mov     [eax+0Ch], dl
mov     dword ptr [ecx+4], 0

loc_42079A:
mov     esi, [ecx+8]
test    esi, esi
jz      short loc_4207AC
or      byte ptr [esi+0Ch], 80h
mov     dword ptr [ecx+8], 0

loc_4207AC:
inc     word ptr [ecx+18h]
jmp     def_42064E      ; jumptable 0042064E default case

loc_4207B5:
mov     byte ptr [ebx+0Ah], 2
jmp     loc_420683
sub_420635 endp

db 8Dh, 40h, 0
jpt_420933 dd offset loc_420826 ; jump table for switch statement
dd offset loc_42082F
dd offset loc_420834
dd offset loc_42083D
dd offset loc_420846
dd offset loc_42084F
dd offset loc_420858



sub_4207DD proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
push    eax
mov     esi, edx
lea     ebp, [edx+20h]
xor     edi, edi
xor     edx, edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_18], edx
mov     [esp+24h+var_1C], edx
jmp     loc_420896

loc_420800:
test    di, di
jbe     short loc_420817
cmp     di, 1
jmp     loc_4208E5

loc_42080E:
mov     [esp+24h+var_20], edx
jmp     loc_42088B

loc_420817:
mov     [esp+24h+var_18], edx
jmp     loc_42088B

loc_420820:
mov     [esp+24h+var_1C], edx
jmp     short loc_42088B

loc_420826:             ; jumptable 00420933 case 2
mov     eax, [esi+0Ch]

loc_420829:
or      byte ptr [eax+0Ch], 1
jmp     short def_420933 ; jumptable 00420933 default case

loc_42082F:             ; jumptable 00420933 case 3
mov     eax, [esi+10h]
jmp     short loc_420829

loc_420834:             ; jumptable 00420933 case 4
mov     eax, [esi+10h]
or      byte ptr [eax+0Ch], 2
jmp     short def_420933 ; jumptable 00420933 default case

loc_42083D:             ; jumptable 00420933 case 5
mov     eax, [esi+10h]
or      byte ptr [eax+0Ch], 4
jmp     short def_420933 ; jumptable 00420933 default case

loc_420846:             ; jumptable 00420933 case 6
mov     eax, [esi+10h]
or      byte ptr [eax+0Dh], 1
jmp     short def_420933 ; jumptable 00420933 default case

loc_42084F:             ; jumptable 00420933 case 7
mov     eax, [esi+10h]
or      byte ptr [eax+0Dh], 2
jmp     short def_420933 ; jumptable 00420933 default case

loc_420858:             ; jumptable 00420933 case 8
mov     eax, [esi+10h]
or      byte ptr [eax+0Dh], 4

def_420933:             ; jumptable 00420933 default case
mov     edx, ebp
mov     eax, 0A0h
call    sub_4D8BC3
movsx   ebx, di
mov     ecx, 7FFFh
mov     edx, esi
mov     eax, [esp+24h+var_24]
call    sub_4211B3
jmp     short loc_42088B

loc_42087F:
mov     edx, ebp
mov     eax, 9Bh
call    sub_4D8BC3

loc_42088B:
inc     edi
cmp     di, 0Ch
jge     loc_42093A

loc_420896:
movsx   ebx, di
mov     ecx, ebx
shl     ecx, 3
lea     eax, [esi+ecx]
mov     edx, [eax+0D0h]
and     edx, 0FFFFFFh
jz      short loc_42088B
lea     ebp, [esi+20h]
add     ebp, ecx
cmp     byte ptr [esi+ebx+130h], 0FFh
jnz     short loc_42087F
test    byte ptr [eax+0D3h], 18h
jz      short loc_42087F
cmp     di, 9
jb      loc_420800
jbe     loc_42080E
cmp     di, 0Ah
jbe     loc_420817
cmp     di, 0Bh

loc_4208E5:
jz      loc_420820
movsx   ecx, di
lea     eax, [ecx+ecx]
add     eax, esi
mov     bx, [eax+0A0h]
sub     ebx, edx
mov     [eax+0A0h], bx
test    bx, bx
jg      def_420933      ; jumptable 00420933 default case
mov     word ptr [eax+0A0h], 0
lea     eax, [esi+ecx]
mov     byte ptr [eax+130h], 0
mov     eax, edi
sub     eax, 2          ; switch 7 cases
cmp     ax, 6
ja      def_420933      ; jumptable 00420933 default case
and     eax, 0FFFFh
jmp     jpt_420933[eax*4] ; switch jump

loc_42093A:
cmp     [esp+24h+var_18], 0
jz      short loc_4209A9
mov     eax, [esp+24h+var_18]
mov     bx, [esi+0A0h]
sub     ebx, eax
mov     [esi+0A0h], bx
test    bx, bx
jg      short loc_42097D
mov     word ptr [esi+0A0h], 0
mov     byte ptr [esi+13Ah], 0
mov     al, [esi+13Ah]
mov     [esi+130h], al
mov     eax, [esi+0Ch]
or      byte ptr [eax+0Ch], 2

loc_42097D:
mov     ax, [esi+0A0h]
mov     [esi+0B4h], ax
lea     edx, [esi+70h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     ecx, 7FFFh
xor     ebx, ebx
mov     edx, esi
mov     eax, [esp+24h+var_24]
call    sub_4211B3

loc_4209A9:
cmp     [esp+24h+var_1C], 0
jz      short loc_420A1B
mov     eax, [esp+24h+var_1C]
mov     di, [esi+0A2h]
sub     edi, eax
mov     [esi+0A2h], di
test    di, di
jg      short loc_4209EC
mov     word ptr [esi+0A2h], 0
mov     byte ptr [esi+13Bh], 0
mov     al, [esi+13Bh]
mov     [esi+131h], al
mov     eax, [esi+0Ch]
or      byte ptr [eax+0Ch], 4

loc_4209EC:
mov     ax, [esi+0A2h]
mov     [esi+0B6h], ax
lea     edx, [esi+78h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     ecx, 7FFFh
mov     ebx, 1
mov     edx, esi
mov     eax, [esp+24h+var_24]
call    sub_4211B3

loc_420A1B:
cmp     [esp+24h+var_20], 0
jz      short loc_420A86
test    byte ptr [esi+14h], 80h
jz      short loc_420A7A
mov     eax, [esp+24h+var_20]
mov     dx, [esi+0B2h]
sub     edx, eax
mov     [esi+0B2h], dx
test    dx, dx
jg      short loc_420A5C
or      byte ptr [esi+141h], 70h
mov     word ptr [esi+0B2h], 0
mov     byte ptr [esi+139h], 0
or      byte ptr [esi+15h], 1

loc_420A5C:
mov     ecx, 7FFFh
mov     ebx, 9
mov     edx, esi
mov     eax, [esp+24h+var_24]
call    sub_4211B3
lea     edx, [esi+68h]
mov     eax, 0A0h
jmp     short loc_420A81

loc_420A7A:
mov     edx, ebp
mov     eax, 9Bh

loc_420A81:
call    sub_4D8BC3

loc_420A86:
mov     eax, [esp+24h+var_24]
mov     ax, [eax+6Eh]
mov     edx, [esp+24h+var_24]
mov     [edx+0B2h], ax
mov     ax, [esi+0B2h]
add     ax, [esi+0A0h]
mov     dx, [esi+0A2h]
add     edx, eax
mov     ax, [esi+0A4h]
add     edx, eax
mov     eax, [esp+24h+var_24]
mov     [eax+6Eh], dx
mov     al, [esi+141h]
test    al, 1
jz      short loc_420AF3
test    al, 2
jnz     short loc_420AF3
mov     edx, [esp+24h+var_24]
mov     edx, [edx+0B0h]
sar     edx, 10h
mov     eax, [esp+24h+var_24]
mov     eax, [eax+6Ch]
sar     eax, 10h
cmp     edx, eax
jz      short loc_420AF3
or      byte ptr [esi+140h], 2
or      byte ptr [esi+141h], 4

loc_420AF3:
test    byte ptr [esi+14h], 40h
jnz     short loc_420B1F
mov     bh, [esi+132h]
cmp     bh, 1
jnz     short loc_420B1F
cmp     bh, [esi+130h]
jnz     short loc_420B1F
cmp     bh, [esi+131h]
jnz     short loc_420B1F
or      byte ptr [esi+141h], 0Fh
or      byte ptr [esi+14h], 40h

loc_420B1F:
add     esp, 10h
jmp     loc_41FA73
sub_4207DD endp

db 8Bh, 0C0h
jpt_420D28 dd offset loc_420C97 ; jump table for switch statement
dd offset loc_420CA0
dd offset loc_420CA9
dd offset loc_420CB2
dd offset loc_420CBB
dd offset loc_420CC4



sub_420B41 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
push    eax
mov     ecx, edx
xor     edx, edx
mov     [esp+1Ch+var_18], edx
xor     ebx, ebx
jmp     loc_420BFD

loc_420B59:
test    bx, bx
jz      short loc_420B73
jmp     short loc_420B91

loc_420B60:
mov     byte ptr [eax+2], 14h
mov     byte ptr [eax+3], 1

loc_420B68:
mov     byte ptr [eax+0Eh], 0
add     edi, esi
mov     [eax+54h], edi
jmp     short loc_420BCF

loc_420B73:
mov     byte ptr [eax+2], 14h
mov     byte ptr [eax+3], 2
jmp     short loc_420B68

loc_420B7D:
mov     byte ptr [eax+2], 14h
mov     byte ptr [eax+3], 3
jmp     short loc_420B68

loc_420B87:
mov     byte ptr [eax+2], 14h
mov     byte ptr [eax+3], 4
jmp     short loc_420B68

loc_420B91:
mov     byte ptr [edx], 5
mov     byte ptr [edx+2], 80h
mov     byte ptr [edx+3], 41h ; 'A'
movsx   eax, bx
mov     ebp, eax
shl     ebp, 3
lea     esi, [ecx+ebp]
lea     edi, [edx+48h]
lea     esi, [esi+20h]
movsd
movsd
mov     byte ptr [edx+0Dh], 1
shl     eax, 2
add     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0FFh], 0FFh
lea     edx, [ecx+20h]
add     edx, ebp
mov     eax, 0A1h
call    sub_4D8BC3

loc_420BCF:
movsx   eax, bx
mov     byte ptr [ecx+eax+130h], 1
jmp     short loc_420BF6

loc_420BDC:
cmp     dl, 1
jnz     short loc_420BF6
cmp     bx, 2
jz      short loc_420BF2
test    bx, bx
jz      short loc_420BF2
cmp     bx, 1
jnz     short loc_420BF6

loc_420BF2:
inc     [esp+1Ch+var_18]

loc_420BF6:
inc     ebx
cmp     bx, 0Ah
jge     short loc_420C4E

loc_420BFD:
movsx   esi, bx
lea     eax, [ecx+esi]
mov     dl, [eax+130h]
test    dl, dl
jnz     short loc_420BDC
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_420BCF
mov     byte ptr [eax], 1
mov     byte ptr [eax+4], 0
lea     edi, [ecx+20h]
shl     esi, 3
cmp     bx, 1
jb      loc_420B59
jbe     loc_420B7D
cmp     bx, 2
jbe     loc_420B60
cmp     bx, 9
jz      loc_420B87
jmp     loc_420B91

loc_420C4E:
cmp     word ptr [esp+1Ch+var_18], 3
jnz     short loc_420C68
test    byte ptr [ecx+141h], 10h
jnz     short loc_420C68
or      byte ptr [ecx+140h], 10h
jmp     short loc_420C80

loc_420C68:
cmp     word ptr [esp+1Ch+var_18], 1
jnz     short loc_420C80
test    byte ptr [ecx+141h], 8
jnz     short loc_420C80
or      byte ptr [ecx+140h], 8

loc_420C80:
test    byte ptr [ecx+142h], 1
jz      loc_41FCDD
mov     ebx, 3
mov     esi, [esp+1Ch+var_1C]
jmp     short loc_420CD6

loc_420C97:             ; jumptable 00420D28 case 3
mov     eax, [ecx+10h]
and     byte ptr [eax+0Ch], 0FEh
jmp     short def_420D28 ; jumptable 00420D28 default case

loc_420CA0:             ; jumptable 00420D28 case 4
mov     eax, [ecx+10h]
and     byte ptr [eax+0Ch], 0FDh
jmp     short def_420D28 ; jumptable 00420D28 default case

loc_420CA9:             ; jumptable 00420D28 case 5
mov     eax, [ecx+10h]
and     byte ptr [eax+0Ch], 0FBh
jmp     short def_420D28 ; jumptable 00420D28 default case

loc_420CB2:             ; jumptable 00420D28 case 6
mov     eax, [ecx+10h]
and     byte ptr [eax+0Dh], 0FEh
jmp     short def_420D28 ; jumptable 00420D28 default case

loc_420CBB:             ; jumptable 00420D28 case 7
mov     eax, [ecx+10h]
and     byte ptr [eax+0Dh], 0FDh
jmp     short def_420D28 ; jumptable 00420D28 default case

loc_420CC4:             ; jumptable 00420D28 case 8
mov     eax, [ecx+10h]
and     byte ptr [eax+0Dh], 0FBh

def_420D28:             ; jumptable 00420D28 default case
inc     ebx
cmp     bx, 8
jg      loc_41FCDD

loc_420CD6:
movsx   eax, bx
cmp     byte ptr [ecx+eax+130h], 0FFh
jz      short def_420D28 ; jumptable 00420D28 default case
movsx   edx, bx
lea     eax, [ecx+edx]
inc     byte ptr [eax+130h]
cmp     byte ptr [eax+130h], 0FFh
jnz     short def_420D28 ; jumptable 00420D28 default case
mov     eax, edx
shl     eax, 2
add     eax, esi
mov     byte ptr [eax+0FFh], 0
mov     eax, edx
mov     dx, [ecx+eax*2+0B8h]
mov     [ecx+eax*2+0A0h], dx
mov     eax, ebx
sub     eax, 3          ; switch 6 cases
cmp     ax, 5
ja      short def_420D28 ; jumptable 00420D28 default case
and     eax, 0FFFFh
jmp     jpt_420D28[eax*4] ; switch jump
sub_420B41 endp




sub_420D2F proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     edi, eax
mov     ebp, edx
xor     esi, esi
lea     edx, [ebp+20h]
jmp     short loc_420D46

loc_420D3F:
inc     esi
cmp     si, 10h
jge     short loc_420D94

loc_420D46:
movsx   eax, si
shl     eax, 3
mov     bx, ds:word_51086C[eax]
mov     cx, [edi+14h]
add     ebx, ecx
mov     [edx+eax], bx
mov     bx, ds:word_51086E[eax]
mov     cx, [edi+16h]
add     ebx, ecx
mov     [edx+eax+2], bx
mov     bx, word ptr ds:dword_510870[eax]
mov     cx, [edi+18h]
add     ebx, ecx
mov     [edx+eax+4], bx
cmp     si, 0Ch
jge     short loc_420D3F
mov     dword ptr [eax+ebp+0D0h], 0
jmp     short loc_420D3F

loc_420D94:
xor     esi, esi

loc_420D96:
push    80h
push    0
push    4880000h
movsx   eax, si
shl     eax, 3
lea     edx, [ebp+0D0h]
add     edx, eax
push    edx
xor     edx, edx
mov     dl, [edi+1]
push    edx
mov     edx, ds:dword_510870[eax]
sar     edx, 10h
lea     ecx, [ebp+20h]
add     eax, ecx
mov     ecx, 8000h
xor     ebx, ebx
call    sub_4E01FC
inc     esi
cmp     si, 0Ch
jl      short loc_420D96
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, edi
call    sub_432697
jmp     loc_41FA73
sub_420D2F endp

db 90h
jpt_420E18 dd offset loc_420E1F ; jump table for switch statement
dd offset loc_420E7F
dd offset loc_420EEB
dd offset def_420E18



sub_420E01 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ebx, edx
mov     al, [eax+0Bh]
cmp     al, 3           ; switch 4 cases
ja      def_420E18      ; jumptable 00420E18 default case, case 3
and     eax, 0FFh
jmp     jpt_420E18[eax*4] ; switch jump

loc_420E1F:             ; jumptable 00420E18 case 0
cmp     byte ptr [edx+141h], 7Fh
jnz     short loc_420E30
mov     byte ptr [esi+0Bh], 3
pop     esi
pop     ecx
pop     ebx
retn

loc_420E30:
mov     byte ptr [edx+13Fh], 0
jmp     short loc_420E50

loc_420E39:
mov     ch, [ebx+13Fh]
inc     ch
mov     [ebx+13Fh], ch
cmp     ch, 7
jnb     def_420E18      ; jumptable 00420E18 default case, case 3

loc_420E50:
mov     cl, [ebx+13Fh]
mov     eax, 1
shl     eax, cl
mov     ecx, eax
xor     eax, eax
mov     al, [ebx+140h]
test    eax, ecx
jz      short loc_420E39
xor     eax, eax
mov     al, [ebx+141h]
test    eax, ecx
jnz     short loc_420E39
mov     byte ptr [esi+0Bh], 1
pop     esi
pop     ecx
pop     ebx
retn

loc_420E7F:             ; jumptable 00420E18 case 1
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short loc_420EBB
xor     eax, eax
mov     al, [ebx+13Fh]
mov     edx, ds:dword_5108F9[eax]
sar     edx, 18h
mov     eax, 4
call    sub_4A0E24
mov     cl, [ebx+13Fh]
mov     al, 1
shl     al, cl
or      [ebx+141h], al
mov     byte ptr [esi+0Bh], 2
pop     esi
pop     ecx
pop     ebx
retn

loc_420EBB:
mov     cl, [ebx+13Fh]
mov     eax, 1
shl     eax, cl
xor     edx, edx
mov     dl, [ebx+141h]
test    edx, eax
jz      short def_420E18 ; jumptable 00420E18 default case, case 3
mov     eax, 4
call    sub_4A0E75
call    sub_4D8EB1

loc_420EE3:
mov     byte ptr [esi+0Bh], 0
pop     esi
pop     ecx
pop     ebx
retn

loc_420EEB:             ; jumptable 00420E18 case 2
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_420EE3

def_420E18:             ; jumptable 00420E18 default case, case 3
pop     esi
pop     ecx
pop     ebx
retn
sub_420E01 endp




sub_420EF8 proc near
push    ebx
push    ecx
mov     bx, [edx+18h]
cmp     bx, 1BCh
jge     loc_420FC5
cmp     bx, 0BCh
jb      short loc_420F3F
jbe     loc_420F84
cmp     bx, 130h
jb      short loc_420F33
jbe     loc_420F9A
cmp     bx, 1ACh
jz      loc_420FA2
jmp     loc_420FBE

loc_420F33:
cmp     bx, 120h
jz      short loc_420F8C
jmp     loc_420FBE

loc_420F3F:
cmp     bx, 10h
jb      short loc_420F53
jbe     short loc_420F64
cmp     bx, 0ACh
jz      short loc_420F6C
jmp     loc_420FBE

loc_420F53:
test    bx, bx
jnz     loc_420FBE
mov     word ptr [eax+50h], 1
jmp     short loc_420FBE

loc_420F64:
mov     word ptr [eax+50h], 0
jmp     short loc_420FBE

loc_420F6C:
cmp     byte ptr [eax+9], 2
jnz     short loc_420F79
mov     ecx, 1
jmp     short loc_420F7E

loc_420F79:
mov     ecx, 0FFFFFFFFh

loc_420F7E:
mov     [eax+4Ch], cx
jmp     short loc_420FBE

loc_420F84:
mov     word ptr [eax+4Ch], 0
jmp     short loc_420FBE

loc_420F8C:
mov     word ptr [eax+4Eh], 0FFFFh
mov     word ptr [eax+50h], 0FFFFh
jmp     short loc_420FBE

loc_420F9A:
mov     word ptr [eax+4Eh], 0
jmp     short loc_420F64

loc_420FA2:
cmp     byte ptr [eax+9], 2
jnz     short loc_420FAF
mov     ecx, 0FFFFFFFFh
jmp     short loc_420FB4

loc_420FAF:
mov     ecx, 1

loc_420FB4:
mov     [eax+4Ch], cx
mov     word ptr [eax+4Eh], 1

loc_420FBE:
inc     word ptr [edx+18h]
pop     ecx
pop     ebx
retn

loc_420FC5:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 5
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
pop     ecx
pop     ebx
retn
sub_420EF8 endp




sub_420FE4 proc near
push    ebx
push    ecx
mov     bx, [edx+18h]
cmp     bx, 1BCh
jge     loc_4210C1
cmp     bx, 9Ch
jb      short loc_42102F
jbe     loc_421086
cmp     bx, 110h
jb      short loc_42101F
jbe     loc_4210AC
cmp     bx, 1ACh
jz      loc_4210B4
jmp     loc_4210BA

loc_42101F:
cmp     bx, 100h
jz      loc_421094
jmp     loc_4210BA

loc_42102F:
cmp     bx, 10h
jb      short loc_421043
jbe     short loc_42106A
cmp     bx, 8Ch
jz      short loc_421078
jmp     loc_4210BA

loc_421043:
test    bx, bx
jnz     loc_4210BA
cmp     byte ptr [eax+9], 6
jnz     short loc_421059
mov     ecx, 1
jmp     short loc_42105E

loc_421059:
mov     ecx, 0FFFFFFFFh

loc_42105E:
mov     [eax+4Ch], cx
mov     word ptr [eax+4Eh], 1
jmp     short loc_4210BA

loc_42106A:
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
jmp     short loc_4210BA

loc_421078:
mov     word ptr [eax+4Eh], 0FFFFh
mov     word ptr [eax+50h], 0FFFFh
jmp     short loc_4210BA

loc_421086:
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
jmp     short loc_4210BA

loc_421094:
cmp     byte ptr [eax+9], 6
jnz     short loc_4210A1
mov     ecx, 0FFFFFFFFh
jmp     short loc_4210A6

loc_4210A1:
mov     ecx, 1

loc_4210A6:
mov     [eax+4Ch], cx
jmp     short loc_4210BA

loc_4210AC:
mov     word ptr [eax+4Ch], 0
jmp     short loc_4210BA

loc_4210B4:
mov     word ptr [eax+50h], 1

loc_4210BA:
inc     word ptr [edx+18h]
pop     ecx
pop     ebx
retn

loc_4210C1:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 5
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
pop     ecx
pop     ebx
retn
sub_420FE4 endp




sub_4210E0 proc near
push    ebx
mov     bx, [edx+18h]
cmp     bx, 0B0h
jge     loc_42114D
cmp     bx, 20h ; ' '
jb      short loc_421109
jbe     short loc_421139
cmp     bx, 30h ; '0'
jb      short loc_421147
jbe     short loc_421131
cmp     bx, 0A0h
jz      short loc_421141
jmp     short loc_421147

loc_421109:
test    bx, bx
jbe     short loc_421116
cmp     bx, 10h
jz      short loc_42112B
jmp     short loc_421147

loc_421116:
or      byte ptr [edx+140h], 20h
mov     word ptr [eax+4Eh], 1
mov     word ptr [eax+50h], 1
jmp     short loc_421147

loc_42112B:
mov     word ptr [eax+4Eh], 0

loc_421131:
mov     word ptr [eax+50h], 0
jmp     short loc_421147

loc_421139:
mov     word ptr [eax+50h], 0FFFFh
jmp     short loc_421147

loc_421141:
mov     word ptr [eax+4Eh], 0FFFFh

loc_421147:
inc     word ptr [edx+18h]
jmp     short loc_421166

loc_42114D:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 84h
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
inc     byte ptr [eax+0Ah]

loc_421166:
mov     bx, [eax+4Eh]
add     [eax+46h], bx
mov     bx, [eax+50h]
add     [eax+48h], bx
mov     bx, [eax+46h]
add     [eax+16h], bx
mov     bx, [eax+48h]
add     [eax+18h], bx
test    byte ptr [edx+14h], 4
jz      loc_41FF5A
mov     word ptr [eax+14h], 0
mov     word ptr [edx+1Ch], 0FE00h
mov     bx, [edx+1Ch]
mov     [eax+16h], bx
mov     word ptr [eax+18h], 1A00h
and     byte ptr [edx+14h], 0FBh
jmp     loc_41FF5A
sub_4210E0 endp




sub_4211B3 proc near

var_C= dword ptr -0Ch

push    esi
push    edi
sub     esp, 4
mov     esi, eax
mov     eax, ebx
mov     ebx, ecx
cmp     ax, 0Ch
jnz     loc_42124D
xor     eax, eax
jmp     short loc_421217

loc_4211CC:
cmp     ax, 1
jnz     loc_421240

loc_4211D6:
movsx   ecx, ax
mov     edi, ecx
shl     ecx, 3
add     ecx, esi
cmp     word ptr [edx+edi*2+9Eh], 0
jle     short loc_4211F4
mov     [ecx+196h], bx
jmp     short loc_42120C

loc_4211F4:
cmp     byte ptr [edx+1Fh], 10h
jnb     short loc_42122E
movzx   di, byte ptr [edx+1Fh]

loc_4211FF:
add     edi, 4210h
mov     [ecx+196h], di

loc_42120C:
inc     eax
cmp     ax, 0Ch
jge     loc_421274

loc_421217:
cmp     word ptr [esi+6Eh], 0
jle     short loc_421240
cmp     ax, 2
jb      short loc_4211CC
jbe     short loc_4211D6
cmp     ax, 3
jz      short loc_4211D6
jmp     short loc_421240

loc_42122E:
movzx   di, byte ptr [edx+1Fh]
mov     [esp+0Ch+var_C], edi
mov     edi, 1Fh
sub     edi, [esp+0Ch+var_C]
jmp     short loc_4211FF

loc_421240:
movsx   ecx, ax
mov     [esi+ecx*8+196h], bx
jmp     short loc_42120C

loc_42124D:
cmp     ax, 9
jnz     short loc_421269
xor     eax, eax

loc_421255:
movsx   edx, ax
mov     [esi+edx*8+196h], bx
inc     eax
cmp     ax, 0Ch
jl      short loc_421255
jmp     short loc_421274

loc_421269:
movsx   edx, ax
mov     [esi+edx*8+19Eh], cx

loc_421274:
add     esp, 4
pop     edi
pop     esi
retn
sub_4211B3 endp




sub_42127A proc near
push    ebx
mov     ebx, eax
mov     eax, [edx+14h]
sar     eax, 10h
sar     eax, 4
and     eax, 0Fh
sar     eax, 1
mov     bl, [ebx+9]
cmp     bl, 8
jb      short loc_42129C
jbe     short loc_4212C5
cmp     bl, 9
jz      short loc_4212E5
pop     ebx
retn

loc_42129C:
cmp     bl, 7
jnz     loc_421303
mov     bl, [edx+13Dh]
cmp     bl, [edx+13Eh]
ja      short loc_4212BE
test    ax, ax
jnz     short loc_4212FF

loc_4212B8:
or      byte ptr [edx+14h], 21h
pop     ebx
retn

loc_4212BE:
test    ax, ax
jz      short loc_4212FF
jmp     short loc_4212B8

loc_4212C5:
mov     bl, [edx+13Ch]
cmp     bl, [edx+13Eh]
ja      short loc_4212DE
test    ax, ax
jz      short loc_4212B8

loc_4212D8:
or      byte ptr [edx+14h], 9
pop     ebx
retn

loc_4212DE:
test    ax, ax
jz      short loc_4212D8
jmp     short loc_4212B8

loc_4212E5:
mov     bl, [edx+13Ch]
cmp     bl, [edx+13Dh]
ja      short loc_4212FA
test    ax, ax
jz      short loc_4212FF
jmp     short loc_4212D8

loc_4212FA:
test    ax, ax
jz      short loc_4212D8

loc_4212FF:
or      byte ptr [edx+14h], 11h

loc_421303:
pop     ebx
retn
sub_42127A endp




sub_421305 proc near
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ebp, edx
cmp     byte ptr [eax+9], 8
jnz     short loc_421318
add     ebx, 3
jmp     short loc_42131B

loc_421318:
add     ebx, 6

loc_42131B:
mov     edi, ebx
cmp     byte ptr [ebx+ebp+130h], 0FFh
jnz     loc_4213F2
call    sub_4DE043
mov     ecx, eax
test    eax, eax
jz      loc_4213F2
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 7
mov     byte ptr [eax+4], 0
mov     dl, [ebp+16h]
and     dl, 1
mov     [eax+3], dl
cmp     byte ptr [esi+9], 8
jnz     short loc_42135A
mov     byte ptr [eax+0Ch], 0
jmp     short loc_42135E

loc_42135A:
mov     byte ptr [eax+0Ch], 1

loc_42135E:
mov     edx, [ebp+14h]
sar     edx, 10h
sar     edx, 4
mov     ebx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     [ecx+0Dh], dl
mov     byte ptr [ecx+0Eh], 1
mov     al, [ebp+1Eh]
mov     [ecx+0Fh], al
mov     esi, edi
lea     edi, [ecx+14h]
lea     esi, [ebp+esi*8+20h]
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
call    sub_4DE13B
test    eax, eax
jz      short loc_4213DF
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 14h
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     dx, [ecx+14h]
mov     [eax+1Ch], dx
mov     dx, [ecx+16h]
mov     [eax+1Eh], dx
mov     dx, [ecx+18h]
mov     [eax+20h], dx

loc_4213DF:
lea     edx, [ecx+14h]
mov     eax, 1A2h
call    sub_4D8BC3
inc     dword ptr [ebp+144h]

