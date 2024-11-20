loc_44BDA7:
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44BD3E endp




sub_44BDB3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr ds:dword_77E760, 0
jnz     short loc_44BDDB
call    sub_42A98E
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_44BDDB:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_44BDB3 endp




sub_44BDE6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+5Ch]
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [ecx+56h]
add     edx, eax
and     dh, 0Fh
mov     [ecx+56h], dx
test    ax, ax
jnz     short loc_44BE42
call    sub_42ABA2
test    eax, eax
jnz     short loc_44BE42
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
and     ds:byte_5F8421, 7Fh
or      ds:byte_5F8364, 2
mov     byte ptr [ecx+8], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_44BE42:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_44BDE6 endp

byte_44BE4D db 37h, 16h, 0FFh
dword_44BE50 dd 4E3AFFh, 52515300h, 89555756h, 2C7D8DC5h
dd 0A514758Dh, 347D8DA5h, 0A51C758Dh, 8DA5A5A5h
dd 758D5C7Dh, 0E8A5A554h, 75h, 20045F6h
dd 0C9311374h, 200BBh, 30BA00h, 0E8890000h
dd 0A19F6E8h, 9558A00h, 974D284h, 3AE8E889h
dd 0EB00092Ch, 0FED68807h, 97588C6h
; START OF FUNCTION CHUNK FOR sub_44BEF1

loc_44BEAC:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_44BEF1
db 8Bh
db 0C0h
jpt_44BF0B dd offset loc_44BF12 ; jump table for switch statement
dd offset loc_44BF1E
dd offset loc_44BF45
dd offset loc_44BF8C
dd offset loc_44BFB2
dd offset loc_44BFCC
dd offset loc_44BFDA
dd offset loc_44BFF1
dd offset loc_44BFDA
dd offset loc_44BFF8
dd offset loc_44BFB2
dd offset loc_44BFFF
dd offset loc_44BFB2
dd offset loc_44C006
dd offset loc_44C043



sub_44BEF1 proc near

; FUNCTION CHUNK AT 0044BEAC SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     al, [eax+8]
cmp     al, 0Eh         ; switch 15 cases
ja      def_44BF0B      ; jumptable 0044BF0B default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_44BF0B[ecx*4] ; switch jump

loc_44BF12:             ; jumptable 0044BF0B case 0
mov     eax, ebp
call    sub_44C0A7
jmp     loc_44BFC4

loc_44BF1E:             ; jumptable 0044BF0B case 1
cmp     ebp, ds:dword_5F84E8
jnz     def_44BF0B      ; jumptable 0044BF0B default case
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
mov     byte ptr ds:dword_77E5EC, 4
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+0Ah], 5
jmp     def_44BF0B      ; jumptable 0044BF0B default case

loc_44BF45:             ; jumptable 0044BF0B case 2
mov     al, [ebp+0Ah]
test    al, al
jnz     short loc_44BF80
mov     ecx, [ebp+62h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [ebp+14h]
call    sub_4DE552
mov     dx, [ebp+56h]
add     edx, eax
and     dh, 0Fh
mov     [ebp+56h], dx
test    ax, ax
jnz     def_44BF0B      ; jumptable 0044BF0B default case
jmp     short loc_44BFC4

loc_44BF80:
mov     ah, al
dec     ah
mov     [ebp+0Ah], ah
jmp     def_44BF0B      ; jumptable 0044BF0B default case

loc_44BF8C:             ; jumptable 0044BF0B case 3
mov     edx, 0Dh

loc_44BF91:
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8

loc_44BF9F:
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+9], 0
jmp     def_44BF0B      ; jumptable 0044BF0B default case

loc_44BFB2:             ; jumptable 0044BF0B cases 4,10,12
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_44BF0B      ; jumptable 0044BF0B default case
call    sub_49DF64

loc_44BFC4:
inc     byte ptr [ebp+8]
jmp     def_44BF0B      ; jumptable 0044BF0B default case

loc_44BFCC:             ; jumptable 0044BF0B case 5
mov     edx, 0Eh

loc_44BFD1:
xor     eax, eax
call    sub_4A0E24
jmp     short loc_44BFC4

loc_44BFDA:             ; jumptable 0044BF0B cases 6,8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_44BF0B      ; jumptable 0044BF0B default case
inc     al
mov     [ebp+8], al
jmp     def_44BF0B      ; jumptable 0044BF0B default case

loc_44BFF1:             ; jumptable 0044BF0B case 7
mov     edx, 0Fh
jmp     short loc_44BF91

loc_44BFF8:             ; jumptable 0044BF0B case 9
mov     edx, 10h
jmp     short loc_44BFD1

loc_44BFFF:             ; jumptable 0044BF0B case 11
mov     edx, 11h
jmp     short loc_44BF91

loc_44C006:             ; jumptable 0044BF0B case 13
mov     edi, esp
mov     esi, offset byte_44BE4D
movsd
movsd
mov     ecx, [ebp+62h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     edx, esp
call    sub_4DE552
mov     dx, [ebp+56h]
add     edx, eax
and     dh, 0Fh
mov     [ebp+56h], dx
test    ax, ax
jnz     short def_44BF0B ; jumptable 0044BF0B default case
xor     ebx, ebx
mov     edx, 1
jmp     loc_44BF9F

loc_44C043:             ; jumptable 0044BF0B case 14
mov     eax, 1Ah
call    sub_47E888
test    eax, eax
jnz     short def_44BF0B ; jumptable 0044BF0B default case
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'
mov     eax, ebp
call    sub_4DD43B
cmp     byte ptr [ebp+0A6h], 0
jz      short def_44BF0B ; jumptable 0044BF0B default case
lea     edx, [ebp+14h]
mov     eax, 111h
call    sub_4D8BC3

def_44BF0B:             ; jumptable 0044BF0B default case
mov     eax, 1Ah
call    sub_47E888
test    eax, eax
jz      short loc_44C08C
mov     eax, ebp
call    sub_4DE2F6

loc_44C08C:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
add     esp, 8
jmp     loc_44BEAC
sub_44BEF1 endp




sub_44C0A7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 80h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_515AC4
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_44C0A7 endp




sub_44C134 proc near
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
call    sub_44C1B8
test    byte ptr [ebp+0], 2
jz      short loc_44C174
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44C174:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_44C184
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_44C18B

loc_44C184:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_44C18B:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44C134 endp

align 4
jpt_44C1CE dd offset loc_44C1D5 ; jump table for switch statement
dd offset loc_44C204
dd offset loc_44C237
dd offset loc_44C251
dd offset loc_44C27F
dd offset loc_44C237
dd offset loc_44C294
dd offset loc_44C237
dd offset loc_44C2B5



sub_44C1B8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 8           ; switch 9 cases
ja      def_44C1CE      ; jumptable 0044C1CE default case
and     eax, 0FFh
jmp     jpt_44C1CE[eax*4] ; switch jump

loc_44C1D5:             ; jumptable 0044C1CE case 0
mov     eax, esi
call    sub_44C2F3
inc     byte ptr [esi+8]
mov     edx, ds:dword_560C00
mov     ebx, [esi+54h]
sar     ebx, 10h
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
add     [esi+56h], ax
jmp     def_44C1CE      ; jumptable 0044C1CE default case

loc_44C204:             ; jumptable 0044C1CE case 1
cmp     ds:byte_560BE5, 3
jnz     def_44C1CE      ; jumptable 0044C1CE default case
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     edx, 0B5h

loc_44C224:
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     def_44C1CE      ; jumptable 0044C1CE default case

loc_44C237:             ; jumptable 0044C1CE cases 2,5,7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_44C1CE      ; jumptable 0044C1CE default case
call    sub_49DF64

loc_44C249:
inc     byte ptr [esi+8]
jmp     def_44C1CE      ; jumptable 0044C1CE default case

loc_44C251:             ; jumptable 0044C1CE case 3
cmp     ds:byte_560BE5, 5
jnz     def_44C1CE      ; jumptable 0044C1CE default case
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
add     [esi+56h], ax
jmp     short loc_44C249

loc_44C27F:             ; jumptable 0044C1CE case 4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     edx, 0B7h
jmp     short loc_44C224

loc_44C294:             ; jumptable 0044C1CE case 6
cmp     ds:byte_560BE5, 7
jnz     short def_44C1CE ; jumptable 0044C1CE default case
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     edx, 0B9h
jmp     loc_44C224

loc_44C2B5:             ; jumptable 0044C1CE case 8
mov     ah, byte ptr ds:dword_560BDC
test    ah, ah
jnz     short def_44C1CE ; jumptable 0044C1CE default case
mov     [esi+0Bh], ah
mov     [esi+0Ah], ah
mov     [esi+9], ah
mov     [esi+8], ah
mov     byte ptr [esi+0Ch], 5Ch ; '\'
mov     [esi+0Fh], ah
mov     [esi+0Eh], ah
mov     [esi+0Dh], ah
mov     [esi+4], ah

def_44C1CE:             ; jumptable 0044C1CE default case
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44C1B8 endp




sub_44C2F3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 80h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_44C2F3 endp




sub_44C375 proc near
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
xor     ecx, ecx
mov     cl, [eax+8]
lea     ebx, [eax+408h]
mov     edx, offset dword_560BDC
call    ds:funcs_44C3A7[ecx*4]
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 100h
mov     eax, ebp
call    sub_4ED88B
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44C375 endp




sub_44C3C8 proc near
push    ecx
push    esi
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
mov     eax, ecx
call    sub_42C592
mov     dx, [ecx+16h]
add     edx, eax
mov     [ecx+16h], dx
mov     esi, edx
sub     esi, 4C0h
mov     [ecx+16h], si
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ebx], 0
mov     dword ptr [ebx+4], 88000h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     esi
pop     ecx
retn
sub_44C3C8 endp




sub_44C446 proc near
push    ecx
push    esi
mov     ecx, [ebx+4]
cmp     ecx, 8000h
jle     short loc_44C47D
mov     edx, ecx
sar     edx, 10h
add     [eax+16h], dx
mov     edx, [ebx+4]
add     [eax+20h], edx
mov     si, [ebx]
inc     esi
mov     [ebx], si
cmp     si, 10h
jnz     short loc_44C49E
add     dword ptr [ebx+4], 0FFFF8000h
mov     word ptr [ebx], 0
jmp     short loc_44C49E

loc_44C47D:
cmp     byte ptr [edx+9], 4
jnz     short loc_44C49E
cmp     dword ptr [edx+10h], 78h ; 'x'
jle     short loc_44C49E
mov     word ptr [ebx+8], 0
mov     word ptr [ebx+0Ah], 0Eh
mov     word ptr [ebx+0Ch], 0
inc     byte ptr [eax+8]

loc_44C49E:
call    sub_4DEADD
pop     esi
pop     ecx
retn
sub_44C446 endp




sub_44C4A6 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, edx
cmp     byte ptr [edx+7], 0
jnz     short loc_44C4FA
cmp     word ptr [ebx+8], 600h
jge     short loc_44C4E4
mov     dx, [ebx+0Ah]
add     [ebx+8], dx
inc     word ptr [ebx+0Ch]
mov     edx, [ebx+0Ah]
sar     edx, 10h
mov     edi, 4
mov     eax, edx
sar     edx, 1Fh
idiv    edi
test    edx, edx
jnz     short loc_44C4FA
add     word ptr [ebx+0Ah], 14h
jmp     short loc_44C4FA

loc_44C4E4:
mov     word ptr [ebx+8], 600h
mov     word ptr [ebx+0Ah], 0Eh
mov     word ptr [ebx+0Ch], 0
mov     byte ptr [esi+7], 1

loc_44C4FA:
cmp     byte ptr [esi+9], 6
jnz     short loc_44C509
cmp     dword ptr [esi+10h], 0Ah
jle     short loc_44C509

loc_44C506:
inc     byte ptr [ecx+8]

loc_44C509:
mov     eax, ecx
call    sub_4DEB53
mov     dx, [ebx+8]
mov     ds:word_560E14, dx
mov     eax, ecx
call    sub_4DF795
pop     edi
pop     esi
pop     ecx
retn
sub_44C4A6 endp




sub_44C526 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, edx
cmp     word ptr [ebx+8], 0
jle     short loc_44C55D
mov     dx, [ebx+0Ah]
sub     [ebx+8], dx
inc     word ptr [ebx+0Ch]
mov     edx, [ebx+0Ah]
sar     edx, 10h
mov     edi, 4
mov     eax, edx
sar     edx, 1Fh
idiv    edi
test    edx, edx
jnz     short loc_44C563
add     word ptr [ebx+0Ah], 14h
jmp     short loc_44C563

loc_44C55D:
mov     word ptr [ebx+8], 0

loc_44C563:
cmp     byte ptr [esi+9], 6
jnz     short loc_44C509
cmp     dword ptr [esi+10h], 32h ; '2'
jle     short loc_44C509
mov     word ptr [ebx], 0
mov     dword ptr [ebx+4], 10000h
jmp     short loc_44C506
sub_44C526 endp




sub_44C57D proc near
push    esi
mov     edx, [ebx+4]
sar     edx, 10h
sub     [eax+16h], dx
mov     edx, [ebx+4]
sub     [eax+20h], edx
mov     si, [ebx]
inc     esi
mov     [ebx], si
cmp     si, 5
jnz     short loc_44C5A7
add     dword ptr [ebx+4], 8000h
mov     word ptr [ebx], 0

loc_44C5A7:
call    sub_4DEADD
pop     esi
retn
sub_44C57D endp




sub_44C5AE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     byte ptr [ecx+0Fh], 0
mov     al, [ecx+3]
xor     al, 1
xor     ah, ah
shl     eax, 8
mov     [ecx+14h], ax
mov     word ptr [ecx+18h], 328h
mov     word ptr [ebp+0], 0
mov     word ptr [ecx+56h], 400h
mov     ax, [ecx+56h]
mov     [ebp+2], ax
mov     word ptr [ebp+4], 0
cmp     byte ptr [ecx+3], 0
jnz     short loc_44C659
mov     dword ptr [ecx+158h], 5000500h
mov     dword ptr [ecx+15Ch], 500h
mov     word ptr [ecx+16h], 0FF9Ch
jmp     short loc_44C673

loc_44C659:
mov     dword ptr [ecx+158h], 3000300h
mov     dword ptr [ecx+15Ch], 300h
mov     word ptr [ecx+16h], 0FF6Ah

loc_44C673:
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+34h], eax
mov     [ecx+1Ch], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+3Ch], eax
mov     [ecx+24h], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+38h], eax
mov     [ecx+20h], eax
mov     word ptr [ecx+15Eh], 4210h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
call    sub_4DE227
test    eax, eax
jz      short loc_44C6CF
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Fh
mov     [eax+54h], ecx

loc_44C6CF:
mov     dword ptr [ebp+8], 0
inc     byte ptr [ecx+9]
jmp     loc_44C97F
sub_44C5AE endp

jpt_44C739 dd offset loc_44C740 ; jump table for switch statement
dd offset loc_44C762
dd offset loc_44C7D9
dd offset loc_44C7F4



sub_44C6EE proc near

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
mov     ebp, eax
add     eax, 408h
mov     [esp+24h+var_1C], eax
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
cmp     byte ptr ds:dword_560BE0, 5
jnz     loc_44C90E
mov     al, [ebp+0Fh]
cmp     al, 3           ; switch 4 cases
ja      def_44C739      ; jumptable 0044C739 default case
and     eax, 0FFh
jmp     jpt_44C739[eax*4] ; switch jump

loc_44C740:             ; jumptable 0044C739 case 0
sub     word ptr [ebp+14h], 0Ah
mov     eax, [ebp+12h]
sar     eax, 10h
cmp     eax, 0FFFFFF00h
jge     def_44C739      ; jumptable 0044C739 default case

loc_44C756:
mov     byte ptr [ebp+0Eh], 0

loc_44C75A:
inc     byte ptr [ebp+0Fh]
jmp     def_44C739      ; jumptable 0044C739 default case

loc_44C762:             ; jumptable 0044C739 case 1
inc     byte ptr [ebp+0Eh]
mov     eax, [ebp+0Bh]
sar     eax, 18h
shl     eax, 7
add     eax, 400h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 0Ch
sub     eax, 100h
mov     [ebp+14h], ax
mov     eax, [ebp+0Bh]
sar     eax, 18h
shl     eax, 7
add     eax, 400h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 0Ch
add     eax, 300h
mov     [ebp+18h], ax
mov     eax, [esp+24h+var_1C]
sub     word ptr [eax+2], 80h
cmp     byte ptr [ebp+0Eh], 10h
jl      def_44C739      ; jumptable 0044C739 default case
mov     word ptr [eax+2], 0C00h
mov     word ptr [ebp+18h], 2D8h
jmp     short loc_44C75A

loc_44C7D9:             ; jumptable 0044C739 case 2
mov     bx, [ebp+14h]
add     ebx, 0Ah
mov     [ebp+14h], bx
cmp     bx, 100h
jle     def_44C739      ; jumptable 0044C739 default case
jmp     loc_44C756

loc_44C7F4:             ; jumptable 0044C739 case 3
inc     byte ptr [ebp+0Eh]
mov     eax, [ebp+0Bh]
sar     eax, 18h
shl     eax, 7
add     eax, 0C00h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 0Ch
add     eax, 100h
mov     [ebp+14h], ax
mov     eax, [ebp+0Bh]
sar     eax, 18h
shl     eax, 7
add     eax, 0C00h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 0Ch
add     eax, 300h
mov     [ebp+18h], ax
mov     eax, [esp+24h+var_1C]
sub     word ptr [eax+2], 80h
cmp     byte ptr [ebp+0Eh], 10h
jl      short def_44C739 ; jumptable 0044C739 default case
mov     word ptr [eax+2], 400h
mov     word ptr [ebp+18h], 328h
mov     byte ptr [ebp+0Fh], 0

def_44C739:             ; jumptable 0044C739 default case
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
lea     edi, [ebp+54h]
mov     esi, [esp+24h+var_1C]
movsd
movsd
mov     ah, [ebp+0Dh]
test    ah, ah
jz      short loc_44C8CB
mov     dl, ah
dec     dl
mov     [ebp+0Dh], dl
test    dl, 1
jz      short loc_44C8BB
mov     al, [ebp+3]
xor     al, 1
xor     ah, ah
imul    eax, 30h ; '0'
inc     ah
add     [ebp+56h], ax
jmp     short loc_44C8CB

loc_44C8BB:
mov     al, [ebp+3]
xor     al, 1
xor     ah, ah
imul    eax, 30h ; '0'
inc     ah
sub     [ebp+56h], ax

loc_44C8CB:
mov     eax, [esp+24h+var_1C]
test    byte ptr [eax+0Bh], 8
jz      short loc_44C91B
mov     al, ds:byte_560BE7
inc     al
cmp     byte ptr [ebp+3], 0
jnz     short loc_44C8EA
add     ds:byte_560BE6, al
jmp     short loc_44C908

loc_44C8EA:
mov     cl, ds:byte_560BE6
cmp     cl, 1
ja      short loc_44C8FE
xor     al, al
mov     ds:byte_560BE6, al
jmp     short loc_44C908

loc_44C8FE:
mov     ch, cl
sub     ch, al
mov     ds:byte_560BE6, ch

loc_44C908:
mov     byte ptr [ebp+0Dh], 10h
jmp     short loc_44C91B

loc_44C90E:
mov     byte ptr [ebp+0Dh], 0
lea     edi, [ebp+54h]
mov     esi, [esp+24h+var_1C]
movsd
movsd

loc_44C91B:
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    0
push    4800000h
sub     [esp+30h+var_22], 28h ; '('

loc_44C934:
mov     eax, [esp+30h+var_1C]
add     eax, 8
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 4Bh ; 'K'
lea     eax, [esp+38h+var_24]
call    sub_4E01FC
mov     eax, [esp+24h+var_1C]
mov     dword ptr [eax+8], 0
mov     eax, ebp
call    sub_4DEADD
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 50h ; 'P'
mov     eax, ebp
call    sub_4ED88B

loc_44C97C:
add     esp, 0Ch

loc_44C97F:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44C6EE endp ; sp-analysis failed




sub_44C986 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_44C98C[edx*4]
pop     edx
retn
sub_44C986 endp




sub_44C995 proc near

var_1C= byte ptr -1Ch
var_1A= word ptr -1Ah

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, edx
mov     edi, esp
lea     esi, [eax+14h]
movsd
movsd
push    80h
push    offset unk_800000
push    0C800000h
sub     [esp+28h+var_1A], 1Eh
lea     edx, [ebp+8]
push    edx
mov     al, [eax+1]
and     eax, 0FFh
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 1Eh
lea     eax, [esp+30h+var_1C]
call    sub_4E01FC
mov     dword ptr [ebp+8], 0
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_44C995 endp




sub_44C9ED proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     byte ptr [ecx+3], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     word ptr [ecx+14h], 1F4h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 0FF60h
mov     word ptr [ecx+56h], 400h
mov     edx, [ecx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+34h], edx
mov     [ecx+1Ch], edx
mov     edx, [ecx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+3Ch], edx
mov     [ecx+24h], edx
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+38h], edx
mov     [ecx+20h], edx
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
jmp     loc_44C6CF
sub_44C9ED endp




sub_44CACA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
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
test    byte ptr [ecx+0Bh], 20h
jz      short loc_44CB6E
lea     edx, [ebp+14h]
mov     eax, 160h
call    sub_4D8BC3
inc     ds:dword_560BEC
call    sub_4DE043
test    eax, eax
jz      short loc_44CB1B
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 21h ; '!'

loc_44CB1B:
lea     eax, [ebp+14h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DDDB4
mov     edx, eax
mov     ds:byte_560BE7, 1
call    sub_4EF008
mov     ebx, eax
shl     eax, 2
sub     eax, ebx
shl     eax, 3
add     eax, ebx
add     eax, eax
sar     eax, 0Ch
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 0FFF0h
mov     eax, edx
call    sub_4EF003
shl     eax, 3
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 0Ch
mov     [ebp+48h], ax
inc     byte ptr [ebp+9]
jmp     short loc_44CB88

loc_44CB6E:
mov     dx, [ebp+14h]
test    dx, dx
jle     short loc_44CB82
mov     ebx, edx
sub     ebx, 14h
mov     [ebp+14h], bx
jmp     short loc_44CB88

loc_44CB82:
mov     word ptr [ebp+14h], 0

loc_44CB88:
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     edx, ecx
mov     eax, ebp
call    sub_44C995
mov     eax, ebp
call    sub_4DEADD
jmp     loc_44CC9E
sub_44CACA endp




sub_44CBC1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
add     eax, 408h
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
mov     dx, [ebp+44h]
add     [ebp+14h], dx
mov     dx, [ebp+46h]
add     [ebp+16h], dx
mov     dx, [ebp+48h]
add     [ebp+18h], dx
mov     edx, [ebp+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ebp+1Ch], edx
mov     edx, [ebp+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ebp+20h], edx
mov     edx, [ebp+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ebp+24h], edx
cmp     word ptr [ebp+18h], 400h
jge     short loc_44CC32
test    byte ptr [eax+0Bh], 4
jz      short loc_44CC72

loc_44CC32:
lea     edx, [ebp+14h]
test    byte ptr [eax+0Bh], 4
jz      short loc_44CC42
mov     eax, 162h
jmp     short loc_44CC47

loc_44CC42:
mov     eax, 161h

loc_44CC47:
call    sub_4D8BC3
cmp     word ptr [ebp+44h], 0
jl      short loc_44CC5B
mov     word ptr [ebp+44h], 50h ; 'P'
jmp     short loc_44CC61

loc_44CC5B:
mov     word ptr [ebp+44h], 0FFB0h

loc_44CC61:
mov     word ptr [ebp+48h], 0
mov     word ptr [ebp+46h], 0FFC4h
inc     byte ptr [ebp+9]
jmp     short loc_44CC7B

loc_44CC72:
mov     edx, eax
mov     eax, ebp
call    sub_44C995

loc_44CC7B:
add     byte ptr [ebp+59h], 4
mov     eax, ebp
call    sub_4DEB53
mov     eax, ebp
call    sub_4DFC52
mov     ax, [ebp+58h]
mov     ds:word_560E10, ax

loc_44CC97:
mov     eax, ebp
call    sub_4DF795

loc_44CC9E:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 28h ; '('
mov     eax, ebp
call    sub_4ED88B
jmp     loc_44C97F
sub_44CBC1 endp




sub_44CCB6 proc near
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
mov     ax, [eax+44h]
add     [ebp+14h], ax
mov     ax, [ebp+46h]
add     [ebp+16h], ax
mov     ax, [ebp+48h]
add     [ebp+18h], ax
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
mov     eax, [ebp+14h]
sar     eax, 10h
cmp     eax, 0FFFFFDA8h
jg      short loc_44CD2D
mov     eax, ebp
call    sub_4DE2F6
jmp     loc_44C97F

loc_44CD2D:
cmp     word ptr [ebp+44h], 0
jle     short loc_44CD3A
add     byte ptr [ebp+55h], 4
jmp     short loc_44CD40

loc_44CD3A:
sub     word ptr [ebp+54h], 400h

loc_44CD40:
mov     eax, ebp
call    sub_4DEB53
mov     eax, ebp
call    sub_4DFC52
mov     ax, [ebp+54h]
mov     ds:word_560E0C, ax
jmp     loc_44CC97
sub_44CCB6 endp




sub_44CD5D proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_44CD63[edx*4]
pop     edx
retn
sub_44CD5D endp




sub_44CD6C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     byte ptr [ecx+3], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
call    rand_
test    al, 1
jz      short loc_44CDE4
mov     word ptr [ecx+14h], 2BCh
mov     word ptr [ecx+44h], 0FFE2h
mov     word ptr [ecx+56h], 400h
jmp     short loc_44CDF6

loc_44CDE4:
mov     word ptr [ecx+14h], 0FD44h
mov     word ptr [ecx+44h], 1Eh
mov     word ptr [ecx+56h], 0C00h

loc_44CDF6:
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 258h
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+34h], eax
mov     [ecx+1Ch], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+3Ch], eax
mov     [ecx+24h], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+38h], eax
mov     [ecx+20h], eax
mov     word ptr [ebp+0], 0
mov     ax, [ecx+56h]
mov     [ebp+2], ax
mov     word ptr [ebp+4], 0
mov     dword ptr [ecx+158h], 5000500h
mov     dword ptr [ecx+15Ch], 500h
mov     word ptr [ecx+16h], 0FF9Ch
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+34h], eax
mov     [ecx+1Ch], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+3Ch], eax
mov     [ecx+24h], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+38h], eax
mov     [ecx+20h], eax
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     word ptr [ecx+15Eh], 4210h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
call    sub_4DE227
test    eax, eax
jz      loc_44C6CF
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Fh
mov     [eax+54h], ecx
mov     byte ptr [eax+3], 0
jmp     loc_44C6CF
sub_44CD6C endp




sub_44CECE proc near

var_22= word ptr -22h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
add     eax, 408h
mov     [esp+24h+var_1C], eax
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
cmp     byte ptr ds:dword_560BE0, 5
jnz     loc_44CFDA
test    byte ptr ds:dword_560BE8, 4
jz      short loc_44CF1D
mov     word ptr [ebp+15Eh], 4210h
jmp     short loc_44CF26

loc_44CF1D:
mov     word ptr [ebp+15Eh], 7FFFh

loc_44CF26:
mov     ax, [ebp+44h]
mov     dx, [ebp+14h]
add     edx, eax
mov     [ebp+14h], dx
cmp     word ptr [ebp+44h], 0
jge     short loc_44CF54
mov     eax, [ebp+12h]
sar     eax, 10h
cmp     eax, 0FFFFFD44h
jg      short loc_44CF5B

loc_44CF48:
mov     eax, ebp
call    sub_4DE2F6
jmp     loc_44C97C

loc_44CF54:
cmp     dx, 2BCh
jge     short loc_44CF48

loc_44CF5B:
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
lea     edi, [ebp+54h]
mov     esi, [esp+24h+var_1C]
movsd
movsd
mov     dh, [ebp+0Dh]
test    dh, dh
jz      short loc_44CFBD
mov     bl, dh
dec     bl
mov     [ebp+0Dh], bl
test    bl, 1
jz      short loc_44CFAD
mov     al, [ebp+3]
xor     al, 1
xor     ah, ah
imul    eax, 30h ; '0'
inc     ah
add     [ebp+56h], ax
jmp     short loc_44CFBD

loc_44CFAD:
mov     al, [ebp+3]
xor     al, 1
xor     ah, ah
imul    eax, 30h ; '0'
inc     ah
sub     [ebp+56h], ax

loc_44CFBD:
mov     eax, [esp+24h+var_1C]
test    byte ptr [eax+0Bh], 8
jz      short loc_44CFE7
mov     al, ds:byte_560BE7
add     al, 2
add     ds:byte_560BE6, al
mov     byte ptr [ebp+0Dh], 10h
jmp     short loc_44CFE7

loc_44CFDA:
mov     byte ptr [ebp+0Dh], 0
lea     edi, [ebp+54h]
mov     esi, [esp+24h+var_1C]
movsd
movsd

loc_44CFE7:
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    0
push    4800000h
sub     [esp+30h+var_22], 14h
jmp     loc_44C934
sub_44CECE endp




sub_44D005 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_44D00B[edx*4]
pop     edx
retn
sub_44D005 endp




sub_44D014 proc near
push    edx
cmp     byte ptr ds:dword_560BE0, 0Bh
jnz     short loc_44D025
call    sub_4DE2F6
pop     edx
retn

loc_44D025:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_44D02A[edx*4]
pop     edx
retn
sub_44D014 endp




sub_44D033 proc near

; FUNCTION CHUNK AT 0044D091 SIZE 00000001 BYTES

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
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_44D05A[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_44D07A
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44D07A:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_44D08A
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_44D091

loc_44D08A:
mov     dh, dl
inc     dh
mov     [ebp+9], dh
sub_44D033 endp

; START OF FUNCTION CHUNK FOR sub_44D221
;   ADDITIONAL PARENT FUNCTION sub_44D033

loc_44D091:
pop     ebp
; END OF FUNCTION CHUNK FOR sub_44D221
; START OF FUNCTION CHUNK FOR sub_44D0AF

loc_44D092:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_44D0AF
db 8Dh, 40h, 0
jpt_44D0C6 dd offset loc_44D0CD ; jump table for switch statement
dd offset loc_44D0DC
dd offset loc_44D0ED
dd offset loc_44D152
dd offset loc_44D165



sub_44D0AF proc near

; FUNCTION CHUNK AT 0044D092 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_44D0C6      ; jumptable 0044D0C6 default case
and     eax, 0FFh
jmp     jpt_44D0C6[eax*4] ; switch jump

loc_44D0CD:             ; jumptable 0044D0C6 case 0
mov     eax, esi
call    sub_44D198

loc_44D0D4:
inc     byte ptr [esi+8]
jmp     def_44D0C6      ; jumptable 0044D0C6 default case

loc_44D0DC:             ; jumptable 0044D0C6 case 1
mov     eax, esi
call    sub_44D221
test    eax, eax
jz      def_44D0C6      ; jumptable 0044D0C6 default case
jmp     short loc_44D0D4

loc_44D0ED:             ; jumptable 0044D0C6 case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     edi, [esi+14h]
mov     eax, edi
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short def_44D0C6 ; jumptable 0044D0C6 default case
call    sub_42ABA2
test    eax, eax
jnz     short def_44D0C6 ; jumptable 0044D0C6 default case
call    sub_44D32B
mov     ecx, eax
xor     ebx, ebx
mov     edx, 3
mov     eax, edi
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     short def_44D0C6 ; jumptable 0044D0C6 default case

loc_44D152:             ; jumptable 0044D0C6 case 3
cmp     byte ptr ds:dword_77E760, 0
jnz     short def_44D0C6 ; jumptable 0044D0C6 default case
call    sub_42A98E
jmp     loc_44D0D4

loc_44D165:             ; jumptable 0044D0C6 case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_44D0C6 ; jumptable 0044D0C6 default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1

def_44D0C6:             ; jumptable 0044D0C6 default case
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
jmp     loc_44D092
sub_44D0AF endp




sub_44D198 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 80h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_515B18
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_44D198 endp




sub_44D221 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 0044D091 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     edi, offset byte_5F8364
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     loc_44D306
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_44D27B
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_44D291

loc_44D27B:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_44D291:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 40h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_559E3C, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_559E40, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_559E44, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_559E3C
call    sub_42AAA8
mov     eax, 1
jmp     short loc_44D308

loc_44D306:
xor     eax, eax

loc_44D308:
add     esp, 4
jmp     loc_44D091
sub_44D221 endp ; sp-analysis failed

db 8Dh, 40h, 0
jpt_44D340 dd offset loc_44D347 ; jump table for switch statement
dd offset def_44D340
dd offset def_44D340
dd offset loc_44D37E
dd offset def_44D340
dd offset def_44D340



sub_44D32B proc near
push    edx
xor     edx, edx
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 5           ; switch 6 cases
ja      def_44D340      ; jumptable 0044D340 default case, cases 1,2,4,5
and     eax, 0FFh
jmp     jpt_44D340[eax*4] ; switch jump

loc_44D347:             ; jumptable 0044D340 case 0
mov     eax, 20h ; ' '
call    sub_47E888
test    eax, eax
jnz     short loc_44D375
mov     eax, 60Eh
call    sub_47E888
test    eax, eax
jz      short loc_44D36C
mov     edx, 3Fh ; '?'
mov     eax, edx
pop     edx
retn

loc_44D36C:
mov     edx, 3Eh ; '>'
mov     eax, edx
pop     edx
retn

loc_44D375:
mov     edx, 40h ; '@'
mov     eax, edx
pop     edx
retn

loc_44D37E:             ; jumptable 0044D340 case 3
mov     eax, 211h
call    sub_47E888
test    eax, eax
jnz     short def_44D340 ; jumptable 0044D340 default case, cases 1,2,4,5
mov     eax, 20Bh
call    sub_47E888
test    eax, eax
jz      short def_44D340 ; jumptable 0044D340 default case, cases 1,2,4,5
mov     edx, 20h ; ' '
mov     eax, 20Ch
call    sub_47E8B8

def_44D340:             ; jumptable 0044D340 default case, cases 1,2,4,5
mov     eax, edx
pop     edx
retn
sub_44D32B endp




sub_44D3AD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     byte ptr [ecx+3], 1
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+56h], 800h
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     word ptr [ecx+14h], 0F640h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 0AD89h
mov     edx, [ecx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+34h], edx
mov     [ecx+1Ch], edx
mov     edx, [ecx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+3Ch], edx
mov     [ecx+24h], edx
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+38h], edx
mov     [ecx+20h], edx
mov     word ptr [ecx+15Eh], 4210h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44D3AD endp




sub_44D47F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
cmp     eax, 0FFFFAEACh
jg      short loc_44D4A1
mov     eax, 1Fh
call    sub_47EB4B
inc     byte ptr [esi+8]

loc_44D4A1:
mov     eax, esi
call    sub_4DEADD
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44D47F endp




sub_44D4D3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     word ptr [eax+44h], 0
jz      short loc_44D520
test    byte ptr ds:word_77EAB6, 7
jnz     short loc_44D4F6
lea     edx, [esi+14h]
mov     eax, 10Dh
call    sub_4D8BC3

loc_44D4F6:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
jmp     short loc_44D531

loc_44D520:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
call    sub_432697

loc_44D531:
cmp     byte ptr [esi+0Dh], 0
jnz     short loc_44D540
mov     eax, esi
call    sub_4DEADD
jmp     short loc_44D553

loc_44D540:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0

loc_44D553:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44D4D3 endp




sub_44D56B proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_44D571[edx*4]
pop     edx
retn
sub_44D56B endp




sub_44D57A proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_44D580[edx*4]
pop     edx
retn
sub_44D57A endp




sub_44D589 proc near

var_28= byte ptr -28h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
lea     ecx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ebp+0], ah
cmp     byte ptr [ebp+3], 0
jz      short loc_44D5AD
lea     edx, [ebp+3]
jmp     short loc_44D5AF

loc_44D5AD:
xor     edx, edx

loc_44D5AF:
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     word ptr [ecx], 2
mov     dword ptr [ecx+4], 0
mov     dword ptr [ecx+8], 0
mov     edi, esp
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    0
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ecx+0Ch]
mov     ecx, 100h
lea     edx, [esp+30h+var_28]
call    sub_4DD4C5
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], 0
mov     dword ptr [ebp+10h], offset unk_515B58
mov     word ptr [ebp+44h], 0
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+48h], 0
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_44D672
add     esp, 10h
jmp     loc_44D816
sub_44D589 endp




sub_44D672 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+408h]
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
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     [edx+2], ax
test    byte ptr [edx], 2
jz      short loc_44D6C4
mov     eax, ebp
call    sub_44D969

loc_44D6C4:
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_44D6CB[ecx*4]
test    byte ptr [edx], 1
jz      short loc_44D6EF
mov     al, [ebp+9]
test    al, al
jbe     short loc_44D6E2
cmp     al, 1
jnz     short loc_44D6E6

loc_44D6E2:
mov     byte ptr [ebp+9], 0

loc_44D6E6:
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_44D6EF:
mov     al, [ebp+0ADh]
mov     cl, [ebp+0ACh]
cmp     al, cl
jz      short loc_44D70E
xor     edx, edx
mov     dl, cl
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_44D715

loc_44D70E:
mov     eax, ebp
call    sub_4DEADD

loc_44D715:
test    byte ptr [ebp+0], 2
jz      short loc_44D72E
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44D72E:
test    byte ptr [ebp+0], 1
jz      loc_44D816
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
jmp     loc_44D816
sub_44D672 endp



; Attributes: thunk

sub_44D750 proc near
jmp     sub_4DE2F6
sub_44D750 endp




sub_44D755 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_44D774
jbe     short loc_44D7E4
jmp     loc_44D813

loc_44D774:
test    al, al
jnz     loc_44D813
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [edi+0Ch]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [esi+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_44D7C2
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
neg     eax
jmp     short loc_44D7D7

loc_44D7C2:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552

loc_44D7D7:
sar     eax, 3
mov     [esi+64h], ax
mov     word ptr [edi+4], 1Eh

loc_44D7E4:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+0Ch]
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short loc_44D813
or      byte ptr [edi], 2
inc     byte ptr [esi+0Ah]

loc_44D813:
add     esp, 4

loc_44D816:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44D755 endp




sub_44D81D proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
lea     ebp, [esi+14h]
mov     ecx, offset byte_5F8364
add     ecx, 14h
mov     [esp+1Ch+var_1C], ecx
cmp     al, 1
jb      short loc_44D853
jbe     loc_44D8C7
cmp     al, 2
jz      loc_44D90F
jmp     short loc_44D813

loc_44D853:
test    al, al
jnz     short loc_44D813
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_44D895
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
neg     eax
jmp     short loc_44D8AA

loc_44D895:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552

loc_44D8AA:
sar     eax, 3
mov     [esi+64h], ax
mov     ax, [edi+2]
xor     ah, ah
and     al, 3Fh
add     eax, 8
mov     [edi+4], ax
jmp     loc_44D813

loc_44D8C7:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     short loc_44D900
mov     byte ptr [esi+0ACh], 8
inc     byte ptr [esi+0Ah]

loc_44D900:
cmp     byte ptr ds:dword_560BDC, 0
jnz     loc_44D813
jmp     short loc_44D961

loc_44D90F:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jge     short loc_44D954
mov     byte ptr [esi+0ACh], 0
dec     byte ptr [esi+0Ah]
mov     ax, [edi+2]
xor     ah, ah
and     al, 3Fh
add     eax, 8
mov     [edi+4], ax

loc_44D954:
cmp     byte ptr ds:dword_560BDC, 0
jnz     loc_44D813

loc_44D961:
or      byte ptr [edi], 1
jmp     loc_44D813
sub_44D81D endp




sub_44D969 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
mov     ecx, ds:dword_5F84E8
cmp     eax, ecx
jnz     short loc_44D9BF
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
and     byte ptr [edx], 0FDh
xor     ebx, ebx
mov     ds:dword_5F84E8, ebx
cmp     ds:byte_77E7D4, 4
jnz     short loc_44D9AD
mov     eax, 9
call    sub_47EB4B
mov     byte ptr ds:dword_560BE0, 1
jmp     short loc_44D9BF

loc_44D9AD:
mov     eax, 1Dh
call    sub_47EB4B
xor     dh, dh
mov     byte ptr ds:dword_560BE0, dh

loc_44D9BF:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn
sub_44D969 endp




sub_44D9C8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DA02
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]

loc_44DA02:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi], 2
jz      short loc_44DA2C
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_44DA2C:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44D9C8 endp




sub_44DA31 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DA6B
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]

loc_44DA6B:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi], 2
jz      short loc_44DA95
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_44DA95:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44DA31 endp




sub_44DA9A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DAD4
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]

loc_44DAD4:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi], 2
jz      short loc_44DAFE
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_44DAFE:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44DA9A endp




sub_44DB03 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DB3D
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]

loc_44DB3D:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi], 2
jz      short loc_44DB67
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_44DB67:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44DB03 endp




sub_44DB6C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DB98
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
inc     byte ptr [esi+8]

loc_44DB98:
cmp     byte ptr [esi+9], 0
jnz     short loc_44DBAB
mov     al, [esi+0Ah]
test    al, al
ja      short loc_44DBC3
xor     ebx, ebx
xor     edx, edx
jmp     short loc_44DBB9

loc_44DBAB:
mov     al, [esi+0Ah]
test    al, al
ja      short loc_44DBC3
xor     ebx, ebx
mov     edx, 1

loc_44DBB9:
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]

loc_44DBC3:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi], 2
jz      short loc_44DBED
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_44DBED:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44DB6C endp




sub_44DBF2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DC2C
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]

loc_44DC2C:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi], 2
jz      short loc_44DC56
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_44DC56:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44DBF2 endp




sub_44DC5B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DC95
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]

loc_44DC95:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi], 2
jz      short loc_44DCBF
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_44DCBF:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44DC5B endp




sub_44DCC4 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DCF0
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
inc     byte ptr [esi+8]

loc_44DCF0:
cmp     byte ptr [esi+9], 0
jnz     short loc_44DD03
mov     al, [esi+0Ah]
test    al, al
ja      short loc_44DD1B
xor     ebx, ebx
xor     edx, edx
jmp     short loc_44DD11

loc_44DD03:
mov     al, [esi+0Ah]
test    al, al
ja      short loc_44DD1B
xor     ebx, ebx
mov     edx, 1

loc_44DD11:
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]

loc_44DD1B:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi], 2
jz      short loc_44DD45
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_44DD45:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44DCC4 endp

push    esi
push    edi
mov     esi, eax
mov     edi, edx
call    sub_4DE043
mov     edx, eax
test    eax, eax
jz      short loc_44DD8D
or      byte ptr [eax], 1
mov     byte ptr [eax+2], 38h ; '8'
mov     [eax+3], cl
mov     ecx, [esi]
mov     [eax+0DCh], ecx
mov     ecx, [esi+4]
mov     [eax+0E4h], ecx
mov     word ptr [eax+0ECh], 0
mov     [eax+0EEh], di
mov     [eax+0F0h], bx

loc_44DD8D:
mov     eax, edx
pop     edi
pop     esi
retn



sub_44DD92 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
sub     esp, 10h
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_44DDBA
or      byte ptr [ecx], 6
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+0C4h], offset unk_808080
inc     byte ptr [ecx+9]

loc_44DDBA:
lea     edx, [ecx+0DCh]
mov     ax, [edx+14h]
add     [edx+10h], ax
mov     ebx, [edx+0Eh]
sar     ebx, 10h
mov     eax, [edx+10h]
sar     eax, 10h
call    sub_4EF008
imul    eax, ebx
shl     eax, 4
mov     ebx, [edx]
shl     ebx, 10h
add     ebx, eax
mov     [ecx+1Ch], ebx
mov     ebx, [edx+0Eh]
sar     ebx, 10h
mov     eax, [edx+10h]
sar     eax, 10h
call    sub_4EF003
imul    eax, ebx
shl     eax, 4
mov     ebx, [edx+8]
shl     ebx, 10h
add     ebx, eax
mov     [ecx+24h], ebx
mov     edx, [edx+4]
shl     edx, 10h
mov     [ecx+20h], edx
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+0BCh], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+0C0h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+0BEh], ax
add     ecx, 8Ch
mov     eax, ecx
call    sub_4EF184
mov     edx, 1000h
mov     [esp+1Ch+var_14], edx
mov     [esp+1Ch+var_18], edx
mov     [esp+1Ch+var_1C], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 10h
pop     edx
pop     ecx
pop     ebx
retn
sub_44DD92 endp




sub_44DE74 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+3D8h]
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
call    rand_
mov     [edx+6], ax
xor     ecx, ecx
mov     cl, [ebp+8]
mov     eax, ebp
call    ds:funcs_44DEAC[ecx*4]
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_44DED4
mov     ebx, [ebp+9]
sar     ebx, 18h
xor     edx, edx
mov     dl, al
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_44DEDB

loc_44DED4:
mov     eax, ebp
call    sub_4DEADD

loc_44DEDB:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44DE74 endp




sub_44DF01 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 42h
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
mov     word ptr [ebx+4], 1
xor     dl, dl

loc_44DF3B:
movsx   eax, dl
mov     si, [ecx+14h]
mov     [ebx+eax*8+0Ch], si
mov     si, [ecx+16h]
mov     [ebx+eax*8+0Eh], si
mov     word ptr [ebx+eax*8+10h], 200h
mov     word ptr [ebx+eax*8+24h], 0
mov     si, [ecx+16h]
sub     esi, 0C8h
mov     [ebx+eax*8+26h], si
movsx   si, dl
dec     esi
imul    esi, 190h
sub     esi, 0C8h
mov     [ebx+eax*8+28h], si
mov     dword ptr [ebx+eax*8+40h], 0
mov     esi, [ebx+eax*8+40h]
mov     [ebx+eax*8+3Ch], esi
inc     dl
cmp     dl, 3
jl      short loc_44DF3B
sub     word ptr [ebx+0Ch], 100h
inc     byte ptr [ebx+15h]
add     ebx, 0Ch
xor     edx, edx
mov     eax, ecx
call    sub_451925
inc     byte ptr [ecx+8]
pop     esi
pop     ecx
pop     ebx
retn
sub_44DF01 endp




sub_44DFB6 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
call    sub_44DFCD
mov     edx, ebx
mov     eax, ecx
call    sub_44E06C
pop     ecx
pop     ebx
retn
sub_44DFB6 endp




sub_44DFCD proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     esi, edx
xor     dl, dl
xor     edi, edi
jmp     short loc_44DFE3

loc_44DFDC:
inc     dl
cmp     dl, 3
jge     short loc_44E000

loc_44DFE3:
movsx   eax, dl
shl     eax, 3
add     eax, esi
test    dword ptr [eax+3Ch], 0FFFFFFh
jz      short loc_44DFDC
test    byte ptr [eax+3Fh], 1Ch
jz      short loc_44DFDC
mov     di, [eax+3Ch]
jmp     short loc_44DFDC

loc_44E000:
test    di, di
jz      short loc_44E066
lea     eax, [ebp+14h]
test    byte ptr [esi+4], 1
jz      short loc_44E05A
cmp     word ptr ds:dword_77E8F8, 0
jnz     short loc_44E066
mov     ecx, eax
mov     ebx, 2800h
mov     edx, 400h
mov     eax, 1Eh
call    sub_42A70B
mov     bx, word ptr ds:dword_77E7E0
sub     ebx, edi
mov     word ptr ds:dword_77E7E0, bx
test    bx, bx
jg      short loc_44E050
xor     edi, edi
mov     word ptr ds:dword_77E7E0, di
and     byte ptr [esi+4], 0FEh

loc_44E050:
lea     edx, [ebp+14h]
mov     eax, 0A0h
jmp     short loc_44E061

loc_44E05A:
mov     edx, eax
mov     eax, 0A3h

loc_44E061:
call    sub_4D8BC3

loc_44E066:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_44DFCD endp




sub_44E06C proc near

var_18= byte ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     edi, edx
xor     ah, ah
mov     [esp+18h+var_18], ah

loc_44E07D:
push    80h
push    0
push    2000000h
mov     esi, [esp+9]
sar     esi, 18h
shl     esi, 3
lea     eax, [edi+3Ch]
add     eax, esi
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [edi+24h]
add     eax, esi
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 140h
call    sub_4E01FC
mov     dword ptr [edi+esi+3Ch], 0
mov     dl, [esp+18h+var_18]
inc     dl
mov     [esp+18h+var_18], dl
cmp     dl, 3
jl      short loc_44E07D
add     esp, 4
jmp     short loc_44E066
sub_44E06C endp




sub_44E0CC proc near

; FUNCTION CHUNK AT 0044E2C4 SIZE 00000025 BYTES

cmp     byte ptr [eax+8], 0
jnz     loc_44E2C4
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     byte ptr [ecx+0ACh], 0
mov     word ptr [ecx+15Ch], 200h
mov     dx, [ecx+15Ch]
mov     [ecx+15Ah], dx
mov     [ecx+158h], dx
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+56h], 0C00h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
sub_44E0CC endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_50]



sub_44E12E proc near
mov     word ptr [eax+0Ch], 1F4h
inc     byte ptr [eax+0Ah]
retn
sub_44E12E endp




sub_44E138 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     dx, [eax+0Ch]
dec     dx
mov     [eax+0Ch], dx
jnz     short loc_44E18B
mov     word ptr [eax+0Ch], 80h
push    0
mov     ecx, 244h
mov     ebx, 0Ah
mov     edx, 14Ah
call    sub_43A45D
mov     ds:dword_559E4C, eax
push    0
mov     ecx, 244h
mov     ebx, 0Ah
mov     edx, 0FFFFFEB6h
mov     eax, esi
call    sub_43A45D
mov     ds:dword_559E50, eax
inc     byte ptr [esi+0Ah]

loc_44E18B:
sub     dword ptr [esi+20h], 30750h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44E138 endp




sub_44E197 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     dx, [eax+0Ch]
dec     edx
mov     [eax+0Ch], dx
cmp     dx, 1Ch
jnz     short loc_44E1F8
mov     eax, ds:dword_559E4C
mov     byte ptr [eax+8], 2
mov     eax, ds:dword_559E50
mov     byte ptr [eax+8], 2
push    1
mov     ecx, 244h
mov     ebx, 0Ah
mov     edx, 14Ah
mov     eax, esi
call    sub_43A45D
mov     ds:dword_559E4C, eax
push    1
mov     ecx, 244h
mov     ebx, 0Ah
mov     edx, 0FFFFFEB6h
mov     eax, esi
call    sub_43A45D
mov     ds:dword_559E50, eax

loc_44E1F8:
cmp     word ptr [esi+0Ch], 4
jnz     short loc_44E22F
push    2
mov     ecx, 208h
mov     ebx, 0Ah
mov     edx, 14Ah
mov     eax, esi
call    sub_43A45D
push    2
mov     ecx, 208h
mov     ebx, 0Ah
mov     edx, 0FFFFFEB6h
mov     eax, esi
call    sub_43A45D

loc_44E22F:
cmp     word ptr [esi+0Ch], 0
jnz     short loc_44E24B
mov     eax, ds:dword_559E4C
mov     byte ptr [eax+8], 2
mov     eax, ds:dword_559E50
mov     byte ptr [eax+8], 2
inc     byte ptr [esi+0Ah]

loc_44E24B:
sub     dword ptr [esi+20h], 10750h
add     word ptr [esi+56h], 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44E197 endp




sub_44E25C proc near
push    ebx
push    ecx
push    edx
add     word ptr [eax+56h], 0Ch
xor     ecx, ecx
mov     ebx, 0FFFFFF06h
mov     edx, 900h
call    sub_4DD43B
pop     edx
pop     ecx
pop     ebx
retn
sub_44E25C endp




sub_44E279 proc near
push    edx
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
pop     edx
retn
sub_44E279 endp




sub_44E287 proc near
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+1Ch]
mov     [edx+34h], eax
mov     eax, [edx+20h]
mov     [edx+38h], eax
mov     eax, [edx+24h]
mov     [edx+3Ch], eax
mov     eax, [edx+54h]
mov     [edx+5Ch], eax
mov     eax, [edx+58h]
mov     [edx+60h], eax
xor     ecx, ecx
mov     cl, [edx+0Ah]
mov     eax, edx
call    ds:funcs_44E2B0[ecx*4]
mov     eax, ds:dword_560C00
call    sub_43375C
pop     edx
pop     ecx
retn
sub_44E287 endp

; START OF FUNCTION CHUNK FOR sub_44E0CC

loc_44E2C4:
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_44E2CD[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
retn
; END OF FUNCTION CHUNK FOR sub_44E0CC
jpt_44E32F dd offset loc_44E336 ; jump table for switch statement
dd offset def_44E32F
dd offset loc_44E38E
dd offset def_44E32F
dd offset loc_44E3A1



sub_44E2FD proc near
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
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_44E32F      ; jumptable 0044E32F default case, cases 1,3
and     eax, 0FFh
jmp     jpt_44E32F[eax*4] ; switch jump

loc_44E336:             ; jumptable 0044E32F case 0
or      byte ptr [ebp+0], 2
xor     edx, edx
mov     eax, ebp
call    sub_4DD107
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     dword ptr [ebp+78h], 0
mov     byte ptr [ebp+0Ch], 0
mov     byte ptr [ebp+0Dh], 0
mov     word ptr [ebp+44h], 0FEF2h
mov     word ptr [ebp+48h], 0FEF2h
mov     byte ptr [ebp+0ACh], 1
mov     byte ptr [ebp+0ADh], 0FFh
inc     byte ptr [ebp+8]
jmp     short def_44E32F ; jumptable 0044E32F default case, cases 1,3

loc_44E38E:             ; jumptable 0044E32F case 2
add     word ptr [ebp+14h], 0Ch
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
jmp     short def_44E32F ; jumptable 0044E32F default case, cases 1,3

loc_44E3A1:             ; jumptable 0044E32F case 4
cmp     byte ptr [ebp+0Ch], 40h ; '@'
jge     short loc_44E3AF
sub     word ptr [ebp+58h], 3
inc     byte ptr [ebp+0Ch]

loc_44E3AF:
cmp     byte ptr [ebp+0Dh], 3Ch ; '<'
jge     short loc_44E3C2
sub     word ptr [ebp+44h], 9
sub     word ptr [ebp+48h], 9
inc     byte ptr [ebp+0Dh]

loc_44E3C2:
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B

def_44E32F:             ; jumptable 0044E32F default case, cases 1,3
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_44E404
mov     ebx, 2Eh ; '.'
mov     edx, 1
mov     eax, ebp
call    sub_4DE96B
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
jmp     short loc_44E421

