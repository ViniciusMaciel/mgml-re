pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47550C endp




sub_475642 proc near
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
retn
sub_475642 endp




sub_47564B proc near

; FUNCTION CHUNK AT 004750B0 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+408h]
mov     al, [eax+9]
test    al, al
jbe     short loc_475669
cmp     al, 1
jz      short loc_4756AA
jmp     loc_4750B0

loc_475669:
mov     ax, word ptr ds:dword_5F83B8+2
mov     [ebp+56h], ax
mov     word ptr [ebp+46h], 200h
mov     ax, [ebp+46h]
mov     [ebp+44h], ax
mov     word ptr [esi+1Ch], 18h
mov     word ptr [esi+20h], 0
mov     ax, [esi+20h]
mov     [esi+1Eh], ax
xor     ebx, ebx
mov     edx, 4
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+9]
mov     byte ptr [ebp+0Bh], 0

loc_4756AA:
test    byte ptr [esi+0Fh], 2
jz      short loc_4756DF
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
cmp     byte ptr [ebp+0ACh], 0
jz      loc_4750B0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
jmp     loc_4757B7

loc_4756DF:
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     ebx, eax
test    eax, eax
jz      short loc_475709
lea     ecx, [ebp+44h]
mov     edx, eax
mov     eax, ecx
call    sub_42D90F

loc_475709:
mov     eax, [ebp+42h]
sar     eax, 10h
call    abs_
mov     edx, eax
mov     eax, [esi+1Ah]
sar     eax, 10h
call    abs_
cmp     edx, eax
jg      short loc_475735
mov     word ptr [esi+1Ch], 0
mov     ax, [esi+1Ch]
mov     [ebp+44h], ax
jmp     short loc_475758

loc_475735:
mov     dx, [ebp+44h]
test    dx, dx
jge     short loc_47574C
mov     ax, [esi+1Ch]
mov     edi, edx
add     edi, eax
mov     [ebp+44h], di
jmp     short loc_475758

loc_47574C:
mov     ax, [esi+1Ch]
mov     ecx, edx
sub     ecx, eax
mov     [ebp+44h], cx

loc_475758:
lea     edx, [esi+24h]
lea     eax, [ebp+14h]
call    sub_4DD685
cmp     eax, 1000h
jle     short loc_47577C
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

loc_47577C:
mov     edx, ebx
mov     eax, ebp
call    sub_475A09
cmp     byte ptr [ebp+0A7h], 0
jge     loc_4750B0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     word ptr [ebp+48h], 0
mov     ax, [ebp+48h]
mov     [ebp+46h], ax
mov     [ebp+44h], ax
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0

loc_4757B7:
mov     byte ptr [ebp+0Bh], 0
jmp     loc_4750B0
sub_47564B endp ; sp-analysis failed

db 8Dh, 40h, 0
jpt_475804 dd offset loc_47580B ; jump table for switch statement
dd offset loc_475839
dd offset loc_475843
dd offset loc_4758DB
dd offset loc_4758EE



sub_4757D7 proc near

var_28= byte ptr -28h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004750B0 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ebp, eax
add     eax, 408h
mov     [esp+38h+var_1C], eax
mov     edx, offset byte_5F8364
mov     [esp+38h+var_20], edx
mov     al, [ebp+9]
cmp     al, 4           ; switch 5 cases
ja      def_475804      ; jumptable 00475804 default case
and     eax, 0FFh
jmp     jpt_475804[eax*4] ; switch jump

loc_47580B:             ; jumptable 00475804 case 0
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      def_475804      ; jumptable 00475804 default case
mov     byte ptr ds:dword_5F836C, 3
xor     ah, ah
mov     byte ptr ds:dword_5F836C+1, ah
xor     ecx, ecx
mov     ds:dword_5F8370, ecx

loc_475831:
inc     byte ptr [ebp+9]
jmp     def_475804      ; jumptable 00475804 default case

loc_475839:             ; jumptable 00475804 case 1
mov     ds:byte_5F88AC, 30h ; '0'
inc     byte ptr [ebp+9]

loc_475843:             ; jumptable 00475804 case 2
cmp     ds:word_6E23D6, 0
jnz     def_475804      ; jumptable 00475804 default case
lea     eax, [ebp+14h]
mov     ecx, 5
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
or      byte ptr [ebp+0], 2
mov     word ptr [ebp+44h], 200h
mov     word ptr [ebp+56h], 0A8Ch
mov     eax, [esp+38h+var_1C]
mov     word ptr [eax+4], 0B4h
lea     edi, [ebp+14h]
mov     esi, [esp+38h+var_20]
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [esp+38h+var_28]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [esp+38h+var_28]
movsd
movsd
lea     edi, [esp+38h+var_28]
lea     esi, [ebp+2Ch]
movsd
movsd
mov     edi, eax
lea     edi, [edi+24h]
lea     esi, [esp+38h+var_28]
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, [esp+38h+var_20]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     edi, esp
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+34h]
mov     esi, esp
movsd
movsd
movsd
movsd
sub     word ptr [ebp+16h], 32h ; '2'
jmp     loc_475831

loc_4758DB:             ; jumptable 00475804 case 3
mov     eax, [esp+38h+var_1C]
mov     dx, [eax+4]
dec     dx
mov     [eax+4], dx
jnz     short loc_4758EE ; jumptable 00475804 case 4
inc     byte ptr [ebp+9]

loc_4758EE:             ; jumptable 00475804 case 4
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
mov     eax, ebp
call    sub_475A09
mov     dl, byte ptr ds:dword_77E760
test    dl, dl
jnz     short def_475804 ; jumptable 00475804 default case
mov     eax, [esp+38h+var_20]
call    sub_4B565A
mov     eax, [esp+38h+var_20]
or      byte ptr [eax], 2
mov     eax, 239h
call    sub_47E8B8
mov     byte ptr [ebp+8], 1
mov     [ebp+9], dl

def_475804:             ; jumptable 00475804 default case
add     esp, 20h
jmp     loc_4750B0
sub_4757D7 endp ; sp-analysis failed




sub_475942 proc near
push    ecx
mov     ecx, eax
mov     ax, [eax+66h]
test    edx, edx
jnz     short loc_475966
call    rand_
imul    ax, ds:word_77EAB6
xor     ah, ah
and     al, 0Fh
sub     eax, 8
shl     eax, 2
jmp     short loc_475978

loc_475966:
test    dh, 5
jz      short loc_475970
mov     eax, 10h

loc_475970:
test    dh, 0Ah
jz      short loc_475978
imul    eax, -1

loc_475978:
mov     [ecx+66h], ax
pop     ecx
retn
sub_475942 endp




sub_47597E proc near
push    ebx
push    ecx
push    edx
cmp     eax, ds:dword_5F84E8
jnz     short loc_475A03
and     ds:byte_5F8364, 0FDh
or      ds:byte_5F8421, 40h
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
mov     edx, [eax+18Eh]
sar     edx, 10h
mov     ds:dword_55A0F4, edx
mov     edx, [eax+190h]
sar     edx, 10h
sub     edx, 20h ; ' '
mov     ds:dword_55A0F8, edx
mov     edx, [eax+192h]
sar     edx, 10h
mov     ds:dword_55A0FC, edx
mov     ecx, ds:dword_77E964
lea     edx, [eax+14h]
mov     eax, offset byte_5F8364
add     eax, 14h
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_55A0F4
call    sub_42AAA8
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_475A03:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_47597E endp




sub_475A09 proc near
push    ebx
push    ecx
mov     ecx, eax
call    sub_42C592
test    dh, 10h
jnz     short loc_475A33
mov     dx, [ecx+46h]
add     edx, 4
mov     [ecx+46h], dx
add     [ecx+16h], dx
mov     ebx, [ecx+14h]
sar     ebx, 10h
movsx   edx, ax
cmp     ebx, edx
jle     short loc_475A3D

loc_475A33:
mov     [ecx+16h], ax
mov     word ptr [ecx+46h], 0

loc_475A3D:
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
pop     ecx
pop     ebx
retn
sub_475A09 endp




sub_475A4C proc near
push    ebx
push    ecx
mov     ecx, eax
mov     eax, edx
lea     edx, [ecx+408h]
test    eax, eax
jz      short loc_475A8E
mov     bx, [edx]
inc     ebx
mov     [edx], bx
cmp     bx, 3Ch ; '<'
jbe     short loc_475A8E
mov     word ptr [edx], 0
mov     bx, [ecx+56h]
add     ebx, 7D0h
call    rand_
xor     ah, ah
and     al, 3Fh
add     eax, ebx
and     ah, 0Fh
mov     [edx+2], ax
mov     byte ptr [ecx+9], 14h

loc_475A8E:
pop     ecx
pop     ebx
retn
sub_475A4C endp




sub_475A91 proc near

var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004750B0 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
add     eax, 408h
mov     [esp+34h+var_1C], eax
cmp     dword ptr [eax+8], 64h ; 'd'
jnb     loc_475B55
lea     edi, [ebp+0C4h]
lea     esi, [ebp+190h]
movsd
movsd
mov     edi, offset dword_5F8428
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     [esp+34h+var_24], 2
mov     [esp+34h+var_22], 9
mov     [esp+34h+var_20], 4
mov     ecx, esp
lea     ebx, [esp+34h+var_24]
mov     edx, offset byte_5F8364
mov     eax, ebp
call    sub_4DD6EC
test    al, 10h
jnz     short loc_475B55
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
cmp     byte ptr [ebp+0ACh], 0
jz      short loc_475B20
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     byte ptr [ebp+0Bh], 0
jmp     short loc_475B51

loc_475B20:
mov     dl, [ebp+0Bh]
inc     dl
mov     [ebp+0Bh], dl
cmp     dl, 3Ch ; '<'
jbe     short loc_475B51
xor     ebx, ebx
mov     edx, 1
mov     eax, ebp
call    sub_4DE96B
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     ecx, [esp+34h+var_1C]
mov     [ecx+2], ax
mov     byte ptr [ebp+9], 14h

loc_475B51:
xor     al, al
jmp     short loc_475B57

loc_475B55:
mov     al, 1

loc_475B57:
add     esp, 1Ch
jmp     loc_4750B0
sub_475A91 endp ; sp-analysis failed




sub_475B5F proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_475B65[edx*4]
pop     edx
retn
sub_475B5F endp




sub_475B6E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     byte ptr [ebx+14h], 0
mov     word ptr [ebx+16h], 0
mov     dword ptr [ebx+18h], 0
mov     byte ptr [ebx+15h], 1
mov     dword ptr [ebx+40h], 0
mov     dword ptr [ebx+44h], 0
mov     dword ptr [ebx+34h], 4800000h
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 3
mov     eax, edx
shl     eax, 3
sub     eax, edx
mov     edx, offset off_51782E
add     edx, eax
mov     [ebx+0Ch], edx
mov     dword ptr [ebx+10h], offset unk_51779E
cmp     byte ptr ds:word_77E7FC, 0
jz      short loc_475C14
cmp     byte ptr ds:word_77E7FC+1, 19h
jnz     short loc_475C14
cmp     ds:byte_77E7FE, 3
jnz     short loc_475C14
mov     ds:byte_55A104, 1

loc_475C14:
mov     edi, ebx
lea     esi, [ecx+14h]
movsd
movsd
mov     ax, [ecx+56h]
mov     [ebx+8], ax
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_517A4A
mov     dword ptr [ecx+10h], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0ACh], 0
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_47601C
jmp     def_47638F      ; jumptable 0047638F default case
sub_475B6E endp




sub_475C94 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebx, eax
lea     ecx, [ebx+408h]
mov     esi, offset byte_5F8364

loc_475CA7:
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
test    al, 80h
jnz     short loc_475CB9
mov     [ebx+9], al

loc_475CB9:
mov     ah, al
cmp     al, 8
jb      short loc_475D06
jbe     loc_475F2C
cmp     al, 92h
jb      short loc_475CEA
jbe     loc_475FB5
cmp     al, 94h
jb      loc_475FC2
jbe     loc_475FCF
cmp     al, 95h
jz      loc_475FDC
jmp     loc_475FFD

loc_475CEA:
cmp     al, 90h
jb      short loc_475CF9
jbe     loc_475FAB
jmp     loc_475FEC

loc_475CF9:
cmp     al, 9
jz      loc_475E3C
jmp     loc_475FFD

loc_475D06:
cmp     al, 4
jb      short loc_475D23
jbe     loc_475E91
cmp     al, 6
jb      loc_475ED3
jbe     loc_475EFB
jmp     loc_475F01

loc_475D23:
cmp     al, 2
jb      short loc_475D2E
jbe     short loc_475D64
jmp     loc_475DB3

loc_475D2E:
cmp     al, 1
jnz     loc_475FFD
mov     eax, [ecx+10h]
lea     ebp, [eax+1]
mov     [ecx+10h], ebp
mov     al, [eax]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edx, [eax+1]
mov     [ecx+10h], edx
mov     al, [eax]
xor     ah, ah
shl     eax, 4
mov     [ecx+16h], ax
mov     byte ptr [ebx+9], 1
jmp     loc_475FFD

loc_475D64:
mov     eax, [ecx+10h]
cmp     byte ptr [eax], 3
jnz     short loc_475D75
cmp     byte ptr [ebx+0ACh], 0
jnz     short loc_475D80

loc_475D75:
mov     eax, [ecx+10h]
mov     al, [eax]
mov     [ebx+0ACh], al

loc_475D80:
mov     edi, [ecx+10h]
inc     edi
mov     [ecx+10h], edi
lea     eax, [edi+1]
mov     [ecx+10h], eax
xor     eax, eax
mov     al, [edi]
shl     eax, 2
mov     edi, offset unk_517A26
add     edi, eax
mov     [ecx+2Ch], edi
mov     word ptr [ecx+30h], 1
mov     byte ptr [ebx+9], 2
mov     word ptr [ecx+16h], 0
jmp     loc_475FFD

loc_475DB3:
push    64h ; 'd'
push    64h ; 'd'
mov     edx, [ebx+18h]
push    edx
mov     edi, [ebx+14h]
push    edi
mov     ebp, [esi+18h]
push    ebp
mov     eax, [esi+14h]
push    eax
call    sub_476988
test    al, al
jz      short loc_475DD9
add     dword ptr [ecx+10h], 5
jmp     loc_475CA7

loc_475DD9:
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     [ebx+44h], ax
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
mov     edi, eax
shl     edi, 4
mov     ax, [ecx]
add     eax, edi
mov     [ecx+1Ch], ax
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     di, [ecx+4]

loc_475E2D:
add     edi, eax
mov     [ecx+1Eh], di
mov     byte ptr [ebx+9], 3
jmp     loc_475FFD

loc_475E3C:
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     [ebx+44h], ax
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     di, [esi+14h]
add     edi, eax
mov     [ecx+1Ch], di
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     di, [esi+18h]
jmp     short loc_475E2D

loc_475E91:
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     [ebx+44h], ax
mov     edi, [ecx+10h]
lea     eax, [edi+1]
mov     [ecx+10h], eax
xor     ah, ah
mov     al, [edi]
shl     eax, 3
mov     [ecx+16h], ax
mov     byte ptr [ebx+9], 4
jmp     loc_475FFD

loc_475ED3:
lea     edi, [ebx+14h]
mov     edx, edi
mov     eax, 1ADh
call    sub_4D8BC3
mov     edx, edi
mov     eax, 1AEh
call    sub_4D8BC3
mov     byte ptr [ebx+9], 5

loc_475EF2:
mov     byte ptr [ebx+0Ah], 0
jmp     loc_475FFD

loc_475EFB:
mov     byte ptr [ebx+9], 6
jmp     short loc_475EF2

loc_475F01:
mov     edi, [ecx+10h]
lea     eax, [edi+1]
mov     [ecx+10h], eax
mov     al, [edi]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
xor     ah, ah
mov     [ebx+64h], ax
mov     byte ptr [ebx+9], 7
jmp     loc_475FFD

loc_475F2C:
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     [ebx+44h], ax
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
xor     ah, ah
shl     eax, 3
mov     [ecx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 3Fh
mov     [ecx+1Eh], ax
call    rand_
xor     ah, ah
and     al, 3Fh
mov     [ecx+20h], ax
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
and     eax, 0FFh
shl     eax, 2
mov     edi, offset unk_517A26
add     edi, eax
mov     [ecx+2Ch], edi
mov     word ptr [ecx+30h], 1
mov     byte ptr [ebx+9], 8
jmp     loc_475EF2

loc_475FAB:
mov     eax, [ecx+10h]
movsx   edi, byte ptr [eax]
add     eax, edi
jmp     short loc_475FFA

loc_475FB5:
or      byte ptr [ecx+14h], 2
mov     dword ptr [ecx+34h], 4800001h
jmp     short loc_475FFD

loc_475FC2:
or      byte ptr [ecx+14h], 2
mov     dword ptr [ecx+34h], 5800001h
jmp     short loc_475FFD

loc_475FCF:
and     byte ptr [ecx+14h], 0FDh
mov     dword ptr [ecx+34h], 4800000h
jmp     short loc_475FFD

loc_475FDC:
mov     ax, [ebx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebx+56h], ax
jmp     short loc_475FFD

loc_475FEC:
call    rand_
and     eax, 3
mov     edi, [ecx+0Ch]
mov     eax, [edi+eax*4]

loc_475FFA:
mov     [ecx+10h], eax

loc_475FFD:
mov     eax, [ecx+10h]
test    byte ptr [eax], 40h
jz      loc_475CA7
inc     eax
mov     [ecx+10h], eax
inc     byte ptr [ebx+8]
mov     eax, ebx
call    sub_47601C
jmp     loc_4762C9
sub_475C94 endp




sub_47601C proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
push    1F40h
push    1F40h
mov     edx, [ebp+18h]
push    edx
mov     ecx, [ebp+14h]
push    ecx
mov     ebx, ds:dword_5F837A+2
push    ebx
mov     esi, ds:dword_5F8376+2
push    esi
call    sub_476988
test    al, al
jz      loc_47616B
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
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_476086[edx*4]
mov     eax, ebp
call    sub_4767D8
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_4760B3
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_4760BA

loc_4760B3:
mov     eax, ebp
call    sub_4DEADD

loc_4760BA:
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
mov     edi, [esp+1Ch+var_1C]
lea     edi, [edi+38h]
lea     esi, [ebp+190h]
movsd
movsd
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+15h], 0
jz      short loc_476107
push    0
push    0
mov     edi, [eax+34h]
push    edi
add     eax, 40h ; '@'
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 38h ; '8'
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 3Ch ; '<'
call    sub_4E01FC

loc_476107:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+14h], 2
jnz     short loc_476123
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
mov     eax, ebp
call    sub_432697

loc_476123:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+40h], 0
mov     eax, ebp
call    sub_42DE56
mov     edx, [esp+1Ch+var_1C]
mov     [edx+18h], eax
cmp     ds:byte_55A104, 0
jz      short loc_476152
mov     eax, ebp
call    sub_476A32
and     eax, 0FFh
or      [edx+18h], eax

loc_476152:
test    byte ptr [ebp+0], 2
jz      short loc_47616B
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_47616B:
add     esp, 4
jmp     loc_4762C9
sub_47601C endp



; Attributes: thunk

sub_476173 proc near
jmp     sub_4DE2F6
sub_476173 endp




sub_476178 proc near
mov     byte ptr [eax+8], 1
retn
sub_476178 endp




sub_47617D proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bx, [eax+16h]
dec     bx
mov     [eax+16h], bx
jnz     short loc_476196
mov     byte ptr [edx+8], 1

loc_476196:
pop     edx
pop     ebx
retn
sub_47617D endp




sub_476199 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
add     eax, 408h
mov     bx, [eax+16h]
mov     ecx, ebx
inc     ecx
mov     [eax+16h], cx
test    bx, bx
jz      short loc_4761C7
mov     eax, edx
call    sub_4769D1
cmp     byte ptr [edx+0A7h], 0
jge     short loc_4761C7
mov     byte ptr [edx+8], 1

loc_4761C7:
pop     edx
pop     ecx
pop     ebx
retn
sub_476199 endp




sub_4761CB proc near

var_20= word ptr -20h
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     esi, eax
lea     edi, [eax+408h]
mov     ebp, offset byte_5F8364
cmp     byte ptr [eax+0ACh], 2
jnz     short loc_4761F1
mov     eax, 0C8h
jmp     short loc_4761F6

loc_4761F1:
mov     eax, 20h ; ' '

loc_4761F6:
mov     edx, eax
mov     ax, [edi+1Ch]
mov     [esp+20h+var_20], ax
mov     ax, [edi+1Eh]
mov     [esp+20h+var_1C], ax
movsx   ecx, dx
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, esp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
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
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     edx, [esi+12h]
sar     edx, 10h
mov     eax, [edi+1Ah]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
test    edx, edx
jge     short loc_47627D
neg     eax

loc_47627D:
cmp     eax, 28h ; '('
jg      short loc_47629F
mov     eax, [esi+16h]
sar     eax, 10h
mov     edx, [edi+1Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_476296
neg     eax

loc_476296:
cmp     eax, 28h ; '('
jg      short loc_47629F
mov     byte ptr [esi+8], 1

loc_47629F:
cmp     dword ptr [edi+18h], 0
jnz     short loc_4762C2
push    64h ; 'd'
push    64h ; 'd'
mov     ecx, [esi+18h]
push    ecx
mov     ebx, [esi+14h]
push    ebx
mov     edi, [ebp+18h]
push    edi
mov     eax, [ebp+14h]
push    eax
call    sub_476988
test    al, al
jz      short loc_4762C6

loc_4762C2:
mov     byte ptr [esi+8], 1

loc_4762C6:
add     esp, 8

loc_4762C9:
pop     ebp

def_47638F:             ; jumptable 0047638F default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4761CB endp




sub_4762D0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+408h]
mov     ebp, offset byte_5F8364
call    sub_42C592
mov     [esi+16h], ax
mov     edx, [esi+12h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+1Ch], edx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
mov     edx, [esi+16h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+24h], edx
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     dx, [edi+16h]
dec     dx
mov     [edi+16h], dx
jnz     short loc_476331
mov     byte ptr [esi+8], 1

loc_476331:
cmp     dword ptr [edi+18h], 0
jnz     short loc_476358
push    64h ; 'd'
push    64h ; 'd'
mov     ecx, [esi+18h]
push    ecx
mov     ebx, [esi+14h]
push    ebx
mov     edi, [ebp+18h]
push    edi
mov     eax, [ebp+14h]
push    eax
call    sub_476988
test    al, al
jz      loc_4762C9

loc_476358:
mov     byte ptr [esi+8], 1
jmp     loc_4762C9
sub_4762D0 endp

db 8Bh, 0C0h
jpt_47638F dd offset loc_476396 ; jump table for switch statement
dd offset loc_4763DE
dd offset loc_476410
dd offset loc_4764C5



sub_476373 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_47638F      ; jumptable 0047638F default case
xor     edx, edx
mov     dl, al
jmp     jpt_47638F[edx*4] ; switch jump

loc_476396:             ; jumptable 0047638F case 0
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
add     [esi+56h], ax
mov     word ptr [esi+46h], 0FDE4h
mov     word ptr [esi+48h], 5Ah ; 'Z'
mov     byte ptr [esi+0ACh], 5
mov     dh, [edi+15h]
test    dh, dh
jz      short loc_4763D6
mov     bl, dh
dec     bl
mov     [edi+15h], bl

loc_4763D6:
inc     byte ptr [esi+0Ah]
jmp     def_47638F      ; jumptable 0047638F default case

loc_4763DE:             ; jumptable 0047638F case 1
inc     al
mov     [esi+0Ah], al
dec     word ptr [esi+16h]
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
jmp     def_47638F      ; jumptable 0047638F default case

loc_476410:             ; jumptable 0047638F case 2
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, esi
call    sub_42C592
cwde
cmp     edx, eax
jl      short loc_47646F
mov     byte ptr [esi+0ACh], 6
mov     word ptr [esi+48h], 0
mov     ax, [esi+48h]
mov     [esi+46h], ax
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
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
mov     word ptr [edi+16h], 14h
inc     byte ptr [esi+0Ah]

loc_47646F:
mov     ebx, [esi+44h]
sar     ebx, 10h
xor     ecx, ecx
mov     edx, 0FFFFFF60h
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jle     short loc_476494
mov     word ptr [esi+16h], 0FFFFh

loc_476494:
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
mov     ax, [esi+48h]
add     [esi+46h], ax
jmp     def_47638F      ; jumptable 0047638F default case

loc_4764C5:             ; jumptable 0047638F case 3
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
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
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFE0h
mov     eax, esi
call    sub_4DD43B
cmp     byte ptr [esi+0A7h], 0
jge     def_47638F      ; jumptable 0047638F default case
mov     byte ptr [esi+8], 1
jmp     def_47638F      ; jumptable 0047638F default case
sub_476373 endp




sub_47651A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 0Ch
jb      short loc_47654D
jbe     loc_47659F
cmp     al, 0Fh
jb      short loc_476544
jbe     loc_4765B2
cmp     al, 1Ah
jz      loc_4765F1
jmp     loc_476624

loc_476544:
cmp     al, 0Dh
jz      short loc_4765AA
jmp     loc_476624

loc_47654D:
cmp     al, 7
jb      short loc_47655C
jbe     short loc_47657C
cmp     al, 8
jz      short loc_476594
jmp     loc_476624

loc_47655C:
test    al, al
jnz     loc_476624
mov     byte ptr [esi+0ACh], 9
mov     word ptr [esi+44h], 1E0h
mov     word ptr [esi+46h], 0
jmp     loc_4765F5

loc_47657C:
mov     byte ptr [esi+0ACh], 0Ah
mov     word ptr [esi+44h], 1E0h
mov     word ptr [esi+46h], 0FEE0h
jmp     loc_476624

loc_476594:
mov     word ptr [esi+46h], 0FFC0h
jmp     loc_476624

loc_47659F:
mov     word ptr [esi+46h], 0FF40h
jmp     loc_476624

loc_4765AA:
mov     word ptr [esi+46h], 170h
jmp     short loc_476624

loc_4765B2:
mov     word ptr [esi+44h], 0B0h
mov     word ptr [esi+46h], 0
mov     word ptr [esi+16h], 0FFFFh
mov     edx, [esi+12h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+1Ch], edx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
mov     edx, [esi+16h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+24h], edx
mov     byte ptr [esi+0ACh], 0Bh
jmp     short loc_476624

loc_4765F1:
mov     byte ptr [esi+8], 1

loc_4765F5:
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     edx, [esi+12h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+1Ch], edx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
mov     edx, [esi+16h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+24h], edx

loc_476624:
inc     byte ptr [esi+0Ah]
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47651A endp




sub_476641 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, [eax+62h]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short loc_476679
mov     byte ptr [esi+8], 1

loc_476679:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_476641 endp




sub_47667E proc near

var_24= word ptr -24h
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
add     eax, 408h
mov     [esp+24h+var_1C], eax
mov     edi, esp
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     ax, [eax+1Eh]
add     [esp+24h+var_24], ax
mov     eax, [esp+24h+var_1C]
mov     ax, [eax+20h]
add     [esp+24h+var_20], ax
cmp     byte ptr [ebp+0ACh], 2
jnz     short loc_4766C0
mov     eax, 0C8h
jmp     short loc_4766C5

loc_4766C0:
mov     eax, 20h ; ' '

loc_4766C5:
movsx   ecx, ax
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     edx, esp
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
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
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_4769D1
mov     eax, [ebp+12h]
sar     eax, 10h
mov     ecx, [esp-2]
sar     ecx, 10h
sub     eax, ecx
mov     ecx, eax
mov     eax, [ebp+16h]
sar     eax, 10h
mov     edx, [esp+2]
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     eax, [esp+24h+var_1C]
mov     eax, [eax+1Ah]
sar     eax, 10h
imul    eax, eax
imul    ecx, ecx
imul    edx, edx
add     edx, ecx
cmp     edx, eax
jl      short loc_4767CC
xor     edx, edx
mov     dl, [ebp+3]
shl     edx, 3
mov     eax, edx
shl     eax, 3
sub     eax, edx
mov     edx, ds:dword_51785E[eax]
sar     edx, 10h
push    edx
mov     eax, ds:(off_51785A+2)[eax]
sar     eax, 10h
push    eax
mov     eax, [esp+2Ch+var_1C]
mov     edx, [eax+4]
push    edx
mov     ecx, [eax]
push    ecx
mov     ebx, [ebp+18h]
push    ebx
mov     esi, [ebp+14h]
push    esi
call    sub_476988
test    al, al
jnz     short loc_4767D0
mov     eax, [esp+24h+var_1C]
mov     dword ptr [eax+10h], offset unk_517804
xor     edx, edx
mov     dl, [ebp+3]
shl     edx, 3
mov     eax, edx
shl     eax, 3
sub     eax, edx
mov     edx, offset off_51782E
add     edx, eax
mov     eax, [esp+24h+var_1C]
mov     [eax+0Ch], edx

loc_4767CC:
mov     byte ptr [ebp+8], 1

loc_4767D0:
add     esp, 0Ch
jmp     loc_4762C9
sub_47667E endp




sub_4767D8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     edx, [eax+408h]
test    byte ptr [edx+43h], 8
jz      short loc_47681C
mov     dword ptr [edx+10h], offset unk_517814
cmp     byte ptr [edx+15h], 1
ja      short loc_476813
xor     ebx, ebx
mov     bl, [ecx+3]
shl     ebx, 3
mov     eax, ebx
shl     eax, 3
sub     eax, ebx
add     eax, offset off_51782E
add     eax, 20h ; ' '
mov     [edx+0Ch], eax

loc_476813:
mov     byte ptr [ecx+8], 1
jmp     loc_4762C9

loc_47681C:
mov     bl, [ecx+9]
cmp     bl, 5
jz      loc_4762C9
cmp     bl, 6
jz      loc_4762C9
test    byte ptr [edx+14h], 1
jnz     loc_47691C
xor     ebx, ebx
mov     bl, [ecx+3]
shl     ebx, 3
mov     eax, ebx
shl     eax, 3
sub     eax, ebx
mov     ebx, ds:dword_51785E[eax]
sar     ebx, 10h
push    ebx
mov     eax, ds:(off_51785A+2)[eax]
sar     eax, 10h
push    eax
mov     eax, [edx+4]
push    eax
mov     ebx, [edx]
push    ebx
mov     esi, ds:dword_5F837A+2
push    esi
mov     edi, ds:dword_5F8376+2
push    edi
call    sub_476988
test    al, al
jz      loc_4762C9
xor     ebx, ebx
mov     bl, [ecx+3]
shl     ebx, 3
mov     eax, ebx
shl     eax, 3
sub     eax, ebx
mov     ebx, ds:dword_517862[eax]
sar     ebx, 10h
push    ebx
mov     eax, ds:(dword_51785E+2)[eax]
sar     eax, 10h
push    eax
mov     ebp, [ecx+18h]
push    ebp
mov     eax, [ecx+14h]
push    eax
mov     ebx, ds:dword_5F837A+2
push    ebx
mov     esi, ds:dword_5F8376+2
push    esi
call    sub_476988
test    al, al
jz      loc_4762C9
cmp     byte ptr [ecx+0ACh], 0
jnz     short loc_4768E8
mov     bh, byte ptr ds:dword_5F836C+1
cmp     bh, 7
jnb     short loc_4768E8
cmp     bh, 2
jz      short loc_4768E8
cmp     bh, 3
jnz     loc_4762C9

loc_4768E8:
or      byte ptr [edx+14h], 1
cmp     byte ptr [edx+15h], 0
jz      loc_4762C9
xor     ebx, ebx
mov     bl, [ecx+3]
shl     ebx, 3
mov     eax, ebx
shl     eax, 3
sub     eax, ebx
add     eax, offset off_51782E
add     eax, 10h
mov     [edx+0Ch], eax
mov     dword ptr [edx+10h], offset unk_5177F7
jmp     loc_476813

loc_47691C:
xor     ebx, ebx
mov     bl, [ecx+3]
shl     ebx, 3
mov     eax, ebx
shl     eax, 3
sub     eax, ebx
mov     ebx, ds:dword_51785E[eax]
sar     ebx, 10h
push    ebx
mov     eax, ds:(off_51785A+2)[eax]
sar     eax, 10h
push    eax
mov     ebx, [edx+4]
push    ebx
mov     esi, [edx]
push    esi
mov     edi, ds:dword_5F837A+2
push    edi
mov     ebp, ds:dword_5F8376+2
push    ebp
call    sub_476988
test    al, al
jnz     loc_4762C9
and     byte ptr [edx+14h], 0FEh
mov     cl, [ecx+3]
mov     eax, ecx
and     eax, 0FFh
shl     eax, 3
mov     ecx, eax
shl     eax, 3
sub     eax, ecx
mov     ecx, offset off_51782E
add     ecx, eax
mov     [edx+0Ch], ecx
jmp     loc_4762C9
sub_4767D8 endp




sub_476988 proc near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10= dword ptr  14h
arg_14= dword ptr  18h

push    edx
mov     eax, [esp+4+arg_0]
sub     eax, [esp+4+arg_8]
add     eax, [esp+4+arg_10]
xor     edx, edx
mov     dx, ax
mov     eax, [esp+16h]
sar     eax, 10h
add     eax, eax
cmp     edx, eax
jge     short loc_4769CB
mov     eax, [esp+4+arg_4]
sub     eax, [esp+4+arg_C]
add     eax, [esp+4+arg_14]
xor     edx, edx
mov     dx, ax
mov     eax, [esp+4+arg_10+2]
sar     eax, 10h
add     eax, eax
cmp     edx, eax
jge     short loc_4769CB
mov     al, 1
pop     edx
retn    18h

loc_4769CB:
xor     al, al
pop     edx
retn    18h
sub_476988 endp




sub_4769D1 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
lea     ecx, [eax+408h]
mov     bx, [ecx+30h]
dec     bx
mov     [ecx+30h], bx
jnz     short loc_476A2D
mov     eax, [ecx+2Ch]
mov     di, [eax]
test    di, di
jz      short loc_476A03
add     edx, 14h
mov     eax, edi
and     eax, 0FFFFh
call    sub_4D8BC3

loc_476A03:
mov     eax, [ecx+2Ch]
mov     ax, [eax+2]
mov     [ecx+30h], ax
mov     edx, [ecx+2Ch]
add     edx, 4
mov     [ecx+2Ch], edx
mov     eax, edx
cmp     word ptr [edx], 0FFFFh
jnz     short loc_476A2D
xor     edx, edx
mov     dx, [eax+2]
shl     edx, 2
sub     eax, edx
mov     [ecx+2Ch], eax

loc_476A2D:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4769D1 endp




sub_476A32 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     edx, eax
xor     bl, bl
mov     ax, [eax+14h]
mov     word ptr [esp+20h+var_20], ax
mov     ax, [edx+30h]
mov     word ptr [esp+20h+var_1C], ax
push    0FAh
push    0AAh
mov     ecx, [esp+28h+var_1C]
push    ecx
mov     esi, [esp+2Ch+var_20]
push    esi
mov     edi, ds:dword_517A8E
push    edi
mov     ebp, ds:dword_517A8A
push    ebp
call    sub_476988
test    al, al
jz      short loc_476A8B
mov     ax, [edx+2Ch]
mov     [edx+14h], ax
mov     eax, [edx+34h]
mov     [edx+1Ch], eax
mov     bl, 1

loc_476A8B:
mov     ax, [edx+2Ch]
mov     word ptr [esp+20h+var_20], ax
mov     ax, [edx+18h]
mov     word ptr [esp+20h+var_1C], ax
push    0FAh
push    0AAh
mov     eax, [esp+28h+var_1C]
push    eax
mov     ecx, [esp+2Ch+var_20]
push    ecx
mov     esi, ds:dword_517A8E
push    esi
mov     edi, ds:dword_517A8A
push    edi
call    sub_476988
test    al, al
jz      short loc_476AD8
mov     ax, [edx+30h]
mov     [edx+18h], ax
mov     eax, [edx+3Ch]
mov     [edx+24h], eax
or      bl, 2

loc_476AD8:
mov     al, bl
jmp     loc_4762C6
sub_476A32 endp




sub_476ADF proc near
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
cmp     byte ptr [ecx+8], 0
jnz     short loc_476B5D
or      byte ptr [ecx], 42h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 0C000C00h
mov     dword ptr [ecx+15Ch], 0C00h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ecx+48h], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

loc_476B5D:
mov     bl, [ecx+0Ch]
cmp     bl, 5
jge     short loc_476BC4
mov     edx, [ecx+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     edx, [ecx+16h]
sar     edx, 10h
add     eax, 1E00h
cmp     edx, eax
jle     short loc_476BA7
movsx   ax, bl
mov     edx, 5
sub     edx, eax
mov     eax, edx
shl     eax, 2
mov     [ecx+48h], ax
mov     edi, eax
neg     edi
mov     [ecx+48h], di
jmp     short loc_476BC4

loc_476BA7:
mov     dx, [ecx+48h]
test    dx, dx
jge     short loc_476BC4
mov     ebx, edx
add     ebx, 8
mov     [ecx+48h], bx
test    bx, bx
jle     short loc_476BC4
mov     word ptr [ecx+48h], 0

loc_476BC4:
mov     ax, [ecx+48h]
add     [ecx+18h], ax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_476BF5
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_476BFC

loc_476BF5:
mov     eax, ecx
call    sub_4DEADD

loc_476BFC:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_476ADF endp




sub_476C02 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+408h]
lea     edx, [eax+1E8h]
lea     ebx, [eax+64h]
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
mov     word ptr [eax+15Eh], 4210h
call    rand_
mov     [edx+2], ax
mov     ah, [ecx+3]
cmp     ah, 2
jnz     short loc_476C55
cmp     byte ptr [ecx+8], 0
jz      short loc_476C55
or      [ecx], ah

loc_476C55:
xor     edx, edx
mov     dl, [ecx+8]
mov     eax, ecx
call    ds:funcs_476C5C[edx*4]
cmp     byte ptr [ecx+3], 2
jnz     short loc_476CC0
cmp     byte ptr [ecx+8], 0
jz      short loc_476CC0
cmp     byte ptr [ebx+3], 0
jz      short loc_476C8D
cmp     byte ptr [ebx], 0
jnz     short loc_476C8D
lea     edx, [ecx+14h]
mov     eax, 190h
call    sub_4D8BC3
mov     byte ptr [ebx+3], 0
jmp     short loc_476C93

loc_476C8D:
cmp     byte ptr [ebx+3], 0
jnz     short loc_476CA9

loc_476C93:
cmp     byte ptr [ebx], 0
jle     short loc_476CA9
lea     edx, [ecx+14h]
mov     eax, 191h
call    sub_4D8BC3
mov     byte ptr [ebx+3], 1

loc_476CA9:
mov     eax, [ecx+15Ch]
sar     eax, 10h
test    ah, 80h
jz      short loc_476CC0
cmp     byte ptr [ebx+2], 0
jnz     short loc_476CC0
and     byte ptr [ecx], 0FDh

loc_476CC0:
cmp     byte ptr [ecx+3], 2
jnz     short loc_476CD8
test    dword ptr [ebp+8], 0FFFFFFh
jz      short loc_476CD8
mov     word ptr [ecx+15Eh], 7FFFh

loc_476CD8:
mov     dword ptr [ebp+8], 0
jmp     loc_477723
sub_476C02 endp




sub_476CE4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     esi, [eax+408h]
lea     edi, [eax+0C4h]
lea     ebx, [eax+1E8h]
lea     ebp, [eax+64h]
call    sub_4DF838
or      byte ptr [ecx], 2
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     byte ptr [ecx+2], 37h ; '7'
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 67h ; 'g'
mov     dword ptr [ecx+158h], 1800180h
mov     dword ptr [ecx+15Ch], 180h
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     dword ptr [ecx+78h], offset unk_517A94
mov     byte ptr [esi+3Eh], 0
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     eax, [eax]
mov     al, [eax+0Ah]
mov     [ecx+73h], al
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     eax, [eax]
mov     al, [eax+0Bh]
xor     ah, ah
mov     [edi+4], ax
mov     [ebx+4], ah
mov     word ptr [ebx], 0
mov     byte ptr [ebx+5], 1Eh
mov     [ebp+3], ah
mov     [edi+6], ah
lea     eax, [esi+20h]
mov     ebx, 0FFFFFFA0h
mov     edx, 5
call    sub_4E19B9
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     byte ptr [ecx+8], 1
mov     dl, [ecx+3]
test    dl, dl
jnz     short loc_476E03
mov     [ecx+9], dl
mov     [ecx+0Ah], dl
mov     [ecx+0Fh], dl
mov     byte ptr [ecx+0ACh], 1
mov     word ptr [ecx+44h], 80h
mov     byte ptr [esi+3Dh], 78h ; 'x'
mov     [esi+3Ch], dl
jmp     short loc_476E1C

loc_476E03:
mov     byte ptr [ecx+8], 3
mov     word ptr [ecx+44h], 2D0h
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [esi+3Dh], 78h ; 'x'
mov     byte ptr [esi+3Ch], 0

loc_476E1C:
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+4Eh], 60h ; '`'
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [esi+8], 0
mov     eax, ecx
call    sub_476E4F
jmp     loc_477723
sub_476CE4 endp




sub_476E4F proc near

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
add     eax, 408h
mov     [esp+38h+var_20], eax
mov     eax, ebp
add     eax, 0C4h
mov     [esp+38h+var_1C], eax
lea     ecx, [ebp+1E8h]
lea     esi, [ebp+64h]
mov     ebx, offset byte_5F8364
and     byte ptr [eax+6], 0F7h
lea     eax, [ebp+428h]
mov     edx, ebp
call    sub_4E19CA
test    eax, eax
jz      short loc_476E99
mov     eax, [esp+38h+var_1C]
or      byte ptr [eax+6], 8

loc_476E99:
mov     al, [ecx+5]
test    al, al
jz      short loc_476EA7
mov     ah, al
dec     ah
mov     [ecx+5], ah

loc_476EA7:
mov     dx, [ecx]
test    dx, dx
jz      short loc_476EB5
mov     edi, edx
dec     edi
mov     [ecx], di

loc_476EB5:
mov     eax, [esp+38h+var_20]
mov     eax, [eax+8]
and     eax, 0FFFFFFh
jz      loc_4770A7
mov     dh, [ebp+9]
cmp     dh, 1
jnz     short loc_476ED2
add     [ecx+4], dh

loc_476ED2:
mov     dx, [ebp+6Eh]
mov     [ebp+0B2h], dx
sub     edx, eax
mov     [ebp+6Eh], dx
add     [ecx], ax
cmp     word ptr [ebp+6Eh], 0
jg      short loc_476EFE
mov     eax, [esp+38h+var_1C]
and     byte ptr [eax+6], 0FDh
mov     byte ptr [ebp+9], 7
jmp     loc_4772AF

loc_476EFE:
mov     word ptr [ebp+15Eh], 7FFFh
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 10h
jnz     short loc_476F2D
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
xor     edx, edx
mov     dl, [eax+9]
xor     eax, eax
mov     ax, [ecx]
cmp     eax, edx
jge     short loc_476F3B

loc_476F2D:
mov     eax, [esp+38h+var_20]
test    byte ptr [eax+0Bh], 20h
jz      loc_476FE5

loc_476F3B:
cmp     byte ptr [ebp+9], 5
jz      loc_4772AF
lea     edi, [ebp+14h]
mov     edx, edi
mov     eax, 0A2h
call    sub_4D8BC3
mov     eax, [esp+38h+var_1C]
mov     dl, [eax+6]
or      dl, 10h
mov     [eax+6], dl
mov     dh, dl
and     dh, 0DFh
mov     [eax+6], dh
mov     word ptr [ecx], 0
mov     byte ptr [ecx+4], 0
mov     byte ptr [ecx+5], 1Eh
mov     byte ptr [ebp+9], 6
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+38h+var_20]
add     edx, 10h
xor     ecx, ecx
mov     eax, edi
call    sub_4DE726
mov     edx, eax
mov     word ptr [ebp+44h], 120h
mov     word ptr [ebp+46h], 0FEE0h
mov     ecx, [esp+38h+var_1C]
and     byte ptr [ecx+6], 0FDh
add     dh, 8
and     dh, 0Fh
mov     [ebp+56h], dx
test    eax, 0FFFF0000h
jnz     short loc_476FD8
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0ACh], 8

loc_476FC2:
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     loc_4772AF

loc_476FD8:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 0Ah
jmp     short loc_476FC2

loc_476FE5:
lea     edi, [ebp+14h]
mov     edx, edi
mov     eax, 0A0h
call    sub_4D8BC3
mov     dh, [ecx+5]
test    dh, dh
jz      short loc_47703C
cmp     byte ptr [ecx+4], 2
jnz     loc_4772AF
cmp     byte ptr [ebp+9], 5
jz      loc_4772AF
mov     byte ptr [ebp+9], 5
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0ACh], 6
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
mov     eax, [esp+38h+var_1C]
or      byte ptr [eax+6], 40h
jmp     loc_4772AF

loc_47703C:
mov     byte ptr [ecx+5], 1Eh
mov     [ecx+4], dh
push    400h
mov     eax, [ebx+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebx+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
lea     eax, [ebp+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jnz     loc_4772AF
cmp     byte ptr [ebp+9], 8
jz      loc_4772AF
mov     byte ptr [ebp+9], 6
mov     byte ptr [ebp+0Ah], 4
mov     ecx, [esp+38h+var_20]
mov     ecx, [ecx+38h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, (offset dword_5F8376+2)
mov     eax, edi
call    sub_4DE552
mov     byte ptr [ebp+0ACh], 0Dh
jmp     loc_476FC2

loc_4770A7:
mov     dl, [ebp+9]
cmp     dl, 2
jz      loc_4772AF
cmp     dl, 3
jz      loc_4772AF
cmp     dl, 4
jz      loc_4772AF
cmp     dl, 5
jz      loc_4772AF
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 10h
jnz     loc_4772AF
cmp     byte ptr [ebp+9], 8
jz      loc_4772AF
mov     eax, [esp+38h+var_20]
mov     cl, [eax+3Eh]
test    cl, cl
jz      short loc_4770F8
mov     ch, cl
dec     ch
mov     [eax+3Eh], ch

loc_4770F8:
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 8
jz      loc_477283
cmp     byte ptr [ebp+9], 1
jz      loc_477262
push    400h
mov     eax, [ebx+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebx+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
lea     eax, [ebp+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      loc_4771FA
mov     ecx, [ebp+80h]
cmp     ecx, 120000h
jbe     short loc_477155
mov     byte ptr [ebp+9], 1
mov     byte ptr [ebp+0Ah], 0
jmp     loc_477262

loc_477155:
cmp     ecx, 44AA2h
jnb     short loc_47718F
mov     eax, [esp+38h+var_20]
mov     cl, [eax+3Eh]
test    cl, cl
jnz     short loc_47718F
cmp     byte ptr [ebp+3], 2
jz      short loc_47717A
mov     byte ptr [ebp+9], 3
mov     [ebp+0Ah], cl
jmp     loc_477258

loc_47717A:
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Ah], 5
mov     [esi+2], cl
mov     [esi+1], cl
mov     [esi], cl
jmp     loc_477258

loc_47718F:
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 6
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 80h
jnz     short loc_4771A9
mov     byte ptr [eax+7], 0
or      byte ptr [eax+6], 80h

loc_4771A9:
mov     eax, [esp+38h+var_20]
mov     word ptr [eax+3Ah], 10h
cmp     byte ptr [ebp+3], 2
jz      loc_477262
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 1
jnz     loc_477262
mov     byte ptr [ebp+9], 4
mov     byte ptr [ebp+0ACh], 5
mov     bh, [eax+6]
or      bh, 3
mov     [eax+6], bh
mov     cl, bh
and     cl, 7Fh
mov     [eax+6], cl
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_477262

loc_4771FA:
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 6
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 80h
jnz     short loc_477214
mov     byte ptr [eax+7], 0
or      byte ptr [eax+6], 80h

loc_477214:
mov     eax, [esp+38h+var_20]
mov     word ptr [eax+3Ah], 10h
cmp     dword ptr [ebp+80h], 44AA2h
jnb     short loc_477262
mov     dh, [eax+3Eh]
test    dh, dh
jnz     short loc_477262
cmp     byte ptr [ebp+3], 2
jz      short loc_477240
mov     byte ptr [ebp+9], 3
mov     [ebp+0Ah], dh
jmp     short loc_477250

loc_477240:
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Ah], 5
mov     [esi+2], dh
mov     [esi+1], dh
mov     [esi], dh

loc_477250:
mov     eax, [esp+38h+var_1C]
and     byte ptr [eax+6], 7Fh

loc_477258:
mov     eax, [esp+38h+var_20]
mov     word ptr [eax+3Ah], 80h

loc_477262:
cmp     byte ptr [ebp+9], 0
jnz     short loc_4772AF
cmp     byte ptr [ebp+0Ah], 6
jnz     short loc_4772AF
cmp     byte ptr [ebp+0ACh], 1
jz      short loc_4772AF
mov     byte ptr [ebp+0ACh], 1
jmp     loc_476FC2

loc_477283:
mov     dh, [ebp+9]
test    dh, dh
jnz     short loc_4772AF
cmp     byte ptr [ebp+0Ah], 6
jnz     short loc_4772AF
mov     [ebp+0Ah], dh
mov     [ebp+0Fh], dh
mov     word ptr [ebp+44h], 80h
mov     eax, [esp+38h+var_20]
mov     byte ptr [eax+3Dh], 78h ; 'x'
mov     [eax+3Ch], dh
mov     eax, [esp+38h+var_1C]
and     byte ptr [eax+6], 7Eh

loc_4772AF:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4772B6[edx*4]
lea     edx, [ebp+14h]
mov     cl, [ebp+0A6h]
test    cl, 4
jz      short loc_4772D2
mov     eax, 159h
jmp     short loc_4772DC

loc_4772D2:
test    cl, 8
jz      short loc_4772E1
mov     eax, 15Ah

loc_4772DC:
call    sub_4D8BC3

loc_4772E1:
mov     al, [ebp+9]
cmp     al, 5
jz      short loc_4772F7
cmp     al, 6
jz      short loc_4772F7
cmp     al, 7
jz      short loc_4772F7
mov     eax, ebp
call    sub_4787AB

loc_4772F7:
cmp     byte ptr [ebp+3], 2
jnz     short loc_477357
mov     eax, [ebp+15Ch]
sar     eax, 10h
test    ah, 80h
jz      short loc_477315
cmp     byte ptr [esi+2], 0
jnz     short loc_477315
and     byte ptr [ebp+0], 0FDh

loc_477315:
mov     eax, [esp+38h+var_20]
add     eax, 8
test    byte ptr [ebp+0], 2
jz      short loc_477344
mov     edi, [esp+38h+var_20]
lea     esi, [ebp+190h]
movsd
movsd
push    0

loc_477330:
push    offset unk_800000
mov     edx, [ebp+70h]
sar     edx, 18h
or      edx, 4080000h
push    edx
jmp     short loc_47737D

loc_477344:
mov     edi, [esp+38h+var_20]
lea     esi, [ebp+190h]
movsd
movsd
push    80h
jmp     short loc_477330

loc_477357:
mov     edi, [esp+38h+var_20]
lea     esi, [ebp+190h]
movsd
movsd
push    0
push    offset unk_800000
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
mov     eax, [esp+44h+var_20]
add     eax, 8

loc_47737D:
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 78h ; 'x'
mov     eax, [esp+4Ch+var_20]
call    sub_4E01FC
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 2
jz      loc_4774B7
xor     edx, edx
mov     [esp+38h+var_28], dx
mov     [esp+38h+var_26], 738h
mov     [esp+38h+var_24], 0FFD0h
lea     eax, [ebp+258h]
mov     ebx, esp
lea     edx, [esp+38h+var_28]
call    sub_4EF1FB
mov     ax, [ebp+1A0h]
add     eax, [esp+38h+var_38]
mov     edx, [esp+38h+var_20]
mov     [edx], ax
mov     dx, [ebp+1A2h]
add     edx, [esp+38h+var_34]
mov     eax, [esp+38h+var_20]
mov     [eax+2], dx
mov     dx, [ebp+1A4h]
add     edx, [esp+38h+var_30]
mov     eax, [esp+38h+var_20]
mov     [eax+4], dx
push    80h
push    0
xor     eax, eax
mov     edx, [esp+40h+var_1C]
mov     ax, [edx+4]
or      eax, 5080000h
push    eax
mov     esi, [esp+44h+var_20]
add     esi, 18h
push    esi
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 3Ch ; '<'
mov     eax, [esp+4Ch+var_20]
call    sub_4E01FC
lea     eax, [ebp+2B8h]
mov     ebx, esp
lea     edx, [esp+38h+var_28]
call    sub_4EF1FB
mov     dx, [ebp+1B0h]
add     edx, [esp+38h+var_38]
mov     eax, [esp+38h+var_20]
mov     [eax], dx
mov     dx, [ebp+1B2h]
mov     ecx, [esp+38h+var_34]
add     edx, ecx
mov     [eax+2], dx
mov     ax, [ebp+1B4h]
add     eax, [esp+38h+var_30]
mov     edx, [esp+38h+var_20]
mov     [edx+4], ax
push    80h
push    0
xor     eax, eax
mov     edx, [esp+40h+var_1C]
mov     ax, [edx+4]
or      eax, 5080000h
push    eax
push    esi
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 3Ch ; '<'
mov     eax, [esp+4Ch+var_20]
call    sub_4E01FC

loc_4774B7:
cmp     byte ptr [ebp+3], 2
jz      short loc_4774D6
test    byte ptr [ebp+0], 2
jz      short loc_4774D6
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 0A0h
mov     eax, ebp
call    sub_4ED88B

loc_4774D6:
add     esp, 20h
jmp     loc_477723
sub_476E4F endp



; Attributes: thunk

sub_4774DE proc near
jmp     sub_4DE2F6
sub_4774DE endp




sub_4774E3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [eax+0C4h]
lea     esi, [eax+64h]
cmp     dword ptr [eax+80h], 120000h
jbe     short loc_477511
cmp     ds:byte_77E7D4, 1Dh
jnz     short loc_47753B
cmp     byte ptr ds:dword_77E7D5, 2
jnz     short loc_47753B

loc_477511:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 5
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0ACh], 6
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
or      byte ptr [edi+6], 40h
jmp     short loc_477542

loc_47753B:
mov     eax, ecx
call    sub_4DEADD

loc_477542:
cmp     byte ptr [ecx+3], 2
jnz     loc_478689
mov     word ptr [ecx+15Eh], 0
or      byte ptr [ecx+15Fh], 80h
mov     byte ptr [esi+2], 0
mov     dl, [esi+2]
mov     [esi+1], dl
mov     [esi], dl
jmp     loc_478689
sub_4774E3 endp




sub_47756D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+64h]
xor     ebx, ebx
mov     bl, [eax+0Ah]
call    ds:funcs_47757A[ebx*4]
cmp     byte ptr [ecx+3], 2
jnz     short loc_4775EF
mov     bl, [edx+1]
and     bl, 1Fh
movsx   bx, bl
mov     eax, ebx
shl     eax, 5
mov     bl, [edx]
and     bl, 1Fh
movsx   bx, bl
or      eax, ebx
mov     bl, [edx+2]
and     bl, 1Fh
movsx   bx, bl
shl     ebx, 0Ah
or      eax, ebx
mov     [ecx+15Eh], ax
sub     byte ptr [edx], 4
sub     byte ptr [edx+1], 4
cmp     byte ptr [edx], 0
jge     short loc_4775D1
mov     byte ptr [edx], 0
mov     byte ptr [edx+1], 0
or      byte ptr [ecx+15Fh], 80h

loc_4775D1:
mov     ecx, [ecx+15Ch]
sar     ecx, 10h
test    ch, 80h
jz      short loc_4775EF
mov     bl, [edx+2]
dec     bl
mov     [edx+2], bl
test    bl, bl
jge     short loc_4775EF
mov     byte ptr [edx+2], 0

loc_4775EF:
pop     edx
pop     ecx
pop     ebx
retn
sub_47756D endp




sub_4775F3 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
lea     edx, [eax+408h]
mov     [esp+1Ch+var_1C], edx
lea     edx, [eax+0C4h]
lea     esi, [eax+1E8h]
test    byte ptr [edx+1], 0Fh
jz      short loc_47766E
mov     dx, [ebp+56h]
add     dh, 8
and     dh, 0Fh
mov     esi, [esp+1Ch+var_1C]
mov     [esi+38h], dx
mov     byte ptr [ebp+0Ah], 5
mov     esi, [ebp+54h]
sar     esi, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+36h]
sar     edx, 10h
cmp     esi, edx
jle     short loc_47764A
mov     byte ptr [ebp+0ACh], 0Eh
jmp     short loc_477651

loc_47764A:
mov     byte ptr [ebp+0ACh], 0Dh

loc_477651:
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_47782A
jmp     loc_477720

loc_47766E:
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     edx, [esp+1Ch+var_1C]
mov     bl, [edx+3Dh]
test    bl, bl
jnz     loc_477719
mov     cl, [ebp+0A6h]
cmp     cl, 1
jnz     loc_477720
test    [esi+2], cl
jz      short loc_4776CE
mov     byte ptr [ebp+0Ah], 3
mov     byte ptr [ebp+0Dh], 80h
mov     [ebp+0Eh], bl
mov     byte ptr [ebp+0Fh], 3
mov     edi, edx
lea     edi, [edi+30h]
lea     esi, [ebp+14h]
movsd
movsd
mov     dx, [ebp+56h]
mov     esi, [esp+1Ch+var_1C]
mov     [esi+38h], dx
mov     byte ptr [esi+3Dh], 0Ah
mov     [esi+3Ch], bl
jmp     short loc_477720

loc_4776CE:
cmp     byte ptr [ebp+0Fh], 0
jnz     short loc_4776D7
add     [edx+3Ch], cl

loc_4776D7:
mov     edx, [esp+1Ch+var_1C]
cmp     byte ptr [edx+3Ch], 1
jz      short loc_4776EA
mov     byte ptr [edx+3Dh], 78h ; 'x'
mov     byte ptr [ebp+0Fh], 0
jmp     short loc_477720

loc_4776EA:
mov     byte ptr [ebp+0Ah], 3
mov     byte ptr [ebp+0Dh], 80h
mov     byte ptr [ebp+0Eh], 0
mov     byte ptr [ebp+0Fh], 3
mov     edi, edx
lea     edi, [edi+30h]
lea     esi, [ebp+14h]
movsd
movsd
mov     dx, [ebp+56h]
mov     esi, [esp+1Ch+var_1C]
mov     [esi+38h], dx
mov     byte ptr [esi+3Dh], 0Ah
mov     byte ptr [esi+3Ch], 0
jmp     short loc_477720

loc_477719:
mov     bh, bl
dec     bh
mov     [edx+3Dh], bh

loc_477720:
add     esp, 4

loc_477723:
pop     ebp
jmp     loc_478689
sub_4775F3 endp




sub_477729 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0Eh], 0
jnz     short loc_477765
mov     ecx, [edx+36h]
sar     ecx, 10h
sub     ecx, 400h
and     ecx, 0FFFh
mov     ebx, [eax+54h]
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_47775E

loc_477754:
mov     byte ptr [eax+0Ah], 2
mov     byte ptr [edx+3Dh], 5
jmp     short loc_477786

loc_47775E:
sub     word ptr [eax+56h], 40h ; '@'
jmp     short loc_477786

loc_477765:
mov     ecx, [edx+36h]
sar     ecx, 10h
add     ecx, 400h
and     ecx, 0FFFh
mov     ebx, [eax+54h]
sar     ebx, 10h
cmp     ebx, ecx
jz      short loc_477754
add     word ptr [eax+56h], 40h ; '@'

loc_477786:
and     byte ptr [eax+57h], 0Fh
pop     edx
pop     ecx
pop     ebx
retn
sub_477729 endp




sub_47778E proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
lea     ecx, [eax+0C4h]
mov     bl, [edx+3Dh]
dec     bl
mov     [edx+3Dh], bl
jnz     short loc_4777CE
mov     [eax+0Ah], bl
mov     word ptr [eax+44h], 80h
mov     byte ptr [edx+3Dh], 78h ; 'x'
and     byte ptr [ecx+6], 0FEh
mov     byte ptr [eax+0ACh], 1

loc_4777BF:
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B

loc_4777CE:
pop     edx
pop     ecx
pop     ebx
retn
sub_47778E endp




sub_4777D2 proc near
push    ebx
push    ecx
push    edx
lea     ecx, [eax+408h]
lea     edx, [eax+1E8h]
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [ecx+3Dh], 0Ah
test    byte ptr [edx+2], 1
jz      short loc_4777FC
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0ACh], 0Dh
jmp     short loc_4777BF

loc_4777FC:
mov     byte ptr [eax+0Eh], 1
mov     byte ptr [eax+0ACh], 0Eh
jmp     short loc_4777BF
sub_4777D2 endp




sub_477809 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bl, [eax+3Dh]
test    bl, bl
jnz     short loc_477820
mov     byte ptr [edx+0Ah], 1
pop     edx
pop     ebx
retn

loc_477820:
mov     bh, bl
dec     bh
mov     [eax+3Dh], bh
pop     edx
pop     ebx
retn
sub_477809 endp




sub_47782A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+408h]
add     eax, 0C4h
mov     ebx, [ecx+54h]
sar     ebx, 10h
mov     esi, [edx+36h]
sar     esi, 10h
cmp     ebx, esi
jnz     short loc_477882

loc_47784B:
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Fh], 0
mov     word ptr [ecx+44h], 80h
mov     byte ptr [edx+3Ch], 0
and     byte ptr [eax+6], 0FEh
mov     byte ptr [ecx+0ACh], 1
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, esi
mov     eax, ecx
call    sub_4DE96B

loc_477879:
and     byte ptr [ecx+57h], 0Fh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_477882:
jle     short loc_47788C
sub     word ptr [ecx+56h], 80h
jmp     short loc_477879

loc_47788C:
add     word ptr [ecx+56h], 80h
jmp     short loc_477879
sub_47782A endp




sub_477894 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
add     eax, 408h
lea     edi, [esi+0C4h]
cmp     byte ptr [esi+3], 2
jnz     short loc_47790F
mov     dh, [esi+9]
test    dh, dh
jnz     short loc_47790F
cmp     byte ptr [esi+0Ah], 6
jnz     short loc_47790F
cmp     byte ptr [edi+7], 0B4h
jnb     short loc_4778FC
mov     ecx, [eax+38h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5F8376+2)
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
inc     byte ptr [edi+7]
jmp     loc_478689

loc_4778FC:
mov     [edi+7], dh
and     byte ptr [edi+6], 7Fh
mov     byte ptr [esi+9], 1
mov     [esi+0Ah], dh
jmp     loc_478689

loc_47790F:
mov     ecx, [eax+38h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5F8376+2)
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
jmp     loc_478689
sub_477894 endp




sub_477949 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+408h]
lea     edx, [eax+64h]
movzx   esi, byte ptr [eax+0Ah]
call    ds:funcs_47795C[esi*4]
cmp     byte ptr [ecx+3], 2
jnz     loc_477A00
mov     al, [ebx+3Fh]
test    al, al
jnz     short loc_4779DD
mov     bl, [edx+1]
and     bl, 1Fh
movsx   bx, bl
shl     ebx, 5
mov     al, [edx]
and     al, 1Fh
movsx   si, al
or      ebx, esi
mov     al, [edx+2]
and     al, 1Fh
movsx   si, al
shl     esi, 0Ah
or      ebx, esi
mov     [ecx+15Eh], bx
inc     byte ptr [edx+2]
mov     al, [ecx+15Fh]
or      al, 80h
mov     [ecx+15Fh], al
cmp     byte ptr [edx+2], 10h
jl      short loc_477A00
mov     bl, al
and     bl, 7Fh
mov     [ecx+15Fh], bl
mov     byte ptr [edx+2], 10h
mov     bh, [edx]
cmp     bh, 10h
jz      short loc_477A00
mov     cl, bh
add     cl, 4
mov     [edx], cl
add     byte ptr [edx+1], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4779DD:
mov     ah, al
dec     ah
mov     [ebx+3Fh], ah
mov     word ptr [ecx+15Eh], 0
or      byte ptr [ecx+15Fh], 80h
mov     byte ptr [edx+2], 0
mov     al, [edx+2]
mov     [edx+1], al
mov     [edx], al

loc_477A00:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_477949 endp




sub_477A05 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+408h]
lea     edi, [eax+1E8h]
mov     byte ptr [eax+0ACh], 0
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [esi+3Dh], 0Ah
mov     byte ptr [edi+6], 5Ah ; 'Z'
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [esi+3Fh], 1
jmp     loc_478689
sub_477A05 endp




sub_477A43 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
lea     edi, [eax+64h]
mov     byte ptr [ecx+3Fh], 1
mov     ah, [ecx+3Dh]
test    ah, ah
jz      short loc_477A8D
mov     dh, ah
dec     dh
mov     [ecx+3Dh], dh
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     loc_478689

loc_477A8D:
mov     byte ptr [esi+0ACh], 2
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
cmp     byte ptr [esi+3], 2
jnz     short loc_477ABA
mov     byte ptr [ecx+3Fh], 7
mov     byte ptr [edi], 0
mov     byte ptr [edi+1], 0
mov     byte ptr [edi+2], 0

loc_477ABA:
mov     byte ptr [esi+0Ah], 2
mov     word ptr [esi+44h], 2D0h
mov     word ptr [ecx+3Ah], 10h
jmp     loc_478689
sub_477A43 endp




sub_477ACF proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
lea     edi, [esi+0C4h]
lea     ebp, [esi+1E8h]
push    400h
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
test    eax, eax
jz      short loc_477B22
mov     ah, [ebp+6]
test    ah, ah
jnz     short loc_477B76

loc_477B22:
cmp     byte ptr [esi+3], 2
jz      short loc_477B47

loc_477B28:
mov     byte ptr [esi+0Ah], 3
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+3Dh], 14h
or      byte ptr [edi+6], 80h
mov     byte ptr [edi+7], 0
mov     eax, esi
call    sub_477BD8
jmp     loc_477720

loc_477B47:
mov     bh, [ebp+6]
test    bh, bh
jnz     short loc_477B28
mov     byte ptr [esi+9], 5
mov     [esi+0Ah], bh
mov     byte ptr [esi+0ACh], 6
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
or      byte ptr [edi+6], 40h
jmp     loc_477720

loc_477B76:
mov     dl, ah
dec     dl
mov     [ebp+6], dl
cmp     dword ptr [esi+80h], 2BF20h
jnb     short loc_477BCC
mov     byte ptr [esi+9], 2
mov     byte ptr [esi+0ACh], 4
or      byte ptr [edi+6], 2
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ch]
xor     ah, ah
mov     [edi+4], ax
mov     eax, esi
call    sub_477CBC
jmp     loc_477720

loc_477BCC:
mov     eax, esi
call    sub_477894
jmp     loc_477720
sub_477ACF endp




sub_477BD8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
lea     edx, [eax+0C4h]
test    byte ptr [edx+1], 0Fh
jz      short loc_477C4A
mov     byte ptr [esi+9], 0
mov     word ptr [esi+44h], 80h
mov     byte ptr [esi+0Ah], 5
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     [edi+38h], ax
mov     eax, [esi+54h]
sar     eax, 10h
mov     edx, [edi+36h]
sar     edx, 10h
cmp     eax, edx
jle     short loc_477C26
mov     byte ptr [esi+0ACh], 0Eh
jmp     short loc_477C2D

loc_477C26:
mov     byte ptr [esi+0ACh], 0Dh

loc_477C2D:
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     eax, esi
call    sub_47782A
jmp     loc_478689

loc_477C4A:
mov     dl, [edi+3Dh]
test    dl, dl
jz      short loc_477C6A
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
dec     byte ptr [edi+3Dh]
jmp     loc_478689

loc_477C6A:
cmp     byte ptr [esi+0A6h], 1
jz      short loc_477C89
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
jmp     loc_478689

loc_477C89:
mov     [esi+9], dl
mov     word ptr [esi+44h], 80h
jmp     loc_478689
sub_477BD8 endp




sub_477C97 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
mov     bl, [edx+3Dh]
test    bl, bl
jz      short loc_477CB0
mov     bh, bl
dec     bh
mov     [edx+3Dh], bh
pop     edx
pop     ebx
retn

loc_477CB0:
mov     [eax+9], bl
mov     word ptr [eax+44h], 80h
pop     edx
pop     ebx
retn
sub_477C97 endp




sub_477CBC proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     edx, eax
lea     esi, [eax+408h]
lea     ebx, [eax+0C4h]
lea     ecx, [eax+64h]
cmp     byte ptr [eax+0A6h], 0
jnz     short loc_477CEB
mov     word ptr [esi+3Ah], 20h ; ' '
mov     eax, edx
call    sub_477894

loc_477CEB:
cmp     byte ptr [edx+3], 2
jnz     short loc_477D50
mov     al, [ecx+1]
and     al, 1Fh
cbw
shl     eax, 5
mov     [esp+18h+var_18], eax
mov     al, [ecx]
and     al, 1Fh
cbw
mov     edi, [esp+18h+var_18]
or      edi, eax
mov     al, [ecx+2]
and     al, 1Fh
cbw
shl     eax, 0Ah
or      edi, eax
mov     [edx+15Eh], di
inc     byte ptr [ecx+2]
mov     al, [edx+15Fh]
or      al, 80h
mov     [edx+15Fh], al
cmp     byte ptr [ecx+2], 10h
jl      short loc_477D50
and     al, 7Fh
mov     [edx+15Fh], al
mov     byte ptr [ecx+2], 10h
mov     ah, [ecx]
cmp     ah, 10h
jz      short loc_477D50
mov     al, ah
add     al, 4
mov     [ecx], al
add     byte ptr [ecx+1], 4

loc_477D50:
mov     ecx, [edx+0A4h]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jnz     short loc_477D8E
cmp     byte ptr [edx+3], 2
jz      short loc_477D86
and     byte ptr [ebx+6], 0FDh
mov     byte ptr [edx+9], 0
mov     word ptr [edx+44h], 80h
mov     word ptr [esi+3Ah], 10h
mov     byte ptr [esi+3Eh], 3Ch ; '<'
or      byte ptr [ebx+6], 80h
mov     byte ptr [ebx+7], 0
jmp     short loc_477D8E

loc_477D86:
mov     byte ptr [edx+9], 8
mov     byte ptr [edx+0Ah], 0

loc_477D8E:
add     esp, 4
jmp     loc_478689
sub_477CBC endp




sub_477D96 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_477D9C[edx*4]
pop     edx
retn
sub_477D96 endp




sub_477DA5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
lea     edi, [eax+0C4h]
mov     ecx, [ecx+38h]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
add     eax, 14h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     loc_478689
mov     byte ptr [esi+0ACh], 3
or      byte ptr [edi+6], 2
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Bh]
xor     ah, ah
mov     [edi+4], ax
mov     byte ptr [esi+0Ah], 1
jmp     loc_478689
sub_477DA5 endp




sub_477E23 proc near
push    edx
mov     dl, [eax+0A6h]
cmp     dl, 2
jnz     short loc_477E32
mov     [eax+0Ah], dl

loc_477E32:
pop     edx
retn
sub_477E23 endp




sub_477E34 proc near
add     byte ptr [eax+475h], 8
cmp     byte ptr [eax+0A6h], 1
jnz     short locret_477E48
mov     byte ptr [eax+0Ah], 3

locret_477E48:
retn
sub_477E34 endp




sub_477E49 proc near
push    ebx
push    edx
lea     edx, [eax+0C4h]
mov     bl, [eax+475h]
sub     bl, 8
mov     [eax+475h], bl
cmp     bl, 20h ; ' '
ja      short loc_477E6D
mov     byte ptr [eax+0Ah], 4
and     byte ptr [edx+6], 0FDh

loc_477E6D:
pop     edx
pop     ebx
retn
sub_477E49 endp




sub_477E70 proc near
push    ebx
push    ecx
push    edx
lea     ecx, [eax+408h]
lea     edx, [eax+0C4h]
mov     ebx, [eax+0A4h]
sar     ebx, 18h
cmp     ebx, 0FFFFFFFFh
jnz     short loc_477ED3
mov     byte ptr [ecx+3Eh], 3Ch ; '<'
cmp     byte ptr [eax+3], 2
jz      short loc_477EA1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 6
jmp     short loc_477EA9

loc_477EA1:
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0

loc_477EA9:
test    byte ptr [edx+6], 80h
jz      short loc_477EB7
mov     byte ptr [edx+7], 0
or      byte ptr [edx+6], 80h

loc_477EB7:
mov     word ptr [ecx+3Ah], 10h
mov     byte ptr [eax+0ACh], 1
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B

loc_477ED3:
