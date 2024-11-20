cmp     dword ptr [edi+10h], 1Eh
jnz     loc_418AFB
mov     ebx, 0Ah
jmp     loc_4188BE
sub_418949 endp




sub_41899B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4189D9
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+118h], 15h
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ecx
call    sub_418DAC
inc     byte ptr [ecx+0Ah]

loc_4189D9:
cmp     dword ptr [edi+10h], 0F2h
jnz     loc_418AFB
xor     ebx, ebx
jmp     loc_4188BE
sub_41899B endp




sub_4189ED proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_418A1F
mov     word ptr [ecx+14h], 0FFC7h
mov     word ptr [ecx+16h], 1Dh
mov     word ptr [ecx+18h], 0FCAEh
mov     ebx, 0Ch
mov     eax, ecx
call    sub_418DAC
inc     byte ptr [ecx+0Ah]

loc_418A1F:
pop     edx
pop     ecx
pop     ebx
retn
sub_4189ED endp




sub_418A23 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+640h]
mov     edi, offset dword_560BDC
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_418A6C
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+18h], 0FFCEh
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 0Dh
mov     edx, esi
mov     eax, ecx
call    sub_418DAC
inc     byte ptr [ecx+0Ah]

loc_418A6C:
cmp     dword ptr [edi+10h], 78h ; 'x'
jnz     loc_418AFB
mov     ebx, 0Eh
jmp     loc_4188BE
sub_418A23 endp




sub_418A80 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_418AA3
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+118h], 8
inc     byte ptr [ecx+0Ah]

loc_418AA3:
pop     edx
pop     ecx
pop     ebx
retn
sub_418A80 endp




sub_418AA7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset dword_560BDC
lea     edi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_418ADE
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 0Fh
mov     edx, edi
mov     eax, ecx
call    sub_418DAC
inc     byte ptr [ecx+0Ah]

loc_418ADE:
cmp     dword ptr [esi+10h], 4Bh ; 'K'
jnz     short loc_418AE7
inc     byte ptr [ecx+0Dh]

loc_418AE7:
cmp     dword ptr [esi+10h], 5Ch ; '\'
jnz     short loc_418AFB
mov     ebx, 11h

loc_418AF2:
mov     edx, edi

loc_418AF4:
mov     eax, ecx
call    sub_418DAC

loc_418AFB:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_418AA7 endp




sub_418B01 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_418B47
xor     ebx, ebx
mov     edx, 0Ah
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_418DAC
mov     word ptr [ecx+56h], 400h
mov     ds:word_559164, 400h
inc     byte ptr [ecx+0Ah]

loc_418B47:
mov     eax, [edi+10h]
cmp     eax, 10Eh
jb      short loc_418B71
jbe     short loc_418B5C
cmp     eax, 15Eh
jz      short loc_418B63
jmp     short loc_418B71

loc_418B5C:
mov     ebx, 13h
jmp     short loc_418B68

loc_418B63:
mov     ebx, 7

loc_418B68:
mov     edx, esi
mov     eax, ecx
call    sub_418DAC

loc_418B71:
mov     bx, [ecx+56h]
test    bx, bx
jnz     short loc_418B82
mov     word ptr [ecx+56h], 0FF0h
jmp     short loc_418B8B

loc_418B82:
mov     esi, ebx
sub     esi, 10h
mov     [ecx+56h], si

loc_418B8B:
mov     di, ds:word_559164
cmp     di, 1000h
jnz     short loc_418BA4
xor     edx, edx
mov     ds:word_559164, dx
jmp     short loc_418BB1

loc_418BA4:
mov     eax, edi
add     eax, 10h
mov     ds:word_559164, ax

loc_418BB1:
mov     eax, ds:dword_559160+2
sar     eax, 10h
call    sub_4EF003
shl     eax, 7
sar     eax, 0Ch
add     eax, 32h ; '2'
mov     [ecx+14h], ax
mov     eax, ds:dword_559160+2
sar     eax, 10h
call    sub_4EF008
shl     eax, 7
sar     eax, 0Ch
sub     eax, 0FAh
mov     [ecx+18h], ax
jmp     loc_418AFB
sub_418B01 endp




sub_418BEC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset dword_560BDC
lea     edi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_418C3B
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+14h], 28h ; '('
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+18h], 0FF88h
mov     word ptr [ecx+56h], 400h
mov     ebx, 15h
mov     edx, edi
mov     eax, ecx
call    sub_418DAC
inc     byte ptr [ecx+0Ah]

loc_418C3B:
cmp     dword ptr [esi+10h], 0Ah
jge     loc_418AFB
sub     word ptr [ecx+14h], 4
jmp     loc_418AFB
sub_418BEC endp




sub_418C4F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_418CB1
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+14h], 14h
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+18h], 0FFBAh
mov     ebx, 17h
mov     edx, esi
mov     eax, ecx
call    sub_418DAC
mov     eax, ecx
call    sub_4DEADD
inc     byte ptr [ecx+0Ah]

loc_418CB1:
cmp     dword ptr [edi+10h], 8Eh
jnz     short loc_418CC8
mov     ebx, 1Ah
mov     edx, esi
mov     eax, ecx
call    sub_418DAC

loc_418CC8:
cmp     dword ptr [edi+10h], 0A5h
jnz     loc_418AFB
mov     ebx, 17h
jmp     loc_4188BE
sub_418C4F endp




sub_418CDF proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_418CFB
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_418CFB:
pop     edx
pop     ecx
pop     ebx
retn
sub_418CDF endp




sub_418CFF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_418D2D
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_418DAC
inc     byte ptr [ecx+0Ah]

loc_418D2D:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_418CFF endp




sub_418D32 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset dword_560BDC
lea     edi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_418D69
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 18h
mov     edx, edi
mov     eax, ecx
call    sub_418DAC
inc     byte ptr [ecx+0Ah]

loc_418D69:
cmp     dword ptr [esi+10h], 23Ah
jnz     short loc_418D75
inc     byte ptr [ecx+0Dh]

loc_418D75:
cmp     dword ptr [esi+10h], 258h
jnz     loc_418AFB
mov     ebx, 19h
jmp     loc_418AF2
sub_418D32 endp




sub_418D8C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_418DA8
xor     ebx, ebx
mov     edx, 0Fh
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_418DA8:
pop     edx
pop     ecx
pop     ebx
retn
sub_418D8C endp




sub_418DAC proc near
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
mov     ebx, ds:off_50FAC0[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50FB2C[eax*4]
mov     [edx+10h], eax
retn
sub_418DAC endp




sub_418DEC proc near
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
jb      short loc_418E18
jbe     short loc_418E1C
cmp     ax, 7FFFh
jnz     short loc_418E18
mov     word ptr [edx+4], 0
jmp     short loc_418E1C

loc_418E18:
inc     word ptr [esi+4]

loc_418E1C:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_418E61
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

loc_418E61:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_418E8C
jbe     short loc_418E90
cmp     ax, 7FFFh
jnz     short loc_418E8C
mov     word ptr [esi+0Ah], 0
jmp     short loc_418E90

loc_418E8C:
inc     word ptr [esi+0Ah]

loc_418E90:
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
jz      short loc_418EDF
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

loc_418EDF:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_418DEC endp




sub_418EEC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559174, dx
mov     eax, ds:dword_559170
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_418F28:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_418EEC endp




sub_418F34 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_55916C, dx
mov     eax, ds:dword_559168
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_418F28
sub_418F34 endp




sub_418F72 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_559170
test    ecx, ecx
jz      loc_419018
cmp     ds:dword_559168, 0
jz      loc_419018
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_418FD4
jge     short loc_418FAC
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_418FC8

loc_418FAC:
inc     ds:word_559174
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_559170+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_418FD4
add     eax, 4

loc_418FC8:
mov     ds:dword_559170, eax
mov     eax, edx
call    sub_418EEC

loc_418FD4:
mov     eax, ds:dword_559168
mov     di, [eax+2]
test    di, di
jz      short loc_419018
jge     short loc_418FF0
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_41900C

loc_418FF0:
inc     ds:word_55916C
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_559168+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_419018
add     eax, 4

loc_41900C:
mov     ds:dword_559168, eax
mov     eax, edx
call    sub_418F34

loc_419018:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_418F72 endp




sub_41901D proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_55917C
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_419077
cmp     bl, ds:byte_560BE4
jnz     short loc_419077
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_419077
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_419077
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50FC74[eax*4]
mov     ds:dword_559170, eax
mov     eax, edx
call    sub_418EEC
add     ds:dword_55917C, 6

loc_419077:
mov     eax, ds:dword_559178
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_4190BE
cmp     bl, [ecx+8]
jnz     short loc_4190BE
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_4190BE
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_4190BE
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50FD04[eax*4]
mov     ds:dword_559168, eax
mov     eax, edx
call    sub_418F34
add     ds:dword_559178, 6

loc_4190BE:
mov     eax, edx
call    sub_418F72
pop     edx
pop     ecx
pop     ebx
retn
sub_41901D endp




sub_4190C9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
cmp     byte ptr ds:dword_77E7D5+1, 6
jnz     short loc_419111
mov     esi, offset unk_50FDB4
mov     ds:dword_55917C, esi
mov     ds:dword_559178, esi
jmp     short loc_419125

loc_419111:
mov     ds:dword_55917C, offset unk_50FD48
mov     ds:dword_559178, offset unk_50FD5A

loc_419125:
inc     byte ptr [ecx+8]
mov     eax, ecx
call    sub_4192B1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4190C9 endp




sub_419134 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41914D
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41914D:
pop     edx
pop     ecx
pop     ebx
retn
sub_419134 endp




sub_419151 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41916D
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41916D:
pop     edx
pop     ecx
pop     ebx
retn
sub_419151 endp




sub_419171 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41918D
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41918D:
pop     edx
pop     ecx
pop     ebx
retn
sub_419171 endp




sub_419191 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4191AD
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4191AD:
pop     edx
pop     ecx
pop     ebx
retn
sub_419191 endp




sub_4191B1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4191CD
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4191CD:
pop     edx
pop     ecx
pop     ebx
retn
sub_4191B1 endp




sub_4191D1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4191ED
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4191ED:
pop     edx
pop     ecx
pop     ebx
retn
sub_4191D1 endp




sub_4191F1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41920D
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41920D:
pop     edx
pop     ecx
pop     ebx
retn
sub_4191F1 endp




sub_419211 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41922D
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41922D:
pop     edx
pop     ecx
pop     ebx
retn
sub_419211 endp




sub_419231 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41924D
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41924D:
pop     edx
pop     ecx
pop     ebx
retn
sub_419231 endp




sub_419251 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41926D
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41926D:
pop     edx
pop     ecx
pop     ebx
retn
sub_419251 endp




sub_419271 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41928D
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41928D:
pop     edx
pop     ecx
pop     ebx
retn
sub_419271 endp




sub_419291 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4192AD
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4192AD:
pop     edx
pop     ecx
pop     ebx
retn
sub_419291 endp




sub_4192B1 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4192BA[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_4192D9
mov     eax, ecx
call    sub_4DEADD

loc_4192D9:
mov     eax, ecx
call    sub_41901D
pop     edx
pop     ecx
retn
sub_4192B1 endp



; Attributes: thunk

sub_4192E3 proc near
jmp     sub_4DE336
sub_4192E3 endp




sub_4192E8 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4192EE[edx*4]
pop     edx
retn
sub_4192E8 endp




sub_4192F7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_41931A
mov     word ptr [ecx+56h], 0FC80h
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41931A:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_4192F7 endp




sub_41932C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      def_4193C8      ; jumptable 004193C8 default case, case 1
xor     ebx, ebx
mov     edx, 1

loc_419343:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
jmp     def_4193C8      ; jumptable 004193C8 default case, case 1

loc_419352:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      def_4193C8      ; jumptable 004193C8 default case, case 1
xor     ebx, ebx
mov     edx, 2
jmp     short loc_419343

loc_41936B:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short def_4193C8 ; jumptable 004193C8 default case, case 1
mov     word ptr [ecx+56h], 0FC00h
xor     ebx, ebx
mov     edx, 3
jmp     short loc_419343

loc_419386:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short def_4193C8 ; jumptable 004193C8 default case, case 1
xor     ebx, ebx
mov     edx, 4
jmp     short loc_419343
jpt_4193C8 dd offset loc_4193CF ; jump table for switch statement
dd offset def_4193C8
dd offset loc_4193EC
dd offset loc_4193F5
dd offset loc_4193FE
dd offset loc_419407
dd offset loc_419410

loc_4193B7:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      short def_4193C8 ; jumptable 004193C8 default case, case 1
and     eax, 0FFh
jmp     jpt_4193C8[eax*4] ; switch jump

loc_4193CF:             ; jumptable 004193C8 case 0
xor     ebx, ebx
mov     edx, 5

loc_4193D6:
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 1

def_4193C8:             ; jumptable 004193C8 default case, case 1
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx

locret_4193EB:
retn

loc_4193EC:             ; jumptable 004193C8 case 2
xor     ebx, ebx
mov     edx, 6
jmp     short loc_4193D6

loc_4193F5:             ; jumptable 004193C8 case 3
xor     ebx, ebx
mov     edx, 7
jmp     short loc_4193D6

loc_4193FE:             ; jumptable 004193C8 case 4
xor     ebx, ebx
mov     edx, 8
jmp     short loc_4193D6

loc_419407:             ; jumptable 004193C8 case 5
xor     ebx, ebx
mov     edx, 9
jmp     short loc_4193D6

loc_419410:             ; jumptable 004193C8 case 6
xor     ebx, ebx
mov     edx, 0Ah
jmp     short loc_4193D6
sub_41932C endp




sub_419419 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_41942F
jbe     short loc_41944A
cmp     al, 2
jz      short loc_41945C
pop     edx
pop     ecx
pop     ebx
retn

loc_41942F:
test    al, al
jnz     short loc_419463
mov     word ptr [ecx+56h], 0FE00h
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41944A:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_41945C:
mov     eax, ecx
call    sub_4DEADD

loc_419463:
pop     edx
pop     ecx
pop     ebx
retn
sub_419419 endp




sub_419467 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_41947D
jbe     short loc_419492
cmp     al, 2
jz      short loc_4194A4
pop     edx
pop     ecx
pop     ebx
retn

loc_41947D:
test    al, al
jnz     short loc_4194AB
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_419492:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_4194A4:
mov     eax, ecx
call    sub_4DEADD

loc_4194AB:
pop     edx
pop     ecx
pop     ebx
retn
sub_419467 endp




sub_4194AF proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4194C5
jbe     short loc_4194E0
cmp     al, 2
jz      short loc_4194F2
pop     edx
pop     ecx
pop     ebx
retn

loc_4194C5:
test    al, al
jnz     short loc_4194F9
mov     word ptr [ecx+56h], 0FD00h
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4194E0:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_4194F2:
mov     eax, ecx
call    sub_4DEADD

loc_4194F9:
pop     edx
pop     ecx
pop     ebx
retn
sub_4194AF endp




sub_4194FD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_419511
cmp     al, 1
jz      short loc_419528
pop     edx
pop     ecx
pop     ebx
retn

loc_419511:
mov     word ptr [ecx+56h], 0FD00h
xor     ebx, ebx
mov     edx, 0Eh
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_419528:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_4194FD endp




sub_419533 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_419547
cmp     al, 1
jz      short loc_41955E
pop     edx
pop     ecx
pop     ebx
retn

loc_419547:
mov     word ptr [ecx+56h], 480h
xor     ebx, ebx
mov     edx, 0Fh
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41955E:
mov     eax, ecx
call    sub_4DEADD
sub     word ptr [ecx+14h], 2
pop     edx
pop     ecx
pop     ebx
retn
sub_419533 endp




sub_41956E proc near
push    edx
mov     edx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_41957E
cmp     al, 1
jz      short loc_41958E
pop     edx
retn

loc_41957E:
mov     word ptr [edx+14h], 0FB1Eh
mov     eax, edx
call    sub_4DEADD
inc     byte ptr [edx+0Ah]

loc_41958E:
mov     eax, edx
call    sub_4DEADD
dec     word ptr [edx+14h]
pop     edx
retn
sub_41956E endp




sub_41959B proc near
push    edx
mov     edx, eax
call    sub_4DFC52
mov     eax, edx
call    sub_4DF795
pop     edx
retn
sub_41959B endp




sub_4195AC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4195C0
cmp     al, 1
jz      short loc_4195D1
pop     edx
pop     ecx
pop     ebx
retn

loc_4195C0:
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4195D1:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_4195AC endp

db 8Dh, 40h, 0
jpt_419600 dd offset loc_419607 ; jump table for switch statement
dd offset loc_419629
dd offset loc_419632
dd offset loc_41963B



sub_4195EF proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      short def_419600 ; jumptable 00419600 default case
and     eax, 0FFh
jmp     jpt_419600[eax*4] ; switch jump

loc_419607:             ; jumptable 00419600 case 0
mov     word ptr [ecx+14h], 0F510h
mov     word ptr [ecx+56h], 0FC00h
xor     ebx, ebx
mov     edx, 11h

loc_41961A:
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_419629:             ; jumptable 00419600 case 1
xor     ebx, ebx
mov     edx, 12h
jmp     short loc_41961A

loc_419632:             ; jumptable 00419600 case 2
xor     ebx, ebx
mov     edx, 13h
jmp     short loc_41961A

loc_41963B:             ; jumptable 00419600 case 3
mov     eax, ecx
call    sub_4DEADD

def_419600:             ; jumptable 00419600 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4195EF endp




sub_419646 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_41964C[edx*4]
pop     edx
retn
sub_419646 endp




sub_419655 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
lea     ebp, [eax+640h]
mov     [esp+1Ch+var_1C], offset dword_560BDC
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
cmp     byte ptr [ecx+8], 0
jnz     short loc_4196FC
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 0
mov     word ptr [ebp+0], 0
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_419C3B
mov     ebx, 1Bh
mov     edx, ebp
mov     eax, ecx
call    sub_419C22
inc     byte ptr [ecx+8]

loc_4196FC:
mov     eax, ecx
call    sub_419646
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+8]
cmp     al, 6
jb      short loc_419745
jbe     loc_419925
cmp     al, 9
jb      short loc_419738
jbe     loc_419AD6
cmp     al, 0Fh
jb      loc_419C0B
jbe     loc_419B5B
cmp     al, 11h
jz      loc_419BCC
jmp     loc_419C0B

loc_419738:
cmp     al, 7
jbe     loc_4199E9
jmp     loc_419A12

loc_419745:
cmp     al, 1
jb      short loc_41976A
jbe     loc_419849
cmp     al, 3
jb      loc_419C0B
jbe     loc_41989F
cmp     al, 4
jz      loc_4198C4
jmp     loc_419C0B

loc_41976A:
test    al, al
jnz     loc_419C0B
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_419786
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_419C3B

loc_419786:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_41979A
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_41979A:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 46h ; 'F'
jnz     short loc_4197AE
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_4197AE:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 5Ah ; 'Z'
jnz     short loc_4197C2
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_4197C2:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 6Eh ; 'n'
jnz     short loc_4197D6
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_4197D6:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 82h
jnz     short loc_4197ED
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_4197ED:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 96h
jnz     short loc_419804
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_419804:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 0D2h
jnz     short loc_41981B
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_41981B:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 0E6h
jnz     short loc_419832
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_419832:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 0FAh
jnz     loc_419C0B
xor     ebx, ebx
jmp     loc_419C02

loc_419849:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_41985D
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_41985D:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_419871
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_419871:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1Eh
jnz     loc_419C0B
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_419C22
mov     ebx, 2

loc_419891:
mov     edx, ebp
mov     eax, ecx
call    sub_419C3B
jmp     loc_419C0B

loc_41989F:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     loc_419C0B
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_419C3B

loc_4198BA:
mov     ebx, 2
jmp     loc_419C02

loc_4198C4:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_4198E9
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_419C22
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_419C3B

loc_4198E9:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_419900
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_419900:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 14h
jnz     loc_419C0B
mov     ebx, 4
mov     edx, ebp
mov     eax, ecx
call    sub_419C22
mov     ebx, 4
jmp     loc_419891

loc_419925:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_41993C
mov     ebx, 5
mov     edx, ebp
mov     eax, ecx
call    sub_419C3B

loc_41993C:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 14h
jnz     short loc_419953
mov     ebx, 6
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_419953:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_41996A
mov     ebx, 11h
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_41996A:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 5Ah ; 'Z'
jnz     short loc_419981
mov     ebx, 11h
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_419981:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 0C8h
jnz     short loc_41999B
mov     ebx, 12h
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_41999B:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 118h
jnz     short loc_4199B5
mov     ebx, 12h
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_4199B5:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 145h
jnz     short loc_4199CF
mov     ebx, 13h
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_4199CF:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 186h
jnz     loc_419C0B
mov     ebx, 14h
jmp     loc_419C02

loc_4199E9:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_419A00
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_419C3B

loc_419A00:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 5
jnz     loc_419C0B
jmp     loc_4198BA

loc_419A12:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_419A29
mov     ebx, 6
mov     edx, ebp
mov     eax, ecx
call    sub_419C3B

loc_419A29:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 5
jnz     short loc_419A40
mov     ebx, 7
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_419A40:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 14h
jnz     short loc_419A57
mov     ebx, 8
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_419A57:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 46h ; 'F'
jnz     short loc_419A6E
mov     ebx, 15h
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_419A6E:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 0AAh
jnz     short loc_419A88
mov     ebx, 16h
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_419A88:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 0FAh
jnz     short loc_419AA2
mov     ebx, 17h
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_419AA2:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 12Ch
jnz     short loc_419ABC
mov     ebx, 17h
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_419ABC:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 17Ch
jnz     loc_419C0B
mov     ebx, 18h
jmp     loc_419C02

loc_419AD6:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_419AFB
mov     ebx, 9
mov     edx, ebp
mov     eax, ecx
call    sub_419C22
mov     ebx, 7
mov     edx, ebp
mov     eax, ecx
call    sub_419C3B

loc_419AFB:
mov     eax, [esp+1Ch+var_1C]
mov     edx, [eax+10h]
cmp     edx, 0Ah
jnz     short loc_419B11
mov     ebx, edx
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_419B11:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 20h ; ' '
jnz     short loc_419B36
mov     ebx, 0Ch
mov     edx, ebp
mov     eax, ecx
call    sub_419C22
mov     ebx, 8
mov     edx, ebp
mov     eax, ecx
call    sub_419C3B

loc_419B36:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     loc_419C0B
mov     ebx, 0Dh
mov     edx, ebp
mov     eax, ecx
call    sub_419C22
mov     ebx, 9
jmp     loc_419891

loc_419B5B:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_419B80
mov     ebx, 0Ch
mov     edx, ebp
mov     eax, ecx
call    sub_419C22
mov     ebx, 7
mov     edx, ebp
mov     eax, ecx
call    sub_419C3B

loc_419B80:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 28h ; '('
jnz     short loc_419BA5
mov     ebx, 0Eh
mov     edx, ebp
mov     eax, ecx
call    sub_419C22
mov     ebx, 0Ah
mov     edx, ebp
mov     eax, ecx
call    sub_419C3B

loc_419BA5:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 46h ; 'F'
jnz     short loc_419BBC
mov     ebx, 0Eh
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_419BBC:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 6Eh ; 'n'
jnz     short loc_419C0B
mov     ebx, 1Ah
jmp     short loc_419C02

loc_419BCC:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_419BF1
mov     ebx, 0Fh
mov     edx, ebp
mov     eax, ecx
call    sub_419C22
mov     ebx, 0Bh
mov     edx, ebp
mov     eax, ecx
call    sub_419C3B

loc_419BF1:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 0E6h
jnz     short loc_419C0B
mov     ebx, 5

loc_419C02:
mov     edx, ebp
mov     eax, ecx
call    sub_419C22

loc_419C0B:
mov     edx, ebp
mov     eax, ecx
call    sub_419C54
inc     word ptr [ebp+0]
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_419655 endp




sub_419C22 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_510251[ebx*4]
mov     [edx+8], eax
retn
sub_419C22 endp




sub_419C3B proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_5102C1[ebx*4]
mov     [edx+4], eax
retn
sub_419C3B endp




sub_419C54 proc near
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
jb      short loc_419C79
jbe     short loc_419C7C
cmp     al, 7Fh
jnz     short loc_419C79
mov     byte ptr [edx+0Eh], 0
jmp     short loc_419C7C

loc_419C79:
inc     byte ptr [esi+0Eh]

loc_419C7C:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_419CBE
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

loc_419CBE:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_419CE1
jbe     short loc_419CE4
cmp     al, 7Fh
jnz     short loc_419CE1
mov     byte ptr [esi+11h], 0
jmp     short loc_419CE4

loc_419CE1:
inc     byte ptr [esi+11h]

loc_419CE4:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_419D26
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

loc_419D26:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_419C54 endp




sub_419D31 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_55918C, dx
mov     eax, ds:dword_559188
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_419D6D:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_419D31 endp




sub_419D79 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559184, dx
mov     eax, ds:dword_559180
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_419D6D
sub_419D79 endp




sub_419DB7 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_559188
test    ecx, ecx
jz      loc_419E5D
cmp     ds:dword_559180, 0
jz      loc_419E5D
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_419E19
jge     short loc_419DF1
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_419E0D

loc_419DF1:
inc     ds:word_55918C
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_559188+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_419E19
add     eax, 4

loc_419E0D:
mov     ds:dword_559188, eax
mov     eax, edx
call    sub_419D31

loc_419E19:
mov     eax, ds:dword_559180
mov     di, [eax+2]
test    di, di
jz      short loc_419E5D
jge     short loc_419E35
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_419E51

loc_419E35:
inc     ds:word_559184
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_559180+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_419E5D
add     eax, 4

loc_419E51:
mov     ds:dword_559180, eax
mov     eax, edx
call    sub_419D79

loc_419E5D:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_419DB7 endp




sub_419E62 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_559194
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_419EBC
cmp     bl, ds:byte_560BE4
jnz     short loc_419EBC
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_419EBC
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_419EBC
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_51041C[eax*4]
mov     ds:dword_559188, eax
mov     eax, edx
call    sub_419D31
add     ds:dword_559194, 6

loc_419EBC:
mov     eax, ds:dword_559190
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_419F03
cmp     bl, [ecx+8]
jnz     short loc_419F03
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_419F03
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_419F03
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_51041C[eax*4]
mov     ds:dword_559180, eax
mov     eax, edx
call    sub_419D79
add     ds:dword_559190, 6

loc_419F03:
mov     eax, edx
call    sub_419DB7
pop     edx
pop     ecx
pop     ebx
retn
sub_419E62 endp




sub_419F0E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     edx, offset unk_510450
mov     ds:dword_559194, edx
mov     ebx, edx
mov     ds:dword_559190, edx
xor     ebx, edx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_419F0E endp




sub_419F53 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_419F6F
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_419F6F:
pop     edx
pop     ecx
pop     ebx
retn
sub_419F53 endp




sub_419F73 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_419F8F
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_419F8F:
pop     edx
pop     ecx
pop     ebx
retn
sub_419F73 endp




sub_419F93 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_419FA9
cmp     al, 1
jz      short loc_419FC3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_419FA9:
mov     byte ptr [esi+0Ch], 0
xor     ebx, ebx
mov     edx, 3
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_419FC3:
mov     ah, [esi+0Ch]
add     ah, al
mov     [esi+0Ch], ah
cmp     ah, 18h
jnz     short loc_419FD3
add     [esi+0Ah], al

loc_419FD3:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1Ah
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_419F93 endp




sub_419FE8 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41A004
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41A004:
pop     edx
pop     ecx
pop     ebx
retn
sub_419FE8 endp




sub_41A008 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41A024
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41A024:
pop     edx
pop     ecx
pop     ebx
retn
sub_41A008 endp




sub_41A028 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41A044
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41A044:
pop     edx
pop     ecx
pop     ebx
retn
sub_41A028 endp




sub_41A048 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41A064
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41A064:
pop     edx
pop     ecx
pop     ebx
retn
sub_41A048 endp




sub_41A068 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_41A07C
cmp     al, 1
jz      short loc_41A085
pop     edx
pop     ecx
pop     ebx
retn

loc_41A07C:
xor     ebx, ebx
mov     edx, 8
jmp     short loc_41A097

loc_41A085:
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 4
jnz     short loc_41A0A1
xor     ebx, ebx
mov     edx, 9

loc_41A097:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41A0A1:
pop     edx
pop     ecx
pop     ebx
retn
sub_41A068 endp




sub_41A0A5 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_41A0B9
cmp     al, 1
jz      short loc_41A0C2
pop     edx
pop     ecx
pop     ebx
retn

loc_41A0B9:
xor     ebx, ebx
mov     edx, 0Ah
jmp     short loc_41A0D4

loc_41A0C2:
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 1Fh
jnz     short loc_41A0DE
xor     ebx, ebx
mov     edx, 0Bh

loc_41A0D4:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41A0DE:
pop     edx
pop     ecx
pop     ebx
retn
sub_41A0A5 endp




sub_41A0E2 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_41A0EB[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_41A10A
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_41A10A:
mov     eax, ecx
call    sub_419E62
pop     edx
pop     ecx
retn
sub_41A0E2 endp




sub_41A114 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_41A124
mov     eax, edx
call    sub_419F0E

loc_41A124:
mov     eax, edx
call    sub_41A0E2
pop     edx
retn
sub_41A114 endp




sub_41A12D proc near
push    ecx
push    edx
lea     edx, [eax+430h]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_41A13A[ecx*4]
mov     dword ptr [edx+0E4h], 0
mov     dword ptr [edx+98h], 0
mov     dword ptr [edx+18h], 0
mov     dword ptr [edx+2Ch], 0
mov     dword ptr [edx+70h], 0
mov     dword ptr [edx+84h], 0
pop     edx
pop     ecx
retn
sub_41A12D endp




sub_41A177 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+430h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2800280h
mov     dword ptr [ecx+15Ch], 280h
mov     word ptr [ecx+15Eh], 0
xor     ebx, ebx

loc_41A1B7:
mov     eax, ebx
mov     word ptr [ecx+eax*8+196h], 4210h
inc     ebx
cmp     ebx, 9
jl      short loc_41A1B7
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     byte ptr [ecx+0Dh], 0
mov     word ptr [esi], 467Ch
mov     word ptr [esi+0D8h], 0
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
lea     eax, [esi+38h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     word ptr [esi+0Ch], 0
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_4E1877
mov     [esi+60h], eax
mov     dword ptr [esi+64h], 0
mov     byte ptr [esi+0Eh], 0
mov     dword ptr [esi+0A4h], 0
mov     dword ptr [esi+0ACh], 0
mov     byte ptr [esi+0Fh], 0
mov     dword ptr [esi+0CCh], 0
mov     dword ptr [esi+0B4h], 0
mov     dword ptr [esi+0E4h], 0
mov     dword ptr [esi+0E8h], 0
mov     dword ptr [esi+98h], 0
mov     dword ptr [esi+9Ch], 0
mov     ax, [ecx+0B0h]
mov     [esi+0A2h], ax
mov     [esi+0A0h], ax
mov     word ptr [esi+0DCh], 0
mov     dword ptr [esi+0E0h], offset unk_5104F8
xor     ebx, ebx

loc_41A2B6:
mov     edx, ebx
mov     eax, ebx
shl     eax, 2
add     eax, ebx
mov     dword ptr [esi+eax*4+18h], 0
mov     dword ptr [esi+eax*4+1Ch], 0
mov     dword ptr [esi+eax*4+70h], 0
mov     dword ptr [esi+eax*4+74h], 0
xor     edx, ebx
mov     dl, [ecx+2]
mov     edi, ds:dword_55A108
mov     edx, [edi+edx*4]
mov     dl, [edx+0Ah]
xor     dh, dh
shl     edx, 5
mov     [esi+eax*4+22h], dx
mov     [esi+eax*4+20h], dx
movzx   edi, byte ptr [ecx+2]
mov     edx, ds:dword_55A108
mov     edx, [edx+edi*4]
mov     dl, [edx+0Bh]
xor     dh, dh
shl     edx, 5
mov     [esi+eax*4+7Ah], dx
mov     [esi+eax*4+78h], dx
inc     ebx
cmp     ebx, 2
jl      short loc_41A2B6
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 5
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_51054E
mov     dword ptr [ecx+10h], 0
mov     al, [ecx+3]
test    al, al
jbe     short loc_41A367
cmp     al, 1
jz      short loc_41A386
jmp     short loc_41A3B7

loc_41A367:
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Eh], 0
jmp     short loc_41A3AE

loc_41A386:
mov     [ecx+8], al
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     bl, [ecx+0A4h]
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B
or      byte ptr [esi+1], 20h

loc_41A3AE:
mov     word ptr [esi+0DAh], 0FFFFh

loc_41A3B7:
call    sub_4DDF54
test    eax, eax
jz      short loc_41A3F7
mov     [esi+0D0h], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 31h ; '1'
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
lea     edi, [eax+14h]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [eax+1Ch]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+54h]
lea     esi, [ecx+54h]
movsd
movsd
mov     dl, [ecx+1]
mov     [eax+0Ch], dl
jmp     short loc_41A3FE

loc_41A3F7:
mov     eax, ecx
call    sub_4DE336

loc_41A3FE:
mov     eax, ecx
call    sub_41A40A
jmp     loc_41A966
sub_41A177 endp




sub_41A40A proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+430h]
mov     ecx, offset byte_5F8364
mov     al, [eax+0ACh]
mov     edx, [esp+1Ch+var_1C]
mov     [edx+0ADh], al
mov     edi, edx
lea     edi, [edi+2Ch]
mov     esi, edx
lea     esi, [esi+14h]
movsd
movsd
mov     edi, edx
lea     edi, [edi+34h]
mov     esi, edx
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     edi, edx
lea     edi, [edi+5Ch]
mov     esi, edx
lea     esi, [esi+54h]
movsd
movsd
test    byte ptr [ebp+1], 40h
jz      short loc_41A474
xor     edx, edx
mov     ebx, [esp+1Ch+var_1C]

loc_41A45C:
mov     eax, edx
shl     eax, 3
add     eax, ebx
mov     word ptr [eax+196h], 4210h
inc     edx
cmp     edx, 9
jl      short loc_41A45C
jmp     short loc_41A47D

loc_41A474:
mov     word ptr [edx+15Eh], 4210h

loc_41A47D:
mov     eax, [ebp+0D0h]
mov     word ptr [eax+15Eh], 4210h
call    rand_
mov     [ebp+2], ax
call    sub_436700
test    byte ptr [ebp+0], 40h
jz      short loc_41A4A8
mov     eax, [esp+1Ch+var_1C]
call    sub_41B730

loc_41A4A8:
test    byte ptr [ebp+1], 10h
jz      short loc_41A4E6
push    800h
mov     eax, [ecx+54h]
sar     eax, 10h
push    eax
add     ecx, 14h
mov     edx, [esp+24h+var_1C]
mov     edx, [edx+54h]
sar     edx, 10h
mov     eax, [esp+24h+var_1C]
add     eax, 14h
mov     ebx, 20h ; ' '
call    sub_4DE6D6
test    eax, eax
jz      short loc_41A4E6
and     word ptr [ebp+0], 0EFFDh
or      byte ptr [ebp+0], 2

loc_41A4E6:
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+56h]
sub     eax, 2
and     ah, 0Fh
mov     edx, [esp+1Ch+var_1C]
mov     [edx+56h], ax
mov     eax, [ebp+0CCh]
mov     edx, eax
inc     eax
mov     [ebp+0CCh], eax
mov     eax, dword ptr ds:unk_564C32[edx*2]
sar     eax, 10h
sar     eax, 8
dec     eax
mov     edx, [esp+1Ch+var_1C]
mov     [edx+16h], ax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
and     dword ptr [ebp+0CCh], 3Fh
xor     edx, edx
mov     eax, [esp+1Ch+var_1C]
mov     dl, [eax+9]
call    ds:funcs_41A539[edx*4]
xor     edx, edx
jmp     short loc_41A54A

loc_41A544:
inc     edx
cmp     edx, 2
jge     short loc_41A579

loc_41A54A:
mov     [ebp+0Eh], dl
mov     cl, dl
mov     eax, 10h
shl     eax, cl
mov     ecx, eax
xor     eax, eax
mov     ax, [ebp+0]
test    eax, ecx
jz      short loc_41A544
mov     eax, edx
xor     ecx, ecx
mov     cl, [ebp+eax*8+0A4h]
mov     eax, [esp+1Ch+var_1C]
call    ds:funcs_41A570[ecx*4]
jmp     short loc_41A544

loc_41A579:
test    byte ptr [ebp+0], 2
jz      short loc_41A591
xor     edx, edx
mov     dl, [ebp+0BCh]
mov     eax, [esp+1Ch+var_1C]
call    ds:funcs_41A58A[edx*4]

loc_41A591:
test    byte ptr [ebp+1], 4
jz      short loc_41A5A9
xor     edx, edx
mov     dl, [ebp+0B4h]
mov     eax, [esp+1Ch+var_1C]
call    ds:funcs_41A5A2[edx*4]

loc_41A5A9:
test    byte ptr [ebp+0], 1
jz      short loc_41A5DA
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+9]
test    al, al
jbe     short loc_41A5BD
cmp     al, 2
jmp     short loc_41A5C6

loc_41A5BD:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 2
jmp     short loc_41A5CD

loc_41A5C6:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 0

loc_41A5CD:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+0Ah], 0
and     byte ptr [ebp+0], 0FEh

loc_41A5DA:
mov     bx, [ebp+0Ch]
test    bx, bx
jz      short loc_41A5EA
mov     ecx, ebx
dec     ecx
mov     [ebp+0Ch], cx

loc_41A5EA:
mov     si, [ebp+0Ah]
test    si, si
jz      short loc_41A5FA
mov     edi, esi
dec     edi
mov     [ebp+0Ah], di

loc_41A5FA:
test    byte ptr [ebp+1], 2
jz      short loc_41A64B
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+0ADh]
mov     edx, [esp+1Ch+var_1C]
cmp     al, [edx+0ACh]
jz      short loc_41A628
xor     edx, edx
mov     eax, [esp+1Ch+var_1C]
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE9BA
jmp     short loc_41A62F

loc_41A628:
mov     eax, edx
call    sub_4DEB53

loc_41A62F:
mov     ax, [ebp+0A8h]
mov     ds:word_560E4E, ax
mov     ax, [ebp+0B0h]
mov     ds:word_560E46, ax
jmp     short loc_41A653

loc_41A64B:
mov     eax, [esp+1Ch+var_1C]
call    sub_4DFC52

loc_41A653:
mov     eax, [esp+1Ch+var_1C]
call    sub_4DF795
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1
mov     eax, [esp+1Ch+var_1C]
call    sub_432697
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      loc_41A890
test    byte ptr [ebp+0], 2
jz      loc_41A75A
mov     eax, [ebp+0D0h]
or      byte ptr [eax], 2
mov     esi, [ebp+0D0h]
lea     edi, [esi+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+14h]
movsd
movsd
mov     esi, [ebp+0D0h]
lea     edi, [esi+1Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     eax, [ebp+0D0h]
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+56h]
mov     [eax+56h], dx
mov     eax, ds:dword_51055C
sar     eax, 10h
shl     eax, 4
push    eax
mov     eax, ds:dword_510558+2
sar     eax, 10h
shl     eax, 4
push    eax
mov     ecx, ds:dword_510558
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [esp+24h+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     eax, [ebp+0D0h]
lea     edx, [eax+1Ch]
add     eax, 14h
call    sub_4DD4C5
mov     esi, [ebp+0D0h]
lea     edi, [ebp+90h]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [ebp+0D0h]
mov     ax, [eax+16h]
sub     eax, 40h ; '@'
mov     [ebp+92h], ax
push    80h
push    0
push    4080000h
lea     eax, [ebp+98h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+90h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 60h ; '`'
call    sub_4E01FC
jmp     short loc_41A787

loc_41A75A:
mov     eax, [ebp+0D0h]
and     byte ptr [eax], 0FDh
mov     esi, [ebp+0D0h]
lea     edi, [esi+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+14h]
movsd
movsd
mov     esi, [ebp+0D0h]
lea     edi, [esi+1Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd

loc_41A787:
test    byte ptr [ebp+0], 4
jz      short loc_41A7C6
lea     edi, [ebp+10h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1B0h]
movsd
movsd
push    0
push    0
push    4080000h
lea     eax, [ebp+18h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+10h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A0h
call    sub_4E01FC

loc_41A7C6:
test    byte ptr [ebp+0], 8
jz      short loc_41A805
lea     edi, [ebp+24h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1C0h]
movsd
movsd
push    0
push    0
push    4080000h
lea     eax, [ebp+2Ch]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+24h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A0h
call    sub_4E01FC

loc_41A805:
test    byte ptr [ebp+0], 10h
jz      short loc_41A849
lea     edi, [ebp+68h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1D0h]
movsd
movsd
push    0
push    0
push    4080000h
sub     word ptr [ebp+6Ah], 40h ; '@'
lea     eax, [ebp+70h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+68h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 60h ; '`'
call    sub_4E01FC

loc_41A849:
test    byte ptr [ebp+0], 20h
jz      short loc_41A890
lea     edi, [ebp+7Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1C8h]
movsd
movsd
push    0
push    0
push    4080000h
sub     word ptr [ebp+7Eh], 40h ; '@'
lea     eax, [ebp+84h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+7Ch]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 60h ; '`'
call    sub_4E01FC

loc_41A890:
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0Eh], 0
jz      loc_41A95A
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_41A95A
test    byte ptr [ebp+0D8h], 8
jnz     short loc_41A8D6
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0Dh], 4
jl      short loc_41A8D6
or      byte ptr [ebp+0D8h], 0Fh
mov     edx, 10h
mov     eax, 4
call    sub_4A0E24
and     byte ptr [ebp+1], 0DFh

loc_41A8D6:
mov     bh, [ebp+0D8h]
test    bh, 4
jnz     short loc_41A904
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0Dh], 3
jnz     short loc_41A904
mov     ch, bh
or      ch, 7
mov     [ebp+0D8h], ch
mov     edx, 0Eh
mov     eax, 4
call    sub_4A0E24

loc_41A904:
test    byte ptr [ebp+0D8h], 2
jnz     short loc_41A92C
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0Dh], 1
jnz     short loc_41A92C
or      byte ptr [ebp+0D8h], 3
mov     edx, 0Ah
mov     eax, 4
call    sub_4A0E24

loc_41A92C:
mov     bl, [ebp+0D8h]
test    bl, 1
jnz     short loc_41A95A
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_41A95A
mov     cl, bl
or      cl, 1
mov     [ebp+0D8h], cl
mov     edx, 0Dh
mov     eax, 4
call    sub_4A0E24

loc_41A95A:
mov     eax, [esp+1Ch+var_1C]
call    sub_41BC7F

loc_41A962:
add     esp, 4

loc_41A965:
pop     ebp

loc_41A966:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41A40A endp




sub_41A96C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+430h]
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
test    byte ptr [edx+1], 40h
jz      short loc_41A9BC
xor     eax, eax

loc_41A9A8:
mov     ecx, eax
mov     word ptr [ebp+ecx*8+196h], 4210h
inc     eax
cmp     eax, 9
jl      short loc_41A9A8
jmp     short loc_41A9C5

loc_41A9BC:
mov     word ptr [ebp+15Eh], 4210h

loc_41A9C5:
mov     eax, [edx+0D0h]
mov     word ptr [eax+15Eh], 4210h
call    rand_
mov     [edx+2], ax
call    sub_436700
mov     eax, [edx+0CCh]
mov     ecx, eax
inc     eax
mov     [edx+0CCh], eax
mov     ecx, dword ptr ds:unk_564C32[ecx*2]
sar     ecx, 10h
sar     ecx, 8
mov     eax, [edx+0D8h]
sar     eax, 10h
add     eax, ecx
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
and     dword ptr [edx+0CCh], 3Fh
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_41A539[ecx*4]
test    byte ptr [edx+1], 4
jz      short loc_41AA45
xor     ecx, ecx
mov     cl, [edx+0B4h]
mov     eax, ebp
call    ds:funcs_41A5A2[ecx*4]

loc_41AA45:
test    byte ptr [edx], 1
jz      short loc_41AA70
mov     al, [ebp+9]
cmp     al, 1
jb      short loc_41AA67
jbe     short loc_41AA59
cmp     al, 3
jz      short loc_41AA5F
jmp     short loc_41AA67

loc_41AA59:
mov     byte ptr [ebp+9], 3
jmp     short loc_41AA67

loc_41AA5F:
mov     byte ptr [ebp+8], 0
mov     byte ptr [ebp+3], 1

loc_41AA67:
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_41AA70:
mov     bx, [edx+0Ch]
test    bx, bx
jz      short loc_41AA80
mov     ecx, ebx
dec     ecx
mov     [edx+0Ch], cx

loc_41AA80:
mov     si, [edx+0Ah]
test    si, si
jz      short loc_41AA90
mov     edi, esi
dec     edi
mov     [edx+0Ah], di

loc_41AA90:
test    byte ptr [edx+1], 2
jz      short loc_41AABE
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_41AAB5
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_41AAC5

loc_41AAB5:
mov     eax, ebp
call    sub_4DEB53
jmp     short loc_41AAC5

loc_41AABE:
mov     eax, ebp
call    sub_4DFC52

loc_41AAC5:
mov     eax, ebp
call    sub_4DF795
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1
mov     eax, ebp
call    sub_432697
mov     eax, ebp
call    sub_41BC7F
jmp     loc_41A965
sub_41A96C endp




sub_41AAE8 proc near
push    edx
lea     edx, [eax+430h]
call    sub_4DE336
mov     eax, [edx+0D0h]
call    sub_4DE2F6
pop     edx
retn
sub_41AAE8 endp




sub_41AB01 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_41AB15
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_41AB15:
pop     edx
retn
sub_41AB01 endp




sub_41AB17 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+430h]
mov     edx, offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_41AB36
cmp     al, 1
jz      short loc_41AB53
jmp     short loc_41AB8E

loc_41AB36:
inc     al
mov     [edi+0Ah], al
mov     byte ptr [edi+0ACh], 3
mov     ah, [esi+1]
or      ah, 2
mov     [esi+1], ah
mov     bl, ah
and     bl, 0FBh
mov     [esi+1], bl

loc_41AB53:
mov     bh, [esi]
test    bh, 0Ch
jz      short loc_41AB85
push    800h
mov     eax, [edx+54h]
sar     eax, 10h
push    eax
lea     ecx, [edx+14h]
mov     edx, [edi+54h]
sar     edx, 10h
lea     eax, [edi+14h]
mov     ebx, 100h
call    sub_4DE6D6
test    eax, eax
jz      short loc_41AB8E
or      byte ptr [esi], 1
jmp     short loc_41AB8E

loc_41AB85:
test    bh, 3Ch
jnz     short loc_41AB8E
or      byte ptr [esi+1], 4

loc_41AB8E:
test    byte ptr [esi], 4
jz      short loc_41ABA9
cmp     byte ptr [edi+0A6h], 1
jnz     short loc_41ABA9
lea     edx, [edi+14h]
mov     eax, 143h
call    sub_4D8BC3

loc_41ABA9:
test    byte ptr [esi], 8
jz      loc_41A966
cmp     byte ptr [edi+0A6h], 2
jnz     loc_41A966
lea     edx, [edi+14h]
mov     eax, 146h

loc_41ABC7:
call    sub_4D8BC3
jmp     loc_41A966
sub_41AB17 endp

jpt_41AC02 dd offset loc_41AC09 ; jump table for switch statement
dd offset loc_41AC12
dd offset loc_41AC4D
dd offset loc_41ACFC



sub_41ABE1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+430h]
mov     ebx, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_41AC02      ; jumptable 0041AC02 default case
xor     edx, edx
mov     dl, al
jmp     jpt_41AC02[edx*4] ; switch jump

loc_41AC09:             ; jumptable 0041AC02 case 0
inc     al
mov     [esi+0Ah], al
or      byte ptr [edi+1], 6

loc_41AC12:             ; jumptable 0041AC02 case 1
mov     ax, [edi]
xor     ah, ah
and     al, 0Ch
cmp     ax, 0Ch
jnz     short loc_41AC30
mov     al, [edi+0Fh]
inc     al
mov     [esi+0ACh], al
xor     byte ptr [edi+0Fh], 1
jmp     short loc_41AC45

loc_41AC30:
test    byte ptr [edi], 4
jz      short loc_41AC3E
mov     byte ptr [esi+0ACh], 1
jmp     short loc_41AC45

loc_41AC3E:
mov     byte ptr [esi+0ACh], 2

loc_41AC45:
inc     byte ptr [esi+0Ah]
jmp     def_41AC02      ; jumptable 0041AC02 default case

loc_41AC4D:             ; jumptable 0041AC02 case 2
mov     eax, [esi+0A3h]
sar     eax, 18h
mov     edx, eax
and     edx, 0F0h
sar     edx, 4
test    al, 0F0h
jz      def_41AC02      ; jumptable 0041AC02 default case
call    sub_4DE13B
test    eax, eax
jz      short loc_41ACA8
mov     byte ptr [eax], 9
mov     byte ptr [eax+2], 0Fh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 0
movsx   edx, dx
mov     cx, [esi+edx*8+190h]
mov     [eax+1Ch], cx
mov     cx, [esi+edx*8+192h]
mov     [eax+1Eh], cx
mov     dx, [esi+edx*8+194h]
mov     [eax+20h], dx

loc_41ACA8:
mov     eax, esi
call    sub_41BB8F
push    80h
push    0
inc     byte ptr [esi+0Ah]
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Eh]
and     eax, 0FFh
or      eax, 4000000h
push    eax
add     edi, 0E4h
push    edi
xor     eax, eax
mov     al, [esi+1]
push    eax
lea     eax, [ebx+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 60h ; '`'
call    sub_4E01FC
jmp     short def_41AC02 ; jumptable 0041AC02 default case

loc_41ACFC:             ; jumptable 0041AC02 case 3
cmp     byte ptr [esi+0A7h], 0
jge     short def_41AC02 ; jumptable 0041AC02 default case
push    800h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
lea     ecx, [ebx+14h]
mov     edx, [esi+54h]
sar     edx, 10h
lea     eax, [esi+14h]
mov     ebx, 100h
call    sub_4DE6D6
test    eax, eax
jnz     short loc_41AD32
or      byte ptr [edi], 1
jmp     short def_41AC02 ; jumptable 0041AC02 default case

loc_41AD32:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 0

def_41AC02:             ; jumptable 0041AC02 default case
mov     al, [esi+0A6h]
and     al, 0Fh
cmp     al, 1
jnz     short loc_41AD56
lea     edx, [esi+14h]
mov     eax, 152h
call    sub_4D8BC3

loc_41AD56:
mov     al, [esi+0A6h]
and     al, 0Fh
cmp     al, 2
jnz     loc_41A966
lea     edx, [esi+14h]
mov     eax, 153h
jmp     loc_41ABC7
sub_41ABE1 endp




sub_41AD73 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+430h]
mov     ecx, offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_41AD95
cmp     al, 1
jz      short loc_41ADB8
jmp     loc_41AE34

loc_41AD95:
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 3
mov     word ptr [esi+44h], 80h
mov     word ptr [esi+4Ch], 20h ; ' '
or      byte ptr [edi+1], 2
mov     dword ptr [edi+64h], 0

loc_41ADB8:
lea     edx, [ecx+14h]
lea     eax, [esi+14h]
call    sub_4DD6C5
cmp     eax, offset unk_800000
jge     short loc_41ADDE
mov     ax, [esi+44h]
test    ax, ax
jz      short loc_41ADF2
mov     edx, eax
sub     edx, 20h ; ' '
mov     [esi+44h], dx
jmp     short loc_41ADF2

loc_41ADDE:
mov     dx, [esi+44h]
cmp     dx, 100h
jge     short loc_41ADF2
mov     ebx, edx
add     ebx, 10h
mov     [esi+44h], bx

loc_41ADF2:
