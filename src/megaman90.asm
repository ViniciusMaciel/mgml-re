call    sub_4DFC52
pop     edx
pop     ecx
pop     ebx
retn
sub_4DEB53 endp

db 8Bh, 0C0h
jpt_4DED48 dd offset def_4DED48 ; jump table for switch statement
dd offset loc_4DED5B
dd offset loc_4DED66
dd offset loc_4DED71



sub_4DEBDA proc near

var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 24h
mov     ebp, eax
call    sub_4DF74A
mov     edx, [ebp+12h]
sar     edx, 10h
mov     cl, ds:byte_77EABF ; int
shl     edx, cl
mov     ds:dword_564A90, edx
mov     edx, [ebp+14h]
sar     edx, 10h
shl     edx, cl
mov     ds:dword_564A94, edx
mov     edx, [ebp+16h]
sar     edx, 10h
shl     edx, cl
mov     ds:dword_564A98, edx
xor     edx, edx
mov     [esp+3Ch+var_2C], dx
mov     ax, [ebp+56h]
mov     bx, [ebp+116h]
sub     eax, ebx
mov     [esp+3Ch+var_2A], ax
mov     [esp+3Ch+var_28], dx
mov     edx, offset unk_564A6C
lea     eax, [esp+3Ch+var_2C]
call    sub_4EF5F7
mov     ecx, 0Ch
lea     edi, [ebp+1A8h]
mov     esi, offset unk_564A6C
rep movsd
mov     edi, offset word_560E04
mov     eax, ds:dword_7441AC
mov     [esp+3Ch+var_1C], eax
mov     eax, offset unk_564A6C
call    sub_4DF755
lea     ebx, [edi+8]
mov     ecx, edi
xor     edx, edx
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 40h ; '@'
lea     ebx, [edi+48h]
mov     edx, 8
mov     eax, ebp
call    sub_4DF5EE
mov     eax, offset unk_564A6C
call    sub_4DF755
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 48h ; 'H'
lea     ebx, [edi+50h]
mov     edx, 9
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 50h ; 'P'
lea     ebx, [edi+58h]
mov     edx, 0Ah
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 58h ; 'X'
lea     ebx, [edi+60h]
mov     edx, 0Bh
mov     eax, ebp
call    sub_4DF5EE
mov     eax, offset unk_564A6C
call    sub_4DF778
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 60h ; '`'
lea     ebx, [edi+68h]
mov     edx, 0Ch
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 68h ; 'h'
lea     ebx, [edi+70h]
mov     edx, 0Dh
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 70h ; 'p'
lea     ebx, [edi+78h]
mov     edx, 0Eh
mov     eax, ebp
call    sub_4DF5EE
mov     eax, offset unk_564A6C
call    sub_4DF778
mov     ax, [ebp+106h]
cmp     ax, 3           ; switch 4 cases
ja      short def_4DED48 ; jumptable 004DED48 default case, case 0
and     eax, 0FFFFh
jmp     jpt_4DED48[eax*4] ; switch jump

def_4DED48:             ; jumptable 004DED48 default case, case 0
mov     esi, edi
mov     [esp+3Ch+var_24], edi

loc_4DED55:
mov     [esp+3Ch+var_20], edi
jmp     short loc_4DED7E

loc_4DED5B:             ; jumptable 004DED48 case 1
mov     esi, offset word_561604
mov     [esp+3Ch+var_24], esi
jmp     short loc_4DED55

loc_4DED66:             ; jumptable 004DED48 case 2
mov     esi, offset word_561604
mov     [esp+3Ch+var_24], edi
jmp     short loc_4DED7A

loc_4DED71:             ; jumptable 004DED48 case 3
mov     esi, offset word_561604
mov     [esp+3Ch+var_24], esi

loc_4DED7A:
mov     [esp+3Ch+var_20], esi

loc_4DED7E:
lea     ebx, [esi+8]
mov     ecx, edi
xor     edx, edx
mov     eax, ebp
call    sub_4DF5EE
mov     eax, offset unk_564A6C
call    sub_4DF755
lea     edi, [esp+3Ch+var_2C]
lea     esi, [esi+10h]
movsd
movsd
imul    ax, [ebp+0B4h], 5
add     [esp+3Ch+var_2A], ax
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 8
lea     ebx, [esp+3Ch+var_2C]
mov     edx, 1
mov     eax, ebp
call    sub_4DF5EE
xor     eax, eax
mov     [esp+3Ch+var_2C], ax
mov     [esp+3Ch+var_2A], 0FF6Ah
mov     [esp+3Ch+var_28], ax
mov     ebx, esp
lea     edx, [esp+3Ch+var_2C]
mov     eax, offset unk_564A6C
call    sub_4EF1FB
mov     ax, word ptr ds:dword_564A90
mov     ecx, [esp+3Ch+var_3C]
add     eax, ecx
mov     [ebp+520h], ax
mov     ax, word ptr ds:dword_564A94
mov     esi, [esp+3Ch+var_38]
add     eax, esi
mov     [ebp+522h], ax
mov     ax, word ptr ds:dword_564A98
mov     edi, [esp+3Ch+var_34]
add     eax, edi
mov     [ebp+524h], ax
mov     eax, offset unk_564A6C
call    sub_4DF778
mov     eax, offset unk_564A6C
call    sub_4DF755
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 10h
mov     ebx, [esp+3Ch+var_24]
add     ebx, 18h
mov     edx, 2
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 18h
mov     ebx, [esp+3Ch+var_24]
add     ebx, 20h ; ' '
mov     edx, 3
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 20h ; ' '
mov     ebx, [esp+3Ch+var_24]
add     ebx, 28h ; '('
mov     edx, 4
mov     eax, ebp
call    sub_4DF5EE
mov     eax, offset unk_564A6C
call    sub_4DF778
mov     eax, offset unk_564A6C
call    sub_4DF755
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 28h ; '('
mov     ebx, [esp+3Ch+var_20]
add     ebx, 30h ; '0'
mov     edx, 5
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 30h ; '0'
mov     ebx, [esp+3Ch+var_20]
add     ebx, 38h ; '8'
mov     edx, 6
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 38h ; '8'
mov     ebx, [esp+3Ch+var_20]
add     ebx, 40h ; '@'
mov     edx, 7
mov     eax, ebp
call    sub_4DF5EE
mov     eax, offset unk_564A6C
call    sub_4DF778
add     esp, 24h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DEBDA endp

jpt_4DEF58 dd offset loc_4DEF5F ; jump table for switch statement
dd offset loc_4DEF5F
dd offset loc_4DEF5F
dd offset loc_4DEF5F
dd offset loc_4DEF66
dd offset loc_4DEF66
dd offset loc_4DEF7F
dd offset loc_4DEF7F
dd offset def_4DEF58
jpt_4DEFB7 dd offset loc_4DEFBE ; jump table for switch statement
dd offset loc_4DEFBE
dd offset loc_4DEFBE
dd offset loc_4DEFBE
dd offset loc_4DEFC5
dd offset loc_4DEFC5
dd offset loc_4DEFE0
dd offset loc_4DEFE0
dd offset def_4DEFB7



sub_4DEF3E proc near

var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     ecx, eax
mov     al, [eax+0ACh]
movsx   edx, al
sar     edx, 4
cmp     edx, 8          ; switch 9 cases
ja      short def_4DEF58 ; jumptable 004DEF58 default case, case 8
jmp     jpt_4DEF58[edx*4] ; switch jump

loc_4DEF5F:             ; jumptable 004DEF58 cases 0-3
mov     edx, offset unk_7441B0
jmp     short loc_4DEF9F

loc_4DEF66:             ; jumptable 004DEF58 cases 4,5
cmp     byte ptr [ecx+170h], 0
jz      short loc_4DEF76
mov     edx, offset unk_6F81AC
jmp     short loc_4DEF7B

loc_4DEF76:
mov     edx, offset unk_6F61AC

loc_4DEF7B:
sub     al, 40h ; '@'
jmp     short loc_4DEF9F

loc_4DEF7F:             ; jumptable 004DEF58 cases 6,7
cmp     byte ptr [ecx+171h], 0
jz      short loc_4DEF8F
mov     edx, offset unk_7057AC
jmp     short loc_4DEF94

loc_4DEF8F:
mov     edx, offset unk_7077AC

loc_4DEF94:
sub     al, 60h ; '`'
jmp     short loc_4DEF9F

def_4DEF58:             ; jumptable 004DEF58 default case, case 8
mov     edx, offset unk_7015AC
sub     al, 80h

loc_4DEF9F:
mov     ah, [ecx+104h]
mov     [esp+14h+var_14], ah
mov     esi, [esp-3]
sar     esi, 18h
sar     esi, 4
cmp     esi, 8          ; switch 9 cases
ja      short def_4DEFB7 ; jumptable 004DEFB7 default case, case 8
jmp     jpt_4DEFB7[esi*4] ; switch jump

loc_4DEFBE:             ; jumptable 004DEFB7 cases 0-3
mov     esi, offset unk_7441B0
jmp     short loc_4DF004

loc_4DEFC5:             ; jumptable 004DEFB7 cases 4,5
cmp     byte ptr [ecx+170h], 0
jz      short loc_4DEFD5
mov     esi, offset unk_6F81AC
jmp     short loc_4DEFDA

loc_4DEFD5:
mov     esi, offset unk_6F61AC

loc_4DEFDA:
sub     [esp+14h+var_14], 40h ; '@'
jmp     short loc_4DF004

loc_4DEFE0:             ; jumptable 004DEFB7 cases 6,7
cmp     byte ptr [ecx+171h], 0
jz      short loc_4DEFF0
mov     esi, offset unk_7057AC
jmp     short loc_4DEFF5

loc_4DEFF0:
mov     esi, offset unk_7077AC

loc_4DEFF5:
sub     [esp+14h+var_14], 60h ; '`'
jmp     short loc_4DF004

def_4DEFB7:             ; jumptable 004DEFB7 default case, case 8
mov     esi, offset unk_7015AC
sub     [esp+14h+var_14], 80h

loc_4DF004:
movsx   eax, al
shl     eax, 2
add     edx, eax
mov     eax, [ecx+98h]
xor     ebx, ebx
mov     bl, [eax]
mov     eax, [edx]
mov     eax, [eax+ebx*4]
mov     ebx, 12h
mov     edx, offset dword_561204
call    sub_4EECD4
mov     eax, [esp-3]
sar     eax, 18h
shl     eax, 2
add     esi, eax
mov     eax, [ecx+0FCh]
mov     al, [eax]
and     eax, 0FFh
mov     edx, [esi]
mov     eax, [edx+eax*4]
mov     ebx, 0Ch
mov     edx, offset dword_561A04
call    sub_4EECD4
mov     ax, word ptr ds:dword_561204
and     ah, 0Fh
mov     ds:word_560E04, ax
mov     eax, ds:dword_561204
and     eax, 0FFF000h
shr     eax, 0Ch
mov     edx, eax
mov     eax, offset word_560E04
add     eax, 2
mov     [eax], dx
mov     ecx, ds:dword_561208
and     ecx, 0Fh
shl     ecx, 8
mov     edx, ds:dword_561204
and     edx, 0FF000000h
shr     edx, 18h
or      edx, ecx
add     eax, 2
mov     [eax], dx
add     eax, 4
mov     edx, offset dword_561204
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF0h
shr     ecx, 4
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF0000h
shr     ecx, 10h
add     eax, 2
mov     [eax], cx
mov     esi, [edx+4]
and     esi, 0FFh
shl     esi, 4
mov     ecx, [edx]
and     ecx, 0F0000000h
shr     ecx, 1Ch
or      ecx, esi
add     eax, 2
mov     [eax], cx
add     eax, 2
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF00h
shr     ecx, 8
add     eax, 2
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF00000h
shr     ecx, 14h
add     eax, 2
mov     [eax], cx
add     edx, 4
mov     cx, [edx]
and     ch, 0Fh
add     eax, 2
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF000h
shr     ecx, 0Ch
add     eax, 4
mov     [eax], cx
mov     esi, [edx+4]
and     esi, 0Fh
shl     esi, 8
mov     ecx, [edx]
and     ecx, 0FF000000h
shr     ecx, 18h
or      esi, ecx
add     eax, 2
mov     [eax], si
add     eax, 2
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF0h
shr     ecx, 4
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF0000h
shr     ecx, 10h
add     eax, 4
mov     [eax], cx
add     eax, 2
mov     word ptr [eax], 0
add     eax, 2
mov     word ptr [eax], 0
add     eax, 4
mov     word ptr [eax], 0
add     eax, 2
mov     esi, [edx+4]
and     esi, 0FFh
shl     esi, 4
mov     ecx, [edx]
and     ecx, 0F0000000h
shr     ecx, 1Ch
or      ecx, esi
mov     [eax], cx
add     eax, 2
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF00h
shr     ecx, 8
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF00000h
shr     ecx, 14h
add     eax, 4
mov     [eax], cx
add     edx, 4
mov     cx, [edx]
and     ch, 0Fh
add     eax, 2
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF000h
shr     ecx, 0Ch
add     eax, 2
mov     [eax], cx
mov     esi, [edx+4]
and     esi, 0Fh
shl     esi, 8
mov     ecx, [edx]
and     ecx, 0FF000000h
shr     ecx, 18h
or      ecx, esi
add     eax, 4
mov     [eax], cx
add     eax, 2
mov     word ptr [eax], 0
add     edx, 4
add     eax, 2
mov     word ptr [eax], 0
add     eax, 4
mov     word ptr [eax], 0
mov     ecx, [edx]
and     ecx, 0FFF0h
shr     ecx, 4
add     eax, 2
mov     [eax], cx
add     eax, 2
mov     ecx, [edx]
and     ecx, 0FFF0000h
shr     ecx, 10h
mov     [eax], cx
mov     esi, [edx+4]
and     esi, 0FFh
shl     esi, 4
mov     ecx, [edx]
and     ecx, 0F0000000h
shr     ecx, 1Ch
or      ecx, esi
add     eax, 4
mov     [eax], cx
add     eax, 2
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF00h
shr     ecx, 8
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF00000h
shr     ecx, 14h
add     eax, 2
mov     [eax], cx
add     edx, 4
mov     cx, [edx]
and     ch, 0Fh
add     eax, 4
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF000h
shr     ecx, 0Ch
add     eax, 2
mov     [eax], cx
mov     esi, [edx+4]
and     esi, 0Fh
shl     esi, 8
mov     ecx, [edx]
and     ecx, 0FF000000h
shr     ecx, 18h
or      ecx, esi
add     eax, 2
mov     [eax], cx
add     eax, 4
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF0h
shr     ecx, 4
mov     [eax], cx
add     eax, 2
mov     word ptr [eax], 0
add     eax, 2
mov     word ptr [eax], 0
mov     ecx, [edx]
and     ecx, 0FFF0000h
shr     ecx, 10h
add     eax, 4
mov     [eax], cx
mov     esi, [edx+4]
and     esi, 0FFh
shl     esi, 4
mov     ecx, [edx]
and     ecx, 0F0000000h
shr     ecx, 1Ch
or      ecx, esi
add     eax, 2
mov     [eax], cx
add     eax, 2
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF00h
shr     ecx, 8
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF00000h
shr     ecx, 14h
add     eax, 4
mov     [eax], cx
add     edx, 4
mov     cx, [edx]
and     ch, 0Fh
add     eax, 2
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF000h
shr     ecx, 0Ch
add     eax, 2
mov     [eax], cx
mov     esi, [edx+4]
and     esi, 0Fh
shl     esi, 8
mov     ecx, [edx]
and     ecx, 0FF000000h
shr     ecx, 18h
or      ecx, esi
add     eax, 4
mov     [eax], cx
add     eax, 2
mov     word ptr [eax], 0
add     edx, 4
add     eax, 2
mov     word ptr [eax], 0
add     eax, 2
mov     ecx, [edx]
and     ecx, 0FFF0h
shr     ecx, 4
mov     [eax+2], cx
mov     ecx, [edx]
and     ecx, 0FFF0000h
shr     ecx, 10h
mov     [eax+4], cx
mov     ecx, [edx+4]
and     ecx, 0FFh
shl     ecx, 4
mov     edx, [edx]
and     edx, 0F0000000h
shr     edx, 1Ch
or      edx, ecx
mov     [eax+6], dx
mov     ax, word ptr ds:dword_561A04
and     ah, 0Fh
mov     ds:word_561604, ax
mov     eax, ds:dword_561A04
and     eax, 0FFF000h
shr     eax, 0Ch
mov     edx, eax
mov     eax, offset word_561604
add     eax, 2
mov     [eax], dx
mov     ecx, ds:dword_561A08
and     ecx, 0Fh
shl     ecx, 8
mov     edx, ds:dword_561A04
and     edx, 0FF000000h
shr     edx, 18h
or      ecx, edx
add     eax, 2
mov     [eax], cx
add     eax, 4
mov     edx, offset dword_561A04
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF0h
shr     ecx, 4
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF0000h
shr     ecx, 10h
add     eax, 2
mov     [eax], cx
mov     esi, [edx+4]
and     esi, 0FFh
shl     esi, 4
mov     ecx, [edx]
and     ecx, 0F0000000h
shr     ecx, 1Ch
or      ecx, esi
add     eax, 2
mov     [eax], cx
add     eax, 2
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF00h
shr     ecx, 8
add     eax, 2
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF00000h
shr     ecx, 14h
add     eax, 2
mov     [eax], cx
add     edx, 4
mov     cx, [edx]
and     ch, 0Fh
add     eax, 2
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF000h
shr     ecx, 0Ch
add     eax, 4
mov     [eax], cx
mov     ecx, [edx+4]
and     ecx, 0Fh
shl     ecx, 8
mov     esi, [edx]
and     esi, 0FF000000h
shr     esi, 18h
or      ecx, esi
add     eax, 2
mov     [eax], cx
add     eax, 2
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF0h
shr     ecx, 4
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF0000h
shr     ecx, 10h
add     eax, 4
mov     [eax], cx
add     eax, 2
mov     word ptr [eax], 0
add     eax, 2
mov     word ptr [eax], 0
add     eax, 4
mov     word ptr [eax], 0
add     eax, 2
mov     ecx, [edx+4]
and     ecx, 0FFh
shl     ecx, 4
mov     ebx, [edx]
and     ebx, 0F0000000h
shr     ebx, 1Ch
or      ecx, ebx
mov     [eax], cx
mov     ecx, [edx+4]
and     ecx, 0FFF00h
shr     ecx, 8
mov     [eax+2], cx
mov     ecx, [edx+4]
and     ecx, 0FFF00000h
shr     ecx, 14h
mov     [eax+6], cx
mov     cx, [edx+8]
and     ch, 0Fh
mov     [eax+8], cx
mov     ecx, [edx+8]
and     ecx, 0FFF000h
shr     ecx, 0Ch
mov     [eax+0Ah], cx
mov     ecx, [edx+0Ch]
and     ecx, 0Fh
shl     ecx, 8
mov     esi, [edx+8]
and     esi, 0FF000000h
shr     esi, 18h
or      ecx, esi
mov     [eax+0Eh], cx
mov     word ptr [eax+10h], 0
mov     word ptr [eax+12h], 0
mov     word ptr [eax+16h], 0
mov     ecx, [edx+0Ch]
and     ecx, 0FFF0h
shr     ecx, 4
mov     [eax+18h], cx
mov     edx, [edx+0Ch]
and     edx, 0FFF0000h
shr     edx, 10h
mov     [eax+1Ah], dx
mov     ax, ds:word_560E04
shl     eax, 4
cwde
sar     eax, 4
mov     ds:word_560E04, ax
mov     ax, ds:word_560E06
shl     eax, 4
cwde
sar     eax, 4
mov     ds:word_560E06, ax
mov     ax, ds:word_560E08
shl     eax, 4
cwde
sar     eax, 4
mov     ds:word_560E08, ax
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DEF3E endp




sub_4DF5EE proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= dword ptr -14h
var_10= word ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 58h
mov     ebp, eax
mov     esi, edx
mov     edi, ebx
mov     eax, ecx
mov     cl, ds:byte_77EABF
mov     bx, [eax]
shl     ebx, cl
mov     word ptr [esp+64h+var_14], bx
mov     bx, [eax+2]
shl     ebx, cl
mov     word ptr [esp+64h+var_14+2], bx
mov     ax, [eax+4]
shl     eax, cl
mov     [esp+64h+var_10], ax
lea     ebx, [esp+64h+var_34]
lea     edx, [esp+64h+var_14]
mov     eax, offset unk_564A6C
call    sub_4EF1FB
mov     edx, esp
mov     eax, edi
call    sub_4EF5F7
mov     ebx, offset unk_564A6C
mov     edx, esp
mov     eax, ebx
call    sub_4EF388
mov     eax, [esp+64h+var_34]
add     ds:dword_564A90, eax
mov     eax, [esp+64h+var_30]
add     ds:dword_564A94, eax
mov     eax, [esp+64h+var_2C]
add     ds:dword_564A98, eax
mov     cl, ds:byte_77EABF
mov     dx, [ebp+14h]
shl     edx, cl
mov     word ptr [esp+64h+var_14], dx
mov     dx, [ebp+16h]
shl     edx, cl
mov     word ptr [esp+64h+var_14+2], dx
mov     ax, [ebp+18h]
shl     eax, cl
mov     [esp+64h+var_10], ax
mov     edx, [esp+4Eh]
sar     edx, 10h
mov     eax, edx
shl     eax, 3
sub     eax, edx
add     eax, ds:dword_564A90
add     eax, 4
sar     eax, 3
mov     edx, eax
mov     eax, esi
mov     [ebp+eax*8+4A8h], dx
mov     ecx, [esp+64h+var_14]
sar     ecx, 10h
mov     edx, ecx
shl     edx, 3
sub     edx, ecx
add     edx, ds:dword_564A94
add     edx, 4
sar     edx, 3
mov     [ebp+eax*8+4AAh], dx
mov     edi, [esp+64h+var_14+2]
sar     edi, 10h
mov     edx, edi
shl     edx, 3
sub     edx, edi
add     edx, ds:dword_564A98
add     edx, 4
sar     edx, 3
mov     [ebp+eax*8+4ACh], dx
mov     edx, esi
shl     edx, 2
sub     edx, esi
shl     edx, 4
lea     esi, [edx+ebp]
mov     ecx, 0Ch
lea     edi, [esi+1D8h]
mov     esi, offset unk_564A6C
rep movsd
mov     cl, ds:byte_77EABF
mov     eax, ds:dword_5505DC
shl     eax, cl
mov     [esp+64h+var_24], eax
mov     [esp+64h+var_20], eax
mov     [esp+64h+var_1C], eax
lea     eax, [ebp+1D8h]
add     eax, edx
lea     edx, [esp+64h+var_24]
call    sub_4EF689
add     esp, 58h
pop     ebp
pop     edi
pop     esi
retn
sub_4DF5EE endp




sub_4DF74A proc near
mov     ds:dword_55DB38, offset dword_55DB38
retn
sub_4DF74A endp




sub_4DF755 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, ds:dword_55DB38
sub     edx, 30h ; '0'
mov     ds:dword_55DB38, edx
mov     edi, edx
mov     ecx, 0Ch
mov     esi, eax
rep movsd
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4DF755 endp




sub_4DF778 proc near
push    ecx
push    esi
push    edi
mov     esi, ds:dword_55DB38
mov     ecx, 0Ch
mov     edi, eax
rep movsd
add     ds:dword_55DB38, 30h ; '0'
pop     edi
pop     esi
pop     ecx
retn
sub_4DF778 endp




sub_4DF795 proc near

var_10= word ptr -10h
var_E= word ptr -0Eh
var_C= word ptr -0Ch

push    ecx
push    edx
sub     esp, 38h
mov     ecx, eax        ; int
xor     edx, edx
mov     [esp+40h+var_10], dx
mov     ax, [eax+56h]
mov     [esp+40h+var_E], ax
mov     [esp+40h+var_C], dx
mov     edx, esp
lea     eax, [esp+40h+var_10]
call    sub_4EF5F7
mov     edx, esp
mov     eax, ecx
call    sub_4DF87F
add     esp, 38h
pop     edx
pop     ecx
retn
sub_4DF795 endp




sub_4DF7CB proc near
push    ecx
push    edx
sub     esp, 30h
mov     ecx, eax        ; int
add     eax, 54h ; 'T'
mov     edx, esp
call    sub_4EF638
mov     edx, esp
mov     eax, ecx
call    sub_4DF87F
add     esp, 30h
pop     edx
pop     ecx
retn
sub_4DF7CB endp




sub_4DF7EB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+6D2h], 20h ; ' '
mov     al, [eax+6D2h]
mov     [ecx+6D1h], al
mov     [ecx+6D0h], al
xor     edx, edx

loc_4DF80B:
mov     eax, edx
mov     byte ptr [ecx+eax*4+6D6h], 20h ; ' '
mov     bl, [ecx+eax*4+6D6h]
mov     [ecx+eax*4+6D5h], bl
mov     [ecx+eax*4+6D4h], bl
inc     edx
cmp     edx, 18h
jl      short loc_4DF80B

loc_4DF830:
or      byte ptr [ecx+6], 40h
pop     edx
pop     ecx
pop     ebx
retn
sub_4DF7EB endp




sub_4DF838 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+46Ah], 20h ; ' '
mov     al, [eax+46Ah]
mov     [ecx+469h], al
mov     [ecx+468h], al
xor     edx, edx

loc_4DF858:
mov     eax, edx
mov     byte ptr [ecx+eax*4+46Eh], 20h ; ' '
mov     bl, [ecx+eax*4+46Eh]
mov     [ecx+eax*4+46Dh], bl
mov     [ecx+eax*4+46Ch], bl
inc     edx
cmp     edx, 0Dh
jl      short loc_4DF858
jmp     short loc_4DF830
sub_4DF838 endp




sub_4DF87F proc near

var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= word ptr -20h
var_1C= word ptr -1Ch
var_18= word ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 60h
mov     ebp, eax
mov     [esp+74h+var_30], edx
xor     eax, eax
mov     al, [ebp+1]
call    sub_4DD420
cmp     eax, 40h ; '@'
jnz     short loc_4DF8A5
mov     eax, ebp
add     eax, 250h
jmp     short loc_4DF8AC

loc_4DF8A5:
mov     eax, ebp
add     eax, 1F8h

loc_4DF8AC:
mov     [esp+74h+var_24], eax
mov     [esp+74h+var_2C], offset word_560E04
mov     eax, [ebp+9Ch]
mov     [esp+74h+var_34], eax
mov     ecx, 0Ch
lea     edi, [ebp+160h]
mov     esi, [esp+74h+var_30]
rep movsd
mov     cl, ds:byte_77EABF ; int
mov     dx, [ebp+158h]
shl     edx, cl
mov     [esp+74h+var_1C], dx
mov     dx, [ebp+15Ah]
shl     edx, cl
mov     [esp+74h+var_18], dx
mov     ax, [ebp+15Ch]
shl     eax, cl
mov     [esp+74h+var_20], ax
mov     eax, offset word_560E04
add     eax, 8
mov     edx, esp
call    sub_4EF5F7
mov     ebx, [esp+74h+var_24]
mov     edx, esp
mov     eax, [esp+74h+var_30]
call    sub_4EF388
mov     eax, [ebp+0F6h]
sar     eax, 18h
mov     [esp+74h+var_28], eax
mov     esi, 1

loc_4DF933:
cmp     esi, [esp+74h+var_28]
jnb     short loc_4DF9A4
mov     edx, esi
lea     eax, [ebp+0F8h]
movsx   edi, byte ptr [eax+edx*4+1]
mov     al, [eax+edx*4+2]
and     eax, 0FFh
test    edi, edi
jl      short loc_4DF9A1
shl     edx, 2
sub     edx, esi
shl     edx, 4
mov     ecx, [esp+74h+var_24]
add     ecx, edx        ; int
test    eax, eax
jz      short loc_4DF991
shl     eax, 3
mov     edx, [esp+74h+var_2C]
add     edx, 8
add     eax, edx
mov     edx, esp
call    sub_4EF5F7
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 4
add     eax, [esp+74h+var_24]
mov     ebx, ecx
mov     edx, esp
call    sub_4EF388
jmp     short loc_4DF9A1

loc_4DF991:
mov     ebx, 24h ; '$'
mov     edx, [esp+74h+var_24]
mov     eax, ecx
call    memcpy_

loc_4DF9A1:
inc     esi
jmp     short loc_4DF933

loc_4DF9A4:
test    byte ptr [ebp+6], 40h
jz      loc_4DFABF
xor     eax, eax
mov     al, [ebp+1]
call    sub_4DD420
cmp     eax, 40h ; '@'
jnz     short loc_4DF9C5
lea     edi, [ebp+6D0h]
jmp     short loc_4DF9CB

loc_4DF9C5:
lea     edi, [ebp+468h]

loc_4DF9CB:
mov     eax, [ebp+156h]
sar     eax, 10h
xor     edx, edx
mov     dl, [edi]
imul    edx, eax
mov     al, ds:byte_77EABF
mov     cl, al
shl     edx, cl
sar     edx, 5
mov     [esp+74h+var_44], edx
mov     ecx, [ebp+158h]
sar     ecx, 10h
xor     edx, edx
mov     dl, [edi+1]
imul    edx, ecx
mov     cl, al
shl     edx, cl
sar     edx, 5
mov     [esp+74h+var_40], edx
mov     ecx, [ebp+15Ah]
sar     ecx, 10h
xor     edx, edx
mov     dl, [edi+2]
imul    edx, ecx
mov     cl, al
shl     edx, cl
sar     edx, 5
mov     [esp+74h+var_3C], edx
lea     eax, [ebp+160h]
lea     edx, [esp+74h+var_44]
call    sub_4EF689
xor     esi, esi

loc_4DFA34:
cmp     esi, [esp+74h+var_28]
jnb     loc_4DFB13
mov     eax, esi
xor     edx, edx
mov     dl, [edi+eax*4+4]
mov     ebx, [ebp+156h]
sar     ebx, 10h
imul    ebx, edx
mov     dl, ds:byte_77EABF
mov     cl, dl
shl     ebx, cl
mov     ecx, ebx
sar     ecx, 5
mov     [esp+74h+var_44], ecx
xor     ecx, ecx
mov     cl, [edi+eax*4+5]
mov     ebx, [ebp+158h]
sar     ebx, 10h
imul    ebx, ecx
mov     cl, dl
shl     ebx, cl
sar     ebx, 5
mov     [esp+74h+var_40], ebx
mov     al, [edi+eax*4+6]
and     eax, 0FFh
mov     ecx, [ebp+15Ah]
sar     ecx, 10h
imul    eax, ecx
mov     cl, dl
shl     eax, cl
sar     eax, 5
mov     [esp+74h+var_3C], eax
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 4
add     eax, [esp+74h+var_24]
lea     edx, [esp+74h+var_44]
call    sub_4EF689
inc     esi
jmp     loc_4DFA34

loc_4DFABF:
mov     eax, [esp+56h]
sar     eax, 10h
mov     [esp+74h+var_44], eax
mov     eax, [esp+5Ah]
sar     eax, 10h
mov     [esp+74h+var_40], eax
mov     eax, [esp+74h+var_24+2]
sar     eax, 10h
mov     [esp+74h+var_3C], eax
lea     eax, [ebp+160h]
lea     edx, [esp+74h+var_44]
call    sub_4EF689
xor     esi, esi
mov     edi, [esp+74h+var_28]

loc_4DFAF5:
cmp     esi, edi
jnb     short loc_4DFB13
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 4
add     eax, [esp+74h+var_24]
lea     edx, [esp+74h+var_44]
call    sub_4EF689
inc     esi
jmp     short loc_4DFAF5

loc_4DFB13:
mov     eax, [esp+74h+var_2C]
shl     word ptr [eax], 3
shl     word ptr [eax+2], 3
shl     word ptr [eax+4], 3
lea     eax, [ebp+160h]
lea     ebx, [esp+74h+var_44]
mov     edx, [esp+74h+var_2C]
call    sub_4EF1FB
mov     cl, ds:byte_77EABF
mov     ax, [ebp+14h]
shl     eax, cl
mov     edx, [esp+74h+var_44]
add     edx, eax
mov     [ebp+190h], dx
mov     cl, ds:byte_77EABF
mov     ax, [ebp+16h]
shl     eax, cl
mov     edx, [esp+74h+var_40]
add     edx, eax
mov     [ebp+192h], dx
mov     cl, ds:byte_77EABF
mov     ax, [ebp+18h]
shl     eax, cl
mov     edx, [esp+74h+var_3C]
add     edx, eax
mov     [ebp+194h], dx
mov     esi, 1

loc_4DFB88:
cmp     esi, [esp+74h+var_28]
jnb     loc_4DFC49
mov     eax, esi
lea     edx, [ebp+0F8h]
movsx   edi, byte ptr [edx+eax*4+1]
mov     al, [edx+eax*4+2]
and     eax, 0FFh
test    edi, edi
jl      loc_4DFC43
mov     ecx, esi
shl     ecx, 3
add     ecx, ebp
test    eax, eax
jz      short loc_4DFC19
shl     eax, 3
mov     edx, [esp+74h+var_34]
add     edx, eax
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 4
add     eax, [esp+74h+var_24]
lea     ebx, [esp+74h+var_44]
call    sub_4EF1FB
mov     eax, edi
mov     edx, [esp+74h+var_44]
mov     di, [ebp+eax*8+190h]
add     edx, edi
mov     [ecx+190h], dx
mov     edx, [esp+74h+var_40]
mov     bx, [ebp+eax*8+192h]
add     edx, ebx
mov     [ecx+192h], dx
mov     edx, [esp+74h+var_3C]
mov     di, [ebp+eax*8+194h]
mov     eax, edx
add     eax, edi
jmp     short loc_4DFC3C

loc_4DFC19:
mov     ax, [ebp+190h]
mov     [ecx+190h], ax
mov     ax, [ebp+192h]
mov     [ecx+192h], ax
mov     ax, [ebp+194h]

loc_4DFC3C:
mov     [ecx+194h], ax

loc_4DFC43:
inc     esi
jmp     loc_4DFB88

loc_4DFC49:
add     esp, 60h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4DF87F endp




sub_4DFC52 proc near
push    ebx
push    ecx
push    edx
push    esi
xor     edx, edx
mov     dl, [eax+0ACh]
mov     ecx, [eax+0A0h]
mov     eax, [eax+98h]
mov     al, [eax]
and     eax, 0FFh
mov     edx, [ecx+edx*4]
mov     eax, [edx+eax*4]
mov     ebx, 20h ; ' '
mov     edx, offset unk_561E04
call    sub_4EECD4
mov     eax, offset word_560E04
mov     edx, offset unk_561E04
mov     ecx, 3

loc_4DFC95:
mov     bx, [edx]
and     bh, 0Fh
mov     [eax], bx
mov     ebx, [edx]
and     ebx, 0FFF000h
shr     ebx, 0Ch
add     eax, 2
mov     [eax], bx
mov     esi, [edx+4]
and     esi, 0Fh
shl     esi, 8
mov     ebx, [edx]
and     ebx, 0FF000000h
shr     ebx, 18h
or      ebx, esi
add     eax, 2
mov     [eax], bx
add     eax, 4
add     edx, 4
mov     ebx, [edx]
and     ebx, 0FFF0h
shr     ebx, 4
mov     [eax], bx
mov     ebx, [edx]
and     ebx, 0FFF0000h
shr     ebx, 10h
add     eax, 2
mov     [eax], bx
mov     esi, [edx+4]
and     esi, 0FFh
shl     esi, 4
mov     ebx, [edx]
and     ebx, 0F0000000h
shr     ebx, 1Ch
or      ebx, esi
add     eax, 2
mov     [eax], bx
add     eax, 4
add     edx, 4
mov     ebx, [edx]
and     ebx, 0FFF00h
shr     ebx, 8
mov     [eax], bx
mov     ebx, [edx]
and     ebx, 0FFF00000h
shr     ebx, 14h
add     eax, 2
mov     [eax], bx
add     edx, 4
mov     bx, [edx]
and     bh, 0Fh
add     eax, 2
mov     [eax], bx
add     eax, 4
mov     ebx, [edx]
and     ebx, 0FFF000h
shr     ebx, 0Ch
mov     [eax], bx
mov     esi, [edx+4]
and     esi, 0Fh
shl     esi, 8
mov     ebx, [edx]
and     ebx, 0FF000000h
shr     ebx, 18h
or      ebx, esi
add     eax, 2
mov     [eax], bx
add     eax, 2
add     edx, 4
mov     ebx, [edx]
and     ebx, 0FFF0h
shr     ebx, 4
mov     [eax], bx
mov     ebx, [edx]
and     ebx, 0FFF0000h
shr     ebx, 10h
add     eax, 4
mov     [eax], bx
mov     ebx, [edx+4]
and     ebx, 0FFh
shl     ebx, 4
mov     esi, [edx]
and     esi, 0F0000000h
shr     esi, 1Ch
or      ebx, esi
add     eax, 2
mov     [eax], bx
add     eax, 2
add     edx, 4
mov     ebx, [edx]
and     ebx, 0FFF00h
shr     ebx, 8
mov     [eax], bx
mov     ebx, [edx]
and     ebx, 0FFF00000h
shr     ebx, 14h
add     eax, 4
mov     [eax], bx
add     edx, 4
mov     bx, [edx]
and     bh, 0Fh
add     eax, 2
mov     [eax], bx
mov     ebx, [edx]
and     ebx, 0FFF000h
shr     ebx, 0Ch
add     eax, 2
mov     [eax], bx
add     eax, 2
mov     esi, [edx+4]
and     esi, 0Fh
shl     esi, 8
mov     ebx, [edx]
and     ebx, 0FF000000h
shr     ebx, 18h
or      ebx, esi
add     eax, 2
mov     [eax], bx
add     eax, 2
add     edx, 4
mov     ebx, [edx]
and     ebx, 0FFF0h
shr     ebx, 4
mov     [eax], bx
mov     ebx, [edx]
and     ebx, 0FFF0000h
shr     ebx, 10h
add     eax, 2
mov     [eax], bx
mov     esi, [edx+4]
and     esi, 0FFh
shl     esi, 4
mov     ebx, [edx]
and     ebx, 0F0000000h
shr     ebx, 1Ch
or      ebx, esi
add     eax, 4
mov     [eax], bx
add     eax, 2
add     edx, 4
mov     ebx, [edx]
and     ebx, 0FFF00h
shr     ebx, 8
mov     [eax], bx
mov     ebx, [edx]
and     ebx, 0FFF00000h
shr     ebx, 14h
add     eax, 2
mov     [eax], bx
add     edx, 4
add     eax, 4
dec     ecx
jnz     loc_4DFC95
mov     bx, [edx]
and     bh, 0Fh
mov     [eax], bx
mov     ecx, [edx]
and     ecx, 0FFF000h
shr     ecx, 0Ch
mov     [eax+2], cx
mov     ecx, [edx+4]
and     ecx, 0Fh
shl     ecx, 8
mov     edx, [edx]
and     edx, 0FF000000h
shr     edx, 18h
or      edx, ecx
mov     [eax+4], dx
mov     ax, ds:word_560E04
shl     eax, 4
cwde
sar     eax, 4
mov     ds:word_560E04, ax
mov     ax, ds:word_560E06
shl     eax, 4
cwde
sar     eax, 4
mov     ds:word_560E06, ax
mov     ax, ds:word_560E08
shl     eax, 4
cwde
sar     eax, 4
mov     ds:word_560E08, ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DFC52 endp




sub_4DFEFE proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 44h
mov     ebp, edx
mov     [esp+50h+var_10], ebx
mov     edx, ecx
mov     ecx, 0Ch
mov     edi, offset unk_564A6C
mov     esi, eax
rep movsd
lea     ebx, [esp+50h+var_20]
mov     eax, offset unk_564A6C
call    sub_4EF1FB
mov     eax, [esp+50h+var_20]
add     ds:dword_564A90, eax
mov     eax, [esp+50h+var_1C]
add     ds:dword_564A94, eax
mov     eax, [esp+50h+var_18]
add     ds:dword_564A98, eax
mov     edx, esp
mov     eax, [esp+50h+var_10]
call    sub_4EF5F7
mov     ebx, offset unk_564A6C
mov     edx, esp
mov     eax, ebx
call    sub_4EF388
mov     ecx, 0Ch
mov     edi, ebp
mov     esi, offset unk_564A6C
rep movsd
add     esp, 44h
pop     ebp
pop     edi
pop     esi
retn
sub_4DFEFE endp




sub_4DFF74 proc near
push    edx
xor     edx, edx
mov     ds:dword_77E94C, edx
mov     ds:dword_77E940, 0FFh
xor     ah, ah
mov     ds:byte_55DC22, ah
mov     ds:byte_55DC36, ah
mov     ds:byte_55DC4A, ah
mov     ds:byte_55DC5E, ah
mov     ds:dword_55DCBC, edx
mov     ds:dword_55DCD0, edx
mov     ds:dword_55DCCC, edx
pop     edx
retn
sub_4DFF74 endp




sub_4DFFB5 proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    edi
push    ebp
sub     esp, 10h
mov     ebp, esi
mov     esi, eax
mov     edi, ebx
mov     eax, [eax]
sar     eax, 10h
mov     [esp+18h+var_10], eax
mov     eax, [edx]
sar     eax, 10h
mov     ebx, [esp+18h+var_10]
imul    ebx, eax
mov     [esp+18h+var_10], ebx
movsx   eax, word ptr [esi]
mov     [esp+18h+var_C], eax
movsx   eax, word ptr [edx]
imul    eax, [esp+18h+var_C]
mov     ebx, [esp+18h+var_10]
add     ebx, eax
mov     [esp+18h+var_C], ebx
mov     eax, [esi+2]
sar     eax, 10h
mov     [esp+18h+var_10], eax
mov     eax, [edx+2]
sar     eax, 10h
imul    eax, [esp+18h+var_10]
add     eax, [esp+18h+var_C]
shl     eax, 4
cmp     eax, ecx
jl      short loc_4E0019
mov     edi, esp
jmp     loc_4E01EC

loc_4E0019:
fild    word ptr [edx]
fmul    ds:dbl_50A47C
fstp    ds:flt_55DBE4
fild    word ptr [edx+2]
fmul    ds:dbl_50A47C
fstp    ds:flt_55DBF0
fild    word ptr [edx+4]
fmul    ds:dbl_50A47C

loc_4E003F:
fstp    ds:flt_55DBFC
movsx   eax, word ptr [esi]
mov     ds:dword_55DB3C, eax
mov     eax, [esi]
sar     eax, 10h
mov     ds:dword_55DB40, eax
mov     eax, [esi+2]
sar     eax, 10h
mov     ds:dword_55DB44, eax
movsx   eax, word ptr [edx]
mov     ds:dword_55DB4C, eax
mov     eax, [edx]
sar     eax, 10h
mov     ds:dword_55DB50, eax
mov     eax, [edx+2]
sar     eax, 10h
mov     ds:dword_55DB54, eax
mov     ebx, offset dword_55DC0C
mov     edx, offset dword_55DB4C
mov     eax, offset dword_55DB3C
call    sub_4EF784
mov     ebx, offset dword_55DC7C
mov     edx, offset dword_55DC0C
mov     eax, offset dword_55DB4C
call    sub_4EF784
fild    ds:dword_55DC0C
fmul    ds:dbl_50A47C
fstp    ds:flt_55DBE0
fild    ds:dword_55DC10
fmul    ds:dbl_50A47C
fstp    ds:flt_55DBEC
fild    ds:dword_55DC14
fmul    ds:dbl_50A47C
fstp    ds:flt_55DBF8
fild    ds:dword_55DC7C
fmul    ds:dbl_50A47C
fstp    ds:flt_55DBDC
fild    ds:dword_55DC80
fmul    ds:dbl_50A47C
fstp    ds:flt_55DBE8
fild    ds:dword_55DC84
fmul    ds:dbl_50A47C
fstp    ds:flt_55DBF4
mov     ds:word_55DB6C, di
mov     ds:word_55DB74, di
mov     edx, edi
neg     edx
mov     ds:word_55DB74, dx
xor     ebx, ebx
mov     ds:word_55DB76, bx
mov     ds:word_55DB6E, bx
sar     ecx, 10h
mov     ds:word_55DB78, cx
mov     ds:word_55DB70, cx
mov     ebx, offset dword_55DB3C
mov     edx, offset word_55DB6C
mov     eax, offset flt_55DBDC
call    sub_4EF1FB
mov     edx, [esi]
sar     edx, 10h
imul    edx, ds:dword_55DB40
movsx   eax, word ptr [esi]
imul    eax, ds:dword_55DB3C
add     edx, eax
mov     eax, [esi+2]
sar     eax, 10h
imul    eax, ds:dword_55DB44
lea     ecx, [edx+eax]
mov     ebx, offset dword_55DB4C
mov     edx, offset word_55DB74
mov     eax, offset flt_55DBDC
call    sub_4EF1FB
mov     eax, [esi]
sar     eax, 10h
mov     edx, ds:dword_55DB50
imul    edx, eax
movsx   eax, word ptr [esi]
imul    eax, ds:dword_55DB4C
add     eax, edx
mov     edx, [esi+2]
sar     edx, 10h
imul    edx, ds:dword_55DB54
add     eax, edx
cmp     ecx, eax
jle     short loc_4E01D6
mov     edx, offset word_55DB6C
mov     eax, offset dword_55DB3C
jmp     short loc_4E01E0

loc_4E01D6:
mov     edx, offset word_55DB6C
mov     eax, offset dword_55DB4C

loc_4E01E0:
call    sub_4EF932
mov     edi, esp
mov     esi, offset word_55DB6C

loc_4E01EC:
movsd
movsd
mov     edi, ebp
mov     esi, esp
movsd
movsd
mov     eax, ebp
add     esp, 10h
pop     ebp
pop     edi
retn
sub_4DFFB5 endp




sub_4E01FC proc near

var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10= dword ptr  14h

push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     [esp+14h+var_14], edx
mov     [esp+14h+var_10], ecx
mov     edx, ds:dword_77E94C
cmp     edx, 40h ; '@'
jb      short loc_4E021D
xor     eax, eax
jmp     loc_4E02C2

loc_4E021D:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, (offset dword_750DAA+2)
mov     edi, eax
mov     esi, ebp
movsd
movsd
mov     ecx, [esp+14h+var_14]
shr     ecx, 2
or      ebx, ecx
or      ebx, [esp+14h+var_10]
mov     [eax+6], bx
mov     ecx, [esp+14h+arg_4]
and     ecx, offset unk_7FFFFF
mov     ebx, [esp+14h+arg_0]
shl     ebx, 18h
or      ecx, ebx
mov     ebx, [esp+14h+arg_C]
or      ebx, ecx
mov     [eax+8], ebx
mov     eax, [esp+14h+arg_8]
mov     ds:dword_7510AC[edx*4], eax
inc     ds:dword_77E94C
mov     eax, [esp+14h+arg_4]
mov     eax, [eax+4]
mov     edx, ds:dword_77E940
and     edx, eax
test    dl, 80h
jz      short loc_4E0285
xor     dl, dl

loc_4E0285:
mov     eax, [esp+14h+arg_10]
or      eax, edx
mov     ecx, [esp+14h+arg_4]
mov     [ecx+4], eax
test    edx, edx
jz      short loc_4E02BD
xor     eax, eax
jmp     short loc_4E02A2

loc_4E029A:
add     edx, edx
inc     eax
cmp     eax, 18h
jnb     short loc_4E02BD

loc_4E02A2:
cmp     edx, 80000000h
jb      short loc_4E029A
mov     esi, ds:dword_7511AC[eax*4]
lea     edi, [esi+0CCh]
mov     esi, ebp
movsd
movsd
jmp     short loc_4E029A

loc_4E02BD:
mov     eax, 1

loc_4E02C2:
add     esp, 8
pop     ebp
pop     edi
pop     esi
retn    14h
sub_4E01FC endp




sub_4E02CB proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10= dword ptr  14h
arg_14= dword ptr  18h
arg_18= dword ptr  1Ch

push    esi
push    edi
push    ebp
sub     esp, 0Ch
push    edx
push    ecx
mov     ebp, [esp+20h+arg_C]
mov     ecx, ds:dword_77E94C
cmp     ecx, 3Fh ; '?'
jb      short loc_4E02E9
xor     esi, esi
jmp     loc_4E03FA

loc_4E02E9:
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
add     edx, (offset dword_750DAA+2)
mov     edi, edx
mov     esi, eax
movsd
movsd
mov     esi, [esp+20h+var_1C]
shr     esi, 2
or      esi, [esp+20h+arg_0]
or      esi, [esp+20h+arg_4]
mov     [edx+6], si
mov     esi, ebp
and     esi, offset unk_7FFFFF
mov     edi, [esp+20h+arg_8]
shl     edi, 18h
or      esi, edi
mov     edi, [esp+20h+arg_14]
or      edi, esi
mov     [esp+20h+var_10], edi
mov     [edx+8], edi
mov     esi, [esp+20h+arg_10]
mov     ds:dword_7510AC[ecx*4], esi
inc     ecx
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
add     edx, (offset dword_750DAA+2)
mov     edi, edx
mov     esi, ebx
movsd
movsd
mov     esi, [esp+20h+var_20]
shr     esi, 2
or      esi, [esp+20h+arg_0]
or      esi, [esp+20h+arg_4]
mov     [edx+6], si
mov     esi, [esp+20h+var_10]
mov     [edx+8], esi
mov     edx, [esp+20h+arg_10]
mov     ds:dword_7510AC[ecx*4], edx
add     ds:dword_77E94C, 2
mov     edx, [ebp+4]
mov     ecx, ds:dword_77E940
and     ecx, edx
mov     edx, [esp+20h+arg_18]
or      edx, ecx
mov     [ebp+4], edx
test    ecx, ecx
jz      short loc_4E03F5
xor     edx, edx
jmp     short loc_4E03A1

loc_4E0399:
add     ecx, ecx
inc     edx
cmp     edx, 18h
jnb     short loc_4E03F5

loc_4E03A1:
cmp     ecx, 80000000h
jb      short loc_4E0399
movsx   esi, word ptr [eax]
movsx   edi, word ptr [ebx]
add     esi, edi
sar     esi, 1
mov     [esp+20h+var_18], si
mov     esi, [eax]
sar     esi, 10h
mov     edi, [ebx]
sar     edi, 10h
add     esi, edi
sar     esi, 1
mov     [esp+20h+var_16], si
mov     edi, [eax+2]
sar     edi, 10h
mov     esi, [ebx+2]
sar     esi, 10h
add     esi, edi
sar     esi, 1
mov     [esp+20h+var_14], si
mov     esi, ds:dword_7511AC[edx*4]
lea     edi, [esi+0CCh]
lea     esi, [esp+20h+var_18]
movsd
movsd
jmp     short loc_4E0399

loc_4E03F5:
mov     esi, 1

loc_4E03FA:
mov     eax, esi
add     esp, 14h
pop     ebp
pop     edi
pop     esi
retn    1Ch
sub_4E02CB endp




sub_4E0405 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
call    sub_4E0AF0
mov     eax, offset byte_5F8364
call    sub_4E11E0
mov     ds:dword_5505E8, eax
mov     edi, 0FF000000h
mov     esi, ds:dword_77E94C
xor     edx, edx
mov     ds:dword_77E94C, edx
cmp     esi, 2
jb      loc_4E04C9
mov     [esp+20h+var_20], edx

loc_4E0441:
lea     eax, [esi-1]
mov     ebx, [esp+20h+var_20]
cmp     eax, ebx
jbe     loc_4E04C9
lea     eax, [ebx+1]
mov     [esp+20h+var_1C], eax

loc_4E0456:
mov     ebp, [esp+20h+var_1C]
cmp     esi, ebp
jbe     short loc_4E04C1
mov     edx, [esp+20h+var_20]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, eax
shl     edx, 2
xor     eax, eax
mov     ax, ds:word_750DB2[edx]
sar     eax, 0Dh
xor     ebx, ebx
mov     bl, ds:byte_5505E0[eax]
mov     ecx, ebp
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
shl     eax, 2
xor     ecx, ebp
mov     cx, ds:word_750DB2[eax]
sar     ecx, 0Dh
shl     ebx, cl
test    bl, 80h
jz      short loc_4E04BB
mov     edx, ds:dword_750DB4[edx]
xor     edx, ds:dword_750DB4[eax]
test    edx, edi
jz      short loc_4E04BB
lea     edx, [esp+20h+var_1C]
mov     eax, esp
call    sub_4E04D3

loc_4E04BB:
inc     [esp+20h+var_1C]
jmp     short loc_4E0456

loc_4E04C1:
inc     [esp+20h+var_20]
jmp     loc_4E0441

loc_4E04C9:
add     esp, 8

loc_4E04CC:
pop     ebp

loc_4E04CD:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4E0405 endp




sub_4E04D3 proc near

var_78= dword ptr -78h
var_74= dword ptr -74h
var_70= dword ptr -70h
var_6A= dword ptr -6Ah
var_66= dword ptr -66h
var_62= dword ptr -62h
var_5E= dword ptr -5Eh
var_5A= dword ptr -5Ah
var_56= dword ptr -56h
var_52= word ptr -52h
var_50= dword ptr -50h
var_4C= dword ptr -4Ch
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

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 5Ch
push    eax
push    edx
mov     edx, [eax]
mov     eax, edx
shl     eax, 2
sub     eax, edx
lea     edi, [esp+78h+var_70]
lea     esi, (dword_750DAA+2)[eax*4]
movsd
movsd
mov     edx, [esp+78h+var_78]
mov     edx, [edx]
mov     eax, edx
shl     eax, 2
sub     eax, edx
lea     edi, [esp+78h+var_62+2]
lea     esi, (dword_750DAA+2)[eax*4]
movsd
movsd
mov     eax, [esp+78h+var_6A]
xor     al, al
and     ah, 6
cwde
sar     eax, 9
mov     [esp+78h+var_30], eax
mov     eax, [esp+78h+var_5A]
xor     al, al
and     ah, 6
cwde
sar     eax, 9
mov     [esp+78h+var_2C], eax
mov     eax, [esp+78h+var_6A]
and     ah, 1
shl     eax, 2
mov     word ptr [esp+78h+var_6A], ax
mov     eax, [esp+78h+var_5A]
and     ah, 1
shl     eax, 2
mov     word ptr [esp+78h+var_5A], ax
mov     eax, [esp+0Ch]
sar     eax, 10h
mov     edx, [esp+78h+var_5E+2]
sar     edx, 10h
add     edx, eax
lea     eax, [edx+edx]
mov     ecx, [esp+78h+var_62]
sar     ecx, 10h
mov     ebx, [esp+78h+var_74+2]
sar     ebx, 10h
sub     ebx, ecx
lea     ecx, [ebx+edx]
cmp     ecx, eax
jbe     short loc_4E0598

loc_4E0576:
cmp     [esp+78h+var_30], 0
jz      short loc_4E0583
mov     eax, [esp+78h+var_74]
inc     dword ptr [eax]

loc_4E0583:
cmp     [esp+78h+var_2C], 0
jz      loc_4E0AE7
mov     eax, [esp+78h+var_78]
inc     dword ptr [eax]
jmp     loc_4E0AE7

loc_4E0598:
mov     ebx, [esp+78h+var_70]
sar     ebx, 10h
mov     ecx, [esp+78h+var_62+2]
sar     ecx, 10h
sub     ebx, ecx
add     ebx, edx
cmp     ebx, eax
ja      short loc_4E0576
mov     ebx, [esp+78h+var_70+2]
sar     ebx, 10h
mov     ecx, [esp+78h+var_5E]
sar     ecx, 10h
sub     ebx, ecx
add     edx, ebx
cmp     edx, eax
ja      short loc_4E0576
mov     edx, 9
mov     [esp+78h+var_24], edx
mov     [esp+78h+var_28], edx
cmp     [esp+78h+var_30], 0
jz      short loc_4E0635
mov     ebx, [esp+78h+var_74]
mov     ebx, [ebx]
inc     ebx
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     ax, word ptr ds:(dword_750DAA+2)[edx*4]
mov     word ptr [esp+78h+var_6A+2], ax
mov     ax, word ptr ds:dword_750DAE[edx*4]
mov     word ptr [esp+78h+var_66], ax
mov     ax, word ptr ds:(dword_750DAE+2)[edx*4]
mov     word ptr [esp+78h+var_66+2], ax
mov     ax, ds:word_750DB2[edx*4]
and     ah, 1
shl     eax, 2
mov     word ptr [esp+78h+var_62], ax
mov     cl, byte ptr [esp+78h+var_30]
mov     eax, 8
sar     eax, cl
mov     [esp+78h+var_28], eax
mov     eax, [esp+78h+var_74]
mov     [eax], ebx

loc_4E0635:
cmp     [esp+78h+var_2C], 0
jz      short loc_4E0697
mov     ebx, [esp+78h+var_78]
mov     ebx, [ebx]
inc     ebx
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     ax, word ptr ds:(dword_750DAA+2)[edx*4]
mov     word ptr [esp+78h+var_5A+2], ax
mov     ax, word ptr ds:dword_750DAE[edx*4]
mov     word ptr [esp+78h+var_56], ax
mov     ax, word ptr ds:(dword_750DAE+2)[edx*4]
mov     word ptr [esp+78h+var_56+2], ax
mov     ax, ds:word_750DB2[edx*4]
and     ah, 1
shl     eax, 2
mov     [esp+78h+var_52], ax
mov     cl, byte ptr [esp+78h+var_2C]
mov     eax, 8
sar     eax, cl
mov     [esp+78h+var_24], eax
mov     eax, [esp+78h+var_78]
mov     [eax], ebx

loc_4E0697:
xor     ecx, ecx

loc_4E0699:
xor     ebx, ebx

loc_4E069B:
mov     edx, [esp+78h+var_62]
sar     edx, 10h
mov     edi, 8
sub     edi, ebx
imul    edx, edi
mov     eax, [esp+78h+var_5A]
sar     eax, 10h
imul    eax, ebx
add     edx, eax
mov     esi, 8
sub     esi, ecx
mov     eax, [esp+78h+var_74+2]
sar     eax, 10h
imul    eax, esi
mov     ebp, [esp+78h+var_6A]
sar     ebp, 10h
imul    ebp, ecx
add     eax, ebp
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esp+78h+var_18], eax
mov     edx, [esp+78h+var_70]
sar     edx, 10h
imul    edx, esi
mov     eax, [esp+78h+var_6A+2]
sar     eax, 10h
imul    eax, ecx
add     edx, eax
mov     eax, [esp+78h+var_62+2]
sar     eax, 10h
imul    eax, edi
mov     [esp+78h+var_50], eax
mov     eax, [esp+78h+var_5A+2]
sar     eax, 10h
imul    eax, ebx
add     eax, [esp+78h+var_50]
sub     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esp+78h+var_1C], eax
mov     edx, [esp+78h+var_70+2]
sar     edx, 10h
imul    edx, esi
mov     eax, [esp+78h+var_66]
sar     eax, 10h
imul    eax, ecx
add     edx, eax
mov     eax, [esp+78h+var_5E]
sar     eax, 10h
imul    eax, edi
mov     [esp+78h+var_50], eax
mov     eax, [esp+78h+var_56]
sar     eax, 10h
imul    eax, ebx
add     eax, [esp+78h+var_50]
sub     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esp+78h+var_20], eax
mov     eax, [esp+0Ch]
sar     eax, 10h
imul    eax, esi
mov     edx, [esp+78h+var_66+2]
sar     edx, 10h
imul    edx, ecx
add     eax, edx
mov     edx, [esp+78h+var_5E+2]
sar     edx, 10h
imul    edi, edx
add     eax, edi
mov     edx, [esp+78h+var_56+2]
sar     edx, 10h
imul    edx, ebx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     edx, [esp+78h+var_18]
imul    edx, edx
mov     esi, [esp+78h+var_1C]
imul    esi, esi
add     esi, edx
mov     edx, [esp+78h+var_20]
imul    edx, edx
add     edx, esi
imul    eax, eax
cmp     edx, eax
jg      loc_4E0ACD
mov     edx, [esp+78h+var_74]
mov     edx, [edx]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edi, ds:dword_750DB4[eax*4]
mov     esi, edi
and     esi, offset unk_7FFFFF
mov     edx, [esp+78h+var_78]
mov     edx, [edx]
mov     edx, ds:dword_7510AC[edx*4]
mov     eax, [esi]
mov     ecx, edx
and     ecx, 0FF000000h
or      eax, ecx
mov     ecx, [esp+78h+var_78]
mov     ecx, [ecx]
mov     [esp+78h+var_4C], ecx
shl     ecx, 2
sub     ecx, [esp+78h+var_4C]
mov     cx, ds:word_750DB2[ecx*4]
and     ecx, 0FFFFh
sar     ecx, 0Dh
mov     [esp+78h+var_4C], ecx
mov     ecx, [esp+78h+var_74]
mov     ecx, [ecx]
mov     ecx, ds:dword_7510AC[ecx*4]
and     ecx, 0FF0000h
mov     [esp+78h+var_50], ecx
mov     ecx, [esp+78h+var_4C]
add     ecx, 8
mov     ebp, [esp+78h+var_50]
shl     ebp, cl
cmp     ebp, 80000000h
jnb     short loc_4E085E
and     edx, 0FFFFh
add     eax, edx

loc_4E085E:
mov     [esi], eax
test    edi, offset unk_800000
jz      loc_4E0951
mov     eax, [esp+78h+var_62]
sar     eax, 10h
mov     edx, [esp+78h+var_5A]
sar     edx, 10h
mov     [esp+78h+var_3C], edx
mov     edx, eax
mov     ecx, [esp+78h+var_3C]
sub     edx, ecx
mov     [esp+78h+var_18], edx
mov     ebp, [esp+78h+var_62+2]
sar     ebp, 10h
mov     edx, [esp+78h+var_5A+2]
sar     edx, 10h
mov     [esp+78h+var_34], edx
mov     edx, ebp
mov     edi, [esp+78h+var_34]
sub     edx, edi
mov     [esp+78h+var_1C], edx
mov     edi, [esp+78h+var_5E]
sar     edi, 10h
mov     edx, [esp+78h+var_56]
sar     edx, 10h
mov     [esp+78h+var_40], edx
mov     edx, edi
mov     ecx, [esp+78h+var_40]
sub     edx, ecx
mov     [esp+78h+var_20], edx
cmp     [esp+78h+var_2C], 0
jnz     short loc_4E0933
mov     ecx, 8
sub     ecx, ebx
imul    eax, ecx
mov     edx, [esp+78h+var_3C]
imul    edx, ebx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esi+8], ax
imul    ebp, ecx
mov     edx, [esp+78h+var_34]
imul    edx, ebx
add     edx, ebp
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esi+0Ah], ax
imul    ecx, edi
mov     edx, [esp+78h+var_40]
imul    edx, ebx
add     edx, ecx
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esi+0Ch], ax
mov     word ptr [esi+0Eh], 1
jmp     short loc_4E0951

loc_4E0933:
mov     eax, [esp+78h+var_18]
mov     [esi+8], ax
mov     eax, [esp+78h+var_1C]
mov     [esi+0Ah], ax
mov     eax, [esp+78h+var_20]
mov     [esi+0Ch], ax
mov     word ptr [esi+0Eh], 0

loc_4E0951:
mov     edx, [esp+78h+var_78]
mov     edx, [edx]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edi, ds:dword_750DB4[eax*4]
mov     esi, edi
and     esi, offset unk_7FFFFF
mov     edx, [esp+78h+var_74]
mov     edx, [edx]
mov     edx, ds:dword_7510AC[edx*4]
mov     eax, [esi]
mov     ecx, edx
and     ecx, 0FF000000h
or      eax, ecx
mov     ecx, [esp+78h+var_74]
mov     ecx, [ecx]
mov     [esp+78h+var_4C], ecx
shl     ecx, 2
sub     ecx, [esp+78h+var_4C]
mov     cx, ds:word_750DB2[ecx*4]
and     ecx, 0FFFFh
sar     ecx, 0Dh
mov     [esp+78h+var_50], ecx
mov     ecx, [esp+78h+var_78]
mov     ecx, [ecx]
mov     ecx, ds:dword_7510AC[ecx*4]
and     ecx, 0FF0000h
mov     [esp+78h+var_4C], ecx
mov     ecx, [esp+78h+var_50]
add     ecx, 8
mov     ebp, [esp+78h+var_4C]
shl     ebp, cl
cmp     ebp, 80000000h
jnb     short loc_4E09DE
and     edx, 0FFFFh
add     eax, edx

loc_4E09DE:
mov     [esi], eax
test    edi, offset unk_800000
jz      loc_4E0AE7
mov     eax, [esp+78h+var_6A]
sar     eax, 10h
mov     edx, [esp+78h+var_74+2]
sar     edx, 10h
mov     ecx, edx
sub     ecx, eax
mov     [esp+78h+var_18], ecx
mov     edi, [esp+78h+var_70]
sar     edi, 10h
mov     ecx, [esp+78h+var_6A+2]
sar     ecx, 10h
mov     [esp+78h+var_44], ecx
mov     ecx, edi
mov     ebp, [esp+78h+var_44]
sub     ecx, ebp
mov     [esp+78h+var_1C], ecx
mov     ecx, [esp+78h+var_70+2]
sar     ecx, 10h
mov     [esp+78h+var_38], ecx
mov     ecx, [esp+78h+var_66]
sar     ecx, 10h
mov     [esp+78h+var_48], ecx
mov     ecx, [esp+78h+var_38]
mov     ebp, [esp+78h+var_48]
sub     ecx, ebp
mov     [esp+78h+var_20], ecx
cmp     [esp+78h+var_30], 0
jnz     short loc_4E0AAD
mov     ecx, 8
sub     ecx, ebx
imul    edx, ecx
imul    eax, ebx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esi+8], ax
imul    edi, ecx
mov     edx, [esp+78h+var_44]
imul    edx, ebx
add     edx, edi
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esi+0Ah], ax
mov     edx, [esp+78h+var_38]
imul    edx, ecx
imul    ebx, ebp
add     edx, ebx
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esi+0Ch], ax
mov     word ptr [esi+0Eh], 1
jmp     short loc_4E0AE7

loc_4E0AAD:
mov     eax, [esp+78h+var_18]
mov     [esi+8], ax
mov     eax, [esp+78h+var_1C]
mov     [esi+0Ah], ax
mov     eax, [esp+78h+var_20]
mov     [esi+0Ch], ax
mov     word ptr [esi+0Eh], 0
jmp     short loc_4E0AE7

loc_4E0ACD:
add     ebx, [esp+78h+var_24]
cmp     ebx, 9
jl      loc_4E069B
add     ecx, [esp+78h+var_28]
cmp     ecx, 9
jl      loc_4E0699

loc_4E0AE7:
add     esp, 64h
sub_4E04D3 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4E22FB

loc_4E0AEA:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4E22FB



sub_4E0AF0 proc near

var_68= dword ptr -68h
var_64= dword ptr -64h
var_60= word ptr -60h
var_5E= word ptr -5Eh
var_5C= word ptr -5Ch
var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= dword ptr -50h
var_4C= dword ptr -4Ch
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
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 50h
call    sub_4E0F28
mov     eax, ds:dword_77E94C
mov     [esp+68h+var_48], eax
cmp     ds:byte_5F84D4, 8
jnz     short loc_4E0B1E
mov     eax, dword ptr ds:unk_5F8999
sar     eax, 18h
mov     [esp+68h+var_44], eax
jmp     short loc_4E0B24

loc_4E0B1E:
xor     edx, edx
mov     [esp+68h+var_44], edx

loc_4E0B24:
xor     ecx, ecx
mov     [esp+68h+var_50], ecx
jmp     loc_4E0E55

loc_4E0B2F:
mov     al, ds:byte_5505E2

loc_4E0B34:
mov     [esp+68h+var_1C], al
imul    eax, [esp+68h+var_50], 6F4h
add     eax, offset byte_5F8364
add     eax, 14h
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+68h+var_58]
call    sub_4F04DB
xor     ebx, ebx
add     [esp+68h+var_58], 32h ; '2'

loc_4E0B62:
cmp     ebx, [esp+68h+var_48]
jnb     loc_4E0DCE
mov     eax, ebx
mov     esi, ebx
shl     esi, 2
sub     esi, ebx
shl     esi, 2
xor     ecx, ecx
mov     cx, ds:word_750DB2[esi]
sar     ecx, 0Dh
xor     eax, ebx
mov     al, [esp+68h+var_1C]
shl     eax, cl
test    al, 80h
jz      loc_4E0DC8
test    byte ptr ds:(word_750DB2+1)[esi], 6
jz      short loc_4E0BFB
inc     ebx
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
mov     edx, ds:dword_750DAA[eax*4]
sar     edx, 10h
mov     ecx, ds:dword_750DAA[esi]
sar     ecx, 10h
add     ecx, edx
sar     ecx, 1
mov     [esp+68h+var_60], cx
mov     ecx, ds:(dword_750DAA+2)[eax*4]
sar     ecx, 10h
mov     edx, ds:(dword_750DAA+2)[esi]
sar     edx, 10h
add     edx, ecx
sar     edx, 1
mov     [esp+68h+var_5E], dx
mov     eax, ds:dword_750DAE[eax*4]
sar     eax, 10h
mov     edx, ds:dword_750DAE[esi]
sar     edx, 10h
add     eax, edx
sar     eax, 1
mov     [esp+68h+var_5C], ax
jmp     short loc_4E0C07

loc_4E0BFB:
lea     edi, [esp+68h+var_60]
lea     esi, (dword_750DAA+2)[esi]
movsd
movsd

loc_4E0C07:
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
mov     eax, ds:dword_750DB4[eax*4]
and     eax, offset unk_7FFFFF
test    byte ptr [eax+4], 80h
jnz     loc_4E0DC8
lea     eax, [esp+68h+var_60]
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+68h+var_54]
call    sub_4F04DB
mov     eax, esp
call    sub_4F0003
mov     eax, [esp+68h+var_54]
cmp     eax, [esp+68h+var_58]
jle     loc_4E0CF1
cmp     eax, 500h
jge     loc_4E0CF1
mov     eax, [esp+68h+var_68]
cmp     eax, 43020000h
jle     loc_4E0CF1
cmp     eax, 433E0000h
jge     loc_4E0CF1
fldz
fcomp   [esp+68h+var_64]
fnstsw  ax
sahf
jnb     loc_4E0CF1
cmp     [esp+68h+var_64], 43700000h
jge     short loc_4E0CF1
mov     eax, 0A0h
sub     eax, [esp+68h+var_30]
test    eax, eax
jge     short loc_4E0C9C
neg     eax

loc_4E0C9C:
mov     [esp+68h+var_20], eax
fild    [esp+68h+var_20]
fstp    [esp+68h+var_3C]
fld     ds:flt_50A484
fsub    [esp+68h+var_68]
fstp    [esp+68h+var_28]
fldz
fcomp   [esp+68h+var_28]
fnstsw  ax
sahf
jbe     short loc_4E0CCC
fld     [esp+68h+var_28]
fchs
fstp    [esp+68h+var_2C]
jmp     short loc_4E0CD4

loc_4E0CCC:
mov     eax, [esp+68h+var_28]
mov     [esp+68h+var_2C], eax

loc_4E0CD4:
fld     [esp+68h+var_3C]
fcomp   [esp+68h+var_2C]
fnstsw  ax
sahf
jbe     short loc_4E0CF1
mov     [esp+68h+var_40], ebx
fld     [esp+68h+var_68]
call    __CHP
fistp   [esp+68h+var_30]

loc_4E0CF1:
mov     eax, [esp+68h+var_54]
cmp     eax, [esp+68h+var_58]
jle     loc_4E0DC8
mov     eax, [esp+68h+var_44]
mov     esi, eax
shl     esi, 2
sub     esi, eax
shl     esi, 2
mov     eax, ds:(dword_5505E8+2)[esi]
sar     eax, 10h
cmp     eax, [esp+68h+var_54]
jle     loc_4E0DC8
fild    ds:word_5505EE[esi]
fcomp   [esp+68h+var_68]
fnstsw  ax
sahf
jnb     loc_4E0DC8
fild    ds:word_5505F0[esi]
fcomp   [esp+68h+var_68]
fnstsw  ax
sahf
jbe     loc_4E0DC8
fild    ds:word_5505F2[esi]
fcomp   [esp+68h+var_64]
fnstsw  ax
sahf
jnb     loc_4E0DC8
fild    ds:word_5505F4[esi]
fcomp   [esp+68h+var_64]
fnstsw  ax
sahf
jbe     short loc_4E0DC8
mov     eax, 0A0h
sub     eax, [esp+68h+var_34]
test    eax, eax
jge     short loc_4E0D75
neg     eax

loc_4E0D75:
mov     [esp+68h+var_20], eax
fild    [esp+68h+var_20]
fstp    [esp+68h+var_38]
fld     ds:flt_50A484
fsub    [esp+68h+var_68]
fstp    [esp+68h+var_24]
fldz
fcomp   [esp+68h+var_24]
fnstsw  ax
sahf
jbe     short loc_4E0DA5
fld     [esp+68h+var_24]
fchs
fstp    [esp+68h+var_4C]
jmp     short loc_4E0DAD

loc_4E0DA5:
mov     eax, [esp+68h+var_24]
mov     [esp+68h+var_4C], eax

loc_4E0DAD:
fld     [esp+68h+var_38]
fcomp   [esp+68h+var_4C]
fnstsw  ax
sahf
jbe     short loc_4E0DC8
mov     ebp, ebx
fld     [esp+68h+var_68]
call    __CHP
fistp   [esp+68h+var_34]

loc_4E0DC8:
inc     ebx
jmp     loc_4E0B62

loc_4E0DCE:
imul    eax, [esp+68h+var_50], 6F4h
mov     ebx, offset byte_5F8364
add     ebx, eax
cmp     [esp+68h+var_40], 0
jl      short loc_4E0DFA
test    ds:byte_5F84D8[eax], 20h
jz      short loc_4E0E15
push    0
mov     ecx, [esp+6Ch+var_40]
mov     edx, 1
jmp     short loc_4E0E0C

loc_4E0DFA:
test    ds:byte_5F84D8[eax], 20h
jz      short loc_4E0E15
push    0
mov     ecx, 0FFFFFFFFh
xor     edx, edx

loc_4E0E0C:
lea     eax, [esp+6Ch+var_60]
call    sub_4E106C

loc_4E0E15:
imul    eax, [esp+68h+var_50], 6F4h
mov     ebx, offset byte_5F8364
add     ebx, eax
test    ebp, ebp
jl      loc_4E0EA4
test    ds:byte_5F84D8[eax], 10h
jz      short loc_4E0E47
push    1
mov     ecx, ebp
mov     edx, 1

loc_4E0E3E:
lea     eax, [esp+6Ch+var_60]
call    sub_4E106C

loc_4E0E47:
mov     ebx, [esp+68h+var_50]
inc     ebx
mov     [esp+68h+var_50], ebx
cmp     ebx, 1
jnb     short loc_4E0EB8

loc_4E0E55:
mov     ebx, [esp+68h+var_50]
imul    eax, ebx, 6F4h
test    ds:byte_5F8364[eax], 1
jz      short loc_4E0E47
mov     esi, 7FFFFFFFh
mov     [esp+68h+var_34], esi
mov     [esp+68h+var_30], esi
mov     ebp, 0FFFFFFFFh
mov     [esp+68h+var_40], ebp
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
test    ebx, ebx
jz      loc_4E0B2F
mov     al, ds:byte_5505E3
jmp     loc_4E0B34

loc_4E0EA4:
test    ds:byte_5F84D8[eax], 10h
jz      short loc_4E0E47
push    1
mov     ecx, 0FFFFFFFFh
xor     edx, edx
jmp     short loc_4E0E3E

loc_4E0EB8:
add     esp, 50h
jmp     loc_4E04CC
sub_4E0AF0 endp




sub_4E0EC0 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
cmp     ds:dword_77E940, 0FFFFFF00h
jnb     short loc_4E0F0A
xor     edx, edx
mov     eax, 80000000h
mov     esi, ds:dword_77E940
jmp     short loc_4E0EEB

loc_4E0EE3:
shr     eax, 1
inc     edx
cmp     edx, 18h
jge     short loc_4E0F0A

loc_4E0EEB:
test    eax, esi
jnz     short loc_4E0EE3
mov     edi, esi
or      edi, eax
mov     ds:dword_77E940, edi
or      [ecx+4], eax
mov     eax, edx
mov     ds:dword_7511AC[edx*4], ebx
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4E0F0A:
mov     eax, 0FFFFFFFFh
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4E0EC0 endp




sub_4E0F14 proc near
push    ecx
mov     cl, al
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_77E940, eax
pop     ecx
retn
sub_4E0F14 endp




sub_4E0F28 proc near

var_C= byte ptr -0Ch

push    ebx
push    ecx
sub     esp, 0Ch
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     ebx, ds:dword_77E940
xor     bl, bl
test    ebx, ebx
jz      short loc_4E0FAB
xor     ecx, ecx
jmp     short loc_4E0F59

loc_4E0F51:
add     ebx, ebx
inc     ecx
cmp     ecx, 18h
jge     short loc_4E0FAB

loc_4E0F59:
cmp     ebx, 80000000h
jb      short loc_4E0F51
mov     eax, ds:dword_7511AC[ecx*4]
add     eax, 0CCh
call    sub_4EFCE3
call    sub_4EFDC9
mov     eax, ds:dword_7511AC[ecx*4]
mov     dword ptr [eax+0CCh], 0
mov     eax, ds:dword_7511AC[ecx*4]
mov     dword ptr [eax+0D0h], 0
lea     eax, [esp+14h+var_C]
call    sub_4F04DB
mov     eax, esp
call    sub_4F0003
jmp     short loc_4E0F51

loc_4E0FAB:
add     esp, 0Ch
pop     ecx
pop     ebx
retn
sub_4E0F28 endp




sub_4E0FB1 proc near

var_58= byte ptr -58h
var_34= byte ptr -34h
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edi
push    ebp
sub     esp, 78h
mov     ebp, esi
neg     edx
and     dh, 0Fh
mov     [esp+88h+var_18], dx
imul    ecx, eax, 6F4h  ; int
mov     ax, word ptr ds:(dword_5F83B8+2)[ecx]
add     ax, ds:word_5F847A[ecx]
add     ah, 8
and     ah, 0Fh
mov     [esp+88h+var_16], ax
xor     ebx, ebx
mov     [esp+88h+var_14], bx
mov     edx, esp
lea     eax, [esp+88h+var_18]
call    sub_4EF638
lea     edx, [esp+88h+var_58]
mov     eax, esp
call    sub_4EF70C
mov     eax, ds:dword_5F8376[ecx]
sar     eax, 10h
mov     [esp+88h+var_28], eax
mov     edx, eax
neg     edx
mov     [esp+88h+var_28], edx
mov     eax, ds:(dword_5F8376+2)[ecx]
sar     eax, 10h
sub     eax, 96h
mov     [esp+88h+var_24], eax
mov     ebx, eax
neg     ebx
mov     [esp+88h+var_24], ebx
mov     eax, ds:dword_5F837A[ecx]
sar     eax, 10h
mov     [esp+88h+var_20], eax
mov     esi, eax
neg     esi
mov     [esp+88h+var_20], esi
lea     ebx, [esp+88h+var_34]
lea     edx, [esp+88h+var_28]
lea     eax, [esp+88h+var_58]
call    sub_4EF371
mov     ecx, 0Ch
mov     edi, ebp
lea     esi, [esp+88h+var_58]
rep movsd
mov     eax, ebp
add     esp, 78h
pop     ebp
pop     edi
pop     ecx
pop     ebx
retn
sub_4E0FB1 endp




sub_4E106C proc near

arg_0= dword ptr  4

push    esi
push    edi
mov     edx, ecx
call    sub_4DE0BF
mov     esi, eax
mov     ecx, eax
test    eax, eax
jz      loc_4E11DB
mov     byte ptr [eax+3], 0
test    edx, edx
jl      short loc_4E10AF
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, ds:dword_750DB4[eax*4]
and     edx, offset unk_7FFFFF
mov     eax, esi
call    sub_4E0EC0
mov     [esi+0Dh], al
test    al, al
jl      short loc_4E10AF
mov     byte ptr [esi+3], 80h

loc_4E10AF:
mov     byte ptr [ecx], 1
cmp     [esp+8+arg_0], 0
jz      short loc_4E1133
mov     eax, [ebx+16Dh]
sar     eax, 18h
mov     esi, eax
shl     esi, 2
sub     esi, eax
mov     dl, ds:byte_550F7F[esi*4]
mov     [ecx+2], dl
mov     dx, [ebx+4C8h]
mov     [ecx+14h], dx
mov     dx, [ebx+4CAh]
mov     [ecx+16h], dx
mov     dx, [ebx+4CCh]
mov     [ecx+18h], dx
mov     esi, eax
shl     esi, 3
add     esi, ebx
mov     dx, [esi+5FAh]
cmp     dx, 7FFFh
jz      loc_4E11A1
cmp     eax, 4
jz      loc_4E11A1
cmp     eax, 7
jz      loc_4E11A1
cmp     eax, 0Ch
jz      loc_4E11A1
cmp     eax, 0Dh
jz      loc_4E11A1
jmp     short loc_4E1197

loc_4E1133:
mov     eax, [ebx+16Eh]
sar     eax, 18h
mov     esi, eax
shl     esi, 2
sub     esi, eax
mov     dl, ds:byte_550F7F[esi*4]
mov     [ecx+2], dl
mov     dx, [ebx+4E0h]
mov     [ecx+14h], dx
mov     dx, [ebx+4E2h]
mov     [ecx+16h], dx
mov     dx, [ebx+4E4h]
mov     [ecx+18h], dx
mov     esi, eax
shl     esi, 3
add     esi, ebx
mov     dx, [esi+5FAh]
cmp     dx, 7FFFh
jz      short loc_4E11A1
cmp     eax, 4
jz      short loc_4E11A1
cmp     eax, 7
jz      short loc_4E11A1
cmp     eax, 0Ch
jz      short loc_4E11A1
cmp     eax, 0Dh
jz      short loc_4E11A1

loc_4E1197:
mov     edi, edx
dec     edi
mov     [esi+5FAh], di

loc_4E11A1:
mov     eax, [esp+8+arg_0]
mov     [ecx+1Ah], ax
mov     al, [ebx+1]
mov     [ecx+0Ch], al
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
mov     ax, [ebx+56h]
mov     [ecx+64h], ax

loc_4E11DB:
pop     edi
pop     esi
retn    4
sub_4E106C endp




sub_4E11E0 proc near

var_3E= dword ptr -3Eh
var_3A= dword ptr -3Ah
var_34= dword ptr -34h
var_30= word ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 24h
mov     edx, eax
xor     ebx, ebx

loc_4E11ED:
mov     esi, ebx
shl     esi, 2
add     esi, ebx
shl     esi, 2
mov     eax, offset unk_55DC1C
add     eax, esi
call    sub_4E1F7F
inc     ebx
cmp     ebx, 4
jb      short loc_4E11ED
mov     eax, ds:dword_77E94C
mov     [esp+3Ch+var_28], eax
mov     ebp, 3D0900h
mov     [esp+3Ch+var_20], 0FFFFFFFFh
xor     eax, eax
mov     al, [edx+1]
mov     [esp+3Ch+var_24], eax
test    eax, eax
jz      short loc_4E1233
mov     al, ds:byte_5505E3
jmp     short loc_4E1238

loc_4E1233:
mov     al, ds:byte_5505E2

loc_4E1238:
mov     [esp+3Ch+var_1C], al
mov     edi, esp
lea     esi, [edx+14h]
movsd
movsd
xor     ebx, ebx

loc_4E1245:
cmp     ebx, [esp+3Ch+var_28]
jnb     loc_4E13DA
mov     eax, ebx
mov     esi, ebx
shl     esi, 2
sub     esi, ebx
shl     esi, 2
xor     ecx, ecx
mov     cx, ds:word_750DB2[esi]
sar     ecx, 0Dh
xor     eax, ebx
mov     al, [esp+3Ch+var_1C]
shl     eax, cl
test    al, 80h
jz      loc_4E13D4
mov     eax, ds:dword_750DB4[esi]
and     eax, offset unk_7FFFFF
mov     ecx, [eax+4]
test    cl, 80h
jnz     loc_4E13D4
mov     eax, ds:dword_750DB4[esi]
shr     eax, 18h
cmp     eax, 80h
jnb     loc_4E13D4
test    byte ptr ds:(word_750DB2+1)[esi], 6
jz      short loc_4E1313
lea     eax, [ebx+1]
mov     ebx, eax
shl     ebx, 2
sub     ebx, eax
mov     edx, ds:dword_750DAA[ebx*4]
sar     edx, 10h
mov     [esp+3Ch+var_2C], edx
mov     edx, ds:dword_750DAA[esi]
sar     edx, 10h
add     edx, [esp+3Ch+var_2C]
sar     edx, 1
mov     word ptr [esp+3Ch+var_34], dx
mov     edx, ds:(dword_750DAA+2)[ebx*4]
sar     edx, 10h
mov     edi, ds:(dword_750DAA+2)[esi]
sar     edi, 10h
add     edx, edi
sar     edx, 1
mov     word ptr [esp+3Ch+var_34+2], dx
mov     edx, ds:dword_750DAE[ebx*4]
sar     edx, 10h
mov     ebx, ds:dword_750DAE[esi]
sar     ebx, 10h
add     edx, ebx
sar     edx, 1
mov     [esp+3Ch+var_30], dx
mov     ebx, eax
jmp     short loc_4E131F

loc_4E1313:
lea     edi, [esp+3Ch+var_34]
lea     esi, (dword_750DAA+2)[esi]
movsd
movsd

loc_4E131F:
mov     eax, [esp+3Ch+var_3E]
sar     eax, 10h
mov     esi, [esp+6]
sar     esi, 10h
sub     eax, esi
mov     esi, eax
add     eax, 7D0h
cmp     eax, 0FA0h
ja      loc_4E13D4
mov     edx, [esp+3Ch+var_3E+2]
sar     edx, 10h
mov     eax, [esp+3Ch+var_34]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
add     edx, 7D0h
cmp     edx, 0FA0h
ja      loc_4E13D4
mov     edx, [esp+3Ch+var_3A]
sar     edx, 10h
mov     edi, [esp+3Ch+var_34+2]
sar     edi, 10h
sub     edx, edi
lea     edi, [edx+7D0h]
cmp     edi, 0FA0h
ja      short loc_4E13D4
imul    esi, esi
imul    eax, eax
add     esi, eax
imul    edx, edx
add     esi, edx
cmp     esi, 3D0900h
ja      short loc_4E13D4
mov     eax, [esp+3Ch+var_24]
inc     eax
test    ecx, eax
jnz     short loc_4E13CA
mov     esi, ebx
shl     esi, 2
sub     esi, ebx
mov     edx, ds:dword_750DB4[esi*4]
and     edx, offset unk_7FFFFF
mov     eax, ds:dword_750DB4[esi*4]
shr     eax, 18h
and     eax, 0FFh
call    sub_4E1EFB
jmp     short loc_4E13D4

loc_4E13CA:
cmp     esi, ebp
jnb     short loc_4E13D4
mov     [esp+3Ch+var_20], ebx
mov     ebp, esi

loc_4E13D4:
inc     ebx
jmp     loc_4E1245

loc_4E13DA:
mov     edi, ds:dword_55DCCC
test    edi, edi
jbe     short loc_4E13ED
lea     ebp, [edi-1]
mov     ds:dword_55DCCC, ebp

loc_4E13ED:
mov     eax, [esp+3Ch+var_20]
test    eax, eax
jl      short loc_4E1441
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_750DB4[eax*4]
shr     eax, 18h
cmp     eax, 80h
jnb     short loc_4E1441
cmp     ds:dword_55DCCC, 0
jnz     short loc_4E1439
cmp     eax, ds:dword_55DCD0
jz      short loc_4E142D
mov     ds:dword_55DCCC, 18h
mov     ds:dword_55DCD0, eax

loc_4E142D:
and     eax, 0FFh
call    sub_4E1877
jmp     short loc_4E1443

loc_4E1439:
cmp     eax, ds:dword_55DCD0
jz      short loc_4E142D

loc_4E1441:
xor     eax, eax

loc_4E1443:
add     esp, 24h
jmp     loc_4E04CC
sub_4E11E0 endp




sub_4E144B proc near

var_54= dword ptr -54h
var_50= dword ptr -50h
var_4C= dword ptr -4Ch
var_44= byte ptr -44h
var_42= dword ptr -42h
var_3C= byte ptr -3Ch
var_3A= dword ptr -3Ah
var_34= byte ptr -34h
var_32= dword ptr -32h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= word ptr -1Ch
var_18= word ptr -18h
var_14= word ptr -14h
var_10= word ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 48h
mov     esi, eax
mov     [esp+54h+var_20], ebx
mov     [esp+54h+var_28], ecx
xor     ecx, ecx
mov     [esp+54h+var_2C], ecx
xor     ebx, ebx
mov     ebp, 0FFFFFFFFh
mov     ecx, [eax+54h]
sar     ecx, 10h
mov     eax, [eax+114h]
sar     eax, 10h
add     eax, ecx
call    sub_4EF008
mov     [esp+54h+var_1C], ax
mov     ecx, eax
neg     ecx
mov     [esp+54h+var_1C], cx
mov     ecx, [esi+54h]
sar     ecx, 10h
mov     eax, [esi+114h]
sar     eax, 10h
add     eax, ecx
call    sub_4EF003
mov     [esp+54h+var_18], ax
mov     edi, eax
neg     edi
mov     [esp+54h+var_18], di
mov     ecx, [esi+54h]
sar     ecx, 10h
mov     eax, [esi+114h]
sar     eax, 10h
add     eax, ecx
add     eax, edx
call    sub_4EF008
mov     [esp+54h+var_14], ax
neg     eax
mov     [esp+54h+var_14], ax
mov     ecx, [esi+54h]
sar     ecx, 10h
mov     eax, [esi+114h]
sar     eax, 10h
add     eax, ecx
add     eax, edx
call    sub_4EF003
mov     [esp+54h+var_10], ax
mov     edx, eax
neg     edx
mov     [esp+54h+var_10], dx
lea     edi, [esp+54h+var_44]
lea     esi, [esi+14h]
movsd
movsd
xor     ecx, ecx
jmp     short loc_4E1511

loc_4E1507:
inc     ecx
cmp     ecx, 10h
jnb     loc_4E15DA

loc_4E1511:
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 5
add     eax, offset byte_6DD9CC
test    byte ptr [eax], 3
jz      short loc_4E1507
mov     edx, [eax+80h]
cmp     edx, [esp+54h+var_20]
ja      short loc_4E1507
lea     edi, [esp+54h+var_34]
lea     esi, [eax+14h]
movsd
movsd
mov     eax, [esp+1Eh]
sar     eax, 10h
mov     edx, [esp+0Eh]
sar     edx, 10h
sub     eax, edx
mov     [esp+54h+var_54], eax
xor     edi, edi
mov     [esp+54h+var_50], edi
mov     edx, [esp+54h+var_32]
sar     edx, 10h
mov     eax, [esp+54h+var_42]
sar     eax, 10h
sub     edx, eax
mov     [esp+54h+var_4C], edx
lea     edx, [esp+54h+var_3C]
mov     eax, esp
call    sub_4EF932
mov     eax, [esp+42h]
sar     eax, 10h
mov     edx, [esp+54h+var_3A]
sar     edx, 10h
imul    eax, edx
mov     [esp+54h+var_24], eax
mov     esi, [esp+3Eh]
sar     esi, 10h
mov     eax, [esp+16h]
sar     eax, 10h
imul    esi, eax
add     esi, [esp+54h+var_24]
test    esi, esi
jl      loc_4E1507
mov     esi, [esp+3Ah]
sar     esi, 10h
imul    esi, edx
mov     edx, [esp+54h+var_20+2]
sar     edx, 10h
imul    eax, edx
add     eax, esi
cmp     eax, [esp+54h+var_28]
jl      loc_4E1507
cmp     eax, ebx
jle     loc_4E1507
mov     ebx, eax
mov     ebp, ecx
jmp     loc_4E1507

loc_4E15DA:
test    ebp, ebp
jl      short loc_4E15F8
mov     eax, ebp
shl     eax, 3
add     eax, ebp
shl     eax, 2
add     eax, ebp
shl     eax, 5
mov     edx, offset byte_6DD9CC
add     edx, eax
mov     [esp+54h+var_2C], edx

loc_4E15F8:
mov     ebp, 0FFFFFFFFh
xor     ecx, ecx
jmp     short loc_4E160B

loc_4E1601:
inc     ecx
cmp     ecx, 4
jnb     loc_4E16CC

loc_4E160B:
imul    esi, ecx, 734h
add     esi, offset unk_6E23DC
test    byte ptr [esi], 3
jz      short loc_4E1601
mov     eax, [esi+80h]
cmp     eax, [esp+54h+var_20]
ja      short loc_4E1601
lea     edi, [esp+54h+var_34]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [esp+1Eh]
sar     eax, 10h
mov     edx, [esp+0Eh]
sar     edx, 10h
sub     eax, edx
mov     [esp+54h+var_54], eax
xor     eax, eax
mov     [esp+54h+var_50], eax
mov     eax, [esp+54h+var_32]
sar     eax, 10h
mov     edx, [esp+54h+var_42]
sar     edx, 10h
sub     eax, edx
mov     [esp+54h+var_4C], eax
lea     edx, [esp+54h+var_3C]
mov     eax, esp
call    sub_4EF932
mov     eax, [esp+42h]
sar     eax, 10h
mov     edx, [esp+54h+var_3A]
sar     edx, 10h
imul    eax, edx
mov     [esp+54h+var_24], eax
mov     esi, [esp+3Eh]
sar     esi, 10h
mov     eax, [esp+16h]
sar     eax, 10h
imul    esi, eax
add     esi, [esp+54h+var_24]
test    esi, esi
jl      loc_4E1601
mov     esi, [esp+3Ah]
sar     esi, 10h
imul    edx, esi
mov     esi, [esp+54h+var_20+2]
sar     esi, 10h
imul    eax, esi
add     eax, edx
cmp     eax, [esp+54h+var_28]
jl      loc_4E1601
cmp     eax, ebx
jle     loc_4E1601
mov     ebx, eax
mov     ebp, ecx
jmp     loc_4E1601

loc_4E16CC:
test    ebp, ebp
jl      short loc_4E16E1
imul    ebp, 734h
mov     eax, offset unk_6E23DC
add     eax, ebp
mov     [esp+54h+var_2C], eax

loc_4E16E1:
mov     eax, [esp+54h+var_2C]
add     esp, 48h
pop     ebp
pop     edi
pop     esi
retn
sub_4E144B endp




sub_4E16EC proc near

var_1E= dword ptr -1Eh
var_1A= dword ptr -1Ah

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
xor     ebx, ebx

loc_4E16F6:
imul    esi, ebx, 6F4h
mov     edi, esp
lea     esi, (dword_5F8376+2)[esi]
movsd
movsd
xor     eax, eax

loc_4E1708:
mov     edx, eax
shl     edx, 3
add     edx, eax
shl     edx, 2
add     edx, eax
shl     edx, 5
mov     ecx, offset byte_6DD9CC
add     ecx, edx
mov     dl, [ecx]
or      dl, 1
inc     eax
test    dl, dl
jz      short loc_4E1778
mov     esi, [ecx+12h]
sar     esi, 10h
mov     edx, [esp+1Ch+var_1E]
sar     edx, 10h
sub     esi, edx
sar     esi, 1
mov     edi, [ecx+16h]
sar     edi, 10h
mov     edx, [esp+1Ch+var_1A]
sar     edx, 10h
sub     edi, edx
mov     edx, edi
sar     edx, 1
imul    esi, esi
imul    edx, edx
add     edx, esi
mov     esi, ebx
shl     esi, 2
add     ecx, esi
cmp     edx, 10000000h
jbe     short loc_4E176F
mov     dword ptr [ecx+80h], 0FFFFFFFFh
jmp     short loc_4E1778

loc_4E176F:
shl     edx, 2
mov     [ecx+80h], edx

loc_4E1778:
cmp     eax, 10h
jl      short loc_4E1708
xor     eax, eax

loc_4E177F:
imul    ecx, eax, 734h
add     ecx, offset unk_6E23DC
mov     dl, [ecx]
or      dl, 1
inc     eax
test    dl, dl
jz      short loc_4E17E5
mov     esi, [ecx+12h]
sar     esi, 10h
mov     edx, [esp+1Ch+var_1E]
sar     edx, 10h
sub     esi, edx
sar     esi, 1
mov     edi, [ecx+16h]
sar     edi, 10h
mov     edx, [esp+1Ch+var_1A]
sar     edx, 10h
sub     edi, edx
mov     edx, edi
sar     edx, 1
imul    esi, esi
imul    edx, edx
add     edx, esi
mov     esi, ebx
shl     esi, 2
add     ecx, esi
cmp     edx, 10000000h
jbe     short loc_4E17DC
mov     dword ptr [ecx+80h], 0FFFFFFFFh
jmp     short loc_4E17E5

loc_4E17DC:
shl     edx, 2
mov     [ecx+80h], edx

loc_4E17E5:
cmp     eax, 4
jl      short loc_4E177F
xor     eax, eax

loc_4E17EC:
mov     edx, eax
shl     edx, 3
add     edx, eax
shl     edx, 3
sub     edx, eax
shl     edx, 2
mov     ecx, offset byte_57098C
add     ecx, edx
mov     dl, [ecx]
or      dl, 1
inc     eax
test    dl, dl
jz      short loc_4E1860
mov     edx, [ecx+12h]
sar     edx, 10h
mov     esi, [esp+1Ch+var_1E]
sar     esi, 10h
sub     edx, esi
sar     edx, 1
mov     edi, [ecx+16h]
sar     edi, 10h
mov     esi, [esp+1Ch+var_1A]
sar     esi, 10h
sub     edi, esi
mov     esi, edi
sar     esi, 1
mov     edi, edx
imul    edi, edx
mov     edx, esi
imul    edx, esi
add     edx, edi
mov     esi, ebx
shl     esi, 2
add     ecx, esi
cmp     edx, 10000000h
jbe     short loc_4E1857
mov     dword ptr [ecx+80h], 0FFFFFFFFh
jmp     short loc_4E1860

loc_4E1857:
shl     edx, 2
mov     [ecx+80h], edx

loc_4E1860:
