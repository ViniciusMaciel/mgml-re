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

loc_4B7F9F:
pop     edx
retn
sub_4B7F61 endp




sub_4B7FA1 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7FC3
mov     eax, 0Ch
call    sub_4873C4
mov     eax, 19h
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B7FC3:
pop     edx
retn
sub_4B7FA1 endp




sub_4B7FC5 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8000
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B7FFC
mov     eax, 0Dh
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B7FFC
xor     eax, eax
call    sub_4874BB

loc_4B7FFC:
mov     byte ptr [edx+4], 0FFh

loc_4B8000:
pop     edx
retn
sub_4B7FC5 endp




sub_4B8002 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B8024
mov     eax, 0Eh
call    sub_4873C4
mov     eax, 19h
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B8024:
pop     edx
retn
sub_4B8002 endp




sub_4B8026 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8061
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B805D
mov     eax, 0Dh
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B805D
xor     eax, eax
call    sub_4874BB

loc_4B805D:
mov     byte ptr [edx+4], 0FFh

loc_4B8061:
pop     edx
retn
sub_4B8026 endp




sub_4B8063 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B807B
mov     eax, 0Eh
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B807B:
pop     edx
retn
sub_4B8063 endp




sub_4B807D proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B80E8
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B80B4
mov     eax, 0Fh
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B80B4
xor     eax, eax
call    sub_4874BB

loc_4B80B4:
mov     eax, 209h
call    sub_47E888
test    eax, eax
jz      short loc_4B80E4
mov     eax, 211h
call    sub_47E888
test    eax, eax
jnz     short loc_4B80E4
mov     eax, 5
call    sub_4874BB
mov     eax, 6
call    sub_4874BB

loc_4B80E4:
mov     byte ptr [edx+4], 0FFh

loc_4B80E8:
pop     edx
retn
sub_4B807D endp




sub_4B80EA proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B8102
mov     eax, 10h
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B8102:
pop     edx
retn
sub_4B80EA endp




sub_4B8104 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B811C
mov     eax, 1Ah
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B811C:
pop     edx
retn
sub_4B8104 endp




sub_4B811E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8189
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B8155
mov     eax, 11h
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B8155
xor     eax, eax
call    sub_4874BB

loc_4B8155:
mov     eax, 209h
call    sub_47E888
test    eax, eax
jz      short loc_4B8185
mov     eax, 211h
call    sub_47E888
test    eax, eax
jnz     short loc_4B8185
mov     eax, 5
call    sub_4874BB
mov     eax, 6
call    sub_4874BB

loc_4B8185:
mov     byte ptr [edx+4], 0FFh

loc_4B8189:
pop     edx
retn
sub_4B811E endp




sub_4B818B proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B81A3
mov     eax, 12h
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B81A3:
pop     edx
retn
sub_4B818B endp




sub_4B81A5 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B81BD
mov     eax, 1Ah
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B81BD:
pop     edx
retn
sub_4B81A5 endp




sub_4B81BF proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B822A
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B81F6
mov     eax, 13h
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B81F6
xor     eax, eax
call    sub_4874BB

loc_4B81F6:
mov     eax, 209h
call    sub_47E888
test    eax, eax
jz      short loc_4B8226
mov     eax, 211h
call    sub_47E888
test    eax, eax
jnz     short loc_4B8226
mov     eax, 5
call    sub_4874BB
mov     eax, 6
call    sub_4874BB

loc_4B8226:
mov     byte ptr [edx+4], 0FFh

loc_4B822A:
pop     edx
retn
sub_4B81BF endp




sub_4B822C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B8244
mov     eax, 14h
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B8244:
pop     edx
retn
sub_4B822C endp




sub_4B8246 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B825E
mov     eax, 1Bh
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B825E:
pop     edx
retn
sub_4B8246 endp




sub_4B8260 proc near

; FUNCTION CHUNK AT 004B82B5 SIZE 00000002 BYTES

push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B82B5
mov     eax, 15h
call    sub_4873C4
mov     eax, 234h
call    sub_47E888
test    eax, eax
jz      short loc_4B8293
mov     eax, 5
call    sub_4874BB
mov     eax, 7
jmp     short loc_4B82A2

loc_4B8293:
mov     eax, 4
call    sub_4874BB
mov     eax, 6
