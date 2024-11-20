loc_4AE290:
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF184
fild    word ptr [ecx+4Eh]
fmul    ds:dbl_50A3B0
fst     dword ptr [ecx+38h]
fst     dword ptr [ecx+28h]
fstp    dword ptr [ecx+18h]
inc     byte ptr [ecx+0Bh]
xor     eax, eax
mov     al, [ecx+0Bh]
shl     eax, 7
call    sub_4EF50D
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4ADFEE endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_76]


; Attributes: thunk

sub_4AE2C1 proc near
jmp     sub_4DE3EA
sub_4AE2C1 endp




sub_4AE2C6 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE2CC[edx*4]
pop     edx
retn
sub_4AE2C6 endp




sub_4AE2D5 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
lea     eax, [ecx+14h]
mov     dword ptr [eax+3Ch], 2808080h
mov     edx, [eax]
mov     edx, [edx+70h]
mov     edx, [edx+10h]
mov     [eax+40h], edx
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h
pop     edx
pop     ecx
retn
sub_4AE2D5 endp




sub_4AE308 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ecx
push    edx
sub     esp, 10h
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AE31A
inc     byte ptr [eax+8]

loc_4AE31A:
lea     ecx, [eax+14h]
mov     edx, 1115h
mov     [esp+18h+var_10], edx
mov     [esp+18h+var_14], edx
mov     [esp+18h+var_18], edx
add     eax, 18h
mov     edx, esp
call    sub_4EF689
sub     dword ptr [ecx+3Ch], 80808h
add     esp, 10h
pop     edx
pop     ecx
sub_4AE308 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_77]



sub_4AE344 proc near
mov     byte ptr [eax], 0
jmp     sub_4DE3EA
sub_4AE344 endp




sub_4AE34C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE352[edx*4]
pop     edx
retn
sub_4AE34C endp




sub_4AE35B proc near
push    edx
mov     edx, eax
mov     ah, [eax]
or      ah, 22h
mov     [edx], ah
mov     dword ptr [edx+14h], 3D48002Eh
mov     dword ptr [edx+18h], 2E808080h
mov     al, ds:byte_530770
mov     [edx+22h], al
mov     al, ds:byte_530771
mov     [edx+23h], al
xor     ah, ah
mov     al, ds:byte_530782
mov     [edx+24h], ax
call    rand_
xor     ah, ah
and     al, 3Fh
mov     [edx+26h], ax
mov     al, ds:byte_53077C
mov     [edx+0Bh], al
mov     [edx+0Ah], ah
mov     [edx+9], ah
inc     byte ptr [edx+8]
cmp     byte ptr [edx+0Ch], 0
jz      short loc_4AE3BF
add     edx, 1Ch
mov     eax, 9Bh
call    sub_4D8BC3

loc_4AE3BF:
pop     edx
retn
sub_4AE35B endp




sub_4AE3C1 proc near
push    ebx
push    edx
inc     byte ptr [eax+9]
mov     dh, [eax+0Bh]
dec     dh
mov     [eax+0Bh], dh
jnz     short loc_4AE417
mov     bh, [eax+0Ah]
inc     bh
mov     [eax+0Ah], bh
cmp     bh, 6
jb      short loc_4AE3E5
call    sub_4DE3EA
pop     edx
pop     ebx
retn

loc_4AE3E5:
xor     edx, edx
mov     dl, bh
mov     bl, ds:byte_53077C[edx]
mov     [eax+0Bh], bl
mov     bl, ds:byte_530770[edx*2]
mov     [eax+22h], bl
mov     dl, ds:byte_530771[edx*2]
mov     [eax+23h], dl
xor     edx, edx
mov     dl, [eax+9]
mov     dl, ds:byte_530782[edx]
xor     dh, dh
mov     [eax+24h], dx

loc_4AE417:
pop     edx
pop     ebx
retn
sub_4AE3C1 endp




sub_4AE41A proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE420[edx*4]
pop     edx
retn
sub_4AE41A endp

align 2
jpt_4AE466 dd offset def_4AE466 ; jump table for switch statement
dd offset loc_4AE475
dd offset loc_4AE48A
dd offset loc_4AE49F



sub_4AE43A proc near
push    edx
or      byte ptr [eax], 2
or      byte ptr [eax+6], 20h
mov     dword ptr [eax+14h], 3D48002Eh
mov     dword ptr [eax+18h], 2E404040h
mov     byte ptr [eax+22h], 20h ; ' '
mov     byte ptr [eax+23h], 0
mov     dl, [eax+3]
cmp     dl, 3           ; switch 4 cases
ja      short def_4AE466 ; jumptable 004AE466 default case, case 0
and     edx, 0FFh
jmp     jpt_4AE466[edx*4] ; switch jump

def_4AE466:             ; jumptable 004AE466 default case, case 0
mov     word ptr [eax+24h], 0Dh
jmp     short loc_4AE4A5

loc_4AE475:             ; jumptable 004AE466 case 1
mov     word ptr [eax+24h], 20h ; ' '
mov     dl, ds:byte_530798
mov     [eax+0Bh], dl
mov     byte ptr [eax+3], 1
jmp     short loc_4AE4B2

loc_4AE48A:             ; jumptable 004AE466 case 2
mov     word ptr [eax+24h], 40h ; '@'
mov     dl, ds:byte_53079C
mov     [eax+0Bh], dl
mov     byte ptr [eax+3], 2
jmp     short loc_4AE4B2

loc_4AE49F:             ; jumptable 004AE466 case 3
mov     word ptr [eax+24h], 80h

loc_4AE4A5:
mov     dl, ds:byte_530794
mov     [eax+0Bh], dl
mov     byte ptr [eax+3], 0

loc_4AE4B2:
mov     byte ptr [eax+0Ah], 0
inc     byte ptr [eax+8]
pop     edx
retn
sub_4AE43A endp




sub_4AE4BB proc near
push    edx
mov     dl, [eax+3]
cmp     dl, 1
jb      short loc_4AE4C8
jbe     short loc_4AE4DD
jmp     short loc_4AE4E3

loc_4AE4C8:
test    dl, dl
jnz     short loc_4AE4E3
dec     word ptr [eax+1Eh]
inc     word ptr [eax+24h]

loc_4AE4D4:
sub     dword ptr [eax+18h], 40404h
jmp     short loc_4AE4F4

loc_4AE4DD:
dec     word ptr [eax+24h]
jmp     short loc_4AE4D4

loc_4AE4E3:
sub     word ptr [eax+1Eh], 5
add     word ptr [eax+24h], 6
add     dword ptr [eax+18h], 40404h

loc_4AE4F4:
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AE514
xor     edx, edx
mov     dl, [eax+3]
mov     dl, ds:byte_530795[edx*4]
mov     [eax+0Bh], dl
inc     byte ptr [eax+8]
mov     byte ptr [eax+22h], 40h ; '@'

loc_4AE514:
pop     edx
retn
sub_4AE4BB endp




sub_4AE516 proc near
push    edx
mov     dl, [eax+3]
cmp     dl, 1
jb      short loc_4AE523
jbe     short loc_4AE531
jmp     short loc_4AE537

loc_4AE523:
test    dl, dl
jnz     short loc_4AE537
dec     word ptr [eax+1Eh]
inc     word ptr [eax+24h]
jmp     short loc_4AE541

loc_4AE531:
dec     word ptr [eax+24h]
jmp     short loc_4AE541

loc_4AE537:
sub     word ptr [eax+1Eh], 5
sub     word ptr [eax+24h], 2

loc_4AE541:
sub     dword ptr [eax+18h], 40404h
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AE568
xor     edx, edx
mov     dl, [eax+3]
mov     dl, ds:byte_530796[edx*4]
mov     [eax+0Bh], dl
inc     byte ptr [eax+8]
mov     byte ptr [eax+22h], 60h ; '`'

loc_4AE568:
pop     edx
retn
sub_4AE516 endp




sub_4AE56A proc near
push    edx
mov     dl, [eax+3]
cmp     dl, 1
jb      short loc_4AE577
jbe     short loc_4AE586
jmp     short loc_4AE58C

loc_4AE577:
test    dl, dl
jnz     short loc_4AE58C
sub     word ptr [eax+1Eh], 2
inc     word ptr [eax+24h]
jmp     short loc_4AE596

loc_4AE586:
dec     word ptr [eax+24h]
jmp     short loc_4AE596

loc_4AE58C:
sub     word ptr [eax+1Eh], 5
sub     word ptr [eax+24h], 2

loc_4AE596:
sub     dword ptr [eax+18h], 40404h
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AE5BD
xor     edx, edx
mov     dl, [eax+3]
mov     dl, ds:byte_530797[edx*4]
mov     [eax+0Bh], dl
inc     byte ptr [eax+8]
mov     byte ptr [eax+22h], 80h

loc_4AE5BD:
pop     edx
retn
sub_4AE56A endp




sub_4AE5BF proc near
push    edx
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AE5D1
mov     [eax], dl
call    sub_4DE3EA

loc_4AE5D1:
pop     edx
retn
sub_4AE5BF endp




sub_4AE5D3 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE5D9[edx*4]
pop     edx
retn
sub_4AE5D3 endp




sub_4AE5E2 proc near
push    ecx
push    edx
mov     edx, eax
mov     ah, [eax]
or      ah, 22h
mov     [edx], ah
mov     dword ptr [edx+14h], 3D48002Eh
mov     dword ptr [edx+18h], 2E208080h
mov     al, ds:byte_5307B4
mov     [edx+22h], al
mov     al, ds:byte_5307B5
mov     [edx+23h], al
cmp     byte ptr [edx+3], 0
jnz     short loc_4AE615
mov     byte ptr [edx+0Ch], 0Ch

loc_4AE615:
mov     eax, [edx+9]
sar     eax, 18h
xor     ecx, ecx
mov     cl, ds:byte_5307C6
imul    eax, ecx
sar     eax, 4
mov     [edx+24h], ax
call    rand_
xor     ah, ah
and     al, 3Fh
mov     [edx+26h], ax
mov     al, ds:byte_5307C0
mov     [edx+0Bh], al
mov     [edx+0Ah], ah
mov     [edx+9], ah
inc     byte ptr [edx+8]
pop     edx
pop     ecx
retn
sub_4AE5E2 endp




sub_4AE64E proc near
push    ebx
push    ecx
push    edx
inc     byte ptr [eax+9]
mov     dh, [eax+0Bh]
dec     dh
mov     [eax+0Bh], dh
jnz     short loc_4AE6B2
mov     bh, [eax+0Ah]
inc     bh
mov     [eax+0Ah], bh
cmp     bh, 6
jb      short loc_4AE674
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn

loc_4AE674:
xor     edx, edx
mov     dl, bh
mov     bl, ds:byte_5307C0[edx]
mov     [eax+0Bh], bl
mov     bl, ds:byte_5307B4[edx*2]
mov     [eax+22h], bl
mov     dl, ds:byte_5307B5[edx*2]
mov     [eax+23h], dl
xor     edx, edx
mov     dl, [eax+9]
xor     ecx, ecx
mov     cl, ds:byte_5307C6[edx]
mov     edx, [eax+9]
sar     edx, 18h
imul    edx, ecx
sar     edx, 4
mov     [eax+24h], dx

loc_4AE6B2:
pop     edx
pop     ecx
pop     ebx
retn
sub_4AE64E endp




sub_4AE6B6 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE6BC[edx*4]
pop     edx
retn
sub_4AE6B6 endp




sub_4AE6C5 proc near
push    ebx
push    ecx
push    edx
or      byte ptr [eax], 22h
xor     ecx, ecx
mov     cl, [eax+3]
cmp     ecx, 10h
jb      short loc_4AE6EA
mov     word ptr [eax+24h], 40h ; '@'
mov     dh, [eax+3]
sub     dh, 10h
mov     [eax+3], dh
xor     ecx, ecx
mov     cl, dh
jmp     short loc_4AE6FE

loc_4AE6EA:
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_5307E2[edx*4]
xor     dh, dh
mov     [eax+24h], dx

loc_4AE6FE:
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     ecx, ds:dword_5307D8[edx*4]
mov     [eax+14h], ecx
mov     ecx, ds:dword_5307DC[edx*4]
mov     [eax+18h], ecx
mov     bl, ds:byte_5307E0[edx*4]
mov     [eax+22h], bl
mov     bl, ds:byte_5307E1[edx*4]
mov     [eax+23h], bl
mov     byte ptr [eax+0Ah], 0
mov     dl, ds:byte_5307E3[edx*4]
mov     [eax+8], dl
pop     edx
pop     ecx
pop     ebx
retn
sub_4AE6C5 endp




sub_4AE73F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+28h]
cmp     dword ptr [eax+40h], 0FFFFh
jnz     short loc_4AE759
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn

loc_4AE759:
mov     byte ptr [eax+22h], 0A0h
mov     byte ptr [eax+23h], 40h ; '@'
mov     ah, [eax+8]
inc     ah
mov     [ecx+8], ah
cmp     word ptr [ecx+24h], 40h ; '@'
jb      short loc_4AE7CD
mov     edx, [ebx+6]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 8
sbb     eax, edx
sar     eax, 8
mov     edx, [ecx+1Ah]
sar     edx, 10h
sub     edx, eax
mov     [ecx+1Ch], dx
mov     edx, [ebx+8]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 8
sbb     eax, edx
sar     eax, 8
mov     edx, [ecx+1Ch]
sar     edx, 10h
sub     edx, eax
mov     [ecx+1Eh], dx
mov     edx, [ebx+0Ah]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 8
sbb     eax, edx
sar     eax, 8
mov     edx, [ecx+1Eh]
sar     edx, 10h
sub     edx, eax
mov     [ecx+20h], dx

loc_4AE7CD:
shr     word ptr [ecx+24h], 1
pop     edx
pop     ecx
pop     ebx
retn
sub_4AE73F endp




sub_4AE7D5 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+28h]
call    rand_
xor     ah, ah
and     al, 3Fh
mov     [edx+26h], ax
inc     byte ptr [edx+8]
mov     byte ptr [edx+0Ah], 10h
mov     eax, [edx+40h]
call    sub_4EF008
neg     eax
shl     eax, 3
sar     eax, 0Ch
mov     [ecx+8], ax
call    rand_
xor     ah, ah
and     al, 3
sub     eax, 14h
mov     [ecx+0Ah], ax
mov     eax, [edx+40h]
call    sub_4EF003
neg     eax
shl     eax, 3
sar     eax, 0Ch
mov     [ecx+0Ch], ax
mov     word ptr [ecx+4], 0
mov     ax, [ecx+4]
mov     [ecx], ax
mov     word ptr [ecx+2], 5
pop     edx
pop     ecx
retn
sub_4AE7D5 endp




sub_4AE83E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
xor     ecx, ecx
mov     cl, [eax+1]
add     eax, 1Ch
xor     ebx, ebx
mov     edx, eax
call    sub_42CE61
test    eax, eax
jnz     short loc_4AE8CB
mov     dword ptr [esi+14h], 3D48002Eh
mov     al, [esi+0Ah]
shl     eax, 3
mov     edx, eax
or      edx, 2E000000h
mov     ecx, eax
shl     ecx, 8
or      ecx, edx
shl     eax, 10h
or      ecx, eax
mov     [esi+18h], ecx
lea     eax, [esi+28h]
mov     cl, [esi+0Ah]
mov     dl, cl
dec     dl
mov     [esi+0Ah], dl
test    cl, cl
jz      short loc_4AE8CB
mov     cx, [eax]
mov     dx, [eax+8]
add     edx, ecx
mov     [eax+8], dx
add     [esi+1Ch], dx
mov     cx, [eax+2]
mov     di, [eax+0Ah]
add     edi, ecx
mov     [eax+0Ah], di
add     [esi+1Eh], di
mov     cx, [eax+4]
mov     bx, [eax+0Ch]
add     ebx, ecx
mov     [eax+0Ch], bx
add     [esi+20h], bx
add     word ptr [esi+26h], 8
jmp     short loc_4AE8CE

loc_4AE8CB:
inc     byte ptr [esi+8]

loc_4AE8CE:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AE83E endp



; Attributes: thunk

sub_4AE8D4 proc near
jmp     sub_4DE3EA
sub_4AE8D4 endp




sub_4AE8D9 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:dword_5307DC[edx*4]
mov     [eax+22h], dl
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:(dword_5307DC+2)[edx*4]
mov     [eax+23h], dl
inc     byte ptr [eax+8]
lea     edx, [eax+1Ch]
mov     eax, 121h
call    sub_4D8BC3
pop     edx
retn
sub_4AE8D9 endp




sub_4AE90A proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:dword_5307DC[edx*4]
mov     [eax+22h], dl
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:(dword_5307DC+2)[edx*4]
mov     [eax+23h], dl
inc     byte ptr [eax+8]
pop     edx
retn
sub_4AE90A endp




sub_4AE92E proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:dword_5307DC[edx*4]
mov     [eax+22h], dl
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:(dword_5307DC+2)[edx*4]
mov     [eax+23h], dl
mov     byte ptr [eax+8], 4
pop     edx
retn
sub_4AE92E endp




sub_4AE953 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE959[edx*4]
pop     edx
retn
sub_4AE953 endp




sub_4AE962 proc near
push    ecx
push    edx
mov     ecx, eax
call    rand_
test    al, 1
jz      short loc_4AE972
or      byte ptr [ecx], 2

loc_4AE972:
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
inc     byte ptr [ecx+8]
lea     edx, [ecx+48h]
mov     eax, 9Bh
call    sub_4D8BC3
mov     eax, ecx
call    sub_4AEBBB
mov     eax, ecx
call    sub_4AEC4A
pop     edx
pop     ecx
retn
sub_4AE962 endp




; int __fastcall sub_4AE99D(int, int)
sub_4AE99D proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= byte ptr -20h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
push    edi             ; float
push    ebp             ; int
sub     esp, 10h
mov     ebp, eax
lea     edi, [esp+28h+var_20]
lea     esi, [ebp+48h]
movsd
movsd
mov     ax, [eax+42h]
mov     dx, [ebp+3Ch]
add     edx, eax
mov     [ebp+3Ch], dx
add     [ebp+48h], dx
mov     ax, [ebp+44h]
mov     cx, [ebp+3Eh]
add     ecx, eax
mov     [ebp+3Eh], cx
add     [ebp+4Ah], cx
mov     ax, [ebp+46h]
mov     di, [ebp+40h]
add     edi, eax
mov     [ebp+40h], di
add     [ebp+4Ch], di
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
mov     eax, ebp
call    sub_4AEBBB
xor     edx, edx
mov     dl, [ebp+0Ah]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_5308D8
add     ecx, eax
mov     ebx, 1
lea     edx, [esp+28h+var_20]
mov     eax, esp
call    sub_42DF6E
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      loc_4AEAB4
mov     eax, [esp+28h+var_28]
mov     [ebp+48h], ax
mov     eax, [esp+28h+var_28+2]
mov     [ebp+4Ah], ax
mov     eax, [esp+28h+var_24]
mov     [ebp+4Ch], ax
test    dh, 10h
jz      short loc_4AEAAA
mov     eax, [ebp+3Ch]
sar     eax, 10h
sar     eax, 1
sar     word ptr [ebp+4Eh], 1
cmp     eax, 1
jg      short loc_4AEAA6
mov     word ptr [ebp+3Eh], 0
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+0Bh], 1
mov     dword ptr [ebp+34h], 0
mov     eax, [ebp+34h]
mov     [ebp+30h], eax
mov     eax, [ebp+30h]
mov     [ebp+2Ch], eax
mov     eax, [ebp+2Ch]
mov     [ebp+24h], eax
mov     eax, [ebp+24h]
mov     [ebp+20h], eax
mov     eax, [ebp+20h]
mov     [ebp+1Ch], eax
fild    word ptr [ebp+4Eh]
fmul    ds:dbl_50A3B8
fst     dword ptr [ebp+38h]
fst     dword ptr [ebp+28h]
fstp    dword ptr [ebp+18h]
lea     edx, [ebp+18h]
mov     eax, [ebp+0Ah]
sar     eax, 10h
call    sub_4EF50D

loc_4AEAA6:
sar     word ptr [ebp+3Eh], 1

loc_4AEAAA:
lea     eax, [ebp+3Ch]
mov     edx, ecx
call    sub_42D90F

loc_4AEAB4:
mov     eax, ebp
call    sub_4AEC4A
add     esp, 10h
pop     ebp

loc_4AEABF:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AE99D endp




sub_4AEAC5 proc near
push    edx
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AEAD4
add     byte ptr [eax+8], 2

loc_4AEAD4:
pop     edx
retn
sub_4AEAC5 endp




sub_4AEAD6 proc near
push    edx
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AEAE4
inc     byte ptr [eax+8]

loc_4AEAE4:
pop     edx
retn
sub_4AEAD6 endp



; Attributes: thunk

sub_4AEAE6 proc near
jmp     sub_4DE3EA
sub_4AEAE6 endp




sub_4AEAEB proc near
inc     byte ptr [eax+8]
mov     word ptr [eax+3Eh], 0FFD8h
mov     word ptr [eax+44h], 5
retn
sub_4AEAEB endp




; int __fastcall sub_4AEAFB(int, int)
sub_4AEAFB proc near

var_C= dword ptr -0Ch

push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
mov     dword ptr [eax+34h], 0
mov     edx, [eax+34h]
mov     [eax+30h], edx
mov     edx, [eax+30h]
mov     [eax+2Ch], edx
mov     edx, [eax+2Ch]
mov     [eax+24h], edx
mov     edx, [eax+24h]
mov     [eax+20h], edx
mov     edx, [eax+20h]
mov     [eax+1Ch], edx
mov     eax, [eax+4Ch]
sar     eax, 10h
sar     eax, 1
mov     [esp+0Ch+var_C], eax ; int
fild    [esp+0Ch+var_C]
fmul    ds:dbl_50A3C0
fst     dword ptr [ecx+38h]
fstp    dword ptr [ecx+18h]
fild    word ptr [ecx+4Eh]
fmul    ds:dbl_50A3C0
fstp    dword ptr [ecx+28h]
lea     edx, [ecx+18h]
mov     eax, 180h
call    sub_4EF50D
mov     ax, [ecx+44h]
mov     dx, [ecx+3Eh]
add     edx, eax
mov     [ecx+3Eh], dx
add     [ecx+4Ah], dx
xor     eax, eax
mov     al, [ecx+0Ah]
mov     ax, ds:word_5308CC[eax*2]
mov     edx, eax
and     edx, 0FFFFh
sar     edx, 3
mov     eax, [ecx+4Ch]
sar     eax, 10h
sub     eax, edx
mov     [ecx+4Eh], ax
cmp     word ptr [ecx+3Eh], 0
jl      short loc_4AEB9A
inc     byte ptr [ecx+8]

loc_4AEB9A:
add     esp, 4
pop     edx
pop     ecx
retn
sub_4AEAFB endp




sub_4AEBA0 proc near
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+48h]
mov     eax, 0CFh
call    sub_4D8BC3
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
retn
sub_4AEBA0 endp




sub_4AEBBB proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 48h
mov     ebx, eax
mov     ecx, 0Ch
mov     edi, esp
lea     esi, [ebx+18h]
rep movsd
call    rand_
mov     edx, eax
xor     ah, ah
and     al, 7Fh
add     eax, 80h
mov     cx, [ebx+0Eh]
add     ecx, eax        ; int
mov     [ebx+0Eh], cx
mov     [esp+5Ch+var_1C], cx
xor     dh, dh
and     dl, 3Fh
add     edx, 40h ; '@'
mov     si, [ebx+0Ch]
add     esi, edx
mov     [ebx+0Ch], si
mov     [esp+5Ch+var_1A], si
xor     edi, edi
mov     [esp+5Ch+var_18], di
mov     edx, esp
lea     eax, [esp+5Ch+var_1C]
call    sub_4EF5F7
mov     eax, [ebx+4Ch]
sar     eax, 10h
mov     [esp+38h], eax
mov     [esp+34h], eax
mov     [esp+30h], eax
lea     edx, [esp+30h]
mov     eax, esp
call    sub_4EF689
mov     ecx, 0Ch
lea     edi, [ebx+18h]
mov     esi, esp
rep movsd
add     esp, 48h
jmp     loc_4AEABF
sub_4AEBBB endp




sub_4AEC4A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
xor     edx, edx
mov     dl, [eax+0Ah]
mov     dx, ds:word_530920[edx*2]
and     edx, 0FFFFh
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, ds:dword_5F8376
sar     ebx, 10h
sub     ebx, ecx
add     ebx, edx
lea     ecx, [edx+edx]
lea     esi, [ebx+32h]
lea     ebx, [ecx+64h]
cmp     esi, ebx
ja      short loc_4AECBE
mov     esi, [eax+4Ah]
sar     esi, 10h
mov     edi, ds:dword_5F837A
sar     edi, 10h
sub     edi, esi
add     edi, edx
add     edi, 32h ; '2'
cmp     edi, ebx
ja      short loc_4AECBE
mov     ebx, [eax+48h]
sar     ebx, 10h
mov     esi, ds:dword_5F8376+2
sar     esi, 10h
sub     esi, ebx
lea     ebx, [esi+edx]
add     ecx, 96h
cmp     ebx, ecx
ja      short loc_4AECBE
mov     byte ptr [eax+8], 5

loc_4AECBE:
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, ds:dword_5F8A6A
sar     ebx, 10h
sub     ebx, ecx
lea     ecx, [ebx+edx]
lea     ebx, [edx+edx]
lea     esi, [ecx+32h]
lea     ecx, [ebx+64h]
cmp     esi, ecx
ja      loc_4AEABF
mov     esi, [eax+4Ah]
sar     esi, 10h
mov     edi, ds:dword_5F8A6E
sar     edi, 10h
sub     edi, esi
lea     esi, [edi+edx+32h]
cmp     esi, ecx
ja      loc_4AEABF
mov     esi, [eax+48h]
sar     esi, 10h
mov     ecx, ds:dword_5F8A6A+2
sar     ecx, 10h
sub     ecx, esi
add     edx, ecx
add     ebx, 96h
cmp     edx, ebx
ja      loc_4AEABF
mov     byte ptr [eax+8], 5
jmp     loc_4AEABF
sub_4AEC4A endp

db 90h
jpt_4AEF1D dd offset loc_4AEF24 ; jump table for switch statement
dd offset loc_4AEF2D
dd offset loc_4AEF36
dd offset loc_4AEF3F



sub_4AED3B proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 1Ch
push    eax
mov     ebp, ebx
mov     [esp+2Ch+var_18], ecx
cmp     edx, 10h
jbe     short loc_4AED57
mov     [esp+2Ch+var_20], 10h
jmp     short loc_4AED5B

loc_4AED57:
mov     [esp+2Ch+var_20], edx

loc_4AED5B:
cmp     [esp+2Ch+var_18], 5
jbe     short loc_4AED6A
mov     [esp+2Ch+var_18], 5

loc_4AED6A:
mov     eax, [esp+2Ch+var_20]
mov     ax, ds:word_53092A[eax*2]
and     eax, 0FFFFh
mov     [esp+2Ch+var_1C], eax
call    rand_
mov     ebx, eax
and     ebx, 0FFFh
xor     esi, esi
mov     [esp+2Ch+var_14], esi

loc_4AED92:
mov     eax, [esp+2Ch+var_14]
cmp     eax, [esp+2Ch+var_20]
jnb     loc_4AEF53
call    sub_4DE13B
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      def_4AEF1D      ; jumptable 004AEF1D default case
mov     byte ptr [eax], 5
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+2], 86h
call    rand_
mov     esi, eax
and     esi, 0FFh
mov     eax, ebp
shr     eax, 18h
cmp     eax, esi
jbe     short loc_4AEDDF
mov     dword ptr [edx+54h], offset unk_55CD10
mov     byte ptr [edx+9], 0
jmp     short loc_4AEE45

loc_4AEDDF:
mov     edi, ebp
shr     edi, 10h
and     edi, 0FFh
add     eax, edi
cmp     eax, esi
jbe     short loc_4AEDFD
mov     dword ptr [edx+54h], offset unk_55CD40
mov     byte ptr [edx+9], 1
jmp     short loc_4AEE45

loc_4AEDFD:
mov     edi, ebp
shr     edi, 8
and     edi, 0FFh
add     eax, edi
cmp     eax, esi
jbe     short loc_4AEE1B
mov     dword ptr [edx+54h], offset unk_55CD70
mov     byte ptr [edx+9], 2
jmp     short loc_4AEE45

loc_4AEE1B:
mov     edi, ebp
and     edi, 0FFh
add     eax, edi
cmp     eax, esi
jbe     short loc_4AEE36
mov     dword ptr [edx+54h], offset unk_55CDA0
mov     byte ptr [edx+9], 3
jmp     short loc_4AEE45

loc_4AEE36:
mov     byte ptr [edx+3], 1
mov     dword ptr [edx+54h], offset unk_55CDD0
mov     byte ptr [edx+9], 4

loc_4AEE45:
lea     edi, [ecx+48h]
mov     esi, [esp+2Ch+var_2C]
movsd
movsd
call    rand_
mov     [esp+2Ch+var_28], eax
mov     esi, [esp+2Ch+var_18]
shl     esi, 4
mov     edx, eax
and     edx, 0Fh
mov     dl, ds:byte_53086C[edx+esi]
and     edx, 0FFh
mov     [esp+2Ch+var_24], edx
mov     dl, byte ptr [esp+2Ch+var_24]
mov     [ecx+0Ah], dl
mov     edx, [esp+2Ch+var_24]
mov     si, ds:word_5308CC[edx*2]
mov     [ecx+4Eh], si
mov     esi, [esp+2Ch+var_28]
and     esi, 0FFFh
mov     [ecx+0Ch], si
mov     esi, eax
shr     esi, 4
mov     [ecx+0Eh], si
mov     edi, ds:dword_53094A[edx*2]
sar     edi, 10h
mov     esi, eax
and     esi, 3
add     edi, esi
mov     eax, ebx
call    sub_4EF003
imul    eax, edi
shr     eax, 0Ch
mov     [ecx+3Ch], ax
mov     eax, [esp+2Ch+var_28]
xor     ah, ah
and     al, 3
mov     [esp+2Ch+var_10], eax
mov     ax, ds:word_530958[edx*2]
mov     edi, [esp+2Ch+var_10]
add     eax, edi
mov     [ecx+3Eh], ax
mov     eax, ds:dword_53094A[edx*2]
sar     eax, 10h
add     esi, eax
mov     eax, ebx
call    sub_4EF008
imul    eax, esi
shr     eax, 0Ch
mov     [ecx+40h], ax
mov     word ptr [ecx+42h], 0
mov     word ptr [ecx+44h], 5
mov     word ptr [ecx+46h], 0
call    rand_
and     eax, 3
cmp     eax, 3          ; switch 4 cases
ja      short def_4AEF1D ; jumptable 004AEF1D default case
jmp     jpt_4AEF1D[eax*4] ; switch jump

loc_4AEF24:             ; jumptable 004AEF1D case 0
mov     dword ptr [ecx+50h], offset unk_606060
jmp     short def_4AEF1D ; jumptable 004AEF1D default case

loc_4AEF2D:             ; jumptable 004AEF1D case 1
mov     dword ptr [ecx+50h], 8080h
jmp     short def_4AEF1D ; jumptable 004AEF1D default case

loc_4AEF36:             ; jumptable 004AEF1D case 2
mov     dword ptr [ecx+50h], 20h ; ' '
jmp     short def_4AEF1D ; jumptable 004AEF1D default case

loc_4AEF3F:             ; jumptable 004AEF1D case 3
mov     dword ptr [ecx+50h], 200000h

def_4AEF1D:             ; jumptable 004AEF1D default case
inc     [esp+2Ch+var_14]
add     ebx, [esp+2Ch+var_1C]
jmp     loc_4AED92

loc_4AEF53:
add     esp, 20h
pop     ebp
pop     edi
pop     esi
retn
sub_4AED3B endp

mov     al, [eax+1]
and     eax, 0FFh
jmp     sub_4DD420



sub_4AEF67 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edx, eax
xor     eax, eax
mov     ax, ds:word_77EAB6
cmp     eax, ds:dword_55CEE4
jz      short loc_4AEF84
call    sub_4AF8A2

loc_4AEF84:
xor     ecx, ecx
mov     cl, [edx+8]
mov     eax, edx
call    ds:funcs_4AEF8B[ecx*4]
cmp     byte ptr [edx+3], 0
jz      loc_4AF2B1
test    byte ptr [edx], 2
jz      loc_4AF2B1
cmp     byte ptr [edx+8], 5
jnb     loc_4AF2B1
mov     cl, [edx+9]
inc     cl
mov     [edx+9], cl
cmp     cl, 3
jbe     short loc_4AEFC0
mov     byte ptr [edx+9], 0

loc_4AEFC0:
xor     eax, eax
mov     al, [edx+9]
xor     edi, edi
mov     di, ds:word_530BC0[eax*8]
xor     ebx, ebx
mov     bx, ds:word_530BC2[eax*8]
movzx   ebp, ds:word_530BC4[eax*8]
xor     esi, esi
mov     si, ds:word_530BC6[eax*8]
call    sub_4EE133
mov     dword ptr [eax+4], 2C808080h
mov     ecx, [edx+48h]
mov     [eax+8], ecx
mov     ecx, [edx+4Ch]
mov     [eax+10h], ecx
or      edi, 3D080000h
mov     [eax+0Ch], edi
or      ebx, 0E0000h
mov     [eax+14h], ebx
mov     [eax+1Ch], ebp
mov     [eax+24h], esi
mov     dl, [edx+0Ah]
and     edx, 0FFh
mov     dl, ds:byte_530C58[edx]
and     edx, 0FFh
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 0
jmp     loc_4AF2B1
sub_4AEF67 endp




sub_4AF03F proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
inc     byte ptr [ecx+8]
lea     edx, [ecx+48h]
mov     eax, 9Bh
call    sub_4D8BC3
cmp     byte ptr [ecx+3], 0
jz      short loc_4AF073
mov     eax, ecx
call    sub_4AF3C3
jmp     short loc_4AF07A

loc_4AF073:
mov     eax, ecx
call    sub_4AF452

loc_4AF07A:
mov     eax, ecx
call    sub_4AF4A7
mov     byte ptr [ecx+0Bh], 0FFh
pop     edx
pop     ecx
retn
sub_4AF03F endp




; int __fastcall sub_4AF088(int, int)
sub_4AF088 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= byte ptr -20h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
push    edi             ; float
push    ebp             ; int
sub     esp, 10h
mov     ebp, eax
lea     edi, [esp+28h+var_20]
lea     esi, [ebp+48h]
movsd
movsd
mov     ax, [eax+42h]
mov     dx, [ebp+3Ch]
add     edx, eax        ; int
mov     [ebp+3Ch], dx
add     [ebp+48h], dx
mov     ax, [ebp+44h]
mov     cx, [ebp+3Eh]
add     ecx, eax        ; int
mov     [ebp+3Eh], cx
add     [ebp+4Ah], cx
mov     ax, [ebp+46h]
mov     di, [ebp+40h]
add     edi, eax
mov     [ebp+40h], di
add     [ebp+4Ch], di
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
cmp     byte ptr [ebp+3], 0
jz      short loc_4AF0E8
mov     eax, ebp
call    sub_4AF3C3
jmp     short loc_4AF0EF

loc_4AF0E8:
mov     eax, ebp
call    sub_4AF452

loc_4AF0EF:
xor     edx, edx
mov     dl, [ebp+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     ecx, offset unk_530C5C
add     ecx, eax
xor     edx, edx
mov     dl, [ebp+0Ah]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     ecx, eax
mov     ebx, 1
lea     edx, [esp+28h+var_20]
mov     eax, esp
call    sub_42DF6E
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      loc_4AF1C5
mov     eax, [esp+28h+var_28]
mov     [ebp+48h], ax
mov     eax, [esp+28h+var_28+2]
mov     [ebp+4Ah], ax
mov     eax, [esp+28h+var_24]
mov     [ebp+4Ch], ax
test    dh, 10h
jnz     short loc_4AF158
mov     dl, [ebp+0Bh]
dec     dl
mov     [ebp+0Bh], dl
jnz     short loc_4AF1BB

loc_4AF158:
mov     eax, [ebp+3Ch]
sar     eax, 10h
sar     eax, 1
cmp     eax, 1
jg      short loc_4AF1B7
mov     word ptr [ebp+3Eh], 0
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+0Bh], 96h
mov     dword ptr [ebp+34h], 0
mov     eax, [ebp+34h]
mov     [ebp+30h], eax
mov     eax, [ebp+30h]
mov     [ebp+2Ch], eax
mov     eax, [ebp+2Ch]
mov     [ebp+24h], eax
mov     eax, [ebp+24h]
mov     [ebp+20h], eax
mov     eax, [ebp+20h]
mov     [ebp+1Ch], eax
fild    word ptr [ebp+4Eh]
fmul    ds:dbl_50A3C8
fst     dword ptr [ebp+38h]
fst     dword ptr [ebp+28h]
fstp    dword ptr [ebp+18h]
lea     edx, [ebp+18h]
mov     eax, [ebp+0Ah]
sar     eax, 10h
call    sub_4EF50D

loc_4AF1B7:
sar     word ptr [ebp+3Eh], 1

loc_4AF1BB:
lea     eax, [ebp+3Ch]
mov     edx, ecx
call    sub_42D90F

loc_4AF1C5:
mov     eax, ebp
call    sub_4AF4A7
add     esp, 10h
jmp     loc_4AF2B1
sub_4AF088 endp




sub_4AF1D4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     ah, [eax+0Bh]
dec     ah
mov     [ebp+0Bh], ah
jnz     short loc_4AF1F8
inc     byte ptr [ebp+8]
call    rand_
and     al, 7
add     al, 1Eh
mov     [ebp+0Bh], al

loc_4AF1F8:
xor     edx, edx
mov     dl, [ebp+3]
mov     ecx, edx
shl     ecx, 2
sub     ecx, edx
shl     ecx, 4
xor     edx, edx
mov     dl, [ebp+0Ah]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
lea     edx, [ecx+eax]
mov     esi, ds:dword_530C64[edx]
sar     esi, 10h
mov     ebx, [ebp+3Ch]
sar     ebx, 10h
mov     edx, offset unk_530C5C
add     edx, ecx
add     edx, eax
lea     eax, [ebp+48h]
mov     ecx, 0FFFFh
call    sub_42C5B7
dec     eax
sub     eax, esi
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
mov     edx, [ebp+48h]
sar     edx, 10h
cmp     edx, eax
jge     short loc_4AF264
mov     ax, [ebp+44h]
mov     dx, [ebp+3Eh]
add     edx, eax
mov     [ebp+3Eh], dx
add     [ebp+4Ah], dx

loc_4AF264:
xor     edx, edx
mov     dl, [ebp+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     ecx, offset unk_530C5C
add     ecx, eax
xor     edx, edx
mov     dl, [ebp+0Ah]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     ecx, eax
lea     eax, [ebp+48h]
mov     ebx, 1
mov     edx, esp
call    sub_42DF6E
mov     eax, ebp
call    sub_4AF4A7
cmp     byte ptr [ebp+3], 0
jnz     short loc_4AF2AE
mov     eax, ebp
call    sub_4AF452

loc_4AF2AE:
add     esp, 8

loc_4AF2B1:
pop     ebp

loc_4AF2B2:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AF1D4 endp




sub_4AF2B8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     ah, [eax]
xor     ah, 2
mov     [ebp+0], ah
mov     dl, [ebp+0Bh]
dec     dl
mov     [ebp+0Bh], dl
jnz     loc_4AF1F8
inc     byte ptr [ebp+8]
jmp     loc_4AF1F8
sub_4AF2B8 endp



; Attributes: thunk

sub_4AF2E1 proc near
jmp     sub_4DE3EA
sub_4AF2E1 endp




sub_4AF2E6 proc near
inc     byte ptr [eax+8]
mov     word ptr [eax+3Eh], 0FFD8h
mov     word ptr [eax+44h], 5
retn
sub_4AF2E6 endp




; int __fastcall sub_4AF2F6(int, int)
sub_4AF2F6 proc near

var_C= dword ptr -0Ch

push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
mov     dword ptr [eax+34h], 0
mov     edx, [eax+34h]
mov     [eax+30h], edx
mov     edx, [eax+30h]
mov     [eax+2Ch], edx
mov     edx, [eax+2Ch]
mov     [eax+24h], edx
mov     edx, [eax+24h]
mov     [eax+20h], edx
mov     edx, [eax+20h]
mov     [eax+1Ch], edx
mov     eax, [eax+4Ch]
sar     eax, 10h
sar     eax, 1
mov     [esp+0Ch+var_C], eax ; int
fild    [esp+0Ch+var_C]
fmul    ds:dbl_50A3D0
fst     dword ptr [ecx+38h]
fstp    dword ptr [ecx+18h]
fild    word ptr [ecx+4Eh]
fmul    ds:dbl_50A3D0
fstp    dword ptr [ecx+28h]
lea     edx, [ecx+18h]
mov     eax, 180h
call    sub_4EF50D
mov     ax, [ecx+44h]
mov     dx, [ecx+3Eh]
add     edx, eax
mov     [ecx+3Eh], dx
add     [ecx+4Ah], dx
xor     eax, eax
mov     al, [ecx+0Ah]
mov     ax, ds:word_530C50[eax*2]
mov     edx, eax
and     edx, 0FFFFh
sar     edx, 3
mov     eax, [ecx+4Ch]
sar     eax, 10h
sub     eax, edx
mov     [ecx+4Eh], ax
cmp     word ptr [ecx+3Eh], 0
jl      short loc_4AF395
inc     byte ptr [ecx+8]

loc_4AF395:
add     esp, 4
pop     edx
pop     ecx
retn
sub_4AF2F6 endp




sub_4AF39B proc near
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+48h]
cmp     byte ptr [eax+3], 0
jz      short loc_4AF3AF
mov     eax, 9Eh
jmp     short loc_4AF3B4

loc_4AF3AF:
mov     eax, 9Dh

loc_4AF3B4:
call    sub_4D8BC3
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
retn
sub_4AF39B endp




sub_4AF3C3 proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 48h
mov     ebx, eax
mov     ecx, 0Ch
mov     edi, esp
lea     esi, [ebx+18h]
rep movsd
call    rand_
mov     edx, eax
xor     ah, ah
and     al, 7Fh
add     eax, 80h
mov     cx, [ebx+0Eh]
add     ecx, eax        ; int
mov     [ebx+0Eh], cx
mov     [esp+5Ch+var_1C], cx
xor     dh, dh
and     dl, 3Fh
add     edx, 40h ; '@'
mov     si, [ebx+0Ch]
add     esi, edx
mov     [ebx+0Ch], si
mov     [esp+5Ch+var_1A], si
xor     edi, edi
mov     [esp+5Ch+var_18], di
mov     edx, esp
lea     eax, [esp+5Ch+var_1C]
call    sub_4EF5F7
mov     eax, [ebx+4Ch]
sar     eax, 10h
mov     [esp+38h], eax
mov     [esp+34h], eax
mov     [esp+30h], eax
lea     edx, [esp+30h]
mov     eax, esp
call    sub_4EF689
mov     ecx, 0Ch
lea     edi, [ebx+18h]
mov     esi, esp
rep movsd
add     esp, 48h
jmp     loc_4AF2B2
sub_4AF3C3 endp




; int __fastcall sub_4AF452(int, int)
sub_4AF452 proc near
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     dword ptr [eax+34h], 0
mov     edx, [eax+34h]
mov     [eax+30h], edx
mov     edx, [eax+30h]
mov     [eax+2Ch], edx
mov     edx, [eax+2Ch]
mov     [eax+24h], edx
mov     edx, [eax+24h]
mov     [eax+20h], edx
mov     edx, [eax+20h]
mov     [eax+1Ch], edx
fild    word ptr [ecx+4Eh]
fmul    ds:dbl_50A3D8
fstp    dword ptr [eax+38h]
mov     edx, [ecx+38h]
mov     [eax+28h], edx
mov     edx, [eax+28h]
mov     [eax+18h], edx
lea     edx, [eax+18h]
mov     eax, [eax+0Ah]
sar     eax, 10h
call    sub_4EF50D
inc     byte ptr [ecx+0Dh]
pop     edx
pop     ecx
retn
sub_4AF452 endp




sub_4AF4A7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
xor     ecx, ecx
mov     cl, [eax+0Ah]
xor     edx, edx
mov     dl, [eax+3]
add     ecx, ecx
mov     dx, ds:word_530CBC[ecx+edx*8]
and     edx, 0FFFFh
mov     ebx, [eax+46h]
sar     ebx, 10h
mov     esi, ds:dword_5F8376
sar     esi, 10h
sub     esi, ebx
add     esi, edx
lea     ebx, [edx+edx]
lea     edi, [esi+32h]
lea     esi, [ebx+64h]
cmp     edi, esi
ja      loc_4AF2B1
mov     edi, [eax+4Ah]
sar     edi, 10h
mov     ebp, ds:dword_5F837A
sar     ebp, 10h
sub     ebp, edi
lea     edi, [edx+ebp+32h]
cmp     edi, esi
ja      loc_4AF2B1
mov     esi, [eax+48h]
sar     esi, 10h
mov     edi, ds:dword_5F8376+2
sar     edi, 10h
sub     edi, esi
add     edx, edi
add     ebx, 96h
cmp     edx, ebx
ja      loc_4AF2B1
mov     byte ptr [eax+8], 5
cmp     byte ptr [eax+3], 0
jnz     short loc_4AF559
mov     eax, ds:dword_77E7DC
sar     eax, 18h
shl     eax, 4
mov     ax, ds:word_530CFC[ecx+eax]
and     eax, 0FFFFh
xor     ebx, ebx
xor     edx, edx
call    sub_4B6217
jmp     loc_4AF2B1

loc_4AF559:
mov     eax, ds:dword_77E7DC
sar     eax, 18h
shl     eax, 4
mov     ax, ds:word_530D04[ecx+eax]
and     eax, 0FFFFh
xor     edx, edx
call    sub_4B6268
jmp     loc_4AF2B1
sub_4AF4A7 endp




sub_4AF57D proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
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
push    eax
mov     eax, edx
and     eax, 0FFh
mov     ecx, edx
shr     ecx, 8
and     ecx, 0FFh
mov     [esp+38h+var_2C], ecx
mov     ecx, edx
shr     ecx, 10h
and     ecx, 0FFh
mov     [esp+38h+var_30], ecx
shr     edx, 18h
mov     [esp+38h+var_28], edx
cmp     eax, 10h
jbe     short loc_4AF5C1
mov     [esp+38h+var_20], 10h
jmp     short loc_4AF5C5

loc_4AF5C1:
mov     [esp+38h+var_20], eax

loc_4AF5C5:
mov     eax, [esp+38h+var_20]
mov     ax, ds:word_530CCA[eax*2]
and     eax, 0FFFFh
mov     [esp+38h+var_24], eax
call    rand_
mov     ecx, eax
and     ecx, 0FFFh
xor     ebp, ebp

loc_4AF5E9:
cmp     ebp, [esp+38h+var_20]
jnb     loc_4AF74A
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_4AF740
mov     byte ptr [eax], 15h
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+2], 87h
call    rand_
mov     byte ptr [edx+9], 0
lea     edi, [edx+48h]
mov     esi, [esp+38h+var_38]
movsd
movsd
sub     word ptr [edx+4Ah], 14h
call    rand_
mov     esi, eax
mov     [esp+38h+var_1C], eax
mov     eax, [esp+38h+var_2C]
shl     eax, 4
mov     ebx, esi
and     ebx, 0Fh
mov     bl, ds:byte_530BE0[ebx+eax]
and     ebx, 0FFh
cmp     ebx, 5
jb      short loc_4AF658
mov     eax, edx
call    sub_4DE3EA
jmp     loc_4AF740

loc_4AF658:
mov     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 2
mov     edi, offset dword_55CE94
add     edi, eax
mov     [edx+54h], edi
mov     [edx+0Ah], bl
mov     ax, ds:word_530C50[ebx*2]
mov     [edx+4Eh], ax
mov     eax, [esp+38h+var_1C]
and     ah, 0Fh
mov     [edx+0Ch], ax
mov     eax, esi
shr     eax, 4
mov     [edx+0Eh], ax
mov     eax, ds:dword_530CEA[ebx*2]
sar     eax, 10h
and     esi, 3
add     eax, esi
mov     [esp+38h+var_34], eax
mov     eax, ecx
call    sub_4EF003
imul    eax, [esp+38h+var_34]
shr     eax, 0Ch
mov     [edx+3Ch], ax
mov     eax, [esp+38h+var_1C]
xor     ah, ah
and     al, 3
mov     [esp+38h+var_18], eax
mov     ax, ds:word_530CF4[ebx*2]
mov     edi, [esp+38h+var_18]
add     eax, edi
mov     [edx+3Eh], ax
mov     eax, ds:dword_530CEA[ebx*2]
sar     eax, 10h
add     esi, eax
mov     eax, ecx
call    sub_4EF008
imul    eax, esi
shr     eax, 0Ch
mov     [edx+40h], ax
mov     word ptr [edx+42h], 0
mov     word ptr [edx+44h], 5
mov     word ptr [edx+46h], 0
mov     dword ptr [edx+50h], 2808080h
mov     dword ptr [edx+34h], 0
mov     eax, [edx+34h]
mov     [edx+30h], eax
mov     eax, [edx+30h]
mov     [edx+2Ch], eax
mov     eax, [edx+2Ch]
mov     [edx+24h], eax
mov     eax, [edx+24h]
mov     [edx+20h], eax
mov     eax, [edx+20h]
mov     [edx+1Ch], eax
fild    word ptr [edx+4Eh]
fmul    ds:dbl_50A3E0
fst     dword ptr [edx+38h]
fst     dword ptr [edx+28h]
fstp    dword ptr [edx+18h]

loc_4AF740:
inc     ebp
add     ecx, [esp+38h+var_24]
jmp     loc_4AF5E9

loc_4AF74A:
mov     esi, [esp+38h+var_30]
cmp     esi, 10h
jbe     short loc_4AF75D
mov     [esp+38h+var_20], 10h
jmp     short loc_4AF761

loc_4AF75D:
mov     [esp+38h+var_20], esi

loc_4AF761:
mov     eax, [esp+38h+var_20]
mov     ax, ds:word_530CCA[eax*2]
and     eax, 0FFFFh
mov     [esp+38h+var_24], eax
add     ecx, 800h
and     ecx, 0FFFh
xor     ebp, ebp

loc_4AF784:
cmp     ebp, [esp+38h+var_20]
jnb     loc_4AF899
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_4AF88F
mov     byte ptr [eax], 19h
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+2], 87h
call    rand_
mov     dword ptr [edx+54h], offset unk_55CE34
mov     byte ptr [edx+9], 0
lea     edi, [edx+48h]
mov     esi, [esp+38h+var_38]
movsd
movsd
call    rand_
mov     [esp+38h+var_1C], eax
mov     ebx, [esp+38h+var_28]
shl     ebx, 4
mov     esi, eax
and     esi, 0Fh
mov     bl, ds:byte_530BE0[esi+ebx]
and     ebx, 0FFh
cmp     ebx, 5
jb      short loc_4AF7F3
mov     eax, edx
call    sub_4DE3EA
jmp     loc_4AF88F

loc_4AF7F3:
mov     [edx+0Ah], bl
mov     si, ds:word_530C50[ebx*2]
mov     [edx+4Eh], si
mov     esi, [esp+38h+var_1C]
and     esi, 0FFFh
mov     [edx+0Ch], si
mov     esi, eax
shr     esi, 4
mov     [edx+0Eh], si
mov     edi, ds:dword_530CEA[ebx*2]
sar     edi, 10h
mov     esi, eax
and     esi, 3
add     edi, esi
mov     eax, ecx
call    sub_4EF003
imul    eax, edi
shr     eax, 0Ch
mov     [edx+3Ch], ax
mov     eax, [esp+38h+var_1C]
xor     ah, ah
and     al, 3
mov     [esp+38h+var_18], eax
mov     ax, ds:word_530CF4[ebx*2]
mov     edi, [esp+38h+var_18]
add     eax, edi
mov     [edx+3Eh], ax
mov     eax, ds:dword_530CEA[ebx*2]
sar     eax, 10h
add     esi, eax
mov     eax, ecx
call    sub_4EF008
imul    eax, esi
shr     eax, 0Ch
mov     [edx+40h], ax
mov     word ptr [edx+42h], 0
mov     word ptr [edx+44h], 5
mov     word ptr [edx+46h], 0
mov     dword ptr [edx+50h], 2202020h

loc_4AF88F:
inc     ebp
add     ecx, [esp+38h+var_24]
jmp     loc_4AF784

loc_4AF899:
add     esp, 24h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4AF57D endp




sub_4AF8A2 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
xor     eax, eax
mov     ax, ds:word_77EAB6
mov     ds:dword_55CEE4, eax
mov     esi, eax
mov     edx, eax
and     edx, 1Fh
mov     eax, ds:dword_530990[edx*4]
mov     ds:dword_55CE94, eax
lea     eax, [esi+0Ah]
and     eax, 1Fh
mov     ecx, ds:dword_530990[eax*4]
mov     ds:dword_55CE98, ecx
lea     ebx, [esi+14h]
and     ebx, 1Fh
shl     ebx, 2
mov     ecx, ds:dword_530990[ebx]
mov     ds:dword_55CE9C, ecx
lea     ecx, [esi+1Eh]
and     ecx, 1Fh
mov     edi, ds:dword_530990[ecx*4]
mov     ds:dword_55CEA0, edi
add     esi, 28h ; '('
and     esi, 1Fh
mov     edi, ds:dword_530990[esi*4]
mov     ds:dword_55CEA4, edi
mov     edi, ds:dword_530A10[edx*4]
mov     ds:dword_55CEA8, edi
mov     edi, ds:dword_530A10[eax*4]
mov     ds:dword_55CEAC, edi
mov     edi, ds:dword_530A10[ebx]
mov     ds:dword_55CEB0, edi
mov     edi, ds:dword_530A10[ecx*4]
mov     ds:dword_55CEB4, edi
mov     edi, ds:dword_530A10[esi*4]
mov     ds:dword_55CEB8, edi
mov     edi, ds:dword_530A90[edx*4]
mov     ds:dword_55CEBC, edi
mov     edi, ds:dword_530A90[eax*4]
mov     ds:dword_55CEC0, edi
mov     edi, ds:dword_530A90[ebx]
mov     ds:dword_55CEC4, edi
mov     edi, ds:dword_530A90[ecx*4]
mov     ds:dword_55CEC8, edi
mov     edi, ds:dword_530A90[esi*4]
mov     ds:dword_55CECC, edi
mov     edx, ds:dword_530B10[edx*4]
mov     ds:dword_55CED0, edx
mov     eax, ds:dword_530B10[eax*4]
mov     ds:dword_55CED4, eax
mov     eax, ds:dword_530B10[ebx]
mov     ds:dword_55CED8, eax
mov     eax, ds:dword_530B10[ecx*4]
mov     ds:dword_55CEDC, eax
mov     eax, ds:dword_530B10[esi*4]
mov     ds:dword_55CEE0, eax
mov     eax, offset unk_55CE34
xor     ecx, ecx

loc_4AF9D8:
mov     ebx, ds:dword_530B90[ecx*4]
mov     [eax], ebx
mov     [eax+4], ebx
mov     [eax+8], ebx
mov     [eax+0Ch], ebx
inc     ecx
add     eax, 10h
cmp     ecx, 6
jb      short loc_4AF9D8
jmp     loc_4AF2B2
sub_4AF8A2 endp




sub_4AF9F8 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
xor     eax, eax
mov     al, [ecx+1]
call    sub_4DD420
cmp     eax, 40h ; '@'
jb      short loc_4AFA20
jbe     short loc_4AFA28
cmp     eax, 60h ; '`'
jb      short loc_4AFA6D
jbe     short loc_4AFA42
cmp     eax, 0E0h
jz      short loc_4AFA56
pop     ecx
pop     ebx
retn

loc_4AFA20:
cmp     eax, 20h ; ' '
jz      short loc_4AFA35
pop     ecx
pop     ebx
retn

loc_4AFA28:
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
jmp     short loc_4AFA61

loc_4AFA35:
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
jmp     short loc_4AFA61

loc_4AFA42:
xor     eax, eax
mov     al, [ecx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A110
mov     eax, [edx+eax]
jmp     short loc_4AFA64

loc_4AFA56:
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A114

loc_4AFA61:
mov     eax, [edx+eax*4]

loc_4AFA64:
mov     edx, [eax]
mov     eax, ebx
call    sub_4AF57D

loc_4AFA6D:
pop     ecx
pop     ebx
retn
sub_4AF9F8 endp




sub_4AFA70 proc near
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
xor     eax, eax
mov     al, [ecx+1]
call    sub_4DD420
mov     edx, ebx
shl     edx, 4
cmp     eax, 40h ; '@'
jb      short loc_4AFA9D
jbe     short loc_4AFAA5
cmp     eax, 60h ; '`'
jb      short loc_4AFAE5
jbe     short loc_4AFABF
cmp     eax, 0E0h
jz      short loc_4AFACC
pop     esi
pop     ecx
retn

loc_4AFA9D:
cmp     eax, 20h ; ' '
jz      short loc_4AFAB2
pop     esi
pop     ecx
retn

loc_4AFAA5:
xor     eax, eax
mov     al, [ecx+2]
mov     ecx, ds:dword_55A108
jmp     short loc_4AFAD7

loc_4AFAB2:
xor     eax, eax
mov     al, [ecx+2]
mov     ecx, ds:dword_55A10C
jmp     short loc_4AFAD7

loc_4AFABF:
xor     eax, eax
mov     al, [ecx+2]
mov     ecx, ds:dword_55A110
jmp     short loc_4AFAD7

loc_4AFACC:
xor     eax, eax
mov     al, [ecx+2]
mov     ecx, ds:dword_55A114

loc_4AFAD7:
mov     eax, [ecx+eax*4]
add     eax, edx
mov     edx, [eax]
mov     eax, esi
call    sub_4AF57D

loc_4AFAE5:
pop     esi
pop     ecx
retn
sub_4AFA70 endp




sub_4AFAE8 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AFAEE[edx*4]
pop     edx
retn
sub_4AFAE8 endp

align 4
jpt_4AFB8E dd offset def_4AFB8E ; jump table for switch statement
dd offset def_4AFB8E
dd offset loc_4AFBA2
dd offset def_4AFB8E
dd offset loc_4AFBA9
dd offset loc_4AFBB0
dd offset loc_4AFBBD



sub_4AFB14 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     ecx, eax
cmp     byte ptr [eax+3], 0FFh
jnz     short loc_4AFB63
mov     byte ptr [ecx], 3
mov     eax, [ecx+48h]
mov     [ecx+1Ch], eax
mov     ax, [ecx+4Ch]
mov     [ecx+20h], ax
mov     dword ptr [ecx+18h], 2C808080h
mov     byte ptr [ecx+8], 3
mov     eax, ecx
call    sub_4B0065
lea     eax, [ecx+48h]
mov     ecx, 1
mov     ebx, 40404040h
mov     edx, 3
call    sub_4AED3B
jmp     loc_4AFCEC

loc_4AFB63:
cmp     byte ptr [ecx+3], 0FEh
jnz     short loc_4AFB73
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+3], 0C2h
jmp     short loc_4AFB77

loc_4AFB73:
mov     byte ptr [ecx+0Ch], 1

loc_4AFB77:
or      byte ptr [ecx], 2
lea     eax, [ecx+54h]
mov     dl, [ecx+3]
and     dl, 0Fh
cmp     dl, 6           ; switch 7 cases
ja      short def_4AFB8E ; jumptable 004AFB8E default case, cases 0,1,3
and     edx, 0FFh
jmp     jpt_4AFB8E[edx*4] ; switch jump

def_4AFB8E:             ; jumptable 004AFB8E default case, cases 0,1,3
mov     word ptr [eax], 37h ; '7'

loc_4AFB9A:
mov     word ptr [eax+2], 0FFFBh
jmp     short loc_4AFBC8

loc_4AFBA2:             ; jumptable 004AFB8E case 2
mov     word ptr [eax], 46h ; 'F'
jmp     short loc_4AFB9A

loc_4AFBA9:             ; jumptable 004AFB8E case 4
mov     word ptr [eax], 8Ch
jmp     short loc_4AFB9A

loc_4AFBB0:             ; jumptable 004AFB8E case 5
mov     word ptr [eax], 0AEh
mov     word ptr [eax+2], 0FFFAh
jmp     short loc_4AFBC8

loc_4AFBBD:             ; jumptable 004AFB8E case 6
mov     word ptr [eax], 118h
mov     word ptr [eax+2], 0

loc_4AFBC8:
mov     dword ptr [ecx+50h], 2808080h
mov     byte ptr [ecx+0Ah], 0
mov     word ptr [ecx+4Eh], 0
lea     eax, [ecx+18h]
call    sub_4EF184
mov     dword ptr [ecx+38h], 0
mov     eax, [ecx+38h]
mov     [ecx+28h], eax
mov     eax, [ecx+28h]
mov     [ecx+18h], eax
mov     bl, [ecx+3]
test    bl, 80h
jz      short loc_4AFC06
xor     edx, edx
mov     [esp+18h+var_18], edx
jmp     loc_4AFCB8

loc_4AFC06:
test    bl, 20h
jz      short loc_4AFC66
mov     [esp+18h+var_18], 2
mov     edx, esp
mov     eax, ecx
call    sub_4DD0F8
mov     eax, 1Eh
call    sub_42A701
call    sub_4DE13B
test    eax, eax
jz      short loc_4AFC41
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 5
lea     edi, [eax+48h]
lea     esi, [ecx+48h]
movsd
movsd

loc_4AFC41:
call    sub_4DE13B
test    eax, eax
jz      loc_4AFCC1
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 6
lea     edi, [eax+48h]
lea     esi, [ecx+48h]
movsd
movsd
jmp     loc_4AFCC1

loc_4AFC66:
mov     al, bl
and     al, 0Fh
cmp     al, 5
jb      short loc_4AFC76
jbe     short loc_4AFC83
cmp     al, 6
jz      short loc_4AFC8C
jmp     short loc_4AFC95

loc_4AFC76:
cmp     al, 4
jnz     short loc_4AFC95
mov     [esp+18h+var_18], 4
jmp     short loc_4AFCB8

loc_4AFC83:
mov     [esp+18h+var_18], 5
jmp     short loc_4AFCB8

loc_4AFC8C:
mov     [esp+18h+var_18], 6
jmp     short loc_4AFCB8

loc_4AFC95:
mov     edx, [ecx+48h]
sar     edx, 10h
lea     eax, [ecx+48h]
call    sub_42C7E7
sub     eax, edx
cmp     eax, 1Eh
jge     short loc_4AFCB1
xor     edi, edi
mov     [esp+18h+var_18], edi
jmp     short loc_4AFCB8

loc_4AFCB1:
mov     [esp+18h+var_18], 1

loc_4AFCB8:
mov     edx, esp
mov     eax, ecx
call    sub_4DD0F8

loc_4AFCC1:
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 0
lea     ebx, [ecx+48h]
mov     edx, (offset dword_5F8376+2)
mov     eax, ebx
call    sub_4B0026
mov     [esp+18h+var_18], eax
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4AFCEC
mov     edx, ebx
mov     eax, 0A1h
call    sub_4D8BC3

loc_4AFCEC:
add     esp, 4

loc_4AFCEF:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AFB14 endp




sub_4AFCF5 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax        ; int
movzx   esi, byte ptr [eax+9]
call    ds:funcs_4AFCFF[esi*4]
lea     esi, [edx+48h]
mov     ah, [edx+3]
test    ah, 40h
jz      short loc_4AFD40
push    80h
push    0
push    10000008h
push    offset unk_55CEE8
xor     eax, eax
mov     al, [edx+1]
push    eax
mov     edx, [edx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, eax
mov     ecx, 0A000h
jmp     short loc_4AFDA1

loc_4AFD40:
cmp     ah, 6
jnz     short loc_4AFD74
push    80h
push    0
push    30000000h
push    offset unk_55CEE8
xor     eax, eax
mov     al, [edx+1]
push    eax
mov     edx, [edx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, eax
mov     ecx, 0C000h
jmp     short loc_4AFDA1

loc_4AFD74:
push    80h
push    0
push    10000008h
push    offset unk_55CEE8
xor     eax, eax
mov     al, [edx+1]
push    eax
mov     edx, [edx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, eax
mov     ecx, 0C000h

loc_4AFDA1:
xor     ebx, ebx
mov     eax, esi
call    sub_4E01FC
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4AFCF5 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_78]
align 10h
jpt_4AFDE7 dd offset def_4AFDE7 ; jump table for switch statement
dd offset loc_4AFE58
dd offset loc_4AFE94
dd offset def_4AFDE7
dd offset loc_4AFEF3
dd offset loc_4AFF47
dd offset loc_4AFF84



; int __fastcall sub_4AFDCC(int, int)
sub_4AFDCC proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
push    edi             ; int
mov     edx, eax
add     eax, 54h ; 'T'
mov     cl, [edx+3]
and     cl, 0Fh
cmp     cl, 6           ; switch 7 cases
ja      short def_4AFDE7 ; jumptable 004AFDE7 default case, cases 0,3
and     ecx, 0FFh
jmp     jpt_4AFDE7[ecx*4] ; switch jump

def_4AFDE7:             ; jumptable 004AFDE7 default case, cases 0,3
mov     cx, [eax+2]
mov     di, [eax]
add     edi, ecx
mov     [eax], di
mov     bx, [edx+4Eh]
add     ebx, edi
mov     [edx+4Eh], bx
cmp     word ptr [eax], 0
jg      short loc_4AFE37
cmp     bx, 64h ; 'd'
jge     short loc_4AFE19
mov     word ptr [edx+4Eh], 0
inc     byte ptr [edx+8]

loc_4AFE19:
mov     word ptr [eax+2], 0
mov     word ptr [eax], 0FFF6h
cmp     word ptr [edx+4Eh], 0FFh
jg      short loc_4AFE37
mov     eax, [edx+4Ch]
sar     eax, 10h
sub     eax, 64h ; 'd'
jmp     short loc_4AFE3C

loc_4AFE37:
mov     eax, 80h

loc_4AFE3C:
mov     ebx, eax
or      ebx, 2000000h
mov     ecx, eax
shl     ecx, 8

loc_4AFE49:
or      ecx, ebx
shl     eax, 10h
or      ecx, eax
mov     [edx+50h], ecx
jmp     loc_4AFFEE

loc_4AFE58:             ; jumptable 004AFDE7 case 1
mov     cx, [eax+2]
mov     si, [eax]
add     esi, ecx
mov     [eax], si
mov     di, [edx+4Eh]
add     edi, esi
mov     [edx+4Eh], di
test    di, di
jge     short loc_4AFE7C
mov     word ptr [edx+4Eh], 0
inc     byte ptr [edx+8]

loc_4AFE7C:
cmp     word ptr [eax], 0
jg      short loc_4AFE37
cmp     word ptr [edx+4Eh], 0FFh
jg      short loc_4AFE37
mov     eax, [edx+4Ch]
sar     eax, 10h
sar     eax, 1
jmp     short loc_4AFE3C

loc_4AFE94:             ; jumptable 004AFDE7 case 2
mov     cx, [eax+2]
mov     si, [eax]
add     esi, ecx
mov     [eax], si
add     [edx+4Eh], si
cmp     word ptr [eax], 0
jg      short loc_4AFEB3
mov     word ptr [edx+4Eh], 0
inc     byte ptr [edx+8]

loc_4AFEB3:
cmp     word ptr [edx+4Eh], 10Eh
jle     short loc_4AFEDC
mov     cl, [edx+0Ah]
add     cl, 0Eh
mov     [edx+0Ah], cl
cmp     cl, 80h
ja      short loc_4AFED8
xor     eax, eax
mov     al, cl
mov     ecx, 80h
sub     ecx, eax
mov     eax, ecx
jmp     short loc_4AFEE1

loc_4AFED8:
xor     eax, eax
jmp     short loc_4AFEE1

loc_4AFEDC:
mov     eax, 80h

loc_4AFEE1:
mov     ecx, eax
or      ecx, 2000000h
mov     ebx, eax
shl     ebx, 8
jmp     loc_4AFE49

loc_4AFEF3:             ; jumptable 004AFDE7 case 4
mov     bx, [eax+2]
mov     cx, [eax]
add     ecx, ebx
mov     [eax], cx
mov     si, [edx+4Eh]
add     esi, ecx
mov     [edx+4Eh], si
cmp     word ptr [eax], 0
jg      loc_4AFE37
cmp     si, 64h ; 'd'
jge     short loc_4AFF22
mov     word ptr [edx+4Eh], 0
inc     byte ptr [edx+8]

loc_4AFF22:
mov     word ptr [eax+2], 0
mov     word ptr [eax], 0FFECh
cmp     word ptr [edx+4Eh], 400h
jg      loc_4AFE37
mov     eax, [edx+4Ch]
sar     eax, 10h
sar     eax, 3
jmp     loc_4AFE3C

loc_4AFF47:             ; jumptable 004AFDE7 case 5
mov     bx, [eax+2]
mov     cx, [eax]
add     ecx, ebx
mov     [eax], cx
add     [edx+4Eh], cx
cmp     word ptr [eax], 82h
jge     short loc_4AFF61
inc     byte ptr [edx+0Ah]

loc_4AFF61:
cmp     byte ptr [edx+0Ah], 8
jb      short loc_4AFF6E
inc     byte ptr [edx+8]
mov     byte ptr [edx+0Ah], 8

loc_4AFF6E:
xor     eax, eax
mov     al, [edx+0Ah]
mov     ecx, 8
sub     ecx, eax
mov     eax, ecx
shl     eax, 4
jmp     loc_4AFE3C

loc_4AFF84:             ; jumptable 004AFDE7 case 6
mov     bx, [eax+2]
mov     cx, [eax]
add     ecx, ebx
mov     [eax], cx
mov     si, [edx+4Eh]
add     esi, ecx
mov     [edx+4Eh], si
cmp     si, 800h
jle     short loc_4AFFC3
mov     ah, [edx+0Ah]
add     ah, 0Ah
mov     [edx+0Ah], ah
cmp     ah, 80h
ja      short loc_4AFFBF
xor     eax, eax
mov     al, [edx+0Ah]
mov     ecx, 80h
sub     ecx, eax
mov     eax, ecx
jmp     short loc_4AFFC8

loc_4AFFBF:
xor     eax, eax
jmp     short loc_4AFFC8

loc_4AFFC3:
mov     eax, 80h

loc_4AFFC8:
mov     ebx, eax
or      ebx, 2000000h
mov     ecx, eax
shl     ecx, 8
or      ebx, ecx
mov     ecx, eax
shl     ecx, 10h
or      ebx, ecx
mov     [edx+50h], ebx
test    eax, eax
jnz     short loc_4AFFEE
mov     word ptr [edx+4Eh], 0
inc     byte ptr [edx+8]

loc_4AFFEE:
lea     ecx, [edx+18h]
mov     eax, ecx
call    sub_4EF184
fild    word ptr [edx+4Eh]
fmul    ds:dbl_50A3E8
fst     dword ptr [edx+38h]
fst     dword ptr [edx+28h]
fstp    dword ptr [edx+18h]
inc     byte ptr [edx+0Bh]
xor     eax, eax
mov     al, [edx+0Bh]
shl     eax, 7
mov     edx, ecx
call    sub_4EF50D
jmp     loc_4AFCEF
sub_4AFDCC endp



; Attributes: thunk

sub_4B0021 proc near
jmp     sub_4DE3EA
sub_4B0021 endp




sub_4B0026 proc near
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
sub_4B0026 endp




sub_4B0065 proc near
push    edx
mov     byte ptr [eax+9], 0
mov     dl, ds:byte_530D55
mov     [eax+0Ah], dl
mov     edx, ds:dword_530D50
mov     [eax+14h], edx
mov     dl, ds:byte_530D56
mov     [eax+22h], dl
mov     dl, ds:byte_530D57
mov     [eax+23h], dl
xor     dh, dh
mov     dl, ds:byte_530D54
mov     [eax+24h], dx
pop     edx
retn
sub_4B0065 endp




sub_4B009C proc near
push    ebx
push    ecx
push    edx
mov     dl, [eax+0Ah]
dec     dl
mov     [eax+0Ah], dl
jnz     short loc_4B00F5
mov     bl, [eax+9]
inc     bl
mov     [eax+9], bl
xor     edx, edx
mov     dl, bl
shl     edx, 3
mov     bl, ds:byte_530D55[edx]
mov     [eax+0Ah], bl
test    bl, bl
jnz     short loc_4B00CE
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn

loc_4B00CE:
mov     ecx, ds:dword_530D50[edx]
mov     [eax+14h], ecx
mov     bl, ds:byte_530D56[edx]
mov     [eax+22h], bl
mov     bl, ds:byte_530D57[edx]
mov     [eax+23h], bl
mov     dl, ds:byte_530D54[edx]
xor     dh, dh
mov     [eax+24h], dx

loc_4B00F5:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B009C endp




sub_4B00F9 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B00FF[edx*4]
pop     edx
retn
sub_4B00F9 endp




sub_4B0108 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     ecx, offset byte_5F8364
lea     ebp, [eax+28h]
call    sub_4B04B2
test    al, al
jnz     short loc_4B018A
or      byte ptr [esi+6], 20h
xor     bl, bl
jmp     short loc_4B0133

loc_4B012C:
inc     bl
cmp     bl, 8
jnb     short loc_4B0178

loc_4B0133:
xor     eax, eax
mov     al, bl
xor     edx, edx
mov     dl, bl
add     edx, edx
add     edx, ebp
mov     [edx+10h], ax
cmp     byte ptr [esi+3], 0
jz      short loc_4B016C
mov     ax, [ecx+56h]
add     eax, 80h

loc_4B0152:
mov     [esp+1Ch+var_1C], eax
call    rand_
xor     ah, ah
mov     edi, [esp+1Ch+var_1C]
add     eax, edi
mov     [edx], ax
and     ah, 0Fh
mov     [edx], ax
jmp     short loc_4B012C

loc_4B016C:
mov     ax, [ecx+56h]
sub     eax, 100h
jmp     short loc_4B0152

loc_4B0178:
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Dh
call    sub_4D89E4
mov     byte ptr [esi+8], 1

loc_4B018A:
add     esp, 4

loc_4B018D:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B0108 endp




sub_4B0194 proc near

var_50= dword ptr -50h
var_4C= dword ptr -4Ch
var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= word ptr -30h
var_2C= word ptr -2Ch
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
sub     esp, 38h
mov     edx, eax
mov     [esp+50h+var_50], offset byte_5F8364
add     eax, 28h ; '('
mov     [esp+50h+var_34], eax
mov     eax, edx
call    sub_4B04B2
test    al, al
jnz     loc_4B0489
cmp     byte ptr [edx+3], 0
jz      short loc_4B01DE
mov     ax, ds:word_5F8864
mov     [edx+1Ch], ax
mov     ax, ds:word_5F8866
mov     [edx+1Eh], ax
mov     ax, ds:word_5F8868
jmp     short loc_4B01F8

loc_4B01DE:
mov     ax, ds:word_5F887C
mov     [edx+1Ch], ax
mov     ax, ds:word_5F887E
mov     [edx+1Eh], ax
mov     ax, ds:word_5F8880

loc_4B01F8:
mov     [edx+20h], ax
xor     bl, bl
mov     [esp+50h+var_1C], bl
jmp     short loc_4B0217

loc_4B0204:
mov     ch, [esp+50h+var_1C]
inc     ch
mov     [esp+50h+var_1C], ch
cmp     ch, 8
jnb     loc_4B047B

loc_4B0217:
xor     bh, bh
mov     esi, 5
xor     edi, edi
call    rand_
xor     ah, ah
and     al, 7
add     eax, 10h
mov     [esp+50h+var_20], eax
call    rand_
xor     ah, ah
and     al, 3Fh
add     eax, 28h ; '('
mov     [esp+50h+var_24], eax
xor     eax, eax
mov     al, [esp+50h+var_1C]
add     eax, eax
add     eax, [esp+50h+var_34]
mov     cx, [eax+10h]
inc     ecx
mov     [eax+10h], cx
cmp     cx, 7
jle     short loc_4B0263
mov     [eax+10h], di

loc_4B0263:
cmp     byte ptr [edx+3], 0
jz      short loc_4B0294
mov     eax, [esp+50h+var_50]
mov     ax, [eax+56h]
add     eax, 80h
mov     [esp+50h+var_28], eax
call    rand_
xor     ah, ah
mov     ecx, [esp+50h+var_28]
add     ecx, eax
xor     eax, eax
mov     al, [esp+50h+var_1C]
add     eax, eax
add     eax, [esp+50h+var_34]
jmp     short loc_4B02C6

loc_4B0294:
mov     eax, [esp+50h+var_50]
mov     ax, [eax+56h]
sub     eax, 100h
mov     [esp+50h+var_28], eax
call    rand_
xor     ah, ah
mov     ecx, [esp+50h+var_28]
add     ecx, eax
mov     [esp+50h+var_28], ecx
xor     eax, eax
mov     al, [esp+50h+var_1C]
add     eax, eax
add     eax, [esp+50h+var_34]
mov     ecx, [esp+50h+var_28]

loc_4B02C6:
mov     [eax], cx
and     ch, 0Fh
mov     [eax], cx
xor     bl, bl

loc_4B02D1:
xor     eax, eax
mov     al, [esp+50h+var_1C]
add     eax, eax
mov     ecx, [esp+50h+var_34]
add     ecx, eax
mov     eax, [ecx+0Eh]
sar     eax, 10h
add     eax, eax
movzx   ebp, bl
cmp     eax, ebp
jle     loc_4B0204
xor     eax, eax
mov     ax, [ecx]
call    sub_4EF008
movzx   ebp, si
imul    eax, ebp
sar     eax, 0Ch
mov     [esp+50h+var_3C], eax
mov     eax, [edx+1Ah]
sar     eax, 10h
add     eax, [esp+50h+var_3C]
mov     [esp+50h+var_48], eax
xor     eax, eax
mov     ax, [ecx]
call    sub_4EF003
imul    eax, ebp
sar     eax, 0Ch
mov     ebp, [edx+1Eh]
sar     ebp, 10h
add     ebp, eax
mov     [esp+50h+var_3C], ebp
mov     eax, [esp+50h+var_3C]
mov     [esp+50h+var_30], ax
xor     eax, eax
mov     ax, di
call    sub_4EF008
xor     edi, edi
mov     di, word ptr [esp+50h+var_24]
mov     [esp+50h+var_38], edi
imul    eax, edi
sar     eax, 0Ch
mov     edi, [edx+1Ch]
sar     edi, 10h
add     edi, 10h
sub     edi, eax
mov     [esp+50h+var_4C], edi
add     esi, [esp+50h+var_20]
xor     ah, ah
mov     al, bl
mov     edi, eax
inc     edi
shl     edi, 6
xor     eax, eax
mov     ax, [ecx]
call    sub_4EF008
movzx   ebp, si
mov     [esp+50h+var_3C], ebp
imul    eax, ebp
sar     eax, 0Ch
mov     ebp, [edx+1Ah]
sar     ebp, 10h
add     ebp, eax
mov     [esp+50h+var_44], ebp
xor     eax, eax
mov     ax, [ecx]
call    sub_4EF003
imul    eax, [esp+50h+var_3C]
sar     eax, 0Ch
mov     ecx, [edx+1Eh]
sar     ecx, 10h
add     eax, ecx
mov     [esp+50h+var_2C], ax
xor     eax, eax
mov     ax, di
call    sub_4EF008
mov     ebp, [esp+50h+var_38]
mov     ecx, eax
imul    ecx, ebp
sar     ecx, 0Ch
mov     eax, [edx+1Ch]
sar     eax, 10h
add     eax, 10h
sub     eax, ecx
mov     [esp+50h+var_40], eax
call    rand_
test    al, 1
jz      loc_4B0472
call    sub_4EE16B
mov     ecx, eax
mov     ebp, [esp+50h+var_50+2]
sar     ebp, 10h
shl     ebp, 10h
mov     [esp+50h+var_38], ebp
mov     ebp, [esp+50h+var_4C+2]
sar     ebp, 10h
mov     [esp+50h+var_3C], ebp
mov     ebp, [esp+50h+var_38]
add     ebp, [esp+50h+var_3C]
mov     [eax], ebp
mov     dword ptr [eax+4], 52104080h
mov     ebp, [esp+50h+var_44+2]
sar     ebp, 10h
shl     ebp, 10h
mov     [esp+50h+var_3C], ebp
mov     ebp, [esp+50h+var_48+2]
sar     ebp, 10h
mov     [esp+50h+var_38], ebp
mov     ebp, [esp+50h+var_3C]
add     ebp, [esp+50h+var_38]
mov     [eax+8], ebp
test    bh, bh
jz      short loc_4B044A
mov     dword ptr [eax+0Ch], 104080h
jmp     short loc_4B0451

loc_4B044A:
mov     dword ptr [eax+0Ch], 10101h

loc_4B0451:
mov     eax, [esp+50h+var_34+2]
sar     eax, 10h
shl     eax, 10h
mov     ebp, [esp+22h]
sar     ebp, 10h
add     ebp, eax
mov     [ecx+10h], ebp
mov     dword ptr [ecx+28h], 0E1000020h
mov     bh, 1
jmp     short loc_4B0474

loc_4B0472:
xor     bh, bh

loc_4B0474:
inc     bl
jmp     loc_4B02D1

loc_4B047B:
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Dh
call    sub_4D89E4

loc_4B0489:
add     esp, 38h
jmp     loc_4B018D
sub_4B0194 endp




sub_4B0491 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Fh
call    sub_4D89E4
mov     byte ptr [ecx], 0
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_4B0491 endp




sub_4B04B2 proc near
push    ecx
push    edx
cmp     byte ptr ds:dword_5F836C+1, 3
jz      short loc_4B04C3

loc_4B04BD:
mov     byte ptr [eax+8], 2
jmp     short loc_4B04EB

loc_4B04C3:
cmp     byte ptr [eax+3], 0
jz      short loc_4B04F0
xor     edx, edx
mov     dx, word ptr ds:dword_5F8480
xor     ecx, ecx
mov     cx, ds:word_5F848E
test    edx, ecx
jz      short loc_4B04BD
xor     eax, eax
mov     ax, ds:word_5F848C

loc_4B04E7:
test    edx, eax
jz      short loc_4B0510

loc_4B04EB:
mov     al, 1
pop     edx
pop     ecx
retn

loc_4B04F0:
xor     edx, edx
mov     dx, word ptr ds:dword_5F8480
xor     ecx, ecx
mov     cx, ds:word_5F848C
test    edx, ecx
jz      short loc_4B04BD
xor     eax, eax
mov     ax, ds:word_5F848E
jmp     short loc_4B04E7

loc_4B0510:
xor     al, al
pop     edx
pop     ecx
retn
sub_4B04B2 endp




sub_4B0515 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B051B[edx*4]
pop     edx
retn
sub_4B0515 endp




sub_4B0524 proc near
push    ecx
push    edx
or      byte ptr [eax], 22h
mov     word ptr [eax+24h], 20h ; ' '
mov     dword ptr [eax+14h], 3D48002Ch
mov     dword ptr [eax+18h], 2EC06060h
mov     byte ptr [eax+0Ch], 80h
mov     byte ptr [eax+0Dh], 0
cmp     byte ptr [eax+3], 0
jz      short loc_4B058F
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DD4[edx*2]
mov     [eax+0Eh], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DD0[edx*2]
mov     [eax+22h], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DD2[edx*2]
jmp     short loc_4B05D1

loc_4B058F:
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DBC[edx*2]
mov     [eax+0Eh], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DB8[edx*2]
mov     [eax+22h], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DBA[edx*2]

loc_4B05D1:
mov     [eax+23h], dl
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+0Bh], 0
pop     edx
pop     ecx
retn
sub_4B0524 endp




sub_4B05DF proc near
push    ecx
push    edx
mov     dl, [eax+0Eh]
dec     dl
mov     [eax+0Eh], dl
jnz     loc_4B0689
cmp     byte ptr [eax+3], 0
jz      short loc_4B0641
add     word ptr [eax+24h], 8
inc     byte ptr [eax+0Dh]
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DD4[edx*2]
mov     [eax+0Eh], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DD0[edx*2]
mov     [eax+22h], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DD2[edx*2]
jmp     short loc_4B0686

loc_4B0641:
inc     byte ptr [eax+0Dh]
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DBC[edx*2]
mov     [eax+0Eh], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DB8[edx*2]
mov     [eax+22h], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DBA[edx*2]

loc_4B0686:
mov     [eax+23h], dl

loc_4B0689:
cmp     byte ptr [eax+0Eh], 80h
jnz     short loc_4B0693
mov     byte ptr [eax+8], 2

loc_4B0693:
pop     edx
pop     ecx
retn
sub_4B05DF endp



; Attributes: thunk

sub_4B0696 proc near
jmp     sub_4DE3EA
sub_4B0696 endp




sub_4B069B proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B06A1[edx*4]
pop     edx
retn
sub_4B069B endp




sub_4B06AA proc near
push    edx
push    esi
push    edi
sub     esp, 8
mov     edx, eax
mov     al, [eax+1Ah]
mov     [edx+0Eh], al
xor     eax, eax
mov     al, [edx+0Ch]
call    sub_4E1877
mov     esi, eax
mov     dword ptr [eax+198h], 0
mov     eax, [edx+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     dword ptr [edx+0D4h], 0
mov     dword ptr [edx+0D8h], 0
mov     dword ptr [edx+78h], 0
mov     byte ptr [edx+0Bh], 0Bh
inc     byte ptr [edx+8]
cmp     byte ptr [edx+0Eh], 0
jz      short loc_4B070C
lea     edi, [edx+2Ch]
lea     esi, [esi+500h]
jmp     short loc_4B0715

loc_4B070C:
lea     edi, [edx+2Ch]
lea     esi, [esi+518h]

loc_4B0715:
movsd
movsd
mov     edi, esp
lea     esi, [edx+2Ch]
movsd
movsd
lea     edi, [edx+14h]
mov     esi, esp
movsd
movsd
mov     eax, edx
call    sub_4B07C8
add     edx, 14h
mov     eax, 96h
call    sub_4D8BC3
add     esp, 8
pop     edi
pop     esi
pop     edx
retn
sub_4B06AA endp




sub_4B0740 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     eax, eax
mov     al, [ecx+0Ch]
call    sub_4E1877
mov     ebx, eax
xor     eax, eax
mov     al, [ecx+0Ch]
call    sub_4E1877
lea     edi, [ecx+2Ch]
lea     esi, [eax+14h]
movsd
movsd
mov     ah, [ecx+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4B0778
mov     eax, ecx
call    sub_4DE3AC
jmp     short loc_4B07A2

loc_4B0778:
xor     edx, edx
mov     eax, ecx
call    sub_4EE66E
test    eax, eax
jz      short loc_4B079B
mov     eax, ecx
call    sub_4B0888
inc     byte ptr [ecx+8]
mov     dword ptr [ebx+198h], 1
jmp     short loc_4B07A2

loc_4B079B:
mov     eax, ecx
call    sub_4B07C8

