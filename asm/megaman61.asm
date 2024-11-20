loc_48DB69:
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_48DAD1 endp




sub_48DB72 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_48DB84
cmp     al, 1
jz      short loc_48DBB0
jmp     short loc_48DB69

loc_48DB84:
call    sub_49DBD1
call    sub_4D8ECC
test    eax, eax
jz      short loc_48DB69
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_523570
mov     dword ptr [ecx+0A4h], offset unk_523B50
inc     byte ptr [ecx+5]
jmp     short loc_48DB69

loc_48DBB0:
cmp     byte ptr [ecx+8], 0FFh
jz      short loc_48DBFF
mov     edx, [ecx+0A4h]
mov     eax, ecx
call    dword ptr [edx+4]
call    sub_47EBCB
test    eax, eax
jz      short loc_48DB64
test    byte ptr [ecx+0Ah], 80h
jnz     short loc_48DB64
mov     bl, ds:byte_77EAB8
test    bl, bl
jnz     short loc_48DB64
cmp     ds:word_6E23D6, 0
jnz     short loc_48DB64
or      byte ptr [ecx+0Ah], 1
xor     edx, edx
mov     eax, 1
call    sub_48DEB5
inc     byte ptr [ecx+4]
mov     [ecx+5], bl
jmp     loc_48DB64

loc_48DBFF:
add     [ecx+4], al
mov     byte ptr [ecx+5], 0
jmp     loc_48DB64
sub_48DB72 endp




sub_48DC0B proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_48DC1D
cmp     al, 1
jz      short loc_48DC3C
pop     edx
pop     ecx
retn

loc_48DC1D:
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
call    sub_4E1D8A
call    sub_4D8EB1
inc     byte ptr [ecx+5]
pop     edx
pop     ecx
retn

loc_48DC3C:
cmp     byte ptr ds:dword_77EA5A+2, 2
jnz     short loc_48DC6A
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     dl, 1
mov     byte ptr ds:dword_77E954, dl
call    sub_42A66D
call    sub_47E829
mov     byte ptr [ecx], 0
add     byte ptr ds:dword_77EA5A+2, dl

loc_48DC6A:
pop     edx
pop     ecx

locret_48DC6C:
retn
sub_48DC0B endp




sub_48DC6D proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48DCE2
mov     eax, [eax+24h]
mov     word ptr [eax+14h], 0AEh
mov     word ptr [eax+16h], 0FE76h
mov     word ptr [eax+18h], 0FEFBh
mov     dword ptr [eax+1Ch], 0AE0000h
mov     dword ptr [eax+20h], 0FE760000h
mov     dword ptr [eax+24h], 0FEFB0000h
mov     word ptr [eax+56h], 400h
mov     eax, [edx+28h]
mov     word ptr [eax+14h], 56h ; 'V'
mov     word ptr [eax+16h], 0FE23h
mov     word ptr [eax+18h], 0FEB5h
mov     dword ptr [eax+1Ch], offset unk_560000
mov     dword ptr [eax+20h], 0FE230000h
mov     dword ptr [eax+24h], 0FEB50000h
mov     word ptr [eax+56h], 400h
mov     edx, 2
xor     eax, eax
call    sub_48DEB5

loc_48DCE2:
pop     edx

locret_48DCE3:
retn
sub_48DC6D endp




sub_48DCE4 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48DD27
mov     eax, [eax+24h]
mov     word ptr [eax+14h], 84h
mov     word ptr [eax+16h], 0FE23h
mov     word ptr [eax+18h], 0FEFCh
mov     dword ptr [eax+1Ch], offset unk_840000
mov     dword ptr [eax+20h], 0FE230000h
mov     dword ptr [eax+24h], 0FEFC0000h
mov     word ptr [eax+56h], 5C7h
mov     eax, offset unk_5234D8
call    sub_49DB4D

loc_48DD27:
cmp     dword ptr [edx+10h], 5Ah ; 'Z'
jnz     short loc_48DD37
mov     eax, offset unk_523500
call    sub_49DB4D

loc_48DD37:
pop     edx

locret_48DD38:
retn
sub_48DCE4 endp




sub_48DD39 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48DD38
mov     eax, [eax+34h]
jmp     sub_4DE2F6
sub_48DD39 endp




sub_48DD47 proc near
cmp     dword ptr [eax+10h], 1Eh
jnz     short locret_48DD38
or      byte ptr [eax+0Ah], 80h
mov     eax, 0Ah
jmp     sub_49E0D7
sub_48DD47 endp




sub_48DD5B proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48DD78
mov     eax, offset unk_5234EC
call    sub_49DB4D
mov     eax, 2
call    sub_49E0D7

loc_48DD78:
cmp     ds:word_6E23D6, 0
jnz     short loc_48DD86
and     byte ptr [edx+0Ah], 7Fh

loc_48DD86:
pop     edx
retn
sub_48DD5B endp




sub_48DD88 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     loc_48DE2B
mov     eax, [eax+24h]
mov     word ptr [eax+14h], 30h ; '0'
mov     word ptr [eax+16h], 0FE23h
mov     word ptr [eax+18h], 0FEDEh
mov     dword ptr [eax+1Ch], 300000h
mov     dword ptr [eax+20h], 0FE230000h
mov     dword ptr [eax+24h], 0FEDE0000h
mov     word ptr [eax+56h], 4E3h
mov     eax, [edx+28h]
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FE83h
mov     word ptr [eax+18h], 0FF60h
mov     [eax+1Ch], ecx
mov     dword ptr [eax+20h], 0FE830000h
mov     dword ptr [eax+24h], 0FF600000h
mov     word ptr [eax+56h], 0C00h
mov     eax, [edx+2Ch]
mov     word ptr [eax+14h], 0FFEAh
mov     word ptr [eax+16h], 0FE23h
mov     word ptr [eax+18h], 0FEB4h
mov     dword ptr [eax+1Ch], 0FFEA0000h
mov     dword ptr [eax+20h], 0FE230000h
mov     dword ptr [eax+24h], 0FEB40000h
mov     word ptr [eax+56h], 7D0h
mov     eax, [edx+30h]
call    sub_4DE371

loc_48DE2B:
cmp     dword ptr [edx+10h], 82h
jnz     short loc_48DE64
mov     eax, [edx+28h]
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FE23h
mov     word ptr [eax+18h], 0FF86h
mov     dword ptr [eax+1Ch], 0
mov     dword ptr [eax+20h], 0FE230000h
mov     dword ptr [eax+24h], 0FF860000h
mov     word ptr [eax+56h], 0

loc_48DE64:
pop     edx
pop     ecx
retn
sub_48DD88 endp




sub_48DE67 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48DE7D
mov     edx, [eax+28h]
and     byte ptr [edx], 0FDh
mov     eax, [eax+2Ch]
mov     word ptr [eax+56h], 872h

loc_48DE7D:
pop     edx
retn
sub_48DE67 endp




sub_48DE7F proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48DE92
mov     edx, [eax+28h]
or      byte ptr [edx], 2
mov     eax, [eax+2Ch]
and     byte ptr [eax], 0FDh

loc_48DE92:
pop     edx
retn
sub_48DE7F endp




sub_48DE94 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48DEA1
mov     edx, [eax+28h]
and     byte ptr [edx], 0FDh

loc_48DEA1:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_48DEB3
xor     edx, edx
mov     eax, 2
call    sub_48DEB5

loc_48DEB3:
pop     edx
retn
sub_48DE94 endp




sub_48DEB5 proc near
push    ecx
mov     ecx, eax
mov     eax, offset dword_77EA48
cmp     ecx, 1
jb      short loc_48DECB
jbe     short loc_48DEE6
cmp     ecx, 2
jz      short loc_48DEF6
jmp     short loc_48DF0B

loc_48DECB:
test    ecx, ecx
jnz     short loc_48DF0B
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ch, 0FFh
mov     ds:byte_77EA61, ch
mov     ds:byte_77EA60, ch
jmp     short loc_48DF0B

loc_48DEE6:
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA61, 8
jmp     short loc_48DF04

loc_48DEF6:
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA61, 0Ah

loc_48DF04:
mov     ds:byte_77EA60, 2

loc_48DF0B:
mov     byte ptr [eax+16h], 0Dh
mov     [eax+17h], dl
mov     word ptr [eax+8], 708h
mov     word ptr [eax+0Ah], 0FF7Fh
mov     word ptr [eax+0Ch], 0FFD8h
mov     word ptr [eax+12h], 0
mov     byte ptr [eax+15h], 0
pop     ecx
retn
sub_48DEB5 endp




sub_48DF30 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48DF36[edx*4]
pop     edx
retn
sub_48DF30 endp

align 10h
jpt_48DF6A dd offset loc_48DF71 ; jump table for switch statement
dd offset loc_48DFD0
dd offset loc_48E001
dd offset loc_48E017
dd offset loc_48E05F



sub_48DF54 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_48DF6A      ; jumptable 0048DF6A default case
and     eax, 0FFh
jmp     jpt_48DF6A[eax*4] ; switch jump

loc_48DF71:             ; jumptable 0048DF6A case 0
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [esi+0Ch], 0
mov     byte ptr [esi+0Ah], 80h
mov     ds:dword_77E6B4, offset unk_523C78
mov     dword ptr [esi+0A4h], offset unk_523FB4
mov     eax, offset unk_523BC4
call    sub_49DB4D
mov     eax, [esi+24h]
mov     byte ptr [eax+9], 9
mov     byte ptr [eax+0Ah], 0
xor     edx, edx
xor     eax, eax
call    sub_48E3F9

loc_48DFC8:
inc     byte ptr [esi+5]
jmp     def_48DF6A      ; jumptable 0048DF6A default case

loc_48DFD0:             ; jumptable 0048DF6A case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_48DF6A      ; jumptable 0048DF6A default case
or      ds:byte_5F8364, 1
mov     byte ptr ds:dword_5F836C, 3
xor     ch, ch
mov     byte ptr ds:dword_5F836C+1, ch
or      ds:byte_5F8421, 10h
jmp     short loc_48DFC8

loc_48E001:             ; jumptable 0048DF6A case 2
mov     eax, 2
call    sub_49E0D7
mov     eax, 58h ; 'X'
call    sub_42BEB2
jmp     short loc_48DFC8

loc_48E017:             ; jumptable 0048DF6A case 3
cmp     ds:word_6E23D6, 0
jnz     short def_48DF6A ; jumptable 0048DF6A default case
call    sub_42C353
test    eax, eax
jnz     short def_48DF6A ; jumptable 0048DF6A default case
mov     eax, 24000Dh
call    sub_4D8E42
mov     eax, [esi+24h]
call    sub_4DE336
mov     eax, offset unk_523BC4
call    sub_49DB4D
mov     eax, offset unk_523BD8
call    sub_49DB4D
mov     eax, offset unk_523BEC
call    sub_49DB4D
jmp     loc_48DFC8

loc_48E05F:             ; jumptable 0048DF6A case 4
call    sub_4D8ECC
test    eax, eax
jz      short def_48DF6A ; jumptable 0048DF6A default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_523CC8
mov     dword ptr [esi+0A4h], offset unk_523FC4
and     byte ptr [esi+0Ah], 1
inc     byte ptr [esi+4]
mov     byte ptr [esi+5], 0

def_48DF6A:             ; jumptable 0048DF6A default case
xor     eax, eax
mov     al, ds:byte_52401C
mov     ecx, 2
mov     ebx, eax
mov     edx, eax
call    sub_48E47A
call    sub_47EBCB
test    eax, eax
jz      short loc_48E0AE
or      byte ptr [esi+0Ah], 1

loc_48E0AE:
call    sub_49DBD1
call    sub_49DECF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48DF54 endp




sub_48E0BD proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jnz     short loc_48E0CE
mov     eax, 14h
jmp     short loc_48E0ED

loc_48E0CE:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jnz     short loc_48E0E8
cmp     byte ptr [edx+0Ah], 1
jnz     short loc_48E0F9

loc_48E0E8:
mov     eax, 8

loc_48E0ED:
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_48E0F9:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_48E0BD endp

align 4
jpt_48E13A dd offset loc_48E141 ; jump table for switch statement
dd offset loc_48E164
dd offset loc_48E174
dd offset loc_48E19B



sub_48E118 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     ds:word_6E23D6, 0
jnz     def_48E13A      ; jumptable 0048E13A default case
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_48E13A      ; jumptable 0048E13A default case
and     eax, 0FFh
jmp     jpt_48E13A[eax*4] ; switch jump

loc_48E141:             ; jumptable 0048E13A case 0
call    sub_4D8EB1
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
mov     eax, 59h ; 'Y'
call    sub_42BEB2

loc_48E15F:
inc     byte ptr [ecx+5]
jmp     short def_48E13A ; jumptable 0048E13A default case

loc_48E164:             ; jumptable 0048E13A case 1
call    sub_42C353
test    eax, eax
jnz     short def_48E13A ; jumptable 0048E13A default case
call    sub_4E1D8A
jmp     short loc_48E15F

loc_48E174:             ; jumptable 0048E13A case 2
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 3
xor     dh, dh
mov     ds:byte_5F83DA, dh
jmp     short loc_48E15F

loc_48E19B:             ; jumptable 0048E13A case 3
mov     edx, 2
mov     eax, 1
call    sub_48E3F9
mov     byte ptr [ecx], 0

def_48E13A:             ; jumptable 0048E13A default case
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_48E1BD
call    sub_49DBD1
call    sub_49DECF

loc_48E1BD:
pop     edx
pop     ecx
retn
sub_48E118 endp




sub_48E1C0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     ds:byte_52401C, 0
jbe     short loc_48E1EA
xor     eax, eax
mov     al, ds:byte_52401C
mov     ecx, 2
mov     ebx, eax
mov     edx, eax
call    sub_48E47A
dec     ds:byte_52401C

loc_48E1EA:
cmp     dword ptr [esi+10h], 64h ; 'd'
jnz     short loc_48E1F7
mov     eax, [esi+24h]
mov     byte ptr [eax+0Dh], 0

loc_48E1F7:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48E1C0 endp




sub_48E1FC proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 28h ; '('
jb      short loc_48E20E
jbe     short loc_48E21F
cmp     edx, 32h ; '2'
jz      short loc_48E224
pop     edx
retn

loc_48E20E:
test    edx, edx
jnz     short loc_48E22B
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
jmp     short loc_48E227

loc_48E21F:
mov     eax, [eax+28h]
jmp     short loc_48E227

loc_48E224:
mov     eax, [eax+2Ch]

loc_48E227:
mov     byte ptr [eax+0Dh], 0

loc_48E22B:
pop     edx
retn
sub_48E1FC endp




sub_48E22D proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48E25A
mov     eax, [eax+24h]
call    sub_4DE336
mov     eax, [edx+28h]
call    sub_4DE336
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     edx, 2
xor     eax, eax
call    sub_48E3F9

loc_48E25A:
pop     edx
retn
sub_48E22D endp




sub_48E25C proc near
mov     eax, [eax+10h]
cmp     eax, 1Eh
jnz     short locret_48E2C0
call    sub_4DE13B
test    eax, eax
jz      short loc_48E292
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+0Ch], 5
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 2
mov     word ptr [eax+1Ch], 0EF98h
mov     word ptr [eax+1Eh], 0FE31h
mov     word ptr [eax+20h], 0EA11h

loc_48E292:
call    sub_4DE13B
test    eax, eax
jz      short locret_48E2C0
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+0Ch], 5
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 2
mov     word ptr [eax+1Ch], 0EF98h
mov     word ptr [eax+1Eh], 0FE31h
mov     word ptr [eax+20h], 0E9D0h

locret_48E2C0:
retn
sub_48E25C endp




sub_48E2C1 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48E2C0
mov     eax, offset unk_523C14
call    sub_49DB4D
mov     eax, offset unk_523C28
call    sub_49DB4D
mov     eax, offset unk_523C3C
call    sub_49DB4D
mov     eax, offset unk_523C50
call    sub_49DB4D
mov     eax, offset unk_523C64
jmp     sub_49DB4D
sub_48E2C1 endp




sub_48E2F9 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_48E339
mov     eax, [eax+28h]
call    sub_4DE336
mov     eax, [ecx+2Ch]
call    sub_4DE2F6
mov     eax, [ecx+30h]
call    sub_4DE2F6
mov     eax, [ecx+34h]
call    sub_4DE2F6
mov     eax, [ecx+38h]
call    sub_4DE2F6
xor     eax, eax
call    sub_48E3F9
mov     byte ptr [ecx+6], 0
jmp     short loc_48E33F

loc_48E339:
cmp     byte ptr [eax+6], 0
jnz     short loc_48E381

loc_48E33F:
mov     eax, offset unk_523BC4
call    sub_49DB4D
mov     eax, [ecx+24h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     eax, offset unk_523BD8
call    sub_49DB4D
mov     eax, [ecx+28h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     eax, offset unk_523BEC
call    sub_49DB4D
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
inc     byte ptr [ecx+6]

loc_48E381:
pop     edx
pop     ecx
retn
sub_48E2F9 endp




sub_48E384 proc near
cmp     dword ptr [eax+10h], 0Ah
jnz     short locret_48E391
mov     eax, [eax+28h]
mov     byte ptr [eax+0Dh], 0

locret_48E391:
retn
sub_48E384 endp




sub_48E392 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48E3AD
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 4

loc_48E3AD:
pop     edx
retn
sub_48E392 endp




sub_48E3AF proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 50h ; 'P'
jb      short loc_48E3C4
jbe     short loc_48E3D1
cmp     edx, 104h
jz      short loc_48E3DA
pop     edx
retn

loc_48E3C4:
test    edx, edx
jnz     short loc_48E3E5
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 6
jmp     short loc_48E3E1

loc_48E3D1:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 7
jmp     short loc_48E3E1

loc_48E3DA:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 8

loc_48E3E1:
mov     byte ptr [eax+0Ah], 0

loc_48E3E5:
pop     edx
retn
sub_48E3AF endp




sub_48E3E7 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48E3F8
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0

locret_48E3F8:
retn
sub_48E3E7 endp




sub_48E3F9 proc near
push    ebx
push    ecx
push    esi
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 0Bh
mov     ds:byte_77EA5F, dl
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     cl, 0FFh
mov     ds:byte_77EA61, cl
mov     ds:byte_77EA60, cl
test    eax, eax
jz      short loc_48E452
mov     word ptr ds:dword_77EA4E+2, 0A00h
mov     word ptr ds:dword_77EA52, 0FD9Eh
mov     word ptr ds:dword_77EA52+2, 0E000h
mov     word ptr ds:dword_77EA5A, 600h
pop     esi
pop     ecx
pop     ebx
retn

loc_48E452:
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
xor     bl, bl
mov     word ptr ds:dword_77EA52, bx
xor     ecx, ecx
mov     word ptr ds:dword_77EA52+2, cx
xor     esi, esi
mov     word ptr ds:dword_77EA5A, si
pop     esi
pop     ecx
pop     ebx
retn
sub_48E3F9 endp




sub_48E47A proc near

var_C= byte ptr -0Ch

push    esi
push    edi
sub     esp, 4
mov     [esp+0Ch+var_C], al
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
mov     al, [esp+0Ch+var_C]
mov     [esi+4], al
mov     [esi+5], dl
mov     [esi+6], bl
or      byte ptr [esi+7], 2
mov     edx, ds:dword_77E6DC
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
mov     edi, edx
push    0
xor     eax, eax
mov     ax, cx
shl     eax, 5
or      al, 0Fh
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 38h ; '8'
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, edi
call    sub_4F87A6
add     esp, 4
pop     edi
pop     esi
retn
sub_48E47A endp




sub_48E50E proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48E514[edx*4]
pop     edx
retn
sub_48E50E endp

align 2
jpt_48E550 dd offset loc_48E557 ; jump table for switch statement
dd offset loc_48E564
dd offset loc_48E580
dd offset loc_48E5D8
dd offset loc_48E6D0
dd offset loc_48E72E



sub_48E536 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 5           ; switch 6 cases
ja      def_48E550      ; jumptable 0048E550 default case
and     eax, 0FFh
jmp     jpt_48E550[eax*4] ; switch jump

loc_48E557:             ; jumptable 0048E550 case 0
mov     eax, 10h
call    sub_4D9040
inc     byte ptr [ecx+5]

loc_48E564:             ; jumptable 0048E550 case 1
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      def_48E550      ; jumptable 0048E550 default case
mov     byte ptr [edx+8], 3
mov     byte ptr [edx+9], 0
jmp     loc_48E712

loc_48E580:             ; jumptable 0048E550 case 2
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     byte ptr [ecx+0Ah], 80h
mov     eax, 12h
call    sub_47E888
test    eax, eax
jnz     short loc_48E5B1
mov     byte ptr [ecx+0Bh], 0
mov     eax, 12h
call    sub_47E8B8
jmp     short loc_48E5B5

loc_48E5B1:
mov     byte ptr [ecx+0Bh], 1

loc_48E5B5:
mov     eax, 604h
call    sub_47EA91
mov     eax, offset unk_52402C
call    sub_49DB4D
mov     eax, 5
call    sub_48E9EF
jmp     loc_48E712

loc_48E5D8:             ; jumptable 0048E550 case 3
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 700h
mov     word ptr ds:dword_5F889E, 0FDA4h
mov     word ptr ds:dword_5F889E+2, 0FB56h
mov     ds:dword_5F888C, 7000000h
mov     ds:dword_5F8890, 0FDA40000h
mov     ds:dword_5F8894, 0FB560000h
xor     edx, edx
mov     word ptr ds:dword_5F88A4, dx
mov     word ptr ds:dword_5F88A4+2, dx
mov     ds:word_5F88A8, dx
xor     dh, dh
mov     ds:byte_5F88AC, dh
mov     ds:byte_5F83DA, 1
mov     ds:byte_5F83D8, dh
mov     eax, [ecx+24h]
mov     ds:dword_5F8424, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_48E6A6
mov     ds:dword_77E6B4, offset unk_5240CC
mov     dword ptr [ecx+0A4h], offset unk_524118
mov     eax, offset unk_524054
call    sub_49DB4D
mov     eax, offset unk_524068
call    sub_49DB4D
mov     eax, 65h ; 'e'
call    sub_42BEB2
jmp     short loc_48E6BA

loc_48E6A6:
mov     ds:dword_77E6B4, offset unk_524344
mov     dword ptr [ecx+0A4h], offset unk_524118

loc_48E6BA:
mov     eax, 2
call    sub_49E0D7
call    sub_49DBD1
call    sub_49DECF
jmp     short loc_48E712

loc_48E6D0:             ; jumptable 0048E550 case 4
call    sub_47EBCB
test    eax, eax
jz      short loc_48E6DD
or      byte ptr [ecx+0Ah], 1

loc_48E6DD:
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_48E719
cmp     ds:word_6E23D6, 0
jnz     def_48E550      ; jumptable 0048E550 default case
call    sub_42C353
test    eax, eax
jnz     def_48E550      ; jumptable 0048E550 default case
mov     eax, 240014h

loc_48E70D:
call    sub_4D8E42

loc_48E712:
inc     byte ptr [ecx+5]
pop     edx
pop     ecx
pop     ebx
retn

loc_48E719:
cmp     ds:word_6E23D6, 0
jnz     def_48E550      ; jumptable 0048E550 default case
mov     eax, 240015h
jmp     short loc_48E70D

loc_48E72E:             ; jumptable 0048E550 case 5
call    sub_47EBCB
test    eax, eax
jz      short loc_48E73B
or      byte ptr [ecx+0Ah], 1

loc_48E73B:
or      byte ptr [edx+0BDh], 20h
call    sub_49DBD1
call    sub_49DECF
call    sub_4D8ECC
test    eax, eax
jz      short def_48E550 ; jumptable 0048E550 default case
call    sub_49DFCA
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_48E776
mov     ds:dword_77E6B4, offset unk_524128
mov     dword ptr [ecx+0A4h], offset unk_524324
jmp     short loc_48E78A

loc_48E776:
mov     ds:dword_77E6B4, offset unk_524390
mov     dword ptr [ecx+0A4h], offset unk_5244FC

loc_48E78A:
and     byte ptr [ecx+0Ah], 7Fh
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

def_48E550:             ; jumptable 0048E550 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_48E536 endp




sub_48E7A1 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_47EBCB
test    eax, eax
jz      short loc_48E7B2
or      byte ptr [edx+0Ah], 1

loc_48E7B2:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_48E7DA
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     cl, [edx+0Ah]
test    cl, 1
jz      short loc_48E7E1
test    cl, 80h
jnz     short loc_48E7E1
mov     eax, 8
call    sub_49E0D7

loc_48E7DA:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_48E7E1:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_48E7A1 endp




sub_48E7EE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_48E806
jbe     short loc_48E835
cmp     al, 2
jz      short loc_48E86B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_48E806:
test    al, al
jnz     loc_48E8C4
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
call    sub_4D8EB1
test    byte ptr [ecx+0Ah], 1
jz      short loc_48E82D
call    sub_4E1D8A

loc_48E82D:
inc     byte ptr [ecx+5]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_48E835:
cmp     ds:byte_77EAB8, 0
jnz     loc_48E8C4
cmp     ds:word_6E23D6, 0
jnz     short loc_48E8C4
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     bl, 1
mov     byte ptr ds:dword_77E954, bl
call    sub_42A66D
add     [ecx+5], bl
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_48E86B:
mov     byte ptr ds:dword_77EA5A+2, al
mov     ds:byte_77EA5E, 0Bh
mov     ds:byte_77EA5F, al
mov     word ptr ds:dword_77EA4E+2, 3200h
mov     word ptr ds:dword_77EA52, 0FD9Eh
mov     esi, 400h
mov     word ptr ds:dword_77EA52+2, si
mov     word ptr ds:dword_77EA5A, si
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, al
and     ds:byte_5F8364, 0FCh
mov     ds:byte_5F83DA, bl
mov     [ecx], bl

loc_48E8C4:
pop     esi
pop     edx
pop     ecx
pop     ebx

locret_48E8C8:
retn
sub_48E7EE endp




sub_48E8C9 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48E8FD
and     ds:byte_5F8364, 0FDh
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     eax, [edx+30h]
call    sub_4DE2F6
mov     eax, offset unk_524040
call    sub_49DB4D
mov     eax, 3
call    sub_48E9EF

loc_48E8FD:
pop     edx
retn
sub_48E8C9 endp




sub_48E8FF proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_48E941
or      ds:byte_5F8364, 2
mov     eax, [eax+28h]
call    sub_4DE336
mov     eax, offset unk_52407C
call    sub_49DB4D
mov     eax, offset unk_524090
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 1
mov     eax, 5
call    sub_48E9EF
pop     edx
pop     ecx
retn

loc_48E941:
cmp     ecx, 5Ah ; 'Z'
jnz     short loc_48E95D
mov     eax, offset unk_5240A4
call    sub_49DB4D
mov     eax, offset unk_5240B8
call    sub_49DB4D
pop     edx
pop     ecx
retn

loc_48E95D:
cmp     ecx, 0FEh
jnz     short loc_48E978
mov     ah, [eax+0Ah]
or      ah, 80h
mov     [edx+0Ah], ah
mov     eax, 0Ah
call    sub_49E0D7

loc_48E978:
pop     edx
pop     ecx
retn
sub_48E8FF endp




sub_48E97B proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_48E9B5
or      ds:byte_5F8364, 2
mov     eax, offset unk_52407C
call    sub_49DB4D
mov     eax, offset unk_524090
call    sub_49DB4D
mov     edx, [edx+24h]
mov     byte ptr [edx+9], 1
mov     eax, 5
call    sub_48E9EF
pop     edx
pop     ecx
retn

loc_48E9B5:
cmp     ecx, 5Ah ; 'Z'
jnz     short loc_48E9D1
mov     eax, offset unk_5240A4
call    sub_49DB4D
mov     eax, offset unk_5240B8
call    sub_49DB4D
pop     edx
pop     ecx
retn

loc_48E9D1:
cmp     ecx, 0DDh
jnz     short loc_48E9EC
mov     ah, [eax+0Ah]
or      ah, 80h
mov     [edx+0Ah], ah
mov     eax, 0Ah
call    sub_49E0D7

loc_48E9EC:
pop     edx
pop     ecx
retn
sub_48E97B endp




sub_48E9EF proc near
push    ebx
push    edx
push    esi
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 0Dh
mov     ds:byte_77EA5F, al
mov     word ptr ds:dword_77EA4E+2, 700h
mov     word ptr ds:dword_77EA52, 0FDA4h
mov     word ptr ds:dword_77EA52+2, 0FB56h
xor     esi, esi
mov     word ptr ds:dword_77EA5A, si
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     esi
pop     edx
pop     ebx
retn
sub_48E9EF endp

byte_48EA43 db 48h
dd 0CFF9CFFh, 640000FEh, 0C8FD4400h, 0DC000000h
dd 0F6FF8800h, 4C0000FFh, 0FAFF38FFh, 82000000h
dd 0D4FF6A00h, 240000FEh, 24FE5CFFh, 380000FFh
dd 0D4FE70FFh, 0D70000FEh, 78FCE0FFh
db 3 dup(0)



sub_48EA83 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48EA89[edx*4]
pop     edx
retn
sub_48EA83 endp

db 90h
jpt_48EAC0 dd offset loc_48EAC7 ; jump table for switch statement
dd offset loc_48EB1C
dd offset loc_48EB4D
dd offset loc_48EB55
dd offset loc_48EB8C
dd offset loc_48EBBD



sub_48EAAB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 5           ; switch 6 cases
ja      def_48EAC0      ; jumptable 0048EAC0 default case
and     eax, 0FFh
jmp     jpt_48EAC0[eax*4] ; switch jump

loc_48EAC7:             ; jumptable 0048EAC0 case 0
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Ah], 80h
mov     ds:dword_77E6B4, offset unk_5245E0
mov     dword ptr [ecx+0A4h], offset unk_524A3C
mov     eax, 4
call    sub_48F194
mov     eax, 5Ah ; 'Z'
call    sub_42BEB2

loc_48EB14:
inc     byte ptr [ecx+5]
jmp     def_48EAC0      ; jumptable 0048EAC0 default case

loc_48EB1C:             ; jumptable 0048EAC0 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_48EAC0      ; jumptable 0048EAC0 default case
mov     byte ptr ds:dword_5F836C, 3
xor     dl, dl
mov     byte ptr ds:dword_5F836C+1, dl
and     ds:byte_5F8364, 0FCh
or      ds:byte_5F8421, 10h
jmp     short loc_48EB14

loc_48EB4D:             ; jumptable 0048EAC0 case 2
inc     byte ptr ds:dword_5F836C+1
jmp     short loc_48EB14

loc_48EB55:             ; jumptable 0048EAC0 case 3
call    sub_42C353
test    eax, eax
jnz     def_48EAC0      ; jumptable 0048EAC0 default case
mov     eax, offset unk_524518
call    sub_49DB4D
mov     eax, offset unk_52452C
call    sub_49DB4D
mov     eax, offset unk_524540
call    sub_49DB4D
mov     eax, 24000Ch
call    sub_4D8E42
jmp     short loc_48EB14

loc_48EB8C:             ; jumptable 0048EAC0 case 4
call    sub_4D8ECC
test    eax, eax
jz      short def_48EAC0 ; jumptable 0048EAC0 default case
mov     eax, 2
call    sub_49E0D7
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_524630
mov     dword ptr [ecx+0A4h], offset unk_524A4C
jmp     loc_48EB14

loc_48EBBD:             ; jumptable 0048EAC0 case 5
cmp     ds:word_6E23D6, 0
jnz     short def_48EAC0 ; jumptable 0048EAC0 default case
and     byte ptr [ecx+0Ah], 1
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

def_48EAC0:             ; jumptable 0048EAC0 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_48EBE7
or      byte ptr [ecx+0Ah], 1

loc_48EBE7:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_48EAAB endp




sub_48EBF5 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jnz     short loc_48EC0E
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]
jmp     short loc_48EC52

loc_48EC0E:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
cmp     byte ptr [edx+8], 2
jnz     short loc_48EC36
mov     ch, [edx+0Ah]
cmp     ch, 1
jnz     short loc_48EC56
mov     eax, 8
call    sub_49E0D7
add     [edx+4], ch
jmp     short loc_48EC52

loc_48EC36:
call    sub_47EBCB
test    eax, eax
jnz     short loc_48EC45
cmp     byte ptr [edx+0Ah], 1
jnz     short loc_48EC56

loc_48EC45:
mov     eax, 8
call    sub_49E0D7
inc     byte ptr [edx+4]

loc_48EC52:
mov     byte ptr [edx+5], 0

loc_48EC56:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_48EBF5 endp




sub_48EC63 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     ds:word_6E23D6, 0
jnz     loc_48ED36
mov     al, [eax+5]
cmp     al, 1
jb      short loc_48EC88
jbe     short loc_48ECAC
cmp     al, 2
jz      short loc_48ECCD
jmp     loc_48ED36

loc_48EC88:
test    al, al
jnz     loc_48ED36
call    sub_4D8EB1
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
inc     byte ptr [ecx+5]
jmp     loc_48ED36

loc_48ECAC:
call    sub_4E1D8A
mov     bl, 1
mov     byte ptr ds:dword_77E954, bl
call    sub_42A66D
mov     eax, offset byte_5F8364
call    sub_4B565A
add     [ecx+5], bl
jmp     short loc_48ED36

loc_48ECCD:
mov     byte ptr ds:dword_77EA5A+2, al
mov     ds:byte_77EA5E, 0Bh
mov     dh, al
mov     ds:byte_77EA5F, al
mov     word ptr ds:dword_77EA4E+2, 0FE00h
mov     word ptr ds:dword_77EA52, 0FEFFh
mov     word ptr ds:dword_77EA52+2, 0FD00h
mov     word ptr ds:dword_77EA5A, 800h
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 0FFh
mov     al, dh
mov     ds:byte_77EA60, al
or      ds:byte_5F8364, 3
mov     ds:byte_5F83DA, bl
xor     dh, al
mov     ds:byte_77E807, dh
call    sub_47E829
mov     [ecx], bl

loc_48ED36:
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_48ED46
call    sub_49DBD1
call    sub_49DECF

loc_48ED46:
pop     edx
pop     ecx
pop     ebx
retn
sub_48EC63 endp




sub_48ED4A proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+10h]
cmp     edx, 3Ah ; ':'
jb      short loc_48ED6A
jbe     short loc_48ED95
cmp     edx, 3Eh ; '>'
jb      short loc_48ED65
jbe     short loc_48ED95
cmp     edx, 3Fh ; '?'

loc_48ED61:
jz      short loc_48ED9A
jmp     short loc_48ED9E

loc_48ED65:
cmp     edx, 3Bh ; ';'
jmp     short loc_48ED61

loc_48ED6A:
cmp     edx, 23h ; '#'
jb      short loc_48ED76
jbe     short loc_48ED95
cmp     edx, 37h ; '7'
jmp     short loc_48ED61

loc_48ED76:
cmp     edx, 1Eh
jnz     short loc_48ED9E
mov     edx, [eax+24h]
mov     byte ptr [edx+0Dh], 0
mov     edx, [eax+28h]
mov     byte ptr [edx+0Dh], 0
mov     edx, [eax+3Ch]
mov     byte ptr [edx+0Dh], 0
inc     byte ptr [eax+6]
jmp     short loc_48ED9E

loc_48ED95:
inc     byte ptr [eax+7]
jmp     short loc_48ED9E

loc_48ED9A:
mov     byte ptr [eax+7], 0

loc_48ED9E:
cmp     byte ptr [eax+6], 0
jz      short loc_48EDC9
mov     dx, ds:word_77EAB6
xor     dh, dh
and     dl, 3
and     edx, 0FFFFh
mov     edx, ds:dword_524AC2[edx*2]
sar     edx, 10h
shl     edx, 10h
mov     ds:dword_77E698, edx

loc_48EDC9:
cmp     byte ptr [eax+7], 0
jz      short loc_48EDE2
mov     ecx, 2
mov     ebx, 80h
mov     edx, ebx
mov     eax, ebx
call    sub_48F1EA

loc_48EDE2:
pop     edx
pop     ecx
pop     ebx
retn
sub_48ED4A endp




sub_48EDE6 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 0B4h
jb      short loc_48EDFE
jbe     short loc_48EE1D
cmp     edx, 0FAh
jz      short loc_48EE22
jmp     short loc_48EE2E

loc_48EDFE:
test    edx, edx
jnz     short loc_48EE2E
mov     byte ptr [eax+6], 0
mov     ds:dword_77E698, edx
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 0
jmp     short loc_48EE2E

loc_48EE1D:
inc     byte ptr [eax+6]
jmp     short loc_48EE2E

loc_48EE22:
mov     byte ptr [eax+6], 0
xor     edx, edx
mov     ds:dword_77E698, edx

loc_48EE2E:
cmp     byte ptr [eax+6], 0
jz      short loc_48EE55
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_524ACA[eax*2]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E698, eax

loc_48EE55:
pop     edx
retn
sub_48EDE6 endp




sub_48EE57 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48EE6C
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_48EE6C:
retn
sub_48EE57 endp




sub_48EE6D proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48EE82
mov     eax, [eax+3Ch]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_48EE82:
retn
sub_48EE6D endp




sub_48EE83 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48EE98
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_48EE98:
retn
sub_48EE83 endp




sub_48EE99 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48EEAE
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_48EEAE:
retn
sub_48EE99 endp




sub_48EEAF proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48EEEB
mov     eax, [eax+24h]
call    sub_4DE336
mov     eax, [edx+28h]
call    sub_4DE336
mov     eax, [edx+3Ch]
call    sub_4DE2F6
mov     eax, offset unk_524554
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 2
mov     eax, 5
call    sub_48F194

loc_48EEEB:
cmp     dword ptr [edx+10h], 46h ; 'F'
jnz     short loc_48EEFB
mov     eax, 0Eh
call    sub_49E0D7

loc_48EEFB:
mov     eax, edx
call    sub_48F27E
pop     edx
retn
sub_48EEAF endp

db 8Dh, 40h, 0
jpt_48EF2C dd offset loc_48EF33 ; jump table for switch statement
dd offset loc_48EF7D
dd offset loc_48EFAB
dd offset loc_48EFFF



sub_48EF17 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_48EF2C      ; jumptable 0048EF2C default case
and     eax, 0FFh
jmp     jpt_48EF2C[eax*4] ; switch jump

loc_48EF33:             ; jumptable 0048EF2C case 0
cmp     ds:word_6E23D6, 0
jnz     def_48EF2C      ; jumptable 0048EF2C default case
call    sub_4D8EB1
mov     eax, [ecx+24h]
call    sub_4DE336
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
mov     byte ptr [ecx+0Ah], 80h
mov     eax, 7
call    sub_49E0D7
mov     eax, 5Bh ; '['
call    sub_42BEB2

loc_48EF75:
inc     byte ptr [ecx+5]
jmp     def_48EF2C      ; jumptable 0048EF2C default case

loc_48EF7D:             ; jumptable 0048EF2C case 1
call    sub_42C353
test    eax, eax
jnz     def_48EF2C      ; jumptable 0048EF2C default case
cmp     ds:word_6E23D6, 0
jnz     def_48EF2C      ; jumptable 0048EF2C default case
mov     eax, 240010h
call    sub_4D8E42
mov     dword ptr [ecx+10h], 0
jmp     short loc_48EF75

loc_48EFAB:             ; jumptable 0048EF2C case 2
call    sub_4D8ECC
test    eax, eax
jz      short loc_48EFFA
cmp     dword ptr [ecx+10h], 14h
jnz     def_48EF2C      ; jumptable 0048EF2C default case
xor     edx, edx

loc_48EFC0:
lea     ebx, [edx+4]
mov     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 2
add     eax, offset unk_524518
call    sub_49DB4D
inc     edx
cmp     edx, 4
jl      short loc_48EFC0
mov     eax, offset unk_524540
call    sub_49DB4D
mov     eax, offset unk_5245CC
call    sub_49DB4D
and     byte ptr [ecx+0Ah], 1
jmp     loc_48EF75

loc_48EFFA:
mov     [ecx+10h], eax
jmp     short def_48EF2C ; jumptable 0048EF2C default case

loc_48EFFF:             ; jumptable 0048EF2C case 3
cmp     dword ptr [ecx+10h], 1F4h
jnz     short def_48EF2C ; jumptable 0048EF2C default case
mov     byte ptr [ecx+5], 0
call    sub_49DF64
xor     edx, edx

loc_48F013:
mov     eax, edx
mov     eax, [ecx+eax*4+24h]
call    sub_4DE2F6
inc     edx
cmp     edx, 4
jl      short loc_48F013
mov     eax, [ecx+3Ch]
call    sub_4DE2F6
mov     eax, [ecx+38h]
call    sub_4DE371
mov     eax, offset unk_524518
call    sub_49DB4D
mov     eax, 1
call    sub_48F194

def_48EF2C:             ; jumptable 0048EF2C default case
call    sub_47EBCB
test    eax, eax
jz      short loc_48F055
or      byte ptr [ecx+0Ah], 1

loc_48F055:
pop     edx
pop     ecx
pop     ebx
retn
sub_48EF17 endp




sub_48F059 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 96h
jb      short loc_48F084
jbe     short loc_48F071
cmp     edx, 0B4h
jz      short loc_48F07A
pop     edx
retn

loc_48F071:
mov     eax, [eax+24h]
mov     byte ptr [eax+0Dh], 0
pop     edx
retn

loc_48F07A:
mov     eax, offset unk_52452C
call    sub_49DB4D

loc_48F084:
pop     edx
retn
sub_48F059 endp




sub_48F086 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48F092
mov     eax, [eax+24h]
inc     byte ptr [eax+0Dh]

locret_48F092:
retn
sub_48F086 endp




sub_48F093 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F0D4
mov     eax, [eax+24h]
call    sub_4DE336
mov     eax, [edx+28h]
call    sub_4DE336
mov     eax, offset unk_524568
call    sub_49DB4D
mov     eax, offset unk_524540
call    sub_49DB4D
mov     eax, offset unk_5245CC
call    sub_49DB4D
mov     eax, 5
call    sub_48F194

loc_48F0D4:
pop     edx
retn
sub_48F093 endp




sub_48F0D6 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F115
mov     eax, [eax+3Ch]
call    sub_4DE2F6
mov     eax, [edx+38h]
call    sub_4DE371
mov     eax, [edx+24h]
call    sub_4DE2F6
mov     eax, offset unk_524518
call    sub_49DB4D
mov     eax, offset unk_52452C
call    sub_49DB4D
mov     eax, 1
call    sub_48F194

loc_48F115:
pop     edx
retn
sub_48F0D6 endp




sub_48F117 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F12B
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 7
mov     edx, [eax+24h]
inc     byte ptr [edx+0Dh]

loc_48F12B:
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_48F138
mov     eax, [eax+28h]
mov     byte ptr [eax+0Dh], 0

loc_48F138:
pop     edx
retn
sub_48F117 endp




sub_48F13A proc near
push    ecx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F191
mov     eax, [eax+24h]
call    sub_4DE336
mov     eax, [edx+28h]
call    sub_4DE336
mov     eax, offset unk_524540
call    sub_49DB4D
mov     eax, offset unk_5245CC
call    sub_49DB4D
xor     edx, edx

loc_48F16A:
lea     ecx, [edx+4]
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_524518
call    sub_49DB4D
inc     edx
cmp     edx, 5
jl      short loc_48F16A
mov     eax, 5
call    sub_48F194

loc_48F191:
pop     edx
pop     ecx
retn
sub_48F13A endp




sub_48F194 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ds:byte_77EA5E, 0Bh
mov     ds:byte_77EA5F, al
xor     dl, dl
mov     byte ptr ds:dword_77EA5A+3, dl
mov     byte ptr ds:dword_77EA5A+2, 0FFh
xor     dh, dh
mov     word ptr ds:dword_77EA4E+2, dx
xor     ebx, ebx
mov     word ptr ds:dword_77EA52, bx
xor     ecx, ecx
mov     word ptr ds:dword_77EA52+2, cx
xor     esi, esi
mov     word ptr ds:dword_77EA5A, si
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48F194 endp




sub_48F1EA proc near

var_C= byte ptr -0Ch

push    esi
push    edi
sub     esp, 4
mov     [esp+0Ch+var_C], al
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
mov     al, [esp+0Ch+var_C]
mov     [esi+4], al
mov     [esi+5], dl
mov     [esi+6], bl
or      byte ptr [esi+7], 2
mov     edx, ds:dword_77E6DC
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
mov     edi, edx
push    0
xor     eax, eax
mov     ax, cx
shl     eax, 5
or      al, 0Fh
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 38h ; '8'
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, edi
call    sub_4F87A6
add     esp, 4
pop     edi
pop     esi
retn
sub_48F1EA endp




sub_48F27E proc near

var_54= word ptr -54h
var_52= word ptr -52h
var_50= word ptr -50h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 40h
mov     ebx, eax
mov     ecx, 10h
mov     edi, esp
mov     esi, offset byte_48EA43
rep movsd
mov     eax, [eax+10h]
cmp     eax, 34h ; '4'
jb      short loc_48F2E3
jbe     loc_48F3AA
cmp     eax, 46h ; 'F'
jb      short loc_48F2D2
jbe     loc_48F3AA
cmp     eax, 50h ; 'P'
jb      short loc_48F2C8
jbe     loc_48F3AA
cmp     eax, 58h ; 'X'

loc_48F2BD:
jz      loc_48F3AA
jmp     loc_48F3FE

loc_48F2C8:
cmp     eax, 4Ch ; 'L'

loc_48F2CB:
jz      short loc_48F310
jmp     loc_48F3FE

loc_48F2D2:
cmp     eax, 3Ch ; '<'
jb      short loc_48F2DE
jbe     short loc_48F310
cmp     eax, 44h ; 'D'
jmp     short loc_48F2CB

loc_48F2DE:
cmp     eax, 38h ; '8'
jmp     short loc_48F2CB

loc_48F2E3:
cmp     eax, 1Eh
jb      short loc_48F2FF
jbe     loc_48F3AA
cmp     eax, 28h ; '('
jb      short loc_48F2FA
jbe     short loc_48F310
cmp     eax, 30h ; '0'
jmp     short loc_48F2CB

loc_48F2FA:
cmp     eax, 24h ; '$'
jmp     short loc_48F2CB

loc_48F2FF:
cmp     eax, 14h
jb      short loc_48F30B
jbe     short loc_48F310
cmp     eax, 1Ch
jmp     short loc_48F2CB

loc_48F30B:
cmp     eax, 0Ah
jmp     short loc_48F2BD

loc_48F310:
call    sub_4DE13B
mov     ecx, eax
test    eax, eax
jz      loc_48F3AA
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 3
mov     esi, 14h
mov     eax, [ebx+10h]
mov     edx, eax
sar     edx, 1Fh
idiv    esi
mov     edx, eax
shl     edx, 3
call    rand_
mov     esi, eax
and     esi, 1Fh
mov     ax, word ptr ds:(dword_524ACA+2)[edx]
add     eax, esi
mov     [ecx+48h], ax
mov     esi, 14h
mov     eax, [ebx+10h]
mov     edx, eax
sar     edx, 1Fh
idiv    esi
mov     edx, eax
shl     edx, 3
call    rand_
mov     esi, eax
and     esi, 1Fh
mov     ax, ds:word_524ACE[edx]
add     eax, esi
mov     [ecx+4Ah], ax
mov     esi, 14h
mov     eax, [ebx+10h]
mov     edx, eax
sar     edx, 1Fh
idiv    esi
mov     ax, ds:word_524AD0[eax*8]
sub     eax, 1Fh
mov     [ecx+4Ch], ax

loc_48F3AA:
call    sub_4DE13B
mov     ecx, eax
test    eax, eax
jz      short loc_48F3FE
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 40h ; '@'
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
call    rand_
and     eax, 7
mov     ax, [esp+eax*8+54h+var_54]
mov     [ecx+48h], ax
call    rand_
and     eax, 7
mov     ax, [esp+eax*8+54h+var_52]
mov     [ecx+4Ah], ax
call    rand_
and     eax, 7
mov     ax, [esp+eax*8+54h+var_50]
mov     [ecx+4Ch], ax

loc_48F3FE:
add     esp, 40h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48F27E endp




sub_48F407 proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 7
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_48F407 endp




sub_48F453 proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_48F4F5
mov     eax, 7
call    sub_48F407
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     eax, [edx+34h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+38h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+3Ch]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+40h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+44h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
or      ds:byte_56F80C, 3
or      ds:byte_56F87C, 3
or      ds:byte_56F8EC, 3
or      ds:byte_56F924, 3
or      ds:byte_56F95C, 3
mov     ds:word_56F82C, 0FF80h
mov     ebx, 0FFFFFE98h
mov     ds:word_56F89C, bx
mov     ds:word_56F90C, bx
mov     ds:word_56F944, bx
mov     ds:word_56F97C, bx

loc_48F4F5:
pop     edx
pop     ebx
retn
sub_48F453 endp




sub_48F4F8 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F534
mov     eax, 5
call    sub_48F407
mov     edx, [edx+24h]
and     byte ptr [edx], 0FDh
and     ds:byte_56F80C, 0FCh
and     ds:byte_56F87C, 0FCh
and     ds:byte_56F8EC, 0FCh
and     ds:byte_56F924, 0FCh
and     ds:byte_56F95C, 0FCh

loc_48F534:
pop     edx
retn
sub_48F4F8 endp




sub_48F536 proc near

var_C= word ptr -0Ch
var_A= word ptr -0Ah
var_8= word ptr -8

push    edx
sub     esp, 8
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_48F5FD
mov     eax, 6
call    sub_48F407
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 6
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Ch], 1
or      byte ptr [eax], 2
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Ch], 1
mov     eax, [edx+30h]
or      byte ptr [eax], 2
mov     eax, [edx+34h]
or      byte ptr [eax], 2
mov     eax, [edx+38h]
or      byte ptr [eax], 2
mov     eax, [edx+3Ch]
or      byte ptr [eax], 2
mov     eax, [edx+40h]
or      byte ptr [eax], 2
mov     eax, [edx+44h]
or      byte ptr [eax], 2
mov     [esp+0Ch+var_C], 0B8h
mov     [esp+0Ch+var_A], 0FF92h
mov     [esp+0Ch+var_8], 12Ch
mov     eax, esp
call    sub_43B799
mov     [esp+0Ch+var_C], 46h ; 'F'
mov     [esp+0Ch+var_8], 10Eh
mov     eax, esp
call    sub_43B799
mov     [esp+0Ch+var_C], 3Fh ; '?'
mov     [esp+0Ch+var_8], 0B4h
mov     eax, esp
call    sub_43B799
mov     [esp+0Ch+var_8], 28h ; '('
mov     eax, esp
call    sub_43B799
mov     [esp+0Ch+var_C], 0C8h
mov     [esp+0Ch+var_8], 8Ch
mov     eax, esp
call    sub_43B799

loc_48F5FD:
add     esp, 8
pop     edx
retn
sub_48F536 endp




sub_48F602 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F610
mov     edx, [eax+28h]
mov     byte ptr [edx+0Ch], 0

loc_48F610:
cmp     dword ptr [eax+10h], 50h ; 'P'
jnz     short loc_48F621
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0

loc_48F621:
pop     edx
retn
sub_48F602 endp




sub_48F623 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F631
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ch], 0

loc_48F631:
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_48F642
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0

loc_48F642:
cmp     dword ptr [eax+10h], 140h
jnz     short loc_48F656
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

loc_48F656:
pop     edx
retn
sub_48F623 endp




sub_48F658 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F67F
mov     edx, [eax+30h]
and     byte ptr [edx], 0FDh
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 8
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Ch], 1
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0

loc_48F67F:
mov     edx, [eax+2Ch]
mov     edx, [edx+98h]
cmp     byte ptr [edx], 9
jnz     short loc_48F694
mov     edx, [eax+28h]
mov     byte ptr [edx+0Ch], 0

loc_48F694:
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_48F6A1
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ch], 1

loc_48F6A1:
cmp     dword ptr [eax+10h], 0C1h
jnz     short loc_48F6B1
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Ch], 0

loc_48F6B1:
pop     edx
retn
sub_48F658 endp




sub_48F6B3 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48F6C4
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 6
mov     byte ptr [eax+0Ah], 0

locret_48F6C4:
retn
sub_48F6B3 endp




sub_48F6C5 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48F6D6
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 9
mov     byte ptr [eax+0Ah], 0

locret_48F6D6:
retn
sub_48F6C5 endp




sub_48F6D7 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48F6E8
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Ah
mov     byte ptr [eax+0Ah], 0

locret_48F6E8:
retn
sub_48F6D7 endp




sub_48F6E9 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48F722
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0Bh
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
or      byte ptr [edx], 2
mov     edx, [eax+38h]
mov     word ptr [edx+56h], 955h
mov     edx, [eax+3Ch]
mov     word ptr [edx+56h], 555h
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0

loc_48F722:
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short loc_48F741
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ch], 0
mov     edx, [eax+34h]
mov     byte ptr [edx+110h], 9
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0

loc_48F741:
cmp     dword ptr [eax+10h], 7Bh ; '{'
jnz     short loc_48F76B
mov     edx, [eax+38h]
mov     byte ptr [edx+110h], 9
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+3Ch]
mov     byte ptr [edx+110h], 9
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0

loc_48F76B:
cmp     dword ptr [eax+10h], 81h
jnz     short loc_48F786
mov     edx, [eax+40h]
mov     byte ptr [edx+110h], 9
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0

loc_48F786:
cmp     dword ptr [eax+10h], 83h
jnz     short loc_48F7A1
mov     eax, [eax+44h]
mov     byte ptr [eax+110h], 9
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0

loc_48F7A1:
pop     edx
retn
sub_48F6E9 endp




sub_48F7A3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_524BA0
mov     dword ptr [ecx+0A4h], offset unk_524D3C
xor     edx, edx

loc_48F7C9:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_524AEC
call    sub_49DB4D
inc     edx
cmp     edx, 0Ah
jl      short loc_48F7C9
pop     edx
pop     ecx
pop     ebx
retn
sub_48F7A3 endp




sub_48F7E7 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_48F7F7
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_48F7F7:
pop     edx
retn
sub_48F7E7 endp

db 8Bh, 0C0h
jpt_48F82D dd offset loc_48F834 ; jump table for switch statement
dd offset loc_48F870
dd offset loc_48F88B
dd offset loc_48F8A4
dd offset loc_48F8AE
dd offset loc_48F8D9



sub_48F813 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_48F82D      ; jumptable 0048F82D default case
and     eax, 0FFh
jmp     jpt_48F82D[eax*4] ; switch jump

loc_48F834:             ; jumptable 0048F82D case 0
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      def_48F82D      ; jumptable 0048F82D default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
and     ds:byte_5F8364, 0FCh
mov     eax, 240011h
call    sub_4D8E42

loc_48F869:
inc     byte ptr [edx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_48F870:             ; jumptable 0048F82D case 1
call    sub_4D8ECC
test    eax, eax
jz      def_48F82D      ; jumptable 0048F82D default case
inc     byte ptr [edx+4]
mov     dword ptr [edx+0Ch], 19h
pop     edx
pop     ecx
pop     ebx
retn

loc_48F88B:             ; jumptable 0048F82D case 2
mov     ecx, [edx+0Ch]
dec     ecx
mov     [edx+0Ch], ecx
jnz     def_48F82D      ; jumptable 0048F82D default case
mov     eax, 2
call    sub_49E0D7
jmp     short loc_48F869

loc_48F8A4:             ; jumptable 0048F82D case 3
mov     eax, edx
call    sub_48F7A3
inc     byte ptr [edx+4]

loc_48F8AE:             ; jumptable 0048F82D case 4
cmp     ds:word_6E23D6, 0
jnz     short loc_48F8D9 ; jumptable 0048F82D case 5
mov     eax, [edx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_48F8CC
call    sub_47EBCB
test    eax, eax
jz      short loc_48F8D9 ; jumptable 0048F82D case 5

loc_48F8CC:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]

loc_48F8D9:             ; jumptable 0048F82D case 5
mov     eax, edx
call    sub_48F7E7
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 5
jnz     short def_48F82D ; jumptable 0048F82D default case
cmp     ds:word_6E23D6, 0
jnz     short def_48F82D ; jumptable 0048F82D default case
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 0Dh
xor     bh, bh
mov     ds:byte_77EA5F, bh
mov     word ptr ds:dword_77EA4E+2, 708h
mov     word ptr ds:dword_77EA52, 0FF7Fh
mov     word ptr ds:dword_77EA52+2, 50h ; 'P'
mov     word ptr ds:dword_77EA5A, 800h
xor     al, al
mov     byte ptr ds:dword_77EA5A+3, al
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
mov     [edx], al
call    sub_4D8EB1
or      byte ptr [ecx], 1
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, 54h ; 'T'
call    sub_47E8B8

def_48F82D:             ; jumptable 0048F82D default case
pop     edx
pop     ecx
pop     ebx
retn
sub_48F813 endp




sub_48F96B proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48F971[edx*4]
pop     edx
retn
sub_48F96B endp

db 90h
jpt_48F9A3 dd offset loc_48F9AA ; jump table for switch statement
dd offset loc_48F9C8
dd offset loc_48FA47
dd offset loc_48FA58
dd offset loc_48FA6E



sub_48F98F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_48F9A3      ; jumptable 0048F9A3 default case
xor     edx, edx
mov     dl, al
jmp     jpt_48F9A3[edx*4] ; switch jump

loc_48F9AA:             ; jumptable 0048F9A3 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_48F9A3      ; jumptable 0048F9A3 default case
mov     eax, 10h
call    sub_4D9040
jmp     short loc_48FA42

loc_48F9C8:             ; jumptable 0048F9A3 case 1
cmp     ds:byte_77EAB8, 0
jnz     def_48F9A3      ; jumptable 0048F9A3 default case
and     ds:byte_5F8364, 0FCh
mov     edx, 5
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     edx, 80h
mov     eax, 28h ; '('
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Ah], 2
mov     ds:dword_77E6B4, offset unk_524DC8
mov     dword ptr [ecx+0A4h], offset unk_524F20
mov     eax, offset unk_524DA0
call    sub_49DB4D
mov     eax, offset unk_524DB4
call    sub_49DB4D

loc_48FA38:
call    sub_49DBD1
call    sub_49DECF

loc_48FA42:
inc     byte ptr [ecx+5]
jmp     short def_48F9A3 ; jumptable 0048F9A3 default case

loc_48FA47:             ; jumptable 0048F9A3 case 2
cmp     ds:word_6E23D6, 0
jnz     short loc_48FAA5
inc     al
mov     [ecx+5], al
jmp     short loc_48FAA5

loc_48FA58:             ; jumptable 0048F9A3 case 3
mov     eax, 25000Ch
call    sub_4D8E42
mov     eax, 1
call    sub_49E0D7
jmp     short loc_48FA38

loc_48FA6E:             ; jumptable 0048F9A3 case 4
call    sub_4D8ECC
test    eax, eax
jz      short loc_48FAA5
cmp     ds:word_6E23D6, 0
jnz     short loc_48FAA5
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_524E18
mov     dword ptr [ecx+0A4h], offset unk_524F30
and     byte ptr [ecx+0Ah], 3
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

loc_48FAA5:
call    sub_49DBD1
call    sub_49DECF

def_48F9A3:             ; jumptable 0048F9A3 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_48FABC
or      byte ptr [ecx+0Ah], 1

loc_48FABC:
pop     edx
pop     ecx
pop     ebx
retn
sub_48F98F endp




sub_48FAC0 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jnz     short loc_48FAD1
mov     eax, 0Ah
jmp     short loc_48FB0B

loc_48FAD1:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
cmp     byte ptr [edx+0Ah], 3
jnz     short loc_48FAF0
mov     eax, [edx+28h]
mov     byte ptr [eax+8], 2
mov     eax, 8
jmp     short loc_48FB0B

loc_48FAF0:
call    sub_47EBCB
test    eax, eax
jz      short loc_48FB17
test    byte ptr [edx+0Ah], 2
jz      short loc_48FB06
mov     eax, [edx+28h]
mov     byte ptr [eax+8], 2

loc_48FB06:
mov     eax, 8

loc_48FB0B:
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_48FB17:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_48FAC0 endp




sub_48FB24 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     ds:word_6E23D6, 0
jnz     loc_48FBBC
mov     al, [eax+5]
cmp     al, 1
jb      short loc_48FB48
jbe     short loc_48FB59
cmp     al, 2
jz      short loc_48FB82
jmp     loc_48FBBC

loc_48FB48:
test    al, al
jnz     short loc_48FBBC
mov     eax, [ecx+24h]
call    sub_4DE336

loc_48FB54:
inc     byte ptr [ecx+5]
jmp     short loc_48FBBC

loc_48FB59:
call    sub_4D8EB1
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 3
jmp     short loc_48FB54

loc_48FB82:
mov     edx, 0Ah
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, 529h
call    sub_47E8B8
mov     eax, 0Eh
call    sub_47EEAE
mov     eax, 20h ; ' '
call    sub_4D9040
mov     byte ptr [ecx], 0
mov     eax, 2
call    sub_49E0D7

loc_48FBBC:
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_48FBCC
call    sub_49DBD1
call    sub_49DECF

loc_48FBCC:
pop     edx
pop     ecx
retn
sub_48FB24 endp




sub_48FBCF proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 39h ; '9'
jb      short loc_48FC13
jbe     loc_48FC57
cmp     edx, 55h ; 'U'
jb      short loc_48FC01
jbe     loc_48FC57
cmp     edx, 8Dh
jb      loc_48FC67
jbe     short loc_48FC41
cmp     edx, 0CDh
jz      short loc_48FC4A
pop     edx
retn

loc_48FC01:
cmp     edx, 43h ; 'C'
jb      loc_48FC67
jbe     short loc_48FC38
cmp     edx, 48h ; 'H'

loc_48FC0F:
jz      short loc_48FC57
pop     edx
retn

loc_48FC13:
cmp     edx, 9
jb      short loc_48FC26
jbe     short loc_48FC57
cmp     edx, 19h
jb      short loc_48FC67
jbe     short loc_48FC57
cmp     edx, 29h ; ')'
jmp     short loc_48FC0F

loc_48FC26:
cmp     edx, 5
jnz     short loc_48FC67
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 1

loc_48FC32:
mov     byte ptr [eax+0Ah], 0
pop     edx
retn

loc_48FC38:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 2
jmp     short loc_48FC32

loc_48FC41:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 3
jmp     short loc_48FC32

loc_48FC4A:
and     byte ptr [eax+0Ah], 1
mov     eax, [eax+28h]
mov     byte ptr [eax+8], 2
pop     edx
retn

loc_48FC57:
mov     edx, [eax+24h]
add     edx, 14h
mov     eax, 90h
call    sub_4D8BC3

loc_48FC67:
pop     edx

locret_48FC68:
retn
sub_48FBCF endp




sub_48FC69 proc near
cmp     dword ptr [eax+10h], 1Eh
jnz     short locret_48FC7A
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

locret_48FC7A:
retn
sub_48FC69 endp




sub_48FC7B proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48FC81[edx*4]
pop     edx
retn
sub_48FC7B endp

db 90h
jpt_48FCB0 dd offset loc_48FCB7 ; jump table for switch statement
dd offset loc_48FCEE
dd offset loc_48FD1C
dd offset loc_48FD59



sub_48FC9B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_48FCB0      ; jumptable 0048FCB0 default case
and     eax, 0FFh
jmp     jpt_48FCB0[eax*4] ; switch jump

loc_48FCB7:             ; jumptable 0048FCB0 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_48FCB0      ; jumptable 0048FCB0 default case
mov     byte ptr ds:dword_5F836C, 3
xor     al, al
mov     byte ptr ds:dword_5F836C+1, al
and     ds:byte_5F8364, 0FDh
inc     byte ptr [ecx+5]
mov     ds:word_55A5B4, 190h
pop     edx
pop     ecx
pop     ebx
retn

loc_48FCEE:             ; jumptable 0048FCB0 case 1
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, offset unk_524F60
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
mov     eax, 250008h
call    sub_4D8E42
inc     byte ptr [ecx+5]
pop     edx
pop     ecx
pop     ebx
retn

loc_48FD1C:             ; jumptable 0048FCB0 case 2
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
mov     ds:dword_77E6B4, offset unk_52502C
mov     dword ptr [ecx+0A4h], offset unk_525078
mov     eax, 2
call    sub_49E0D7
call    sub_49DBD1
call    sub_49DECF
inc     byte ptr [ecx+5]

loc_48FD59:             ; jumptable 0048FCB0 case 3
call    sub_49DBD1
call    sub_49DECF
cmp     ds:word_6E23D6, 0
jnz     short def_48FCB0 ; jumptable 0048FCB0 default case
mov     ds:dword_77E6B4, offset unk_524F74
mov     dword ptr [ecx+0A4h], offset unk_524FFC
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

def_48FCB0:             ; jumptable 0048FCB0 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_48FC9B endp




sub_48FD94 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_48FDD2
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jz      short loc_48FDDA
mov     bh, [edx+0Ah]
test    bh, 80h
jnz     short loc_48FDDA
mov     cl, bh
or      cl, 1
mov     [edx+0Ah], cl
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]
jmp     short loc_48FDD6

loc_48FDD2:
add     byte ptr [edx+4], 2

loc_48FDD6:
mov     byte ptr [edx+5], 0

loc_48FDDA:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_48FD94 endp




sub_48FDE8 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_48FDFD
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]

loc_48FDFD:
cmp     ds:word_6E23D6, 0
jnz     short loc_48FE0A
inc     byte ptr [edx+4]

loc_48FE0A:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_48FDE8 endp




sub_48FE17 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_48FE2F
jbe     short loc_48FE41
cmp     al, 2
jz      short loc_48FE92
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_48FE2F:
test    al, al
jnz     loc_48FEFD
inc     al
mov     [ecx+5], al
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_48FE41:
cmp     ds:word_6E23D6, 0
jnz     loc_48FEFD
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
test    byte ptr [ecx+0Ah], 1
jz      short loc_48FE69
call    sub_4E1D8A

loc_48FE69:
call    sub_49DF64
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     bh, 1
mov     byte ptr ds:dword_77E954, bh
call    sub_42A66D
call    sub_4D8EB1
add     [ecx+5], bh
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_48FE92:
mov     byte ptr ds:dword_77EA5A+2, al
mov     ds:byte_77EA5E, 0Dh
xor     dh, dh
mov     ds:byte_77EA5F, dh
mov     word ptr ds:dword_77EA4E+2, 708h
mov     word ptr ds:dword_77EA52, 0FF7Fh
mov     word ptr ds:dword_77EA52+2, 0FFD8h
xor     edi, edi
mov     word ptr ds:dword_77EA5A, di
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, al
or      ds:byte_5F8364, 3
mov     ds:byte_5F83DA, bl
mov     ds:byte_77E807, bl
mov     eax, 1Fh
call    sub_47EA91
mov     [ecx], bl

loc_48FEFD:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_48FE17 endp



; Attributes: thunk

sub_48FF02 proc near
jmp     sub_49DF64
sub_48FF02 endp




sub_48FF07 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     edi, [eax+24h]
mov     dl, [eax+6]
test    dl, dl
jbe     short loc_48FF20
cmp     dl, 1
jz      short loc_48FF49
jmp     short def_48FFCC ; jumptable 0048FFCC default case

loc_48FF20:
mov     cx, ds:word_55A5B4
cmp     cx, 0C8h
jle     short loc_48FF3C
mov     esi, ecx
sub     esi, 8
mov     ds:word_55A5B4, si
jmp     short def_48FFCC ; jumptable 0048FFCC default case

loc_48FF3C:
cmp     dword ptr [eax+10h], 74h ; 't'
jl      short def_48FFCC ; jumptable 0048FFCC default case
inc     dl
mov     [eax+6], dl
jmp     short def_48FFCC ; jumptable 0048FFCC default case

loc_48FF49:
mov     dx, ds:word_55A5B4
cmp     dx, 3C0h
jge     short def_48FFCC ; jumptable 0048FFCC default case
mov     ebx, edx
add     ebx, 10h
mov     ds:word_55A5B4, bx

def_48FFCC:             ; jumptable 0048FFCC default case
mov     edx, dword ptr ds:unk_55A5B2
sar     edx, 10h
mov     eax, [edi+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     esi, esp
call    sub_4DD510
lea     edx, [esp+2Ch+var_1C]
mov     eax, esp
call    sub_4DD57B
mov     eax, [esp+2Ch+var_1C]
add     [edi+14h], ax
mov     eax, [esp+2Ch+var_18]
add     [edi+18h], ax
add     esp, 18h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48FF07 endp

db 8Bh, 0C0h
jpt_48FFCC dd offset loc_48FFDD ; jump table for switch statement
dd offset loc_48FFDD
dd offset loc_48FFD3
dd offset loc_48FFE2



sub_48FFB3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     edx, eax
mov     edi, [eax+24h]
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      short def_48FFCC ; jumptable 0048FFCC default case
and     eax, 0FFh
jmp     jpt_48FFCC[eax*4] ; switch jump

loc_48FFD3:             ; jumptable 0048FFCC case 2
mov     eax, 0Ah
call    sub_49E0D7

loc_48FFDD:             ; jumptable 0048FFCC cases 0,1
inc     byte ptr [edx+6]
jmp     short def_48FFCC ; jumptable 0048FFCC default case

loc_48FFE2:             ; jumptable 0048FFCC case 3
cmp     ds:word_6E23D6, 0
jnz     def_48FFCC      ; jumptable 0048FFCC default case
call    sub_49DF64
jmp     def_48FFCC      ; jumptable 0048FFCC default case
sub_48FFB3 endp




sub_48FFFA proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_490000[edx*4]
pop     edx
retn
sub_48FFFA endp

align 2
jpt_490033 dd offset loc_49003A ; jump table for switch statement
dd offset loc_490062
dd offset loc_4900E2
dd offset loc_4900FB
dd offset loc_490106



sub_49001E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_490033      ; jumptable 00490033 default case
and     eax, 0FFh
jmp     jpt_490033[eax*4] ; switch jump

loc_49003A:             ; jumptable 00490033 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_490033      ; jumptable 00490033 default case
mov     byte ptr [ecx+0Ah], 80h
mov     eax, 10h
call    sub_4D9040

loc_49005A:
inc     byte ptr [ecx+5]
jmp     def_490033      ; jumptable 00490033 default case

loc_490062:             ; jumptable 00490033 case 1
cmp     ds:byte_77EAB8, 0
jnz     def_490033      ; jumptable 00490033 default case
and     ds:byte_5F8364, 0FCh
mov     edx, 80h
mov     eax, 10h
call    sub_4DC979
mov     edx, 5
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     edx, 80h
mov     eax, 28h ; '('
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
mov     ds:dword_77E6B4, offset unk_5250A8
mov     dword ptr [ecx+0A4h], offset unk_525228
mov     eax, offset unk_525094
call    sub_49DB4D
call    sub_49DBD1
call    sub_49DECF
jmp     loc_49005A

loc_4900E2:             ; jumptable 00490033 case 2
cmp     ds:word_6E23D6, 0
jnz     short loc_490134
mov     eax, 24001Bh
call    sub_4D8E42

loc_4900F6:
inc     byte ptr [ecx+5]
jmp     short loc_490134

loc_4900FB:             ; jumptable 00490033 case 3
call    sub_4D8ECC
test    eax, eax
jz      short loc_490134
jmp     short loc_4900F6

loc_490106:             ; jumptable 00490033 case 4
cmp     ds:word_6E23D6, 0
jnz     short loc_490134
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_5250F8
mov     dword ptr [ecx+0A4h], offset unk_525238
and     byte ptr [ecx+0Ah], 1
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

loc_490134:
call    sub_49DBD1
call    sub_49DECF

def_490033:             ; jumptable 00490033 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_49014B
or      byte ptr [ecx+0Ah], 1

loc_49014B:
pop     edx
pop     ecx
pop     ebx
retn
sub_49001E endp




sub_49014F proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_490173
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jnz     short loc_490173
cmp     byte ptr [edx+0Ah], 1
jnz     short loc_49017A

loc_490173:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_49017A:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_49014F endp




sub_490187 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
call    sub_4D8EB1
mov     edx, 0Ah
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, [ecx+24h]
call    sub_4DE336
call    sub_490252
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 3
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000028h
call    sub_4D89E4
mov     byte ptr [ecx], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_490187 endp




sub_4901E4 proc near
push    edx
mov     edx, eax
mov     eax, [eax+24h]
mov     edx, [edx+10h]
cmp     edx, 14Fh
jb      short loc_490201
jbe     short loc_490217
cmp     edx, 163h
jz      short loc_49021F
pop     edx
retn

loc_490201:
cmp     edx, 0EBh
jnz     short loc_490227
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
pop     edx
retn

loc_490217:
inc     byte ptr [eax+0Dh]
inc     byte ptr [eax+0Eh]
pop     edx
retn

