loc_4A9BA7:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A9A31 endp




sub_4A9BAD proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4A9C21
mov     byte ptr [esi+0Ah], 1
mov     word ptr [esi+44h], 0
mov     word ptr [esi+48h], 0
and     byte ptr [esi+174h], 0FCh
mov     ebx, [esi+171h]
sar     ebx, 18h
test    bl, 0C0h
jnz     short loc_4A9BF6
cmp     byte ptr [esi+177h], 0
jnz     short loc_4A9BF6
mov     eax, esi
call    sub_4B570A
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
jmp     short loc_4A9C4E

loc_4A9BF6:
test    byte ptr [esi+174h], 40h
jz      short loc_4A9C10
xor     ebx, ebx
mov     bl, [esi+100h]
xor     ecx, ecx
mov     edx, 40h ; '@'
jmp     short loc_4A9C4E

loc_4A9C10:
xor     ebx, ebx
mov     bl, [esi+100h]
xor     ecx, ecx
mov     edx, 60h ; '`'
jmp     short loc_4A9C4E

loc_4A9C21:
mov     byte ptr [esi+54Dh], 0
mov     word ptr [esi+0B4h], 0
mov     ebx, [esi+171h]
sar     ebx, 18h
test    bl, 0C0h
jnz     short loc_4A9C55
cmp     byte ptr [esi+177h], 0
jnz     short loc_4A9C55
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx

loc_4A9C4E:
mov     eax, esi
call    sub_4B520D

loc_4A9C55:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A9BAD endp




sub_4A9C5A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0Ah], 0
jnz     loc_4A9CDB
mov     byte ptr [esi+0Ah], 1
mov     word ptr [esi+48h], 0
cmp     byte ptr [esi+0Bh], 0
jnz     short loc_4A9C82
mov     word ptr [esi+44h], 50h ; 'P'
jmp     short loc_4A9C88

loc_4A9C82:
mov     word ptr [esi+44h], 0FFB0h

loc_4A9C88:
or      byte ptr [esi+174h], 4
mov     edx, [esi+171h]
sar     edx, 18h
test    dl, 0C0h
jnz     short loc_4A9CA6
cmp     byte ptr [esi+177h], 0
jz      short loc_4A9CDB

loc_4A9CA6:
test    byte ptr [esi+174h], 40h
jz      short loc_4A9CCA
xor     ebx, ebx
mov     bl, [esi+100h]
xor     ecx, ecx
mov     edx, 40h ; '@'

loc_4A9CBE:
mov     eax, esi
call    sub_4B520D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A9CCA:
xor     ebx, ebx
mov     bl, [esi+100h]
xor     ecx, ecx
mov     edx, 60h ; '`'
jmp     short loc_4A9CBE

loc_4A9CDB:
mov     edx, [esi+171h]
sar     edx, 18h
test    dl, 0C0h
jnz     loc_4A9D5E
cmp     byte ptr [esi+177h], 0
jnz     short loc_4A9D5E
cmp     byte ptr [esi+0Bh], 0
jnz     short loc_4A9D13
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, esi
call    sub_4B520D
mov     ebx, 20h ; ' '
jmp     short loc_4A9D28

loc_4A9D13:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, esi
call    sub_4B520D
mov     ebx, 40h ; '@'

loc_4A9D28:
mov     edx, ebx
mov     eax, esi
call    sub_4B53D3
mov     edx, [esi+0A3h]
sar     edx, 18h
test    dl, 80h
jz      short loc_4A9D4D
xor     ebx, ebx
xor     edx, edx
mov     eax, 90h
call    sub_4D89E4

loc_4A9D4D:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4B527B

loc_4A9D5E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A9C5A endp

db 8Dh, 40h, 0
jpt_4A9DC9 dd offset loc_4A9DD0 ; jump table for switch statement
dd offset loc_4A9EEB
dd offset loc_4A9F04
dd offset loc_4A9F42
dd offset loc_4A9F57
dd offset loc_4A9FA0
dd offset loc_4AA00B
jpt_4A9DE3 dd offset loc_4A9DEA ; jump table for switch statement
dd offset loc_4A9E1E
dd offset loc_4A9E44
dd offset loc_4A9E71
jpt_4A9E06 dd offset loc_4A9E0D ; jump table for switch statement
dd offset loc_4A9E17
dd offset loc_4A9E63
dd offset loc_4A9E3D
jpt_4A9FAF dd offset loc_4A9FB6 ; jump table for switch statement
dd offset loc_4A9FC2
dd offset loc_4A9FD4
dd offset loc_4A9FE6



sub_4A9DB2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_4A9DC9      ; jumptable 004A9DC9 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_4A9DC9[ecx*4] ; switch jump

loc_4A9DD0:             ; jumptable 004A9DC9 case 0
mov     al, [esi+112h]
cmp     al, 3           ; switch 4 cases
ja      def_4A9DE3      ; jumptable 004A9DE3 default case
; jumptable 004A9E06 default case
and     eax, 0FFh
jmp     jpt_4A9DE3[eax*4] ; switch jump

loc_4A9DEA:             ; jumptable 004A9DE3 case 0
mov     word ptr [esi+116h], 0
mov     al, [esi+113h]
cmp     al, 3           ; switch 4 cases
ja      def_4A9DE3      ; jumptable 004A9DE3 default case
; jumptable 004A9E06 default case
and     eax, 0FFh
jmp     jpt_4A9E06[eax*4] ; switch jump

loc_4A9E0D:             ; jumptable 004A9E06 case 0
mov     edx, 4
jmp     def_4A9DE3      ; jumptable 004A9DE3 default case
; jumptable 004A9E06 default case

loc_4A9E17:             ; jumptable 004A9E06 case 1
mov     edx, 5
jmp     short loc_4A9E68

loc_4A9E1E:             ; jumptable 004A9DE3 case 1
mov     word ptr [esi+116h], 400h
mov     al, [esi+113h]
cmp     al, 2
jb      short loc_4A9E39
jbe     short loc_4A9E17 ; jumptable 004A9E06 case 1
cmp     al, 3
jz      short loc_4A9E63 ; jumptable 004A9E06 case 2
jmp     short loc_4A9E68

loc_4A9E39:
test    al, al
jnz     short loc_4A9E68

loc_4A9E3D:             ; jumptable 004A9E06 case 3
mov     edx, 7
jmp     short loc_4A9E68

loc_4A9E44:             ; jumptable 004A9DE3 case 2
mov     word ptr [esi+116h], 800h
mov     al, [esi+113h]
cmp     al, 1
jb      short loc_4A9E5F
jbe     short loc_4A9E3D ; jumptable 004A9E06 case 3
cmp     al, 3
jz      short loc_4A9E17 ; jumptable 004A9E06 case 1
jmp     short loc_4A9E68

loc_4A9E5F:
test    al, al
jnz     short loc_4A9E68

loc_4A9E63:             ; jumptable 004A9E06 case 2
mov     edx, 9

loc_4A9E68:
mov     eax, esi
call    sub_4B56DA
jmp     short def_4A9DE3 ; jumptable 004A9DE3 default case
; jumptable 004A9E06 default case

loc_4A9E71:             ; jumptable 004A9DE3 case 3
mov     word ptr [esi+116h], 0FC00h
mov     al, [esi+113h]
cmp     al, 1
jb      short loc_4A9E8C
jbe     short loc_4A9E97
cmp     al, 2
jz      short loc_4A9E9E
jmp     short loc_4A9EA3

loc_4A9E8C:
test    al, al
jnz     short loc_4A9EA3
mov     edx, 5
jmp     short loc_4A9EA3

loc_4A9E97:
mov     edx, 9
jmp     short loc_4A9EA3

loc_4A9E9E:
mov     edx, 7

loc_4A9EA3:
mov     eax, esi
call    sub_4B56DA

def_4A9DE3:             ; jumptable 004A9DE3 default case
add     byte ptr [esi+0Ah], 2 ; jumptable 004A9E06 default case
mov     byte ptr [esi+113h], 0
mov     word ptr [esi+44h], 200h
or      byte ptr [esi+174h], 4
and     edx, 0FFh
mov     ecx, 1
xor     ebx, ebx

loc_4A9ECF:
mov     eax, esi
call    sub_4B520D

loc_4A9ED6:
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AA054
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A9EEB:             ; jumptable 004A9DC9 case 1
mov     cl, [esi+0A4h]
cmp     cl, 1
jnz     def_4A9DC9      ; jumptable 004A9DC9 default case
add     al, cl
mov     [esi+0Ah], al
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A9F04:             ; jumptable 004A9DC9 case 2
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4A9ED6
add     al, 2
mov     [esi+0Ah], al
mov     byte ptr [esi+54Dh], 1
mov     eax, esi
call    sub_4B570A
cmp     byte ptr [esi+112h], 1
jz      short loc_4A9F34
xor     ecx, ecx
xor     ebx, ebx
jmp     short loc_4A9F3B

loc_4A9F34:
xor     ecx, ecx
mov     ebx, 9

loc_4A9F3B:
mov     edx, 1
jmp     short loc_4A9ECF

loc_4A9F42:             ; jumptable 004A9DC9 case 3
cmp     byte ptr [esi+0A4h], 5
jnz     short loc_4A9F57 ; jumptable 004A9DC9 case 4
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+54Dh], 1

loc_4A9F57:             ; jumptable 004A9DC9 case 4
cmp     byte ptr [esi+112h], 0
mov     ebx, 28h ; '('
mov     edx, ebx
mov     eax, esi
call    sub_4B53D3
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AA054
mov     eax, [esi+0A3h]
sar     eax, 18h
test    al, 80h
jz      def_4A9DC9      ; jumptable 004A9DC9 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 91h
call    sub_4D89E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A9FA0:             ; jumptable 004A9DC9 case 5
mov     al, [esi+112h]
cmp     al, 3           ; switch 4 cases
ja      short def_4A9FAF ; jumptable 004A9FAF default case
and     eax, 0FFh
jmp     jpt_4A9FAF[eax*4] ; switch jump

loc_4A9FB6:             ; jumptable 004A9FAF case 0
mov     byte ptr [esi+9], 0
mov     word ptr [esi+0Ah], 0
jmp     short def_4A9FAF ; jumptable 004A9FAF default case

loc_4A9FC2:             ; jumptable 004A9FAF case 1
mov     eax, esi
call    sub_4B56DA
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 8
jmp     short loc_4A9FF6

loc_4A9FD4:             ; jumptable 004A9FAF case 2
mov     eax, esi
call    sub_4B56DA
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Ah
jmp     short loc_4A9FF6

loc_4A9FE6:             ; jumptable 004A9FAF case 3
mov     eax, esi
call    sub_4B56DA
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 6

loc_4A9FF6:
mov     eax, esi
call    sub_4B520D

def_4A9FAF:             ; jumptable 004A9FAF default case
mov     word ptr [esi+4Ch], 30h ; '0'
inc     byte ptr [esi+0Ah]
jmp     loc_4A9ED6

loc_4AA00B:             ; jumptable 004A9DC9 case 6
cmp     byte ptr [esi+0A6h], 1
jnz     short def_4A9DC9 ; jumptable 004A9DC9 default case
mov     byte ptr [esi+9], 0
mov     word ptr [esi+0Ah], 0
mov     word ptr [esi+116h], 0
mov     byte ptr [esi+112h], 0
mov     word ptr [esi+44h], 0
mov     word ptr [esi+0B4h], 0
mov     eax, esi
call    sub_4B570A
xor     ecx, ecx
xor     ebx, ebx

loc_4AA048:
mov     eax, esi
call    sub_4B520D

def_4A9DC9:             ; jumptable 004A9DC9 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A9DB2 endp




sub_4AA054 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     bx, [eax+11Ch]
movsx   edx, dx
xor     ecx, ecx
mov     cx, [eax+edx*8+148h]
xor     edi, edi
mov     di, [eax+edx*8+14Ah]
xor     edx, edx
mov     dx, bx
test    edx, ecx
jz      loc_4AA0EB
mov     esi, edx
and     esi, ecx
cmp     esi, ecx
jz      short loc_4AA0EB
test    edx, edi
jz      short loc_4AA0BD
mov     word ptr [eax+48h], 0FEC0h
xor     ecx, ecx
mov     cx, [eax+128h]
xor     edx, edx
mov     dx, [eax+12Ah]
or      edx, ecx
xor     ecx, ecx
mov     cx, bx
test    ecx, edx
jnz     short loc_4AA0F1
mov     word ptr [eax+0B4h], 40h ; '@'
jmp     short loc_4AA0F1

loc_4AA0BD:
mov     word ptr [eax+48h], 140h
xor     edx, edx
mov     dx, [eax+128h]
xor     ecx, ecx
mov     cx, [eax+12Ah]
or      edx, ecx
xor     ecx, ecx
mov     cx, bx
test    ecx, edx
jnz     short loc_4AA0F1
mov     word ptr [eax+0B4h], 0FFC0h
jmp     short loc_4AA0F1

loc_4AA0EB:
mov     word ptr [eax+48h], 0

loc_4AA0F1:
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
xor     ebx, ebx
call    sub_4B527B
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4AA054 endp

align 2
jpt_4AA14A dd offset loc_4AA151 ; jump table for switch statement
dd offset loc_4AA177
dd offset loc_4AA1BC
dd offset loc_4AA1DA
dd offset loc_4AA20F
dd offset loc_4AA424



sub_4AA122 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
xor     edi, edi
mov     di, [eax+11Ch]
movzx   ebp, word ptr [eax+11Eh]
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_4AA14A      ; jumptable 004AA14A default case
and     eax, 0FFh
jmp     jpt_4AA14A[eax*4] ; switch jump

loc_4AA151:             ; jumptable 004AA14A case 0
or      byte ptr [esi+174h], 4
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 38h ; '8'
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+54Ah]
add     byte ptr [esi+0Ah], 2
jmp     def_4AA14A      ; jumptable 004AA14A default case

loc_4AA177:             ; jumptable 004AA14A case 1
xor     eax, eax
mov     ax, [esi+128h]
test    edi, eax
jz      short loc_4AA198
call    sub_4DE13B
test    eax, eax
jz      short loc_4AA198
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 89h
mov     byte ptr [eax+3], 0

loc_4AA198:
xor     eax, eax
mov     ax, [esi+12Ah]
test    edi, eax
jz      short loc_4AA1B9
call    sub_4DE13B
test    eax, eax
jz      short loc_4AA1B9
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 89h
mov     byte ptr [eax+3], 1

loc_4AA1B9:
inc     byte ptr [esi+0Ah]

loc_4AA1BC:             ; jumptable 004AA14A case 2
cmp     byte ptr [esi+0A6h], 0
jnz     short loc_4AA1D0
inc     byte ptr [esi+54Ah]
jmp     def_4AA14A      ; jumptable 004AA14A default case

loc_4AA1D0:
mov     byte ptr [esi+0Ah], 3
mov     word ptr [esi+44h], 340h

loc_4AA1DA:             ; jumptable 004AA14A case 3
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_4AA1FE
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4B527B
jmp     def_4AA14A      ; jumptable 004AA14A default case

loc_4AA1FE:
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Ch
call    sub_4D89E4
inc     byte ptr [esi+0Ah]

loc_4AA20F:             ; jumptable 004AA14A case 4
xor     edx, edx
mov     dx, [esi+124h]
xor     eax, eax
mov     ax, [esi+126h]
or      eax, edx
test    edi, eax
jz      loc_4AA29E
xor     eax, eax
mov     ax, dx
test    edi, eax
jz      short loc_4AA252
mov     ebx, 10h
mov     edx, ebx
mov     eax, esi
call    sub_4B53D3
mov     ecx, eax
mov     word ptr [esi+44h], 400h
mov     word ptr [esi+48h], 0C0h
jmp     short loc_4AA2BA

loc_4AA252:
mov     ebx, 20h ; ' '
mov     edx, ebx
mov     eax, esi
call    sub_4B53D3
mov     ecx, eax
mov     word ptr [esi+44h], 280h
mov     word ptr [esi+48h], 140h
call    sub_4DE13B
test    eax, eax
jz      short loc_4AA285
mov     ebx, 1
mov     edx, eax
mov     eax, esi
call    sub_4B582D

loc_4AA285:
call    sub_4DE13B
test    eax, eax
jz      short loc_4AA2BA
mov     ebx, 2
mov     edx, eax
mov     eax, esi
call    sub_4B582D
jmp     short loc_4AA2BA

loc_4AA29E:
mov     ebx, 18h
mov     edx, ebx
mov     eax, esi
call    sub_4B53D3
mov     ecx, eax
mov     word ptr [esi+44h], 340h
mov     word ptr [esi+48h], 100h

loc_4AA2BA:
xor     eax, eax
mov     ax, [esi+12Ch]
xor     edx, edx
mov     dx, [esi+12Eh]
or      eax, edx
test    edi, eax
jz      loc_4AA34B
mov     edx, edi
and     edx, eax
cmp     edx, eax
jz      loc_4AA34B
xor     eax, eax
mov     ax, [esi+12Eh]
test    edi, eax
jz      short loc_4AA31F
test    ecx, ecx
jnz     short loc_4AA2F8
mov     ecx, 1

loc_4AA2F8:
neg     word ptr [esi+48h]
xor     edx, edx
mov     dx, [esi+128h]
xor     eax, eax
mov     ax, [esi+12Ah]
or      eax, edx
test    edi, eax
jnz     short loc_4AA351
mov     word ptr [esi+0B4h], 40h ; '@'
jmp     short loc_4AA351

loc_4AA31F:
test    ecx, ecx
jnz     short loc_4AA328
mov     ecx, 2

loc_4AA328:
xor     edx, edx
mov     dx, [esi+128h]
xor     eax, eax
mov     ax, [esi+12Ah]
or      eax, edx
test    edi, eax
jnz     short loc_4AA351
mov     word ptr [esi+0B4h], 0FFC0h
jmp     short loc_4AA351

loc_4AA34B:
mov     word ptr [esi+48h], 0

loc_4AA351:
cmp     ecx, 1
jb      short loc_4AA35F
jbe     short loc_4AA373
cmp     ecx, 2
jz      short loc_4AA392
jmp     short loc_4AA3BD

loc_4AA35F:
test    ecx, ecx
jnz     short loc_4AA3BD
xor     ebx, ebx
mov     edx, 39h ; '9'
mov     eax, esi
call    sub_4B520D
jmp     short loc_4AA3AF

loc_4AA373:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3Ch ; '<'
mov     eax, esi
call    sub_4B520D
xor     eax, eax
mov     ax, [esi+128h]
test    edi, eax
jz      short loc_4AA3BD
jmp     short loc_4AA3AF

loc_4AA392:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3Dh ; '='
mov     eax, esi
call    sub_4B520D
xor     eax, eax
mov     ax, [esi+12Ah]
test    edi, eax
jz      short loc_4AA3BD

loc_4AA3AF:
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Fh
call    sub_4D89E4

loc_4AA3BD:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ebx, ebx
mov     eax, esi
call    sub_4B527B
mov     byte ptr [esi+54Dh], 1
xor     eax, eax
mov     ax, [esi+134h]
test    edi, eax
jz      short loc_4AA3F3
test    byte ptr [esi+16Bh], 2
jnz     def_4AA14A      ; jumptable 004AA14A default case

loc_4AA3F3:
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Eh
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Fh
call    sub_4D89E4
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3Ah ; ':'
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+0Ah]
jmp     short def_4AA14A ; jumptable 004AA14A default case

loc_4AA424:             ; jumptable 004AA14A case 5
sub     word ptr [esi+44h], 28h ; '('
mov     ebx, 20h ; ' '
mov     edx, ebx
mov     eax, esi
call    sub_4B53D3
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4B527B
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4AA14A ; jumptable 004AA14A default case
mov     byte ptr [esi+9], 0
mov     word ptr [esi+0Ah], 0
mov     word ptr [esi+44h], 0
mov     byte ptr [esi+54Ah], 0

def_4AA14A:             ; jumptable 004AA14A default case
mov     dl, [esi+0Ah]
cmp     dl, 2
jbe     loc_4A9BA6
cmp     dl, 5
jnb     loc_4A9BA6
xor     eax, eax
mov     ax, [esi+12Ah]
test    ebp, eax
jz      short loc_4AA4A3
call    sub_4DE13B
test    eax, eax
jz      short loc_4AA4A3
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 89h
mov     byte ptr [eax+3], 1

loc_4AA4A3:
xor     eax, eax
mov     ax, [esi+128h]
test    ebp, eax
jz      loc_4A9BA6
call    sub_4DE13B
test    eax, eax
jz      loc_4A9BA6
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 89h
mov     byte ptr [eax+3], 0
jmp     loc_4A9BA6
sub_4AA122 endp




sub_4AA4D1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ax, [eax+11Ch]
mov     dl, [esi+0Ah]
test    dl, dl
jnz     short loc_4AA4FD
mov     dh, dl
inc     dh
mov     [esi+0Ah], dh
mov     word ptr [esi+0B6h], 0
mov     [esi+54Dh], dl

loc_4AA4FD:
xor     ecx, ecx
mov     cx, [esi+134h]
xor     edx, edx
mov     dx, ax
test    edx, ecx
jz      short loc_4AA51B
mov     edi, 2
mov     ebp, 20h ; ' '
jmp     short loc_4AA525

loc_4AA51B:
mov     edi, 4
mov     ebp, 48h ; 'H'

loc_4AA525:
mov     edx, [esi+171h]
sar     edx, 18h
test    dl, 0C0h
jnz     short loc_4AA569
xor     edx, edx
mov     dx, [esi+128h]
xor     ecx, ecx
mov     cx, [esi+12Ah]
or      ecx, edx
and     eax, 0FFFFh
mov     ebx, eax
and     ebx, ecx
cmp     ecx, ebx
jz      short loc_4AA561
test    eax, edx
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Dh
jmp     short loc_4AA582

loc_4AA561:
xor     ecx, ebx
xor     ebx, ebx
xor     edx, edx
jmp     short loc_4AA582

loc_4AA569:
test    dl, 80h
jz      short loc_4AA579
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 60h ; '`'
jmp     short loc_4AA582

loc_4AA579:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'

loc_4AA582:
mov     eax, esi
call    sub_4B520D
mov     ebx, ebp
mov     edx, edi
mov     eax, esi
call    sub_4B53D3
jmp     loc_4A9BA6
sub_4AA4D1 endp




sub_4AA599 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4AA5B0
cmp     al, 1
jz      short loc_4AA604
jmp     loc_4AA6AC

loc_4AA5B0:
mov     al, [esi+112h]
cmp     al, 2
jb      short loc_4AA5C2
jbe     short loc_4AA5D8
cmp     al, 3
jz      short loc_4AA5EA
jmp     short loc_4AA601

loc_4AA5C2:
cmp     al, 1
jnz     short loc_4AA601
mov     word ptr [esi+10Eh], 0FF80h
mov     ax, [esi+12Ch]
jmp     short loc_4AA5FA

loc_4AA5D8:
mov     word ptr [esi+10Eh], 100h
mov     ax, [esi+126h]
jmp     short loc_4AA5FA

loc_4AA5EA:
mov     word ptr [esi+10Eh], 80h
mov     ax, [esi+12Eh]

loc_4AA5FA:
mov     [esi+164h], ax

loc_4AA601:
inc     byte ptr [esi+0Ah]

loc_4AA604:
xor     edx, edx
mov     dx, [esi+11Ch]
mov     eax, [esi+162h]
sar     eax, 10h
test    edx, eax
jz      short loc_4AA64C
xor     ecx, ecx
mov     cx, [esi+124h]
xor     ebx, ebx
mov     bx, [esi+126h]
or      ebx, ecx
xor     ecx, ecx
mov     cx, [esi+12Ch]
xor     edi, edi
mov     di, [esi+12Eh]
or      ecx, edi
or      ecx, ebx
and     edx, ecx
not     eax
test    edx, eax
jz      short loc_4AA655

loc_4AA64C:
mov     word ptr [esi+164h], 0

loc_4AA655:
mov     ax, [esi+56h]
add     ax, [esi+10Eh]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ax, [esi+116h]
add     ax, [esi+10Eh]
and     ah, 0Fh
mov     [esi+116h], ax
test    ax, ax
jnz     short loc_4AA6AC
mov     byte ptr [esi+112h], 0
mov     byte ptr [esi+9], 0
cmp     word ptr [esi+164h], 0
jz      short loc_4AA6A1
mov     word ptr [esi+0Ah], 100h
jmp     short loc_4AA6A5

loc_4AA6A1:
mov     [esi+0Ah], ax

loc_4AA6A5:
mov     eax, esi
call    sub_4B570A

loc_4AA6AC:
mov     eax, [esi+171h]
sar     eax, 18h
test    al, 0C0h
jnz     loc_4A9BA7
cmp     byte ptr [esi+177h], 0
jnz     loc_4A9BA7
mov     word ptr [esi+0B4h], 0
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4B520D
jmp     loc_4A9BA7
sub_4AA599 endp




sub_4AA6E5 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ax, [eax+11Ch]
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_4AA70C
mov     byte ptr [esi+0Ah], 1
mov     word ptr [esi+0B4h], 0
or      byte ptr [esi+174h], 4

loc_4AA70C:
xor     edx, edx
mov     dx, [esi+130h]
xor     ecx, ecx
mov     cx, [esi+132h]
or      ecx, edx
and     eax, 0FFFFh
mov     ebx, eax
and     ebx, ecx
cmp     ebx, ecx
jz      short loc_4AA75A
test    eax, edx
jz      short loc_4AA749
mov     word ptr [esi+48h], 20h ; ' '
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Fh

loc_4AA740:
mov     eax, esi
call    sub_4B520D
jmp     short loc_4AA760

loc_4AA749:
mov     word ptr [esi+48h], 0FFE0h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Eh
jmp     short loc_4AA740

loc_4AA75A:
mov     word ptr [esi+48h], 0

loc_4AA760:
mov     ecx, [esi+46h]
sar     ecx, 10h
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4B527B
cmp     byte ptr [esi+0A4h], 8
jnz     short loc_4AA788
xor     ebx, ebx
xor     edx, edx
mov     eax, 95h
call    sub_4D89E4

loc_4AA788:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AA6E5 endp

align 2
jpt_4AA7C6 dd offset loc_4AA7CD ; jump table for switch statement
dd offset loc_4AA822
dd offset loc_4AA896
dd offset loc_4AA8F0
dd offset loc_4AA93D
dd offset loc_4AA953
dd offset def_4AA7C6



sub_4AA7AA proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     cx, [eax+11Ch]
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_4AA7C6      ; jumptable 004AA7C6 default case, case 6
xor     edx, edx
mov     dl, al
jmp     jpt_4AA7C6[edx*4] ; switch jump

loc_4AA7CD:             ; jumptable 004AA7C6 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+112h], 0
mov     word ptr [esi+116h], 0
mov     word ptr [esi+0B4h], 0
xor     edx, edx
mov     dx, [esi+148h]
xor     eax, eax
mov     ax, cx
test    eax, edx
jnz     short loc_4AA803
mov     word ptr [esi+48h], 0

loc_4AA803:
mov     eax, esi
call    sub_4B56DA
mov     ecx, 1
xor     ebx, ebx
mov     edx, 10h
mov     eax, esi
call    sub_4B520D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AA822:             ; jumptable 004AA7C6 case 1
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     def_4AA7C6      ; jumptable 004AA7C6 default case, case 6
inc     al
mov     [esi+0Ah], al
mov     al, [esi+0ACh]
mov     [esi+0ADh], al
mov     byte ptr [esi+74h], 1
test    byte ptr [esi+16Bh], 1
jz      short loc_4AA85A
mov     word ptr [esi+46h], 0FCE0h
jmp     short loc_4AA860

loc_4AA85A:
mov     word ptr [esi+46h], 0FE40h

loc_4AA860:
mov     eax, esi
call    sub_4B570A
mov     ecx, 1
xor     ebx, ebx
mov     edx, 11h
mov     eax, esi
call    sub_4B520D
xor     edx, edx
mov     eax, esi
call    sub_4AACE4
xor     ebx, ebx
xor     edx, edx
mov     eax, 92h
call    sub_4D89E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AA896:             ; jumptable 004AA7C6 case 2
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AACE4
xor     edx, edx
mov     dx, [esi+138h]
xor     eax, eax
mov     ax, cx
test    eax, edx
jz      short loc_4AA8E8
mov     cx, [esi+46h]
add     ecx, 30h ; '0'
mov     [esi+46h], cx
test    cx, cx
jl      def_4AA7C6      ; jumptable 004AA7C6 default case, case 6
mov     ecx, 1
xor     ebx, ebx
mov     edx, 12h
mov     eax, esi
call    sub_4B520D
add     byte ptr [esi+0Ah], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AA8E8:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AA8F0:             ; jumptable 004AA7C6 case 3
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AACE4
mov     edx, [esi+44h]
sar     edx, 10h
neg     edx
cmp     edx, 240h
jle     short loc_4AA91B
add     word ptr [esi+46h], 240h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AA91B:
mov     ecx, 1
xor     ebx, ebx
mov     edx, 12h
mov     eax, esi
call    sub_4B520D
add     byte ptr [esi+0Ah], 2
mov     word ptr [esi+46h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AA93D:             ; jumptable 004AA7C6 case 4
mov     ecx, 1
xor     ebx, ebx
mov     edx, 12h
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+0Ah]

loc_4AA953:             ; jumptable 004AA7C6 case 5
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AACE4
add     word ptr [esi+46h], 30h ; '0'

def_4AA7C6:             ; jumptable 004AA7C6 default case, case 6
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AA7AA endp

align 2
jpt_4AA9BA dd offset loc_4AA9C1 ; jump table for switch statement
dd offset loc_4AAA57
dd offset loc_4AAA57
dd offset loc_4AAAAD
dd offset loc_4AAAF9
dd offset loc_4AAB15
dd offset loc_4AAB2F
dd offset loc_4AAC87
jpt_4AAB5A dd offset loc_4AAB61 ; jump table for switch statement
dd offset loc_4AABE2
dd offset loc_4AAC0C
dd offset loc_4AAC36



sub_4AA99E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     cx, [eax+11Ch]
mov     al, [eax+0Ah]
cmp     al, 7           ; switch 8 cases
ja      def_4AA9BA      ; jumptable 004AA9BA default case
xor     edx, edx
mov     dl, al
jmp     jpt_4AA9BA[edx*4] ; switch jump

loc_4AA9C1:             ; jumptable 004AA9BA case 0
add     al, 2
mov     [esi+0Ah], al
mov     al, [esi+0ACh]
mov     [esi+0ADh], al
mov     byte ptr [esi+74h], 1
mov     byte ptr [esi+54Dh], 1
test    byte ptr [esi+16Bh], 1
jz      short loc_4AA9EE
mov     word ptr [esi+46h], 0FCE0h
jmp     short loc_4AA9F4

loc_4AA9EE:
mov     word ptr [esi+46h], 0FE40h

loc_4AA9F4:
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     dx, [esi+edx*8+148h]
and     edx, 0FFFFh
xor     eax, eax
mov     ax, cx
test    eax, edx
jnz     short loc_4AAA1A
mov     word ptr [esi+48h], 0

loc_4AAA1A:
mov     eax, esi
call    sub_4B570A
mov     ecx, 1
xor     ebx, ebx
mov     edx, 14h
mov     eax, esi
call    sub_4B520D
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AACE4
xor     ebx, ebx
xor     edx, edx
mov     eax, 92h
call    sub_4D89E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AAA57:             ; jumptable 004AA9BA cases 1,2
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AACE4
xor     edx, edx
mov     dx, [esi+138h]
xor     eax, eax
mov     ax, cx
test    eax, edx
jz      loc_4AABDA
mov     cx, [esi+46h]
add     ecx, 30h ; '0'
mov     [esi+46h], cx
test    cx, cx
jl      def_4AA9BA      ; jumptable 004AA9BA default case
mov     ecx, 1
xor     ebx, ebx
mov     edx, 15h
mov     eax, esi
call    sub_4B520D
add     byte ptr [esi+0Ah], 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AAAAD:             ; jumptable 004AA9BA case 3
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AACE4
mov     eax, [esi+44h]
sar     eax, 10h
neg     eax
cmp     eax, 240h
jle     short loc_4AAAD7
add     word ptr [esi+46h], 240h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AAAD7:
mov     ecx, 1
xor     ebx, ebx
mov     edx, 15h
mov     eax, esi
call    sub_4B520D
add     byte ptr [esi+0Ah], 2
mov     word ptr [esi+46h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AAAF9:             ; jumptable 004AA9BA case 4
mov     ecx, 1
xor     ebx, ebx
mov     edx, 12h
mov     eax, esi
call    sub_4B520D
mov     word ptr [esi+44h], 200h
inc     byte ptr [esi+0Ah]

loc_4AAB15:             ; jumptable 004AA9BA case 5
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AACE4
add     word ptr [esi+46h], 30h ; '0'
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AAB2F:             ; jumptable 004AA9BA case 6
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_4AA9BA      ; jumptable 004AA9BA default case
mov     eax, esi
call    sub_4B56DA
mov     al, [esi+112h]
cmp     al, 3           ; switch 4 cases
ja      def_4AAB5A      ; jumptable 004AAB5A default case
xor     edx, edx
mov     dl, al
jmp     jpt_4AAB5A[edx*4] ; switch jump

loc_4AAB61:             ; jumptable 004AAB5A case 0
xor     eax, eax
mov     ax, [esi+134h]
xor     edx, edx
mov     dx, cx
test    edx, eax
jnz     short loc_4AAB84
xor     eax, eax
mov     ax, [esi+124h]
test    edx, eax
jnz     def_4AAB5A      ; jumptable 004AAB5A default case

loc_4AAB84:
xor     eax, eax
mov     ax, [esi+134h]
xor     edx, edx
mov     dx, cx
test    edx, eax
jz      short loc_4AABCA
cmp     byte ptr [esi+54Ah], 10h
jbe     short loc_4AABCA
mov     byte ptr [esi+9], 3
mov     word ptr [esi+0Ah], 1
mov     word ptr [esi+44h], 300h
mov     word ptr [esi+48h], 0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3Bh ; ';'

loc_4AABBE:
mov     eax, esi
call    sub_4B520D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AABCA:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Ah ; '*'

loc_4AABD3:
mov     eax, esi
call    sub_4B520D

loc_4AABDA:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AABE2:             ; jumptable 004AAB5A case 1
xor     eax, eax
mov     ax, [esi+134h]
xor     edx, edx
mov     dx, cx
test    edx, eax
jnz     short loc_4AAC01
xor     eax, eax
mov     ax, [esi+12Ch]
test    edx, eax
jnz     short def_4AAB5A ; jumptable 004AAB5A default case

loc_4AAC01:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Bh ; '+'
jmp     short loc_4AABD3

loc_4AAC0C:             ; jumptable 004AAB5A case 2
xor     eax, eax
mov     ax, [esi+134h]
xor     edx, edx
mov     dx, cx
test    edx, eax
jnz     short loc_4AAC2B
xor     eax, eax
mov     ax, [esi+126h]
test    edx, eax
jnz     short def_4AAB5A ; jumptable 004AAB5A default case

loc_4AAC2B:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Dh ; '-'
jmp     short loc_4AABD3

loc_4AAC36:             ; jumptable 004AAB5A case 3
xor     eax, eax
mov     ax, [esi+134h]
xor     edx, edx
mov     dx, cx
test    edx, eax
jnz     short loc_4AAC55
xor     eax, eax
mov     ax, [esi+12Eh]
test    edx, eax
jnz     short def_4AAB5A ; jumptable 004AAB5A default case

loc_4AAC55:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Ch ; ','
jmp     loc_4AABD3

def_4AAB5A:             ; jumptable 004AAB5A default case
mov     word ptr [esi+44h], 200h
mov     word ptr [esi+46h], 0
mov     byte ptr [esi+9], 2
mov     word ptr [esi+0Ah], 2
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 17h
jmp     loc_4AABBE

loc_4AAC87:             ; jumptable 004AA9BA case 7
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4AA9BA ; jumptable 004AA9BA default case
mov     byte ptr [esi+9], 0
mov     word ptr [esi+0Ah], 0
mov     word ptr [esi+44h], 0
mov     word ptr [esi+48h], 0
mov     byte ptr [esi+54Ah], 0
mov     eax, esi
call    sub_4B570A
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4B520D
mov     word ptr [esi+116h], 0
mov     byte ptr [esi+112h], 0
mov     word ptr [esi+0B4h], 0

def_4AA9BA:             ; jumptable 004AA9BA default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AA99E endp




sub_4AACE4 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ebx, edx
mov     di, [eax+11Ch]
movsx   eax, dx
shl     eax, 3
lea     edx, [esi+eax]
xor     eax, eax
mov     ax, [edx+144h]
mov     dx, [edx+146h]
and     edx, 0FFFFh
xor     ecx, ecx
mov     cx, di
test    ecx, eax
jz      short loc_4AAD5A
mov     ebp, ecx
and     ebp, eax
cmp     eax, ebp
jz      short loc_4AAD5A
test    ecx, edx
jz      short loc_4AAD42
mov     cx, [esi+44h]
add     ecx, 28h ; '('
mov     [esi+44h], cx
cmp     cx, 280h
jle     short loc_4AAD5A
mov     word ptr [esi+44h], 280h
jmp     short loc_4AAD5A

loc_4AAD42:
sub     word ptr [esi+44h], 28h ; '('
mov     eax, [esi+42h]
sar     eax, 10h
cmp     eax, 0FFFFFD80h
jge     short loc_4AAD5A
mov     word ptr [esi+44h], 0FD80h

loc_4AAD5A:
movsx   eax, bx
shl     eax, 3
lea     edx, [esi+eax]
xor     eax, eax
mov     ax, [edx+148h]
mov     dx, [edx+14Ah]
and     edx, 0FFFFh
xor     ecx, ecx
mov     cx, di
test    ecx, eax
jz      short loc_4AADC8
mov     ebx, ecx
and     ebx, eax
cmp     ebx, eax
jz      short loc_4AADC2
test    ecx, edx
jz      short loc_4AADA8
sub     word ptr [esi+48h], 20h ; ' '
mov     eax, [esi+46h]
sar     eax, 10h
cmp     eax, 0FFFFFF00h
jge     short loc_4AADC8
mov     word ptr [esi+48h], 0FF00h
jmp     short loc_4AADC8

loc_4AADA8:
mov     dx, [esi+48h]
add     edx, 20h ; ' '
mov     [esi+48h], dx
cmp     dx, 100h
jle     short loc_4AADC8
mov     word ptr [esi+48h], 100h
jmp     short loc_4AADC8

loc_4AADC2:
mov     word ptr [esi+48h], 0

loc_4AADC8:
mov     ebx, 20h ; ' '
mov     edx, 4
mov     eax, esi
call    sub_4B53D3
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4B527B
cmp     byte ptr [esi+74h], 0
jnz     loc_4A9432
cmp     byte ptr [esi+9], 7
jnz     short loc_4AAE10
mov     ecx, 1
xor     ebx, ebx
mov     edx, 13h
jmp     short loc_4AAE1C

loc_4AAE10:
mov     ecx, 1
xor     ebx, ebx
mov     edx, 16h

loc_4AAE1C:
mov     eax, esi
call    sub_4B520D
xor     ebx, ebx
xor     edx, edx
mov     eax, 93h
call    sub_4D89E4
mov     byte ptr [esi+9], 8
mov     byte ptr [esi+0Ah], 6
jmp     loc_4A9432
sub_4AACE4 endp

jpt_4AAE67 dd offset loc_4AAE6E ; jump table for switch statement
dd offset loc_4AAEE0
dd offset loc_4AAF62
dd offset loc_4AAFB2
dd offset loc_4AB007



sub_4AAE52 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_4AAE67      ; jumptable 004AAE67 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4AAE67[edx*4] ; switch jump

loc_4AAE6E:             ; jumptable 004AAE67 case 0
mov     byte ptr [esi+110h], 0FFh
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     loc_4AAF5D
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+74h], 1
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0
cmp     byte ptr [esi+0Bh], 0
jz      short loc_4AAEB4
mov     word ptr [esi+48h], 0FE00h
mov     ecx, 1
xor     ebx, ebx
mov     edx, 18h
jmp     short loc_4AAEC6

loc_4AAEB4:
mov     word ptr [esi+48h], 200h
mov     ecx, 1
xor     ebx, ebx
mov     edx, 19h

loc_4AAEC6:
mov     eax, esi
call    sub_4B520D
xor     ebx, ebx
xor     edx, edx
mov     eax, 92h
call    sub_4D89E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AAEE0:             ; jumptable 004AAE67 case 1
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4AAF40
inc     al
mov     [esi+0Ah], al
mov     word ptr [esi+44h], 200h
mov     word ptr [esi+46h], 0FF80h
mov     word ptr [esi+48h], 0
cmp     byte ptr [esi+0Bh], 0
jz      short loc_4AAF1D
mov     byte ptr [esi+112h], 3
mov     word ptr [esi+116h], 0FC00h
jmp     short loc_4AAF2D

loc_4AAF1D:
mov     byte ptr [esi+112h], 1
mov     word ptr [esi+116h], 400h

loc_4AAF2D:
mov     ecx, 1
xor     ebx, ebx
mov     edx, 1Ah
mov     eax, esi
call    sub_4B520D

loc_4AAF40:
mov     byte ptr [esi+74h], 1

def_4AAE67:             ; jumptable 004AAE67 default case
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4B527B

loc_4AAF5D:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AAF62:             ; jumptable 004AAE67 case 2
add     word ptr [esi+46h], 30h ; '0'
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4AAF40
mov     byte ptr [esi+110h], 0
cmp     byte ptr [esi+74h], 0
jz      short loc_4AAF93
inc     byte ptr [esi+0Ah]
mov     ecx, 1
xor     ebx, ebx
mov     edx, 1Ch
jmp     short loc_4AAFA9

loc_4AAF93:
add     byte ptr [esi+0Ah], 2
mov     word ptr [esi+46h], 0
mov     ecx, 1
xor     ebx, ebx

loc_4AAFA4:
mov     edx, 1Bh

loc_4AAFA9:
mov     eax, esi
call    sub_4B520D
jmp     short def_4AAE67 ; jumptable 004AAE67 default case

loc_4AAFB2:             ; jumptable 004AAE67 case 3
add     word ptr [esi+46h], 30h ; '0'
cmp     byte ptr [esi+74h], 0
jnz     short loc_4AAFD5
inc     byte ptr [esi+0Ah]
mov     word ptr [esi+46h], 0
xor     ebx, ebx
mov     bl, [esi+0A4h]
mov     ecx, 1
jmp     short loc_4AAFA4

loc_4AAFD5:
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     def_4AAE67      ; jumptable 004AAE67 default case
mov     ecx, 1
xor     ebx, ebx
mov     edx, 12h
mov     eax, esi
call    sub_4B520D
mov     byte ptr [esi+9], 7
mov     byte ptr [esi+0Ah], 5
jmp     def_4AAE67      ; jumptable 004AAE67 default case

loc_4AB007:             ; jumptable 004AAE67 case 4
cmp     byte ptr [esi+0A6h], 1
jnz     def_4AAE67      ; jumptable 004AAE67 default case
cmp     byte ptr [esi+0Bh], 0
jz      short loc_4AB022
mov     word ptr [esi+48h], 0C0h
jmp     short loc_4AB028

loc_4AB022:
mov     word ptr [esi+48h], 0FF40h

loc_4AB028:
xor     ebx, ebx
xor     edx, edx
mov     eax, 93h
call    sub_4D89E4
mov     byte ptr [esi+9], 8
mov     byte ptr [esi+0Ah], 6
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AAE52 endp

db 8Dh, 40h, 0
jpt_4AB09C dd offset loc_4AB0A3 ; jump table for switch statement
dd offset loc_4AB0AC
dd offset loc_4AB0B3
dd offset loc_4AB0BA
dd offset loc_4AB0C3
dd offset loc_4AB0D1
dd offset loc_4AB0DF
dd offset loc_4AB0E8



sub_4AB066 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4AB086
jbe     loc_4AB13D
cmp     al, 2
jz      loc_4AB158
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AB086:
test    al, al
jnz     loc_4AB16E
mov     al, [esi+0Bh]
dec     al              ; switch 8 cases
cmp     al, 7
ja      short def_4AB09C ; jumptable 004AB09C default case
and     eax, 0FFh
jmp     jpt_4AB09C[eax*4] ; switch jump

loc_4AB0A3:             ; jumptable 004AB09C case 1
sub     dword ptr [esi+24h], 180000h
jmp     short loc_4AB0F2

loc_4AB0AC:             ; jumptable 004AB09C case 2
add     word ptr [esi+26h], 18h
jmp     short loc_4AB0F2

loc_4AB0B3:             ; jumptable 004AB09C case 3
add     word ptr [esi+1Eh], 18h
jmp     short loc_4AB0F2

loc_4AB0BA:             ; jumptable 004AB09C case 4
sub     dword ptr [esi+1Ch], 180000h
jmp     short loc_4AB0F2

loc_4AB0C3:             ; jumptable 004AB09C case 5
add     word ptr [esi+1Eh], 0Ch

loc_4AB0C8:
sub     dword ptr [esi+24h], 0C0000h
jmp     short loc_4AB0F2

loc_4AB0D1:             ; jumptable 004AB09C case 6
sub     dword ptr [esi+1Ch], 0C0000h
add     word ptr [esi+26h], 0Ch
jmp     short loc_4AB0F2

loc_4AB0DF:             ; jumptable 004AB09C case 7
sub     dword ptr [esi+1Ch], 0C0000h
jmp     short loc_4AB0C8

loc_4AB0E8:             ; jumptable 004AB09C case 8
add     word ptr [esi+1Eh], 0Ch
add     word ptr [esi+26h], 0Ch

loc_4AB0F2:
add     word ptr [esi+22h], 20h ; ' '

def_4AB09C:             ; jumptable 004AB09C default case
call    sub_4DE13B
test    eax, eax
jz      short loc_4AB10B
xor     ebx, ebx
mov     edx, eax
mov     eax, esi
call    sub_4B582D

loc_4AB10B:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 12h
mov     eax, esi
call    sub_4B520D
mov     word ptr [esi+48h], 0
mov     ax, [esi+48h]
mov     [esi+46h], ax
mov     [esi+44h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AB13D:
mov     ecx, 1
xor     ebx, ebx
mov     edx, 13h
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AB158:
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4AB16E
mov     byte ptr [esi+9], 8
mov     byte ptr [esi+0Ah], 6

loc_4AB16E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AB066 endp

db 8Dh, 40h, 0
jpt_4AB19B dd offset loc_4AB1A2 ; jump table for switch statement
dd offset loc_4AB24B
dd offset loc_4AB25B
dd offset loc_4AB292



sub_4AB186 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_4AB19B      ; jumptable 004AB19B default case
xor     edx, edx
mov     dl, al
jmp     jpt_4AB19B[edx*4] ; switch jump

loc_4AB1A2:             ; jumptable 004AB19B case 0
cmp     byte ptr [esi+0Bh], 0
jnz     short loc_4AB1C3
mov     ecx, 1
xor     ebx, ebx
mov     edx, 20h ; ' '
mov     eax, esi
call    sub_4B520D
mov     word ptr [esi+44h], 0FE00h
jmp     short loc_4AB1DC

loc_4AB1C3:
mov     ecx, 1
xor     ebx, ebx
mov     edx, 21h ; '!'
mov     eax, esi
call    sub_4B520D
mov     word ptr [esi+44h], 200h

loc_4AB1DC:
mov     word ptr [esi+46h], 0
mov     word ptr [esi+48h], 0
mov     byte ptr [esi+168h], 1
mov     byte ptr [esi+169h], 1
mov     byte ptr [esi+54Ah], 0
mov     eax, esi
call    sub_4B56DA
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4B527B
mov     eax, 16h
call    sub_4D8E2B
xor     ebx, ebx
xor     edx, edx
mov     eax, 97h
call    sub_4D89E4
call    sub_42A4FC
mov     word ptr [esi+108h], 0

loc_4AB243:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AB24B:             ; jumptable 004AB19B case 1
mov     ah, [esi+0A6h]
cmp     ah, 1
jnz     short loc_4AB25B ; jumptable 004AB19B case 2
add     al, ah
mov     [esi+0Ah], al

loc_4AB25B:             ; jumptable 004AB19B case 2
cmp     byte ptr [esi+0Bh], 0
jnz     short loc_4AB268
add     word ptr [esi+44h], 40h ; '@'
jmp     short loc_4AB26D

loc_4AB268:
sub     word ptr [esi+44h], 40h ; '@'

loc_4AB26D:
cmp     word ptr [esi+44h], 0
jz      short loc_4AB243
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4B527B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AB292:             ; jumptable 004AB19B case 3
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_4AB19B ; jumptable 004AB19B default case
mov     byte ptr [esi+9], 8
mov     byte ptr [esi+0Ah], 6
mov     byte ptr [esi+71h], 0
mov     byte ptr [esi+168h], 0
mov     byte ptr [esi+169h], 0

def_4AB19B:             ; jumptable 004AB19B default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AB186 endp

db 8Dh, 40h, 0
jpt_4AB2EF dd offset loc_4AB2F6 ; jump table for switch statement
dd offset loc_4AB2F6
dd offset loc_4AB393
dd offset loc_4AB3F3
dd offset loc_4AB47A
dd offset loc_4AB4CF



sub_4AB2DA proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_4AB2EF      ; jumptable 004AB2EF default case
xor     edx, edx
mov     dl, al
jmp     jpt_4AB2EF[edx*4] ; switch jump

loc_4AB2F6:             ; jumptable 004AB2EF cases 0,1
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_4AB300
xor     ebx, ebx
jmp     short loc_4AB305

loc_4AB300:
mov     ebx, 6

loc_4AB305:
movsx   ebx, bx
mov     ecx, 1
mov     edx, 22h ; '"'
mov     eax, esi
call    sub_4B520D
mov     word ptr [esi+44h], 0FE00h
mov     eax, esi
call    sub_4B56DA
mov     word ptr [esi+48h], 0
mov     word ptr [esi+46h], 0FEA0h
mov     byte ptr [esi+74h], 1
mov     byte ptr [esi+110h], 0FFh
mov     byte ptr [esi+168h], 1
mov     byte ptr [esi+169h], 1
mov     byte ptr [esi+54Ah], 0
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4B527B
mov     eax, 16h
call    sub_4D8E2B
xor     ebx, ebx
xor     edx, edx
mov     eax, 98h
call    sub_4D89E4
call    sub_42A4FC
mov     word ptr [esi+108h], 0
jmp     short loc_4AB3BA

loc_4AB393:             ; jumptable 004AB2EF case 2
cmp     byte ptr [esi+74h], 0
jnz     short loc_4AB3C2
mov     ecx, 1
xor     ebx, ebx
mov     edx, 23h ; '#'
mov     eax, esi
call    sub_4B520D

loc_4AB3AC:
xor     ebx, ebx
xor     edx, edx
mov     eax, 99h
call    sub_4D89E4

loc_4AB3BA:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AB3C2:
cmp     byte ptr [esi+0A6h], 1
jnz     short loc_4AB3D0
add     al, 2
mov     [esi+0Ah], al

loc_4AB3D0:
add     word ptr [esi+46h], 30h ; '0'
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4B527B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AB3F3:             ; jumptable 004AB2EF case 3
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_4AB2EF      ; jumptable 004AB2EF default case
cmp     word ptr [esi+6Eh], 0
jl      loc_4AB4F5
mov     ecx, 1
xor     ebx, ebx
mov     edx, 25h ; '%'

loc_4AB41C:
mov     eax, esi
call    sub_4B520D
mov     ax, [esi+116h]
sub     [esi+56h], ax
mov     byte ptr [esi+112h], 0
mov     word ptr [esi+116h], 0
mov     eax, offset unk_530558
call    sub_42A7B1
call    sub_4369C1
mov     byte ptr [esi+9], 8
mov     byte ptr [esi+0Ah], 6
mov     byte ptr [esi+71h], 0
mov     byte ptr [esi+168h], 0
mov     byte ptr [esi+169h], 0
mov     byte ptr [esi+110h], 1
mov     byte ptr [esi+111h], 30h ; '0'
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AB47A:             ; jumptable 004AB2EF case 4
cmp     byte ptr [esi+74h], 0
jnz     loc_4AB3D0
mov     ecx, 1
xor     ebx, ebx
mov     edx, 24h ; '$'
mov     eax, esi
call    sub_4B520D
mov     eax, 8
call    sub_436916
test    eax, eax
jz      short loc_4AB4B3
cmp     byte ptr [esi+16Ah], 0
jnz     short loc_4AB4B3
sub     word ptr [esi+6Eh], 8

loc_4AB4B3:
lea     ecx, [esi+14h]
mov     ebx, 2800h
mov     edx, 400h
mov     eax, 1Eh
call    sub_42A70B
jmp     loc_4AB3AC

loc_4AB4CF:             ; jumptable 004AB2EF case 5
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4AB2EF ; jumptable 004AB2EF default case
cmp     word ptr [esi+6Eh], 0
jl      short loc_4AB4F5
mov     ecx, 1
xor     ebx, ebx
mov     edx, 29h ; ')'
jmp     loc_4AB41C

loc_4AB4F5:
mov     byte ptr [esi+8], 2
mov     byte ptr [esi+9], 0

def_4AB2EF:             ; jumptable 004AB2EF default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AB2DA endp

jpt_4AB546 dd offset loc_4AB54D ; jump table for switch statement
dd offset loc_4AB594
dd offset loc_4AB5B4
dd offset loc_4AB6C6
dd offset loc_4AB6EE
dd offset loc_4AB71A
dd offset loc_4AB77A



sub_4AB51E proc near

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
xor     eax, eax
mov     ax, [ebp+11Ch]
mov     [esp+24h+var_1C], eax
mov     al, [ebp+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_4AB546      ; jumptable 004AB546 default case
and     eax, 0FFh
jmp     jpt_4AB546[eax*4] ; switch jump

loc_4AB54D:             ; jumptable 004AB546 case 0
mov     eax, ebp
call    sub_4B56DA
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1Dh
mov     eax, ebp
call    sub_4B520D
xor     ebx, ebx
xor     edx, edx
mov     eax, 9Fh
call    sub_4D89E4
mov     byte ptr [ebp+54Ah], 0
mov     word ptr [ebp+0B4h], 0
mov     byte ptr [ebp+54Dh], 0

loc_4AB589:
inc     byte ptr [ebp+0Ah]

def_4AB546:             ; jumptable 004AB546 default case
add     esp, 0Ch
jmp     loc_4A9BA6

loc_4AB594:             ; jumptable 004AB546 case 1
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4AB546 ; jumptable 004AB546 default case
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1Eh
mov     eax, ebp
call    sub_4B520D
jmp     short loc_4AB589

loc_4AB5B4:             ; jumptable 004AB546 case 2
xor     eax, eax
mov     ax, [ebp+126h]
test    [esp+24h+var_1C], eax
jz      short loc_4AB5C9
mov     byte ptr [ebp+0Ah], 6
jmp     short def_4AB546 ; jumptable 004AB546 default case

loc_4AB5C9:
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
mov     edx, [ebp+54h]
sar     edx, 10h
mov     eax, [ebp+114h]
sar     eax, 10h
sub     edx, eax
lea     eax, [edx+200h]
sar     eax, 0Ah
and     eax, 3
test    al, 1
jz      short loc_4AB60C
test    al, 2
jz      short loc_4AB603
mov     eax, [ebp+78h]
mov     ax, [eax+2]
inc     eax

loc_4AB5FD:
add     [esp+24h+var_24], ax
jmp     short loc_4AB627

loc_4AB603:
mov     eax, [ebp+78h]
mov     ax, [eax]
dec     eax
jmp     short loc_4AB5FD

loc_4AB60C:
test    al, 2
jz      short loc_4AB61A
mov     eax, [ebp+78h]
mov     ax, [eax+6]
inc     eax
jmp     short loc_4AB622

loc_4AB61A:
mov     eax, [ebp+78h]
mov     ax, [eax+4]
dec     eax

loc_4AB622:
add     [esp+24h+var_20], ax

loc_4AB627:
sub     [esp+24h+var_22], 98h
xor     ecx, ecx
mov     cl, [ebp+1]
xor     ebx, ebx
xor     edx, edx
mov     eax, esp
call    sub_42C5B7
add     eax, 98h
mov     edx, [ebp+14h]
sar     edx, 10h
sub     edx, eax
test    edx, edx
jge     short loc_4AB651
neg     edx

loc_4AB651:
cmp     edx, 20h ; ' '
jl      short loc_4AB662

loc_4AB656:
mov     eax, ebp
call    sub_4AB7A2
jmp     def_4AB546      ; jumptable 004AB546 default case

loc_4AB662:
mov     [ebp+16h], ax
shl     eax, 10h
mov     [ebp+20h], eax
xor     eax, eax
mov     ax, [ebp+124h]
test    [esp+24h+var_1C], eax
jz      def_4AB546      ; jumptable 004AB546 default case
mov     byte ptr [ebp+75h], 2
mov     al, [ebp+75h]
mov     [ebp+74h], al
mov     byte ptr [ebp+76h], 0
inc     byte ptr [ebp+0Ah]
mov     word ptr [ebp+44h], 0
mov     ax, [ebp+16h]
sub     ax, [ebp+2Eh]
shl     eax, 5
sub     eax, 90h
mov     [ebp+46h], ax
mov     word ptr [ebp+48h], 0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1Fh
mov     eax, ebp
call    sub_4B520D
jmp     def_4AB546      ; jumptable 004AB546 default case

loc_4AB6C6:             ; jumptable 004AB546 case 3
mov     ebx, [ebp+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4B527B
mov     dh, [ebp+0A6h]
cmp     dh, 1
jnz     def_4AB546      ; jumptable 004AB546 default case
add     [ebp+0Ah], dh
jmp     def_4AB546      ; jumptable 004AB546 default case

loc_4AB6EE:             ; jumptable 004AB546 case 4
mov     word ptr [ebp+44h], 50h ; 'P'
mov     word ptr [ebp+46h], 0FE50h
mov     word ptr [ebp+48h], 0
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, ebp
call    sub_4B527B
jmp     loc_4AB589

loc_4AB71A:             ; jumptable 004AB546 case 5
add     word ptr [ebp+46h], 30h ; '0'
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, ebp
call    sub_4B527B
cmp     byte ptr [ebp+74h], 0
jnz     short loc_4AB763
mov     ecx, 1
xor     ebx, ebx
mov     edx, 13h
mov     eax, ebp
call    sub_4B520D
xor     ebx, ebx
xor     edx, edx
mov     eax, 93h
call    sub_4D89E4
mov     byte ptr [ebp+9], 8
mov     byte ptr [ebp+0Ah], 6

loc_4AB763:
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_4AB546      ; jumptable 004AB546 default case
jmp     loc_4AB656

loc_4AB77A:             ; jumptable 004AB546 case 6
mov     word ptr [ebp+44h], 0FFD6h
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+48h], 0
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4B527B
jmp     loc_4AB656
sub_4AB51E endp




sub_4AB7A2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     byte ptr [eax+9], 7
mov     word ptr [eax+0Ah], 4
mov     byte ptr [eax+75h], 1
mov     al, [eax+75h]
mov     [esi+74h], al
mov     eax, esi
call    sub_4B570A
mov     ecx, 1
xor     ebx, ebx
mov     edx, 12h
jmp     loc_4AA048
sub_4AB7A2 endp




sub_4AB7D4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4AB812
mov     byte ptr [esi+0Ah], 1
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0
mov     word ptr [esi+48h], 0
mov     word ptr [esi+108h], 0
mov     word ptr [esi+10Ah], 0
mov     word ptr [esi+10Eh], 0

loc_4AB812:
mov     edi, ds:dword_5505E8
test    edi, edi
jz      short loc_4AB830
test    byte ptr ds:dword_559A40, 2
jz      short loc_4AB830
mov     eax, esi
call    sub_4ABAE7
test    eax, eax
jz      short loc_4AB8A2

loc_4AB830:
mov     ebx, 40h ; '@'
mov     edx, 2
mov     eax, esi
call    sub_4B52A6
mov     eax, [esi+106h]
sar     eax, 10h
mov     edx, 15Eh
call    sub_42A530
mov     word ptr [esi+10Eh], 0
mov     eax, [esi+171h]
sar     eax, 18h
test    al, 0C0h
jnz     short loc_4AB885
mov     ecx, 1

loc_4AB86F:
mov     ebx, 48h ; 'H'
mov     edx, 4
mov     eax, esi
call    sub_4B5429
jmp     loc_4A9BA7

loc_4AB885:
mov     eax, esi
call    sub_4AD40B
test    eax, eax
jnz     short loc_4AB894
xor     ecx, ecx
jmp     short loc_4AB86F

loc_4AB894:
mov     word ptr [esi+0B4h], 0
jmp     loc_4A9BA7

loc_4AB8A2:
lea     edx, [edi+14h]
lea     eax, [esi+14h]
call    sub_4DDE21
and     ah, 0Fh
mov     [esi+10Ah], ax
mov     eax, [esi+54h]
sar     eax, 10h
mov     ecx, [esi+108h]
sar     ecx, 10h
sub     eax, ecx
mov     ecx, eax
cmp     eax, 800h
jle     short loc_4AB8D7
lea     ecx, [eax-1000h]

loc_4AB8D7:
cmp     ecx, 0FFFFF800h
jge     short loc_4AB8E5
add     ecx, 1000h

loc_4AB8E5:
mov     eax, [esi+171h]
sar     eax, 18h
test    al, 0C0h
jnz     short loc_4AB8F9
mov     ebx, 1
jmp     short loc_4AB906

loc_4AB8F9:
mov     eax, esi
call    sub_4AD338
test    eax, eax
jnz     short loc_4AB90F
xor     ebx, ebx

loc_4AB906:
mov     edx, ecx
mov     eax, esi
call    sub_4ABA67

loc_4AB90F:
lea     edx, [edi+14h]
lea     eax, [esi+14h]
call    sub_4DDE4A
lea     ecx, [eax-0C00h]
mov     eax, [esi+106h]
sar     eax, 10h
cmp     ecx, eax
jnz     short loc_4AB93B
mov     word ptr [esi+10Eh], 0
jmp     loc_4ABA4F

loc_4AB93B:
mov     edx, ecx
sub     edx, eax
test    edx, edx
jle     loc_4AB9CB
mov     di, [esi+10Eh]
test    di, di
jge     short loc_4AB95E
mov     word ptr [esi+10Eh], 0
jmp     short loc_4AB97B

loc_4AB95E:
mov     eax, edi
add     eax, 4
mov     [esi+10Eh], ax
cmp     ax, 40h ; '@'
jle     short loc_4AB97B
mov     word ptr [esi+10Eh], 40h ; '@'

loc_4AB97B:
mov     eax, [esi+106h]
sar     eax, 10h
mov     edx, ecx
sub     edx, eax
mov     eax, edx
mov     edx, [esi+10Ch]
sar     edx, 10h
cmp     eax, edx
jle     short loc_4AB9A7
mov     ax, [esi+10Eh]
add     [esi+108h], ax
jmp     short loc_4AB9AE

loc_4AB9A7:
mov     [esi+108h], cx

loc_4AB9AE:
cmp     word ptr [esi+108h], 1C0h
jle     loc_4ABA4F
mov     word ptr [esi+108h], 1C0h
jmp     loc_4ABA4F

loc_4AB9CB:
mov     dx, [esi+10Eh]
test    dx, dx
jle     short loc_4AB9E2
mov     word ptr [esi+10Eh], 0
jmp     short loc_4ABA05

loc_4AB9E2:
mov     ebx, edx
sub     ebx, 4
mov     [esi+10Eh], bx
mov     eax, [esi+10Ch]
sar     eax, 10h
cmp     eax, 0FFFFFFC0h
jge     short loc_4ABA05
mov     word ptr [esi+10Eh], 0FFC0h

loc_4ABA05:
mov     eax, [esi+106h]
sar     eax, 10h
mov     edx, ecx
sub     edx, eax
mov     eax, [esi+10Ch]
sar     eax, 10h
cmp     edx, eax
jge     short loc_4ABA2F
mov     ax, [esi+10Eh]
add     [esi+108h], ax
jmp     short loc_4ABA36

loc_4ABA2F:
mov     [esi+108h], cx

loc_4ABA36:
mov     eax, [esi+106h]
sar     eax, 10h
cmp     eax, 0FFFFFE40h
jge     short loc_4ABA4F
mov     word ptr [esi+108h], 0FE40h

loc_4ABA4F:
mov     eax, [esi+106h]
sar     eax, 10h
mov     edx, 15Eh
call    sub_42A530
jmp     loc_4A9BA7
sub_4AB7D4 endp




sub_4ABA67 proc near
push    ecx
push    esi
mov     esi, eax
mov     eax, ebx
test    edx, edx
jge     short loc_4ABA77
mov     ecx, edx
neg     ecx
jmp     short loc_4ABA79

loc_4ABA77:
mov     ecx, edx

loc_4ABA79:
cmp     ecx, 80h
jge     short loc_4ABAA9
mov     word ptr [esi+0B4h], 0
mov     dx, [esi+10Ah]
mov     [esi+56h], dx
test    eax, eax
jz      short loc_4ABAE4
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4B520D
pop     esi
pop     ecx
retn

loc_4ABAA9:
test    edx, edx
jle     short loc_4ABABC
mov     word ptr [esi+0B4h], 0FF80h
test    eax, eax
jz      short loc_4ABAD9
jmp     short loc_4ABAC9

loc_4ABABC:
mov     word ptr [esi+0B4h], 80h
test    eax, eax
jz      short loc_4ABAD9

loc_4ABAC9:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, esi
call    sub_4B520D

loc_4ABAD9:
mov     ax, [esi+0B4h]
add     [esi+56h], ax

loc_4ABAE4:
pop     esi
pop     ecx
retn
sub_4ABA67 endp




sub_4ABAE7 proc near
push    ecx
push    edx
xor     edx, edx
mov     dx, [eax+11Ch]
cmp     ds:byte_77E7DA, 0
jz      short loc_4ABB03

loc_4ABAFB:
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4ABB03:
cmp     ds:byte_77E807, 0
jnz     short loc_4ABB19
xor     ecx, ecx
mov     cx, [eax+13Eh]
test    edx, ecx
jnz     short loc_4ABAFB

loc_4ABB19:
cmp     ds:byte_77E807, 1
jnz     short loc_4ABB32
mov     ax, [eax+140h]
and     eax, 0FFFFh
test    edx, eax
jz      short loc_4ABAFB

loc_4ABB32:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4ABAE7 endp




sub_4ABB37 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4ABB51
jbe     short loc_4ABB74
cmp     al, 2
jz      short loc_4ABBC2
jmp     loc_4A9BA6

loc_4ABB51:
test    al, al
jnz     loc_4A9BA6
mov     ecx, 1
xor     ebx, ebx
mov     edx, 80h
mov     eax, ebp
call    sub_4B520D
inc     byte ptr [ebp+0Ah]
jmp     loc_4A9BA6

loc_4ABB74:
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
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
lea     edi, [ebp+14h]
lea     esi, [ebp+538h]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+528h]
movsd
movsd
movsd
movsd
lea     edi, [ebp+54h]
lea     esi, [ebp+540h]
movsd
movsd
jmp     loc_4A9BA6

loc_4ABBC2:
mov     byte ptr [ebp+9], 0Ch
mov     byte ptr [ebp+0Ah], 0
jmp     loc_4A9BA6
sub_4ABB37 endp

db 8Dh, 40h, 0
jpt_4ABBF4 dd offset loc_4ABBFB ; jump table for switch statement
dd offset def_4ABBF4
dd offset loc_4ABC16
dd offset loc_4ABC24



sub_4ABBE2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      short def_4ABBF4 ; jumptable 004ABBF4 default case, case 1
and     eax, 0FFh
jmp     jpt_4ABBF4[eax*4] ; switch jump

loc_4ABBFB:             ; jumptable 004ABBF4 case 0
mov     ecx, 1
xor     ebx, ebx
mov     edx, 30h ; '0'

loc_4ABC07:
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4ABC16:             ; jumptable 004ABBF4 case 2
mov     ecx, 1
xor     ebx, ebx
mov     edx, 31h ; '1'
jmp     short loc_4ABC07

loc_4ABC24:             ; jumptable 004ABBF4 case 3
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4ABBF4 ; jumptable 004ABBF4 default case, case 1
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0

def_4ABBF4:             ; jumptable 004ABBF4 default case, case 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ABBE2 endp




sub_4ABC3F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_4ABC62
mov     ecx, 1
xor     ebx, ebx
mov     edx, 33h ; '3'
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+0Ah]

loc_4ABC62:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ABC3F endp




sub_4ABC67 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_4ABC8A
mov     ecx, 1
xor     ebx, ebx
mov     edx, 34h ; '4'
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+0Ah]

loc_4ABC8A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ABC67 endp




sub_4ABC8F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_4ABCB2
mov     ecx, 1
xor     ebx, ebx
mov     edx, 35h ; '5'
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+0Ah]

loc_4ABCB2:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ABC8F endp




sub_4ABCB7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_4ABCDA
mov     ecx, 1
xor     ebx, ebx
mov     edx, 36h ; '6'
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+0Ah]

loc_4ABCDA:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ABCB7 endp




sub_4ABCDF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     si, [eax+11Ch]
mov     di, [eax+11Eh]
call    sub_4ACF2E
test    eax, eax
jnz     short loc_4ABD08
mov     eax, ecx
call    sub_4AD46F
test    eax, eax
jz      short loc_4ABD14

loc_4ABD08:
mov     byte ptr [ecx+54Ah], 0
jmp     loc_4A9BA7

loc_4ABD14:
xor     edx, edx
mov     dx, [ecx+124h]
mov     ax, [ecx+126h]
mov     ebx, edx
or      ebx, eax
xor     edx, edx
mov     dx, [ecx+12Ch]
xor     eax, eax
mov     ax, [ecx+12Eh]
or      eax, edx
or      eax, ebx
xor     edx, edx
mov     dx, di
test    edx, eax
jz      short loc_4ABD4B
mov     byte ptr [ecx+0Bh], 0

loc_4ABD4B:
xor     eax, eax
mov     ax, [ecx+124h]
xor     edx, edx
mov     dx, [ecx+126h]
or      eax, edx
xor     ebx, ebx
mov     bx, [ecx+12Ch]
xor     edx, edx
mov     dx, [ecx+12Eh]
or      ebx, edx
or      ebx, eax
xor     eax, eax
mov     ax, [ecx+138h]
or      ebx, eax
xor     edx, edx
mov     dx, [ecx+13Ah]
xor     eax, eax
mov     ax, [ecx+13Ch]
or      eax, edx
or      ebx, eax
xor     edx, edx
mov     dx, [ecx+128h]
xor     eax, eax
mov     ax, [ecx+12Ah]
or      eax, edx
or      eax, ebx
xor     edx, edx
mov     dx, si
test    edx, eax
jnz     short loc_4ABDC2
test    byte ptr [ecx+176h], 3
jz      loc_4ABEB6

loc_4ABDC2:
mov     byte ptr [ecx+54Ah], 0
mov     eax, ecx
call    sub_4AD3A7
test    eax, eax
jnz     loc_4ABEA4
xor     edx, edx
mov     eax, ecx
call    sub_4ACF9D
mov     eax, ecx
call    sub_4ACBC7
test    eax, eax
jnz     loc_4A9BA7
mov     eax, ecx
call    sub_4AD338
test    eax, eax
jnz     short loc_4ABE57
mov     eax, ecx
call    sub_4AD2CA
test    eax, eax
jz      short loc_4ABE57
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_4ABE57
mov     eax, ecx
call    sub_4AC910
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     dl, [ecx+0Bh]
mov     eax, ecx
call    sub_4AC963
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     dl, [ecx+0Bh]
mov     eax, ecx
call    sub_4AC9E2
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     dl, [ecx+0Bh]
mov     eax, ecx
call    sub_4ACA61
test    eax, eax
jnz     loc_4A9BA7

loc_4ABE57:
mov     eax, [ecx+171h]
sar     eax, 18h
test    al, 0C0h
jnz     short loc_4ABEA4
cmp     byte ptr [ecx+177h], 0
jnz     short loc_4ABEA4
mov     eax, ecx
call    sub_4AC87D
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     dl, [ecx+0Bh]
mov     eax, ecx
call    sub_4ACB66
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     dl, [ecx+0Bh]
mov     eax, ecx
call    sub_4AC8BD
test    eax, eax
jnz     loc_4A9BA7

loc_4ABEA4:
mov     eax, ecx
call    sub_4AD40B
test    eax, eax
jnz     short loc_4ABEB6
mov     eax, ecx
call    sub_4ACB26

loc_4ABEB6:
mov     eax, ecx
call    sub_4ACAC7
jmp     loc_4A9BA7
sub_4ABCDF endp




sub_4ABEC2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     si, [eax+11Ch]
call    sub_4AD46F
test    eax, eax
jnz     loc_4AC01E
mov     ax, [ecx+124h]
xor     ebx, ebx
mov     bx, [ecx+126h]
or      ebx, eax
xor     eax, eax
mov     ax, [ecx+12Ch]
xor     edx, edx
mov     dx, [ecx+12Eh]
or      eax, edx
mov     edx, ebx
or      edx, eax
xor     eax, eax
mov     ax, [ecx+138h]
or      edx, eax
xor     ebx, ebx
mov     bx, [ecx+13Ah]
xor     eax, eax
mov     ax, [ecx+13Ch]
or      eax, ebx
or      eax, edx
xor     ebx, ebx
mov     bx, si
test    ebx, eax
jz      loc_4AC014
xor     edx, edx
mov     eax, ecx
call    sub_4ACF9D
test    eax, eax
jnz     loc_4AC014
mov     eax, ecx
call    sub_4ACBC7
test    eax, eax
jnz     loc_4AC01E
mov     eax, ecx
call    sub_4AC910
test    eax, eax
jnz     loc_4AC01E
xor     edx, edx
mov     eax, ecx
call    sub_4ACA61
test    eax, eax
jnz     loc_4AC01E
mov     eax, [ecx+171h]
sar     eax, 18h
test    al, 0C0h
jnz     loc_4AC014
cmp     byte ptr [ecx+177h], 0
jnz     loc_4AC014
mov     eax, ecx
call    sub_4AC87D
test    eax, eax
jnz     loc_4AC01E
xor     edx, edx
mov     eax, ecx
call    sub_4AC8BD
test    eax, eax
jnz     loc_4AC01E
cmp     byte ptr [ecx+0Bh], 0
jz      short loc_4ABFE6
mov     ax, [ecx+124h]
test    ebx, eax
jz      short loc_4AC014
xor     eax, eax
mov     ax, [ecx+134h]
test    ebx, eax
jnz     short loc_4AC01E
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
mov     byte ptr [ecx+112h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4ABFE6:
mov     ax, [ecx+126h]
test    ebx, eax
jz      short loc_4AC014
xor     eax, eax
mov     ax, [ecx+134h]
test    ebx, eax
jnz     short loc_4AC01E
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
mov     byte ptr [ecx+112h], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AC014:
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0

loc_4AC01E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ABEC2 endp

db 8Dh, 40h, 0
jpt_4AC05E dd offset loc_4AC065 ; jump table for switch statement
dd offset loc_4AC134
dd offset loc_4AC26B
dd offset loc_4AC382



sub_4AC036 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     bx, [eax+11Ch]
mov     di, [eax+11Eh]
mov     al, [eax+112h]
cmp     al, 3           ; switch 4 cases
ja      def_4AC05E      ; jumptable 004AC05E default case
and     eax, 0FFh
jmp     jpt_4AC05E[eax*4] ; switch jump

loc_4AC065:             ; jumptable 004AC05E case 0
xor     eax, eax
mov     ax, [ecx+124h]
xor     edx, edx
mov     dx, [ecx+126h]
or      edx, eax
xor     eax, eax
mov     ax, [ecx+12Ch]
xor     esi, esi
mov     si, [ecx+12Eh]
or      eax, esi
or      eax, edx
xor     esi, esi
mov     si, [ecx+138h]
or      esi, eax
xor     edx, edx
mov     dx, [ecx+13Ah]
xor     eax, eax
mov     ax, [ecx+13Ch]
or      eax, edx
or      eax, esi
xor     edx, edx
mov     dx, bx
test    edx, eax
jz      short loc_4AC12B
mov     edx, 1
mov     eax, ecx
call    sub_4ACF9D
mov     eax, ecx
call    sub_4ACBFA
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     eax, ecx
call    sub_4AC8BD
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     eax, ecx
call    sub_4ACA61
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     dx, [ecx+124h]
mov     ax, bx
test    eax, edx
jz      short loc_4AC12B
xor     eax, eax
mov     ax, [ecx+134h]
xor     edx, edx
mov     dx, bx
test    edx, eax
jz      loc_4A9BA7
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
jmp     loc_4A9BA7

loc_4AC12B:
mov     byte ptr [ecx+9], 0
jmp     loc_4AC370

loc_4AC134:             ; jumptable 004AC05E case 1
xor     edx, edx
mov     dx, [ecx+124h]
xor     eax, eax
mov     ax, [ecx+126h]
or      eax, edx
xor     esi, esi
mov     si, [ecx+12Ch]
xor     edx, edx
mov     dx, [ecx+12Eh]
or      edx, esi
or      eax, edx
xor     esi, esi
mov     si, [ecx+138h]
or      esi, eax
xor     edx, edx
mov     dx, [ecx+13Ah]
xor     eax, eax
mov     ax, [ecx+13Ch]
or      eax, edx
or      eax, esi
xor     edx, edx
mov     dx, bx
test    edx, eax
jz      def_4AC05E      ; jumptable 004AC05E default case
xor     eax, eax
mov     ax, [ecx+12Ch]
xor     edx, edx
mov     dx, [ecx+12Eh]
or      eax, edx
xor     edx, edx
mov     dx, bx
mov     esi, edx
and     esi, eax
xor     edx, edx
mov     dx, [ecx+12Ch]
xor     eax, eax
mov     ax, [ecx+12Eh]
or      eax, edx
cmp     esi, eax
jz      def_4AC05E      ; jumptable 004AC05E default case
mov     eax, ecx
call    sub_4AD338
test    eax, eax
jnz     def_4AC05E      ; jumptable 004AC05E default case
mov     edx, 1
mov     eax, ecx
call    sub_4ACF9D
mov     eax, ecx
call    sub_4ACBFA
test    eax, eax
jnz     loc_4A9BA7
mov     ax, [ecx+134h]
xor     edx, edx
mov     dx, bx
test    edx, eax
jnz     short loc_4AC249
mov     eax, ecx
call    sub_4AC910
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     eax, ecx
call    sub_4ACA61
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     eax, ecx
call    sub_4AC9E2
test    eax, eax
jnz     loc_4A9BA7
mov     ax, [ecx+12Ch]
xor     edx, edx
mov     dx, bx
test    edx, eax

loc_4AC23E:
jnz     loc_4A9BA7
jmp     def_4AC05E      ; jumptable 004AC05E default case

loc_4AC249:
cmp     ds:byte_77E807, 0
jnz     def_4AC05E      ; jumptable 004AC05E default case
xor     eax, eax
mov     ax, [ecx+12Ch]
xor     edx, edx
mov     dx, bx
test    edx, eax
jmp     loc_4AC35C

loc_4AC26B:             ; jumptable 004AC05E case 2
xor     eax, eax
mov     ax, [ecx+124h]
xor     esi, esi
mov     si, [ecx+126h]
or      esi, eax
xor     edx, edx
mov     dx, [ecx+12Ch]
xor     eax, eax
mov     ax, [ecx+12Eh]
or      eax, edx
or      esi, eax
xor     eax, eax
mov     ax, [ecx+138h]
or      esi, eax
xor     eax, eax
mov     ax, [ecx+13Ah]
xor     edx, edx
mov     dx, [ecx+13Ch]
or      edx, eax
or      esi, edx
and     ebx, 0FFFFh
test    ebx, esi
jz      def_4AC05E      ; jumptable 004AC05E default case
xor     esi, esi
mov     si, di
test    esi, edx
jz      short loc_4AC2E9
test    esi, eax
jz      short loc_4AC2DD
mov     byte ptr [ecx+176h], 2
jmp     def_4AC05E      ; jumptable 004AC05E default case

loc_4AC2DD:
mov     byte ptr [ecx+176h], 1
jmp     def_4AC05E      ; jumptable 004AC05E default case

loc_4AC2E9:
mov     eax, ecx
call    sub_4ACBFA
test    eax, eax
jnz     loc_4A9BA7
mov     ax, [ecx+134h]
test    ebx, eax
jnz     short loc_4AC344
xor     eax, eax
mov     ax, [ecx+126h]
test    ebx, eax
jnz     loc_4A9BA7
mov     eax, ecx
call    sub_4AC910
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     eax, ecx
call    sub_4AC963
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     eax, ecx
call    sub_4AC9E2
test    eax, eax
jmp     loc_4AC23E

loc_4AC344:
cmp     ds:byte_77E807, 0
jnz     def_4AC05E      ; jumptable 004AC05E default case
xor     eax, eax
mov     ax, [ecx+126h]

loc_4AC35A:
test    ebx, eax

loc_4AC35C:             ; jumptable 004AC05E default case
jz      def_4AC05E
cmp     byte ptr [ecx+0Ah], 5
jnb     def_4AC05E      ; jumptable 004AC05E default case
mov     byte ptr [ecx+9], 5

loc_4AC370:
mov     word ptr [ecx+0Ah], 0
mov     eax, ecx
call    sub_4B56DA
jmp     loc_4A9BA7

loc_4AC382:             ; jumptable 004AC05E case 3
xor     edx, edx
mov     dx, [ecx+124h]
xor     eax, eax
mov     ax, [ecx+126h]
mov     edi, edx
or      edi, eax
xor     eax, eax
mov     ax, [ecx+12Ch]
xor     esi, esi
mov     si, [ecx+12Eh]
or      eax, esi
or      edi, eax
xor     edx, edx
mov     dx, [ecx+138h]
or      edi, edx
xor     esi, esi
mov     si, [ecx+13Ah]
xor     edx, edx
mov     dx, [ecx+13Ch]
or      edx, esi
or      edx, edi
and     ebx, 0FFFFh
test    ebx, edx
jz      def_4AC05E      ; jumptable 004AC05E default case
mov     edx, ebx
and     edx, eax
cmp     edx, eax
jz      def_4AC05E      ; jumptable 004AC05E default case
mov     eax, ecx
call    sub_4AD338
test    eax, eax
jnz     def_4AC05E      ; jumptable 004AC05E default case
mov     edx, 1
mov     eax, ecx
call    sub_4ACF9D
mov     eax, ecx
call    sub_4ACBFA
test    eax, eax
jnz     loc_4A9BA7
mov     ax, [ecx+134h]
test    ebx, eax
jnz     short loc_4AC45D
mov     eax, ecx
call    sub_4AC910
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     eax, ecx
call    sub_4AC963
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     eax, ecx
call    sub_4ACA61
test    eax, eax
jnz     loc_4A9BA7
mov     ax, [ecx+12Eh]
test    ebx, eax
jmp     loc_4AC23E

loc_4AC45D:
cmp     ds:byte_77E807, 0
jnz     short def_4AC05E ; jumptable 004AC05E default case
xor     eax, eax
mov     ax, [ecx+12Eh]
jmp     loc_4AC35A

def_4AC05E:             ; jumptable 004AC05E default case
cmp     byte ptr [ecx+0Ah], 5
jnb     loc_4A9BA7
mov     byte ptr [ecx+0Ah], 5
jmp     loc_4A9BA7
sub_4AC036 endp




sub_4AC487 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ax, [eax+11Ch]
cmp     byte ptr [ecx+0Ah], 3
jnb     short loc_4AC4D5
xor     edx, edx
mov     dx, [ecx+134h]
and     eax, 0FFFFh
test    eax, edx
jnz     short loc_4AC4D5
mov     byte ptr [ecx+54Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Fh
call    sub_4D89E4
mov     eax, ecx
call    sub_4ACBC7
test    eax, eax
jnz     short loc_4AC4D5
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0

loc_4AC4D5:
pop     edx
pop     ecx
pop     ebx
retn
sub_4AC487 endp




sub_4AC4D9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     bx, [eax+11Ch]
call    sub_4AD40B
test    eax, eax
jnz     loc_4AC62F
mov     ax, [ecx+124h]
xor     edx, edx
mov     dx, [ecx+126h]
or      edx, eax
xor     eax, eax
mov     ax, [ecx+12Ch]
xor     esi, esi
mov     si, [ecx+12Eh]
or      eax, esi
mov     esi, edx
or      esi, eax
xor     eax, eax
mov     ax, [ecx+138h]
or      esi, eax
xor     edx, edx
mov     dx, [ecx+13Ah]
xor     eax, eax
mov     ax, [ecx+13Ch]
or      eax, edx
or      esi, eax
xor     edx, edx
mov     dx, [ecx+128h]
xor     eax, eax
mov     ax, [ecx+12Ah]
or      eax, edx
or      eax, esi
xor     edx, edx
mov     dx, bx
test    edx, eax
jz      loc_4AC62F
xor     edx, edx
mov     eax, ecx
call    sub_4ACF9D
test    eax, eax
jnz     loc_4AC639
mov     eax, ecx
call    sub_4ACBC7
test    eax, eax
jnz     loc_4AC639
mov     eax, ecx
call    sub_4AD338
test    eax, eax
jnz     short loc_4AC5D7
xor     edx, edx
mov     eax, ecx
call    sub_4AC963
test    eax, eax
jnz     loc_4AC639
xor     edx, edx
mov     eax, ecx
call    sub_4AC9E2
test    eax, eax
jnz     loc_4AC639
mov     eax, ecx
call    sub_4AC910
test    eax, eax
jnz     loc_4AC639
mov     eax, [ecx+171h]
sar     eax, 18h
test    al, 0C0h
jnz     short loc_4AC5D7
xor     edx, edx
mov     eax, ecx
call    sub_4ACA61
test    eax, eax
jnz     short loc_4AC639

loc_4AC5D7:
mov     eax, [ecx+171h]
sar     eax, 18h
test    al, 0C0h
jnz     short loc_4AC612
cmp     byte ptr [ecx+177h], 0
jnz     short loc_4AC612
mov     eax, ecx
call    sub_4AC87D
test    eax, eax
jnz     short loc_4AC639
xor     edx, edx
mov     eax, ecx
call    sub_4ACB66
test    eax, eax
jnz     short loc_4AC639
xor     edx, edx
mov     eax, ecx
call    sub_4AC8BD
test    eax, eax
jnz     short loc_4AC639

loc_4AC612:
xor     edx, edx
mov     dx, [ecx+128h]
xor     eax, eax
mov     ax, [ecx+12Ah]
or      edx, eax
xor     eax, eax
mov     ax, bx
test    eax, edx
jnz     short loc_4AC639

loc_4AC62F:
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0

