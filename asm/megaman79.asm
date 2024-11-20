loc_4BA572:
pop     edx

locret_4BA573:
retn
sub_4BA556 endp




sub_4BA574 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA58C
mov     eax, offset unk_53417C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA58C:
pop     edx
retn
sub_4BA574 endp




sub_4BA58E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA59C
cmp     al, 1
jnz     short loc_4BA5AA

loc_4BA59C:
mov     eax, offset unk_534164
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA5AA:
pop     edx
retn
sub_4BA58E endp




sub_4BA5AC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA5BA
cmp     al, 1
jnz     short loc_4BA5C8

loc_4BA5BA:
mov     eax, offset unk_534194
call    sub_47EC19
mov     byte ptr [edx+4], 0E1h

loc_4BA5C8:
pop     edx
retn
sub_4BA5AC endp




sub_4BA5CA proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA5E2
mov     eax, offset unk_534184
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA5E2:
pop     edx
retn
sub_4BA5CA endp




sub_4BA5E4 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA5F2
cmp     al, 1
jnz     short loc_4BA600

loc_4BA5F2:
mov     eax, offset unk_53416C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA600:
pop     edx
retn
sub_4BA5E4 endp




sub_4BA602 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA610
cmp     al, 1
jnz     short loc_4BA61E

loc_4BA610:
mov     eax, offset unk_534194
call    sub_47EC19
mov     byte ptr [edx+4], 0E1h

loc_4BA61E:
pop     edx
retn
sub_4BA602 endp




sub_4BA620 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA638
mov     eax, offset unk_534184
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA638:
pop     edx
retn
sub_4BA620 endp




sub_4BA63A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA648
cmp     al, 1
jnz     short loc_4BA656

loc_4BA648:
mov     eax, offset unk_53416C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA656:
pop     edx
retn
sub_4BA63A endp




sub_4BA658 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA666
cmp     al, 1
jnz     short loc_4BA674

loc_4BA666:
mov     eax, offset unk_53419C
call    sub_47EC19
mov     byte ptr [edx+4], 0E1h

loc_4BA674:
pop     edx
retn
sub_4BA658 endp




sub_4BA676 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA68E
mov     eax, offset unk_5341B4
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA68E:
pop     edx
retn
sub_4BA676 endp




sub_4BA690 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA69E
cmp     al, 1
jnz     short loc_4BA6AC

loc_4BA69E:
mov     eax, offset unk_5341CC
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA6AC:
pop     edx
retn
sub_4BA690 endp




sub_4BA6AE proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA6BC
cmp     al, 1
jnz     short loc_4BA6CA

loc_4BA6BC:
mov     eax, offset unk_5341A4
call    sub_47EC19
mov     byte ptr [edx+4], 0E1h

loc_4BA6CA:
pop     edx
retn
sub_4BA6AE endp




sub_4BA6CC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA6E4
mov     eax, offset unk_5341BC
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA6E4:
pop     edx
retn
sub_4BA6CC endp




sub_4BA6E6 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA6F4
cmp     al, 1
jnz     short loc_4BA702

loc_4BA6F4:
mov     eax, offset unk_5341D4
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA702:
pop     edx
retn
sub_4BA6E6 endp




sub_4BA704 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA712
cmp     al, 1
jnz     short loc_4BA720

loc_4BA712:
mov     eax, offset unk_5341AC
call    sub_47EC19
mov     byte ptr [edx+4], 0E1h

loc_4BA720:
pop     edx
retn
sub_4BA704 endp




sub_4BA722 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA73A
mov     eax, offset unk_5341C4
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA73A:
pop     edx
retn
sub_4BA722 endp




sub_4BA73C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA74A
cmp     al, 1
jnz     short loc_4BA758

loc_4BA74A:
mov     eax, offset unk_5341DC
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA758:
pop     edx
retn
sub_4BA73C endp




sub_4BA75A proc near
mov     al, byte ptr ds:dword_77E5EC
test    al, al
jnz     short sub_4BA797
mov     eax, 27h ; '''
call    sub_47E888
test    eax, eax
jz      short sub_4BA797
mov     eax, 207h
call    sub_47E888
test    eax, eax
jz      short sub_4BA797
mov     eax, 545h
call    sub_47E888
test    eax, eax
jnz     short sub_4BA797
mov     eax, offset unk_515DF0
call    sub_49DBA5
sub_4BA75A endp




sub_4BA797 proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4BA797 endp




sub_4BA7A4 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4BA7B6
jbe     short loc_4BA801
jmp     loc_4BA83C

loc_4BA7B6:
test    al, al
jnz     loc_4BA83C
cmp     byte ptr ds:dword_77E7D5+1, 2
jl      loc_4BA83C
mov     eax, offset unk_5167BC
call    sub_49DBA5
mov     ecx, eax
inc     byte ptr [edx+4]
mov     eax, 212h
call    sub_47E888
test    eax, eax
jz      short loc_4BA806
mov     eax, 214h
call    sub_47E888
test    eax, eax
jnz     short loc_4BA806
or      ds:byte_5F8421, 40h
mov     byte ptr [ecx+3], 2

loc_4BA801:
mov     al, 1
pop     edx
pop     ecx
retn

loc_4BA806:
mov     eax, 209h
call    sub_47E888
test    eax, eax
jz      short loc_4BA801
mov     eax, 211h
call    sub_47E888
test    eax, eax
jnz     short loc_4BA801
mov     eax, 545h
call    sub_47E888
test    eax, eax
jz      short loc_4BA801
mov     eax, offset unk_515E04
call    sub_49DBA5
jmp     short loc_4BA801

loc_4BA83C:
mov     byte ptr [edx+4], 0
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
pop     edx
pop     ecx
retn
sub_4BA7A4 endp




sub_4BA84F proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_5349D4
mov     eax, offset unk_5349CC
call    sub_47EF23
pop     edx
retn
sub_4BA84F endp




sub_4BA87B proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4BA89F
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4BA898[edx*4]

loc_4BA89F:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4BA8D1
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_53433C[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4BA8D1:
pop     edx
retn
sub_4BA87B endp




sub_4BA8D3 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BA91F
mov     eax, offset unk_534984
call    sub_47EC19
mov     eax, 48h ; 'H'
call    sub_47E888
test    eax, eax
jnz     short loc_4BA90E
mov     eax, 63h ; 'c'
call    sub_47EB4B
mov     eax, 48h ; 'H'
call    sub_47E8B8
inc     byte ptr [edx+4]
pop     edx
retn

loc_4BA90E:
mov     eax, offset unk_52CB68
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
inc     byte ptr [edx+4]

loc_4BA91F:
pop     edx

locret_4BA920:
retn
sub_4BA8D3 endp




sub_4BA921 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA938
mov     eax, offset unk_534994
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BA938:
pop     edx
retn
sub_4BA921 endp




sub_4BA93A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA951
mov     eax, offset unk_5349BC
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BA951:
pop     edx
retn
sub_4BA93A endp




sub_4BA953 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA96A
mov     eax, offset unk_53498C
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BA96A:
pop     edx

locret_4BA96B:
retn
sub_4BA953 endp




sub_4BA96C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA984
mov     eax, offset unk_53499C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA984:
pop     edx
retn
sub_4BA96C endp




sub_4BA986 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA99E
mov     eax, offset unk_5349C4
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA99E:
pop     edx
retn
sub_4BA986 endp




sub_4BA9A0 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA9B8
mov     eax, offset unk_5349A4
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA9B8:
pop     edx
retn
sub_4BA9A0 endp




sub_4BA9BA proc near
push    edx
mov     dl, [eax+4]
test    dl, dl
jnz     short loc_4BA9C6
mov     byte ptr [eax+4], 0FFh

loc_4BA9C6:
pop     edx
retn
sub_4BA9BA endp




sub_4BA9C8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA9E0
mov     eax, offset unk_5349AC
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA9E0:
pop     edx
retn
sub_4BA9C8 endp




sub_4BA9E2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA9FA
mov     eax, offset unk_5349B4
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA9FA:
pop     edx
retn
sub_4BA9E2 endp




sub_4BA9FC proc near
mov     al, byte ptr ds:dword_77E5EC
test    al, al
jnz     short sub_4BAA2B
mov     eax, 21Bh
call    sub_47E888
test    eax, eax
jz      short sub_4BAA2B
mov     eax, 229h
call    sub_47E888
test    eax, eax
jnz     short sub_4BAA2B
mov     eax, offset unk_5377F4

loc_4BAA26:
call    sub_49DBA5
sub_4BA9FC endp




sub_4BAA2B proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4BAA2B endp




sub_4BAA38 proc near
mov     eax, 1Eh
call    sub_47E888
test    eax, eax
jz      short sub_4BAA2B
mov     eax, offset unk_534A34
call    sub_49DBA5
mov     eax, offset unk_534A48
call    sub_49DBA5
mov     eax, offset unk_534A5C
jmp     short loc_4BAA26
sub_4BAA38 endp




sub_4BAA61 proc near
push    edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_534D44
mov     eax, offset unk_534D3C
call    sub_47EF23
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BAA61 endp




sub_4BAA8D proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4BAAB1
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4BAAAA[edx*4]

loc_4BAAB1:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4BAAE3
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_534A8C[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4BAAE3:
pop     edx
retn
sub_4BAA8D endp




sub_4BAAE5 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BAAFC
mov     eax, offset unk_534D14
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BAAFC:
pop     edx
retn
sub_4BAAE5 endp




sub_4BAAFE proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BAB26
mov     eax, offset unk_534D1C
call    sub_47EC19
xor     eax, eax
call    sub_47EDA7
mov     eax, 1
call    sub_47EDA7
inc     byte ptr [edx+4]

loc_4BAB26:
pop     edx
retn
sub_4BAAFE endp




sub_4BAB28 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BAB3F
mov     eax, offset unk_534D1C
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BAB3F:
pop     edx
retn
sub_4BAB28 endp




sub_4BAB41 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BAB58
mov     eax, offset unk_534D24
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BAB58:
pop     edx
retn
sub_4BAB41 endp




sub_4BAB5A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BAB71
mov     eax, offset unk_534D2C
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BAB71:
pop     edx
retn
sub_4BAB5A endp




sub_4BAB73 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BAB8A
mov     eax, offset unk_534D34
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BAB8A:
pop     edx
retn
sub_4BAB73 endp




sub_4BAB8C proc near
mov     al, byte ptr ds:dword_77E5EC
test    al, al
jnz     short loc_4BABD3
mov     eax, 21Bh
call    sub_47E888
test    eax, eax
jz      short loc_4BABBB
mov     eax, 22Bh
call    sub_47E888
test    eax, eax
jnz     short loc_4BABBB
mov     eax, offset unk_53781C
call    sub_49DBA5

loc_4BABBB:
mov     eax, 23Ch
call    sub_47E888
test    eax, eax
jnz     short loc_4BABD3
mov     eax, offset unk_537830
call    sub_49DBA5

loc_4BABD3:
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4BAB8C endp




sub_4BABE0 proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BABE0 endp




sub_4BABEB proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4BAC0F
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4BAC08[edx*4]

loc_4BAC0F:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4BAC41
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_534E30[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4BAC41:
pop     edx
retn
sub_4BABEB endp




sub_4BAC43 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BAC5A
mov     eax, offset unk_5351F8
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BAC5A:
pop     edx
retn
sub_4BAC43 endp




sub_4BAC5C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BAC73
mov     eax, offset unk_535200
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BAC73:
pop     edx
retn
sub_4BAC5C endp


loc_4BAC75:
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4BAC83
jbe     short loc_4BAC96
pop     edx
retn

loc_4BAC83:
test    al, al
jnz     short loc_4BACCE
mov     eax, offset unk_535200
call    sub_47EC19
inc     byte ptr [edx+4]
pop     edx
retn

loc_4BAC96:
mov     eax, 21h ; '!'
call    sub_47E888
test    eax, eax
jz      short loc_4BACCE
mov     eax, 6Ah ; 'j'
call    sub_47E888
test    eax, eax
jnz     short loc_4BACCE
call    sub_47EDA7
mov     eax, 33h ; '3'
call    sub_47EB4B
inc     byte ptr [edx+4]
mov     eax, 6Ah ; 'j'
call    sub_47E8B8

loc_4BACCE:
pop     edx
retn



sub_4BACD0 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BAD0C
xor     ecx, ecx

loc_4BACDE:
mov     eax, ecx
mov     edx, ds:dword_535240[ecx*4]
shl     eax, 3
add     eax, offset unk_535220
call    sub_42C443
call    sub_4A7AE1
inc     ecx
cmp     ecx, 4
jl      short loc_4BACDE
mov     eax, offset unk_535208
call    sub_47EC19
inc     byte ptr [ebx+4]

loc_4BAD0C:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BACD0 endp




sub_4BAD10 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BAD4C
xor     ecx, ecx

loc_4BAD1E:
mov     eax, ecx
mov     edx, ds:dword_535240[ecx*4]
shl     eax, 3
add     eax, offset unk_535220
call    sub_42C443
call    sub_4A7AE1
inc     ecx
cmp     ecx, 4
jl      short loc_4BAD1E
mov     eax, offset unk_535210
call    sub_47EC19
inc     byte ptr [ebx+4]

loc_4BAD4C:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BAD10 endp




sub_4BAD50 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BAD8C
xor     ecx, ecx

loc_4BAD5E:
mov     eax, ecx
mov     edx, ds:dword_535240[ecx*4]
shl     eax, 3
add     eax, offset unk_535220
call    sub_42C443
call    sub_4A7AE1
inc     ecx
cmp     ecx, 4
jl      short loc_4BAD5E
mov     eax, offset unk_535218
call    sub_47EC19
inc     byte ptr [ebx+4]

loc_4BAD8C:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BAD50 endp




sub_4BAD90 proc near
mov     eax, 21h ; '!'
call    sub_47E888
test    eax, eax
jz      short loc_4BADB5
mov     eax, 6Ah ; 'j'
call    sub_47E888
test    eax, eax
jnz     short loc_4BADB5
cmp     byte ptr ds:dword_77E7D5+1, 7
jz      short loc_4BADCD

loc_4BADB5:
mov     eax, 238h
call    sub_47E888
test    eax, eax
jnz     short loc_4BADCD
mov     eax, offset unk_535250
call    sub_49DBA5

loc_4BADCD:
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4BAD90 endp




sub_4BADDA proc near
push    edx
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_5354A4
mov     eax, offset unk_53549C
call    sub_47EF23
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BADDA endp




sub_4BAE01 proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4BAE25
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4BAE1E[edx*4]

loc_4BAE25:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4BAE57
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_535320[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4BAE57:
pop     edx
retn
sub_4BAE01 endp




sub_4BAE59 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BAE6D
cmp     al, 1
jz      short loc_4BAEAE
jmp     short loc_4BAEC3

loc_4BAE6D:
xor     ebx, ebx
mov     ds:word_77E918, bx
mov     eax, 642h
call    sub_47E888
test    eax, eax
jnz     short loc_4BAEA9
xor     ecx, ecx
mov     ds:word_77E91A, cx
xor     esi, esi
mov     ds:word_77E91C, si
xor     edi, edi
mov     ds:word_77E91E, di
mov     eax, 642h
call    sub_47E8B8

loc_4BAEA9:
inc     byte ptr [edx+4]
jmp     short loc_4BAEC3

loc_4BAEAE:
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BAEC3
xor     eax, eax
call    sub_47EB4B

loc_4BAEC3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BAE59 endp




sub_4BAEC9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BAEE7
xor     eax, eax
call    sub_47EB4B
pop     edx
pop     ecx
pop     ebx
retn

loc_4BAEE7:
mov     al, [ecx+4]
test    al, al
ja      short loc_4BAF11
mov     eax, 4Ch ; 'L'
call    sub_47E888
test    eax, eax
jnz     short loc_4BAF11
xor     ebx, ebx
mov     edx, 1
mov     eax, 3
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4BAF11:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BAEC9 endp




sub_4BAF15 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BAF33
xor     eax, eax
call    sub_47EB4B
pop     edx
pop     ecx
pop     ebx
retn

loc_4BAF33:
mov     al, [ecx+4]
cmp     al, 1
jb      short loc_4BAF44
jbe     short loc_4BAF71
cmp     al, 2
jbe     short loc_4BAF85
pop     edx
pop     ecx
pop     ebx
retn

loc_4BAF44:
test    al, al
jnz     short loc_4BAFA0
mov     eax, 21h ; '!'
call    sub_47E888
test    eax, eax
jz      short loc_4BAF5E
mov     byte ptr [ecx+4], 0FFh
pop     edx
pop     ecx
pop     ebx
retn

loc_4BAF5E:
xor     ebx, ebx
mov     edx, 1

loc_4BAF65:
mov     eax, 2
call    sub_47EEF1
jmp     short loc_4BAF9D

loc_4BAF71:
mov     eax, 4Ch ; 'L'
call    sub_47E888
test    eax, eax
jz      short loc_4BAFA0
xor     ebx, ebx
xor     edx, edx
jmp     short loc_4BAF65

loc_4BAF85:
mov     eax, 44h ; 'D'
call    sub_47E888
test    eax, eax
jz      short loc_4BAFA0
mov     eax, 38h ; '8'
call    sub_47EB4B

loc_4BAF9D:
inc     byte ptr [ecx+4]

loc_4BAFA0:
pop     edx
pop     ecx
pop     ebx

locret_4BAFA3:
retn
sub_4BAF15 endp




sub_4BAFA4 proc near
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short locret_4BAFA3
xor     eax, eax
jmp     sub_47EB4B
sub_4BAFA4 endp




sub_4BAFB9 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BAFD1
mov     eax, offset unk_5352A0
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BAFD1:
pop     edx
retn
sub_4BAFB9 endp




sub_4BAFD3 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BAFF0
mov     eax, offset unk_5352A8
call    sub_47EC19
call    sub_4BB054
mov     byte ptr [edx+4], 0FFh

loc_4BAFF0:
pop     edx
retn
sub_4BAFD3 endp




sub_4BAFF2 proc near

; FUNCTION CHUNK AT 004BB027 SIZE 00000016 BYTES

mov     al, [eax+4]
test    al, al
jnz     short sub_4BB01A
mov     eax, 238h
call    sub_47E888
test    eax, eax
jz      short sub_4BB01A
mov     eax, 239h
call    sub_47E888
test    eax, eax
jz      short loc_4BB027

loc_4BB015:
call    sub_4BB06E
sub_4BAFF2 endp




sub_4BB01A proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4BB01A endp

; START OF FUNCTION CHUNK FOR sub_4BAFF2

loc_4BB027:
mov     eax, 239h
call    sub_47E8B8
mov     eax, offset unk_535398
call    sub_49DBA5
jmp     short sub_4BB01A
; END OF FUNCTION CHUNK FOR sub_4BAFF2



sub_4BB03D proc near
mov     al, [eax+4]
test    al, al
jnz     short sub_4BB01A
mov     eax, 239h
call    sub_47E888
test    eax, eax
jz      short sub_4BB01A
jmp     short loc_4BB015
sub_4BB03D endp




sub_4BB054 proc near
push    edx
mov     edx, 621h

loc_4BB05A:
xor     eax, eax
mov     ax, dx
call    sub_47EA91
inc     edx
cmp     dx, 63Ah
jbe     short loc_4BB05A
pop     edx
retn
sub_4BB054 endp




sub_4BB06E proc near
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
jb      short loc_4BB09D
jbe     short loc_4BB0CE
cmp     dl, 2
jz      short loc_4BB0F7
jmp     loc_4BB11E

loc_4BB09D:
test    dl, dl
jnz     loc_4BB11E
cmp     ds:word_77E7E6, 0Ah
jbe     short loc_4BB11E
mov     eax, 23Ah
call    sub_47E8B8
mov     eax, 23Bh
call    sub_47EA91
xor     ebx, ebx
mov     ds:word_77E7E6, bx
jmp     short loc_4BB11E

loc_4BB0CE:
cmp     ds:word_77E7E6, 14h
jbe     short loc_4BB11E
mov     eax, 23Ah
call    sub_47EA91
mov     eax, 23Bh
call    sub_47E8B8
xor     edi, edi
mov     ds:word_77E7E6, di
jmp     short loc_4BB11E

loc_4BB0F7:
cmp     ds:word_77E7E6, 1Eh
jbe     short loc_4BB11E
mov     eax, 23Ah
call    sub_47E8B8
mov     eax, 23Bh
call    sub_47E8B8
xor     ecx, ecx
mov     ds:word_77E7E6, cx

loc_4BB11E:
cmp     byte ptr ds:dword_77E7D5, 0Dh
jnz     short loc_4BB135
xor     ebx, ebx
mov     bl, dl
add     ebx, offset unk_535508
mov     dh, 9
jmp     short loc_4BB141

loc_4BB135:
xor     ebx, ebx
mov     bl, dl
add     ebx, offset unk_535504
mov     dh, 1

loc_4BB141:
xor     dl, dl

loc_4BB143:
cmp     dl, [ebx]
jnb     short loc_4BB169
xor     ecx, ecx
mov     cl, dh
xor     eax, eax
mov     al, dl
add     ecx, eax
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_535398
call    sub_49DBA5
inc     dl
jmp     short loc_4BB143

loc_4BB169:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BB06E endp




sub_4BB16E proc near
push    edx
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_535580
mov     eax, offset unk_535578
call    sub_47EF23
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BB16E endp




sub_4BB195 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_535534[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BB195 endp




sub_4BB1BD proc near
push    edx
mov     dl, [eax+4]
test    dl, dl
jbe     short loc_4BB1CC
cmp     dl, 1
jz      short loc_4BB1DA
pop     edx
retn

loc_4BB1CC:
xor     edx, edx
mov     ds:word_77E918, dx
inc     byte ptr [eax+4]
pop     edx
retn

loc_4BB1DA:
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BB1EF
xor     eax, eax
call    sub_47EB4B

loc_4BB1EF:
pop     edx

locret_4BB1F0:
retn
sub_4BB1BD endp




sub_4BB1F1 proc near
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short locret_4BB1F0
xor     eax, eax
jmp     sub_47EB4B
sub_4BB1F1 endp




sub_4BB206 proc near
push    edx
mov     dl, [eax+4]
test    dl, dl
jbe     short loc_4BB215
cmp     dl, 1
jz      short loc_4BB223
pop     edx
retn

loc_4BB215:
xor     edx, edx
mov     ds:word_77E918, dx
inc     byte ptr [eax+4]
pop     edx
retn

loc_4BB223:
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BB238
xor     eax, eax
call    sub_47EB4B

loc_4BB238:
pop     edx
retn
sub_4BB206 endp




sub_4BB23A proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BB256
xor     eax, eax
call    sub_47EB4B
pop     edx
pop     ecx
retn

loc_4BB256:
mov     al, [ecx+4]
cmp     al, 2
jb      short loc_4BB26A
jbe     short loc_4BB2AA
cmp     al, 3
jbe     loc_4BB2DD
pop     edx
pop     ecx
retn

loc_4BB26A:
test    al, al
ja      short loc_4BB290
mov     eax, 50h ; 'P'
call    sub_47E888
test    eax, eax
jnz     loc_4BB309
mov     eax, offset unk_5355F0
call    sub_49DB4D

loc_4BB28A:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
retn

loc_4BB290:
mov     eax, 27h ; '''
call    sub_47E888
test    eax, eax
jz      short loc_4BB30D
mov     eax, 25h ; '%'
call    sub_47EB4B
jmp     short loc_4BB28A

loc_4BB2AA:
mov     eax, offset unk_535574
call    sub_4BB310
test    eax, eax
jz      short loc_4BB30D
mov     eax, 41h ; 'A'
call    sub_47E8B8
mov     eax, 28h ; '('
call    sub_47EB4B
mov     edx, offset unk_5355E0
mov     eax, offset unk_535578
call    sub_47EF23
jmp     short loc_4BB28A

loc_4BB2DD:
mov     eax, 50h ; 'P'
call    sub_47E888
test    eax, eax
jz      short loc_4BB30D
mov     edx, 10h
mov     eax, 4
call    sub_4A0E24
mov     edx, offset unk_5355E8
mov     eax, offset unk_535578
call    sub_47EF23

loc_4BB309:
mov     byte ptr [ecx+4], 0FFh

loc_4BB30D:
pop     edx
pop     ecx
retn
sub_4BB23A endp




sub_4BB310 proc near
push    ecx
push    edx
mov     edx, ds:dword_5F8376
sar     edx, 10h
sar     edx, 9
movsx   ecx, dl
movsx   edx, byte ptr [eax]
sub     ecx, edx
and     ecx, 0FFFFh
xor     edx, edx
mov     dl, [eax+2]
cmp     ecx, edx
jge     short loc_4BB364
mov     edx, ds:dword_5F837A
sar     edx, 10h
sar     edx, 9
movsx   edx, dl
movsx   ecx, byte ptr [eax+1]
sub     edx, ecx
and     edx, 0FFFFh
mov     al, [eax+3]
and     eax, 0FFh
cmp     edx, eax
jge     short loc_4BB364
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4BB364:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4BB310 endp




sub_4BB369 proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BB369 endp




sub_4BB374 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_535614[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BB374 endp




sub_4BB39C proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+4], 0
jnz     short loc_4BB3B2
mov     eax, 4Ah ; 'J'
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4BB3B2:
pop     edx

locret_4BB3B3:
retn
sub_4BB39C endp




sub_4BB3B4 proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BB3B4 endp




sub_4BB3BF proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_53566C[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BB3BF endp




sub_4BB3E7 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BB3FE
mov     eax, 31h ; '1'
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4BB3FE:
pop     edx

locret_4BB3FF:
retn
sub_4BB3E7 endp




sub_4BB400 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BB417
mov     eax, 32h ; '2'
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4BB417:
pop     edx
retn
sub_4BB400 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_17]



sub_4BB41A proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_5356CC[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx

locret_4BB441:
retn
sub_4BB41A endp

db 8Dh, 40h, 0
jpt_4BB468 dd offset loc_4BB46F ; jump table for switch statement
dd offset loc_4BB47E
dd offset loc_4BB493
dd offset loc_4BB4A8
dd offset def_4BB468

loc_4BB459:
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 4           ; switch 5 cases
ja      short def_4BB468 ; jumptable 004BB468 default case, case 4
and     eax, 0FFh
jmp     jpt_4BB468[eax*4] ; switch jump

loc_4BB46F:             ; jumptable 004BB468 case 0
mov     eax, 34h ; '4'

loc_4BB474:
call    sub_47EB4B
inc     byte ptr [edx+4]

def_4BB468:             ; jumptable 004BB468 default case, case 4
pop     edx
retn

loc_4BB47E:             ; jumptable 004BB468 case 1
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      short def_4BB468 ; jumptable 004BB468 default case, case 4
mov     eax, 35h ; '5'
jmp     short loc_4BB474

loc_4BB493:             ; jumptable 004BB468 case 2
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      short def_4BB468 ; jumptable 004BB468 default case, case 4
mov     eax, 36h ; '6'
jmp     short loc_4BB474

loc_4BB4A8:             ; jumptable 004BB468 case 3
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short def_4BB468 ; jumptable 004BB468 default case, case 4
mov     eax, 37h ; '7'
jmp     short loc_4BB474



sub_4BB4BD proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BB4BD endp




sub_4BB4C8 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_535724[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BB4C8 endp




sub_4BB4F0 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+4], 0
jnz     short loc_4BB506
mov     eax, 30h ; '0'
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4BB506:
pop     edx

locret_4BB507:
retn
sub_4BB4F0 endp




sub_4BB508 proc near
push    edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_535D9C
mov     eax, offset unk_535D94
call    sub_47EF23
xor     edx, edx
mov     ds:dword_77E5EC, edx

def_4BB57B:             ; jumptable 004BB57B default case, case 3
pop     edx
retn
sub_4BB508 endp




sub_4BB534 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_5357E4[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BB534 endp

jpt_4BB57B dd offset loc_4BB582 ; jump table for switch statement
dd offset loc_4BB59C
dd offset loc_4BB5B5
dd offset def_4BB57B

loc_4BB56C:
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 3           ; switch 4 cases
ja      short def_4BB57B ; jumptable 004BB57B default case, case 3
and     eax, 0FFh
jmp     jpt_4BB57B[eax*4] ; switch jump

loc_4BB582:             ; jumptable 004BB57B case 0
mov     eax, 52h ; 'R'
call    sub_47E888
test    eax, eax
jz      short def_4BB57B ; jumptable 004BB57B default case, case 3
or      ds:byte_5F8421, 40h
inc     byte ptr [edx+4]
pop     edx
retn

loc_4BB59C:             ; jumptable 004BB57B case 1
mov     eax, 10h
call    sub_4D9040
mov     eax, 0Dh
call    sub_49E0D7
inc     byte ptr [edx+4]
pop     edx
retn

loc_4BB5B5:             ; jumptable 004BB57B case 2
cmp     ds:word_6E23D6, 0
jnz     def_4BB57B      ; jumptable 004BB57B default case, case 3
mov     eax, 42h ; 'B'
call    sub_47EB4B
inc     byte ptr [edx+4]
pop     edx
retn



sub_4BB5D2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BB5F7
mov     eax, 34h ; '4'
call    sub_47E888
test    eax, eax
jz      short loc_4BB5F7
mov     eax, 41h ; 'A'
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4BB5F7:
pop     edx

locret_4BB5F8:
retn
sub_4BB5D2 endp




sub_4BB5F9 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB611
mov     eax, offset unk_535D6C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BB611:
pop     edx
retn
sub_4BB5F9 endp




sub_4BB613 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB62B
mov     eax, offset unk_535D4C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BB62B:
pop     edx
retn
sub_4BB613 endp




sub_4BB62D proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB645
mov     eax, offset unk_535D74
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BB645:
pop     edx
retn
sub_4BB62D endp




sub_4BB647 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB65F
mov     eax, offset unk_535D54
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BB65F:
pop     edx
retn
sub_4BB647 endp




sub_4BB661 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB679
mov     eax, offset unk_535D7C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BB679:
pop     edx
retn
sub_4BB661 endp




sub_4BB67B proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB6A7
mov     eax, offset unk_535D5C
call    sub_47EC19
mov     eax, 0Ah
call    sub_47EDA7
mov     eax, 0Bh
call    sub_47EDA7
mov     byte ptr [edx+4], 0FFh

loc_4BB6A7:
pop     edx
retn
sub_4BB67B endp

align 4
jpt_4BB6D5 dd offset loc_4BB6DC ; jump table for switch statement
dd offset loc_4BB71E
dd offset loc_4BB735
dd offset loc_4BB750
dd offset loc_4BB6EA



sub_4BB6C0 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 4           ; switch 5 cases
ja      def_4BB6D5      ; jumptable 004BB6D5 default case
and     eax, 0FFh
jmp     jpt_4BB6D5[eax*4] ; switch jump

loc_4BB6DC:             ; jumptable 004BB6D5 case 0
mov     eax, 52h ; 'R'
call    sub_47E888
test    eax, eax
jz      short loc_4BB6F2

loc_4BB6EA:             ; jumptable 004BB6D5 case 4
mov     byte ptr [ecx+4], 0FFh
pop     edx
pop     ecx
pop     ebx
retn

loc_4BB6F2:
mov     eax, 34h ; '4'
call    sub_47E888
test    eax, eax
jz      def_4BB6D5      ; jumptable 004BB6D5 default case
call    sub_47ECAE
xor     ebx, ebx
mov     edx, 1

loc_4BB710:
xor     eax, eax
call    sub_47EEF1

loc_4BB717:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4BB71E:             ; jumptable 004BB6D5 case 1
mov     eax, 52h ; 'R'
call    sub_47E888
test    eax, eax
jz      short def_4BB6D5 ; jumptable 004BB6D5 default case
or      ds:byte_5F8421, 40h
jmp     short loc_4BB717

loc_4BB735:             ; jumptable 004BB6D5 case 2
mov     eax, 10h
call    sub_4D9040
mov     eax, 0Dh
call    sub_49E0D7
call    sub_4A0E35
jmp     short loc_4BB717

loc_4BB750:             ; jumptable 004BB6D5 case 3
cmp     ds:word_6E23D6, 0
jnz     short def_4BB6D5 ; jumptable 004BB6D5 default case
cmp     ds:byte_77EAB8, 0
jnz     short def_4BB6D5 ; jumptable 004BB6D5 default case
mov     eax, 42h ; 'B'
call    sub_47EB4B
xor     ebx, ebx
xor     edx, edx
jmp     short loc_4BB710

def_4BB6D5:             ; jumptable 004BB6D5 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4BB6C0 endp




sub_4BB777 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BB7A6
mov     eax, 34h ; '4'
call    sub_47E888
test    eax, eax
jnz     short loc_4BB7A6
mov     eax, 34h ; '4'
call    sub_47E8B8
mov     eax, 41h ; 'A'
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4BB7A6:
pop     edx
retn
sub_4BB777 endp




sub_4BB7A8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB7D5
mov     eax, 52h ; 'R'
call    sub_47E888
test    eax, eax
jz      short loc_4BB7C7
mov     eax, offset unk_535D84
jmp     short loc_4BB7CC

loc_4BB7C7:
mov     eax, offset unk_535D7C

loc_4BB7CC:
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BB7D5:
pop     edx
retn
sub_4BB7A8 endp




sub_4BB7D7 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB851
mov     eax, offset unk_535D5C
call    sub_47EC19
mov     eax, 52h ; 'R'
call    sub_47E888
test    eax, eax
jz      short loc_4BB82F
xor     eax, eax
call    sub_47EDA7
mov     eax, 1
call    sub_47EDA7
mov     eax, 6
call    sub_47EDA7
mov     eax, 7
call    sub_47EDA7
mov     eax, 8
call    sub_47EDA7
mov     eax, 9
jmp     short loc_4BB848

loc_4BB82F:
mov     eax, 0Ah
call    sub_47EDA7
mov     eax, 0Bh
call    sub_47EDA7
mov     eax, 6

loc_4BB848:
call    sub_47EDA7
mov     byte ptr [edx+4], 0FFh

loc_4BB851:
pop     edx
retn
sub_4BB7D7 endp




sub_4BB853 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB86B
mov     eax, offset unk_535D8C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BB86B:
pop     edx
retn
sub_4BB853 endp




sub_4BB86D proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB885
mov     eax, offset unk_535D64
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BB885:
pop     edx
retn
sub_4BB86D endp

unk_4BB887 db    0
dd 0
db 2, 2 dup(0)



sub_4BB88F proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BB88F endp




sub_4BB89A proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_535E84[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BB89A endp




sub_4BB8C2 proc near
push    edx
mov     edx, eax
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BB8DC
xor     eax, eax
call    sub_47EB4B
pop     edx
retn

loc_4BB8DC:
mov     al, [edx+4]
test    al, al
jbe     short loc_4BB8E9
cmp     al, 1
jz      short loc_4BB8F8
pop     edx
retn

loc_4BB8E9:
cmp     byte ptr ds:dword_77E7D5+1, 8
jnz     short loc_4BB90B
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4BB8F8:
mov     eax, 56h ; 'V'
call    sub_47E888
test    eax, eax
jz      short loc_4BB90F
call    sub_47E829

loc_4BB90B:
mov     byte ptr [edx+4], 0FFh

loc_4BB90F:
pop     edx
retn
sub_4BB8C2 endp




sub_4BB911 proc near
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
mov     edi, esp
mov     esi, offset unk_4BB887
movsd
movsd
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BB93A
xor     eax, eax
call    sub_47EB4B
jmp     short loc_4BB994

loc_4BB93A:
mov     al, [ecx+4]
test    al, al
jbe     short loc_4BB947
cmp     al, 1
jz      short loc_4BB96E
jmp     short loc_4BB994

loc_4BB947:
mov     eax, 35h ; '5'
call    sub_47E888
test    eax, eax
jnz     short loc_4BB95B
mov     byte ptr [ecx+4], 1
jmp     short loc_4BB994

loc_4BB95B:
mov     eax, esp
call    sub_42C443
mov     edx, 31500h
call    sub_4A7AE1
jmp     short loc_4BB990

loc_4BB96E:
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      short loc_4BB994
mov     eax, 35h ; '5'
call    sub_47E8B8
mov     eax, 43h ; 'C'
call    sub_47EB4B

loc_4BB990:
mov     byte ptr [ecx+4], 0FFh

loc_4BB994:
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4BB911 endp




sub_4BB99C proc near
push    edx
mov     edx, eax
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BB9B6
xor     eax, eax
call    sub_47EB4B
pop     edx
retn

loc_4BB9B6:
mov     al, [edx+4]
test    al, al
jbe     short loc_4BB9C3
cmp     al, 1
jz      short loc_4BB9E1
pop     edx
retn

loc_4BB9C3:
mov     eax, 57h ; 'W'
call    sub_47E888
test    eax, eax
jnz     short loc_4BBA03
mov     eax, offset unk_535EEC
call    sub_47EC19
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4BB9E1:
mov     eax, 57h ; 'W'
call    sub_47E888
test    eax, eax
jz      short loc_4BBA07
mov     eax, 57h ; 'W'
call    sub_47E8B8
mov     eax, 44h ; 'D'
call    sub_47EB4B

loc_4BBA03:
mov     byte ptr [edx+4], 0FFh

loc_4BBA07:
pop     edx

locret_4BBA08:
retn
sub_4BB99C endp




sub_4BBA09 proc near
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short locret_4BBA08
xor     eax, eax
jmp     sub_47EB4B
sub_4BBA09 endp




sub_4BBA1E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4BBA30
jbe     short loc_4BBA60
cmp     al, 2
jz      short loc_4BBA84
pop     edx
retn

loc_4BBA30:
test    al, al
jnz     loc_4BBABE
mov     eax, 58h ; 'X'
call    sub_47E888
test    eax, eax
jnz     short loc_4BBA4C
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4BBA4C:
mov     eax, 6Ch ; 'l'
call    sub_47E888
test    eax, eax
jnz     short loc_4BBABA
mov     byte ptr [edx+4], 2
pop     edx
retn

loc_4BBA60:
mov     eax, 58h ; 'X'
call    sub_47E888
test    eax, eax
jz      short loc_4BBABE
mov     eax, 58h ; 'X'
call    sub_47E8B8
mov     eax, 45h ; 'E'
call    sub_47EB4B
jmp     short loc_4BBABA

loc_4BBA84:
mov     eax, 6Ch ; 'l'
call    sub_47E888
test    eax, eax
jz      short loc_4BBABE
mov     eax, 6Ch ; 'l'
call    sub_47E8B8
mov     eax, 10h
call    sub_4D9040
mov     eax, 0Eh
call    sub_49E0D7
mov     eax, 46h ; 'F'
call    sub_47EB4B

loc_4BBABA:
mov     byte ptr [edx+4], 0FFh

loc_4BBABE:
pop     edx

locret_4BBABF:
retn
sub_4BBA1E endp




sub_4BBAC0 proc near
push    edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_536870
mov     eax, offset unk_536868
call    sub_47EF23
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BBAC0 endp




sub_4BBAEC proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4BBB25
cmp     byte ptr ds:dword_77E7D5+1, 0Bh
jz      short loc_4BBB1B
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4BBB12[edx*4]
jmp     short loc_4BBB25

loc_4BBB1B:
mov     eax, 1FFh
call    sub_47E8B8

loc_4BBB25:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4BBB57
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_535FCC[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4BBB57:
pop     edx
retn
sub_4BBAEC endp




sub_4BBB59 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBB70
mov     eax, offset unk_536700
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BBB70:
pop     edx
retn
sub_4BBB59 endp




sub_4BBB72 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BBB82
cmp     al, 1
jz      short loc_4BBBD8
pop     edx
retn

loc_4BBB82:
mov     eax, 4Dh ; 'M'
call    sub_47E888
test    eax, eax
jnz     short loc_4BBBA6
mov     eax, 4Dh ; 'M'
call    sub_47E8B8
mov     eax, 48h ; 'H'
call    sub_47EB4B
pop     edx
retn

loc_4BBBA6:
mov     eax, offset unk_536708
call    sub_47EC19
mov     eax, 70h ; 'p'
call    sub_47E888
test    eax, eax
jnz     short loc_4BBBD2
mov     eax, 70h ; 'p'
call    sub_47E8B8
mov     eax, 2
call    sub_49E0D7

loc_4BBBD2:
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4BBBD8:
mov     eax, 4Eh ; 'N'
call    sub_47E888
test    eax, eax
jz      short loc_4BBC07
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BBC07
mov     eax, 4Eh ; 'N'
call    sub_47E8B8
mov     eax, 49h ; 'I'
call    sub_47EB4B
mov     byte ptr [edx+4], 0FFh

loc_4BBC07:
pop     edx
retn
sub_4BBB72 endp




sub_4BBC09 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBC47
mov     eax, offset unk_536710
call    sub_47EC19
mov     eax, 6Fh ; 'o'
call    sub_47E888
test    eax, eax
jnz     short loc_4BBC44
call    sub_47EDA7
mov     eax, 1
call    sub_47EDA7
mov     eax, 2
call    sub_47EDA7

loc_4BBC44:
inc     byte ptr [edx+4]

loc_4BBC47:
pop     edx

locret_4BBC48:
retn
sub_4BBC09 endp




sub_4BBC49 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBC87
mov     eax, 33h ; '3'
call    sub_47E888
test    eax, eax
jnz     short loc_4BBC83
mov     eax, 21h ; '!'
call    sub_47E888
test    eax, eax
jz      short loc_4BBC83
mov     eax, 56h ; 'V'
call    sub_47EB4B
mov     eax, 33h ; '3'
call    sub_47E8B8

loc_4BBC83:
mov     byte ptr [edx+4], 0FFh

loc_4BBC87:
pop     edx

locret_4BBC88:
retn
sub_4BBC49 endp




sub_4BBC89 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBCA1
mov     eax, offset unk_536688
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBCA1:
pop     edx
retn
sub_4BBC89 endp




sub_4BBCA3 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBCBB
mov     eax, offset unk_5366A8
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBCBB:
pop     edx
retn
sub_4BBCA3 endp




sub_4BBCBD proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBCD5
mov     eax, offset unk_5366C8
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBCD5:
pop     edx

locret_4BBCD6:
retn
sub_4BBCBD endp




sub_4BBCD7 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBD21
mov     eax, 33h ; '3'
call    sub_47E888
test    eax, eax
jnz     short loc_4BBD13
mov     eax, 21h ; '!'
call    sub_47E888
test    eax, eax
jz      short loc_4BBD13
mov     eax, 56h ; 'V'
call    sub_47EB4B
mov     eax, 33h ; '3'
call    sub_47E8B8
jmp     short loc_4BBD1D

loc_4BBD13:
mov     eax, offset unk_5366E8
call    sub_47EC19

loc_4BBD1D:
mov     byte ptr [edx+4], 0FFh

loc_4BBD21:
pop     edx
retn
sub_4BBCD7 endp




sub_4BBD23 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBD3B
mov     eax, offset unk_5366F0
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBD3B:
pop     edx

locret_4BBD3C:
retn
sub_4BBD23 endp




sub_4BBD3D proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBD55
mov     eax, offset unk_536690
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBD55:
pop     edx
retn
sub_4BBD3D endp




sub_4BBD57 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBD6F
mov     eax, offset unk_5366B0
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBD6F:
pop     edx
retn
sub_4BBD57 endp




sub_4BBD71 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBD89
mov     eax, offset unk_5366D0
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBD89:
pop     edx
retn
sub_4BBD71 endp




sub_4BBD8B proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBDA3
mov     eax, offset unk_536698
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBDA3:
pop     edx
retn
sub_4BBD8B endp




sub_4BBDA5 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBDBD
mov     eax, offset unk_5366B8
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBDBD:
pop     edx
retn
sub_4BBDA5 endp




sub_4BBDBF proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBDD7
mov     eax, offset unk_5366D8
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBDD7:
pop     edx
retn
sub_4BBDBF endp




sub_4BBDD9 proc near
push    edx
mov     dl, [eax+4]
test    dl, dl
jnz     short loc_4BBDE5
mov     byte ptr [eax+4], 0FFh

loc_4BBDE5:
pop     edx
retn
sub_4BBDD9 endp




sub_4BBDE7 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBDFF
mov     eax, offset unk_5366F0
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBDFF:
pop     edx
retn
sub_4BBDE7 endp




sub_4BBE01 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBE19
mov     eax, offset unk_5366A0
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBE19:
pop     edx
retn
sub_4BBE01 endp




sub_4BBE1B proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBE33
mov     eax, offset unk_5366C0
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBE33:
pop     edx
retn
sub_4BBE1B endp




sub_4BBE35 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBE4D
mov     eax, offset unk_5366E0
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBE4D:
pop     edx
retn
sub_4BBE35 endp




sub_4BBE4F proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      loc_4BBEF5
mov     eax, 235h
call    sub_47E888
test    eax, eax
jz      short loc_4BBE95
mov     eax, 7E2h
call    sub_47E8B8
mov     eax, 7E3h
call    sub_47E8B8
mov     eax, 7E4h
call    sub_47E8B8
mov     eax, 7E8h
call    sub_47E8B8
jmp     short loc_4BBEF5

loc_4BBE95:
mov     eax, 22Dh
call    sub_47E888
test    eax, eax
jnz     short loc_4BBECB
mov     eax, 22Ch
call    sub_47E888
test    eax, eax
jz      short loc_4BBEF5
mov     eax, 22Eh
call    sub_47E888
test    eax, eax
jnz     short loc_4BBEF5
mov     eax, offset unk_53673C
call    sub_49DBA5
jmp     short loc_4BBEF5

loc_4BBECB:
mov     eax, 22Ch
call    sub_47E888
test    eax, eax
jz      short loc_4BBEF5
mov     eax, 22Eh
call    sub_47E888
test    eax, eax
jnz     short loc_4BBEF5
mov     eax, 54h ; 'T'
call    sub_47EB4B
mov     byte ptr [edx+4], 0FFh

loc_4BBEF5:
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
pop     edx
retn
sub_4BBE4F endp




sub_4BBF03 proc near
mov     al, [eax+4]
test    al, al
jnz     short sub_4BBF40
mov     eax, 235h
call    sub_47E888
test    eax, eax
jz      short sub_4BBF40
mov     eax, 7E2h
call    sub_47E8B8
mov     eax, 7E3h
call    sub_47E8B8
mov     eax, 7E4h
call    sub_47E8B8
mov     eax, 7E8h
call    sub_47E8B8
sub_4BBF03 endp




sub_4BBF40 proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4BBF40 endp




sub_4BBF4D proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BBF64
cmp     al, 0FFh
jz      loc_4BBFEB
jmp     loc_4BBFDD

loc_4BBF64:
mov     eax, 239h
call    sub_47E888
test    eax, eax
jz      short loc_4BBF77
call    sub_4BC041

loc_4BBF77:
mov     eax, 2Ah ; '*'
call    sub_47E888
test    eax, eax
jz      short loc_4BBFAD
mov     eax, 249h
call    sub_47E888
test    eax, eax
jnz     short loc_4BBFAD
mov     eax, offset unk_536854
call    sub_49DBA5
mov     eax, 249h
call    sub_47E8B8
mov     byte ptr [edx+4], 0FFh
jmp     short loc_4BBFDD

loc_4BBFAD:
mov     eax, 238h
call    sub_47E888
test    eax, eax
jz      short loc_4BBFDD
mov     eax, 239h
call    sub_47E888
test    eax, eax
jnz     short loc_4BBFDD
mov     eax, 239h
call    sub_47E8B8
mov     eax, offset unk_536750
call    sub_49DBA5

loc_4BBFDD:
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
pop     edx
retn

loc_4BBFEB:
mov     al, 1
pop     edx
retn
sub_4BBF4D endp




sub_4BBFEF proc near
mov     al, [eax+4]
test    al, al
jnz     sub_4BBF40
mov     eax, 2Ah ; '*'
call    sub_47E888
test    eax, eax
jz      short loc_4BC025
mov     eax, 249h
call    sub_47E888
test    eax, eax
jnz     short loc_4BC025
mov     eax, 22Dh
call    sub_47EA91
jmp     sub_4BBF40

loc_4BC025:
mov     eax, 239h
call    sub_47E888
test    eax, eax
jz      sub_4BBF40
call    sub_4BC041
jmp     sub_4BBF40
sub_4BBFEF endp




sub_4BC041 proc near
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
jb      short loc_4BC070
jbe     short loc_4BC0A1
cmp     dl, 2
jz      short loc_4BC0CA
jmp     loc_4BC0F1

loc_4BC070:
test    dl, dl
jnz     loc_4BC0F1
cmp     ds:word_77E7E6, 0Ah
jbe     short loc_4BC0F1
mov     eax, 23Ah
call    sub_47E8B8
mov     eax, 23Bh
call    sub_47EA91
xor     ebx, ebx
mov     ds:word_77E7E6, bx
jmp     short loc_4BC0F1

loc_4BC0A1:
cmp     ds:word_77E7E6, 14h
jbe     short loc_4BC0F1
mov     eax, 23Ah
call    sub_47EA91
mov     eax, 23Bh
call    sub_47E8B8
xor     edi, edi
mov     ds:word_77E7E6, di
jmp     short loc_4BC0F1

loc_4BC0CA:
cmp     ds:word_77E7E6, 1Eh
jbe     short loc_4BC0F1
mov     eax, 23Ah
call    sub_47E8B8
mov     eax, 23Bh
call    sub_47E8B8
xor     ecx, ecx
mov     ds:word_77E7E6, cx

loc_4BC0F1:
cmp     byte ptr ds:dword_77E7D5, 8
jnz     short loc_4BC108
xor     ebx, ebx
mov     bl, dl
add     ebx, offset unk_5368D4
mov     dh, 0Ah
jmp     short loc_4BC114

loc_4BC108:
xor     ebx, ebx
mov     bl, dl
add     ebx, offset unk_5368D0
mov     dh, 2

loc_4BC114:
xor     dl, dl

loc_4BC116:
cmp     dl, [ebx]
jnb     short loc_4BC13C
xor     ecx, ecx
mov     cl, dh
xor     eax, eax
mov     al, dl
add     ecx, eax
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_53673C
call    sub_49DBA5
inc     dl
jmp     short loc_4BC116

loc_4BC13C:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BC041 endp




sub_4BC141 proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BC141 endp




sub_4BC14C proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_536B3C[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BC14C endp




sub_4BC174 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_4BC205
xor     ecx, ecx
mov     cl, al
mov     al, [edx+4]
test    al, al
ja      short loc_4BC1AA
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_536AF4
call    sub_47EC19
cmp     byte ptr ds:dword_77E7D5+1, 8
jge     short loc_4BC1A7
xor     eax, eax
call    sub_47EDA7

loc_4BC1A7:
inc     byte ptr [edx+4]

loc_4BC1AA:
pop     edx
pop     ecx
retn
sub_4BC174 endp




sub_4BC1AD proc near
push    ecx
push    edx
mov     ecx, eax
call    sub_4BC205
xor     edx, edx
mov     dl, al
mov     al, [ecx+4]
test    al, al
ja      short loc_4BC202
mov     eax, edx
shl     eax, 3
add     eax, 20h ; ' '
add     eax, offset unk_536AF4
call    sub_47EC19
xor     edx, edx
jmp     short loc_4BC1DD

loc_4BC1D7:
inc     edx
cmp     edx, 8
jge     short loc_4BC1FE

loc_4BC1DD:
lea     eax, [edx+38h]
call    sub_47E888
test    eax, eax
jz      short loc_4BC1D7
call    sub_4DE227
test    eax, eax
jz      short loc_4BC1D7
or      byte ptr [eax], 1
mov     byte ptr [eax+2], 22h ; '"'
mov     [eax+0Ch], dl
jmp     short loc_4BC1D7

loc_4BC1FE:
mov     byte ptr [ecx+4], 0FFh

loc_4BC202:
pop     edx
pop     ecx
retn
sub_4BC1AD endp




sub_4BC205 proc near
push    ecx
push    edx
xor     edx, edx
xor     ecx, ecx
jmp     short loc_4BC213

loc_4BC20D:
inc     edx
cmp     edx, 8
jge     short loc_4BC22B

loc_4BC213:
lea     eax, [edx+38h]
call    sub_47E888
test    eax, eax
jz      short loc_4BC20D
xor     eax, eax
mov     al, ds:byte_536B7C[edx]
add     ecx, eax
jmp     short loc_4BC20D

loc_4BC22B:
cmp     ecx, 2Eh ; '.'
jl      short loc_4BC23A
mov     edx, 3
mov     al, dl
pop     edx
pop     ecx
retn

loc_4BC23A:
cmp     ecx, 19h
jl      short loc_4BC249
mov     edx, 2
mov     al, dl
pop     edx
pop     ecx
retn

loc_4BC249:
cmp     ecx, 0Ah
jl      short loc_4BC258
mov     edx, 1
mov     al, dl
pop     edx
pop     ecx
retn

loc_4BC258:
xor     edx, edx
mov     al, dl
pop     edx
pop     ecx
retn
sub_4BC205 endp




sub_4BC25F proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BC25F endp




sub_4BC26A proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_536BB4[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BC26A endp




sub_4BC292 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BC2A6
cmp     al, 1
jz      short loc_4BC2C7
pop     edx
pop     ecx
pop     ebx
retn

loc_4BC2A6:
mov     eax, 66h ; 'f'
call    sub_47E888
test    eax, eax
jnz     short loc_4BC2E0
xor     ebx, ebx
mov     edx, 1
call    sub_47EEF1
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4BC2C7:
mov     eax, 616h
call    sub_47E888
test    eax, eax
jz      short loc_4BC2E4
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_47EEF1

loc_4BC2E0:
mov     byte ptr [ecx+4], 0FFh

loc_4BC2E4:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BC292 endp




sub_4BC2E8 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BC2FC
cmp     al, 1
jz      short loc_4BC31D
pop     edx
pop     ecx
pop     ebx
retn

loc_4BC2FC:
mov     eax, 67h ; 'g'
call    sub_47E888
test    eax, eax
jnz     short loc_4BC336
xor     ebx, ebx
mov     edx, 1
call    sub_47EEF1
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4BC31D:
mov     eax, 617h
call    sub_47E888
test    eax, eax
jz      short loc_4BC33A
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_47EEF1

loc_4BC336:
mov     byte ptr [ecx+4], 0FFh

loc_4BC33A:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BC2E8 endp




sub_4BC33E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BC352
cmp     al, 1
jz      short loc_4BC373
pop     edx
pop     ecx
pop     ebx
retn

loc_4BC352:
mov     eax, 68h ; 'h'
call    sub_47E888
test    eax, eax
jnz     short loc_4BC38C
xor     ebx, ebx
mov     edx, 1
call    sub_47EEF1
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4BC373:
mov     eax, 618h
call    sub_47E888
test    eax, eax
jz      short loc_4BC390
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_47EEF1

loc_4BC38C:
mov     byte ptr [ecx+4], 0FFh

loc_4BC390:
pop     edx
pop     ecx
pop     ebx

locret_4BC393:
retn
sub_4BC33E endp




sub_4BC394 proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BC394 endp




sub_4BC39F proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_536C2C[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BC39F endp




sub_4BC3C7 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+4], 0
jnz     short loc_4BC3DD
mov     eax, 4Ch ; 'L'
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4BC3DD:
pop     edx
retn
sub_4BC3C7 endp


loc_4BC3DF:
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4BC3E5[edx*4]
pop     edx
retn



sub_4BC3EE proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
add     eax, 14h
mov     byte ptr [edx], 1
mov     byte ptr [eax+9], 0FFh
mov     byte ptr [eax+8], 0FFh
mov     ecx, ds:dword_77E7D0+1
sar     ecx, 18h
mov     ebx, ds:dword_77E7D0+2
sar     ebx, 18h
mov     ecx, ds:off_536C78[ecx*4]
mov     ecx, [ecx+ebx*4]
mov     [eax], ecx
mov     dword ptr [eax+4], 0
mov     ds:byte_55CF0C, 0FFh
mov     ds:byte_55CF0D, 0FFh
mov     al, ds:byte_77E7D4
cmp     al, 13h
jb      short loc_4BC451
jbe     short loc_4BC46F
cmp     al, 1Ah
jb      short loc_4BC44B
jbe     short loc_4BC47D
cmp     al, 1Dh
jz      short loc_4BC484
jmp     short loc_4BC48E

loc_4BC44B:
cmp     al, 14h
jz      short loc_4BC476
jmp     short loc_4BC48E

loc_4BC451:
cmp     al, 9
jb      short loc_4BC45D
jbe     short loc_4BC468
cmp     al, 0Eh
jz      short loc_4BC468
jmp     short loc_4BC48E

loc_4BC45D:
test    al, al
jnz     short loc_4BC48E
mov     eax, 630h
jmp     short loc_4BC489

loc_4BC468:
mov     eax, 610h
jmp     short loc_4BC489

loc_4BC46F:
mov     eax, 620h
jmp     short loc_4BC489

loc_4BC476:
mov     eax, 609h
jmp     short loc_4BC489

loc_4BC47D:
mov     eax, 605h
jmp     short loc_4BC489

loc_4BC484:
mov     eax, 604h

loc_4BC489:
call    sub_47EA91

loc_4BC48E:
mov     byte ptr [edx+8], 1
mov     eax, edx
call    sub_4BC49D
pop     edx
pop     ecx
pop     ebx
retn
sub_4BC3EE endp




sub_4BC49D proc near

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
lea     edi, [eax+14h]
mov     ebx, [edi]

loc_4BC4AC:
movsx   eax, word ptr [ebx]
cmp     eax, 0FFFFFFFFh
jz      loc_4BC7E7
mov     eax, [ebx]
sar     eax, 10h
mov     edx, [edi+5]
sar     edx, 18h
cmp     eax, edx
jz      loc_4BC6E2
mov     ecx, ds:dword_5F8376
sar     ecx, 10h
sar     ecx, 9
mov     eax, [ebx+1]
sar     eax, 18h
sub     ecx, eax
mov     [esp+20h+var_1C], ecx
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
mov     ecx, [ebx+2]
sar     ecx, 18h
sub     eax, ecx
xor     ecx, ecx
mov     cl, [ebx+6]
cmp     ecx, [esp+20h+var_1C]
jbe     loc_4BC6DA
xor     ecx, ecx
mov     cl, [ebx+7]
cmp     eax, ecx
jnb     loc_4BC6DA
cmp     edx, 0FFFFFFFFh
jz      loc_4BC6D0
mov     edx, offset byte_55CF0C

loc_4BC520:
mov     cl, [edx+1]
cmp     cl, 0FFh
jz      loc_4BC6D0
xor     eax, eax
mov     al, cl
call    sub_4DD420
cmp     eax, 40h ; '@'
jb      short loc_4BC55F
jbe     loc_4BC5D5
cmp     eax, 60h ; '`'
jb      loc_4BC6C8
jbe     loc_4BC61A
cmp     eax, 0E0h
jz      loc_4BC680
jmp     loc_4BC6C8

loc_4BC55F:
cmp     eax, 20h ; ' '
jnz     loc_4BC6C8
xor     eax, eax
mov     al, [edx+1]
call    sub_4E1877
mov     ecx, ds:dword_77E778
mov     ebp, ds:dword_55CF94
xor     ecx, ebp
mov     esi, ebp
and     esi, ecx
mov     cl, [edx+1]
and     cl, 1Fh
and     ecx, 0FFh
mov     ebp, 80000000h
shr     ebp, cl
test    esi, ebp
jz      short loc_4BC5B1

loc_4BC59B:
movsx   ecx, byte ptr [edx]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, [ebx+8]
mov     eax, [ecx+eax*8+14h]
jmp     loc_4BC663

loc_4BC5B1:
mov     byte ptr [eax+8], 2
xor     ecx, ecx
mov     cl, [eax+2]
mov     esi, ecx
shl     esi, 2
mov     ecx, ds:dword_77E6F0

loc_4BC5C5:
add     ecx, esi
movzx   esi, byte ptr [eax+4]
mov     ecx, [ecx]
call    dword ptr [ecx+esi*4]
jmp     loc_4BC6C8

loc_4BC5D5:
xor     eax, eax
mov     al, [edx+1]
call    sub_4E1877
mov     ecx, ds:dword_77E758
mov     esi, ds:dword_55CF98
xor     ecx, esi
and     esi, ecx
mov     cl, [edx+1]
and     cl, 1Fh
and     ecx, 0FFh
mov     ebp, 80000000h
shr     ebp, cl
test    esi, ebp
jnz     short loc_4BC59B
mov     byte ptr [eax+8], 2
xor     ecx, ecx
mov     cl, [eax+2]
shl     ecx, 2
mov     esi, ds:dword_77E6D4
jmp     short loc_4BC5C5

loc_4BC61A:
xor     eax, eax
mov     al, [edx+1]
call    sub_4E1877
mov     ecx, ds:dword_77E73C
mov     ebp, ds:dword_55CF8C
xor     ecx, ebp
mov     esi, ebp
and     esi, ecx
mov     cl, [edx+1]
and     cl, 1Fh
and     ecx, 0FFh
mov     ebp, 80000000h
shr     ebp, cl
test    esi, ebp
jz      short loc_4BC66A

loc_4BC64D:
movsx   ecx, byte ptr [edx]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, eax
shl     ecx, 3
mov     eax, [ebx+8]
mov     eax, [ecx+eax+14h]

loc_4BC663:
call    sub_47E8B8
jmp     short loc_4BC6C8

loc_4BC66A:
mov     byte ptr [eax+8], 2
xor     ecx, ecx
mov     cl, [eax+2]
mov     esi, ecx
shl     esi, 2
mov     ecx, ds:dword_77E6E0
jmp     short loc_4BC6C5

loc_4BC680:
xor     eax, eax
mov     al, [edx+1]
call    sub_4E1877
mov     ecx, ds:dword_77E730
mov     esi, ds:dword_55CF90
xor     ecx, esi
and     esi, ecx
mov     cl, [edx+1]
and     cl, 1Fh
and     ecx, 0FFh
mov     ebp, 80000000h
shr     ebp, cl
test    esi, ebp
jnz     short loc_4BC64D
mov     byte ptr [eax+8], 2
xor     ecx, ecx
mov     cl, [eax+2]
mov     esi, ecx
shl     esi, 2
mov     ecx, ds:dword_77E6D8

loc_4BC6C5:
call    dword ptr [ecx+esi]

loc_4BC6C8:
add     edx, 2
jmp     loc_4BC520

loc_4BC6D0:
mov     [edi+4], ebx
mov     eax, [esp+20h+var_20]
mov     byte ptr [eax+8], 2

loc_4BC6DA:
add     ebx, 0Ch
jmp     loc_4BC4AC

loc_4BC6E2:
mov     edx, offset byte_55CF0C

loc_4BC6E7:
cmp     byte ptr [edx+1], 0FFh
jz      short loc_4BC6DA
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 40h ; '@'
jb      short loc_4BC719
jbe     short loc_4BC75E
cmp     eax, 60h ; '`'
jb      loc_4BC7DF
jbe     short loc_4BC76D
cmp     eax, 0E0h
jz      loc_4BC7A7
jmp     loc_4BC7DF

loc_4BC719:
cmp     eax, 20h ; ' '
jnz     loc_4BC7DF
mov     eax, ds:dword_77E778
mov     ebp, ds:dword_55CF94
xor     eax, ebp
mov     esi, ebp

loc_4BC731:
and     esi, eax
mov     cl, [edx+1]
and     cl, 1Fh
mov     eax, 80000000h
shr     eax, cl
test    esi, eax
jz      loc_4BC7DF
movsx   ecx, byte ptr [edx]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, [ebx+8]
mov     eax, [ecx+eax*8+14h]
jmp     loc_4BC7DA

loc_4BC75E:
mov     eax, ds:dword_77E758
mov     esi, ds:dword_55CF98
xor     eax, esi
jmp     short loc_4BC731

loc_4BC76D:
mov     eax, ds:dword_77E73C
mov     ecx, ds:dword_55CF8C
xor     eax, ecx
mov     esi, ecx
and     esi, eax
mov     cl, [edx+1]
and     cl, 1Fh
mov     eax, 80000000h
shr     eax, cl
test    esi, eax
jz      short loc_4BC7DF
movsx   ecx, byte ptr [edx]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, eax
shl     ecx, 3
mov     eax, [ebx+8]
mov     eax, [ecx+eax+14h]
jmp     short loc_4BC7DA

loc_4BC7A7:
mov     eax, ds:dword_77E730
mov     ebp, ds:dword_55CF90
xor     eax, ebp
mov     esi, ebp
and     esi, eax
mov     cl, [edx+1]
and     cl, 1Fh
mov     eax, 80000000h
shr     eax, cl
test    esi, eax
jz      short loc_4BC7DF
movsx   ecx, byte ptr [edx]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, [ebx+8]
mov     eax, [ecx+eax*8+14h]

loc_4BC7DA:
call    sub_47E8B8

loc_4BC7DF:
add     edx, 2
jmp     loc_4BC6E7

loc_4BC7E7:
mov     eax, ds:dword_77E778
mov     ds:dword_55CF94, eax
mov     eax, ds:dword_77E758
mov     ds:dword_55CF98, eax
mov     eax, ds:dword_77E73C
mov     ds:dword_55CF8C, eax
mov     eax, ds:dword_77E730
mov     ds:dword_55CF90, eax
add     esp, 8

loc_4BC812:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BC49D endp ; sp-analysis failed




sub_4BC819 proc near

var_30= dword ptr -30h
var_2C= byte ptr -2Ch
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
push    eax
add     eax, 14h
mov     [esp+30h+var_24], eax
xor     edx, edx
mov     [esp+30h+var_1C], edx
mov     eax, [eax+4]
mov     [esp+30h+var_20], eax
mov     ecx, offset byte_55CF0C
mov     edx, [eax+8]

loc_4BC83F:
movsx   eax, byte ptr [edx]
cmp     eax, 0FFFFFFFFh
jz      loc_4BC9B3
mov     eax, [edx+14h]
call    sub_47E888
test    eax, eax
jnz     loc_4BC9A7
mov     al, [edx+1]
lea     ebp, [ecx+2]
cmp     al, 40h ; '@'
jb      short loc_4BC886
jbe     loc_4BC932
cmp     al, 60h ; '`'
jb      loc_4BC9A7
jbe     loc_4BC93C
cmp     al, 0E0h
jz      loc_4BC95A
jmp     loc_4BC9A7

loc_4BC886:
cmp     al, 20h ; ' '
jnz     loc_4BC9A7
call    sub_4DDF54

loc_4BC893:
test    eax, eax
jz      loc_4BC9A7
mov     bl, [edx]
mov     [eax], bl
mov     bl, [edx+2]
mov     [eax+2], bl
mov     bl, [edx+3]
mov     [eax+3], bl
mov     bl, [edx+4]
mov     [eax+4], bl
mov     bl, [edx+5]
mov     [eax+5], bl

loc_4BC8B7:
mov     ebx, [edx+8]
mov     [eax+0Ch], ebx
mov     ebx, [edx+0Ah]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+34h], ebx
mov     [eax+1Ch], ebx
mov     ebx, [edx+0Ch]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+38h], ebx
mov     [eax+20h], ebx
mov     ebx, [edx+0Eh]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+3Ch], ebx
mov     [eax+24h], ebx
lea     edi, [eax+2Ch]
lea     esi, [edx+0Ch]
movsd
movsd
lea     edi, [esp+30h+var_2C]
lea     esi, [eax+2Ch]
movsd
movsd
lea     edi, [eax+14h]
lea     esi, [esp+30h+var_2C]
movsd
movsd
mov     word ptr [eax+5Ch], 0
mov     bx, [eax+5Ch]
mov     [eax+54h], bx
xor     ebx, ebx
mov     bl, [edx+7]
shl     ebx, 4
mov     [eax+5Eh], bx
mov     [eax+56h], bx
mov     word ptr [eax+60h], 0
mov     bx, [eax+60h]
mov     [eax+58h], bx
jmp     short loc_4BC999

loc_4BC932:
call    sub_4DDFD0
jmp     loc_4BC893

loc_4BC93C:
call    sub_4DE043
test    eax, eax
jz      short loc_4BC9A7
mov     bl, [edx]
mov     [eax], bl
mov     bl, [edx+2]
mov     [eax+2], bl
mov     bl, [edx+3]
mov     [eax+3], bl
jmp     loc_4BC8B7

loc_4BC95A:
call    sub_4DE227
test    eax, eax
jz      short loc_4BC9A7
mov     bl, [edx]
mov     [eax], bl
mov     bl, [edx+2]
mov     [eax+2], bl
mov     bl, [edx+3]
mov     [eax+3], bl
mov     ebx, [edx+8]
mov     [eax+0Ch], ebx
lea     edi, [eax+48h]
lea     esi, [edx+0Ch]
movsd
movsd
mov     bx, [edx+0Ch]
mov     [eax+1Ch], bx
mov     bx, [edx+0Eh]
mov     [eax+1Eh], bx
mov     bx, [edx+10h]
mov     [eax+20h], bx

loc_4BC999:
mov     al, [eax+1]
mov     [ecx+1], al
mov     al, byte ptr [esp+30h+var_1C]
mov     [ecx], al
mov     ecx, ebp

loc_4BC9A7:
add     edx, 18h
inc     [esp+30h+var_1C]
jmp     loc_4BC83F

