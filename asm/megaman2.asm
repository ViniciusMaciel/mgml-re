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
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ecx+14h]
lea     eax, [esi+14h]
mov     ecx, 40h ; '@'
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
cmp     dword ptr [edi+64h], 5AAh
jbe     short loc_41AE34
or      byte ptr [edi], 1
and     byte ptr [edi+1], 0FBh

loc_41AE34:
inc     dword ptr [edi+64h]
jmp     loc_41A966
sub_41AD73 endp

db 90h
jpt_41AE74 dd offset loc_41AE7B ; jump table for switch statement
dd offset loc_41AF41
dd offset loc_41B07C
dd offset def_41AE74



sub_41AE4D proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     edi, [eax+430h]
mov     [esp+1Ch+var_1C], offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_41AE74      ; jumptable 0041AE74 default case, case 3
xor     edx, edx
mov     dl, al
jmp     jpt_41AE74[edx*4] ; switch jump

loc_41AE7B:             ; jumptable 0041AE74 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 3
mov     word ptr [esi+44h], 180h
mov     word ptr [esi+4Ch], 40h ; '@'
or      byte ptr [edi+1], 2
mov     word ptr [edi+4], 0
mov     word ptr [edi+6], 0
mov     word ptr [edi+0DAh], 45Fh
and     byte ptr [edi+1], 0FBh
add     dword ptr [edi+0E0h], 2
mov     ax, word ptr ds:dword_510560+2
mov     [esi+14h], ax
mov     ax, word ptr ds:unk_510564
mov     [esi+16h], ax
mov     ax, ds:word_510566
mov     [esi+18h], ax
mov     eax, ds:dword_510560
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, ds:dword_510560+2
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, dword ptr ds:unk_510564
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     ax, ds:word_510568
mov     [esi+56h], ax
mov     byte ptr [esi+0FBh], 0FFh
mov     byte ptr [esi+0FFh], 0FFh
mov     byte ptr [esi+107h], 0FFh
mov     byte ptr [esi+10Bh], 0FFh
mov     byte ptr [esi+10Fh], 0FFh
mov     byte ptr [esi+113h], 0FFh
mov     byte ptr [esi+117h], 0FFh
mov     byte ptr [esi+11Bh], 0FFh

loc_41AF41:             ; jumptable 0041AE74 case 1
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 5
sub     eax, 40h ; '@'
mov     edx, offset unk_51056A
add     edx, eax
mov     eax, [edi+2]
sar     eax, 10h
shl     eax, 3
add     edx, eax
mov     [edi+0D4h], edx
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     ebp, [esi+14h]
mov     ecx, 40h ; '@'
mov     eax, ebp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, ebp
call    sub_4DD6C5
cmp     eax, offset unk_800000
jge     short loc_41AFAF
mov     dx, [esi+44h]
test    dx, dx
jz      short loc_41AFC5
mov     ebx, edx
sub     ebx, 40h ; '@'
mov     [esi+44h], bx
jmp     short loc_41AFC5

loc_41AFAF:
mov     cx, [esi+44h]
cmp     cx, 300h
jge     short loc_41AFC5
mov     eax, ecx
add     eax, 20h ; ' '
mov     [esi+44h], ax

loc_41AFC5:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, [edi+0D4h]
movsx   edx, word ptr [eax]
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     edx, 200h
sub     ebx, edx
mov     edx, ebx
mov     eax, [eax+2]
sar     eax, 10h
mov     ebx, [esi+16h]
sar     ebx, 10h
sub     eax, 200h
sub     ebx, eax
cmp     edx, 400h
jnb     short loc_41B04D
cmp     ebx, 400h
jnb     short loc_41B04D
inc     word ptr [edi+4]
mov     eax, [edi+0D4h]
cmp     word ptr [eax+0Eh], 0
jge     def_41AE74      ; jumptable 0041AE74 default case, case 3
add     eax, 8
mov     [edi+0D4h], eax
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Bh], 0
xor     eax, eax
mov     al, [esi+0Bh]
mov     ax, ds:word_5105AA[eax*8]
mov     [edi+4], ax
jmp     def_41AE74      ; jumptable 0041AE74 default case, case 3

loc_41B04D:
cmp     word ptr [edi+4], 2
jnz     def_41AE74      ; jumptable 0041AE74 default case, case 3
cmp     word ptr [edi+6], 0
jnz     short loc_41B066
mov     eax, esi
call    sub_41BB8F

loc_41B066:
mov     ax, [edi+6]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     [edi+6], ax
or      byte ptr [edi+1], 4
jmp     def_41AE74      ; jumptable 0041AE74 default case, case 3

loc_41B07C:             ; jumptable 0041AE74 case 2
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [edi+0D4h]
lea     ebp, [esi+14h]
mov     ecx, 40h ; '@'
mov     eax, ebp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [edi+0D4h]
mov     eax, ebp
call    sub_4DD6C5
cmp     eax, 20000h
jge     short loc_41B0CA
mov     ax, [esi+44h]
test    ax, ax
jz      short loc_41B0DE
mov     edx, eax
sub     edx, 40h ; '@'
mov     [esi+44h], dx
jmp     short loc_41B0DE

loc_41B0CA:
mov     bx, [esi+44h]
cmp     bx, 300h
jge     short loc_41B0DE
mov     ecx, ebx
add     ecx, 20h ; ' '
mov     [esi+44h], cx

loc_41B0DE:
cmp     word ptr [esi+44h], 0
jz      short loc_41B0F6
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B

loc_41B0F6:
cmp     byte ptr [esi+0Bh], 4
jz      short loc_41B11B
sub     word ptr [edi+0DAh], 20h ; ' '
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 0Fh
cmp     ax, 8
jnb     short loc_41B11B
mov     eax, esi
call    sub_41BD4B

loc_41B11B:
cmp     byte ptr [esi+0Bh], 4
jz      short loc_41B173
mov     ax, [edi+4]
dec     ax
mov     [edi+4], ax
jnz     short loc_41B173
xor     edx, edx

loc_41B12F:
xor     eax, eax
mov     al, [esi+0Bh]
shl     eax, 3
add     eax, edx
mov     ch, ds:byte_5105AC[eax]
cmp     ch, 0FFh
jz      short loc_41B156
mov     al, ch
and     eax, 0FFh
mov     byte ptr [esi+eax*4+0FBh], 0
inc     edx
jmp     short loc_41B12F

loc_41B156:
mov     al, [esi+0Bh]
inc     al
mov     [esi+0Bh], al
cmp     al, 4
jnb     short loc_41B173
xor     eax, eax
mov     al, [esi+0Bh]
mov     ax, ds:word_5105AA[eax*8]
mov     [edi+4], ax

loc_41B173:
cmp     word ptr [esi+44h], 0
jnz     short def_41AE74 ; jumptable 0041AE74 default case, case 3
cmp     byte ptr [esi+0Bh], 4
jnz     short def_41AE74 ; jumptable 0041AE74 default case, case 3
inc     byte ptr [esi+0Ah]
or      byte ptr [edi], 1
add     dword ptr [edi+0E0h], 2

def_41AE74:             ; jumptable 0041AE74 default case, case 3
inc     dword ptr [edi+64h]
jmp     loc_41A962
sub_41AE4D endp




sub_41B195 proc near
push    edx
xor     edx, edx
mov     dl, [eax+43Eh]
mov     word ptr [eax+edx*8+4D8h], 0
mov     word ptr [eax+edx*8+4DAh], 0
inc     byte ptr [eax+edx*8+4D4h]
pop     edx
retn
sub_41B195 endp




sub_41B1BB proc near

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
sub     esp, 10h
push    eax
lea     esi, [eax+430h]
mov     [esp+2Ch+var_20], offset byte_5F8364
xor     eax, eax
mov     al, [esi+0Eh]
shl     eax, 3
lea     ebp, [esi+0A4h]
add     ebp, eax
mov     dl, [ebp+1]
test    dl, dl
jbe     short loc_41B1F4
cmp     dl, 1
jz      short loc_41B222
jmp     loc_41B414

loc_41B1F4:
inc     dl
mov     [ebp+1], dl
mov     ax, [esi+2]
xor     ah, ah
and     al, 7
and     eax, 0FFFFh
movsx   ax, ds:byte_5105CA[eax]
mov     [ebp+6], ax
mov     byte ptr [ebp+2], 0
call    rand_
and     al, 1Fh
add     al, 10h
mov     [ebp+3], al

loc_41B222:
mov     ah, [ebp+2]
test    ah, ah
jz      short loc_41B230
mov     dl, ah
dec     dl
mov     [ebp+2], dl

loc_41B230:
mov     dh, [ebp+3]
test    dh, dh
jnz     loc_41B40D
mov     edx, [ebp+2]
sar     edx, 10h
mov     eax, [ebp+4]
sar     eax, 10h
add     eax, edx
add     eax, 190h
and     eax, 0FFFh
cmp     eax, 320h
jge     loc_41B407
mov     dx, [ebp+4]
add     dx, [ebp+6]
and     dh, 0Fh
mov     [ebp+4], dx
mov     ebx, [esp+2Ch+var_2C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, [ebp+2]
sar     edx, 10h
add     ebx, edx
add     ebx, 800h
and     ebx, 0FFFh
mov     eax, [esp+2Ch+var_20]
add     eax, 14h
mov     [esp+2Ch+var_24], eax
xor     eax, eax
mov     al, [esi+0Eh]
mov     edx, 8
sub     edx, eax
mov     eax, edx
shl     eax, 3
mov     edx, [esp+2Ch+var_2C]
add     edx, 190h
add     eax, edx
mov     ecx, 800h
mov     edx, [esp+2Ch+var_24]
call    sub_4DE552
cmp     byte ptr [ebp+2], 0
jnz     loc_41B414
cwde
cmp     eax, 0FFFFFF60h
jle     loc_41B414
cmp     eax, 0FFFFFFE0h
jge     loc_41B414
call    sub_4DE043
mov     [esp+2Ch+var_1C], eax
mov     [esp+2Ch+var_28], eax
test    eax, eax
jz      loc_41B414
mov     byte ptr [ebp+2], 14h
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+3], 80h
xor     eax, eax
mov     al, [esi+0Eh]
mov     edx, 8
sub     edx, eax
mov     eax, edx
mov     esi, [esp+2Ch+var_2C]
mov     edi, [esp+2Ch+var_1C]
lea     edi, [edi+14h]
lea     esi, [esi+eax*8+190h]
movsd
movsd
mov     eax, [esp+2Ch+var_1C]
mov     eax, [eax+12h]
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+2Ch+var_1C]
mov     [edx+1Ch], eax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
mov     edx, [esp+2Ch+var_2C]
mov     dx, [edx+56h]
add     dx, [ebp+4]
add     dh, 8
mov     eax, edx
and     ah, 0Fh
mov     edx, [esp+2Ch+var_1C]
mov     [edx+64h], ax
mov     eax, ds:dword_5105D4
sar     eax, 10h
shl     eax, 4
push    eax
mov     eax, ds:dword_5105D0+2
sar     eax, 10h
shl     eax, 4
push    eax
mov     ecx, ds:dword_5105D0
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [edx+62h]
sar     ebx, 10h
add     edx, 1Ch
mov     eax, [esp+34h+var_1C]
add     eax, 14h
call    sub_4DD4C5
mov     edx, [esp+2Ch+var_2C]
add     edx, 14h
mov     eax, [esp+2Ch+var_24]
call    sub_4DD69F
mov     edx, eax
mov     ecx, 18h
sar     edx, 1Fh
idiv    ecx
mov     edx, [esp+2Ch+var_1C]
mov     [edx+9Ch], eax
mov     edx, [esp+2Ch+var_20]
mov     edx, [edx+14h]
sar     edx, 10h
mov     eax, [esp+2Ch+var_2C]
mov     eax, [eax+14h]
sar     eax, 10h
sub     edx, eax
test    edx, edx
jge     short loc_41B3E3
neg     edx

loc_41B3E3:
mov     ecx, 14h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     edx, [esp+2Ch+var_28]
mov     [edx+0A0h], eax
add     edx, ecx
mov     eax, 145h
call    sub_4D8BC3
jmp     short loc_41B414

loc_41B407:
mov     byte ptr [ebp+1], 0
jmp     short loc_41B414

loc_41B40D:
mov     bl, dh
dec     bl
mov     [ebp+3], bl

loc_41B414:
add     esp, 14h
jmp     loc_41A965
sub_41B1BB endp




sub_41B41C proc near
mov     word ptr [eax+4E8h], 0
mov     word ptr [eax+4EAh], 0
inc     byte ptr [eax+4E4h]
retn
sub_41B41C endp




sub_41B435 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
add     eax, 430h
lea     ecx, [ebx+4E4h]
mov     dl, [ecx+1]
cmp     dl, 1
jb      short loc_41B458
jbe     short loc_41B469
cmp     dl, 2
jz      short loc_41B4A2
pop     edx
pop     ecx
pop     ebx
retn

loc_41B458:
test    dl, dl
jnz     loc_41B4DD
inc     dl
mov     [ecx+1], dl
mov     byte ptr [ecx+2], 0

loc_41B469:
cmp     word ptr [eax+0Ch], 0
jnz     short loc_41B4DD
inc     byte ptr [ecx+1]
mov     edx, [eax+0E0h]
mov     dl, [edx]
inc     dl
mov     [ecx+3], dl
mov     ebx, [eax+0E0h]
xor     edx, edx
mov     dl, [ebx+1]
mov     [ecx+4], dx
mov     eax, [eax+0E0h]
mov     al, [eax+1]
xor     ah, ah
mov     [ecx+6], ax
pop     edx
pop     ecx
pop     ebx
retn

loc_41B4A2:
mov     dx, [ecx+4]
dec     edx
mov     [ecx+4], dx
test    dx, dx
jge     short loc_41B4DD
mov     dl, [ecx+3]
dec     dl
mov     [ecx+3], dl
jnz     short loc_41B4C6
mov     byte ptr [ecx+1], 1
mov     word ptr [eax+0Ch], 78h ; 'x'
jmp     short loc_41B4D5

loc_41B4C6:
mov     al, dl
and     al, 1
xor     edx, edx
mov     dl, al
mov     eax, ebx
call    sub_41BA5E

loc_41B4D5:
mov     ax, [ecx+6]
mov     [ecx+4], ax

loc_41B4DD:
pop     edx
pop     ecx
pop     ebx
retn
sub_41B435 endp




sub_41B4E1 proc near
push    ecx
push    edx
lea     ecx, [eax+430h]
lea     edx, [eax+4ECh]
mov     word ptr [edx+4], 0
mov     word ptr [edx+6], 0
inc     byte ptr [edx]
inc     byte ptr [eax+0Dh]
mov     word ptr [eax+15Eh], 4210h
and     byte ptr [ecx+1], 0BFh
mov     eax, [ecx+0D0h]
or      byte ptr [eax], 2
mov     word ptr [ecx+0DEh], 0
pop     edx
pop     ecx
retn
sub_41B4E1 endp

db 8Dh, 40h, 0
jpt_41B566 dd offset loc_41B56D ; jump table for switch statement
dd offset loc_41B576
dd offset loc_41B644
dd offset loc_41B705



sub_41B535 proc near

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
add     eax, 430h
mov     [esp+20h+var_1C], eax
mov     eax, offset byte_5F8364
mov     ebp, [esp+20h+var_20]
add     ebp, 4ECh
mov     dl, [ebp+1]
cmp     dl, 3           ; switch 4 cases
ja      def_41B566      ; jumptable 0041B566 default case
xor     ecx, ecx
mov     cl, dl
jmp     jpt_41B566[ecx*4] ; switch jump

loc_41B56D:             ; jumptable 0041B566 case 0
inc     dl
mov     [ebp+1], dl
mov     byte ptr [ebp+2], 0

loc_41B576:             ; jumptable 0041B566 case 1
push    800h
mov     edx, [eax+54h]
sar     edx, 10h
push    edx
lea     ecx, [eax+14h]
mov     edx, [esp+28h+var_20]
mov     edx, [edx+54h]
sar     edx, 10h
add     edx, 800h
and     edx, 0FFFh
mov     eax, [esp+28h+var_1C]
mov     eax, [eax+0D0h]
add     eax, 14h
mov     ebx, 400h
call    sub_4DE6D6
test    eax, eax
jz      def_41B566      ; jumptable 0041B566 default case
call    sub_4DE043
mov     edx, [esp+20h+var_1C]
mov     [edx+60h], eax
test    eax, eax
jz      def_41B566      ; jumptable 0041B566 default case
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Dh], 1
lea     edi, [eax+14h]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [eax+1Ch]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     edx, ds:dword_5105DC
sar     edx, 10h
shl     edx, 4
push    edx
mov     edx, ds:dword_5105D8+2
sar     edx, 10h
shl     edx, 4
push    edx
mov     ecx, ds:dword_5105D8
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [esp+28h+var_20]
mov     ebx, [ebx+54h]
sar     ebx, 10h
lea     edx, [eax+1Ch]
add     eax, 14h
call    sub_4DD4C5
mov     eax, [esp+20h+var_1C]
or      byte ptr [eax+1], 8
inc     byte ptr [ebp+1]
jmp     def_41B566      ; jumptable 0041B566 default case

loc_41B644:             ; jumptable 0041B566 case 2
mov     eax, [esp+20h+var_1C]
mov     eax, [eax+60h]
mov     ecx, [esp+20h+var_1C]
test    byte ptr [ecx+1], 8
jz      loc_41B6E4
cmp     byte ptr [eax+0Ch], 0
jz      short loc_41B68F
inc     dl
mov     [ebp+1], dl
add     byte ptr [eax+0Ch], 80h
xor     edx, edx
mov     ecx, [esp+20h+var_20]
mov     dl, [ecx+2]
mov     ecx, edx
shl     ecx, 2
mov     edx, ds:dword_55A108
mov     edx, [ecx+edx]
mov     dl, [edx+0Dh]
xor     dh, dh
mov     [ebp+6], dx
mov     edx, [esp+20h+var_1C]
and     byte ptr [edx+1], 0F7h

loc_41B68F:
lea     edi, [eax+14h]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [eax+1Ch]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     edx, ds:dword_5105DC
sar     edx, 10h
shl     edx, 4
push    edx
mov     edx, ds:dword_5105D8+2
sar     edx, 10h
shl     edx, 4
push    edx
mov     ecx, ds:dword_5105D8
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [esp+28h+var_20]
mov     ebx, [ebx+54h]
sar     ebx, 10h
lea     edx, [eax+1Ch]
add     eax, 14h
call    sub_4DD4C5
jmp     short def_41B566 ; jumptable 0041B566 default case

loc_41B6E4:
inc     dl
mov     [ebp+1], dl
xor     eax, eax
mov     edx, [esp+20h+var_20]
mov     al, [edx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Dh]
xor     ah, ah
mov     [ebp+6], ax
jmp     short def_41B566 ; jumptable 0041B566 default case

loc_41B705:             ; jumptable 0041B566 case 3
mov     dx, [ebp+6]
dec     edx
mov     [ebp+6], dx
test    dx, dx
jge     short def_41B566 ; jumptable 0041B566 default case
mov     byte ptr [ebp+1], 0
mov     byte ptr [ebp+2], 0
mov     eax, [esp+20h+var_1C]
mov     word ptr [eax+0DEh], 0

def_41B566:             ; jumptable 0041B566 default case
add     esp, 8
jmp     loc_41A965
sub_41B535 endp




sub_41B730 proc near

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
sub     esp, 18h
mov     esi, eax
add     eax, 4C0h
mov     [esp+30h+var_30], eax
mov     eax, esi
add     eax, 440h
mov     [esp+30h+var_2C], eax
mov     eax, esi
add     eax, 454h
mov     [esp+30h+var_28], eax
mov     eax, esi
add     eax, 498h
mov     [esp+30h+var_24], eax
mov     eax, esi
add     eax, 4ACh
mov     [esp+30h+var_20], eax
lea     ebx, [esi+430h]
xor     edx, edx
mov     [esp+30h+var_1C], edx
jmp     loc_41B80F

loc_41B780:
mov     edx, eax
mov     eax, 0A0h
call    sub_4D8BC3

loc_41B78C:
cmp     [esp+30h+var_1C], 0
jz      short loc_41B7CB
test    byte ptr [ebx], 3Ch
jnz     short loc_41B79C
or      byte ptr [ebx+1], 10h

loc_41B79C:
xor     eax, eax
mov     edx, [esp+30h+var_1C]
mov     al, ds:byte_5105E2[edx]
mov     word ptr [esi+eax*8+196h], 7FFFh
cmp     edx, 3
jge     short loc_41B7FD
xor     eax, eax
mov     al, ds:byte_5105E2[edx]
mov     word ptr [esi+eax*8+18Eh], 7FFFh
jmp     short loc_41B7FD

loc_41B7CB:
mov     eax, [ebx+0D0h]
mov     word ptr [eax+15Eh], 7FFFh
mov     word ptr [esi+15Eh], 7FFFh
mov     ax, [ebx+0A0h]
mov     [esi+6Eh], ax
jmp     short loc_41B7FD

loc_41B7F0:
lea     edx, [esi+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_41B7FD:
mov     ebp, [esp+30h+var_1C]
inc     ebp
mov     [esp+30h+var_1C], ebp
cmp     ebp, 5
jge     loc_41B927

loc_41B80F:
mov     ebp, [esp+30h+var_1C]
shl     ebp, 2
mov     edx, [esp+ebp+30h+var_30]
mov     cx, [edx+10h]
test    cx, cx
jle     short loc_41B7FD
mov     edi, [edx+8]
and     edi, 0FFFFFFh
jz      short loc_41B7FD
test    byte ptr [edx+0Bh], 38h
jz      short loc_41B7F0
mov     eax, ecx
sub     eax, edi
mov     [edx+10h], ax
test    ax, ax
jg      short loc_41B891
mov     word ptr [edx+10h], 0
xor     eax, eax
mov     al, [esi+2]
mov     edi, eax
shl     edi, 2
mov     eax, ds:dword_55A108
mov     edi, [edi+eax]
movzx   edi, byte ptr [edi+9]
mov     cl, byte ptr [esp+30h+var_1C]
mov     eax, 2
shl     eax, cl
mov     ecx, eax
not     ecx
and     [ebx], cx
mov     eax, esi
call    ss:off_510522[ebp]
xor     eax, eax
mov     al, [esi+2]
mov     ebp, ds:dword_55A108
mov     eax, [ebp+eax*4+0]
mov     al, [eax+0Ch]
xor     ah, ah
mov     [ebx+0DEh], ax

loc_41B891:
test    byte ptr [ebx+1], 8
jz      short loc_41B8D9
mov     cx, [ebx+0DEh]
inc     ecx
mov     [ebx+0DEh], cx
xor     eax, eax
mov     al, [esi+2]
mov     ebp, ds:dword_55A108
mov     eax, [ebp+eax*4+0]
mov     al, [eax+0Ch]
and     eax, 0FFh
movzx   ebp, cx
cmp     ebp, eax
jl      short loc_41B8D9
mov     word ptr [ebx+0DEh], 0
mov     eax, [ebx+60h]
call    sub_4DE371
and     byte ptr [ebx+1], 0F7h

loc_41B8D9:
lea     eax, [esi+14h]
test    byte ptr [ebx], 80h
jz      loc_41B780
add     [ebx+0Ah], di
test    byte ptr [edx+0Bh], 20h
jnz     short loc_41B90F
xor     edx, edx
mov     dl, [esi+2]
mov     edi, ds:dword_55A108
mov     edx, [edi+edx*4]
movzx   edi, byte ptr [edx+9]
mov     edx, [ebx+8]
sar     edx, 10h
cmp     edx, edi
jl      loc_41B780

loc_41B90F:
lea     edx, [esi+14h]
mov     eax, 0A2h
call    sub_4D8BC3
mov     word ptr [ebx+0Ah], 0
jmp     loc_41B78C

loc_41B927:
mov     eax, 1
add     esp, 18h
jmp     loc_41A965
sub_41B730 endp




sub_41B934 proc near
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_41B960
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 2
lea     edi, [eax+48h]
lea     esi, [edx+1B0h]
movsd
movsd

loc_41B960:
mov     byte ptr [edx+107h], 0FFh
mov     byte ptr [edx+10Bh], 0FFh

loc_41B96E:
inc     byte ptr [edx+0Dh]
pop     edi
pop     esi
pop     edx
retn
sub_41B934 endp




sub_41B975 proc near
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_41B9A1
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 2
lea     edi, [eax+48h]
lea     esi, [edx+1C0h]
movsd
movsd

loc_41B9A1:
mov     byte ptr [edx+10Fh], 0FFh
mov     byte ptr [edx+113h], 0FFh
jmp     short loc_41B96E
sub_41B975 endp




sub_41B9B1 proc near
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_41B9DD
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 2
lea     edi, [eax+48h]
lea     esi, [edx+1D0h]
movsd
movsd

loc_41B9DD:
mov     byte ptr [edx+11Bh], 0FFh
jmp     short loc_41B96E
sub_41B9B1 endp




sub_41B9E6 proc near
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_41BA12
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 2
lea     edi, [eax+48h]
lea     esi, [edx+1C8h]
movsd
movsd

loc_41BA12:
mov     byte ptr [edx+117h], 0FFh
jmp     loc_41B96E
sub_41B9E6 endp




sub_41BA1E proc near
push    edx
push    esi
push    edi
lea     edx, [eax+430h]
call    sub_4DE13B
test    eax, eax
jz      short loc_41BA51
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 2
mov     esi, [edx+0D0h]
lea     edi, [eax+48h]
lea     esi, [esi+14h]
movsd
movsd

loc_41BA51:
mov     eax, [edx+0D0h]
and     byte ptr [eax], 0FDh
pop     edi
pop     esi
pop     edx
retn
sub_41BA1E endp




sub_41BA5E proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
push    eax
mov     ecx, edx
lea     ebp, [eax+430h]
call    sub_4DE043
mov     [esp+1Ch+var_18], eax
test    eax, eax
jz      loc_41BB86
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 4
mov     dword ptr [eax+0C8h], (offset dword_5F880A+2)
lea     edi, [eax+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1A0h]
movsd
movsd
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
lea     esi, [eax+14h]
lea     edx, [eax+1Ch]
test    ecx, ecx
jz      short loc_41BADB
mov     eax, ds:dword_5105E9
sar     eax, 10h
jmp     short loc_41BAE5

loc_41BADB:
mov     eax, ds:dword_5105E9
sar     eax, 10h
neg     eax

loc_41BAE5:
shl     eax, 4
push    eax
mov     eax, ds:dword_5105E5+2
sar     eax, 10h
shl     eax, 4
push    eax
mov     ecx, ds:dword_5105E5
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [esp+24h+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     eax, esi
call    sub_4DD4C5
mov     dword ptr [ebp+48h], 0
mov     dword ptr [ebp+4Ch], 0
mov     word ptr [ebp+48h], 0C00h
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+56h]
mov     [ebp+4Ah], ax
mov     word ptr [ebp+4Ch], 0
mov     esi, [esp+1Ch+var_18]
add     esi, 8Ch
lea     eax, [ebp+48h]
mov     edx, esi
call    sub_4EF638
mov     dword ptr [ebp+50h], 200h
mov     dword ptr [ebp+54h], 200h
mov     dword ptr [ebp+58h], 200h
mov     dword ptr [ebp+5Ch], 0
lea     edx, [ebp+50h]
mov     eax, esi
call    sub_4EF689
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 144h
call    sub_4D8BC3
mov     eax, 1

loc_41BB86:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41BA5E endp




sub_41BB8F proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+430h]
lea     edi, [ebp+48h]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
lea     edi, [ebp+50h]
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
call    rand_
mov     ecx, eax
and     ecx, 3
shl     ecx, 7
add     ecx, 100h
push    0
push    0
shl     ecx, 4
call    rand_
mov     ebx, eax
and     ebx, 3
shl     ebx, 5
mov     edx, [esp+24h+var_1C]
add     edx, 14h
mov     eax, offset byte_5F8364
add     eax, 14h
call    sub_4DDDB4
add     ebx, eax
and     ebx, 0FFFh
lea     edx, [ebp+50h]
lea     eax, [ebp+48h]
call    sub_4DD4C5
call    sub_4DE13B
test    eax, eax
jz      short loc_41BC26
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 10h
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
lea     edi, [eax+48h]
lea     esi, [ebp+48h]
movsd
movsd
mov     word ptr [eax+4Ah], 0FFFFh

loc_41BC26:
call    sub_4DE13B
test    eax, eax
jz      short loc_41BC4C
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 10h
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0
lea     edi, [eax+48h]
lea     esi, [ebp+48h]
movsd
movsd
mov     word ptr [eax+4Ah], 0FFFFh

loc_41BC4C:
mov     ecx, [esp+1Ch+var_1C]
add     ecx, 14h
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B
lea     ecx, [ebp+48h]
mov     ebx, 8
xor     edx, edx
mov     eax, 1
call    sub_43C263
jmp     loc_41A962
sub_41BB8F endp




sub_41BC7F proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
lea     ebp, [eax+430h]
cmp     word ptr [ebp+0DCh], 0
jnz     loc_41BD30
call    sub_4DE13B
mov     [esp+24h+var_1C], eax
mov     [esp+24h+var_20], eax
test    eax, eax
jz      loc_41BD30
lea     edi, [ebp+48h]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [ebp+50h]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0
mov     ebx, [esp+2Ch+var_24]
mov     ebx, [ebx+54h]
sar     ebx, 10h
lea     edx, [ebp+50h]
lea     eax, [ebp+48h]
mov     ecx, 1000h
call    sub_4DD4C5
mov     eax, [esp+24h+var_1C]
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 10h
mov     byte ptr [eax+3], 1
mov     eax, [ebp+0D8h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jz      short loc_41BD0F
mov     eax, [esp+24h+var_1C]
mov     byte ptr [eax+0Ch], 1
jmp     short loc_41BD17

loc_41BD0F:
mov     eax, [esp+24h+var_1C]
mov     byte ptr [eax+0Ch], 2

loc_41BD17:
mov     edi, [esp+24h+var_20]
lea     edi, [edi+48h]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [esp+24h+var_20]
mov     word ptr [eax+4Ah], 0FFFFh

loc_41BD30:
mov     ax, [ebp+0DCh]
inc     eax
xor     ah, ah
and     al, 0Fh
mov     [ebp+0DCh], ax
add     esp, 0Ch
jmp     loc_41A965
sub_41BC7F endp




sub_41BD4B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
lea     ebp, [eax+430h]
lea     edi, [ebp+48h]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [ebp+50h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0
mov     ebx, [eax+54h]
sar     ebx, 10h
lea     edx, [ebp+50h]
lea     eax, [ebp+48h]
mov     ecx, 1000h
call    sub_4DD4C5
call    sub_4DE13B
test    eax, eax
jz      short loc_41BDA9
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 10h
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
lea     edi, [eax+48h]
lea     esi, [ebp+48h]
movsd
movsd
mov     word ptr [eax+4Ah], 0FFFFh

loc_41BDA9:
call    sub_4DE13B
test    eax, eax
jz      short loc_41BDCF
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 10h
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0
lea     edi, [eax+48h]
lea     esi, [ebp+48h]
movsd
movsd
mov     word ptr [eax+4Ah], 0FFFFh

loc_41BDCF:
lea     ecx, [ebp+48h]
mov     ebx, 8
xor     edx, edx
mov     eax, 1
call    sub_43C263
jmp     loc_41A965
sub_41BD4B endp




sub_41BDE8 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     bl, [eax+9]
lea     edx, [eax+430h]
call    ds:funcs_41BDF8[ebx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_41BE0C
mov     eax, ecx
call    sub_4DEADD

loc_41BE0C:
pop     edx
pop     ecx
pop     ebx
retn
sub_41BDE8 endp




sub_41BE10 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0
pop     ecx
pop     ebx
retn
sub_41BE10 endp




sub_41BE53 proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short locret_41BE62
add     word ptr [eax+14h], 2
dec     word ptr [eax+16h]

locret_41BE62:
retn
sub_41BE53 endp




sub_41BE63 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     eax, 3

loc_41BE9F:
mov     edx, eax
mov     byte ptr [ecx+edx*4+0FBh], 0FFh
inc     eax
cmp     eax, 9
jb      short loc_41BE9F
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 3
mov     byte ptr [ecx+0Ah], 0
mov     ebx, offset unk_510600
mov     edx, 3
mov     eax, ecx
call    sub_451859
mov     [esi], eax
mov     byte ptr [eax+0Ch], 7
pop     esi
pop     ecx
pop     ebx
sub_41BE63 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_44]



sub_41BED5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
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
xor     ecx, ecx
mov     cl, [eax+8]
lea     ebx, [eax+550h]
mov     edx, offset dword_560BDC
call    ds:funcs_41BF13[ecx*4]
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+0ADh]
jz      short loc_41BF3B
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_41BF42

loc_41BF3B:
mov     eax, ebp
call    sub_4DEADD

loc_41BF42:
mov     edx, [ebp+14h]
sar     edx, 10h
cmp     edx, 0FFFFF800h
jle     short loc_41BF63
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 100h
mov     eax, ebp
call    sub_4ED88B

loc_41BF63:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41BED5 endp




sub_41BF6A proc near
push    ecx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx], 0
mov     eax, ecx
call    sub_42C592
mov     dx, [ecx+16h]
add     edx, eax
mov     [ecx+16h], dx
mov     [ebx+2], dx
mov     ebx, [ecx+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [ecx+20h], ebx
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     ecx
retn
sub_41BF6A endp

db 8Dh, 40h, 0
jpt_41C018 dd offset loc_41C01F ; jump table for switch statement
dd offset loc_41C03F
dd offset loc_41C09C
dd offset loc_41C0E0
dd offset loc_41C0F6
dd offset loc_41C139
dd offset loc_41C1A8



sub_41BFFD proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     eax, edx
mov     edi, ebx
mov     dl, [esi+9]
cmp     dl, 6           ; switch 7 cases
ja      def_41C018      ; jumptable 0041C018 default case
and     edx, 0FFh
jmp     jpt_41C018[edx*4] ; switch jump

loc_41C01F:             ; jumptable 0041C018 case 0
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [eax+9], 0
jnz     def_41C018      ; jumptable 0041C018 default case
cmp     dword ptr [eax+10h], 5Bh ; '['
jnz     def_41C018      ; jumptable 0041C018 default case
jmp     loc_41C0D9

loc_41C03F:             ; jumptable 0041C018 case 1
mov     dx, [ebx]
xor     dh, dh
and     dl, 3Fh
movsx   edx, dx
mov     edx, dword ptr ds:unk_564C32[edx*2]
sar     edx, 10h
shl     edx, 4
sar     edx, 0Ch
mov     ecx, [ebx]
sar     ecx, 10h
add     edx, ecx
mov     [esi+16h], dx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
inc     word ptr [ebx]
mov     dl, [eax+9]
cmp     dl, 1
jnz     def_41C018      ; jumptable 0041C018 default case
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     def_41C018      ; jumptable 0041C018 default case
mov     word ptr [esi+46h], 4
mov     word ptr [ebx], 0
add     [esi+9], dl

def_41C018:             ; jumptable 0041C018 default case
pop     edi
pop     esi
pop     ecx
retn

loc_41C09C:             ; jumptable 0041C018 case 2
mov     dx, [esi+46h]
sub     [esi+16h], dx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
mov     dx, [ebx]
cmp     dx, 6
jge     short loc_41C0C0
add     word ptr [esi+46h], 2
jmp     short loc_41C0CB

loc_41C0C0:
cmp     dx, 54h ; 'T'
jle     short loc_41C0CB
sub     word ptr [esi+46h], 2

loc_41C0CB:
inc     word ptr [edi]
cmp     dword ptr [eax+10h], 78h ; 'x'

loc_41C0D2:             ; jumptable 0041C018 default case
jnz     short def_41C018
mov     word ptr [edi], 0

loc_41C0D9:
inc     byte ptr [esi+9]
pop     edi
pop     esi
pop     ecx
retn

loc_41C0E0:             ; jumptable 0041C018 case 3
cmp     dword ptr [eax+10h], 96h
jnz     short def_41C018 ; jumptable 0041C018 default case
mov     word ptr [ebx], 0
mov     word ptr [esi+44h], 8
jmp     short loc_41C0D9

loc_41C0F6:             ; jumptable 0041C018 case 4
cmp     byte ptr [eax+9], 1
jnz     short loc_41C129
cmp     dword ptr [eax+10h], 0
jle     short loc_41C129
mov     ax, [esi+44h]
shl     eax, 4
movsx   edx, ax
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
cmp     word ptr [edi], 0Ah
jge     short loc_41C122
add     word ptr [esi+44h], 2

loc_41C122:
inc     word ptr [edi]
pop     edi
pop     esi
pop     ecx
retn

loc_41C129:
cmp     byte ptr [eax+9], 2
jnz     def_41C018      ; jumptable 0041C018 default case
cmp     dword ptr [eax+10h], 1
jmp     short loc_41C0D2

loc_41C139:             ; jumptable 0041C018 case 5
mov     dl, [eax+9]
cmp     dl, 2
jnz     short loc_41C18A
mov     ecx, [eax+10h]
test    ecx, ecx
jle     short loc_41C164
cmp     ecx, 15h
jge     short loc_41C164
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 280h
mov     eax, esi
call    sub_4DD43B
sub     word ptr [esi+16h], 20h ; ' '
jmp     short loc_41C17A

loc_41C164:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 380h
mov     eax, esi
call    sub_4DD43B
mov     word ptr [esi+16h], 0F740h

loc_41C17A:
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
pop     edi
pop     esi
pop     ecx
retn

loc_41C18A:
cmp     dl, 3
jnz     def_41C018      ; jumptable 0041C018 default case
cmp     dword ptr [eax+10h], 1
jnz     def_41C018      ; jumptable 0041C018 default case
mov     word ptr [esi+46h], 10h
jmp     loc_41C0D9

loc_41C1A8:             ; jumptable 0041C018 case 6
mov     ax, [esi+46h]
add     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     bx, [esi+46h]
cmp     bx, 8
jle     short loc_41C1CF
mov     ecx, ebx
sub     ecx, 4
mov     [esi+46h], cx

loc_41C1CF:
mov     eax, [esi+14h]
sar     eax, 10h
cmp     eax, 0FFFFFB50h
jl      def_41C018      ; jumptable 0041C018 default case
mov     word ptr [esi+16h], 0FB50h
jmp     loc_41C0D9
sub_41BFFD endp




sub_41C1EB proc near
push    ecx
push    edx
lea     edx, [eax+550h]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_41C1F8[ecx*4]
mov     dword ptr [edx+18h], 0
mov     dword ptr [edx+60h], 0
mov     dword ptr [edx+70h], 0
pop     edx
pop     ecx
retn
sub_41C1EB endp




sub_41C217 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+550h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     word ptr [esi], 26h ; '&'
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+18h], 0
mov     dword ptr [esi+1Ch], 0
lea     eax, [esi+28h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     dword ptr [esi+60h], 0
mov     dword ptr [esi+64h], 0
mov     dword ptr [esi+70h], 0
mov     dword ptr [esi+74h], 0
mov     dword ptr [esi+78h], 0
mov     word ptr [esi+0Ch], 0
mov     word ptr [esi+0Eh], 0
mov     word ptr [esi+80h], 0
mov     word ptr [esi+82h], 0
mov     word ptr [esi+88h], 0
mov     eax, offset unk_510654
call    sub_42C443
mov     [esi+8Ch], eax
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, ds:dword_55A108
mov     eax, [ebx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 5
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_510648
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 6
mov     word ptr [ecx+0Ah], 0
mov     ebx, [ecx+9]
sar     ebx, 18h
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_41C377
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41C217 endp

db 90h
jpt_41C433 dd offset loc_41C4B4 ; jump table for switch statement
dd offset loc_41C4AC
dd offset def_41C433
dd offset def_41C433
dd offset loc_41C43A
dd offset def_41C433
dd offset loc_41C4AC



sub_41C377 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 550h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0ACh]
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
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     edx, [esp+1Ch+var_1C]
mov     [edx+2], ax
call    sub_436700
test    byte ptr [edx], 4
jz      short loc_41C3D6
mov     eax, ebp
call    sub_41D3D0

loc_41C3D6:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+1], 4
jnz     short loc_41C409
mov     eax, ebp
call    sub_41D1E1
test    eax, eax
jz      short loc_41C409
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+8Ch]
call    sub_4A7F4D
test    eax, eax
jle     short loc_41C409
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+0Eh], 0B4h
or      byte ptr [eax+1], 4

loc_41C409:
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_41C410[ecx*4]
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      loc_41C4CA
mov     al, [ebp+9]
cmp     al, 6           ; switch 7 cases
ja      def_41C433      ; jumptable 0041C433 default case, cases 2,3,5
and     eax, 0FFh
jmp     jpt_41C433[eax*4] ; switch jump

loc_41C43A:             ; jumptable 0041C433 case 4
mov     eax, ebp
call    sub_4DE336
mov     eax, ebp
call    sub_4367FD
call    sub_4DDF54
mov     ecx, eax
test    eax, eax
jz      short loc_41C4BE
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2Fh ; '/'
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0FFh
mov     eax, [ebp+1Ch]
mov     [ecx+1Ch], eax
mov     ebx, [ebp+20h]
sub     ebx, offset unk_800000
mov     [ecx+20h], ebx
mov     eax, [ebp+24h]
mov     [ecx+24h], eax
lea     ebx, [ebp+14h]
lea     eax, [ecx+1Ch]
mov     edx, ebx
call    sub_4DD57B
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+38h], 0F4C7h
mov     word ptr [eax+3Ah], 0FFFFh
mov     word ptr [eax+3Ch], 0E676h
lea     edx, [eax+38h]
mov     eax, ebx
call    sub_4DDDB4
mov     [ecx+56h], ax
jmp     short loc_41C4BE

loc_41C4AC:             ; jumptable 0041C433 cases 1,6
mov     al, [ebp+0Dh]
mov     [ebp+9], al
jmp     short loc_41C4BE

loc_41C4B4:             ; jumptable 0041C433 case 0
mov     byte ptr [ebp+9], 0
jmp     short loc_41C4BE

def_41C433:             ; jumptable 0041C433 default case, cases 2,3,5
mov     byte ptr [ebp+9], 6

loc_41C4BE:
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0FEh

loc_41C4CA:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+0Ch]
test    dx, dx
jz      short loc_41C4DD
mov     ebx, edx
dec     ebx
mov     [eax+0Ch], bx

loc_41C4DD:
mov     eax, [esp+1Ch+var_1C]
mov     cx, [eax+0Ah]
test    cx, cx
jz      short loc_41C4F0
mov     esi, ecx
dec     esi
mov     [eax+0Ah], si

loc_41C4F0:
mov     eax, [esp+1Ch+var_1C]
mov     di, [eax+0Eh]
test    di, di
jz      short loc_41C503
mov     edx, edi
dec     edx
mov     [eax+0Eh], dx

loc_41C503:
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+82h]
test    bx, bx
jz      short loc_41C51C
mov     ecx, ebx
dec     ecx
mov     [eax+82h], cx

loc_41C51C:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 20h
jz      short loc_41C54C
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_41C543
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_41C55A

loc_41C543:
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_41C55A

loc_41C54C:
mov     eax, ebp
call    sub_4DFC52
mov     eax, ebp
call    sub_4DF795

loc_41C55A:
mov     bx, [ebp+14h]
sub     bx, [ebp+2Ch]
shl     ebx, 4
mov     [ebp+44h], bx
mov     bx, [ebp+16h]
sub     bx, [ebp+2Eh]
shl     ebx, 4
mov     [ebp+46h], bx
mov     bx, [ebp+18h]
sub     bx, [ebp+30h]
shl     ebx, 4
mov     [ebp+48h], bx
test    byte ptr [ebp+0], 2
jz      short loc_41C5A5
mov     ecx, [ebp+54h]
sar     ecx, 10h
lea     eax, [ebp+14h]
mov     ebx, 200h
mov     edx, 80h
call    sub_4ED95E

loc_41C5A5:
test    byte ptr [ebp+0], 1
jz      loc_41C6A8
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_41C5EC
mov     edi, eax
lea     edi, [edi+10h]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    0
push    4080000h
add     eax, 18h
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 10h
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A0h
call    sub_4E01FC

loc_41C5EC:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 40h
jz      short loc_41C64A
mov     edi, eax
lea     edi, [edi+68h]
lea     esi, [ebp+1E0h]
movsd
movsd
push    80h
push    0
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
and     eax, 0FFh
or      eax, 5000000h
push    eax
mov     eax, [esp+28h+var_1C]
add     eax, 70h ; 'p'
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 68h ; 'h'
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 60h ; '`'
call    sub_4E01FC

loc_41C64A:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 80h
jz      short loc_41C6A8
mov     edi, eax
lea     edi, [edi+58h]
lea     esi, [ebp+1B8h]
movsd
movsd
push    80h
push    0
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
and     eax, 0FFh
or      eax, 5000000h
push    eax
mov     eax, [esp+28h+var_1C]
add     eax, 60h ; '`'
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 58h ; 'X'
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 60h ; '`'
call    sub_4E01FC

loc_41C6A8:
mov     eax, ebp
call    sub_42DE56
mov     edx, [esp+1Ch+var_1C]
mov     [edx+78h], eax

loc_41C6B5:
add     esp, 4

def_41CA01:             ; jumptable 0041CA01 default case
pop     ebp

def_41CCE3:             ; jumptable 0041CCE3 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41C377 endp



; Attributes: thunk

sub_41C6BF proc near
jmp     sub_4DE336
sub_41C6BF endp




sub_41C6C4 proc near
push    ebx
push    edx
lea     edx, [eax+550h]
mov     bl, [eax+0Ah]
test    bl, bl
ja      short loc_41C6E2
inc     bl
mov     [eax+0Ah], bl
mov     byte ptr [eax+0ACh], 0
or      byte ptr [edx], 20h

loc_41C6E2:
pop     edx
pop     ebx
retn
sub_41C6C4 endp

db 8Bh, 0C0h
jpt_41C72B dd offset loc_41C732 ; jump table for switch statement
dd offset loc_41C765
dd offset loc_41C78C
dd offset loc_41C8CA
dd offset loc_41C909
dd offset loc_41C9AA



sub_41C6FF proc near

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
sub     esp, 10h
mov     ebp, eax
add     eax, 550h
mov     [esp+28h+var_1C], eax
mov     [esp+28h+var_20], offset byte_5F8364
mov     dl, [ebp+0Ah]
cmp     dl, 5           ; switch 6 cases
ja      def_41C72B      ; jumptable 0041C72B default case
xor     eax, eax
mov     al, dl
jmp     jpt_41C72B[eax*4] ; switch jump

loc_41C732:             ; jumptable 0041C72B case 0
inc     dl
mov     [ebp+0Ah], dl
mov     byte ptr [ebp+0ACh], 7
mov     eax, [esp+28h+var_1C]
mov     word ptr [eax+4], 1Eh
or      byte ptr [eax], 20h
lea     edx, [ebp+14h]
mov     eax, 0FDh
call    sub_4D8BC3
mov     eax, [esp+28h+var_1C]
mov     word ptr [eax+88h], 0

loc_41C765:             ; jumptable 0041C72B case 1
mov     eax, [esp+28h+var_1C]
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     def_41C72B      ; jumptable 0041C72B default case
inc     byte ptr [ebp+0Ah]
and     byte ptr [eax], 0DFh

loc_41C781:
mov     word ptr [eax+4], 10h
jmp     def_41C72B      ; jumptable 0041C72B default case

loc_41C78C:             ; jumptable 0041C72B case 2
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     eax, offset byte_5F8364
add     eax, 14h
mov     [esp+28h+var_28], eax
mov     eax, ebp
add     eax, 14h
mov     [esp+28h+var_24], eax
mov     ecx, 40h ; '@'
mov     edx, [esp+28h+var_28]
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     edi, [esp+28h+var_1C]
lea     edi, [edi+38h]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, [esp+28h+var_1C]
lea     edi, [edi+40h]
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
push    0
push    0
mov     edx, [esp+30h+var_24]
mov     eax, [esp+30h+var_28]
call    sub_4DDDB4
mov     ebx, eax
and     ebx, 0FFFh
mov     edx, [esp+30h+var_1C]
add     edx, 40h ; '@'
mov     esi, [esp+30h+var_1C]
add     esi, 38h ; '8'
mov     ecx, 1100h
mov     eax, esi
call    sub_4DD4C5
mov     ebx, [esp+28h+var_1C]
mov     ebx, [ebx+2]
sar     ebx, 10h
mov     edx, esi
mov     eax, [esp+28h+var_24]
call    sub_4DD69F
mov     edx, eax
inc     ebx
sar     edx, 1Fh
idiv    ebx
mov     [ebp+4Ch], ax
cmp     ax, 40h ; '@'
jle     short loc_41C83D
mov     eax, 40h ; '@'
jmp     short loc_41C843

loc_41C83D:
mov     eax, [ebp+4Ah]
sar     eax, 10h

loc_41C843:
mov     [ebp+4Ch], ax
mov     eax, [esp+28h+var_20]
mov     ax, [eax+16h]
sub     eax, 40h ; '@'
mov     dx, [ebp+16h]
sub     eax, edx
mov     [ebp+4Eh], ax
mov     edx, [esp+28h+var_1C]
mov     edx, [edx+2]
sar     edx, 10h
mov     eax, dword ptr ds:unk_564C32[edx*2]
sar     eax, 10h
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
imul    ebx, eax
sar     ebx, 0Ch
mov     edx, [ebp+4Ah]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_41D118
test    eax, eax
jz      short loc_41C8A9
mov     byte ptr [ebp+0Ah], 5
mov     eax, [esp+28h+var_1C]
or      byte ptr [eax], 20h
jmp     def_41C72B      ; jumptable 0041C72B default case

loc_41C8A9:
mov     eax, [esp+28h+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_41C72B      ; jumptable 0041C72B default case
inc     byte ptr [ebp+0Ah]
or      byte ptr [eax], 0E0h
jmp     loc_41C781

loc_41C8CA:             ; jumptable 0041C72B case 3
cmp     byte ptr [ebp+0A6h], 0
jz      short loc_41C8E0
lea     edx, [ebp+14h]
mov     eax, 0FEh
call    sub_4D8BC3

loc_41C8E0:
cmp     byte ptr [ebp+0A7h], 0
jge     def_41C72B      ; jumptable 0041C72B default case
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 0
mov     eax, [esp+28h+var_1C]
mov     word ptr [eax+4], 10h
and     byte ptr [eax], 3Fh
jmp     def_41C72B      ; jumptable 0041C72B default case

loc_41C909:             ; jumptable 0041C72B case 4
mov     eax, [esp+28h+var_1C]
test    byte ptr [eax+1], 4
jz      short loc_41C91F
mov     edi, eax
lea     edi, [edi+50h]
mov     esi, offset unk_510654
jmp     short loc_41C929

loc_41C91F:
mov     edi, eax
lea     edi, [edi+50h]
mov     esi, (offset dword_5F8376+2)

loc_41C929:
movsd
movsd
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+28h+var_1C]
add     edx, 50h ; 'P'
lea     eax, [ebp+14h]
mov     ecx, 20h ; ' '
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     eax, ebp
call    sub_42C592
sub     eax, 400h
mov     dx, [ebp+16h]
sub     edx, eax
mov     [ebp+4Eh], dx
mov     eax, [esp+28h+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
mov     edx, ds:dword_564C72[eax*2]
sar     edx, 10h
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
imul    ebx, edx
sar     ebx, 0Ch
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
mov     eax, [esp+28h+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short def_41C72B ; jumptable 0041C72B default case
mov     byte ptr [ebp+0Dh], 6
jmp     short loc_41C9BB

loc_41C9AA:             ; jumptable 0041C72B case 5
cmp     byte ptr [ebp+0A7h], 0
jge     short def_41C72B ; jumptable 0041C72B default case
mov     byte ptr [ebp+0Dh], 5
mov     eax, [esp+28h+var_1C]

loc_41C9BB:
or      byte ptr [eax], 1
mov     word ptr [eax+0Ch], 1Eh

def_41C72B:             ; jumptable 0041C72B default case
add     esp, 10h
jmp     def_41CA01      ; jumptable 0041CA01 default case
sub_41C6FF endp

db 8Dh, 40h, 0
jpt_41CA01 dd offset loc_41CA08 ; jump table for switch statement
dd offset loc_41CA30
dd offset loc_41CACA
dd offset loc_41CAE3



sub_41C9DF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+550h]
mov     ecx, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_41CA01      ; jumptable 0041CA01 default case
xor     edx, edx
mov     dl, al
jmp     jpt_41CA01[edx*4] ; switch jump

loc_41CA08:             ; jumptable 0041CA01 case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 4
or      byte ptr [esi], 20h
inc     word ptr [esi+88h]
lea     edx, [ebp+14h]
mov     eax, 141h
call    sub_4D8BC3
jmp     def_41CA01      ; jumptable 0041CA01 default case

loc_41CA30:             ; jumptable 0041CA01 case 1
cmp     byte ptr [ebp+0A6h], 0
jz      short loc_41CA46
lea     edx, [ebp+14h]
mov     eax, 154h
call    sub_4D8BC3

loc_41CA46:
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [ecx+14h]
lea     eax, [ebp+14h]
mov     ecx, 40h ; '@'
call    sub_4DE552
mov     dx, [ebp+56h]
add     edx, eax
and     dh, 0Fh
mov     [ebp+56h], dx
test    ax, ax
jge     short loc_41CA73
cwde
neg     eax
jmp     short loc_41CA74

loc_41CA73:
cwde

loc_41CA74:
cmp     eax, 40h ; '@'
jge     def_41CA01      ; jumptable 0041CA01 default case
cmp     byte ptr [ebp+0A7h], 0
jge     def_41CA01      ; jumptable 0041CA01 default case
call    sub_4DDF54
test    eax, eax
jz      short loc_41CABB
mov     [esi+84h], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2Eh ; '.'
mov     byte ptr [eax+4], 0
lea     edi, [eax+14h]
lea     esi, [ebp+198h]
movsd
movsd
lea     edi, [eax+54h]
lea     esi, [ebp+54h]
movsd
movsd
mov     byte ptr [eax+0Ch], 0

loc_41CABB:
mov     byte ptr [ebp+0ACh], 5

loc_41CAC2:
inc     byte ptr [ebp+0Ah]
jmp     def_41CA01      ; jumptable 0041CA01 default case

loc_41CACA:             ; jumptable 0041CA01 case 2
mov     eax, [esi+84h]
cmp     byte ptr [eax+0Ch], 0
jz      def_41CA01      ; jumptable 0041CA01 default case
mov     byte ptr [ebp+0ACh], 6
jmp     short loc_41CAC2

loc_41CAE3:             ; jumptable 0041CA01 case 3
cmp     byte ptr [ebp+0A7h], 0
jge     def_41CA01      ; jumptable 0041CA01 default case
or      byte ptr [esi], 1
mov     word ptr [esi+0Ch], 3Ch ; '<'
jmp     def_41CA01      ; jumptable 0041CA01 default case
sub_41C9DF endp

db 90h
jpt_41CB2A dd offset loc_41CB31 ; jump table for switch statement
dd offset loc_41CB4E
dd offset loc_41CB9E
dd offset loc_41CBB7



sub_41CB0F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 550h
mov     dl, [esi+0Ah]
cmp     dl, 3           ; switch 4 cases
ja      def_41CB2A      ; jumptable 0041CB2A default case
xor     ecx, ecx
mov     cl, dl
jmp     jpt_41CB2A[ecx*4] ; switch jump

loc_41CB31:             ; jumptable 0041CB2A case 0
inc     dl
mov     [esi+0Ah], dl
mov     byte ptr [esi+0ACh], 1
or      byte ptr [eax], 20h
mov     word ptr [eax+88h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41CB4E:             ; jumptable 0041CB2A case 1
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 40h ; '@'
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jge     short loc_41CB80
cwde
neg     eax
jmp     short loc_41CB81

loc_41CB80:
cwde

loc_41CB81:
cmp     eax, 40h ; '@'
jge     short def_41CB2A ; jumptable 0041CB2A default case
cmp     byte ptr [esi+0A7h], 0
jge     short def_41CB2A ; jumptable 0041CB2A default case
mov     byte ptr [esi+0ACh], 2

loc_41CB96:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41CB9E:             ; jumptable 0041CB2A case 2
cmp     byte ptr [esi+0A7h], 0
jge     short def_41CB2A ; jumptable 0041CB2A default case
mov     eax, esi
call    sub_41D2D1
mov     byte ptr [esi+0ACh], 3
jmp     short loc_41CB96

loc_41CBB7:             ; jumptable 0041CB2A case 3
cmp     byte ptr [esi+0A7h], 0
jge     short def_41CB2A ; jumptable 0041CB2A default case
or      byte ptr [eax], 1
mov     word ptr [eax+0Ch], 5Ah ; 'Z'

def_41CB2A:             ; jumptable 0041CB2A default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41CB0F endp




sub_41CBCE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
add     eax, 550h
mov     dl, [esi+0Ah]
cmp     dl, 1
jb      short loc_41CBEE
jbe     short loc_41CC1D
cmp     dl, 2
jz      short loc_41CC43
jmp     def_41CCE3      ; jumptable 0041CCE3 default case

loc_41CBEE:
test    dl, dl
jnz     def_41CCE3      ; jumptable 0041CCE3 default case
inc     dl
mov     [esi+0Ah], dl
mov     byte ptr [esi+0ACh], 0Bh
mov     word ptr [esi+4Eh], 10h
mov     word ptr [eax+4], 10h
or      byte ptr [eax], 20h
mov     dword ptr [esi+78h], 0
jmp     def_41CCE3      ; jumptable 0041CCE3 default case

loc_41CC1D:
sar     word ptr [esi+44h], 1
mov     dx, [esi+4Eh]
add     [esi+46h], dx
sar     word ptr [esi+48h], 1
add     word ptr [esi+4Eh], 10h
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_41CC43
inc     byte ptr [esi+0Ah]

loc_41CC43:
cmp     byte ptr [esi+0ACh], 0Ch
jz      short loc_41CC5C
cmp     byte ptr [esi+0A7h], 0
jge     short loc_41CC5C
mov     byte ptr [esi+0ACh], 0Ch

loc_41CC5C:
test    byte ptr [eax+79h], 10h
jz      short loc_41CC92
or      byte ptr [eax], 1
call    sub_4DE13B
test    eax, eax
jz      def_41CCE3      ; jumptable 0041CCE3 default case
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 2
lea     edi, [eax+48h]
lea     esi, [esi+14h]
movsd
movsd
jmp     def_41CCE3      ; jumptable 0041CCE3 default case

loc_41CC92:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
jmp     def_41CCE3      ; jumptable 0041CCE3 default case
sub_41CBCE endp

db 8Dh, 40h, 0
jpt_41CCE3 dd offset loc_41CCEA ; jump table for switch statement
dd offset loc_41CCFE
dd offset loc_41CD82
dd offset loc_41CDE8
dd offset loc_41CE65



sub_41CCC7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_41CCE3      ; jumptable 0041CCE3 default case
xor     edx, edx
mov     dl, al
jmp     jpt_41CCE3[edx*4] ; switch jump

loc_41CCEA:             ; jumptable 0041CCE3 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 8
or      byte ptr [edi], 20h
jmp     def_41CCE3      ; jumptable 0041CCE3 default case

loc_41CCFE:             ; jumptable 0041CCE3 case 1
cmp     byte ptr [esi+0A7h], 0
jge     short loc_41CD16
mov     byte ptr [esi+0ACh], 9

loc_41CD0E:
inc     byte ptr [esi+0Ah]
jmp     def_41CCE3      ; jumptable 0041CCE3 default case

loc_41CD16:
cmp     byte ptr [esi+0A6h], 0
jz      def_41CCE3      ; jumptable 0041CCE3 default case
test    byte ptr [edi+1], 8
jnz     short loc_41CD34
mov     eax, esi
call    sub_41D118
test    eax, eax
jnz     short loc_41CD44

loc_41CD34:
add     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 0Ah
jmp     def_41CCE3      ; jumptable 0041CCE3 default case

loc_41CD44:
lea     ecx, [esi+14h]
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B
xor     eax, eax
mov     al, [esi+2]
mov     ecx, ds:dword_55A108
mov     ecx, [ecx+eax*4]
xor     edx, edx
mov     dl, [ecx+0Bh]

loc_41CD6E:
mov     eax, [edi+7Ch]
call    sub_4EE6C2
mov     eax, esi
call    sub_41D19D
jmp     def_41CCE3      ; jumptable 0041CCE3 default case

loc_41CD82:             ; jumptable 0041CCE3 case 2
cmp     byte ptr [esi+0A6h], 0
jz      def_41CCE3      ; jumptable 0041CCE3 default case
test    byte ptr [edi+1], 8
jnz     short loc_41CDA0
mov     eax, esi
call    sub_41D118
test    eax, eax
jnz     short loc_41CDB8

loc_41CDA0:
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0Ah
mov     word ptr [edi+4], 10h
or      byte ptr [edi], 0C0h
jmp     def_41CCE3      ; jumptable 0041CCE3 default case

loc_41CDB8:
lea     ecx, [esi+14h]
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
xor     edx, edx
mov     dl, [eax+0Bh]
jmp     short loc_41CD6E

loc_41CDE8:             ; jumptable 0041CCE3 case 3
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 20h ; ' '
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     eax, esi
call    sub_42C592
mov     edx, eax
sub     edx, 400h
mov     ax, [esi+16h]
sub     eax, edx
mov     [esi+4Eh], ax
mov     eax, [edi+2]
sar     eax, 10h
mov     edx, ds:dword_564C72[eax*2]
sar     edx, 10h
mov     ebx, [esi+4Ch]
sar     ebx, 10h
imul    ebx, edx
sar     ebx, 0Ch
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jge     def_41CCE3      ; jumptable 0041CCE3 default case
jmp     loc_41CD0E

loc_41CE65:             ; jumptable 0041CCE3 case 4
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 20h ; ' '
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jge     def_41CCE3      ; jumptable 0041CCE3 default case
or      byte ptr [edi], 1
and     word ptr [edi], 0F73Fh
cmp     word ptr [edi+0Eh], 0
jnz     def_41CCE3      ; jumptable 0041CCE3 default case
and     byte ptr [edi+1], 0FBh
jmp     def_41CCE3      ; jumptable 0041CCE3 default case
sub_41CCC7 endp




sub_41CEB4 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 550h
mov     [esp+1Ch+var_1C], eax
test    byte ptr [eax+1], 4
jz      short loc_41CED9
mov     edi, eax
lea     edi, [edi+50h]
mov     esi, offset unk_510654
jmp     short loc_41CEE3

loc_41CED9:
mov     edi, eax
lea     edi, [edi+50h]
mov     esi, (offset dword_5F8376+2)

loc_41CEE3:
movsd
movsd
mov     al, [ebp+0Ah]
cmp     al, 1
jb      short loc_41CEFB
jbe     short loc_41CF1B
cmp     al, 2
jz      loc_41CF75
jmp     loc_41C6B5

loc_41CEFB:
test    al, al
jnz     loc_41C6B5
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0
mov     word ptr [ebp+4Ch], 0
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 20h

loc_41CF1B:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
add     edx, 50h ; 'P'
lea     eax, [ebp+14h]
mov     ecx, 60h ; '`'
call    sub_4DE552
mov     dx, [ebp+56h]
add     edx, eax
and     dh, 0Fh
mov     [ebp+56h], dx
cmp     ax, 60h ; '`'
jge     loc_41C6B5
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+2], 1
jz      short loc_41CF64
cmp     word ptr [eax+0Ch], 0
jnz     short loc_41CF64
mov     byte ptr [ebp+0Dh], 3
jmp     loc_41CFFF

loc_41CF64:
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0
jmp     loc_41C6B5

loc_41CF75:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
add     edx, 50h ; 'P'
lea     eax, [ebp+14h]
mov     ecx, 20h ; ' '
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+0Ch], 0
jnz     short loc_41CFBB
test    byte ptr [eax+1], 4
jnz     short loc_41CFBB
cmp     dword ptr [ebp+80h], 80000h
jnb     short loc_41CFBB

loc_41CFB5:
mov     byte ptr [ebp+0Dh], 1
jmp     short loc_41CFFF

loc_41CFBB:
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+0Ch], 0
jnz     short loc_41D007
mov     bl, [eax+1]
test    bl, 4
jnz     short loc_41D007
test    bl, 1
jz      short loc_41D007
mov     ecx, [ebp+80h]
cmp     ecx, 80000h
jb      short loc_41CFB5
cmp     word ptr [eax+88h], 2
jz      short loc_41CFF8
cmp     ecx, 200000h
jnb     short loc_41CFF8
mov     byte ptr [ebp+0Dh], 2
jmp     short loc_41CFFF

loc_41CFF8:
mov     byte ptr [ebp+0Dh], 3

loc_41CFFC:
mov     eax, [esp+1Ch+var_1C]

loc_41CFFF:
or      byte ptr [eax], 1
jmp     loc_41C6B5

loc_41D007:
mov     eax, ebp
call    sub_41D118
test    eax, eax
jz      short loc_41D018
mov     byte ptr [ebp+0Dh], 5
jmp     short loc_41CFFC

loc_41D018:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+79h], 0Fh
jz      short loc_41D02E
and     byte ptr [eax+1], 0FBh
inc     word ptr [eax+80h]
jmp     short loc_41D037

loc_41D02E:
mov     word ptr [eax+80h], 0

loc_41D037:
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+80h]
shl     edx, 3
add     dh, 2
mov     eax, ebp
call    sub_42C592
sub     eax, edx
mov     edx, eax
mov     ax, [ebp+16h]
sub     edx, eax
mov     [ebp+4Eh], dx
test    dx, dx
jge     short loc_41D06B
mov     eax, [ebp+4Ch]
sar     eax, 10h
neg     eax
jmp     short loc_41D071

loc_41D06B:
mov     eax, [ebp+4Ch]
sar     eax, 10h

loc_41D071:
cmp     eax, 40h ; '@'
jle     short loc_41D0AB
mov     ax, [ebp+4Eh]
test    ax, ax
jge     short loc_41D091
mov     eax, [ebp+4Ch]
sar     eax, 10h
cmp     eax, 0FFFFFFF8h
jge     short loc_41D0A4
mov     eax, 0FFFFFFF8h
jmp     short loc_41D0A4

loc_41D091:
cmp     ax, 8
jle     short loc_41D09E
mov     eax, 8
jmp     short loc_41D0A4

loc_41D09E:
mov     eax, [ebp+4Ch]
sar     eax, 10h

loc_41D0A4:
shl     eax, 4
mov     [ebp+4Eh], ax

loc_41D0AB:
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
mov     edx, dword ptr ds:unk_564C32[eax*2]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 5
sar     eax, 0Ch
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
add     ebx, eax
mov     edx, [ebp+4Ah]
sar     edx, 10h
add     edx, 100h
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+4]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     edx, [esp+1Ch+var_1C]
mov     [edx+4], ax
mov     bx, [ebp+4Ch]
cmp     bx, 80h
jge     loc_41C6B5
mov     ecx, ebx
add     ecx, 10h
mov     [ebp+4Ch], cx
jmp     loc_41C6B5
sub_41CEB4 endp




sub_41D118 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 550h
mov     [esp+1Ch+var_1C], eax
cmp     word ptr [eax+82h], 0
jnz     short loc_41D196
mov     edi, eax
lea     edi, [edi+38h]
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, eax
lea     edi, [edi+40h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [eax+40h]
lea     esi, [eax+38h]
mov     ecx, 800h
mov     eax, esi
call    sub_4DD4C5
xor     ecx, ecx
mov     cl, [ebp+1]
mov     ebx, [ebp+78h]
lea     edx, [ebp+14h]
mov     eax, esi
call    sub_42CE61
mov     edx, [esp+1Ch+var_1C]
mov     [edx+7Ch], eax
test    eax, eax
jz      short loc_41D196
call    sub_4EE9F8
test    eax, eax
jle     short loc_41D196
mov     eax, 1
jmp     loc_41C6B5

loc_41D196:
xor     eax, eax
jmp     loc_41C6B5
sub_41D118 endp




sub_41D19D proc near
push    esi
push    edi
mov     esi, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_41D1DC
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 1
cmp     byte ptr [esi+0A6h], 1
jnz     short loc_41D1D1
lea     edi, [eax+48h]
lea     esi, [esi+1B8h]
jmp     short loc_41D1DA

loc_41D1D1:
lea     edi, [eax+48h]
lea     esi, [esi+1E0h]

loc_41D1DA:
movsd
movsd

loc_41D1DC:
xor     eax, eax
pop     edi
pop     esi
retn
sub_41D19D endp




sub_41D1E1 proc near
push    ecx
push    edx
mov     ecx, [eax+12h]
sar     ecx, 10h
sar     ecx, 9
mov     edx, ds:dword_51065A
sar     edx, 10h
sub     ecx, edx
mov     edx, [eax+16h]
sar     edx, 10h
sar     edx, 9
mov     eax, ds:dword_51065A+2
sar     eax, 10h
sub     edx, eax
mov     eax, ds:dword_51065E
sar     eax, 10h
cmp     ecx, eax
jnb     short loc_41D227
mov     eax, ds:dword_51065E+2
sar     eax, 10h
cmp     edx, eax
jnb     short loc_41D227
xor     eax, eax
pop     edx
pop     ecx
retn

loc_41D227:
mov     eax, 1
pop     edx
pop     ecx
retn
sub_41D1E1 endp




sub_41D22F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
call    sub_4DDFD0
mov     esi, eax
test    eax, eax
jz      loc_41D2C7
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Dh
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+3], 0
mov     al, [edx+0A4h]
mov     [esi+0Ch], al
mov     byte ptr [esi+0Fh], 1
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     ax, [edx+56h]
mov     [esi+56h], ax
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     word ptr [esi+0B0h], 0
mov     ax, [esi+0B0h]
mov     [esi+6Eh], ax
push    305880h
mov     ecx, 50h ; 'P'
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_436785
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41D2C7:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41D22F endp




sub_41D2D1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     ecx, [eax+550h]
xor     ebx, ebx
jmp     short loc_41D334

loc_41D2E3:
mov     ax, [esi+56h]
sub     eax, 400h

loc_41D2ED:
and     ah, 0Fh
mov     [ecx+3Ah], ax
lea     edi, [ebp+8Ch]
lea     eax, [ecx+38h]
mov     edx, edi
call    sub_4EF638
mov     dword ptr [ecx+40h], 200h
mov     dword ptr [ecx+44h], 200h
mov     dword ptr [ecx+48h], 200h
mov     dword ptr [ecx+4Ch], 0
lea     edx, [ecx+40h]
mov     eax, edi
call    sub_4EF689

loc_41D32A:
inc     ebx
cmp     ebx, 6
jge     loc_41D3C9

loc_41D334:
call    sub_4DE043
mov     ebp, eax
test    eax, eax
jz      short loc_41D32A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 3
mov     dword ptr [eax+0C8h], (offset dword_5F880A+2)
movzx   edi, ds:byte_510670[ebx]
mov     dx, [esi+edi*8+190h]
mov     [eax+14h], dx
movzx   edi, ds:byte_510670[ebx]
mov     dx, [esi+edi*8+192h]
mov     [eax+16h], dx
xor     edx, edx
mov     dl, ds:byte_510670[ebx]
shl     edx, 3
lea     edi, [esi+edx]
mov     dx, [edi+194h]
mov     [eax+18h], dx
mov     dword ptr [ecx+38h], 0
mov     dword ptr [ecx+3Ch], 0
mov     ax, [esi+54h]
add     ax, ds:word_510664[ebx*2]
and     ah, 0Fh
mov     [ecx+38h], ax
cmp     ebx, 3
jge     loc_41D2E3
mov     ax, [esi+56h]
add     ah, 4
jmp     loc_41D2ED

loc_41D3C9:
xor     eax, eax
jmp     def_41CA01      ; jumptable 0041CA01 default case
sub_41D2D1 endp




sub_41D3D0 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
lea     ebx, [eax+550h]
and     byte ptr [ebx+1], 0F6h
mov     edx, [ebx+18h]
and     edx, 0FFFFFFh
jz      loc_41D4DA
test    byte ptr [ebx+1Bh], 38h
jz      loc_41D4CD
mov     word ptr [ebx+0Ch], 0
cmp     word ptr [ebx+0Eh], 0
jnz     short loc_41D40A
and     byte ptr [ebx+1], 0FBh

loc_41D40A:
or      byte ptr [ebx+1], 9
mov     ax, [ecx+6Eh]
mov     [ecx+0B2h], ax
mov     edi, eax
sub     edi, edx
mov     [ecx+6Eh], di
test    di, di
jg      short loc_41D474
cmp     byte ptr [ecx+9], 2
jz      short loc_41D46E
call    sub_4B55BB
test    eax, eax
jz      short loc_41D46E
mov     word ptr [ecx+0B2h], 0
mov     ax, [ecx+0B2h]
mov     [ecx+6Eh], ax
and     byte ptr [ebx], 0F3h
xor     edx, edx
mov     dl, [ecx+2]
mov     eax, ds:dword_55A108
mov     edx, [eax+edx*4]
mov     dl, [edx+9]
and     edx, 0FFh
mov     byte ptr [ecx+9], 4
mov     word ptr [ecx+0Ah], 0
jmp     short loc_41D474

loc_41D46E:
mov     word ptr [ecx+6Eh], 1

loc_41D474:
test    byte ptr [ebx], 8
jz      short loc_41D4B5
add     [ebx+0Ah], dx
test    byte ptr [ebx+1Bh], 20h
jnz     short loc_41D4A0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
mov     edx, [edx+eax*4]
xor     eax, eax
mov     al, [edx+9]
mov     edx, [ebx+8]
sar     edx, 10h
cmp     edx, eax
jl      short loc_41D4C2

loc_41D4A0:
lea     edx, [ecx+14h]
mov     eax, 0A2h
call    sub_4D8BC3
mov     word ptr [ebx+0Ah], 0
jmp     short loc_41D4C2

loc_41D4B5:
lea     edx, [ecx+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_41D4C2:
mov     word ptr [ecx+15Eh], 7FFFh
jmp     short loc_41D4DA

loc_41D4CD:
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_41D4DA:
mov     eax, 1
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_41D3D0 endp




sub_41D4E4 proc near
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
lea     esi, [eax+640h]
mov     ebx, esi
mov     edx, offset dword_560BDC
call    sub_41D588
mov     edx, esi
mov     eax, ecx
call    sub_41D809
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_41D54D
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_41D554

loc_41D54D:
mov     eax, ecx
call    sub_4DEADD

loc_41D554:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41D4E4 endp

align 4
jpt_41D5A7 dd offset loc_41D5AE ; jump table for switch statement
dd offset loc_41D604
dd offset loc_41D62E
dd offset loc_41D6AE
dd offset loc_41D6F3
dd offset loc_41D74A
dd offset loc_41D770
dd offset loc_41D79F
dd offset loc_41D7CF
dd offset loc_41D7E6
dd offset def_41D5A7



sub_41D588 proc near

var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     edi, eax
mov     ebp, edx
mov     [esp+2Ch+var_14], ebx
mov     dl, [eax+8]
cmp     dl, 0Ah         ; switch 11 cases
ja      def_41D5A7      ; jumptable 0041D5A7 default case, case 10
xor     eax, eax
mov     al, dl
jmp     jpt_41D5A7[eax*4] ; switch jump

loc_41D5AE:             ; jumptable 0041D5A7 case 0
or      byte ptr [edi], 2
xor     edx, edx
mov     eax, edi
call    sub_4DD0F8
mov     dword ptr [edi+158h], 2000200h
mov     dword ptr [edi+15Ch], 200h
mov     word ptr [edi+15Eh], 4210h
mov     dword ptr [edi+78h], 0
mov     byte ptr [edi+0ACh], 1
mov     byte ptr [edi+0ADh], 0FFh
xor     ebx, ebx

loc_41D5EE:
mov     edx, [esp+2Ch+var_14]

loc_41D5F2:
mov     eax, edi
call    sub_41D7F0

loc_41D5F9:
inc     byte ptr [edi+8]

def_41D5A7:             ; jumptable 0041D5A7 default case, case 10
add     esp, 1Ch
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_41D604:             ; jumptable 0041D5A7 case 1
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Eh ; '.'
mov     eax, edi
call    sub_4DD43B
cmp     dword ptr [ebp+10h], 0Ch
jle     short loc_41D61F
sub     word ptr [edi+56h], 16h

loc_41D61F:
cmp     dword ptr [ebp+10h], 20h ; ' '
jnz     short def_41D5A7 ; jumptable 0041D5A7 default case, case 10
mov     byte ptr [edi+0ACh], 2
jmp     short loc_41D5F9

loc_41D62E:             ; jumptable 0041D5A7 case 2
cmp     byte ptr [edi+0A4h], 11h
jnb     short loc_41D67A
mov     eax, [edi+54h]
sar     eax, 10h
sub     eax, 1B8h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Eh ; '.'
mov     esi, esp
call    sub_4DD510
lea     edx, [esp+2Ch+var_1C]
mov     eax, esp
call    sub_4DD57B
mov     eax, [esp+2Ch+var_1C]
add     [edi+14h], ax
mov     eax, [esp+2Ch+var_18]
add     [edi+18h], ax
mov     eax, [esp+2Ch+var_2C]
add     [edi+1Ch], eax
mov     eax, [esp+2Ch+var_24]
add     [edi+24h], eax

loc_41D67A:
cmp     byte ptr [ebp+9], 4
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
mov     ebx, [ebp+10h]
cmp     ebx, 69h ; 'i'
jnz     short loc_41D696
mov     ebx, 1
jmp     loc_41D730

loc_41D696:
cmp     ebx, 0B4h
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
mov     byte ptr [edi+0ACh], 3
jmp     loc_41D5F9

loc_41D6AE:             ; jumptable 0041D5A7 case 3
mov     ah, [edi+0A4h]
cmp     ah, 19h
jnz     short loc_41D6C0
mov     ebx, 2
jmp     short loc_41D6CA

loc_41D6C0:
cmp     ah, 1Ah
jnz     short loc_41D6D5
mov     ebx, 3

loc_41D6CA:
mov     edx, [esp+2Ch+var_14]
mov     eax, edi
call    sub_41D7F0

loc_41D6D5:
mov     dh, [ebp+8]
cmp     dh, 1
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
cmp     byte ptr [ebp+9], 0
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
add     [edi+8], dh
jmp     def_41D5A7      ; jumptable 0041D5A7 default case, case 10

loc_41D6F3:             ; jumptable 0041D5A7 case 4
cmp     byte ptr [ebp+9], 1
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
mov     eax, [ebp+10h]
cmp     eax, 0B4h
jb      short loc_41D722
jbe     short loc_41D72B
cmp     eax, 10Eh
jb      def_41D5A7      ; jumptable 0041D5A7 default case, case 10
jbe     short loc_41D72B
cmp     eax, 118h
jz      short loc_41D740
jmp     def_41D5A7      ; jumptable 0041D5A7 default case, case 10

loc_41D722:
cmp     eax, 78h ; 'x'
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10

loc_41D72B:
mov     ebx, 4

loc_41D730:
mov     edx, [esp+2Ch+var_14]
mov     eax, edi
call    sub_41D7F0
jmp     def_41D5A7      ; jumptable 0041D5A7 default case, case 10

loc_41D740:
inc     dl
mov     [edi+8], dl
jmp     def_41D5A7      ; jumptable 0041D5A7 default case, case 10

loc_41D74A:             ; jumptable 0041D5A7 case 5
cmp     byte ptr [ebp+9], 2
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
cmp     dword ptr [ebp+10h], 1
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
mov     byte ptr [edi+0ACh], 6
mov     word ptr [ebx+2], 0
jmp     loc_41D5F9

loc_41D770:             ; jumptable 0041D5A7 case 6
mov     byte ptr [edi+0ADh], 0FFh
cmp     byte ptr [ebp+9], 2
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
mov     ecx, [ebp+10h]
cmp     ecx, 23h ; '#'
jz      short loc_41D72B
cmp     ecx, 46h ; 'F'
jz      short loc_41D72B
cmp     ecx, 96h
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
jmp     loc_41D5F9

loc_41D79F:             ; jumptable 0041D5A7 case 7
cmp     byte ptr [ebp+9], 2
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
cmp     dword ptr [ebp+10h], 0E6h
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
mov     byte ptr [edi+0ACh], 4
mov     edx, ebx
mov     word ptr [ebx+2], 0
mov     ebx, 5
jmp     loc_41D5F2

loc_41D7CF:             ; jumptable 0041D5A7 case 8
mov     eax, [edi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
jmp     loc_41D740

loc_41D7E6:             ; jumptable 0041D5A7 case 9
mov     ebx, 5
jmp     loc_41D5EE
sub_41D588 endp




sub_41D7F0 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_51069D[ebx*4]
mov     [edx+4], eax
retn
sub_41D7F0 endp




sub_41D809 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+0Bh]
sar     eax, 18h
mov     edx, [edx+4]
mov     al, [edx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_41D82E
jbe     short loc_41D831
cmp     al, 7Fh
jnz     short loc_41D82E
mov     byte ptr [esi+0Eh], 0
jmp     short loc_41D831

loc_41D82E:
inc     byte ptr [esi+0Eh]

loc_41D831:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     edx, [esi+4]
mov     al, [edx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_41D873
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 8
mov     ebx, 21h ; '!'
mov     edx, 1Fh
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 0C000Bh
mov     eax, edi
call    sub_4EE044

loc_41D873:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41D809 endp




sub_41D87E proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_41D884[edx*4]
pop     edx
retn
sub_41D87E endp




sub_41D88D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+158h], 200h
mov     word ptr [ecx+15Ah], 200h
mov     word ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 400h
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+50h]
mov     [ecx+4Eh], ax
mov     [ecx+4Ch], ax
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
call    sub_436708
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0Ch], 0
xor     edx, edx
mov     dl, [ecx+2]
mov     eax, ds:dword_55A108
mov     eax, [eax+edx*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+0B0h], ax
mov     [ecx+6Eh], ax
mov     word ptr [ecx+0B2h], 0
mov     byte ptr [ecx+74h], 1
mov     word ptr [ebx+8], 0
mov     word ptr [ebx+0Ah], 0
mov     word ptr [ebx+0Ch], 0
lea     edi, [ebx+10h]
lea     esi, [ebx+8]
movsd
movsd
mov     ax, [ecx+56h]
add     ah, 4
mov     [ebx], ax
mov     ax, [ebx+8]
mov     [ecx+14h], ax
mov     ax, [ebx+0Ch]
sub     eax, 0E00h
mov     [ecx+18h], ax
mov     ax, [ebx+0Ah]
sub     eax, 800h
mov     [ecx+16h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
xor     edx, edx

loc_41D9AF:
xor     esi, esi
mov     ds:dword_559198[edx*8], esi
mov     ds:dword_55919C[edx*8], esi
inc     edx
cmp     edx, 8
jb      short loc_41D9AF
mov     word ptr [ebx+2], 80h
mov     word ptr [ebx+4], 3Ch ; '<'
mov     word ptr [ebx+6], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
jmp     loc_41DDDD
sub_41D88D endp




sub_41D9F7 proc near
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
mov     word ptr [eax+15Eh], 4210h
call    sub_41DA88
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_41DA39[edx*4]
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_41DA61
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_41DA68

loc_41DA61:
mov     eax, ecx
call    sub_4DEADD

loc_41DA68:
cmp     byte ptr [ecx+8], 2
jz      loc_41DDDD
cmp     byte ptr [ecx+9], 3
jz      loc_41DDDD
mov     eax, ecx
call    sub_41DADD
jmp     loc_41DDDD
sub_41D9F7 endp




sub_41DA88 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 3
jz      short loc_41DAD9
xor     eax, eax
jmp     short loc_41DA9D

loc_41DA97:
inc     eax
cmp     eax, 8
jge     short loc_41DAAC

loc_41DA9D:
mov     edx, ds:dword_559198[eax*8]
and     edx, 0FFFFFFh
jz      short loc_41DA97

loc_41DAAC:
test    edx, edx
jz      short loc_41DAD9
sub     [ecx+6Eh], dx
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A0h
call    sub_4D89E4
mov     word ptr [ecx+15Eh], 7FFFh
cmp     word ptr [ecx+6Eh], 0
jg      short loc_41DAD9
mov     eax, ecx
call    sub_41E39B

loc_41DAD9:
pop     edx
pop     ecx
pop     ebx
retn
sub_41DA88 endp




sub_41DADD proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
xor     ebp, ebp
jmp     short loc_41DAEE

loc_41DAE8:
inc     ebp
cmp     ebp, 8
jnb     short loc_41DB5E

loc_41DAEE:
mov     eax, ebp
shl     eax, 3
xor     edx, edx
mov     ds:dword_559198[eax], edx
mov     edx, ss:(off_5106DA+1)[ebp]
sar     edx, 18h
mov     esi, [esp+1Ch+var_1C]
lea     edi, unk_5591D8[eax]
lea     esi, [esi+edx*8+190h]
movsd
movsd
lea     edx, [ebp+ebp+0]
mov     esi, offset unk_5591D8
add     esi, eax
add     eax, offset dword_559198
test    ebp, ebp
jnz     short loc_41DB55
push    ebp
push    ebp

loc_41DB2C:
push    4080000h
push    eax
xor     eax, eax
mov     ecx, [esp+2Ch+var_1C]
mov     al, [ecx+1]
push    eax
mov     edx, ds:dword_5106E4[edx]
sar     edx, 10h
mov     ecx, 8000h
xor     ebx, ebx
mov     eax, esi
call    sub_4E01FC
jmp     short loc_41DAE8

loc_41DB55:
push    80h
push    0
jmp     short loc_41DB2C

loc_41DB5E:
add     esp, 4
jmp     loc_41DDDC
sub_41DADD endp




sub_41DB66 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ax, [eax+56h]
sub     eax, 0Ch
and     ah, 0Fh
mov     [ecx+56h], ax
sub     eax, 400h
and     ah, 0Fh
mov     [esi], ax
cwde
call    sub_4EF008
shl     eax, 9
mov     edx, eax
shl     eax, 3
sub     eax, edx
sar     eax, 0Ch
mov     [ecx+14h], ax
mov     ax, [esi+0Ah]
sub     eax, 800h
mov     [ecx+16h], ax
movsx   eax, word ptr [esi]
call    sub_4EF003
shl     eax, 9
mov     edx, eax
shl     eax, 3
sub     eax, edx
sar     eax, 0Ch
mov     [ecx+18h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
mov     dx, [esi+4]
test    dx, dx
jnz     short loc_41DC2B
cmp     word ptr [esi+6], 2
jnz     short loc_41DC0A
mov     word ptr [esi+4], 0C8h
mov     [esi+6], dx
jmp     short loc_41DC14

loc_41DC0A:
mov     word ptr [esi+4], 0Fh
inc     word ptr [esi+6]

loc_41DC14:
mov     eax, ecx
call    sub_41E8A6
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A3h
call    sub_4D89E4
jmp     short loc_41DC32

loc_41DC2B:
mov     ebx, edx
dec     ebx
mov     [esi+4], bx

loc_41DC32:
mov     dx, [esi+2]
test    dx, dx
jnz     short loc_41DC65
call    rand_
test    al, 3Fh
jnz     short loc_41DC6C
call    rand_
test    al, 1
jz      short loc_41DC59
mov     eax, ecx
call    sub_41E305
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41DC59:
mov     eax, ecx
call    sub_41E2C6
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41DC65:
mov     ebx, edx
dec     ebx
mov     [esi+2], bx

loc_41DC6C:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41DB66 endp




sub_41DC71 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_41DC77[edx*4]
pop     edx
retn
sub_41DC71 endp




sub_41DC80 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
push    eax
lea     ebp, [eax+640h]
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
mov     dx, [ebp+2]
test    dx, dx
jnz     loc_41DD3D
mov     eax, [esp+2Ch+var_2C]
mov     byte ptr [eax+0ACh], 1
lea     edi, [ebp+1Ah]
mov     esi, eax
lea     esi, [esi+14h]
movsd
movsd
mov     ax, [eax+56h]
sub     eax, 400h
and     ah, 0Fh
mov     [ebp+22h], ax
mov     eax, [ebp+18h]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_28], eax
mov     eax, [ebp+1Ah]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_24], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_20], eax
push    0
push    0
mov     ebx, [ebp+20h]
sar     ebx, 10h
lea     eax, [ebp+1Ah]
mov     ecx, 7000h
lea     edx, [esp+34h+var_28]
call    sub_4DD4C5
mov     ax, [ebp+22h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+22h], ax
mov     word ptr [ebp+2], 40h ; '@'
mov     word ptr [ebp+4], 0
mov     eax, [esp+2Ch+var_2C]
inc     byte ptr [eax+0Ah]
jmp     short loc_41DD44

loc_41DD3D:
mov     ebx, edx
dec     ebx
mov     [ebp+2], bx

loc_41DD44:
add     esp, 14h
jmp     loc_41DDDC
sub_41DC80 endp




sub_41DD4C proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
add     eax, 640h
mov     [esp+34h+var_1C], eax
cmp     byte ptr [ebp+0ACh], 1
jnz     short loc_41DD79
cmp     byte ptr [ebp+0A7h], 0
jz      short loc_41DD79
mov     byte ptr [ebp+0ACh], 3

loc_41DD79:
mov     eax, [esp+34h+var_1C]
cmp     word ptr [eax+2], 14h
jnz     short loc_41DD8D
mov     byte ptr [ebp+0ACh], 2
jmp     short loc_41DD96

loc_41DD8D:
cmp     byte ptr [ebp+0ACh], 2
jnz     short loc_41DDA6

loc_41DD96:
cmp     byte ptr [ebp+0A7h], 0
jz      short loc_41DDA6
mov     byte ptr [ebp+0ACh], 0

loc_41DDA6:
mov     eax, [esp+34h+var_1C]
cmp     word ptr [eax+2], 0
jnz     short loc_41DDE3
mov     byte ptr [ebp+0ACh], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A4h
call    sub_4D89E4
mov     eax, [esp+34h+var_1C]
mov     word ptr [eax+2], 58h ; 'X'
mov     word ptr [eax+4], 0

loc_41DDD6:
inc     byte ptr [ebp+0Ah]

loc_41DDD9:
add     esp, 1Ch

loc_41DDDC:
pop     ebp

loc_41DDDD:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41DDE3:
lea     edi, [esp+34h+var_24]
mov     esi, eax
lea     esi, [esi+1Ah]
movsd
movsd
mov     eax, [esp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [esp+34h+var_34], eax
mov     eax, [esp+34h+var_24]
sar     eax, 10h
shl     eax, 10h
mov     [esp+34h+var_30], eax
mov     eax, [esp+34h+var_24+2]
sar     eax, 10h
shl     eax, 10h
mov     [esp+34h+var_2C], eax
push    0
push    0
mov     ebx, [esp+3Ch+var_1C]
mov     ebx, [ebx+20h]
sar     ebx, 10h
mov     ecx, 7000h
lea     edx, [esp+3Ch+var_34]
lea     eax, [esp+3Ch+var_24]
call    sub_4DD4C5
mov     eax, [esp+34h+var_1C]
mov     ax, [eax+22h]
sub     eax, 20h ; ' '
and     ah, 0Fh
mov     edx, [esp+34h+var_1C]
mov     [edx+22h], ax
lea     edi, [ebp+14h]
lea     esi, [esp+34h+var_24]
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, esp
movsd
movsd
movsd
movsd
mov     ax, [ebp+56h]
sub     eax, 20h ; ' '
and     ah, 0Fh
mov     [ebp+56h], ax
dec     word ptr [edx+2]
jmp     loc_41DDD9
sub_41DD4C endp




sub_41DE76 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
push    eax
lea     ebp, [eax+640h]
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
cmp     word ptr [ebp+2], 0
jnz     loc_41DF2E
mov     eax, [esp+2Ch+var_2C]
mov     byte ptr [eax+0ACh], 1
lea     edi, [ebp+1Ah]
mov     esi, eax
lea     esi, [esi+14h]
movsd
movsd
mov     ax, [eax+56h]
sub     eax, 400h
and     ah, 0Fh
mov     [ebp+22h], ax
mov     eax, [ebp+18h]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_28], eax
mov     eax, [ebp+1Ah]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_24], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_20], eax
push    0
push    0
mov     ebx, [ebp+20h]
sar     ebx, 10h
lea     eax, [ebp+1Ah]
mov     ecx, 7000h
lea     edx, [esp+34h+var_28]
call    sub_4DD4C5
mov     ax, [ebp+22h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+22h], ax
mov     word ptr [ebp+2], 40h ; '@'
mov     eax, [esp+2Ch+var_2C]
inc     byte ptr [eax+0Ah]
jmp     loc_41DD44

loc_41DF2E:
mov     eax, [esp+2Ch+var_2C]
call    sub_41E551
dec     word ptr [ebp+2]
jmp     loc_41DD44
sub_41DE76 endp




sub_41DF3F proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
add     eax, 640h
mov     [esp+34h+var_1C], eax
cmp     byte ptr [ebp+0ACh], 1
jnz     short loc_41DF6C
cmp     byte ptr [ebp+0A7h], 0
jz      short loc_41DF6C
mov     byte ptr [ebp+0ACh], 3

loc_41DF6C:
mov     eax, [esp+34h+var_1C]
cmp     word ptr [eax+2], 14h
jnz     short loc_41DF80
mov     byte ptr [ebp+0ACh], 2
jmp     short loc_41DF89

loc_41DF80:
cmp     byte ptr [ebp+0ACh], 2
jnz     short loc_41DF99

loc_41DF89:
cmp     byte ptr [ebp+0A7h], 0
jz      short loc_41DF99
mov     byte ptr [ebp+0ACh], 0

loc_41DF99:
mov     eax, [esp+34h+var_1C]
cmp     word ptr [eax+2], 0
jnz     loc_41DDE3
mov     byte ptr [ebp+0ACh], 0
mov     word ptr [eax+2], 18h
jmp     loc_41DDD6
sub_41DF3F endp




sub_41DFBA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
mov     dx, [edi+2]
test    dx, dx
jnz     short loc_41DFF3
mov     eax, esi
call    sub_41E268
jmp     loc_41DDDD

loc_41DFF3:
mov     ebx, edx
dec     ebx
mov     [edi+2], bx
jmp     loc_41DDDD
sub_41DFBA endp




sub_41DFFF proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_41E005[edx*4]
pop     edx
retn
sub_41DFFF endp




sub_41E00E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
cmp     byte ptr [esi+0A7h], 0
jz      loc_41DDDD
mov     byte ptr [esi+0ACh], 4
mov     word ptr [edi+2], 22h ; '"'
inc     byte ptr [esi+0Ah]
jmp     loc_41DDDD
sub_41E00E endp




sub_41E054 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
cmp     word ptr [edi+2], 0
jnz     short loc_41E07C
mov     byte ptr [eax+0ACh], 7
mov     ah, [eax+0Ah]
inc     ah
mov     [esi+0Ah], ah
jmp     loc_41DDDD

loc_41E07C:
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
cmp     word ptr [edi+2], 2
jle     short loc_41E0A8
mov     dx, [esi+56h]
sub     edx, 20h ; ' '
and     dh, 0Fh
mov     [esi+56h], dx

loc_41E0A8:
dec     word ptr [edi+2]
jmp     loc_41DDDD
sub_41E054 endp




sub_41E0B1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     eax, 640h
cmp     byte ptr [ecx+0A7h], 0
jz      short loc_41E0ED
mov     word ptr [ecx+44h], 400h
mov     word ptr [ecx+46h], 900h
mov     word ptr [ecx+48h], 0
mov     word ptr [eax+2], 20h ; ' '
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A7h
call    sub_4D89E4
inc     byte ptr [ecx+0Ah]

loc_41E0ED:
pop     edx
pop     ecx
pop     ebx
retn
sub_41E0B1 endp




sub_41E0F1 proc near
push    ebx
push    ecx
push    edx
push    esi
lea     esi, [eax+640h]
mov     dx, [esi+2]
test    dx, dx
jnz     short loc_41E116
mov     word ptr [esi+2], 5Ah ; 'Z'
mov     [esi+4], dx
inc     byte ptr [eax+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41E116:
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
dec     word ptr [esi+2]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41E0F1 endp




sub_41E136 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
mov     bx, [edx+2]
test    bx, bx
jnz     short loc_41E171
mov     word ptr [eax+44h], 500h
mov     word ptr [eax+46h], 180h
mov     word ptr [edx+2], 40h ; '@'
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A8h
call    sub_4D89E4
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_41E171:
mov     eax, ebx
xor     ah, bh
and     al, 0Fh
cwde
movsx   ax, ds:byte_510726[eax]
add     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     eax, ecx
call    sub_41E71F
dec     word ptr [edx+2]
pop     edx
pop     ecx
pop     ebx
retn
sub_41E136 endp




sub_41E19F proc near
push    ebx
push    ecx
push    edx
push    esi
lea     esi, [eax+640h]
cmp     word ptr [esi+2], 0
jnz     short loc_41E1BF
mov     byte ptr [eax+0ACh], 8
inc     byte ptr [eax+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41E1BF:
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
dec     word ptr [esi+2]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41E19F endp




sub_41E1DF proc near
push    edx
mov     dx, [eax+56h]
sub     edx, 20h ; ' '
and     dh, 0Fh
mov     [eax+56h], dx
cmp     byte ptr [eax+0A7h], 0
jz      short loc_41E1FC
call    sub_41E268

loc_41E1FC:
pop     edx
retn
sub_41E1DF endp




sub_41E1FE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
lea     ecx, [eax+640h]
call    sub_41E45D
cmp     byte ptr [edx+0Ah], 0
jnz     short loc_41E230
cmp     ds:byte_77EAB8, 0
jnz     short loc_41E230
mov     eax, 10h
call    sub_4D9040
call    sub_436710
inc     byte ptr [edx+0Ah]

loc_41E230:
mov     bx, [ecx+2]
test    bx, bx
jnz     short loc_41E25C
cmp     byte ptr [edx+0Ah], 0
jz      short loc_41E263
mov     ch, ds:byte_77EAB8
test    ch, ch
jnz     short loc_41E263
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+8], 2
mov     [edx+9], ch
mov     [edx+0Ah], ch
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41E25C:
mov     esi, ebx
dec     esi
mov     [ecx+2], si

loc_41E263:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41E1FE endp




sub_41E268 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+640h]
lea     edi, [eax+14h]
lea     esi, [edx+10h]
movsd
movsd
mov     bx, [edx+18h]
mov     [eax+56h], bx
mov     ecx, [eax+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+1Ch], ecx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
mov     ecx, [eax+16h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+24h], ecx
mov     word ptr [edx+2], 80h
mov     word ptr [edx+4], 1Eh
mov     word ptr [edx+6], 0
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
jmp     loc_41DDDD
sub_41E268 endp




sub_41E2C6 proc near
push    ebx
push    edx
push    esi
push    edi
lea     edx, [eax+640h]
lea     edi, [edx+10h]
lea     esi, [eax+14h]
movsd
movsd
mov     bx, [eax+56h]
mov     [edx+18h], bx
mov     word ptr [edx+2], 40h ; '@'
mov     word ptr [eax+44h], 600h
mov     word ptr [eax+46h], 0
mov     word ptr [eax+48h], 0
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_41E2C6 endp




sub_41E305 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
mov     ax, [eax+56h]
add     ah, 8
and     ah, 0Fh
mov     [edx+18h], ax
sub     eax, 400h
and     ah, 0Fh
mov     [edx], ax
cwde
call    sub_4EF008
shl     eax, 9
mov     ebx, eax
shl     eax, 3
sub     eax, ebx
sar     eax, 0Ch
mov     [edx+10h], ax
mov     ax, [edx+0Ah]
sub     eax, 800h
mov     [edx+12h], ax
movsx   eax, word ptr [edx]
call    sub_4EF003
shl     eax, 9
mov     ebx, eax
shl     eax, 3
sub     eax, ebx
sar     eax, 0Ch
mov     [edx+14h], ax
mov     byte ptr [ecx+0ACh], 5
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A6h
call    sub_4D89E4
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0FA00h
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+9], 2
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_41E305 endp




sub_41E39B proc near

var_28= dword ptr -28h
var_24= byte ptr -24h
var_22= word ptr -22h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
push    eax
add     eax, 640h
mov     [esp+28h+var_1C], eax
xor     ebx, ebx
mov     edx, 9
mov     eax, [esp+28h+var_28]
call    sub_4DE96B
mov     eax, [esp+28h+var_1C]
mov     word ptr [eax+2], 96h
mov     word ptr [eax+4], 0
mov     eax, [esp+28h+var_28]
mov     word ptr [eax+44h], 280h
mov     word ptr [eax+46h], 1
mov     eax, 11h
call    sub_4D8E2B
mov     eax, 13h
call    sub_4D8E2B
xor     ebp, ebp

loc_41E3F2:
movzx   esi, ds:byte_5106B8[ebp*2]
shl     esi, 3
add     esi, [esp+28h+var_28]
lea     edi, [esp+28h+var_24]
lea     esi, [esi+190h]
movsd
movsd
mov     al, ds:byte_5106B9[ebp*2]
xor     ah, ah
sub     [esp+28h+var_22], ax
push    0
push    0FFFFFFF8h
mov     ecx, 10h
mov     ebx, 1
mov     edx, 80h
lea     eax, [esp+30h+var_24]
call    sub_43954B
mov     esi, eax
mov     eax, ebp
shl     eax, 2
add     eax, [esp+28h+var_1C]
mov     [eax+24h], esi
inc     ebp
cmp     ebp, 4
jb      short loc_41E3F2
mov     eax, [esp+28h+var_28]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
add     esp, 10h
jmp     loc_41DDDC
sub_41E39B endp




sub_41E45D proc near

var_22= dword ptr -22h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
add     eax, 640h
mov     [esp+24h+var_1C], eax
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
mov     eax, ebp
call    sub_4DD43B
mov     eax, [esp+24h+var_1C]
mov     dx, [eax+4]
test    dx, dx
jnz     short loc_41E4EE
call    rand_
and     eax, 7
movsx   ax, ds:byte_510736[eax]
mov     edx, [esp+24h+var_1C]
mov     [edx+4], ax
xor     edx, edx
jmp     short loc_41E4B9

loc_41E4B3:
inc     edx
cmp     edx, 3
jnb     short loc_41E4F5

loc_41E4B9:
call    rand_
and     eax, 0Fh
movzx   esi, ds:byte_51073E[eax]
call    sub_4DE13B
test    eax, eax
jz      short loc_41E4B3
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
lea     edi, [eax+48h]
lea     esi, [ebp+esi*8+190h]
movsd
movsd
mov     byte ptr [eax+0Dh], 2
jmp     short loc_41E4B3

loc_41E4EE:
mov     ebx, edx
dec     ebx
mov     [eax+4], bx

loc_41E4F5:
xor     edx, edx
mov     ebx, [esp+24h+var_1C]

loc_41E4FB:
movzx   esi, ds:byte_5106B8[edx*2]
mov     edi, esp
lea     esi, [ebp+esi*8+190h]
movsd
movsd
mov     al, ds:byte_5106B9[edx*2]
xor     ah, ah
sub     word ptr [esp+24h+var_22], ax
mov     ecx, edx
shl     ecx, 2
add     ecx, ebx
mov     esi, [ecx+24h]
mov     eax, [esp]
mov     [esi+1Ch], ax
mov     esi, [ecx+24h]
mov     eax, [esp+24h+var_22]
mov     [esi+1Eh], ax
mov     ecx, [ecx+24h]
mov     eax, [esp+24h+var_22+2]
mov     [ecx+20h], ax
inc     edx
cmp     edx, 4
jb      short loc_41E4FB
add     esp, 0Ch
jmp     loc_41DDDC
sub_41E45D endp




sub_41E551 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
add     eax, 640h
cmp     dword ptr [ecx+80h], 0F42400h
ja      loc_41E5E3
mov     dx, [eax+4]
test    dx, dx
jnz     short loc_41E5DC
mov     word ptr [eax+4], 2
xor     esi, esi
cmp     dword ptr [ecx+80h], offset unk_53EC60
ja      short loc_41E58E
mov     esi, 1

loc_41E58E:
cmp     dword ptr [ecx+80h], offset unk_557300
ja      short loc_41E59F
mov     esi, 2

loc_41E59F:
cmp     dword ptr [ecx+80h], 225510h
ja      short loc_41E5B0
mov     esi, 3

loc_41E5B0:
mov     ebx, esi
xor     edx, edx
mov     eax, ecx
call    sub_41E5E8
mov     ebx, esi
mov     edx, 1
mov     eax, ecx
call    sub_41E5E8
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A5h
call    sub_4D89E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41E5DC:
mov     ebx, edx
dec     ebx
mov     [eax+4], bx

loc_41E5E3:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41E551 endp




sub_41E5E8 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     edi, eax
mov     ebp, edx
lea     eax, [ebx+ebx]
test    edx, edx
jnz     short loc_41E60F
mov     eax, ds:off_51074E[eax]
sar     eax, 10h
mov     edx, [edi+54h]
sar     edx, 10h
sub     edx, eax
mov     eax, edx
jmp     short loc_41E620

loc_41E60F:
mov     eax, ds:off_51074E[eax]
sar     eax, 10h
mov     edx, [edi+54h]
sar     edx, 10h
add     eax, edx

loc_41E620:
and     eax, 0FFFh
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 400h
mov     esi, esp
call    sub_4DD510
lea     edx, [esp+28h+var_18]
mov     eax, esp
call    sub_4DD57B
call    sub_4DE043
mov     esi, eax
test    eax, eax
jz      loc_41E717
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 4
xor     eax, eax
mov     al, byte ptr ss:off_51074E[ebp]
mov     ax, [edi+eax*8+190h]
mov     [esi+14h], ax
xor     eax, eax
mov     al, byte ptr ss:off_51074E[ebp]
mov     ax, [edi+eax*8+192h]
sub     eax, 8
mov     [esi+16h], ax
xor     eax, eax
mov     al, byte ptr ss:off_51074E[ebp]
mov     ax, [edi+eax*8+194h]
mov     [esi+18h], ax
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     eax, ds:(dword_510756+2)[ebp*4]
sar     eax, 10h
push    eax
push    0
mov     ecx, ds:dword_510756[ebp*4]
sar     ecx, 10h
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+1Ch]
lea     eax, [esi+14h]
call    sub_4DD4C5
mov     eax, [esp+28h+var_18]
shl     eax, 8
mov     [esi+44h], ax
mov     word ptr [esi+46h], 3000h
mov     eax, [esp+28h+var_14]
shl     eax, 8
mov     [esi+48h], ax
mov     word ptr [esi+4Ch], 0
mov     word ptr [esi+4Eh], 0
mov     word ptr [esi+50h], 0

loc_41E717:
add     esp, 18h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_41E5E8 endp




sub_41E71F proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
lea     ecx, [eax+640h]
mov     dx, [ecx+4]
test    dx, dx
jnz     short loc_41E774
mov     word ptr [ecx+4], 2
mov     edx, [ecx+4]
sar     edx, 10h
call    sub_41E77F
mov     edx, [ecx+4]
sar     edx, 10h
add     edx, 4
mov     eax, ebx
call    sub_41E77F
mov     dx, [ecx+6]
inc     edx
xor     dh, dh
and     dl, 3
mov     [ecx+6], dx
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A9h
call    sub_4D89E4
pop     edx
pop     ecx
pop     ebx
retn

loc_41E774:
mov     ebx, edx
dec     ebx
mov     [ecx+4], bx
pop     edx
pop     ecx
pop     ebx
retn
sub_41E71F endp




sub_41E77F proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     edi, eax
mov     ebp, edx
call    rand_
and     eax, 7
mov     edx, ds:dword_510786[eax*2]
sar     edx, 10h
mov     eax, [edi+54h]
sar     eax, 10h
add     eax, edx
and     eax, 0FFFh
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 400h
mov     esi, esp
call    sub_4DD510
lea     edx, [esp+2Ch+var_1C]
mov     eax, esp
call    sub_4DD57B
call    sub_4DE043
mov     esi, eax
test    eax, eax
jz      loc_41E89D
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 4
mov     ax, [edi+1B8h]
mov     [esi+14h], ax
mov     ecx, ebp
and     ecx, 3
mov     ax, [edi+1BAh]
mov     dx, ds:word_510780[ecx*2]
sub     eax, edx
mov     [esi+16h], ax
mov     ax, [edi+1BCh]
mov     [esi+18h], ax
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     eax, ebp
mov     edx, ds:(dword_51075E+2)[eax*4]
sar     edx, 10h
push    edx
push    0
mov     ecx, ds:dword_51075E[eax*4]
sar     ecx, 10h
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+1Ch]
lea     eax, [esi+14h]
call    sub_4DD4C5
mov     eax, [esp+2Ch+var_1C]
shl     eax, 8
mov     [esi+44h], ax
call    rand_
and     eax, 7
mov     ax, ds:word_510798[eax*2]
mov     [esi+46h], ax
mov     eax, [esp+2Ch+var_18]
shl     eax, 8
mov     [esi+48h], ax
mov     word ptr [esi+4Ch], 0
mov     word ptr [esi+4Eh], 0
mov     word ptr [esi+50h], 0

loc_41E89D:
add     esp, 18h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41E77F endp




sub_41E8A6 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 18h
mov     ecx, eax
call    sub_4DE043
mov     edx, eax
test    eax, eax
jz      loc_41E971
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 6
mov     dword ptr [eax+0C8h], (offset dword_5F880A+2)
mov     ax, [ecx+1E0h]
mov     [edx+14h], ax
mov     ax, [ecx+1E2h]
sub     eax, 100h
mov     [edx+16h], ax
mov     ax, [ecx+1E4h]
mov     [edx+18h], ax
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+1Ch], eax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
xor     ebx, ebx
mov     [esp+24h+var_10], bx
call    rand_
and     ah, 3
mov     [esp+24h+var_14], ax
mov     ecx, eax
neg     ecx
mov     [esp+24h+var_14], cx
call    rand_
and     ah, 0Fh
mov     [esp+24h+var_12], ax
lea     ecx, [edx+8Ch]  ; int
mov     edx, ecx
lea     eax, [esp+24h+var_14]
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_1C], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_24], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689

loc_41E971:
add     esp, 18h
pop     edx
pop     ecx
pop     ebx
retn
sub_41E8A6 endp




sub_41E978 proc near
push    edx
mov     edx, eax
call    sub_41E45D
mov     eax, edx
call    sub_4DEADD
pop     edx
retn
sub_41E978 endp




sub_41E989 proc near
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
movzx   esi, byte ptr [eax+8]
lea     ebx, [eax+550h]
mov     edx, offset dword_560BDC
call    ds:funcs_41E9C5[esi*4]
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_41E9F1
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_41E9F8

loc_41E9F1:
mov     eax, ecx
call    sub_4DEADD

loc_41E9F8:
lea     edx, [ecx+550h]
mov     eax, ecx
call    sub_41EB97
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41E989 endp




sub_41EA0B proc near
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
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ecx+44h], 300h
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
add     ebx, 4
mov     edx, 2
mov     eax, ecx
call    sub_40769E
mov     [esi], eax
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
retn
sub_41EA0B endp




sub_41EA88 proc near
push    ecx
push    esi
mov     esi, eax
mov     eax, edx
mov     dl, [esi+9]
cmp     dl, 1
jb      short loc_41EAA0
jbe     short loc_41EAD5
cmp     dl, 2
jz      short loc_41EADE
pop     esi
pop     ecx
retn

loc_41EAA0:
test    dl, dl
jnz     short loc_41EAEB
cmp     byte ptr [eax+9], 0
jnz     short loc_41EAC3
cmp     dword ptr [eax+10h], 3Ch ; '<'
jl      short loc_41EAC3
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     ecx
retn

loc_41EAC3:
cmp     byte ptr [eax+9], 1
jnz     short loc_41EAEB
cmp     dword ptr [eax+10h], 1
jnz     short loc_41EAEB

loc_41EACF:
inc     byte ptr [esi+9]
pop     esi
pop     ecx
retn

loc_41EAD5:
mov     eax, [ebx]
call    sub_4DE336
jmp     short loc_41EACF

loc_41EADE:
cmp     byte ptr [eax+9], 5
jnz     short loc_41EAEB
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0

loc_41EAEB:
pop     esi
pop     ecx
retn
sub_41EA88 endp

db 8Dh, 40h, 0
jpt_41EB14 dd offset loc_41EB1B ; jump table for switch statement
dd offset loc_41EB35
dd offset loc_41EB57
dd offset loc_41EB6B



sub_41EB01 proc near
push    ecx
mov     bl, [eax+9]
cmp     bl, 3           ; switch 4 cases
ja      def_41EB14      ; jumptable 0041EB14 default case
and     ebx, 0FFh
jmp     jpt_41EB14[ebx*4] ; switch jump

loc_41EB1B:             ; jumptable 0041EB14 case 0
mov     ch, [eax+0Ch]
cmp     ch, 20h ; ' '
jge     short loc_41EB2C
mov     dh, ch
inc     dh
mov     [eax+0Ch], dh
jmp     short loc_41EB82

loc_41EB2C:
mov     byte ptr [eax+0Ch], 0

loc_41EB30:
inc     byte ptr [eax+9]
jmp     short loc_41EB82

loc_41EB35:             ; jumptable 0041EB14 case 1
cmp     byte ptr [eax+0Ch], 10h
jle     short loc_41EB42
mov     byte ptr [eax+0ACh], 5

loc_41EB42:
cmp     byte ptr [eax+0Ch], 40h ; '@'
jge     short loc_41EB30
sub     word ptr [eax+44h], 0Ch
sub     word ptr [eax+46h], 0Ch
inc     byte ptr [eax+0Ch]
jmp     short loc_41EB82

loc_41EB57:             ; jumptable 0041EB14 case 2
mov     byte ptr [eax+0ACh], 4
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
inc     byte ptr [eax+9]
pop     ecx
retn

loc_41EB6B:             ; jumptable 0041EB14 case 3
cmp     dword ptr [edx+10h], 97h
jge     short loc_41EB7C
mov     word ptr [eax+46h], 0
jmp     short loc_41EB82

loc_41EB7C:
mov     word ptr [eax+46h], 0FC00h

loc_41EB82:
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
call    sub_4DD43B

def_41EB14:             ; jumptable 0041EB14 default case
pop     ecx
retn
sub_41EB01 endp




sub_41EB97 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
xor     al, al

loc_41EBA1:
movsx   edx, al
shl     edx, 3
lea     esi, [ebx+edx]
lea     edi, [ecx+edx+4]
lea     esi, [esi+198h]
movsd
movsd
inc     al
cmp     al, 9
jl      short loc_41EBA1
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41EB97 endp

jpt_41EC12 dd offset loc_41EC19 ; jump table for switch statement
dd offset loc_41EC93
dd offset def_41EC12
dd offset loc_41EC9F
dd offset loc_41ECBB
dd offset loc_41ECFD



sub_41EBD9 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 38h
mov     ecx, eax
mov     edx, offset dword_560BDC
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
cmp     al, 5           ; switch 6 cases
ja      def_41EC12      ; jumptable 0041EC12 default case, case 2
and     eax, 0FFh
jmp     jpt_41EC12[eax*4] ; switch jump

loc_41EC19:             ; jumptable 0041EC12 case 0
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
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
mov     ebx, offset word_559218
mov     edx, 3
mov     eax, ecx
call    sub_40769E
mov     ds:dword_560C7C, eax
or      byte ptr [eax+6], 20h
jmp     def_41EC12      ; jumptable 0041EC12 default case, case 2

loc_41EC93:             ; jumptable 0041EC12 case 1
mov     eax, ecx
call    sub_4DEADD
jmp     def_41EC12      ; jumptable 0041EC12 default case, case 2

loc_41EC9F:             ; jumptable 0041EC12 case 3
mov     word ptr [ecx+58h], 28h ; '('
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
inc     byte ptr [ecx+8]
jmp     def_41EC12      ; jumptable 0041EC12 default case, case 2

loc_41ECBB:             ; jumptable 0041EC12 case 4
test    byte ptr ds:dword_560BEC, 8
jz      short loc_41ECCB
add     word ptr [ecx+58h], 0Ah
jmp     short loc_41ECD0

loc_41ECCB:
sub     word ptr [ecx+58h], 0Ah

loc_41ECD0:
cmp     dword ptr [edx+10h], 5Ah ; 'Z'
jnz     loc_41ED68
mov     word ptr [ecx+44h], 0FFECh
mov     word ptr [ecx+46h], 40h ; '@'
mov     word ptr [ecx+4Eh], 4
mov     word ptr [ecx+48h], 0FEC0h
mov     word ptr [ecx+50h], 0FFFCh
inc     byte ptr [ecx+8]
jmp     short loc_41ED68

loc_41ECFD:             ; jumptable 0041EC12 case 5
mov     ax, [ecx+50h]
add     [ecx+48h], ax
mov     edx, [ecx+46h]
sar     edx, 10h
sar     edx, 4
mov     eax, [ecx+56h]
sar     eax, 10h
add     eax, edx
mov     [ecx+58h], ax
mov     ax, [ecx+44h]
add     [ecx+14h], ax
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     edx, [ecx+44h]
sar     edx, 10h
sar     edx, 4
mov     eax, [ecx+14h]
sar     eax, 10h
add     eax, edx
mov     [ecx+16h], ax
add     word ptr [ecx+18h], 0Fh
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax

loc_41ED68:
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB

def_41EC12:             ; jumptable 0041EC12 default case, case 2
xor     edi, edi

loc_41ED78:
lea     eax, [ecx+54h]
mov     edx, esp
call    sub_4EF638
mov     esi, edi
shl     esi, 3
mov     edx, offset unk_5107B4
add     edx, esi
lea     ebx, [esp+4Ch+var_1C]
mov     eax, esp
call    sub_4EF2DC
mov     ax, [ecx+14h]
mov     edx, [esp+4Ch+var_1C]
add     eax, edx
mov     ds:word_559218[esi], ax
mov     ax, [ecx+16h]
mov     ebx, [esp+4Ch+var_1C+2]
add     eax, ebx
mov     ds:word_55921A[esi], ax
mov     ax, [ecx+18h]
mov     edx, [esp+4Ch+var_18]
add     eax, edx
mov     ds:word_55921C[esi], ax
inc     edi
cmp     edi, 7
jl      short loc_41ED78
add     esp, 38h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41EBD9 endp




sub_41EDDB proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_41EDE1[edx*4]
pop     edx
retn
sub_41EDDB endp




sub_41EDEA proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+158h], 200h
mov     word ptr [ecx+15Ah], 200h
mov     word ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+48h], 0
mov     dx, [ecx+48h]
mov     [ecx+46h], dx
mov     [ecx+44h], dx
mov     word ptr [ecx+50h], 0
mov     dx, [ecx+50h]
mov     [ecx+4Eh], dx
mov     [ecx+4Ch], dx
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     ebx, 0FFFFFFA0h
mov     edx, 7
mov     eax, esi
call    sub_4E19B9
mov     dword ptr [ecx+78h], offset unk_5107F8
xor     edx, edx
mov     dl, [ecx+2]
mov     eax, ds:dword_55A108
mov     edx, [eax+edx*4]
mov     dl, [edx+8]
xor     dh, dh
shl     edx, 4
mov     [ecx+0B0h], dx
mov     [ecx+6Eh], dx
mov     word ptr [ecx+0B2h], 0
mov     byte ptr [ecx+74h], 0
mov     dword ptr [esi+10h], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+20h], 0
mov     dword ptr [esi+24h], 0
mov     dword ptr [esi+30h], 0
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41EDEA endp




sub_41EEE6 proc near
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
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
mov     al, [ebp+74h]
mov     [ebp+75h], al
mov     word ptr [ebp+15Eh], 4210h
mov     eax, ebp
call    sub_41EF8D
cmp     byte ptr [ebp+0Ch], 0
jnz     short loc_41EF3F
mov     dword ptr [ecx+10h], 1
jmp     short loc_41EF4B

loc_41EF3F:
mov     edx, ebp
mov     eax, ecx
call    sub_4E19CA
mov     [ecx+10h], eax

loc_41EF4B:
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_41EF52[ecx*4]
cmp     byte ptr [ebp+8], 2
jz      short loc_41EF86
mov     eax, ebp
call    sub_41F133
mov     eax, ebp
call    sub_41F0D0
test    byte ptr [ebp+0], 2
jz      short loc_41EF86
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 118h
mov     eax, ebp
call    sub_4ED88B

loc_41EF86:
pop     ebp

loc_41EF87:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41EEE6 endp




sub_41EF8D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+640h]
cmp     byte ptr [eax+0Dh], 0
jz      loc_41F0CB
test    byte ptr ds:word_77EAB6, 3
jnz     short loc_41EFC2
mov     dx, [esi+0B2h]
test    dx, dx
jz      short loc_41EFC2
mov     ebx, edx
dec     ebx
mov     [esi+0B2h], bx

loc_41EFC2:
mov     edx, [ecx+20h]
and     edx, 0FFFFFFh
jz      loc_41F0CB
lea     eax, [esi+14h]
cmp     byte ptr [esi+9], 6
jnz     short loc_41EFEB
mov     edx, eax
mov     eax, 0A3h
call    sub_4D8BC3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41EFEB:
sub     [esi+6Eh], dx
add     [esi+0B2h], dx
mov     edx, eax
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [esi+15Eh], 7FFFh
cmp     word ptr [esi+6Eh], 0
jg      short loc_41F01A
mov     word ptr [esi+6Eh], 0
jmp     short loc_41F046

loc_41F01A:
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+9]
xor     ah, ah
shl     eax, 4
mov     edx, [esi+0B0h]
sar     edx, 10h
cwde
cmp     edx, eax
jl      loc_41F0CB

loc_41F046:
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, esi
call    sub_4DE96B
mov     word ptr [esi+0B2h], 0
mov     dword ptr [ecx+30h], 0
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ecx+28h]
lea     eax, [esi+14h]
xor     ecx, ecx
call    sub_4DE726
mov     edx, eax
test    eax, 0FFFF0000h
jnz     short loc_41F088
add     dh, 8
mov     eax, edx
and     ah, 0Fh

loc_41F088:
mov     [esi+56h], ax
mov     word ptr [esi+44h], 0FC00h
mov     word ptr [esi+46h], 0FF00h
mov     word ptr [esi+4Eh], 40h ; '@'
mov     byte ptr [esi+74h], 1
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     byte ptr [esi+9], 6
mov     byte ptr [esi+0Ah], 0

loc_41F0CB:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41EF8D endp




sub_41F0D0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
add     eax, 640h
cmp     byte ptr [edx+0Dh], 0
jz      loc_41EF87
mov     dword ptr [eax+20h], 0
lea     edi, [eax+18h]
lea     esi, [edx+14h]
movsd
movsd
push    0
push    offset unk_800000
sub     word ptr [eax+1Ah], 80h
mov     ecx, [eax+30h]
or      ecx, 4080000h
push    ecx
lea     ecx, [eax+20h]
push    ecx
mov     dl, [edx+1]
and     edx, 0FFh
push    edx
add     eax, 18h
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 80h
call    sub_4E01FC
jmp     loc_41EF87
sub_41F0D0 endp




sub_41F133 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+640h]
mov     dword ptr [ecx+14h], 0
call    sub_42DE56
test    ah, 0Fh
jz      short loc_41F155
or      byte ptr [ecx+14h], 1

loc_41F155:
cmp     byte ptr [edx+74h], 0
jnz     loc_41EF87
mov     eax, edx
call    sub_42C592
mov     esi, eax
mov     ebx, [edx+2Ch]
sar     ebx, 10h
cmp     eax, ebx
jz      short loc_41F190
cmp     byte ptr [edx+75h], 0
jnz     short loc_41F19A
lea     edi, [edx+14h]
lea     esi, [edx+2Ch]
movsd
movsd
lea     edi, [edx+1Ch]
lea     esi, [edx+34h]
movsd
movsd
movsd
movsd
or      byte ptr [ecx+14h], 4
jmp     short loc_41F19A

loc_41F190:
mov     [edx+16h], bx
shl     eax, 10h
mov     [edx+38h], eax

loc_41F19A:
or      byte ptr [ecx+14h], 2
jmp     loc_41EF87
sub_41F133 endp




sub_41F1A3 proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short sub_41F1FE
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
xor     eax, eax
cmp     byte ptr [ecx+0Dh], 0
jz      short loc_41F1C7
cmp     dword ptr [edx+10h], 0
jz      short loc_41F1C7
mov     eax, 1

loc_41F1C7:
mov     edx, [ecx+6Ch]
sar     edx, 10h
mov     ebx, [ecx+0AEh]
sar     ebx, 10h
cmp     edx, ebx
jnz     short loc_41F1DE
test    eax, eax
jz      short loc_41F1F3

loc_41F1DE:
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_41F1F3:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_41F1A3 endp




sub_41F1FE proc near
cmp     byte ptr [eax+0A7h], 0
jz      sub_4DEADD
sub_41F1FE endp




sub_41F20B proc near
push    edx
lea     edx, [eax+640h]
mov     word ptr [edx+36h], 0
call    sub_41F79F
pop     edx
retn
sub_41F20B endp




sub_41F21F proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short sub_41F26F
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0A7h], 0
jz      short loc_41F24A
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41F24A:
mov     eax, esi
call    sub_4DEADD
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_41F21F endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_45]



sub_41F26F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
mov     ecx, 20h ; ' '
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
push    800h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
mov     ecx, offset byte_5F8364
add     ecx, 1Ch
mov     edx, [esi+54h]
sar     edx, 10h
lea     eax, [esi+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    byte ptr [esi+6], 80h
jz      short loc_41F2E4
mov     bx, [edi+38h]
cmp     bx, 1Eh
jnb     short loc_41F2EA
mov     ecx, ebx
inc     ecx
mov     [edi+38h], cx
jmp     short loc_41F2EA

loc_41F2E4:
mov     word ptr [edi+38h], 0

loc_41F2EA:
mov     dx, [edi+36h]
test    dx, dx
jz      short loc_41F2FC
mov     ecx, edx
dec     ecx
mov     [edi+36h], cx
jmp     short loc_41F338

loc_41F2FC:
cmp     word ptr [edi+38h], 1Eh
jb      short loc_41F338
cmp     dword ptr [esi+80h], 9C400h
ja      short loc_41F338
test    eax, eax
jz      short loc_41F338
call    rand_
and     eax, 0Fh
cmp     eax, 6
jg      short loc_41F32C
mov     eax, esi
call    sub_41F812
jmp     loc_41EF87

loc_41F32C:
mov     eax, esi
call    sub_41F841
jmp     loc_41EF87

loc_41F338:
mov     ax, [edi+34h]
dec     ax
mov     [edi+34h], ax
jnz     short loc_41F375
cmp     dword ptr [edi+10h], 0
jnz     short loc_41F36F
mov     eax, esi
call    sub_41F7DC
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
jmp     loc_41EF87

loc_41F36F:
mov     word ptr [edi+34h], 3Ch ; '<'

loc_41F375:
mov     di, [esi+56h]
sub     di, [esi+5Eh]
test    di, di
jge     short loc_41F384
neg     edi

loc_41F384:
cmp     di, 10h
jg      short loc_41F391
mov     edx, 2
jmp     short loc_41F3AD

loc_41F391:
mov     eax, [esi+54h]
sar     eax, 10h
mov     edx, [esi+5Ch]
sar     edx, 10h
cmp     eax, edx
jle     short loc_41F3A8
mov     edx, 7
jmp     short loc_41F3AD

loc_41F3A8:
mov     edx, 8

loc_41F3AD:
mov     eax, esi
call    sub_41F774
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
cmp     byte ptr [esi+0A4h], 2
jnz     loc_41EF87
lea     edx, [esi+14h]
mov     eax, 1B8h

loc_41F3E2:
call    sub_4D8BC3
jmp     loc_41EF87
sub_41F26F endp




sub_41F3EC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
mov     ecx, 40h ; '@'
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     dword ptr [edi+10h], 0
jz      short loc_41F465
test    byte ptr [esi+6], 80h
jz      short loc_41F465
call    rand_
test    al, 1
jz      short loc_41F440
mov     eax, esi
call    sub_41F812
jmp     loc_41EF87

loc_41F440:
mov     eax, esi
call    sub_41F20B
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
jmp     loc_41EF87

loc_41F465:
mov     eax, esi
call    sub_4DEADD
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
xor     eax, eax
cmp     byte ptr [esi+0A4h], 5
jnz     short loc_41F495
mov     eax, 1

loc_41F495:
cmp     byte ptr [esi+0A4h], 13h
jz      short loc_41F4A6
test    eax, eax
jz      loc_41EF87

loc_41F4A6:
lea     edx, [esi+14h]
mov     eax, 1B7h
jmp     loc_41F3E2
sub_41F3EC endp




sub_41F4B3 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_41F4C4
jbe     short loc_41F4D4
jmp     short loc_41F532

loc_41F4C4:
test    al, al
jnz     short loc_41F532
mov     eax, ecx
call    sub_41F53E
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_41F4D4:
call    sub_4DE043
test    eax, eax
jz      short loc_41F51D
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+3], 0
mov     dl, [ecx+1]
mov     [eax+0Fh], dl
lea     edi, [eax+14h]
lea     esi, [ecx+198h]
movsd
movsd
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

loc_41F51D:
lea     edx, [ecx+14h]
mov     eax, 1BAh
call    sub_4D8BC3
inc     byte ptr [ecx+0Ah]
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_41F532:
mov     eax, ecx
call    sub_41F1FE
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_41F4B3 endp




sub_41F53E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
mov     ecx, 80h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jz      short loc_41F589
xor     ebx, ebx
mov     edx, 5
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41F589:
cmp     byte ptr [esi+0A4h], 3
jnz     short loc_41F598
mov     word ptr [esi+44h], 0FA00h

loc_41F598:
cmp     byte ptr [esi+0A4h], 9
jnz     short loc_41F5A7
mov     word ptr [esi+44h], 0FC00h

loc_41F5A7:
cmp     byte ptr [esi+0A4h], 0Bh
jnz     short loc_41F5B6
mov     word ptr [esi+44h], 0

loc_41F5B6:
mov     eax, esi
call    sub_4DEADD
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41F53E endp




sub_41F5DB proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41F64F
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+640h]
cmp     byte ptr [eax+0A7h], 0
jz      short loc_41F62A
xor     ebx, ebx
mov     edx, 0Ah
mov     eax, esi
call    sub_4DE96B
mov     dword ptr [ecx+30h], 0
call    rand_
test    al, 1
jz      short loc_41F61C
mov     word ptr [ecx+3Ah], 20h ; ' '
jmp     short loc_41F622

loc_41F61C:
mov     word ptr [ecx+3Ah], 0FFE0h

loc_41F622:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41F62A:
mov     eax, esi
call    sub_4DEADD
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41F64F:
push    ecx
push    edx
lea     ecx, [eax+640h]
cmp     byte ptr [eax+0A7h], 0
jz      short loc_41F668
call    sub_41F79F
pop     edx
pop     ecx
retn

loc_41F668:
mov     dx, [eax+56h]
add     dx, [ecx+3Ah]
and     dh, 0Fh
mov     [eax+56h], dx
call    sub_4DEADD
pop     edx
pop     ecx
retn
sub_41F5DB endp




sub_41F67F proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_41F685[edx*4]
pop     edx
retn
sub_41F67F endp




sub_41F68E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
cmp     byte ptr [eax+74h], 0
jnz     short loc_41F6FD
lea     edx, [ebp+14h]
mov     eax, 1BCh
call    sub_4D8BC3
cmp     word ptr [ebp+6Eh], 0
jnz     short loc_41F6E7
call    sub_4DE13B
test    eax, eax
jz      short loc_41F6CC
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_41F6CC:
lea     edx, [ebp+14h]
mov     eax, ebp
call    sub_4AF9F8
mov     byte ptr [ebp+8], 2
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 0
jmp     loc_41EF86

loc_41F6E7:
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+0Ah]
jmp     loc_41EF86

loc_41F6FD:
mov     byte ptr [ebp+74h], 1
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
mov     eax, ebp
call    sub_4DD43B
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax
mov     eax, ebp
call    sub_4DEADD
jmp     loc_41EF86
sub_41F68E endp




sub_41F72E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0A7h], 0
jz      short loc_41F751
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_41F751:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_41F72E endp




sub_41F75C proc near
cmp     byte ptr [eax+0A7h], 0
jz      sub_4DEADD
sub     word ptr [eax+56h], 400h
jmp     sub_41F20B
sub_41F75C endp




sub_41F774 proc near
push    ebx
push    ecx
mov     ecx, eax
xor     ebx, ebx
mov     bl, [eax+0ADh]
cmp     ebx, edx
jz      short loc_41F797
xor     ebx, ebx
mov     bl, [eax+0A4h]
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     ecx
pop     ebx
retn

loc_41F797:
call    sub_4DEADD
pop     ecx
pop     ebx
retn
sub_41F774 endp




sub_41F79F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
xor     ebx, ebx
mov     edx, 0Fh
call    sub_4DE96B
mov     word ptr [esi+34h], 3Ch ; '<'
mov     word ptr [ecx+44h], 200h
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+4Eh], 0
mov     byte ptr [ecx+9], 1

loc_41F7D3:
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41F79F endp




sub_41F7DC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
xor     ebx, ebx
mov     edx, 1
call    sub_4DE96B
mov     word ptr [esi+34h], 78h ; 'x'
mov     word ptr [ecx+44h], 100h
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+4Eh], 0
mov     byte ptr [ecx+9], 2
jmp     short loc_41F7D3
sub_41F7DC endp




sub_41F812 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 6
call    sub_4DE96B
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+4Eh], 0
mov     byte ptr [ecx+9], 4
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_41F812 endp




sub_41F841 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
xor     ebx, ebx
mov     edx, 9
call    sub_4DE96B
xor     edx, edx
mov     dl, [ecx+2]
mov     eax, ds:dword_55A108
mov     eax, [eax+edx*4]
mov     al, [eax+0Ah]
and     eax, 0FFh
or      eax, 1000000h
mov     [esi+30h], eax
mov     word ptr [esi+36h], 3Ch ; '<'
mov     word ptr [ecx+44h], 400h
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+4Eh], 0
lea     edx, [ecx+14h]
mov     eax, 1B9h
call    sub_4D8BC3
mov     byte ptr [ecx+9], 5
jmp     loc_41F7D3
sub_41F841 endp



; Attributes: thunk

sub_41F8A4 proc near
jmp     sub_4DE336
sub_41F8A4 endp




sub_41F8A9 proc near
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+3]
lea     edx, [eax+490h]
call    ds:funcs_41F8B6[ecx*4]
pop     edx
pop     ecx
retn
sub_41F8A9 endp




sub_41F8C0 proc near
push    ebx
push    ecx
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
jnz     short loc_41F93D
or      byte ptr [ecx], 42h
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
mov     dword ptr [ecx+158h], 0C000C00h
mov     dword ptr [ecx+15Ch], 0C00h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ecx+48h], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

loc_41F93D:
mov     bl, [ecx+0Ch]
cmp     bl, 5
jge     short loc_41F9A4
mov     edx, [ecx+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 6
mov     edx, [ecx+16h]
sar     edx, 10h
add     eax, 1E00h
cmp     edx, eax
jle     short loc_41F987
movsx   ax, bl
mov     edx, 5
sub     edx, eax
mov     eax, edx
shl     eax, 2
mov     [ecx+48h], ax
mov     edi, eax
neg     edi
mov     [ecx+48h], di
jmp     short loc_41F9A4

loc_41F987:
mov     dx, [ecx+48h]
test    dx, dx
jge     short loc_41F9A4
mov     ebx, edx
add     ebx, 8
mov     [ecx+48h], bx
test    bx, bx
jle     short loc_41F9A4
mov     word ptr [ecx+48h], 0

loc_41F9A4:
mov     ax, [ecx+48h]
add     [ecx+18h], ax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_41F9D8
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_41F9D8:
mov     eax, ecx
call    sub_4DEADD
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41F8C0 endp




sub_41F9E4 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     [esp+18h+var_18], edx
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
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
call    rand_
mov     [edx+16h], ax
mov     ecx, 4210h
mov     ebx, 0Ch
mov     eax, ebp
call    sub_4211B3
xor     ecx, ecx
mov     cl, [ebp+8]
mov     edx, [esp+18h+var_18]
mov     eax, ebp
call    ds:funcs_41FA3B[ecx*4]
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_41FA5F
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_41FA66

loc_41FA5F:
mov     eax, ebp
call    sub_4DEADD

loc_41FA66:
mov     eax, [esp+18h+var_18]
inc     word ptr [eax+142h]
add     esp, 4

loc_41FA73:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41F9E4 endp




sub_41FA79 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     edi, edx
mov     ah, [eax]
or      ah, 42h
mov     [ebp+0], ah
xor     edx, edx
mov     eax, ebp
call    sub_4DD107
mov     dword ptr [ebp+158h], 0C000C00h
mov     dword ptr [ebp+15Ch], 0C00h
xor     eax, eax
mov     al, [ebp+2]
mov     esi, ds:dword_55A108
mov     esi, [esi+eax*4]
xor     eax, eax

loc_41FABA:
xor     ebx, ebx
mov     bl, [esi+0Ah]
jmp     short loc_41FADD

loc_41FAC1:
cmp     ax, 9
jz      short loc_41FAD6
jmp     loc_41FB4C

loc_41FACC:
test    ax, ax
jbe     short loc_41FABA
jmp     loc_41FB3E

loc_41FAD6:
xor     edx, ecx
mov     dl, [esi+8]

loc_41FADB:
mov     ebx, edx

loc_41FADD:
shl     ebx, 4
movsx   edx, ax
mov     [edi+edx*2+0A0h], bx
movsx   ecx, ax
mov     edx, ecx
mov     bx, [edi+edx*2+0A0h]
mov     [edi+edx*2+0B8h], bx
mov     dword ptr [edi+edx*8+0D4h], 0
mov     ebx, [edi+edx*8+0D4h]
mov     [edi+edx*8+0D0h], ebx
mov     byte ptr [ecx+edi+130h], 0FFh
inc     eax
cmp     ax, 0Ch
jge     short loc_41FB53
cmp     ax, 2
jb      short loc_41FACC
jbe     short loc_41FB45
cmp     ax, 0Ah
jb      short loc_41FAC1
jbe     short loc_41FABA
cmp     ax, 0Bh
jnz     short loc_41FB4C

loc_41FB3E:
xor     edx, edx
mov     dl, [esi+0Bh]
jmp     short loc_41FADB

loc_41FB45:
xor     ebx, ebx
mov     bl, [esi+0Ch]
jmp     short loc_41FADD

loc_41FB4C:
xor     edx, edx
mov     dl, [esi+0Dh]
jmp     short loc_41FADB

loc_41FB53:
mov     ax, [edi+0CAh]
add     ax, [edi+0B8h]
mov     dx, [edi+0BAh]
add     edx, eax
mov     ax, [edi+0BCh]
add     edx, eax
mov     [ebp+0B0h], dx
mov     [ebp+0B2h], dx
mov     [ebp+6Eh], dx
mov     ecx, 4210h
mov     ebx, 0Ch
mov     edx, edi
mov     eax, ebp
call    sub_4211B3
xor     eax, eax

loc_41FB9A:
movsx   edx, ax
shl     edx, 3
lea     ecx, [edi+20h]
mov     [esp+1Ch+var_1C], ecx
add     ecx, edx
mov     bx, ds:word_51086C[edx]
mov     [esp+1Ch+var_18], ebx
mov     bx, [ebp+14h]
add     [esp+1Ch+var_18], ebx
mov     ebx, [esp+1Ch+var_18]
mov     [ecx], bx
mov     bx, ds:word_51086E[edx]
mov     [esp+1Ch+var_18], ebx
mov     bx, [ebp+16h]
add     [esp+1Ch+var_18], ebx
mov     ebx, [esp+1Ch+var_18]
mov     [ecx+2], bx
mov     dx, word ptr ds:dword_510870[edx]
mov     bx, [ebp+18h]
add     edx, ebx
mov     [ecx+4], dx
inc     eax
cmp     ax, 10h
jl      short loc_41FB9A
mov     al, [esi+9]
mov     [edi+1Eh], al
mov     ebx, [esp+1Ch+var_1C]
xor     edx, edx
mov     eax, ebp
call    sub_40769E
mov     [edi+0Ch], eax
lea     ebx, [edi+38h]
mov     edx, 1
mov     eax, ebp
call    sub_451925
mov     [edi+10h], eax
mov     word ptr [edi+14h], 2
mov     word ptr [edi+18h], 0
mov     word ptr [edi+1Ah], 0
mov     dword ptr [edi+4], 0
mov     dword ptr [edi+8], 0
mov     byte ptr [edi+1Fh], 0
mov     byte ptr [edi+13Ch], 0
mov     byte ptr [edi+13Dh], 0
mov     byte ptr [edi+13Eh], 0
mov     byte ptr [edi+13Fh], 0
mov     al, [edi+13Fh]
mov     [edi+141h], al
mov     [edi+140h], al
mov     word ptr [edi+142h], 0
mov     dword ptr [edi+144h], 0
lea     eax, [edi+148h]
xor     ebx, ebx
xor     edx, edx
call    sub_4E19B9
mov     byte ptr [ebp+0Ch], 0
mov     word ptr [ebp+48h], 0
mov     ax, [ebp+48h]
mov     [ebp+46h], ax
mov     [ebp+44h], ax
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
mov     dword ptr [ebp+78h], 0
mov     byte ptr [ebp+0ACh], 0
mov     byte ptr [ebp+0ADh], 0FFh
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0

loc_41FCDD:
add     esp, 8
jmp     loc_41FA73
sub_41FA79 endp

jpt_41FD59 dd offset loc_41FD60 ; jump table for switch statement
dd offset loc_41FD83
dd offset loc_41FD97
dd offset loc_41FD69
dd offset loc_41FD97
dd offset loc_41FD69
dd offset loc_41FD83
dd offset loc_41FDAB
dd offset loc_41FDCE
dd offset loc_41FDEB
dd offset loc_41FE0C



sub_41FD11 proc near
push    ebx
push    ecx
push    esi
mov     ebx, eax
mov     ecx, edx
test    byte ptr [edx+14h], 2
jz      short loc_41FD25
mov     eax, ebx
call    sub_4207DD

loc_41FD25:
mov     edx, ecx
mov     eax, ebx
call    sub_420B41
movzx   esi, byte ptr [ebx+9]
mov     edx, ecx
mov     eax, ebx
call    ds:funcs_41FD36[esi*4]
mov     dl, [ecx+14h]
test    dl, 1
jz      loc_41FE1C
mov     al, [ebx+9]
cmp     al, 0Ah         ; switch 11 cases
ja      def_41FD59      ; jumptable 0041FD59 default case
and     eax, 0FFh
jmp     jpt_41FD59[eax*4] ; switch jump

loc_41FD60:             ; jumptable 0041FD59 case 0
mov     byte ptr [ebx+9], 9
jmp     def_41FD59      ; jumptable 0041FD59 default case

loc_41FD69:             ; jumptable 0041FD59 cases 3,5
test    byte ptr [ecx+14h], 40h
jz      short loc_41FD76
mov     eax, 2
jmp     short loc_41FD7B

loc_41FD76:
mov     eax, 7

loc_41FD7B:
mov     [ebx+9], al
jmp     def_41FD59      ; jumptable 0041FD59 default case

loc_41FD83:             ; jumptable 0041FD59 cases 1,6
test    byte ptr [ecx+14h], 40h
jz      short loc_41FD90
mov     eax, 4
jmp     short loc_41FD7B

loc_41FD90:
mov     eax, 8
jmp     short loc_41FD7B

loc_41FD97:             ; jumptable 0041FD59 cases 2,4
test    byte ptr [ecx+14h], 40h
jz      short loc_41FDA4
mov     eax, 0Ah
jmp     short loc_41FD7B

loc_41FDA4:
mov     eax, 9
jmp     short loc_41FD7B

loc_41FDAB:             ; jumptable 0041FD59 case 7
test    dl, 40h
jz      short loc_41FDB9

loc_41FDB0:
mov     byte ptr [ebx+9], 2
jmp     def_41FD59      ; jumptable 0041FD59 default case

loc_41FDB9:
test    dl, 10h
jz      short loc_41FDC7
mov     byte ptr [ebx+9], 1
jmp     def_41FD59      ; jumptable 0041FD59 default case

loc_41FDC7:
test    dl, 20h
jz      short def_41FD59 ; jumptable 0041FD59 default case
jmp     short loc_41FDB0

loc_41FDCE:             ; jumptable 0041FD59 case 8
test    dl, 40h
jz      short loc_41FDD9

loc_41FDD3:
mov     byte ptr [ebx+9], 4
jmp     short def_41FD59 ; jumptable 0041FD59 default case

loc_41FDD9:
test    dl, 8
jz      short loc_41FDE4
mov     byte ptr [ebx+9], 3
jmp     short def_41FD59 ; jumptable 0041FD59 default case

loc_41FDE4:
test    dl, 20h
jz      short def_41FD59 ; jumptable 0041FD59 default case
jmp     short loc_41FDD3

loc_41FDEB:             ; jumptable 0041FD59 case 9
test    dl, 40h
jz      short loc_41FDF6
mov     byte ptr [ebx+9], 0Ah
jmp     short def_41FD59 ; jumptable 0041FD59 default case

loc_41FDF6:
test    dl, 8
jz      short loc_41FE01
mov     byte ptr [ebx+9], 5
jmp     short def_41FD59 ; jumptable 0041FD59 default case

loc_41FE01:
test    dl, 10h
jz      short def_41FD59 ; jumptable 0041FD59 default case
mov     byte ptr [ebx+9], 6
jmp     short def_41FD59 ; jumptable 0041FD59 default case

loc_41FE0C:             ; jumptable 0041FD59 case 10
mov     byte ptr [ebx+8], 2
mov     byte ptr [ebx+9], 0

def_41FD59:             ; jumptable 0041FD59 default case
mov     byte ptr [ebx+0Ah], 0
and     byte ptr [ecx+14h], 0C6h

loc_41FE1C:
test    byte ptr [ecx+14h], 2
jz      short loc_41FE2B
mov     edx, ecx
mov     eax, ebx
call    sub_420D2F

loc_41FE2B:
mov     edx, ecx
mov     eax, ebx
call    sub_420E01
mov     ah, [ecx+1Fh]
add     ah, 2
mov     [ecx+1Fh], ah
mov     dl, ah
and     dl, 1Fh
mov     [ecx+1Fh], dl
pop     esi
pop     ecx
pop     ebx
retn
sub_41FD11 endp




sub_41FE49 proc near
push    ebx
mov     bl, [eax+9]
test    bl, bl
jbe     short loc_41FE5B
cmp     bl, 1
jz      short loc_41FE76
jmp     loc_41FF02

loc_41FE5B:
mov     word ptr [edx+18h], 0
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
inc     byte ptr [eax+9]

loc_41FE76:
mov     bx, [edx+18h]
cmp     bx, 1FCh
jge     loc_41FEE7
cmp     bx, 30h ; '0'
jb      short loc_41FE9E
jbe     short loc_41FECB
cmp     bx, 40h ; '@'
jb      short loc_41FEE1
jbe     short loc_41FED3
cmp     bx, 88h
jz      short loc_41FEDB
jmp     short loc_41FEE1

loc_41FE9E:
test    bx, bx
jbe     short loc_41FEAB
cmp     bx, 10h
jz      short loc_41FEB9
jmp     short loc_41FEE1

loc_41FEAB:
mov     word ptr [eax+4Ch], 0FFFFh
mov     word ptr [eax+4Eh], 0FFFFh
jmp     short loc_41FEE1

loc_41FEB9:
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     byte ptr [eax+0Ch], 1
jmp     short loc_41FEE1

loc_41FECB:
mov     word ptr [eax+4Eh], 1
jmp     short loc_41FEE1

loc_41FED3:
mov     word ptr [eax+4Eh], 0
jmp     short loc_41FEE1

loc_41FEDB:
mov     word ptr [eax+50h], 0FFFFh

loc_41FEE1:
inc     word ptr [edx+18h]
jmp     short loc_41FF02

loc_41FEE7:
mov     word ptr [edx+18h], 0
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
inc     byte ptr [eax+9]

loc_41FF02:
mov     bx, [eax+4Ch]
add     [eax+44h], bx
mov     bx, [eax+4Eh]
add     [eax+46h], bx
mov     bx, [eax+50h]
add     [eax+48h], bx
mov     bx, [eax+44h]
add     [eax+14h], bx
mov     bx, [eax+46h]
add     [eax+16h], bx
mov     bx, [eax+48h]
add     [eax+18h], bx
test    byte ptr [edx+14h], 4
jz      short loc_41FF4E
mov     word ptr [eax+14h], 0F000h
mov     word ptr [eax+16h], 0FC00h
mov     word ptr [eax+18h], 400h
and     byte ptr [edx+14h], 0FBh

loc_41FF4E:
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx

loc_41FF5A:
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
pop     ebx
retn
sub_41FE49 endp




sub_41FF74 proc near
push    ebx
push    esi
mov     bl, [eax+0Ah]
cmp     bl, 1
jb      short loc_41FF8E
jbe     short loc_41FFB6
cmp     bl, 2
jz      loc_420019
jmp     loc_4200A7

loc_41FF8E:
test    bl, bl
jnz     loc_4200A7
mov     word ptr [edx+18h], 0
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
inc     byte ptr [eax+0Ah]
jmp     loc_4200A7

loc_41FFB6:
mov     si, [edx+18h]
cmp     si, 0D0h
jge     short loc_41FFF8
mov     ebx, esi
cmp     si, 10h
jb      short loc_41FFD4
jbe     short loc_41FFE8
cmp     si, 0C0h
jz      short loc_41FFF0
jmp     short loc_41FFDF

loc_41FFD4:
test    si, si
jnz     short loc_41FFDF

loc_41FFD9:
mov     word ptr [eax+50h], 0FFFFh

loc_41FFDF:
inc     word ptr [edx+18h]
jmp     loc_4200A7

loc_41FFE8:
mov     word ptr [eax+50h], 0
jmp     short loc_41FFDF

loc_41FFF0:
mov     word ptr [eax+50h], 1
jmp     short loc_41FFDF

loc_41FFF8:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 4
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
jmp     loc_4200A7

loc_420019:
mov     bx, [edx+18h]
cmp     bx, 1F0h
jge     loc_420084
cmp     bx, 100h
jb      short loc_420043
jbe     short loc_420063
cmp     bx, 110h
jb      short loc_41FFDF
jbe     short loc_42006E
cmp     bx, 1E0h
jz      short loc_420079
jmp     short loc_41FFDF

loc_420043:
test    bx, bx
jbe     short loc_420050
cmp     bx, 10h
jz      short loc_420058
jmp     short loc_41FFDF

loc_420050:
mov     word ptr [eax+50h], 1
jmp     short loc_41FFDF

loc_420058:
mov     word ptr [eax+50h], 0
jmp     loc_41FFDF

loc_420063:
mov     word ptr [eax+4Eh], 1
jmp     loc_41FFDF

loc_42006E:
mov     word ptr [eax+4Eh], 0
jmp     loc_41FFDF

loc_420079:
mov     word ptr [eax+4Eh], 0FFFFh
jmp     loc_41FFD9

loc_420084:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 5
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
or      byte ptr [edx+140h], 1

loc_4200A7:
mov     bx, [eax+4Ch]
add     [eax+44h], bx
mov     bx, [eax+4Eh]
add     [eax+46h], bx
mov     bx, [eax+50h]
add     [eax+48h], bx
mov     bx, [eax+44h]
add     [eax+14h], bx
mov     bx, [eax+46h]
add     [eax+16h], bx
mov     bx, [eax+48h]
add     [eax+18h], bx
test    byte ptr [edx+14h], 4
jz      short loc_420112
mov     bh, [eax+0Ah]
cmp     bh, 1
jnz     short loc_4200FC
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0E600h
mov     word ptr [eax+18h], 0FA00h
add     [eax+0Ah], bh
jmp     short loc_42010E

loc_4200FC:
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0F400h
mov     word ptr [eax+18h], 1800h

loc_42010E:
and     byte ptr [edx+14h], 0FBh

loc_420112:
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
pop     esi
pop     ebx
retn
sub_41FF74 endp




sub_420139 proc near
push    ebx
push    ecx
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_42015C
mov     word ptr [edx+18h], 0
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
inc     byte ptr [eax+0Ah]

loc_42015C:
mov     bx, [edx+18h]
cmp     bx, 2F8h
jge     loc_420235
cmp     bx, 16Ch
jb      short loc_4201C3
jbe     loc_420213
cmp     bx, 274h
jb      short loc_4201A6
jbe     loc_420221
cmp     bx, 284h
jb      loc_42022F
jbe     loc_42020B
cmp     bx, 2E8h
jz      loc_420229
jmp     loc_42022F

loc_4201A6:
cmp     bx, 17Ch
jb      loc_42022F
jbe     loc_42021B
cmp     bx, 18Ch
jz      short loc_4201EB
jmp     loc_42022F

loc_4201C3:
cmp     bx, 10h
jb      short loc_4201E0
jbe     short loc_4201EB
cmp     bx, 74h ; 't'
jb      loc_42022F
jbe     short loc_4201F3
cmp     bx, 84h
jz      short loc_42020B
jmp     short loc_42022F

loc_4201E0:
test    bx, bx
jnz     short loc_42022F
mov     [eax+4Ch], bx
jmp     short loc_420229

loc_4201EB:
mov     word ptr [eax+4Eh], 0
jmp     short loc_42022F

loc_4201F3:
cmp     byte ptr [eax+9], 1
jnz     short loc_420200

loc_4201F9:
mov     ecx, 1
jmp     short loc_420205

loc_420200:
mov     ecx, 0FFFFFFFFh

loc_420205:
mov     [eax+4Ch], cx
jmp     short loc_42022F

loc_42020B:
mov     word ptr [eax+4Ch], 0
jmp     short loc_42022F

loc_420213:
mov     word ptr [eax+4Eh], 1
jmp     short loc_42022F

loc_42021B:
or      byte ptr [edx+14h], 4
jmp     short loc_42022F

loc_420221:
cmp     byte ptr [eax+9], 1
jnz     short loc_4201F9
jmp     short loc_420200

loc_420229:
mov     word ptr [eax+4Eh], 0FFFFh

loc_42022F:
inc     word ptr [edx+18h]
jmp     short loc_42024B

loc_420235:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 5
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0

loc_42024B:
mov     bx, [eax+4Ch]
add     [eax+44h], bx
mov     bx, [eax+4Eh]
add     [eax+46h], bx
mov     bx, [eax+50h]
add     [eax+48h], bx
mov     bx, [eax+44h]
add     [eax+14h], bx
mov     bx, [eax+46h]
add     [eax+16h], bx
mov     bx, [eax+48h]
add     [eax+18h], bx
test    byte ptr [edx+14h], 4
jz      short loc_4202BA
mov     ch, [eax+0Ah]
cmp     ch, 1
jnz     short loc_42029A
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0E600h
add     [eax+0Ah], ch
jmp     short loc_4202B6

loc_42029A:
cmp     byte ptr [eax+9], 1
jnz     short loc_4202A7
mov     ecx, 1000h
jmp     short loc_4202AC

loc_4202A7:
mov     ecx, 0FFFFF000h

loc_4202AC:
mov     [eax+14h], cx
mov     word ptr [eax+16h], 0FCC0h

loc_4202B6:
and     byte ptr [edx+14h], 0FBh

loc_4202BA:
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
pop     ecx
pop     ebx
retn
sub_420139 endp

jpt_420381 dd offset loc_4203A4 ; jump table for switch statement
dd offset def_420381
dd offset loc_4203A4
dd offset loc_420388
dd offset loc_42039C



sub_4202F5 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_42031C
mov     word ptr [edx+18h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
inc     byte ptr [ecx+0Ah]

loc_42031C:
mov     dh, [ecx+9]
cmp     dh, 2
jz      short loc_420329
cmp     dh, 4
jnz     short loc_420334

loc_420329:
mov     edx, ebx
mov     eax, ecx
call    sub_420EF8
jmp     short loc_42033D

loc_420334:
mov     edx, ebx
mov     eax, ecx
call    sub_420FE4

loc_42033D:
mov     ax, [ecx+4Ch]
add     [ecx+44h], ax
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     ax, [ecx+50h]
add     [ecx+48h], ax
mov     ax, [ecx+44h]
add     [ecx+14h], ax
mov     ax, [ecx+46h]
add     [ecx+16h], ax
mov     ax, [ecx+48h]
add     [ecx+18h], ax
test    byte ptr [ebx+14h], 4
jz      short loc_4203BA
mov     al, [ecx+9]
sub     al, 2           ; switch 5 cases
cmp     al, 4
ja      short def_420381 ; jumptable 00420381 default case, case 3
and     eax, 0FFh
jmp     jpt_420381[eax*4] ; switch jump

loc_420388:             ; jumptable 00420381 case 5
mov     word ptr [ecx+14h], 0F000h

loc_42038E:
mov     word ptr [ecx+16h], 0FCC0h
mov     word ptr [ecx+18h], 600h
jmp     short def_420381 ; jumptable 00420381 default case, case 3

loc_42039C:             ; jumptable 00420381 case 6
mov     word ptr [ecx+14h], 1000h
jmp     short loc_42038E

loc_4203A4:             ; jumptable 00420381 cases 2,4
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+16h], 0F400h
mov     word ptr [ecx+18h], 1800h

def_420381:             ; jumptable 00420381 default case, case 3
and     byte ptr [ebx+14h], 0FBh

loc_4203BA:
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
pop     ecx
pop     ebx
retn
sub_4202F5 endp




sub_4203E1 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ecx, edx
mov     ebx, 0FFFFFFFFh
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_420434
mov     dword ptr [edx+144h], 0
cmp     byte ptr [esi+9], 7
jnz     short loc_42040B
inc     byte ptr [ecx+13Ch]
jmp     short loc_420411

loc_42040B:
inc     byte ptr [ecx+13Dh]

loc_420411:
mov     ax, [esi+16h]
mov     [ecx+1Ch], ax
mov     word ptr [ecx+18h], 0
mov     ah, [ecx+14h]
test    ah, 40h
jz      short loc_420431
or      ah, 1
mov     [ecx+14h], ah
pop     esi
pop     ecx
pop     ebx
retn

loc_420431:
inc     byte ptr [esi+0Ah]

loc_420434:
mov     dx, [ecx+18h]
cmp     dx, 0C0h
jge     loc_42048D
mov     eax, edx
cmp     dx, 3Ch ; '<'
jb      short loc_420467
jbe     short loc_420482
cmp     dx, 88h
jb      short loc_42045F
jbe     short loc_42047B
cmp     dx, 9Ch
jz      short loc_420482
jmp     short loc_420487

loc_42045F:
cmp     dx, 74h ; 't'
jz      short loc_420477
jmp     short loc_420487

loc_420467:
cmp     dx, 14h
jb      short loc_420487
jbe     short loc_420477
cmp     dx, 28h ; '('
jz      short loc_42047B
jmp     short loc_420487

loc_420477:
xor     ebx, ebx
jmp     short loc_420487

loc_42047B:
mov     ebx, 1
jmp     short loc_420487

loc_420482:
mov     ebx, 2

loc_420487:
inc     word ptr [ecx+18h]
jmp     short loc_42049C

loc_42048D:
mov     word ptr [ecx+18h], 0
mov     edx, ecx
mov     eax, esi
call    sub_42127A

loc_42049C:
cmp     ebx, 0FFFFFFFFh
jz      short loc_4204AA
mov     edx, ecx
mov     eax, esi
call    sub_421305

loc_4204AA:
cmp     word ptr [ecx+18h], 0C0h
jnz     short loc_4204CB
test    byte ptr [ecx+140h], 4
jnz     short loc_4204CB
cmp     dword ptr [ecx+144h], 0
jbe     short loc_4204CB
or      byte ptr [ecx+140h], 4

loc_4204CB:
test    byte ptr [ecx+14h], 40h
jz      short loc_4204F1
mov     edx, [ecx+16h]
sar     edx, 10h
mov     ebx, 40h ; '@'
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_4204F1
mov     word ptr [ecx+18h], 0
or      byte ptr [ecx+14h], 1

loc_4204F1:
mov     ax, [ecx+18h]
xor     ah, ah
and     al, 3Fh
movsx   edx, ax
mov     edx, dword ptr ds:unk_564C32[edx*2]
sar     edx, 10h
shl     edx, 6
sar     edx, 0Ch
mov     ecx, [ecx+1Ah]
sar     ecx, 10h
add     edx, ecx
mov     [esi+16h], dx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
pop     esi
pop     ecx
pop     ebx
retn
sub_4203E1 endp




sub_420528 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ecx, edx
mov     edi, 0FFFFFFFFh
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_420568
mov     dx, [esi+16h]
mov     [ecx+1Ch], dx
mov     word ptr [ecx+18h], 0
inc     byte ptr [ecx+13Eh]
mov     dh, [ecx+14h]
test    dh, 40h
jz      short loc_420565
mov     ah, dh
or      ah, 1
mov     [ecx+14h], ah
jmp     loc_41FA73

loc_420565:
inc     byte ptr [esi+0Ah]

loc_420568:
mov     dx, [ecx+18h]
cmp     dx, 100h
jge     short loc_4205A3
cmp     dx, 0C0h
jge     short loc_42059D
mov     ebx, [ecx+16h]
sar     ebx, 10h
mov     ebp, 18h
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    ebp
test    edx, edx
jnz     short loc_42059D
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    ebp
mov     edi, eax

loc_42059D:
inc     word ptr [ecx+18h]
jmp     short loc_4205B2

loc_4205A3:
mov     word ptr [ecx+18h], 0
mov     edx, ecx
mov     eax, esi
call    sub_42127A

loc_4205B2:
cmp     edi, 0FFFFFFFFh
jz      short loc_4205C2
mov     ebx, edi
mov     edx, ecx
mov     eax, esi
call    sub_4213F7

loc_4205C2:
test    byte ptr [ecx+14h], 40h
jz      short loc_4205E8
mov     edx, [ecx+16h]
sar     edx, 10h
mov     ebx, 40h ; '@'
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_4205E8
mov     word ptr [ecx+18h], 0
or      byte ptr [ecx+14h], 1

loc_4205E8:
mov     dx, [ecx+18h]
xor     dh, dh
and     dl, 3Fh
movsx   edx, dx
mov     ebx, dword ptr ds:unk_564C32[edx*2]
sar     ebx, 10h
shl     ebx, 6
sar     ebx, 0Ch
mov     edx, [ecx+1Ah]
sar     edx, 10h
add     edx, ebx
mov     [esi+16h], dx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
jmp     loc_41FA73
sub_420528 endp

jpt_42064E dd offset loc_420655 ; jump table for switch statement
dd offset loc_420670
dd offset loc_420733
dd offset loc_420749
dd offset loc_420773



sub_420635 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebx, eax
mov     ecx, edx
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_42064E      ; jumptable 0042064E default case
and     eax, 0FFh
jmp     jpt_42064E[eax*4] ; switch jump

loc_420655:             ; jumptable 0042064E case 0
mov     word ptr [edx+18h], 0
mov     word ptr [edx+1Ah], 0
mov     word ptr [ebx+4Eh], 0
mov     word ptr [ebx+50h], 0
inc     byte ptr [ebx+0Ah]

loc_420670:             ; jumptable 0042064E case 1
mov     edx, ecx
mov     eax, ebx
call    sub_4210E0

def_42064E:             ; jumptable 0042064E default case
cmp     byte ptr [ebx+0Ah], 1
jbe     loc_41FA73

loc_420683:
mov     ax, [ecx+1Ah]
xor     ah, ah
and     al, 3Fh
cwde
mov     edx, dword ptr ds:unk_564C32[eax*2]
sar     edx, 10h
shl     edx, 6
sar     edx, 0Ch
mov     eax, [ecx+1Ah]
sar     eax, 10h
add     eax, edx
mov     [ebx+16h], ax
mov     eax, [ebx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+20h], eax
cmp     dword ptr [ecx+4], 0
jz      short loc_4206CE
mov     ax, [ebx+16h]
mov     dx, ds:word_5108F6
add     edx, eax
mov     eax, [ecx+4]
mov     [eax+16h], dx

loc_4206CE:
cmp     dword ptr [ecx+8], 0
jz      short loc_4206E6
mov     dx, [ebx+16h]
add     dx, ds:word_5108F6
mov     eax, [ecx+8]
mov     [eax+16h], dx

loc_4206E6:
inc     word ptr [ecx+1Ah]
test    byte ptr [ecx+15h], 1
jz      loc_41FA73
mov     edx, [ecx+18h]
sar     edx, 10h
mov     ebx, 40h ; '@'
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     loc_41FA73
mov     ebx, [ecx+4]
test    ebx, ebx
jz      short loc_42071C
mov     eax, ebx
call    sub_4DE371

loc_42071C:
mov     esi, [ecx+8]
test    esi, esi
jz      short loc_42072A
mov     eax, esi
call    sub_4DE371

loc_42072A:
or      byte ptr [ecx+14h], 1
jmp     loc_41FA73

loc_420733:             ; jumptable 0042064E case 2
or      byte ptr [edx+140h], 40h
mov     eax, ebx
call    sub_4214A8

loc_420741:
inc     byte ptr [ebx+0Ah]
jmp     def_42064E      ; jumptable 0042064E default case

loc_420749:             ; jumptable 0042064E case 3
mov     edi, [edx+4]
test    edi, edi
jz      short loc_420756
cmp     byte ptr [edi+0Ch], 0
jnz     short loc_42076B

loc_420756:
mov     ebp, [ecx+8]
test    ebp, ebp
jz      def_42064E      ; jumptable 0042064E default case
cmp     byte ptr [ebp+0Ch], 0
jz      def_42064E      ; jumptable 0042064E default case

loc_42076B:
mov     word ptr [ecx+18h], 0
jmp     short loc_420741

loc_420773:             ; jumptable 0042064E case 4
cmp     word ptr [edx+18h], 5Ah ; 'Z'
jge     short loc_4207B5
cmp     word ptr [ecx+18h], 0
jnz     short loc_4207AC
mov     edx, [ecx+4]
test    edx, edx
jz      short loc_42079A
mov     eax, edx
mov     dl, [edx+0Ch]
or      dl, 80h
mov     [eax+0Ch], dl
mov     dword ptr [ecx+4], 0

loc_42079A:
mov     esi, [ecx+8]
test    esi, esi
jz      short loc_4207AC
or      byte ptr [esi+0Ch], 80h
mov     dword ptr [ecx+8], 0

loc_4207AC:
inc     word ptr [ecx+18h]
jmp     def_42064E      ; jumptable 0042064E default case

loc_4207B5:
mov     byte ptr [ebx+0Ah], 2
jmp     loc_420683
sub_420635 endp

db 8Dh, 40h, 0
jpt_420933 dd offset loc_420826 ; jump table for switch statement
dd offset loc_42082F
dd offset loc_420834
dd offset loc_42083D
dd offset loc_420846
dd offset loc_42084F
dd offset loc_420858



sub_4207DD proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
push    eax
mov     esi, edx
lea     ebp, [edx+20h]
xor     edi, edi
xor     edx, edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_18], edx
mov     [esp+24h+var_1C], edx
jmp     loc_420896

loc_420800:
test    di, di
jbe     short loc_420817
cmp     di, 1
jmp     loc_4208E5

loc_42080E:
mov     [esp+24h+var_20], edx
jmp     loc_42088B

loc_420817:
mov     [esp+24h+var_18], edx
jmp     loc_42088B

loc_420820:
mov     [esp+24h+var_1C], edx
jmp     short loc_42088B

loc_420826:             ; jumptable 00420933 case 2
mov     eax, [esi+0Ch]

loc_420829:
or      byte ptr [eax+0Ch], 1
jmp     short def_420933 ; jumptable 00420933 default case

loc_42082F:             ; jumptable 00420933 case 3
mov     eax, [esi+10h]
jmp     short loc_420829

loc_420834:             ; jumptable 00420933 case 4
mov     eax, [esi+10h]
or      byte ptr [eax+0Ch], 2
jmp     short def_420933 ; jumptable 00420933 default case

loc_42083D:             ; jumptable 00420933 case 5
mov     eax, [esi+10h]
or      byte ptr [eax+0Ch], 4
jmp     short def_420933 ; jumptable 00420933 default case

loc_420846:             ; jumptable 00420933 case 6
mov     eax, [esi+10h]
or      byte ptr [eax+0Dh], 1
jmp     short def_420933 ; jumptable 00420933 default case

loc_42084F:             ; jumptable 00420933 case 7
mov     eax, [esi+10h]
or      byte ptr [eax+0Dh], 2
jmp     short def_420933 ; jumptable 00420933 default case

loc_420858:             ; jumptable 00420933 case 8
mov     eax, [esi+10h]
or      byte ptr [eax+0Dh], 4

def_420933:             ; jumptable 00420933 default case
mov     edx, ebp
mov     eax, 0A0h
call    sub_4D8BC3
movsx   ebx, di
mov     ecx, 7FFFh
mov     edx, esi
mov     eax, [esp+24h+var_24]
call    sub_4211B3
jmp     short loc_42088B

loc_42087F:
mov     edx, ebp
mov     eax, 9Bh
call    sub_4D8BC3

loc_42088B:
inc     edi
cmp     di, 0Ch
jge     loc_42093A

loc_420896:
movsx   ebx, di
mov     ecx, ebx
shl     ecx, 3
lea     eax, [esi+ecx]
mov     edx, [eax+0D0h]
and     edx, 0FFFFFFh
jz      short loc_42088B
lea     ebp, [esi+20h]
add     ebp, ecx
cmp     byte ptr [esi+ebx+130h], 0FFh
jnz     short loc_42087F
test    byte ptr [eax+0D3h], 18h
jz      short loc_42087F
cmp     di, 9
jb      loc_420800
jbe     loc_42080E
cmp     di, 0Ah
jbe     loc_420817
cmp     di, 0Bh

loc_4208E5:
jz      loc_420820
movsx   ecx, di
lea     eax, [ecx+ecx]
add     eax, esi
mov     bx, [eax+0A0h]
sub     ebx, edx
mov     [eax+0A0h], bx
test    bx, bx
jg      def_420933      ; jumptable 00420933 default case
mov     word ptr [eax+0A0h], 0
lea     eax, [esi+ecx]
mov     byte ptr [eax+130h], 0
mov     eax, edi
sub     eax, 2          ; switch 7 cases
cmp     ax, 6
ja      def_420933      ; jumptable 00420933 default case
and     eax, 0FFFFh
jmp     jpt_420933[eax*4] ; switch jump

loc_42093A:
cmp     [esp+24h+var_18], 0
jz      short loc_4209A9
mov     eax, [esp+24h+var_18]
mov     bx, [esi+0A0h]
sub     ebx, eax
mov     [esi+0A0h], bx
test    bx, bx
jg      short loc_42097D
mov     word ptr [esi+0A0h], 0
mov     byte ptr [esi+13Ah], 0
mov     al, [esi+13Ah]
mov     [esi+130h], al
mov     eax, [esi+0Ch]
or      byte ptr [eax+0Ch], 2

loc_42097D:
mov     ax, [esi+0A0h]
mov     [esi+0B4h], ax
lea     edx, [esi+70h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     ecx, 7FFFh
xor     ebx, ebx
mov     edx, esi
mov     eax, [esp+24h+var_24]
call    sub_4211B3

loc_4209A9:
cmp     [esp+24h+var_1C], 0
jz      short loc_420A1B
mov     eax, [esp+24h+var_1C]
mov     di, [esi+0A2h]
sub     edi, eax
mov     [esi+0A2h], di
test    di, di
jg      short loc_4209EC
mov     word ptr [esi+0A2h], 0
mov     byte ptr [esi+13Bh], 0
mov     al, [esi+13Bh]
mov     [esi+131h], al
mov     eax, [esi+0Ch]
or      byte ptr [eax+0Ch], 4

loc_4209EC:
mov     ax, [esi+0A2h]
mov     [esi+0B6h], ax
lea     edx, [esi+78h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     ecx, 7FFFh
mov     ebx, 1
mov     edx, esi
mov     eax, [esp+24h+var_24]
call    sub_4211B3

loc_420A1B:
cmp     [esp+24h+var_20], 0
jz      short loc_420A86
test    byte ptr [esi+14h], 80h
jz      short loc_420A7A
mov     eax, [esp+24h+var_20]
mov     dx, [esi+0B2h]
sub     edx, eax
mov     [esi+0B2h], dx
test    dx, dx
jg      short loc_420A5C
or      byte ptr [esi+141h], 70h
mov     word ptr [esi+0B2h], 0
mov     byte ptr [esi+139h], 0
or      byte ptr [esi+15h], 1

loc_420A5C:
mov     ecx, 7FFFh
mov     ebx, 9
mov     edx, esi
mov     eax, [esp+24h+var_24]
call    sub_4211B3
lea     edx, [esi+68h]
mov     eax, 0A0h
jmp     short loc_420A81

loc_420A7A:
mov     edx, ebp
mov     eax, 9Bh

loc_420A81:
call    sub_4D8BC3

loc_420A86:
mov     eax, [esp+24h+var_24]
mov     ax, [eax+6Eh]
mov     edx, [esp+24h+var_24]
mov     [edx+0B2h], ax
mov     ax, [esi+0B2h]
add     ax, [esi+0A0h]
mov     dx, [esi+0A2h]
add     edx, eax
mov     ax, [esi+0A4h]
add     edx, eax
mov     eax, [esp+24h+var_24]
mov     [eax+6Eh], dx
mov     al, [esi+141h]
test    al, 1
jz      short loc_420AF3
test    al, 2
jnz     short loc_420AF3
mov     edx, [esp+24h+var_24]
mov     edx, [edx+0B0h]
sar     edx, 10h
mov     eax, [esp+24h+var_24]
mov     eax, [eax+6Ch]
sar     eax, 10h
cmp     edx, eax
jz      short loc_420AF3
or      byte ptr [esi+140h], 2
or      byte ptr [esi+141h], 4

loc_420AF3:
test    byte ptr [esi+14h], 40h
jnz     short loc_420B1F
mov     bh, [esi+132h]
cmp     bh, 1
jnz     short loc_420B1F
cmp     bh, [esi+130h]
jnz     short loc_420B1F
cmp     bh, [esi+131h]
jnz     short loc_420B1F
or      byte ptr [esi+141h], 0Fh
or      byte ptr [esi+14h], 40h

loc_420B1F:
add     esp, 10h
jmp     loc_41FA73
sub_4207DD endp

db 8Bh, 0C0h
jpt_420D28 dd offset loc_420C97 ; jump table for switch statement
dd offset loc_420CA0
dd offset loc_420CA9
dd offset loc_420CB2
dd offset loc_420CBB
dd offset loc_420CC4



sub_420B41 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
push    eax
mov     ecx, edx
xor     edx, edx
mov     [esp+1Ch+var_18], edx
xor     ebx, ebx
jmp     loc_420BFD

loc_420B59:
test    bx, bx
jz      short loc_420B73
jmp     short loc_420B91

loc_420B60:
mov     byte ptr [eax+2], 14h
mov     byte ptr [eax+3], 1

loc_420B68:
mov     byte ptr [eax+0Eh], 0
add     edi, esi
mov     [eax+54h], edi
jmp     short loc_420BCF

loc_420B73:
mov     byte ptr [eax+2], 14h
mov     byte ptr [eax+3], 2
jmp     short loc_420B68

loc_420B7D:
mov     byte ptr [eax+2], 14h
mov     byte ptr [eax+3], 3
jmp     short loc_420B68

loc_420B87:
mov     byte ptr [eax+2], 14h
mov     byte ptr [eax+3], 4
jmp     short loc_420B68

loc_420B91:
mov     byte ptr [edx], 5
mov     byte ptr [edx+2], 80h
mov     byte ptr [edx+3], 41h ; 'A'
movsx   eax, bx
mov     ebp, eax
shl     ebp, 3
lea     esi, [ecx+ebp]
lea     edi, [edx+48h]
lea     esi, [esi+20h]
movsd
movsd
mov     byte ptr [edx+0Dh], 1
shl     eax, 2
add     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0FFh], 0FFh
lea     edx, [ecx+20h]
add     edx, ebp
mov     eax, 0A1h
call    sub_4D8BC3

loc_420BCF:
movsx   eax, bx
mov     byte ptr [ecx+eax+130h], 1
jmp     short loc_420BF6

loc_420BDC:
cmp     dl, 1
jnz     short loc_420BF6
cmp     bx, 2
jz      short loc_420BF2
test    bx, bx
jz      short loc_420BF2
cmp     bx, 1
jnz     short loc_420BF6

loc_420BF2:
inc     [esp+1Ch+var_18]

loc_420BF6:
inc     ebx
cmp     bx, 0Ah
jge     short loc_420C4E

loc_420BFD:
movsx   esi, bx
lea     eax, [ecx+esi]
mov     dl, [eax+130h]
test    dl, dl
jnz     short loc_420BDC
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_420BCF
mov     byte ptr [eax], 1
mov     byte ptr [eax+4], 0
lea     edi, [ecx+20h]
shl     esi, 3
cmp     bx, 1
jb      loc_420B59
jbe     loc_420B7D
cmp     bx, 2
jbe     loc_420B60
cmp     bx, 9
jz      loc_420B87
jmp     loc_420B91

loc_420C4E:
cmp     word ptr [esp+1Ch+var_18], 3
jnz     short loc_420C68
test    byte ptr [ecx+141h], 10h
jnz     short loc_420C68
or      byte ptr [ecx+140h], 10h
jmp     short loc_420C80

loc_420C68:
cmp     word ptr [esp+1Ch+var_18], 1
jnz     short loc_420C80
test    byte ptr [ecx+141h], 8
jnz     short loc_420C80
or      byte ptr [ecx+140h], 8

loc_420C80:
test    byte ptr [ecx+142h], 1
jz      loc_41FCDD
mov     ebx, 3
mov     esi, [esp+1Ch+var_1C]
jmp     short loc_420CD6

loc_420C97:             ; jumptable 00420D28 case 3
mov     eax, [ecx+10h]
and     byte ptr [eax+0Ch], 0FEh
jmp     short def_420D28 ; jumptable 00420D28 default case

loc_420CA0:             ; jumptable 00420D28 case 4
mov     eax, [ecx+10h]
and     byte ptr [eax+0Ch], 0FDh
jmp     short def_420D28 ; jumptable 00420D28 default case

loc_420CA9:             ; jumptable 00420D28 case 5
mov     eax, [ecx+10h]
and     byte ptr [eax+0Ch], 0FBh
jmp     short def_420D28 ; jumptable 00420D28 default case

loc_420CB2:             ; jumptable 00420D28 case 6
mov     eax, [ecx+10h]
and     byte ptr [eax+0Dh], 0FEh
jmp     short def_420D28 ; jumptable 00420D28 default case

loc_420CBB:             ; jumptable 00420D28 case 7
mov     eax, [ecx+10h]
and     byte ptr [eax+0Dh], 0FDh
jmp     short def_420D28 ; jumptable 00420D28 default case

loc_420CC4:             ; jumptable 00420D28 case 8
mov     eax, [ecx+10h]
and     byte ptr [eax+0Dh], 0FBh

def_420D28:             ; jumptable 00420D28 default case
inc     ebx
cmp     bx, 8
jg      loc_41FCDD

loc_420CD6:
movsx   eax, bx
cmp     byte ptr [ecx+eax+130h], 0FFh
jz      short def_420D28 ; jumptable 00420D28 default case
movsx   edx, bx
lea     eax, [ecx+edx]
inc     byte ptr [eax+130h]
cmp     byte ptr [eax+130h], 0FFh
jnz     short def_420D28 ; jumptable 00420D28 default case
mov     eax, edx
shl     eax, 2
add     eax, esi
mov     byte ptr [eax+0FFh], 0
mov     eax, edx
mov     dx, [ecx+eax*2+0B8h]
mov     [ecx+eax*2+0A0h], dx
mov     eax, ebx
sub     eax, 3          ; switch 6 cases
cmp     ax, 5
ja      short def_420D28 ; jumptable 00420D28 default case
and     eax, 0FFFFh
jmp     jpt_420D28[eax*4] ; switch jump
sub_420B41 endp




sub_420D2F proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     edi, eax
mov     ebp, edx
xor     esi, esi
lea     edx, [ebp+20h]
jmp     short loc_420D46

loc_420D3F:
inc     esi
cmp     si, 10h
jge     short loc_420D94

loc_420D46:
movsx   eax, si
shl     eax, 3
mov     bx, ds:word_51086C[eax]
mov     cx, [edi+14h]
add     ebx, ecx
mov     [edx+eax], bx
mov     bx, ds:word_51086E[eax]
mov     cx, [edi+16h]
add     ebx, ecx
mov     [edx+eax+2], bx
mov     bx, word ptr ds:dword_510870[eax]
mov     cx, [edi+18h]
add     ebx, ecx
mov     [edx+eax+4], bx
cmp     si, 0Ch
jge     short loc_420D3F
mov     dword ptr [eax+ebp+0D0h], 0
jmp     short loc_420D3F

loc_420D94:
xor     esi, esi

loc_420D96:
push    80h
push    0
push    4880000h
movsx   eax, si
shl     eax, 3
lea     edx, [ebp+0D0h]
add     edx, eax
push    edx
xor     edx, edx
mov     dl, [edi+1]
push    edx
mov     edx, ds:dword_510870[eax]
sar     edx, 10h
lea     ecx, [ebp+20h]
add     eax, ecx
mov     ecx, 8000h
xor     ebx, ebx
call    sub_4E01FC
inc     esi
cmp     si, 0Ch
jl      short loc_420D96
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, edi
call    sub_432697
jmp     loc_41FA73
sub_420D2F endp

db 90h
jpt_420E18 dd offset loc_420E1F ; jump table for switch statement
dd offset loc_420E7F
dd offset loc_420EEB
dd offset def_420E18



sub_420E01 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ebx, edx
mov     al, [eax+0Bh]
cmp     al, 3           ; switch 4 cases
ja      def_420E18      ; jumptable 00420E18 default case, case 3
and     eax, 0FFh
jmp     jpt_420E18[eax*4] ; switch jump

loc_420E1F:             ; jumptable 00420E18 case 0
cmp     byte ptr [edx+141h], 7Fh
jnz     short loc_420E30
mov     byte ptr [esi+0Bh], 3
pop     esi
pop     ecx
pop     ebx
retn

loc_420E30:
mov     byte ptr [edx+13Fh], 0
jmp     short loc_420E50

loc_420E39:
mov     ch, [ebx+13Fh]
inc     ch
mov     [ebx+13Fh], ch
cmp     ch, 7
jnb     def_420E18      ; jumptable 00420E18 default case, case 3

loc_420E50:
mov     cl, [ebx+13Fh]
mov     eax, 1
shl     eax, cl
mov     ecx, eax
xor     eax, eax
mov     al, [ebx+140h]
test    eax, ecx
jz      short loc_420E39
xor     eax, eax
mov     al, [ebx+141h]
test    eax, ecx
jnz     short loc_420E39
mov     byte ptr [esi+0Bh], 1
pop     esi
pop     ecx
pop     ebx
retn

loc_420E7F:             ; jumptable 00420E18 case 1
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short loc_420EBB
xor     eax, eax
mov     al, [ebx+13Fh]
mov     edx, ds:dword_5108F9[eax]
sar     edx, 18h
mov     eax, 4
call    sub_4A0E24
mov     cl, [ebx+13Fh]
mov     al, 1
shl     al, cl
or      [ebx+141h], al
mov     byte ptr [esi+0Bh], 2
pop     esi
pop     ecx
pop     ebx
retn

loc_420EBB:
mov     cl, [ebx+13Fh]
mov     eax, 1
shl     eax, cl
xor     edx, edx
mov     dl, [ebx+141h]
test    edx, eax
jz      short def_420E18 ; jumptable 00420E18 default case, case 3
mov     eax, 4
call    sub_4A0E75
call    sub_4D8EB1

loc_420EE3:
mov     byte ptr [esi+0Bh], 0
pop     esi
pop     ecx
pop     ebx
retn

loc_420EEB:             ; jumptable 00420E18 case 2
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_420EE3

def_420E18:             ; jumptable 00420E18 default case, case 3
pop     esi
pop     ecx
pop     ebx
retn
sub_420E01 endp




sub_420EF8 proc near
push    ebx
push    ecx
mov     bx, [edx+18h]
cmp     bx, 1BCh
jge     loc_420FC5
cmp     bx, 0BCh
jb      short loc_420F3F
jbe     loc_420F84
cmp     bx, 130h
jb      short loc_420F33
jbe     loc_420F9A
cmp     bx, 1ACh
jz      loc_420FA2
jmp     loc_420FBE

loc_420F33:
cmp     bx, 120h
jz      short loc_420F8C
jmp     loc_420FBE

loc_420F3F:
cmp     bx, 10h
jb      short loc_420F53
jbe     short loc_420F64
cmp     bx, 0ACh
jz      short loc_420F6C
jmp     loc_420FBE

loc_420F53:
test    bx, bx
jnz     loc_420FBE
mov     word ptr [eax+50h], 1
jmp     short loc_420FBE

loc_420F64:
mov     word ptr [eax+50h], 0
jmp     short loc_420FBE

loc_420F6C:
cmp     byte ptr [eax+9], 2
jnz     short loc_420F79
mov     ecx, 1
jmp     short loc_420F7E

loc_420F79:
mov     ecx, 0FFFFFFFFh

loc_420F7E:
mov     [eax+4Ch], cx
jmp     short loc_420FBE

loc_420F84:
mov     word ptr [eax+4Ch], 0
jmp     short loc_420FBE

loc_420F8C:
mov     word ptr [eax+4Eh], 0FFFFh
mov     word ptr [eax+50h], 0FFFFh
jmp     short loc_420FBE

loc_420F9A:
mov     word ptr [eax+4Eh], 0
jmp     short loc_420F64

loc_420FA2:
cmp     byte ptr [eax+9], 2
jnz     short loc_420FAF
mov     ecx, 0FFFFFFFFh
jmp     short loc_420FB4

loc_420FAF:
mov     ecx, 1

loc_420FB4:
mov     [eax+4Ch], cx
mov     word ptr [eax+4Eh], 1

loc_420FBE:
inc     word ptr [edx+18h]
pop     ecx
pop     ebx
retn

loc_420FC5:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 5
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
pop     ecx
pop     ebx
retn
sub_420EF8 endp




sub_420FE4 proc near
push    ebx
push    ecx
mov     bx, [edx+18h]
cmp     bx, 1BCh
jge     loc_4210C1
cmp     bx, 9Ch
jb      short loc_42102F
jbe     loc_421086
cmp     bx, 110h
jb      short loc_42101F
jbe     loc_4210AC
cmp     bx, 1ACh
jz      loc_4210B4
jmp     loc_4210BA

loc_42101F:
cmp     bx, 100h
jz      loc_421094
jmp     loc_4210BA

loc_42102F:
cmp     bx, 10h
jb      short loc_421043
jbe     short loc_42106A
cmp     bx, 8Ch
jz      short loc_421078
jmp     loc_4210BA

loc_421043:
test    bx, bx
jnz     loc_4210BA
cmp     byte ptr [eax+9], 6
jnz     short loc_421059
mov     ecx, 1
jmp     short loc_42105E

loc_421059:
mov     ecx, 0FFFFFFFFh

loc_42105E:
mov     [eax+4Ch], cx
mov     word ptr [eax+4Eh], 1
jmp     short loc_4210BA

loc_42106A:
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
jmp     short loc_4210BA

loc_421078:
mov     word ptr [eax+4Eh], 0FFFFh
mov     word ptr [eax+50h], 0FFFFh
jmp     short loc_4210BA

loc_421086:
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
jmp     short loc_4210BA

loc_421094:
cmp     byte ptr [eax+9], 6
jnz     short loc_4210A1
mov     ecx, 0FFFFFFFFh
jmp     short loc_4210A6

loc_4210A1:
mov     ecx, 1

loc_4210A6:
mov     [eax+4Ch], cx
jmp     short loc_4210BA

loc_4210AC:
mov     word ptr [eax+4Ch], 0
jmp     short loc_4210BA

loc_4210B4:
mov     word ptr [eax+50h], 1

loc_4210BA:
inc     word ptr [edx+18h]
pop     ecx
pop     ebx
retn

loc_4210C1:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 5
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
pop     ecx
pop     ebx
retn
sub_420FE4 endp




sub_4210E0 proc near
push    ebx
mov     bx, [edx+18h]
cmp     bx, 0B0h
jge     loc_42114D
cmp     bx, 20h ; ' '
jb      short loc_421109
jbe     short loc_421139
cmp     bx, 30h ; '0'
jb      short loc_421147
jbe     short loc_421131
cmp     bx, 0A0h
jz      short loc_421141
jmp     short loc_421147

loc_421109:
test    bx, bx
jbe     short loc_421116
cmp     bx, 10h
jz      short loc_42112B
jmp     short loc_421147

loc_421116:
or      byte ptr [edx+140h], 20h
mov     word ptr [eax+4Eh], 1
mov     word ptr [eax+50h], 1
jmp     short loc_421147

loc_42112B:
mov     word ptr [eax+4Eh], 0

loc_421131:
mov     word ptr [eax+50h], 0
jmp     short loc_421147

loc_421139:
mov     word ptr [eax+50h], 0FFFFh
jmp     short loc_421147

loc_421141:
mov     word ptr [eax+4Eh], 0FFFFh

loc_421147:
inc     word ptr [edx+18h]
jmp     short loc_421166

loc_42114D:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 84h
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
inc     byte ptr [eax+0Ah]

loc_421166:
mov     bx, [eax+4Eh]
add     [eax+46h], bx
mov     bx, [eax+50h]
add     [eax+48h], bx
mov     bx, [eax+46h]
add     [eax+16h], bx
mov     bx, [eax+48h]
add     [eax+18h], bx
test    byte ptr [edx+14h], 4
jz      loc_41FF5A
mov     word ptr [eax+14h], 0
mov     word ptr [edx+1Ch], 0FE00h
mov     bx, [edx+1Ch]
mov     [eax+16h], bx
mov     word ptr [eax+18h], 1A00h
and     byte ptr [edx+14h], 0FBh
jmp     loc_41FF5A
sub_4210E0 endp




sub_4211B3 proc near

var_C= dword ptr -0Ch

push    esi
push    edi
sub     esp, 4
mov     esi, eax
mov     eax, ebx
mov     ebx, ecx
cmp     ax, 0Ch
jnz     loc_42124D
xor     eax, eax
jmp     short loc_421217

loc_4211CC:
cmp     ax, 1
jnz     loc_421240

loc_4211D6:
movsx   ecx, ax
mov     edi, ecx
shl     ecx, 3
add     ecx, esi
cmp     word ptr [edx+edi*2+9Eh], 0
jle     short loc_4211F4
mov     [ecx+196h], bx
jmp     short loc_42120C

loc_4211F4:
cmp     byte ptr [edx+1Fh], 10h
jnb     short loc_42122E
movzx   di, byte ptr [edx+1Fh]

loc_4211FF:
add     edi, 4210h
mov     [ecx+196h], di

loc_42120C:
inc     eax
cmp     ax, 0Ch
jge     loc_421274

loc_421217:
cmp     word ptr [esi+6Eh], 0
jle     short loc_421240
cmp     ax, 2
jb      short loc_4211CC
jbe     short loc_4211D6
cmp     ax, 3
jz      short loc_4211D6
jmp     short loc_421240

loc_42122E:
movzx   di, byte ptr [edx+1Fh]
mov     [esp+0Ch+var_C], edi
mov     edi, 1Fh
sub     edi, [esp+0Ch+var_C]
jmp     short loc_4211FF

loc_421240:
movsx   ecx, ax
mov     [esi+ecx*8+196h], bx
jmp     short loc_42120C

loc_42124D:
cmp     ax, 9
jnz     short loc_421269
xor     eax, eax

loc_421255:
movsx   edx, ax
mov     [esi+edx*8+196h], bx
inc     eax
cmp     ax, 0Ch
jl      short loc_421255
jmp     short loc_421274

loc_421269:
movsx   edx, ax
mov     [esi+edx*8+19Eh], cx

loc_421274:
add     esp, 4
pop     edi
pop     esi
retn
sub_4211B3 endp




sub_42127A proc near
push    ebx
mov     ebx, eax
mov     eax, [edx+14h]
sar     eax, 10h
sar     eax, 4
and     eax, 0Fh
sar     eax, 1
mov     bl, [ebx+9]
cmp     bl, 8
jb      short loc_42129C
jbe     short loc_4212C5
cmp     bl, 9
jz      short loc_4212E5
pop     ebx
retn

loc_42129C:
cmp     bl, 7
jnz     loc_421303
mov     bl, [edx+13Dh]
cmp     bl, [edx+13Eh]
ja      short loc_4212BE
test    ax, ax
jnz     short loc_4212FF

loc_4212B8:
or      byte ptr [edx+14h], 21h
pop     ebx
retn

loc_4212BE:
test    ax, ax
jz      short loc_4212FF
jmp     short loc_4212B8

loc_4212C5:
mov     bl, [edx+13Ch]
cmp     bl, [edx+13Eh]
ja      short loc_4212DE
test    ax, ax
jz      short loc_4212B8

loc_4212D8:
or      byte ptr [edx+14h], 9
pop     ebx
retn

loc_4212DE:
test    ax, ax
jz      short loc_4212D8
jmp     short loc_4212B8

loc_4212E5:
mov     bl, [edx+13Ch]
cmp     bl, [edx+13Dh]
ja      short loc_4212FA
test    ax, ax
jz      short loc_4212FF
jmp     short loc_4212D8

loc_4212FA:
test    ax, ax
jz      short loc_4212D8

loc_4212FF:
or      byte ptr [edx+14h], 11h

loc_421303:
pop     ebx
retn
sub_42127A endp




sub_421305 proc near
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ebp, edx
cmp     byte ptr [eax+9], 8
jnz     short loc_421318
add     ebx, 3
jmp     short loc_42131B

loc_421318:
add     ebx, 6

loc_42131B:
mov     edi, ebx
cmp     byte ptr [ebx+ebp+130h], 0FFh
jnz     loc_4213F2
call    sub_4DE043
mov     ecx, eax
test    eax, eax
jz      loc_4213F2
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 7
mov     byte ptr [eax+4], 0
mov     dl, [ebp+16h]
and     dl, 1
mov     [eax+3], dl
cmp     byte ptr [esi+9], 8
jnz     short loc_42135A
mov     byte ptr [eax+0Ch], 0
jmp     short loc_42135E

loc_42135A:
mov     byte ptr [eax+0Ch], 1

loc_42135E:
mov     edx, [ebp+14h]
sar     edx, 10h
sar     edx, 4
mov     ebx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     [ecx+0Dh], dl
mov     byte ptr [ecx+0Eh], 1
mov     al, [ebp+1Eh]
mov     [ecx+0Fh], al
mov     esi, edi
lea     edi, [ecx+14h]
lea     esi, [ebp+esi*8+20h]
movsd
movsd
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4213DF
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 14h
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     dx, [ecx+14h]
mov     [eax+1Ch], dx
mov     dx, [ecx+16h]
mov     [eax+1Eh], dx
mov     dx, [ecx+18h]
mov     [eax+20h], dx

loc_4213DF:
lea     edx, [ecx+14h]
mov     eax, 1A2h
call    sub_4D8BC3
inc     dword ptr [ebp+144h]

loc_4213F2:
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_421305 endp




sub_4213F7 proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     edi, edx
mov     edx, ebx
call    sub_4DE043
mov     ecx, eax
test    eax, eax
jz      loc_4214A4
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 7
mov     byte ptr [eax+3], 2
mov     [eax+0Ch], bl
mov     eax, [edi+14h]
sar     eax, 10h
sar     eax, 2
and     eax, 1
mov     [ecx+0Dh], al
mov     byte ptr [ecx+0Eh], 1
mov     al, [edi+1Eh]
mov     [ecx+0Fh], al
mov     dword ptr [ecx+0DCh], (offset dword_5F880A+2)
mov     eax, [esi+12h]
sar     eax, 10h
mov     ebx, ds:dword_5108EA
sar     ebx, 10h
add     ebx, eax
mov     edi, 4
mov     eax, edx
sar     edx, 1Fh
idiv    edi
movsx   edx, dx
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 3
add     ebx, eax
mov     [ecx+14h], bx
mov     ax, [esi+16h]
mov     dx, ds:word_5108EE
add     eax, edx
mov     [ecx+16h], ax
mov     ax, [esi+18h]
mov     bx, ds:word_5108F0
add     eax, ebx
mov     [ecx+18h], ax
lea     edx, [ecx+14h]
mov     eax, 1A1h
call    sub_4D8BC3

loc_4214A4:
pop     edi
pop     esi
pop     ecx
retn
sub_4213F7 endp




sub_4214A8 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     dword ptr [edx+4], 0
mov     dword ptr [edx+8], 0
call    sub_4DE043
test    eax, eax
jz      short loc_421532
mov     [edx+4], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Dh], 0
mov     bx, [ecx+14h]
mov     si, ds:word_5108F4
sub     ebx, esi
mov     [eax+14h], bx
mov     bx, [ecx+16h]
mov     di, ds:word_5108F6
add     ebx, edi
mov     [eax+16h], bx
mov     bx, [ecx+18h]
mov     si, word ptr ds:unk_5108F8
add     ebx, esi
mov     [eax+18h], bx
mov     ebx, [eax+12h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+1Ch], ebx
mov     ebx, [eax+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+20h], ebx
mov     ebx, [eax+16h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+24h], ebx

loc_421532:
call    sub_4DE043
test    eax, eax
jz      short loc_4215A8
mov     [edx+8], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Dh], 0
mov     dx, [ecx+14h]
mov     di, ds:word_5108F4
add     edx, edi
mov     [eax+14h], dx
mov     dx, [ecx+16h]
mov     bx, ds:word_5108F6
add     edx, ebx
mov     [eax+16h], dx
mov     dx, [ecx+18h]
mov     cx, word ptr ds:unk_5108F8
add     edx, ecx
mov     [eax+18h], dx
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

loc_4215A8:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4214A8 endp




sub_4215AD proc near
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
cmp     byte ptr [eax+8], 0
jnz     short loc_421614
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
mov     dword ptr [ecx+158h], 0C000C00h
mov     dword ptr [ecx+15Ch], 0C00h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
jmp     short loc_421632

loc_421614:
cmp     byte ptr [ecx+9], 1
jnz     short loc_42162B
sub     word ptr [ecx+18h], 18h
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax

loc_42162B:
mov     eax, ecx
call    sub_4DEADD

loc_421632:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4215AD endp

dword_421638 dd 3 dup(1000h), 0



sub_421648 proc near
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
movzx   esi, byte ptr [eax+8]
lea     ebx, [eax+4F0h]
mov     edx, ebx
call    ds:funcs_421675[esi*4]
mov     edx, ebx
mov     eax, ecx
call    sub_421777
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_421648 endp




sub_42168B proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
mov     dword ptr [ecx+158h], 0C000C00h
mov     dword ptr [ecx+15Ch], 0C00h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0Ch], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+48h], 0
lea     ebx, [esi+8]
mov     edx, 1
mov     eax, ecx
call    sub_40769E
mov     [esi], eax
lea     ebx, [esi+50h]
mov     edx, 1
mov     eax, ecx
call    sub_40769E
mov     [esi+4], eax
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     esi
pop     ecx
pop     ebx
retn
sub_42168B endp




sub_42170B proc near
push    ecx
mov     ecx, eax
call    sub_4DEADD
mov     ah, ds:byte_560BE5
cmp     ah, 1
jnz     short loc_421721
add     [ecx+8], ah

loc_421721:
pop     ecx
retn
sub_42170B endp




sub_421723 proc near
push    ecx
mov     ecx, eax
mov     ah, ds:byte_560BE5
cmp     ah, 1
jz      short loc_421736
cmp     ah, 3
jnz     short loc_421756

loc_421736:
cmp     byte ptr [ecx+0Ch], 78h ; 'x'
jge     short loc_421743
inc     word ptr [ecx+54h]
inc     byte ptr [ecx+0Ch]

loc_421743:
add     word ptr [ecx+16h], 8
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
jmp     short loc_421762

loc_421756:
cmp     ah, 4
jnz     short loc_421762
mov     byte ptr [ecx+0Ch], 0
inc     byte ptr [ecx+8]

loc_421762:
mov     eax, ecx

loc_421764:
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     ecx
retn
sub_421723 endp




sub_421772 proc near
push    ecx
mov     ecx, eax
jmp     short loc_421764
sub_421772 endp




sub_421777 proc near

var_28= byte ptr -28h
var_18= byte ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 44h
mov     ecx, eax
mov     ebp, edx
lea     edi, [esp+58h+var_28]
mov     esi, offset dword_421638
movsd
movsd
movsd
movsd
mov     eax, esp
call    sub_4EF184
lea     eax, [ecx+54h]
mov     edx, esp
call    sub_4EF638
lea     edx, [esp+58h+var_28]
mov     eax, esp
call    sub_4EF689
xor     ah, ah
mov     [esp+58h+var_18], ah

loc_4217B2:
mov     esi, [esp+3Dh]
sar     esi, 18h
shl     esi, 3
lea     ebx, [ebp+8]
add     ebx, esi
mov     edx, offset unk_510914
add     edx, esi
mov     eax, esp
call    sub_4EF2DC
lea     eax, [esi+ebp]
mov     dx, [ecx+14h]
add     [eax+8], dx
mov     dx, [ecx+16h]
add     [eax+0Ah], dx
mov     dx, [ecx+18h]
add     [eax+0Ch], dx
mov     dl, [esp+58h+var_18]
inc     dl
mov     [esp+58h+var_18], dl
cmp     dl, 12h
jl      short loc_4217B2
add     esp, 44h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_421777 endp

word_421802 dw 0C950h
dd 0FA0DCD8h, 0
dword_42180C dd 0E0C0h, 0F0600000h, 0E0C0h, 52510000h
dd 0C2895756h, 488AC931h, 8D14FF09h
dd offset off_5109A4
lea     edi, [edx+2Ch]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [edx+34h]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [edx+5Ch]
lea     esi, [edx+54h]
movsd
movsd
mov     eax, edx
call    sub_4DEB53
mov     eax, edx
call    sub_4DF7CB
pop     edi
pop     esi
pop     edx
pop     ecx
retn



sub_421859 proc near

var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebp, eax
xor     edx, edx
mov     ecx, 6
mov     edi, esp
mov     esi, offset word_421802
rep movsd
mov     ah, [eax]
or      ah, 2
mov     [ebp+0], ah
mov     al, ds:byte_560BE4
cmp     al, 9
jb      short loc_42188D
jbe     short loc_4218A2
cmp     al, 0Ah
jz      short loc_4218A9
jmp     short loc_4218B4

loc_42188D:
test    al, al
jnz     short loc_4218B4
mov     word ptr [ebp+56h], 0FFD0h
mov     word ptr [ebp+58h], 40h ; '@'
mov     [ebp+0Ch], al
jmp     short loc_4218B4

loc_4218A2:
mov     edx, 1
jmp     short loc_4218B4

loc_4218A9:
mov     edx, 2
mov     word ptr [ebp+58h], 30h ; '0'

loc_4218B4:
mov     bx, [esp+edx*8+30h+var_30]
mov     [ebp+14h], bx
mov     bx, [esp+edx*8+30h+var_2E]
mov     [ebp+16h], bx
mov     ax, [esp+edx*8+30h+var_2C]
mov     [ebp+18h], ax
inc     dl
mov     [ebp+9], dl
lea     edx, [ebp+3]
mov     eax, ebp
call    sub_4DD107
mov     dword ptr [ebp+158h], 0C000C00h
mov     dword ptr [ebp+15Ch], 0C00h
mov     word ptr [ebp+15Eh], 4210h
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
add     esp, 18h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_421859 endp




sub_42190F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ch], 1
jnz     short loc_421957
mov     edx, ds:dword_560BEC
sub     edx, 186h
mov     ebx, 14h
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     edx, eax
shl     eax, 2
add     eax, edx
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     edx, 6Eh ; 'n'
sub     edx, eax
mov     eax, [ecx+12h]
sar     eax, 10h
add     eax, edx
mov     [ecx+14h], ax
pop     edx
pop     ecx
pop     ebx
retn

loc_421957:
cmp     byte ptr [ecx+0Ch], 2
jnz     short loc_421966
add     word ptr [ecx+14h], 8
dec     word ptr [ecx+58h]

loc_421966:
pop     edx
pop     ecx
pop     ebx
retn
sub_42190F endp




sub_42196A proc near
cmp     ds:dword_560BEC, 30h ; '0'
jge     short loc_42197E
add     word ptr [eax+58h], 2
add     word ptr [eax+14h], 5
retn

loc_42197E:
add     word ptr [eax+14h], 18h
retn
sub_42196A endp




sub_421984 proc near
push    ecx
push    edx
mov     edx, ds:dword_560BEC
cmp     edx, 64h ; 'd'
jge     short loc_421999
add     word ptr [eax+14h], 28h ; '('
pop     edx
pop     ecx
retn

loc_421999:
cmp     edx, 8Ch
jge     short loc_4219AE
sub     word ptr [eax+58h], 2
add     word ptr [eax+14h], 0Ch
pop     edx
pop     ecx
retn

loc_4219AE:
mov     dx, ds:word_77EAB6
xor     dh, dh
and     dl, 3Fh
and     edx, 0FFFFh
mov     ecx, dword ptr ds:unk_564C32[edx*2]
sar     ecx, 10h
sar     ecx, 0Bh
mov     edx, [eax+14h]
sar     edx, 10h
add     edx, ecx
mov     [eax+16h], dx
pop     edx
pop     ecx
retn
sub_421984 endp




sub_4219DC proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4219FD
mov     word ptr [eax+58h], 0
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0F448h
mov     word ptr [eax+18h], 0
inc     byte ptr [eax+0Ah]

loc_4219FD:
sub     word ptr [eax+18h], 30h ; '0'
retn
sub_4219DC endp




sub_421A03 proc near
mov     byte ptr [eax+8], 0
mov     edx, ds:off_5109CA[edx*4]
mov     [eax], edx
mov     byte ptr [eax+9], 0
retn
sub_421A03 endp




sub_421A15 proc near
mov     byte ptr [eax+0Ah], 0
mov     edx, ds:off_510A38[edx*4]
mov     [eax+4], edx
mov     byte ptr [eax+0Bh], 0
retn
sub_421A15 endp




sub_421A28 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     ah, [edx+9]
test    ah, ah
jnz     short loc_421A99
mov     eax, [edx+5]
sar     eax, 18h
mov     ecx, [edx]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_421A50
jbe     short loc_421AA0
cmp     al, 7Fh
jnz     short loc_421A50
mov     byte ptr [edx+8], 0

loc_421A50:
mov     ecx, [esi+5]
sar     ecx, 18h
mov     eax, [esi]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 0E000Dh
mov     eax, ecx
call    sub_4EE044
mov     ecx, [esi+5]
sar     ecx, 18h
mov     eax, [esi]
mov     al, [ecx+eax+1]
mov     [esi+9], al
add     byte ptr [esi+8], 2
jmp     short loc_421AA0

loc_421A99:
mov     dl, ah
dec     dl
mov     [esi+9], dl

loc_421AA0:
mov     bl, [esi+0Bh]
test    bl, bl
jnz     short loc_421B0E
mov     eax, [esi+7]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_421AC0
jbe     short loc_421B15
cmp     al, 7Fh
jnz     short loc_421AC0
mov     [esi+0Ah], bl

loc_421AC0:
mov     ecx, [esi+7]
sar     ecx, 18h
mov     eax, [esi+4]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, edi
call    sub_4EE044
mov     eax, [esi+7]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax+1]
mov     [esi+0Bh], al
add     byte ptr [esi+0Ah], 2
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_421B0E:
mov     bh, bl
dec     bh
mov     [esi+0Bh], bh

loc_421B15:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_421A28 endp




sub_421B1A proc near
push    ecx
mov     ecx, eax
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
pop     ecx
retn
sub_421B1A endp




sub_421B53 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
call    sub_421B1A
inc     byte ptr [ecx+8]
mov     edx, ebx
mov     eax, ecx
call    sub_421E75
pop     ecx
pop     ebx
retn
sub_421B53 endp




sub_421B6D proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     al, [eax+9]
test    al, al
ja      short loc_421B9D
xor     edx, edx
mov     eax, ebx
call    sub_421A03
xor     edx, edx
mov     eax, ebx
call    sub_421A15
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]

loc_421B9D:
pop     ecx
pop     ebx
retn
sub_421B6D endp

db 8Dh, 40h, 0
jpt_421BCD dd offset loc_421BD4 ; jump table for switch statement
dd offset loc_421BE8
dd offset def_421BCD
dd offset loc_421BF1
dd offset loc_421C0C
dd offset def_421BCD



sub_421BBB proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     al, [eax+9]
cmp     al, 5           ; switch 6 cases
ja      short def_421BCD ; jumptable 00421BCD default case, cases 2,5
and     eax, 0FFh
jmp     jpt_421BCD[eax*4] ; switch jump

loc_421BD4:             ; jumptable 00421BCD case 0
xor     ebx, edx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B

loc_421BE2:
inc     byte ptr [ecx+9]
pop     ecx
pop     ebx
retn

loc_421BE8:             ; jumptable 00421BCD case 1
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_421BE2

loc_421BF1:             ; jumptable 00421BCD case 3
mov     edx, 9
mov     eax, ebx
call    sub_421A15
mov     edx, 5
mov     eax, ebx
call    sub_421A03
inc     byte ptr [ecx+9]

loc_421C0C:             ; jumptable 00421BCD case 4
mov     eax, ecx
call    sub_4DEADD

def_421BCD:             ; jumptable 00421BCD default case, cases 2,5
pop     ecx
pop     ebx
retn
sub_421BBB endp

db 90h
jpt_421C3A dd offset loc_421C41 ; jump table for switch statement
dd offset loc_421C80
dd offset loc_421C89
dd offset loc_421C80



sub_421C27 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      short def_421C3A ; jumptable 00421C3A default case
and     eax, 0FFh
jmp     jpt_421C3A[eax*4] ; switch jump

loc_421C41:             ; jumptable 00421C3A case 0
mov     edx, 1
mov     eax, esi
call    sub_421A15
mov     edx, 1
mov     eax, esi
call    sub_421A03
xor     ebx, ebx
mov     edx, 12h

loc_421C60:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]

def_421C3A:             ; jumptable 00421C3A default case
mov     ecx, ds:dword_560BEC
cmp     ecx, 32h ; '2'
jb      short loc_421CAB
jbe     short loc_421C98
cmp     ecx, 78h ; 'x'
jz      short loc_421C9F
pop     esi
pop     ecx
pop     ebx
retn

loc_421C80:             ; jumptable 00421C3A cases 1,3
mov     eax, ecx
call    sub_4DEADD
jmp     short def_421C3A ; jumptable 00421C3A default case

loc_421C89:             ; jumptable 00421C3A case 2
mov     word ptr [ecx+56h], 0
xor     ebx, ebx
mov     edx, 13h
jmp     short loc_421C60

loc_421C98:
mov     edx, 4
jmp     short loc_421CA4

loc_421C9F:
mov     edx, 1

loc_421CA4:
mov     eax, esi
call    sub_421A15

loc_421CAB:
pop     esi
pop     ecx
pop     ebx
retn
sub_421C27 endp

jpt_421CD2 dd offset loc_421CD9 ; jump table for switch statement
dd offset loc_421CE2
dd offset loc_421CEB
dd offset loc_421CE2



sub_421CBF proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      short def_421CD2 ; jumptable 00421CD2 default case
and     eax, 0FFh
jmp     jpt_421CD2[eax*4] ; switch jump

loc_421CD9:             ; jumptable 00421CD2 case 0
xor     ebx, ebx
mov     edx, 14h
jmp     short loc_421CEF

loc_421CE2:             ; jumptable 00421CD2 cases 1,3
mov     eax, ecx
call    sub_4DEADD
jmp     short def_421CD2 ; jumptable 00421CD2 default case

loc_421CEB:             ; jumptable 00421CD2 case 2
xor     ebx, ebx
xor     edx, edx

loc_421CEF:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]

def_421CD2:             ; jumptable 00421CD2 default case
mov     ecx, ds:dword_560BEC
test    ecx, ecx
jbe     short loc_421D0F
cmp     ecx, 96h
jz      short loc_421D22
pop     esi
pop     ecx
pop     ebx
retn

loc_421D0F:
mov     edx, 2
mov     eax, esi
call    sub_421A03
mov     edx, 5
jmp     short loc_421D27

loc_421D22:
mov     edx, 2

loc_421D27:
mov     eax, esi
call    sub_421A15
pop     esi
pop     ecx
pop     ebx
retn
sub_421CBF endp




sub_421D32 proc near
push    ecx
mov     ecx, edx
call    sub_4DEADD
mov     eax, ds:dword_560BEC
cmp     eax, 78h ; 'x'
jb      short loc_421D58
jbe     short loc_421D6F
cmp     eax, 82h
jb      short loc_421D82
jbe     short loc_421D68
cmp     eax, 0BEh
jz      short loc_421D76
pop     ecx
retn

loc_421D58:
test    eax, eax
jnz     short loc_421D82
mov     edx, 1
mov     eax, ecx
call    sub_421A03

loc_421D68:
mov     edx, 4
jmp     short loc_421D7B

loc_421D6F:
mov     edx, 1
jmp     short loc_421D7B

loc_421D76:
mov     edx, 1

loc_421D7B:
mov     eax, ecx
call    sub_421A15

loc_421D82:
pop     ecx
retn
sub_421D32 endp




sub_421D84 proc near
push    ecx
mov     ecx, edx
call    sub_4DEADD
mov     eax, ds:dword_560BEC
cmp     eax, 78h ; 'x'
jb      short loc_421DB3
jbe     short loc_421DD6
cmp     eax, 104h
jb      short loc_421DAA
jbe     short loc_421DD6
cmp     eax, 17Ch
jz      short loc_421DDD
pop     ecx
retn

loc_421DAA:
cmp     eax, 0E6h

loc_421DAF:
jz      short loc_421DCF
pop     ecx
retn

loc_421DB3:
cmp     eax, 28h ; '('
jb      short loc_421DBF
jbe     short loc_421DD6
cmp     eax, 6Eh ; 'n'
jmp     short loc_421DAF

loc_421DBF:
test    eax, eax
jnz     short loc_421DE9
mov     edx, 1
mov     eax, ecx
call    sub_421A03

loc_421DCF:
mov     edx, 1
jmp     short loc_421DE2

loc_421DD6:
mov     edx, 4
jmp     short loc_421DE2

loc_421DDD:
mov     edx, 1

loc_421DE2:
mov     eax, ecx
call    sub_421A15

loc_421DE9:
pop     ecx
retn
sub_421D84 endp



; Attributes: thunk

sub_421DEB proc near
jmp     sub_4DEADD
sub_421DEB endp




sub_421DF0 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ecx, edx
mov     al, [eax+9]
cmp     al, 1
jb      short loc_421E02
jbe     short loc_421E19
jmp     short loc_421E20

loc_421E02:
test    al, al
jnz     short loc_421E20
xor     ebx, ebx
mov     edx, 15h
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]
jmp     short loc_421E20

loc_421E19:
mov     eax, esi
call    sub_4DEADD

loc_421E20:
mov     eax, ds:dword_560BEC
cmp     eax, 28h ; '('
jb      short loc_421E3E
jbe     short loc_421E57
cmp     eax, 3Ch ; '<'
jb      short loc_421E71
jbe     short loc_421E5E
cmp     eax, 91h
jz      short loc_421E65
pop     esi
pop     ecx
pop     ebx
retn

loc_421E3E:
test    eax, eax
jbe     short loc_421E4B
cmp     eax, 14h
jz      short loc_421E5E
pop     esi
pop     ecx
pop     ebx
retn

loc_421E4B:
mov     edx, 3
mov     eax, ecx
call    sub_421A03

loc_421E57:
mov     edx, 3
jmp     short loc_421E6A

loc_421E5E:
mov     edx, 6
jmp     short loc_421E6A

loc_421E65:
mov     edx, 3

loc_421E6A:
mov     eax, ecx
call    sub_421A15

loc_421E71:
pop     esi
pop     ecx
pop     ebx
retn
sub_421DF0 endp




sub_421E75 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     ecx, edx
xor     eax, eax
mov     al, ds:byte_560BE5
cmp     ds:funcs_421EB5[eax*4], 0
jz      short loc_421ED8
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
xor     ebx, ebx
mov     bl, ds:byte_560BE5
mov     edx, ecx
mov     eax, ebp
call    ds:funcs_421EB5[ebx*4]
mov     edx, ecx
mov     eax, ebp
call    sub_421A28
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 64h ; 'd'
mov     eax, ebp
call    sub_4ED88B

loc_421ED8:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_421E75 endp




sub_421EDE proc near
push    ecx
xor     ecx, ecx
mov     cl, [eax+8]
lea     edx, [eax+640h]
call    ds:funcs_421EEA[ecx*4]
pop     ecx
retn
sub_421EDE endp




sub_421EF3 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
call    sub_421B1A
mov     edx, 4
mov     eax, ebx
call    sub_421A03
mov     edx, 7
mov     eax, ebx
call    sub_421A15
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     ecx
pop     ebx
retn
sub_421EF3 endp




sub_421F2A proc near
push    ecx
mov     ecx, eax
mov     eax, edx
cmp     byte ptr ds:dword_560BE0, 1
jnz     short loc_421F80
mov     edx, ds:dword_560BEC
cmp     edx, 73h ; 's'
jb      short loc_421F59
jbe     short loc_421F67
cmp     edx, 0AFh
jb      short loc_421F80
jbe     short loc_421F73
cmp     edx, 0E6h
jz      short loc_421F7A
jmp     short loc_421F80

loc_421F59:
cmp     edx, 46h ; 'F'
jb      short loc_421F80
jbe     short loc_421F67
cmp     edx, 64h ; 'd'
jz      short loc_421F73
jmp     short loc_421F80

loc_421F67:
mov     edx, 8

loc_421F6C:
call    sub_421A15
jmp     short loc_421F80

loc_421F73:
mov     edx, 7
jmp     short loc_421F6C

loc_421F7A:
inc     byte ptr ds:dword_560BE0+2

loc_421F80:
mov     eax, ecx
call    sub_4DEADD
pop     ecx
retn
sub_421F2A endp




sub_421F89 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
movzx   esi, byte ptr [eax+8]
lea     edx, [eax+640h]
call    ds:funcs_421F9A[esi*4]
mov     edx, ebx
mov     eax, ecx
call    sub_421A28
pop     esi
pop     ecx
pop     ebx
retn
sub_421F89 endp




sub_421FAE proc near
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+3]
lea     edx, [eax+640h]
call    ds:funcs_421FBB[ecx*4]
pop     edx
pop     ecx
retn
sub_421FAE endp




sub_421FC5 proc near
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
call    ds:funcs_422004[esi*4]
mov     edx, ecx
mov     eax, ebp
call    sub_422860
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+0ADh]
jz      short loc_422038
mov     ebx, [ecx]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ebp+0ACh]
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_42203F

loc_422038:
mov     eax, ebp
call    sub_4DEADD

loc_42203F:
cmp     byte ptr [ecx+12h], 0
jz      short loc_422058
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 80h
mov     eax, ebp
call    sub_4ED88B

loc_422058:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_421FC5 endp




sub_42205F proc near
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
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx], 0
mov     word ptr [ebx+2], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_42282E
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_422847
mov     dl, [ecx+3]
test    dl, dl
jnz     short loc_4220D8
mov     word ptr [ecx+15Eh], 421h
mov     byte ptr [ecx+0ACh], 1
mov     [esi+12h], dl
mov     byte ptr [ecx+8], 1
jmp     short loc_4220F0

loc_4220D8:
mov     word ptr [ecx+15Eh], 4210h
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [esi+12h], 1
mov     byte ptr [ecx+8], 2

loc_4220F0:
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     esi
pop     ecx
retn
sub_42205F endp

db 8Bh, 0C0h
jpt_422165 dd offset loc_42216C ; jump table for switch statement
dd offset loc_42218C
dd offset loc_4221C7
dd offset loc_422225
dd offset loc_422242
dd offset loc_42227F
dd offset loc_4222A5
dd offset loc_4223D6
dd offset loc_422486
dd offset loc_422501
dd offset loc_42256A
dd offset loc_422660
dd offset loc_4226F0
dd offset loc_42270A
dd offset loc_42272A
dd offset loc_4227C3
dd offset loc_422806
dd offset loc_422822



sub_422149 proc near
push    ecx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     eax, edx
mov     esi, ebx
mov     dl, [ecx+9]
cmp     dl, 11h         ; switch 18 cases
ja      def_422165      ; jumptable 00422165 default case
and     edx, 0FFh
jmp     jpt_422165[edx*4] ; switch jump

loc_42216C:             ; jumptable 00422165 case 0
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [eax+9], 6
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 3Ch ; '<'

loc_422181:             ; jumptable 00422165 default case
jnz     def_422165
jmp     loc_42221D

loc_42218C:             ; jumptable 00422165 case 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     bx, [ebx]
inc     ebx
mov     [esi], bx
movsx   eax, bx
sar     eax, 3
lea     edx, [eax+1]
mov     eax, edx
shl     eax, 5
add     eax, edx
shl     eax, 5
add     eax, edx
mov     [ecx+15Eh], ax
cmp     ax, 4210h
jnz     def_422165      ; jumptable 00422165 default case
mov     word ptr [esi], 0
jmp     short loc_42221D

loc_4221C7:             ; jumptable 00422165 case 2
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [eax+9], 8
jnz     short loc_4221ED
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_4221ED
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_42282E
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4221ED:
cmp     byte ptr [eax+9], 0Ah
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 0Ah
jnz     def_422165      ; jumptable 00422165 default case
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 9

loc_422214:
mov     edx, esi
mov     eax, ecx
call    sub_422847

loc_42221D:
inc     byte ptr [ecx+9]
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_422225:             ; jumptable 00422165 case 3
cmp     byte ptr [eax+9], 0Bh
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1Eh
jnz     def_422165      ; jumptable 00422165 default case
mov     byte ptr [ecx+0ACh], 2
jmp     short loc_42229A

loc_422242:             ; jumptable 00422165 case 4
cmp     byte ptr [eax+9], 0Ch
jnz     short loc_422264
cmp     dword ptr [eax+10h], 1
jnz     short loc_422264
mov     byte ptr [ebx+12h], 1
sub     word ptr [ecx+18h], 100h
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax

loc_422264:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_422165      ; jumptable 00422165 default case
mov     byte ptr [ecx+0ACh], 3
jmp     short loc_42229A

loc_42227F:             ; jumptable 00422165 case 5
cmp     byte ptr [eax+9], 0Dh
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1
jnz     def_422165      ; jumptable 00422165 default case

loc_422293:
mov     byte ptr [ecx+0ACh], 4

loc_42229A:
mov     word ptr [esi+2], 0
jmp     loc_42221D

loc_4222A5:             ; jumptable 00422165 case 6
mov     bl, [eax+9]
cmp     bl, 0Dh
jnz     loc_42238A
mov     eax, [eax+10h]
cmp     eax, 0EBh
jb      short loc_422308
jbe     loc_422359
cmp     eax, 16Dh
jb      short loc_4222EF
jbe     loc_42236E
cmp     eax, 17Ch
jb      def_422165      ; jumptable 00422165 default case
jbe     loc_422459
cmp     eax, 1AEh

loc_4222E4:
jz      loc_422383
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4222EF:
cmp     eax, 104h
jb      def_422165      ; jumptable 00422165 default case
jbe     short loc_422338
cmp     eax, 14Dh

loc_422301:
jz      short loc_422359
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_422308:
cmp     eax, 7Dh ; '}'
jb      short loc_422328
jbe     short loc_422338
cmp     eax, 0C0h
jb      def_422165      ; jumptable 00422165 default case
jbe     short loc_422359
cmp     eax, 0D2h

loc_422321:
jz      short loc_422338
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_422328:
cmp     eax, 1Eh
jb      def_422165      ; jumptable 00422165 default case
jbe     short loc_422338
cmp     eax, 69h ; 'i'
jmp     short loc_422301

loc_422338:
mov     ebx, 0Ah

loc_42233D:
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 0Ah

loc_42234B:
mov     edx, esi
mov     eax, ecx
call    sub_422847
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_422359:
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 1
jmp     short loc_42234B

loc_42236E:
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 0Bh
jmp     short loc_42234B

loc_422383:
mov     ebx, 3
jmp     short loc_42234B

loc_42238A:
cmp     bl, 0Fh
jnz     short loc_4223AA
cmp     dword ptr [eax+10h], 1
jnz     short loc_4223AA
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_42282E

loc_4223A3:
mov     ebx, 4
jmp     short loc_42234B

loc_4223AA:
cmp     byte ptr [eax+9], 10h
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1
jnz     def_422165      ; jumptable 00422165 default case
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 5
jmp     loc_422214

loc_4223D6:             ; jumptable 00422165 case 7
cmp     byte ptr [eax+9], 10h
jnz     def_422165      ; jumptable 00422165 default case
mov     eax, [eax+10h]
cmp     eax, 82h
jb      short loc_42241C
jbe     short loc_42244B
cmp     eax, 0C8h
jb      short loc_422412
jbe     loc_422463
cmp     eax, 122h
jb      def_422165      ; jumptable 00422165 default case
jbe     short loc_42246A
cmp     eax, 12Ch
jz      short loc_422474
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_422412:
cmp     eax, 0B4h
jmp     loc_4222E4

loc_42241C:
cmp     eax, 23h ; '#'
jb      short loc_422436
jbe     short loc_422441
cmp     eax, 50h ; 'P'
jb      def_422165      ; jumptable 00422165 default case
jbe     short loc_42244B
cmp     eax, 64h ; 'd'
jmp     loc_4222E4

loc_422436:
cmp     eax, 0Ah
jnz     def_422165      ; jumptable 00422165 default case
jmp     short loc_422459

loc_422441:
mov     ebx, 5
jmp     loc_42234B

loc_42244B:
mov     ebx, 5

loc_422450:
mov     edx, esi
mov     eax, ecx
call    sub_42282E

loc_422459:
mov     ebx, 0Ch
jmp     loc_42234B

loc_422463:
mov     ebx, 6
jmp     short loc_422450

loc_42246A:
mov     ebx, 6
jmp     loc_42234B

loc_422474:
mov     byte ptr [ecx+0ACh], 5
mov     word ptr [ebx+2], 0
jmp     loc_42221D

loc_422486:             ; jumptable 00422165 case 8
mov     bl, [eax+9]
cmp     bl, 10h
jnz     short loc_4224C7
mov     ebx, [eax+10h]
cmp     ebx, 140h
jnz     short loc_4224B1
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_42282E

loc_4224A7:
mov     ebx, 0Dh
jmp     loc_42234B

loc_4224B1:
cmp     ebx, 168h
jnz     def_422165      ; jumptable 00422165 default case
mov     ebx, 7
jmp     loc_42234B

loc_4224C7:
cmp     bl, 12h
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1
jnz     def_422165      ; jumptable 00422165 default case
mov     word ptr [ecx+56h], 100h
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_422847
jmp     loc_422293

loc_422501:             ; jumptable 00422165 case 9
mov     bh, [eax+9]
cmp     bh, 12h
jnz     short loc_422543
mov     eax, [eax+10h]
cmp     eax, 78h ; 'x'
jb      short loc_422523
jbe     short loc_422531
cmp     eax, 0DCh
jz      loc_4223A3
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_422523:
cmp     eax, 1Eh
jnz     def_422165      ; jumptable 00422165 default case
jmp     loc_4224A7

loc_422531:
mov     byte ptr [ecx+0ACh], 6

loc_422538:
mov     word ptr [esi+2], 0
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_422543:
cmp     bh, 14h
jnz     def_422165      ; jumptable 00422165 default case
mov     ebp, [eax+10h]
cmp     ebp, 1
jnz     def_422165      ; jumptable 00422165 default case
mov     ebx, ebp
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, ebp
jmp     loc_422214

loc_42256A:             ; jumptable 00422165 case 10
mov     dl, [eax+9]
cmp     dl, 14h
jnz     loc_422622
mov     eax, [eax+10h]
cmp     eax, 116h
jb      short loc_4225D1
jbe     loc_4225FE
cmp     eax, 1AEh
jb      short loc_4225B4
jbe     loc_4224A7
cmp     eax, 217h
jb      def_422165      ; jumptable 00422165 default case
jbe     loc_4223A3
cmp     eax, 230h
jz      loc_4224A7
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4225B4:
cmp     eax, 1A4h
jb      def_422165      ; jumptable 00422165 default case
jbe     loc_422359
cmp     eax, 1A9h
jz      short loc_422608
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4225D1:
cmp     eax, 87h
jb      short loc_4225F5
jbe     loc_422359
cmp     eax, 9Fh
jb      def_422165      ; jumptable 00422165 default case
jbe     short loc_4225FE
cmp     eax, 0FEh
jmp     loc_422301

loc_4225F5:
cmp     eax, 14h
jnz     def_422165      ; jumptable 00422165 default case

loc_4225FE:
mov     ebx, 4
jmp     loc_42233D

loc_422608:
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     byte ptr [ecx+0ACh], 7
jmp     loc_422538

loc_422622:
cmp     dl, 15h
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1
jnz     def_422165      ; jumptable 00422165 default case
mov     word ptr [ecx+56h], 400h
mov     byte ptr [ecx+0ACh], 4
mov     word ptr [ebx+2], 0
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 8
jmp     loc_422214

loc_422660:             ; jumptable 00422165 case 11
mov     bl, [eax+9]
cmp     bl, 16h
jnz     short loc_4226B5
mov     eax, [eax+10h]
cmp     eax, 69h ; 'i'
jb      short loc_42268C
jbe     short loc_4226AB
cmp     eax, 0BEh
jb      short loc_422687
jbe     short loc_4226AB
cmp     eax, 0C8h

loc_422680:
jz      short loc_4226A1
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_422687:
cmp     eax, 78h ; 'x'
jmp     short loc_422680

loc_42268C:
cmp     eax, 28h ; '('
jb      short loc_422698
jbe     short loc_4226AB
cmp     eax, 3Ch ; '<'
jmp     short loc_422680

loc_422698:
cmp     eax, 0Ah
jnz     def_422165      ; jumptable 00422165 default case

loc_4226A1:
mov     ebx, 0Eh
jmp     loc_42234B

loc_4226AB:
mov     ebx, 8
jmp     loc_42234B

loc_4226B5:
cmp     bl, 17h
jnz     def_422165      ; jumptable 00422165 default case
mov     ebx, [eax+10h]
cmp     ebx, 1
jnz     def_422165      ; jumptable 00422165 default case
mov     word ptr [ecx+56h], 0
mov     byte ptr [ecx+0ACh], 8
mov     word ptr [esi+2], 0
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 1
jmp     loc_422214

loc_4226F0:             ; jumptable 00422165 case 12
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [eax+9], 18h
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 0Ah
jmp     loc_422181

loc_42270A:             ; jumptable 00422165 case 13
cmp     byte ptr [eax+9], 19h
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1
jnz     def_422165      ; jumptable 00422165 default case
mov     byte ptr [ecx+0ACh], 9
jmp     loc_42229A

loc_42272A:             ; jumptable 00422165 case 14
mov     byte ptr [ecx+0ADh], 0FFh
mov     dl, [eax+9]
cmp     dl, 1Eh
jnz     short loc_42279C
mov     eax, [eax+10h]
cmp     eax, 0DCh
jb      short loc_42277B
jbe     loc_422359
cmp     eax, 190h
jb      short loc_422771
jbe     loc_422359
cmp     eax, 19Ah
jb      def_422165      ; jumptable 00422165 default case
jbe     loc_422338
cmp     eax, 1D6h
jmp     loc_422301

loc_422771:
cmp     eax, 0FAh
jmp     loc_422321

loc_42277B:
cmp     eax, 3Ch ; '<'
jb      short loc_42278E
jbe     loc_422359
cmp     eax, 5Ah ; 'Z'
jmp     loc_422321

loc_42278E:
cmp     eax, 1Eh
jnz     def_422165      ; jumptable 00422165 default case
jmp     loc_422338

loc_42279C:
cmp     dl, 1Fh
jnz     def_422165      ; jumptable 00422165 default case
mov     edi, [eax+10h]
cmp     edi, 0Ah
jnz     def_422165      ; jumptable 00422165 default case
mov     ebx, edi
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, edi
jmp     loc_422214

loc_4227C3:             ; jumptable 00422165 case 15
cmp     byte ptr [eax+9], 1Fh
jnz     short loc_4227EB
cmp     dword ptr [eax+10h], 14h
jnz     short loc_4227EB
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_422847

loc_4227EB:
cmp     byte ptr [ecx+0A4h], 27h ; '''
jnz     short def_422165 ; jumptable 00422165 default case
mov     byte ptr [ecx+0ACh], 9
mov     word ptr [esi+2], 27h ; '''
jmp     loc_42221D

loc_422806:             ; jumptable 00422165 case 16
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [eax+9], 21h ; '!'
jnz     short def_422165 ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1
jnz     short def_422165 ; jumptable 00422165 default case
mov     byte ptr [ebx+12h], 0
jmp     loc_42221D

loc_422822:             ; jumptable 00422165 case 17
mov     byte ptr [ecx+0ADh], 0FFh

def_422165:             ; jumptable 00422165 default case
pop     ebp
pop     edi
pop     esi
pop     ecx
sub_422149 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_46]



sub_42282E proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_510B91[ebx*4]
mov     [edx+4], eax
retn
sub_42282E endp




sub_422847 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_510BBD[ebx*4]
mov     [edx+8], eax
retn
sub_422847 endp




sub_422860 proc near
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
jb      short loc_422885
jbe     short loc_422888
cmp     al, 7Fh
jnz     short loc_422885
mov     byte ptr [edx+0Eh], 0
jmp     short loc_422888

loc_422885:
inc     byte ptr [esi+0Eh]

loc_422888:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_4228CA
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 0E000Dh
mov     eax, ecx
call    sub_4EE044

loc_4228CA:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_4228ED
jbe     short loc_4228F0
cmp     al, 7Fh
jnz     short loc_4228ED
mov     byte ptr [esi+11h], 0
jmp     short loc_4228F0

loc_4228ED:
inc     byte ptr [esi+11h]

loc_4228F0:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_422932
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, edi
call    sub_4EE044

loc_422932:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_422860 endp




sub_42293D proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+550h]
xor     ebx, ebx
mov     bl, [eax+8]
call    ds:funcs_42294D[ebx*4]
cmp     word ptr [ecx+7Ah], 2
jge     short loc_422994
cmp     ds:word_5F83D2, 0
jg      short loc_422990
test    byte ptr [ecx+2], 1
jnz     short loc_42298A
test    byte ptr [ecx+1], 2
jnz     short loc_42298A
mov     word ptr [ecx+7Ah], 2
mov     word ptr [ecx+78h], 3Ch ; '<'
add     edx, 14h
mov     eax, 1E9h
call    sub_4D8BC3

loc_42298A:
or      byte ptr [ecx+1], 2
jmp     short loc_422994

loc_422990:
and     byte ptr [ecx+1], 0FDh

loc_422994:
mov     dword ptr [ecx+18h], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_42293D endp




sub_42299F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+550h]
mov     ah, [eax]
or      ah, 2
mov     [esi], ah
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     word ptr [esi+15Eh], 0
xor     eax, eax

loc_4229DA:
mov     edx, eax
mov     word ptr [esi+edx*8+196h], 4210h
inc     eax
cmp     eax, 10h
jl      short loc_4229DA
mov     word ptr [esi+54h], 0
mov     word ptr [esi+58h], 0
mov     dword ptr [esi+64h], 0
mov     dword ptr [esi+44h], 0
mov     dword ptr [esi+48h], 0
mov     word ptr [ecx], 26h ; '&'
mov     dword ptr [ecx+4], 0
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx+18h], 0
mov     dword ptr [ecx+1Ch], 0
lea     eax, [ecx+28h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+52h], 0
mov     byte ptr [ecx+53h], 0
mov     dword ptr [ecx+54h], 0
mov     word ptr [ecx+70h], 0
mov     byte ptr [ecx+72h], 0
mov     byte ptr [ecx+73h], 0
mov     word ptr [ecx+7Ah], 0FFFFh
mov     word ptr [ecx+78h], 0
mov     byte ptr [ecx+7Eh], 0
mov     byte ptr [ecx+7Ch], 0
mov     byte ptr [ecx+7Dh], 0
mov     byte ptr [ecx+7Fh], 0
call    sub_4DE043
mov     [ecx+58h], eax
test    eax, eax
jz      short loc_422AB1
mov     byte ptr [eax], 1
mov     eax, [ecx+58h]
mov     byte ptr [eax+2], 34h ; '4'
mov     eax, [ecx+58h]
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     eax, [ecx+58h]
mov     byte ptr [eax+0Dh], 5
mov     byte ptr [esi+10Fh], 0FFh
mov     eax, [ecx+58h]
or      byte ptr [eax+6], 20h

loc_422AB1:
call    sub_4DE043
mov     [ecx+5Ch], eax
test    eax, eax
jz      short loc_422AE5
mov     byte ptr [eax], 1
mov     eax, [ecx+5Ch]
mov     byte ptr [eax+2], 34h ; '4'
mov     eax, [ecx+5Ch]
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     eax, [ecx+5Ch]
mov     byte ptr [eax+0Dh], 0Ah
mov     byte ptr [esi+123h], 0FFh
mov     eax, [ecx+5Ch]
or      byte ptr [eax+6], 20h

loc_422AE5:
call    sub_4DE043
mov     [ecx+60h], eax
test    eax, eax
jz      short loc_422B19
mov     byte ptr [eax], 1
mov     eax, [ecx+60h]
mov     byte ptr [eax+2], 34h ; '4'
mov     eax, [ecx+60h]
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     eax, [ecx+60h]
mov     byte ptr [eax+0Dh], 6
mov     byte ptr [esi+113h], 0FFh
mov     eax, [ecx+60h]
or      byte ptr [eax+6], 20h

loc_422B19:
call    sub_4DE043
mov     [ecx+64h], eax
test    eax, eax
jz      short loc_422B4D
mov     byte ptr [eax], 1
mov     eax, [ecx+64h]
mov     byte ptr [eax+2], 34h ; '4'
mov     eax, [ecx+64h]
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     eax, [ecx+64h]
mov     byte ptr [eax+0Dh], 0Bh
mov     byte ptr [esi+127h], 0FFh
mov     eax, [ecx+64h]
or      byte ptr [eax+6], 20h

loc_422B4D:
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 7
mov     [esi+6Eh], ax
mov     [esi+0B0h], ax
mov     [esi+0B2h], ax
mov     dword ptr [esi+78h], 0
mov     dword ptr [esi+10h], 0
mov     edx, [esi+6Ch]
sar     edx, 10h
mov     ebx, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     edx, eax
shl     eax, 3
add     eax, edx
mov     ds:dword_559258, eax
mov     edx, [esi+6Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
mov     ds:dword_55925C, eax
mov     edx, [esi+6Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
shl     eax, 2
mov     ds:dword_559260, eax
mov     edx, [esi+6Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     ds:dword_559264, eax
mov     ds:dword_559268, 0FFFFFFFFh
mov     dword ptr [ecx+74h], offset dword_559258
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0
mov     word ptr [esi+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
push    offset unk_805058
mov     ecx, 81h
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_436785
mov     eax, esi
call    sub_422C4D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_42299F endp

db 8Dh, 40h, 0
jpt_422D14 dd offset loc_422D33 ; jump table for switch statement
dd offset loc_422D49
dd offset loc_422D33
dd offset loc_422D33
dd offset loc_422D33
dd offset loc_422D1B
dd offset loc_422D33



sub_422C4D proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 550h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0ACh]
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
xor     eax, eax

loc_422C88:
mov     edx, eax
mov     word ptr [ebp+edx*8+196h], 4210h
inc     eax
cmp     eax, 10h
jl      short loc_422C88
call    rand_
mov     edx, [esp+1Ch+var_1C]
mov     [edx+2], ax
call    sub_436700
and     byte ptr [ebp+0Eh], 0F8h
and     byte ptr [ebp+0Fh], 11h
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 4
jz      short loc_422CC2
mov     eax, ebp
call    sub_42497B

loc_422CC2:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_422CC9[edx*4]
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+50h]
sar     eax, 18h
mov     eax, ds:off_510C40[eax*4]
mov     [ebp+78h], eax
test    eax, eax
jz      short loc_422CF6
mov     eax, ebp
call    sub_42DE56
mov     edx, [esp+1Ch+var_1C]
mov     [edx+0Ch], eax
jmp     short loc_422D00

loc_422CF6:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+0Ch], 0

loc_422D00:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_422D5F
mov     al, [ebp+9]
cmp     al, 6           ; switch 7 cases
ja      short def_422D14 ; jumptable 00422D14 default case
and     eax, 0FFh
jmp     jpt_422D14[eax*4] ; switch jump

loc_422D1B:             ; jumptable 00422D14 case 5
cmp     word ptr [ebp+6Eh], 0
jle     short loc_422D33 ; jumptable 00422D14 cases 0,2-4,6
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+70h]
dec     ebx
mov     [eax+70h], bx
test    bx, bx
ja      short loc_422D53

loc_422D33:             ; jumptable 00422D14 cases 0,2-4,6
cmp     word ptr [ebp+6Eh], 0
jle     short loc_422D43
mov     eax, ebp
call    sub_424865
jmp     short loc_422D53

loc_422D43:
mov     byte ptr [ebp+9], 7
jmp     short loc_422D53

loc_422D49:             ; jumptable 00422D14 case 1
mov     byte ptr [ebp+9], 2
jmp     short loc_422D53

def_422D14:             ; jumptable 00422D14 default case
mov     byte ptr [ebp+9], 0

loc_422D53:
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0FEh

loc_422D5F:
mov     eax, [esp+1Ch+var_1C]
mov     di, [eax+0Ah]
test    di, di
jz      short loc_422D72
mov     edx, edi
dec     edx
mov     [eax+0Ah], dx

loc_422D72:
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+78h]
test    bx, bx
jz      short loc_422D87
mov     ecx, ebx
dec     ecx
mov     [eax+78h], cx
jmp     short loc_422D8D

loc_422D87:
mov     word ptr [eax+7Ah], 0FFFFh

loc_422D8D:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 20h
jz      short loc_422DBD
mov     al, [ebp+0ADh]
mov     ch, [ebp+0ACh]
cmp     al, ch
jz      short loc_422DB4
xor     edx, edx
mov     dl, ch
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_422DCB

loc_422DB4:
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_422DCB

loc_422DBD:
mov     eax, ebp
call    sub_4DFC52
mov     eax, ebp
call    sub_4DF795

loc_422DCB:
mov     ax, [ebp+14h]
sub     ax, [ebp+2Ch]
shl     eax, 4
mov     [ebp+44h], ax
mov     ax, [ebp+16h]
sub     ax, [ebp+2Eh]
shl     eax, 4
mov     [ebp+46h], ax
mov     ax, [ebp+18h]
sub     ax, [ebp+30h]
shl     eax, 4
mov     [ebp+48h], ax
test    byte ptr [ebp+0], 2
jz      short loc_422E1C
cmp     word ptr [ebp+196h], 4210h
jnz     short loc_422E1C
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 80h
mov     eax, ebp
call    sub_4ED88B

loc_422E1C:
test    byte ptr [ebp+0], 1
jz      def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     word ptr [eax+38h], 0
test    byte ptr [eax+1], 4
jz      short loc_422E46
mov     word ptr [eax+3Ah], 0FE00h
jmp     short loc_422E4C

loc_422E46:
mov     word ptr [eax+3Ah], 200h

loc_422E4C:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+3Ch], 0
lea     ebx, [eax+40h]
lea     edx, [eax+38h]
lea     eax, [ebp+250h]
call    sub_4EF1FB
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+40h]
add     ax, [ebp+190h]
mov     edx, [esp+1Ch+var_1C]
mov     [edx+10h], ax
mov     ax, [edx+44h]
mov     si, [ebp+192h]
add     eax, esi
mov     [edx+12h], ax
mov     ax, [edx+48h]
mov     di, [ebp+194h]
add     eax, edi
mov     [edx+14h], ax
push    0
push    0
mov     eax, [edx+4Fh]
sar     eax, 18h
xor     edx, edx
mov     ebx, [esp+24h+var_1C]
mov     dx, [ebx+8]
or      edx, ds:dword_510C4C[eax*4]
push    edx
lea     eax, [ebx+18h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [ebx+10h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 68h ; 'h'
call    sub_4E01FC
jmp     def_4232E3      ; jumptable 004232E3 default case
sub_422C4D endp         ; jumptable 00423877 default case
; jumptable 00423D8F default case


; Attributes: thunk

sub_422EDC proc near
jmp     sub_4DE336
sub_422EDC endp




sub_422EE1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+550h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_422F02
cmp     al, 1
jz      loc_422F86
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_422F02:
inc     al
mov     [edi+0Ah], al
mov     byte ptr [edi+0ACh], 0
or      byte ptr [esi], 20h
mov     word ptr [esi+50h], 0FFA0h
mov     word ptr [esi+4], 0
xor     eax, eax
mov     al, [edi+2]
mov     ebx, ds:dword_55A108
mov     eax, [ebx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [esi+8], ax
mov     [esi+53h], ah
mov     [esi+52h], ah
call    sub_4DE043
test    eax, eax
jz      short loc_422F86
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FDh
mov     word ptr [eax+2Ch], 0C8h
mov     word ptr [eax+2Eh], 0C8h
mov     word ptr [eax+30h], 0C8h
mov     word ptr [eax+32h], 700h
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 10h
mov     word ptr [eax+18h], 10h
mov     word ptr [eax+1Ah], 500h
mov     byte ptr [eax+0Bh], 3Ch ; '<'
mov     byte ptr [eax+0Ah], 0

loc_422F86:
mov     eax, edi
call    sub_42C592
add     ax, [esi+50h]
mov     bx, [edi+16h]
sub     eax, ebx
mov     [edi+4Eh], ax
mov     eax, [esi+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
mov     ebx, [edi+4Ch]
sar     ebx, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, edi
call    sub_4DD43B
cmp     word ptr [esi+4], 3Fh ; '?'
jnz     short loc_422FCE
or      byte ptr [esi], 1

loc_422FCE:
mov     ax, [esi+4]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     [esi+4], ax
jmp     def_4235B5      ; jumptable 004235B5 default case
sub_422EE1 endp         ; jumptable 004240AD default case

db 90h
jpt_423012 dd offset loc_423019 ; jump table for switch statement
dd offset loc_423083
dd offset loc_4230B1
dd offset loc_423161
dd offset loc_423253



sub_422FF5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edi, eax
lea     esi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_423012      ; jumptable 00423012 default case
xor     edx, edx
mov     dl, al
jmp     jpt_423012[edx*4] ; switch jump

loc_423019:             ; jumptable 00423012 case 0
inc     al
mov     [edi+0Ah], al
mov     byte ptr [edi+0ACh], 0Dh
or      byte ptr [esi], 20h
mov     word ptr [esi+4], 0
xor     eax, eax
mov     al, [edi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Bh]
xor     ah, ah
mov     [esi+8], ax
mov     byte ptr [esi+53h], 1
mov     [esi+52h], ah
cmp     word ptr [esi+7Ah], 1
jge     def_423012      ; jumptable 00423012 default case
test    byte ptr [esi+2], 3
jnz     def_423012      ; jumptable 00423012 default case
mov     word ptr [esi+7Ah], 1
mov     word ptr [esi+78h], 3Ch ; '<'
lea     edx, [edi+14h]
mov     eax, 1E4h

loc_423079:
call    sub_4D8BC3
jmp     def_423012      ; jumptable 00423012 default case

loc_423083:             ; jumptable 00423012 case 1
cmp     byte ptr [edi+0A7h], 0
jge     def_423012      ; jumptable 00423012 default case
inc     al
mov     [edi+0Ah], al
mov     byte ptr [edi+0ACh], 0Eh
mov     word ptr [esi+4], 10h
mov     word ptr [esi+50h], 0FF00h
mov     byte ptr [esi+52h], 1
jmp     def_423012      ; jumptable 00423012 default case

loc_4230B1:             ; jumptable 00423012 case 2
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     ebp, [edi+14h]
mov     ecx, 100h
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
mov     eax, edi
call    sub_42C592
mov     dx, [esi+50h]
add     edx, eax
mov     ax, [edi+16h]
sub     eax, edx
mov     [edi+4Eh], ax
mov     eax, [esi+2]
sar     eax, 10h
mov     eax, ds:dword_564C72[eax*2]
sar     eax, 10h
mov     ebx, [edi+4Ch]
sar     ebx, 10h
imul    ebx, eax
sar     ebx, 0Ch
xor     ecx, ecx
xor     edx, edx
mov     eax, edi
call    sub_4DD43B
mov     bx, [esi+4]
dec     ebx
mov     [esi+4], bx
test    bx, bx
jge     def_423012      ; jumptable 00423012 default case
inc     byte ptr [edi+0Ah]
mov     byte ptr [edi+0ACh], 0Fh
mov     word ptr [esi+4], 0
mov     word ptr [esi+6], 0
mov     word ptr [esi+54h], 78h ; 'x'
mov     word ptr [esi+50h], 0C0h
mov     byte ptr [esi+52h], 1
mov     edx, ebp
mov     eax, 1D3h
call    sub_4D8BC3
or      byte ptr [esi+1], 4
jmp     def_423012      ; jumptable 00423012 default case

loc_423161:             ; jumptable 00423012 case 3
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     ecx, 8
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
mov     ax, word ptr ds:dword_5F880E
add     ax, [esi+50h]
mov     dx, [edi+16h]
sub     eax, edx
mov     [edi+4Eh], ax
mov     eax, [esi+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 6
sar     eax, 0Ch
mov     ebx, [edi+4Ch]
sar     ebx, 10h
add     ebx, eax
mov     edx, [edi+4Ah]
sar     edx, 10h
xor     ecx, ecx
mov     eax, edi
call    sub_4DD43B
mov     bx, [edi+4Ch]
cmp     bx, 600h
jge     short loc_4231D9
mov     ecx, ebx
add     ecx, 60h ; '`'
mov     [edi+4Ch], cx

loc_4231D9:
mov     ax, [esi+4]
add     eax, 2
xor     ah, ah
and     al, 3Fh
mov     [esi+4], ax
mov     ax, [esi+6]
cmp     ax, 40h ; '@'
jge     short loc_4231FD
mov     edx, eax
add     edx, 4
mov     [esi+6], dx

loc_4231FD:
test    byte ptr [esi+0Dh], 0Fh
jnz     short loc_423215
mov     bx, [esi+54h]
dec     ebx
mov     [esi+54h], bx
test    bx, bx
jge     def_423012      ; jumptable 00423012 default case

loc_423215:
inc     byte ptr [edi+0Ah]
mov     byte ptr [edi+0ACh], 10h
mov     word ptr [esi+4], 10h
mov     word ptr [esi+50h], 0FE80h
mov     byte ptr [esi+52h], 0
xor     eax, eax
mov     al, [edi+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [esi+8], ax
lea     edx, [edi+14h]
mov     eax, 1D4h
jmp     loc_423079

loc_423253:             ; jumptable 00423012 case 4
mov     eax, edi
call    sub_42C592
mov     dx, [esi+50h]
add     edx, eax
mov     ax, [edi+16h]
sub     eax, edx
mov     [edi+4Eh], ax
mov     eax, [esi+2]
sar     eax, 10h
mov     edx, ds:dword_564C72[eax*2]
sar     edx, 10h
mov     ebx, [edi+4Ch]
sar     ebx, 10h
imul    ebx, edx
sar     ebx, 0Ch
xor     ecx, ecx
xor     edx, edx
mov     eax, edi
call    sub_4DD43B
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     def_423012      ; jumptable 00423012 default case
or      byte ptr [esi], 1
and     byte ptr [esi+1], 0FBh
jmp     def_423012      ; jumptable 00423012 default case
sub_422FF5 endp

db 8Bh, 0C0h
jpt_4232E3 dd offset loc_4232EA ; jump table for switch statement
dd offset loc_42337C
dd offset loc_423436
dd offset loc_4234EA



sub_4232C1 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 550h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
xor     edx, edx
mov     dl, al
jmp     jpt_4232E3[edx*4] ; switch jump

loc_4232EA:             ; jumptable 004232E3 case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0Dh
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     ecx, 800h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     [ebp+66h], ax
test    ax, ax
jge     short loc_42331E
mov     eax, 0FFFFFFC0h
jmp     short loc_423323

loc_42331E:
mov     eax, 40h ; '@'

loc_423323:
mov     [ebp+66h], ax
mov     eax, [ebp+64h]
sar     eax, 10h
sar     eax, 2
mov     [ebp+64h], ax
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 20h
mov     word ptr [eax+50h], 60h ; '`'
mov     word ptr [eax+4], 10h
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     byte ptr [edx+53h], 2
mov     [edx+52h], ah
and     byte ptr [edx], 0FDh
lea     edx, [ebp+14h]
mov     eax, 1DCh
call    sub_4D8BC3
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_42337C:             ; jumptable 004232E3 case 1
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ax, [ebp+64h]
add     [ebp+66h], ax
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+50h]
add     edx, eax
mov     ax, [ebp+16h]
sub     edx, eax
mov     [ebp+4Eh], dx
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+2]
sar     ebx, 10h
mov     ebx, dword ptr ds:unk_564C32[ebx*2]
sar     ebx, 10h
shl     ebx, 4
sar     ebx, 0Ch
mov     eax, [ebp+4Ch]
sar     eax, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
xor     eax, eax

loc_4233DB:
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+4]
xor     dh, dh
and     dl, 1Fh
mov     ebx, edx
shl     ebx, 5
or      ebx, edx
shl     edx, 0Ah
or      edx, ebx
or      dh, 80h
mov     ebx, edx
mov     edx, eax
mov     [ebp+edx*8+196h], bx
inc     eax
cmp     eax, 10h
jl      short loc_4233DB
or      byte ptr [ebp+0Fh], 2
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
and     byte ptr [ebp+0], 0FDh
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0Fh
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_423436:             ; jumptable 004232E3 case 2
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
or      byte ptr [ebp+0], 2
mov     byte ptr [ebp+0ACh], 0
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 10h
mov     word ptr [eax+50h], 0FFA0h
mov     dword ptr [eax+40h], 0
mov     dword ptr [eax+44h], 0FF3F0000h
mov     dword ptr [eax+48h], 4000000h
lea     esi, [eax+38h]
lea     edi, [eax+40h]
mov     edx, esi
mov     eax, edi
call    sub_4DD57B
push    0
push    0
lea     edx, [ebp+2Ch]
mov     eax, esi
call    sub_4DDDB4
mov     ebx, eax
and     ebx, 0FFFh
mov     ecx, 3000h
mov     edx, edi
mov     eax, esi
call    sub_4DD4C5
lea     edi, [ebp+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+38h]
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+40h]
movsd
movsd
movsd
movsd
lea     esi, [ebp+14h]
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DDDB4
and     ah, 0Fh
mov     [ebp+56h], ax
mov     edx, esi
mov     eax, 20Bh
call    sub_4D8BC3

loc_4234EA:             ; jumptable 004232E3 case 3
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+50h]
add     edx, eax
mov     ax, [ebp+16h]
sub     edx, eax
mov     [ebp+4Eh], dx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
xor     eax, eax

loc_423532:
mov     edx, 10h
mov     ebx, [esp+1Ch+var_1C]
sub     dx, [ebx+4]
xor     dh, dh
and     dl, 1Fh
mov     ebx, edx
shl     ebx, 5
or      ebx, edx
shl     edx, 0Ah
or      ebx, edx
or      bh, 80h
mov     edx, eax
mov     [ebp+edx*8+196h], bx
inc     eax
cmp     eax, 10h
jl      short loc_423532
or      byte ptr [ebp+0Fh], 2
mov     eax, [esp+1Ch+var_1C]
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
or      byte ptr [eax], 3
jmp     def_4232E3      ; jumptable 004232E3 default case
sub_4232C1 endp         ; jumptable 00423877 default case
; jumptable 00423D8F default case
db 8Bh, 0C0h
jpt_4235B5 dd offset loc_4235BC ; jump table for switch statement
dd offset loc_423631
dd offset loc_423733
dd offset loc_4237B0
dd offset loc_4237DF



sub_423599 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
xor     edx, edx
mov     dl, al
jmp     jpt_4235B5[edx*4] ; switch jump

loc_4235BC:             ; jumptable 004235B5 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 6
or      byte ptr [edi], 20h
mov     word ptr [edi+50h], 60h ; '`'
mov     word ptr [edi+4], 0
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [edi+8], ax
mov     [edi+53h], ah
mov     [edi+52h], ah
mov     [edi+72h], ah
mov     [edi+73h], ah
add     esi, 14h
mov     edx, esi
mov     eax, 1D7h
call    sub_4D8BC3
cmp     word ptr [edi+7Ah], 1
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
mov     word ptr [edi+7Ah], 1
mov     word ptr [edi+78h], 3Ch ; '<'
mov     edx, esi
mov     eax, 1E3h
call    sub_4D8BC3
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_423631:             ; jumptable 004235B5 case 1
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     dx, word ptr ds:dword_5F880E
add     dx, [edi+50h]
mov     ax, [esi+16h]
sub     edx, eax
mov     [esi+4Eh], dx
mov     eax, [edi+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 6
sar     eax, 0Ch
mov     ebx, [esi+4Ch]
sar     ebx, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     ax, [edi+4]
add     eax, 2
xor     ah, ah
and     al, 3Fh
mov     [edi+4], ax
cmp     byte ptr [esi+0A7h], 0
jge     short loc_423713
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 7
and     word ptr [edi], 0FE7Fh
xor     edx, edx
mov     eax, esi
call    sub_4245FA
test    eax, eax
jz      short loc_4236CB
or      byte ptr [edi], 80h

loc_4236CB:
mov     edx, 1
mov     eax, esi
call    sub_4245FA
test    eax, eax
jz      short loc_4236DF
or      byte ptr [edi+1], 1

loc_4236DF:
test    word ptr [edi], 180h
jz      short loc_4236F3
lea     edx, [esi+14h]
mov     eax, 1D8h
call    sub_4D8BC3

loc_4236F3:
mov     word ptr [esi+66h], 0
test    byte ptr [edi+2], 1
jz      short loc_423706
mov     eax, 2
jmp     short loc_42370B

loc_423706:
mov     eax, 0FFFFFFFEh

loc_42370B:
mov     [esi+64h], ax
or      byte ptr [esi+0Fh], 40h

loc_423713:
xor     edx, edx
mov     eax, esi
call    sub_424670
mov     edx, 1
mov     eax, esi
call    sub_424670
inc     byte ptr [edi+72h]
inc     byte ptr [edi+73h]
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_423733:             ; jumptable 004235B5 case 2
mov     ax, [esi+56h]
add     ax, [esi+66h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ax, [esi+64h]
add     [esi+66h], ax
cmp     byte ptr [edi+72h], 0
jz      short loc_42375C
xor     edx, edx
mov     eax, esi
call    sub_424670
dec     byte ptr [edi+72h]

loc_42375C:
cmp     byte ptr [edi+73h], 0
jz      short loc_423771
mov     edx, 1
mov     eax, esi
call    sub_424670
dec     byte ptr [edi+73h]

loc_423771:
cmp     byte ptr [esi+0A7h], 0
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
test    byte ptr [edi], 80h
jz      short loc_42378A
mov     eax, [edi+68h]
mov     byte ptr [eax+0Eh], 1

loc_42378A:
test    byte ptr [edi+1], 1
jz      short loc_423797
mov     eax, [edi+6Ch]
mov     byte ptr [eax+0Eh], 1

loc_423797:
inc     byte ptr [esi+0Ah]
mov     bh, [esi+0Fh]
or      bh, 80h
mov     [esi+0Fh], bh
mov     cl, bh
and     cl, 0EFh
mov     [esi+0Fh], cl
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_4237B0:             ; jumptable 004235B5 case 3
mov     dl, [esi+0Fh]
test    dl, 10h
jz      def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
mov     dh, dl
and     dh, 0EFh
mov     [esi+0Fh], dh
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 8
mov     word ptr [edi+4], 10h
mov     word ptr [edi+50h], 0FE80h
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_4237DF:             ; jumptable 004235B5 case 4
mov     eax, esi
call    sub_42C592
mov     dx, [edi+50h]
add     edx, eax
mov     ax, [esi+16h]
sub     eax, edx
mov     [esi+4Eh], ax
mov     eax, [edi+2]
sar     eax, 10h
mov     edx, ds:dword_564C72[eax*2]
sar     edx, 10h
mov     ebx, [esi+4Ch]
sar     ebx, 10h
imul    ebx, edx
sar     ebx, 0Ch
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_42382F:
or      byte ptr [edi], 1
jmp     def_4235B5      ; jumptable 004235B5 default case
sub_423599 endp         ; jumptable 004240AD default case

db 8Bh, 0C0h
jpt_423877 dd offset loc_42387E ; jump table for switch statement
dd offset loc_4238C1
dd offset loc_42398A
dd offset loc_423A6E
dd offset loc_423BAA
dd offset loc_423D09
dd offset loc_423D46



sub_423855 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 550h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
xor     edx, edx
mov     dl, al
jmp     jpt_423877[edx*4] ; switch jump

loc_42387E:             ; jumptable 00423877 case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 20h
mov     word ptr [eax+4], 10h
mov     word ptr [eax+50h], 0FE80h
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Eh]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     [edx+53h], ah
mov     [edx+52h], ah
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_4238C1:             ; jumptable 00423877 case 1
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+50h]
add     edx, eax
mov     ax, [ebp+16h]
sub     eax, edx
mov     [ebp+4Eh], ax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
mov     edx, ds:dword_564C72[eax*2]
sar     edx, 10h
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
imul    ebx, edx
sar     ebx, 0Ch
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 0Dh
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     ecx, 800h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     [ebp+66h], ax
test    ax, ax
jge     short loc_42394C
mov     eax, 0FFFFFFC0h
jmp     short loc_423951

loc_42394C:
mov     eax, 40h ; '@'

loc_423951:
mov     [ebp+66h], ax
mov     eax, [ebp+64h]
sar     eax, 10h
sar     eax, 2
mov     [ebp+64h], ax
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+53h], 2
mov     word ptr [eax+4], 10h
mov     word ptr [eax+50h], 60h ; '`'
and     byte ptr [eax], 0FDh
lea     edx, [ebp+14h]
mov     eax, 1DCh

loc_423980:
call    sub_4D8BC3
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_42398A:             ; jumptable 00423877 case 2
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ax, [ebp+64h]
add     [ebp+66h], ax
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+50h]
add     edx, eax
mov     ax, [ebp+16h]
sub     edx, eax
mov     [ebp+4Eh], dx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
mov     ebx, dword ptr ds:unk_564C32[eax*2]
sar     ebx, 10h
shl     ebx, 4
sar     ebx, 0Ch
mov     eax, [ebp+4Ch]
sar     eax, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
xor     eax, eax

loc_4239E9:
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+4]
xor     dh, dh
and     dl, 1Fh
mov     ebx, edx
shl     ebx, 5
or      ebx, edx
shl     edx, 0Ah
or      ebx, edx
or      bh, 80h
mov     edx, eax
mov     [ebp+edx*8+196h], bx
inc     eax
cmp     eax, 10h
jl      short loc_4239E9
or      byte ptr [ebp+0Fh], 2
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
and     byte ptr [ebp+0], 0FDh
inc     byte ptr [ebp+0Ah]
mov     word ptr [eax+4], 40h ; '@'
mov     word ptr [eax+6], 0
mov     dword ptr [ebp+1Ch], 0
mov     dword ptr [ebp+20h], 0FFBF0000h
mov     dword ptr [ebp+24h], 4000000h
lea     esi, [ebp+14h]
lea     eax, [ebp+1Ch]
mov     edx, esi
call    sub_4DD57B
mov     edx, esi
mov     eax, 1DDh
jmp     loc_423980

loc_423A6E:             ; jumptable 00423877 case 3
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+2]
sar     edx, 10h
mov     ecx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
test    edx, edx
jnz     short loc_423AA6
mov     eax, [esp+1Ch+var_1C]
inc     word ptr [eax+6]
lea     ecx, [ebp+14h]
mov     eax, [eax+4]
sar     eax, 10h
mov     ebx, 0C00h
mov     edx, 800h
call    sub_42A70B

loc_423AA6:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+6], 1
jnz     short loc_423B06
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_423B06
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 0
lea     edi, [edx+48h]
lea     esi, [ebp+14h]
movsd
movsd
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+48h], ax
mov     eax, ebp
call    sub_42C592
mov     [edx+4Ah], ax
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+4Ch], ax

loc_423B06:
mov     eax, [esp+1Ch+var_1C]
mov     di, [eax+4]
dec     edi
mov     [eax+4], di
test    di, di
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
or      byte ptr [ebp+0], 2
mov     byte ptr [ebp+0ACh], 0Bh
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 10h
mov     word ptr [eax+50h], 0FF00h
lea     esi, [ebp+14h]
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DDDB4
and     ah, 0Fh
mov     [ebp+56h], ax
or      byte ptr [ebp+0Fh], 4
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DE552
mov     [ebp+66h], ax
test    ax, ax
jge     short loc_423B79
mov     eax, 0FFFFFF80h
jmp     short loc_423B7E

loc_423B79:
mov     eax, 80h

loc_423B7E:
mov     [ebp+66h], ax
mov     eax, [ebp+64h]
sar     eax, 10h
sar     eax, 3
mov     [ebp+64h], ax
lea     esi, [ebp+14h]
mov     edx, esi
mov     eax, 20Ah
call    sub_4D8BC3
mov     edx, esi
mov     eax, 1DEh
call    sub_4D8BC3

loc_423BAA:             ; jumptable 00423877 case 4
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+2]
sar     edx, 10h
mov     ecx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
test    edx, edx
jnz     short loc_423BE2
mov     eax, [esp+1Ch+var_1C]
inc     word ptr [eax+6]
lea     ecx, [ebp+14h]
mov     eax, [eax+4]
sar     eax, 10h
mov     ebx, 0C00h
mov     edx, 800h
call    sub_42A70B

loc_423BE2:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+6], 3
jnz     short loc_423C42
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_423C42
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 0
lea     edi, [edx+48h]
lea     esi, [ebp+14h]
movsd
movsd
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+48h], ax
mov     eax, ebp
call    sub_42C592
mov     [edx+4Ah], ax
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+4Ch], ax

loc_423C42:
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ax, [ebp+64h]
sub     [ebp+66h], ax
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+1Ch+var_1C]
add     ax, [edx+50h]
mov     dx, [ebp+16h]
sub     eax, edx
mov     [ebp+4Eh], ax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
xor     eax, eax
mov     ecx, [esp+1Ch+var_1C]

loc_423CA2:
mov     edx, 10h
sub     dx, [ecx+4]
xor     dh, dh
and     dl, 1Fh
mov     ebx, edx
shl     ebx, 5
or      ebx, edx
shl     edx, 0Ah
or      edx, ebx
or      dh, 80h
mov     ebx, edx
mov     edx, eax
mov     [ebp+edx*8+196h], bx
inc     eax
cmp     eax, 10h
jl      short loc_423CA2
mov     di, [ecx+4]
dec     edi
mov     [ecx+4], di
test    di, di
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 2
mov     al, [ebp+0Fh]
or      al, 8
mov     [ebp+0Fh], al
mov     ah, al
and     ah, 0EFh
mov     [ebp+0Fh], ah
lea     edx, [ebp+14h]
mov     eax, 1DFh
jmp     loc_423980

loc_423D09:             ; jumptable 00423877 case 5
mov     dh, [ebp+0Fh]
test    dh, 10h
jz      short def_4232E3 ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     bl, dh
and     bl, 0EFh
mov     [ebp+0Fh], bl
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 0Ch
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+7Ah], 1
jge     short def_4232E3 ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     word ptr [eax+7Ah], 1
mov     word ptr [eax+78h], 3Ch ; '<'
lea     edx, [ebp+14h]
mov     eax, 1E8h
jmp     loc_423980

loc_423D46:             ; jumptable 00423877 case 6
cmp     byte ptr [ebp+0A7h], 0
jge     short def_4232E3 ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     eax, [esp+1Ch+var_1C]

loc_423D52:
or      byte ptr [eax], 1

def_4232E3:             ; jumptable 004232E3 default case
add     esp, 4          ; jumptable 00423877 default case
; jumptable 00423D8F default case

def_423012:             ; jumptable 00423012 default case
pop     ebp

def_4235B5:             ; jumptable 004235B5 default case
pop     edi             ; jumptable 004240AD default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_423855 endp

db 8Bh, 0C0h
jpt_423D8F dd offset loc_423D96 ; jump table for switch statement
dd offset loc_423EA3
dd offset loc_423FB7
dd offset loc_424052



sub_423D71 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 550h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0Ah]
cmp     al, 3           ; switch 4 cases
ja      short def_4232E3 ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
xor     edx, edx
mov     dl, al
jmp     jpt_423D8F[edx*4] ; switch jump

loc_423D96:             ; jumptable 00423D8F case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 1
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 20h
mov     word ptr [eax+50h], 0FFA0h
mov     word ptr [eax+4], 1Eh
xor     eax, eax
mov     al, [ebp+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Ah]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     [edx+53h], ah
mov     [edx+52h], ah
mov     eax, (offset dword_5F8376+2)
call    sub_4282E5
test    eax, eax
jz      short loc_423DF4
mov     edi, edx
lea     edi, [edi+38h]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     short loc_423E4A

loc_423DF4:
mov     [edx+40h], eax
mov     dword ptr [edx+44h], 0FF3F0000h
mov     dword ptr [edx+48h], 4000000h
lea     esi, [edx+38h]
lea     edi, [edx+40h]
mov     edx, esi
mov     eax, edi
call    sub_4DD57B
push    0
push    0
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DD69F
shl     eax, 4
lea     ecx, [eax-1000h]
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DDDB4
mov     ebx, eax
and     ebx, 0FFFh
mov     edx, edi
mov     eax, esi
call    sub_4DD4C5

loc_423E4A:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edi, [esp+1Ch+var_1C]
add     edi, 38h ; '8'
lea     esi, [ebp+14h]
mov     ecx, 800h
mov     edx, edi
mov     eax, esi
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ecx, [esp+1Ch+var_1C]
mov     ecx, [ecx+2]
sar     ecx, 10h
mov     edx, edi
mov     eax, esi
call    sub_4DD69F
mov     edx, eax
add     ecx, 2
sar     edx, 1Fh
idiv    ecx
mov     [ebp+4Ch], ax
mov     edx, esi
mov     eax, 1D5h

loc_423E99:
call    sub_4D8BC3
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_423EA3:             ; jumptable 00423D8F case 1
mov     eax, 10h
mov     edx, [esp+1Ch+var_1C]
sub     ax, [edx+4]
shl     eax, 2
mov     [ebp+4Eh], ax
dec     word ptr [edx+4]
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [ebp+4Ah]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
cmp     byte ptr [ebp+0A7h], 0
jge     short loc_423F19
mov     ch, [ebp+0ACh]
cmp     ch, 4
jz      short loc_423F19
mov     al, ch
inc     al
mov     [ebp+0ACh], al
cmp     al, 4
jnz     short loc_423F19
xor     eax, eax
mov     al, [ebp+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Ch]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     byte ptr [edx+52h], 1

loc_423F19:
mov     eax, ebp
call    sub_42C592
movsx   edx, ax
mov     ecx, [ebp+14h]
sar     ecx, 10h
cmp     edx, ecx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     [ebp+16h], ax
shl     edx, 10h
mov     [ebp+20h], edx
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 5
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     [edx+52h], ah
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 6
mov     byte ptr [eax+0Fh], 2
lea     edi, [edx+48h]
lea     esi, [ebp+14h]
movsd
movsd
mov     eax, ebp
call    sub_42C592
mov     [edx+4Ah], ax
add     ebp, 14h
mov     edx, ebp
mov     eax, 1E0h
call    sub_4D8BC3
mov     edx, ebp
mov     eax, 1D6h
jmp     loc_423E99

loc_423FB7:             ; jumptable 00423D8F case 2
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+4], 3
jnz     short loc_424030
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_424030
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 2
mov     byte ptr [eax+0Eh], 0
lea     edi, [edx+48h]
lea     esi, [ebp+14h]
movsd
movsd
call    rand_
and     ah, 1
sub     eax, 100h
add     [edx+48h], ax
mov     eax, ebp
call    sub_42C592
mov     [edx+4Ah], ax
call    rand_
and     ah, 1
sub     eax, 100h
add     [edx+4Ch], ax
lea     ecx, [edx+48h]
mov     ebx, 0C00h
mov     edx, 800h
mov     eax, 1Eh
call    sub_42A70B

loc_424030:
mov     eax, [esp+1Ch+var_1C]
inc     word ptr [eax+4]
cmp     byte ptr [ebp+0A7h], 0
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
inc     byte ptr [ebp+0Ah]
mov     word ptr [eax+4], 0Ah
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_424052:             ; jumptable 00423D8F case 3
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
jmp     loc_423D52
sub_423D71 endp

db 90h
jpt_4240AD dd offset loc_4240B4 ; jump table for switch statement
dd offset loc_42411D
dd offset loc_4241AE
dd offset loc_424235
dd offset loc_4242C9
dd offset loc_424300
dd offset loc_42437B
dd offset loc_424408
dd offset loc_42443A



sub_424091 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 8           ; switch 9 cases
ja      def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
xor     edx, edx
mov     dl, al
jmp     jpt_4240AD[edx*4] ; switch jump

loc_4240B4:             ; jumptable 004240AD case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0
or      byte ptr [edi], 20h
mov     word ptr [edi+50h], 0FE80h
mov     word ptr [edi+4], 0
mov     word ptr [edi+6], 10h
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Dh]
xor     ah, ah
mov     [edi+8], ax
mov     [edi+53h], ah
mov     [edi+52h], ah
mov     [esi+0Ch], ah
cmp     word ptr [edi+7Ah], 1
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
mov     word ptr [edi+7Ah], 1
mov     word ptr [edi+78h], 3Ch ; '<'
lea     edx, [esi+14h]
mov     eax, 1E2h
jmp     loc_4242BF

loc_42411D:             ; jumptable 004240AD case 1
mov     ax, word ptr ds:dword_5F880E
mov     dx, [edi+50h]
add     edx, eax
mov     ax, [esi+16h]
sub     edx, eax
mov     [esi+4Eh], dx
mov     eax, [edi+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 6
sar     eax, 0Ch
mov     ebx, [esi+4Ch]
sar     ebx, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     ax, [edi+4]
add     eax, 2
xor     ah, ah
and     al, 3Fh
mov     [edi+4], ax
mov     bx, [edi+6]
dec     ebx
mov     [edi+6], bx
test    bx, bx
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 9
mov     word ptr [edi+4], 15h
mov     word ptr [edi+6], 7
mov     [edi+72h], ah
mov     [edi+73h], ah
mov     word ptr [esi+66h], 0
lea     edx, [esi+14h]
mov     eax, 1D9h
jmp     loc_4242BF

loc_4241AE:             ; jumptable 004240AD case 2
mov     dx, [esi+66h]
cmp     dx, 80h
jge     short loc_4241C2
mov     ebx, edx
add     ebx, 10h
mov     [esi+66h], bx

loc_4241C2:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+1B8h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ax, [edi+6]
test    ax, ax
jnz     short loc_424229
xor     edx, edx
mov     eax, esi
call    sub_424670
inc     byte ptr [edi+72h]
mov     bx, [edi+4]
test    bx, bx
jnz     short loc_42421D
inc     byte ptr [esi+0Ah]
mov     word ptr [edi+4], 6
mov     al, [edi+72h]
and     al, 1
add     [edi+72h], al
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_42421D:
mov     ecx, ebx
dec     ecx
mov     [edi+4], cx
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_424229:
mov     edx, eax
dec     edx
mov     [edi+6], dx
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_424235:             ; jumptable 004240AD case 3
mov     ax, [esi+66h]
cmp     ax, 80h
jge     short loc_424248
mov     edx, eax
add     edx, 10h
mov     [esi+66h], dx

loc_424248:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+1B8h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [edi+72h], 0
jge     short loc_424282
xor     edx, edx
mov     eax, esi
call    sub_424670
sub     byte ptr [edi+72h], 4

loc_424282:
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
inc     byte ptr [esi+0Ah]
or      byte ptr [esi+0Eh], 2
and     byte ptr [edi], 7Fh
xor     edx, edx
mov     eax, esi
call    sub_4245FA
test    eax, eax
jz      short loc_4242AE
or      byte ptr [edi], 80h

loc_4242AE:
test    byte ptr [edi], 80h

loc_4242B1:             ; jumptable 004235B5 default case
jz      def_4235B5      ; jumptable 004240AD default case
lea     edx, [esi+14h]
mov     eax, 1D8h

loc_4242BF:
call    sub_4D8BC3
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_4242C9:             ; jumptable 004240AD case 4
cmp     byte ptr [esi+0Ch], 2
jnz     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
lea     edx, [esi+14h]
mov     eax, 1D9h
call    sub_4D8BC3
inc     byte ptr [esi+0Ah]
test    byte ptr [edi], 80h
jz      short loc_4242EF
mov     eax, [edi+68h]
mov     byte ptr [eax+0Eh], 1

loc_4242EF:
mov     word ptr [edi+4], 15h
mov     word ptr [esi+66h], 0
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_424300:             ; jumptable 004240AD case 5
mov     ax, [esi+66h]
cmp     ax, 80h
jge     short loc_424313
mov     edx, eax
add     edx, 10h
mov     [esi+66h], dx

loc_424313:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+1E0h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, 1
mov     eax, esi
call    sub_424670
inc     byte ptr [edi+73h]
mov     cx, [edi+4]
test    cx, cx
jnz     short loc_42436F
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0Ah
mov     word ptr [edi+4], 6
mov     al, [edi+73h]
and     al, 1
add     [edi+73h], al
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_42436F:
mov     esi, ecx
dec     esi
mov     [edi+4], si
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_42437B:             ; jumptable 004240AD case 6
mov     cx, [esi+66h]
cmp     cx, 80h
jge     short loc_424391
mov     eax, ecx
add     eax, 10h
mov     [esi+66h], ax

loc_424391:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+1E0h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [edi+73h], 0
jge     short loc_4243CE
mov     edx, 1
mov     eax, esi
call    sub_424670
sub     byte ptr [edi+73h], 4

loc_4243CE:
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
inc     byte ptr [esi+0Ah]
or      byte ptr [esi+0Eh], 1
and     byte ptr [edi+1], 0FEh
mov     edx, 1
mov     eax, esi
call    sub_4245FA
test    eax, eax
jz      short loc_4243FF
or      byte ptr [edi+1], 1

loc_4243FF:
test    byte ptr [edi+1], 1
jmp     loc_4242B1

loc_424408:             ; jumptable 004240AD case 7
cmp     byte ptr [esi+0Ch], 4
jnz     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
inc     al
mov     [esi+0Ah], al
test    byte ptr [edi+1], 1
jz      short loc_424424
mov     eax, [edi+6Ch]
mov     byte ptr [eax+0Eh], 1

loc_424424:
mov     byte ptr [esi+0ACh], 0
or      byte ptr [esi+0Eh], 4
mov     word ptr [edi+4], 8
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_42443A:             ; jumptable 004240AD case 8
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
and     byte ptr [esi+0Fh], 0EFh
jmp     loc_42382F
sub_424091 endp




sub_424455 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+550h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_424476
cmp     al, 1
jz      loc_424504
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_424476:
inc     al
mov     [edi+0Ah], al
mov     byte ptr [edi+0ACh], 0
or      byte ptr [esi], 20h
mov     word ptr [esi+50h], 0FFA0h
mov     word ptr [esi+4], 0
xor     eax, eax
mov     al, [edi+2]
mov     ebx, ds:dword_55A108
mov     eax, [ebx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [esi+8], ax
mov     [esi+53h], ah
mov     [esi+52h], ah
call    sub_4DE043
test    eax, eax
jz      short loc_4244FA
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FDh
mov     word ptr [eax+14h], 0C8h
mov     word ptr [eax+16h], 0C8h
mov     word ptr [eax+18h], 0C8h
mov     word ptr [eax+1Ah], 700h
mov     word ptr [eax+2Ch], 0
mov     word ptr [eax+2Eh], 10h
mov     word ptr [eax+30h], 10h
mov     word ptr [eax+32h], 500h
mov     byte ptr [eax+0Bh], 3Ch ; '<'
mov     byte ptr [eax+0Ah], 0

loc_4244FA:
mov     eax, 10h
call    sub_4D9040

loc_424504:
mov     eax, edi
call    sub_42C592
mov     bx, [esi+50h]
add     ebx, eax
mov     ax, [edi+16h]
sub     ebx, eax
mov     [edi+4Eh], bx
mov     eax, [esi+2]
sar     eax, 10h
mov     ebx, dword ptr ds:unk_564C32[eax*2]
sar     ebx, 10h
shl     ebx, 4
sar     ebx, 0Ch
mov     eax, [edi+4Ch]
sar     eax, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, edi
call    sub_4DD43B
cmp     word ptr [esi+4], 3Fh ; '?'
jnz     loc_422FCE
test    byte ptr [esi], 80h
jz      short loc_42455B
mov     eax, [esi+68h]
mov     byte ptr [eax+0Eh], 1

loc_42455B:
test    byte ptr [esi+1], 1
jz      short loc_424568
mov     eax, [esi+6Ch]
mov     byte ptr [eax+0Eh], 1

loc_424568:
and     word ptr [esi], 0FE7Fh
mov     eax, edi
call    sub_4DE336
mov     eax, [esi+58h]
call    sub_4DE371
mov     eax, [esi+5Ch]
call    sub_4DE371
mov     eax, [esi+60h]
call    sub_4DE371
mov     eax, [esi+64h]
call    sub_4DE371
mov     eax, 58h ; 'X'
call    sub_47E8B8
jmp     loc_422FCE
sub_424455 endp




sub_4245A3 proc near
push    ecx
push    edx
call    sub_4DDFD0
mov     ecx, eax
test    eax, eax
jz      short loc_4245F2
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 13h
mov     byte ptr [eax+4], 2
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Fh], 1
mov     dword ptr [eax+1Ch], 0
mov     dword ptr [eax+20h], 0FF3F0000h
mov     dword ptr [eax+24h], 8FC0000h
mov     word ptr [eax+56h], 0
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
or      byte ptr [ecx+6], 20h
xor     eax, eax
pop     edx
pop     ecx
retn

loc_4245F2:
mov     eax, 1
pop     edx
pop     ecx
retn
sub_4245A3 endp




sub_4245FA proc near
push    ebx
push    ecx
push    esi
mov     ecx, edx
lea     esi, [eax+550h]
call    sub_4DE043
mov     edx, eax
mov     eax, ecx
shl     eax, 2
add     eax, esi
mov     [eax+68h], edx
test    edx, edx
jz      short loc_42466A
mov     byte ptr [edx], 1
mov     edx, [eax+68h]
mov     byte ptr [edx+2], 30h ; '0'
mov     edx, [eax+68h]
mov     byte ptr [edx+4], 0
mov     edx, [eax+68h]
mov     byte ptr [edx+3], 0
mov     ebx, ecx
mov     edx, ebx
shl     edx, 3
add     edx, ebx
shl     edx, 3
sub     edx, ebx
shl     edx, 2
mov     ebx, [esi+60h]
add     ebx, edx
mov     edx, [eax+68h]
mov     bl, [ebx+1]
mov     [edx+0Ch], bl
mov     edx, [eax+68h]
mov     [edx+0Dh], cl
mov     edx, [eax+68h]
mov     byte ptr [edx+0Eh], 0
mov     eax, [eax+68h]
mov     byte ptr [eax+0Fh], 0
mov     edx, 1

loc_42466A:
mov     eax, edx
pop     esi
pop     ecx
pop     ebx
retn
sub_4245FA endp




sub_424670 proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_36= dword ptr -36h
var_32= dword ptr -32h
var_2E= dword ptr -2Eh
var_28= word ptr -28h
var_24= dword ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch
var_18= byte ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 2Ch
mov     [esp+40h+var_20], dl
lea     esi, [eax+550h]
xor     ah, ah
mov     [esp+40h+var_1C], ah
jmp     loc_424790

loc_42468D:
mov     bl, 80h

loc_42468F:
mov     bh, bl
mov     [esp+40h+var_18], bl
xor     eax, eax
mov     al, [esp+40h+var_20]
mov     edx, eax
shl     edx, 3
add     edx, eax
shl     edx, 3
sub     edx, eax
mov     eax, [esi+60h]
mov     eax, [eax+edx*4+12h]
sar     eax, 10h
mov     [esp+40h+var_3C], eax
mov     edi, [esp+40h+var_36]
sar     edi, 10h
mov     eax, edi
call    sub_4EF008
mov     ebp, [esp+40h+var_2E]
sar     ebp, 10h
mov     [esp+40h+var_40], ebp
imul    eax, ebp
sar     eax, 0Ch
mov     ebp, [esp+40h+var_3C]
add     ebp, eax
mov     [esp+8], ebp
mov     eax, [esi+60h]
mov     eax, [eax+edx*4+16h]
sar     eax, 10h
mov     [esp+40h+var_3C], eax
mov     eax, edi
call    sub_4EF003
imul    eax, [esp+40h+var_40]
sar     eax, 0Ch
add     eax, [esp+40h+var_3C]
mov     edi, [esi+60h]
mov     dx, [edi+edx*4+16h]
mov     edi, [esp+40h+var_24]
add     edx, edi
mov     [esp+40h+var_28], dx
xor     edx, edx
mov     dl, [esp+40h+var_18]
mov     edi, edx
shl     edi, 10h
or      edi, 2E000000h
xor     edx, edx
mov     dl, bh
shl     edx, 8
or      edi, edx
xor     edx, edx
mov     dl, bl
or      edi, edx
mov     [ecx+4], edi
mov     ebx, [esp+16h]
sar     ebx, 10h
shl     ebx, 10h
mov     edx, [esp+40h+var_3C+2]
sar     edx, 10h
add     ebx, edx
mov     [ecx+8], ebx
cwde
mov     [ecx+10h], eax
mov     dword ptr [ecx+0Ch], 3D482040h
mov     dword ptr [ecx+14h], 2E205Fh
mov     dword ptr [ecx+1Ch], 3F40h
mov     dword ptr [ecx+24h], 3F5Fh
mov     eax, [esp+40h+var_32]
sar     eax, 10h
add     eax, 8
mov     [ecx+18h], eax
mov     dword ptr [ecx+20h], 0

loc_42477D:
mov     dh, [esp+40h+var_1C]
inc     dh
mov     [esp+40h+var_1C], dh
cmp     dh, 18h
jnb     loc_42485C

loc_424790:
xor     edx, edx
mov     dl, [esp+40h+var_20]
add     edx, esi
movsx   ax, byte ptr [edx+72h]
mov     word ptr [esp+40h+var_32+2], ax
xor     ebx, ebx
mov     bl, [esp+40h+var_1C]
shl     ebx, 3
mov     eax, ds:dword_510C56[ebx]
sar     eax, 10h
mov     ecx, [edx+6Fh]
sar     ecx, 18h
cmp     eax, ecx
jge     short loc_42477D
mov     ecx, [esp+40h+var_32]
sar     ecx, 10h
add     eax, 10h
cmp     ecx, eax
jge     short loc_42477D
call    sub_4EE133
mov     ecx, eax
movsx   ax, byte ptr [edx+72h]
mov     dx, word ptr ds:(dword_510C56+2)[ebx]
sub     eax, edx
mov     word ptr [esp+40h+var_32+2], ax
imul    eax, 18h
add     ax, word ptr ds:dword_510C5C[ebx]
and     ah, 0Fh
mov     word ptr [esp+40h+var_36+2], ax
mov     edi, ds:dword_510C5C[ebx]
sar     edi, 10h
mov     eax, edi
mov     edx, edi
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     ebp, [esp+40h+var_32]
sar     ebp, 10h
imul    eax, ebp
sub     edi, eax
mov     [esp+40h+var_24], edi
mov     ebx, ds:(dword_510C56+2)[ebx]
sar     ebx, 10h
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
imul    eax, ebp
sub     ebx, eax
mov     word ptr [esp+40h+var_2E+2], bx
cmp     word ptr [esp+40h+var_32+2], 10h
jge     loc_42468D
mov     bl, byte ptr [esp+40h+var_32+2]
inc     bl
shl     bl, 3
jmp     loc_42468F

loc_42485C:
add     esp, 2Ch
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_424670 endp




sub_424865 proc near

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
lea     ecx, [eax+550h]
mov     ah, [ecx]
test    ah, 40h
jnz     short loc_42488A
mov     bl, ah
or      bl, 40h
mov     [ecx], bl
mov     ebp, offset unk_510D18
jmp     short loc_4248BF

loc_42488A:
mov     edx, [esp+20h+var_20]
mov     edx, [edx+0AEh]
sar     edx, 10h
sar     edx, 1
mov     esi, [esp+20h+var_20]
mov     esi, [esi+6Ch]
sar     esi, 10h
cmp     esi, edx
jl      short loc_4248B3
mov     ebp, offset unk_510D1D
mov     dh, ah
and     dh, 0BFh
mov     [ecx], dh
jmp     short loc_4248BF

loc_4248B3:
mov     ebp, offset unk_510D22
mov     dl, ah
and     dl, 0BFh
mov     [ecx], dl

loc_4248BF:
xor     edi, edi
xor     ebx, ebx
jmp     short loc_4248DE

loc_4248C5:
movsx   esi, bx
lea     edx, [esi+ebp]
xor     eax, eax
mov     al, [edx]
add     edi, eax
mov     ds:byte_510D27[esi], al

loc_4248D7:
inc     ebx
cmp     bx, 5
jge     short loc_4248FC

loc_4248DE:
movsx   edx, bx
mov     al, [ecx+7Ch]
cmp     al, ds:byte_510D2C[edx]
jnz     short loc_4248C5
cmp     byte ptr [ecx+7Dh], 2
jb      short loc_4248C5
xor     ah, ah
mov     ds:byte_510D27[edx], ah
jmp     short loc_4248D7

loc_4248FC:
xor     esi, esi
xor     ebx, ebx
jmp     short loc_424909

loc_424902:
inc     ebx
cmp     bx, 5
jge     short loc_424930

loc_424909:
movsx   edx, bx
mov     dl, [edx+ebp]
xor     dh, dh
add     esi, edx
xor     edx, edx
mov     dx, [ecx+2]
movsx   eax, di
mov     [esp+20h+var_1C], eax
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+20h+var_1C]
movsx   eax, si
cmp     edx, eax
jge     short loc_424902

loc_424930:
movsx   edx, bx
mov     al, ds:byte_510D2C[edx]
mov     edx, [esp+20h+var_20]
mov     [edx+9], al
mov     word ptr [edx+0Ah], 0
cmp     byte ptr [edx+9], 5
jnz     short loc_424951
mov     word ptr [ecx+70h], 1

loc_424951:
mov     al, [ecx+7Ch]
mov     edx, [esp+20h+var_20]
cmp     al, [edx+9]
jnz     short loc_424961
inc     byte ptr [ecx+7Dh]
jmp     short loc_424965

loc_424961:
mov     byte ptr [ecx+7Dh], 0

loc_424965:
mov     eax, [esp+20h+var_20]
mov     al, [eax+9]
mov     [ecx+7Ch], al
mov     eax, 1
add     esp, 8
jmp     def_423012      ; jumptable 00423012 default case
sub_424865 endp




sub_42497B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     ecx, [eax+550h]
mov     esi, [ecx+18h]
and     esi, 0FFFFFFh
jz      loc_424B7B
test    byte ptr [ecx+1Bh], 38h
jz      loc_424B6E
mov     ax, [ebx+6Eh]
mov     [ebx+0B2h], ax
mov     edx, eax
sub     edx, esi
mov     [ebx+6Eh], dx
test    dx, dx
jg      short loc_4249F3
call    sub_4B55BB
test    eax, eax
jz      short loc_4249ED
mov     word ptr [ebx+0B2h], 0
mov     ax, [ebx+0B2h]
mov     [ebx+6Eh], ax
and     byte ptr [ecx], 0F3h
xor     eax, eax
mov     al, [ebx+2]
mov     edx, ds:dword_55A108
mov     esi, [edx+eax*4]
movzx   esi, byte ptr [esi+9]
jmp     short loc_4249F3

loc_4249ED:
mov     word ptr [ebx+6Eh], 1

loc_4249F3:
cmp     word ptr [ecx+7Ah], 0
jge     short loc_424A24
mov     eax, [ecx+74h]
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, [eax]
jge     short loc_424A24
mov     word ptr [ecx+7Ah], 0
mov     word ptr [ecx+78h], 3Ch ; '<'
add     dword ptr [ecx+74h], 4
lea     edx, [ebx+14h]
mov     eax, 1E1h
call    sub_4D8BC3

loc_424A24:
cmp     word ptr [ecx+7Ah], 3
jge     loc_424B02
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     edi, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     edx, eax
shl     eax, 3
sub     eax, edx
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jge     short loc_424A78
test    byte ptr [ecx+1], 8
jnz     short loc_424A78
mov     word ptr [ecx+7Ah], 3
mov     word ptr [ecx+78h], 3Ch ; '<'
or      byte ptr [ecx+1], 8
lea     edx, [ebx+14h]
mov     eax, 1E5h
jmp     loc_424AFD

loc_424A78:
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     edi, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     edx, eax
shl     eax, 2
add     eax, edx
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jge     short loc_424ABE
test    byte ptr [ecx+1], 10h
jnz     short loc_424ABE
mov     word ptr [ecx+7Ah], 3
mov     word ptr [ecx+78h], 3Ch ; '<'
or      byte ptr [ecx+1], 10h
lea     edx, [ebx+14h]
mov     eax, 1E6h
jmp     short loc_424AFD

loc_424ABE:
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     edi, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    edi
add     eax, eax
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jge     short loc_424B02
test    byte ptr [ecx+1], 20h
jnz     short loc_424B02
mov     word ptr [ecx+7Ah], 3
mov     word ptr [ecx+78h], 3Ch ; '<'
or      byte ptr [ecx+1], 20h
lea     edx, [ebx+14h]
mov     eax, 1E7h

loc_424AFD:
call    sub_4D8BC3

loc_424B02:
test    byte ptr [ecx], 8
jz      short loc_424B47
add     [ecx+0Ah], si
test    byte ptr [ecx+1Bh], 20h
jnz     short loc_424B32
xor     eax, eax
mov     al, [ebx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
xor     edx, edx
mov     dl, [eax+9]
mov     eax, [ecx+8]
sar     eax, 10h
cmp     eax, edx
jl      short loc_424B54

loc_424B32:
lea     edx, [ebx+14h]
mov     eax, 0A2h
call    sub_4D8BC3
mov     word ptr [ecx+0Ah], 0
jmp     short loc_424B54

loc_424B47:
lea     edx, [ebx+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_424B54:
xor     ecx, ecx

loc_424B56:
mov     eax, ecx
mov     word ptr [ebx+eax*8+196h], 7FFFh
inc     ecx
cmp     ecx, 10h
jl      short loc_424B56
or      byte ptr [ebx+0Fh], 2
jmp     short loc_424B7B

loc_424B6E:
lea     edx, [ebx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_424B7B:
mov     eax, 1
jmp     def_4235B5      ; jumptable 004235B5 default case
sub_42497B endp         ; jumptable 004240AD default case




sub_424B85 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+4C0h]
lea     edi, [edx+2Ch]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [edx+34h]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
mov     word ptr [eax+15Eh], 4210h
call    rand_
mov     [ecx+52h], ax
xor     ecx, ecx
mov     cl, [edx+8]
mov     eax, edx
call    ds:funcs_424BBC[ecx*4]
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_424B85 endp




sub_424BC8 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 4C0h
mov     [esp+1Ch+var_1C], eax
or      byte ptr [ebp+0], 2
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+0ACh], 0
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
mov     word ptr [ebp+15Eh], 4210h
mov     dword ptr [ebp+78h], 0
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
xor     edx, edx
mov     dl, [eax+8]
shl     edx, 6
mov     eax, ds:dword_55A10C
mov     eax, [eax+120h]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 7
add     edx, eax
mov     [ebp+6Eh], dx
mov     [ebp+0B0h], dx
mov     [ebp+0B2h], dx
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
mov     [ebp+73h], al
or      byte ptr [ebp+0Ch], 2
mov     byte ptr [ebp+0Dh], 0FFh
mov     byte ptr [ebp+0Eh], 0FFh
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 3Ch ; '<'
mov     byte ptr [eax+5Ah], 0FFh
mov     byte ptr [eax+5Bh], 0
mov     word ptr [eax+42h], 0
mov     byte ptr [eax+5Ch], 7
mov     byte ptr [eax+58h], 0
mov     word ptr [ebp+44h], 0Ch
mov     word ptr [eax+4Ah], 0A00h
mov     byte ptr [eax+58h], 0
mov     word ptr [ebp+64h], 0
call    sub_4DDF54
test    eax, eax
jz      short loc_424D37
mov     dl, [eax+1]
mov     ecx, [esp+1Ch+var_1C]
mov     [ecx+59h], dl
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 59h ; 'Y'
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+5], 0
mov     dx, [ebp+56h]
mov     [eax+56h], dx
mov     dl, [ebp+1]
mov     [eax+0Ch], dl
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
lea     edi, [eax+14h]
lea     esi, [ebp+14h]
movsd
movsd
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

loc_424D37:
push    2C580048h
mov     ecx, 51h ; 'Q'
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_436785
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+18h], 0
mov     dword ptr [eax+20h], 0
mov     dword ptr [eax+28h], 0
mov     dword ptr [eax+30h], 0

loc_424D6B:
add     esp, 4

loc_424D6E:
pop     ebp

def_426449:             ; jumptable 00426449 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_424BC8 endp




sub_424D75 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+4C0h]
add     eax, 14h
mov     edx, [esp+1Ch+var_1C]
mov     bl, [edx+0Ch]
test    bl, 2
jnz     loc_424E6B
mov     dx, [ebp+20h]
test    dx, dx
jz      loc_424E2B
mov     ebx, [esp+1Ch+var_1C]
mov     bx, [ebx+6Eh]
mov     esi, [esp+1Ch+var_1C]
mov     [esi+0B2h], bx
mov     cx, [esi+6Eh]
sub     ecx, edx
mov     [esi+6Eh], cx
test    cx, cx
jge     short loc_424DD1
mov     byte ptr [ebp+5Bh], 2
mov     byte ptr [esi+0Ah], 0
mov     word ptr [ebp+4Ch], 3Ch ; '<'
jmp     short loc_424E1A

loc_424DD1:
mov     di, [ebp+54h]
add     edi, edx
mov     [ebp+54h], di
xor     edx, edx
mov     dl, [esi+2]
mov     ebx, ds:dword_55A108
mov     edx, [ebx+edx*4]
mov     dl, [edx+9]
and     edx, 0FFh
xor     ebx, ebx
mov     bx, di
cmp     ebx, edx
jl      short loc_424E0E
mov     word ptr [ebp+54h], 0
or      byte ptr [esi+0Ch], 40h
mov     edx, eax
mov     eax, 0A2h
jmp     short loc_424E15

loc_424E0E:
mov     edx, eax
mov     eax, 0A0h

loc_424E15:
call    sub_4D8BC3

loc_424E1A:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+15Eh], 7FFFh
jmp     loc_424EE4

loc_424E2B:
test    dword ptr [ebp+18h], 0FFFFFFh
jz      short loc_424E40
mov     edx, eax
mov     eax, 0A3h
call    sub_4D8BC3

loc_424E40:
test    dword ptr [ebp+28h], 0FFFFFFh
jz      short loc_424E59
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 0A3h
call    sub_4D8BC3

loc_424E59:
test    dword ptr [ebp+30h], 0FFFFFFh
jz      loc_424EE4
jmp     loc_424ED4

loc_424E6B:
cmp     byte ptr [edx+0Fh], 0
jz      short loc_424E7F
mov     word ptr [edx+15Eh], 7FFFh
dec     byte ptr [edx+0Fh]
jmp     short loc_424EE4

loc_424E7F:
test    bl, 2
jz      short loc_424E99
test    dword ptr [ebp+20h], 0FFFFFFh
jz      short loc_424E99
mov     edx, eax
mov     eax, 0A3h
call    sub_4D8BC3

loc_424E99:
test    dword ptr [ebp+18h], 0FFFFFFh
jz      short loc_424EB2
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 0A3h
call    sub_4D8BC3

loc_424EB2:
test    dword ptr [ebp+28h], 0FFFFFFh
jz      short loc_424ECB
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 0A3h
call    sub_4D8BC3

loc_424ECB:
test    dword ptr [ebp+30h], 0FFFFFFh
jz      short loc_424EE4

loc_424ED4:
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 0A3h
call    sub_4D8BC3

loc_424EE4:
cmp     byte ptr [ebp+5Bh], 2
jz      short loc_424EF7
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+0Ch], 40h
jz      short loc_424EF7
mov     byte ptr [ebp+5Bh], 1

loc_424EF7:
xor     edx, edx
mov     dl, [ebp+5Bh]
mov     eax, [esp+1Ch+var_1C]
call    ds:funcs_424EFF[edx*4]
cmp     byte ptr [ebp+5Bh], 2
jz      loc_425201
xor     eax, eax
mov     al, [ebp+59h]
call    sub_4E1877
lea     edi, [eax+54h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+54h]
movsd
movsd
lea     edi, [eax+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+190h]
mov     [ebp+10h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+192h]
add     eax, 28h ; '('
mov     [ebp+12h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+194h]
mov     [ebp+14h], ax
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+0], eax
mov     eax, [ebp+10h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4], eax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+8], eax
push    0
push    0
mov     eax, [esp+24h+var_1C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     esi, [ebp+10h]
mov     ecx, 0FFFFFCE0h
mov     edx, ebp
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+24h+var_1C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [ebp+18h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0C8h
mov     eax, esi
call    sub_4E01FC
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F0h]
mov     [ebp+10h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F2h]
add     eax, 78h ; 'x'
mov     [ebp+12h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F4h]
mov     [ebp+14h], ax
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+0], eax
mov     eax, [ebp+10h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4], eax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+8], eax
push    820h
push    0
mov     eax, [esp+24h+var_1C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0FFFFF4C0h
mov     edx, ebp
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+24h+var_1C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [ebp+28h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 46h ; 'F'
mov     eax, esi
call    sub_4E01FC
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F0h]
mov     [ebp+10h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F2h]
add     eax, 78h ; 'x'
mov     [ebp+12h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F4h]
mov     [ebp+14h], ax
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+0], eax
mov     eax, [ebp+10h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4], eax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+8], eax
push    0FFFFF7E0h
push    0
mov     eax, [esp+24h+var_1C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0FFFFF4C0h
mov     edx, ebp
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+24h+var_1C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [ebp+30h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 46h ; 'F'
mov     eax, esi
call    sub_4E01FC
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F0h]
mov     [ebp+10h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F2h]
add     eax, 78h ; 'x'
mov     [ebp+12h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F4h]
mov     [ebp+14h], ax
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+0], eax
mov     eax, [ebp+10h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4], eax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+8], eax
push    0
push    0
mov     eax, [esp+24h+var_1C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0FFFFF4C0h
mov     edx, ebp
mov     eax, esi
call    sub_4DD4C5
push    0
push    0
mov     eax, [esp+24h+var_1C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [ebp+20h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 46h ; 'F'
mov     eax, esi
call    sub_4E01FC
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+0Ch], 1
jnz     short loc_425201
test    byte ptr [eax+0A6h], 2
jz      short loc_425201
lea     edx, [eax+14h]
mov     eax, 1C3h
call    sub_4D8BC3

loc_425201:
mov     eax, [esp+1Ch+var_1C]
call    sub_4DEADD
mov     dword ptr [ebp+18h], 0
mov     dword ptr [ebp+20h], 0
mov     dword ptr [ebp+28h], 0
mov     dword ptr [ebp+30h], 0
jmp     loc_424D6B
sub_424D75 endp



; Attributes: thunk

sub_42522A proc near
jmp     sub_4DE336
sub_42522A endp




sub_42522F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+4C0h]
xor     bl, bl
xor     dh, dh
xor     dl, dl
jmp     short loc_42524B

loc_425244:
inc     dl
cmp     dl, 10h
jge     short loc_425290

loc_42524B:
movsx   ecx, dl
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 5
cmp     ds:byte_6DD9CC[eax], 0
jz      short loc_425244
cmp     ds:byte_6DD9CE[eax], 37h ; '7'
jnz     short loc_425271
inc     bl

loc_425271:
movsx   ecx, dl
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 5
cmp     ds:byte_6DD9CE[eax], 3
jnz     short loc_425244
inc     dh
jmp     short loc_425244

loc_425290:
cmp     word ptr [edi+4Eh], 3Ch ; '<'
jnz     short loc_4252AE
or      byte ptr [esi+0Ch], 1
xor     ecx, ecx
mov     cl, [esi+0Ah]
mov     eax, esi
call    ds:funcs_4252A2[ecx*4]
jmp     def_426449      ; jumptable 00426449 default case

loc_4252AE:
xor     ecx, ecx
mov     cl, [esi+9]
mov     eax, esi
call    ds:funcs_4252B5[ecx*4]
cmp     byte ptr [esi+0Dh], 0
jge     short loc_4252C8
mov     byte ptr [edi+5Ch], 9
jmp     short loc_4252D2

loc_4252C8:
cmp     byte ptr [esi+0Eh], 0
jge     short loc_4252D2
mov     byte ptr [edi+5Ch], 8

loc_4252D2:
movsx   ecx, bl
movsx   eax, dh
add     eax, ecx
xor     ecx, ecx
mov     cl, [edi+5Ch]
cmp     eax, ecx
jge     def_426449      ; jumptable 00426449 default case
inc     word ptr [edi+4Eh]
jmp     def_426449      ; jumptable 00426449 default case
sub_42522F endp




sub_4252F0 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Bh]
call    ds:funcs_4252F6[edx*4]
pop     edx
retn
sub_4252F0 endp




sub_4252FF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edi, eax
lea     esi, [eax+4C0h]
test    byte ptr [eax+0Ch], 1
jnz     loc_424D6E
xor     eax, eax
mov     al, [esi+59h]
call    sub_4E1877
mov     ebp, eax
mov     edx, [edi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
mov     dx, [esi+4Ch]
cmp     dx, 140h
jnz     short loc_425362
mov     word ptr [esi+4Ch], 0
mov     eax, ebp
mov     byte ptr [eax+0ACh], 0
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
jmp     short loc_425377

loc_425362:
cmp     dx, 100h
jl      short loc_425377
cmp     dx, 140h
jge     short loc_425377
mov     eax, edx
inc     eax
mov     [esi+4Ch], ax

loc_425377:
cmp     word ptr [edi+64h], 0
jnz     loc_425648
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 2
jnz     short loc_425403
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     eax, ds:dword_510D7C[eax*2]
sar     eax, 10h
mov     edx, [edi+16h]
sar     edx, 10h
cmp     edx, eax
jl      loc_424D6E
test    byte ptr [esi+52h], 1
jz      short loc_4253EB
mov     byte ptr [esi+58h], 8
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]
mov     word ptr [edi+64h], 1
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 400h
mov     byte ptr [ebp+0ACh], 4
jmp     loc_4254A5

loc_4253EB:
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 0C00h
jmp     loc_42549E

loc_425403:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 0
jnz     short loc_425451
xor     ebx, ebx
mov     bl, dl
mov     eax, ebx
shl     eax, 2
add     eax, ebx
mov     edx, ds:(off_510D78+2)[eax*2]
sar     edx, 10h
mov     eax, [edi+12h]
sar     eax, 10h
cmp     eax, edx
jl      loc_424D6E
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 0
jmp     short loc_42549E

loc_425451:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 3
jnz     short loc_4254B4
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     edx, ds:dword_510D7C[eax*2]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
cmp     eax, edx
jg      loc_424D6E
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]

loc_425495:
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 400h

loc_42549E:
mov     byte ptr [ebp+0ACh], 1

loc_4254A5:
xor     ebx, ebx
xor     edx, edx
mov     dl, [ebp+0ACh]
jmp     loc_425847

loc_4254B4:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     ch, ds:byte_510D84[eax*2]
cmp     ch, 1
jnz     short loc_42551E
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     eax, ds:(off_510D78+2)[eax*2]
sar     eax, 10h
mov     edx, [edi+12h]
sar     edx, 10h
cmp     edx, eax
jg      short loc_42551E
test    [esi+52h], ch
jz      short loc_4254FA
mov     byte ptr [esi+58h], 0Dh
jmp     loc_424D6E

loc_4254FA:
mov     eax, edi
call    sub_42654C
add     [esi+58h], ch
add     [edi+9], ch
mov     word ptr [esi+48h], 800h
mov     [ebp+0ACh], ch
xor     ebx, ebx
xor     edx, edx
mov     dl, ch
jmp     loc_425847

loc_42551E:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
mov     dl, ds:byte_510D84[eax]
cmp     dl, 7
jnz     short loc_425563
mov     eax, ds:(off_510D78+2)[eax]
sar     eax, 10h
mov     edx, [edi+12h]
sar     edx, 10h
cmp     edx, eax
jg      loc_424D6E
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 800h
jmp     short loc_425592

loc_425563:
cmp     dl, 4
jnz     short loc_4255A8
mov     edx, ds:dword_510D7C[eax]
sar     edx, 10h
mov     eax, [edi+16h]
sar     eax, 10h
cmp     eax, edx
jl      loc_424D6E
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]

loc_425589:
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 0C00h

loc_425592:
mov     byte ptr [ebp+0ACh], 1

loc_425599:
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
jmp     loc_425847

loc_4255A8:
cmp     dl, 6
jnz     short loc_4255E8
mov     eax, ds:(off_510D78+2)[eax]
sar     eax, 10h
mov     edx, [edi+12h]
sar     edx, 10h
cmp     edx, eax
jl      loc_424D6E
test    byte ptr [esi+52h], 1
jz      short loc_4255DF
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 0
jmp     short loc_425592

loc_4255DF:
mov     byte ptr [esi+58h], 2
jmp     loc_424D6E

loc_4255E8:
cmp     dl, 5
jnz     loc_424D6E
mov     eax, ds:dword_510D7C[eax]
sar     eax, 10h
mov     edx, [edi+16h]
sar     edx, 10h
cmp     edx, eax
jg      loc_424D6E
test    byte ptr [esi+52h], 1
jz      short loc_425630
mov     byte ptr [esi+58h], 7
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]
mov     word ptr [edi+64h], 1

loc_425622:
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 0C00h
jmp     loc_4256DB

loc_425630:
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 400h
jmp     loc_425592

loc_425648:
mov     word ptr [esi+46h], 0FFF1h
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
mov     dl, ds:byte_510D84[eax]
cmp     dl, 1
jnz     short loc_4256AC
mov     eax, ds:dword_510D7C[eax]
sar     eax, 10h
mov     edx, [edi+16h]
sar     edx, 10h
cmp     edx, eax
jg      loc_424D6E
test    byte ptr [esi+52h], 1
jz      short loc_42569D
mov     byte ptr [esi+58h], 0Fh
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]
mov     word ptr [edi+64h], 0
jmp     loc_425495

loc_42569D:
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]
jmp     loc_425622

loc_4256AC:
cmp     dl, 3
jnz     short loc_4256E7
mov     edx, ds:(off_510D78+2)[eax]
sar     edx, 10h
mov     eax, [edi+12h]
sar     eax, 10h
cmp     eax, edx
jl      loc_424D6E
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]

loc_4256D2:
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 800h

loc_4256DB:
mov     byte ptr [ebp+0ACh], 4
jmp     loc_425599

loc_4256E7:
test    dl, dl
jnz     short loc_425717
mov     eax, ds:dword_510D7C[eax]
sar     eax, 10h
mov     edx, [edi+16h]
sar     edx, 10h
cmp     edx, eax
jl      loc_424D6E
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 400h
jmp     short loc_4256DB

loc_425717:
cmp     dl, 2
jnz     short loc_425757
mov     eax, ds:(off_510D78+2)[eax]
sar     eax, 10h
mov     edx, [edi+12h]
sar     edx, 10h
cmp     edx, eax
jg      loc_424D6E
test    byte ptr [esi+52h], 1
jz      short loc_42574E
mov     eax, edi
call    sub_42654C
dec     byte ptr [esi+58h]

loc_425743:
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 0
jmp     short loc_4256DB

loc_42574E:
mov     byte ptr [esi+58h], 0Ah
jmp     loc_424D6E

loc_425757:
cmp     dl, 4
jnz     short loc_42577F
mov     edx, ds:(off_510D78+2)[eax]
sar     edx, 10h
mov     eax, [edi+12h]
sar     eax, 10h
cmp     eax, edx
jg      loc_424D6E
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]
jmp     short loc_425743

loc_42577F:
cmp     dl, 7
jnz     short loc_4257AA
mov     eax, ds:dword_510D7C[eax]
sar     eax, 10h
mov     edx, [edi+16h]
sar     edx, 10h
cmp     edx, eax
jg      loc_424D6E
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]
jmp     loc_425622

loc_4257AA:
cmp     dl, 5
jnz     short loc_4257E4
mov     eax, ds:(off_510D78+2)[eax]
sar     eax, 10h
mov     edx, [edi+12h]
sar     edx, 10h
cmp     edx, eax
jl      loc_424D6E
test    byte ptr [esi+52h], 1
jz      short loc_4257DB
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]
jmp     loc_4256D2

loc_4257DB:
mov     byte ptr [esi+58h], 5
jmp     loc_424D6E

loc_4257E4:
cmp     dl, 6
jnz     loc_424D6E
mov     eax, ds:dword_510D7C[eax]
sar     eax, 10h
mov     edx, [edi+16h]
sar     edx, 10h
cmp     edx, eax
jl      loc_424D6E
test    byte ptr [esi+52h], 1
jz      short loc_425823
mov     byte ptr [esi+58h], 0
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]
mov     word ptr [edi+64h], 0
jmp     loc_425589

loc_425823:
mov     eax, edi
call    sub_42654C
inc     byte ptr [esi+58h]
inc     byte ptr [edi+9]
mov     word ptr [esi+48h], 400h
mov     byte ptr [ebp+0ACh], 4
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx

loc_425847:
mov     eax, ebp
call    sub_4DE96B
jmp     loc_424D6E
sub_4252FF endp




sub_425853 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+4C0h]
test    byte ptr [eax+0Ch], 1
jnz     def_426449      ; jumptable 00426449 default case
xor     eax, eax
mov     al, [esi+59h]
call    sub_4E1877
cmp     word ptr [ecx+64h], 0
jnz     short loc_425883
mov     word ptr [esi+46h], 4
jmp     short loc_425889

loc_425883:
mov     word ptr [esi+46h], 0FFFCh

loc_425889:
mov     dx, [esi+48h]
add     dx, [esi+46h]
and     dh, 0Fh
mov     [esi+48h], dx
mov     di, [esi+4Ch]
inc     edi
mov     [esi+4Ch], di
cmp     di, 40h ; '@'
jnz     short loc_4258C0
cmp     word ptr [ecx+64h], 0
jnz     short loc_4258B7
mov     byte ptr [eax+0ACh], 2
jmp     short loc_4258DE

loc_4258B7:
mov     byte ptr [eax+0ACh], 5
jmp     short loc_4258DE

loc_4258C0:
cmp     di, 100h
jnz     short loc_4258ED
cmp     word ptr [ecx+64h], 0
jnz     short loc_4258D7
mov     byte ptr [eax+0ACh], 3
jmp     short loc_4258DE

loc_4258D7:
mov     byte ptr [eax+0ACh], 6

loc_4258DE:
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B

loc_4258ED:
cmp     word ptr [ecx+64h], 0
jnz     loc_425AA3
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 2
jnz     short loc_42593A
cmp     word ptr [esi+48h], 0C00h
jl      short loc_425922

loc_425916:
mov     eax, ecx
call    sub_4265E1
jmp     def_426449      ; jumptable 00426449 default case

loc_425922:
mov     eax, ecx
call    sub_42666B
inc     byte ptr [esi+58h]

loc_42592C:
dec     byte ptr [ecx+9]

loc_42592F:
mov     word ptr [ecx+56h], 0C00h
jmp     def_426449      ; jumptable 00426449 default case

loc_42593A:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 0
jnz     short loc_425970
cmp     word ptr [esi+48h], 400h
jl      short loc_425916

loc_425958:
mov     eax, ecx
call    sub_42666B
inc     byte ptr [esi+58h]

loc_425962:
dec     byte ptr [ecx+9]
mov     word ptr [ecx+56h], 0
jmp     def_426449      ; jumptable 00426449 default case

loc_425970:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 3
jnz     short loc_42599D
cmp     word ptr [esi+48h], 800h
jl      short loc_425916
mov     eax, ecx
call    sub_42666B
inc     byte ptr [esi+58h]
jmp     loc_425B89

loc_42599D:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     bh, ds:byte_510D84[eax*2]
cmp     bh, 1
jnz     short loc_4259D1
cmp     word ptr [esi+48h], 0C00h
jle     loc_425916
mov     eax, ecx
call    sub_42666B
mov     byte ptr [esi+58h], 0
sub     [ecx+9], bh
jmp     short loc_425A00

loc_4259D1:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 7
jnz     short loc_425A0B
cmp     word ptr [esi+48h], 0C00h
jle     loc_425916

loc_4259F3:
mov     eax, ecx
call    sub_42666B
dec     byte ptr [esi+58h]

loc_4259FD:
dec     byte ptr [ecx+9]

loc_425A00:
mov     word ptr [ecx+56h], 800h
jmp     def_426449      ; jumptable 00426449 default case

loc_425A0B:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 4
jnz     short loc_425A3C
cmp     word ptr [esi+48h], 0C00h
jge     loc_425916
mov     eax, ecx
call    sub_42666B
dec     byte ptr [esi+58h]
jmp     loc_42592C

loc_425A3C:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 6
jnz     short loc_425A6E
cmp     word ptr [esi+48h], 400h
jle     loc_425916
mov     eax, ecx
call    sub_42666B
mov     byte ptr [esi+58h], 0Fh
jmp     loc_425962

loc_425A6E:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
cmp     ds:byte_510D84[eax*2], 5
jnz     def_426449      ; jumptable 00426449 default case
cmp     word ptr [esi+48h], 800h

loc_425A8E:
jle     loc_425916
mov     eax, ecx
call    sub_42666B
dec     byte ptr [esi+58h]
jmp     loc_425B89

loc_425AA3:
xor     edx, edx
mov     dl, [esi+58h]
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
mov     dl, ds:byte_510D84[eax]
cmp     dl, 1
jnz     short loc_425ADA
cmp     word ptr [esi+48h], 800h
jge     loc_425916
mov     eax, ecx
call    sub_42666B
sub     [esi+58h], dl
sub     [ecx+9], dl
jmp     loc_42592F

loc_425ADA:
cmp     dl, 3
jnz     short loc_425AF0
cmp     word ptr [esi+48h], 400h
jge     loc_425916
jmp     loc_4259F3

loc_425AF0:
test    dl, dl
jnz     short loc_425AFC
cmp     word ptr [esi+48h], 400h
jmp     short loc_425A8E

loc_425AFC:
cmp     dl, 2
jnz     short loc_425B1D
cmp     word ptr [esi+48h], 0C00h
jge     loc_425916
mov     eax, ecx
call    sub_42666B
mov     byte ptr [esi+58h], 7
jmp     loc_425962

loc_425B1D:
cmp     dl, 4
jnz     short loc_425B33
cmp     word ptr [esi+48h], 0C00h
jge     loc_425916
jmp     loc_425958

loc_425B33:
cmp     dl, 7
jnz     short loc_425B49
cmp     word ptr [esi+48h], 800h
jge     loc_425916
jmp     loc_425922

loc_425B49:
cmp     dl, 5
jnz     short loc_425B6A
cmp     word ptr [esi+48h], 400h
jge     loc_425916
mov     eax, ecx
call    sub_42666B
mov     byte ptr [esi+58h], 8
jmp     loc_4259FD

loc_425B6A:
cmp     dl, 6
jnz     def_426449      ; jumptable 00426449 default case
cmp     word ptr [esi+48h], 400h
jle     loc_425916
mov     eax, ecx
call    sub_42666B
inc     byte ptr [esi+58h]

loc_425B89:
dec     byte ptr [ecx+9]
mov     word ptr [ecx+56h], 400h
jmp     def_426449      ; jumptable 00426449 default case
sub_425853 endp




sub_425B97 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+4C0h]
cmp     byte ptr [eax+0Dh], 0
jge     short loc_425BCD
cmp     byte ptr [ecx+0Eh], 0
jge     short loc_425BCD
mov     byte ptr [ecx+0ACh], 5
mov     byte ptr [esi+5Ah], 0FFh
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_425C24

loc_425BCD:
mov     byte ptr [ecx+0ACh], 0
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     dh, [ecx+0Eh]
test    dh, dh
jle     short loc_425C0F
mov     [esi+5Ah], dh
mov     eax, [ecx+0Bh]
sar     eax, 18h
call    sub_4E1877
or      byte ptr [eax+0Eh], 8
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E1877
or      byte ptr [eax+0Eh], 4
jmp     short loc_425C24

loc_425C0F:
mov     al, [ecx+0Dh]
mov     [esi+5Ah], al
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E1877
or      byte ptr [eax+0Eh], 8

loc_425C24:
inc     byte ptr [ecx+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_425B97 endp




sub_425C2C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+4C0h]
mov     ah, [ebx+5Ah]
cmp     ah, 0FFh
jnz     short loc_425C93
test    byte ptr [ecx+0A6h], 4
jz      short loc_425C55
lea     edx, [ecx+14h]
mov     eax, 1C4h
call    sub_4D8BC3

loc_425C55:
test    byte ptr [ecx+0A6h], 1
jz      short loc_425C62
and     byte ptr [ecx+0Ch], 0FDh

loc_425C62:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     loc_425CF5
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0ACh], 6
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
pop     edx
pop     ecx
pop     ebx
retn

loc_425C93:
cmp     ah, [ecx+0Eh]
jz      short loc_425C9D
cmp     ah, [ecx+0Dh]
jnz     short loc_425CF2

loc_425C9D:
xor     eax, eax
mov     al, [ebx+5Ah]
call    sub_4E1877
mov     ebx, eax
test    byte ptr [eax+0A6h], 4
jz      short loc_425CBF
lea     edx, [eax+14h]
mov     eax, 1C4h
call    sub_4D8BC3

loc_425CBF:
test    byte ptr [ebx+0A6h], 1
jz      short loc_425CCC
and     byte ptr [ebx+0Eh], 0FDh

loc_425CCC:
mov     eax, [ebx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_425CF5
inc     byte ptr [ecx+0Ah]
mov     dl, [ebx+0Eh]
and     dl, 0E7h
mov     [ebx+0Eh], dl
mov     dh, dl
or      dh, 10h
mov     [ebx+0Eh], dh
pop     edx
pop     ecx
pop     ebx
retn

loc_425CF2:
inc     byte ptr [ecx+0Ah]

loc_425CF5:
pop     edx
pop     ecx
pop     ebx
retn
sub_425C2C endp




sub_425CF9 proc near

var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     edx, eax
lea     esi, [eax+4C0h]
xor     ch, ch
mov     [esp+14h+var_14], ch
mov     bl, [esi+5Ah]
cmp     bl, 0FFh
jnz     short loc_425D28

loc_425D15:
mov     eax, [eax+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_425D4C
inc     byte ptr [edx+0Ah]
jmp     short loc_425D4C

loc_425D28:
cmp     bl, [eax+0Eh]
jz      short loc_425D32
cmp     bl, [edx+0Dh]
jnz     short loc_425D3E

loc_425D32:
xor     eax, eax
mov     al, [esi+5Ah]
call    sub_4E1877
jmp     short loc_425D15

loc_425D3E:
inc     byte ptr [edx+0Ah]
mov     word ptr [esi+50h], 3Ch ; '<'
jmp     loc_426006

loc_425D4C:
cmp     byte ptr [edx+0Ah], 3
jnz     loc_426000
xor     cl, cl
jmp     short loc_425D61

loc_425D5A:
inc     cl
cmp     cl, 10h
jge     short loc_425DA7

loc_425D61:
movsx   ebx, cl
mov     eax, ebx
shl     eax, 3
add     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 5
cmp     ds:byte_6DD9CC[eax], 0
jz      short loc_425D5A
cmp     ds:byte_6DD9CE[eax], 37h ; '7'
jnz     short loc_425D87
inc     ch

loc_425D87:
movsx   ebx, cl
mov     eax, ebx
shl     eax, 3
add     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 5
cmp     ds:byte_6DD9CE[eax], 3
jnz     short loc_425D5A
inc     [esp+14h+var_14]
jmp     short loc_425D5A

loc_425DA7:
mov     eax, [esp-3]
sar     eax, 18h
movsx   ebx, ch
add     eax, ebx
xor     ebx, ebx
mov     bl, [esi+5Ch]
cmp     eax, ebx
jge     loc_426000
cmp     byte ptr [esi+5Ah], 0FFh
jz      short loc_425DD0
xor     eax, eax
mov     al, [esi+5Ah]
call    sub_4E1877

loc_425DD0:
mov     bl, [esp+14h+var_14]
cmp     ch, bl
jnz     loc_425F32
test    byte ptr [esi+52h], 1
jz      loc_425E95

loc_425DE5:
call    sub_4DDF54
mov     ebx, eax
mov     ecx, eax
test    eax, eax
jz      loc_426000
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 37h ; '7'
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+5], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
cmp     byte ptr [esi+5Ah], 0FFh
jz      short loc_425E63
xor     eax, eax
mov     al, [esi+5Ah]
call    sub_4E1877
mov     dx, [eax+56h]
add     dh, 8
and     dh, 0Fh
mov     [ebx+56h], dx
mov     dx, [eax+1C8h]
mov     [ebx+14h], dx
mov     dx, [eax+1CAh]
add     edx, 0C0h
mov     [ebx+16h], dx
mov     ax, [eax+1CCh]

loc_425E5A:
mov     [ebx+18h], ax
jmp     loc_425FDC

loc_425E63:
mov     ax, [edx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebx+56h], ax
mov     ax, [edx+1F0h]
mov     [ebx+14h], ax
mov     ax, [edx+1F2h]
add     eax, 0C0h

loc_425E88:
mov     [ebx+16h], ax
mov     ax, [edx+1F4h]
jmp     short loc_425E5A

loc_425E95:
call    sub_4DDF54
mov     ebx, eax
mov     ecx, eax
test    eax, eax
jz      loc_426000
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 3
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+5], 0
mov     byte ptr [eax+0Ch], 10h
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
cmp     byte ptr [esi+5Ah], 0FFh
jz      short loc_425F0B
xor     eax, eax
mov     al, [esi+5Ah]
call    sub_4E1877
mov     dx, [eax+56h]
add     dh, 8
and     dh, 0Fh
mov     [ebx+56h], dx
mov     dx, [eax+1C8h]
mov     [ebx+14h], dx
mov     dx, [eax+1CAh]
inc     dh
mov     [ebx+16h], dx
mov     ax, [eax+1CCh]
jmp     loc_425E5A

loc_425F0B:
mov     ax, [edx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebx+56h], ax
mov     ax, [edx+1F0h]
mov     [ebx+14h], ax
mov     ax, [edx+1F2h]
inc     ah
jmp     loc_425E88

loc_425F32:
jl      loc_425DE5
call    sub_4DDF54
mov     ebx, eax
mov     ecx, eax
test    eax, eax
jz      loc_426000
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 3
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+5], 0
mov     byte ptr [eax+0Ch], 10h
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
cmp     byte ptr [esi+5Ah], 0FFh
jz      short loc_425FAB
xor     eax, eax
mov     al, [esi+5Ah]
call    sub_4E1877
mov     dx, [eax+56h]
add     dh, 8
and     dh, 0Fh
mov     [ebx+56h], dx
mov     dx, [eax+1C8h]
mov     [ebx+14h], dx
mov     dx, [eax+1CAh]
inc     dh
mov     [ebx+16h], dx
mov     ax, [eax+1CCh]
jmp     short loc_425FD8

loc_425FAB:
mov     ax, [edx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebx+56h], ax
mov     ax, [edx+1F0h]
mov     [ebx+14h], ax
mov     ax, [edx+1F2h]
inc     ah
mov     [ebx+16h], ax
mov     ax, [edx+1F4h]

loc_425FD8:
mov     [ebx+18h], ax

loc_425FDC:
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax

loc_426000:
mov     word ptr [esi+50h], 0

loc_426006:
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_425CF9 endp




sub_42600E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+4C0h]
mov     dx, [esi+50h]
cmp     dx, 3Ch ; '<'
jl      short loc_42607D
mov     ah, [esi+5Ah]
cmp     ah, 0FFh
jnz     short loc_42604A
mov     byte ptr [ecx+0ACh], 7
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
or      byte ptr [ecx+0Ch], 2
jmp     short loc_42606F

loc_42604A:
cmp     ah, [ecx+0Eh]
jz      short loc_426054
cmp     ah, [ecx+0Dh]
jnz     short loc_42606F

loc_426054:
xor     eax, eax
mov     al, [esi+5Ah]
call    sub_4E1877
mov     bl, [eax+0Eh]
and     bl, 0CDh
mov     [eax+0Eh], bl
mov     bh, bl
or      bh, 22h
mov     [eax+0Eh], bh

loc_42606F:
mov     word ptr [esi+50h], 0
inc     byte ptr [ecx+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_42607D:
mov     ebx, edx
inc     ebx
mov     [esi+50h], bx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_42600E endp




sub_426089 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+4C0h]
mov     ah, [esi+5Ah]
cmp     ah, 0FFh
jnz     short loc_4260F0
test    byte ptr [ecx+0A6h], 8
jz      short loc_4260B3
lea     edx, [ecx+14h]
mov     eax, 1C5h
call    sub_4D8BC3

loc_4260B3:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     loc_4261A3
and     byte ptr [ecx+0Ch], 0FEh
mov     byte ptr [ecx+0Ah], 0
mov     word ptr [esi+4Eh], 0
mov     byte ptr [ecx+0ACh], 1
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4260F0:
cmp     ah, [ecx+0Eh]
jz      short loc_426100
mov     al, [ecx+0Dh]
cmp     al, ah
jnz     loc_426176

loc_426100:
xor     eax, eax
mov     al, [esi+5Ah]
call    sub_4E1877
mov     ebx, eax
test    byte ptr [eax+0A6h], 8
jz      short loc_426122
lea     edx, [eax+14h]
mov     eax, 1C5h
call    sub_4D8BC3

loc_426122:
mov     eax, [ebx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4261A3
and     byte ptr [ebx+0Eh], 0DFh
mov     byte ptr [ecx+0Ah], 0
mov     word ptr [esi+4Eh], 0
and     byte ptr [ecx+0Ch], 0FEh
mov     byte ptr [ecx+0ACh], 1
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     al, [ecx+0Eh]
cmp     al, [esi+5Ah]
jnz     short loc_4261A3
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E1877
and     byte ptr [eax+0Eh], 0FBh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_426176:
test    al, al
jle     short loc_426189
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E1877
and     byte ptr [eax+0Eh], 0FBh

loc_426189:
mov     byte ptr [ecx+0Ah], 0
mov     word ptr [esi+4Eh], 0
mov     al, [ecx+0Ch]
and     al, 0BEh
mov     [ecx+0Ch], al
mov     ah, al
or      ah, 40h
mov     [ecx+0Ch], ah

loc_4261A3:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_426089 endp




sub_4261A8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+4C0h]
cmp     byte ptr [esi+5Ah], 0FFh
jnz     short loc_4261DC
or      byte ptr [ecx+0Ch], 2
mov     byte ptr [ecx+0ACh], 7
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Bh], 3
jmp     short loc_426211

loc_4261DC:
mov     byte ptr [ecx+0ACh], 2
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     al, [ecx+0Eh]
mov     dl, [esi+5Ah]
cmp     al, dl
jz      short loc_426203
cmp     dl, [ecx+0Dh]
jnz     short loc_426211

loc_426203:
xor     eax, eax
mov     al, [esi+5Ah]
call    sub_4E1877
mov     byte ptr [eax+0Eh], 42h ; 'B'

loc_426211:
inc     byte ptr [ecx+0Bh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4261A8 endp




sub_426219 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+4C0h]
test    byte ptr [eax+0A6h], 8
jz      short loc_42623C
lea     edx, [ecx+14h]
mov     eax, 1C5h
call    sub_4D8BC3

loc_42623C:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_426449      ; jumptable 00426449 default case
and     byte ptr [ecx+0Ch], 0FEh
mov     al, [ecx+0Eh]
mov     dh, [esi+5Ah]
cmp     al, dh
jz      short loc_426265
cmp     dh, [ecx+0Dh]
jnz     loc_426301

loc_426265:
mov     bh, [esi+5Ah]
cmp     bh, 0FFh
jz      loc_426301
xor     eax, eax
mov     al, bh
call    sub_4E1877
mov     edi, eax
test    byte ptr [eax+0A6h], 8
jz      short loc_426292
lea     edx, [eax+14h]
mov     eax, 1C5h
call    sub_4D8BC3

loc_426292:
mov     eax, [edi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_426449      ; jumptable 00426449 default case
mov     byte ptr [ecx+0ACh], 3
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     ax, [ecx+44h]
add     eax, eax
mov     [ecx+44h], ax
mov     dx, [esi+46h]
add     edx, edx
mov     [esi+46h], dx
mov     word ptr [esi+50h], 0
and     byte ptr [edi+0Eh], 0BFh
inc     byte ptr [ecx+0Bh]
or      byte ptr [ecx+0Ch], 80h
mov     al, [ecx+0Eh]
cmp     al, [esi+5Ah]
jnz     def_426449      ; jumptable 00426449 default case
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E1877
and     byte ptr [eax+0Eh], 0FBh
jmp     def_426449      ; jumptable 00426449 default case

loc_426301:
mov     byte ptr [ecx+0ACh], 3
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     dx, [ecx+44h]
add     edx, edx
mov     [ecx+44h], dx
mov     bx, [esi+46h]
add     ebx, ebx
mov     [esi+46h], bx
mov     word ptr [esi+50h], 0
inc     byte ptr [ecx+0Bh]
or      byte ptr [ecx+0Ch], 80h
jmp     def_426449      ; jumptable 00426449 default case
sub_426219 endp




sub_42633F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+4C0h]
cmp     word ptr [edx+50h], 5Ah ; 'Z'
jl      short loc_42636E
mov     byte ptr [eax+0ACh], 4
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
pop     ebx
retn

loc_42636E:
xor     ebx, ebx
mov     bl, [eax+9]
call    ds:funcs_4252B5[ebx*4]
inc     word ptr [edx+50h]
pop     edx
pop     ecx
pop     ebx
retn
sub_42633F endp




sub_426382 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+4C0h]
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4263E1
mov     byte ptr [eax+0ACh], 1
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
and     byte ptr [ecx+0Ch], 3Fh
mov     word ptr [ecx+44h], 0Ch
mov     edx, [esi+44h]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [esi+46h], ax
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [esi+5Bh], 0
mov     word ptr [esi+4Eh], 0

loc_4263E1:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_426382 endp




sub_4263E6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_426413
mov     byte ptr [eax+0ACh], 2
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [ecx+0Bh], 1

loc_426413:
pop     edx
pop     ecx
pop     ebx
retn
sub_4263E6 endp

db 8Bh, 0C0h
jpt_426449 dd offset loc_426450 ; jump table for switch statement
dd offset loc_426502
dd offset loc_42651B
dd offset loc_42652E
dd offset loc_426535



sub_42642D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+4C0h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_426449      ; jumptable 00426449 default case
xor     edx, edx
mov     dl, al
jmp     jpt_426449[edx*4] ; switch jump

loc_426450:             ; jumptable 00426449 case 0
cmp     word ptr [ebx+4Ch], 0
jz      loc_4264F4
mov     edx, [ebx+4Ah]
sar     edx, 10h
mov     esi, 4
mov     eax, edx
sar     edx, 1Fh
idiv    esi
test    edx, edx
jnz     loc_4264F9
mov     dl, [ebx+52h]
and     dl, 7
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     dh, ds:byte_510E1C[eax*2]
lea     edi, [ebx+38h]
lea     esi, unk_510E1E[eax*2]
movsd
movsd
call    sub_4DE13B
test    eax, eax
jz      short loc_4264F9
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
mov     dl, [ebx+52h]
and     dl, 3
mov     [eax+0Dh], dl
mov     dl, dh
and     edx, 0FFh
shl     edx, 3
add     ecx, edx
mov     dx, [ecx+190h]
mov     di, [ebx+38h]
add     edx, edi
mov     [eax+48h], dx
mov     dx, [ecx+192h]
mov     si, [ebx+3Ah]
add     edx, esi
mov     [eax+4Ah], dx
mov     dx, [ecx+194h]
mov     di, [ebx+3Ch]
add     edx, edi
mov     [eax+4Ch], dx
jmp     short loc_4264F9

loc_4264F4:
inc     al
mov     [ecx+0Ah], al

loc_4264F9:
dec     word ptr [ebx+4Ch]
jmp     def_426449      ; jumptable 00426449 default case

loc_426502:             ; jumptable 00426449 case 1
mov     eax, ecx
call    sub_4367FD
mov     eax, 0Eh

loc_42650E:
call    sub_49E0D7

loc_426513:
inc     byte ptr [ecx+0Ah]
jmp     def_426449      ; jumptable 00426449 default case

loc_42651B:             ; jumptable 00426449 case 2
cmp     ds:word_6E23D6, 0
jnz     def_426449      ; jumptable 00426449 default case
and     byte ptr [ecx], 0FDh
jmp     short loc_426513

loc_42652E:             ; jumptable 00426449 case 3
mov     eax, 6
jmp     short loc_42650E

loc_426535:             ; jumptable 00426449 case 4
cmp     ds:word_6E23D6, 0
jnz     def_426449      ; jumptable 00426449 default case
mov     byte ptr [ecx+8], 2
jmp     def_426449      ; jumptable 00426449 default case
sub_42642D endp




sub_42654C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+4C0h]
xor     ebx, ebx
mov     bl, [edx+58h]
mov     ecx, ebx
shl     ecx, 2
add     ecx, ebx
mov     bx, word ptr ds:dword_510D7C[ecx*2]
mov     [eax+14h], bx
xor     ebx, ebx
mov     bl, [edx+58h]
mov     ecx, ebx
shl     ecx, 2
add     ecx, ebx
mov     bx, word ptr ds:(dword_510D7C+2)[ecx*2]
mov     [eax+18h], bx
mov     ecx, [eax+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+1Ch], ecx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
xor     ebx, ebx
mov     bl, [edx+58h]
mov     ecx, ebx
shl     ecx, 2
add     ebx, ecx
add     ebx, ebx
mov     cx, [eax+14h]
mov     si, ds:word_510D80[ebx]
add     ecx, esi
mov     [edx+40h], cx
xor     ebx, ebx
mov     bl, [edx+58h]
mov     ecx, ebx
shl     ecx, 2
add     ecx, ebx
mov     ax, [eax+18h]
mov     di, ds:word_510D82[ecx*2]
add     eax, edi
mov     [edx+44h], ax
jmp     def_426449      ; jumptable 00426449 default case
sub_42654C endp




sub_4265E1 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+4C0h]
mov     ax, [eax+56h]
add     ax, [ecx+46h]
and     ah, 0Fh
mov     [edx+56h], ax
mov     ebx, [ecx+48h]
sar     ebx, 10h
mov     eax, [ecx+46h]
sar     eax, 10h
call    sub_4EF008
imul    eax, ebx
sar     eax, 0Ch
cwde
mov     ebx, [ecx+3Eh]
sar     ebx, 10h
add     eax, ebx
mov     [edx+14h], ax
mov     ebx, [ecx+48h]
sar     ebx, 10h
mov     eax, [ecx+46h]
sar     eax, 10h
call    sub_4EF003
imul    eax, ebx
sar     eax, 0Ch
cwde
mov     ecx, [ecx+42h]
sar     ecx, 10h
add     eax, ecx
mov     [edx+18h], ax
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+1Ch], eax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4265E1 endp




sub_42666B proc near
push    ebx
push    ecx
push    edx
lea     ecx, [eax+4C0h]
xor     ebx, ebx
mov     bl, [ecx+58h]
mov     edx, ebx
shl     edx, 2
add     edx, ebx
mov     dx, word ptr ds:dword_510D7C[edx*2]
mov     [eax+14h], dx
mov     cl, [ecx+58h]
and     ecx, 0FFh
mov     edx, ecx
shl     edx, 2
add     edx, ecx
mov     dx, word ptr ds:(dword_510D7C+2)[edx*2]
mov     [eax+18h], dx
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
pop     edx
pop     ecx
pop     ebx
retn
sub_42666B endp




sub_4266C4 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_4266CF[ecx*4]
lea     edi, [edx+2Ch]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [edx+34h]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [edx+5Ch]
lea     esi, [edx+54h]
movsd
movsd
cmp     byte ptr [edx+0Dh], 0
jnz     short loc_426702
mov     eax, edx
call    sub_4DEADD
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_426702:
mov     eax, edx
call    sub_4DFC52
mov     eax, edx
call    sub_4DF795
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4266C4 endp




sub_426715 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_426764
or      byte ptr [ecx], 2
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+56h], 800h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Dh]
inc     byte ptr [ecx+0Eh]
inc     byte ptr [ecx+0Ah]

loc_426764:
pop     edx
pop     ecx
pop     ebx
retn
sub_426715 endp




sub_426768 proc near
cmp     byte ptr [eax+0Eh], 0
jnz     short locret_426773
sub     word ptr [eax+16h], 6

locret_426773:
retn
sub_426768 endp




sub_426774 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_426794
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Dh], 0

loc_426794:
cmp     byte ptr [ecx+0A4h], 56h ; 'V'
jnz     short loc_4267A0
inc     byte ptr [ecx+0Dh]

loc_4267A0:
pop     edx
pop     ecx
pop     ebx
retn
sub_426774 endp




sub_4267A4 proc near
cmp     byte ptr [eax+0Eh], 0
jnz     short locret_4267AF
add     word ptr [eax+16h], 3

locret_4267AF:
retn
sub_4267A4 endp




sub_4267B0 proc near
push    ebx
push    edx
mov     dl, [eax+0A4h]
cmp     dl, 5Eh ; '^'
jnb     short loc_4267C4
add     word ptr [eax+16h], 5
jmp     short loc_4267CD

loc_4267C4:
cmp     dl, 6Fh ; 'o'
jnb     short loc_4267CD
dec     word ptr [eax+16h]

loc_4267CD:
mov     bl, [eax+0A4h]
cmp     bl, 67h ; 'g'
jnb     short loc_4267E0
add     word ptr [eax+18h], 0Bh
pop     edx
pop     ebx
retn

loc_4267E0:
cmp     bl, 6Fh ; 'o'
jnb     short loc_4267EA
sub     word ptr [eax+18h], 10h

loc_4267EA:
pop     edx
pop     ebx
retn
sub_4267B0 endp




sub_4267ED proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4267F8[edx*4]
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 100h
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4267ED endp




sub_426817 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+550h]
mov     ah, [eax]
or      ah, 42h
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     eax, ecx
call    sub_4DF7EB
lea     edx, [ecx+630h]
mov     eax, ebx
call    sub_4EECF9
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ebx+0DCh], 0
cmp     byte ptr ds:dword_77E7DC+3, 1
jle     short loc_42687B
mov     dword ptr [ebx+0E0h], 1
jmp     short loc_426885

loc_42687B:
mov     dword ptr [ebx+0E0h], 0

loc_426885:
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+16h], 0FFCDh
mov     word ptr [ecx+18h], 400h
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ecx+1Ch], 0
mov     dword ptr [ecx+20h], 0FFCD0000h
mov     dword ptr [ecx+24h], 4000000h
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     word ptr [ecx+56h], 0
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ebx+98h], 1
mov     byte ptr [ebx+9Ah], 0
mov     byte ptr [ebx+9Bh], 0
mov     dx, [ebx+98h]
test    dx, dx
jle     short loc_426947
mov     word ptr [ebx+98h], 0
mov     eax, [ebx+98h]
sar     eax, 18h
mov     edx, [ebx+97h]
sar     edx, 18h
mov     ebx, eax
mov     eax, ecx
call    sub_4DE96B
jmp     loc_426B3F

loc_426947:
jnz     loc_426B3F
mov     eax, ecx
call    sub_4DEADD
jmp     loc_426B3F
sub_426817 endp




sub_426959 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+550h]
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
call    sub_428568
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_426985[edx*4]
mov     dx, [ebp+98h]
test    dx, dx
jle     short loc_4269BC
mov     word ptr [ebp+98h], 0
mov     ebx, [ebp+98h]
sar     ebx, 18h
mov     edx, [ebp+97h]
sar     edx, 18h
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4269C5

loc_4269BC:
jnz     short loc_4269C5
mov     eax, ecx
call    sub_4DEADD

loc_4269C5:
mov     edx, [ebp+9Ah]
sar     edx, 10h
mov     eax, ecx
call    sub_4283E3
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8
sub_426959 endp

db 8Dh, 40h, 0
jpt_426A1D dd offset def_426A1D ; jump table for switch statement
dd offset loc_426A80
dd offset loc_426B36
dd offset loc_426B36
dd offset loc_426B36
dd offset loc_426B36
dd offset loc_426B36
dd offset loc_426B36
dd offset loc_426B3B



sub_426A01 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
lea     ebp, [eax+550h]
mov     al, [eax+9]
cmp     al, 8           ; switch 9 cases
ja      short def_426A1D ; jumptable 00426A1D default case, case 0
xor     edx, edx
mov     dl, al
jmp     jpt_426A1D[edx*4] ; switch jump

def_426A1D:             ; jumptable 00426A1D default case, case 0
call    sub_4DE043
test    eax, eax
jz      short loc_426A58
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FCh
mov     word ptr [eax+14h], 0C8h
mov     word ptr [eax+16h], 0C8h
mov     word ptr [eax+18h], 0C8h
mov     word ptr [eax+1Ah], 700h
mov     byte ptr [eax+0Bh], 20h ; ' '
mov     byte ptr [eax+0Ah], 0

loc_426A58:
xor     ebx, ebx
xor     edx, edx
mov     eax, 20Ch
call    sub_4D89E4
call    sub_436710
mov     word ptr [ebp+0CEh], 0
mov     byte ptr [ecx+0Bh], 5Ah ; 'Z'
inc     byte ptr [ecx+9]
jmp     loc_426B3B      ; jumptable 00426A1D case 8

loc_426A80:             ; jumptable 00426A1D case 1
mov     edx, [ebp+0CCh]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     [esp+1Ch+var_1C], eax
mov     ebx, eax

loc_426A95:
mov     eax, [esp+1Ch+var_1C]
add     eax, 3
cmp     ebx, eax
jge     short loc_426AF9
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_426AF6
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     esi, ebx
lea     edi, [edx+48h]
lea     esi, [ecx+esi*8+190h]
movsd
movsd
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+48h], ax
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+4Ah], ax
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+4Ch], ax

loc_426AF6:
inc     ebx
jmp     short loc_426A95

loc_426AF9:
mov     dx, [ebp+0CEh]
inc     edx
mov     [ebp+0CEh], dx
cmp     dx, 4
jle     short loc_426B17
mov     word ptr [ebp+0CEh], 0

loc_426B17:
mov     dl, [ecx+0Bh]
dec     dl
mov     [ecx+0Bh], dl
jnz     short loc_426B24
inc     byte ptr [ecx+9]

loc_426B24:
cmp     byte ptr [ecx+0Bh], 0Ah
jnz     short loc_426B3B ; jumptable 00426A1D case 8
mov     eax, 6Ch ; 'l'
call    sub_47E8B8
jmp     short loc_426B3B ; jumptable 00426A1D case 8

loc_426B36:             ; jumptable 00426A1D cases 2-7
inc     al
mov     [ecx+9], al

loc_426B3B:             ; jumptable 00426A1D case 8
add     esp, 4

loc_426B3E:             ; jumptable 00427ADF cases 5-8
pop     ebp

loc_426B3F:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_426A01 endp




sub_426B45 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+550h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_426B5A
cmp     al, 1
jz      short loc_426B98

loc_426B5A:
call    sub_4DE043
test    eax, eax
jz      short loc_426B8E
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FCh
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 10h
mov     word ptr [eax+18h], 10h
mov     word ptr [eax+1Ah], 500h
mov     byte ptr [eax+0Bh], 1Eh
mov     byte ptr [eax+0Ah], 0

loc_426B8E:
inc     byte ptr [edx+0Ah]
mov     byte ptr [edx+0Bh], 1Eh
pop     edx
pop     ecx
retn

loc_426B98:
mov     ah, [edx+0Bh]
sub     ah, al
mov     [edx+0Bh], ah
jnz     short loc_426BB4
mov     word ptr [ecx+9Eh], 0
mov     [edx+9], al
mov     [edx+0Ah], ah
mov     [edx+0Bh], ah

loc_426BB4:
pop     edx
pop     ecx
retn
sub_426B45 endp

db 8Bh, 0C0h
jpt_426C11 dd offset loc_426C18 ; jump table for switch statement
dd offset loc_426C7E
dd offset loc_426D71
dd offset def_426C11



sub_426BC9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
lea     ecx, [eax+550h]
mov     al, [ecx+0A2h]
mov     [ecx+0A3h], al
mov     al, [ecx+0A1h]
mov     [ecx+0A2h], al
mov     al, [ecx+0A0h]
mov     [ecx+0A1h], al
xor     esi, esi
mov     ax, [ecx+9Eh]
cmp     ax, 3           ; switch 4 cases
ja      def_426C11      ; jumptable 00426C11 default case, case 3
and     eax, 0FFFFh
jmp     jpt_426C11[eax*4] ; switch jump

loc_426C18:             ; jumptable 00426C11 case 0
call    rand_
and     eax, 0Fh
cmp     eax, 8
jnb     short loc_426C2E
mov     byte ptr [ecx+0A0h], 2
jmp     short loc_426C35

loc_426C2E:
mov     byte ptr [ecx+0A0h], 3

loc_426C35:
mov     al, [ecx+0A0h]
mov     [ebx+9], al
mov     byte ptr [ebx+0Ah], 0
mov     byte ptr [ebx+0Bh], 0
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jge     short loc_426C70
mov     word ptr [ecx+9Eh], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_426C70:
mov     word ptr [ecx+9Eh], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_426C7E:             ; jumptable 00426C11 case 1
call    rand_
and     eax, 0Fh
cmp     eax, 2
jnb     short loc_426CD8
mov     byte ptr [ecx+0A0h], 2
mov     al, [ecx+0A0h]
mov     [ebx+9], al
mov     byte ptr [ebx+0Ah], 0
mov     byte ptr [ebx+0Bh], 0
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jge     short loc_426CCD

loc_426CBF:
mov     word ptr [ecx+9Eh], 2
jmp     loc_426D42

loc_426CCD:
mov     word ptr [ecx+9Eh], 1
jmp     short loc_426D42

loc_426CD8:
cmp     eax, 3
jnb     short loc_426D13
mov     byte ptr [ecx+0A0h], 3
mov     al, [ecx+0A0h]
mov     [ebx+9], al
mov     byte ptr [ebx+0Ah], 0
mov     byte ptr [ebx+0Bh], 0
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jl      short loc_426CBF
jmp     short loc_426CCD

loc_426D13:
cmp     eax, 9
jnb     short loc_426D21
mov     byte ptr [ecx+0A0h], 4
jmp     short loc_426D28

loc_426D21:
mov     byte ptr [ecx+0A0h], 5

loc_426D28:
mov     al, [ecx+0A0h]
mov     [ebx+9], al
mov     byte ptr [ebx+0Ah], 0
mov     byte ptr [ebx+0Bh], 0
mov     word ptr [ecx+9Eh], 0

loc_426D42:
mov     al, [ecx+0A1h]
mov     dh, [ecx+0A0h]
cmp     al, dh
jnz     def_426C11      ; jumptable 00426C11 default case, case 3
cmp     dh, [ecx+0A2h]
jnz     def_426C11      ; jumptable 00426C11 default case, case 3
inc     esi
cmp     esi, 10h
jb      loc_426C7E      ; jumptable 00426C11 case 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_426D71:             ; jumptable 00426C11 case 2
call    rand_
and     eax, 0Fh
cmp     eax, 3
jnb     short loc_426DC8
mov     byte ptr [ecx+0A0h], 2
mov     al, [ecx+0A0h]
mov     [ebx+9], al
mov     byte ptr [ebx+0Ah], 0
mov     byte ptr [ebx+0Bh], 0
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jge     short loc_426DBD
mov     word ptr [ecx+9Eh], 2
jmp     short loc_426E05

loc_426DBD:
mov     word ptr [ecx+9Eh], 1
jmp     short loc_426E05

loc_426DC8:
cmp     eax, 8
jnb     short loc_426DD6
mov     byte ptr [ecx+0A0h], 4
jmp     short loc_426DEB

loc_426DD6:
cmp     eax, 0Ah
jnb     short loc_426DE4
mov     byte ptr [ecx+0A0h], 5
jmp     short loc_426DEB

loc_426DE4:
mov     byte ptr [ecx+0A0h], 6

loc_426DEB:
mov     al, [ecx+0A0h]
mov     [ebx+9], al
mov     byte ptr [ebx+0Ah], 0
mov     byte ptr [ebx+0Bh], 0
mov     word ptr [ecx+9Eh], 0

loc_426E05:
mov     al, [ecx+0A1h]
mov     ah, [ecx+0A0h]
cmp     al, ah
jnz     short def_426C11 ; jumptable 00426C11 default case, case 3
cmp     ah, [ecx+0A2h]
jnz     short def_426C11 ; jumptable 00426C11 default case, case 3
inc     esi
cmp     esi, 10h
jb      loc_426D71      ; jumptable 00426C11 case 2

def_426C11:             ; jumptable 00426C11 default case, case 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_426BC9 endp

db 90h
jpt_426E6E dd offset def_426E6E ; jump table for switch statement
dd offset loc_426E81
dd offset loc_426EEE
dd offset loc_426F5C
dd offset loc_426FA1
dd offset loc_42704F
dd offset loc_427074
dd offset loc_427112
dd offset loc_427133



sub_426E51 proc near

var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
lea     edi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 8           ; switch 9 cases
ja      short def_426E6E ; jumptable 00426E6E default case, case 0
and     eax, 0FFh
jmp     jpt_426E6E[eax*4] ; switch jump

def_426E6E:             ; jumptable 00426E6E default case, case 0
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     loc_426F54

loc_426E81:             ; jumptable 00426E6E case 1
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     esi, [ebp+14h]
mov     ecx, 80h
mov     edx, edi
mov     eax, esi
call    sub_4DE552
mov     [esp+24h+var_1C], eax
test    eax, eax
jz      short loc_426EB3

loc_426EA6:
mov     eax, [esp+24h+var_1C]
add     [ebp+56h], ax
jmp     loc_42713F

loc_426EB3:
mov     word ptr [edi+98h], 1
mov     byte ptr [edi+9Ah], 1
mov     byte ptr [edi+9Bh], 0
call    rand_
test    al, 3
jnz     short loc_426EDF
mov     edx, esi
mov     eax, 1FCh
call    sub_4D8BC3

loc_426EDF:
lea     edx, [ebp+14h]
mov     eax, 1EBh
call    sub_4D8BC3
jmp     short loc_426F54

loc_426EEE:             ; jumptable 00426E6E case 2
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     [ebp+56h], ax
xor     eax, eax
mov     al, [ebp+0A4h]
movsx   ax, ds:byte_510EAC[eax]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_42713F
mov     word ptr [edi+98h], 1
mov     byte ptr [edi+9Ah], 2

loc_426F4D:
mov     byte ptr [edi+9Bh], 0

loc_426F54:
inc     byte ptr [ebp+0Ah]
jmp     loc_42713F

loc_426F5C:             ; jumptable 00426E6E case 3
cmp     byte ptr [ebp+0A7h], 0
jge     loc_42713F
lea     edx, [ebp+14h]
mov     eax, 1ECh
call    sub_4D8BC3
mov     word ptr [edi+98h], 1
mov     byte ptr [edi+9Ah], 3
mov     byte ptr [edi+9Bh], 0
mov     word ptr [edi+9Ch], 1
mov     word ptr [edi+0C8h], 0
jmp     short loc_426F54

loc_426FA1:             ; jumptable 00426E6E case 4
mov     cx, [edi+0C8h]
inc     ecx
mov     [edi+0C8h], cx
cmp     cx, 0Ah
jge     short loc_426FD8
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 20h ; ' '
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     [ebp+56h], ax

loc_426FD8:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 400h
mov     eax, ebp
call    sub_4DD43B
lea     edx, [ebp+14h]
mov     eax, edx
call    sub_4282E5
test    eax, eax
jnz     short loc_427003
mov     eax, 1EDh
call    sub_4D8BC3
inc     byte ptr [ebp+0Ah]

loc_427003:
call    sub_4DE13B
mov     edi, eax
test    eax, eax
jz      loc_42713F
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 1
mov     byte ptr [eax+3], 22h ; '"'
test    byte ptr ds:word_77EAB6, 1
jz      short loc_427039
lea     edi, [edi+48h]
lea     esi, [ebp+1E8h]
jmp     short loc_427042

loc_427039:
lea     edi, [edi+48h]
lea     esi, [ebp+208h]

loc_427042:
movsd
movsd
mov     word ptr [eax+4Ah], 0FFE1h
jmp     loc_42713F

loc_42704F:             ; jumptable 00426E6E case 5
mov     word ptr [edi+98h], 1
mov     byte ptr [edi+9Ah], 4
mov     byte ptr [edi+9Bh], 0
mov     word ptr [edi+9Ch], 0
jmp     loc_426F54

loc_427074:             ; jumptable 00426E6E case 6
sub     word ptr [ebp+16h], 0Ah
mov     eax, [ebp+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFCDh
jg      short loc_42708A
mov     word ptr [ebp+16h], 0FFCDh

loc_42708A:
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     ax, [ebp+14h]
add     eax, eax
mov     [esp+24h+var_24], ax
mov     ax, [ebp+16h]
mov     [esp+24h+var_22], ax
mov     ax, [ebp+18h]
add     eax, eax
sub     eax, 400h
mov     [esp+24h+var_20], ax
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, esp
call    sub_4DE552
mov     [esp+24h+var_1C], eax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426EA6
test    eax, eax
jnz     loc_426EA6
mov     eax, [ebp+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFCDh
jnz     loc_426EA6
mov     word ptr [edi+98h], 1
mov     byte ptr [edi+9Ah], 0
jmp     loc_426F4D

loc_427112:             ; jumptable 00426E6E case 7
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFE20h
mov     eax, ebp
call    sub_4DD43B
lea     eax, [ebp+14h]
call    sub_4283B9
test    eax, eax
jz      short loc_42713F
jmp     loc_426F54

loc_427133:             ; jumptable 00426E6E case 8
mov     byte ptr [ebp+9], 1
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0

loc_42713F:
add     esp, 0Ch
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8
sub_426E51 endp

db 8Bh, 0C0h
jpt_4271A9 dd offset def_4271A9 ; jump table for switch statement
dd offset loc_4271CE
dd offset loc_4271DB
dd offset loc_427238
dd offset loc_42765C
dd offset loc_4276FD
dd offset loc_42784A
dd offset loc_42786D
dd offset loc_42786D
dd offset loc_42786D
dd offset loc_42786D
dd offset loc_42786D
dd offset loc_42786D
dd offset loc_42786D
dd offset loc_42786D
dd offset loc_427861



sub_427189 proc near

var_28= dword ptr -28h
var_24= word ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
add     eax, 550h
mov     [esp+28h+var_20], eax
mov     al, [ebp+0Ah]
cmp     al, 0Fh         ; switch 16 cases
ja      short def_4271A9 ; jumptable 004271A9 default case, case 0
and     eax, 0FFh
jmp     jpt_4271A9[eax*4] ; switch jump

def_4271A9:             ; jumptable 004271A9 default case, case 0
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+0A4h], 0
mov     word ptr [eax+0A6h], 0

loc_4271C6:
inc     byte ptr [ebp+0Ah]
jmp     loc_42786D      ; jumptable 004271A9 cases 7-14

loc_4271CE:             ; jumptable 004271A9 case 1
mov     edi, [esp+28h+var_20]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     short loc_4271C6

loc_4271DB:             ; jumptable 004271A9 case 2
mov     ecx, 80h
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
mov     edx, [esp+28h+var_20]
lea     eax, [ebp+14h]
call    sub_4DE552
test    eax, eax
jz      short loc_427205

loc_4271FC:
add     [ebp+56h], ax
jmp     loc_42786D      ; jumptable 004271A9 cases 7-14

loc_427205:
call    rand_
test    al, 3
jnz     short loc_42721B
lea     edx, [ebp+14h]
mov     eax, 200h
call    sub_4D8BC3

loc_42721B:
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 11h
mov     byte ptr [eax+9Bh], 0
jmp     short loc_4271C6

loc_427238:             ; jumptable 004271A9 case 3
cmp     byte ptr [ebp+0A4h], 0Fh
jbe     loc_42752D
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
mov     eax, ebp
add     eax, 14h
mov     [esp+28h+var_1C], eax
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     [ebp+56h], ax
cmp     byte ptr [ebp+0A4h], 10h
jnz     loc_427335
mov     edx, [esp+28h+var_1C]
mov     eax, 1EEh
call    sub_4D8BC3
mov     eax, [esp+28h+var_20]
mov     ax, [eax]
mov     di, [ebp+14h]
sub     eax, edi
mov     word ptr [esp+28h+var_28], ax
mov     eax, [esp+28h+var_20]
mov     ax, [eax+2]
mov     dx, [ebp+16h]
sub     eax, edx
mov     word ptr [esp+28h+var_28+2], ax
mov     eax, [esp+28h+var_20]
mov     ax, [eax+4]
mov     bx, [ebp+18h]
sub     eax, ebx
mov     [esp+28h+var_24], ax
mov     edx, [esp+28h+var_28]
sar     edx, 10h
imul    edx, edx
mov     eax, [esp-2]
sar     eax, 10h
imul    eax, eax
add     edx, eax
mov     eax, [esp+28h+var_28+2]
sar     eax, 10h
imul    eax, eax
add     eax, edx
call    sub_4EF075
mov     edi, [esp+28h+var_20]
lea     edi, [edi+0A8h]
lea     esi, [ebp+14h]
movsd
movsd
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+0C0h], 0
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
mov     ecx, 800h
mov     edx, eax
mov     eax, [esp+28h+var_1C]
call    sub_4DE552
mov     edx, eax
mov     ax, [ebp+56h]
add     eax, edx
mov     edx, [esp+28h+var_20]
mov     [edx+0C4h], ax
jmp     loc_42786D      ; jumptable 004271A9 cases 7-14

loc_427335:
mov     eax, [esp+28h+var_20]
mov     dx, [eax+0C0h]
inc     edx
mov     [eax+0C0h], dx
cmp     dx, 14h
jl      loc_427471
inc     word ptr [eax+0A4h]
mov     eax, [esp+28h+var_1C]
call    sub_4283B9
test    eax, eax
jz      short loc_4273BC
mov     edx, [esp+28h+var_1C]
mov     eax, 1F0h
call    sub_4D8BC3
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 12h
mov     byte ptr [eax+9Bh], 0
mov     ecx, [esp+28h+var_1C]
mov     ebx, 0FA0h
mov     edx, 64h ; 'd'
mov     eax, 28h ; '('
call    sub_42A70B
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+9Ch], 2
inc     byte ptr [ebp+0Ah]
jmp     loc_427471

loc_4273BC:
mov     eax, [esp+28h+var_20]
mov     si, [eax+0A4h]
cmp     si, 2
jnz     short loc_42741F
mov     edx, [esp+28h+var_1C]
mov     eax, 1EFh
call    sub_4D8BC3
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 13h
mov     byte ptr [eax+9Bh], 0
mov     ecx, [esp+28h+var_1C]
mov     ebx, 0FA0h
mov     edx, 64h ; 'd'
mov     eax, 28h ; '('
call    sub_42A70B
mov     eax, [esp+28h+var_20]
mov     [eax+9Ch], si
mov     byte ptr [ebp+0Ah], 6
jmp     short loc_427471

loc_42741F:
mov     edx, [esp+28h+var_1C]
mov     eax, 1EFh
call    sub_4D8BC3
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 13h
mov     byte ptr [eax+9Bh], 0
mov     ecx, [esp+28h+var_1C]
mov     ebx, 0FA0h
mov     edx, 64h ; 'd'
mov     eax, 28h ; '('
call    sub_42A70B
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+9Ch], 2
mov     byte ptr [ebp+0Ah], 5

loc_427471:
mov     ecx, [esp+28h+var_20]
mov     ecx, [ecx+0BEh]
sar     ecx, 10h
mov     eax, [esp+28h+var_20]
mov     eax, [eax+0A6h]
sar     eax, 10h
mov     ebx, 14h
sub     ebx, ecx
imul    eax, ebx
mov     edx, [esp+28h+var_20]
movsx   edx, word ptr [edx]
imul    edx, ecx
add     edx, eax
mov     esi, 14h
mov     eax, edx
sar     edx, 1Fh
idiv    esi
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     edx, [esp+28h+var_20]
mov     edx, [edx+0AAh]
sar     edx, 10h
imul    edx, ebx
mov     eax, [esp+28h+var_20]
mov     eax, [eax+2]
sar     eax, 10h
imul    eax, ecx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
shl     eax, 10h
mov     [ebp+24h], eax
mov     eax, ecx
shl     eax, 10h
mov     edx, eax
shl     eax, 3
sub     eax, edx
mov     edx, eax
imul    edx, ecx
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 12h
sub     edx, eax
sub     edx, 10000h
mov     [ebp+20h], edx
mov     eax, [ebp+1Ch]
sar     eax, 10h
mov     [ebp+14h], ax
mov     eax, [ebp+20h]
sar     eax, 10h
mov     [ebp+16h], ax
mov     eax, [ebp+24h]
sar     eax, 10h
mov     [ebp+18h], ax
jmp     loc_42786D      ; jumptable 004271A9 cases 7-14

loc_42752D:
mov     eax, (offset dword_5F8376+2)
call    sub_42834F
test    eax, eax
jz      short loc_42754B
mov     edi, [esp+28h+var_20]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     loc_42761A

loc_42754B:
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     edx, [esp+28h+var_20]
mov     [edx+0B0h], eax
mov     ecx, eax
neg     ecx
mov     [edx+0B0h], ecx
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
mov     [edx+0B4h], eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     edx, 400h
sub     edx, eax
mov     eax, [esp+28h+var_20]
mov     [eax+0B8h], edx
add     eax, 0B0h
mov     edx, esp
call    sub_4EF932
mov     edx, [esp-2]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 0Ch
mov     edx, ds:dword_5F8376
sar     edx, 10h
add     eax, edx
mov     edx, [esp+28h+var_20]
mov     [edx], ax
mov     edx, [esp+28h+var_28]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     edx, eax
shl     edx, 2
sar     edx, 0Ch
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
add     eax, edx
mov     edx, [esp+28h+var_20]
mov     [edx+2], ax
mov     edx, [esp+28h+var_28+2]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     edx, eax
shl     edx, 2
sar     edx, 0Ch
mov     eax, ds:dword_5F837A
sar     eax, 10h
add     eax, edx
mov     edx, [esp+28h+var_20]
mov     [edx+4], ax

loc_42761A:
xor     eax, eax
mov     al, [ebp+0A4h]
movsx   ax, ds:byte_510EBC[eax]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, [esp+28h+var_20]
call    sub_4DE552
jmp     loc_4271FC

loc_42765C:             ; jumptable 004271A9 case 4
cmp     byte ptr [ebp+0A4h], 17h
ja      short loc_4276AF
call    sub_4DE043
test    eax, eax
jz      short loc_4276AF
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FFh
mov     edx, [ebp+88h]
mov     [eax+88h], edx
lea     edi, [eax+0BCh]
lea     esi, [ebp+208h]
movsd
movsd
mov     word ptr [eax+0C2h], 0Fh
mov     ecx, 0Ch
lea     edi, [eax+8Ch]
lea     esi, [ebp+520h]
rep movsd

loc_4276AF:
mov     edx, 0FFFFFFFBh
mov     eax, ebp
call    sub_428875
test    eax, eax
jz      loc_42786D      ; jumptable 004271A9 cases 7-14
cmp     byte ptr [ebp+0A7h], 0
jge     loc_42786D      ; jumptable 004271A9 cases 7-14
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0
mov     byte ptr [eax+9Bh], 0
mov     word ptr [eax+9Ch], 0
mov     byte ptr [ebp+0Ah], 0Fh
jmp     loc_42786D      ; jumptable 004271A9 cases 7-14

loc_4276FD:             ; jumptable 004271A9 case 5
mov     eax, (offset dword_5F8376+2)
call    sub_42834F
test    eax, eax
jz      short loc_42771B
mov     edi, [esp+28h+var_20]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     loc_4277F6

loc_42771B:
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     edx, [esp+28h+var_20]
mov     [edx+0B0h], eax
mov     eax, edx
mov     edx, [edx+0B0h]
neg     edx
mov     [eax+0B0h], edx
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
mov     edx, [esp+28h+var_20]
mov     [edx+0B4h], eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     edx, 400h
sub     edx, eax
mov     eax, [esp+28h+var_20]
mov     [eax+0B8h], edx
add     eax, 0B0h
mov     edx, esp
call    sub_4EF932
mov     edx, [esp-2]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 0Ch
mov     edx, ds:dword_5F8376
sar     edx, 10h
add     eax, edx
mov     edx, [esp+28h+var_20]
mov     [edx], ax
mov     edx, [esp+28h+var_28]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 0Ch
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
add     eax, edx
mov     edx, [esp+28h+var_20]
mov     [edx+2], ax
mov     edx, [esp+28h+var_28+2]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 0Ch
mov     edx, ds:dword_5F837A
sar     edx, 10h
add     eax, edx
mov     edx, [esp+28h+var_20]
mov     [edx+4], ax

loc_4277F6:
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, [esp+28h+var_20]
call    sub_4DE552
add     [ebp+56h], ax
xor     edx, edx
mov     eax, ebp
call    sub_428875
cmp     byte ptr [ebp+0A7h], 0
jge     short loc_42786D ; jumptable 004271A9 cases 7-14
mov     eax, [esp+28h+var_20]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0
mov     byte ptr [eax+9Bh], 10h
mov     byte ptr [ebp+0Ah], 3
jmp     short loc_42786D ; jumptable 004271A9 cases 7-14

loc_42784A:             ; jumptable 004271A9 case 6
mov     eax, [esp+28h+var_20]
mov     word ptr [eax], 0
mov     word ptr [eax+2], 0FFFFh
mov     word ptr [eax+4], 400h
jmp     short loc_4277F6

loc_427861:             ; jumptable 004271A9 case 15
mov     byte ptr [ebp+9], 1
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0

loc_42786D:             ; jumptable 004271A9 cases 7-14
add     esp, 10h
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8
sub_427189 endp

jpt_4278B9 dd offset def_4278B9 ; jump table for switch statement
dd offset loc_4278CD
dd offset loc_42792A
dd offset loc_4279AC
dd offset loc_427A59
dd offset loc_427A7B
dd offset loc_427A97
dd offset loc_427A97
dd offset loc_427A97



sub_427899 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     ebp, eax
add     eax, 550h
mov     [esp+2Ch+var_1C], eax
mov     al, [ebp+0Ah]
cmp     al, 8           ; switch 9 cases
ja      short def_4278B9 ; jumptable 004278B9 default case, case 0
and     eax, 0FFh
jmp     jpt_4278B9[eax*4] ; switch jump

def_4278B9:             ; jumptable 004278B9 default case, case 0
mov     edi, [esp+2Ch+var_1C]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     short loc_427922

loc_4278CD:             ; jumptable 004278B9 case 1
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     esi, [ebp+14h]
mov     ecx, 80h
mov     edx, [esp+2Ch+var_1C]
mov     eax, esi
call    sub_4DE552
mov     edx, eax
test    eax, eax
jz      short loc_4278FB
add     [ebp+56h], ax
jmp     loc_427A97      ; jumptable 004278B9 cases 6-8

loc_4278FB:
mov     edx, esi
mov     eax, 1F1h
call    sub_4D8BC3
mov     eax, [esp+2Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 5

loc_42791B:
mov     byte ptr [eax+9Bh], 0

loc_427922:
inc     byte ptr [ebp+0Ah]
jmp     loc_427A97      ; jumptable 004278B9 cases 6-8

loc_42792A:             ; jumptable 004278B9 case 2
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     esi, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DE552
add     [ebp+56h], ax
xor     eax, eax
mov     al, [ebp+0A4h]
movsx   ax, ds:byte_510ED8[eax]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_427A97      ; jumptable 004278B9 cases 6-8
mov     edx, esi
mov     eax, 1FFh
call    sub_4D8BC3
mov     edx, esi
mov     eax, 1F2h
call    sub_4D8BC3
mov     eax, [esp+2Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 6
jmp     loc_42791B

loc_4279AC:             ; jumptable 004278B9 case 3
cmp     byte ptr [ebp+0A4h], 2
jnz     short loc_4279C2
lea     edx, [ebp+14h]
mov     eax, 1F3h
call    sub_4D8BC3

loc_4279C2:
mov     bl, [ebp+0A4h]
cmp     bl, 2
jb      short loc_427A37
cmp     bl, 0Ah
ja      short loc_427A37
test    bl, 1
jnz     short loc_427A37
call    sub_4DE043
mov     ecx, eax
test    eax, eax
jz      short loc_427A37
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 32h ; '2'
mov     byte ptr [eax+3], 3
mov     eax, [ebp+1E6h]
sar     eax, 10h
mov     edx, [ebp+12h]
sar     edx, 10h
sub     eax, edx
mov     [esp+2Ch+var_2C], eax
xor     edx, edx
mov     [esp+2Ch+var_28], edx
mov     edx, [ebp+1EAh]
sar     edx, 10h
mov     eax, [ebp+16h]
sar     eax, 10h
sub     edx, eax
mov     [esp+2Ch+var_24], edx
lea     edx, [ecx+44h]
mov     eax, esp
call    sub_4EF932
lea     edi, [ecx+14h]
lea     esi, [ebp+1E8h]
movsd
movsd
mov     word ptr [ecx+16h], 0FFFEh

loc_427A37:
cmp     byte ptr [ebp+0A7h], 0
jge     short loc_427A97 ; jumptable 004278B9 cases 6-8
mov     eax, [esp+2Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 7
jmp     loc_42791B

loc_427A59:             ; jumptable 004278B9 case 4
cmp     byte ptr [ebp+0A7h], 0
jge     short loc_427A97 ; jumptable 004278B9 cases 6-8
mov     eax, [esp+2Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0
jmp     loc_42791B

loc_427A7B:             ; jumptable 004278B9 case 5
mov     edx, 0FFFFFFFBh
mov     eax, ebp
call    sub_428875
test    eax, eax
jz      short loc_427A97 ; jumptable 004278B9 cases 6-8
mov     byte ptr [ebp+9], 1
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0

loc_427A97:             ; jumptable 004278B9 cases 6-8
add     esp, 14h
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8
sub_427899 endp

db 8Bh, 0C0h
jpt_427ADF dd offset def_427ADF ; jump table for switch statement
dd offset loc_427AF2
dd offset loc_427B69
dd offset loc_427BB7
dd offset loc_427BF6
dd offset loc_426B3E
dd offset loc_426B3E
dd offset loc_426B3E
dd offset loc_426B3E



sub_427AC5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 8           ; switch 9 cases
ja      short def_427ADF ; jumptable 00427ADF default case, case 0
and     eax, 0FFh
jmp     jpt_427ADF[eax*4] ; switch jump

def_427ADF:             ; jumptable 00427ADF default case, case 0
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     loc_427BAF

loc_427AF2:             ; jumptable 00427ADF case 1
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, edi
call    sub_4DE552
mov     edx, eax
test    eax, eax
jz      short loc_427B1C
add     [ebp+56h], ax
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8

loc_427B1C:
mov     word ptr [edi+98h], 1
mov     byte ptr [edi+9Ah], 0Fh
mov     byte ptr [edi+9Bh], 0
inc     byte ptr [ebp+0Ah]
call    sub_4DE043
test    eax, eax
jz      loc_426B3E      ; jumptable 00427ADF cases 5-8
mov     [edi+0D8h], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 1
mov     dword ptr [eax+0C8h], (offset dword_5F880A+2)
mov     [eax+0E4h], ebp
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8

loc_427B69:             ; jumptable 00427ADF case 2
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     [ebp+56h], ax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3E      ; jumptable 00427ADF cases 5-8
mov     word ptr [edi+98h], 1
mov     byte ptr [edi+9Ah], 10h

loc_427BA8:
mov     byte ptr [edi+9Bh], 0

loc_427BAF:
inc     byte ptr [ebp+0Ah]
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8

loc_427BB7:             ; jumptable 00427ADF case 3
cmp     byte ptr [ebp+0A4h], 9
jnz     short loc_427BD7
lea     edx, [ebp+14h]
mov     eax, 1FDh
call    sub_4D8BC3
mov     eax, [edi+0D8h]
mov     byte ptr [eax+0Ch], 1

loc_427BD7:
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3E      ; jumptable 00427ADF cases 5-8
mov     word ptr [edi+98h], 1
mov     byte ptr [edi+9Ah], 0
jmp     short loc_427BA8

loc_427BF6:             ; jumptable 00427ADF case 4
mov     byte ptr [ebp+9], 1
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8
sub_427AC5 endp

db 8Bh, 0C0h
jpt_427C6C dd offset def_427C6C ; jump table for switch statement
dd offset loc_427C82
dd offset loc_427DAD
dd offset loc_42808A
dd offset loc_428176
dd offset loc_4281CF
dd offset loc_428176
dd offset loc_4281CF
dd offset loc_428176
dd offset loc_4281CF
dd offset def_427C6C
dd offset loc_428176
dd offset loc_4281CF
dd offset loc_428176
dd offset loc_428241
dd offset loc_42828A
dd offset loc_4282AF



sub_427C4D proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 550h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0Ah]
cmp     al, 10h         ; switch 17 cases
ja      short def_427C6C ; jumptable 00427C6C default case, cases 0,10
and     eax, 0FFh
jmp     jpt_427C6C[eax*4] ; switch jump

def_427C6C:             ; jumptable 00427C6C default case, cases 0,10
mov     edi, [esp+1Ch+var_1C]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     loc_428082

loc_427C82:             ; jumptable 00427C6C case 1
mov     ecx, 80h
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
mov     edx, [esp+1Ch+var_1C]
lea     eax, [ebp+14h]
call    sub_4DE552
mov     esi, eax
test    eax, eax
jz      short loc_427CAD
add     [ebp+56h], ax
jmp     loc_426B3B      ; jumptable 00426A1D case 8

loc_427CAD:
call    sub_4DE13B
mov     edx, [esp+1Ch+var_1C]
mov     [edx+0D0h], eax
test    eax, eax
jz      loc_427D67
mov     byte ptr [eax], 5
mov     eax, [edx+0D0h]
mov     byte ptr [eax+2], 1Dh
mov     eax, [edx+0D0h]
mov     byte ptr [eax+0Dh], 80h
mov     eax, [edx+0D0h]
mov     byte ptr [eax+0Eh], 1
mov     eax, [edx+0D0h]
mov     byte ptr [eax+0Fh], 1
mov     eax, [edx+0D0h]
mov     byte ptr [eax+3], 3
mov     eax, [ebp+1E6h]
sar     eax, 10h
mov     edx, [ebp+206h]
sar     edx, 10h
add     eax, edx
sar     eax, 1
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+48h], dx
mov     eax, [ebp+1E8h]
sar     eax, 10h
mov     edx, [ebp+208h]
sar     edx, 10h
add     eax, edx
sar     eax, 1
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+4Ah], dx
mov     eax, [ebp+1EAh]
sar     eax, 10h
mov     edx, [ebp+20Ah]
sar     edx, 10h
add     eax, edx
sar     eax, 1
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+4Ch], dx

loc_427D67:
lea     ecx, [ebp+14h]
mov     edx, ecx
mov     eax, 1FEh
call    sub_4D8BC3
mov     edx, ecx
mov     eax, 1F7h
call    sub_4D8BC3
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 8
mov     byte ptr [eax+9Bh], 0
inc     byte ptr [ebp+0Ah]
mov     word ptr [eax+0CCh], 0
jmp     loc_426B3B      ; jumptable 00426A1D case 8

loc_427DAD:             ; jumptable 00427C6C case 2
mov     eax, [esp+1Ch+var_1C]
inc     word ptr [eax+0CCh]
call    rand_
mov     esi, eax
and     esi, 3Fh
xor     ebx, ebx
jmp     short loc_427DCF

loc_427DC5:
inc     ebx
cmp     ebx, 2
jge     loc_427E49

loc_427DCF:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_427DC5
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+0Dh], 3
mov     byte ptr [eax+0Eh], 1
mov     byte ptr [eax+3], 22h ; '"'
mov     eax, dword ptr ds:unk_564C32[esi*2]
sar     eax, 10h
shl     eax, 8
sar     eax, 0Ch
mov     edi, [ebp+12h]
sar     edi, 10h
add     eax, edi
mov     [edx+48h], ax
call    rand_
xor     ah, ah
and     al, 3Fh
mov     edi, 0FFFFFFFFh
sub     edi, eax
mov     eax, edi
sub     eax, 1Eh
mov     [edx+4Ah], ax
mov     ecx, dword ptr ds:unk_56F78A[esi*2]
sar     ecx, 10h
shl     ecx, 8
sar     ecx, 0Ch
mov     eax, [ebp+16h]
sar     eax, 10h
add     eax, ecx
mov     [edx+4Ch], ax
add     esi, 15h
and     esi, 3Fh
jmp     loc_427DC5

loc_427E49:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+0E0h], 0
jz      short loc_427E85
cmp     word ptr [eax+0CCh], 50h ; 'P'
jnz     short loc_427E85
call    sub_4DE13B
test    eax, eax
jz      short loc_427E85
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 6
mov     byte ptr [eax+0Fh], 3
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd
mov     word ptr [eax+4Ah], 0FFFFh

loc_427E85:
mov     ch, [ebp+0A4h]
cmp     ch, 2Bh ; '+'
jb      loc_427FC6
jnz     short loc_427ED7
lea     edx, [ebp+14h]
mov     eax, 1F8h
call    sub_4D8BC3
call    sub_4DE043
test    eax, eax
jz      short loc_427ED7
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FCh
mov     word ptr [eax+14h], 0FFh
mov     word ptr [eax+16h], 10h
mov     word ptr [eax+18h], 10h
mov     word ptr [eax+1Ah], 500h
mov     byte ptr [eax+0Bh], 1Eh
mov     byte ptr [eax+0Ah], 0

loc_427ED7:
cmp     byte ptr [ebp+0A4h], 30h ; '0'
jnz     short loc_427F06
call    sub_4DE13B
test    eax, eax
jz      short loc_427F06
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 6
mov     byte ptr [eax+0Fh], 3
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd
mov     word ptr [eax+4Ah], 0FFFFh

loc_427F06:
mov     edx, [ebp+1E6h]
sar     edx, 10h
mov     eax, [ebp+206h]
sar     eax, 10h
add     eax, edx
sar     eax, 1
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+48h], dx
mov     edx, [ebp+1E8h]
sar     edx, 10h
mov     eax, [ebp+208h]
sar     eax, 10h
add     eax, edx
sar     eax, 1
sub     eax, 64h ; 'd'
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+4Ah], dx
mov     eax, [ebp+1EAh]
sar     eax, 10h
mov     edx, [ebp+20Ah]
sar     edx, 10h
add     eax, edx
sar     eax, 1
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+4Ch], dx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
add     byte ptr [eax+0Fh], 0Ah
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
cmp     byte ptr [eax+0Fh], 0DCh
jb      short loc_427F98
mov     byte ptr [eax+0Fh], 0DCh

loc_427F98:
test    byte ptr ds:word_77EAB6, 1
jz      short loc_427FC6
call    sub_4DE043
test    eax, eax
jz      short loc_427FC6
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 32h ; '2'
mov     byte ptr [eax+3], 0
mov     esi, [esp+1Ch+var_1C]
mov     esi, [esi+0D0h]
lea     edi, [eax+14h]
lea     esi, [esi+48h]
movsd
movsd

loc_427FC6:
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     [ebp+56h], ax
xor     eax, eax
mov     al, [ebp+0A4h]
movsx   ax, ds:byte_510EF4[eax]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+0CCh], 5Ah ; 'Z'
jle     loc_426B3B      ; jumptable 00426A1D case 8
call    sub_4DE043
test    eax, eax
jz      short loc_42805A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FCh
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 10h
mov     word ptr [eax+18h], 10h
mov     word ptr [eax+1Ah], 3E8h
mov     byte ptr [eax+0Bh], 1Eh
mov     byte ptr [eax+0Ah], 0

loc_42805A:
xor     ebx, ebx
xor     edx, edx
mov     eax, 20Ch
call    sub_4D89E4
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 9

loc_42807B:
mov     byte ptr [eax+9Bh], 0

loc_428082:
inc     byte ptr [ebp+0Ah]
jmp     loc_426B3B      ; jumptable 00426A1D case 8

loc_42808A:             ; jumptable 00427C6C case 3
mov     ch, [ebp+0A4h]
cmp     ch, 8
jnb     loc_42811A
mov     edx, [ebp+1E6h]
sar     edx, 10h
mov     eax, [ebp+206h]
sar     eax, 10h
add     eax, edx
sar     eax, 1
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+48h], dx
mov     eax, [ebp+1E8h]
sar     eax, 10h
mov     edx, [ebp+208h]
sar     edx, 10h
add     eax, edx
sar     eax, 1
sub     eax, 64h ; 'd'
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+4Ah], dx
mov     edx, [ebp+1EAh]
sar     edx, 10h
mov     eax, [ebp+20Ah]
sar     eax, 10h
add     eax, edx
sar     eax, 1
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+4Ch], dx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
sub     byte ptr [eax+0Dh], 10h
jmp     short loc_42812A

loc_42811A:
jnz     short loc_42812A
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
call    sub_4DE3EA

loc_42812A:
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     [ebp+56h], ax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
call    sub_4288D8
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0Ah
jmp     loc_42807B

loc_428176:             ; jumptable 00427C6C cases 4,6,8,11,13
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
sub     eax, 40h ; '@'
add     [ebp+56h], ax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
call    sub_4288D8
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0Ch
mov     byte ptr [eax+9Bh], 0
lea     ecx, [ebp+208h]
jmp     short loc_428228

loc_4281CF:             ; jumptable 00427C6C cases 5,7,9,12
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     eax, 40h ; '@'
add     [ebp+56h], ax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
call    sub_4288D8
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0Bh

loc_42821B:
mov     byte ptr [eax+9Bh], 0
lea     ecx, [ebp+1E8h]

loc_428228:
mov     ebx, 0FA0h
mov     edx, 64h ; 'd'
mov     eax, 1Eh
call    sub_42A70B
jmp     loc_428082

loc_428241:             ; jumptable 00427C6C case 14
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     eax, 40h ; '@'
add     [ebp+56h], ax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0Eh
jmp     short loc_42821B

loc_42828A:             ; jumptable 00427C6C case 15
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0
jmp     loc_42807B

loc_4282AF:             ; jumptable 00427C6C case 16
mov     edx, 0FFFFFFFBh
mov     eax, ebp
call    sub_428875
test    eax, eax
jz      loc_426B3B      ; jumptable 00426A1D case 8
mov     byte ptr [ebp+9], 1
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0
jmp     loc_426B3B      ; jumptable 00426A1D case 8
sub_427C4D endp




sub_4282D4 proc near
mov     byte ptr [eax+8], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
retn
sub_4282D4 endp




sub_4282E5 proc near
push    ebx
push    ecx
push    edx
movsx   edx, word ptr [eax]
mov     eax, [eax+2]
sar     eax, 10h
sub     eax, 400h
cmp     edx, 538h
jge     short loc_428349
cmp     eax, 538h
jge     short loc_428349
cmp     edx, 0FFFFFAC8h
jle     short loc_428349
cmp     eax, 0FFFFFAC8h
jle     short loc_428349
lea     ecx, [edx+8E5h]
cmp     eax, ecx
jge     short loc_428349
mov     ecx, edx
neg     ecx
lea     ebx, [ecx+8E5h]
cmp     eax, ebx
jge     short loc_428349
sub     edx, 8E5h
cmp     eax, edx
jle     short loc_428349
sub     ecx, 8E5h
cmp     eax, ecx
jle     short loc_428349
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_428349:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4282E5 endp




sub_42834F proc near
push    ebx
push    ecx
push    edx
movsx   edx, word ptr [eax]
mov     eax, [eax+2]
sar     eax, 10h
sub     eax, 400h
cmp     edx, 59Ch
jge     short loc_4283B3
cmp     eax, 59Ch
jge     short loc_4283B3
cmp     edx, 0FFFFFA64h
jle     short loc_4283B3
cmp     eax, 0FFFFFA64h
jle     short loc_4283B3
lea     ecx, [edx+973h]
cmp     eax, ecx
jge     short loc_4283B3
mov     ecx, edx
neg     ecx
lea     ebx, [ecx+973h]
cmp     eax, ebx
jge     short loc_4283B3
sub     edx, 973h
cmp     eax, edx
jle     short loc_4283B3
sub     ecx, 973h
cmp     eax, ecx
jle     short loc_4283B3
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4283B3:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_42834F endp




sub_4283B9 proc near
push    edx
movsx   edx, word ptr [eax]
mov     eax, [eax+2]
sar     eax, 10h
sub     eax, 400h
imul    edx, edx
imul    eax, eax
add     edx, eax
cmp     edx, 0C5C10h
jge     short loc_4283DF
mov     eax, 1
pop     edx
retn

loc_4283DF:
xor     eax, eax
pop     edx
retn
sub_4283B9 endp




sub_4283E3 proc near

var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     esi, eax
mov     [esp+24h+var_18], edx
lea     ebp, [eax+550h]
xor     edi, edi

loc_4283F9:
mov     ecx, edi
shl     ecx, 3
mov     edx, offset unk_510F2C
add     edx, ecx
xor     eax, eax
mov     al, ds:byte_510F33[ecx]
mov     [esp+24h+var_1C], eax
shl     eax, 2
sub     eax, [esp+24h+var_1C]
shl     eax, 4
mov     [esp+24h+var_1C], eax
lea     eax, [esi+250h]
add     eax, [esp+24h+var_1C]
mov     ebx, esp
call    sub_4EF2DC
xor     eax, eax
mov     al, ds:byte_510F33[ecx]
shl     eax, 3
lea     edx, [esi+eax]
mov     ax, [edx+190h]
add     [esp+24h+var_24], ax
mov     ax, [edx+192h]
add     [esp+24h+var_22], ax
mov     ax, [edx+194h]
add     [esp+24h+var_20], ax
push    0
push    0
mov     eax, [ebp+0E0h]
shl     eax, 4
mov     edx, [esp+2Ch+var_18]
mov     ebx, ds:dword_510FBC[eax+edx*4]
push    ebx
lea     eax, [ebp+8]
add     eax, ecx
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
xor     edx, edx
mov     dl, ds:byte_510F32[ecx]
mov     ecx, 8000h
xor     ebx, ebx
lea     eax, [esp+38h+var_24]
call    sub_4E01FC
inc     edi
cmp     edi, 8
jl      loc_4283F9
mov     edi, 8

loc_4284AD:
mov     ecx, edi
shl     ecx, 3
mov     eax, offset unk_510F2C
add     eax, ecx
mov     [esp+24h+var_1C], eax
xor     edx, edx
mov     dl, ds:byte_510F33[ecx]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, eax
shl     edx, 4
lea     eax, [esi+250h]
add     eax, edx
mov     ebx, esp
mov     edx, [esp+24h+var_1C]
call    sub_4EF2DC
xor     eax, eax
mov     al, ds:byte_510F33[ecx]
shl     eax, 3
lea     edx, [esi+eax]
mov     ax, [edx+190h]
add     [esp+24h+var_24], ax
mov     ax, [edx+192h]
add     [esp+24h+var_22], ax
mov     ax, [edx+194h]
add     [esp+24h+var_20], ax
push    80h
push    0
mov     eax, [ebp+0E0h]
shl     eax, 4
mov     edx, [esp+2Ch+var_18]
mov     ebx, ds:dword_510FDC[eax+edx*4]
push    ebx
lea     eax, [ebp+8]
add     eax, ecx
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
xor     edx, edx
mov     dl, ds:byte_510F32[ecx]
mov     ecx, 8000h
xor     ebx, ebx
lea     eax, [esp+38h+var_24]
call    sub_4E01FC
inc     edi
cmp     edi, 12h
jl      loc_4284AD
add     esp, 10h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4283E3 endp




sub_428568 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     ecx, [eax+550h]
mov     ax, [eax+6Eh]
mov     [ebx+0B2h], ax
xor     eax, eax
jmp     short loc_42858A

loc_428584:
inc     eax
cmp     eax, 12h
jge     short loc_428598

loc_42858A:
mov     edx, eax
mov     esi, [ecx+edx*8+8]
and     esi, 0FFFFFFh
jz      short loc_428584

loc_428598:
xor     eax, eax

loc_42859A:
mov     edx, eax
mov     dword ptr [ecx+edx*8+8], 0
inc     eax
cmp     eax, 12h
jl      short loc_42859A
mov     eax, [ebx+6Ch]
sar     eax, 10h
cmp     esi, eax
jle     short loc_4285EA
cmp     ds:word_5F83D2, 0
jl      short loc_4285E2
mov     ds:byte_5F88AD, 1
mov     word ptr [ebx+6Eh], 0
mov     word ptr [ecx+98h], 0FFFFh
mov     byte ptr [ebx+9], 7
mov     byte ptr [ebx+0Ah], 0
mov     byte ptr [ebx+0Bh], 0
jmp     short loc_428613

loc_4285E2:
mov     word ptr [ebx+6Eh], 0
jmp     short loc_428613

loc_4285EA:
test    esi, esi
jz      short loc_42860A
lea     edx, [ebx+14h]
mov     eax, 0A0h
call    sub_4D8BC3
sub     [ebx+6Eh], si
mov     word ptr [ebx+15Eh], 7FFFh
jmp     short loc_428613

loc_42860A:
mov     word ptr [ebx+15Eh], 4210h

loc_428613:
mov     eax, [ebx+6Ch]
sar     eax, 10h
mov     edx, [ebx+0B0h]
sar     edx, 10h
cmp     eax, edx
jz      loc_426B3F
mov     esi, [ebx+0AEh]
sar     esi, 10h
sar     esi, 6
mov     edx, esi
shl     edx, 2
sub     edx, esi
add     edx, edx
cmp     eax, edx
jg      short loc_428669
mov     al, [ecx+0DCh]
test    al, 1
jnz     loc_426B3F
mov     ah, al
or      ah, 1
mov     [ecx+0DCh], ah
lea     edx, [ebx+14h]
mov     eax, 204h
jmp     loc_42886B

loc_428669:
mov     edx, esi
shl     edx, 2
sub     edx, esi
shl     edx, 2
cmp     eax, edx
jg      short loc_4286A4
mov     eax, [ecx+0DCh]
shr     eax, 1
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 2
call    rand_
test    al, 1
jz      short loc_428703

loc_428697:
lea     edx, [ebx+14h]

loc_42869A:
mov     eax, 1FAh
jmp     loc_42886B

loc_4286A4:
mov     edx, esi
shl     edx, 4
cmp     eax, edx
jg      short loc_4286D2
mov     eax, [ecx+0DCh]
shr     eax, 2
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 4
lea     edx, [ebx+14h]
mov     eax, 203h
jmp     loc_42886B

loc_4286D2:
mov     edx, esi
shl     edx, 2
add     edx, esi
shl     edx, 2
sub     edx, esi
cmp     eax, edx
jg      short loc_42870B
mov     eax, [ecx+0DCh]
shr     eax, 3
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 8

loc_4286FA:
call    rand_
test    al, 1
jnz     short loc_428697

loc_428703:
lea     edx, [ebx+14h]
jmp     loc_42879A

loc_42870B:
mov     edx, esi
shl     edx, 2
sub     edx, esi
shl     edx, 3
add     edx, esi
cmp     eax, edx
jg      short loc_428735
mov     eax, [ecx+0DCh]
shr     eax, 4
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 10h
jmp     short loc_4286FA

loc_428735:
mov     edi, esi
shl     edi, 5
lea     edx, [ebx+14h]
cmp     eax, edi
jg      short loc_428763
mov     eax, [ecx+0DCh]
shr     eax, 5
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 20h
mov     eax, 202h
jmp     loc_42886B

loc_428763:
mov     ebx, esi
shl     ebx, 2
add     ebx, esi
shl     ebx, 2
sub     ebx, esi
add     ebx, ebx
cmp     eax, ebx
jg      short loc_4287A4
mov     eax, [ecx+0DCh]
shr     eax, 6
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 40h

loc_42878D:
call    rand_
test    al, 1
jnz     loc_42869A

loc_42879A:
mov     eax, 1FBh
jmp     loc_42886B

loc_4287A4:
mov     ebx, esi
shl     ebx, 2
sub     ebx, esi
shl     ebx, 2
sub     ebx, esi
shl     ebx, 2
cmp     eax, ebx
jg      short loc_4287D1
mov     eax, [ecx+0DCh]
shr     eax, 7
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 80h
jmp     short loc_42878D

loc_4287D1:
mov     ebx, esi
shl     ebx, 2
sub     ebx, esi
shl     ebx, 4
cmp     eax, ebx
jg      short loc_4287FE
mov     eax, [ecx+0DCh]
shr     eax, 8
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DDh], 1
mov     eax, 201h
jmp     short loc_42886B

loc_4287FE:
mov     ebx, esi
shl     ebx, 2
sub     ebx, esi
mov     edi, ebx
shl     ebx, 4
add     ebx, edi
cmp     eax, ebx
jg      short loc_42882D
mov     eax, [ecx+0DCh]
shr     eax, 9
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DDh], 2
jmp     loc_42878D

loc_42882D:
mov     ebx, esi
shl     ebx, 3
sub     ebx, esi
shl     ebx, 3
add     ebx, esi
cmp     eax, ebx
jg      loc_426B3F
mov     eax, [ecx+0DCh]
shr     eax, 0Ah
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DDh], 4
call    rand_
test    al, 1
jnz     loc_42869A
mov     eax, 1FBh

loc_42886B:
call    sub_4D8BC3
jmp     loc_426B3F
sub_428568 endp




sub_428875 proc near
push    ecx
mov     ecx, edx
xor     edx, edx
add     [eax+16h], cx
mov     ecx, [eax+14h]
sar     ecx, 10h
cmp     ecx, 0FFFFFFCDh
jg      short loc_428894
mov     word ptr [eax+16h], 0FFCDh

loc_42888F:
mov     edx, 1

loc_428894:
mov     ecx, [eax+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+1Ch], ecx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
mov     ecx, [eax+16h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+24h], ecx
mov     eax, edx
pop     ecx
retn
sub_428875 endp

push    ecx
mov     ecx, edx
xor     edx, edx
add     [eax+16h], cx
mov     ecx, [eax+14h]
sar     ecx, 10h
cmp     ecx, 0FFFFFFFFh
jl      short loc_428894
mov     word ptr [eax+16h], 0FFFFh
jmp     short loc_42888F



sub_4288D8 proc near
push    esi
push    edi
call    sub_4DE043
test    eax, eax
jz      short loc_4288FE
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 32h ; '2'
mov     byte ptr [eax+3], 1
lea     edi, [eax+14h]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
sub     word ptr [eax+16h], 3E8h

loc_4288FE:
pop     edi
pop     esi
retn
sub_4288D8 endp




sub_428901 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
call    sub_4DDFD0
mov     ebp, eax
test    eax, eax
jz      loc_426B3E      ; jumptable 00427ADF cases 5-8
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 16h
mov     byte ptr [eax+4], 0
mov     ah, [eax+6]
or      ah, 20h
mov     [ebp+6], ah
mov     word ptr [ebp+14h], 0
mov     word ptr [ebp+16h], 0FFCDh
mov     word ptr [ebp+18h], 400h
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
mov     word ptr [ebp+58h], 0
mov     ax, [ebp+58h]
mov     [ebp+56h], ax
mov     [ebp+54h], ax
mov     word ptr [ebp+48h], 0
mov     ax, [ebp+48h]
mov     [ebp+46h], ax
mov     [ebp+44h], ax
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
call    sub_436868
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 8
mov     [ebp+6Eh], ax
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
push    offset unk_806468
mov     ecx, 81h
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_436785
call    sub_436708
mov     eax, ebp
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8
sub_428901 endp




sub_4289EC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_428A02
cmp     al, 1
jz      short loc_428A5D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_428A02:
or      byte ptr [esi], 2
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+44h], 0
mov     dword ptr [esi+48h], 0
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
mov     dword ptr [esi+78h], 0
xor     ebx, ebx
mov     edx, 14h
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+0Eh], 0
mov     byte ptr [esi+0Fh], 0
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_428A5D:
cmp     word ptr [esi+44h], 0
jz      short loc_428A75
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B

loc_428A75:
cmp     byte ptr [esi+0Ch], 0
jnz     short loc_428A87
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_428A87:
mov     edx, [esi+0Ah]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ch], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4289EC endp




sub_428A9F proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_428AA5[edx*4]
pop     edx
retn
sub_428A9F endp




sub_428AAE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+158h], 200h
mov     word ptr [ecx+15Ah], 200h
mov     word ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 800h
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+50h]
mov     [ecx+4Eh], ax
mov     [ecx+4Ch], ax
mov     eax, ecx
call    sub_42C592
mov     [ecx+20h], eax
sar     eax, 10h
mov     [ecx+16h], ax
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
call    sub_436708
mov     dword ptr [ecx+78h], offset unk_511008
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+0B0h], ax
mov     [ecx+6Eh], ax
mov     word ptr [ecx+0B2h], 0
mov     byte ptr [ecx+74h], 0
mov     dword ptr [ebx], 0
mov     word ptr [ebx+90h], 0
mov     word ptr [ebx+92h], 0
xor     eax, eax

loc_428B88:
mov     edx, eax
mov     dword ptr [ebx+edx*8+3Ch], 0
mov     dword ptr [ebx+edx*8+40h], 0
mov     dword ptr [ebx+edx*4+6Ch], 0
inc     eax
cmp     eax, 6
jb      short loc_428B88
mov     word ptr [ebx+88h], 72h ; 'r'
mov     word ptr [ebx+8Ah], 0
mov     word ptr [ebx+4], 0FF00h
mov     word ptr [ebx+8], 0E900h
mov     word ptr [ebx+6], 0FFFFh
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_428AAE endp




sub_428BEB proc near
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
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
mov     al, [ebp+74h]
mov     [ebp+75h], al
mov     word ptr [ebp+15Eh], 4210h
mov     eax, ebp
call    sub_428CD7
mov     word ptr [ecx+8Ch], 0
xor     eax, eax
jmp     short loc_428C48

loc_428C42:
inc     eax
cmp     eax, 6
jnb     short loc_428C60

loc_428C48:
mov     ebx, [ebp+80h]
cmp     ebx, ds:dword_511030[eax*4]
jb      short loc_428C42
inc     word ptr [ecx+8Ch]
jmp     short loc_428C42

loc_428C60:
lea     edx, [ecx+4]
lea     eax, [ebp+14h]
call    sub_4DD685
mov     [ecx+84h], eax
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_428C78[edx*4]
cmp     byte ptr [ebp+8], 2
jz      short loc_428CD0
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_428CA2
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_428CA9

loc_428CA2:
mov     eax, ebp
call    sub_4DEADD

loc_428CA9:
mov     eax, ebp
call    sub_428ED6
mov     eax, ebp
call    sub_428E05
test    byte ptr [ebp+0], 2
jz      short loc_428CD0
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 138h
mov     eax, ebp
call    sub_4ED88B

loc_428CD0:
pop     ebp

loc_428CD1:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_428BEB endp




sub_428CD7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     word ptr [esi+8Eh], 0
test    byte ptr ds:word_77EAB6, 3
jnz     short loc_428D0B
mov     dx, [ecx+0B2h]
test    dx, dx
jz      short loc_428D0B
mov     ebx, edx
dec     ebx
mov     [ecx+0B2h], bx

loc_428D0B:
xor     ebx, ebx
mov     eax, 1

loc_428D12:
mov     edx, eax
mov     edx, [esi+edx*8+3Ch]
and     edx, 0FFFFFFh
or      ebx, edx
inc     eax
cmp     eax, 5
jle     short loc_428D12
lea     edx, [ecx+14h]
test    ebx, ebx
jz      short loc_428D3C

loc_428D2D:
mov     eax, 0A3h
call    sub_4D8BC3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_428D3C:
mov     ebx, [esi+3Ch]
and     ebx, 0FFFFFFh
jz      loc_428E00
cmp     word ptr [esi+90h], 0
jnz     short loc_428D2D
sub     [ecx+6Eh], bx
add     [ecx+0B2h], bx
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [ecx+15Eh], 7FFFh
cmp     word ptr [ecx+6Eh], 0
jg      short loc_428D8E
mov     word ptr [ecx+6Eh], 0
mov     word ptr [esi+8Eh], 0FFFFh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_428D8E:
cmp     word ptr [esi+92h], 0
jnz     short loc_428DD4
mov     edx, [ecx+0AEh]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     edx, [ecx+6Ch]
sar     edx, 10h
cmp     edx, eax
jg      short loc_428DD4
mov     edx, 0Fh
xor     eax, eax
call    sub_4A0E24
mov     word ptr [esi+92h], 1

loc_428DD4:
xor     edx, edx
mov     dl, [ecx+2]
mov     eax, ds:dword_55A108
mov     eax, [eax+edx*4]
mov     al, [eax+9]
xor     ah, ah
shl     eax, 4
mov     edx, [ecx+0B0h]
sar     edx, 10h
cwde
cmp     edx, eax
jl      short loc_428E00
mov     word ptr [esi+8Eh], 1

loc_428E00:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_428CD7 endp




sub_428E05 proc near

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
add     eax, 640h
mov     [esp+20h+var_1C], eax
cmp     dword ptr [eax+80h], 0
jnz     short loc_428E2C
mov     ds:word_511058, 48h ; 'H'
jmp     short loc_428E35

loc_428E2C:
mov     ds:word_511058, 0C0h

loc_428E35:
xor     ebp, ebp
jmp     short loc_428E43

loc_428E39:
inc     ebp
cmp     ebp, 6
jnb     loc_428ECE

loc_428E43:
mov     edx, ebp
shl     edx, 3
mov     esi, [esp+20h+var_1C]
mov     dword ptr [edx+esi+3Ch], 0
mov     eax, ss:dword_511045[ebp]
sar     eax, 18h
shl     eax, 3
add     eax, [esp+20h+var_20]
lea     edi, [edx+esi+0Ch]
lea     esi, [eax+190h]
movsd
movsd
mov     eax, [esp+20h+var_1C]
add     eax, 0Ch
mov     esi, [esp+20h+var_1C]
add     esi, 3Ch ; '<'
lea     ecx, [ebp+ebp+0]
mov     ebx, ebp
shl     ebx, 2
add     eax, edx
add     esi, edx
mov     edx, [esp+20h+var_1C]
add     edx, ebx
test    ebp, ebp
jnz     short loc_428EC5
push    ebp
push    ebp

loc_428E96:
mov     edx, [edx+6Ch]
or      edx, 4080000h
push    edx
push    esi
xor     edx, edx
mov     ebx, [esp+30h+var_20]
mov     dl, [ebx+1]
push    edx
mov     edx, ds:dword_51104C[ecx]
sar     edx, 10h
mov     ecx, 8000h
xor     ebx, ebx
call    sub_4E01FC
jmp     loc_428E39

loc_428EC5:
push    80h
push    0
jmp     short loc_428E96

loc_428ECE:
add     esp, 8
jmp     loc_428CD0
sub_428E05 endp




sub_428ED6 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+640h]
mov     dword ptr [ecx], 0
call    sub_42DE56
test    ah, 0Fh
jz      short loc_428EF6
or      byte ptr [ecx], 1

loc_428EF6:
cmp     byte ptr [edx+74h], 0
jnz     loc_428CD1
mov     eax, edx
call    sub_42C592
mov     esi, eax
mov     ebx, [edx+2Ch]
sar     ebx, 10h
cmp     eax, ebx
jz      short loc_428F30
cmp     byte ptr [edx+75h], 0
jnz     short loc_428F3A
lea     edi, [edx+14h]
lea     esi, [edx+2Ch]
movsd
movsd
lea     edi, [edx+1Ch]
lea     esi, [edx+34h]
movsd
movsd
movsd
movsd
or      byte ptr [ecx], 4
jmp     short loc_428F3A

loc_428F30:
mov     [edx+16h], bx
shl     eax, 10h
mov     [edx+38h], eax

loc_428F3A:
or      byte ptr [ecx], 2
jmp     loc_428CD1
sub_428ED6 endp




sub_428F42 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
call    sub_42952D
test    eax, eax
jnz     loc_428CD1
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 10h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     dword ptr [edi+84h], 600h
jb      short loc_428F9A
mov     eax, esi
call    sub_4294E9
jmp     loc_428CD1

loc_428F9A:
mov     bx, [edi+8Ah]
test    bx, bx
jnz     short loc_428FBE
cmp     dword ptr [esi+80h], 15F90h
ja      short loc_428FC8
mov     eax, esi
call    sub_4294C9
jmp     loc_428CD1

loc_428FBE:
mov     ecx, ebx
dec     ecx
mov     [edi+8Ah], cx

loc_428FC8:
mov     ax, [edi+88h]
test    ax, ax
jnz     short loc_428FF2
cmp     word ptr [esi+6Eh], 0
jz      short loc_428FE7
mov     eax, esi
call    sub_429494
jmp     loc_428CD1

loc_428FE7:
mov     word ptr [edi+88h], 72h ; 'r'
jmp     short loc_428FFC

loc_428FF2:
mov     edx, eax
dec     edx
mov     [edi+88h], dx

loc_428FFC:
xor     eax, eax
cmp     byte ptr [esi+0A4h], 0Ch
jnz     short loc_42900C
mov     eax, 1

loc_42900C:
cmp     byte ptr [esi+0A4h], 2Ah ; '*'
jz      short loc_429019
test    eax, eax
jz      short loc_42903E

loc_429019:
lea     edi, [esi+14h]
mov     ecx, edi
mov     ebx, 0FA0h
mov     edx, 64h ; 'd'
mov     eax, 1Eh
call    sub_42A70B
mov     edx, edi
mov     eax, 198h
call    sub_4D8BC3

loc_42903E:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
jmp     loc_428CD1
sub_428F42 endp




sub_42905C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+640h]
mov     ebp, offset byte_5F8364
cmp     byte ptr [eax+0A7h], 0
jz      short loc_429084
mov     eax, esi
call    sub_42922C
jmp     loc_428CD0

loc_429084:
cmp     byte ptr [esi+0A4h], 12h
jnz     short loc_429093
mov     word ptr [esi+44h], 400h

loc_429093:
cmp     byte ptr [esi+0A4h], 15h
jnz     short loc_4290FB
lea     edx, [esi+14h]
mov     eax, 19Ch
call    sub_4D8BC3
mov     ax, [edi+8Ch]
inc     eax
imul    eax, 140h
mov     [esi+44h], ax
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Ah]
and     eax, 0FFh
or      eax, 1000000h
mov     [edi+6Ch], eax
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
and     eax, 0FFh
or      eax, 1000000h
mov     [edi+70h], eax

loc_4290FB:
cmp     byte ptr [esi+0A4h], 20h ; ' '
jnz     short loc_429127
lea     ecx, [esi+14h]
mov     edx, ecx
mov     eax, 19Dh
call    sub_4D8BC3
mov     ebx, 1388h
mov     edx, 64h ; 'd'
mov     eax, 1Eh
call    sub_42A70B

loc_429127:
xor     ecx, ecx
xor     eax, eax

loc_42912B:
mov     edx, eax
mov     edx, [edi+edx*8+3Ch]
and     edx, 2000000h
or      ecx, edx
inc     eax
cmp     eax, 6
jl      short loc_42912B
cmp     byte ptr [esi+0A4h], 28h ; '('
jz      short loc_42914C
test    ecx, ecx
jz      short loc_429160

loc_42914C:
mov     word ptr [esi+44h], 0
mov     dword ptr [edi+6Ch], 0
mov     dword ptr [edi+70h], 0

loc_429160:
cmp     word ptr [esi+44h], 0
jz      loc_428CD0
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [esi+14h]
mov     ecx, 30h ; '0'
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
jmp     loc_428CD0
sub_42905C endp




sub_4291AA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
call    sub_42952D
test    eax, eax
jnz     short loc_42921F
mov     ax, [ecx+56h]
add     eax, 8
and     ah, 0Fh
mov     [ecx+56h], ax
cmp     byte ptr [ecx+0A4h], 0Dh
jnz     short loc_429205
lea     edx, [ecx+14h]
mov     eax, 199h
call    sub_4D8BC3
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Bh]
and     eax, 0FFh
or      eax, 1000000h
mov     [ebx+80h], eax

loc_429205:
cmp     byte ptr [ecx+0A7h], 0
jz      short loc_42921F
mov     dword ptr [ebx+80h], 0
mov     eax, ecx
call    sub_42922C

loc_42921F:
pop     edx
pop     ecx
pop     ebx

locret_429222:
retn
sub_4291AA endp




sub_429223 proc near
cmp     byte ptr [eax+0A7h], 0
jz      short locret_429222
sub_429223 endp




sub_42922C proc near
push    edx
lea     edx, [eax+640h]
mov     byte ptr [eax+0ACh], 1
mov     word ptr [eax+44h], 68h ; 'h'
mov     word ptr [eax+46h], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [edx+88h], 72h ; 'r'
mov     word ptr [edx+90h], 0
mov     byte ptr [eax+9], 1

loc_429262:
mov     byte ptr [eax+0Ah], 0
pop     edx
retn
sub_42922C endp




sub_429268 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr [eax+0A7h], 0
jz      short loc_4292BC
call    sub_4DE13B
test    eax, eax
jz      short loc_429297
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd
mov     byte ptr [eax+0Dh], 2

loc_429297:
lea     edx, [ecx+14h]
mov     eax, ecx
call    sub_4AF9F8
call    sub_436710
mov     eax, ecx
call    sub_4367FD
and     byte ptr [ecx], 0FDh
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0

loc_4292BC:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_429268 endp




sub_4292C1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4292C7[edx*4]
pop     edx
retn
sub_4292C1 endp




sub_4292D0 proc near
push    ecx
push    edx
mov     ecx, eax
call    sub_42959B
cmp     byte ptr [ecx+0A7h], 0
jz      short loc_42930F
mov     byte ptr [ecx+0ACh], 7
mov     word ptr [ecx+44h], 300h
mov     word ptr [ecx+46h], 0FB80h
mov     word ptr [ecx+4Eh], 48h ; 'H'
mov     byte ptr [ecx+74h], 1
lea     edx, [ecx+14h]
mov     eax, 19Ah
call    sub_4D8BC3
inc     byte ptr [ecx+0Ah]

loc_42930F:
pop     edx
pop     ecx
retn
sub_4292D0 endp




sub_429312 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
call    sub_42959B
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     dx, [esi+4Eh]
add     [esi+46h], dx
cmp     byte ptr [esi+0A7h], 0
jz      short loc_429351
mov     byte ptr [esi+0ACh], 8
inc     byte ptr [esi+0Ah]

loc_429351:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_429312 endp




sub_429356 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+640h]
call    sub_42959B
cmp     byte ptr [ebp+74h], 0
jnz     short loc_4293D9
mov     byte ptr [ebp+0ACh], 9
mov     dword ptr [ecx+94h], 0
mov     word ptr [ecx+88h], 0
mov     word ptr [ecx+8Ah], 3
lea     edx, [ebp+14h]
mov     eax, 19Bh
call    sub_4D8BC3
call    sub_4DE13B
test    eax, eax
jz      short loc_4293D1
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 6
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 1
mov     [ecx+94h], eax

loc_4293D1:
inc     byte ptr [ebp+0Ah]
jmp     loc_428CD0

loc_4293D9:
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
mov     eax, ebp
call    sub_4DD43B
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax
jmp     loc_428CD0
sub_429356 endp




sub_4293FF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+640h]
mov     dx, [esi+88h]
test    dx, dx
jnz     short loc_429462
mov     cx, [esi+8Ah]
test    cx, cx
jz      short loc_42944F
mov     eax, ecx
dec     eax
mov     [esi+8Ah], ax
lea     ecx, [edi+14h]
xor     ebx, ebx
mov     bx, ax
mov     ebx, ds:(off_511066+2)[ebx*2]
sar     ebx, 10h
mov     edx, 64h ; 'd'
mov     eax, 1Eh
call    sub_42A70B

loc_42944F:
xor     ebx, ebx
mov     bx, [esi+8Ah]
mov     bx, ds:word_511070[ebx*2]
jmp     short loc_429465

loc_429462:
mov     ebx, edx
dec     ebx

loc_429465:
mov     [esi+88h], bx
mov     ebx, [esi+94h]
cmp     byte ptr [ebx], 0
jnz     loc_428CD1
cmp     byte ptr [edi+0A7h], 0
jz      loc_428CD1
mov     eax, edi
call    sub_42922C
jmp     loc_428CD1
sub_4293FF endp




sub_429494 proc near
push    edx
mov     byte ptr [eax+0ACh], 2
mov     word ptr [eax+48h], 0
mov     dx, [eax+48h]
mov     [eax+46h], dx
mov     [eax+44h], dx
mov     word ptr [eax+50h], 0
mov     dx, [eax+50h]
mov     [eax+4Eh], dx
mov     [eax+4Ch], dx
mov     byte ptr [eax+9], 2
jmp     loc_429262
sub_429494 endp




sub_4294C9 proc near
push    edx
lea     edx, [eax+640h]
mov     byte ptr [eax+0ACh], 3
mov     word ptr [edx+8Ah], 39h ; '9'
mov     byte ptr [eax+9], 3
jmp     loc_429262
sub_4294C9 endp




sub_4294E9 proc near
push    edx
lea     edx, [eax+640h]
mov     byte ptr [eax+0ACh], 6
mov     word ptr [edx+90h], 1
mov     word ptr [eax+48h], 0
mov     dx, [eax+48h]
mov     [eax+46h], dx
mov     [eax+44h], dx
mov     word ptr [eax+50h], 0
mov     dx, [eax+50h]
mov     [eax+4Eh], dx
mov     [eax+4Ch], dx
mov     byte ptr [eax+9], 6
jmp     loc_429262
sub_4294E9 endp




sub_42952D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
cmp     word ptr [ebx+8Eh], 0
jnz     short loc_429548
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn

loc_429548:
mov     word ptr [eax+0B2h], 0
xor     eax, eax

loc_429553:
mov     edx, eax
mov     dword ptr [ebx+edx*4+6Ch], 0
inc     eax
cmp     eax, 6
jb      short loc_429553
mov     word ptr [ebx+90h], 1
cmp     word ptr [ebx+8Eh], 0
jle     short loc_429583
mov     byte ptr [ecx+0ACh], 5
mov     byte ptr [ecx+9], 4
jmp     short loc_42958E

loc_429583:
mov     byte ptr [ecx+0ACh], 4
mov     byte ptr [ecx+9], 5

loc_42958E:
mov     byte ptr [ecx+0Ah], 0
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn
sub_42952D endp




sub_42959B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ebx, [eax+54h]
sar     ebx, 10h
lea     edx, [eax+644h]
add     eax, 14h
mov     ecx, 80h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_42959B endp




sub_4295CA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_4295EF
cmp     ds:byte_77EAB8, 0
jnz     short loc_429617
mov     eax, 10h
call    sub_4D9040
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4295EF:
cmp     ds:byte_77EAB8, 0
jnz     short loc_429617
mov     eax, 50h ; 'P'
call    sub_47E8B8
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000027h
call    sub_4D89E4
mov     eax, ecx
call    sub_4DE336

loc_429617:
pop     edx
pop     ecx
pop     ebx
retn
sub_4295CA endp




sub_42961B proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
mov     [esp+28h+var_14], edx
mov     [esp+28h+var_10], ebx
mov     [esp+28h+var_18], ecx
mov     edi, offset dword_5592CC
mov     esi, eax
movsd
movsd
movsd
movsd
mov     ds:dword_5592E0, edx
mov     ds:dword_5592E4, ebx
mov     ds:dword_5593E4, ecx
mov     eax, [esp+28h+var_18]
neg     eax
and     ah, 0Fh
mov     word ptr ds:dword_77EA06+2, ax
mov     eax, [esp+28h+var_10]
and     ah, 0Fh
mov     ds:word_77EA0A, ax
xor     edx, edx
mov     ds:word_77EA0C, dx
mov     edx, offset unk_564A6C
mov     eax, (offset dword_77EA06+2)
call    sub_4EF638
mov     edx, offset unk_564A9C
mov     eax, offset unk_564A6C
call    sub_4EF70C
mov     cl, ds:byte_77EABF
mov     edx, [esp+28h+var_14]
shl     edx, cl
mov     eax, ebx
call    sub_4EF008
mov     ecx, eax
imul    ecx, edx
sar     ecx, 0Ch
mov     eax, [esp+28h+var_18]
call    sub_4EF003
mov     esi, eax
imul    esi, ecx
sar     esi, 0Ch
mov     ebx, [ebp+0]
neg     ebx
mov     cl, ds:byte_77EABF
shl     ebx, cl
add     ebx, esi
mov     [esp+28h+var_28], ebx
mov     ebx, [ebp+4]
neg     ebx
shl     ebx, cl
mov     eax, [esp+28h+var_18]
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
lea     ecx, [ebx+eax]
mov     [esp+28h+var_24], ecx
mov     eax, [esp+28h+var_10]
call    sub_4EF003
imul    edx, eax
sar     edx, 0Ch
mov     eax, [esp+28h+var_18]
call    sub_4EF003
imul    edx, eax
sar     edx, 0Ch
mov     eax, [ebp+8]
neg     eax
mov     cl, ds:byte_77EABF
shl     eax, cl
add     eax, edx
mov     [esp+28h+var_20], eax
mov     ebx, offset unk_564AC0
mov     edx, esp
mov     eax, offset unk_564A9C
call    sub_4EF371
mov     ecx, 0Ch
mov     edi, offset unk_564CB4
mov     esi, offset unk_564A9C
rep movsd
mov     eax, [esp+28h+var_10]
call    sub_4EF008
mov     edx, [esp+28h+var_14]
imul    edx, eax
sar     edx, 0Ch
mov     eax, [esp+28h+var_18]
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
mov     ecx, [ebp+0]
sub     eax, ecx
mov     [esp+28h+var_28], eax
mov     eax, [esp+28h+var_18]
call    sub_4EF008
mov     ebx, [esp+28h+var_14]
imul    eax, ebx
sar     eax, 0Ch
mov     esi, [ebp+4]
sub     eax, esi
mov     [esp+28h+var_24], eax
mov     eax, [esp+28h+var_10]
call    sub_4EF003
mov     edx, eax
imul    edx, ebx
sar     edx, 0Ch
mov     eax, [esp+28h+var_18]
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
mov     edx, [ebp+8]
sub     eax, edx
mov     [esp+28h+var_20], eax
mov     edi, offset dword_77E9F8
mov     esi, offset dword_77E9E8
movsd
movsd
movsd
movsd
mov     eax, [esp+28h+var_28]
mov     word ptr ds:dword_56F182+2, ax
mov     ebx, eax
neg     ebx
mov     word ptr ds:dword_56F182+2, bx
mov     eax, ds:dword_56F182
sar     eax, 10h
mov     ds:dword_77E9E8, eax
mov     eax, [esp+28h+var_24]
mov     word ptr ds:dword_56F186, ax
mov     ecx, eax
neg     ecx
mov     word ptr ds:dword_56F186, cx
mov     eax, ds:dword_56F182+2
sar     eax, 10h
mov     ds:dword_77E9EC, eax
mov     eax, [esp+28h+var_20]
mov     word ptr ds:dword_56F186+2, ax
mov     esi, eax
neg     esi
mov     word ptr ds:dword_56F186+2, si
mov     eax, ds:dword_56F186
sar     eax, 10h
mov     ds:dword_77E9F0, eax
mov     ebx, esp
mov     edx, esp
mov     eax, offset unk_564A9C
call    sub_4EF371
mov     eax, [esp+28h+var_28]
mov     ds:dword_56F174, eax
mov     eax, [esp+28h+var_24]
mov     ds:dword_56F178, eax
mov     eax, [esp+28h+var_20]
mov     ds:dword_56F17C, eax
add     esp, 1Ch
pop     ebp
pop     edi
pop     esi
retn
sub_42961B endp




sub_42984E proc near
push    esi
push    edi
mov     edi, offset dword_77E998
mov     esi, eax
movsd
movsd
movsd
movsd
call    sub_42961B
pop     edi
pop     esi
retn
sub_42984E endp




sub_429863 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     ecx, edx
mov     edi, offset dword_77E998
mov     esi, eax
movsd
movsd
movsd
movsd
mov     eax, [eax+8]
sub     eax, [edx+8]
imul    eax, eax
mov     edx, [ebp+0]
sub     edx, [ecx]
imul    edx, edx
add     edx, eax
mov     eax, edx
call    sub_4EF075
mov     ebx, eax
mov     esi, eax
test    eax, eax
jz      short loc_4298A5
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
lea     esi, [eax+ebx]
sar     esi, 1

loc_4298A5:
mov     ebx, [ecx+8]
sub     ebx, [ebp+8]
mov     edx, [ecx]
mov     eax, [ebp+0]
sub     edx, eax
mov     eax, edx
mov     edx, ebx
call    sub_4EF04B
lea     ebx, [eax+800h]
mov     eax, [ecx+4]
sub     eax, [ebp+4]
mov     edx, esi
call    sub_4EF04B
mov     ecx, eax
neg     ecx
mov     edx, esi
mov     eax, ebp
call    sub_42961B
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_429863 endp




sub_4298E1 proc near
push    esi
push    edi
mov     edi, offset dword_77E998
mov     esi, eax
movsd
movsd
movsd
movsd
call    sub_429863
pop     edi
pop     esi
retn
sub_4298E1 endp




sub_4298F6 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax        ; int
neg     ebx
and     bh, 0Fh
mov     word ptr ds:dword_77EA06+2, bx
and     dh, 0Fh
mov     ds:word_77EA0A, dx
xor     edx, edx
mov     ds:word_77EA0C, dx
mov     edx, offset unk_564A6C
mov     eax, (offset dword_77EA06+2)
call    sub_4EF638
mov     edx, offset unk_564A9C
mov     eax, offset unk_564A6C
call    sub_4EF70C
mov     eax, [ecx]
mov     [esp+1Ch+var_1C], eax
mov     edx, eax
neg     edx
mov     [esp+1Ch+var_1C], edx
mov     eax, [ecx+4]
mov     [esp+1Ch+var_18], eax
mov     ebx, eax
neg     ebx
mov     [esp+1Ch+var_18], ebx
mov     eax, [ecx+8]
mov     [esp+1Ch+var_14], eax
mov     esi, eax
neg     esi
mov     [esp+1Ch+var_14], esi
mov     ebx, offset unk_564AC0
mov     edx, esp
mov     eax, offset unk_564A9C
call    sub_4EF371
mov     eax, [esp+1Ch+var_1C]
mov     word ptr ds:dword_56F182+2, ax
mov     ebx, eax
neg     ebx
mov     word ptr ds:dword_56F182+2, bx
mov     eax, ds:dword_56F182
sar     eax, 10h
mov     ds:dword_77E9E8, eax
mov     eax, [esp+1Ch+var_18]
mov     word ptr ds:dword_56F186, ax
mov     ecx, eax
neg     ecx
mov     word ptr ds:dword_56F186, cx
mov     eax, ds:dword_56F182+2
sar     eax, 10h
mov     ds:dword_77E9EC, eax
mov     eax, [esp+1Ch+var_14]
mov     word ptr ds:dword_56F186+2, ax
mov     esi, eax
neg     esi
mov     word ptr ds:dword_56F186+2, si
mov     eax, ds:dword_56F186
sar     eax, 10h
mov     ds:dword_77E9F0, eax
mov     ecx, 0Ch
mov     edi, offset unk_564CB4
mov     esi, offset unk_564A9C
rep movsd
add     esp, 10h
pop     edi
pop     esi
pop     ecx
retn
sub_4298F6 endp




sub_4299F3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, offset byte_77E950
lea     edx, [ecx+0F0h]
mov     eax, ecx
call    sub_4EECF9
mov     ds:byte_77E950, 1
xor     dl, dl
mov     ds:byte_77E951, dl
mov     ds:byte_77E952, dl
mov     ds:byte_77E953, dl
xor     edx, edx
mov     ds:dword_77E954, edx
mov     ds:dword_77E958, edx
mov     ds:dword_77E968, edx
xor     edi, edi
mov     ds:dword_77E970, edx
mov     ds:dword_77E96C, edx
mov     eax, 200h
mov     ds:dword_77E98C, eax
mov     ds:dword_77E974, eax
mov     ds:dword_77E95C, eax
mov     ds:dword_77E990, edx
mov     ds:dword_77E978, edx
mov     ds:dword_77E960, edx
mov     eax, 30h ; '0'
mov     ds:dword_77E994, eax
mov     edx, eax
mov     ds:dword_77E97C, eax
mov     ebx, eax
mov     ds:dword_77E964, eax
mov     ds:dword_77E9AC, 96h
mov     ds:dword_77EA40, edi
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     ds:dword_77E9D8, eax
mov     ds:dword_77E9B8, eax
mov     ds:dword_77E998, eax
mov     ds:dword_77E9E8, eax
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
mov     ds:dword_77E9DC, eax
mov     ds:dword_77E9BC, eax
mov     ds:dword_77E99C, eax
mov     ds:dword_77E9EC, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     ds:dword_77E9E0, eax
mov     ds:dword_77E9C0, eax
mov     ds:dword_77E9A0, eax
mov     ds:dword_77E9F0, eax
xor     bh, dh
mov     byte ptr ds:dword_77E954+1, bh
xor     al, al
mov     byte ptr ds:dword_77E954+2, al
xor     ah, ah
mov     byte ptr ds:dword_77E954+3, ah
mov     byte ptr ds:dword_77E954, 1
mov     byte ptr ds:dword_77E958+2, 0FFh
mov     ds:dword_5593E8, edi
xor     eax, eax
mov     ds:dword_5592DC, eax
mov     ds:dword_5593DC, eax
mov     ds:dword_5593E0, eax
mov     ds:dword_5592D4, eax
mov     ds:dword_5592D0, eax
mov     ds:dword_5592CC, eax
mov     ds:dword_5593E4, eax
mov     ds:dword_5592E4, eax
mov     ds:dword_5592E0, eax
mov     ds:dword_5593EC, eax
mov     ds:dword_511078, eax

loc_429B4E:
xor     ebp, ebp
mov     ds:dword_55928C[eax*4], ebp
inc     eax
cmp     eax, 10h
jl      short loc_429B4E
mov     ds:dword_5593F0, ebp
mov     edx, 200h
mov     ds:dword_51107C, edx
mov     ds:dword_511080, 30h ; '0'
mov     ds:dword_511084, edx
mov     ds:dword_511088, 300h
mov     ds:dword_51108C, 0Ah
mov     ds:dword_511090, 14h
mov     ds:dword_511094, 3
mov     ds:dword_511098, 3Ch ; '<'
mov     esi, 1
mov     ds:dword_51109C, esi
mov     ds:dword_5110A0, esi
mov     ds:dword_5110A4, 4B0h
mov     edx, [ecx+14h]
mov     ebx, [ecx+10h]
mov     esi, [ecx+0Ch]
lea     eax, [ecx+48h]
mov     ecx, edx
mov     edx, esi
call    sub_42961B
mov     eax, offset unk_5110A8
call    sub_42A7B1
call    sub_42A63E

loc_429BEF:
pop     ebp

def_42A80E:             ; jumptable 0042A80E default case, case 0
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4299F3 endp

db 90h
jpt_429C76 dd offset loc_429C7D ; jump table for switch statement
dd offset loc_42A070
dd offset loc_42A089
dd offset loc_42A0E1
dd offset loc_42A134
dd offset def_429C76
dd offset loc_429DC3



sub_429C13 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
call    sub_42A7DB
mov     esi, offset byte_77E950
cmp     byte ptr ds:dword_77E954, 1
jz      short loc_429C41
call    sub_49D76F
xor     ecx, ecx
mov     ds:dword_5593E8, ecx
jmp     loc_42A2FA

loc_429C41:
inc     ds:dword_5593E8
cmp     byte ptr ds:dword_77E954+2, 0
jz      short loc_429C64
call    sub_42A302
xor     eax, eax
mov     al, [esi+6]
mov     ds:dword_5592DC, eax
jmp     loc_42A2FA

loc_429C64:
mov     al, byte ptr ds:dword_77E954+1
cmp     al, 6           ; switch 7 cases
ja      def_429C76      ; jumptable 00429C76 default case, case 5
and     eax, 0FFh
jmp     jpt_429C76[eax*4] ; switch jump

loc_429C7D:             ; jumptable 00429C76 case 0
cmp     byte ptr ds:dword_77E958+2, 0
jl      loc_429E6D
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_429D02
mov     edx, ds:dword_5F8376
sar     edx, 10h
mov     eax, ds:dword_5F838E
sar     eax, 10h
cmp     edx, eax
jnz     short loc_429CD2
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
mov     eax, ds:dword_5F838E+2
sar     eax, 10h
cmp     edx, eax
jnz     short loc_429CD2
mov     edx, ds:dword_5F837A
sar     edx, 10h
mov     eax, ds:dword_5F8392
sar     eax, 10h
cmp     edx, eax
jz      short loc_429D02

loc_429CD2:
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     [esi+88h], eax
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
mov     eax, [esi+5Ch]
sub     edx, eax
mov     [esi+8Ch], edx
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     [esi+90h], eax

loc_429D02:
mov     ch, [esi+0Ah]
test    ch, ch
jz      loc_429E14
mov     al, [esi+9]
mov     dl, ch
add     dl, al
mov     [esi+0Ah], dl
test    dl, dl
jge     short loc_429D1F
mov     byte ptr [esi+0Ah], 0

loc_429D1F:
mov     ecx, [esi+7]
sar     ecx, 18h
mov     eax, 40h ; '@'
sub     eax, ecx
mov     edx, [esi+3Ch]
imul    edx, eax
mov     ebx, [esi+24h]
imul    ebx, ecx
add     edx, ebx
sar     edx, 6
mov     [esi+0Ch], edx
mov     edx, [esi+44h]
imul    edx, eax
mov     ebx, [esi+2Ch]
imul    ebx, ecx
add     edx, ebx
sar     edx, 6
mov     [esi+14h], edx
mov     edx, [esi+8Ch]
imul    edx, eax
mov     ebx, [esi+6Ch]
imul    ebx, ecx
add     edx, ebx
sar     edx, 6
mov     [esi+4Ch], edx
cmp     byte ptr [esi+8], 3
jnz     short loc_429D80
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
jmp     short loc_429D8F

loc_429D80:
imul    eax, [esi+40h]
mov     edx, [esi+28h]
imul    edx, ecx
add     eax, edx
sar     eax, 6

loc_429D8F:
mov     [esi+10h], eax
mov     eax, 40h ; '@'
sub     eax, ecx
mov     edx, [esi+88h]
imul    edx, eax
mov     ebx, [esi+68h]
imul    ebx, ecx
add     edx, ebx
sar     edx, 6
mov     [esi+48h], edx
imul    eax, [esi+90h]
imul    ecx, [esi+70h]
add     eax, ecx
sar     eax, 6

loc_429DC0:
mov     [esi+50h], eax

loc_429DC3:             ; jumptable 00429C76 case 6
xor     ecx, ecx
mov     cl, [esi+2]
movzx   edi, byte ptr [esi+3]
mov     eax, 100h
sub     eax, edi
mov     edi, eax
mov     ebp, eax
sub     ebp, ecx
test    ecx, ecx
jz      loc_42A2BD
mov     ebx, [esi+10h]
mov     eax, [esi+34h]
cmp     ebx, eax
jge     loc_42A209
lea     eax, [ebx+1000h]
mov     edx, eax
sub     edx, [esi+34h]
mov     [esp+2Ch+var_1C], edx
mov     edx, [esi+34h]
sub     edx, ebx
cmp     edx, [esp+2Ch+var_1C]
jle     loc_42A21F
mov     ebx, eax
jmp     loc_42A21F

loc_429E14:
mov     byte ptr [esi+0Ah], 0FFh
mov     eax, [esi+3Ch]
mov     [esi+0Ch], eax
mov     eax, [esi+44h]
mov     [esi+14h], eax
mov     eax, [esi+8Ch]
mov     [esi+4Ch], eax
cmp     byte ptr [esi+8], 3
jnz     short loc_429E42
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
jmp     short loc_429E45

loc_429E42:
mov     eax, [esi+40h]

loc_429E45:
mov     [esi+10h], eax
mov     eax, [esi+88h]
mov     [esi+48h], eax
mov     eax, [esi+90h]
mov     [esi+50h], eax
cmp     byte ptr [esi+1], 2
jnz     loc_429DC3      ; jumptable 00429C76 case 6
mov     byte ptr [esi+1], 0
jmp     loc_429DC3      ; jumptable 00429C76 case 6

loc_429E6D:
cmp     ds:byte_77E951, 0
jnz     loc_429DC3      ; jumptable 00429C76 case 6
cmp     byte ptr ds:dword_77E958, 3
jnz     short loc_429E98

loc_429E83:
mov     eax, ds:dword_5F83B8

loc_429E88:
sar     eax, 10h
add     eax, 800h
mov     [esi+10h], eax
jmp     loc_429DC3      ; jumptable 00429C76 case 6

loc_429E98:
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     ds:dword_77E998, eax
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
mov     eax, ds:dword_77E9AC
sub     edx, eax
mov     ds:dword_77E99C, edx
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     ds:dword_77E9A0, eax
cmp     ds:dword_5593E8, 1
jnz     short loc_429EE3
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
jmp     loc_429FA3

loc_429EE3:
mov     eax, ds:dword_5F8416
sar     eax, 10h
call    abs_
mov     ds:dword_5593EC, eax
test    eax, eax
jz      short loc_429F3D
cmp     eax, 48h ; 'H'
jl      short loc_429F22
mov     ebp, ds:dword_511078
add     ebp, 6
mov     ds:dword_511078, ebp
cmp     ebp, 48h ; 'H'
jl      loc_429F86
mov     ds:dword_511078, 48h ; 'H'
jmp     short loc_429F86

loc_429F22:
mov     edx, eax
shl     eax, 3
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     ds:dword_511078, eax
jmp     short loc_429F86

loc_429F3D:
mov     edx, [esi+10h]
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
call    sub_42AC54
mov     edx, eax
cmp     eax, 200h
jl      short loc_429F67
mov     ds:dword_511078, 80h
jmp     short loc_429F86

loc_429F67:
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
mov     ds:dword_511078, eax
cmp     eax, 18h
jge     short loc_429F86
mov     ds:dword_511078, 18h

loc_429F86:
mov     edx, ds:dword_511078
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
mov     ebx, 200h
call    sub_42ABB4

loc_429FA3:
mov     [esi+10h], eax
cmp     byte ptr ds:dword_5F88B1, 1
jnz     loc_42A024
mov     ax, [esi+98h]
mov     ds:word_5593F4, ax
mov     ax, [esi+9Ch]
mov     ds:word_5593F6, ax
mov     ax, [esi+0A0h]
mov     ds:word_5593F8, ax
mov     ecx, 0FFFFh
mov     ebx, offset unk_5110B0
mov     edx, offset word_5593F4
mov     eax, edx
call    sub_42CE61
test    eax, eax
jnz     short loc_42A007
mov     ds:dword_511098, 3Ch ; '<'
add     ds:dword_51107C, 0Ah
jmp     short loc_42A037

loc_42A007:
mov     ebp, ds:dword_511098
test    ebp, ebp
jnz     short loc_42A01A

loc_42A011:
sub     ds:dword_51107C, 0Ah
jmp     short loc_42A037

loc_42A01A:
lea     eax, [ebp-1]
mov     ds:dword_511098, eax
jmp     short loc_42A037

loc_42A024:
mov     ecx, ds:dword_511098
test    ecx, ecx
jz      short loc_42A011
lea     ebx, [ecx-1]
mov     ds:dword_511098, ebx

loc_42A037:
mov     edi, ds:dword_51107C
cmp     edi, 300h
jle     short loc_42A051
mov     ds:dword_51107C, 300h
jmp     short loc_42A063

loc_42A051:
cmp     edi, 200h
jge     short loc_42A063
mov     ds:dword_51107C, 200h

loc_42A063:
mov     eax, ds:dword_51107C
mov     [esi+0Ch], eax
jmp     loc_429DC3      ; jumptable 00429C76 case 6

loc_42A070:             ; jumptable 00429C76 case 1
test    ds:byte_570927, 4
jz      loc_429DC3      ; jumptable 00429C76 case 6
mov     byte ptr ds:dword_77E954+1, 2
jmp     loc_429DC3      ; jumptable 00429C76 case 6

loc_42A089:             ; jumptable 00429C76 case 2
test    ds:byte_570927, 4
jz      short loc_42A099
mov     byte ptr ds:dword_77E954+1, 3

loc_42A099:
mov     edi, [esi+0F0h]
test    edi, edi
jz      loc_429DC3      ; jumptable 00429C76 case 6
mov     eax, [edi+12h]
sar     eax, 10h
mov     [esi+48h], eax
mov     eax, [esi+0F0h]
mov     edx, [eax+14h]
sar     edx, 10h
mov     eax, [esi+5Ch]
sub     edx, eax
mov     [esi+4Ch], edx
mov     eax, [esi+0F0h]
mov     eax, [eax+16h]
sar     eax, 10h
mov     [esi+50h], eax
mov     eax, [esi+0F0h]
mov     eax, [eax+54h]
jmp     loc_429E88

loc_42A0E1:             ; jumptable 00429C76 case 3
test    ds:byte_570927, 4
jz      short loc_42A0F6
mov     byte ptr ds:dword_77E954+1, 5
jmp     loc_42A1DD

loc_42A0F6:
mov     ebx, ds:dword_77EA40
test    ebx, ebx
jz      loc_429DC3      ; jumptable 00429C76 case 6
mov     edx, [ebx+12h]
sar     edx, 10h
mov     ds:dword_77E998, edx
mov     ecx, [ebx+14h]
sar     ecx, 10h
mov     edx, ds:dword_77E9AC
sub     ecx, edx
mov     ds:dword_77E99C, ecx
mov     eax, [ebx+16h]
sar     eax, 10h
mov     ds:dword_77E9A0, eax
jmp     loc_429DC3      ; jumptable 00429C76 case 6

loc_42A134:             ; jumptable 00429C76 case 4
mov     ecx, ds:dword_77E960
and     ecx, 0FFFh
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
and     eax, 0FFFh
cmp     eax, ecx
jle     short loc_42A18A
mov     edx, eax
sub     edx, ecx
cmp     edx, 60h ; '`'
jg      short loc_42A170

loc_42A15F:
mov     ds:dword_77E960, eax
mov     eax, offset unk_5110AC
call    sub_42A7B1
jmp     short loc_42A1A7

loc_42A170:
add     ecx, 1000h
sub     ecx, eax
cmp     edx, ecx
jge     short loc_42A183

loc_42A17C:
mov     eax, 60h ; '`'
jmp     short loc_42A1A4

loc_42A183:
mov     eax, 0FFFFFFA0h
jmp     short loc_42A1A4

loc_42A18A:
cmp     ecx, eax
jz      short loc_42A15F
mov     edx, ecx
sub     edx, eax
cmp     edx, 60h ; '`'
jle     short loc_42A15F
add     eax, 1000h
sub     eax, ecx
cmp     edx, eax
jl      short loc_42A183
jmp     short loc_42A17C

loc_42A1A4:
add     [esi+10h], eax

loc_42A1A7:
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     [esi+48h], eax
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
mov     eax, [esi+5Ch]
sub     edx, eax
mov     [esi+4Ch], edx
mov     eax, ds:dword_5F837A
sar     eax, 10h
jmp     loc_429DC0

def_429C76:             ; jumptable 00429C76 default case, case 5
test    ds:byte_570927, 4
jz      short loc_42A1DD
mov     byte ptr [esi+5], 0

loc_42A1DD:
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     [esi+48h], eax
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
mov     eax, [esi+5Ch]
sub     edx, eax
mov     [esi+4Ch], edx
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     [esi+50h], eax
jmp     loc_429E83

loc_42A209:
add     eax, 1000h
sub     eax, ebx
mov     edx, ebx
sub     edx, [esi+34h]
cmp     eax, edx
jge     short loc_42A21F
sub     ebx, 1000h

loc_42A21F:
mov     edx, [esi+78h]
imul    edx, ebp
mov     eax, [esi+48h]
imul    eax, ecx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     [esp+2Ch+var_2C], eax
mov     eax, [esi+7Ch]
imul    eax, ebp
mov     edx, [esi+4Ch]
imul    edx, ecx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     [esp+2Ch+var_28], eax
mov     eax, [esi+80h]
imul    eax, ebp
mov     edx, [esi+50h]
imul    edx, ecx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     [esp+2Ch+var_24], eax
mov     eax, [esi+38h]
imul    eax, ebp
mov     edx, [esi+14h]
imul    edx, ecx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     [esp+2Ch+var_1C], eax
mov     eax, [esi+34h]
imul    eax, ebp
mov     edx, ebx
imul    edx, ecx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     ebx, eax
imul    ebp, [esi+30h]
mov     edx, [esi+0Ch]
imul    edx, ecx
add     edx, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     ecx, [esp+2Ch+var_1C]
mov     edx, eax
mov     eax, esp
call    sub_42961B
jmp     short loc_42A2FA

loc_42A2BD:
xor     eax, eax
mov     al, [esi+7]
sub     [esi+4Ch], eax
mov     eax, [esi+14h]
mov     ecx, [esi+20h]
add     ecx, eax
mov     eax, [esi+10h]
mov     ebx, [esi+1Ch]
add     ebx, eax
mov     edx, [esi+0Ch]
lea     eax, [esi+48h]
call    sub_42961B
mov     bh, [esi+7]
test    bh, bh
jz      short loc_42A2FA
cmp     bh, 0Ah
jnb     short loc_42A2F2
mov     byte ptr [esi+7], 0
jmp     short loc_42A2FA

loc_42A2F2:
mov     ch, bh
sub     ch, 0Ah
mov     [esi+7], ch

loc_42A2FA:
add     esp, 14h
jmp     loc_429BEF
sub_429C13 endp




sub_42A302 proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     esi, offset byte_77E950
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     ds:dword_77E998, eax
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
sub     eax, 0D2h
mov     ds:dword_77E99C, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     ds:dword_77E9A0, eax
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
mov     ds:dword_77E960, eax
cmp     ds:dword_51109C, 0
jz      short loc_42A38F
mov     ecx, ds:dword_5110A0
dec     ecx
mov     ds:dword_5110A0, ecx
jnz     short loc_42A368
mov     ds:dword_51109C, ecx

loc_42A368:
mov     edx, [esi+0Ch]
mov     ebp, ds:dword_5110A0
imul    edx, ebp
mov     eax, 10h
sub     eax, ebp
imul    eax, ds:dword_5110A4
add     eax, edx
sar     eax, 4
mov     [esi+0Ch], eax
jmp     loc_42A3FC

loc_42A38F:
test    byte ptr ds:word_5708DE, 1
jz      short loc_42A3FC
mov     dl, byte ptr ds:dword_77E954+2
inc     dl
mov     byte ptr ds:dword_77E954+2, dl
cmp     dl, 2
jbe     short loc_42A3B2
mov     byte ptr ds:dword_77E954+2, 1

loc_42A3B2:
xor     eax, eax
mov     al, [esi+6]
dec     eax
test    eax, eax
jbe     short loc_42A3C3
cmp     eax, 1
jz      short loc_42A3E3
jmp     short loc_42A3FC

loc_42A3C3:
mov     ds:dword_5110A4, 4B0h
mov     ds:dword_5110A0, 10h
mov     ds:dword_51109C, 1
jmp     short loc_42A3FC

loc_42A3E3:
mov     ds:dword_5110A4, 190h
mov     ds:dword_5110A0, 10h
mov     ds:dword_51109C, eax

loc_42A3FC:
mov     byte ptr ds:dword_77E958, 1
xor     eax, eax
mov     al, [esi+7]
sub     [esi+4Ch], eax
mov     ecx, [esi+14h]
mov     ebx, [esi+10h]
mov     edx, [esi+0Ch]
lea     eax, [esi+48h]
call    sub_42961B
mov     cl, [esi+7]
test    cl, cl
jz      short loc_42A435
cmp     cl, 0Ah
jnb     short loc_42A42E
mov     byte ptr [esi+7], 0
jmp     short loc_42A435

loc_42A42E:
mov     al, cl
sub     al, 0Ah
mov     [esi+7], al

loc_42A435:
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_42A302 endp




sub_42A43B proc near
push    ebx
push    edx
push    esi
push    edi
mov     ah, byte ptr ds:dword_77E958
test    ah, ah
jz      loc_42A4DD
mov     al, 40h ; '@'
mov     dh, byte ptr ds:dword_77E958+2
sub     al, dh
mov     byte ptr ds:dword_77E958+2, al
mov     eax, ds:dword_77E95C
mov     ds:dword_77E974, eax
mov     eax, ds:dword_77E964
mov     ds:dword_77E97C, eax
mov     edi, offset dword_77E9B8
mov     esi, offset dword_77E998
movsd
movsd
movsd
movsd
mov     ds:dword_77E98C, 200h
mov     ds:dword_77E994, 30h ; '0'
mov     edi, offset dword_77E9D8
mov     esi, offset dword_77E998
movsd
movsd
movsd
movsd
mov     edi, 96h
mov     ds:dword_77E9AC, edi
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
sub     eax, edi
mov     ds:dword_77E9DC, eax
xor     bl, bl
mov     byte ptr ds:dword_77E958, bl
mov     byte ptr ds:dword_77E958+1, 0F8h
mov     eax, ds:dword_77E960
mov     ds:dword_77E990, eax
mov     ds:dword_77E978, eax
pop     edi
pop     esi
pop     edx
pop     ebx
retn

loc_42A4DD:
mov     ds:dword_77E964, 30h ; '0'
mov     ds:dword_77E95C, 200h
mov     byte ptr ds:dword_77E958+2, ah
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_42A43B endp




sub_42A4FC proc near
xor     ah, ah
mov     byte ptr ds:dword_77E958, ah
mov     ds:dword_77E964, 30h ; '0'
mov     ds:dword_77E95C, 200h
mov     byte ptr ds:dword_77E958+2, 0FFh
mov     ds:dword_77E9AC, 96h
mov     ds:byte_77E951, ah
retn
sub_42A4FC endp




sub_42A530 proc near
push    ebx
push    ecx
push    esi
push    edi
cmp     byte ptr ds:dword_77E954+2, 0
jz      short loc_42A547
mov     ds:dword_77E964, eax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_42A547:
cmp     ds:byte_77E951, 0
jnz     loc_42A639
mov     bl, byte ptr ds:dword_77E958
test    bl, bl
jnz     loc_42A5F2
mov     byte ptr ds:dword_77E958+2, 40h ; '@'
mov     edx, ds:dword_77E95C
mov     ds:dword_77E974, edx
mov     edx, ds:dword_77E964
mov     ds:dword_77E97C, edx
mov     edi, offset dword_77E9B8
mov     esi, offset dword_77E998
movsd
movsd
movsd
movsd
mov     ds:dword_77E98C, 190h
mov     ds:dword_77E994, eax
mov     edi, offset dword_77E9D8
mov     esi, offset dword_77E998
movsd
movsd
movsd
movsd
mov     ecx, 0D2h
mov     ds:dword_77E9AC, ecx
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
sub     eax, ecx
mov     ds:dword_77E9DC, eax
mov     byte ptr ds:dword_77E958, 3
mov     byte ptr ds:dword_77E958+1, 0F8h
mov     eax, ds:dword_77E960
mov     ds:dword_77E990, eax
mov     ds:dword_77E978, eax
mov     ds:dword_51107C, 200h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_42A5F2:
cmp     bl, 3
jnz     short loc_42A639
mov     ds:dword_77E964, eax
mov     ds:dword_77E994, eax
cmp     byte ptr ds:dword_77E958+2, 0
jg      short loc_42A639
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     ds:dword_77E998, eax
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
mov     edx, ds:dword_77E9AC
sub     eax, edx
mov     ds:dword_77E99C, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     ds:dword_77E9A0, eax

loc_42A639:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_42A530 endp




sub_42A63E proc near
push    ecx
push    edx
mov     ds:dword_77E964, 30h ; '0'
mov     ecx, 200h
mov     ds:dword_51107C, ecx
mov     ds:dword_77E95C, ecx
mov     byte ptr ds:dword_77E958+2, 0FFh
xor     dl, dl
mov     byte ptr ds:dword_5F88B1, dl
pop     edx
pop     ecx
retn
sub_42A63E endp




sub_42A66D proc near
push    ecx
xor     ah, ah
mov     ds:byte_77E951, ah
mov     ds:dword_77E964, 30h ; '0'
mov     ecx, 200h
mov     ds:dword_51107C, ecx
mov     ds:dword_77E95C, ecx
mov     byte ptr ds:dword_77E958+2, 0FFh
mov     byte ptr ds:dword_5F88B1, ah
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     ds:dword_77E9D8, eax
mov     ds:dword_77E9B8, eax
mov     ds:dword_77E998, eax
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
mov     ds:dword_77E9DC, eax
mov     ds:dword_77E9BC, eax
mov     ds:dword_77E99C, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     ds:dword_77E9E0, eax
mov     ds:dword_77E9C0, eax
mov     ds:dword_77E9A0, eax
mov     ds:dword_77E9AC, 96h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
mov     ds:dword_77E960, eax
pop     ecx
retn
sub_42A66D endp




sub_42A701 proc near
test    eax, eax
jle     short locret_42A70A
mov     byte ptr ds:dword_77E954+3, al

locret_42A70A:
retn
sub_42A701 endp




sub_42A70B proc near
push    esi
push    edi
push    ebp
mov     esi, eax
test    eax, eax
jle     short loc_42A774
movsx   edi, word ptr [ecx]
mov     eax, ds:dword_56F182
sar     eax, 10h
sub     eax, edi
mov     edi, eax
mov     eax, [ecx]
sar     eax, 10h
mov     ebp, ds:dword_56F182+2
sar     ebp, 10h
sub     ebp, eax
mov     eax, ebp
mov     ecx, [ecx+2]
sar     ecx, 10h
mov     ebp, ds:dword_56F186
sar     ebp, 10h
sub     ebp, ecx
imul    eax, eax
imul    edi, edi
add     edi, eax
mov     eax, ebp
imul    eax, ebp
add     eax, edi
call    sub_4EF075
mov     ecx, eax
cmp     eax, ebx
ja      short loc_42A774
cmp     eax, edx
mov     eax, ebx
sub     eax, ecx
imul    eax, esi
sub     ebx, edx
xor     edx, edx
div     ebx
mov     byte ptr ds:dword_77E954+3, al

loc_42A774:
pop     ebp
pop     edi
pop     esi
retn
sub_42A70B endp




sub_42A778 proc near
push    ecx
push    edx
push    esi
mov     edx, eax
mov     ecx, ds:dword_5110C0
cmp     ecx, 8
jb      short loc_42A78E
xor     eax, eax
pop     esi
pop     edx
pop     ecx
retn

loc_42A78E:
mov     eax, ds:dword_5110BC
add     eax, ecx
and     eax, 7
mov     ds:dword_55926C[eax*4], edx
mov     eax, 1
lea     esi, [ecx+eax]
mov     ds:dword_5110C0, esi
pop     esi
pop     edx
pop     ecx
retn
sub_42A778 endp




sub_42A7B1 proc near
push    edx
xor     edx, edx
mov     ds:dword_5110BC, edx
mov     ds:dword_5110C0, edx
call    sub_42A778
pop     edx
retn
sub_42A7B1 endp

jpt_42A80E dd offset def_42A80E ; jump table for switch statement
dd offset loc_42A815
dd offset loc_42A850
dd offset loc_42A822
dd offset loc_42A83F



sub_42A7DB proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, ds:dword_5110C0
test    edx, edx
jz      def_42A80E      ; jumptable 0042A80E default case, case 0
mov     eax, ds:dword_5110BC
mov     eax, ds:dword_55926C[eax*4]
lea     ecx, [edx-1]
mov     ds:dword_5110C0, ecx
mov     eax, [eax]
cmp     eax, 4          ; switch 5 cases
ja      def_42A80E      ; jumptable 0042A80E default case, case 0
jmp     jpt_42A80E[eax*4] ; switch jump

loc_42A815:             ; jumptable 0042A80E case 1
xor     bl, bl
mov     byte ptr ds:dword_77E954+1, bl
jmp     def_42A80E      ; jumptable 0042A80E default case, case 0

loc_42A822:             ; jumptable 0042A80E case 3
mov     ecx, 3Dh ; '='
mov     edi, offset unk_5592E8
mov     esi, offset byte_77E950
rep movsd
mov     byte ptr ds:dword_77E954+1, 6
jmp     def_42A80E      ; jumptable 0042A80E default case, case 0

loc_42A83F:             ; jumptable 0042A80E case 4
mov     ecx, 3Dh ; '='
mov     edi, offset byte_77E950
mov     esi, offset unk_5592E8
rep movsd

loc_42A850:             ; jumptable 0042A80E case 2
mov     byte ptr ds:dword_77E954+1, 4
jmp     def_42A80E      ; jumptable 0042A80E default case, case 0
sub_42A7DB endp




sub_42A85C proc near
cmp     byte ptr ds:dword_77E958, 0
jnz     short loc_42A868
xor     eax, eax
retn

loc_42A868:
mov     eax, ds:dword_77E964
retn
sub_42A85C endp




sub_42A86E proc near
mov     ds:byte_77E952, al
mov     ds:byte_77E953, dl
retn
sub_42A86E endp

push    esi
push    edi
mov     edi, offset dword_77E998
mov     esi, eax
movsd
movsd
movsd
movsd
mov     ds:dword_77E95C, edx
mov     ds:dword_77E960, ebx
mov     ds:dword_77E964, ecx
pop     edi
pop     esi
retn
push    esi
push    edi
mov     edi, offset dword_77E9C8
mov     esi, eax
movsd
movsd
movsd
movsd
mov     ds:dword_77E980, edx
mov     ds:dword_77E984, ebx
mov     ds:dword_77E988, ecx
pop     edi
pop     esi
retn



sub_42A8BE proc near
push    esi
push    edi
mov     edi, offset dword_77E9B8
mov     esi, eax
movsd
movsd
movsd
movsd
mov     ds:dword_77E974, edx
mov     ds:dword_77E978, ebx
mov     ds:dword_77E97C, ecx
pop     edi
pop     esi
retn
sub_42A8BE endp

push    esi
push    edi
mov     edi, offset unk_77E9A8
mov     esi, eax
movsd
movsd
movsd
movsd
mov     ds:dword_77E968, edx
mov     ds:dword_77E96C, ebx
mov     ds:dword_77E970, ecx
pop     edi
pop     esi
retn
push    esi
push    edi
mov     edi, offset dword_77E9D8
mov     esi, eax
movsd
movsd
movsd
movsd
mov     ds:dword_77E98C, edx
mov     ds:dword_77E990, ebx
mov     ds:dword_77E994, ecx
pop     edi
pop     esi
retn



sub_42A924 proc near
push    edx
movsx   edx, word ptr [eax]
add     ds:dword_77E9B8, edx
mov     edx, [eax]
sar     edx, 10h
add     ds:dword_77E9BC, edx
mov     edx, [eax+2]
sar     edx, 10h
add     ds:dword_77E9C0, edx
movsx   edx, word ptr [eax]
add     ds:dword_77E9D8, edx
mov     edx, [eax]
sar     edx, 10h
add     ds:dword_77E9DC, edx
mov     eax, [eax+2]
sar     eax, 10h
add     ds:dword_77E9E0, eax
pop     edx
retn
sub_42A924 endp

mov     al, byte ptr ds:dword_5593E0
mov     byte ptr ds:dword_560BDC+1, al
mov     al, byte ptr ds:dword_5593DC
mov     byte ptr ds:dword_560BDC, al
mov     ds:dword_51107C, 200h
xor     ah, ah
mov     byte ptr ds:dword_5F88B1, ah
retn



sub_42A98E proc near
mov     al, byte ptr ds:dword_5593E0
mov     byte ptr ds:dword_560BDC+1, al
mov     al, byte ptr ds:dword_5593DC
mov     byte ptr ds:dword_560BDC, al
sub_42A98E endp




sub_42A9A2 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ds:dword_51107C, 200h
xor     ah, ah
mov     byte ptr ds:dword_5F88B1, ah
mov     ds:byte_77E951, 2
mov     byte ptr ds:dword_77E958+2, 40h ; '@'
mov     edi, offset dword_77E9B8
mov     esi, offset dword_77E998
movsd
movsd
movsd
movsd
mov     eax, ds:dword_77E95C
mov     ds:dword_77E974, eax
mov     eax, ds:dword_77E960
and     eax, 0FFFh
mov     ds:dword_77E978, eax
mov     eax, ds:dword_77E964
mov     ds:dword_77E97C, eax
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     ds:dword_77E9D8, eax
mov     ecx, 96h
mov     ds:dword_77E9AC, ecx
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
sub     eax, ecx
mov     ds:dword_77E9DC, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     ds:dword_77E9E0, eax
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
and     eax, 0FFFh
mov     ds:dword_77E990, eax
mov     ds:dword_77E98C, 200h
mov     ds:dword_77E994, 30h ; '0'
mov     byte ptr ds:dword_77E958+1, 0FCh
mov     eax, ds:dword_77E978
mov     edi, ds:dword_77E990
cmp     eax, edi
jle     short loc_42AA87
lea     edx, [edi+1000h]
mov     ecx, edx
sub     ecx, eax
sub     eax, edi
cmp     eax, ecx
jle     short loc_42AAA3
mov     ds:dword_77E990, edx
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_42AA87:
lea     edx, [eax+1000h]
mov     ecx, edx
sub     ecx, edi
mov     eax, edi
sub     eax, ds:dword_77E978
cmp     eax, ecx
jle     short loc_42AAA3
mov     ds:dword_77E978, edx

loc_42AAA3:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_42A9A2 endp




sub_42AAA8 proc near
push    esi
movzx   esi, byte ptr ds:dword_560BDC+1
mov     ds:dword_5593E0, esi
movzx   esi, byte ptr ds:dword_560BDC
mov     ds:dword_5593DC, esi
mov     byte ptr ds:dword_560BDC+1, 0FFh
mov     byte ptr ds:dword_560BDC, 1
call    sub_42AAD8
pop     esi
retn
sub_42AAA8 endp




sub_42AAD8 proc near
push    esi
push    edi
push    ebp
mov     ebp, edx
mov     ds:dword_51107C, 200h
xor     dl, dl
mov     byte ptr ds:dword_5F88B1, dl
mov     ds:byte_77E951, 1
mov     byte ptr ds:dword_77E958+2, 40h ; '@'
mov     edi, offset dword_77E9B8
mov     esi, offset dword_77E998
movsd
movsd
movsd
movsd
mov     edx, ds:dword_77E95C
mov     ds:dword_77E974, edx
mov     edx, ds:dword_77E960
and     edx, 0FFFh
mov     ds:dword_77E978, edx
mov     edx, ds:dword_77E964
mov     ds:dword_77E97C, edx
mov     edi, offset dword_77E9D8
mov     esi, eax
movsd
movsd
movsd
movsd
mov     ds:dword_77E98C, ebp
and     ebx, 0FFFh
mov     ds:dword_77E990, ebx
mov     ds:dword_77E994, ecx
mov     byte ptr ds:dword_77E958+1, 0FCh
mov     eax, ds:dword_77E978
cmp     eax, ebx
jle     short loc_42AB82
lea     edx, [ebx+1000h]
mov     ecx, edx
sub     ecx, eax
sub     eax, ebx
cmp     eax, ecx
jle     short loc_42AB9E
mov     ds:dword_77E990, edx
pop     ebp
pop     edi
pop     esi
retn

loc_42AB82:
lea     edx, [eax+1000h]
mov     ecx, edx
sub     ecx, ebx
mov     eax, ebx
sub     eax, ds:dword_77E978
cmp     eax, ecx
jle     short loc_42AB9E
mov     ds:dword_77E978, edx

loc_42AB9E:
pop     ebp
pop     edi
pop     esi
retn
sub_42AAD8 endp




sub_42ABA2 proc near
cmp     byte ptr ds:dword_77E958+2, 0
jge     short loc_42ABAE
xor     eax, eax
retn

loc_42ABAE:
mov     eax, 1
retn
sub_42ABA2 endp




sub_42ABB4 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     esi, edx
mov     edx, ds:dword_77E960
and     edx, 0FFFh
and     eax, 0FFFh
lea     edi, [edx+esi]
lea     ecx, [eax+ebx]
mov     [esp+1Ch+var_18], ecx
mov     ecx, eax
sub     ecx, ebx
mov     [esp+1Ch+var_14], ecx
mov     ecx, edx
sub     ecx, esi
mov     esi, ecx
cmp     edx, eax
jle     short loc_42AC22
mov     ecx, edx
sub     ecx, eax
lea     ebp, [eax+1000h]
mov     [esp+1Ch+var_1C], ebp
sub     ebp, edx
mov     edx, ebp
cmp     ecx, ebp
jle     short loc_42AC10
cmp     ebp, ebx
jle     short loc_42AC09

loc_42AC03:
mov     eax, [esp+1Ch+var_14]
jmp     short loc_42AC4C

loc_42AC09:
cmp     edi, [esp+1Ch+var_1C]
jle     short loc_42AC4A
jmp     short loc_42AC4C

loc_42AC10:
cmp     ecx, ebx
jle     short loc_42AC1A

loc_42AC14:
mov     eax, [esp+1Ch+var_18]
jmp     short loc_42AC4C

loc_42AC1A:
cmp     esi, eax
jl      short loc_42AC4C

loc_42AC1E:
mov     eax, esi
jmp     short loc_42AC4C

loc_42AC22:
mov     ecx, eax
sub     ecx, edx
add     edx, 1000h
sub     edx, eax
cmp     ecx, edx
jle     short loc_42AC42
cmp     edx, ebx
jg      short loc_42AC14
lea     edx, [eax-1000h]
cmp     esi, edx
jge     short loc_42AC1E
jmp     short loc_42AC4C

loc_42AC42:
cmp     ecx, ebx
jg      short loc_42AC03
cmp     edi, eax
jg      short loc_42AC4C

loc_42AC4A:
mov     eax, edi

loc_42AC4C:
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_42ABB4 endp




sub_42AC54 proc near
push    ecx
mov     ecx, eax
mov     eax, ds:dword_77E960
and     eax, 0FFFh
mov     edx, ecx
and     edx, 0FFFh
cmp     eax, edx
jle     short loc_42AC7D
mov     ecx, eax
sub     ecx, edx
add     edx, 1000h
sub     edx, eax
mov     eax, edx
jmp     short loc_42AC88

loc_42AC7D:
mov     ecx, edx
sub     ecx, eax
add     eax, 1000h
sub     eax, edx

loc_42AC88:
cmp     ecx, eax
jg      short loc_42AC8E
mov     eax, ecx

loc_42AC8E:
pop     ecx
retn
sub_42AC54 endp




sub_42AC90 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ds:dword_51107C, 200h
xor     ah, ah
mov     byte ptr ds:dword_5F88B1, ah
mov     ds:byte_77E951, 2
mov     byte ptr ds:dword_77E958+2, 40h ; '@'
mov     edi, offset dword_77E9B8
mov     esi, offset dword_5592CC
movsd
movsd
movsd
movsd
mov     eax, ds:dword_5592E0
mov     ds:dword_77E974, eax
mov     eax, ds:dword_5592E4
and     eax, 0FFFh
mov     ds:dword_77E978, eax
mov     eax, ds:dword_5593E4
mov     ds:dword_77E97C, eax
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     ds:dword_77E9D8, eax
mov     ecx, 96h
mov     ds:dword_77E9AC, ecx
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
sub     eax, ecx
mov     ds:dword_77E9DC, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     ds:dword_77E9E0, eax
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
and     eax, 0FFFh
mov     ds:dword_77E990, eax
mov     ds:dword_77E98C, 200h
mov     ds:dword_77E994, 30h ; '0'
mov     byte ptr ds:dword_77E958+1, 0FCh
mov     eax, ds:dword_77E978
mov     edi, ds:dword_77E990
cmp     eax, edi
jle     short loc_42AD75
lea     edx, [edi+1000h]
mov     ecx, edx
sub     ecx, eax
sub     eax, edi
cmp     eax, ecx
jle     short loc_42AD91
mov     ds:dword_77E990, edx
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_42AD75:
lea     edx, [eax+1000h]
mov     ecx, edx
sub     ecx, edi
mov     eax, edi
sub     eax, ds:dword_77E978
cmp     eax, ecx
jle     short loc_42AD91
mov     ds:dword_77E978, edx

loc_42AD91:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_42AC90 endp




sub_42AD96 proc near
push    ebx
push    ecx
push    esi
mov     ecx, edx
mov     esi, eax
mov     byte ptr [eax], 53h ; 'S'
mov     byte ptr [eax+1], 43h ; 'C'
mov     byte ptr [eax+2], 11h
mov     byte ptr [eax+3], 1
add     eax, 4
xor     edx, edx

loc_42ADB1:
mov     bl, [ecx]
mov     [eax], bl
inc     ecx
inc     eax
inc     edx
cmp     edx, 40h ; '@'
jl      short loc_42ADB1
lea     eax, [esi+44h]
xor     edx, edx

loc_42ADC2:
mov     byte ptr [eax], 0
inc     eax
inc     edx
cmp     edx, 1Ch
jl      short loc_42ADC2
mov     eax, offset unk_5110C4
lea     ecx, [esi+80h]
xor     edx, edx

loc_42ADD9:
mov     bl, [eax]
mov     [ecx], bl
inc     ecx
inc     eax
inc     edx
cmp     edx, 80h
jl      short loc_42ADD9
mov     eax, offset unk_511144
lea     ecx, [esi+60h]
xor     edx, edx

loc_42ADF2:
mov     bl, [eax]
mov     [ecx], bl
inc     ecx
inc     eax
inc     edx
cmp     edx, 20h ; ' '
jl      short loc_42ADF2
pop     esi
pop     ecx
pop     ebx
retn
sub_42AD96 endp




sub_42AE02 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     [esp+1Ch+var_1C], offset byte_5F8364
mov     ebp, offset dword_77E784
mov     ecx, offset unk_75164C
call    sub_4A8EFF
mov     edx, offset unk_5304D0
mov     eax, ecx
call    sub_42AD96
mov     al, ds:byte_77E7D4
mov     ds:byte_75174C, al
xor     al, al

loc_42AE39:
movsx   edx, al
lea     ebx, [ecx+edx]
mov     dl, ds:byte_530218[edx]
mov     [ebx+101h], dl
inc     al
cmp     al, 8
jl      short loc_42AE39
call    sub_4A7DD4
mov     eax, [ebp+10h]
mov     [ecx+128h], eax
mov     eax, [ebp+14h]
mov     [ecx+12Ch], eax
mov     ax, [ebp+18h]
mov     [ecx+130h], ax
mov     ax, [ebp+1Ah]
mov     [ecx+132h], ax
mov     eax, [ebp+0Ch]
mov     [ecx+180h], eax
mov     eax, [ebp+1Ch]
mov     [ecx+184h], eax
mov     eax, [ebp+20h]
mov     [ecx+188h], eax
mov     eax, [ebp+24h]
mov     [ecx+18Ch], eax
mov     eax, [ebp+28h]
mov     [ecx+1D00h], eax
mov     eax, [ebp+2Ch]
mov     [ecx+1D04h], eax
mov     eax, [ebp+30h]
mov     [ecx+1D08h], eax
mov     eax, [ebp+34h]
mov     [ecx+1D0Ch], eax
mov     eax, [ebp+38h]
mov     [ecx+1D10h], eax
mov     eax, [ebp+3Ch]
mov     [ecx+1D14h], eax
mov     ax, [ebp+40h]
mov     [ecx+1D18h], ax
mov     ax, [ebp+42h]
mov     [ecx+1D1Ah], ax
mov     ax, [ebp+44h]
mov     [ecx+1D1Ch], ax
mov     ax, [ebp+46h]
mov     [ecx+1D1Eh], ax
mov     ax, [ebp+48h]
mov     [ecx+1D20h], ax
mov     ax, [ebp+4Ah]
mov     [ecx+1D22h], ax
mov     eax, [ebp+4Ch]
mov     [ecx+190h], eax
mov     al, [ebp+50h]
mov     [ecx+194h], al
mov     al, [ebp+51h]
mov     [ecx+195h], al
mov     al, [ebp+52h]
mov     [ecx+196h], al
mov     al, [ebp+53h]
mov     [ecx+197h], al
mov     ax, [ebp+60h]
mov     [ecx+1D0h], ax
mov     al, [ebp+78h]
mov     [ecx+204h], al
mov     al, [ebp+79h]
mov     [ecx+205h], al
mov     al, [ebp+7Ah]
mov     [ecx+206h], al
mov     al, [ebp+7Bh]
mov     [ecx+207h], al
mov     al, [ebp+7Ch]
mov     [ecx+200h], al
mov     al, [ebp+7Dh]
mov     [ecx+201h], al
mov     ax, [ebp+62h]
mov     [ecx+1D2h], ax
mov     eax, [ebp+64h]
mov     [ecx+1E0h], eax
mov     al, [ebp+54h]
mov     [ecx+198h], al
mov     al, [ebp+55h]
mov     [ecx+199h], al
mov     al, [ebp+56h]
mov     [ecx+19Ah], al
mov     al, [ebp+58h]
mov     [ecx+19Ch], al
mov     al, [ebp+59h]
mov     [ecx+19Dh], al
mov     al, [ebp+5Ah]
mov     [ecx+19Eh], al
mov     al, [ebp+5Bh]
mov     [ecx+19Fh], al
lea     edi, [ecx+1C0h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+56h]
mov     [ecx+1C8h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+6Eh]
mov     [ecx+1CCh], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+0B0h]
mov     [ecx+1CEh], ax
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+16Ah]
mov     [ecx+1D4h], al
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+16Bh]
mov     [ecx+1D5h], al
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+16Ch]
mov     [ecx+1D6h], al
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+170h]
mov     [ecx+1D8h], al
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+171h]
mov     [ecx+1D9h], al
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+172h]
mov     [ecx+1DAh], al
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+173h]
mov     [ecx+1DBh], al
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+54Ch]
mov     [ecx+1DCh], al
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+54Eh]
mov     [ecx+1DEh], al
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+54Fh]
mov     [ecx+1DFh], al
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+550h]
mov     [ecx+208h], eax
lea     edx, [ecx+20Ch]
mov     eax, [esp+1Ch+var_1C]
add     eax, 554h
mov     ebx, 1
call    sub_4EECEF
lea     edx, [ecx+1C80h]
mov     eax, [esp+1Ch+var_1C]
add     eax, 574h
mov     ebx, 4
call    sub_4EECEF
lea     edx, [ecx+22Ch]
mov     eax, [esp+1Ch+var_1C]
add     eax, 5F4h
mov     ebx, 8
call    sub_4EECEF
lea     edx, [ecx+380h]
mov     ebx, 8
mov     eax, offset unk_560D04
call    sub_4EECEF
lea     edx, [ecx+480h]
mov     ebx, 70h ; 'p'
mov     eax, offset unk_764964
call    sub_4EECEF
lea     edx, [ecx+1280h]
mov     ebx, 50h ; 'P'
mov     eax, offset dword_763F64
call    sub_4EECEF
lea     edx, [ecx+1D40h]
lea     eax, [ebp+84h]
mov     ebx, 0Fh
call    sub_4EECE5
add     esp, 4
pop     ebp

loc_42B15C:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_42AE02 endp




sub_42B162 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 0Ch
mov     edx, offset unk_75164C
call    rand_
mov     ecx, eax
shl     ecx, 10h
call    rand_
or      ecx, eax
mov     ds:dword_7517BC, ecx
call    rand_
mov     ecx, eax
shl     ecx, 10h
call    rand_
or      ecx, eax
mov     ds:dword_7517FC, ecx
call    rand_
mov     ecx, eax
shl     ecx, 10h
call    rand_
or      ecx, eax
mov     ds:dword_75183C, ecx
call    rand_
mov     ecx, eax
shl     ecx, 10h
call    rand_
or      ecx, eax
mov     ds:dword_7519BC, ecx
call    rand_
mov     ecx, eax
shl     ecx, 10h
call    rand_
or      ecx, eax
mov     ds:dword_75337C, ecx
call    rand_
mov     ecx, eax
shl     ecx, 10h
call    rand_
or      ecx, eax
mov     ds:dword_75352C, ecx
xor     eax, eax

loc_42B1FA:
xor     ebx, ebx
mov     [esp+eax*4+1Ch+var_1C], ebx
inc     eax
cmp     eax, 3
jb      short loc_42B1FA
xor     eax, eax
jmp     short loc_42B20F

loc_42B209:
inc     eax
cmp     eax, 5Ch ; '\'
jnb     short loc_42B249

loc_42B20F:
mov     ecx, eax
mov     ecx, [edx+ecx*4]
mov     esi, ecx
shl     esi, 10h
mov     ebx, ecx
shr     ebx, 10h
or      ebx, esi
add     [esp+1Ch+var_1C], ebx
test    al, 1
jz      short loc_42B235
mov     ebx, [edx+170h]
add     ebx, eax
xor     ebx, ecx
add     [esp+1Ch+var_18], ebx

loc_42B235:
test    al, 1
jnz     short loc_42B209
mov     ebx, [edx+170h]
add     ebx, eax
xor     ecx, ebx
add     [esp+1Ch+var_14], ecx
jmp     short loc_42B209

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

loc_42DAA4:
mov     edx, [eax]
sar     edx, 10h
jmp     short loc_42DAB7

loc_42DAAB:
cmp     word ptr [eax+2], 0
jge     short loc_42DABB
mov     edx, [eax]
sar     edx, 10h

loc_42DAB7:
neg     edx
jmp     short loc_42DAC0

loc_42DABB:
mov     edx, [eax]
sar     edx, 10h

loc_42DAC0:
mov     [eax+2], dx

loc_42DAC4:
mov     eax, ecx
jmp     loc_431385
sub_42D90F endp




sub_42DACB proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ax, [eax]
and     ah, 0Fh
cwde
xor     ebx, ebx
test    dh, 3
jz      short loc_42DB0F
mov     ebx, 1
test    dh, 1
jz      short loc_42DAF8
cmp     eax, 400h
jle     short loc_42DB0F
cmp     eax, 0C00h
jge     short loc_42DB0F
jmp     short loc_42DB06

loc_42DAF8:
cmp     eax, 400h
jl      short loc_42DB06
cmp     eax, 0C00h
jle     short loc_42DB0F

loc_42DB06:
mov     esi, 1000h
sub     esi, eax
mov     eax, esi

loc_42DB0F:
test    dh, 0Ch
jz      short loc_42DB3C
mov     ebx, 1
test    dh, 4
jz      short loc_42DB2C
cmp     eax, 800h
jle     short loc_42DB3C
mov     edx, 1800h
jmp     short loc_42DB38

loc_42DB2C:
cmp     eax, 800h
jge     short loc_42DB3C
mov     edx, 800h

loc_42DB38:
sub     edx, eax
mov     eax, edx

loc_42DB3C:
mov     [ecx], ax
mov     eax, ebx
pop     esi
pop     ecx
pop     ebx
retn
sub_42DACB endp




sub_42DB45 proc near

var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_26= word ptr -26h
var_24= word ptr -24h
var_22= word ptr -22h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 0042C92E SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     edi, (offset dword_564A5A+2)
mov     esi, eax
movsd
movsd
xor     edx, edx
mov     eax, (offset dword_564A5A+2)
call    sub_42DCD6
mov     ebp, eax
xor     edx, edx
mov     ds:dword_77E6C2+2, edx
mov     ds:dword_77E6C6+2, edx
mov     ds:dword_77E6CA+2, edx

loc_42DB79:
dec     ebp
cmp     ebp, 0FFFFFFFFh
jz      loc_42DCCC
lea     ebx, [ebp+ebp+0]
mov     eax, ds:dword_564A52[ebx]
sar     eax, 10h
call    sub_42C4AB
mov     edi, eax
test    eax, eax
jg      short loc_42DBDD
mov     edx, ds:dword_564A52[ebx]
sar     edx, 10h
mov     eax, (offset dword_564A5A+2)
call    sub_42C3E5
cmp     edx, eax
jnz     short loc_42DB79
mov     edx, edi
and     edx, 1F00h
sar     edx, 1
neg     edx
mov     eax, ds:dword_77E6CA+2
sar     eax, 10h
inc     eax
sub     edx, eax
mov     eax, edx
mov     edx, ds:dword_564A5A+2
sar     edx, 10h
cmp     edx, eax
jnz     short loc_42DB79
jmp     loc_42DCCC

loc_42DBDD:
shl     eax, 2
sub     eax, edi
shl     eax, 2
add     eax, (offset dword_6E40AA+2)
mov     ebx, [eax+8]
test    word ptr [eax+6], 0FFFh
jz      short loc_42DBFA
mov     ebx, [ebx+4]
jmp     short loc_42DBFD

loc_42DBFA:
mov     ebx, [ebx+8]

loc_42DBFD:
mov     dx, [eax]
mov     [esp+2Ch+var_20], edx
mov     di, [eax+2]
mov     ax, [eax+4]
mov     [esp+2Ch+var_1C], eax

loc_42DC10:
cmp     dword ptr [ebx+8], 0
jz      loc_42DB79
mov     eax, [esp+2Ch+var_20]
mov     cx, [ebx]
add     eax, ecx
mov     [esp+2Ch+var_2C], ax
mov     eax, [esp+2Ch+var_20]
mov     si, [ebx+2]
add     eax, esi
mov     [esp+2Ch+var_2A], ax
mov     eax, [esp+2Ch+var_1C]
mov     dx, [ebx+4]
add     eax, edx
mov     [esp+2Ch+var_28], ax
mov     eax, [esp+2Ch+var_1C]
mov     cx, [ebx+6]
add     eax, ecx
mov     [esp+2Ch+var_26], ax
mov     ecx, [ebx+8]
xor     edx, edx
mov     dx, [ecx+4]
mov     eax, edx
xor     ah, dh
and     al, 0F0h
xor     esi, esi
mov     si, ax
sar     esi, 4
mov     eax, esp
call    ds:funcs_42C6FC[esi*4]
test    eax, eax
jnz     short loc_42DC7D

loc_42DC78:
add     ebx, 10h
jmp     short loc_42DC10

loc_42DC7D:
mov     esi, [ebx+0Ch]

loc_42DC80:
mov     ax, [ecx]
add     eax, edi
mov     [esp+2Ch+var_24], ax
mov     ax, [ecx+2]
add     eax, edi
mov     [esp+2Ch+var_22], ax
xor     edx, edx
mov     dx, [ecx+4]
mov     eax, esp
call    sub_42D185
test    byte ptr [ecx+7], 40h
jz      short loc_42DCC4
cmp     ds:byte_5F83D8, 0
jnz     short loc_42DCC4
cmp     byte ptr ds:dword_77EABA+3, 0
jz      short loc_42DCC4
mov     eax, ds:dword_77EABA
sar     eax, 18h
jmp     short loc_42DCCE

loc_42DCC4:
add     ecx, 8
dec     esi
jnz     short loc_42DC80
jmp     short loc_42DC78

loc_42DCCC:
xor     eax, eax

loc_42DCCE:
add     esp, 14h
jmp     loc_42C92E
sub_42DB45 endp ; sp-analysis failed




sub_42DCD6 proc near

var_34= word ptr -34h
var_32= word ptr -32h
var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_26= word ptr -26h
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
mov     esi, eax
mov     [esp+34h+var_24], edx
mov     edx, 8000h
mov     [esp+34h+var_2C], dx
mov     [esp+34h+var_34], dx
mov     [esp+34h+var_2E], dx
mov     [esp+34h+var_32], dx
mov     ax, [eax]
and     ah, 1
cmp     ax, 100h
jle     short loc_42DD19
mov     ebx, 8200h
mov     [esp+34h+var_28], bx
mov     [esp+34h+var_30], bx
jmp     short loc_42DD28

loc_42DD19:
mov     eax, 7E00h
mov     [esp+34h+var_28], ax
mov     [esp+34h+var_30], ax

loc_42DD28:
mov     ax, [esi+4]
and     ah, 1
cmp     ax, 100h
jle     short loc_42DD46
mov     edx, 8200h
mov     [esp+34h+var_26], dx
mov     [esp+34h+var_2A], dx
jmp     short loc_42DD55

loc_42DD46:
mov     edi, 7E00h
mov     [esp+34h+var_26], di
mov     [esp+34h+var_2A], di

loc_42DD55:
xor     ebx, ebx
xor     edi, edi
jmp     short loc_42DD79

loc_42DD5B:
cmp     [esp+34h+var_18], 0
jnz     short loc_42DD6F
mov     edx, [esp+34h+var_20]
mov     word ptr ds:(dword_564A52+2)[ebx*2], dx
inc     ebx

loc_42DD6F:
inc     edi
cmp     edi, 4
jge     loc_42DE23

loc_42DD79:
mov     eax, edi
shl     eax, 2
xor     edx, edx
mov     dx, [esp+eax+34h+var_34]
movsx   ecx, word ptr [esi]
add     edx, ecx
sar     edx, 9
xor     ecx, ecx
mov     cl, ds:byte_77EAC5
sub     edx, ecx
xor     ecx, ecx
mov     cx, ds:word_77EAAE
cmp     edx, ecx
jnb     loc_42DE23
mov     ax, [esp+eax+34h+var_32]
and     eax, 0FFFFh
mov     [esp+34h+var_1C], eax
mov     eax, [esi+2]
sar     eax, 10h
add     eax, [esp+34h+var_1C]
sar     eax, 9
movzx   ebp, ds:byte_77EAC3
sub     eax, ebp
movzx   ebp, ds:word_77EAB0
cmp     eax, ebp
jnb     short loc_42DE23
imul    eax, ecx
add     edx, eax
mov     [esp+34h+var_20], edx
mov     eax, edx
call    sub_42C4AB
mov     ecx, eax
test    eax, eax
jnz     short loc_42DDF7
cmp     [esp+34h+var_24], 0
jz      loc_42DD6F

loc_42DDF7:
xor     edx, edx
mov     [esp+34h+var_18], edx

loc_42DDFD:
cmp     edx, ebx
jge     loc_42DD5B
test    ecx, ecx
jle     short loc_42DE20
mov     eax, ds:dword_564A52[edx*2]
sar     eax, 10h
call    sub_42C4AB
cmp     ecx, eax
jz      loc_42DD6F

loc_42DE20:
inc     edx
jmp     short loc_42DDFD

loc_42DE23:
mov     eax, ebx
jmp     loc_42D907
sub_42DCD6 endp




sub_42DE2A proc near
push    edx
test    eax, eax
jz      short loc_42DE45
mov     edx, [eax]
mov     ds:dword_77E6C2+2, edx
mov     edx, [eax+4]
mov     ds:dword_77E6C6+2, edx
mov     eax, [eax+8]
jmp     short loc_42DE4F

loc_42DE45:
mov     ds:dword_77E6C2+2, eax
mov     ds:dword_77E6C6+2, eax

loc_42DE4F:
mov     ds:dword_77E6CA+2, eax
pop     edx
retn
sub_42DE2A endp




sub_42DE56 proc near

; FUNCTION CHUNK AT 0042C92E SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     eax, [eax+78h]
call    sub_42DE2A
xor     eax, eax
mov     al, [ebp+1]
call    sub_4DD420
test    eax, eax
jz      short loc_42DE78
xor     esi, esi
jmp     short loc_42DE7D

loc_42DE78:
mov     esi, 8000h

loc_42DE7D:
mov     ebx, [ebp+71h]
sar     ebx, 18h
lea     edx, [ebp+2Ch]
lea     eax, [ebp+14h]
mov     ecx, esi
call    sub_42DFC4
mov     edx, eax
test    eax, eax
jz      loc_42DF67
jle     short loc_42DF03
test    ah, 3
jz      short loc_42DEB9
mov     ax, word ptr ds:dword_564A5A+2
mov     [ebp+14h], ax
mov     eax, ds:dword_564A5A
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax

loc_42DEB9:
test    dh, 0Ch
jz      short loc_42DED6
mov     ax, word ptr ds:dword_564A5E+2
mov     [ebp+18h], ax
mov     eax, ds:dword_564A5E
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax

loc_42DED6:
test    dh, 30h
jz      short loc_42DEF3
mov     ax, word ptr ds:dword_564A5E
mov     [ebp+16h], ax
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax

loc_42DEF3:
cmp     byte ptr [ebp+74h], 2
jz      short loc_42DF67
mov     al, byte ptr ds:dword_77EABA
mov     [ebp+74h], al
jmp     short loc_42DF67

loc_42DF03:
cmp     esi, 8000h
jnz     short loc_42DF55
mov     ax, [ebp+2Ch]
mov     [ebp+14h], ax
mov     ax, [ebp+30h]
mov     [ebp+18h], ax
mov     eax, [ebp+34h]
mov     [ebp+1Ch], eax
mov     eax, [ebp+3Ch]
mov     [ebp+24h], eax
mov     word ptr [ebp+48h], 0
mov     ax, [ebp+48h]
mov     [ebp+44h], ax
cmp     byte ptr [ebp+74h], 0
jz      short loc_42DF67
mov     byte ptr [ebp+74h], 0
mov     ax, [ebp+2Eh]
mov     [ebp+16h], ax
mov     eax, [ebp+38h]
mov     [ebp+20h], eax
mov     word ptr [ebp+46h], 0
jmp     short loc_42DF67

loc_42DF55:
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd

loc_42DF67:
mov     eax, edx
jmp     loc_42C92E
sub_42DE56 endp




sub_42DF6E proc near
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, ecx
call    sub_42DE2A
xor     ecx, ecx
mov     eax, edi
call    sub_42DFC4
mov     edx, eax
test    eax, eax
jz      short loc_42DFBF
jle     short loc_42DFBD
test    ah, 3
jz      short loc_42DF9A
mov     ax, word ptr ds:dword_564A5A+2
mov     [edi], ax

loc_42DF9A:
test    dh, 0Ch
jz      short loc_42DFA9
mov     ax, word ptr ds:dword_564A5E+2
mov     [edi+4], ax

loc_42DFA9:
test    dh, 30h
jz      short loc_42DFBF
mov     ax, word ptr ds:dword_564A5E
mov     [edi+2], ax
mov     eax, edx
pop     edi
pop     esi
retn

loc_42DFBD:
movsd
movsd

loc_42DFBF:
mov     eax, edx
pop     edi
pop     esi
retn
sub_42DF6E endp




sub_42DFC4 proc near

var_38= dword ptr -38h
var_34= word ptr -34h
var_32= word ptr -32h
var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
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
sub     esp, 28h
push    eax
mov     eax, ebx
mov     [esp+38h+var_20], ecx
xor     ah, bh
mov     byte ptr ds:dword_77EABA+2, ah
xor     ebx, ebx
mov     [esp+38h+var_1C], ebx
mov     edi, (offset dword_564B2A+2)
mov     esi, edx
movsd
movsd
mov     edi, (offset dword_564A5A+2)
mov     esi, [esp+38h+var_38]
movsd
movsd
mov     dx, word ptr ds:dword_564A5A+2
mov     cx, word ptr ds:dword_564B2A+2
sub     edx, ecx
mov     ds:word_564A44, dx
mov     dx, word ptr ds:dword_564A5E
mov     si, word ptr ds:dword_564B2E
sub     edx, esi
mov     word ptr ds:dword_564A46, dx
mov     dx, word ptr ds:dword_564A5E+2
mov     di, word ptr ds:dword_564B2E+2
sub     edx, edi
mov     word ptr ds:dword_564A46+2, dx
mov     byte ptr ds:dword_77EABA, al
xor     eax, eax
mov     ds:word_77EA94, ax
xor     edx, edx
mov     ds:word_77EA98, dx
xor     ecx, ecx
mov     ds:word_77EA9A, cx
xor     esi, esi
mov     ds:word_77EA96, si
xor     edi, edi
mov     ds:word_77EA92, di
mov     ds:word_77EA9C, ax
mov     ds:word_77EA8C, dx
mov     ds:word_77EA90, cx
mov     ds:word_77EA86, si
mov     ds:word_77EA8E, di
mov     ds:word_77EA8A, ax
mov     ds:word_77EA88, dx
xor     edx, edx
mov     eax, (offset dword_564A5A+2)
call    sub_42DCD6
mov     [esp+38h+var_24], eax

loc_42E0A7:
mov     eax, [esp+38h+var_24]
mov     [esp+38h+var_28], eax

loc_42E0AF:
mov     esi, [esp+38h+var_28]
dec     esi
mov     [esp+38h+var_28], esi
cmp     esi, 0FFFFFFFFh
jz      loc_42E2F3
mov     ax, word ptr ds:dword_564A5A+2
mov     cx, word ptr ds:dword_564B2A+2
sub     eax, ecx
mov     word ptr ds:dword_564A62+2, ax
mov     ax, word ptr ds:dword_564A5E
mov     si, word ptr ds:dword_564B2E
sub     eax, esi
mov     ds:word_564A66, ax
mov     ax, word ptr ds:dword_564A5E+2
mov     di, word ptr ds:dword_564B2E+2
sub     eax, edi
mov     ds:word_564A68, ax
mov     ecx, [esp+38h+var_28]
mov     ecx, ds:dword_564A52[ecx*2]
sar     ecx, 10h
mov     eax, ecx
call    sub_42C4AB
mov     edx, eax
test    eax, eax
jg      loc_42E1EE
xor     ebx, ebx
mov     eax, (offset dword_564A5A+2)
call    sub_42C3E5
cmp     ecx, eax
jnz     short loc_42E0AF
mov     edi, edx
and     edi, 1F00h
sar     edi, 1
neg     edi
mov     eax, ds:dword_77E6CA+2
sar     eax, 10h
inc     eax
mov     ecx, edi
sub     ecx, eax
mov     esi, ds:dword_564A5A+2
sar     esi, 10h
cmp     esi, ecx
jle     short loc_42E193
mov     ebx, 1
xor     edx, edx
mov     ds:word_77EA96, dx
mov     ds:word_77EA92, dx
mov     ds:word_77EA9C, dx
mov     word ptr ds:dword_564A5E, cx
cmp     ds:word_564A66, 0
jle     loc_42E2F3
xor     dl, dl
mov     byte ptr ds:dword_77EABA, dl
jmp     loc_42E2F3

loc_42E193:
test    dh, 60h
jz      loc_42E0AF
and     edx, 6000h
sar     edx, 0Dh
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 7
mov     ecx, edi
sub     ecx, eax
mov     eax, ds:dword_77E6CA
sar     eax, 10h
dec     eax
sub     ecx, eax
cmp     esi, ecx
jge     loc_42E0AF
mov     ebx, 1
xor     esi, esi
mov     ds:word_77EA96, si
mov     ds:word_77EA92, si
mov     ds:word_77EA9C, si
mov     word ptr ds:dword_564A5E, cx
jmp     loc_42E2FB

loc_42E1EE:
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, (offset dword_6E40AA+2)
mov     ecx, [eax+8]
test    word ptr [eax+6], 0FFFh
jz      short loc_42E20B
mov     ecx, [ecx+4]
jmp     short loc_42E20E

loc_42E20B:
mov     ecx, [ecx+8]

loc_42E20E:
mov     dx, [eax]
mov     [esp+38h+var_14], edx
mov     dx, [eax+2]
mov     [esp+38h+var_10], edx
mov     ax, [eax+4]
mov     [esp+38h+var_18], eax

loc_42E225:
cmp     dword ptr [ecx+8], 0
jz      loc_42E0AF
mov     eax, [esp+38h+var_14]
mov     dx, [ecx]
add     eax, edx
mov     [esp+38h+var_34], ax
mov     eax, [esp+38h+var_14]
mov     si, [ecx+2]
add     eax, esi
mov     [esp+38h+var_32], ax
mov     eax, [esp+38h+var_18]
mov     di, [ecx+4]
add     eax, edi
mov     [esp+38h+var_30], ax
mov     eax, [esp+38h+var_18]
mov     dx, [ecx+6]
add     eax, edx
mov     [esp+38h+var_2E], ax
mov     esi, [ecx+8]
xor     edx, edx
mov     dx, [esi+4]
cmp     edx, 100h
jnb     short loc_42E299
mov     edi, edx
and     edi, 0F0h
shr     edi, 4
shl     edi, 2
lea     eax, [esp+38h+var_34]
call    ds:funcs_42C6FC[edi]
mov     ebp, eax
test    eax, eax
jnz     short loc_42E2A0

loc_42E299:
xor     ebx, ebx

loc_42E29B:
add     ecx, 10h
jmp     short loc_42E225

loc_42E2A0:
mov     edi, [ecx+0Ch]

loc_42E2A3:
xor     eax, eax
mov     ax, [esi+6]
mov     edx, [esp+38h+var_20]
xor     dh, 80h
and     eax, edx
test    ah, 80h
jnz     short loc_42E2EB
mov     eax, [esp+38h+var_10]
mov     bx, [esi]
add     eax, ebx
mov     [esp+38h+var_2C], ax
mov     eax, [esp+38h+var_10]
mov     dx, [esi+2]
add     eax, edx
mov     [esp+38h+var_2A], ax
xor     edx, edx
mov     dx, [esi+4]
mov     ebx, ebp
lea     eax, [esp+38h+var_34]
call    sub_42E629
mov     ebx, eax
test    eax, eax
jnz     short loc_42E2F3

loc_42E2EB:
add     esi, 8
dec     edi
jnz     short loc_42E2A3
jmp     short loc_42E29B

loc_42E2F3:
test    ebx, ebx
jz      loc_42E3AE

loc_42E2FB:
mov     ax, ds:word_77EA96
add     word ptr ds:dword_564A5A+2, ax
mov     ax, ds:word_77EA9C
add     word ptr ds:dword_564A5E+2, ax
mov     ax, ds:word_77EA92
add     word ptr ds:dword_564A5E, ax
mov     ax, ds:word_77EA94
mov     ds:word_77EA96, ax
mov     ax, ds:word_77EA98
mov     ds:word_77EA92, ax
mov     ax, ds:word_77EA9A
mov     ds:word_77EA9C, ax
mov     ax, ds:word_77EA8C
mov     ds:word_77EA8E, ax
mov     ax, ds:word_77EA90
mov     ds:word_77EA8A, ax
mov     ax, ds:word_77EA86
mov     ds:word_77EA88, ax
xor     eax, eax
mov     ds:word_77EA94, ax
mov     ds:word_77EA98, ax
mov     ds:word_77EA9A, ax
mov     ds:word_77EA8C, ax
mov     ds:word_77EA90, ax
mov     ds:word_77EA86, ax
mov     eax, [esp+38h+var_1C]
lea     ecx, [eax+1]
mov     [esp+38h+var_1C], ecx
cmp     eax, 8
jl      loc_42E0A7
mov     eax, 80000000h
jmp     loc_42CE40

loc_42E3AE:
mov     eax, [esp+38h+var_38]
movsx   eax, word ptr [eax]
mov     ecx, ds:dword_564A5A
sar     ecx, 10h
sub     eax, ecx
mov     ecx, eax
mov     eax, [esp+38h+var_38]
mov     eax, [eax+2]
sar     eax, 10h
mov     ebx, ds:dword_564A5E
sar     ebx, 10h
sub     eax, ebx
mov     ebx, eax
mov     edx, [esp+38h+var_38]
mov     edx, [edx]
sar     edx, 10h
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     edx, eax
test    ecx, ecx
jnz     short loc_42E3FC
test    ebx, ebx
jnz     short loc_42E3FC
test    edx, edx
jnz     short loc_42E3FC
xor     eax, eax
jmp     loc_42CE40

loc_42E3FC:
test    ecx, ecx
jge     short loc_42E406
mov     eax, ecx
neg     eax
jmp     short loc_42E408

loc_42E406:
mov     eax, ecx

loc_42E408:
test    ebx, ebx
jge     short loc_42E412
mov     esi, ebx
neg     esi
jmp     short loc_42E414

loc_42E412:
mov     esi, ebx

loc_42E414:
cmp     eax, esi
jle     short loc_42E451
test    ecx, ecx
jge     short loc_42E422
mov     esi, ecx
neg     esi
jmp     short loc_42E424

loc_42E422:
mov     esi, ecx

loc_42E424:
test    edx, edx
jge     short loc_42E42E
mov     eax, edx
neg     eax
jmp     short loc_42E430

loc_42E42E:
mov     eax, edx

loc_42E430:
cmp     esi, eax
jle     short loc_42E446
test    ecx, ecx
jle     short loc_42E43F
mov     eax, 1
jmp     short loc_42E488

loc_42E43F:
mov     eax, 2
jmp     short loc_42E488

loc_42E446:
test    edx, edx
jle     short loc_42E483

loc_42E44A:
mov     eax, 5
jmp     short loc_42E488

loc_42E451:
test    ebx, ebx
jge     short loc_42E45B
mov     esi, ebx
neg     esi
jmp     short loc_42E45D

loc_42E45B:
mov     esi, ebx

loc_42E45D:
test    edx, edx
jge     short loc_42E467
mov     eax, edx
neg     eax
jmp     short loc_42E469

loc_42E467:
mov     eax, edx

loc_42E469:
cmp     esi, eax
jle     short loc_42E47F
test    ebx, ebx
jle     short loc_42E478
mov     eax, 3
jmp     short loc_42E488

loc_42E478:
mov     eax, 4
jmp     short loc_42E488

loc_42E47F:
test    edx, edx
jg      short loc_42E44A

loc_42E483:
mov     eax, 6

loc_42E488:
test    ecx, ecx
jz      short loc_42E496
jle     short loc_42E493
or      ah, 1
jmp     short loc_42E496

loc_42E493:
or      ah, 2

loc_42E496:
test    ebx, ebx
jz      short loc_42E4A4
jle     short loc_42E4A1
or      ah, 4
jmp     short loc_42E4A4

loc_42E4A1:
or      ah, 8

loc_42E4A4:
test    edx, edx
jz      loc_42CE40
jle     short loc_42E4B6
or      ah, 10h
jmp     loc_42CE40

loc_42E4B6:
or      ah, 20h
jmp     loc_42CE40
sub_42DFC4 endp

db 8Dh, 40h, 0
jpt_42E6AB dd offset loc_42E6B2, offset loc_42E6D7 ; jump table for switch statement
dd offset loc_42E7B7, offset loc_42E83C
dd offset loc_42E92C, offset loc_42E92C
dd offset loc_42E969, offset loc_42E969
dd offset loc_42EE4B, offset loc_42EF09
dd offset loc_42EFC1, offset loc_42F080
dd offset loc_42F142, offset loc_42F2EC
dd offset loc_42F43F, offset loc_42E8E1
dd offset loc_42F628, offset loc_42F671
dd offset loc_42F6AC, offset loc_42F751
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset loc_42F794, offset loc_42F95E
dd offset loc_42FAFA, offset loc_42FC85
dd offset loc_42E9A6, offset loc_42E9A6
dd offset loc_42E9A6, offset loc_42E9A6
dd offset loc_42E6B2, offset loc_42EA1B
dd offset loc_42EA1B, offset loc_42EDED
dd offset loc_42F794, offset loc_42F872
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset loc_42E6B2, offset loc_42EAF9
dd offset loc_42EAF9, offset loc_42EDED
dd offset loc_42F95E, offset loc_42FA34
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset loc_42E6B2, offset loc_42EC12
dd offset loc_42EC12, offset loc_42EDED
dd offset loc_42FAFA, offset loc_42FBC6
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset def_42E6AB, offset def_42E6AB
dd offset loc_42E6B2, offset loc_42ED24
dd offset loc_42ED24, offset loc_42EDED
dd offset loc_42FC85, offset loc_42FD7F
jpt_42F4CF dd offset loc_42F4D6 ; jump table for switch statement
dd offset loc_42F539
dd offset loc_42F57F
dd offset loc_42F5E5



sub_42E629 proc near

var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
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

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 38h
mov     word ptr [esp+48h+var_14], dx
movsx   esi, word ptr [eax]
mov     edx, [eax]
sar     edx, 10h
mov     [esp+48h+var_24], edx
mov     ebp, [eax+2]
sar     ebp, 10h
mov     edx, [eax+4]
sar     edx, 10h
mov     [esp+48h+var_20], edx
mov     edx, [eax+6]
sar     edx, 10h
mov     ecx, ds:dword_77E6CA+2
sar     ecx, 10h
mov     ebx, edx
sub     ebx, ecx
mov     [esp+48h+var_1C], ebx
mov     ebx, [eax+8]
sar     ebx, 10h
mov     eax, ds:dword_77E6CA
sar     eax, 10h
mov     ecx, ebx
sub     ecx, eax
mov     [esp+48h+var_28], ecx
mov     ecx, edx
xor     edi, edi
mov     [esp+48h+var_34], edx
xor     edx, edx
mov     [esp+48h+var_30], edi
xor     eax, eax
mov     [esp+48h+var_2C], edi
xor     ah, dh
mov     byte ptr [esp+48h+var_14+1], ah
mov     edx, [esp+48h+var_14]
cmp     dx, 55h         ; switch 86 cases
ja      def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
xor     eax, eax
mov     ax, dx
jmp     jpt_42E6AB[eax*4] ; switch jump

loc_42E6B2:             ; jumptable 0042E6AB cases 0,32,48,64,80
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     short loc_42E6D0
cmp     eax, [esp+48h+var_28]
jge     short loc_42E6D0
mov     eax, 1
jmp     loc_42F749

loc_42E6D0:
xor     eax, eax
jmp     loc_42F749

loc_42E6D7:             ; jumptable 0042E6AB case 1
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, [esp+48h+var_1C]
cmp     eax, edx
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42E76C
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, edx
cmp     eax, 8
jge     short loc_42E76C
mov     cl, byte ptr ds:dword_77EABA+2
test    cl, cl
jnz     short loc_42E76C
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A5E, ax
mov     word ptr ds:dword_77EABA, 100h
xor     ch, ch

loc_42E750:
mov     ds:word_77EA96, cx
xor     esi, esi

loc_42E759:
mov     ds:word_77EA92, si
mov     ds:word_77EA9C, si
jmp     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79

loc_42E76C:
mov     ebx, 1
mov     edx, (offset dword_564B2A+2)
mov     eax, (offset dword_564A5A+2)
call    sub_430A01
test    eax, eax
jz      def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     ds:word_564A66, 0
jl      short loc_42E79B
mov     word ptr ds:dword_77EABA, 100h

loc_42E79B:
xor     edi, edi
mov     ds:word_77EA96, di
mov     ds:word_77EA92, di
mov     ds:word_77EA9C, di
jmp     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79

loc_42E7B7:             ; jumptable 0042E6AB case 2
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
xor     ebx, ebx
mov     edx, (offset dword_564B2A+2)
mov     eax, (offset dword_564A5A+2)
call    sub_430A01
test    eax, eax
jz      def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     ds:word_564A66, 0
jl      short loc_42E823
mov     word ptr ds:dword_77EABA, 100h

loc_42E823:
xor     eax, eax
mov     ds:word_77EA96, ax
mov     ds:word_77EA92, ax

loc_42E831:
mov     ds:word_77EA9C, ax
jmp     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79

loc_42E83C:             ; jumptable 0042E6AB case 3
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
cmp     ds:word_564A66, 0
jge     short loc_42E88F
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42E8BE

loc_42E88F:
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A5E, ax
mov     word ptr ds:dword_77EABA, 100h
xor     edx, edx
mov     ds:word_77EA96, dx
mov     ds:word_77EA92, dx

loc_42E8B2:
mov     ds:word_77EA9C, dx
jmp     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79

loc_42E8BE:
mov     ebx, 3
mov     edx, (offset dword_564B2A+2)
mov     eax, (offset dword_564A5A+2)
call    sub_430A01
test    eax, eax
jz      def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
xor     ecx, ecx
jmp     loc_42E750

loc_42E8E1:             ; jumptable 0042E6AB case 15
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
mov     word ptr ds:dword_564A5E, ax
jmp     loc_42E823

loc_42E92C:             ; jumptable 0042E6AB cases 4,5
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
jmp     loc_42ECC8

loc_42E969:             ; jumptable 0042E6AB cases 6,7
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
jmp     loc_42EBCC

loc_42E9A6:             ; jumptable 0042E6AB cases 28-31
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
xor     edx, edx
mov     dx, word ptr [esp+48h+var_14]
sub     edx, 1Ch
mov     eax, (offset dword_564A5A+2)
call    sub_43139D
test    eax, eax
jz      def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     ds:word_564A66, 0
jl      short loc_42EA0D
mov     word ptr ds:dword_77EABA, 100h

loc_42EA0D:
xor     esi, esi
mov     ds:word_77EA96, si
jmp     loc_42E759

loc_42EA1B:             ; jumptable 0042E6AB cases 33,34
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
cmp     ds:word_564A44, 0
jge     short loc_42EA69
mov     eax, dword ptr ds:unk_564A42
sar     eax, 10h
neg     eax
jmp     short loc_42EA71

loc_42EA69:
mov     eax, dword ptr ds:unk_564A42
sar     eax, 10h

loc_42EA71:
mov     edx, ds:dword_77E6C2+2
sar     edx, 10h
add     edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
imul    edx, eax
mov     [esp+48h+var_18], edx
cmp     word ptr ds:dword_564A46+2, 0
jge     short loc_42EA9F
mov     eax, ds:dword_564A46
sar     eax, 10h
neg     eax
jmp     short loc_42EAA7

loc_42EA9F:
mov     eax, ds:dword_564A46
sar     eax, 10h

loc_42EAA7:
mov     edx, ds:dword_77E6C6
sar     edx, 10h
sub     eax, edx
mov     esi, [esp+48h+var_20]
sub     esi, ebp
imul    esi, eax
cmp     esi, [esp+48h+var_18]
jge     short loc_42EAD6
test    byte ptr ds:dword_77EABA+2, 1
jz      short loc_42EAD6

loc_42EACA:
mov     word ptr [esp+48h+var_14], 4
jmp     loc_42ECC8

loc_42EAD6:
cmp     esi, [esp+48h+var_18]
jle     loc_42FE8A
test    byte ptr ds:dword_77EABA+2, 8

loc_42EAE7:
jz      loc_42FE8A
mov     word ptr [esp+48h+var_14], 6
jmp     loc_42EBCC

loc_42EAF9:             ; jumptable 0042E6AB cases 49,50
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
cmp     ds:word_564A44, 0
jge     short loc_42EB47
mov     eax, dword ptr ds:unk_564A42
sar     eax, 10h
neg     eax
jmp     short loc_42EB4F

loc_42EB47:
mov     eax, dword ptr ds:unk_564A42
sar     eax, 10h

loc_42EB4F:
mov     edx, ds:dword_77E6C2
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
imul    edx, eax
mov     [esp+48h+var_18], edx
cmp     word ptr ds:dword_564A46+2, 0
jge     short loc_42EB7F
mov     eax, ds:dword_564A46
sar     eax, 10h
neg     eax
jmp     short loc_42EB87

loc_42EB7F:
mov     eax, ds:dword_564A46
sar     eax, 10h

loc_42EB87:
mov     edx, ds:dword_77E6C6
sar     edx, 10h
sub     eax, edx
mov     esi, [esp+48h+var_20]
sub     esi, ebp
imul    esi, eax
cmp     esi, [esp+48h+var_18]
jge     short loc_42EBAE
test    byte ptr ds:dword_77EABA+2, 2
jnz     loc_42EACA

loc_42EBAE:
cmp     esi, [esp+48h+var_18]
jle     loc_42FE8A
test    byte ptr ds:dword_77EABA+2, 8

loc_42EBBF:
jz      loc_42FE8A
mov     word ptr [esp+48h+var_14], 7

loc_42EBCC:
xor     ebx, ebx
mov     bx, word ptr [esp+48h+var_14]
sub     ebx, 6
mov     edx, (offset dword_564B2A+2)
mov     eax, (offset dword_564A5A+2)
call    sub_430F84
test    eax, eax
jz      short loc_42EC04
cmp     ds:word_564A66, 0
jl      short loc_42EBFC
mov     word ptr ds:dword_77EABA, 100h

loc_42EBFC:
xor     eax, eax
mov     ds:word_77EA92, ax

loc_42EC04:
xor     edx, edx
mov     ds:word_77EA96, dx
jmp     loc_42E8B2

loc_42EC12:             ; jumptable 0042E6AB cases 65,66
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
cmp     ds:word_564A44, 0
jge     short loc_42EC60
mov     eax, dword ptr ds:unk_564A42
sar     eax, 10h
neg     eax
jmp     short loc_42EC68

loc_42EC60:
mov     eax, dword ptr ds:unk_564A42
sar     eax, 10h

loc_42EC68:
mov     edx, ds:dword_77E6C2+2
sar     edx, 10h
add     eax, edx
mov     edx, [esp+48h+var_24]
sub     edx, esi
imul    eax, edx
mov     [esp+48h+var_18], eax
cmp     word ptr ds:dword_564A46+2, 0
jge     short loc_42EC96
mov     eax, ds:dword_564A46
sar     eax, 10h
neg     eax
jmp     short loc_42EC9E

loc_42EC96:
mov     eax, ds:dword_564A46
sar     eax, 10h

loc_42EC9E:
mov     edx, ds:dword_77E6C6+2
sar     edx, 10h
add     eax, edx
mov     esi, [esp+48h+var_20]
sub     esi, ebp
imul    esi, eax
cmp     esi, [esp+48h+var_18]
jge     short loc_42ED0E
test    byte ptr ds:dword_77EABA+2, 1
jz      short loc_42ED0E

loc_42ECC1:
mov     word ptr [esp+48h+var_14], 5

loc_42ECC8:
xor     ebx, ebx
mov     bx, word ptr [esp+48h+var_14]
sub     ebx, 4
mov     edx, (offset dword_564B2A+2)
mov     eax, (offset dword_564A5A+2)
call    sub_430D5F
test    eax, eax
jz      short loc_42ED01
cmp     ds:word_564A66, 0
jl      short loc_42ECF8
mov     word ptr ds:dword_77EABA, 100h

loc_42ECF8:
xor     edi, edi
mov     ds:word_77EA92, di

loc_42ED01:
xor     eax, eax
mov     ds:word_77EA96, ax
jmp     loc_42E831

loc_42ED0E:
cmp     esi, [esp+48h+var_18]
jle     loc_42FE8A
test    byte ptr ds:dword_77EABA+2, 4
jmp     loc_42EAE7

loc_42ED24:             ; jumptable 0042E6AB cases 81,82
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
cmp     ds:word_564A44, 0
jge     short loc_42ED72
mov     eax, dword ptr ds:unk_564A42
sar     eax, 10h
neg     eax
jmp     short loc_42ED7A

loc_42ED72:
mov     eax, dword ptr ds:unk_564A42
sar     eax, 10h

loc_42ED7A:
mov     edx, ds:dword_77E6C2+2
sar     edx, 10h
add     edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
imul    edx, eax
mov     [esp+48h+var_18], edx
cmp     word ptr ds:dword_564A46+2, 0
jge     short loc_42EDA8
mov     eax, ds:dword_564A46
sar     eax, 10h
neg     eax
jmp     short loc_42EDB0

loc_42EDA8:
mov     eax, ds:dword_564A46
sar     eax, 10h

loc_42EDB0:
mov     edx, ds:dword_77E6C6
sar     edx, 10h
sub     eax, edx
mov     esi, [esp+48h+var_20]
sub     esi, ebp
imul    esi, eax
cmp     esi, [esp+48h+var_18]
jge     short loc_42EDD7
test    byte ptr ds:dword_77EABA+2, 2
jnz     loc_42ECC1

loc_42EDD7:
cmp     esi, [esp+48h+var_18]
jle     loc_42FE8A
test    byte ptr ds:dword_77EABA+2, 4
jmp     loc_42EBBF

loc_42EDED:             ; jumptable 0042E6AB cases 35,51,67,83
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A2E, ax
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
cmp     ds:word_564A66, 0
jl      loc_42FE8A
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A5E, ax

loc_42EE3D:
mov     word ptr ds:dword_77EABA, 100h
jmp     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79

loc_42EE4B:             ; jumptable 0042E6AB case 8
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42EE72
test    byte ptr ds:dword_77EABA+2, 8
jz      short loc_42EE72
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42EE72:
mov     esi, ds:dword_564A5E
sar     esi, 10h
mov     eax, ds:dword_564A2E
sar     eax, 10h
mov     edx, esi
sub     edx, eax
mov     [esp+48h+var_18], edx
mov     eax, ds:dword_77E6C6+2
sar     eax, 10h
mov     edx, ds:dword_77E6C6
sar     edx, 10h
sub     eax, edx
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     edi, [esp+48h+var_20]
sub     edi, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    edi
sub     ecx, eax
mov     edx, [esp+48h+var_20]
sub     edx, esi
mov     eax, ebx
sub     eax, ecx
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    edi
lea     edi, [ecx+eax]
mov     esi, [esp+48h+var_34]
cmp     edi, esi
jge     short loc_42EED5
mov     edi, esi

loc_42EED5:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, [esp+48h+var_20]
sub     eax, ebp
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     esi, eax
test    eax, eax
jle     loc_42F20C
add     word ptr ds:dword_564A2E+2, ax
jmp     loc_42F20C

loc_42EF09:             ; jumptable 0042E6AB case 9
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42EF30
test    byte ptr ds:dword_77EABA+2, 4
jz      short loc_42EF30
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42EF30:
mov     eax, ds:dword_564A36
sar     eax, 10h
mov     edi, ds:dword_564A5E
sar     edi, 10h
sub     eax, edi
mov     [esp+48h+var_18], eax
mov     eax, ds:dword_77E6C6+2
sar     eax, 10h
mov     edx, ds:dword_77E6C6
sar     edx, 10h
sub     eax, edx
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     esi, [esp+48h+var_20]
sub     esi, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    esi
sub     ecx, eax
sub     edi, ebp
mov     edx, ebx
sub     edx, ecx
imul    edx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
mov     esi, [esp+48h+var_34]
cmp     edi, esi
jge     short loc_42EF8D
mov     edi, esi

loc_42EF8D:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, [esp+48h+var_20]
sub     eax, ebp
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     esi, eax
test    eax, eax
jle     loc_42F20C
sub     word ptr ds:dword_564A36+2, ax
jmp     loc_42F20C

loc_42EFC1:             ; jumptable 0042E6AB case 10
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42EFE8
test    byte ptr ds:dword_77EABA+2, 1
jz      short loc_42EFE8
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42EFE8:
mov     eax, ds:dword_564A32
sar     eax, 10h
mov     edi, ds:dword_564A5A
sar     edi, 10h
sub     eax, edi
mov     [esp+48h+var_18], eax
mov     edx, ds:dword_77E6C2+2
sar     edx, 10h
mov     eax, ds:dword_77E6C2
sar     eax, 10h
sub     edx, eax
mov     eax, edx
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     ebp, [esp+48h+var_24]
sub     ebp, esi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
sub     ecx, eax
mov     edx, edi
sub     edx, esi
mov     eax, ebx
sub     eax, ecx
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
lea     edi, [ecx+eax]
mov     ebp, [esp+48h+var_34]
cmp     edi, ebp
jge     short loc_42F049
mov     edi, ebp

loc_42F049:
mov     edx, ds:dword_564A5A+2
sar     edx, 10h
mov     eax, ebx
sub     eax, edx
mov     edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     esi, eax
test    eax, eax
jle     loc_42F432
sub     word ptr ds:dword_564A32+2, si
jmp     loc_42F432

loc_42F080:             ; jumptable 0042E6AB case 11
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42F0A7
test    byte ptr ds:dword_77EABA+2, 2
jz      short loc_42F0A7
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42F0A7:
mov     edi, ds:dword_564A5A
sar     edi, 10h
mov     eax, ds:dword_564A2A
sar     eax, 10h
mov     edx, edi
sub     edx, eax
mov     [esp+48h+var_18], edx
mov     edx, ds:dword_77E6C2+2
sar     edx, 10h
mov     eax, ds:dword_77E6C2
sar     eax, 10h
sub     edx, eax
mov     eax, edx
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     ebp, [esp+48h+var_24]
sub     ebp, esi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
sub     ecx, eax
mov     edx, [esp+48h+var_24]
sub     edx, edi
mov     eax, ebx
sub     eax, ecx
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
lea     edi, [ecx+eax]
mov     ebp, [esp+48h+var_34]
cmp     edi, ebp
jge     short loc_42F10C
mov     edi, ebp

loc_42F10C:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, [esp+48h+var_24]
sub     edx, esi
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     esi, eax
test    eax, eax
jle     loc_42F432
add     word ptr ds:dword_564A2A+2, ax
jmp     loc_42F432

loc_42F142:             ; jumptable 0042E6AB case 12
mov     edx, ds:dword_77E6C6+2
sar     edx, 10h
mov     eax, ds:dword_77E6C6
sar     eax, 10h
sub     edx, eax
mov     eax, edx
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     esi, [esp+48h+var_20]
sub     esi, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     edx, ecx
sub     edx, ebx
sub     edx, eax
add     ecx, edx
mov     edx, [esp+48h+var_20]
sub     edx, ebp
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
lea     edx, [eax+ebp]
mov     eax, ds:dword_564A5E
sar     eax, 10h
cmp     eax, edx
jge     loc_42F27D
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+48h+var_20]
sub     edx, eax
mov     eax, ebx
sub     eax, ecx
imul    edx, eax
mov     esi, [esp+48h+var_20]
sub     esi, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
mov     eax, [esp+48h+var_34]
cmp     edi, eax
jge     short loc_42F1C4
mov     edi, eax

loc_42F1C4:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, [esp+48h+var_20]
sub     eax, ebp
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx

loc_42F1E2:
mov     [esp+48h+var_18], eax
test    eax, eax
jle     short loc_42F1F5
mov     eax, [esp+48h+var_18]
add     word ptr ds:dword_564A2E+2, ax

loc_42F1F5:
mov     edx, ds:dword_564A5E
sar     edx, 10h
mov     eax, ds:dword_564A2E

loc_42F203:
sar     eax, 10h
sub     edx, eax

loc_42F208:
mov     [esp+48h+var_18], edx

loc_42F20C:
mov     [esp+48h+var_30], 20h ; ' '

def_42F4CF:             ; jumptable 0042F4CF default case
mov     eax, ds:dword_77E6CA+2
sar     eax, 10h
sub     edi, eax
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, edi
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
cmp     byte ptr ds:dword_77EABA, 0
jnz     loc_42FEDE
mov     edx, eax
sub     edx, edi
cmp     edx, 20h ; ' '
jge     loc_42FEDE
sub     eax, [esp+48h+var_1C]
cmp     eax, [esp+48h+var_18]
jge     loc_42FEDE
mov     word ptr ds:dword_564A5E, di
xor     ebx, ebx
mov     ds:word_77EA92, bx
jmp     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79

loc_42F27D:
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, ebp
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     esi, [esp+48h+var_20]
sub     esi, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
mov     esi, [esp+48h+var_34]
cmp     edi, esi
jge     short loc_42F2A8
mov     edi, esi

loc_42F2A8:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, [esp+48h+var_20]
sub     eax, ebp
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     [esp+48h+var_18], eax
test    eax, eax
jle     short loc_42F2D9
mov     eax, [esp+48h+var_18]
sub     word ptr ds:dword_564A36+2, ax

loc_42F2D9:
mov     edx, ds:dword_564A36
sar     edx, 10h
mov     eax, ds:dword_564A5E
jmp     loc_42F203

loc_42F2EC:             ; jumptable 0042E6AB case 13
mov     eax, ds:dword_77E6C2+2
sar     eax, 10h
mov     edx, ds:dword_77E6C2
sar     edx, 10h
sub     eax, edx
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     edi, [esp+48h+var_24]
sub     edi, esi
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     edx, ecx
sub     edx, ebx
sub     edx, eax
add     ecx, edx
mov     edx, [esp+48h+var_24]
sub     edx, esi
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
lea     edx, [esi+eax]
mov     eax, ds:dword_564A5A
sar     eax, 10h
cmp     eax, edx
jle     loc_42F3B5
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, esi
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     edi, [esp+48h+var_24]
sub     edi, esi
mov     eax, edx
sar     edx, 1Fh
idiv    edi
lea     edi, [ecx+eax]
mov     edx, [esp+48h+var_34]
cmp     edi, edx
jge     short loc_42F368
mov     edi, edx

loc_42F368:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     [esp+48h+var_18], eax
test    eax, eax
jle     short loc_42F399
mov     eax, [esp+48h+var_18]
sub     word ptr ds:dword_564A32+2, ax

loc_42F399:
mov     eax, ds:dword_564A32
sar     eax, 10h
mov     edx, ds:dword_564A5A
sar     edx, 10h

loc_42F3AA:
sub     eax, edx
mov     [esp+48h+var_18], eax
jmp     loc_42F432

loc_42F3B5:
mov     edx, ds:dword_564A5A
sar     edx, 10h
mov     eax, [esp+48h+var_24]
sub     eax, edx
mov     edx, eax
mov     eax, ebx
sub     eax, ecx
imul    edx, eax
mov     edi, [esp+48h+var_24]
sub     edi, esi
mov     eax, edx
sar     edx, 1Fh
idiv    edi
lea     edi, [ecx+eax]
mov     ebp, [esp+48h+var_34]
cmp     edi, ebp
jge     short loc_42F3E7
mov     edi, ebp

loc_42F3E7:
mov     edx, ds:dword_564A5A+2
sar     edx, 10h
mov     eax, ebx
sub     eax, edx
mov     edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx

loc_42F408:
mov     [esp+48h+var_18], eax
test    eax, eax
jle     short loc_42F41B
mov     eax, [esp+48h+var_18]
add     word ptr ds:dword_564A2A+2, ax

loc_42F41B:
mov     edx, ds:dword_564A5A
sar     edx, 10h
mov     eax, ds:dword_564A2A
sar     eax, 10h
sub     edx, eax
mov     [esp+48h+var_18], edx

loc_42F432:
mov     [esp+48h+var_30], 10h
jmp     def_42F4CF      ; jumptable 0042F4CF default case

loc_42F43F:             ; jumptable 0042E6AB case 14
mov     eax, ecx
sub     eax, ebx
add     ecx, eax
mov     [esp+48h+var_18], edi
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     edx, ebp
mov     eax, [esp+48h+var_24]
sub     eax, esi
imul    edx, eax
mov     eax, [esp+48h+var_20]
sub     eax, ebp
mov     [esp+48h+var_48], eax
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+48h+var_48]
add     eax, esi
mov     edx, ds:dword_564A5A
sar     edx, 10h
cmp     eax, edx
jle     short loc_42F482
or      byte ptr [esp+48h+var_18], 2

loc_42F482:
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+48h+var_20]
sub     edx, eax
mov     [esp+48h+var_48], edx
mov     edx, [esp+48h+var_24]
sub     edx, esi
imul    edx, [esp+48h+var_48]
mov     eax, [esp+48h+var_20]
sub     eax, ebp
mov     [esp+48h+var_48], eax
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+48h+var_48]
lea     edx, [esi+eax]
mov     eax, ds:dword_564A5A
sar     eax, 10h
cmp     eax, edx
jge     short loc_42F4C2
or      byte ptr [esp+48h+var_18], 1

loc_42F4C2:
mov     eax, [esp+48h+var_18]
cmp     eax, 3          ; switch 4 cases
ja      def_42F4CF      ; jumptable 0042F4CF default case
jmp     jpt_42F4CF[eax*4] ; switch jump

loc_42F4D6:             ; jumptable 0042F4CF case 0
mov     edx, ds:dword_564A5A
sar     edx, 10h
sub     edx, esi
mov     ebp, ebx
sub     ebp, ecx
imul    edx, ebp
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
imul    edx, esi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
mov     [esp+48h+var_18], eax
test    eax, eax
jle     short loc_42F523
mov     eax, [esp+48h+var_18]
sub     word ptr ds:dword_564A32+2, ax

loc_42F523:
mov     edx, ds:dword_564A5E
sar     edx, 10h
mov     eax, ds:dword_564A32
sar     eax, 10h
jmp     loc_42F3AA

loc_42F539:             ; jumptable 0042F4CF case 1
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+48h+var_20]
sub     edx, eax
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_48], eax
imul    edx, eax
mov     esi, [esp+48h+var_20]
sub     esi, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
imul    edx, esi
mov     eax, edx
sar     edx, 1Fh
mov     ebp, [esp+48h+var_48]
idiv    ebp
jmp     loc_42F1E2

loc_42F57F:             ; jumptable 0042F4CF case 2
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, ebp
mov     esi, ebx
sub     esi, ecx
mov     edx, esi
imul    edx, eax
mov     eax, [esp+48h+var_20]
sub     eax, ebp
mov     ebp, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
lea     edi, [ecx+eax]
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
imul    edx, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     [esp+48h+var_18], eax
test    eax, eax
jle     short loc_42F5CD
mov     eax, [esp+48h+var_18]
sub     word ptr ds:dword_564A36+2, ax

loc_42F5CD:
mov     edx, ds:dword_564A5E
sar     edx, 10h
mov     eax, ds:dword_564A36
sar     eax, 10h
add     edx, eax
jmp     loc_42F208

loc_42F5E5:             ; jumptable 0042F4CF case 3
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edx, [esp+48h+var_24]
sub     edx, eax
mov     ebp, ebx
sub     ebp, ecx
imul    edx, ebp
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
mov     edx, ds:dword_564A5A+2
sar     edx, 10h
sub     ebx, edx
mov     edx, ebx
imul    edx, esi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
jmp     loc_42F408

loc_42F628:             ; jumptable 0042E6AB case 16
mov     edx, ds:dword_77E6C6+2
sar     edx, 10h
mov     eax, ds:dword_77E6C6
sar     eax, 10h
sub     edx, eax
mov     eax, ebx
sub     eax, ecx
imul    edx, eax
mov     esi, [esp+48h+var_20]
sub     esi, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    esi
add     ecx, eax
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+48h+var_20]
sub     edx, eax
mov     eax, ebx
sub     eax, ecx

loc_42F663:
imul    edx, eax
mov     esi, [esp+48h+var_20]
sub     esi, ebp
jmp     loc_42F6EE

loc_42F671:             ; jumptable 0042E6AB case 17
mov     edx, ds:dword_77E6C6+2
sar     edx, 10h
mov     eax, ds:dword_77E6C6
sar     eax, 10h
sub     edx, eax
mov     eax, edx
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     esi, [esp+48h+var_20]
sub     esi, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    esi
add     ecx, eax
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, ebp
mov     edx, ebx
sub     edx, ecx
jmp     short loc_42F663

loc_42F6AC:             ; jumptable 0042E6AB case 18
mov     edx, ds:dword_77E6C2+2
sar     edx, 10h
mov     eax, ds:dword_77E6C2
sar     eax, 10h
sub     edx, eax
mov     eax, ebx
sub     eax, ecx
imul    edx, eax
mov     edi, [esp+48h+var_24]
sub     edi, esi
mov     eax, edx
sar     edx, 1Fh
idiv    edi
add     ecx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, esi
mov     edx, ebx
sub     edx, ecx

loc_42F6E3:
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax

loc_42F6EE:
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
cmp     edi, ebx
jle     loc_42F702
mov     edi, ebx

loc_42F702:
mov     eax, ds:dword_77E6CA
sar     eax, 10h
sub     edi, eax
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     short def_42E6AB ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, edi
jge     short def_42E6AB ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
inc     edi
mov     word ptr ds:dword_564A5E, di
xor     ecx, ecx
mov     ds:word_77EA96, cx
mov     ds:word_77EA92, cx
mov     ds:word_77EA9C, cx

def_42E6AB:             ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     eax, [esp+48h+var_2C]

loc_42F749:
add     esp, 38h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_42F751:             ; jumptable 0042E6AB case 19
mov     edx, ds:dword_77E6C2+2
sar     edx, 10h
mov     eax, ds:dword_77E6C2
sar     eax, 10h
sub     edx, eax
mov     eax, ebx
sub     eax, ecx
imul    edx, eax
mov     edi, [esp+48h+var_24]
sub     edi, esi
mov     eax, edx
sar     edx, 1Fh
idiv    edi
add     ecx, eax
mov     edx, ds:dword_564A5A
sar     edx, 10h
mov     eax, [esp+48h+var_24]
sub     eax, edx
mov     edx, eax
mov     eax, ebx
sub     eax, ecx
jmp     loc_42F6E3

loc_42F794:             ; jumptable 0042E6AB cases 24,36
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42F7BB
test    byte ptr ds:dword_77EABA+2, 9
jz      short loc_42F7BB
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42F7BB:
mov     edx, ds:dword_564A5E
sar     edx, 10h
mov     eax, ds:dword_564A2E
sar     eax, 10h
sub     edx, eax
mov     eax, ds:dword_564A32
sar     eax, 10h
mov     edi, ds:dword_564A5A
sar     edi, 10h
sub     eax, edi
cmp     eax, edx
jl      short loc_42F7E7
mov     eax, edx

loc_42F7E7:
mov     [esp+48h+var_18], eax
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+48h+var_20]
sub     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, esi
add     edx, eax
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_3C], eax
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
cmp     word ptr [esp+48h+var_14], 18h
jz      loc_42FD72
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
mov     esi, [esp+48h+var_3C]
idiv    esi
mov     esi, eax
test    eax, eax
jle     short loc_42F859
sub     word ptr ds:dword_564A32+2, ax

loc_42F859:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, [esp+48h+var_20]
sub     edx, ebp
jmp     loc_42F93C

loc_42F872:             ; jumptable 0042E6AB case 37
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42F899
test    byte ptr ds:dword_77EABA+2, 6
jz      short loc_42F899
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42F899:
mov     edx, ds:dword_564A5E
sar     edx, 10h
mov     eax, ds:dword_564A2E
sar     eax, 10h
sub     edx, eax
mov     eax, ds:dword_564A32
sar     eax, 10h
mov     edi, ds:dword_564A5A
sar     edi, 10h
sub     eax, edi
cmp     eax, edx
jl      short loc_42F8C5
mov     eax, edx

loc_42F8C5:
mov     [esp+48h+var_18], eax
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+48h+var_20]
sub     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, esi
add     edx, eax
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_48], eax
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     edi, ebx
sub     edi, eax
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
mov     esi, [esp+48h+var_48]
idiv    esi
mov     esi, eax
test    eax, eax
jle     short loc_42F92A
sub     word ptr ds:dword_564A32+2, si

loc_42F92A:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, [esp+48h+var_20]
sub     eax, ebp

loc_42F93C:
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     esi, eax
test    eax, eax
jle     loc_42FD72
add     word ptr ds:dword_564A2E+2, ax
jmp     loc_42FD72

loc_42F95E:             ; jumptable 0042E6AB cases 25,52
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42F985
test    byte ptr ds:dword_77EABA+2, 0Ah
jz      short loc_42F985
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42F985:
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, ds:dword_564A2E
sar     edx, 10h
sub     eax, edx
mov     edx, ds:dword_564A5A
sar     edx, 10h
mov     edi, ds:dword_564A2A
sar     edi, 10h
sub     edx, edi
cmp     edx, eax
jge     short loc_42F9B2
mov     eax, edx

loc_42F9B2:
mov     [esp+48h+var_18], eax
mov     edx, ds:dword_564A5E
sar     edx, 10h
mov     eax, [esp+48h+var_20]
sub     eax, edx
mov     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edi, [esp+48h+var_24]
sub     edi, eax
add     edx, edi
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_38], eax
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
cmp     word ptr [esp+48h+var_14], 19h
jz      loc_42FD72
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
mov     esi, [esp+48h+var_38]
idiv    esi
mov     esi, eax
test    eax, eax
jle     loc_42F859
add     word ptr ds:dword_564A2A+2, ax
jmp     loc_42F859

loc_42FA34:             ; jumptable 0042E6AB case 53
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42FA5B
test    byte ptr ds:dword_77EABA+2, 5
jz      short loc_42FA5B
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42FA5B:
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, ds:dword_564A2E
sar     edx, 10h
sub     eax, edx
mov     edx, ds:dword_564A5A
sar     edx, 10h
mov     edi, ds:dword_564A2A
sar     edi, 10h
sub     edx, edi
cmp     edx, eax
jge     short loc_42FA88
mov     eax, edx

loc_42FA88:
mov     [esp+48h+var_18], eax
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, [esp+48h+var_20]
sub     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edi, [esp+48h+var_24]
sub     edi, eax
add     edx, edi
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_48], eax
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     edi, ebx
sub     edi, eax
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
mov     esi, [esp+48h+var_48]
idiv    esi
mov     esi, eax
test    eax, eax
jle     loc_42F92A
add     word ptr ds:dword_564A2A+2, si
jmp     loc_42F92A

loc_42FAFA:             ; jumptable 0042E6AB cases 26,68
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42FB21
test    byte ptr ds:dword_77EABA+2, 5
jz      short loc_42FB21
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42FB21:
mov     eax, ds:dword_564A36
sar     eax, 10h
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     eax, edx
mov     edx, ds:dword_564A32
sar     edx, 10h
mov     edi, ds:dword_564A5A
sar     edi, 10h
sub     edx, edi
cmp     edx, eax
jge     short loc_42FB4E
mov     eax, edx

loc_42FB4E:
mov     [esp+48h+var_18], eax
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     edx, ebp
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, esi
add     edx, eax
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_44], eax
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
cmp     word ptr [esp+48h+var_14], 1Ah
jz      loc_42FD72
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
mov     esi, [esp+48h+var_44]
idiv    esi
mov     esi, eax
test    eax, eax
jle     loc_42FD47
sub     word ptr ds:dword_564A32+2, ax
jmp     loc_42FD47

loc_42FBC6:             ; jumptable 0042E6AB case 69
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42FBED
test    byte ptr ds:dword_77EABA+2, 0Ah
jz      short loc_42FBED
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42FBED:
mov     eax, ds:dword_564A36
sar     eax, 10h
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     eax, edx
mov     edx, ds:dword_564A32
sar     edx, 10h
mov     edi, ds:dword_564A5A
sar     edi, 10h
sub     edx, edi
cmp     edx, eax
jge     short loc_42FC1A
mov     eax, edx

loc_42FC1A:
mov     [esp+48h+var_18], eax
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     edx, ebp
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, esi
add     edx, eax
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_48], eax
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     edi, ebx
sub     edi, eax
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
mov     esi, [esp+48h+var_48]
idiv    esi
mov     esi, eax
test    eax, eax
jle     loc_42FD47
sub     word ptr ds:dword_564A32+2, si
jmp     loc_42FD47

loc_42FC85:             ; jumptable 0042E6AB cases 27,84
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42FCAC
test    byte ptr ds:dword_77EABA+2, 6
jz      short loc_42FCAC
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42FCAC:
mov     edx, ds:dword_564A36
sar     edx, 10h
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     edx, eax
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edi, ds:dword_564A2A
sar     edi, 10h
sub     eax, edi
cmp     eax, edx
jl      short loc_42FCD8
mov     eax, edx

loc_42FCD8:
mov     [esp+48h+var_18], eax
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     edx, ebp
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edi, [esp+48h+var_24]
sub     edi, eax
add     edx, edi
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_40], eax
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
lea     edi, [ecx+eax]
cmp     word ptr [esp+48h+var_14], 1Bh
jz      short loc_42FD72
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
mov     esi, [esp+48h+var_40]

loc_42FD38:
idiv    esi
mov     esi, eax
test    eax, eax
jle     short loc_42FD47
add     word ptr ds:dword_564A2A+2, si

loc_42FD47:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, [esp+48h+var_20]
sub     eax, ebp
imul    edx, eax
sub     ebx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     esi, eax
test    eax, eax
jle     short loc_42FD72
sub     word ptr ds:dword_564A36+2, ax

loc_42FD72:
mov     [esp+48h+var_30], 30h ; '0'
jmp     def_42F4CF      ; jumptable 0042F4CF default case

loc_42FD7F:             ; jumptable 0042E6AB case 85
cmp     byte ptr ds:dword_77EABA, 0
jnz     short loc_42FDA6
test    byte ptr ds:dword_77EABA+2, 9
jz      short loc_42FDA6
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
sub     eax, [esp+48h+var_1C]
cmp     eax, 20h ; ' '
jl      loc_42FE2F

loc_42FDA6:
mov     eax, ds:dword_564A36
sar     eax, 10h
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     eax, edx
mov     edx, ds:dword_564A5A
sar     edx, 10h
mov     edi, ds:dword_564A2A
sar     edi, 10h
sub     edx, edi
cmp     edx, eax
jge     short loc_42FDD3
mov     eax, edx

loc_42FDD3:
mov     [esp+48h+var_18], eax
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     edx, ebp
mov     eax, ds:dword_564A5A
sar     eax, 10h
mov     edi, [esp+48h+var_24]
sub     edi, eax
add     edx, edi
mov     eax, ebx
sub     eax, ecx
mov     [esp+48h+var_48], eax
imul    edx, eax
mov     eax, [esp+48h+var_24]
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     edi, ebx
sub     edi, eax
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, esi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
mov     esi, [esp+48h+var_48]
jmp     loc_42FD38

loc_42FE2F:
mov     eax, ds:dword_564A5A+2
sar     eax, 10h
cmp     eax, [esp+48h+var_1C]
jle     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     eax, [esp+48h+var_28]
jge     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
mov     [esp+48h+var_2C], 1
mov     eax, [esp+48h+var_1C]
mov     word ptr ds:dword_564A5E, ax
mov     ax, ds:word_77EA8E
mov     ds:word_77EA96, ax
xor     ecx, ecx
mov     ds:word_77EA92, cx
mov     ax, ds:word_77EA88
mov     ds:word_77EA9C, ax
mov     byte ptr ds:dword_77EABA+2, 20h ; ' '
jmp     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79

loc_42FE8A:
mov     eax, [esp+48h+var_14]
xor     ah, ah
and     al, 0F0h
and     eax, 0FFFFh
sar     eax, 4
lea     edx, [eax-2]
mov     eax, (offset dword_564A5A+2)
call    sub_4311B9
test    eax, eax
jz      def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
cmp     ds:word_564A66, 0
jl      short loc_42FEC2
mov     word ptr ds:dword_77EABA, 100h

loc_42FEC2:
xor     ecx, ecx
mov     ds:word_77EA96, cx
mov     ds:word_77EA92, cx
mov     ds:word_77EA9C, cx
jmp     def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79

loc_42FEDE:
mov     word ptr ds:dword_564A2E, di
mov     eax, [esp+48h+var_28]
mov     word ptr ds:dword_564A36, ax
mov     ebx, [esp+48h+var_30]
or      bl, 43h
mov     edx, (offset dword_564B2A+2)
mov     eax, (offset dword_564A5A+2)
call    sub_430A01
test    eax, eax
jz      short loc_42FF20
xor     ecx, ecx
mov     ds:word_77EA96, cx
mov     ds:word_77EA92, cx
mov     ds:word_77EA9C, cx

loc_42FF20:
cmp     ds:word_564A66, 0
jl      def_42E6AB      ; jumptable 0042E6AB default case, cases 20-23,38-47,54-63,70-79
jmp     loc_42EE3D
sub_42E629 endp




sub_42FF33 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     dx, word ptr ds:dword_77E6C6
mov     bx, [eax]
sub     ebx, edx
mov     [eax], bx
movsx   ecx, bx
mov     dx, word ptr ds:dword_77E6C2+2
sub     [eax+2], dx
mov     edi, [eax]
sar     edi, 10h
mov     dx, word ptr ds:dword_77E6CA
sub     [eax+4], dx
mov     esi, [eax+2]
sar     esi, 10h
mov     dx, word ptr ds:dword_77E6C6+2
sub     [eax+6], dx
mov     ebx, [eax+4]
sar     ebx, 10h
mov     ebp, ds:dword_564A5A
sar     ebp, 10h
cmp     ebp, ecx
jle     loc_430036
cmp     ebp, edi
jge     loc_430036
mov     edx, ds:dword_564A5E
sar     edx, 10h
cmp     edx, esi
jle     loc_430036
cmp     edx, ebx
jge     loc_430036
mov     word ptr ds:dword_564A2A+2, cx
mov     word ptr ds:dword_564A32+2, di
mov     word ptr ds:dword_564A2E+2, si
mov     word ptr ds:dword_564A36+2, bx
xor     eax, eax
mov     [esp+1Ch+var_18], eax
sub     edx, esi
mov     [esp+1Ch+var_1C], edx
mov     edx, edi
sub     edx, ecx
imul    edx, [esp+1Ch+var_1C]
mov     eax, ebx
sub     eax, esi
mov     [esp+1Ch+var_1C], eax
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+1Ch+var_1C]
add     eax, ecx
cmp     ebp, eax
jge     short loc_42FFFD
mov     [esp+1Ch+var_18], 2

loc_42FFFD:
mov     eax, ds:dword_564A5E
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     eax, edx
mov     edx, edi
sub     edx, ecx
imul    edx, eax
sub     ebx, esi
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     eax, ecx
mov     edx, ds:dword_564A5A
sar     edx, 10h
cmp     edx, eax
jge     short loc_43002F
or      byte ptr [esp+1Ch+var_18], 1

loc_43002F:
mov     edx, [esp+1Ch+var_18]
inc     edx
jmp     short loc_430038

loc_430036:
xor     edx, edx

loc_430038:
mov     eax, edx

loc_43003A:
add     esp, 8

loc_43003D:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_42FF33 endp

xor     eax, eax
retn



sub_430046 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
cmp     edx, 25h ; '%'
jz      short loc_430093
mov     dx, word ptr ds:dword_77E6C6
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
movsx   ecx, bx
mov     dx, word ptr ds:dword_77E6C2+2
sub     [eax+2], dx
mov     esi, [eax]
sar     esi, 10h
mov     dx, word ptr ds:dword_77E6CA
sub     [eax+4], dx
mov     ebx, [eax+2]
sar     ebx, 10h
mov     dx, word ptr ds:dword_77E6C6+2
add     [eax+6], dx
jmp     short loc_4300D1

loc_430093:
mov     dx, word ptr ds:dword_77E6C6
mov     bx, [eax]
sub     ebx, edx
mov     [eax], bx
movsx   ecx, bx
mov     dx, word ptr ds:dword_77E6C2+2
add     [eax+2], dx
mov     esi, [eax]
sar     esi, 10h
mov     dx, word ptr ds:dword_77E6CA
add     [eax+4], dx
mov     ebx, [eax+2]
sar     ebx, 10h
mov     dx, word ptr ds:dword_77E6C6+2
sub     [eax+6], dx

loc_4300D1:
mov     edi, [eax+4]
sar     edi, 10h
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, ebx
mov     edx, esi
sub     edx, ecx
imul    edx, eax
mov     ebp, edi
sub     ebp, ebx
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
add     eax, ecx
add     eax, 4
mov     [esp+20h+var_18], eax
cmp     esi, eax
jge     short loc_430104
mov     [esp+20h+var_18], esi

loc_430104:
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, ecx
mov     edx, edi
sub     edx, ebx
imul    edx, eax
mov     ebp, esi
sub     ebp, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
add     eax, ebx
sub     eax, 4
mov     [esp+20h+var_1C], eax
cmp     ebx, eax
jle     short loc_430131
mov     [esp+20h+var_1C], ebx

loc_430131:
mov     eax, ds:dword_564A5A
sar     eax, 10h
cmp     eax, ecx
jle     loc_4301EA
cmp     eax, [esp+20h+var_18]
jge     loc_4301EA
mov     eax, ds:dword_564A5E
sar     eax, 10h
cmp     eax, [esp+20h+var_1C]
jle     loc_4301EA
cmp     eax, edi
jge     loc_4301EA
mov     word ptr ds:dword_564A2A+2, cx
mov     eax, [esp+20h+var_18]
mov     word ptr ds:dword_564A32+2, ax
mov     eax, [esp+20h+var_1C]
mov     word ptr ds:dword_564A2E+2, ax
mov     word ptr ds:dword_564A36+2, di
mov     ebp, ds:dword_564B2E
sar     ebp, 10h
mov     edx, ebp
sub     edx, ebx
sub     esi, ecx
mov     [esp+20h+var_20], esi
imul    edx, esi
sub     edi, ebx
mov     eax, edx
sar     edx, 1Fh
idiv    edi
lea     edx, [ecx+eax]
mov     [esp+20h+var_18], edx
mov     esi, ds:dword_564B2A
sar     esi, 10h
mov     edx, esi
sub     edx, ecx
imul    edx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+20h+var_20]
add     ebx, eax
mov     [esp+20h+var_1C], ebx
cmp     esi, [esp+20h+var_18]
jl      short loc_4301D6
cmp     ebp, [esp+20h+var_1C]

loc_4301D4:
jle     short loc_4301E3

loc_4301D6:
mov     eax, 1

loc_4301DB:
add     esp, 0Ch
jmp     loc_43003D

loc_4301E3:
mov     eax, 2
jmp     short loc_4301DB

loc_4301EA:
xor     eax, eax
jmp     short loc_4301DB
sub_430046 endp




sub_4301EE proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
cmp     edx, 35h ; '5'
jz      short loc_43023B
mov     dx, word ptr ds:dword_77E6C6
mov     si, [eax]
sub     esi, edx
mov     [eax], si
movsx   ebx, si
mov     dx, word ptr ds:dword_77E6C2+2
add     [eax+2], dx
mov     edi, [eax]
sar     edi, 10h
mov     dx, word ptr ds:dword_77E6CA
sub     [eax+4], dx
mov     esi, [eax+2]
sar     esi, 10h
mov     dx, word ptr ds:dword_77E6C6+2
add     [eax+6], dx
jmp     short loc_430279

loc_43023B:
mov     dx, word ptr ds:dword_77E6C6
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
movsx   ebx, bx
mov     dx, word ptr ds:dword_77E6C2+2
sub     [eax+2], dx
mov     edi, [eax]
sar     edi, 10h
mov     dx, word ptr ds:dword_77E6CA
add     [eax+4], dx
mov     esi, [eax+2]
sar     esi, 10h
mov     dx, word ptr ds:dword_77E6C6+2
sub     [eax+6], dx

loc_430279:
mov     ecx, [eax+4]
sar     ecx, 10h
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, esi
mov     edx, edi
sub     edx, ebx
imul    edx, eax
mov     ebp, ecx
sub     ebp, esi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
mov     edx, edi
sub     edx, eax
lea     eax, [edx-4]
mov     [esp+20h+var_18], eax
cmp     ebx, eax
jle     short loc_4302AE
mov     [esp+20h+var_18], ebx

loc_4302AE:
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, ebx
mov     edx, ecx
sub     edx, esi
imul    edx, eax
mov     ebp, edi
sub     ebp, ebx
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
mov     edx, ecx
sub     edx, eax
lea     eax, [edx-4]
mov     [esp+20h+var_1C], eax
cmp     esi, eax
jle     short loc_4302DD
mov     [esp+20h+var_1C], esi

loc_4302DD:
mov     eax, ds:dword_564A5A
sar     eax, 10h
cmp     eax, [esp+20h+var_18]
jle     loc_4301EA
cmp     eax, edi
jge     loc_4301EA
mov     eax, ds:dword_564A5E
sar     eax, 10h
cmp     eax, [esp+20h+var_1C]
jle     loc_4301EA
cmp     eax, ecx
jge     loc_4301EA
mov     eax, [esp+20h+var_18]
mov     word ptr ds:dword_564A2A+2, ax
mov     word ptr ds:dword_564A32+2, di
mov     eax, [esp+20h+var_1C]
mov     word ptr ds:dword_564A2E+2, ax
mov     word ptr ds:dword_564A36+2, cx
mov     ebp, ds:dword_564B2E
sar     ebp, 10h
mov     edx, ebp
sub     edx, esi
mov     eax, edi
sub     eax, ebx
mov     [esp+20h+var_20], eax
imul    edx, eax
mov     eax, ecx
sub     eax, esi
mov     esi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    esi
sub     edi, eax
mov     [esp+20h+var_18], edi
mov     edi, ds:dword_564B2A
sar     edi, 10h
mov     edx, edi
sub     edx, ebx
imul    edx, esi
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+20h+var_20]
sub     ecx, eax
mov     [esp+20h+var_1C], ecx
cmp     edi, [esp+20h+var_18]
jg      loc_4301D6
cmp     ebp, ecx
jmp     loc_4301D4
sub_4301EE endp




sub_43038C proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
cmp     edx, 45h ; 'E'
jz      short loc_4303D9
mov     dx, word ptr ds:dword_77E6C6
mov     di, [eax]
add     edi, edx
mov     [eax], di
movsx   ecx, di
mov     dx, word ptr ds:dword_77E6C2+2
sub     [eax+2], dx
mov     ebx, [eax]
sar     ebx, 10h
mov     dx, word ptr ds:dword_77E6CA
add     [eax+4], dx
mov     edi, [eax+2]
sar     edi, 10h
mov     dx, word ptr ds:dword_77E6C6+2
sub     [eax+6], dx
jmp     short loc_430417

loc_4303D9:
mov     dx, word ptr ds:dword_77E6C6
mov     bx, [eax]
sub     ebx, edx
mov     [eax], bx
movsx   ecx, bx
mov     dx, word ptr ds:dword_77E6C2+2
add     [eax+2], dx
mov     ebx, [eax]
sar     ebx, 10h
mov     dx, word ptr ds:dword_77E6CA
sub     [eax+4], dx
mov     edi, [eax+2]
sar     edi, 10h
mov     dx, word ptr ds:dword_77E6C6+2
add     [eax+6], dx

loc_430417:
mov     esi, [eax+4]
sar     esi, 10h
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, edi
mov     edx, ebx
sub     edx, ecx
imul    edx, eax
mov     ebp, esi
sub     ebp, edi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
mov     edx, ebx
sub     edx, eax
lea     eax, [edx+4]
mov     [esp+20h+var_18], eax
cmp     ebx, eax
jge     short loc_43044C
mov     [esp+20h+var_18], ebx

loc_43044C:
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, ecx
mov     edx, esi
sub     edx, edi
imul    edx, eax
mov     ebp, ebx
sub     ebp, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
mov     edx, esi
sub     edx, eax
lea     eax, [edx+4]
mov     [esp+20h+var_1C], eax
cmp     esi, eax
jge     short loc_43047B
mov     [esp+20h+var_1C], esi

loc_43047B:
mov     eax, ds:dword_564A5A
sar     eax, 10h
cmp     eax, ecx
jle     loc_4301EA
cmp     eax, [esp+20h+var_18]
jge     loc_4301EA
mov     eax, ds:dword_564A5E
sar     eax, 10h
cmp     eax, edi
jle     loc_4301EA
cmp     eax, [esp+20h+var_1C]
jge     loc_4301EA
mov     word ptr ds:dword_564A2A+2, cx
mov     eax, [esp+20h+var_18]
mov     word ptr ds:dword_564A32+2, ax
mov     word ptr ds:dword_564A2E+2, di
mov     eax, [esp+20h+var_1C]
mov     word ptr ds:dword_564A36+2, ax
mov     ebp, ds:dword_564B2E
sar     ebp, 10h
mov     edx, ebp
sub     edx, edi
mov     eax, ebx
sub     eax, ecx
mov     [esp+20h+var_20], eax
imul    edx, eax
mov     eax, esi
sub     eax, edi
mov     edi, eax
mov     eax, edx
sar     edx, 1Fh
idiv    edi
sub     ebx, eax
mov     [esp+20h+var_18], ebx
mov     ebx, ds:dword_564B2A
sar     ebx, 10h
mov     edx, ebx
sub     edx, ecx
imul    edx, edi
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+20h+var_20]
sub     esi, eax
mov     [esp+20h+var_1C], esi
cmp     ebx, [esp+20h+var_18]
jl      loc_4301D6
cmp     ebp, [esp+20h+var_1C]
jge     loc_4301E3
jmp     loc_4301D6
sub_43038C endp




sub_430532 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
cmp     edx, 55h ; 'U'
jz      short loc_430583
mov     dx, word ptr ds:dword_77E6C6
mov     di, [eax]
sub     edi, edx
mov     [eax], di
movsx   ecx, di
mov     dx, word ptr ds:dword_77E6C2+2
add     [eax+2], dx
mov     edx, [eax]
sar     edx, 10h
mov     [esp+20h+var_18], edx
mov     dx, word ptr ds:dword_77E6CA
add     [eax+4], dx
mov     ebx, [eax+2]
sar     ebx, 10h
mov     dx, word ptr ds:dword_77E6C6+2
sub     [eax+6], dx
jmp     short loc_4305C5

loc_430583:
mov     dx, word ptr ds:dword_77E6C6
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
movsx   ecx, bx
mov     dx, word ptr ds:dword_77E6C2+2
sub     [eax+2], dx
mov     edx, [eax]
sar     edx, 10h
mov     [esp+20h+var_18], edx
mov     dx, word ptr ds:dword_77E6CA
sub     [eax+4], dx
mov     ebx, [eax+2]
sar     ebx, 10h
mov     dx, word ptr ds:dword_77E6C6+2
add     [eax+6], dx

loc_4305C5:
mov     ebp, [eax+4]
sar     ebp, 10h
mov     eax, ds:dword_564A5E
sar     eax, 10h
sub     eax, ebx
mov     edx, [esp+20h+var_18]
sub     edx, ecx
imul    edx, eax
mov     esi, ebp
sub     esi, ebx
mov     eax, edx
sar     edx, 1Fh
idiv    esi
add     eax, ecx
lea     esi, [eax-4]
cmp     esi, ecx
jge     short loc_4305F4
mov     esi, ecx

loc_4305F4:
mov     eax, ds:dword_564A5A
sar     eax, 10h
sub     eax, ecx
mov     edx, ebp
sub     edx, ebx
imul    edx, eax
mov     edi, [esp+20h+var_18]
sub     edi, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    edi
add     eax, ebx
lea     edi, [eax+4]
cmp     edi, ebp
jle     short loc_43061D
mov     edi, ebp

