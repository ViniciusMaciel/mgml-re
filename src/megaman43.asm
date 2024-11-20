mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 8
jz      loc_469093
cmp     byte ptr [ebp+9], 1
jz      loc_469072
push    400h
mov     eax, [ebx+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebx+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
lea     eax, [ebp+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      loc_46900A
mov     ecx, [ebp+80h]
cmp     ecx, 80000h
jbe     short loc_468F65
mov     byte ptr [ebp+9], 1
mov     byte ptr [ebp+0Ah], 0
jmp     loc_469072

loc_468F65:
cmp     ecx, 1E848h
jnb     short loc_468F9F
mov     eax, [esp+38h+var_20]
mov     cl, [eax+3Eh]
test    cl, cl
jnz     short loc_468F9F
cmp     byte ptr [ebp+3], 2
jz      short loc_468F8A
mov     byte ptr [ebp+9], 3
mov     [ebp+0Ah], cl
jmp     loc_469068

loc_468F8A:
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Ah], 5
mov     [esi+2], cl
mov     [esi+1], cl
mov     [esi], cl
jmp     loc_469068

loc_468F9F:
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 6
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 80h
jnz     short loc_468FB9
mov     byte ptr [eax+7], 0
or      byte ptr [eax+6], 80h

loc_468FB9:
mov     eax, [esp+38h+var_20]
mov     word ptr [eax+3Ah], 10h
cmp     byte ptr [ebp+3], 2
jz      loc_469072
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 1
jnz     loc_469072
mov     byte ptr [ebp+9], 4
mov     byte ptr [ebp+0ACh], 5
mov     bh, [eax+6]
or      bh, 3
mov     [eax+6], bh
mov     cl, bh
and     cl, 7Fh
mov     [eax+6], cl
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_469072

loc_46900A:
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 6
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 80h
jnz     short loc_469024
mov     byte ptr [eax+7], 0
or      byte ptr [eax+6], 80h

loc_469024:
mov     eax, [esp+38h+var_20]
mov     word ptr [eax+3Ah], 10h
cmp     dword ptr [ebp+80h], 1E848h
jnb     short loc_469072
mov     dh, [eax+3Eh]
test    dh, dh
jnz     short loc_469072
cmp     byte ptr [ebp+3], 2
jz      short loc_469050
mov     byte ptr [ebp+9], 3
mov     [ebp+0Ah], dh
jmp     short loc_469060

loc_469050:
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Ah], 5
mov     [esi+2], dh
mov     [esi+1], dh
mov     [esi], dh

loc_469060:
mov     eax, [esp+38h+var_1C]
and     byte ptr [eax+6], 7Fh

loc_469068:
mov     eax, [esp+38h+var_20]
mov     word ptr [eax+3Ah], 80h

loc_469072:
cmp     byte ptr [ebp+9], 0
jnz     short loc_4690BF
cmp     byte ptr [ebp+0Ah], 6
jnz     short loc_4690BF
cmp     byte ptr [ebp+0ACh], 1
jz      short loc_4690BF
mov     byte ptr [ebp+0ACh], 1
jmp     loc_468DD2

loc_469093:
mov     dh, [ebp+9]
test    dh, dh
jnz     short loc_4690BF
cmp     byte ptr [ebp+0Ah], 6
jnz     short loc_4690BF
mov     [ebp+0Ah], dh
mov     [ebp+0Fh], dh
mov     word ptr [ebp+44h], 50h ; 'P'
mov     eax, [esp+38h+var_20]
mov     byte ptr [eax+3Dh], 78h ; 'x'
mov     [eax+3Ch], dh
mov     eax, [esp+38h+var_1C]
and     byte ptr [eax+6], 7Eh

loc_4690BF:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4690C6[edx*4]
lea     edx, [ebp+14h]
mov     cl, [ebp+0A6h]
test    cl, 4
jz      short loc_4690E2
mov     eax, 159h
jmp     short loc_4690EC

loc_4690E2:
test    cl, 8
jz      short loc_4690F1
mov     eax, 15Ah

loc_4690EC:
call    sub_4D8BC3

loc_4690F1:
mov     al, [ebp+9]
cmp     al, 5
jz      short loc_469107
cmp     al, 6
jz      short loc_469107
cmp     al, 7
jz      short loc_469107
mov     eax, ebp
call    sub_46A5C7

loc_469107:
cmp     byte ptr [ebp+3], 2
jnz     short loc_469167
mov     eax, [ebp+15Ch]
sar     eax, 10h
test    ah, 80h
jz      short loc_469125
cmp     byte ptr [esi+2], 0
jnz     short loc_469125
and     byte ptr [ebp+0], 0FDh

loc_469125:
mov     eax, [esp+38h+var_20]
add     eax, 8
test    byte ptr [ebp+0], 2
jz      short loc_469154
mov     edi, [esp+38h+var_20]
lea     esi, [ebp+190h]
movsd
movsd
push    0

loc_469140:
push    offset unk_800000
mov     edx, [ebp+70h]
sar     edx, 18h
or      edx, 4080000h
push    edx
jmp     short loc_46918D

loc_469154:
mov     edi, [esp+38h+var_20]
lea     esi, [ebp+190h]
movsd
movsd
push    80h
jmp     short loc_469140

loc_469167:
mov     edi, [esp+38h+var_20]
lea     esi, [ebp+190h]
movsd
movsd
push    0
push    offset unk_800000
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
mov     eax, [esp+44h+var_20]
add     eax, 8

loc_46918D:
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 50h ; 'P'
mov     eax, [esp+4Ch+var_20]
call    sub_4E01FC
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 2
jz      loc_4692C7
xor     edx, edx
mov     [esp+38h+var_28], dx
mov     [esp+38h+var_26], 4D0h
mov     [esp+38h+var_24], 0FFE0h
lea     eax, [ebp+258h]
mov     ebx, esp
lea     edx, [esp+38h+var_28]
call    sub_4EF1FB
mov     ax, [ebp+1A0h]
add     eax, [esp+38h+var_38]
mov     edx, [esp+38h+var_20]
mov     [edx], ax
mov     dx, [ebp+1A2h]
add     edx, [esp+38h+var_34]
mov     eax, [esp+38h+var_20]
mov     [eax+2], dx
mov     dx, [ebp+1A4h]
add     edx, [esp+38h+var_30]
mov     eax, [esp+38h+var_20]
mov     [eax+4], dx
push    80h
push    0
xor     eax, eax
mov     edx, [esp+40h+var_1C]
mov     ax, [edx+4]
or      eax, 5080000h
push    eax
mov     esi, [esp+44h+var_20]
add     esi, 18h
push    esi
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
mov     eax, [esp+4Ch+var_20]
call    sub_4E01FC
lea     eax, [ebp+2B8h]
mov     ebx, esp
lea     edx, [esp+38h+var_28]
call    sub_4EF1FB
mov     dx, [ebp+1B0h]
add     edx, [esp+38h+var_38]
mov     eax, [esp+38h+var_20]
mov     [eax], dx
mov     dx, [ebp+1B2h]
mov     ecx, [esp+38h+var_34]
add     edx, ecx
mov     [eax+2], dx
mov     ax, [ebp+1B4h]
add     eax, [esp+38h+var_30]
mov     edx, [esp+38h+var_20]
mov     [edx+4], ax
push    80h
push    0
xor     eax, eax
mov     edx, [esp+40h+var_1C]
mov     ax, [edx+4]
or      eax, 5080000h
push    eax
push    esi
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
mov     eax, [esp+4Ch+var_20]
call    sub_4E01FC

loc_4692C7:
cmp     byte ptr [ebp+3], 2
jz      short loc_4692E6
test    byte ptr [ebp+0], 2
jz      short loc_4692E6
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 0A0h
mov     eax, ebp
call    sub_4ED88B

loc_4692E6:
add     esp, 20h
jmp     loc_469533
sub_468C5F endp



; Attributes: thunk

sub_4692EE proc near
jmp     sub_4DE2F6
sub_4692EE endp




sub_4692F3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [eax+0C4h]
lea     esi, [eax+64h]
cmp     dword ptr [eax+80h], 80000h
jbe     short loc_469321
cmp     ds:byte_77E7D4, 1Dh
jnz     short loc_46934B
cmp     byte ptr ds:dword_77E7D5, 2
jnz     short loc_46934B

loc_469321:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 5
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0ACh], 6
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
or      byte ptr [edi+6], 40h
jmp     short loc_469352

loc_46934B:
mov     eax, ecx
call    sub_4DEADD

loc_469352:
cmp     byte ptr [ecx+3], 2
jnz     loc_46A4A5
mov     word ptr [ecx+15Eh], 0
or      byte ptr [ecx+15Fh], 80h
mov     byte ptr [esi+2], 0
mov     dl, [esi+2]
mov     [esi+1], dl
mov     [esi], dl
jmp     loc_46A4A5
sub_4692F3 endp




sub_46937D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+64h]
xor     ebx, ebx
mov     bl, [eax+0Ah]
call    ds:funcs_46938A[ebx*4]
cmp     byte ptr [ecx+3], 2
jnz     short loc_4693FF
mov     bl, [edx+1]
and     bl, 1Fh
movsx   bx, bl
mov     eax, ebx
shl     eax, 5
mov     bl, [edx]
and     bl, 1Fh
movsx   bx, bl
or      eax, ebx
mov     bl, [edx+2]
and     bl, 1Fh
movsx   bx, bl
shl     ebx, 0Ah
or      eax, ebx
mov     [ecx+15Eh], ax
sub     byte ptr [edx], 4
sub     byte ptr [edx+1], 4
cmp     byte ptr [edx], 0
jge     short loc_4693E1
mov     byte ptr [edx], 0
mov     byte ptr [edx+1], 0
or      byte ptr [ecx+15Fh], 80h

loc_4693E1:
mov     ecx, [ecx+15Ch]
sar     ecx, 10h
test    ch, 80h
jz      short loc_4693FF
mov     bl, [edx+2]
dec     bl
mov     [edx+2], bl
test    bl, bl
jge     short loc_4693FF
mov     byte ptr [edx+2], 0

loc_4693FF:
pop     edx
pop     ecx
pop     ebx
retn
sub_46937D endp




sub_469403 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
lea     edx, [eax+408h]
mov     [esp+1Ch+var_1C], edx
lea     edx, [eax+0C4h]
lea     esi, [eax+1E8h]
test    byte ptr [edx+1], 0Fh
jz      short loc_46947E
mov     dx, [ebp+56h]
add     dh, 8
and     dh, 0Fh
mov     esi, [esp+1Ch+var_1C]
mov     [esi+38h], dx
mov     byte ptr [ebp+0Ah], 5
mov     esi, [ebp+54h]
sar     esi, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+36h]
sar     edx, 10h
cmp     esi, edx
jle     short loc_46945A
mov     byte ptr [ebp+0ACh], 0Eh
jmp     short loc_469461

loc_46945A:
mov     byte ptr [ebp+0ACh], 0Dh

loc_469461:
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_46963A
jmp     loc_469530

loc_46947E:
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     edx, [esp+1Ch+var_1C]
mov     bl, [edx+3Dh]
test    bl, bl
jnz     loc_469529
mov     cl, [ebp+0A6h]
cmp     cl, 1
jnz     loc_469530
test    [esi+2], cl
jz      short loc_4694DE
mov     byte ptr [ebp+0Ah], 3
mov     byte ptr [ebp+0Dh], 80h
mov     [ebp+0Eh], bl
mov     byte ptr [ebp+0Fh], 3
mov     edi, edx
lea     edi, [edi+30h]
lea     esi, [ebp+14h]
movsd
movsd
mov     dx, [ebp+56h]
mov     esi, [esp+1Ch+var_1C]
mov     [esi+38h], dx
mov     byte ptr [esi+3Dh], 0Ah
mov     [esi+3Ch], bl
jmp     short loc_469530

loc_4694DE:
cmp     byte ptr [ebp+0Fh], 0
jnz     short loc_4694E7
add     [edx+3Ch], cl

loc_4694E7:
mov     edx, [esp+1Ch+var_1C]
cmp     byte ptr [edx+3Ch], 1
jz      short loc_4694FA
mov     byte ptr [edx+3Dh], 78h ; 'x'
mov     byte ptr [ebp+0Fh], 0
jmp     short loc_469530

loc_4694FA:
mov     byte ptr [ebp+0Ah], 3
mov     byte ptr [ebp+0Dh], 80h
mov     byte ptr [ebp+0Eh], 0
mov     byte ptr [ebp+0Fh], 3
mov     edi, edx
lea     edi, [edi+30h]
lea     esi, [ebp+14h]
movsd
movsd
mov     dx, [ebp+56h]
mov     esi, [esp+1Ch+var_1C]
mov     [esi+38h], dx
mov     byte ptr [esi+3Dh], 0Ah
mov     byte ptr [esi+3Ch], 0
jmp     short loc_469530

loc_469529:
mov     bh, bl
dec     bh
mov     [edx+3Dh], bh

loc_469530:
add     esp, 4

loc_469533:
pop     ebp
jmp     loc_46A4A5
sub_469403 endp




sub_469539 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0Eh], 0
jnz     short loc_469575
mov     ecx, [edx+36h]
sar     ecx, 10h
sub     ecx, 400h
and     ecx, 0FFFh
mov     ebx, [eax+54h]
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_46956E

loc_469564:
mov     byte ptr [eax+0Ah], 2
mov     byte ptr [edx+3Dh], 5
jmp     short loc_469596

loc_46956E:
sub     word ptr [eax+56h], 40h ; '@'
jmp     short loc_469596

loc_469575:
mov     ecx, [edx+36h]
sar     ecx, 10h
add     ecx, 400h
and     ecx, 0FFFh
mov     ebx, [eax+54h]
sar     ebx, 10h
cmp     ebx, ecx
jz      short loc_469564
add     word ptr [eax+56h], 40h ; '@'

loc_469596:
and     byte ptr [eax+57h], 0Fh
pop     edx
pop     ecx
pop     ebx
retn
sub_469539 endp




sub_46959E proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
lea     ecx, [eax+0C4h]
mov     bl, [edx+3Dh]
dec     bl
mov     [edx+3Dh], bl
jnz     short loc_4695DE
mov     [eax+0Ah], bl
mov     word ptr [eax+44h], 50h ; 'P'
mov     byte ptr [edx+3Dh], 78h ; 'x'
and     byte ptr [ecx+6], 0FEh
mov     byte ptr [eax+0ACh], 1

loc_4695CF:
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B

loc_4695DE:
pop     edx
pop     ecx
pop     ebx
retn
sub_46959E endp




sub_4695E2 proc near
push    ebx
push    ecx
push    edx
lea     ecx, [eax+408h]
lea     edx, [eax+1E8h]
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [ecx+3Dh], 0Ah
test    byte ptr [edx+2], 1
jz      short loc_46960C
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0ACh], 0Dh
jmp     short loc_4695CF

loc_46960C:
mov     byte ptr [eax+0Eh], 1
mov     byte ptr [eax+0ACh], 0Eh
jmp     short loc_4695CF
sub_4695E2 endp




sub_469619 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bl, [eax+3Dh]
test    bl, bl
jnz     short loc_469630
mov     byte ptr [edx+0Ah], 1
pop     edx
pop     ebx
retn

loc_469630:
mov     bh, bl
dec     bh
mov     [eax+3Dh], bh
pop     edx
pop     ebx
retn
sub_469619 endp




sub_46963A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+408h]
add     eax, 0C4h
mov     ebx, [ecx+54h]
sar     ebx, 10h
mov     esi, [edx+36h]
sar     esi, 10h
cmp     ebx, esi
jnz     short loc_469692

loc_46965B:
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Fh], 0
mov     word ptr [ecx+44h], 50h ; 'P'
mov     byte ptr [edx+3Ch], 0
and     byte ptr [eax+6], 0FEh
mov     byte ptr [ecx+0ACh], 1
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, esi
mov     eax, ecx
call    sub_4DE96B

loc_469689:
and     byte ptr [ecx+57h], 0Fh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_469692:
jle     short loc_46969C
sub     word ptr [ecx+56h], 80h
jmp     short loc_469689

loc_46969C:
add     word ptr [ecx+56h], 80h
jmp     short loc_469689
sub_46963A endp




sub_4696A4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
add     eax, 408h
lea     edi, [esi+0C4h]
cmp     byte ptr [esi+3], 2
jnz     short loc_46971F
mov     dh, [esi+9]
test    dh, dh
jnz     short loc_46971F
cmp     byte ptr [esi+0Ah], 6
jnz     short loc_46971F
cmp     byte ptr [edi+7], 0B4h
jnb     short loc_46970C
mov     ecx, [eax+38h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5F8376+2)
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
inc     byte ptr [edi+7]
jmp     loc_46A4A5

loc_46970C:
mov     [edi+7], dh
and     byte ptr [edi+6], 7Fh
mov     byte ptr [esi+9], 1
mov     [esi+0Ah], dh
jmp     loc_46A4A5

loc_46971F:
mov     ecx, [eax+38h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5F8376+2)
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
jmp     loc_46A4A5
sub_4696A4 endp




sub_469759 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+408h]
lea     edx, [eax+64h]
movzx   esi, byte ptr [eax+0Ah]
call    ds:funcs_46976C[esi*4]
cmp     byte ptr [ecx+3], 2
jnz     loc_469810
mov     al, [ebx+3Fh]
test    al, al
jnz     short loc_4697ED
mov     bl, [edx+1]
and     bl, 1Fh
movsx   bx, bl
shl     ebx, 5
mov     al, [edx]
and     al, 1Fh
movsx   si, al
or      ebx, esi
mov     al, [edx+2]
and     al, 1Fh
movsx   si, al
shl     esi, 0Ah
or      ebx, esi
mov     [ecx+15Eh], bx
inc     byte ptr [edx+2]
mov     al, [ecx+15Fh]
or      al, 80h
mov     [ecx+15Fh], al
cmp     byte ptr [edx+2], 10h
jl      short loc_469810
mov     bl, al
and     bl, 7Fh
mov     [ecx+15Fh], bl
mov     byte ptr [edx+2], 10h
mov     bh, [edx]
cmp     bh, 10h
jz      short loc_469810
mov     cl, bh
add     cl, 4
mov     [edx], cl
add     byte ptr [edx+1], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4697ED:
mov     ah, al
dec     ah
mov     [ebx+3Fh], ah
mov     word ptr [ecx+15Eh], 0
or      byte ptr [ecx+15Fh], 80h
mov     byte ptr [edx+2], 0
mov     al, [edx+2]
mov     [edx+1], al
mov     [edx], al

loc_469810:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_469759 endp




sub_469815 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+408h]
lea     edi, [eax+1E8h]
mov     byte ptr [eax+0ACh], 0
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [esi+3Dh], 0Ah
mov     byte ptr [edi+6], 5Ah ; 'Z'
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [esi+3Fh], 1
jmp     loc_46A4A5
sub_469815 endp




sub_469853 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
lea     edi, [eax+64h]
mov     byte ptr [ecx+3Fh], 1
mov     ah, [ecx+3Dh]
test    ah, ah
jz      short loc_46989D
mov     dh, ah
dec     dh
mov     [ecx+3Dh], dh
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     loc_46A4A5

loc_46989D:
mov     byte ptr [esi+0ACh], 2
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
cmp     byte ptr [esi+3], 2
jnz     short loc_4698CA
mov     byte ptr [ecx+3Fh], 7
mov     byte ptr [edi], 0
mov     byte ptr [edi+1], 0
mov     byte ptr [edi+2], 0

loc_4698CA:
mov     byte ptr [esi+0Ah], 2
mov     word ptr [esi+44h], 1E0h
mov     word ptr [ecx+3Ah], 10h
jmp     loc_46A4A5
sub_469853 endp




sub_4698DF proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
lea     edi, [esi+0C4h]
lea     ebp, [esi+1E8h]
push    400h
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
test    eax, eax
jz      short loc_469932
mov     ah, [ebp+6]
test    ah, ah
jnz     short loc_469986

loc_469932:
cmp     byte ptr [esi+3], 2
jz      short loc_469957

loc_469938:
mov     byte ptr [esi+0Ah], 3
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+3Dh], 14h
or      byte ptr [edi+6], 80h
mov     byte ptr [edi+7], 0
mov     eax, esi
call    sub_4699F5
jmp     loc_469530

loc_469957:
mov     bh, [ebp+6]
test    bh, bh
jnz     short loc_469938
mov     byte ptr [esi+9], 5
mov     [esi+0Ah], bh
mov     byte ptr [esi+0ACh], 6
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
or      byte ptr [edi+6], 40h
jmp     loc_469530

loc_469986:
mov     dl, ah
dec     dl
mov     [ebp+6], dl
cmp     dword ptr [esi+80h], 13880h
jnb     short loc_4699E9
mov     byte ptr [esi+9], 2
mov     byte ptr [esi+0ACh], 4
or      byte ptr [edi+6], 2
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
lea     edx, [esi+14h]
mov     eax, 15Bh
call    sub_4D8BC3
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ch]
xor     ah, ah
mov     [edi+4], ax
mov     eax, esi
call    sub_469AD9
jmp     loc_469530

loc_4699E9:
mov     eax, esi
call    sub_4696A4
jmp     loc_469530
sub_4698DF endp




sub_4699F5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
lea     edx, [eax+0C4h]
test    byte ptr [edx+1], 0Fh
jz      short loc_469A67
mov     byte ptr [esi+9], 0
mov     word ptr [esi+44h], 50h ; 'P'
mov     byte ptr [esi+0Ah], 5
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     [edi+38h], ax
mov     eax, [esi+54h]
sar     eax, 10h
mov     edx, [edi+36h]
sar     edx, 10h
cmp     eax, edx
jle     short loc_469A43
mov     byte ptr [esi+0ACh], 0Eh
jmp     short loc_469A4A

loc_469A43:
mov     byte ptr [esi+0ACh], 0Dh

loc_469A4A:
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     eax, esi
call    sub_46963A
jmp     loc_46A4A5

loc_469A67:
mov     dl, [edi+3Dh]
test    dl, dl
jz      short loc_469A87
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
dec     byte ptr [edi+3Dh]
jmp     loc_46A4A5

loc_469A87:
cmp     byte ptr [esi+0A6h], 1
jz      short loc_469AA6
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
jmp     loc_46A4A5

loc_469AA6:
mov     [esi+9], dl
mov     word ptr [esi+44h], 50h ; 'P'
jmp     loc_46A4A5
sub_4699F5 endp




sub_469AB4 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
mov     bl, [edx+3Dh]
test    bl, bl
jz      short loc_469ACD
mov     bh, bl
dec     bh
mov     [edx+3Dh], bh
pop     edx
pop     ebx
retn

loc_469ACD:
mov     [eax+9], bl
mov     word ptr [eax+44h], 50h ; 'P'
pop     edx
pop     ebx
retn
sub_469AB4 endp




sub_469AD9 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     edx, eax
lea     esi, [eax+408h]
lea     ebx, [eax+0C4h]
lea     ecx, [eax+64h]
cmp     byte ptr [eax+0A6h], 0
jnz     short loc_469B08
mov     word ptr [esi+3Ah], 20h ; ' '
mov     eax, edx
call    sub_4696A4

loc_469B08:
cmp     byte ptr [edx+3], 2
jnz     short loc_469B6D
mov     al, [ecx+1]
and     al, 1Fh
cbw
shl     eax, 5
mov     [esp+18h+var_18], eax
mov     al, [ecx]
and     al, 1Fh
cbw
mov     edi, [esp+18h+var_18]
or      edi, eax
mov     al, [ecx+2]
and     al, 1Fh
cbw
shl     eax, 0Ah
or      edi, eax
mov     [edx+15Eh], di
inc     byte ptr [ecx+2]
mov     al, [edx+15Fh]
or      al, 80h
mov     [edx+15Fh], al
cmp     byte ptr [ecx+2], 10h
jl      short loc_469B6D
and     al, 7Fh
mov     [edx+15Fh], al
mov     byte ptr [ecx+2], 10h
mov     ah, [ecx]
cmp     ah, 10h
jz      short loc_469B6D
mov     al, ah
add     al, 4
mov     [ecx], al
add     byte ptr [ecx+1], 4

loc_469B6D:
mov     ecx, [edx+0A4h]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jnz     short loc_469BAB
cmp     byte ptr [edx+3], 2
jz      short loc_469BA3
and     byte ptr [ebx+6], 0FDh
mov     byte ptr [edx+9], 0
mov     word ptr [edx+44h], 50h ; 'P'
mov     word ptr [esi+3Ah], 10h
mov     byte ptr [esi+3Eh], 3Ch ; '<'
or      byte ptr [ebx+6], 80h
mov     byte ptr [ebx+7], 0
jmp     short loc_469BAB

loc_469BA3:
mov     byte ptr [edx+9], 8
mov     byte ptr [edx+0Ah], 0

loc_469BAB:
add     esp, 4
jmp     loc_46A4A5
sub_469AD9 endp




sub_469BB3 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_469BB9[edx*4]
pop     edx
retn
sub_469BB3 endp




sub_469BC2 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
lea     edi, [eax+0C4h]
mov     ecx, [ecx+38h]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
add     eax, 14h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     loc_46A4A5
mov     byte ptr [esi+0ACh], 3
or      byte ptr [edi+6], 2
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Bh]
xor     ah, ah
mov     [edi+4], ax
mov     byte ptr [esi+0Ah], 1
jmp     loc_46A4A5
sub_469BC2 endp




sub_469C40 proc near
push    edx
mov     dl, [eax+0A6h]
cmp     dl, 2
jnz     short loc_469C4F
mov     [eax+0Ah], dl

loc_469C4F:
pop     edx
retn
sub_469C40 endp




sub_469C51 proc near
add     byte ptr [eax+475h], 8
cmp     byte ptr [eax+0A6h], 1
jnz     short locret_469C65
mov     byte ptr [eax+0Ah], 3

locret_469C65:
retn
sub_469C51 endp




sub_469C66 proc near
push    ebx
push    edx
lea     edx, [eax+0C4h]
mov     bl, [eax+475h]
sub     bl, 8
mov     [eax+475h], bl
cmp     bl, 20h ; ' '
ja      short loc_469C8A
mov     byte ptr [eax+0Ah], 4
and     byte ptr [edx+6], 0FDh

loc_469C8A:
pop     edx
pop     ebx
retn
sub_469C66 endp




sub_469C8D proc near
push    ebx
push    ecx
push    edx
lea     ecx, [eax+408h]
lea     edx, [eax+0C4h]
mov     ebx, [eax+0A4h]
sar     ebx, 18h
cmp     ebx, 0FFFFFFFFh
jnz     short loc_469CF0
mov     byte ptr [ecx+3Eh], 3Ch ; '<'
cmp     byte ptr [eax+3], 2
jz      short loc_469CBE
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 6
jmp     short loc_469CC6

loc_469CBE:
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0

loc_469CC6:
test    byte ptr [edx+6], 80h
jz      short loc_469CD4
mov     byte ptr [edx+7], 0
or      byte ptr [edx+6], 80h

loc_469CD4:
mov     word ptr [ecx+3Ah], 10h
mov     byte ptr [eax+0ACh], 1
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B

loc_469CF0:
pop     edx
pop     ecx
pop     ebx
retn
sub_469C8D endp




sub_469CF4 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+64h]
mov     byte ptr [eax+0ACh], 5
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [esi+0Ah], 6
mov     dl, [ecx+1]
and     dl, 1Fh
movsx   dx, dl
mov     eax, edx
shl     eax, 5
mov     dl, [ecx]
and     dl, 1Fh
movsx   dx, dl
or      eax, edx
mov     dl, [ecx+2]
and     dl, 1Fh
movsx   dx, dl
shl     edx, 0Ah
or      eax, edx
mov     [esi+15Eh], ax
inc     byte ptr [ecx+2]
mov     dl, [esi+15Fh]
or      dl, 80h
mov     [esi+15Fh], dl
cmp     byte ptr [ecx+2], 10h
jl      short loc_469D7F
mov     bl, dl
and     bl, 7Fh
mov     [esi+15Fh], bl
mov     byte ptr [ecx+2], 10h
mov     bh, [ecx]
cmp     bh, 10h
jz      short loc_469D7F
mov     al, bh
add     al, 4
mov     [ecx], al
add     byte ptr [ecx+1], 4

loc_469D7F:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_469CF4 endp




sub_469D84 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
add     eax, 408h
lea     edi, [esi+64h]
mov     ecx, [eax+38h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_469DC9
mov     byte ptr [esi+0Ah], 0

loc_469DC9:
mov     al, [edi+1]
and     al, 1Fh
cbw
mov     ebx, eax
shl     ebx, 5
mov     al, [edi]
and     al, 1Fh
cbw
or      ebx, eax
mov     al, [edi+2]
and     al, 1Fh
cbw
shl     eax, 0Ah
or      ebx, eax
mov     [esi+15Eh], bx
inc     byte ptr [edi+2]
mov     dl, [esi+15Fh]
or      dl, 80h
mov     [esi+15Fh], dl
cmp     byte ptr [edi+2], 10h
jl      loc_46A4A5
mov     bl, dl
and     bl, 7Fh
mov     [esi+15Fh], bl
mov     byte ptr [edi+2], 10h
mov     bh, [edi]
cmp     bh, 10h
jz      loc_46A4A5
mov     cl, bh
add     cl, 4
mov     [edi], cl
add     byte ptr [edi+1], 4
jmp     loc_46A4A5
sub_469D84 endp




sub_469E36 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     ecx, [eax+408h]
lea     esi, [eax+64h]
mov     ecx, [ecx+38h]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
add     eax, 14h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
mov     eax, [edi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_469E80
mov     byte ptr [edi+9], 1
mov     byte ptr [edi+0Ah], 0

loc_469E80:
cmp     byte ptr [edi+3], 2
jnz     loc_46A4A5
mov     al, [esi+1]
and     al, 1Fh
cbw
mov     ebx, eax
shl     ebx, 5
mov     al, [esi]
and     al, 1Fh
cbw
or      ebx, eax
mov     al, [esi+2]
and     al, 1Fh
cbw
shl     eax, 0Ah
or      ebx, eax
mov     [edi+15Eh], bx
sub     byte ptr [esi], 4
sub     byte ptr [esi+1], 4
cmp     byte ptr [esi], 0
jge     short loc_469ECB
mov     byte ptr [esi], 0
mov     byte ptr [esi+1], 0
or      byte ptr [edi+15Fh], 80h

loc_469ECB:
mov     eax, [edi+15Ch]
sar     eax, 10h
test    ah, 80h
jz      loc_46A4A5
mov     cl, [esi+2]
dec     cl
mov     [esi+2], cl
test    cl, cl
jge     loc_46A4A5
mov     byte ptr [esi+2], 0
jmp     loc_46A4A5
sub_469E36 endp




sub_469EF6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+0C4h]
lea     edx, [eax+64h]
movzx   esi, byte ptr [eax+0Ah]
call    ds:funcs_469F09[esi*4]
cmp     byte ptr [ecx+3], 2
jnz     loc_469F9A
mov     al, [edx+2]
test    al, al
jnz     short loc_469F3B
mov     word ptr [ecx+15Eh], 0
or      byte ptr [ecx+15Fh], 80h
mov     [edx+2], al
mov     [edx+1], al
mov     [edx], al
jmp     short loc_469F9A

loc_469F3B:
mov     al, [edx+1]
and     al, 1Fh
cbw
mov     esi, eax
shl     esi, 5
mov     al, [edx]
and     al, 1Fh
cbw
or      esi, eax
mov     al, [edx+2]
and     al, 1Fh
cbw
shl     eax, 0Ah
or      esi, eax
mov     [ecx+15Eh], si
sub     byte ptr [edx], 4
sub     byte ptr [edx+1], 4
cmp     byte ptr [edx], 0
jge     short loc_469F7C
mov     byte ptr [edx], 0
mov     byte ptr [edx+1], 0
or      byte ptr [ecx+15Fh], 80h

loc_469F7C:
mov     eax, [ecx+15Ch]
sar     eax, 10h
test    ah, 80h
jz      short loc_469F9A
mov     ah, [edx+2]
dec     ah
mov     [edx+2], ah
test    ah, ah
jge     short loc_469F9A
mov     byte ptr [edx+2], 0

loc_469F9A:
mov     eax, ecx
call    sub_4DEADD
mov     eax, ecx
call    sub_42DE56
mov     [ebx], eax
mov     eax, ecx
call    sub_42C592
mov     esi, eax
test    byte ptr [ebx+6], 40h
jnz     loc_46A02B
mov     edx, [ecx+2Ch]
sar     edx, 10h
sub     eax, edx
cmp     eax, 10h
jl      short loc_469FF5
cmp     byte ptr [ecx+9], 5
jz      short loc_46A02B
mov     byte ptr [ecx+9], 5
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0ACh], 6
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_469FF5:
cmp     byte ptr [ecx+9], 5
jnz     short loc_46A021
cmp     byte ptr [ecx+0Ah], 2
jz      short loc_46A021
mov     byte ptr [ecx+0Ah], 2
mov     byte ptr [ecx+0ACh], 7
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+74h], 0

loc_46A021:
mov     [ecx+16h], si
shl     esi, 10h
mov     [ecx+20h], esi

loc_46A02B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_469EF6 endp




sub_46A030 proc near
push    edx
mov     dl, [eax+0A6h]
cmp     dl, 1
jnz     short loc_46A055
mov     word ptr [eax+46h], 0FE00h
mov     [eax+0Ah], dl
mov     [eax+74h], dl
lea     edx, [eax+14h]
mov     eax, 15Fh
call    sub_4D8BC3

loc_46A055:
pop     edx
retn
sub_46A030 endp




sub_46A057 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+0C4h]
lea     ebp, [eax+1E8h]
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
call    sub_4DD43B
mov     ax, [esi+4Eh]
mov     dx, [esi+46h]
add     edx, eax
mov     [esi+46h], dx
test    dx, dx
jl      loc_469533
cmp     byte ptr [ebp+4], 2
jnz     short loc_46A0BE
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 10h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

loc_46A0BE:
and     byte ptr [edi+6], 0BFh
jmp     loc_469533
sub_46A057 endp




sub_46A0C7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+408h]
lea     edi, [eax+0C4h]
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     loc_46A4A5
mov     byte ptr [eax+0ACh], 1
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Fh], 0
mov     word ptr [ecx+44h], 50h ; 'P'
mov     byte ptr [esi+3Dh], 78h ; 'x'
mov     byte ptr [esi+3Ch], 0
and     byte ptr [edi+6], 0FCh
jmp     loc_46A4A5
sub_46A0C7 endp

align 2
jpt_46A1CD dd offset loc_46A1D4 ; jump table for switch statement
dd offset loc_46A20D
dd offset loc_46A228
dd offset loc_46A25B
dd offset loc_46A25B



sub_46A13A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
lea     edi, [eax+0C4h]
add     eax, 64h ; 'd'
cmp     byte ptr [esi+3], 2
jnz     short loc_46A1BD
mov     dl, [eax+1]
and     dl, 1Fh
movsx   dx, dl
shl     edx, 5
mov     bl, [eax]
and     bl, 1Fh
movsx   bx, bl
or      ebx, edx
mov     dl, [eax+2]
and     dl, 1Fh
movsx   dx, dl
shl     edx, 0Ah
or      ebx, edx
mov     [esi+15Eh], bx
inc     byte ptr [eax+2]
mov     bl, [esi+15Fh]
or      bl, 80h
mov     [esi+15Fh], bl
cmp     byte ptr [eax+2], 10h
jl      short loc_46A1BD
mov     dl, bl
and     dl, 7Fh
mov     [esi+15Fh], dl
mov     byte ptr [eax+2], 10h
mov     dh, [eax]
cmp     dh, 10h
jz      short loc_46A1BD
mov     bl, dh
add     bl, 4
mov     [eax], bl
add     byte ptr [eax+1], 4

loc_46A1BD:
mov     al, [esi+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_46A1CD      ; jumptable 0046A1CD default case
and     eax, 0FFh
jmp     jpt_46A1CD[eax*4] ; switch jump

loc_46A1D4:             ; jumptable 0046A1CD case 0
push    0
mov     eax, [esi+44h]
sar     eax, 10h
push    eax
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
add     ebx, 800h
and     ebx, 0FFFh

loc_46A1F5:
lea     edx, [esi+1Ch]
lea     eax, [esi+14h]
call    sub_4DD4C5
mov     ax, [esi+4Eh]
add     [esi+46h], ax
jmp     def_46A1CD      ; jumptable 0046A1CD default case

loc_46A20D:             ; jumptable 0046A1CD case 1
push    0
mov     eax, [esi+44h]
sar     eax, 10h
push    eax
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ax, [esi+56h]
and     ah, 0Fh
movsx   ebx, ax
jmp     short loc_46A1F5

loc_46A228:             ; jumptable 0046A1CD case 2
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_46A1CD      ; jumptable 0046A1CD default case
mov     byte ptr [esi+0ACh], 0Ch
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ah], 3
jmp     def_46A1CD      ; jumptable 0046A1CD default case

loc_46A25B:             ; jumptable 0046A1CD cases 3,4
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_46A2B8
cmp     byte ptr [esi+3], 2
jnz     short loc_46A27B
test    byte ptr [edi+6], 10h
jz      short loc_46A27B
mov     byte ptr [esi+9], 8
jmp     short loc_46A297

loc_46A27B:
mov     byte ptr [esi+0ACh], 1
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+9], 0

loc_46A297:
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Fh], 0
mov     word ptr [esi+44h], 50h ; 'P'
mov     byte ptr [ecx+3Dh], 78h ; 'x'
mov     byte ptr [ecx+3Ch], 0
mov     byte ptr [edi+6], 0
mov     byte ptr [esi+475h], 20h ; ' '

loc_46A2B8:
cmp     byte ptr [esi+0Ah], 4
jnz     short def_46A1CD ; jumptable 0046A1CD default case
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

def_46A1CD:             ; jumptable 0046A1CD default case
mov     eax, esi
call    sub_4DEADD
mov     eax, esi
call    sub_42DE56
mov     [edi], eax
mov     eax, esi
call    sub_42C592
mov     dh, [edi+6]
test    dh, 10h
jz      loc_46A4A5
test    dh, 20h
jnz     loc_46A4A5
mov     edx, [esi+14h]
sar     edx, 10h
cmp     eax, edx
jnz     loc_46A4A5
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_46A32A
mov     byte ptr [esi+0ACh], 9
jmp     short loc_46A331

loc_46A32A:
mov     byte ptr [esi+0ACh], 0Bh

loc_46A331:
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ah], 2
or      byte ptr [edi+6], 20h
jmp     loc_46A4A5
sub_46A13A endp




sub_46A34F proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_46A381
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
lea     edi, [eax+48h]
lea     esi, [ecx+190h]
movsd
movsd
lea     edx, [ecx+190h]
mov     eax, ecx
call    sub_4AF9F8

loc_46A381:
mov     byte ptr [ecx+8], 2
and     byte ptr [ecx], 0FDh
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_46A34F endp




sub_46A38D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+408h]
lea     edx, [eax+64h]
movzx   esi, byte ptr [eax+0Ah]
call    ds:funcs_46A3A0[esi*4]
mov     ah, [ebx+3Fh]
test    ah, ah
jnz     short loc_46A419
mov     bl, [edx+1]
and     bl, 1Fh
movsx   bx, bl
mov     esi, ebx
shl     esi, 5
mov     bl, [edx]
and     bl, 1Fh
movsx   bx, bl
or      esi, ebx
mov     bl, [edx+2]
and     bl, 1Fh
movsx   bx, bl
shl     ebx, 0Ah
or      esi, ebx
mov     [ecx+15Eh], si
sub     byte ptr [edx], 4
sub     byte ptr [edx+1], 4
cmp     byte ptr [edx], 0
jge     short loc_46A3F6
mov     [edx], ah
mov     [edx+1], ah
or      byte ptr [ecx+15Fh], 80h

loc_46A3F6:
mov     ecx, [ecx+15Ch]
sar     ecx, 10h
test    ch, 80h
jz      short loc_46A430
mov     bl, [edx+2]
dec     bl
mov     [edx+2], bl
test    bl, bl
jge     short loc_46A430
mov     byte ptr [edx+2], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46A419:
mov     dl, ah
dec     dl
mov     [ebx+3Fh], dl
mov     word ptr [ecx+15Eh], 4210h
and     byte ptr [ecx+15Fh], 7Fh

loc_46A430:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46A38D endp




sub_46A435 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [eax+408h]
add     eax, 1E8h
lea     esi, [ecx+64h]
test    byte ptr [eax+2], 1
jz      short loc_46A46E
mov     byte ptr [ecx+0ACh], 0Dh
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Eh], 0
jmp     short loc_46A48A

loc_46A46E:
mov     byte ptr [ecx+0ACh], 0Eh
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Eh], 1

loc_46A48A:
mov     ax, [ecx+56h]
mov     [edi+38h], ax
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [edi+3Fh], 1

loc_46A49A:
mov     byte ptr [esi], 10h
mov     byte ptr [esi+1], 10h
mov     byte ptr [esi+2], 10h

loc_46A4A5:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46A435 endp




sub_46A4AB proc near
push    ecx
push    edx
lea     ecx, [eax+408h]
lea     edx, [eax+64h]
call    sub_469539
mov     byte ptr [ecx+3Fh], 1
mov     byte ptr [edx], 10h
mov     byte ptr [edx+1], 10h
mov     byte ptr [edx+2], 10h
pop     edx
pop     ecx
retn
sub_46A4AB endp




sub_46A4CD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [eax+408h]
lea     esi, [eax+64h]
mov     byte ptr [eax+0ACh], 2
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 3
mov     word ptr [ecx+44h], 1E0h
mov     word ptr [edi+3Ah], 10h
mov     byte ptr [edi+3Fh], 0Fh
jmp     short loc_46A49A
sub_46A4CD endp




sub_46A509 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+408h]
lea     edx, [eax+0C4h]
test    byte ptr [edx+1], 0Fh
jnz     short loc_46A52D
cmp     dword ptr [esi+80h], 200000h
jbe     short loc_46A583

loc_46A52D:
mov     dx, [esi+56h]
add     dh, 8
and     dh, 0Fh
mov     [ecx+38h], dx
mov     eax, [esi+54h]
sar     eax, 10h
mov     edx, [ecx+36h]
sar     edx, 10h
cmp     eax, edx
jle     short loc_46A554
mov     byte ptr [esi+0ACh], 0Eh
jmp     short loc_46A55B

loc_46A554:
mov     byte ptr [esi+0ACh], 0Dh

loc_46A55B:
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ah], 4
mov     dx, [esi+56h]
add     dh, 8
and     dh, 0Fh
mov     [ecx+38h], dx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46A583:
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
sub_46A509 endp




sub_46A599 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+408h]
add     eax, 0C4h
mov     ebx, [ecx+54h]
sar     ebx, 10h
mov     esi, [edx+36h]
sar     esi, 10h
cmp     ebx, esi
jnz     loc_469692
mov     byte ptr [ecx+9], 0
jmp     loc_46965B
sub_46A599 endp




sub_46A5C7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+0C4h]
call    sub_4DEADD
mov     eax, ecx
call    sub_42DE56
mov     [edx], eax
mov     eax, ecx
call    sub_42C592
mov     ebx, eax
mov     edx, [ecx+2Ch]
sar     edx, 10h
mov     esi, eax
sub     esi, edx
cmp     esi, 10h
jl      short loc_46A61E
mov     byte ptr [ecx+9], 5
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0ACh], 6
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, eax
mov     eax, ecx
call    sub_4DE96B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46A61E:
mov     [ecx+16h], ax
shl     eax, 10h
mov     [ecx+20h], eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46A5C7 endp




sub_46A62D proc near

; FUNCTION CHUNK AT 0046A68B SIZE 00000007 BYTES

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
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_46A654[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_46A674
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_46A674:
mov     dl, [ebp+0Ah]
test    dl, dl
jz      short loc_46A684
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_46A68B

loc_46A684:
mov     dh, dl
inc     dh
mov     [ebp+0Ah], dh
sub_46A62D endp

; START OF FUNCTION CHUNK FOR sub_46A801
;   ADDITIONAL PARENT FUNCTION sub_46A62D

loc_46A68B:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_46A801
db 8Dh, 40h, 0
jpt_46A6C4 dd offset loc_46A6CB ; jump table for switch statement
dd offset loc_46A6DA
dd offset loc_46A6EB
dd offset loc_46A70B
dd offset loc_46A71B



sub_46A6A9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, offset byte_5F8364
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_46A6C4      ; jumptable 0046A6C4 default case
and     eax, 0FFh
jmp     jpt_46A6C4[eax*4] ; switch jump

loc_46A6CB:             ; jumptable 0046A6C4 case 0
mov     eax, esi
call    sub_46A76A

loc_46A6D2:
inc     byte ptr [esi+9]
jmp     def_46A6C4      ; jumptable 0046A6C4 default case

loc_46A6DA:             ; jumptable 0046A6C4 case 1
mov     eax, esi
call    sub_46A801
test    eax, eax
jz      def_46A6C4      ; jumptable 0046A6C4 default case
jmp     short loc_46A6D2

loc_46A6EB:             ; jumptable 0046A6C4 case 2
call    sub_42ABA2
test    eax, eax
jnz     short def_46A6C4 ; jumptable 0046A6C4 default case
mov     ecx, [esi+9]
sar     ecx, 18h
lea     eax, [esi+14h]
xor     ebx, ebx
mov     edx, 5
call    sub_4A62D4
jmp     short loc_46A6D2

loc_46A70B:             ; jumptable 0046A6C4 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_46A6C4 ; jumptable 0046A6C4 default case
call    sub_42A98E
jmp     short loc_46A6D2

loc_46A71B:             ; jumptable 0046A6C4 case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_46A6C4 ; jumptable 0046A6C4 default case
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_46A744
inc     byte ptr [esi+9]
xor     cl, cl
mov     byte ptr ds:dword_77E5EC, cl
mov     eax, 1FFh
call    sub_47EA91
jmp     short loc_46A74F

loc_46A744:
and     ds:byte_5F8421, 0BFh
mov     byte ptr [esi+9], 0

loc_46A74F:
or      byte ptr [edx], 2

def_46A6C4:             ; jumptable 0046A6C4 default case
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46A6A9 endp




sub_46A76A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 80h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_516EB4
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_46A76A endp




sub_46A801 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 0046A68B SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     edi, offset byte_5F8364
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     loc_46A8E6
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_46A85B
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_46A871

loc_46A85B:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_46A871:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 40h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_55A0E0, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_55A0E4, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_55A0E8, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_55A0E0
call    sub_42AAA8
mov     eax, 1
jmp     short loc_46A8E8

loc_46A8E6:
xor     eax, eax

loc_46A8E8:
add     esp, 4
jmp     loc_46A68B
sub_46A801 endp




sub_46A8F0 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 3A8h
mov     [esp+1Ch+var_1C], eax
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
mov     esi, eax
lea     esi, [esi+18h]
movsd
movsd
mov     word ptr [ebp+15Eh], 4210h
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_46A92F[edx*4]
mov     eax, [esp+1Ch+var_1C]
add     eax, 8
mov     ebx, 8
mov     edx, offset word_560E04
call    sub_4EECD4
mov     eax, ebp
call    sub_4DF795
test    byte ptr [ebp+0], 2
jz      short loc_46A96B
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 50h ; 'P'
mov     eax, ebp
call    sub_4ED88B

loc_46A96B:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+62h], 8
jz      loc_46AA0C
mov     eax, [ebp+5Ch]
sar     eax, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+18h]
sar     edx, 10h
cmp     eax, edx
jnz     short loc_46A99E
mov     edx, [ebp+5Ah]
sar     edx, 10h
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+16h]
sar     eax, 10h
cmp     edx, eax
jz      short loc_46A9C7

loc_46A99E:
mov     eax, [esp+1Ch+var_1C]
mov     dh, [eax+68h]
test    dh, dh
jnz     short loc_46A9BE
lea     edx, [ebp+14h]
mov     eax, 147h
call    sub_4D8BC3
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+68h], 0Ah
jmp     short loc_46A9CE

loc_46A9BE:
mov     bl, dh
dec     bl
mov     [eax+68h], bl
jmp     short loc_46A9CE

loc_46A9C7:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+68h], 0

loc_46A9CE:
mov     edi, [esp+1Ch+var_1C]
lea     esi, [ebp+1A0h]
movsd
movsd
push    0
push    0
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     ax, [edx+5Ch]
or      eax, 4080000h
push    eax
lea     eax, [edx+28h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A0h
mov     eax, [esp+30h+var_1C]
call    sub_4E01FC

loc_46AA0C:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+28h], 0
add     esp, 4
jmp     loc_46AD03
sub_46A8F0 endp




sub_46AA1E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+3A8h]
mov     ah, [eax]
or      ah, 2
mov     [esi], ah
mov     word ptr [esi+54h], 0
mov     word ptr [esi+58h], 0
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx+0Ch], 0
mov     dword ptr [ecx+10h], 0
mov     dword ptr [ecx+14h], 0
mov     dword ptr [ecx+18h], 0
mov     dword ptr [ecx+1Ch], 0
mov     dword ptr [ecx+20h], 0
mov     dword ptr [ecx+24h], 0
mov     ax, [ecx+20h]
mov     [ecx+60h], ax
mov     byte ptr [ecx+62h], 8
mov     dword ptr [ecx+28h], 0
mov     dword ptr [ecx+2Ch], 0
mov     byte ptr [ecx+64h], 0
mov     byte ptr [ecx+63h], 0
mov     word ptr [ecx+5Eh], 28h ; '('
mov     eax, [esi+80h]
mov     [ecx+40h], eax
mov     byte ptr [ecx+68h], 0
mov     word ptr [ecx+44h], 2
mov     word ptr [ecx+46h], 9
mov     word ptr [ecx+48h], 4
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [ecx+5Ch], ax
lea     eax, [ecx+30h]
mov     ebx, 0FFFFFFA0h
mov     edx, 0Ch
call    sub_4E19B9
xor     eax, eax
mov     al, [esi+2]
mov     ecx, ds:dword_55A10C
mov     eax, [ecx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [esi+6Eh], ax
mov     [esi+0B0h], ax
mov     [esi+0B2h], ax
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     word ptr [esi+15Eh], 4210h
mov     dword ptr [esi+78h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46AA1E endp




sub_46AB4B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+3A8h]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ebx, [esi+18h]
sar     ebx, 10h
add     ebx, eax
lea     eax, [esi+30h]
mov     edx, ecx
call    sub_4E19D8
test    eax, eax
jnz     short loc_46AB79
and     byte ptr [esi+62h], 0EFh
jmp     short loc_46AB8A

loc_46AB79:
mov     ah, [esi+62h]
or      ah, 10h
mov     [esi+62h], ah
mov     dl, ah
and     dl, 0FBh
mov     [esi+62h], dl

loc_46AB8A:
mov     eax, [esi+28h]
and     eax, 0FFFFFFh
jz      short loc_46ABD4
mov     dx, [ecx+6Eh]
mov     [ecx+0B2h], dx
sub     edx, eax
mov     [ecx+6Eh], dx
mov     word ptr [ecx+15Eh], 7FFFh
or      byte ptr [esi+62h], 4
cmp     word ptr [ecx+6Eh], 0
jg      short loc_46ABC7
mov     byte ptr [ecx+9], 3
mov     byte ptr [ecx+0Ah], 0
and     byte ptr [esi+62h], 0F7h
jmp     short loc_46ABD4

loc_46ABC7:
lea     edx, [ecx+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_46ABD4:
movzx   esi, byte ptr [ecx+9]
mov     eax, ecx
call    ds:funcs_46ABDA[esi*4]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46AB4B endp



; Attributes: thunk

sub_46ABE6 proc near
jmp     sub_4DE2F6
sub_46ABE6 endp




sub_46ABEB proc near

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
lea     ebp, [eax+3A8h]
mov     [esp+20h+var_1C], offset byte_5F8364
mov     ah, [ebp+64h]
test    ah, ah
jz      short loc_46AC11
mov     dl, ah
dec     dl
mov     [ebp+64h], dl

loc_46AC11:
mov     dh, [ebp+62h]
test    dh, 10h
jnz     short loc_46AC3C
mov     bh, [ebp+63h]
test    bh, bh
jnz     short loc_46AC2C
mov     al, dh
and     al, 0EFh
mov     [ebp+62h], al
jmp     loc_46ACB9

loc_46AC2C:
mov     cl, bh
dec     cl
mov     [ebp+63h], cl
or      byte ptr [ebp+62h], 10h
jmp     loc_46ACB9

loc_46AC3C:
mov     byte ptr [ebp+63h], 0B4h
mov     eax, [esp+20h+var_20]
mov     ecx, [eax+80h]
cmp     ecx, 0A20000h
jnb     short loc_46ACB9
cmp     ecx, 8000h
jbe     short loc_46ACB9
mov     edi, [esp+20h+var_1C]
lea     edi, [edi+0C4h]
mov     esi, [esp+20h+var_1C]
lea     esi, [esi+14h]
movsd
movsd
mov     edi, eax
lea     edi, [edi+0C4h]
mov     esi, eax
lea     esi, [esi+1A0h]
movsd
movsd
mov     eax, [eax+54h]
sar     eax, 10h
mov     edx, [ebp+18h]
sar     edx, 10h
add     eax, edx
push    eax
lea     ecx, [ebp+4Ch]
lea     ebx, [ebp+44h]
mov     edx, [esp+24h+var_1C]
mov     eax, [esp+24h+var_20]
call    sub_4DD830
test    al, 2
jz      short loc_46ACB9
mov     bl, [ebp+64h]
test    bl, bl
jnz     short loc_46ACB9
mov     eax, [esp+20h+var_20]
mov     byte ptr [eax+9], 1
mov     [ebp+66h], bl
mov     byte ptr [ebp+65h], 3

loc_46ACB9:
test    byte ptr [ebp+62h], 14h
jz      short loc_46AD00
mov     ebx, [esp+20h+var_20]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, [ebp+18h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     edx, [esp+20h+var_1C]
add     edx, 14h
mov     eax, [esp+20h+var_20]
add     eax, 14h
mov     ecx, 10h
call    sub_4DE552
add     ax, [ebp+1Ah]
and     ah, 0Fh
mov     [ebp+1Ah], ax
mov     eax, [esp+20h+var_20]
call    sub_46B082

loc_46AD00:
add     esp, 8

loc_46AD03:
pop     ebp

loc_46AD04:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46ABEB endp




sub_46AD0A proc near

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
mov     ebp, eax
add     eax, 3A8h
mov     [esp+24h+var_1C], eax
mov     [esp+24h+var_20], offset byte_5F8364
cmp     byte ptr [eax+65h], 0
jz      loc_46AF43
mov     edx, [ebp+54h]
sar     edx, 10h
mov     ebx, [eax+18h]
sar     ebx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     edx, offset byte_5F8364
add     edx, 14h
lea     esi, [ebp+14h]
mov     ecx, 10h
mov     eax, esi
call    sub_4DE552
mov     edx, [esp+24h+var_1C]
add     ax, [edx+1Ah]
and     ah, 0Fh
mov     [edx+1Ah], ax
call    sub_4DE043
mov     ecx, eax
mov     [esp+24h+var_24], eax
test    eax, eax
jz      loc_46AF34
mov     edx, esi
mov     eax, 148h
call    sub_4D8BC3
mov     byte ptr [ecx], 3
mov     byte ptr [ecx+2], 1
mov     byte ptr [ecx+4], 0
mov     byte ptr [ecx+0Fh], 3
mov     ax, [ebp+1A8h]
mov     [ecx+14h], ax
mov     ax, [ebp+1AAh]
mov     [ecx+16h], ax
mov     ax, [ebp+1ACh]
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
mov     edi, offset dword_5F8428
mov     esi, (offset dword_5F8376+2)
movsd
movsd
lea     edi, [ebp+0C4h]
lea     esi, [ebp+1A0h]
movsd
movsd
mov     eax, [ebp+54h]
sar     eax, 10h
mov     edx, [esp+24h+var_1C]
mov     edx, [edx+18h]
sar     edx, 10h
add     eax, edx
push    eax
mov     ecx, [esp+28h+var_1C]
add     ecx, 4Ch ; 'L'
mov     ebx, [esp+28h+var_1C]
add     ebx, 44h ; 'D'
mov     edx, offset byte_5F8364
mov     eax, ebp
call    sub_4DD830
test    al, 2
jz      short loc_46AE4D
mov     ax, word ptr ds:dword_5F8376+2
mov     word ptr ds:dword_5F8428, ax
mov     ax, word ptr ds:dword_5F837A
sub     eax, 50h ; 'P'
mov     word ptr ds:dword_5F8428+2, ax
mov     ax, word ptr ds:dword_5F837A+2
jmp     loc_46AED4

loc_46AE4D:
mov     eax, [ebp+80h]
call    sub_4EF075
mov     [ebp+80h], eax
mov     edx, [ebp+54h]
sar     edx, 10h
mov     eax, [esp+24h+var_1C]
mov     eax, [eax+18h]
sar     eax, 10h
add     edx, 800h
add     eax, edx
call    sub_4EF003
mov     edx, eax
mov     eax, [ebp+54h]
sar     eax, 10h
mov     ecx, [esp+24h+var_1C]
mov     ecx, [ecx+18h]
sar     ecx, 10h
add     eax, 800h
add     eax, ecx
call    sub_4EF008
imul    eax, [ebp+80h]
shr     eax, 0Ch
mov     ecx, [ebp+12h]
sar     ecx, 10h
add     eax, ecx
mov     word ptr ds:dword_5F8428, ax
mov     ax, word ptr ds:dword_5F837A
sub     eax, 50h ; 'P'
mov     word ptr ds:dword_5F8428+2, ax
mov     eax, [ebp+80h]
imul    eax, edx
shr     eax, 0Ch
mov     edx, [ebp+16h]
sar     edx, 10h
add     eax, edx

loc_46AED4:
mov     ds:word_5F842C, ax
push    0ACh
mov     ebx, [esp+28h+var_1C]
mov     ebx, [ebx+5Ch]
sar     ebx, 10h
xor     ecx, ecx
mov     edx, [esp+28h+var_20]
mov     eax, [esp+28h+var_24]
call    sub_4DDA0E
mov     eax, ebp
call    sub_46B082
call    sub_4DE13B
test    eax, eax
jz      short loc_46AF34
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
mov     dx, [ebp+1A8h]
mov     [eax+1Ch], dx
mov     dx, [ebp+1AAh]
mov     [eax+1Eh], dx
mov     dx, [ebp+1ACh]
mov     [eax+20h], dx

loc_46AF34:
mov     eax, [esp+24h+var_1C]
mov     byte ptr [eax+66h], 46h ; 'F'
dec     byte ptr [eax+65h]
mov     byte ptr [ebp+9], 2

loc_46AF43:
add     esp, 0Ch
jmp     loc_46AD03
sub_46AD0A endp




sub_46AF4B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+3A8h]
test    byte ptr [esi+62h], 14h
jz      short loc_46AF9F
cmp     byte ptr [esi+66h], 3Ch ; '<'
jnb     short loc_46AF9F
mov     eax, [edi+54h]
sar     eax, 10h
mov     ebx, [esi+18h]
sar     ebx, 10h
add     ebx, eax
and     ebx, 0FFFh
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [edi+14h]
mov     ecx, 10h
call    sub_4DE552
add     ax, [esi+1Ah]
and     ah, 0Fh
mov     [esi+1Ah], ax
mov     eax, edi
call    sub_46B082

loc_46AF9F:
mov     dh, [esi+66h]
test    dh, dh
jnz     short loc_46AFC5
cmp     byte ptr [esi+65h], 0
jz      short loc_46AFB5
mov     byte ptr [edi+9], 1
jmp     loc_46AD04

loc_46AFB5:
mov     byte ptr [esi+65h], 3
mov     byte ptr [esi+64h], 3Ch ; '<'
mov     [edi+9], dh
jmp     loc_46AD04

loc_46AFC5:
mov     bl, dh
dec     bl
mov     [esi+66h], bl
jmp     loc_46AD04
sub_46AF4B endp




sub_46AFD1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_46B005
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
lea     edi, [eax+48h]
lea     esi, [ebp+1A0h]
movsd
movsd
lea     edx, [ebp+190h]
mov     eax, ebp
call    sub_4AF9F8

loc_46B005:
mov     ah, [ebp+3]
test    ah, ah
jnz     short loc_46B079
mov     byte ptr [ebp+0], 1
mov     [ebp+2], ah
mov     byte ptr [ebp+3], 1
mov     byte ptr [ebp+4], 1
mov     dword ptr [ebp+8], 0
mov     dword ptr [ebp+0Ch], 0
lea     edi, [ebp+14h]
lea     esi, [ebp+1A0h]
movsd
movsd
mov     eax, [ebp+19Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+1A0h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+1A2h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
xor     ecx, ecx
mov     ebx, 0FFFFFC00h
mov     edx, 0FFFFFD00h
mov     eax, ebp
call    sub_4DD43B
jmp     loc_46AD03

loc_46B079:
mov     byte ptr [ebp+8], 2
jmp     loc_46AD03
sub_46AFD1 endp




sub_46B082 proc near

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
lea     ebp, [eax+3A8h]
mov     eax, [ebp+40h]
mov     edx, [esp+20h+var_20]
cmp     eax, [edx+80h]
jnz     loc_46B15E
mov     edx, [ebp+5Eh]
sar     edx, 10h
mov     eax, [ebp+1Eh]
sar     eax, 10h
cmp     edx, eax
jz      loc_46B234
mov     cx, [ebp+20h]
and     ch, 0Fh
mov     ax, [ebp+60h]
and     ah, 0Fh
mov     word ptr [esp+20h+var_1C], ax
test    ax, ax
jl      short loc_46B10A
cmp     ax, 800h
jge     short loc_46B10A
cmp     cx, 800h
jl      short loc_46B0F8
cmp     cx, 0FFFh
jge     short loc_46B0F8
movsx   ebx, cx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
call    sub_46B245
jmp     short loc_46B10A

loc_46B0F8:
movsx   ebx, cx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
call    sub_46B280

loc_46B10A:
mov     ebx, [esp+20h+var_1C]
cmp     bx, 800h
jl      loc_46B234
cmp     bx, 0FFFh
jge     loc_46B234
test    cx, cx
jl      short loc_46B147
cmp     cx, 800h
jge     short loc_46B147
movsx   ebx, cx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
call    sub_46B245
jmp     loc_46B234

loc_46B147:
movsx   ebx, cx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
call    sub_46B280
jmp     loc_46B234

loc_46B15E:
mov     ax, [ebp+20h]
and     ah, 0Fh
mov     word ptr [esp+20h+var_1C], ax
mov     edi, offset dword_5F8428
mov     esi, (offset dword_5F8376+2)
movsd
movsd
push    0ACh
mov     ebx, [ebp+5Ch]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 0C4h
mov     eax, [esp+24h+var_20]
add     eax, 1A8h
xor     ecx, ecx
call    sub_4DDBB7
and     ah, 0Fh
mov     [ebp+60h], ax
mov     [ebp+20h], ax
mov     ecx, eax
and     ch, 0Fh
mov     edx, [esp+20h+var_1C]
test    dx, dx
jl      short loc_46B1F0
cmp     dx, 800h
jge     short loc_46B1F0
cmp     cx, 800h
jl      short loc_46B1DE
cmp     cx, 0FFFh
jge     short loc_46B1DE
movsx   ebx, cx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
call    sub_46B2BB
jmp     short loc_46B1F0

loc_46B1DE:
movsx   ebx, cx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
call    sub_46B2EA

loc_46B1F0:
mov     esi, [esp+20h+var_1C]
cmp     si, 800h
jl      short loc_46B234
cmp     si, 0FFFh
jge     short loc_46B234
test    cx, cx
jl      short loc_46B222
cmp     cx, 800h
jge     short loc_46B222
movsx   ebx, cx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
call    sub_46B2BB
jmp     short loc_46B234

loc_46B222:
movsx   ebx, cx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
call    sub_46B2EA

loc_46B234:
mov     eax, [esp+20h+var_20]
mov     eax, [eax+80h]
mov     [ebp+40h], eax
jmp     loc_46AD00
sub_46B082 endp




sub_46B245 proc near
push    ecx
push    esi
push    edi
mov     ecx, edx
lea     edx, [eax+3A8h]
movsx   esi, cx
movsx   edi, bx
mov     eax, esi
sub     eax, edi
call    abs_
cmp     eax, 20h ; ' '
jle     short loc_46B278
cmp     esi, edi
jle     short loc_46B273
sub     ebx, 20h ; ' '

loc_46B26B:
mov     [edx+20h], bx
pop     edi
pop     esi
pop     ecx
retn

loc_46B273:
add     ebx, 20h ; ' '
jmp     short loc_46B26B

loc_46B278:
mov     [edx+20h], cx
pop     edi
pop     esi
pop     ecx
retn
sub_46B245 endp




sub_46B280 proc near
push    ecx
push    esi
push    edi
mov     ecx, edx
lea     edx, [eax+3A8h]
movsx   esi, cx
movsx   edi, bx
mov     eax, esi
sub     eax, edi
call    abs_
cmp     eax, 20h ; ' '
jle     short loc_46B2B3
cmp     esi, edi
jle     short loc_46B2AE
add     ebx, 20h ; ' '

loc_46B2A6:
mov     [edx+20h], bx
pop     edi
pop     esi
pop     ecx
retn

loc_46B2AE:
sub     ebx, 20h ; ' '
jmp     short loc_46B2A6

loc_46B2B3:
mov     [edx+20h], cx
pop     edi
pop     esi
pop     ecx
retn
sub_46B280 endp




sub_46B2BB proc near
push    ecx
push    esi
lea     ecx, [eax+3A8h]
movsx   esi, dx
movsx   ebx, bx
mov     eax, esi
sub     eax, ebx
call    abs_
cmp     eax, 20h ; ' '
jle     short loc_46B2E7
cmp     esi, ebx
jle     short loc_46B2E0
add     edx, 20h ; ' '
jmp     short loc_46B2E3

loc_46B2E0:
sub     edx, 20h ; ' '

loc_46B2E3:
mov     [ecx+20h], dx

loc_46B2E7:
pop     esi
pop     ecx
retn
sub_46B2BB endp




sub_46B2EA proc near
push    ecx
push    esi
lea     ecx, [eax+3A8h]
movsx   esi, dx
movsx   ebx, bx
mov     eax, esi
sub     eax, ebx
call    abs_
cmp     eax, 20h ; ' '
jle     short loc_46B316
cmp     esi, ebx
jle     short loc_46B30F
sub     edx, 20h ; ' '
jmp     short loc_46B312

loc_46B30F:
add     edx, 20h ; ' '

loc_46B312:
mov     [ecx+20h], dx

loc_46B316:
pop     esi
pop     ecx
retn
sub_46B2EA endp




sub_46B319 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_46B31F[edx*4]
pop     edx
retn
sub_46B319 endp




sub_46B328 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
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
mov     ebx, 0FFFFFFA0h
mov     edx, 4
mov     eax, esi
call    sub_4E19B9
mov     dword ptr [ecx+78h], offset unk_516EE8
xor     eax, eax
mov     al, [ecx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+0B0h], ax
mov     [ecx+6Eh], ax
mov     word ptr [ecx+0B2h], 0
mov     byte ptr [ecx+74h], 0
mov     dword ptr [esi+10h], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+20h], 0
mov     dword ptr [esi+24h], 0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
mov     al, [eax+0Bh]
and     eax, 0FFh
or      eax, 1000000h
mov     [esi+30h], eax
mov     word ptr [esi+34h], 100h
mov     word ptr [esi+36h], 40h ; '@'
xor     ebx, ebx
xor     edx, edx
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
sub_46B328 endp




sub_46B44C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
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
call    sub_46B508
cmp     byte ptr [ebp+8], 2
jz      short loc_46B501
mov     edx, ebp
mov     eax, ecx
call    sub_4E19CA
mov     [ecx+10h], eax
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_46B4AF[ecx*4]
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_46B4D3
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_46B4DA

loc_46B4D3:
mov     eax, ebp
call    sub_4DEADD

loc_46B4DA:
mov     eax, ebp
call    sub_46B72D
mov     eax, ebp
call    sub_46B6D5
test    byte ptr [ebp+0], 2
jz      short loc_46B501
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 78h ; 'x'
mov     eax, ebp
call    sub_4ED88B

loc_46B501:
pop     ebp

loc_46B502:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46B44C endp




sub_46B508 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+408h]
mov     dx, [eax+0B2h]
test    dx, dx
jz      short loc_46B52B
mov     esi, edx
dec     esi
mov     [eax+0B2h], si

loc_46B52B:
mov     esi, [ebx+20h]
and     esi, 0FFFFFFh
jz      short loc_46B502
xor     eax, eax
cmp     byte ptr [ecx+9], 6
jnz     short loc_46B543
mov     eax, 1

loc_46B543:
cmp     byte ptr [ecx+9], 8
jz      short loc_46B54D
test    eax, eax
jz      short loc_46B555

loc_46B54D:
lea     edx, [ecx+14h]
jmp     loc_46B664

loc_46B555:
xor     edx, edx
mov     dl, [ecx+2]
mov     eax, ds:dword_55A10C
mov     eax, [eax+edx*4]
movzx   di, byte ptr [eax+9]
shl     edi, 4
lea     eax, [ecx+14h]
cmp     byte ptr [ecx+9], 7
jnz     loc_46B5FD
sub     [ecx+6Eh], si
mov     edx, eax
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [ecx+15Eh], 7FFFh
cmp     word ptr [ecx+6Eh], 0
jg      short loc_46B5CE
call    sub_4DE13B
test    eax, eax
jz      short loc_46B5B3
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_46B5B3:
lea     edx, [ecx+14h]
mov     eax, ecx
call    sub_4AF9F8
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0

loc_46B5C5:
mov     byte ptr [ecx+0Ah], 0
jmp     loc_46B502

loc_46B5CE:
add     [ebx+3Eh], si
test    byte ptr [ebx+23h], 20h
jnz     short loc_46B5E9
mov     edx, [ebx+3Ch]
sar     edx, 10h
movsx   eax, di
cmp     edx, eax
jl      loc_46B502

loc_46B5E9:
mov     byte ptr [ecx+0ACh], 5
mov     eax, ecx
call    sub_46B673
mov     byte ptr [ecx+9], 8
jmp     short loc_46B5C5

loc_46B5FD:
add     [ecx+0B2h], si
test    byte ptr [ebx+23h], 20h
jnz     short loc_46B61A
mov     esi, [ecx+0B0h]
sar     esi, 10h
movsx   edx, di
cmp     esi, edx
jl      short loc_46B662

loc_46B61A:
mov     byte ptr [ecx+0ACh], 3
mov     word ptr [ecx+0B2h], 0
mov     word ptr [ebx+3Eh], 0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
mov     al, [eax+0Bh]
and     eax, 0FFh
or      eax, 1000000h
mov     [ebx+30h], eax
mov     eax, ecx
call    sub_46B673
mov     byte ptr [ecx+9], 6
jmp     loc_46B5C5

loc_46B662:
mov     edx, eax

loc_46B664:
mov     eax, 0A3h
call    sub_4D8BC3
jmp     loc_46B502
sub_46B508 endp




sub_46B673 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+14h]
mov     edx, edi
mov     eax, 197h
call    sub_4D8BC3
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [esi+430h]
xor     ecx, ecx
mov     eax, edi
call    sub_4DE726
mov     edx, eax
test    eax, 0FFFF0000h
jz      short loc_46B6B3
add     dh, 8
and     dh, 0Fh
mov     [esi+56h], dx
jmp     short loc_46B6B7

loc_46B6B3:
mov     [esi+56h], ax

loc_46B6B7:
mov     word ptr [esi+44h], 80h
mov     word ptr [esi+46h], 0FD80h
mov     word ptr [esi+4Eh], 40h ; '@'
mov     eax, esi
call    sub_46BBEA
jmp     loc_46B502
sub_46B673 endp




sub_46B6D5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
add     eax, 408h
mov     dword ptr [eax+20h], 0
lea     edi, [eax+18h]
lea     esi, [edx+14h]
movsd
movsd
push    0
push    offset unk_800000
sub     word ptr [eax+1Ah], 50h ; 'P'
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
mov     edx, 50h ; 'P'
call    sub_4E01FC
jmp     loc_46B502
sub_46B6D5 endp




sub_46B72D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+408h]
mov     dword ptr [ecx+14h], 0
call    sub_42DE56
test    ah, 0Fh
jz      short loc_46B74F
or      byte ptr [ecx+14h], 1

loc_46B74F:
cmp     byte ptr [edx+74h], 0
jnz     loc_46B502
mov     eax, edx
call    sub_42C592
mov     esi, eax
mov     ebx, [edx+2Ch]
sar     ebx, 10h
cmp     eax, ebx
jz      short loc_46B78A
cmp     byte ptr [edx+75h], 0
jnz     short loc_46B794
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
jmp     short loc_46B794

loc_46B78A:
mov     [edx+16h], bx
shl     eax, 10h
mov     [edx+20h], eax

loc_46B794:
