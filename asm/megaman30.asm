loc_4491F9:
cmp     word ptr [edx+8], 0
jnz     short loc_449221
cmp     byte ptr [eax+0A7h], 0
jge     short loc_449221
cmp     byte ptr [eax+2], 49h ; 'I'
jnz     short loc_44921D
mov     byte ptr [eax+0ACh], 9
inc     byte ptr [eax+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_44921D:
mov     byte ptr [eax+0Ah], 0

loc_449221:
pop     edx
pop     ecx
pop     ebx
retn
sub_4491E0 endp




sub_449225 proc near
cmp     byte ptr [eax+0A7h], 0
jge     short locret_449232
mov     byte ptr [eax+0Ah], 0

locret_449232:
retn
sub_449225 endp




sub_449233 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_449239[edx*4]
pop     edx
retn
sub_449233 endp




sub_449242 proc near
push    ecx
push    edx
mov     ecx, eax
add     eax, 408h
mov     word ptr [eax+14h], 0
xor     edx, edx
mov     dl, [ecx+0Eh]
mov     [eax+1Eh], dx
shl     edx, 3
mov     [eax+1Eh], dx
mov     [eax+16h], dx
mov     edx, 1
mov     eax, ecx
call    sub_44A7F9
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
retn
sub_449242 endp




sub_449287 proc near

var_18= dword ptr -18h
var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     ecx, eax
lea     ebx, [eax+408h]
mov     edx, offset unk_515850
mov     eax, [eax+0Ah]
sar     eax, 18h
sar     eax, 4
and     eax, 3
mov     [esp+18h+var_18], eax
mov     al, byte ptr [esp+18h+var_18]
and     eax, 0FFh
shl     eax, 4
mov     esi, offset unk_515810
add     esi, eax
call    rand_
and     eax, 0Fh
mov     al, [esi+eax]
mov     [esp+18h+var_14], al
test    al, al
jbe     short loc_4492D5
cmp     al, 1
jz      short loc_4492FC
jmp     short loc_449313

loc_4492D5:
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7E2
mov     [ecx+0ACh], al
mov     edx, 1
mov     eax, ecx
call    sub_44A7F9
mov     [ecx+44h], ax
mov     edx, offset unk_515850
jmp     short loc_449362

loc_4492FC:
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7D8
mov     [ecx+0ACh], al
mov     edx, offset unk_515860
jmp     short loc_449362

loc_449313:
mov     esi, [ebx+14h]
sar     esi, 10h
mov     eax, [ebx+1Ch]
sar     eax, 10h
cmp     esi, eax
jnz     short loc_44932A
mov     [esp+18h+var_14], 0FFh
jmp     short loc_449362

loc_44932A:
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7E2
mov     [ecx+0ACh], al
cmp     word ptr [ebx+14h], 0
jz      short loc_449349
mov     eax, [ebx+8]
sar     eax, 10h
jmp     short loc_449359

loc_449349:
mov     eax, [ebx+8]
sar     eax, 10h
add     eax, 800h
and     eax, 0FFFh

loc_449359:
mov     [ecx+64h], ax
mov     edx, offset unk_515870

loc_449362:
call    rand_
and     eax, 0Fh
add     edx, eax
xor     eax, eax
mov     al, [edx]
mov     [ebx+8], ax
mov     dl, [esp+18h+var_14]
cmp     dl, 0FFh
jz      short loc_449384
mov     al, dl
inc     al
add     [ecx+0Ah], al

loc_449384:
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_449287 endp




sub_44938C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
mov     dx, [edi+16h]
dec     dx
mov     [edi+16h], dx
jnz     short loc_4493DD
cmp     word ptr [edi+14h], 0
jz      short loc_4493C5
mov     al, [esi+0Fh]
and     al, 0Fh
movsx   eax, al
jmp     short loc_4493CD

loc_4493C5:
xor     eax, eax
mov     al, [esi+0Fh]
sar     eax, 4

loc_4493CD:
shl     eax, 8
mov     [esi+64h], ax
mov     byte ptr [esi+0Ah], 5
jmp     loc_449FCE

loc_4493DD:
mov     cx, [edi+8]
dec     cx
mov     [edi+8], cx
jnz     short loc_4493F2

loc_4493E9:
mov     byte ptr [esi+0Ah], 1
jmp     loc_449FCE

loc_4493F2:
mov     ebx, 64h ; 'd'
mov     edx, 40h ; '@'
mov     eax, esi
call    sub_44A832
test    al, al
jz      loc_449FCE
xor     eax, eax
mov     al, [esi+2]
call    sub_44A7D8
mov     [esi+0ACh], al
mov     word ptr [edi+8], 3Ch ; '<'
mov     byte ptr [esi+0Ah], 9
jmp     loc_449FCE
sub_44938C endp




sub_44942A proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bx, [eax+8]
dec     bx
mov     [eax+8], bx
jnz     short loc_449443
mov     byte ptr [edx+0Ah], 1

loc_449443:
pop     edx
pop     ebx
retn
sub_44942A endp




sub_449446 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+408h]
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+62h]
sar     eax, 10h
mov     ebx, 40h ; '@'
call    sub_4DE5F4
mov     edx, eax
test    ax, ax
jnz     short loc_449491
mov     eax, 1
mov     bx, [esi+14h]
sub     eax, ebx
mov     [esi+14h], ax
mov     ax, [esi+1Eh]
mov     di, [esi+16h]
sub     eax, edi
mov     [esi+16h], ax
mov     byte ptr [ecx+0Ah], 1

loc_449491:
mov     ax, [ecx+56h]
add     eax, edx
and     ah, 0Fh
mov     [ecx+56h], ax
jmp     loc_449FCE
sub_449446 endp




sub_4494A3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+62h]
sar     eax, 10h
mov     ebx, 40h ; '@'
call    sub_4DE5F4
mov     edx, eax
test    ax, ax
jnz     short loc_4494E5
mov     word ptr [esi+8], 14h
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7D8
mov     [ecx+0ACh], al
inc     byte ptr [ecx+0Ah]

loc_4494E5:
mov     ax, [ecx+56h]
add     eax, edx
and     ah, 0Fh
mov     [ecx+56h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4494A3 endp




sub_4494F7 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+408h]
mov     bx, [ecx+8]
dec     bx
mov     [ecx+8], bx
jnz     short loc_449527
xor     eax, eax
mov     al, [edx+2]
call    sub_44A7A0
mov     [edx+0ACh], al
mov     word ptr [ecx+8], 46h ; 'F'
inc     byte ptr [edx+0Ah]

loc_449527:
pop     edx
pop     ecx
pop     ebx
retn
sub_4494F7 endp




sub_44952B proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+408h]
cmp     byte ptr [eax+0A7h], 0
jge     short loc_449556
mov     bl, [edx+2]
cmp     bl, 49h ; 'I'
jz      short loc_449556
xor     eax, eax
mov     al, bl
call    sub_44A7D8
mov     [edx+0ACh], al

loc_449556:
mov     bx, [ecx+8]
dec     bx
mov     [ecx+8], bx
jnz     short loc_4495B4
mov     bh, [edx+2]
cmp     bh, 49h ; 'I'
jnz     short loc_449577
mov     byte ptr [edx+0ACh], 9
mov     byte ptr [edx+0Ah], 0Ah
jmp     short loc_449589

loc_449577:
xor     eax, eax
mov     al, bh
call    sub_44A7E2
mov     [edx+0ACh], al
inc     byte ptr [edx+0Ah]

loc_449589:
cmp     word ptr [ecx+14h], 0
jz      short loc_449598
mov     eax, [ecx+8]
sar     eax, 10h
jmp     short loc_4495A8

loc_449598:
mov     eax, [ecx+8]
sar     eax, 10h
add     eax, 800h
and     eax, 0FFFh

loc_4495A8:
mov     [edx+64h], ax
mov     ax, [ecx+1Eh]
mov     [ecx+16h], ax

loc_4495B4:
pop     edx
pop     ecx
pop     ebx
retn
sub_44952B endp




sub_4495B8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+408h]
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+62h]
sar     eax, 10h
mov     ebx, 40h ; '@'
call    sub_4DE5F4
mov     dx, [ecx+56h]
add     edx, eax
and     dh, 0Fh
mov     [ecx+56h], dx
test    ax, ax
jnz     loc_449FCD
mov     byte ptr [ecx+0Ah], 1
cmp     word ptr [ebp+14h], 0
jz      short loc_449631
lea     edi, [ecx+14h]
lea     esi, [ebp+0Ch]
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
mov     ax, [ebp+0Ah]
mov     [ecx+56h], ax

loc_449631:
mov     eax, 1
mov     bx, [ebp+14h]
sub     eax, ebx
mov     [ebp+14h], ax
jmp     loc_449FCD
sub_4495B8 endp




sub_449645 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     dx, [esi+8]
dec     dx
mov     [esi+8], dx
jnz     short loc_4496B9
mov     ebx, 64h ; 'd'
mov     edx, 40h ; '@'
call    sub_44A832
test    al, al
jz      short loc_4496B5
mov     edx, [esi+1Ch]
sar     edx, 10h
mov     eax, [esi+14h]
sar     eax, 10h
sub     edx, 5
cmp     eax, edx
jl      short loc_44968E
mov     word ptr [esi+8], 3Ch ; '<'
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44968E:
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7E2
mov     [ecx+0ACh], al
mov     ax, [ecx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ecx+64h], ax
mov     byte ptr [ecx+0Ah], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4496B5:
mov     byte ptr [ecx+0Ah], 1

loc_4496B9:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_449645 endp




sub_4496BE proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0A7h], 0
jge     short loc_4496DE
mov     byte ptr [edx+0Ah], 8
xor     eax, eax
mov     al, [edx+2]
call    sub_44A7E2
mov     [edx+0ACh], al

loc_4496DE:
pop     edx
retn
sub_4496BE endp




sub_4496E0 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4496E6[edx*4]
pop     edx
retn
sub_4496E0 endp




sub_4496EF proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0
xor     ebx, ebx
mov     bl, [edx+0Eh]
mov     [eax+1Eh], bx
shl     ebx, 3
mov     [eax+1Eh], bx
mov     [eax+18h], bx
mov     word ptr [eax+1Ah], 0
mov     word ptr [edx+46h], 0
mov     word ptr [edx+48h], 0
jmp     loc_4491DA
sub_4496EF endp




sub_44972F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+408h]
mov     edx, offset unk_5158AC
call    rand_
and     eax, 0Fh
mov     al, ds:byte_51589C[eax]
cmp     al, 1
jb      short loc_449760
jbe     short loc_4497BE
cmp     al, 2
jz      loc_4497D9
jmp     loc_449800

loc_449760:
test    al, al
jnz     loc_449800
cmp     word ptr [ebx+16h], 0
jnz     short loc_449774
inc     byte ptr [ecx+0Ah]
jmp     short loc_449778

loc_449774:
add     byte ptr [ecx+0Ah], 2

loc_449778:
test    byte ptr [ecx+0Dh], 8
jz      short loc_449797
mov     edx, 2
mov     eax, ecx
call    sub_44A7F9
mov     [ecx+44h], ax
mov     byte ptr [ecx+0ACh], 2
jmp     short loc_4497B7

loc_449797:
mov     edx, 1
mov     eax, ecx
call    sub_44A7F9
mov     [ecx+44h], ax
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7E2
mov     [ecx+0ACh], al

loc_4497B7:
mov     edx, offset unk_5158AC
jmp     short loc_449800

loc_4497BE:
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7D8
mov     [ecx+0ACh], al
mov     edx, offset unk_5158BC
add     byte ptr [ecx+0Ah], 3
jmp     short loc_449800

loc_4497D9:
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7E2
mov     [ecx+0ACh], al
mov     ax, [ecx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebx+1Ch], ax
mov     edx, offset unk_5158CC
add     byte ptr [ecx+0Ah], 4

loc_449800:
call    rand_
and     eax, 0Fh
add     edx, eax
xor     eax, eax
mov     al, [edx]
mov     [ebx+8], ax
pop     edx
pop     ecx
pop     ebx
retn
sub_44972F endp




sub_449816 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
cmp     word ptr [eax+1Ah], 0
jnz     short loc_449850
cmp     word ptr [eax+14h], 0
jnz     short loc_449850
mov     edx, [eax+16h]
sar     edx, 10h
mov     eax, [eax+1Ch]
sar     eax, 10h
cmp     edx, eax
jnz     short loc_449850
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+0Ah]
jmp     short loc_449872

loc_449850:
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+1Ah], 0
jz      short loc_4498A5
cmp     word ptr [eax+14h], 0
jnz     short loc_4498A5
cmp     word ptr [eax+18h], 1
jnz     short loc_4498A5
mov     ax, [eax+0Ah]
add     ah, 8
and     ah, 0Fh

loc_449872:
mov     [ebp+56h], ax
lea     edi, [ebp+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+0Ch]
movsd
movsd
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax

loc_4498A5:
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+18h]
dec     dx
mov     [eax+18h], dx
jnz     short loc_4498EE
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+64h], ax
mov     eax, 1
mov     edx, [esp+1Ch+var_1C]
mov     di, [edx+16h]
sub     eax, edi
mov     [edx+16h], ax

loc_4498E5:
mov     byte ptr [ebp+0Ah], 1
jmp     loc_449FCA

loc_4498EE:
mov     cx, [eax+8]
dec     cx
mov     [eax+8], cx
jz      short loc_4498E5
mov     ebx, 64h ; 'd'
mov     edx, 40h ; '@'
mov     eax, ebp
call    sub_44A832
test    al, al
jz      loc_449FCA
xor     eax, eax
mov     al, [ebp+2]
call    sub_44A7D8
mov     [ebp+0ACh], al
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+8], 3Ch ; '<'
mov     byte ptr [ebp+0Ah], 6
jmp     loc_449FCA
sub_449816 endp




sub_449935 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
mov     ebx, [eax+0Ch]
sar     ebx, 18h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+62h]
sar     eax, 10h
call    sub_4DE5F4
mov     edi, eax
cmp     word ptr [ecx+1Ah], 0
jnz     short loc_449967
test    ax, ax
jl      short loc_449973

loc_449967:
cmp     word ptr [ecx+1Ah], 0
jz      short loc_449975
test    di, di
jle     short loc_449975

loc_449973:
neg     edi

loc_449975:
test    di, di
jnz     short loc_4499A6
mov     eax, 1
mov     bx, [ecx+14h]
sub     eax, ebx
mov     [ecx+14h], ax
mov     ax, [ecx+1Eh]
mov     [ecx+18h], ax
mov     eax, 1
mov     dx, [ecx+16h]
sub     eax, edx
mov     [ecx+16h], ax

loc_4499A0:
mov     byte ptr [esi+0Ah], 1
jmp     short loc_4499E6

loc_4499A6:
mov     ax, [ecx+8]
dec     ax
mov     [ecx+8], ax
jz      short loc_4499A0
mov     ebx, 64h ; 'd'
mov     edx, 40h ; '@'
mov     eax, esi
call    sub_44A832
test    al, al
jz      short loc_4499E6
xor     eax, eax
mov     al, [esi+2]
call    sub_44A7D8
mov     [esi+0ACh], al
mov     word ptr [ecx+8], 3Ch ; '<'
mov     byte ptr [esi+0Ah], 6
jmp     loc_449FCE

loc_4499E6:
add     di, [esi+56h]
and     edi, 0FFFh
mov     [esi+56h], di
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
jmp     loc_449FCE
sub_449935 endp




sub_449A0A proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bx, [eax+8]
dec     bx
mov     [eax+8], bx
jnz     short loc_449A23
mov     byte ptr [edx+0Ah], 1

loc_449A23:
pop     edx
pop     ebx
retn
sub_449A0A endp




sub_449A26 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
mov     ebx, [ecx+6]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [ecx+1Ah]
sar     eax, 10h
call    sub_4DE5F4
mov     edx, eax
test    ax, ax
jnz     short loc_449A87
cmp     word ptr [ecx+16h], 0
jz      short loc_449A67
mov     eax, 1
mov     di, [ecx+14h]
sub     eax, edi
mov     [ecx+14h], ax

loc_449A67:
mov     eax, 1
mov     bx, [ecx+1Ah]
sub     eax, ebx
mov     [ecx+1Ah], ax
mov     ax, [ecx+1Eh]
sub     ax, [ecx+18h]
inc     eax
mov     [ecx+18h], ax
mov     byte ptr [esi+0Ah], 1

loc_449A87:
mov     ax, [esi+56h]
add     eax, edx
and     ah, 0Fh
mov     [esi+56h], ax
jmp     loc_449FCE
sub_449A26 endp




sub_449A99 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     dx, [esi+8]
dec     dx
mov     [esi+8], dx
jnz     short loc_449AF5
mov     ebx, 64h ; 'd'
mov     edx, 40h ; '@'
call    sub_44A832
test    al, al
jz      short loc_449AF1
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7E2
mov     [ecx+0ACh], al
mov     ax, [ecx+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+1Ch], ax
mov     word ptr [esi+8], 64h ; 'd'
mov     byte ptr [ecx+0Ah], 5
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_449AF1:
mov     byte ptr [ecx+0Ah], 1

loc_449AF5:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_449A99 endp




sub_449AFA proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_449B00[edx*4]
pop     edx
retn
sub_449AFA endp




sub_449B09 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+408h]
mov     edx, 1
call    sub_44A7F9
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
xor     eax, eax
mov     al, [ecx+0Eh]
mov     [ebx+14h], ax
mov     edx, eax
shl     edx, 4
mov     [ebx+14h], dx
xor     eax, eax
mov     al, [ecx+0Fh]
mov     [ebx+16h], ax
mov     esi, eax
shl     esi, 4
mov     [ebx+16h], si
inc     byte ptr [ecx+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_449B09 endp




sub_449B5B proc near

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
mov     ecx, eax
lea     ebx, [eax+408h]
cmp     byte ptr [eax+2], 2Ah ; '*'
jnz     short loc_449B7E
mov     edx, offset unk_515908
mov     esi, offset unk_515928
jmp     short loc_449B88

loc_449B7E:
mov     edx, offset unk_5158F8
mov     esi, offset unk_515918

loc_449B88:
mov     edi, offset unk_515938
call    rand_
and     eax, 0Fh
mov     al, [edx+eax]
mov     [esp+28h+var_1C], al
cmp     al, 1
jb      short loc_449BAB
jbe     short loc_449BFA
cmp     al, 2
jz      short loc_449C0F
jmp     loc_449C8D

loc_449BAB:
test    al, al
jnz     loc_449C8D
test    byte ptr [ecx+0Dh], 8
jnz     short loc_449BC7
call    rand_
and     eax, 0Fh
cmp     byte ptr [esi+eax], 0
jz      short loc_449BE3

loc_449BC7:
mov     byte ptr [ecx+0ACh], 2
mov     edx, 2

loc_449BD3:
mov     eax, ecx
call    sub_44A7F9
mov     [ecx+44h], ax
jmp     loc_449CAF

loc_449BE3:
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7E2
mov     [ecx+0ACh], al
mov     edx, 1
jmp     short loc_449BD3

loc_449BFA:
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7D8
mov     [ecx+0ACh], al
jmp     loc_449CAF

loc_449C0F:
mov     eax, [ecx+12h]
sar     eax, 10h
mov     edx, [ebx+0Ah]
sar     edx, 10h
sub     eax, edx
mov     esi, [ebx+12h]
sar     esi, 10h
mov     edx, esi
sar     edx, 1
add     eax, edx
mov     [esp+28h+var_24], eax
mov     edx, [ecx+16h]
sar     edx, 10h
mov     eax, [ebx+0Eh]
sar     eax, 10h
sub     edx, eax
mov     [esp+28h+var_28], edx
mov     eax, [ebx+14h]
sar     eax, 10h
mov     edx, eax
sar     edx, 1
mov     ebp, [esp+28h+var_28]
add     ebp, edx
mov     [esp+28h+var_28], ebp
mov     edx, [esp+28h+var_28]
mov     [esp+28h+var_20], edx
xor     edx, edx
mov     dx, word ptr [esp+28h+var_24]
cmp     edx, esi
jge     short loc_449C86
xor     edx, edx
mov     dx, word ptr [esp+28h+var_20]
cmp     edx, eax
jge     short loc_449C86
mov     edx, 1
mov     eax, ecx
call    sub_44A7F9
mov     [ecx+44h], ax
mov     byte ptr [ecx+0ACh], 2
jmp     short loc_449CAF

loc_449C86:
mov     [esp+28h+var_1C], 0FFh
jmp     short loc_449CAF

loc_449C8D:
call    rand_
and     ah, 0Fh
mov     [ecx+64h], ax
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7E2
mov     [ecx+0ACh], al
mov     word ptr [ebx+1Eh], 1

loc_449CAF:
call    rand_
and     eax, 0Fh
mov     al, [edi+eax]
xor     ah, ah
mov     [ebx+8], ax
mov     dh, [esp+28h+var_1C]
cmp     dh, 0FFh
jz      short loc_449CD0
mov     al, dh
inc     al
add     [ecx+0Ah], al

loc_449CD0:
add     esp, 10h
jmp     loc_449FCD
sub_449B5B endp




sub_449CD8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     ebx, 64h ; 'd'
mov     edx, 40h ; '@'
call    sub_44A832
test    al, al
jz      short loc_449D20
cmp     byte ptr [esi+2], 2Ah ; '*'
jnz     loc_4493E9
xor     eax, eax
mov     al, [esi+0Ah]
mov     [edi+18h], ax
mov     byte ptr [esi+0Ah], 6
xor     eax, eax
mov     al, [esi+0ACh]
mov     [edi+1Ah], ax
jmp     loc_449FCE

loc_449D20:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, [edi+0Ah]
sar     eax, 10h
mov     edx, [edi+12h]
sar     edx, 10h
lea     ebx, [eax+edx]
mov     ecx, [esi+12h]
sar     ecx, 10h
cmp     ecx, ebx
jle     short loc_449D56
mov     ax, [edi+0Ch]
mov     cx, [edi+14h]
add     eax, ecx
jmp     short loc_449D66

loc_449D56:
sub     eax, edx
cmp     ecx, eax
jge     short loc_449D88
mov     ax, [edi+0Ch]
mov     dx, [edi+14h]
sub     eax, edx

loc_449D66:
mov     [esi+14h], ax
mov     ax, [esi+56h]
mov     edx, 1000h
sub     edx, eax
mov     [esi+64h], dx
mov     byte ptr [esi+0Ah], 5
mov     word ptr [edi+1Eh], 2
add     word ptr [edi+8], 0Ah

loc_449D88:
mov     eax, [edi+0Eh]
sar     eax, 10h
mov     ecx, [edi+14h]
sar     ecx, 10h
lea     ebx, [eax+ecx]
mov     edx, [esi+16h]
sar     edx, 10h
cmp     edx, ebx
jle     short loc_449DAD
mov     ax, [edi+10h]
mov     dx, [edi+16h]
add     eax, edx
jmp     short loc_449DBD

loc_449DAD:
sub     eax, ecx
cmp     edx, eax
jge     short loc_449DE0
mov     ax, [edi+10h]
mov     dx, [edi+16h]
sub     eax, edx

loc_449DBD:
mov     [esi+18h], ax
mov     eax, 800h
sub     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+64h], ax
mov     byte ptr [esi+0Ah], 5
mov     word ptr [edi+1Eh], 2
add     word ptr [edi+8], 0Ah

loc_449DE0:
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
mov     ax, [edi+8]
dec     ax
mov     [edi+8], ax
jnz     loc_449FCE
jmp     loc_4493E9
sub_449CD8 endp




sub_449E19 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bx, [eax+8]
dec     bx
mov     [eax+8], bx
jnz     short loc_449E32
mov     byte ptr [edx+0Ah], 1

loc_449E32:
pop     edx
pop     ebx
retn
sub_449E19 endp




sub_449E35 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+408h]
mov     ebx, 64h ; 'd'
mov     edx, 40h ; '@'
call    sub_44A832
test    al, al
jz      short loc_449E82
xor     eax, eax
mov     al, [esi+0Ah]
mov     [ecx+18h], ax
mov     byte ptr [esi+0Ah], 6
xor     eax, eax
mov     al, [esi+0ACh]
mov     [ecx+1Ah], ax
xor     eax, eax
mov     al, [esi+2]
call    sub_44A7D8
mov     [esi+0ACh], al
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_449E82:
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jnz     short loc_449E92
mov     byte ptr [esi+0Ah], 1

loc_449E92:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+56h]
add     eax, 80h
and     ah, 0Fh
mov     [esi+56h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_449E35 endp




sub_449EB8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+62h]
sar     eax, 10h
mov     ebx, 40h ; '@'
call    sub_4DE5F4
mov     edx, eax
test    ax, ax
jnz     loc_4494E5
mov     al, [esi+1Eh]
mov     [ecx+0Ah], al
jmp     loc_4494E5
sub_449EB8 endp




sub_449EF0 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+408h]
mov     ax, [eax+56h]
add     ah, 8
and     ah, 0Fh
mov     [edx+64h], ax
xor     eax, eax
mov     al, [edx+2]
call    sub_44A7E2
mov     [edx+0ACh], al
mov     word ptr [ecx+1Eh], 1
mov     byte ptr [edx+0Ah], 5
pop     edx
pop     ecx
retn
sub_449EF0 endp




sub_449F25 proc near
push    edx
lea     edx, [eax+408h]
mov     dl, [edx+3]
and     edx, 0FFh
call    ds:funcs_449F35[edx*4]
pop     edx
retn
sub_449F25 endp




sub_449F3E proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     edi, [eax+408h]
inc     byte ptr [edi+3]
mov     ax, [esi+56h]
mov     [edi+4], ax
mov     al, [esi+0ACh]
mov     [edi+2], al
xor     eax, eax
mov     al, [esi+2]
call    sub_44A7D8
mov     [esi+0ACh], al
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ebp, offset byte_5F8364
add     ebp, 14h
mov     eax, esi
add     eax, 14h
mov     [esp+1Ch+var_1C], eax
mov     ecx, 800h
mov     edx, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_449FD4
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
cwde
neg     eax

loc_449FB2:
sar     eax, 3
mov     [edi+6], ax

loc_449FB9:
xor     ecx, ecx
mov     cl, [esi+0Ch]

loc_449FBE:
lea     eax, [esi+14h]
xor     ebx, ebx
xor     edx, edx
call    sub_4A62D4

loc_449FCA:
add     esp, 4

loc_449FCD:
pop     ebp

loc_449FCE:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_449FD4:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
cwde
jmp     short loc_449FB2
sub_449F3E endp




sub_449FEC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+408h]
mov     ebp, offset dword_77E760
test    byte ptr [eax+0Dh], 40h
jnz     short loc_44A048
mov     ecx, [edi+4]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_44A048
xor     eax, eax
mov     al, [esi+2]
call    sub_44A7A0
mov     [esi+0ACh], al
inc     byte ptr [edi+3]

loc_44A048:
cmp     byte ptr [ebp+0], 0
jnz     loc_449FCD
and     byte ptr [edi], 0FBh
mov     byte ptr [edi+3], 3
xor     eax, eax
mov     al, [esi+2]
call    sub_44A7D8
mov     [esi+0ACh], al
jmp     loc_449FCD
sub_449FEC endp




sub_44A06E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+408h]
mov     ebp, offset dword_77E760
mov     ecx, [edi+4]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jge     short loc_44A048
xor     eax, eax
mov     al, [esi+2]
call    sub_44A7D8
mov     [esi+0ACh], al
dec     byte ptr [edi+3]
jmp     short loc_44A048
sub_44A06E endp




sub_44A0C6 proc near
push    edx
lea     edx, [eax+408h]
mov     dl, [edx+2]
cmp     dl, 1
jb      short loc_44A106
jbe     short loc_44A0E0
cmp     dl, 3
jz      short loc_44A0F9
xor     al, al
pop     edx
retn

loc_44A0E0:
mov     al, [eax+0Ah]
cmp     al, 5
jb      short loc_44A0F1
jbe     short loc_44A0F5
cmp     al, 8
jz      short loc_44A0F5
xor     al, al
pop     edx
retn

loc_44A0F1:
cmp     al, 4

loc_44A0F3:
jnz     short loc_44A106

loc_44A0F5:
mov     al, 1
pop     edx
retn

loc_44A0F9:
mov     al, [eax+0Ah]
cmp     al, 4
jb      short loc_44A106
jbe     short loc_44A0F5
cmp     al, 5
jmp     short loc_44A0F3

loc_44A106:
xor     al, al
pop     edx
retn
sub_44A0C6 endp




sub_44A10A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     ebx, [esi+4]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [esi+2]
sar     eax, 10h
call    sub_4DE5F4
mov     edx, eax
test    ax, ax
jz      short loc_44A145
test    byte ptr [ecx+0Dh], 80h
jnz     short loc_44A145
mov     eax, ecx
call    sub_44A0C6
test    al, al
jz      short loc_44A15F

loc_44A145:
mov     al, [esi+2]
mov     [ecx+0ACh], al
or      byte ptr [esi], 2
mov     dl, [ecx+0Dh]
and     dl, 7
mov     [ecx+9], dl
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44A15F:
add     dx, [ecx+56h]
and     dh, 0Fh
mov     [ecx+56h], dx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44A10A endp




sub_44A16F proc near
push    edx
lea     edx, [eax+408h]
mov     dl, [edx+3]
and     edx, 0FFh
call    ds:funcs_44A17F[edx*4]
pop     edx
retn
sub_44A16F endp




sub_44A188 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     ebx, [esi+4]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [esi+2]
sar     eax, 10h
call    sub_4DE5F4
mov     edx, eax
test    ax, ax
jz      short loc_44A1C3
test    byte ptr [ecx+0Dh], 80h
jnz     short loc_44A1C3
mov     eax, ecx
call    sub_44A0C6
test    al, al
jz      short loc_44A1DD

loc_44A1C3:
mov     al, [esi+2]
mov     [ecx+0ACh], al
or      byte ptr [esi], 2
mov     dl, [ecx+0Dh]
and     dl, 7
mov     [ecx+9], dl
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44A1DD:
add     dx, [ecx+56h]
and     dh, 0Fh
mov     [ecx+56h], dx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44A188 endp




sub_44A1ED proc near
push    edx
lea     edx, [eax+408h]
mov     dl, [edx+3]
and     edx, 0FFh
call    ds:funcs_44A1FD[edx*4]
pop     edx
retn
sub_44A1ED endp




sub_44A206 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     edi, [eax+408h]
mov     ax, [eax+56h]
mov     [edi+4], ax
mov     al, [esi+0ACh]
mov     [edi+2], al
mov     ebx, 0C8h
mov     edx, 0FAh
mov     eax, esi
call    sub_44A832
mov     ecx, esi
add     ecx, 14h
mov     [esp+1Ch+var_1C], ecx
mov     ebp, offset byte_5F8364
add     ebp, 14h
test    al, al
jz      short loc_44A2B6
xor     eax, eax
mov     al, [esi+2]
call    sub_44A7D8
mov     [esi+0ACh], al
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
test    ax, ax
jge     short loc_44A291
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
cwde
neg     eax
jmp     short loc_44A2A7

loc_44A291:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
cwde

loc_44A2A7:
sar     eax, 3
mov     [edi+6], ax
inc     byte ptr [edi+3]
mov     al, [esi+0Ch]
jmp     short loc_44A2FB

loc_44A2B6:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 20h ; ' '
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
test    ax, ax
jle     short loc_44A2D7
mov     eax, 1
jmp     short loc_44A2D9

loc_44A2D7:
xor     eax, eax

loc_44A2D9:
mov     [edi+6], ax
test    ax, ax
jz      short loc_44A2EB
mov     byte ptr [esi+0ACh], 3
jmp     short loc_44A2F2

loc_44A2EB:
mov     byte ptr [esi+0ACh], 4

loc_44A2F2:
mov     byte ptr [edi+3], 4
mov     al, [esi+0Ch]
inc     al

loc_44A2FB:
xor     ecx, ecx
mov     cl, al
jmp     loc_449FBE
sub_44A206 endp




sub_44A304 proc near
push    edx
mov     edx, eax
add     eax, 408h
cmp     byte ptr ds:dword_77E760, 0
jnz     short loc_44A335
and     byte ptr [eax], 0FBh
cmp     word ptr [eax+6], 0
jz      short loc_44A32B
mov     byte ptr [edx+0ACh], 5
inc     byte ptr [eax+3]
pop     edx
retn

loc_44A32B:
mov     byte ptr [edx+0ACh], 6
inc     byte ptr [eax+3]

loc_44A335:
pop     edx
retn
sub_44A304 endp




sub_44A337 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+408h]
cmp     byte ptr [eax+0A7h], 0
jge     short loc_44A36F
xor     eax, eax
mov     al, [edx+2]
call    sub_44A7D8
mov     [edx+0ACh], al
mov     al, [ecx+2]
mov     [edx+0ACh], al
or      byte ptr [ecx], 2
mov     cl, [edx+0Dh]
and     cl, 7
mov     [edx+9], cl

loc_44A36F:
pop     edx
pop     ecx
retn
sub_44A337 endp




sub_44A372 proc near
push    edx
lea     edx, [eax+408h]
mov     dl, [edx+3]
and     edx, 0FFh
call    ds:funcs_44A382[edx*4]
pop     edx
retn
sub_44A372 endp




sub_44A38B proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
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
add     eax, 408h
mov     [esp+34h+var_1C], eax
mov     ax, [ebp+56h]
mov     ecx, [esp+34h+var_1C]
mov     [ecx+4], ax
mov     al, [ebp+0ACh]
mov     [ecx+2], al
and     ds:byte_5F8364, 0FDh
mov     byte ptr ds:dword_5F836C+1, 10h
xor     dh, dh
mov     byte ptr ds:dword_5F836C+2, dh
lea     edi, [esp+34h+var_24]
lea     esi, [ebp+14h]
movsd
movsd
mov     eax, [ebp+12h]
sar     eax, 10h
mov     [esp+34h+var_34], eax
mov     eax, [ebp+14h]
sar     eax, 10h
sub     eax, 30h ; '0'
mov     [esp+34h+var_30], eax
mov     eax, [ebp+16h]
sar     eax, 10h
mov     [esp+34h+var_2C], eax
mov     ecx, ds:dword_77E964
add     ecx, 6Ch ; 'l'
mov     esi, offset byte_5F8364
add     esi, 14h
mov     edx, esi
lea     eax, [esp+34h+var_24]
call    sub_4DDDB4
mov     ebx, eax
mov     edx, 100h
mov     eax, esp
call    sub_42AAA8
xor     eax, eax
mov     al, [ebp+2]
call    sub_44A7D8
mov     [ebp+0ACh], al
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edi, [ebp+14h]
mov     ecx, 800h
mov     edx, esi
mov     eax, edi
call    sub_4DE552
test    ax, ax
jge     short loc_44A462
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, esi
mov     eax, edi
call    sub_4DE552
cwde
neg     eax
jmp     short loc_44A477

loc_44A462:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, esi
mov     eax, edi
call    sub_4DE552
cwde

loc_44A477:
sar     eax, 3
mov     ecx, [esp+34h+var_1C]
mov     [ecx+6], ax
inc     byte ptr [ecx+3]
add     esp, 1Ch
jmp     loc_449FCD
sub_44A38B endp




sub_44A48D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+408h]
mov     ebp, offset byte_5F8364
call    sub_42ABA2
test    eax, eax
jnz     short loc_44A4C0
xor     ecx, ecx
mov     cl, [esi+0Ch]
lea     eax, [esi+14h]
xor     ebx, ebx
mov     edx, 0Dh
call    sub_4A62D4
inc     byte ptr [edi+3]

loc_44A4C0:
mov     ecx, [edi+4]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     loc_449FCD
sub_44A48D endp




sub_44A4E7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+408h]
mov     ecx, [esi+4]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
cmp     byte ptr ds:dword_77E760, 0
jnz     short loc_44A545
and     byte ptr [esi], 0FBh
add     byte ptr [esi+3], 2
xor     eax, eax
mov     al, [edi+2]
call    sub_44A7D8
mov     [edi+0ACh], al
call    sub_42A98E
jmp     loc_449FCE

loc_44A545:
cmp     byte ptr ds:dword_77E784, 6
jnz     loc_449FCE
inc     byte ptr [esi+3]
jmp     loc_449FCE
sub_44A4E7 endp




sub_44A55A proc near
push    ecx
push    edx
lea     ecx, [eax+408h]
cmp     byte ptr ds:dword_77E784, 3
jnz     short loc_44A57F
call    sub_4A0E35
mov     edx, 0DCh
xor     eax, eax
call    sub_4A0E24
dec     byte ptr [ecx+3]

loc_44A57F:
pop     edx
pop     ecx
retn
sub_44A55A endp




sub_44A582 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+408h]
mov     edi, offset byte_5F8364
mov     ebx, [esi+4]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [esi+2]
sar     eax, 10h
call    sub_4DE5F4
mov     edx, eax
test    ax, ax
jz      short loc_44A5BC
test    byte ptr [ecx+0Dh], 80h
jz      loc_449491

loc_44A5BC:
call    sub_42ABA2
test    eax, eax
jnz     loc_449491
or      byte ptr [edi], 2
mov     byte ptr [edi+9], 0
mov     byte ptr [edi+0Ah], 0
mov     al, [esi+2]
mov     [ecx+0ACh], al
or      byte ptr [esi], 2
mov     al, [ecx+0Dh]
and     al, 7
mov     [ecx+9], al
jmp     loc_449491
sub_44A582 endp




sub_44A5ED proc near
push    edx
lea     edx, [eax+408h]
mov     dl, [edx+3]
and     edx, 0FFh
call    ds:funcs_44A5FD[edx*4]
pop     edx
retn
sub_44A5ED endp




sub_44A606 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     edi, [eax+408h]
inc     byte ptr [edi+3]
mov     ax, [esi+56h]
mov     [edi+4], ax
mov     al, [esi+0ACh]
mov     [edi+2], al
mov     byte ptr [esi+0ACh], 8
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ebp, offset byte_5F8364
add     ebp, 14h
mov     eax, esi
add     eax, 14h
mov     [esp+1Ch+var_1C], eax
mov     ecx, 800h
mov     edx, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_44A675
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
movsx   ecx, ax
neg     ecx
jmp     short loc_44A68D

loc_44A675:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
movsx   ecx, ax

loc_44A68D:
sar     ecx, 3
mov     [edi+6], cx
jmp     loc_449FB9
sub_44A606 endp




sub_44A699 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     ecx, [edi+4]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr ds:dword_77E760, 0
jnz     loc_449FCE
mov     byte ptr [esi+0ACh], 9
and     byte ptr [edi], 0FBh
inc     byte ptr [edi+3]
jmp     loc_449FCE
sub_44A699 endp




sub_44A6EC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     ebx, [esi+4]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [esi+2]
sar     eax, 10h
call    sub_4DE5F4
mov     edx, eax
cmp     byte ptr [ecx+0A7h], 0
jge     loc_4494E5
test    ax, ax
jnz     loc_4494E5
xor     eax, eax
mov     al, [ecx+2]
call    sub_44A7D8
mov     [ecx+0ACh], al
mov     al, [esi+2]
mov     [ecx+0ACh], al
or      byte ptr [esi], 2
mov     al, [ecx+0Dh]
and     al, 7
mov     [ecx+9], al
jmp     loc_4494E5
sub_44A6EC endp




sub_44A750 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
mov     ecx, ds:dword_5F84E8
cmp     eax, ecx
jnz     short loc_44A79C
mov     bl, [ecx+2]
cmp     bl, 34h ; '4'
jnz     short loc_44A771
mov     byte ptr [ecx+9], 6
jmp     short loc_44A78B

loc_44A771:
cmp     bl, 11h
jnz     short loc_44A77C
mov     byte ptr [ecx+9], 7
jmp     short loc_44A78B

loc_44A77C:
cmp     bl, 49h ; 'I'
jnz     short loc_44A787
mov     byte ptr [ecx+9], 8
jmp     short loc_44A78B

loc_44A787:
mov     byte ptr [ecx+9], 4

loc_44A78B:
mov     byte ptr [edx+3], 0
mov     ch, [edx]
or      ch, 4
mov     [edx], ch
mov     al, ch
and     al, 0FDh
mov     [edx], al

loc_44A79C:
pop     edx
pop     ecx
pop     ebx
retn
sub_44A750 endp




sub_44A7A0 proc near
cmp     al, 2Ah ; '*'
jb      short loc_44A7BA
jbe     short loc_44A7C8
cmp     al, 50h ; 'P'
jb      short loc_44A7B3
jbe     short loc_44A7C5
cmp     al, 53h ; 'S'
jz      short loc_44A7CE
mov     al, 8
retn

loc_44A7B3:
cmp     al, 39h ; '9'
jz      short loc_44A7C5
mov     al, 8
retn

loc_44A7BA:
test    al, al
jbe     short loc_44A7C5
cmp     al, 11h
jz      short loc_44A7CB
mov     al, 8
retn

loc_44A7C5:
xor     al, al
retn

loc_44A7C8:
mov     al, 9
retn

loc_44A7CB:
mov     al, 1
retn

loc_44A7CE:
call    rand_
and     al, 1
add     al, 8
retn
sub_44A7A0 endp




sub_44A7D8 proc near
cmp     al, 11h
jnz     short loc_44A7DF
mov     al, 1
retn

loc_44A7DF:
xor     al, al
retn
sub_44A7D8 endp




sub_44A7E2 proc near
cmp     al, 4Ch ; 'L'
jb      short loc_44A7EF
jbe     short loc_44A7F3
cmp     al, 4Dh ; 'M'
jz      short loc_44A7F3
mov     al, 1
retn

loc_44A7EF:
cmp     al, 39h ; '9'
jnz     short loc_44A7F6

loc_44A7F3:
xor     al, al
retn

loc_44A7F6:
mov     al, 1
retn
sub_44A7E2 endp




sub_44A7F9 proc near
and     edx, 0FFh
dec     edx
jz      short loc_44A821
mov     dl, [eax+2]
cmp     dl, 2Ah ; '*'
jnz     short loc_44A810
mov     eax, 40h ; '@'
retn

loc_44A810:
cmp     dl, 5
jnz     short loc_44A81B
mov     eax, 140h
retn

loc_44A81B:
mov     eax, 180h
retn

loc_44A821:
mov     al, [eax+2]
and     eax, 0FFh
mov     al, ds:byte_5156E8[eax]
xor     ah, ah
retn
sub_44A7F9 endp




sub_44A832 proc near

var_20= dword ptr -20h
var_18= dword ptr -18h
var_10= dword ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 14h
mov     edi, eax
mov     [esp+20h+var_10], ebx
shl     edx, 4
movsx   edx, dx
mov     eax, [eax+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     esi, esp
call    sub_4DD510
mov     eax, [edi+12h]
sar     eax, 10h
mov     edx, [esp+20h+var_20]
sar     edx, 10h
add     edx, eax
mov     eax, ds:dword_5F8376
sar     eax, 10h
sub     edx, eax
xor     eax, eax
mov     ax, word ptr [esp+20h+var_10]
add     edx, eax
mov     ebx, edx
mov     esi, [edi+16h]
sar     esi, 10h
mov     edx, [esp+20h+var_18]
sar     edx, 10h
add     esi, edx
mov     edx, ds:dword_5F837A
sar     edx, 10h
sub     esi, edx
lea     edx, [esi+eax]
mov     esi, edx
add     eax, eax
xor     edx, edx
mov     dx, bx
cmp     edx, eax
jge     short loc_44A8AF
xor     edx, edx
mov     dx, si
cmp     edx, eax
jge     short loc_44A8AF
mov     al, 1
jmp     short loc_44A8B1

loc_44A8AF:
xor     al, al

loc_44A8B1:
add     esp, 14h
pop     edi
pop     esi
pop     ecx
retn
sub_44A832 endp




sub_44A8B8 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_44A8BE[edx*4]
pop     edx
retn
sub_44A8B8 endp




sub_44A8C7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+438h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
cmp     byte ptr [ecx+3], 0
jz      short loc_44A8E4
lea     edx, [ecx+3]
jmp     short loc_44A8E6

loc_44A8E4:
xor     edx, edx

loc_44A8E6:
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ebx], 0
mov     dword ptr [ebx+4], 0
mov     word ptr [ebx+0Ch], 0F204h
mov     word ptr [ebx+0Eh], 0
mov     word ptr [ebx+10h], 0B90h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     word ptr [ecx+6Eh], 0
mov     dx, [ecx+6Eh]
mov     [ecx+0B0h], dx
mov     [ecx+0B2h], dx
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     eax, 0Fh
call    sub_47E8B8
mov     eax, ecx
call    sub_44A999
pop     edx
pop     ecx
pop     ebx
retn
sub_44A8C7 endp




sub_44A999 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+438h]
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
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     [edx+2], ax
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_44A9E6[ecx*4]
test    byte ptr [edx], 1
jz      short loc_44AA02
mov     eax, ebp
call    sub_4DE2F6
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_44AA02:
mov     al, [ebp+0ADh]
mov     bh, [ebp+0ACh]
cmp     al, bh
jz      short loc_44AA21
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_44AA28

loc_44AA21:
mov     eax, ebp
call    sub_4DEADD

loc_44AA28:
test    byte ptr [ebp+0], 2
jz      short loc_44AA41
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44AA41:
mov     ecx, 1000000h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
pop     ebp

loc_44AA58:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44A999 endp



; Attributes: thunk

sub_44AA5E proc near
jmp     sub_4DE2F6
sub_44AA5E endp




sub_44AA63 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+438h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_44AA80
cmp     al, 1
jz      short loc_44AAA0
jmp     loc_44AB05

loc_44AA80:
inc     al
mov     [esi+0Ah], al
mov     word ptr [esi+44h], 1C0h
mov     ecx, [esi+9]
sar     ecx, 18h
lea     eax, [esi+14h]
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4

loc_44AAA0:
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+0Ch]
lea     eax, [esi+14h]
mov     ecx, 20h ; ' '
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
mov     eax, [esi+12h]
sar     eax, 10h
mov     ebx, [edi+0Ah]
sar     ebx, 10h
sub     eax, ebx
mov     ebx, eax
mov     edx, [esi+16h]
sar     edx, 10h
mov     eax, [edi+0Eh]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
imul    ebx, ebx
imul    eax, edx
add     ebx, eax
cmp     ebx, 800h
jge     short loc_44AB05
or      byte ptr [edi], 1

loc_44AB05:
cmp     byte ptr [esi+0A6h], 1
jnz     short loc_44AB1C
xor     ebx, ebx
xor     edx, edx
mov     eax, 112h
call    sub_4D89E4

loc_44AB1C:
cmp     ds:byte_5F83D5, 0
jge     loc_44AA58
mov     bl, [edi]
test    bl, 2
jnz     loc_44AA58
mov     bh, bl
or      bh, 2
mov     [edi], bh
xor     edx, edx
xor     eax, eax
call    sub_4A0E24
jmp     loc_44AA58
sub_44AA63 endp




sub_44AB49 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_44AB4F[edx*4]
pop     edx
retn
sub_44AB49 endp

db 90h
jpt_44AC30 dd offset loc_44AC37 ; jump table for switch statement
dd offset loc_44AC4B
dd offset loc_44AC55
dd offset loc_44AC6F
dd offset loc_44AC79



sub_44AB6D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ebp+0], ah
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 1D701D7h
mov     dword ptr [ebp+15Ch], 1D7h
mov     word ptr [ebp+15Eh], 4210h
mov     word ptr [ecx], 0
mov     dword ptr [ecx+4], 0
mov     edi, offset unk_559E28
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    0
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ecx+0Ch]
mov     ecx, 100h
mov     edx, offset unk_559E28
call    sub_4DD4C5
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], offset unk_5159D0
mov     dword ptr [ebp+10h], offset unk_5159DC
mov     al, [ebp+3]
cmp     al, 4           ; switch 5 cases
ja      short def_44AC30 ; jumptable 0044AC30 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_44AC30[ecx*4] ; switch jump

loc_44AC37:             ; jumptable 0044AC30 case 0
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0

loc_44AC3F:
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
jmp     short loc_44AC8B

loc_44AC4B:             ; jumptable 0044AC30 case 1
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 2
jmp     short loc_44AC3F

loc_44AC55:             ; jumptable 0044AC30 case 2
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 3
mov     word ptr [ebp+0Ah], 0
mov     ebx, 1Dh
mov     edx, 10h
jmp     short loc_44AC8B

loc_44AC6F:             ; jumptable 0044AC30 case 3
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 4
jmp     short loc_44AC3F

loc_44AC79:             ; jumptable 0044AC30 case 4
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 5
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx

loc_44AC8B:
mov     eax, ebp
call    sub_4DE96B

def_44AC30:             ; jumptable 0044AC30 default case
mov     eax, ebp
call    sub_44ACA0

def_44B06A:             ; jumptable 0044B06A default case, case 5
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44AB6D endp




sub_44ACA0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+408h]
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
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     [edx+2], ax
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_44ACED[ecx*4]
test    byte ptr [edx], 1
jz      short loc_44AD06
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_44AD06:
mov     al, [ebp+0ADh]
mov     bh, [ebp+0ACh]
cmp     al, bh
jz      short loc_44AD25
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_44AD2C

loc_44AD25:
mov     eax, ebp
call    sub_4DEADD

loc_44AD2C:
test    byte ptr [ebp+0], 2
jz      short loc_44AD45
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44AD45:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
jmp     def_44B06A      ; jumptable 0044B06A default case, case 5
sub_44ACA0 endp



; Attributes: thunk

sub_44AD5D proc near
jmp     sub_4DE2F6
sub_44AD5D endp




sub_44AD62 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_44AD76
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_44AD76:
pop     edx
retn
sub_44AD62 endp




sub_44AD78 proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_44AD8A
jbe     short loc_44AD9A
cmp     dl, 2
jz      short loc_44ADAF
pop     edx
retn

loc_44AD8A:
test    dl, dl
jnz     short loc_44ADC4
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_44AD9A:
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_44ADC4
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 8
pop     edx
retn

loc_44ADAF:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_44ADC4
dec     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_44ADC4:
pop     edx
retn
sub_44AD78 endp




sub_44ADC6 proc near
push    edx
mov     edx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_44ADD6
cmp     al, 1
jz      short loc_44ADE2
pop     edx
retn

loc_44ADD6:
inc     al
mov     [edx+0Ah], al
mov     byte ptr [edx+0ACh], 0

loc_44ADE2:
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      short loc_44AE04
mov     eax, 609h
call    sub_47EA91
inc     byte ptr [edx+0Ah]
mov     byte ptr [edx+0ACh], 10h

loc_44AE04:
pop     edx
retn
sub_44ADC6 endp

db 8Dh, 40h, 0
jpt_44AE3C dd offset loc_44AE43 ; jump table for switch statement
dd offset loc_44AE48
dd offset loc_44AE79
dd offset loc_44AE97
dd offset loc_44AEC8
dd offset loc_44AEEF



sub_44AE21 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     edx, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_44AE3C      ; jumptable 0044AE3C default case
xor     ebx, ebx
mov     bl, al
jmp     jpt_44AE3C[ebx*4] ; switch jump

loc_44AE43:             ; jumptable 0044AE3C case 0
inc     al
mov     [esi+0Ah], al

loc_44AE48:             ; jumptable 0044AE3C case 1
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      def_44AE3C      ; jumptable 0044AE3C default case
mov     eax, 609h
call    sub_47EA91
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 14h
mov     word ptr [edx+4], 46h ; 'F'
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44AE79:             ; jumptable 0044AE3C case 2
cmp     byte ptr [esi+0A7h], 0
jge     def_44AE3C      ; jumptable 0044AE3C default case
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 15h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44AE97:             ; jumptable 0044AE3C case 3
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      def_44AE3C      ; jumptable 0044AE3C default case
mov     eax, 609h
call    sub_47EA91
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 11h
mov     word ptr [esi+56h], 800h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44AEC8:             ; jumptable 0044AE3C case 4
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      short def_44AE3C ; jumptable 0044AE3C default case
mov     eax, 609h
call    sub_47EA91
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44AEEF:             ; jumptable 0044AE3C case 5
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 40h ; '@'
mov     edx, offset unk_5159E8
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short def_44AE3C ; jumptable 0044AE3C default case
mov     eax, 607h
call    sub_47E8B8
mov     byte ptr [esi+0ACh], 11h
inc     byte ptr [esi+0Ah]

def_44AE3C:             ; jumptable 0044AE3C default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44AE21 endp

db 8Dh, 40h, 0
jpt_44AF60 dd offset loc_44AF67 ; jump table for switch statement
dd offset loc_44AF6C
dd offset loc_44AF9D
dd offset def_44AF60



sub_44AF45 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     edx, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_44AF60      ; jumptable 0044AF60 default case, case 3
xor     ebx, ebx
mov     bl, al
jmp     jpt_44AF60[ebx*4] ; switch jump

loc_44AF67:             ; jumptable 0044AF60 case 0
inc     al
mov     [esi+0Ah], al

loc_44AF6C:             ; jumptable 0044AF60 case 1
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      def_44AF60      ; jumptable 0044AF60 default case, case 3
mov     eax, 609h
call    sub_47EA91
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 2
mov     word ptr [edx+4], 5Ah ; 'Z'
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44AF9D:             ; jumptable 0044AF60 case 2
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 50h ; 'P'
mov     edx, (offset dword_5159EE+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 140h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     eax, [esi+12h]
sar     eax, 10h
mov     edx, ds:dword_5159EE
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     ebx, [esi+16h]
sar     ebx, 10h
mov     eax, ds:dword_5159F2
sar     eax, 10h
sub     ebx, eax
mov     eax, ebx
imul    edx, edx
imul    eax, ebx
add     eax, edx
cmp     eax, 800h
jge     short loc_44B018
mov     eax, 607h
call    sub_47E8B8
inc     byte ptr [esi+0Ah]

loc_44B018:
cmp     byte ptr [esi+0A6h], 1
jnz     short def_44AF60 ; jumptable 0044AF60 default case, case 3
xor     ebx, ebx
xor     edx, edx
mov     eax, 10Bh
call    sub_4D89E4

def_44AF60:             ; jumptable 0044AF60 default case, case 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44AF45 endp

db 90h
jpt_44B06A dd offset loc_44B071 ; jump table for switch statement
dd offset loc_44B0A0
dd offset loc_44B0CF
dd offset loc_44B14F
dd offset loc_44B18D
dd offset def_44B06A



sub_44B04D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     edx, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_44B06A      ; jumptable 0044B06A default case, case 5
and     eax, 0FFh
jmp     jpt_44B06A[eax*4] ; switch jump

loc_44B071:             ; jumptable 0044B06A case 0
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_44B084
mov     byte ptr [esi+0ACh], 8
inc     byte ptr [esi+0Ah]

loc_44B084:
mov     ecx, [edx+184h]
cmp     esi, ecx
jnz     def_44B06A      ; jumptable 0044B06A default case, case 5
mov     dword ptr [edx+184h], 0
mov     byte ptr [ecx+0Ah], 2

loc_44B0A0:             ; jumptable 0044B06A case 1
cmp     byte ptr [esi+0A7h], 0
jge     short loc_44B0B3
mov     byte ptr [esi+0ACh], 0
dec     byte ptr [esi+0Ah]

loc_44B0B3:
mov     ebx, [edx+184h]
cmp     esi, ebx
jnz     def_44B06A      ; jumptable 0044B06A default case, case 5
mov     dword ptr [edx+184h], 0
mov     byte ptr [ebx+0Ah], 2

loc_44B0CF:             ; jumptable 0044B06A case 2
mov     eax, 604h
call    sub_47E8B8
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Bh], 10h
mov     byte ptr [esi+0ACh], 0
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edi, [edx+14h]
lea     ebp, [esi+14h]
mov     ecx, 800h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_44B11D
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552
neg     eax
jmp     short loc_44B131

loc_44B11D:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552

loc_44B131:
sar     eax, 3
mov     [esi+64h], ax
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0
mov     word ptr [esi+48h], 0
jmp     def_44B06A      ; jumptable 0044B06A default case, case 5

loc_44B14F:             ; jumptable 0044B06A case 3
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
test    byte ptr ds:dword_55BD7C+2, 20h
jz      def_44B06A      ; jumptable 0044B06A default case, case 5
mov     byte ptr [esi+0ACh], 8
inc     byte ptr [esi+0Ah]
jmp     def_44B06A      ; jumptable 0044B06A default case, case 5

loc_44B18D:             ; jumptable 0044B06A case 4
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jge     def_44B06A      ; jumptable 0044B06A default case, case 5
mov     byte ptr [esi+0ACh], 0
dec     byte ptr [esi+0Ah]
jmp     def_44B06A      ; jumptable 0044B06A default case, case 5
sub_44B04D endp




sub_44B1CB proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_44B1D1[edx*4]
pop     edx
retn
sub_44B1CB endp




sub_44B1DA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+438h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
cmp     byte ptr [ecx+3], 0
jz      short loc_44B1F7
lea     edx, [ecx+3]
jmp     short loc_44B1F9

loc_44B1F7:
xor     edx, edx

loc_44B1F9:
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ebx], 0
mov     dword ptr [ebx+4], 0
mov     word ptr [ebx+0Ch], 0F204h
mov     word ptr [ebx+0Eh], 0
mov     word ptr [ebx+10h], 190h
mov     word ptr [ebx+0Ah], 0
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     word ptr [ecx+6Eh], 0
mov     dx, [ecx+6Eh]
mov     [ecx+0B0h], dx
mov     [ecx+0B2h], dx
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_44B2A8
pop     edx
pop     ecx
pop     ebx
retn
sub_44B1DA endp




sub_44B2A8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+438h]
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
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     [ecx+2], ax
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_44B2F5[edx*4]
test    byte ptr [ecx], 1
jz      short loc_44B311
mov     eax, ebp
call    sub_4DE2F6
mov     word ptr [ebp+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_44B311:
mov     al, [ebp+0ADh]
cmp     al, [ebp+0ACh]
jz      short loc_44B332
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_44B339

loc_44B332:
mov     eax, ebp
call    sub_4DEB53

loc_44B339:
mov     ax, [ecx+0Ah]
mov     ds:word_560E16, ax
mov     eax, ebp
call    sub_4DF795
test    byte ptr [ebp+0], 2
jz      short loc_44B363
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44B363:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697

def_44B479:             ; jumptable 0044B479 default case, case 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44B2A8 endp



; Attributes: thunk

sub_44B37D proc near
jmp     sub_4DE2F6
sub_44B37D endp




sub_44B382 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_44B396
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_44B396:
pop     edx
retn
sub_44B382 endp




sub_44B398 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
jbe     short loc_44B3A7
cmp     dl, 1
jz      short loc_44B3B5
pop     edx
retn

loc_44B3A7:
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 13h
pop     edx
retn

loc_44B3B5:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_44B3C8
mov     byte ptr [eax+9], 4
mov     word ptr [eax+0Ah], 0

loc_44B3C8:
pop     edx
retn
sub_44B398 endp




sub_44B3CA proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_44B3D7
jbe     short loc_44B3E9
pop     edx
retn

loc_44B3D7:
test    dl, dl
jnz     short loc_44B408
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 11h
pop     edx
retn

loc_44B3E9:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_44B408
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0
mov     eax, 61Fh
call    sub_47E8B8

loc_44B408:
pop     edx
retn
sub_44B3CA endp




sub_44B40A proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_44B417
jbe     short loc_44B429
pop     edx
retn

loc_44B417:
test    dl, dl
jnz     short loc_44B43E
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 12h
pop     edx
retn

loc_44B429:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_44B43E
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_44B43E:
pop     edx
retn
sub_44B40A endp

db 8Dh, 40h, 0
jpt_44B479 dd offset loc_44B480 ; jump table for switch statement
dd offset loc_44B498
dd offset loc_44B4D2
dd offset loc_44B4E7
dd offset def_44B479



sub_44B457 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+438h]
mov     ebp, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_44B479      ; jumptable 0044B479 default case, case 4
xor     edx, edx
mov     dl, al
jmp     jpt_44B479[edx*4] ; switch jump

loc_44B480:             ; jumptable 0044B479 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 1
mov     word ptr [esi+64h], 20h ; ' '
mov     word ptr [edi+4], 28h ; '('

loc_44B498:             ; jumptable 0044B479 case 1
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

loc_44B4BA:
mov     bx, [edi+4]
dec     bx
mov     [edi+4], bx
jnz     def_44B479      ; jumptable 0044B479 default case, case 4
inc     byte ptr [esi+0Ah]
jmp     def_44B479      ; jumptable 0044B479 default case, case 4

loc_44B4D2:             ; jumptable 0044B479 case 2
mov     byte ptr [esi+0ACh], 0
inc     byte ptr [esi+0Ah]
mov     word ptr [edi+4], 14h
jmp     def_44B479      ; jumptable 0044B479 default case, case 4

loc_44B4E7:             ; jumptable 0044B479 case 3
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     edx, [esi+54h]
sar     edx, 10h
mov     ebx, [edi+8]
sar     ebx, 10h
add     ebx, edx
and     ebx, 0FFFh
lea     edx, [ebp+14h]
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [edi+0Ah]
and     ah, 0Fh
mov     [edi+0Ah], ax
jmp     short loc_44B4BA
sub_44B457 endp




sub_44B519 proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_44B52B
jbe     short loc_44B53B
cmp     dl, 2
jz      short loc_44B550
pop     edx
retn

loc_44B52B:
test    dl, dl
jnz     short loc_44B565
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_44B53B:
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_44B565
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 8
pop     edx
retn

loc_44B550:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_44B565
dec     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_44B565:
pop     edx
retn
sub_44B519 endp




sub_44B567 proc near
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
lea     edx, [eax+408h]
cmp     byte ptr [eax+8], 0
jnz     short loc_44B5AA
mov     eax, ebp
call    sub_44B60C
jmp     short loc_44B5B1

loc_44B5AA:
mov     eax, ebp
call    sub_44B703

loc_44B5B1:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
test    byte ptr [ebp+0], 2
jz      short loc_44B5DD
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44B5DD:
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+0ADh]
jz      short loc_44B5FE
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_44B605

loc_44B5FE:
mov     eax, ebp
call    sub_4DEADD

loc_44B605:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44B567 endp




sub_44B60C proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
lea     edx, [ecx+3]
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_44B62B
mov     eax, ecx
call    sub_4DD0F8
jmp     short loc_44B632

loc_44B62B:
mov     eax, ecx
call    sub_4DD107

