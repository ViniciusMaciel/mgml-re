loc_4999CB:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [ecx+4]

loc_4999D8:             ; jumptable 00499900 case 5
mov     eax, ecx
call    sub_4998BC
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 5
jnz     short def_499900 ; jumptable 00499900 default case
cmp     ds:word_6E23D6, 0
jnz     short def_499900 ; jumptable 00499900 default case
call    sub_4D8EB1
mov     bh, 1
mov     byte ptr ds:dword_77E954, bh
call    sub_42A66D
or      ds:byte_5F8364, 2
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     ax, word ptr ds:dword_5F8412+2
mov     ds:word_5F83D2, ax
call    sub_4369B9
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
add     [ecx+4], bh
pop     edx
pop     ecx
pop     ebx
retn

loc_499A43:             ; jumptable 00499900 case 6
mov     byte ptr [ecx], 0

def_499900:             ; jumptable 00499900 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4998EB endp




sub_499A4A proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499A60
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 6
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1

loc_499A60:
cmp     dword ptr [eax+10h], 64h ; 'd'
jnz     short loc_499A6D
mov     edx, [eax+30h]
mov     byte ptr [edx+0Dh], 0

loc_499A6D:
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_499A7A
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 1

loc_499A7A:
cmp     dword ptr [eax+10h], 5Ah ; 'Z'
jnz     short loc_499A87
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 0

loc_499A87:
cmp     dword ptr [eax+10h], 69h ; 'i'
jnz     short loc_499A98
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+0Eh], 1

loc_499A98:
cmp     dword ptr [eax+10h], 0A3h
jnz     short loc_499AA8
mov     eax, [eax+30h]
mov     byte ptr [eax+0Ch], 0

loc_499AA8:
pop     edx
retn
sub_499A4A endp




sub_499AAA proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499ADA
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 6
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1
mov     edx, [eax+34h]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1

loc_499ADA:
cmp     dword ptr [eax+10h], 20h ; ' '
jnz     short loc_499AE7
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Dh], 0

loc_499AE7:
cmp     dword ptr [eax+10h], 34h ; '4'
jnz     short loc_499AF4
mov     edx, [eax+34h]
mov     byte ptr [edx+0Dh], 0

loc_499AF4:
cmp     dword ptr [eax+10h], 6Eh ; 'n'
jnz     short loc_499B05
mov     edx, [eax+38h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_499B05:
cmp     dword ptr [eax+10h], 0AFh
jnz     short loc_499B18
mov     eax, 0Ah
call    sub_49E0D7

loc_499B18:
pop     edx
retn
sub_499AAA endp




sub_499B1A proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_499B69
mov     eax, 2
call    sub_49E0D7
mov     eax, [edx+28h]
call    sub_4DE336
mov     eax, [edx+2Ch]
call    sub_4DE336
mov     eax, [edx+34h]
call    sub_4DE2F6
mov     eax, [edx+38h]
call    sub_4DE2F6
mov     eax, [edx+30h]
mov     word ptr [eax+56h], 65Eh
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_499B69:
cmp     dword ptr [edx+10h], 4Bh ; 'K'
jnz     short loc_499B75
mov     eax, [edx+24h]
inc     byte ptr [eax+0Ah]

loc_499B75:
pop     edx
retn
sub_499B1A endp




sub_499B77 proc near
push    edx
cmp     dword ptr [eax+10h], 0
cmp     dword ptr [eax+10h], 5
jnz     short loc_499B8D
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+0Eh], 0

loc_499B8D:
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_499B9A
mov     eax, [eax+30h]
mov     byte ptr [eax+0Ch], 0

loc_499B9A:
pop     edx
retn
sub_499B77 endp




sub_499B9C proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_499BA8
mov     eax, [eax+24h]
inc     byte ptr [eax+0Ah]

locret_499BA8:
retn
sub_499B9C endp




sub_499BA9 proc near
push    ebx
push    edx
call    sub_47ECAE
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     edx, offset unk_52B98C
mov     eax, offset unk_52BAEC
call    sub_49DFEF
xor     edx, edx

loc_499BCC:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_52BA74
call    sub_49DB4D
inc     edx
cmp     edx, 6
jl      short loc_499BCC
mov     dx, ds:word_77E79C
cmp     dx, 0FFFFh
jz      short loc_499BFD
mov     ebx, edx
inc     ebx
mov     ds:word_77E79C, bx

loc_499BFD:
mov     eax, ds:dword_77E790
mov     ds:dword_77E798, eax
cmp     eax, 4F1A0h
jb      short loc_499C17
cmp     byte ptr ds:dword_77E7DC+3, 2
jnz     short loc_499C20

loc_499C17:
mov     ds:word_77E79E, 1

loc_499C20:
pop     edx
pop     ebx
retn
sub_499BA9 endp




sub_499C23 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_499C33
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_499C33:
pop     edx
retn
sub_499C23 endp

align 2
jpt_499C68 dd offset loc_499C6F ; jump table for switch statement
dd offset loc_499C81
dd offset loc_499CB5
dd offset loc_499CCB
dd offset loc_499CDF
dd offset loc_499CE9
dd offset loc_499D0B



sub_499C52 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 6           ; switch 7 cases
ja      def_499C68      ; jumptable 00499C68 default case
and     eax, 0FFh
jmp     jpt_499C68[eax*4] ; switch jump

loc_499C6F:             ; jumptable 00499C68 case 0
mov     eax, 0Ah

loc_499C74:
call    sub_49E0D7

loc_499C79:
inc     byte ptr [ecx+4]
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_499C81:             ; jumptable 00499C68 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_499C68      ; jumptable 00499C68 default case
and     ds:byte_5F8364, 0FCh
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, 240020h
call    sub_4D8E42
jmp     short loc_499C79

loc_499CB5:             ; jumptable 00499C68 case 2
call    sub_4D8ECC
test    eax, eax
jz      def_499C68      ; jumptable 00499C68 default case
mov     dword ptr [ecx+0Ch], 14h
jmp     short loc_499C79

loc_499CCB:             ; jumptable 00499C68 case 3
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     def_499C68      ; jumptable 00499C68 default case
mov     eax, 2
jmp     short loc_499C74

loc_499CDF:             ; jumptable 00499C68 case 4
mov     eax, ecx
call    sub_499BA9
inc     byte ptr [ecx+4]

loc_499CE9:             ; jumptable 00499C68 case 5
cmp     ds:word_6E23D6, 0
jnz     short loc_499D0B ; jumptable 00499C68 case 6
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jnz     short loc_499D0B ; jumptable 00499C68 case 6
mov     eax, 0Bh
call    sub_49E0D7
inc     byte ptr [ecx+4]

loc_499D0B:             ; jumptable 00499C68 case 6
mov     eax, ecx
call    sub_499C23
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 6
jnz     short def_499C68 ; jumptable 00499C68 default case
cmp     ds:word_6E23D6, 0
jnz     short def_499C68 ; jumptable 00499C68 default case
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 1Eh
xor     ah, ah
mov     ds:byte_77EA5F, ah
xor     esi, esi
mov     word ptr ds:dword_77EA4E+2, si
xor     edi, edi
mov     word ptr ds:dword_77EA52, di
xor     al, al
mov     word ptr ds:dword_77EA52+2, ax
xor     edx, edx
mov     word ptr ds:dword_77EA5A, dx
mov     byte ptr ds:dword_77EA5A+3, ah
mov     dh, 0FFh
mov     ds:byte_77EA61, dh
mov     ds:byte_77EA60, dh
mov     [ecx], ah
call    sub_4D8EB1
or      ds:byte_5F8364, 1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_499C68:             ; jumptable 00499C68 default case
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_499C52 endp




sub_499D96 proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 1Eh
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_499D96 endp




sub_499DE2 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_499E1E
mov     eax, 3
call    sub_499D96
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     [eax+1Ch], ecx
mov     [eax+20h], ecx
mov     dword ptr [eax+24h], 6500000h
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh

loc_499E1E:
pop     edx
pop     ecx
retn
sub_499DE2 endp




sub_499E21 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_499E5E
mov     eax, 1
call    sub_499D96
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_499E5E:
cmp     dword ptr [edx+10h], 0BAh
jnz     short loc_499E6D
mov     eax, [edx+2Ch]
inc     byte ptr [eax+0Ah]

loc_499E6D:
pop     edx
retn
sub_499E21 endp




sub_499E6F proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499E8C
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_499E8C:
pop     edx
retn
sub_499E6F endp




sub_499E8E proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499EAB
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0

loc_499EAB:
pop     edx
retn
sub_499E8E endp




sub_499EAD proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_499EC2
mov     eax, [eax+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
inc     byte ptr [eax+0Ah]

loc_499EC2:
pop     edx
retn
sub_499EAD endp




sub_499EC4 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499EE4
mov     edx, [eax+2Ch]
or      byte ptr [edx], 2
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_499EE4:
cmp     dword ptr [eax+10h], 8Ch
jnz     short loc_499EF3
mov     eax, [eax+2Ch]
inc     byte ptr [eax+0Ah]

loc_499EF3:
pop     edx
retn
sub_499EC4 endp




sub_499EF5 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_499F0A
mov     eax, [eax+28h]
inc     byte ptr [eax+0Ah]
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh

loc_499F0A:
pop     edx
retn
sub_499EF5 endp




sub_499F0C proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_499F39
mov     eax, [eax+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_499F39:
cmp     dword ptr [edx+10h], 0BEh
jnz     short loc_499F48
mov     eax, [edx+28h]
inc     byte ptr [eax+0Ah]

loc_499F48:
pop     edx
retn
sub_499F0C endp




sub_499F4A proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_499F6F
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FF8D0000h
mov     dword ptr [eax+24h], 0FEE50000h
mov     word ptr [eax+56h], 0CE4h

locret_499F6F:
retn
sub_499F4A endp




sub_499F70 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499F8D
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_499F8D:
cmp     dword ptr [eax+10h], 23h ; '#'
jnz     short loc_499F99
mov     eax, [eax+28h]
inc     byte ptr [eax+0Ah]

loc_499F99:
pop     edx
retn
sub_499F70 endp




sub_499F9B proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499FB8
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_499FB8:
pop     edx
retn
sub_499F9B endp




sub_499FBA proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A02C
mov     eax, 2
call    sub_499D96
mov     eax, [ecx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0EC780000h
mov     dword ptr [eax+20h], 0F98E0000h
mov     dword ptr [eax+24h], 0
mov     word ptr [eax+56h], 0
mov     eax, [ecx+30h]
and     byte ptr [eax], 0FDh
mov     eax, [ecx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [ecx+2Ch]
and     byte ptr [eax], 0FDh
xor     edx, edx
jmp     short loc_49A013

loc_49A00D:
inc     edx
cmp     edx, 0Bh
jge     short loc_49A02C

loc_49A013:
call    sub_4DE227
test    eax, eax
jz      short loc_49A00D
mov     byte ptr [eax], 1
mov     [eax+3], dl
mov     byte ptr [eax+2], 2Ah ; '*'
or      byte ptr [eax+6], 20h
jmp     short loc_49A00D

loc_49A02C:
cmp     dword ptr [ecx+10h], 0BDh
jnz     short loc_49A04F
mov     eax, [ecx+24h]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     edx, 80h
mov     eax, 100h
call    sub_4DC979

loc_49A04F:
pop     edx
pop     ecx
retn
sub_499FBA endp




sub_49A052 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A07D
mov     edx, [eax+34h]
or      byte ptr [edx], 2
mov     edx, [eax+38h]
or      byte ptr [edx], 2
mov     edx, [eax+3Ch]
or      byte ptr [edx], 2
mov     edx, [eax+40h]
or      byte ptr [edx], 2
mov     edx, [eax+48h]
or      byte ptr [edx], 2
mov     eax, [eax+4Ch]
or      byte ptr [eax], 2

loc_49A07D:
pop     edx
retn
sub_49A052 endp




sub_49A07F proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A0A1
mov     eax, [eax+50h]
or      byte ptr [eax], 2
mov     eax, [edx+44h]
or      byte ptr [eax], 2
mov     word ptr [eax+56h], 800h
mov     dword ptr [eax+1Ch], 0F4480000h

loc_49A0A1:
cmp     dword ptr [edx+10h], 0D2h
jnz     short loc_49A0C0
mov     eax, [edx+50h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+44h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_49A0C0:
pop     edx
retn
sub_49A07F endp




sub_49A0C2 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A101
mov     eax, [eax+44h]
mov     word ptr [eax+56h], 4B0h
mov     dword ptr [eax+1Ch], 0F1DC0000h
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FC180000h
mov     dword ptr [eax+20h], 0E8900000h
mov     dword ptr [eax+24h], 0D5080000h
mov     word ptr [eax+56h], 0F0Ah

loc_49A101:
cmp     dword ptr [edx+10h], 59h ; 'Y'
jnz     short loc_49A112
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0

loc_49A112:
pop     edx
retn
sub_49A0C2 endp




sub_49A114 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A195
mov     eax, 1
call    sub_499D96
mov     eax, [edx+34h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+38h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+3Ch]
and     byte ptr [eax], 0FDh
mov     eax, [edx+40h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+48h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+4Ch]
and     byte ptr [eax], 0FDh
mov     eax, [edx+44h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+50h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FFA10000h
mov     dword ptr [eax+20h], 0FFA40000h
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_49A195:
cmp     dword ptr [edx+10h], 78h ; 'x'
jnz     short loc_49A1A2
mov     eax, [edx+28h]
mov     byte ptr [eax+0Ah], 3

loc_49A1A2:
pop     edx
retn
sub_49A114 endp




sub_49A1A4 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A1C1
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 4
mov     byte ptr [edx+0Ah], 0
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_49A1C1:
pop     edx
retn
sub_49A1A4 endp




sub_49A1C3 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49A1E2
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FFB90000h
mov     dword ptr [eax+20h], 0FF9F0000h

locret_49A1E2:
retn
sub_49A1C3 endp




sub_49A1E3 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A208
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1

loc_49A208:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_49A21C
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Dh], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+0Dh], 0

loc_49A21C:
cmp     dword ptr [eax+10h], 55h ; 'U'
jnz     short loc_49A230
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Dh], 1
mov     edx, [eax+30h]
mov     byte ptr [edx+0Dh], 1

loc_49A230:
cmp     dword ptr [eax+10h], 67h ; 'g'
jnz     short loc_49A23D
mov     edx, [eax+30h]
mov     byte ptr [edx+0Dh], 0

loc_49A23D:
cmp     dword ptr [eax+10h], 69h ; 'i'
jnz     short loc_49A24A
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Dh], 0

loc_49A24A:
cmp     dword ptr [eax+10h], 71h ; 'q'
jnz     short loc_49A25B
mov     eax, [eax+30h]
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+9], 4

loc_49A25B:
pop     edx
retn
sub_49A1E3 endp




sub_49A25D proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A2C9
mov     eax, 5
call    sub_499D96
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+30h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+15Ch], 20h ; ' '
mov     dx, [eax+15Ch]
mov     [eax+15Ah], dx
mov     [eax+158h], dx
mov     dword ptr [eax+1Ch], 0FED40000h
mov     dword ptr [eax+20h], 0FE700000h
mov     dword ptr [eax+24h], 0
mov     word ptr [eax+56h], 0DACh

loc_49A2C9:
pop     edx
retn
sub_49A25D endp




sub_49A2CB proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_49A320
mov     eax, 3
call    sub_499D96
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+15Ch], 200h
mov     dx, [eax+15Ch]
mov     [eax+15Ah], dx
mov     [eax+158h], dx
mov     [eax+1Ch], ecx
mov     dword ptr [eax+20h], 0FEA20000h
mov     dword ptr [eax+24h], 0FA00000h
mov     word ptr [eax+56h], 0

loc_49A320:
pop     edx
pop     ecx
retn
sub_49A2CB endp

db 8Dh, 40h, 0
jpt_49A35A dd offset loc_49A40A ; jump table for switch statement
dd offset loc_49A361
dd offset loc_49A38B
dd offset loc_49A3AD
dd offset def_49A35A
dd offset loc_49A3D9
dd offset loc_49A3F1
dd offset loc_49A41A

loc_49A346:
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
cmp     al, 7           ; switch 8 cases
ja      def_49A35A      ; jumptable 0049A35A default case, case 4
and     eax, 0FFh
jmp     jpt_49A35A[eax*4] ; switch jump

loc_49A361:             ; jumptable 0049A35A case 1
cmp     ds:word_6E23D6, 0
jnz     def_49A35A      ; jumptable 0049A35A default case, case 4
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
and     ds:byte_56F80C, 0FCh
mov     eax, 0A7h
call    sub_42BEB2
jmp     loc_49A414

loc_49A38B:             ; jumptable 0049A35A case 2
call    sub_42C353
test    eax, eax
jnz     def_49A35A      ; jumptable 0049A35A default case, case 4
mov     eax, 250000h
call    sub_4D8E42
mov     ds:word_77EA80, 64h ; 'd'
jmp     short loc_49A414

loc_49A3AD:             ; jumptable 0049A35A case 3
call    sub_4D8ECC
test    eax, eax
jz      def_49A35A      ; jumptable 0049A35A default case, case 4
call    sub_4DE13B
test    eax, eax
jz      short loc_49A3D2
mov     byte ptr [eax], 1
or      byte ptr [eax+6], 20h
mov     byte ptr [eax+2], 22h ; '"'
mov     byte ptr [eax+3], 0

loc_49A3D2:
mov     eax, 2
jmp     short loc_49A40F

loc_49A3D9:             ; jumptable 0049A35A case 5
mov     ch, 1
mov     ds:byte_77EAB9, ch
mov     eax, 40h ; '@'
call    sub_4D9040
add     [edx+5], ch
pop     edx
pop     ecx
retn

loc_49A3F1:             ; jumptable 0049A35A case 6
cmp     ds:byte_77EAB8, 0
jnz     short def_49A35A ; jumptable 0049A35A default case, case 4
mov     ds:byte_77EAB9, 4
mov     ds:word_77EA80, 7Fh

loc_49A40A:             ; jumptable 0049A35A case 0
mov     eax, 0Bh

loc_49A40F:
call    sub_49E0D7

loc_49A414:
inc     byte ptr [edx+5]
pop     edx
pop     ecx
retn

loc_49A41A:             ; jumptable 0049A35A case 7
cmp     ds:word_6E23D6, 0
jnz     short def_49A35A ; jumptable 0049A35A default case, case 4
inc     byte ptr [edx+4]

def_49A35A:             ; jumptable 0049A35A default case, case 4
pop     edx
pop     ecx
retn



sub_49A42A proc near
push    ebx
push    edx
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     edx, offset unk_52BB1C
mov     eax, offset unk_52C03C
call    sub_49DFEF
xor     edx, edx

loc_49A448:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_52BF4C
call    sub_49DB4D
inc     edx
cmp     edx, 0Ch
jl      short loc_49A448
call    sub_4DE1BE
test    eax, eax
jz      short loc_49A47A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+0Fh], 0
or      byte ptr [eax+6], 20h

loc_49A47A:
pop     edx
pop     ebx
retn
sub_49A42A endp




sub_49A47D proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49A48D
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49A48D:
pop     edx
retn
sub_49A47D endp

db 8Dh, 40h, 0
jpt_49A4C1 dd offset loc_49A4C8 ; jump table for switch statement
dd offset loc_49A4F3
dd offset loc_49A509
dd offset loc_49A522
dd offset loc_49A52C
dd offset loc_49A54E



sub_49A4AA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_49A4C1      ; jumptable 0049A4C1 default case
and     eax, 0FFh
jmp     jpt_49A4C1[eax*4] ; switch jump

loc_49A4C8:             ; jumptable 0049A4C1 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49A4C1      ; jumptable 0049A4C1 default case
and     ds:byte_5F8364, 0FCh
mov     eax, 24001Dh
call    sub_4D8E42

loc_49A4EB:
inc     byte ptr [edx+4]
jmp     def_49A4C1      ; jumptable 0049A4C1 default case

loc_49A4F3:             ; jumptable 0049A4C1 case 1
call    sub_4D8ECC
test    eax, eax
jz      def_49A4C1      ; jumptable 0049A4C1 default case
mov     dword ptr [edx+0Ch], 1Eh
jmp     short loc_49A4EB

loc_49A509:             ; jumptable 0049A4C1 case 2
mov     ecx, [edx+0Ch]
dec     ecx
mov     [edx+0Ch], ecx
jnz     def_49A4C1      ; jumptable 0049A4C1 default case
mov     eax, 2
call    sub_49E0D7
jmp     short loc_49A4EB

loc_49A522:             ; jumptable 0049A4C1 case 3
mov     eax, edx
call    sub_49A42A
inc     byte ptr [edx+4]

loc_49A52C:             ; jumptable 0049A4C1 case 4
cmp     ds:word_6E23D6, 0
jnz     short loc_49A54E ; jumptable 0049A4C1 case 5
mov     eax, [edx+0A4h]
cmp     byte ptr [eax], 0FFh
jnz     short loc_49A54E ; jumptable 0049A4C1 case 5
mov     eax, 0Bh
call    sub_49E0D7
inc     byte ptr [edx+4]

loc_49A54E:             ; jumptable 0049A4C1 case 5
mov     eax, edx
call    sub_49A47D
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 5
jnz     short def_49A4C1 ; jumptable 0049A4C1 default case
cmp     ds:word_6E23D6, 0
jnz     short def_49A4C1 ; jumptable 0049A4C1 default case
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 15h
xor     ah, ah
mov     ds:byte_77EA5F, ah
xor     esi, esi
mov     word ptr ds:dword_77EA4E+2, si
xor     edi, edi
mov     word ptr ds:dword_77EA52, di
xor     al, al
mov     word ptr ds:dword_77EA52+2, ax
xor     ebx, ebx
mov     word ptr ds:dword_77EA5A, bx
mov     byte ptr ds:dword_77EA5A+3, ah
mov     bh, 0FFh
mov     ds:byte_77EA61, bh
mov     ds:byte_77EA60, bh
mov     [edx], ah
call    sub_4D8EB1
or      ds:byte_5F8364, 1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_49A4C1:             ; jumptable 0049A4C1 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49A4AA endp




sub_49A5DA proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 15h
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
sub_49A5DA endp




sub_49A626 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A64B
mov     eax, 1
call    sub_49A5DA
mov     eax, [edx+34h]
or      byte ptr [eax], 2
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     eax, [edx+38h]
or      byte ptr [eax], 2

loc_49A64B:
pop     edx
retn
sub_49A626 endp




sub_49A64D proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A69B
xor     eax, eax
call    sub_49A5DA
mov     eax, [edx+34h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [edx+38h]
and     byte ptr [eax], 0FDh
mov     byte ptr [eax+9], 1
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0FF380000h
mov     dword ptr [eax+24h], 0FF9C0000h
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     eax, [edx+30h]
or      byte ptr [eax], 2

loc_49A69B:
cmp     dword ptr [edx+10h], 96h
jnz     short loc_49A6AF
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_49A6AF:
pop     edx
retn
sub_49A64D endp




sub_49A6B1 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A6C3
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0

loc_49A6C3:
cmp     dword ptr [eax+10h], 0D2h
jnz     short loc_49A6DE
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+110h], 9

loc_49A6DE:
pop     edx
retn
sub_49A6B1 endp




sub_49A6E0 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A6F2
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_49A6F2:
cmp     dword ptr [eax+10h], 29h ; ')'
jnz     short loc_49A703
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0

loc_49A703:
pop     edx
retn
sub_49A6E0 endp




sub_49A705 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49A716
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

locret_49A716:
retn
sub_49A705 endp




sub_49A717 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A748
mov     eax, 1
call    sub_49A5DA
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+30h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+34h]
or      byte ptr [eax], 2
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2

loc_49A748:
pop     edx
retn
sub_49A717 endp




sub_49A74A proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A786
xor     eax, eax
call    sub_49A5DA
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+56h], 0A28h
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     eax, [edx+30h]
or      byte ptr [eax], 2
mov     eax, [edx+34h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh

loc_49A786:
cmp     dword ptr [edx+10h], 46h ; 'F'
jnz     short loc_49A79A
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 6
mov     byte ptr [eax+0Ah], 0

loc_49A79A:
cmp     dword ptr [edx+10h], 73h ; 's'
jnz     short loc_49A7AE
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0

loc_49A7AE:
cmp     dword ptr [edx+10h], 0AAh
jnz     short loc_49A7C5
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0

loc_49A7C5:
pop     edx
retn
sub_49A74A endp




sub_49A7C7 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A7E3
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1
mov     edx, [eax+30h]
and     byte ptr [edx], 0FDh

loc_49A7E3:
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_49A7F0
mov     eax, [eax+28h]
mov     byte ptr [eax+0Dh], 0

loc_49A7F0:
pop     edx
retn
sub_49A7C7 endp




sub_49A7F2 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49A803
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

locret_49A803:
retn
sub_49A7F2 endp




sub_49A804 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49A83B
mov     eax, 1
call    sub_49A5DA
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+30h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+34h]
or      byte ptr [eax], 2
inc     byte ptr [eax+0Ah]
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
inc     byte ptr [eax+0Ah]

loc_49A83B:
cmp     dword ptr [edx+10h], 352h
jnz     short loc_49A84E
mov     eax, 0Bh
call    sub_49E0D7

loc_49A84E:
pop     edx
retn
sub_49A804 endp

db 8Bh, 0C0h
jpt_49A87E dd offset loc_49A885 ; jump table for switch statement
dd offset loc_49A8C9
dd offset loc_49A8E8
dd offset loc_49A931
dd offset loc_49A941
dd offset loc_49A95A



sub_49A86A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 5           ; switch 6 cases
ja      def_49A87E      ; jumptable 0049A87E default case
xor     edx, edx
mov     dl, al
jmp     jpt_49A87E[edx*4] ; switch jump

loc_49A885:             ; jumptable 0049A87E case 0
cmp     ds:word_6E23D6, 0
jnz     def_49A87E      ; jumptable 0049A87E default case
and     ds:byte_56F80C, 0FCh
or      ds:byte_56F844, 3
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, 2
call    sub_49E0D7
inc     byte ptr [ecx+5]
mov     dword ptr [ecx+0Ch], 0
jmp     def_49A87E      ; jumptable 0049A87E default case

loc_49A8C9:             ; jumptable 0049A87E case 1
cmp     dword ptr [ecx+0Ch], 12Ch
jnz     def_49A87E      ; jumptable 0049A87E default case
mov     eax, 0Ah

loc_49A8DB:
call    sub_49E0D7
inc     byte ptr [ecx+5]
jmp     def_49A87E      ; jumptable 0049A87E default case

loc_49A8E8:             ; jumptable 0049A87E case 2
cmp     ds:word_6E23D6, 0
jnz     def_49A87E      ; jumptable 0049A87E default case
and     ds:byte_56F844, 0FCh
or      ds:byte_56F87C, 3
mov     eax, 2
call    sub_49E0D7
mov     dword ptr [ecx+0Ch], 0
inc     byte ptr [ecx+5]
call    sub_4A8E29
mov     edx, ds:off_530081
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
jmp     short def_49A87E ; jumptable 0049A87E default case

loc_49A931:             ; jumptable 0049A87E case 3
cmp     dword ptr [ecx+0Ch], 12Ch
jnz     short def_49A87E ; jumptable 0049A87E default case
inc     al
mov     [ecx+5], al
jmp     short def_49A87E ; jumptable 0049A87E default case

loc_49A941:             ; jumptable 0049A87E case 4
cmp     dword ptr [ecx+0Ch], 5DCh
jz      short loc_49A953
test    byte ptr ds:word_5708DE, 8
jz      short def_49A87E ; jumptable 0049A87E default case

loc_49A953:
mov     eax, 0Bh
jmp     short loc_49A8DB

loc_49A95A:             ; jumptable 0049A87E case 5
cmp     ds:word_6E23D6, 0
jnz     short def_49A87E ; jumptable 0049A87E default case
inc     byte ptr [ecx+4]
call    sub_4A0E35

def_49A87E:             ; jumptable 0049A87E default case
inc     dword ptr [ecx+0Ch]
pop     edx
pop     ecx
pop     ebx
retn
sub_49A86A endp




sub_49A973 proc near
push    ebx
push    edx
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     edx, offset unk_52C0F4
mov     eax, offset unk_52C3B4
call    sub_49DFEF
xor     edx, edx

loc_49A991:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_52C33C
call    sub_49DB4D
inc     edx
cmp     edx, 7
jl      short loc_49A991
pop     edx
pop     ebx
retn
sub_49A973 endp




sub_49A9AE proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49A9BE
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49A9BE:
pop     edx
retn
sub_49A9AE endp

db 8Bh, 0C0h
jpt_49A9EE dd offset loc_49A9F5 ; jump table for switch statement
dd offset loc_49AA1E
dd offset loc_49AA34
dd offset loc_49AA4D
dd offset loc_49AA57
dd offset loc_49AA57



sub_49A9DA proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_49A9EE      ; jumptable 0049A9EE default case
and     eax, 0FFh
jmp     jpt_49A9EE[eax*4] ; switch jump

loc_49A9F5:             ; jumptable 0049A9EE case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49A9EE      ; jumptable 0049A9EE default case
and     ds:byte_5F8364, 0FCh
mov     eax, 25000Ah
call    sub_4D8E42

loc_49AA18:
inc     byte ptr [edx+4]
pop     edx
pop     ecx
retn

loc_49AA1E:             ; jumptable 0049A9EE case 1
call    sub_4D8ECC
test    eax, eax
jz      def_49A9EE      ; jumptable 0049A9EE default case
mov     dword ptr [edx+0Ch], 1
jmp     short loc_49AA18

loc_49AA34:             ; jumptable 0049A9EE case 2
mov     ecx, [edx+0Ch]
dec     ecx
mov     [edx+0Ch], ecx
jnz     def_49A9EE      ; jumptable 0049A9EE default case
mov     eax, 2
call    sub_49E0D7
jmp     short loc_49AA18

loc_49AA4D:             ; jumptable 0049A9EE case 3
mov     eax, edx
call    sub_49A973
inc     byte ptr [edx+4]

loc_49AA57:             ; jumptable 0049A9EE cases 4,5
mov     eax, edx
call    sub_49A9AE
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 5
jnz     short def_49A9EE ; jumptable 0049A9EE default case
cmp     ds:word_6E23D6, 0
jnz     short def_49A9EE ; jumptable 0049A9EE default case
call    sub_4D8EB1
mov     byte ptr [edx], 0
or      ds:byte_5F8364, 1
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
and     ds:byte_77E806, 7Fh
xor     edx, edx
mov     ds:dword_6DD9BC, edx
mov     eax, offset sub_4378C0
call    sub_4EEDCA

def_49A9EE:             ; jumptable 0049A9EE default case
pop     edx
pop     ecx
retn
sub_49A9DA endp

jpt_49AAF5 dd offset loc_49AAFC ; jump table for switch statement
dd offset loc_49AB0B
dd offset loc_49AC27
dd offset loc_49AC3E
dd offset loc_49AC51
dd offset loc_49AC65
dd offset loc_49AC95
dd offset loc_49AD16
dd offset loc_49AD32
dd offset loc_49AD93



sub_49AAE1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 9           ; switch 10 cases
ja      def_49AAF5      ; jumptable 0049AAF5 default case
xor     edx, edx
mov     dl, al
jmp     jpt_49AAF5[edx*4] ; switch jump

loc_49AAFC:             ; jumptable 0049AAF5 case 0
mov     eax, 7E0h
call    sub_47E8B8
jmp     loc_49AC4A

loc_49AB0B:             ; jumptable 0049AAF5 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49AAF5      ; jumptable 0049AAF5 default case
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 400h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1D1Fh
mov     ds:dword_5F888C, 4000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 1D1F0000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
xor     edx, edx
mov     word ptr ds:dword_5F88A4+2, ax
mov     ds:word_5F88A8, ax
xor     dh, ah
mov     ds:byte_5F88AC, dh
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
shl     eax, 10h
mov     ds:dword_77E634, eax
mov     ax, word ptr ds:dword_5F83B8+2
add     ah, 8
and     ah, 0Fh
movsx   edx, ax
mov     eax, edx
call    sub_4EF008
mov     ebx, eax
shl     eax, 3
sub     eax, ebx
shl     eax, 5
add     ebx, eax
shl     ebx, 2
shl     ebx, 4
mov     eax, ds:dword_5F888C
sub     eax, ebx
mov     ds:dword_77E604, eax
mov     eax, edx
call    sub_4EF003
mov     edx, eax
shl     eax, 3
sub     eax, edx
shl     eax, 5
add     edx, eax
shl     edx, 2
shl     edx, 4
mov     eax, ds:dword_5F8894
sub     eax, edx
mov     ds:dword_77E60C, eax
mov     eax, ds:dword_5F8890
sub     eax, 2BC0000h
mov     dword ptr ds:unk_77E608, eax
mov     ds:dword_77E638, offset unk_800000
mov     ds:dword_77E63C, 2000000h
jmp     short loc_49AC4A

loc_49AC27:             ; jumptable 0049AAF5 case 2
cmp     ds:word_6E23D6, 0
jnz     def_49AAF5      ; jumptable 0049AAF5 default case
inc     al
mov     [ecx+4], al
pop     edx
pop     ecx
pop     ebx
retn

loc_49AC3E:             ; jumptable 0049AAF5 case 3
mov     edx, 2Fh ; '/'

loc_49AC43:
xor     eax, eax
call    sub_4A0E24

loc_49AC4A:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_49AC51:             ; jumptable 0049AAF5 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49AAF5      ; jumptable 0049AAF5 default case
mov     edx, 31h ; '1'
jmp     short loc_49AC43

loc_49AC65:             ; jumptable 0049AAF5 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49AAF5      ; jumptable 0049AAF5 default case
mov     eax, offset byte_5F8364
call    sub_4B565A
call    rand_
mov     edx, eax
mov     ebx, 18h
sar     edx, 1Fh
idiv    ebx
mov     ds:byte_55A684, dl
jmp     short loc_49AC4A

loc_49AC95:             ; jumptable 0049AAF5 case 6
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
shl     eax, 10h
mov     ds:dword_77E634, eax
mov     ax, word ptr ds:dword_5F83B8+2
add     ah, 8
and     ah, 0Fh
movsx   edx, ax
mov     eax, edx
call    sub_4EF008
mov     ecx, eax
shl     eax, 3
sub     eax, ecx
shl     eax, 5
add     ecx, eax
shl     ecx, 2
shl     ecx, 4
mov     eax, ds:dword_5F8380
sub     eax, ecx
mov     ds:dword_77E604, eax
mov     eax, edx
call    sub_4EF003
mov     edx, eax
shl     eax, 3
sub     eax, edx
shl     eax, 5
add     edx, eax
shl     edx, 2
shl     edx, 4
mov     eax, ds:dword_5F8388
sub     eax, edx
mov     ds:dword_77E60C, eax
mov     eax, ds:dword_5F8384
sub     eax, 2BC0000h
mov     dword ptr ds:unk_77E608, eax
pop     edx
pop     ecx
pop     ebx
retn

loc_49AD16:             ; jumptable 0049AAF5 case 7
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49AAF5      ; jumptable 0049AAF5 default case
mov     edx, 35h ; '5'
jmp     loc_49AC43

loc_49AD32:             ; jumptable 0049AAF5 case 8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49AAF5      ; jumptable 0049AAF5 default case
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA5E, 8
mov     ah, 2
mov     ds:byte_77EA5F, ah
mov     word ptr ds:dword_77EA4E+2, 0FFDFh
mov     word ptr ds:dword_77EA52, 0FFBFh
mov     word ptr ds:dword_77EA52+2, 20Fh
mov     word ptr ds:dword_77EA5A, 800h
xor     dl, dl
mov     byte ptr ds:dword_77EA5A+3, dl
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, ah
jmp     loc_49AC4A

loc_49AD93:             ; jumptable 0049AAF5 case 9
mov     ah, byte ptr ds:dword_77EA5A+2
cmp     ah, 2
jnz     short def_49AAF5 ; jumptable 0049AAF5 default case
mov     dl, ah
inc     dl
mov     byte ptr ds:dword_77EA5A+2, dl
mov     eax, 7E0h
call    sub_47EA91
mov     eax, 208h
call    sub_47EA91
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     byte ptr [ecx], 0

def_49AAF5:             ; jumptable 0049AAF5 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_49AAE1 endp




sub_49ADD9 proc near
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, ax
mov     word ptr ds:dword_5F889E, dx
mov     word ptr ds:dword_5F889E+2, bx
cwde
shl     eax, 10h
mov     ds:dword_5F888C, eax
movsx   eax, dx
shl     eax, 10h
mov     ds:dword_5F8890, eax
movsx   eax, bx
shl     eax, 10h
mov     ds:dword_5F8894, eax
xor     edx, edx
mov     word ptr ds:dword_5F88A4, dx
mov     word ptr ds:dword_5F88A4+2, cx
mov     ds:word_5F88A8, dx
xor     ah, ah
mov     ds:byte_5F88AC, ah
retn
sub_49ADD9 endp




sub_49AE41 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
mov     ebp, edx
xor     edx, edx
mov     [esp+18h+var_18], edx
jmp     short loc_49AE60

loc_49AE54:
mov     ebx, [esp+18h+var_18]
inc     ebx
mov     [esp+18h+var_18], ebx
cmp     ebx, 3
jge     short loc_49AEAC

loc_49AE60:
mov     eax, [esp+18h+var_18]
shl     eax, 4
cmp     ebp, [edi+eax]
jb      short loc_49AE54
mov     esi, 2

loc_49AE70:
mov     eax, [esp+18h+var_18]
cmp     esi, eax
jle     short loc_49AEA1
mov     eax, esi
shl     eax, 4
mov     edx, [edi+eax-10h]
mov     [edi+eax], edx
xor     edx, edx

loc_49AE85:
mov     ecx, esi
shl     ecx, 4
add     ecx, edi
mov     eax, edx
mov     bx, [ecx+eax*2-0Ch]
mov     [ecx+eax*2+4], bx
inc     edx
cmp     edx, 4
jl      short loc_49AE85
dec     esi
jmp     short loc_49AE70

loc_49AEA1:
shl     eax, 4
mov     [edi+eax], ebp
mov     al, byte ptr [esp+18h+var_18]
jmp     short loc_49AEAE

loc_49AEAC:
mov     al, 3

loc_49AEAE:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_49AE41 endp




sub_49AEB7 proc near
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA5E, 8
mov     ds:byte_77EA5F, 2
mov     word ptr ds:dword_77EA4E+2, ax
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA52+2, bx
mov     word ptr ds:dword_77EA5A, cx
xor     ah, ah
mov     byte ptr ds:dword_77EA5A+3, ah
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 2
retn
sub_49AEB7 endp




sub_49AEFE proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, offset byte_5F8364
mov     edx, ds:dword_560BE8
inc     edx
mov     ds:dword_560BE8, edx
cmp     edx, 384h
jl      short loc_49AF25
mov     byte ptr [eax+4], 6
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_49AF25:
mov     ebx, 12Ch
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_49AF49
call    sub_4DDF54
test    eax, eax
jz      short loc_49AF49
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8
mov     byte ptr [eax+8], 2

loc_49AF49:
mov     ax, [ecx+12Ch]
mov     dx, [ecx+12Eh]
or      edx, eax
mov     ax, [ecx+13Ah]
or      ax, [ecx+13Ch]
or      eax, edx
or      al, 9
and     ds:word_5708DE, ax
mov     dx, [ecx+12Ch]
or      dx, [ecx+12Eh]
mov     ax, [ecx+13Ah]
or      ax, [ecx+13Ch]
or      eax, edx
or      ax, [ecx+134h]
or      al, 9
mov     di, ds:word_5708DA
and     edi, eax
mov     ds:word_5708DA, di
mov     eax, ds:dword_5F8376
sar     eax, 10h
cmp     eax, 0FFFFFF38h
jge     short loc_49AFDC
mov     ax, [ecx+12Ch]
not     eax
mov     edx, edi
and     edx, eax
mov     ds:word_5708DA, dx
mov     ax, [ecx+12Ch]
not     eax
and     ds:word_5708DE, ax

loc_49AFDC:
cmp     word ptr ds:dword_5F8376+2, 0C8h
jle     short loc_49B007
mov     ax, [ecx+12Eh]
not     eax
and     ds:word_5708DA, ax
mov     ax, [ecx+12Eh]
not     eax
and     ds:word_5708DE, ax

loc_49B007:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_49AEFE endp




sub_49B00C proc near
push    ebx
push    ecx
push    edx
xor     edx, edx
jmp     short loc_49B019

loc_49B013:
inc     edx
cmp     edx, 2
jge     short loc_49B02E

loc_49B019:
call    sub_4DDF54
test    eax, eax
jz      short loc_49B013
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8
mov     [eax+3], dl
jmp     short loc_49B013

loc_49B02E:
call    sub_4DE043
test    eax, eax
jz      short loc_49B03E
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 21h ; '!'

loc_49B03E:
call    sub_4DE227
test    eax, eax
jz      short loc_49B052
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Fh
mov     byte ptr [eax+3], 1

loc_49B052:
mov     ecx, 800h
mov     ebx, 0FFFFFF20h
mov     edx, 0FFFFFFFFh
xor     eax, eax
call    sub_49ADD9
pop     edx
pop     ecx
pop     ebx
retn
sub_49B00C endp




sub_49B06C proc near
push    ecx
push    edx
mov     eax, ds:dword_77E8A4
shl     eax, 3
cmp     ds:dword_77E8A4, 3
jnz     short loc_49B0A0
xor     ecx, ecx
mov     cl, ds:byte_52C430[eax]
xor     edx, edx
mov     dl, ds:byte_560BE6
sub     edx, ecx
imul    edx, edx
add     edx, edx
mov     eax, ds:dword_52C42C[eax]
add     eax, edx
jmp     short loc_49B0A6

loc_49B0A0:
mov     eax, ds:dword_52C42C[eax]

loc_49B0A6:
call    sub_4A62A5
pop     edx
pop     ecx
retn
sub_49B06C endp

db 8Dh, 40h, 0
jpt_49B10A dd offset loc_49B111 ; jump table for switch statement
dd offset loc_49B18A
dd offset loc_49B1BF
dd offset loc_49B21B
dd offset loc_49B24D
dd offset loc_49B2E5
dd offset loc_49B2F1
dd offset loc_49B34F
dd offset loc_49B4C5
dd offset loc_49B505
dd offset loc_49B550
dd offset loc_49B567
dd offset loc_49B57F
dd offset loc_49B596
dd offset loc_49B5C2



sub_49B0ED proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ecx, offset unk_77E5F4
mov     al, [eax+4]
cmp     al, 0Eh         ; switch 15 cases
ja      def_49B10A      ; jumptable 0049B10A default case
and     eax, 0FFh
jmp     jpt_49B10A[eax*4] ; switch jump

loc_49B111:             ; jumptable 0049B10A case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49B10A      ; jumptable 0049B10A default case
mov     eax, 10h
call    sub_4D9040
call    sub_49B00C
mov     ds:byte_77E807, 2
xor     edx, edx
mov     eax, offset byte_5F8364
call    sub_4B58B2
mov     ds:byte_5F88AF, 1
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+10h], 0
mov     dword ptr [ecx+14h], 0FF000000h
mov     dword ptr [ecx+18h], 4900000h
mov     dword ptr [ecx+40h], 8000000h
mov     dword ptr [ecx+44h], offset unk_700000
mov     dword ptr [ecx+48h], 2000000h
mov     byte ptr [esi+4], 1
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B18A:             ; jumptable 0049B10A case 1
cmp     ds:word_6E23D6, 0
jnz     def_49B10A      ; jumptable 0049B10A default case
cmp     ds:byte_77EAB8, 0
jnz     def_49B10A      ; jumptable 0049B10A default case
xor     ebx, ebx
mov     edx, 1
mov     eax, 80000019h
call    sub_4D89E4
mov     byte ptr [esi+4], 2
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B1BF:             ; jumptable 0049B10A case 2
cmp     byte ptr [esi+5], 0
jnz     short loc_49B1EA
mov     eax, [ecx+18h]
sub     eax, 120000h
mov     [ecx+18h], eax
cmp     eax, 0FDF20000h
jg      def_49B10A      ; jumptable 0049B10A default case
mov     dword ptr [ecx+18h], 0FDF20000h
inc     byte ptr [esi+5]
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B1EA:
mov     edi, [ecx+40h]
sub     edi, 2D0000h
mov     [ecx+40h], edi
test    edi, edi
jg      def_49B10A      ; jumptable 0049B10A default case
mov     dword ptr [ecx+40h], 0
xor     edx, edx
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [esi+4], 3
mov     byte ptr [esi+5], 0
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B21B:             ; jumptable 0049B10A case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49B10A      ; jumptable 0049B10A default case
mov     eax, 10h
call    sub_4D9040
mov     edx, 9
add     edx, ds:dword_77E8A4
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [esi+4], 4
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B24D:             ; jumptable 0049B10A case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49B10A      ; jumptable 0049B10A default case
cmp     ds:byte_77EAB8, 0
jnz     def_49B10A      ; jumptable 0049B10A default case
mov     edx, (offset dword_5F8376+2)
mov     eax, 163h
call    sub_4D8BC3
mov     ds:word_77EA80, 1Eh
mov     eax, 25000Fh
call    sub_4D8E42
xor     dh, dh
mov     ds:byte_560BE6, dh
xor     ebp, ebp
mov     ds:dword_560BEC, ebp
mov     ds:dword_560BE8, ebp
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     edx, 1Ah
mov     eax, 2
call    sub_4A0E24
mov     edx, 23h ; '#'
mov     eax, 1
call    sub_4A0E24
mov     edx, 2Dh ; '-'
add     edx, ds:dword_77E8A4
mov     eax, 3
call    sub_4A0E24
mov     byte ptr [esi+4], 5
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B2E5:             ; jumptable 0049B10A case 5
mov     eax, esi
call    sub_49AEFE
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B2F1:             ; jumptable 0049B10A case 6
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49B10A      ; jumptable 0049B10A default case
mov     edx, (offset dword_5F8376+2)
mov     eax, 163h
call    sub_4D8BC3
mov     eax, 40h ; '@'
call    sub_4D9040
mov     eax, 2
call    sub_4A0E75
mov     eax, 3
call    sub_4A0E75
mov     eax, 1
call    sub_4A0E75
mov     edx, 1Fh
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [esi+4], 7
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B34F:             ; jumptable 0049B10A case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49B10A      ; jumptable 0049B10A default case
cmp     ds:byte_77EAB8, 0
jnz     def_49B10A      ; jumptable 0049B10A default case
mov     eax, ds:dword_77E8A4
mov     dl, ds:byte_560BE6
cmp     dl, ds:byte_52C430[eax*8]
jnb     short loc_49B3A6
xor     ebx, ebx
mov     edx, 1
mov     eax, 8001001Ah
call    sub_4D89E4
mov     edx, 3
xor     eax, eax
call    sub_4A0E24
mov     ds:byte_55A688, 0FFh
jmp     loc_49B4BC

loc_49B3A6:
xor     edx, edx
mov     dl, ds:byte_560BE6
mov     eax, offset dword_77E898
call    sub_49AE41
mov     ds:byte_55A688, al
mov     eax, 7
call    sub_47EEAE
mov     eax, 314h
call    sub_47E888
test    eax, eax
jnz     loc_49B47B
cmp     ds:byte_55A688, 0
jnz     short loc_49B442
cmp     ds:dword_77E8A4, 3
jnz     short loc_49B40D
mov     eax, 64h ; 'd'
call    sub_4A629F
mov     edx, 7
xor     eax, eax
call    sub_4A0E24
mov     eax, 314h
call    sub_47E8B8
jmp     short loc_49B420

loc_49B40D:
mov     eax, esi
call    sub_49B06C
mov     edx, 6
xor     eax, eax
call    sub_4A0E24

loc_49B420:
xor     ebx, ebx
mov     edx, 1
mov     eax, 8001001Ch
call    sub_4D89E4
mov     edx, (offset dword_5F8376+2)
mov     eax, 164h
call    sub_4D8BC3
jmp     short loc_49B4A8

loc_49B442:
cmp     ds:dword_77E8A4, 3
jnz     short loc_49B466
mov     eax, 64h ; 'd'
call    sub_4A629F
mov     eax, 314h
call    sub_47E8B8
mov     edx, 5
jmp     short loc_49B472

loc_49B466:
mov     eax, esi
call    sub_49B06C
mov     edx, 4

loc_49B472:
xor     eax, eax
call    sub_4A0E24
jmp     short loc_49B497

loc_49B47B:
cmp     ds:byte_55A688, 0
jz      short loc_49B40D
mov     eax, esi
call    sub_49B06C
mov     edx, 4
xor     eax, eax
call    sub_4A0E24

loc_49B497:
xor     ebx, ebx
mov     edx, 1
mov     eax, 8001001Bh
call    sub_4D89E4

loc_49B4A8:
mov     ebx, ds:dword_77E8A4
cmp     ebx, 3
jnb     short loc_49B4BC
lea     edi, [ebx+1]
mov     ds:dword_77E8A4, edi

loc_49B4BC:
mov     byte ptr [esi+4], 8
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B4C5:             ; jumptable 0049B10A case 8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49B10A      ; jumptable 0049B10A default case
mov     dl, ds:byte_55A688
cmp     dl, 3
jnb     short loc_49B4F0
xor     eax, eax
mov     al, dl
add     eax, 9
call    sub_4A62B7
mov     edx, 1Ch
jmp     short loc_49B4F5

loc_49B4F0:
mov     edx, 1Dh

loc_49B4F5:
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [esi+4], 9
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B505:             ; jumptable 0049B10A case 9
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49B10A      ; jumptable 0049B10A default case
call    sub_4D8EFD
test    eax, eax
jnz     def_49B10A      ; jumptable 0049B10A default case
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_49B53B
mov     eax, 9
call    sub_49E0D7
mov     byte ptr [esi+4], 0Ah
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B53B:
mov     edx, 8
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [esi+4], 0Dh
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B550:             ; jumptable 0049B10A case 10
cmp     ds:word_6E23D6, 0
jnz     def_49B10A      ; jumptable 0049B10A default case
mov     byte ptr [esi+4], 0Bh
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B567:             ; jumptable 0049B10A case 11
call    sub_49B00C
mov     eax, 1
call    sub_49E0D7
mov     byte ptr [esi+4], 0Ch
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B57F:             ; jumptable 0049B10A case 12
cmp     ds:word_6E23D6, 0
jnz     def_49B10A      ; jumptable 0049B10A default case
mov     byte ptr [esi+4], 3
jmp     def_49B10A      ; jumptable 0049B10A default case

loc_49B596:             ; jumptable 0049B10A case 13
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49B10A      ; jumptable 0049B10A default case
mov     ecx, 800h
mov     ebx, 296h
mov     edx, 0FFFFFFBFh
mov     eax, 0FFFFFF42h
call    sub_49AEB7
mov     byte ptr [esi+4], 0Eh
jmp     short def_49B10A ; jumptable 0049B10A default case

loc_49B5C2:             ; jumptable 0049B10A case 14
cmp     byte ptr ds:dword_77EA5A+2, 2
jnz     short def_49B10A ; jumptable 0049B10A default case
mov     eax, 0A0h
call    sub_4D9040
xor     dl, dl
mov     ds:byte_77E807, dl
inc     byte ptr ds:dword_77EA5A+2
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
xor     bh, bh
mov     ds:byte_5F88AF, dl
call    sub_42A66D
mov     ds:word_77EA80, 7Fh
mov     edx, ds:dword_77E7D5
sar     edx, 18h
mov     eax, offset byte_5F8364
call    sub_4B58B2
mov     [esi], bh

def_49B10A:             ; jumptable 0049B10A default case
mov     eax, ds:dword_560BE8
call    sub_4A62AB
xor     eax, eax
mov     al, ds:byte_560BE6
call    sub_4A62B1
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49B0ED endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_70]
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49B64D
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49B64D:
pop     edx
retn



sub_49B64F proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_49B663
jbe     short loc_49B677
cmp     al, 2
jz      short loc_49B689
pop     edx
pop     ecx
retn

loc_49B663:
test    al, al
jnz     short loc_49B6D6
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]
pop     edx
pop     ecx
retn

loc_49B677:
cmp     ds:word_6E23D6, 0
jnz     short loc_49B6D6
inc     al
mov     [edx+4], al
pop     edx
pop     ecx
retn

loc_49B689:
mov     byte ptr ds:dword_77EA5A+2, al
mov     ds:byte_77EA5E, 0Fh
mov     ds:byte_77EA5F, 1
mov     word ptr ds:dword_77EA4E+2, 0FFC0h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0D0h
mov     word ptr ds:dword_77EA5A, 400h
xor     cl, cl
mov     byte ptr ds:dword_77EA5A+3, cl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, al
mov     [edx], cl

loc_49B6D6:
pop     edx
pop     ecx
retn
sub_49B64F endp




sub_49B6D9 proc near
push    ebx
push    esi
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0FE61h
mov     word ptr ds:dword_5F889E, 0FF7Fh
mov     word ptr ds:dword_5F889E+2, 0FF13h
mov     ds:dword_5F888C, 0FE610000h
mov     ds:dword_5F8890, 0FF7F0000h
mov     ds:dword_5F8894, 0FF130000h
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     word ptr ds:dword_5F88A4+2, 400h
mov     ds:word_5F88A8, si
xor     bl, bl
mov     ds:byte_5F88AC, bl
pop     esi
pop     ebx
retn
sub_49B6D9 endp

jpt_49B777 dd offset loc_49B77E ; jump table for switch statement
dd offset loc_49B7A2
dd offset loc_49B7FD
dd offset def_49B777



sub_49B75D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset unk_77E5F4
mov     al, [eax+4]
cmp     al, 3           ; switch 4 cases
ja      def_49B777      ; jumptable 0049B777 default case, case 3
xor     edx, edx
mov     dl, al
jmp     jpt_49B777[edx*4] ; switch jump

loc_49B77E:             ; jumptable 0049B777 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49B777      ; jumptable 0049B777 default case, case 3
mov     eax, 9

loc_49B795:
call    sub_49E0D7
inc     byte ptr [ecx+4]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49B7A2:             ; jumptable 0049B777 case 1
cmp     ds:word_6E23D6, 0
jnz     short def_49B777 ; jumptable 0049B777 default case, case 3
call    sub_4DDF54
test    eax, eax
jz      short loc_49B7BC
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 55h ; 'U'

loc_49B7BC:
call    sub_49B6D9
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [esi+10h], 0FE610000h
mov     dword ptr [esi+14h], 0FEE90000h
mov     dword ptr [esi+18h], 0FF130000h
mov     dword ptr [esi+40h], 0C000000h
mov     dword ptr [esi+44h], 1500000h
mov     dword ptr [esi+48h], 2000000h
mov     eax, 1
jmp     short loc_49B795

loc_49B7FD:             ; jumptable 0049B777 case 2
cmp     ds:word_6E23D6, 0
jnz     short def_49B777 ; jumptable 0049B777 default case, case 3
inc     al
mov     [ecx+4], al

def_49B777:             ; jumptable 0049B777 default case, case 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49B75D endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_71]
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49B822
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49B822:
pop     edx
retn



sub_49B824 proc near
push    ecx
push    edx
push    edi
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_49B83A
jbe     short loc_49B84F
cmp     al, 2
jz      short loc_49B865
pop     edi
pop     edx
pop     ecx
retn

loc_49B83A:
test    al, al
jnz     short loc_49B8B2
mov     eax, 0Ah
call    sub_49E0D7

loc_49B848:
inc     byte ptr [edx+4]
pop     edi
pop     edx
pop     ecx
retn

loc_49B84F:
cmp     ds:word_6E23D6, 0
jnz     short loc_49B8B2
mov     eax, 22Dh
call    sub_47E8B8
jmp     short loc_49B848

loc_49B865:
mov     byte ptr ds:dword_77EA5A+2, al
mov     ds:byte_77EA5E, 8
mov     ds:byte_77EA5F, 1
mov     word ptr ds:dword_77EA4E+2, 0FF00h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 80h
xor     edi, edi
mov     word ptr ds:dword_77EA5A, di
xor     cl, cl
mov     byte ptr ds:dword_77EA5A+3, cl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, al
mov     [edx], cl

loc_49B8B2:
pop     edi
pop     edx
pop     ecx
retn
sub_49B824 endp




sub_49B8B6 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_49B8BC[edx*4]
pop     edx
retn
sub_49B8B6 endp




sub_49B8C5 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+5]
test    al, al
jbe     short loc_49B8E0
cmp     al, 1
jz      short loc_49B910
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49B8E0:
mov     eax, offset unk_52C484
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52C498
mov     dword ptr [ecx+0A4h], offset unk_52C538
inc     byte ptr [ecx+5]

loc_49B910:
mov     eax, esi
call    sub_4B55D5
test    eax, eax
jz      short loc_49B93A
mov     byte ptr [esi+8], 3
mov     byte ptr [esi+9], 0
and     byte ptr [esi], 0FDh
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0
call    sub_49DF64

loc_49B93A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49B8C5 endp




sub_49B93F proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49B96C
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jz      short loc_49B974
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]
jmp     short loc_49B970

loc_49B96C:
add     byte ptr [edx+4], 2

loc_49B970:
mov     byte ptr [edx+5], 0

loc_49B974:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_49B93F endp




sub_49B981 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49B996
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]

loc_49B996:
cmp     ds:word_6E23D6, 0
jnz     short loc_49B974
inc     byte ptr [edx+4]
jmp     short loc_49B974
sub_49B981 endp




sub_49B9A5 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_49B9BD
jbe     short loc_49B9CF
cmp     al, 2
jz      short loc_49BA01
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_49B9BD:
test    al, al
jnz     loc_49BA5F
inc     al
mov     [edx+5], al
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_49B9CF:
cmp     ds:word_6E23D6, 0
jnz     loc_49BA5F
call    sub_4E1D8A
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     bl, 1
mov     byte ptr ds:dword_77E954, bl
call    sub_42A66D
add     [edx+5], bl
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_49BA01:
mov     byte ptr ds:dword_77EA5A+2, al
mov     ds:byte_77EA5E, 8
mov     ds:byte_77EA5F, 1
mov     word ptr ds:dword_77EA4E+2, 0FF00h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 80h
xor     edi, edi
mov     word ptr ds:dword_77EA5A, di
xor     cl, cl
mov     byte ptr ds:dword_77EA5A+3, cl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, al
or      ds:byte_5F8364, 3
mov     eax, 22Eh
call    sub_47E8B8
mov     [edx], cl

loc_49BA5F:
pop     edi
pop     edx
pop     ecx
pop     ebx

locret_49BA63:
retn
sub_49B9A5 endp




sub_49BA64 proc near
push    edx
mov     edx, eax
mov     al, [eax+6]
test    al, al
jbe     short loc_49BA74
cmp     al, 1
jz      short loc_49BA83
pop     edx
retn

loc_49BA74:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+6]
pop     edx
retn

loc_49BA83:
cmp     ds:word_6E23D6, 0
jnz     short loc_49BA92
call    sub_49DF64

loc_49BA92:
pop     edx
retn
sub_49BA64 endp




sub_49BA94 proc near
push    ebx
push    ecx
push    edx
push    ebp
mov     ecx, eax
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_49BB7E
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     ax, word ptr ds:dword_5F8376+2
mov     word ptr ds:dword_5F889A+2, ax
mov     ax, word ptr ds:dword_5F837A
mov     word ptr ds:dword_5F889E, ax
mov     ax, word ptr ds:dword_5F837A+2
mov     word ptr ds:dword_5F889E+2, ax
mov     eax, ds:dword_5F889A
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F888C, eax
mov     eax, ds:dword_5F889A+2
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8890, eax
mov     eax, ds:dword_5F889E
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8894, eax
xor     edx, edx
mov     word ptr ds:dword_5F88A4, dx
mov     word ptr ds:dword_5F88A4+2, 0B2Ch
mov     ds:word_5F88A8, dx
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E604, 0FFEE0000h
mov     dword ptr ds:unk_77E608, 0FF690000h
mov     ds:dword_77E60C, 0FFCC0000h
mov     ds:dword_77E634, 10000000h
xor     ebp, ebp
mov     ds:dword_77E638, ebp
mov     ds:dword_77E63C, ebp
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

loc_49BB7E:
pop     ebp
pop     edx
pop     ecx
pop     ebx
retn
sub_49BA94 endp

align 4
jpt_49BBBA dd offset loc_49BBC1 ; jump table for switch statement
dd offset loc_49BBE3
dd offset loc_49BC2A
dd offset loc_49BC91
dd offset loc_49BCF7
dd offset loc_49BD1E
dd offset loc_49BD4C
dd offset loc_49BD5C



sub_49BBA4 proc near
push    ebx
push    ecx
push    edx
push    edi
push    ebp
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 7           ; switch 8 cases
ja      def_49BBBA      ; jumptable 0049BBBA default case
xor     edx, edx
mov     dl, al
jmp     jpt_49BBBA[edx*4] ; switch jump

loc_49BBC1:             ; jumptable 0049BBBA case 0
cmp     ds:word_6E23D6, 0
jnz     def_49BBBA      ; jumptable 0049BBBA default case
mov     edx, 0Ah

loc_49BBD4:
xor     eax, eax
call    sub_4A0E24

loc_49BBDB:
inc     byte ptr [ecx+5]
jmp     def_49BBBA      ; jumptable 0049BBBA default case

loc_49BBE3:             ; jumptable 0049BBBA case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49BBBA      ; jumptable 0049BBBA default case
mov     byte ptr ds:dword_5F836C, 3
mov     bh, 1
mov     byte ptr ds:dword_5F836C+1, bh
or      ds:byte_5F8421, 10h
mov     ds:byte_5F88AC, 30h ; '0'
mov     dl, 0Ch
mov     byte ptr ds:dword_5F84CB+1, dl
mov     byte ptr ds:dword_5F84CB+2, dl
mov     dword ptr [ecx+10h], 8
add     [ecx+5], bh
jmp     def_49BBBA      ; jumptable 0049BBBA default case

loc_49BC2A:             ; jumptable 0049BBBA case 2
add     ds:dword_77E634, 0FF658000h
sub     ds:dword_77E604, 18C000h
add     dword ptr ds:unk_77E608, 52000h
sub     ds:dword_77E60C, 86000h
mov     ebp, [ecx+10h]
dec     ebp
mov     [ecx+10h], ebp
jnz     def_49BBBA      ; jumptable 0049BBBA default case
mov     ds:dword_77E604, 0FF280000h
mov     dword ptr ds:unk_77E608, 0FF920000h
mov     ds:dword_77E60C, 0FF890000h
mov     ds:dword_77E634, 0B2C0000h
mov     edx, 0Bh
jmp     loc_49BBD4

loc_49BC91:             ; jumptable 0049BBBA case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49BBBA      ; jumptable 0049BBBA default case
mov     ah, 1
mov     byte ptr ds:dword_77EA5A+2, ah
mov     ds:byte_77EA5E, 1Bh
mov     ds:byte_77EA5F, 7
mov     word ptr ds:dword_77EA4E+2, 0C1h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0FEFFh
xor     edi, edi
mov     word ptr ds:dword_77EA5A, di
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 9
mov     al, ah
mov     ds:byte_77EA60, ah
add     [ecx+5], al
jmp     def_49BBBA      ; jumptable 0049BBBA default case

loc_49BCF7:             ; jumptable 0049BBBA case 4
mov     dl, byte ptr ds:dword_77EA5A+2
cmp     dl, 2
jnz     short def_49BBBA ; jumptable 0049BBBA default case
mov     dh, dl
inc     dh
mov     byte ptr ds:dword_77EA5A+2, dh
mov     bl, 1
mov     byte ptr ds:dword_77E954, bl
call    sub_42A66D
add     [ecx+5], bl
jmp     short def_49BBBA ; jumptable 0049BBBA default case

loc_49BD1E:             ; jumptable 0049BBBA case 5
cmp     byte ptr ds:dword_77EA5A+2, 0
jnz     short def_49BBBA ; jumptable 0049BBBA default case
mov     edx, 2Dh ; '-'
xor     eax, eax
call    sub_4A0E24
xor     bl, bl
mov     ds:byte_5F88AC, bl
mov     byte ptr ds:dword_5F84CB+1, bl
mov     byte ptr ds:dword_5F84CB+2, bl
jmp     loc_49BBDB

loc_49BD4C:             ; jumptable 0049BBBA case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_49BBBA ; jumptable 0049BBBA default case
inc     al
mov     [ecx+5], al
jmp     short def_49BBBA ; jumptable 0049BBBA default case

loc_49BD5C:             ; jumptable 0049BBBA case 7
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

def_49BBBA:             ; jumptable 0049BBBA default case
pop     ebp
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_49BBA4 endp




sub_49BD69 proc near
push    edx
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4B565A
call    sub_4D8EB1
mov     byte ptr [edx], 0
pop     edx
retn
sub_49BD69 endp




sub_49BD80 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_49BD86[edx*4]
pop     edx
retn
sub_49BD80 endp




sub_49BD8F proc near
push    ebx
push    edx
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_49BE3D
or      ds:byte_5F8421, 10h
mov     ax, word ptr ds:dword_5F8376+2
mov     word ptr ds:dword_5F889A+2, ax
mov     ax, word ptr ds:dword_5F837A
mov     word ptr ds:dword_5F889E, ax
mov     ax, word ptr ds:dword_5F837A+2
mov     word ptr ds:dword_5F889E+2, ax
mov     eax, ds:dword_5F889A
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F888C, eax
mov     eax, ds:dword_5F889A+2
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8890, eax
mov     eax, ds:dword_5F889E
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8894, eax
xor     ebx, ebx
mov     word ptr ds:dword_5F88A4, bx
mov     ax, word ptr ds:dword_5F83B8+2
mov     word ptr ds:dword_5F88A4+2, ax
mov     ds:word_5F88A8, bx
mov     byte ptr ds:dword_5F836C+1, 10h
xor     bh, bh
mov     byte ptr ds:dword_5F836C+2, bh
mov     ds:byte_55A68C, bh
inc     byte ptr [edx+4]
mov     [edx+5], bh
mov     [edx+6], bh
mov     [edx+7], bh

loc_49BE3D:
pop     edx
pop     ebx
retn
sub_49BD8F endp

db 8Dh, 40h, 0
jpt_49BEA8 dd offset loc_49BEAF ; jump table for switch statement
dd offset loc_49BF16
dd offset loc_49BF74
dd offset loc_49BF90
dd offset loc_49BFB5
dd offset loc_49C0A1
dd offset loc_49C0C3
dd offset loc_49C0E5
dd offset loc_49C112
dd offset loc_49C134
dd offset loc_49C181
dd offset loc_49C25D
dd offset loc_49C2A2
dd offset loc_49C2C2



sub_49BE7B proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= word ptr -28h
var_26= word ptr -26h
var_24= word ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ebp, eax
mov     [esp+38h+var_20], offset byte_5F8364
mov     eax, [eax+24h]
mov     [esp+38h+var_1C], eax
mov     edx, [ebp+28h]
mov     al, [ebp+5]
cmp     al, 0Dh         ; switch 14 cases
ja      def_49BEA8      ; jumptable 0049BEA8 default case
and     eax, 0FFh
jmp     jpt_49BEA8[eax*4] ; switch jump

loc_49BEAF:             ; jumptable 0049BEA8 case 0
lea     edi, [esp+38h+var_28]
mov     esi, [esp+38h+var_1C]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [esp+38h+var_1C]
mov     eax, [eax+12h]
sar     eax, 10h
mov     [esp+38h+var_38], eax
mov     eax, [esp+38h+var_1C]
mov     eax, [eax+14h]
sar     eax, 10h
sub     eax, 92h
mov     [esp+38h+var_34], eax
mov     eax, [esp+38h+var_1C]
mov     eax, [eax+16h]
sar     eax, 10h
mov     [esp+38h+var_30], eax
xor     ecx, ecx
mov     edx, [esp+38h+var_20]
add     edx, 14h
lea     eax, [esp+38h+var_28]
call    sub_4DDDB4
mov     ebx, eax
mov     edx, 0D4h
mov     eax, esp
call    sub_42AAD8
mov     eax, [esp+38h+var_20]
and     byte ptr [eax], 0FDh
jmp     loc_49C10A

loc_49BF16:             ; jumptable 0049BEA8 case 1
mov     ebx, [esp+38h+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, [esp+38h+var_1C]
add     eax, 14h
mov     ecx, 80h
call    sub_4DE552
mov     ecx, eax
mov     eax, [esp+38h+var_1C]
add     [eax+56h], cx
call    sub_42ABA2
test    eax, eax
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
test    cx, cx
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     eax, [esp+38h+var_1C]
mov     byte ptr [eax+0Dh], 9
mov     byte ptr [eax+0Eh], 1
mov     dword ptr [ebp+10h], 10h
jmp     loc_49C10A

loc_49BF74:             ; jumptable 0049BEA8 case 2
mov     eax, [ebp+10h]
dec     eax
mov     [ebp+10h], eax
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     edx, 1Bh
call    sub_4A0E24
jmp     loc_49C10A

loc_49BF90:             ; jumptable 0049BEA8 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     eax, [esp+38h+var_1C]
mov     byte ptr [eax+0Dh], 5
mov     byte ptr [eax+0Eh], 1
mov     dword ptr [ebp+10h], 22h ; '"'
jmp     loc_49C10A

loc_49BFB5:             ; jumptable 0049BEA8 case 4
mov     ecx, [ebp+10h]
dec     ecx
mov     [ebp+10h], ecx
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
call    sub_42A9A2
mov     eax, [esp+38h+var_1C]
mov     word ptr [eax+56h], 0A78h
mov     byte ptr [eax+0Dh], 6
mov     byte ptr [eax+0Eh], 1
mov     word ptr [eax+14h], 0FB32h
mov     word ptr [eax+18h], 71Ch
mov     eax, [eax+12h]
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+38h+var_1C]
mov     [edx+34h], eax
mov     [edx+1Ch], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+3Ch], eax
mov     [edx+24h], eax
or      ds:byte_5F8364, 2
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0FAECh
mov     word ptr ds:dword_5F889E+2, 692h
mov     ds:dword_5F888C, 0FAEC0000h
mov     ds:dword_5F8894, 6920000h
add     edx, 14h
mov     eax, offset byte_5F8364
add     eax, 538h
call    sub_4DDDB4
mov     word ptr ds:dword_5F88A4+2, ax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881

unknown_libname_41:     ; Watcom v9-*1.5  32bit NT runtime
mov     ds:dword_77E604, 0FC9B0000h ; Watcom v9-*1.5  32bit common runtime
mov     dword ptr ds:unk_77E608, 0FD2F0000h
mov     ds:dword_77E60C, 73C0000h
mov     ds:dword_77E634, 0BA90000h
mov     ds:dword_77E638, 0F00000h
xor     edi, edi
mov     ds:dword_77E63C, edi
mov     dword ptr [ebp+10h], 3Ch ; '<'
jmp     short loc_49C10A

loc_49C0A1:             ; jumptable 0049BEA8 case 5
mov     eax, [ebp+10h]
dec     eax
mov     [ebp+10h], eax
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     eax, [esp+38h+var_1C]
mov     byte ptr [eax+0Dh], 7
mov     byte ptr [eax+0Eh], 1
mov     dword ptr [ebp+10h], 2Dh ; '-'
jmp     short loc_49C10A

loc_49C0C3:             ; jumptable 0049BEA8 case 6
mov     esi, [ebp+10h]
dec     esi
mov     [ebp+10h], esi
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     eax, [esp+38h+var_1C]
mov     byte ptr [eax+0Dh], 9
mov     byte ptr [eax+0Eh], 1
mov     dword ptr [ebp+10h], 14h
jmp     short loc_49C10A

loc_49C0E5:             ; jumptable 0049BEA8 case 7
mov     ecx, [ebp+10h]
dec     ecx
mov     [ebp+10h], ecx
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     edx, 1Ch
xor     eax, eax
call    sub_4A0E24
mov     eax, [esp+38h+var_1C]
mov     byte ptr [eax+0Dh], 0Ah

loc_49C106:
mov     byte ptr [eax+0Eh], 1

loc_49C10A:
inc     byte ptr [ebp+5]
jmp     def_49BEA8      ; jumptable 0049BEA8 default case

loc_49C112:             ; jumptable 0049BEA8 case 8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     eax, [esp+38h+var_1C]
mov     byte ptr [eax+0Dh], 0Dh
mov     byte ptr [eax+0Eh], 1
mov     dword ptr [ebp+10h], 0Ah
jmp     short loc_49C10A

loc_49C134:             ; jumptable 0049BEA8 case 9
mov     ebx, [esp+38h+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, [esp+38h+var_1C]
add     eax, 14h
mov     ecx, 80h
call    sub_4DE552
mov     edx, [esp+38h+var_1C]
add     [edx+56h], ax
test    ax, ax
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     edx, 24h ; '$'
xor     eax, eax
call    sub_4A0E24
mov     eax, [esp+38h+var_1C]
mov     byte ptr [eax+0Dh], 8
jmp     short loc_49C106

loc_49C181:             ; jumptable 0049BEA8 case 10
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_49BEA8      ; jumptable 0049BEA8 default case
mov     eax, edx
call    sub_4DE2F6

unknown_libname_42:     ; Watcom v9-*1.5  32bit NT runtime
mov     ds:dword_77E604, 0FAD20000h ; Watcom v9-*1.5  32bit common runtime
mov     dword ptr ds:unk_77E608, 0FD8F0000h
mov     ds:dword_77E60C, 6A10000h
mov     ds:dword_77E634, 9F90000h
mov     ds:dword_77E638, 400000h
mov     ds:dword_77E63C, 1500000h
mov     eax, [esp+38h+var_1C]
mov     word ptr [eax+14h], 0FB50h
mov     word ptr [eax+18h], 5DCh
mov     eax, [eax+12h]
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+38h+var_1C]
mov     [edx+1Ch], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
mov     [esp+38h+var_28], 0F062h
mov     [esp+38h+var_26], 0FD10h
mov     [esp+38h+var_24], 0FE20h
mov     ecx, [esp+38h+var_1C]
add     ecx, 14h
lea     edx, [esp+38h+var_28]
mov     eax, ecx
call    sub_4DDDB4
mov     edx, [esp+38h+var_1C]
mov     [edx+56h], ax
mov     word ptr [edx+44h], 320h
mov     byte ptr [edx+0Dh], 2
mov     byte ptr [edx+0Eh], 1
or      ds:byte_5F8421, 10h
mov     eax, offset byte_5F8364
add     eax, 538h
mov     edx, ecx
call    sub_4DDDB4
mov     word ptr ds:dword_5F88A4+2, ax
jmp     loc_49C10A

loc_49C25D:             ; jumptable 0049BEA8 case 11
mov     eax, [esp+38h+var_1C]
mov     eax, [eax+12h]
sar     eax, 10h
cmp     eax, 0FFFFF3E4h
jge     short loc_49C27D
mov     eax, [esp+38h+var_1C]
mov     word ptr [eax+56h], 0
jmp     loc_49C10A

loc_49C27D:
or      ds:byte_5F8421, 10h
mov     edx, [esp+38h+var_1C]
add     edx, 14h
mov     eax, offset byte_5F8364
add     eax, 538h
call    sub_4DDDB4
mov     word ptr ds:dword_5F88A4+2, ax
jmp     short def_49BEA8 ; jumptable 0049BEA8 default case

loc_49C2A2:             ; jumptable 0049BEA8 case 12
mov     eax, [esp+38h+var_1C]
mov     eax, [eax+16h]
sar     eax, 10h
cmp     eax, 0FFFFFE70h
jge     short def_49BEA8 ; jumptable 0049BEA8 default case
mov     eax, [esp+38h+var_1C]
mov     word ptr [eax+56h], 0C00h
jmp     loc_49C10A

loc_49C2C2:             ; jumptable 0049BEA8 case 13
mov     eax, [esp+38h+var_1C]
mov     eax, [eax+12h]
sar     eax, 10h
cmp     eax, 0FFFFF830h
jle     short def_49BEA8 ; jumptable 0049BEA8 default case
mov     eax, [esp+38h+var_1C]
call    sub_4DE2F6
inc     byte ptr [ebp+4]
mov     byte ptr [ebp+5], 0

def_49BEA8:             ; jumptable 0049BEA8 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_49C313
cmp     byte ptr [ebp+4], 1
jnz     short loc_49C313
cmp     byte ptr [ebp+5], 5
jnb     short loc_49C2FD
call    sub_42A9A2

loc_49C2FD:
xor     eax, eax
call    sub_4A0E75
mov     dh, 1
mov     ds:byte_55A68C, dh
add     [ebp+4], dh
mov     byte ptr [ebp+5], 0

loc_49C313:
add     esp, 20h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49BE7B endp




sub_49C31D proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+5]
test    al, al
jbe     short loc_49C334
cmp     al, 1
jz      short loc_49C389
pop     edx
pop     ecx
retn

loc_49C334:
or      ds:byte_5F8421, 10h
cmp     ds:byte_55A68C, 0
jz      short loc_49C37A
mov     word ptr ds:dword_5F889A+2, 0FAECh
mov     word ptr ds:dword_5F889E+2, 692h
mov     ds:dword_5F888C, 0FAEC0000h
mov     ds:dword_5F8894, 6920000h
mov     eax, [edx+24h]
call    sub_4DE2F6
mov     eax, [edx+28h]
call    sub_4DE2F6

loc_49C37A:
mov     word ptr [ecx+542h], 400h
inc     byte ptr [edx+5]
pop     edx
pop     ecx
retn

loc_49C389:
call    sub_4D8EB1
mov     eax, 549h
call    sub_47EA91
mov     eax, 37h ; '7'
call    sub_47E8B8
mov     eax, 18h
call    sub_47EEAE
mov     eax, 2E8h
call    sub_47EE82
mov     eax, ecx
call    sub_4B565A
inc     byte ptr ds:dword_5F836C+2
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     byte ptr [edx], 0
pop     edx
pop     ecx
retn
sub_49C31D endp




sub_49C3D5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_49C3DB[edx*4]
pop     edx
retn
sub_49C3D5 endp




sub_49C3E4 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49C3FA
mov     edx, 78h ; 'x'
xor     eax, eax
call    sub_4A0E24

loc_49C3FA:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_49C416
mov     eax, 9
call    sub_49E0D7
mov     byte ptr [ecx+0Ah], 0
call    sub_49DF64

loc_49C416:
pop     edx
pop     ecx
retn
sub_49C3E4 endp




sub_49C419 proc near
push    ebx
push    edx
mov     edx, eax
cmp     ds:word_6E23D6, 0
jnz     short loc_49C49B
mov     eax, offset unk_52C570
call    sub_49DB4D
mov     word ptr ds:dword_5F889A+2, 0FF00h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 0B00h
mov     ds:dword_5F888C, 0FF000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 0B000000h
mov     word ptr ds:dword_5F88A4+2, 200h
mov     byte ptr [edx+7], 1
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52C584
mov     eax, 1
call    sub_49E0D7
call    sub_49DF64

loc_49C49B:
pop     edx
pop     ebx

locret_49C49D:
retn
sub_49C419 endp




sub_49C49E proc near
cmp     ds:word_6E23D6, 0
jnz     short locret_49C49D
mov     byte ptr [eax+0Ah], 1
jmp     sub_49DF64
sub_49C49E endp




sub_49C4B1 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_49C4D5
mov     edx, 79h ; 'y'
xor     eax, eax
call    sub_4A0E24
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1

loc_49C4D5:
cmp     dword ptr [ecx+10h], 3Dh ; '='
jnz     short loc_49C4E0
call    sub_49DF64

loc_49C4E0:
pop     edx
pop     ecx
retn
sub_49C4B1 endp




sub_49C4E3 proc near
push    edx
mov     edx, eax
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_49C50B
cmp     dword ptr [edx+10h], 0B5h
jle     short loc_49C50B
mov     eax, 9
call    sub_49E0D7
mov     byte ptr [edx+0Ah], 0
call    sub_49DF64

