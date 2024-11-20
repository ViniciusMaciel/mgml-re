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

