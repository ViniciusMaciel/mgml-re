loc_42B249:
mov     eax, [edx+170h]
mov     ecx, [esp+1Ch+var_1C]
add     eax, ecx
mov     [edx+174h], eax
mov     eax, [edx+170h]
xor     eax, 0E1E1E1E1h
mov     ecx, [esp+1Ch+var_18]
add     ecx, eax
mov     [edx+178h], ecx
mov     eax, [edx+170h]
xor     eax, 57575757h
mov     ecx, [esp+1Ch+var_14]
add     ecx, eax
mov     [edx+17Ch], ecx
xor     eax, eax

loc_42B28A:
xor     ebx, ebx
mov     [esp+eax*4+1Ch+var_1C], ebx
inc     eax
cmp     eax, 3
jb      short loc_42B28A
mov     eax, 60h ; '`'
jmp     short loc_42B2A2

loc_42B29C:
inc     eax
cmp     eax, 6Ch ; 'l'
jnb     short loc_42B2DC

loc_42B2A2:
mov     ecx, eax
mov     ecx, [edx+ecx*4]
mov     esi, ecx
shl     esi, 10h
mov     ebx, ecx
shr     ebx, 10h
or      ebx, esi
add     [esp+1Ch+var_1C], ebx
test    al, 1
jz      short loc_42B2C8
mov     ebx, [edx+1B0h]
add     ebx, eax
xor     ebx, ecx
add     [esp+1Ch+var_18], ebx

loc_42B2C8:
test    al, 1
jnz     short loc_42B29C
mov     ebx, [edx+1B0h]
add     ebx, eax
xor     ecx, ebx
add     [esp+1Ch+var_14], ecx
jmp     short loc_42B29C

loc_42B2DC:
mov     eax, [edx+1B0h]
not     eax
mov     ecx, [esp+1Ch+var_1C]
add     ecx, eax
mov     [edx+1B4h], ecx
mov     eax, [edx+1B0h]
xor     eax, 33333333h
mov     ecx, [esp+1Ch+var_18]
add     ecx, eax
mov     [edx+1B8h], ecx
mov     eax, [edx+1B0h]
xor     eax, 0CCCCCCCCh
mov     ecx, [esp+1Ch+var_14]
add     ecx, eax
mov     [edx+1BCh], ecx
xor     eax, eax

loc_42B31F:
xor     ebx, ebx
mov     [esp+eax*4+1Ch+var_1C], ebx
inc     eax
cmp     eax, 3
jb      short loc_42B31F
mov     eax, 70h ; 'p'
jmp     short loc_42B337

loc_42B331:
inc     eax
cmp     eax, 7Ch ; '|'
jnb     short loc_42B371

loc_42B337:
mov     ecx, eax
mov     ecx, [edx+ecx*4]
mov     esi, ecx
shl     esi, 10h
mov     ebx, ecx
shr     ebx, 10h
or      ebx, esi
add     [esp+1Ch+var_1C], ebx
test    al, 1
jz      short loc_42B35D
mov     ebx, [edx+1F0h]
add     ebx, eax
xor     ebx, ecx
add     [esp+1Ch+var_18], ebx

loc_42B35D:
test    al, 1
jnz     short loc_42B331
mov     ebx, [edx+1F0h]
add     ebx, eax
xor     ecx, ebx
add     [esp+1Ch+var_14], ecx
jmp     short loc_42B331

loc_42B371:
mov     eax, [edx+1F0h]
xor     eax, 69696969h
mov     ecx, [esp+1Ch+var_1C]
add     ecx, eax
mov     [edx+1F4h], ecx
mov     eax, [edx+1F0h]
xor     eax, 2B2B2B2Bh
mov     ecx, [esp+1Ch+var_18]
add     ecx, eax
mov     [edx+1F8h], ecx
mov     eax, [edx+1F0h]
xor     eax, 0B8B8B8B8h
mov     ecx, [esp+1Ch+var_14]
add     ecx, eax
mov     [edx+1FCh], ecx
xor     eax, eax

loc_42B3B7:
xor     ebx, ebx
mov     [esp+eax*4+1Ch+var_1C], ebx
inc     eax
cmp     eax, 3
jb      short loc_42B3B7
mov     eax, 80h
jmp     short loc_42B3D1

loc_42B3C9:
inc     eax
cmp     eax, 0DCh
jnb     short loc_42B40B

loc_42B3D1:
mov     ecx, eax
mov     ecx, [edx+ecx*4]
mov     ebx, ecx
shl     ebx, 10h
mov     esi, ecx
shr     esi, 10h
or      ebx, esi
add     [esp+1Ch+var_1C], ebx
test    al, 1
jz      short loc_42B3F7
mov     ebx, [edx+370h]
add     ebx, eax
xor     ebx, ecx
add     [esp+1Ch+var_18], ebx

loc_42B3F7:
test    al, 1
jnz     short loc_42B3C9
mov     ebx, [edx+370h]
add     ebx, eax
xor     ecx, ebx
add     [esp+1Ch+var_14], ecx
jmp     short loc_42B3C9

loc_42B40B:
mov     eax, [edx+370h]
mov     ecx, [esp+1Ch+var_1C]
add     eax, ecx
mov     [edx+374h], eax
mov     eax, [edx+370h]
xor     eax, 1E1E1E1Eh
mov     ecx, [esp+1Ch+var_18]
add     ecx, eax
mov     [edx+378h], ecx
mov     eax, [edx+370h]
xor     eax, 75757575h
mov     ecx, [esp+1Ch+var_14]
add     ecx, eax
mov     [edx+37Ch], ecx
xor     eax, eax

loc_42B44C:
xor     ebx, ebx
mov     [esp+eax*4+1Ch+var_1C], ebx
inc     eax
cmp     eax, 3
jb      short loc_42B44C
mov     eax, 0E0h
jmp     short loc_42B466

loc_42B45E:
inc     eax
cmp     eax, 74Ch
jnb     short loc_42B4A0

loc_42B466:
mov     ecx, eax
mov     ecx, [edx+ecx*4]
mov     ebx, ecx
shl     ebx, 10h
mov     esi, ecx
shr     esi, 10h
or      ebx, esi
add     [esp+1Ch+var_1C], ebx
test    al, 1
jz      short loc_42B48C
mov     ebx, [edx+1D30h]
add     ebx, eax
xor     ebx, ecx
add     [esp+1Ch+var_18], ebx

loc_42B48C:
test    al, 1
jnz     short loc_42B45E
mov     ebx, [edx+1D30h]
add     ebx, eax
xor     ecx, ebx
add     [esp+1Ch+var_14], ecx
jmp     short loc_42B45E

loc_42B4A0:
mov     eax, [edx+1D30h]
not     eax
mov     ecx, [esp+1Ch+var_1C]
add     ecx, eax
mov     [edx+1D34h], ecx
mov     eax, [edx+1D30h]
xor     eax, 33333333h
mov     ecx, [esp+1Ch+var_18]
add     ecx, eax
mov     [edx+1D38h], ecx
mov     eax, [edx+1D30h]
xor     eax, 0CCCCCCCCh
mov     ecx, [esp+1Ch+var_14]
add     ecx, eax
mov     [edx+1D3Ch], ecx
xor     eax, eax

loc_42B4E3:
xor     ebx, ebx
mov     [esp+eax*4+1Ch+var_1C], ebx
inc     eax
cmp     eax, 3
jb      short loc_42B4E3
mov     eax, 750h
jmp     short loc_42B4FD

loc_42B4F5:
inc     eax
cmp     eax, 7B8h
jnb     short loc_42B537

loc_42B4FD:
mov     ecx, eax
mov     ecx, [edx+ecx*4]
mov     esi, ecx
shl     esi, 10h
mov     ebx, ecx
shr     ebx, 10h
or      ebx, esi
add     [esp+1Ch+var_1C], ebx
test    al, 1
jz      short loc_42B523
mov     ebx, [edx+1EE0h]
add     ebx, eax
xor     ebx, ecx
add     [esp+1Ch+var_18], ebx

loc_42B523:
test    al, 1
jnz     short loc_42B4F5
mov     ebx, [edx+1EE0h]
add     ebx, eax
xor     ecx, ebx
add     [esp+1Ch+var_14], ecx
jmp     short loc_42B4F5

loc_42B537:
mov     eax, [edx+1EE0h]
xor     eax, 96969696h
mov     ecx, [esp+1Ch+var_1C]
add     ecx, eax
mov     [edx+1EE4h], ecx
mov     eax, [edx+1EE0h]
xor     eax, 0B2B2B2B2h
mov     ecx, [esp+1Ch+var_18]
add     ecx, eax
mov     [edx+1EE8h], ecx
mov     eax, [edx+1EE0h]
xor     eax, 8B8B8B8Bh
mov     ecx, [esp+1Ch+var_14]
add     ecx, eax
mov     [edx+1EECh], ecx
mov     eax, [edx+174h]
add     eax, [edx+1B4h]
mov     ecx, [edx+170h]
xor     ecx, eax
mov     eax, [edx+1F4h]
add     eax, [edx+374h]
xor     eax, [edx+1F0h]
add     ecx, eax
mov     eax, [edx+1D34h]
add     eax, [edx+1EE4h]
xor     eax, [edx+1D30h]
add     ecx, eax
mov     [edx+1EF4h], ecx
mov     eax, [edx+178h]
add     eax, [edx+1B8h]
mov     ecx, [edx+1B0h]
xor     ecx, eax
mov     eax, [edx+1F8h]
add     eax, [edx+378h]
xor     eax, [edx+370h]
add     ecx, eax
mov     eax, [edx+1D38h]
add     eax, [edx+1EE8h]
xor     eax, [edx+1EE0h]
add     ecx, eax
mov     [edx+1EF8h], ecx
mov     eax, [edx+17Ch]
add     eax, [edx+1BCh]
mov     ecx, [edx+170h]
xor     ecx, eax
mov     eax, [edx+1FCh]
add     eax, [edx+37Ch]
xor     eax, [edx+1B0h]
add     eax, ecx
mov     ecx, [edx+1D3Ch]
add     ecx, [edx+1EECh]
xor     ecx, [edx+1F0h]
add     eax, ecx
mov     [edx+1EFCh], eax
mov     ecx, [edx+1EF8h]
xor     ecx, 0AAAAAAAAh
mov     eax, [edx+1EF4h]
not     eax
add     ecx, eax
mov     eax, [edx+1EFCh]
xor     eax, 55555555h
add     ecx, eax
mov     [edx+1EF0h], ecx

loc_42B66A:
add     esp, 0Ch
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_42B162 endp




sub_42B672 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, offset dword_77E784
mov     ecx, offset dword_77EA48
mov     eax, offset unk_75164C
mov     ebx, ds:dword_751774
mov     ds:dword_77E794, ebx
mov     ebx, ds:dword_751778
mov     ds:dword_77E798, ebx
mov     bx, ds:word_75177C
mov     ds:word_77E79C, bx
mov     bx, ds:word_75177E
mov     ds:word_77E79E, bx
mov     ebx, ds:dword_7517CC
mov     ds:dword_77E790, ebx
mov     ebx, ds:dword_7517D0
mov     ds:dword_77E7A0, ebx
mov     ebx, ds:dword_7517D4
mov     ds:dword_77E7A4, ebx
mov     ebx, ds:dword_7517D8
mov     ds:dword_77E7A8, ebx
mov     ebx, ds:dword_75334C
mov     ds:dword_77E7AC, ebx
mov     ebx, ds:dword_753350
mov     ds:dword_77E7B0, ebx
mov     ebx, ds:dword_753354
mov     ds:dword_77E7B4, ebx
mov     ebx, ds:dword_753358
mov     ds:dword_77E7B8, ebx
mov     ebx, ds:dword_75335C
mov     ds:dword_77E7BC, ebx
mov     ebx, ds:dword_753360
mov     ds:dword_77E7C0, ebx
mov     bx, ds:word_753364
mov     ds:word_77E7C4, bx
mov     bx, ds:word_753366
mov     ds:word_77E7C6, bx
mov     bx, ds:word_753368
mov     ds:word_77E7C8, bx
mov     bx, ds:word_75336A
mov     ds:word_77E7CA, bx
mov     bx, ds:word_75336C
mov     ds:word_77E7CC, bx
mov     bx, ds:word_75336E
mov     ds:word_77E7CE, bx
mov     ebx, ds:dword_7517DC
mov     ds:dword_77E7D0, ebx
mov     bl, ds:byte_7517E0
mov     ds:byte_77EA5E, bl
mov     ds:byte_77E7D4, bl
mov     bl, ds:byte_7517E1
mov     ds:byte_77EA5F, bl
mov     byte ptr ds:dword_77E7D5, bl
mov     bl, ds:byte_7517E2
mov     byte ptr ds:dword_77E7D5+1, bl
mov     bl, ds:byte_7517E3
mov     byte ptr ds:dword_77E7D5+2, bl
mov     bx, ds:word_75181C
mov     word ptr ds:unk_77E7E4, bx
mov     bl, ds:byte_751850
mov     byte ptr ds:word_77E7FC, bl
mov     bl, ds:byte_751851
mov     byte ptr ds:word_77E7FC+1, bl
mov     bl, ds:byte_751852
mov     ds:byte_77E7FE, bl
mov     bl, ds:byte_751853
mov     ds:byte_77E7FF, bl
mov     bl, ds:byte_75184C
mov     ds:byte_77E800, bl
mov     bl, ds:byte_75184D
mov     ds:byte_77E801, bl
mov     bx, ds:word_75181E
mov     ds:word_77E7E6, bx
mov     ebx, ds:dword_75182C
mov     ds:dword_77E7E8, ebx
xor     ebx, ebx
mov     word ptr ds:dword_77E7E8, bx
cmp     byte ptr ds:dword_77E7E8+2, 17h
jbe     short loc_42B858
xor     bh, bh
mov     byte ptr ds:dword_77E7E8+2, bh

loc_42B858:
cmp     byte ptr [edx+67h], 5
jbe     short loc_42B862
mov     byte ptr [edx+67h], 0

loc_42B862:
mov     bl, [eax+198h]
mov     [edx+54h], bl
mov     bl, [eax+199h]
mov     [edx+55h], bl
mov     bl, [eax+19Ah]
mov     [edx+56h], bl
mov     bl, [eax+19Ch]
mov     [edx+58h], bl
mov     bl, [eax+19Dh]
mov     [edx+59h], bl
mov     bl, [eax+19Eh]
mov     [edx+5Ah], bl
mov     bl, [eax+19Fh]
mov     [edx+5Bh], bl
lea     edi, [ecx+8]
lea     esi, [eax+1C0h]
movsd
movsd
mov     ax, [eax+1C8h]
mov     [ecx+12h], ax
mov     byte ptr [ecx+18h], 2
mov     byte ptr [ecx+15h], 0
jmp     loc_42B15C
sub_42B672 endp




sub_42B8C4 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 0Ch
mov     edx, offset unk_75164C
xor     eax, eax

loc_42B8D2:
xor     ebx, ebx
mov     [esp+eax*4+1Ch+var_1C], ebx
inc     eax
cmp     eax, 3
jb      short loc_42B8D2
xor     eax, eax
jmp     short loc_42B8E7

loc_42B8E1:
inc     eax
cmp     eax, 5Ch ; '\'
jnb     short loc_42B921

loc_42B8E7:
mov     ecx, eax
mov     ecx, [edx+ecx*4]
mov     esi, ecx
shl     esi, 10h
mov     ebx, ecx
shr     ebx, 10h
or      ebx, esi
add     [esp+1Ch+var_1C], ebx
test    al, 1
jz      short loc_42B90D
mov     ebx, [edx+170h]
add     ebx, eax
xor     ebx, ecx
add     [esp+1Ch+var_18], ebx

loc_42B90D:
test    al, 1
jnz     short loc_42B8E1
mov     ebx, [edx+170h]
add     ebx, eax
xor     ecx, ebx
add     [esp+1Ch+var_14], ecx
jmp     short loc_42B8E1

loc_42B921:
mov     eax, [edx+170h]
add     eax, [esp+1Ch+var_1C]
cmp     eax, [edx+174h]
jz      short loc_42B93C

loc_42B932:
mov     eax, 3
jmp     loc_42B66A

loc_42B93C:
mov     eax, [edx+170h]
xor     eax, 0E1E1E1E1h
add     eax, [esp+1Ch+var_18]
cmp     eax, [edx+178h]
jnz     short loc_42B932
mov     eax, [edx+170h]
xor     eax, 57575757h
add     eax, [esp+1Ch+var_14]
mov     ecx, [edx+17Ch]
cmp     eax, ecx
jnz     short loc_42B932
xor     eax, ecx

loc_42B96E:
xor     ebx, ebx
mov     [esp+eax*4+1Ch+var_1C], ebx
inc     eax
cmp     eax, 3
jb      short loc_42B96E
mov     eax, 60h ; '`'
jmp     short loc_42B986

loc_42B980:
inc     eax
cmp     eax, 6Ch ; 'l'
jnb     short loc_42B9C0

loc_42B986:
mov     ecx, eax
mov     ecx, [edx+ecx*4]
mov     esi, ecx
shl     esi, 10h
mov     ebx, ecx
shr     ebx, 10h
or      ebx, esi
add     [esp+1Ch+var_1C], ebx
test    al, 1
jz      short loc_42B9AC
mov     ebx, [edx+1B0h]
add     ebx, eax
xor     ebx, ecx
add     [esp+1Ch+var_18], ebx

loc_42B9AC:
test    al, 1
jnz     short loc_42B980
mov     ebx, [edx+1B0h]
add     ebx, eax
xor     ecx, ebx
add     [esp+1Ch+var_14], ecx
jmp     short loc_42B980

loc_42B9C0:
mov     eax, [edx+1B0h]
not     eax
add     eax, [esp+1Ch+var_1C]
cmp     eax, [edx+1B4h]
jnz     loc_42B932
mov     eax, [edx+1B0h]
xor     eax, 33333333h
add     eax, [esp+1Ch+var_18]
cmp     eax, [edx+1B8h]
jnz     loc_42B932
mov     eax, [edx+1B0h]
xor     eax, 0CCCCCCCCh
add     eax, [esp+1Ch+var_14]
mov     ecx, [edx+1BCh]
cmp     eax, ecx
jnz     loc_42B932
xor     eax, ecx

loc_42BA11:
xor     ebx, ebx
mov     [esp+eax*4+1Ch+var_1C], ebx
inc     eax
cmp     eax, 3
jb      short loc_42BA11
mov     eax, 70h ; 'p'
jmp     short loc_42BA29

loc_42BA23:
inc     eax
cmp     eax, 7Ch ; '|'
jnb     short loc_42BA63

loc_42BA29:
mov     ecx, eax
mov     ecx, [edx+ecx*4]
mov     ebx, ecx
shl     ebx, 10h
mov     esi, ecx
shr     esi, 10h
or      ebx, esi
add     [esp+1Ch+var_1C], ebx
test    al, 1
jz      short loc_42BA4F
mov     ebx, [edx+1F0h]
add     ebx, eax
xor     ebx, ecx
add     [esp+1Ch+var_18], ebx

loc_42BA4F:
test    al, 1
jnz     short loc_42BA23
mov     ebx, [edx+1F0h]
add     ebx, eax
xor     ecx, ebx
add     [esp+1Ch+var_14], ecx
jmp     short loc_42BA23

loc_42BA63:
mov     eax, [edx+1F0h]
xor     eax, 69696969h
add     eax, [esp+1Ch+var_1C]
cmp     eax, [edx+1F4h]
jnz     loc_42B932
mov     eax, [edx+1F0h]
xor     eax, 2B2B2B2Bh
add     eax, [esp+1Ch+var_18]
cmp     eax, [edx+1F8h]
jnz     loc_42B932
mov     eax, [edx+1F0h]
xor     eax, 0B8B8B8B8h
add     eax, [esp+1Ch+var_14]
mov     ecx, [edx+1FCh]
cmp     eax, ecx
jnz     loc_42B932
xor     eax, ecx

loc_42BAB7:
xor     ebx, ebx
mov     [esp+eax*4+1Ch+var_1C], ebx
inc     eax
cmp     eax, 3
jb      short loc_42BAB7
mov     eax, 80h
jmp     short loc_42BAD1

loc_42BAC9:
inc     eax
cmp     eax, 0DCh
jnb     short loc_42BB0B

loc_42BAD1:
mov     ecx, eax
mov     ecx, [edx+ecx*4]
mov     esi, ecx
shl     esi, 10h
mov     ebx, ecx
shr     ebx, 10h
or      ebx, esi
add     [esp+1Ch+var_1C], ebx
test    al, 1
jz      short loc_42BAF7
mov     ebx, [edx+370h]
add     ebx, eax
xor     ebx, ecx
add     [esp+1Ch+var_18], ebx

loc_42BAF7:
test    al, 1
jnz     short loc_42BAC9
mov     ebx, [edx+370h]
add     ebx, eax
xor     ecx, ebx
add     [esp+1Ch+var_14], ecx
jmp     short loc_42BAC9

loc_42BB0B:
mov     eax, [edx+370h]
add     eax, [esp+1Ch+var_1C]
cmp     eax, [edx+374h]
jnz     loc_42B932
mov     eax, [edx+370h]
xor     eax, 1E1E1E1Eh
add     eax, [esp+1Ch+var_18]
cmp     eax, [edx+378h]
jnz     loc_42B932
mov     eax, [edx+370h]
xor     eax, 75757575h
add     eax, [esp+1Ch+var_14]
mov     ecx, [edx+37Ch]
cmp     eax, ecx
jnz     loc_42B932
xor     eax, ecx

loc_42BB5A:
xor     ebx, ebx
mov     [esp+eax*4+1Ch+var_1C], ebx
inc     eax
cmp     eax, 3
jb      short loc_42BB5A
mov     eax, 0E0h
jmp     short loc_42BB74

loc_42BB6C:
inc     eax
cmp     eax, 74Ch
jnb     short loc_42BBAE

loc_42BB74:
mov     ecx, eax
mov     ecx, [edx+ecx*4]
mov     esi, ecx
shl     esi, 10h
mov     ebx, ecx
shr     ebx, 10h
or      ebx, esi
add     [esp+1Ch+var_1C], ebx
test    al, 1
jz      short loc_42BB9A
mov     ebx, [edx+1D30h]
add     ebx, eax
xor     ebx, ecx
add     [esp+1Ch+var_18], ebx

loc_42BB9A:
test    al, 1
jnz     short loc_42BB6C
mov     ebx, [edx+1D30h]
add     ebx, eax
xor     ecx, ebx
add     [esp+1Ch+var_14], ecx
jmp     short loc_42BB6C

loc_42BBAE:
mov     eax, [edx+1D30h]
not     eax
add     eax, [esp+1Ch+var_1C]
cmp     eax, [edx+1D34h]
jnz     loc_42B932
mov     eax, [edx+1D30h]
xor     eax, 33333333h
add     eax, [esp+1Ch+var_18]
cmp     eax, [edx+1D38h]
jnz     loc_42B932
mov     eax, [edx+1D30h]
xor     eax, 0CCCCCCCCh
add     eax, [esp+1Ch+var_14]
mov     ecx, [edx+1D3Ch]
cmp     eax, ecx
jnz     loc_42B932
xor     eax, ecx

loc_42BBFF:
xor     ebx, ebx
mov     [esp+eax*4+1Ch+var_1C], ebx
inc     eax
cmp     eax, 3
jb      short loc_42BBFF
mov     eax, 750h
jmp     short loc_42BC19

loc_42BC11:
inc     eax
cmp     eax, 7B8h
jnb     short loc_42BC53

loc_42BC19:
mov     ecx, eax
mov     ecx, [edx+ecx*4]
mov     ebx, ecx
shl     ebx, 10h
mov     esi, ecx
shr     esi, 10h
or      ebx, esi
add     [esp+1Ch+var_1C], ebx
test    al, 1
jz      short loc_42BC3F
mov     ebx, [edx+1EE0h]
add     ebx, eax
xor     ebx, ecx
add     [esp+1Ch+var_18], ebx

loc_42BC3F:
test    al, 1
jnz     short loc_42BC11
mov     ebx, [edx+1EE0h]
add     ebx, eax
xor     ecx, ebx
add     [esp+1Ch+var_14], ecx
jmp     short loc_42BC11

loc_42BC53:
mov     eax, [edx+1EE0h]
xor     eax, 96969696h
add     eax, [esp+1Ch+var_1C]
cmp     eax, [edx+1EE4h]
jnz     loc_42B932
mov     eax, [edx+1EE0h]
xor     eax, 0B2B2B2B2h
add     eax, [esp+1Ch+var_18]
cmp     eax, [edx+1EE8h]
jnz     loc_42B932
mov     eax, [edx+1EE0h]
xor     eax, 8B8B8B8Bh
add     eax, [esp+1Ch+var_14]
cmp     eax, [edx+1EECh]
jnz     loc_42B932
mov     eax, [edx+174h]
add     eax, [edx+1B4h]
mov     ecx, [edx+170h]
xor     ecx, eax
mov     eax, [edx+1F4h]
add     eax, [edx+374h]
xor     eax, [edx+1F0h]
add     ecx, eax
mov     eax, [edx+1D34h]
add     eax, [edx+1EE4h]
xor     eax, [edx+1D30h]
add     eax, ecx
cmp     eax, [edx+1EF4h]
jnz     loc_42B932
mov     eax, [edx+178h]
add     eax, [edx+1B8h]
mov     ecx, [edx+1B0h]
xor     ecx, eax
mov     eax, [edx+1F8h]
add     eax, [edx+378h]
xor     eax, [edx+370h]
add     ecx, eax
mov     eax, [edx+1D38h]
add     eax, [edx+1EE8h]
xor     eax, [edx+1EE0h]
add     eax, ecx
cmp     eax, [edx+1EF8h]
jnz     loc_42B932
mov     eax, [edx+17Ch]
add     eax, [edx+1BCh]
mov     ecx, [edx+170h]
xor     ecx, eax
mov     eax, [edx+1FCh]
add     eax, [edx+37Ch]
xor     eax, [edx+1B0h]
add     ecx, eax
mov     eax, [edx+1D3Ch]
add     eax, [edx+1EECh]
xor     eax, [edx+1F0h]
add     eax, ecx
cmp     eax, [edx+1EFCh]
jnz     loc_42B932
mov     eax, [edx+1EF8h]
xor     eax, 0AAAAAAAAh
mov     ecx, [edx+1EF4h]
not     ecx
add     ecx, eax
mov     eax, [edx+1EFCh]
xor     eax, 55555555h
add     eax, ecx
mov     ebx, [edx+1EF0h]
cmp     eax, ebx
jnz     loc_42B932
xor     eax, ebx
jmp     loc_42B66A
sub_42B8C4 endp




sub_42BDB2 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     eax, offset dword_77EA48
xor     edx, edx
mov     ds:dword_77E790, edx
xor     ecx, ecx
mov     ds:dword_77E7A0, edx
xor     ebx, ebx
mov     ds:dword_77E7A4, edx
mov     ds:dword_77E7A8, edx
mov     ds:dword_77E7AC, edx
mov     ds:dword_77E7B0, edx
mov     ds:dword_77E7B4, edx
mov     ds:dword_77E7B8, edx
mov     ds:dword_77E7BC, edx
mov     ds:dword_77E7C0, edx
xor     edx, edx
mov     ds:word_77E7C4, dx
xor     ebx, ecx
mov     ds:word_77E7C6, bx
mov     ds:word_77E7C8, dx
mov     ds:word_77E7CA, dx
mov     ds:word_77E7CC, dx
mov     ds:word_77E7CE, dx
xor     edi, edi
mov     ds:dword_77E7D0, edi
mov     word ptr ds:unk_77E7E4, 80h
xor     dl, dl
mov     byte ptr ds:word_77E7FC, dl
mov     dh, 0FFh
mov     byte ptr ds:word_77E7FC+1, dh
mov     ds:byte_77E7FE, dh
xor     bh, bh
mov     ds:byte_77E7FF, bh
xor     cl, cl
mov     ds:byte_77E800, cl
xor     ch, ch
mov     ds:byte_77E801, ch
mov     ds:word_77E7E6, cx
mov     ds:dword_77E7E8, edi
mov     byte ptr ds:dword_77E7DC+2, 1
mov     edx, dword ptr ds:unk_77E803
sar     edx, 18h
test    dl, 80h
jnz     short loc_42BE9E
cmp     ds:byte_77E7D4, 0
jnz     short loc_42BEA4
cmp     byte ptr ds:dword_77E7D5, 0
jnz     short loc_42BEA4

loc_42BE9E:
mov     byte ptr [eax+18h], 0FFh
jmp     short loc_42BEA8

loc_42BEA4:
mov     byte ptr [eax+18h], 2

loc_42BEA8:
mov     byte ptr [eax+15h], 1
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_42BDB2 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_1]



sub_42BEB2 proc near

var_434= dword ptr -434h
var_430= dword ptr -430h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 41Ch
mov     esi, eax

loc_42BEC0:
mov     eax, ds:off_5111F0[esi*4] ; "DAT\\INIT_DAT.BIN"
xor     ebx, ebx
xor     edx, edx
call    sub_4F09B5
mov     ecx, eax
mov     [esp+434h+var_20], eax
cmp     eax, 0FFFFFFFFh
jnz     short loc_42BEEA
mov     eax, 1
call    sub_4EEDA4
jmp     short loc_42BEC0

loc_42BEEA:
mov     ebx, 4
lea     edx, [esp+434h+var_2C]
call    sub_4F0A70
mov     eax, [esp+434h+var_2C]
call    _nmalloc_
mov     edx, eax
mov     [esp+434h+var_28], eax
mov     eax, [esp+434h+var_2C]
mov     [edx], eax
lea     ebx, [eax-4]
add     edx, 4
mov     eax, ecx
call    sub_4F0A70
xor     edx, edx
mov     [esp+434h+var_24], edx

loc_42BF2F:
mov     eax, [esp+434h+var_2C]
shr     eax, 2
dec     eax
mov     ecx, [esp+434h+var_24]
cmp     eax, ecx
jbe     loc_42C1EC
mov     eax, ecx
shl     eax, 2
add     eax, [esp+434h+var_28]
mov     edi, [eax+4]
sub     edi, [eax]
mov     ebx, 8
lea     edx, [esp+434h+var_34]
mov     eax, [esp+434h+var_20]
call    sub_4F0A70
mov     edx, [esp+434h+var_34]
cmp     dx, 4442h
jb      short loc_42BFA6
jbe     short loc_42BFB6
cmp     dx, 4D54h
jb      loc_42C0B1
lea     ebx, [edi-8]
jbe     loc_42C06F
cmp     dx, 5443h
jz      loc_42C0BD
jmp     loc_42C0B1

loc_42BFA6:
cmp     dx, 4257h
jz      loc_42C0F3
jmp     loc_42C0B1

loc_42BFB6:
mov     ecx, [esp+434h+var_34]
and     ecx, 0FF0000h
shr     ecx, 10h
mov     esi, [esp+434h+var_34]
and     esi, 0FF000000h
shr     esi, 18h
test    esi, esi
jnz     short loc_42BFDC
mov     esi, ecx

loc_42BFDC:
mov     ebp, [esp+434h+var_30]
test    ebp, ebp
jz      short loc_42C00A
mov     eax, ebp
call    _nmalloc_
mov     [esp+434h+var_1C], eax
mov     ebx, [esp+434h+var_30]
mov     edx, eax
mov     eax, [esp+434h+var_20]
call    sub_4F0A70

loc_42C00A:
mov     ecx, ds:dword_511164[ecx*4]
mov     ebx, [esp+434h+var_30]
add     ebx, 8
sub     edi, ebx
mov     ebx, edi
mov     edx, ecx
mov     eax, [esp+434h+var_20]
call    sub_4F0A70
xor     ebx, ebx

loc_42C02F:
mov     eax, [esp+434h+var_30]
shr     eax, 2
cmp     ebx, eax
jnb     short loc_42C058
mov     eax, ebx
shl     eax, 2
add     eax, [esp+434h+var_1C]
mov     eax, [eax]
mov     edx, ds:dword_511164[esi*4]
add     [ecx+eax], edx
inc     ebx
jmp     short loc_42C02F

loc_42C058:
cmp     [esp+434h+var_30], 0
jz      loc_42C0B1
mov     eax, [esp+434h+var_1C]
jmp     short loc_42C0AC

loc_42C06F:
mov     eax, ebx
call    _nmalloc_
mov     esi, eax
mov     edi, eax
mov     edx, eax
mov     eax, [esp+434h+var_20]
call    sub_4F0A70
mov     cx, [esi+0Ch]
cmp     cx, 140h
jnb     short loc_42C097
xor     edx, edx
jmp     short loc_42C09C

loc_42C097:
mov     edx, 1

loc_42C09C:
mov     eax, esi
call    sub_4F350F
mov     eax, edi
call    sub_4F3479

loc_42C0AA:
mov     eax, edi

loc_42C0AC:
call    _nfree_

loc_42C0B1:
inc     [esp+434h+var_24]
jmp     loc_42BF2F

loc_42C0BD:
mov     eax, ebx
call    _nmalloc_
mov     esi, eax
mov     edi, eax
mov     edx, eax
mov     eax, [esp+434h+var_20]
call    sub_4F0A70
mov     cx, [esi+0Ch]
cmp     cx, 100h
jnb     short loc_42C0E5
xor     edx, edx
jmp     short loc_42C0EA

loc_42C0E5:
mov     edx, 1

loc_42C0EA:
mov     eax, esi
call    sub_4F350F
jmp     short loc_42C0AA

loc_42C0F3:
mov     ecx, [esp+434h+var_30]
xor     edx, edx
mov     dx, cx
mov     eax, edx
call    sub_4D8F2F
mov     eax, [esp+434h+var_30]
shr     eax, 10h
mov     esi, edx
shl     esi, 8
add     esi, edx
mov     ds:dword_562204[esi*8], eax
mov     ebx, 400h
mov     edx, esp
mov     eax, [esp+434h+var_20]
call    sub_4F0A70
lea     ebx, [edi-408h]
mov     eax, ebx
call    _nmalloc_
mov     ds:dword_562208[esi*8], eax
mov     edx, eax
mov     eax, [esp+434h+var_20]
call    sub_4F0A70
xor     ebx, ebx
mov     esi, ds:dword_562208[esi*8]
sub     esi, 400h
jmp     short loc_42C195

loc_42C164:
xor     edx, edx
mov     dx, cx
mov     eax, edx
shl     eax, 8
add     edx, eax
shl     edx, 3
mov     eax, ebx
shl     eax, 4
xor     edi, edi
mov     ds:dword_562214[edx+eax], edi
mov     ds:dword_562218[edx+eax], edi
inc     ebx
cmp     ebx, 80h
jnb     loc_42C0B1

loc_42C195:
mov     eax, ebx
shl     eax, 3
mov     ebp, [esp+eax+434h+var_434]
test    ebp, ebp
jz      short loc_42C1BC
lea     edi, [esi+ebp]
xor     edx, edx
mov     dx, cx
mov     eax, edx
shl     eax, 8
add     eax, edx
mov     edx, ebx
shl     edx, 4
mov     ds:dword_56220C[edx+eax*8], edi

loc_42C1BC:
mov     eax, ebx
shl     eax, 3
mov     edx, [esp+eax+434h+var_430]
test    edx, edx
jz      short loc_42C164
lea     edi, [edx+esi]
xor     edx, edx
mov     dx, cx
mov     eax, edx
shl     eax, 8
add     edx, eax
shl     edx, 3
mov     eax, ebx
shl     eax, 4
mov     ds:dword_562210[edx+eax], edi
jmp     loc_42C164

loc_42C1EC:
mov     eax, [esp+434h+var_20]
call    sub_4F0AF4
mov     eax, [esp+434h+var_28]
call    _nfree_
add     esp, 41Ch
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_42BEB2 endp




sub_42C211 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax

loc_42C217:
mov     eax, ds:off_511520[esi*4] ; "BGM\\MUSIC00.WAV"
xor     ebx, ebx
xor     edx, edx
call    sub_4F09B5
mov     ecx, eax
cmp     eax, 0FFFFFFFFh
jnz     short loc_42C23A
mov     eax, 1
call    sub_4EEDA4
jmp     short loc_42C217

loc_42C23A:
call    sub_4F0AD4
call    _nmalloc_
mov     esi, eax
mov     edx, eax
mov     eax, ecx
call    sub_4F0A8A
mov     eax, ecx
call    sub_4F0AF4
mov     eax, esi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_42C211 endp




sub_42C25D proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     esi, eax
mov     ebp, edx
mov     [esp+1Ch+var_14], ebx

loc_42C26C:
mov     eax, ds:off_511618[esi*4] ; "SPH\\1806E.WBK"
xor     ebx, ebx
xor     edx, edx
call    sub_4F09B5
mov     ecx, eax
mov     edi, eax
cmp     eax, 0FFFFFFFFh
jnz     short loc_42C291
mov     eax, 1
call    sub_4EEDA4
jmp     short loc_42C26C

loc_42C291:
mov     edx, ebp
shl     edx, 2
call    sub_4F0AE3
mov     ebx, 8
mov     edx, esp
mov     eax, ecx
call    sub_4F0A70
mov     ebx, [esp+1Ch+var_18]
mov     edx, [esp+1Ch+var_1C]
sub     ebx, edx
mov     eax, ecx
call    sub_4F0AE3
cmp     ebx, 80000h
jle     short loc_42C326
mov     eax, 10100h
call    _nmalloc_
mov     ebp, eax
mov     esi, eax
mov     ebx, 8000h
mov     edx, eax
mov     eax, ecx
call    sub_4F0A70
mov     edx, [ebp+10h]
add     edx, 14h

loc_42C2E3:
lea     eax, [esi+edx]
cmp     byte ptr [eax], 64h ; 'd'
jnz     short loc_42C2FE
mov     bh, [eax+1]
cmp     bh, 61h ; 'a'
jnz     short loc_42C2FE
cmp     byte ptr [eax+2], 74h ; 't'
jnz     short loc_42C2FE
cmp     bh, [eax+3]
jz      short loc_42C30B

loc_42C2FE:
lea     eax, [esi+edx]
mov     ebx, [eax+4]
add     ebx, 8
add     edx, ebx
jmp     short loc_42C2E3

loc_42C30B:
lea     ebx, [edx+8008h]
lea     edx, [esi+8000h]
mov     eax, edi
call    sub_4F0A70
mov     eax, [esp+1Ch+var_14]
mov     [eax], edi
jmp     short loc_42C349

loc_42C326:
mov     eax, ebx
call    _nmalloc_
mov     esi, eax
mov     edx, eax
mov     eax, ecx
call    sub_4F0A70
mov     eax, ecx
call    sub_4F0AF4
mov     eax, [esp+1Ch+var_14]
mov     dword ptr [eax], 0FFFFFFFFh

loc_42C349:
mov     eax, esi
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
pop     ecx
sub_42C25D endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_10]



sub_42C353 proc near
xor     eax, eax
retn
sub_42C353 endp




sub_42C356 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     edi, edx

loc_42C35E:
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4F09B5
mov     ecx, eax
cmp     eax, 0FFFFFFFFh
jnz     short loc_42C37C
mov     eax, 1
call    sub_4EEDA4
jmp     short loc_42C35E

loc_42C37C:
mov     edx, edi
call    sub_4F0A8A
mov     eax, ecx
call    sub_4F0AF4
mov     eax, 1
call    sub_4EEDA4
xor     eax, eax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_42C356 endp




sub_42C39B proc near
push    ecx
push    esi
push    edi
mov     esi, edx
mov     edi, ebx
xor     ebx, ebx
xor     edx, edx
call    sub_4F09B5
mov     ecx, eax
cmp     eax, 0FFFFFFFFh
jz      short loc_42C3C4
mov     ebx, edi
mov     edx, esi
call    sub_4F0A70
mov     eax, ecx
call    sub_4F0AF4
xor     eax, eax

loc_42C3C4:
pop     edi
pop     esi
pop     ecx
retn
sub_42C39B endp




sub_42C3C8 proc near
push    ecx
call    sub_4F0A2E
mov     ecx, eax
cmp     eax, 0FFFFFFFFh
jz      short loc_42C3E3
call    sub_4F0ABA
mov     eax, ecx
call    sub_4F0AF4
xor     eax, eax

loc_42C3E3:
pop     ecx
retn
sub_42C3C8 endp




sub_42C3E5 proc near
push    ebx
push    ecx
push    edx
movsx   ecx, word ptr [eax]
add     ecx, 8000h
sar     ecx, 9
xor     edx, edx
mov     dl, ds:byte_77EAC5
sub     ecx, edx
mov     edx, ecx
xor     ecx, ecx
mov     cx, ds:word_77EAAE
cmp     edx, ecx
jnb     short loc_42C434
mov     ebx, [eax+2]
sar     ebx, 10h
add     ebx, 8000h
sar     ebx, 9
xor     eax, eax
mov     al, ds:byte_77EAC3
sub     ebx, eax
mov     eax, ebx
xor     ebx, ebx
mov     bx, ds:word_77EAB0
cmp     eax, ebx
jb      short loc_42C43A

loc_42C434:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn

loc_42C43A:
imul    eax, ecx
add     eax, edx
pop     edx
pop     ecx
pop     ebx
retn
sub_42C3E5 endp




sub_42C443 proc near
push    ebx
push    ecx
push    edx
movsx   ecx, word ptr [eax]
add     ecx, 8000h
sar     ecx, 9
xor     edx, edx
mov     dl, ds:byte_77EAC5
sub     ecx, edx
mov     edx, ecx
xor     ecx, ecx
mov     cx, ds:word_77EAAE
cmp     edx, ecx
jnb     short loc_42C492
mov     ebx, [eax+2]
sar     ebx, 10h
add     ebx, 8000h
sar     ebx, 9
xor     eax, eax
mov     al, ds:byte_77EAC3
sub     ebx, eax
mov     eax, ebx
xor     ebx, ebx
mov     bx, ds:word_77EAB0
cmp     eax, ebx
jb      short loc_42C498

loc_42C492:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn

loc_42C498:
add     edx, edx
add     edx, ds:dword_77E700
imul    eax, ecx
movsx   eax, word ptr [edx+eax*2]
pop     edx
pop     ecx
pop     ebx
retn
sub_42C443 endp




sub_42C4AB proc near
add     eax, eax
add     eax, ds:dword_77E700
movsx   eax, word ptr [eax]
retn
sub_42C4AB endp




sub_42C4B7 proc near
push    ebx
push    ecx
push    esi
shl     eax, 3
add     eax, offset unk_6EA0B0
movsx   ebx, word ptr [edx]
add     ebx, 8000h
sar     ebx, 9
xor     ecx, ecx
mov     cl, [eax]
sub     ebx, ecx
mov     ecx, ebx
xor     ebx, ebx
mov     bl, [eax+2]
cmp     ecx, ebx
jnb     short loc_42C4FF
mov     esi, [edx+2]
sar     esi, 10h
add     esi, 8000h
sar     esi, 9
xor     edx, edx
mov     dl, [eax+1]
sub     esi, edx
mov     edx, esi
movzx   esi, byte ptr [eax+3]
cmp     edx, esi
jb      short loc_42C505

loc_42C4FF:
xor     eax, eax
pop     esi
pop     ecx
pop     ebx
retn

loc_42C505:
imul    edx, ebx
add     ecx, ecx
mov     eax, [eax+4]
add     eax, ecx
movsx   eax, word ptr [eax+edx*2]
pop     esi
pop     ecx
pop     ebx
retn
sub_42C4B7 endp




sub_42C517 proc near
push    ecx
push    edx
movsx   ecx, word ptr [eax]
add     ecx, 8000h
sar     ecx, 9
xor     edx, edx
mov     dl, ds:byte_77EAC5
sub     ecx, edx
xor     edx, edx
mov     dx, ds:word_77EAAE
cmp     ecx, edx
jnb     short loc_42C562
mov     eax, [eax+2]
sar     eax, 10h
add     eax, 8000h
sar     eax, 9
xor     edx, edx
mov     dl, ds:byte_77EAC3
sub     eax, edx
mov     edx, eax
xor     eax, eax
mov     ax, ds:word_77EAB0
cmp     edx, eax
jb      short loc_42C56A

loc_42C562:
mov     eax, 0FFFFFFFFh
pop     edx
pop     ecx
retn

loc_42C56A:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_42C517 endp




sub_42C56F proc near
push    edx
call    sub_42C443
test    eax, eax
jle     short loc_42C58E
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     ax, ds:word_6E40B2[eax*4]
and     ah, 0Fh
cwde
pop     edx
retn

loc_42C58E:
xor     eax, eax
pop     edx
retn
sub_42C56F endp




sub_42C592 proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+1]
mov     ebx, [eax+14h]
sar     ebx, 10h
mov     edx, [eax+2Ch]
sar     edx, 10h
sub     ebx, edx
mov     edx, [eax+78h]
add     eax, 14h
call    sub_42C5B7
pop     edx
pop     ecx
pop     ebx
retn
sub_42C592 endp




sub_42C5B7 proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= word ptr -38h
var_36= word ptr -36h
var_34= word ptr -34h
var_32= dword ptr -32h
var_2E= word ptr -2Eh
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 2Ch
push    edx
push    ebx
mov     ebp, 7FFFh
mov     edi, (offset dword_564A5A+2)
mov     esi, eax
movsd
movsd
xor     edx, edx
mov     eax, (offset dword_564A5A+2)
call    sub_42DCD6
mov     [esp+40h+var_1C], eax
mov     eax, [esp+40h+var_3C]
call    sub_42DE2A
mov     eax, ecx
call    sub_4DD420
test    eax, eax
jz      short loc_42C5F9
xor     ecx, ecx
mov     [esp+40h+var_18], ecx
jmp     short loc_42C601

loc_42C5F9:
mov     [esp+40h+var_18], 8000h

loc_42C601:
mov     eax, [esp+40h+var_1C]
mov     [esp+40h+var_28], eax
mov     [esp+40h+var_2C], ebp

loc_42C60D:
mov     ebx, [esp+40h+var_28]
dec     ebx
mov     [esp+40h+var_28], ebx
cmp     ebx, 0FFFFFFFFh
jz      loc_42C7CA
lea     ecx, [ebx+ebx]
mov     eax, ds:dword_564A52[ecx]
sar     eax, 10h
call    sub_42C4AB
mov     edi, eax
test    eax, eax
jg      short loc_42C66C
mov     edx, ds:dword_564A52[ecx]
sar     edx, 10h
mov     eax, (offset dword_564A5A+2)
call    sub_42C3E5
cmp     edx, eax
jnz     short loc_42C60D
mov     eax, edi
and     eax, 1F00h
sar     eax, 1
neg     eax
mov     edx, ds:dword_77E6CA+2
sar     edx, 10h
inc     edx
sub     eax, edx
cmp     ebp, eax
jle     short loc_42C60D
mov     ebp, eax
jmp     short loc_42C60D

loc_42C66C:
shl     eax, 2
sub     eax, edi
shl     eax, 2
add     eax, (offset dword_6E40AA+2)
mov     ecx, [eax+8]
test    word ptr [eax+6], 0FFFh
jz      short loc_42C689
mov     ecx, [ecx+4]
jmp     short loc_42C68C

loc_42C689:
mov     ecx, [ecx+8]

loc_42C68C:
mov     di, [eax]
mov     dx, [eax+2]
mov     [esp+40h+var_14], edx
mov     ax, [eax+4]
mov     [esp+40h+var_10], eax

loc_42C69F:
cmp     dword ptr [ecx+8], 0
jz      loc_42C60D
mov     ax, [ecx]
add     eax, edi
mov     [esp+40h+var_38], ax
mov     ax, [ecx+2]
add     eax, edi
mov     [esp+40h+var_36], ax
mov     eax, [esp+40h+var_10]
mov     bx, [ecx+4]
add     eax, ebx
mov     [esp+40h+var_34], ax
mov     eax, [esp+40h+var_10]
mov     si, [ecx+6]
add     eax, esi
mov     word ptr [esp+40h+var_32], ax
mov     ebx, [ecx+8]
xor     edx, edx
mov     dx, [ebx+4]
cmp     edx, 100h
jnb     short loc_42C707
mov     esi, edx
and     esi, 0F0h
shr     esi, 4
lea     eax, [esp+40h+var_38]
call    ds:funcs_42C6FC[esi*4]
test    eax, eax
jnz     short loc_42C70C

loc_42C707:
add     ecx, 10h
jmp     short loc_42C69F

loc_42C70C:
mov     esi, [ecx+0Ch]

loc_42C70F:
xor     eax, eax
mov     ax, [ebx+6]
mov     [esp+40h+var_24], eax
mov     eax, [esp+40h+var_18]
xor     ah, 80h
and     eax, [esp+40h+var_24]
test    ah, 80h
jnz     loc_42C7BB
mov     eax, [esp+40h+var_14]
mov     dx, [ebx]
add     eax, edx
mov     word ptr [esp+40h+var_32+2], ax
mov     eax, [esp+40h+var_14]
mov     dx, [ebx+2]
add     eax, edx
mov     [esp+40h+var_2E], ax
xor     edx, edx
mov     dx, [ebx+4]
lea     eax, [esp+40h+var_38]
call    sub_42D185
cmp     [esp+40h+var_40], 0
jl      short loc_42C78C
mov     eax, [esp+40h+var_32]
sar     eax, 10h
cmp     ebp, eax
jle     short loc_42C7BB
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, ebp
jl      short loc_42C778
mov     eax, ebp

loc_42C778:
mov     edx, [esp+40h+var_32+2]
sar     edx, 10h
cmp     eax, edx
jge     short loc_42C7BB
mov     ebp, [esp+40h+var_32]
sar     ebp, 10h
jmp     short loc_42C7BB

loc_42C78C:
mov     eax, [esp+40h+var_32]
sar     eax, 10h
cmp     ebp, eax
jle     short loc_42C7BB
mov     edx, ds:dword_564A5A+2
sar     edx, 10h
mov     [esp+40h+var_24], edx
mov     edx, [esp+40h+var_32+2]
sar     edx, 10h
mov     [esp+40h+var_20], edx
mov     edx, [esp+40h+var_24]
cmp     edx, [esp+40h+var_20]
jge     short loc_42C7BB
mov     ebp, eax

loc_42C7BB:
add     ebx, 8
dec     esi
jnz     loc_42C70F
jmp     loc_42C707

loc_42C7CA:
mov     edi, [esp+40h+var_2C]
cmp     ebp, edi
jnz     loc_42C601
mov     eax, ds:dword_77E6CA+2
sar     eax, 10h
add     eax, edi
add     esp, 34h
pop     ebp
pop     edi
pop     esi
retn
sub_42C5B7 endp




sub_42C7E7 proc near

var_34= word ptr -34h
var_32= word ptr -32h
var_30= word ptr -30h
var_2E= dword ptr -2Eh
var_2A= word ptr -2Ah
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     esi, eax
call    sub_42C443
test    eax, eax
jg      short loc_42C80A
and     eax, 1F00h
sar     eax, 1
neg     eax
dec     eax
jmp     loc_42C92B

loc_42C80A:
mov     ebp, 7FFFh
mov     edi, (offset dword_564A5A+2)
movsd
movsd
mov     edx, eax
shl     edx, 2
sub     edx, eax
shl     edx, 2
mov     eax, (offset dword_6E40AA+2)
add     eax, edx
mov     ecx, [eax+8]
test    word ptr [eax+6], 0FFFh
jz      short loc_42C837
mov     ecx, [ecx+4]
jmp     short loc_42C83A

loc_42C837:
mov     ecx, [ecx+8]

loc_42C83A:
mov     dx, [eax]
mov     [esp+34h+var_20], edx
mov     di, [eax+2]
mov     ax, [eax+4]
mov     [esp+34h+var_1C], eax
xor     edx, edx
mov     ds:dword_77E6C2+2, edx
mov     ds:dword_77E6C6+2, edx
mov     ds:dword_77E6CA+2, edx

loc_42C861:
cmp     dword ptr [ecx+8], 0
jz      loc_42C929
mov     eax, [esp+34h+var_20]
mov     bx, [ecx]
add     eax, ebx
mov     [esp+34h+var_34], ax
mov     eax, [esp+34h+var_20]
mov     si, [ecx+2]
add     eax, esi
mov     [esp+34h+var_32], ax
mov     eax, [esp+34h+var_1C]
mov     dx, [ecx+4]
add     eax, edx
mov     [esp+34h+var_30], ax
mov     eax, [esp+34h+var_1C]
mov     bx, [ecx+6]
add     eax, ebx
mov     word ptr [esp+34h+var_2E], ax
mov     ebx, [ecx+8]
xor     edx, edx
mov     dx, [ebx+4]
mov     esi, edx
and     esi, 0F0h
shr     esi, 4
shl     esi, 2
mov     eax, esp
call    ds:funcs_42C6FC[esi]
test    eax, eax
jnz     short loc_42C8CD

loc_42C8C8:
add     ecx, 10h
jmp     short loc_42C861

loc_42C8CD:
mov     esi, [ecx+0Ch]

loc_42C8D0:
mov     ax, [ebx]
add     eax, edi
mov     word ptr [esp+34h+var_2E+2], ax
mov     ax, [ebx+2]
add     eax, edi
mov     [esp+34h+var_2A], ax
xor     edx, edx
mov     dx, [ebx+4]
mov     eax, esp
call    sub_42D185
mov     eax, [esp+34h+var_2E]
sar     eax, 10h
cmp     ebp, eax
jle     short loc_42C921
mov     edx, ds:dword_564A5A+2
sar     edx, 10h
mov     [esp+34h+var_28], edx
mov     edx, [esp+34h+var_2E+2]
sar     edx, 10h
mov     [esp+34h+var_24], edx
mov     edx, [esp+34h+var_28]
cmp     edx, [esp+34h+var_24]
jge     short loc_42C921
mov     ebp, eax

loc_42C921:
add     ebx, 8
dec     esi
jnz     short loc_42C8D0
jmp     short loc_42C8C8

loc_42C929:
mov     eax, ebp

loc_42C92B:
add     esp, 1Ch
sub_42C7E7 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_42DB45
;   ADDITIONAL PARENT FUNCTION sub_42DE56

loc_42C92E:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_42DB45



sub_42C935 proc near
push    ebx
push    edx
xor     ebx, ebx
mov     bl, [eax+1]
mov     edx, [eax+78h]
add     eax, 14h
call    sub_42C94A
pop     edx
pop     ebx
retn
sub_42C935 endp




sub_42C94A proc near

var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_26= dword ptr -26h
var_22= word ptr -22h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ecx, edx
mov     ebp, 0FFFF8001h
mov     edi, (offset dword_564A5A+2)
mov     esi, eax
movsd
movsd
xor     edx, edx
mov     eax, (offset dword_564A5A+2)
call    sub_42DCD6
mov     [esp+2Ch+var_20], eax
mov     eax, ecx
call    sub_42DE2A
mov     eax, ebx
call    sub_4DD420
test    eax, eax
jz      short loc_42C98B
xor     ecx, ecx
mov     [esp+2Ch+var_1C], ecx
jmp     short loc_42C993

loc_42C98B:
mov     [esp+2Ch+var_1C], 8000h

loc_42C993:
mov     ebx, [esp+2Ch+var_20]
dec     ebx
mov     [esp+2Ch+var_20], ebx
cmp     ebx, 0FFFFFFFFh
jz      loc_42CB20
lea     edi, [ebx+ebx]
mov     eax, ds:dword_564A52[edi]
sar     eax, 10h
call    sub_42C4AB
mov     ecx, eax
test    eax, eax
jg      short loc_42CA11
mov     edx, ds:dword_564A52[edi]
sar     edx, 10h
mov     eax, (offset dword_564A5A+2)
call    sub_42C3E5
cmp     edx, eax
jnz     short loc_42C993
test    ch, 60h
jz      short loc_42C993
mov     edx, ecx
and     edx, 6000h
sar     edx, 0Dh
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 7
mov     edx, ecx
and     edx, 1F00h
sar     edx, 1
neg     edx
sub     edx, eax
mov     eax, edx
mov     edx, ds:dword_77E6CA
sar     edx, 10h
dec     edx
sub     eax, edx
cmp     ebp, eax
jge     short loc_42C993
mov     ebp, eax
jmp     short loc_42C993

loc_42CA11:
mov     edi, eax
shl     edi, 2
sub     edi, eax
shl     edi, 2
add     edi, (offset dword_6E40AA+2)
mov     ecx, [edi+8]
test    word ptr [edi+6], 0FFFh
jz      short loc_42CA31
mov     ecx, [ecx+4]
jmp     short loc_42CA34

loc_42CA31:
mov     ecx, [ecx+8]

loc_42CA34:
mov     ax, [edi]
mov     [esp+2Ch+var_14], eax
mov     ax, [edi+2]
mov     [esp+2Ch+var_18], eax
mov     di, [edi+4]

loc_42CA47:
cmp     dword ptr [ecx+8], 0
jz      loc_42C993
mov     eax, [esp+2Ch+var_14]
mov     bx, [ecx]
add     eax, ebx
mov     [esp+2Ch+var_2C], ax
mov     eax, [esp+2Ch+var_14]
mov     si, [ecx+2]
add     eax, esi
mov     [esp+2Ch+var_2A], ax
mov     ax, [ecx+4]
add     eax, edi
mov     [esp+2Ch+var_28], ax
mov     ax, [ecx+6]
add     eax, edi
mov     word ptr [esp+2Ch+var_26], ax
mov     ebx, [ecx+8]
xor     edx, edx
mov     dx, [ebx+4]
cmp     edx, 100h
jnb     short loc_42CAAE
mov     esi, edx
and     esi, 0F0h
shr     esi, 4
shl     esi, 2
mov     eax, esp
call    ds:funcs_42C6FC[esi]
test    eax, eax
jnz     short loc_42CAB3

loc_42CAAE:
add     ecx, 10h
jmp     short loc_42CA47

loc_42CAB3:
mov     edx, [ecx+0Ch]

loc_42CAB6:
xor     eax, eax
mov     ax, [ebx+6]
mov     esi, [esp+2Ch+var_1C]
xor     si, 8000h
and     eax, esi
test    ah, 80h
jnz     short loc_42CB18
mov     eax, [esp+2Ch+var_18]
add     ax, [ebx]
mov     si, ds:word_77E6CE
sub     eax, esi
mov     word ptr [esp+2Ch+var_26+2], ax
mov     eax, [esp+2Ch+var_18]
add     ax, [ebx+2]
mov     si, word ptr ds:dword_77E6CA+2
sub     eax, esi
mov     [esp+2Ch+var_22], ax
mov     esi, ds:dword_564A5A+2
sar     esi, 10h
mov     eax, [esp+2Ch+var_26]
sar     eax, 10h
cmp     esi, eax
jle     short loc_42CB18
mov     eax, [esp+2Ch+var_26+2]
sar     eax, 10h
cmp     ebp, eax
jge     short loc_42CB18
mov     ebp, eax

loc_42CB18:
add     ebx, 8
dec     edx
jnz     short loc_42CAB6
jmp     short loc_42CAAE

loc_42CB20:
mov     eax, ebp
add     esp, 1Ch
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_42C94A endp




sub_42CB2A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
test    eax, eax
jz      short loc_42CB42
xor     eax, eax
jmp     short loc_42CB4B

loc_42CB42:
mov     eax, [edx+114h]
sar     eax, 10h

loc_42CB4B:
xor     ecx, ecx
mov     cl, [edx+1]
mov     ebx, [edx+54h]
sar     ebx, 10h
sub     ebx, eax
add     ebx, 200h
sar     ebx, 0Ah
and     ebx, 3
mov     eax, [edx+78h]
lea     esi, [edx+14h]
mov     edx, eax
mov     eax, esi
call    sub_42CB99
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_42CB2A endp

db 90h
jpt_42CCDD dd offset loc_42CC4E ; jump table for switch statement
dd offset loc_42CCE4
dd offset loc_42CC4E
dd offset loc_42CCE4
jpt_42CD83 dd offset loc_42CD8A ; jump table for switch statement
dd offset loc_42CDC1
dd offset loc_42CDDF
dd offset loc_42CE1D



sub_42CB99 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 24h
push    edx
push    ebx
test    byte ptr [esp+38h+var_38], 2
jz      short loc_42CBAE
mov     ebp, 7FFFh
jmp     short loc_42CBB3

loc_42CBAE:
mov     ebp, 0FFFF8001h

loc_42CBB3:
mov     edi, (offset dword_564A5A+2)
mov     esi, eax
movsd
movsd
xor     edx, edx
mov     eax, (offset dword_564A5A+2)
call    sub_42DCD6
mov     [esp+38h+var_1C], eax
mov     eax, [esp+38h+var_34]
call    sub_42DE2A
mov     eax, ecx
call    sub_4DD420
test    eax, eax
jz      short loc_42CBE8
xor     ecx, ecx
mov     [esp+38h+var_18], ecx
jmp     short loc_42CBF0

loc_42CBE8:
mov     [esp+38h+var_18], 8000h

loc_42CBF0:
mov     ebx, [esp+38h+var_1C]
dec     ebx
mov     [esp+38h+var_1C], ebx
cmp     ebx, 0FFFFFFFFh
jz      loc_42CE3E
mov     eax, ds:dword_564A52[ebx*2]
sar     eax, 10h
call    sub_42C4AB
test    eax, eax
jle     short loc_42CBF0
mov     edx, eax
shl     edx, 2
sub     edx, eax
shl     edx, 2
mov     eax, (offset dword_6E40AA+2)
add     eax, edx
mov     ecx, [eax+8]
test    word ptr [eax+6], 0FFFh
jz      short loc_42CC36
mov     ecx, [ecx+4]
jmp     short loc_42CC39

loc_42CC36:
mov     ecx, [ecx+8]

loc_42CC39:
mov     di, [eax]
mov     dx, [eax+2]
mov     [esp+38h+var_10], edx
mov     ax, [eax+4]
mov     [esp+38h+var_14], eax
jmp     short loc_42CC73

loc_42CC4E:             ; jumptable 0042CCDD cases 0,2
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edx, [esp+38h+var_34+2]
sar     edx, 10h
cmp     eax, edx
jle     short loc_42CC70
mov     edx, [esp+38h+var_30]

loc_42CC65:
sar     edx, 10h
cmp     eax, edx
jl      def_42CCDD      ; jumptable 0042CCDD default case

loc_42CC70:
add     ecx, 10h

loc_42CC73:
cmp     dword ptr [ecx+8], 0
jz      loc_42CBF0
mov     ax, [ecx]
add     eax, edi
mov     bx, word ptr ds:dword_77E6C6
sub     eax, ebx
mov     word ptr [esp+38h+var_30], ax
mov     ax, [ecx+2]
add     eax, edi
mov     si, word ptr ds:dword_77E6C2+2
sub     eax, esi
mov     word ptr [esp+38h+var_30+2], ax
mov     eax, [esp+38h+var_14]
add     ax, [ecx+4]
mov     bx, word ptr ds:dword_77E6CA
sub     eax, ebx
mov     word ptr [esp+38h+var_2C], ax
mov     eax, [esp+38h+var_14]
add     ax, [ecx+6]
mov     dx, word ptr ds:dword_77E6C6+2
sub     eax, edx
mov     word ptr [esp+38h+var_2C+2], ax
mov     ebx, [ecx+8]
mov     edx, [esp+38h+var_38]
cmp     edx, 3          ; switch 4 cases
ja      short def_42CCDD ; jumptable 0042CCDD default case
mov     eax, edx
jmp     jpt_42CCDD[eax*4] ; switch jump

loc_42CCE4:             ; jumptable 0042CCDD cases 1,3
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+38h+var_30+2]
sar     edx, 10h
cmp     eax, edx
jle     loc_42CC70
mov     edx, [esp+38h+var_2C]
jmp     loc_42CC65

def_42CCDD:             ; jumptable 0042CCDD default case
mov     esi, [ecx+0Ch]

loc_42CD07:
xor     eax, eax
mov     ax, [ebx+6]
mov     [esp+38h+var_24], eax
mov     eax, [esp+38h+var_18]
xor     ah, 80h
and     eax, [esp+38h+var_24]
test    ah, 80h
jnz     def_42CD83      ; jumptable 0042CD83 default case
mov     eax, [esp+38h+var_10]
mov     dx, [ebx]
add     eax, edx
mov     word ptr [esp+38h+var_28], ax
mov     eax, [esp+38h+var_10]
mov     dx, [ebx+2]
add     eax, edx
mov     word ptr [esp+38h+var_28+2], ax
xor     edx, edx
mov     dx, [ebx+4]
lea     eax, [esp+38h+var_30]
call    sub_42D185
mov     edx, [esp+38h+var_2C+2]
sar     edx, 10h
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     edx, eax
jge     def_42CD83      ; jumptable 0042CD83 default case
mov     edx, [esp+38h+var_28]
sar     edx, 10h
cmp     eax, edx
jge     def_42CD83      ; jumptable 0042CD83 default case
mov     eax, [esp+38h+var_38]
cmp     eax, 3          ; switch 4 cases
ja      def_42CD83      ; jumptable 0042CD83 default case
jmp     jpt_42CD83[eax*4] ; switch jump

loc_42CD8A:             ; jumptable 0042CD83 case 0
mov     eax, [esp+38h+var_2C]
sar     eax, 10h
cmp     ebp, eax
jge     def_42CD83      ; jumptable 0042CD83 default case
mov     edx, ds:dword_564A5E
sar     edx, 10h
mov     [esp+38h+var_20], edx
mov     edx, [esp+38h+var_30+2]

loc_42CDAA:
sar     edx, 10h
mov     [esp+38h+var_24], edx
mov     edx, [esp+38h+var_20]
cmp     edx, [esp+38h+var_24]
jle     def_42CD83      ; jumptable 0042CD83 default case
jmp     short loc_42CE0C

loc_42CDC1:             ; jumptable 0042CD83 case 1
mov     eax, [esp+38h+var_30]
sar     eax, 10h
cmp     ebp, eax
jge     short def_42CD83 ; jumptable 0042CD83 default case
mov     edx, ds:dword_564A5A
sar     edx, 10h
mov     [esp+38h+var_20], edx
mov     edx, [esp+38h+var_34+2]
jmp     short loc_42CDAA

loc_42CDDF:             ; jumptable 0042CD83 case 2
mov     eax, [esp+38h+var_30+2]
sar     eax, 10h
cmp     ebp, eax
jle     short def_42CD83 ; jumptable 0042CD83 default case
mov     edx, ds:dword_564A5E
sar     edx, 10h
mov     [esp+38h+var_24], edx
mov     edx, [esp+38h+var_2C]
sar     edx, 10h
mov     [esp+38h+var_20], edx
mov     edx, [esp+38h+var_24]

loc_42CE06:
cmp     edx, [esp+38h+var_20]
jge     short def_42CD83 ; jumptable 0042CD83 default case

loc_42CE0C:
mov     ebp, eax

def_42CD83:             ; jumptable 0042CD83 default case
add     ebx, 8
dec     esi
jnz     loc_42CD07
jmp     loc_42CC70

loc_42CE1D:             ; jumptable 0042CD83 case 3
mov     eax, [esp+38h+var_34+2]
sar     eax, 10h
cmp     ebp, eax
jle     short def_42CD83 ; jumptable 0042CD83 default case
mov     edx, [esp+38h+var_30]
sar     edx, 10h
mov     [esp+38h+var_20], edx
mov     edx, ds:dword_564A5A
sar     edx, 10h
jmp     short loc_42CE06

loc_42CE3E:
mov     eax, ebp

loc_42CE40:
add     esp, 2Ch
pop     ebp
pop     edi
pop     esi
retn
sub_42CB99 endp




sub_42CE47 proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+1]
mov     ebx, [eax+78h]
lea     edx, [eax+2Ch]
add     eax, 14h
call    sub_42CE61
pop     edx
pop     ecx
pop     ebx
retn
sub_42CE47 endp




sub_42CE61 proc near

var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_26= dword ptr -26h
var_22= word ptr -22h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 20h
mov     edi, (offset dword_564A5A+2)
mov     esi, eax
movsd
movsd
mov     edi, (offset dword_564B2A+2)
mov     esi, edx
movsd
movsd
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edx, ds:dword_564B2A
sar     edx, 10h
xor     edx, eax
test    dh, 80h
jz      short loc_42CEAE
cmp     word ptr ds:dword_564A5A+2, 0
jge     short loc_42CE9D
neg     eax

loc_42CE9D:
cmp     eax, 4000h
jle     short loc_42CEAE

loc_42CEA4:
mov     eax, 80000000h
jmp     loc_42D0F4

loc_42CEAE:
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, ds:dword_564B2E
sar     edx, 10h
xor     edx, eax
test    dh, 80h
jz      short loc_42CED9
cmp     word ptr ds:dword_564A5E+2, 0
jge     short loc_42CED2
neg     eax

loc_42CED2:
cmp     eax, 4000h
jg      short loc_42CEA4

loc_42CED9:
mov     eax, (offset dword_564A5A+2)
call    sub_42C443
test    eax, eax
jnz     short loc_42CEF1
mov     eax, 40000000h
jmp     loc_42D0F4

loc_42CEF1:
mov     edx, 1
mov     eax, (offset dword_564A5A+2)
call    sub_42DCD6
mov     [esp+2Ch+var_1C], eax
mov     eax, ebx
call    sub_42DE2A
mov     eax, ecx
call    sub_4DD420
test    eax, eax
jz      short loc_42CF1E
xor     ecx, ecx
mov     [esp+2Ch+var_18], ecx
jmp     short loc_42CF26

loc_42CF1E:
mov     [esp+2Ch+var_18], 8000h

loc_42CF26:
mov     ebx, [esp+2Ch+var_1C]
dec     ebx
mov     [esp+2Ch+var_1C], ebx
cmp     ebx, 0FFFFFFFFh
jz      loc_42D0F2
lea     edi, [ebx+ebx]
mov     eax, ds:dword_564A52[edi]
sar     eax, 10h
call    sub_42C4AB
mov     ecx, eax
mov     [esp+2Ch+var_20], eax
test    eax, eax
jg      loc_42CFD8
mov     edx, ds:dword_564A52[edi]
sar     edx, 10h
mov     eax, (offset dword_564A5A+2)
call    sub_42C3E5
cmp     edx, eax
jnz     short loc_42CF26
mov     ebx, ecx
and     ebx, 1F00h
sar     ebx, 1
neg     ebx
mov     eax, ds:dword_77E6CA+2
sar     eax, 10h
inc     eax
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, ds:dword_564A5A+2
sar     edx, 10h
mov     esi, ecx
and     esi, 0FFFFh
cmp     edx, eax
jle     short loc_42CFA5

loc_42CF9E:
mov     eax, esi
jmp     loc_42D0F4

loc_42CFA5:
test    ch, 60h
jz      loc_42CF26
and     ecx, 6000h
sar     ecx, 0Dh
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 7
sub     ebx, eax
mov     eax, ds:dword_77E6CA
sar     eax, 10h
dec     eax
sub     ebx, eax
cmp     edx, ebx
jge     loc_42CF26
jmp     short loc_42CF9E

loc_42CFD8:
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, (offset dword_6E40AA+2)
mov     ecx, [eax+8]
test    word ptr [eax+6], 0FFFh
jz      short loc_42CFF5
mov     ecx, [ecx+4]
jmp     short loc_42CFF8

loc_42CFF5:
mov     ecx, [ecx+8]

loc_42CFF8:
mov     dx, [eax]
mov     [esp+2Ch+var_14], edx
mov     di, [eax+2]
mov     ax, [eax+4]
mov     [esp+2Ch+var_10], eax

loc_42D00B:
cmp     dword ptr [ecx+8], 0
jz      loc_42CF26
mov     eax, [esp+2Ch+var_14]
mov     dx, [ecx]
add     eax, edx
mov     [esp+2Ch+var_2C], ax
mov     eax, [esp+2Ch+var_14]
mov     bx, [ecx+2]
add     eax, ebx
mov     [esp+2Ch+var_2A], ax
mov     eax, [esp+2Ch+var_10]
mov     si, [ecx+4]
add     eax, esi
mov     [esp+2Ch+var_28], ax
mov     eax, [esp+2Ch+var_10]
mov     dx, [ecx+6]
add     eax, edx
mov     word ptr [esp+2Ch+var_26], ax
mov     ebx, [ecx+8]
xor     edx, edx
mov     dx, [ebx+4]
cmp     edx, 100h
jnb     short loc_42D07A
mov     esi, edx
and     esi, 0F0h
shr     esi, 4
shl     esi, 2
mov     eax, esp
call    ds:funcs_42C6FC[esi]
test    eax, eax
jnz     short loc_42D07F

loc_42D07A:
add     ecx, 10h
jmp     short loc_42D00B

loc_42D07F:
mov     esi, [ecx+0Ch]

loc_42D082:
movzx   ebp, word ptr [ebx+6]
mov     eax, [esp+2Ch+var_18]
xor     ah, 80h
and     eax, ebp
test    ah, 80h
jnz     short loc_42D0EA
mov     ax, [ebx]
add     eax, edi
mov     word ptr [esp+2Ch+var_26+2], ax
mov     ax, [ebx+2]
add     eax, edi
mov     [esp+2Ch+var_22], ax
xor     edx, edx
mov     dx, [ebx+4]
mov     eax, esp
call    sub_42D185
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, [esp+2Ch+var_26]
sar     edx, 10h
cmp     eax, edx
jle     short loc_42D0EA
mov     edx, [esp+2Ch+var_26+2]
sar     edx, 10h
cmp     eax, edx
jge     short loc_42D0EA
mov     eax, ebp
and     eax, 0Fh
shl     eax, 10h
mov     edx, [esp+2Ch+var_20]
and     edx, 0FFFFh
or      eax, edx
jmp     short loc_42D0F4

loc_42D0EA:
add     ebx, 8
dec     esi
jnz     short loc_42D082
jmp     short loc_42D07A

loc_42D0F2:
xor     eax, eax

loc_42D0F4:
add     esp, 20h
pop     ebp
pop     edi
pop     esi
retn
sub_42CE61 endp

db 8Bh, 0C0h
byte_42D0FD db 4Dh, 4Ch, 3Dh
dd 1D2C2D3Ch, 1112131Ch, 90A0B10h, 4050608h
dd 10203h
jpt_42D1F4 dd offset def_42D5DE ; jump table for switch statement
dd offset loc_42D1FB
dd offset loc_42D275
dd offset loc_42D2EE
dd offset loc_42D364
dd offset loc_42D3E0
dd offset loc_42D497
dd offset loc_42D54E
dd offset loc_42D1FB
dd offset loc_42D275
dd offset loc_42D2EE
dd offset loc_42D364
dd offset loc_42D6BF
dd offset loc_42D73F
dd offset loc_42D7CD
dd offset loc_42D83D
dd offset loc_42D6BF
dd offset loc_42D6F8
dd offset loc_42D73F
dd offset loc_42D784
dd offset loc_42D7CD
dd offset loc_42D803
dd offset loc_42D83D
dd offset loc_42D877
db 90h
jpt_42D5DE dd offset loc_42D5E5 ; jump table for switch statement
dd offset loc_42D61A
dd offset loc_42D651
dd offset loc_42D686



sub_42D185 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ebx, eax
mov     word ptr [esp+34h+var_18], dx
xor     edx, edx
mov     [esp+34h+var_28], edx
movsx   eax, word ptr [eax]
mov     [esp+34h+var_20], eax
mov     eax, [ebx]
sar     eax, 10h
mov     [esp+34h+var_24], eax
mov     eax, [ebx+2]
sar     eax, 10h
mov     [esp+34h+var_2C], eax
mov     eax, [ebx+4]
sar     eax, 10h
mov     [esp+34h+var_30], eax
mov     esi, [ebx+6]
sar     esi, 10h
mov     ebp, [ebx+8]
sar     ebp, 10h
mov     [esp+34h+var_1C], edx
mov     [esp+34h+var_34], esi
xor     ah, ah
mov     byte ptr [esp+34h+var_18+1], ah
mov     eax, [esp+34h+var_18]
sub     eax, 8
cmp     ax, 4Dh ; 'M'
ja      def_42D5DE      ; jumptable 0042D1F4 case 0
; jumptable 0042D5DE default case
mov     ecx, 18h
mov     edi, offset byte_42D0FD
repne scasb
jmp     jpt_42D1F4[ecx*4] ; switch 24 cases

loc_42D1FB:             ; jumptable 0042D1F4 cases 1,8
mov     eax, ds:dword_77E6C6+2
sar     eax, 10h
mov     edx, ds:dword_77E6C6
sar     edx, 10h
sub     eax, edx
mov     edx, ebp
sub     edx, esi
imul    edx, eax
mov     ecx, [esp+34h+var_30]
sub     ecx, [esp+34h+var_2C]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
sub     esi, eax
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+34h+var_30]
sub     edx, eax
mov     eax, ebp
sub     eax, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
lea     edx, [esi+eax]
mov     [esp+34h+var_1C], edx
mov     eax, edx
mov     edx, [esp+34h+var_34]
cmp     eax, edx
jge     short loc_42D256
mov     [esp+34h+var_1C], edx

loc_42D256:
sub     ebp, esi
mov     eax, [esp+34h+var_30]
sub     eax, [esp+34h+var_2C]
cmp     ebp, eax

loc_42D262:             ; jumptable 0042D1F4 case 0
jle     def_42D5DE      ; jumptable 0042D5DE default case

loc_42D268:
mov     [esp+34h+var_28], 1
jmp     def_42D5DE      ; jumptable 0042D1F4 case 0
; jumptable 0042D5DE default case

loc_42D275:             ; jumptable 0042D1F4 cases 2,9
mov     edx, ds:dword_77E6C6+2
sar     edx, 10h
mov     eax, ds:dword_77E6C6
sar     eax, 10h
sub     edx, eax
mov     eax, ebp
sub     eax, esi
imul    edx, eax
mov     ecx, [esp+34h+var_30]
sub     ecx, [esp+34h+var_2C]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
sub     esi, eax
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     edx, [esp+34h+var_2C]
mov     eax, ebp
sub     eax, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
lea     edx, [esi+eax]
mov     [esp+34h+var_1C], edx
mov     eax, edx
mov     edx, [esp+34h+var_34]
cmp     eax, edx
jge     short loc_42D2CF
mov     [esp+34h+var_1C], edx

loc_42D2CF:
sub     ebp, esi
mov     eax, [esp+34h+var_30]
sub     eax, [esp+34h+var_2C]
cmp     ebp, eax

loc_42D2DB:             ; jumptable 0042D1F4 case 0
jle     def_42D5DE      ; jumptable 0042D5DE default case

loc_42D2E1:
mov     [esp+34h+var_28], 2
jmp     def_42D5DE      ; jumptable 0042D1F4 case 0
; jumptable 0042D5DE default case

loc_42D2EE:             ; jumptable 0042D1F4 cases 3,10
mov     eax, ds:dword_77E6C2+2
sar     eax, 10h
mov     edx, ds:dword_77E6C2
sar     edx, 10h
sub     eax, edx
mov     edx, ebp
sub     edx, esi
imul    edx, eax
mov     ecx, [esp+34h+var_24]
mov     edi, [esp+34h+var_20]
sub     ecx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
sub     esi, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, edi
mov     edx, ebp
sub     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
lea     edx, [esi+eax]
mov     [esp+34h+var_1C], edx
mov     ecx, [esp+34h+var_34]
cmp     edx, ecx
jge     short loc_42D345
mov     [esp+34h+var_1C], ecx

loc_42D345:
sub     ebp, esi
mov     eax, [esp+34h+var_24]
sub     eax, [esp+34h+var_20]
cmp     ebp, eax

loc_42D351:             ; jumptable 0042D1F4 case 0
jle     def_42D5DE      ; jumptable 0042D5DE default case

loc_42D357:
mov     [esp+34h+var_28], 3
jmp     def_42D5DE      ; jumptable 0042D1F4 case 0
; jumptable 0042D5DE default case

loc_42D364:             ; jumptable 0042D1F4 cases 4,11
mov     edx, ds:dword_77E6C2+2
sar     edx, 10h
mov     eax, ds:dword_77E6C2
sar     eax, 10h
sub     edx, eax
mov     eax, ebp
sub     eax, esi
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
sub     esi, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edx, [esp+34h+var_24]
sub     edx, eax
mov     eax, edx
mov     edx, ebp
sub     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
lea     edx, [esi+eax]
mov     [esp+34h+var_1C], edx
mov     eax, edx
mov     edx, [esp+34h+var_34]
cmp     eax, edx
jge     short loc_42D3C1
mov     [esp+34h+var_1C], edx

loc_42D3C1:
sub     ebp, esi
mov     eax, [esp+34h+var_24]
sub     eax, [esp+34h+var_20]
cmp     ebp, eax

loc_42D3CD:             ; jumptable 0042D1F4 case 0
jle     def_42D5DE      ; jumptable 0042D5DE default case

loc_42D3D3:
mov     [esp+34h+var_28], 4
jmp     def_42D5DE      ; jumptable 0042D1F4 case 0
; jumptable 0042D5DE default case

loc_42D3E0:             ; jumptable 0042D1F4 case 5
mov     eax, ds:dword_77E6C6+2
sar     eax, 10h
mov     edx, ds:dword_77E6C6
sar     edx, 10h
sub     eax, edx
mov     edx, ebp
sub     edx, esi
imul    edx, eax
mov     ecx, [esp+34h+var_30]
mov     edi, [esp+34h+var_2C]
sub     ecx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     edx, esi
sub     edx, ebp
add     edx, esi
sub     edx, eax
mov     [esp+34h+var_1C], edx
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
add     edi, eax
mov     edx, ds:dword_564A5E
sar     edx, 10h
mov     eax, [esp+34h+var_1C]
sub     ebp, eax
mov     eax, ebp
cmp     edx, edi
jle     short loc_42D466
sub     edx, [esp+34h+var_2C]
imul    edx, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, [esp+34h+var_1C]
mov     [ebx+8], ax
mov     eax, [ebx+6]
sar     eax, 10h
cmp     eax, esi
jge     loc_42D2E1
mov     [ebx+8], si
jmp     loc_42D2E1

loc_42D466:
mov     edi, [esp+34h+var_30]
sub     edi, edx
mov     edx, edi
imul    edx, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, [esp+34h+var_1C]
mov     [ebx+8], ax
mov     eax, [ebx+6]
sar     eax, 10h
cmp     eax, esi
jge     loc_42D268
mov     [ebx+8], si
jmp     loc_42D268

loc_42D497:             ; jumptable 0042D1F4 case 6
mov     eax, ds:dword_77E6C2+2
sar     eax, 10h
mov     edx, ds:dword_77E6C2
sar     edx, 10h
sub     eax, edx
mov     edx, ebp
sub     edx, esi
imul    edx, eax
mov     ecx, [esp+34h+var_24]
mov     edi, [esp+34h+var_20]
sub     ecx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     edx, esi
sub     edx, ebp
add     edx, esi
sub     edx, eax
mov     [esp+34h+var_1C], edx
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
add     edi, eax
mov     edx, ds:dword_564A5A
sar     edx, 10h
mov     eax, [esp+34h+var_1C]
sub     ebp, eax
mov     eax, ebp
cmp     edx, edi
jle     short loc_42D51D
sub     edx, [esp+34h+var_20]
imul    edx, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, [esp+34h+var_1C]
mov     [ebx+8], ax
mov     eax, [ebx+6]
sar     eax, 10h
cmp     eax, esi
jge     loc_42D357
mov     [ebx+8], si
jmp     loc_42D357

loc_42D51D:
mov     edi, [esp+34h+var_24]
sub     edi, edx
mov     edx, edi
imul    edx, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, [esp+34h+var_1C]
mov     [ebx+8], ax
mov     eax, [ebx+6]
sar     eax, 10h
cmp     eax, esi
jge     loc_42D3D3
mov     [ebx+8], si
jmp     loc_42D3D3

loc_42D54E:             ; jumptable 0042D1F4 case 7
mov     eax, esi
sub     eax, ebp
lea     edx, [esi+eax]
mov     [esp+34h+var_1C], edx
xor     ecx, ecx
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, [esp+34h+var_2C]
mov     edx, [esp+34h+var_24]
sub     edx, [esp+34h+var_20]
imul    edx, eax
mov     edi, [esp+34h+var_30]
sub     edi, [esp+34h+var_2C]
mov     eax, edx
sar     edx, 1Fh
idiv    edi
add     eax, [esp+34h+var_20]
mov     edx, ds:dword_564A5A
sar     edx, 10h
cmp     edx, eax
jge     short loc_42D597
mov     ecx, 2

loc_42D597:
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+34h+var_30]
sub     edx, eax
mov     eax, edx
mov     edx, [esp+34h+var_24]
sub     edx, [esp+34h+var_20]
imul    edx, eax
mov     edi, [esp+34h+var_30]
sub     edi, [esp+34h+var_2C]
mov     eax, edx
sar     edx, 1Fh
idiv    edi
add     eax, [esp+34h+var_20]
mov     edx, ds:dword_564A5A
sar     edx, 10h
cmp     edx, eax
jge     short loc_42D5D5
or      cl, 1

loc_42D5D5:             ; switch 4 cases
cmp     ecx, 3
ja      def_42D5DE      ; jumptable 0042D1F4 case 0
; jumptable 0042D5DE default case
jmp     jpt_42D5DE[ecx*4] ; switch jump

loc_42D5E5:             ; jumptable 0042D5DE case 0
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edi, [esp+34h+var_20]
sub     eax, edi
mov     edx, ebp
sub     edx, [esp+34h+var_1C]
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, [esp+34h+var_1C]
mov     [ebx+8], ax
sub     ebp, esi
cmp     ebp, ecx
jmp     loc_42D351

loc_42D61A:             ; jumptable 0042D5DE case 1
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+34h+var_30]
sub     edx, eax
mov     eax, ebp
mov     edi, [esp+34h+var_1C]
sub     eax, edi
imul    edx, eax
mov     ecx, [esp+34h+var_30]
sub     ecx, [esp+34h+var_2C]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, edi
mov     [ebx+8], ax
sub     ebp, esi
cmp     ebp, ecx
jmp     loc_42D262

loc_42D651:             ; jumptable 0042D5DE case 2
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edi, [esp+34h+var_2C]
sub     eax, edi
mov     edx, ebp
sub     edx, [esp+34h+var_1C]
imul    edx, eax
mov     ecx, [esp+34h+var_30]
sub     ecx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, [esp+34h+var_1C]
mov     [ebx+8], ax
sub     ebp, esi
cmp     ebp, ecx
jmp     loc_42D2DB

loc_42D686:             ; jumptable 0042D5DE case 3
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edx, [esp+34h+var_24]
sub     edx, eax
mov     eax, edx
mov     edx, ebp
sub     edx, [esp+34h+var_1C]
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, [esp+34h+var_1C]
mov     [ebx+8], ax
sub     ebp, esi
cmp     ebp, ecx
jmp     loc_42D3CD

loc_42D6BF:             ; jumptable 0042D1F4 cases 12,16
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+34h+var_30]
sub     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, [esp+34h+var_20]
add     eax, edx
mov     edx, ebp
sub     edx, esi
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, esi
jmp     loc_42D8AE

loc_42D6F8:             ; jumptable 0042D1F4 case 17
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+34h+var_30]
sub     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, [esp+34h+var_20]
add     edx, eax
mov     eax, ebp
sub     eax, esi
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
sub     ebp, eax
mov     eax, ebp

loc_42D72E:
mov     [ebx+8], ax
mov     [esp+34h+var_28], 6
jmp     def_42D5DE      ; jumptable 0042D1F4 case 0
; jumptable 0042D5DE default case

loc_42D73F:             ; jumptable 0042D1F4 cases 13,18
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+34h+var_30]
sub     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     ecx, [esp+34h+var_24]
sub     ecx, eax
add     edx, ecx
sub     ebp, esi
imul    edx, ebp
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, esi

loc_42D773:
mov     [ebx+8], ax
mov     [esp+34h+var_28], 7
jmp     def_42D5DE      ; jumptable 0042D1F4 case 0
; jumptable 0042D5DE default case

loc_42D784:             ; jumptable 0042D1F4 case 19
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+34h+var_30]
sub     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     ecx, [esp+34h+var_24]
sub     ecx, eax
add     edx, ecx
mov     eax, ebp
sub     eax, esi
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
sub     ebp, eax
mov     eax, ebp

loc_42D7BC:
mov     [ebx+8], ax
mov     [esp+34h+var_28], 8
jmp     def_42D5DE      ; jumptable 0042D1F4 case 0
; jumptable 0042D5DE default case

loc_42D7CD:             ; jumptable 0042D1F4 cases 14,20
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+34h+var_2C]
sub     eax, edx
mov     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, [esp+34h+var_20]
add     edx, eax
sub     ebp, esi
imul    edx, ebp
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, esi
jmp     short loc_42D7BC

loc_42D803:             ; jumptable 0042D1F4 case 21
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     edx, [esp+34h+var_2C]
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edi, [esp+34h+var_20]
sub     eax, edi
add     edx, eax
mov     eax, ebp
sub     eax, esi
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
sub     ebp, eax
mov     eax, ebp
jmp     loc_42D773

loc_42D83D:             ; jumptable 0042D1F4 cases 15,22
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, [esp+34h+var_2C]
mov     edx, ds:dword_564A5A
sar     edx, 10h
mov     ecx, [esp+34h+var_24]
sub     ecx, edx
add     eax, ecx
mov     edx, ebp
sub     edx, esi
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     eax, esi
jmp     loc_42D72E

loc_42D877:             ; jumptable 0042D1F4 case 23
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     edx, [esp+34h+var_2C]
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     ecx, [esp+34h+var_24]
sub     ecx, eax
add     edx, ecx
mov     eax, ebp
sub     eax, esi
imul    edx, eax
mov     ecx, [esp+34h+var_24]
sub     ecx, [esp+34h+var_20]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
sub     ebp, eax
mov     eax, ebp

loc_42D8AE:
mov     [ebx+8], ax
mov     [esp+34h+var_28], 5

def_42D5DE:             ; jumptable 0042D1F4 case 0
mov     edx, [esp+34h+var_18] ; jumptable 0042D5DE default case
cmp     dx, 7
jbe     short loc_42D8D2
cmp     dx, 0Ch
jnb     short loc_42D8D2
mov     eax, [esp+34h+var_1C]
mov     [ebx+8], ax

loc_42D8D2:
mov     esi, [esp+34h+var_18]
cmp     si, 0Fh
jbe     short loc_42D8EA
cmp     si, 14h
jnb     short loc_42D8EA
mov     eax, [esp+34h+var_1C]
mov     [ebx+0Ah], ax

loc_42D8EA:
mov     ax, ds:word_77E6CE
sub     [ebx+8], ax
mov     ax, word ptr ds:dword_77E6CA+2
sub     [ebx+0Ah], ax
mov     al, byte ptr [esp+34h+var_28]
mov     byte ptr ds:dword_77EABA+3, al

loc_42D907:
add     esp, 20h
jmp     loc_43003D
sub_42D185 endp




sub_42D90F proc near

var_18= word ptr -18h
var_14= word ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 8
xor     ecx, ecx
test    dh, 3
jz      loc_42DA07
test    dh, 0Ch
jz      loc_42DA07
mov     ecx, 1
mov     edi, esp
mov     esi, eax
movsd
movsd
test    dh, 1
jz      loc_42D9BD
test    dh, 4
jz      short loc_42D97D
cmp     [esp+18h+var_14], 0
jge     short loc_42D956
mov     ebx, [esp+2]
sar     ebx, 10h
neg     ebx
jmp     short loc_42D95D

loc_42D956:
mov     ebx, [esp+2]
sar     ebx, 10h

loc_42D95D:
neg     ebx

loc_42D95F:
mov     [eax], bx
cmp     [esp+18h+var_18], 0
jge     short loc_42D974
mov     ebx, [esp-2]
sar     ebx, 10h
neg     ebx
jmp     short loc_42D9AA

loc_42D974:
mov     ebx, [esp-2]

loc_42D978:
sar     ebx, 10h
jmp     short loc_42D9AA

loc_42D97D:
cmp     [esp+18h+var_14], 0
jge     short loc_42D990
mov     ebx, [esp+2]
sar     ebx, 10h
neg     ebx
jmp     short loc_42D997

loc_42D990:
mov     ebx, [esp+2]
sar     ebx, 10h

loc_42D997:
neg     ebx
mov     [eax], bx
cmp     [esp+18h+var_18], 0
jge     short loc_42D9B1
mov     ebx, [esp-2]
sar     ebx, 10h

loc_42D9AA:
neg     ebx
jmp     loc_42DA81

loc_42D9B1:
mov     ebx, [esp-2]
sar     ebx, 10h
jmp     loc_42DA81

loc_42D9BD:
test    dh, 4
jz      short loc_42D9DE
cmp     [esp+18h+var_14], 0
jge     short loc_42D9D5
mov     ebx, [esp+2]
sar     ebx, 10h
neg     ebx
jmp     short loc_42D95F

loc_42D9D5:
mov     ebx, [esp+2]
sar     ebx, 10h
jmp     short loc_42D95F

loc_42D9DE:
cmp     [esp+18h+var_14], 0
jge     short loc_42D9F1
mov     ebx, [esp+2]
sar     ebx, 10h
neg     ebx
jmp     short loc_42D9F8

loc_42D9F1:
mov     ebx, [esp+2]
sar     ebx, 10h

loc_42D9F8:
mov     [eax], bx
cmp     [esp+18h+var_18], 0
jge     short loc_42D9B1
jmp     loc_42D974

loc_42DA07:
test    dh, 3
jz      short loc_42DA3F
mov     ecx, 1
test    dh, 1
jz      short loc_42DA2A
mov     si, [eax]
test    si, si
jge     short loc_42DA25
movsx   ebx, si
neg     ebx
jmp     short loc_42DA35

loc_42DA25:
movsx   ebx, si
jmp     short loc_42DA35

loc_42DA2A:
mov     bx, [eax]
test    bx, bx
jge     short loc_42DA39
movsx   ebx, bx

loc_42DA35:
neg     ebx
jmp     short loc_42DA3C

loc_42DA39:
movsx   ebx, bx

loc_42DA3C:
mov     [eax], bx

loc_42DA3F:
test    dh, 0Ch
jz      short loc_42DA85
mov     ecx, 1
test    dh, 4
jz      short loc_42DA6A
cmp     word ptr [eax+4], 0
jge     short loc_42DA62
mov     ebx, [eax+2]
sar     ebx, 10h
neg     ebx
jmp     loc_42D9AA

loc_42DA62:
mov     ebx, [eax+2]
jmp     loc_42D978

loc_42DA6A:
cmp     word ptr [eax+4], 0
jge     short loc_42DA7B
mov     ebx, [eax+2]
sar     ebx, 10h
neg     ebx
jmp     short loc_42DA81

loc_42DA7B:
mov     ebx, [eax+2]
sar     ebx, 10h

loc_42DA81:
mov     [eax+4], bx

loc_42DA85:
test    dh, 30h
jz      short loc_42DAC4
mov     ecx, 1
test    dh, 10h
jz      short loc_42DAAB
cmp     word ptr [eax+2], 0
jge     short loc_42DAA4
mov     edx, [eax]
sar     edx, 10h
neg     edx
jmp     short loc_42DAB7

