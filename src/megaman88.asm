mov     edx, ecx
shl     edx, 4
xor     ebx, ebx
mov     word ptr ds:(dword_55D444+2)[edx], bx
mov     ebx, ds:dword_55D440[edx]
test    ebx, ebx
jz      short loc_4D9090
mov     eax, ebx
call    sub_4FA4D2
mov     word ptr ds:(dword_55D444+2)[edx], ax
test    ax, ax
jz      short loc_4D9090
mov     eax, ds:dword_55D440[edx]
call    sub_4FA36B
jmp     short loc_4D9090
sub_4D904F endp




sub_4D90CE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ah, ds:byte_55D5D5
test    ah, ah
jz      short loc_4D90F2
xor     edx, edx
mov     dl, ah
mov     eax, offset dword_55D430
call    sub_4FA39E
xor     dl, dl
mov     ds:byte_55D5D5, dl

loc_4D90F2:
cmp     ds:byte_55D5D4, 0
jz      short loc_4D9115
xor     edx, edx
mov     dl, ds:byte_55D5D4
mov     eax, offset dword_55D5C0
call    sub_4FA39E
xor     bl, bl
mov     ds:byte_55D5D4, bl

loc_4D9115:
xor     ebx, ebx
jmp     short loc_4D9123

loc_4D9119:
inc     ebx
cmp     ebx, 18h
jge     loc_4D8F91

loc_4D9123:
mov     ecx, ebx
shl     ecx, 4
cmp     word ptr ds:(dword_55D444+2)[ecx], 0
jz      short loc_4D9119
mov     edx, ds:dword_55D444[ecx]
sar     edx, 10h
mov     eax, ds:dword_55D440[ecx]
call    sub_4FA39E
xor     esi, esi
mov     word ptr ds:(dword_55D444+2)[ecx], si
jmp     short loc_4D9119
sub_4D90CE endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_43]
db 8Dh, 40h, 0
jpt_4D9231 dd offset loc_4D9238 ; jump table for switch statement
dd offset loc_4D9258
dd offset loc_4D925F
dd offset loc_4D925F
dd offset loc_4D9268



sub_4D91A5 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_53AD18[eax*4]
call    sub_4E79AB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 4           ; switch 5 cases
ja      short def_4D9231 ; jumptable 004D9231 default case
and     eax, 0FFh
jmp     jpt_4D9231[eax*4] ; switch jump

loc_4D9238:             ; jumptable 004D9231 case 0
mov     ds:dword_77E76C, 80000000h
and     ds:byte_5F8364, 0FCh
xor     ebx, ebx
mov     ds:dword_5F836C, ebx
mov     eax, 604h
jmp     short loc_4D927C

loc_4D9258:             ; jumptable 004D9231 case 1
or      ds:byte_5F8364, 3

loc_4D925F:             ; jumptable 004D9231 cases 2,3
mov     byte ptr ds:dword_5F88B1+1, 1
jmp     short def_4D9231 ; jumptable 004D9231 default case

loc_4D9268:             ; jumptable 004D9231 case 4
and     ds:byte_5F8364, 0FCh
xor     edx, edx
mov     ds:dword_5F836C, edx
mov     eax, 605h

loc_4D927C:
call    sub_47E8B8

def_4D9231:             ; jumptable 004D9231 default case
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_53B268[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53B164[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_53B27C
add     ecx, eax
mov     eax, ds:dword_53B380[edx*4]
shl     eax, 3
add     eax, offset unk_53B2B8
mov     edx, ecx
call    sub_4E22FB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_53A724[eax*4]
call    sub_436B37
pop     edx
pop     ecx
pop     ebx
retn
sub_4D91A5 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_44]



sub_4D9330 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_53B588[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     edx, ds:off_53B5D0[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53B5B4[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_53B5D4
add     edx, eax
mov     eax, ds:dword_53B6D0[ecx*4]
shl     eax, 3
add     eax, offset unk_53B5F8
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
pop     edx
pop     ecx
pop     ebx
retn
sub_4D9330 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_45]



sub_4D9449 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_53B87C[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     edx, ds:off_53B904[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53B8DC[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_53B914
add     edx, eax
mov     eax, ds:dword_53BB44[ecx*4]
shl     eax, 3
add     eax, offset unk_53B944
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
pop     edx
pop     ecx
pop     ebx
retn
sub_4D9449 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_46]



sub_4D9562 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_53BF30[eax*4]
call    sub_4E79AB
mov     edx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     ch, ch
mov     cl, [eax+2]
mov     ds:word_77EAAE, cx
mov     cl, [eax+3]
mov     ds:word_77EAB0, cx
mov     bl, [eax]
mov     ds:byte_77EAC5, bl
mov     bl, [eax+1]
mov     ds:byte_77EAC3, bl
mov     bl, ds:byte_77EAC5
mov     bh, byte ptr ds:word_77EAAE
add     bl, bh
mov     ds:byte_77EAC4, bl
mov     bl, ds:byte_77EAC3
mov     cl, byte ptr ds:word_77EAB0
add     bl, cl
mov     ds:byte_77EAC2, bl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5+1
test    al, al
jnz     loc_4D9676
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 1
jb      short loc_4D9606
jbe     short loc_4D962C
cmp     al, 2
jz      short loc_4D960E
jmp     loc_4D96A6

loc_4D9606:
test    al, al
jnz     loc_4D96A6

loc_4D960E:
mov     eax, 1Ah
call    sub_47E888
test    eax, eax
jz      loc_4D96A6

loc_4D9620:
mov     byte ptr [edx+54Eh], 1
jmp     loc_4D96AD

loc_4D962C:
mov     eax, 1Ah
call    sub_47E888
test    eax, eax
jz      short loc_4D9657
mov     byte ptr ds:word_77E7FC+1, 3
mov     bh, 1
mov     ds:byte_77E7FE, bh
mov     ds:byte_77E7FF, ch
mov     byte ptr ds:dword_5F88B1+1, bh
jmp     short loc_4D96AD

loc_4D9657:
mov     eax, 3
call    sub_47E888
test    eax, eax
jnz     short loc_4D96AD
or      ds:byte_5F8364, 3
xor     dh, dh
mov     byte ptr ds:dword_5F88B1+1, dh
jmp     short loc_4D96AD

loc_4D9676:
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 1
jb      short loc_4D9687
jbe     short loc_4D968B
cmp     al, 2

loc_4D9683:
jz      short loc_4D9620
jmp     short loc_4D96A6

loc_4D9687:
test    al, al
jmp     short loc_4D9683

loc_4D968B:
mov     byte ptr ds:word_77E7FC+1, 3
mov     ds:byte_77E7FE, 1
xor     ah, ah
mov     ds:byte_77E7FF, ah
jmp     loc_4D9620

loc_4D96A6:
mov     byte ptr [edx+54Eh], 0

loc_4D96AD:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_53C3E8[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53C184[eax*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_53C40C
add     edx, eax
mov     eax, ds:dword_53C678[ecx*4]
shl     eax, 3
add     eax, offset unk_53C478
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B6381
pop     edx
pop     ecx
pop     ebx
retn
sub_4D9562 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_47]



sub_4D9752 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_53CA40[eax*4]
call    sub_4E79AB
mov     ecx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5
test    al, al
jnz     short loc_4D9824
mov     eax, 6
call    sub_47E888
test    eax, eax
jz      short loc_4D9803
mov     eax, 2Ch ; ','
call    sub_47E888
test    eax, eax
jnz     short loc_4D9803
mov     ds:byte_53CC33, 1
jmp     short loc_4D980B

loc_4D9803:
xor     bh, bh
mov     ds:byte_53CC33, bh

loc_4D980B:
cmp     byte ptr ds:dword_77E7D5+1, 7
jl      short loc_4D981D
mov     ds:byte_53CC1A, 1Bh
jmp     short loc_4D9824

loc_4D981D:
mov     ds:byte_53CC1A, 3

loc_4D9824:
mov     byte ptr [ecx+54Eh], 0
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_53CDC4[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53CBFC[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_53CDDC
add     ecx, eax
mov     eax, ds:dword_53CE6C[edx*4]
shl     eax, 3
add     eax, offset unk_53CE24
mov     edx, ecx
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B6F75
pop     edx
pop     ecx
pop     ebx
retn
sub_4D9752 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_48]



sub_4D98D2 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_53D2BC[eax*4]
call    sub_4E79AB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5
test    al, al
jbe     short loc_4D9966
cmp     al, 1
jz      loc_4D99F9
jmp     loc_4D9A0E

loc_4D9966:
mov     eax, 208h
call    sub_47E888
test    eax, eax
jz      short loc_4D998C
mov     ds:byte_5F84D4, 4
xor     dh, dh
mov     ds:byte_5F84D5, dh

loc_4D9983:
mov     byte ptr ds:dword_5F88B1+1, 0FFh
jmp     short loc_4D99B3

loc_4D998C:
mov     eax, 235h
call    sub_47E888
test    eax, eax
jz      short loc_4D99AB
xor     ch, ch
mov     ds:byte_5F84D4, ch
mov     ds:byte_5F84D5, 1
jmp     short loc_4D9983

loc_4D99AB:
xor     cl, cl
mov     byte ptr ds:dword_5F88B1+1, cl

loc_4D99B3:
mov     eax, 214h
call    sub_47E888
test    eax, eax
jz      short loc_4D9A0E
mov     eax, 24Ah
call    sub_47E888
test    eax, eax
jnz     short loc_4D9A0E
mov     eax, offset unk_53D980
call    sub_42C443
mov     edx, 0F0000h
call    sub_4A7AE1
mov     eax, offset unk_53D988
call    sub_42C443
mov     edx, 0F0100h
call    sub_4A7AE1
jmp     short loc_4D9A0E

loc_4D99F9:
mov     eax, 9
call    sub_47E888
test    eax, eax
jnz     short loc_4D9A0E
mov     byte ptr ds:dword_5F88B1+1, 1

loc_4D9A0E:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_53D7B4[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53D578[eax*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_53D7C8
add     edx, eax
mov     eax, ds:dword_53D96C[ecx*4]
shl     eax, 3
add     eax, offset unk_53D804
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B7A93
pop     edx
pop     ecx
pop     ebx
retn
sub_4D98D2 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_49]



sub_4D9AB3 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_53DDA4[eax*4]
call    sub_4E79AB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5+1
test    al, al
jnz     short loc_4D9B56
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 2
jnz     short loc_4D9B4C
mov     byte ptr ds:dword_5F88B1+1, 1
jmp     short loc_4D9B5E

loc_4D9B4C:
xor     cl, cl
mov     byte ptr ds:dword_5F88B1+1, cl
jmp     short loc_4D9B5E

loc_4D9B56:
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+1, bh

loc_4D9B5E:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_53E0C8[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53DF60[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_53E0E0
add     ecx, eax
mov     eax, ds:dword_53E308[edx*4]
shl     eax, 3
add     eax, offset unk_53E128
mov     edx, ecx
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B85BC
pop     edx
pop     ecx
pop     ebx
retn
sub_4D9AB3 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_50]



sub_4D9C05 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_53E69C[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     edx, ds:off_53E7A4[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53E76C[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_53E7C4
add     edx, eax
mov     eax, ds:dword_53EA64[ecx*4]
shl     eax, 3
add     eax, offset unk_53E824
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B8D09
pop     edx
pop     ecx
pop     ebx
retn
sub_4D9C05 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_51]



sub_4D9D23 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_53EE7C[eax*4]
call    sub_4E79AB
mov     ecx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5
test    al, al
jbe     short loc_4D9DB5
cmp     al, 4
jz      short loc_4D9DE5
jmp     short loc_4D9DFD

loc_4D9DB5:
mov     eax, 31Bh
call    sub_47E8B8
xor     al, al
mov     byte ptr ds:dword_5F88B1+1, al
cmp     byte ptr ds:dword_77E7D5+1, 5
jl      short loc_4D9E04
mov     eax, offset unk_53F314
call    sub_42C443
mov     edx, 93300h
call    sub_4A7AE1
jmp     short loc_4D9E04

loc_4D9DE5:
xor     bh, bh
mov     ds:byte_5F84D4, bh
mov     ds:byte_5F84D5, 1
mov     byte ptr ds:dword_5F88B1+1, 0FFh
jmp     short loc_4D9E04

loc_4D9DFD:
mov     byte ptr [ecx+54Eh], 0

loc_4D9E04:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_53F224[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53F074[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset unk_53F23C
mov     ecx, ds:dword_53F2FC[edx*4]
shl     ecx, 3
add     ecx, offset unk_53F284
mov     edx, eax
mov     eax, ecx
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B8D92
pop     edx
pop     ecx
pop     ebx
retn
sub_4D9D23 endp

; [00000047 BYTES: COLLAPSED FUNCTION unknown_libname_52]



sub_4D9EB6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 1
jb      short loc_4D9F39
jbe     short loc_4D9F5C
cmp     al, 2
jz      short loc_4D9F77
jmp     loc_4D9FA4

loc_4D9F39:
test    al, al
jnz     loc_4D9FA4
cmp     byte ptr ds:dword_77E7D5+1, 7
jl      short loc_4D9F53
mov     ds:byte_542322, 1Bh
jmp     short loc_4D9FA4

loc_4D9F53:
mov     ds:byte_542322, 3
jmp     short loc_4D9FA4

loc_4D9F5C:
cmp     byte ptr ds:dword_77E7D5+1, 7
jl      short loc_4D9F6E
mov     ds:byte_5423B2, 1Bh
jmp     short loc_4D9FA4

loc_4D9F6E:
mov     ds:byte_5423B2, 3
jmp     short loc_4D9FA4

loc_4D9F77:
mov     eax, 6
call    sub_47E888
test    eax, eax
jz      short loc_4D9F9C
mov     eax, 2Ch ; ','
call    sub_47E888
test    eax, eax
jnz     short loc_4D9F9C
mov     ds:byte_5424EB, 1
jmp     short loc_4D9FA4

loc_4D9F9C:
xor     bh, bh
mov     ds:byte_5424EB, bh

loc_4D9FA4:
mov     byte ptr [ecx+54Eh], 1
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_54291C[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_5422F8[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_542940
add     ecx, eax
mov     eax, ds:dword_542A04[edx*4]
shl     eax, 3
add     eax, offset unk_5429AC
mov     edx, ecx
call    sub_4E22FB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_540A24[eax*4]
call    sub_436B37
call    sub_4B96A4
pop     edx
pop     ecx
pop     ebx
retn
sub_4D9EB6 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_53]



sub_4DA05F proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_542D5C[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     byte ptr ds:dword_5F88B1+1, 1
mov     edx, ds:off_542DD4[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_542D88[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_542DD8
add     edx, eax
mov     eax, ds:dword_542E7C[ecx*4]
shl     eax, 3
add     eax, offset unk_542DE4
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B975E
pop     edx
pop     ecx
pop     ebx
retn
sub_4DA05F endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_54]



sub_4DA184 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_543184[eax*4]
call    sub_4E79AB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     byte ptr ds:dword_5F88B1+1, 1
cmp     byte ptr ds:word_77E7FC, 0
jz      short loc_4DA220
mov     byte ptr ds:word_77E7FC+1, 8
xor     al, al
mov     ds:byte_77E7FE, al

loc_4DA220:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_54341C[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_543384[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_54343C
add     ecx, eax
mov     eax, ds:dword_5434C4[edx*4]
shl     eax, 3
add     eax, offset unk_54349C
mov     edx, ecx
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B9900
pop     edx
pop     ecx
pop     ebx
retn
sub_4DA184 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_55]



sub_4DA2C7 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_5437E8[eax*4]
call    sub_4E79AB
mov     ecx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5+1
test    al, al
jnz     short loc_4DA374
mov     eax, 1Ah
call    sub_47E888
test    eax, eax
jnz     short loc_4DA36B
xor     dl, dl
mov     byte ptr ds:dword_5F88B1+1, dl
jmp     short loc_4DA38F

loc_4DA36B:
mov     byte ptr ds:dword_5F88B1+1, 1
jmp     short loc_4DA38F

loc_4DA374:
cmp     al, 7
jl      short loc_4DA381
mov     ds:byte_5438C2, 1Bh
jmp     short loc_4DA388

loc_4DA381:
mov     ds:byte_5438C2, 3

loc_4DA388:
mov     byte ptr [ecx+54Eh], 1

loc_4DA38F:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_54391C[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_5438AC[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset unk_54392C
mov     ecx, ds:dword_543B5C[edx*4]
shl     ecx, 3
add     ecx, offset unk_54395C
mov     edx, eax
mov     eax, ecx
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B9A5D
pop     edx
pop     ecx
pop     ebx
retn
sub_4DA2C7 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_56]



sub_4DA437 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_543EC0[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+1, bh
mov     edx, ds:off_5440F8[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_543FF0[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_544110
add     edx, eax
mov     eax, ds:dword_544168[ecx*4]
shl     eax, 3
add     eax, offset unk_544158
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
xor     edx, edx
mov     ds:dword_77E5EC, edx
call    sub_4B9CF6
pop     edx
pop     ecx
pop     ebx
retn
sub_4DA437 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_57]



sub_4DA565 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     byte ptr ds:dword_5F88B1+1, 1
cmp     byte ptr ds:word_77E7FC, 0
jz      short loc_4DA5FB
mov     eax, 1Eh
call    sub_47E888
test    eax, eax
jnz     short loc_4DA5FB
mov     byte ptr ds:word_77E7FC+1, 0Ch
xor     al, al
mov     ds:byte_77E7FE, al

loc_4DA5FB:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_5451C4[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_545038[eax*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_5451D0
add     edx, eax
mov     eax, ds:dword_54522C[ecx*4]
shl     eax, 3
add     eax, offset unk_5451F4
call    sub_4E22FB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_544640[eax*4]
call    sub_436B37
call    sub_4BA236
pop     edx
pop     ecx
pop     ebx
retn
sub_4DA565 endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_58]



sub_4DA6B5 proc near
push    ebx
push    ecx
push    edx
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+1, bh
mov     edx, ds:off_545674[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_545544[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_545684
add     edx, eax
mov     eax, ds:dword_5456C4[ecx*4]
shl     eax, 3
add     eax, offset unk_5456B4
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BA32F
pop     edx
pop     ecx
pop     ebx
retn
sub_4DA6B5 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_59]



sub_4DA7C7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_545A68[eax*4]
call    sub_4E79AB
mov     ebx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     cl, byte ptr ds:word_77EAB0
add     dl, cl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     eax, 21Bh
call    sub_47E888
test    eax, eax
jnz     short loc_4DA87C
mov     eax, 21Ah
call    sub_47E888
test    eax, eax
jz      short loc_4DA87C
cmp     ds:word_77E7E6, 0Ah
jbe     short loc_4DA87C
mov     eax, 21Bh
call    sub_47E8B8

loc_4DA87C:
mov     eax, 218h
call    sub_47E888
test    eax, eax
jnz     short loc_4DA8AC
mov     eax, 217h
call    sub_47E888
test    eax, eax
jz      short loc_4DA8AC
cmp     ds:word_77E7E6, 0Ah
jbe     short loc_4DA8AC
mov     eax, 218h
call    sub_47E8B8

loc_4DA8AC:
mov     al, byte ptr ds:dword_77E7D5
test    al, al
jnz     short loc_4DA921
mov     eax, 21Bh
call    sub_47E888
test    eax, eax
jz      short loc_4DA8E5
mov     ecx, 6
mov     edi, offset unk_545CA8
mov     esi, offset unk_545CD8
rep movsd
mov     eax, offset unk_545F38
call    sub_42C443
mov     edx, 180300h
jmp     short loc_4DA913

loc_4DA8E5:
mov     eax, 218h
call    sub_47E888
test    eax, eax
jz      short loc_4DA918
mov     ecx, 6
mov     edi, offset unk_545CA8
mov     esi, offset unk_545CC0
rep movsd
mov     eax, offset unk_545F38
call    sub_42C443
mov     edx, 180200h

loc_4DA913:
call    sub_4A7AE1

loc_4DA918:
mov     byte ptr [ebx+54Eh], 1
jmp     short loc_4DA928

loc_4DA921:
mov     byte ptr [ebx+54Eh], 0

loc_4DA928:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_545E28[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_545C60[eax*4]
call    sub_4DC758
mov     ebx, ds:dword_77E7D0+2
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 2
mov     edx, offset unk_545E40
add     edx, eax
mov     eax, ds:dword_545F20[ebx*4]
shl     eax, 3
add     eax, offset unk_545E88
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BA84F
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DA7C7 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_60]



sub_4DA9CF proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_546268[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     byte ptr ds:dword_5F88B1+1, 1
mov     edx, ds:off_546320[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_5462BC[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_546324
add     edx, eax
mov     eax, ds:dword_5463C8[ecx*4]
shl     eax, 3
add     eax, offset unk_546330
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BAA61
pop     edx
pop     ecx
pop     ebx
retn
sub_4DA9CF endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_61]



sub_4DAAF4 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_546680[eax*4]
call    sub_4E79AB
mov     ecx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5
test    al, al
jnz     short loc_4DAB8A
mov     eax, 31Fh
call    sub_47E8B8

loc_4DAB8A:
mov     byte ptr [ecx+54Eh], 0
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_546780[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54670C[eax*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_546794
add     edx, eax
mov     eax, ds:dword_546850[ecx*4]
shl     eax, 3
add     eax, offset unk_5467D0
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BABE0
pop     edx
pop     ecx
pop     ebx
retn
sub_4DAAF4 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_62]



sub_4DAC36 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
cmp     byte ptr ds:dword_77E7D5, 0Ah
jge     short loc_4DACB2
mov     byte ptr ds:dword_5F88B1+1, 1
jmp     short loc_4DACC4

loc_4DACB2:
xor     cl, cl
mov     byte ptr ds:dword_5F88B1+1, cl
mov     eax, 642h
call    sub_47EA91

loc_4DACC4:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_548508[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_548080[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_548540
add     ecx, eax
mov     eax, ds:dword_548628[edx*4]
shl     eax, 3
add     eax, offset unk_5485E8
mov     edx, ecx
call    sub_4E22FB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_5471F4[eax*4]
call    sub_436B37
call    sub_4BADDA
pop     edx
pop     ecx
pop     ebx
retn
sub_4DAC36 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_63]



sub_4DAD78 proc near
push    ebx
push    ecx
push    edx
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     byte ptr ds:dword_5F88B1+1, 1
mov     edx, ds:off_54A12C[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_549F20[ecx*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_54A140
add     ecx, eax
mov     eax, ds:dword_54A1AC[edx*4]
shl     eax, 3
add     eax, offset unk_54A17C
mov     edx, ecx
call    sub_4E22FB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_549250[eax*4]
call    sub_436B37
call    sub_4BB16E
pop     edx
pop     ecx
pop     ebx
retn
sub_4DAD78 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_64]



sub_4DAE98 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_54A3AC[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+1, bh
mov     edx, ds:off_54A438[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54A418[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_54A440
add     edx, eax
mov     eax, ds:dword_54A480[ecx*4]
shl     eax, 3
add     eax, offset unk_54A458
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BB369
pop     edx
pop     ecx
pop     ebx
retn
sub_4DAE98 endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_65]



sub_4DAFC6 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_54A7E4[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+1, bh
mov     edx, ds:off_54A8B4[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54A890[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_54A8C0
add     edx, eax
mov     eax, ds:dword_54A964[ecx*4]
shl     eax, 3
add     eax, offset unk_54A8E4
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BB3B4
pop     edx
pop     ecx
pop     ebx
retn
sub_4DAFC6 endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_66]



sub_4DB0F4 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_54ADDC[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     byte ptr ds:dword_5F88B1+1, 1
mov     edx, ds:off_54AF68[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54AF40[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_54AF78
add     edx, eax
mov     eax, ds:dword_54B028[ecx*4]
shl     eax, 3
add     eax, offset unk_54AFA8
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    nullsub_17
pop     edx
pop     ecx
pop     ebx
retn
sub_4DB0F4 endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_67]



sub_4DB221 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_54B16C[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+1, bh
mov     edx, ds:off_54B214[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54B1F0[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_54B220
add     edx, eax
mov     eax, ds:dword_54B2C4[ecx*4]
shl     eax, 3
add     eax, offset unk_54B244
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BB4BD
pop     edx
pop     ecx
pop     ebx
retn
sub_4DB221 endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_68]



sub_4DB34F proc near
push    ebx
push    ecx
push    edx
mov     ecx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, eax
shl     edx, 3
add     edx, offset unk_6EA0B0
mov     eax, ds:off_54B920[eax*4]
call    sub_4E79AB
xor     ah, ah
mov     al, [edx+2]
mov     ds:word_77EAAE, ax
mov     al, [edx+3]
mov     ds:word_77EAB0, ax
mov     al, [edx]
mov     ds:byte_77EAC5, al
mov     al, [edx+1]
mov     ds:byte_77EAC3, al
mov     al, ds:byte_77EAC5
mov     ah, byte ptr ds:word_77EAAE
add     al, ah
mov     ds:byte_77EAC4, al
mov     al, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     al, bl
mov     ds:byte_77EAC2, al
mov     eax, [edx+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5
test    al, al
jbe     short loc_4DB3D4
cmp     al, 3
jz      short loc_4DB3DD
jmp     short loc_4DB3E7

loc_4DB3D4:
mov     byte ptr ds:dword_5F88B1+1, 1
jmp     short loc_4DB3EE

loc_4DB3DD:
mov     eax, 31Dh
call    sub_47E8B8

loc_4DB3E7:
mov     byte ptr [ecx+54Eh], 0

loc_4DB3EE:
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, ds:off_54BB88[edx*4]
mov     ds:dword_77E708, eax
mov     eax, ds:dword_77EA5A
sar     eax, 18h
mov     ecx, ds:off_54BA70[edx*4]
mov     edx, eax
mov     eax, ecx
call    sub_4DC758
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, eax
shl     edx, 2
sub     edx, eax
shl     edx, 2
add     edx, offset unk_54BB98
mov     eax, ds:dword_54BC20[eax*4]
shl     eax, 3
add     eax, offset unk_54BBC8
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BB508
pop     edx
pop     ecx
pop     ebx
retn
sub_4DB34F endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_69]



sub_4DB49C proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_54D3D4[eax*4]
call    sub_4E79AB
mov     edx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     ch, ch
mov     cl, [eax+2]
mov     ds:word_77EAAE, cx
mov     cl, [eax+3]
mov     ds:word_77EAB0, cx
mov     bl, [eax]
mov     ds:byte_77EAC5, bl
mov     bl, [eax+1]
mov     ds:byte_77EAC3, bl
mov     bl, ds:byte_77EAC5
mov     bh, byte ptr ds:word_77EAAE
add     bl, bh
mov     ds:byte_77EAC4, bl
mov     bl, ds:byte_77EAC3
mov     cl, byte ptr ds:word_77EAB0
add     bl, cl
mov     ds:byte_77EAC2, bl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 0Bh
jb      short loc_4DB530
jbe     short loc_4DB534
cmp     al, 0Fh
jz      short loc_4DB534
jmp     short loc_4DB56B

loc_4DB530:
cmp     al, 2
jnz     short loc_4DB56B

loc_4DB534:
cmp     byte ptr ds:dword_560BDC, 0
jz      short loc_4DB56B
cmp     byte ptr ds:dword_560BDC+1, 0
jz      short loc_4DB56B
mov     byte ptr [edx+54Eh], 0FFh
mov     byte ptr [edx+170h], 0
mov     byte ptr [edx+171h], 1
mov     eax, edx
call    sub_4B56DA
mov     eax, edx
call    sub_4B570A
jmp     short loc_4DB572

loc_4DB56B:
mov     byte ptr [edx+54Eh], 1

loc_4DB572:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_54DDA4[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54D9B8[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_54DDE8
add     ecx, eax
mov     eax, ds:dword_54DF0C[edx*4]
shl     eax, 3
add     eax, offset unk_54DEB4
mov     edx, ecx
call    sub_4E22FB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_54C800[eax*4]
call    sub_436B37
call    sub_4BB88F
pop     edx
pop     ecx
pop     ebx
retn
sub_4DB49C endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_70]



sub_4DB62E proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_54E294[eax*4]
call    sub_4E79AB
mov     edx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     ch, ch
mov     cl, [eax+2]
mov     ds:word_77EAAE, cx
mov     cl, [eax+3]
mov     ds:word_77EAB0, cx
mov     bl, [eax]
mov     ds:byte_77EAC5, bl
mov     bl, [eax+1]
mov     ds:byte_77EAC3, bl
mov     bl, ds:byte_77EAC5
mov     bh, byte ptr ds:word_77EAAE
add     bl, bh
mov     ds:byte_77EAC4, bl
mov     bl, ds:byte_77EAC3
mov     cl, byte ptr ds:word_77EAB0
add     bl, cl
mov     ds:byte_77EAC2, bl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 0Bh
jz      short loc_4DB6F7
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 1
jb      short loc_4DB6CB
jbe     short loc_4DB6CF
cmp     al, 2

loc_4DB6C7:
jz      short loc_4DB6E5
jmp     short loc_4DB6EE

loc_4DB6CB:
test    al, al
jmp     short loc_4DB6C7

loc_4DB6CF:
mov     byte ptr ds:word_77E7FC+1, 1Bh
mov     ds:byte_77E7FE, 1
xor     ah, ah
mov     ds:byte_77E7FF, ah

loc_4DB6E5:
mov     byte ptr [edx+54Eh], 1
jmp     short loc_4DB70F

loc_4DB6EE:
mov     byte ptr [edx+54Eh], 0
jmp     short loc_4DB70F

loc_4DB6F7:
mov     byte ptr ds:word_77E7FC, ch
mov     ds:byte_77E7FF, ch
mov     byte ptr ds:dword_5F88B1+1, ch
mov     byte ptr ds:dword_5F88B1+2, ch

loc_4DB70F:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_54E74C[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54E4E8[eax*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_54E770
add     edx, eax
mov     eax, ds:dword_54E9DC[ecx*4]
shl     eax, 3
add     eax, offset unk_54E7DC
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BBAC0
pop     edx
pop     ecx
pop     ebx
retn
sub_4DB62E endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_71]



sub_4DB7BC proc near
push    ebx
push    ecx
push    edx
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+1, bh
mov     edx, ds:off_54ED00[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54EC80[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_54ED08
add     edx, eax
mov     eax, ds:dword_54EDA0[ecx*4]
shl     eax, 3
add     eax, offset unk_54ED20
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BC141
pop     edx
pop     ecx
pop     ebx
retn
sub_4DB7BC endp

; [0000004F BYTES: COLLAPSED FUNCTION unknown_libname_72]



sub_4DB8E0 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_54F40C[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     byte ptr ds:dword_5F88B1+1, 1
mov     edx, ds:off_54F7F0[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54F730[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_54F808
add     edx, eax
mov     eax, ds:dword_54F8D0[ecx*4]
shl     eax, 3
add     eax, offset unk_54F850
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BC25F
pop     edx
pop     ecx
pop     ebx
retn
sub_4DB8E0 endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_73]



sub_4DBA0D proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, eax
shl     edx, 3
add     edx, offset unk_6EA0B0
mov     eax, ds:off_54FCE0[eax*4]
call    sub_4E79AB
xor     ah, ah
mov     al, [edx+2]
mov     ds:word_77EAAE, ax
mov     al, [edx+3]
mov     ds:word_77EAB0, ax
mov     al, [edx]
mov     ds:byte_77EAC5, al
mov     al, [edx+1]
mov     ds:byte_77EAC3, al
mov     al, ds:byte_77EAC5
mov     ah, byte ptr ds:word_77EAAE
add     al, ah
mov     ds:byte_77EAC4, al
mov     al, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     al, bl
mov     ds:byte_77EAC2, al
mov     eax, [edx+4]
mov     ds:dword_77E700, eax
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+1, bh
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, ds:off_54FDBC[edx*4]
mov     ds:dword_77E708, eax
mov     ecx, ds:dword_77EA5A
sar     ecx, 18h
mov     eax, ds:off_54FD88[edx*4]
mov     edx, ecx
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
add     edx, offset unk_54FDD8
mov     eax, ds:dword_54FE44[ecx*4]
shl     eax, 3
add     eax, offset unk_54FE2C
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BC394
pop     edx
pop     ecx
pop     ebx
retn
sub_4DBA0D endp




sub_4DBAEF proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebx, offset dword_77E784
mov     ecx, ds:dword_77E7D0+1
sar     ecx, 18h
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     [esp+1Ch+var_1C], eax
xor     ebp, ebp
call    sub_4DBDA0
mov     edi, ecx
shl     edi, 2
mov     esi, ds:off_550190[edi]
movsx   esi, word ptr [esi]
mov     eax, ds:dword_77E7E8+2
sar     eax, 10h
cmp     eax, esi
jz      short loc_4DBB7F
mov     word ptr ds:dword_77E7EC, si
mov     edx, offset unk_6EA0A8
mov     eax, (offset dword_6E40AA+2)
call    sub_4EECF9
mov     eax, esi
call    sub_42BEB2
mov     eax, [esp+1Ch+var_1C]
mov     esi, ds:off_550190[edi]
mov     eax, [esi+eax*2]
sar     eax, 10h
mov     word ptr ds:dword_77E7EC+2, ax
test    ax, ax
jl      short loc_4DBB6E
call    sub_42BEB2

loc_4DBB6E:
xor     eax, eax
call    sub_4A6495
call    sub_4A7319
call    sub_4A7B2D

loc_4DBB7F:
mov     eax, ecx
call    ds:funcs_4DBB81[eax*4] ; Watcom v9-*1.5  32bit NT runtime
; Watcom v9-*1.5  32bit common runtime
mov     al, ds:byte_77E806
and     al, 1
movsx   eax, al
call    sub_47E7F2
inc     word ptr [ebx+62h]
mov     ah, [ebx+50h]
cmp     ah, 5
jz      short loc_4DBBB7
cmp     ah, 6
jz      short loc_4DBBB7
cmp     ah, 0Fh
jz      short loc_4DBBB7
mov     byte ptr [ebx+65h], 1
mov     al, [ebx+65h]
mov     [ebx+64h], al

loc_4DBBB7:
xor     ecx, ecx

loc_4DBBB9:
mov     eax, ecx
mov     dword ptr [ebx+eax*4+174h], 0
inc     ecx
cmp     ecx, 8
jl      short loc_4DBBB9
mov     eax, ebp
add     esp, 4
pop     ebp

loc_4DBBD2:
pop     edi

loc_4DBBD3:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DBAEF endp




sub_4DBBD8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, offset dword_77E784
mov     ecx, offset byte_5F8364
mov     edi, ds:dword_77E7D0+1
sar     edi, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
xor     ebx, ebx
call    sub_4DBDA0
mov     eax, ds:dword_77EA56+3
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_4DBC58
mov     eax, ds:off_550190[edi*4]
mov     edx, [eax+edx*2]
sar     edx, 10h
test    edx, edx
jl      short loc_4DBC38
mov     eax, ds:dword_77E7EC
sar     eax, 10h
cmp     eax, edx
jz      short loc_4DBC38
mov     eax, edx
call    sub_42BEB2
mov     word ptr ds:dword_77E7EC+2, dx

loc_4DBC38:
call    sub_4DBD14
xor     eax, eax
call    sub_4A6495
mov     edx, 80h
mov     eax, 3FEh
call    sub_4DC979
call    sub_4DE4B5

loc_4DBC58:
mov     eax, edi
call    ds:funcs_4DBC5A[eax*4]
mov     ah, byte ptr ds:dword_560BDC
test    ah, ah
jnz     short loc_4DBC8C
mov     ds:byte_77EABF, ah
mov     eax, ds:dword_77EA56+3
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_4DBC8C
mov     dword ptr [ecx+8], 0
and     byte ptr [ecx+0BDh], 0BFh

loc_4DBC8C:
mov     al, [ecx+54Eh]
test    al, al
jl      short loc_4DBCCA
jz      short loc_4DBCBE
mov     dl, [ecx+54Fh]
test    dl, dl
jz      short loc_4DBCB0
mov     al, [ecx+172h]
mov     [ecx+170h], al
jmp     short loc_4DBCB6

loc_4DBCB0:
mov     [ecx+170h], dl

loc_4DBCB6:
mov     al, [ecx+173h]
jmp     short loc_4DBCC4

loc_4DBCBE:
mov     [ecx+170h], al

loc_4DBCC4:
mov     [ecx+171h], al

loc_4DBCCA:
call    sub_4EDD33
call    sub_432682
call    sub_4DFF74
call    sub_4377CA
mov     byte ptr [esi+7Eh], 0
mov     eax, 1FFh
call    sub_47EA91
mov     eax, ebx
jmp     loc_4DBBD2
sub_4DBBD8 endp




sub_4DBCF3 proc near
push    ecx
mov     ecx, eax
test    edx, edx
jz      short loc_4DBCFF
call    sub_4DD215

loc_4DBCFF:
test    ebx, ebx
jz      short loc_4DBD0A
mov     word ptr ds:dword_77E7EC+2, cx

loc_4DBD0A:
movsx   eax, cx
call    sub_42BEB2
pop     ecx
retn
sub_4DBCF3 endp




sub_4DBD14 proc near
push    edx
mov     eax, ds:dword_5F84CB
sar     eax, 18h
mov     eax, ds:dword_54FE5E[eax*2]
sar     eax, 10h
mov     edx, ds:dword_77E7F2
sar     edx, 10h
cmp     edx, eax
jz      short loc_4DBD3F
mov     word ptr ds:dword_77E7F2+2, ax
call    sub_42BEB2

loc_4DBD3F:
mov     eax, ds:dword_5F84CB+1
sar     eax, 18h
sar     eax, 1
mov     eax, ds:dword_54FE62[eax*2]
sar     eax, 10h
mov     edx, ds:dword_77E7F2+2
sar     edx, 10h
cmp     edx, eax
jz      short loc_4DBD6B
mov     word ptr ds:dword_77E7F6, ax
call    sub_42BEB2

loc_4DBD6B:
cmp     ds:byte_5F84D6, 1
jle     short loc_4DBD9E
mov     eax, dword ptr ds:unk_5F84D3
sar     eax, 18h
mov     eax, ds:dword_54FE66[eax*2]
sar     eax, 10h
mov     edx, ds:dword_77E7F6
sar     edx, 10h
cmp     edx, eax
jz      short loc_4DBD9E
mov     word ptr ds:dword_77E7F6+2, ax
call    sub_42BEB2

loc_4DBD9E:
pop     edx
retn
sub_4DBD14 endp




sub_4DBDA0 proc near
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
call    sub_4DBDBD
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
call    ds:funcs_4DBDB5[eax*4]
sub_4DBDA0 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_18]



sub_4DBDBD proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx

loc_4DBDC5:
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
cmp     edx, ds:dword_55001C[eax]
jge     loc_4DBBD3
lea     ebx, [edx+edx]
mov     ecx, ds:off_550020[eax]
mov     eax, ds:off_550024[eax]
add     eax, ebx
mov     bx, [ecx+ebx]
mov     [eax], bx
inc     edx
jmp     short loc_4DBDC5
sub_4DBDBD endp

db 90h
jpt_4DBE23 dd offset loc_4DBE2A ; jump table for switch statement
dd offset loc_4DBE50
dd offset loc_4DBE76
dd offset loc_4DBE76
dd offset loc_4DBE76
dd offset loc_4DBE76



sub_4DBE0F proc near
push    ebx
push    esi
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 5           ; switch 6 cases
ja      def_4DBE23      ; jumptable 004DBE23 default case
and     eax, 0FFh
jmp     jpt_4DBE23[eax*4] ; switch jump

loc_4DBE2A:             ; jumptable 004DBE23 case 0
mov     eax, 0Ch
call    sub_47E888
test    eax, eax
jz      short loc_4DBE44
mov     ds:word_55D680, 0Dh
pop     esi
pop     ebx
retn

loc_4DBE44:
mov     ds:word_55D680, 0Ch
pop     esi
pop     ebx
retn

loc_4DBE50:             ; jumptable 004DBE23 case 1
mov     ds:word_55D680, 0Dh
mov     esi, 11h
mov     ds:word_55D686, si
mov     ds:word_55D684, si
mov     ds:word_55D682, si
pop     esi
pop     ebx
retn

loc_4DBE76:             ; jumptable 004DBE23 cases 2-5
mov     ds:word_55D680, 0Dh
mov     eax, 0Fh
mov     ds:word_55D686, ax
mov     ds:word_55D684, ax
mov     ds:word_55D682, ax
pop     esi
pop     ebx
retn

def_4DBE23:             ; jumptable 004DBE23 default case
mov     ds:word_55D680, 0Dh
mov     ebx, 10h
mov     ds:word_55D686, bx
mov     ds:word_55D684, bx
mov     ds:word_55D682, bx
pop     esi
pop     ebx
retn
sub_4DBE0F endp




sub_4DBEBF proc near
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 3
jb      short loc_4DBEE9
jbe     loc_4DBF3C
cmp     al, 5
jb      loc_4DBF4F
jbe     loc_4DBF4F
cmp     al, 0Bh
jz      loc_4DBF62
jmp     loc_4DBF75

loc_4DBEE9:
cmp     al, 1
jb      short loc_4DBEF1
jbe     short loc_4DBF29
jmp     short loc_4DBF3C

loc_4DBEF1:
test    al, al
jnz     loc_4DBF75
mov     eax, 6
call    sub_47E888
test    eax, eax
jz      short loc_4DBF1F
mov     eax, 59h ; 'Y'
call    sub_47E888
test    eax, eax
jnz     short loc_4DBF1F
mov     ds:word_55D760, 18h
retn

loc_4DBF1F:
mov     ds:word_55D760, 17h
retn

loc_4DBF29:
mov     ds:word_55D760, 17h
mov     ds:word_55D762, 1Ah
retn

loc_4DBF3C:
mov     ds:word_55D760, 17h
mov     ds:word_55D762, 1Bh
retn

loc_4DBF4F:
mov     ds:word_55D760, 17h
mov     ds:word_55D762, 1Ch
retn

loc_4DBF62:
mov     ds:word_55D760, 17h
mov     ds:word_55D762, 1Eh
retn

loc_4DBF75:
mov     ds:word_55D760, 17h
mov     ds:word_55D762, 1Dh
retn
sub_4DBEBF endp

db 8Dh, 40h, 0
jpt_4DC02D dd offset loc_4DC034 ; jump table for switch statement
dd offset loc_4DC064
dd offset loc_4DC06E
dd offset loc_4DC06E
dd offset loc_4DC06E
dd offset loc_4DC06E
dd offset loc_4DC078
dd offset loc_4DC078
dd offset def_4DC02D
dd offset def_4DC02D
dd offset def_4DC02D
dd offset loc_4DC082



sub_4DBFBB proc near
mov     eax, 204h
call    sub_47E888
test    eax, eax
jz      short loc_4DBFE1
mov     eax, 206h
call    sub_47E888
test    eax, eax
jnz     short loc_4DBFE1
mov     ds:word_55D662, 2Ah ; '*'
retn

loc_4DBFE1:
mov     eax, 212h
call    sub_47E888
test    eax, eax
jz      short loc_4DC007
mov     eax, 213h
call    sub_47E888
test    eax, eax
jnz     short loc_4DC007
mov     ds:word_55D662, 29h ; ')'
retn

loc_4DC007:
mov     eax, 200h
call    sub_47E888
test    eax, eax
jz      short loc_4DC01F
mov     ds:word_55D662, 27h ; '''
retn

loc_4DC01F:
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 0Bh         ; switch 12 cases
ja      short def_4DC02D ; jumptable 004DC02D default case, cases 8-10
and     eax, 0FFh
jmp     jpt_4DC02D[eax*4] ; switch jump

loc_4DC034:             ; jumptable 004DC02D case 0
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4DC05A
mov     eax, 1
call    sub_47E888
test    eax, eax
jnz     short loc_4DC05A
mov     ds:word_55D662, 26h ; '&'
retn

loc_4DC05A:
mov     ds:word_55D662, 25h ; '%'
retn

loc_4DC064:             ; jumptable 004DC02D case 1
mov     ds:word_55D662, 28h ; '('
retn

loc_4DC06E:             ; jumptable 004DC02D cases 2-5
mov     ds:word_55D662, 2Bh ; '+'
retn

loc_4DC078:             ; jumptable 004DC02D cases 6,7
mov     ds:word_55D662, 2Ch ; ','
retn

loc_4DC082:             ; jumptable 004DC02D case 11
mov     ds:word_55D662, 2Eh ; '.'
retn

def_4DC02D:             ; jumptable 004DC02D default case, cases 8-10
mov     ds:word_55D662, 2Dh ; '-'
retn
sub_4DBFBB endp

db 90h
jpt_4DC0BD dd offset loc_4DC0C4 ; jump table for switch statement
dd offset loc_4DC0EF
dd offset loc_4DC0F9
dd offset loc_4DC0F9
dd offset loc_4DC0F9
dd offset loc_4DC0F9



sub_4DC0AF proc near
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 5           ; switch 6 cases
ja      short def_4DC0BD ; jumptable 004DC0BD default case
and     eax, 0FFh
jmp     jpt_4DC0BD[eax*4] ; switch jump

loc_4DC0C4:             ; jumptable 004DC0BD case 0
mov     ds:word_55D72A, 34h ; '4'
mov     eax, 630h
call    sub_47E888
test    eax, eax
jz      short loc_4DC0E5
mov     ds:word_55D72E, 3Ch ; '<'
retn

loc_4DC0E5:
mov     ds:word_55D72E, 3Ah ; ':'
retn

loc_4DC0EF:             ; jumptable 004DC0BD case 1
mov     ds:word_55D72A, 35h ; '5'
retn

loc_4DC0F9:             ; jumptable 004DC0BD cases 2-5
mov     ds:word_55D72A, 36h ; '6'
retn

def_4DC0BD:             ; jumptable 004DC0BD default case
mov     ds:word_55D72A, 37h ; '7'
retn
sub_4DC0AF endp




sub_4DC10D proc near
push    edx
push    edi
cmp     byte ptr ds:dword_77E7D5+1, 6
jz      short loc_4DC13C
mov     edi, 41h ; 'A'
mov     ds:word_55D752, di
mov     ds:word_55D750, di
mov     ds:word_55D74E, di
mov     ds:word_55D74C, di
pop     edi
pop     edx
retn

loc_4DC13C:
mov     edx, 42h ; 'B'
mov     ds:word_55D752, dx
mov     ds:word_55D750, dx
mov     ds:word_55D74E, dx
mov     ds:word_55D74C, dx
pop     edi
pop     edx
retn
sub_4DC10D endp

db 8Dh, 40h, 0
jpt_4DC191 dd offset loc_4DC198 ; jump table for switch statement
dd offset loc_4DC198
dd offset loc_4DC198
dd offset loc_4DC198
dd offset loc_4DC198
dd offset loc_4DC198
dd offset loc_4DC1A2
dd offset loc_4DC1A2



sub_4DC183 proc near
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 7           ; switch 8 cases
ja      short def_4DC191 ; jumptable 004DC191 default case
and     eax, 0FFh
jmp     jpt_4DC191[eax*4] ; switch jump

loc_4DC198:             ; jumptable 004DC191 cases 0-5
mov     ds:word_55D70A, 44h ; 'D'
retn

loc_4DC1A2:             ; jumptable 004DC191 cases 6,7
mov     ds:word_55D70A, 45h ; 'E'
retn

def_4DC191:             ; jumptable 004DC191 default case
mov     ds:word_55D70A, 46h ; 'F'
retn
sub_4DC183 endp

db 90h
jpt_4DC1DD dd offset loc_4DC1E4 ; jump table for switch statement
dd offset loc_4DC1E4
dd offset loc_4DC1EE
dd offset loc_4DC1EE
dd offset loc_4DC1EE
dd offset loc_4DC1EE



sub_4DC1CF proc near
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 5           ; switch 6 cases
ja      short def_4DC1DD ; jumptable 004DC1DD default case
and     eax, 0FFh
jmp     jpt_4DC1DD[eax*4] ; switch jump

loc_4DC1E4:             ; jumptable 004DC1DD cases 0,1
mov     ds:word_55D65E, 51h ; 'Q'
retn

loc_4DC1EE:             ; jumptable 004DC1DD cases 2-5
mov     ds:word_55D65E, 52h ; 'R'
retn

def_4DC1DD:             ; jumptable 004DC1DD default case
mov     ds:word_55D65E, 53h ; 'S'
retn
sub_4DC1CF endp




sub_4DC202 proc near
push    ecx
push    edx
push    edi
cmp     byte ptr ds:dword_77E7D5+1, 5
jnz     short loc_4DC27E
mov     eax, 1Ch
call    sub_47E888
test    eax, eax
jz      short loc_4DC23B
mov     ds:word_55D718, 55h ; 'U'
mov     ds:word_55D71C, 57h ; 'W'
mov     ds:word_55D71E, 0FFFFh
pop     edi
pop     edx
pop     ecx
retn

loc_4DC23B:
mov     eax, 1Bh
call    sub_47E888
test    eax, eax
jz      short loc_4DC267
mov     edi, 0FFFFFFFFh
mov     ds:word_55D71E, di
mov     ds:word_55D71C, di
mov     ds:word_55D718, di
pop     edi
pop     edx
pop     ecx
retn

loc_4DC267:
mov     ecx, 55h ; 'U'
mov     ds:word_55D71E, cx
mov     ds:word_55D71C, cx
pop     edi
pop     edx
pop     ecx
retn

loc_4DC27E:
mov     edx, 56h ; 'V'
mov     ds:word_55D71E, dx
mov     ds:word_55D71C, dx
pop     edi
pop     edx
pop     ecx
retn
sub_4DC202 endp

db 8Bh, 0C0h
jpt_4DC2B5 dd offset def_4DC2B5 ; jump table for switch statement
dd offset loc_4DC2BC
dd offset loc_4DC2BC
dd offset loc_4DC2BC



sub_4DC2A7 proc near
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 3           ; switch 4 cases
ja      short def_4DC2B5 ; jumptable 004DC2B5 default case, case 0
and     eax, 0FFh
jmp     jpt_4DC2B5[eax*4] ; switch jump

loc_4DC2BC:             ; jumptable 004DC2B5 cases 1-3
mov     eax, 30h ; '0'
call    sub_47E888
test    eax, eax
jnz     short def_4DC2B5 ; jumptable 004DC2B5 default case, case 0
mov     ds:word_55D736, 5Dh ; ']'
retn

def_4DC2B5:             ; jumptable 004DC2B5 default case, case 0
mov     ds:word_55D736, 5Ch ; '\'
retn
sub_4DC2A7 endp

db 90h
jpt_4DC305 dd offset loc_4DC30C ; jump table for switch statement
dd offset loc_4DC30C
dd offset loc_4DC30C
dd offset loc_4DC30C
dd offset loc_4DC30C
dd offset loc_4DC316



sub_4DC2F7 proc near
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 5           ; switch 6 cases
ja      short def_4DC305 ; jumptable 004DC305 default case
and     eax, 0FFh
jmp     jpt_4DC305[eax*4] ; switch jump

loc_4DC30C:             ; jumptable 004DC305 cases 0-4
mov     ds:word_55D754, 60h ; '`'
retn

loc_4DC316:             ; jumptable 004DC305 case 5
mov     ds:word_55D754, 61h ; 'a'
retn

def_4DC305:             ; jumptable 004DC305 default case
mov     ds:word_55D754, 62h ; 'b'
retn
sub_4DC2F7 endp

db 90h
jpt_4DC359 dd offset loc_4DC360 ; jump table for switch statement
dd offset loc_4DC36A
dd offset loc_4DC36A
dd offset loc_4DC36A
dd offset loc_4DC36A
dd offset loc_4DC36A
dd offset loc_4DC374
dd offset loc_4DC374



sub_4DC34B proc near
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 7           ; switch 8 cases
ja      short def_4DC359 ; jumptable 004DC359 default case
and     eax, 0FFh
jmp     jpt_4DC359[eax*4] ; switch jump

loc_4DC360:             ; jumptable 004DC359 case 0
mov     ds:word_55D6BE, 69h ; 'i'
retn

loc_4DC36A:             ; jumptable 004DC359 cases 1-5
mov     ds:word_55D6BE, 6Ah ; 'j'
retn

loc_4DC374:             ; jumptable 004DC359 cases 6,7
mov     ds:word_55D6BE, 6Bh ; 'k'
retn

def_4DC359:             ; jumptable 004DC359 default case
mov     ds:word_55D6BE, 6Ch ; 'l'
retn
sub_4DC34B endp

db 8Dh, 40h, 0
jpt_4DC3CA dd offset loc_4DC3D1 ; jump table for switch statement
dd offset loc_4DC3D1
dd offset loc_4DC3DB
dd offset loc_4DC3DB
dd offset loc_4DC3DB



sub_4DC39F proc near
cmp     byte ptr ds:dword_77E7D5+1, 1
jnz     short loc_4DC3B3
mov     ds:word_55D6F0, 6Eh ; 'n'
jmp     short loc_4DC3BC

loc_4DC3B3:
mov     ds:word_55D6F0, 6Fh ; 'o'

loc_4DC3BC:
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 4           ; switch 5 cases
ja      short def_4DC3CA ; jumptable 004DC3CA default case
and     eax, 0FFh
jmp     jpt_4DC3CA[eax*4] ; switch jump

loc_4DC3D1:             ; jumptable 004DC3CA cases 0,1
mov     ds:word_55D6F2, 70h ; 'p'
retn

loc_4DC3DB:             ; jumptable 004DC3CA cases 2-4
mov     ds:word_55D6F2, 71h ; 'q'
retn

def_4DC3CA:             ; jumptable 004DC3CA default case
mov     ds:word_55D6F2, 72h ; 'r'
retn
sub_4DC39F endp

jpt_4DC42E dd offset loc_4DC435 ; jump table for switch statement
dd offset loc_4DC435
dd offset loc_4DC43F
dd offset loc_4DC43F
dd offset loc_4DC43F



sub_4DC403 proc near
cmp     byte ptr ds:dword_77E7D5+1, 1
jnz     short loc_4DC417
mov     ds:word_55D640, 78h ; 'x'
jmp     short loc_4DC420

loc_4DC417:
mov     ds:word_55D640, 79h ; 'y'

loc_4DC420:
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 4           ; switch 5 cases
ja      short def_4DC42E ; jumptable 004DC42E default case
and     eax, 0FFh
jmp     jpt_4DC42E[eax*4] ; switch jump

loc_4DC435:             ; jumptable 004DC42E cases 0,1
mov     ds:word_55D642, 7Ah ; 'z'
retn

loc_4DC43F:             ; jumptable 004DC42E cases 2-4
mov     ds:word_55D642, 7Bh ; '{'
retn

def_4DC42E:             ; jumptable 004DC42E default case
mov     ds:word_55D642, 7Ch ; '|'
retn
sub_4DC403 endp




sub_4DC453 proc near
push    edx
push    esi
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 2
jb      short loc_4DC46D
jbe     short loc_4DC46D
cmp     al, 4
jb      short loc_4DC46D
jbe     short loc_4DC48A
cmp     al, 0Bh
jz      short loc_4DC48A
pop     esi
pop     edx
retn

loc_4DC46D:
mov     esi, 9Fh
mov     ds:word_55D60A, si
mov     ds:word_55D608, si
mov     ds:word_55D606, si
pop     esi
pop     edx
retn

loc_4DC48A:
mov     edx, 0A0h
mov     ds:word_55D60A, dx
mov     ds:word_55D608, dx
mov     ds:word_55D606, dx
pop     esi
pop     edx
retn
sub_4DC453 endp




sub_4DC4A7 proc near

var_18= byte ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    ebp
sub     esp, 4
test    eax, eax
jz      short loc_4DC4E2
xor     ebx, ebx
mov     edx, offset byte_5F8364
add     edx, 0DE4h
mov     eax, offset byte_5F8364
call    sub_4EECF9
xor     ecx, ecx

loc_4DC4CC:
mov     dl, bl
or      dl, cl
imul    eax, ecx, 6F4h
mov     ds:byte_5F8365[eax], dl
inc     ecx
cmp     ecx, 2
jb      short loc_4DC4CC

loc_4DC4E2:
mov     ebx, 10h
mov     edx, offset byte_6DC7FC
add     edx, 11BCh
mov     eax, offset byte_6DC7FC
call    sub_4EECF9
xor     edx, edx
mov     ds:dword_77E780, edx
xor     ecx, ecx
mov     ds:dword_77E77C, edx

loc_4DC50C:
mov     al, bl
or      al, cl
mov     [esp+18h+var_18], al
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 3
sub     eax, ecx
mov     dl, [esp+18h+var_18]
mov     ds:byte_6DC7FD[eax*4], dl
inc     ecx
cmp     ecx, 10h
jb      short loc_4DC50C
mov     ebx, 20h ; ' '
mov     edx, offset byte_6DD9CC
add     edx, 49FCh
mov     eax, offset byte_6DD9CC
call    sub_4EECF9
xor     esi, esi
mov     ds:dword_77E778, esi
mov     ds:dword_77E938, esi
xor     ecx, ecx

loc_4DC559:
mov     al, bl
or      al, cl
mov     [esp+18h+var_18], al
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 5
mov     dl, [esp+18h+var_18]
mov     ds:byte_6DD9CD[eax], dl
inc     ecx
cmp     ecx, 10h
jb      short loc_4DC559
mov     ebx, 40h ; '@'
mov     edx, offset unk_6E23DC
add     edx, 1CCCh
mov     eax, offset unk_6E23DC
call    sub_4EECF9
xor     ebp, ebp
mov     ds:dword_77E758, ebp
mov     ds:dword_77E93C, ebp
xor     ecx, ecx

loc_4DC5A8:
mov     dl, bl
or      dl, cl
imul    eax, ecx, 734h
mov     ds:byte_6E23DD[eax], dl
inc     ecx
cmp     ecx, 4
jb      short loc_4DC5A8
mov     ebx, 60h ; '`'
mov     edx, offset byte_57098C
add     edx, 237Ch
mov     eax, offset byte_57098C
call    sub_4EECF9
xor     edx, edx
mov     ds:dword_77E73C, edx
xor     ecx, ecx
mov     ds:dword_77E72C, edx

loc_4DC5E8:
mov     al, bl
or      al, cl
mov     [esp+18h+var_18], al
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 3
sub     eax, ecx
mov     dl, [esp+18h+var_18]
mov     ds:byte_57098D[eax*4], dl
inc     ecx
cmp     ecx, 20h ; ' '
jb      short loc_4DC5E8
mov     ebx, 80h
mov     edx, offset unk_572D5C
add     edx, 15FCh
mov     eax, offset unk_572D5C
call    sub_4EECF9
xor     esi, esi
mov     ds:dword_572D54, esi
mov     ds:dword_572D58, esi
mov     ds:dword_57435C, esi
mov     ds:dword_574360, esi
xor     ecx, ecx

loc_4DC641:
mov     al, bl
or      al, cl
mov     [esp+18h+var_18], al
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     dl, [esp+18h+var_18]
mov     ds:byte_572D5D[eax*8], dl
inc     ecx
cmp     ecx, 40h ; '@'
jb      short loc_4DC641
mov     ebx, 0C0h
mov     edx, offset unk_56FA74
add     edx, 23Ch
mov     eax, offset unk_56FA74
call    sub_4EECF9
xor     edx, edx
mov     ds:dword_77E728, edx
xor     ecx, ecx
mov     ds:dword_77E740, edx

loc_4DC68E:
mov     al, bl
or      al, cl
mov     [esp+18h+var_18], al
mov     eax, ecx
shl     eax, 3
add     eax, ecx
mov     dl, [esp+18h+var_18]
mov     ds:byte_56FA75[eax*4], dl
inc     ecx
cmp     ecx, 10h
jb      short loc_4DC68E
mov     ebx, 0E0h
mov     edx, offset unk_56FCB4
add     edx, 0BFCh
mov     eax, offset unk_56FCB4
call    sub_4EECF9
xor     esi, esi
mov     ds:dword_77E730, esi
mov     ds:dword_77E744, esi
xor     ecx, ecx

loc_4DC6D6:
mov     al, bl
or      al, cl
mov     [esp+18h+var_18], al
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 5
mov     dl, [esp+18h+var_18]
mov     ds:byte_56FCB5[eax], dl
inc     ecx
cmp     ecx, 20h ; ' '
jb      short loc_4DC6D6
mov     edx, offset byte_56F80C
add     edx, 264h
mov     eax, offset byte_56F80C
call    sub_4EECF9
mov     ebx, 100h
xor     edx, edx
mov     eax, offset dword_70E0AC
call    memset_
mov     ebx, 100h
xor     edx, edx
mov     eax, offset dword_7055AC
call    memset_
mov     ebx, 100h
xor     edx, edx
mov     eax, offset unk_7056AC
call    memset_
mov     ebx, 100h
xor     edx, edx
mov     eax, offset unk_7014AC
call    memset_
add     esp, 4
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DC4A7 endp




sub_4DC758 proc near
push    ebx
push    ecx
push    esi
push    edi
sub     esp, 8
mov     ebx, eax

loc_4DC761:
movsx   eax, byte ptr [ebx]
cmp     eax, 0FFFFFFFFh
jz      loc_4DC971
mov     al, [ebx+1]
cmp     al, 60h ; '`'
jb      short loc_4DC79E
jbe     loc_4DC8AB
cmp     al, 0C0h
jb      short loc_4DC791
jbe     loc_4DC8F9
cmp     al, 0E0h
jz      loc_4DC926
jmp     loc_4DC969

loc_4DC791:
cmp     al, 80h
jz      loc_4DC8EA
jmp     loc_4DC969

loc_4DC79E:
cmp     al, 20h ; ' '
jb      short loc_4DC7B1
jbe     short loc_4DC806
cmp     al, 40h ; '@'
jz      loc_4DC8A1
jmp     loc_4DC969

loc_4DC7B1:
test    al, al
jnz     loc_4DC969
test    edx, edx
jz      loc_4DC969
mov     cl, [ebx+3]
mov     eax, 80000000h
shr     eax, cl
or      ds:dword_77E76C, eax
cmp     byte ptr [ebx+3], 0
jnz     short loc_4DC7DE
mov     eax, offset byte_5F8364
jmp     short loc_4DC7E3

loc_4DC7DE:
mov     eax, (offset dword_5F8A55+3)

loc_4DC7E3:
mov     cl, [ebx]
mov     [eax], cl
mov     cx, [ebx+2]
mov     [eax+2], cx
mov     cx, [ebx+4]
mov     [eax+4], cx
mov     ecx, [ebx+8]
mov     [eax+0Ch], ecx
mov     dword ptr [eax+8], 0
jmp     short loc_4DC82D

loc_4DC806:
call    sub_4DDF54

loc_4DC80B:
test    eax, eax
jz      loc_4DC969
mov     cl, [ebx]
mov     [eax], cl
mov     cx, [ebx+2]
mov     [eax+2], cx
mov     cx, [ebx+4]
mov     [eax+4], cx
mov     ecx, [ebx+8]
mov     [eax+0Ch], ecx

loc_4DC82D:
mov     ecx, [ebx+0Ah]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+34h], ecx
mov     [eax+1Ch], ecx
mov     ecx, [ebx+0Ch]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+38h], ecx
mov     [eax+20h], ecx
mov     ecx, [ebx+0Eh]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+3Ch], ecx
mov     [eax+24h], ecx
lea     edi, [eax+2Ch]
lea     esi, [ebx+0Ch]
movsd
movsd
mov     edi, esp
lea     esi, [eax+2Ch]
movsd
movsd
lea     edi, [eax+14h]
mov     esi, esp
movsd
movsd
mov     word ptr [eax+5Ch], 0
mov     cx, [eax+5Ch]
mov     [eax+54h], cx
xor     ecx, ecx
mov     cl, [ebx+7]
shl     ecx, 4
mov     [eax+5Eh], cx
mov     [eax+56h], cx
mov     word ptr [eax+60h], 0
mov     cx, [eax+60h]
mov     [eax+58h], cx
jmp     loc_4DC969

loc_4DC8A1:
call    sub_4DDFD0
jmp     loc_4DC80B

loc_4DC8AB:
cmp     byte ptr [ebx+2], 11h
jnz     short loc_4DC8E0
cmp     byte ptr ds:word_77E7FC, 0
jz      loc_4DC969
mov     al, byte ptr ds:word_77E7FC+1
cmp     al, ds:byte_77E7D4
jnz     loc_4DC969
mov     al, ds:byte_77E7FE
cmp     al, byte ptr ds:dword_77E7D5
jnz     loc_4DC969

loc_4DC8E0:
call    sub_4DE043
jmp     loc_4DC80B

loc_4DC8EA:
call    sub_4DE13B
test    eax, eax
jz      loc_4DC969
jmp     short loc_4DC92F

loc_4DC8F9:
call    sub_4DE1BE
test    eax, eax
jz      short loc_4DC969
mov     cl, [ebx]
mov     [eax], cl
mov     cx, [ebx+2]
mov     [eax+2], cx
mov     cx, [ebx+4]
mov     [eax+4], cx
mov     ecx, [ebx+8]
mov     [eax+0Ch], ecx
lea     edi, [eax+14h]
lea     esi, [ebx+0Ch]
movsd
movsd
jmp     short loc_4DC969

loc_4DC926:
call    sub_4DE227
test    eax, eax
jz      short loc_4DC969

loc_4DC92F:
mov     cl, [ebx]
mov     [eax], cl
mov     cx, [ebx+2]
mov     [eax+2], cx
mov     cx, [ebx+4]
mov     [eax+4], cx
mov     ecx, [ebx+8]
mov     [eax+0Ch], ecx
lea     edi, [eax+48h]
lea     esi, [ebx+0Ch]
movsd
movsd
mov     cx, [ebx+0Ch]
mov     [eax+1Ch], cx
mov     cx, [ebx+0Eh]
mov     [eax+1Eh], cx
mov     cx, [ebx+10h]
mov     [eax+20h], cx

loc_4DC969:
add     ebx, 14h
jmp     loc_4DC761

loc_4DC971:
add     esp, 8
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4DC758 endp




sub_4DC979 proc near

var_24= dword ptr -24h
var_20= byte ptr -20h
var_1F= byte ptr -1Fh
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
push    edx
test    [esp+24h+var_20], 1
jz      short loc_4DC9E1
mov     ebx, offset byte_5F8364
mov     esi, ds:dword_77E76C
xor     edx, edx
mov     [esp+24h+var_1C], edx
jmp     short loc_4DC9BB

loc_4DC99D:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DC9A7:
mov     edi, [esp+24h+var_1C]
inc     edi
mov     [esp+24h+var_1C], edi
add     ebx, 6F4h
cmp     edi, 2
jge     short loc_4DC9E1

loc_4DC9BB:
mov     cl, byte ptr [esp+24h+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DC9A7
test    byte ptr [esp+24h+var_24], 80h
jz      short loc_4DC99D
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_77E76C, eax
mov     byte ptr [ebx], 0
jmp     short loc_4DC9A7

loc_4DC9E1:
test    [esp+24h+var_20], 2
jz      short loc_4DCA3B
mov     ebx, offset byte_6DD9CC
mov     esi, ds:dword_77E778
xor     eax, eax
mov     [esp+24h+var_1C], eax
jmp     short loc_4DCA19

loc_4DC9FB:
