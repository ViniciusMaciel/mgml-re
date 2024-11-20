loc_488A27:
mov     eax, edx
shl     eax, 3
mov     ecx, eax
shl     eax, 3
sub     eax, ecx
mov     cl, ds:byte_521A62
mov     ds:byte_56F80C[eax], cl
mov     cx, ds:word_521A64
mov     ds:word_56F82C[eax], cx
mov     cx, ds:word_521A66
mov     ds:word_56F82E[eax], cx
inc     edx
cmp     edx, 5
jl      short loc_488A27

loc_488A61:
pop     edx
pop     ecx
retn
sub_488A03 endp




sub_488A64 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_488AA3
mov     eax, [eax+2Ch]
call    sub_4DE2F6
mov     edx, 1

loc_488A7C:
mov     eax, edx
shl     eax, 3
mov     ecx, eax
shl     eax, 3
sub     eax, ecx
xor     cl, cl
mov     ds:byte_56F80C[eax], cl
inc     edx
cmp     edx, 5
jl      short loc_488A7C
mov     eax, [ebx+28h]
mov     byte ptr [eax+9], 9
mov     [eax+0Ah], cl
inc     byte ptr [eax+0Dh]

loc_488AA3:
cmp     dword ptr [ebx+10h], 6Eh ; 'n'
jnz     short loc_488AB0
mov     eax, [ebx+28h]
mov     byte ptr [eax+0Dh], 0

loc_488AB0:
cmp     dword ptr [ebx+10h], 0BEh
jnz     short loc_488AC8
mov     eax, [ebx+28h]
mov     byte ptr [eax+9], 0Ah
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

loc_488AC8:
cmp     dword ptr [ebx+10h], 0FAh
jnz     short loc_488AE0
mov     eax, [ebx+28h]
mov     byte ptr [eax+9], 0Bh
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

loc_488AE0:
pop     edx
pop     ecx
pop     ebx

locret_488AE3:
retn
sub_488A64 endp




sub_488AE4 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_488AF9
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Ch
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_488AF9:
retn
sub_488AE4 endp




sub_488AFA proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_488B0F
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Dh
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_488B0F:
retn
sub_488AFA endp




sub_488B10 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 168h
jb      short loc_488B32
jbe     short loc_488B3F
cmp     edx, 190h
jb      short loc_488B60
jbe     short loc_488B48
cmp     edx, 1E0h
jz      short loc_488B51
pop     edx
retn

loc_488B32:
test    edx, edx
jnz     short loc_488B60
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Eh
jmp     short loc_488B58

loc_488B3F:
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Fh
jmp     short loc_488B58

loc_488B48:
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 10h
jmp     short loc_488B58

loc_488B51:
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 11h

loc_488B58:
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

loc_488B60:
pop     edx
retn
sub_488B10 endp




sub_488B62 proc near
cmp     dword ptr [eax+10h], 50h ; 'P'
jnz     short locret_488B77
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 12h
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

locret_488B77:
retn
sub_488B62 endp




sub_488B78 proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 6
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
sub_488B78 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_68]



sub_488BC5 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 1
jnz     short loc_488BDC
xor     eax, eax
call    sub_4A0E24
mov     ds:byte_5F88AC, 35h ; '5'

loc_488BDC:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_488BEA
call    sub_49DF64

loc_488BEA:
pop     edx
retn
sub_488BC5 endp




sub_488BEC proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_488C02
mov     edx, 5
xor     eax, eax
call    sub_4A0E24

loc_488C02:
cmp     dword ptr [ecx+10h], 29h ; ')'
jnz     short loc_488C0F
mov     ds:byte_5F88AC, 2Dh ; '-'

loc_488C0F:
cmp     dword ptr [ecx+10h], 33h ; '3'
jle     short loc_488C1A
call    sub_49DF64

loc_488C1A:
pop     edx
pop     ecx
retn
sub_488BEC endp




sub_488C1D proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_488C53
mov     eax, offset unk_521A68
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+3], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [edx+24h]
mov     word ptr [eax+56h], 800h
call    sub_49DF64

loc_488C53:
pop     edx
retn
sub_488C1D endp




sub_488C55 proc near
push    ebx
push    edx
push    edi
cmp     dword ptr [eax+10h], 1
jnz     short loc_488C7C
mov     edx, [eax+24h]
mov     word ptr [edx+44h], 140h
mov     edx, [eax+24h]
mov     byte ptr [edx+0Eh], 2
mov     edx, [eax+24h]
mov     byte ptr [edx+0Dh], 1
mov     edx, [eax+24h]
mov     byte ptr [edx+8], 2

loc_488C7C:
cmp     dword ptr [eax+10h], 5Bh ; '['
jnz     short loc_488C8B
mov     edx, [eax+24h]
mov     word ptr [edx+44h], 0

loc_488C8B:
cmp     dword ptr [eax+10h], 5Bh ; '['
jl      loc_488D47
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_488D47
mov     word ptr ds:dword_5F889A+2, 329h
mov     ebx, 0FFFFFCFFh
mov     word ptr ds:dword_5F889E, bx
mov     word ptr ds:dword_5F889E+2, 498h
mov     ds:dword_5F888C, 3290000h
mov     edi, 0FCFF0000h
mov     ds:dword_5F8890, edi
mov     ds:dword_5F8894, 4980000h
mov     word ptr ds:dword_5F88A4+2, 4F6h
mov     ds:byte_5F88AC, 30h ; '0'
mov     edx, [eax+24h]
mov     word ptr [edx+14h], 2CEh
mov     edx, [eax+24h]
mov     [edx+16h], bx
mov     edx, [eax+24h]
mov     word ptr [edx+18h], 4C0h
mov     edx, [eax+24h]
mov     dword ptr [edx+1Ch], 2CE0000h
mov     edx, [eax+24h]
mov     [edx+20h], edi
mov     edx, [eax+24h]
mov     dword ptr [edx+24h], 4C00000h
mov     edx, [eax+24h]
mov     word ptr [edx+56h], 0CF6h
mov     edx, [eax+24h]
mov     byte ptr [edx+0Eh], 0
mov     edx, [eax+24h]
mov     byte ptr [edx+0Dh], 1
mov     eax, [eax+24h]
mov     word ptr [eax+44h], 0
call    sub_49DF64

loc_488D47:
pop     edi
pop     edx
pop     ebx
retn
sub_488C55 endp




sub_488D4B proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_488D71
mov     eax, [eax+24h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 6
xor     eax, eax
call    sub_4A0E24

loc_488D71:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     loc_488E28
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_488E28
mov     word ptr ds:dword_5F889A+2, 269h
mov     ebx, 0FFFFFCFFh
mov     word ptr ds:dword_5F889E, bx
mov     word ptr ds:dword_5F889E+2, 382h
mov     ds:dword_5F888C, 2690000h
mov     ds:dword_5F8890, 0FCFF0000h
mov     ds:dword_5F8894, 3820000h
mov     edi, 800h
mov     word ptr ds:dword_5F88A4+2, di
mov     ds:byte_5F88AC, 0Ch
mov     eax, [ecx+24h]
mov     word ptr [eax+14h], 1A1h
mov     eax, [ecx+24h]
mov     [eax+16h], bx
mov     eax, [ecx+24h]
mov     word ptr [eax+18h], 385h
mov     eax, [ecx+24h]
mov     dword ptr [eax+1Ch], 1A10000h
mov     eax, [ecx+24h]
mov     dword ptr [eax+20h], 0FCFF0000h
mov     eax, [ecx+24h]
mov     dword ptr [eax+24h], 3850000h
mov     eax, [ecx+24h]
mov     [eax+56h], di
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
call    sub_49DF64

loc_488E28:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_488D4B endp




sub_488E2D proc near
push    ebx
push    ecx
push    edx
mov     edx, offset byte_5F8364
cmp     dword ptr [eax+10h], 1
jnz     short loc_488E44
mov     ecx, [eax+24h]
mov     word ptr [ecx+44h], 40h ; '@'

loc_488E44:
add     word ptr [edx+532h], 5
mov     ecx, [edx+530h]
sar     ecx, 10h
mov     [edx+53Ch], cx
cmp     dword ptr [eax+10h], 96h
jnz     short loc_488E9B
mov     dl, 1
mov     byte ptr ds:dword_77EA5A+2, dl
mov     ds:byte_77EA5E, 6
mov     ds:byte_77EA5F, dl
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 0FFh
mov     [eax+0Bh], dl
mov     [eax+0Ah], bh
call    sub_49DF64

loc_488E9B:
pop     edx
pop     ecx
pop     ebx

locret_488E9E:
retn
sub_488E2D endp




sub_488E9F proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_488FB3
mov     word ptr ds:dword_5F889A+2, 0FFB2h
mov     ecx, 0FFFFFFFFh
mov     word ptr ds:dword_5F889E, cx
mov     word ptr ds:dword_5F889E+2, 0FFAFh
mov     ds:dword_5F888C, 0FFB20000h
mov     esi, 0FFFF0000h
mov     ds:dword_5F8890, esi
mov     ds:dword_5F8894, 0FFAF0000h
mov     edi, 800h
mov     word ptr ds:dword_5F88A4+2, di
mov     ds:byte_5F88AC, 30h ; '0'
mov     eax, offset unk_521A68
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+3], 0
mov     eax, [edx+24h]
mov     word ptr [eax+14h], 51h ; 'Q'
mov     eax, [edx+24h]
mov     [eax+16h], cx
mov     eax, [edx+24h]
mov     word ptr [eax+18h], 0FFAFh
mov     eax, [edx+24h]
mov     dword ptr [eax+1Ch], offset unk_510000
mov     eax, [edx+24h]
mov     [eax+20h], esi
mov     eax, [edx+24h]
mov     dword ptr [eax+24h], 0FFAF0000h
mov     eax, [edx+24h]
mov     [eax+56h], di
mov     eax, [edx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [edx+24h]
mov     word ptr [eax+44h], 0
mov     eax, offset unk_521A7C
call    sub_49DB4D
mov     eax, offset unk_521A90
call    sub_49DB4D
mov     eax, offset unk_521AA4
call    sub_49DB4D
mov     eax, [edx+28h]
mov     word ptr [eax+56h], 0
mov     eax, [edx+28h]
mov     word ptr [eax+44h], 0
mov     eax, [edx+2Ch]
mov     word ptr [eax+56h], 0
mov     eax, [edx+2Ch]
mov     word ptr [eax+44h], 0
mov     eax, [edx+30h]
mov     [eax+56h], di
mov     eax, [edx+30h]
mov     word ptr [eax+44h], 0

loc_488FB3:
pop     edi
pop     esi
pop     edx
pop     ecx

locret_488FB7:
retn
sub_488E9F endp




sub_488FB8 proc near
push    edx
mov     edx, eax
mov     eax, [eax+28h]
cmp     byte ptr [eax+8], 1
jnz     short loc_488FD6
mov     byte ptr [eax+8], 2
mov     eax, [edx+2Ch]
mov     byte ptr [eax+8], 2
mov     eax, [edx+30h]
mov     byte ptr [eax+8], 2

loc_488FD6:
cmp     dword ptr [edx+10h], 3Dh ; '='
jnz     short loc_488FEE
call    sub_49DF64
and     ds:byte_5F8364, 0FDh
mov     edx, [edx+24h]
and     byte ptr [edx], 0FDh

loc_488FEE:
pop     edx
retn
sub_488FB8 endp




sub_488FF0 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_489014
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 37h ; '7'
xor     eax, eax
call    sub_4A0E24

loc_489014:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     short loc_489028
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489028
call    sub_49DF64

loc_489028:
pop     edx
pop     ecx
retn
sub_488FF0 endp




sub_48902B proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_48903B
mov     eax, [eax+24h]
or      byte ptr [eax], 2

loc_48903B:
cmp     dword ptr [ecx+10h], 10h
jnz     short loc_48905B
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 38h ; '8'
xor     eax, eax
call    sub_4A0E24

loc_48905B:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_48906F
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48906F
call    sub_49DF64

loc_48906F:
pop     edx
pop     ecx
retn
sub_48902B endp




sub_489072 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_489083
or      ds:byte_5F8364, 2

loc_489083:
cmp     dword ptr [ecx+10h], 10h
jnz     short loc_4890A3
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 39h ; '9'
xor     eax, eax
call    sub_4A0E24

loc_4890A3:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_4890B7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4890B7
call    sub_49DF64

loc_4890B7:
pop     edx
pop     ecx
retn
sub_489072 endp




sub_4890BA proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_4890DE
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Ah ; ':'
xor     eax, eax
call    sub_4A0E24

loc_4890DE:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_4890F2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4890F2
call    sub_49DF64

loc_4890F2:
pop     edx
pop     ecx
retn
sub_4890BA endp




sub_4890F5 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489119
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Bh ; ';'
xor     eax, eax
call    sub_4A0E24

loc_489119:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_48912D
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48912D
call    sub_49DF64

loc_48912D:
pop     edx
pop     ecx
retn
sub_4890F5 endp




sub_489130 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_48914A
xor     ebx, ebx
xor     edx, edx
mov     eax, 18Ch
call    sub_4D89E4

loc_48914A:
cmp     dword ptr [ecx+10h], 1Fh
jnz     short loc_48918D
xor     ebx, ebx
xor     edx, edx
mov     eax, 18Dh
call    sub_4D89E4
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Ch ; '<'
xor     eax, eax
call    sub_4A0E24
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     ds:byte_5F88AC, 0Ch

loc_48918D:
mov     esi, [ecx+10h]
cmp     esi, 1Fh
jle     short loc_4891AA
cmp     esi, 3Fh ; '?'
jge     short loc_4891AA
add     word ptr ds:dword_5F88A4+2, 40h ; '@'
mov     eax, [ecx+24h]
sub     word ptr [eax+56h], 40h ; '@'

loc_4891AA:
cmp     dword ptr [ecx+10h], 3Fh ; '?'
jnz     short loc_4891C5
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     ds:byte_5F88AC, 30h ; '0'

loc_4891C5:
cmp     dword ptr [ecx+10h], 49h ; 'I'
jle     short loc_4891D9
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4891D9
call    sub_49DF64

loc_4891D9:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_489130 endp




sub_4891DE proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_48920B
mov     eax, [eax+30h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+30h]
mov     word ptr [eax+44h], 3Ch ; '<'
mov     edx, 3Dh ; '='
xor     eax, eax
call    sub_4A0E24

loc_48920B:
cmp     dword ptr [ecx+10h], 56h ; 'V'
jl      short loc_489228
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+30h]
mov     word ptr [eax+44h], 0

loc_489228:
cmp     dword ptr [ecx+10h], 56h ; 'V'
jle     short loc_48923C
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48923C
call    sub_49DF64

loc_48923C:
pop     edx
pop     ecx
retn
sub_4891DE endp




sub_48923F proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489263
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Eh ; '>'
xor     eax, eax
call    sub_4A0E24

loc_489263:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489277
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489277
call    sub_49DF64

loc_489277:
pop     edx
pop     ecx
retn
sub_48923F endp




sub_48927A proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_48929E
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Fh ; '?'
xor     eax, eax
call    sub_4A0E24

loc_48929E:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_4892B9
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4892B9
and     ds:byte_5F8364, 0FDh
call    sub_49DF64

loc_4892B9:
pop     edx
pop     ecx
retn
sub_48927A endp




sub_4892BC proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_4892E0
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 40h ; '@'
xor     eax, eax
call    sub_4A0E24

loc_4892E0:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_4892F4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4892F4
call    sub_49DF64

loc_4892F4:
pop     edx
pop     ecx

locret_4892F6:
retn
sub_4892BC endp




sub_4892F7 proc near
push    edx
cmp     dword ptr [eax+10h], 1
jnz     short loc_489311
mov     ds:byte_5F88AC, 82h
mov     edx, 2
xor     eax, eax
call    sub_4A0E24

loc_489311:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48931F
call    sub_49DF64

loc_48931F:
pop     edx
retn
sub_4892F7 endp




sub_489321 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_489337
mov     edx, 7
xor     eax, eax
call    sub_4A0E24

loc_489337:
cmp     dword ptr [ecx+10h], 29h ; ')'
jnz     short loc_489344
mov     ds:byte_5F88AC, 2Dh ; '-'

loc_489344:
cmp     dword ptr [ecx+10h], 33h ; '3'
jle     short loc_48934F
call    sub_49DF64

loc_48934F:
pop     edx
pop     ecx
retn
sub_489321 endp




sub_489352 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_489388
mov     eax, offset unk_521A68
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+3], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [edx+24h]
mov     word ptr [eax+56h], 800h
call    sub_49DF64

loc_489388:
pop     edx
retn
sub_489352 endp




sub_48938A proc near
push    ebx
push    edx
push    edi
cmp     dword ptr [eax+10h], 1
jnz     short loc_4893B1
mov     edx, [eax+24h]
mov     word ptr [edx+44h], 140h
mov     edx, [eax+24h]
mov     byte ptr [edx+0Eh], 2
mov     edx, [eax+24h]
mov     byte ptr [edx+0Dh], 1
mov     edx, [eax+24h]
mov     byte ptr [edx+8], 2

loc_4893B1:
cmp     dword ptr [eax+10h], 5Bh ; '['
jnz     short loc_4893C0
mov     edx, [eax+24h]
mov     word ptr [edx+44h], 0

loc_4893C0:
cmp     dword ptr [eax+10h], 5Bh ; '['
jl      loc_48947C
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_48947C
mov     word ptr ds:dword_5F889A+2, 329h
mov     ebx, 0FFFFFCFFh
mov     word ptr ds:dword_5F889E, bx
mov     word ptr ds:dword_5F889E+2, 498h
mov     ds:dword_5F888C, 3290000h
mov     edi, 0FCFF0000h
mov     ds:dword_5F8890, edi
mov     ds:dword_5F8894, 4980000h
mov     word ptr ds:dword_5F88A4+2, 4F6h
mov     ds:byte_5F88AC, 30h ; '0'
mov     edx, [eax+24h]
mov     word ptr [edx+14h], 2CEh
mov     edx, [eax+24h]
mov     [edx+16h], bx
mov     edx, [eax+24h]
mov     word ptr [edx+18h], 4C0h
mov     edx, [eax+24h]
mov     dword ptr [edx+1Ch], 2CE0000h
mov     edx, [eax+24h]
mov     [edx+20h], edi
mov     edx, [eax+24h]
mov     dword ptr [edx+24h], 4C00000h
mov     edx, [eax+24h]
mov     word ptr [edx+56h], 0CF6h
mov     edx, [eax+24h]
mov     byte ptr [edx+0Eh], 0
mov     edx, [eax+24h]
mov     byte ptr [edx+0Dh], 1
mov     eax, [eax+24h]
mov     word ptr [eax+44h], 0
call    sub_49DF64

loc_48947C:
pop     edi
pop     edx
pop     ebx
retn
sub_48938A endp




sub_489480 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_4894A4
mov     eax, [eax+24h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 8
xor     eax, eax
call    sub_4A0E24

loc_4894A4:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     short loc_4894B8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4894B8
call    sub_49DF64

loc_4894B8:
pop     edx
pop     ecx
retn
sub_489480 endp




sub_4894BB proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_4894D8
mov     ds:byte_5F88AC, 32h ; '2'
mov     edx, 9
xor     eax, eax
call    sub_4A0E24

loc_4894D8:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     short loc_4894EC
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4894EC
call    sub_49DF64

loc_4894EC:
pop     edx
pop     ecx
retn
sub_4894BB endp




sub_4894EF proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_489515
mov     eax, [eax+24h]
mov     byte ptr [eax+0Eh], 12h
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 0Ah
xor     eax, eax
call    sub_4A0E24

loc_489515:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     loc_4895CC
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4895CC
mov     word ptr ds:dword_5F889A+2, 269h
mov     ebx, 0FFFFFCFFh
mov     word ptr ds:dword_5F889E, bx
mov     word ptr ds:dword_5F889E+2, 382h
mov     ds:dword_5F888C, 2690000h
mov     ds:dword_5F8890, 0FCFF0000h
mov     ds:dword_5F8894, 3820000h
mov     edi, 800h
mov     word ptr ds:dword_5F88A4+2, di
mov     ds:byte_5F88AC, 0Ch
mov     eax, [ecx+24h]
mov     word ptr [eax+14h], 1A1h
mov     eax, [ecx+24h]
mov     [eax+16h], bx
mov     eax, [ecx+24h]
mov     word ptr [eax+18h], 385h
mov     eax, [ecx+24h]
mov     dword ptr [eax+1Ch], 1A10000h
mov     eax, [ecx+24h]
mov     dword ptr [eax+20h], 0FCFF0000h
mov     eax, [ecx+24h]
mov     dword ptr [eax+24h], 3850000h
mov     eax, [ecx+24h]
mov     [eax+56h], di
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
call    sub_49DF64

loc_4895CC:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4894EF endp




sub_4895D1 proc near
push    ebx
push    ecx
push    edx
mov     edx, offset byte_5F8364
cmp     dword ptr [eax+10h], 1
jnz     short loc_4895E8
mov     ecx, [eax+24h]
mov     word ptr [ecx+44h], 40h ; '@'

loc_4895E8:
add     word ptr [edx+532h], 5
mov     ecx, [edx+530h]
sar     ecx, 10h
mov     [edx+53Ch], cx
cmp     dword ptr [eax+10h], 96h
jnz     short loc_489640
mov     dl, 1
mov     byte ptr ds:dword_77EA5A+2, dl
mov     ds:byte_77EA5E, 6
mov     ds:byte_77EA5F, 4
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 0FFh
mov     [eax+0Bh], dl
mov     [eax+0Ah], bh
call    sub_49DF64

loc_489640:
pop     edx
pop     ecx
pop     ebx

locret_489643:
retn
sub_4895D1 endp




sub_489644 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_489758
mov     word ptr ds:dword_5F889A+2, 0FFB2h
mov     ecx, 0FFFFFFFFh
mov     word ptr ds:dword_5F889E, cx
mov     word ptr ds:dword_5F889E+2, 0FFAFh
mov     ds:dword_5F888C, 0FFB20000h
mov     esi, 0FFFF0000h
mov     ds:dword_5F8890, esi
mov     ds:dword_5F8894, 0FFAF0000h
mov     edi, 800h
mov     word ptr ds:dword_5F88A4+2, di
mov     ds:byte_5F88AC, 30h ; '0'
mov     eax, offset unk_521A68
call    sub_49DB4D
mov     eax, [edx+24h]
mov     byte ptr [eax+3], 0
mov     eax, [edx+24h]
mov     word ptr [eax+14h], 51h ; 'Q'
mov     eax, [edx+24h]
mov     [eax+16h], cx
mov     eax, [edx+24h]
mov     word ptr [eax+18h], 0FFAFh
mov     eax, [edx+24h]
mov     dword ptr [eax+1Ch], offset unk_510000
mov     eax, [edx+24h]
mov     [eax+20h], esi
mov     eax, [edx+24h]
mov     dword ptr [eax+24h], 0FFAF0000h
mov     eax, [edx+24h]
mov     [eax+56h], di
mov     eax, [edx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [edx+24h]
mov     word ptr [eax+44h], 0
mov     eax, offset unk_521A7C
call    sub_49DB4D
mov     eax, offset unk_521A90
call    sub_49DB4D
mov     eax, offset unk_521AA4
call    sub_49DB4D
mov     eax, [edx+28h]
mov     word ptr [eax+56h], 0
mov     eax, [edx+28h]
mov     word ptr [eax+44h], 0
mov     eax, [edx+2Ch]
mov     word ptr [eax+56h], 0
mov     eax, [edx+2Ch]
mov     word ptr [eax+44h], 0
mov     eax, [edx+30h]
mov     [eax+56h], di
mov     eax, [edx+30h]
mov     word ptr [eax+44h], 0

loc_489758:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_489644 endp

push    edx
mov     edx, eax
mov     eax, [eax+28h]
cmp     byte ptr [eax+8], 1
jnz     short loc_48977B
mov     byte ptr [eax+8], 2
mov     eax, [edx+2Ch]
mov     byte ptr [eax+8], 2
mov     eax, [edx+30h]
mov     byte ptr [eax+8], 2

loc_48977B:
cmp     dword ptr [edx+10h], 3Dh ; '='
jnz     short loc_489793
call    sub_49DF64
and     ds:byte_5F8364, 0FDh
mov     edx, [edx+24h]
and     byte ptr [edx], 0FDh

loc_489793:
pop     edx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1Fh
jnz     short loc_4897B9
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 37h ; '7'
xor     eax, eax
call    sub_4A0E24

loc_4897B9:
cmp     dword ptr [ecx+10h], 32h ; '2'
jle     short loc_4897CD
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4897CD
call    sub_49DF64

loc_4897CD:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_4897E0
mov     eax, [eax+24h]
or      byte ptr [eax], 2

loc_4897E0:
cmp     dword ptr [ecx+10h], 10h
jnz     short loc_489800
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 38h ; '8'
xor     eax, eax
call    sub_4A0E24

loc_489800:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489814
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489814
call    sub_49DF64

loc_489814:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_489828
or      ds:byte_5F8364, 2

loc_489828:
cmp     dword ptr [ecx+10h], 10h
jnz     short loc_489848
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 41h ; 'A'
xor     eax, eax
call    sub_4A0E24

loc_489848:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_48985C
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48985C
call    sub_49DF64

loc_48985C:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489883
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 42h ; 'B'
xor     eax, eax
call    sub_4A0E24

loc_489883:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489897
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489897
call    sub_49DF64

loc_489897:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_4898BE
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 43h ; 'C'
xor     eax, eax
call    sub_4A0E24

loc_4898BE:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_4898D2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4898D2
call    sub_49DF64

loc_4898D2:
pop     edx
pop     ecx
retn



sub_4898D5 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_4898EF
xor     ebx, ebx
xor     edx, edx
mov     eax, 18Ch
call    sub_4D89E4

loc_4898EF:
cmp     dword ptr [ecx+10h], 1Fh
jnz     short loc_489932
xor     ebx, ebx
xor     edx, edx
mov     eax, 18Dh
call    sub_4D89E4
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Ch ; '<'
xor     eax, eax
call    sub_4A0E24
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     ds:byte_5F88AC, 0Ch

loc_489932:
mov     esi, [ecx+10h]
cmp     esi, 1Fh
jle     short loc_48994F
cmp     esi, 3Fh ; '?'
jge     short loc_48994F
add     word ptr ds:dword_5F88A4+2, 40h ; '@'
mov     eax, [ecx+24h]
sub     word ptr [eax+56h], 40h ; '@'

loc_48994F:
cmp     dword ptr [ecx+10h], 3Fh ; '?'
jnz     short loc_48996A
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     ds:byte_5F88AC, 30h ; '0'

loc_48996A:
cmp     dword ptr [ecx+10h], 49h ; 'I'
jle     short loc_48997E
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_48997E
call    sub_49DF64

loc_48997E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4898D5 endp

push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_4899B0
mov     eax, [eax+30h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+30h]
mov     word ptr [eax+44h], 3Ch ; '<'
mov     edx, 3Dh ; '='
xor     eax, eax
call    sub_4A0E24

loc_4899B0:
cmp     dword ptr [ecx+10h], 56h ; 'V'
jl      short loc_4899CD
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+30h]
mov     word ptr [eax+44h], 0

loc_4899CD:
cmp     dword ptr [ecx+10h], 56h ; 'V'
jle     short loc_4899E1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4899E1
call    sub_49DF64

loc_4899E1:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489A08
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Eh ; '>'
xor     eax, eax
call    sub_4A0E24

loc_489A08:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489A1C
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489A1C
call    sub_49DF64

loc_489A1C:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489A43
mov     eax, [eax+28h]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Dh], 1
mov     edx, 3Fh ; '?'
xor     eax, eax
call    sub_4A0E24

loc_489A43:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489A5E
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489A5E
and     ds:byte_5F8364, 0FDh
call    sub_49DF64

loc_489A5E:
pop     edx
pop     ecx
retn
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 10h
jnz     short loc_489A85
mov     eax, [eax+2Ch]
mov     byte ptr [eax+0Eh], 8
mov     eax, [ecx+2Ch]
mov     byte ptr [eax+0Dh], 1
mov     edx, 40h ; '@'
xor     eax, eax
call    sub_4A0E24

loc_489A85:
cmp     dword ptr [ecx+10h], 1Fh
jle     short loc_489A99
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_489A99
call    sub_49DF64

loc_489A99:
pop     edx
pop     ecx
retn


; Attributes: thunk

sub_489A9C proc near
jmp     sub_49DF64
sub_489A9C endp




sub_489AA1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, 629h
call    sub_47E888
test    eax, eax
jz      short loc_489ADF
mov     ds:dword_77E6B4, offset unk_521C88
mov     dword ptr [ecx+0A4h], offset unk_521EE0
mov     eax, 2E1h
call    sub_47EE82
jmp     short loc_489AF3

loc_489ADF:
mov     ds:dword_77E6B4, offset unk_521AE0
mov     dword ptr [ecx+0A4h], offset unk_521E30

loc_489AF3:
mov     byte ptr [ecx+0Bh], 0
mov     al, [ecx+0Bh]
mov     [ecx+0Ah], al
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0Ah], 0
mov     eax, 52Ch
call    sub_47E8B8
pop     edx
pop     ecx
pop     ebx
retn
sub_489AA1 endp




sub_489B1A proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_489B2A
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_489B2A:
pop     edx
retn
sub_489B1A endp

jpt_489B8C dd offset loc_489B93 ; jump table for switch statement
dd offset loc_489BAF
dd offset loc_489C30
dd offset loc_489C40
dd offset loc_489C5B
dd offset loc_489C8A
dd offset loc_489CA6
dd offset loc_489CE4
dd offset loc_489CF0
dd offset loc_489D05
dd offset loc_489D33
dd offset loc_489D3F
dd offset loc_489E07
dd offset loc_489E49
dd offset loc_489E84
dd offset loc_489FF9
dd offset loc_48A04C



sub_489B70 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 10h         ; switch 17 cases
ja      def_489B8C      ; jumptable 00489B8C default case
xor     ebx, ebx
mov     bl, al
jmp     jpt_489B8C[ebx*4] ; switch jump

loc_489B93:             ; jumptable 00489B8C case 0
mov     eax, 2
call    sub_49E0D7
mov     eax, ecx
call    sub_489AA1
inc     byte ptr [ecx+4]
or      byte ptr [edx], 3
jmp     loc_489CD3

loc_489BAF:             ; jumptable 00489B8C case 1
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      loc_489CD3
or      byte ptr [edx+0BDh], 10h
mov     byte ptr [edx+8], 3
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+548h], 30h ; '0'
mov     word ptr [edx+538h], 200h
mov     word ptr [edx+53Ah], 0FCFFh
mov     word ptr [edx+53Ch], 2E8h
mov     dword ptr [edx+528h], 2000000h
mov     dword ptr [edx+52Ch], 0FCFF0000h
mov     dword ptr [edx+530h], 2E80000h
mov     word ptr [edx+540h], 0
mov     word ptr [edx+542h], 800h
mov     word ptr [edx+544h], 0

loc_489C28:
inc     byte ptr [ecx+4]
jmp     loc_489CD3

loc_489C30:             ; jumptable 00489B8C case 2
cmp     ds:word_6E23D6, 0
jnz     loc_489CD3
jmp     short loc_489C28

loc_489C40:             ; jumptable 00489B8C case 3
or      byte ptr [edx+0BDh], 20h
xor     esi, esi
mov     ds:word_57096A, si
mov     byte ptr [ecx+0Ah], 1
call    sub_49DF64
jmp     short loc_489C28

loc_489C5B:             ; jumptable 00489B8C case 4
cmp     byte ptr [ecx+0Bh], 0
jz      short loc_489C69

loc_489C61:
inc     byte ptr [ecx+4]
jmp     def_489B8C      ; jumptable 00489B8C default case

loc_489C69:
call    sub_47EBCB
test    eax, eax
jz      short loc_489CCC
cmp     byte ptr [ecx+0Ah], 1
jnz     short loc_489CCC
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
mov     byte ptr [ecx+4], 0Ch
jmp     short loc_489CCC

loc_489C8A:             ; jumptable 00489B8C case 5
cmp     byte ptr ds:dword_77EA5A+2, 2
jnz     short loc_489CCC
mov     eax, [ecx+24h]
call    sub_4DE2F6
inc     byte ptr [ecx+4]
inc     byte ptr ds:dword_77EA5A+2
jmp     short loc_489CCC

loc_489CA6:             ; jumptable 00489B8C case 6
cmp     byte ptr ds:dword_77EA5A+2, 0
jnz     short loc_489CCC
mov     eax, 2
call    sub_49E0D7
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
inc     byte ptr [ecx+4]

loc_489CC7:
call    sub_49DF64

loc_489CCC:
mov     eax, ecx
call    sub_489B1A

loc_489CD3:
call    sub_49DBD1
call    sub_49DECF

def_489B8C:             ; jumptable 00489B8C default case
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_489CE4:             ; jumptable 00489B8C case 7
inc     al
mov     [ecx+4], al
call    sub_49DF64
jmp     short def_489B8C ; jumptable 00489B8C default case

loc_489CF0:             ; jumptable 00489B8C case 8
cmp     ds:word_6E23D6, 0
jnz     short loc_489CCC
inc     al
mov     [ecx+4], al
mov     byte ptr [ecx+0Ah], 1
jmp     short loc_489CC7

loc_489D05:             ; jumptable 00489B8C case 9
cmp     byte ptr [ecx+8], 0FFh
jnz     short loc_489D12

loc_489D0B:
inc     al
mov     [ecx+4], al
jmp     short def_489B8C ; jumptable 00489B8C default case

loc_489D12:
call    sub_47EBCB
test    eax, eax
jz      short loc_489CCC
cmp     byte ptr [ecx+0Ah], 1
jnz     short loc_489CCC
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
mov     byte ptr [ecx+4], 10h
jmp     short loc_489CCC

loc_489D33:             ; jumptable 00489B8C case 10
cmp     ds:word_6E23D6, 0
jnz     short def_489B8C ; jumptable 00489B8C default case
jmp     short loc_489D0B

loc_489D3F:             ; jumptable 00489B8C case 11
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_489B8C ; jumptable 00489B8C default case
or      ds:byte_5F8364, 2
mov     eax, offset byte_5F8364
call    sub_4B565A
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     edx, [ecx+30h]
mov     byte ptr [edx+3], 1
mov     dl, [edx+3]
mov     eax, [ecx+24h]
mov     [eax+3], dl
mov     edx, [ecx+30h]
mov     byte ptr [edx+8], 0
mov     dl, [edx+8]
mov     eax, [ecx+24h]
mov     [eax+8], dl
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Ch], 46h ; 'F'
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Ch], 47h ; 'G'
mov     eax, [ecx+24h]
mov     word ptr [eax+14h], 6Fh ; 'o'
mov     edx, [ecx+24h]
sub     word ptr [edx+18h], 14h
mov     edx, [ecx+30h]
add     word ptr [edx+14h], 0Ah
mov     eax, [ecx+30h]
mov     word ptr [eax+18h], 0FEC3h
mov     eax, [ecx+28h]
call    sub_4DE2F6
mov     eax, [ecx+2Ch]
call    sub_4DE2F6
mov     eax, [ecx+30h]
call    sub_4DE2F6
mov     eax, offset unk_521AB8
call    sub_49DB4D
mov     eax, offset unk_521ACC
call    sub_49DB4D
mov     eax, 2Ch ; ','
call    sub_47E8B8

loc_489DF0:
mov     eax, 7E0h
call    sub_47EA91
call    sub_47E829
mov     byte ptr [ecx], 0
jmp     def_489B8C      ; jumptable 00489B8C default case

loc_489E07:             ; jumptable 00489B8C case 12
mov     edx, offset dword_77EA48
mov     bh, 1
mov     byte ptr ds:dword_77EA5A+2, bh
mov     ds:byte_77EA5E, 6
mov     eax, 629h
call    sub_47E888
test    eax, eax
jz      short loc_489E32
mov     ds:byte_77EA5F, 4
jmp     short loc_489E38

loc_489E32:
mov     ds:byte_77EA5F, bh

loc_489E38:
mov     byte ptr [edx+15h], 0
mov     byte ptr [edx+19h], 9
mov     byte ptr [edx+18h], 0FFh
jmp     loc_489C61

loc_489E49:             ; jumptable 00489B8C case 13
cmp     byte ptr ds:dword_77EA5A+2, 2
jnz     def_489B8C      ; jumptable 00489B8C default case
mov     edx, [ecx+24h]
test    edx, edx
jz      short loc_489E64
mov     eax, edx
call    sub_4DE2F6

loc_489E64:
call    sub_4E1D8A
mov     dl, 1
mov     byte ptr ds:dword_77E954, dl
call    sub_42A66D
add     [ecx+4], dl
add     byte ptr ds:dword_77EA5A+2, dl
jmp     def_489B8C      ; jumptable 00489B8C default case

loc_489E84:             ; jumptable 00489B8C case 14
cmp     byte ptr ds:dword_77EA5A+2, 0
jnz     def_489B8C      ; jumptable 00489B8C default case
or      ds:byte_5F8364, 2
mov     edi, 0FFFFFFB2h
mov     word ptr ds:dword_5F889A+2, di
mov     word ptr ds:dword_5F8376+2, di
mov     edx, 0FFFFFFFFh
mov     word ptr ds:dword_5F889E, dx
mov     word ptr ds:dword_5F837A, dx
mov     esi, 0FFFFFFAFh
mov     word ptr ds:dword_5F889E+2, si
mov     word ptr ds:dword_5F837A+2, si
mov     edx, 0FFB20000h
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8380, edx
mov     esi, 0FFFF0000h
mov     ds:dword_5F8890, esi
mov     ds:dword_5F8384, esi
mov     ebp, 0FFAF0000h
mov     ds:dword_5F8894, ebp
mov     ds:dword_5F8388, ebp
mov     eax, 800h
mov     word ptr ds:dword_5F88A4+2, ax
mov     word ptr ds:dword_5F83B8+2, ax
mov     ds:byte_5F88AC, 30h ; '0'
mov     eax, offset unk_521A68
call    sub_49DB4D
mov     eax, [ecx+24h]
mov     word ptr [eax+14h], 6Fh ; 'o'
mov     eax, [ecx+24h]
mov     word ptr [eax+16h], 0FFFFh
mov     eax, [ecx+24h]
mov     word ptr [eax+18h], 0FF9Bh
mov     eax, [ecx+24h]
mov     dword ptr [eax+1Ch], offset unk_6F0000
mov     eax, [ecx+24h]
mov     [eax+20h], esi
mov     eax, [ecx+24h]
mov     dword ptr [eax+24h], 0FF9B0000h
mov     eax, [ecx+24h]
mov     word ptr [eax+56h], 0
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Dh], 1
mov     eax, [ecx+24h]
mov     word ptr [eax+44h], 0
mov     eax, offset unk_521AB8
call    sub_49DB4D
mov     eax, offset unk_521ACC
call    sub_49DB4D
mov     eax, offset unk_521AA4
call    sub_49DB4D
mov     edx, [ecx+30h]
mov     byte ptr [edx+3], 1
mov     dl, [edx+3]
mov     eax, [ecx+24h]
mov     [eax+3], dl
mov     edx, [ecx+30h]
add     word ptr [edx+14h], 0Ah
mov     eax, [ecx+30h]
mov     word ptr [eax+18h], 0FEC3h
mov     edx, [ecx+30h]
mov     byte ptr [edx+8], 0
mov     dl, [edx+8]
mov     eax, [ecx+24h]
mov     [eax+8], dl
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Ch], 46h ; 'F'
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Ch], 47h ; 'G'
mov     eax, [ecx+30h]
mov     word ptr [eax+56h], 800h
mov     eax, [ecx+30h]
mov     word ptr [eax+44h], 0
mov     eax, 1
call    sub_49E0D7
jmp     loc_489C61

loc_489FF9:             ; jumptable 00489B8C case 15
cmp     ds:word_6E23D6, 0
jnz     def_489B8C      ; jumptable 00489B8C default case
mov     eax, 2Ch ; ','
call    sub_47E8B8
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, [ecx+34h]
call    sub_4DE2F6
mov     eax, [ecx+38h]
call    sub_4DE2F6
mov     eax, [ecx+30h]
call    sub_4DE2F6
mov     eax, offset unk_521AB8
call    sub_49DB4D
mov     eax, offset unk_521ACC
call    sub_49DB4D
jmp     loc_489DF0

loc_48A04C:             ; jumptable 00489B8C case 16
or      ds:byte_5F8364, 2
call    sub_4E1D8A
mov     dl, 1
mov     byte ptr ds:dword_77E954, dl
call    sub_42A66D
mov     eax, [ecx+24h]
mov     word ptr [eax+14h], 6Fh ; 'o'
mov     eax, [ecx+24h]
mov     word ptr [eax+16h], 0FFFFh
mov     eax, [ecx+24h]
mov     word ptr [eax+18h], 0FF9Bh
mov     eax, [ecx+24h]
mov     dword ptr [eax+1Ch], offset unk_6F0000
mov     eax, [ecx+24h]
mov     dword ptr [eax+20h], 0FFFF0000h
mov     eax, [ecx+24h]
mov     dword ptr [eax+24h], 0FF9B0000h
mov     eax, [ecx+24h]
mov     word ptr [eax+56h], 0
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Eh], 0
mov     eax, [ecx+24h]
mov     [eax+0Dh], dl
mov     eax, [ecx+24h]
mov     word ptr [eax+44h], 0
mov     edx, [ecx+30h]
mov     byte ptr [edx+3], 1
mov     dl, [edx+3]
mov     eax, [ecx+24h]
mov     [eax+3], dl
mov     edx, [ecx+30h]
add     word ptr [edx+14h], 0Ah
mov     eax, [ecx+30h]
mov     word ptr [eax+18h], 0FEC3h
mov     eax, [ecx+28h]
call    sub_4DE2F6
mov     eax, [ecx+2Ch]
call    sub_4DE2F6
mov     eax, [ecx+30h]
call    sub_4DE2F6
mov     eax, offset unk_521AB8
call    sub_49DB4D
mov     eax, offset unk_521ACC
call    sub_49DB4D
mov     edx, [ecx+30h]
mov     byte ptr [edx+8], 0
mov     dl, [edx+8]
mov     eax, [ecx+24h]
mov     [eax+8], dl
mov     eax, [ecx+24h]
mov     byte ptr [eax+0Ch], 46h ; 'F'
mov     eax, [ecx+30h]
mov     byte ptr [eax+0Ch], 47h ; 'G'
mov     eax, [ecx+30h]
mov     word ptr [eax+56h], 800h
mov     eax, [ecx+30h]
mov     word ptr [eax+44h], 0
mov     eax, 2Ch ; ','
call    sub_47E8B8
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, [ecx+28h]
call    sub_4DE2F6
mov     eax, [ecx+2Ch]
call    sub_4DE2F6
mov     eax, [ecx+30h]
call    sub_4DE2F6
jmp     loc_489DF0
sub_489B70 endp




sub_48A16B proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48A171[edx*4]
pop     edx
retn
sub_48A16B endp

db 90h
jpt_48A1A6 dd offset loc_48A1AD ; jump table for switch statement
dd offset loc_48A1F9
dd offset loc_48A28F
dd offset loc_48A2B4



sub_48A18B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_48A1A6      ; jumptable 0048A1A6 default case
and     eax, 0FFh
jmp     jpt_48A1A6[eax*4] ; switch jump

loc_48A1AD:             ; jumptable 0048A1A6 case 0
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_522038
mov     dword ptr [esi+0A4h], offset unk_522084
mov     dword ptr [esi+0Ch], 0
mov     edx, 80h
mov     eax, 0Ah
call    sub_4DC979
mov     eax, offset unk_521FAC
call    sub_49DB4D
mov     eax, offset unk_521FC0
call    sub_49DB4D
inc     byte ptr [esi+5]

loc_48A1F9:             ; jumptable 0048A1A6 case 1
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      def_48A1A6      ; jumptable 0048A1A6 default case
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 0F300h
mov     word ptr [ecx+53Ah], 0F9FFh
mov     word ptr [ecx+53Ch], 2600h
mov     eax, [ecx+536h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+528h], eax
mov     eax, [ecx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+52Ch], eax
mov     eax, [ecx+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+530h], eax
mov     word ptr [ecx+540h], 0
mov     word ptr [ecx+542h], 0
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 0

loc_48A28A:
inc     byte ptr [esi+5]
jmp     short def_48A1A6 ; jumptable 0048A1A6 default case

loc_48A28F:             ; jumptable 0048A1A6 case 2
mov     dl, 2

loc_48A291:
movsx   ebx, dl
mov     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 2
add     eax, offset unk_521FAC
call    sub_49DB4D
inc     dl
cmp     dl, 6
jle     short loc_48A291
inc     byte ptr [ecx+9]
jmp     short loc_48A28A

loc_48A2B4:             ; jumptable 0048A1A6 case 3
or      ds:byte_5F8421, 20h
xor     edx, edx
mov     ds:word_57096A, dx
mov     byte ptr [esi+0Ah], 80h
mov     byte ptr [esi+0Bh], 0
mov     byte ptr [esi+6], 0
mov     eax, 24000Ah
call    sub_4D8E42
inc     byte ptr [esi+4]
mov     byte ptr [esi+5], 0

def_48A1A6:             ; jumptable 0048A1A6 default case
call    sub_49DBD1
call    sub_49DECF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48A18B endp




sub_48A2F0 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_47EBCB
test    eax, eax
jz      short loc_48A301
or      byte ptr [edx+0Ah], 1

loc_48A301:
mov     al, [edx+5]
test    al, al
jbe     short loc_48A30E
cmp     al, 1
jz      short loc_48A33E
jmp     short loc_48A36D

loc_48A30E:
call    sub_49DBD1
call    sub_4D8ECC
test    eax, eax
jz      short loc_48A36D
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_522094
mov     dword ptr [edx+0A4h], offset unk_5224C0
and     byte ptr [edx+0Ah], 7Fh
inc     byte ptr [edx+5]
jmp     short loc_48A36D

loc_48A33E:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_48A361
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     cl, [edx+0Ah]
test    cl, 1
jz      short loc_48A368
test    cl, 80h
jnz     short loc_48A368
inc     byte ptr [edx+4]
jmp     short loc_48A364

loc_48A361:
add     [edx+4], al

loc_48A364:
mov     byte ptr [edx+5], 0

loc_48A368:
call    sub_49DBD1

loc_48A36D:
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_48A2F0 endp

db 8Bh, 0C0h
jpt_48A39B dd offset loc_48A3A2 ; jump table for switch statement
dd offset loc_48A446
dd offset loc_48A484
dd offset loc_48A496



sub_48A387 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_48A39B      ; jumptable 0048A39B default case
xor     edx, edx
mov     dl, al
jmp     jpt_48A39B[edx*4] ; switch jump

loc_48A3A2:             ; jumptable 0048A39B case 0
test    byte ptr [ecx+0Ah], 1
jz      short loc_48A3C6
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_48A3C6
mov     eax, [ecx+28h]
call    sub_4DE336
mov     eax, [ecx+2Ch]
call    sub_4DE2F6
mov     eax, [ecx+30h]
call    sub_4DE2F6

loc_48A3C6:
call    sub_4E1D8A
call    sub_4D8EB1
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0F300h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1A00h
mov     ds:dword_5F888C, 0F3000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 1A000000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 400h
xor     ebx, ebx
mov     ds:word_5F88A8, ax
xor     bh, ah
mov     ds:byte_5F88AC, bh

loc_48A43F:
inc     byte ptr [ecx+5]
pop     edx
pop     ecx
pop     ebx
retn

loc_48A446:             ; jumptable 0048A39B case 1
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     dh, 1
mov     byte ptr ds:dword_77E954, dh
test    [ecx+0Ah], dh
jz      short loc_48A464
call    sub_42A66D
jmp     short loc_48A469

loc_48A464:
call    sub_42AC90

loc_48A469:
call    sub_40533E
mov     eax, [ecx+24h]
call    sub_4DE336
mov     edx, 0Ah
xor     eax, eax
call    sub_4A0E24
jmp     short loc_48A43F

loc_48A484:             ; jumptable 0048A39B case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_48A39B ; jumptable 0048A39B default case
inc     al
mov     [ecx+5], al
pop     edx
pop     ecx
pop     ebx
retn

loc_48A496:             ; jumptable 0048A39B case 3
cmp     ds:byte_77EAB8, 0
jnz     short def_48A39B ; jumptable 0048A39B default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 8000000Ch
call    sub_4D89E4
mov     ds:word_77EA80, 73h ; 's'
mov     byte ptr [ecx], 0

def_48A39B:             ; jumptable 0048A39B default case
pop     edx
pop     ecx
pop     ebx

locret_48A4BC:
retn
sub_48A387 endp




sub_48A4BD proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48A4F1
mov     eax, [eax+28h]
mov     word ptr [eax+14h], 0EC48h
mov     word ptr [eax+18h], 19B8h
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
mov     word ptr [eax+56h], 500h

loc_48A4F1:
pop     edx
retn
sub_48A4BD endp




sub_48A4F3 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48A527
mov     eax, [eax+28h]
mov     word ptr [eax+14h], 0EC00h
mov     word ptr [eax+18h], 1A00h
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
mov     word ptr [eax+56h], 500h

loc_48A527:
pop     edx
retn
sub_48A4F3 endp




sub_48A529 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48A56F
mov     eax, [eax+28h]
mov     word ptr [eax+14h], 0EC00h
mov     word ptr [eax+16h], 0FD1Ch
mov     word ptr [eax+18h], 1A00h
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
mov     word ptr [eax+56h], 900h

loc_48A56F:
pop     edx

locret_48A570:
retn
sub_48A529 endp

db 8Bh, 0C0h
jpt_48A5A1 dd offset loc_48A5A8 ; jump table for switch statement
dd offset loc_48A656
dd offset loc_48A6CC
dd offset loc_48A6D7



sub_48A583 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     ebx, ebx
mov     ds:word_57096A, bx
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      def_48A5A1      ; jumptable 0048A5A1 default case
and     eax, 0FFh
jmp     jpt_48A5A1[eax*4] ; switch jump

loc_48A5A8:             ; jumptable 0048A5A1 case 0
cmp     word ptr ds:dword_5F837A+2, 1A00h
jge     short loc_48A612
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0F300h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1A00h
mov     ds:dword_5F888C, 0F3000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 1A000000h
xor     ecx, ecx
mov     word ptr ds:dword_5F88A4, cx
mov     word ptr ds:dword_5F88A4+2, cx
mov     ds:word_5F88A8, cx

loc_48A60A:
inc     byte ptr [edx+6]
jmp     def_48A5A1      ; jumptable 0048A5A1 default case

loc_48A612:
mov     ax, ds:word_5F8488

loc_48A618:
mov     ds:word_57096A, ax

def_48A5A1:             ; jumptable 0048A5A1 default case
cmp     dword ptr [edx+10h], 0
jnz     short loc_48A640
mov     eax, [edx+28h]
call    sub_4DE336
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     eax, [edx+30h]
call    sub_4DE2F6
mov     byte ptr [edx+0Bh], 1

loc_48A640:
mov     ebx, [edx+10h]
test    ebx, ebx
jz      short loc_48A64C
cmp     ebx, 32h ; '2'
jnz     short loc_48A652

loc_48A64C:
mov     edx, [edx+24h]
inc     byte ptr [edx+8]

loc_48A652:
pop     edx
pop     ecx
pop     ebx
retn

loc_48A656:             ; jumptable 0048A5A1 case 1
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
cmp     ax, 400h
jle     short loc_48A6C1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0F300h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1A00h
mov     ds:dword_5F888C, 0F3000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 1A000000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 400h
mov     ds:word_5F88A8, ax
jmp     loc_48A60A

loc_48A6C1:
mov     ax, ds:word_5F848E
jmp     loc_48A618

loc_48A6CC:             ; jumptable 0048A5A1 case 2
inc     byte ptr ds:dword_5F836C+1
jmp     loc_48A60A

loc_48A6D7:             ; jumptable 0048A5A1 case 3
cmp     byte ptr ds:dword_5F836C+1, 0
jnz     def_48A5A1      ; jumptable 0048A5A1 default case
mov     bl, ds:byte_5F8421
and     bl, 9Fh
mov     ds:byte_5F8421, bl
mov     bh, bl
or      bh, 40h
mov     ds:byte_5F8421, bh
jmp     loc_48A60A
sub_48A583 endp




sub_48A703 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48A709[edx*4]
pop     edx
retn
sub_48A703 endp




sub_48A712 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 1
jb      short loc_48A733
jbe     short loc_48A796
cmp     al, 2
jz      loc_48A82F
jmp     loc_48A869

loc_48A733:
test    al, al
jnz     loc_48A869
mov     edx, 80h
mov     eax, 5Eh ; '^'
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_5225A8
mov     dword ptr [esi+0A4h], offset unk_5225F4
mov     dword ptr [esi+0Ch], 0
mov     ds:word_77EA80, 7Fh
mov     ds:word_55A54C, 0FDA7h
mov     ds:word_55A54E, 8
mov     byte ptr [esi+0Ah], 80h
mov     byte ptr [esi+0Bh], 0
inc     byte ptr [esi+5]

loc_48A796:
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      loc_48A869
and     byte ptr [ecx], 0FDh
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 0ED80h
mov     word ptr [ecx+53Ah], 0FFFFh
mov     word ptr [ecx+53Ch], 1E80h
mov     eax, [ecx+536h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+528h], eax
mov     eax, [ecx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+52Ch], eax
mov     eax, [ecx+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+530h], eax
mov     word ptr [ecx+540h], 0
mov     word ptr [ecx+542h], 400h
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 30h ; '0'
inc     byte ptr [esi+5]
jmp     short loc_48A869

loc_48A82F:
mov     ah, [esi+0Bh]
cmp     ah, 2Dh ; '-'
jnb     short loc_48A840
mov     dh, ah
inc     dh
mov     [esi+0Bh], dh
jmp     short loc_48A869

loc_48A840:
mov     byte ptr [esi+0Bh], 0
mov     eax, offset unk_52251C
call    sub_49DB4D
mov     eax, 7
call    sub_49E0D7
mov     eax, 240009h
call    sub_4D8E42
inc     byte ptr [esi+4]
mov     byte ptr [esi+5], 0

loc_48A869:
call    sub_49DBD1
call    sub_49DECF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48A712 endp




sub_48A878 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_48A88D
cmp     al, 1
jz      short loc_48A8BE
jmp     loc_48A8F9

loc_48A88D:
call    sub_49DBD1
call    sub_4D8ECC
test    eax, eax
jz      short loc_48A8F9
call    sub_436868
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_522604
mov     dword ptr [edx+0A4h], offset unk_52290C
inc     byte ptr [edx+5]
jmp     short loc_48A8F9

loc_48A8BE:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_48A8ED
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jz      short loc_48A8F4
mov     bh, [edx+0Ah]
test    bh, 80h
jnz     short loc_48A8F4
mov     cl, bh
or      cl, 1
mov     [edx+0Ah], cl
inc     byte ptr [edx+4]
jmp     short loc_48A8F0

loc_48A8ED:
add     [edx+4], al

loc_48A8F0:
mov     byte ptr [edx+5], 0

loc_48A8F4:
call    sub_49DBD1

loc_48A8F9:
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_48A878 endp




sub_48A902 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_48A916
jbe     short loc_48A953
cmp     al, 2
jz      short loc_48A978
pop     edx
pop     ecx
retn

loc_48A916:
test    al, al
jnz     short loc_48A984
mov     edx, 80h
mov     eax, 156h
call    sub_4DC979
call    sub_4E1D8A
call    sub_4D8EB1
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_48A94D
xor     eax, eax
call    sub_4A0E75
mov     eax, 0FFFFFFFFh
call    sub_4A0595

loc_48A94D:
inc     byte ptr [ecx+5]
pop     edx
pop     ecx
retn

loc_48A953:
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     dl, 1
mov     byte ptr ds:dword_77E954, dl
test    [ecx+0Ah], dl
jz      short loc_48A971
call    sub_42A66D
jmp     short loc_48A94D

loc_48A971:
call    sub_42AC90
jmp     short loc_48A94D

loc_48A978:
mov     ah, ds:byte_77EAB8
test    ah, ah
jnz     short loc_48A984
mov     [ecx], ah

loc_48A984:
pop     edx
pop     ecx
retn
sub_48A902 endp




sub_48A987 proc near
cmp     dword ptr [eax+10h], 0
jnz     short loc_48A993
mov     byte ptr [eax+6], 0
jmp     short loc_48A999

loc_48A993:
cmp     byte ptr [eax+6], 0
jnz     short locret_48A9AA

loc_48A999:
cmp     ds:word_6E23D6, 0
jnz     short locret_48A9AA
and     byte ptr [eax+0Ah], 7Fh
inc     byte ptr [eax+6]

locret_48A9AA:
retn
sub_48A987 endp

jpt_48AA00 dd offset loc_48AA07 ; jump table for switch statement
dd offset loc_48AA1D
dd offset loc_48AA2E
dd offset loc_48AA85
dd offset loc_48AAA4
dd offset loc_48AAB7



sub_48A9C3 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48A9F0
mov     eax, offset unk_52256C
call    sub_49DB4D
mov     eax, offset unk_522530
call    sub_49DB4D
mov     eax, offset unk_522544
call    sub_49DB4D
mov     byte ptr [edx+6], 0

loc_48A9F0:
mov     al, [edx+6]
cmp     al, 5           ; switch 6 cases
ja      def_48AA00      ; jumptable 0048AA00 default case
and     eax, 0FFh
jmp     jpt_48AA00[eax*4] ; switch jump

loc_48AA07:             ; jumptable 0048AA00 case 0
cmp     dword ptr [edx+10h], 14h
jnz     loc_48AB25
xor     al, al
mov     ds:byte_55A550, al
jmp     loc_48AA9C

loc_48AA1D:             ; jumptable 0048AA00 case 1
xor     eax, eax
call    sub_48AD6E
test    eax, eax
jz      loc_48AB25
jmp     short loc_48AA9C

loc_48AA2E:             ; jumptable 0048AA00 case 2
mov     eax, 1
call    sub_48AD6E
xor     eax, eax
call    sub_48AC87
test    eax, eax
jz      short loc_48AA46
inc     byte ptr [edx+6]

loc_48AA46:
mov     eax, [edx+28h]
mov     bx, ds:word_55A54C
sub     ebx, 54h ; 'T'
mov     [eax+16h], bx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
mov     eax, [edx+2Ch]
mov     bx, ds:word_55A54C
sub     ebx, 54h ; 'T'

loc_48AA70:
mov     [eax+16h], bx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
jmp     loc_48AB25

loc_48AA85:             ; jumptable 0048AA00 case 3
mov     eax, 1
call    sub_48AD6E
cmp     dword ptr [edx+10h], 0B4h

loc_48AA96:
jnz     loc_48AB25

loc_48AA9C:
inc     byte ptr [edx+6]
jmp     loc_48AB25

loc_48AAA4:             ; jumptable 0048AA00 case 4
mov     eax, 1
call    sub_48AD6E
cmp     dword ptr [edx+10h], 208h
jmp     short loc_48AA96

loc_48AAB7:             ; jumptable 0048AA00 case 5
mov     eax, 1
call    sub_48AD6E
mov     eax, 1
call    sub_48AC87
test    eax, eax
jz      short loc_48AAD2
inc     byte ptr [edx+6]

loc_48AAD2:
mov     eax, [edx+24h]
mov     bx, ds:word_55A54C
mov     [eax+16h], bx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
mov     eax, [edx+28h]
mov     bx, ds:word_55A54C
sub     ebx, 34h ; '4'
mov     [eax+16h], bx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
mov     eax, [edx+2Ch]
mov     bx, ds:word_55A54C
sub     ebx, 34h ; '4'
jmp     loc_48AA70

def_48AA00:             ; jumptable 0048AA00 default case
mov     eax, 1
call    sub_48AD6E

loc_48AB25:
mov     eax, [edx+34h]
mov     dx, ds:word_55A54C
mov     [eax+4Ah], dx
pop     edx
pop     ecx
pop     ebx
retn
sub_48A9C3 endp




sub_48AB37 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48AB82
mov     eax, [eax+24h]
call    sub_4DE336
mov     eax, [edx+28h]
call    sub_4DE2F6
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     eax, [edx+34h]
call    sub_4DE477
mov     eax, offset unk_522558
call    sub_49DB4D
mov     eax, offset unk_522580
call    sub_49DB4D
mov     eax, offset unk_522594
call    sub_49DB4D
mov     byte ptr [edx+6], 0

loc_48AB82:
mov     eax, [edx+38h]
sub     word ptr [eax+4Ah], 5
mov     edx, [edx+3Ch]
sub     word ptr [edx+4Ah], 5
pop     edx
retn
sub_48AB37 endp




sub_48AB94 proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48ABCF
mov     eax, [eax+38h]
call    sub_4DE477
mov     eax, [edx+3Ch]
call    sub_4DE477
mov     byte ptr [edx+6], 0
or      ds:byte_5F8364, 2
mov     ds:byte_5F88AC, 80h
xor     bh, bh
mov     byte ptr ds:dword_5F84CB+1, bh
mov     byte ptr ds:dword_5F84CB+2, 6

loc_48ABCF:
mov     al, [edx+6]
cmp     al, 1
jb      short loc_48ABDB
jbe     short loc_48ABE9
pop     edx
pop     ebx
retn

loc_48ABDB:
test    al, al
jnz     short loc_48ABFA
mov     ds:byte_55A550, al
inc     al
mov     [edx+6], al

loc_48ABE9:
mov     eax, 2
call    sub_48AD6E
test    eax, eax
jz      short loc_48ABFA
inc     byte ptr [edx+6]

loc_48ABFA:
pop     edx
pop     ebx
retn
sub_48AB94 endp




sub_48ABFD proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48AC0E
mov     byte ptr [eax+6], 0
mov     ds:byte_5F88AC, 30h ; '0'

locret_48AC0E:
retn
sub_48ABFD endp




sub_48AC0F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_48AC2E
mov     eax, [eax+30h]
call    sub_4DE2F6
mov     byte ptr [ecx+6], 0
jmp     short loc_48AC3F

loc_48AC2E:
cmp     edx, 1Eh
jnz     short loc_48AC3F
mov     edx, 28h ; '('
xor     eax, eax
call    sub_4A0E24

loc_48AC3F:
mov     al, [ecx+6]
test    al, al
jbe     short loc_48AC4E
cmp     al, 1
jz      short loc_48AC6B
pop     edx
pop     ecx
pop     ebx
retn

loc_48AC4E:
cmp     dword ptr [ecx+10h], 32h ; '2'
jnz     short loc_48AC83
mov     byte ptr [ebx+548h], 81h
mov     byte ptr [ebx+168h], 0
mov     byte ptr [ebx+169h], 0
jmp     short loc_48AC80

loc_48AC6B:
mov     eax, [ebx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_48AC83
mov     byte ptr [ebx+548h], 0

loc_48AC80:
inc     byte ptr [ecx+6]

loc_48AC83:
pop     edx
pop     ecx
pop     ebx
retn
sub_48AC0F endp




sub_48AC87 proc near
push    ecx
push    edx
xor     edx, edx
test    eax, eax
jnz     loc_48AD0E
mov     eax, dword ptr ds:unk_55A54A
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jl      short loc_48ACAB
xor     ecx, ecx
mov     ds:word_55A54E, cx
jmp     short loc_48ACFB

loc_48ACAB:
cmp     eax, 0FFFFFFC3h
jle     short loc_48ACBB
mov     ds:word_55A54E, 2
jmp     short loc_48ACE9

loc_48ACBB:
cmp     eax, 0FFFFFF4Bh
jle     short loc_48ACCD
mov     ds:word_55A54E, 4
jmp     short loc_48ACE9

loc_48ACCD:
cmp     eax, 0FFFFFE97h
jle     short loc_48ACDF
mov     ds:word_55A54E, 6
jmp     short loc_48ACE9

loc_48ACDF:
cmp     ds:word_55A54E, 0
jle     short loc_48ACFB

loc_48ACE9:
mov     ax, ds:word_55A54E
add     ds:word_55A54C, ax
mov     eax, edx
pop     edx
pop     ecx
retn

loc_48ACFB:
mov     ds:word_55A54C, 0FFFFh

loc_48AD04:
mov     edx, 1
mov     eax, edx
pop     edx
pop     ecx
retn

loc_48AD0E:
mov     eax, dword ptr ds:unk_55A54A
sar     eax, 10h
cmp     eax, 0FFFFFE97h
jge     short loc_48AD28

loc_48AD1D:
mov     ds:word_55A54E, 6
jmp     short loc_48AD4D

loc_48AD28:
cmp     eax, 0FFFFFF4Bh
jl      short loc_48AD1D
cmp     eax, 0FFFFFFC3h
jge     short loc_48AD3F
mov     ds:word_55A54E, 4
jmp     short loc_48AD4D

loc_48AD3F:
cmp     eax, 0FFFFFFFFh
jg      short loc_48AD4D
mov     ds:word_55A54E, 2

loc_48AD4D:
mov     eax, dword ptr ds:unk_55A54A
sar     eax, 10h
cmp     eax, 0FFFFFDA7h
jle     short loc_48AD04
mov     ax, ds:word_55A54E
sub     ds:word_55A54C, ax
mov     eax, edx
pop     edx
pop     ecx
retn
sub_48AC87 endp




sub_48AD6E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edx, eax
xor     edi, edi
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
or      byte ptr [esi+7], 2
cmp     edx, 1
jb      short loc_48ADB4
jbe     short loc_48ADFF
cmp     edx, 2
jz      short loc_48AE0E
jmp     loc_48AE53

loc_48ADB4:
test    edx, edx
jnz     loc_48AE53
mov     bh, ds:byte_55A550
cmp     bh, 19h
jnb     short loc_48ADD6
mov     dl, bh
add     dl, bh
mov     [esi+6], dl
mov     [esi+5], dl
mov     [esi+4], dl
jmp     short loc_48ADE8

loc_48ADD6:
mov     byte ptr [esi+6], 32h ; '2'
mov     al, [esi+6]
mov     [esi+5], al
mov     [esi+4], al
mov     edi, 1

loc_48ADE8:
mov     cl, ds:byte_55A550
cmp     cl, 0FFh
jnb     short loc_48AE53
mov     ch, cl
inc     ch
mov     ds:byte_55A550, ch
jmp     short loc_48AE53

loc_48ADFF:
mov     byte ptr [esi+6], 32h ; '2'
mov     al, [esi+6]
mov     [esi+5], al
mov     [esi+4], al
jmp     short loc_48AE53

loc_48AE0E:
mov     dl, ds:byte_55A550
cmp     dl, 19h
jnb     short loc_48AE2C
mov     al, dl
add     al, dl
mov     ah, 32h ; '2'
sub     ah, al
mov     [esi+6], ah
mov     [esi+5], ah
mov     [esi+4], ah
jmp     short loc_48AE3E

loc_48AE2C:
mov     byte ptr [esi+6], 0
mov     al, [esi+6]
mov     [esi+5], al
mov     [esi+4], al
mov     edi, 1

loc_48AE3E:
mov     dh, ds:byte_55A550
cmp     dh, 0FFh
jnb     short loc_48AE53
mov     bl, dh
inc     bl
mov     ds:byte_55A550, bl

loc_48AE53:
mov     edx, ds:dword_77E6DC
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
mov     ebp, edx
push    0
mov     ecx, 4Fh ; 'O'
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 38h ; '8'
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, ebp
call    sub_4F87A6
mov     eax, edi
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48AD6E endp




sub_48AEA4 proc near
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
sub_48AEA4 endp




sub_48AEF0 proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_48AF92
mov     eax, 7
call    sub_48AEA4
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     eax, [edx+34h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+38h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+3Ch]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+40h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+44h]
mov     byte ptr [eax+9], 8
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

loc_48AF92:
pop     edx
pop     ebx
retn
sub_48AEF0 endp




sub_48AF95 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48AFD1
mov     eax, 5
call    sub_48AEA4
mov     edx, [edx+24h]
and     byte ptr [edx], 0FDh
and     ds:byte_56F80C, 0FCh
and     ds:byte_56F87C, 0FCh
and     ds:byte_56F8EC, 0FCh
and     ds:byte_56F924, 0FCh
and     ds:byte_56F95C, 0FCh

loc_48AFD1:
pop     edx
retn
sub_48AF95 endp




sub_48AFD3 proc near

var_10= word ptr -10h
var_E= word ptr -0Eh
var_C= word ptr -0Ch

push    ebx
push    edx
sub     esp, 8
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_48B0C4
mov     eax, 6
call    sub_48AEA4
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Ch], 1
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+0Ah], 0
mov     bl, [eax+0Ah]
mov     [eax+9], bl
mov     eax, [edx+30h]
or      byte ptr [eax], 2
mov     byte ptr [eax+0Ah], 0
mov     bl, [eax+0Ah]
mov     [eax+9], bl
mov     eax, [edx+34h]
or      byte ptr [eax], 2
mov     eax, [edx+38h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
or      byte ptr [eax], 2
mov     eax, [edx+3Ch]
or      byte ptr [eax], 2
mov     eax, [edx+40h]
or      byte ptr [eax], 2
mov     eax, [edx+44h]
or      byte ptr [eax], 2
mov     [esp+10h+var_10], 0B8h
mov     [esp+10h+var_E], 0FF92h
mov     [esp+10h+var_C], 12Ch
mov     eax, esp
call    sub_43B799
mov     [esp+10h+var_10], 46h ; 'F'
mov     [esp+10h+var_C], 10Eh
mov     eax, esp
call    sub_43B799
mov     [esp+10h+var_10], 3Fh ; '?'
mov     [esp+10h+var_C], 0B4h
mov     eax, esp
call    sub_43B799
mov     [esp+10h+var_C], 28h ; '('
mov     eax, esp
call    sub_43B799
mov     [esp+10h+var_10], 0C8h
mov     [esp+10h+var_C], 8Ch
mov     eax, esp
call    sub_43B799
mov     eax, [edx+48h]
mov     byte ptr [eax+9], 2
mov     word ptr [eax+48h], 0F0h
mov     word ptr [eax+4Ah], 0FFBAh
mov     word ptr [eax+4Ch], 7Ch ; '|'

loc_48B0C4:
cmp     dword ptr [edx+10h], 1Eh
jnz     short loc_48B0D1
mov     eax, [edx+28h]
mov     byte ptr [eax+0Ch], 0

loc_48B0D1:
cmp     dword ptr [edx+10h], 5Ah ; 'Z'
jnz     short loc_48B0E2
mov     eax, [edx+40h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

loc_48B0E2:
add     esp, 8
pop     edx
pop     ebx
retn
sub_48AFD3 endp




sub_48B0E8 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48B0FA
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_48B0FA:
cmp     dword ptr [eax+10h], 96h
jnz     short loc_48B10E
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0

loc_48B10E:
pop     edx
retn
sub_48B0E8 endp




sub_48B110 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48B125
mov     edx, [eax+2Ch]
or      byte ptr [edx], 2
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_48B125:
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_48B132
mov     edx, [eax+38h]
mov     byte ptr [edx+0Ah], 0

loc_48B132:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_48B143
mov     edx, [eax+40h]
mov     byte ptr [edx+9], 4
mov     byte ptr [edx+0Ah], 0

loc_48B143:
cmp     dword ptr [eax+10h], 41h ; 'A'
jnz     short loc_48B154
mov     eax, [eax+34h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_48B154:
pop     edx
retn
sub_48B110 endp




sub_48B156 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48B168
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 4
mov     byte ptr [edx+0Ah], 0

loc_48B168:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_48B179
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0

loc_48B179:
pop     edx
retn
sub_48B156 endp




sub_48B17B proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48B1B4
mov     edx, [eax+3Ch]
mov     byte ptr [edx+110h], 0Ah
mov     edx, [eax+44h]
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+9], 6
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+48h]
mov     word ptr [edx+48h], 180h
mov     word ptr [edx+4Ah], 0FF38h
mov     word ptr [edx+4Ch], 0
mov     byte ptr [edx+9], 0

