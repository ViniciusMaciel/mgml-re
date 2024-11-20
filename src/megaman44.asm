or      byte ptr [ecx+14h], 2
jmp     loc_46B502
sub_46B72D endp




sub_46B79D proc near
push    edx
lea     edx, [eax+408h]
cmp     dword ptr [edx+10h], 0
jz      short loc_46B7CB
mov     byte ptr [eax+0ACh], 1
mov     word ptr [eax+44h], 20h ; ' '
mov     word ptr [eax+46h], 0
mov     word ptr [eax+4Eh], 0
mov     byte ptr [eax+9], 3

loc_46B7C7:
mov     byte ptr [eax+0Ah], 0

loc_46B7CB:
pop     edx
retn
sub_46B79D endp




sub_46B7CD proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bx, [eax+34h]
dec     bx
mov     [eax+34h], bx
jnz     short loc_46B7EC
mov     eax, edx
call    sub_46BC35
pop     edx
pop     ebx
retn

loc_46B7EC:
mov     eax, edx
call    sub_46B79D
pop     edx
pop     ebx
retn
sub_46B7CD endp




sub_46B7F6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 408h
test    byte ptr [eax+14h], 5
jz      short loc_46B813
mov     eax, esi
call    sub_46BC64
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46B813:
mov     dx, [eax+36h]
dec     dx
mov     [eax+36h], dx
jnz     short loc_46B82B
mov     eax, esi
call    sub_46BC18
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46B82B:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_46B79D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46B7F6 endp




sub_46B850 proc near
push    ecx
push    edx
lea     edx, [eax+408h]
mov     ecx, [eax+54h]
sar     ecx, 10h
mov     edx, [edx+3Ah]
sar     edx, 10h
cmp     ecx, edx
jnz     short loc_46B870
call    sub_46BC35
pop     edx
pop     ecx
retn

loc_46B870:
jle     short loc_46B879
sub     word ptr [eax+56h], 10h
jmp     short loc_46B87E

loc_46B879:
add     word ptr [eax+56h], 10h

loc_46B87E:
and     byte ptr [eax+57h], 0Fh
call    sub_46B79D
pop     edx
pop     ecx
retn
sub_46B850 endp




sub_46B88A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
test    byte ptr [edi+14h], 5
jz      short loc_46B8A9
mov     eax, esi
call    sub_46BC64
jmp     loc_46B502

loc_46B8A9:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 40h ; '@'
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
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
test    eax, eax
jz      loc_46B502
cmp     dword ptr [esi+80h], 0F4240h
ja      loc_46B502
mov     word ptr [edi+38h], 10h
mov     byte ptr [esi+0ACh], 2
mov     byte ptr [esi+9], 4
mov     byte ptr [esi+0Ah], 0
jmp     loc_46B502
sub_46B88A endp




sub_46B943 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_46B949[edx*4]
pop     edx
retn
sub_46B943 endp




sub_46B952 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
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
xor     edx, edx
cmp     byte ptr [esi+0A4h], 0
jnz     short loc_46B995
mov     edx, 1

loc_46B995:
cmp     byte ptr [esi+0A4h], 4
jz      short loc_46B9A2
test    edx, edx
jz      short loc_46B9AF

loc_46B9A2:
lea     edx, [esi+14h]
mov     eax, 196h
call    sub_4D8BC3

loc_46B9AF:
mov     bx, [edi+38h]
dec     bx
mov     [edi+38h], bx
jnz     loc_46B502
mov     word ptr [edi+38h], 3Ch ; '<'
mov     word ptr [esi+44h], 200h
mov     [esi+46h], bx
mov     [esi+4Eh], bx
xor     edx, edx
mov     dl, [esi+2]
mov     eax, ds:dword_55A10C
mov     edx, [eax+edx*4]
xor     eax, eax
mov     al, [edx+0Ah]
or      eax, 1000000h
mov     [edi+30h], eax
inc     byte ptr [esi+0Ah]
jmp     loc_46B502
sub_46B952 endp




sub_46B9F5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+408h]
xor     ebp, ebp
test    byte ptr [edi+14h], 1
jz      short loc_46BA2D
mov     ebp, 1
test    byte ptr [esi+6], 80h
jz      short loc_46BA2D
lea     ecx, [esi+14h]
mov     ebx, 1388h
mov     edx, 3E8h
mov     eax, 1Eh
call    sub_42A70B

loc_46BA2D:
xor     edx, edx
cmp     byte ptr [esi+0A4h], 0
jnz     short loc_46BA3D
mov     edx, 1

loc_46BA3D:
cmp     byte ptr [esi+0A4h], 4
jz      short loc_46BA4A
test    edx, edx
jz      short loc_46BA57

loc_46BA4A:
lea     edx, [esi+14h]
mov     eax, 196h
call    sub_4D8BC3

loc_46BA57:
test    byte ptr [edi+14h], 4
jz      short loc_46BA62
mov     ebp, 1

loc_46BA62:
mov     dx, [edi+38h]
dec     dx
mov     [edi+38h], dx
jz      short loc_46BA72
test    ebp, ebp
jz      short loc_46BAA2

loc_46BA72:
mov     byte ptr [esi+0ACh], 0
movzx   ebp, byte ptr [esi+2]
mov     edx, ds:dword_55A10C
mov     ebp, [edx+ebp*4]
xor     edx, edx
mov     dl, [ebp+0Bh]
or      edx, 1000000h
mov     [edi+30h], edx
mov     word ptr [edi+38h], 30h ; '0'
inc     byte ptr [esi+0Ah]
jmp     loc_46B501

loc_46BAA2:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
jmp     loc_46B501
sub_46B9F5 endp




sub_46BAC0 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bx, [eax+38h]
dec     bx
mov     [eax+38h], bx
jnz     short loc_46BADC
mov     eax, edx
call    sub_46BC95

loc_46BADC:
pop     edx
pop     ebx
retn
sub_46BAC0 endp




sub_46BADF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 408h
mov     edx, offset byte_5F8364
test    byte ptr [eax+14h], 5
jz      short loc_46BAFB
mov     word ptr [esi+44h], 0

loc_46BAFB:
mov     bx, [eax+3Ah]
dec     bx
mov     [eax+3Ah], bx
jnz     short loc_46BB13
mov     eax, esi
call    sub_46BC35
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46BB13:
mov     ebx, [esi+54h]
sar     ebx, 10h
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 80h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
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
sub_46BADF endp




sub_46BB52 proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46BB98
push    edx
mov     edx, eax
call    sub_46BBCF
cmp     byte ptr [edx+74h], 0
jnz     short loc_46BB8F
cmp     byte ptr [edx+9], 6
jnz     short loc_46BB7A
mov     word ptr [edx+44h], 40h ; '@'
mov     word ptr [edx+46h], 0FF20h
jmp     short loc_46BB86

loc_46BB7A:
mov     word ptr [edx+44h], 40h ; '@'
mov     word ptr [edx+46h], 0FF60h

loc_46BB86:
mov     word ptr [edx+4Eh], 20h ; ' '
inc     byte ptr [edx+0Ah]

loc_46BB8F:
mov     eax, edx
call    sub_46BBEA
pop     edx
retn

loc_46BB98:
push    edx
mov     edx, eax
call    sub_46BBCF
mov     ah, [edx+74h]
test    ah, ah
jnz     short loc_46BBC6
cmp     byte ptr [edx+9], 6
jnz     short loc_46BBBD
mov     byte ptr [edx+0ACh], 4
mov     byte ptr [edx+9], 7
mov     [edx+0Ah], ah
pop     edx
retn

loc_46BBBD:
mov     eax, edx
call    sub_46BC64
pop     edx
retn

loc_46BBC6:
mov     eax, edx
call    sub_46BBEA
pop     edx
retn
sub_46BB52 endp




sub_46BBCF proc near
push    edx
lea     edx, [eax+408h]
test    byte ptr [edx+14h], 1
jz      short loc_46BBE8
mov     word ptr [eax+44h], 0
mov     word ptr [eax+48h], 0

loc_46BBE8:
pop     edx
retn
sub_46BBCF endp




sub_46BBEA proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     byte ptr [eax+74h], 1
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
mov     dx, [esi+4Eh]
add     [esi+46h], dx
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_46BBEA endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_63]



sub_46BC18 proc near
push    edx
lea     edx, [eax+408h]
mov     word ptr [edx+34h], 100h
mov     byte ptr [eax+0ACh], 0
mov     byte ptr [eax+9], 0
jmp     loc_46B7C7
sub_46BC18 endp




sub_46BC35 proc near
push    edx
lea     edx, [eax+408h]
mov     byte ptr [eax+0ACh], 1
mov     word ptr [eax+44h], 18h
mov     word ptr [eax+46h], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [edx+36h], 40h ; '@'
mov     byte ptr [eax+9], 1
jmp     loc_46B7C7
sub_46BC35 endp




sub_46BC64 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0ACh], 1
jz      short loc_46BC7C
mov     byte ptr [eax+0ACh], 1

loc_46BC7C:
mov     bx, [eax+56h]
add     bh, 8
and     bh, 0Fh
mov     [edx+3Ch], bx
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
pop     edx
pop     ebx
retn
sub_46BC64 endp




sub_46BC95 proc near
push    edx
lea     edx, [eax+408h]
mov     byte ptr [eax+0ACh], 2
mov     word ptr [eax+44h], 0FF80h
mov     word ptr [eax+46h], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [edx+3Ah], 0Ch
mov     byte ptr [eax+9], 5
jmp     loc_46B7C7
sub_46BC95 endp



; Attributes: thunk

sub_46BCC4 proc near
jmp     sub_4DE2F6
sub_46BCC4 endp




sub_46BCC9 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_46BCCF[edx*4]
pop     edx
retn
sub_46BCC9 endp




sub_46BCD8 proc near
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
call    rand_
xor     ah, ah
and     al, 1Fh
shl     eax, 7
mov     [ecx+56h], ax
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
mov     edx, 9
mov     eax, esi
call    sub_4E19B9
mov     dword ptr [ecx+78h], offset unk_516F30
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+0B0h], ax
mov     [ecx+6Eh], ax
mov     byte ptr [ecx+74h], 1
mov     dword ptr [esi+10h], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+20h], 0
mov     dword ptr [esi+24h], 0
mov     dword ptr [esi+28h], 0
mov     word ptr [ecx+16h], 0FE00h
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 1
mov     eax, ecx
call    sub_46C290
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46BCD8 endp




sub_46BDE8 proc near
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
mov     word ptr [ebp+15Eh], 4210h
cmp     dword ptr [ebp+80h], offset unk_5F5E10
jb      short loc_46BE44
test    byte ptr [ebp+6], 80h
jnz     short loc_46BE44
mov     byte ptr [ebp+8], 2
mov     byte ptr [ebp+9], 0
jmp     loc_46BEBD

loc_46BE44:
mov     eax, ebp
call    sub_46BEC4
mov     edx, ebp
mov     eax, ecx
call    sub_4E19CA
mov     [ecx+10h], eax
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_46BE5E[ecx*4]
cmp     byte ptr [ebp+8], 2
jz      short loc_46BEBD
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_46BE88
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_46BE8F

loc_46BE88:
mov     eax, ebp
call    sub_4DEADD

loc_46BE8F:
mov     eax, ebp
call    sub_46BF33
cmp     word ptr [ebp+6Eh], 0
jz      short loc_46BEA4
mov     eax, ebp
call    sub_46BF5F

loc_46BEA4:
test    byte ptr [ebp+0], 2
jz      short loc_46BEBD
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 40h ; '@'
mov     eax, ebp
call    sub_4ED88B

loc_46BEBD:
pop     ebp

loc_46BEBE:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46BDE8 endp




sub_46BEC4 proc near
push    ecx
push    edx
mov     ecx, eax
add     eax, 408h
cmp     word ptr [ecx+6Eh], 0
jz      short loc_46BF30
test    byte ptr [eax+23h], 38h
jz      short loc_46BF30
mov     eax, [eax+20h]
and     eax, 0FFFFFFh
jz      short loc_46BF30
sub     [ecx+6Eh], ax
lea     edx, [ecx+14h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [ecx+15Eh], 7FFFh
cmp     word ptr [ecx+6Eh], 0
jg      short loc_46BF30
mov     byte ptr [ecx+0ACh], 4
mov     word ptr [ecx+6Eh], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0FD80h
mov     word ptr [ecx+4Eh], 40h ; '@'
mov     byte ptr [ecx+74h], 1
mov     byte ptr [ecx+9], 4
mov     byte ptr [ecx+0Ah], 0

loc_46BF30:
pop     edx
pop     ecx
retn
sub_46BEC4 endp




sub_46BF33 proc near
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+408h]
mov     dword ptr [edx+14h], 0
call    sub_42DE56
test    ah, 0Fh
jz      short loc_46BF52
or      byte ptr [edx+14h], 1

loc_46BF52:
cmp     byte ptr [ecx+74h], 0
jnz     short loc_46BF5C
or      byte ptr [edx+14h], 2

loc_46BF5C:
pop     edx
pop     ecx
retn
sub_46BF33 endp




sub_46BF5F proc near
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
push    0
mov     ecx, [eax+28h]
or      ecx, 4000000h
push    ecx
lea     ecx, [eax+20h]
push    ecx
mov     dl, [edx+1]
and     edx, 0FFh
push    edx
add     eax, 18h
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 40h ; '@'
call    sub_4E01FC
jmp     loc_46BEBE
sub_46BF5F endp




sub_46BFAF proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+408h]
cmp     dword ptr [ebx+10h], 0
jz      short loc_46C02C
mov     ah, [eax+9]
cmp     ah, 1
jnz     short loc_46BFF3
mov     [ecx+0ACh], ah
mov     word ptr [ecx+44h], 180h
mov     word ptr [ecx+46h], 0FF10h
mov     word ptr [ecx+4Eh], 0
lea     edx, [ecx+14h]
mov     eax, 158h
call    sub_4D8BC3
mov     byte ptr [ecx+0Ah], 0
jmp     short loc_46C022

loc_46BFF3:
mov     word ptr [ecx+44h], 180h
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+4Eh], 0
xor     edx, edx
mov     dl, [ecx+2]
mov     eax, ds:dword_55A10C
mov     edx, [eax+edx*4]
mov     dl, [edx+0Ah]
and     edx, 0FFh
mov     [ebx+28h], edx
mov     byte ptr [ecx+0Ah], 1

loc_46C022:
mov     word ptr [ebx+30h], 3Ch ; '<'
mov     byte ptr [ecx+9], 3

loc_46C02C:
pop     edx
pop     ecx
pop     ebx
retn
sub_46BFAF endp




sub_46C030 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
mov     eax, esi
call    sub_46C324
cmp     byte ptr [esi+0A7h], 0
jz      short loc_46C064
mov     eax, esi
call    sub_46C2D2

loc_46C064:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46C030 endp




sub_46C069 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
mov     bx, [edx+2Eh]
dec     bx
mov     [edx+2Eh], bx
jnz     short loc_46C085
call    sub_46C2F0
pop     edx
pop     ebx
retn

loc_46C085:
mov     bx, [eax+56h]
add     ebx, 20h ; ' '
and     bh, 0Fh
mov     [eax+56h], bx
cmp     word ptr [edx+2Eh], 40h ; '@'
ja      short loc_46C09F
call    sub_46BFAF

loc_46C09F:
pop     edx
pop     ebx
retn
sub_46C069 endp




sub_46C0A2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
mov     eax, esi
call    sub_46C34D
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_46C0D8
mov     eax, esi
call    sub_46C0E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46C0D8:
mov     eax, esi
call    sub_46C13D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46C0A2 endp




sub_46C0E4 proc near
push    ebx
push    ecx
push    edx
lea     ecx, [eax+408h]
cmp     byte ptr [eax+0A7h], 0
jz      short loc_46C12A
mov     byte ptr [eax+0ACh], 2
cmp     byte ptr [eax+9], 3
jnz     short loc_46C11D
xor     edx, edx
mov     dl, [eax+2]
mov     ebx, ds:dword_55A10C
mov     edx, [ebx+edx*4]
mov     dl, [edx+0Ah]
and     edx, 0FFh
mov     [ecx+28h], edx

loc_46C11D:
mov     word ptr [eax+46h], 0
inc     byte ptr [eax+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_46C12A:
cmp     byte ptr [eax+0A4h], 9
jnz     short loc_46C139
mov     word ptr [eax+46h], 0F0h

loc_46C139:
pop     edx
pop     ecx
pop     ebx
retn
sub_46C0E4 endp




sub_46C13D proc near
push    ebx
push    edx
lea     edx, [eax+408h]
test    byte ptr [edx+14h], 1
jz      short loc_46C153

loc_46C14B:
call    sub_46C290
pop     edx
pop     ebx
retn

loc_46C153:
mov     bx, [edx+30h]
dec     bx
mov     [edx+30h], bx
jz      short loc_46C14B
call    sub_46BFAF
pop     edx
pop     ebx
retn
sub_46C13D endp




sub_46C167 proc near
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
mov     ecx, 60h ; '`'
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_46C34D
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_46C1C5
mov     eax, esi
call    sub_46C0E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46C1C5:
mov     eax, esi
call    sub_46C1D1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46C167 endp




sub_46C1D1 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
add     eax, 408h
xor     ecx, ecx
test    byte ptr [eax+14h], 1
jz      short loc_46C1E8
mov     ecx, 1

loc_46C1E8:
test    byte ptr [eax+23h], 2
jz      short loc_46C1F3
mov     ecx, 1

loc_46C1F3:
test    byte ptr [eax+23h], 4
jz      short loc_46C1FE
mov     ecx, 1

loc_46C1FE:
mov     bx, [eax+30h]
dec     bx
mov     [eax+30h], bx
jz      short loc_46C20E
test    ecx, ecx
jz      short loc_46C21C

loc_46C20E:
mov     dword ptr [eax+28h], 0
mov     eax, edx
call    sub_46C290

loc_46C21C:
pop     edx
pop     ecx
pop     ebx
retn
sub_46C1D1 endp




sub_46C220 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
add     eax, 408h
cmp     dword ptr [eax+14h], 0
jz      short loc_46C26A
call    sub_4DE13B
test    eax, eax
jz      short loc_46C24F
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_46C24F:
lea     edx, [ebp+14h]
mov     eax, ebp
call    sub_4AF9F8
mov     byte ptr [ebp+8], 2
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 0
jmp     loc_46BEBD

loc_46C26A:
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
jmp     loc_46BEBD
sub_46C220 endp




sub_46C290 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+408h]
mov     byte ptr [eax+0ACh], 3
mov     word ptr [eax+44h], 100h
mov     word ptr [eax+46h], 0FF10h
mov     word ptr [eax+4Eh], 0
call    rand_
and     eax, 3
mov     ax, ds:word_516F50[eax*2]
mov     [ecx+2Ch], ax
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
pop     edx
pop     ecx
retn
sub_46C290 endp




sub_46C2D2 proc near
push    edx
lea     edx, [eax+408h]
mov     byte ptr [eax+0ACh], 0
mov     word ptr [edx+2Eh], 80h
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
pop     edx
retn
sub_46C2D2 endp




sub_46C2F0 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
mov     byte ptr [eax+0ACh], 1
mov     bx, [edx+2Ch]
mov     [eax+44h], bx
mov     word ptr [eax+46h], 0FF10h
mov     word ptr [eax+4Eh], 0
mov     word ptr [edx+30h], 3Ch ; '<'
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
pop     edx
pop     ebx
retn
sub_46C2F0 endp




sub_46C324 proc near
push    edx
mov     edx, [eax+14h]
sar     edx, 10h
cmp     edx, 0FFFFFCD4h
jge     short loc_46C34B
mov     word ptr [eax+16h], 0FCD4h
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     word ptr [eax+46h], 0

loc_46C34B:
pop     edx
retn
sub_46C324 endp




sub_46C34D proc near
push    edx
mov     edx, [eax+14h]
sar     edx, 10h
cmp     edx, 0FFFFFE00h
jle     short loc_46C374
mov     word ptr [eax+16h], 0FE00h
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     word ptr [eax+46h], 0

loc_46C374:
pop     edx
retn
sub_46C34D endp




sub_46C376 proc near
dec     ds:word_5395F8
jmp     sub_4DE2F6
sub_46C376 endp




sub_46C382 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_46C388[edx*4]
pop     edx
retn
sub_46C382 endp




sub_46C391 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset dword_560BDC
cmp     byte ptr [eax+8], 0
jnz     short loc_46C3E3
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 4000400h
mov     dword ptr [ecx+15Ch], 400h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+56h], 8C0h
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]

loc_46C3E3:
mov     esi, [esi+10h]
and     esi, 7
cmp     esi, 4
jge     short loc_46C3F7
mov     byte ptr [ecx+0FCh], 1
jmp     short loc_46C3FE

loc_46C3F7:
mov     byte ptr [ecx+0FCh], 0Bh

loc_46C3FE:
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
mov     eax, ecx
call    sub_4DEADD
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46C391 endp




sub_46C425 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+348h]
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
lea     edi, [edx+5Ch]
lea     esi, [edx+54h]
movsd
movsd
mov     word ptr [eax+15Eh], 0
call    rand_
mov     [ecx+7Eh], ax
cmp     byte ptr [edx+0Eh], 0
jnz     short loc_46C47A
xor     al, al

loc_46C465:
movsx   ecx, al
mov     word ptr [edx+ecx*8+196h], 4210h
inc     al
cmp     al, 5
jl      short loc_46C465
jmp     short loc_46C48F

loc_46C47A:
xor     al, al

loc_46C47C:
movsx   ecx, al
mov     word ptr [edx+ecx*8+196h], 7FFFh
inc     al
cmp     al, 5
jl      short loc_46C47C

loc_46C48F:
xor     ecx, ecx
mov     cl, [edx+8]
mov     eax, edx
call    ds:funcs_46C496[ecx*4]
mov     byte ptr [edx+0Eh], 0
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_46C425 endp




sub_46C4A6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+348h]
mov     ah, [eax]
or      ah, 42h
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
lea     eax, [ecx+380h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     word ptr [esi+68h], 0
mov     word ptr [esi+6Ah], 0
mov     dword ptr [ecx+78h], offset unk_516F5C
mov     edx, ds:dword_55A10C
mov     edx, [edx+104h]
mov     al, [edx+0Ah]
mov     [ecx+73h], al
mov     edx, ds:dword_55A10C
mov     edx, [edx+104h]
xor     eax, eax
mov     al, [edx+0Ch]
shl     eax, 4
mov     [esi+64h], ax
mov     edx, ds:dword_55A10C
mov     edx, [edx+104h]
xor     eax, eax
mov     al, [edx+0Ch]
shl     eax, 4
mov     [esi+66h], ax
mov     byte ptr [esi+83h], 0
mov     byte ptr [esi+84h], 0
mov     dword ptr [esi], 0
mov     dword ptr [esi+4], 0
mov     byte ptr [ecx+8], 1
mov     word ptr [ecx+15Eh], 0
xor     al, al

loc_46C588:
xor     edx, edx
mov     dl, al
mov     word ptr [ecx+edx*8+196h], 4210h
inc     al
cmp     al, 5
jb      short loc_46C588
mov     byte ptr [ecx+0ACh], 0
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [esi+6Ch], 960h
mov     word ptr [esi+7Ch], 0B4h
mov     byte ptr [esi+81h], 0
mov     byte ptr [esi+82h], 0
mov     word ptr [esi+6Eh], 0
mov     word ptr [esi+70h], 0
mov     word ptr [esi+72h], 0
mov     byte ptr [esi+85h], 0
xor     al, al

loc_46C5E9:
xor     edx, edx
mov     dl, al
shl     edx, 3
lea     ecx, [esi+edx]
mov     dword ptr [ecx+20h], 0
inc     al
cmp     al, 3
jb      short loc_46C5E9
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46C4A6 endp




sub_46C605 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
push    eax
lea     ebp, [eax+348h]
xor     ah, ah
mov     [esp+2Ch+var_1C], ah
mov     eax, [esp+2Ch+var_2C]
call    sub_46D329
mov     eax, [esp+2Ch+var_2C]
add     eax, 380h
mov     edx, [esp+2Ch+var_2C]
call    sub_4E19CA
mov     eax, [esp+2Ch+var_2C]
cmp     byte ptr [eax+3], 0
jnz     short loc_46C64B
xor     edx, edx
mov     dl, [ebp+81h]
call    ds:funcs_46C644[edx*4]

loc_46C64B:
test    byte ptr [ebp+85h], 8
jnz     short loc_46C663
xor     edx, edx
mov     eax, [esp+2Ch+var_2C]
mov     dl, [eax+9]
call    ds:funcs_46C65C[edx*4]

loc_46C663:
mov     eax, [esp+2Ch+var_2C]
cmp     byte ptr [eax+3], 0
jnz     short loc_46C67A
movzx   esi, byte ptr [ebp+83h]
call    ds:funcs_46C673[esi*4]

loc_46C67A:
mov     eax, [esp+2Ch+var_2C]
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     edi, [esp+2Ch+var_2C]
lea     edi, [edi+14h]
lea     esi, [eax+190h]
movsd
movsd
mov     eax, [esp+2Ch+var_2C]
mov     eax, [eax+12h]
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+2Ch+var_2C]
mov     [edx+1Ch], eax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
mov     eax, edx
call    sub_4DEB53
mov     ax, [ebp+68h]
mov     ds:word_560E1C, ax
mov     ax, [ebp+6Ah]
mov     ds:word_560E2C, ax
mov     eax, edx
call    sub_4DF795
lea     edi, [ebp+8]
mov     esi, edx
lea     esi, [esi+190h]
movsd
movsd
push    80h
push    0
sub     word ptr [ebp+0Ah], 0B8h
mov     eax, [esp+34h+var_2C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
xor     eax, eax
mov     al, [esp+38h+var_1C]
shl     eax, 3
lea     edx, [ebp+20h]
mov     [esp+38h+var_24], edx
add     eax, edx
push    eax
xor     eax, eax
mov     edx, [esp+3Ch+var_2C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+8]
mov     [esp+40h+var_20], eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 118h
call    sub_4E01FC
lea     edi, [ebp+8]
mov     esi, [esp+2Ch+var_2C]
lea     esi, [esi+198h]
movsd
movsd
mov     eax, [ebp+6]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4Ch], eax
mov     eax, [ebp+8]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+50h], eax
mov     eax, [ebp+0Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+54h], eax
push    3C0h
push    3C0h
mov     eax, [esp+34h+var_2C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
inc     [esp+34h+var_1C]
lea     eax, [ebp+4Ch]
mov     [esp+34h+var_28], eax
xor     ecx, ecx
mov     edx, eax
mov     eax, [esp+34h+var_20]
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+34h+var_2C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
mov     ecx, [esp+38h+var_24]
push    ecx
xor     eax, eax
mov     edx, [esp+3Ch+var_2C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0B4h
mov     eax, [esp+40h+var_20]
call    sub_4E01FC
lea     edi, [ebp+8]
mov     esi, [esp+2Ch+var_2C]
lea     esi, [esi+1A8h]
movsd
movsd
mov     eax, [ebp+6]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4Ch], eax
mov     eax, [ebp+8]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+50h], eax
mov     eax, [ebp+0Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+54h], eax
push    0FFFFFC40h
push    3C0h
mov     eax, [esp+34h+var_2C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
xor     ecx, ecx
mov     edx, [esp+34h+var_28]
mov     eax, [esp+34h+var_20]
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+34h+var_2C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
mov     ebx, [esp+38h+var_24]
push    ebx
xor     eax, eax
mov     edx, [esp+3Ch+var_2C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0B4h
mov     eax, [esp+40h+var_20]
call    sub_4E01FC
mov     word ptr [ebp+5Ch], 0
mov     word ptr [ebp+5Eh], 0C59h
mov     word ptr [ebp+60h], 0
lea     esi, [ebp+5Ch]
mov     eax, [esp+2Ch+var_2C]
add     eax, 258h
mov     ebx, [esp+2Ch+var_28]
mov     edx, esi
call    sub_4EF1FB
mov     eax, [esp+2Ch+var_2C]
mov     ax, [eax+1A0h]
mov     bx, [ebp+4Ch]
add     eax, ebx
mov     [ebp+8], ax
mov     eax, [esp+2Ch+var_2C]
mov     ax, [eax+1A2h]
mov     cx, [ebp+50h]
add     eax, ecx
mov     [ebp+0Ah], ax
mov     eax, [esp+2Ch+var_2C]
mov     ax, [eax+1A4h]
mov     di, [ebp+54h]
add     eax, edi
mov     [ebp+0Ch], ax
push    80h
push    0
mov     eax, [esp+34h+var_2C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
mov     edi, [esp+38h+var_24]
push    edi
xor     eax, eax
mov     edx, [esp+3Ch+var_2C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 118h
mov     eax, [esp+40h+var_20]
call    sub_4E01FC
mov     word ptr [ebp+5Ch], 0
mov     word ptr [ebp+5Eh], 0C59h
mov     word ptr [ebp+60h], 0
mov     eax, [esp+2Ch+var_2C]
add     eax, 2B8h
mov     ebx, [esp+2Ch+var_28]
mov     edx, esi
call    sub_4EF1FB
mov     eax, [esp+2Ch+var_2C]
mov     ax, [eax+1B0h]
mov     dx, [ebp+4Ch]
add     eax, edx
mov     [ebp+8], ax
mov     eax, [esp+2Ch+var_2C]
mov     ax, [eax+1B2h]
mov     bx, [ebp+50h]
add     eax, ebx
mov     [ebp+0Ah], ax
mov     eax, [esp+2Ch+var_2C]
mov     ax, [eax+1B4h]
mov     cx, [ebp+54h]
add     eax, ecx
mov     [ebp+0Ch], ax
push    80h
push    0
mov     eax, [esp+34h+var_2C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
mov     eax, edi
push    edi
xor     eax, edi
mov     edx, [esp+3Ch+var_2C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 118h
mov     eax, [esp+40h+var_20]
call    sub_4E01FC
lea     edi, [ebp+10h]
mov     esi, [esp+2Ch+var_2C]
lea     esi, [esi+198h]
movsd
movsd
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4Ch], eax
mov     eax, [ebp+10h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+50h], eax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+54h], eax
push    0FFFFF968h
push    0FFFFF2C0h
mov     eax, [esp+34h+var_2C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     esi, [ebp+10h]
xor     ecx, ecx
mov     edx, [esp+34h+var_28]
mov     eax, esi
call    sub_4DD4C5
cmp     word ptr [ebp+64h], 0
jl      short loc_46CA4B
push    0
push    0
mov     eax, [esp+34h+var_2C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
xor     eax, eax
mov     al, [esp+38h+var_1C]
shl     eax, 3
add     eax, [esp+38h+var_24]
push    eax
xor     eax, eax
mov     edx, [esp+3Ch+var_2C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 8Ch
mov     eax, esi
call    sub_4E01FC

loc_46CA4B:
lea     edi, [ebp+18h]
mov     esi, [esp+2Ch+var_2C]
lea     esi, [esi+1A8h]
movsd
movsd
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4Ch], eax
mov     eax, [ebp+18h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+50h], eax
mov     eax, [ebp+1Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+54h], eax
push    698h
push    0FFFFF2C0h
mov     eax, [esp+34h+var_2C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
inc     [esp+34h+var_1C]
lea     edx, [ebp+4Ch]
lea     esi, [ebp+18h]
xor     ecx, ecx
mov     eax, esi
call    sub_4DD4C5
cmp     word ptr [ebp+66h], 0
jl      short loc_46CAEF
push    0
push    0
mov     eax, [esp+34h+var_2C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
xor     eax, eax
mov     al, [esp+38h+var_1C]
shl     eax, 3
lea     edx, [ebp+20h]
add     eax, edx
push    eax
xor     eax, eax
mov     edx, [esp+3Ch+var_2C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 8Ch
mov     eax, esi
call    sub_4E01FC

loc_46CAEF:
xor     al, al
mov     [esp+2Ch+var_1C], al

loc_46CAF5:
xor     eax, eax
mov     al, [esp+2Ch+var_1C]
mov     dword ptr [ebp+eax*8+20h], 0
mov     ah, al
inc     ah
mov     [esp+2Ch+var_1C], ah
cmp     ah, 3
jb      short loc_46CAF5
add     esp, 14h
jmp     loc_46CE01
sub_46C605 endp



; Attributes: thunk

sub_46CB18 proc near
jmp     sub_4DE2F6
sub_46CB18 endp




sub_46CB1D proc near

var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     edi, eax
lea     esi, [eax+348h]
mov     ebp, offset byte_5F8364
mov     dx, [esi+6Ch]
test    dx, dx
jnz     loc_46CDF7
or      byte ptr [esi+85h], 8
cmp     byte ptr [edi+0Bh], 0
jnz     short loc_46CB54
mov     [esp+20h+var_1C], 2
jmp     short loc_46CB59

loc_46CB54:
mov     [esp+20h+var_1C], 4

loc_46CB59:
mov     bh, [esi+82h]
test    bh, bh
jnz     loc_46CBFE
cmp     byte ptr [edi+0Bh], 0
jnz     short loc_46CBD3
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     ecx, 20h ; ' '
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
push    800h
mov     eax, [ebp+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     edx, [edi+54h]
sar     edx, 10h
lea     eax, [edi+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      short loc_46CBFE
call    sub_4DE043
test    eax, eax
jz      short loc_46CBFE
mov     [esi+48h], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
jmp     short loc_46CBEC

loc_46CBD3:
call    sub_4DE043
test    eax, eax
jz      short loc_46CBFE
mov     [esi+48h], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2
mov     [eax+4], bh
mov     [eax+3], bh

loc_46CBEC:
mov     byte ptr [eax+0Dh], 2
or      byte ptr [esi+85h], 1
mov     byte ptr [esi+86h], 0Ah

loc_46CBFE:
test    byte ptr [esi+85h], 1
jz      loc_46CDFE
cmp     [esp+20h+var_1C], 2
jnz     short loc_46CC1D
mov     eax, [esi+48h]
mov     word ptr [eax+14h], 0FC00h
jmp     short loc_46CC26

loc_46CC1D:
mov     eax, [esi+48h]
mov     word ptr [eax+14h], 400h

loc_46CC26:
mov     eax, [esi+48h]
mov     word ptr [eax+16h], 11E0h
mov     eax, [esi+48h]
mov     word ptr [eax+18h], 0FEA0h
mov     eax, [esi+48h]
lea     ebx, [eax+1Ch]
lea     ecx, [eax+14h]
movzx   ebp, [esp+20h+var_1C]
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
shl     eax, 4
lea     edx, [edi+1F8h]
add     eax, edx
mov     edx, ecx
call    sub_4EF1FB
mov     ecx, ebp
shl     ecx, 3
lea     eax, [edi+ecx]
mov     edx, [esi+48h]
mov     bx, [eax+190h]
add     bx, [edx+1Ch]
mov     [edx+14h], bx
mov     edx, [esi+48h]
mov     bx, [eax+192h]
add     bx, [edx+20h]
mov     [edx+16h], bx
mov     edx, [esi+48h]
mov     ax, [eax+194h]
mov     bx, [edx+24h]
add     eax, ebx
mov     [edx+18h], ax
mov     eax, [esi+48h]
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     eax, [esi+48h]
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     eax, [esi+48h]
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
cmp     byte ptr [esi+82h], 0
jz      loc_46CDEE
mov     edx, [esi+48h]
add     edx, 14h
lea     eax, [edi+190h]
add     eax, ecx
mov     [esp+20h+var_20], eax
call    sub_4DDDB4
mov     ecx, 20h ; ' '
mov     ebx, eax
mov     edx, (offset dword_5F8376+2)
mov     eax, [esp+20h+var_20]
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
mov     eax, ebp
mov     edx, ebp
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
add     eax, eax
lea     ebp, [esi+eax]
mov     ebx, [ebp+64h]
sar     ebx, 10h
mov     ecx, 20h ; ' '
mov     edx, (offset dword_5F8376+2)
mov     eax, [esp+20h+var_20]
call    sub_4DE5A3
mov     ebx, eax
mov     ax, [ebp+66h]
test    ax, ax
jz      short loc_46CD47
cmp     ax, 0C00h
jle     short loc_46CD65

loc_46CD47:
xor     edx, edx
mov     dl, [esp+20h+var_1C]
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     dx, [esi+eax*2+66h]
add     edx, ebx
and     dh, 0Fh
mov     [esi+eax*2+66h], dx

loc_46CD65:
mov     eax, [esi+48h]
cmp     byte ptr [eax+0Ch], 0
jz      loc_46CDFE
mov     bh, [esi+86h]
test    bh, bh
jnz     short loc_46CDE2
lea     edx, [eax+14h]
xor     eax, eax
mov     al, [esp+20h+var_1C]
shl     eax, 3
lea     ecx, [edi+190h]
add     eax, ecx
call    sub_4DDDB4
mov     edx, [esi+48h]
mov     [edx+64h], ax
mov     eax, [esi+48h]
add     byte ptr [eax+0Ch], 80h
mov     [esi+82h], bh
cmp     byte ptr [edi+0Bh], 0
jz      short loc_46CDCE
mov     word ptr [esi+6Ch], 12Ch
mov     byte ptr [esi+81h], 1
mov     [esi+82h], bh
mov     [edi+0Bh], bh
and     byte ptr [esi+85h], 0FEh
jmp     short loc_46CDFE

loc_46CDCE:
mov     byte ptr [edi+0Bh], 1
and     byte ptr [esi+85h], 0FEh
mov     byte ptr [esi+86h], 0Ah
jmp     short loc_46CDFE

loc_46CDE2:
mov     cl, bh
dec     cl
mov     [esi+86h], cl
jmp     short loc_46CDFE

loc_46CDEE:
mov     byte ptr [esi+82h], 1
jmp     short loc_46CDFE

loc_46CDF7:
mov     ebx, edx
dec     ebx
mov     [esi+6Ch], bx

loc_46CDFE:
add     esp, 8

loc_46CE01:
pop     ebp

loc_46CE02:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46CB1D endp




sub_46CE08 proc near
push    ebx
push    edx
add     eax, 348h
mov     dx, [eax+68h]
cmp     dx, 800h
jle     short loc_46CE26
add     edx, 20h ; ' '
and     dh, 0Fh
mov     [eax+68h], dx
jmp     short loc_46CE33

loc_46CE26:
mov     word ptr [eax+68h], 0
or      byte ptr [eax+82h], 1

loc_46CE33:
mov     bx, [eax+6Ah]
cmp     bx, 800h
jle     short loc_46CE4C
mov     edx, ebx
add     edx, 20h ; ' '
and     dh, 0Fh
mov     [eax+6Ah], dx
jmp     short loc_46CE59

loc_46CE4C:
mov     word ptr [eax+6Ah], 0
or      byte ptr [eax+82h], 2

loc_46CE59:
cmp     byte ptr [eax+82h], 3
jnz     short loc_46CE70
mov     byte ptr [eax+82h], 0
mov     byte ptr [eax+81h], 2

loc_46CE70:
pop     edx
pop     ebx
retn
sub_46CE08 endp




sub_46CE73 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
add     eax, 348h
mov     [esp+20h+var_1C], eax
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     [esp+20h+var_20], eax
mov     edi, [esp+20h+var_1C]
lea     edi, [edi+5Ch]
mov     esi, eax
lea     esi, [esi+14h]
movsd
movsd
mov     edi, [esp+20h+var_1C]
lea     edi, [edi+4Ch]
mov     esi, eax
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, [esp+28h+var_1C]
add     edx, 4Ch ; 'L'
mov     esi, [esp+28h+var_1C]
add     esi, 5Ch ; '\'
mov     ecx, 0C00h
mov     eax, esi
call    sub_4DD4C5
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     ecx, 20h ; ' '
mov     edx, esi
call    sub_4DE552
mov     edx, eax
test    ax, ax
jnz     short loc_46CF1B
mov     eax, [esp+20h+var_20]
cmp     byte ptr [eax+9], 5
jz      short loc_46CF1B
mov     eax, [esp+20h+var_1C]
mov     byte ptr [eax+81h], 0
mov     byte ptr [ebp+0Dh], 0
mov     byte ptr [ebp+0Ah], 0
and     byte ptr [eax+85h], 0F7h
jmp     loc_46CDFE

loc_46CF1B:
mov     ax, [ebp+56h]
add     eax, edx
and     ah, 0Fh
mov     [ebp+56h], ax
jmp     loc_46CDFE
sub_46CE73 endp




sub_46CF2D proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
add     eax, 348h
mov     bx, [eax+7Ch]
test    bx, bx
jz      short loc_46CF4B
mov     ecx, ebx
dec     ecx
mov     [eax+7Ch], cx
pop     edx
pop     ecx
pop     ebx
retn

loc_46CF4B:
mov     ecx, ds:dword_5F8376+2
sar     ecx, 10h
mov     edx, [edx+14h]
sar     edx, 10h
cmp     ecx, edx
jg      short loc_46CF77
or      byte ptr [eax+85h], 2
mov     [eax+7Ch], bx
mov     byte ptr [eax+83h], 1
mov     byte ptr [eax+87h], 0

loc_46CF77:
pop     edx
pop     ecx
pop     ebx
retn
sub_46CF2D endp




sub_46CF7B proc near

var_38= dword ptr -38h
var_34= byte ptr -34h
var_24= dword ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
push    eax
add     eax, 348h
mov     [esp+38h+var_24], eax
mov     dl, [eax+87h]
cmp     dl, 5
jbe     short loc_46CFA3
mov     al, dl
sub     al, 6
mov     [esp+38h+var_1C], al
jmp     short loc_46CFA7

loc_46CFA3:
mov     [esp+38h+var_1C], dl

loc_46CFA7:
mov     eax, [esp+38h+var_24]
cmp     word ptr [eax+7Ch], 0
jnz     loc_46D17E
mov     [esp+38h+var_20], 1
mov     edx, [esp+38h+var_38]
add     edx, 14h
mov     eax, 1B3h
call    sub_4D8BC3

loc_46CFCB:
mov     eax, [esp+38h+var_24+1]
sar     eax, 18h
add     eax, eax
add     eax, [esp+38h+var_24]
cmp     word ptr [eax+64h], 0
jle     loc_46D15C
call    sub_4DE043
mov     ebp, eax
test    eax, eax
jz      loc_46D15C
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 4
cmp     [esp+38h+var_20], 0
jnz     short loc_46D019
mov     eax, [esp+19h]
sar     eax, 18h
mov     ax, ds:word_516FAA[eax*8]
jmp     short loc_46D034

loc_46D019:
mov     eax, [esp+19h]
sar     eax, 18h
mov     edx, 0FFFh
mov     cx, ds:word_516FAA[eax*8]
mov     eax, edx
sub     eax, ecx
and     ah, 0Fh

loc_46D034:
mov     edx, [esp+38h+var_38]
add     ax, [edx+56h]
and     ah, 0Fh
mov     [ebp+64h], ax
cmp     [esp+38h+var_20], 0
jnz     short loc_46D04D
mov     al, 1
jmp     short loc_46D04F

loc_46D04D:
mov     al, 3

loc_46D04F:
and     eax, 0FFh
shl     eax, 3
add     eax, [esp+38h+var_38]
mov     dx, [eax+190h]
mov     [ebp+14h], dx
mov     dx, [eax+194h]
mov     [ebp+18h], dx
mov     ax, [eax+192h]
mov     [ebp+16h], ax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
lea     esi, [ebp+14h]
lea     edx, [ebp+1Ch]
cmp     [esp+38h+var_20], 0
jnz     short loc_46D0BF
mov     eax, [esp+19h]
sar     eax, 18h
mov     ecx, ds:(dword_516FA4+2)[eax*8]
sar     ecx, 10h
jmp     short loc_46D0D3

loc_46D0BF:
mov     eax, [esp+19h]
sar     eax, 18h
mov     ecx, ds:(dword_516FA4+2)[eax*8]
sar     ecx, 10h
imul    ecx, -1

loc_46D0D3:
push    ecx
mov     ecx, ds:dword_516FA4[eax*8]
sar     ecx, 10h
push    ecx
mov     ecx, ds:(off_516FA0+2)[eax*8]
sar     ecx, 10h
mov     eax, [esp+40h+var_38]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     eax, esi
call    sub_4DD4C5
mov     eax, [ebp+62h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 600h
lea     esi, [esp+38h+var_34]
call    sub_4DD510
mov     edi, [esp+38h+var_24]
lea     edi, [edi+4Ch]
lea     esi, [esp+38h+var_34]
movsd
movsd
movsd
movsd
mov     edx, [esp+38h+var_24]
add     edx, 5Ch ; '\'
mov     eax, [esp+38h+var_24]
add     eax, 4Ch ; 'L'
call    sub_4DD57B
mov     eax, [esp+38h+var_24]
mov     ax, [eax+5Ch]
shl     eax, 8
mov     [ebp+44h], ax
mov     eax, [esp+38h+var_24]
mov     ax, [eax+60h]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+46h], 0

loc_46D15C:
mov     ch, [esp+38h+var_20]
dec     ch
mov     [esp+38h+var_20], ch
test    ch, ch
jge     loc_46CFCB
mov     eax, [esp+38h+var_24]
mov     word ptr [eax+7Ch], 6
inc     byte ptr [eax+87h]

loc_46D17E:
mov     eax, [esp+38h+var_24]
dec     word ptr [eax+7Ch]
cmp     byte ptr [eax+87h], 0Ch
jnz     short loc_46D19C
mov     word ptr [eax+7Ch], 0B4h
mov     byte ptr [eax+83h], 0

loc_46D19C:
add     esp, 20h
jmp     loc_46CE01
sub_46CF7B endp




sub_46D1A4 proc near

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
lea     ebp, [eax+348h]
mov     dl, [eax+0Ah]
test    dl, dl
jnz     loc_46D250
test    byte ptr [eax+0Dh], 4
jz      short loc_46D1E9
mov     ch, dl
inc     ch
mov     [eax+0Ah], ch
mov     word ptr [ebp+74h], 0Ch
mov     word ptr [ebp+76h], 8
mov     word ptr [ebp+6Ch], 0
mov     [ebp+80h], dl
jmp     loc_46CDFE

loc_46D1E9:
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
lea     edi, [ebp+5Ch]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [ebp+4Ch]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0
mov     ebx, [eax+54h]
sar     ebx, 10h
lea     edx, [ebp+4Ch]
add     ebp, 5Ch ; '\'
mov     ecx, 0C00h
mov     eax, ebp
call    sub_4DD4C5
mov     ebx, [esp+20h+var_20]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     eax, [esp+20h+var_20]
add     eax, 14h
mov     ecx, 20h ; ' '
mov     edx, ebp
call    sub_4DE552
mov     edx, [esp+20h+var_20]
add     ax, [edx+56h]
and     ah, 0Fh
mov     [edx+56h], ax
jmp     loc_46CDFE

loc_46D250:
test    byte ptr [eax+0Dh], 4
jz      loc_46CDFE
inc     word ptr [ebp+6Ch]
mov     bl, [ebp+80h]
cmp     bl, 4
jz      short loc_46D293
xor     eax, eax
mov     al, bl
add     eax, eax
mov     edx, ds:dword_516FDC[eax]
sar     edx, 10h
mov     ecx, [ebp+6Ah]
sar     ecx, 10h
cmp     ecx, edx
jnz     short loc_46D293
mov     ax, ds:word_516FD4[eax]
mov     [ebp+74h], ax
inc     byte ptr [ebp+80h]

loc_46D293:
mov     eax, [esp+20h+var_20]
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     [esp+20h+var_1C], eax
lea     edi, [ebp+5Ch]
mov     esi, eax
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [ebp+4Ch]
mov     esi, eax
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0
mov     ebx, [eax+54h]
sar     ebx, 10h
lea     edx, [ebp+4Ch]
lea     esi, [ebp+5Ch]
mov     ecx, 0C00h
mov     eax, esi
call    sub_4DD4C5
mov     ecx, [ebp+72h]
sar     ecx, 10h
mov     ebx, [esp+20h+var_20]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     eax, [esp+20h+var_20]
add     eax, 14h
mov     edx, esi
call    sub_4DE552
mov     edx, [esp+20h+var_20]
add     ax, [edx+56h]
and     ah, 0Fh
mov     [edx+56h], ax
mov     eax, [esp+20h+var_1C]
mov     eax, [eax+54h]
sar     eax, 10h
mov     edx, [edx+54h]
sar     edx, 10h
cmp     eax, edx
jnz     loc_46CDFE
mov     eax, [esp+20h+var_20]
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Ah], 0
jmp     loc_46CDFE
sub_46D1A4 endp




sub_46D329 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
lea     ebp, [eax+348h]
mov     [esp+24h+var_1C], 1
jmp     short loc_46D371

loc_46D340:
mov     dx, [esi+8]
mov     [ecx+1Ch], dx
mov     eax, [edi-4]
mov     dx, [esi+0Ah]
mov     [eax+1Eh], dx
mov     eax, [edi-4]
mov     dx, [esi+0Ch]
mov     [eax+20h], dx

loc_46D35E:
mov     dl, [esp+24h+var_1C]
inc     dl
mov     [esp+24h+var_1C], dl
cmp     dl, 3
jnb     loc_46D44D

loc_46D371:
movzx   esi, [esp+24h+var_1C]
mov     eax, esi
mov     ecx, [ebp+eax*8+20h]
and     ecx, 0FFFFFFh
jz      short loc_46D3B3
mov     ebx, esi
shl     ebx, 4
lea     edx, [ebx-8]
mov     eax, [esp+24h+var_24]
add     eax, 190h
add     edx, eax
mov     eax, 0A0h
call    sub_4D8BC3
mov     eax, esi
sub     [ebp+eax*2+62h], cx
add     ebx, [esp+24h+var_24]
mov     word ptr [ebx+18Eh], 7FFFh

loc_46D3B3:
xor     eax, eax
mov     al, [esp+24h+var_1C]
mov     edx, eax
cmp     word ptr [ebp+edx*2+62h], 0
jge     short loc_46D35E
mov     edi, eax
shl     edi, 2
add     edi, ebp
shl     eax, 3
lea     esi, [eax+ebp]
mov     ecx, [edi-4]
test    ecx, ecx
jnz     loc_46D340
push    ecx
mov     ebx, ds:dword_516FEC
push    ebx
mov     ecx, ds:dword_516FE8
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_516FE8+1
xor     edx, edx
mov     dl, byte ptr ds:dword_516FE8
mov     [esp+2Ch+var_20], edx
sub     eax, 8
lea     edx, [ebp+10h]
add     eax, edx
mov     edx, [esp+2Ch+var_20]
call    sub_43954B
mov     [edi-4], eax
call    sub_4DE13B
test    eax, eax
jz      loc_46D35E
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
mov     byte ptr [eax+0Dh], 1
mov     dx, [esi+8]
mov     [eax+48h], dx
mov     dx, [esi+0Ah]
mov     [eax+4Ah], dx
mov     dx, [esi+0Ch]
mov     [eax+4Ch], dx
jmp     loc_46D35E

loc_46D44D:
add     esp, 0Ch
jmp     loc_46CE01
sub_46D329 endp




sub_46D455 proc near

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
lea     ebp, [eax+348h]
call    sub_46D329
xor     ebx, ebx
mov     eax, [esp+20h+var_20]
mov     bl, [eax+9]
call    ds:funcs_46D472[ebx*4]
lea     edi, [ebp+10h]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+198h]
movsd
movsd
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4Ch], eax
mov     eax, [ebp+10h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+50h], eax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+54h], eax
push    0FFFFF968h
push    0FFFFF2C0h
mov     eax, [esp+28h+var_20]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     eax, [ebp+4Ch]
mov     [esp+28h+var_1C], eax
lea     eax, [ebp+10h]
xor     ecx, ecx
mov     edx, [esp+28h+var_1C]
call    sub_4DD4C5
lea     edi, [ebp+18h]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+1A8h]
movsd
movsd
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4Ch], eax
mov     eax, [ebp+18h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+50h], eax
mov     eax, [ebp+1Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+54h], eax
push    698h
push    0FFFFF2C0h
mov     eax, [esp+28h+var_20]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     eax, [ebp+18h]
xor     ecx, ecx
mov     edx, [esp+28h+var_1C]
call    sub_4DD4C5
mov     eax, [esp+20h+var_20]
call    sub_4DEB53
mov     ax, [ebp+68h]
mov     ds:word_560E1C, ax
mov     ax, [ebp+6Ah]
mov     ds:word_560E2C, ax
mov     eax, [esp+20h+var_20]
call    sub_4DF795
jmp     loc_46CDFE
sub_46D455 endp




sub_46D559 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+348h]
mov     byte ptr [eax+0ACh], 1
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
inc     byte ptr [ecx+9]
lea     edx, [ecx+14h]
mov     eax, 1B4h
call    sub_4D8BC3
test    byte ptr [esi+85h], 1
jz      short loc_46D59C
mov     eax, [esi+48h]
call    sub_4DE371

loc_46D59C:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46D559 endp




sub_46D5A1 proc near
test    byte ptr [eax+0A6h], 1
jz      short nullsub_64
mov     word ptr [eax+46h], 0
mov     word ptr [eax+4Eh], 40h ; '@'
inc     byte ptr [eax+9]
sub_46D5A1 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_64]



sub_46D5BA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+348h]
mov     ebx, [eax+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     eax, esi
call    sub_42DE56
test    ah, 30h
jz      loc_46CE02
lea     ecx, [esi+14h]
mov     edx, ecx
mov     eax, 1B5h
call    sub_4D8BC3
inc     byte ptr [esi+9]
mov     byte ptr [esi+0ACh], 2
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     ebx, 1388h
mov     edx, 7D0h
mov     eax, 0Fh
call    sub_42A70B
add     word ptr [esi+16h], 120h
mov     word ptr [edi+6Ch], 0
jmp     loc_46CE02
sub_46D5BA endp




sub_46D63D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edx, [eax+348h]
mov     eax, [eax+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     loc_46CE02
mov     bx, [edx+6Ch]
test    bx, bx
jnz     loc_46D6EF
mov     al, [edx+7Eh]
and     al, 7
xor     ebx, ebx
mov     bl, al
mov     eax, ebx
shl     eax, 2
add     eax, ebx
mov     bh, ds:byte_516FF0[eax*2]
lea     edi, [edx+5Ch]
lea     esi, unk_516FF2[eax*2]
movsd
movsd
call    sub_4DE13B
test    eax, eax
jz      short loc_46D6E7
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
mov     bl, [edx+7Eh]
and     bl, 3
mov     [eax+0Dh], bl
mov     bl, bh
and     ebx, 0FFh
mov     si, [ecx+ebx*8+190h]
mov     di, [edx+5Ch]
add     esi, edi
mov     [eax+48h], si
mov     si, [ecx+ebx*8+192h]
mov     di, [edx+5Eh]
add     esi, edi
mov     [eax+4Ah], si
mov     bx, [ecx+ebx*8+194h]
mov     si, [edx+60h]
add     ebx, esi
mov     [eax+4Ch], bx

loc_46D6E7:
mov     word ptr [edx+6Ch], 4
jmp     short loc_46D6F6

loc_46D6EF:
mov     esi, ebx
dec     esi
mov     [edx+6Ch], si

loc_46D6F6:
mov     eax, 52h ; 'R'
call    sub_47E888
test    eax, eax
jz      loc_46CE02
inc     byte ptr [ecx+9]
jmp     loc_46CE02
sub_46D63D endp




sub_46D710 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_46D71B[ecx*4]
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
lea     edi, [edx+5Ch]
lea     esi, [edx+54h]
movsd
movsd
cmp     byte ptr [edx+0Dh], 0
jnz     short loc_46D74E
mov     eax, edx
call    sub_4DEADD
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_46D74E:
mov     eax, edx
call    sub_4DFC52
mov     eax, edx
call    sub_4DF795
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_46D710 endp




sub_46D761 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46D7CF
or      byte ptr [ecx], 2
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+56h], 400h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
inc     byte ptr [ecx+0Dh]
inc     byte ptr [ecx+0Ah]
cmp     ds:byte_560BE4, 5
jnz     short loc_46D7CF
mov     byte ptr [ecx+9], 4
mov     byte ptr [ecx+0Ah], 0

loc_46D7CF:
pop     edx
pop     ecx
pop     ebx
retn
sub_46D761 endp




sub_46D7D3 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46D7F3
mov     word ptr [edx+16h], 0FF7Eh
mov     eax, edx
call    sub_4DEB53
mov     eax, edx
call    sub_4DF7CB
inc     byte ptr [edx+0Ah]

loc_46D7F3:
pop     edx
retn
sub_46D7D3 endp




sub_46D7F5 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46D815
mov     word ptr [edx+16h], 46h ; 'F'
mov     eax, edx
call    sub_4DEB53
mov     eax, edx
call    sub_4DF7CB
inc     byte ptr [edx+0Ah]

loc_46D815:
pop     edx
retn
sub_46D7F5 endp




sub_46D817 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
jnz     short loc_46D829
mov     [eax+0Dh], dl
mov     dh, dl
inc     dh
mov     [eax+0Ah], dh

loc_46D829:
pop     edx
retn
sub_46D817 endp




sub_46D82B proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46D846
mov     word ptr [eax+14h], 0F95Ch
mov     word ptr [eax+16h], 0FFECh
mov     word ptr [eax+18h], 0F60Ah
inc     byte ptr [eax+0Ah]

loc_46D846:
cmp     ds:dword_560BEC, 2Dh ; '-'
jnz     short locret_46D853
mov     byte ptr [eax+0Dh], 0

locret_46D853:
retn
sub_46D82B endp




sub_46D854 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46D873
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Dh]
inc     byte ptr [ecx+0Ah]

loc_46D873:
cmp     ds:dword_560BEC, 5
jnz     short loc_46D880
mov     byte ptr [ecx+0Dh], 0

loc_46D880:
pop     edx
pop     ecx
pop     ebx
retn
sub_46D854 endp




sub_46D884 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ebx, [eax+378h]
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
lea     edi, [edx+5Ch]
lea     esi, [edx+54h]
movsd
movsd
mov     word ptr [eax+15Eh], 0
xor     al, al

loc_46D8B6:
movsx   ecx, al
mov     word ptr [edx+ecx*8+196h], 4210h
inc     al
cmp     al, 8
jl      short loc_46D8B6
call    rand_
mov     [ebx+78h], ax
xor     ecx, ecx
mov     cl, [edx+8]
mov     eax, edx
call    ds:funcs_46D8D9[ecx*4]
jmp     loc_46E4AB
sub_46D884 endp




sub_46D8E5 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+378h]
mov     ah, [eax]
or      ah, 42h
mov     [esi], ah
mov     word ptr [esi+54h], 0
mov     word ptr [esi+58h], 0
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     dword ptr [esi+64h], 0
mov     dword ptr [esi+70h], 0
mov     dword ptr [esi+74h], 0
mov     dword ptr [esi+78h], offset unk_517058
lea     eax, [esi+3C4h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
mov     [esi+73h], al
xor     edx, edx
mov     dl, [esi+2]
mov     eax, ds:dword_55A10C
mov     eax, [eax+edx*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 6
mov     [esi+6Eh], ax
mov     [esi+0B0h], ax
mov     [esi+0B2h], ax
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Bh]
xor     ah, ah
shl     eax, 4
mov     [ecx+70h], ax
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Bh]
xor     ah, ah
shl     eax, 4
mov     [ecx+72h], ax
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0
mov     word ptr [esi+15Eh], 0
xor     al, al

loc_46D9D1:
movsx   edx, al
mov     word ptr [esi+edx*8+196h], 4210h
inc     al
cmp     al, 8
jl      short loc_46D9D1
or      byte ptr [ecx+7Bh], 4
mov     byte ptr [esi+0ACh], 3
mov     al, [esi+0ACh]
mov     [esi+0ADh], al
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, esi
call    sub_4DE9BA
mov     eax, esi
call    sub_4DF795
call    sub_4DDF54
mov     edx, eax
test    eax, eax
jz      short loc_46DA8C
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 40h ; '@'
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+5], 0
mov     bx, [esi+56h]
mov     [eax+56h], bx
mov     bl, [esi+1]
mov     [eax+0Ch], bl
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     bx, [esi+190h]
mov     [eax+14h], bx
mov     bx, [esi+192h]
mov     [eax+16h], bx
mov     bx, [esi+194h]
mov     [eax+18h], bx
mov     ebx, [eax+12h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+1Ch], ebx
mov     ebx, [eax+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+20h], ebx
mov     ebx, [eax+16h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+24h], ebx

loc_46DA8C:
mov     al, [edx+1]
mov     [esi+0Ch], al
mov     dword ptr [esi+78h], offset unk_517058
mov     word ptr [ecx+68h], 0
mov     word ptr [ecx+6Ah], 0
mov     byte ptr [ecx+7Ch], 14h
mov     byte ptr [ecx+7Eh], 0
mov     byte ptr [ecx+82h], 0
mov     word ptr [ecx+6Ch], 0
mov     word ptr [ecx+6Eh], 0
mov     byte ptr [ecx+7Fh], 0
mov     byte ptr [ecx+80h], 0Ch
mov     byte ptr [ecx+81h], 8
mov     dword ptr [ecx+2Ch], 0
mov     dword ptr [ecx+34h], 0
mov     dword ptr [ecx+3Ch], 0
mov     byte ptr [ecx+7Dh], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx], 0
mov     dword ptr [ecx+4], 0
mov     word ptr [ecx+74h], 0
mov     word ptr [ecx+6Ch], 0F0h
mov     word ptr [ecx+6Eh], 68h ; 'h'
push    2C786060h
mov     ecx, 60h ; '`'
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_436785
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46D8E5 endp




sub_46DB32 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
push    eax
lea     ebp, [eax+378h]
call    sub_46EAD2
mov     eax, [esp+24h+var_24]
cmp     byte ptr [eax+8], 3
jz      loc_46DF3B
test    byte ptr [ebp+7Bh], 4
jz      short loc_46DB5F
call    sub_46ED58

loc_46DB5F:
lea     eax, [ebp+4Ch]
mov     edx, [esp+24h+var_24]
call    sub_4E19CA
xor     ecx, ecx
mov     eax, [esp+24h+var_24]
mov     cl, [eax+9]
call    ds:funcs_46DB72[ecx*4]
mov     eax, [ebp+7Bh]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_46DB99
test    byte ptr [ebp+7Bh], 4
jz      short loc_46DB99
xor     ecx, ecx
mov     cl, [ebp+7Dh]
mov     eax, [esp+24h+var_24]
call    ds:funcs_46DB92[ecx*4]

loc_46DB99:
mov     eax, [esp+24h+var_24]
call    sub_4DEB53
mov     ax, [ebp+68h]
mov     ds:word_560E2E, ax
mov     ax, [ebp+6Ah]
mov     ds:word_560E46, ax
mov     eax, [esp+24h+var_24]
call    sub_4DF795
lea     edi, [ebp+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+190h]
movsd
movsd
push    0
push    0
add     word ptr [ebp+1Eh], 40h ; '@'
mov     eax, [esp+2Ch+var_24]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
lea     eax, [ebp+2Ch]
push    eax
xor     eax, eax
mov     ecx, [esp+34h+var_24]
mov     al, [ecx+1]
push    eax
lea     eax, [ebp+1Ch]
mov     [esp+38h+var_18], eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0B4h
call    sub_4E01FC
lea     edi, [ebp+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+198h]
movsd
movsd
push    80h
push    0
add     word ptr [ebp+1Eh], 14h
mov     eax, [esp+2Ch+var_24]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
lea     eax, [ebp+44h]
mov     [esp+30h+var_1C], eax
push    eax
xor     eax, eax
mov     ecx, [esp+34h+var_24]
mov     al, [ecx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A0h
mov     eax, [esp+38h+var_18]
call    sub_4E01FC
lea     edi, [ebp+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1A0h]
movsd
movsd
push    80h
push    0
add     word ptr [ebp+1Eh], 59h ; 'Y'
mov     eax, [esp+2Ch+var_24]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
mov     ecx, [esp+30h+var_1C]
push    ecx
xor     eax, eax
mov     ecx, [esp+34h+var_24]
mov     al, [ecx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A0h
mov     eax, [esp+38h+var_18]
call    sub_4E01FC
lea     edi, [ebp+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1B8h]
movsd
movsd
push    80h
push    0
add     word ptr [ebp+1Eh], 59h ; 'Y'
mov     eax, [esp+2Ch+var_24]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
mov     ebx, [esp+30h+var_1C]
push    ebx
xor     eax, eax
mov     ecx, [esp+34h+var_24]
mov     al, [ecx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A0h
mov     eax, [esp+38h+var_18]
call    sub_4E01FC
lea     edi, [ebp+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1A8h]
movsd
movsd
add     word ptr [ebp+1Eh], 0A0h
mov     eax, [ebp+1Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+0Ch], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+10h], eax
mov     eax, [ebp+1Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+14h], eax
push    0
push    0
mov     eax, [esp+2Ch+var_24]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     eax, [ebp+0Ch]
mov     [esp+2Ch+var_20], eax
mov     ecx, 2C0h
mov     edx, eax
mov     eax, [esp+2Ch+var_18]
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+2Ch+var_24]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
mov     esi, [esp+30h+var_1C]
push    esi
xor     eax, eax
mov     ecx, [esp+34h+var_24]
mov     al, [ecx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A3h
mov     eax, [esp+38h+var_18]
call    sub_4E01FC
lea     edi, [ebp+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1C0h]
movsd
movsd
add     word ptr [ebp+1Eh], 0A0h
mov     eax, [ebp+1Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+0Ch], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+10h], eax
mov     eax, [ebp+1Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+14h], eax
push    0
push    0
mov     eax, [esp+2Ch+var_24]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 2C0h
mov     edx, [esp+2Ch+var_20]
mov     eax, [esp+2Ch+var_18]
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+2Ch+var_24]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
mov     edi, [esp+30h+var_1C]
push    edi
xor     eax, eax
mov     ecx, [esp+34h+var_24]
mov     al, [ecx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A3h
mov     eax, [esp+38h+var_18]
call    sub_4E01FC
cmp     word ptr [ebp+70h], 0
jle     short loc_46DE7B
lea     edi, [ebp+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1B0h]
movsd
movsd
push    0
push    0
sub     word ptr [ebp+1Eh], 20h ; ' '
mov     eax, [esp+2Ch+var_24]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [ebp+34h]
push    eax
xor     eax, eax
mov     ecx, [esp+34h+var_24]
mov     al, [ecx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 24h ; '$'
mov     eax, [esp+38h+var_18]
call    sub_4E01FC

loc_46DE7B:
cmp     word ptr [ebp+72h], 0
jle     short loc_46DECB
lea     edi, [ebp+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1C8h]
movsd
movsd
push    0
push    0
sub     word ptr [ebp+1Eh], 20h ; ' '
mov     eax, [esp+2Ch+var_24]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [ebp+3Ch]
push    eax
xor     eax, eax
mov     ecx, [esp+34h+var_24]
mov     al, [ecx+1]
push    eax
lea     eax, [ebp+1Ch]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 24h ; '$'
call    sub_4E01FC

loc_46DECB:
mov     eax, [esp+24h+var_24]
test    byte ptr [eax+0A6h], 1
jnz     short loc_46DEDD
test    byte ptr [ebp+7Bh], 1
jz      short loc_46DF1C

loc_46DEDD:
and     byte ptr [ebp+7Bh], 0FDh
mov     ecx, [esp+24h+var_24]
add     ecx, 14h
test    byte ptr [ebp+7Bh], 1
jz      short loc_46DEF8
cmp     byte ptr ds:dword_77E954+3, 0
jnz     short loc_46DF18
jmp     short loc_46DF04

loc_46DEF8:
mov     edx, ecx
mov     eax, 1B0h
call    sub_4D8BC3

loc_46DF04:
mov     ebx, 1388h
mov     edx, 7D0h
mov     eax, 0Fh
call    sub_42A70B

loc_46DF18:
or      byte ptr [ebp+7Bh], 1

loc_46DF1C:
mov     eax, [esp+24h+var_24]
test    byte ptr [eax+0A6h], 4
jz      short loc_46DF48
mov     bl, [ebp+7Bh]
and     bl, 0FCh
mov     [ebp+7Bh], bl
mov     bh, bl
or      bh, 2
mov     [ebp+7Bh], bh
jmp     short loc_46DF48

loc_46DF3B:
call    sub_4DEB53
mov     eax, [esp+24h+var_24]
call    sub_4DF795

loc_46DF48:
mov     eax, [esp+24h+var_24]
test    byte ptr [eax], 2
jz      short loc_46DF64
mov     ecx, 1
mov     ebx, 200h
mov     edx, 12Ch
call    sub_4ED88B

loc_46DF64:
mov     dword ptr [ebp+2Ch], 0
mov     dword ptr [ebp+34h], 0
mov     dword ptr [ebp+3Ch], 0
mov     dword ptr [ebp+44h], 0

loc_46DF80:
add     esp, 10h
jmp     loc_46E4AA
sub_46DB32 endp



; Attributes: thunk

sub_46DF88 proc near
jmp     sub_4DE2F6
sub_46DF88 endp




sub_46DF8D proc near

var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
mov     ebp, offset byte_5F8364
lea     esi, [eax+378h]
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
mov     eax, [eax+14h]
sar     eax, 10h
cmp     edx, eax
jl      loc_46E109
push    800h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     edx, [edi+54h]
sar     edx, 10h
lea     eax, [edi+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      loc_46E109
cmp     byte ptr [esi+7Eh], 0
jnz     short loc_46DFFD
mov     [esp+1Ch+var_1C], 4
jmp     short loc_46E001

loc_46DFFD:
mov     [esp+1Ch+var_1C], 7

loc_46E001:
mov     eax, [esi+7Bh]
sar     eax, 18h
add     eax, eax
add     eax, esi
cmp     word ptr [eax+70h], 0
jle     short loc_46E05C
mov     ebx, [eax+66h]
sar     ebx, 10h
mov     eax, [edi+54h]
sar     eax, 10h
add     ebx, eax
and     ebx, 0FFFh
xor     eax, eax
mov     al, [esp+1Ch+var_1C]
mov     edx, eax
shl     edx, 3
lea     eax, [edi+190h]
add     eax, edx
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     edx, eax
mov     eax, [esi+7Bh]
sar     eax, 18h
add     dx, [esi+eax*2+68h]
and     dh, 0Fh
mov     [esi+eax*2+68h], dx

loc_46E05C:
mov     bl, [esi+7Ch]
test    bl, bl
jnz     loc_46E102
mov     eax, [esi+7Bh]
sar     eax, 18h
cmp     word ptr [esi+eax*2+70h], 0
jg      short loc_46E07D

loc_46E075:
inc     byte ptr [esi+7Dh]
jmp     loc_46E109

loc_46E07D:
cmp     dword ptr [edi+80h], offset unk_800000
jnb     loc_46E109
xor     eax, eax
mov     al, [esp+1Ch+var_1C]
mov     edx, [edi+eax*8+18Eh]
sar     edx, 10h
shl     edx, 10h
mov     [esi+0Ch], edx
mov     edx, [edi+eax*8+190h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+10h], edx
mov     eax, [edi+eax*8+192h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+14h], eax
push    800h
mov     eax, [ebp+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     eax, [esi+7Bh]
sar     eax, 18h
mov     eax, [esi+eax*2+66h]
sar     eax, 10h
mov     edx, [edi+54h]
sar     edx, 10h
add     edx, eax
and     edx, 0FFFh
lea     eax, [esi+0Ch]
mov     ebx, 10h
call    sub_4DE639
test    eax, eax
jz      short loc_46E109
jmp     loc_46E075

loc_46E102:
mov     bh, bl
dec     bh
mov     [esi+7Ch], bh

loc_46E109:
