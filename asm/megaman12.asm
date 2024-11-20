loc_41A0A1:
pop     edx
pop     ecx
pop     ebx
retn
sub_41A068 endp




sub_41A0A5 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_41A0B9
cmp     al, 1
jz      short loc_41A0C2
pop     edx
pop     ecx
pop     ebx
retn

loc_41A0B9:
xor     ebx, ebx
mov     edx, 0Ah
jmp     short loc_41A0D4

loc_41A0C2:
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 1Fh
jnz     short loc_41A0DE
xor     ebx, ebx
mov     edx, 0Bh

loc_41A0D4:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41A0DE:
pop     edx
pop     ecx
pop     ebx
retn
sub_41A0A5 endp




sub_41A0E2 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_41A0EB[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_41A10A
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_41A10A:
mov     eax, ecx
call    sub_419E62
pop     edx
pop     ecx
retn
sub_41A0E2 endp




sub_41A114 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_41A124
mov     eax, edx
call    sub_419F0E

loc_41A124:
mov     eax, edx
call    sub_41A0E2
pop     edx
retn
sub_41A114 endp




sub_41A12D proc near
push    ecx
push    edx
lea     edx, [eax+430h]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_41A13A[ecx*4]
mov     dword ptr [edx+0E4h], 0
mov     dword ptr [edx+98h], 0
mov     dword ptr [edx+18h], 0
mov     dword ptr [edx+2Ch], 0
mov     dword ptr [edx+70h], 0
mov     dword ptr [edx+84h], 0
pop     edx
pop     ecx
retn
sub_41A12D endp




sub_41A177 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+430h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2800280h
mov     dword ptr [ecx+15Ch], 280h
mov     word ptr [ecx+15Eh], 0
xor     ebx, ebx

loc_41A1B7:
mov     eax, ebx
mov     word ptr [ecx+eax*8+196h], 4210h
inc     ebx
cmp     ebx, 9
jl      short loc_41A1B7
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     byte ptr [ecx+0Dh], 0
mov     word ptr [esi], 467Ch
mov     word ptr [esi+0D8h], 0
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
lea     eax, [esi+38h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     word ptr [esi+0Ch], 0
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_4E1877
mov     [esi+60h], eax
mov     dword ptr [esi+64h], 0
mov     byte ptr [esi+0Eh], 0
mov     dword ptr [esi+0A4h], 0
mov     dword ptr [esi+0ACh], 0
mov     byte ptr [esi+0Fh], 0
mov     dword ptr [esi+0CCh], 0
mov     dword ptr [esi+0B4h], 0
mov     dword ptr [esi+0E4h], 0
mov     dword ptr [esi+0E8h], 0
mov     dword ptr [esi+98h], 0
mov     dword ptr [esi+9Ch], 0
mov     ax, [ecx+0B0h]
mov     [esi+0A2h], ax
mov     [esi+0A0h], ax
mov     word ptr [esi+0DCh], 0
mov     dword ptr [esi+0E0h], offset unk_5104F8
xor     ebx, ebx

loc_41A2B6:
mov     edx, ebx
mov     eax, ebx
shl     eax, 2
add     eax, ebx
mov     dword ptr [esi+eax*4+18h], 0
mov     dword ptr [esi+eax*4+1Ch], 0
mov     dword ptr [esi+eax*4+70h], 0
mov     dword ptr [esi+eax*4+74h], 0
xor     edx, ebx
mov     dl, [ecx+2]
mov     edi, ds:dword_55A108
mov     edx, [edi+edx*4]
mov     dl, [edx+0Ah]
xor     dh, dh
shl     edx, 5
mov     [esi+eax*4+22h], dx
mov     [esi+eax*4+20h], dx
movzx   edi, byte ptr [ecx+2]
mov     edx, ds:dword_55A108
mov     edx, [edx+edi*4]
mov     dl, [edx+0Bh]
xor     dh, dh
shl     edx, 5
mov     [esi+eax*4+7Ah], dx
mov     [esi+eax*4+78h], dx
inc     ebx
cmp     ebx, 2
jl      short loc_41A2B6
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 5
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_51054E
mov     dword ptr [ecx+10h], 0
mov     al, [ecx+3]
test    al, al
jbe     short loc_41A367
cmp     al, 1
jz      short loc_41A386
jmp     short loc_41A3B7

loc_41A367:
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Eh], 0
jmp     short loc_41A3AE

loc_41A386:
mov     [ecx+8], al
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     bl, [ecx+0A4h]
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B
or      byte ptr [esi+1], 20h

loc_41A3AE:
mov     word ptr [esi+0DAh], 0FFFFh

loc_41A3B7:
call    sub_4DDF54
test    eax, eax
jz      short loc_41A3F7
mov     [esi+0D0h], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 31h ; '1'
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
lea     edi, [eax+14h]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [eax+1Ch]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+54h]
lea     esi, [ecx+54h]
movsd
movsd
mov     dl, [ecx+1]
mov     [eax+0Ch], dl
jmp     short loc_41A3FE

loc_41A3F7:
mov     eax, ecx
call    sub_4DE336

loc_41A3FE:
mov     eax, ecx
call    sub_41A40A
jmp     loc_41A966
sub_41A177 endp




sub_41A40A proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+430h]
mov     ecx, offset byte_5F8364
mov     al, [eax+0ACh]
mov     edx, [esp+1Ch+var_1C]
mov     [edx+0ADh], al
mov     edi, edx
lea     edi, [edi+2Ch]
mov     esi, edx
lea     esi, [esi+14h]
movsd
movsd
mov     edi, edx
lea     edi, [edi+34h]
mov     esi, edx
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     edi, edx
lea     edi, [edi+5Ch]
mov     esi, edx
lea     esi, [esi+54h]
movsd
movsd
test    byte ptr [ebp+1], 40h
jz      short loc_41A474
xor     edx, edx
mov     ebx, [esp+1Ch+var_1C]

loc_41A45C:
mov     eax, edx
shl     eax, 3
add     eax, ebx
mov     word ptr [eax+196h], 4210h
inc     edx
cmp     edx, 9
jl      short loc_41A45C
jmp     short loc_41A47D

loc_41A474:
mov     word ptr [edx+15Eh], 4210h

loc_41A47D:
mov     eax, [ebp+0D0h]
mov     word ptr [eax+15Eh], 4210h
call    rand_
mov     [ebp+2], ax
call    sub_436700
test    byte ptr [ebp+0], 40h
jz      short loc_41A4A8
mov     eax, [esp+1Ch+var_1C]
call    sub_41B730

loc_41A4A8:
test    byte ptr [ebp+1], 10h
jz      short loc_41A4E6
push    800h
mov     eax, [ecx+54h]
sar     eax, 10h
push    eax
add     ecx, 14h
mov     edx, [esp+24h+var_1C]
mov     edx, [edx+54h]
sar     edx, 10h
mov     eax, [esp+24h+var_1C]
add     eax, 14h
mov     ebx, 20h ; ' '
call    sub_4DE6D6
test    eax, eax
jz      short loc_41A4E6
and     word ptr [ebp+0], 0EFFDh
or      byte ptr [ebp+0], 2

loc_41A4E6:
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+56h]
sub     eax, 2
and     ah, 0Fh
mov     edx, [esp+1Ch+var_1C]
mov     [edx+56h], ax
mov     eax, [ebp+0CCh]
mov     edx, eax
inc     eax
mov     [ebp+0CCh], eax
mov     eax, dword ptr ds:unk_564C32[edx*2]
sar     eax, 10h
sar     eax, 8
dec     eax
mov     edx, [esp+1Ch+var_1C]
mov     [edx+16h], ax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
and     dword ptr [ebp+0CCh], 3Fh
xor     edx, edx
mov     eax, [esp+1Ch+var_1C]
mov     dl, [eax+9]
call    ds:funcs_41A539[edx*4]
xor     edx, edx
jmp     short loc_41A54A

loc_41A544:
inc     edx
cmp     edx, 2
jge     short loc_41A579

loc_41A54A:
mov     [ebp+0Eh], dl
mov     cl, dl
mov     eax, 10h
shl     eax, cl
mov     ecx, eax
xor     eax, eax
mov     ax, [ebp+0]
test    eax, ecx
jz      short loc_41A544
mov     eax, edx
xor     ecx, ecx
mov     cl, [ebp+eax*8+0A4h]
mov     eax, [esp+1Ch+var_1C]
call    ds:funcs_41A570[ecx*4]
jmp     short loc_41A544

loc_41A579:
test    byte ptr [ebp+0], 2
jz      short loc_41A591
xor     edx, edx
mov     dl, [ebp+0BCh]
mov     eax, [esp+1Ch+var_1C]
call    ds:funcs_41A58A[edx*4]

loc_41A591:
test    byte ptr [ebp+1], 4
jz      short loc_41A5A9
xor     edx, edx
mov     dl, [ebp+0B4h]
mov     eax, [esp+1Ch+var_1C]
call    ds:funcs_41A5A2[edx*4]

loc_41A5A9:
test    byte ptr [ebp+0], 1
jz      short loc_41A5DA
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+9]
test    al, al
jbe     short loc_41A5BD
cmp     al, 2
jmp     short loc_41A5C6

loc_41A5BD:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 2
jmp     short loc_41A5CD

loc_41A5C6:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 0

loc_41A5CD:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+0Ah], 0
and     byte ptr [ebp+0], 0FEh

loc_41A5DA:
mov     bx, [ebp+0Ch]
test    bx, bx
jz      short loc_41A5EA
mov     ecx, ebx
dec     ecx
mov     [ebp+0Ch], cx

loc_41A5EA:
mov     si, [ebp+0Ah]
test    si, si
jz      short loc_41A5FA
mov     edi, esi
dec     edi
mov     [ebp+0Ah], di

loc_41A5FA:
test    byte ptr [ebp+1], 2
jz      short loc_41A64B
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+0ADh]
mov     edx, [esp+1Ch+var_1C]
cmp     al, [edx+0ACh]
jz      short loc_41A628
xor     edx, edx
mov     eax, [esp+1Ch+var_1C]
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE9BA
jmp     short loc_41A62F

loc_41A628:
mov     eax, edx
call    sub_4DEB53

loc_41A62F:
mov     ax, [ebp+0A8h]
mov     ds:word_560E4E, ax
mov     ax, [ebp+0B0h]
mov     ds:word_560E46, ax
jmp     short loc_41A653

loc_41A64B:
mov     eax, [esp+1Ch+var_1C]
call    sub_4DFC52

loc_41A653:
mov     eax, [esp+1Ch+var_1C]
call    sub_4DF795
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1
mov     eax, [esp+1Ch+var_1C]
call    sub_432697
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      loc_41A890
test    byte ptr [ebp+0], 2
jz      loc_41A75A
mov     eax, [ebp+0D0h]
or      byte ptr [eax], 2
mov     esi, [ebp+0D0h]
lea     edi, [esi+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+14h]
movsd
movsd
mov     esi, [ebp+0D0h]
lea     edi, [esi+1Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     eax, [ebp+0D0h]
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+56h]
mov     [eax+56h], dx
mov     eax, ds:dword_51055C
sar     eax, 10h
shl     eax, 4
push    eax
mov     eax, ds:dword_510558+2
sar     eax, 10h
shl     eax, 4
push    eax
mov     ecx, ds:dword_510558
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [esp+24h+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     eax, [ebp+0D0h]
lea     edx, [eax+1Ch]
add     eax, 14h
call    sub_4DD4C5
mov     esi, [ebp+0D0h]
lea     edi, [ebp+90h]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [ebp+0D0h]
mov     ax, [eax+16h]
sub     eax, 40h ; '@'
mov     [ebp+92h], ax
push    80h
push    0
push    4080000h
lea     eax, [ebp+98h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+90h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 60h ; '`'
call    sub_4E01FC
jmp     short loc_41A787

loc_41A75A:
mov     eax, [ebp+0D0h]
and     byte ptr [eax], 0FDh
mov     esi, [ebp+0D0h]
lea     edi, [esi+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+14h]
movsd
movsd
mov     esi, [ebp+0D0h]
lea     edi, [esi+1Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd

loc_41A787:
test    byte ptr [ebp+0], 4
jz      short loc_41A7C6
lea     edi, [ebp+10h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1B0h]
movsd
movsd
push    0
push    0
push    4080000h
lea     eax, [ebp+18h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+10h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A0h
call    sub_4E01FC

loc_41A7C6:
test    byte ptr [ebp+0], 8
jz      short loc_41A805
lea     edi, [ebp+24h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1C0h]
movsd
movsd
push    0
push    0
push    4080000h
lea     eax, [ebp+2Ch]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+24h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A0h
call    sub_4E01FC

loc_41A805:
test    byte ptr [ebp+0], 10h
jz      short loc_41A849
lea     edi, [ebp+68h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1D0h]
movsd
movsd
push    0
push    0
push    4080000h
sub     word ptr [ebp+6Ah], 40h ; '@'
lea     eax, [ebp+70h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+68h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 60h ; '`'
call    sub_4E01FC

loc_41A849:
test    byte ptr [ebp+0], 20h
jz      short loc_41A890
lea     edi, [ebp+7Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1C8h]
movsd
movsd
push    0
push    0
push    4080000h
sub     word ptr [ebp+7Eh], 40h ; '@'
lea     eax, [ebp+84h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+7Ch]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 60h ; '`'
call    sub_4E01FC

loc_41A890:
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0Eh], 0
jz      loc_41A95A
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_41A95A
test    byte ptr [ebp+0D8h], 8
jnz     short loc_41A8D6
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0Dh], 4
jl      short loc_41A8D6
or      byte ptr [ebp+0D8h], 0Fh
mov     edx, 10h
mov     eax, 4
call    sub_4A0E24
and     byte ptr [ebp+1], 0DFh

loc_41A8D6:
mov     bh, [ebp+0D8h]
test    bh, 4
jnz     short loc_41A904
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0Dh], 3
jnz     short loc_41A904
mov     ch, bh
or      ch, 7
mov     [ebp+0D8h], ch
mov     edx, 0Eh
mov     eax, 4
call    sub_4A0E24

loc_41A904:
test    byte ptr [ebp+0D8h], 2
jnz     short loc_41A92C
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0Dh], 1
jnz     short loc_41A92C
or      byte ptr [ebp+0D8h], 3
mov     edx, 0Ah
mov     eax, 4
call    sub_4A0E24

loc_41A92C:
mov     bl, [ebp+0D8h]
test    bl, 1
jnz     short loc_41A95A
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_41A95A
mov     cl, bl
or      cl, 1
mov     [ebp+0D8h], cl
mov     edx, 0Dh
mov     eax, 4
call    sub_4A0E24

loc_41A95A:
mov     eax, [esp+1Ch+var_1C]
call    sub_41BC7F

loc_41A962:
add     esp, 4

loc_41A965:
pop     ebp

loc_41A966:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41A40A endp




sub_41A96C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+430h]
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
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
test    byte ptr [edx+1], 40h
jz      short loc_41A9BC
xor     eax, eax

loc_41A9A8:
mov     ecx, eax
mov     word ptr [ebp+ecx*8+196h], 4210h
inc     eax
cmp     eax, 9
jl      short loc_41A9A8
jmp     short loc_41A9C5

loc_41A9BC:
mov     word ptr [ebp+15Eh], 4210h

loc_41A9C5:
mov     eax, [edx+0D0h]
mov     word ptr [eax+15Eh], 4210h
call    rand_
mov     [edx+2], ax
call    sub_436700
mov     eax, [edx+0CCh]
mov     ecx, eax
inc     eax
mov     [edx+0CCh], eax
mov     ecx, dword ptr ds:unk_564C32[ecx*2]
sar     ecx, 10h
sar     ecx, 8
mov     eax, [edx+0D8h]
sar     eax, 10h
add     eax, ecx
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
and     dword ptr [edx+0CCh], 3Fh
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_41A539[ecx*4]
test    byte ptr [edx+1], 4
jz      short loc_41AA45
xor     ecx, ecx
mov     cl, [edx+0B4h]
mov     eax, ebp
call    ds:funcs_41A5A2[ecx*4]

loc_41AA45:
test    byte ptr [edx], 1
jz      short loc_41AA70
mov     al, [ebp+9]
cmp     al, 1
jb      short loc_41AA67
jbe     short loc_41AA59
cmp     al, 3
jz      short loc_41AA5F
jmp     short loc_41AA67

loc_41AA59:
mov     byte ptr [ebp+9], 3
jmp     short loc_41AA67

loc_41AA5F:
mov     byte ptr [ebp+8], 0
mov     byte ptr [ebp+3], 1

loc_41AA67:
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_41AA70:
mov     bx, [edx+0Ch]
test    bx, bx
jz      short loc_41AA80
mov     ecx, ebx
dec     ecx
mov     [edx+0Ch], cx

loc_41AA80:
mov     si, [edx+0Ah]
test    si, si
jz      short loc_41AA90
mov     edi, esi
dec     edi
mov     [edx+0Ah], di

loc_41AA90:
test    byte ptr [edx+1], 2
jz      short loc_41AABE
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_41AAB5
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_41AAC5

loc_41AAB5:
mov     eax, ebp
call    sub_4DEB53
jmp     short loc_41AAC5

loc_41AABE:
mov     eax, ebp
call    sub_4DFC52

loc_41AAC5:
mov     eax, ebp
call    sub_4DF795
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1
mov     eax, ebp
call    sub_432697
mov     eax, ebp
call    sub_41BC7F
jmp     loc_41A965
sub_41A96C endp




sub_41AAE8 proc near
push    edx
lea     edx, [eax+430h]
call    sub_4DE336
mov     eax, [edx+0D0h]
call    sub_4DE2F6
pop     edx
retn
sub_41AAE8 endp




sub_41AB01 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_41AB15
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_41AB15:
pop     edx
retn
sub_41AB01 endp




sub_41AB17 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+430h]
mov     edx, offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_41AB36
cmp     al, 1
jz      short loc_41AB53
jmp     short loc_41AB8E

loc_41AB36:
inc     al
mov     [edi+0Ah], al
mov     byte ptr [edi+0ACh], 3
mov     ah, [esi+1]
or      ah, 2
mov     [esi+1], ah
mov     bl, ah
and     bl, 0FBh
mov     [esi+1], bl

loc_41AB53:
mov     bh, [esi]
test    bh, 0Ch
jz      short loc_41AB85
push    800h
mov     eax, [edx+54h]
sar     eax, 10h
push    eax
lea     ecx, [edx+14h]
mov     edx, [edi+54h]
sar     edx, 10h
lea     eax, [edi+14h]
mov     ebx, 100h
call    sub_4DE6D6
test    eax, eax
jz      short loc_41AB8E
or      byte ptr [esi], 1
jmp     short loc_41AB8E

loc_41AB85:
test    bh, 3Ch
jnz     short loc_41AB8E
or      byte ptr [esi+1], 4

loc_41AB8E:
test    byte ptr [esi], 4
jz      short loc_41ABA9
cmp     byte ptr [edi+0A6h], 1
jnz     short loc_41ABA9
lea     edx, [edi+14h]
mov     eax, 143h
call    sub_4D8BC3

loc_41ABA9:
test    byte ptr [esi], 8
jz      loc_41A966
cmp     byte ptr [edi+0A6h], 2
jnz     loc_41A966
lea     edx, [edi+14h]
mov     eax, 146h

loc_41ABC7:
call    sub_4D8BC3
jmp     loc_41A966
sub_41AB17 endp

jpt_41AC02 dd offset loc_41AC09 ; jump table for switch statement
dd offset loc_41AC12
dd offset loc_41AC4D
dd offset loc_41ACFC



sub_41ABE1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+430h]
mov     ebx, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_41AC02      ; jumptable 0041AC02 default case
xor     edx, edx
mov     dl, al
jmp     jpt_41AC02[edx*4] ; switch jump

loc_41AC09:             ; jumptable 0041AC02 case 0
inc     al
mov     [esi+0Ah], al
or      byte ptr [edi+1], 6

loc_41AC12:             ; jumptable 0041AC02 case 1
mov     ax, [edi]
xor     ah, ah
and     al, 0Ch
cmp     ax, 0Ch
jnz     short loc_41AC30
mov     al, [edi+0Fh]
inc     al
mov     [esi+0ACh], al
xor     byte ptr [edi+0Fh], 1
jmp     short loc_41AC45

loc_41AC30:
test    byte ptr [edi], 4
jz      short loc_41AC3E
mov     byte ptr [esi+0ACh], 1
jmp     short loc_41AC45

loc_41AC3E:
mov     byte ptr [esi+0ACh], 2

loc_41AC45:
inc     byte ptr [esi+0Ah]
jmp     def_41AC02      ; jumptable 0041AC02 default case

loc_41AC4D:             ; jumptable 0041AC02 case 2
mov     eax, [esi+0A3h]
sar     eax, 18h
mov     edx, eax
and     edx, 0F0h
sar     edx, 4
test    al, 0F0h
jz      def_41AC02      ; jumptable 0041AC02 default case
call    sub_4DE13B
test    eax, eax
jz      short loc_41ACA8
mov     byte ptr [eax], 9
mov     byte ptr [eax+2], 0Fh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 0
movsx   edx, dx
mov     cx, [esi+edx*8+190h]
mov     [eax+1Ch], cx
mov     cx, [esi+edx*8+192h]
mov     [eax+1Eh], cx
mov     dx, [esi+edx*8+194h]
mov     [eax+20h], dx

loc_41ACA8:
mov     eax, esi
call    sub_41BB8F
push    80h
push    0
inc     byte ptr [esi+0Ah]
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Eh]
and     eax, 0FFh
or      eax, 4000000h
push    eax
add     edi, 0E4h
push    edi
xor     eax, eax
mov     al, [esi+1]
push    eax
lea     eax, [ebx+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 60h ; '`'
call    sub_4E01FC
jmp     short def_41AC02 ; jumptable 0041AC02 default case

loc_41ACFC:             ; jumptable 0041AC02 case 3
cmp     byte ptr [esi+0A7h], 0
jge     short def_41AC02 ; jumptable 0041AC02 default case
push    800h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
lea     ecx, [ebx+14h]
mov     edx, [esi+54h]
sar     edx, 10h
lea     eax, [esi+14h]
mov     ebx, 100h
call    sub_4DE6D6
test    eax, eax
jnz     short loc_41AD32
or      byte ptr [edi], 1
jmp     short def_41AC02 ; jumptable 0041AC02 default case

loc_41AD32:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 0

def_41AC02:             ; jumptable 0041AC02 default case
mov     al, [esi+0A6h]
and     al, 0Fh
cmp     al, 1
jnz     short loc_41AD56
lea     edx, [esi+14h]
mov     eax, 152h
call    sub_4D8BC3

loc_41AD56:
mov     al, [esi+0A6h]
and     al, 0Fh
cmp     al, 2
jnz     loc_41A966
lea     edx, [esi+14h]
mov     eax, 153h
jmp     loc_41ABC7
sub_41ABE1 endp




sub_41AD73 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+430h]
mov     ecx, offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_41AD95
cmp     al, 1
jz      short loc_41ADB8
jmp     loc_41AE34

loc_41AD95:
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 3
mov     word ptr [esi+44h], 80h
mov     word ptr [esi+4Ch], 20h ; ' '
or      byte ptr [edi+1], 2
mov     dword ptr [edi+64h], 0

loc_41ADB8:
lea     edx, [ecx+14h]
lea     eax, [esi+14h]
call    sub_4DD6C5
cmp     eax, offset unk_800000
jge     short loc_41ADDE
mov     ax, [esi+44h]
test    ax, ax
jz      short loc_41ADF2
mov     edx, eax
sub     edx, 20h ; ' '
mov     [esi+44h], dx
jmp     short loc_41ADF2

loc_41ADDE:
mov     dx, [esi+44h]
cmp     dx, 100h
jge     short loc_41ADF2
mov     ebx, edx
add     ebx, 10h
mov     [esi+44h], bx

loc_41ADF2:
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ecx+14h]
lea     eax, [esi+14h]
mov     ecx, 40h ; '@'
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
cmp     dword ptr [edi+64h], 5AAh
jbe     short loc_41AE34
or      byte ptr [edi], 1
and     byte ptr [edi+1], 0FBh

loc_41AE34:
inc     dword ptr [edi+64h]
jmp     loc_41A966
sub_41AD73 endp

db 90h
jpt_41AE74 dd offset loc_41AE7B ; jump table for switch statement
dd offset loc_41AF41
dd offset loc_41B07C
dd offset def_41AE74



sub_41AE4D proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     edi, [eax+430h]
mov     [esp+1Ch+var_1C], offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_41AE74      ; jumptable 0041AE74 default case, case 3
xor     edx, edx
mov     dl, al
jmp     jpt_41AE74[edx*4] ; switch jump

loc_41AE7B:             ; jumptable 0041AE74 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 3
mov     word ptr [esi+44h], 180h
mov     word ptr [esi+4Ch], 40h ; '@'
or      byte ptr [edi+1], 2
mov     word ptr [edi+4], 0
mov     word ptr [edi+6], 0
mov     word ptr [edi+0DAh], 45Fh
and     byte ptr [edi+1], 0FBh
add     dword ptr [edi+0E0h], 2
mov     ax, word ptr ds:dword_510560+2
mov     [esi+14h], ax
mov     ax, word ptr ds:unk_510564
mov     [esi+16h], ax
mov     ax, ds:word_510566
mov     [esi+18h], ax
mov     eax, ds:dword_510560
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, ds:dword_510560+2
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, dword ptr ds:unk_510564
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     ax, ds:word_510568
mov     [esi+56h], ax
mov     byte ptr [esi+0FBh], 0FFh
mov     byte ptr [esi+0FFh], 0FFh
mov     byte ptr [esi+107h], 0FFh
mov     byte ptr [esi+10Bh], 0FFh
mov     byte ptr [esi+10Fh], 0FFh
mov     byte ptr [esi+113h], 0FFh
mov     byte ptr [esi+117h], 0FFh
mov     byte ptr [esi+11Bh], 0FFh

loc_41AF41:             ; jumptable 0041AE74 case 1
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 5
sub     eax, 40h ; '@'
mov     edx, offset unk_51056A
add     edx, eax
mov     eax, [edi+2]
sar     eax, 10h
shl     eax, 3
add     edx, eax
mov     [edi+0D4h], edx
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     ebp, [esi+14h]
mov     ecx, 40h ; '@'
mov     eax, ebp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, ebp
call    sub_4DD6C5
cmp     eax, offset unk_800000
jge     short loc_41AFAF
mov     dx, [esi+44h]
test    dx, dx
jz      short loc_41AFC5
mov     ebx, edx
sub     ebx, 40h ; '@'
mov     [esi+44h], bx
jmp     short loc_41AFC5

loc_41AFAF:
mov     cx, [esi+44h]
cmp     cx, 300h
jge     short loc_41AFC5
mov     eax, ecx
add     eax, 20h ; ' '
mov     [esi+44h], ax

loc_41AFC5:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, [edi+0D4h]
movsx   edx, word ptr [eax]
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     edx, 200h
sub     ebx, edx
mov     edx, ebx
mov     eax, [eax+2]
sar     eax, 10h
mov     ebx, [esi+16h]
sar     ebx, 10h
sub     eax, 200h
sub     ebx, eax
cmp     edx, 400h
jnb     short loc_41B04D
cmp     ebx, 400h
jnb     short loc_41B04D
inc     word ptr [edi+4]
mov     eax, [edi+0D4h]
cmp     word ptr [eax+0Eh], 0
jge     def_41AE74      ; jumptable 0041AE74 default case, case 3
add     eax, 8
mov     [edi+0D4h], eax
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Bh], 0
xor     eax, eax
mov     al, [esi+0Bh]
mov     ax, ds:word_5105AA[eax*8]
mov     [edi+4], ax
jmp     def_41AE74      ; jumptable 0041AE74 default case, case 3

loc_41B04D:
cmp     word ptr [edi+4], 2
jnz     def_41AE74      ; jumptable 0041AE74 default case, case 3
cmp     word ptr [edi+6], 0
jnz     short loc_41B066
mov     eax, esi
call    sub_41BB8F

loc_41B066:
mov     ax, [edi+6]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     [edi+6], ax
or      byte ptr [edi+1], 4
jmp     def_41AE74      ; jumptable 0041AE74 default case, case 3

loc_41B07C:             ; jumptable 0041AE74 case 2
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [edi+0D4h]
lea     ebp, [esi+14h]
mov     ecx, 40h ; '@'
mov     eax, ebp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [edi+0D4h]
mov     eax, ebp
call    sub_4DD6C5
cmp     eax, 20000h
jge     short loc_41B0CA
mov     ax, [esi+44h]
test    ax, ax
jz      short loc_41B0DE
mov     edx, eax
sub     edx, 40h ; '@'
mov     [esi+44h], dx
jmp     short loc_41B0DE

loc_41B0CA:
mov     bx, [esi+44h]
cmp     bx, 300h
jge     short loc_41B0DE
mov     ecx, ebx
add     ecx, 20h ; ' '
mov     [esi+44h], cx

loc_41B0DE:
cmp     word ptr [esi+44h], 0
jz      short loc_41B0F6
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B

loc_41B0F6:
cmp     byte ptr [esi+0Bh], 4
jz      short loc_41B11B
sub     word ptr [edi+0DAh], 20h ; ' '
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 0Fh
cmp     ax, 8
jnb     short loc_41B11B
mov     eax, esi
call    sub_41BD4B

loc_41B11B:
cmp     byte ptr [esi+0Bh], 4
jz      short loc_41B173
mov     ax, [edi+4]
dec     ax
mov     [edi+4], ax
jnz     short loc_41B173
xor     edx, edx

loc_41B12F:
xor     eax, eax
mov     al, [esi+0Bh]
shl     eax, 3
add     eax, edx
mov     ch, ds:byte_5105AC[eax]
cmp     ch, 0FFh
jz      short loc_41B156
mov     al, ch
and     eax, 0FFh
mov     byte ptr [esi+eax*4+0FBh], 0
inc     edx
jmp     short loc_41B12F

loc_41B156:
mov     al, [esi+0Bh]
inc     al
mov     [esi+0Bh], al
cmp     al, 4
jnb     short loc_41B173
xor     eax, eax
mov     al, [esi+0Bh]
mov     ax, ds:word_5105AA[eax*8]
mov     [edi+4], ax

loc_41B173:
cmp     word ptr [esi+44h], 0
jnz     short def_41AE74 ; jumptable 0041AE74 default case, case 3
cmp     byte ptr [esi+0Bh], 4
jnz     short def_41AE74 ; jumptable 0041AE74 default case, case 3
inc     byte ptr [esi+0Ah]
or      byte ptr [edi], 1
add     dword ptr [edi+0E0h], 2

def_41AE74:             ; jumptable 0041AE74 default case, case 3
inc     dword ptr [edi+64h]
jmp     loc_41A962
sub_41AE4D endp




sub_41B195 proc near
push    edx
xor     edx, edx
mov     dl, [eax+43Eh]
mov     word ptr [eax+edx*8+4D8h], 0
mov     word ptr [eax+edx*8+4DAh], 0
inc     byte ptr [eax+edx*8+4D4h]
pop     edx
retn
sub_41B195 endp




sub_41B1BB proc near

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
sub     esp, 10h
push    eax
lea     esi, [eax+430h]
mov     [esp+2Ch+var_20], offset byte_5F8364
xor     eax, eax
mov     al, [esi+0Eh]
shl     eax, 3
lea     ebp, [esi+0A4h]
add     ebp, eax
mov     dl, [ebp+1]
test    dl, dl
jbe     short loc_41B1F4
cmp     dl, 1
jz      short loc_41B222
jmp     loc_41B414

loc_41B1F4:
inc     dl
mov     [ebp+1], dl
mov     ax, [esi+2]
xor     ah, ah
and     al, 7
and     eax, 0FFFFh
movsx   ax, ds:byte_5105CA[eax]
mov     [ebp+6], ax
mov     byte ptr [ebp+2], 0
call    rand_
and     al, 1Fh
add     al, 10h
mov     [ebp+3], al

loc_41B222:
mov     ah, [ebp+2]
test    ah, ah
jz      short loc_41B230
mov     dl, ah
dec     dl
mov     [ebp+2], dl

loc_41B230:
mov     dh, [ebp+3]
test    dh, dh
jnz     loc_41B40D
mov     edx, [ebp+2]
sar     edx, 10h
mov     eax, [ebp+4]
sar     eax, 10h
add     eax, edx
add     eax, 190h
and     eax, 0FFFh
cmp     eax, 320h
jge     loc_41B407
mov     dx, [ebp+4]
add     dx, [ebp+6]
and     dh, 0Fh
mov     [ebp+4], dx
mov     ebx, [esp+2Ch+var_2C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, [ebp+2]
sar     edx, 10h
add     ebx, edx
add     ebx, 800h
and     ebx, 0FFFh
mov     eax, [esp+2Ch+var_20]
add     eax, 14h
mov     [esp+2Ch+var_24], eax
xor     eax, eax
mov     al, [esi+0Eh]
mov     edx, 8
sub     edx, eax
mov     eax, edx
shl     eax, 3
mov     edx, [esp+2Ch+var_2C]
add     edx, 190h
add     eax, edx
mov     ecx, 800h
mov     edx, [esp+2Ch+var_24]
call    sub_4DE552
cmp     byte ptr [ebp+2], 0
jnz     loc_41B414
cwde
cmp     eax, 0FFFFFF60h
jle     loc_41B414
cmp     eax, 0FFFFFFE0h
jge     loc_41B414
call    sub_4DE043
mov     [esp+2Ch+var_1C], eax
mov     [esp+2Ch+var_28], eax
test    eax, eax
jz      loc_41B414
mov     byte ptr [ebp+2], 14h
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+3], 80h
xor     eax, eax
mov     al, [esi+0Eh]
mov     edx, 8
sub     edx, eax
mov     eax, edx
mov     esi, [esp+2Ch+var_2C]
mov     edi, [esp+2Ch+var_1C]
lea     edi, [edi+14h]
lea     esi, [esi+eax*8+190h]
movsd
movsd
mov     eax, [esp+2Ch+var_1C]
mov     eax, [eax+12h]
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+2Ch+var_1C]
mov     [edx+1Ch], eax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
mov     edx, [esp+2Ch+var_2C]
mov     dx, [edx+56h]
add     dx, [ebp+4]
add     dh, 8
mov     eax, edx
and     ah, 0Fh
mov     edx, [esp+2Ch+var_1C]
mov     [edx+64h], ax
mov     eax, ds:dword_5105D4
sar     eax, 10h
shl     eax, 4
push    eax
mov     eax, ds:dword_5105D0+2
sar     eax, 10h
shl     eax, 4
push    eax
mov     ecx, ds:dword_5105D0
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [edx+62h]
sar     ebx, 10h
add     edx, 1Ch
mov     eax, [esp+34h+var_1C]
add     eax, 14h
call    sub_4DD4C5
mov     edx, [esp+2Ch+var_2C]
add     edx, 14h
mov     eax, [esp+2Ch+var_24]
call    sub_4DD69F
mov     edx, eax
mov     ecx, 18h
sar     edx, 1Fh
idiv    ecx
mov     edx, [esp+2Ch+var_1C]
mov     [edx+9Ch], eax
mov     edx, [esp+2Ch+var_20]
mov     edx, [edx+14h]
sar     edx, 10h
mov     eax, [esp+2Ch+var_2C]
mov     eax, [eax+14h]
sar     eax, 10h
sub     edx, eax
test    edx, edx
jge     short loc_41B3E3
neg     edx

loc_41B3E3:
mov     ecx, 14h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     edx, [esp+2Ch+var_28]
mov     [edx+0A0h], eax
add     edx, ecx
mov     eax, 145h
call    sub_4D8BC3
jmp     short loc_41B414

loc_41B407:
mov     byte ptr [ebp+1], 0
jmp     short loc_41B414

loc_41B40D:
mov     bl, dh
dec     bl
mov     [ebp+3], bl

loc_41B414:
add     esp, 14h
jmp     loc_41A965
sub_41B1BB endp




sub_41B41C proc near
mov     word ptr [eax+4E8h], 0
mov     word ptr [eax+4EAh], 0
inc     byte ptr [eax+4E4h]
retn
sub_41B41C endp




sub_41B435 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
add     eax, 430h
lea     ecx, [ebx+4E4h]
mov     dl, [ecx+1]
cmp     dl, 1
jb      short loc_41B458
jbe     short loc_41B469
cmp     dl, 2
jz      short loc_41B4A2
pop     edx
pop     ecx
pop     ebx
retn

loc_41B458:
test    dl, dl
jnz     loc_41B4DD
inc     dl
mov     [ecx+1], dl
mov     byte ptr [ecx+2], 0

loc_41B469:
cmp     word ptr [eax+0Ch], 0
jnz     short loc_41B4DD
inc     byte ptr [ecx+1]
mov     edx, [eax+0E0h]
mov     dl, [edx]
inc     dl
mov     [ecx+3], dl
mov     ebx, [eax+0E0h]
xor     edx, edx
mov     dl, [ebx+1]
mov     [ecx+4], dx
mov     eax, [eax+0E0h]
mov     al, [eax+1]
xor     ah, ah
mov     [ecx+6], ax
pop     edx
pop     ecx
pop     ebx
retn

loc_41B4A2:
mov     dx, [ecx+4]
dec     edx
mov     [ecx+4], dx
test    dx, dx
jge     short loc_41B4DD
mov     dl, [ecx+3]
dec     dl
mov     [ecx+3], dl
jnz     short loc_41B4C6
mov     byte ptr [ecx+1], 1
mov     word ptr [eax+0Ch], 78h ; 'x'
jmp     short loc_41B4D5

loc_41B4C6:
mov     al, dl
and     al, 1
xor     edx, edx
mov     dl, al
mov     eax, ebx
call    sub_41BA5E

loc_41B4D5:
mov     ax, [ecx+6]
mov     [ecx+4], ax

loc_41B4DD:
pop     edx
pop     ecx
pop     ebx
retn
sub_41B435 endp




sub_41B4E1 proc near
push    ecx
push    edx
lea     ecx, [eax+430h]
lea     edx, [eax+4ECh]
mov     word ptr [edx+4], 0
mov     word ptr [edx+6], 0
inc     byte ptr [edx]
inc     byte ptr [eax+0Dh]
mov     word ptr [eax+15Eh], 4210h
and     byte ptr [ecx+1], 0BFh
mov     eax, [ecx+0D0h]
or      byte ptr [eax], 2
mov     word ptr [ecx+0DEh], 0
pop     edx
pop     ecx
retn
sub_41B4E1 endp

db 8Dh, 40h, 0
jpt_41B566 dd offset loc_41B56D ; jump table for switch statement
dd offset loc_41B576
dd offset loc_41B644
dd offset loc_41B705



sub_41B535 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
push    eax
add     eax, 430h
mov     [esp+20h+var_1C], eax
mov     eax, offset byte_5F8364
mov     ebp, [esp+20h+var_20]
add     ebp, 4ECh
mov     dl, [ebp+1]
cmp     dl, 3           ; switch 4 cases
ja      def_41B566      ; jumptable 0041B566 default case
xor     ecx, ecx
mov     cl, dl
jmp     jpt_41B566[ecx*4] ; switch jump

loc_41B56D:             ; jumptable 0041B566 case 0
inc     dl
mov     [ebp+1], dl
mov     byte ptr [ebp+2], 0

loc_41B576:             ; jumptable 0041B566 case 1
push    800h
mov     edx, [eax+54h]
sar     edx, 10h
push    edx
lea     ecx, [eax+14h]
mov     edx, [esp+28h+var_20]
mov     edx, [edx+54h]
sar     edx, 10h
add     edx, 800h
and     edx, 0FFFh
mov     eax, [esp+28h+var_1C]
mov     eax, [eax+0D0h]
add     eax, 14h
mov     ebx, 400h
call    sub_4DE6D6
test    eax, eax
jz      def_41B566      ; jumptable 0041B566 default case
call    sub_4DE043
mov     edx, [esp+20h+var_1C]
mov     [edx+60h], eax
test    eax, eax
jz      def_41B566      ; jumptable 0041B566 default case
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Dh], 1
lea     edi, [eax+14h]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [eax+1Ch]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     edx, ds:dword_5105DC
sar     edx, 10h
shl     edx, 4
push    edx
mov     edx, ds:dword_5105D8+2
sar     edx, 10h
shl     edx, 4
push    edx
mov     ecx, ds:dword_5105D8
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [esp+28h+var_20]
mov     ebx, [ebx+54h]
sar     ebx, 10h
lea     edx, [eax+1Ch]
add     eax, 14h
call    sub_4DD4C5
mov     eax, [esp+20h+var_1C]
or      byte ptr [eax+1], 8
inc     byte ptr [ebp+1]
jmp     def_41B566      ; jumptable 0041B566 default case

loc_41B644:             ; jumptable 0041B566 case 2
mov     eax, [esp+20h+var_1C]
mov     eax, [eax+60h]
mov     ecx, [esp+20h+var_1C]
test    byte ptr [ecx+1], 8
jz      loc_41B6E4
cmp     byte ptr [eax+0Ch], 0
jz      short loc_41B68F
inc     dl
mov     [ebp+1], dl
add     byte ptr [eax+0Ch], 80h
xor     edx, edx
mov     ecx, [esp+20h+var_20]
mov     dl, [ecx+2]
mov     ecx, edx
shl     ecx, 2
mov     edx, ds:dword_55A108
mov     edx, [ecx+edx]
mov     dl, [edx+0Dh]
xor     dh, dh
mov     [ebp+6], dx
mov     edx, [esp+20h+var_1C]
and     byte ptr [edx+1], 0F7h

loc_41B68F:
lea     edi, [eax+14h]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [eax+1Ch]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     edx, ds:dword_5105DC
sar     edx, 10h
shl     edx, 4
push    edx
mov     edx, ds:dword_5105D8+2
sar     edx, 10h
shl     edx, 4
push    edx
mov     ecx, ds:dword_5105D8
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [esp+28h+var_20]
mov     ebx, [ebx+54h]
sar     ebx, 10h
lea     edx, [eax+1Ch]
add     eax, 14h
call    sub_4DD4C5
jmp     short def_41B566 ; jumptable 0041B566 default case

loc_41B6E4:
inc     dl
mov     [ebp+1], dl
xor     eax, eax
mov     edx, [esp+20h+var_20]
mov     al, [edx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Dh]
xor     ah, ah
mov     [ebp+6], ax
jmp     short def_41B566 ; jumptable 0041B566 default case

loc_41B705:             ; jumptable 0041B566 case 3
mov     dx, [ebp+6]
dec     edx
mov     [ebp+6], dx
test    dx, dx
jge     short def_41B566 ; jumptable 0041B566 default case
mov     byte ptr [ebp+1], 0
mov     byte ptr [ebp+2], 0
mov     eax, [esp+20h+var_1C]
mov     word ptr [eax+0DEh], 0

def_41B566:             ; jumptable 0041B566 default case
add     esp, 8
jmp     loc_41A965
sub_41B535 endp




sub_41B730 proc near

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
sub     esp, 18h
mov     esi, eax
add     eax, 4C0h
mov     [esp+30h+var_30], eax
mov     eax, esi
add     eax, 440h
mov     [esp+30h+var_2C], eax
mov     eax, esi
add     eax, 454h
mov     [esp+30h+var_28], eax
mov     eax, esi
add     eax, 498h
mov     [esp+30h+var_24], eax
mov     eax, esi
add     eax, 4ACh
mov     [esp+30h+var_20], eax
lea     ebx, [esi+430h]
xor     edx, edx
mov     [esp+30h+var_1C], edx
jmp     loc_41B80F

loc_41B780:
mov     edx, eax
mov     eax, 0A0h
call    sub_4D8BC3

loc_41B78C:
cmp     [esp+30h+var_1C], 0
jz      short loc_41B7CB
test    byte ptr [ebx], 3Ch
jnz     short loc_41B79C
or      byte ptr [ebx+1], 10h

loc_41B79C:
xor     eax, eax
mov     edx, [esp+30h+var_1C]
mov     al, ds:byte_5105E2[edx]
mov     word ptr [esi+eax*8+196h], 7FFFh
cmp     edx, 3
jge     short loc_41B7FD
xor     eax, eax
mov     al, ds:byte_5105E2[edx]
mov     word ptr [esi+eax*8+18Eh], 7FFFh
jmp     short loc_41B7FD

loc_41B7CB:
mov     eax, [ebx+0D0h]
mov     word ptr [eax+15Eh], 7FFFh
mov     word ptr [esi+15Eh], 7FFFh
mov     ax, [ebx+0A0h]
mov     [esi+6Eh], ax
jmp     short loc_41B7FD

loc_41B7F0:
lea     edx, [esi+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_41B7FD:
mov     ebp, [esp+30h+var_1C]
inc     ebp
mov     [esp+30h+var_1C], ebp
cmp     ebp, 5
jge     loc_41B927

loc_41B80F:
mov     ebp, [esp+30h+var_1C]
shl     ebp, 2
mov     edx, [esp+ebp+30h+var_30]
mov     cx, [edx+10h]
test    cx, cx
jle     short loc_41B7FD
mov     edi, [edx+8]
and     edi, 0FFFFFFh
jz      short loc_41B7FD
test    byte ptr [edx+0Bh], 38h
jz      short loc_41B7F0
mov     eax, ecx
sub     eax, edi
mov     [edx+10h], ax
test    ax, ax
jg      short loc_41B891
mov     word ptr [edx+10h], 0
xor     eax, eax
mov     al, [esi+2]
mov     edi, eax
shl     edi, 2
mov     eax, ds:dword_55A108
mov     edi, [edi+eax]
movzx   edi, byte ptr [edi+9]
mov     cl, byte ptr [esp+30h+var_1C]
mov     eax, 2
shl     eax, cl
mov     ecx, eax
not     ecx
and     [ebx], cx
mov     eax, esi
call    ss:off_510522[ebp]
xor     eax, eax
mov     al, [esi+2]
mov     ebp, ds:dword_55A108
mov     eax, [ebp+eax*4+0]
mov     al, [eax+0Ch]
xor     ah, ah
mov     [ebx+0DEh], ax

loc_41B891:
test    byte ptr [ebx+1], 8
jz      short loc_41B8D9
mov     cx, [ebx+0DEh]
inc     ecx
mov     [ebx+0DEh], cx
xor     eax, eax
mov     al, [esi+2]
mov     ebp, ds:dword_55A108
mov     eax, [ebp+eax*4+0]
mov     al, [eax+0Ch]
and     eax, 0FFh
movzx   ebp, cx
cmp     ebp, eax
jl      short loc_41B8D9
mov     word ptr [ebx+0DEh], 0
mov     eax, [ebx+60h]
call    sub_4DE371
and     byte ptr [ebx+1], 0F7h

loc_41B8D9:
lea     eax, [esi+14h]
test    byte ptr [ebx], 80h
jz      loc_41B780
add     [ebx+0Ah], di
test    byte ptr [edx+0Bh], 20h
jnz     short loc_41B90F
xor     edx, edx
mov     dl, [esi+2]
mov     edi, ds:dword_55A108
mov     edx, [edi+edx*4]
movzx   edi, byte ptr [edx+9]
mov     edx, [ebx+8]
sar     edx, 10h
cmp     edx, edi
jl      loc_41B780

loc_41B90F:
lea     edx, [esi+14h]
mov     eax, 0A2h
call    sub_4D8BC3
mov     word ptr [ebx+0Ah], 0
jmp     loc_41B78C

loc_41B927:
mov     eax, 1
add     esp, 18h
jmp     loc_41A965
sub_41B730 endp




sub_41B934 proc near
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_41B960
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 2
lea     edi, [eax+48h]
lea     esi, [edx+1B0h]
movsd
movsd

loc_41B960:
mov     byte ptr [edx+107h], 0FFh
mov     byte ptr [edx+10Bh], 0FFh

loc_41B96E:
inc     byte ptr [edx+0Dh]
pop     edi
pop     esi
pop     edx
retn
sub_41B934 endp




sub_41B975 proc near
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_41B9A1
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 2
lea     edi, [eax+48h]
lea     esi, [edx+1C0h]
movsd
movsd

loc_41B9A1:
mov     byte ptr [edx+10Fh], 0FFh
mov     byte ptr [edx+113h], 0FFh
jmp     short loc_41B96E
sub_41B975 endp




sub_41B9B1 proc near
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_41B9DD
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 2
lea     edi, [eax+48h]
lea     esi, [edx+1D0h]
movsd
movsd

loc_41B9DD:
mov     byte ptr [edx+11Bh], 0FFh
jmp     short loc_41B96E
sub_41B9B1 endp




sub_41B9E6 proc near
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_41BA12
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 2
lea     edi, [eax+48h]
lea     esi, [edx+1C8h]
movsd
movsd

loc_41BA12:
mov     byte ptr [edx+117h], 0FFh
jmp     loc_41B96E
sub_41B9E6 endp




sub_41BA1E proc near
push    edx
push    esi
push    edi
lea     edx, [eax+430h]
call    sub_4DE13B
test    eax, eax
jz      short loc_41BA51
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 2
mov     esi, [edx+0D0h]
lea     edi, [eax+48h]
lea     esi, [esi+14h]
movsd
movsd

loc_41BA51:
mov     eax, [edx+0D0h]
and     byte ptr [eax], 0FDh
pop     edi
pop     esi
pop     edx
retn
sub_41BA1E endp




sub_41BA5E proc near

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
lea     ebp, [eax+430h]
call    sub_4DE043
mov     [esp+1Ch+var_18], eax
test    eax, eax
jz      loc_41BB86
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 4
mov     dword ptr [eax+0C8h], (offset dword_5F880A+2)
lea     edi, [eax+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1A0h]
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
lea     esi, [eax+14h]
lea     edx, [eax+1Ch]
test    ecx, ecx
jz      short loc_41BADB
mov     eax, ds:dword_5105E9
sar     eax, 10h
jmp     short loc_41BAE5

loc_41BADB:
mov     eax, ds:dword_5105E9
sar     eax, 10h
neg     eax

loc_41BAE5:
shl     eax, 4
push    eax
mov     eax, ds:dword_5105E5+2
sar     eax, 10h
shl     eax, 4
push    eax
mov     ecx, ds:dword_5105E5
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [esp+24h+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     eax, esi
call    sub_4DD4C5
mov     dword ptr [ebp+48h], 0
mov     dword ptr [ebp+4Ch], 0
mov     word ptr [ebp+48h], 0C00h
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+56h]
mov     [ebp+4Ah], ax
mov     word ptr [ebp+4Ch], 0
mov     esi, [esp+1Ch+var_18]
add     esi, 8Ch
lea     eax, [ebp+48h]
mov     edx, esi
call    sub_4EF638
mov     dword ptr [ebp+50h], 200h
mov     dword ptr [ebp+54h], 200h
mov     dword ptr [ebp+58h], 200h
mov     dword ptr [ebp+5Ch], 0
lea     edx, [ebp+50h]
mov     eax, esi
call    sub_4EF689
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 144h
call    sub_4D8BC3
mov     eax, 1

loc_41BB86:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41BA5E endp




sub_41BB8F proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+430h]
lea     edi, [ebp+48h]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
lea     edi, [ebp+50h]
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
call    rand_
mov     ecx, eax
and     ecx, 3
shl     ecx, 7
add     ecx, 100h
push    0
push    0
shl     ecx, 4
call    rand_
mov     ebx, eax
and     ebx, 3
shl     ebx, 5
mov     edx, [esp+24h+var_1C]
add     edx, 14h
mov     eax, offset byte_5F8364
add     eax, 14h
call    sub_4DDDB4
add     ebx, eax
and     ebx, 0FFFh
lea     edx, [ebp+50h]
lea     eax, [ebp+48h]
call    sub_4DD4C5
call    sub_4DE13B
test    eax, eax
jz      short loc_41BC26
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 10h
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
lea     edi, [eax+48h]
lea     esi, [ebp+48h]
movsd
movsd
mov     word ptr [eax+4Ah], 0FFFFh

loc_41BC26:
call    sub_4DE13B
test    eax, eax
jz      short loc_41BC4C
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 10h
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0
lea     edi, [eax+48h]
lea     esi, [ebp+48h]
movsd
movsd
mov     word ptr [eax+4Ah], 0FFFFh

loc_41BC4C:
mov     ecx, [esp+1Ch+var_1C]
add     ecx, 14h
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B
lea     ecx, [ebp+48h]
mov     ebx, 8
xor     edx, edx
mov     eax, 1
call    sub_43C263
jmp     loc_41A962
sub_41BB8F endp




sub_41BC7F proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
lea     ebp, [eax+430h]
cmp     word ptr [ebp+0DCh], 0
jnz     loc_41BD30
call    sub_4DE13B
mov     [esp+24h+var_1C], eax
mov     [esp+24h+var_20], eax
test    eax, eax
jz      loc_41BD30
lea     edi, [ebp+48h]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [ebp+50h]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0
mov     ebx, [esp+2Ch+var_24]
mov     ebx, [ebx+54h]
sar     ebx, 10h
lea     edx, [ebp+50h]
lea     eax, [ebp+48h]
mov     ecx, 1000h
call    sub_4DD4C5
mov     eax, [esp+24h+var_1C]
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 10h
mov     byte ptr [eax+3], 1
mov     eax, [ebp+0D8h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jz      short loc_41BD0F
mov     eax, [esp+24h+var_1C]
mov     byte ptr [eax+0Ch], 1
jmp     short loc_41BD17

loc_41BD0F:
mov     eax, [esp+24h+var_1C]
mov     byte ptr [eax+0Ch], 2

loc_41BD17:
mov     edi, [esp+24h+var_20]
lea     edi, [edi+48h]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [esp+24h+var_20]
mov     word ptr [eax+4Ah], 0FFFFh

loc_41BD30:
mov     ax, [ebp+0DCh]
inc     eax
xor     ah, ah
and     al, 0Fh
mov     [ebp+0DCh], ax
add     esp, 0Ch
jmp     loc_41A965
sub_41BC7F endp




sub_41BD4B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
lea     ebp, [eax+430h]
lea     edi, [ebp+48h]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [ebp+50h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0
mov     ebx, [eax+54h]
sar     ebx, 10h
lea     edx, [ebp+50h]
lea     eax, [ebp+48h]
mov     ecx, 1000h
call    sub_4DD4C5
call    sub_4DE13B
test    eax, eax
jz      short loc_41BDA9
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 10h
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
lea     edi, [eax+48h]
lea     esi, [ebp+48h]
movsd
movsd
mov     word ptr [eax+4Ah], 0FFFFh

loc_41BDA9:
call    sub_4DE13B
test    eax, eax
jz      short loc_41BDCF
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 10h
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0
lea     edi, [eax+48h]
lea     esi, [ebp+48h]
movsd
movsd
mov     word ptr [eax+4Ah], 0FFFFh

loc_41BDCF:
lea     ecx, [ebp+48h]
mov     ebx, 8
xor     edx, edx
mov     eax, 1
call    sub_43C263
jmp     loc_41A965
sub_41BD4B endp




sub_41BDE8 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     bl, [eax+9]
lea     edx, [eax+430h]
call    ds:funcs_41BDF8[ebx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_41BE0C
mov     eax, ecx
call    sub_4DEADD

loc_41BE0C:
pop     edx
pop     ecx
pop     ebx
retn
sub_41BDE8 endp




sub_41BE10 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0
pop     ecx
pop     ebx
retn
sub_41BE10 endp




sub_41BE53 proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short locret_41BE62
add     word ptr [eax+14h], 2
dec     word ptr [eax+16h]

locret_41BE62:
retn
sub_41BE53 endp




sub_41BE63 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     eax, 3

loc_41BE9F:
mov     edx, eax
mov     byte ptr [ecx+edx*4+0FBh], 0FFh
inc     eax
cmp     eax, 9
jb      short loc_41BE9F
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 3
mov     byte ptr [ecx+0Ah], 0
mov     ebx, offset unk_510600
mov     edx, 3
mov     eax, ecx
call    sub_451859
mov     [esi], eax
mov     byte ptr [eax+0Ch], 7
pop     esi
pop     ecx
pop     ebx
sub_41BE63 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_44]



sub_41BED5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
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
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
xor     ecx, ecx
mov     cl, [eax+8]
lea     ebx, [eax+550h]
mov     edx, offset dword_560BDC
call    ds:funcs_41BF13[ecx*4]
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+0ADh]
jz      short loc_41BF3B
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_41BF42

loc_41BF3B:
mov     eax, ebp
call    sub_4DEADD

loc_41BF42:
mov     edx, [ebp+14h]
sar     edx, 10h
cmp     edx, 0FFFFF800h
jle     short loc_41BF63
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 100h
mov     eax, ebp
call    sub_4ED88B

loc_41BF63:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41BED5 endp




sub_41BF6A proc near
push    ecx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx], 0
mov     eax, ecx
call    sub_42C592
mov     dx, [ecx+16h]
add     edx, eax
mov     [ecx+16h], dx
mov     [ebx+2], dx
mov     ebx, [ecx+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [ecx+20h], ebx
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     ecx
retn
sub_41BF6A endp

db 8Dh, 40h, 0
jpt_41C018 dd offset loc_41C01F ; jump table for switch statement
dd offset loc_41C03F
dd offset loc_41C09C
dd offset loc_41C0E0
dd offset loc_41C0F6
dd offset loc_41C139
dd offset loc_41C1A8



sub_41BFFD proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     eax, edx
mov     edi, ebx
mov     dl, [esi+9]
cmp     dl, 6           ; switch 7 cases
ja      def_41C018      ; jumptable 0041C018 default case
and     edx, 0FFh
jmp     jpt_41C018[edx*4] ; switch jump

loc_41C01F:             ; jumptable 0041C018 case 0
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [eax+9], 0
jnz     def_41C018      ; jumptable 0041C018 default case
cmp     dword ptr [eax+10h], 5Bh ; '['
jnz     def_41C018      ; jumptable 0041C018 default case
jmp     loc_41C0D9

loc_41C03F:             ; jumptable 0041C018 case 1
mov     dx, [ebx]
xor     dh, dh
and     dl, 3Fh
movsx   edx, dx
mov     edx, dword ptr ds:unk_564C32[edx*2]
sar     edx, 10h
shl     edx, 4
sar     edx, 0Ch
mov     ecx, [ebx]
sar     ecx, 10h
add     edx, ecx
mov     [esi+16h], dx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
inc     word ptr [ebx]
mov     dl, [eax+9]
cmp     dl, 1
jnz     def_41C018      ; jumptable 0041C018 default case
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     def_41C018      ; jumptable 0041C018 default case
mov     word ptr [esi+46h], 4
mov     word ptr [ebx], 0
add     [esi+9], dl

def_41C018:             ; jumptable 0041C018 default case
pop     edi
pop     esi
pop     ecx
retn

loc_41C09C:             ; jumptable 0041C018 case 2
mov     dx, [esi+46h]
sub     [esi+16h], dx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
mov     dx, [ebx]
cmp     dx, 6
jge     short loc_41C0C0
add     word ptr [esi+46h], 2
jmp     short loc_41C0CB

loc_41C0C0:
cmp     dx, 54h ; 'T'
jle     short loc_41C0CB
sub     word ptr [esi+46h], 2

loc_41C0CB:
inc     word ptr [edi]
cmp     dword ptr [eax+10h], 78h ; 'x'

loc_41C0D2:             ; jumptable 0041C018 default case
jnz     short def_41C018
mov     word ptr [edi], 0

loc_41C0D9:
inc     byte ptr [esi+9]
pop     edi
pop     esi
pop     ecx
retn

loc_41C0E0:             ; jumptable 0041C018 case 3
cmp     dword ptr [eax+10h], 96h
jnz     short def_41C018 ; jumptable 0041C018 default case
mov     word ptr [ebx], 0
mov     word ptr [esi+44h], 8
jmp     short loc_41C0D9

loc_41C0F6:             ; jumptable 0041C018 case 4
cmp     byte ptr [eax+9], 1
jnz     short loc_41C129
cmp     dword ptr [eax+10h], 0
jle     short loc_41C129
mov     ax, [esi+44h]
shl     eax, 4
movsx   edx, ax
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
cmp     word ptr [edi], 0Ah
jge     short loc_41C122
add     word ptr [esi+44h], 2

loc_41C122:
inc     word ptr [edi]
pop     edi
pop     esi
pop     ecx
retn

loc_41C129:
cmp     byte ptr [eax+9], 2
jnz     def_41C018      ; jumptable 0041C018 default case
cmp     dword ptr [eax+10h], 1
jmp     short loc_41C0D2

loc_41C139:             ; jumptable 0041C018 case 5
mov     dl, [eax+9]
cmp     dl, 2
jnz     short loc_41C18A
mov     ecx, [eax+10h]
test    ecx, ecx
jle     short loc_41C164
cmp     ecx, 15h
jge     short loc_41C164
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 280h
mov     eax, esi
call    sub_4DD43B
sub     word ptr [esi+16h], 20h ; ' '
jmp     short loc_41C17A

loc_41C164:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 380h
mov     eax, esi
call    sub_4DD43B
mov     word ptr [esi+16h], 0F740h

loc_41C17A:
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
pop     edi
pop     esi
pop     ecx
retn

loc_41C18A:
cmp     dl, 3
jnz     def_41C018      ; jumptable 0041C018 default case
cmp     dword ptr [eax+10h], 1
jnz     def_41C018      ; jumptable 0041C018 default case
mov     word ptr [esi+46h], 10h
jmp     loc_41C0D9

loc_41C1A8:             ; jumptable 0041C018 case 6
mov     ax, [esi+46h]
add     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     bx, [esi+46h]
cmp     bx, 8
jle     short loc_41C1CF
mov     ecx, ebx
sub     ecx, 4
mov     [esi+46h], cx

loc_41C1CF:
mov     eax, [esi+14h]
sar     eax, 10h
cmp     eax, 0FFFFFB50h
jl      def_41C018      ; jumptable 0041C018 default case
mov     word ptr [esi+16h], 0FB50h
jmp     loc_41C0D9
sub_41BFFD endp




sub_41C1EB proc near
push    ecx
push    edx
lea     edx, [eax+550h]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_41C1F8[ecx*4]
mov     dword ptr [edx+18h], 0
mov     dword ptr [edx+60h], 0
mov     dword ptr [edx+70h], 0
pop     edx
pop     ecx
retn
sub_41C1EB endp




sub_41C217 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+550h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     word ptr [esi], 26h ; '&'
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+18h], 0
mov     dword ptr [esi+1Ch], 0
lea     eax, [esi+28h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     dword ptr [esi+60h], 0
mov     dword ptr [esi+64h], 0
mov     dword ptr [esi+70h], 0
mov     dword ptr [esi+74h], 0
mov     dword ptr [esi+78h], 0
mov     word ptr [esi+0Ch], 0
mov     word ptr [esi+0Eh], 0
mov     word ptr [esi+80h], 0
mov     word ptr [esi+82h], 0
mov     word ptr [esi+88h], 0
mov     eax, offset unk_510654
call    sub_42C443
mov     [esi+8Ch], eax
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, ds:dword_55A108
mov     eax, [ebx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 5
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_510648
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 6
mov     word ptr [ecx+0Ah], 0
mov     ebx, [ecx+9]
sar     ebx, 18h
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_41C377
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41C217 endp

db 90h
jpt_41C433 dd offset loc_41C4B4 ; jump table for switch statement
dd offset loc_41C4AC
dd offset def_41C433
dd offset def_41C433
dd offset loc_41C43A
dd offset def_41C433
dd offset loc_41C4AC



sub_41C377 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 550h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
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
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     edx, [esp+1Ch+var_1C]
mov     [edx+2], ax
call    sub_436700
test    byte ptr [edx], 4
jz      short loc_41C3D6
mov     eax, ebp
call    sub_41D3D0

loc_41C3D6:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+1], 4
jnz     short loc_41C409
mov     eax, ebp
call    sub_41D1E1
test    eax, eax
jz      short loc_41C409
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+8Ch]
call    sub_4A7F4D
test    eax, eax
jle     short loc_41C409
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+0Eh], 0B4h
or      byte ptr [eax+1], 4

loc_41C409:
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_41C410[ecx*4]
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      loc_41C4CA
mov     al, [ebp+9]
cmp     al, 6           ; switch 7 cases
ja      def_41C433      ; jumptable 0041C433 default case, cases 2,3,5
and     eax, 0FFh
jmp     jpt_41C433[eax*4] ; switch jump

loc_41C43A:             ; jumptable 0041C433 case 4
mov     eax, ebp
call    sub_4DE336
mov     eax, ebp
call    sub_4367FD
call    sub_4DDF54
mov     ecx, eax
test    eax, eax
jz      short loc_41C4BE
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2Fh ; '/'
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0FFh
mov     eax, [ebp+1Ch]
mov     [ecx+1Ch], eax
mov     ebx, [ebp+20h]
sub     ebx, offset unk_800000
mov     [ecx+20h], ebx
mov     eax, [ebp+24h]
mov     [ecx+24h], eax
lea     ebx, [ebp+14h]
lea     eax, [ecx+1Ch]
mov     edx, ebx
call    sub_4DD57B
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+38h], 0F4C7h
mov     word ptr [eax+3Ah], 0FFFFh
mov     word ptr [eax+3Ch], 0E676h
lea     edx, [eax+38h]
mov     eax, ebx
call    sub_4DDDB4
mov     [ecx+56h], ax
jmp     short loc_41C4BE

loc_41C4AC:             ; jumptable 0041C433 cases 1,6
mov     al, [ebp+0Dh]
mov     [ebp+9], al
jmp     short loc_41C4BE

loc_41C4B4:             ; jumptable 0041C433 case 0
mov     byte ptr [ebp+9], 0
jmp     short loc_41C4BE

def_41C433:             ; jumptable 0041C433 default case, cases 2,3,5
mov     byte ptr [ebp+9], 6

loc_41C4BE:
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0FEh

loc_41C4CA:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+0Ch]
test    dx, dx
jz      short loc_41C4DD
mov     ebx, edx
dec     ebx
mov     [eax+0Ch], bx

loc_41C4DD:
mov     eax, [esp+1Ch+var_1C]
mov     cx, [eax+0Ah]
test    cx, cx
jz      short loc_41C4F0
mov     esi, ecx
dec     esi
mov     [eax+0Ah], si

loc_41C4F0:
mov     eax, [esp+1Ch+var_1C]
mov     di, [eax+0Eh]
test    di, di
jz      short loc_41C503
mov     edx, edi
dec     edx
mov     [eax+0Eh], dx

loc_41C503:
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+82h]
test    bx, bx
jz      short loc_41C51C
mov     ecx, ebx
dec     ecx
mov     [eax+82h], cx

loc_41C51C:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 20h
jz      short loc_41C54C
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_41C543
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_41C55A

loc_41C543:
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_41C55A

loc_41C54C:
mov     eax, ebp
call    sub_4DFC52
mov     eax, ebp
call    sub_4DF795

loc_41C55A:
mov     bx, [ebp+14h]
sub     bx, [ebp+2Ch]
shl     ebx, 4
mov     [ebp+44h], bx
mov     bx, [ebp+16h]
sub     bx, [ebp+2Eh]
shl     ebx, 4
mov     [ebp+46h], bx
mov     bx, [ebp+18h]
sub     bx, [ebp+30h]
shl     ebx, 4
mov     [ebp+48h], bx
test    byte ptr [ebp+0], 2
jz      short loc_41C5A5
mov     ecx, [ebp+54h]
sar     ecx, 10h
lea     eax, [ebp+14h]
mov     ebx, 200h
mov     edx, 80h
call    sub_4ED95E

loc_41C5A5:
test    byte ptr [ebp+0], 1
jz      loc_41C6A8
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_41C5EC
mov     edi, eax
lea     edi, [edi+10h]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    0
push    4080000h
add     eax, 18h
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 10h
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A0h
call    sub_4E01FC

loc_41C5EC:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 40h
jz      short loc_41C64A
mov     edi, eax
lea     edi, [edi+68h]
lea     esi, [ebp+1E0h]
movsd
movsd
push    80h
push    0
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
and     eax, 0FFh
or      eax, 5000000h
push    eax
mov     eax, [esp+28h+var_1C]
add     eax, 70h ; 'p'
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 68h ; 'h'
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 60h ; '`'
call    sub_4E01FC

loc_41C64A:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 80h
jz      short loc_41C6A8
mov     edi, eax
lea     edi, [edi+58h]
lea     esi, [ebp+1B8h]
movsd
movsd
push    80h
push    0
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
and     eax, 0FFh
or      eax, 5000000h
push    eax
mov     eax, [esp+28h+var_1C]
add     eax, 60h ; '`'
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 58h ; 'X'
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 60h ; '`'
call    sub_4E01FC

loc_41C6A8:
mov     eax, ebp
call    sub_42DE56
mov     edx, [esp+1Ch+var_1C]
mov     [edx+78h], eax

loc_41C6B5:
add     esp, 4

def_41CA01:             ; jumptable 0041CA01 default case
pop     ebp

def_41CCE3:             ; jumptable 0041CCE3 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41C377 endp



; Attributes: thunk

sub_41C6BF proc near
jmp     sub_4DE336
sub_41C6BF endp




sub_41C6C4 proc near
push    ebx
push    edx
lea     edx, [eax+550h]
mov     bl, [eax+0Ah]
test    bl, bl
ja      short loc_41C6E2
inc     bl
mov     [eax+0Ah], bl
mov     byte ptr [eax+0ACh], 0
or      byte ptr [edx], 20h

loc_41C6E2:
pop     edx
pop     ebx
retn
sub_41C6C4 endp

db 8Bh, 0C0h
jpt_41C72B dd offset loc_41C732 ; jump table for switch statement
dd offset loc_41C765
dd offset loc_41C78C
dd offset loc_41C8CA
dd offset loc_41C909
dd offset loc_41C9AA



sub_41C6FF proc near

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
sub     esp, 10h
mov     ebp, eax
add     eax, 550h
mov     [esp+28h+var_1C], eax
mov     [esp+28h+var_20], offset byte_5F8364
mov     dl, [ebp+0Ah]
cmp     dl, 5           ; switch 6 cases
ja      def_41C72B      ; jumptable 0041C72B default case
xor     eax, eax
mov     al, dl
jmp     jpt_41C72B[eax*4] ; switch jump

loc_41C732:             ; jumptable 0041C72B case 0
inc     dl
mov     [ebp+0Ah], dl
mov     byte ptr [ebp+0ACh], 7
mov     eax, [esp+28h+var_1C]
mov     word ptr [eax+4], 1Eh
or      byte ptr [eax], 20h
lea     edx, [ebp+14h]
mov     eax, 0FDh
call    sub_4D8BC3
mov     eax, [esp+28h+var_1C]
mov     word ptr [eax+88h], 0

loc_41C765:             ; jumptable 0041C72B case 1
mov     eax, [esp+28h+var_1C]
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     def_41C72B      ; jumptable 0041C72B default case
inc     byte ptr [ebp+0Ah]
and     byte ptr [eax], 0DFh

loc_41C781:
mov     word ptr [eax+4], 10h
jmp     def_41C72B      ; jumptable 0041C72B default case

loc_41C78C:             ; jumptable 0041C72B case 2
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     eax, offset byte_5F8364
add     eax, 14h
mov     [esp+28h+var_28], eax
mov     eax, ebp
add     eax, 14h
mov     [esp+28h+var_24], eax
mov     ecx, 40h ; '@'
mov     edx, [esp+28h+var_28]
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     edi, [esp+28h+var_1C]
lea     edi, [edi+38h]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, [esp+28h+var_1C]
lea     edi, [edi+40h]
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
push    0
push    0
mov     edx, [esp+30h+var_24]
mov     eax, [esp+30h+var_28]
call    sub_4DDDB4
mov     ebx, eax
and     ebx, 0FFFh
mov     edx, [esp+30h+var_1C]
add     edx, 40h ; '@'
mov     esi, [esp+30h+var_1C]
add     esi, 38h ; '8'
mov     ecx, 1100h
mov     eax, esi
call    sub_4DD4C5
mov     ebx, [esp+28h+var_1C]
mov     ebx, [ebx+2]
sar     ebx, 10h
mov     edx, esi
mov     eax, [esp+28h+var_24]
call    sub_4DD69F
mov     edx, eax
inc     ebx
sar     edx, 1Fh
idiv    ebx
mov     [ebp+4Ch], ax
cmp     ax, 40h ; '@'
jle     short loc_41C83D
mov     eax, 40h ; '@'
jmp     short loc_41C843

loc_41C83D:
mov     eax, [ebp+4Ah]
sar     eax, 10h

