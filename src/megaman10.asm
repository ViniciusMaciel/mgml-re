mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_416222 endp

jpt_41635F dd offset loc_416366 ; jump table for switch statement
dd offset loc_4163CB
dd offset loc_4163F8
dd offset loc_41643C
dd offset loc_416474
dd offset loc_4164F6
dd offset loc_416547



sub_41631B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+640h]
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
mov     al, [ecx+8]
cmp     al, 6           ; switch 7 cases
ja      def_41635F      ; jumptable 0041635F default case
and     eax, 0FFh
jmp     jpt_41635F[eax*4] ; switch jump

loc_416366:             ; jumptable 0041635F case 0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 0
mov     ebx, 5
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 5

loc_4163BD:
mov     edx, ebp
mov     eax, ecx
call    sub_4165D9
jmp     loc_4164EE

loc_4163CB:             ; jumptable 0041635F case 1
cmp     byte ptr [ecx+0A4h], 1Dh
jnz     def_41635F      ; jumptable 0041635F default case
mov     ebx, 6
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 1Dh
jmp     loc_4164EE

loc_4163F8:             ; jumptable 0041635F case 2
mov     byte ptr [ecx+0ADh], 0FFh
mov     ebx, ds:dword_560BEC
cmp     ebx, 32h ; '2'
jnz     short loc_416414
mov     ebx, 0Ah
jmp     loc_41657F

loc_416414:
cmp     ebx, 5Ah ; 'Z'
jnz     short loc_41642B
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 6
jmp     short loc_4163BD

loc_41642B:
cmp     ebx, 0A0h
jnz     def_41635F      ; jumptable 0041635F default case
jmp     loc_4164EE

loc_41643C:             ; jumptable 0041635F case 3
mov     bh, ds:byte_560BE5
cmp     bh, 1
jz      def_41635F      ; jumptable 0041635F default case
cmp     bh, 2
jnz     def_41635F      ; jumptable 0041635F default case
cmp     ds:dword_560BEC, 1
jnz     def_41635F      ; jumptable 0041635F default case
mov     [ecx+0ACh], bh
mov     word ptr [ebp+2], 0
xor     ebx, ebx
jmp     loc_4163BD

loc_416474:             ; jumptable 0041635F case 4
mov     eax, ds:dword_560BEC
cmp     eax, 3Ch ; '<'
jb      short loc_41648C
jbe     short loc_4164AD
cmp     eax, 82h
jz      short loc_4164C5
jmp     def_41635F      ; jumptable 0041635F default case

loc_41648C:
cmp     eax, 0Ah
jnz     def_41635F      ; jumptable 0041635F default case
mov     ebx, 7
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 7
jmp     loc_41657F

loc_4164AD:
mov     ebx, 8
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 8
jmp     loc_41657F

loc_4164C5:
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_4165D9
mov     byte ptr [ecx+0ACh], 3

loc_4164E8:
mov     word ptr [ebp+2], 0

loc_4164EE:
inc     byte ptr [ecx+8]
jmp     def_41635F      ; jumptable 0041635F default case

loc_4164F6:             ; jumptable 0041635F case 5
mov     ah, ds:byte_560BE5
cmp     ah, 2
jnz     short loc_416530
mov     edi, ds:dword_560BEC
cmp     edi, 96h
jz      short loc_4164AD
cmp     edi, 0C8h
jnz     def_41635F      ; jumptable 0041635F default case
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 2
jmp     short loc_41657F

loc_416530:
cmp     ah, 3
jnz     short def_41635F ; jumptable 0041635F default case
cmp     ds:dword_560BEC, 1
jnz     short def_41635F ; jumptable 0041635F default case
mov     byte ptr [ecx+0ACh], 4
jmp     short loc_4164E8

loc_416547:             ; jumptable 0041635F case 6
mov     edx, ds:dword_560BEC
cmp     edx, 1
jnz     short loc_416567
mov     ebx, 9
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 9
jmp     short loc_41657F

loc_416567:
cmp     edx, 3Ch ; '<'
jnz     short def_41635F ; jumptable 0041635F default case
mov     ebx, 4
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 4

loc_41657F:
mov     edx, ebp
mov     eax, ecx
call    sub_4165D9

def_41635F:             ; jumptable 0041635F default case
mov     edx, ebp
mov     eax, ecx
call    sub_4165F2
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_4165B2
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4165B9

loc_4165B2:
mov     eax, ecx
call    sub_4DEADD

loc_4165B9:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41631B endp




sub_4165C0 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50EF7C[ebx*4]
mov     [edx+4], eax
retn
sub_4165C0 endp




sub_4165D9 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50EFA4[ebx*4]
mov     [edx+8], eax
retn
sub_4165D9 endp




sub_4165F2 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+0Bh]
sar     eax, 18h
mov     ecx, [edx+4]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_416617
jbe     short loc_41661A
cmp     al, 7Fh
jnz     short loc_416617
mov     byte ptr [edx+0Eh], 0
jmp     short loc_41661A

loc_416617:
inc     byte ptr [esi+0Eh]

loc_41661A:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_41665C
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_41665C:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_41667F
jbe     short loc_416682
cmp     al, 7Fh
jnz     short loc_41667F
mov     byte ptr [esi+11h], 0
jmp     short loc_416682

loc_41667F:
inc     byte ptr [esi+11h]

loc_416682:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_4166C4
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_4166C4:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4165F2 endp




sub_4166CF proc near
mov     byte ptr [eax+4], 0
mov     edx, ds:off_50EFDC[edx*4]
mov     [eax+8], edx
mov     byte ptr [eax+5], 0
retn
sub_4166CF endp




sub_4166E2 proc near
mov     byte ptr [eax+6], 0
mov     edx, ds:off_50EFF8[edx*4]
mov     [eax+0Ch], edx
mov     byte ptr [eax+7], 0
retn
sub_4166E2 endp




sub_4166F5 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     ah, [edx+5]
test    ah, ah
jnz     short loc_416769
mov     eax, [edx+1]
sar     eax, 18h
mov     ecx, [edx+8]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_41671E
jbe     short loc_416770
cmp     al, 7Fh
jnz     short loc_41671E
mov     byte ptr [edx+4], 0

loc_41671E:
mov     ecx, [esi+1]
sar     ecx, 18h
mov     eax, [esi+8]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044
mov     ecx, [esi+1]
sar     ecx, 18h
mov     eax, [esi+8]
mov     al, [ecx+eax+1]
mov     [esi+5], al
add     byte ptr [esi+4], 2
jmp     short loc_416770

