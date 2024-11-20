push    eax
push    0
push    4880000h
mov     eax, [esp+38h+var_1C]
add     eax, 34h ; '4'
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     eax, [esp+40h+var_1C]
add     eax, 2Ch ; ','
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 100h
call    sub_4E01FC
mov     eax, [esp+2Ch+var_1C]
mov     dword ptr [eax+34h], 0
add     esp, 14h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_461859 endp




sub_4619D4 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     word ptr [edx+14h], 0
mov     word ptr [edx+18h], 0
mov     ax, [eax+56h]
add     ah, 8
and     ah, 0Fh
mov     [edx+1Ah], ax
movsx   ax, byte ptr [ecx+0Ch]
shl     eax, 4
mov     [edx+1Eh], ax
movsx   ax, byte ptr [ecx+0Dh]
imul    eax, 64h ; 'd'
mov     [edx+1Ch], ax
mov     ah, [ecx+0Eh]
test    ah, 1
jz      short loc_461A18
or      byte ptr [edx+14h], 80h
jmp     short loc_461A21

loc_461A18:
test    ah, 2
jz      short loc_461A21
or      byte ptr [edx+15h], 1

loc_461A21:
test    word ptr [edx+14h], 180h
jz      short loc_461A4B
test    byte ptr [ecx+0Eh], 4
jz      short loc_461A3D
mov     word ptr [edx+20h], 1
mov     word ptr [edx+22h], 200h
jmp     short loc_461A57

loc_461A3D:
mov     word ptr [edx+20h], 2
mov     word ptr [edx+22h], 100h
jmp     short loc_461A57

loc_461A4B:
mov     word ptr [edx+20h], 0
mov     word ptr [edx+22h], 0

loc_461A57:
movsx   ax, byte ptr [ecx+0Fh]
imul    eax, 14h
mov     [edx+28h], ax
or      byte ptr [edx+14h], 8
mov     word ptr [edx+24h], 2Dh ; '-'
mov     word ptr [edx+26h], 0
mov     dword ptr [edx+34h], 0
mov     dword ptr [edx+38h], 0
lea     eax, [edx+3Ch]
xor     ebx, ebx
mov     edx, 0Ah
call    sub_4E19B9
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     dword ptr [ecx+64h], 0
mov     edx, 4210h
mov     eax, ecx
call    sub_461B33
cmp     byte ptr [ecx+3], 1
jnz     short loc_461ACE
mov     byte ptr [ecx+107h], 0FFh

loc_461ACE:
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     edx, [edx+eax*4]
xor     eax, eax
mov     al, [edx+8]
shl     eax, 2
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], 0
inc     byte ptr [ecx+17h]
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+44h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     ecx
pop     ebx
retn
sub_4619D4 endp




sub_461B33 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
xor     eax, eax
cmp     byte ptr [ecx+3], 0
jnz     short loc_461B4B
mov     [ecx+15Eh], bx
pop     ecx
pop     ebx
retn

loc_461B4B:
mov     word ptr [ecx+15Eh], 0

loc_461B54:
cmp     eax, 3
jge     short loc_461B66
mov     edx, eax
mov     [ecx+edx*8+196h], bx
inc     eax
jmp     short loc_461B54

loc_461B66:
mov     word ptr [ecx+1AEh], 0
pop     ecx
pop     ebx
retn
sub_461B33 endp

db 8Dh, 40h, 0
jpt_461C21 dd offset loc_461C28 ; jump table for switch statement
dd offset loc_461C4D
dd offset loc_461C6A
dd offset loc_461C70



sub_461B85 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
mov     ah, [edx+14h]
test    ah, 2
jz      short loc_461BA9
test    ah, 40h
jz      short loc_461BA0
mov     eax, ecx
call    sub_461D0D

loc_461BA0:
mov     edx, ebx
mov     eax, ecx
call    sub_461C84

loc_461BA9:
mov     dh, [ecx+0ACh]
test    dh, dh
jnz     short loc_461BCF
mov     dl, [ecx+3]
cmp     dl, 1
jnz     short loc_461BC7
test    byte ptr [ebx+14h], 4
jz      short loc_461BC7
mov     [ecx+0ACh], dl

loc_461BC7:
test    byte ptr [ebx+15h], 8
jz      short loc_461BF6
jmp     short loc_461BEF

loc_461BCF:
cmp     dh, 1
jnz     short loc_461BF6
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_461BE9
mov     byte ptr [ecx+0ACh], 0

loc_461BE9:
test    byte ptr [ebx+15h], 8
jz      short loc_461BF6

loc_461BEF:
mov     byte ptr [ecx+0ACh], 2

loc_461BF6:
movzx   esi, byte ptr [ecx+9]
mov     edx, ebx
mov     eax, ecx
call    ds:funcs_461BFE[esi*4]
test    byte ptr [ebx+14h], 1
jz      loc_461C80
mov     al, [ecx+9]
dec     al              ; switch 4 cases
cmp     al, 3
ja      def_461C21      ; jumptable 00461C21 default case
and     eax, 0FFh
jmp     jpt_461C21[eax*4] ; switch jump

loc_461C28:             ; jumptable 00461C21 case 1
mov     dl, [ebx+15h]
test    dl, 8
jz      short loc_461C36

loc_461C30:
mov     byte ptr [ecx+9], 4
jmp     short def_461C21 ; jumptable 00461C21 default case

loc_461C36:
test    dl, 2
jz      short loc_461C41

loc_461C3B:
mov     byte ptr [ecx+9], 3
jmp     short def_461C21 ; jumptable 00461C21 default case

loc_461C41:
test    byte ptr [ebx+14h], 4
jz      short def_461C21 ; jumptable 00461C21 default case
mov     byte ptr [ecx+9], 2
jmp     short def_461C21 ; jumptable 00461C21 default case

loc_461C4D:             ; jumptable 00461C21 case 2
mov     dh, [ebx+15h]
test    dh, 8
jnz     short loc_461C30
test    dh, 2
jnz     short loc_461C3B
mov     byte ptr [ecx+9], 1
or      byte ptr [ebx+14h], 8
mov     word ptr [ebx+24h], 2Dh ; '-'
jmp     short def_461C21 ; jumptable 00461C21 default case

loc_461C6A:             ; jumptable 00461C21 case 3
test    byte ptr [ebx+15h], 4
jz      short loc_461C30

loc_461C70:             ; jumptable 00461C21 case 4
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0

def_461C21:             ; jumptable 00461C21 default case
mov     byte ptr [ecx+0Ah], 0
and     byte ptr [ebx+14h], 0FEh

loc_461C80:
pop     esi
pop     ecx
pop     ebx
retn
sub_461B85 endp




sub_461C84 proc near
push    ebx
push    ecx
push    edi
mov     ecx, eax
mov     eax, [edx+34h]
and     eax, 0FFFFFFh
jz      short loc_461CF2
test    byte ptr [edx+37h], 18h
jz      short loc_461CE5
mov     bx, [ecx+6Eh]
mov     [ecx+0B2h], bx
sub     ebx, eax
mov     [ecx+6Eh], bx
test    bx, bx
jg      short loc_461CC8
mov     di, [edx+14h]
and     edi, 0FFFFF7C8h
mov     [edx+14h], di
mov     eax, edi
or      eax, 801h
mov     [edx+14h], ax

loc_461CC8:
add     edx, 2Ch ; ','
mov     eax, 0A0h
call    sub_4D8BC3
mov     edx, 7FFFh
mov     eax, ecx
call    sub_461B33
pop     edi
pop     ecx
pop     ebx
retn

loc_461CE5:
add     edx, 2Ch ; ','
mov     eax, 0A3h
call    sub_4D8BC3

loc_461CF2:
pop     edi
pop     ecx
pop     ebx
retn
sub_461C84 endp

db 8Dh, 40h, 0
jpt_461D25 dd offset loc_461D2C ; jump table for switch statement
dd offset loc_461D88
dd offset loc_461DEB
dd offset loc_461E62
dd offset loc_461E85



sub_461D0D proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     edi, edx
mov     al, [eax+0Bh]
cmp     al, 4           ; switch 5 cases
ja      def_461D25      ; jumptable 00461D25 default case
and     eax, 0FFh
jmp     jpt_461D25[eax*4] ; switch jump

loc_461D2C:             ; jumptable 00461D25 case 0
cmp     word ptr [edx+1Eh], 0
jz      short loc_461D3A
cmp     word ptr [edx+1Ch], 0
jnz     short loc_461D75

loc_461D3A:
test    word ptr [edi+14h], 180h
jz      short loc_461D66
or      byte ptr [edi+15h], 10h

loc_461D46:
cmp     word ptr [edi+20h], 1
jnz     short loc_461D5F
mov     eax, 0FBh

loc_461D52:
mov     [esi+44h], ax
mov     byte ptr [esi+0Bh], 2
jmp     def_461D25      ; jumptable 00461D25 default case

loc_461D5F:
mov     eax, 97h
jmp     short loc_461D52

loc_461D66:
mov     word ptr [esi+44h], 0

loc_461D6C:
mov     byte ptr [esi+0Bh], 4
jmp     def_461D25      ; jumptable 00461D25 default case

loc_461D75:
mov     word ptr [esi+44h], 8
or      byte ptr [edx+15h], 10h
mov     byte ptr [esi+0Bh], 1
jmp     def_461D25      ; jumptable 00461D25 default case

loc_461D88:             ; jumptable 00461D25 case 1
mov     eax, [esi+42h]
sar     eax, 10h
mov     edx, [edx+1Ch]
sar     edx, 10h
cmp     eax, edx
jge     short loc_461D9F
add     word ptr [esi+44h], 8
jmp     short loc_461DA7

loc_461D9F:
mov     ax, [edi+1Eh]
mov     [esi+44h], ax

loc_461DA7:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     edx, [esi+42h]
sar     edx, 10h
sar     edx, 4
mov     eax, [edi+1Ah]
sar     eax, 10h
sub     eax, edx
mov     [edi+1Ch], ax
test    ax, ax
jg      def_461D25      ; jumptable 00461D25 default case
test    word ptr [edi+14h], 180h
jnz     loc_461D46

loc_461DE2:
mov     byte ptr [esi+0Bh], 3
jmp     def_461D25      ; jumptable 00461D25 default case

loc_461DEB:             ; jumptable 00461D25 case 2
cmp     word ptr [edx+20h], 1
jnz     short loc_461DF9
mov     eax, 0FBh
jmp     short loc_461DFE

loc_461DF9:
mov     eax, 97h

loc_461DFE:
mov     [esi+44h], ax
cmp     word ptr [edi+22h], 0
jle     short loc_461DE2
lea     eax, [esi+56h]
test    byte ptr [edi+14h], 80h
jz      short loc_461E2C
cmp     word ptr [edi+20h], 1
jnz     short loc_461E20
mov     ecx, 2
jmp     short loc_461E25

loc_461E20:
mov     ecx, 8

loc_461E25:
movsx   edx, word ptr [eax]
add     edx, ecx
jmp     short loc_461E44

loc_461E2C:
cmp     word ptr [edi+20h], 1
jnz     short loc_461E3A
mov     ecx, 2
jmp     short loc_461E3F

loc_461E3A:
mov     ecx, 8

loc_461E3F:
movsx   edx, word ptr [eax]
sub     edx, ecx

loc_461E44:
mov     [eax], dx
and     byte ptr [esi+57h], 0Fh
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
dec     word ptr [edi+22h]
jmp     short def_461D25 ; jumptable 00461D25 default case

loc_461E62:             ; jumptable 00461D25 case 3
cmp     word ptr [esi+44h], 0
jle     loc_461D6C
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
sub     word ptr [esi+44h], 10h
jmp     short def_461D25 ; jumptable 00461D25 default case

loc_461E85:             ; jumptable 00461D25 case 4
mov     dx, [edx+14h]
and     edx, 0FFFFFDBEh
mov     [edi+14h], dx
mov     ebx, edx
or      ebx, 201h
mov     [edi+14h], bx

def_461D25:             ; jumptable 00461D25 default case
test    byte ptr [edi+15h], 10h
jz      short loc_461EE5
call    sub_4DE13B
test    eax, eax
jz      short loc_461EC3
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 15h
mov     byte ptr [eax+3], 0
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     byte ptr [eax+0Dh], 1

loc_461EC3:
call    sub_4DE13B
test    eax, eax
jz      short loc_461EE1
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 15h
mov     byte ptr [eax+3], 2
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     byte ptr [eax+0Dh], 1

loc_461EE1:
and     byte ptr [edi+15h], 0EFh

loc_461EE5:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_461D0D endp




sub_461EEA proc near
push    ebx
push    ecx
mov     bx, [edx+26h]
xor     bh, bh
and     bl, 3Fh
movsx   ecx, bx
mov     ebx, dword ptr ds:unk_564C32[ecx*2]
sar     ebx, 10h
mov     ecx, ebx
shl     ecx, 2
add     ecx, ebx
sar     ecx, 0Ch
dec     ecx
mov     [eax+16h], cx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
inc     word ptr [edx+26h]
pop     ecx
pop     ebx
retn
sub_461EEA endp




sub_461F24 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, edx
mov     word ptr [eax+15Eh], 0
xor     ebx, ebx
jmp     short loc_461F3F

loc_461F39:
inc     ebx
cmp     ebx, 4
jge     short loc_461F9B

loc_461F3F:
mov     eax, ebx
shl     eax, 3
add     eax, ecx
mov     word ptr [eax+196h], 8210h
cmp     word ptr [eax+192h], 0
jle     short loc_461F39
mov     edx, [eax+190h]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     edx, 1Fh
sub     edx, eax
mov     eax, edx
sar     edx, 1
test    eax, eax
jge     short loc_461F80
xor     eax, eax

loc_461F80:
shl     eax, 0Ah
or      ah, 80h
mov     edi, edx
shl     edi, 5
or      eax, edi
or      edx, eax
mov     eax, ebx
mov     [ecx+eax*8+196h], dx
jmp     short loc_461F39

loc_461F9B:
mov     al, [ecx+0Ah]
test    al, al
jbe     short loc_461FAB
cmp     al, 1
jz      short loc_461FFA
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_461FAB:
or      byte ptr [ecx], 2
call    sub_4DE13B
mov     [esi+4], eax
test    eax, eax
jz      short loc_461FF7
mov     byte ptr [eax], 5
mov     eax, [esi+4]
mov     byte ptr [eax+2], 10h
mov     eax, [esi+4]
mov     byte ptr [eax+3], 5
mov     eax, [esi+4]
mov     dx, [ecx+14h]
mov     [eax+48h], dx
mov     eax, [esi+4]
mov     word ptr [eax+4Ah], 0
mov     eax, [esi+4]
mov     dx, [ecx+18h]
mov     [eax+4Ch], dx
lea     edx, [ecx+14h]
mov     eax, 149h
call    sub_4D8BC3

loc_461FF7:
inc     byte ptr [ecx+0Ah]

loc_461FFA:
mov     ax, [ecx+16h]
sub     eax, 10h
mov     [ecx+16h], ax
test    ax, ax
jge     short loc_462025
or      byte ptr [esi+14h], 42h
mov     word ptr [ecx+16h], 0FFFFh
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0
mov     word ptr [ecx+15Eh], 4210h

loc_462025:
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_461F24 endp




sub_462036 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, edx
mov     edi, offset byte_5F8364
call    sub_461EEA
cmp     byte ptr [ecx+0Ah], 0
jnz     short loc_462065
mov     ax, [ecx+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+1Ah], ax
mov     word ptr [esi+18h], 0
inc     byte ptr [ecx+0Ah]

loc_462065:
test    byte ptr [esi+15h], 8
jnz     loc_462107
lea     eax, [esi+3Ch]
test    byte ptr [esi+14h], 8
jz      short loc_46209E
call    sub_4E19B4
mov     bx, [esi+24h]
dec     ebx
mov     [esi+24h], bx
test    bx, bx
jg      loc_462107
and     byte ptr [esi+14h], 0F7h
mov     word ptr [esi+18h], 0
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_46209E:
cmp     byte ptr [ecx+3], 0
jnz     short loc_4620E8
mov     ebx, [esi+18h]
sar     ebx, 10h
mov     edx, ecx
call    sub_4E19D8
test    eax, eax
jz      short loc_462107
mov     word ptr [esi+18h], 0
mov     ebx, [esi+18h]
sar     ebx, 10h
lea     edx, [edi+14h]
lea     eax, [ecx+14h]
mov     ecx, 800h
call    sub_4DE552
test    ax, ax
jle     short loc_4620DF
or      byte ptr [esi+14h], 15h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4620DF:
or      byte ptr [esi+14h], 25h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4620E8:
mov     edx, ecx
call    sub_4E19CA
test    eax, eax
jz      short loc_462107
test    byte ptr [esi+18h], 0Fh
jnz     short loc_462103
test    byte ptr [esi+16h], 3
jnz     short loc_462103
or      byte ptr [esi+14h], 5

loc_462103:
inc     word ptr [esi+18h]

loc_462107:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_462036 endp




sub_46210C proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
call    sub_461EEA
lea     eax, [esi+3Ch]
cmp     byte ptr [ecx+3], 0
jnz     short loc_46213B
mov     ebx, [esi+18h]
sar     ebx, 10h
mov     edx, ecx
call    sub_4E19D8
mov     edx, esi
mov     eax, ecx
call    sub_462205
pop     esi
pop     ecx
pop     ebx
retn

loc_46213B:
mov     edx, ecx
call    sub_4E19CA
mov     edx, esi
mov     eax, ecx
call    sub_46214F
pop     esi
pop     ecx
pop     ebx
retn
sub_46210C endp




sub_46214F proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_462167
jbe     short loc_462186
cmp     al, 2
jz      short loc_4621D1
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_462167:
test    al, al
jnz     loc_4621F0
cmp     byte ptr [ecx+0A4h], 9
jnz     loc_4621F0
inc     al
mov     [ecx+0Ah], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_462186:
xor     edx, edx
jmp     short loc_462190

loc_46218A:
inc     edx
cmp     edx, 2
jge     short loc_4621BC

loc_462190:
call    sub_4DE043
test    eax, eax
jz      short loc_46218A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 20h ; ' '
lea     edi, [eax+14h]
lea     esi, [ecx+14h]
movsd
movsd
mov     esi, edx
add     esi, edx
dec     esi
shl     esi, 8
mov     bx, [ecx+56h]
add     ebx, esi
mov     [eax+56h], bx
jmp     short loc_46218A

loc_4621BC:
lea     edx, [ecx+14h]
mov     eax, 14Ah
call    sub_4D8BC3
inc     byte ptr [ecx+0Ah]
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4621D1:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4621F0
mov     ah, [edx+14h]
and     ah, 0FAh
mov     [edx+14h], ah
mov     bl, ah
or      bl, 1
mov     [edx+14h], bl

loc_4621F0:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_46214F endp

jpt_462225 dd offset loc_46222C ; jump table for switch statement
dd offset loc_4622EB
dd offset loc_4623AC
dd offset loc_462404



sub_462205 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 28h
mov     ebx, eax
mov     ecx, edx
mov     edx, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_462225      ; jumptable 00462225 default case
and     eax, 0FFh
jmp     jpt_462225[eax*4] ; switch jump

loc_46222C:             ; jumptable 00462225 case 0
cmp     word ptr [ecx+18h], 30h ; '0'
jge     loc_4623A0
test    byte ptr [ecx+14h], 10h
jz      short loc_462248
mov     ax, [ecx+1Ah]
add     eax, 20h ; ' '
jmp     short loc_46224F

loc_462248:
mov     ax, [ecx+1Ah]
sub     eax, 20h ; ' '

loc_46224F:
and     ah, 0Fh
mov     [ecx+1Ah], ax
mov     eax, [ebx+1A6h]
sar     eax, 10h
shl     eax, 10h
mov     [esp+38h+var_28], eax
mov     eax, [ebx+1A8h]
sar     eax, 10h
shl     eax, 10h
mov     [esp+38h+var_24], eax
mov     eax, [ebx+1AAh]
sar     eax, 10h
shl     eax, 10h
mov     [esp+38h+var_20], eax
mov     edi, [ecx+18h]
sar     edi, 10h
lea     esi, [edx+1Ch]
mov     edx, esi
lea     eax, [esp+38h+var_28]
call    sub_4DDD5D
sub     edi, eax
test    edi, edi
jge     short loc_4622B9
mov     edi, [ecx+18h]
sar     edi, 10h
mov     edx, esi
lea     eax, [esp+38h+var_28]
call    sub_4DDD5D
sub     edi, eax
mov     eax, edi
neg     eax
jmp     short loc_4622CE

loc_4622B9:
mov     edi, [ecx+18h]
sar     edi, 10h
mov     edx, esi
lea     eax, [esp+38h+var_28]
call    sub_4DDD5D
sub     edi, eax
mov     eax, edi

loc_4622CE:
cmp     eax, 20h ; ' '
jge     short loc_4622E2
mov     word ptr [ecx+18h], 0
mov     byte ptr [ebx+0Ah], 1
jmp     def_462225      ; jumptable 00462225 default case

loc_4622E2:
inc     word ptr [ecx+18h]
jmp     def_462225      ; jumptable 00462225 default case

loc_4622EB:             ; jumptable 00462225 case 1
cmp     word ptr [ecx+18h], 0
jnz     loc_46238D
call    sub_4DE043
mov     edx, eax
test    eax, eax
jz      loc_46238D
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
mov     dword ptr [eax+0C8h], (offset dword_5F880A+2)
mov     ax, [ebx+1A8h]
mov     [edx+14h], ax
mov     ax, [ebx+1AAh]
sub     eax, 28h ; '('
mov     [edx+16h], ax
mov     ax, [ebx+1ACh]
mov     [edx+18h], ax
xor     esi, esi
mov     [esp+38h+var_14], si
mov     [esp+38h+var_18], si
mov     ax, [ecx+1Ah]
mov     [esp+38h+var_16], ax
lea     esi, [edx+8Ch]
mov     edx, esi
lea     eax, [esp+38h+var_18]
call    sub_4EF638
mov     edx, 200h
mov     [esp+38h+var_30], edx
mov     [esp+38h+var_34], edx
mov     [esp+38h+var_38], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
lea     edx, [ebx+1A8h]
mov     eax, 14Ch
call    sub_4D8BC3

loc_46238D:
mov     ax, [ecx+18h]
inc     eax
mov     [ecx+18h], ax
cmp     ax, 3Ch ; '<'
jnz     def_462225      ; jumptable 00462225 default case

loc_4623A0:
mov     word ptr [ecx+18h], 0
mov     byte ptr [ebx+0Ah], 2
jmp     short def_462225 ; jumptable 00462225 default case

loc_4623AC:             ; jumptable 00462225 case 2
test    byte ptr [ecx+14h], 10h
jz      short loc_4623BB
mov     ax, [ecx+1Ah]
sub     eax, 20h ; ' '
jmp     short loc_4623C4

loc_4623BB:
mov     ax, [ecx+1Ah]
add     eax, 20h ; ' '

loc_4623C4:
and     ah, 0Fh
mov     [ecx+1Ah], ax
mov     eax, [ebx+54h]
sar     eax, 10h
add     eax, 800h
and     eax, 0FFFh
mov     edx, [ecx+18h]
sar     edx, 10h
sub     eax, edx
mov     edx, eax
test    eax, eax
jge     short loc_4623EB
neg     edx

loc_4623EB:
cmp     edx, 20h ; ' '
jge     short def_462225 ; jumptable 00462225 default case
mov     ax, [ebx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ecx+1Ah], ax
mov     byte ptr [ebx+0Ah], 3
jmp     short def_462225 ; jumptable 00462225 default case

loc_462404:             ; jumptable 00462225 case 3
mov     ah, [ecx+14h]
and     ah, 0CAh
mov     [ecx+14h], ah
mov     dl, ah
or      dl, 1
mov     [ecx+14h], dl

def_462225:             ; jumptable 00462225 default case
add     esp, 28h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_462205 endp

jpt_462443 dd offset loc_46244A ; jump table for switch statement
dd offset loc_462470
dd offset loc_46248C
dd offset loc_4624CB



sub_46242D proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_462443      ; jumptable 00462443 default case
and     eax, 0FFh
jmp     jpt_462443[eax*4] ; switch jump

loc_46244A:             ; jumptable 00462443 case 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     si, [edx+28h]
test    si, si
jle     short loc_46246B
mov     edi, esi
dec     edi
mov     [edx+28h], di
jmp     def_462443      ; jumptable 00462443 default case

loc_46246B:
inc     byte ptr [ecx+0Ah]
jmp     short def_462443 ; jumptable 00462443 default case

loc_462470:             ; jumptable 00462443 case 1
cmp     dword ptr [ecx+80h], 240000h
jbe     short def_462443 ; jumptable 00462443 default case
or      byte ptr [edx+15h], 4
and     byte ptr [edx+14h], 0FDh
mov     word ptr [ecx+46h], 12h
jmp     short loc_46246B

loc_46248C:             ; jumptable 00462443 case 2
call    sub_4DE13B
mov     [edx+4], eax
test    eax, eax
jz      short loc_4624C8
mov     byte ptr [eax], 5
mov     eax, [edx+4]
mov     byte ptr [eax+2], 10h
mov     eax, [edx+4]
mov     byte ptr [eax+3], 5
mov     eax, [edx+4]
mov     bx, [ecx+14h]
mov     [eax+48h], bx
mov     eax, [edx+4]
mov     word ptr [eax+4Ah], 0
mov     eax, [edx+4]
mov     bx, [ecx+18h]
mov     [eax+4Ch], bx

loc_4624C8:
inc     byte ptr [ecx+0Ah]

loc_4624CB:             ; jumptable 00462443 case 3
cmp     word ptr [ecx+16h], 258h
jle     short def_462443 ; jumptable 00462443 default case
or      byte ptr [edx+14h], 1

def_462443:             ; jumptable 00462443 default case
cmp     byte ptr [ecx+0Ah], 0
jbe     loc_46256A
mov     word ptr [ecx+15Eh], 0
xor     ebx, ebx
jmp     short loc_4624F4

loc_4624EE:
inc     ebx
cmp     ebx, 4
jge     short loc_462556

loc_4624F4:
mov     eax, ebx
mov     word ptr [ecx+eax*8+196h], 4210h
mov     edx, [ecx+eax*8+190h]
sar     edx, 10h
mov     eax, ds:(off_516AB0+2)[ebx*2]
sar     eax, 10h
cmp     edx, eax
jle     short loc_4624EE
sub     edx, 6Ah ; 'j'
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     edx, 1Fh
sub     edx, eax
mov     eax, edx
test    edx, edx
jge     short loc_462537
xor     eax, edx

loc_462537:
mov     edx, eax
sar     edx, 1
shl     eax, 0Ah
or      ah, 80h
mov     esi, edx
shl     esi, 5
or      eax, esi
or      edx, eax
mov     eax, ebx
mov     [ecx+eax*8+196h], dx
jmp     short loc_4624EE

loc_462556:
mov     ax, [ecx+46h]
add     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax

loc_46256A:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_46242D endp

db 8Bh, 0C0h
jpt_46259A dd offset loc_4625A1 ; jump table for switch statement
dd offset loc_46263A
dd offset loc_462671
dd offset loc_4626DD



sub_462581 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     ebp, edx
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_46259A      ; jumptable 0046259A default case
and     eax, 0FFh
jmp     jpt_46259A[eax*4] ; switch jump

loc_4625A1:             ; jumptable 0046259A case 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
call    sub_4DE13B
mov     [edx+4], eax
test    eax, eax
jz      short loc_4625D5
mov     byte ptr [eax], 5
mov     eax, [edx+4]
mov     byte ptr [eax+2], 10h
mov     eax, [edx+4]
mov     byte ptr [eax+3], 2
mov     esi, [edx+4]
lea     edi, [esi+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4625D5:
call    sub_4DE13B
mov     [ebp+8], eax
test    eax, eax
jz      short loc_4625FD
mov     byte ptr [eax], 5
mov     eax, [ebp+8]
mov     byte ptr [eax+2], 10h
mov     eax, [ebp+8]
mov     byte ptr [eax+3], 3
mov     esi, [ebp+8]
lea     edi, [esi+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4625FD:
call    sub_4DE13B
mov     [ebp+0Ch], eax
test    eax, eax
jz      short loc_462625
mov     byte ptr [eax], 5
mov     eax, [ebp+0Ch]
mov     byte ptr [eax+2], 10h
mov     eax, [ebp+0Ch]
mov     byte ptr [eax+3], 4
mov     esi, [ebp+0Ch]
lea     edi, [esi+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_462625:
lea     edx, [ecx+14h]
mov     eax, 14Dh
call    sub_4D8BC3

loc_462632:
inc     byte ptr [ecx+0Ah]
jmp     def_46259A      ; jumptable 0046259A default case

loc_46263A:             ; jumptable 0046259A case 1
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_46259A      ; jumptable 0046259A default case
cmp     dword ptr [ecx+80h], 240000h
jbe     def_46259A      ; jumptable 0046259A default case
lea     edx, [ecx+14h]
mov     eax, 14Eh
call    sub_4D8BC3
mov     word ptr [ecx+46h], 8
jmp     short loc_462632

loc_462671:             ; jumptable 0046259A case 2
cmp     dword ptr [ecx+80h], 240000h
ja      short loc_462683
mov     word ptr [ecx+46h], 10h

loc_462683:
mov     dx, [ecx+16h]
cmp     dx, 258h
jg      short loc_462632
cmp     dx, 12Ch
jle     def_46259A      ; jumptable 0046259A default case
xor     esi, esi
mov     edi, 12Ch
jmp     short loc_4626A8

loc_4626A2:
inc     esi
cmp     esi, 3
jge     short def_46259A ; jumptable 0046259A default case

loc_4626A8:
mov     ebx, esi
shl     ebx, 2
add     ebx, ebp
mov     eax, [ebx+4]
test    eax, eax
jz      short loc_4626A2
mov     byte ptr [eax+8], 4
mov     edx, [ecx+14h]
sar     edx, 10h
mov     eax, 258h
sub     eax, edx
mov     edx, eax
shl     edx, 7
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     dl, al
mov     eax, [ebx+4]
mov     [eax+0Ah], dl
jmp     short loc_4626A2

loc_4626DD:             ; jumptable 0046259A case 3
xor     esi, esi
jmp     short loc_4626E7

loc_4626E1:
inc     esi
cmp     esi, 3
jge     short loc_462709

loc_4626E7:
mov     eax, esi
shl     eax, 2
add     eax, ebp
mov     edi, [eax+4]
test    edi, edi
jz      short loc_4626E1
mov     byte ptr [edi+8], 5
mov     edx, [eax+4]
mov     byte ptr [edx+9], 0
mov     eax, [eax+4]
mov     byte ptr [eax+0Ah], 10h
jmp     short loc_4626E1

loc_462709:
or      byte ptr [ebp+14h], 1

def_46259A:             ; jumptable 0046259A default case
mov     word ptr [ecx+15Eh], 0
xor     esi, esi
jmp     short loc_462720

loc_46271A:
inc     esi
cmp     esi, 4
jge     short loc_462783

loc_462720:
mov     eax, esi
shl     eax, 3
add     eax, ecx
mov     word ptr [eax+196h], 4210h
cmp     word ptr [eax+192h], 20h ; ' '
jle     short loc_46271A
mov     edx, [eax+190h]
sar     edx, 10h
sub     edx, 6Ah ; 'j'
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     edx, 1Fh
sub     edx, eax
mov     eax, edx
test    edx, edx
jge     short loc_462762
xor     eax, edx

loc_462762:
mov     edx, eax
sar     edx, 1
shl     eax, 0Ah
or      ah, 80h
mov     ebx, eax
mov     eax, edx
shl     eax, 5
or      eax, ebx
or      edx, eax
mov     eax, esi
mov     [ecx+eax*8+196h], dx
jmp     short loc_46271A

loc_462783:
mov     ax, [ecx+46h]
add     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_462581 endp



; Attributes: thunk

sub_46279D proc near
jmp     sub_4DE2F6
sub_46279D endp




sub_4627A2 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4627A8[edx*4]
pop     edx
retn
sub_4627A2 endp




sub_4627B1 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4627BA[ecx*4]
mov     eax, edx
call    sub_462986
pop     edx
pop     ecx
retn
sub_4627B1 endp




sub_4627CB proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_462852
or      byte ptr [ebp+0], 2
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     dword ptr [ebp+78h], 0
mov     eax, ebp
call    sub_42C592
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
xor     eax, eax
mov     al, [ebp+8]
shl     eax, 2
add     eax, offset unk_516AE4
xor     ebx, ebx
mov     bl, [eax+1]
xor     edx, edx
mov     dl, [eax]
mov     eax, ebp
call    sub_4DE96B
mov     byte ptr [ebp+0Dh], 0
mov     byte ptr [ebp+0Eh], 1
mov     byte ptr [ebp+0Fh], 0
inc     byte ptr [ebp+9]
jmp     loc_462920

loc_462852:
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
mov     eax, ebp
call    sub_4DEADD
mov     dl, ds:byte_560BE5
cmp     dl, 1
jnz     loc_462920
add     [ebp+8], dl
mov     byte ptr [ebp+9], 0
jmp     loc_462920
sub_4627CB endp




sub_46288E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_4628C5
xor     ecx, ecx
mov     cl, [ebp+8]
shl     ecx, 2
add     ecx, offset unk_516AE4
xor     ebx, ebx
mov     bl, [ecx+1]
xor     edx, edx
mov     dl, [ecx]
mov     eax, ebp
call    sub_4DE96B
mov     dl, [ecx+2]
mov     [ebp+0Ch], dl
inc     byte ptr [ebp+9]
jmp     short loc_462920

loc_4628C5:
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
cmp     byte ptr [ebp+8], 2
jnz     short loc_4628F5
cmp     byte ptr [ebp+0A4h], 17h
jnz     short loc_4628F5
mov     byte ptr [ebp+10Ch], 0Ch

loc_4628F5:
mov     edx, [ebp+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_462919
mov     bl, [ebp+0Ch]
test    bl, bl
jnz     short loc_462912
inc     byte ptr [ebp+8]
mov     [ebp+9], bl
jmp     short loc_462919

loc_462912:
mov     bh, bl
dec     bh
mov     [ebp+0Ch], bh

loc_462919:
mov     eax, ebp
call    sub_4DEADD

loc_462920:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46288E endp




sub_46293A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_46296A
xor     eax, eax
mov     al, [ebp+8]
shl     eax, 2
add     eax, offset unk_516AE4
xor     ebx, ebx
mov     bl, [eax+1]
xor     edx, edx
mov     dl, [eax]
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+9]
jmp     short loc_462920

loc_46296A:
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
jmp     short loc_462919
sub_46293A endp




sub_462986 proc near
push    ebx
push    edx
mov     edx, [eax+0Ah]
sar     edx, 18h
shl     edx, 2
add     edx, offset unk_516B08
cmp     byte ptr [edx], 0FFh
jz      short loc_4629CC
mov     bl, ds:byte_560BE5
cmp     bl, [edx]
jnz     short loc_4629CC
mov     edx, [edx]
sar     edx, 10h
cmp     edx, ds:dword_560BEC
jnz     short loc_4629CC
inc     byte ptr [eax+0Dh]
cmp     byte ptr [eax+0Eh], 0
jnz     short loc_4629C3
mov     edx, 1
jmp     short loc_4629C5

loc_4629C3:
xor     edx, edx

loc_4629C5:
mov     [eax+0Eh], dl
mov     byte ptr [eax+0Fh], 0

loc_4629CC:
mov     dl, [eax+0Eh]
test    dl, dl
jz      short loc_4629FE
cmp     byte ptr [eax+0Fh], 0
jnz     short loc_4629F4
cmp     byte ptr [eax+0FCh], 0Bh
jnz     short loc_4629E9
mov     edx, 1
jmp     short loc_4629EE

loc_4629E9:
mov     edx, 0Bh

loc_4629EE:
mov     [eax+0FCh], dl

loc_4629F4:
mov     dl, [eax+0Fh]
inc     dl
and     dl, 3
jmp     short loc_462A05

loc_4629FE:
mov     byte ptr [eax+0FCh], 0Bh

loc_462A05:
mov     [eax+0Fh], dl
pop     edx
pop     ebx
retn
sub_462986 endp




sub_462A0B proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_462A11[edx*4]
pop     edx
retn
sub_462A0B endp




sub_462A1A proc near

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
sub     esp, 1Ch
mov     ebp, eax
add     eax, 348h
mov     [esp+34h+var_1C], eax
or      byte ptr [ebp+0], 6
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+78h], 0
mov     dword ptr [ebp+10h], 0
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 42100200h
mov     dword ptr [ebp+78h], 0
mov     dword ptr [ebp+10h], 0
and     byte ptr [ebp+57h], 0Fh
and     byte ptr [ebp+55h], 0Fh
mov     word ptr [ebp+58h], 0
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     esi, [ebp+14h]
mov     ecx, 200h
mov     edx, (offset dword_5F880A+2)
mov     eax, esi
call    sub_4DE552
add     [ebp+56h], ax
mov     ecx, 400h
mov     ebx, 0C00h
mov     edx, (offset dword_5F880A+2)
mov     eax, esi
call    sub_4DE5A3
add     [ebp+54h], ax
mov     edi, [esp+34h+var_1C]
lea     esi, [ebp+14h]
movsd
movsd
mov     eax, [esp+34h+var_1C]
mov     dword ptr [eax+10h], 0
mov     dword ptr [eax+14h], 0
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+0Bh], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE9BA
mov     eax, ebp
call    sub_4DF7CB
xor     ecx, ecx
mov     [esp+34h+var_24], cx
mov     [esp+34h+var_22], cx
mov     [esp+34h+var_20], 0F000h
lea     eax, [ebp+160h]
mov     ebx, esp
lea     edx, [esp+34h+var_24]
call    sub_4EF1FB
lea     edx, [ebp+44h]
mov     eax, esp
call    sub_4EF932
add     esp, 1Ch

loc_462B24:
pop     ebp

loc_462B25:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_462A1A endp




sub_462B2B proc near
inc     byte ptr [eax+8]
retn
sub_462B2B endp




sub_462B2F proc near
push    edx
inc     byte ptr [eax+8]
lea     edx, [eax+14h]
mov     eax, 0FFh
call    sub_4D8BC3
pop     edx
retn
sub_462B2F endp




sub_462B42 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+348h]
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
xor     edx, edx
mov     dl, [eax+0Bh]
call    sub_462DEF
mov     ah, [ecx+0Bh]
inc     ah
mov     [ecx+0Bh], ah
xor     edx, edx
mov     dl, ah
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
mov     edx, [ecx+42h]
sar     edx, 10h
imul    edx, eax
sar     edx, 0Ch
movsx   ebx, word ptr [ebp+0]
add     edx, ebx
mov     [ecx+14h], dx
mov     edx, [ecx+44h]
sar     edx, 10h
imul    edx, eax
sar     edx, 0Ch
mov     ebx, [ebp+0]
sar     ebx, 10h
add     edx, ebx
mov     [ecx+16h], dx
mov     edx, [ecx+46h]
sar     edx, 10h
imul    eax, edx
sar     eax, 0Ch
mov     edx, [ebp+2]
sar     edx, 10h
add     eax, edx
mov     [ecx+18h], ax
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
mov     eax, ecx
call    sub_462D8E
test    eax, eax
jz      short loc_462C21
mov     eax, 12h
call    sub_4D8E2B
lea     edx, [ecx+14h]
mov     eax, 140h
call    sub_4D8BC3
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
add     byte ptr [ecx+8], 2
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE9BA
mov     eax, ecx
call    sub_4DF7CB
mov     bh, [ecx+0Bh]
add     bh, bh
mov     [ecx+0Bh], bh
jmp     loc_462B24

loc_462C21:
cmp     byte ptr [ecx+0Bh], 14h
jb      short loc_462C4D
mov     eax, 12h
call    sub_4D8E2B
inc     byte ptr [ecx+8]
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE9BA
mov     eax, ecx
call    sub_4DF7CB
mov     byte ptr [ecx+0Ah], 0Fh

loc_462C4D:
mov     eax, ecx
call    sub_462DAD
xor     eax, eax
mov     al, [ecx+0Bh]
add     eax, eax
mov     [ebp+14h], eax
jmp     loc_462B24
sub_462B42 endp




sub_462C63 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr [eax+0A7h], 0
jge     short loc_462CB7
mov     dl, [ecx+0Ah]
dec     dl
mov     [ecx+0Ah], dl
jnz     short loc_462CB7
lea     edx, [ecx+14h]
mov     eax, 140h
call    sub_4D8BC3
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
inc     byte ptr [ecx+8]
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE9BA
mov     eax, ecx
call    sub_4DF7CB
mov     bh, [ecx+0Bh]
add     bh, bh
mov     [ecx+0Bh], bh
jmp     loc_462B25

loc_462CB7:
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
mov     eax, ecx
call    sub_462DAD
jmp     loc_462B25
sub_462C63 endp




sub_462CD1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+348h]
cmp     byte ptr [eax+0A7h], 0
jge     short loc_462D60
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
xor     edx, edx
mov     dl, [ecx+0Bh]
sar     edx, 1
mov     eax, ecx
call    sub_462E4E
dec     byte ptr [ecx+0Bh]
xor     edx, edx
mov     dl, [ecx+0Bh]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
add     eax, eax
mov     edx, [ecx+42h]
sar     edx, 10h
imul    edx, eax
sar     edx, 0Ch
movsx   esi, word ptr [ebx]
add     edx, esi
mov     [ecx+14h], dx
mov     edx, [ecx+44h]
sar     edx, 10h
imul    edx, eax
sar     edx, 0Ch
mov     esi, [ebx]
sar     esi, 10h
add     edx, esi
mov     [ecx+16h], dx
mov     edx, [ecx+46h]
sar     edx, 10h
imul    eax, edx
sar     eax, 0Ch
mov     edx, [ebx+2]
sar     edx, 10h
add     eax, edx
mov     [ecx+18h], ax
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_462D60
inc     byte ptr [ecx+8]

loc_462D60:
xor     eax, eax
mov     al, [ecx+0Bh]
mov     [ebx+14h], eax
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
jmp     loc_462B25
sub_462CD1 endp




sub_462D7B proc near
mov     byte ptr [eax+0Ch], 1
call    sub_4DE2F6
mov     eax, 12h
jmp     sub_4D8E2B
sub_462D7B endp




sub_462D8E proc near
push    edx
lea     edx, [eax+348h]
test    byte ptr [edx+0Bh], 0FFh
jz      short loc_462DA2

loc_462D9B:
mov     eax, 1
pop     edx
retn

loc_462DA2:
call    sub_42CE47
test    eax, eax
jnz     short loc_462D9B
pop     edx
retn
sub_462D8E endp




sub_462DAD proc near
push    ebx
push    ecx
push    edx
push    esi
lea     esi, [eax+348h]
push    0
push    0
push    64000010h
lea     edx, [eax+350h]
push    edx
xor     edx, edx
mov     dl, [eax+1]
push    edx
add     eax, 1B0h
mov     ecx, 0A000h
xor     ebx, ebx
mov     edx, 20h ; ' '
call    sub_4E01FC
mov     dword ptr [esi+8], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_462DAD endp




sub_462DEF proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 4
mov     ecx, eax
mov     [esp+14h+var_14], edx
lea     edx, [eax+348h]
call    sub_4DE043
test    eax, eax
jz      short loc_462E46
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 16h
mov     bl, byte ptr [esp+14h+var_14]
mov     [eax+3], bl
mov     [eax+0C8h], ecx
lea     edi, [eax+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [eax+54h]
lea     esi, [ecx+54h]
movsd
movsd
mov     dword ptr [eax+0C4h], offset unk_808080
mov     cl, bl
mov     eax, 1
shl     eax, cl
or      [edx+10h], eax

loc_462E46:
add     esp, 4
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_462DEF endp




sub_462E4E proc near
push    ecx
mov     cl, dl
mov     edx, 1
shl     edx, cl
not     edx
and     [eax+358h], edx
pop     ecx
retn
sub_462E4E endp




sub_462E62 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
test    byte ptr [eax], 2
jz      short loc_462E80
xor     ecx, ecx
mov     ebx, 100h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B

loc_462E80:
xor     edx, edx
mov     dl, [esi+8]
mov     eax, esi
call    ds:funcs_462E87[edx*4]
mov     dl, [esi+0Eh]
inc     dl
mov     [esi+0Eh], dl
cmp     dl, 3
jl      short loc_462EB9
mov     byte ptr [esi+0Eh], 0
mov     bl, [esi+0FCh]
inc     bl
mov     [esi+0FCh], bl
cmp     bl, 4
jbe     short loc_462EB9
mov     byte ptr [esi+0FCh], 1

loc_462EB9:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_462E62 endp




sub_462EBE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
cmp     byte ptr [ecx+0Ch], 0FFh
jz      short loc_462F3B
inc     byte ptr [ecx+8]
jmp     short loc_462F46

loc_462F3B:
mov     dword ptr [ecx+8], 0
mov     byte ptr [ecx+8], 6

loc_462F46:
mov     dword ptr [ecx+0Ch], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_462EBE endp




sub_462F51 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
call    sub_4DEADD
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 61h ; 'a'
mov     eax, esi
call    sub_4DD43B
mov     al, [esi+0Fh]
mov     ah, al
inc     ah
mov     [esi+0Fh], ah
cmp     al, 2Dh ; '-'
jnz     short loc_462F7D
inc     byte ptr [esi+8]

loc_462F7D:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_462F51 endp



; Attributes: thunk

sub_462F82 proc near
jmp     sub_4DEADD
sub_462F82 endp




sub_462F87 proc near
push    ecx
push    edx
mov     ecx, eax
sub     dword ptr [eax+20h], 400000h
lea     edx, [eax+14h]
add     eax, 1Ch

loc_462F98:
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
retn
sub_462F87 endp




sub_462FA7 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     eax, ds:dword_560C00
lea     edi, [ecx+14h]
lea     esi, [eax+14h]
movsd
movsd
mov     edx, [eax+1Ch]
mov     [ecx+1Ch], edx
mov     edx, [eax+20h]
add     edx, 2600000h
mov     [ecx+20h], edx
mov     eax, [eax+24h]
mov     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_462FA7 endp




sub_462FE9 proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, ds:dword_560C00
mov     edx, [eax+1Ch]
mov     [ecx+1Ch], edx
mov     eax, [eax+24h]
mov     [ecx+24h], eax
mov     ah, [ecx+0Fh]
xor     ah, 1
mov     [ecx+0Fh], ah
test    ah, 1
jz      short loc_463015
sub     dword ptr [ecx+1Ch], 80000h
jmp     short loc_46301A

loc_463015:
add     word ptr [ecx+1Eh], 8

loc_46301A:
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
jmp     loc_462F98
sub_462FE9 endp




sub_463025 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_463039
jbe     short loc_463060
jmp     loc_4630E2

loc_463039:
test    al, al
jnz     loc_4630E2
inc     al
mov     [esi+9], al
mov     byte ptr [esi+0Ah], 1Eh
mov     byte ptr [esi+0Bh], 3
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0FFC0h
mov     word ptr [esi+4Eh], 2

loc_463060:
mov     ax, [esi+46h]
shl     eax, 4
movsx   ebx, ax
mov     ax, [esi+44h]
shl     eax, 4
movsx   edx, ax
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     eax, esi
call    sub_42DE56
test    ah, 10h
jz      short loc_4630BB
lea     edx, [esi+14h]
mov     eax, 155h
call    sub_4D8BC3
mov     word ptr [esi+46h], 0FFC0h
mov     bx, [esi+4Eh]
add     ebx, ebx
mov     [esi+4Eh], bx
mov     ah, [esi+0Bh]
dec     ah
mov     [esi+0Bh], ah
jnz     short loc_4630BB
inc     byte ptr [esi+9]

loc_4630BB:
mov     bl, [esi+0Ah]
test    bl, bl
jnz     short loc_4630DB
mov     eax, 640h
call    sub_47E8B8
mov     eax, 51h ; 'Q'
call    sub_47E8B8
inc     byte ptr [esi+0Ah]
jmp     short loc_4630E2

loc_4630DB:
mov     bh, bl
dec     bh
mov     [esi+0Ah], bh

loc_4630E2:
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_463025 endp




sub_4630EE proc near
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
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
movzx   esi, byte ptr [eax+3]
mov     ebx, ecx
mov     edx, offset dword_560BDC
call    ds:funcs_46312D[esi*4]
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+0ADh]
jz      short loc_463156
movsx   ebx, word ptr [ecx]
xor     edx, edx
mov     dl, [ebp+0ACh]
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_46315D

loc_463156:
mov     eax, ebp
call    sub_4DEADD

loc_46315D:
test    byte ptr [ebp+0], 2
jz      short loc_46317D
xor     ecx, ecx
mov     cl, [ebp+3]
mov     edx, ds:dword_516BC6[ecx*4]
xor     ecx, ecx
mov     ebx, 200h
mov     eax, ebp
call    sub_4ED88B

loc_46317D:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4630EE endp




sub_463184 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     eax, eax
mov     al, [ecx+3]
mov     al, ds:byte_516BA8[eax*4]
mov     [ecx+2], al
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 30h ; '0'
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
xor     eax, eax
mov     al, [ecx+3]
mov     al, ds:byte_516BBC[eax*2]
mov     [ecx+0ACh], al
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     ecx
pop     ebx
retn
sub_463184 endp




sub_4631F9 proc near
push    ecx
mov     ecx, ebx
mov     bl, [eax+8]
cmp     bl, 1
jb      short loc_463208
jbe     short loc_463215
pop     ecx
retn

loc_463208:
test    bl, bl
jnz     short loc_46324C
mov     edx, ecx
call    sub_463184
pop     ecx
retn

loc_463215:
cmp     byte ptr [edx+9], 11h
jnz     short loc_46324C
cmp     dword ptr [edx+10h], 1
jnz     short loc_46324C
cmp     byte ptr [eax+3], 0
jnz     short loc_463243
mov     word ptr [eax+56h], 400h
sub     word ptr [eax+14h], 28h ; '('
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
inc     byte ptr [eax+9]
pop     ecx
retn

loc_463243:
mov     word ptr [eax+56h], 800h
inc     byte ptr [eax+9]

loc_46324C:
pop     ecx
retn
sub_4631F9 endp

jpt_46327F dd offset loc_463286 ; jump table for switch statement
dd offset loc_4632A5
dd offset loc_4632BE
dd offset loc_4632D1
dd offset loc_4632E5
dd offset loc_4632FF
dd offset loc_463319



sub_46326A proc near
push    ecx
push    esi
mov     ecx, eax
mov     eax, ebx
mov     bl, [ecx+8]
cmp     bl, 6           ; switch 7 cases
ja      def_46327F      ; jumptable 0046327F default case
movzx   esi, bl
jmp     jpt_46327F[esi*4] ; switch jump

loc_463286:             ; jumptable 0046327F case 0
mov     edx, eax
mov     eax, ecx
call    sub_463184
mov     byte ptr [ecx+0FCh], 0Ch
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Eh], 1Eh
mov     byte ptr [ecx+0Fh], 0

def_46327F:             ; jumptable 0046327F default case
pop     esi

def_46334D:             ; jumptable 0046334D default case, case 4
pop     ecx             ; jumptable 004633FD default case, case 5
retn

loc_4632A5:             ; jumptable 0046327F case 1
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [edx+9], 5

loc_4632B0:             ; jumptable 0046327F default case
jnz     short def_46327F
cmp     dword ptr [edx+10h], 1

loc_4632B6:             ; jumptable 0046327F default case
jnz     short def_46327F

loc_4632B8:
inc     byte ptr [ecx+8]
pop     esi
pop     ecx
retn

loc_4632BE:             ; jumptable 0046327F case 2
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [edx+9], 5
jnz     short def_46327F ; jumptable 0046327F default case
cmp     dword ptr [edx+10h], 0Ah
jmp     short loc_4632B6

loc_4632D1:             ; jumptable 0046327F case 3
cmp     byte ptr [edx+9], 6
jnz     short def_46327F ; jumptable 0046327F default case
cmp     dword ptr [edx+10h], 1
jnz     short def_46327F ; jumptable 0046327F default case
inc     bl
mov     [ecx+8], bl
pop     esi
pop     ecx
retn

loc_4632E5:             ; jumptable 0046327F case 4
cmp     byte ptr [edx+9], 10h
jnz     short def_46327F ; jumptable 0046327F default case
cmp     dword ptr [edx+10h], 1
jnz     short def_46327F ; jumptable 0046327F default case
mov     byte ptr [ecx+0ACh], 19h
mov     word ptr [eax], 0
jmp     short loc_4632B8

loc_4632FF:             ; jumptable 0046327F case 5
mov     byte ptr [ecx+0ADh], 0FFh
mov     eax, ecx
call    sub_463497
cmp     byte ptr [edx+9], 10h
jnz     short def_46327F ; jumptable 0046327F default case
cmp     dword ptr [edx+10h], 1Eh
jmp     short loc_4632B6

loc_463319:             ; jumptable 0046327F case 6
mov     eax, ecx
call    sub_463497
cmp     byte ptr [edx+9], 11h
jmp     short loc_4632B0
sub_46326A endp

jpt_46334D dd offset loc_463354 ; jump table for switch statement
dd offset loc_46335D
dd offset loc_46337D
dd offset loc_4633A9
dd offset def_46334D



sub_46333A proc near
push    ecx
mov     cl, [eax+8]
cmp     cl, 4           ; switch 5 cases
ja      def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
and     ecx, 0FFh
jmp     jpt_46334D[ecx*4] ; switch jump

loc_463354:             ; jumptable 0046334D case 0
mov     edx, ebx
call    sub_463184
pop     ecx
retn

loc_46335D:             ; jumptable 0046334D case 1
mov     byte ptr [eax+0ADh], 0FFh
cmp     byte ptr [edx+9], 6
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 5
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
inc     byte ptr [eax+8]
pop     ecx
retn

loc_46337D:             ; jumptable 0046334D case 2
cmp     byte ptr [edx+9], 7
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 1
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
mov     byte ptr [eax+0ACh], 14h
mov     byte ptr [eax+0ADh], 0FFh
mov     word ptr [ebx], 0
inc     byte ptr [eax+8]
pop     ecx
retn

loc_4633A9:             ; jumptable 0046334D case 3
mov     byte ptr [eax+0ADh], 0FFh
cmp     byte ptr [edx+9], 13h
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 5
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
mov     byte ptr [eax+0FCh], 0Fh
inc     byte ptr [eax+8]
pop     ecx
retn
sub_46333A endp

db 8Bh, 0C0h
jpt_4633FD dd offset loc_463404 ; jump table for switch statement
dd offset loc_46340D
dd offset loc_463430
dd offset loc_463466
dd offset loc_463479
dd offset def_46334D



sub_4633EA proc near
push    ecx
mov     cl, [eax+8]
cmp     cl, 5           ; switch 6 cases
ja      def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
and     ecx, 0FFh
jmp     jpt_4633FD[ecx*4] ; switch jump

loc_463404:             ; jumptable 004633FD case 0
mov     edx, ebx
call    sub_463184
pop     ecx
retn

loc_46340D:             ; jumptable 004633FD case 1
cmp     byte ptr [edx+9], 1Bh
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 96h

loc_46341E:             ; jumptable 0046334D default case, case 4
jnz     def_46334D      ; jumptable 004633FD default case, case 5
mov     byte ptr [eax+0ACh], 8
inc     byte ptr [eax+8]
pop     ecx
retn

loc_463430:             ; jumptable 004633FD case 2
cmp     byte ptr [edx+9], 1Bh
jnz     short loc_463446
cmp     dword ptr [edx+10h], 0E6h
jnz     short loc_463446
mov     byte ptr [eax+0ACh], 13h

loc_463446:
cmp     byte ptr [edx+9], 1Dh
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 1
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
mov     byte ptr [eax+0ACh], 0
inc     byte ptr [eax+8]
pop     ecx
retn

loc_463466:             ; jumptable 004633FD case 3
cmp     byte ptr [edx+9], 1Dh
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 0CDh
jmp     short loc_46341E

loc_463479:             ; jumptable 004633FD case 4
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
mov     byte ptr [eax+0ADh], 0FFh
inc     byte ptr [eax+8]
pop     ecx
retn
sub_4633EA endp




sub_463497 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Dh], 0
jle     short loc_4634B8
mov     ah, [edx+0Dh]
dec     ah
mov     [edx+0Dh], ah
jnz     short loc_4634F3
call    rand_
and     al, 1Fh
add     al, 1Eh
mov     [edx+0Eh], al
pop     edx
retn

loc_4634B8:
cmp     byte ptr [edx+0Eh], 0
jle     short loc_4634E7
test    byte ptr [edx+0Fh], 3
jnz     short loc_4634DF
cmp     byte ptr [edx+0FCh], 0Bh
jnz     short loc_4634D4
mov     eax, 1
jmp     short loc_4634D9

loc_4634D4:
mov     eax, 0Bh

loc_4634D9:
mov     [edx+0FCh], al

loc_4634DF:
dec     byte ptr [edx+0Eh]
inc     byte ptr [edx+0Fh]
pop     edx
retn

loc_4634E7:
call    rand_
and     al, 0Fh
add     al, 0Fh
mov     [edx+0Dh], al

loc_4634F3:
pop     edx
retn
sub_463497 endp




sub_4634F5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4634FB[edx*4]
pop     edx
retn
sub_4634F5 endp




sub_463504 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     word ptr [ecx], 0
mov     dword ptr [ecx+4], 0
mov     edi, offset unk_55A0D0
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
mov     edx, offset unk_55A0D0
call    sub_4DD4C5
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     word ptr [ebp+6Eh], 0
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], 0
mov     dword ptr [ebp+10h], 0
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_4635D9
pop     ebp

loc_4635D3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_463504 endp




sub_4635D9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edx, [eax+408h]
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
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
call    rand_
mov     [edx+2], ax
xor     ebx, ebx
mov     bl, [ecx+9]
mov     eax, ecx
call    ds:funcs_46361C[ebx*4]
test    byte ptr [edx], 1
jz      short loc_463635
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
and     byte ptr [edx], 0FEh

loc_463635:
mov     al, [ecx+0ADh]
mov     bh, [ecx+0ACh]
cmp     al, bh
jz      short loc_463657
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     loc_4635D3

loc_463657:
mov     eax, ecx
call    sub_4DEADD
jmp     loc_4635D3
sub_4635D9 endp



; Attributes: thunk

sub_463663 proc near
jmp     sub_4DE2F6
sub_463663 endp




sub_463668 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_46367C
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_46367C:
pop     edx
retn
sub_463668 endp




sub_46367E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+3D8h]
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
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
mov     word ptr [ecx+15Eh], 4210h
call    rand_
mov     [ebp+2], ax
movzx   esi, byte ptr [ecx+8]
mov     edx, ebp
mov     eax, ecx
call    ds:funcs_4636CC[esi*4]
test    byte ptr [ebp+1], 2
jnz     short loc_4636E4
mov     dl, [ecx+0ACh]
cmp     dl, 1
jnz     short loc_46370C

loc_4636E4:
mov     al, [ecx+0ADh]
mov     bl, [ecx+0ACh]
cmp     al, bl
jz      short loc_463703
xor     edx, edx
mov     dl, bl
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_463754

loc_463703:
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_463754

loc_46370C:
mov     esi, offset word_560E0C
cmp     dl, [ecx+0ADh]
jz      short loc_46372C
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
jmp     short loc_463733

loc_46372C:
mov     eax, ecx
call    sub_4DEB53

loc_463733:
mov     ax, [ecx+54h]
mov     [esi], ax
test    ax, ax
jz      short loc_463743
xor     eax, eax
jmp     short loc_463749

loc_463743:
mov     eax, [ecx+56h]
sar     eax, 10h

loc_463749:
mov     [esi+4], ax
mov     eax, ecx
call    sub_4DF795

loc_463754:
mov     dword ptr [ebp+1Ch], 0
mov     eax, ecx
call    sub_42DE56
mov     [ebp+18h], eax
test    byte ptr [ebp+19h], 10h
jnz     short loc_463784
mov     edx, [ecx+14h]
sar     edx, 10h
mov     eax, ecx
call    sub_42C592
cwde
cmp     edx, eax
jnz     short loc_463784
mov     dword ptr [ebp+1Ch], 1

loc_463784:
test    byte ptr [ebp+1], 2
jz      short loc_463791
mov     esi, 80h
jmp     short loc_463793

loc_463791:
xor     esi, esi

loc_463793:
push    esi
push    offset unk_800000
xor     eax, eax
mov     ax, [ebp+10h]
or      eax, 5880000h
push    eax
lea     eax, [ebp+20h]
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
lea     eax, [ecx+190h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0C0h
call    sub_4E01FC
mov     dword ptr [ebp+20h], 0
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46367E endp




sub_4637D4 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, [eax+9]
sar     esi, 18h
shl     esi, 3
add     esi, offset unk_516C08
mov     word ptr [edx], 0Ah
mov     word ptr [edx+4], 0
mov     word ptr [edx+6], 0
mov     word ptr [edx+8], 0
mov     word ptr [edx+0Ch], 0FFFFh
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, eax
shl     ebx, 2
mov     eax, ds:dword_55A10C
mov     eax, [ebx+eax]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [edx+10h], ax
mov     dword ptr [edx+20h], 0
mov     dword ptr [edx+24h], 0
mov     word ptr [edx+14h], 8
mov     ax, [edx+14h]
mov     [edx+12h], ax
mov     dword ptr [edx+18h], 0
mov     dword ptr [edx+1Ch], 0
lea     eax, [edx+28h]
xor     ebx, ebx
mov     edx, 0Bh
call    sub_4E19B9
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     ax, [esi+6]
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
mov     ax, [esi]
mov     [ecx+14h], ax
mov     ax, [esi+2]
mov     [ecx+16h], ax
mov     ax, [esi+4]
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
mov     dword ptr [ecx+64h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
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
mov     dword ptr [ecx+78h], offset unk_516C18
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     ecx
pop     ebx
retn
sub_4637D4 endp

align 2
jpt_463A08 dd offset loc_463A0F ; jump table for switch statement
dd offset loc_463A21
dd offset loc_463A2D
dd offset loc_463A35



sub_463936 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
test    byte ptr [edx], 2
jz      short loc_463949
mov     eax, ecx
call    sub_463A4A

loc_463949:
mov     edx, ebx
mov     eax, ecx
call    sub_463AC0
test    byte ptr [ebx+1], 2
jnz     short loc_463973
mov     edx, ebx
mov     eax, ecx
call    sub_463C2D
mov     edx, ebx
mov     eax, ecx
call    sub_463E94
mov     edx, ebx
mov     eax, ecx
call    sub_463F63

loc_463973:
mov     al, [ecx+0ACh]
cmp     al, 1
jb      short loc_463988
jbe     short loc_4639A7
cmp     al, 2
jz      short loc_4639D3
jmp     loc_4639E8

loc_463988:
test    al, al
jnz     short loc_4639E8
test    byte ptr [ebx], 4
jz      short loc_463998
mov     byte ptr [ecx+0ACh], 1

loc_463998:
test    byte ptr [ebx+1], 4
jz      short loc_4639E8
mov     byte ptr [ecx+0ACh], 2
jmp     short loc_4639E8

loc_4639A7:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_463998
test    byte ptr [ebx], 4
jz      short loc_4639CA
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
jmp     short loc_463998

loc_4639CA:
mov     byte ptr [ecx+0ACh], 0
jmp     short loc_463998

loc_4639D3:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4639E8
mov     byte ptr [ecx+0ACh], 3

loc_4639E8:
movzx   esi, byte ptr [ecx+9]
mov     edx, ebx
mov     eax, ecx
call    ds:funcs_4639F0[esi*4]
test    byte ptr [ebx], 1
jz      short loc_463A46
mov     al, [ecx+9]
cmp     al, 3           ; switch 4 cases
ja      short def_463A08 ; jumptable 00463A08 default case
and     eax, 0FFh
jmp     jpt_463A08[eax*4] ; switch jump

loc_463A0F:             ; jumptable 00463A08 case 0
test    byte ptr [ebx+1], 2
jz      short loc_463A1B

loc_463A15:
mov     byte ptr [ecx+9], 3
jmp     short def_463A08 ; jumptable 00463A08 default case

loc_463A1B:
mov     byte ptr [ecx+9], 1
jmp     short def_463A08 ; jumptable 00463A08 default case

loc_463A21:             ; jumptable 00463A08 case 1
test    byte ptr [ebx+1], 2
jnz     short loc_463A15
mov     byte ptr [ecx+9], 2
jmp     short def_463A08 ; jumptable 00463A08 default case

loc_463A2D:             ; jumptable 00463A08 case 2
test    byte ptr [ebx+1], 2
jnz     short loc_463A15
jmp     short loc_463A1B

loc_463A35:             ; jumptable 00463A08 case 3
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0

def_463A08:             ; jumptable 00463A08 default case
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ebx], 0FEh

loc_463A46:
pop     esi
pop     ecx
pop     ebx
retn
sub_463936 endp




sub_463A4A proc near
push    ebx
push    ecx
push    edi
mov     ebx, eax
mov     ecx, edx
mov     eax, [edx+20h]
and     eax, 0FFFFFFh
jz      short loc_463AB9
test    byte ptr [edx+23h], 18h
jz      short loc_463AA5
mov     dx, [ebx+6Eh]
mov     [ebx+0B2h], dx
sub     edx, eax
mov     [ebx+6Eh], dx
test    dx, dx
jg      short loc_463A8D
mov     di, [ecx]
and     edi, 0FFFFFD1Ch
mov     [ecx], di
mov     eax, edi
or      eax, 201h
mov     [ecx], ax

loc_463A8D:
lea     edx, [ebx+14h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [ebx+15Eh], 7FFFh
jmp     short loc_463AB2

loc_463AA5:
lea     edx, [ebx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_463AB2:
or      byte ptr [ecx], 4
pop     edi
pop     ecx
pop     ebx
retn

loc_463AB9:
and     byte ptr [edx], 0FBh
pop     edi
pop     ecx
pop     ebx
retn
sub_463A4A endp




sub_463AC0 proc near
push    ebx
push    ecx
push    esi
mov     ebx, eax
mov     ecx, edx
test    byte ptr [edx], 10h
jz      short loc_463ADE
cmp     word ptr [edx+6], 0
jle     short loc_463ADB
dec     word ptr [ecx+6]
pop     esi
pop     ecx
pop     ebx
retn

loc_463ADB:
and     byte ptr [ecx], 0EFh

loc_463ADE:
test    byte ptr [ecx], 8
jz      short loc_463B1F
mov     edx, [ebx+54h]
sar     edx, 10h
add     edx, 200h
and     edx, 0FFFh
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ah
sbb     eax, edx
sar     eax, 0Ah
cwde
mov     edx, [ebx+16h]
sar     edx, 10h
mov     esi, [ebx+12h]
sar     esi, 10h
mov     ebx, eax
mov     eax, esi
call    sub_463B56
test    eax, eax
jz      short loc_463B1F
and     byte ptr [ecx], 0F7h

loc_463B1F:
pop     esi
pop     ecx
pop     ebx
retn
sub_463AC0 endp

db 8Dh, 40h, 0
jpt_463B6C dd offset loc_463B73 ; jump table for switch statement
dd offset loc_463B89
dd offset loc_463BA2
dd offset loc_463B95
jpt_463BD1 dd offset loc_463BD8 ; jump table for switch statement
dd offset loc_463BAE
dd offset loc_463BDE
dd offset loc_463BDE
jpt_463BF1 dd offset loc_463BF8 ; jump table for switch statement
dd offset loc_463BFE
dd offset loc_463C15
dd offset loc_463C21



sub_463B56 proc near
push    ecx
cmp     ax, 200h
jge     short loc_463BBB
cmp     bx, 3           ; switch 4 cases
ja      def_463B6C      ; jumptable 00463B6C default case
; jumptable 00463BD1 default case
; jumptable 00463BF1 default case
xor     ecx, ecx
mov     cx, bx
jmp     jpt_463B6C[ecx*4] ; switch jump

loc_463B73:             ; jumptable 00463B6C case 0
cwde
cmp     eax, 0FFFFF7B8h
jl      loc_463C0E

loc_463B7F:
cmp     dx, 1000h
jmp     loc_463C0C

loc_463B89:             ; jumptable 00463B6C case 1
cwde
cmp     eax, 0FFFFF7B8h
jl      loc_463C0E

loc_463B95:             ; jumptable 00463B6C case 3
cmp     dx, 20B4h
jg      loc_463C0E
jmp     short loc_463B7F

loc_463BA2:             ; jumptable 00463B6C case 2
cwde
cmp     eax, 0FFFFF7B8h
jl      loc_463C0E

loc_463BAE:             ; jumptable 00463BD1 case 1
cmp     dx, 20B4h

loc_463BB3:             ; jumptable 00463B6C default case
jle     def_463B6C      ; jumptable 00463BD1 default case
; jumptable 00463BF1 default case
jmp     short loc_463C0E

loc_463BBB:
cmp     dx, 1000h
jle     short loc_463BE6
cmp     bx, 3           ; switch 4 cases
ja      def_463B6C      ; jumptable 00463B6C default case
; jumptable 00463BD1 default case
; jumptable 00463BF1 default case
xor     ecx, ecx
mov     cx, bx
jmp     jpt_463BD1[ecx*4] ; switch jump

loc_463BD8:             ; jumptable 00463BD1 case 0
cmp     ax, 1A00h
jmp     short loc_463BB3

loc_463BDE:             ; jumptable 00463BD1 cases 2,3
cmp     ax, 1A00h
jg      short loc_463C0E
jmp     short loc_463BAE ; jumptable 00463BD1 case 1

loc_463BE6:             ; switch 4 cases
cmp     bx, 3
ja      short def_463B6C ; jumptable 00463B6C default case
; jumptable 00463BD1 default case
; jumptable 00463BF1 default case
xor     ecx, ecx
mov     cx, bx
jmp     jpt_463BF1[ecx*4] ; switch jump

loc_463BF8:             ; jumptable 00463BF1 case 0
cmp     ax, 1A00h
jg      short loc_463C0E

loc_463BFE:             ; jumptable 00463BF1 case 1
cmp     ax, 200h
jl      short loc_463C0E

loc_463C04:
movsx   eax, dx
cmp     eax, 0FFFFFE00h

loc_463C0C:             ; jumptable 00463B6C default case
jge     short def_463B6C ; jumptable 00463BD1 default case
; jumptable 00463BF1 default case

loc_463C0E:
mov     eax, 1
pop     ecx
retn

loc_463C15:             ; jumptable 00463BF1 case 2
cmp     ax, 1A00h
jg      short loc_463C0E
cmp     ax, 200h
jmp     short loc_463C0C

loc_463C21:             ; jumptable 00463BF1 case 3
cmp     ax, 1A00h
jg      short loc_463C0E
jmp     short loc_463C04

def_463B6C:             ; jumptable 00463B6C default case
xor     eax, eax        ; jumptable 00463BD1 default case
; jumptable 00463BF1 default case
pop     ecx
retn
sub_463B56 endp




sub_463C2D proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
cmp     byte ptr [eax+0ACh], 1
jnz     short loc_463C45
mov     dl, [edx]
and     dl, 7Fh
mov     [ecx], dl

loc_463C45:
test    byte ptr [ecx], 80h
jz      short loc_463C89
test    byte ptr [ecx+1], 1
jz      short loc_463C65
test    byte ptr [ecx+8], 3
jnz     short loc_463C5F
mov     edx, ecx
mov     eax, ebx
call    sub_463CE2

loc_463C5F:
inc     word ptr [ecx+8]
jmp     short loc_463CA5

loc_463C65:
mov     di, [ebx+54h]
cmp     di, 200h
jge     short loc_463C7D
mov     eax, edi
add     eax, 20h ; ' '
mov     [ebx+54h], ax
jmp     short loc_463CA5

loc_463C7D:
mov     word ptr [ebx+54h], 200h
or      byte ptr [ecx+1], 1
jmp     short loc_463CA5

loc_463C89:
mov     word ptr [ecx+8], 0
and     byte ptr [ecx+1], 0FEh
mov     dx, [ebx+54h]
test    dx, dx
jle     short loc_463CA5
mov     esi, edx
sub     esi, 20h ; ' '
mov     [ebx+54h], si

loc_463CA5:
cmp     dword ptr [ebx+80h], 90000h
jnb     short loc_463CCD
mov     al, [ecx+1]
test    al, 8
jnz     short loc_463CCD
mov     ah, al
or      ah, 8
mov     [ecx+1], ah
lea     edx, [ebx+14h]
mov     eax, 150h
call    sub_4D8BC3

loc_463CCD:
cmp     dword ptr [ebx+80h], 240000h
jbe     short loc_463CDD
and     byte ptr [ecx+1], 0F7h

loc_463CDD:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_463C2D endp




sub_463CE2 proc near

var_58= dword ptr -58h
var_54= byte ptr -54h
var_44= byte ptr -44h
var_34= byte ptr -34h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 40h
push    eax
xor     edi, edi
mov     eax, [eax+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 600h
lea     esi, [esp+58h+var_54]
call    sub_4DD510
lea     edx, [esp+58h+var_24]
lea     eax, [esp+58h+var_54]
call    sub_4DD57B
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_18], eax
test    eax, eax
jz      loc_463DBF
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 24h ; '$'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 480h
mov     ebx, 1900h
mov     edx, 0C80h
lea     esi, [esp+58h+var_44]
call    sub_4DD510
lea     edi, [ebp+1Ch]
lea     esi, [esp+58h+var_44]
movsd
movsd
movsd
movsd
mov     eax, [esp+58h+var_58]
mov     eax, [eax+1Ch]
add     [ebp+1Ch], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+20h]
add     [ebp+20h], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+24h]
add     [ebp+24h], eax
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 6000h
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
mov     edi, 1

loc_463DBF:
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_1C], eax
test    eax, eax
jz      loc_463E69
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 24h ; '$'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 0FFFFFB80h
mov     ebx, 1900h
mov     edx, 0C80h
lea     esi, [esp+58h+var_34]
call    sub_4DD510
lea     edi, [ebp+1Ch]
lea     esi, [esp+58h+var_34]
movsd
movsd
movsd
movsd
mov     eax, [esp+58h+var_58]
mov     eax, [eax+1Ch]
add     [ebp+1Ch], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+20h]
add     [ebp+20h], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+24h]
add     [ebp+24h], eax
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 6000h
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
jmp     short loc_463E6D

loc_463E69:
test    edi, edi
jz      short loc_463E8B

loc_463E6D:
mov     ecx, [esp+58h+var_18]
test    ecx, ecx
jz      short loc_463E7A
lea     edx, [ecx+14h]
jmp     short loc_463E81

loc_463E7A:
mov     edx, [esp+58h+var_1C]
add     edx, 14h

loc_463E81:
mov     eax, 0D0h
call    sub_4D8BC3

loc_463E8B:
add     esp, 44h

loc_463E8E:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_463CE2 endp




sub_463E94 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ebx, edx
mov     ah, [edx]
test    ah, 40h
jz      short loc_463ECC
mov     dx, [ecx+56h]
add     edx, 20h ; ' '
and     dh, 0Fh
mov     [ecx+56h], dx
mov     edx, [ecx+56h]
sar     edx, 10h
cmp     edx, 0FFFFFF80h
jle     short loc_463EC1
sub     word ptr [ecx+58h], 8

loc_463EC1:
mov     word ptr [ebx+0Ch], 0FFFFh
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_463ECC:
