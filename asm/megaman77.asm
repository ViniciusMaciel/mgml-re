loc_4B58BA:
mov     ecx, esi
shl     ecx, 5
mov     ebx, edx
mov     cx, ds:word_5311F4[ecx+ebx*2]
mov     [eax+ebx*2+124h], cx
inc     edx
cmp     edx, 10h
jb      short loc_4B58BA
mov     dx, [eax+124h]
mov     bx, [eax+126h]
or      edx, ebx
mov     [eax+144h], dx
mov     dx, [eax+124h]
mov     [eax+146h], dx
mov     dx, [eax+12Ch]
mov     cx, [eax+12Eh]
or      edx, ecx
mov     [eax+148h], dx
mov     dx, [eax+12Eh]
mov     [eax+14Ah], dx
mov     dx, [eax+12Ch]
mov     si, [eax+12Eh]
or      edx, esi
mov     [eax+14Ch], dx
mov     dx, [eax+12Ch]
mov     [eax+14Eh], dx
mov     dx, [eax+124h]
mov     di, [eax+126h]
or      edx, edi
mov     [eax+150h], dx
mov     dx, [eax+124h]
mov     [eax+152h], dx
mov     bx, [eax+126h]
or      edx, ebx
mov     [eax+154h], dx
mov     dx, [eax+126h]
mov     [eax+156h], dx
mov     dx, [eax+12Ch]
mov     cx, [eax+12Eh]
or      edx, ecx
mov     [eax+158h], dx
mov     dx, [eax+12Ch]
mov     [eax+15Ah], dx
mov     si, [eax+12Eh]
or      edx, esi
mov     [eax+15Ch], dx
mov     dx, [eax+12Eh]
mov     [eax+15Eh], dx
mov     dx, [eax+124h]
mov     di, [eax+126h]
or      edx, edi
mov     [eax+160h], dx
mov     dx, [eax+126h]
mov     [eax+162h], dx
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4B58B2 endp




sub_4B59F6 proc near
push    edx
mov     edx, [eax+16Dh]
sar     edx, 18h
call    ds:funcs_4B5A00[edx*4]
pop     edx
retn
sub_4B59F6 endp




sub_4B5A09 proc near
push    edx
mov     edx, [eax+16Eh]
sar     edx, 18h
call    ds:funcs_4B5A13[edx*4]
pop     edx
retn
sub_4B5A09 endp

db 8Bh, 0C0h
jpt_4B5A5E dd offset loc_4B5A65 ; jump table for switch statement
dd offset loc_4B5A94
dd offset loc_4B5AFD
dd offset loc_4B5B58
dd offset loc_4B5B9F



sub_4B5A32 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edi, [eax+16Dh]
sar     edi, 18h
xor     ebx, ebx
mov     bx, [eax+11Ch]
mov     dl, [eax+178h]
cmp     dl, 4           ; switch 5 cases
ja      def_4B5A5E      ; jumptable 004B5A5E default case
xor     eax, eax
mov     al, dl
jmp     jpt_4B5A5E[eax*4] ; switch jump

loc_4B5A65:             ; jumptable 004B5A5E case 0
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     dh, [esi+100h]
cmp     dh, ds:byte_550F78[eax*4]
jnz     def_4B5A5E      ; jumptable 004B5A5E default case
add     dl, 2
mov     [esi+178h], dl

loc_4B5A88:
or      byte ptr [esi+174h], 10h
jmp     def_4B5A5E      ; jumptable 004B5A5E default case

loc_4B5A94:             ; jumptable 004B5A5E case 1
test    byte ptr [esi+174h], 4
jnz     short loc_4B5ABE
mov     edx, edi
mov     eax, edi
shl     eax, 2
sub     eax, edi
xor     ebx, ebx
mov     bl, ds:byte_550F78[eax*4]
xor     edx, edi
mov     dl, [esi+0ACh]
mov     eax, esi
call    sub_4DE83A

loc_4B5ABE:
mov     eax, esi
call    sub_4B57B5
mov     [esi+104h], al
mov     eax, edi
shl     eax, 2
sub     eax, edi
xor     ecx, ecx
mov     cl, ds:byte_550F78[eax*4]
xor     ebx, ebx
mov     bl, [esi+104h]
mov     al, [esi+174h]
and     al, 3
movsx   edx, al
mov     eax, esi
call    sub_4DE8EE
inc     byte ptr [esi+178h]
jmp     short loc_4B5A88

loc_4B5AFD:             ; jumptable 004B5A5E case 2
and     byte ptr [esi+174h], 0CFh
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 2
cmp     ds:byte_550F7B[eax], 0
jz      short loc_4B5B46
mov     edx, edi
cmp     word ptr [esi+edx*8+5FAh], 0
jle     short loc_4B5B46
xor     ecx, ecx
mov     cl, ds:byte_550F79[eax]
mov     eax, esi
call    sub_4EE64E
add     eax, ecx
xor     edx, edx
mov     dl, [esi+100h]
cmp     edx, eax
jz      short loc_4B5B52
jmp     def_4B5A5E      ; jumptable 004B5A5E default case

loc_4B5B46:
add     byte ptr [esi+178h], 2
jmp     def_4B5A5E      ; jumptable 004B5A5E default case

loc_4B5B52:
inc     byte ptr [esi+178h]

loc_4B5B58:             ; jumptable 004B5A5E case 3
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     dl, [esi+100h]
cmp     dl, ds:byte_550F7A[eax*4]
jnz     short loc_4B5B76
inc     byte ptr [esi+178h]
jmp     short def_4B5A5E ; jumptable 004B5A5E default case

loc_4B5B76:
xor     eax, eax
mov     ax, [esi+13Ch]
test    ebx, eax
jz      short def_4B5A5E ; jumptable 004B5A5E default case
mov     al, [esi+175h]
and     al, 3
cmp     al, 3
jnz     short def_4B5A5E ; jumptable 004B5A5E default case
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 2
jmp     short def_4B5A5E ; jumptable 004B5A5E default case

loc_4B5B9F:             ; jumptable 004B5A5E case 4
mov     eax, [esi+100h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4B5A5E ; jumptable 004B5A5E default case
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 0
test    edi, edi
jnz     short def_4B5A5E ; jumptable 004B5A5E default case
mov     word ptr [esi+44h], 0

def_4B5A5E:             ; jumptable 004B5A5E default case
test    edi, edi
jnz     short loc_4B5BF2
cmp     ds:byte_77E807, 0
jnz     short loc_4B5C13
cmp     dword ptr [esi+198h], 0
jz      short loc_4B5BF8

loc_4B5BDB:
mov     word ptr [esi+44h], 0FD00h

loc_4B5BE1:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4B527B

loc_4B5BF2:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B5BF8:
mov     di, [esi+44h]
add     edi, 80h
mov     [esi+44h], di
test    di, di
jle     short loc_4B5BE1
mov     word ptr [esi+44h], 0
jmp     short loc_4B5BE1

loc_4B5C13:
mov     word ptr [esi+44h], 0
jmp     short loc_4B5BF2
sub_4B5A32 endp

db 8Dh, 40h, 0
jpt_4B5C4D dd offset loc_4B5C54 ; jump table for switch statement
dd offset loc_4B5C93
dd offset loc_4B5C93
dd offset loc_4B5CA2



sub_4B5C2E proc near
push    ebx
push    ecx
push    edx
mov     ecx, [eax+16Dh]
sar     ecx, 18h
mov     bl, [eax+178h]
cmp     bl, 3           ; switch 4 cases
ja      def_4B5C4D      ; jumptable 004B5C4D default case
xor     edx, edx
mov     dl, bl
jmp     jpt_4B5C4D[edx*4] ; switch jump

loc_4B5C54:             ; jumptable 004B5C4D case 0
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     cl, [eax+100h]
cmp     cl, ds:byte_550F78[edx*4]
jnz     short loc_4B5C83
add     bl, 2
mov     [eax+178h], bl
or      byte ptr [eax+174h], 10h
cmp     ds:byte_77E807, 1
jnz     short loc_4B5C8B

loc_4B5C83:
mov     word ptr [eax+44h], 0
jmp     short def_4B5C4D ; jumptable 004B5C4D default case

loc_4B5C8B:
mov     word ptr [eax+44h], 0FD00h
jmp     short def_4B5C4D ; jumptable 004B5C4D default case

loc_4B5C93:             ; jumptable 004B5C4D cases 1,2
and     byte ptr [eax+174h], 0CFh
inc     byte ptr [eax+178h]
jmp     short def_4B5C4D ; jumptable 004B5C4D default case

loc_4B5CA2:             ; jumptable 004B5C4D case 3
mov     edx, [eax+100h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_4B5C4D ; jumptable 004B5C4D default case
mov     byte ptr [eax+174h], 0
mov     byte ptr [eax+177h], 0

def_4B5C4D:             ; jumptable 004B5C4D default case
mov     dx, [eax+44h]
add     edx, 0E0h
mov     [eax+44h], dx
test    dx, dx
jge     short loc_4B5CE4
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4B527B
pop     edx
pop     ecx
pop     ebx
retn

loc_4B5CE4:
mov     word ptr [eax+44h], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4B5C2E endp

jpt_4B5D32 dd offset loc_4B5D39 ; jump table for switch statement
dd offset loc_4B5D68
dd offset loc_4B5D68
dd offset loc_4B5DF0
dd offset loc_4B5E3B



sub_4B5D02 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
mov     edi, [eax+16Dh]
sar     edi, 18h
mov     ax, [eax+11Ch]
mov     [esp+18h+var_18], eax
mov     cl, [esi+178h]
cmp     cl, 4           ; switch 5 cases
ja      def_4B5D32      ; jumptable 004B5D32 default case
xor     eax, eax
mov     al, cl
jmp     jpt_4B5D32[eax*4] ; switch jump

loc_4B5D39:             ; jumptable 004B5D32 case 0
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     dl, [esi+100h]
cmp     dl, ds:byte_550F78[eax*4]
jnz     def_4B5D32      ; jumptable 004B5D32 default case
add     cl, 2
mov     [esi+178h], cl
or      byte ptr [esi+174h], 10h
jmp     def_4B5D32      ; jumptable 004B5D32 default case

loc_4B5D68:             ; jumptable 004B5D32 cases 1,2
and     byte ptr [esi+174h], 0CFh
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 2
mov     al, [esi+100h]
cmp     al, ds:byte_550F7A[ecx]
jb      short loc_4B5DC4
xor     ebx, ebx
mov     bl, ds:byte_550F79[ecx]
xor     edx, edx
mov     dl, [esi+0ACh]
mov     eax, esi
call    sub_4DE83A
mov     cl, ds:byte_550F79[ecx]
and     ecx, 0FFh
xor     ebx, ebx
mov     bl, [esi+104h]
mov     al, [esi+174h]
and     al, 3
movsx   edx, al
mov     eax, esi
call    sub_4DE8EE

loc_4B5DC4:
xor     eax, eax
mov     ax, [esi+13Ch]
xor     edx, edx
mov     dx, word ptr [esp+18h+var_18]
test    edx, eax
jz      short loc_4B5DE8
mov     eax, edi
cmp     word ptr [esi+eax*8+5FAh], 0
jg      def_4B5D32      ; jumptable 004B5D32 default case

loc_4B5DE8:
inc     byte ptr [esi+178h]
jmp     short loc_4B5E57

loc_4B5DF0:             ; jumptable 004B5D32 case 3
mov     edx, edi
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 2
xor     ebx, ebx
mov     bl, ds:byte_550F7A[ecx]
xor     edx, edi
mov     dl, [esi+0ACh]
mov     eax, esi
call    sub_4DE83A
mov     cl, ds:byte_550F7A[ecx]
and     ecx, 0FFh
xor     ebx, ebx
mov     bl, [esi+104h]
mov     al, [esi+174h]
and     al, 3
movsx   edx, al
mov     eax, esi
call    sub_4DE8EE
jmp     short loc_4B5DE8

loc_4B5E3B:             ; jumptable 004B5D32 case 4
mov     eax, [esi+100h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4B5D32 ; jumptable 004B5D32 default case
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 0

loc_4B5E57:
mov     byte ptr [esi+110h], 0

def_4B5D32:             ; jumptable 004B5D32 default case
cmp     edi, 0Ch
jnz     loc_4B5EE9
cmp     ds:byte_77E807, 0
jnz     loc_4B5EE3
mov     al, [esi+54Ch]
test    al, al
jz      short loc_4B5E9F
test    al, 2
jz      short loc_4B5E88
mov     word ptr [esi+44h], 0FD80h

loc_4B5E88:
test    byte ptr [esi+54Ch], 1
jz      short loc_4B5E98
mov     byte ptr [esi+110h], 0FFh

loc_4B5E98:
mov     byte ptr [esi+54Ch], 0

loc_4B5E9F:
mov     dh, [esi+9]
test    dh, dh
jz      short loc_4B5EB0
cmp     dh, 4
jz      short loc_4B5EB0
cmp     dh, 0Eh
jnz     short loc_4B5ED0

loc_4B5EB0:
mov     bx, [esi+44h]
add     ebx, 80h
mov     [esi+44h], bx
test    bx, bx
jle     short loc_4B5ED0
mov     word ptr [esi+44h], 0
mov     byte ptr [esi+110h], 0

loc_4B5ED0:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4B527B
jmp     short loc_4B5EE9

loc_4B5EE3:
mov     word ptr [esi+44h], 0

loc_4B5EE9:
cmp     byte ptr [esi+74h], 0
jz      short loc_4B5EFD
mov     eax, esi
call    sub_4B56DA
mov     byte ptr [esi+110h], 0

loc_4B5EFD:
add     esp, 4
jmp     loc_4B5BF2
sub_4B5D02 endp

align 2
jpt_4B5F35 dd offset loc_4B5F3C ; jump table for switch statement
dd offset loc_4B5F79
dd offset loc_4B5FA4
dd offset loc_4B5FD3



sub_4B5F16 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+16Dh]
sar     edx, 18h
mov     bl, [eax+178h]
cmp     bl, 3           ; switch 4 cases
ja      def_4B5F35      ; jumptable 004B5F35 default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_4B5F35[ecx*4] ; switch jump

loc_4B5F3C:             ; jumptable 004B5F35 case 0
mov     ecx, edx
shl     edx, 2
sub     edx, ecx
mov     cl, [eax+100h]
cmp     cl, ds:byte_550F78[edx*4]
jnz     short loc_4B5F61
inc     bl
mov     [eax+178h], bl
or      byte ptr [eax+174h], 10h

loc_4B5F61:
cmp     ds:byte_77E807, 1
jz      loc_4B5FEF
mov     word ptr [eax+44h], 90h
jmp     def_4B5F35      ; jumptable 004B5F35 default case

loc_4B5F79:             ; jumptable 004B5F35 case 1
and     byte ptr [eax+174h], 0CFh
mov     ecx, edx
shl     edx, 2
sub     edx, ecx
mov     bl, [eax+100h]
cmp     bl, ds:byte_550F79[edx*4]
jnz     short def_4B5F35 ; jumptable 004B5F35 default case
mov     word ptr [eax+44h], 0

loc_4B5F9C:
inc     byte ptr [eax+178h]
jmp     short def_4B5F35 ; jumptable 004B5F35 default case

loc_4B5FA4:             ; jumptable 004B5F35 case 2
mov     ecx, edx
shl     edx, 2
sub     edx, ecx
mov     bl, [eax+100h]
cmp     bl, ds:byte_550F7A[edx*4]
jb      short def_4B5F35 ; jumptable 004B5F35 default case
cmp     ds:byte_77E807, 1
jnz     short loc_4B5FCB
mov     word ptr [eax+44h], 0
jmp     short loc_4B5F9C

loc_4B5FCB:
mov     word ptr [eax+44h], 60h ; '`'
jmp     short loc_4B5F9C

loc_4B5FD3:             ; jumptable 004B5F35 case 3
mov     edx, [eax+100h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_4B5F35 ; jumptable 004B5F35 default case
mov     byte ptr [eax+174h], 0
mov     byte ptr [eax+177h], 0

loc_4B5FEF:
mov     word ptr [eax+44h], 0

def_4B5F35:             ; jumptable 004B5F35 default case
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4B527B
pop     edx
pop     ecx
pop     ebx
retn
sub_4B5F16 endp

db 8Bh, 0C0h
jpt_4B6048 dd offset loc_4B604F ; jump table for switch statement
dd offset loc_4B607E
dd offset loc_4B60E7
dd offset loc_4B6142
dd offset loc_4B618E



sub_4B601E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edi, [eax+16Eh]
sar     edi, 18h
mov     bx, [eax+11Ch]
mov     dl, [eax+178h]
cmp     dl, 4           ; switch 5 cases
ja      def_4B6048      ; jumptable 004B6048 default case
xor     eax, eax
mov     al, dl
jmp     jpt_4B6048[eax*4] ; switch jump

loc_4B604F:             ; jumptable 004B6048 case 0
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     dh, [esi+100h]
cmp     dh, ds:byte_550F78[eax*4]
jnz     def_4B6048      ; jumptable 004B6048 default case
add     dl, 2
mov     [esi+178h], dl

loc_4B6072:
or      byte ptr [esi+174h], 20h
jmp     def_4B6048      ; jumptable 004B6048 default case

loc_4B607E:             ; jumptable 004B6048 case 1
test    byte ptr [esi+174h], 4
jnz     short loc_4B60A8
mov     edx, edi
mov     eax, edi
shl     eax, 2
sub     eax, edi
xor     ebx, ebx
mov     bl, ds:byte_550F78[eax*4]
xor     edx, edi
mov     dl, [esi+0ACh]
mov     eax, esi
call    sub_4DE83A

loc_4B60A8:
mov     eax, esi
call    sub_4B5741
mov     [esi+104h], al
mov     eax, edi
shl     eax, 2
sub     eax, edi
xor     ecx, ecx
mov     cl, ds:byte_550F78[eax*4]
xor     ebx, ebx
mov     bl, [esi+104h]
mov     al, [esi+174h]
and     al, 3
movsx   edx, al
mov     eax, esi
call    sub_4DE8EE
inc     byte ptr [esi+178h]
jmp     short loc_4B6072

loc_4B60E7:             ; jumptable 004B6048 case 2
and     byte ptr [esi+174h], 0CFh
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 2
cmp     ds:byte_550F7B[eax], 0
jz      short loc_4B6130
mov     edx, edi
cmp     word ptr [esi+edx*8+5FAh], 0
jle     short loc_4B6130
xor     ecx, ecx
mov     cl, ds:byte_550F79[eax]
mov     eax, esi
call    sub_4EE64E
add     eax, ecx
xor     edx, edx
mov     dl, [esi+100h]
cmp     edx, eax
jz      short loc_4B613C
jmp     def_4B6048      ; jumptable 004B6048 default case

loc_4B6130:
add     byte ptr [esi+178h], 2
jmp     def_4B6048      ; jumptable 004B6048 default case

loc_4B613C:
inc     byte ptr [esi+178h]

loc_4B6142:             ; jumptable 004B6048 case 3
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     dl, [esi+100h]
cmp     dl, ds:byte_550F7A[eax*4]
jnz     short loc_4B6160
inc     byte ptr [esi+178h]
jmp     short def_4B6048 ; jumptable 004B6048 default case

loc_4B6160:
xor     edx, edx
mov     dx, [esi+13Ah]
xor     eax, eax
mov     ax, bx
test    eax, edx
jz      short def_4B6048 ; jumptable 004B6048 default case
mov     al, [esi+175h]
and     al, 5
cmp     al, 5
jnz     short def_4B6048 ; jumptable 004B6048 default case
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 1
jmp     short def_4B6048 ; jumptable 004B6048 default case

loc_4B618E:             ; jumptable 004B6048 case 4
mov     eax, [esi+100h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4B6048 ; jumptable 004B6048 default case
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 0
test    edi, edi
jnz     short def_4B6048 ; jumptable 004B6048 default case
mov     word ptr [esi+44h], 0

def_4B6048:             ; jumptable 004B6048 default case
test    edi, edi
jnz     loc_4B5BF2
cmp     ds:byte_77E807, 0
jnz     loc_4B5C13
cmp     dword ptr [esi+198h], 0
jz      loc_4B5BF8
mov     [esi+198h], edi
jmp     loc_4B5BDB
sub_4B601E endp




sub_4B61E1 proc near
push    edx
mov     edx, [eax+171h]
sar     edx, 18h
test    dl, 0C0h
jnz     short loc_4B61F9
cmp     byte ptr [eax+177h], 0
jz      short loc_4B6200

loc_4B61F9:
mov     eax, 1
pop     edx
retn

loc_4B6200:
xor     eax, eax
pop     edx
retn
sub_4B61E1 endp




sub_4B6204 proc near
neg     eax
cmp     eax, ds:dword_77E7A0
jbe     short loc_4B6214
mov     eax, 0FFFFFFFFh
retn

loc_4B6214:
xor     eax, eax
retn
sub_4B6204 endp




sub_4B6217 proc near
test    edx, edx
jnz     short locret_4B6267
mov     edx, ds:dword_77E7A0
add     edx, eax
test    eax, eax
jle     short loc_4B6240
mov     ds:dword_77E7A0, edx
cmp     edx, 0F423Fh
jbe     short locret_4B6267
mov     ds:dword_77E7A0, 0F423Fh
retn

loc_4B6240:
mov     ds:dword_77E7A0, edx
cmp     edx, 0F423Fh
jbe     short loc_4B6256
xor     edx, edx
mov     ds:dword_77E7A0, edx

loc_4B6256:
test    ebx, ebx
jz      short loc_4B6261
sub     ds:dword_77E7A8, eax
retn

loc_4B6261:
sub     ds:dword_77E7A4, eax

locret_4B6267:
retn
sub_4B6217 endp




sub_4B6268 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
imul    eax, edx, 6F4h
add     eax, offset byte_5F8364
add     [eax+6Eh], cx
mov     esi, [eax+6Ch]
sar     esi, 10h
mov     ebx, [eax+0AEh]
sar     ebx, 10h
cmp     esi, ebx
jle     short loc_4B629A
mov     bx, [eax+0B0h]
mov     [eax+6Eh], bx

loc_4B629A:
test    ecx, ecx
jge     short loc_4B62A8
test    edx, edx
jnz     short loc_4B62A8
sub     ds:dword_77E7D0, ecx

loc_4B62A8:
pop     esi
pop     ecx
pop     ebx
retn
sub_4B6268 endp




sub_4B62AC proc near
push    ebx
push    edx
mov     edx, offset unk_531274

loc_4B62B3:
mov     bx, [edx]
cmp     bx, 0FFFFh
jz      short loc_4B62DC
xor     eax, eax
mov     ax, bx
call    sub_47E888
test    eax, eax
jz      short loc_4B62D7
xor     eax, eax
mov     al, [edx+2]
call    sub_47EB4B
pop     edx
pop     ebx
retn

loc_4B62D7:
add     edx, 4
jmp     short loc_4B62B3

loc_4B62DC:
pop     edx
pop     ebx
retn
sub_4B62AC endp




sub_4B62DF proc near
push    edx
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4B62EE[edx*4]
pop     edx
retn
sub_4B62DF endp




sub_4B62F7 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B6305
jbe     short loc_4B6316
pop     edx
retn

loc_4B6305:
test    al, al
jnz     short loc_4B632D
mov     eax, 8
call    sub_49E0D7
inc     byte ptr [edx+4]

loc_4B6316:
cmp     ds:word_6E23D6, 0
jnz     short loc_4B632D
mov     eax, 47h ; 'G'
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4B632D:
pop     edx
sub_4B62F7 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_16]



sub_4B632F proc near
mov     eax, 600h
call    sub_47E8B8
inc     byte ptr ds:dword_77E5EC
retn
sub_4B632F endp




sub_4B6340 proc near
push    ebx
push    edx
cmp     byte ptr ds:dword_77E5EC, 0
jnz     short loc_4B6350
call    sub_4B632F

loc_4B6350:
mov     edx, offset unk_5312A0

loc_4B6355:
mov     bx, [edx]
cmp     bx, 0FFFFh
jz      short loc_4B637E
xor     eax, eax
mov     ax, bx
call    sub_47E888
test    eax, eax
jz      short loc_4B6379
xor     eax, eax
mov     al, [edx+2]
call    sub_47EB4B
pop     edx
pop     ebx
retn

loc_4B6379:
add     edx, 4
jmp     short loc_4B6355

loc_4B637E:
pop     edx
pop     ebx
retn
sub_4B6340 endp




sub_4B6381 proc near
push    ebx
push    edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_531668
mov     eax, offset unk_531660
call    sub_47EF23
cmp     byte ptr ds:dword_77E7D5+1, 0
jnz     short loc_4B63EF
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4B63C2
mov     edx, offset unk_5316D8
jmp     short loc_4B63E5

loc_4B63C2:
mov     eax, 0Eh
call    sub_47E888
test    eax, eax
jz      short loc_4B63D7
mov     edx, offset unk_5316D0
jmp     short loc_4B63E5

loc_4B63D7:
call    sub_47E888
test    eax, eax
jz      short loc_4B63EF
mov     edx, offset unk_5316C8

loc_4B63E5:
mov     eax, offset unk_531660
call    sub_47EF23

loc_4B63EF:
xor     edx, edx
mov     ds:dword_77E5EC, edx
cmp     ds:dword_53165C, 1
jnz     short loc_4B6405
call    sub_4B6E5B

loc_4B6405:
xor     ebx, ebx
mov     ds:dword_53165C, ebx
pop     edx
pop     ebx
retn
sub_4B6381 endp




sub_4B6410 proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4B6434
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4B642D[edx*4]

loc_4B6434:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4B6466
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_531460[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4B6466:
pop     edx
retn
sub_4B6410 endp




sub_4B6468 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B648E
mov     eax, 2
call    sub_47E888
test    eax, eax
jnz     short loc_4B648E
mov     eax, 11h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B648E:
pop     edx
retn
sub_4B6468 endp




sub_4B6490 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B64AC
jbe     loc_4B6581
cmp     al, 2
jbe     loc_4B661B
pop     edx
pop     ecx
retn

loc_4B64AC:
test    al, al
jnz     loc_4B6655
mov     eax, 0Ch
call    sub_47E888
test    eax, eax
jz      short loc_4B64D3
mov     eax, 5
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh
pop     edx
pop     ecx
retn

loc_4B64D3:
mov     eax, 0Eh
call    sub_47E888
test    eax, eax
jz      short loc_4B64F9
mov     eax, 4

loc_4B64E6:
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh
mov     eax, 1
jmp     loc_4B6560

loc_4B64F9:
mov     eax, 0Dh
call    sub_47E888
test    eax, eax
jz      short loc_4B650E
mov     eax, 3
jmp     short loc_4B64E6

loc_4B650E:
call    sub_47E888
test    eax, eax
jz      short loc_4B6527
mov     eax, 2
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh
jmp     short loc_4B655E

loc_4B6527:
mov     eax, 4
call    sub_47E888
test    eax, eax
jz      short loc_4B6545
mov     eax, 1
call    sub_484CFC
mov     byte ptr [edx+4], 2
jmp     short loc_4B655E

loc_4B6545:
mov     eax, 3
call    sub_47E888
test    eax, eax
jz      short loc_4B6568
xor     eax, eax
call    sub_484CFC

loc_4B655A:
mov     byte ptr [edx+4], 1

loc_4B655E:
xor     eax, eax

loc_4B6560:
call    sub_4B6CB0
pop     edx
pop     ecx
retn

loc_4B6568:
call    sub_484CFC
mov     eax, 8
call    sub_47EB4B
xor     cl, cl
mov     byte ptr ds:dword_560BE0, cl
jmp     short loc_4B655A

loc_4B6581:
mov     eax, 3
call    sub_47E888
test    eax, eax
jz      loc_4B6655
mov     eax, 4
call    sub_47E888
test    eax, eax
jnz     loc_4B6652
mov     eax, 605h
call    sub_47E888
test    eax, eax
jnz     loc_4B6655
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 9
mov     edx, ds:dword_5312A5
sar     edx, 18h
sub     eax, edx
mov     edx, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
mov     ecx, ds:dword_5312A5+1
sar     ecx, 18h
sub     eax, ecx
mov     ecx, eax
xor     eax, eax
mov     al, byte ptr ds:dword_5312A9+1
cmp     edx, eax
jnb     short loc_4B6655
xor     eax, eax
mov     al, byte ptr ds:dword_5312A9+2
cmp     ecx, eax
jnb     short loc_4B6655
mov     eax, 8
call    sub_47EB4B
mov     byte ptr ds:dword_560BE0, 1
mov     eax, 605h
call    sub_47E8B8
pop     edx
pop     ecx
retn

loc_4B661B:
xor     eax, eax
call    sub_47E888
test    eax, eax
jnz     short loc_4B6652
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      short loc_4B6655
mov     eax, 604h
call    sub_47EA91
mov     eax, 8
call    sub_47EB4B
mov     byte ptr ds:dword_560BE0, 2
pop     edx
pop     ecx
retn

loc_4B6652:
inc     byte ptr [edx+4]

loc_4B6655:
pop     edx
pop     ecx
retn
sub_4B6490 endp




sub_4B6658 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 3
jb      short loc_4B667A
jbe     loc_4B67F3
cmp     al, 5
jb      loc_4B6819
jbe     loc_4B6836
pop     edx
pop     ecx
retn

loc_4B667A:
test    al, al
jbe     short loc_4B6689
cmp     al, 2
jz      loc_4B67B1
pop     edx
pop     ecx
retn

loc_4B6689:
mov     eax, 6
call    sub_47E888
test    eax, eax
jz      short loc_4B669E
mov     eax, 10h
jmp     short loc_4B6704

loc_4B669E:
mov     eax, 17h
call    sub_47E888
test    eax, eax
jz      short loc_4B66BD
mov     eax, 0Ch
call    sub_484CFC
mov     byte ptr [ecx+4], 2
pop     edx
pop     ecx
retn

loc_4B66BD:
mov     eax, 1
call    sub_47E888
test    eax, eax
jz      short loc_4B66F1
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4B66F1
mov     byte ptr [ecx+4], 2
mov     eax, 8
call    sub_47EB4B
mov     byte ptr ds:dword_560BE0, 3
pop     edx
pop     ecx
retn

loc_4B66F1:
mov     eax, 1Ah
call    sub_47E888
test    eax, eax
jz      short loc_4B670E

loc_4B66FF:
mov     eax, 0Ah

loc_4B6704:
call    sub_484CFC
jmp     loc_4B6867

loc_4B670E:
mov     eax, 0Ch
call    sub_47E888
test    eax, eax
jz      short loc_4B6762
mov     eax, 9
call    sub_484CFC
mov     eax, 22h ; '"'
call    sub_47E888
test    eax, eax
jz      loc_4B6867
mov     eax, 45h ; 'E'
call    sub_47E888
test    eax, eax
jnz     loc_4B6867
call    sub_484DF3
mov     eax, offset unk_52C8E4
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
jmp     loc_4B6867

loc_4B6762:
mov     eax, 0Eh
call    sub_47E888
test    eax, eax
jz      short loc_4B6777
mov     eax, 8
jmp     short loc_4B6704

loc_4B6777:
mov     eax, 0Dh
call    sub_47E888
test    eax, eax
jz      short loc_4B679E
mov     eax, 7

loc_4B678A:
call    sub_484CFC
mov     eax, 60Ah
call    sub_47E8B8
jmp     loc_4B6867

loc_4B679E:
mov     eax, 4
call    sub_47E888
test    eax, eax
mov     eax, 6
jmp     short loc_4B678A

loc_4B67B1:
mov     eax, 6
call    sub_47E888
test    eax, eax
jnz     loc_4B6867
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      loc_4B686B
mov     eax, 604h
call    sub_47EA91
mov     eax, 8
call    sub_47EB4B
mov     byte ptr ds:dword_560BE0, 4
pop     edx
pop     ecx
retn

loc_4B67F3:
mov     eax, 1Ah
call    sub_47E888
test    eax, eax
jz      short loc_4B686B
mov     edx, 67h ; 'g'
xor     eax, eax
call    sub_4A0E24
xor     eax, eax
call    sub_484D64
jmp     loc_4B66FF

loc_4B6819:
mov     edx, ds:dword_560C00
mov     eax, 60h ; '`'
call    sub_47EB4B
mov     ds:dword_560C00, edx
mov     byte ptr [ecx+4], 5
pop     edx
pop     ecx
retn

loc_4B6836:
mov     eax, 45h ; 'E'
call    sub_47E888
test    eax, eax
jz      short loc_4B686B
mov     eax, ds:dword_560C00
cmp     byte ptr [eax], 0
jz      short loc_4B6853
call    sub_4DE2F6

loc_4B6853:
mov     eax, 61h ; 'a'
call    sub_47EB4B
mov     eax, 46h ; 'F'
call    sub_47E8B8

loc_4B6867:
mov     byte ptr [ecx+4], 0FFh

loc_4B686B:
pop     edx
pop     ecx
retn
sub_4B6658 endp




sub_4B686E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6886
mov     eax, 16h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6886:
pop     edx
retn
sub_4B686E endp




sub_4B6888 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B68A0
mov     eax, 12h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B68A0:
pop     edx
retn
sub_4B6888 endp




sub_4B68A2 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B68B2
jbe     short loc_4B68C8
pop     edx
pop     ecx
retn

loc_4B68B2:
test    al, al
jnz     loc_4B6969
mov     eax, 14h
call    sub_484CFC
mov     byte ptr [edx+4], 1

loc_4B68C8:
mov     eax, 2Ch ; ','
call    sub_47E888
test    eax, eax
jz      loc_4B6965
mov     eax, 2Dh ; '-'
call    sub_47E888
test    eax, eax
jnz     loc_4B6965
mov     eax, 26h ; '&'
call    sub_47E888
test    eax, eax
jnz     short loc_4B6965
mov     eax, 2Eh ; '.'
call    sub_47E888
test    eax, eax
jnz     short loc_4B6965
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 8
mov     edx, ds:dword_5312A9
sar     edx, 18h
sub     eax, edx
mov     edx, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 8
mov     ecx, ds:dword_5312A9+1
sar     ecx, 18h
sub     eax, ecx
mov     ecx, eax
xor     eax, eax
mov     al, ds:byte_5312AE
cmp     edx, eax
jnb     short loc_4B6969
xor     eax, eax
mov     al, ds:byte_5312AF
cmp     ecx, eax
jnb     short loc_4B6969
mov     eax, 1Ch
call    sub_47EB4B
mov     eax, 2Eh ; '.'
call    sub_47E8B8
pop     edx
pop     ecx
retn

loc_4B6965:
mov     byte ptr [edx+4], 0FFh

loc_4B6969:
pop     edx
pop     ecx
retn
sub_4B68A2 endp




sub_4B696C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B698E
call    sub_4DDF54
test    eax, eax
jz      short loc_4B698A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 9
mov     byte ptr [eax+4], 2

loc_4B698A:
mov     byte ptr [edx+4], 0FFh

loc_4B698E:
pop     edx
retn
sub_4B696C endp




sub_4B6990 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B69B2
mov     eax, 13h
call    sub_484CFC
mov     eax, 25h ; '%'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B69B2:
pop     edx
retn
sub_4B6990 endp




sub_4B69B4 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B69CC
mov     eax, 15h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B69CC:
pop     edx

locret_4B69CD:
retn
sub_4B69B4 endp




sub_4B69CE proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B69F0
mov     eax, 13h
call    sub_484CFC
mov     eax, 25h ; '%'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B69F0:
pop     edx
retn
sub_4B69CE endp




sub_4B69F2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6A0A
mov     eax, 15h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6A0A:
pop     edx
retn
sub_4B69F2 endp




sub_4B6A0C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6A24
mov     eax, 17h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6A24:
pop     edx
retn
sub_4B6A0C endp




sub_4B6A26 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6A3E
mov     eax, 18h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6A3E:
pop     edx
retn
sub_4B6A26 endp




sub_4B6A40 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6A58
mov     eax, 19h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6A58:
pop     edx

locret_4B6A59:
retn
sub_4B6A40 endp




sub_4B6A5A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6A72
mov     eax, 13h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6A72:
pop     edx
retn
sub_4B6A5A endp




sub_4B6A74 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6A8C
mov     eax, 15h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6A8C:
pop     edx
retn
sub_4B6A74 endp




sub_4B6A8E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6AA6
mov     eax, 1Ah
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6AA6:
pop     edx
retn
sub_4B6A8E endp




sub_4B6AA8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6AC0
mov     eax, 1Bh
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6AC0:
pop     edx
retn
sub_4B6AA8 endp




sub_4B6AC2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6ADA
mov     eax, 1Ch
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6ADA:
pop     edx
retn
sub_4B6AC2 endp




sub_4B6ADC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6AF4
mov     eax, 1Dh
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6AF4:
pop     edx
retn
sub_4B6ADC endp




sub_4B6AF6 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6B0E
mov     eax, 1Eh
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6B0E:
pop     edx
retn
sub_4B6AF6 endp




sub_4B6B10 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6B28
mov     eax, 1Fh
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6B28:
pop     edx
retn
sub_4B6B10 endp




sub_4B6B2A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6B42
mov     eax, 20h ; ' '
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6B42:
pop     edx
retn
sub_4B6B2A endp




sub_4B6B44 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6B5C
mov     eax, 21h ; '!'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6B5C:
pop     edx
retn
sub_4B6B44 endp




sub_4B6B5E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6B76
mov     eax, 22h ; '"'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6B76:
pop     edx
retn
sub_4B6B5E endp




sub_4B6B78 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6B90
mov     eax, 23h ; '#'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6B90:
pop     edx
retn
sub_4B6B78 endp




sub_4B6B92 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6BAA
mov     eax, 24h ; '$'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6BAA:
pop     edx
retn
sub_4B6B92 endp




sub_4B6BAC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6BC4
mov     eax, 22h ; '"'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6BC4:
pop     edx
retn
sub_4B6BAC endp




sub_4B6BC6 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6BDE
mov     eax, 23h ; '#'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6BDE:
pop     edx
retn
sub_4B6BC6 endp




sub_4B6BE0 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6BF8
mov     eax, 24h ; '$'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6BF8:
pop     edx
retn
sub_4B6BE0 endp




sub_4B6BFA proc near
mov     al, [eax+4]
test    al, al
jbe     short loc_4B6C0A
cmp     al, 0FFh
jz      short loc_4B6C42
jmp     sub_4B6C76

loc_4B6C0A:
mov     eax, 235h
call    sub_47E888
test    eax, eax
jz      short sub_4B6C76
mov     eax, 7E2h
call    sub_47E8B8
mov     eax, 7E3h
call    sub_47E8B8
mov     eax, 7E4h
call    sub_47E8B8
mov     eax, 7E8h
call    sub_47E8B8
jmp     short sub_4B6C76

loc_4B6C42:
mov     al, 1
retn
sub_4B6BFA endp




sub_4B6C45 proc near
mov     al, [eax+4]
test    al, al
jnz     short sub_4B6C76
jmp     short loc_4B6C0A
sub_4B6C45 endp




sub_4B6C4E proc near

; FUNCTION CHUNK AT 004B6C83 SIZE 00000016 BYTES

mov     al, [eax+4]
test    al, al
jnz     short sub_4B6C76
mov     eax, 238h
call    sub_47E888
test    eax, eax
jz      short sub_4B6C76
mov     eax, 239h
call    sub_47E888
test    eax, eax
jz      short loc_4B6C83

loc_4B6C71:
call    sub_4B6E75
sub_4B6C4E endp




sub_4B6C76 proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4B6C76 endp

; START OF FUNCTION CHUNK FOR sub_4B6C4E

loc_4B6C83:
mov     eax, 239h
call    sub_47E8B8
mov     eax, offset unk_531558
call    sub_49DBA5
jmp     short sub_4B6C76
; END OF FUNCTION CHUNK FOR sub_4B6C4E



sub_4B6C99 proc near
mov     al, [eax+4]
test    al, al
jnz     short sub_4B6C76
mov     eax, 239h
call    sub_47E888
test    eax, eax
jz      short sub_4B6C76
jmp     short loc_4B6C71
sub_4B6C99 endp




sub_4B6CB0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edx, 1
mov     ds:dword_53165C, edx
test    eax, eax
jbe     short loc_4B6CD2
cmp     eax, edx
jz      loc_4B6D90
jmp     loc_4B6E54

loc_4B6CD2:
push    0
mov     ebp, ds:dword_5314D0
push    ebp
mov     ecx, ds:dword_5314CC
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_5314CC+1
xor     edx, edx
mov     dl, byte ptr ds:dword_5314CC
mov     eax, offset unk_5314C4
call    sub_43954B
mov     ds:dword_55CEF4, eax
push    0
mov     eax, ds:dword_5314E0
push    eax
mov     ecx, ds:dword_5314DC
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_5314DC+1
xor     edx, edx
mov     dl, byte ptr ds:dword_5314DC
mov     eax, offset unk_5314D4
call    sub_43954B
mov     ds:dword_55CEF8, eax
push    0
mov     edx, ds:dword_5314F0
push    edx
mov     ecx, ds:dword_5314EC
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_5314EC+1
xor     edx, edx
mov     dl, byte ptr ds:dword_5314EC
mov     eax, offset unk_5314E4
call    sub_43954B
mov     ds:dword_55CEFC, eax
push    0
mov     ecx, ds:dword_531500
push    ecx
mov     ecx, ds:dword_5314FC
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_5314FC+1
xor     edx, edx
mov     dl, byte ptr ds:dword_5314FC
mov     eax, offset unk_5314F4
jmp     loc_4B6E4A

loc_4B6D90:
push    0
mov     ecx, ds:dword_531510
push    ecx
mov     ecx, ds:dword_53150C
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_53150C+1
xor     edx, edx
mov     dl, byte ptr ds:dword_53150C
mov     eax, offset unk_531504
call    sub_43954B
mov     ds:dword_55CEF4, eax
push    0
mov     ebx, ds:dword_531520
push    ebx
mov     ecx, ds:dword_53151C
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_53151C+1
xor     edx, edx
mov     dl, byte ptr ds:dword_53151C
mov     eax, offset unk_531514
call    sub_43954B
mov     ds:dword_55CEF8, eax
push    0
mov     esi, ds:dword_531530
push    esi
mov     ecx, ds:dword_53152C
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_53152C+1
xor     edx, edx
mov     dl, byte ptr ds:dword_53152C
mov     eax, offset unk_531524
call    sub_43954B
mov     ds:dword_55CEFC, eax
push    0
mov     edi, ds:dword_531540
push    edi
mov     ecx, ds:dword_53153C
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_53153C+1
xor     edx, edx
mov     dl, byte ptr ds:dword_53153C
mov     eax, offset unk_531534

loc_4B6E4A:
call    sub_43954B
mov     ds:dword_55CF00, eax

loc_4B6E54:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B6CB0 endp




sub_4B6E5B proc near
push    edx
xor     eax, eax

loc_4B6E5E:
movsx   edx, ax
mov     edx, ds:dword_55CEF4[edx*4]
mov     byte ptr [edx+8], 2
inc     eax
cmp     ax, 4
jl      short loc_4B6E5E
pop     edx
retn
sub_4B6E5B endp




sub_4B6E75 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     eax, 23Bh
call    sub_47E888
mov     dl, al
add     dl, al
mov     eax, 23Ah
call    sub_47E888
or      dl, al
cmp     dl, 1
jb      short loc_4B6EA4
jbe     short loc_4B6ED5
cmp     dl, 2
jz      short loc_4B6EFE
jmp     loc_4B6F25

loc_4B6EA4:
test    dl, dl
jnz     loc_4B6F25
cmp     ds:word_77E7E6, 0Ah
jbe     short loc_4B6F25
mov     eax, 23Ah
call    sub_47E8B8
mov     eax, 23Bh
call    sub_47EA91
xor     ebx, ebx
mov     ds:word_77E7E6, bx
jmp     short loc_4B6F25

loc_4B6ED5:
cmp     ds:word_77E7E6, 14h
jbe     short loc_4B6F25
mov     eax, 23Ah
call    sub_47EA91
mov     eax, 23Bh
call    sub_47E8B8
xor     edi, edi
mov     ds:word_77E7E6, di
jmp     short loc_4B6F25

loc_4B6EFE:
cmp     ds:word_77E7E6, 1Eh
jbe     short loc_4B6F25
mov     eax, 23Ah
call    sub_47E8B8
mov     eax, 23Bh
call    sub_47E8B8
xor     ecx, ecx
mov     ds:word_77E7E6, cx

loc_4B6F25:
cmp     byte ptr ds:dword_77E7D5, 8
jnz     short loc_4B6F3C
xor     ebx, ebx
mov     bl, dl
add     ebx, offset unk_5316E4
mov     dh, 0Ah
jmp     short loc_4B6F48

loc_4B6F3C:
xor     ebx, ebx
mov     bl, dl
add     ebx, offset unk_5316E0
mov     dh, 2

loc_4B6F48:
xor     dl, dl

loc_4B6F4A:
cmp     dl, [ebx]
jnb     short loc_4B6F70
xor     ecx, ecx
mov     cl, dh
xor     eax, eax
mov     al, dl
add     ecx, eax
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_531544
call    sub_49DBA5
inc     dl
jmp     short loc_4B6F4A

loc_4B6F70:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B6E75 endp




sub_4B6F75 proc near
push    edx
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_531880
mov     eax, offset unk_531878
call    sub_47EF23
cmp     byte ptr ds:dword_77E7D5+1, 0
jnz     short loc_4B6FCD
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4B6FB0
mov     edx, offset unk_5318E8
jmp     short loc_4B6FC3

loc_4B6FB0:
mov     eax, 46h ; 'F'
call    sub_47E888
test    eax, eax
jz      short loc_4B6FCD
mov     edx, offset unk_5318E0

loc_4B6FC3:
mov     eax, offset unk_531878
call    sub_47EF23

loc_4B6FCD:
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4B6F75 endp




sub_4B6FD7 proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4B6FFB
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4B6FF4[edx*4]

loc_4B6FFB:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4B702D
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_531820[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4B702D:
pop     edx
retn
sub_4B6FD7 endp




sub_4B702F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     al, [eax+4]
cmp     al, 0Bh
jb      short loc_4B7050
jbe     loc_4B7214
cmp     al, 0Ch
jbe     loc_4B7261
jmp     loc_4B72B7

loc_4B7050:
test    al, al
jbe     short loc_4B7061
cmp     al, 0Ah
jz      loc_4B71E7
jmp     loc_4B72B7

loc_4B7061:
mov     eax, 0Dh
call    sub_47E8B8
mov     eax, 16h
call    sub_47EA91
mov     eax, 0Ch
call    sub_47E888
test    eax, eax
jz      short loc_4B70B5
mov     eax, 609h
call    sub_47E8B8
mov     eax, 60Ah
call    sub_47E8B8
mov     eax, 60Bh
call    sub_47E8B8
mov     eax, 60Ch
call    sub_47E8B8
mov     eax, 60Dh
call    sub_47E8B8

loc_4B70B5:
mov     eax, 9
call    sub_47E888
test    eax, eax
jz      short loc_4B70E0
mov     eax, 4
call    sub_485030
mov     byte ptr [edx+4], 0FFh
mov     eax, 1
call    sub_485124
jmp     loc_4B72B7

loc_4B70E0:
mov     eax, 0Fh
call    sub_47E888
test    eax, eax
jz      short loc_4B70FD
mov     eax, 4

loc_4B70F3:
call    sub_485030
jmp     loc_4B72B3

loc_4B70FD:
mov     eax, 6
call    sub_47E888
test    eax, eax
jz      short loc_4B7112
mov     eax, 3
jmp     short loc_4B70F3

loc_4B7112:
mov     eax, 1
call    sub_47E888
test    eax, eax
jz      short loc_4B7127
mov     eax, 21h ; '!'
jmp     short loc_4B70F3

loc_4B7127:
mov     eax, 20h ; ' '
call    sub_47E888
test    eax, eax
jz      short loc_4B7158
mov     eax, 22h ; '"'
call    sub_485030
mov     eax, 2
call    sub_485124
mov     eax, 3
call    sub_485124
jmp     loc_4B72B3

loc_4B7158:
mov     eax, 46h ; 'F'
call    sub_47E888
test    eax, eax
jz      short loc_4B71CB
mov     eax, 2
call    sub_485030
mov     eax, 20h ; ' '
call    sub_47E888
test    eax, eax
jnz     loc_4B72B3
mov     eax, offset unk_515CA0
call    sub_49DBA5
mov     ecx, eax
mov     eax, offset unk_515CB4
call    sub_49DBA5
lea     edi, [eax+0C4h]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, offset unk_515CC8
call    sub_49DBA5
lea     edi, [eax+0C4h]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, offset unk_515CDC
call    sub_49DBA5
mov     byte ptr [edx+4], 0Ah
jmp     loc_4B72B7

loc_4B71CB:
mov     eax, 0Ch
call    sub_47E888
test    eax, eax
jz      loc_4B70F3
mov     eax, 1
jmp     loc_4B70F3

loc_4B71E7:
cmp     word ptr ds:dword_5F837A+2, 0E00h
jge     loc_4B72B7
mov     byte ptr [edx+4], 0Bh
cmp     byte ptr ds:dword_5F836C+1, 1
jnz     short loc_4B7207
xor     eax, eax
jmp     short loc_4B720C

loc_4B7207:
mov     eax, 1

loc_4B720C:
mov     [edx+5], al
jmp     loc_4B72B7

loc_4B7214:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_4B72B7
mov     byte ptr ds:dword_5F836C, 3
xor     bl, bl
mov     byte ptr ds:dword_5F836C+1, bl
mov     ds:byte_5F88AC, 30h ; '0'
xor     ecx, ecx
mov     ds:dword_5F8370, ecx
cmp     byte ptr [edx+5], 0
jnz     short loc_4B7251
mov     eax, 60Fh
jmp     short loc_4B7256

loc_4B7251:
mov     eax, 610h

loc_4B7256:
call    sub_47E8B8
mov     byte ptr [edx+4], 0Ch
jmp     short loc_4B72B7

loc_4B7261:
mov     eax, 60Fh
call    sub_47E888
test    eax, eax
jnz     short loc_4B7287
mov     eax, 610h
call    sub_47E888
test    eax, eax
jnz     short loc_4B7287
mov     byte ptr [edx+4], 0Ah
mov     byte ptr [edx+5], 0
jmp     short loc_4B72B7

loc_4B7287:
mov     eax, 20h ; ' '
call    sub_47E888
test    eax, eax
jz      short loc_4B72B7
mov     eax, 2
call    sub_485124
mov     eax, 3
call    sub_485124
mov     eax, 1Ch
call    sub_485030

loc_4B72B3:
mov     byte ptr [edx+4], 0FFh

loc_4B72B7:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B702F endp




sub_4B72BD proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      loc_4B7349
mov     eax, 1
call    sub_47E888
test    eax, eax
jz      short loc_4B72F9
mov     eax, 7
call    sub_485030
mov     eax, 1
call    sub_485124
mov     eax, 2
call    sub_485124
jmp     short loc_4B732D

loc_4B72F9:
mov     eax, 46h ; 'F'
call    sub_47E888
test    eax, eax
jz      short loc_4B730E
mov     eax, 7
jmp     short loc_4B7328

loc_4B730E:
mov     eax, 0Ch
call    sub_47E888
test    eax, eax
jz      short loc_4B7323
mov     eax, 6
jmp     short loc_4B7328

loc_4B7323:
mov     eax, 5

loc_4B7328:
call    sub_485030

loc_4B732D:
mov     eax, 22h ; '"'
call    sub_47E888
test    eax, eax
jz      short loc_4B7345
mov     eax, 36h ; '6'
call    sub_485030

loc_4B7345:
mov     byte ptr [edx+4], 0FFh

loc_4B7349:
pop     edx
retn
sub_4B72BD endp




sub_4B734B proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7363
mov     eax, 18h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7363:
pop     edx
retn
sub_4B734B endp




sub_4B7365 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B737D
mov     eax, 0Bh
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B737D:
pop     edx
retn
sub_4B7365 endp




sub_4B737F proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7397
mov     eax, 0Ch
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7397:
pop     edx
retn
sub_4B737F endp




sub_4B7399 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B73B1
mov     eax, 2Fh ; '/'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B73B1:
pop     edx
retn
sub_4B7399 endp




sub_4B73B3 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B73CB
mov     eax, 8
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B73CB:
pop     edx
retn
sub_4B73B3 endp




sub_4B73CD proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B73E5
mov     eax, 0Dh
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B73E5:
pop     edx
retn
sub_4B73CD endp




sub_4B73E7 proc near
push    edx
mov     dl, [eax+4]
test    dl, dl
ja      short loc_4B73F3
mov     byte ptr [eax+4], 0FFh

loc_4B73F3:
pop     edx
retn
sub_4B73E7 endp




sub_4B73F5 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B740D
mov     eax, 20h ; ' '
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B740D:
pop     edx
retn
sub_4B73F5 endp




sub_4B740F proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7427
mov     eax, 0Ch
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7427:
pop     edx
retn
sub_4B740F endp




sub_4B7429 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7441
mov     eax, 9
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7441:
pop     edx
retn
sub_4B7429 endp




sub_4B7443 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B745B
mov     eax, 0Eh
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B745B:
pop     edx
retn
sub_4B7443 endp




sub_4B745D proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7475
mov     eax, 19h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7475:
pop     edx
retn
sub_4B745D endp




sub_4B7477 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B748F
mov     eax, 10h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B748F:
pop     edx
retn
sub_4B7477 endp




sub_4B7491 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B74A9
mov     eax, 13h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B74A9:
pop     edx
retn
sub_4B7491 endp




sub_4B74AB proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B74C3
mov     eax, 30h ; '0'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B74C3:
pop     edx
retn
sub_4B74AB endp




sub_4B74C5 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B74DC
mov     eax, 9
call    sub_485030
inc     byte ptr [edx+4]

loc_4B74DC:
pop     edx
retn
sub_4B74C5 endp




sub_4B74DE proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B74F6
mov     eax, 0Eh
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B74F6:
pop     edx
retn
sub_4B74DE endp




sub_4B74F8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7510
mov     eax, 19h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7510:
pop     edx
retn
sub_4B74F8 endp




sub_4B7512 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B752A
mov     eax, 10h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B752A:
pop     edx
retn
sub_4B7512 endp




sub_4B752C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7544
mov     eax, 13h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7544:
pop     edx
retn
sub_4B752C endp




sub_4B7546 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B755E
mov     eax, 30h ; '0'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B755E:
pop     edx
retn
sub_4B7546 endp




sub_4B7560 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7578
mov     eax, 0Ah
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7578:
pop     edx
retn
sub_4B7560 endp




sub_4B757A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B759C
mov     eax, 0Fh
call    sub_485030
mov     eax, 37h ; '7'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B759C:
pop     edx
retn
sub_4B757A endp




sub_4B759E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B75B6
mov     eax, 1Ah
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B75B6:
pop     edx
retn
sub_4B759E endp




sub_4B75B8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B75D0
mov     eax, 11h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B75D0:
pop     edx
retn
sub_4B75B8 endp




sub_4B75D2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B75EA
mov     eax, 14h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B75EA:
pop     edx
retn
sub_4B75D2 endp




sub_4B75EC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7604
mov     eax, 31h ; '1'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7604:
pop     edx
retn
sub_4B75EC endp




sub_4B7606 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B761E
mov     eax, 0Ah
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B761E:
pop     edx
retn
sub_4B7606 endp




sub_4B7620 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7642
mov     eax, 0Fh
call    sub_485030
mov     eax, 37h ; '7'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7642:
pop     edx
retn
sub_4B7620 endp




sub_4B7644 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B765C
mov     eax, 1Ah
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B765C:
pop     edx
retn
sub_4B7644 endp




sub_4B765E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7676
mov     eax, 11h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7676:
pop     edx
retn
sub_4B765E endp




sub_4B7678 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7690
mov     eax, 14h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7690:
pop     edx
retn
sub_4B7678 endp




sub_4B7692 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B76AA
mov     eax, 31h ; '1'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B76AA:
pop     edx
retn
sub_4B7692 endp




sub_4B76AC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B76C4
mov     eax, 15h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B76C4:
pop     edx
retn
sub_4B76AC endp




sub_4B76C6 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B76DE
mov     eax, 17h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B76DE:
pop     edx
retn
sub_4B76C6 endp




sub_4B76E0 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B76F8
mov     eax, 1Bh
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B76F8:
pop     edx
retn
sub_4B76E0 endp




sub_4B76FA proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7712
mov     eax, 12h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7712:
pop     edx
retn
sub_4B76FA endp




sub_4B7714 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B772C
mov     eax, 16h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B772C:
pop     edx
retn
sub_4B7714 endp




sub_4B772E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7746
mov     eax, 32h ; '2'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7746:
pop     edx
retn
sub_4B772E endp




sub_4B7748 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7760
mov     eax, 15h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7760:
pop     edx
retn
sub_4B7748 endp




sub_4B7762 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B777A
mov     eax, 17h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B777A:
pop     edx
retn
sub_4B7762 endp




sub_4B777C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7794
mov     eax, 1Bh
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7794:
pop     edx
retn
sub_4B777C endp




sub_4B7796 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B77AE
mov     eax, 12h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B77AE:
pop     edx
retn
sub_4B7796 endp




sub_4B77B0 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B77C8
mov     eax, 16h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B77C8:
pop     edx
retn
sub_4B77B0 endp




sub_4B77CA proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B77E2
mov     eax, 32h ; '2'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B77E2:
pop     edx
retn
sub_4B77CA endp




sub_4B77E4 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7814
mov     eax, 1Dh
call    sub_485030
mov     eax, 22Eh
call    sub_47E888
test    eax, eax
jz      short loc_4B7810
mov     eax, 3
call    sub_485124

loc_4B7810:
mov     byte ptr [edx+4], 0FFh

loc_4B7814:
pop     edx
retn
sub_4B77E4 endp




sub_4B7816 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B782E
mov     eax, 23h ; '#'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B782E:
pop     edx
retn
sub_4B7816 endp




sub_4B7830 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7848
mov     eax, 26h ; '&'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7848:
pop     edx
retn
sub_4B7830 endp




sub_4B784A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7862
mov     eax, 29h ; ')'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7862:
pop     edx
retn
sub_4B784A endp




sub_4B7864 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B787C
mov     eax, 2Ch ; ','
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B787C:
pop     edx
retn
sub_4B7864 endp




sub_4B787E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7896
mov     eax, 33h ; '3'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7896:
pop     edx
retn
sub_4B787E endp




sub_4B7898 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B78C8
mov     eax, 1Eh
call    sub_485030
mov     eax, 22Eh
call    sub_47E888
test    eax, eax
jz      short loc_4B78C4
mov     eax, 3
call    sub_485124

loc_4B78C4:
mov     byte ptr [edx+4], 0FFh

loc_4B78C8:
pop     edx
retn
sub_4B7898 endp




sub_4B78CA proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B78E2
mov     eax, 24h ; '$'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B78E2:
pop     edx
retn
sub_4B78CA endp




sub_4B78E4 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B78FC
mov     eax, 27h ; '''
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B78FC:
pop     edx
retn
sub_4B78E4 endp




sub_4B78FE proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7916
mov     eax, 2Ah ; '*'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7916:
pop     edx
retn
sub_4B78FE endp




sub_4B7918 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7930
mov     eax, 2Dh ; '-'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7930:
pop     edx
retn
sub_4B7918 endp




sub_4B7932 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B794A
mov     eax, 34h ; '4'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B794A:
pop     edx
retn
sub_4B7932 endp




sub_4B794C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B797C
mov     eax, 1Fh
call    sub_485030
mov     eax, 22Eh
call    sub_47E888
test    eax, eax
jz      short loc_4B7978
mov     eax, 3
call    sub_485124

loc_4B7978:
mov     byte ptr [edx+4], 0FFh

loc_4B797C:
pop     edx
retn
sub_4B794C endp




sub_4B797E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7996
mov     eax, 25h ; '%'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7996:
pop     edx
retn
sub_4B797E endp




sub_4B7998 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B79B0
mov     eax, 28h ; '('
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B79B0:
pop     edx
retn
sub_4B7998 endp




sub_4B79B2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B79CA
mov     eax, 2Bh ; '+'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B79CA:
pop     edx
retn
sub_4B79B2 endp




sub_4B79CC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B79E4
mov     eax, 2Eh ; '.'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B79E4:
pop     edx
retn
sub_4B79CC endp




sub_4B79E6 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B79FE
mov     eax, 35h ; '5'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B79FE:
pop     edx
retn
sub_4B79E6 endp




sub_4B7A00 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7A18
mov     eax, 38h ; '8'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7A18:
pop     edx
retn
sub_4B7A00 endp




sub_4B7A1A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7A32
mov     eax, 39h ; '9'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7A32:
pop     edx
retn
sub_4B7A1A endp




sub_4B7A34 proc near
mov     eax, 235h
call    sub_47E888
test    eax, eax
jz      short sub_4B7A7E
mov     eax, 7E2h
call    sub_47E8B8
mov     eax, 7E3h
call    sub_47E8B8
mov     eax, 7E4h
call    sub_47E8B8
mov     eax, 7E5h
call    sub_47E8B8
mov     eax, 7E6h
call    sub_47E8B8
mov     eax, 7E7h
call    sub_47E8B8
sub_4B7A34 endp




sub_4B7A7E proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4B7A7E endp

byte_4B7A8B db 0
dd 0FFh
db 1Bh, 2 dup(0)



sub_4B7A93 proc near
push    edx
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_531A80
mov     eax, offset unk_531A78
call    sub_47EF23
cmp     byte ptr ds:dword_77E7D5+1, 0
jnz     short loc_4B7AEB
mov     eax, 1
call    sub_47E888
test    eax, eax
jz      short loc_4B7ACE
mov     edx, offset unk_531AE8
jmp     short loc_4B7AE1

loc_4B7ACE:
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4B7AEB
mov     edx, offset unk_531AE0

loc_4B7AE1:
mov     eax, offset unk_531A78
call    sub_47EF23

loc_4B7AEB:
mov     dl, byte ptr ds:dword_77E7D5+1
cmp     dl, 9
jz      short loc_4B7AFB
cmp     dl, 0Ah
jnz     short loc_4B7B09

loc_4B7AFB:
cmp     byte ptr ds:dword_77E7D5, 0
jnz     short loc_4B7B09
call    sub_4B8595

loc_4B7B09:
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4B7A93 endp




sub_4B7B13 proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4B7B4C
cmp     byte ptr ds:dword_77E7D5+1, 0Bh
jz      short loc_4B7B42
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4B7B39[edx*4]
jmp     short loc_4B7B4C

loc_4B7B42:
mov     eax, 1FFh
call    sub_47E8B8

loc_4B7B4C:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4B7B7E
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_5319F4[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4B7B7E:
pop     edx
retn
sub_4B7B13 endp




sub_4B7B80 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B7B94
jbe     loc_4B7C44
pop     edx
pop     ecx
retn

loc_4B7B94:
test    al, al
jnz     loc_4B7C9B
mov     eax, ecx
call    sub_4B8571
test    al, al
jz      short loc_4B7BAE

loc_4B7BA7:
mov     byte ptr [ecx+4], 0FFh
pop     edx
pop     ecx
retn

loc_4B7BAE:
mov     eax, 208h
call    sub_47E888
test    eax, eax
jz      short loc_4B7BC8
mov     eax, 50h ; 'P'
call    sub_47EB4B
jmp     short loc_4B7BA7

loc_4B7BC8:
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4B7C10
mov     eax, 2
call    sub_4873C4
mov     eax, 1
call    sub_47E888
test    eax, eax
jz      short loc_4B7C04
mov     eax, 1
call    sub_4874BB
mov     eax, 2
call    sub_4874BB
jmp     short loc_4B7BA7

loc_4B7C04:
call    sub_481EB3
mov     byte ptr [ecx+4], 1
pop     edx
pop     ecx
retn

loc_4B7C10:
mov     eax, 5
call    sub_47E888
test    eax, eax
jz      short loc_4B7C2D
mov     eax, 1
call    sub_4873C4
jmp     loc_4B7BA7

loc_4B7C2D:
mov     eax, 0Ch
call    sub_47EB4B
xor     ah, ah
mov     byte ptr ds:dword_560BE0, ah
jmp     loc_4B7BA7

loc_4B7C44:
mov     eax, 641h
call    sub_47E888
test    eax, eax
jnz     short loc_4B7C60
mov     eax, 642h
call    sub_47E888
test    eax, eax
jz      short loc_4B7C9B

loc_4B7C60:
mov     eax, 5
call    sub_47EB4B
mov     eax, 1
call    sub_47E8B8
mov     edx, offset unk_531AE8
mov     eax, offset unk_531A78
call    sub_47EF23
mov     byte ptr [ecx+4], 0FFh
mov     eax, 1
call    sub_4874BB
mov     eax, 2
call    sub_4874BB

loc_4B7C9B:
pop     edx
pop     ecx
retn
sub_4B7B80 endp




sub_4B7C9E proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 3
jb      short loc_4B7CC0
jbe     loc_4B7D85
cmp     al, 5
jb      loc_4B7D96
jbe     loc_4B7DB5
pop     edx
pop     ecx
retn

loc_4B7CC0:
cmp     al, 1
jb      short loc_4B7CCB
jbe     short loc_4B7D38
jmp     loc_4B7D5D

loc_4B7CCB:
test    al, al
jnz     loc_4B7DD2
mov     eax, offset unk_531B00
call    sub_42C443
mov     edx, 0B0E00h
call    sub_4A7AE1
mov     eax, 59h ; 'Y'
call    sub_47E888
test    eax, eax
jz      short loc_4B7CFC
mov     byte ptr [ecx+4], 5
pop     edx
pop     ecx
retn

loc_4B7CFC:
mov     eax, 9
call    sub_47E888
test    eax, eax
jz      short loc_4B7D11
mov     byte ptr [ecx+4], 3
pop     edx
pop     ecx
retn

loc_4B7D11:
mov     eax, 0Eh
call    sub_47EB4B
mov     edx, offset unk_531AF0
mov     eax, offset unk_531A78
call    sub_47EF23
mov     byte ptr ds:dword_560BE0, 1
call    sub_4B8544
jmp     short loc_4B7D7F

loc_4B7D38:
mov     eax, 611h
call    sub_47E888
test    eax, eax
jz      loc_4B7DD2
mov     eax, 0Eh
call    sub_47EB4B
mov     byte ptr ds:dword_560BE0, 2
jmp     short loc_4B7D7F

loc_4B7D5D:
mov     eax, 620h
call    sub_47E888
test    eax, eax
jz      short loc_4B7DD2
mov     eax, 621h
call    sub_47E8B8
mov     eax, 6

loc_4B7D7A:
call    sub_47EB4B

loc_4B7D7F:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
retn

loc_4B7D85:
mov     edx, offset unk_531AF0
mov     eax, offset unk_531A78
call    sub_47EF23
jmp     short loc_4B7D7F

loc_4B7D96:
mov     eax, 660h
call    sub_47E888
test    eax, eax
jz      short loc_4B7DD2
mov     eax, 59h ; 'Y'
call    sub_47E8B8
mov     eax, 7
jmp     short loc_4B7D7A

loc_4B7DB5:
mov     eax, 6
call    sub_4873C4
mov     edx, offset unk_531AF8
mov     eax, offset unk_531A78
call    sub_47EF23
mov     byte ptr [ecx+4], 0FFh

loc_4B7DD2:
pop     edx
pop     ecx
retn
sub_4B7C9E endp




sub_4B7DD5 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7DED
mov     eax, 7
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B7DED:
pop     edx
retn
sub_4B7DD5 endp




sub_4B7DEF proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7E2D
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B7E29
mov     eax, 8
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B7E29
mov     eax, 3
call    sub_4874BB

loc_4B7E29:
mov     byte ptr [edx+4], 0FFh

loc_4B7E2D:
pop     edx
retn
sub_4B7DEF endp




sub_4B7E2F proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7E51
mov     eax, 7
call    sub_4873C4
mov     eax, 18h
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B7E51:
pop     edx
retn
sub_4B7E2F endp




sub_4B7E53 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7E91
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B7E8D
mov     eax, 9
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B7E8D
mov     eax, 7
call    sub_4874BB

loc_4B7E8D:
mov     byte ptr [edx+4], 0FFh

loc_4B7E91:
pop     edx
retn
sub_4B7E53 endp




sub_4B7E93 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7EAB
mov     eax, 0Bh
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B7EAB:
pop     edx
retn
sub_4B7E93 endp




sub_4B7EAD proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7EEB
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B7EE7
mov     eax, 9
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B7EE7
mov     eax, 7
call    sub_4874BB

loc_4B7EE7:
mov     byte ptr [edx+4], 0FFh

loc_4B7EEB:
pop     edx
retn
sub_4B7EAD endp




sub_4B7EED proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7F05
mov     eax, 0Bh
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B7F05:
pop     edx

locret_4B7F06:
retn
sub_4B7EED endp




sub_4B7F07 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7F45
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B7F41
mov     eax, 0Ah
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B7F41
mov     eax, 8
call    sub_4874BB

loc_4B7F41:
mov     byte ptr [edx+4], 0FFh

loc_4B7F45:
pop     edx
retn
sub_4B7F07 endp




sub_4B7F47 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7F5F
mov     eax, 0Ch
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B7F5F:
pop     edx
retn
sub_4B7F47 endp




sub_4B7F61 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7F9F
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B7F9B
mov     eax, 0Ah
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B7F9B
mov     eax, 8
call    sub_4874BB

loc_4B7F9B:
mov     byte ptr [edx+4], 0FFh