loc_416769:
mov     dl, ah
dec     dl
mov     [esi+5], dl

loc_416770:
mov     bl, [esi+7]
test    bl, bl
jnz     short loc_4167DE
mov     eax, [esi+3]
sar     eax, 18h
mov     ecx, [esi+0Ch]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_416790
jbe     short loc_4167E5
cmp     al, 7Fh
jnz     short loc_416790
mov     [esi+6], bl

loc_416790:
mov     ecx, [esi+3]
sar     ecx, 18h
mov     eax, [esi+0Ch]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044
mov     eax, [esi+3]
sar     eax, 18h
mov     ecx, [esi+0Ch]
mov     al, [ecx+eax+1]
mov     [esi+7], al
add     byte ptr [esi+6], 2
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4167DE:
mov     bh, bl
dec     bh
mov     [esi+7], bh

loc_4167E5:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4166F5 endp




sub_4167EA proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
mov     [esp+1Ch+var_1C], offset dword_560BDC
lea     ebp, [eax+640h]
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
mov     ah, ds:byte_560BE5
cmp     ah, 2
jnz     loc_416969
mov     ebx, ds:dword_560BEC
cmp     ebx, 1
jnz     short loc_4168A1
or      [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
xor     edx, edx
mov     eax, ebp
call    sub_4166CF
xor     edx, edx
mov     eax, ebp
call    sub_4166E2
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4168BE

loc_4168A1:
cmp     ebx, 3Eh ; '>'
jge     short loc_4168AB
cmp     ebx, 15h
jg      short loc_4168B7

loc_4168AB:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1AEh
jle     short loc_4168BE

loc_4168B7:
mov     eax, ecx
call    sub_4DEADD

loc_4168BE:
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+10h]
cmp     eax, 10Eh
jb      short loc_416911
jbe     loc_416944
cmp     eax, 19Ah
jb      short loc_4168FB
jbe     loc_416954
cmp     eax, 1AEh
jb      loc_416960
jbe     short loc_416936
cmp     eax, 1F4h

loc_4168F0:
jz      loc_416944
jmp     loc_416960

loc_4168FB:
cmp     eax, 12Ch
jb      loc_416960
jbe     short loc_416936
cmp     eax, 17Ch
jz      short loc_416950
jmp     short loc_416960

loc_416911:
cmp     eax, 69h ; 'i'
jb      short loc_41692A
jbe     short loc_416936
cmp     eax, 0A5h
jb      short loc_416960
jbe     short loc_416950
cmp     eax, 0B4h
jz      short loc_416936
jmp     short loc_416960

loc_41692A:
cmp     eax, 14h
jb      short loc_416960
jbe     short loc_416936
cmp     eax, 4Bh ; 'K'
jmp     short loc_4168F0

loc_416936:
mov     edx, 1

loc_41693B:
mov     eax, ebp
call    sub_4166E2
jmp     short loc_416960

loc_416944:
mov     edx, 1
mov     eax, ebp
call    sub_4166CF

loc_416950:
xor     edx, edx
jmp     short loc_41693B

loc_416954:
mov     edx, 1
mov     eax, ebp
call    sub_4166CF

loc_416960:
mov     edx, ebp
mov     eax, ecx
call    sub_4166F5

loc_416969:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4167EA endp




sub_416973 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_416983[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_416997
mov     eax, ecx
call    sub_4DEADD

loc_416997:
mov     edx, ebx
mov     eax, ecx
call    sub_416D8E
pop     edx
pop     ecx
pop     ebx
retn
sub_416973 endp




sub_4169A4 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     al, ds:byte_560BE4
cmp     al, 4
jb      short loc_4169EF
jbe     short loc_416A07
cmp     al, 8
jb      loc_416A50
jbe     short loc_416A21
cmp     al, 0Bh
jz      short loc_416A3B
jmp     short loc_416A50

loc_4169EF:
cmp     al, 2
jnz     short loc_416A50
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 1
jmp     short loc_416A50

loc_416A07:
mov     word ptr [ecx+18h], 0FAh
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 3
jmp     short loc_416A50

loc_416A21:
mov     word ptr [ecx+18h], 0F0h
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 4
jmp     short loc_416A50

loc_416A3B:
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 5

loc_416A50:
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4169A4 endp




sub_416A67 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
mov     ah, [eax+0Ah]
test    ah, ah
jnz     short loc_416A91
mov     [ecx+0Dh], ah
inc     byte ptr [ecx+0Ah]
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_416D4E

loc_416A91:
mov     eax, [edi+10h]
cmp     eax, 23h ; '#'
jb      short loc_416AA4
jbe     short loc_416AAE
cmp     eax, 122h
jz      short loc_416AB5
jmp     short loc_416AC3

loc_416AA4:
cmp     eax, 14h
jnz     short loc_416AC3
inc     byte ptr [ecx+0Dh]
jmp     short loc_416AC3

loc_416AAE:
mov     ebx, 1
jmp     short loc_416ABA

loc_416AB5:
mov     ebx, 2

loc_416ABA:
mov     edx, esi
mov     eax, ecx
call    sub_416D4E

loc_416AC3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_416A67 endp




sub_416AC9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_416B04
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Dh], 0

loc_416B04:
mov     eax, [edi+10h]
cmp     eax, 19h
jb      short loc_416AC3
jbe     short loc_416B15
cmp     eax, 55h ; 'U'
jz      short loc_416B1C
jmp     short loc_416AC3

loc_416B15:
mov     ebx, 4
jmp     short loc_416ABA

loc_416B1C:
mov     ebx, 5
jmp     short loc_416ABA
sub_416AC9 endp




sub_416B23 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_416B50
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Dh], 0

loc_416B50:
cmp     dword ptr [edi+10h], 37h ; '7'
jnz     loc_416AC3
mov     ebx, 7
jmp     loc_416ABA
sub_416B23 endp




sub_416B64 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 2Dh ; '-'
jb      short loc_416B9D
jbe     short loc_416BAE
cmp     eax, 78h ; 'x'
jb      short loc_416B93
jbe     short loc_416BE8
cmp     eax, 0B4h
jz      loc_416BFD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416B93:
cmp     eax, 50h ; 'P'
jz      short loc_416BD8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416B9D:
cmp     eax, 1
jb      short loc_416C0E
jbe     short loc_416BAE
cmp     eax, 5
jz      short loc_416BC1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416BAE:
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416BC1:
mov     ebx, 9

loc_416BC6:
mov     edx, esi
mov     eax, ecx
call    sub_416D4E

loc_416BCF:
mov     byte ptr [ecx+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416BD8:
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_416BCF

loc_416BE8:
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 8
jmp     short loc_416BC6

loc_416BFD:
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
inc     byte ptr [ecx+0Dh]

loc_416C0E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_416B64 endp




sub_416C13 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_416C33
mov     ebx, 0Ah
mov     eax, ecx
call    sub_416D4E
inc     byte ptr [ecx+0Ah]

loc_416C33:
pop     edx
pop     ecx
pop     ebx
retn
sub_416C13 endp




sub_416C37 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 0EBh
jb      short loc_416CB0
jbe     loc_416D16
cmp     eax, 140h
jb      short loc_416C8F
jbe     loc_416D1D
cmp     eax, 1AEh
jb      short loc_416C7F
jbe     loc_416D3B
cmp     eax, 1E0h

loc_416C74:
jz      loc_416CEA
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416C7F:
cmp     eax, 168h
jz      loc_416CF1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416C8F:
cmp     eax, 104h
jb      loc_416D49
jbe     loc_416D0F
cmp     eax, 136h
jz      loc_416D16
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416CB0:
cmp     eax, 5Ah ; 'Z'
jb      short loc_416CD3
jbe     short loc_416CF1
cmp     eax, 0B9h
jb      short loc_416CCC
jbe     short loc_416CF8
cmp     eax, 0C8h
jz      short loc_416D0F
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416CCC:
cmp     eax, 0A5h
jmp     short loc_416C74

loc_416CD3:
cmp     eax, 1
jb      loc_416D49
jbe     short loc_416CE3
cmp     eax, 32h ; '2'
jmp     short loc_416C74

loc_416CE3:
mov     ebx, 0Bh
jmp     short loc_416D40

loc_416CEA:
mov     ebx, 0Ch
jmp     short loc_416D40

loc_416CF1:
mov     ebx, 0Dh
jmp     short loc_416D40

loc_416CF8:
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B

loc_416D06:
mov     byte ptr [ecx+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416D0F:
mov     ebx, 0Eh
jmp     short loc_416D40

loc_416D16:
mov     ebx, 0Fh
jmp     short loc_416D40

loc_416D1D:
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 0Ah
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
jmp     short loc_416D06

loc_416D3B:
mov     ebx, 0Bh

loc_416D40:
mov     edx, esi
mov     eax, ecx
call    sub_416D4E

loc_416D49:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_416C37 endp




sub_416D4E proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50F188[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50F188[eax*4]
mov     [edx+10h], eax
retn
sub_416D4E endp




sub_416D8E proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_416DBA
jbe     short loc_416DBE
cmp     ax, 7FFFh
jnz     short loc_416DBA
mov     word ptr [edx+4], 0
jmp     short loc_416DBE

loc_416DBA:
inc     word ptr [esi+4]

loc_416DBE:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_416E03
movsx   eax, word ptr [esi]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_416E03:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_416E2E
jbe     short loc_416E32
cmp     ax, 7FFFh
jnz     short loc_416E2E
mov     word ptr [esi+0Ah], 0
jmp     short loc_416E32

loc_416E2E:
inc     word ptr [esi+0Ah]

loc_416E32:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_416E81
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_416E81:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_416D8E endp




sub_416E8E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_416E9E[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_416EB2
mov     eax, ecx
call    sub_4DEADD

loc_416EB2:
mov     edx, ebx
mov     eax, ecx
call    sub_417295
pop     edx
pop     ecx
pop     ebx
retn
sub_416E8E endp




sub_416EBF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     al, ds:byte_560BE4
cmp     al, 3
jb      short loc_416F03
jbe     short loc_416F2D
cmp     al, 5
jz      short loc_416F68
jmp     loc_416FA1

loc_416F03:
test    al, al
jnz     loc_416FA1
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_417255
mov     byte ptr [ecx+9], 1
jmp     short loc_416FA1

loc_416F2D:
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_417255
mov     word ptr [ecx+14h], 0FFh
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+18h], 190h
mov     eax, ecx
call    sub_4DEADD
mov     byte ptr [ecx+9], 5
jmp     short loc_416FA1

loc_416F68:
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_417255
mov     word ptr [ecx+14h], 0FFh
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+18h], 190h
mov     eax, ecx
call    sub_4DEADD
mov     byte ptr [ecx+9], 6

loc_416FA1:
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_416EBF endp




sub_416FAD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_416FE4
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_417255
inc     byte ptr [ecx+0Ah]

loc_416FE4:
cmp     dword ptr [edi+10h], 1Eh
jnz     short loc_416FF5
xor     ebx, ebx

loc_416FEC:
mov     edx, esi

loc_416FEE:
mov     eax, ecx
call    sub_417255

loc_416FF5:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_416FAD endp




sub_416FFB proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417032
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_417255
inc     byte ptr [ecx+0Ah]

loc_417032:
cmp     dword ptr [edi+10h], 0Ah
jnz     short loc_417046
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_417255

loc_417046:
cmp     dword ptr [edi+10h], 23h ; '#'
jnz     short loc_416FF5
mov     ebx, 1
jmp     short loc_416FEC
sub_416FFB endp




sub_417053 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417084
xor     ebx, ebx
mov     edx, 0Ah
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_417255
inc     byte ptr [ecx+0Ah]

loc_417084:
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_417053 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_43]



sub_417089 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset dword_560BDC
lea     edi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4170B2
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4170B2:
cmp     dword ptr [esi+10h], 7
jnz     short loc_4170C6
mov     ebx, 4
mov     edx, edi
mov     eax, ecx
call    sub_417255

loc_4170C6:
cmp     dword ptr [esi+10h], 4Bh ; 'K'
jnz     loc_416FF5
mov     ebx, 5
mov     edx, edi
jmp     loc_416FEE
sub_417089 endp




sub_4170DC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417113
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_417255
inc     byte ptr [ecx+0Ah]

loc_417113:
mov     eax, [edi+10h]
cmp     eax, 80h
jb      short loc_41712B
jbe     short loc_41713E
cmp     eax, 8Ch
jz      short loc_417134
jmp     loc_416FF5

loc_41712B:
cmp     eax, 5
jnz     loc_416FF5

loc_417134:
mov     ebx, 7
jmp     loc_416FEC

loc_41713E:
mov     ebx, 6
jmp     loc_416FEC
sub_4170DC endp




sub_417148 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41717F
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_417255
inc     byte ptr [ecx+0Ah]

loc_41717F:
cmp     byte ptr [edi+9], 0
jnz     loc_416FF5
mov     eax, [edi+10h]
cmp     eax, 50h ; 'P'
jb      short loc_4171E2
jbe     loc_417229
cmp     eax, 11Dh
jb      short loc_4171C5
jbe     loc_417221
cmp     eax, 172h
jb      loc_416FF5
jbe     loc_417237
cmp     eax, 190h
jz      loc_41723E
jmp     loc_416FF5

loc_4171C5:
cmp     eax, 0F0h
jb      loc_416FF5
jbe     loc_417237
cmp     eax, 10Eh
jz      short loc_417230
jmp     loc_416FF5

loc_4171E2:
cmp     eax, 32h ; '2'
jb      short loc_4171FE
jbe     short loc_41721A
cmp     eax, 39h ; '9'
jb      loc_416FF5
jbe     short loc_417221
cmp     eax, 46h ; 'F'
jz      short loc_417207
jmp     loc_416FF5

loc_4171FE:
cmp     eax, 14h
jnz     loc_416FF5

loc_417207:
mov     ebx, 0Bh

loc_41720C:
mov     edx, esi
mov     eax, ecx
call    sub_417255
jmp     loc_416FF5

loc_41721A:
mov     ebx, 8
jmp     short loc_417243

loc_417221:
inc     byte ptr [ecx+0Dh]
jmp     loc_416FF5

loc_417229:
mov     ebx, 9
jmp     short loc_41720C

loc_417230:
mov     ebx, 9
jmp     short loc_417243

loc_417237:
mov     ebx, 0Ch
jmp     short loc_41720C

loc_41723E:
mov     ebx, 0Ah

loc_417243:
mov     edx, esi
mov     eax, ecx
call    sub_417255
mov     byte ptr [ecx+0Dh], 0
jmp     loc_416FF5
sub_417148 endp




sub_417255 proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50F32E[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50F362[eax*4]
mov     [edx+10h], eax
retn
sub_417255 endp




sub_417295 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_4172C1
jbe     short loc_4172C5
cmp     ax, 7FFFh
jnz     short loc_4172C1
mov     word ptr [edx+4], 0
jmp     short loc_4172C5

loc_4172C1:
inc     word ptr [esi+4]

loc_4172C5:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_41730A
movsx   eax, word ptr [esi]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_41730A:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_417335
jbe     short loc_417339
cmp     ax, 7FFFh
jnz     short loc_417335
mov     word ptr [esi+0Ah], 0
jmp     short loc_417339

loc_417335:
inc     word ptr [esi+0Ah]

loc_417339:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_417388
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_417388:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_417295 endp




sub_417395 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4173AB[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_4173BF
mov     eax, ecx
call    sub_4DEADD

loc_4173BF:
cmp     byte ptr [esi+7], 0
jnz     short loc_4173CE
mov     edx, ebx
mov     eax, ecx
call    sub_41778E

loc_4173CE:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_417395 endp




sub_4173D3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_41774E
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4173D3 endp




sub_41742C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417460
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_41774E
inc     byte ptr [ecx+0Ah]

loc_417460:
mov     eax, [edi+10h]
cmp     eax, 96h
jb      short loc_417485
jbe     short loc_417498
cmp     eax, 0AAh
jb      loc_41765D
jbe     short loc_41748E
cmp     eax, 104h
jz      short loc_417498
jmp     loc_41765D

loc_417485:
cmp     eax, 50h ; 'P'
jnz     loc_41765D

loc_41748E:
mov     ebx, 1
jmp     loc_417654

loc_417498:
mov     ebx, 2
jmp     loc_417654
sub_41742C endp




sub_4174A2 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4174D9
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_41774E
inc     byte ptr [ecx+0Ah]

loc_4174D9:
cmp     dword ptr [edi+10h], 28h ; '('
jnz     loc_41765D
jmp     short loc_417498
sub_4174A2 endp




sub_4174E5 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 4
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4174E5 endp




sub_41752B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417566
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_41774E
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_417566:
mov     eax, [edi+10h]
cmp     eax, 14h
jb      loc_41765D
jbe     short loc_417580
cmp     eax, 0C3h
jz      short loc_41758A
jmp     loc_41765D

loc_417580:
mov     ebx, 5
jmp     loc_417654

loc_41758A:
mov     ebx, 4
jmp     loc_417654
sub_41752B endp




sub_417594 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4175CF
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_41774E
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_4175CF:
mov     eax, [edi+10h]
cmp     eax, 28h ; '('
jb      short loc_4175E5
jbe     short loc_4175F5
cmp     eax, 0AAh
jz      short loc_4175EE
jmp     loc_41765D

loc_4175E5:
cmp     eax, 19h
jnz     loc_41765D

loc_4175EE:
mov     ebx, 6
jmp     short loc_417654

loc_4175F5:
mov     ebx, 7
jmp     short loc_417654
sub_417594 endp




sub_4175FC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417637
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_41774E
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_417637:
mov     eax, [edi+10h]
cmp     eax, 0Ah
jb      short loc_41765D
jbe     short loc_417648
cmp     eax, 4Bh ; 'K'
jz      short loc_41764F
jmp     short loc_41765D

loc_417648:
mov     ebx, 9
jmp     short loc_417654

loc_41764F:
mov     ebx, 0Ah

loc_417654:
mov     edx, esi
mov     eax, ecx
call    sub_41774E

loc_41765D:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4175FC endp




sub_417663 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41769E
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_41774E
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_41769E:
cmp     dword ptr [edi+10h], 0DCh
jnz     short loc_41765D
jmp     short loc_41764F
sub_417663 endp




sub_4176A9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4176E4
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_41774E
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_4176E4:
cmp     dword ptr [edi+10h], 127h
jnz     loc_41765D
mov     ebx, 0Bh
jmp     loc_417654
sub_4176A9 endp




sub_4176FB proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417749
or      byte ptr [ecx], 2
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_41774E
inc     byte ptr [ecx+0Dh]
inc     byte ptr [ecx+0Ah]

loc_417749:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4176FB endp




sub_41774E proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50F4E6[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50F516[eax*4]
mov     [edx+10h], eax
retn
sub_41774E endp




sub_41778E proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_4177BA
jbe     short loc_4177BE
cmp     ax, 7FFFh
jnz     short loc_4177BA
mov     word ptr [edx+4], 0
jmp     short loc_4177BE

loc_4177BA:
inc     word ptr [esi+4]

loc_4177BE:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_417803
movsx   eax, word ptr [esi]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_417803:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_41782E
jbe     short loc_417832
cmp     ax, 7FFFh
jnz     short loc_41782E
mov     word ptr [esi+0Ah], 0
jmp     short loc_417832

loc_41782E:
inc     word ptr [esi+0Ah]

loc_417832:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_417881
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_417881:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41778E endp




sub_41788E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4178A0[edx*4]
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
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_4178D0
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_4178DE

loc_4178D0:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795

loc_4178DE:
mov     edx, ebx
mov     eax, ecx
call    sub_417A77
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41788E endp




sub_4178ED proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417957
or      byte ptr [ecx], 2
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 400h
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_417A37
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+9]
inc     byte ptr [ecx+0Ah]

loc_417957:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4178ED endp




sub_41795C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 168h
jb      short loc_4179B4
jbe     loc_417A1D
cmp     eax, 1F4h
jb      short loc_4179A8
jbe     loc_417A14
cmp     eax, 214h
jb      loc_417A32
jbe     loc_417A1D
cmp     eax, 258h
jz      loc_417A24
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4179A8:
cmp     eax, 17Ch
jz      short loc_417A0D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4179B4:
cmp     eax, 0EBh
jb      short loc_4179C9
jbe     short loc_4179F1
cmp     eax, 104h
jz      short loc_4179F8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4179C9:
cmp     eax, 0BAh
jnz     short loc_417A32
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 4

loc_4179E3:
mov     edx, esi
mov     eax, ecx
call    sub_417A37
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4179F1:
mov     ebx, 5
jmp     short loc_4179E3

loc_4179F8:
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 6
jmp     short loc_4179E3

loc_417A0D:
mov     ebx, 7
jmp     short loc_4179E3

loc_417A14:
xor     ebx, ebx
mov     edx, 4
jmp     short loc_417A2B

loc_417A1D:
mov     ebx, 8
jmp     short loc_4179E3

loc_417A24:
xor     ebx, ebx
mov     edx, 5

loc_417A2B:
mov     eax, ecx
call    sub_4DE96B

loc_417A32:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41795C endp




sub_417A37 proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50F642[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50F642[eax*4]
mov     [edx+10h], eax
retn
sub_417A37 endp




sub_417A77 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_417AA3
jbe     short loc_417AA7
cmp     ax, 7FFFh
jnz     short loc_417AA3
mov     word ptr [edx+4], 0
jmp     short loc_417AA7

loc_417AA3:
inc     word ptr [esi+4]

loc_417AA7:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_417AEC
movsx   eax, word ptr [esi]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_417AEC:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_417B17
jbe     short loc_417B1B
cmp     ax, 7FFFh
jnz     short loc_417B17
mov     word ptr [esi+0Ah], 0
jmp     short loc_417B1B

loc_417B17:
inc     word ptr [esi+0Ah]

loc_417B1B:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_417B6A
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_417B6A:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_417A77 endp




sub_417B77 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+640h]
cmp     byte ptr [eax+8], 0
jnz     short loc_417BF0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
add     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_417C73
inc     byte ptr [ecx+8]
jmp     loc_417C63

loc_417BF0:
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
cmp     ds:byte_560BE4, 4
jnz     short loc_417C5C
mov     dh, ds:byte_560BE5
cmp     dh, 1
jnz     short loc_417C39
mov     esi, ds:dword_560BEC
cmp     esi, 0Ah
jnz     short loc_417C30

loc_417C29:
mov     ebx, 2
jmp     short loc_417C53

loc_417C30:
cmp     esi, 5Ah ; 'Z'
jnz     short loc_417C5C
xor     ebx, ebx
jmp     short loc_417C53

loc_417C39:
cmp     dh, 2
jnz     short loc_417C5C
mov     edx, ds:dword_560BEC
cmp     edx, 1
jz      short loc_417C29
cmp     edx, 32h ; '2'
jnz     short loc_417C5C
mov     ebx, 1

loc_417C53:
mov     edx, ebp
mov     eax, ecx
call    sub_417C73

loc_417C5C:
mov     eax, ecx
call    sub_4DEADD

loc_417C63:
mov     edx, ebp
mov     eax, ecx
call    sub_417CA7
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_417B77 endp




sub_417C73 proc near
mov     byte ptr [edx+0Ah], 0
mov     al, [edx+0Ah]
mov     [edx+8], al
mov     byte ptr [edx+0Dh], 0
mov     al, [edx+0Dh]
mov     [edx+0Bh], al
mov     byte ptr [edx+0Ch], 0FFh
mov     al, [edx+0Ch]
mov     [edx+9], al
mov     eax, ebx
mov     ebx, ds:off_50F68F[ebx*4]
mov     [edx], ebx
mov     eax, ds:off_50F69B[eax*4]
mov     [edx+4], eax
retn
sub_417C73 endp




sub_417CA7 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+7]
sar     eax, 18h
mov     ecx, [edx]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_417CCB
jbe     short loc_417CCE
cmp     al, 7Fh
jnz     short loc_417CCB
mov     byte ptr [edx+0Ah], 0
jmp     short loc_417CCE

loc_417CCB:
inc     byte ptr [esi+0Ah]

loc_417CCE:
mov     eax, [esi+7]
sar     eax, 18h
mov     ecx, [esi]
mov     al, [ecx+eax]
mov     [esi+8], al
cmp     al, [esi+9]
jz      short loc_417D0F
mov     eax, [esi+5]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_417D0F:
mov     al, [esi+8]
mov     [esi+9], al
mov     eax, [esi+0Ah]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_417D32
jbe     short loc_417D35
cmp     al, 7Fh
jnz     short loc_417D32
mov     byte ptr [esi+0Dh], 0
jmp     short loc_417D35

loc_417D32:
inc     byte ptr [esi+0Dh]

loc_417D35:
mov     eax, [esi+0Ah]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Bh], al
cmp     al, [esi+0Ch]
jz      short loc_417D77
mov     eax, [esi+8]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_417D77:
mov     al, [esi+0Bh]
mov     [esi+0Ch], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_417CA7 endp




sub_417D82 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+640h]
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
movzx   esi, byte ptr [eax+8]
mov     ebx, ecx
mov     edx, offset dword_560BDC
call    ds:funcs_417DC1[esi*4]
mov     edx, ecx
mov     eax, ebp
call    sub_418644
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+0ADh]
jz      short loc_417DF5
mov     ebx, [ecx]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ebp+0ACh]
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_417DFC

loc_417DF5:
mov     eax, ebp
call    sub_4DEADD

loc_417DFC:
cmp     byte ptr [ecx+12h], 0
jz      short loc_417E15
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 40h ; '@'
mov     eax, ebp
call    sub_4ED88B

loc_417E15:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_417D82 endp




sub_417E1C proc near
push    ecx
push    esi
mov     ecx, eax
mov     esi, ebx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx], 0
mov     word ptr [ebx+2], 0
mov     byte ptr [ebx+12h], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_418612
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_41862B
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     esi
pop     ecx
retn
sub_417E1C endp

db 8Dh, 40h, 0
jpt_417F19 dd offset loc_417F20 ; jump table for switch statement
dd offset loc_417F40
dd offset loc_41804F
dd offset loc_418079
dd offset loc_418098
dd offset loc_4180CE
dd offset loc_4180ED
dd offset loc_418177
dd offset loc_4181F8
dd offset loc_418236
dd offset loc_41825F
dd offset loc_4182C7
dd offset loc_4182F0
dd offset loc_41830D
dd offset loc_418343
dd offset loc_418372
dd offset loc_4183B5
dd offset loc_4183DB
dd offset loc_41846D
dd offset loc_4184B3
dd offset loc_4184E6
dd offset loc_418573
dd offset loc_4185A6



sub_417EFA proc near

var_28= dword ptr -28h
var_20= dword ptr -20h
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 28h
mov     ebp, eax
mov     eax, edx
mov     esi, ebx
mov     dl, [ebp+9]
cmp     dl, 16h         ; switch 23 cases
ja      def_417F19      ; jumptable 00417F19 default case
and     edx, 0FFh
jmp     jpt_417F19[edx*4] ; switch jump

loc_417F20:             ; jumptable 00417F19 case 0
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 0
jnz     def_417F19      ; jumptable 00417F19 default case
cmp     dword ptr [eax+10h], 14h

loc_417F35:             ; jumptable 00417F19 default case
jnz     def_417F19
jmp     loc_41822E

loc_417F40:             ; jumptable 00417F19 case 1
mov     dl, [eax+9]
cmp     dl, 1
jnz     def_417F19      ; jumptable 00417F19 default case
mov     eax, [eax+10h]
cmp     eax, 6Eh ; 'n'
jb      short loc_417F98
jbe     loc_418025
cmp     eax, 0AAh
jb      short loc_417F88
jbe     loc_418025
cmp     eax, 107h
jb      def_417F19      ; jumptable 00417F19 default case
jbe     loc_418009
cmp     eax, 125h
jz      loc_41803A
jmp     def_417F19      ; jumptable 00417F19 default case

loc_417F88:
cmp     eax, 96h
jz      loc_418009
jmp     def_417F19      ; jumptable 00417F19 default case

loc_417F98:
cmp     eax, 0Ah
jb      short loc_417FB4
jbe     short loc_418009
cmp     eax, 28h ; '('
jb      def_417F19      ; jumptable 00417F19 default case
jbe     short loc_417FC8
cmp     eax, 5Ah ; 'Z'
jz      short loc_417FDB
jmp     def_417F19      ; jumptable 00417F19 default case

loc_417FB4:
cmp     eax, 1
jnz     def_417F19      ; jumptable 00417F19 default case
mov     ebx, eax
mov     eax, ebp
mov     edx, esi
jmp     loc_418605

loc_417FC8:
mov     ebx, 0Ah
mov     eax, ebp
mov     edx, esi

loc_417FD1:
call    sub_418612
jmp     def_417F19      ; jumptable 00417F19 default case

loc_417FDB:
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 9
mov     edx, esi
mov     eax, ebp
call    sub_41862B
mov     byte ptr [ebp+0ACh], 2
mov     word ptr [esi+2], 0
jmp     def_417F19      ; jumptable 00417F19 default case

loc_418009:
mov     ebx, 9
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 1

loc_41801C:
mov     edx, esi
mov     eax, ebp
jmp     loc_418605

loc_418025:
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 9
jmp     short loc_41801C

loc_41803A:
mov     byte ptr [ebp+0ACh], 3
mov     word ptr [ebx+2], 0
add     [ebp+9], dl
jmp     def_417F19      ; jumptable 00417F19 default case

loc_41804F:             ; jumptable 00417F19 case 2
cmp     byte ptr [eax+9], 2
jnz     def_417F19      ; jumptable 00417F19 default case
cmp     dword ptr [eax+10h], 1
jnz     def_417F19      ; jumptable 00417F19 default case
mov     byte ptr [ebp+0ACh], 4
mov     word ptr [ebx+2], 0
mov     byte ptr [ebx+12h], 1
jmp     loc_41822E

loc_418079:             ; jumptable 00417F19 case 3
cmp     byte ptr [ebp+0A4h], 15h
jnz     def_417F19      ; jumptable 00417F19 default case
mov     byte ptr [ebp+0ACh], 4
mov     word ptr [esi+2], 15h
jmp     loc_41822E

loc_418098:             ; jumptable 00417F19 case 4
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 2
jnz     def_417F19      ; jumptable 00417F19 default case
cmp     dword ptr [eax+10h], 9Bh
jnz     def_417F19      ; jumptable 00417F19 default case

loc_4180B6:
mov     ebx, 0Ch
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 0Ah
jmp     loc_418225

loc_4180CE:             ; jumptable 00417F19 case 5
cmp     byte ptr [ebp+0A4h], 2Ah ; '*'
jnz     def_417F19      ; jumptable 00417F19 default case
mov     byte ptr [ebp+0ACh], 4
mov     word ptr [ebx+2], 2Ah ; '*'
jmp     loc_41822E

loc_4180ED:             ; jumptable 00417F19 case 6
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 2
jnz     def_417F19      ; jumptable 00417F19 default case
mov     eax, [eax+10h]
cmp     eax, 136h
jb      short loc_41812B
jbe     loc_418009
cmp     eax, 1EAh
jb      def_417F19      ; jumptable 00417F19 default case
jbe     short loc_41815F
cmp     eax, 1F4h
jz      loc_41822E
jmp     def_417F19      ; jumptable 00417F19 default case

loc_41812B:
cmp     eax, 0B4h
jb      def_417F19      ; jumptable 00417F19 default case
jbe     loc_418009
cmp     eax, 0C8h
jnz     def_417F19      ; jumptable 00417F19 default case

loc_418147:
mov     ebx, 0Ch
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 0Ah
jmp     loc_41801C

loc_41815F:
mov     ebx, 1
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 2
jmp     loc_41801C

loc_418177:             ; jumptable 00417F19 case 7
mov     eax, [eax+10h]
cmp     eax, 21Ch
jb      short loc_41819C
jbe     short loc_418147
cmp     eax, 244h
jb      def_417F19      ; jumptable 00417F19 default case
jbe     short loc_4181B5
cmp     eax, 24Eh
jz      short loc_4181CD
jmp     def_417F19      ; jumptable 00417F19 default case

loc_41819C:
cmp     eax, 212h
jnz     def_417F19      ; jumptable 00417F19 default case
mov     ebx, 0Ah
mov     edx, esi
mov     eax, ebp
jmp     loc_417FD1

loc_4181B5:
mov     ebx, 2
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 3
jmp     loc_41801C

loc_4181CD:
mov     ebx, 8
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ebp
call    sub_41862B
mov     byte ptr [ebp+0ACh], 5
mov     word ptr [esi+2], 0
jmp     short loc_41822E

loc_4181F8:             ; jumptable 00417F19 case 8
cmp     byte ptr [ebp+0A4h], 1Fh
jnz     def_417F19      ; jumptable 00417F19 default case
mov     byte ptr [ebp+0ACh], 5
mov     word ptr [esi+2], 1Fh
mov     ebx, 3

loc_418217:
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 3

loc_418225:
mov     edx, esi
mov     eax, ebp
call    sub_41862B

loc_41822E:
inc     byte ptr [ebp+9]
jmp     def_417F19      ; jumptable 00417F19 default case

loc_418236:             ; jumptable 00417F19 case 9
mov     byte ptr [ebp+0ADh], 0FFh
cmp     dword ptr [eax+10h], 28Fh
jnz     def_417F19      ; jumptable 00417F19 default case
mov     ebx, 3
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 4
jmp     short loc_418225

loc_41825F:             ; jumptable 00417F19 case 10
cmp     byte ptr [ebp+0A4h], 25h ; '%'
jb      def_417F19      ; jumptable 00417F19 default case
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0A4h
mov     eax, 0C00h
mov     esi, esp
call    sub_4DD510
lea     edi, [esp+38h+var_28]
mov     esi, esp
movsd
movsd
movsd
movsd
lea     edx, [esp+38h+var_18]
lea     eax, [esp+38h+var_28]
call    sub_4DD57B
mov     eax, [esp+38h+var_18]
add     [ebp+14h], ax
mov     eax, [esp+38h+var_14]
add     [ebp+18h], ax
mov     eax, [esp+38h+var_28]
add     [ebp+1Ch], eax
mov     eax, [esp+38h+var_20]
add     [ebp+24h], eax
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jmp     loc_417F35

loc_4182C7:             ; jumptable 00417F19 case 11
mov     byte ptr [ebp+0ACh], 6
mov     word ptr [ebx+2], 0
mov     word ptr [ebp+56h], 0C00h
add     word ptr [ebp+14h], 0Ah
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
jmp     loc_41822E

loc_4182F0:             ; jumptable 00417F19 case 12
add     word ptr [ebp+14h], 0Ah
mov     edx, [ebp+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ebp+1Ch], edx
cmp     dword ptr [eax+10h], 2CEh
jmp     loc_417F35

loc_41830D:             ; jumptable 00417F19 case 13
cmp     byte ptr [eax+9], 3
jnz     def_417F19      ; jumptable 00417F19 default case
cmp     dword ptr [eax+10h], 1
jnz     def_417F19      ; jumptable 00417F19 default case
mov     byte ptr [ebp+0ACh], 0Bh
mov     word ptr [esi+2], 14h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Eh ; '.'
mov     eax, ebp
call    sub_4DD43B
jmp     loc_41822E

loc_418343:             ; jumptable 00417F19 case 14
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Eh ; '.'
mov     eax, ebp
call    sub_4DD43B
cmp     byte ptr [ebp+0A4h], 27h ; '''
jnz     def_417F19      ; jumptable 00417F19 default case
mov     byte ptr [ebp+0ACh], 7
mov     word ptr [esi+2], 0
jmp     loc_4180B6

loc_418372:             ; jumptable 00417F19 case 15
cmp     byte ptr [ebp+0A4h], 28h ; '('
jnb     short loc_41838B
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Eh ; '.'
mov     eax, ebp
call    sub_4DD43B

loc_41838B:
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_417F19      ; jumptable 00417F19 default case
mov     ebx, 4
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 8
jmp     loc_418225

loc_4183B5:             ; jumptable 00417F19 case 16
cmp     byte ptr [eax+9], 3
jnz     def_417F19      ; jumptable 00417F19 default case
cmp     dword ptr [eax+10h], 73h ; 's'
jnz     def_417F19      ; jumptable 00417F19 default case
mov     byte ptr [ebp+0ACh], 8
mov     word ptr [ebx+2], 0
jmp     loc_41822E

loc_4183DB:             ; jumptable 00417F19 case 17
mov     bl, [eax+9]
cmp     bl, 3
jnz     short loc_418443
mov     eax, [eax+10h]
cmp     eax, 0B9h
jb      short loc_418408
jbe     short loc_41842B
cmp     eax, 0C8h
jb      def_417F19      ; jumptable 00417F19 default case
jbe     short loc_418413
cmp     eax, 0F0h
jz      short loc_41842B
jmp     def_417F19      ; jumptable 00417F19 default case

loc_418408:
cmp     eax, 0A5h
jnz     def_417F19      ; jumptable 00417F19 default case

loc_418413:
mov     ebx, 0Dh
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 0Ch
jmp     loc_41801C

loc_41842B:
mov     ebx, 5
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 5
jmp     loc_41801C

loc_418443:
cmp     bl, 5
jnz     def_417F19      ; jumptable 00417F19 default case
cmp     dword ptr [eax+10h], 1
jnz     def_417F19      ; jumptable 00417F19 default case
mov     byte ptr [ebp+0ACh], 6
mov     word ptr [esi+2], 0
mov     ebx, 2
jmp     loc_418217

loc_41846D:             ; jumptable 00417F19 case 18
cmp     byte ptr [eax+9], 6
jnz     short loc_41849E
cmp     dword ptr [eax+10h], 1
jnz     short loc_41849E
mov     byte ptr [ebp+0ACh], 9
mov     word ptr [ebx+2], 0
mov     ebx, 6
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 6
jmp     loc_418225

loc_41849E:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0A4h
mov     eax, ebp
call    sub_4DD43B
jmp     def_417F19      ; jumptable 00417F19 default case

loc_4184B3:             ; jumptable 00417F19 case 19
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 7
jnz     def_417F19      ; jumptable 00417F19 default case
cmp     dword ptr [eax+10h], 14h
jnz     def_417F19      ; jumptable 00417F19 default case
mov     ebx, 0Eh
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 0Dh
jmp     loc_418225

loc_4184E6:             ; jumptable 00417F19 case 20
mov     bl, [eax+9]
cmp     bl, 7
jnz     short loc_41853B
mov     eax, [eax+10h]
cmp     eax, 3Ch ; '<'
jb      short loc_418502
jbe     short loc_418523
cmp     eax, 5Fh ; '_'
jz      short loc_41850B
jmp     def_417F19      ; jumptable 00417F19 default case

loc_418502:
cmp     eax, 28h ; '('
jnz     def_417F19      ; jumptable 00417F19 default case

loc_41850B:
mov     ebx, 6
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 6
jmp     loc_41801C

loc_418523:
mov     ebx, 0Eh
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 0Dh
jmp     loc_41801C

loc_41853B:
cmp     bl, 0Ch
jnz     def_417F19      ; jumptable 00417F19 default case
cmp     dword ptr [eax+10h], 1
jnz     def_417F19      ; jumptable 00417F19 default case
mov     byte ptr [ebp+0ACh], 0Ah
mov     word ptr [esi+2], 0
mov     ebx, 7
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 7
jmp     loc_418225

loc_418573:             ; jumptable 00417F19 case 21
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 0Ch
jnz     def_417F19      ; jumptable 00417F19 default case
cmp     dword ptr [eax+10h], 1Eh
jnz     def_417F19      ; jumptable 00417F19 default case
mov     ebx, 0Fh
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 0Eh
jmp     loc_418225

loc_4185A6:             ; jumptable 00417F19 case 22
mov     eax, [eax+10h]
cmp     eax, 64h ; 'd'
jb      short loc_4185B9
jbe     short loc_4185D6
cmp     eax, 96h
jz      short loc_4185EE
jmp     short def_417F19 ; jumptable 00417F19 default case

loc_4185B9:
cmp     eax, 49h ; 'I'
jnz     short def_417F19 ; jumptable 00417F19 default case
mov     ebx, 7
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 7
jmp     loc_41801C

loc_4185D6:
mov     ebx, 0Fh
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 0Eh
jmp     loc_41801C

loc_4185EE:
mov     ebx, 7
mov     edx, esi
mov     eax, ebp
call    sub_418612
mov     ebx, 7
mov     edx, esi
mov     eax, ebp

loc_418605:
call    sub_41862B

def_417F19:             ; jumptable 00417F19 default case
add     esp, 28h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_417EFA endp




sub_418612 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50F849[ebx*4]
mov     [edx+4], eax
retn
sub_418612 endp




sub_41862B proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50F889[ebx*4]
mov     [edx+8], eax
retn
sub_41862B endp




sub_418644 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+0Bh]
sar     eax, 18h
mov     ecx, [edx+4]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_418669
jbe     short loc_41866C
cmp     al, 7Fh
jnz     short loc_418669
mov     byte ptr [edx+0Eh], 0
jmp     short loc_41866C

loc_418669:
inc     byte ptr [esi+0Eh]

loc_41866C:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_4186AE
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_4186AE:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_4186D1
jbe     short loc_4186D4
cmp     al, 7Fh
jnz     short loc_4186D1
mov     byte ptr [esi+11h], 0
jmp     short loc_4186D4

loc_4186D1:
inc     byte ptr [esi+11h]

loc_4186D4:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_418716
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_418716:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_418644 endp




sub_418721 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_418731[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_418745
mov     eax, ecx
call    sub_4DEADD

loc_418745:
mov     edx, ebx
mov     eax, ecx
call    sub_418DEC
pop     edx
pop     ecx
pop     ebx
retn
sub_418721 endp




sub_418752 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+18h], 0FFCEh
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_418DAC
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 1
inc     byte ptr [ecx+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_418752 endp




sub_4187BC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4187F1
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_418DAC
mov     byte ptr [ecx+10Ch], 14h
inc     byte ptr [ecx+0Ah]

loc_4187F1:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4187BC endp




sub_4187F6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_418827
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_418DAC
inc     byte ptr [ecx+0Ah]

loc_418827:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4187F6 endp




sub_41882C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41886A
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+10Ch], 5
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_418DAC
inc     byte ptr [ecx+0Ah]

loc_41886A:
mov     eax, [edi+10h]
cmp     eax, 91h
jb      short loc_41888F
jbe     short loc_4188A4
cmp     eax, 0F0h
jb      loc_418AFB
jbe     short loc_4188B2
cmp     eax, 172h
jz      short loc_4188B9
jmp     loc_418AFB

loc_41888F:
cmp     eax, 73h ; 's'
jb      loc_418AFB
jbe     short loc_4188A4
cmp     eax, 78h ; 'x'
jz      short loc_4188AB
jmp     loc_418AFB

loc_4188A4:
mov     ebx, 3
jmp     short loc_4188BE

loc_4188AB:
mov     ebx, 4
jmp     short loc_4188BE

loc_4188B2:
mov     ebx, 5
jmp     short loc_4188BE

loc_4188B9:
mov     ebx, 3

loc_4188BE:
mov     edx, esi
jmp     loc_418AF4
sub_41882C endp




sub_4188C5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4188FC
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_418DAC
inc     byte ptr [ecx+0Ah]

loc_4188FC:
cmp     dword ptr [edi+10h], 23Ah
jnz     loc_418AFB
mov     ebx, 7
jmp     short loc_4188BE
sub_4188C5 endp




sub_418910 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_418944
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_418DAC
inc     byte ptr [ecx+0Dh]
inc     byte ptr [ecx+0Ah]

loc_418944:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_418910 endp




sub_418949 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+640h]
mov     edi, offset dword_560BDC
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_418987
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+118h], 16h
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_418DAC
inc     byte ptr [ecx+0Ah]

loc_418987:
