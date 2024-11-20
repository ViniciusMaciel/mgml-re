mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F824 endp




sub_40F86C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590DC, dx
mov     eax, ds:dword_5590D8
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40F860
sub_40F86C endp




sub_40F8AA proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_5590E0
test    ecx, ecx
jz      loc_40F950
cmp     ds:dword_5590D8, 0
jz      loc_40F950
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_40F90C
jge     short loc_40F8E4
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40F900

loc_40F8E4:
inc     ds:word_5590E4
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_5590E0+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40F90C
add     eax, 4

loc_40F900:
mov     ds:dword_5590E0, eax
mov     eax, edx
call    sub_40F824

loc_40F90C:
mov     eax, ds:dword_5590D8
mov     di, [eax+2]
test    di, di
jz      short loc_40F950
jge     short loc_40F928
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40F944

loc_40F928:
inc     ds:word_5590DC
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_5590D8+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40F950
add     eax, 4

loc_40F944:
mov     ds:dword_5590D8, eax
mov     eax, edx
call    sub_40F86C

loc_40F950:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F8AA endp




sub_40F955 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_5590EC
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40F9AF
cmp     bl, ds:byte_560BE4
jnz     short loc_40F9AF
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_40F9AF
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_40F9AF
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D2C0[eax*4]
mov     ds:dword_5590E0, eax
mov     eax, edx
call    sub_40F824
add     ds:dword_5590EC, 6

loc_40F9AF:
mov     eax, ds:dword_5590E8
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40F9F6
cmp     bl, [ecx+8]
jnz     short loc_40F9F6
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_40F9F6
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_40F9F6
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D2F4[eax*4]
mov     ds:dword_5590D8, eax
mov     eax, edx
call    sub_40F86C
add     ds:dword_5590E8, 6

loc_40F9F6:
mov     eax, edx
call    sub_40F8AA
pop     edx
pop     ecx
pop     ebx
retn
sub_40F955 endp




sub_40FA01 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     ds:dword_5590EC, offset unk_50D330
mov     ds:dword_5590E8, offset unk_50D384
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_40FA01 endp




sub_40FA3A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FA56
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FA56:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FA3A endp




sub_40FA5A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FA76
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FA76:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FA5A endp




sub_40FA7A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FA96
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FA96:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FA7A endp




sub_40FA9A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FAB6
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FAB6:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FA9A endp




sub_40FABA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FAD6
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FAD6:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FABA endp




sub_40FADA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FAF6
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FAF6:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FADA endp




sub_40FAFA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FB16
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FB16:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FAFA endp




sub_40FB1A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FB36
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FB36:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FB1A endp




sub_40FB3A proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40FB43[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40FB62
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40FB62:
mov     eax, ecx
call    sub_40F955
pop     edx
pop     ecx
retn
sub_40FB3A endp




sub_40FB6C proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_40FB7C
mov     eax, edx
call    sub_40FA01

loc_40FB7C:
mov     eax, edx
call    sub_40FB3A
pop     edx
retn
sub_40FB6C endp




sub_40FB85 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_40FBA2
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FBA2:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_40FB85 endp




sub_40FBB4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_40FBD1
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FBD1:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_40FBB4 endp




sub_40FBDC proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40FBE2[edx*4]
pop     edx
retn
sub_40FBDC endp




sub_40FBEB proc near

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
jnz     short loc_40FC8F
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
call    sub_40FD22
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40FD3B
inc     byte ptr [ecx+8]

loc_40FC8F:
mov     eax, ecx
call    sub_40FBDC
mov     eax, [esp+1Ch+var_1C]
mov     dh, [eax+8]
cmp     dh, 1
jnz     loc_40FD18
mov     al, [eax+9]
test    al, al
jbe     short loc_40FCB2
cmp     al, dh
jz      short loc_40FCDC
jmp     short loc_40FD0B

loc_40FCB2:
mov     ax, [ebp+0]
cmp     ax, 0Ah
jnz     short loc_40FD0B
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FCD5
mov     ebx, 1

loc_40FCCA:
mov     edx, ebp
mov     eax, ecx
call    sub_40FD3B
jmp     short loc_40FCFD

loc_40FCD5:
mov     ebx, 3
jmp     short loc_40FCCA

loc_40FCDC:
mov     ax, [ebp+0]
cmp     ax, 32h ; '2'
jb      short loc_40FD0B
jbe     short loc_40FCF0
cmp     ax, 3Ch ; '<'
jz      short loc_40FCFD
jmp     short loc_40FD0B

loc_40FCF0:
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40FD3B
jmp     short loc_40FD0B

loc_40FCFD:
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40FD22

loc_40FD0B:
mov     edx, ebp
mov     eax, ecx
call    sub_40FD54
inc     word ptr [ebp+0]

loc_40FD18:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40FBEB endp




sub_40FD22 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50D4F6[ebx*4]
mov     [edx+4], eax
retn
sub_40FD22 endp




sub_40FD3B proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50D506[ebx*4]
mov     [edx+8], eax
retn
sub_40FD3B endp




sub_40FD54 proc near
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
jb      short loc_40FD79
jbe     short loc_40FD7C
cmp     al, 7Fh
jnz     short loc_40FD79
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40FD7C

loc_40FD79:
inc     byte ptr [esi+0Eh]

loc_40FD7C:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40FDBE
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40FDBE:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40FDE1
jbe     short loc_40FDE4
cmp     al, 7Fh
jnz     short loc_40FDE1
mov     byte ptr [esi+11h], 0
jmp     short loc_40FDE4

loc_40FDE1:
inc     byte ptr [esi+11h]

loc_40FDE4:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40FE26
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40FE26:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40FD54 endp




sub_40FE31 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
mov     al, [eax+0Ah]
test    al, al
ja      short loc_40FE54
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FE54:
mov     dl, [esi+8]
cmp     dl, 1
jnz     short loc_40FE7B
cmp     dl, [esi+9]
jnz     short loc_40FE6D
mov     eax, ecx
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40FE6D:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795

loc_40FE7B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40FE31 endp




sub_40FE80 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40FE86[edx*4]
pop     edx
retn
sub_40FE80 endp




sub_40FE8F proc near

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
jnz     short loc_40FF33
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
call    sub_40FFE1
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40FFFA
inc     byte ptr [ecx+8]

loc_40FF33:
mov     eax, ecx
call    sub_40FE80
mov     eax, [esp+1Ch+var_1C]
mov     dh, [eax+8]
cmp     dh, 1
jnz     loc_40FFD7
mov     al, [eax+9]
test    al, al
jbe     short loc_40FF59
cmp     al, dh
jz      short loc_40FF8F
jmp     loc_40FFCA

loc_40FF59:
mov     ax, [ebp+0]
cmp     ax, 28h ; '('
jb      loc_40FFCA
jbe     short loc_40FF71
cmp     ax, 78h ; 'x'

loc_40FF6D:
jz      short loc_40FFBF
jmp     short loc_40FFCA

loc_40FF71:
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40FFFA
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40FFE1
jmp     short loc_40FFCA

loc_40FF8F:
mov     ax, [ebp+0]
cmp     ax, 0AAh
jb      short loc_40FFCA
jbe     short loc_40FFA1
cmp     ax, 0DCh
jmp     short loc_40FF6D

loc_40FFA1:
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_41002C
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_410013
jmp     short loc_40FFCA

loc_40FFBF:
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40FFFA

loc_40FFCA:
mov     edx, ebp
mov     eax, ecx
call    sub_410045
inc     word ptr [ebp+0]

loc_40FFD7:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40FE8F endp




sub_40FFE1 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50D57B[ebx*4]
mov     [edx+4], eax
retn
sub_40FFE1 endp




sub_40FFFA proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50D58B[ebx*4]
mov     [edx+8], eax
retn
sub_40FFFA endp




sub_410013 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50D583[ebx*4]
mov     [edx+4], eax
retn
sub_410013 endp




sub_41002C proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50D593[ebx*4]
mov     [edx+8], eax
retn
sub_41002C endp




sub_410045 proc near
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
jb      short loc_41006A
jbe     short loc_41006D
cmp     al, 7Fh
jnz     short loc_41006A
mov     byte ptr [edx+0Eh], 0
jmp     short loc_41006D

loc_41006A:
inc     byte ptr [esi+0Eh]

loc_41006D:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_4100AF
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_4100AF:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_4100D2
jbe     short loc_4100D5
cmp     al, 7Fh
jnz     short loc_4100D2
mov     byte ptr [esi+11h], 0
jmp     short loc_4100D5

loc_4100D2:
inc     byte ptr [esi+11h]

loc_4100D5:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_410117
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_410117:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_410045 endp




sub_410122 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590FC, dx
mov     eax, ds:dword_5590F8
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_41015E:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410122 endp




sub_41016A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590F4, dx
mov     eax, ds:dword_5590F0
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_41015E
sub_41016A endp




sub_4101A8 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_5590F8
test    ecx, ecx
jz      loc_41024E
cmp     ds:dword_5590F0, 0
jz      loc_41024E
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_41020A
jge     short loc_4101E2
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_4101FE

loc_4101E2:
inc     ds:word_5590FC
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_5590F8+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_41020A
add     eax, 4

loc_4101FE:
mov     ds:dword_5590F8, eax
mov     eax, edx
call    sub_410122

loc_41020A:
mov     eax, ds:dword_5590F0
mov     di, [eax+2]
test    di, di
jz      short loc_41024E
jge     short loc_410226
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_410242

loc_410226:
inc     ds:word_5590F4
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_5590F0+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_41024E
add     eax, 4

loc_410242:
mov     ds:dword_5590F0, eax
mov     eax, edx
call    sub_41016A

loc_41024E:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4101A8 endp




sub_410253 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_559104
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_4102AD
cmp     bl, ds:byte_560BE4
jnz     short loc_4102AD
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_4102AD
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_4102AD
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D5F8[eax*4]
mov     ds:dword_5590F8, eax
mov     eax, edx
call    sub_410122
add     ds:dword_559104, 6

loc_4102AD:
mov     eax, ds:dword_559100
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_4102F4
cmp     bl, [ecx+8]
jnz     short loc_4102F4
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_4102F4
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_4102F4
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D608[eax*4]
mov     ds:dword_5590F0, eax
mov     eax, edx
call    sub_41016A
add     ds:dword_559100, 6

loc_4102F4:
mov     eax, edx
call    sub_4101A8
pop     edx
pop     ecx
pop     ebx
retn
sub_410253 endp




sub_4102FF proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
cmp     byte ptr ds:dword_560BDC+1, 48h ; 'H'
jnz     short loc_410332
mov     ds:dword_559104, offset unk_50D618
mov     ds:dword_559100, offset unk_50D636
jmp     short loc_410346

loc_410332:
mov     ds:dword_559104, offset unk_50D678
mov     ds:dword_559100, offset unk_50D68A

loc_410346:
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4102FF endp




sub_410360 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41037C
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41037C:
pop     edx
pop     ecx
pop     ebx
retn
sub_410360 endp




sub_410380 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41039D
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]

loc_41039D:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3Dh ; '='
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410380 endp




sub_4103B2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4103CE
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4103CE:
pop     edx
pop     ecx
pop     ebx
retn
sub_4103B2 endp




sub_4103D2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4103EE
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4103EE:
pop     edx
pop     ecx
pop     ebx
retn
sub_4103D2 endp




sub_4103F2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41040E
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41040E:
pop     edx
pop     ecx
pop     ebx
retn
sub_4103F2 endp

jpt_410442 dd offset loc_410449 ; jump table for switch statement
dd offset def_410442
dd offset loc_410462
dd offset loc_410481
dd offset loc_410497
dd offset loc_4104AF
dd offset def_410442



sub_41042E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_410442      ; jumptable 00410442 default case, cases 1,6
xor     edx, edx
mov     dl, al
jmp     jpt_410442[edx*4] ; switch jump

loc_410449:             ; jumptable 00410442 case 0
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Ch], 50h ; 'P'
pop     edx
pop     ecx
pop     ebx
retn

loc_410462:             ; jumptable 00410442 case 2
add     dword ptr [ecx+1Ch], 3AEEh
add     dword ptr [ecx+20h], 39DCCh
mov     al, [ecx+0Ch]
dec     al
mov     [ecx+0Ch], al
jnz     short def_410442 ; jumptable 00410442 default case, cases 1,6

loc_41047A:
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_410481:             ; jumptable 00410442 case 3
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
sub     word ptr [ecx+56h], 400h
jmp     short loc_41047A

loc_410497:             ; jumptable 00410442 case 4
mov     edx, [ecx+98h]
cmp     byte ptr [edx], 11h
jnz     short def_410442 ; jumptable 00410442 default case, cases 1,6
inc     al
mov     [ecx+0Ah], al
mov     byte ptr [ecx+0Ch], 16h
pop     edx
pop     ecx
pop     ebx
retn

loc_4104AF:             ; jumptable 00410442 case 5
mov     ah, [ecx+0Ch]
dec     ah
mov     [ecx+0Ch], ah
jnz     short loc_4104BC
inc     byte ptr [ecx+0Ah]

loc_4104BC:
sub     dword ptr [ecx+24h], 32000h

def_410442:             ; jumptable 00410442 default case, cases 1,6
pop     edx
pop     ecx
pop     ebx
retn
sub_41042E endp




sub_4104C7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4104E3
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4104E3:
pop     edx
pop     ecx
pop     ebx
retn
sub_4104C7 endp




sub_4104E7 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4104F0[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_41050F
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_41050F:
mov     eax, ecx
call    sub_410253
pop     edx
pop     ecx
retn
sub_4104E7 endp




sub_410519 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_41052C
mov     eax, esi
call    sub_4102FF

loc_41052C:
mov     eax, esi
call    sub_4104E7
mov     dl, [esi+9]
test    dl, dl
jz      short loc_410552
cmp     dl, 5
jz      short loc_410552
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_410552:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410519 endp




sub_410557 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559114, dx
mov     eax, ds:dword_559110
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_410593:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410557 endp




sub_41059F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_55910C, dx
mov     eax, ds:dword_559108
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_410593
sub_41059F endp




sub_4105DD proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_559110
test    ecx, ecx
jz      loc_410683
cmp     ds:dword_559108, 0
jz      loc_410683
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_41063F
jge     short loc_410617
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_410633

loc_410617:
inc     ds:word_559114
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_559110+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_41063F
add     eax, 4

loc_410633:
mov     ds:dword_559110, eax
mov     eax, edx
call    sub_410557

loc_41063F:
mov     eax, ds:dword_559108
mov     di, [eax+2]
test    di, di
jz      short loc_410683
jge     short loc_41065B
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_410677

loc_41065B:
inc     ds:word_55910C
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_559108+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_410683
add     eax, 4

loc_410677:
mov     ds:dword_559108, eax
mov     eax, edx
call    sub_41059F

loc_410683:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4105DD endp




sub_410688 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_55911C
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_4106E2
cmp     bl, ds:byte_560BE4
jnz     short loc_4106E2
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_4106E2
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_4106E2
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D928[eax*4]
mov     ds:dword_559110, eax
mov     eax, edx
call    sub_410557
add     ds:dword_55911C, 6

loc_4106E2:
mov     eax, ds:dword_559118
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_410729
cmp     bl, [ecx+8]
jnz     short loc_410729
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_410729
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_410729
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D97C[eax*4]
mov     ds:dword_559108, eax
mov     eax, edx
call    sub_41059F
add     ds:dword_559118, 6

loc_410729:
mov     eax, edx
call    sub_4105DD

def_410794:             ; jumptable 00410794 default case, cases 1,4
pop     edx
pop     ecx
pop     ebx
retn
sub_410688 endp




sub_410734 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     ds:dword_55911C, offset unk_50D9F4
mov     ds:dword_559118, offset unk_50DA78
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_410734 endp

db 8Bh, 0C0h
jpt_410794 dd offset loc_41079B ; jump table for switch statement
dd offset def_410794
dd offset loc_4107B0
dd offset loc_4107C8
dd offset def_410794



sub_410783 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      short def_410794 ; jumptable 00410794 default case, cases 1,4
and     eax, 0FFh
jmp     jpt_410794[eax*4] ; switch jump

loc_41079B:             ; jumptable 00410794 case 0
xor     ebx, ebx
mov     edx, 1

loc_4107A2:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_4107B0:             ; jumptable 00410794 case 2
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 0
jnz     def_410794      ; jumptable 00410794 default case, cases 1,4
xor     ebx, ebx
mov     edx, 2
jmp     short loc_4107A2

loc_4107C8:             ; jumptable 00410794 case 3
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 22h ; '"'
jnz     def_410794      ; jumptable 00410794 default case, cases 1,4
mov     ebx, 23h ; '#'
mov     edx, 3
jmp     short loc_4107A2
sub_410783 endp




sub_4107E3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4107FF
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4107FF:
pop     edx
pop     ecx
pop     ebx
retn
sub_4107E3 endp




sub_410803 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_410815
jbe     short loc_410829
pop     edx
pop     ecx
pop     ebx
retn

loc_410815:
test    al, al
jnz     short loc_410848
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_410845

loc_410829:
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 2Ch ; ','
jnz     short loc_410848
mov     ebx, 23h ; '#'
mov     edx, 3
mov     eax, ecx
call    sub_4DE9BA

loc_410845:
inc     byte ptr [ecx+0Ah]

loc_410848:
pop     edx
pop     ecx
pop     ebx
retn
sub_410803 endp




sub_41084C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410868
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410868:
pop     edx
pop     ecx
pop     ebx
retn
sub_41084C endp




sub_41086C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410888
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410888:
pop     edx
pop     ecx
pop     ebx
retn
sub_41086C endp




sub_41088C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4108A8
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4108A8:
pop     edx
pop     ecx
pop     ebx
retn
sub_41088C endp




sub_4108AC proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4108B5[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_4108D4
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_4108D4:
mov     eax, ecx
call    sub_410688
pop     edx
pop     ecx
retn
sub_4108AC endp




sub_4108DE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_4108F1
mov     eax, esi
call    sub_410734

loc_4108F1:
mov     eax, esi
call    sub_4108AC
mov     dl, [esi+9]
test    dl, dl
jz      short loc_410917
cmp     dl, 5
jz      short loc_410917
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_410917:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4108DE endp




sub_41091C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_41091C endp




sub_410945 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410967
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ch], 0
inc     byte ptr [ecx+0Ah]
jmp     short loc_410983

loc_410967:
mov     dl, [ecx+0Ch]
inc     dl
mov     [ecx+0Ch], dl
cmp     dl, 1Eh
jnz     short loc_41097C
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0

loc_41097C:
mov     eax, ecx
call    sub_4DEADD

loc_410983:
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
pop     edx
pop     ecx
pop     ebx
retn
sub_410945 endp




sub_410992 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4109B0
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
jmp     short loc_410983

loc_4109B0:
mov     eax, ecx
call    sub_4DEADD
mov     edx, [ecx+98h]
cmp     byte ptr [edx], 47h ; 'G'
jnz     short loc_410983
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
jmp     short loc_410983
sub_410992 endp




sub_4109CC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
cmp     byte ptr [ecx+0Ah], 0
jnz     short loc_4109FB
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ch], 0
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_4109FB:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_4109CC endp

; START OF FUNCTION CHUNK FOR sub_410A1F

loc_410A06:
cmp     byte ptr [eax+8], 0
jz      sub_41091C
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_410A16[edx*4]
pop     edx
retn
; END OF FUNCTION CHUNK FOR sub_410A1F



sub_410A1F proc near

; FUNCTION CHUNK AT 00410A06 SIZE 00000019 BYTES

cmp     byte ptr [eax+3], 0
jz      short loc_410A06
retn
sub_410A1F endp




sub_410A26 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     byte ptr [ecx+0ACh], 0
mov     dword ptr [ecx+1Ch], 2000000h
mov     dword ptr [ecx+20h], 0E3FF0000h
mov     dword ptr [ecx+24h], 3000000h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+103h], 0
mov     byte ptr [ecx+10Bh], 0FFh
mov     dl, [ecx+10Bh]
mov     [ecx+107h], dl
mov     byte ptr [ecx+128h], 0Dh
mov     word ptr [ecx+15Ch], 200h
mov     dx, [ecx+15Ch]
mov     [ecx+15Ah], dx
mov     [ecx+158h], dx
mov     word ptr [ecx+15Eh], 14A5h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_410A26 endp




sub_410AB5 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410ACE
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx

loc_410AC6:
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410ACE:
pop     edx
pop     ecx
pop     ebx
retn
sub_410AB5 endp




sub_410AD2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 10h
jmp     short loc_410AC6
sub_410AD2 endp




sub_410AE0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 12h
jnz     short loc_410B02
xor     ebx, ebx
mov     edx, 11h
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]

loc_410B02:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 17h
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410AE0 endp




sub_410B17 proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 17h
call    sub_4DD43B
pop     edx
pop     ecx
pop     ebx
retn
sub_410B17 endp




sub_410B2C proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_410B32[edx*4]
pop     edx
retn
sub_410B2C endp




sub_410B3B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 12h
jmp     loc_410AC6
sub_410B3B endp




sub_410B4C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 77h ; 'w'
jnz     short loc_410B6D
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410B6D:
pop     edx
pop     ecx
pop     ebx
sub_410B4C endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_41]



sub_410B71 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_410B77[edx*4]
pop     edx
retn
sub_410B71 endp




sub_410B80 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410B9C
xor     ebx, ebx
mov     edx, 13h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410B9C:
pop     edx
pop     ecx
pop     ebx
retn
sub_410B80 endp




sub_410BA0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_410BAB[edx*4]
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 190h
mov     eax, esi
call    sub_4ED88B
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410BA0 endp




sub_410BDC proc near
cmp     byte ptr [eax+8], 0
jnz     short sub_410BA0
jmp     sub_410A26
sub_410BDC endp




sub_410BE7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     byte ptr [ecx+103h], 0
mov     byte ptr [ecx+10Bh], 0FFh
mov     al, [ecx+10Bh]
mov     [ecx+107h], al
mov     byte ptr [ecx+128h], 0Dh
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_410BE7 endp




sub_410C4A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410C67
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_410C67:
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
pop     ebx
retn
sub_410C4A endp




sub_410C79 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410C99
xor     ebx, ebx
mov     edx, 15h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_410C99:
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
pop     ebx
retn
sub_410C79 endp




sub_410CAB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410CCB
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_410CCB:
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
pop     ebx
retn
sub_410CAB endp




sub_410CDD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410CF6
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410CF6:
pop     edx
pop     ecx
pop     ebx
retn
sub_410CDD endp




sub_410CFA proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
xor     edx, edx
mov     dl, [esi+9]
mov     eax, esi
call    ds:funcs_410D12[edx*4]
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 190h
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410CFA endp




sub_410D31 proc near
cmp     byte ptr [eax+8], 0
jnz     short sub_410CFA
jmp     sub_410BE7
sub_410D31 endp




sub_410D3C proc near
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
cmp     al, 1
jb      short loc_410D86
jbe     short loc_410DF0
cmp     al, 2
jz      loc_410E21
jmp     loc_410E85

loc_410D86:
test    al, al
jnz     loc_410E85
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
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_410EBD
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_410ED6

loc_410DE8:
inc     byte ptr [ecx+8]
jmp     loc_410E85

loc_410DF0:
mov     byte ptr [ecx+0ADh], 0FFh
cmp     ds:byte_560BE5, 3
jnz     loc_410E85
cmp     ds:dword_560BEC, 0Ah
jnz     loc_410E85
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_410EBD
jmp     short loc_410DE8

loc_410E21:
mov     eax, ds:dword_560BEC
cmp     eax, 3Ch ; '<'
jb      short loc_410E3D
jbe     short loc_410E62
cmp     eax, 46h ; 'F'
jb      short loc_410E85
jbe     short loc_410E4B
cmp     eax, 8Ch
jz      short loc_410E69
jmp     short loc_410E85

loc_410E3D:
cmp     eax, 1Eh
jb      short loc_410E85
jbe     short loc_410E4B
cmp     eax, 32h ; '2'
jz      short loc_410E52
jmp     short loc_410E85

loc_410E4B:
mov     ebx, 2
jmp     short loc_410E7C

loc_410E52:
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_410EBD
jmp     short loc_410E85

loc_410E62:
mov     ebx, 1
jmp     short loc_410E7C

loc_410E69:
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_410EBD
mov     ebx, 1

loc_410E7C:
mov     edx, ebp
mov     eax, ecx
call    sub_410ED6

loc_410E85:
mov     edx, ebp
mov     eax, ecx
call    sub_410EEF
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_410EAF
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_410EB6

loc_410EAF:
mov     eax, ecx
call    sub_4DEADD

loc_410EB6:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410D3C endp




sub_410EBD proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50DBF1[ebx*4]
mov     [edx+4], eax
retn
sub_410EBD endp




sub_410ED6 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50DBFD[ebx*4]
mov     [edx+8], eax
retn
sub_410ED6 endp




sub_410EEF proc near
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
jb      short loc_410F14
jbe     short loc_410F17
cmp     al, 7Fh
jnz     short loc_410F14
mov     byte ptr [edx+0Eh], 0
jmp     short loc_410F17

loc_410F14:
inc     byte ptr [esi+0Eh]

loc_410F17:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_410F59
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

loc_410F59:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_410F7C
jbe     short loc_410F7F
cmp     al, 7Fh
jnz     short loc_410F7C
mov     byte ptr [esi+11h], 0
jmp     short loc_410F7F

loc_410F7C:
inc     byte ptr [esi+11h]

loc_410F7F:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_410FC1
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

loc_410FC1:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_410EEF endp

jpt_411027 dd offset loc_41102E ; jump table for switch statement
dd offset loc_411093
dd offset loc_4110C6
dd offset loc_411118



sub_410FDC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     eax, offset dword_560BDC
lea     ebp, [ecx+640h]
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
mov     dl, [ecx+0ACh]
mov     [ecx+0ADh], dl
mov     dl, [ecx+8]
cmp     dl, 3           ; switch 4 cases
ja      def_411027      ; jumptable 00411027 default case
and     edx, 0FFh
jmp     jpt_411027[edx*4] ; switch jump

loc_41102E:             ; jumptable 00411027 case 0
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
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_411194
xor     ebx, ebx

loc_411082:
mov     edx, ebp
mov     eax, ecx
call    sub_4111AD
inc     byte ptr [ecx+8]
jmp     def_411027      ; jumptable 00411027 default case

loc_411093:             ; jumptable 00411027 case 1
mov     byte ptr [ecx+0ADh], 0FFh
cmp     ds:byte_560BE5, 3
jnz     def_411027      ; jumptable 00411027 default case
mov     esi, ds:dword_560BEC
cmp     esi, 37h ; '7'
jz      loc_41114E
cmp     esi, 41h ; 'A'
jnz     def_411027      ; jumptable 00411027 default case
mov     ebx, 2
jmp     short loc_411082

loc_4110C6:             ; jumptable 00411027 case 2
cmp     ds:byte_560BE5, 3
jnz     short loc_4110E8
cmp     ds:dword_560BEC, 73h ; 's'
jnz     short loc_4110E8
xor     ebx, ebx

loc_4110DA:
mov     edx, ebp
mov     eax, ecx
call    sub_4111AD
jmp     def_411027      ; jumptable 00411027 default case

loc_4110E8:
cmp     byte ptr [eax+9], 4
jnz     def_411027      ; jumptable 00411027 default case
mov     ebx, [eax+10h]
cmp     ebx, 1
jnz     def_411027      ; jumptable 00411027 default case
mov     byte ptr [ecx+0ACh], 2
mov     edx, ebp
mov     eax, ecx
call    sub_411194
mov     ebx, 1
jmp     loc_411082

loc_411118:             ; jumptable 00411027 case 3
mov     eax, ds:dword_560BEC
cmp     eax, 28h ; '('
jb      short loc_411132
jbe     short loc_411140
cmp     eax, 4Bh ; 'K'
jb      short def_411027 ; jumptable 00411027 default case
jbe     short loc_411147
cmp     eax, 5Ah ; 'Z'
jz      short loc_41114E
jmp     short def_411027 ; jumptable 00411027 default case

loc_411132:
cmp     eax, 0Ah
jb      short def_411027 ; jumptable 00411027 default case
jbe     short loc_411140
cmp     eax, 1Eh
jz      short loc_411147
jmp     short def_411027 ; jumptable 00411027 default case

loc_411140:
mov     ebx, 3
jmp     short loc_4110DA

loc_411147:
mov     ebx, 1
jmp     short loc_4110DA

loc_41114E:
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_411194

def_411027:             ; jumptable 00411027 default case
mov     edx, ebp
mov     eax, ecx
call    sub_4111C6
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_411186
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_41118D

loc_411186:
mov     eax, ecx
call    sub_4DEADD

loc_41118D:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410FDC endp




sub_411194 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50DC66[ebx*4]
mov     [edx+4], eax
retn
sub_411194 endp




sub_4111AD proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50DC76[ebx*4]
mov     [edx+8], eax
retn
sub_4111AD endp




sub_4111C6 proc near
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
jb      short loc_4111EB
jbe     short loc_4111EE
cmp     al, 7Fh
jnz     short loc_4111EB
mov     byte ptr [edx+0Eh], 0
jmp     short loc_4111EE

loc_4111EB:
inc     byte ptr [esi+0Eh]

loc_4111EE:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_411230
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

loc_411230:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_411253
jbe     short loc_411256
cmp     al, 7Fh
jnz     short loc_411253
mov     byte ptr [esi+11h], 0
jmp     short loc_411256

loc_411253:
inc     byte ptr [esi+11h]

loc_411256:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_411298
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

loc_411298:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4111C6 endp




sub_4112A3 proc near
mov     byte ptr [eax+4], 0
mov     edx, ds:off_50DC92[edx*4]
mov     [eax+8], edx
mov     byte ptr [eax+5], 0
retn
sub_4112A3 endp




sub_4112B6 proc near
mov     byte ptr [eax+6], 0
mov     edx, ds:off_50DCAA[edx*4]
mov     [eax+0Ch], edx
mov     byte ptr [eax+7], 0
retn
sub_4112B6 endp




sub_4112C9 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     ah, [edx+5]
test    ah, ah
jnz     short loc_41133D
mov     eax, [edx+1]
sar     eax, 18h
mov     ecx, [edx+8]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_4112F2
jbe     short loc_411344
cmp     al, 7Fh
jnz     short loc_4112F2
mov     byte ptr [edx+4], 0

loc_4112F2:
mov     ecx, [esi+1]
sar     ecx, 18h
mov     eax, [esi+8]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044
mov     ecx, [esi+1]
sar     ecx, 18h
mov     eax, [esi+8]
mov     al, [ecx+eax+1]
mov     [esi+5], al
add     byte ptr [esi+4], 2
jmp     short loc_411344

loc_41133D:
mov     dl, ah
dec     dl
mov     [esi+5], dl

loc_411344:
mov     bl, [esi+7]
test    bl, bl
jnz     short loc_4113B2
mov     eax, [esi+3]
sar     eax, 18h
mov     ecx, [esi+0Ch]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_411364
jbe     short loc_4113B9
cmp     al, 7Fh
jnz     short loc_411364
mov     [esi+6], bl

loc_411364:
mov     ecx, [esi+3]
sar     ecx, 18h
mov     eax, [esi+0Ch]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 120011h
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

loc_4113B2:
mov     bh, bl
dec     bh
mov     [esi+7], bh

loc_4113B9:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4112C9 endp

db 90h
jpt_411411 dd offset loc_411418 ; jump table for switch statement
dd offset loc_411487
dd offset def_411411
dd offset loc_411487



sub_4113CF proc near

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
mov     al, [eax+8]
cmp     al, 3           ; switch 4 cases
ja      def_411411      ; jumptable 00411411 default case, case 2
and     eax, 0FFh
jmp     jpt_411411[eax*4] ; switch jump

loc_411418:             ; jumptable 00411411 case 0
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
xor     edx, edx
mov     eax, ebp
call    sub_4112A3
xor     edx, edx
mov     eax, ebp
call    sub_4112B6
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
jmp     short def_411411 ; jumptable 00411411 default case, case 2

loc_411487:             ; jumptable 00411411 cases 1,3
mov     eax, ecx
call    sub_4DEADD

def_411411:             ; jumptable 00411411 default case, case 2
mov     eax, [esp+1Ch+var_1C]
mov     ebx, [eax+10h]
cmp     ebx, 0Ah
jnz     short loc_4114A7

loc_411499:
mov     edx, 1

loc_41149E:
mov     eax, ebp
call    sub_4112B6
jmp     short loc_4114E4

loc_4114A7:
cmp     ebx, 55h ; 'U'
jnz     short loc_4114B7
xor     edx, edx
mov     eax, ebp
call    sub_4112B6
jmp     short loc_4114D8

loc_4114B7:
cmp     ebx, 69h ; 'i'
jz      short loc_411499
cmp     ebx, 96h
jnz     short loc_4114C8
xor     edx, edx
jmp     short loc_41149E

loc_4114C8:
cmp     ebx, 0A0h
jz      short loc_4114D8
cmp     ebx, 0AAh
jnz     short loc_4114E4

loc_4114D8:
mov     edx, 1
mov     eax, ebp
call    sub_4112A3

loc_4114E4:
mov     edx, ebp
mov     eax, ecx
call    sub_4112C9
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4113CF endp




sub_4114F7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_411502[edx*4]
test    byte ptr [esi], 2
jz      short loc_41152A
cmp     dword ptr [esi+6A4h], 0
jz      short loc_41152A
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 20h ; ' '
mov     eax, esi
call    sub_4ED88B

loc_41152A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4114F7 endp




sub_41152F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
movsx   ax, byte ptr [ecx+0Ch]
shl     eax, 4
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
xor     edx, edx
mov     ds:word_559120, dx
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], offset unk_50DD5C
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     byte ptr [ecx+0Dh], 0
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     al, byte ptr ds:dword_50DCCC[eax*8]
mov     [ecx+0Eh], al
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_50DCC8[edx*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
xor     edx, edx
jmp     short loc_4115DC

loc_4115D5:
inc     edx
cmp     dx, 10h
jge     short loc_41160F

loc_4115DC:
movsx   ebx, dx
mov     eax, ebx
shl     eax, 3
add     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 5
test    ds:byte_6DD9CC[eax], 1
jz      short loc_4115D5
cmp     ds:byte_6DD9CE[eax], 2Ah ; '*'
jnz     short loc_4115D5
mov     ebx, offset byte_6DD9CC
add     ebx, eax
mov     [ecx+6A0h], ebx
jmp     short loc_4115D5

loc_41160F:
mov     byte ptr [ecx+9], 0
mov     dword ptr [ecx+6A4h], 0
mov     ds:dword_55A310, ecx
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_41152F endp

db 90h
jpt_4116AC dd offset loc_4116B3 ; jump table for switch statement
dd offset loc_4116C7
dd offset loc_4116DB
dd offset loc_4116E1
dd offset loc_4116E8
dd offset loc_4116E1
dd offset loc_4116F6
dd offset loc_4116B3
dd offset loc_4116FC
dd offset loc_41170B



sub_411653 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     [esp+1Ch+var_1C], offset byte_5F8364
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
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     al, [eax+0Eh]
movsx   ecx, al
inc     al
mov     [ebp+0Eh], al
cmp     ecx, ds:dword_50DCCC[edx*8]
jnz     loc_41172B
mov     al, [ebp+0Dh]
cmp     al, 9           ; switch 10 cases
ja      def_4116AC      ; jumptable 004116AC default case
xor     edx, edx
mov     dl, al
jmp     jpt_4116AC[edx*4] ; switch jump

loc_4116B3:             ; jumptable 004116AC cases 0,7
inc     al
mov     [ebp+0Dh], al

loc_4116B8:
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, ds:dword_50DCC8[eax*8]
jmp     short loc_41171C

loc_4116C7:             ; jumptable 004116AC case 1
inc     al
mov     [ebp+0Dh], al
mov     edx, [ebp+0Ah]
sar     edx, 18h
mov     edx, ds:dword_50DCC8[edx*8]
jmp     short loc_41171C

loc_4116DB:             ; jumptable 004116AC case 2
mov     byte ptr [ebp+0Dh], 9
jmp     short def_4116AC ; jumptable 004116AC default case

loc_4116E1:             ; jumptable 004116AC cases 3,5
inc     al
mov     [ebp+0Dh], al
jmp     short def_4116AC ; jumptable 004116AC default case

loc_4116E8:             ; jumptable 004116AC case 4
xor     esi, esi
mov     ds:word_559120, si
inc     byte ptr [ebp+0Dh]
jmp     short loc_4116B8

loc_4116F6:             ; jumptable 004116AC case 6
mov     byte ptr [ebp+0Dh], 0
jmp     short loc_4116B8

loc_4116FC:             ; jumptable 004116AC case 8
mov     ds:word_559120, 1
mov     byte ptr [ebp+0Dh], 3
jmp     short loc_4116B8

loc_41170B:             ; jumptable 004116AC case 9
mov     byte ptr [ebp+0Dh], 0
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, ds:dword_50DCC8[eax*8]

loc_41171C:
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B

def_4116AC:             ; jumptable 004116AC default case
mov     byte ptr [ebp+0Eh], 0
jmp     short loc_411781

loc_41172B:
mov     eax, [ebp+6A0h]
cmp     byte ptr [eax+8], 2
jnz     short loc_41176A
cmp     ds:word_559120, 1
jz      short loc_41176A
mov     ds:word_559120, 1
mov     byte ptr [ebp+0Dh], 3
mov     byte ptr [ebp+0Eh], 0
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, ds:dword_50DCC8[eax*8]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_411781

loc_41176A:
mov     eax, [ebp+0Ah]
sar     eax, 18h
cmp     ds:dword_50DCC8[eax*8], 0FFFFFFFFh
jz      short loc_411781
mov     eax, ebp
call    sub_4DEADD

loc_411781:
mov     eax, ds:dword_55911C+2
sar     eax, 10h
mov     eax, ds:dword_50DD55[eax*2]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [ebp+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044
mov     eax, ds:dword_55911C+2
sar     eax, 10h
mov     eax, ds:(dword_50DD55+1)[eax*2]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [ebp+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044
mov     eax, [esp+1Ch+var_1C]
mov     edi, [eax+184h]
cmp     ebp, edi
jnz     short loc_411822
mov     byte ptr [edi+9], 1
mov     byte ptr [edi+0Ah], 0
mov     byte ptr [edi+0Fh], 0
or      byte ptr [eax+0BDh], 20h
xor     byte ptr [eax], 2
mov     dword ptr [eax+184h], 0

loc_411822:
cmp     byte ptr [ebp+9], 1
jnz     short loc_41182F
mov     eax, ebp
call    sub_411B13

loc_41182F:
add     esp, 4
pop     ebp
pop     edi

def_411984:             ; jumptable 00411984 default case, case 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_411653 endp

db 8Bh, 0C0h
jpt_411893 dd offset loc_41189A ; jump table for switch statement
dd offset loc_4118B6
dd offset loc_4118CA
dd offset loc_4118D1
dd offset loc_4118CA
dd offset loc_4118D1
dd offset loc_4118D8
dd offset loc_4118D1
dd offset def_411893



sub_41185F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+0Ah]
sar     eax, 18h
mov     dl, [ecx+0Eh]
movsx   ebx, dl
inc     dl
mov     [ecx+0Eh], dl
cmp     ebx, ds:dword_50DCCC[eax*8]
jnz     loc_411905
mov     al, [ecx+0Dh]
mov     ah, al
sub     ah, 9           ; switch 9 cases
cmp     ah, 8
ja      short def_411893 ; jumptable 00411893 default case, case 17
xor     edx, edx
mov     dl, ah
jmp     jpt_411893[edx*4] ; switch jump

loc_41189A:             ; jumptable 00411893 case 9
mov     byte ptr [ecx+0Dh], 0Ah

loc_41189E:
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     edx, ds:dword_50DCC8[eax*8]

loc_4118AB:
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short def_411893 ; jumptable 00411893 default case, case 17

loc_4118B6:             ; jumptable 00411893 case 10
inc     al
mov     [ecx+0Dh], al
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_50DCC8[edx*8]
jmp     short loc_4118AB

loc_4118CA:             ; jumptable 00411893 cases 11,13
inc     al
mov     [ecx+0Dh], al
jmp     short loc_41189E

loc_4118D1:             ; jumptable 00411893 cases 12,14,16
inc     al
mov     [ecx+0Dh], al
jmp     short def_411893 ; jumptable 00411893 default case, case 17

loc_4118D8:             ; jumptable 00411893 case 15
inc     al
mov     [ecx+0Dh], al
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_50DCC8[edx*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [ecx+6A4h], 1

def_411893:             ; jumptable 00411893 default case, case 17
mov     byte ptr [ecx+0Eh], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_411905:
mov     eax, [ecx+0Ah]
sar     eax, 18h
cmp     ds:dword_50DCC8[eax*8], 0FFFFFFFFh
jz      short loc_411920
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn

loc_411920:
xor     ebx, ebx
mov     bl, [ecx+0A4h]
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B
pop     edx
pop     ecx
pop     ebx
retn
sub_41185F endp

jpt_411984 dd offset loc_41198B ; jump table for switch statement
dd offset loc_411A09
dd offset loc_411A29
dd offset loc_411ABC
dd offset def_411984



sub_41194F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0A4h], 4
jz      short loc_411967
cmp     byte ptr [esi+0A4h], 0Ah
jnz     short loc_411974

loc_411967:
lea     edx, [esi+14h]
mov     eax, 112h
call    sub_4D8BC3

loc_411974:
mov     al, [esi+0Dh]
cmp     al, 4           ; switch 5 cases
ja      def_411984      ; jumptable 00411984 default case, case 4
and     eax, 0FFh
jmp     jpt_411984[eax*4] ; switch jump

loc_41198B:             ; jumptable 00411984 case 0
mov     ebx, 4
mov     edx, 6
mov     eax, esi
call    sub_4DE96B
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 166h
mov     eax, esi
call    sub_4DD43B
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4119FE
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
call    rand_
xor     ah, ah
and     al, 3Fh
add     ax, [esi+14h]
sub     eax, 1Fh
mov     [edx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 1Fh
add     ax, [esi+16h]
sub     eax, 0Fh
mov     [edx+1Eh], ax
call    rand_
xor     ah, ah
and     al, 3Fh
add     ax, [esi+18h]
sub     eax, 1Fh
mov     [edx+20h], ax

loc_4119FE:
inc     byte ptr [esi+0Fh]

loc_411A01:
inc     byte ptr [esi+0Dh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_411A09:             ; jumptable 00411984 case 1
mov     eax, esi
call    sub_4DEADD
mov     ah, [esi+0Fh]
inc     ah
mov     [esi+0Fh], ah
cmp     ah, 3Ch ; '<'
jnz     short loc_411A51
inc     byte ptr [esi+0Dh]

loc_411A20:
mov     byte ptr [esi+0Fh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_411A29:             ; jumptable 00411984 case 2
mov     eax, esi
call    sub_4DEADD
mov     cl, [esi+0Fh]
inc     cl
mov     [esi+0Fh], cl
cmp     cl, 3Ch ; '<'
jnz     short loc_411A43
add     byte ptr [esi+0Dh], 2
jmp     short loc_411A20

loc_411A43:
mov     ax, [esi+56h]
sub     eax, 10h
and     ah, 0Fh
mov     [esi+56h], ax

loc_411A51:
