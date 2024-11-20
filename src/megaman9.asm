pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_413FA4 endp




sub_413FFC proc near
push    ebx
push    edx
lea     edx, [eax+640h]
mov     ebx, ds:dword_560BEC
cmp     ebx, 28h ; '('
jb      short loc_414020
jbe     short loc_41402F
cmp     ebx, 5Ah ; 'Z'
jb      short loc_41404E
jbe     short loc_41403D
cmp     ebx, 69h ; 'i'
jz      short loc_414044
pop     edx
pop     ebx
retn

loc_414020:
cmp     ebx, 5
jb      short loc_41404E
jbe     short loc_41402F
cmp     ebx, 14h
jz      short loc_414036
pop     edx
pop     ebx
retn

loc_41402F:
mov     ebx, 0Bh
jmp     short loc_414049

loc_414036:
mov     ebx, 0Ch
jmp     short loc_414049

loc_41403D:
mov     ebx, 0Dh
jmp     short loc_414049

loc_414044:
mov     ebx, 0Eh

loc_414049:
call    sub_414377

loc_41404E:
pop     edx
pop     ebx
retn
sub_413FFC endp




sub_414051 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414078
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_414078:
mov     edx, ds:dword_560BEC
cmp     edx, 0Ah
jz      short loc_414088
cmp     edx, 1Eh
jnz     short loc_414096

loc_414088:
mov     ebx, 0Fh
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_414096:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_414051 endp




sub_41409B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 1Eh
jb      short loc_4140C2
jbe     short loc_4140C7
cmp     eax, 32h ; '2'
jb      short loc_4140D3
jbe     short loc_4140C7
cmp     eax, 50h ; 'P'
jz      short loc_4140C7
pop     edx
pop     ecx
pop     ebx
retn

loc_4140C2:
cmp     eax, 1
jnz     short loc_4140D3

loc_4140C7:
mov     ebx, 11h
mov     eax, ecx
call    sub_414377

loc_4140D3:
pop     edx
pop     ecx
pop     ebx
retn
sub_41409B endp




sub_4140D7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41410C
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 12h
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_41410C:
cmp     ds:dword_560BEC, 5
jnz     short loc_414123
mov     ebx, 13h
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_414123:
cmp     ds:dword_560BEC, 3Ch ; '<'
jnz     short loc_41413A
mov     ebx, 12h
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_41413A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4140D7 endp




sub_41413F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414174
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 14h
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_414174:
mov     eax, ds:dword_560BEC
cmp     eax, 87h
jb      short loc_414197
jbe     short loc_4141A3
cmp     eax, 8Ch
jb      short loc_4141B8
jbe     short loc_4141AA
cmp     eax, 96h
jz      short loc_4141AA
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_414197:
cmp     eax, 1Eh
jnz     short loc_4141B8
mov     ebx, 15h
jmp     short loc_4141AF

loc_4141A3:
mov     ebx, 16h
jmp     short loc_4141AF

loc_4141AA:
mov     ebx, 17h

loc_4141AF:
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_4141B8:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41413F endp




sub_4141BD proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
jnz     short loc_4141D1
mov     word ptr [eax+18h], 12Ch
mov     [eax+0Dh], dl
inc     byte ptr [eax+0Ah]

loc_4141D1:
pop     edx
retn
sub_4141BD endp




sub_4141D3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41420E
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 18h
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     word ptr [ecx+18h], 64h ; 'd'
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_41420E:
mov     eax, ds:dword_560BEC
cmp     eax, 50h ; 'P'
jb      short loc_41422D
jbe     short loc_414239
cmp     eax, 69h ; 'i'
jb      short loc_41424E
jbe     short loc_414232
cmp     eax, 0AAh
jz      short loc_414240
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41422D:
cmp     eax, 0Ah
jnz     short loc_41424E

loc_414232:
mov     ebx, 19h
jmp     short loc_414245

loc_414239:
mov     ebx, 1Ah
jmp     short loc_414245

loc_414240:
mov     ebx, 18h

loc_414245:
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_41424E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4141D3 endp




sub_414253 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 0Ah
jb      short loc_414298
jbe     short loc_414275
cmp     eax, 69h ; 'i'
jz      short loc_41428A
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_414275:
xor     ebx, ebx
mov     edx, 0Ah
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 19h
jmp     short loc_41428F

loc_41428A:
mov     ebx, 18h

loc_41428F:
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_414298:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_414253 endp




sub_41429D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 0AAh
jb      short loc_4142C3
jbe     short loc_4142F6
cmp     eax, 0C8h
jz      short loc_4142FD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4142C3:
cmp     eax, 9Bh
jnz     short loc_41430B
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+114h], 14h
mov     ebx, 1Bh
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4142F6:
mov     ebx, 1Ch
jmp     short loc_414302

loc_4142FD:
mov     ebx, 1Dh

loc_414302:
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_41430B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41429D endp




sub_414310 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414367
mov     word ptr [ecx+14h], 3Ch ; '<'
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+18h], 96h
mov     word ptr [ecx+56h], 0
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+114h], 7
mov     ebx, 1Fh
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Eh]
inc     byte ptr [ecx+0Ah]

loc_414367:
cmp     byte ptr [ecx+0Eh], 0
jz      short loc_414372
sub     word ptr [ecx+18h], 8

loc_414372:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_414310 endp




sub_414377 proc near
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
mov     ebx, ds:off_50E614[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50E694[eax*4]
mov     [edx+10h], eax
retn
sub_414377 endp




sub_4143B7 proc near
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
jb      short loc_4143E3
jbe     short loc_4143E7
cmp     ax, 7FFFh
jnz     short loc_4143E3
mov     word ptr [edx+4], 0
jmp     short loc_4143E7

loc_4143E3:
inc     word ptr [esi+4]

loc_4143E7:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_41442C
movsx   eax, word ptr [esi]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044

loc_41442C:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_414457
jbe     short loc_41445B
cmp     ax, 7FFFh
jnz     short loc_414457
mov     word ptr [esi+0Ah], 0
jmp     short loc_41445B

loc_414457:
inc     word ptr [esi+0Ah]

loc_41445B:
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
jz      short loc_4144AA
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044

loc_4144AA:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4143B7 endp




sub_4144B7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559140, dx
mov     eax, ds:dword_55913C
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 10000Fh

loc_4144F3:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4144B7 endp




sub_4144FF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559138, dx
mov     eax, ds:dword_559134
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 120011h
jmp     short loc_4144F3
sub_4144FF endp




sub_41453D proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_55913C
test    ecx, ecx
jz      loc_4145E3
cmp     ds:dword_559134, 0
jz      loc_4145E3
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_41459F
jge     short loc_414577
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_414593

loc_414577:
inc     ds:word_559140
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_55913C+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_41459F
add     eax, 4

loc_414593:
mov     ds:dword_55913C, eax
mov     eax, edx
call    sub_4144B7

loc_41459F:
mov     eax, ds:dword_559134
mov     di, [eax+2]
test    di, di
jz      short loc_4145E3
jge     short loc_4145BB
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_4145D7

loc_4145BB:
inc     ds:word_559138
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_559134+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_4145E3
add     eax, 4

loc_4145D7:
mov     ds:dword_559134, eax
mov     eax, edx
call    sub_4144FF

loc_4145E3:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_41453D endp




sub_4145E8 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_559148
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_414642
cmp     bl, ds:byte_560BE4
jnz     short loc_414642
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_414642
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_414642
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50E740[eax*4]
mov     ds:dword_55913C, eax
mov     eax, edx
call    sub_4144B7
add     ds:dword_559148, 6

loc_414642:
mov     eax, ds:dword_559144
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_414689
cmp     bl, [ecx+8]
jnz     short loc_414689
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_414689
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_414689
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50E814[eax*4]
mov     ds:dword_559134, eax
mov     eax, edx
call    sub_4144FF
add     ds:dword_559144, 6

loc_414689:
mov     eax, edx
call    sub_41453D
pop     edx
pop     ecx
pop     ebx
retn
sub_4145E8 endp




sub_414694 proc near
push    ebx
push    ecx
push    edx
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
jnz     short loc_4146DE
mov     ds:dword_559148, offset unk_50E89A
mov     ds:dword_559144, offset unk_50E8CA
jmp     short loc_4146F2

loc_4146DE:
mov     ds:dword_559148, offset unk_50E84C
mov     ds:dword_559144, offset unk_50E864

loc_4146F2:
inc     byte ptr [ecx+8]
mov     eax, ecx
call    sub_4147FD
pop     edx
pop     ecx
pop     ebx
retn
sub_414694 endp




sub_414700 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414719
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414719:
pop     edx
pop     ecx
pop     ebx
retn
sub_414700 endp




sub_41471D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414739
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414739:
pop     edx
pop     ecx
pop     ebx
retn
sub_41471D endp




sub_41473D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414759
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414759:
pop     edx
pop     ecx
pop     ebx
retn
sub_41473D endp




sub_41475D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414779
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414779:
pop     edx
pop     ecx
pop     ebx
retn
sub_41475D endp




sub_41477D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414799
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414799:
pop     edx
pop     ecx
pop     ebx
retn
sub_41477D endp




sub_41479D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4147B9
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4147B9:
pop     edx
pop     ecx
pop     ebx
retn
sub_41479D endp




sub_4147BD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4147D9
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4147D9:
pop     edx
pop     ecx
pop     ebx
retn
sub_4147BD endp




sub_4147DD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4147F9
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4147F9:
pop     edx
pop     ecx
pop     ebx
retn
sub_4147DD endp




sub_4147FD proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_414806[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_414825
mov     eax, ecx
call    sub_4DEADD

loc_414825:
mov     eax, ecx
call    sub_4145E8
pop     edx
pop     ecx
retn
sub_4147FD endp



; Attributes: thunk

sub_41482F proc near
jmp     sub_4DE336
sub_41482F endp




sub_414834 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_41483A[edx*4]
pop     edx
retn
sub_414834 endp




sub_414843 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_414866
mov     word ptr [ecx+56h], 0FA00h
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414866:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_414843 endp




sub_414878 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_414895
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414895:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414878 endp




sub_4148A0 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4148B6
jbe     short loc_4148E3
cmp     al, 2
jz      short loc_4148F5
pop     edx
pop     ecx
pop     ebx
retn

loc_4148B6:
test    al, al
jnz     short loc_4148FC
mov     word ptr [ecx+14h], 0FFA6h
mov     word ptr [ecx+16h], 0FFDDh
mov     word ptr [ecx+18h], 154h
mov     word ptr [ecx+56h], 0FE40h
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4148E3:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_4148F5:
mov     eax, ecx
call    sub_4DEADD

loc_4148FC:
pop     edx
pop     ecx
pop     ebx
retn
sub_4148A0 endp




sub_414900 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_414914
cmp     al, 1
jz      short loc_41493D
pop     edx
pop     ecx
pop     ebx
retn

loc_414914:
mov     word ptr [ecx+14h], 0FFE2h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 122h
mov     word ptr [ecx+56h], 0FE00h
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41493D:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414900 endp




sub_414948 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_41495C
cmp     al, 1
jz      short loc_414985
pop     edx
pop     ecx
pop     ebx
retn

loc_41495C:
mov     word ptr [ecx+14h], 0FFE2h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 122h
mov     word ptr [ecx+56h], 0FC40h
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414985:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414948 endp




sub_414990 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4149A4
cmp     al, 1
jz      short loc_4149CD
pop     edx
pop     ecx
pop     ebx
retn

loc_4149A4:
mov     word ptr [ecx+14h], 0FFE2h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 122h
mov     word ptr [ecx+56h], 400h
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4149CD:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414990 endp




sub_4149D8 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4149EC
cmp     al, 1
jz      short loc_414A0F
pop     edx
pop     ecx
pop     ebx
retn

loc_4149EC:
mov     word ptr [ecx+14h], 0FFE2h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 122h
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414A0F:
mov     eax, ecx
call    sub_4DEADD
sub     word ptr [ecx+14h], 2
pop     edx
pop     ecx
pop     ebx
retn
sub_4149D8 endp




sub_414A1F proc near
push    edx
mov     edx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_414A2F
cmp     al, 1
jz      short loc_414A3F
pop     edx
retn

loc_414A2F:
mov     word ptr [edx+14h], 0FB50h
mov     eax, edx
call    sub_4DEADD
inc     byte ptr [edx+0Ah]

loc_414A3F:
mov     eax, edx
call    sub_4DEADD
dec     word ptr [edx+14h]
pop     edx
retn
sub_414A1F endp




sub_414A4C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_414A60
cmp     al, 1
jz      short loc_414A71
pop     edx
pop     ecx
pop     ebx
retn

loc_414A60:
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414A71:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414A4C endp




sub_414A7C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_414A90
cmp     al, 1
jz      short loc_414AA1
pop     edx
pop     ecx
pop     ebx
retn

loc_414A90:
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414AA1:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414A7C endp




sub_414AAC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_414AC0
cmp     al, 1
jz      short loc_414AD1
pop     edx
pop     ecx
pop     ebx
retn

loc_414AC0:
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414AD1:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414AAC endp

db 8Dh, 40h, 0
jpt_414B00 dd offset loc_414B07 ; jump table for switch statement
dd offset loc_414B2F
dd offset loc_414B45
dd offset loc_414B57



sub_414AEF proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      short def_414B00 ; jumptable 00414B00 default case
and     eax, 0FFh
jmp     jpt_414B00[eax*4] ; switch jump

loc_414B07:             ; jumptable 00414B00 case 0
mov     word ptr [ecx+14h], 0F5A6h
mov     word ptr [ecx+56h], 4FCh
mov     word ptr [ecx+18h], 15Eh
xor     ebx, ebx
mov     edx, 0Ah
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_414B2F:             ; jumptable 00414B00 case 1
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_414B45:             ; jumptable 00414B00 case 2
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_414B57:             ; jumptable 00414B00 case 3
mov     eax, ecx
call    sub_4DEADD

def_414B00:             ; jumptable 00414B00 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_414AEF endp




sub_414B62 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_414B68[edx*4]
pop     edx
retn
sub_414B62 endp




sub_414B71 proc near

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
jnz     short loc_414C15
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
call    sub_414EC5
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE
inc     byte ptr [ecx+8]

loc_414C15:
mov     eax, ecx
call    sub_414B62
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+8]
cmp     al, 0Bh
jb      short loc_414C5E
jbe     loc_414D18
cmp     al, 0Eh
jb      short loc_414C51
jbe     loc_414DC1
cmp     al, 10h
jb      loc_414EAE
jbe     loc_414E0B
cmp     al, 11h
jz      loc_414E89
jmp     loc_414EAE

loc_414C51:
cmp     al, 0Ch
jz      loc_414D6B
jmp     loc_414EAE

loc_414C5E:
cmp     al, 7
jb      short loc_414C6D
jbe     short loc_414C9D
cmp     al, 9
jz      short loc_414CD3
jmp     loc_414EAE

loc_414C6D:
test    al, al
jnz     loc_414EAE
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     loc_414EAE
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE
xor     ebx, ebx

loc_414C8F:
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
jmp     loc_414EAE

loc_414C9D:
mov     eax, [esp+1Ch+var_1C]
mov     ebx, [eax+10h]
cmp     ebx, 1
jnz     short loc_414CB1
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414CB1:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 14h
jnz     loc_414EAE
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE
mov     ebx, 2
jmp     short loc_414C8F

loc_414CD3:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_414CEA
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414CEA:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 18h
jnz     short loc_414D01
mov     ebx, 4
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414D01:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 20h ; ' '
jnz     loc_414EAE
mov     ebx, 0Ch
jmp     loc_414C8F

loc_414D18:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_414D3D
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE
mov     ebx, 5
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414D3D:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 14h
jnz     short loc_414D54
mov     ebx, 5
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414D54:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     loc_414EAE
mov     ebx, 5
jmp     loc_414C8F

loc_414D6B:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_414D90
mov     ebx, 5
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE

loc_414D90:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_414DA7
mov     ebx, 5
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414DA7:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 8Ch
jnz     loc_414EAE
mov     ebx, 7
jmp     loc_414C8F

loc_414DC1:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_414DE6
mov     ebx, 8
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 4
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE

loc_414DE6:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 0Ah
jnz     loc_414EAE
mov     ebx, 9
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 5
jmp     loc_414EA5

loc_414E0B:
mov     eax, [esp+1Ch+var_1C]
mov     esi, [eax+10h]
cmp     esi, 0Ah
jnz     short loc_414E2F
mov     ebx, esi
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE

loc_414E2F:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 29h ; ')'
jnz     short loc_414E54
mov     ebx, 0Ah
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE

loc_414E54:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_414E6B
mov     ebx, 0Ah
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414E6B:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 46h ; 'F'
jnz     short loc_414EAE
mov     ebx, 0Ah
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 7
jmp     short loc_414EA5

loc_414E89:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_414EAE
mov     ebx, 0Bh
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 6

loc_414EA5:
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE

loc_414EAE:
mov     edx, ebp
mov     eax, ecx
call    sub_414EF7
inc     word ptr [ebp+0]
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_414B71 endp




sub_414EC5 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50E9F4[ebx*4]
mov     [edx+4], eax
retn
sub_414EC5 endp




sub_414EDE proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50EA28[ebx*4]
mov     [edx+8], eax
retn
sub_414EDE endp




sub_414EF7 proc near
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
jb      short loc_414F1C
jbe     short loc_414F1F
cmp     al, 7Fh
jnz     short loc_414F1C
mov     byte ptr [edx+0Eh], 0
jmp     short loc_414F1F

loc_414F1C:
inc     byte ptr [esi+0Eh]

loc_414F1F:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_414F61
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044

loc_414F61:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_414F84
jbe     short loc_414F87
cmp     al, 7Fh
jnz     short loc_414F84
mov     byte ptr [esi+11h], 0
jmp     short loc_414F87

loc_414F84:
inc     byte ptr [esi+11h]

loc_414F87:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_414FC9
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, edi
call    sub_4EE044

loc_414FC9:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_414EF7 endp




sub_414FD4 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559158, dx
mov     eax, ds:dword_559154
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 10000Fh

loc_415010:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_414FD4 endp




sub_41501C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559150, dx
mov     eax, ds:dword_55914C
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 120011h
jmp     short loc_415010
sub_41501C endp




sub_41505A proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_559154
test    ecx, ecx
jz      loc_415100
cmp     ds:dword_55914C, 0
jz      loc_415100
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_4150BC
jge     short loc_415094
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_4150B0

loc_415094:
inc     ds:word_559158
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_559154+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_4150BC
add     eax, 4

loc_4150B0:
mov     ds:dword_559154, eax
mov     eax, edx
call    sub_414FD4

loc_4150BC:
mov     eax, ds:dword_55914C
mov     di, [eax+2]
test    di, di
jz      short loc_415100
jge     short loc_4150D8
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_4150F4

loc_4150D8:
inc     ds:word_559150
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_55914C+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_415100
add     eax, 4

loc_4150F4:
mov     ds:dword_55914C, eax
mov     eax, edx
call    sub_41501C

loc_415100:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_41505A endp




sub_415105 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_559160
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_41515F
cmp     bl, ds:byte_560BE4
jnz     short loc_41515F
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_41515F
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_41515F
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50EB9C[eax*4]
mov     ds:dword_559154, eax
mov     eax, edx
call    sub_414FD4
add     ds:dword_559160, 6

loc_41515F:
mov     eax, ds:dword_55915C
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_4151A6
cmp     bl, [ecx+8]
jnz     short loc_4151A6
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_4151A6
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_4151A6
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50EBC0[eax*4]
mov     ds:dword_55914C, eax
mov     eax, edx
call    sub_41501C
add     ds:dword_55915C, 6

loc_4151A6:
mov     eax, edx
call    sub_41505A
pop     edx
pop     ecx
pop     ebx
retn
sub_415105 endp




sub_4151B1 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     ds:dword_559160, offset unk_50EBF4
mov     ds:dword_55915C, offset unk_50EC2A
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4151B1 endp




sub_4151EA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_415206
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_415206:
pop     edx
pop     ecx
pop     ebx
retn
sub_4151EA endp




sub_41520A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_415226
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_415226:
pop     edx
pop     ecx
pop     ebx
retn
sub_41520A endp




sub_41522A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_415246
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_415246:
pop     edx
pop     ecx
pop     ebx
retn
sub_41522A endp




sub_41524A proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_415253[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_415272
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_415272:
mov     eax, ecx
call    sub_415105
pop     edx
pop     ecx
retn
sub_41524A endp




sub_41527C proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_41528C
mov     eax, edx
call    sub_4151B1

loc_41528C:
mov     eax, edx
call    sub_41524A
pop     edx
retn
sub_41527C endp

jpt_4152D2 dd offset loc_4152D9 ; jump table for switch statement
dd offset def_4152D2
dd offset loc_415336
dd offset def_4152D2



sub_4152A5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
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
mov     al, [eax+8]
cmp     al, 3           ; switch 4 cases
ja      short def_4152D2 ; jumptable 004152D2 default case, cases 1,3
and     eax, 0FFh
jmp     jpt_4152D2[eax*4] ; switch jump

loc_4152D9:             ; jumptable 004152D2 case 0
or      byte ptr [ecx], 2
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
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
jmp     short def_4152D2 ; jumptable 004152D2 default case, cases 1,3

loc_415336:             ; jumptable 004152D2 case 2
mov     eax, ecx
call    sub_4DEADD

def_4152D2:             ; jumptable 004152D2 default case, cases 1,3
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4152A5 endp




sub_415343 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_415387
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_415387:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_415343 endp




sub_415392 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_4153B5
mov     word ptr [ecx+56h], 0FA00h
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4153B5:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_415392 endp




sub_4153C7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4153DD
jbe     short loc_41540A
cmp     al, 2
jz      short loc_41541C
pop     edx
pop     ecx
pop     ebx
retn

loc_4153DD:
test    al, al
jnz     short loc_415423
mov     word ptr [ecx+14h], 0FFB0h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 258h
mov     word ptr [ecx+56h], 0FD00h
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41540A:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_41541C:
mov     eax, ecx
call    sub_4DEADD

loc_415423:
pop     edx
pop     ecx
pop     ebx
retn
sub_4153C7 endp




sub_415427 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_41543B
cmp     al, 1
jz      short loc_415464
pop     edx
pop     ecx
pop     ebx
retn

loc_41543B:
mov     word ptr [ecx+14h], 0FFB0h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 258h
mov     word ptr [ecx+56h], 480h
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_415464:
mov     eax, ecx
call    sub_4DEADD
sub     word ptr [ecx+14h], 2
pop     edx
pop     ecx
pop     ebx
retn
sub_415427 endp




sub_415474 proc near
push    edx
mov     edx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_415484
cmp     al, 1
jz      short loc_415494
pop     edx
retn

loc_415484:
mov     word ptr [edx+14h], 0FAECh
mov     eax, edx
call    sub_4DEADD
inc     byte ptr [edx+0Ah]

loc_415494:
mov     eax, edx
call    sub_4DEADD
dec     word ptr [edx+14h]
pop     edx
retn
sub_415474 endp




sub_4154A1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4154B7
jbe     short loc_4154DE
cmp     al, 2
jz      short loc_4154F0
pop     edx
pop     ecx
pop     ebx
retn

loc_4154B7:
test    al, al
jnz     short loc_4154F7
mov     word ptr [ecx+14h], 0F98Eh
mov     word ptr [ecx+16h], 0FFF6h
mov     word ptr [ecx+18h], 28Ah
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4154DE:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_4154F0:
mov     eax, ecx
call    sub_4DEADD

loc_4154F7:
pop     edx
pop     ecx
pop     ebx
retn
sub_4154A1 endp




sub_4154FB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_415511
jbe     short loc_415538
cmp     al, 2
jz      short loc_41554A
pop     edx
pop     ecx
pop     ebx
retn

loc_415511:
test    al, al
jnz     short loc_415551
mov     word ptr [ecx+14h], 0F60Ah
mov     word ptr [ecx+18h], 186h
mov     word ptr [ecx+56h], 200h
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_415538:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_41554A:
mov     eax, ecx
call    sub_4DEADD

loc_415551:
pop     edx
pop     ecx
pop     ebx
retn
sub_4154FB endp




sub_415555 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_41555B[edx*4]
pop     edx
retn
sub_415555 endp




sub_415564 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
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
jnz     short loc_4155D4
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
inc     byte ptr [ecx+8]

loc_4155D4:
mov     eax, ecx
call    sub_415555
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_415564 endp




sub_4155E0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
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
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
movzx   edi, byte ptr [eax+3]
lea     esi, [eax+5B0h]
mov     ebx, esi
mov     edx, offset dword_560BDC
call    ds:funcs_41561E[edi*4]
mov     edx, esi
mov     eax, ecx
call    sub_415BC2
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_41564F
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_415656

loc_41564F:
mov     eax, ecx
call    sub_4DEADD

loc_415656:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4155E0 endp

jpt_4156BA dd offset loc_4156C1 ; jump table for switch statement
dd offset loc_41571E
dd offset loc_415764
dd offset loc_4157A9
dd offset loc_4157B2
dd offset loc_4157DC
dd offset loc_4157E5
dd offset loc_415822
dd offset loc_415830
dd offset loc_415870
dd offset loc_415891
dd offset loc_4158C3
dd offset loc_4158CF
dd offset loc_4158F4
dd offset loc_41597B
dd offset loc_415999
dd offset loc_4159A5



sub_4156A0 proc near
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     edi, edx
mov     ebp, ebx
mov     al, [eax+8]
cmp     al, 10h         ; switch 17 cases
ja      def_4156BA      ; jumptable 004156BA default case
and     eax, 0FFh
jmp     jpt_4156BA[eax*4] ; switch jump

loc_4156C1:             ; jumptable 004156BA case 0
or      byte ptr [esi], 2
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 1400140h
mov     dword ptr [esi+15Ch], 140h
mov     word ptr [esi+15Eh], 4210h
mov     dword ptr [esi+78h], 0
mov     byte ptr [esi+0ACh], 1
mov     byte ptr [esi+0ADh], 0FFh
xor     ebx, ebx
mov     eax, esi
mov     edx, ebp
call    sub_415B6E
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Bh], 0
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_41571E:             ; jumptable 004156BA case 1
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [edx+9], 2
jnz     def_4156BA      ; jumptable 004156BA default case
mov     eax, [edx+10h]
cmp     eax, 28h ; '('
jb      short loc_415747
jbe     short loc_41575A
cmp     eax, 2Dh ; '-'

loc_41573C:
jz      loc_4157D4
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_415747:
cmp     eax, 0Ah
jnz     def_4156BA      ; jumptable 004156BA default case
mov     ebx, 1
jmp     loc_415963

loc_41575A:
mov     ebx, 2
jmp     loc_415963

loc_415764:             ; jumptable 004156BA case 2
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_41578B
cmp     byte ptr [esi+0A4h], 24h ; '$'
jbe     short loc_41578B
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 48h ; 'H'
mov     eax, esi
call    sub_4DD43B

loc_41578B:
cmp     byte ptr [edi+9], 3
jnz     def_4156BA      ; jumptable 004156BA default case
cmp     dword ptr [edi+10h], 1
jnz     def_4156BA      ; jumptable 004156BA default case
mov     ebx, 4
jmp     loc_415862

loc_4157A9:             ; jumptable 004156BA case 3
mov     byte ptr [esi+0ACh], 2
jmp     short loc_4157D4

loc_4157B2:             ; jumptable 004156BA case 4
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh

loc_4157CE:             ; jumptable 004156BA default case
jnz     def_4156BA

loc_4157D4:
inc     byte ptr [esi+8]
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4157DC:             ; jumptable 004156BA case 5
mov     byte ptr [esi+0ACh], 7
jmp     short loc_4157D4

loc_4157E5:             ; jumptable 004156BA case 6
cmp     byte ptr [edx+9], 4
jnz     def_4156BA      ; jumptable 004156BA default case
mov     eax, [edx+10h]
cmp     eax, 82h
jb      short loc_415805
jbe     short loc_415818
cmp     eax, 8Ch
jmp     loc_41573C

loc_415805:
cmp     eax, 3Ch ; '<'
jnz     def_4156BA      ; jumptable 004156BA default case
mov     ebx, 3
jmp     loc_415963

loc_415818:
mov     ebx, 4
jmp     loc_415963

loc_415822:             ; jumptable 004156BA case 7
mov     byte ptr [esi+0ACh], 3
mov     ebx, 5
jmp     short loc_415862

loc_415830:             ; jumptable 004156BA case 8
cmp     byte ptr [edx+9], 4
jnz     short loc_415849
cmp     dword ptr [edx+10h], 96h
jnz     short loc_415849
mov     ebx, 6
jmp     loc_415963

loc_415849:
cmp     byte ptr [edi+9], 5
jnz     def_4156BA      ; jumptable 004156BA default case
cmp     dword ptr [edi+10h], 1

loc_415857:             ; jumptable 004156BA default case
jnz     def_4156BA
mov     ebx, 8

loc_415862:
mov     edx, ebp
mov     eax, esi
call    sub_415B6E
jmp     loc_4157D4

loc_415870:             ; jumptable 004156BA case 9
mov     byte ptr [esi+0ACh], 4
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [edx+9], 5
jnz     def_4156BA      ; jumptable 004156BA default case
cmp     dword ptr [edi+10h], 6Eh ; 'n'
jmp     loc_4157CE

loc_415891:             ; jumptable 004156BA case 10
cmp     dword ptr [edx+10h], 78h ; 'x'
jnz     short loc_4158A5
mov     ebx, 7
mov     edx, ebp
mov     eax, esi
call    sub_415B6E

loc_4158A5:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0A0h
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jmp     short loc_415857

loc_4158C3:             ; jumptable 004156BA case 11
mov     byte ptr [esi+0ACh], 8
jmp     loc_4157D4

loc_4158CF:             ; jumptable 004156BA case 12
cmp     byte ptr [edx+9], 6
jnz     def_4156BA      ; jumptable 004156BA default case
cmp     dword ptr [edx+10h], 1
jnz     def_4156BA      ; jumptable 004156BA default case
mov     byte ptr [esi+0ACh], 5
mov     ebx, 0Ah
jmp     loc_415862

loc_4158F4:             ; jumptable 004156BA case 13
mov     byte ptr [esi+0ADh], 0FFh
mov     eax, [edx+10h]
cmp     eax, 0C8h
jb      short loc_415935
jbe     short loc_415957
cmp     eax, 104h
jb      short loc_415929
jbe     short loc_415957
cmp     eax, 136h
jb      def_4156BA      ; jumptable 004156BA default case
jbe     short loc_41595E
cmp     eax, 15Eh
jz      short loc_415971
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_415929:
cmp     eax, 0F0h

loc_41592E:
jz      short loc_41595E
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_415935:
cmp     eax, 64h ; 'd'
jb      short loc_41594E
jbe     short loc_41595E
cmp     eax, 6Eh ; 'n'
jb      def_4156BA      ; jumptable 004156BA default case
jbe     short loc_415957
cmp     eax, 0AAh
jmp     short loc_41592E

loc_41594E:
cmp     eax, 0Ah
jnz     def_4156BA      ; jumptable 004156BA default case

loc_415957:
mov     ebx, 9
jmp     short loc_415963

loc_41595E:
mov     ebx, 0Ah

loc_415963:
mov     edx, ebp
mov     eax, esi
call    sub_415B6E
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_415971:
mov     ebx, 9
jmp     loc_415862

loc_41597B:             ; jumptable 004156BA case 14
cmp     byte ptr [edx+9], 6
jnz     short loc_41598A
cmp     dword ptr [edi+10h], 168h
jz      short loc_41595E

loc_41598A:
cmp     byte ptr [edi+9], 7
jnz     short def_4156BA ; jumptable 004156BA default case
cmp     dword ptr [edi+10h], 0Ah
jmp     loc_4157CE

loc_415999:             ; jumptable 004156BA case 15
mov     byte ptr [esi+0ACh], 6
jmp     loc_4157D4

loc_4159A5:             ; jumptable 004156BA case 16
cmp     byte ptr [esi+0A4h], 11h
jbe     short def_4156BA ; jumptable 004156BA default case
add     word ptr [esi+56h], 14h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFF60h
mov     eax, esi
call    sub_4DD43B

def_4156BA:             ; jumptable 004156BA default case
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4156A0 endp

jpt_415A06 dd offset loc_415A0D ; jump table for switch statement
dd offset loc_415A8D
dd offset loc_415AE6
dd offset loc_415AF0
dd offset loc_415AFC
dd offset loc_415B0A
dd offset loc_415B4A
dd offset loc_415B61
dd offset def_415A06



sub_4159EC proc near
push    ecx
push    esi
mov     esi, eax
mov     eax, edx
mov     ecx, ebx
mov     dl, [esi+8]
cmp     dl, 8           ; switch 9 cases
ja      def_415A06      ; jumptable 00415A06 default case, case 8
and     edx, 0FFh
jmp     jpt_415A06[edx*4] ; switch jump

loc_415A0D:             ; jumptable 00415A06 case 0
or      byte ptr [esi], 2
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     word ptr [esi+15Eh], 4210h
mov     dword ptr [esi+78h], 0
mov     byte ptr [esi+0ACh], 10h
mov     byte ptr [esi+0ADh], 0FFh
mov     ebx, 1
mov     edx, ecx
mov     eax, esi
call    sub_415B6E
mov     edx, ecx
mov     eax, esi
call    sub_415C9F
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Bh], 0

def_415A06:             ; jumptable 00415A06 default case, case 8
cmp     byte ptr [esi+8], 6
jnb     short loc_415A8A
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 40h ; '@'
mov     eax, esi
call    sub_4ED88B

loc_415A8A:
pop     esi
pop     ecx
retn

loc_415A8D:             ; jumptable 00415A06 case 1
mov     dl, [eax+9]
test    dl, dl
jnz     short loc_415AC7
mov     eax, [eax+10h]
cmp     eax, 41h ; 'A'
jb      short loc_415AAE
jbe     short loc_415AC0
cmp     eax, 5Fh ; '_'
jb      short def_415A06 ; jumptable 00415A06 default case, case 8
jbe     short loc_415AB3
cmp     eax, 0EBh
jz      short loc_415AC0
jmp     short def_415A06 ; jumptable 00415A06 default case, case 8

loc_415AAE:
cmp     eax, 2Dh ; '-'
jnz     short def_415A06 ; jumptable 00415A06 default case, case 8

loc_415AB3:
xor     ebx, ebx

loc_415AB5:
mov     edx, ecx
mov     eax, esi
call    sub_415B6E
jmp     short def_415A06 ; jumptable 00415A06 default case, case 8

loc_415AC0:
mov     ebx, 1
jmp     short loc_415AB5

loc_415AC7:
cmp     dl, 1
jnz     short def_415A06 ; jumptable 00415A06 default case, case 8
cmp     dl, [eax+7]
jnz     short def_415A06 ; jumptable 00415A06 default case, case 8
xor     ebx, ebx
mov     edx, ecx
mov     eax, esi
call    sub_415B6E
mov     word ptr [ecx], 0

loc_415AE1:
inc     byte ptr [esi+8]
jmp     short def_415A06 ; jumptable 00415A06 default case, case 8

loc_415AE6:             ; jumptable 00415A06 case 2
mov     byte ptr [esi+0ACh], 11h
inc     byte ptr [esi+8]

loc_415AF0:             ; jumptable 00415A06 case 3
cmp     byte ptr [eax+7], 2
jnz     def_415A06      ; jumptable 00415A06 default case, case 8
jmp     short loc_415AE1

loc_415AFC:             ; jumptable 00415A06 case 4
mov     word ptr [ebx], 0
mov     byte ptr [esi+0ACh], 12h
jmp     short loc_415AE1

loc_415B0A:             ; jumptable 00415A06 case 5
cmp     word ptr [ebx], 1Eh
jle     short loc_415B14
mov     byte ptr [eax+7], 3

loc_415B14:
inc     word ptr [ecx]
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_415B28
inc     byte ptr [esi+8]

loc_415B28:
cmp     byte ptr [esi+0A4h], 0Fh
jbe     def_415A06      ; jumptable 00415A06 default case, case 8
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFC9h
mov     eax, esi
call    sub_4DD43B
jmp     def_415A06      ; jumptable 00415A06 default case, case 8

loc_415B4A:             ; jumptable 00415A06 case 6
mov     byte ptr [esi+0ACh], 13h
mov     ebx, 2
mov     edx, ecx
mov     eax, esi
call    sub_415B6E
jmp     short loc_415AE1

loc_415B61:             ; jumptable 00415A06 case 7
mov     eax, [ebx+14h]
call    sub_4DE2F6
jmp     loc_415AE1
sub_4159EC endp




sub_415B6E proc near
push    ecx
mov     ecx, eax
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     al, [edx+10h]
mov     [edx+0Dh], al
mov     eax, ebx
shl     eax, 2
cmp     byte ptr [ecx+3], 0
jnz     short loc_415BAE
mov     ecx, ds:off_50ED0F[eax]
mov     [edx+4], ecx
mov     eax, ds:off_50ED3B[eax]
mov     [edx+8], eax
pop     ecx
retn

loc_415BAE:
mov     ecx, ds:off_50ED67[eax]
mov     [edx+4], ecx
mov     eax, ds:off_50ED73[eax]
mov     [edx+8], eax
pop     ecx
retn
sub_415B6E endp




sub_415BC2 proc near
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
jb      short loc_415BE7
jbe     short loc_415BEA
cmp     al, 7Fh
jnz     short loc_415BE7
mov     byte ptr [edx+0Eh], 0
jmp     short loc_415BEA

loc_415BE7:
inc     byte ptr [esi+0Eh]

loc_415BEA:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_415C2C
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

loc_415C2C:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_415C4F
jbe     short loc_415C52
cmp     al, 7Fh
jnz     short loc_415C4F
mov     byte ptr [esi+11h], 0
jmp     short loc_415C52

loc_415C4F:
inc     byte ptr [esi+11h]

loc_415C52:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_415C94
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

loc_415C94:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_415BC2 endp




sub_415C9F proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     [esp+18h+var_18], edx
xor     cl, cl
lea     ebx, [edx+18h]
mov     edx, 3
call    sub_451925
mov     edx, [esp+18h+var_18]
mov     [edx+14h], eax
mov     byte ptr [eax+0Ch], 3Fh ; '?'

loc_415CC5:
movsx   edx, cl
shl     edx, 3
mov     eax, [esp+18h+var_18]
add     eax, edx
lea     edi, [eax+18h]
lea     esi, [ebp+14h]
movsd
movsd
mov     bx, ds:word_50ED7F[edx]
add     [eax+18h], bx
mov     bx, ds:word_50ED81[edx]
add     [eax+1Ah], bx
mov     dx, ds:word_50ED83[edx]
add     [eax+1Ch], dx
inc     cl
cmp     cl, 6
jl      short loc_415CC5
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_415C9F endp




sub_415D09 proc near
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
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
movzx   esi, byte ptr [eax+8]
mov     ebx, ebp
mov     edx, offset dword_560BDC
call    ds:funcs_415D48[esi*4]
mov     edx, ebp
mov     eax, ecx
call    sub_416222
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_415D7D
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_415D84

loc_415D7D:
mov     eax, ecx
call    sub_4DEADD

loc_415D84:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_415D09 endp




sub_415D8B proc near
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
mov     byte ptr [ecx+0ACh], 9
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx], 0
mov     word ptr [ebx+2], 0
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_416209
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
retn
sub_415D8B endp

db 90h
jpt_415E54 dd offset loc_415E5B ; jump table for switch statement
dd offset loc_415E7A
dd offset loc_415F3B
dd offset loc_415F74
dd offset loc_415FA3
dd offset loc_415FC5
dd offset loc_41603D
dd offset loc_41606F
dd offset loc_416105
dd offset loc_416142
dd offset loc_416190
dd offset loc_4161A8
dd offset loc_4161C7



sub_415E39 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     eax, edx
mov     esi, ebx
mov     dl, [ecx+9]
cmp     dl, 0Ch         ; switch 13 cases
ja      def_415E54      ; jumptable 00415E54 default case
and     edx, 0FFh
jmp     jpt_415E54[edx*4] ; switch jump

loc_415E5B:             ; jumptable 00415E54 case 0
cmp     byte ptr [ecx+0A4h], 0Eh
jnz     def_415E54      ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0Eh
jmp     loc_41613B

loc_415E7A:             ; jumptable 00415E54 case 1
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [eax+9], 0
jnz     def_415E54      ; jumptable 00415E54 default case
mov     eax, [eax+10h]
cmp     eax, 78h ; 'x'
jb      short loc_415EC9
jbe     loc_415F01
cmp     eax, 96h
jb      short loc_415EBE
jbe     loc_415F0F
cmp     eax, 0C8h
jb      def_415E54      ; jumptable 00415E54 default case
jbe     short loc_415F19
cmp     eax, 0DCh
jz      short loc_415F23
pop     edi
pop     esi
pop     ecx
retn

loc_415EBE:
cmp     eax, 8Ch

loc_415EC3:
jz      short loc_415F19
pop     edi
pop     esi
pop     ecx
retn

loc_415EC9:
cmp     eax, 28h ; '('
jb      short loc_415ED9
jbe     short loc_415EF0
cmp     eax, 5Fh ; '_'
jz      short loc_415EFA
pop     edi
pop     esi
pop     ecx
retn

loc_415ED9:
cmp     eax, 14h
jnz     def_415E54      ; jumptable 00415E54 default case
mov     ebx, 1
mov     eax, ecx
mov     edx, esi
jmp     loc_4161E7

loc_415EF0:
mov     ebx, 0Bh
jmp     loc_416183

loc_415EFA:
xor     ebx, ebx
jmp     loc_416183

loc_415F01:
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_4161F0

loc_415F0F:
mov     ebx, 0Ah
jmp     loc_416183

loc_415F19:
mov     ebx, 1
jmp     loc_416183

loc_415F23:
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 2
jmp     loc_416132

loc_415F3B:             ; jumptable 00415E54 case 2
cmp     byte ptr [eax+9], 1
jnz     def_415E54      ; jumptable 00415E54 default case
cmp     dword ptr [eax+10h], 1
jnz     def_415E54      ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ACh], 0Ah
mov     word ptr [esi+2], 0
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 6
jmp     loc_416132

loc_415F74:             ; jumptable 00415E54 case 3
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_415E54      ; jumptable 00415E54 default case
mov     di, [ebx]
cmp     di, 1Eh
jge     short loc_415F99
mov     eax, edi
inc     eax
mov     [ebx], ax
pop     edi
pop     esi
pop     ecx
retn

loc_415F99:
mov     word ptr [ebx], 0
jmp     loc_41613B

loc_415FA3:             ; jumptable 00415E54 case 4
mov     byte ptr [ecx+0ACh], 0Bh
mov     word ptr [ebx+2], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 0Bh
jmp     loc_416132

loc_415FC5:             ; jumptable 00415E54 case 5
mov     dl, [eax+9]
cmp     dl, 2
jnz     short loc_416005
mov     eax, [eax+10h]
cmp     eax, 19h
jb      short loc_415FE4
jbe     loc_415EF0
cmp     eax, 30h ; '0'
jz      short loc_415FFB
pop     edi
pop     esi
pop     ecx
retn

loc_415FE4:
cmp     eax, 0Ah
jnz     def_415E54      ; jumptable 00415E54 default case
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_4161F0

loc_415FFB:
mov     ebx, 4
jmp     loc_416183

loc_416005:
cmp     dl, 4
jnz     def_415E54      ; jumptable 00415E54 default case
cmp     dword ptr [eax+10h], 1
jnz     def_415E54      ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ACh], 0Ch
mov     word ptr [ebx+2], 0
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 0Ch
jmp     loc_416132

loc_41603D:             ; jumptable 00415E54 case 6
mov     byte ptr [ecx+0ADh], 0FFh
mov     dx, [ebx]
cmp     dx, 0Ah
jge     short loc_416057
mov     ebx, edx
inc     ebx
mov     [esi], bx
pop     edi
pop     esi
pop     ecx
retn

loc_416057:
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     word ptr [esi], 0
jmp     loc_41613B

loc_41606F:             ; jumptable 00415E54 case 7
mov     dl, [eax+9]
cmp     dl, 4
jnz     short loc_4160D0
mov     eax, [eax+10h]
cmp     eax, 55h ; 'U'
jb      short loc_416096
jbe     short loc_4160B8
cmp     eax, 7Dh ; '}'
jb      def_415E54      ; jumptable 00415E54 default case
jbe     short loc_4160AE
cmp     eax, 0C3h
jmp     loc_415EC3

loc_416096:
cmp     eax, 19h
jb      def_415E54      ; jumptable 00415E54 default case
jbe     loc_415F19
cmp     eax, 37h ; '7'
jnz     def_415E54      ; jumptable 00415E54 default case

loc_4160AE:
mov     ebx, 0Ch
jmp     loc_416183

loc_4160B8:
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 5
jmp     loc_416183

loc_4160D0:
cmp     dl, 5
jnz     def_415E54      ; jumptable 00415E54 default case
cmp     dword ptr [eax+10h], 1
jnz     def_415E54      ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ACh], 0Dh
mov     word ptr [ebx+2], 0
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 7
jmp     short loc_416132

loc_416105:             ; jumptable 00415E54 case 8
cmp     byte ptr [ecx+0A4h], 0Eh
jnz     def_415E54      ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0Eh

loc_41611F:
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 0Dh

loc_416132:
mov     edx, esi
mov     eax, ecx
call    sub_416209

loc_41613B:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_416142:             ; jumptable 00415E54 case 9
mov     byte ptr [ecx+0ADh], 0FFh
mov     eax, [eax+10h]
cmp     eax, 3Ch ; '<'
jb      short loc_416167
jbe     short loc_416189
cmp     eax, 64h ; 'd'
jb      def_415E54      ; jumptable 00415E54 default case
jbe     short loc_41617E
cmp     eax, 78h ; 'x'
jz      short loc_41611F
pop     edi
pop     esi
pop     ecx
retn

loc_416167:
cmp     eax, 32h ; '2'
jnz     def_415E54      ; jumptable 00415E54 default case

loc_416170:
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_4161F0

loc_41617E:
mov     ebx, 7

loc_416183:
mov     edx, esi
mov     eax, ecx
jmp     short loc_4161E7

loc_416189:
mov     ebx, 0Dh
jmp     short loc_416183

loc_416190:             ; jumptable 00415E54 case 10
cmp     byte ptr [ecx+0A4h], 20h ; ' '
jnz     short def_415E54 ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 20h ; ' '
jmp     short loc_41613B

loc_4161A8:             ; jumptable 00415E54 case 11
mov     byte ptr [ecx+0ADh], 0FFh
mov     ebx, [eax+10h]
cmp     ebx, 0AAh
jz      short loc_416170
cmp     ebx, 0C8h
jnz     short def_415E54 ; jumptable 00415E54 default case
jmp     loc_41611F

loc_4161C7:             ; jumptable 00415E54 case 12
cmp     dword ptr [eax+10h], 0F3h
jnz     short def_415E54 ; jumptable 00415E54 default case
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 8
mov     edx, esi
mov     eax, ecx

loc_4161E7:
call    sub_416209

def_415E54:             ; jumptable 00415E54 default case
pop     edi
pop     esi
pop     ecx
retn
sub_415E39 endp




sub_4161F0 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50EE8E[ebx*4]
mov     [edx+4], eax
retn
sub_4161F0 endp




sub_416209 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50EEB2[ebx*4]
mov     [edx+8], eax
retn
sub_416209 endp




sub_416222 proc near
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
jb      short loc_416247
jbe     short loc_41624A
cmp     al, 7Fh
jnz     short loc_416247
mov     byte ptr [edx+0Eh], 0
jmp     short loc_41624A

loc_416247:
inc     byte ptr [esi+0Eh]

loc_41624A:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_41628C
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

loc_41628C:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_4162AF
jbe     short loc_4162B2
cmp     al, 7Fh
jnz     short loc_4162AF
mov     byte ptr [esi+11h], 0
jmp     short loc_4162B2

loc_4162AF:
inc     byte ptr [esi+11h]

loc_4162B2:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_4162F4
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

loc_4162F4:
